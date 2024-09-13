.segment "BANK_0A"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x014010-0x01800F



.export sub_0x014011
.export loc_0x014030
.export _off012_0x0152E3_0E_player_select
.export _off012_0x015564_04_title_screen
.export sub_0x01570D
.export sub_0x015854
.export sub_0x015978
.export loc_0x015E9B
.export sub_0x015F79
.export sub_0x0161F4
.export ofs_006_0x0161F4_0A
.export loc_0x016303
.export off_0x01693A_02
.export off_0x016940_00
.export _off022_0x016946_00
.export _off022_0x016958_01
.export _off022_0x01696A_02
.export _off022_0x01697C_05
.export _off022_0x01698E_04
.export _off022_0x0169A0_03
.export _off012_0x0169B2_00_clear_nametables
.export _off012_0x0169B2_02
.export _off012_0x0169B2_06
.export _off031_0x016CF2_00
.export _off031_0x0169EE_01
.export _off031_0x016A04_02
.export _off031_0x016A04_03
.export _off031_0x016A04_04
.export _off031_0x016A04_05
.export _off031_0x016A04_06
.export _off031_0x016A1A_07
.export _off031_0x016A30_08
.export _off031_0x016A42_09
.export _off031_0x016A50_0A
.export _off031_0x016A66_0B
.export _off031_0x016A80_0C
.export _off031_0x016A96_0D
.export _off031_0x016AAC_0E
.export _off031_0x016ABE_0F
.export _off025_0x016AD8_00
.export _off025_0x016AEA_01
.export _off025_0x016AFC_02
.export _off025_0x016B0E_03
.export _off026_0x016B20_04
.export _off026_0x016B20_0C
.export _off026_0x016B2A_00
.export _off026_0x016B2A_08
.export _off011_0x016B34_02
.export _off011_0x016B62_00
.export _off011_0x016B80_04
.export _off011_0x016B9A_06
.export _off011_0x016BB4_08
.export _off011_0x016BC6_12
.export _off011_0x016BE8_0C
.export _off011_0x016C16_0A
.export _off011_0x016C34_18
.export _off011_0x016C56_16
.export _off011_0x016C68_0E
.export _off011_0x016C82_10
.export _off011_0x016C9C_14
.export off_0x016CC6
.export _off026_0x016CD8_18
.export _off026_0x016CD8_20
.export _off026_0x016CE2_1C
.export _off026_0x016CE2_24
.export _off026_0x016CEC_10
.export _off026_0x016CF2_14
.export _off026_0x016CF8_28
.export _off026_0x016D06_2C
.export _off026_0x016D14_30
.export _off026_0x016D22_34
.export _off026_0x016D30_38
.export _off026_0x016D3E_3C
.export _off026_0x016D44_40
.export _off026_0x016D4C_44
.export _off026_0x016D54_48
.export _off026_0x016D5A_4C
.export _off026_0x016D68_50
.export _off026_0x016D70_54
.export _off026_0x016D78_58
.export _off012_0x016D8A_0A_cutscene_crime
.export ofs_006_0x016F16_0D
.export ofs_006_0x01711D_0E
.export ofs_006_0x01766A_11
.export _off012_0x017E33_10_credits



; bzk garbage, unused bank id
- D 0 - - - 0x014010 05:8000: 0B        .byte con_prg_bank + $0B   ; 



sub_0x014011:
C D 0 - - - 0x014011 05:8001: A5 42     LDA ram_btn_hold_1
C - - - - - 0x014013 05:8003: F0 13     BEQ bra_8018
C - - - - - 0x014015 05:8005: A5 22     LDA ram_0022
C - - - - - 0x014017 05:8007: C9 07     CMP #$07
C - - - - - 0x014019 05:8009: 90 0D     BCC bra_8018
C - - - - - 0x01401B 05:800B: C9 3A     CMP #$3A
C - - - - - 0x01401D 05:800D: F0 09     BEQ bra_8018
C - - - - - 0x01401F 05:800F: 20 14 82  JSR sub_8214
C - - - - - 0x014022 05:8012: 8D F1 03  STA ram_03F1
C - - - - - 0x014025 05:8015: 8D F2 03  STA ram_03F2
bra_8018:
C - - - - - 0x014028 05:8018: A4 22     LDY ram_0022
C - - - - - 0x01402A 05:801A: B9 57 80  LDA tbl_8057,Y
C - - - - - 0x01402D 05:801D: 4C 43 80  JMP loc_8043



loc_0x014030:
C D 0 - - - 0x014030 05:8020: AD 70 03  LDA ram_0370
C - - - - - 0x014033 05:8023: F0 12     BEQ bra_8037
C - - - - - 0x014035 05:8025: A9 00     LDA #$00
C - - - - - 0x014037 05:8027: 8D 32 03  STA ram_0332
C - - - - - 0x01403A 05:802A: 8D 43 03  STA ram_0343
C - - - - - 0x01403D 05:802D: 8D 45 03  STA ram_0345
C - - - - - 0x014040 05:8030: 20 94 F6  JSR sub_0x01F6A4
C - - - - - 0x014043 05:8033: CE 70 03  DEC ram_0370
C - - - - - 0x014046 05:8036: 60        RTS
bra_8037:
C - - - - - 0x014047 05:8037: A4 75     LDY ram_stage
C - - - - - 0x014049 05:8039: B9 0A F7  LDA tbl_0x01F71A,Y
C - - - - - 0x01404C 05:803C: 18        CLC
C - - - - - 0x01404D 05:803D: 65 22     ADC ram_0022
C - - - - - 0x01404F 05:803F: A8        TAY
C - - - - - 0x014050 05:8040: B9 92 80  LDA tbl_8092,Y
loc_8043:
C D 0 - - - 0x014053 05:8043: 0A        ASL
C - - - - - 0x014054 05:8044: A8        TAY
C - - - - - 0x014055 05:8045: B9 13 81  LDA tbl_8113,Y
C - - - - - 0x014058 05:8048: 85 00     STA ram_0000
C - - - - - 0x01405A 05:804A: B9 14 81  LDA tbl_8113 + $01,Y
C - - - - - 0x01405D 05:804D: A0 00     LDY #$00
C - - - - - 0x01405F 05:804F: 20 08 D7  JSR sub_0x01D718_execute_indirect_jump_0000
C - - - - - 0x014062 05:8052: 90 02     BCC bra_8056_RTS
C - - - - - 0x014064 05:8054: E6 22     INC ram_0022
bra_8056_RTS:
C - - - - - 0x014066 05:8056: 60        RTS



tbl_8057:
- D 0 - - - 0x014067 05:8057: 00        .byte $00   ; 00 
- D 0 - - - 0x014068 05:8058: 02        .byte $02   ; 01 
- D 0 - - - 0x014069 05:8059: 02        .byte $02   ; 02 
- D 0 - - - 0x01406A 05:805A: 03        .byte $03   ; 03 
- D 0 - - - 0x01406B 05:805B: 04        .byte $04   ; 04 
- D 0 - - - 0x01406C 05:805C: 05        .byte $05   ; 05 
- D 0 - - - 0x01406D 05:805D: 06        .byte $06   ; 06 
- D 0 - - - 0x01406E 05:805E: 07        .byte $07   ; 07 
- D 0 - - - 0x01406F 05:805F: 01        .byte $01   ; 08 
- D 0 - - - 0x014070 05:8060: 02        .byte $02   ; 09 
- D 0 - - - 0x014071 05:8061: 08        .byte $08   ; 0A 
- D 0 - - - 0x014072 05:8062: 04        .byte $04   ; 0B 
- D 0 - - - 0x014073 05:8063: 05        .byte $05   ; 0C 
- D 0 - - - 0x014074 05:8064: 09        .byte $09   ; 0D 
- D 0 - - - 0x014075 05:8065: 07        .byte $07   ; 0E 
- D 0 - - - 0x014076 05:8066: 01        .byte $01   ; 0F 
- D 0 - - - 0x014077 05:8067: 02        .byte $02   ; 10 
- D 0 - - - 0x014078 05:8068: 0A        .byte $0A   ; 11 
- D 0 - - - 0x014079 05:8069: 0B        .byte $0B   ; 12 
- D 0 - - - 0x01407A 05:806A: 0C        .byte $0C   ; 13 
- D 0 - - - 0x01407B 05:806B: 0D        .byte $0D   ; 14 
- D 0 - - - 0x01407C 05:806C: 05        .byte $05   ; 15 
- D 0 - - - 0x01407D 05:806D: 09        .byte $09   ; 16 
- D 0 - - - 0x01407E 05:806E: 0E        .byte $0E   ; 17 
- D 0 - - - 0x01407F 05:806F: 0F        .byte $0F   ; 18 
- D 0 - - - 0x014080 05:8070: 10        .byte $10   ; 19 
- D 0 - - - 0x014081 05:8071: 11        .byte $11   ; 1A 
- D 0 - - - 0x014082 05:8072: 12        .byte $12   ; 1B 
- D 0 - - - 0x014083 05:8073: 13        .byte $13   ; 1C 
- D 0 - - - 0x014084 05:8074: 09        .byte $09   ; 1D 
- D 0 - - - 0x014085 05:8075: 12        .byte $12   ; 1E 
- D 0 - - - 0x014086 05:8076: 14        .byte $14   ; 1F 
- D 0 - - - 0x014087 05:8077: 09        .byte $09   ; 20 
- D 0 - - - 0x014088 05:8078: 12        .byte $12   ; 21 
- D 0 - - - 0x014089 05:8079: 15        .byte $15   ; 22 
- D 0 - - - 0x01408A 05:807A: 09        .byte $09   ; 23 
- D 0 - - - 0x01408B 05:807B: 12        .byte $12   ; 24 
- D 0 - - - 0x01408C 05:807C: 16        .byte $16   ; 25 
- D 0 - - - 0x01408D 05:807D: 09        .byte $09   ; 26 
- D 0 - - - 0x01408E 05:807E: 07        .byte $07   ; 27 
- D 0 - - - 0x01408F 05:807F: 01        .byte $01   ; 28 
- D 0 - - - 0x014090 05:8080: 02        .byte $02   ; 29 
- D 0 - - - 0x014091 05:8081: 17        .byte $17   ; 2A 
- D 0 - - - 0x014092 05:8082: 18        .byte $18   ; 2B 
- D 0 - - - 0x014093 05:8083: 12        .byte $12   ; 2C 
- D 0 - - - 0x014094 05:8084: 09        .byte $09   ; 2D 
- D 0 - - - 0x014095 05:8085: 19        .byte $19   ; 2E 
- D 0 - - - 0x014096 05:8086: 1A        .byte $1A   ; 2F 
- D 0 - - - 0x014097 05:8087: 12        .byte $12   ; 30 
- D 0 - - - 0x014098 05:8088: 1B        .byte $1B   ; 31 
- D 0 - - - 0x014099 05:8089: 09        .byte $09   ; 32 
- D 0 - - - 0x01409A 05:808A: 1C        .byte $1C   ; 33 
- D 0 - - - 0x01409B 05:808B: 1D        .byte $1D   ; 34 
- D 0 - - - 0x01409C 05:808C: 05        .byte $05   ; 35 
- D 0 - - - 0x01409D 05:808D: 1E        .byte $1E   ; 36 
- D 0 - - - 0x01409E 05:808E: 09        .byte $09   ; 37 
- D 0 - - - 0x01409F 05:808F: 07        .byte $07   ; 38 
- D 0 - - - 0x0140A0 05:8090: 1F        .byte $1F   ; 39 
- - - - - - 0x0140A1 05:8091: 20        .byte $20   ; 3A 



tbl_8092:
- D 0 - - - 0x0140A2 05:8092: 21        .byte $21   ; 
- D 0 - - - 0x0140A3 05:8093: 07        .byte $07   ; 
- D 0 - - - 0x0140A4 05:8094: 22        .byte $22   ; 
- D 0 - - - 0x0140A5 05:8095: 01        .byte $01   ; 
- D 0 - - - 0x0140A6 05:8096: 02        .byte $02   ; 
- D 0 - - - 0x0140A7 05:8097: 23        .byte $23   ; 
- D 0 - - - 0x0140A8 05:8098: 24        .byte $24   ; 
- D 0 - - - 0x0140A9 05:8099: 12        .byte $12   ; 
- D 0 - - - 0x0140AA 05:809A: 25        .byte $25   ; 
- D 0 - - - 0x0140AB 05:809B: 09        .byte $09   ; 
- D 0 - - - 0x0140AC 05:809C: 12        .byte $12   ; 
- D 0 - - - 0x0140AD 05:809D: 26        .byte $26   ; 
- D 0 - - - 0x0140AE 05:809E: 09        .byte $09   ; 
- D 0 - - - 0x0140AF 05:809F: 12        .byte $12   ; 
- D 0 - - - 0x0140B0 05:80A0: 27        .byte $27   ; 
- D 0 - - - 0x0140B1 05:80A1: 09        .byte $09   ; 
- D 0 - - - 0x0140B2 05:80A2: 2D        .byte $2D   ; 
- D 0 - - - 0x0140B3 05:80A3: 28        .byte $28   ; 
- D 0 - - - 0x0140B4 05:80A4: 05        .byte $05   ; 
- D 0 - - - 0x0140B5 05:80A5: 29        .byte $29   ; 
- D 0 - - - 0x0140B6 05:80A6: 09        .byte $09   ; 
- D 0 - - - 0x0140B7 05:80A7: 12        .byte $12   ; 
- D 0 - - - 0x0140B8 05:80A8: 2A        .byte $2A   ; 
- D 0 - - - 0x0140B9 05:80A9: 09        .byte $09   ; 
- D 0 - - - 0x0140BA 05:80AA: 2B        .byte $2B   ; 
- D 0 - - - 0x0140BB 05:80AB: 07        .byte $07   ; 
- D 0 - - - 0x0140BC 05:80AC: 2C        .byte $2C   ; 
; 1B
- D 0 - - - 0x0140BD 05:80AD: 21        .byte $21   ; 
- D 0 - - - 0x0140BE 05:80AE: 07        .byte $07   ; 
- D 0 - - - 0x0140BF 05:80AF: 22        .byte $22   ; 
- D 0 - - - 0x0140C0 05:80B0: 01        .byte $01   ; 
- D 0 - - - 0x0140C1 05:80B1: 02        .byte $02   ; 
- D 0 - - - 0x0140C2 05:80B2: 23        .byte $23   ; 
- D 0 - - - 0x0140C3 05:80B3: 24        .byte $24   ; 
- D 0 - - - 0x0140C4 05:80B4: 05        .byte $05   ; 
- D 0 - - - 0x0140C5 05:80B5: 2E        .byte $2E   ; 
- D 0 - - - 0x0140C6 05:80B6: 09        .byte $09   ; 
- D 0 - - - 0x0140C7 05:80B7: 2D        .byte $2D   ; 
- D 0 - - - 0x0140C8 05:80B8: 28        .byte $28   ; 
- D 0 - - - 0x0140C9 05:80B9: 05        .byte $05   ; 
- D 0 - - - 0x0140CA 05:80BA: 2F        .byte $2F   ; 
- D 0 - - - 0x0140CB 05:80BB: 09        .byte $09   ; 
- D 0 - - - 0x0140CC 05:80BC: 2B        .byte $2B   ; 
- D 0 - - - 0x0140CD 05:80BD: 07        .byte $07   ; 
- D 0 - - - 0x0140CE 05:80BE: 2C        .byte $2C   ; 
; 2D
- D 0 - - - 0x0140CF 05:80BF: 30        .byte $30   ; 
- D 0 - - - 0x0140D0 05:80C0: 21        .byte $21   ; 
- D 0 - - - 0x0140D1 05:80C1: 49        .byte $49   ; 
- D 0 - - - 0x0140D2 05:80C2: 48        .byte $48   ; 
- D 0 - - - 0x0140D3 05:80C3: 31        .byte $31   ; 
- D 0 - - - 0x0140D4 05:80C4: 07        .byte $07   ; 
- D 0 - - - 0x0140D5 05:80C5: 22        .byte $22   ; 
- D 0 - - - 0x0140D6 05:80C6: 01        .byte $01   ; 
- D 0 - - - 0x0140D7 05:80C7: 02        .byte $02   ; 
- D 0 - - - 0x0140D8 05:80C8: 23        .byte $23   ; 
- D 0 - - - 0x0140D9 05:80C9: 24        .byte $24   ; 
- D 0 - - - 0x0140DA 05:80CA: 12        .byte $12   ; 
- D 0 - - - 0x0140DB 05:80CB: 32        .byte $32   ; 
- D 0 - - - 0x0140DC 05:80CC: 09        .byte $09   ; 
- D 0 - - - 0x0140DD 05:80CD: 12        .byte $12   ; 
- D 0 - - - 0x0140DE 05:80CE: 33        .byte $33   ; 
- D 0 - - - 0x0140DF 05:80CF: 09        .byte $09   ; 
- D 0 - - - 0x0140E0 05:80D0: 2D        .byte $2D   ; 
- D 0 - - - 0x0140E1 05:80D1: 28        .byte $28   ; 
- D 0 - - - 0x0140E2 05:80D2: 12        .byte $12   ; 
- D 0 - - - 0x0140E3 05:80D3: 34        .byte $34   ; 
- D 0 - - - 0x0140E4 05:80D4: 09        .byte $09   ; 
- D 0 - - - 0x0140E5 05:80D5: 12        .byte $12   ; 
- D 0 - - - 0x0140E6 05:80D6: 35        .byte $35   ; 
- D 0 - - - 0x0140E7 05:80D7: 09        .byte $09   ; 
- D 0 - - - 0x0140E8 05:80D8: 12        .byte $12   ; 
- D 0 - - - 0x0140E9 05:80D9: 36        .byte $36   ; 
- D 0 - - - 0x0140EA 05:80DA: 09        .byte $09   ; 
- D 0 - - - 0x0140EB 05:80DB: 2B        .byte $2B   ; 
- D 0 - - - 0x0140EC 05:80DC: 07        .byte $07   ; 
- D 0 - - - 0x0140ED 05:80DD: 2C        .byte $2C   ; 
; 4C
- D 0 - - - 0x0140EE 05:80DE: 37        .byte $37   ; 
- D 0 - - - 0x0140EF 05:80DF: 21        .byte $21   ; 
- D 0 - - - 0x0140F0 05:80E0: 38        .byte $38   ; 
- D 0 - - - 0x0140F1 05:80E1: 39        .byte $39   ; 
- D 0 - - - 0x0140F2 05:80E2: 07        .byte $07   ; 
- D 0 - - - 0x0140F3 05:80E3: 3A        .byte $3A   ; 
- D 0 - - - 0x0140F4 05:80E4: 01        .byte $01   ; 
- D 0 - - - 0x0140F5 05:80E5: 02        .byte $02   ; 
- D 0 - - - 0x0140F6 05:80E6: 23        .byte $23   ; 
- D 0 - - - 0x0140F7 05:80E7: 24        .byte $24   ; 
- D 0 - - - 0x0140F8 05:80E8: 12        .byte $12   ; 
- D 0 - - - 0x0140F9 05:80E9: 3B        .byte $3B   ; 
- D 0 - - - 0x0140FA 05:80EA: 09        .byte $09   ; 
- D 0 - - - 0x0140FB 05:80EB: 12        .byte $12   ; 
- D 0 - - - 0x0140FC 05:80EC: 3C        .byte $3C   ; 
- D 0 - - - 0x0140FD 05:80ED: 09        .byte $09   ; 
- D 0 - - - 0x0140FE 05:80EE: 2D        .byte $2D   ; 
- D 0 - - - 0x0140FF 05:80EF: 28        .byte $28   ; 
- D 0 - - - 0x014100 05:80F0: 12        .byte $12   ; 
- D 0 - - - 0x014101 05:80F1: 3D        .byte $3D   ; 
- D 0 - - - 0x014102 05:80F2: 09        .byte $09   ; 
- D 0 - - - 0x014103 05:80F3: 12        .byte $12   ; 
- D 0 - - - 0x014104 05:80F4: 3E        .byte $3E   ; 
- D 0 - - - 0x014105 05:80F5: 09        .byte $09   ; 
- D 0 - - - 0x014106 05:80F6: 2B        .byte $2B   ; 
- D 0 - - - 0x014107 05:80F7: 07        .byte $07   ; 
- D 0 - - - 0x014108 05:80F8: 2C        .byte $2C   ; 
; 67
- D 0 - - - 0x014109 05:80F9: 05        .byte $05   ; 
- D 0 - - - 0x01410A 05:80FA: 09        .byte $09   ; 
- D 0 - - - 0x01410B 05:80FB: 2B        .byte $2B   ; 
- D 0 - - - 0x01410C 05:80FC: 07        .byte $07   ; 
- D 0 - - - 0x01410D 05:80FD: 3F        .byte $3F   ; 
- D 0 - - - 0x01410E 05:80FE: 01        .byte $01   ; 
- D 0 - - - 0x01410F 05:80FF: 04        .byte $04   ; 
- D 0 - - - 0x014110 05:8100: 40        .byte $40   ; 
- D 0 - - - 0x014111 05:8101: 41        .byte $41   ; 
- D 0 - - - 0x014112 05:8102: 42        .byte $42   ; 
- D 0 - - - 0x014113 05:8103: 09        .byte $09   ; 
- D 0 - - - 0x014114 05:8104: 07        .byte $07   ; 
- D 0 - - - 0x014115 05:8105: 43        .byte $43   ; 
- D 0 - - - 0x014116 05:8106: 44        .byte $44   ; 
- D 0 - - - 0x014117 05:8107: 45        .byte $45   ; 
- D 0 - - - 0x014118 05:8108: 04        .byte $04   ; 
- D 0 - - - 0x014119 05:8109: 46        .byte $46   ; 
- D 0 - - - 0x01411A 05:810A: 2B        .byte $2B   ; 
- D 0 - - - 0x01411B 05:810B: 07        .byte $07   ; 
- D 0 - - - 0x01411C 05:810C: 01        .byte $01   ; 
- D 0 - - - 0x01411D 05:810D: 47        .byte $47   ; 
- D 0 - - - 0x01411E 05:810E: 05        .byte $05   ; 
- D 0 - - - 0x01411F 05:810F: 04        .byte $04   ; 
- D 0 - - - 0x014120 05:8110: 09        .byte $09   ; 
- D 0 - - - 0x014121 05:8111: 07        .byte $07   ; 
- D 0 - - - 0x014122 05:8112: 2C        .byte $2C   ; 



tbl_8113:
- D 0 - - - 0x014123 05:8113: 3D 82     .word ofs_020_823D_00
- D 0 - - - 0x014125 05:8115: 5F 82     .word ofs_020_825F_01
- D 0 - - - 0x014127 05:8117: 64 82     .word ofs_020_8264_02
- D 0 - - - 0x014129 05:8119: 80 82     .word ofs_020_8280_03
- D 0 - - - 0x01412B 05:811B: 69 F5     .word ofs_020_0x01F579_04
- D 0 - - - 0x01412D 05:811D: D3 81     .word ofs_020_81D3_04
- D 0 - - - 0x01412F 05:811F: E3 81     .word ofs_020_81E3_05
- D 0 - - - 0x014131 05:8121: 1A F5     .word ofs_020_0x01F52A_06
- D 0 - - - 0x014133 05:8123: 6A 82     .word ofs_020_826A_07
- D 0 - - - 0x014135 05:8125: 0C 82     .word ofs_020_820C_08
- D 0 - - - 0x014137 05:8127: 71 82     .word ofs_020_8271_09
- D 0 - - - 0x014139 05:8129: A7 81     .word ofs_020_81A7_0A
- D 0 - - - 0x01413B 05:812B: CD 82     .word ofs_020_82CD_0B
- D 0 - - - 0x01413D 05:812D: BD 81     .word ofs_020_81BD_0C
- D 0 - - - 0x01413F 05:812F: C1 81     .word ofs_020_81C1_0D
- D 0 - - - 0x014141 05:8131: CC 81     .word ofs_020_81CC_0E
- D 0 - - - 0x014143 05:8133: AC 82     .word ofs_020_82AC_0F
- D 0 - - - 0x014145 05:8135: BA 82     .word ofs_020_82BA_10
- D 0 - - - 0x014147 05:8137: D7 81     .word ofs_020_81D7_11
- D 0 - - - 0x014149 05:8139: F2 82     .word ofs_020_82F2_12
- D 0 - - - 0x01414B 05:813B: F1 82     .word ofs_020_82F1_13
- D 0 - - - 0x01414D 05:813D: F0 82     .word ofs_020_82F0_14
- D 0 - - - 0x01414F 05:813F: EF 82     .word ofs_020_82EF_15
- D 0 - - - 0x014151 05:8141: 90 82     .word ofs_020_8290_16
- D 0 - - - 0x014153 05:8143: BE 82     .word ofs_020_82BE_17
- D 0 - - - 0x014155 05:8145: B2 82     .word ofs_020_82B2_18
- D 0 - - - 0x014157 05:8147: C2 82     .word ofs_020_82C2_19
- D 0 - - - 0x014159 05:8149: EE 82     .word ofs_020_82EE_1A
- D 0 - - - 0x01415B 05:814B: B6 82     .word ofs_020_82B6_1B
- D 0 - - - 0x01415D 05:814D: C6 82     .word ofs_020_82C6_1C
- D 0 - - - 0x01415F 05:814F: ED 82     .word ofs_020_82ED_1D
- D 0 - - - 0x014161 05:8151: 14 82     .word ofs_020_8214_1E
- - - - - - 0x014163 05:8153: 12 82     .word ofs_020_8212_1F
- D 0 - - - 0x014165 05:8155: E2 88     .word ofs_020_88E2_20
- D 0 - - - 0x014167 05:8157: 36 82     .word ofs_020_8236_21
- D 0 - - - 0x014169 05:8159: F6 82     .word ofs_020_82F6_22
- D 0 - - - 0x01416B 05:815B: D3 82     .word ofs_020_82D3_23
- D 0 - - - 0x01416D 05:815D: EC 82     .word ofs_020_82EC_24
- D 0 - - - 0x01416F 05:815F: EB 82     .word ofs_020_82EB_25
- D 0 - - - 0x014171 05:8161: EA 82     .word ofs_020_82EA_26
- D 0 - - - 0x014173 05:8163: D6 82     .word ofs_020_82D6_27
- D 0 - - - 0x014175 05:8165: E9 82     .word ofs_020_82E9_28
- D 0 - - - 0x014177 05:8167: E8 82     .word ofs_020_82E8_29
- D 0 - - - 0x014179 05:8169: 1A 82     .word ofs_020_821A_2A
- D 0 - - - 0x01417B 05:816B: 4E 83     .word ofs_020_834E_2B
- D 0 - - - 0x01417D 05:816D: 33 83     .word ofs_020_8333_2C
- D 0 - - - 0x01417F 05:816F: E7 82     .word ofs_020_82E7_2D
- D 0 - - - 0x014181 05:8171: E6 82     .word ofs_020_82E6_2E
- D 0 - - - 0x014183 05:8173: 1F 86     .word ofs_020_861F_2F
- D 0 - - - 0x014185 05:8175: 3A 86     .word ofs_020_863A_30
- D 0 - - - 0x014187 05:8177: E3 82     .word ofs_020_82E3_31
- D 0 - - - 0x014189 05:8179: E2 82     .word ofs_020_82E2_32
- D 0 - - - 0x01418B 05:817B: E1 82     .word ofs_020_82E1_33
- D 0 - - - 0x01418D 05:817D: E0 82     .word ofs_020_82E0_34
- D 0 - - - 0x01418F 05:817F: DF 82     .word ofs_020_82DF_35
- D 0 - - - 0x014191 05:8181: BF 88     .word ofs_020_88BF_36
- D 0 - - - 0x014193 05:8183: 51 86     .word ofs_020_8651_37
- D 0 - - - 0x014195 05:8185: DE 88     .word ofs_020_88DE_38
- D 0 - - - 0x014197 05:8187: 29 82     .word ofs_020_8229_39
- D 0 - - - 0x014199 05:8189: DE 82     .word ofs_020_82DE_3A
- D 0 - - - 0x01419B 05:818B: DD 82     .word ofs_020_82DD_3B
- D 0 - - - 0x01419D 05:818D: DC 82     .word ofs_020_82DC_3C
- D 0 - - - 0x01419F 05:818F: DB 82     .word ofs_020_82DB_3D
- D 0 - - - 0x0141A1 05:8191: 30 82     .word ofs_020_8230_3E
- D 0 - - - 0x0141A3 05:8193: C8 81     .word ofs_020_81C8_3F
- D 0 - - - 0x0141A5 05:8195: 8B 86     .word ofs_020_868B_40
- D 0 - - - 0x0141A7 05:8197: 87 86     .word ofs_020_8687_41
- D 0 - - - 0x0141A9 05:8199: 9D 86     .word ofs_020_869D_42
- D 0 - - - 0x0141AB 05:819B: A7 86     .word ofs_020_86A7_43
- D 0 - - - 0x0141AD 05:819D: CE 86     .word ofs_020_86CE_44
- D 0 - - - 0x0141AF 05:819F: F8 86     .word ofs_020_86F8_45
- D 0 - - - 0x0141B1 05:81A1: A8 88     .word ofs_020_88A8_46_konami_after_credits
- D 0 - - - 0x0141B3 05:81A3: DA 88     .word ofs_020_88DA_47
- D 0 - - - 0x0141B5 05:81A5: 2E 86     .word ofs_020_862E_48



ofs_020_81A7_0A:
C - - J - - 0x0141B7 05:81A7: A9 90     LDA #$90
C - - - - - 0x0141B9 05:81A9: 8D 1A 06  STA ram_obj_animation_lo
C - - - - - 0x0141BC 05:81AC: A9 50     LDA #$50
C - - - - - 0x0141BE 05:81AE: 8D 4E 06  STA ram_obj_pos_X
C - - - - - 0x0141C1 05:81B1: A9 68     LDA #$68
C - - - - - 0x0141C3 05:81B3: 8D 68 06  STA ram_obj_pos_Y
C - - - - - 0x0141C6 05:81B6: A9 1C     LDA #$1C
C - - - - - 0x0141C8 05:81B8: 8D 34 06  STA ram_obj_animation_hi
C - - - - - 0x0141CB 05:81BB: 38        SEC
C - - - - - 0x0141CC 05:81BC: 60        RTS



ofs_020_81BD_0C:
C - - J - - 0x0141CD 05:81BD: A9 63     LDA #con_music_63
C - - - - - 0x0141CF 05:81BF: D0 02     BNE bra_81C3    ; jmp



ofs_020_81C1_0D:
C - - J - - 0x0141D1 05:81C1: A9 6B     LDA #con_music_6B
bra_81C3:
C - - - - - 0x0141D3 05:81C3: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x0141D6 05:81C6: 38        SEC
C - - - - - 0x0141D7 05:81C7: 60        RTS



ofs_020_81C8_3F:
C - - J - - 0x0141D8 05:81C8: A9 A8     LDA #con_music_A8
C - - - - - 0x0141DA 05:81CA: D0 F7     BNE bra_81C3    ; jmp



sub_81CC:
ofs_020_81CC_0E:
C - - - - - 0x0141DC 05:81CC: A2 00     LDX #$00
C - - - - - 0x0141DE 05:81CE: 20 3B DA  JSR sub_0x01DA4B
C - - - - - 0x0141E1 05:81D1: 38        SEC
C - - - - - 0x0141E2 05:81D2: 60        RTS



ofs_020_81D3_04:
C - - J - - 0x0141E3 05:81D3: A9 60     LDA #$60
C - - - - - 0x0141E5 05:81D5: D0 02     BNE bra_81D9    ; jmp



ofs_020_81D7_11:
C - - J - - 0x0141E7 05:81D7: A9 20     LDA #$20
bra_81D9:
C - - - - - 0x0141E9 05:81D9: 85 4A     STA ram_004A
loc_81DB:
C D 0 - - - 0x0141EB 05:81DB: A9 00     LDA #$00
C - - - - - 0x0141ED 05:81DD: 85 58     STA ram_0058
C - - - - - 0x0141EF 05:81DF: 85 5C     STA ram_005C
bra_81E1:
C - - - - - 0x0141F1 05:81E1: 38        SEC
C - - - - - 0x0141F2 05:81E2: 60        RTS



ofs_020_81E3_05:
C - - J - - 0x0141F3 05:81E3: A5 40     LDA ram_btn_press_1
C - - - - - 0x0141F5 05:81E5: 05 41     ORA ram_btn_press_1 + $01
C - - - - - 0x0141F7 05:81E7: 29 10     AND #con_btn_Start
C - - - - - 0x0141F9 05:81E9: F0 10     BEQ bra_81FB
C - - - - - 0x0141FB 05:81EB: A9 00     LDA #con_D280_push_start_button
C - - - - - 0x0141FD 05:81ED: 20 09 82  JSR sub_8209
C - - - - - 0x014200 05:81F0: A9 3A     LDA #$3A
C - - - - - 0x014202 05:81F2: 85 22     STA ram_0022
C - - - - - 0x014204 05:81F4: A9 64     LDA #con_music_64
C - - - - - 0x014206 05:81F6: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x014209 05:81F9: 18        CLC
C - - - - - 0x01420A 05:81FA: 60        RTS
bra_81FB:
C - - - - - 0x01420B 05:81FB: A5 4A     LDA ram_004A
C - - - - - 0x01420D 05:81FD: C9 08     CMP #$08
C - - - - - 0x01420F 05:81FF: 90 0B     BCC bra_820C
C - - - - - 0x014211 05:8201: A5 23     LDA ram_0023
C - - - - - 0x014213 05:8203: 29 10     AND #$10
C - - - - - 0x014215 05:8205: F0 02     BEQ bra_8209
C - - - - - 0x014217 05:8207: A9 80     LDA #con_D280_push_start_button + $80
bra_8209:   ; A = 00  con_D280_push_start_button
sub_8209:
C - - - - - 0x014219 05:8209: 20 3C D2  JSR sub_0x01D24C_draw_text
bra_820C:
ofs_020_820C_08:
C - - - - - 0x01421C 05:820C: A5 4A     LDA ram_004A
C - - - - - 0x01421E 05:820E: F0 D1     BEQ bra_81E1
C - - - - - 0x014220 05:8210: C6 4A     DEC ram_004A
ofs_020_8212_1F:
C - - - - - 0x014222 05:8212: 18        CLC
C - - - - - 0x014223 05:8213: 60        RTS



sub_8214:
ofs_020_8214_1E:
C - - J - - 0x014224 05:8214: A9 00     LDA #$00
C - - - - - 0x014226 05:8216: 85 22     STA ram_0022
C - - - - - 0x014228 05:8218: 18        CLC
C - - - - - 0x014229 05:8219: 60        RTS



ofs_020_821A_2A:
C - - J - - 0x01422A 05:821A: A9 06     LDA #$06
C - - - - - 0x01422C 05:821C: 8D A1 05  STA ram_05A1
C - - - - - 0x01422F 05:821F: 38        SEC
C - - - - - 0x014230 05:8220: 60        RTS



sub_8221:
C - - - - - 0x014231 05:8221: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x014234 05:8224: A9 A0     LDA #con_music_A0
C - - - - - 0x014236 05:8226: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



ofs_020_8229_39:
C - - J - - 0x014239 05:8229: 20 21 82  JSR sub_8221
C - - - - - 0x01423C 05:822C: A9 21     LDA #$21
C - - - - - 0x01423E 05:822E: D0 1C     BNE bra_824C    ; jmp



ofs_020_8230_3E:
C - - J - - 0x014240 05:8230: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x014243 05:8233: 4C 39 82  JMP loc_8239



ofs_020_8236_21:
C - - J - - 0x014246 05:8236: 20 21 82  JSR sub_8221
loc_8239:
C D 0 - - - 0x014249 05:8239: A9 1B     LDA #con_chr_pair + $1B
C - - - - - 0x01424B 05:823B: D0 0F     BNE bra_824C    ; jmp



ofs_020_823D_00:
C - - J - - 0x01424D 05:823D: 20 CC 81  JSR sub_81CC
C - - - - - 0x014250 05:8240: 20 9B F4  JSR sub_0x01F4AB
C - - - - - 0x014253 05:8243: 20 97 D1  JSR sub_0x01D1A7
C - - - - - 0x014256 05:8246: A9 7C     LDA #con_chr_bank + $7C
C - - - - - 0x014258 05:8248: 85 79     STA ram_chr_bank + $02
C - - - - - 0x01425A 05:824A: A9 1C     LDA #con_chr_pair + $1C
bra_824C:
C - - - - - 0x01425C 05:824C: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
loc_824F:
C D 0 - - - 0x01425F 05:824F: A9 00     LDA #$00
C - - - - - 0x014261 05:8251: 85 FD     STA ram_scroll_X
C - - - - - 0x014263 05:8253: 85 FC     STA ram_scroll_Y
C - - - - - 0x014265 05:8255: 85 5A     STA ram_005A_flag
C - - - - - 0x014267 05:8257: A5 FF     LDA ram_for_2000
C - - - - - 0x014269 05:8259: 29 FC     AND #$FC
C - - - - - 0x01426B 05:825B: 85 FF     STA ram_for_2000
C - - - - - 0x01426D 05:825D: 38        SEC
C - - - - - 0x01426E 05:825E: 60        RTS



ofs_020_825F_01:
C - - J - - 0x01426F 05:825F: 20 97 D1  JSR sub_0x01D1A7
C - - - - - 0x014272 05:8262: 38        SEC
C - - - - - 0x014273 05:8263: 60        RTS



ofs_020_8264_02:
C - - J - - 0x014274 05:8264: A9 01     LDA #$01
C - - - - - 0x014276 05:8266: 85 25     STA ram_0025
C - - - - - 0x014278 05:8268: 38        SEC
C - - - - - 0x014279 05:8269: 60        RTS



ofs_020_826A_07:
C - - J - - 0x01427A 05:826A: A9 00     LDA #$00
C - - - - - 0x01427C 05:826C: 20 98 83  JSR sub_8398
C - - - - - 0x01427F 05:826F: 38        SEC
C - - - - - 0x014280 05:8270: 60        RTS



ofs_020_8271_09:
C - - J - - 0x014281 05:8271: A9 1D     LDA #con_chr_pair + $1D
C - - - - - 0x014283 05:8273: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
C - - - - - 0x014286 05:8276: A2 08     LDX #con_D22A_cutscene_phone
C - - - - - 0x014288 05:8278: A9 1A     LDA #con_F3D6_1A
C - - - - - 0x01428A 05:827A: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01428D 05:827D: 4C 9E 82  JMP loc_829E



ofs_020_8280_03:
C - - J - - 0x014290 05:8280: 20 8F D1  JSR sub_0x01D19F
C - - - - - 0x014293 05:8283: A9 17     LDA #$17
sub_8285:
C - - - - - 0x014295 05:8285: A0 01     LDY #$01
C - - - - - 0x014297 05:8287: 20 B1 F4  JSR sub_0x01F4C1
sub_828A:
loc_828A:
C D 0 - - - 0x01429A 05:828A: A9 00     LDA #$00
C - - - - - 0x01429C 05:828C: 85 2B     STA ram_002B
C - - - - - 0x01429E 05:828E: 38        SEC
C - - - - - 0x01429F 05:828F: 60        RTS



ofs_020_8290_16:
C - - J - - 0x0142A0 05:8290: A9 1E     LDA #con_chr_pair + $1E
C - - - - - 0x0142A2 05:8292: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
C - - - - - 0x0142A5 05:8295: A2 0A     LDX #con_D22A_cutscene_crime
C - - - - - 0x0142A7 05:8297: 20 A8 D1  JSR sub_0x01D1B8
C - - - - - 0x0142AA 05:829A: A9 03     LDA #$03
C - - - - - 0x0142AC 05:829C: D0 10     BNE bra_82AE    ; jmp



loc_829E:
C D 0 - - - 0x0142AE 05:829E: A9 00     LDA #$00
C - - - - - 0x0142B0 05:82A0: 20 AE 82  JSR sub_82AE
C - - - - - 0x0142B3 05:82A3: A9 01     LDA #$01
C - - - - - 0x0142B5 05:82A5: A0 02     LDY #$02
bra_82A7:
C - - - - - 0x0142B7 05:82A7: 20 98 85  JSR sub_8598
C - - - - - 0x0142BA 05:82AA: 38        SEC
C - - - - - 0x0142BB 05:82AB: 60        RTS



ofs_020_82AC_0F:
C - - J - - 0x0142BC 05:82AC: A9 02     LDA #$02
bra_82AE:
sub_82AE:
loc_82AE:
C D 0 - - - 0x0142BE 05:82AE: A0 01     LDY #$01
C - - - - - 0x0142C0 05:82B0: D0 F5     BNE bra_82A7    ; jmp



ofs_020_82B2_18:
C - - J - - 0x0142C2 05:82B2: A9 04     LDA #$04
C - - - - - 0x0142C4 05:82B4: D0 F8     BNE bra_82AE    ; jmp



ofs_020_82B6_1B:
C - - J - - 0x0142C6 05:82B6: A9 05     LDA #$05
C - - - - - 0x0142C8 05:82B8: D0 F4     BNE bra_82AE    ; jmp



ofs_020_82BA_10:
C - - J - - 0x0142CA 05:82BA: A9 03     LDA #$03
C - - - - - 0x0142CC 05:82BC: D0 0A     BNE bra_82C8    ; jmp



ofs_020_82BE_17:
C - - J - - 0x0142CE 05:82BE: A9 04     LDA #$04
C - - - - - 0x0142D0 05:82C0: D0 06     BNE bra_82C8    ; jmp



ofs_020_82C2_19:
C - - J - - 0x0142D2 05:82C2: A9 03     LDA #$03
C - - - - - 0x0142D4 05:82C4: D0 02     BNE bra_82C8    ; jmp



ofs_020_82C6_1C:
C - - J - - 0x0142D6 05:82C6: A9 08     LDA #$08
bra_82C8:
loc_82C8:
C D 0 - - - 0x0142D8 05:82C8: A0 04     LDY #$04
bra_82CA:
C - - - - - 0x0142DA 05:82CA: 4C 40 85  JMP loc_8540



ofs_020_82CD_0B:
C - - J - - 0x0142DD 05:82CD: A9 1C     LDA #$1C
C - - - - - 0x0142DF 05:82CF: A0 08     LDY #$08
C - - - - - 0x0142E1 05:82D1: D0 F7     BNE bra_82CA    ; jmp



ofs_020_82D3_23:
C - - J - - 0x0142E3 05:82D3: A9 06     LDA #$06
C - - - - - 0x0142E5 05:82D5: 2C A9 08  .byte $2C   ; BIT
ofs_020_82D6_27:
C - - - - - 0x0142E6 05:82D6: A9 08     LDA #$08
C - - - - - 0x0142E8 05:82D8: 4C C8 82  JMP loc_82C8



ofs_020_82DB_3D:
C - - J - - 0x0142EB 05:82DB: C8        INY
ofs_020_82DC_3C:
C - - J - - 0x0142EC 05:82DC: C8        INY
ofs_020_82DD_3B:
C - - J - - 0x0142ED 05:82DD: C8        INY
ofs_020_82DE_3A:
C - - J - - 0x0142EE 05:82DE: C8        INY
ofs_020_82DF_35:
C - - J - - 0x0142EF 05:82DF: C8        INY
ofs_020_82E0_34:
C - - J - - 0x0142F0 05:82E0: C8        INY
ofs_020_82E1_33:
C - - J - - 0x0142F1 05:82E1: C8        INY
ofs_020_82E2_32:
C - - J - - 0x0142F2 05:82E2: C8        INY
ofs_020_82E3_31:
C - - J - - 0x0142F3 05:82E3: C8        INY
C - - - - - 0x0142F4 05:82E4: C8        INY
C - - - - - 0x0142F5 05:82E5: C8        INY
ofs_020_82E6_2E:
C - - J - - 0x0142F6 05:82E6: C8        INY
ofs_020_82E7_2D:
C - - J - - 0x0142F7 05:82E7: C8        INY
ofs_020_82E8_29:
C - - J - - 0x0142F8 05:82E8: C8        INY
ofs_020_82E9_28:
C - - J - - 0x0142F9 05:82E9: C8        INY
ofs_020_82EA_26:
C - - J - - 0x0142FA 05:82EA: C8        INY
ofs_020_82EB_25:
C - - J - - 0x0142FB 05:82EB: C8        INY
ofs_020_82EC_24:
C - - J - - 0x0142FC 05:82EC: C8        INY
ofs_020_82ED_1D:
C - - J - - 0x0142FD 05:82ED: C8        INY
ofs_020_82EE_1A:
C - - J - - 0x0142FE 05:82EE: C8        INY
ofs_020_82EF_15:
C - - J - - 0x0142FF 05:82EF: C8        INY
ofs_020_82F0_14:
C - - J - - 0x014300 05:82F0: C8        INY
ofs_020_82F1_13:
C - - J - - 0x014301 05:82F1: C8        INY
ofs_020_82F2_12:
C - - J - - 0x014302 05:82F2: 98        TYA
C - - - - - 0x014303 05:82F3: 4C 21 8C  JMP loc_8C21



ofs_020_82F6_22:
C - - J - - 0x014306 05:82F6: 20 93 FE  JSR sub_0x01FEA3
C - - - - - 0x014309 05:82F9: A0 00     LDY #$00
bra_82FB_loop:
C - - - - - 0x01430B 05:82FB: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x01430E 05:82FE: D0 05     BNE bra_8305
- - - - - - 0x014310 05:8300: C8        INY
- - - - - - 0x014311 05:8301: C0 02     CPY #$02
- - - - - - 0x014313 05:8303: D0 F6     BNE bra_82FB_loop
bra_8305:
C - - - - - 0x014315 05:8305: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x014318 05:8308: 29 0F     AND #$0F
C - - - - - 0x01431A 05:830A: 18        CLC
C - - - - - 0x01431B 05:830B: 69 01     ADC #$01
C - - - - - 0x01431D 05:830D: 20 8A 83  JSR sub_838A
C - - - - - 0x014320 05:8310: A5 75     LDA ram_stage
C - - - - - 0x014322 05:8312: 18        CLC
C - - - - - 0x014323 05:8313: 69 05     ADC #$05
C - - - - - 0x014325 05:8315: 20 8A 83  JSR sub_838A
C - - - - - 0x014328 05:8318: A0 00     LDY #$00
C - - - - - 0x01432A 05:831A: 20 38 83  JSR sub_8338
C - - - - - 0x01432D 05:831D: A0 02     LDY #$02
C - - - - - 0x01432F 05:831F: 20 38 83  JSR sub_8338
C - - - - - 0x014332 05:8322: A9 00     LDA #$00
C - - - - - 0x014334 05:8324: 20 B2 83  JSR sub_83B2
C - - - - - 0x014337 05:8327: A9 06     LDA #$06
C - - - - - 0x014339 05:8329: A0 01     LDY #$01
C - - - - - 0x01433B 05:832B: 20 98 85  JSR sub_8598
C - - - - - 0x01433E 05:832E: 20 70 FE  JSR sub_0x01FE80
C - - - - - 0x014341 05:8331: 38        SEC
C - - - - - 0x014342 05:8332: 60        RTS



ofs_020_8333_2C:
C - - J - - 0x014343 05:8333: A9 07     LDA #$07
C - - - - - 0x014345 05:8335: 4C AE 82  JMP loc_82AE



sub_8338:
C - - - - - 0x014348 05:8338: B9 0A 8D  LDA tbl_8D0A,Y
C - - - - - 0x01434B 05:833B: 85 02     STA ram_0002
C - - - - - 0x01434D 05:833D: B9 0B 8D  LDA tbl_8D0A + $01,Y
C - - - - - 0x014350 05:8340: 85 03     STA ram_0003
C - - - - - 0x014352 05:8342: A9 07     LDA #con_DA9D_07
C - - - - - 0x014354 05:8344: 85 1F     STA ram_001F
C - - - - - 0x014356 05:8346: A9 0C     LDA #con_F3D6_0C
C - - - - - 0x014358 05:8348: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01435B 05:834B: 4C 02 F7  JMP loc_0x01F712



ofs_020_834E_2B:
C - - J - - 0x01435E 05:834E: 20 97 D1  JSR sub_0x01D1A7
C - - - - - 0x014361 05:8351: A5 75     LDA ram_stage
C - - - - - 0x014363 05:8353: C9 04     CMP #$04
C - - - - - 0x014365 05:8355: F0 28     BEQ bra_837F
C - - - - - 0x014367 05:8357: A0 03     LDY #$03
C - - - - - 0x014369 05:8359: 84 20     STY ram_script_hi
C - - - - - 0x01436B 05:835B: 88        DEY
C - - - - - 0x01436C 05:835C: 84 44     STY ram_script_lo
C - - - - - 0x01436E 05:835E: E6 75     INC ram_stage
C - - - - - 0x014370 05:8360: A9 00     LDA #$00
sub_8362:
C - - - - - 0x014372 05:8362: 85 BD     STA ram_00BD
C - - - - - 0x014374 05:8364: 8D 59 03  STA ram_0359
C - - - - - 0x014377 05:8367: 8D 41 03  STA ram_0341
C - - - - - 0x01437A 05:836A: 85 21     STA ram_0021
C - - - - - 0x01437C 05:836C: 85 22     STA ram_0022
C - - - - - 0x01437E 05:836E: 85 76     STA ram_irq_handler ; con_irq_00
C - - - - - 0x014380 05:8370: 8D 43 03  STA ram_0343
C - - - - - 0x014383 05:8373: 85 74     STA ram_0074
C - - - - - 0x014385 05:8375: A0 03     LDY #$03
bra_8377_loop:
C - - - - - 0x014387 05:8377: 99 3C 05  STA ram_053C,Y
C - - - - - 0x01438A 05:837A: 88        DEY
C - - - - - 0x01438B 05:837B: 10 FA     BPL bra_8377_loop
C - - - - - 0x01438D 05:837D: 38        SEC
C - - - - - 0x01438E 05:837E: 60        RTS
bra_837F:
C - - - - - 0x01438F 05:837F: A9 00     LDA #$00
C - - - - - 0x014391 05:8381: 85 20     STA ram_script_hi
C - - - - - 0x014393 05:8383: 85 44     STA ram_script_lo
C - - - - - 0x014395 05:8385: 20 62 83  JSR sub_8362
C - - - - - 0x014398 05:8388: 18        CLC
C - - - - - 0x014399 05:8389: 60        RTS



sub_838A:
C - - - - - 0x01439A 05:838A: 20 DF 83  JSR sub_83DF
C - - - - - 0x01439D 05:838D: A9 0C     LDA #con_F3D6_0C
C - - - - - 0x01439F 05:838F: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0143A2 05:8392: 20 8A 82  JSR sub_828A
C - - - - - 0x0143A5 05:8395: 4C 02 F7  JMP loc_0x01F712



sub_8398:
C - - - - - 0x0143A8 05:8398: 85 07     STA ram_0007
C - - - - - 0x0143AA 05:839A: 20 93 FE  JSR sub_0x01FEA3
C - - - - - 0x0143AD 05:839D: A9 10     LDA #$10
C - - - - - 0x0143AF 05:839F: 20 85 82  JSR sub_8285
C - - - - - 0x0143B2 05:83A2: 20 DF 83  JSR sub_83DF
C - - - - - 0x0143B5 05:83A5: A5 07     LDA ram_0007
C - - - - - 0x0143B7 05:83A7: A9 0C     LDA #con_F3D6_0C
C - - - - - 0x0143B9 05:83A9: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0143BC 05:83AC: 20 02 F7  JSR sub_0x01F712
C - - - - - 0x0143BF 05:83AF: 4C 70 FE  JMP loc_0x01FE80



sub_83B2:
; bzk optimize, A always = 00
C - - - - - 0x0143C2 05:83B2: 0A        ASL
C - - - - - 0x0143C3 05:83B3: A8        TAY
C - - - - - 0x0143C4 05:83B4: B9 02 84  LDA tbl_8402,Y
C - - - - - 0x0143C7 05:83B7: 85 00     STA ram_0000
C - - - - - 0x0143C9 05:83B9: B9 03 84  LDA tbl_8402 + $01,Y
C - - - - - 0x0143CC 05:83BC: 85 01     STA ram_0001
C - - - - - 0x0143CE 05:83BE: A6 26     LDX ram_buffer_index
C - - - - - 0x0143D0 05:83C0: A0 02     LDY #$02
C - - - - - 0x0143D2 05:83C2: A9 04     LDA #$04
C - - - - - 0x0143D4 05:83C4: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x0143D7 05:83C7: B1 00     LDA (ram_0000),Y
C - - - - - 0x0143D9 05:83C9: 18        CLC
C - - - - - 0x0143DA 05:83CA: 69 03     ADC #$03
C - - - - - 0x0143DC 05:83CC: 85 02     STA ram_0002
C - - - - - 0x0143DE 05:83CE: A0 00     LDY #$00
bra_83D0_loop:
C - - - - - 0x0143E0 05:83D0: B1 00     LDA (ram_0000),Y
C - - - - - 0x0143E2 05:83D2: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x0143E5 05:83D5: C8        INY
C - - - - - 0x0143E6 05:83D6: C6 02     DEC ram_0002
C - - - - - 0x0143E8 05:83D8: D0 F6     BNE bra_83D0_loop
C - - - - - 0x0143EA 05:83DA: 86 26     STX ram_buffer_index
C - - - - - 0x0143EC 05:83DC: 4C 02 F7  JMP loc_0x01F712



sub_83DF:
C - - - - - 0x0143EF 05:83DF: 0A        ASL
C - - - - - 0x0143F0 05:83E0: A8        TAY
C - - - - - 0x0143F1 05:83E1: B9 F0 83  LDA tbl_83F0,Y
C - - - - - 0x0143F4 05:83E4: 85 02     STA ram_0002
C - - - - - 0x0143F6 05:83E6: B9 F1 83  LDA tbl_83F0 + $01,Y
C - - - - - 0x0143F9 05:83E9: 85 03     STA ram_0003
C - - - - - 0x0143FB 05:83EB: A9 00     LDA #con_DA9D_00
C - - - - - 0x0143FD 05:83ED: 85 1F     STA ram_001F
C - - - - - 0x0143FF 05:83EF: 60        RTS



tbl_83F0:
- D 0 - - - 0x014400 05:83F0: 06 84     .word _off001_8406_00
- D 0 - - - 0x014402 05:83F2: 16 84     .word _off001_8416_01
- D 0 - - - 0x014404 05:83F4: 2E 84     .word _off001_842E_02
- D 0 - - - 0x014406 05:83F6: 46 84     .word _off001_8446_03
- D 0 - - - 0x014408 05:83F8: 5E 84     .word _off001_845E_04
- D 0 - - - 0x01440A 05:83FA: 76 84     .word _off001_8476_05
- D 0 - - - 0x01440C 05:83FC: 8E 84     .word _off001_848E_06
- D 0 - - - 0x01440E 05:83FE: A6 84     .word _off001_84A6_07
- D 0 - - - 0x014410 05:8400: BE 84     .word _off001_84BE_08



tbl_8402:
- D 0 - - - 0x014412 05:8402: F2 84     .word tbl_84F2


; bzk garbage
- - - - - - 0x014414 05:8404: 35        .byte $35   ; 
- - - - - - 0x014415 05:8405: 85        .byte $85   ; 



_off001_8406_00:
- D 0 - I - 0x014416 05:8406: 0A 22     .word $220A ; 
- D 0 - I - 0x014418 05:8408: 0C        .byte $0C   ; 
- D 0 - I - 0x014419 05:8409: 01        .byte $01   ; 
- D 0 - I - 0x01441A 05:840A: 1E        .byte $1E, $15, $1F, $13, $19, $24, $29, $00, $01, $09, $09, $02   ; 



_off001_8416_01:
- D 0 - I - 0x014426 05:8416: 14 21     .word $2114 ; 
- D 0 - I - 0x014428 05:8418: 04        .byte $04   ; 
- D 0 - I - 0x014429 05:8419: 05        .byte $05   ; 
- D 0 - I - 0x01442A 05:841A: 80        .byte $80, $81, $82, $83   ; 
- D 0 - I - 0x01442E 05:841E: 90        .byte $90, $91, $92, $93   ; 
- D 0 - I - 0x014432 05:8422: A0        .byte $A0, $A1, $A2, $A3   ; 
- D 0 - I - 0x014436 05:8426: B0        .byte $B0, $B1, $B2, $B3   ; 
- D 0 - I - 0x01443A 05:842A: DC        .byte $DC, $DD, $DE, $DF   ; 



_off001_842E_02:
- D 0 - I - 0x01443E 05:842E: 14 21     .word $2114 ; 
- D 0 - I - 0x014440 05:8430: 04        .byte $04   ; 
- D 0 - I - 0x014441 05:8431: 05        .byte $05   ; 
- D 0 - I - 0x014442 05:8432: 84        .byte $84, $85, $86, $87   ; 
- D 0 - I - 0x014446 05:8436: 94        .byte $94, $95, $96, $97   ; 
- D 0 - I - 0x01444A 05:843A: A4        .byte $A4, $A5, $A6, $A7   ; 
- D 0 - I - 0x01444E 05:843E: B4        .byte $B4, $B5, $B6, $B7   ; 
- D 0 - I - 0x014452 05:8442: EC        .byte $EC, $ED, $EE, $EF   ; 



_off001_8446_03:
- D 0 - I - 0x014456 05:8446: 14 21     .word $2114 ; 
- D 0 - I - 0x014458 05:8448: 04        .byte $04   ; 
- D 0 - I - 0x014459 05:8449: 05        .byte $05   ; 
- D 0 - I - 0x01445A 05:844A: 88        .byte $88, $89, $8A, $8B   ; 
- D 0 - I - 0x01445E 05:844E: 98        .byte $98, $99, $9A, $9B   ; 
- D 0 - I - 0x014462 05:8452: A8        .byte $A8, $A9, $AA, $AB   ; 
- D 0 - I - 0x014466 05:8456: B8        .byte $B8, $B9, $BA, $BB   ; 
- D 0 - I - 0x01446A 05:845A: FB        .byte $FB, $FC, $FD, $FE   ; 



_off001_845E_04:
- D 0 - I - 0x01446E 05:845E: 14 21     .word $2114 ; 
- D 0 - I - 0x014470 05:8460: 04        .byte $04   ; 
- D 0 - I - 0x014471 05:8461: 05        .byte $05   ; 
- D 0 - I - 0x014472 05:8462: 8C        .byte $8C, $8D, $8E, $8F   ; 
- D 0 - I - 0x014476 05:8466: 9C        .byte $9C, $9D, $9E, $9F   ; 
- D 0 - I - 0x01447A 05:846A: AC        .byte $AC, $AD, $AE, $AF   ; 
- D 0 - I - 0x01447E 05:846E: BC        .byte $BC, $BD, $BE, $BF   ; 
- D 0 - I - 0x014482 05:8472: CC        .byte $CC, $CD, $CE, $CF   ; 



_off001_8476_05:
- D 0 - I - 0x014486 05:8476: 08 21     .word $2108 ; 
- D 0 - I - 0x014488 05:8478: 04        .byte $04   ; 
- D 0 - I - 0x014489 05:8479: 05        .byte $05   ; 
- D 0 - I - 0x01448A 05:847A: C0        .byte $C0, $C1, $C2, $C3   ; 
- D 0 - I - 0x01448E 05:847E: D0        .byte $D0, $D1, $D2, $D3   ; 
- D 0 - I - 0x014492 05:8482: E0        .byte $E0, $E1, $E2, $E3   ; 
- D 0 - I - 0x014496 05:8486: F0        .byte $F0, $F1, $F2, $F3   ; 
- D 0 - I - 0x01449A 05:848A: 40        .byte $40, $41, $48, $49   ; 



_off001_848E_06:
- D 0 - I - 0x01449E 05:848E: 08 21     .word $2108 ; 
- D 0 - I - 0x0144A0 05:8490: 04        .byte $04   ; 
- D 0 - I - 0x0144A1 05:8491: 05        .byte $05   ; 
- D 0 - I - 0x0144A2 05:8492: C4        .byte $C4, $C5, $C6, $C7   ; 
- D 0 - I - 0x0144A6 05:8496: D4        .byte $D4, $D5, $D6, $D7   ; 
- D 0 - I - 0x0144AA 05:849A: E4        .byte $E4, $E5, $E6, $E7   ; 
- D 0 - I - 0x0144AE 05:849E: F4        .byte $F4, $F5, $F6, $F7   ; 
- D 0 - I - 0x0144B2 05:84A2: 4A        .byte $4A, $4B, $4C, $4D   ; 



_off001_84A6_07:
- D 0 - I - 0x0144B6 05:84A6: 08 21     .word $2108 ; 
- D 0 - I - 0x0144B8 05:84A8: 04        .byte $04   ; 
- D 0 - I - 0x0144B9 05:84A9: 05        .byte $05   ; 
- D 0 - I - 0x0144BA 05:84AA: C8        .byte $C8, $C9, $CA, $CB   ; 
- D 0 - I - 0x0144BE 05:84AE: D8        .byte $D8, $D9, $DA, $DB   ; 
- D 0 - I - 0x0144C2 05:84B2: E8        .byte $E8, $E9, $EA, $EB   ; 
- D 0 - I - 0x0144C6 05:84B6: F0        .byte $F0, $F8, $F9, $FA   ; 
- D 0 - I - 0x0144CA 05:84BA: 4E        .byte $4E, $4F, $50, $5F   ; 



_off001_84BE_08:
- D 0 - I - 0x0144CE 05:84BE: A8 20     .word $20A8 ; 
- D 0 - I - 0x0144D0 05:84C0: 06        .byte $06   ; 
- D 0 - I - 0x0144D1 05:84C1: 08        .byte $08   ; 
- D 0 - I - 0x0144D2 05:84C2: C6        .byte $C6, $C9, $C7, $C8, $C9, $CA   ; 
- D 0 - I - 0x0144D8 05:84C8: C0        .byte $C0, $D6, $D7, $D8, $D9, $DA   ; 
- D 0 - I - 0x0144DE 05:84CE: C0        .byte $C0, $E6, $E7, $E8, $E9, $DA   ; 
- D 0 - I - 0x0144E4 05:84D4: C0        .byte $C0, $F6, $F7, $F8, $F9, $DA   ; 
- D 0 - I - 0x0144EA 05:84DA: C0        .byte $C0, $C1, $C2, $C3, $C4, $C5   ; 
- D 0 - I - 0x0144F0 05:84E0: D0        .byte $D0, $D1, $D2, $D3, $D4, $D5   ; 
- D 0 - I - 0x0144F6 05:84E6: E0        .byte $E0, $E1, $E2, $E3, $E4, $E5   ; 
- D 0 - I - 0x0144FC 05:84EC: F0        .byte $F0, $F1, $F2, $F3, $F4, $F5   ; 



tbl_84F2:
- D 0 - I - 0x014502 05:84F2: C0 23     .word $23C0 ; 
- D 0 - I - 0x014504 05:84F4: 40        .byte $40   ; 
- D 0 - I - 0x014505 05:84F5: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $FF, $FF, $00, $00, $00, $00   ; 
- D 0 - I - 0x014515 05:8505: 00        .byte $00, $00, $FF, $FF, $00, $55, $00, $00, $00, $00, $0F, $0F, $00, $05, $00, $00   ; 
- D 0 - I - 0x014525 05:8515: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x014535 05:8525: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 


; bzk garbage
- - - - - - 0x014545 05:8535: D0 23     .word $23D0 ; 
- - - - - - 0x014547 05:8537: 08        .byte $08   ; 
- - - - - - 0x014548 05:8538: 00        .byte $00, $00, $FF, $00, $00, $AA, $00, $00   ; 



loc_8540:
C D 0 - - - 0x014550 05:8540: 85 01     STA ram_0001
C - - - - - 0x014552 05:8542: 84 03     STY ram_0003
C - - - - - 0x014554 05:8544: AD F2 03  LDA ram_03F2
C - - - - - 0x014557 05:8547: D0 49     BNE bra_8592
C - - - - - 0x014559 05:8549: A9 08     LDA #$08
C - - - - - 0x01455B 05:854B: 8D F2 03  STA ram_03F2
C - - - - - 0x01455E 05:854E: AC F1 03  LDY ram_03F1
C - - - - - 0x014561 05:8551: B9 A8 F5  LDA tbl_0x01F5B8,Y
C - - - - - 0x014564 05:8554: C9 FF     CMP #$FF
C - - - - - 0x014566 05:8556: F0 3D     BEQ bra_8595
C - - - - - 0x014568 05:8558: 85 00     STA ram_0000
C - - - - - 0x01456A 05:855A: A2 00     LDX #$00
bra_855C_loop:
C - - - - - 0x01456C 05:855C: A9 04     LDA #$04
C - - - - - 0x01456E 05:855E: 85 02     STA ram_0002
bra_8560_loop:
C - - - - - 0x014570 05:8560: A5 01     LDA ram_0001
C - - - - - 0x014572 05:8562: 29 01     AND #$01
C - - - - - 0x014574 05:8564: D0 06     BNE bra_856C
C - - - - - 0x014576 05:8566: BD B0 03  LDA ram_palette_buffer,X
C - - - - - 0x014579 05:8569: 4C 7D 85  JMP loc_857D
bra_856C:
C - - - - - 0x01457C 05:856C: A5 00     LDA ram_0000
C - - - - - 0x01457E 05:856E: C9 0F     CMP #$0F
C - - - - - 0x014580 05:8570: F0 0B     BEQ bra_857D
C - - - - - 0x014582 05:8572: BD B0 03  LDA ram_palette_buffer,X
C - - - - - 0x014585 05:8575: C5 00     CMP ram_0000
C - - - - - 0x014587 05:8577: 90 04     BCC bra_857D
C - - - - - 0x014589 05:8579: 29 0F     AND #$0F
C - - - - - 0x01458B 05:857B: 05 00     ORA ram_0000
bra_857D:
loc_857D:
C D 0 - - - 0x01458D 05:857D: 9D D0 03  STA ram_brightnes_buffer,X
C - - - - - 0x014590 05:8580: E8        INX
C - - - - - 0x014591 05:8581: C6 02     DEC ram_0002
C - - - - - 0x014593 05:8583: D0 DB     BNE bra_8560_loop
C - - - - - 0x014595 05:8585: 46 01     LSR ram_0001
C - - - - - 0x014597 05:8587: C6 03     DEC ram_0003
C - - - - - 0x014599 05:8589: D0 D1     BNE bra_855C_loop
C - - - - - 0x01459B 05:858B: EE F1 03  INC ram_03F1
C - - - - - 0x01459E 05:858E: A9 83     LDA #$83
C - - - - - 0x0145A0 05:8590: 85 2B     STA ram_002B
bra_8592:
C - - - - - 0x0145A2 05:8592: 4C 64 F5  JMP loc_0x01F574
bra_8595:
C - - - - - 0x0145A5 05:8595: 4C 5A F5  JMP loc_0x01F56A



sub_8598:
C - - - - - 0x0145A8 05:8598: 84 02     STY ram_0002
C - - - - - 0x0145AA 05:859A: A8        TAY
C - - - - - 0x0145AB 05:859B: B9 B5 85  LDA tbl_85B5,Y
C - - - - - 0x0145AE 05:859E: 18        CLC
; bzk optimize
C - - - - - 0x0145AF 05:859F: A0 00     LDY #$00
C - - - - - 0x0145B1 05:85A1: 79 BD 85  ADC tbl_85BD,Y
C - - - - - 0x0145B4 05:85A4: 85 00     STA ram_0000
C - - - - - 0x0145B6 05:85A6: B9 BE 85  LDA tbl_85BD + $01,Y
C - - - - - 0x0145B9 05:85A9: 69 00     ADC #$00
C - - - - - 0x0145BB 05:85AB: 85 01     STA ram_0001
C - - - - - 0x0145BD 05:85AD: A0 01     LDY #$01
C - - - - - 0x0145BF 05:85AF: 20 04 F5  JSR sub_0x01F514
C - - - - - 0x0145C2 05:85B2: 4C 8A 82  JMP loc_828A



tbl_85B5:
- D 0 - - - 0x0145C5 05:85B5: 00        .byte $00   ; 
- D 0 - - - 0x0145C6 05:85B6: 0C        .byte $0C   ; 
- D 0 - - - 0x0145C7 05:85B7: 18        .byte $18   ; 
- D 0 - - - 0x0145C8 05:85B8: 24        .byte $24   ; 
- D 0 - - - 0x0145C9 05:85B9: 30        .byte $30   ; 
- D 0 - - - 0x0145CA 05:85BA: 3C        .byte $3C   ; 
- D 0 - - - 0x0145CB 05:85BB: 48        .byte $48   ; 
- D 0 - - - 0x0145CC 05:85BC: 54        .byte $54   ; 



tbl_85BD:
; bzk optimize
- D 0 - - - 0x0145CD 05:85BD: BF 85     .word tbl_85BF



tbl_85BF:
; these are 2-4th colors, the 1st color is always 0F, see 0x01F4F6
; 00 
- D 0 - I - 0x0145CF 05:85BF: 0F        .byte $0F, $0F, $0F   ; 
- D 0 - I - 0x0145D2 05:85C2: 0F        .byte $0F, $0F, $0F   ; 
- D 0 - I - 0x0145D5 05:85C5: 20        .byte $20, $00, $32   ; 
- D 0 - I - 0x0145D8 05:85C8: 20        .byte $20, $18, $38   ; 
; 0C 
- D 0 - I - 0x0145DB 05:85CB: 0F        .byte $0F, $00, $32   ; 
- D 0 - I - 0x0145DE 05:85CE: 0F        .byte $0F, $0F, $0F   ; 
- D 0 - I - 0x0145E1 05:85D1: 0F        .byte $0F, $0F, $0F   ; 
- D 0 - I - 0x0145E4 05:85D4: 0F        .byte $0F, $0F, $0F   ; 
; 18 
- D 0 - I - 0x0145E7 05:85D7: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x0145EA 05:85DA: 20        .byte $20, $12, $16   ; 
- D 0 - I - 0x0145ED 05:85DD: 20        .byte $20, $00, $32   ; 
- D 0 - I - 0x0145F0 05:85E0: 20        .byte $20, $18, $38   ; 
; 24 
- D 0 - I - 0x0145F3 05:85E3: 0F        .byte $0F, $0F, $0F   ; 
- D 0 - I - 0x0145F6 05:85E6: 0F        .byte $0F, $0F, $0F   ; 
- D 0 - I - 0x0145F9 05:85E9: 20        .byte $20, $2B, $0B   ; 
- D 0 - I - 0x0145FC 05:85EC: 0F        .byte $0F, $0F, $0F   ; 
; 30 
- D 0 - I - 0x0145FF 05:85EF: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x014602 05:85F2: 20        .byte $20, $12, $02   ; 
- D 0 - I - 0x014605 05:85F5: 20        .byte $20, $2B, $0B   ; 
- D 0 - I - 0x014608 05:85F8: 0F        .byte $0F, $0F, $0F   ; 
; 3C 
- D 0 - I - 0x01460B 05:85FB: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x01460E 05:85FE: 20        .byte $20, $12, $02   ; 
- D 0 - I - 0x014611 05:8601: 20        .byte $20, $2B, $0B   ; 
- D 0 - I - 0x014614 05:8604: 20        .byte $20, $00, $10   ; 
; 48 
- D 0 - I - 0x014617 05:8607: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x01461A 05:860A: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x01461D 05:860D: 20        .byte $20, $37, $12   ; 
- D 0 - I - 0x014620 05:8610: 0F        .byte $0F, $0F, $0F   ; 
; 54 
- D 0 - I - 0x014623 05:8613: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x014626 05:8616: 20        .byte $20, $37, $16   ; 
- D 0 - I - 0x014629 05:8619: 20        .byte $20, $37, $12   ; 
- D 0 - I - 0x01462C 05:861C: 20        .byte $20, $22, $03   ; 



ofs_020_861F_2F:
C - - J - - 0x01462F 05:861F: A9 0A     LDA #con_music_0A
C - - - - - 0x014631 05:8621: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x014634 05:8624: A9 01     LDA #$01
C - - - - - 0x014636 05:8626: 8D 43 03  STA ram_0343
C - - - - - 0x014639 05:8629: 20 41 86  JSR sub_8641
C - - - - - 0x01463C 05:862C: 38        SEC
C - - - - - 0x01463D 05:862D: 60        RTS



ofs_020_862E_48:
C - - J - - 0x01463E 05:862E: 20 48 86  JSR sub_8648
C - - - - - 0x014641 05:8631: AD 45 03  LDA ram_0345
C - - - - - 0x014644 05:8634: C9 02     CMP #$02
C - - - - - 0x014646 05:8636: D0 09     BNE bra_8641
C - - - - - 0x014648 05:8638: 38        SEC
C - - - - - 0x014649 05:8639: 60        RTS
ofs_020_863A_30:
C - - J - - 0x01464A 05:863A: 20 48 86  JSR sub_8648
C - - - - - 0x01464D 05:863D: D0 02     BNE bra_8641
C - - - - - 0x01464F 05:863F: 38        SEC
C - - - - - 0x014650 05:8640: 60        RTS



bra_8641:
sub_8641:
C - - - - - 0x014651 05:8641: A9 1A     LDA #con_chr_pair + $1A
C - - - - - 0x014653 05:8643: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
bra_8646:
C - - - - - 0x014656 05:8646: 18        CLC
C - - - - - 0x014657 05:8647: 60        RTS



sub_8648:
C - - - - - 0x014658 05:8648: E6 67     INC ram_0067
C - - - - - 0x01465A 05:864A: 20 ED B9  JSR sub_B9ED
C - - - - - 0x01465D 05:864D: AD 43 03  LDA ram_0343
C - - - - - 0x014660 05:8650: 60        RTS



ofs_020_8651_37:
C - - J - - 0x014661 05:8651: A5 BB     LDA ram_00BB
C - - - - - 0x014663 05:8653: D0 17     BNE bra_866C
C - - - - - 0x014665 05:8655: E6 BB     INC ram_00BB
C - - - - - 0x014667 05:8657: A2 01     LDX #$01
bra_8659_loop:
C - - - - - 0x014669 05:8659: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x01466C 05:865C: F0 0B     BEQ bra_8669
C - - - - - 0x01466E 05:865E: BD 85 86  LDA tbl_8685,X
C - - - - - 0x014671 05:8661: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x014674 05:8664: A9 90     LDA #$90
C - - - - - 0x014676 05:8666: 9D 68 06  STA ram_obj_pos_Y,X
bra_8669:
C - - - - - 0x014679 05:8669: CA        DEX
C - - - - - 0x01467A 05:866A: 10 ED     BPL bra_8659_loop
bra_866C:
C - - - - - 0x01467C 05:866C: 20 FD 96  JSR sub_96FD
C - - - - - 0x01467F 05:866F: 20 69 9F  JSR sub_9F69
C - - - - - 0x014682 05:8672: 20 C2 D9  JSR sub_0x01D9D2
C - - - - - 0x014685 05:8675: A5 BB     LDA ram_00BB
C - - - - - 0x014687 05:8677: D0 CD     BNE bra_8646
C - - - - - 0x014689 05:8679: A9 00     LDA #$00
C - - - - - 0x01468B 05:867B: A0 07     LDY #$07
bra_867D_loop:
C - - - - - 0x01468D 05:867D: 99 E6 07  STA ram_07E6,Y  ; ram_07E8  ram_07EA  ram_07EC
C - - - - - 0x014690 05:8680: 88        DEY
C - - - - - 0x014691 05:8681: 10 FA     BPL bra_867D_loop
C - - - - - 0x014693 05:8683: 38        SEC
C - - - - - 0x014694 05:8684: 60        RTS



tbl_8685:
- D 0 - - - 0x014695 05:8685: 70        .byte $70   ; 00 
- - - - - - 0x014696 05:8686: 80        .byte $80   ; 01 



ofs_020_8687_41:
C - - J - - 0x014697 05:8687: A9 0E     LDA #$0E
C - - - - - 0x014699 05:8689: D0 02     BNE bra_868D    ; jmp



ofs_020_868B_40:
C - - J - - 0x01469B 05:868B: A9 0D     LDA #$0D
bra_868D:
C - - - - - 0x01469D 05:868D: 20 21 8C  JSR sub_8C21
C - - - - - 0x0146A0 05:8690: A5 4B     LDA ram_004B
C - - - - - 0x0146A2 05:8692: C9 18     CMP #$18
C - - - - - 0x0146A4 05:8694: 90 10     BCC bra_86A6_RTS
C - - - - - 0x0146A6 05:8696: A9 00     LDA #$00
C - - - - - 0x0146A8 05:8698: 85 4B     STA ram_004B
C - - - - - 0x0146AA 05:869A: 4C DB 81  JMP loc_81DB



ofs_020_869D_42:
C - - J - - 0x0146AD 05:869D: A9 00     LDA #$00
C - - - - - 0x0146AF 05:869F: 85 34     STA ram_mirroring
C - - - - - 0x0146B1 05:86A1: A9 02     LDA #$02
C - - - - - 0x0146B3 05:86A3: 85 25     STA ram_0025
C - - - - - 0x0146B5 05:86A5: 38        SEC
bra_86A6_RTS:
C - - - - - 0x0146B6 05:86A6: 60        RTS



ofs_020_86A7_43:
C - - J - - 0x0146B7 05:86A7: 20 20 D2  JSR sub_0x01D230
C - - - - - 0x0146BA 05:86AA: A0 20     LDY #$20    ; 2000
C - - - - - 0x0146BC 05:86AC: 20 C3 86  JSR sub_86C3
C - - - - - 0x0146BF 05:86AF: 20 20 D2  JSR sub_0x01D230
C - - - - - 0x0146C2 05:86B2: A0 2C     LDY #$2C    ; 2C00
C - - - - - 0x0146C4 05:86B4: 20 C3 86  JSR sub_86C3
C - - - - - 0x0146C7 05:86B7: A9 0A     LDA #$0A
C - - - - - 0x0146C9 05:86B9: 20 85 82  JSR sub_8285
C - - - - - 0x0146CC 05:86BC: A9 1F     LDA #con_chr_pair + $1F
C - - - - - 0x0146CE 05:86BE: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
C - - - - - 0x0146D1 05:86C1: 38        SEC
C - - - - - 0x0146D2 05:86C2: 60        RTS



sub_86C3:
C - - - - - 0x0146D3 05:86C3: 20 AA 87  JSR sub_87AA_set_2006_hi
C - - - - - 0x0146D6 05:86C6: A2 10     LDX #con_D22A_credits
C - - - - - 0x0146D8 05:86C8: 20 15 D2  JSR sub_0x01D225_prepare_pointers_for_static_screen
C - - - - - 0x0146DB 05:86CB: 4C BE D1  JMP loc_0x01D1CE



ofs_020_86CE_44:
C - - J - - 0x0146DE 05:86CE: A9 06     LDA #con_irq_06
C - - - - - 0x0146E0 05:86D0: 85 76     STA ram_irq_handler
C - - - - - 0x0146E2 05:86D2: A9 27     LDA #$27
C - - - - - 0x0146E4 05:86D4: 85 4E     STA ram_004E
C - - - - - 0x0146E6 05:86D6: A9 90     LDA #$90
C - - - - - 0x0146E8 05:86D8: 85 4F     STA ram_004F
C - - - - - 0x0146EA 05:86DA: A9 01     LDA #$01
C - - - - - 0x0146EC 05:86DC: 85 5A     STA ram_005A_flag
C - - - - - 0x0146EE 05:86DE: A5 FF     LDA ram_for_2000
C - - - - - 0x0146F0 05:86E0: 29 FC     AND #$FC
C - - - - - 0x0146F2 05:86E2: 85 52     STA ram_0052
C - - - - - 0x0146F4 05:86E4: A9 00     LDA #$00
C - - - - - 0x0146F6 05:86E6: 85 50     STA ram_0050
C - - - - - 0x0146F8 05:86E8: 85 51     STA ram_0051
C - - - - - 0x0146FA 05:86EA: A2 05     LDX #$05
bra_86EC_loop:
C - - - - - 0x0146FC 05:86EC: 95 A0     STA ram_00A0,X
C - - - - - 0x0146FE 05:86EE: CA        DEX
C - - - - - 0x0146FF 05:86EF: 10 FB     BPL bra_86EC_loop
C - - - - - 0x014701 05:86F1: 8D 41 03  STA ram_0341
C - - - - - 0x014704 05:86F4: 85 4A     STA ram_004A
C - - - - - 0x014706 05:86F6: 38        SEC
C - - - - - 0x014707 05:86F7: 60        RTS



ofs_020_86F8_45:
C - - J - - 0x014708 05:86F8: A5 A2     LDA ram_00A2
C - - - - - 0x01470A 05:86FA: 18        CLC
C - - - - - 0x01470B 05:86FB: 69 C0     ADC #$C0
C - - - - - 0x01470D 05:86FD: 85 A2     STA ram_00A2
C - - - - - 0x01470F 05:86FF: A5 A1     LDA ram_00A1
C - - - - - 0x014711 05:8701: 69 FF     ADC #$FF
C - - - - - 0x014713 05:8703: 85 A1     STA ram_00A1
C - - - - - 0x014715 05:8705: 85 FD     STA ram_scroll_X
C - - - - - 0x014717 05:8707: A5 60     LDA ram_0060
C - - - - - 0x014719 05:8709: 69 FF     ADC #$FF
C - - - - - 0x01471B 05:870B: 85 60     STA ram_0060
C - - - - - 0x01471D 05:870D: 29 01     AND #$01
C - - - - - 0x01471F 05:870F: 85 00     STA ram_0000
C - - - - - 0x014721 05:8711: A5 FF     LDA ram_for_2000
C - - - - - 0x014723 05:8713: 29 FC     AND #$FC
C - - - - - 0x014725 05:8715: 05 00     ORA ram_0000
C - - - - - 0x014727 05:8717: 85 FF     STA ram_for_2000
C - - - - - 0x014729 05:8719: AC 41 03  LDY ram_0341
C - - - - - 0x01472C 05:871C: A5 4A     LDA ram_004A
C - - - - - 0x01472E 05:871E: D0 1F     BNE bra_873F
C - - - - - 0x014730 05:8720: C8        INY
C - - - - - 0x014731 05:8721: B9 B6 87  LDA tbl_87B6,Y
C - - - - - 0x014734 05:8724: F0 12     BEQ bra_8738
C - - - - - 0x014736 05:8726: 30 08     BMI bra_8730
C - - - - - 0x014738 05:8728: C9 01     CMP #$01
C - - - - - 0x01473A 05:872A: F0 08     BEQ bra_8734
C - - - - - 0x01473C 05:872C: A9 02     LDA #$02
C - - - - - 0x01473E 05:872E: D0 0A     BNE bra_873A    ; jmp
bra_8730:
C - - - - - 0x014740 05:8730: A9 01     LDA #$01
C - - - - - 0x014742 05:8732: D0 06     BNE bra_873A    ; jmp
bra_8734:
C - - - - - 0x014744 05:8734: A9 FE     LDA #$FE
C - - - - - 0x014746 05:8736: D0 02     BNE bra_873A    ; jmp
bra_8738:
C - - - - - 0x014748 05:8738: A9 20     LDA #$20
bra_873A:
C - - - - - 0x01474A 05:873A: 85 4A     STA ram_004A
C - - - - - 0x01474C 05:873C: EE 41 03  INC ram_0341
bra_873F:
C - - - - - 0x01474F 05:873F: B9 B6 87  LDA tbl_87B6,Y
C - - - - - 0x014752 05:8742: 85 00     STA ram_0000
C - - - - - 0x014754 05:8744: C9 FF     CMP #$FF
C - - - - - 0x014756 05:8746: F0 60     BEQ bra_87A8
C - - - - - 0x014758 05:8748: 29 F0     AND #$F0
C - - - - - 0x01475A 05:874A: F0 2C     BEQ bra_8778
C - - - - - 0x01475C 05:874C: A5 00     LDA ram_0000
C - - - - - 0x01475E 05:874E: 29 F0     AND #$F0
C - - - - - 0x014760 05:8750: 4A        LSR
C - - - - - 0x014761 05:8751: 4A        LSR
C - - - - - 0x014762 05:8752: 4A        LSR
C - - - - - 0x014763 05:8753: A8        TAY
C - - - - - 0x014764 05:8754: B9 9E 88  LDA tbl_88A0 - $02,Y
C - - - - - 0x014767 05:8757: 85 06     STA ram_0006
C - - - - - 0x014769 05:8759: B9 9F 88  LDA tbl_88A0 - $01,Y
C - - - - - 0x01476C 05:875C: 85 07     STA ram_0007
C - - - - - 0x01476E 05:875E: A5 00     LDA ram_0000
C - - - - - 0x014770 05:8760: 29 0F     AND #$0F
C - - - - - 0x014772 05:8762: 0A        ASL
C - - - - - 0x014773 05:8763: A8        TAY
C - - - - - 0x014774 05:8764: B9 EA 87  LDA tbl_87EA_credits,Y
C - - - - - 0x014777 05:8767: 85 02     STA ram_0002
C - - - - - 0x014779 05:8769: B9 EB 87  LDA tbl_87EA_credits + $01,Y
C - - - - - 0x01477C 05:876C: 85 03     STA ram_0003
C - - - - - 0x01477E 05:876E: A9 06     LDA #con_DA9D_06
C - - - - - 0x014780 05:8770: 85 1F     STA ram_001F
                                       ;LDA #con_F3D6_06
C - - - - - 0x014782 05:8772: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x014785 05:8775: 4C A4 87  JMP loc_87A4
bra_8778:
C - - - - - 0x014788 05:8778: A4 00     LDY ram_0000
C - - - - - 0x01478A 05:877A: F0 28     BEQ bra_87A4
C - - - - - 0x01478C 05:877C: A9 80     LDA #$80
C - - - - - 0x01478E 05:877E: 88        DEY
C - - - - - 0x01478F 05:877F: F0 04     BEQ bra_8785
- - - - - - 0x014791 05:8781: A0 FF     LDY #$FF
- - - - - - 0x014793 05:8783: D0 02     BNE bra_8787    ; jmp
bra_8785:
C - - - - - 0x014795 05:8785: A0 00     LDY #$00
bra_8787:
C - - - - - 0x014797 05:8787: 18        CLC
C - - - - - 0x014798 05:8788: 65 A5     ADC ram_00A5
C - - - - - 0x01479A 05:878A: 85 A5     STA ram_00A5
C - - - - - 0x01479C 05:878C: 98        TYA
C - - - - - 0x01479D 05:878D: 65 A4     ADC ram_00A4
C - - - - - 0x01479F 05:878F: 85 A4     STA ram_00A4
C - - - - - 0x0147A1 05:8791: 85 50     STA ram_0050
C - - - - - 0x0147A3 05:8793: 98        TYA
C - - - - - 0x0147A4 05:8794: 65 A3     ADC ram_00A3
C - - - - - 0x0147A6 05:8796: 85 A3     STA ram_00A3
C - - - - - 0x0147A8 05:8798: 29 01     AND #$01
C - - - - - 0x0147AA 05:879A: 85 00     STA ram_0000
C - - - - - 0x0147AC 05:879C: A5 FF     LDA ram_for_2000
C - - - - - 0x0147AE 05:879E: 29 FC     AND #$FC
C - - - - - 0x0147B0 05:87A0: 05 00     ORA ram_0000
C - - - - - 0x0147B2 05:87A2: 85 52     STA ram_0052
bra_87A4:
loc_87A4:
C D 0 - - - 0x0147B4 05:87A4: C6 4A     DEC ram_004A
C - - - - - 0x0147B6 05:87A6: 18        CLC
C - - - - - 0x0147B7 05:87A7: 60        RTS
bra_87A8:
C - - - - - 0x0147B8 05:87A8: 38        SEC
C - - - - - 0x0147B9 05:87A9: 60        RTS



sub_87AA_set_2006_hi:
C - - - - - 0x0147BA 05:87AA: AD 02 20  LDA $2002
C - - - - - 0x0147BD 05:87AD: A9 00     LDA #$00
C - - - - - 0x0147BF 05:87AF: 8C 06 20  STY $2006
C - - - - - 0x0147C2 05:87B2: 8D 06 20  STA $2006
C - - - - - 0x0147C5 05:87B5: 60        RTS


; todo
tbl_87B6:
- - - - - - 0x0147C6 05:87B6: 00        .byte $00   ; 
- D 0 - - - 0x0147C7 05:87B7: 10        .byte $10   ; 
- D 0 - - - 0x0147C8 05:87B8: 33        .byte $33   ; 
- D 0 - - - 0x0147C9 05:87B9: 01        .byte $01   ; 
- D 0 - - - 0x0147CA 05:87BA: 01        .byte $01   ; 
- D 0 - - - 0x0147CB 05:87BB: 00        .byte $00   ; 
- D 0 - - - 0x0147CC 05:87BC: 20        .byte $20   ; 
- D 0 - - - 0x0147CD 05:87BD: 44        .byte $44   ; 
- D 0 - - - 0x0147CE 05:87BE: 01        .byte $01   ; 
- D 0 - - - 0x0147CF 05:87BF: 01        .byte $01   ; 
- D 0 - - - 0x0147D0 05:87C0: 00        .byte $00   ; 
- D 0 - - - 0x0147D1 05:87C1: 11        .byte $11   ; 
- D 0 - - - 0x0147D2 05:87C2: 35        .byte $35   ; 
- D 0 - - - 0x0147D3 05:87C3: 01        .byte $01   ; 
- D 0 - - - 0x0147D4 05:87C4: 01        .byte $01   ; 
- D 0 - - - 0x0147D5 05:87C5: 00        .byte $00   ; 
- D 0 - - - 0x0147D6 05:87C6: 21        .byte $21   ; 
- D 0 - - - 0x0147D7 05:87C7: 46        .byte $46   ; 
- D 0 - - - 0x0147D8 05:87C8: 01        .byte $01   ; 
- D 0 - - - 0x0147D9 05:87C9: 01        .byte $01   ; 
- D 0 - - - 0x0147DA 05:87CA: 00        .byte $00   ; 
- D 0 - - - 0x0147DB 05:87CB: 12        .byte $12   ; 
- D 0 - - - 0x0147DC 05:87CC: 37        .byte $37   ; 
- D 0 - - - 0x0147DD 05:87CD: 01        .byte $01   ; 
- D 0 - - - 0x0147DE 05:87CE: 01        .byte $01   ; 
- D 0 - - - 0x0147DF 05:87CF: 00        .byte $00   ; 
- D 0 - - - 0x0147E0 05:87D0: 22        .byte $22   ; 
- D 0 - - - 0x0147E1 05:87D1: 48        .byte $48   ; 
- D 0 - - - 0x0147E2 05:87D2: 01        .byte $01   ; 
- D 0 - - - 0x0147E3 05:87D3: 01        .byte $01   ; 
- D 0 - - - 0x0147E4 05:87D4: 00        .byte $00   ; 
- D 0 - - - 0x0147E5 05:87D5: 12        .byte $12   ; 
- D 0 - - - 0x0147E6 05:87D6: 39        .byte $39   ; 
- D 0 - - - 0x0147E7 05:87D7: 01        .byte $01   ; 
- D 0 - - - 0x0147E8 05:87D8: 01        .byte $01   ; 
- D 0 - - - 0x0147E9 05:87D9: 00        .byte $00   ; 
- D 0 - - - 0x0147EA 05:87DA: 2D        .byte $2D   ; 
- D 0 - - - 0x0147EB 05:87DB: 4B        .byte $4B   ; 
- D 0 - - - 0x0147EC 05:87DC: 01        .byte $01   ; 
- D 0 - - - 0x0147ED 05:87DD: 01        .byte $01   ; 
- D 0 - - - 0x0147EE 05:87DE: 00        .byte $00   ; 
- D 0 - - - 0x0147EF 05:87DF: 1D        .byte $1D   ; 
- D 0 - - - 0x0147F0 05:87E0: 3C        .byte $3C   ; 
- D 0 - - - 0x0147F1 05:87E1: 01        .byte $01   ; 
- D 0 - - - 0x0147F2 05:87E2: 01        .byte $01   ; 
- D 0 - - - 0x0147F3 05:87E3: 00        .byte $00   ; 
- D 0 - - - 0x0147F4 05:87E4: 2A        .byte $2A   ; 
- D 0 - - - 0x0147F5 05:87E5: 4A        .byte $4A   ; 
- D 0 - - - 0x0147F6 05:87E6: 01        .byte $01   ; 
- D 0 - - - 0x0147F7 05:87E7: 01        .byte $01   ; 
- D 0 - - - 0x0147F8 05:87E8: 00        .byte $00   ; 
- D 0 - - - 0x0147F9 05:87E9: FF        .byte $FF   ; 



tbl_87EA_credits:
- D 0 - - - 0x0147FA 05:87EA: 06 88     .word _off002_8806_00_program_
- D 0 - - - 0x0147FC 05:87EC: 11 88     .word _off002_8811_01_character
- D 0 - - - 0x0147FE 05:87EE: 1C 88     .word _off002_881C_02_sound
- D 0 - - - 0x014800 05:87F0: 32 88     .word _off002_8832_03_takemoto
- D 0 - - - 0x014802 05:87F2: 3D 88     .word _off002_883D_04_ozawa
- D 0 - - - 0x014804 05:87F4: 48 88     .word _off002_8848_05_shigemoto
- D 0 - - - 0x014806 05:87F6: 53 88     .word _off002_8853_06_horie
- D 0 - - - 0x014808 05:87F8: 5E 88     .word _off002_885E_07_matsubara
- D 0 - - - 0x01480A 05:87FA: 69 88     .word _off002_8869_08_manno
- D 0 - - - 0x01480C 05:87FC: 74 88     .word _off002_8874_09_tomita
- D 0 - - - 0x01480E 05:87FE: 95 88     .word _off002_8895_0A___clear
- D 0 - - - 0x014810 05:8800: 7F 88     .word _off002_887F_0B_funahasi
- D 0 - - - 0x014812 05:8802: 8A 88     .word _off002_888A_0C_chuma
- D 0 - - - 0x014814 05:8804: 27 88     .word _off002_8827_0D_sd_assist



_off002_8806_00_program_:
- D 0 - I - 0x014816 05:8806: 09        .byte $09, $01, $20, $22, $1F, $17, $22, $11, $1D, $00, $00   ; 



_off002_8811_01_character:
- D 0 - I - 0x014821 05:8811: 09        .byte $09, $01, $13, $18, $11, $22, $11, $13, $24, $15, $22   ; 



_off002_881C_02_sound:
- D 0 - I - 0x01482C 05:881C: 09        .byte $09, $01, $23, $1F, $25, $1E, $14, $00, $00, $00, $00   ; 



_off002_8827_0D_sd_assist:
- D 0 - I - 0x014837 05:8827: 09        .byte $09, $01, $23, $14, $00, $11, $23, $23, $19, $23, $24   ; 



_off002_8832_03_takemoto:
- D 0 - I - 0x014842 05:8832: 09        .byte $09, $01, $24, $11, $1B, $15, $1D, $1F, $24, $1F, $00   ; 



_off002_883D_04_ozawa:
- D 0 - I - 0x01484D 05:883D: 09        .byte $09, $01, $1F, $2A, $11, $27, $11, $00, $00, $00, $00   ; 



_off002_8848_05_shigemoto:
- D 0 - I - 0x014858 05:8848: 09        .byte $09, $01, $23, $18, $19, $17, $15, $1D, $1F, $24, $1F   ; 



_off002_8853_06_horie:
- D 0 - I - 0x014863 05:8853: 09        .byte $09, $01, $18, $1F, $22, $19, $15, $00, $00, $00, $00   ; 



_off002_885E_07_matsubara:
- D 0 - I - 0x01486E 05:885E: 09        .byte $09, $01, $1D, $11, $24, $23, $25, $12, $11, $22, $11   ; 



_off002_8869_08_manno:
- D 0 - I - 0x014879 05:8869: 09        .byte $09, $01, $1D, $11, $1E, $1E, $1F, $00, $00, $00, $00   ; 



_off002_8874_09_tomita:
- D 0 - I - 0x014884 05:8874: 09        .byte $09, $01, $24, $1F, $1D, $19, $24, $11, $00, $00, $00   ; 



_off002_887F_0B_funahasi:
- D 0 - I - 0x01488F 05:887F: 09        .byte $09, $01, $16, $25, $1E, $11, $18, $11, $23, $19, $00   ; 



_off002_888A_0C_chuma:
- D 0 - I - 0x01489A 05:888A: 09        .byte $09, $01, $13, $18, $25, $1D, $11, $00, $00, $00, $00   ; 



_off002_8895_0A___clear:
- D 0 - I - 0x0148A5 05:8895: 09        .byte $09, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



tbl_88A0:
- D 0 - - - 0x0148B0 05:88A0: 04        .byte $04   ; 00 
- D 0 - - - 0x0148B1 05:88A1: 2F        .byte $2F   ; 01 
- D 0 - - - 0x0148B2 05:88A2: 04        .byte $04   ; 02 
- D 0 - - - 0x0148B3 05:88A3: 23        .byte $23   ; 03 
- D 0 - - - 0x0148B4 05:88A4: 48        .byte $48   ; 04 
- D 0 - - - 0x0148B5 05:88A5: 2F        .byte $2F   ; 05 
- D 0 - - - 0x0148B6 05:88A6: 48        .byte $48   ; 06 
- D 0 - - - 0x0148B7 05:88A7: 23        .byte $23   ; 07 



ofs_020_88A8_46_konami_after_credits:
C - - J - - 0x0148B8 05:88A8: A9 20     LDA #con_chr_pair + $20
C - - - - - 0x0148BA 05:88AA: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
C - - - - - 0x0148BD 05:88AD: A9 32     LDA #con_D280_konami_1
C - - - - - 0x0148BF 05:88AF: 20 3C D2  JSR sub_0x01D24C_draw_text
C - - - - - 0x0148C2 05:88B2: A9 41     LDA #con_D280_konami_2
C - - - - - 0x0148C4 05:88B4: 20 3C D2  JSR sub_0x01D24C_draw_text
C - - - - - 0x0148C7 05:88B7: A9 17     LDA #$17
C - - - - - 0x0148C9 05:88B9: 20 85 82  JSR sub_8285    ; bzk optimize, jsr to 0x014293
C - - - - - 0x0148CC 05:88BC: 4C 4F 82  JMP loc_824F



ofs_020_88BF_36:
C - - J - - 0x0148CF 05:88BF: A9 00     LDA #$00
C - - - - - 0x0148D1 05:88C1: 8D 6E 03  STA ram_036E
C - - - - - 0x0148D4 05:88C4: 38        SEC
C - - - - - 0x0148D5 05:88C5: 60        RTS



sub_88C6:
C - - - - - 0x0148D6 05:88C6: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x0148D9 05:88C9: A5 39     LDA ram_buffer_index_2
C - - - - - 0x0148DB 05:88CB: C9 20     CMP #$20
C - - - - - 0x0148DD 05:88CD: B0 73     BCS bra_8942
C - - - - - 0x0148DF 05:88CF: A9 28     LDA #$28
C - - - - - 0x0148E1 05:88D1: 85 02     STA ram_0002
C - - - - - 0x0148E3 05:88D3: A9 99     LDA #$99
C - - - - - 0x0148E5 05:88D5: 20 0E FC  JSR sub_0x01FC1E
C - - - - - 0x0148E8 05:88D8: 38        SEC
C - - - - - 0x0148E9 05:88D9: 60        RTS



ofs_020_88DA_47:
C - - J - - 0x0148EA 05:88DA: A9 04     LDA #$04
C - - - - - 0x0148EC 05:88DC: D0 06     BNE bra_88E4    ; jmp



ofs_020_88DE_38:
C - - J - - 0x0148EE 05:88DE: A9 05     LDA #$05
C - - - - - 0x0148F0 05:88E0: D0 02     BNE bra_88E4    ; jmp



ofs_020_88E2_20:
C - - J - - 0x0148F2 05:88E2: A9 01     LDA #$01
bra_88E4:
C - - - - - 0x0148F4 05:88E4: 8D 41 03  STA ram_0341
C - - - - - 0x0148F7 05:88E7: A9 00     LDA #$00
C - - - - - 0x0148F9 05:88E9: 85 3B     STA ram_003B
C - - - - - 0x0148FB 05:88EB: A2 01     LDX #$01
bra_88ED_loop:
C - - - - - 0x0148FD 05:88ED: A9 00     LDA #$00
C - - - - - 0x0148FF 05:88EF: 20 4D 8A  JSR sub_8A4D
C - - - - - 0x014902 05:88F2: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x014905 05:88F5: D0 0A     BNE bra_8901
C - - - - - 0x014907 05:88F7: 8A        TXA
C - - - - - 0x014908 05:88F8: 18        CLC
C - - - - - 0x014909 05:88F9: 69 01     ADC #$01
C - - - - - 0x01490B 05:88FB: 05 3B     ORA ram_003B
C - - - - - 0x01490D 05:88FD: 85 3B     STA ram_003B
C - - - - - 0x01490F 05:88FF: D0 1B     BNE bra_891C    ; jmp always?
bra_8901:
C - - - - - 0x014911 05:8901: A9 00     LDA #$00
C - - - - - 0x014913 05:8903: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x014916 05:8906: AD 41 03  LDA ram_0341
C - - - - - 0x014919 05:8909: C9 04     CMP #$04
C - - - - - 0x01491B 05:890B: B0 02     BCS bra_890F
C - - - - - 0x01491D 05:890D: A5 75     LDA ram_stage
bra_890F:
C - - - - - 0x01491F 05:890F: 0A        ASL
C - - - - - 0x014920 05:8910: A8        TAY
C - - - - - 0x014921 05:8911: B9 46 89  LDA tbl_8946,Y
C - - - - - 0x014924 05:8914: 85 00     STA ram_0000
C - - - - - 0x014926 05:8916: B9 47 89  LDA tbl_8946 + $01,Y
C - - - - - 0x014929 05:8919: 20 08 D7  JSR sub_0x01D718_execute_indirect_jump_0000
bra_891C:
C - - - - - 0x01492C 05:891C: CA        DEX
C - - - - - 0x01492D 05:891D: 10 CE     BPL bra_88ED_loop
C - - - - - 0x01492F 05:891F: A5 3B     LDA ram_003B
C - - - - - 0x014931 05:8921: 05 74     ORA ram_0074
C - - - - - 0x014933 05:8923: C9 03     CMP #$03
C - - - - - 0x014935 05:8925: F0 1D     BEQ bra_8944
C - - - - - 0x014937 05:8927: A5 75     LDA ram_stage
C - - - - - 0x014939 05:8929: D0 08     BNE bra_8933
C - - - - - 0x01493B 05:892B: AD 1A 06  LDA ram_obj_animation_lo
C - - - - - 0x01493E 05:892E: 0D 1B 06  ORA ram_obj_animation_lo + $01
C - - - - - 0x014941 05:8931: F0 11     BEQ bra_8944
bra_8933:
C - - - - - 0x014943 05:8933: A9 23     LDA #con_F3D6_23
C - - - - - 0x014945 05:8935: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x014948 05:8938: A9 14     LDA #con_F3D6_14
C - - - - - 0x01494A 05:893A: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01494D 05:893D: A9 15     LDA #con_F3D6_15
C - - - - - 0x01494F 05:893F: 20 B3 F3  JSR sub_0x01F3C3
bra_8942:
C - - - - - 0x014952 05:8942: 18        CLC
C - - - - - 0x014953 05:8943: 60        RTS
bra_8944:
C - - - - - 0x014954 05:8944: 38        SEC
C - - - - - 0x014955 05:8945: 60        RTS



tbl_8946:
- D 0 - - - 0x014956 05:8946: 52 89     .word ofs_021_8952_00
- D 0 - - - 0x014958 05:8948: FD 8B     .word ofs_021_8BFD_01
- D 0 - - - 0x01495A 05:894A: 07 8A     .word ofs_021_8A07_02
- D 0 - - - 0x01495C 05:894C: 52 8A     .word ofs_021_8A52_03
- D 0 - - - 0x01495E 05:894E: 2D 8A     .word ofs_021_8A2D_04
- D 0 - - - 0x014960 05:8950: C5 8A     .word ofs_021_8AC5_05



ofs_021_8952_00:
C - - J - - 0x014962 05:8952: 20 05 8C  JSR sub_8C05
C - - - - - 0x014965 05:8955: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x014968 05:8958: C9 40     CMP #$40
C - - - - - 0x01496A 05:895A: B0 0D     BCS bra_8969
- - - - - - 0x01496C 05:895C: A0 0E     LDY #$0E
- - - - - - 0x01496E 05:895E: 20 D2 8B  JSR sub_8BD2
- - - - - - 0x014971 05:8961: A5 09     LDA ram_0009
- - - - - - 0x014973 05:8963: 10 04     BPL bra_8969
bra_8965:
- - - - - - 0x014975 05:8965: A9 02     LDA #$02
- - - - - - 0x014977 05:8967: D0 19     BNE bra_8982    ; jmp
bra_8969:
C - - - - - 0x014979 05:8969: BD 6E 03  LDA ram_036E,X
C - - - - - 0x01497C 05:896C: D0 07     BNE bra_8975
C - - - - - 0x01497E 05:896E: A0 0A     LDY #$0A
C - - - - - 0x014980 05:8970: 20 D2 8B  JSR sub_8BD2
C - - - - - 0x014983 05:8973: 90 22     BCC bra_8997
bra_8975:
C - - - - - 0x014985 05:8975: BC 6E 03  LDY ram_036E,X
C - - - - - 0x014988 05:8978: C0 02     CPY #$02
C - - - - - 0x01498A 05:897A: B0 0B     BCS bra_8987
C - - - - - 0x01498C 05:897C: B9 9D 8B  LDA tbl_8B9D,Y
C - - - - - 0x01498F 05:897F: FE 6E 03  INC ram_036E,X
bra_8982:
C - - - - - 0x014992 05:8982: 20 4D 8A  JSR sub_8A4D
C - - - - - 0x014995 05:8985: D0 52     BNE bra_89D9
bra_8987:
C - - - - - 0x014997 05:8987: A0 00     LDY #$00
C - - - - - 0x014999 05:8989: 20 D2 8B  JSR sub_8BD2
C - - - - - 0x01499C 05:898C: 90 0D     BCC bra_899B
C - - - - - 0x01499E 05:898E: 20 FD 8B  JSR sub_8BFD
C - - - - - 0x0149A1 05:8991: 20 C9 8B  JSR sub_8BC9
C - - - - - 0x0149A4 05:8994: 4C 9B 89  JMP loc_899B
bra_8997:
C - - - - - 0x0149A7 05:8997: A5 09     LDA ram_0009
C - - - - - 0x0149A9 05:8999: 30 CA     BMI bra_8965
bra_899B:
loc_899B:
C D 0 - - - 0x0149AB 05:899B: A9 03     LDA #$03
loc_899D:
C D 0 - - - 0x0149AD 05:899D: A8        TAY
C - - - - - 0x0149AE 05:899E: B9 FE 89  LDA tbl_89FE,Y
C - - - - - 0x0149B1 05:89A1: 85 00     STA ram_0000
C - - - - - 0x0149B3 05:89A3: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x0149B6 05:89A6: 29 40     AND #$40
C - - - - - 0x0149B8 05:89A8: F0 09     BEQ bra_89B3
C - - - - - 0x0149BA 05:89AA: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x0149BD 05:89AD: 29 80     AND #$80
C - - - - - 0x0149BF 05:89AF: F0 18     BEQ bra_89C9
C - - - - - 0x0149C1 05:89B1: D0 22     BNE bra_89D5    ; jmp
bra_89B3:
C - - - - - 0x0149C3 05:89B3: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x0149C6 05:89B6: 29 02     AND #$02
C - - - - - 0x0149C8 05:89B8: F0 1B     BEQ bra_89D5
- - - - - - 0x0149CA 05:89BA: B5 4A     LDA ram_004A,X
- - - - - - 0x0149CC 05:89BC: F0 05     BEQ bra_89C3
- - - - - - 0x0149CE 05:89BE: D6 4A     DEC ram_004A,X
- - - - - - 0x0149D0 05:89C0: 4C D5 89  JMP loc_89D5
bra_89C3:
- - - - - - 0x0149D3 05:89C3: A9 80     LDA #con_btn_A
- - - - - - 0x0149D5 05:89C5: 05 00     ORA ram_0000
- - - - - - 0x0149D7 05:89C7: 95 40     STA ram_btn_press_1,X
bra_89C9:
C - - - - - 0x0149D9 05:89C9: A9 02     LDA #$02
C - - - - - 0x0149DB 05:89CB: 95 4A     STA ram_004A,X
C - - - - - 0x0149DD 05:89CD: A9 80     LDA #con_btn_A
C - - - - - 0x0149DF 05:89CF: 05 00     ORA ram_0000
C - - - - - 0x0149E1 05:89D1: 95 42     STA ram_btn_hold_1,X
C - - - - - 0x0149E3 05:89D3: D0 04     BNE bra_89D9
bra_89D5:
loc_89D5:
C - - - - - 0x0149E5 05:89D5: A5 00     LDA ram_0000
C - - - - - 0x0149E7 05:89D7: 95 42     STA ram_btn_hold_1,X
bra_89D9:
sub_89D9:
C - - - - - 0x0149E9 05:89D9: A9 12     LDA #con_F3D6_12
C - - - - - 0x0149EB 05:89DB: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0149EE 05:89DE: A9 13     LDA #con_F3D6_13
C - - - - - 0x0149F0 05:89E0: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0149F3 05:89E3: A9 16     LDA #con_F3D6_16
C - - - - - 0x0149F5 05:89E5: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0149F8 05:89E8: 86 3A     STX ram_003A
C - - - - - 0x0149FA 05:89EA: A9 17     LDA #con_F3D6_17
C - - - - - 0x0149FC 05:89EC: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0149FF 05:89EF: A6 3A     LDX ram_003A
C - - - - - 0x014A01 05:89F1: D0 5E     BNE bra_8A51_RTS
C - - - - - 0x014A03 05:89F3: A5 23     LDA ram_0023
C - - - - - 0x014A05 05:89F5: 29 0F     AND #$0F
C - - - - - 0x014A07 05:89F7: D0 58     BNE bra_8A51_RTS
C - - - - - 0x014A09 05:89F9: A9 04     LDA #con_music_04
C - - - - - 0x014A0B 05:89FB: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



tbl_89FE:
- D 0 - - - 0x014A0E 05:89FE: 00        .byte $00   ; 00 
- - - - - - 0x014A0F 05:89FF: 08        .byte $08   ; 01 
- - - - - - 0x014A10 05:8A00: 09        .byte $09   ; 02 
- D 0 - - - 0x014A11 05:8A01: 01        .byte $01   ; 03 
- - - - - - 0x014A12 05:8A02: 05        .byte $05   ; 04 
- D 0 - - - 0x014A13 05:8A03: 04        .byte $04   ; 05 
- - - - - - 0x014A14 05:8A04: 06        .byte $06   ; 06 
- D 0 - - - 0x014A15 05:8A05: 02        .byte $02   ; 07 
- - - - - - 0x014A16 05:8A06: 0A        .byte $0A   ; 08 



ofs_021_8A07_02:
C - - J - - 0x014A17 05:8A07: 20 05 8C  JSR sub_8C05
C - - - - - 0x014A1A 05:8A0A: A0 02     LDY #$02
C - - - - - 0x014A1C 05:8A0C: 20 D2 8B  JSR sub_8BD2
C - - - - - 0x014A1F 05:8A0F: B0 11     BCS bra_8A22
C - - - - - 0x014A21 05:8A11: A5 09     LDA ram_0009
C - - - - - 0x014A23 05:8A13: D0 08     BNE bra_8A1D
- - - - - - 0x014A25 05:8A15: A5 08     LDA ram_0008
- - - - - - 0x014A27 05:8A17: 30 04     BMI bra_8A1D
- - - - - - 0x014A29 05:8A19: A9 03     LDA #$03
- - - - - - 0x014A2B 05:8A1B: D0 02     BNE bra_8A1F    ; jmp
bra_8A1D:
C - - - - - 0x014A2D 05:8A1D: A9 07     LDA #$07
bra_8A1F:
C - - - - - 0x014A2F 05:8A1F: 4C 9D 89  JMP loc_899D
bra_8A22:
C - - - - - 0x014A32 05:8A22: A9 00     LDA #$00
C - - - - - 0x014A34 05:8A24: 20 4D 8A  JSR sub_8A4D
C - - - - - 0x014A37 05:8A27: 20 D9 89  JSR sub_89D9
C - - - - - 0x014A3A 05:8A2A: 4C FD 8B  JMP loc_8BFD



ofs_021_8A2D_04:
C - - J - - 0x014A3D 05:8A2D: 20 14 8C  JSR sub_8C14
C - - - - - 0x014A40 05:8A30: A0 04     LDY #$04
C - - - - - 0x014A42 05:8A32: 20 D2 8B  JSR sub_8BD2
C - - - - - 0x014A45 05:8A35: 90 0D     BCC bra_8A44
C - - - - - 0x014A47 05:8A37: 20 FD 8B  JSR sub_8BFD
C - - - - - 0x014A4A 05:8A3A: E8        INX
C - - - - - 0x014A4B 05:8A3B: 8A        TXA
C - - - - - 0x014A4C 05:8A3C: 05 74     ORA ram_0074
C - - - - - 0x014A4E 05:8A3E: 85 74     STA ram_0074
C - - - - - 0x014A50 05:8A40: CA        DEX
C - - - - - 0x014A51 05:8A41: 4C C9 8B  JMP loc_8BC9
bra_8A44:
C - - - - - 0x014A54 05:8A44: A9 80     LDA #con_btn_A
C - - - - - 0x014A56 05:8A46: 20 4D 8A  JSR sub_8A4D
C - - - - - 0x014A59 05:8A49: D0 8E     BNE bra_89D9    ; jmp


; bzk garbage
- - - - - - 0x014A5B 05:8A4B: A9 00     LDA #$00



sub_8A4D:
C - - - - - 0x014A5D 05:8A4D: 95 42     STA ram_btn_hold_1,X
C - - - - - 0x014A5F 05:8A4F: 95 40     STA ram_btn_press_1,X
bra_8A51_RTS:
C - - - - - 0x014A61 05:8A51: 60        RTS



ofs_021_8A52_03:
C - - J - - 0x014A62 05:8A52: 20 14 8C  JSR sub_8C14
C - - - - - 0x014A65 05:8A55: A0 08     LDY #$08
C - - - - - 0x014A67 05:8A57: 20 D2 8B  JSR sub_8BD2
C - - - - - 0x014A6A 05:8A5A: B0 0C     BCS bra_8A68
C - - - - - 0x014A6C 05:8A5C: A0 05     LDY #$05
C - - - - - 0x014A6E 05:8A5E: A5 09     LDA ram_0009
C - - - - - 0x014A70 05:8A60: 10 02     BPL bra_8A64
- - - - - - 0x014A72 05:8A62: A0 01     LDY #$01
bra_8A64:
C - - - - - 0x014A74 05:8A64: 98        TYA
C - - - - - 0x014A75 05:8A65: 4C 9D 89  JMP loc_899D
bra_8A68:
C - - - - - 0x014A78 05:8A68: BD 6E 03  LDA ram_036E,X
C - - - - - 0x014A7B 05:8A6B: 30 0F     BMI bra_8A7C
C - - - - - 0x014A7D 05:8A6D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x014A80 05:8A70: C9 C0     CMP #$C0
C - - - - - 0x014A82 05:8A72: B0 36     BCS bra_8AAA
C - - - - - 0x014A84 05:8A74: A9 80     LDA #$80
C - - - - - 0x014A86 05:8A76: 1D 6E 03  ORA ram_036E,X
C - - - - - 0x014A89 05:8A79: 9D 6E 03  STA ram_036E,X
bra_8A7C:
C - - - - - 0x014A8C 05:8A7C: 20 05 8C  JSR sub_8C05
C - - - - - 0x014A8F 05:8A7F: A0 06     LDY #$06
C - - - - - 0x014A91 05:8A81: BD 6E 03  LDA ram_036E,X
C - - - - - 0x014A94 05:8A84: 29 7F     AND #$7F
C - - - - - 0x014A96 05:8A86: F0 02     BEQ bra_8A8A
C - - - - - 0x014A98 05:8A88: A0 0C     LDY #$0C
bra_8A8A:
C - - - - - 0x014A9A 05:8A8A: 20 D2 8B  JSR sub_8BD2
C - - - - - 0x014A9D 05:8A8D: 90 15     BCC bra_8AA4
C - - - - - 0x014A9F 05:8A8F: BD 6E 03  LDA ram_036E,X
C - - - - - 0x014AA2 05:8A92: 29 7F     AND #$7F
C - - - - - 0x014AA4 05:8A94: D0 1F     BNE bra_8AB5
C - - - - - 0x014AA6 05:8A96: 86 53     STX ram_0053
C - - - - - 0x014AA8 05:8A98: 20 C6 88  JSR sub_88C6
C - - - - - 0x014AAB 05:8A9B: 90 03     BCC bra_8AA0
C - - - - - 0x014AAD 05:8A9D: FE 6E 03  INC ram_036E,X
bra_8AA0:
C - - - - - 0x014AB0 05:8AA0: A0 00     LDY #$00
C - - - - - 0x014AB2 05:8AA2: F0 C0     BEQ bra_8A64    ; jmp
bra_8AA4:
C - - - - - 0x014AB4 05:8AA4: A0 03     LDY #$03
C - - - - - 0x014AB6 05:8AA6: A5 09     LDA ram_0009
C - - - - - 0x014AB8 05:8AA8: 10 BA     BPL bra_8A64
bra_8AAA:
- - - - - - 0x014ABA 05:8AAA: BD 6E 03  LDA ram_036E,X
- - - - - - 0x014ABD 05:8AAD: 29 7F     AND #$7F
- - - - - - 0x014ABF 05:8AAF: D0 04     BNE bra_8AB5
- - - - - - 0x014AC1 05:8AB1: A0 07     LDY #$07
- - - - - - 0x014AC3 05:8AB3: D0 AF     BNE bra_8A64    ; jmp
bra_8AB5:
C - - - - - 0x014AC5 05:8AB5: A9 00     LDA #$00
C - - - - - 0x014AC7 05:8AB7: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x014ACA 05:8ABA: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x014ACD 05:8ABD: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x014AD0 05:8AC0: 95 42     STA ram_btn_hold_1,X
C - - - - - 0x014AD2 05:8AC2: 4C FD 8B  JMP loc_8BFD



ofs_021_8AC5_05:
C - - J - - 0x014AD5 05:8AC5: A9 3F     LDA #con_chr_bank + $3F
C - - - - - 0x014AD7 05:8AC7: 85 7C     STA ram_chr_bank + $05
C - - - - - 0x014AD9 05:8AC9: A9 00     LDA #$00
C - - - - - 0x014ADB 05:8ACB: 95 42     STA ram_btn_hold_1,X
C - - - - - 0x014ADD 05:8ACD: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x014AE0 05:8AD0: D0 03     BNE bra_8AD5
bra_8AD2:
C - - - - - 0x014AE2 05:8AD2: 4C FD 8B  JMP loc_8BFD
bra_8AD5:
C - - - - - 0x014AE5 05:8AD5: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x014AE8 05:8AD8: D0 30     BNE bra_8B0A
C - - - - - 0x014AEA 05:8ADA: 8A        TXA
C - - - - - 0x014AEB 05:8ADB: 0A        ASL
C - - - - - 0x014AEC 05:8ADC: A8        TAY
C - - - - - 0x014AED 05:8ADD: B9 83 8B  LDA tbl_8B83,Y
C - - - - - 0x014AF0 05:8AE0: 85 00     STA ram_0000
C - - - - - 0x014AF2 05:8AE2: B9 84 8B  LDA tbl_8B83 + $01,Y
C - - - - - 0x014AF5 05:8AE5: 85 01     STA ram_0001
C - - - - - 0x014AF7 05:8AE7: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x014AFA 05:8AEA: 0A        ASL
C - - - - - 0x014AFB 05:8AEB: A8        TAY
C - - - - - 0x014AFC 05:8AEC: B1 00     LDA (ram_0000),Y
C - - - - - 0x014AFE 05:8AEE: C9 FF     CMP #$FF
C - - - - - 0x014B00 05:8AF0: F0 E0     BEQ bra_8AD2
C - - - - - 0x014B02 05:8AF2: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x014B05 05:8AF5: C8        INY
C - - - - - 0x014B06 05:8AF6: B1 00     LDA (ram_0000),Y
C - - - - - 0x014B08 05:8AF8: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x014B0B 05:8AFB: FE B4 07  INC ram_07B4_unk,X
C - - - - - 0x014B0E 05:8AFE: A9 04     LDA #$04
C - - - - - 0x014B10 05:8B00: DD B4 07  CMP ram_07B4_unk,X
C - - - - - 0x014B13 05:8B03: D0 05     BNE bra_8B0A
C - - - - - 0x014B15 05:8B05: A9 58     LDA #con_music_58
C - - - - - 0x014B17 05:8B07: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_8B0A:
C - - - - - 0x014B1A 05:8B0A: DE BE 07  DEC ram_07BE_unk,X
C - - - - - 0x014B1D 05:8B0D: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x014B20 05:8B10: 29 0F     AND #$0F
C - - - - - 0x014B22 05:8B12: 0A        ASL
C - - - - - 0x014B23 05:8B13: 0A        ASL
C - - - - - 0x014B24 05:8B14: A8        TAY
C - - - - - 0x014B25 05:8B15: B9 9F 8B  LDA tbl_8B9F,Y
C - - - - - 0x014B28 05:8B18: 18        CLC
C - - - - - 0x014B29 05:8B19: 7D C8 06  ADC ram_obj_spd_X,X
C - - - - - 0x014B2C 05:8B1C: 9D C8 06  STA ram_obj_spd_X,X
C - - - - - 0x014B2F 05:8B1F: B9 A0 8B  LDA tbl_8B9F + $01,Y
C - - - - - 0x014B32 05:8B22: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x014B35 05:8B25: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x014B38 05:8B28: B9 A1 8B  LDA tbl_8B9F + $02,Y
C - - - - - 0x014B3B 05:8B2B: 18        CLC
C - - - - - 0x014B3C 05:8B2C: 7D DE 06  ADC ram_obj_spd_Y,X
C - - - - - 0x014B3F 05:8B2F: 9D DE 06  STA ram_obj_spd_Y,X
C - - - - - 0x014B42 05:8B32: B9 A2 8B  LDA tbl_8B9F + $03,Y
C - - - - - 0x014B45 05:8B35: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x014B48 05:8B38: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x014B4B 05:8B3B: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x014B4E 05:8B3E: 29 F0     AND #$F0
C - - - - - 0x014B50 05:8B40: D0 16     BNE bra_8B58
C - - - - - 0x014B52 05:8B42: A9 00     LDA #$00
C - - - - - 0x014B54 05:8B44: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x014B57 05:8B47: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x014B5A 05:8B4A: A9 04     LDA #$04
C - - - - - 0x014B5C 05:8B4C: 85 02     STA ram_0002
C - - - - - 0x014B5E 05:8B4E: A9 18     LDA #con_F3D6_18
C - - - - - 0x014B60 05:8B50: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x014B63 05:8B53: A9 16     LDA #con_F3D6_16
C - - - - - 0x014B65 05:8B55: 4C B3 F3  JMP loc_0x01F3C3
bra_8B58:
C - - - - - 0x014B68 05:8B58: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x014B6B 05:8B5B: 29 F0     AND #$F0
C - - - - - 0x014B6D 05:8B5D: 38        SEC
C - - - - - 0x014B6E 05:8B5E: E9 10     SBC #$10
C - - - - - 0x014B70 05:8B60: 4A        LSR
C - - - - - 0x014B71 05:8B61: 4A        LSR
C - - - - - 0x014B72 05:8B62: 4A        LSR
C - - - - - 0x014B73 05:8B63: A8        TAY
C - - - - - 0x014B74 05:8B64: B9 C3 8B  LDA tbl_8BC3,Y
C - - - - - 0x014B77 05:8B67: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x014B7A 05:8B6A: B9 C4 8B  LDA tbl_8BC3 + $01,Y
C - - - - - 0x014B7D 05:8B6D: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x014B80 05:8B70: A9 3F     LDA #con_chr_bank + $3F
C - - - - - 0x014B82 05:8B72: 85 7C     STA ram_chr_bank + $05
C - - - - - 0x014B84 05:8B74: A5 23     LDA ram_0023
C - - - - - 0x014B86 05:8B76: 29 04     AND #$04
C - - - - - 0x014B88 05:8B78: F0 05     BEQ bra_8B7F
C - - - - - 0x014B8A 05:8B7A: DE 68 06  DEC ram_obj_pos_Y,X
C - - - - - 0x014B8D 05:8B7D: D0 03     BNE bra_8B82_RTS
bra_8B7F:
C - - - - - 0x014B8F 05:8B7F: FE 68 06  INC ram_obj_pos_Y,X
bra_8B82_RTS:
C - - - - - 0x014B92 05:8B82: 60        RTS



tbl_8B83:
- D 0 - - - 0x014B93 05:8B83: 87 8B     .word off_8B87_00
- - - - - - 0x014B95 05:8B85: 92 8B     .word off_8B92_01



off_8B87_00:
- D 0 - I - 0x014B97 05:8B87: 02        .byte $02   ; 
- D 0 - I - 0x014B98 05:8B88: 10        .byte $10   ; 
- D 0 - I - 0x014B99 05:8B89: 03        .byte $03   ; 
- D 0 - I - 0x014B9A 05:8B8A: 30        .byte $30   ; 
- D 0 - I - 0x014B9B 05:8B8B: 13        .byte $13   ; 
- D 0 - I - 0x014B9C 05:8B8C: 04        .byte $04   ; 
- D 0 - I - 0x014B9D 05:8B8D: 23        .byte $23   ; 
- D 0 - I - 0x014B9E 05:8B8E: 20        .byte $20   ; 
- D 0 - I - 0x014B9F 05:8B8F: 33        .byte $33   ; 
- D 0 - I - 0x014BA0 05:8B90: 20        .byte $20   ; 
- D 0 - I - 0x014BA1 05:8B91: FF        .byte $FF   ; 

off_8B92_01:
- - - - - - 0x014BA2 05:8B92: 02        .byte $02   ; 
- - - - - - 0x014BA3 05:8B93: 20        .byte $20   ; 
- - - - - - 0x014BA4 05:8B94: 03        .byte $03   ; 
- - - - - - 0x014BA5 05:8B95: 10        .byte $10   ; 
- - - - - - 0x014BA6 05:8B96: 13        .byte $13   ; 
- - - - - - 0x014BA7 05:8B97: 04        .byte $04   ; 
- - - - - - 0x014BA8 05:8B98: 23        .byte $23   ; 
- - - - - - 0x014BA9 05:8B99: 20        .byte $20   ; 
- - - - - - 0x014BAA 05:8B9A: 33        .byte $33   ; 
- - - - - - 0x014BAB 05:8B9B: 20        .byte $20   ; 
- - - - - - 0x014BAC 05:8B9C: FF        .byte $FF   ; 



tbl_8B9D:
; bzk optimize, same bytes
- D 0 - - - 0x014BAD 05:8B9D: 01        .byte $01   ; 00 
- D 0 - - - 0x014BAE 05:8B9E: 01        .byte $01   ; 01 



tbl_8B9F:
- - - - - - 0x014BAF 05:8B9F: 00        .byte $00, $00, $00, $00   ; 00 
- - - - - - 0x014BB3 05:8BA3: 00        .byte $00, $00, $00, $FF   ; 01 
- D 0 - - - 0x014BB7 05:8BA7: C0        .byte $C0, $00, $40, $FF   ; 02 
- D 0 - - - 0x014BBB 05:8BAB: 00        .byte $00, $01, $00, $00   ; 03 
- - - - - - 0x014BBF 05:8BAF: C0        .byte $C0, $00, $C0, $00   ; 04 
- - - - - - 0x014BC3 05:8BB3: 00        .byte $00, $00, $00, $01   ; 05 
- - - - - - 0x014BC7 05:8BB7: 40        .byte $40, $FF, $C0, $00   ; 06 
- - - - - - 0x014BCB 05:8BBB: 00        .byte $00, $FF, $00, $00   ; 07 
- - - - - - 0x014BCF 05:8BBF: 40        .byte $40, $FF, $40, $FF   ; 08 



tbl_8BC3:
- D 0 - - - 0x014BD3 05:8BC3: 00        .byte $00, $00   ; 
- D 0 - - - 0x014BD5 05:8BC5: 98        .byte $98, $1C   ; 
- D 0 - - - 0x014BD7 05:8BC7: 99        .byte $99, $1C   ; 



sub_8BC9:
loc_8BC9:
C D 0 - - - 0x014BD9 05:8BC9: A9 00     LDA #$00
C - - - - - 0x014BDB 05:8BCB: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x014BDE 05:8BCE: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x014BE1 05:8BD1: 60        RTS



sub_8BD2:
C - - - - - 0x014BE2 05:8BD2: B9 ED 8B  LDA tbl_8BED,Y
C - - - - - 0x014BE5 05:8BD5: 38        SEC
C - - - - - 0x014BE6 05:8BD6: E5 00     SBC ram_0000
C - - - - - 0x014BE8 05:8BD8: 85 08     STA ram_0008
C - - - - - 0x014BEA 05:8BDA: B9 EE 8B  LDA tbl_8BED + $01,Y
C - - - - - 0x014BED 05:8BDD: E5 01     SBC ram_0001
C - - - - - 0x014BEF 05:8BDF: 85 09     STA ram_0009
C - - - - - 0x014BF1 05:8BE1: D0 08     BNE bra_8BEB
C - - - - - 0x014BF3 05:8BE3: A5 08     LDA ram_0008
C - - - - - 0x014BF5 05:8BE5: C9 04     CMP #$04
C - - - - - 0x014BF7 05:8BE7: B0 02     BCS bra_8BEB
C - - - - - 0x014BF9 05:8BE9: 38        SEC
C - - - - - 0x014BFA 05:8BEA: 60        RTS
bra_8BEB:
C - - - - - 0x014BFB 05:8BEB: 18        CLC
C - - - - - 0x014BFC 05:8BEC: 60        RTS



tbl_8BED:
- D 0 - - - 0x014BFD 05:8BED: EF 17     .word $17EF ; 00 
- D 0 - - - 0x014BFF 05:8BEF: 80 00     .word $0080 ; 01 
- D 0 - - - 0x014C01 05:8BF1: 80 01     .word $0180 ; 02 
- D 0 - - - 0x014C03 05:8BF3: E0 0A     .word $0AE0 ; 03 
- D 0 - - - 0x014C05 05:8BF5: 10 04     .word $0410 ; 04 
- D 0 - - - 0x014C07 05:8BF7: E0 17     .word $17E0 ; 05 
- D 0 - - - 0x014C09 05:8BF9: 0C 0B     .word $0B0C ; 06 
- - - - - - 0x014C0B 05:8BFB: 7F 17     .word $177F ; 07 



sub_8BFD:
loc_8BFD:
ofs_021_8BFD_01:
C D 0 - - - 0x014C0D 05:8BFD: E8        INX
C - - - - - 0x014C0E 05:8BFE: 8A        TXA
C - - - - - 0x014C0F 05:8BFF: 05 3B     ORA ram_003B
C - - - - - 0x014C11 05:8C01: 85 3B     STA ram_003B
C - - - - - 0x014C13 05:8C03: CA        DEX
C - - - - - 0x014C14 05:8C04: 60        RTS



sub_8C05:
C - - - - - 0x014C15 05:8C05: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x014C18 05:8C08: 18        CLC
C - - - - - 0x014C19 05:8C09: 65 61     ADC ram_0061
C - - - - - 0x014C1B 05:8C0B: 85 00     STA ram_0000
C - - - - - 0x014C1D 05:8C0D: A5 60     LDA ram_0060
loc_8C0F:
C D 0 - - - 0x014C1F 05:8C0F: 69 00     ADC #$00
C - - - - - 0x014C21 05:8C11: 85 01     STA ram_0001
C - - - - - 0x014C23 05:8C13: 60        RTS



sub_8C14:
C - - - - - 0x014C24 05:8C14: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x014C27 05:8C17: 18        CLC
C - - - - - 0x014C28 05:8C18: 65 64     ADC ram_0064
C - - - - - 0x014C2A 05:8C1A: 85 00     STA ram_0000
C - - - - - 0x014C2C 05:8C1C: A5 63     LDA ram_0063
C - - - - - 0x014C2E 05:8C1E: 4C 0F 8C  JMP loc_8C0F



loc_8C21:
sub_8C21:
C D 0 - - - 0x014C31 05:8C21: A4 4B     LDY ram_004B
C - - - - - 0x014C33 05:8C23: F0 03     BEQ bra_8C28
C - - - - - 0x014C35 05:8C25: C6 4B     DEC ram_004B
C - - - - - 0x014C37 05:8C27: 60        RTS
bra_8C28:
C - - - - - 0x014C38 05:8C28: A0 06     LDY #$06
C - - - - - 0x014C3A 05:8C2A: 84 4B     STY ram_004B
C - - - - - 0x014C3C 05:8C2C: 48        PHA
C - - - - - 0x014C3D 05:8C2D: 0A        ASL
C - - - - - 0x014C3E 05:8C2E: A8        TAY
C - - - - - 0x014C3F 05:8C2F: B9 5A 8D  LDA tbl_8D5A_cutscene_text,Y
C - - - - - 0x014C42 05:8C32: 85 00     STA ram_0000
C - - - - - 0x014C44 05:8C34: B9 5B 8D  LDA tbl_8D5A_cutscene_text + $01,Y
C - - - - - 0x014C47 05:8C37: 85 01     STA ram_0001
C - - - - - 0x014C49 05:8C39: 68        PLA
C - - - - - 0x014C4A 05:8C3A: A0 00     LDY #$00
C - - - - - 0x014C4C 05:8C3C: C9 06     CMP #$06
C - - - - - 0x014C4E 05:8C3E: 90 10     BCC bra_8C50
C - - - - - 0x014C50 05:8C40: A0 04     LDY #$04
C - - - - - 0x014C52 05:8C42: C9 0D     CMP #$0D
C - - - - - 0x014C54 05:8C44: F0 0A     BEQ bra_8C50
C - - - - - 0x014C56 05:8C46: A0 02     LDY #$02
C - - - - - 0x014C58 05:8C48: 90 06     BCC bra_8C50
C - - - - - 0x014C5A 05:8C4A: C9 0F     CMP #$0F
C - - - - - 0x014C5C 05:8C4C: B0 02     BCS bra_8C50
C - - - - - 0x014C5E 05:8C4E: A0 06     LDY #$06
bra_8C50:
C - - - - - 0x014C60 05:8C50: B9 02 8D  LDA tbl_8D02_ppu,Y
C - - - - - 0x014C63 05:8C53: 85 02     STA ram_0002
C - - - - - 0x014C65 05:8C55: B9 03 8D  LDA tbl_8D02_ppu + $01,Y
C - - - - - 0x014C68 05:8C58: 85 03     STA ram_0003
C - - - - - 0x014C6A 05:8C5A: A4 5C     LDY ram_005C
C - - - - - 0x014C6C 05:8C5C: B1 00     LDA (ram_0000),Y
C - - - - - 0x014C6E 05:8C5E: C9 FF     CMP #$FF
C - - - - - 0x014C70 05:8C60: F0 32     BEQ bra_8C94_FD_or_FF
C - - - - - 0x014C72 05:8C62: C9 FD     CMP #$FD
C - - - - - 0x014C74 05:8C64: F0 2E     BEQ bra_8C94_FD_or_FF
C - - - - - 0x014C76 05:8C66: C9 FE     CMP #$FE
C - - - - - 0x014C78 05:8C68: D0 0C     BNE bra_8C76
; FE
C - - - - - 0x014C7A 05:8C6A: A5 58     LDA ram_0058
C - - - - - 0x014C7C 05:8C6C: 29 E0     AND #$E0
C - - - - - 0x014C7E 05:8C6E: 18        CLC
C - - - - - 0x014C7F 05:8C6F: 69 20     ADC #$20
C - - - - - 0x014C81 05:8C71: 85 58     STA ram_0058
C - - - - - 0x014C83 05:8C73: E6 5C     INC ram_005C
C - - - - - 0x014C85 05:8C75: C8        INY
bra_8C76:
C - - - - - 0x014C86 05:8C76: A5 58     LDA ram_0058
C - - - - - 0x014C88 05:8C78: 29 1F     AND #$1F
C - - - - - 0x014C8A 05:8C7A: 85 07     STA ram_0007
C - - - - - 0x014C8C 05:8C7C: A9 00     LDA #$00
C - - - - - 0x014C8E 05:8C7E: 85 06     STA ram_0006
C - - - - - 0x014C90 05:8C80: A5 58     LDA ram_0058
C - - - - - 0x014C92 05:8C82: 29 E0     AND #$E0
C - - - - - 0x014C94 05:8C84: 0A        ASL
C - - - - - 0x014C95 05:8C85: 26 06     ROL ram_0006
C - - - - - 0x014C97 05:8C87: 05 07     ORA ram_0007
C - - - - - 0x014C99 05:8C89: 18        CLC
C - - - - - 0x014C9A 05:8C8A: 65 02     ADC ram_0002
C - - - - - 0x014C9C 05:8C8C: 85 02     STA ram_0002
C - - - - - 0x014C9E 05:8C8E: A5 03     LDA ram_0003
C - - - - - 0x014CA0 05:8C90: 65 06     ADC ram_0006
C - - - - - 0x014CA2 05:8C92: 85 03     STA ram_0003
bra_8C94_FD_or_FF:
C - - - - - 0x014CA4 05:8C94: A6 26     LDX ram_buffer_index
C - - - - - 0x014CA6 05:8C96: 20 F3 8C  JSR sub_8CF3
C - - - - - 0x014CA9 05:8C99: B1 00     LDA (ram_0000),Y
C - - - - - 0x014CAB 05:8C9B: C9 FF     CMP #$FF
C - - - - - 0x014CAD 05:8C9D: F0 22     BEQ bra_8CC1_FF
C - - - - - 0x014CAF 05:8C9F: C9 FD     CMP #$FD
C - - - - - 0x014CB1 05:8CA1: F0 4E     BEQ bra_8CF1_FD
C - - - - - 0x014CB3 05:8CA3: 38        SEC
C - - - - - 0x014CB4 05:8CA4: E9 30     SBC #$30
C - - - - - 0x014CB6 05:8CA6: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x014CB9 05:8CA9: A9 FF     LDA #$FF
C - - - - - 0x014CBB 05:8CAB: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x014CBE 05:8CAE: 86 26     STX ram_buffer_index
C - - - - - 0x014CC0 05:8CB0: E6 5C     INC ram_005C
C - - - - - 0x014CC2 05:8CB2: E6 58     INC ram_0058
C - - - - - 0x014CC4 05:8CB4: C8        INY
C - - - - - 0x014CC5 05:8CB5: B1 00     LDA (ram_0000),Y
C - - - - - 0x014CC7 05:8CB7: C9 FF     CMP #$FF
C - - - - - 0x014CC9 05:8CB9: D0 04     BNE bra_8CBF
; FF
C - - - - - 0x014CCB 05:8CBB: A9 20     LDA #$20
C - - - - - 0x014CCD 05:8CBD: 85 4B     STA ram_004B
bra_8CBF:
C - - - - - 0x014CCF 05:8CBF: 18        CLC
C - - - - - 0x014CD0 05:8CC0: 60        RTS
bra_8CC1_FF:
C - - - - - 0x014CD1 05:8CC1: A0 00     LDY #$00
loc_8CC3_loop:
C D 0 - - - 0x014CD3 05:8CC3: B1 00     LDA (ram_0000),Y
C - - - - - 0x014CD5 05:8CC5: C9 FF     CMP #$FF
C - - - - - 0x014CD7 05:8CC7: F0 25     BEQ bra_8CEE
C - - - - - 0x014CD9 05:8CC9: C9 FE     CMP #$FE
C - - - - - 0x014CDB 05:8CCB: D0 18     BNE bra_8CE5
C - - - - - 0x014CDD 05:8CCD: A9 FF     LDA #$FF
C - - - - - 0x014CDF 05:8CCF: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x014CE2 05:8CD2: A5 02     LDA ram_0002
C - - - - - 0x014CE4 05:8CD4: 18        CLC
C - - - - - 0x014CE5 05:8CD5: 69 40     ADC #< $0040
C - - - - - 0x014CE7 05:8CD7: 85 02     STA ram_0002
C - - - - - 0x014CE9 05:8CD9: A5 03     LDA ram_0003
C - - - - - 0x014CEB 05:8CDB: 69 00     ADC #> $0040
C - - - - - 0x014CED 05:8CDD: 85 03     STA ram_0003
C - - - - - 0x014CEF 05:8CDF: 20 F3 8C  JSR sub_8CF3
C - - - - - 0x014CF2 05:8CE2: 4C EA 8C  JMP loc_8CEA
bra_8CE5:
C - - - - - 0x014CF5 05:8CE5: A9 00     LDA #$00
C - - - - - 0x014CF7 05:8CE7: 20 C9 DA  JSR sub_0x01DAD9
loc_8CEA:
C D 0 - - - 0x014CFA 05:8CEA: C8        INY
C - - - - - 0x014CFB 05:8CEB: 4C C3 8C  JMP loc_8CC3_loop
bra_8CEE:
C - - - - - 0x014CFE 05:8CEE: 20 79 D2  JSR sub_0x01D289
bra_8CF1_FD:
C - - - - - 0x014D01 05:8CF1: 38        SEC
C - - - - - 0x014D02 05:8CF2: 60        RTS



sub_8CF3:
C - - - - - 0x014D03 05:8CF3: A9 01     LDA #$01
C - - - - - 0x014D05 05:8CF5: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x014D08 05:8CF8: A5 02     LDA ram_0002
C - - - - - 0x014D0A 05:8CFA: 20 C9 DA  JSR sub_0x01DAD9
C - - - - - 0x014D0D 05:8CFD: A5 03     LDA ram_0003
C - - - - - 0x014D0F 05:8CFF: 4C C9 DA  JMP loc_0x01DAD9



tbl_8D02_ppu:
- D 0 - - - 0x014D12 05:8D02: A3 22     .word $22A3 ; 00 
- D 0 - - - 0x014D14 05:8D04: 03 22     .word $2203 ; 02 
- D 0 - - - 0x014D16 05:8D06: 63 20     .word $2063 ; 04 
- D 0 - - - 0x014D18 05:8D08: 23 22     .word $2223 ; 06 



tbl_8D0A:
- D 0 - - - 0x014D1A 05:8D0A: 0E 8D     .word off_8D0E_00
- D 0 - - - 0x014D1C 05:8D0C: 34 8D     .word off_8D34_01



off_8D0E_00:
- D 0 - I - 0x014D1E 05:8D0E: E2 21     .word $21E2 ; ppu address
- D 0 - I - 0x014D20 05:8D10: 05        .byte $05   ; 

- D 0 - I - 0x014D21 05:8D11: 01        .byte $01, $3D   ; 
- D 0 - I - 0x014D23 05:8D13: 1A        .byte $1A, $3C   ; 
- D 0 - I - 0x014D25 05:8D15: 01        .byte $01, $2F   ; 
- D 0 - I - 0x014D27 05:8D17: FF        .byte $FF   ; 

- D 0 - I - 0x014D28 05:8D18: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D2A 05:8D1A: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D2C 05:8D1C: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D2E 05:8D1E: FF        .byte $FF   ; 

- D 0 - I - 0x014D2F 05:8D1F: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D31 05:8D21: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D33 05:8D23: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D35 05:8D25: FF        .byte $FF   ; 

- D 0 - I - 0x014D36 05:8D26: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D38 05:8D28: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D3A 05:8D2A: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D3C 05:8D2C: FF        .byte $FF   ; 

- D 0 - I - 0x014D3D 05:8D2D: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D3F 05:8D2F: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D41 05:8D31: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D43 05:8D33: FF        .byte $FF   ; 



off_8D34_01:
- D 0 - I - 0x014D44 05:8D34: 82 22     .word $2282 ; ppu address
- D 0 - I - 0x014D46 05:8D36: 05        .byte $05   ; 

- D 0 - I - 0x014D47 05:8D37: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D49 05:8D39: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D4B 05:8D3B: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D4D 05:8D3D: FF        .byte $FF   ; 

- D 0 - I - 0x014D4E 05:8D3E: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D50 05:8D40: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D52 05:8D42: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D54 05:8D44: FF        .byte $FF   ; 

- D 0 - I - 0x014D55 05:8D45: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D57 05:8D47: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D59 05:8D49: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D5B 05:8D4B: FF        .byte $FF   ; 

- D 0 - I - 0x014D5C 05:8D4C: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D5E 05:8D4E: 1A        .byte $1A, $00   ; 
- D 0 - I - 0x014D60 05:8D50: 01        .byte $01, $3B   ; 
- D 0 - I - 0x014D62 05:8D52: FF        .byte $FF   ; 

- D 0 - I - 0x014D63 05:8D53: 01        .byte $01, $3E   ; 
- D 0 - I - 0x014D65 05:8D55: 1A        .byte $1A, $3C   ; 
- D 0 - I - 0x014D67 05:8D57: 01        .byte $01, $3F   ; 
- D 0 - I - 0x014D69 05:8D59: FF        .byte $FF   ; 



tbl_8D5A_cutscene_text:
- D 0 - - - 0x014D6A 05:8D5A: 8A 8D     .word _off003_8D8A_00
- D 0 - - - 0x014D6C 05:8D5C: AF 8D     .word _off003_8DAF_01
- D 0 - - - 0x014D6E 05:8D5E: B5 8D     .word _off003_8DB5_02
- D 0 - - - 0x014D70 05:8D60: F8 8D     .word _off003_8DF8_03
- D 0 - - - 0x014D72 05:8D62: 35 8E     .word _off003_8E35_04
- D 0 - - - 0x014D74 05:8D64: 3B 8E     .word _off003_8E3B_05
- D 0 - - - 0x014D76 05:8D66: 5D 8E     .word _off003_8E5D_06
- D 0 - - - 0x014D78 05:8D68: 8D 8E     .word _off003_8E8D_07
- D 0 - - - 0x014D7A 05:8D6A: BD 8E     .word _off003_8EBD_08
- D 0 - - - 0x014D7C 05:8D6C: E3 8E     .word _off003_8EE3_09
- D 0 - - - 0x014D7E 05:8D6E: 33 8F     .word _off003_8F33_0A
- D 0 - - - 0x014D80 05:8D70: 4A 8F     .word _off003_8F4A_0B
- D 0 - - - 0x014D82 05:8D72: 77 8F     .word _off003_8F77_0C
- D 0 - - - 0x014D84 05:8D74: C4 8F     .word _off003_8FC4_0D
- D 0 - - - 0x014D86 05:8D76: 56 90     .word _off003_9056_0E
- D 0 - - - 0x014D88 05:8D78: C3 90     .word _off003_90C3_0F
- D 0 - - - 0x014D8A 05:8D7A: 09 91     .word _off003_9109_10
- D 0 - - - 0x014D8C 05:8D7C: 19 91     .word _off003_9119_11
- D 0 - - - 0x014D8E 05:8D7E: 3B 91     .word _off003_913B_12
- D 0 - - - 0x014D90 05:8D80: 89 91     .word _off003_9189_13
- D 0 - - - 0x014D92 05:8D82: E3 91     .word _off003_91E3_14
- D 0 - - - 0x014D94 05:8D84: 04 92     .word _off003_9204_15
- D 0 - - - 0x014D96 05:8D86: 42 92     .word _off003_9242_16
- D 0 - - - 0x014D98 05:8D88: 8F 92     .word _off003_928F_17



con_end_of_cutscene                     = $FD ; 
con_new_line                            = $FE ; 
con_end_of_text                         = $FF ; 



_off003_8D8A_00:
; HI. IT'S ME, FOX.
- D 0 - I - 0x014D9A 05:8D8A: 48        .byte $48, $49, $5C, $30, $49, $54, $5E, $53, $30, $4D, $45, $5D, $30, $46, $4F, $58   ; 
- D 0 - I - 0x014DAA 05:8D9A: 5C        .byte $5C   ; 
- D 0 - I - 0x014DAB 05:8D9B: FE        .byte con_new_line   ; 
; IS THAT YOU BURNS?
- D 0 - I - 0x014DAC 05:8D9C: 49        .byte $49, $53, $30, $54, $48, $41, $54, $30, $59, $4F, $55, $30, $42, $55, $52, $4E   ; 
- D 0 - I - 0x014DBC 05:8DAC: 53        .byte $53, $3C   ; 
- D 0 - I - 0x014DBE 05:8DAE: FF        .byte con_end_of_text   ; 



_off003_8DAF_01:
; YEAH.
- D 0 - I - 0x014DBF 05:8DAF: 59        .byte $59, $45, $41, $48, $5C   ; 
- D 0 - I - 0x014DC4 05:8DB4: FF        .byte con_end_of_text   ; 



_off003_8DB5_02:
; THE HEAD OF INTELLIGENCE
- D 0 - I - 0x014DC5 05:8DB5: 54        .byte $54, $48, $45, $30, $48, $45, $41, $44, $30, $4F, $46, $30, $49, $4E, $54, $45   ; 
- D 0 - I - 0x014DD5 05:8DC5: 4C        .byte $4C, $4C, $49, $47, $45, $4E, $43, $45   ; 
- D 0 - I - 0x014DDD 05:8DCD: FE        .byte con_new_line   ; 
; IS IN SERIOUS TROUBLE.
- D 0 - I - 0x014DDE 05:8DCE: 49        .byte $49, $53, $30, $49, $4E, $30, $53, $45, $52, $49, $4F, $55, $53, $30, $54, $52   ; 
- D 0 - I - 0x014DEE 05:8DDE: 4F        .byte $4F, $55, $42, $4C, $45, $5C   ; 
- D 0 - I - 0x014DF4 05:8DE4: FE        .byte con_new_line   ; 
; WE NEED YOUR HELP.
- D 0 - I - 0x014DF5 05:8DE5: 57        .byte $57, $45, $30, $4E, $45, $45, $44, $30, $59, $4F, $55, $52, $30, $48, $45, $4C   ; 
- D 0 - I - 0x014E05 05:8DF5: 50        .byte $50, $5C   ; 
- D 0 - I - 0x014E07 05:8DF7: FF        .byte con_end_of_text   ; 



_off003_8DF8_03:
; OK. I'LL BE  IN THE
- D 0 - I - 0x014E08 05:8DF8: 4F        .byte $4F, $4B, $5C, $30, $49, $5E, $4C, $4C, $30, $42, $45, $30, $30, $49, $4E, $30   ; 
- D 0 - I - 0x014E18 05:8E08: 54        .byte $54, $48, $45   ; 
- D 0 - I - 0x014E1B 05:8E0B: FE        .byte con_new_line   ; 
; OLD WAREHOUSE AT THE EDGE
- D 0 - I - 0x014E1C 05:8E0C: 4F        .byte $4F, $4C, $44, $30, $57, $41, $52, $45, $48, $4F, $55, $53, $45, $30, $41, $54   ; 
- D 0 - I - 0x014E2C 05:8E1C: 30        .byte $30, $54, $48, $45, $30, $45, $44, $47, $45   ; 
- D 0 - I - 0x014E35 05:8E25: FE        .byte con_new_line   ; 
; OF THE HARBOR.
- D 0 - I - 0x014E36 05:8E26: 4F        .byte $4F, $46, $30, $54, $48, $45, $30, $48, $41, $52, $42, $4F, $52, $5C   ; 
- D 0 - I - 0x014E44 05:8E34: FF        .byte con_end_of_text   ; 



_off003_8E35_04:
; FOX!!
- D 0 - I - 0x014E45 05:8E35: 46        .byte $46, $4F, $58, $3D, $3D   ; 
- D 0 - I - 0x014E4A 05:8E3A: FF        .byte con_end_of_text   ; 



_off003_8E3B_05:
; NOW WE MUST ELIMINATE YOU,
- D 0 - I - 0x014E4B 05:8E3B: 4E        .byte $4E, $4F, $57, $30, $57, $45, $30, $4D, $55, $53, $54, $30, $45, $4C, $49, $4D   ; 
- D 0 - I - 0x014E5B 05:8E4B: 49        .byte $49, $4E, $41, $54, $45, $30, $59, $4F, $55, $5D   ; 
- D 0 - I - 0x014E65 05:8E55: FE        .byte con_new_line   ; 
; BURNS!
- D 0 - I - 0x014E66 05:8E56: 42        .byte $42, $55, $52, $4E, $53, $3D   ; 
- D 0 - I - 0x014E6C 05:8E5C: FF        .byte con_end_of_text   ; 



_off003_8E5D_06:
; WELL IT SEEMS LIKE WE HAVE
- D 0 - I - 0x014E6D 05:8E5D: 57        .byte $57, $45, $4C, $4C, $30, $49, $54, $30, $53, $45, $45, $4D, $53, $30, $4C, $49   ; 
- D 0 - I - 0x014E7D 05:8E6D: 4B        .byte $4B, $45, $30, $57, $45, $30, $48, $41, $56, $45   ; 
- D 0 - I - 0x014E87 05:8E77: FE        .byte con_new_line   ; 
; SETTLED THIS MATTER.
- D 0 - I - 0x014E88 05:8E78: 53        .byte $53, $45, $54, $54, $4C, $45, $44, $30, $54, $48, $49, $53, $30, $4D, $41, $54   ; 
- D 0 - I - 0x014E98 05:8E88: 54        .byte $54, $45, $52, $5C   ; 
- D 0 - I - 0x014E9C 05:8E8C: FF        .byte con_end_of_text   ; 



_off003_8E8D_07:
; WHERE'S THAT HEAD HONCHO
- D 0 - I - 0x014E9D 05:8E8D: 57        .byte $57, $48, $45, $52, $45, $5E, $53, $30, $54, $48, $41, $54, $30, $48, $45, $41   ; 
- D 0 - I - 0x014EAD 05:8E9D: 44        .byte $44, $30, $48, $4F, $4E, $43, $48, $4F   ; 
- D 0 - I - 0x014EB5 05:8EA5: FE        .byte con_new_line   ; 
; FOX WAS TALKING ABOUT?
- D 0 - I - 0x014EB6 05:8EA6: 46        .byte $46, $4F, $58, $30, $57, $41, $53, $30, $54, $41, $4C, $4B, $49, $4E, $47, $30   ; 
- D 0 - I - 0x014EC6 05:8EB6: 41        .byte $41, $42, $4F, $55, $54, $3C   ; 
- D 0 - I - 0x014ECC 05:8EBC: FF        .byte con_end_of_text   ; 



_off003_8EBD_08:
; OH NO!! THEY'RE
- D 0 - I - 0x014ECD 05:8EBD: 4F        .byte $4F, $48, $30, $4E, $4F, $3D, $3D, $30, $54, $48, $45, $59, $5E, $52, $45   ; 
- D 0 - I - 0x014EDC 05:8ECC: FE        .byte con_new_line   ; 
; ETTING AWAY BY SHIP!
- D 0 - I - 0x014EDD 05:8ECD: 47        .byte $47, $45, $54, $54, $49, $4E, $47, $30, $41, $57, $41, $59, $30, $42, $59, $30   ; 
- D 0 - I - 0x014EED 05:8EDD: 53        .byte $53, $48, $49, $50, $3D   ; 
- D 0 - I - 0x014EF2 05:8EE2: FF        .byte con_end_of_text   ; 



_off003_8EE3_09:
; BURNS, I'M WARNING YOU!
- D 0 - I - 0x014EF3 05:8EE3: 42        .byte $42, $55, $52, $4E, $53, $5D, $30, $49, $5E, $4D, $30, $57, $41, $52, $4E, $49   ; 
- D 0 - I - 0x014F03 05:8EF3: 4E        .byte $4E, $47, $30, $59, $4F, $55, $3D   ; 
- D 0 - I - 0x014F0A 05:8EFA: FE        .byte con_new_line   ; 
; IF YOUR BOSS'S LIFE IS
- D 0 - I - 0x014F0B 05:8EFB: 49        .byte $49, $46, $30, $59, $4F, $55, $52, $30, $42, $4F, $53, $53, $5E, $53, $30, $4C   ; 
- D 0 - I - 0x014F1B 05:8F0B: 49        .byte $49, $46, $45, $30, $49, $53   ; 
- D 0 - I - 0x014F21 05:8F11: FE        .byte con_new_line   ; 
; IMPORTANT, YOU BETTER
- D 0 - I - 0x014F22 05:8F12: 49        .byte $49, $4D, $50, $4F, $52, $54, $41, $4E, $54, $5D, $30, $59, $4F, $55, $30, $42   ; 
- D 0 - I - 0x014F32 05:8F22: 45        .byte $45, $54, $54, $45, $52   ; 
- D 0 - I - 0x014F37 05:8F27: FE        .byte con_new_line   ; 
; NOT LEAVE!
- D 0 - I - 0x014F38 05:8F28: 4E        .byte $4E, $4F, $54, $30, $4C, $45, $41, $56, $45, $3D   ; 
- D 0 - I - 0x014F42 05:8F32: FF        .byte con_end_of_text   ; 



_off003_8F33_0A:
; HA HA HA HA ...HUM....
- D 0 - I - 0x014F43 05:8F33: 48        .byte $48, $41, $30, $48, $41, $30, $48, $41, $30, $48, $41, $30, $5C, $5C, $5C, $48   ; 
- D 0 - I - 0x014F53 05:8F43: 55        .byte $55, $4D, $5C, $5C, $5C, $5C   ; 
- D 0 - I - 0x014F59 05:8F49: FD        .byte con_end_of_cutscene   ; 



_off003_8F4A_0B:
; MAN! HOW COULD YOU DESTROY
- D 0 - I - 0x014F5A 05:8F4A: 4D        .byte $4D, $41, $4E, $3D, $30, $48, $4F, $57, $30, $43, $4F, $55, $4C, $44, $30, $59   ; 
- D 0 - I - 0x014F6A 05:8F5A: 4F        .byte $4F, $55, $30, $44, $45, $53, $54, $52, $4F, $59   ; 
- D 0 - I - 0x014F74 05:8F64: FE        .byte con_new_line   ; 
; SUCH A HUGE SHIP?
- D 0 - I - 0x014F75 05:8F65: 53        .byte $53, $55, $43, $48, $30, $41, $30, $48, $55, $47, $45, $30, $53, $48, $49, $50   ; 
- D 0 - I - 0x014F85 05:8F75: 3C        .byte $3C   ; 
- D 0 - I - 0x014F86 05:8F76: FF        .byte con_end_of_text   ; 



_off003_8F77_0C:
; WE'RE KEEPING HIS FAMILY.
- D 0 - I - 0x014F87 05:8F77: 57        .byte $57, $45, $5E, $52, $45, $30, $4B, $45, $45, $50, $49, $4E, $47, $30, $48, $49   ; 
- D 0 - I - 0x014F97 05:8F87: 53        .byte $53, $30, $46, $41, $4D, $49, $4C, $59, $5C   ; 
- D 0 - I - 0x014FA0 05:8F90: FE        .byte con_new_line   ; 
; IF YOU WANT TO HELP THEM,
- D 0 - I - 0x014FA1 05:8F91: 49        .byte $49, $46, $30, $59, $4F, $55, $30, $57, $41, $4E, $54, $30, $54, $4F, $30, $48   ; 
- D 0 - I - 0x014FB1 05:8FA1: 45        .byte $45, $4C, $50, $30, $54, $48, $45, $4D, $5D   ; 
- D 0 - I - 0x014FBA 05:8FAA: FE        .byte con_new_line   ; 
; GO TO THE MATI BUILDING.
- D 0 - I - 0x014FBB 05:8FAB: 47        .byte $47, $4F, $30, $54, $4F, $30, $54, $48, $45, $30, $4D, $41, $54, $49, $30, $42   ; 
- D 0 - I - 0x014FCB 05:8FBB: 55        .byte $55, $49, $4C, $44, $49, $4E, $47, $5C   ; 
- D 0 - I - 0x014FD3 05:8FC3: FD        .byte con_end_of_cutscene   ; 



_off003_8FC4_0D:
; THIS SITUATION HAS
- D 0 - I - 0x014FD4 05:8FC4: 54        .byte $54, $48, $49, $53, $30, $53, $49, $54, $55, $41, $54, $49, $4F, $4E, $30, $48   ; 
- D 0 - I - 0x014FE4 05:8FD4: 41        .byte $41, $53   ; 
- D 0 - I - 0x014FE6 05:8FD6: FE        .byte con_new_line   ; 
; ENDED WITH SEVERAL
- D 0 - I - 0x014FE7 05:8FD7: 45        .byte $45, $4E, $44, $45, $44, $30, $57, $49, $54, $48, $30, $53, $45, $56, $45, $52   ; 
- D 0 - I - 0x014FF7 05:8FE7: 41        .byte $41, $4C   ; 
- D 0 - I - 0x014FF9 05:8FE9: FE        .byte con_new_line   ; 
; THINGS LEFT UNSOLVED.
- D 0 - I - 0x014FFA 05:8FEA: 54        .byte $54, $48, $49, $4E, $47, $53, $30, $4C, $45, $46, $54, $30, $55, $4E, $53, $4F   ; 
- D 0 - I - 0x01500A 05:8FFA: 4C        .byte $4C, $56, $45, $44, $5C   ; 
- D 0 - I - 0x01500F 05:8FFF: FE        .byte con_new_line   ; 
; THE HEAD, FOX, IS STILL
- D 0 - I - 0x015010 05:9000: 54        .byte $54, $48, $45, $30, $48, $45, $41, $44, $5D, $30, $46, $4F, $58, $5D, $30, $49   ; 
- D 0 - I - 0x015020 05:9010: 53        .byte $53, $30, $53, $54, $49, $4C, $4C   ; 
- D 0 - I - 0x015027 05:9017: FE        .byte con_new_line   ; 
; MISSING. BURNS IS
- D 0 - I - 0x015028 05:9018: 4D        .byte $4D, $49, $53, $53, $49, $4E, $47, $5C, $30, $42, $55, $52, $4E, $53, $30, $49   ; 
- D 0 - I - 0x015038 05:9028: 53        .byte $53   ; 
- D 0 - I - 0x015039 05:9029: FE        .byte con_new_line   ; 
; FEELING THAT A SUSPICIOUS
- D 0 - I - 0x01503A 05:902A: 46        .byte $46, $45, $45, $4C, $49, $4E, $47, $30, $54, $48, $41, $54, $30, $41, $30, $53   ; 
- D 0 - I - 0x01504A 05:903A: 55        .byte $55, $53, $50, $49, $43, $49, $4F, $55, $53   ; 
- D 0 - I - 0x015053 05:9043: FE        .byte con_new_line   ; 
; FIGURE IS LURKING
- D 0 - I - 0x015054 05:9044: 46        .byte $46, $49, $47, $55, $52, $45, $30, $49, $53, $30, $4C, $55, $52, $4B, $49, $4E   ; 
- D 0 - I - 0x015064 05:9054: 47        .byte $47   ; 
- D 0 - I - 0x015065 05:9055: FF        .byte con_end_of_text   ; 



_off003_9056_0E:
; BEHIND HIM. BUT THERE IS
- D 0 - I - 0x015066 05:9056: 42        .byte $42, $45, $48, $49, $4E, $44, $30, $48, $49, $4D, $5C, $30, $42, $55, $54, $30   ; 
- D 0 - I - 0x015076 05:9066: 54        .byte $54, $48, $45, $52, $45, $30, $49, $53   ; 
- D 0 - I - 0x01507E 05:906E: FE        .byte con_new_line   ; 
; NO DOUBT HE WILL BE
- D 0 - I - 0x01507F 05:906F: 4E        .byte $4E, $4F, $30, $44, $4F, $55, $42, $54, $30, $48, $45, $30, $57, $49, $4C, $4C   ; 
- D 0 - I - 0x01508F 05:907F: 30        .byte $30, $42, $45   ; 
- D 0 - I - 0x015092 05:9082: FE        .byte con_new_line   ; 
; DEVOTED TO FIGHTING.
- D 0 - I - 0x015093 05:9083: 44        .byte $44, $45, $56, $4F, $54, $45, $44, $30, $54, $4F, $30, $46, $49, $47, $48, $54   ; 
- D 0 - I - 0x0150A3 05:9093: 49        .byte $49, $4E, $47, $5C   ; 
- D 0 - I - 0x0150A7 05:9097: FE        .byte con_new_line   ; 
; WHICH IS WHY WE CAN
- D 0 - I - 0x0150A8 05:9098: 57        .byte $57, $48, $49, $43, $48, $30, $49, $53, $30, $57, $48, $59, $30, $57, $45, $30   ; 
- D 0 - I - 0x0150B8 05:90A8: 43        .byte $43, $41, $4E   ; 
- D 0 - I - 0x0150BB 05:90AB: FE        .byte con_new_line   ; 
; CALL IT BURNS DESTINY.
- D 0 - I - 0x0150BC 05:90AC: 43        .byte $43, $41, $4C, $4C, $30, $49, $54, $30, $42, $55, $52, $4E, $53, $30, $44, $45   ; 
- D 0 - I - 0x0150CC 05:90BC: 53        .byte $53, $54, $49, $4E, $59, $5C   ; 
- D 0 - I - 0x0150D2 05:90C2: FF        .byte con_end_of_text   ; 



_off003_90C3_0F:
; ..COME IN PLEASE,COME IN?
- D 0 - I - 0x0150D3 05:90C3: 5C        .byte $5C, $5C, $43, $4F, $4D, $45, $30, $49, $4E, $30, $50, $4C, $45, $41, $53, $45   ; 
- D 0 - I - 0x0150E3 05:90D3: 5D        .byte $5D, $43, $4F, $4D, $45, $30, $49, $4E, $3C   ; 
- D 0 - I - 0x0150EC 05:90DC: FE        .byte con_new_line   ; 
; THIS IS BLUE GROUP!
- D 0 - I - 0x0150ED 05:90DD: 54        .byte $54, $48, $49, $53, $30, $49, $53, $30, $42, $4C, $55, $45, $30, $47, $52, $4F   ; 
- D 0 - I - 0x0150FD 05:90ED: 55        .byte $55, $50, $3D   ; 
- D 0 - I - 0x015100 05:90F0: FE        .byte con_new_line   ; 
; ...COME IN ,COME IN....
- D 0 - I - 0x015101 05:90F1: 5C        .byte $5C, $5C, $5C, $43, $4F, $4D, $45, $30, $49, $4E, $30, $5D, $43, $4F, $4D, $45   ; 
- D 0 - I - 0x015111 05:9101: 30        .byte $30, $49, $4E, $5C, $5C, $5C, $5C   ; 
- D 0 - I - 0x015118 05:9108: FF        .byte con_end_of_text   ; 



_off003_9109_10:
; BURNS, IT'S ME!
- D 0 - I - 0x015119 05:9109: 42        .byte $42, $55, $52, $4E, $53, $5D, $30, $49, $54, $5E, $53, $30, $4D, $45, $3D   ; 
- D 0 - I - 0x015128 05:9118: FF        .byte con_end_of_text   ; 



_off003_9119_11:
; ...YOU SURVIVED!
- D 0 - I - 0x015129 05:9119: 5C        .byte $5C, $5C, $5C, $59, $4F, $55, $30, $53, $55, $52, $56, $49, $56, $45, $44, $3D   ; 
- D 0 - I - 0x015139 05:9129: FE        .byte con_new_line   ; 
; CONGRATULATIONS!
- D 0 - I - 0x01513A 05:912A: 43        .byte $43, $4F, $4E, $47, $52, $41, $54, $55, $4C, $41, $54, $49, $4F, $4E, $53, $3D   ; 
- D 0 - I - 0x01514A 05:913A: FF        .byte con_end_of_text   ; 



_off003_913B_12:
; BUT REMEMBER,YOUR
- D 0 - I - 0x01514B 05:913B: 42        .byte $42, $55, $54, $30, $52, $45, $4D, $45, $4D, $42, $45, $52, $5D, $59, $4F, $55   ; 
- D 0 - I - 0x01515B 05:914B: 52        .byte $52   ; 
- D 0 - I - 0x01515C 05:914C: FE        .byte con_new_line   ; 
; DESTINY WILL BE PLAYED
- D 0 - I - 0x01515D 05:914D: 44        .byte $44, $45, $53, $54, $49, $4E, $59, $30, $57, $49, $4C, $4C, $30, $42, $45, $30   ; 
- D 0 - I - 0x01516D 05:915D: 50        .byte $50, $4C, $41, $59, $45, $44   ; 
- D 0 - I - 0x015173 05:9163: FE        .byte con_new_line   ; 
; OUT IN THIS TOWN.
- D 0 - I - 0x015174 05:9164: 4F        .byte $4F, $55, $54, $30, $49, $4E, $30, $54, $48, $49, $53, $30, $54, $4F, $57, $4E   ; 
- D 0 - I - 0x015184 05:9174: 5C        .byte $5C   ; 
- D 0 - I - 0x015185 05:9175: FE        .byte con_new_line   ; 
; HA HA HA ...I KNOW
- D 0 - I - 0x015186 05:9176: 48        .byte $48, $41, $30, $48, $41, $30, $48, $41, $30, $5C, $5C, $5C, $49, $30, $4B, $4E   ; 
- D 0 - I - 0x015196 05:9186: 4F        .byte $4F, $57   ; 
- D 0 - I - 0x015198 05:9188: FF        .byte con_end_of_text   ; 



_off003_9189_13:
; WHERE YOU ARE!
- D 0 - I - 0x015199 05:9189: 57        .byte $57, $48, $45, $52, $45, $30, $59, $4F, $55, $30, $41, $52, $45, $3D   ; 
- D 0 - I - 0x0151A7 05:9197: FE        .byte con_new_line   ; 
; YOU'LL HAVE THE SAME FATE
- D 0 - I - 0x0151A8 05:9198: 59        .byte $59, $4F, $55, $5E, $4C, $4C, $30, $48, $41, $56, $45, $30, $54, $48, $45, $30   ; 
- D 0 - I - 0x0151B8 05:91A8: 53        .byte $53, $41, $4D, $45, $30, $46, $41, $54, $45   ; 
- D 0 - I - 0x0151C1 05:91B1: FE        .byte con_new_line   ; 
; AS THE PEOPLE WHO ARE
- D 0 - I - 0x0151C2 05:91B2: 41        .byte $41, $53, $30, $54, $48, $45, $30, $50, $45, $4F, $50, $4C, $45, $30, $57, $48   ; 
- D 0 - I - 0x0151D2 05:91C2: 4F        .byte $4F, $30, $41, $52, $45   ; 
- D 0 - I - 0x0151D7 05:91C7: FE        .byte con_new_line   ; 
; SLEEPING IN THAT BUILDING.
- D 0 - I - 0x0151D8 05:91C8: 53        .byte $53, $4C, $45, $45, $50, $49, $4E, $47, $30, $49, $4E, $30, $54, $48, $41, $54   ; 
- D 0 - I - 0x0151E8 05:91D8: 30        .byte $30, $42, $55, $49, $4C, $44, $49, $4E, $47, $5C   ; 
- D 0 - I - 0x0151F2 05:91E2: FD        .byte con_end_of_cutscene   ; 



_off003_91E3_14:
; THIS IS THE
- D 0 - I - 0x0151F3 05:91E3: 54        .byte $54, $48, $49, $53, $30, $49, $53, $30, $54, $48, $45   ; 
- D 0 - I - 0x0151FE 05:91EE: FE        .byte con_new_line   ; 
; BEST PLACE TO RELAX.
- D 0 - I - 0x0151FF 05:91EF: 42        .byte $42, $45, $53, $54, $30, $50, $4C, $41, $43, $45, $30, $54, $4F, $30, $52, $45   ; 
- D 0 - I - 0x01520F 05:91FF: 4C        .byte $4C, $41, $58, $5C   ; 
- D 0 - I - 0x015213 05:9203: FF        .byte con_end_of_text   ; 



_off003_9204_15:
; BUT HOW COME YOU COULD
- D 0 - I - 0x015214 05:9204: 42        .byte $42, $55, $54, $30, $48, $4F, $57, $30, $43, $4F, $4D, $45, $30, $59, $4F, $55   ; 
- D 0 - I - 0x015224 05:9214: 30        .byte $30, $43, $4F, $55, $4C, $44   ; 
- D 0 - I - 0x01522A 05:921A: FE        .byte con_new_line   ; 
; TAKE A STRONG ITEM LIKE
- D 0 - I - 0x01522B 05:921B: 54        .byte $54, $41, $4B, $45, $30, $41, $30, $53, $54, $52, $4F, $4E, $47, $30, $49, $54   ; 
- D 0 - I - 0x01523B 05:922B: 45        .byte $45, $4D, $30, $4C, $49, $4B, $45   ; 
- D 0 - I - 0x015242 05:9232: FE        .byte con_new_line   ; 
; THE PLUTONIUM?
- D 0 - I - 0x015243 05:9233: 54        .byte $54, $48, $45, $30, $50, $4C, $55, $54, $4F, $4E, $49, $55, $4D, $3C   ; 
- D 0 - I - 0x015251 05:9241: FF        .byte con_end_of_text   ; 



_off003_9242_16:
; HEY GUYS!!CONGRATULATIONS
- D 0 - I - 0x015252 05:9242: 48        .byte $48, $45, $59, $30, $47, $55, $59, $53, $3D, $3D, $43, $4F, $4E, $47, $52, $41   ; 
- D 0 - I - 0x015262 05:9252: 54        .byte $54, $55, $4C, $41, $54, $49, $4F, $4E, $53   ; 
- D 0 - I - 0x01526B 05:925B: FE        .byte con_new_line   ; 
; ON YOUR SAFE RETURN!
- D 0 - I - 0x01526C 05:925C: 4F        .byte $4F, $4E, $30, $59, $4F, $55, $52, $30, $53, $41, $46, $45, $30, $52, $45, $54   ; 
- D 0 - I - 0x01527C 05:926C: 55        .byte $55, $52, $4E, $3D   ; 
- D 0 - I - 0x015280 05:9270: FE        .byte con_new_line   ; 
; BUT TIME IS
- D 0 - I - 0x015281 05:9271: 42        .byte $42, $55, $54, $30, $54, $49, $4D, $45, $30, $49, $53   ; 
- D 0 - I - 0x01528C 05:927C: FE        .byte con_new_line   ; 
; COMING TO AN END.
- D 0 - I - 0x01528D 05:927D: 43        .byte $43, $4F, $4D, $49, $4E, $47, $30, $54, $4F, $30, $41, $4E, $30, $45, $4E, $44   ; 
- D 0 - I - 0x01529D 05:928D: 5C        .byte $5C   ; 
- D 0 - I - 0x01529E 05:928E: FF        .byte con_end_of_text   ; 



_off003_928F_17:
; THE NEXT OPPONENT
- D 0 - I - 0x01529F 05:928F: 54        .byte $54, $48, $45, $30, $4E, $45, $58, $54, $30, $4F, $50, $50, $4F, $4E, $45, $4E   ; 
- D 0 - I - 0x0152AF 05:929F: 54        .byte $54   ; 
- D 0 - I - 0x0152B0 05:92A0: FE        .byte con_new_line   ; 
; WILL BE ME,
- D 0 - I - 0x0152B1 05:92A1: 57        .byte $57, $49, $4C, $4C, $30, $42, $45, $30, $4D, $45, $5D   ; 
- D 0 - I - 0x0152BC 05:92AC: FE        .byte con_new_line   ; 
; THE LEADER OF THIS PLAN.
- D 0 - I - 0x0152BD 05:92AD: 54        .byte $54, $48, $45, $30, $4C, $45, $41, $44, $45, $52, $30, $4F, $46, $30, $54, $48   ; 
- D 0 - I - 0x0152CD 05:92BD: 49        .byte $49, $53, $30, $50, $4C, $41, $4E, $5C   ; 
- D 0 - I - 0x0152D5 05:92C5: FE        .byte con_new_line   ; 
; WAIT FOR ME!
- D 0 - I - 0x0152D6 05:92C6: 57        .byte $57, $41, $49, $54, $30, $46, $4F, $52, $30, $4D, $45, $3D   ; 
- D 0 - I - 0x0152E2 05:92D2: FD        .byte con_end_of_cutscene   ; 



_off012_0x0152E3_0E_player_select:
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 0 - I - 0x0152E3 05:92D3: 00 20     .word $2000 ; 

- D 0 - I - 0x0152E5 05:92D5: 04        .byte $04   ; 
- D 0 - I - 0x0152E6 05:92D6: 80        .byte $80   ; 

- D 0 - I - 0x0152E7 05:92D7: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0152E8 05:92D8: 81        .byte $81   ; 

- D 0 - I - 0x0152E9 05:92D9: 0F        .byte $0F   ; 
- D 0 - I - 0x0152EA 05:92DA: 82        .byte $82   ; 

- D 0 - I - 0x0152EB 05:92DB: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0152EC 05:92DC: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x0152EE 05:92DE: 0D        .byte $0D   ; 
- D 0 - I - 0x0152EF 05:92DF: 80        .byte $80   ; 

- D 0 - I - 0x0152F0 05:92E0: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0152F1 05:92E1: 81        .byte $81   ; 

- D 0 - I - 0x0152F2 05:92E2: 0F        .byte $0F   ; 
- D 0 - I - 0x0152F3 05:92E3: 82        .byte $82   ; 

- D 0 - I - 0x0152F4 05:92E4: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0152F5 05:92E5: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x0152F7 05:92E7: 0D        .byte $0D   ; 
- D 0 - I - 0x0152F8 05:92E8: 80        .byte $80   ; 

- D 0 - I - 0x0152F9 05:92E9: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0152FA 05:92EA: 81        .byte $81   ; 

- D 0 - I - 0x0152FB 05:92EB: 0F        .byte $0F   ; 
- D 0 - I - 0x0152FC 05:92EC: 82        .byte $82   ; 

- D 0 - I - 0x0152FD 05:92ED: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0152FE 05:92EE: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x015300 05:92F0: 0D        .byte $0D   ; 
- D 0 - I - 0x015301 05:92F1: 80        .byte $80   ; 

- D 0 - I - 0x015302 05:92F2: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015303 05:92F3: 81        .byte $81   ; 

- D 0 - I - 0x015304 05:92F4: 0F        .byte $0F   ; 
- D 0 - I - 0x015305 05:92F5: 82        .byte $82   ; 

- D 0 - I - 0x015306 05:92F6: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015307 05:92F7: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x015309 05:92F9: 05        .byte $05   ; 
- D 0 - I - 0x01530A 05:92FA: 80        .byte $80   ; 

- D 0 - I - 0x01530B 05:92FB: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01530C 05:92FC: 91        .byte $91   ; 

- D 0 - I - 0x01530D 05:92FD: 04        .byte $04   ; 
- D 0 - I - 0x01530E 05:92FE: 92        .byte $92   ; 

- D 0 - I - 0x01530F 05:92FF: 84        .byte $80 + $04   ; 
- D 0 - I - 0x015310 05:9300: B7        .byte $B7, $80, $80, $81   ; 

- D 0 - I - 0x015314 05:9304: 05        .byte $05   ; 
- D 0 - I - 0x015315 05:9305: 82        .byte $82   ; 

- D 0 - I - 0x015316 05:9306: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x015317 05:9307: 83        .byte $83, $84, $85, $86, $87, $83, $82, $88, $87, $84, $87, $B8, $B9   ; 

- D 0 - I - 0x015324 05:9314: 05        .byte $05   ; 
- D 0 - I - 0x015325 05:9315: 80        .byte $80   ; 

- D 0 - I - 0x015326 05:9316: 88        .byte $80 + $08   ; 
- D 0 - I - 0x015327 05:9317: 93        .byte $93, $27, $11, $19, $24, $BA, $80, $80   ; 

- D 0 - I - 0x01532F 05:931F: 06        .byte $06   ; 
- D 0 - I - 0x015330 05:9320: 82        .byte $82   ; 

- D 0 - I - 0x015331 05:9321: 88        .byte $80 + $08   ; 
- D 0 - I - 0x015332 05:9322: 89        .byte $89, $8A, $8B, $8C, $8A, $8D, $82, $8E   ; 

- D 0 - I - 0x01533A 05:932A: 03        .byte $03   ; 
- D 0 - I - 0x01533B 05:932B: 8A        .byte $8A   ; 

- D 0 - I - 0x01533C 05:932C: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01533D 05:932D: BB        .byte $BB, $BC   ; 

- D 0 - I - 0x01533F 05:932F: 05        .byte $05   ; 
- D 0 - I - 0x015340 05:9330: 80        .byte $80   ; 

- D 0 - I - 0x015341 05:9331: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015342 05:9332: BD        .byte $BD   ; 

- D 0 - I - 0x015343 05:9333: 04        .byte $04   ; 
- D 0 - I - 0x015344 05:9334: BE        .byte $BE   ; 

- D 0 - I - 0x015345 05:9335: 83        .byte $80 + $03   ; 
- D 0 - I - 0x015346 05:9336: BF        .byte $BF, $80, $80   ; 

- D 0 - I - 0x015349 05:9339: 0E        .byte $0E   ; 
- D 0 - I - 0x01534A 05:933A: 82        .byte $82   ; 

- D 0 - I - 0x01534B 05:933B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01534C 05:933C: 8F        .byte $8F, $90   ; 

- D 0 - I - 0x01534E 05:933E: 10        .byte $10   ; 
- D 0 - I - 0x01534F 05:933F: 80        .byte $80   ; 

- D 0 - I - 0x015350 05:9340: 03        .byte $03   ; 
- D 0 - I - 0x015351 05:9341: 82        .byte $82   ; 

- D 0 - I - 0x015352 05:9342: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015353 05:9343: 91        .byte $91   ; 

- D 0 - I - 0x015354 05:9344: 0C        .byte $0C   ; 
- D 0 - I - 0x015355 05:9345: 92        .byte $92   ; 

- D 0 - I - 0x015356 05:9346: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015357 05:9347: B7        .byte $B7, $91   ; 

- D 0 - I - 0x015359 05:9349: 0C        .byte $0C   ; 
- D 0 - I - 0x01535A 05:934A: 92        .byte $92   ; 

- D 0 - I - 0x01535B 05:934B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01535C 05:934C: B7        .byte $B7, $80   ; 

- D 0 - I - 0x01535E 05:934E: 03        .byte $03   ; 
- D 0 - I - 0x01535F 05:934F: 82        .byte $82   ; 

- D 0 - I - 0x015360 05:9350: 89        .byte $80 + $09   ; 
- D 0 - I - 0x015361 05:9351: 93        .byte $93, $00, $95, $96, $97, $98, $98, $99, $9A   ; 

- D 0 - I - 0x01536A 05:935A: 04        .byte $04   ; 
- D 0 - I - 0x01536B 05:935B: 98        .byte $98   ; 

- D 0 - I - 0x01536C 05:935C: 89        .byte $80 + $09   ; 
- D 0 - I - 0x01536D 05:935D: BA        .byte $BA, $93, $00, $C0, $C1, $C2, $98, $99, $9A   ; 

- D 0 - I - 0x015376 05:9366: 05        .byte $05   ; 
- D 0 - I - 0x015377 05:9367: 98        .byte $98   ; 

- D 0 - I - 0x015378 05:9368: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015379 05:9369: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01537B 05:936B: 03        .byte $03   ; 
- D 0 - I - 0x01537C 05:936C: 82        .byte $82   ; 

- D 0 - I - 0x01537D 05:936D: 89        .byte $80 + $09   ; 
- D 0 - I - 0x01537E 05:936E: 93        .byte $93, $9B, $9C, $9D, $9E, $98, $98, $9F, $A0   ; 

- D 0 - I - 0x015387 05:9377: 04        .byte $04   ; 
- D 0 - I - 0x015388 05:9378: 98        .byte $98   ; 

- D 0 - I - 0x015389 05:9379: 8B        .byte $80 + $0B   ; 
- D 0 - I - 0x01538A 05:937A: BA        .byte $BA, $93, $00, $C3, $C4, $C5, $98, $9F, $A0, $98, $C6   ; 

- D 0 - I - 0x015395 05:9385: 03        .byte $03   ; 
- D 0 - I - 0x015396 05:9386: 98        .byte $98   ; 

- D 0 - I - 0x015397 05:9387: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015398 05:9388: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01539A 05:938A: 03        .byte $03   ; 
- D 0 - I - 0x01539B 05:938B: 82        .byte $82   ; 

- D 0 - I - 0x01539C 05:938C: 85        .byte $80 + $05   ; 
- D 0 - I - 0x01539D 05:938D: 93        .byte $93, $00, $A1, $A2, $A3   ; 

- D 0 - I - 0x0153A2 05:9392: 08        .byte $08   ; 
- D 0 - I - 0x0153A3 05:9393: 98        .byte $98   ; 

- D 0 - I - 0x0153A4 05:9394: 90        .byte $80 + $10   ; 
- D 0 - I - 0x0153A5 05:9395: BA        .byte $BA, $93, $C7, $C8, $C9, $CA, $98, $98, $CB, $CC, $CD, $AC, $AC, $98, $BA, $80   ; 

- D 0 - I - 0x0153B5 05:93A5: 03        .byte $03   ; 
- D 0 - I - 0x0153B6 05:93A6: 82        .byte $82   ; 

- D 0 - I - 0x0153B7 05:93A7: 93        .byte $80 + $13   ; 
- D 0 - I - 0x0153B8 05:93A8: 93        .byte $93, $A4, $A5, $A6, $A7, $98, $A8, $A9, $98, $AA, $AB, $AC, $98, $BA, $93, $00   ; 
- D 0 - I - 0x0153C8 05:93B8: CE        .byte $CE, $CF, $D0   ; 

- D 0 - I - 0x0153CB 05:93BB: 04        .byte $04   ; 
- D 0 - I - 0x0153CC 05:93BC: 98        .byte $98   ; 

- D 0 - I - 0x0153CD 05:93BD: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0153CE 05:93BE: C6        .byte $C6   ; 

- D 0 - I - 0x0153CF 05:93BF: 03        .byte $03   ; 
- D 0 - I - 0x0153D0 05:93C0: 98        .byte $98   ; 

- D 0 - I - 0x0153D1 05:93C1: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0153D2 05:93C2: BA        .byte $BA, $80   ; 

- D 0 - I - 0x0153D4 05:93C4: 03        .byte $03   ; 
- D 0 - I - 0x0153D5 05:93C5: 82        .byte $82   ; 

- D 0 - I - 0x0153D6 05:93C6: 9D        .byte $80 + $1D   ; 
- D 0 - I - 0x0153D7 05:93C7: 93        .byte $93, $AD, $AE, $AF, $B0, $98, $B1, $B2, $98, $B3, $B4, $98, $98, $BA, $93, $D1   ; 
- D 0 - I - 0x0153E7 05:93D7: D2        .byte $D2, $D3, $D4, $98, $98, $CB, $AA, $AB, $D5, $D5, $98, $BA, $80   ; 

- D 0 - I - 0x0153F4 05:93E4: 03        .byte $03   ; 
- D 0 - I - 0x0153F5 05:93E5: 82        .byte $82   ; 

- D 0 - I - 0x0153F6 05:93E6: 85        .byte $80 + $05   ; 
- D 0 - I - 0x0153F7 05:93E7: 93        .byte $93, $00, $B5, $B6, $00   ; 

- D 0 - I - 0x0153FC 05:93EC: 08        .byte $08   ; 
- D 0 - I - 0x0153FD 05:93ED: 98        .byte $98   ; 

- D 0 - I - 0x0153FE 05:93EE: 86        .byte $80 + $06   ; 
- D 0 - I - 0x0153FF 05:93EF: BA        .byte $BA, $93, $D6, $D7, $D8, $00   ; 

- D 0 - I - 0x015405 05:93F5: 03        .byte $03   ; 
- D 0 - I - 0x015406 05:93F6: 98        .byte $98   ; 

- D 0 - I - 0x015407 05:93F7: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015408 05:93F8: 9F        .byte $9F, $A0   ; 

- D 0 - I - 0x01540A 05:93FA: 03        .byte $03   ; 
- D 0 - I - 0x01540B 05:93FB: 98        .byte $98   ; 

- D 0 - I - 0x01540C 05:93FC: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01540D 05:93FD: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01540F 05:93FF: 03        .byte $03   ; 
- D 0 - I - 0x015410 05:9400: 82        .byte $82   ; 

- D 0 - I - 0x015411 05:9401: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015412 05:9402: 93        .byte $93   ; 

- D 0 - I - 0x015413 05:9403: 0C        .byte $0C   ; 
- D 0 - I - 0x015414 05:9404: 00        .byte $00   ; 

- D 0 - I - 0x015415 05:9405: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015416 05:9406: BA        .byte $BA, $93   ; 

- D 0 - I - 0x015418 05:9408: 0C        .byte $0C   ; 
- D 0 - I - 0x015419 05:9409: 00        .byte $00   ; 

- D 0 - I - 0x01541A 05:940A: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01541B 05:940B: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01541D 05:940D: 03        .byte $03   ; 
- D 0 - I - 0x01541E 05:940E: 82        .byte $82   ; 

- D 0 - I - 0x01541F 05:940F: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015420 05:9410: 93        .byte $93   ; 

- D 0 - I - 0x015421 05:9411: 03        .byte $03   ; 
- D 0 - I - 0x015422 05:9412: 00        .byte $00   ; 

- D 0 - I - 0x015423 05:9413: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015424 05:9414: 12        .byte $12, $25, $22, $1E, $23   ; BURNS

- D 0 - I - 0x015429 05:9419: 04        .byte $04   ; 
- D 0 - I - 0x01542A 05:941A: 00        .byte $00   ; 

- D 0 - I - 0x01542B 05:941B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01542C 05:941C: BA        .byte $BA, $93   ; 

- D 0 - I - 0x01542E 05:941E: 03        .byte $03   ; 
- D 0 - I - 0x01542F 05:941F: 00        .byte $00   ; 

- D 0 - I - 0x015430 05:9420: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015431 05:9421: 23        .byte $23, $1D, $19, $24, $18   ; SMITH

- D 0 - I - 0x015436 05:9426: 04        .byte $04   ; 
- D 0 - I - 0x015437 05:9427: 00        .byte $00   ; 

- D 0 - I - 0x015438 05:9428: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015439 05:9429: BA        .byte $BA, $80   ; 

- D 0 - I - 0x01543B 05:942B: 03        .byte $03   ; 
- D 0 - I - 0x01543C 05:942C: 82        .byte $82   ; 

- D 0 - I - 0x01543D 05:942D: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01543E 05:942E: BD        .byte $BD   ; 

- D 0 - I - 0x01543F 05:942F: 0C        .byte $0C   ; 
- D 0 - I - 0x015440 05:9430: BE        .byte $BE   ; 

- D 0 - I - 0x015441 05:9431: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015442 05:9432: BF        .byte $BF, $BD   ; 

- D 0 - I - 0x015444 05:9434: 0C        .byte $0C   ; 
- D 0 - I - 0x015445 05:9435: BE        .byte $BE   ; 

- D 0 - I - 0x015446 05:9436: 86        .byte $80 + $06   ; 
- D 0 - I - 0x015447 05:9437: BF        .byte $BF, $80, $82, $82, $8F, $91   ; 

- D 0 - I - 0x01544D 05:943D: 0C        .byte $0C   ; 
- D 0 - I - 0x01544E 05:943E: 92        .byte $92   ; 

- D 0 - I - 0x01544F 05:943F: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015450 05:9440: B7        .byte $B7, $91   ; 

- D 0 - I - 0x015452 05:9442: 0C        .byte $0C   ; 
- D 0 - I - 0x015453 05:9443: 92        .byte $92   ; 

- D 0 - I - 0x015454 05:9444: 86        .byte $80 + $06   ; 
- D 0 - I - 0x015455 05:9445: B7        .byte $B7, $80, $82, $8F, $90, $93   ; 

- D 0 - I - 0x01545B 05:944B: 04        .byte $04   ; 
- D 0 - I - 0x01545C 05:944C: 00        .byte $00   ; 

- D 0 - I - 0x01545D 05:944D: 02        .byte $02   ; 
- D 0 - I - 0x01545E 05:944E: 98        .byte $98   ; 

- D 0 - I - 0x01545F 05:944F: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015460 05:9450: 99        .byte $99, $9A   ; 

- D 0 - I - 0x015462 05:9452: 04        .byte $04   ; 
- D 0 - I - 0x015463 05:9453: 98        .byte $98   ; 

- D 0 - I - 0x015464 05:9454: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015465 05:9455: BA        .byte $BA, $93   ; 

- D 0 - I - 0x015467 05:9457: 04        .byte $04   ; 
- D 0 - I - 0x015468 05:9458: 00        .byte $00   ; 

- D 0 - I - 0x015469 05:9459: 02        .byte $02   ; 
- D 0 - I - 0x01546A 05:945A: 98        .byte $98   ; 

- D 0 - I - 0x01546B 05:945B: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01546C 05:945C: 99        .byte $99, $9A   ; 

- D 0 - I - 0x01546E 05:945E: 04        .byte $04   ; 
- D 0 - I - 0x01546F 05:945F: 98        .byte $98   ; 

- D 0 - I - 0x015470 05:9460: 8E        .byte $80 + $0E   ; 
- D 0 - I - 0x015471 05:9461: BA        .byte $BA, $80, $8F, $90, $80, $93, $00, $D9, $DA, $DB, $98, $98, $9F, $A0   ; 

- D 0 - I - 0x01547F 05:946F: 04        .byte $04   ; 
- D 0 - I - 0x015480 05:9470: 98        .byte $98   ; 

- D 0 - I - 0x015481 05:9471: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x015482 05:9472: BA        .byte $BA, $93, $E9, $EA, $EB, $EC, $98, $98, $9F, $A0   ; 

- D 0 - I - 0x01548C 05:947C: 04        .byte $04   ; 
- D 0 - I - 0x01548D 05:947D: 98        .byte $98   ; 

- D 0 - I - 0x01548E 05:947E: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x01548F 05:947F: BA        .byte $BA, $80, $90, $80, $80, $93, $00, $DC, $DD, $DE   ; 

- D 0 - I - 0x015499 05:9489: 04        .byte $04   ; 
- D 0 - I - 0x01549A 05:948A: 98        .byte $98   ; 

- D 0 - I - 0x01549B 05:948B: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x01549C 05:948C: AA        .byte $AA, $AB, $D5, $98, $BA, $93, $ED, $EE, $EF, $F0   ; 

- D 0 - I - 0x0154A6 05:9496: 08        .byte $08   ; 
- D 0 - I - 0x0154A7 05:9497: 98        .byte $98   ; 

- D 0 - I - 0x0154A8 05:9498: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154A9 05:9499: BA        .byte $BA   ; 

- D 0 - I - 0x0154AA 05:949A: 04        .byte $04   ; 
- D 0 - I - 0x0154AB 05:949B: 80        .byte $80   ; 

- D 0 - I - 0x0154AC 05:949C: 85        .byte $80 + $05   ; 
- D 0 - I - 0x0154AD 05:949D: 93        .byte $93, $DF, $E0, $E1, $E2   ; 

- D 0 - I - 0x0154B2 05:94A2: 04        .byte $04   ; 
- D 0 - I - 0x0154B3 05:94A3: 98        .byte $98   ; 

- D 0 - I - 0x0154B4 05:94A4: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154B5 05:94A5: B3        .byte $B3   ; 

- D 0 - I - 0x0154B6 05:94A6: 03        .byte $03   ; 
- D 0 - I - 0x0154B7 05:94A7: 98        .byte $98   ; 

- D 0 - I - 0x0154B8 05:94A8: 8F        .byte $80 + $0F   ; 
- D 0 - I - 0x0154B9 05:94A9: BA        .byte $BA, $93, $F1, $F2, $F3, $F4, $98, $98, $F5, $F6, $98, $F7, $98, $98, $BA   ; 

- D 0 - I - 0x0154C8 05:94B8: 04        .byte $04   ; 
- D 0 - I - 0x0154C9 05:94B9: 80        .byte $80   ; 

- D 0 - I - 0x0154CA 05:94BA: 9C        .byte $80 + $1C   ; 
- D 0 - I - 0x0154CB 05:94BB: 93        .byte $93, $00, $E3, $E4, $E5, $98, $98, $AA, $D5, $AB, $D5, $D5, $98, $BA, $93, $00   ; 
- D 0 - I - 0x0154DB 05:94CB: F8        .byte $F8, $F9, $FA, $98, $98, $FB, $FC, $98, $FD, $98, $98, $BA   ; 

- D 0 - I - 0x0154E7 05:94D7: 04        .byte $04   ; 
- D 0 - I - 0x0154E8 05:94D8: 80        .byte $80   ; 

- D 0 - I - 0x0154E9 05:94D9: 85        .byte $80 + $05   ; 
- D 0 - I - 0x0154EA 05:94DA: 93        .byte $93, $00, $E6, $E7, $E8   ; 

- D 0 - I - 0x0154EF 05:94DF: 04        .byte $04   ; 
- D 0 - I - 0x0154F0 05:94E0: 98        .byte $98   ; 

- D 0 - I - 0x0154F1 05:94E1: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154F2 05:94E2: B4        .byte $B4   ; 

- D 0 - I - 0x0154F3 05:94E3: 03        .byte $03   ; 
- D 0 - I - 0x0154F4 05:94E4: 98        .byte $98   ; 

- D 0 - I - 0x0154F5 05:94E5: 86        .byte $80 + $06   ; 
- D 0 - I - 0x0154F6 05:94E6: BA        .byte $BA, $93, $00, $00, $FE, $94   ; 

- D 0 - I - 0x0154FC 05:94EC: 08        .byte $08   ; 
- D 0 - I - 0x0154FD 05:94ED: 98        .byte $98   ; 

- D 0 - I - 0x0154FE 05:94EE: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0154FF 05:94EF: BA        .byte $BA   ; 

- D 0 - I - 0x015500 05:94F0: 04        .byte $04   ; 
- D 0 - I - 0x015501 05:94F1: 80        .byte $80   ; 

- D 0 - I - 0x015502 05:94F2: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015503 05:94F3: 93        .byte $93   ; 

- D 0 - I - 0x015504 05:94F4: 0C        .byte $0C   ; 
- D 0 - I - 0x015505 05:94F5: 00        .byte $00   ; 

- D 0 - I - 0x015506 05:94F6: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015507 05:94F7: BA        .byte $BA, $93   ; 

- D 0 - I - 0x015509 05:94F9: 0C        .byte $0C   ; 
- D 0 - I - 0x01550A 05:94FA: 00        .byte $00   ; 

- D 0 - I - 0x01550B 05:94FB: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01550C 05:94FC: BA        .byte $BA   ; 

- D 0 - I - 0x01550D 05:94FD: 04        .byte $04   ; 
- D 0 - I - 0x01550E 05:94FE: 80        .byte $80   ; 

- D 0 - I - 0x01550F 05:94FF: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015510 05:9500: 93        .byte $93   ; 

- D 0 - I - 0x015511 05:9501: 03        .byte $03   ; 
- D 0 - I - 0x015512 05:9502: 00        .byte $00   ; 

- D 0 - I - 0x015513 05:9503: 84        .byte $80 + $04   ; 
- D 0 - I - 0x015514 05:9504: 19        .byte $19, $22, $1F, $1E   ; IRON

- D 0 - I - 0x015518 05:9508: 05        .byte $05   ; 
- D 0 - I - 0x015519 05:9509: 00        .byte $00   ; 

- D 0 - I - 0x01551A 05:950A: 82        .byte $80 + $02   ; 
- D 0 - I - 0x01551B 05:950B: BA        .byte $BA, $93   ; 

- D 0 - I - 0x01551D 05:950D: 03        .byte $03   ; 
- D 0 - I - 0x01551E 05:950E: 00        .byte $00   ; 

- D 0 - I - 0x01551F 05:950F: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015520 05:9510: 12        .byte $12, $15, $11, $1E, $23   ; BEANS

- D 0 - I - 0x015525 05:9515: 04        .byte $04   ; 
- D 0 - I - 0x015526 05:9516: 00        .byte $00   ; 

- D 0 - I - 0x015527 05:9517: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015528 05:9518: BA        .byte $BA   ; 

- D 0 - I - 0x015529 05:9519: 04        .byte $04   ; 
- D 0 - I - 0x01552A 05:951A: 80        .byte $80   ; 

- D 0 - I - 0x01552B 05:951B: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01552C 05:951C: BD        .byte $BD   ; 

- D 0 - I - 0x01552D 05:951D: 0C        .byte $0C   ; 
- D 0 - I - 0x01552E 05:951E: BE        .byte $BE   ; 

- D 0 - I - 0x01552F 05:951F: 82        .byte $80 + $02   ; 
- D 0 - I - 0x015530 05:9520: BF        .byte $BF, $BD   ; 

- D 0 - I - 0x015532 05:9522: 0C        .byte $0C   ; 
- D 0 - I - 0x015533 05:9523: BE        .byte $BE   ; 

- D 0 - I - 0x015534 05:9524: 81        .byte $80 + $01   ; 
- D 0 - I - 0x015535 05:9525: BF        .byte $BF   ; 

- D 0 - I - 0x015536 05:9526: 61        .byte $61   ; 
- D 0 - I - 0x015537 05:9527: 80        .byte $80   ; 

- D 0 - I - 0x015538 05:9528: 11        .byte $11   ; 
- D 0 - I - 0x015539 05:9529: FF        .byte $FF   ; 

- D 0 - I - 0x01553A 05:952A: 03        .byte $03   ; 
- D 0 - I - 0x01553B 05:952B: AA        .byte $AA   ; 

- D 0 - I - 0x01553C 05:952C: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x01553D 05:952D: BB        .byte $BB, $AA, $AA, $EE, $FF, $AA, $AA, $8A, $BB, $AA, $AA, $EE, $FF   ; 

- D 0 - I - 0x01554A 05:953A: 03        .byte $03   ; 
- D 0 - I - 0x01554B 05:953B: AF        .byte $AF   ; 

- D 0 - I - 0x01554C 05:953C: 85        .byte $80 + $05   ; 
- D 0 - I - 0x01554D 05:953D: BF        .byte $BF, $AF, $AF, $EF, $FF   ; 

- D 0 - I - 0x015552 05:9542: 03        .byte $03   ; 
- D 0 - I - 0x015553 05:9543: AA        .byte $AA   ; 

- D 0 - I - 0x015554 05:9544: 85        .byte $80 + $05   ; 
- D 0 - I - 0x015555 05:9545: BB        .byte $BB, $AA, $AA, $EE, $FF   ; 

- D 0 - I - 0x01555A 05:954A: 03        .byte $03   ; 
- D 0 - I - 0x01555B 05:954B: FA        .byte $FA   ; 

- D 0 - I - 0x01555C 05:954C: 84        .byte $80 + $04   ; 
- D 0 - I - 0x01555D 05:954D: FB        .byte $FB, $FA, $FA, $FE   ; 

- D 0 - I - 0x015561 05:9551: 08        .byte $08   ; 
- D 0 - I - 0x015562 05:9552: FF        .byte $FF   ; 

- D 0 - I - 0x015563 05:9553: FF        .byte $FF   ; end token



_off012_0x015564_04_title_screen:
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 0 - I - 0x015564 05:9554: 00 20     .word $2000 ; 

- D 0 - I - 0x015566 05:9556: 7E        .byte $7E   ; 
- D 0 - I - 0x015567 05:9557: 00        .byte $00   ; 

- D 0 - I - 0x015568 05:9558: 0C        .byte $0C   ; 
- D 0 - I - 0x015569 05:9559: 00        .byte $00   ; 

- D 0 - I - 0x01556A 05:955A: 8C        .byte $80 + $0C   ; 
- D 0 - I - 0x01556B 05:955B: D0        .byte $D0, $C0, $D2, $EC, $ED, $EE, $EF, $D9, $CC, $CD, $CE, $CF   ; 

- D 0 - I - 0x015577 05:9567: 14        .byte $14   ; 
- D 0 - I - 0x015578 05:9568: 00        .byte $00   ; 

- D 0 - I - 0x015579 05:9569: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x01557A 05:956A: FB        .byte $FB, $AB, $D1, $FC, $FD, $FE, $DA, $DB, $DC, $DD, $DE, $DF, $BF   ; 

- D 0 - I - 0x015587 05:9577: 14        .byte $14   ; 
- D 0 - I - 0x015588 05:9578: 00        .byte $00   ; 

- D 0 - I - 0x015589 05:9579: 81        .byte $80 + $01   ; 
- D 0 - I - 0x01558A 05:957A: BB        .byte $BB   ; 

- D 0 - I - 0x01558B 05:957B: 3A        .byte $3A   ; 
- D 0 - I - 0x01558C 05:957C: 00        .byte $00   ; 

- D 0 - I - 0x01558D 05:957D: 86        .byte $80 + $06   ; 
- D 0 - I - 0x01558E 05:957E: 42        .byte $42, $43, $44, $45, $46, $47   ; 

- D 0 - I - 0x015594 05:9584: 19        .byte $19   ; 
- D 0 - I - 0x015595 05:9585: 00        .byte $00   ; 

- D 0 - I - 0x015596 05:9586: 89        .byte $80 + $09   ; 
- D 0 - I - 0x015597 05:9587: 51        .byte $51, $52, $53, $54, $55, $56, $57, $58, $59   ; 

- D 0 - I - 0x0155A0 05:9590: 16        .byte $16   ; 
- D 0 - I - 0x0155A1 05:9591: 00        .byte $00   ; 

- D 0 - I - 0x0155A2 05:9592: 8A        .byte $80 + $0A   ; 
- D 0 - I - 0x0155A3 05:9593: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67, $68, $69   ; 

- D 0 - I - 0x0155AD 05:959D: 16        .byte $16   ; 
- D 0 - I - 0x0155AE 05:959E: 00        .byte $00   ; 

- D 0 - I - 0x0155AF 05:959F: 83        .byte $80 + $03   ; 
- D 0 - I - 0x0155B0 05:95A0: 70        .byte $70, $71, $72   ; 

- D 0 - I - 0x0155B3 05:95A3: 04        .byte $04   ; 
- D 0 - I - 0x0155B4 05:95A4: 00        .byte $00   ; 

- D 0 - I - 0x0155B5 05:95A5: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0155B6 05:95A6: 77        .byte $77, $78   ; 

- D 0 - I - 0x0155B8 05:95A8: 17        .byte $17   ; 
- D 0 - I - 0x0155B9 05:95A9: 00        .byte $00   ; 

- D 0 - I - 0x0155BA 05:95AA: 96        .byte $80 + $16   ; 
- D 0 - I - 0x0155BB 05:95AB: 80        .byte $80, $81, $82, $00, $00, $73, $84, $85, $86, $87, $88, $89, $8A, $8B, $8C, $8D   ; 
- D 0 - I - 0x0155CB 05:95BB: 8E        .byte $8E, $8F, $74, $75, $76, $79   ; 

- D 0 - I - 0x0155D1 05:95C1: 0A        .byte $0A   ; 
- D 0 - I - 0x0155D2 05:95C2: 00        .byte $00   ; 

- D 0 - I - 0x0155D3 05:95C3: 97        .byte $80 + $17   ; 
- D 0 - I - 0x0155D4 05:95C4: 90        .byte $90, $91, $92, $00, $00, $83, $94, $95, $96, $97, $98, $99, $9A, $9B, $9C, $9D   ; 
- D 0 - I - 0x0155E4 05:95D4: 9E        .byte $9E, $9F, $5A, $5B, $5C, $5D, $5E   ; 

- D 0 - I - 0x0155EB 05:95DB: 09        .byte $09   ; 
- D 0 - I - 0x0155EC 05:95DC: 00        .byte $00   ; 

- D 0 - I - 0x0155ED 05:95DD: 98        .byte $80 + $18   ; 
- D 0 - I - 0x0155EE 05:95DE: A0        .byte $A0, $A1, $A2, $00, $00, $93, $A4, $A5, $A6, $A7, $A8, $A9, $AA, $00, $AC, $AD   ; 
- D 0 - I - 0x0155FE 05:95EE: 6C        .byte $6C, $AF, $6A, $6B, $6C, $6D, $6E, $6F   ; 

- D 0 - I - 0x015606 05:95F6: 08        .byte $08   ; 
- D 0 - I - 0x015607 05:95F7: 00        .byte $00   ; 

- D 0 - I - 0x015608 05:95F8: 98        .byte $80 + $18   ; 
- D 0 - I - 0x015609 05:95F9: B0        .byte $B0, $B1, $B2, $B3, $00, $A3, $B4, $B4, $B6, $B7, $B8, $B9, $BA, $00, $BC, $BD   ; 
- D 0 - I - 0x015619 05:9609: BE        .byte $BE, $7D, $7A, $7B, $7C, $7D, $7E, $7F   ; 

- D 0 - I - 0x015621 05:9611: 09        .byte $09   ; 
- D 0 - I - 0x015622 05:9612: 00        .byte $00   ; 

- D 0 - I - 0x015623 05:9613: 99        .byte $80 + $19   ; 
- D 0 - I - 0x015624 05:9614: C1        .byte $C1, $C2, $C3, $C4, $C5, $C6, $C7, $C8, $C9, $CA, $CB, $00, $00, $E0, $E1, $E2   ; 
- D 0 - I - 0x015634 05:9624: E3        .byte $E3, $E4, $E5, $E6, $E7, $E8, $E9, $EA, $EB   ; 

- D 0 - I - 0x01563D 05:962D: 09        .byte $09   ; 
- D 0 - I - 0x01563E 05:962E: 00        .byte $00   ; 

- D 0 - I - 0x01563F 05:962F: 86        .byte $80 + $06   ; 
- D 0 - I - 0x015640 05:9630: D3        .byte $D3, $D4, $D5, $D6, $D7, $D8   ; 

- D 0 - I - 0x015646 05:9636: 05        .byte $05   ; 
- D 0 - I - 0x015647 05:9637: 00        .byte $00   ; 

- D 0 - I - 0x015648 05:9638: 8B        .byte $80 + $0B   ; 
- D 0 - I - 0x015649 05:9639: F0        .byte $F0, $F1, $F2, $F3, $F4, $F5, $F6, $F7, $F8, $F9, $FA   ; 

- D 0 - I - 0x015654 05:9644: 4B        .byte $4B   ; 
- D 0 - I - 0x015655 05:9645: 00        .byte $00   ; 

- D 0 - I - 0x015656 05:9646: 91        .byte $80 + $11   ; 
- D 0 - I - 0x015657 05:9647: 20        .byte $20, $25, $23, $18, $00, $23, $24, $11, $22, $24, $00, $12, $25, $24, $24, $1F   ; 
- D 0 - I - 0x015667 05:9657: 1E        .byte $1E   ; 

- D 0 - I - 0x015668 05:9658: 51        .byte $51   ; 
- D 0 - I - 0x015669 05:9659: 00        .byte $00   ; 

- D 0 - I - 0x01566A 05:965A: 8D        .byte $80 + $0D   ; 
- D 0 - I - 0x01566B 05:965B: 24        .byte $24, $1D, $00, $11, $1E, $14, $00, $10, $00, $01, $09, $09, $02   ; 

- D 0 - I - 0x015678 05:9668: 12        .byte $12   ; 
- D 0 - I - 0x015679 05:9669: 00        .byte $00   ; 

- D 0 - I - 0x01567A 05:966A: 90        .byte $80 + $10   ; 
- D 0 - I - 0x01567B 05:966B: 1B        .byte $1B, $1F, $1E, $11, $1D, $19, $00, $00, $13, $1F, $2C, $2D, $1C, $24, $14, $2C   ; 

- D 0 - I - 0x01568B 05:967B: 13        .byte $13   ; 
- D 0 - I - 0x01568C 05:967C: 00        .byte $00   ; 

- D 0 - I - 0x01568D 05:967D: 8B        .byte $80 + $0B   ; 
- D 0 - I - 0x01568E 05:967E: 1C        .byte $1C, $19, $13, $15, $1E, $23, $15, $14, $00, $12, $29   ; 

- D 0 - I - 0x015699 05:9689: 0E        .byte $0E   ; 
- D 0 - I - 0x01569A 05:968A: 00        .byte $00   ; 

- D 0 - I - 0x01569B 05:968B: 98        .byte $80 + $18   ; 
- D 0 - I - 0x01569C 05:968C: 1E        .byte $1E, $19, $1E, $24, $15, $1E, $14, $1F, $00, $1F, $16, $00, $11, $1D, $15, $22   ; 
- D 0 - I - 0x0156AC 05:969C: 19        .byte $19, $13, $11, $00, $19, $1E, $13, $2C   ; 

- D 0 - I - 0x0156B4 05:96A4: 74        .byte $74   ; 
- D 0 - I - 0x0156B5 05:96A5: 00        .byte $00   ; 

- D 0 - I - 0x0156B6 05:96A6: 83        .byte $80 + $03   ; 
- D 0 - I - 0x0156B7 05:96A7: 05        .byte $05, $55, $55   ; 

- D 0 - I - 0x0156BA 05:96AA: 06        .byte $06   ; 
- D 0 - I - 0x0156BB 05:96AB: 00        .byte $00   ; 

- D 0 - I - 0x0156BC 05:96AC: 05        .byte $05   ; 
- D 0 - I - 0x0156BD 05:96AD: AA        .byte $AA   ; 

- D 0 - I - 0x0156BE 05:96AE: 05        .byte $05   ; 
- D 0 - I - 0x0156BF 05:96AF: 00        .byte $00   ; 

- D 0 - I - 0x0156C0 05:96B0: 87        .byte $80 + $07   ; 
- D 0 - I - 0x0156C1 05:96B1: 0C        .byte $0C, $0F, $0F, $07, $00, $00, $4A   ; 

- D 0 - I - 0x0156C8 05:96B8: 03        .byte $03   ; 
- D 0 - I - 0x0156C9 05:96B9: 5A        .byte $5A   ; 

- D 0 - I - 0x0156CA 05:96BA: 84        .byte $80 + $04   ; 
- D 0 - I - 0x0156CB 05:96BB: 02        .byte $02, $00, $00, $50   ; 

- D 0 - I - 0x0156CF 05:96BF: 04        .byte $04   ; 
- D 0 - I - 0x0156D0 05:96C0: 55        .byte $55   ; 

- D 0 - I - 0x0156D1 05:96C1: 82        .byte $80 + $02   ; 
- D 0 - I - 0x0156D2 05:96C2: 51        .byte $51, $10   ; 

- D 0 - I - 0x0156D4 05:96C4: 07        .byte $07   ; 
- D 0 - I - 0x0156D5 05:96C5: 00        .byte $00   ; 

- D 0 - I - 0x0156D6 05:96C6: 81        .byte $80 + $01   ; 
- D 0 - I - 0x0156D7 05:96C7: 03        .byte $03   ; 

- D 0 - I - 0x0156D8 05:96C8: FF        .byte $FF   ; end token



sub_96C9:
loc_96C9:
C D 0 - - - 0x0156D9 05:96C9: C9 0D     CMP #con_DA9D_0D
C - - - - - 0x0156DB 05:96CB: F0 25     BEQ bra_96F2_0D
C - - - - - 0x0156DD 05:96CD: A8        TAY
C - - - - - 0x0156DE 05:96CE: B9 E0 96  LDA tbl_96E0,Y
C - - - - - 0x0156E1 05:96D1: F0 0A     BEQ bra_96DD
C - - - - - 0x0156E3 05:96D3: C9 FF     CMP #$FF
C - - - - - 0x0156E5 05:96D5: F0 05     BEQ bra_96DC
C - - - - - 0x0156E7 05:96D7: 84 1F     STY ram_001F
C - - - - - 0x0156E9 05:96D9: 4C B3 F3  JMP loc_0x01F3C3
bra_96DC:
C - - - - - 0x0156EC 05:96DC: 98        TYA
bra_96DD:
C - - - - - 0x0156ED 05:96DD: 4C 77 DA  JMP loc_0x01DA87



tbl_96E0:
- - - - - - 0x0156F0 05:96E0: 00        .byte $00   ; 00 
- D 0 - - - 0x0156F1 05:96E1: 05        .byte con_F3D6_05   ; 01 
- D 0 - - - 0x0156F2 05:96E2: 05        .byte con_F3D6_05   ; 02 
- D 0 - - - 0x0156F3 05:96E3: 05        .byte con_F3D6_05   ; 03 
- - - - - - 0x0156F4 05:96E4: 05        .byte con_F3D6_05   ; 04 
- D 0 - - - 0x0156F5 05:96E5: FF        .byte $FF   ; 05 
- - - - - - 0x0156F6 05:96E6: 00        .byte $00   ; 06 
- - - - - - 0x0156F7 05:96E7: 00        .byte $00   ; 07 
- - - - - - 0x0156F8 05:96E8: 00        .byte $00   ; 08 
- D 0 - - - 0x0156F9 05:96E9: 05        .byte con_F3D6_05   ; 09 
- - - - - - 0x0156FA 05:96EA: 05        .byte con_F3D6_05   ; 0A 
- D 0 - - - 0x0156FB 05:96EB: FF        .byte $FF   ; 0B 
- - - - - - 0x0156FC 05:96EC: FF        .byte $FF   ; 0C 
- - - - - - 0x0156FD 05:96ED: 05        .byte con_F3D6_05   ; 0D 
- D 0 - - - 0x0156FE 05:96EE: FF        .byte $FF   ; 0E 
- - - - - - 0x0156FF 05:96EF: FF        .byte $FF   ; 0F 
- - - - - - 0x015700 05:96F0: FF        .byte $FF   ; 10 
- D 0 - - - 0x015701 05:96F1: FF        .byte $FF   ; 11 



bra_96F2_0D:
sub_96F2:
C - - - - - 0x015702 05:96F2: 85 1F     STA ram_001F
C - - - - - 0x015704 05:96F4: A9 01     LDA #$01
C - - - - - 0x015706 05:96F6: 85 3D     STA ram_003D
C - - - - - 0x015708 05:96F8: A9 1B     LDA #con_F3D6_1B
C - - - - - 0x01570A 05:96FA: 4C B3 F3  JMP loc_0x01F3C3



sub_96FD:
sub_0x01570D:
C - - - - - 0x01570D 05:96FD: A4 BB     LDY ram_00BB
C - - - - - 0x01570F 05:96FF: 88        DEY
C - - - - - 0x015710 05:9700: D0 0A     BNE bra_970C
C - - - - - 0x015712 05:9702: 84 BC     STY ram_00BC
C - - - - - 0x015714 05:9704: 20 1A F5  JSR sub_0x01F52A
loc_9707:
C D 0 - - - 0x015717 05:9707: 90 02     BCC bra_970B_RTS
bra_9709:
loc_9709:
C D 0 - - - 0x015719 05:9709: E6 BB     INC ram_00BB
bra_970B_RTS:
C - - - - - 0x01571B 05:970B: 60        RTS
bra_970C:
C - - - - - 0x01571C 05:970C: 88        DEY
C - - - - - 0x01571D 05:970D: D0 28     BNE bra_9737
; Y = 00
C - - - - - 0x01571F 05:970F: 8C 61 03  STY ram_0361
C - - - - - 0x015722 05:9712: 84 5A     STY ram_005A_flag
C - - - - - 0x015724 05:9714: 84 61     STY ram_0061
C - - - - - 0x015726 05:9716: 20 74 D1  JSR sub_0x01D184
C - - - - - 0x015729 05:9719: A2 01     LDX #$01
C - - - - - 0x01572B 05:971B: 86 BD     STX ram_00BD
bra_971D_loop:
C - - - - - 0x01572D 05:971D: 20 40 F6  JSR sub_0x01F650
C - - - - - 0x015730 05:9720: A5 75     LDA ram_stage
C - - - - - 0x015732 05:9722: C9 03     CMP #$03
C - - - - - 0x015734 05:9724: F0 08     BEQ bra_972E
C - - - - - 0x015736 05:9726: A9 88     LDA #$88
C - - - - - 0x015738 05:9728: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x01573B 05:972B: 9D 4E 06  STA ram_obj_pos_X,X
bra_972E:
C - - - - - 0x01573E 05:972E: CA        DEX
C - - - - - 0x01573F 05:972F: 10 EC     BPL bra_971D_loop
C - - - - - 0x015741 05:9731: A9 04     LDA #$04
C - - - - - 0x015743 05:9733: 85 60     STA ram_0060
C - - - - - 0x015745 05:9735: D0 D2     BNE bra_9709    ; jmp
bra_9737:
C - - - - - 0x015747 05:9737: 88        DEY
C - - - - - 0x015748 05:9738: D0 43     BNE bra_977D
C - - - - - 0x01574A 05:973A: A0 14     LDY #$14
C - - - - - 0x01574C 05:973C: A5 75     LDA ram_stage
C - - - - - 0x01574E 05:973E: C9 03     CMP #$03
C - - - - - 0x015750 05:9740: D0 19     BNE bra_975B
C - - - - - 0x015752 05:9742: A9 40     LDA #$40
C - - - - - 0x015754 05:9744: 85 FC     STA ram_scroll_Y
C - - - - - 0x015756 05:9746: A9 F8     LDA #$F8
C - - - - - 0x015758 05:9748: 85 FD     STA ram_scroll_X
C - - - - - 0x01575A 05:974A: A5 FF     LDA ram_for_2000
C - - - - - 0x01575C 05:974C: 29 FC     AND #$FC
C - - - - - 0x01575E 05:974E: 85 FF     STA ram_for_2000
C - - - - - 0x015760 05:9750: A0 18     LDY #$18
C - - - - - 0x015762 05:9752: 20 52 98  JSR sub_9852
C - - - - - 0x015765 05:9755: 20 B2 98  JSR sub_98B2
C - - - - - 0x015768 05:9758: 4C 77 97  JMP loc_9777
bra_975B:
C - - - - - 0x01576B 05:975B: AD 61 03  LDA ram_0361
C - - - - - 0x01576E 05:975E: 85 25     STA ram_0025
C - - - - - 0x015770 05:9760: D0 06     BNE bra_9768
C - - - - - 0x015772 05:9762: 20 52 98  JSR sub_9852
C - - - - - 0x015775 05:9765: 4C 70 FE  JMP loc_0x01FE80
bra_9768:
C - - - - - 0x015778 05:9768: 20 BF 98  JSR sub_98BF
C - - - - - 0x01577B 05:976B: CE 61 03  DEC ram_0361
C - - - - - 0x01577E 05:976E: D0 9B     BNE bra_970B_RTS
C - - - - - 0x015780 05:9770: A0 01     LDY #$01
C - - - - - 0x015782 05:9772: A9 16     LDA #$16
C - - - - - 0x015784 05:9774: 20 B1 F4  JSR sub_0x01F4C1
loc_9777:
C D 0 - - - 0x015787 05:9777: A9 00     LDA #$00
C - - - - - 0x015789 05:9779: 85 2B     STA ram_002B
C - - - - - 0x01578B 05:977B: F0 8C     BEQ bra_9709    ; jmp
bra_977D:
C - - - - - 0x01578D 05:977D: 88        DEY
C - - - - - 0x01578E 05:977E: D0 07     BNE bra_9787
C - - - - - 0x015790 05:9780: A9 01     LDA #$01
C - - - - - 0x015792 05:9782: 85 5A     STA ram_005A_flag
C - - - - - 0x015794 05:9784: 4C 09 97  JMP loc_9709
bra_9787:
C - - - - - 0x015797 05:9787: 88        DEY
C - - - - - 0x015798 05:9788: D0 06     BNE bra_9790
C - - - - - 0x01579A 05:978A: 20 69 F5  JSR sub_0x01F579
C - - - - - 0x01579D 05:978D: 4C 07 97  JMP loc_9707
bra_9790:
C - - - - - 0x0157A0 05:9790: A9 00     LDA #$00
C - - - - - 0x0157A2 05:9792: 85 BB     STA ram_00BB
C - - - - - 0x0157A4 05:9794: 60        RTS



sub_9795:
C - - - - - 0x0157A5 05:9795: 20 CF 97  JSR sub_97CF
C - - - - - 0x0157A8 05:9798: 20 5E F6  JSR sub_0x01F66E
C - - - - - 0x0157AB 05:979B: A5 34     LDA ram_mirroring
C - - - - - 0x0157AD 05:979D: F0 0E     BEQ bra_97AD
C - - - - - 0x0157AF 05:979F: C6 60     DEC ram_0060
C - - - - - 0x0157B1 05:97A1: A5 C5     LDA ram_00C5
C - - - - - 0x0157B3 05:97A3: F0 02     BEQ bra_97A7
- - - - - - 0x0157B5 05:97A5: C6 A0     DEC ram_00A0
bra_97A7:
C - - - - - 0x0157B7 05:97A7: 20 9E 98  JSR sub_989E
C - - - - - 0x0157BA 05:97AA: 4C B2 98  JMP loc_98B2
bra_97AD:
C - - - - - 0x0157BD 05:97AD: C6 60     DEC ram_0060
C - - - - - 0x0157BF 05:97AF: C6 60     DEC ram_0060
C - - - - - 0x0157C1 05:97B1: A5 61     LDA ram_0061
C - - - - - 0x0157C3 05:97B3: 4A        LSR
C - - - - - 0x0157C4 05:97B4: 4A        LSR
C - - - - - 0x0157C5 05:97B5: 4A        LSR
C - - - - - 0x0157C6 05:97B6: 29 03     AND #$03
C - - - - - 0x0157C8 05:97B8: 85 54     STA ram_0054
C - - - - - 0x0157CA 05:97BA: 20 C8 97  JSR sub_97C8
C - - - - - 0x0157CD 05:97BD: A9 40     LDA #$40
C - - - - - 0x0157CF 05:97BF: 20 AC 98  JSR sub_98AC
C - - - - - 0x0157D2 05:97C2: 20 29 99  JSR sub_9929
C - - - - - 0x0157D5 05:97C5: 4C B2 98  JMP loc_98B2



sub_97C8:
C - - - - - 0x0157D8 05:97C8: A9 05     LDA #$05
C - - - - - 0x0157DA 05:97CA: 85 25     STA ram_0025
C - - - - - 0x0157DC 05:97CC: 4C 93 FE  JMP loc_0x01FEA3



sub_97CF:
C - - - - - 0x0157DF 05:97CF: A5 B1     LDA ram_current_player
C - - - - - 0x0157E1 05:97D1: 20 F8 97  JSR sub_97F8
C - - - - - 0x0157E4 05:97D4: 0A        ASL
C - - - - - 0x0157E5 05:97D5: 0A        ASL
C - - - - - 0x0157E6 05:97D6: 85 03     STA ram_0003
C - - - - - 0x0157E8 05:97D8: A5 B2     LDA ram_current_player + $01
C - - - - - 0x0157EA 05:97DA: 20 F8 97  JSR sub_97F8
C - - - - - 0x0157ED 05:97DD: 05 03     ORA ram_0003
C - - - - - 0x0157EF 05:97DF: 85 C0     STA ram_00C0
C - - - - - 0x0157F1 05:97E1: 0A        ASL
C - - - - - 0x0157F2 05:97E2: A8        TAY
C - - - - - 0x0157F3 05:97E3: A5 75     LDA ram_stage
C - - - - - 0x0157F5 05:97E5: 29 01     AND #$01
C - - - - - 0x0157F7 05:97E7: F0 04     BEQ bra_97ED
; breaakpoint hits at the start of level 2
C - - - - - 0x0157F9 05:97E9: 98        TYA
C - - - - - 0x0157FA 05:97EA: 09 20     ORA #$20
C - - - - - 0x0157FC 05:97EC: A8        TAY
bra_97ED:
C - - - - - 0x0157FD 05:97ED: B9 04 98  LDA tbl_9804,Y
C - - - - - 0x015800 05:97F0: 85 79     STA ram_chr_bank + $02
C - - - - - 0x015802 05:97F2: B9 05 98  LDA tbl_9804 + $01,Y
C - - - - - 0x015805 05:97F5: 85 7A     STA ram_chr_bank + $03
C - - - - - 0x015807 05:97F7: 60        RTS



sub_97F8:
C - - - - - 0x015808 05:97F8: 29 0F     AND #$0F
C - - - - - 0x01580A 05:97FA: A8        TAY
C - - - - - 0x01580B 05:97FB: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x01580E 05:97FE: 29 F0     AND #$F0
C - - - - - 0x015810 05:9800: F0 01     BEQ bra_9803_RTS
C - - - - - 0x015812 05:9802: 98        TYA
bra_9803_RTS:
C - - - - - 0x015813 05:9803: 60        RTS



tbl_9804:
; 00 
- D 0 - - - 0x015814 05:9804: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x015815 05:9805: 05        .byte con_chr_bank + $05   ; 
; 01 
- D 0 - - - 0x015816 05:9806: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x015817 05:9807: 05        .byte con_chr_bank + $05   ; 
; 02 
- D 0 - - - 0x015818 05:9808: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x015819 05:9809: 06        .byte con_chr_bank + $06   ; 
; 03 
- D 0 - - - 0x01581A 05:980A: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x01581B 05:980B: 07        .byte con_chr_bank + $07   ; 
; 04 
- D 0 - - - 0x01581C 05:980C: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x01581D 05:980D: 05        .byte con_chr_bank + $05   ; 
; 05 
- - - - - - 0x01581E 05:980E: 04        .byte con_chr_bank + $04   ; 
- - - - - - 0x01581F 05:980F: 05        .byte con_chr_bank + $05   ; 
; 06 
- - - - - - 0x015820 05:9810: 08        .byte con_chr_bank + $08   ; 
- - - - - - 0x015821 05:9811: 09        .byte con_chr_bank + $09   ; 
; 07 
- - - - - - 0x015822 05:9812: 0A        .byte con_chr_bank + $0A   ; 
- - - - - - 0x015823 05:9813: 0B        .byte con_chr_bank + $0B   ; 
; 08 
- D 0 - - - 0x015824 05:9814: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x015825 05:9815: 06        .byte con_chr_bank + $06   ; 
; 09 
- - - - - - 0x015826 05:9816: 08        .byte con_chr_bank + $08   ; 
- - - - - - 0x015827 05:9817: 09        .byte con_chr_bank + $09   ; 
; 0A 
- - - - - - 0x015828 05:9818: 04        .byte con_chr_bank + $04   ; 
- - - - - - 0x015829 05:9819: 06        .byte con_chr_bank + $06   ; 
; 0B 
- - - - - - 0x01582A 05:981A: 08        .byte con_chr_bank + $08   ; 
- - - - - - 0x01582B 05:981B: 0C        .byte con_chr_bank + $0C   ; 
; 0C 
- D 0 - - - 0x01582C 05:981C: 04        .byte con_chr_bank + $04   ; 
- D 0 - - - 0x01582D 05:981D: 07        .byte con_chr_bank + $07   ; 
; 0D 
- - - - - - 0x01582E 05:981E: 0A        .byte con_chr_bank + $0A   ; 
- - - - - - 0x01582F 05:981F: 0B        .byte con_chr_bank + $0B   ; 
; 0E 
- - - - - - 0x015830 05:9820: 08        .byte con_chr_bank + $08   ; 
- - - - - - 0x015831 05:9821: 0C        .byte con_chr_bank + $0C   ; 
; 0F 
- - - - - - 0x015832 05:9822: 04        .byte con_chr_bank + $04   ; 
- - - - - - 0x015833 05:9823: 07        .byte con_chr_bank + $07   ; 
; 10 
- D 0 - - - 0x015834 05:9824: 12        .byte con_chr_bank + $12   ; 
- D 0 - - - 0x015835 05:9825: 13        .byte con_chr_bank + $13   ; 
; 11 
- D 0 - - - 0x015836 05:9826: 12        .byte con_chr_bank + $12   ; 
- D 0 - - - 0x015837 05:9827: 13        .byte con_chr_bank + $13   ; 
; 12 
- - - - - - 0x015838 05:9828: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x015839 05:9829: 14        .byte con_chr_bank + $14   ; 
; 13 
- - - - - - 0x01583A 05:982A: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x01583B 05:982B: 15        .byte con_chr_bank + $15   ; 
; 14 
- D 0 - - - 0x01583C 05:982C: 12        .byte con_chr_bank + $12   ; 
- D 0 - - - 0x01583D 05:982D: 13        .byte con_chr_bank + $13   ; 
; 15 
- - - - - - 0x01583E 05:982E: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x01583F 05:982F: 13        .byte con_chr_bank + $13   ; 
; 16 
- - - - - - 0x015840 05:9830: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x015841 05:9831: 16        .byte con_chr_bank + $16   ; 
; 17 
- - - - - - 0x015842 05:9832: 17        .byte con_chr_bank + $17   ; 
- - - - - - 0x015843 05:9833: 18        .byte con_chr_bank + $18   ; 
; 18 
- D 0 - - - 0x015844 05:9834: 12        .byte con_chr_bank + $12   ; 
- D 0 - - - 0x015845 05:9835: 14        .byte con_chr_bank + $14   ; 
; 19 
- - - - - - 0x015846 05:9836: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x015847 05:9837: 16        .byte con_chr_bank + $16   ; 
; 1A 
- - - - - - 0x015848 05:9838: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x015849 05:9839: 14        .byte con_chr_bank + $14   ; 
; 1B 
- - - - - - 0x01584A 05:983A: 17        .byte con_chr_bank + $17   ; 
- - - - - - 0x01584B 05:983B: 19        .byte con_chr_bank + $19   ; 
; 1C 
- D 0 - - - 0x01584C 05:983C: 12        .byte con_chr_bank + $12   ; 
- D 0 - - - 0x01584D 05:983D: 15        .byte con_chr_bank + $15   ; 
; 1D 
- - - - - - 0x01584E 05:983E: 17        .byte con_chr_bank + $17   ; 
- - - - - - 0x01584F 05:983F: 18        .byte con_chr_bank + $18   ; 
; 1E 
- - - - - - 0x015850 05:9840: 17        .byte con_chr_bank + $17   ; 
- - - - - - 0x015851 05:9841: 19        .byte con_chr_bank + $19   ; 
; 1F 
- - - - - - 0x015852 05:9842: 12        .byte con_chr_bank + $12   ; 
- - - - - - 0x015853 05:9843: 15        .byte con_chr_bank + $15   ; 



sub_0x015854:
C - - - - - 0x015854 05:9844: 20 CF 97  JSR sub_97CF
C - - - - - 0x015857 05:9847: A5 75     LDA ram_stage
C - - - - - 0x015859 05:9849: 0A        ASL
C - - - - - 0x01585A 05:984A: 0A        ASL
C - - - - - 0x01585B 05:984B: A8        TAY
C - - - - - 0x01585C 05:984C: 20 52 98  JSR sub_9852
C - - - - - 0x01585F 05:984F: 4C B2 98  JMP loc_98B2



sub_9852:
C - - - - - 0x015862 05:9852: B9 47 99  LDA tbl_9947,Y
C - - - - - 0x015865 05:9855: 85 61     STA ram_0061
C - - - - - 0x015867 05:9857: B9 48 99  LDA tbl_9947 + $01,Y
C - - - - - 0x01586A 05:985A: 85 60     STA ram_0060
C - - - - - 0x01586C 05:985C: B9 49 99  LDA tbl_9947 + $02,Y
C - - - - - 0x01586F 05:985F: 85 64     STA ram_0064
C - - - - - 0x015871 05:9861: B9 4A 99  LDA tbl_9947 + $03,Y
C - - - - - 0x015874 05:9864: 85 63     STA ram_0063
C - - - - - 0x015876 05:9866: A5 64     LDA ram_0064
C - - - - - 0x015878 05:9868: 29 E0     AND #$E0
C - - - - - 0x01587A 05:986A: 85 B8     STA ram_00B8
C - - - - - 0x01587C 05:986C: 85 03     STA ram_0003
C - - - - - 0x01587E 05:986E: A5 63     LDA ram_0063
C - - - - - 0x015880 05:9870: 85 B7     STA ram_00B7
C - - - - - 0x015882 05:9872: 85 02     STA ram_0002
C - - - - - 0x015884 05:9874: A5 34     LDA ram_mirroring
C - - - - - 0x015886 05:9876: D0 0C     BNE bra_9884
C - - - - - 0x015888 05:9878: 85 BA     STA ram_00BA
C - - - - - 0x01588A 05:987A: 85 DC     STA ram_00DC
C - - - - - 0x01588C 05:987C: 85 DD     STA ram_00DD
C - - - - - 0x01588E 05:987E: A9 23     LDA #$23
C - - - - - 0x015890 05:9880: 85 B9     STA ram_00B9
C - - - - - 0x015892 05:9882: D0 1A     BNE bra_989E    ; jmp
bra_9884:
C - - - - - 0x015894 05:9884: 20 E4 A1  JSR sub_A1E4
C - - - - - 0x015897 05:9887: A5 02     LDA ram_0002
C - - - - - 0x015899 05:9889: 85 DC     STA ram_00DC
C - - - - - 0x01589B 05:988B: A5 03     LDA ram_0003
C - - - - - 0x01589D 05:988D: 85 DD     STA ram_00DD
C - - - - - 0x01589F 05:988F: 20 AD DD  JSR sub_0x01DDBD
C - - - - - 0x0158A2 05:9892: 84 DE     STY ram_00DE
C - - - - - 0x0158A4 05:9894: 84 DF     STY ram_00DF
C - - - - - 0x0158A6 05:9896: A5 01     LDA ram_0001
C - - - - - 0x0158A8 05:9898: 85 B9     STA ram_00B9
C - - - - - 0x0158AA 05:989A: A5 00     LDA ram_0000
C - - - - - 0x0158AC 05:989C: 85 BA     STA ram_00BA
bra_989E:
sub_989E:
C - - - - - 0x0158AE 05:989E: 20 C8 97  JSR sub_97C8
C - - - - - 0x0158B1 05:98A1: 20 29 99  JSR sub_9929
C - - - - - 0x0158B4 05:98A4: A9 30     LDA #$30
C - - - - - 0x0158B6 05:98A6: A4 75     LDY ram_stage
C - - - - - 0x0158B8 05:98A8: F0 02     BEQ bra_98AC
C - - - - - 0x0158BA 05:98AA: A9 20     LDA #$20
bra_98AC:
sub_98AC:
C - - - - - 0x0158BC 05:98AC: 85 5F     STA ram_005F
C - - - - - 0x0158BE 05:98AE: 8D 61 03  STA ram_0361
C - - - - - 0x0158C1 05:98B1: 60        RTS



sub_98B2:
loc_98B2:
bra_98B2_loop:
C D 0 - - - 0x0158C2 05:98B2: 20 BF 98  JSR sub_98BF
C - - - - - 0x0158C5 05:98B5: 20 85 D5  JSR sub_0x01D595
C - - - - - 0x0158C8 05:98B8: C6 5F     DEC ram_005F
C - - - - - 0x0158CA 05:98BA: D0 F6     BNE bra_98B2_loop
C - - - - - 0x0158CC 05:98BC: 4C 70 FE  JMP loc_0x01FE80



sub_98BF:
C - - - - - 0x0158CF 05:98BF: 20 20 99  JSR sub_9920
C - - - - - 0x0158D2 05:98C2: F0 22     BEQ bra_98E6
- - - - - - 0x0158D4 05:98C4: 20 93 9D  JSR sub_9D93
- - - - - - 0x0158D7 05:98C7: 20 0D 99  JSR sub_990D
- - - - - - 0x0158DA 05:98CA: 20 85 D5  JSR sub_0x01D595
- - - - - - 0x0158DD 05:98CD: 20 20 99  JSR sub_9920
- - - - - - 0x0158E0 05:98D0: 20 B8 9D  JSR sub_9DB8
- - - - - - 0x0158E3 05:98D3: 20 0D 99  JSR sub_990D
- - - - - - 0x0158E6 05:98D6: A5 A1     LDA ram_00A1
- - - - - - 0x0158E8 05:98D8: 18        CLC
- - - - - - 0x0158E9 05:98D9: 69 08     ADC #< $0008
- - - - - - 0x0158EB 05:98DB: 85 A1     STA ram_00A1
- - - - - - 0x0158ED 05:98DD: A5 A0     LDA ram_00A0
- - - - - - 0x0158EF 05:98DF: 69 00     ADC #> $0008
- - - - - - 0x0158F1 05:98E1: 85 A0     STA ram_00A0
- - - - - - 0x0158F3 05:98E3: 4C FF 98  JMP loc_98FF
bra_98E6:
C - - - - - 0x0158F6 05:98E6: A9 02     LDA #con_DA9D_02
C - - - - - 0x0158F8 05:98E8: AC 43 03  LDY ram_0343
C - - - - - 0x0158FB 05:98EB: F0 0C     BEQ bra_98F9
- - - - - - 0x0158FD 05:98ED: A4 60     LDY ram_0060
- - - - - - 0x0158FF 05:98EF: F0 02     BEQ bra_98F3
- - - - - - 0x015901 05:98F1: 10 06     BPL bra_98F9
bra_98F3:
- - - - - - 0x015903 05:98F3: 20 F2 96  JSR sub_96F2
- - - - - - 0x015906 05:98F6: 4C FC 98  JMP loc_98FC
bra_98F9:
C - - - - - 0x015909 05:98F9: 20 C9 96  JSR sub_96C9
loc_98FC:
C - - - - - 0x01590C 05:98FC: 20 16 99  JSR sub_9916
loc_98FF:
C - - - - - 0x01590F 05:98FF: A5 61     LDA ram_0061
C - - - - - 0x015911 05:9901: 18        CLC
C - - - - - 0x015912 05:9902: 69 08     ADC #< $0008
C - - - - - 0x015914 05:9904: 85 61     STA ram_0061
C - - - - - 0x015916 05:9906: A5 60     LDA ram_0060
C - - - - - 0x015918 05:9908: 69 00     ADC #> $0008
C - - - - - 0x01591A 05:990A: 85 60     STA ram_0060
C - - - - - 0x01591C 05:990C: 60        RTS



sub_990D:
- - - - - - 0x01591D 05:990D: A9 00     LDA #$00
- - - - - - 0x01591F 05:990F: 85 1D     STA ram_001D
- - - - - - 0x015921 05:9911: A9 09     LDA #con_DA9D_09
- - - - - - 0x015923 05:9913: 20 C9 96  JSR sub_96C9
sub_9916:
C - - - - - 0x015926 05:9916: A9 00     LDA #$00
C - - - - - 0x015928 05:9918: 4C 77 D2  JMP loc_0x01D287



sub_991B:
C - - - - - 0x01592B 05:991B: A6 39     LDX ram_buffer_index_2
C - - - - - 0x01592D 05:991D: 4C 8F E1  JMP loc_0x01E19F



sub_9920:
C - - - - - 0x015930 05:9920: A9 00     LDA #$00
C - - - - - 0x015932 05:9922: 85 1E     STA ram_001E
C - - - - - 0x015934 05:9924: A5 C5     LDA ram_00C5
C - - - - - 0x015936 05:9926: 85 1D     STA ram_001D
bra_9928_RTS:
C - - - - - 0x015938 05:9928: 60        RTS
sub_9929:
C - - - - - 0x015939 05:9929: 20 7E D6  JSR sub_0x01D68E
C - - - - - 0x01593C 05:992C: A9 06     LDA #$06
C - - - - - 0x01593E 05:992E: 20 3A 99  JSR sub_993A
C - - - - - 0x015941 05:9931: A9 00     LDA #$00
C - - - - - 0x015943 05:9933: 20 3A 99  JSR sub_993A
C - - - - - 0x015946 05:9936: A9 11     LDA #con_DA9D_11
C - - - - - 0x015948 05:9938: D0 04     BNE bra_993E    ; jmp



sub_993A:
C - - - - - 0x01594A 05:993A: 85 67     STA ram_0067
C - - - - - 0x01594C 05:993C: A9 05     LDA #con_DA9D_05
bra_993E:
C - - - - - 0x01594E 05:993E: 20 C9 96  JSR sub_96C9
C - - - - - 0x015951 05:9941: 20 1B 99  JSR sub_991B
C - - - - - 0x015954 05:9944: 4C 7E D6  JMP loc_0x01D68E


; todo
tbl_9947:
- D 0 - - - 0x015957 05:9947: 80        .byte $80, $FE, $00, $00   ; 00 
- D 0 - - - 0x01595B 05:994B: 00        .byte $00, $03, $3F, $0B   ; 01 
- D 0 - - - 0x01595F 05:994F: 00        .byte $00, $01, $9F, $05   ; 02 
- D 0 - - - 0x015963 05:9953: 00        .byte $00, $02, $FF, $1D   ; 03 
- D 0 - - - 0x015967 05:9957: 00        .byte $00, $FF, $C0, $03   ; 04 
- D 0 - - - 0x01596B 05:995B: 00        .byte $00, $03, $CF, $02   ; 05 
- D 0 - - - 0x01596F 05:995F: F8        .byte $F8, $07, $40, $00   ; 06 



tbl_9963:
- D 0 - - - 0x015973 05:9963: 02        .byte $02   ; 01 
- D 0 - - - 0x015974 05:9964: 11        .byte $11   ; 02 
- D 0 - - - 0x015975 05:9965: 31        .byte $31   ; 03 
- D 0 - - - 0x015976 05:9966: 02        .byte $02   ; 04 
- D 0 - - - 0x015977 05:9967: 11        .byte $11   ; 05 



sub_9968:
sub_0x015978:
C D 0 - - - 0x015978 05:9968: A9 00     LDA #$00
C - - - - - 0x01597A 05:996A: 85 C5     STA ram_00C5
C - - - - - 0x01597C 05:996C: 85 D3     STA ram_00D3
C - - - - - 0x01597E 05:996E: 85 D2     STA ram_00D2
C - - - - - 0x015980 05:9970: 85 D5     STA ram_00D5
C - - - - - 0x015982 05:9972: 85 D4     STA ram_00D4
C - - - - - 0x015984 05:9974: A5 75     LDA ram_stage
C - - - - - 0x015986 05:9976: C9 02     CMP #$02
C - - - - - 0x015988 05:9978: D0 22     BNE bra_999C
C - - - - - 0x01598A 05:997A: 20 A5 B6  JSR sub_B6A5
C - - - - - 0x01598D 05:997D: A5 D0     LDA ram_00D0
C - - - - - 0x01598F 05:997F: F0 1B     BEQ bra_999C
C - - - - - 0x015991 05:9981: 20 D0 B6  JSR sub_B6D0
C - - - - - 0x015994 05:9984: A5 D0     LDA ram_00D0
C - - - - - 0x015996 05:9986: C9 03     CMP #$03
C - - - - - 0x015998 05:9988: 90 12     BCC bra_999C
C - - - - - 0x01599A 05:998A: C9 09     CMP #$09
C - - - - - 0x01599C 05:998C: B0 9A     BCS bra_9928_RTS
C - - - - - 0x01599E 05:998E: E6 67     INC ram_0067
C - - - - - 0x0159A0 05:9990: A6 39     LDX ram_buffer_index_2
C - - - - - 0x0159A2 05:9992: E0 08     CPX #$08
C - - - - - 0x0159A4 05:9994: B0 05     BCS bra_999B_RTS
C - - - - - 0x0159A6 05:9996: A9 00     LDA #$00
C - - - - - 0x0159A8 05:9998: 4C F6 9B  JMP loc_9BF6
bra_999B_RTS:
C - - - - - 0x0159AB 05:999B: 60        RTS
bra_999C:
C - - - - - 0x0159AC 05:999C: A5 23     LDA ram_0023
C - - - - - 0x0159AE 05:999E: 29 0F     AND #$0F
C - - - - - 0x0159B0 05:99A0: C9 0F     CMP #$0F
C - - - - - 0x0159B2 05:99A2: D0 1F     BNE bra_99C3
C - - - - - 0x0159B4 05:99A4: A4 BC     LDY ram_00BC
C - - - - - 0x0159B6 05:99A6: F0 1B     BEQ bra_99C3
C - - - - - 0x0159B8 05:99A8: 88        DEY
C - - - - - 0x0159B9 05:99A9: A2 03     LDX #$03
bra_99AB_loop:
C - - - - - 0x0159BB 05:99AB: B9 63 99  LDA tbl_9963,Y
C - - - - - 0x0159BE 05:99AE: 9D B8 03  STA ram_palette_buffer + $08,X
C - - - - - 0x0159C1 05:99B1: C8        INY
C - - - - - 0x0159C2 05:99B2: CA        DEX
C - - - - - 0x0159C3 05:99B3: D0 F6     BNE bra_99AB_loop
C - - - - - 0x0159C5 05:99B5: A0 01     LDY #$01
C - - - - - 0x0159C7 05:99B7: 84 2B     STY ram_002B
C - - - - - 0x0159C9 05:99B9: E6 BC     INC ram_00BC
C - - - - - 0x0159CB 05:99BB: A5 BC     LDA ram_00BC
C - - - - - 0x0159CD 05:99BD: C9 05     CMP #$05
C - - - - - 0x0159CF 05:99BF: 90 02     BCC bra_99C3
C - - - - - 0x0159D1 05:99C1: 84 BC     STY ram_00BC
bra_99C3:
C - - - - - 0x0159D3 05:99C3: A5 BB     LDA ram_00BB
C - - - - - 0x0159D5 05:99C5: D0 29     BNE bra_99F0
C - - - - - 0x0159D7 05:99C7: A5 C7     LDA ram_00C7
C - - - - - 0x0159D9 05:99C9: D0 25     BNE bra_99F0
C - - - - - 0x0159DB 05:99CB: 8D 6D 03  STA ram_036D
C - - - - - 0x0159DE 05:99CE: A5 5A     LDA ram_005A_flag
C - - - - - 0x0159E0 05:99D0: F0 1E     BEQ bra_99F0
C - - - - - 0x0159E2 05:99D2: A5 6B     LDA ram_006B
C - - - - - 0x0159E4 05:99D4: 10 02     BPL bra_99D8
C - - - - - 0x0159E6 05:99D6: 49 FF     EOR #$FF
bra_99D8:
C - - - - - 0x0159E8 05:99D8: C9 02     CMP #$02
C - - - - - 0x0159EA 05:99DA: 90 07     BCC bra_99E3
C - - - - - 0x0159EC 05:99DC: A9 08     LDA #$08
C - - - - - 0x0159EE 05:99DE: 8D 6D 03  STA ram_036D
C - - - - - 0x0159F1 05:99E1: D0 06     BNE bra_99E9    ; jmp
bra_99E3:
C - - - - - 0x0159F3 05:99E3: A5 75     LDA ram_stage
C - - - - - 0x0159F5 05:99E5: F0 02     BEQ bra_99E9
C - - - - - 0x0159F7 05:99E7: A9 04     LDA #$04
bra_99E9:
C - - - - - 0x0159F9 05:99E9: A6 39     LDX ram_buffer_index_2
C - - - - - 0x0159FB 05:99EB: D0 03     BNE bra_99F0
C - - - - - 0x0159FD 05:99ED: 20 F6 9B  JSR sub_9BF6
bra_99F0:
C - - - - - 0x015A00 05:99F0: A5 75     LDA ram_stage
C - - - - - 0x015A02 05:99F2: C9 03     CMP #$03
C - - - - - 0x015A04 05:99F4: F0 03     BEQ bra_99F9
C - - - - - 0x015A06 05:99F6: 4C ED 9A  JMP loc_9AED
bra_99F9:
C - - - - - 0x015A09 05:99F9: A9 00     LDA #$00
C - - - - - 0x015A0B 05:99FB: 85 1D     STA ram_001D
C - - - - - 0x015A0D 05:99FD: A5 87     LDA ram_0087
C - - - - - 0x015A0F 05:99FF: 0A        ASL
C - - - - - 0x015A10 05:9A00: A8        TAY
C - - - - - 0x015A11 05:9A01: B9 CD 9E  LDA tbl_9ECD,Y
C - - - - - 0x015A14 05:9A04: 85 00     STA ram_0000
C - - - - - 0x015A16 05:9A06: B9 CE 9E  LDA tbl_9ECD + $01,Y
C - - - - - 0x015A19 05:9A09: 85 01     STA ram_0001
C - - - - - 0x015A1B 05:9A0B: A5 00     LDA ram_0000
C - - - - - 0x015A1D 05:9A0D: 38        SEC
C - - - - - 0x015A1E 05:9A0E: E5 64     SBC ram_0064
C - - - - - 0x015A20 05:9A10: 85 00     STA ram_0000
C - - - - - 0x015A22 05:9A12: A5 01     LDA ram_0001
C - - - - - 0x015A24 05:9A14: E5 63     SBC ram_0063
C - - - - - 0x015A26 05:9A16: 85 01     STA ram_0001
C - - - - - 0x015A28 05:9A18: F0 0E     BEQ bra_9A28
C - - - - - 0x015A2A 05:9A1A: 10 50     BPL bra_9A6C
C - - - - - 0x015A2C 05:9A1C: 49 FF     EOR #$FF
C - - - - - 0x015A2E 05:9A1E: D0 47     BNE bra_9A67
C - - - - - 0x015A30 05:9A20: A5 00     LDA ram_0000
C - - - - - 0x015A32 05:9A22: C9 E0     CMP #$E0
C - - - - - 0x015A34 05:9A24: 90 43     BCC bra_9A69
C - - - - - 0x015A36 05:9A26: B0 06     BCS bra_9A2E    ; jmp
bra_9A28:
C - - - - - 0x015A38 05:9A28: A5 00     LDA ram_0000
C - - - - - 0x015A3A 05:9A2A: C9 BA     CMP #$BA
C - - - - - 0x015A3C 05:9A2C: B0 3B     BCS bra_9A69
bra_9A2E:
C - - - - - 0x015A3E 05:9A2E: A4 00     LDY ram_0000
C - - - - - 0x015A40 05:9A30: D0 01     BNE bra_9A33
C - - - - - 0x015A42 05:9A32: C8        INY
bra_9A33:
C - - - - - 0x015A43 05:9A33: 84 1D     STY ram_001D
C - - - - - 0x015A45 05:9A35: C0 03     CPY #$03
C - - - - - 0x015A47 05:9A37: 90 7A     BCC bra_9AB3
C - - - - - 0x015A49 05:9A39: C0 BA     CPY #$BA
C - - - - - 0x015A4B 05:9A3B: B0 2C     BCS bra_9A69
C - - - - - 0x015A4D 05:9A3D: 84 C5     STY ram_00C5
C - - - - - 0x015A4F 05:9A3F: A5 76     LDA ram_irq_handler
C - - - - - 0x015A51 05:9A41: C9 03     CMP #con_irq_03
C - - - - - 0x015A53 05:9A43: F0 49     BEQ bra_9A8E
C - - - - - 0x015A55 05:9A45: A5 C6     LDA ram_00C6
C - - - - - 0x015A57 05:9A47: F0 2C     BEQ bra_9A75
- - - - - - 0x015A59 05:9A49: C9 02     CMP #$02
- - - - - - 0x015A5B 05:9A4B: D0 41     BNE bra_9A8E
- - - - - - 0x015A5D 05:9A4D: A9 00     LDA #$00
- - - - - - 0x015A5F 05:9A4F: 85 02     STA ram_0002
- - - - - - 0x015A61 05:9A51: 85 01     STA ram_0001
- - - - - - 0x015A63 05:9A53: AD 73 03  LDA ram_0373
- - - - - - 0x015A66 05:9A56: 38        SEC
- - - - - - 0x015A67 05:9A57: E5 64     SBC ram_0064
- - - - - - 0x015A69 05:9A59: 85 03     STA ram_0003
- - - - - - 0x015A6B 05:9A5B: 10 02     BPL bra_9A5F
- - - - - - 0x015A6D 05:9A5D: C6 01     DEC ram_0001
bra_9A5F:
- - - - - - 0x015A6F 05:9A5F: A2 03     LDX #$03
- - - - - - 0x015A71 05:9A61: 20 39 9C  JSR sub_9C39
- - - - - - 0x015A74 05:9A64: 4C 8E 9A  JMP loc_9A8E
bra_9A67:
C - - - - - 0x015A77 05:9A67: E6 87     INC ram_0087
bra_9A69:
C - - - - - 0x015A79 05:9A69: 4C C4 9A  JMP loc_9AC4
bra_9A6C:
C - - - - - 0x015A7C 05:9A6C: A5 87     LDA ram_0087
C - - - - - 0x015A7E 05:9A6E: F0 54     BEQ bra_9AC4
C - - - - - 0x015A80 05:9A70: C6 87     DEC ram_0087
C - - - - - 0x015A82 05:9A72: 4C C4 9A  JMP loc_9AC4
bra_9A75:
C - - - - - 0x015A85 05:9A75: 20 F1 9C  JSR sub_9CF1
C - - - - - 0x015A88 05:9A78: A0 00     LDY #$00
bra_9A7A_loop:
C - - - - - 0x015A8A 05:9A7A: B9 60 00  LDA ram_0060,Y
C - - - - - 0x015A8D 05:9A7D: 99 A0 00  STA ram_00A0,Y
C - - - - - 0x015A90 05:9A80: A9 00     LDA #$00
C - - - - - 0x015A92 05:9A82: 99 AB 00  STA ram_00AB,Y
C - - - - - 0x015A95 05:9A85: C8        INY
C - - - - - 0x015A96 05:9A86: C0 06     CPY #$06
C - - - - - 0x015A98 05:9A88: D0 F0     BNE bra_9A7A_loop
C - - - - - 0x015A9A 05:9A8A: A5 FF     LDA ram_for_2000
C - - - - - 0x015A9C 05:9A8C: 85 52     STA ram_0052
bra_9A8E:
loc_9A8E:
C - - - - - 0x015A9E 05:9A8E: A9 01     LDA #$01
C - - - - - 0x015AA0 05:9A90: A4 A6     LDY ram_00A6
C - - - - - 0x015AA2 05:9A92: 30 02     BMI bra_9A96
C - - - - - 0x015AA4 05:9A94: 85 C6     STA ram_00C6
bra_9A96:
C - - - - - 0x015AA6 05:9A96: 85 5A     STA ram_005A_flag
C - - - - - 0x015AA8 05:9A98: A9 03     LDA #con_irq_03
C - - - - - 0x015AAA 05:9A9A: 85 76     STA ram_irq_handler
C - - - - - 0x015AAC 05:9A9C: 20 FD 9C  JSR sub_9CFD
C - - - - - 0x015AAF 05:9A9F: A5 00     LDA ram_0000
C - - - - - 0x015AB1 05:9AA1: 85 4E     STA ram_004E
C - - - - - 0x015AB3 05:9AA3: A9 BD     LDA #$BD
C - - - - - 0x015AB5 05:9AA5: 38        SEC
C - - - - - 0x015AB6 05:9AA6: E5 00     SBC ram_0000
C - - - - - 0x015AB8 05:9AA8: 85 4F     STA ram_004F
C - - - - - 0x015ABA 05:9AAA: 20 0F 9E  JSR sub_9E0F
C - - - - - 0x015ABD 05:9AAD: 20 0B 9C  JSR sub_9C0B
C - - - - - 0x015AC0 05:9AB0: 4C 02 9B  JMP loc_9B02
bra_9AB3:
C - - - - - 0x015AC3 05:9AB3: A5 C6     LDA ram_00C6
C - - - - - 0x015AC5 05:9AB5: F0 0D     BEQ bra_9AC4
- - - - - - 0x015AC7 05:9AB7: C9 01     CMP #$01
- - - - - - 0x015AC9 05:9AB9: D0 05     BNE bra_9AC0
- - - - - - 0x015ACB 05:9ABB: A5 64     LDA ram_0064
- - - - - - 0x015ACD 05:9ABD: 8D 73 03  STA ram_0373
bra_9AC0:
- - - - - - 0x015AD0 05:9AC0: A9 02     LDA #$02
- - - - - - 0x015AD2 05:9AC2: 85 C6     STA ram_00C6
bra_9AC4:
loc_9AC4:
C D 0 - - - 0x015AD4 05:9AC4: A9 01     LDA #con_irq_01
C - - - - - 0x015AD6 05:9AC6: C5 76     CMP ram_irq_handler
C - - - - - 0x015AD8 05:9AC8: F0 23     BEQ bra_9AED
C - - - - - 0x015ADA 05:9ACA: 20 C8 F8  JSR sub_0x01F8D8
C - - - - - 0x015ADD 05:9ACD: A5 A6     LDA ram_00A6
C - - - - - 0x015ADF 05:9ACF: 10 1C     BPL bra_9AED
C - - - - - 0x015AE1 05:9AD1: A0 05     LDY #$05
bra_9AD3_loop:
C - - - - - 0x015AE3 05:9AD3: B9 A0 00  LDA ram_00A0,Y
C - - - - - 0x015AE6 05:9AD6: 99 60 00  STA ram_0060,Y
C - - - - - 0x015AE9 05:9AD9: 88        DEY
C - - - - - 0x015AEA 05:9ADA: 10 F7     BPL bra_9AD3_loop
C - - - - - 0x015AEC 05:9ADC: A5 64     LDA ram_0064
C - - - - - 0x015AEE 05:9ADE: 18        CLC
C - - - - - 0x015AEF 05:9ADF: 69 90     ADC #< $0090
C - - - - - 0x015AF1 05:9AE1: 85 AF     STA ram_00AF
C - - - - - 0x015AF3 05:9AE3: A5 63     LDA ram_0063
C - - - - - 0x015AF5 05:9AE5: 69 00     ADC #> $0090
C - - - - - 0x015AF7 05:9AE7: 85 AE     STA ram_00AE
C - - - - - 0x015AF9 05:9AE9: A9 01     LDA #$01
C - - - - - 0x015AFB 05:9AEB: 85 C7     STA ram_00C7
bra_9AED:
loc_9AED:
C D 0 - - - 0x015AFD 05:9AED: 20 C5 B9  JSR sub_B9C5
C - - - - - 0x015B00 05:9AF0: AD 43 03  LDA ram_0343
C - - - - - 0x015B03 05:9AF3: F0 0A     BEQ bra_9AFF
C - - - - - 0x015B05 05:9AF5: 20 ED B9  JSR sub_B9ED
C - - - - - 0x015B08 05:9AF8: AD 43 03  LDA ram_0343
C - - - - - 0x015B0B 05:9AFB: C9 04     CMP #$04
C - - - - - 0x015B0D 05:9AFD: B0 03     BCS bra_9B02
bra_9AFF:
C - - - - - 0x015B0F 05:9AFF: 20 8B 9E  JSR sub_9E8B
bra_9B02:
loc_9B02:
C D 0 - - - 0x015B12 05:9B02: A5 88     LDA ram_x2_stage
C - - - - - 0x015B14 05:9B04: 0A        ASL
C - - - - - 0x015B15 05:9B05: 85 00     STA ram_0000
C - - - - - 0x015B17 05:9B07: A5 67     LDA ram_0067
C - - - - - 0x015B19 05:9B09: 29 03     AND #$03
C - - - - - 0x015B1B 05:9B0B: 05 00     ORA ram_0000
C - - - - - 0x015B1D 05:9B0D: AA        TAX
C - - - - - 0x015B1E 05:9B0E: BD 45 9F  LDA tbl_9F45,X
C - - - - - 0x015B21 05:9B11: C9 FF     CMP #$FF
C - - - - - 0x015B23 05:9B13: D0 03     BNE bra_9B18
C - - - - - 0x015B25 05:9B15: 4C F3 9B  JMP loc_9BF3
bra_9B18:
C - - - - - 0x015B28 05:9B18: 85 1F     STA ram_001F
C - - - - - 0x015B2A 05:9B1A: A9 00     LDA #$00
C - - - - - 0x015B2C 05:9B1C: 85 3D     STA ram_003D
C - - - - - 0x015B2E 05:9B1E: A5 A6     LDA ram_00A6
C - - - - - 0x015B30 05:9B20: 30 14     BMI bra_9B36
C - - - - - 0x015B32 05:9B22: C9 01     CMP #$01
C - - - - - 0x015B34 05:9B24: 90 10     BCC bra_9B36
C - - - - - 0x015B36 05:9B26: A5 67     LDA ram_0067
C - - - - - 0x015B38 05:9B28: 29 01     AND #$01
C - - - - - 0x015B3A 05:9B2A: D0 0A     BNE bra_9B36
C - - - - - 0x015B3C 05:9B2C: A5 1D     LDA ram_001D
C - - - - - 0x015B3E 05:9B2E: 85 3D     STA ram_003D
C - - - - - 0x015B40 05:9B30: F0 04     BEQ bra_9B36
C - - - - - 0x015B42 05:9B32: A5 6B     LDA ram_006B
C - - - - - 0x015B44 05:9B34: 30 18     BMI bra_9B4E
bra_9B36:
C - - - - - 0x015B46 05:9B36: A5 76     LDA ram_irq_handler
C - - - - - 0x015B48 05:9B38: C9 03     CMP #con_irq_03
C - - - - - 0x015B4A 05:9B3A: D0 28     BNE bra_9B64
C - - - - - 0x015B4C 05:9B3C: A5 1F     LDA ram_001F
C - - - - - 0x015B4E 05:9B3E: C9 0D     CMP #con_DA9D_0D
C - - - - - 0x015B50 05:9B40: F0 0C     BEQ bra_9B4E
C - - - - - 0x015B52 05:9B42: C9 01     CMP #$01
C - - - - - 0x015B54 05:9B44: D0 60     BNE bra_9BA6
C - - - - - 0x015B56 05:9B46: A5 A6     LDA ram_00A6
C - - - - - 0x015B58 05:9B48: 30 04     BMI bra_9B4E
C - - - - - 0x015B5A 05:9B4A: A5 6B     LDA ram_006B
C - - - - - 0x015B5C 05:9B4C: 10 58     BPL bra_9BA6
bra_9B4E:
C - - - - - 0x015B5E 05:9B4E: A5 A0     LDA ram_00A0
C - - - - - 0x015B60 05:9B50: 85 05     STA ram_0005
C - - - - - 0x015B62 05:9B52: A5 A1     LDA ram_00A1
C - - - - - 0x015B64 05:9B54: 85 03     STA ram_0003
C - - - - - 0x015B66 05:9B56: A5 64     LDA ram_0064
C - - - - - 0x015B68 05:9B58: 85 02     STA ram_0002
C - - - - - 0x015B6A 05:9B5A: A5 63     LDA ram_0063
C - - - - - 0x015B6C 05:9B5C: 85 04     STA ram_0004
C - - - - - 0x015B6E 05:9B5E: A9 0D     LDA #con_DA9D_0D
C - - - - - 0x015B70 05:9B60: 85 1F     STA ram_001F
C - - - - - 0x015B72 05:9B62: D0 42     BNE bra_9BA6    ; jmp
bra_9B64:
C - - - - - 0x015B74 05:9B64: A5 1F     LDA ram_001F
C - - - - - 0x015B76 05:9B66: C9 0D     CMP #con_DA9D_0D
C - - - - - 0x015B78 05:9B68: D0 3C     BNE bra_9BA6
C - - - - - 0x015B7A 05:9B6A: A5 C7     LDA ram_00C7
C - - - - - 0x015B7C 05:9B6C: D0 04     BNE bra_9B72
C - - - - - 0x015B7E 05:9B6E: A5 A6     LDA ram_00A6
C - - - - - 0x015B80 05:9B70: 30 06     BMI bra_9B78
bra_9B72:
C - - - - - 0x015B82 05:9B72: A9 01     LDA #con_DA9D_01
C - - - - - 0x015B84 05:9B74: 85 1F     STA ram_001F
C - - - - - 0x015B86 05:9B76: D0 2E     BNE bra_9BA6    ; jmp
bra_9B78:
C - - - - - 0x015B88 05:9B78: A5 AE     LDA ram_00AE
C - - - - - 0x015B8A 05:9B7A: 85 04     STA ram_0004
C - - - - - 0x015B8C 05:9B7C: C5 63     CMP ram_0063
C - - - - - 0x015B8E 05:9B7E: D0 0D     BNE bra_9B8D
C - - - - - 0x015B90 05:9B80: A5 AF     LDA ram_00AF
C - - - - - 0x015B92 05:9B82: C5 64     CMP ram_0064
C - - - - - 0x015B94 05:9B84: B0 07     BCS bra_9B8D
C - - - - - 0x015B96 05:9B86: 20 F1 9C  JSR sub_9CF1
C - - - - - 0x015B99 05:9B89: 85 C6     STA ram_00C6
C - - - - - 0x015B9B 05:9B8B: F0 66     BEQ bra_9BF3    ; jmp
bra_9B8D:
C - - - - - 0x015B9D 05:9B8D: A5 AF     LDA ram_00AF
C - - - - - 0x015B9F 05:9B8F: 85 02     STA ram_0002
C - - - - - 0x015BA1 05:9B91: A5 60     LDA ram_0060
C - - - - - 0x015BA3 05:9B93: 85 05     STA ram_0005
C - - - - - 0x015BA5 05:9B95: A5 61     LDA ram_0061
C - - - - - 0x015BA7 05:9B97: 85 03     STA ram_0003
C - - - - - 0x015BA9 05:9B99: A5 AF     LDA ram_00AF
C - - - - - 0x015BAB 05:9B9B: 38        SEC
C - - - - - 0x015BAC 05:9B9C: E9 08     SBC #< $0008
C - - - - - 0x015BAE 05:9B9E: 85 AF     STA ram_00AF
C - - - - - 0x015BB0 05:9BA0: A5 AE     LDA ram_00AE
C - - - - - 0x015BB2 05:9BA2: E9 00     SBC #> $0008
C - - - - - 0x015BB4 05:9BA4: 85 AE     STA ram_00AE
bra_9BA6:
C - - - - - 0x015BB6 05:9BA6: A4 C7     LDY ram_00C7
C - - - - - 0x015BB8 05:9BA8: F0 20     BEQ bra_9BCA
C - - - - - 0x015BBA 05:9BAA: 8C 59 03  STY ram_0359
C - - - - - 0x015BBD 05:9BAD: C0 05     CPY #$05
C - - - - - 0x015BBF 05:9BAF: F0 12     BEQ bra_9BC3
C - - - - - 0x015BC1 05:9BB1: E6 C7     INC ram_00C7
C - - - - - 0x015BC3 05:9BB3: 88        DEY
C - - - - - 0x015BC4 05:9BB4: F0 3F     BEQ bra_9BF5_RTS
C - - - - - 0x015BC6 05:9BB6: 88        DEY
C - - - - - 0x015BC7 05:9BB7: 84 1E     STY ram_001E
C - - - - - 0x015BC9 05:9BB9: A9 00     LDA #$00
C - - - - - 0x015BCB 05:9BBB: 85 39     STA ram_buffer_index_2
C - - - - - 0x015BCD 05:9BBD: A9 0E     LDA #con_DA9D_0E
C - - - - - 0x015BCF 05:9BBF: 85 1F     STA ram_001F
C - - - - - 0x015BD1 05:9BC1: D0 45     BNE bra_9C08    ; jmp
bra_9BC3:
C - - - - - 0x015BD3 05:9BC3: A9 00     LDA #$00
C - - - - - 0x015BD5 05:9BC5: 85 C7     STA ram_00C7
C - - - - - 0x015BD7 05:9BC7: 8D 59 03  STA ram_0359
bra_9BCA:
C - - - - - 0x015BDA 05:9BCA: AD 43 03  LDA ram_0343
C - - - - - 0x015BDD 05:9BCD: F0 08     BEQ bra_9BD7
C - - - - - 0x015BDF 05:9BCF: A5 67     LDA ram_0067
C - - - - - 0x015BE1 05:9BD1: 29 03     AND #$03
C - - - - - 0x015BE3 05:9BD3: C9 03     CMP #$03
C - - - - - 0x015BE5 05:9BD5: F0 1C     BEQ bra_9BF3
bra_9BD7:
C - - - - - 0x015BE7 05:9BD7: A5 1F     LDA ram_001F
C - - - - - 0x015BE9 05:9BD9: C9 09     CMP #con_DA9D_09
C - - - - - 0x015BEB 05:9BDB: D0 0D     BNE bra_9BEA
C - - - - - 0x015BED 05:9BDD: 20 7C 9D  JSR sub_9D7C
C - - - - - 0x015BF0 05:9BE0: 90 11     BCC bra_9BF3
C - - - - - 0x015BF2 05:9BE2: A5 22     LDA ram_0022
C - - - - - 0x015BF4 05:9BE4: C9 03     CMP #$03
C - - - - - 0x015BF6 05:9BE6: F0 0D     BEQ bra_9BF5_RTS
C - - - - - 0x015BF8 05:9BE8: A5 1F     LDA ram_001F
bra_9BEA:
C - - - - - 0x015BFA 05:9BEA: A6 26     LDX ram_buffer_index
C - - - - - 0x015BFC 05:9BEC: E0 20     CPX #$20
C - - - - - 0x015BFE 05:9BEE: B0 05     BCS bra_9BF5_RTS
C - - - - - 0x015C00 05:9BF0: 20 C9 96  JSR sub_96C9
bra_9BF3:
loc_9BF3:
C D 0 - - - 0x015C03 05:9BF3: E6 67     INC ram_0067
bra_9BF5_RTS:
loc_9BF5_RTS:
C D 0 - - - 0x015C05 05:9BF5: 60        RTS



loc_9BF6:
sub_9BF6:
C D 0 - - - 0x015C06 05:9BF6: 85 00     STA ram_0000
C - - - - - 0x015C08 05:9BF8: A5 67     LDA ram_0067
C - - - - - 0x015C0A 05:9BFA: 29 03     AND #$03
C - - - - - 0x015C0C 05:9BFC: 05 00     ORA ram_0000
C - - - - - 0x015C0E 05:9BFE: AA        TAX
C - - - - - 0x015C0F 05:9BFF: BD 5D 9F  LDA tbl_9F5D,X
C - - - - - 0x015C12 05:9C02: C9 FF     CMP #$FF
C - - - - - 0x015C14 05:9C04: F0 EF     BEQ bra_9BF5_RTS
C - - - - - 0x015C16 05:9C06: 85 1F     STA ram_001F
bra_9C08:
C - - - - - 0x015C18 05:9C08: 4C C9 96  JMP loc_96C9



sub_9C0B:
C - - - - - 0x015C1B 05:9C0B: A5 A8     LDA ram_00A8
C - - - - - 0x015C1D 05:9C0D: 0A        ASL
C - - - - - 0x015C1E 05:9C0E: 0A        ASL
C - - - - - 0x015C1F 05:9C0F: 48        PHA
C - - - - - 0x015C20 05:9C10: A8        TAY
C - - - - - 0x015C21 05:9C11: A2 00     LDX #$00
C - - - - - 0x015C23 05:9C13: 20 8A 9C  JSR sub_9C8A
C - - - - - 0x015C26 05:9C16: A0 00     LDY #$00
C - - - - - 0x015C28 05:9C18: 20 28 9C  JSR sub_9C28
C - - - - - 0x015C2B 05:9C1B: 68        PLA
C - - - - - 0x015C2C 05:9C1C: A8        TAY
C - - - - - 0x015C2D 05:9C1D: C8        INY
C - - - - - 0x015C2E 05:9C1E: C8        INY
C - - - - - 0x015C2F 05:9C1F: A2 02     LDX #$02
C - - - - - 0x015C31 05:9C21: 20 8A 9C  JSR sub_9C8A
C - - - - - 0x015C34 05:9C24: A0 02     LDY #$02
C - - - - - 0x015C36 05:9C26: A2 03     LDX #$03
sub_9C28:
C - - - - - 0x015C38 05:9C28: A5 A6     LDA ram_00A6
C - - - - - 0x015C3A 05:9C2A: 30 2D     BMI bra_9C59
C - - - - - 0x015C3C 05:9C2C: 20 4D 9C  JSR sub_9C4D
C - - - - - 0x015C3F 05:9C2F: B9 4D 03  LDA ram_034D,Y
C - - - - - 0x015C42 05:9C32: 85 02     STA ram_0002
C - - - - - 0x015C44 05:9C34: B9 4C 03  LDA ram_034C,Y
C - - - - - 0x015C47 05:9C37: 85 03     STA ram_0003
sub_9C39:
C - - - - - 0x015C49 05:9C39: A5 02     LDA ram_0002
C - - - - - 0x015C4B 05:9C3B: 18        CLC
C - - - - - 0x015C4C 05:9C3C: 75 A2     ADC ram_00A2,X
C - - - - - 0x015C4E 05:9C3E: 95 A2     STA ram_00A2,X
C - - - - - 0x015C50 05:9C40: A5 03     LDA ram_0003
C - - - - - 0x015C52 05:9C42: 75 A1     ADC ram_00A1,X
C - - - - - 0x015C54 05:9C44: 95 A1     STA ram_00A1,X
C - - - - - 0x015C56 05:9C46: A5 01     LDA ram_0001
C - - - - - 0x015C58 05:9C48: 75 A0     ADC ram_00A0,X
C - - - - - 0x015C5A 05:9C4A: 95 A0     STA ram_00A0,X
C - - - - - 0x015C5C 05:9C4C: 60        RTS



sub_9C4D:
C - - - - - 0x015C5D 05:9C4D: A9 00     LDA #$00
C - - - - - 0x015C5F 05:9C4F: 85 01     STA ram_0001
C - - - - - 0x015C61 05:9C51: B9 4C 03  LDA ram_034C,Y
C - - - - - 0x015C64 05:9C54: 10 02     BPL bra_9C58_RTS
C - - - - - 0x015C66 05:9C56: C6 01     DEC ram_0001
bra_9C58_RTS:
C - - - - - 0x015C68 05:9C58: 60        RTS
bra_9C59:
C - - - - - 0x015C69 05:9C59: A9 00     LDA #$00
C - - - - - 0x015C6B 05:9C5B: 85 01     STA ram_0001
C - - - - - 0x015C6D 05:9C5D: B9 69 00  LDA ram_0069,Y
C - - - - - 0x015C70 05:9C60: 10 02     BPL bra_9C64
C - - - - - 0x015C72 05:9C62: C6 01     DEC ram_0001
bra_9C64:
C - - - - - 0x015C74 05:9C64: B9 6A 00  LDA ram_006A,Y
C - - - - - 0x015C77 05:9C67: 85 02     STA ram_0002
C - - - - - 0x015C79 05:9C69: B9 69 00  LDA ram_0069,Y
C - - - - - 0x015C7C 05:9C6C: 85 03     STA ram_0003
C - - - - - 0x015C7E 05:9C6E: 20 39 9C  JSR sub_9C39
C - - - - - 0x015C81 05:9C71: 20 4D 9C  JSR sub_9C4D
C - - - - - 0x015C84 05:9C74: B9 4D 03  LDA ram_034D,Y
C - - - - - 0x015C87 05:9C77: 18        CLC
C - - - - - 0x015C88 05:9C78: 75 62     ADC ram_0062,X
C - - - - - 0x015C8A 05:9C7A: 95 62     STA ram_0062,X
C - - - - - 0x015C8C 05:9C7C: B9 4C 03  LDA ram_034C,Y
C - - - - - 0x015C8F 05:9C7F: 75 61     ADC ram_0061,X
C - - - - - 0x015C91 05:9C81: 95 61     STA ram_0061,X
C - - - - - 0x015C93 05:9C83: A5 01     LDA ram_0001
C - - - - - 0x015C95 05:9C85: 75 60     ADC ram_0060,X
C - - - - - 0x015C97 05:9C87: 95 60     STA ram_0060,X
C - - - - - 0x015C99 05:9C89: 60        RTS



sub_9C8A:
C - - - - - 0x015C9A 05:9C8A: AD 5B 03  LDA ram_035B
C - - - - - 0x015C9D 05:9C8D: F0 08     BEQ bra_9C97
C - - - - - 0x015C9F 05:9C8F: A9 00     LDA #$00
C - - - - - 0x015CA1 05:9C91: 85 00     STA ram_0000
C - - - - - 0x015CA3 05:9C93: 85 01     STA ram_0001
C - - - - - 0x015CA5 05:9C95: F0 21     BEQ bra_9CB8    ; jmp



bra_9C97:
C - - - - - 0x015CA7 05:9C97: B9 21 9F  LDA tbl_9F21,Y
C - - - - - 0x015CAA 05:9C9A: 85 00     STA ram_0000
C - - - - - 0x015CAC 05:9C9C: B9 22 9F  LDA tbl_9F21 + $01,Y
C - - - - - 0x015CAF 05:9C9F: 85 01     STA ram_0001
C - - - - - 0x015CB1 05:9CA1: 98        TYA
C - - - - - 0x015CB2 05:9CA2: 29 02     AND #$02
C - - - - - 0x015CB4 05:9CA4: D0 12     BNE bra_9CB8
C - - - - - 0x015CB6 05:9CA6: A5 A8     LDA ram_00A8
C - - - - - 0x015CB8 05:9CA8: 29 C0     AND #$C0
C - - - - - 0x015CBA 05:9CAA: F0 0C     BEQ bra_9CB8
C - - - - - 0x015CBC 05:9CAC: 06 00     ASL ram_0000
C - - - - - 0x015CBE 05:9CAE: 26 01     ROL ram_0001
C - - - - - 0x015CC0 05:9CB0: 29 40     AND #$40
C - - - - - 0x015CC2 05:9CB2: F0 04     BEQ bra_9CB8
C - - - - - 0x015CC4 05:9CB4: 06 00     ASL ram_0000
C - - - - - 0x015CC6 05:9CB6: 26 01     ROL ram_0001
bra_9CB8:
C - - - - - 0x015CC8 05:9CB8: A5 A6     LDA ram_00A6
C - - - - - 0x015CCA 05:9CBA: 10 0D     BPL bra_9CC9
C - - - - - 0x015CCC 05:9CBC: A5 00     LDA ram_0000
C - - - - - 0x015CCE 05:9CBE: 9D 4D 03  STA ram_034D,X
C - - - - - 0x015CD1 05:9CC1: A5 01     LDA ram_0001
C - - - - - 0x015CD3 05:9CC3: 9D 4C 03  STA ram_034C,X
C - - - - - 0x015CD6 05:9CC6: 4C D8 9C  JMP loc_9CD8
bra_9CC9:
C - - - - - 0x015CD9 05:9CC9: A5 00     LDA ram_0000
C - - - - - 0x015CDB 05:9CCB: 18        CLC
C - - - - - 0x015CDC 05:9CCC: 75 6A     ADC ram_006A,X
C - - - - - 0x015CDE 05:9CCE: 9D 4D 03  STA ram_034D,X
C - - - - - 0x015CE1 05:9CD1: A5 01     LDA ram_0001
C - - - - - 0x015CE3 05:9CD3: 75 69     ADC ram_0069,X
C - - - - - 0x015CE5 05:9CD5: 9D 4C 03  STA ram_034C,X
loc_9CD8:
C D 0 - - - 0x015CE8 05:9CD8: 10 08     BPL bra_9CE2
C - - - - - 0x015CEA 05:9CDA: C9 FE     CMP #$FE
C - - - - - 0x015CEC 05:9CDC: B0 12     BCS bra_9CF0_RTS
C - - - - - 0x015CEE 05:9CDE: A9 FE     LDA #$FE
C - - - - - 0x015CF0 05:9CE0: D0 06     BNE bra_9CE8    ; jmp
bra_9CE2:
C - - - - - 0x015CF2 05:9CE2: C9 02     CMP #$02
C - - - - - 0x015CF4 05:9CE4: 90 0A     BCC bra_9CF0_RTS
C - - - - - 0x015CF6 05:9CE6: A9 02     LDA #$02
bra_9CE8:
C - - - - - 0x015CF8 05:9CE8: 9D 4C 03  STA ram_034C,X
C - - - - - 0x015CFB 05:9CEB: A9 00     LDA #$00
C - - - - - 0x015CFD 05:9CED: 9D 4D 03  STA ram_034D,X
bra_9CF0_RTS:
C - - - - - 0x015D00 05:9CF0: 60        RTS



sub_9CF1:
; bzk warning, one ref expects Z = 1 from here
C - - - - - 0x015D01 05:9CF1: A9 00     LDA #$00
C - - - - - 0x015D03 05:9CF3: 85 A6     STA ram_00A6
C - - - - - 0x015D05 05:9CF5: 85 A7     STA ram_00A7
C - - - - - 0x015D07 05:9CF7: 85 A8     STA ram_00A8
C - - - - - 0x015D09 05:9CF9: 8D 4B 03  STA ram_034B
bra_9CFC_RTS:
C - - - - - 0x015D0C 05:9CFC: 60        RTS



sub_9CFD:
loc_9CFD:
C D 0 - - - 0x015D0D 05:9CFD: AD 5B 03  LDA ram_035B
C - - - - - 0x015D10 05:9D00: D0 FA     BNE bra_9CFC_RTS
C - - - - - 0x015D12 05:9D02: A0 0A     LDY #$0A
C - - - - - 0x015D14 05:9D04: A5 A6     LDA ram_00A6
C - - - - - 0x015D16 05:9D06: 30 04     BMI bra_9D0C
C - - - - - 0x015D18 05:9D08: A5 87     LDA ram_0087
C - - - - - 0x015D1A 05:9D0A: 0A        ASL
C - - - - - 0x015D1B 05:9D0B: A8        TAY
bra_9D0C:
C - - - - - 0x015D1C 05:9D0C: B9 D9 9E  LDA tbl_9ED9,Y
C - - - - - 0x015D1F 05:9D0F: 85 18     STA ram_0018
C - - - - - 0x015D21 05:9D11: B9 DA 9E  LDA tbl_9ED9 + $01,Y
C - - - - - 0x015D24 05:9D14: 85 19     STA ram_0019
C - - - - - 0x015D26 05:9D16: A5 A6     LDA ram_00A6
C - - - - - 0x015D28 05:9D18: 29 7F     AND #$7F
C - - - - - 0x015D2A 05:9D1A: C9 03     CMP #$03
C - - - - - 0x015D2C 05:9D1C: 90 1C     BCC bra_9D3A
C - - - - - 0x015D2E 05:9D1E: A5 00     LDA ram_0000
C - - - - - 0x015D30 05:9D20: C9 90     CMP #$90
C - - - - - 0x015D32 05:9D22: 90 16     BCC bra_9D3A
C - - - - - 0x015D34 05:9D24: A5 A6     LDA ram_00A6
C - - - - - 0x015D36 05:9D26: 30 12     BMI bra_9D3A
C - - - - - 0x015D38 05:9D28: A9 42     LDA #con_music_42
C - - - - - 0x015D3A 05:9D2A: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x015D3D 05:9D2D: A9 00     LDA #$00
C - - - - - 0x015D3F 05:9D2F: 85 C6     STA ram_00C6
C - - - - - 0x015D41 05:9D31: A9 80     LDA #$80
C - - - - - 0x015D43 05:9D33: 85 A6     STA ram_00A6
C - - - - - 0x015D45 05:9D35: A9 02     LDA #$02
C - - - - - 0x015D47 05:9D37: 8D 4B 03  STA ram_034B
bra_9D3A:
C - - - - - 0x015D4A 05:9D3A: 20 75 9D  JSR sub_9D75
C - - - - - 0x015D4D 05:9D3D: C5 A7     CMP ram_00A7
C - - - - - 0x015D4F 05:9D3F: D0 2C     BNE bra_9D6D
C - - - - - 0x015D51 05:9D41: A9 00     LDA #$00
C - - - - - 0x015D53 05:9D43: 85 A7     STA ram_00A7
C - - - - - 0x015D55 05:9D45: E6 A6     INC ram_00A6
C - - - - - 0x015D57 05:9D47: 20 75 9D  JSR sub_9D75
C - - - - - 0x015D5A 05:9D4A: C9 FF     CMP #$FF
C - - - - - 0x015D5C 05:9D4C: D0 10     BNE bra_9D5E
C - - - - - 0x015D5E 05:9D4E: A9 01     LDA #$01
C - - - - - 0x015D60 05:9D50: 8D 4B 03  STA ram_034B
C - - - - - 0x015D63 05:9D53: C8        INY
C - - - - - 0x015D64 05:9D54: A5 A6     LDA ram_00A6
C - - - - - 0x015D66 05:9D56: 38        SEC
C - - - - - 0x015D67 05:9D57: F1 18     SBC (ram_0018),Y
C - - - - - 0x015D69 05:9D59: 85 A6     STA ram_00A6
C - - - - - 0x015D6B 05:9D5B: 4C FD 9C  JMP loc_9CFD
bra_9D5E:
C - - - - - 0x015D6E 05:9D5E: A5 A6     LDA ram_00A6
C - - - - - 0x015D70 05:9D60: C9 01     CMP #$01
C - - - - - 0x015D72 05:9D62: D0 05     BNE bra_9D69
C - - - - - 0x015D74 05:9D64: A9 3E     LDA #con_music_3E
C - - - - - 0x015D76 05:9D66: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_9D69:
C - - - - - 0x015D79 05:9D69: A5 A6     LDA ram_00A6
C - - - - - 0x015D7B 05:9D6B: 0A        ASL
C - - - - - 0x015D7C 05:9D6C: A8        TAY
bra_9D6D:
C - - - - - 0x015D7D 05:9D6D: C8        INY
C - - - - - 0x015D7E 05:9D6E: B1 18     LDA (ram_0018),Y
C - - - - - 0x015D80 05:9D70: 85 A8     STA ram_00A8
C - - - - - 0x015D82 05:9D72: E6 A7     INC ram_00A7
C - - - - - 0x015D84 05:9D74: 60        RTS



sub_9D75:
C - - - - - 0x015D85 05:9D75: A5 A6     LDA ram_00A6
C - - - - - 0x015D87 05:9D77: 0A        ASL
C - - - - - 0x015D88 05:9D78: A8        TAY
C - - - - - 0x015D89 05:9D79: B1 18     LDA (ram_0018),Y
C - - - - - 0x015D8B 05:9D7B: 60        RTS



sub_9D7C:
C - - - - - 0x015D8C 05:9D7C: A9 00     LDA #$00
C - - - - - 0x015D8E 05:9D7E: 85 1E     STA ram_001E
C - - - - - 0x015D90 05:9D80: A5 1D     LDA ram_001D
C - - - - - 0x015D92 05:9D82: C9 E0     CMP #$E0
C - - - - - 0x015D94 05:9D84: 90 02     BCC bra_9D88
C - - - - - 0x015D96 05:9D86: C6 1E     DEC ram_001E
bra_9D88:
C - - - - - 0x015D98 05:9D88: A5 67     LDA ram_0067
C - - - - - 0x015D9A 05:9D8A: 29 03     AND #$03
C - - - - - 0x015D9C 05:9D8C: AA        TAX
C - - - - - 0x015D9D 05:9D8D: BC 59 9F  LDY tbl_9F59,X
C - - - - - 0x015DA0 05:9D90: 88        DEY
C - - - - - 0x015DA1 05:9D91: D0 25     BNE bra_9DB8
sub_9D93:
C - - - - - 0x015DA3 05:9D93: A5 60     LDA ram_0060
C - - - - - 0x015DA5 05:9D95: 85 05     STA ram_0005
C - - - - - 0x015DA7 05:9D97: A5 61     LDA ram_0061
C - - - - - 0x015DA9 05:9D99: 85 03     STA ram_0003
C - - - - - 0x015DAB 05:9D9B: A5 64     LDA ram_0064
C - - - - - 0x015DAD 05:9D9D: 18        CLC
C - - - - - 0x015DAE 05:9D9E: 65 1D     ADC ram_001D
C - - - - - 0x015DB0 05:9DA0: 85 02     STA ram_0002
C - - - - - 0x015DB2 05:9DA2: A5 63     LDA ram_0063
C - - - - - 0x015DB4 05:9DA4: 65 1E     ADC ram_001E
C - - - - - 0x015DB6 05:9DA6: 85 04     STA ram_0004
C - - - - - 0x015DB8 05:9DA8: 20 01 9E  JSR sub_9E01
C - - - - - 0x015DBB 05:9DAB: A9 1A     LDA #$1A
C - - - - - 0x015DBD 05:9DAD: 38        SEC
C - - - - - 0x015DBE 05:9DAE: E5 1B     SBC ram_001B
C - - - - - 0x015DC0 05:9DB0: 85 1E     STA ram_001E
C - - - - - 0x015DC2 05:9DB2: A5 69     LDA ram_0069
C - - - - - 0x015DC4 05:9DB4: 85 1D     STA ram_001D
C - - - - - 0x015DC6 05:9DB6: 38        SEC
C - - - - - 0x015DC7 05:9DB7: 60        RTS
bra_9DB8:
sub_9DB8:
C - - - - - 0x015DC8 05:9DB8: 20 01 9E  JSR sub_9E01
C - - - - - 0x015DCB 05:9DBB: 30 0A     BMI bra_9DC7
C - - - - - 0x015DCD 05:9DBD: C9 10     CMP #$10
C - - - - - 0x015DCF 05:9DBF: 90 06     BCC bra_9DC7
C - - - - - 0x015DD1 05:9DC1: A4 45     LDY ram_0045
C - - - - - 0x015DD3 05:9DC3: D0 02     BNE bra_9DC7
C - - - - - 0x015DD5 05:9DC5: A9 10     LDA #$10
bra_9DC7:
C - - - - - 0x015DD7 05:9DC7: 18        CLC
C - - - - - 0x015DD8 05:9DC8: 69 12     ADC #$12
C - - - - - 0x015DDA 05:9DCA: 85 1E     STA ram_001E
C - - - - - 0x015DDC 05:9DCC: A5 64     LDA ram_0064
C - - - - - 0x015DDE 05:9DCE: 38        SEC
C - - - - - 0x015DDF 05:9DCF: E9 90     SBC #< $0090
C - - - - - 0x015DE1 05:9DD1: 85 02     STA ram_0002
C - - - - - 0x015DE3 05:9DD3: A5 63     LDA ram_0063
C - - - - - 0x015DE5 05:9DD5: E9 00     SBC #> $0090
C - - - - - 0x015DE7 05:9DD7: 85 04     STA ram_0004
C - - - - - 0x015DE9 05:9DD9: A5 A6     LDA ram_00A6
C - - - - - 0x015DEB 05:9DDB: F0 04     BEQ bra_9DE1
C - - - - - 0x015DED 05:9DDD: A5 1D     LDA ram_001D
C - - - - - 0x015DEF 05:9DDF: D0 0D     BNE bra_9DEE
bra_9DE1:
C - - - - - 0x015DF1 05:9DE1: A5 60     LDA ram_0060
C - - - - - 0x015DF3 05:9DE3: 85 05     STA ram_0005
C - - - - - 0x015DF5 05:9DE5: A5 61     LDA ram_0061
C - - - - - 0x015DF7 05:9DE7: 85 03     STA ram_0003
bra_9DE9:
C - - - - - 0x015DF9 05:9DE9: A5 69     LDA ram_0069
C - - - - - 0x015DFB 05:9DEB: 4C FD 9D  JMP loc_9DFD
bra_9DEE:
C - - - - - 0x015DFE 05:9DEE: A5 A0     LDA ram_00A0
C - - - - - 0x015E00 05:9DF0: 85 05     STA ram_0005
C - - - - - 0x015E02 05:9DF2: A5 A1     LDA ram_00A1
C - - - - - 0x015E04 05:9DF4: 85 03     STA ram_0003
C - - - - - 0x015E06 05:9DF6: A5 A6     LDA ram_00A6
C - - - - - 0x015E08 05:9DF8: 30 EF     BMI bra_9DE9
C - - - - - 0x015E0A 05:9DFA: AD 4C 03  LDA ram_034C
loc_9DFD:
C D 0 - - - 0x015E0D 05:9DFD: 85 1D     STA ram_001D
C - - - - - 0x015E0F 05:9DFF: 38        SEC
C - - - - - 0x015E10 05:9E00: 60        RTS



sub_9E01:
C - - - - - 0x015E11 05:9E01: A5 1D     LDA ram_001D
C - - - - - 0x015E13 05:9E03: 46 1E     LSR ram_001E
C - - - - - 0x015E15 05:9E05: 6A        ROR
C - - - - - 0x015E16 05:9E06: 46 1E     LSR ram_001E
C - - - - - 0x015E18 05:9E08: 6A        ROR
C - - - - - 0x015E19 05:9E09: 46 1E     LSR ram_001E
C - - - - - 0x015E1B 05:9E0B: 6A        ROR
C - - - - - 0x015E1C 05:9E0C: 85 1B     STA ram_001B
C - - - - - 0x015E1E 05:9E0E: 60        RTS



sub_9E0F:
C - - - - - 0x015E1F 05:9E0F: A5 A1     LDA ram_00A1
C - - - - - 0x015E21 05:9E11: 85 FD     STA ram_scroll_X
C - - - - - 0x015E23 05:9E13: A5 A4     LDA ram_00A4
C - - - - - 0x015E25 05:9E15: 85 03     STA ram_0003
C - - - - - 0x015E27 05:9E17: A5 A3     LDA ram_00A3
C - - - - - 0x015E29 05:9E19: 85 02     STA ram_0002
C - - - - - 0x015E2B 05:9E1B: 20 E4 A1  JSR sub_A1E4
C - - - - - 0x015E2E 05:9E1E: A5 03     LDA ram_0003
C - - - - - 0x015E30 05:9E20: 85 FC     STA ram_scroll_Y
C - - - - - 0x015E32 05:9E22: A5 02     LDA ram_0002
C - - - - - 0x015E34 05:9E24: 29 01     AND #$01
C - - - - - 0x015E36 05:9E26: 0A        ASL
C - - - - - 0x015E37 05:9E27: 85 02     STA ram_0002
C - - - - - 0x015E39 05:9E29: A5 A0     LDA ram_00A0
C - - - - - 0x015E3B 05:9E2B: 29 01     AND #$01
C - - - - - 0x015E3D 05:9E2D: 05 02     ORA ram_0002
C - - - - - 0x015E3F 05:9E2F: 85 02     STA ram_0002
C - - - - - 0x015E41 05:9E31: A5 FF     LDA ram_for_2000
C - - - - - 0x015E43 05:9E33: 29 FC     AND #$FC
C - - - - - 0x015E45 05:9E35: 05 02     ORA ram_0002
C - - - - - 0x015E47 05:9E37: 85 FF     STA ram_for_2000
C - - - - - 0x015E49 05:9E39: A5 61     LDA ram_0061
C - - - - - 0x015E4B 05:9E3B: 85 50     STA ram_0050
C - - - - - 0x015E4D 05:9E3D: A5 64     LDA ram_0064
C - - - - - 0x015E4F 05:9E3F: 18        CLC
C - - - - - 0x015E50 05:9E40: 65 1D     ADC ram_001D
C - - - - - 0x015E52 05:9E42: 85 03     STA ram_0003
C - - - - - 0x015E54 05:9E44: A5 63     LDA ram_0063
C - - - - - 0x015E56 05:9E46: 69 00     ADC #$00
C - - - - - 0x015E58 05:9E48: 85 02     STA ram_0002
C - - - - - 0x015E5A 05:9E4A: 20 E4 A1  JSR sub_A1E4
C - - - - - 0x015E5D 05:9E4D: A5 02     LDA ram_0002
C - - - - - 0x015E5F 05:9E4F: 0A        ASL
C - - - - - 0x015E60 05:9E50: 29 02     AND #$02
C - - - - - 0x015E62 05:9E52: 85 04     STA ram_0004
C - - - - - 0x015E64 05:9E54: A5 60     LDA ram_0060
C - - - - - 0x015E66 05:9E56: 29 01     AND #$01
C - - - - - 0x015E68 05:9E58: 05 04     ORA ram_0004
C - - - - - 0x015E6A 05:9E5A: 85 04     STA ram_0004
C - - - - - 0x015E6C 05:9E5C: A5 FF     LDA ram_for_2000
C - - - - - 0x015E6E 05:9E5E: 29 FC     AND #$FC
C - - - - - 0x015E70 05:9E60: 05 04     ORA ram_0004
C - - - - - 0x015E72 05:9E62: 85 52     STA ram_0052
C - - - - - 0x015E74 05:9E64: A9 00     LDA #$00
C - - - - - 0x015E76 05:9E66: 85 51     STA ram_0051
C - - - - - 0x015E78 05:9E68: A5 02     LDA ram_0002
C - - - - - 0x015E7A 05:9E6A: 29 01     AND #$01
C - - - - - 0x015E7C 05:9E6C: F0 02     BEQ bra_9E70
C - - - - - 0x015E7E 05:9E6E: A9 0C     LDA #$0C
bra_9E70:
C - - - - - 0x015E80 05:9E70: 09 20     ORA #$20
C - - - - - 0x015E82 05:9E72: 85 02     STA ram_0002
C - - - - - 0x015E84 05:9E74: A5 03     LDA ram_0003
C - - - - - 0x015E86 05:9E76: 29 F8     AND #$F8
C - - - - - 0x015E88 05:9E78: 85 03     STA ram_0003
C - - - - - 0x015E8A 05:9E7A: A9 00     LDA #$00
C - - - - - 0x015E8C 05:9E7C: 06 03     ASL ram_0003
C - - - - - 0x015E8E 05:9E7E: 2A        ROL
C - - - - - 0x015E8F 05:9E7F: 06 03     ASL ram_0003
C - - - - - 0x015E91 05:9E81: 2A        ROL
C - - - - - 0x015E92 05:9E82: 05 02     ORA ram_0002
C - - - - - 0x015E94 05:9E84: 85 A9     STA ram_00A9
C - - - - - 0x015E96 05:9E86: A5 03     LDA ram_0003
C - - - - - 0x015E98 05:9E88: 85 AA     STA ram_00AA
C - - - - - 0x015E9A 05:9E8A: 60        RTS



sub_9E8B:
loc_0x015E9B:
C D 0 - - - 0x015E9B 05:9E8B: A5 61     LDA ram_0061
C - - - - - 0x015E9D 05:9E8D: 85 FD     STA ram_scroll_X
C - - - - - 0x015E9F 05:9E8F: A5 60     LDA ram_0060
C - - - - - 0x015EA1 05:9E91: 29 01     AND #$01
C - - - - - 0x015EA3 05:9E93: 85 00     STA ram_0000
C - - - - - 0x015EA5 05:9E95: A5 63     LDA ram_0063
C - - - - - 0x015EA7 05:9E97: 0A        ASL
C - - - - - 0x015EA8 05:9E98: A8        TAY
C - - - - - 0x015EA9 05:9E99: B9 B6 F5  LDA tbl_0x01F5C6,Y
C - - - - - 0x015EAC 05:9E9C: AA        TAX
C - - - - - 0x015EAD 05:9E9D: A5 64     LDA ram_0064
C - - - - - 0x015EAF 05:9E9F: 20 C2 9E  JSR sub_9EC2
C - - - - - 0x015EB2 05:9EA2: A5 FC     LDA ram_scroll_Y
C - - - - - 0x015EB4 05:9EA4: 18        CLC
C - - - - - 0x015EB5 05:9EA5: 79 B7 F5  ADC tbl_0x01F5C6 + $01,Y
C - - - - - 0x015EB8 05:9EA8: 90 04     BCC bra_9EAE
C - - - - - 0x015EBA 05:9EAA: 18        CLC
C - - - - - 0x015EBB 05:9EAB: 69 10     ADC #$10
C - - - - - 0x015EBD 05:9EAD: E8        INX
bra_9EAE:
C - - - - - 0x015EBE 05:9EAE: 20 C2 9E  JSR sub_9EC2
C - - - - - 0x015EC1 05:9EB1: 8A        TXA
C - - - - - 0x015EC2 05:9EB2: 0A        ASL
C - - - - - 0x015EC3 05:9EB3: 29 02     AND #$02
C - - - - - 0x015EC5 05:9EB5: 05 00     ORA ram_0000
C - - - - - 0x015EC7 05:9EB7: 85 00     STA ram_0000
C - - - - - 0x015EC9 05:9EB9: A5 FF     LDA ram_for_2000
C - - - - - 0x015ECB 05:9EBB: 29 FC     AND #$FC
C - - - - - 0x015ECD 05:9EBD: 05 00     ORA ram_0000
C - - - - - 0x015ECF 05:9EBF: 85 FF     STA ram_for_2000
C - - - - - 0x015ED1 05:9EC1: 60        RTS



sub_9EC2:
C - - - - - 0x015ED2 05:9EC2: 85 FC     STA ram_scroll_Y
C - - - - - 0x015ED4 05:9EC4: 38        SEC
C - - - - - 0x015ED5 05:9EC5: E9 F0     SBC #$F0
C - - - - - 0x015ED7 05:9EC7: 90 03     BCC bra_9ECC_RTS
C - - - - - 0x015ED9 05:9EC9: 85 FC     STA ram_scroll_Y
C - - - - - 0x015EDB 05:9ECB: E8        INX
bra_9ECC_RTS:
C - - - - - 0x015EDC 05:9ECC: 60        RTS



tbl_9ECD:
- D 0 - - - 0x015EDD 05:9ECD: D0        .byte $D0, $08   ; 00 
- D 0 - - - 0x015EDF 05:9ECF: B0        .byte $B0, $0A   ; 01 
- D 0 - - - 0x015EE1 05:9ED1: 90        .byte $90, $0C   ; 02 
- D 0 - - - 0x015EE3 05:9ED3: 70        .byte $70, $0E   ; 03 
- D 0 - - - 0x015EE5 05:9ED5: E0        .byte $E0, $16   ; 04 
- D 0 - - - 0x015EE7 05:9ED7: FF        .byte $FF, $1F   ; 05 



tbl_9ED9:
- D 0 - - - 0x015EE9 05:9ED9: F5 9E     .word _off004_9EF5_00
- D 0 - - - 0x015EEB 05:9EDB: 09 9F     .word _off004_9F09_01
- D 0 - - - 0x015EED 05:9EDD: E5 9E     .word _off004_9EE5_02
- D 0 - - - 0x015EEF 05:9EDF: 09 9F     .word _off004_9F09_03
- D 0 - - - 0x015EF1 05:9EE1: F5 9E     .word _off004_9EF5_04
- D 0 - - - 0x015EF3 05:9EE3: 1D 9F     .word _off004_9F1D_05


; todo
_off004_9EE5_02:
- D 0 - I - 0x015EF5 05:9EE5: BE        .byte $BE   ; 
- D 0 - I - 0x015EF6 05:9EE6: C1        .byte $C1   ; 
- D 0 - I - 0x015EF7 05:9EE7: F0        .byte $F0   ; 
- D 0 - I - 0x015EF8 05:9EE8: C7        .byte $C7   ; 
- D 0 - I - 0x015EF9 05:9EE9: 1E        .byte $1E   ; 
- D 0 - I - 0x015EFA 05:9EEA: 87        .byte $87   ; 
- D 0 - I - 0x015EFB 05:9EEB: 10        .byte $10   ; 
- D 0 - I - 0x015EFC 05:9EEC: 08        .byte $08   ; 
- D 0 - I - 0x015EFD 05:9EED: 1C        .byte $1C   ; 
- D 0 - I - 0x015EFE 05:9EEE: 07        .byte $07   ; 
- D 0 - I - 0x015EFF 05:9EEF: 10        .byte $10   ; 
- D 0 - I - 0x015F00 05:9EF0: 04        .byte $04   ; 
- D 0 - I - 0x015F01 05:9EF1: 1C        .byte $1C   ; 
- D 0 - I - 0x015F02 05:9EF2: 03        .byte $03   ; 
- D 0 - I - 0x015F03 05:9EF3: FF        .byte $FF   ; 
- D 0 - I - 0x015F04 05:9EF4: 04        .byte $04   ; 



_off004_9EF5_00:
_off004_9EF5_04:
- D 0 - I - 0x015F05 05:9EF5: 90        .byte $90   ; 
- D 0 - I - 0x015F06 05:9EF6: C1        .byte $C1   ; 
- D 0 - I - 0x015F07 05:9EF7: FD        .byte $FD   ; 
- D 0 - I - 0x015F08 05:9EF8: C3        .byte $C3   ; 
- D 0 - I - 0x015F09 05:9EF9: 24        .byte $24   ; 
- D 0 - I - 0x015F0A 05:9EFA: C3        .byte $C3   ; 
- D 0 - I - 0x015F0B 05:9EFB: 20        .byte $20   ; 
- D 0 - I - 0x015F0C 05:9EFC: 83        .byte $83   ; 
- D 0 - I - 0x015F0D 05:9EFD: 10        .byte $10   ; 
- D 0 - I - 0x015F0E 05:9EFE: 03        .byte $03   ; 
- D 0 - I - 0x015F0F 05:9EFF: 10        .byte $10   ; 
- D 0 - I - 0x015F10 05:9F00: 08        .byte $08   ; 
- D 0 - I - 0x015F11 05:9F01: 20        .byte $20   ; 
- D 0 - I - 0x015F12 05:9F02: 87        .byte $87   ; 
- D 0 - I - 0x015F13 05:9F03: 10        .byte $10   ; 
- D 0 - I - 0x015F14 05:9F04: 04        .byte $04   ; 
- D 0 - I - 0x015F15 05:9F05: 20        .byte $20   ; 
- D 0 - I - 0x015F16 05:9F06: 83        .byte $83   ; 
- D 0 - I - 0x015F17 05:9F07: FF        .byte $FF   ; 
- D 0 - I - 0x015F18 05:9F08: 04        .byte $04   ; 



_off004_9F09_01:
_off004_9F09_03:
- D 0 - I - 0x015F19 05:9F09: A8        .byte $A8   ; 
- D 0 - I - 0x015F1A 05:9F0A: C1        .byte $C1   ; 
- D 0 - I - 0x015F1B 05:9F0B: E8        .byte $E8   ; 
- D 0 - I - 0x015F1C 05:9F0C: C3        .byte $C3   ; 
- D 0 - I - 0x015F1D 05:9F0D: 2C        .byte $2C   ; 
- D 0 - I - 0x015F1E 05:9F0E: C2        .byte $C2   ; 
- D 0 - I - 0x015F1F 05:9F0F: 20        .byte $20   ; 
- D 0 - I - 0x015F20 05:9F10: 84        .byte $84   ; 
- D 0 - I - 0x015F21 05:9F11: 20        .byte $20   ; 
- D 0 - I - 0x015F22 05:9F12: 88        .byte $88   ; 
- D 0 - I - 0x015F23 05:9F13: 30        .byte $30   ; 
- D 0 - I - 0x015F24 05:9F14: 07        .byte $07   ; 
- D 0 - I - 0x015F25 05:9F15: 10        .byte $10   ; 
- D 0 - I - 0x015F26 05:9F16: 05        .byte $05   ; 
- D 0 - I - 0x015F27 05:9F17: 30        .byte $30   ; 
- D 0 - I - 0x015F28 05:9F18: 03        .byte $03   ; 
- D 0 - I - 0x015F29 05:9F19: 10        .byte $10   ; 
- D 0 - I - 0x015F2A 05:9F1A: 01        .byte $01   ; 
- D 0 - I - 0x015F2B 05:9F1B: FF        .byte $FF   ; 
- D 0 - I - 0x015F2C 05:9F1C: 06        .byte $06   ; 



_off004_9F1D_05:
- D 0 - I - 0x015F2D 05:9F1D: FD        .byte $FD   ; 
- D 0 - I - 0x015F2E 05:9F1E: C1        .byte $C1   ; 
- - - - - - 0x015F2F 05:9F1F: FF        .byte $FF   ; 
- - - - - - 0x015F30 05:9F20: 01        .byte $01   ; 



tbl_9F21:
- - - - - - 0x015F31 05:9F21: 00        .byte $00, $00   ; 
- - - - - - 0x015F33 05:9F23: 00        .byte $00, $00   ; 
- D 0 - - - 0x015F35 05:9F25: 00        .byte $00, $00   ; 
- D 0 - - - 0x015F37 05:9F27: 40        .byte $40, $FF   ; 
- D 0 - - - 0x015F39 05:9F29: 5A        .byte $5A, $00   ; 
- D 0 - - - 0x015F3B 05:9F2B: 75        .byte $75, $FF   ; 
- D 0 - - - 0x015F3D 05:9F2D: 80        .byte $80, $00   ; 
- D 0 - - - 0x015F3F 05:9F2F: 00        .byte $00, $00   ; 
- D 0 - - - 0x015F41 05:9F31: 5A        .byte $5A, $00   ; 
- D 0 - - - 0x015F43 05:9F33: 8B        .byte $8B, $00   ; 
- D 0 - - - 0x015F45 05:9F35: 00        .byte $00, $00   ; 
- D 0 - - - 0x015F47 05:9F37: C0        .byte $C0, $00   ; 
- - - - - - 0x015F49 05:9F39: A6        .byte $A6, $FF   ; 
- - - - - - 0x015F4B 05:9F3B: 8B        .byte $8B, $00   ; 
- D 0 - - - 0x015F4D 05:9F3D: 80        .byte $80, $FF   ; 
- D 0 - - - 0x015F4F 05:9F3F: 00        .byte $00, $00   ; 
- D 0 - - - 0x015F51 05:9F41: A6        .byte $A6, $FF   ; 
- D 0 - - - 0x015F53 05:9F43: 75        .byte $75, $FF   ; 



tbl_9F45:
- D 0 - - - 0x015F55 05:9F45: 02        .byte con_DA9D_02   ; 
- D 0 - - - 0x015F56 05:9F46: FF        .byte $FF   ; 
- D 0 - - - 0x015F57 05:9F47: 02        .byte con_DA9D_02   ; 
- D 0 - - - 0x015F58 05:9F48: FF        .byte $FF   ; 
- D 0 - - - 0x015F59 05:9F49: 01        .byte con_DA9D_01   ; 
- D 0 - - - 0x015F5A 05:9F4A: 03        .byte con_DA9D_03   ; 
- D 0 - - - 0x015F5B 05:9F4B: FF        .byte $FF   ; 
- D 0 - - - 0x015F5C 05:9F4C: FF        .byte $FF   ; 
- D 0 - - - 0x015F5D 05:9F4D: 01        .byte con_DA9D_01   ; 
- D 0 - - - 0x015F5E 05:9F4E: 03        .byte con_DA9D_03   ; 
- D 0 - - - 0x015F5F 05:9F4F: 01        .byte con_DA9D_01   ; 
- D 0 - - - 0x015F60 05:9F50: 03        .byte con_DA9D_03   ; 
- D 0 - - - 0x015F61 05:9F51: 01        .byte con_DA9D_01   ; 
- D 0 - - - 0x015F62 05:9F52: 09        .byte con_DA9D_09   ; 
- D 0 - - - 0x015F63 05:9F53: 0D        .byte con_DA9D_0D   ; 
- D 0 - - - 0x015F64 05:9F54: 09        .byte con_DA9D_09   ; 
- D 0 - - - 0x015F65 05:9F55: 01        .byte con_DA9D_01   ; 
- D 0 - - - 0x015F66 05:9F56: 03        .byte con_DA9D_03   ; 
- D 0 - - - 0x015F67 05:9F57: 01        .byte con_DA9D_01   ; 
- D 0 - - - 0x015F68 05:9F58: 03        .byte con_DA9D_03   ; 



tbl_9F59:
- - - - - - 0x015F69 05:9F59: 00        .byte $00   ; 00 
- D 0 - - - 0x015F6A 05:9F5A: 01        .byte $01   ; 01 
- - - - - - 0x015F6B 05:9F5B: 00        .byte $00   ; 02 
- D 0 - - - 0x015F6C 05:9F5C: 02        .byte $02   ; 03 



tbl_9F5D:
- D 0 - - - 0x015F6D 05:9F5D: 05        .byte con_DA9D_05   ; 00 
- D 0 - - - 0x015F6E 05:9F5E: FF        .byte $FF   ; 01 
- D 0 - - - 0x015F6F 05:9F5F: FF        .byte $FF   ; 02 
- D 0 - - - 0x015F70 05:9F60: FF        .byte $FF   ; 03 
- D 0 - - - 0x015F71 05:9F61: 05        .byte con_DA9D_05   ; 04 
- D 0 - - - 0x015F72 05:9F62: 0B        .byte con_DA9D_0B   ; 05 
- D 0 - - - 0x015F73 05:9F63: FF        .byte $FF   ; 06 
- D 0 - - - 0x015F74 05:9F64: FF        .byte $FF   ; 07 
- D 0 - - - 0x015F75 05:9F65: 05        .byte con_DA9D_05   ; 08 
- D 0 - - - 0x015F76 05:9F66: 0B        .byte con_DA9D_0B   ; 09 
- D 0 - - - 0x015F77 05:9F67: 05        .byte con_DA9D_05   ; 0A 
- D 0 - - - 0x015F78 05:9F68: 0B        .byte con_DA9D_0B   ; 0B 



sub_9F69:
sub_0x015F79:
C - - - - - 0x015F79 05:9F69: 20 D4 A1  JSR sub_A1D4
C - - - - - 0x015F7C 05:9F6C: A4 88     LDY ram_x2_stage
C - - - - - 0x015F7E 05:9F6E: B9 A4 9F  LDA tbl_9FA4,Y
C - - - - - 0x015F81 05:9F71: 85 04     STA ram_0004
C - - - - - 0x015F83 05:9F73: B9 A5 9F  LDA tbl_9FA4 + $01,Y
C - - - - - 0x015F86 05:9F76: 85 05     STA ram_0005
C - - - - - 0x015F88 05:9F78: A0 00     LDY #$00
C - - - - - 0x015F8A 05:9F7A: B1 04     LDA (ram_0004),Y
C - - - - - 0x015F8C 05:9F7C: 85 06     STA ram_0006
C - - - - - 0x015F8E 05:9F7E: 98        TYA
C - - - - - 0x015F8F 05:9F7F: A4 02     LDY ram_0002
C - - - - - 0x015F91 05:9F81: F0 0B     BEQ bra_9F8E
C - - - - - 0x015F93 05:9F83: 18        CLC
bra_9F84_loop:
C - - - - - 0x015F94 05:9F84: 65 06     ADC ram_0006
C - - - - - 0x015F96 05:9F86: 90 03     BCC bra_9F8B
C - - - - - 0x015F98 05:9F88: E6 05     INC ram_0005
C - - - - - 0x015F9A 05:9F8A: 18        CLC
bra_9F8B:
C - - - - - 0x015F9B 05:9F8B: 88        DEY
C - - - - - 0x015F9C 05:9F8C: D0 F6     BNE bra_9F84_loop
bra_9F8E:
C - - - - - 0x015F9E 05:9F8E: 18        CLC
C - - - - - 0x015F9F 05:9F8F: 65 00     ADC ram_0000
C - - - - - 0x015FA1 05:9F91: 90 02     BCC bra_9F95
C - - - - - 0x015FA3 05:9F93: E6 05     INC ram_0005
bra_9F95:
C - - - - - 0x015FA5 05:9F95: A8        TAY
C - - - - - 0x015FA6 05:9F96: 8C 42 03  STY ram_0342
C - - - - - 0x015FA9 05:9F99: C8        INY
C - - - - - 0x015FAA 05:9F9A: B1 04     LDA (ram_0004),Y
C - - - - - 0x015FAC 05:9F9C: 85 86     STA ram_0086
C - - - - - 0x015FAE 05:9F9E: 20 BB A2  JSR sub_A2BB
C - - - - - 0x015FB1 05:9FA1: 4C 0F A2  JMP loc_A20F



tbl_9FA4:
- D 0 - - - 0x015FB4 05:9FA4: AE 9F     .word _off005_9FAE_00
- D 0 - - - 0x015FB6 05:9FA6: C7 9F     .word _off005_9FC7_02
- D 0 - - - 0x015FB8 05:9FA8: 09 A0     .word _off005_A009_04
- D 0 - - - 0x015FBA 05:9FAA: 2D A0     .word _off005_A02D_06
- D 0 - - - 0x015FBC 05:9FAC: B5 A1     .word _off005_A1B5_08



_off005_9FAE_00:
- D 0 - I - 0x015FBE 05:9FAE: 17        .byte $17   ; 
- D 0 - I - 0x015FBF 05:9FAF: 00        .byte $00   ; 
- D 0 - I - 0x015FC0 05:9FB0: 00        .byte $00   ; 
- D 0 - I - 0x015FC1 05:9FB1: 00        .byte $00   ; 
- D 0 - I - 0x015FC2 05:9FB2: 01        .byte $01   ; 
- D 0 - I - 0x015FC3 05:9FB3: 01        .byte $01   ; 
- D 0 - I - 0x015FC4 05:9FB4: 02        .byte $02   ; 
- D 0 - I - 0x015FC5 05:9FB5: 02        .byte $02   ; 
- D 0 - I - 0x015FC6 05:9FB6: 02        .byte $02   ; 
- D 0 - I - 0x015FC7 05:9FB7: 02        .byte $02   ; 
- D 0 - I - 0x015FC8 05:9FB8: 02        .byte $02   ; 
- D 0 - I - 0x015FC9 05:9FB9: 02        .byte $02   ; 
- D 0 - I - 0x015FCA 05:9FBA: 03        .byte $03   ; 
- D 0 - I - 0x015FCB 05:9FBB: 03        .byte $03   ; 
- D 0 - I - 0x015FCC 05:9FBC: 03        .byte $03   ; 
- D 0 - I - 0x015FCD 05:9FBD: 03        .byte $03   ; 
- D 0 - I - 0x015FCE 05:9FBE: 04        .byte $04   ; 
- D 0 - I - 0x015FCF 05:9FBF: 04        .byte $04   ; 
- D 0 - I - 0x015FD0 05:9FC0: 04        .byte $04   ; 
- D 0 - I - 0x015FD1 05:9FC1: 04        .byte $04   ; 
- D 0 - I - 0x015FD2 05:9FC2: 04        .byte $04   ; 
- D 0 - I - 0x015FD3 05:9FC3: 04        .byte $04   ; 
- D 0 - I - 0x015FD4 05:9FC4: 04        .byte $04   ; 
- D 0 - I - 0x015FD5 05:9FC5: 04        .byte $04   ; 
- - - - - - 0x015FD6 05:9FC6: 04        .byte $04   ; 



_off005_9FC7_02:
- D 0 - I - 0x015FD7 05:9FC7: 05        .byte $05   ; 
- D 0 - I - 0x015FD8 05:9FC8: 09        .byte $09   ; 
- D 0 - I - 0x015FD9 05:9FC9: 09        .byte $09   ; 
- - - - - - 0x015FDA 05:9FCA: 09        .byte $09   ; 
- - - - - - 0x015FDB 05:9FCB: 09        .byte $09   ; 
- D 0 - I - 0x015FDC 05:9FCC: 0A        .byte $0A   ; 
- - - - - - 0x015FDD 05:9FCD: 08        .byte $08   ; 
- D 0 - I - 0x015FDE 05:9FCE: 08        .byte $08   ; 
- - - - - - 0x015FDF 05:9FCF: 08        .byte $08   ; 
- - - - - - 0x015FE0 05:9FD0: 08        .byte $08   ; 
- D 0 - I - 0x015FE1 05:9FD1: 0A        .byte $0A   ; 
- - - - - - 0x015FE2 05:9FD2: 08        .byte $08   ; 
- D 0 - I - 0x015FE3 05:9FD3: 08        .byte $08   ; 
- - - - - - 0x015FE4 05:9FD4: 08        .byte $08   ; 
- D 0 - I - 0x015FE5 05:9FD5: 08        .byte $08   ; 
- D 0 - I - 0x015FE6 05:9FD6: 0A        .byte $0A   ; 
- - - - - - 0x015FE7 05:9FD7: 08        .byte $08   ; 
- D 0 - I - 0x015FE8 05:9FD8: 08        .byte $08   ; 
- - - - - - 0x015FE9 05:9FD9: 08        .byte $08   ; 
- - - - - - 0x015FEA 05:9FDA: 08        .byte $08   ; 
- - - - - - 0x015FEB 05:9FDB: 0A        .byte $0A   ; 
- D 0 - I - 0x015FEC 05:9FDC: 07        .byte $07   ; 
- D 0 - I - 0x015FED 05:9FDD: 07        .byte $07   ; 
- - - - - - 0x015FEE 05:9FDE: 07        .byte $07   ; 
- - - - - - 0x015FEF 05:9FDF: 07        .byte $07   ; 
- - - - - - 0x015FF0 05:9FE0: 07        .byte $07   ; 
- D 0 - I - 0x015FF1 05:9FE1: 07        .byte $07   ; 
- D 0 - I - 0x015FF2 05:9FE2: 07        .byte $07   ; 
- - - - - - 0x015FF3 05:9FE3: 07        .byte $07   ; 
- - - - - - 0x015FF4 05:9FE4: 07        .byte $07   ; 
- - - - - - 0x015FF5 05:9FE5: 07        .byte $07   ; 
- - - - - - 0x015FF6 05:9FE6: 06        .byte $06   ; 
- D 0 - I - 0x015FF7 05:9FE7: 06        .byte $06   ; 
- - - - - - 0x015FF8 05:9FE8: 06        .byte $06   ; 
- - - - - - 0x015FF9 05:9FE9: 06        .byte $06   ; 
- - - - - - 0x015FFA 05:9FEA: 06        .byte $06   ; 
- - - - - - 0x015FFB 05:9FEB: 06        .byte $06   ; 
- D 0 - I - 0x015FFC 05:9FEC: 06        .byte $06   ; 
- - - - - - 0x015FFD 05:9FED: 06        .byte $06   ; 
- - - - - - 0x015FFE 05:9FEE: 05        .byte $05   ; 
- - - - - - 0x015FFF 05:9FEF: 05        .byte $05   ; 
- - - - - - 0x016000 05:9FF0: 06        .byte $06   ; 
- D 0 - I - 0x016001 05:9FF1: 06        .byte $06   ; 
- D 0 - I - 0x016002 05:9FF2: 05        .byte $05   ; 
- - - - - - 0x016003 05:9FF3: 05        .byte $05   ; 
- - - - - - 0x016004 05:9FF4: 05        .byte $05   ; 
- - - - - - 0x016005 05:9FF5: 05        .byte $05   ; 
- - - - - - 0x016006 05:9FF6: 05        .byte $05   ; 
- D 0 - I - 0x016007 05:9FF7: 05        .byte $05   ; 
- D 0 - I - 0x016008 05:9FF8: 05        .byte $05   ; 
- - - - - - 0x016009 05:9FF9: 05        .byte $05   ; 
- - - - - - 0x01600A 05:9FFA: 05        .byte $05   ; 
- - - - - - 0x01600B 05:9FFB: 05        .byte $05   ; 
- - - - - - 0x01600C 05:9FFC: 05        .byte $05   ; 
- D 0 - I - 0x01600D 05:9FFD: 05        .byte $05   ; 
- - - - - - 0x01600E 05:9FFE: 05        .byte $05   ; 
- - - - - - 0x01600F 05:9FFF: 05        .byte $05   ; 
- D 1 - - - 0x016010 05:A000: 05        .byte $05   ; 
- D 1 - I - 0x016011 05:A001: 05        .byte $05   ; 
- D 1 - I - 0x016012 05:A002: 05        .byte $05   ; 
- D 1 - I - 0x016013 05:A003: 05        .byte $05   ; 
- - - - - - 0x016014 05:A004: 05        .byte $05   ; 
- - - - - - 0x016015 05:A005: 05        .byte $05   ; 
- - - - - - 0x016016 05:A006: 05        .byte $05   ; 
- - - - - - 0x016017 05:A007: 05        .byte $05   ; 
- - - - - - 0x016018 05:A008: 05        .byte $05   ; 



_off005_A009_04:
- D 1 - I - 0x016019 05:A009: 05        .byte $05   ; 
- - - - - - 0x01601A 05:A00A: 0E        .byte $0E   ; 
- - - - - - 0x01601B 05:A00B: 0D        .byte $0D   ; 
- - - - - - 0x01601C 05:A00C: 0D        .byte $0D   ; 
- - - - - - 0x01601D 05:A00D: 0D        .byte $0D   ; 
- - - - - - 0x01601E 05:A00E: 0D        .byte $0D   ; 
- D 1 - I - 0x01601F 05:A00F: 0E        .byte $0E   ; 
- D 1 - I - 0x016020 05:A010: 0D        .byte $0D   ; 
- D 1 - I - 0x016021 05:A011: 0D        .byte $0D   ; 
- D 1 - I - 0x016022 05:A012: 0D        .byte $0D   ; 
- - - - - - 0x016023 05:A013: 0D        .byte $0D   ; 
- - - - - - 0x016024 05:A014: 0D        .byte $0D   ; 
- - - - - - 0x016025 05:A015: 0D        .byte $0D   ; 
- D 1 - I - 0x016026 05:A016: 0D        .byte $0D   ; 
- D 1 - I - 0x016027 05:A017: 0D        .byte $0D   ; 
- - - - - - 0x016028 05:A018: 0D        .byte $0D   ; 
- - - - - - 0x016029 05:A019: 0B        .byte $0B   ; 
- D 1 - I - 0x01602A 05:A01A: 0B        .byte $0B   ; 
- D 1 - I - 0x01602B 05:A01B: 0B        .byte $0B   ; 
- D 1 - I - 0x01602C 05:A01C: 0D        .byte $0D   ; 
- - - - - - 0x01602D 05:A01D: 0D        .byte $0D   ; 
- - - - - - 0x01602E 05:A01E: 0B        .byte $0B   ; 
- - - - - - 0x01602F 05:A01F: 0B        .byte $0B   ; 
- D 1 - I - 0x016030 05:A020: 0B        .byte $0B   ; 
- D 1 - I - 0x016031 05:A021: 0B        .byte $0B   ; 
- - - - - - 0x016032 05:A022: 0B        .byte $0B   ; 
- - - - - - 0x016033 05:A023: 0B        .byte $0B   ; 
- - - - - - 0x016034 05:A024: 0B        .byte $0B   ; 
- D 1 - I - 0x016035 05:A025: 0B        .byte $0B   ; 
- D 1 - I - 0x016036 05:A026: 0B        .byte $0B   ; 
- - - - - - 0x016037 05:A027: 0C        .byte $0C   ; 
- - - - - - 0x016038 05:A028: 0B        .byte $0B   ; 
- - - - - - 0x016039 05:A029: 0B        .byte $0B   ; 
- - - - - - 0x01603A 05:A02A: 0B        .byte $0B   ; 
- - - - - - 0x01603B 05:A02B: 0B        .byte $0B   ; 
- - - - - - 0x01603C 05:A02C: 0B        .byte $0B   ; 



_off005_A02D_06:
- D 1 - I - 0x01603D 05:A02D: 0C        .byte $0C   ; 
- - - - - - 0x01603E 05:A02E: 0F        .byte $0F   ; 
- - - - - - 0x01603F 05:A02F: 0F        .byte $0F   ; 
- - - - - - 0x016040 05:A030: 0F        .byte $0F   ; 
- - - - - - 0x016041 05:A031: 0F        .byte $0F   ; 
- - - - - - 0x016042 05:A032: 0F        .byte $0F   ; 
- - - - - - 0x016043 05:A033: 0F        .byte $0F   ; 
- - - - - - 0x016044 05:A034: 0F        .byte $0F   ; 
- - - - - - 0x016045 05:A035: 0F        .byte $0F   ; 
- D 1 - I - 0x016046 05:A036: 0F        .byte $0F   ; 
- - - - - - 0x016047 05:A037: 0F        .byte $0F   ; 
- - - - - - 0x016048 05:A038: 0F        .byte $0F   ; 
- - - - - - 0x016049 05:A039: 0F        .byte $0F   ; 
- - - - - - 0x01604A 05:A03A: 13        .byte $13   ; 
- - - - - - 0x01604B 05:A03B: 13        .byte $13   ; 
- - - - - - 0x01604C 05:A03C: 13        .byte $13   ; 
- - - - - - 0x01604D 05:A03D: 13        .byte $13   ; 
- - - - - - 0x01604E 05:A03E: 13        .byte $13   ; 
- - - - - - 0x01604F 05:A03F: 13        .byte $13   ; 
- - - - - - 0x016050 05:A040: 13        .byte $13   ; 
- - - - - - 0x016051 05:A041: 13        .byte $13   ; 
- - - - - - 0x016052 05:A042: 13        .byte $13   ; 
- - - - - - 0x016053 05:A043: 13        .byte $13   ; 
- - - - - - 0x016054 05:A044: 13        .byte $13   ; 
- - - - - - 0x016055 05:A045: 13        .byte $13   ; 
- - - - - - 0x016056 05:A046: 13        .byte $13   ; 
- - - - - - 0x016057 05:A047: 13        .byte $13   ; 
- - - - - - 0x016058 05:A048: 13        .byte $13   ; 
- - - - - - 0x016059 05:A049: 13        .byte $13   ; 
- - - - - - 0x01605A 05:A04A: 13        .byte $13   ; 
- - - - - - 0x01605B 05:A04B: 13        .byte $13   ; 
- - - - - - 0x01605C 05:A04C: 13        .byte $13   ; 
- - - - - - 0x01605D 05:A04D: 13        .byte $13   ; 
- - - - - - 0x01605E 05:A04E: 13        .byte $13   ; 
- - - - - - 0x01605F 05:A04F: 13        .byte $13   ; 
- - - - - - 0x016060 05:A050: 13        .byte $13   ; 
- - - - - - 0x016061 05:A051: 13        .byte $13   ; 
- - - - - - 0x016062 05:A052: 14        .byte $14   ; 
- - - - - - 0x016063 05:A053: 14        .byte $14   ; 
- - - - - - 0x016064 05:A054: 14        .byte $14   ; 
- - - - - - 0x016065 05:A055: 14        .byte $14   ; 
- D 1 - I - 0x016066 05:A056: 14        .byte $14   ; 
- - - - - - 0x016067 05:A057: 14        .byte $14   ; 
- D 1 - I - 0x016068 05:A058: 14        .byte $14   ; 
- D 1 - I - 0x016069 05:A059: 13        .byte $13   ; 
- D 1 - I - 0x01606A 05:A05A: 13        .byte $13   ; 
- D 1 - I - 0x01606B 05:A05B: 13        .byte $13   ; 
- D 1 - I - 0x01606C 05:A05C: 15        .byte $15   ; 
- - - - - - 0x01606D 05:A05D: 15        .byte $15   ; 
- - - - - - 0x01606E 05:A05E: 14        .byte $14   ; 
- - - - - - 0x01606F 05:A05F: 14        .byte $14   ; 
- - - - - - 0x016070 05:A060: 14        .byte $14   ; 
- - - - - - 0x016071 05:A061: 14        .byte $14   ; 
- - - - - - 0x016072 05:A062: 14        .byte $14   ; 
- - - - - - 0x016073 05:A063: 14        .byte $14   ; 
- - - - - - 0x016074 05:A064: 14        .byte $14   ; 
- - - - - - 0x016075 05:A065: 13        .byte $13   ; 
- D 1 - I - 0x016076 05:A066: 13        .byte $13   ; 
- - - - - - 0x016077 05:A067: 13        .byte $13   ; 
- - - - - - 0x016078 05:A068: 15        .byte $15   ; 
- - - - - - 0x016079 05:A069: 15        .byte $15   ; 
- - - - - - 0x01607A 05:A06A: 14        .byte $14   ; 
- - - - - - 0x01607B 05:A06B: 14        .byte $14   ; 
- - - - - - 0x01607C 05:A06C: 14        .byte $14   ; 
- - - - - - 0x01607D 05:A06D: 14        .byte $14   ; 
- - - - - - 0x01607E 05:A06E: 14        .byte $14   ; 
- - - - - - 0x01607F 05:A06F: 14        .byte $14   ; 
- - - - - - 0x016080 05:A070: 14        .byte $14   ; 
- - - - - - 0x016081 05:A071: 13        .byte $13   ; 
- D 1 - I - 0x016082 05:A072: 13        .byte $13   ; 
- - - - - - 0x016083 05:A073: 13        .byte $13   ; 
- - - - - - 0x016084 05:A074: 15        .byte $15   ; 
- - - - - - 0x016085 05:A075: 15        .byte $15   ; 
- - - - - - 0x016086 05:A076: 13        .byte $13   ; 
- - - - - - 0x016087 05:A077: 13        .byte $13   ; 
- - - - - - 0x016088 05:A078: 13        .byte $13   ; 
- - - - - - 0x016089 05:A079: 13        .byte $13   ; 
- - - - - - 0x01608A 05:A07A: 13        .byte $13   ; 
- - - - - - 0x01608B 05:A07B: 13        .byte $13   ; 
- - - - - - 0x01608C 05:A07C: 13        .byte $13   ; 
- - - - - - 0x01608D 05:A07D: 13        .byte $13   ; 
- D 1 - I - 0x01608E 05:A07E: 13        .byte $13   ; 
- - - - - - 0x01608F 05:A07F: 13        .byte $13   ; 
- - - - - - 0x016090 05:A080: 13        .byte $13   ; 
- - - - - - 0x016091 05:A081: 13        .byte $13   ; 
- - - - - - 0x016092 05:A082: 0F        .byte $0F   ; 
- - - - - - 0x016093 05:A083: 0F        .byte $0F   ; 
- - - - - - 0x016094 05:A084: 0F        .byte $0F   ; 
- - - - - - 0x016095 05:A085: 0F        .byte $0F   ; 
- - - - - - 0x016096 05:A086: 0F        .byte $0F   ; 
- - - - - - 0x016097 05:A087: 0F        .byte $0F   ; 
- - - - - - 0x016098 05:A088: 0F        .byte $0F   ; 
- - - - - - 0x016099 05:A089: 0F        .byte $0F   ; 
- D 1 - I - 0x01609A 05:A08A: 0F        .byte $0F   ; 
- - - - - - 0x01609B 05:A08B: 0F        .byte $0F   ; 
- - - - - - 0x01609C 05:A08C: 0F        .byte $0F   ; 
- - - - - - 0x01609D 05:A08D: 0F        .byte $0F   ; 
- - - - - - 0x01609E 05:A08E: 0F        .byte $0F   ; 
- - - - - - 0x01609F 05:A08F: 0F        .byte $0F   ; 
- - - - - - 0x0160A0 05:A090: 0F        .byte $0F   ; 
- - - - - - 0x0160A1 05:A091: 0F        .byte $0F   ; 
- - - - - - 0x0160A2 05:A092: 0F        .byte $0F   ; 
- - - - - - 0x0160A3 05:A093: 0F        .byte $0F   ; 
- D 1 - I - 0x0160A4 05:A094: 0F        .byte $0F   ; 
- - - - - - 0x0160A5 05:A095: 0F        .byte $0F   ; 
- D 1 - I - 0x0160A6 05:A096: 0F        .byte $0F   ; 
- - - - - - 0x0160A7 05:A097: 0F        .byte $0F   ; 
- - - - - - 0x0160A8 05:A098: 0F        .byte $0F   ; 
- - - - - - 0x0160A9 05:A099: 0F        .byte $0F   ; 
- - - - - - 0x0160AA 05:A09A: 0F        .byte $0F   ; 
- - - - - - 0x0160AB 05:A09B: 0F        .byte $0F   ; 
- - - - - - 0x0160AC 05:A09C: 0F        .byte $0F   ; 
- - - - - - 0x0160AD 05:A09D: 0F        .byte $0F   ; 
- - - - - - 0x0160AE 05:A09E: 0F        .byte $0F   ; 
- - - - - - 0x0160AF 05:A09F: 0F        .byte $0F   ; 
- D 1 - I - 0x0160B0 05:A0A0: 0F        .byte $0F   ; 
- - - - - - 0x0160B1 05:A0A1: 0F        .byte $0F   ; 
- - - - - - 0x0160B2 05:A0A2: 0F        .byte $0F   ; 
- - - - - - 0x0160B3 05:A0A3: 0F        .byte $0F   ; 
- - - - - - 0x0160B4 05:A0A4: 0F        .byte $0F   ; 
- - - - - - 0x0160B5 05:A0A5: 0F        .byte $0F   ; 
- - - - - - 0x0160B6 05:A0A6: 0F        .byte $0F   ; 
- - - - - - 0x0160B7 05:A0A7: 0F        .byte $0F   ; 
- - - - - - 0x0160B8 05:A0A8: 0F        .byte $0F   ; 
- - - - - - 0x0160B9 05:A0A9: 0F        .byte $0F   ; 
- D 1 - I - 0x0160BA 05:A0AA: 0F        .byte $0F   ; 
- - - - - - 0x0160BB 05:A0AB: 0F        .byte $0F   ; 
- D 1 - I - 0x0160BC 05:A0AC: 0F        .byte $0F   ; 
- - - - - - 0x0160BD 05:A0AD: 0F        .byte $0F   ; 
- - - - - - 0x0160BE 05:A0AE: 0F        .byte $0F   ; 
- - - - - - 0x0160BF 05:A0AF: 0F        .byte $0F   ; 
- - - - - - 0x0160C0 05:A0B0: 0F        .byte $0F   ; 
- - - - - - 0x0160C1 05:A0B1: 0F        .byte $0F   ; 
- - - - - - 0x0160C2 05:A0B2: 0F        .byte $0F   ; 
- - - - - - 0x0160C3 05:A0B3: 0F        .byte $0F   ; 
- - - - - - 0x0160C4 05:A0B4: 0F        .byte $0F   ; 
- - - - - - 0x0160C5 05:A0B5: 0F        .byte $0F   ; 
- D 1 - I - 0x0160C6 05:A0B6: 0F        .byte $0F   ; 
- - - - - - 0x0160C7 05:A0B7: 0F        .byte $0F   ; 
- - - - - - 0x0160C8 05:A0B8: 0F        .byte $0F   ; 
- - - - - - 0x0160C9 05:A0B9: 0F        .byte $0F   ; 
- - - - - - 0x0160CA 05:A0BA: 0F        .byte $0F   ; 
- - - - - - 0x0160CB 05:A0BB: 0F        .byte $0F   ; 
- - - - - - 0x0160CC 05:A0BC: 0F        .byte $0F   ; 
- - - - - - 0x0160CD 05:A0BD: 0F        .byte $0F   ; 
- - - - - - 0x0160CE 05:A0BE: 0F        .byte $0F   ; 
- - - - - - 0x0160CF 05:A0BF: 0F        .byte $0F   ; 
- - - - - - 0x0160D0 05:A0C0: 0F        .byte $0F   ; 
- - - - - - 0x0160D1 05:A0C1: 0F        .byte $0F   ; 
- D 1 - I - 0x0160D2 05:A0C2: 0F        .byte $0F   ; 
- - - - - - 0x0160D3 05:A0C3: 0F        .byte $0F   ; 
- D 1 - I - 0x0160D4 05:A0C4: 0F        .byte $0F   ; 
- - - - - - 0x0160D5 05:A0C5: 0F        .byte $0F   ; 
- - - - - - 0x0160D6 05:A0C6: 0F        .byte $0F   ; 
- - - - - - 0x0160D7 05:A0C7: 0F        .byte $0F   ; 
- - - - - - 0x0160D8 05:A0C8: 0F        .byte $0F   ; 
- - - - - - 0x0160D9 05:A0C9: 0F        .byte $0F   ; 
- - - - - - 0x0160DA 05:A0CA: 0F        .byte $0F   ; 
- - - - - - 0x0160DB 05:A0CB: 0F        .byte $0F   ; 
- - - - - - 0x0160DC 05:A0CC: 0F        .byte $0F   ; 
- - - - - - 0x0160DD 05:A0CD: 0F        .byte $0F   ; 
- - - - - - 0x0160DE 05:A0CE: 0F        .byte $0F   ; 
- - - - - - 0x0160DF 05:A0CF: 0F        .byte $0F   ; 
- D 1 - I - 0x0160E0 05:A0D0: 0F        .byte $0F   ; 
- - - - - - 0x0160E1 05:A0D1: 0F        .byte $0F   ; 
- - - - - - 0x0160E2 05:A0D2: 0F        .byte $0F   ; 
- - - - - - 0x0160E3 05:A0D3: 0F        .byte $0F   ; 
- - - - - - 0x0160E4 05:A0D4: 0F        .byte $0F   ; 
- - - - - - 0x0160E5 05:A0D5: 0F        .byte $0F   ; 
- - - - - - 0x0160E6 05:A0D6: 0F        .byte $0F   ; 
- - - - - - 0x0160E7 05:A0D7: 0F        .byte $0F   ; 
- - - - - - 0x0160E8 05:A0D8: 0F        .byte $0F   ; 
- - - - - - 0x0160E9 05:A0D9: 0F        .byte $0F   ; 
- D 1 - I - 0x0160EA 05:A0DA: 0F        .byte $0F   ; 
- D 1 - I - 0x0160EB 05:A0DB: 0F        .byte $0F   ; 
- D 1 - I - 0x0160EC 05:A0DC: 0F        .byte $0F   ; 
- - - - - - 0x0160ED 05:A0DD: 0F        .byte $0F   ; 
- - - - - - 0x0160EE 05:A0DE: 0F        .byte $0F   ; 
- - - - - - 0x0160EF 05:A0DF: 0F        .byte $0F   ; 
- - - - - - 0x0160F0 05:A0E0: 0F        .byte $0F   ; 
- - - - - - 0x0160F1 05:A0E1: 0F        .byte $0F   ; 
- - - - - - 0x0160F2 05:A0E2: 0F        .byte $0F   ; 
- - - - - - 0x0160F3 05:A0E3: 0F        .byte $0F   ; 
- - - - - - 0x0160F4 05:A0E4: 0F        .byte $0F   ; 
- - - - - - 0x0160F5 05:A0E5: 0F        .byte $0F   ; 
- D 1 - I - 0x0160F6 05:A0E6: 0F        .byte $0F   ; 
- - - - - - 0x0160F7 05:A0E7: 0F        .byte $0F   ; 
- - - - - - 0x0160F8 05:A0E8: 0F        .byte $0F   ; 
- - - - - - 0x0160F9 05:A0E9: 0F        .byte $0F   ; 
- - - - - - 0x0160FA 05:A0EA: 0F        .byte $0F   ; 
- - - - - - 0x0160FB 05:A0EB: 0F        .byte $0F   ; 
- - - - - - 0x0160FC 05:A0EC: 0F        .byte $0F   ; 
- - - - - - 0x0160FD 05:A0ED: 0F        .byte $0F   ; 
- - - - - - 0x0160FE 05:A0EE: 10        .byte $10   ; 
- - - - - - 0x0160FF 05:A0EF: 10        .byte $10   ; 
- - - - - - 0x016100 05:A0F0: 10        .byte $10   ; 
- - - - - - 0x016101 05:A0F1: 10        .byte $10   ; 
- D 1 - I - 0x016102 05:A0F2: 10        .byte $10   ; 
- - - - - - 0x016103 05:A0F3: 10        .byte $10   ; 
- - - - - - 0x016104 05:A0F4: 10        .byte $10   ; 
- - - - - - 0x016105 05:A0F5: 10        .byte $10   ; 
- - - - - - 0x016106 05:A0F6: 10        .byte $10   ; 
- - - - - - 0x016107 05:A0F7: 10        .byte $10   ; 
- - - - - - 0x016108 05:A0F8: 10        .byte $10   ; 
- - - - - - 0x016109 05:A0F9: 10        .byte $10   ; 
- - - - - - 0x01610A 05:A0FA: 10        .byte $10   ; 
- - - - - - 0x01610B 05:A0FB: 10        .byte $10   ; 
- - - - - - 0x01610C 05:A0FC: 10        .byte $10   ; 
- - - - - - 0x01610D 05:A0FD: 10        .byte $10   ; 
- D 1 - I - 0x01610E 05:A0FE: 10        .byte $10   ; 
- - - - - - 0x01610F 05:A0FF: 10        .byte $10   ; 
- - - - - - 0x016110 05:A100: 10        .byte $10   ; 
- - - - - - 0x016111 05:A101: 10        .byte $10   ; 
- - - - - - 0x016112 05:A102: 10        .byte $10   ; 
- - - - - - 0x016113 05:A103: 10        .byte $10   ; 
- - - - - - 0x016114 05:A104: 10        .byte $10   ; 
- - - - - - 0x016115 05:A105: 10        .byte $10   ; 
- - - - - - 0x016116 05:A106: 11        .byte $11   ; 
- - - - - - 0x016117 05:A107: 11        .byte $11   ; 
- D 1 - I - 0x016118 05:A108: 11        .byte $11   ; 
- D 1 - I - 0x016119 05:A109: 10        .byte $10   ; 
- D 1 - I - 0x01611A 05:A10A: 10        .byte $10   ; 
- D 1 - I - 0x01611B 05:A10B: 10        .byte $10   ; 
- D 1 - I - 0x01611C 05:A10C: 12        .byte $12   ; 
- - - - - - 0x01611D 05:A10D: 12        .byte $12   ; 
- - - - - - 0x01611E 05:A10E: 12        .byte $12   ; 
- - - - - - 0x01611F 05:A10F: 12        .byte $12   ; 
- - - - - - 0x016120 05:A110: 12        .byte $12   ; 
- - - - - - 0x016121 05:A111: 12        .byte $12   ; 
- - - - - - 0x016122 05:A112: 11        .byte $11   ; 
- - - - - - 0x016123 05:A113: 11        .byte $11   ; 
- D 1 - I - 0x016124 05:A114: 11        .byte $11   ; 
- D 1 - I - 0x016125 05:A115: 10        .byte $10   ; 
- D 1 - I - 0x016126 05:A116: 10        .byte $10   ; 
- - - - - - 0x016127 05:A117: 10        .byte $10   ; 
- - - - - - 0x016128 05:A118: 12        .byte $12   ; 
- - - - - - 0x016129 05:A119: 12        .byte $12   ; 
- - - - - - 0x01612A 05:A11A: 12        .byte $12   ; 
- - - - - - 0x01612B 05:A11B: 12        .byte $12   ; 
- - - - - - 0x01612C 05:A11C: 12        .byte $12   ; 
- - - - - - 0x01612D 05:A11D: 12        .byte $12   ; 
- - - - - - 0x01612E 05:A11E: 11        .byte $11   ; 
- - - - - - 0x01612F 05:A11F: 11        .byte $11   ; 
- - - - - - 0x016130 05:A120: 11        .byte $11   ; 
- - - - - - 0x016131 05:A121: 10        .byte $10   ; 
- D 1 - I - 0x016132 05:A122: 10        .byte $10   ; 
- - - - - - 0x016133 05:A123: 10        .byte $10   ; 
- - - - - - 0x016134 05:A124: 10        .byte $10   ; 
- - - - - - 0x016135 05:A125: 10        .byte $10   ; 
- - - - - - 0x016136 05:A126: 10        .byte $10   ; 
- - - - - - 0x016137 05:A127: 10        .byte $10   ; 
- - - - - - 0x016138 05:A128: 10        .byte $10   ; 
- - - - - - 0x016139 05:A129: 10        .byte $10   ; 
- - - - - - 0x01613A 05:A12A: 10        .byte $10   ; 
- - - - - - 0x01613B 05:A12B: 10        .byte $10   ; 
- - - - - - 0x01613C 05:A12C: 10        .byte $10   ; 
- - - - - - 0x01613D 05:A12D: 10        .byte $10   ; 
- D 1 - I - 0x01613E 05:A12E: 10        .byte $10   ; 
- - - - - - 0x01613F 05:A12F: 10        .byte $10   ; 
- - - - - - 0x016140 05:A130: 10        .byte $10   ; 
- - - - - - 0x016141 05:A131: 10        .byte $10   ; 
- - - - - - 0x016142 05:A132: 10        .byte $10   ; 
- - - - - - 0x016143 05:A133: 10        .byte $10   ; 
- - - - - - 0x016144 05:A134: 10        .byte $10   ; 
- - - - - - 0x016145 05:A135: 10        .byte $10   ; 
- - - - - - 0x016146 05:A136: 0F        .byte $0F   ; 
- - - - - - 0x016147 05:A137: 0F        .byte $0F   ; 
- - - - - - 0x016148 05:A138: 0F        .byte $0F   ; 
- - - - - - 0x016149 05:A139: 0F        .byte $0F   ; 
- D 1 - I - 0x01614A 05:A13A: 0F        .byte $0F   ; 
- - - - - - 0x01614B 05:A13B: 0F        .byte $0F   ; 
- - - - - - 0x01614C 05:A13C: 0F        .byte $0F   ; 
- - - - - - 0x01614D 05:A13D: 0F        .byte $0F   ; 
- - - - - - 0x01614E 05:A13E: 0F        .byte $0F   ; 
- - - - - - 0x01614F 05:A13F: 0F        .byte $0F   ; 
- - - - - - 0x016150 05:A140: 0F        .byte $0F   ; 
- - - - - - 0x016151 05:A141: 0F        .byte $0F   ; 
- - - - - - 0x016152 05:A142: 0F        .byte $0F   ; 
- - - - - - 0x016153 05:A143: 0F        .byte $0F   ; 
- D 1 - I - 0x016154 05:A144: 0F        .byte $0F   ; 
- - - - - - 0x016155 05:A145: 0F        .byte $0F   ; 
- D 1 - I - 0x016156 05:A146: 0F        .byte $0F   ; 
- - - - - - 0x016157 05:A147: 0F        .byte $0F   ; 
- - - - - - 0x016158 05:A148: 0F        .byte $0F   ; 
- - - - - - 0x016159 05:A149: 0F        .byte $0F   ; 
- - - - - - 0x01615A 05:A14A: 0F        .byte $0F   ; 
- - - - - - 0x01615B 05:A14B: 0F        .byte $0F   ; 
- - - - - - 0x01615C 05:A14C: 0F        .byte $0F   ; 
- - - - - - 0x01615D 05:A14D: 0F        .byte $0F   ; 
- - - - - - 0x01615E 05:A14E: 0F        .byte $0F   ; 
- - - - - - 0x01615F 05:A14F: 0F        .byte $0F   ; 
- D 1 - I - 0x016160 05:A150: 0F        .byte $0F   ; 
- - - - - - 0x016161 05:A151: 0F        .byte $0F   ; 
- - - - - - 0x016162 05:A152: 0F        .byte $0F   ; 
- - - - - - 0x016163 05:A153: 0F        .byte $0F   ; 
- - - - - - 0x016164 05:A154: 0F        .byte $0F   ; 
- - - - - - 0x016165 05:A155: 0F        .byte $0F   ; 
- - - - - - 0x016166 05:A156: 0F        .byte $0F   ; 
- - - - - - 0x016167 05:A157: 0F        .byte $0F   ; 
- - - - - - 0x016168 05:A158: 0F        .byte $0F   ; 
- - - - - - 0x016169 05:A159: 0F        .byte $0F   ; 
- - - - - - 0x01616A 05:A15A: 10        .byte $10   ; 
- - - - - - 0x01616B 05:A15B: 10        .byte $10   ; 
- D 1 - I - 0x01616C 05:A15C: 10        .byte $10   ; 
- - - - - - 0x01616D 05:A15D: 10        .byte $10   ; 
- - - - - - 0x01616E 05:A15E: 10        .byte $10   ; 
- - - - - - 0x01616F 05:A15F: 10        .byte $10   ; 
- - - - - - 0x016170 05:A160: 10        .byte $10   ; 
- - - - - - 0x016171 05:A161: 10        .byte $10   ; 
- - - - - - 0x016172 05:A162: 10        .byte $10   ; 
- - - - - - 0x016173 05:A163: 10        .byte $10   ; 
- - - - - - 0x016174 05:A164: 10        .byte $10   ; 
- - - - - - 0x016175 05:A165: 10        .byte $10   ; 
- - - - - - 0x016176 05:A166: 10        .byte $10   ; 
- - - - - - 0x016177 05:A167: 10        .byte $10   ; 
- D 1 - I - 0x016178 05:A168: 10        .byte $10   ; 
- - - - - - 0x016179 05:A169: 10        .byte $10   ; 
- - - - - - 0x01617A 05:A16A: 10        .byte $10   ; 
- - - - - - 0x01617B 05:A16B: 10        .byte $10   ; 
- - - - - - 0x01617C 05:A16C: 10        .byte $10   ; 
- - - - - - 0x01617D 05:A16D: 10        .byte $10   ; 
- - - - - - 0x01617E 05:A16E: 10        .byte $10   ; 
- - - - - - 0x01617F 05:A16F: 10        .byte $10   ; 
- - - - - - 0x016180 05:A170: 10        .byte $10   ; 
- - - - - - 0x016181 05:A171: 10        .byte $10   ; 
- D 1 - I - 0x016182 05:A172: 11        .byte $11   ; 
- D 1 - I - 0x016183 05:A173: 10        .byte $10   ; 
- D 1 - I - 0x016184 05:A174: 10        .byte $10   ; 
- D 1 - I - 0x016185 05:A175: 10        .byte $10   ; 
- D 1 - I - 0x016186 05:A176: 12        .byte $12   ; 
- - - - - - 0x016187 05:A177: 12        .byte $12   ; 
- - - - - - 0x016188 05:A178: 12        .byte $12   ; 
- - - - - - 0x016189 05:A179: 12        .byte $12   ; 
- - - - - - 0x01618A 05:A17A: 12        .byte $12   ; 
- - - - - - 0x01618B 05:A17B: 12        .byte $12   ; 
- - - - - - 0x01618C 05:A17C: 12        .byte $12   ; 
- - - - - - 0x01618D 05:A17D: 12        .byte $12   ; 
- D 1 - I - 0x01618E 05:A17E: 11        .byte $11   ; 
- D 1 - I - 0x01618F 05:A17F: 10        .byte $10   ; 
- D 1 - I - 0x016190 05:A180: 10        .byte $10   ; 
- - - - - - 0x016191 05:A181: 10        .byte $10   ; 
- - - - - - 0x016192 05:A182: 12        .byte $12   ; 
- - - - - - 0x016193 05:A183: 12        .byte $12   ; 
- - - - - - 0x016194 05:A184: 12        .byte $12   ; 
- - - - - - 0x016195 05:A185: 12        .byte $12   ; 
- - - - - - 0x016196 05:A186: 12        .byte $12   ; 
- - - - - - 0x016197 05:A187: 12        .byte $12   ; 
- - - - - - 0x016198 05:A188: 12        .byte $12   ; 
- - - - - - 0x016199 05:A189: 12        .byte $12   ; 
- - - - - - 0x01619A 05:A18A: 11        .byte $11   ; 
- - - - - - 0x01619B 05:A18B: 10        .byte $10   ; 
- D 1 - I - 0x01619C 05:A18C: 10        .byte $10   ; 
- - - - - - 0x01619D 05:A18D: 10        .byte $10   ; 
- - - - - - 0x01619E 05:A18E: 12        .byte $12   ; 
- - - - - - 0x01619F 05:A18F: 12        .byte $12   ; 
- - - - - - 0x0161A0 05:A190: 12        .byte $12   ; 
- - - - - - 0x0161A1 05:A191: 12        .byte $12   ; 
- - - - - - 0x0161A2 05:A192: 12        .byte $12   ; 
- - - - - - 0x0161A3 05:A193: 12        .byte $12   ; 
- - - - - - 0x0161A4 05:A194: 12        .byte $12   ; 
- - - - - - 0x0161A5 05:A195: 12        .byte $12   ; 
- - - - - - 0x0161A6 05:A196: 10        .byte $10   ; 
- - - - - - 0x0161A7 05:A197: 10        .byte $10   ; 
- D 1 - I - 0x0161A8 05:A198: 10        .byte $10   ; 
- - - - - - 0x0161A9 05:A199: 10        .byte $10   ; 
- - - - - - 0x0161AA 05:A19A: 10        .byte $10   ; 
- - - - - - 0x0161AB 05:A19B: 10        .byte $10   ; 
- - - - - - 0x0161AC 05:A19C: 10        .byte $10   ; 
- - - - - - 0x0161AD 05:A19D: 10        .byte $10   ; 
- - - - - - 0x0161AE 05:A19E: 10        .byte $10   ; 
- - - - - - 0x0161AF 05:A19F: 10        .byte $10   ; 
- - - - - - 0x0161B0 05:A1A0: 10        .byte $10   ; 
- - - - - - 0x0161B1 05:A1A1: 10        .byte $10   ; 
- - - - - - 0x0161B2 05:A1A2: 0F        .byte $0F   ; 
- - - - - - 0x0161B3 05:A1A3: 0F        .byte $0F   ; 
- D 1 - I - 0x0161B4 05:A1A4: 0F        .byte $0F   ; 
- D 1 - I - 0x0161B5 05:A1A5: 0F        .byte $0F   ; 
- - - - - - 0x0161B6 05:A1A6: 0F        .byte $0F   ; 
- - - - - - 0x0161B7 05:A1A7: 0F        .byte $0F   ; 
- - - - - - 0x0161B8 05:A1A8: 0F        .byte $0F   ; 
- - - - - - 0x0161B9 05:A1A9: 0F        .byte $0F   ; 
- - - - - - 0x0161BA 05:A1AA: 0F        .byte $0F   ; 
- - - - - - 0x0161BB 05:A1AB: 0F        .byte $0F   ; 
- - - - - - 0x0161BC 05:A1AC: 0F        .byte $0F   ; 
- - - - - - 0x0161BD 05:A1AD: 0F        .byte $0F   ; 
- - - - - - 0x0161BE 05:A1AE: 0F        .byte $0F   ; 
- - - - - - 0x0161BF 05:A1AF: 0F        .byte $0F   ; 
- - - - - - 0x0161C0 05:A1B0: 0F        .byte $0F   ; 
- - - - - - 0x0161C1 05:A1B1: 0F        .byte $0F   ; 
- - - - - - 0x0161C2 05:A1B2: 0F        .byte $0F   ; 
- - - - - - 0x0161C3 05:A1B3: 0F        .byte $0F   ; 
- - - - - - 0x0161C4 05:A1B4: 0F        .byte $0F   ; 



_off005_A1B5_08:
- D 1 - I - 0x0161C5 05:A1B5: 05        .byte $05   ; 
- - - - - - 0x0161C6 05:A1B6: 1A        .byte $1A   ; 
- - - - - - 0x0161C7 05:A1B7: 19        .byte $19   ; 
- D 1 - I - 0x0161C8 05:A1B8: 19        .byte $19   ; 
- - - - - - 0x0161C9 05:A1B9: 19        .byte $19   ; 
- - - - - - 0x0161CA 05:A1BA: 19        .byte $19   ; 
- D 1 - I - 0x0161CB 05:A1BB: 1A        .byte $1A   ; 
- D 1 - I - 0x0161CC 05:A1BC: 19        .byte $19   ; 
- D 1 - I - 0x0161CD 05:A1BD: 19        .byte $19   ; 
- D 1 - I - 0x0161CE 05:A1BE: 19        .byte $19   ; 
- - - - - - 0x0161CF 05:A1BF: 19        .byte $19   ; 
- - - - - - 0x0161D0 05:A1C0: 18        .byte $18   ; 
- D 1 - I - 0x0161D1 05:A1C1: 18        .byte $18   ; 
- D 1 - I - 0x0161D2 05:A1C2: 19        .byte $19   ; 
- D 1 - I - 0x0161D3 05:A1C3: 19        .byte $19   ; 
- - - - - - 0x0161D4 05:A1C4: 19        .byte $19   ; 
- - - - - - 0x0161D5 05:A1C5: 18        .byte $18   ; 
- D 1 - I - 0x0161D6 05:A1C6: 18        .byte $18   ; 
- D 1 - I - 0x0161D7 05:A1C7: 17        .byte $17   ; 
- D 1 - I - 0x0161D8 05:A1C8: 17        .byte $17   ; 
- - - - - - 0x0161D9 05:A1C9: 17        .byte $17   ; 
- D 1 - I - 0x0161DA 05:A1CA: 16        .byte $16   ; 
- D 1 - I - 0x0161DB 05:A1CB: 16        .byte $16   ; 
- D 1 - I - 0x0161DC 05:A1CC: 16        .byte $16   ; 
- D 1 - I - 0x0161DD 05:A1CD: 16        .byte $16   ; 
- - - - - - 0x0161DE 05:A1CE: 16        .byte $16   ; 
- - - - - - 0x0161DF 05:A1CF: 16        .byte $16   ; 
- - - - - - 0x0161E0 05:A1D0: 16        .byte $16   ; 
- - - - - - 0x0161E1 05:A1D1: 16        .byte $16   ; 
- - - - - - 0x0161E2 05:A1D2: 16        .byte $16   ; 
- - - - - - 0x0161E3 05:A1D3: 16        .byte $16   ; 



sub_A1D4:
C - - - - - 0x0161E4 05:A1D4: A5 61     LDA ram_0061
C - - - - - 0x0161E6 05:A1D6: 85 01     STA ram_0001
C - - - - - 0x0161E8 05:A1D8: A5 60     LDA ram_0060
C - - - - - 0x0161EA 05:A1DA: 85 00     STA ram_0000
C - - - - - 0x0161EC 05:A1DC: A5 64     LDA ram_0064
C - - - - - 0x0161EE 05:A1DE: 85 03     STA ram_0003
C - - - - - 0x0161F0 05:A1E0: A5 63     LDA ram_0063
C - - - - - 0x0161F2 05:A1E2: 85 02     STA ram_0002
sub_A1E4:
sub_0x0161F4:
ofs_006_0x0161F4_0A:
C - - - - - 0x0161F4 05:A1E4: A5 02     LDA ram_0002
C - - - - - 0x0161F6 05:A1E6: 0A        ASL
C - - - - - 0x0161F7 05:A1E7: A8        TAY
C - - - - - 0x0161F8 05:A1E8: B9 B6 F5  LDA tbl_0x01F5C6,Y
C - - - - - 0x0161FB 05:A1EB: AA        TAX
C - - - - - 0x0161FC 05:A1EC: 20 04 A2  JSR sub_A204
C - - - - - 0x0161FF 05:A1EF: A5 03     LDA ram_0003
C - - - - - 0x016201 05:A1F1: 18        CLC
C - - - - - 0x016202 05:A1F2: 79 B7 F5  ADC tbl_0x01F5C6 + $01,Y
C - - - - - 0x016205 05:A1F5: 90 04     BCC bra_A1FB
C - - - - - 0x016207 05:A1F7: 18        CLC
C - - - - - 0x016208 05:A1F8: 69 10     ADC #$10
C - - - - - 0x01620A 05:A1FA: E8        INX
bra_A1FB:
C - - - - - 0x01620B 05:A1FB: 85 03     STA ram_0003
C - - - - - 0x01620D 05:A1FD: 20 04 A2  JSR sub_A204
C - - - - - 0x016210 05:A200: 8A        TXA
C - - - - - 0x016211 05:A201: 85 02     STA ram_0002
bra_A203_RTS:
C - - - - - 0x016213 05:A203: 60        RTS



sub_A204:
C - - - - - 0x016214 05:A204: A5 03     LDA ram_0003
C - - - - - 0x016216 05:A206: 38        SEC
C - - - - - 0x016217 05:A207: E9 F0     SBC #$F0
C - - - - - 0x016219 05:A209: 90 03     BCC bra_A20E_RTS
C - - - - - 0x01621B 05:A20B: 85 03     STA ram_0003
C - - - - - 0x01621D 05:A20D: E8        INX
bra_A20E_RTS:
C - - - - - 0x01621E 05:A20E: 60        RTS



loc_A20F:
C D 1 - - - 0x01621F 05:A20F: 20 7E A2  JSR sub_A27E
C - - - - - 0x016222 05:A212: A5 75     LDA ram_stage
C - - - - - 0x016224 05:A214: C9 01     CMP #$01
C - - - - - 0x016226 05:A216: F0 EB     BEQ bra_A203_RTS
C - - - - - 0x016228 05:A218: AD 40 03  LDA ram_0340
C - - - - - 0x01622B 05:A21B: F0 30     BEQ bra_A24D
C - - - - - 0x01622D 05:A21D: A4 75     LDY ram_stage
C - - - - - 0x01622F 05:A21F: B9 79 A2  LDA tbl_A279,Y
; bzk optimize
C - - - - - 0x016232 05:A222: A0 00     LDY #$00
C - - - - - 0x016234 05:A224: 18        CLC
C - - - - - 0x016235 05:A225: 79 6A A2  ADC tbl_A26A,Y
C - - - - - 0x016238 05:A228: 85 00     STA ram_0000
C - - - - - 0x01623A 05:A22A: B9 6B A2  LDA tbl_A26A + $01,Y
C - - - - - 0x01623D 05:A22D: 69 00     ADC #$00
C - - - - - 0x01623F 05:A22F: 85 01     STA ram_0001
C - - - - - 0x016241 05:A231: A9 01     LDA #$01
C - - - - - 0x016243 05:A233: 85 BD     STA ram_00BD
bra_A235_loop:
C - - - - - 0x016245 05:A235: B1 00     LDA (ram_0000),Y
C - - - - - 0x016247 05:A237: C9 FF     CMP #$FF
C - - - - - 0x016249 05:A239: F0 12     BEQ bra_A24D
C - - - - - 0x01624B 05:A23B: C8        INY
C - - - - - 0x01624C 05:A23C: CD 42 03  CMP ram_0342
C - - - - - 0x01624F 05:A23F: D0 F4     BNE bra_A235_loop
C - - - - - 0x016251 05:A241: A5 75     LDA ram_stage
C - - - - - 0x016253 05:A243: C9 02     CMP #$02
C - - - - - 0x016255 05:A245: D0 19     BNE bra_A260
C - - - - - 0x016257 05:A247: A5 61     LDA ram_0061
C - - - - - 0x016259 05:A249: C9 F8     CMP #$F8
C - - - - - 0x01625B 05:A24B: 90 13     BCC bra_A260
bra_A24D:
C - - - - - 0x01625D 05:A24D: A5 BD     LDA ram_00BD
C - - - - - 0x01625F 05:A24F: F0 13     BEQ bra_A264_RTS
C - - - - - 0x016261 05:A251: A4 75     LDY ram_stage
C - - - - - 0x016263 05:A253: B9 65 A2  LDA tbl_A265,Y
C - - - - - 0x016266 05:A256: 85 00     STA ram_0000
C - - - - - 0x016268 05:A258: A5 42     LDA ram_btn_hold_1
C - - - - - 0x01626A 05:A25A: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x01626C 05:A25C: 25 00     AND ram_0000
C - - - - - 0x01626E 05:A25E: D0 04     BNE bra_A264_RTS
bra_A260:
C - - - - - 0x016270 05:A260: A9 00     LDA #$00
C - - - - - 0x016272 05:A262: 85 BD     STA ram_00BD
bra_A264_RTS:
C - - - - - 0x016274 05:A264: 60        RTS



tbl_A265:
- D 1 - - - 0x016275 05:A265: 02        .byte con_btn_Left   ; 00 
- - - - - - 0x016276 05:A266: 04        .byte con_btn_Down   ; 01 
- D 1 - - - 0x016277 05:A267: 01        .byte con_btn_Right   ; 02 
- D 1 - - - 0x016278 05:A268: 02        .byte con_btn_Left   ; 03 
- D 1 - - - 0x016279 05:A269: 01        .byte con_btn_Right   ; 04 



tbl_A26A:
- D 1 - - - 0x01627A 05:A26A: 6C A2     .word tbl_A26C



tbl_A26C:
; 00 
- D 1 - I - 0x01627C 05:A26C: 16        .byte $16   ; 
- D 1 - I - 0x01627D 05:A26D: 17        .byte $17   ; 
- D 1 - I - 0x01627E 05:A26E: FF        .byte $FF   ; 
- - - - - - 0x01627F 05:A26F: 04        .byte $04   ; 
- - - - - - 0x016280 05:A270: FF        .byte $FF   ; 
; 05 
- D 1 - I - 0x016281 05:A271: 00        .byte $00   ; 
- D 1 - I - 0x016282 05:A272: 05        .byte $05   ; 
- D 1 - I - 0x016283 05:A273: FF        .byte $FF   ; 
; 08 
- D 1 - I - 0x016284 05:A274: 2D        .byte $2D   ; 
- D 1 - I - 0x016285 05:A275: 2E        .byte $2E   ; 
- D 1 - I - 0x016286 05:A276: 39        .byte $39   ; 
- D 1 - I - 0x016287 05:A277: 3A        .byte $3A   ; 
- D 1 - I - 0x016288 05:A278: FF        .byte $FF   ; 



tbl_A279:
- D 1 - - - 0x016289 05:A279: 00        .byte $00   ; 00 
- - - - - - 0x01628A 05:A27A: 03        .byte $03   ; 01 never used 0x016224
- D 1 - - - 0x01628B 05:A27B: 05        .byte $05   ; 02 
- D 1 - - - 0x01628C 05:A27C: 08        .byte $08   ; 03 
- D 1 - - - 0x01628D 05:A27D: 05        .byte $05   ; 04 



sub_A27E:
C - - - - - 0x01628E 05:A27E: A4 75     LDY ram_stage
C - - - - - 0x016290 05:A280: C0 01     CPY #$01
C - - - - - 0x016292 05:A282: F0 36     BEQ bra_A2BA_RTS
C - - - - - 0x016294 05:A284: B9 E3 A2  LDA tbl_A2E3,Y
C - - - - - 0x016297 05:A287: F0 2C     BEQ bra_A2B5
C - - - - - 0x016299 05:A289: AD 59 03  LDA ram_0359
C - - - - - 0x01629C 05:A28C: D0 2C     BNE bra_A2BA_RTS
C - - - - - 0x01629E 05:A28E: A5 63     LDA ram_0063
C - - - - - 0x0162A0 05:A290: C9 01     CMP #$01
C - - - - - 0x0162A2 05:A292: D0 21     BNE bra_A2B5
C - - - - - 0x0162A4 05:A294: A9 08     LDA #$08
C - - - - - 0x0162A6 05:A296: C0 04     CPY #$04
C - - - - - 0x0162A8 05:A298: D0 0C     BNE bra_A2A6
C - - - - - 0x0162AA 05:A29A: A4 60     LDY ram_0060
C - - - - - 0x0162AC 05:A29C: C0 02     CPY #$02
C - - - - - 0x0162AE 05:A29E: 90 06     BCC bra_A2A6
C - - - - - 0x0162B0 05:A2A0: D0 13     BNE bra_A2B5
C - - - - - 0x0162B2 05:A2A2: A4 61     LDY ram_0061
C - - - - - 0x0162B4 05:A2A4: 30 0F     BMI bra_A2B5
bra_A2A6:
C - - - - - 0x0162B6 05:A2A6: 38        SEC
C - - - - - 0x0162B7 05:A2A7: E5 64     SBC ram_0064
C - - - - - 0x0162B9 05:A2A9: B0 02     BCS bra_A2AD
C - - - - - 0x0162BB 05:A2AB: 49 FF     EOR #$FF
bra_A2AD:
C - - - - - 0x0162BD 05:A2AD: C9 05     CMP #$05
C - - - - - 0x0162BF 05:A2AF: B0 04     BCS bra_A2B5
C - - - - - 0x0162C1 05:A2B1: A9 01     LDA #$01
C - - - - - 0x0162C3 05:A2B3: D0 02     BNE bra_A2B7    ; jmp
bra_A2B5:
C - - - - - 0x0162C5 05:A2B5: A9 00     LDA #$00
bra_A2B7:
C - - - - - 0x0162C7 05:A2B7: 8D 59 03  STA ram_0359
bra_A2BA_RTS:
C - - - - - 0x0162CA 05:A2BA: 60        RTS



sub_A2BB:
C - - - - - 0x0162CB 05:A2BB: A4 75     LDY ram_stage
C - - - - - 0x0162CD 05:A2BD: B9 E3 A2  LDA tbl_A2E3,Y
C - - - - - 0x0162D0 05:A2C0: F0 10     BEQ bra_A2D2_RTS
C - - - - - 0x0162D2 05:A2C2: A8        TAY
C - - - - - 0x0162D3 05:A2C3: 88        DEY
C - - - - - 0x0162D4 05:A2C4: A2 03     LDX #$03
bra_A2C6_loop:
C - - - - - 0x0162D6 05:A2C6: AD 42 03  LDA ram_0342
C - - - - - 0x0162D9 05:A2C9: D9 E8 A2  CMP tbl_A2E8,Y
C - - - - - 0x0162DC 05:A2CC: F0 05     BEQ bra_A2D3
C - - - - - 0x0162DE 05:A2CE: C8        INY
C - - - - - 0x0162DF 05:A2CF: CA        DEX
C - - - - - 0x0162E0 05:A2D0: D0 F4     BNE bra_A2C6_loop
bra_A2D2_RTS:
C - - - - - 0x0162E2 05:A2D2: 60        RTS
bra_A2D3:
C - - - - - 0x0162E3 05:A2D3: B9 EE A2  LDA tbl_A2EE,Y
C - - - - - 0x0162E6 05:A2D6: CD 64 03  CMP ram_0364
C - - - - - 0x0162E9 05:A2D9: F0 F7     BEQ bra_A2D2_RTS
C - - - - - 0x0162EB 05:A2DB: 8D 64 03  STA ram_0364
C - - - - - 0x0162EE 05:A2DE: A0 01     LDY #$01
C - - - - - 0x0162F0 05:A2E0: 4C B1 F4  JMP loc_0x01F4C1



tbl_A2E3:
- D 1 - - - 0x0162F3 05:A2E3: 00        .byte $00   ; 00 
- D 1 - - - 0x0162F4 05:A2E4: 00        .byte $00   ; 01 
- D 1 - - - 0x0162F5 05:A2E5: 01        .byte $01   ; 02 
- D 1 - - - 0x0162F6 05:A2E6: 00        .byte $00   ; 03 
- D 1 - - - 0x0162F7 05:A2E7: 04        .byte $04   ; 04 



tbl_A2E8:
- D 1 - - - 0x0162F8 05:A2E8: 1B        .byte $1B   ; 01 
- D 1 - - - 0x0162F9 05:A2E9: 1C        .byte $1C   ; 02 
- D 1 - - - 0x0162FA 05:A2EA: 16        .byte $16   ; 03 
- D 1 - - - 0x0162FB 05:A2EB: 0B        .byte $0B   ; 04 
- D 1 - - - 0x0162FC 05:A2EC: 0C        .byte $0C   ; 05 
- D 1 - - - 0x0162FD 05:A2ED: FF        .byte $FF   ; 06 



tbl_A2EE:
- D 1 - - - 0x0162FE 05:A2EE: 12        .byte $12   ; 01 
- D 1 - - - 0x0162FF 05:A2EF: 12        .byte $12   ; 02 
- D 1 - - - 0x016300 05:A2F0: 19        .byte $19   ; 03 
- D 1 - - - 0x016301 05:A2F1: 14        .byte $14   ; 04 
- D 1 - - - 0x016302 05:A2F2: 1A        .byte $1A   ; 05 



loc_0x016303:
C D 1 - - - 0x016303 05:A2F3: A5 5B     LDA ram_005B
C - - - - - 0x016305 05:A2F5: 0A        ASL
C - - - - - 0x016306 05:A2F6: A8        TAY
C - - - - - 0x016307 05:A2F7: B9 04 A3  LDA tbl_A304,Y
C - - - - - 0x01630A 05:A2FA: 85 00     STA ram_0000
C - - - - - 0x01630C 05:A2FC: B9 05 A3  LDA tbl_A304 + $01,Y
C - - - - - 0x01630F 05:A2FF: 85 01     STA ram_0001
C - - - - - 0x016311 05:A301: 6C 00 00  JMP (ram_0000)



tbl_A304:
- D 1 - - - 0x016314 05:A304: A4 A3     .word ofs_008_A3A4_00
- D 1 - - - 0x016316 05:A306: 6E A3     .word ofs_008_A36E_01
- D 1 - - - 0x016318 05:A308: E8 A3     .word ofs_008_A3E8_02
- D 1 - - - 0x01631A 05:A30A: AA A3     .word ofs_008_A3AA_03
- D 1 - - - 0x01631C 05:A30C: 46 A4     .word ofs_008_A446_04
- D 1 - - - 0x01631E 05:A30E: 61 A4     .word ofs_008_A461_05
- D 1 - - - 0x016320 05:A310: E1 A4     .word ofs_008_A4E1_06
- D 1 - - - 0x016322 05:A312: FE A5     .word ofs_008_A5FE_07
- D 1 - - - 0x016324 05:A314: 9B A3     .word ofs_008_A39B_08
- D 1 - - - 0x016326 05:A316: 03 A6     .word ofs_008_A603_09
- D 1 - - - 0x016328 05:A318: 03 A6     .word ofs_008_A603_0A
- D 1 - - - 0x01632A 05:A31A: 22 A3     .word ofs_008_A322_0B
- D 1 - - - 0x01632C 05:A31C: 94 A3     .word ofs_008_A394_0C
- D 1 - - - 0x01632E 05:A31E: B3 A3     .word ofs_008_A3B3_0D
- D 1 - - - 0x016330 05:A320: 1F A6     .word ofs_008_A61F_0E



ofs_008_A322_0B:
C - - J - - 0x016332 05:A322: AD 43 03  LDA ram_0343
C - - - - - 0x016335 05:A325: F0 71     BEQ bra_A398
- - - - - - 0x016337 05:A327: 20 93 FE  JSR sub_0x01FEA3
- - - - - - 0x01633A 05:A32A: A9 00     LDA #$00
- - - - - - 0x01633C 05:A32C: 8D 44 03  STA ram_0344
- - - - - - 0x01633F 05:A32F: A4 75     LDY ram_stage
- - - - - - 0x016341 05:A331: B9 69 A3  LDA tbl_A369,Y
- - - - - - 0x016344 05:A334: A8        TAY
- - - - - - 0x016345 05:A335: A6 60     LDX ram_0060
- - - - - - 0x016347 05:A337: F0 11     BEQ bra_A34A
- - - - - - 0x016349 05:A339: CA        DEX
- - - - - - 0x01634A 05:A33A: D0 0D     BNE bra_A349
- - - - - - 0x01634C 05:A33C: AD 43 03  LDA ram_0343
- - - - - - 0x01634F 05:A33F: C9 04     CMP #$04
- - - - - - 0x016351 05:A341: 90 06     BCC bra_A349
- - - - - - 0x016353 05:A343: A5 61     LDA ram_0061
- - - - - - 0x016355 05:A345: C9 02     CMP #$02
- - - - - - 0x016357 05:A347: 90 01     BCC bra_A34A
bra_A349:
- - - - - - 0x016359 05:A349: 88        DEY
bra_A34A:
- - - - - - 0x01635A 05:A34A: 98        TYA
- - - - - - 0x01635B 05:A34B: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
bra_A34E_loop:
- - - - - - 0x01635E 05:A34E: 20 3A BA  JSR sub_BA3A
- - - - - - 0x016361 05:A351: 20 3E A4  JSR sub_A43E
- - - - - - 0x016364 05:A354: AD 44 03  LDA ram_0344
- - - - - - 0x016367 05:A357: C9 13     CMP #$13
- - - - - - 0x016369 05:A359: D0 F3     BNE bra_A34E_loop
- - - - - - 0x01636B 05:A35B: A9 00     LDA #$00
- - - - - - 0x01636D 05:A35D: 8D 44 03  STA ram_0344
- - - - - - 0x016370 05:A360: 20 98 A3  JSR sub_A398
- - - - - - 0x016373 05:A363: 20 29 99  JSR sub_9929
- - - - - - 0x016376 05:A366: 4C 70 FE  JMP loc_0x01FE80



tbl_A369:
- - - - - - 0x016379 05:A369: 00        .byte con_chr_pair + $00   ; 00 
- - - - - - 0x01637A 05:A36A: 00        .byte con_chr_pair + $00   ; 01 
- - - - - - 0x01637B 05:A36B: 0F        .byte con_chr_pair + $0F   ; 02 
- - - - - - 0x01637C 05:A36C: 00        .byte con_chr_pair + $00   ; 03 
- - - - - - 0x01637D 05:A36D: 1A        .byte con_chr_pair + $1A   ; 04 



ofs_008_A36E_01:
C - - J - - 0x01637E 05:A36E: A2 01     LDX #$01
bra_A370_loop:
C - - - - - 0x016380 05:A370: A0 00     LDY #$00
C - - - - - 0x016382 05:A372: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x016385 05:A375: F0 06     BEQ bra_A37D
C - - - - - 0x016387 05:A377: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x01638A 05:A37A: BC 68 06  LDY ram_obj_pos_Y,X
bra_A37D:
C - - - - - 0x01638D 05:A37D: 9D 5D 03  STA ram_035D,X
C - - - - - 0x016390 05:A380: 98        TYA
C - - - - - 0x016391 05:A381: 9D 5F 03  STA ram_035F,X
C - - - - - 0x016394 05:A384: CA        DEX
C - - - - - 0x016395 05:A385: 10 E9     BPL bra_A370_loop
C - - - - - 0x016397 05:A387: A9 22     LDA #con_chr_pair + $22
C - - - - - 0x016399 05:A389: 20 48 F4  JSR sub_0x01F458_select_bg_chr_bank_pair
C - - - - - 0x01639C 05:A38C: A9 13     LDA #con_chr_bank + $13
C - - - - - 0x01639E 05:A38E: 85 7C     STA ram_chr_bank + $05
C - - - - - 0x0163A0 05:A390: A9 00     LDA #$00
C - - - - - 0x0163A2 05:A392: F0 02     BEQ bra_A396    ; jmp



ofs_008_A394_0C:
C - - J - - 0x0163A4 05:A394: A9 01     LDA #$01
bra_A396:
C - - - - - 0x0163A6 05:A396: 85 5A     STA ram_005A_flag
bra_A398:
sub_A398:
C - - - - - 0x0163A8 05:A398: E6 5B     INC ram_005B
C - - - - - 0x0163AA 05:A39A: 60        RTS



ofs_008_A39B_08:
C - - J - - 0x0163AB 05:A39B: 20 B9 A3  JSR sub_A3B9
C - - - - - 0x0163AE 05:A39E: 20 1D F5  JSR sub_0x01F52D
C - - - - - 0x0163B1 05:A3A1: 4C B6 A3  JMP loc_A3B6



ofs_008_A3A4_00:
C - - J - - 0x0163B4 05:A3A4: 20 1A F5  JSR sub_0x01F52A
C - - - - - 0x0163B7 05:A3A7: B0 EF     BCS bra_A398
C - - - - - 0x0163B9 05:A3A9: 60        RTS



ofs_008_A3AA_03:
C - - J - - 0x0163BA 05:A3AA: 20 B9 A3  JSR sub_A3B9
C - - - - - 0x0163BD 05:A3AD: 20 6C F5  JSR sub_0x01F57C
C - - - - - 0x0163C0 05:A3B0: 4C B6 A3  JMP loc_A3B6
ofs_008_A3B3_0D:
C - - J - - 0x0163C3 05:A3B3: 20 69 F5  JSR sub_0x01F579
loc_A3B6:
C D 1 - - - 0x0163C6 05:A3B6: B0 E0     BCS bra_A398
C - - - - - 0x0163C8 05:A3B8: 60        RTS



sub_A3B9:
; bzk optimize
C - - - - - 0x0163C9 05:A3B9: A0 00     LDY #$00
C - - - - - 0x0163CB 05:A3BB: B9 C6 A3  LDA tbl_A3C6,Y
C - - - - - 0x0163CE 05:A3BE: 85 02     STA ram_0002
C - - - - - 0x0163D0 05:A3C0: B9 C7 A3  LDA tbl_A3C6 + $01,Y
C - - - - - 0x0163D3 05:A3C3: 85 03     STA ram_0003
C - - - - - 0x0163D5 05:A3C5: 60        RTS



tbl_A3C6:
- D 1 - - - 0x0163D6 05:A3C6: C8 A3     .word tbl_A3C8



tbl_A3C8:
- D 1 - I - 0x0163D8 05:A3C8: 0F        .byte $0F, $37, $20, $16   ; 
- D 1 - I - 0x0163DC 05:A3CC: 0F        .byte $0F, $37, $30, $12   ; 
- D 1 - I - 0x0163E0 05:A3D0: 0F        .byte $0F, $25, $20, $10   ; 
- D 1 - I - 0x0163E4 05:A3D4: 0F        .byte $0F, $39, $20, $10   ; 

- D 1 - I - 0x0163E8 05:A3D8: 0F        .byte $0F, $37, $12, $0F   ; 
- D 1 - I - 0x0163EC 05:A3DC: 0F        .byte $0F, $37, $16, $0F   ; 
- D 1 - I - 0x0163F0 05:A3E0: 0F        .byte $0F, $37, $1A, $0F   ; 
- D 1 - I - 0x0163F4 05:A3E4: 0F        .byte $0F, $20, $38, $16   ; 



ofs_008_A3E8_02:
C - - J - - 0x0163F8 05:A3E8: A9 01     LDA #$01
C - - - - - 0x0163FA 05:A3EA: 85 4B     STA ram_004B
C - - - - - 0x0163FC 05:A3EC: A9 FF     LDA #$FF
C - - - - - 0x0163FE 05:A3EE: 85 22     STA ram_0022
C - - - - - 0x016400 05:A3F0: A5 FF     LDA ram_for_2000
C - - - - - 0x016402 05:A3F2: 29 FC     AND #$FC
C - - - - - 0x016404 05:A3F4: 85 FF     STA ram_for_2000
C - - - - - 0x016406 05:A3F6: E6 5B     INC ram_005B
C - - - - - 0x016408 05:A3F8: A9 00     LDA #$00
C - - - - - 0x01640A 05:A3FA: 85 1E     STA ram_001E
C - - - - - 0x01640C 05:A3FC: 20 93 FE  JSR sub_0x01FEA3
C - - - - - 0x01640F 05:A3FF: 20 97 D1  JSR sub_0x01D1A7
C - - - - - 0x016412 05:A402: A2 0C     LDX #con_D22A_pause
C - - - - - 0x016414 05:A404: A9 19     LDA #con_F3D6_19
C - - - - - 0x016416 05:A406: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x016419 05:A409: A9 00     LDA #$00
C - - - - - 0x01641B 05:A40B: 85 17     STA ram_0017
bra_A40D_loop:
C - - - - - 0x01641D 05:A40D: A5 1E     LDA ram_001E
C - - - - - 0x01641F 05:A40F: C5 17     CMP ram_0017
C - - - - - 0x016421 05:A411: D0 03     BNE bra_A416
C - - - - - 0x016423 05:A413: 18        CLC
C - - - - - 0x016424 05:A414: 69 04     ADC #$04
bra_A416:
C - - - - - 0x016426 05:A416: 20 3E A4  JSR sub_A43E
C - - - - - 0x016429 05:A419: A4 1E     LDY ram_001E
C - - - - - 0x01642B 05:A41B: 84 21     STY ram_0021
C - - - - - 0x01642D 05:A41D: 20 45 A6  JSR sub_A645
C - - - - - 0x016430 05:A420: 20 3E A4  JSR sub_A43E
C - - - - - 0x016433 05:A423: A5 21     LDA ram_0021
C - - - - - 0x016435 05:A425: 29 03     AND #$03
C - - - - - 0x016437 05:A427: 85 1E     STA ram_001E
C - - - - - 0x016439 05:A429: 20 96 A6  JSR sub_A696
C - - - - - 0x01643C 05:A42C: 20 3E A4  JSR sub_A43E
C - - - - - 0x01643F 05:A42F: E6 1E     INC ram_001E
C - - - - - 0x016441 05:A431: A5 1E     LDA ram_001E
C - - - - - 0x016443 05:A433: C9 04     CMP #$04
C - - - - - 0x016445 05:A435: 90 D6     BCC bra_A40D_loop
C - - - - - 0x016447 05:A437: A9 00     LDA #$00
C - - - - - 0x016449 05:A439: 85 21     STA ram_0021
C - - - - - 0x01644B 05:A43B: 4C 70 FE  JMP loc_0x01FE80



sub_A43E:
C - - - - - 0x01644E 05:A43E: A9 00     LDA #$00
C - - - - - 0x016450 05:A440: 20 77 D2  JSR sub_0x01D287
C - - - - - 0x016453 05:A443: 4C 85 D5  JMP loc_0x01D595



ofs_008_A446_04:
C - - J - - 0x016456 05:A446: C6 4B     DEC ram_004B
C - - - - - 0x016458 05:A448: D0 16     BNE bra_A460_RTS
C - - - - - 0x01645A 05:A44A: A2 03     LDX #$03
bra_A44C_loop:
C - - - - - 0x01645C 05:A44C: B5 7F     LDA ram_player_stats,X
C - - - - - 0x01645E 05:A44E: C9 30     CMP #$30
C - - - - - 0x016460 05:A450: 90 04     BCC bra_A456
C - - - - - 0x016462 05:A452: 29 F0     AND #$F0
C - - - - - 0x016464 05:A454: 95 7F     STA ram_player_stats,X
bra_A456:
C - - - - - 0x016466 05:A456: CA        DEX
C - - - - - 0x016467 05:A457: 10 F3     BPL bra_A44C_loop
C - - - - - 0x016469 05:A459: A9 03     LDA #$03
C - - - - - 0x01646B 05:A45B: 20 CD A6  JSR sub_A6CD
C - - - - - 0x01646E 05:A45E: E6 5B     INC ram_005B
bra_A460_RTS:
C - - - - - 0x016470 05:A460: 60        RTS



ofs_008_A461_05:
C - - J - - 0x016471 05:A461: A5 40     LDA ram_btn_press_1
C - - - - - 0x016473 05:A463: 05 41     ORA ram_btn_press_1 + $01
C - - - - - 0x016475 05:A465: 85 3A     STA ram_003A
C - - - - - 0x016477 05:A467: 29 0C     AND #con_btns_UD
C - - - - - 0x016479 05:A469: F0 25     BEQ bra_A490
bra_A46B_loop:
C - - - - - 0x01647B 05:A46B: A5 3A     LDA ram_003A
C - - - - - 0x01647D 05:A46D: 29 08     AND #$08
C - - - - - 0x01647F 05:A46F: F0 05     BEQ bra_A476
C - - - - - 0x016481 05:A471: C6 21     DEC ram_0021
C - - - - - 0x016483 05:A473: 4C 78 A4  JMP loc_A478
bra_A476:
C - - - - - 0x016486 05:A476: E6 21     INC ram_0021
loc_A478:
C D 1 - - - 0x016488 05:A478: A5 21     LDA ram_0021
C - - - - - 0x01648A 05:A47A: 29 03     AND #$03
C - - - - - 0x01648C 05:A47C: A8        TAY
C - - - - - 0x01648D 05:A47D: 09 80     ORA #$80
C - - - - - 0x01648F 05:A47F: 85 21     STA ram_0021
C - - - - - 0x016491 05:A481: B9 B3 00  LDA ram_lives,Y
C - - - - - 0x016494 05:A484: D0 05     BNE bra_A48B
- - - - - - 0x016496 05:A486: 99 7F 00  STA ram_player_stats,Y
- - - - - - 0x016499 05:A489: F0 E0     BEQ bra_A46B_loop    ; jmp
bra_A48B:
C - - - - - 0x01649B 05:A48B: A9 61     LDA #con_music_61
C - - - - - 0x01649D 05:A48D: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_A490:
C - - - - - 0x0164A0 05:A490: A5 21     LDA ram_0021
C - - - - - 0x0164A2 05:A492: 29 03     AND #$03
C - - - - - 0x0164A4 05:A494: A8        TAY
C - - - - - 0x0164A5 05:A495: A5 3A     LDA ram_003A
C - - - - - 0x0164A7 05:A497: 29 03     AND #$03
C - - - - - 0x0164A9 05:A499: F0 3B     BEQ bra_A4D6
C - - - - - 0x0164AB 05:A49B: 29 02     AND #$02
C - - - - - 0x0164AD 05:A49D: F0 12     BEQ bra_A4B1
C - - - - - 0x0164AF 05:A49F: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x0164B2 05:A4A2: 29 F0     AND #$F0
C - - - - - 0x0164B4 05:A4A4: 38        SEC
C - - - - - 0x0164B5 05:A4A5: E9 10     SBC #$10
C - - - - - 0x0164B7 05:A4A7: 85 01     STA ram_0001
C - - - - - 0x0164B9 05:A4A9: B0 18     BCS bra_A4C3
C - - - - - 0x0164BB 05:A4AB: A9 80     LDA #$80
C - - - - - 0x0164BD 05:A4AD: 85 01     STA ram_0001
C - - - - - 0x0164BF 05:A4AF: D0 12     BNE bra_A4C3    ; jmp
bra_A4B1:
C - - - - - 0x0164C1 05:A4B1: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x0164C4 05:A4B4: 29 F0     AND #$F0
C - - - - - 0x0164C6 05:A4B6: 18        CLC
C - - - - - 0x0164C7 05:A4B7: 69 10     ADC #$10
C - - - - - 0x0164C9 05:A4B9: 29 F0     AND #$F0
C - - - - - 0x0164CB 05:A4BB: C9 90     CMP #$90
C - - - - - 0x0164CD 05:A4BD: 90 02     BCC bra_A4C1
C - - - - - 0x0164CF 05:A4BF: A9 00     LDA #$00
bra_A4C1:
C - - - - - 0x0164D1 05:A4C1: 85 01     STA ram_0001
bra_A4C3:
C - - - - - 0x0164D3 05:A4C3: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x0164D6 05:A4C6: 29 0F     AND #$0F
C - - - - - 0x0164D8 05:A4C8: 05 01     ORA ram_0001
C - - - - - 0x0164DA 05:A4CA: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x0164DD 05:A4CD: A5 21     LDA ram_0021
C - - - - - 0x0164DF 05:A4CF: 29 03     AND #$03
C - - - - - 0x0164E1 05:A4D1: 85 1E     STA ram_001E
C - - - - - 0x0164E3 05:A4D3: 20 45 A6  JSR sub_A645
bra_A4D6:
C - - - - - 0x0164E6 05:A4D6: A5 42     LDA ram_btn_hold_1
C - - - - - 0x0164E8 05:A4D8: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x0164EA 05:A4DA: 29 10     AND #con_btn_Start
C - - - - - 0x0164EC 05:A4DC: F0 02     BEQ bra_A4E0_RTS
C - - - - - 0x0164EE 05:A4DE: E6 5B     INC ram_005B
bra_A4E0_RTS:
C - - - - - 0x0164F0 05:A4E0: 60        RTS



ofs_008_A4E1_06:
C - - J - - 0x0164F1 05:A4E1: A9 00     LDA #$00
C - - - - - 0x0164F3 05:A4E3: 85 07     STA ram_0007
C - - - - - 0x0164F5 05:A4E5: AD 82 07  LDA ram_0782_unk
C - - - - - 0x0164F8 05:A4E8: F0 02     BEQ bra_A4EC
C - - - - - 0x0164FA 05:A4EA: E6 07     INC ram_0007
bra_A4EC:
C - - - - - 0x0164FC 05:A4EC: AD 83 07  LDA ram_0782_unk + $01
C - - - - - 0x0164FF 05:A4EF: F0 04     BEQ bra_A4F5
C - - - - - 0x016501 05:A4F1: E6 07     INC ram_0007
C - - - - - 0x016503 05:A4F3: E6 07     INC ram_0007
bra_A4F5:
C - - - - - 0x016505 05:A4F5: A9 00     LDA #$00
C - - - - - 0x016507 05:A4F7: 8D 82 07  STA ram_0782_unk
C - - - - - 0x01650A 05:A4FA: 8D 83 07  STA ram_0782_unk + $01
C - - - - - 0x01650D 05:A4FD: AA        TAX
C - - - - - 0x01650E 05:A4FE: 86 01     STX ram_0001
C - - - - - 0x016510 05:A500: 86 02     STX ram_0002
C - - - - - 0x016512 05:A502: A9 FF     LDA #$FF
C - - - - - 0x016514 05:A504: 85 00     STA ram_0000
C - - - - - 0x016516 05:A506: 85 03     STA ram_0003
bra_A508:
C - - - - - 0x016518 05:A508: B5 7F     LDA ram_player_stats,X
C - - - - - 0x01651A 05:A50A: 29 F0     AND #$F0
C - - - - - 0x01651C 05:A50C: F0 35     BEQ bra_A543
C - - - - - 0x01651E 05:A50E: C9 10     CMP #$10
C - - - - - 0x016520 05:A510: F0 13     BEQ bra_A525
C - - - - - 0x016522 05:A512: C9 20     CMP #$20
C - - - - - 0x016524 05:A514: F0 0B     BEQ bra_A521
C - - - - - 0x016526 05:A516: A9 FF     LDA #$FF
C - - - - - 0x016528 05:A518: C5 03     CMP ram_0003
C - - - - - 0x01652A 05:A51A: D0 3A     BNE bra_A556
C - - - - - 0x01652C 05:A51C: 86 03     STX ram_0003
C - - - - - 0x01652E 05:A51E: 4C 43 A5  JMP loc_A543
bra_A521:
C - - - - - 0x016531 05:A521: A0 01     LDY #$01
C - - - - - 0x016533 05:A523: D0 02     BNE bra_A527    ; jmp
bra_A525:
C - - - - - 0x016535 05:A525: A0 00     LDY #$00
bra_A527:
C - - - - - 0x016537 05:A527: B9 01 00  LDA ram_0001,Y
C - - - - - 0x01653A 05:A52A: D0 2A     BNE bra_A556
C - - - - - 0x01653C 05:A52C: A9 01     LDA #$01
C - - - - - 0x01653E 05:A52E: 99 01 00  STA ram_0001,Y
C - - - - - 0x016541 05:A531: A9 2E     LDA #$2E
C - - - - - 0x016543 05:A533: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x016546 05:A536: B9 B1 00  LDA ram_current_player,Y
C - - - - - 0x016549 05:A539: 29 0F     AND #$0F
C - - - - - 0x01654B 05:A53B: 85 04     STA ram_0004
C - - - - - 0x01654D 05:A53D: E4 04     CPX ram_0004
C - - - - - 0x01654F 05:A53F: F0 02     BEQ bra_A543
C - - - - - 0x016551 05:A541: 96 B1     STX ram_current_player,Y
bra_A543:
loc_A543:
C D 1 - - - 0x016553 05:A543: E8        INX
C - - - - - 0x016554 05:A544: E0 04     CPX #$04
C - - - - - 0x016556 05:A546: 90 C0     BCC bra_A508
C - - - - - 0x016558 05:A548: A5 01     LDA ram_0001
C - - - - - 0x01655A 05:A54A: 05 02     ORA ram_0002
C - - - - - 0x01655C 05:A54C: D0 16     BNE bra_A564
- - - - - - 0x01655E 05:A54E: A9 00     LDA #$00
- - - - - - 0x016560 05:A550: F0 06     BEQ bra_A558    ; jmp
bra_A552:
- - - - - - 0x016562 05:A552: A9 02     LDA #$02
- - - - - - 0x016564 05:A554: D0 02     BNE bra_A558    ; jmp
bra_A556:
- - - - - - 0x016566 05:A556: A9 01     LDA #$01
bra_A558:
- - - - - - 0x016568 05:A558: 20 CD A6  JSR sub_A6CD
- - - - - - 0x01656B 05:A55B: C6 5B     DEC ram_005B
- - - - - - 0x01656D 05:A55D: C6 5B     DEC ram_005B
- - - - - - 0x01656F 05:A55F: A9 40     LDA #$40
- - - - - - 0x016571 05:A561: 85 4B     STA ram_004B
- - - - - - 0x016573 05:A563: 60        RTS
bra_A564:
C - - - - - 0x016574 05:A564: A5 03     LDA ram_0003
C - - - - - 0x016576 05:A566: C9 FF     CMP #$FF
C - - - - - 0x016578 05:A568: F0 17     BEQ bra_A581
C - - - - - 0x01657A 05:A56A: A0 01     LDY #$01
C - - - - - 0x01657C 05:A56C: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x01657F 05:A56F: F0 06     BEQ bra_A577
- - - - - - 0x016581 05:A571: 88        DEY
- - - - - - 0x016582 05:A572: B9 82 07  LDA ram_0782_unk,Y
- - - - - - 0x016585 05:A575: D0 DB     BNE bra_A552
bra_A577:
C - - - - - 0x016587 05:A577: A5 03     LDA ram_0003
C - - - - - 0x016589 05:A579: 99 B1 00  STA ram_current_player,Y
C - - - - - 0x01658C 05:A57C: A9 2E     LDA #$2E
C - - - - - 0x01658E 05:A57E: 99 82 07  STA ram_0782_unk,Y
bra_A581:
C - - - - - 0x016591 05:A581: A9 00     LDA #$00
C - - - - - 0x016593 05:A583: 85 00     STA ram_0000
C - - - - - 0x016595 05:A585: A2 01     LDX #$01
bra_A587_loop:
C - - - - - 0x016597 05:A587: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x01659A 05:A58A: D0 0A     BNE bra_A596
C - - - - - 0x01659C 05:A58C: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x01659F 05:A58F: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x0165A2 05:A592: 95 B1     STA ram_current_player,X
C - - - - - 0x0165A4 05:A594: F0 43     BEQ bra_A5D9    ; jmp
bra_A596:
C - - - - - 0x0165A6 05:A596: A9 0A     LDA #$0A
C - - - - - 0x0165A8 05:A598: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x0165AB 05:A59B: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x0165AE 05:A59E: BC 5D 03  LDY ram_035D,X
C - - - - - 0x0165B1 05:A5A1: D0 0C     BNE bra_A5AF
C - - - - - 0x0165B3 05:A5A3: 8A        TXA
C - - - - - 0x0165B4 05:A5A4: 49 01     EOR #$01
C - - - - - 0x0165B6 05:A5A6: A8        TAY
C - - - - - 0x0165B7 05:A5A7: B9 BE 00  LDA ram_00BE,Y
C - - - - - 0x0165BA 05:A5AA: 95 BE     STA ram_00BE,X
C - - - - - 0x0165BC 05:A5AC: B9 34 06  LDA ram_obj_animation_hi,Y
bra_A5AF:
C - - - - - 0x0165BF 05:A5AF: 48        PHA
C - - - - - 0x0165C0 05:A5B0: A9 20     LDA #con_F3D6_20
C - - - - - 0x0165C2 05:A5B2: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0165C5 05:A5B5: 68        PLA
C - - - - - 0x0165C6 05:A5B6: 29 80     AND #$80
C - - - - - 0x0165C8 05:A5B8: 1D 34 06  ORA ram_obj_animation_hi,X
C - - - - - 0x0165CB 05:A5BB: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x0165CE 05:A5BE: A9 00     LDA #$00
C - - - - - 0x0165D0 05:A5C0: BC 68 06  LDY ram_obj_pos_Y,X
C - - - - - 0x0165D3 05:A5C3: C0 A0     CPY #$A0
C - - - - - 0x0165D5 05:A5C5: B0 03     BCS bra_A5CA
C - - - - - 0x0165D7 05:A5C7: 9D B4 07  STA ram_07B4_unk,X
bra_A5CA:
C - - - - - 0x0165DA 05:A5CA: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x0165DD 05:A5CD: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x0165E0 05:A5D0: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x0165E3 05:A5D3: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x0165E6 05:A5D6: 9D 78 07  STA ram_0778_unk,X
bra_A5D9:
C - - - - - 0x0165E9 05:A5D9: CA        DEX
C - - - - - 0x0165EA 05:A5DA: 10 AB     BPL bra_A587_loop
C - - - - - 0x0165EC 05:A5DC: A2 0E     LDX #$0E
C - - - - - 0x0165EE 05:A5DE: A9 00     LDA #$00
bra_A5E0_loop:
C - - - - - 0x0165F0 05:A5E0: 9D 74 03  STA ram_0374_cpu,X
C - - - - - 0x0165F3 05:A5E3: CA        DEX
C - - - - - 0x0165F4 05:A5E4: 10 FA     BPL bra_A5E0_loop
C - - - - - 0x0165F6 05:A5E6: A5 00     LDA ram_0000
C - - - - - 0x0165F8 05:A5E8: F0 05     BEQ bra_A5EF
C - - - - - 0x0165FA 05:A5EA: A9 FF     LDA #$FF
C - - - - - 0x0165FC 05:A5EC: 8D 74 03  STA ram_0374_cpu
bra_A5EF:
C - - - - - 0x0165FF 05:A5EF: E6 5B     INC ram_005B
C - - - - - 0x016601 05:A5F1: 60        RTS


; bzk garbage
- - - - - - 0x016602 05:A5F2: 00        .byte $00   ; 
- - - - - - 0x016603 05:A5F3: 00        .byte $00   ; 
- - - - - - 0x016604 05:A5F4: 00        .byte $00   ; 
- - - - - - 0x016605 05:A5F5: 00        .byte $00   ; 
- - - - - - 0x016606 05:A5F6: 00        .byte $00   ; 
- - - - - - 0x016607 05:A5F7: 00        .byte $00   ; 
- - - - - - 0x016608 05:A5F8: 20        .byte $20   ; 
- - - - - - 0x016609 05:A5F9: 00        .byte $00   ; 
- - - - - - 0x01660A 05:A5FA: E0        .byte $E0   ; 
- - - - - - 0x01660B 05:A5FB: 00        .byte $00   ; 
- - - - - - 0x01660C 05:A5FC: D8        .byte $D8   ; 
- - - - - - 0x01660D 05:A5FD: 00        .byte $00   ; 



ofs_008_A5FE_07:
C - - J - - 0x01660E 05:A5FE: A9 22     LDA #con_F3D6_22
C - - - - - 0x016610 05:A600: 4C B3 F3  JMP loc_0x01F3C3



ofs_008_A603_09:
ofs_008_A603_0A:
C - - J - - 0x016613 05:A603: A9 04     LDA #con_chr_bank + $04
C - - - - - 0x016615 05:A605: 85 79     STA ram_chr_bank + $02
C - - - - - 0x016617 05:A607: 20 97 D1  JSR sub_0x01D1A7
C - - - - - 0x01661A 05:A60A: 20 95 97  JSR sub_9795
C - - - - - 0x01661D 05:A60D: A9 00     LDA #$00
C - - - - - 0x01661F 05:A60F: 85 2B     STA ram_002B
C - - - - - 0x016621 05:A611: 8D 44 03  STA ram_0344
C - - - - - 0x016624 05:A614: 20 C2 D9  JSR sub_0x01D9D2
C - - - - - 0x016627 05:A617: 20 68 99  JSR sub_9968
C - - - - - 0x01662A 05:A61A: E6 5B     INC ram_005B
C - - - - - 0x01662C 05:A61C: 4C F5 9B  JMP loc_9BF5_RTS



ofs_008_A61F_0E:
C - - J - - 0x01662F 05:A61F: A9 00     LDA #$00
C - - - - - 0x016631 05:A621: 85 45     STA ram_0045
C - - - - - 0x016633 05:A623: 85 5B     STA ram_005B
C - - - - - 0x016635 05:A625: 85 C3     STA ram_00C3
C - - - - - 0x016637 05:A627: 85 95     STA ram_0095
C - - - - - 0x016639 05:A629: 85 9F     STA ram_009F
C - - - - - 0x01663B 05:A62B: A0 03     LDY #$03
bra_A62D_loop:
C - - - - - 0x01663D 05:A62D: 99 3C 05  STA ram_053C,Y
C - - - - - 0x016640 05:A630: 88        DEY
C - - - - - 0x016641 05:A631: 10 FA     BPL bra_A62D_loop
C - - - - - 0x016643 05:A633: A9 1E     LDA #con_F3D6_1E
C - - - - - 0x016645 05:A635: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x016648 05:A638: A9 05     LDA #$05
C - - - - - 0x01664A 05:A63A: 8D 69 03  STA ram_0369
C - - - - - 0x01664D 05:A63D: A9 3E     LDA #$3E
C - - - - - 0x01664F 05:A63F: 8D 6B 03  STA ram_036B
C - - - - - 0x016652 05:A642: 4C C1 F6  JMP loc_0x01F6D1



sub_A645:
C - - - - - 0x016655 05:A645: A4 1E     LDY ram_001E
C - - - - - 0x016657 05:A647: B9 B3 00  LDA ram_lives,Y
C - - - - - 0x01665A 05:A64A: D0 07     BNE bra_A653
- - - - - - 0x01665C 05:A64C: 99 7F 00  STA ram_player_stats,Y
- - - - - - 0x01665F 05:A64F: A9 12     LDA #$12
- - - - - - 0x016661 05:A651: D0 08     BNE bra_A65B    ; jmp
bra_A653:
C - - - - - 0x016663 05:A653: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x016666 05:A656: 29 F0     AND #$F0
C - - - - - 0x016668 05:A658: 4A        LSR
C - - - - - 0x016669 05:A659: 4A        LSR
C - - - - - 0x01666A 05:A65A: 4A        LSR
bra_A65B:
C - - - - - 0x01666B 05:A65B: 85 04     STA ram_0004
C - - - - - 0x01666D 05:A65D: 85 22     STA ram_0022
C - - - - - 0x01666F 05:A65F: 4A        LSR
C - - - - - 0x016670 05:A660: A8        TAY
C - - - - - 0x016671 05:A661: B9 16 A7  LDA tbl_A716,Y
C - - - - - 0x016674 05:A664: F0 10     BEQ bra_A676
C - - - - - 0x016676 05:A666: 20 76 A6  JSR sub_A676
C - - - - - 0x016679 05:A669: A5 21     LDA ram_0021
C - - - - - 0x01667B 05:A66B: 29 03     AND #$03
C - - - - - 0x01667D 05:A66D: 18        CLC
C - - - - - 0x01667E 05:A66E: 69 04     ADC #$04
C - - - - - 0x016680 05:A670: 85 1E     STA ram_001E
C - - - - - 0x016682 05:A672: A9 14     LDA #$14
C - - - - - 0x016684 05:A674: 85 04     STA ram_0004
bra_A676:
sub_A676:
C - - - - - 0x016686 05:A676: A5 1E     LDA ram_001E
C - - - - - 0x016688 05:A678: 0A        ASL
C - - - - - 0x016689 05:A679: A8        TAY
C - - - - - 0x01668A 05:A67A: B9 29 A7  LDA tbl_A729,Y
C - - - - - 0x01668D 05:A67D: 85 06     STA ram_0006
C - - - - - 0x01668F 05:A67F: B9 2A A7  LDA tbl_A729 + $01,Y
C - - - - - 0x016692 05:A682: 85 07     STA ram_0007
C - - - - - 0x016694 05:A684: A4 04     LDY ram_0004
C - - - - - 0x016696 05:A686: B9 39 A7  LDA tbl_A739,Y
C - - - - - 0x016699 05:A689: 85 02     STA ram_0002
C - - - - - 0x01669B 05:A68B: B9 3A A7  LDA tbl_A739 + $01,Y
C - - - - - 0x01669E 05:A68E: 85 03     STA ram_0003
C - - - - - 0x0166A0 05:A690: C0 14     CPY #$14    ; 0A
C - - - - - 0x0166A2 05:A692: D0 51     BNE bra_A6E5
C - - - - - 0x0166A4 05:A694: F0 58     BEQ bra_A6EE    ; jmp



sub_A696:
C - - - - - 0x0166A6 05:A696: A9 01     LDA #$01
C - - - - - 0x0166A8 05:A698: 20 77 D2  JSR sub_0x01D287
C - - - - - 0x0166AB 05:A69B: A5 1E     LDA ram_001E
C - - - - - 0x0166AD 05:A69D: 0A        ASL
C - - - - - 0x0166AE 05:A69E: A8        TAY
C - - - - - 0x0166AF 05:A69F: B9 21 A7  LDA tbl_A721,Y
C - - - - - 0x0166B2 05:A6A2: 20 77 D2  JSR sub_0x01D287
C - - - - - 0x0166B5 05:A6A5: B9 22 A7  LDA tbl_A721 + $01,Y
C - - - - - 0x0166B8 05:A6A8: 20 77 D2  JSR sub_0x01D287
C - - - - - 0x0166BB 05:A6AB: A4 1E     LDY ram_001E
C - - - - - 0x0166BD 05:A6AD: 20 76 E0  JSR sub_0x01E086
C - - - - - 0x0166C0 05:A6B0: A5 0A     LDA ram_000A
C - - - - - 0x0166C2 05:A6B2: 29 F0     AND #$F0
C - - - - - 0x0166C4 05:A6B4: 4A        LSR
C - - - - - 0x0166C5 05:A6B5: 4A        LSR
C - - - - - 0x0166C6 05:A6B6: 4A        LSR
C - - - - - 0x0166C7 05:A6B7: 4A        LSR
C - - - - - 0x0166C8 05:A6B8: 20 C6 A6  JSR sub_A6C6
C - - - - - 0x0166CB 05:A6BB: A5 0A     LDA ram_000A
C - - - - - 0x0166CD 05:A6BD: 29 0F     AND #$0F
C - - - - - 0x0166CF 05:A6BF: 20 C6 A6  JSR sub_A6C6
C - - - - - 0x0166D2 05:A6C2: A9 FF     LDA #$FF
C - - - - - 0x0166D4 05:A6C4: D0 04     BNE bra_A6CA    ; jmp



sub_A6C6:
C - - - - - 0x0166D6 05:A6C6: D0 02     BNE bra_A6CA
C - - - - - 0x0166D8 05:A6C8: A9 0A     LDA #$0A
bra_A6CA:
C - - - - - 0x0166DA 05:A6CA: 4C 77 D2  JMP loc_0x01D287



sub_A6CD:
C - - - - - 0x0166DD 05:A6CD: 0A        ASL
C - - - - - 0x0166DE 05:A6CE: A8        TAY
C - - - - - 0x0166DF 05:A6CF: B9 D9 A8  LDA tbl_A8D9,Y
C - - - - - 0x0166E2 05:A6D2: 85 02     STA ram_0002
C - - - - - 0x0166E4 05:A6D4: B9 DA A8  LDA tbl_A8D9 + $01,Y
C - - - - - 0x0166E7 05:A6D7: 85 03     STA ram_0003
C - - - - - 0x0166E9 05:A6D9: A9 24     LDA #$24
C - - - - - 0x0166EB 05:A6DB: 85 06     STA ram_0006
C - - - - - 0x0166ED 05:A6DD: A9 23     LDA #$23
C - - - - - 0x0166EF 05:A6DF: 85 07     STA ram_0007
C - - - - - 0x0166F1 05:A6E1: C0 06     CPY #$06    ; 03
C - - - - - 0x0166F3 05:A6E3: F0 09     BEQ bra_A6EE
bra_A6E5:
C - - - - - 0x0166F5 05:A6E5: A9 06     LDA #con_DA9D_06
bra_A6E7:
C - - - - - 0x0166F7 05:A6E7: 85 1F     STA ram_001F
C - - - - - 0x0166F9 05:A6E9: A9 06     LDA #con_F3D6_06
C - - - - - 0x0166FB 05:A6EB: 4C B3 F3  JMP loc_0x01F3C3
bra_A6EE:
C - - - - - 0x0166FE 05:A6EE: A5 06     LDA ram_0006
C - - - - - 0x016700 05:A6F0: 85 04     STA ram_0004
C - - - - - 0x016702 05:A6F2: A5 07     LDA ram_0007
C - - - - - 0x016704 05:A6F4: 85 05     STA ram_0005
C - - - - - 0x016706 05:A6F6: A0 00     LDY #$00
C - - - - - 0x016708 05:A6F8: B1 02     LDA (ram_0002),Y
C - - - - - 0x01670A 05:A6FA: 85 07     STA ram_0007
C - - - - - 0x01670C 05:A6FC: E6 02     INC ram_0002
C - - - - - 0x01670E 05:A6FE: D0 02     BNE bra_A702
- - - - - - 0x016710 05:A700: E6 03     INC ram_0003
bra_A702:
C - - - - - 0x016712 05:A702: A9 08     LDA #con_DA9D_08
C - - - - - 0x016714 05:A704: D0 E1     BNE bra_A6E7    ; jmp


; bzk garbage
- - - - - - 0x016716 05:A706: 00        .byte $00   ; 
- - - - - - 0x016717 05:A707: 01        .byte $01   ; 
- - - - - - 0x016718 05:A708: 03        .byte $03   ; 
- - - - - - 0x016719 05:A709: 07        .byte $07   ; 
- - - - - - 0x01671A 05:A70A: 0F        .byte $0F   ; 
- - - - - - 0x01671B 05:A70B: 1F        .byte $1F   ; 
- - - - - - 0x01671C 05:A70C: 3F        .byte $3F   ; 
- - - - - - 0x01671D 05:A70D: 7F        .byte $7F   ; 
- - - - - - 0x01671E 05:A70E: FE        .byte $FE   ; 
- - - - - - 0x01671F 05:A70F: FC        .byte $FC   ; 
- - - - - - 0x016720 05:A710: F8        .byte $F8   ; 
- - - - - - 0x016721 05:A711: F0        .byte $F0   ; 
- - - - - - 0x016722 05:A712: E0        .byte $E0   ; 
- - - - - - 0x016723 05:A713: C0        .byte $C0   ; 
- - - - - - 0x016724 05:A714: 80        .byte $80   ; 
- - - - - - 0x016725 05:A715: 00        .byte $00   ; 



tbl_A716:
- D 1 - - - 0x016726 05:A716: 01        .byte $01   ; 00 
- D 1 - - - 0x016727 05:A717: 01        .byte $01   ; 10 
- D 1 - - - 0x016728 05:A718: 01        .byte $01   ; 20 
- D 1 - - - 0x016729 05:A719: 00        .byte $00   ; 30 
- D 1 - - - 0x01672A 05:A71A: 00        .byte $00   ; 40 
- D 1 - - - 0x01672B 05:A71B: 00        .byte $00   ; 50 
- D 1 - - - 0x01672C 05:A71C: 00        .byte $00   ; 60 
- D 1 - - - 0x01672D 05:A71D: 00        .byte $00   ; 70 
- D 1 - - - 0x01672E 05:A71E: 00        .byte $00   ; 80 
- - - - - - 0x01672F 05:A71F: 01        .byte $01   ; 90 
- - - - - - 0x016730 05:A720: 00        .byte $00   ; A0 



tbl_A721:
- D 1 - - - 0x016731 05:A721: EA 20     .word $20EA ; 00 
- D 1 - - - 0x016733 05:A723: 8A 21     .word $218A ; 01 
- D 1 - - - 0x016735 05:A725: 2A 22     .word $222A ; 02 
- D 1 - - - 0x016737 05:A727: CA 22     .word $22CA ; 03 



tbl_A729:
- D 1 - - - 0x016739 05:A729: AF 20     .word $20AF ; 00 
- D 1 - - - 0x01673B 05:A72B: 4F 21     .word $214F ; 01 
- D 1 - - - 0x01673D 05:A72D: EF 21     .word $21EF ; 02 
- D 1 - - - 0x01673F 05:A72F: 8F 22     .word $228F ; 03 
- D 1 - - - 0x016741 05:A731: CF 20     .word $20CF ; 04 
- D 1 - - - 0x016743 05:A733: 6F 21     .word $216F ; 05 
- D 1 - - - 0x016745 05:A735: 0F 22     .word $220F ; 06 
- D 1 - - - 0x016747 05:A737: AF 22     .word $22AF ; 07 



tbl_A739:
- D 1 - - - 0x016749 05:A739: 4F A7     .word _off006_A74F_00
- D 1 - - - 0x01674B 05:A73B: 5E A7     .word _off006_A75E_01
- D 1 - - - 0x01674D 05:A73D: 6D A7     .word _off006_A76D_02
- D 1 - - - 0x01674F 05:A73F: 7C A7     .word _off006_A77C_03
- D 1 - - - 0x016751 05:A741: B2 A7     .word _off006_A7B2_04
- D 1 - - - 0x016753 05:A743: E8 A7     .word _off006_A7E8_05
- D 1 - - - 0x016755 05:A745: 1E A8     .word _off006_A81E_06
- D 1 - - - 0x016757 05:A747: 54 A8     .word _off006_A854_07
- D 1 - - - 0x016759 05:A749: 8A A8     .word _off006_A88A_08
- - - - - - 0x01675B 05:A74B: C0 A8     .word _off006_A8C0_09
- D 1 - - - 0x01675D 05:A74D: CF A8     .word _off006_A8CF_0A



_off006_A74F_00:
- D 1 - I - 0x01675F 05:A74F: 0D        .byte $0D   ; size X
- D 1 - I - 0x016760 05:A750: 01        .byte $01   ; size Y
- D 1 - I - 0x016761 05:A751: 00        .byte $00, $00, $00, $1E, $1F, $00, $25, $23, $15, $00, $00, $00, $00   ; 01 



_off006_A75E_01:
- D 1 - I - 0x01676E 05:A75E: 0D        .byte $0D   ; size X
- D 1 - I - 0x01676F 05:A75F: 01        .byte $01   ; size Y
- D 1 - I - 0x016770 05:A760: 00        .byte $00, $00, $00, $01, $20, $1C, $11, $29, $15, $22, $00, $00, $00   ; 01 



_off006_A76D_02:
- D 1 - I - 0x01677D 05:A76D: 0D        .byte $0D   ; size X
- D 1 - I - 0x01677E 05:A76E: 01        .byte $01   ; size Y
- D 1 - I - 0x01677F 05:A76F: 00        .byte $00, $00, $00, $02, $20, $1C, $11, $29, $15, $22, $00, $00, $00   ; 01 



_off006_A77C_03:
- D 1 - I - 0x01678C 05:A77C: 0D        .byte $0D   ; size X
- D 1 - I - 0x01678D 05:A77D: 04        .byte $04   ; size Y
- D 1 - I - 0x01678E 05:A77E: 00        .byte $00, $16, $22, $1F, $1E, $24, $00, $13, $1F, $26, $15, $22, $00   ; 01 
- D 1 - I - 0x01679B 05:A78B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0167A8 05:A798: 00        .byte $00, $F1, $F2, $00, $00, $00, $F1, $F2, $F5, $F6, $13, $20, $25   ; 03 
- D 1 - I - 0x0167B5 05:A7A5: 00        .byte $00, $F9, $FA, $00, $00, $00, $F9, $FA, $00, $FC, $00, $00, $00   ; 04 



_off006_A7B2_04:
- D 1 - I - 0x0167C2 05:A7B2: 0D        .byte $0D   ; size X
- D 1 - I - 0x0167C3 05:A7B3: 04        .byte $04   ; size Y
- D 1 - I - 0x0167C4 05:A7B4: 00        .byte $00, $12, $11, $13, $1B, $00, $13, $1F, $26, $15, $22, $00, $00   ; 01 
- D 1 - I - 0x0167D1 05:A7C1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0167DE 05:A7CE: 13        .byte $13, $20, $25, $F3, $F4, $F0, $00, $00, $00, $00, $00, $F1, $F2   ; 03 
- D 1 - I - 0x0167EB 05:A7DB: 00        .byte $00, $00, $00, $FB, $00, $F8, $00, $00, $00, $00, $00, $F9, $FA   ; 04 



_off006_A7E8_05:
- D 1 - I - 0x0167F8 05:A7E8: 0D        .byte $0D   ; size X
- D 1 - I - 0x0167F9 05:A7E9: 04        .byte $04   ; size Y
- D 1 - I - 0x0167FA 05:A7EA: 00        .byte $00, $22, $1F, $25, $1E, $14, $00, $13, $1F, $26, $15, $22, $00   ; 01 
- D 1 - I - 0x016807 05:A7F7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016814 05:A804: 13        .byte $13, $20, $25, $F3, $F4, $F0, $00, $F5, $F6, $00, $00, $F1, $F2   ; 03 
- D 1 - I - 0x016821 05:A811: 00        .byte $00, $00, $00, $FB, $00, $F8, $00, $00, $FC, $00, $00, $F9, $FA   ; 04 



_off006_A81E_06:
- D 1 - I - 0x01682E 05:A81E: 0D        .byte $0D   ; size X
- D 1 - I - 0x01682F 05:A81F: 04        .byte $04   ; size Y
- D 1 - I - 0x016830 05:A820: 00        .byte $00, $16, $22, $1F, $1E, $24, $00, $1B, $15, $15, $20, $00, $00   ; 01 
- D 1 - I - 0x01683D 05:A82D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x01684A 05:A83A: 00        .byte $00, $F1, $F2, $00, $00, $00, $F1, $F2, $00, $00, $13, $20, $25   ; 03 
- D 1 - I - 0x016857 05:A847: 00        .byte $00, $F9, $FA, $00, $00, $00, $F9, $FA, $00, $00, $00, $00, $00   ; 04 



_off006_A854_07:
- D 1 - I - 0x016864 05:A854: 0D        .byte $0D   ; size X
- D 1 - I - 0x016865 05:A855: 04        .byte $04   ; size Y
- D 1 - I - 0x016866 05:A856: 00        .byte $00, $12, $11, $13, $1B, $00, $1B, $15, $15, $20, $00, $00, $00   ; 01 
- D 1 - I - 0x016873 05:A863: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016880 05:A870: 13        .byte $13, $20, $25, $F3, $F4, $F0, $00, $00, $00, $00, $00, $F1, $F2   ; 03 
- D 1 - I - 0x01688D 05:A87D: 00        .byte $00, $00, $00, $FB, $00, $F8, $00, $00, $00, $00, $00, $F9, $FA   ; 04 



_off006_A88A_08:
- D 1 - I - 0x01689A 05:A88A: 0D        .byte $0D   ; size X
- D 1 - I - 0x01689B 05:A88B: 04        .byte $04   ; size Y
- D 1 - I - 0x01689C 05:A88C: 00        .byte $00, $11, $23, $23, $19, $23, $24, $00, $13, $1F, $26, $15, $22   ; 01 
- D 1 - I - 0x0168A9 05:A899: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0168B6 05:A8A6: 13        .byte $13, $20, $25, $F1, $F2, $EE, $EF, $00, $00, $F1, $F2, $EE, $EF   ; 03 
- D 1 - I - 0x0168C3 05:A8B3: 00        .byte $00, $00, $00, $F9, $FA, $00, $00, $00, $00, $F9, $FA, $00, $00   ; 04 



_off006_A8C0_09:
- - - - - - 0x0168D0 05:A8C0: 0D        .byte $0D   ; size X
- - - - - - 0x0168D1 05:A8C1: 01        .byte $01   ; size Y
- - - - - - 0x0168D2 05:A8C2: 00        .byte $00, $00, $00, $14, $15, $11, $14, $00, $00, $00, $00, $00, $00   ; 01 


; todo
_off006_A8CF_0A:
- D 1 - I - 0x0168DF 05:A8CF: 03        .byte $03   ; 0x016708
- D 1 - I - 0x0168E0 05:A8D0: 0D        .byte $0D   ; 0x01DBAA
- D 1 - I - 0x0168E1 05:A8D1: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x0168E2 05:A8D2: FF        .byte $FF   ; 0x01DBAA
- D 1 - I - 0x0168E3 05:A8D3: 0D        .byte $0D   ; 0x01DBAA
- D 1 - I - 0x0168E4 05:A8D4: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x0168E5 05:A8D5: FF        .byte $FF   ; 0x01DBAA
- D 1 - I - 0x0168E6 05:A8D6: 0D        .byte $0D   ; 0x01DBAA
- D 1 - I - 0x0168E7 05:A8D7: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x0168E8 05:A8D8: FF        .byte $FF   ; 0x01DBAA



tbl_A8D9:
- - - - - - 0x0168E9 05:A8D9: F8 A8     .word _off007_A8F8_00
- - - - - - 0x0168EB 05:A8DB: E1 A8     .word _off007_A8E1_01
- - - - - - 0x0168ED 05:A8DD: 0F A9     .word _off007_A90F_02
- D 1 - - - 0x0168EF 05:A8DF: 26 A9     .word _off007_A926_03



_off007_A8E1_01:
- - - - - - 0x0168F1 05:A8E1: 15        .byte $15   ; size X
- - - - - - 0x0168F2 05:A8E2: 01        .byte $01   ; size Y
- - - - - - 0x0168F3 05:A8E3: 13        .byte $13, $18, $1F, $1F, $23, $15, $00, $11, $1E, $1F, $24, $18, $15, $22, $00, $20   ; 
- - - - - - 0x016903 05:A8F3: 1C        .byte $1C, $11, $29, $15, $22   ; 01 



_off007_A8F8_00:
- - - - - - 0x016908 05:A8F8: 15        .byte $15   ; size X
- - - - - - 0x016909 05:A8F9: 01        .byte $01   ; size Y
- - - - - - 0x01690A 05:A8FA: 23        .byte $23, $15, $1C, $15, $13, $24, $00, $1D, $11, $19, $1E, $00, $20, $1C, $11, $29   ; 
- - - - - - 0x01691A 05:A90A: 15        .byte $15, $22, $00, $00, $00   ; 01 



_off007_A90F_02:
- - - - - - 0x01691F 05:A90F: 15        .byte $15   ; size X
- - - - - - 0x016920 05:A910: 01        .byte $01   ; size Y
- - - - - - 0x016921 05:A911: 13        .byte $13, $11, $1E, $1E, $1F, $24, $00, $25, $23, $15, $00, $23, $25, $12, $00, $20   ; 
- - - - - - 0x016931 05:A921: 1C        .byte $1C, $11, $29, $15, $22   ; 01 


; todo
_off007_A926_03:
- D 1 - I - 0x016936 05:A926: 01        .byte $01   ; 0x016708
- D 1 - I - 0x016937 05:A927: 15        .byte $15   ; 0x01DBAA
- D 1 - I - 0x016938 05:A928: 00        .byte $00   ; 0x01DBB6
- D 1 - I - 0x016939 05:A929: FF        .byte $FF   ; 0x01DBAA



off_0x01693A_02:
- D 1 - I - 0x01693A 05:A92A: 02        .byte $02   ; size X
- D 1 - I - 0x01693B 05:A92B: 02        .byte $02   ; size Y
- D 1 - I - 0x01693C 05:A92C: D6        .byte $D6, $D7   ; 01 
- D 1 - I - 0x01693E 05:A92E: 92        .byte $92, $93   ; 02 



off_0x016940_00:
- D 1 - I - 0x016940 05:A930: 02        .byte $02   ; size X
- D 1 - I - 0x016941 05:A931: 02        .byte $02   ; size Y
- D 1 - I - 0x016942 05:A932: D8        .byte $D8, $D9   ; 01 
- D 1 - I - 0x016944 05:A934: 94        .byte $94, $95   ; 02 



_off022_0x016946_00:
- D 1 - I - 0x016946 05:A936: 04        .byte $04   ; size X
- D 1 - I - 0x016947 05:A937: 04        .byte $04   ; size Y
- D 1 - I - 0x016948 05:A938: 4C        .byte $4C, $86, $86, $86   ; 01 
- D 1 - I - 0x01694C 05:A93C: 4C        .byte $4C, $85, $85, $85   ; 02 
- D 1 - I - 0x016950 05:A940: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016954 05:A944: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x016958_01:
- D 1 - I - 0x016958 05:A948: 04        .byte $04   ; size X
- D 1 - I - 0x016959 05:A949: 04        .byte $04   ; size Y
- D 1 - I - 0x01695A 05:A94A: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x01695E 05:A94E: 4C        .byte $4C, $86, $86, $86   ; 02 
- D 1 - I - 0x016962 05:A952: 4C        .byte $4C, $85, $85, $85   ; 03 
- D 1 - I - 0x016966 05:A956: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x01696A_02:
- D 1 - I - 0x01696A 05:A95A: 04        .byte $04   ; size X
- D 1 - I - 0x01696B 05:A95B: 04        .byte $04   ; size Y
- D 1 - I - 0x01696C 05:A95C: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016970 05:A960: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016974 05:A964: 4C        .byte $4C, $86, $86, $86   ; 03 
- D 1 - I - 0x016978 05:A968: 4C        .byte $4C, $85, $85, $85   ; 04 



_off022_0x01697C_05:
- D 1 - I - 0x01697C 05:A96C: 04        .byte $04   ; size X
- D 1 - I - 0x01697D 05:A96D: 04        .byte $04   ; size Y
- D 1 - I - 0x01697E 05:A96E: 86        .byte $86, $86, $86, $4C   ; 01 
- D 1 - I - 0x016982 05:A972: 85        .byte $85, $85, $85, $4C   ; 02 
- D 1 - I - 0x016986 05:A976: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x01698A 05:A97A: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x01698E_04:
- D 1 - I - 0x01698E 05:A97E: 04        .byte $04   ; size X
- D 1 - I - 0x01698F 05:A97F: 04        .byte $04   ; size Y
- D 1 - I - 0x016990 05:A980: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016994 05:A984: 86        .byte $86, $86, $86, $4C   ; 02 
- D 1 - I - 0x016998 05:A988: 85        .byte $85, $85, $85, $4C   ; 03 
- D 1 - I - 0x01699C 05:A98C: 00        .byte $00, $00, $00, $00   ; 04 



_off022_0x0169A0_03:
- D 1 - I - 0x0169A0 05:A990: 04        .byte $04   ; size X
- D 1 - I - 0x0169A1 05:A991: 04        .byte $04   ; size Y
- D 1 - I - 0x0169A2 05:A992: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x0169A6 05:A996: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x0169AA 05:A99A: 86        .byte $86, $86, $86, $4C   ; 03 
- D 1 - I - 0x0169AE 05:A99E: 85        .byte $85, $85, $85, $4C   ; 04 



_off012_0x0169B2_00_clear_nametables:
_off012_0x0169B2_02:   ; never used, no such index
_off012_0x0169B2_06:   ; never used, no such index
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 1 - I - 0x0169B2 05:A9A2: 00 20     .word $2000 ; 

- D 1 - I - 0x0169B4 05:A9A4: 78        .byte $78   ; 
- D 1 - I - 0x0169B5 05:A9A5: 00        .byte $00   ; 

- D 1 - I - 0x0169B6 05:A9A6: 78        .byte $78   ; 
- D 1 - I - 0x0169B7 05:A9A7: 00        .byte $00   ; 

- D 1 - I - 0x0169B8 05:A9A8: 78        .byte $78   ; 
- D 1 - I - 0x0169B9 05:A9A9: 00        .byte $00   ; 

- D 1 - I - 0x0169BA 05:A9AA: 78        .byte $78   ; 
- D 1 - I - 0x0169BB 05:A9AB: 00        .byte $00   ; 

- D 1 - I - 0x0169BC 05:A9AC: 78        .byte $78   ; 
- D 1 - I - 0x0169BD 05:A9AD: 00        .byte $00   ; 

- D 1 - I - 0x0169BE 05:A9AE: 78        .byte $78   ; 
- D 1 - I - 0x0169BF 05:A9AF: 00        .byte $00   ; 

- D 1 - I - 0x0169C0 05:A9B0: 78        .byte $78   ; 
- D 1 - I - 0x0169C1 05:A9B1: 00        .byte $00   ; 

- D 1 - I - 0x0169C2 05:A9B2: 78        .byte $78   ; 
- D 1 - I - 0x0169C3 05:A9B3: 00        .byte $00   ; 

- D 1 - I - 0x0169C4 05:A9B4: 40        .byte $40   ; 
- D 1 - I - 0x0169C5 05:A9B5: 00        .byte $00   ; 

- D 1 - I - 0x0169C6 05:A9B6: 7F        .byte $7F   ; change ppu address
- D 1 - I - 0x0169C7 05:A9B7: 00 24     .word $2400 ; 

- D 1 - I - 0x0169C9 05:A9B9: 78        .byte $78   ; 
- D 1 - I - 0x0169CA 05:A9BA: 00        .byte $00   ; 

- D 1 - I - 0x0169CB 05:A9BB: 78        .byte $78   ; 
- D 1 - I - 0x0169CC 05:A9BC: 00        .byte $00   ; 

- D 1 - I - 0x0169CD 05:A9BD: 78        .byte $78   ; 
- D 1 - I - 0x0169CE 05:A9BE: 00        .byte $00   ; 

- D 1 - I - 0x0169CF 05:A9BF: 78        .byte $78   ; 
- D 1 - I - 0x0169D0 05:A9C0: 00        .byte $00   ; 

- D 1 - I - 0x0169D1 05:A9C1: 78        .byte $78   ; 
- D 1 - I - 0x0169D2 05:A9C2: 00        .byte $00   ; 

- D 1 - I - 0x0169D3 05:A9C3: 78        .byte $78   ; 
- D 1 - I - 0x0169D4 05:A9C4: 00        .byte $00   ; 

- D 1 - I - 0x0169D5 05:A9C5: 78        .byte $78   ; 
- D 1 - I - 0x0169D6 05:A9C6: 00        .byte $00   ; 

- D 1 - I - 0x0169D7 05:A9C7: 78        .byte $78   ; 
- D 1 - I - 0x0169D8 05:A9C8: 00        .byte $00   ; 

- D 1 - I - 0x0169D9 05:A9C9: 40        .byte $40   ; 
- D 1 - I - 0x0169DA 05:A9CA: 00        .byte $00   ; 

- D 1 - I - 0x0169DB 05:A9CB: FF        .byte $FF   ; end token



_off031_0x016CF2_00:
- D 1 - I - 0x0169DC 05:A9CC: 04        .byte $04   ; size X
- D 1 - I - 0x0169DD 05:A9CD: 04        .byte $04   ; size Y
- D 1 - I - 0x0169DE 05:A9CE: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- D 1 - I - 0x0169E2 05:A9D2: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- D 1 - I - 0x0169E6 05:A9D6: BE        .byte $BE, $BE, $BE, $BE   ; 03 
- D 1 - I - 0x0169EA 05:A9DA: BE        .byte $BE, $BF, $BE, $BF   ; 04 



_off031_0x0169EE_01:
- D 1 - I - 0x0169EE 05:A9DE: 04        .byte $04   ; size X
- D 1 - I - 0x0169EF 05:A9DF: 05        .byte $05   ; size Y
- D 1 - I - 0x0169F0 05:A9E0: 00        .byte $00, $C0, $C1, $BE   ; 01 
- D 1 - I - 0x0169F4 05:A9E4: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x0169F8 05:A9E8: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x0169FC 05:A9EC: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A00 05:A9F0: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A04_02:
_off031_0x016A04_03:
_off031_0x016A04_04:
_off031_0x016A04_05:
_off031_0x016A04_06:
- D 1 - I - 0x016A04 05:A9F4: 04        .byte $04   ; size X
- D 1 - I - 0x016A05 05:A9F5: 05        .byte $05   ; size Y
- D 1 - I - 0x016A06 05:A9F6: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A0A 05:A9FA: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A0E 05:A9FE: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A12 05:AA02: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A16 05:AA06: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A1A_07:
- D 1 - I - 0x016A1A 05:AA0A: 04        .byte $04   ; size X
- D 1 - I - 0x016A1B 05:AA0B: 05        .byte $05   ; size Y
- D 1 - I - 0x016A1C 05:AA0C: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A20 05:AA10: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A24 05:AA14: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A28 05:AA18: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016A2C 05:AA1C: D6        .byte $D6, $D6, $D6, $D6   ; 05 



_off031_0x016A30_08:
- D 1 - I - 0x016A30 05:AA20: 04        .byte $04   ; size X
- D 1 - I - 0x016A31 05:AA21: 04        .byte $04   ; size Y
- D 1 - I - 0x016A32 05:AA22: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A36 05:AA26: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A3A 05:AA2A: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016A3E 05:AA2E: D6        .byte $D6, $D6, $D6, $D6   ; 04 



_off031_0x016A42_09:
- D 1 - I - 0x016A42 05:AA32: 04        .byte $04   ; size X
- D 1 - I - 0x016A43 05:AA33: 03        .byte $03   ; size Y
- D 1 - I - 0x016A44 05:AA34: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A48 05:AA38: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016A4C 05:AA3C: C6        .byte $C6, $C7, $C7, $C8   ; 03 



_off031_0x016A50_0A:
- D 1 - I - 0x016A50 05:AA40: 04        .byte $04   ; size X
- D 1 - I - 0x016A51 05:AA41: 05        .byte $05   ; size Y
- D 1 - I - 0x016A52 05:AA42: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016A56 05:AA46: BE        .byte $BE, $BE, $BE, $BE   ; 02 
- D 1 - I - 0x016A5A 05:AA4A: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016A5E 05:AA4E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016A62 05:AA52: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A66_0B:
- - - - - - 0x016A66 05:AA56: 04        .byte $04   ; size X
- - - - - - 0x016A67 05:AA57: 06        .byte $06   ; size Y
- - - - - - 0x016A68 05:AA58: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- - - - - - 0x016A6C 05:AA5C: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- - - - - - 0x016A70 05:AA60: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- - - - - - 0x016A74 05:AA64: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A78 05:AA68: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- - - - - - 0x016A7C 05:AA6C: D6        .byte $D6, $D6, $D6, $D6   ; 06 



_off031_0x016A80_0C:
- - - - - - 0x016A80 05:AA70: 04        .byte $04   ; size X
- - - - - - 0x016A81 05:AA71: 05        .byte $05   ; size Y
- - - - - - 0x016A82 05:AA72: C2        .byte $C2, $C3, $C4, $C5   ; 01 
- - - - - - 0x016A86 05:AA76: C6        .byte $C6, $C7, $C7, $C8   ; 02 
- - - - - - 0x016A8A 05:AA7A: 00        .byte $00, $00, $00, $00   ; 03 
- - - - - - 0x016A8E 05:AA7E: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- - - - - - 0x016A92 05:AA82: BE        .byte $BE, $BF, $BE, $BF   ; 05 



_off031_0x016A96_0D:
- D 1 - I - 0x016A96 05:AA86: 04        .byte $04   ; size X
- D 1 - I - 0x016A97 05:AA87: 05        .byte $05   ; size Y
- D 1 - I - 0x016A98 05:AA88: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016A9C 05:AA8C: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AA0 05:AA90: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016AA4 05:AA94: BE        .byte $BE, $BE, $BE, $BE   ; 04 
- D 1 - I - 0x016AA8 05:AA98: D5        .byte $D5, $D6, $D6, $D6   ; 05 



_off031_0x016AAC_0E:
- D 1 - I - 0x016AAC 05:AA9C: 04        .byte $04   ; size X
- D 1 - I - 0x016AAD 05:AA9D: 04        .byte $04   ; size Y
- D 1 - I - 0x016AAE 05:AA9E: BE        .byte $BE, $C0, $C1, $BF   ; 01 
- D 1 - I - 0x016AB2 05:AAA2: C2        .byte $C2, $C3, $C4, $C5   ; 02 
- D 1 - I - 0x016AB6 05:AAA6: C6        .byte $C6, $C7, $C7, $C8   ; 03 
- D 1 - I - 0x016ABA 05:AAAA: D5        .byte $D5, $D6, $D6, $D6   ; 04 



_off031_0x016ABE_0F:
- D 1 - I - 0x016ABE 05:AAAE: 04        .byte $04   ; size X
- D 1 - I - 0x016ABF 05:AAAF: 06        .byte $06   ; size Y
- D 1 - I - 0x016AC0 05:AAB0: BE        .byte $BE, $BF, $BE, $BF   ; 01 
- D 1 - I - 0x016AC4 05:AAB4: BE        .byte $BE, $BF, $BE, $BF   ; 02 
- D 1 - I - 0x016AC8 05:AAB8: BE        .byte $BE, $BF, $BE, $BF   ; 03 
- D 1 - I - 0x016ACC 05:AABC: BE        .byte $BE, $BF, $BE, $BF   ; 04 
- D 1 - I - 0x016AD0 05:AAC0: BE        .byte $BE, $BF, $BE, $BF   ; 05 
- D 1 - I - 0x016AD4 05:AAC4: D5        .byte $D5, $D6, $D6, $D6   ; 06 



_off025_0x016AD8_00:
- D 1 - I - 0x016AD8 05:AAC8: 04        .byte $04   ; size X
- D 1 - I - 0x016AD9 05:AAC9: 04        .byte $04   ; size Y
- D 1 - I - 0x016ADA 05:AACA: C9        .byte $C9, $C9, $C9, $C9   ; 01 
- D 1 - I - 0x016ADE 05:AACE: CA        .byte $CA, $CA, $CA, $CA   ; 02 
- D 1 - I - 0x016AE2 05:AAD2: CB        .byte $CB, $CB, $CB, $CB   ; 03 
- D 1 - I - 0x016AE6 05:AAD6: CC        .byte $CC, $CC, $CC, $CC   ; 04 



_off025_0x016AEA_01:
- D 1 - I - 0x016AEA 05:AADA: 04        .byte $04   ; size X
- D 1 - I - 0x016AEB 05:AADB: 04        .byte $04   ; size Y
- D 1 - I - 0x016AEC 05:AADC: C9        .byte $C9, $CD, $D1, $C9   ; 01 
- D 1 - I - 0x016AF0 05:AAE0: CA        .byte $CA, $CE, $D2, $CA   ; 02 
- D 1 - I - 0x016AF4 05:AAE4: CB        .byte $CB, $CF, $D3, $CB   ; 03 
- D 1 - I - 0x016AF8 05:AAE8: CC        .byte $CC, $D0, $D4, $CC   ; 04 



_off025_0x016AFC_02:
- D 1 - I - 0x016AFC 05:AAEC: 04        .byte $04   ; size X
- D 1 - I - 0x016AFD 05:AAED: 04        .byte $04   ; size Y
- D 1 - I - 0x016AFE 05:AAEE: C9        .byte $C9, $00, $00, $C9   ; 01 
- D 1 - I - 0x016B02 05:AAF2: CA        .byte $CA, $00, $00, $CA   ; 02 
- D 1 - I - 0x016B06 05:AAF6: CB        .byte $CB, $00, $00, $CB   ; 03 
- D 1 - I - 0x016B0A 05:AAFA: CC        .byte $CC, $00, $00, $CC   ; 04 



_off025_0x016B0E_03:
- D 1 - I - 0x016B0E 05:AAFE: 04        .byte $04   ; size X
- D 1 - I - 0x016B0F 05:AAFF: 04        .byte $04   ; size Y
- D 1 - I - 0x016B10 05:AB00: CD        .byte $CD, $00, $00, $D1   ; 01 
- D 1 - I - 0x016B14 05:AB04: CE        .byte $CE, $00, $00, $D2   ; 02 
- D 1 - I - 0x016B18 05:AB08: CF        .byte $CF, $00, $00, $D3   ; 03 
- D 1 - I - 0x016B1C 05:AB0C: D0        .byte $D0, $00, $00, $D4   ; 04 



_off026_0x016B20_04:
_off026_0x016B20_0C:
- D 1 - I - 0x016B20 05:AB10: 04        .byte $04   ; size X
- D 1 - I - 0x016B21 05:AB11: 02        .byte $02   ; size Y
- D 1 - I - 0x016B22 05:AB12: DD        .byte $DD, $DE, $DD, $DE   ; 01 
- D 1 - I - 0x016B26 05:AB16: E3        .byte $E3, $E4, $E3, $E4   ; 02 



_off026_0x016B2A_00:
_off026_0x016B2A_08:
- D 1 - I - 0x016B2A 05:AB1A: 04        .byte $04   ; size X
- D 1 - I - 0x016B2B 05:AB1B: 02        .byte $02   ; size Y
- D 1 - I - 0x016B2C 05:AB1C: DF        .byte $DF, $00, $00, $E2   ; 01 
- D 1 - I - 0x016B30 05:AB20: E0        .byte $E0, $00, $00, $E1   ; 02 



_off011_0x016B34_02:
- D 1 - I - 0x016B34 05:AB24: 04        .byte $04   ; size X
- D 1 - I - 0x016B35 05:AB25: 0B        .byte $0B   ; size Y
- D 1 - I - 0x016B36 05:AB26: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B3A 05:AB2A: 80        .byte $80, $81, $81, $82   ; 02 
- D 1 - I - 0x016B3E 05:AB2E: 83        .byte $83, $84, $84, $85   ; 03 
- D 1 - I - 0x016B42 05:AB32: 86        .byte $86, $87, $87, $88   ; 04 
- D 1 - I - 0x016B46 05:AB36: 89        .byte $89, $8A, $8A, $8B   ; 05 
- D 1 - I - 0x016B4A 05:AB3A: 89        .byte $89, $8A, $8A, $8B   ; 06 
- D 1 - I - 0x016B4E 05:AB3E: 8C        .byte $8C, $8D, $8D, $8E   ; 07 
- D 1 - I - 0x016B52 05:AB42: 86        .byte $86, $87, $87, $88   ; 08 
- D 1 - I - 0x016B56 05:AB46: 89        .byte $89, $8A, $8A, $8B   ; 09 
- D 1 - I - 0x016B5A 05:AB4A: 89        .byte $89, $8A, $8A, $8B   ; 0A 
- D 1 - I - 0x016B5E 05:AB4E: 8C        .byte $8C, $8D, $8D, $8E   ; 0B 



_off011_0x016B62_00:
- D 1 - I - 0x016B62 05:AB52: 04        .byte $04   ; size X
- D 1 - I - 0x016B63 05:AB53: 07        .byte $07   ; size Y
- D 1 - I - 0x016B64 05:AB54: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B68 05:AB58: 80        .byte $80, $81, $81, $82   ; 02 
- D 1 - I - 0x016B6C 05:AB5C: 83        .byte $83, $84, $84, $85   ; 03 
- D 1 - I - 0x016B70 05:AB60: 86        .byte $86, $87, $87, $88   ; 04 
- D 1 - I - 0x016B74 05:AB64: 89        .byte $89, $8A, $8A, $8B   ; 05 
- D 1 - I - 0x016B78 05:AB68: 89        .byte $89, $8A, $8A, $8B   ; 06 
- D 1 - I - 0x016B7C 05:AB6C: 8C        .byte $8C, $8D, $8D, $8E   ; 07 



_off011_0x016B80_04:
- D 1 - I - 0x016B80 05:AB70: 04        .byte $04   ; size X
- D 1 - I - 0x016B81 05:AB71: 06        .byte $06   ; size Y
- D 1 - I - 0x016B82 05:AB72: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016B86 05:AB76: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016B8A 05:AB7A: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016B8E 05:AB7E: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016B92 05:AB82: FD        .byte $FD, $FD, $FD, $FD   ; 05 
- D 1 - I - 0x016B96 05:AB86: FE        .byte $FE, $FE, $FE, $FE   ; 06 



_off011_0x016B9A_06:
- D 1 - I - 0x016B9A 05:AB8A: 04        .byte $04   ; size X
- D 1 - I - 0x016B9B 05:AB8B: 06        .byte $06   ; size Y
- D 1 - I - 0x016B9C 05:AB8C: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016BA0 05:AB90: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016BA4 05:AB94: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016BA8 05:AB98: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BAC 05:AB9C: 80        .byte $80, $81, $81, $82   ; 05 
- D 1 - I - 0x016BB0 05:ABA0: 83        .byte $83, $84, $84, $85   ; 06 



_off011_0x016BB4_08:    ; never used, no such index
- - - - - - 0x016BB4 05:ABA4: 04        .byte $04   ; size X
- - - - - - 0x016BB5 05:ABA5: 04        .byte $04   ; size Y
- - - - - - 0x016BB6 05:ABA6: 00        .byte $00, $00, $00, $00   ; 01 
- - - - - - 0x016BBA 05:ABAA: 00        .byte $00, $00, $00, $00   ; 02 
- - - - - - 0x016BBE 05:ABAE: 80        .byte $80, $81, $81, $82   ; 03 
- - - - - - 0x016BC2 05:ABB2: 83        .byte $83, $84, $84, $85   ; 04 



_off011_0x016BC6_12:
- D 1 - I - 0x016BC6 05:ABB6: 04        .byte $04   ; size X
- D 1 - I - 0x016BC7 05:ABB7: 08        .byte $08   ; size Y
- D 1 - I - 0x016BC8 05:ABB8: 26        .byte $26, $24, $26, $24   ; 01 
- D 1 - I - 0x016BCC 05:ABBC: 00        .byte $00, $27, $28, $27   ; 02 
- D 1 - I - 0x016BD0 05:ABC0: 00        .byte $00, $25, $24, $25   ; 03 
- D 1 - I - 0x016BD4 05:ABC4: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016BD8 05:ABC8: 2B        .byte $2B, $00, $00, $2D   ; 05 
- D 1 - I - 0x016BDC 05:ABCC: 2C        .byte $2C, $00, $00, $2E   ; 06 
- D 1 - I - 0x016BE0 05:ABD0: 2C        .byte $2C, $00, $00, $2E   ; 07 
- D 1 - I - 0x016BE4 05:ABD4: 00        .byte $00, $00, $00, $00   ; 08 



_off011_0x016BE8_0C:
- D 1 - I - 0x016BE8 05:ABD8: 04        .byte $04   ; size X
- D 1 - I - 0x016BE9 05:ABD9: 0B        .byte $0B   ; size Y
- D 1 - I - 0x016BEA 05:ABDA: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016BEE 05:ABDE: B0        .byte $B0, $B1, $B1, $B2   ; 02 
- D 1 - I - 0x016BF2 05:ABE2: B3        .byte $B3, $B4, $B4, $B5   ; 03 
- D 1 - I - 0x016BF6 05:ABE6: B6        .byte $B6, $B7, $B7, $B8   ; 04 
- D 1 - I - 0x016BFA 05:ABEA: B9        .byte $B9, $BA, $BA, $BB   ; 05 
- D 1 - I - 0x016BFE 05:ABEE: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C02 05:ABF2: BC        .byte $BC, $BD, $BD, $BE   ; 07 
- D 1 - I - 0x016C06 05:ABF6: B6        .byte $B6, $B7, $B7, $B8   ; 08 
- D 1 - I - 0x016C0A 05:ABFA: B9        .byte $B9, $BA, $BA, $BB   ; 09 
- D 1 - I - 0x016C0E 05:ABFE: B9        .byte $B9, $BA, $BA, $BB   ; 0A 
- D 1 - I - 0x016C12 05:AC02: BC        .byte $BC, $BD, $BD, $BE   ; 0B 



_off011_0x016C16_0A:
- D 1 - I - 0x016C16 05:AC06: 04        .byte $04   ; size X
- D 1 - I - 0x016C17 05:AC07: 07        .byte $07   ; size Y
- D 1 - I - 0x016C18 05:AC08: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C1C 05:AC0C: B0        .byte $B0, $B1, $B1, $B2   ; 02 
- D 1 - I - 0x016C20 05:AC10: B3        .byte $B3, $B4, $B4, $B5   ; 03 
- D 1 - I - 0x016C24 05:AC14: B6        .byte $B6, $B7, $B7, $B8   ; 04 
- D 1 - I - 0x016C28 05:AC18: B9        .byte $B9, $BA, $BA, $BB   ; 05 
- D 1 - I - 0x016C2C 05:AC1C: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C30 05:AC20: BC        .byte $BC, $BD, $BD, $BE   ; 07 



_off011_0x016C34_18:
- D 1 - I - 0x016C34 05:AC24: 04        .byte $04   ; size X
- D 1 - I - 0x016C35 05:AC25: 08        .byte $08   ; size Y
- D 1 - I - 0x016C36 05:AC26: B6        .byte $B6, $B7, $B7, $B8   ; 01 
- D 1 - I - 0x016C3A 05:AC2A: B9        .byte $B9, $BA, $BA, $BB   ; 02 
- D 1 - I - 0x016C3E 05:AC2E: B9        .byte $B9, $BA, $BA, $BB   ; 03 
- D 1 - I - 0x016C42 05:AC32: BC        .byte $BC, $BD, $BD, $BE   ; 04 
- D 1 - I - 0x016C46 05:AC36: B6        .byte $B6, $B7, $B7, $B8   ; 05 
- D 1 - I - 0x016C4A 05:AC3A: B9        .byte $B9, $BA, $BA, $BB   ; 06 
- D 1 - I - 0x016C4E 05:AC3E: B9        .byte $B9, $BA, $BA, $BB   ; 07 
- D 1 - I - 0x016C52 05:AC42: BC        .byte $BC, $BD, $BD, $BE   ; 08 



_off011_0x016C56_16:
- D 1 - I - 0x016C56 05:AC46: 04        .byte $04   ; size X
- D 1 - I - 0x016C57 05:AC47: 04        .byte $04   ; size Y
- D 1 - I - 0x016C58 05:AC48: B6        .byte $B6, $B7, $B7, $B8   ; 01 
- D 1 - I - 0x016C5C 05:AC4C: B9        .byte $B9, $BA, $BA, $BB   ; 02 
- D 1 - I - 0x016C60 05:AC50: B9        .byte $B9, $BA, $BA, $BB   ; 03 
- D 1 - I - 0x016C64 05:AC54: BC        .byte $BC, $BD, $BD, $BE   ; 04 



_off011_0x016C68_0E:
- D 1 - I - 0x016C68 05:AC58: 04        .byte $04   ; size X
- D 1 - I - 0x016C69 05:AC59: 06        .byte $06   ; size Y
- D 1 - I - 0x016C6A 05:AC5A: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C6E 05:AC5E: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C72 05:AC62: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C76 05:AC66: 67        .byte $67, $5F, $5F, $67   ; 04 
- D 1 - I - 0x016C7A 05:AC6A: 90        .byte $90, $91, $91, $90   ; 05 
- D 1 - I - 0x016C7E 05:AC6E: 95        .byte $95, $96, $96, $97   ; 06 



_off011_0x016C82_10:
- D 1 - I - 0x016C82 05:AC72: 04        .byte $04   ; size X
- D 1 - I - 0x016C83 05:AC73: 06        .byte $06   ; size Y
- D 1 - I - 0x016C84 05:AC74: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016C88 05:AC78: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016C8C 05:AC7C: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016C90 05:AC80: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016C94 05:AC84: B0        .byte $B0, $B1, $B1, $B2   ; 05 
- D 1 - I - 0x016C98 05:AC88: B3        .byte $B3, $B4, $B4, $B5   ; 06 



_off011_0x016C9C_14:
- D 1 - I - 0x016C9C 05:AC8C: 04        .byte $04   ; size X
- D 1 - I - 0x016C9D 05:AC8D: 0A        .byte $0A   ; size Y
- D 1 - I - 0x016C9E 05:AC8E: 00        .byte $00, $00, $00, $00   ; 01 
- D 1 - I - 0x016CA2 05:AC92: 00        .byte $00, $00, $00, $00   ; 02 
- D 1 - I - 0x016CA6 05:AC96: 00        .byte $00, $00, $00, $00   ; 03 
- D 1 - I - 0x016CAA 05:AC9A: 00        .byte $00, $00, $00, $00   ; 04 
- D 1 - I - 0x016CAE 05:AC9E: 00        .byte $00, $00, $00, $00   ; 05 
- D 1 - I - 0x016CB2 05:ACA2: 00        .byte $00, $00, $00, $00   ; 06 
- D 1 - I - 0x016CB6 05:ACA6: 00        .byte $00, $00, $00, $00   ; 07 
- D 1 - I - 0x016CBA 05:ACAA: 00        .byte $00, $00, $00, $00   ; 08 
- D 1 - I - 0x016CBE 05:ACAE: 00        .byte $00, $00, $00, $00   ; 09 
- D 1 - I - 0x016CC2 05:ACB2: 00        .byte $00, $00, $00, $00   ; 0A 



off_0x016CC6:
- D 1 - I - 0x016CC6 05:ACB6: 04        .byte $04   ; size X
- D 1 - I - 0x016CC7 05:ACB7: 04        .byte $04   ; size Y
- D 1 - I - 0x016CC8 05:ACB8: 06        .byte $06, $06, $06, $06   ; 01 
- D 1 - I - 0x016CCC 05:ACBC: 06        .byte $06, $61, $6C, $06   ; 02 
- D 1 - I - 0x016CD0 05:ACC0: 06        .byte $06, $78, $79, $06   ; 03 
- D 1 - I - 0x016CD4 05:ACC4: 06        .byte $06, $06, $06, $06   ; 04 



_off026_0x016CD8_18:
_off026_0x016CD8_20:
- D 1 - I - 0x016CD8 05:ACC8: 04        .byte $04   ; size X
- D 1 - I - 0x016CD9 05:ACC9: 02        .byte $02   ; size Y
- D 1 - I - 0x016CDA 05:ACCA: B6        .byte $B6, $B7, $B8, $B9   ; 01 
- D 1 - I - 0x016CDE 05:ACCE: BE        .byte $BE, $BF, $90, $91   ; 02 



_off026_0x016CE2_1C:
_off026_0x016CE2_24:
- D 1 - I - 0x016CE2 05:ACD2: 04        .byte $04   ; size X
- D 1 - I - 0x016CE3 05:ACD3: 02        .byte $02   ; size Y
- D 1 - I - 0x016CE4 05:ACD4: BA        .byte $BA, $BB, $BC, $BD   ; 01 
- D 1 - I - 0x016CE8 05:ACD8: 92        .byte $92, $93, $94, $95   ; 02 



_off026_0x016CEC_10:
- D 1 - I - 0x016CEC 05:ACDC: 01        .byte $01   ; size X
- D 1 - I - 0x016CED 05:ACDD: 04        .byte $04   ; size Y
- D 1 - I - 0x016CEE 05:ACDE: A8        .byte $A8   ; 01 
- D 1 - I - 0x016CEF 05:ACDF: A9        .byte $A9   ; 02 
- D 1 - I - 0x016CF0 05:ACE0: AA        .byte $AA   ; 03 
- D 1 - I - 0x016CF1 05:ACE1: AB        .byte $AB   ; 04 



_off026_0x016CF2_14:
- D 1 - I - 0x016CF2 05:ACE2: 01        .byte $01   ; size X
- D 1 - I - 0x016CF3 05:ACE3: 04        .byte $04   ; size Y
- D 1 - I - 0x016CF4 05:ACE4: AC        .byte $AC   ; 01 
- D 1 - I - 0x016CF5 05:ACE5: AD        .byte $AD   ; 02 
- D 1 - I - 0x016CF6 05:ACE6: AE        .byte $AE   ; 03 
- D 1 - I - 0x016CF7 05:ACE7: AF        .byte $AF   ; 04 



_off026_0x016CF8_28:
- - - - - - 0x016CF8 05:ACE8: 04        .byte $04   ; size X
- - - - - - 0x016CF9 05:ACE9: 03        .byte $03   ; size Y
- - - - - - 0x016CFA 05:ACEA: 05        .byte $05, $06, $07, $00   ; 01 
- - - - - - 0x016CFE 05:ACEE: 0C        .byte $0C, $0D, $0E, $00   ; 02 
- - - - - - 0x016D02 05:ACF2: 00        .byte $00, $00, $00, $00   ; 03 



_off026_0x016D06_2C:
- D 1 - I - 0x016D06 05:ACF6: 04        .byte $04   ; size X
- D 1 - I - 0x016D07 05:ACF7: 03        .byte $03   ; size Y
- D 1 - I - 0x016D08 05:ACF8: 08        .byte $08, $09, $0A, $00   ; 01 
- D 1 - I - 0x016D0C 05:ACFC: 0F        .byte $0F, $10, $11, $00   ; 02 
- D 1 - I - 0x016D10 05:AD00: 13        .byte $13, $14, $00, $00   ; 03 



_off026_0x016D14_30:
- D 1 - I - 0x016D14 05:AD04: 04        .byte $04   ; size X
- D 1 - I - 0x016D15 05:AD05: 03        .byte $03   ; size Y
- D 1 - I - 0x016D16 05:AD06: 00        .byte $00, $88, $89, $00   ; 01 
- D 1 - I - 0x016D1A 05:AD0A: 00        .byte $00, $BD, $9D, $00   ; 02 
- D 1 - I - 0x016D1E 05:AD0E: 00        .byte $00, $A0, $A1, $00   ; 03 



_off026_0x016D22_34:
- D 1 - I - 0x016D22 05:AD12: 04        .byte $04   ; size X
- D 1 - I - 0x016D23 05:AD13: 03        .byte $03   ; size Y
- D 1 - I - 0x016D24 05:AD14: 00        .byte $00, $83, $84, $85   ; 01 
- D 1 - I - 0x016D28 05:AD18: 00        .byte $00, $8A, $8B, $8C   ; 02 
- D 1 - I - 0x016D2C 05:AD1C: 00        .byte $00, $00, $9E, $9F   ; 03 



_off026_0x016D30_38:
- - - - - - 0x016D30 05:AD20: 04        .byte $04   ; size X
- - - - - - 0x016D31 05:AD21: 03        .byte $03   ; size Y
- - - - - - 0x016D32 05:AD22: 00        .byte $00, $4D, $86, $87   ; 01 
- - - - - - 0x016D36 05:AD26: 00        .byte $00, $8D, $8E, $8F   ; 02 
- - - - - - 0x016D3A 05:AD2A: 00        .byte $00, $00, $00, $00   ; 03 



_off026_0x016D3E_3C:
- D 1 - I - 0x016D3E 05:AD2E: 02        .byte $02   ; size X
- D 1 - I - 0x016D3F 05:AD2F: 02        .byte $02   ; size Y
- D 1 - I - 0x016D40 05:AD30: A2        .byte $A2, $A3   ; 01 
- D 1 - I - 0x016D42 05:AD32: AC        .byte $AC, $AD   ; 02 



_off026_0x016D44_40:
- D 1 - I - 0x016D44 05:AD34: 02        .byte $02   ; size X
- D 1 - I - 0x016D45 05:AD35: 03        .byte $03   ; size Y
- D 1 - I - 0x016D46 05:AD36: A2        .byte $A2, $A3   ; 01 
- D 1 - I - 0x016D48 05:AD38: A6        .byte $A6, $A7   ; 02 
- D 1 - I - 0x016D4A 05:AD3A: AC        .byte $AC, $AD   ; 03 



_off026_0x016D4C_44:
- D 1 - I - 0x016D4C 05:AD3C: 02        .byte $02   ; size X
- D 1 - I - 0x016D4D 05:AD3D: 03        .byte $03   ; size Y
- D 1 - I - 0x016D4E 05:AD3E: B4        .byte $B4, $B5   ; 01 
- D 1 - I - 0x016D50 05:AD40: A6        .byte $A6, $A7   ; 02 
- D 1 - I - 0x016D52 05:AD42: AC        .byte $AC, $AD   ; 03 



_off026_0x016D54_48:
- D 1 - I - 0x016D54 05:AD44: 02        .byte $02   ; size X
- D 1 - I - 0x016D55 05:AD45: 02        .byte $02   ; size Y
- D 1 - I - 0x016D56 05:AD46: B4        .byte $B4, $B5   ; 01 
- D 1 - I - 0x016D58 05:AD48: AC        .byte $AC, $AD   ; 02 



_off026_0x016D5A_4C:
- D 1 - I - 0x016D5A 05:AD4A: 04        .byte $04   ; size X
- D 1 - I - 0x016D5B 05:AD4B: 03        .byte $03   ; size Y
- D 1 - I - 0x016D5C 05:AD4C: 4C        .byte $4C, $4D, $4E, $00   ; 01 
- D 1 - I - 0x016D60 05:AD50: 50        .byte $50, $51, $52, $00   ; 02 
- D 1 - I - 0x016D64 05:AD54: 00        .byte $00, $00, $00, $00   ; 03 



_off026_0x016D68_50:
- D 1 - I - 0x016D68 05:AD58: 02        .byte $02   ; size X
- D 1 - I - 0x016D69 05:AD59: 03        .byte $03   ; size Y
- D 1 - I - 0x016D6A 05:AD5A: B4        .byte $B4, $B5   ; 01 
- D 1 - I - 0x016D6C 05:AD5C: A8        .byte $A8, $A9   ; 02 
- D 1 - I - 0x016D6E 05:AD5E: 00        .byte $00, $00   ; 03 



_off026_0x016D70_54:
- D 1 - I - 0x016D70 05:AD60: 02        .byte $02   ; size X
- D 1 - I - 0x016D71 05:AD61: 03        .byte $03   ; size Y
- D 1 - I - 0x016D72 05:AD62: B2        .byte $B2, $B3   ; 01 
- D 1 - I - 0x016D74 05:AD64: B8        .byte $B8, $B9   ; 02 
- D 1 - I - 0x016D76 05:AD66: 00        .byte $00, $00   ; 03 



_off026_0x016D78_58:
- D 1 - I - 0x016D78 05:AD68: 04        .byte $04   ; size X
- D 1 - I - 0x016D79 05:AD69: 04        .byte $04   ; size Y
- D 1 - I - 0x016D7A 05:AD6A: AA        .byte $AA, $AB, $B6, $B7   ; 01 
- D 1 - I - 0x016D7E 05:AD6E: AE        .byte $AE, $AF, $AF, $BA   ; 02 
- D 1 - I - 0x016D82 05:AD72: 00        .byte $00, $B0, $BB, $00   ; 03 
- D 1 - I - 0x016D86 05:AD76: 00        .byte $00, $B1, $BC, $00   ; 04 



_off012_0x016D8A_0A_cutscene_crime:
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
- D 1 - I - 0x016D8A 05:AD7A: 00 20     .word $2000 ; 

- D 1 - I - 0x016D8C 05:AD7C: 18        .byte $18   ; 
- D 1 - I - 0x016D8D 05:AD7D: 80        .byte $80   ; 

- D 1 - I - 0x016D8E 05:AD7E: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D8F 05:AD7F: 8C        .byte $8C   ; 

- D 1 - I - 0x016D90 05:AD80: 07        .byte $07   ; 
- D 1 - I - 0x016D91 05:AD81: 00        .byte $00   ; 

- D 1 - I - 0x016D92 05:AD82: 0E        .byte $0E   ; 
- D 1 - I - 0x016D93 05:AD83: 80        .byte $80   ; 

- D 1 - I - 0x016D94 05:AD84: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D95 05:AD85: 81        .byte $81   ; 

- D 1 - I - 0x016D96 05:AD86: 05        .byte $05   ; 
- D 1 - I - 0x016D97 05:AD87: 80        .byte $80   ; 

- D 1 - I - 0x016D98 05:AD88: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D99 05:AD89: 81        .byte $81   ; 

- D 1 - I - 0x016D9A 05:AD8A: 03        .byte $03   ; 
- D 1 - I - 0x016D9B 05:AD8B: 80        .byte $80   ; 

- D 1 - I - 0x016D9C 05:AD8C: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016D9D 05:AD8D: 84        .byte $84   ; 

- D 1 - I - 0x016D9E 05:AD8E: 07        .byte $07   ; 
- D 1 - I - 0x016D9F 05:AD8F: 00        .byte $00   ; 

- D 1 - I - 0x016DA0 05:AD90: 0A        .byte $0A   ; 
- D 1 - I - 0x016DA1 05:AD91: 80        .byte $80   ; 

- D 1 - I - 0x016DA2 05:AD92: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016DA3 05:AD93: 82        .byte $82, $83, $80, $84, $00, $86   ; 

- D 1 - I - 0x016DA9 05:AD99: 03        .byte $03   ; 
- D 1 - I - 0x016DAA 05:AD9A: 80        .byte $80   ; 

- D 1 - I - 0x016DAB 05:AD9B: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016DAC 05:AD9C: AE        .byte $AE, $00, $AF, $80, $80, $AE   ; 

- D 1 - I - 0x016DB2 05:ADA2: 07        .byte $07   ; 
- D 1 - I - 0x016DB3 05:ADA3: 00        .byte $00   ; 

- D 1 - I - 0x016DB4 05:ADA4: 07        .byte $07   ; 
- D 1 - I - 0x016DB5 05:ADA5: 80        .byte $80   ; 

- D 1 - I - 0x016DB6 05:ADA6: 91        .byte $80 + $11   ; 
- D 1 - I - 0x016DB7 05:ADA7: 87        .byte $87, $88, $89, $80, $84, $8A, $8B, $00, $00, $AF, $80, $B0, $00, $00, $B1, $80   ; 
- D 1 - I - 0x016DC7 05:ADB7: 84        .byte $84   ; 

- D 1 - I - 0x016DC8 05:ADB8: 08        .byte $08   ; 
- D 1 - I - 0x016DC9 05:ADB9: 00        .byte $00   ; 

- D 1 - I - 0x016DCA 05:ADBA: 08        .byte $08   ; 
- D 1 - I - 0x016DCB 05:ADBB: 80        .byte $80   ; 

- D 1 - I - 0x016DCC 05:ADBC: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016DCD 05:ADBD: 8C        .byte $8C, $8D, $8E, $8B   ; 

- D 1 - I - 0x016DD1 05:ADC1: 05        .byte $05   ; 
- D 1 - I - 0x016DD2 05:ADC2: 00        .byte $00   ; 

- D 1 - I - 0x016DD3 05:ADC3: 87        .byte $80 + $07   ; 
- D 1 - I - 0x016DD4 05:ADC4: 8A        .byte $8A, $AE, $00, $00, $8D, $8E, $AE   ; 

- D 1 - I - 0x016DDB 05:ADCB: 08        .byte $08   ; 
- D 1 - I - 0x016DDC 05:ADCC: 00        .byte $00   ; 

- D 1 - I - 0x016DDD 05:ADCD: 02        .byte $02   ; 
- D 1 - I - 0x016DDE 05:ADCE: 80        .byte $80   ; 

- D 1 - I - 0x016DDF 05:ADCF: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016DE0 05:ADD0: 83        .byte $83   ; 

- D 1 - I - 0x016DE1 05:ADD1: 05        .byte $05   ; 
- D 1 - I - 0x016DE2 05:ADD2: 80        .byte $80   ; 

- D 1 - I - 0x016DE3 05:ADD3: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016DE4 05:ADD4: 84        .byte $84   ; 

- D 1 - I - 0x016DE5 05:ADD5: 17        .byte $17   ; 
- D 1 - I - 0x016DE6 05:ADD6: 00        .byte $00   ; 

- D 1 - I - 0x016DE7 05:ADD7: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016DE8 05:ADD8: 80        .byte $80, $8B, $8F, $90   ; 

- D 1 - I - 0x016DEC 05:ADDC: 04        .byte $04   ; 
- D 1 - I - 0x016DED 05:ADDD: 80        .byte $80   ; 

- D 1 - I - 0x016DEE 05:ADDE: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016DEF 05:ADDF: 84        .byte $84   ; 

- D 1 - I - 0x016DF0 05:ADE0: 06        .byte $06   ; 
- D 1 - I - 0x016DF1 05:ADE1: 00        .byte $00   ; 

- D 1 - I - 0x016DF2 05:ADE2: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016DF3 05:ADE3: 91        .byte $91, $B2, $B3, $B4, $B5   ; 

- D 1 - I - 0x016DF8 05:ADE8: 0C        .byte $0C   ; 
- D 1 - I - 0x016DF9 05:ADE9: 00        .byte $00   ; 

- D 1 - I - 0x016DFA 05:ADEA: 83        .byte $80 + $03   ; 
- D 1 - I - 0x016DFB 05:ADEB: 80        .byte $80, $8C, $86   ; 

- D 1 - I - 0x016DFE 05:ADEE: 05        .byte $05   ; 
- D 1 - I - 0x016DFF 05:ADEF: 80        .byte $80   ; 

- D 1 - I - 0x016E00 05:ADF0: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016E01 05:ADF1: 92        .byte $92   ; 

- D 1 - I - 0x016E02 05:ADF2: 06        .byte $06   ; 
- D 1 - I - 0x016E03 05:ADF3: 00        .byte $00   ; 

- D 1 - I - 0x016E04 05:ADF4: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016E05 05:ADF5: 93        .byte $93, $B6, $B7, $B8, $B9   ; 

- D 1 - I - 0x016E0A 05:ADFA: 0C        .byte $0C   ; 
- D 1 - I - 0x016E0B 05:ADFB: 00        .byte $00   ; 

- D 1 - I - 0x016E0C 05:ADFC: 02        .byte $02   ; 
- D 1 - I - 0x016E0D 05:ADFD: 80        .byte $80   ; 

- D 1 - I - 0x016E0E 05:ADFE: 88        .byte $80 + $08   ; 
- D 1 - I - 0x016E0F 05:ADFF: 87        .byte $87, $83, $80, $82, $94, $89, $80, $84   ; 

- D 1 - I - 0x016E17 05:AE07: 04        .byte $04   ; 
- D 1 - I - 0x016E18 05:AE08: 00        .byte $00   ; 

- D 1 - I - 0x016E19 05:AE09: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016E1A 05:AE0A: 96        .byte $96, $97, $BA, $BB, $BC   ; 

- D 1 - I - 0x016E1F 05:AE0F: 0D        .byte $0D   ; 
- D 1 - I - 0x016E20 05:AE10: 00        .byte $00   ; 

- D 1 - I - 0x016E21 05:AE11: 03        .byte $03   ; 
- D 1 - I - 0x016E22 05:AE12: 80        .byte $80   ; 

- D 1 - I - 0x016E23 05:AE13: 87        .byte $80 + $07   ; 
- D 1 - I - 0x016E24 05:AE14: 8C        .byte $8C, $98, $80, $9A, $9B, $8E, $8B   ; 

- D 1 - I - 0x016E2B 05:AE1B: 04        .byte $04   ; 
- D 1 - I - 0x016E2C 05:AE1C: 00        .byte $00   ; 

- D 1 - I - 0x016E2D 05:AE1D: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016E2E 05:AE1E: 9C        .byte $9C, $9D, $BD, $BE, $BF, $C0   ; 

- D 1 - I - 0x016E34 05:AE24: 03        .byte $03   ; 
- D 1 - I - 0x016E35 05:AE25: 00        .byte $00   ; 

- D 1 - I - 0x016E36 05:AE26: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016E37 05:AE27: C1        .byte $C1, $C2   ; 

- D 1 - I - 0x016E39 05:AE29: 07        .byte $07   ; 
- D 1 - I - 0x016E3A 05:AE2A: 00        .byte $00   ; 

- D 1 - I - 0x016E3B 05:AE2B: 03        .byte $03   ; 
- D 1 - I - 0x016E3C 05:AE2C: 80        .byte $80   ; 

- D 1 - I - 0x016E3D 05:AE2D: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016E3E 05:AE2E: 84        .byte $84, $00, $9E, $9F, $A0, $A1   ; 

- D 1 - I - 0x016E44 05:AE34: 04        .byte $04   ; 
- D 1 - I - 0x016E45 05:AE35: 00        .byte $00   ; 

- D 1 - I - 0x016E46 05:AE36: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x016E47 05:AE37: A2        .byte $A2, $A3, $00, $C3, $C4, $C5, $C6, $C7, $00, $C8, $C9, $CA, $CB, $CC   ; 

- D 1 - I - 0x016E55 05:AE45: 05        .byte $05   ; 
- D 1 - I - 0x016E56 05:AE46: 00        .byte $00   ; 

- D 1 - I - 0x016E57 05:AE47: 03        .byte $03   ; 
- D 1 - I - 0x016E58 05:AE48: 80        .byte $80   ; 

- D 1 - I - 0x016E59 05:AE49: 86        .byte $80 + $06   ; 
- D 1 - I - 0x016E5A 05:AE4A: 92        .byte $92, $00, $00, $A4, $A5, $A6   ; 

- D 1 - I - 0x016E60 05:AE50: 04        .byte $04   ; 
- D 1 - I - 0x016E61 05:AE51: 00        .byte $00   ; 

- D 1 - I - 0x016E62 05:AE52: 8E        .byte $80 + $0E   ; 
- D 1 - I - 0x016E63 05:AE53: A7        .byte $A7, $A8, $A9, $CD, $CE, $00, $CF, $D0, $00, $D1, $D2, $D3, $D4, $D5   ; 

- D 1 - I - 0x016E71 05:AE61: 05        .byte $05   ; 
- D 1 - I - 0x016E72 05:AE62: 00        .byte $00   ; 

- D 1 - I - 0x016E73 05:AE63: 04        .byte $04   ; 
- D 1 - I - 0x016E74 05:AE64: 80        .byte $80   ; 

- D 1 - I - 0x016E75 05:AE65: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016E76 05:AE66: 84        .byte $84   ; 

- D 1 - I - 0x016E77 05:AE67: 09        .byte $09   ; 
- D 1 - I - 0x016E78 05:AE68: 00        .byte $00   ; 

- D 1 - I - 0x016E79 05:AE69: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x016E7A 05:AE6A: AA        .byte $AA, $AB, $D6, $D7, $CF, $D8, $00, $D9, $DA, $DB, $DC, $DD   ; 

- D 1 - I - 0x016E86 05:AE76: 06        .byte $06   ; 
- D 1 - I - 0x016E87 05:AE77: 00        .byte $00   ; 

- D 1 - I - 0x016E88 05:AE78: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016E89 05:AE79: 82        .byte $82, $88, $AC, $8E, $8B   ; 

- D 1 - I - 0x016E8E 05:AE7E: 0B        .byte $0B   ; 
- D 1 - I - 0x016E8F 05:AE7F: 00        .byte $00   ; 

- D 1 - I - 0x016E90 05:AE80: 89        .byte $80 + $09   ; 
- D 1 - I - 0x016E91 05:AE81: DE        .byte $DE, $DF, $E0, $00, $00, $E1, $E2, $E3, $E4   ; 

- D 1 - I - 0x016E9A 05:AE8A: 07        .byte $07   ; 
- D 1 - I - 0x016E9B 05:AE8B: 00        .byte $00   ; 

- D 1 - I - 0x016E9C 05:AE8C: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016E9D 05:AE8D: 80        .byte $80, $8C   ; 

- D 1 - I - 0x016E9F 05:AE8F: 0E        .byte $0E   ; 
- D 1 - I - 0x016EA0 05:AE90: 00        .byte $00   ; 

- D 1 - I - 0x016EA1 05:AE91: 83        .byte $80 + $03   ; 
- D 1 - I - 0x016EA2 05:AE92: E5        .byte $E5, $E6, $D8   ; 

- D 1 - I - 0x016EA5 05:AE95: 03        .byte $03   ; 
- D 1 - I - 0x016EA6 05:AE96: 00        .byte $00   ; 

- D 1 - I - 0x016EA7 05:AE97: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016EA8 05:AE98: E7        .byte $E7, $E8, $E9, $EA   ; 

- D 1 - I - 0x016EAC 05:AE9C: 06        .byte $06   ; 
- D 1 - I - 0x016EAD 05:AE9D: 00        .byte $00   ; 

- D 1 - I - 0x016EAE 05:AE9E: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EAF 05:AE9F: 80        .byte $80, $AD   ; 

- D 1 - I - 0x016EB1 05:AEA1: 0E        .byte $0E   ; 
- D 1 - I - 0x016EB2 05:AEA2: 00        .byte $00   ; 

- D 1 - I - 0x016EB3 05:AEA3: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EB4 05:AEA4: EB        .byte $EB, $EC   ; 

- D 1 - I - 0x016EB6 05:AEA6: 04        .byte $04   ; 
- D 1 - I - 0x016EB7 05:AEA7: 00        .byte $00   ; 

- D 1 - I - 0x016EB8 05:AEA8: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016EB9 05:AEA9: ED        .byte $ED, $EE, $EF, $F0   ; 

- D 1 - I - 0x016EBD 05:AEAD: 06        .byte $06   ; 
- D 1 - I - 0x016EBE 05:AEAE: 00        .byte $00   ; 

- D 1 - I - 0x016EBF 05:AEAF: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EC0 05:AEB0: 80        .byte $80, $92   ; 

- D 1 - I - 0x016EC2 05:AEB2: 14        .byte $14   ; 
- D 1 - I - 0x016EC3 05:AEB3: 00        .byte $00   ; 

- D 1 - I - 0x016EC4 05:AEB4: 84        .byte $80 + $04   ; 
- D 1 - I - 0x016EC5 05:AEB5: F1        .byte $F1, $F2, $F3, $F4   ; 

- D 1 - I - 0x016EC9 05:AEB9: 06        .byte $06   ; 
- D 1 - I - 0x016ECA 05:AEBA: 00        .byte $00   ; 

- D 1 - I - 0x016ECB 05:AEBB: 02        .byte $02   ; 
- D 1 - I - 0x016ECC 05:AEBC: 80        .byte $80   ; 

- D 1 - I - 0x016ECD 05:AEBD: 81        .byte $80 + $01   ; 
- D 1 - I - 0x016ECE 05:AEBE: 84        .byte $84   ; 

- D 1 - I - 0x016ECF 05:AEBF: 12        .byte $12   ; 
- D 1 - I - 0x016ED0 05:AEC0: 00        .byte $00   ; 

- D 1 - I - 0x016ED1 05:AEC1: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016ED2 05:AEC2: F5        .byte $F5, $F6, $00, $F7, $F8   ; 

- D 1 - I - 0x016ED7 05:AEC7: 06        .byte $06   ; 
- D 1 - I - 0x016ED8 05:AEC8: 00        .byte $00   ; 

- D 1 - I - 0x016ED9 05:AEC9: 83        .byte $80 + $03   ; 
- D 1 - I - 0x016EDA 05:AECA: AC        .byte $AC, $8E, $8B   ; 

- D 1 - I - 0x016EDD 05:AECD: 12        .byte $12   ; 
- D 1 - I - 0x016EDE 05:AECE: 00        .byte $00   ; 

- D 1 - I - 0x016EDF 05:AECF: 85        .byte $80 + $05   ; 
- D 1 - I - 0x016EE0 05:AED0: F9        .byte $F9, $FA, $00, $FB, $FC   ; 

- D 1 - I - 0x016EE5 05:AED5: 1B        .byte $1B   ; 
- D 1 - I - 0x016EE6 05:AED6: 00        .byte $00   ; 

- D 1 - I - 0x016EE7 05:AED7: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016EE8 05:AED8: FD        .byte $FD, $FE   ; 

- D 1 - I - 0x016EEA 05:AEDA: 7E        .byte $7E   ; 
- D 1 - I - 0x016EEB 05:AEDB: 00        .byte $00   ; 

- D 1 - I - 0x016EEC 05:AEDC: 7E        .byte $7E   ; 
- D 1 - I - 0x016EED 05:AEDD: 00        .byte $00   ; 

- D 1 - I - 0x016EEE 05:AEDE: 4D        .byte $4D   ; 
- D 1 - I - 0x016EEF 05:AEDF: 00        .byte $00   ; 

- D 1 - I - 0x016EF0 05:AEE0: 06        .byte $06   ; 
- D 1 - I - 0x016EF1 05:AEE1: FF        .byte $FF   ; 

- D 1 - I - 0x016EF2 05:AEE2: 9B        .byte $80 + $1B   ; 
- D 1 - I - 0x016EF3 05:AEE3: 33        .byte $33, $00, $FF, $FF, $3F, $00, $0F, $0F, $00, $00, $FF, $FF, $33, $00, $54, $88   ; 
- D 1 - I - 0x016F03 05:AEF3: A2        .byte $A2, $00, $3F, $03, $00, $00, $01, $8A, $22, $00, $FF   ; 

- D 1 - I - 0x016F0E 05:AEFE: 04        .byte $04   ; 
- D 1 - I - 0x016F0F 05:AEFF: 00        .byte $00   ; 

- D 1 - I - 0x016F10 05:AF00: 82        .byte $80 + $02   ; 
- D 1 - I - 0x016F11 05:AF01: AA        .byte $AA, $22   ; 

- D 1 - I - 0x016F13 05:AF03: 19        .byte $19   ; 
- D 1 - I - 0x016F14 05:AF04: 00        .byte $00   ; 

- D 1 - I - 0x016F15 05:AF05: FF        .byte $FF   ; end token



ofs_006_0x016F16_0D:
C - - J - - 0x016F16 05:AF06: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x016F19 05:AF09: 29 3F     AND #$3F
C - - - - - 0x016F1B 05:AF0B: C9 3F     CMP #$3F
C - - - - - 0x016F1D 05:AF0D: F0 4D     BEQ bra_AF5C
C - - - - - 0x016F1F 05:AF0F: DE B4 07  DEC ram_07B4_unk,X
C - - - - - 0x016F22 05:AF12: D0 0E     BNE bra_AF22
; set invincibility timer after death (stage 2, 4)
C - - - - - 0x016F24 05:AF14: A9 7F     LDA #$7F
C - - - - - 0x016F26 05:AF16: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x016F29 05:AF19: A9 00     LDA #$00
C - - - - - 0x016F2B 05:AF1B: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x016F2E 05:AF1E: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x016F31 05:AF21: 60        RTS
bra_AF22:
C - - - - - 0x016F32 05:AF22: A5 75     LDA ram_stage
C - - - - - 0x016F34 05:AF24: C9 01     CMP #$01
C - - - - - 0x016F36 05:AF26: D0 0C     BNE bra_AF34
C - - - - - 0x016F38 05:AF28: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x016F3B 05:AF2B: C9 18     CMP #$18
C - - - - - 0x016F3D 05:AF2D: D0 05     BNE bra_AF34
C - - - - - 0x016F3F 05:AF2F: A9 59     LDA #con_music_59
C - - - - - 0x016F41 05:AF31: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_AF34:
C - - - - - 0x016F44 05:AF34: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x016F47 05:AF37: 29 70     AND #$70
C - - - - - 0x016F49 05:AF39: 18        CLC
C - - - - - 0x016F4A 05:AF3A: 69 10     ADC #$10
C - - - - - 0x016F4C 05:AF3C: 4A        LSR
C - - - - - 0x016F4D 05:AF3D: 4A        LSR
C - - - - - 0x016F4E 05:AF3E: A8        TAY
C - - - - - 0x016F4F 05:AF3F: 4A        LSR
C - - - - - 0x016F50 05:AF40: 4A        LSR
C - - - - - 0x016F51 05:AF41: 85 1C     STA ram_001C
C - - - - - 0x016F53 05:AF43: B9 E9 B0  LDA tbl_B0E9,Y
C - - - - - 0x016F56 05:AF46: 85 18     STA ram_0018
C - - - - - 0x016F58 05:AF48: B9 EA B0  LDA tbl_B0EA,Y
C - - - - - 0x016F5B 05:AF4B: 85 19     STA ram_0019
C - - - - - 0x016F5D 05:AF4D: B9 EB B0  LDA tbl_B0EB,Y
C - - - - - 0x016F60 05:AF50: 85 1A     STA ram_001A
C - - - - - 0x016F62 05:AF52: B9 EC B0  LDA tbl_B0EC,Y
C - - - - - 0x016F65 05:AF55: 85 1B     STA ram_001B
C - - - - - 0x016F67 05:AF57: A9 09     LDA #con_F3D6_09
C - - - - - 0x016F69 05:AF59: 4C B3 F3  JMP loc_0x01F3C3
bra_AF5C:
C - - - - - 0x016F6C 05:AF5C: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x016F6F 05:AF5F: 29 01     AND #$01
C - - - - - 0x016F71 05:AF61: D0 07     BNE bra_AF6A
C - - - - - 0x016F73 05:AF63: 20 89 B0  JSR sub_B089
C - - - - - 0x016F76 05:AF66: C9 FF     CMP #$FF
C - - - - - 0x016F78 05:AF68: D0 03     BNE bra_AF6D
bra_AF6A:
- - - - - - 0x016F7A 05:AF6A: 4C 9E B0  JMP loc_B09E
bra_AF6D:
C - - - - - 0x016F7D 05:AF6D: 05 00     ORA ram_0000
C - - - - - 0x016F7F 05:AF6F: 85 01     STA ram_0001
C - - - - - 0x016F81 05:AF71: A9 80     LDA #$80
C - - - - - 0x016F83 05:AF73: 85 00     STA ram_0000
C - - - - - 0x016F85 05:AF75: A9 07     LDA #$07
C - - - - - 0x016F87 05:AF77: 85 0F     STA ram_000F
C - - - - - 0x016F89 05:AF79: A9 00     LDA #con_F3D6_00
C - - - - - 0x016F8B 05:AF7B: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x016F8E 05:AF7E: A5 13     LDA ram_0013
C - - - - - 0x016F90 05:AF80: 29 0C     AND #$0C
C - - - - - 0x016F92 05:AF82: 85 13     STA ram_0013
C - - - - - 0x016F94 05:AF84: 85 0A     STA ram_000A
C - - - - - 0x016F96 05:AF86: A5 02     LDA ram_0002
C - - - - - 0x016F98 05:AF88: 85 09     STA ram_0009
C - - - - - 0x016F9A 05:AF8A: 4C 92 AF  JMP loc_AF92



loc_AF8D:
C D 1 - - - 0x016F9D 05:AF8D: A9 0F     LDA #con_F3D6_0F
C - - - - - 0x016F9F 05:AF8F: 20 B3 F3  JSR sub_0x01F3C3
loc_AF92:
C D 1 - - - 0x016FA2 05:AF92: A4 01     LDY ram_0001
C - - - - - 0x016FA4 05:AF94: A5 75     LDA ram_stage
C - - - - - 0x016FA6 05:AF96: 29 01     AND #$01
C - - - - - 0x016FA8 05:AF98: F0 0B     BEQ bra_AFA5
C - - - - - 0x016FAA 05:AF9A: B9 5E B0  LDA tbl_B05E,Y
C - - - - - 0x016FAD 05:AF9D: F0 49     BEQ bra_AFE8
C - - - - - 0x016FAF 05:AF9F: A9 00     LDA #$00
C - - - - - 0x016FB1 05:AFA1: 85 12     STA ram_0012
C - - - - - 0x016FB3 05:AFA3: F0 34     BEQ bra_AFD9    ; jmp
bra_AFA5:
C - - - - - 0x016FB5 05:AFA5: B9 54 B0  LDA tbl_B054,Y
C - - - - - 0x016FB8 05:AFA8: D0 3E     BNE bra_AFE8
C - - - - - 0x016FBA 05:AFAA: A5 12     LDA ram_0012
C - - - - - 0x016FBC 05:AFAC: 85 08     STA ram_0008
C - - - - - 0x016FBE 05:AFAE: A9 00     LDA #$00
C - - - - - 0x016FC0 05:AFB0: 85 12     STA ram_0012
bra_AFB2_loop:
C - - - - - 0x016FC2 05:AFB2: 20 3F B0  JSR sub_B03F
C - - - - - 0x016FC5 05:AFB5: D0 31     BNE bra_AFE8
C - - - - - 0x016FC7 05:AFB7: E6 12     INC ram_0012
C - - - - - 0x016FC9 05:AFB9: A5 12     LDA ram_0012
C - - - - - 0x016FCB 05:AFBB: C9 04     CMP #$04
C - - - - - 0x016FCD 05:AFBD: D0 F3     BNE bra_AFB2_loop
C - - - - - 0x016FCF 05:AFBF: A9 00     LDA #$00
C - - - - - 0x016FD1 05:AFC1: 85 12     STA ram_0012
C - - - - - 0x016FD3 05:AFC3: A5 13     LDA ram_0013
C - - - - - 0x016FD5 05:AFC5: 18        CLC
C - - - - - 0x016FD6 05:AFC6: 69 04     ADC #$04
C - - - - - 0x016FD8 05:AFC8: C9 10     CMP #$10
C - - - - - 0x016FDA 05:AFCA: 90 09     BCC bra_AFD5
C - - - - - 0x016FDC 05:AFCC: A5 02     LDA ram_0002
C - - - - - 0x016FDE 05:AFCE: 18        CLC
C - - - - - 0x016FDF 05:AFCF: 69 10     ADC #$10
C - - - - - 0x016FE1 05:AFD1: 85 02     STA ram_0002
C - - - - - 0x016FE3 05:AFD3: A9 00     LDA #$00
bra_AFD5:
C - - - - - 0x016FE5 05:AFD5: 29 0C     AND #$0C
C - - - - - 0x016FE7 05:AFD7: 85 13     STA ram_0013
bra_AFD9:
bra_AFD9_loop:
C - - - - - 0x016FE9 05:AFD9: 20 3F B0  JSR sub_B03F
C - - - - - 0x016FEC 05:AFDC: F0 0A     BEQ bra_AFE8
C - - - - - 0x016FEE 05:AFDE: E6 12     INC ram_0012
C - - - - - 0x016FF0 05:AFE0: A5 12     LDA ram_0012
C - - - - - 0x016FF2 05:AFE2: C9 04     CMP #$04
C - - - - - 0x016FF4 05:AFE4: D0 F3     BNE bra_AFD9_loop
C - - - - - 0x016FF6 05:AFE6: F0 1F     BEQ bra_B007    ; jmp
bra_AFE8:
C - - - - - 0x016FF8 05:AFE8: C6 0F     DEC ram_000F
C - - - - - 0x016FFA 05:AFEA: F0 4F     BEQ bra_B03B
C - - - - - 0x016FFC 05:AFEC: A4 0F     LDY ram_000F
C - - - - - 0x016FFE 05:AFEE: A5 09     LDA ram_0009
C - - - - - 0x017000 05:AFF0: 18        CLC
C - - - - - 0x017001 05:AFF1: 79 7C B0  ADC tbl_B07C,Y
C - - - - - 0x017004 05:AFF4: 29 0F     AND #$0F
C - - - - - 0x017006 05:AFF6: 85 02     STA ram_0002
C - - - - - 0x017008 05:AFF8: A5 09     LDA ram_0009
C - - - - - 0x01700A 05:AFFA: 29 F0     AND #$F0
C - - - - - 0x01700C 05:AFFC: 05 02     ORA ram_0002
C - - - - - 0x01700E 05:AFFE: 85 02     STA ram_0002
C - - - - - 0x017010 05:B000: A5 0A     LDA ram_000A
C - - - - - 0x017012 05:B002: 85 13     STA ram_0013
C - - - - - 0x017014 05:B004: 4C 8D AF  JMP loc_AF8D
bra_B007:
C - - - - - 0x017017 05:B007: A4 0F     LDY ram_000F
C - - - - - 0x017019 05:B009: A5 12     LDA ram_0012
C - - - - - 0x01701B 05:B00B: 29 03     AND #$03
C - - - - - 0x01701D 05:B00D: 0A        ASL
C - - - - - 0x01701E 05:B00E: 0A        ASL
C - - - - - 0x01701F 05:B00F: 0A        ASL
C - - - - - 0x017020 05:B010: 18        CLC
C - - - - - 0x017021 05:B011: 79 74 B0  ADC tbl_B074,Y
C - - - - - 0x017024 05:B014: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x017027 05:B017: 20 89 B0  JSR sub_B089
C - - - - - 0x01702A 05:B01A: 05 00     ORA ram_0000
C - - - - - 0x01702C 05:B01C: 85 00     STA ram_0000
C - - - - - 0x01702E 05:B01E: A4 75     LDY ram_stage
C - - - - - 0x017030 05:B020: 18        CLC
C - - - - - 0x017031 05:B021: B9 84 B0  LDA tbl_B084,Y
C - - - - - 0x017034 05:B024: 65 00     ADC ram_0000
C - - - - - 0x017036 05:B026: 9D 68 06  STA ram_obj_pos_Y,X
loc_B029:
C - - - - - 0x017039 05:B029: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x01703C 05:B02C: 29 CF     AND #$CF
C - - - - - 0x01703E 05:B02E: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x017041 05:B031: A9 00     LDA #$00
C - - - - - 0x017043 05:B033: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x017046 05:B036: A9 20     LDA #con_F3D6_20
C - - - - - 0x017048 05:B038: 4C B3 F3  JMP loc_0x01F3C3
bra_B03B:
C - - - - - 0x01704B 05:B03B: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x01704E 05:B03E: 60        RTS



sub_B03F:
C - - - - - 0x01704F 05:B03F: A9 0F     LDA #con_F3D6_0F
C - - - - - 0x017051 05:B041: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x017054 05:B044: A4 01     LDY ram_0001
C - - - - - 0x017056 05:B046: A5 75     LDA ram_stage
C - - - - - 0x017058 05:B048: 29 01     AND #$01
C - - - - - 0x01705A 05:B04A: F0 04     BEQ bra_B050
C - - - - - 0x01705C 05:B04C: B9 5E B0  LDA tbl_B05E,Y
C - - - - - 0x01705F 05:B04F: 60        RTS
bra_B050:
C - - - - - 0x017060 05:B050: B9 54 B0  LDA tbl_B054,Y
C - - - - - 0x017063 05:B053: 60        RTS



tbl_B054:
- D 1 - - - 0x017064 05:B054: 00        .byte $00   ; 00 
- D 1 - - - 0x017065 05:B055: 01        .byte $01   ; 01 
- - - - - - 0x017066 05:B056: 01        .byte $01   ; 02 
- - - - - - 0x017067 05:B057: 01        .byte $01   ; 03 
- - - - - - 0x017068 05:B058: 02        .byte $02   ; 04 
- - - - - - 0x017069 05:B059: 01        .byte $01   ; 05 
- - - - - - 0x01706A 05:B05A: 01        .byte $01   ; 06 
- - - - - - 0x01706B 05:B05B: 01        .byte $01   ; 07 
- - - - - - 0x01706C 05:B05C: 01        .byte $01   ; 08 
- - - - - - 0x01706D 05:B05D: 01        .byte $01   ; 09 



tbl_B05E:
- - - - - - 0x01706E 05:B05E: 00        .byte $00   ; 00 
- - - - - - 0x01706F 05:B05F: 00        .byte $00   ; 01 
- - - - - - 0x017070 05:B060: 01        .byte $01   ; 02 
- - - - - - 0x017071 05:B061: 01        .byte $01   ; 03 
- - - - - - 0x017072 05:B062: 01        .byte $01   ; 04 
- - - - - - 0x017073 05:B063: 01        .byte $01   ; 05 
- D 1 - - - 0x017074 05:B064: 01        .byte $01   ; 06 
- - - - - - 0x017075 05:B065: 01        .byte $01   ; 07 
- - - - - - 0x017076 05:B066: 01        .byte $01   ; 08 
- - - - - - 0x017077 05:B067: 00        .byte $00   ; 09 



tbl_B068:
- D 1 - - - 0x017078 05:B068: 80        .byte $80   ; 00 
- D 1 - - - 0x017079 05:B069: 70        .byte $70   ; 01 
- D 1 - - - 0x01707A 05:B06A: 90        .byte $90   ; 02 
- D 1 - - - 0x01707B 05:B06B: 60        .byte $60   ; 03 
- D 1 - - - 0x01707C 05:B06C: A0        .byte $A0   ; 04 
- D 1 - - - 0x01707D 05:B06D: 50        .byte $50   ; 05 
- D 1 - - - 0x01707E 05:B06E: B0        .byte $B0   ; 06 
- D 1 - - - 0x01707F 05:B06F: 40        .byte $40   ; 07 
- - - - - - 0x017080 05:B070: 30        .byte $30   ; 08 
- - - - - - 0x017081 05:B071: 20        .byte $20   ; 09 
- - - - - - 0x017082 05:B072: 10        .byte $10   ; 0A 
- - - - - - 0x017083 05:B073: FF        .byte $FF   ; 0B 



tbl_B074:
- - - - - - 0x017084 05:B074: 00        .byte $00   ; 00 
- D 1 - - - 0x017085 05:B075: 20        .byte $20   ; 01 
- - - - - - 0x017086 05:B076: E0        .byte $E0   ; 02 
- - - - - - 0x017087 05:B077: 40        .byte $40   ; 03 
- - - - - - 0x017088 05:B078: C0        .byte $C0   ; 04 
- - - - - - 0x017089 05:B079: 60        .byte $60   ; 05 
- D 1 - - - 0x01708A 05:B07A: A0        .byte $A0   ; 06 
- D 1 - - - 0x01708B 05:B07B: 80        .byte $80   ; 07 



tbl_B07C:
- - - - - - 0x01708C 05:B07C: FC        .byte $FC   ; 00 
- D 1 - - - 0x01708D 05:B07D: FD        .byte $FD   ; 01 
- D 1 - - - 0x01708E 05:B07E: 03        .byte $03   ; 02 
- D 1 - - - 0x01708F 05:B07F: FE        .byte $FE   ; 03 
- D 1 - - - 0x017090 05:B080: 02        .byte $02   ; 04 
- D 1 - - - 0x017091 05:B081: FF        .byte $FF   ; 05 
- D 1 - - - 0x017092 05:B082: 01        .byte $01   ; 06 
- - - - - - 0x017093 05:B083: 00        .byte $00   ; 07 



tbl_B084:
- D 1 - - - 0x017094 05:B084: 00        .byte $00   ; 00 
- D 1 - - - 0x017095 05:B085: FC        .byte $FC   ; 01 
- - - - - - 0x017096 05:B086: 00        .byte $00   ; 02 
- D 1 - - - 0x017097 05:B087: F7        .byte $F7   ; 03 
- D 1 - - - 0x017098 05:B088: FC        .byte $FC   ; 04 



sub_B089:
C - - - - - 0x017099 05:B089: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x01709C 05:B08C: 29 80     AND #$80
C - - - - - 0x01709E 05:B08E: F0 02     BEQ bra_B092
- - - - - - 0x0170A0 05:B090: A9 08     LDA #$08
bra_B092:
C - - - - - 0x0170A2 05:B092: 85 00     STA ram_0000
C - - - - - 0x0170A4 05:B094: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x0170A7 05:B097: 29 7F     AND #$7F
C - - - - - 0x0170A9 05:B099: A8        TAY
C - - - - - 0x0170AA 05:B09A: B9 68 B0  LDA tbl_B068,Y
C - - - - - 0x0170AD 05:B09D: 60        RTS



loc_B09E:
- - - - - - 0x0170AE 05:B09E: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x0170B1 05:B0A1: 30 06     BMI bra_B0A9
- - - - - - 0x0170B3 05:B0A3: A9 80     LDA #$80
- - - - - - 0x0170B5 05:B0A5: 9D AA 07  STA ram_07AA_unk,X
- - - - - - 0x0170B8 05:B0A8: 60        RTS
bra_B0A9:
- - - - - - 0x0170B9 05:B0A9: A0 02     LDY #$02
- - - - - - 0x0170BB 05:B0AB: A9 08     LDA #$08
- - - - - - 0x0170BD 05:B0AD: 85 00     STA ram_0000
bra_B0AF_loop:
- - - - - - 0x0170BF 05:B0AF: B9 82 07  LDA ram_0782_unk,Y
- - - - - - 0x0170C2 05:B0B2: 10 07     BPL bra_B0BB
- - - - - - 0x0170C4 05:B0B4: B9 00 06  LDA ram_0600_obj,Y
- - - - - - 0x0170C7 05:B0B7: 29 F0     AND #$F0
- - - - - - 0x0170C9 05:B0B9: F0 0E     BEQ bra_B0C9
bra_B0BB:
- - - - - - 0x0170CB 05:B0BB: C8        INY
- - - - - - 0x0170CC 05:B0BC: C6 00     DEC ram_0000
- - - - - - 0x0170CE 05:B0BE: D0 EF     BNE bra_B0AF_loop
- - - - - - 0x0170D0 05:B0C0: 8A        TXA
- - - - - - 0x0170D1 05:B0C1: 49 01     EOR #$01
- - - - - - 0x0170D3 05:B0C3: 85 01     STA ram_0001
- - - - - - 0x0170D5 05:B0C5: A9 00     LDA #$00
- - - - - - 0x0170D7 05:B0C7: F0 0A     BEQ bra_B0D3    ; jmp
bra_B0C9:
- - - - - - 0x0170D9 05:B0C9: 84 01     STY ram_0001
- - - - - - 0x0170DB 05:B0CB: B9 20 07  LDA ram_0720_obj,Y
- - - - - - 0x0170DE 05:B0CE: 0A        ASL
- - - - - - 0x0170DF 05:B0CF: A8        TAY
- - - - - - 0x0170E0 05:B0D0: B9 4B F9  LDA tbl_0x01F95A + $01,Y
bra_B0D3:
- - - - - - 0x0170E3 05:B0D3: 85 02     STA ram_0002
- - - - - - 0x0170E5 05:B0D5: A4 01     LDY ram_0001
- - - - - - 0x0170E7 05:B0D7: B9 4E 06  LDA ram_obj_pos_X,Y
- - - - - - 0x0170EA 05:B0DA: 9D 4E 06  STA ram_obj_pos_X,X
- - - - - - 0x0170ED 05:B0DD: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x0170F0 05:B0E0: 38        SEC
- - - - - - 0x0170F1 05:B0E1: E5 02     SBC ram_0002
- - - - - - 0x0170F3 05:B0E3: 9D 68 06  STA ram_obj_pos_Y,X
- - - - - - 0x0170F6 05:B0E6: 4C 29 B0  JMP loc_B029


; ???
tbl_B0E9:
- - - - - - 0x0170F9 05:B0E9: 00        .byte $00   ; 
tbl_B0EA:
- - - - - - 0x0170FA 05:B0EA: 00        .byte $00   ; 
tbl_B0EB:
- - - - - - 0x0170FB 05:B0EB: 00        .byte $00   ; 
tbl_B0EC:
- - - - - - 0x0170FC 05:B0EC: 00        .byte $00   ; 
- D 1 - - - 0x0170FD 05:B0ED: 00        .byte $00   ; 
- D 1 - - - 0x0170FE 05:B0EE: 00        .byte $00   ; 
- D 1 - - - 0x0170FF 05:B0EF: B0        .byte $B0   ; 
- D 1 - - - 0x017100 05:B0F0: FF        .byte $FF   ; 
- D 1 - - - 0x017101 05:B0F1: 3C        .byte $3C   ; 
- D 1 - - - 0x017102 05:B0F2: 00        .byte $00   ; 
- D 1 - - - 0x017103 05:B0F3: C4        .byte $C4   ; 
- D 1 - - - 0x017104 05:B0F4: FF        .byte $FF   ; 
- D 1 - - - 0x017105 05:B0F5: 50        .byte $50   ; 
- D 1 - - - 0x017106 05:B0F6: 00        .byte $00   ; 
- D 1 - - - 0x017107 05:B0F7: 00        .byte $00   ; 
- D 1 - - - 0x017108 05:B0F8: 00        .byte $00   ; 
- - - - - - 0x017109 05:B0F9: 3C        .byte $3C   ; 
- - - - - - 0x01710A 05:B0FA: 00        .byte $00   ; 
- - - - - - 0x01710B 05:B0FB: 3C        .byte $3C   ; 
- - - - - - 0x01710C 05:B0FC: 00        .byte $00   ; 
- - - - - - 0x01710D 05:B0FD: 00        .byte $00   ; 
- - - - - - 0x01710E 05:B0FE: 00        .byte $00   ; 
- - - - - - 0x01710F 05:B0FF: 50        .byte $50   ; 
- - - - - - 0x017110 05:B100: 00        .byte $00   ; 
- - - - - - 0x017111 05:B101: C4        .byte $C4   ; 
- - - - - - 0x017112 05:B102: FF        .byte $FF   ; 
- - - - - - 0x017113 05:B103: 3C        .byte $3C   ; 
- - - - - - 0x017114 05:B104: 00        .byte $00   ; 
- - - - - - 0x017115 05:B105: B0        .byte $B0   ; 
- - - - - - 0x017116 05:B106: FF        .byte $FF   ; 
- - - - - - 0x017117 05:B107: 00        .byte $00   ; 
- - - - - - 0x017118 05:B108: 00        .byte $00   ; 
- - - - - - 0x017119 05:B109: C4        .byte $C4   ; 
- - - - - - 0x01711A 05:B10A: FF        .byte $FF   ; 
- - - - - - 0x01711B 05:B10B: C4        .byte $C4   ; 
- - - - - - 0x01711C 05:B10C: FF        .byte $FF   ; 



ofs_006_0x01711D_0E:
C - - J - - 0x01711D 05:B10D: A5 20     LDA ram_script_hi
C - - - - - 0x01711F 05:B10F: C9 04     CMP #$04
C - - - - - 0x017121 05:B111: D0 07     BNE bra_B11A
- - - - - - 0x017123 05:B113: A9 00     LDA #$00
- - - - - - 0x017125 05:B115: 85 00     STA ram_0000
- - - - - - 0x017127 05:B117: 85 01     STA ram_0001
- - - - - - 0x017129 05:B119: 60        RTS
bra_B11A:
C - - - - - 0x01712A 05:B11A: B5 B1     LDA ram_current_player,X
C - - - - - 0x01712C 05:B11C: 29 0F     AND #$0F
C - - - - - 0x01712E 05:B11E: A8        TAY
C - - - - - 0x01712F 05:B11F: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017132 05:B122: 30 03     BMI bra_B127
C - - - - - 0x017134 05:B124: 4C D5 B1  JMP loc_B1D5
bra_B127:
C - - - - - 0x017137 05:B127: A5 C3     LDA ram_00C3
C - - - - - 0x017139 05:B129: F0 6D     BEQ bra_B198
C - - - - - 0x01713B 05:B12B: 29 07     AND #$07
C - - - - - 0x01713D 05:B12D: 0A        ASL
C - - - - - 0x01713E 05:B12E: 85 00     STA ram_0000
C - - - - - 0x017140 05:B130: 20 B5 B1  JSR sub_B1B5
C - - - - - 0x017143 05:B133: A4 00     LDY ram_0000
C - - - - - 0x017145 05:B135: B9 74 03  LDA ram_0374_cpu,Y
C - - - - - 0x017148 05:B138: C5 01     CMP ram_0001
C - - - - - 0x01714A 05:B13A: F0 1C     BEQ bra_B158
bra_B13C_loop:
C - - - - - 0x01714C 05:B13C: A5 C3     LDA ram_00C3
C - - - - - 0x01714E 05:B13E: 18        CLC
C - - - - - 0x01714F 05:B13F: 69 01     ADC #$01
C - - - - - 0x017151 05:B141: 29 07     AND #$07
C - - - - - 0x017153 05:B143: 85 00     STA ram_0000
C - - - - - 0x017155 05:B145: 0A        ASL
C - - - - - 0x017156 05:B146: A8        TAY
C - - - - - 0x017157 05:B147: A5 01     LDA ram_0001
C - - - - - 0x017159 05:B149: 99 74 03  STA ram_0374_cpu,Y
C - - - - - 0x01715C 05:B14C: A5 C3     LDA ram_00C3
C - - - - - 0x01715E 05:B14E: 29 F0     AND #$F0
C - - - - - 0x017160 05:B150: 05 00     ORA ram_0000
C - - - - - 0x017162 05:B152: 85 C3     STA ram_00C3
C - - - - - 0x017164 05:B154: 29 07     AND #$07
C - - - - - 0x017166 05:B156: 0A        ASL
C - - - - - 0x017167 05:B157: A8        TAY
bra_B158:
C - - - - - 0x017168 05:B158: B9 75 03  LDA ram_0374_cpu + $01,Y
C - - - - - 0x01716B 05:B15B: 18        CLC
C - - - - - 0x01716C 05:B15C: 69 01     ADC #$01
C - - - - - 0x01716E 05:B15E: 99 75 03  STA ram_0374_cpu + $01,Y
C - - - - - 0x017171 05:B161: C9 FF     CMP #$FF
C - - - - - 0x017173 05:B163: F0 D7     BEQ bra_B13C_loop
C - - - - - 0x017175 05:B165: A5 C3     LDA ram_00C3
C - - - - - 0x017177 05:B167: 29 70     AND #$70
C - - - - - 0x017179 05:B169: 4A        LSR
C - - - - - 0x01717A 05:B16A: 4A        LSR
C - - - - - 0x01717B 05:B16B: 4A        LSR
C - - - - - 0x01717C 05:B16C: A8        TAY
C - - - - - 0x01717D 05:B16D: B9 75 03  LDA ram_0374_cpu + $01,Y
C - - - - - 0x017180 05:B170: 38        SEC
C - - - - - 0x017181 05:B171: E9 01     SBC #$01
C - - - - - 0x017183 05:B173: 99 75 03  STA ram_0374_cpu + $01,Y
C - - - - - 0x017186 05:B176: D0 11     BNE bra_B189
C - - - - - 0x017188 05:B178: A5 C3     LDA ram_00C3
C - - - - - 0x01718A 05:B17A: 18        CLC
C - - - - - 0x01718B 05:B17B: 69 10     ADC #$10
C - - - - - 0x01718D 05:B17D: 29 70     AND #$70
C - - - - - 0x01718F 05:B17F: 85 00     STA ram_0000
C - - - - - 0x017191 05:B181: A5 C3     LDA ram_00C3
C - - - - - 0x017193 05:B183: 29 0F     AND #$0F
C - - - - - 0x017195 05:B185: 05 00     ORA ram_0000
C - - - - - 0x017197 05:B187: 85 C3     STA ram_00C3
bra_B189:
C - - - - - 0x017199 05:B189: B9 74 03  LDA ram_0374_cpu,Y
C - - - - - 0x01719C 05:B18C: 29 0F     AND #$0F
C - - - - - 0x01719E 05:B18E: 85 00     STA ram_0000
C - - - - - 0x0171A0 05:B190: B9 74 03  LDA ram_0374_cpu,Y
C - - - - - 0x0171A3 05:B193: 29 F0     AND #$F0
C - - - - - 0x0171A5 05:B195: 85 01     STA ram_0001
C - - - - - 0x0171A7 05:B197: 60        RTS
bra_B198:
C - - - - - 0x0171A8 05:B198: 20 39 B3  JSR sub_B339
C - - - - - 0x0171AB 05:B19B: A9 00     LDA #$00
C - - - - - 0x0171AD 05:B19D: 85 00     STA ram_0000
C - - - - - 0x0171AF 05:B19F: 8D 74 03  STA ram_0374_cpu
C - - - - - 0x0171B2 05:B1A2: A9 10     LDA #$10
C - - - - - 0x0171B4 05:B1A4: 8D 75 03  STA ram_0374_cpu + $01
C - - - - - 0x0171B7 05:B1A7: E6 C3     INC ram_00C3
C - - - - - 0x0171B9 05:B1A9: 20 B5 B1  JSR sub_B1B5
C - - - - - 0x0171BC 05:B1AC: 8D 76 03  STA ram_0374_cpu + $02
C - - - - - 0x0171BF 05:B1AF: A9 01     LDA #$01
C - - - - - 0x0171C1 05:B1B1: 8D 77 03  STA ram_0374_cpu + $03
C - - - - - 0x0171C4 05:B1B4: 60        RTS



sub_B1B5:
C - - - - - 0x0171C5 05:B1B5: 8A        TXA
C - - - - - 0x0171C6 05:B1B6: 49 01     EOR #$01
C - - - - - 0x0171C8 05:B1B8: A8        TAY
C - - - - - 0x0171C9 05:B1B9: 84 02     STY ram_0002
C - - - - - 0x0171CB 05:B1BB: B9 42 00  LDA ram_btn_hold_1,Y
C - - - - - 0x0171CE 05:B1BE: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0171D0 05:B1C0: A8        TAY
C - - - - - 0x0171D1 05:B1C1: 20 38 F3  JSR sub_0x01F348
C - - - - - 0x0171D4 05:B1C4: 85 01     STA ram_0001
C - - - - - 0x0171D6 05:B1C6: A4 02     LDY ram_0002
C - - - - - 0x0171D8 05:B1C8: B9 42 00  LDA ram_btn_hold_1,Y
C - - - - - 0x0171DB 05:B1CB: 19 40 00  ORA ram_btn_press_1,Y
C - - - - - 0x0171DE 05:B1CE: 29 F0     AND #con_btns_ABSS
C - - - - - 0x0171E0 05:B1D0: 05 01     ORA ram_0001
C - - - - - 0x0171E2 05:B1D2: 85 01     STA ram_0001
C - - - - - 0x0171E4 05:B1D4: 60        RTS



loc_B1D5:
C D 1 - - - 0x0171E5 05:B1D5: A5 23     LDA ram_0023
C - - - - - 0x0171E7 05:B1D7: 29 07     AND #$07
C - - - - - 0x0171E9 05:B1D9: 20 47 B5  JSR sub_B547
C - - - - - 0x0171EC 05:B1DC: 20 DA B5  JSR sub_B5DA
C - - - - - 0x0171EF 05:B1DF: 20 D0 B5  JSR sub_B5D0
C - - - - - 0x0171F2 05:B1E2: 20 20 B2  JSR sub_B220
C - - - - - 0x0171F5 05:B1E5: A9 00     LDA #$00
C - - - - - 0x0171F7 05:B1E7: 85 1F     STA ram_001F
C - - - - - 0x0171F9 05:B1E9: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x0171FC 05:B1EC: 0A        ASL
C - - - - - 0x0171FD 05:B1ED: A8        TAY
C - - - - - 0x0171FE 05:B1EE: B9 DD B2  LDA tbl_B2DC + $01,Y
C - - - - - 0x017201 05:B1F1: 85 00     STA ram_0000
C - - - - - 0x017203 05:B1F3: B9 DC B2  LDA tbl_B2DC,Y
C - - - - - 0x017206 05:B1F6: 0A        ASL
C - - - - - 0x017207 05:B1F7: A8        TAY
C - - - - - 0x017208 05:B1F8: B9 0A B3  LDA tbl_B30A,Y
C - - - - - 0x01720B 05:B1FB: 85 02     STA ram_0002
C - - - - - 0x01720D 05:B1FD: B9 0B B3  LDA tbl_B30A + $01,Y
C - - - - - 0x017210 05:B200: 85 03     STA ram_0003
C - - - - - 0x017212 05:B202: 20 1D B2  JSR sub_B21D_execute_indirect_jump_0002
C - - - - - 0x017215 05:B205: 90 03     BCC bra_B20A
C - - - - - 0x017217 05:B207: FE 78 07  INC ram_0778_unk,X
bra_B20A:
C - - - - - 0x01721A 05:B20A: A5 1F     LDA ram_001F
C - - - - - 0x01721C 05:B20C: D0 07     BNE bra_B215
C - - - - - 0x01721E 05:B20E: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017221 05:B211: 29 0F     AND #$0F
C - - - - - 0x017223 05:B213: 85 00     STA ram_0000
bra_B215:
C - - - - - 0x017225 05:B215: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017228 05:B218: 29 F0     AND #$F0
C - - - - - 0x01722A 05:B21A: 85 01     STA ram_0001
bra_B21C_RTS:
C - - - - - 0x01722C 05:B21C: 60        RTS



sub_B21D_execute_indirect_jump_0002:
C - - - - - 0x01722D 05:B21D: 6C 02 00  JMP (ram_0002)



sub_B220:
C - - - - - 0x017230 05:B220: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x017233 05:B223: F0 F7     BEQ bra_B21C_RTS
C - - - - - 0x017235 05:B225: A5 75     LDA ram_stage
C - - - - - 0x017237 05:B227: 29 01     AND #$01
C - - - - - 0x017239 05:B229: F0 2E     BEQ bra_B259
C - - - - - 0x01723B 05:B22B: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x01723E 05:B22E: 29 0F     AND #$0F
C - - - - - 0x017240 05:B230: F0 1D     BEQ bra_B24F
C - - - - - 0x017242 05:B232: 38        SEC
C - - - - - 0x017243 05:B233: E9 01     SBC #$01
C - - - - - 0x017245 05:B235: A8        TAY
C - - - - - 0x017246 05:B236: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x017249 05:B239: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x01724C 05:B23C: F0 11     BEQ bra_B24F
- - - - - - 0x01724E 05:B23E: 2D 75 03  AND ram_0374_cpu + $01
- - - - - - 0x017251 05:B241: D0 0C     BNE bra_B24F
- - - - - - 0x017253 05:B243: AD 77 03  LDA ram_0374_cpu + $03
- - - - - - 0x017256 05:B246: F0 03     BEQ bra_B24B
- - - - - - 0x017258 05:B248: 8D 78 03  STA ram_0374_cpu + $04
bra_B24B:
- - - - - - 0x01725B 05:B24B: A9 0F     LDA #$0F
- - - - - - 0x01725D 05:B24D: D0 07     BNE bra_B256    ; jmp
bra_B24F:
C - - - - - 0x01725F 05:B24F: AD 77 03  LDA ram_0374_cpu + $03
C - - - - - 0x017262 05:B252: F0 21     BEQ bra_B275_RTS
C - - - - - 0x017264 05:B254: A9 04     LDA #$04
bra_B256:
C - - - - - 0x017266 05:B256: 4C D0 B2  JMP loc_B2D0
bra_B259:
C - - - - - 0x017269 05:B259: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x01726C 05:B25C: 29 40     AND #$40
C - - - - - 0x01726E 05:B25E: F0 16     BEQ bra_B276
C - - - - - 0x017270 05:B260: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017273 05:B263: 29 BF     AND #$BF
C - - - - - 0x017275 05:B265: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x017278 05:B268: AD 77 03  LDA ram_0374_cpu + $03
C - - - - - 0x01727B 05:B26B: F0 08     BEQ bra_B275_RTS
C - - - - - 0x01727D 05:B26D: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017280 05:B270: 09 40     ORA #$40
C - - - - - 0x017282 05:B272: 9D 8C 07  STA ram_078C_unk,X
bra_B275_RTS:
C - - - - - 0x017285 05:B275: 60        RTS
bra_B276:
C - - - - - 0x017286 05:B276: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x017289 05:B279: 29 0F     AND #$0F
C - - - - - 0x01728B 05:B27B: F0 2E     BEQ bra_B2AB
C - - - - - 0x01728D 05:B27D: A0 04     LDY #$04
C - - - - - 0x01728F 05:B27F: C9 05     CMP #$05
C - - - - - 0x017291 05:B281: 90 02     BCC bra_B285
C - - - - - 0x017293 05:B283: A0 40     LDY #$40
bra_B285:
C - - - - - 0x017295 05:B285: 98        TYA
C - - - - - 0x017296 05:B286: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x017299 05:B289: F0 20     BEQ bra_B2AB
C - - - - - 0x01729B 05:B28B: 29 0F     AND #$0F
C - - - - - 0x01729D 05:B28D: F0 04     BEQ bra_B293
C - - - - - 0x01729F 05:B28F: 98        TYA
C - - - - - 0x0172A0 05:B290: 4A        LSR
C - - - - - 0x0172A1 05:B291: D0 02     BNE bra_B295
bra_B293:
- - - - - - 0x0172A3 05:B293: 98        TYA
- - - - - - 0x0172A4 05:B294: 0A        ASL
bra_B295:
C - - - - - 0x0172A5 05:B295: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x0172A8 05:B298: F0 0D     BEQ bra_B2A7
- - - - - - 0x0172AA 05:B29A: 2D 75 03  AND ram_0374_cpu + $01
- - - - - - 0x0172AD 05:B29D: D0 04     BNE bra_B2A3
- - - - - - 0x0172AF 05:B29F: A9 0D     LDA #$0D
- - - - - - 0x0172B1 05:B2A1: D0 2D     BNE bra_B2D0    ; jmp
bra_B2A3:
- - - - - - 0x0172B3 05:B2A3: A9 04     LDA #$04
- - - - - - 0x0172B5 05:B2A5: D0 29     BNE bra_B2D0    ; jmp
bra_B2A7:
C - - - - - 0x0172B7 05:B2A7: A9 07     LDA #$07
C - - - - - 0x0172B9 05:B2A9: D0 25     BNE bra_B2D0    ; jmp
bra_B2AB:
C - - - - - 0x0172BB 05:B2AB: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x0172BE 05:B2AE: 29 0F     AND #$0F
C - - - - - 0x0172C0 05:B2B0: F0 12     BEQ bra_B2C4
C - - - - - 0x0172C2 05:B2B2: A0 08     LDY #$08
C - - - - - 0x0172C4 05:B2B4: C9 05     CMP #$05
C - - - - - 0x0172C6 05:B2B6: 90 02     BCC bra_B2BA
C - - - - - 0x0172C8 05:B2B8: A0 20     LDY #$20
bra_B2BA:
C - - - - - 0x0172CA 05:B2BA: 98        TYA
C - - - - - 0x0172CB 05:B2BB: 2D 74 03  AND ram_0374_cpu
C - - - - - 0x0172CE 05:B2BE: D0 04     BNE bra_B2C4
C - - - - - 0x0172D0 05:B2C0: A9 12     LDA #$12
C - - - - - 0x0172D2 05:B2C2: D0 0C     BNE bra_B2D0    ; jmp
bra_B2C4:
C - - - - - 0x0172D4 05:B2C4: AD 77 03  LDA ram_0374_cpu + $03
C - - - - - 0x0172D7 05:B2C7: F0 12     BEQ bra_B2DB_RTS
C - - - - - 0x0172D9 05:B2C9: 20 56 B4  JSR sub_B456
C - - - - - 0x0172DC 05:B2CC: 90 0D     BCC bra_B2DB_RTS
C - - - - - 0x0172DE 05:B2CE: A9 04     LDA #$04
bra_B2D0:
loc_B2D0:
C D 1 - - - 0x0172E0 05:B2D0: DD 96 07  CMP ram_0796_unk,X
C - - - - - 0x0172E3 05:B2D3: F0 06     BEQ bra_B2DB_RTS
C - - - - - 0x0172E5 05:B2D5: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x0172E8 05:B2D8: 9D 78 07  STA ram_0778_unk,X
bra_B2DB_RTS:
C - - - - - 0x0172EB 05:B2DB: 60        RTS



tbl_B2DC:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x0172EC 05:B2DC: 09        .byte $09, $00   ; 00 
- D 1 - - - 0x0172EE 05:B2DE: 00        .byte $00, $00   ; 01 
- D 1 - - - 0x0172F0 05:B2E0: 02        .byte $02, $00   ; 02 
- D 1 - - - 0x0172F2 05:B2E2: 03        .byte $03, $00   ; 03 
- D 1 - - - 0x0172F4 05:B2E4: 04        .byte $04, $00   ; 04 
- D 1 - - - 0x0172F6 05:B2E6: 05        .byte $05, $00   ; 05 
- D 1 - - - 0x0172F8 05:B2E8: 03        .byte $03, $01   ; 06 
- D 1 - - - 0x0172FA 05:B2EA: 0B        .byte $0B, $10   ; 07 
- D 1 - - - 0x0172FC 05:B2EC: 0D        .byte $0D, $00   ; 08 
- D 1 - - - 0x0172FE 05:B2EE: 0C        .byte $0C, $10   ; 09 
- D 1 - - - 0x017300 05:B2F0: 0E        .byte $0E, $00   ; 0A 
- D 1 - - - 0x017302 05:B2F2: 0F        .byte $0F, $00   ; 0B 
- - - - - - 0x017304 05:B2F4: 03        .byte $03, $01   ; 0C 
- - - - - - 0x017306 05:B2F6: 06        .byte $06, $00   ; 0D 
- - - - - - 0x017308 05:B2F8: 03        .byte $03, $01   ; 0E 
- - - - - - 0x01730A 05:B2FA: 0A        .byte $0A, $0D   ; 0F 
- - - - - - 0x01730C 05:B2FC: 11        .byte $11, $00   ; 10 
- - - - - - 0x01730E 05:B2FE: 03        .byte $03, $01   ; 11 
- D 1 - - - 0x017310 05:B300: 0B        .byte $0B, $10   ; 12 
- D 1 - - - 0x017312 05:B302: 0D        .byte $0D, $00   ; 13 
- D 1 - - - 0x017314 05:B304: 0C        .byte $0C, $10   ; 14 
- D 1 - - - 0x017316 05:B306: 10        .byte $10, $00   ; 15 
- D 1 - - - 0x017318 05:B308: 03        .byte $03, $01   ; 16 



tbl_B30A:
- D 1 - - - 0x01731A 05:B30A: 4A B3     .word ofs_009_B34A_00
- - - - - - 0x01731C 05:B30C: 3A B4     .word ofs_009_B43A_01
- D 1 - - - 0x01731E 05:B30E: 45 B4     .word ofs_009_B445_02
- D 1 - - - 0x017320 05:B310: 4C B4     .word ofs_009_B44C_03
- D 1 - - - 0x017322 05:B312: 98 B4     .word ofs_009_B498_04
- D 1 - - - 0x017324 05:B314: C3 B4     .word ofs_009_B4C3_05
- - - - - - 0x017326 05:B316: 21 B5     .word ofs_009_B521_06
- - - - - - 0x017328 05:B318: 38 B5     .word ofs_009_B538_07
- - - - - - 0x01732A 05:B31A: 3D B5     .word ofs_009_B53D_08
- D 1 - - - 0x01732C 05:B31C: 2E B3     .word ofs_009_B32E_09
- - - - - - 0x01732E 05:B31E: FB B3     .word ofs_009_B3FB_0A
- D 1 - - - 0x017330 05:B320: DB B4     .word ofs_009_B4DB_0B
- D 1 - - - 0x017332 05:B322: E3 B4     .word ofs_009_B4E3_0C
- D 1 - - - 0x017334 05:B324: EB B4     .word ofs_009_B4EB_0D
- D 1 - - - 0x017336 05:B326: 05 B5     .word ofs_009_B505_0E
- D 1 - - - 0x017338 05:B328: F6 B4     .word ofs_009_B4F6_0F
- D 1 - - - 0x01733A 05:B32A: 10 B5     .word ofs_009_B510_10
- - - - - - 0x01733C 05:B32C: 41 B4     .word ofs_009_B441_11



ofs_009_B32E_09:
C - - J - - 0x01733E 05:B32E: A5 75     LDA ram_stage
C - - - - - 0x017340 05:B330: 29 01     AND #$01
C - - - - - 0x017342 05:B332: F0 05     BEQ bra_B339
C - - - - - 0x017344 05:B334: A9 FF     LDA #$FF
C - - - - - 0x017346 05:B336: 8D 74 03  STA ram_0374_cpu
bra_B339:
sub_B339:
C - - - - - 0x017349 05:B339: B5 B1     LDA ram_current_player,X
C - - - - - 0x01734B 05:B33B: 29 0F     AND #$0F
C - - - - - 0x01734D 05:B33D: A8        TAY
C - - - - - 0x01734E 05:B33E: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017351 05:B341: 29 F0     AND #$F0
C - - - - - 0x017353 05:B343: 09 0E     ORA #$0E
C - - - - - 0x017355 05:B345: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x017358 05:B348: 38        SEC
C - - - - - 0x017359 05:B349: 60        RTS



ofs_009_B34A_00:
C - - J - - 0x01735A 05:B34A: 8A        TXA
C - - - - - 0x01735B 05:B34B: 49 01     EOR #$01
C - - - - - 0x01735D 05:B34D: A8        TAY
C - - - - - 0x01735E 05:B34E: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x017361 05:B351: 85 08     STA ram_0008
C - - - - - 0x017363 05:B353: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x017366 05:B356: 85 09     STA ram_0009
C - - - - - 0x017368 05:B358: B5 B1     LDA ram_current_player,X
C - - - - - 0x01736A 05:B35A: 29 0F     AND #$0F
C - - - - - 0x01736C 05:B35C: A8        TAY
C - - - - - 0x01736D 05:B35D: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017370 05:B360: 38        SEC
C - - - - - 0x017371 05:B361: E9 30     SBC #$30
C - - - - - 0x017373 05:B363: 4A        LSR
C - - - - - 0x017374 05:B364: 4A        LSR
C - - - - - 0x017375 05:B365: 4A        LSR
C - - - - - 0x017376 05:B366: 29 FE     AND #$FE
C - - - - - 0x017378 05:B368: 85 0A     STA ram_000A
C - - - - - 0x01737A 05:B36A: A5 75     LDA ram_stage
C - - - - - 0x01737C 05:B36C: 29 01     AND #$01
C - - - - - 0x01737E 05:B36E: D0 3D     BNE bra_B3AD
C - - - - - 0x017380 05:B370: A9 03     LDA #$03
C - - - - - 0x017382 05:B372: 85 0B     STA ram_000B
C - - - - - 0x017384 05:B374: A5 0A     LDA ram_000A
C - - - - - 0x017386 05:B376: 4A        LSR
C - - - - - 0x017387 05:B377: A8        TAY
C - - - - - 0x017388 05:B378: B9 28 B4  LDA tbl_B428,Y
C - - - - - 0x01738B 05:B37B: 18        CLC
C - - - - - 0x01738C 05:B37C: 65 08     ADC ram_0008
C - - - - - 0x01738E 05:B37E: 85 08     STA ram_0008
C - - - - - 0x017390 05:B380: 38        SEC
C - - - - - 0x017391 05:B381: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x017394 05:B384: 85 0C     STA ram_000C
C - - - - - 0x017396 05:B386: B0 08     BCS bra_B390
C - - - - - 0x017398 05:B388: 49 FF     EOR #$FF
C - - - - - 0x01739A 05:B38A: 85 0C     STA ram_000C
C - - - - - 0x01739C 05:B38C: A9 07     LDA #$07
C - - - - - 0x01739E 05:B38E: 85 0B     STA ram_000B
bra_B390:
loc_B390:
C D 1 - - - 0x0173A0 05:B390: A9 01     LDA #$01
C - - - - - 0x0173A2 05:B392: 85 1F     STA ram_001F
C - - - - - 0x0173A4 05:B394: A9 00     LDA #$00
C - - - - - 0x0173A6 05:B396: 85 00     STA ram_0000
C - - - - - 0x0173A8 05:B398: A4 0B     LDY ram_000B
C - - - - - 0x0173AA 05:B39A: A5 0C     LDA ram_000C
C - - - - - 0x0173AC 05:B39C: C9 08     CMP #$08
C - - - - - 0x0173AE 05:B39E: B0 04     BCS bra_B3A4
C - - - - - 0x0173B0 05:B3A0: A0 00     LDY #$00
C - - - - - 0x0173B2 05:B3A2: A9 08     LDA #$08
bra_B3A4:
C - - - - - 0x0173B4 05:B3A4: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0173B7 05:B3A7: 98        TYA
C - - - - - 0x0173B8 05:B3A8: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x0173BB 05:B3AB: 38        SEC
C - - - - - 0x0173BC 05:B3AC: 60        RTS
bra_B3AD:
C - - - - - 0x0173BD 05:B3AD: A9 00     LDA #$00
C - - - - - 0x0173BF 05:B3AF: 85 0C     STA ram_000C
C - - - - - 0x0173C1 05:B3B1: A4 0A     LDY ram_000A
C - - - - - 0x0173C3 05:B3B3: B9 2E B4  LDA tbl_B42E,Y
C - - - - - 0x0173C6 05:B3B6: 18        CLC
C - - - - - 0x0173C7 05:B3B7: 65 08     ADC ram_0008
C - - - - - 0x0173C9 05:B3B9: 85 90     STA ram_0090
C - - - - - 0x0173CB 05:B3BB: 38        SEC
C - - - - - 0x0173CC 05:B3BC: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x0173CF 05:B3BF: B0 02     BCS bra_B3C3
C - - - - - 0x0173D1 05:B3C1: 49 FF     EOR #$FF
bra_B3C3:
C - - - - - 0x0173D3 05:B3C3: 85 0B     STA ram_000B
C - - - - - 0x0173D5 05:B3C5: B9 2F B4  LDA tbl_B42F,Y
C - - - - - 0x0173D8 05:B3C8: 18        CLC
C - - - - - 0x0173D9 05:B3C9: 65 09     ADC ram_0009
C - - - - - 0x0173DB 05:B3CB: 85 91     STA ram_0091
C - - - - - 0x0173DD 05:B3CD: 38        SEC
C - - - - - 0x0173DE 05:B3CE: FD 68 06  SBC ram_obj_pos_Y,X
C - - - - - 0x0173E1 05:B3D1: B0 02     BCS bra_B3D5
C - - - - - 0x0173E3 05:B3D3: 49 FF     EOR #$FF
bra_B3D5:
C - - - - - 0x0173E5 05:B3D5: 85 0C     STA ram_000C
C - - - - - 0x0173E7 05:B3D7: 18        CLC
C - - - - - 0x0173E8 05:B3D8: 65 0B     ADC ram_000B
C - - - - - 0x0173EA 05:B3DA: 85 0C     STA ram_000C
C - - - - - 0x0173EC 05:B3DC: 20 E2 B3  JSR sub_B3E2
C - - - - - 0x0173EF 05:B3DF: 4C 90 B3  JMP loc_B390



sub_B3E2:
C - - - - - 0x0173F2 05:B3E2: A9 1F     LDA #con_F3D6_1F
C - - - - - 0x0173F4 05:B3E4: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0173F7 05:B3E7: A5 6D     LDA ram_006D
C - - - - - 0x0173F9 05:B3E9: 18        CLC
C - - - - - 0x0173FA 05:B3EA: 69 08     ADC #$08
C - - - - - 0x0173FC 05:B3EC: 18        CLC
C - - - - - 0x0173FD 05:B3ED: 2A        ROL
C - - - - - 0x0173FE 05:B3EE: 2A        ROL
C - - - - - 0x0173FF 05:B3EF: 2A        ROL
C - - - - - 0x017400 05:B3F0: 2A        ROL
C - - - - - 0x017401 05:B3F1: 29 07     AND #$07
C - - - - - 0x017403 05:B3F3: 18        CLC
C - - - - - 0x017404 05:B3F4: 69 03     ADC #$03
C - - - - - 0x017406 05:B3F6: 29 07     AND #$07
C - - - - - 0x017408 05:B3F8: 85 0B     STA ram_000B
C - - - - - 0x01740A 05:B3FA: 60        RTS



ofs_009_B3FB_0A:
- - - - - - 0x01740B 05:B3FB: 20 3A B4  JSR sub_B43A
- - - - - - 0x01740E 05:B3FE: A9 07     LDA #$07
- - - - - - 0x017410 05:B400: 85 00     STA ram_0000
- - - - - - 0x017412 05:B402: BD 8C 07  LDA ram_078C_unk,X
- - - - - - 0x017415 05:B405: 29 0F     AND #$0F
- - - - - - 0x017417 05:B407: A8        TAY
bra_B408_loop:
- - - - - - 0x017418 05:B408: C8        INY
- - - - - - 0x017419 05:B409: C0 09     CPY #$09
- - - - - - 0x01741B 05:B40B: 90 02     BCC bra_B40F
- - - - - - 0x01741D 05:B40D: A0 01     LDY #$01
bra_B40F:
- - - - - - 0x01741F 05:B40F: 84 01     STY ram_0001
- - - - - - 0x017421 05:B411: 88        DEY
- - - - - - 0x017422 05:B412: B9 AE F5  LDA tbl_0x01F5BE,Y
- - - - - - 0x017425 05:B415: A4 01     LDY ram_0001
- - - - - - 0x017427 05:B417: 2D 74 03  AND ram_0374_cpu
- - - - - - 0x01742A 05:B41A: F0 06     BEQ bra_B422
- - - - - - 0x01742C 05:B41C: C6 00     DEC ram_0000
- - - - - - 0x01742E 05:B41E: D0 E8     BNE bra_B408_loop
- - - - - - 0x017430 05:B420: A0 00     LDY #$00
bra_B422:
- - - - - - 0x017432 05:B422: 98        TYA
- - - - - - 0x017433 05:B423: 9D 8C 07  STA ram_078C_unk,X
- - - - - - 0x017436 05:B426: 38        SEC
- - - - - - 0x017437 05:B427: 60        RTS


; ???
tbl_B428:
- D 1 - - - 0x017438 05:B428: 38        .byte $38   ; 
- D 1 - - - 0x017439 05:B429: C8        .byte $C8   ; 
- D 1 - - - 0x01743A 05:B42A: 00        .byte $00   ; 
- D 1 - - - 0x01743B 05:B42B: 20        .byte $20   ; 
- D 1 - - - 0x01743C 05:B42C: E0        .byte $E0   ; 
- - - - - - 0x01743D 05:B42D: 00        .byte $00   ; 



tbl_B42E:
- D 1 - - - 0x01743E 05:B42E: 08        .byte $08   ; 
tbl_B42F:
- D 1 - - - 0x01743F 05:B42F: D8        .byte $D8   ; 
- - - - - - 0x017440 05:B430: F8        .byte $F8   ; 
- - - - - - 0x017441 05:B431: 18        .byte $18   ; 
- - - - - - 0x017442 05:B432: 08        .byte $08   ; 
- - - - - - 0x017443 05:B433: 00        .byte $00   ; 
- D 1 - - - 0x017444 05:B434: F8        .byte $F8   ; 
- D 1 - - - 0x017445 05:B435: E8        .byte $E8   ; 
- - - - - - 0x017446 05:B436: 00        .byte $00   ; 
- - - - - - 0x017447 05:B437: 0E        .byte $0E   ; 
- - - - - - 0x017448 05:B438: 00        .byte $00   ; 
- - - - - - 0x017449 05:B439: 00        .byte $00   ; 



sub_B43A:
ofs_009_B43A_01:
C - - - - - 0x01744A 05:B43A: A5 00     LDA ram_0000
C - - - - - 0x01744C 05:B43C: 9D 9C 06  STA ram_069C_obj,X
bra_B43F:
C - - - - - 0x01744F 05:B43F: 38        SEC
C - - - - - 0x017450 05:B440: 60        RTS



ofs_009_B441_11:
- - - - - - 0x017451 05:B441: A9 01     LDA #$01
- - - - - - 0x017453 05:B443: 85 1F     STA ram_001F
ofs_009_B445_02:
C - - J - - 0x017455 05:B445: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x017458 05:B448: F0 F5     BEQ bra_B43F
C - - - - - 0x01745A 05:B44A: 18        CLC
C - - - - - 0x01745B 05:B44B: 60        RTS



ofs_009_B44C_03:
C - - J - - 0x01745C 05:B44C: A9 01     LDA #$01
C - - - - - 0x01745E 05:B44E: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x017461 05:B451: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x017464 05:B454: 18        CLC
C - - - - - 0x017465 05:B455: 60        RTS



sub_B456:
C - - - - - 0x017466 05:B456: AC 77 03  LDY ram_0374_cpu + $03
C - - - - - 0x017469 05:B459: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01746C 05:B45C: 38        SEC
C - - - - - 0x01746D 05:B45D: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x017470 05:B460: B0 02     BCS bra_B464
C - - - - - 0x017472 05:B462: 49 FF     EOR #$FF
bra_B464:
C - - - - - 0x017474 05:B464: 85 0A     STA ram_000A
C - - - - - 0x017476 05:B466: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x017479 05:B469: 38        SEC
C - - - - - 0x01747A 05:B46A: FD 68 06  SBC ram_obj_pos_Y,X
C - - - - - 0x01747D 05:B46D: B0 02     BCS bra_B471
C - - - - - 0x01747F 05:B46F: 49 FF     EOR #$FF
bra_B471:
C - - - - - 0x017481 05:B471: 18        CLC
C - - - - - 0x017482 05:B472: 65 0A     ADC ram_000A
C - - - - - 0x017484 05:B474: 85 0C     STA ram_000C
C - - - - - 0x017486 05:B476: B5 B1     LDA ram_current_player,X
C - - - - - 0x017488 05:B478: 29 0F     AND #$0F
C - - - - - 0x01748A 05:B47A: A8        TAY
C - - - - - 0x01748B 05:B47B: B9 B9 B4  LDA tbl_B4B9,Y
C - - - - - 0x01748E 05:B47E: 85 01     STA ram_0001
C - - - - - 0x017490 05:B480: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x017493 05:B483: A0 00     LDY #$00
C - - - - - 0x017495 05:B485: 29 03     AND #$03
C - - - - - 0x017497 05:B487: F0 04     BEQ bra_B48D
bra_B489_loop:
C - - - - - 0x017499 05:B489: C8        INY
C - - - - - 0x01749A 05:B48A: 4A        LSR
C - - - - - 0x01749B 05:B48B: 90 FC     BCC bra_B489_loop
bra_B48D:
C - - - - - 0x01749D 05:B48D: 98        TYA
C - - - - - 0x01749E 05:B48E: 18        CLC
C - - - - - 0x01749F 05:B48F: 65 01     ADC ram_0001
C - - - - - 0x0174A1 05:B491: A8        TAY
C - - - - - 0x0174A2 05:B492: B9 BD B4  LDA tbl_B4BD,Y
C - - - - - 0x0174A5 05:B495: C5 0C     CMP ram_000C
C - - - - - 0x0174A7 05:B497: 60        RTS



ofs_009_B498_04:
C - - J - - 0x0174A8 05:B498: AC 77 03  LDY ram_0374_cpu + $03
C - - - - - 0x0174AB 05:B49B: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x0174AE 05:B49E: 85 90     STA ram_0090
C - - - - - 0x0174B0 05:B4A0: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x0174B3 05:B4A3: 85 91     STA ram_0091
C - - - - - 0x0174B5 05:B4A5: 20 E2 B3  JSR sub_B3E2
C - - - - - 0x0174B8 05:B4A8: A5 0C     LDA ram_000C
C - - - - - 0x0174BA 05:B4AA: 4A        LSR
C - - - - - 0x0174BB 05:B4AB: D0 02     BNE bra_B4AF
C - - - - - 0x0174BD 05:B4AD: A9 10     LDA #$10
bra_B4AF:
C - - - - - 0x0174BF 05:B4AF: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x0174C2 05:B4B2: A5 0B     LDA ram_000B
C - - - - - 0x0174C4 05:B4B4: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x0174C7 05:B4B7: 38        SEC
C - - - - - 0x0174C8 05:B4B8: 60        RTS



tbl_B4B9:
- D 1 - - - 0x0174C9 05:B4B9: 00        .byte $00   ; 00 
- D 1 - - - 0x0174CA 05:B4BA: 00        .byte $00   ; 01 
- - - - - - 0x0174CB 05:B4BB: 00        .byte $00   ; 02 
- - - - - - 0x0174CC 05:B4BC: 03        .byte $03   ; 03 



tbl_B4BD:
; 00 
- - - - - - 0x0174CD 05:B4BD: 48        .byte $48   ; 
- - - - - - 0x0174CE 05:B4BE: FF        .byte $FF   ; 
- D 1 - - - 0x0174CF 05:B4BF: FF        .byte $FF   ; 
; 03 
- - - - - - 0x0174D0 05:B4C0: 48        .byte $48   ; 
- - - - - - 0x0174D1 05:B4C1: 10        .byte $10   ; 
- - - - - - 0x0174D2 05:B4C2: 10        .byte $10   ; 



ofs_009_B4C3_05:
C - - J - - 0x0174D3 05:B4C3: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x0174D6 05:B4C6: F0 21     BEQ bra_B4E9
C - - - - - 0x0174D8 05:B4C8: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x0174DB 05:B4CB: 29 BF     AND #$BF
C - - - - - 0x0174DD 05:B4CD: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x0174E0 05:B4D0: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0174E3 05:B4D3: 29 03     AND #$03
C - - - - - 0x0174E5 05:B4D5: D0 48     BNE bra_B51F
C - - - - - 0x0174E7 05:B4D7: A9 40     LDA #$40
C - - - - - 0x0174E9 05:B4D9: D0 3E     BNE bra_B519    ; jmp



ofs_009_B4DB_0B:
C - - J - - 0x0174EB 05:B4DB: 20 3A B4  JSR sub_B43A
C - - - - - 0x0174EE 05:B4DE: 20 FD B4  JSR sub_B4FD
C - - - - - 0x0174F1 05:B4E1: 38        SEC
C - - - - - 0x0174F2 05:B4E2: 60        RTS



ofs_009_B4E3_0C:
C - - J - - 0x0174F3 05:B4E3: 20 3A B4  JSR sub_B43A
C - - - - - 0x0174F6 05:B4E6: 20 17 B5  JSR sub_B517
bra_B4E9:
C - - - - - 0x0174F9 05:B4E9: 38        SEC
C - - - - - 0x0174FA 05:B4EA: 60        RTS



ofs_009_B4EB_0D:
C - - J - - 0x0174FB 05:B4EB: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x0174FE 05:B4EE: F0 F9     BEQ bra_B4E9
C - - - - - 0x017500 05:B4F0: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x017503 05:B4F3: 4C FD B4  JMP loc_B4FD
ofs_009_B4F6_0F:
C - - J - - 0x017506 05:B4F6: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x017509 05:B4F9: 29 40     AND #$40
C - - - - - 0x01750B 05:B4FB: F0 39     BEQ bra_B536
sub_B4FD:
loc_B4FD:
C D 1 - - - 0x01750D 05:B4FD: E6 1F     INC ram_001F
C - - - - - 0x01750F 05:B4FF: A9 00     LDA #$00
C - - - - - 0x017511 05:B501: 85 00     STA ram_0000
C - - - - - 0x017513 05:B503: F0 12     BEQ bra_B517    ; jmp



ofs_009_B505_0E:
C - - J - - 0x017515 05:B505: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x017518 05:B508: F0 DF     BEQ bra_B4E9
C - - - - - 0x01751A 05:B50A: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x01751D 05:B50D: 4C 17 B5  JMP loc_B517



ofs_009_B510_10:
C - - J - - 0x017520 05:B510: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x017523 05:B513: 29 40     AND #$40
C - - - - - 0x017525 05:B515: F0 1F     BEQ bra_B536
bra_B517:
sub_B517:
loc_B517:
C D 1 - - - 0x017527 05:B517: A9 80     LDA #$80
bra_B519:
C - - - - - 0x017529 05:B519: 1D 8C 07  ORA ram_078C_unk,X
C - - - - - 0x01752C 05:B51C: 9D 8C 07  STA ram_078C_unk,X
bra_B51F:
C - - - - - 0x01752F 05:B51F: 18        CLC
C - - - - - 0x017530 05:B520: 60        RTS



ofs_009_B521_06:
- - - - - - 0x017531 05:B521: BD 8C 07  LDA ram_078C_unk,X
- - - - - - 0x017534 05:B524: 29 0F     AND #$0F
- - - - - - 0x017536 05:B526: 85 00     STA ram_0000
- - - - - - 0x017538 05:B528: 20 3D B5  JSR sub_B53D
- - - - - - 0x01753B 05:B52B: A9 09     LDA #$09
- - - - - - 0x01753D 05:B52D: 38        SEC
- - - - - - 0x01753E 05:B52E: E5 00     SBC ram_0000
- - - - - - 0x017540 05:B530: 1D 8C 07  ORA ram_078C_unk,X
- - - - - - 0x017543 05:B533: 9D 8C 07  STA ram_078C_unk,X
bra_B536:
C - - - - - 0x017546 05:B536: 38        SEC
C - - - - - 0x017547 05:B537: 60        RTS



ofs_009_B538_07:
- - - - - - 0x017548 05:B538: A5 00     LDA ram_0000
- - - - - - 0x01754A 05:B53A: 4C 42 B5  JMP loc_B542



sub_B53D:
ofs_009_B53D_08:
- - - - - - 0x01754D 05:B53D: BD 8C 07  LDA ram_078C_unk,X
- - - - - - 0x017550 05:B540: 29 F0     AND #$F0
loc_B542:
- - - - - - 0x017552 05:B542: 9D 8C 07  STA ram_078C_unk,X
- - - - - - 0x017555 05:B545: 38        SEC
- - - - - - 0x017556 05:B546: 60        RTS



sub_B547:
C - - - - - 0x017557 05:B547: 85 0F     STA ram_000F
C - - - - - 0x017559 05:B549: 0A        ASL
C - - - - - 0x01755A 05:B54A: A8        TAY
C - - - - - 0x01755B 05:B54B: A5 75     LDA ram_stage
C - - - - - 0x01755D 05:B54D: 29 01     AND #$01
C - - - - - 0x01755F 05:B54F: F0 04     BEQ bra_B555
C - - - - - 0x017561 05:B551: 98        TYA
C - - - - - 0x017562 05:B552: 09 10     ORA #$10
C - - - - - 0x017564 05:B554: A8        TAY
bra_B555:
C - - - - - 0x017565 05:B555: B9 85 B6  LDA tbl_B685,Y
C - - - - - 0x017568 05:B558: 18        CLC
C - - - - - 0x017569 05:B559: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x01756C 05:B55C: 85 00     STA ram_0000
C - - - - - 0x01756E 05:B55E: B9 86 B6  LDA tbl_B685 + $01,Y
C - - - - - 0x017571 05:B561: 18        CLC
C - - - - - 0x017572 05:B562: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x017575 05:B565: 85 01     STA ram_0001
C - - - - - 0x017577 05:B567: A9 00     LDA #con_F3D6_00
C - - - - - 0x017579 05:B569: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01757C 05:B56C: A4 0F     LDY ram_000F
C - - - - - 0x01757E 05:B56E: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x017581 05:B571: 49 FF     EOR #$FF
C - - - - - 0x017583 05:B573: 2D 79 03  AND ram_0374_cpu + $05
C - - - - - 0x017586 05:B576: 8D 79 03  STA ram_0374_cpu + $05
C - - - - - 0x017589 05:B579: A5 75     LDA ram_stage
C - - - - - 0x01758B 05:B57B: 29 01     AND #$01
C - - - - - 0x01758D 05:B57D: F0 09     BEQ bra_B588
C - - - - - 0x01758F 05:B57F: A4 01     LDY ram_0001
C - - - - - 0x017591 05:B581: B9 C5 B5  LDA tbl_B5C5,Y
C - - - - - 0x017594 05:B584: D0 06     BNE bra_B58C
C - - - - - 0x017596 05:B586: F0 0F     BEQ bra_B597    ; jmp
bra_B588:
C - - - - - 0x017598 05:B588: A5 01     LDA ram_0001
C - - - - - 0x01759A 05:B58A: F0 0B     BEQ bra_B597
bra_B58C:
C - - - - - 0x01759C 05:B58C: A4 0F     LDY ram_000F
C - - - - - 0x01759E 05:B58E: AD 79 03  LDA ram_0374_cpu + $05
C - - - - - 0x0175A1 05:B591: 19 AE F5  ORA tbl_0x01F5BE,Y
C - - - - - 0x0175A4 05:B594: 8D 79 03  STA ram_0374_cpu + $05
bra_B597:
C - - - - - 0x0175A7 05:B597: A9 08     LDA #con_F3D6_08
C - - - - - 0x0175A9 05:B599: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x0175AC 05:B59C: A4 0F     LDY ram_000F
C - - - - - 0x0175AE 05:B59E: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x0175B1 05:B5A1: 49 FF     EOR #$FF
C - - - - - 0x0175B3 05:B5A3: 2D 7A 03  AND ram_0374_cpu + $06
C - - - - - 0x0175B6 05:B5A6: 8D 7A 03  STA ram_0374_cpu + $06
C - - - - - 0x0175B9 05:B5A9: A5 00     LDA ram_0000
C - - - - - 0x0175BB 05:B5AB: F0 0B     BEQ bra_B5B8
- - - - - - 0x0175BD 05:B5AD: A4 0F     LDY ram_000F
- - - - - - 0x0175BF 05:B5AF: AD 7A 03  LDA ram_0374_cpu + $06
- - - - - - 0x0175C2 05:B5B2: 19 AE F5  ORA tbl_0x01F5BE,Y
- - - - - - 0x0175C5 05:B5B5: 8D 7A 03  STA ram_0374_cpu + $06
bra_B5B8:
C - - - - - 0x0175C8 05:B5B8: AC 7A 03  LDY ram_0374_cpu + $06
C - - - - - 0x0175CB 05:B5BB: 8C 75 03  STY ram_0374_cpu + $01
C - - - - - 0x0175CE 05:B5BE: AC 79 03  LDY ram_0374_cpu + $05
C - - - - - 0x0175D1 05:B5C1: 8C 74 03  STY ram_0374_cpu
C - - - - - 0x0175D4 05:B5C4: 60        RTS



tbl_B5C5:
- - - - - - 0x0175D5 05:B5C5: 01        .byte $01   ; 00 
- - - - - - 0x0175D6 05:B5C6: 01        .byte $01   ; 01 
- - - - - - 0x0175D7 05:B5C7: 01        .byte $01   ; 02 
- - - - - - 0x0175D8 05:B5C8: 00        .byte $00   ; 03 
- - - - - - 0x0175D9 05:B5C9: 01        .byte $01   ; 04 
- - - - - - 0x0175DA 05:B5CA: 01        .byte $01   ; 05 
- D 1 - - - 0x0175DB 05:B5CB: 00        .byte $00   ; 06 
- - - - - - 0x0175DC 05:B5CC: 00        .byte $00   ; 07 
- - - - - - 0x0175DD 05:B5CD: 00        .byte $00   ; 08 
- - - - - - 0x0175DE 05:B5CE: 01        .byte $01   ; 09 
- - - - - - 0x0175DF 05:B5CF: 00        .byte $00   ; 0A 



sub_B5D0:
C - - - - - 0x0175E0 05:B5D0: A0 12     LDY #$12
C - - - - - 0x0175E2 05:B5D2: 84 1F     STY ram_001F
C - - - - - 0x0175E4 05:B5D4: A9 04     LDA #$04
C - - - - - 0x0175E6 05:B5D6: 85 1E     STA ram_001E
C - - - - - 0x0175E8 05:B5D8: D0 19     BNE bra_B5F3    ; jmp



sub_B5DA:
C - - - - - 0x0175EA 05:B5DA: A9 FF     LDA #$FF
C - - - - - 0x0175EC 05:B5DC: 85 1D     STA ram_001D
C - - - - - 0x0175EE 05:B5DE: A9 00     LDA #$00
C - - - - - 0x0175F0 05:B5E0: 85 1C     STA ram_001C
C - - - - - 0x0175F2 05:B5E2: 8D 76 03  STA ram_0374_cpu + $02
C - - - - - 0x0175F5 05:B5E5: 8D 77 03  STA ram_0374_cpu + $03
C - - - - - 0x0175F8 05:B5E8: 8D 83 03  STA ram_0374_cpu + $0F
C - - - - - 0x0175FB 05:B5EB: A0 02     LDY #$02
C - - - - - 0x0175FD 05:B5ED: 84 1F     STY ram_001F
C - - - - - 0x0175FF 05:B5EF: A9 08     LDA #$08
C - - - - - 0x017601 05:B5F1: 85 1E     STA ram_001E
bra_B5F3:
C - - - - - 0x017603 05:B5F3: A4 1F     LDY ram_001F
C - - - - - 0x017605 05:B5F5: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x017608 05:B5F8: F0 53     BEQ bra_B64D
C - - - - - 0x01760A 05:B5FA: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x01760D 05:B5FD: 29 F0     AND #$F0
C - - - - - 0x01760F 05:B5FF: F0 00     BEQ bra_B601
bra_B601:
C - - - - - 0x017611 05:B601: A4 1F     LDY ram_001F
C - - - - - 0x017613 05:B603: C0 0A     CPY #$0A
C - - - - - 0x017615 05:B605: B0 46     BCS bra_B64D
C - - - - - 0x017617 05:B607: A5 75     LDA ram_stage
C - - - - - 0x017619 05:B609: 29 01     AND #$01
C - - - - - 0x01761B 05:B60B: F0 05     BEQ bra_B612
C - - - - - 0x01761D 05:B60D: CC 78 03  CPY ram_0374_cpu + $04
C - - - - - 0x017620 05:B610: F0 3B     BEQ bra_B64D
bra_B612:
C - - - - - 0x017622 05:B612: 20 5A B6  JSR sub_B65A
C - - - - - 0x017625 05:B615: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x017628 05:B618: 30 1F     BMI bra_B639
C - - - - - 0x01762A 05:B61A: 20 7F B6  JSR sub_B67F
C - - - - - 0x01762D 05:B61D: B0 2E     BCS bra_B64D
C - - - - - 0x01762F 05:B61F: A8        TAY
C - - - - - 0x017630 05:B620: A5 75     LDA ram_stage
C - - - - - 0x017632 05:B622: 29 01     AND #$01
C - - - - - 0x017634 05:B624: F0 04     BEQ bra_B62A
C - - - - - 0x017636 05:B626: C0 80     CPY #$80
C - - - - - 0x017638 05:B628: B0 23     BCS bra_B64D
bra_B62A:
C - - - - - 0x01763A 05:B62A: A4 13     LDY ram_0013
C - - - - - 0x01763C 05:B62C: C4 1D     CPY ram_001D
C - - - - - 0x01763E 05:B62E: B0 1D     BCS bra_B64D
C - - - - - 0x017640 05:B630: 84 1D     STY ram_001D
C - - - - - 0x017642 05:B632: A4 1F     LDY ram_001F
C - - - - - 0x017644 05:B634: 8C 83 03  STY ram_0374_cpu + $0F
C - - - - - 0x017647 05:B637: D0 14     BNE bra_B64D
bra_B639:
C - - - - - 0x017649 05:B639: 20 7F B6  JSR sub_B67F
C - - - - - 0x01764C 05:B63C: B0 0F     BCS bra_B64D
C - - - - - 0x01764E 05:B63E: C9 38     CMP #$38
C - - - - - 0x017650 05:B640: B0 0B     BCS bra_B64D
- - - - - - 0x017652 05:B642: A4 04     LDY ram_0004
- - - - - - 0x017654 05:B644: B9 AE F5  LDA tbl_0x01F5BE,Y
- - - - - - 0x017657 05:B647: 0D 76 03  ORA ram_0374_cpu + $02
- - - - - - 0x01765A 05:B64A: 8D 76 03  STA ram_0374_cpu + $02
bra_B64D:
C - - - - - 0x01765D 05:B64D: E6 1F     INC ram_001F
C - - - - - 0x01765F 05:B64F: C6 1E     DEC ram_001E
C - - - - - 0x017661 05:B651: D0 A0     BNE bra_B5F3
C - - - - - 0x017663 05:B653: AD 83 03  LDA ram_0374_cpu + $0F
C - - - - - 0x017666 05:B656: 8D 77 03  STA ram_0374_cpu + $03
C - - - - - 0x017669 05:B659: 60        RTS



sub_B65A:
ofs_006_0x01766A_11:
C - - - - - 0x01766A 05:B65A: A4 1F     LDY ram_001F
C - - - - - 0x01766C 05:B65C: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x01766F 05:B65F: 85 90     STA ram_0090
C - - - - - 0x017671 05:B661: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x017674 05:B664: 85 91     STA ram_0091
C - - - - - 0x017676 05:B666: A9 1F     LDA #con_F3D6_1F
C - - - - - 0x017678 05:B668: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01767B 05:B66B: A5 6D     LDA ram_006D
C - - - - - 0x01767D 05:B66D: 18        CLC
C - - - - - 0x01767E 05:B66E: 69 08     ADC #$08
C - - - - - 0x017680 05:B670: 18        CLC
C - - - - - 0x017681 05:B671: 2A        ROL
C - - - - - 0x017682 05:B672: 2A        ROL
C - - - - - 0x017683 05:B673: 2A        ROL
C - - - - - 0x017684 05:B674: 2A        ROL
C - - - - - 0x017685 05:B675: 29 07     AND #$07
C - - - - - 0x017687 05:B677: 18        CLC
C - - - - - 0x017688 05:B678: 69 02     ADC #$02
C - - - - - 0x01768A 05:B67A: 29 07     AND #$07
C - - - - - 0x01768C 05:B67C: 85 04     STA ram_0004
C - - - - - 0x01768E 05:B67E: 60        RTS



sub_B67F:
C - - - - - 0x01768F 05:B67F: A5 12     LDA ram_0012
C - - - - - 0x017691 05:B681: 18        CLC
C - - - - - 0x017692 05:B682: 65 13     ADC ram_0013
C - - - - - 0x017694 05:B684: 60        RTS



tbl_B685:
- D 1 - - - 0x017695 05:B685: 00        .byte $00, $E0   ; 00 
- D 1 - - - 0x017697 05:B687: 10        .byte $10, $E0   ; 01 
- D 1 - - - 0x017699 05:B689: 10        .byte $10, $00   ; 02 
- D 1 - - - 0x01769B 05:B68B: 10        .byte $10, $10   ; 03 
- D 1 - - - 0x01769D 05:B68D: 00        .byte $00, $10   ; 04 
- D 1 - - - 0x01769F 05:B68F: F0        .byte $F0, $10   ; 05 
- D 1 - - - 0x0176A1 05:B691: F0        .byte $F0, $00   ; 06 
- D 1 - - - 0x0176A3 05:B693: F0        .byte $F0, $E0   ; 07 
- D 1 - - - 0x0176A5 05:B695: 00        .byte $00, $00   ; 08 
- D 1 - - - 0x0176A7 05:B697: 10        .byte $10, $00   ; 09 
- D 1 - - - 0x0176A9 05:B699: 10        .byte $10, $10   ; 0A 
- D 1 - - - 0x0176AB 05:B69B: 10        .byte $10, $20   ; 0B 
- D 1 - - - 0x0176AD 05:B69D: 00        .byte $00, $20   ; 0C 
- D 1 - - - 0x0176AF 05:B69F: F0        .byte $F0, $20   ; 0D 
- D 1 - - - 0x0176B1 05:B6A1: F0        .byte $F0, $10   ; 0E 
- D 1 - - - 0x0176B3 05:B6A3: F0        .byte $F0, $00   ; 0F 



sub_B6A5:
C - - - - - 0x0176B5 05:B6A5: A5 75     LDA ram_stage
C - - - - - 0x0176B7 05:B6A7: C9 02     CMP #$02
C - - - - - 0x0176B9 05:B6A9: D0 29     BNE bra_B6D4_RTS
C - - - - - 0x0176BB 05:B6AB: A5 D0     LDA ram_00D0
C - - - - - 0x0176BD 05:B6AD: D0 25     BNE bra_B6D4_RTS
C - - - - - 0x0176BF 05:B6AF: A5 60     LDA ram_0060
C - - - - - 0x0176C1 05:B6B1: C9 03     CMP #$03
C - - - - - 0x0176C3 05:B6B3: D0 1F     BNE bra_B6D4_RTS
C - - - - - 0x0176C5 05:B6B5: A5 61     LDA ram_0061
C - - - - - 0x0176C7 05:B6B7: C9 D0     CMP #$D0
C - - - - - 0x0176C9 05:B6B9: B0 19     BCS bra_B6D4_RTS
C - - - - - 0x0176CB 05:B6BB: A5 63     LDA ram_0063
C - - - - - 0x0176CD 05:B6BD: F0 15     BEQ bra_B6D4_RTS
C - - - - - 0x0176CF 05:B6BF: C9 02     CMP #$02
C - - - - - 0x0176D1 05:B6C1: B0 11     BCS bra_B6D4_RTS
C - - - - - 0x0176D3 05:B6C3: A5 64     LDA ram_0064
C - - - - - 0x0176D5 05:B6C5: C9 C4     CMP #$C4
C - - - - - 0x0176D7 05:B6C7: 90 0B     BCC bra_B6D4_RTS
C - - - - - 0x0176D9 05:B6C9: E6 D0     INC ram_00D0
C - - - - - 0x0176DB 05:B6CB: A9 3A     LDA #con_music_3A
C - - - - - 0x0176DD 05:B6CD: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



sub_B6D0:
C - - - - - 0x0176E0 05:B6D0: A5 D0     LDA ram_00D0
C - - - - - 0x0176E2 05:B6D2: D0 01     BNE bra_B6D5
bra_B6D4_RTS:
C - - - - - 0x0176E4 05:B6D4: 60        RTS
bra_B6D5:
C - - - - - 0x0176E5 05:B6D5: 0A        ASL
C - - - - - 0x0176E6 05:B6D6: A8        TAY
C - - - - - 0x0176E7 05:B6D7: B9 E2 B6  LDA tbl_B6E4 - $02,Y
C - - - - - 0x0176EA 05:B6DA: 85 00     STA ram_0000
C - - - - - 0x0176EC 05:B6DC: B9 E3 B6  LDA tbl_B6E4 - $01,Y
C - - - - - 0x0176EF 05:B6DF: A0 00     LDY #$00
C - - - - - 0x0176F1 05:B6E1: 4C 08 D7  JMP loc_0x01D718_execute_indirect_jump_0000



tbl_B6E4:
- D 1 - - - 0x0176F4 05:B6E4: 11 B7     .word ofs_022_B711_01
- D 1 - - - 0x0176F6 05:B6E6: FE B6     .word ofs_022_B6FE_02
- D 1 - - - 0x0176F8 05:B6E8: 32 B7     .word ofs_022_B732_03
- D 1 - - - 0x0176FA 05:B6EA: 31 B7     .word ofs_022_B731_04
- D 1 - - - 0x0176FC 05:B6EC: 2B B7     .word ofs_022_B72B_05
- D 1 - - - 0x0176FE 05:B6EE: 4D B7     .word ofs_022_B74D_06
- D 1 - - - 0x017700 05:B6F0: A5 B7     .word ofs_022_B7A5_07
- D 1 - - - 0x017702 05:B6F2: C6 B7     .word ofs_022_B7C6_08
- D 1 - - - 0x017704 05:B6F4: EC B8     .word ofs_022_B8EC_09
- D 1 - - - 0x017706 05:B6F6: 17 B9     .word ofs_022_B917_0A
- D 1 - - - 0x017708 05:B6F8: 16 B9     .word ofs_022_B916_0B
- D 1 - - - 0x01770A 05:B6FA: 15 B9     .word ofs_022_B915_0C
- D 1 - - - 0x01770C 05:B6FC: 25 B9     .word ofs_022_B925_0D



ofs_022_B6FE_02:
C - - J - - 0x01770E 05:B6FE: A5 61     LDA ram_0061
C - - - - - 0x017710 05:B700: D0 06     BNE bra_B708
C - - - - - 0x017712 05:B702: A5 60     LDA ram_0060
C - - - - - 0x017714 05:B704: C9 03     CMP #$03
C - - - - - 0x017716 05:B706: F0 20     BEQ bra_B728
bra_B708:
C - - - - - 0x017718 05:B708: A9 FF     LDA #$FF
C - - - - - 0x01771A 05:B70A: 85 D5     STA ram_00D5
C - - - - - 0x01771C 05:B70C: A9 40     LDA #$40
C - - - - - 0x01771E 05:B70E: 85 D4     STA ram_00D4
C - - - - - 0x017720 05:B710: 60        RTS



ofs_022_B711_01:
C - - J - - 0x017721 05:B711: A5 64     LDA ram_0064
C - - - - - 0x017723 05:B713: C9 F0     CMP #$F0
C - - - - - 0x017725 05:B715: F0 11     BEQ bra_B728
C - - - - - 0x017727 05:B717: 90 09     BCC bra_B722
C - - - - - 0x017729 05:B719: A9 FF     LDA #$FF
C - - - - - 0x01772B 05:B71B: A0 00     LDY #$00
bra_B71D:
C - - - - - 0x01772D 05:B71D: 85 D3     STA ram_00D3
C - - - - - 0x01772F 05:B71F: 84 D2     STY ram_00D2
C - - - - - 0x017731 05:B721: 60        RTS
bra_B722:
- - - - - - 0x017732 05:B722: A9 01     LDA #$01
- - - - - - 0x017734 05:B724: A0 00     LDY #$00
- - - - - - 0x017736 05:B726: F0 F5     BEQ bra_B71D    ; jmp
bra_B728:
C - - - - - 0x017738 05:B728: E6 D0     INC ram_00D0
C - - - - - 0x01773A 05:B72A: 60        RTS



ofs_022_B72B_05:
C - - J - - 0x01773B 05:B72B: 20 92 B7  JSR sub_B792
C - - - - - 0x01773E 05:B72E: A0 00     LDY #$00
C - - - - - 0x017740 05:B730: C8        INY
ofs_022_B731_04:
C - - J - - 0x017741 05:B731: C8        INY
ofs_022_B732_03:
C - - J - - 0x017742 05:B732: 20 44 B7  JSR sub_B744
C - - - - - 0x017745 05:B735: 98        TYA
loc_B736:
C D 1 - - - 0x017746 05:B736: 85 1E     STA ram_001E
C - - - - - 0x017748 05:B738: A5 39     LDA ram_buffer_index_2
C - - - - - 0x01774A 05:B73A: C9 10     CMP #$10
C - - - - - 0x01774C 05:B73C: B0 0E     BCS bra_B74C_RTS
C - - - - - 0x01774E 05:B73E: E6 D0     INC ram_00D0
C - - - - - 0x017750 05:B740: A9 0F     LDA #con_DA9D_0F
C - - - - - 0x017752 05:B742: D0 45     BNE bra_B789    ; jmp



sub_B744:
C - - - - - 0x017754 05:B744: A9 40     LDA #$40
C - - - - - 0x017756 05:B746: A2 23     LDX #$23
loc_B748:   ; A = 80, X = 20
C D 1 - - - 0x017758 05:B748: 85 05     STA ram_0005
C - - - - - 0x01775A 05:B74A: 86 06     STX ram_0006
bra_B74C_RTS:
C - - - - - 0x01775C 05:B74C: 60        RTS



ofs_022_B74D_06:
C - - J - - 0x01775D 05:B74D: 20 B7 B7  JSR sub_B7B7
C - - - - - 0x017760 05:B750: 84 04     STY ram_0004
C - - - - - 0x017762 05:B752: A5 D1     LDA ram_00D1
C - - - - - 0x017764 05:B754: 0A        ASL
C - - - - - 0x017765 05:B755: 0A        ASL
C - - - - - 0x017766 05:B756: 0A        ASL
C - - - - - 0x017767 05:B757: 85 02     STA ram_0002
C - - - - - 0x017769 05:B759: 90 02     BCC bra_B75D
C - - - - - 0x01776B 05:B75B: E6 04     INC ram_0004
bra_B75D:
C - - - - - 0x01776D 05:B75D: A9 90     LDA #$90
C - - - - - 0x01776F 05:B75F: 38        SEC
C - - - - - 0x017770 05:B760: E5 02     SBC ram_0002
C - - - - - 0x017772 05:B762: 85 02     STA ram_0002
C - - - - - 0x017774 05:B764: A9 00     LDA #$00
C - - - - - 0x017776 05:B766: E5 04     SBC ram_0004
C - - - - - 0x017778 05:B768: 85 04     STA ram_0004
C - - - - - 0x01777A 05:B76A: A5 A4     LDA ram_00A4
C - - - - - 0x01777C 05:B76C: 18        CLC
C - - - - - 0x01777D 05:B76D: 65 02     ADC ram_0002
C - - - - - 0x01777F 05:B76F: 85 02     STA ram_0002
C - - - - - 0x017781 05:B771: A5 A3     LDA ram_00A3
C - - - - - 0x017783 05:B773: 65 04     ADC ram_0004
C - - - - - 0x017785 05:B775: 85 04     STA ram_0004
C - - - - - 0x017787 05:B777: A5 A1     LDA ram_00A1
C - - - - - 0x017789 05:B779: 85 03     STA ram_0003
C - - - - - 0x01778B 05:B77B: A5 A0     LDA ram_00A0
C - - - - - 0x01778D 05:B77D: 85 05     STA ram_0005
C - - - - - 0x01778F 05:B77F: E6 D1     INC ram_00D1
C - - - - - 0x017791 05:B781: A5 D1     LDA ram_00D1
C - - - - - 0x017793 05:B783: C9 22     CMP #$22
C - - - - - 0x017795 05:B785: F0 09     BEQ bra_B790
loc_B787:
C D 1 - - - 0x017797 05:B787: A9 0D     LDA #con_DA9D_0D
bra_B789:
C - - - - - 0x017799 05:B789: 85 1F     STA ram_001F
C - - - - - 0x01779B 05:B78B: A9 05     LDA #con_F3D6_05
C - - - - - 0x01779D 05:B78D: 4C B3 F3  JMP loc_0x01F3C3
bra_B790:
C - - - - - 0x0177A0 05:B790: E6 D0     INC ram_00D0
sub_B792:
C - - - - - 0x0177A2 05:B792: 20 B8 B8  JSR sub_B8B8
C - - - - - 0x0177A5 05:B795: 85 50     STA ram_0050
C - - - - - 0x0177A7 05:B797: 85 51     STA ram_0051
C - - - - - 0x0177A9 05:B799: A0 05     LDY #$05
bra_B79B_loop:
C - - - - - 0x0177AB 05:B79B: B9 60 00  LDA ram_0060,Y
C - - - - - 0x0177AE 05:B79E: 99 A0 00  STA ram_00A0,Y
C - - - - - 0x0177B1 05:B7A1: 88        DEY
C - - - - - 0x0177B2 05:B7A2: 10 F7     BPL bra_B79B_loop
C - - - - - 0x0177B4 05:B7A4: 60        RTS



ofs_022_B7A5_07:
C - - J - - 0x0177B5 05:B7A5: 20 BC B7  JSR sub_B7BC
C - - - - - 0x0177B8 05:B7A8: A5 A3     LDA ram_00A3
C - - - - - 0x0177BA 05:B7AA: D0 0B     BNE bra_B7B7
C - - - - - 0x0177BC 05:B7AC: 20 5D B9  JSR sub_B95D
C - - - - - 0x0177BF 05:B7AF: E6 D0     INC ram_00D0
C - - - - - 0x0177C1 05:B7B1: A9 00     LDA #$00
C - - - - - 0x0177C3 05:B7B3: 85 AF     STA ram_00AF
C - - - - - 0x0177C5 05:B7B5: 85 B0     STA ram_00B0
bra_B7B7:
sub_B7B7:
C - - - - - 0x0177C7 05:B7B7: A9 11     LDA #$11
C - - - - - 0x0177C9 05:B7B9: 85 FC     STA ram_scroll_Y
C - - - - - 0x0177CB 05:B7BB: 60        RTS



sub_B7BC:
C - - - - - 0x0177CC 05:B7BC: C6 A4     DEC ram_00A4
C - - - - - 0x0177CE 05:B7BE: A4 A4     LDY ram_00A4
C - - - - - 0x0177D0 05:B7C0: C8        INY
C - - - - - 0x0177D1 05:B7C1: D0 02     BNE bra_B7C5_RTS
C - - - - - 0x0177D3 05:B7C3: C6 A3     DEC ram_00A3
bra_B7C5_RTS:
C - - - - - 0x0177D5 05:B7C5: 60        RTS



ofs_022_B7C6_08:
C - - J - - 0x0177D6 05:B7C6: 20 4B B9  JSR sub_B94B
C - - - - - 0x0177D9 05:B7C9: A5 A3     LDA ram_00A3
C - - - - - 0x0177DB 05:B7CB: D0 06     BNE bra_B7D3
C - - - - - 0x0177DD 05:B7CD: A5 A4     LDA ram_00A4
C - - - - - 0x0177DF 05:B7CF: C9 F0     CMP #$F0
C - - - - - 0x0177E1 05:B7D1: F0 09     BEQ bra_B7DC
bra_B7D3:
C - - - - - 0x0177E3 05:B7D3: 20 BD B8  JSR sub_B8BD
C - - - - - 0x0177E6 05:B7D6: 20 BC B7  JSR sub_B7BC
C - - - - - 0x0177E9 05:B7D9: 4C EC B7  JMP loc_B7EC
bra_B7DC:
C - - - - - 0x0177EC 05:B7DC: 20 C7 B8  JSR sub_B8C7
C - - - - - 0x0177EF 05:B7DF: A9 40     LDA #< $0040
C - - - - - 0x0177F1 05:B7E1: 18        CLC
C - - - - - 0x0177F2 05:B7E2: 65 B0     ADC ram_00B0
C - - - - - 0x0177F4 05:B7E4: 85 B0     STA ram_00B0
C - - - - - 0x0177F6 05:B7E6: A5 AF     LDA ram_00AF
C - - - - - 0x0177F8 05:B7E8: 69 00     ADC #> $0040
C - - - - - 0x0177FA 05:B7EA: 85 AF     STA ram_00AF
loc_B7EC:
C D 1 - - - 0x0177FC 05:B7EC: A0 04     LDY #$04
C - - - - - 0x0177FE 05:B7EE: C4 76     CPY ram_irq_handler
C - - - - - 0x017800 05:B7F0: 90 02     BCC bra_B7F4
C - - - - - 0x017802 05:B7F2: 84 76     STY ram_irq_handler
bra_B7F4:
C - - - - - 0x017804 05:B7F4: A5 A1     LDA ram_00A1
C - - - - - 0x017806 05:B7F6: 85 FD     STA ram_scroll_X
C - - - - - 0x017808 05:B7F8: A5 A4     LDA ram_00A4
C - - - - - 0x01780A 05:B7FA: 38        SEC
C - - - - - 0x01780B 05:B7FB: E9 F0     SBC #$F0
C - - - - - 0x01780D 05:B7FD: 85 FC     STA ram_scroll_Y
C - - - - - 0x01780F 05:B7FF: A9 10     LDA #$10
C - - - - - 0x017811 05:B801: 38        SEC
C - - - - - 0x017812 05:B802: E5 A4     SBC ram_00A4
C - - - - - 0x017814 05:B804: 85 4E     STA ram_004E
C - - - - - 0x017816 05:B806: A5 A3     LDA ram_00A3
C - - - - - 0x017818 05:B808: 18        CLC
C - - - - - 0x017819 05:B809: 69 01     ADC #$01
C - - - - - 0x01781B 05:B80B: 29 01     AND #$01
C - - - - - 0x01781D 05:B80D: 0A        ASL
C - - - - - 0x01781E 05:B80E: 85 00     STA ram_0000
C - - - - - 0x017820 05:B810: 20 B4 B9  JSR sub_B9B4
C - - - - - 0x017823 05:B813: A5 AF     LDA ram_00AF
C - - - - - 0x017825 05:B815: 18        CLC
C - - - - - 0x017826 05:B816: 69 04     ADC #$04
C - - - - - 0x017828 05:B818: C9 70     CMP #$70
C - - - - - 0x01782A 05:B81A: B0 70     BCS bra_B88C
C - - - - - 0x01782C 05:B81C: 29 1F     AND #$1F
C - - - - - 0x01782E 05:B81E: C9 10     CMP #$10
C - - - - - 0x017830 05:B820: D0 04     BNE bra_B826
C - - - - - 0x017832 05:B822: A5 D0     LDA ram_00D0
C - - - - - 0x017834 05:B824: 30 66     BMI bra_B88C
bra_B826:
C - - - - - 0x017836 05:B826: A5 AF     LDA ram_00AF
C - - - - - 0x017838 05:B828: 18        CLC
C - - - - - 0x017839 05:B829: 65 4E     ADC ram_004E
C - - - - - 0x01783B 05:B82B: 69 20     ADC #$20
C - - - - - 0x01783D 05:B82D: 85 01     STA ram_0001
C - - - - - 0x01783F 05:B82F: 29 F8     AND #$F8
C - - - - - 0x017841 05:B831: 85 00     STA ram_0000
C - - - - - 0x017843 05:B833: A9 00     LDA #$00
C - - - - - 0x017845 05:B835: 06 00     ASL ram_0000
C - - - - - 0x017847 05:B837: 2A        ROL
C - - - - - 0x017848 05:B838: 06 00     ASL ram_0000
C - - - - - 0x01784A 05:B83A: 2A        ROL
C - - - - - 0x01784B 05:B83B: 09 20     ORA #$20
C - - - - - 0x01784D 05:B83D: 85 A9     STA ram_00A9
C - - - - - 0x01784F 05:B83F: A5 00     LDA ram_0000
C - - - - - 0x017851 05:B841: 85 AA     STA ram_00AA
C - - - - - 0x017853 05:B843: A5 01     LDA ram_0001
C - - - - - 0x017855 05:B845: 49 FF     EOR #$FF
C - - - - - 0x017857 05:B847: 29 07     AND #$07
C - - - - - 0x017859 05:B849: 18        CLC
C - - - - - 0x01785A 05:B84A: 69 02     ADC #$02
C - - - - - 0x01785C 05:B84C: 85 59     STA ram_0059
C - - - - - 0x01785E 05:B84E: A9 BB     LDA #$BB
C - - - - - 0x017860 05:B850: 38        SEC
C - - - - - 0x017861 05:B851: E5 4E     SBC ram_004E
C - - - - - 0x017863 05:B853: E5 59     SBC ram_0059
C - - - - - 0x017865 05:B855: 85 02     STA ram_0002
C - - - - - 0x017867 05:B857: A9 FF     LDA #$FF
C - - - - - 0x017869 05:B859: 85 5D     STA ram_005D
C - - - - - 0x01786B 05:B85B: A5 AF     LDA ram_00AF
C - - - - - 0x01786D 05:B85D: C9 02     CMP #$02
C - - - - - 0x01786F 05:B85F: 90 06     BCC bra_B867
C - - - - - 0x017871 05:B861: 85 5D     STA ram_005D
C - - - - - 0x017873 05:B863: A9 05     LDA #con_irq_05
C - - - - - 0x017875 05:B865: 85 76     STA ram_irq_handler
bra_B867:
C - - - - - 0x017877 05:B867: A5 02     LDA ram_0002
C - - - - - 0x017879 05:B869: 38        SEC
C - - - - - 0x01787A 05:B86A: E5 5D     SBC ram_005D
C - - - - - 0x01787C 05:B86C: 85 4F     STA ram_004F
C - - - - - 0x01787E 05:B86E: A5 5D     LDA ram_005D
C - - - - - 0x017880 05:B870: 29 F8     AND #$F8
C - - - - - 0x017882 05:B872: 85 00     STA ram_0000
C - - - - - 0x017884 05:B874: A9 00     LDA #$00
C - - - - - 0x017886 05:B876: 06 00     ASL ram_0000
C - - - - - 0x017888 05:B878: 2A        ROL
C - - - - - 0x017889 05:B879: 06 00     ASL ram_0000
C - - - - - 0x01788B 05:B87B: 2A        ROL
C - - - - - 0x01788C 05:B87C: 85 01     STA ram_0001
C - - - - - 0x01788E 05:B87E: A9 A0     LDA #$A0
C - - - - - 0x017890 05:B880: 38        SEC
C - - - - - 0x017891 05:B881: E5 00     SBC ram_0000
C - - - - - 0x017893 05:B883: 85 DA     STA ram_00DA
C - - - - - 0x017895 05:B885: A9 2F     LDA #$2F
C - - - - - 0x017897 05:B887: E5 01     SBC ram_0001
C - - - - - 0x017899 05:B889: 85 DB     STA ram_00DB
C - - - - - 0x01789B 05:B88B: 60        RTS
bra_B88C:
C - - - - - 0x01789C 05:B88C: A5 AF     LDA ram_00AF
C - - - - - 0x01789E 05:B88E: 18        CLC
C - - - - - 0x01789F 05:B88F: 69 40     ADC #$40
C - - - - - 0x0178A1 05:B891: 29 E0     AND #$E0
C - - - - - 0x0178A3 05:B893: 85 02     STA ram_0002
C - - - - - 0x0178A5 05:B895: 4A        LSR
; bzk optimize, what's the point of these CLC + ADC 00?
; bzk bug?
C - - - - - 0x0178A6 05:B896: 18        CLC
C - - - - - 0x0178A7 05:B897: 69 00     ADC #< $0000
C - - - - - 0x0178A9 05:B899: 85 00     STA ram_0000
C - - - - - 0x0178AB 05:B89B: A9 04     LDA #$04
C - - - - - 0x0178AD 05:B89D: 69 00     ADC #> $0000
C - - - - - 0x0178AF 05:B89F: 85 01     STA ram_0001
C - - - - - 0x0178B1 05:B8A1: A5 02     LDA ram_0002
C - - - - - 0x0178B3 05:B8A3: 4A        LSR
C - - - - - 0x0178B4 05:B8A4: 49 7F     EOR #$7F
C - - - - - 0x0178B6 05:B8A6: 85 02     STA ram_0002
; bzk optimize, all those calculations only to always come up with ram_0440
C - - - - - 0x0178B8 05:B8A8: A0 00     LDY #$00
bra_B8AA_loop:
C - - - - - 0x0178BA 05:B8AA: B1 00     LDA (ram_0000),Y    ; 0440-047E
C - - - - - 0x0178BC 05:B8AC: 99 90 04  STA ram_0490,Y
C - - - - - 0x0178BF 05:B8AF: C8        INY
C - - - - - 0x0178C0 05:B8B0: C6 02     DEC ram_0002
C - - - - - 0x0178C2 05:B8B2: D0 F6     BNE bra_B8AA_loop
C - - - - - 0x0178C4 05:B8B4: E6 D0     INC ram_00D0
C - - - - - 0x0178C6 05:B8B6: C6 A0     DEC ram_00A0
sub_B8B8:
C - - - - - 0x0178C8 05:B8B8: A9 00     LDA #$00
C - - - - - 0x0178CA 05:B8BA: 85 D1     STA ram_00D1
C - - - - - 0x0178CC 05:B8BC: 60        RTS



sub_B8BD:
C - - - - - 0x0178CD 05:B8BD: A5 A4     LDA ram_00A4
C - - - - - 0x0178CF 05:B8BF: C9 FE     CMP #$FE
C - - - - - 0x0178D1 05:B8C1: D0 28     BNE bra_B8EB_RTS
C - - - - - 0x0178D3 05:B8C3: A9 FD     LDA #$FD
C - - - - - 0x0178D5 05:B8C5: D0 08     BNE bra_B8CF    ; jmp



sub_B8C7:
C - - - - - 0x0178D7 05:B8C7: A5 B0     LDA ram_00B0
C - - - - - 0x0178D9 05:B8C9: C9 C0     CMP #$C0
C - - - - - 0x0178DB 05:B8CB: D0 1E     BNE bra_B8EB_RTS
C - - - - - 0x0178DD 05:B8CD: A9 FF     LDA #$FF
bra_B8CF:
sub_B8CF:   ; A = 04
C - - - - - 0x0178DF 05:B8CF: 85 1B     STA ram_001B
C - - - - - 0x0178E1 05:B8D1: A2 01     LDX #$01
bra_B8D3_loop:
C - - - - - 0x0178E3 05:B8D3: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x0178E6 05:B8D6: F0 10     BEQ bra_B8E8
C - - - - - 0x0178E8 05:B8D8: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x0178EB 05:B8DB: 29 40     AND #$40
C - - - - - 0x0178ED 05:B8DD: D0 09     BNE bra_B8E8
C - - - - - 0x0178EF 05:B8DF: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x0178F2 05:B8E2: 18        CLC
C - - - - - 0x0178F3 05:B8E3: 65 1B     ADC ram_001B
C - - - - - 0x0178F5 05:B8E5: 9D 68 06  STA ram_obj_pos_Y,X
bra_B8E8:
C - - - - - 0x0178F8 05:B8E8: CA        DEX
C - - - - - 0x0178F9 05:B8E9: 10 E8     BPL bra_B8D3_loop
bra_B8EB_RTS:
C - - - - - 0x0178FB 05:B8EB: 60        RTS



ofs_022_B8EC_09:
C - - J - - 0x0178FC 05:B8EC: A9 10     LDA #con_DA9D_10
C - - - - - 0x0178FE 05:B8EE: 85 1F     STA ram_001F
C - - - - - 0x017900 05:B8F0: A9 05     LDA #con_F3D6_05
C - - - - - 0x017902 05:B8F2: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x017905 05:B8F5: E6 D1     INC ram_00D1
C - - - - - 0x017907 05:B8F7: A5 D1     LDA ram_00D1
C - - - - - 0x017909 05:B8F9: C9 21     CMP #$21
C - - - - - 0x01790B 05:B8FB: B0 0E     BCS bra_B90B
C - - - - - 0x01790D 05:B8FD: A9 08     LDA #< $0008
C - - - - - 0x01790F 05:B8FF: 18        CLC
C - - - - - 0x017910 05:B900: 65 A1     ADC ram_00A1
C - - - - - 0x017912 05:B902: 85 A1     STA ram_00A1
C - - - - - 0x017914 05:B904: A5 A0     LDA ram_00A0
C - - - - - 0x017916 05:B906: 69 00     ADC #> $0008
C - - - - - 0x017918 05:B908: 85 A0     STA ram_00A0
C - - - - - 0x01791A 05:B90A: 60        RTS
bra_B90B:
C - - - - - 0x01791B 05:B90B: 20 B8 B8  JSR sub_B8B8
C - - - - - 0x01791E 05:B90E: E6 D0     INC ram_00D0
C - - - - - 0x017920 05:B910: A9 3C     LDA #con_music_3C
C - - - - - 0x017922 05:B912: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



ofs_022_B915_0C:
C - - J - - 0x017925 05:B915: C8        INY
ofs_022_B916_0B:
C - - J - - 0x017926 05:B916: C8        INY
ofs_022_B917_0A:
C - - J - - 0x017927 05:B917: 20 1E B9  JSR sub_B91E
C - - - - - 0x01792A 05:B91A: 98        TYA
C - - - - - 0x01792B 05:B91B: 4C 36 B7  JMP loc_B736



sub_B91E:
C - - - - - 0x01792E 05:B91E: A9 80     LDA #$80
C - - - - - 0x017930 05:B920: A2 20     LDX #$20
C - - - - - 0x017932 05:B922: 4C 48 B7  JMP loc_B748



ofs_022_B925_0D:
C - - J - - 0x017935 05:B925: A0 05     LDY #$05
bra_B927_loop:
C - - - - - 0x017937 05:B927: B9 A0 00  LDA ram_00A0,Y
C - - - - - 0x01793A 05:B92A: 99 60 00  STA ram_0060,Y
C - - - - - 0x01793D 05:B92D: 88        DEY
C - - - - - 0x01793E 05:B92E: 10 F7     BPL bra_B927_loop
; Y = FF
C - - - - - 0x017940 05:B930: A5 63     LDA ram_0063
C - - - - - 0x017942 05:B932: 85 B7     STA ram_00B7
C - - - - - 0x017944 05:B934: A5 64     LDA ram_0064
C - - - - - 0x017946 05:B936: 85 B8     STA ram_00B8
C - - - - - 0x017948 05:B938: C8        INY ; 00
C - - - - - 0x017949 05:B939: 84 D0     STY ram_00D0
C - - - - - 0x01794B 05:B93B: 84 D1     STY ram_00D1
C - - - - - 0x01794D 05:B93D: A5 67     LDA ram_0067
C - - - - - 0x01794F 05:B93F: 29 F8     AND #$F8
C - - - - - 0x017951 05:B941: 85 67     STA ram_0067
C - - - - - 0x017953 05:B943: A9 04     LDA #$04
C - - - - - 0x017955 05:B945: 20 CF B8  JSR sub_B8CF
; Y = 00
C - - - - - 0x017958 05:B948: 4C CA F8  JMP loc_0x01F8DA



sub_B94B:
C - - - - - 0x01795B 05:B94B: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x01795E 05:B94E: A2 05     LDX #$05
C - - - - - 0x017960 05:B950: AD AF 07  LDA ram_07AA_unk + $05
C - - - - - 0x017963 05:B953: D0 0F     BNE bra_B964
C - - - - - 0x017965 05:B955: A5 AF     LDA ram_00AF
C - - - - - 0x017967 05:B957: 29 1F     AND #$1F
C - - - - - 0x017969 05:B959: C9 02     CMP #$02
C - - - - - 0x01796B 05:B95B: D0 50     BNE bra_B9AD_RTS
sub_B95D:
C - - - - - 0x01796D 05:B95D: A2 05     LDX #$05
C - - - - - 0x01796F 05:B95F: A9 80     LDA #$80
C - - - - - 0x017971 05:B961: 8D AF 07  STA ram_07AA_unk + $05
bra_B964:
C - - - - - 0x017974 05:B964: AD AF 07  LDA ram_07AA_unk + $05
C - - - - - 0x017977 05:B967: 29 7F     AND #$7F
C - - - - - 0x017979 05:B969: A8        TAY
C - - - - - 0x01797A 05:B96A: B9 AE B9  LDA tbl_B9AE,Y
C - - - - - 0x01797D 05:B96D: 8D 53 06  STA ram_obj_pos_X + $05
C - - - - - 0x017980 05:B970: 85 00     STA ram_0000
C - - - - - 0x017982 05:B972: A9 28     LDA #$28
C - - - - - 0x017984 05:B974: 8D 6D 06  STA ram_obj_pos_Y + $05
C - - - - - 0x017987 05:B977: 85 01     STA ram_0001
C - - - - - 0x017989 05:B979: A9 00     LDA #con_F3D6_00
C - - - - - 0x01798B 05:B97B: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01798E 05:B97E: A5 00     LDA ram_0000
C - - - - - 0x017990 05:B980: C9 68     CMP #$68
C - - - - - 0x017992 05:B982: 90 1A     BCC bra_B99E
C - - - - - 0x017994 05:B984: A9 91     LDA #$91
C - - - - - 0x017996 05:B986: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x017999 05:B989: A9 1D     LDA #con_F3D6_1D
C - - - - - 0x01799B 05:B98B: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x01799E 05:B98E: A5 1E     LDA ram_001E
C - - - - - 0x0179A0 05:B990: D0 1B     BNE bra_B9AD_RTS
C - - - - - 0x0179A2 05:B992: A4 1F     LDY ram_001F
C - - - - - 0x0179A4 05:B994: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x0179A7 05:B997: 29 0F     AND #$0F
C - - - - - 0x0179A9 05:B999: 09 40     ORA #$40
C - - - - - 0x0179AB 05:B99B: 99 82 06  STA ram_0682_obj,Y
bra_B99E:
C - - - - - 0x0179AE 05:B99E: EE AF 07  INC ram_07AA_unk + $05
C - - - - - 0x0179B1 05:B9A1: AD AF 07  LDA ram_07AA_unk + $05
C - - - - - 0x0179B4 05:B9A4: C9 86     CMP #$86
C - - - - - 0x0179B6 05:B9A6: 90 05     BCC bra_B9AD_RTS
C - - - - - 0x0179B8 05:B9A8: A9 00     LDA #$00
C - - - - - 0x0179BA 05:B9AA: 8D AF 07  STA ram_07AA_unk + $05
bra_B9AD_RTS:
C - - - - - 0x0179BD 05:B9AD: 60        RTS



tbl_B9AE:
- D 1 - - - 0x0179BE 05:B9AE: 30        .byte $30   ; 00 
- D 1 - - - 0x0179BF 05:B9AF: 50        .byte $50   ; 01 
- D 1 - - - 0x0179C0 05:B9B0: 70        .byte $70   ; 02 
- D 1 - - - 0x0179C1 05:B9B1: 90        .byte $90   ; 03 
- D 1 - - - 0x0179C2 05:B9B2: B0        .byte $B0   ; 04 
- D 1 - - - 0x0179C3 05:B9B3: D0        .byte $D0   ; 05 



sub_B9B4:
C - - - - - 0x0179C4 05:B9B4: A5 A0     LDA ram_00A0
C - - - - - 0x0179C6 05:B9B6: 29 01     AND #$01
C - - - - - 0x0179C8 05:B9B8: 05 00     ORA ram_0000
C - - - - - 0x0179CA 05:B9BA: 85 00     STA ram_0000
C - - - - - 0x0179CC 05:B9BC: A5 FF     LDA ram_for_2000
C - - - - - 0x0179CE 05:B9BE: 29 FC     AND #$FC
C - - - - - 0x0179D0 05:B9C0: 05 00     ORA ram_0000
C - - - - - 0x0179D2 05:B9C2: 85 FF     STA ram_for_2000
C - - - - - 0x0179D4 05:B9C4: 60        RTS



sub_B9C5:
C - - - - - 0x0179D5 05:B9C5: A5 75     LDA ram_stage
C - - - - - 0x0179D7 05:B9C7: F0 23     BEQ bra_B9EC_RTS
C - - - - - 0x0179D9 05:B9C9: 29 01     AND #$01
C - - - - - 0x0179DB 05:B9CB: D0 1F     BNE bra_B9EC_RTS
C - - - - - 0x0179DD 05:B9CD: A5 63     LDA ram_0063
C - - - - - 0x0179DF 05:B9CF: D0 06     BNE bra_B9D7
C - - - - - 0x0179E1 05:B9D1: A5 64     LDA ram_0064
C - - - - - 0x0179E3 05:B9D3: C9 F8     CMP #$F8
C - - - - - 0x0179E5 05:B9D5: B0 0A     BCS bra_B9E1
bra_B9D7:
C - - - - - 0x0179E7 05:B9D7: A9 01     LDA #$01
C - - - - - 0x0179E9 05:B9D9: C5 63     CMP ram_0063
C - - - - - 0x0179EB 05:B9DB: D0 0F     BNE bra_B9EC_RTS
C - - - - - 0x0179ED 05:B9DD: A5 64     LDA ram_0064
C - - - - - 0x0179EF 05:B9DF: 30 0B     BMI bra_B9EC_RTS
bra_B9E1:
C - - - - - 0x0179F1 05:B9E1: A5 60     LDA ram_0060
C - - - - - 0x0179F3 05:B9E3: C9 02     CMP #$02
C - - - - - 0x0179F5 05:B9E5: B0 05     BCS bra_B9EC_RTS
C - - - - - 0x0179F7 05:B9E7: AD 43 03  LDA ram_0343
C - - - - - 0x0179FA 05:B9EA: F0 15     BEQ bra_BA01
bra_B9EC_RTS:
C - - - - - 0x0179FC 05:B9EC: 60        RTS



sub_B9ED:
C - - - - - 0x0179FD 05:B9ED: AD 43 03  LDA ram_0343
C - - - - - 0x017A00 05:B9F0: 0A        ASL
C - - - - - 0x017A01 05:B9F1: A8        TAY
C - - - - - 0x017A02 05:B9F2: B9 03 BA  LDA tbl_BA05 - $02,Y
C - - - - - 0x017A05 05:B9F5: 85 00     STA ram_0000
C - - - - - 0x017A07 05:B9F7: B9 04 BA  LDA tbl_BA05 - $01,Y
C - - - - - 0x017A0A 05:B9FA: 85 01     STA ram_0001
C - - - - - 0x017A0C 05:B9FC: 20 9A DA  JSR sub_0x01DAAA_execute_indirect_jump_0000
C - - - - - 0x017A0F 05:B9FF: 90 03     BCC bra_BA04_RTS
bra_BA01:
C - - - - - 0x017A11 05:BA01: EE 43 03  INC ram_0343
bra_BA04_RTS:
C - - - - - 0x017A14 05:BA04: 60        RTS



tbl_BA05:
- D 1 - - - 0x017A15 05:BA05: 15 BA     .word ofs_023_BA15_01
- D 1 - - - 0x017A17 05:BA07: 1C BA     .word ofs_023_BA1C_02
- D 1 - - - 0x017A19 05:BA09: 2C BB     .word ofs_023_BB2C_03
- - - - - - 0x017A1B 05:BA0B: 07 BC     .word ofs_023_BC07_04
- D 1 - - - 0x017A1D 05:BA0D: 6D BC     .word ofs_023_BC6D_05
- D 1 - - - 0x017A1F 05:BA0F: EC BC     .word ofs_023_BCEC_06
- D 1 - - - 0x017A21 05:BA11: 14 BC     .word ofs_023_BC14_07
- - - - - - 0x017A23 05:BA13: EC BC     .word ofs_023_BCEC_08



bra_BA15:
ofs_023_BA15_01:
C - - J - - 0x017A25 05:BA15: A9 00     LDA #$00
C - - - - - 0x017A27 05:BA17: 8D 44 03  STA ram_0344
C - - - - - 0x017A2A 05:BA1A: 38        SEC
C - - - - - 0x017A2B 05:BA1B: 60        RTS



ofs_023_BA1C_02:
C - - J - - 0x017A2C 05:BA1C: A5 67     LDA ram_0067
C - - - - - 0x017A2E 05:BA1E: 29 03     AND #$03
C - - - - - 0x017A30 05:BA20: C9 03     CMP #$03
C - - - - - 0x017A32 05:BA22: D0 0A     BNE bra_BA2E
C - - - - - 0x017A34 05:BA24: 20 30 BA  JSR sub_BA30
C - - - - - 0x017A37 05:BA27: AD 44 03  LDA ram_0344
C - - - - - 0x017A3A 05:BA2A: C9 12     CMP #$12
C - - - - - 0x017A3C 05:BA2C: B0 E7     BCS bra_BA15
bra_BA2E:
C - - - - - 0x017A3E 05:BA2E: 18        CLC
C - - - - - 0x017A3F 05:BA2F: 60        RTS



bra_BA30:
sub_BA30:
C - - - - - 0x017A40 05:BA30: A9 02     LDA #$02
C - - - - - 0x017A42 05:BA32: 85 05     STA ram_0005
C - - - - - 0x017A44 05:BA34: A9 00     LDA #$00
C - - - - - 0x017A46 05:BA36: 85 03     STA ram_0003
C - - - - - 0x017A48 05:BA38: F0 0F     BEQ bra_BA49    ; jmp



sub_BA3A:
- - - - - - 0x017A4A 05:BA3A: AD 43 03  LDA ram_0343
- - - - - - 0x017A4D 05:BA3D: C9 04     CMP #$04
- - - - - - 0x017A4F 05:BA3F: 90 EF     BCC bra_BA30
- - - - - - 0x017A51 05:BA41: A5 A0     LDA ram_00A0
- - - - - - 0x017A53 05:BA43: 85 05     STA ram_0005
- - - - - - 0x017A55 05:BA45: A5 A1     LDA ram_00A1
- - - - - - 0x017A57 05:BA47: 85 03     STA ram_0003
bra_BA49:
C - - - - - 0x017A59 05:BA49: AD 44 03  LDA ram_0344
C - - - - - 0x017A5C 05:BA4C: 0A        ASL
C - - - - - 0x017A5D 05:BA4D: 0A        ASL
C - - - - - 0x017A5E 05:BA4E: 0A        ASL
C - - - - - 0x017A5F 05:BA4F: 85 02     STA ram_0002
C - - - - - 0x017A61 05:BA51: A9 78     LDA #< $0178    ; !!! возможно адрес стека
C - - - - - 0x017A63 05:BA53: 38        SEC
C - - - - - 0x017A64 05:BA54: E5 02     SBC ram_0002
C - - - - - 0x017A66 05:BA56: 85 02     STA ram_0002
C - - - - - 0x017A68 05:BA58: A9 01     LDA #> $0178
C - - - - - 0x017A6A 05:BA5A: E9 00     SBC #$00
C - - - - - 0x017A6C 05:BA5C: 85 04     STA ram_0004
C - - - - - 0x017A6E 05:BA5E: EE 44 03  INC ram_0344
C - - - - - 0x017A71 05:BA61: 4C 87 B7  JMP loc_B787



sub_BA64:
C - - - - - 0x017A74 05:BA64: 20 E2 BB  JSR sub_BBE2
; !!!
C - - - - - 0x017A77 05:BA67: B9 F2 BB  LDA tbl_BBF5 - $05 + $02,Y
C - - - - - 0x017A7A 05:BA6A: 18        CLC
C - - - - - 0x017A7B 05:BA6B: 65 AD     ADC ram_00AD
C - - - - - 0x017A7D 05:BA6D: 85 A2     STA ram_00A2
C - - - - - 0x017A7F 05:BA6F: B9 F1 BB  LDA tbl_BBF5 - $05 + $01,Y
C - - - - - 0x017A82 05:BA72: 65 AC     ADC ram_00AC
C - - - - - 0x017A84 05:BA74: 85 A1     STA ram_00A1
C - - - - - 0x017A86 05:BA76: 85 03     STA ram_0003
C - - - - - 0x017A88 05:BA78: 85 FD     STA ram_scroll_X
C - - - - - 0x017A8A 05:BA7A: B9 F0 BB  LDA tbl_BBF5 - $05,Y
C - - - - - 0x017A8D 05:BA7D: 65 AB     ADC ram_00AB
C - - - - - 0x017A8F 05:BA7F: 85 A0     STA ram_00A0
C - - - - - 0x017A91 05:BA81: 85 05     STA ram_0005
C - - - - - 0x017A93 05:BA83: B9 F4 BB  LDA tbl_BBF5 - $05 + $04,Y
C - - - - - 0x017A96 05:BA86: 18        CLC
C - - - - - 0x017A97 05:BA87: 65 AF     ADC ram_00AF
C - - - - - 0x017A99 05:BA89: 85 00     STA ram_0000
C - - - - - 0x017A9B 05:BA8B: B9 F3 BB  LDA tbl_BBF5 - $05 + $03,Y
C - - - - - 0x017A9E 05:BA8E: 65 AE     ADC ram_00AE
C - - - - - 0x017AA0 05:BA90: 85 01     STA ram_0001
C - - - - - 0x017AA2 05:BA92: A9 61     LDA #$61
C - - - - - 0x017AA4 05:BA94: 38        SEC
C - - - - - 0x017AA5 05:BA95: E5 00     SBC ram_0000
C - - - - - 0x017AA7 05:BA97: 85 04     STA ram_0004
C - - - - - 0x017AA9 05:BA99: A9 00     LDA #$00
C - - - - - 0x017AAB 05:BA9B: E5 01     SBC ram_0001
C - - - - - 0x017AAD 05:BA9D: 90 1D     BCC bra_BABC
C - - - - - 0x017AAF 05:BA9F: A5 04     LDA ram_0004
C - - - - - 0x017AB1 05:BAA1: C9 02     CMP #$02
C - - - - - 0x017AB3 05:BAA3: 90 17     BCC bra_BABC
C - - - - - 0x017AB5 05:BAA5: 85 4E     STA ram_004E
C - - - - - 0x017AB7 05:BAA7: A9 BC     LDA #$BC
C - - - - - 0x017AB9 05:BAA9: 38        SEC
C - - - - - 0x017ABA 05:BAAA: E5 4E     SBC ram_004E
C - - - - - 0x017ABC 05:BAAC: E5 4F     SBC ram_004F
C - - - - - 0x017ABE 05:BAAE: 85 59     STA ram_0059
C - - - - - 0x017AC0 05:BAB0: A5 DD     LDA ram_00DD
C - - - - - 0x017AC2 05:BAB2: 85 FC     STA ram_scroll_Y
C - - - - - 0x017AC4 05:BAB4: A5 DC     LDA ram_00DC
C - - - - - 0x017AC6 05:BAB6: 85 01     STA ram_0001
C - - - - - 0x017AC8 05:BAB8: A9 07     LDA #con_irq_07
C - - - - - 0x017ACA 05:BABA: D0 0D     BNE bra_BAC9    ; jmp
bra_BABC:
C - - - - - 0x017ACC 05:BABC: A5 00     LDA ram_0000
C - - - - - 0x017ACE 05:BABE: 85 FC     STA ram_scroll_Y
C - - - - - 0x017AD0 05:BAC0: A9 BD     LDA #$BD
C - - - - - 0x017AD2 05:BAC2: 38        SEC
C - - - - - 0x017AD3 05:BAC3: E5 4F     SBC ram_004F
C - - - - - 0x017AD5 05:BAC5: 85 4E     STA ram_004E
C - - - - - 0x017AD7 05:BAC7: A9 03     LDA #con_irq_03
bra_BAC9:
C - - - - - 0x017AD9 05:BAC9: 85 76     STA ram_irq_handler
C - - - - - 0x017ADB 05:BACB: A5 01     LDA ram_0001
C - - - - - 0x017ADD 05:BACD: 0A        ASL
C - - - - - 0x017ADE 05:BACE: 29 02     AND #$02
C - - - - - 0x017AE0 05:BAD0: 85 00     STA ram_0000
C - - - - - 0x017AE2 05:BAD2: 20 B4 B9  JSR sub_B9B4
C - - - - - 0x017AE5 05:BAD5: A9 60     LDA #$60
C - - - - - 0x017AE7 05:BAD7: 85 02     STA ram_0002
C - - - - - 0x017AE9 05:BAD9: A9 00     LDA #$00
C - - - - - 0x017AEB 05:BADB: 85 04     STA ram_0004
C - - - - - 0x017AED 05:BADD: A9 10     LDA #$10
C - - - - - 0x017AEF 05:BADF: 85 1E     STA ram_001E
C - - - - - 0x017AF1 05:BAE1: A9 09     LDA #con_DA9D_09
C - - - - - 0x017AF3 05:BAE3: 85 1F     STA ram_001F
C - - - - - 0x017AF5 05:BAE5: A5 67     LDA ram_0067
C - - - - - 0x017AF7 05:BAE7: 29 03     AND #$03
C - - - - - 0x017AF9 05:BAE9: C9 03     CMP #$03
C - - - - - 0x017AFB 05:BAEB: D0 3E     BNE bra_BB2B_RTS
C - - - - - 0x017AFD 05:BAED: A9 05     LDA #con_F3D6_05
C - - - - - 0x017AFF 05:BAEF: 4C B3 F3  JMP loc_0x01F3C3



sub_BAF2:
C - - - - - 0x017B02 05:BAF2: A9 98     LDA #$98
C - - - - - 0x017B04 05:BAF4: A4 75     LDY ram_stage
C - - - - - 0x017B06 05:BAF6: C0 02     CPY #$02
C - - - - - 0x017B08 05:BAF8: F0 02     BEQ bra_BAFC
C - - - - - 0x017B0A 05:BAFA: A9 80     LDA #$80
bra_BAFC:
C - - - - - 0x017B0C 05:BAFC: 85 03     STA ram_0003
C - - - - - 0x017B0E 05:BAFE: A9 00     LDA #$00
C - - - - - 0x017B10 05:BB00: 85 02     STA ram_0002
C - - - - - 0x017B12 05:BB02: 20 0F F6  JSR sub_0x01F61F
C - - - - - 0x017B15 05:BB05: A9 08     LDA #$08
C - - - - - 0x017B17 05:BB07: 85 00     STA ram_0000
C - - - - - 0x017B19 05:BB09: A5 03     LDA ram_0003
C - - - - - 0x017B1B 05:BB0B: 0A        ASL
C - - - - - 0x017B1C 05:BB0C: 26 00     ROL ram_0000
C - - - - - 0x017B1E 05:BB0E: 0A        ASL
C - - - - - 0x017B1F 05:BB0F: 26 00     ROL ram_0000
C - - - - - 0x017B21 05:BB11: 85 01     STA ram_0001
C - - - - - 0x017B23 05:BB13: A5 02     LDA ram_0002
C - - - - - 0x017B25 05:BB15: 29 01     AND #$01
C - - - - - 0x017B27 05:BB17: F0 02     BEQ bra_BB1B
C - - - - - 0x017B29 05:BB19: A9 0C     LDA #$0C
bra_BB1B:
C - - - - - 0x017B2B 05:BB1B: 05 00     ORA ram_0000
C - - - - - 0x017B2D 05:BB1D: 85 A9     STA ram_00A9
C - - - - - 0x017B2F 05:BB1F: A5 01     LDA ram_0001
C - - - - - 0x017B31 05:BB21: 85 AA     STA ram_00AA
C - - - - - 0x017B33 05:BB23: A5 61     LDA ram_0061
C - - - - - 0x017B35 05:BB25: 85 50     STA ram_0050
C - - - - - 0x017B37 05:BB27: A9 00     LDA #$00
C - - - - - 0x017B39 05:BB29: 85 51     STA ram_0051
bra_BB2B_RTS:
C - - - - - 0x017B3B 05:BB2B: 60        RTS



ofs_023_BB2C_03:
C - - J - - 0x017B3C 05:BB2C: A5 60     LDA ram_0060
C - - - - - 0x017B3E 05:BB2E: F0 02     BEQ bra_BB32
C - - - - - 0x017B40 05:BB30: 18        CLC
C - - - - - 0x017B41 05:BB31: 60        RTS
bra_BB32:
C - - - - - 0x017B42 05:BB32: A9 07     LDA #con_irq_07
C - - - - - 0x017B44 05:BB34: 85 76     STA ram_irq_handler
C - - - - - 0x017B46 05:BB36: A9 0F     LDA #$0F
C - - - - - 0x017B48 05:BB38: 85 4E     STA ram_004E
C - - - - - 0x017B4A 05:BB3A: A0 00     LDY #$00
C - - - - - 0x017B4C 05:BB3C: A5 75     LDA ram_stage
C - - - - - 0x017B4E 05:BB3E: C9 02     CMP #$02
C - - - - - 0x017B50 05:BB40: F0 02     BEQ bra_BB44
C - - - - - 0x017B52 05:BB42: A0 03     LDY #$03
bra_BB44:
C - - - - - 0x017B54 05:BB44: A5 63     LDA ram_0063
C - - - - - 0x017B56 05:BB46: F0 08     BEQ bra_BB50
C - - - - - 0x017B58 05:BB48: C8        INY
C - - - - - 0x017B59 05:BB49: A5 64     LDA ram_0064
C - - - - - 0x017B5B 05:BB4B: C9 08     CMP #$08
C - - - - - 0x017B5D 05:BB4D: 90 01     BCC bra_BB50
- - - - - - 0x017B5F 05:BB4F: C8        INY
bra_BB50:
C - - - - - 0x017B60 05:BB50: A5 64     LDA ram_0064
C - - - - - 0x017B62 05:BB52: 38        SEC
C - - - - - 0x017B63 05:BB53: F9 A9 BB  SBC tbl_BBA9,Y
C - - - - - 0x017B66 05:BB56: 85 4F     STA ram_004F
C - - - - - 0x017B68 05:BB58: 18        CLC
C - - - - - 0x017B69 05:BB59: 69 10     ADC #$10
C - - - - - 0x017B6B 05:BB5B: 85 00     STA ram_0000
C - - - - - 0x017B6D 05:BB5D: A9 BD     LDA #$BD
C - - - - - 0x017B6F 05:BB5F: 38        SEC
C - - - - - 0x017B70 05:BB60: E5 00     SBC ram_0000
C - - - - - 0x017B72 05:BB62: 85 59     STA ram_0059
C - - - - - 0x017B74 05:BB64: 20 E2 BB  JSR sub_BBE2
C - - - - - 0x017B77 05:BB67: A2 05     LDX #$05
bra_BB69_loop:
C - - - - - 0x017B79 05:BB69: A9 00     LDA #$00
C - - - - - 0x017B7B 05:BB6B: 95 AB     STA ram_00AB,X
C - - - - - 0x017B7D 05:BB6D: B9 F5 BB  LDA tbl_BBF5,Y
C - - - - - 0x017B80 05:BB70: 95 A0     STA ram_00A0,X
C - - - - - 0x017B82 05:BB72: 88        DEY
C - - - - - 0x017B83 05:BB73: CA        DEX
C - - - - - 0x017B84 05:BB74: 10 F3     BPL bra_BB69_loop
C - - - - - 0x017B86 05:BB76: A0 04     LDY #$04
C - - - - - 0x017B88 05:BB78: 98        TYA
C - - - - - 0x017B89 05:BB79: C5 75     CMP ram_stage
C - - - - - 0x017B8B 05:BB7B: F0 08     BEQ bra_BB85
C - - - - - 0x017B8D 05:BB7D: A0 00     LDY #$00
C - - - - - 0x017B8F 05:BB7F: C5 20     CMP ram_script_hi
C - - - - - 0x017B91 05:BB81: D0 02     BNE bra_BB85
C - - - - - 0x017B93 05:BB83: A0 02     LDY #$02
bra_BB85:
C - - - - - 0x017B95 05:BB85: B9 C1 BB  LDA tbl_BBC1,Y
C - - - - - 0x017B98 05:BB88: 85 00     STA ram_0000
C - - - - - 0x017B9A 05:BB8A: B9 C2 BB  LDA tbl_BBC1 + $01,Y
C - - - - - 0x017B9D 05:BB8D: 85 01     STA ram_0001
C - - - - - 0x017B9F 05:BB8F: A9 01     LDA #$01
C - - - - - 0x017BA1 05:BB91: 85 02     STA ram_0002
C - - - - - 0x017BA3 05:BB93: A0 00     LDY #$00
C - - - - - 0x017BA5 05:BB95: 20 D8 F4  JSR sub_0x01F4E8
C - - - - - 0x017BA8 05:BB98: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x017BAB 05:BB9B: 20 64 BA  JSR sub_BA64
C - - - - - 0x017BAE 05:BB9E: A5 20     LDA ram_script_hi
C - - - - - 0x017BB0 05:BBA0: C9 04     CMP #$04
C - - - - - 0x017BB2 05:BBA2: D0 0B     BNE bra_BBAF
C - - - - - 0x017BB4 05:BBA4: 8D 43 03  STA ram_0343
C - - - - - 0x017BB7 05:BBA7: 38        SEC
C - - - - - 0x017BB8 05:BBA8: 60        RTS



tbl_BBA9:
; 00 
- - - - - - 0x017BB9 05:BBA9: D3        .byte $D3   ; 
- D 1 - - - 0x017BBA 05:BBAA: DB        .byte $DB   ; 
- - - - - - 0x017BBB 05:BBAB: E3        .byte $E3   ; 
; 03 
- - - - - - 0x017BBC 05:BBAC: BB        .byte $BB   ; 
- D 1 - - - 0x017BBD 05:BBAD: C3        .byte $C3   ; 
- - - - - - 0x017BBE 05:BBAE: CB        .byte $CB   ; 



bra_BBAF:
C - - - - - 0x017BBF 05:BBAF: A9 06     LDA #$06
C - - - - - 0x017BC1 05:BBB1: 8D 43 03  STA ram_0343
C - - - - - 0x017BC4 05:BBB4: A5 75     LDA ram_stage
C - - - - - 0x017BC6 05:BBB6: C9 04     CMP #$04
C - - - - - 0x017BC8 05:BBB8: D0 05     BNE bra_BBBF
C - - - - - 0x017BCA 05:BBBA: A9 98     LDA #con_music_98
C - - - - - 0x017BCC 05:BBBC: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_BBBF:
C - - - - - 0x017BCF 05:BBBF: 38        SEC
C - - - - - 0x017BD0 05:BBC0: 60        RTS



tbl_BBC1:
- D 1 - - - 0x017BD1 05:BBC1: C7 BB     .word off_BBC7_00
- D 1 - - - 0x017BD3 05:BBC3: D4 BB     .word off_BBD4_01
- D 1 - - - 0x017BD5 05:BBC5: DE BB     .word off_BBDE_02



off_BBC7_00:
- D 1 - I - 0x017BD7 05:BBC7: 0C        .byte $0C   ; 
- D 1 - I - 0x017BD8 05:BBC8: 20        .byte $20   ; 
- D 1 - I - 0x017BD9 05:BBC9: 31        .byte $31   ; 
- D 1 - I - 0x017BDA 05:BBCA: 00        .byte $00   ; 
- D 1 - I - 0x017BDB 05:BBCB: 33        .byte $33   ; 
- D 1 - I - 0x017BDC 05:BBCC: 2A        .byte $2A   ; 
- D 1 - I - 0x017BDD 05:BBCD: 0A        .byte $0A   ; 
- D 1 - I - 0x017BDE 05:BBCE: 16        .byte $16   ; 
- D 1 - I - 0x017BDF 05:BBCF: 10        .byte $10   ; 
- D 1 - I - 0x017BE0 05:BBD0: 05        .byte $05   ; 
- D 1 - I - 0x017BE1 05:BBD1: 33        .byte $33   ; 
- D 1 - I - 0x017BE2 05:BBD2: 28        .byte $28   ; 
- D 1 - I - 0x017BE3 05:BBD3: 0A        .byte $0A   ; 

off_BBD4_01:
- D 1 - I - 0x017BE4 05:BBD4: 19        .byte $19   ; 
- D 1 - I - 0x017BE5 05:BBD5: 36        .byte $36   ; 
- D 1 - I - 0x017BE6 05:BBD6: 16        .byte $16   ; 
- D 1 - I - 0x017BE7 05:BBD7: 05        .byte $05   ; 
- D 1 - I - 0x017BE8 05:BBD8: 16        .byte $16   ; 
- D 1 - I - 0x017BE9 05:BBD9: 10        .byte $10   ; 
- D 1 - I - 0x017BEA 05:BBDA: 05        .byte $05   ; 
- D 1 - I - 0x017BEB 05:BBDB: 36        .byte $36   ; 
- D 1 - I - 0x017BEC 05:BBDC: 05        .byte $05   ; 
- D 1 - I - 0x017BED 05:BBDD: 0F        .byte $0F   ; 

off_BBDE_02:
- D 1 - I - 0x017BEE 05:BBDE: 23        .byte $23   ; 
- D 1 - I - 0x017BEF 05:BBDF: 20        .byte $20   ; 
- D 1 - I - 0x017BF0 05:BBE0: 00        .byte $00   ; 
- D 1 - I - 0x017BF1 05:BBE1: 11        .byte $11   ; 



sub_BBE2:
C - - - - - 0x017BF2 05:BBE2: A0 0B     LDY #$0B
C - - - - - 0x017BF4 05:BBE4: A5 75     LDA ram_stage
C - - - - - 0x017BF6 05:BBE6: C9 02     CMP #$02
C - - - - - 0x017BF8 05:BBE8: D0 0A     BNE bra_BBF4_RTS
C - - - - - 0x017BFA 05:BBEA: A0 05     LDY #$05
C - - - - - 0x017BFC 05:BBEC: A5 20     LDA ram_script_hi
C - - - - - 0x017BFE 05:BBEE: C9 04     CMP #$04
C - - - - - 0x017C00 05:BBF0: D0 02     BNE bra_BBF4_RTS
C - - - - - 0x017C02 05:BBF2: A0 11     LDY #$11
bra_BBF4_RTS:
C - - - - - 0x017C04 05:BBF4: 60        RTS



tbl_BBF5:
- D 1 - - - 0x017C05 05:BBF5: 04        .byte $04   ; 
- D 1 - - - 0x017C06 05:BBF6: 00        .byte $00   ; 
- D 1 - - - 0x017C07 05:BBF7: 00        .byte $00   ; 
- D 1 - - - 0x017C08 05:BBF8: 00        .byte $00   ; 
- D 1 - - - 0x017C09 05:BBF9: 30        .byte $30   ; 
- D 1 - - - 0x017C0A 05:BBFA: 00        .byte $00   ; 
- D 1 - - - 0x017C0B 05:BBFB: 02        .byte $02   ; 
- D 1 - - - 0x017C0C 05:BBFC: 00        .byte $00   ; 
- D 1 - - - 0x017C0D 05:BBFD: 00        .byte $00   ; 
- D 1 - - - 0x017C0E 05:BBFE: 00        .byte $00   ; 
- D 1 - - - 0x017C0F 05:BBFF: 30        .byte $30   ; 
- D 1 - - - 0x017C10 05:BC00: 00        .byte $00   ; 
- D 1 - - - 0x017C11 05:BC01: 00        .byte $00   ; 
- D 1 - - - 0x017C12 05:BC02: 00        .byte $00   ; 
- D 1 - - - 0x017C13 05:BC03: 00        .byte $00   ; 
- D 1 - - - 0x017C14 05:BC04: 00        .byte $00   ; 
- D 1 - - - 0x017C15 05:BC05: 30        .byte $30   ; 
- D 1 - - - 0x017C16 05:BC06: 00        .byte $00   ; 



ofs_023_BC07_04:
- - - - - - 0x017C17 05:BC07: A0 03     LDY #$03
bra_BC09_loop:
- - - - - - 0x017C19 05:BC09: B9 69 00  LDA ram_0069,Y
- - - - - - 0x017C1C 05:BC0C: 99 46 03  STA ram_0346,Y
- - - - - - 0x017C1F 05:BC0F: 88        DEY
- - - - - - 0x017C20 05:BC10: 10 F7     BPL bra_BC09_loop
- - - - - - 0x017C22 05:BC12: 30 0F     BMI bra_BC23    ; jmp



loc_BC14:
ofs_023_BC14_07:
C D 1 J - - 0x017C24 05:BC14: A5 75     LDA ram_stage
C - - - - - 0x017C26 05:BC16: C9 02     CMP #$02
C - - - - - 0x017C28 05:BC18: F0 09     BEQ bra_BC23
C - - - - - 0x017C2A 05:BC1A: A5 AC     LDA ram_00AC
C - - - - - 0x017C2C 05:BC1C: 05 AB     ORA ram_00AB
C - - - - - 0x017C2E 05:BC1E: F0 03     BEQ bra_BC23
C - - - - - 0x017C30 05:BC20: 20 FC BC  JSR sub_BCFC
bra_BC23:
C - - - - - 0x017C33 05:BC23: A9 00     LDA #$00
C - - - - - 0x017C35 05:BC25: 85 00     STA ram_0000
C - - - - - 0x017C37 05:BC27: AD 46 03  LDA ram_0346
C - - - - - 0x017C3A 05:BC2A: 10 02     BPL bra_BC2E
C - - - - - 0x017C3C 05:BC2C: C6 00     DEC ram_0000
bra_BC2E:
C - - - - - 0x017C3E 05:BC2E: A5 AD     LDA ram_00AD
C - - - - - 0x017C40 05:BC30: 18        CLC
C - - - - - 0x017C41 05:BC31: 6D 47 03  ADC ram_0347
C - - - - - 0x017C44 05:BC34: 85 AD     STA ram_00AD
C - - - - - 0x017C46 05:BC36: A5 AC     LDA ram_00AC
C - - - - - 0x017C48 05:BC38: 6D 46 03  ADC ram_0346
C - - - - - 0x017C4B 05:BC3B: 85 AC     STA ram_00AC
C - - - - - 0x017C4D 05:BC3D: A5 00     LDA ram_0000
C - - - - - 0x017C4F 05:BC3F: 85 1D     STA ram_001D
C - - - - - 0x017C51 05:BC41: 65 AB     ADC ram_00AB
C - - - - - 0x017C53 05:BC43: 85 AB     STA ram_00AB
C - - - - - 0x017C55 05:BC45: A9 00     LDA #$00
C - - - - - 0x017C57 05:BC47: 85 00     STA ram_0000
C - - - - - 0x017C59 05:BC49: AD 48 03  LDA ram_0348
C - - - - - 0x017C5C 05:BC4C: 10 02     BPL bra_BC50
C - - - - - 0x017C5E 05:BC4E: C6 00     DEC ram_0000
bra_BC50:
C - - - - - 0x017C60 05:BC50: A5 B0     LDA ram_00B0
C - - - - - 0x017C62 05:BC52: 18        CLC
C - - - - - 0x017C63 05:BC53: 6D 49 03  ADC ram_0349
C - - - - - 0x017C66 05:BC56: 85 B0     STA ram_00B0
C - - - - - 0x017C68 05:BC58: A5 AF     LDA ram_00AF
C - - - - - 0x017C6A 05:BC5A: 6D 48 03  ADC ram_0348
C - - - - - 0x017C6D 05:BC5D: 85 AF     STA ram_00AF
C - - - - - 0x017C6F 05:BC5F: A5 00     LDA ram_0000
C - - - - - 0x017C71 05:BC61: 65 AE     ADC ram_00AE
C - - - - - 0x017C73 05:BC63: 85 AE     STA ram_00AE
C - - - - - 0x017C75 05:BC65: 20 F2 BA  JSR sub_BAF2
C - - - - - 0x017C78 05:BC68: 20 64 BA  JSR sub_BA64
C - - - - - 0x017C7B 05:BC6B: 18        CLC
C - - - - - 0x017C7C 05:BC6C: 60        RTS



ofs_023_BC6D_05:
C - - J - - 0x017C7D 05:BC6D: 20 FC BC  JSR sub_BCFC
C - - - - - 0x017C80 05:BC70: A5 4A     LDA ram_004A
C - - - - - 0x017C82 05:BC72: D0 18     BNE bra_BC8C
C - - - - - 0x017C84 05:BC74: AD 45 03  LDA ram_0345
C - - - - - 0x017C87 05:BC77: 0A        ASL
C - - - - - 0x017C88 05:BC78: A8        TAY
C - - - - - 0x017C89 05:BC79: EE 45 03  INC ram_0345
C - - - - - 0x017C8C 05:BC7C: B9 B7 BC  LDA tbl_BCB7,Y
C - - - - - 0x017C8F 05:BC7F: C9 FF     CMP #$FF
C - - - - - 0x017C91 05:BC81: F0 32     BEQ bra_BCB5
C - - - - - 0x017C93 05:BC83: 85 4B     STA ram_004B
C - - - - - 0x017C95 05:BC85: B9 B8 BC  LDA tbl_BCB7 + $01,Y
C - - - - - 0x017C98 05:BC88: 85 4A     STA ram_004A
C - - - - - 0x017C9A 05:BC8A: D0 02     BNE bra_BC8E
bra_BC8C:
C - - - - - 0x017C9C 05:BC8C: C6 4A     DEC ram_004A
bra_BC8E:
C - - - - - 0x017C9E 05:BC8E: A5 4B     LDA ram_004B
C - - - - - 0x017CA0 05:BC90: 10 05     BPL bra_BC97
- - - - - - 0x017CA2 05:BC92: A4 A0     LDY ram_00A0
- - - - - - 0x017CA4 05:BC94: D0 01     BNE bra_BC97
- - - - - - 0x017CA6 05:BC96: 98        TYA
bra_BC97:
C - - - - - 0x017CA7 05:BC97: 0A        ASL
C - - - - - 0x017CA8 05:BC98: 0A        ASL
C - - - - - 0x017CA9 05:BC99: A8        TAY
C - - - - - 0x017CAA 05:BC9A: B9 C8 BC  LDA tbl_BCC8,Y
C - - - - - 0x017CAD 05:BC9D: 8D 47 03  STA ram_0347
C - - - - - 0x017CB0 05:BCA0: B9 C9 BC  LDA tbl_BCC9,Y
C - - - - - 0x017CB3 05:BCA3: 8D 46 03  STA ram_0346
C - - - - - 0x017CB6 05:BCA6: B9 CA BC  LDA tbl_BCCA,Y
C - - - - - 0x017CB9 05:BCA9: 8D 49 03  STA ram_0349
C - - - - - 0x017CBC 05:BCAC: B9 CB BC  LDA tbl_BCCB,Y
C - - - - - 0x017CBF 05:BCAF: 8D 48 03  STA ram_0348
C - - - - - 0x017CC2 05:BCB2: 4C 14 BC  JMP loc_BC14
bra_BCB5:
C - - - - - 0x017CC5 05:BCB5: 38        SEC
C - - - - - 0x017CC6 05:BCB6: 60        RTS



tbl_BCB7:
- D 1 - - - 0x017CC7 05:BCB7: 07        .byte $07, $FF   ; 
- D 1 - - - 0x017CC9 05:BCB9: 07        .byte $07, $38   ; 
- D 1 - - - 0x017CCB 05:BCBB: 00        .byte $00, $40   ; 
- D 1 - - - 0x017CCD 05:BCBD: 02        .byte $02, $20   ; 
- D 1 - - - 0x017CCF 05:BCBF: 07        .byte $07, $10   ; 
- D 1 - - - 0x017CD1 05:BCC1: 03        .byte $03, $10   ; 
- D 1 - - - 0x017CD3 05:BCC3: 01        .byte $01, $20   ; 
- D 1 - - - 0x017CD5 05:BCC5: 08        .byte $08, $60   ; 
- D 1 - - - 0x017CD7 05:BCC7: FF        .byte $FF   ; 


; ???
tbl_BCC8:
- D 1 - - - 0x017CD8 05:BCC8: 00        .byte $00   ; 
tbl_BCC9:
- D 1 - - - 0x017CD9 05:BCC9: 00        .byte $00   ; 
tbl_BCCA:
- D 1 - - - 0x017CDA 05:BCCA: 00        .byte $00   ; 
tbl_BCCB:
- D 1 - - - 0x017CDB 05:BCCB: 00        .byte $00   ; 
- D 1 - - - 0x017CDC 05:BCCC: 00        .byte $00   ; 
- D 1 - - - 0x017CDD 05:BCCD: 00        .byte $00   ; 
- D 1 - - - 0x017CDE 05:BCCE: 00        .byte $00   ; 
- D 1 - - - 0x017CDF 05:BCCF: 01        .byte $01   ; 
- D 1 - - - 0x017CE0 05:BCD0: 4B        .byte $4B   ; 
- D 1 - - - 0x017CE1 05:BCD1: FF        .byte $FF   ; 
- D 1 - - - 0x017CE2 05:BCD2: B5        .byte $B5   ; 
- D 1 - - - 0x017CE3 05:BCD3: 00        .byte $00   ; 
- D 1 - - - 0x017CE4 05:BCD4: 00        .byte $00   ; 
- D 1 - - - 0x017CE5 05:BCD5: FF        .byte $FF   ; 
- D 1 - - - 0x017CE6 05:BCD6: 00        .byte $00   ; 
- D 1 - - - 0x017CE7 05:BCD7: 00        .byte $00   ; 
- - - - - - 0x017CE8 05:BCD8: 4B        .byte $4B   ; 
- - - - - - 0x017CE9 05:BCD9: FF        .byte $FF   ; 
- - - - - - 0x017CEA 05:BCDA: 4B        .byte $4B   ; 
- - - - - - 0x017CEB 05:BCDB: FF        .byte $FF   ; 
- - - - - - 0x017CEC 05:BCDC: 00        .byte $00   ; 
- - - - - - 0x017CED 05:BCDD: 00        .byte $00   ; 
- - - - - - 0x017CEE 05:BCDE: 00        .byte $00   ; 
- - - - - - 0x017CEF 05:BCDF: FF        .byte $FF   ; 
- - - - - - 0x017CF0 05:BCE0: B5        .byte $B5   ; 
- - - - - - 0x017CF1 05:BCE1: 00        .byte $00   ; 
- - - - - - 0x017CF2 05:BCE2: 4B        .byte $4B   ; 
- - - - - - 0x017CF3 05:BCE3: FF        .byte $FF   ; 
- D 1 - - - 0x017CF4 05:BCE4: 00        .byte $00   ; 
- D 1 - - - 0x017CF5 05:BCE5: 01        .byte $01   ; 
- D 1 - - - 0x017CF6 05:BCE6: 00        .byte $00   ; 
- D 1 - - - 0x017CF7 05:BCE7: 00        .byte $00   ; 
- D 1 - - - 0x017CF8 05:BCE8: B5        .byte $B5   ; 
- D 1 - - - 0x017CF9 05:BCE9: 00        .byte $00   ; 
- D 1 - - - 0x017CFA 05:BCEA: B5        .byte $B5   ; 
- D 1 - - - 0x017CFB 05:BCEB: 00        .byte $00   ; 



ofs_023_BCEC_06:
ofs_023_BCEC_08:
C - - J - - 0x017CFC 05:BCEC: A9 00     LDA #$00
C - - - - - 0x017CFE 05:BCEE: 8D 43 03  STA ram_0343
C - - - - - 0x017D01 05:BCF1: 8D 44 03  STA ram_0344
C - - - - - 0x017D04 05:BCF4: 8D 45 03  STA ram_0345
C - - - - - 0x017D07 05:BCF7: 8D 32 03  STA ram_0332
C - - - - - 0x017D0A 05:BCFA: 18        CLC
C - - - - - 0x017D0B 05:BCFB: 60        RTS



sub_BCFC:
C - - - - - 0x017D0C 05:BCFC: A5 45     LDA ram_0045
C - - - - - 0x017D0E 05:BCFE: D0 0D     BNE bra_BD0D
C - - - - - 0x017D10 05:BD00: AD 32 03  LDA ram_0332
C - - - - - 0x017D13 05:BD03: D0 08     BNE bra_BD0D
C - - - - - 0x017D15 05:BD05: A9 01     LDA #$01
C - - - - - 0x017D17 05:BD07: 8D 32 03  STA ram_0332
C - - - - - 0x017D1A 05:BD0A: 8D 33 03  STA ram_0333
bra_BD0D:
C - - - - - 0x017D1D 05:BD0D: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x017D20 05:BD10: A6 39     LDX ram_buffer_index_2
C - - - - - 0x017D22 05:BD12: E0 20     CPX #$20
C - - - - - 0x017D24 05:BD14: 90 01     BCC bra_BD17
bra_BD16_RTS:
C - - - - - 0x017D26 05:BD16: 60        RTS
bra_BD17:
C - - - - - 0x017D27 05:BD17: A9 00     LDA #$00
C - - - - - 0x017D29 05:BD19: 85 10     STA ram_0010
C - - - - - 0x017D2B 05:BD1B: A5 67     LDA ram_0067
C - - - - - 0x017D2D 05:BD1D: 29 03     AND #$03
C - - - - - 0x017D2F 05:BD1F: C9 02     CMP #$02
C - - - - - 0x017D31 05:BD21: D0 F3     BNE bra_BD16_RTS
C - - - - - 0x017D33 05:BD23: A5 67     LDA ram_0067
C - - - - - 0x017D35 05:BD25: 29 04     AND #$04
C - - - - - 0x017D37 05:BD27: F0 02     BEQ bra_BD2B
C - - - - - 0x017D39 05:BD29: A9 01     LDA #$01
bra_BD2B:
C - - - - - 0x017D3B 05:BD2B: 8D 44 03  STA ram_0344
C - - - - - 0x017D3E 05:BD2E: A5 A1     LDA ram_00A1
C - - - - - 0x017D40 05:BD30: 85 11     STA ram_0011
C - - - - - 0x017D42 05:BD32: A5 A0     LDA ram_00A0
C - - - - - 0x017D44 05:BD34: 4A        LSR
C - - - - - 0x017D45 05:BD35: 66 11     ROR ram_0011
C - - - - - 0x017D47 05:BD37: 4A        LSR
C - - - - - 0x017D48 05:BD38: 66 11     ROR ram_0011
C - - - - - 0x017D4A 05:BD3A: 46 11     LSR ram_0011
C - - - - - 0x017D4C 05:BD3C: A9 00     LDA #$00
C - - - - - 0x017D4E 05:BD3E: 85 17     STA ram_0017
C - - - - - 0x017D50 05:BD40: A4 10     LDY ram_0010
C - - - - - 0x017D52 05:BD42: 20 4D BD  JSR sub_BD4D
C - - - - - 0x017D55 05:BD45: E6 17     INC ram_0017
C - - - - - 0x017D57 05:BD47: A4 10     LDY ram_0010
C - - - - - 0x017D59 05:BD49: C8        INY
C - - - - - 0x017D5A 05:BD4A: C8        INY
C - - - - - 0x017D5B 05:BD4B: 84 10     STY ram_0010
sub_BD4D:
C - - - - - 0x017D5D 05:BD4D: A5 11     LDA ram_0011
C - - - - - 0x017D5F 05:BD4F: 38        SEC
C - - - - - 0x017D60 05:BD50: F9 F5 BD  SBC tbl_BDF5,Y
C - - - - - 0x017D63 05:BD53: B0 16     BCS bra_BD6B
C - - - - - 0x017D65 05:BD55: 69 20     ADC #$20
C - - - - - 0x017D67 05:BD57: F0 51     BEQ bra_BDAA_RTS
C - - - - - 0x017D69 05:BD59: 30 4F     BMI bra_BDAA_RTS
C - - - - - 0x017D6B 05:BD5B: D9 F6 BD  CMP tbl_BDF5 + $01,Y
C - - - - - 0x017D6E 05:BD5E: 90 03     BCC bra_BD63
C - - - - - 0x017D70 05:BD60: B9 F6 BD  LDA tbl_BDF5 + $01,Y
bra_BD63:
C - - - - - 0x017D73 05:BD63: 85 04     STA ram_0004
C - - - - - 0x017D75 05:BD65: A9 00     LDA #$00
C - - - - - 0x017D77 05:BD67: 85 12     STA ram_0012
C - - - - - 0x017D79 05:BD69: F0 0D     BEQ bra_BD78    ; jmp
bra_BD6B:
C - - - - - 0x017D7B 05:BD6B: 85 12     STA ram_0012
C - - - - - 0x017D7D 05:BD6D: B9 F6 BD  LDA tbl_BDF5 + $01,Y
C - - - - - 0x017D80 05:BD70: E5 12     SBC ram_0012
C - - - - - 0x017D82 05:BD72: F0 36     BEQ bra_BDAA_RTS
C - - - - - 0x017D84 05:BD74: 30 34     BMI bra_BDAA_RTS
C - - - - - 0x017D86 05:BD76: 85 04     STA ram_0004
bra_BD78:
C - - - - - 0x017D88 05:BD78: A5 12     LDA ram_0012
C - - - - - 0x017D8A 05:BD7A: 18        CLC
C - - - - - 0x017D8B 05:BD7B: 79 F5 BD  ADC tbl_BDF5,Y
C - - - - - 0x017D8E 05:BD7E: 85 05     STA ram_0005
C - - - - - 0x017D90 05:BD80: A5 12     LDA ram_0012
C - - - - - 0x017D92 05:BD82: 18        CLC
C - - - - - 0x017D93 05:BD83: 79 F1 BD  ADC tbl_BDF1_ppu,Y
C - - - - - 0x017D96 05:BD86: 85 00     STA ram_0000
C - - - - - 0x017D98 05:BD88: B9 F2 BD  LDA tbl_BDF1_ppu + $01,Y
C - - - - - 0x017D9B 05:BD8B: 69 00     ADC #$00
C - - - - - 0x017D9D 05:BD8D: 85 01     STA ram_0001
C - - - - - 0x017D9F 05:BD8F: AD 44 03  LDA ram_0344
C - - - - - 0x017DA2 05:BD92: 18        CLC
C - - - - - 0x017DA3 05:BD93: 65 10     ADC ram_0010
C - - - - - 0x017DA5 05:BD95: 0A        ASL
C - - - - - 0x017DA6 05:BD96: A8        TAY
C - - - - - 0x017DA7 05:BD97: B9 F9 BD  LDA tbl_BDF9,Y
C - - - - - 0x017DAA 05:BD9A: 18        CLC
C - - - - - 0x017DAB 05:BD9B: 65 12     ADC ram_0012
C - - - - - 0x017DAD 05:BD9D: 85 02     STA ram_0002
C - - - - - 0x017DAF 05:BD9F: B9 FA BD  LDA tbl_BDF9 + $01,Y
C - - - - - 0x017DB2 05:BDA2: 69 00     ADC #$00
C - - - - - 0x017DB4 05:BDA4: 85 03     STA ram_0003
C - - - - - 0x017DB6 05:BDA6: A0 00     LDY #$00
C - - - - - 0x017DB8 05:BDA8: F0 01     BEQ bra_BDAB    ; jmp
bra_BDAA_RTS:
C - - - - - 0x017DBA 05:BDAA: 60        RTS
bra_BDAB:
C - - - - - 0x017DBB 05:BDAB: A9 01     LDA #$01
C - - - - - 0x017DBD 05:BDAD: 85 06     STA ram_0006
C - - - - - 0x017DBF 05:BDAF: A5 17     LDA ram_0017
C - - - - - 0x017DC1 05:BDB1: 18        CLC
C - - - - - 0x017DC2 05:BDB2: 69 01     ADC #$01
C - - - - - 0x017DC4 05:BDB4: 20 24 DE  JSR sub_0x01DE34
C - - - - - 0x017DC7 05:BDB7: A5 17     LDA ram_0017
C - - - - - 0x017DC9 05:BDB9: F0 04     BEQ bra_BDBF
C - - - - - 0x017DCB 05:BDBB: A9 03     LDA #$03
C - - - - - 0x017DCD 05:BDBD: 85 04     STA ram_0004
bra_BDBF:
C - - - - - 0x017DCF 05:BDBF: A5 00     LDA ram_0000
C - - - - - 0x017DD1 05:BDC1: 20 24 DE  JSR sub_0x01DE34
C - - - - - 0x017DD4 05:BDC4: A5 01     LDA ram_0001
C - - - - - 0x017DD6 05:BDC6: 20 24 DE  JSR sub_0x01DE34
bra_BDC9_loop:
C - - - - - 0x017DD9 05:BDC9: B1 02     LDA (ram_0002),Y
C - - - - - 0x017DDB 05:BDCB: 20 24 DE  JSR sub_0x01DE34
C - - - - - 0x017DDE 05:BDCE: A5 17     LDA ram_0017
C - - - - - 0x017DE0 05:BDD0: D0 08     BNE bra_BDDA
C - - - - - 0x017DE2 05:BDD2: E6 05     INC ram_0005
C - - - - - 0x017DE4 05:BDD4: A5 05     LDA ram_0005
C - - - - - 0x017DE6 05:BDD6: 29 1F     AND #$1F
C - - - - - 0x017DE8 05:BDD8: F0 14     BEQ bra_BDEE
bra_BDDA:
C - - - - - 0x017DEA 05:BDDA: C8        INY
C - - - - - 0x017DEB 05:BDDB: C6 04     DEC ram_0004
C - - - - - 0x017DED 05:BDDD: D0 EA     BNE bra_BDC9_loop
C - - - - - 0x017DEF 05:BDDF: A9 FF     LDA #$FF
C - - - - - 0x017DF1 05:BDE1: 20 24 DE  JSR sub_0x01DE34
C - - - - - 0x017DF4 05:BDE4: 86 39     STX ram_buffer_index_2
C - - - - - 0x017DF6 05:BDE6: E6 00     INC ram_0000
C - - - - - 0x017DF8 05:BDE8: A5 00     LDA ram_0000
C - - - - - 0x017DFA 05:BDEA: 29 1F     AND #$1F
C - - - - - 0x017DFC 05:BDEC: D0 BC     BNE bra_BDAA_RTS
bra_BDEE:
- - - - - - 0x017DFE 05:BDEE: 4C B5 DE  JMP loc_0x01DEC5



tbl_BDF1_ppu:
- D 1 - - - 0x017E01 05:BDF1: E8 21     .word $21E8 ; 00 
- D 1 - - - 0x017E03 05:BDF3: F6 21     .word $21F6 ; 02 



tbl_BDF5:
;                                              +---------- 
;                                              |    +----- limit?
;                                              |    |
- D 1 - - - 0x017E05 05:BDF5: 28        .byte $28, $0E   ; 
- D 1 - - - 0x017E07 05:BDF7: 36        .byte $36, $01   ; 



tbl_BDF9:
- D 1 - - - 0x017E09 05:BDF9: 07 BE     .word off_BE07_00
- D 1 - - - 0x017E0B 05:BDFB: 15 BE     .word off_BE15_01
- D 1 - - - 0x017E0D 05:BDFD: 01 BE     .word off_BE01_02
- D 1 - - - 0x017E0F 05:BDFF: 04 BE     .word off_BE04_03



off_BE01_02:
- D 1 - I - 0x017E11 05:BE01: 9E        .byte $9E   ; 
- D 1 - I - 0x017E12 05:BE02: AE        .byte $AE   ; 
- D 1 - I - 0x017E13 05:BE03: BE        .byte $BE   ; 

off_BE04_03:
- D 1 - I - 0x017E14 05:BE04: 9F        .byte $9F   ; 
- D 1 - I - 0x017E15 05:BE05: AF        .byte $AF   ; 
- D 1 - I - 0x017E16 05:BE06: BF        .byte $BF   ; 

off_BE07_00:
- D 1 - I - 0x017E17 05:BE07: 8E        .byte $8E   ; 
- D 1 - I - 0x017E18 05:BE08: 8E        .byte $8E   ; 
- D 1 - I - 0x017E19 05:BE09: 8E        .byte $8E   ; 
- D 1 - I - 0x017E1A 05:BE0A: 8E        .byte $8E   ; 
- D 1 - I - 0x017E1B 05:BE0B: 84        .byte $84   ; 
- D 1 - I - 0x017E1C 05:BE0C: 85        .byte $85   ; 
- D 1 - I - 0x017E1D 05:BE0D: 86        .byte $86   ; 
- D 1 - I - 0x017E1E 05:BE0E: 87        .byte $87   ; 
- D 1 - I - 0x017E1F 05:BE0F: 88        .byte $88   ; 
- D 1 - I - 0x017E20 05:BE10: 8E        .byte $8E   ; 
- D 1 - I - 0x017E21 05:BE11: 8E        .byte $8E   ; 
- D 1 - I - 0x017E22 05:BE12: 8E        .byte $8E   ; 
- D 1 - I - 0x017E23 05:BE13: 8E        .byte $8E   ; 
- D 1 - I - 0x017E24 05:BE14: 8E        .byte $8E   ; 

off_BE15_01:
- D 1 - I - 0x017E25 05:BE15: 89        .byte $89   ; 
- D 1 - I - 0x017E26 05:BE16: 88        .byte $88   ; 
- D 1 - I - 0x017E27 05:BE17: 89        .byte $89   ; 
- D 1 - I - 0x017E28 05:BE18: 88        .byte $88   ; 
- D 1 - I - 0x017E29 05:BE19: 89        .byte $89   ; 
- D 1 - I - 0x017E2A 05:BE1A: 8A        .byte $8A   ; 
- D 1 - I - 0x017E2B 05:BE1B: 8B        .byte $8B   ; 
- D 1 - I - 0x017E2C 05:BE1C: 8C        .byte $8C   ; 
- D 1 - I - 0x017E2D 05:BE1D: 8D        .byte $8D   ; 
- D 1 - I - 0x017E2E 05:BE1E: 88        .byte $88   ; 
- D 1 - I - 0x017E2F 05:BE1F: 89        .byte $89   ; 
- D 1 - I - 0x017E30 05:BE20: 88        .byte $88   ; 
- D 1 - I - 0x017E31 05:BE21: 89        .byte $89   ; 
- D 1 - I - 0x017E32 05:BE22: 88        .byte $88   ; 



_off012_0x017E33_10_credits:
; 00-7E = print byte xx times
; 80-FE = print a list of bytes xx times
; 7F = change ppu address
; FF = end token
; first 2 bytes are not read, because 0x0146DB jumps to 0x01D1CE
- - - - - - 0x017E33 05:BE23: 00 20     .word $2000 ; 

- D 1 - I - 0x017E35 05:BE25: 40        .byte $40   ; 
- D 1 - I - 0x017E36 05:BE26: 40        .byte $40   ; 

- D 1 - I - 0x017E37 05:BE27: A0        .byte $80 + $20   ; 
- D 1 - I - 0x017E38 05:BE28: 41        .byte $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42   ; 
- D 1 - I - 0x017E48 05:BE38: 41        .byte $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42, $41, $42   ; 

- D 1 - I - 0x017E58 05:BE48: 19        .byte $19   ; 
- D 1 - I - 0x017E59 05:BE49: 43        .byte $43   ; 

- D 1 - I - 0x017E5A 05:BE4A: 81        .byte $80 + $01   ; 
- D 1 - I - 0x017E5B 05:BE4B: 94        .byte $94   ; 

- D 1 - I - 0x017E5C 05:BE4C: 06        .byte $06   ; 
- D 1 - I - 0x017E5D 05:BE4D: 43        .byte $43   ; 

- D 1 - I - 0x017E5E 05:BE4E: A0        .byte $80 + $20   ; 
- D 1 - I - 0x017E5F 05:BE4F: 44        .byte $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45   ; 
- D 1 - I - 0x017E6F 05:BE5F: 44        .byte $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45, $44, $45   ; 

- D 1 - I - 0x017E7F 05:BE6F: 04        .byte $04   ; 
- D 1 - I - 0x017E80 05:BE70: 46        .byte $46   ; 

- D 1 - I - 0x017E81 05:BE71: 81        .byte $80 + $01   ; 
- D 1 - I - 0x017E82 05:BE72: 47        .byte $47   ; 

- D 1 - I - 0x017E83 05:BE73: 03        .byte $03   ; 
- D 1 - I - 0x017E84 05:BE74: 46        .byte $46   ; 

- D 1 - I - 0x017E85 05:BE75: 89        .byte $80 + $09   ; 
- D 1 - I - 0x017E86 05:BE76: 48        .byte $48, $47, $46, $48, $46, $47, $49, $46, $47   ; 

- D 1 - I - 0x017E8F 05:BE7F: 03        .byte $03   ; 
- D 1 - I - 0x017E90 05:BE80: 46        .byte $46   ; 

- D 1 - I - 0x017E91 05:BE81: 86        .byte $80 + $06   ; 
- D 1 - I - 0x017E92 05:BE82: 95        .byte $95, $96, $46, $46, $95, $96   ; 

- D 1 - I - 0x017E98 05:BE88: 04        .byte $04   ; 
- D 1 - I - 0x017E99 05:BE89: 46        .byte $46   ; 

- D 1 - I - 0x017E9A 05:BE8A: 90        .byte $80 + $10   ; 
- D 1 - I - 0x017E9B 05:BE8B: 95        .byte $95, $96, $4A, $49, $4A, $4B, $49, $4B, $4C, $48, $4D, $4E, $48, $48, $4C, $49   ; 

- D 1 - I - 0x017EAB 05:BE9B: 04        .byte $04   ; 
- D 1 - I - 0x017EAC 05:BE9C: 48        .byte $48   ; 

- D 1 - I - 0x017EAD 05:BE9D: 9F        .byte $80 + $1F   ; 
- D 1 - I - 0x017EAE 05:BE9E: 4C        .byte $4C, $48, $53, $48, $49, $4B, $53, $48, $4B, $4B, $4A, $4B, $53, $48, $4A, $49   ; 
- D 1 - I - 0x017EBE 05:BEAE: 4A        .byte $4A, $49, $49, $48, $49, $48, $4F, $50, $51, $48, $48, $40, $40, $52, $97   ; 

- D 1 - I - 0x017ECD 05:BEBD: 03        .byte $03   ; 
- D 1 - I - 0x017ECE 05:BEBE: 48        .byte $48   ; 

- D 1 - I - 0x017ECF 05:BEBF: 90        .byte $80 + $10   ; 
- D 1 - I - 0x017ED0 05:BEC0: 53        .byte $53, $48, $49, $48, $53, $48, $49, $49, $4C, $48, $53, $48, $53, $48, $4B, $49   ; 

- D 1 - I - 0x017EE0 05:BED0: 03        .byte $03   ; 
- D 1 - I - 0x017EE1 05:BED1: 48        .byte $48   ; 

- D 1 - I - 0x017EE2 05:BED2: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017EE3 05:BED3: 54        .byte $54, $55, $56, $57, $58, $40, $59, $5A, $5B, $98, $40, $40, $99, $9A, $40, $9B   ; 
- D 1 - I - 0x017EF3 05:BEE3: 9C        .byte $9C, $9D, $40, $49   ; 

- D 1 - I - 0x017EF7 05:BEE7: 03        .byte $03   ; 
- D 1 - I - 0x017EF8 05:BEE8: 48        .byte $48   ; 

- D 1 - I - 0x017EF9 05:BEE9: 82        .byte $80 + $02   ; 
- D 1 - I - 0x017EFA 05:BEEA: 53        .byte $53, $48   ; 

- D 1 - I - 0x017EFC 05:BEEC: 06        .byte $06   ; 
- D 1 - I - 0x017EFD 05:BEED: 40        .byte $40   ; 

- D 1 - I - 0x017EFE 05:BEEE: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017EFF 05:BEEF: 5C        .byte $5C, $5D, $5E, $5F, $60, $61, $62, $63, $64, $65, $9E, $40, $9F, $A0, $A1, $A2   ; 
- D 1 - I - 0x017F0F 05:BEFF: 40        .byte $40, $A3, $A4, $A5   ; 

- D 1 - I - 0x017F13 05:BF03: 0C        .byte $0C   ; 
- D 1 - I - 0x017F14 05:BF04: 40        .byte $40   ; 

- D 1 - I - 0x017F15 05:BF05: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017F16 05:BF06: 66        .byte $66, $67, $68, $69, $6A, $6B, $6C, $6D, $6E, $6F, $A6, $40, $A7, $A8, $A9, $AA   ; 
- D 1 - I - 0x017F26 05:BF16: AB        .byte $AB, $AC, $AD, $AE   ; 

- D 1 - I - 0x017F2A 05:BF1A: 0C        .byte $0C   ; 
- D 1 - I - 0x017F2B 05:BF1B: 40        .byte $40   ; 

- D 1 - I - 0x017F2C 05:BF1C: 94        .byte $80 + $14   ; 
- D 1 - I - 0x017F2D 05:BF1D: 70        .byte $70, $71, $72, $73, $74, $75, $76, $40, $77, $78, $AF, $40, $B0, $B1, $B2, $B3   ; 
- D 1 - I - 0x017F3D 05:BF2D: 40        .byte $40, $B4, $B5, $B6   ; 

- D 1 - I - 0x017F41 05:BF31: 0D        .byte $0D   ; 
- D 1 - I - 0x017F42 05:BF32: 40        .byte $40   ; 

- D 1 - I - 0x017F43 05:BF33: 93        .byte $80 + $13   ; 
- D 1 - I - 0x017F44 05:BF34: 79        .byte $79, $7A, $7B, $7C, $7D, $40, $40, $7E, $7F, $B7, $40, $B8, $B9, $BA, $BB, $40   ; 
- D 1 - I - 0x017F54 05:BF44: BC        .byte $BC, $BD, $BE   ; 

- D 1 - I - 0x017F57 05:BF47: 0D        .byte $0D   ; 
- D 1 - I - 0x017F58 05:BF48: 40        .byte $40   ; 

- D 1 - I - 0x017F59 05:BF49: 84        .byte $80 + $04   ; 
- D 1 - I - 0x017F5A 05:BF4A: 80        .byte $80, $81, $82, $83   ; 

- D 1 - I - 0x017F5E 05:BF4E: 03        .byte $03   ; 
- D 1 - I - 0x017F5F 05:BF4F: 40        .byte $40   ; 

- D 1 - I - 0x017F60 05:BF50: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x017F61 05:BF51: 84        .byte $84, $85, $BF, $40, $C0, $C1, $C2, $C3, $40, $C4, $C5, $C6   ; 

- D 1 - I - 0x017F6D 05:BF5D: 0D        .byte $0D   ; 
- D 1 - I - 0x017F6E 05:BF5E: 40        .byte $40   ; 

- D 1 - I - 0x017F6F 05:BF5F: 93        .byte $80 + $13   ; 
- D 1 - I - 0x017F70 05:BF60: 86        .byte $86, $87, $88, $89, $40, $40, $8A, $8B, $8C, $40, $40, $C7, $C8, $C9, $CA, $40   ; 
- D 1 - I - 0x017F80 05:BF70: CB        .byte $CB, $CC, $CD   ; 

- D 1 - I - 0x017F83 05:BF73: 0D        .byte $0D   ; 
- D 1 - I - 0x017F84 05:BF74: 40        .byte $40   ; 

- D 1 - I - 0x017F85 05:BF75: 93        .byte $80 + $13   ; 
- D 1 - I - 0x017F86 05:BF76: 8D        .byte $8D, $8E, $8F, $90, $40, $40, $91, $92, $93, $40, $40, $CE, $CF, $D0, $D1, $40   ; 
- D 1 - I - 0x017F96 05:BF86: 40        .byte $40, $D2, $D3   ; 

- D 1 - I - 0x017F99 05:BF89: 0D        .byte $0D   ; 
- D 1 - I - 0x017F9A 05:BF8A: 40        .byte $40   ; 

- D 1 - I - 0x017F9B 05:BF8B: 8C        .byte $80 + $0C   ; 
- D 1 - I - 0x017F9C 05:BF8C: D4        .byte $D4, $D5, $D6, $D7, $D8, $40, $40, $D9, $DA, $FB, $40, $FC   ; 

- D 1 - I - 0x017FA8 05:BF98: 14        .byte $14   ; 
- D 1 - I - 0x017FA9 05:BF99: 40        .byte $40   ; 

- D 1 - I - 0x017FAA 05:BF9A: 8A        .byte $80 + $0A   ; 
- D 1 - I - 0x017FAB 05:BF9B: DB        .byte $DB, $DC, $DD, $DE, $DF, $40, $40, $E0, $E1, $FD   ; 

- D 1 - I - 0x017FB5 05:BFA5: 16        .byte $16   ; 
- D 1 - I - 0x017FB6 05:BFA6: 40        .byte $40   ; 

- D 1 - I - 0x017FB7 05:BFA7: 88        .byte $80 + $08   ; 
- D 1 - I - 0x017FB8 05:BFA8: E2        .byte $E2, $E3, $E4, $E5, $E6, $40, $E7, $E8   ; 

- D 1 - I - 0x017FC0 05:BFB0: 18        .byte $18   ; 
- D 1 - I - 0x017FC1 05:BFB1: 40        .byte $40   ; 

- D 1 - I - 0x017FC2 05:BFB2: 85        .byte $80 + $05   ; 
- D 1 - I - 0x017FC3 05:BFB3: E9        .byte $E9, $EA, $EB, $EC, $ED   ; 

- D 1 - I - 0x017FC8 05:BFB8: 1B        .byte $1B   ; 
- D 1 - I - 0x017FC9 05:BFB9: 40        .byte $40   ; 

- D 1 - I - 0x017FCA 05:BFBA: 85        .byte $80 + $05   ; 
- D 1 - I - 0x017FCB 05:BFBB: EE        .byte $EE, $EF, $F0, $F1, $F2   ; 

- D 1 - I - 0x017FD0 05:BFC0: 1A        .byte $1A   ; 
- D 1 - I - 0x017FD1 05:BFC1: 40        .byte $40   ; 

- D 1 - I - 0x017FD2 05:BFC2: 86        .byte $80 + $06   ; 
- D 1 - I - 0x017FD3 05:BFC3: F3        .byte $F3, $F4, $F5, $F6, $F7, $F8   ; 

- D 1 - I - 0x017FD9 05:BFC9: 1E        .byte $1E   ; 
- D 1 - I - 0x017FDA 05:BFCA: 40        .byte $40   ; 

- D 1 - I - 0x017FDB 05:BFCB: 82        .byte $80 + $02   ; 
- D 1 - I - 0x017FDC 05:BFCC: F9        .byte $F9, $FA   ; 

- D 1 - I - 0x017FDE 05:BFCE: 14        .byte $14   ; 
- D 1 - I - 0x017FDF 05:BFCF: 40        .byte $40   ; 

- D 1 - I - 0x017FE0 05:BFD0: 20        .byte $20   ; 
- D 1 - I - 0x017FE1 05:BFD1: FE        .byte $FE   ; 

- D 1 - I - 0x017FE2 05:BFD2: 60        .byte $60   ; 
- D 1 - I - 0x017FE3 05:BFD3: 00        .byte $00   ; 

- D 1 - I - 0x017FE4 05:BFD4: 20        .byte $20   ; 
- D 1 - I - 0x017FE5 05:BFD5: FE        .byte $FE   ; 

- D 1 - I - 0x017FE6 05:BFD6: 40        .byte $40   ; 
- D 1 - I - 0x017FE7 05:BFD7: 40        .byte $40   ; 

- D 1 - I - 0x017FE8 05:BFD8: 0A        .byte $0A   ; 
- D 1 - I - 0x017FE9 05:BFD9: AA        .byte $AA   ; 

- D 1 - I - 0x017FEA 05:BFDA: 83        .byte $80 + $03   ; 
- D 1 - I - 0x017FEB 05:BFDB: CA        .byte $CA, $EA, $BA   ; 

- D 1 - I - 0x017FEE 05:BFDE: 04        .byte $04   ; 
- D 1 - I - 0x017FEF 05:BFDF: AA        .byte $AA   ; 

- D 1 - I - 0x017FF0 05:BFE0: 8D        .byte $80 + $0D   ; 
- D 1 - I - 0x017FF1 05:BFE1: 6E        .byte $6E, $4C, $55, $DD, $FF, $BB, $AA, $AA, $E2, $AE, $56, $65, $99   ; 

- D 1 - I - 0x017FFE 05:BFEE: 06        .byte $06   ; 
- D 1 - I - 0x017FFF 05:BFEF: AA        .byte $AA   ; 

- D 1 - I - 0x018000 05:BFF0: 81        .byte $80 + $01   ; 
- D 1 - I - 0x018001 05:BFF1: A6        .byte $A6   ; 

- D 1 - I - 0x018002 05:BFF2: 03        .byte $03   ; 
- D 1 - I - 0x018003 05:BFF3: AA        .byte $AA   ; 

- D 1 - I - 0x018004 05:BFF4: 83        .byte $80 + $03   ; 
- D 1 - I - 0x018005 05:BFF5: 5A        .byte $5A, $56, $55   ; 

- D 1 - I - 0x018008 05:BFF8: 05        .byte $05   ; 
- D 1 - I - 0x018009 05:BFF9: 5A        .byte $5A   ; 

- D 1 - I - 0x01800A 05:BFFA: 08        .byte $08   ; 
- D 1 - I - 0x01800B 05:BFFB: 55        .byte $55   ; 

- D 1 - I - 0x01800C 05:BFFC: 08        .byte $08   ; 
- D 1 - I - 0x01800D 05:BFFD: 00        .byte $00   ; 

- D 1 - I - 0x01800E 05:BFFE: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x01800F 05:BFFF: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank 0A: 0x%04X [%d]", ($C000 - *), ($C000 - *))



