.segment "BANK_04"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x010010-0x01400F



.export ofs_028_0x010010_01
.export ofs_028_0x010013_0C
.export ofs_028_0x010016_0D
.export ofs_028_0x01001C_14
.export ofs_028_0x01001F_15
.export ofs_028_0x010022_24
.export ofs_028_0x010025_17
.export ofs_028_0x010028_0F
.export ofs_028_0x01002B_20
.export ofs_028_0x01002E_21
.export ofs_028_0x010031_22
.export ofs_028_0x010034_23



ofs_028_0x010010_01:
; bzk optimize
- - - - - - 0x010010 04:8000: 4C 31 80  JMP loc_8031



ofs_028_0x010013_0C:
; bzk optimize
C - - J - - 0x010013 04:8003: 4C 94 AF  JMP loc_AF94



ofs_028_0x010016_0D:
; bzk optimize
C - - J - - 0x010016 04:8006: 4C 8D AF  JMP loc_AF8D


; bzk garbage
- - - - - - 0x010019 04:8009: 4C 04 B2  JMP loc_B204



ofs_028_0x01001C_14:
; bzk optimize
C - - J - - 0x01001C 04:800C: 4C 04 B2  JMP loc_B204



ofs_028_0x01001F_15:
; bzk optimize
C - - J - - 0x01001F 04:800F: 4C 16 B3  JMP loc_B316



ofs_028_0x010022_24:
; bzk optimize
C - - J - - 0x010022 04:8012: 4C E3 BC  JMP loc_BCE3



ofs_028_0x010025_17:
; bzk optimize
C - - J - - 0x010025 04:8015: 4C B2 B4  JMP loc_B4B2



ofs_028_0x010028_0F:
; bzk optimize
C - - J - - 0x010028 04:8018: 4C AB B8  JMP loc_B8AB



ofs_028_0x01002B_20:
; bzk optimize
C - - J - - 0x01002B 04:801B: 4C E3 BD  JMP loc_BDE3



ofs_028_0x01002E_21:
; bzk optimize
C - - J - - 0x01002E 04:801E: 4C 1B BA  JMP loc_BA1B



ofs_028_0x010031_22:
; bzk optimize
C - - J - - 0x010031 04:8021: 4C 1E BB  JMP loc_BB1E



ofs_028_0x010034_23:
; bzk optimize
C - - J - - 0x010034 04:8024: 4C EC BB  JMP loc_BBEC



sub_8027:
C - - - - - 0x010037 04:8027: A9 06     LDA #$06
C - - - - - 0x010039 04:8029: 4C 50 C0  JMP loc_0x01C060



sub_802C:
C - - - - - 0x01003C 04:802C: A9 25     LDA #$25
C - - - - - 0x01003E 04:802E: 4C 50 C0  JMP loc_0x01C060



loc_8031:
C D 0 - - - 0x010041 04:8031: A5 5C     LDA ram_game_script
C - - - - - 0x010043 04:8033: 10 01     BPL bra_8036
C - - - - - 0x010045 04:8035: 60        RTS
bra_8036:
C - - - - - 0x010046 04:8036: A9 40     LDA #$40
C - - - - - 0x010048 04:8038: 8D E3 05  STA ram_счетчик_спрайтов
C - - - - - 0x01004B 04:803B: A2 FC     LDX #$FC
C - - - - - 0x01004D 04:803D: A5 F4     LDA ram_00F4
C - - - - - 0x01004F 04:803F: D0 03     BNE bra_8044
C - - - - - 0x010051 04:8041: 4C 8B 81  JMP loc_818B
bra_8044:
loc_8044:
C D 0 - - - 0x010054 04:8044: C6 F4     DEC ram_00F4
C - - - - - 0x010056 04:8046: 10 03     BPL bra_804B
C - - - - - 0x010058 04:8048: 4C 8B 81  JMP loc_818B
bra_804B:
C - - - - - 0x01005B 04:804B: A4 F4     LDY ram_00F4
C - - - - - 0x01005D 04:804D: B9 A1 00  LDA a: ram_приоритет_анимации,Y
C - - - - - 0x010060 04:8050: 29 1F     AND #$1F
C - - - - - 0x010062 04:8052: A8        TAY
C - - - - - 0x010063 04:8053: B9 AF 03  LDA ram_03AF,Y
C - - - - - 0x010066 04:8056: 85 1C     STA ram_001C
C - - - - - 0x010068 04:8058: B9 C2 03  LDA ram_03C2,Y
C - - - - - 0x01006B 04:805B: 85 1D     STA ram_001D
C - - - - - 0x01006D 04:805D: B9 D5 03  LDA ram_03D5,Y
C - - - - - 0x010070 04:8060: 85 1E     STA ram_001E
C - - - - - 0x010072 04:8062: A9 00     LDA #$00
C - - - - - 0x010074 04:8064: 85 25     STA ram_0025
C - - - - - 0x010076 04:8066: A4 F4     LDY ram_00F4
C - - - - - 0x010078 04:8068: B9 A1 00  LDA a: ram_приоритет_анимации,Y
C - - - - - 0x01007B 04:806B: C9 20     CMP #$20
C - - - - - 0x01007D 04:806D: 90 19     BCC bra_8088
C - - - - - 0x01007F 04:806F: 29 E0     AND #$E0
C - - - - - 0x010081 04:8071: C9 20     CMP #$20
C - - - - - 0x010083 04:8073: D0 03     BNE bra_8078
C - - - - - 0x010085 04:8075: 4C 16 82  JMP loc_8216
bra_8078:
C - - - - - 0x010088 04:8078: C9 40     CMP #$40
C - - - - - 0x01008A 04:807A: D0 03     BNE bra_807F
C - - - - - 0x01008C 04:807C: 4C 40 82  JMP loc_8240
bra_807F:
C - - - - - 0x01008F 04:807F: A9 20     LDA #$20
C - - - - - 0x010091 04:8081: 85 25     STA ram_0025
C - - - - - 0x010093 04:8083: B9 A1 00  LDA a: ram_приоритет_анимации,Y
C - - - - - 0x010096 04:8086: 29 1F     AND #$1F
bra_8088:
C - - - - - 0x010098 04:8088: A8        TAY
C - - - - - 0x010099 04:8089: A5 1E     LDA ram_001E
C - - - - - 0x01009B 04:808B: 38        SEC
C - - - - - 0x01009C 04:808C: E5 1D     SBC ram_001D
C - - - - - 0x01009E 04:808E: B0 06     BCS bra_8096
C - - - - - 0x0100A0 04:8090: 38        SEC
C - - - - - 0x0100A1 04:8091: E9 06     SBC #$06
C - - - - - 0x0100A3 04:8093: 4C 98 80  JMP loc_8098
bra_8096:
C - - - - - 0x0100A6 04:8096: A9 FF     LDA #$FF
loc_8098:
C D 0 - - - 0x0100A8 04:8098: 85 1F     STA ram_001F
C - - - - - 0x0100AA 04:809A: B9 74 00  LDA a: ram_номер_анимации,Y
C - - - - - 0x0100AD 04:809D: 85 20     STA ram_0020
C - - - - - 0x0100AF 04:809F: 29 80     AND #$80
C - - - - - 0x0100B1 04:80A1: 49 80     EOR #$80
C - - - - - 0x0100B3 04:80A3: 4A        LSR
C - - - - - 0x0100B4 04:80A4: 05 25     ORA ram_0025
C - - - - - 0x0100B6 04:80A6: 85 21     STA ram_0021
C - - - - - 0x0100B8 04:80A8: B9 BC 83  LDA tbl_83BC,Y
C - - - - - 0x0100BB 04:80AB: 85 24     STA ram_0024
C - - - - - 0x0100BD 04:80AD: B9 5C 05  LDA ram_лицо_игрока,Y
C - - - - - 0x0100C0 04:80B0: 85 22     STA ram_0022
C - - - - - 0x0100C2 04:80B2: B9 61 00  LDA a: ram_0061,Y
C - - - - - 0x0100C5 04:80B5: C9 03     CMP #$03
C - - - - - 0x0100C7 04:80B7: D0 03     BNE bra_80BC
C - - - - - 0x0100C9 04:80B9: 4C 96 82  JMP loc_8296
bra_80BC:
C - - - - - 0x0100CC 04:80BC: 0A        ASL
C - - - - - 0x0100CD 04:80BD: A8        TAY
C - - - - - 0x0100CE 04:80BE: B9 D8 83  LDA tbl_83D8,Y
C - - - - - 0x0100D1 04:80C1: 85 3A     STA ram_003A
C - - - - - 0x0100D3 04:80C3: B9 D9 83  LDA tbl_83D8 + $01,Y
C - - - - - 0x0100D6 04:80C6: 85 3B     STA ram_003B
C - - - - - 0x0100D8 04:80C8: A5 20     LDA ram_0020
C - - - - - 0x0100DA 04:80CA: 29 7F     AND #$7F
C - - - - - 0x0100DC 04:80CC: 0A        ASL
C - - - - - 0x0100DD 04:80CD: A8        TAY
C - - - - - 0x0100DE 04:80CE: B1 3A     LDA (ram_003A),Y
C - - - - - 0x0100E0 04:80D0: 85 34     STA ram_0034
C - - - - - 0x0100E2 04:80D2: C8        INY
C - - - - - 0x0100E3 04:80D3: B1 3A     LDA (ram_003A),Y
C - - - - - 0x0100E5 04:80D5: 85 35     STA ram_0035
C - - - - - 0x0100E7 04:80D7: A0 01     LDY #$01
C - - - - - 0x0100E9 04:80D9: B1 34     LDA (ram_0034),Y
C - - - - - 0x0100EB 04:80DB: 85 2C     STA ram_002C
C - - - - - 0x0100ED 04:80DD: C8        INY
C - - - - - 0x0100EE 04:80DE: B1 34     LDA (ram_0034),Y
C - - - - - 0x0100F0 04:80E0: 85 2D     STA ram_002D
C - - - - - 0x0100F2 04:80E2: C8        INY
C - - - - - 0x0100F3 04:80E3: B1 34     LDA (ram_0034),Y
C - - - - - 0x0100F5 04:80E5: 85 2E     STA ram_002E
C - - - - - 0x0100F7 04:80E7: C8        INY
C - - - - - 0x0100F8 04:80E8: B1 34     LDA (ram_0034),Y
C - - - - - 0x0100FA 04:80EA: 85 2F     STA ram_002F
C - - - - - 0x0100FC 04:80EC: C8        INY
C - - - - - 0x0100FD 04:80ED: B1 34     LDA (ram_0034),Y
C - - - - - 0x0100FF 04:80EF: 85 30     STA ram_0030
C - - - - - 0x010101 04:80F1: C8        INY
C - - - - - 0x010102 04:80F2: B1 34     LDA (ram_0034),Y
C - - - - - 0x010104 04:80F4: 85 31     STA ram_0031
C - - - - - 0x010106 04:80F6: C8        INY
C - - - - - 0x010107 04:80F7: B1 34     LDA (ram_0034),Y
C - - - - - 0x010109 04:80F9: 85 32     STA ram_0032
C - - - - - 0x01010B 04:80FB: C8        INY
C - - - - - 0x01010C 04:80FC: B1 34     LDA (ram_0034),Y
C - - - - - 0x01010E 04:80FE: 85 33     STA ram_0033
C - - - - - 0x010110 04:8100: A0 00     LDY #$00
C - - - - - 0x010112 04:8102: B1 34     LDA (ram_0034),Y
C - - - - - 0x010114 04:8104: 85 2B     STA ram_002B
loc_8106:
C D 0 - - - 0x010116 04:8106: B1 32     LDA (ram_0032),Y
C - - - - - 0x010118 04:8108: C5 1F     CMP ram_001F
C - - - - - 0x01011A 04:810A: B0 0D     BCS bra_8119
C - - - - - 0x01011C 04:810C: 18        CLC
C - - - - - 0x01011D 04:810D: 65 1D     ADC ram_001D
C - - - - - 0x01011F 04:810F: C5 56     CMP ram_limit_spr_Y
C - - - - - 0x010121 04:8111: B0 06     BCS bra_8119
C - - - - - 0x010123 04:8113: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x010126 04:8116: 4C 1C 81  JMP loc_811C
bra_8119:
C - - - - - 0x010129 04:8119: 4C 80 81  JMP loc_8180
loc_811C:
C D 0 - - - 0x01012C 04:811C: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01012E 04:811E: C9 06     CMP #$06
C - - - - - 0x010130 04:8120: 90 03     BCC bra_8125
C - - - - - 0x010132 04:8122: 4C 3A 81  JMP loc_813A
bra_8125:
C - - - - - 0x010135 04:8125: 84 44     STY ram_0044
C - - - - - 0x010137 04:8127: 85 36     STA ram_0036
C - - - - - 0x010139 04:8129: A5 22     LDA ram_0022
C - - - - - 0x01013B 04:812B: 0A        ASL
C - - - - - 0x01013C 04:812C: 65 22     ADC ram_0022
C - - - - - 0x01013E 04:812E: 0A        ASL
C - - - - - 0x01013F 04:812F: 65 36     ADC ram_0036
C - - - - - 0x010141 04:8131: A8        TAY
C - - - - - 0x010142 04:8132: B9 C6 82  LDA tbl_82C6,Y
C - - - - - 0x010145 04:8135: A4 44     LDY ram_0044
; bzk
C - - - - - 0x010147 04:8137: 4C 3A 81  JMP loc_813A
loc_813A:
C D 0 - - - 0x01014A 04:813A: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x01014D 04:813D: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01014F 04:813F: 45 21     EOR ram_0021
C - - - - - 0x010151 04:8141: 05 24     ORA ram_0024
C - - - - - 0x010153 04:8143: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x010156 04:8146: A5 20     LDA ram_0020
C - - - - - 0x010158 04:8148: 10 05     BPL bra_814F
C - - - - - 0x01015A 04:814A: B1 30     LDA (ram_0030),Y
C - - - - - 0x01015C 04:814C: 4C 56 81  JMP loc_8156
bra_814F:
C - - - - - 0x01015F 04:814F: B1 30     LDA (ram_0030),Y
C - - - - - 0x010161 04:8151: 49 FF     EOR #$FF
C - - - - - 0x010163 04:8153: 38        SEC
C - - - - - 0x010164 04:8154: E9 07     SBC #$07
loc_8156:
C D 0 - - - 0x010166 04:8156: 10 0E     BPL bra_8166
C - - - - - 0x010168 04:8158: 18        CLC
C - - - - - 0x010169 04:8159: 65 1C     ADC ram_001C
C - - - - - 0x01016B 04:815B: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01016E 04:815E: 10 12     BPL bra_8172
C - - - - - 0x010170 04:8160: A5 1C     LDA ram_001C
C - - - - - 0x010172 04:8162: 10 1C     BPL bra_8180
C - - - - - 0x010174 04:8164: 30 0C     BMI bra_8172
bra_8166:
C - - - - - 0x010176 04:8166: 18        CLC
C - - - - - 0x010177 04:8167: 65 1C     ADC ram_001C
C - - - - - 0x010179 04:8169: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01017C 04:816C: 30 04     BMI bra_8172
C - - - - - 0x01017E 04:816E: A5 1C     LDA ram_001C
C - - - - - 0x010180 04:8170: 30 0E     BMI bra_8180
bra_8172:
loc_8172:
C D 0 - - - 0x010182 04:8172: CE E3 05  DEC ram_счетчик_спрайтов
C - - - - - 0x010185 04:8175: CA        DEX
C - - - - - 0x010186 04:8176: CA        DEX
C - - - - - 0x010187 04:8177: CA        DEX
C - - - - - 0x010188 04:8178: CA        DEX
C - - - - - 0x010189 04:8179: E0 FC     CPX #$FC
C - - - - - 0x01018B 04:817B: D0 03     BNE bra_8180
C - - - - - 0x01018D 04:817D: 4C B4 81  JMP loc_81B4
bra_8180:
loc_8180:
C D 0 - - - 0x010190 04:8180: C8        INY
C - - - - - 0x010191 04:8181: C4 2B     CPY ram_002B
C - - - - - 0x010193 04:8183: F0 03     BEQ bra_8188
C - - - - - 0x010195 04:8185: 4C 06 81  JMP loc_8106
bra_8188:
C - - - - - 0x010198 04:8188: 4C 44 80  JMP loc_8044



loc_818B:
C D 0 - - - 0x01019B 04:818B: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01019E 04:818E: D0 10     BNE bra_81A0
C - - - - - 0x0101A0 04:8190: A9 F8     LDA #$F8
bra_8192:
C - - - - - 0x0101A2 04:8192: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0101A5 04:8195: CA        DEX
C - - - - - 0x0101A6 04:8196: CA        DEX
C - - - - - 0x0101A7 04:8197: CA        DEX
C - - - - - 0x0101A8 04:8198: CA        DEX
C - - - - - 0x0101A9 04:8199: E0 FC     CPX #$FC
C - - - - - 0x0101AB 04:819B: D0 F5     BNE bra_8192
C - - - - - 0x0101AD 04:819D: 4C B4 81  JMP loc_81B4
bra_81A0:
C - - - - - 0x0101B0 04:81A0: A9 F8     LDA #$F8
loc_81A2:
C D 0 - - - 0x0101B2 04:81A2: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0101B5 04:81A5: CA        DEX
C - - - - - 0x0101B6 04:81A6: CA        DEX
C - - - - - 0x0101B7 04:81A7: CA        DEX
C - - - - - 0x0101B8 04:81A8: CA        DEX
C - - - - - 0x0101B9 04:81A9: E0 FC     CPX #$FC
C - - - - - 0x0101BB 04:81AB: F0 07     BEQ bra_81B4
C - - - - - 0x0101BD 04:81AD: E0 30     CPX #$30
C - - - - - 0x0101BF 04:81AF: 90 03     BCC bra_81B4
C - - - - - 0x0101C1 04:81B1: 4C A2 81  JMP loc_81A2
bra_81B4:
loc_81B4:
C D 0 - - - 0x0101C4 04:81B4: A5 F4     LDA ram_00F4
C - - - - - 0x0101C6 04:81B6: F0 06     BEQ bra_81BE_RTS
C - - - - - 0x0101C8 04:81B8: 10 05     BPL bra_81BF
C - - - - - 0x0101CA 04:81BA: A9 00     LDA #$00
C - - - - - 0x0101CC 04:81BC: 85 F4     STA ram_00F4
bra_81BE_RTS:
C - - - - - 0x0101CE 04:81BE: 60        RTS
bra_81BF:
C - - - - - 0x0101CF 04:81BF: A6 F4     LDX ram_00F4
C - - - - - 0x0101D1 04:81C1: A9 FC     LDA #$FC
C - - - - - 0x0101D3 04:81C3: 85 1C     STA ram_001C
bra_81C5:
C - - - - - 0x0101D5 04:81C5: BD A1 00  LDA a: ram_приоритет_анимации,X
C - - - - - 0x0101D8 04:81C8: C9 0E     CMP #$0E
C - - - - - 0x0101DA 04:81CA: 90 40     BCC bra_820C
C - - - - - 0x0101DC 04:81CC: 29 1F     AND #$1F
C - - - - - 0x0101DE 04:81CE: A8        TAY
C - - - - - 0x0101DF 04:81CF: 38        SEC
C - - - - - 0x0101E0 04:81D0: E9 0E     SBC #$0E
C - - - - - 0x0101E2 04:81D2: 85 1F     STA ram_001F
C - - - - - 0x0101E4 04:81D4: B9 AF 03  LDA ram_03AF,Y
C - - - - - 0x0101E7 04:81D7: 85 1D     STA ram_001D
C - - - - - 0x0101E9 04:81D9: B9 C2 03  LDA ram_03C2,Y
C - - - - - 0x0101EC 04:81DC: C9 C0     CMP #$C0
C - - - - - 0x0101EE 04:81DE: 90 2C     BCC bra_820C
C - - - - - 0x0101F0 04:81E0: 85 1E     STA ram_001E
C - - - - - 0x0101F2 04:81E2: A4 1C     LDY ram_001C
C - - - - - 0x0101F4 04:81E4: A5 1E     LDA ram_001E
C - - - - - 0x0101F6 04:81E6: 18        CLC
C - - - - - 0x0101F7 04:81E7: 69 F5     ADC #$F5
C - - - - - 0x0101F9 04:81E9: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x0101FC 04:81EC: A5 1D     LDA ram_001D
C - - - - - 0x0101FE 04:81EE: 18        CLC
C - - - - - 0x0101FF 04:81EF: 69 FC     ADC #$FC
C - - - - - 0x010201 04:81F1: 99 03 02  STA ram_spr_X,Y
C - - - - - 0x010204 04:81F4: A9 01     LDA #$01
C - - - - - 0x010206 04:81F6: 99 02 02  STA ram_spr_A,Y
C - - - - - 0x010209 04:81F9: 84 44     STY ram_0044
C - - - - - 0x01020B 04:81FB: A4 1F     LDY ram_001F
C - - - - - 0x01020D 04:81FD: B9 D3 83  LDA tbl_83D3,Y
C - - - - - 0x010210 04:8200: A4 44     LDY ram_0044
C - - - - - 0x010212 04:8202: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x010215 04:8205: A5 1C     LDA ram_001C
C - - - - - 0x010217 04:8207: 38        SEC
C - - - - - 0x010218 04:8208: E9 04     SBC #$04
C - - - - - 0x01021A 04:820A: 85 1C     STA ram_001C
bra_820C:
C - - - - - 0x01021C 04:820C: CA        DEX
C - - - - - 0x01021D 04:820D: 10 B6     BPL bra_81C5
C - - - - - 0x01021F 04:820F: A9 FF     LDA #$FF
C - - - - - 0x010221 04:8211: 85 F4     STA ram_00F4
C - - - - - 0x010223 04:8213: 4C B4 81  JMP loc_81B4



loc_8216:
C D 0 - - - 0x010226 04:8216: A0 00     LDY #$00
C - - - - - 0x010228 04:8218: A9 01     LDA #$01
C - - - - - 0x01022A 04:821A: 85 2B     STA ram_002B
C - - - - - 0x01022C 04:821C: A5 1E     LDA ram_001E
C - - - - - 0x01022E 04:821E: 18        CLC
C - - - - - 0x01022F 04:821F: 69 F8     ADC #$F8
C - - - - - 0x010231 04:8221: C5 56     CMP ram_limit_spr_Y
C - - - - - 0x010233 04:8223: 90 03     BCC bra_8228
C - - - - - 0x010235 04:8225: 4C 44 80  JMP loc_8044
bra_8228:
C - - - - - 0x010238 04:8228: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01023B 04:822B: A9 A1     LDA #$A1
C - - - - - 0x01023D 04:822D: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x010240 04:8230: A9 01     LDA #$01
C - - - - - 0x010242 04:8232: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x010245 04:8235: A5 1C     LDA ram_001C
C - - - - - 0x010247 04:8237: 18        CLC
C - - - - - 0x010248 04:8238: 69 FC     ADC #$FC
C - - - - - 0x01024A 04:823A: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01024D 04:823D: 4C 72 81  JMP loc_8172



loc_8240:
C D 0 - - - 0x010250 04:8240: A5 1E     LDA ram_001E
C - - - - - 0x010252 04:8242: 18        CLC
C - - - - - 0x010253 04:8243: 69 F9     ADC #$F9
C - - - - - 0x010255 04:8245: C5 56     CMP ram_limit_spr_Y
C - - - - - 0x010257 04:8247: 90 03     BCC bra_824C
C - - - - - 0x010259 04:8249: 4C 44 80  JMP loc_8044
bra_824C:
C - - - - - 0x01025C 04:824C: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01025F 04:824F: A9 B7     LDA #$B7
C - - - - - 0x010261 04:8251: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x010264 04:8254: A9 00     LDA #$00
C - - - - - 0x010266 04:8256: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x010269 04:8259: A5 1C     LDA ram_001C
C - - - - - 0x01026B 04:825B: 18        CLC
C - - - - - 0x01026C 04:825C: 69 F8     ADC #$F8
C - - - - - 0x01026E 04:825E: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x010271 04:8261: CE E3 05  DEC ram_счетчик_спрайтов
C - - - - - 0x010274 04:8264: CA        DEX
C - - - - - 0x010275 04:8265: CA        DEX
C - - - - - 0x010276 04:8266: CA        DEX
C - - - - - 0x010277 04:8267: CA        DEX
C - - - - - 0x010278 04:8268: E0 FC     CPX #$FC
C - - - - - 0x01027A 04:826A: D0 03     BNE bra_826F
C - - - - - 0x01027C 04:826C: 4C B4 81  JMP loc_81B4
bra_826F:
C - - - - - 0x01027F 04:826F: A5 1E     LDA ram_001E
C - - - - - 0x010281 04:8271: 18        CLC
C - - - - - 0x010282 04:8272: 69 F9     ADC #$F9
C - - - - - 0x010284 04:8274: C5 56     CMP ram_limit_spr_Y
C - - - - - 0x010286 04:8276: 90 03     BCC bra_827B
- - - - - - 0x010288 04:8278: 4C 44 80  JMP loc_8044
bra_827B:
C - - - - - 0x01028B 04:827B: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x01028E 04:827E: A9 B7     LDA #$B7
C - - - - - 0x010290 04:8280: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x010293 04:8283: A9 40     LDA #$40
C - - - - - 0x010295 04:8285: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x010298 04:8288: A5 1C     LDA ram_001C
C - - - - - 0x01029A 04:828A: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x01029D 04:828D: A0 01     LDY #$01
C - - - - - 0x01029F 04:828F: A9 02     LDA #$02
C - - - - - 0x0102A1 04:8291: 85 2B     STA ram_002B
C - - - - - 0x0102A3 04:8293: 4C 72 81  JMP loc_8172



loc_8296:
C D 0 - - - 0x0102A6 04:8296: A5 20     LDA ram_0020
C - - - - - 0x0102A8 04:8298: 29 7F     AND #$7F
C - - - - - 0x0102AA 04:829A: A8        TAY
C - - - - - 0x0102AB 04:829B: 29 01     AND #$01
C - - - - - 0x0102AD 04:829D: 18        CLC
C - - - - - 0x0102AE 04:829E: 69 01     ADC #$01
C - - - - - 0x0102B0 04:82A0: 85 24     STA ram_0024
C - - - - - 0x0102B2 04:82A2: A5 1D     LDA ram_001D
C - - - - - 0x0102B4 04:82A4: 18        CLC
C - - - - - 0x0102B5 04:82A5: 69 F5     ADC #$F5
C - - - - - 0x0102B7 04:82A7: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x0102BA 04:82AA: B9 CE 83  LDA tbl_83CE,Y
C - - - - - 0x0102BD 04:82AD: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x0102C0 04:82B0: A5 24     LDA ram_0024
C - - - - - 0x0102C2 04:82B2: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x0102C5 04:82B5: A5 1C     LDA ram_001C
C - - - - - 0x0102C7 04:82B7: 18        CLC
C - - - - - 0x0102C8 04:82B8: 69 FC     ADC #$FC
C - - - - - 0x0102CA 04:82BA: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x0102CD 04:82BD: A0 00     LDY #$00
C - - - - - 0x0102CF 04:82BF: A9 01     LDA #$01
C - - - - - 0x0102D1 04:82C1: 85 2B     STA ram_002B
C - - - - - 0x0102D3 04:82C3: 4C 72 81  JMP loc_8172



tbl_82C6:
- D 0 - - - 0x0102D6 04:82C6: 00        .byte $00   ; 
- D 0 - - - 0x0102D7 04:82C7: 01        .byte $01   ; 
- D 0 - - - 0x0102D8 04:82C8: 02        .byte $02   ; 
- D 0 - - - 0x0102D9 04:82C9: 03        .byte $03   ; 
- D 0 - - - 0x0102DA 04:82CA: 04        .byte $04   ; 
- D 0 - - - 0x0102DB 04:82CB: 05        .byte $05   ; 
- D 0 - - - 0x0102DC 04:82CC: 9B        .byte $9B   ; 
- D 0 - - - 0x0102DD 04:82CD: 9C        .byte $9C   ; 
- D 0 - - - 0x0102DE 04:82CE: BB        .byte $BB   ; 
- D 0 - - - 0x0102DF 04:82CF: BC        .byte $BC   ; 
- D 0 - - - 0x0102E0 04:82D0: 04        .byte $04   ; 
- D 0 - - - 0x0102E1 04:82D1: FE        .byte $FE   ; 
- D 0 - - - 0x0102E2 04:82D2: AB        .byte $AB   ; 
- D 0 - - - 0x0102E3 04:82D3: AC        .byte $AC   ; 
- D 0 - - - 0x0102E4 04:82D4: BA        .byte $BA   ; 
- D 0 - - - 0x0102E5 04:82D5: 03        .byte $03   ; 
- D 0 - - - 0x0102E6 04:82D6: 04        .byte $04   ; 
- D 0 - - - 0x0102E7 04:82D7: 05        .byte $05   ; 
- D 0 - - - 0x0102E8 04:82D8: AD        .byte $AD   ; 
- D 0 - - - 0x0102E9 04:82D9: AE        .byte $AE   ; 
- D 0 - - - 0x0102EA 04:82DA: BF        .byte $BF   ; 
- D 0 - - - 0x0102EB 04:82DB: 03        .byte $03   ; 
- D 0 - - - 0x0102EC 04:82DC: 04        .byte $04   ; 
- D 0 - - - 0x0102ED 04:82DD: 05        .byte $05   ; 
- D 0 - - - 0x0102EE 04:82DE: CD        .byte $CD   ; 
- D 0 - - - 0x0102EF 04:82DF: CE        .byte $CE   ; 
- D 0 - - - 0x0102F0 04:82E0: ED        .byte $ED   ; 
- D 0 - - - 0x0102F1 04:82E1: EE        .byte $EE   ; 
- D 0 - - - 0x0102F2 04:82E2: BD        .byte $BD   ; 
- D 0 - - - 0x0102F3 04:82E3: BE        .byte $BE   ; 
- D 0 - - - 0x0102F4 04:82E4: 8D        .byte $8D   ; 
- D 0 - - - 0x0102F5 04:82E5: 8E        .byte $8E   ; 
- D 0 - - - 0x0102F6 04:82E6: 9F        .byte $9F   ; 
- D 0 - - - 0x0102F7 04:82E7: 03        .byte $03   ; 
- D 0 - - - 0x0102F8 04:82E8: 04        .byte $04   ; 
- D 0 - - - 0x0102F9 04:82E9: 05        .byte $05   ; 
- D 0 - - - 0x0102FA 04:82EA: DD        .byte $DD   ; 
- D 0 - - - 0x0102FB 04:82EB: DE        .byte $DE   ; 
- D 0 - - - 0x0102FC 04:82EC: DF        .byte $DF   ; 
- D 0 - - - 0x0102FD 04:82ED: 03        .byte $03   ; 
- D 0 - - - 0x0102FE 04:82EE: 04        .byte $04   ; 
- D 0 - - - 0x0102FF 04:82EF: 05        .byte $05   ; 
- D 0 - - - 0x010300 04:82F0: EB        .byte $EB   ; 
- D 0 - - - 0x010301 04:82F1: EC        .byte $EC   ; 
- D 0 - - - 0x010302 04:82F2: FF        .byte $FF   ; 
- D 0 - - - 0x010303 04:82F3: 03        .byte $03   ; 
- D 0 - - - 0x010304 04:82F4: 04        .byte $04   ; 
- D 0 - - - 0x010305 04:82F5: 05        .byte $05   ; 
- D 0 - - - 0x010306 04:82F6: CB        .byte $CB   ; 
- D 0 - - - 0x010307 04:82F7: CC        .byte $CC   ; 
- D 0 - - - 0x010308 04:82F8: EF        .byte $EF   ; 
- D 0 - - - 0x010309 04:82F9: 03        .byte $03   ; 
- D 0 - - - 0x01030A 04:82FA: 04        .byte $04   ; 
- D 0 - - - 0x01030B 04:82FB: 05        .byte $05   ; 
- D 0 - - - 0x01030C 04:82FC: DB        .byte $DB   ; 
- D 0 - - - 0x01030D 04:82FD: DC        .byte $DC   ; 
- D 0 - - - 0x01030E 04:82FE: CF        .byte $CF   ; 
- D 0 - - - 0x01030F 04:82FF: 03        .byte $03   ; 
- D 0 - - - 0x010310 04:8300: 04        .byte $04   ; 
- D 0 - - - 0x010311 04:8301: 05        .byte $05   ; 
- D 0 - - - 0x010312 04:8302: 9D        .byte $9D   ; 
- D 0 - - - 0x010313 04:8303: 9E        .byte $9E   ; 
- D 0 - - - 0x010314 04:8304: AF        .byte $AF   ; 
- D 0 - - - 0x010315 04:8305: 03        .byte $03   ; 
- D 0 - - - 0x010316 04:8306: 04        .byte $04   ; 
- D 0 - - - 0x010317 04:8307: 05        .byte $05   ; 
- D 0 - - - 0x010318 04:8308: 8B        .byte $8B   ; 
- D 0 - - - 0x010319 04:8309: 8C        .byte $8C   ; 
- D 0 - - - 0x01031A 04:830A: 8F        .byte $8F   ; 
- D 0 - - - 0x01031B 04:830B: 03        .byte $03   ; 
- D 0 - - - 0x01031C 04:830C: 04        .byte $04   ; 
- D 0 - - - 0x01031D 04:830D: 05        .byte $05   ; 
- D 0 - - - 0x01031E 04:830E: 8B        .byte $8B   ; 
- D 0 - - - 0x01031F 04:830F: 8C        .byte $8C   ; 
- D 0 - - - 0x010320 04:8310: 8F        .byte $8F   ; 
- D 0 - - - 0x010321 04:8311: BC        .byte $BC   ; 
- D 0 - - - 0x010322 04:8312: BD        .byte $BD   ; 
- D 0 - - - 0x010323 04:8313: BE        .byte $BE   ; 
- D 0 - - - 0x010324 04:8314: 8D        .byte $8D   ; 
- D 0 - - - 0x010325 04:8315: 8E        .byte $8E   ; 
- D 0 - - - 0x010326 04:8316: 9F        .byte $9F   ; 
- D 0 - - - 0x010327 04:8317: BC        .byte $BC   ; 
- D 0 - - - 0x010328 04:8318: BD        .byte $BD   ; 
- D 0 - - - 0x010329 04:8319: BE        .byte $BE   ; 
- D 0 - - - 0x01032A 04:831A: 9B        .byte $9B   ; 
- D 0 - - - 0x01032B 04:831B: 9C        .byte $9C   ; 
- D 0 - - - 0x01032C 04:831C: BB        .byte $BB   ; 
- D 0 - - - 0x01032D 04:831D: BC        .byte $BC   ; 
- D 0 - - - 0x01032E 04:831E: BD        .byte $BD   ; 
- D 0 - - - 0x01032F 04:831F: BE        .byte $BE   ; 
- D 0 - - - 0x010330 04:8320: 9D        .byte $9D   ; 
- D 0 - - - 0x010331 04:8321: 9E        .byte $9E   ; 
- D 0 - - - 0x010332 04:8322: AF        .byte $AF   ; 
- D 0 - - - 0x010333 04:8323: BC        .byte $BC   ; 
- D 0 - - - 0x010334 04:8324: BD        .byte $BD   ; 
- D 0 - - - 0x010335 04:8325: BE        .byte $BE   ; 
- D 0 - - - 0x010336 04:8326: AB        .byte $AB   ; 
- D 0 - - - 0x010337 04:8327: AC        .byte $AC   ; 
- D 0 - - - 0x010338 04:8328: BA        .byte $BA   ; 
- D 0 - - - 0x010339 04:8329: BC        .byte $BC   ; 
- D 0 - - - 0x01033A 04:832A: BD        .byte $BD   ; 
- D 0 - - - 0x01033B 04:832B: BE        .byte $BE   ; 
- D 0 - - - 0x01033C 04:832C: AD        .byte $AD   ; 
- D 0 - - - 0x01033D 04:832D: AE        .byte $AE   ; 
- D 0 - - - 0x01033E 04:832E: BF        .byte $BF   ; 
- D 0 - - - 0x01033F 04:832F: BC        .byte $BC   ; 
- D 0 - - - 0x010340 04:8330: BD        .byte $BD   ; 
- D 0 - - - 0x010341 04:8331: BE        .byte $BE   ; 
- D 0 - - - 0x010342 04:8332: 4B        .byte $4B   ; 
- D 0 - - - 0x010343 04:8333: 4C        .byte $4C   ; 
- D 0 - - - 0x010344 04:8334: 4F        .byte $4F   ; 
- D 0 - - - 0x010345 04:8335: 7C        .byte $7C   ; 
- D 0 - - - 0x010346 04:8336: 7D        .byte $7D   ; 
- D 0 - - - 0x010347 04:8337: 7E        .byte $7E   ; 
- D 0 - - - 0x010348 04:8338: 4D        .byte $4D   ; 
- D 0 - - - 0x010349 04:8339: 4E        .byte $4E   ; 
- D 0 - - - 0x01034A 04:833A: 5F        .byte $5F   ; 
- D 0 - - - 0x01034B 04:833B: 7C        .byte $7C   ; 
- D 0 - - - 0x01034C 04:833C: 7D        .byte $7D   ; 
- D 0 - - - 0x01034D 04:833D: 7E        .byte $7E   ; 
- D 0 - - - 0x01034E 04:833E: 5B        .byte $5B   ; 
- D 0 - - - 0x01034F 04:833F: 5C        .byte $5C   ; 
- D 0 - - - 0x010350 04:8340: 7B        .byte $7B   ; 
- D 0 - - - 0x010351 04:8341: 7C        .byte $7C   ; 
- D 0 - - - 0x010352 04:8342: 7D        .byte $7D   ; 
- D 0 - - - 0x010353 04:8343: 7E        .byte $7E   ; 
- D 0 - - - 0x010354 04:8344: 5D        .byte $5D   ; 
- D 0 - - - 0x010355 04:8345: 5E        .byte $5E   ; 
- D 0 - - - 0x010356 04:8346: 6F        .byte $6F   ; 
- D 0 - - - 0x010357 04:8347: 7C        .byte $7C   ; 
- D 0 - - - 0x010358 04:8348: 7D        .byte $7D   ; 
- D 0 - - - 0x010359 04:8349: 7E        .byte $7E   ; 
- D 0 - - - 0x01035A 04:834A: 6B        .byte $6B   ; 
- D 0 - - - 0x01035B 04:834B: 6C        .byte $6C   ; 
- D 0 - - - 0x01035C 04:834C: 7A        .byte $7A   ; 
- D 0 - - - 0x01035D 04:834D: 7C        .byte $7C   ; 
- D 0 - - - 0x01035E 04:834E: 7D        .byte $7D   ; 
- D 0 - - - 0x01035F 04:834F: 7E        .byte $7E   ; 
- D 0 - - - 0x010360 04:8350: 6D        .byte $6D   ; 
- D 0 - - - 0x010361 04:8351: 6E        .byte $6E   ; 
- D 0 - - - 0x010362 04:8352: 7F        .byte $7F   ; 
- D 0 - - - 0x010363 04:8353: 7C        .byte $7C   ; 
- D 0 - - - 0x010364 04:8354: 7D        .byte $7D   ; 
- D 0 - - - 0x010365 04:8355: 7E        .byte $7E   ; 
- D 0 - - - 0x010366 04:8356: 84        .byte $84   ; 
- D 0 - - - 0x010367 04:8357: 85        .byte $85   ; 
- D 0 - - - 0x010368 04:8358: 86        .byte $86   ; 
- D 0 - - - 0x010369 04:8359: 87        .byte $87   ; 
- - - - - - 0x01036A 04:835A: 04        .byte $04   ; 
- - - - - - 0x01036B 04:835B: 05        .byte $05   ; 
- D 0 - - - 0x01036C 04:835C: 88        .byte $88   ; 
- D 0 - - - 0x01036D 04:835D: 89        .byte $89   ; 
- D 0 - - - 0x01036E 04:835E: 8A        .byte $8A   ; 
- D 0 - - - 0x01036F 04:835F: 8B        .byte $8B   ; 
- - - - - - 0x010370 04:8360: 04        .byte $04   ; 
- - - - - - 0x010371 04:8361: 05        .byte $05   ; 
- D 0 - - - 0x010372 04:8362: 8C        .byte $8C   ; 
- D 0 - - - 0x010373 04:8363: 8D        .byte $8D   ; 
- D 0 - - - 0x010374 04:8364: 8E        .byte $8E   ; 
- D 0 - - - 0x010375 04:8365: 8F        .byte $8F   ; 
- - - - - - 0x010376 04:8366: 04        .byte $04   ; 
- - - - - - 0x010377 04:8367: 05        .byte $05   ; 
- D 0 - - - 0x010378 04:8368: B0        .byte $B0   ; 
- D 0 - - - 0x010379 04:8369: B1        .byte $B1   ; 
- D 0 - - - 0x01037A 04:836A: B2        .byte $B2   ; 
- D 0 - - - 0x01037B 04:836B: B3        .byte $B3   ; 
- - - - - - 0x01037C 04:836C: 04        .byte $04   ; 
- - - - - - 0x01037D 04:836D: 05        .byte $05   ; 
- D 0 - - - 0x01037E 04:836E: 98        .byte $98   ; 
- D 0 - - - 0x01037F 04:836F: 99        .byte $99   ; 
- D 0 - - - 0x010380 04:8370: 9A        .byte $9A   ; 
- D 0 - - - 0x010381 04:8371: 9B        .byte $9B   ; 
- - - - - - 0x010382 04:8372: 04        .byte $04   ; 
- - - - - - 0x010383 04:8373: 05        .byte $05   ; 
- D 0 - - - 0x010384 04:8374: 9C        .byte $9C   ; 
- D 0 - - - 0x010385 04:8375: 9D        .byte $9D   ; 
- D 0 - - - 0x010386 04:8376: 9E        .byte $9E   ; 
- D 0 - - - 0x010387 04:8377: 9F        .byte $9F   ; 
- - - - - - 0x010388 04:8378: 04        .byte $04   ; 
- - - - - - 0x010389 04:8379: 05        .byte $05   ; 
- D 0 - - - 0x01038A 04:837A: A4        .byte $A4   ; 
- D 0 - - - 0x01038B 04:837B: A5        .byte $A5   ; 
- D 0 - - - 0x01038C 04:837C: A6        .byte $A6   ; 
- D 0 - - - 0x01038D 04:837D: A7        .byte $A7   ; 
- - - - - - 0x01038E 04:837E: 04        .byte $04   ; 
- - - - - - 0x01038F 04:837F: 05        .byte $05   ; 
- D 0 - - - 0x010390 04:8380: A8        .byte $A8   ; 
- D 0 - - - 0x010391 04:8381: A9        .byte $A9   ; 
- D 0 - - - 0x010392 04:8382: AA        .byte $AA   ; 
- D 0 - - - 0x010393 04:8383: AB        .byte $AB   ; 
- - - - - - 0x010394 04:8384: 04        .byte $04   ; 
- - - - - - 0x010395 04:8385: 05        .byte $05   ; 
- D 0 - - - 0x010396 04:8386: AC        .byte $AC   ; 
- D 0 - - - 0x010397 04:8387: AD        .byte $AD   ; 
- D 0 - - - 0x010398 04:8388: AE        .byte $AE   ; 
- D 0 - - - 0x010399 04:8389: AF        .byte $AF   ; 
- - - - - - 0x01039A 04:838A: 04        .byte $04   ; 
- - - - - - 0x01039B 04:838B: 05        .byte $05   ; 
- D 0 - - - 0x01039C 04:838C: B4        .byte $B4   ; 
- D 0 - - - 0x01039D 04:838D: B5        .byte $B5   ; 
- D 0 - - - 0x01039E 04:838E: B6        .byte $B6   ; 
- D 0 - - - 0x01039F 04:838F: B7        .byte $B7   ; 
- - - - - - 0x0103A0 04:8390: 04        .byte $04   ; 
- - - - - - 0x0103A1 04:8391: 05        .byte $05   ; 
- D 0 - - - 0x0103A2 04:8392: B8        .byte $B8   ; 
- D 0 - - - 0x0103A3 04:8393: B9        .byte $B9   ; 
- D 0 - - - 0x0103A4 04:8394: BA        .byte $BA   ; 
- D 0 - - - 0x0103A5 04:8395: BB        .byte $BB   ; 
- - - - - - 0x0103A6 04:8396: 04        .byte $04   ; 
- - - - - - 0x0103A7 04:8397: 05        .byte $05   ; 
- - - - - - 0x0103A8 04:8398: BC        .byte $BC   ; 
- - - - - - 0x0103A9 04:8399: BD        .byte $BD   ; 
- D 0 - - - 0x0103AA 04:839A: BE        .byte $BE   ; 
- D 0 - - - 0x0103AB 04:839B: BF        .byte $BF   ; 
- - - - - - 0x0103AC 04:839C: 04        .byte $04   ; 
- - - - - - 0x0103AD 04:839D: 05        .byte $05   ; 
- D 0 - - - 0x0103AE 04:839E: CA        .byte $CA   ; 
- D 0 - - - 0x0103AF 04:839F: CB        .byte $CB   ; 
- - - - - - 0x0103B0 04:83A0: CC        .byte $CC   ; 
- - - - - - 0x0103B1 04:83A1: CD        .byte $CD   ; 
- - - - - - 0x0103B2 04:83A2: CE        .byte $CE   ; 
- - - - - - 0x0103B3 04:83A3: CF        .byte $CF   ; 
- D 0 - - - 0x0103B4 04:83A4: DA        .byte $DA   ; 
- D 0 - - - 0x0103B5 04:83A5: DB        .byte $DB   ; 
- D 0 - - - 0x0103B6 04:83A6: DC        .byte $DC   ; 
- D 0 - - - 0x0103B7 04:83A7: DD        .byte $DD   ; 
- - - - - - 0x0103B8 04:83A8: DE        .byte $DE   ; 
- - - - - - 0x0103B9 04:83A9: DF        .byte $DF   ; 
- D 0 - - - 0x0103BA 04:83AA: EA        .byte $EA   ; 
- D 0 - - - 0x0103BB 04:83AB: EB        .byte $EB   ; 
- D 0 - - - 0x0103BC 04:83AC: EC        .byte $EC   ; 
- D 0 - - - 0x0103BD 04:83AD: ED        .byte $ED   ; 
- D 0 - - - 0x0103BE 04:83AE: EE        .byte $EE   ; 
- D 0 - - - 0x0103BF 04:83AF: EF        .byte $EF   ; 
- D 0 - - - 0x0103C0 04:83B0: FA        .byte $FA   ; 
- D 0 - - - 0x0103C1 04:83B1: FB        .byte $FB   ; 
- D 0 - - - 0x0103C2 04:83B2: FC        .byte $FC   ; 
- D 0 - - - 0x0103C3 04:83B3: FD        .byte $FD   ; 
- - - - - - 0x0103C4 04:83B4: FE        .byte $FE   ; 
- - - - - - 0x0103C5 04:83B5: FF        .byte $FF   ; 
- D 0 - - - 0x0103C6 04:83B6: CC        .byte $CC   ; 
- D 0 - - - 0x0103C7 04:83B7: CD        .byte $CD   ; 
- - - - - - 0x0103C8 04:83B8: FC        .byte $FC   ; 
- - - - - - 0x0103C9 04:83B9: FD        .byte $FD   ; 
- - - - - - 0x0103CA 04:83BA: FE        .byte $FE   ; 
- - - - - - 0x0103CB 04:83BB: FF        .byte $FF   ; 



tbl_83BC:
- D 0 - - - 0x0103CC 04:83BC: 01        .byte $01   ; 
- D 0 - - - 0x0103CD 04:83BD: 02        .byte $02   ; 
- D 0 - - - 0x0103CE 04:83BE: 01        .byte $01   ; 
- D 0 - - - 0x0103CF 04:83BF: 02        .byte $02   ; 
- D 0 - - - 0x0103D0 04:83C0: 01        .byte $01   ; 
- D 0 - - - 0x0103D1 04:83C1: 02        .byte $02   ; 
- D 0 - - - 0x0103D2 04:83C2: 01        .byte $01   ; 
- D 0 - - - 0x0103D3 04:83C3: 02        .byte $02   ; 
- D 0 - - - 0x0103D4 04:83C4: 01        .byte $01   ; 
- D 0 - - - 0x0103D5 04:83C5: 02        .byte $02   ; 
- D 0 - - - 0x0103D6 04:83C6: 01        .byte $01   ; 
- D 0 - - - 0x0103D7 04:83C7: 02        .byte $02   ; 
- D 0 - - - 0x0103D8 04:83C8: 00        .byte $00   ; 
- - - - - - 0x0103D9 04:83C9: 00        .byte $00   ; 
- D 0 - - - 0x0103DA 04:83CA: 00        .byte $00   ; 
- D 0 - - - 0x0103DB 04:83CB: 00        .byte $00   ; 
- D 0 - - - 0x0103DC 04:83CC: 00        .byte $00   ; 
- D 0 - - - 0x0103DD 04:83CD: 00        .byte $00   ; 



tbl_83CE:
- D 0 - - - 0x0103DE 04:83CE: C0        .byte $C0   ; 
- D 0 - - - 0x0103DF 04:83CF: C1        .byte $C1   ; 
- D 0 - - - 0x0103E0 04:83D0: D0        .byte $D0   ; 
- D 0 - - - 0x0103E1 04:83D1: D1        .byte $D1   ; 
- D 0 - - - 0x0103E2 04:83D2: C2        .byte $C2   ; 



tbl_83D3:
- D 0 - - - 0x0103E3 04:83D3: C2        .byte $C2   ; 
- D 0 - - - 0x0103E4 04:83D4: C0        .byte $C0   ; 
- D 0 - - - 0x0103E5 04:83D5: C1        .byte $C1   ; 
- D 0 - - - 0x0103E6 04:83D6: D0        .byte $D0   ; 
- D 0 - - - 0x0103E7 04:83D7: D1        .byte $D1   ; 



tbl_83D8:
- D 0 - - - 0x0103E8 04:83D8: EC 83     .word off_83EC_00
- D 0 - - - 0x0103EA 04:83DA: E0 84     .word off_84E0_01
- - - - - - 0x0103EC 04:83DC: 6C 85     .word off_856C_02
- - - - - - 0x0103EE 04:83DE: 70 85     .word off_8570_03
- D 0 - - - 0x0103F0 04:83E0: 92 84     .word off_8492_04
- D 0 - - - 0x0103F2 04:83E2: 7A 85     .word off_857A_05
- D 0 - - - 0x0103F4 04:83E4: B6 85     .word off_85B6_06
- D 0 - - - 0x0103F6 04:83E6: E4 85     .word off_85E4_07
- D 0 - - - 0x0103F8 04:83E8: CF AC     .word off_ACCF_08
- D 0 - - - 0x0103FA 04:83EA: 6E 86     .word off_866E_09



off_83EC_00:
- D 0 - I - 0x0103FC 04:83EC: 76 86     .word off_8676_00
- D 0 - I - 0x0103FE 04:83EE: 7F 86     .word off_867F_01
- D 0 - I - 0x010400 04:83F0: 88 86     .word off_8688_02
- D 0 - I - 0x010402 04:83F2: 91 86     .word off_8691_03
- D 0 - I - 0x010404 04:83F4: 9A 86     .word off_869A_04
- D 0 - I - 0x010406 04:83F6: A3 86     .word off_86A3_05
- D 0 - I - 0x010408 04:83F8: AC 86     .word off_86AC_06
- D 0 - I - 0x01040A 04:83FA: B5 86     .word off_86B5_07
- D 0 - I - 0x01040C 04:83FC: BE 86     .word off_86BE_08
- D 0 - I - 0x01040E 04:83FE: C7 86     .word off_86C7_09
- D 0 - I - 0x010410 04:8400: D0 86     .word off_86D0_0A
- D 0 - I - 0x010412 04:8402: D9 86     .word off_86D9_0B
- D 0 - I - 0x010414 04:8404: E2 86     .word off_86E2_0C
- D 0 - I - 0x010416 04:8406: EB 86     .word off_86EB_0D
- D 0 - I - 0x010418 04:8408: F4 86     .word off_86F4_0E
- D 0 - I - 0x01041A 04:840A: FD 86     .word off_86FD_0F
- D 0 - I - 0x01041C 04:840C: 06 87     .word off_8706_10
- D 0 - I - 0x01041E 04:840E: 0F 87     .word off_870F_11
- D 0 - I - 0x010420 04:8410: 18 87     .word off_8718_12
- D 0 - I - 0x010422 04:8412: 21 87     .word off_8721_13
- D 0 - I - 0x010424 04:8414: 2A 87     .word off_872A_14
- D 0 - I - 0x010426 04:8416: 33 87     .word off_8733_15
- D 0 - I - 0x010428 04:8418: 3C 87     .word off_873C_16
- D 0 - I - 0x01042A 04:841A: 45 87     .word off_8745_17
- D 0 - I - 0x01042C 04:841C: 4E 87     .word off_874E_18
- D 0 - I - 0x01042E 04:841E: 57 87     .word off_8757_19
- D 0 - I - 0x010430 04:8420: 60 87     .word off_8760_1A
- D 0 - I - 0x010432 04:8422: 69 87     .word off_8769_1B
- D 0 - I - 0x010434 04:8424: 72 87     .word off_8772_1C
- D 0 - I - 0x010436 04:8426: 7B 87     .word off_877B_1D
- D 0 - I - 0x010438 04:8428: 84 87     .word off_8784_1E
- D 0 - I - 0x01043A 04:842A: 8D 87     .word off_878D_1F
- D 0 - I - 0x01043C 04:842C: 96 87     .word off_8796_20
- D 0 - I - 0x01043E 04:842E: 9F 87     .word off_879F_21
- D 0 - I - 0x010440 04:8430: A8 87     .word off_87A8_22
- D 0 - I - 0x010442 04:8432: B1 87     .word off_87B1_23
- D 0 - I - 0x010444 04:8434: BA 87     .word off_87BA_24
- - - - - - 0x010446 04:8436: BA 87     .word off_87BA_25
- D 0 - I - 0x010448 04:8438: C3 87     .word off_87C3_26
- D 0 - I - 0x01044A 04:843A: CC 87     .word off_87CC_27
- D 0 - I - 0x01044C 04:843C: D5 87     .word off_87D5_28
- D 0 - I - 0x01044E 04:843E: DE 87     .word off_87DE_29
- D 0 - I - 0x010450 04:8440: E7 87     .word off_87E7_2A
- D 0 - I - 0x010452 04:8442: F0 87     .word off_87F0_2B
- D 0 - I - 0x010454 04:8444: F9 87     .word off_87F9_2C
- D 0 - I - 0x010456 04:8446: 02 88     .word off_8802_2D
- D 0 - I - 0x010458 04:8448: 0B 88     .word off_880B_2E
- D 0 - I - 0x01045A 04:844A: 14 88     .word off_8814_2F
- D 0 - I - 0x01045C 04:844C: 1D 88     .word off_881D_30
- D 0 - I - 0x01045E 04:844E: 26 88     .word off_8826_31
- D 0 - I - 0x010460 04:8450: 2F 88     .word off_882F_32
- - - - - - 0x010462 04:8452: 2F 88     .word off_882F_33
- - - - - - 0x010464 04:8454: 2F 88     .word off_882F_34
- - - - - - 0x010466 04:8456: 2F 88     .word off_882F_35
- D 0 - I - 0x010468 04:8458: 38 88     .word off_8838_36
- D 0 - I - 0x01046A 04:845A: 41 88     .word off_8841_37
- D 0 - I - 0x01046C 04:845C: 4A 88     .word off_884A_38
- D 0 - I - 0x01046E 04:845E: 53 88     .word off_8853_39
- D 0 - I - 0x010470 04:8460: 5C 88     .word off_885C_3A
- - - - - - 0x010472 04:8462: 65 88     .word off_8865_3B
- D 0 - I - 0x010474 04:8464: 6E 88     .word off_886E_3C
- D 0 - I - 0x010476 04:8466: 77 88     .word off_8877_3D
- D 0 - I - 0x010478 04:8468: 80 88     .word off_8880_3E
- D 0 - I - 0x01047A 04:846A: 89 88     .word off_8889_3F
- D 0 - I - 0x01047C 04:846C: 92 88     .word off_8892_40
- D 0 - I - 0x01047E 04:846E: 9B 88     .word off_889B_41
- D 0 - I - 0x010480 04:8470: A4 88     .word off_88A4_42
- D 0 - I - 0x010482 04:8472: AD 88     .word off_88AD_43
- D 0 - I - 0x010484 04:8474: B6 88     .word off_88B6_44
- D 0 - I - 0x010486 04:8476: BF 88     .word off_88BF_45
- D 0 - I - 0x010488 04:8478: C8 88     .word off_88C8_46
- D 0 - I - 0x01048A 04:847A: D1 88     .word off_88D1_47
- D 0 - I - 0x01048C 04:847C: DA 88     .word off_88DA_48
- D 0 - I - 0x01048E 04:847E: E3 88     .word off_88E3_49
- D 0 - I - 0x010490 04:8480: EC 88     .word off_88EC_4A
- D 0 - I - 0x010492 04:8482: F5 88     .word off_88F5_4B
- D 0 - I - 0x010494 04:8484: FE 88     .word off_88FE_4C
- D 0 - I - 0x010496 04:8486: 07 89     .word off_8907_4D
- D 0 - I - 0x010498 04:8488: 10 89     .word off_8910_4E
- - - - - - 0x01049A 04:848A: 10 89     .word off_8910_4F
- D 0 - I - 0x01049C 04:848C: 19 89     .word off_8919_50
- D 0 - I - 0x01049E 04:848E: 22 89     .word off_8922_51
- D 0 - I - 0x0104A0 04:8490: 2B 89     .word off_892B_52
off_8492_04:
- D 0 - I - 0x0104A2 04:8492: 34 89     .word off_8934_00
- D 0 - I - 0x0104A4 04:8494: 3D 89     .word off_893D_01
- D 0 - I - 0x0104A6 04:8496: 46 89     .word off_8946_02
- D 0 - I - 0x0104A8 04:8498: 4F 89     .word off_894F_03
- D 0 - I - 0x0104AA 04:849A: 58 89     .word off_8958_04
- - - - - - 0x0104AC 04:849C: 61 89     .word off_8961_05
- - - - - - 0x0104AE 04:849E: 6A 89     .word off_896A_06
- D 0 - I - 0x0104B0 04:84A0: 73 89     .word off_8973_07
- D 0 - I - 0x0104B2 04:84A2: 7C 89     .word off_897C_08
- D 0 - I - 0x0104B4 04:84A4: 85 89     .word off_8985_09
- D 0 - I - 0x0104B6 04:84A6: 8E 89     .word off_898E_0A
- D 0 - I - 0x0104B8 04:84A8: 97 89     .word off_8997_0B
- D 0 - I - 0x0104BA 04:84AA: A0 89     .word off_89A0_0C
- D 0 - I - 0x0104BC 04:84AC: A9 89     .word off_89A9_0D
- D 0 - I - 0x0104BE 04:84AE: B2 89     .word off_89B2_0E
- D 0 - I - 0x0104C0 04:84B0: BB 89     .word off_89BB_0F
- D 0 - I - 0x0104C2 04:84B2: C4 89     .word off_89C4_10
- D 0 - I - 0x0104C4 04:84B4: D6 89     .word off_89D6_11
- D 0 - I - 0x0104C6 04:84B6: DF 89     .word off_89DF_12
- - - - - - 0x0104C8 04:84B8: E8 89     .word off_89E8_13
- - - - - - 0x0104CA 04:84BA: F1 89     .word off_89F1_14
- - - - - - 0x0104CC 04:84BC: FA 89     .word off_89FA_15
- - - - - - 0x0104CE 04:84BE: FA 89     .word off_89FA_16
- - - - - - 0x0104D0 04:84C0: FA 89     .word off_89FA_17
- - - - - - 0x0104D2 04:84C2: FA 89     .word off_89FA_18
- D 0 - I - 0x0104D4 04:84C4: 03 8A     .word off_8A03_19
- D 0 - I - 0x0104D6 04:84C6: 0C 8A     .word off_8A0C_1A
- D 0 - I - 0x0104D8 04:84C8: 15 8A     .word off_8A15_1B
- D 0 - I - 0x0104DA 04:84CA: 1E 8A     .word off_8A1E_1C
- D 0 - I - 0x0104DC 04:84CC: AD 88     .word off_88AD_1D
- D 0 - I - 0x0104DE 04:84CE: B6 88     .word off_88B6_1E
- - - - - - 0x0104E0 04:84D0: BF 88     .word off_88BF_1F
- - - - - - 0x0104E2 04:84D2: C8 88     .word off_88C8_20
- - - - - - 0x0104E4 04:84D4: D1 88     .word off_88D1_21
- D 0 - I - 0x0104E6 04:84D6: E3 88     .word off_88E3_22
- D 0 - I - 0x0104E8 04:84D8: EC 88     .word off_88EC_23
- D 0 - I - 0x0104EA 04:84DA: 07 89     .word off_8907_24
- D 0 - I - 0x0104EC 04:84DC: 10 89     .word off_8910_25
- D 0 - I - 0x0104EE 04:84DE: CD 89     .word off_89CD_26
off_84E0_01:
- D 0 - I - 0x0104F0 04:84E0: 27 8A     .word off_8A27_00
- D 0 - I - 0x0104F2 04:84E2: 30 8A     .word off_8A30_01
- D 0 - I - 0x0104F4 04:84E4: 39 8A     .word off_8A39_02
- D 0 - I - 0x0104F6 04:84E6: 42 8A     .word off_8A42_03
- D 0 - I - 0x0104F8 04:84E8: 4B 8A     .word off_8A4B_04
- D 0 - I - 0x0104FA 04:84EA: 54 8A     .word off_8A54_05
- D 0 - I - 0x0104FC 04:84EC: 5D 8A     .word off_8A5D_06
- D 0 - I - 0x0104FE 04:84EE: 66 8A     .word off_8A66_07
- D 0 - I - 0x010500 04:84F0: 6F 8A     .word off_8A6F_08
- D 0 - I - 0x010502 04:84F2: 78 8A     .word off_8A78_09
- D 0 - I - 0x010504 04:84F4: 81 8A     .word off_8A81_0A
- D 0 - I - 0x010506 04:84F6: 8A 8A     .word off_8A8A_0B
- D 0 - I - 0x010508 04:84F8: 93 8A     .word off_8A93_0C
- D 0 - I - 0x01050A 04:84FA: 3E 8B     .word off_8B3E_0D
- D 0 - I - 0x01050C 04:84FC: 9C 8A     .word off_8A9C_0E
- D 0 - I - 0x01050E 04:84FE: A5 8A     .word off_8AA5_0F
- D 0 - I - 0x010510 04:8500: AE 8A     .word off_8AAE_10
- D 0 - I - 0x010512 04:8502: B7 8A     .word off_8AB7_11
- D 0 - I - 0x010514 04:8504: C0 8A     .word off_8AC0_12
- D 0 - I - 0x010516 04:8506: C9 8A     .word off_8AC9_13
- D 0 - I - 0x010518 04:8508: D2 8A     .word off_8AD2_14
- D 0 - I - 0x01051A 04:850A: DB 8A     .word off_8ADB_15
- D 0 - I - 0x01051C 04:850C: E4 8A     .word off_8AE4_16
- D 0 - I - 0x01051E 04:850E: ED 8A     .word off_8AED_17
- D 0 - I - 0x010520 04:8510: F6 8A     .word off_8AF6_18
- D 0 - I - 0x010522 04:8512: FF 8A     .word off_8AFF_19
- D 0 - I - 0x010524 04:8514: 08 8B     .word off_8B08_1A
- D 0 - I - 0x010526 04:8516: 11 8B     .word off_8B11_1B
- D 0 - I - 0x010528 04:8518: 1A 8B     .word off_8B1A_1C
- D 0 - I - 0x01052A 04:851A: 23 8B     .word off_8B23_1D
- D 0 - I - 0x01052C 04:851C: 2C 8B     .word off_8B2C_1E
- D 0 - I - 0x01052E 04:851E: 35 8B     .word off_8B35_1F
- D 0 - I - 0x010530 04:8520: 3E 8B     .word off_8B3E_20
- D 0 - I - 0x010532 04:8522: 47 8B     .word off_8B47_21
- - - - - - 0x010534 04:8524: 50 8B     .word off_8B50_22
- - - - - - 0x010536 04:8526: 59 8B     .word off_8B59_23
- - - - - - 0x010538 04:8528: 62 8B     .word off_8B62_24
- D 0 - I - 0x01053A 04:852A: 8A 8A     .word off_8A8A_25
- D 0 - I - 0x01053C 04:852C: 6B 8B     .word off_8B6B_26
- D 0 - I - 0x01053E 04:852E: 74 8B     .word off_8B74_27
- D 0 - I - 0x010540 04:8530: 7D 8B     .word off_8B7D_28
- D 0 - I - 0x010542 04:8532: 86 8B     .word off_8B86_29
- D 0 - I - 0x010544 04:8534: 8F 8B     .word off_8B8F_2A
- D 0 - I - 0x010546 04:8536: 98 8B     .word off_8B98_2B
- D 0 - I - 0x010548 04:8538: A1 8B     .word off_8BA1_2C
- D 0 - I - 0x01054A 04:853A: AA 8B     .word off_8BAA_2D
- D 0 - I - 0x01054C 04:853C: B3 8B     .word off_8BB3_2E
- D 0 - I - 0x01054E 04:853E: BC 8B     .word off_8BBC_2F
- D 0 - I - 0x010550 04:8540: C5 8B     .word off_8BC5_30
- - - - - - 0x010552 04:8542: CE 8B     .word off_8BCE_31
- - - - - - 0x010554 04:8544: D7 8B     .word off_8BD7_32
- - - - - - 0x010556 04:8546: E0 8B     .word off_8BE0_33
- D 0 - I - 0x010558 04:8548: E9 8B     .word off_8BE9_34
- D 0 - I - 0x01055A 04:854A: F2 8B     .word off_8BF2_35
- D 0 - I - 0x01055C 04:854C: FB 8B     .word off_8BFB_36
- D 0 - I - 0x01055E 04:854E: 04 8C     .word off_8C04_37
- D 0 - I - 0x010560 04:8550: 0D 8C     .word off_8C0D_38
- D 0 - I - 0x010562 04:8552: 16 8C     .word off_8C16_39
- D 0 - I - 0x010564 04:8554: 1F 8C     .word off_8C1F_3A
- D 0 - I - 0x010566 04:8556: 28 8C     .word off_8C28_3B
- D 0 - I - 0x010568 04:8558: 31 8C     .word off_8C31_3C
- D 0 - I - 0x01056A 04:855A: 6B 8B     .word off_8B6B_3D
- D 0 - I - 0x01056C 04:855C: 3A 8C     .word off_8C3A_3E
- D 0 - I - 0x01056E 04:855E: 43 8C     .word off_8C43_3F
- D 0 - I - 0x010570 04:8560: 4C 8C     .word off_8C4C_40
- D 0 - I - 0x010572 04:8562: 55 8C     .word off_8C55_41
- D 0 - I - 0x010574 04:8564: 5E 8C     .word off_8C5E_42
- D 0 - I - 0x010576 04:8566: 67 8C     .word off_8C67_43
- D 0 - I - 0x010578 04:8568: 70 8C     .word off_8C70_44
- D 0 - I - 0x01057A 04:856A: 79 8C     .word off_8C79_45
off_856C_02:
- - - - - - 0x01057C 04:856C: 82 8C     .word off_8C82_00
- - - - - - 0x01057E 04:856E: 8B 8C     .word off_8C8B_01
off_8570_03:
- - - - - - 0x010580 04:8570: 94 8C     .word off_8C94_00
- - - - - - 0x010582 04:8572: 9D 8C     .word off_8C9D_01
- - - - - - 0x010584 04:8574: A6 8C     .word off_8CA6_02
- - - - - - 0x010586 04:8576: AF 8C     .word off_8CAF_03
- - - - - - 0x010588 04:8578: B8 8C     .word off_8CB8_04
off_857A_05:
- D 0 - I - 0x01058A 04:857A: C1 8C     .word off_8CC1_00
- D 0 - I - 0x01058C 04:857C: CA 8C     .word off_8CCA_01
- D 0 - I - 0x01058E 04:857E: D3 8C     .word off_8CD3_02
- D 0 - I - 0x010590 04:8580: DC 8C     .word off_8CDC_03
- D 0 - I - 0x010592 04:8582: E5 8C     .word off_8CE5_04
- D 0 - I - 0x010594 04:8584: EE 8C     .word off_8CEE_05
- D 0 - I - 0x010596 04:8586: F7 8C     .word off_8CF7_06
- D 0 - I - 0x010598 04:8588: 00 8D     .word off_8D00_07
- D 0 - I - 0x01059A 04:858A: 09 8D     .word off_8D09_08
- D 0 - I - 0x01059C 04:858C: 12 8D     .word off_8D12_09
- D 0 - I - 0x01059E 04:858E: 1B 8D     .word off_8D1B_0A
- D 0 - I - 0x0105A0 04:8590: 24 8D     .word off_8D24_0B
- D 0 - I - 0x0105A2 04:8592: 2D 8D     .word off_8D2D_0C
- D 0 - I - 0x0105A4 04:8594: 36 8D     .word off_8D36_0D
- D 0 - I - 0x0105A6 04:8596: 3F 8D     .word off_8D3F_0E
- D 0 - I - 0x0105A8 04:8598: 48 8D     .word off_8D48_0F
- D 0 - I - 0x0105AA 04:859A: 51 8D     .word off_8D51_10
- D 0 - I - 0x0105AC 04:859C: 5A 8D     .word off_8D5A_11
- D 0 - I - 0x0105AE 04:859E: 63 8D     .word off_8D63_12
- D 0 - I - 0x0105B0 04:85A0: 6C 8D     .word off_8D6C_13
- D 0 - I - 0x0105B2 04:85A2: 75 8D     .word off_8D75_14
- D 0 - I - 0x0105B4 04:85A4: 7E 8D     .word off_8D7E_15
- D 0 - I - 0x0105B6 04:85A6: 87 8D     .word off_8D87_16
- - - - - - 0x0105B8 04:85A8: 90 8D     .word off_8D90_17
- - - - - - 0x0105BA 04:85AA: 90 8D     .word off_8D90_18
- - - - - - 0x0105BC 04:85AC: 90 8D     .word off_8D90_19
- - - - - - 0x0105BE 04:85AE: 90 8D     .word off_8D90_1A
- D 0 - I - 0x0105C0 04:85B0: 99 8D     .word off_8D99_1B
- D 0 - I - 0x0105C2 04:85B2: A2 8D     .word off_8DA2_1C
- D 0 - I - 0x0105C4 04:85B4: AB 8D     .word off_8DAB_1D
off_85B6_06:
- D 0 - I - 0x0105C6 04:85B6: B4 8D     .word off_8DB4_00
- D 0 - I - 0x0105C8 04:85B8: BD 8D     .word off_8DBD_01
- D 0 - I - 0x0105CA 04:85BA: C6 8D     .word off_8DC6_02
- D 0 - I - 0x0105CC 04:85BC: CF 8D     .word off_8DCF_03
- D 0 - I - 0x0105CE 04:85BE: D8 8D     .word off_8DD8_04
- D 0 - I - 0x0105D0 04:85C0: E1 8D     .word off_8DE1_05
- D 0 - I - 0x0105D2 04:85C2: EA 8D     .word off_8DEA_06
- D 0 - I - 0x0105D4 04:85C4: F3 8D     .word off_8DF3_07
- D 0 - I - 0x0105D6 04:85C6: FC 8D     .word off_8DFC_08
- D 0 - I - 0x0105D8 04:85C8: 05 8E     .word off_8E05_09
- D 0 - I - 0x0105DA 04:85CA: 0E 8E     .word off_8E0E_0A
- D 0 - I - 0x0105DC 04:85CC: 17 8E     .word off_8E17_0B
- D 0 - I - 0x0105DE 04:85CE: 20 8E     .word off_8E20_0C
- D 0 - I - 0x0105E0 04:85D0: 29 8E     .word off_8E29_0D
- D 0 - I - 0x0105E2 04:85D2: 32 8E     .word off_8E32_0E
- D 0 - I - 0x0105E4 04:85D4: 3B 8E     .word off_8E3B_0F
- D 0 - I - 0x0105E6 04:85D6: 44 8E     .word off_8E44_10
- D 0 - I - 0x0105E8 04:85D8: 4D 8E     .word off_8E4D_11
- D 0 - I - 0x0105EA 04:85DA: 56 8E     .word off_8E56_12
- D 0 - I - 0x0105EC 04:85DC: 5F 8E     .word off_8E5F_13
- D 0 - I - 0x0105EE 04:85DE: 68 8E     .word off_8E68_14
- D 0 - I - 0x0105F0 04:85E0: 71 8E     .word off_8E71_15
- D 0 - I - 0x0105F2 04:85E2: 7A 8E     .word off_8E7A_16
off_85E4_07:
- D 0 - I - 0x0105F4 04:85E4: 83 8E     .word off_8E83_00
- D 0 - I - 0x0105F6 04:85E6: 8C 8E     .word off_8E8C_01
- D 0 - I - 0x0105F8 04:85E8: 95 8E     .word off_8E95_02
- D 0 - I - 0x0105FA 04:85EA: 9E 8E     .word off_8E9E_03
- D 0 - I - 0x0105FC 04:85EC: A7 8E     .word off_8EA7_04
- D 0 - I - 0x0105FE 04:85EE: B0 8E     .word off_8EB0_05
- D 0 - I - 0x010600 04:85F0: B9 8E     .word off_8EB9_06
- D 0 - I - 0x010602 04:85F2: C2 8E     .word off_8EC2_07
- D 0 - I - 0x010604 04:85F4: CB 8E     .word off_8ECB_08
- D 0 - I - 0x010606 04:85F6: D4 8E     .word off_8ED4_09
- D 0 - I - 0x010608 04:85F8: DD 8E     .word off_8EDD_0A
- D 0 - I - 0x01060A 04:85FA: E6 8E     .word off_8EE6_0B
- D 0 - I - 0x01060C 04:85FC: EF 8E     .word off_8EEF_0C
- D 0 - I - 0x01060E 04:85FE: F8 8E     .word off_8EF8_0D
- D 0 - I - 0x010610 04:8600: 01 8F     .word off_8F01_0E
- D 0 - I - 0x010612 04:8602: 0A 8F     .word off_8F0A_0F
- D 0 - I - 0x010614 04:8604: 13 8F     .word off_8F13_10
- D 0 - I - 0x010616 04:8606: 1C 8F     .word off_8F1C_11
- D 0 - I - 0x010618 04:8608: 25 8F     .word off_8F25_12
- D 0 - I - 0x01061A 04:860A: 2E 8F     .word off_8F2E_13
- D 0 - I - 0x01061C 04:860C: 37 8F     .word off_8F37_14
- D 0 - I - 0x01061E 04:860E: 40 8F     .word off_8F40_15
- D 0 - I - 0x010620 04:8610: 49 8F     .word off_8F49_16
- D 0 - I - 0x010622 04:8612: 52 8F     .word off_8F52_17
- - - - - - 0x010624 04:8614: 52 8F     .word off_8F52_18
- D 0 - I - 0x010626 04:8616: 5B 8F     .word off_8F5B_19
- D 0 - I - 0x010628 04:8618: 64 8F     .word off_8F64_1A
- D 0 - I - 0x01062A 04:861A: 6D 8F     .word off_8F6D_1B
- D 0 - I - 0x01062C 04:861C: 76 8F     .word off_8F76_1C
- D 0 - I - 0x01062E 04:861E: 7F 8F     .word off_8F7F_1D
- D 0 - I - 0x010630 04:8620: 88 8F     .word off_8F88_1E
- D 0 - I - 0x010632 04:8622: 91 8F     .word off_8F91_1F
- D 0 - I - 0x010634 04:8624: 9A 8F     .word off_8F9A_20
- D 0 - I - 0x010636 04:8626: A3 8F     .word off_8FA3_21
- D 0 - I - 0x010638 04:8628: AC 8F     .word off_8FAC_22
- D 0 - I - 0x01063A 04:862A: B5 8F     .word off_8FB5_23
- D 0 - I - 0x01063C 04:862C: BE 8F     .word off_8FBE_24
- D 0 - I - 0x01063E 04:862E: C7 8F     .word off_8FC7_25
- D 0 - I - 0x010640 04:8630: D0 8F     .word off_8FD0_26
- D 0 - I - 0x010642 04:8632: D9 8F     .word off_8FD9_27
- D 0 - I - 0x010644 04:8634: E2 8F     .word off_8FE2_28
- D 0 - I - 0x010646 04:8636: EB 8F     .word off_8FEB_29
- D 0 - I - 0x010648 04:8638: F4 8F     .word off_8FF4_2A
- D 0 - I - 0x01064A 04:863A: FD 8F     .word off_8FFD_2B
- D 0 - I - 0x01064C 04:863C: 06 90     .word off_9006_2C
- - - - - - 0x01064E 04:863E: 06 90     .word off_9006_2D
- D 0 - I - 0x010650 04:8640: 0F 90     .word off_900F_2E
- D 0 - I - 0x010652 04:8642: 18 90     .word off_9018_2F
- D 0 - I - 0x010654 04:8644: 21 90     .word off_9021_30
- D 0 - I - 0x010656 04:8646: 2A 90     .word off_902A_31
- D 0 - I - 0x010658 04:8648: 33 90     .word off_9033_32
- D 0 - I - 0x01065A 04:864A: 3C 90     .word off_903C_33
- D 0 - I - 0x01065C 04:864C: 45 90     .word off_9045_34
- - - - - - 0x01065E 04:864E: 45 90     .word off_9045_35
- D 0 - I - 0x010660 04:8650: 4E 90     .word off_904E_36
- D 0 - I - 0x010662 04:8652: 57 90     .word off_9057_37
- D 0 - I - 0x010664 04:8654: 60 90     .word off_9060_38
- D 0 - I - 0x010666 04:8656: 69 90     .word off_9069_39
- D 0 - I - 0x010668 04:8658: 72 90     .word off_9072_3A
- D 0 - I - 0x01066A 04:865A: 57 90     .word off_9057_3B
- D 0 - I - 0x01066C 04:865C: 60 90     .word off_9060_3C
- D 0 - I - 0x01066E 04:865E: 69 90     .word off_9069_3D
- D 0 - I - 0x010670 04:8660: 72 90     .word off_9072_3E
- D 0 - I - 0x010672 04:8662: AD 88     .word off_88AD_3F
- D 0 - I - 0x010674 04:8664: B6 88     .word off_88B6_40
- D 0 - I - 0x010676 04:8666: 7B 90     .word off_907B_41
- D 0 - I - 0x010678 04:8668: A4 88     .word off_88A4_42
- D 0 - I - 0x01067A 04:866A: DA 88     .word off_88DA_43
- D 0 - I - 0x01067C 04:866C: BE 86     .word off_86BE_44
off_866E_09:
- D 0 - I - 0x01067E 04:866E: 84 90     .word off_9084_00
- D 0 - I - 0x010680 04:8670: 8D 90     .word off_908D_01
- D 0 - I - 0x010682 04:8672: 96 90     .word off_9096_02
- D 0 - I - 0x010684 04:8674: 9F 90     .word off_909F_03
off_8676_00:
- D 0 - I - 0x010686 04:8676: 08        .byte $08   ; 
- D 0 - I - 0x010687 04:8677: 03 98     .word off_9803_00
- D 0 - I - 0x010689 04:8679: C8 99     .word off_99C8_01
- D 0 - I - 0x01068B 04:867B: 01 A1     .word off_A101_02
- D 0 - I - 0x01068D 04:867D: 94 A6     .word off_A694_03
off_867F_01:
- D 0 - I - 0x01068F 04:867F: 09        .byte $09   ; 
- D 0 - I - 0x010690 04:8680: BD 96     .word off_96BD_00
- D 0 - I - 0x010692 04:8682: C9 99     .word off_99C9_01
- D 0 - I - 0x010694 04:8684: 0F A4     .word off_A40F_02
- D 0 - I - 0x010696 04:8686: 66 AB     .word off_AB66_03
off_8688_02:
- D 0 - I - 0x010698 04:8688: 09        .byte $09   ; 
- D 0 - I - 0x010699 04:8689: 38 97     .word off_9738_00
- D 0 - I - 0x01069B 04:868B: E6 99     .word off_99E6_01
- D 0 - I - 0x01069D 04:868D: 81 A4     .word off_A481_02
- D 0 - I - 0x01069F 04:868F: E7 A9     .word off_A9E7_03
off_8691_03:
- D 0 - I - 0x0106A1 04:8691: 0A        .byte $0A   ; 
- D 0 - I - 0x0106A2 04:8692: 91 95     .word off_9591_00
- D 0 - I - 0x0106A4 04:8694: A5 9C     .word off_9CA5_01
- D 0 - I - 0x0106A6 04:8696: E8 A2     .word off_A2E8_02
- D 0 - I - 0x0106A8 04:8698: 65 AA     .word off_AA65_03
off_869A_04:
- D 0 - I - 0x0106AA 04:869A: 08        .byte $08   ; 
- D 0 - I - 0x0106AB 04:869B: 1B 98     .word off_981B_00
- D 0 - I - 0x0106AD 04:869D: BD 9D     .word off_9DBD_01
- D 0 - I - 0x0106AF 04:869F: BD 9E     .word off_9EBD_02
- D 0 - I - 0x0106B1 04:86A1: 43 AC     .word off_AC43_03
off_86A3_05:
- D 0 - I - 0x0106B3 04:86A3: 08        .byte $08   ; 
- D 0 - I - 0x0106B4 04:86A4: 0B 98     .word off_980B_00
- D 0 - I - 0x0106B6 04:86A6: A7 9C     .word off_9CA7_01
- D 0 - I - 0x0106B8 04:86A8: 19 A5     .word off_A519_02
- D 0 - I - 0x0106BA 04:86AA: 5D A8     .word off_A85D_03
off_86AC_06:
- D 0 - I - 0x0106BC 04:86AC: 0A        .byte $0A   ; 
- D 0 - I - 0x0106BD 04:86AD: CD 95     .word off_95CD_00
- D 0 - I - 0x0106BF 04:86AF: E6 99     .word off_99E6_01
- D 0 - I - 0x0106C1 04:86B1: 22 A3     .word off_A322_02
- D 0 - I - 0x0106C3 04:86B3: 93 AA     .word off_AA93_03
off_86B5_07:
- D 0 - I - 0x0106C5 04:86B5: 08        .byte $08   ; 
- D 0 - I - 0x0106C6 04:86B6: FB 97     .word off_97FB_00
- D 0 - I - 0x0106C8 04:86B8: 2C 9A     .word off_9A2C_01
- D 0 - I - 0x0106CA 04:86BA: 11 A5     .word off_A511_02
- D 0 - I - 0x0106CC 04:86BC: 28 A7     .word off_A728_03
off_86BE_08:
off_86BE_44:
- D 0 - I - 0x0106CE 04:86BE: 08        .byte $08   ; 
- D 0 - I - 0x0106CF 04:86BF: F3 97     .word off_97F3_00
- D 0 - I - 0x0106D1 04:86C1: CA 99     .word off_99CA_01
- D 0 - I - 0x0106D3 04:86C3: 09 A5     .word off_A509_02
- D 0 - I - 0x0106D5 04:86C5: 3B AC     .word off_AC3B_03
off_86C7_09:
- D 0 - I - 0x0106D7 04:86C7: 09        .byte $09   ; 
- D 0 - I - 0x0106D8 04:86C8: E1 96     .word off_96E1_00
- D 0 - I - 0x0106DA 04:86CA: B1 9B     .word off_9BB1_01
- D 0 - I - 0x0106DC 04:86CC: 33 A4     .word off_A433_02
- D 0 - I - 0x0106DE 04:86CE: 8A AB     .word off_AB8A_03
off_86D0_0A:
- D 0 - I - 0x0106E0 04:86D0: 0A        .byte $0A   ; 
- D 0 - I - 0x0106E1 04:86D1: D7 95     .word off_95D7_00
- D 0 - I - 0x0106E3 04:86D3: E6 99     .word off_99E6_01
- D 0 - I - 0x0106E5 04:86D5: 2C A3     .word off_A32C_02
- D 0 - I - 0x0106E7 04:86D7: 9D AA     .word off_AA9D_03
off_86D9_0B:
- D 0 - I - 0x0106E9 04:86D9: 0A        .byte $0A   ; 
- D 0 - I - 0x0106EA 04:86DA: 09 96     .word off_9609_00
- D 0 - I - 0x0106EC 04:86DC: 20 9D     .word off_9D20_01
- D 0 - I - 0x0106EE 04:86DE: 5E A3     .word off_A35E_02
- D 0 - I - 0x0106F0 04:86E0: CF AA     .word off_AACF_03
off_86E2_0C:
- D 0 - I - 0x0106F2 04:86E2: 08        .byte $08   ; 
- D 0 - I - 0x0106F3 04:86E3: AB 97     .word off_97AB_00
- D 0 - I - 0x0106F5 04:86E5: 9B 9D     .word off_9D9B_01
- D 0 - I - 0x0106F7 04:86E7: E1 A4     .word off_A4E1_02
- D 0 - I - 0x0106F9 04:86E9: 0B AC     .word off_AC0B_03
off_86EB_0D:
- D 0 - I - 0x0106FB 04:86EB: 09        .byte $09   ; 
- D 0 - I - 0x0106FC 04:86EC: CF 96     .word off_96CF_00
- D 0 - I - 0x0106FE 04:86EE: C9 99     .word off_99C9_01
- D 0 - I - 0x010700 04:86F0: 21 A4     .word off_A421_02
- D 0 - I - 0x010702 04:86F2: 78 AB     .word off_AB78_03
off_86F4_0E:
- D 0 - I - 0x010704 04:86F4: 0B        .byte $0B   ; 
- D 0 - I - 0x010705 04:86F5: 6A 94     .word off_946A_00
- D 0 - I - 0x010707 04:86F7: E6 99     .word off_99E6_01
- D 0 - I - 0x010709 04:86F9: C0 A1     .word off_A1C0_02
- D 0 - I - 0x01070B 04:86FB: 59 A9     .word off_A959_03
off_86FD_0F:
- D 0 - I - 0x01070D 04:86FD: 09        .byte $09   ; 
- D 0 - I - 0x01070E 04:86FE: EA 96     .word off_96EA_00
- D 0 - I - 0x010710 04:8700: E6 99     .word off_99E6_01
- D 0 - I - 0x010712 04:8702: 3C A4     .word off_A43C_02
- D 0 - I - 0x010714 04:8704: 93 AB     .word off_AB93_03
off_8706_10:
- D 0 - I - 0x010716 04:8706: 09        .byte $09   ; 
- D 0 - I - 0x010717 04:8707: FC 96     .word off_96FC_00
- D 0 - I - 0x010719 04:8709: 0D 9A     .word off_9A0D_01
- D 0 - I - 0x01071B 04:870B: 4E A4     .word off_A44E_02
- D 0 - I - 0x01071D 04:870D: A5 AB     .word off_ABA5_03
off_870F_11:
- D 0 - I - 0x01071F 04:870F: 09        .byte $09   ; 
- D 0 - I - 0x010720 04:8710: 04 97     .word off_9704_00
- D 0 - I - 0x010722 04:8712: 7A 9D     .word off_9D7A_01
- D 0 - I - 0x010724 04:8714: 57 A4     .word off_A457_02
- D 0 - I - 0x010726 04:8716: AE AB     .word off_ABAE_03
off_8718_12:
- D 0 - I - 0x010728 04:8718: 08        .byte $08   ; 
- D 0 - I - 0x010729 04:8719: 63 97     .word off_9763_00
- D 0 - I - 0x01072B 04:871B: E8 99     .word off_99E8_01
- D 0 - I - 0x01072D 04:871D: AB A4     .word off_A4AB_02
- D 0 - I - 0x01072F 04:871F: E3 AB     .word off_ABE3_03
off_8721_13:
- D 0 - I - 0x010731 04:8721: 09        .byte $09   ; 
- D 0 - I - 0x010732 04:8722: 0D 97     .word off_970D_00
- D 0 - I - 0x010734 04:8724: 88 9A     .word off_9A88_01
- D 0 - I - 0x010736 04:8726: 60 A4     .word off_A460_02
- D 0 - I - 0x010738 04:8728: B7 AB     .word off_ABB7_03
off_872A_14:
- D 0 - I - 0x01073A 04:872A: 0A        .byte $0A   ; 
- D 0 - I - 0x01073B 04:872B: 5F 95     .word off_955F_00
- D 0 - I - 0x01073D 04:872D: DD 9C     .word off_9CDD_01
- D 0 - I - 0x01073F 04:872F: B6 A2     .word off_A2B6_02
- D 0 - I - 0x010741 04:8731: 33 AA     .word off_AA33_03
off_8733_15:
- D 0 - I - 0x010743 04:8733: 0A        .byte $0A   ; 
- D 0 - I - 0x010744 04:8734: E9 94     .word off_94E9_00
- D 0 - I - 0x010746 04:8736: C8 99     .word off_99C8_01
- D 0 - I - 0x010748 04:8738: 3E A2     .word off_A23E_02
- D 0 - I - 0x01074A 04:873A: C9 A9     .word off_A9C9_03
off_873C_16:
- D 0 - I - 0x01074C 04:873C: 0A        .byte $0A   ; 
- D 0 - I - 0x01074D 04:873D: DF 94     .word off_94DF_00
- D 0 - I - 0x01074F 04:873F: A5 9C     .word off_9CA5_01
- D 0 - I - 0x010751 04:8741: 34 A2     .word off_A234_02
- D 0 - I - 0x010753 04:8743: C0 A9     .word off_A9C0_03
off_8745_17:
- D 0 - I - 0x010755 04:8745: 0A        .byte $0A   ; 
- D 0 - I - 0x010756 04:8746: 13 96     .word off_9613_00
- D 0 - I - 0x010758 04:8748: 28 9D     .word off_9D28_01
- D 0 - I - 0x01075A 04:874A: 68 A3     .word off_A368_02
- D 0 - I - 0x01075C 04:874C: D9 AA     .word off_AAD9_03
off_874E_18:
- D 0 - I - 0x01075E 04:874E: 0C        .byte $0C   ; 
- D 0 - I - 0x01075F 04:874F: 21 93     .word off_9321_00
- D 0 - I - 0x010761 04:8751: E6 99     .word off_99E6_01
- D 0 - I - 0x010763 04:8753: 82 A0     .word off_A082_02
- D 0 - I - 0x010765 04:8755: 23 A8     .word off_A823_03
off_8757_19:
- D 0 - I - 0x010767 04:8757: 08        .byte $08   ; 
- D 0 - I - 0x010768 04:8758: EB 97     .word off_97EB_00
- D 0 - I - 0x01076A 04:875A: E6 99     .word off_99E6_01
- D 0 - I - 0x01076C 04:875C: 01 A5     .word off_A501_02
- D 0 - I - 0x01076E 04:875E: 2B AC     .word off_AC2B_03
off_8760_1A:
- D 0 - I - 0x010770 04:8760: 08        .byte $08   ; 
- D 0 - I - 0x010771 04:8761: DB 97     .word off_97DB_00
- D 0 - I - 0x010773 04:8763: AD 9D     .word off_9DAD_01
- D 0 - I - 0x010775 04:8765: F1 A4     .word off_A4F1_02
- D 0 - I - 0x010777 04:8767: 2B AC     .word off_AC2B_03
off_8769_1B:
- D 0 - I - 0x010779 04:8769: 0A        .byte $0A   ; 
- D 0 - I - 0x01077A 04:876A: B7 94     .word off_94B7_00
- D 0 - I - 0x01077C 04:876C: 91 9C     .word off_9C91_01
- D 0 - I - 0x01077E 04:876E: 0C A2     .word off_A20C_02
- D 0 - I - 0x010780 04:8770: 9A A9     .word off_A99A_03
off_8772_1C:
- D 0 - I - 0x010782 04:8772: 08        .byte $08   ; 
- D 0 - I - 0x010783 04:8773: CB 97     .word off_97CB_00
- D 0 - I - 0x010785 04:8775: AA 9D     .word off_9DAA_01
- D 0 - I - 0x010787 04:8777: BD 9E     .word off_9EBD_02
- D 0 - I - 0x010789 04:8779: 23 AC     .word off_AC23_03
off_877B_1D:
- D 0 - I - 0x01078B 04:877B: 09        .byte $09   ; 
- D 0 - I - 0x01078C 04:877C: 3F 96     .word off_963F_00
- D 0 - I - 0x01078E 04:877E: A6 9C     .word off_9CA6_01
- D 0 - I - 0x010790 04:8780: 96 A3     .word off_A396_02
- D 0 - I - 0x010792 04:8782: 07 AB     .word off_AB07_03
off_8784_1E:
- D 0 - I - 0x010794 04:8784: 08        .byte $08   ; 
- D 0 - I - 0x010795 04:8785: 9B 97     .word off_979B_00
- D 0 - I - 0x010797 04:8787: C8 99     .word off_99C8_01
- D 0 - I - 0x010799 04:8789: D9 A4     .word off_A4D9_02
- D 0 - I - 0x01079B 04:878B: FB AB     .word off_ABFB_03
off_878D_1F:
- D 0 - I - 0x01079D 04:878D: 08        .byte $08   ; 
- D 0 - I - 0x01079E 04:878E: 93 97     .word off_9793_00
- D 0 - I - 0x0107A0 04:8790: C8 99     .word off_99C8_01
- D 0 - I - 0x0107A2 04:8792: 01 A1     .word off_A101_02
- D 0 - I - 0x0107A4 04:8794: 9C A6     .word off_A69C_03
off_8796_20:
- D 0 - I - 0x0107A6 04:8796: 0A        .byte $0A   ; 
- D 0 - I - 0x0107A7 04:8797: 0F 95     .word off_950F_00
- D 0 - I - 0x0107A9 04:8799: C2 9C     .word off_9CC2_01
- D 0 - I - 0x0107AB 04:879B: 66 A2     .word off_A266_02
- D 0 - I - 0x0107AD 04:879D: E7 A9     .word off_A9E7_03
off_879F_21:
- D 0 - I - 0x0107AF 04:879F: 08        .byte $08   ; 
- D 0 - I - 0x0107B0 04:87A0: 83 97     .word off_9783_00
- D 0 - I - 0x0107B2 04:87A2: C8 99     .word off_99C8_01
- D 0 - I - 0x0107B4 04:87A4: CB A4     .word off_A4CB_02
- D 0 - I - 0x0107B6 04:87A6: 94 A6     .word off_A694_03
off_87A8_22:
- D 0 - I - 0x0107B8 04:87A8: 09        .byte $09   ; 
- D 0 - I - 0x0107B9 04:87A9: 5A 96     .word off_965A_00
- D 0 - I - 0x0107BB 04:87AB: 44 9D     .word off_9D44_01
- D 0 - I - 0x0107BD 04:87AD: B1 A3     .word off_A3B1_02
- D 0 - I - 0x0107BF 04:87AF: 0F AB     .word off_AB0F_03
off_87B1_23:
- D 0 - I - 0x0107C1 04:87B1: 08        .byte $08   ; 
- D 0 - I - 0x0107C2 04:87B2: 6B 97     .word off_976B_00
- D 0 - I - 0x0107C4 04:87B4: 94 9D     .word off_9D94_01
- D 0 - I - 0x0107C6 04:87B6: B3 A4     .word off_A4B3_02
- D 0 - I - 0x0107C8 04:87B8: EB AB     .word off_ABEB_03
off_87BA_24:
off_87BA_25:
- D 0 - I - 0x0107CA 04:87BA: 09        .byte $09   ; 
- D 0 - I - 0x0107CB 04:87BB: 63 96     .word off_9663_00
- D 0 - I - 0x0107CD 04:87BD: 4D 9D     .word off_9D4D_01
- D 0 - I - 0x0107CF 04:87BF: BA A3     .word off_A3BA_02
- D 0 - I - 0x0107D1 04:87C1: 18 AB     .word off_AB18_03
off_87C3_26:
- D 0 - I - 0x0107D3 04:87C3: 09        .byte $09   ; 
- D 0 - I - 0x0107D4 04:87C4: 6C 96     .word off_966C_00
- D 0 - I - 0x0107D6 04:87C6: 56 9D     .word off_9D56_01
- D 0 - I - 0x0107D8 04:87C8: C3 A3     .word off_A3C3_02
- D 0 - I - 0x0107DA 04:87CA: 21 AB     .word off_AB21_03
off_87CC_27:
- D 0 - I - 0x0107DC 04:87CC: 08        .byte $08   ; 
- D 0 - I - 0x0107DD 04:87CD: 73 98     .word off_9873_00
- D 0 - I - 0x0107DF 04:87CF: C8 99     .word off_99C8_01
- D 0 - I - 0x0107E1 04:87D1: 68 A5     .word off_A568_02
- D 0 - I - 0x0107E3 04:87D3: B7 A9     .word off_A9B7_03
off_87D5_28:
- D 0 - I - 0x0107E5 04:87D5: 08        .byte $08   ; 
- D 0 - I - 0x0107E6 04:87D6: 4B 98     .word off_984B_00
- D 0 - I - 0x0107E8 04:87D8: E6 99     .word off_99E6_01
- D 0 - I - 0x0107EA 04:87DA: 43 A5     .word off_A543_02
- D 0 - I - 0x0107EC 04:87DC: 6B AC     .word off_AC6B_03
off_87DE_29:
- D 0 - I - 0x0107EE 04:87DE: 08        .byte $08   ; 
- D 0 - I - 0x0107EF 04:87DF: 43 98     .word off_9843_00
- D 0 - I - 0x0107F1 04:87E1: F2 99     .word off_99F2_01
- D 0 - I - 0x0107F3 04:87E3: 3B A5     .word off_A53B_02
- D 0 - I - 0x0107F5 04:87E5: 63 AC     .word off_AC63_03
off_87E7_2A:
- D 0 - I - 0x0107F7 04:87E7: 0A        .byte $0A   ; 
- D 0 - I - 0x0107F8 04:87E8: D5 94     .word off_94D5_00
- D 0 - I - 0x0107FA 04:87EA: C8 99     .word off_99C8_01
- D 0 - I - 0x0107FC 04:87EC: 2A A2     .word off_A22A_02
- D 0 - I - 0x0107FE 04:87EE: B7 A9     .word off_A9B7_03
off_87F0_2B:
- D 0 - I - 0x010800 04:87F0: 09        .byte $09   ; 
- D 0 - I - 0x010801 04:87F1: B4 96     .word off_96B4_00
- D 0 - I - 0x010803 04:87F3: A5 9C     .word off_9CA5_01
- D 0 - I - 0x010805 04:87F5: 06 A4     .word off_A406_02
- D 0 - I - 0x010807 04:87F7: 5D AB     .word off_AB5D_03
off_87F9_2C:
- D 0 - I - 0x010809 04:87F9: 0A        .byte $0A   ; 
- D 0 - I - 0x01080A 04:87FA: B9 95     .word off_95B9_00
- D 0 - I - 0x01080C 04:87FC: 05 9D     .word off_9D05_01
- D 0 - I - 0x01080E 04:87FE: 10 A3     .word off_A310_02
- D 0 - I - 0x010810 04:8800: 83 AA     .word off_AA83_03
off_8802_2D:
- D 0 - I - 0x010812 04:8802: 08        .byte $08   ; 
- D 0 - I - 0x010813 04:8803: 23 98     .word off_9823_00
- D 0 - I - 0x010815 04:8805: C5 9D     .word off_9DC5_01
- D 0 - I - 0x010817 04:8807: 23 A5     .word off_A523_02
- D 0 - I - 0x010819 04:8809: 4B AC     .word off_AC4B_03
off_880B_2E:
- D 0 - I - 0x01081B 04:880B: 08        .byte $08   ; 
- D 0 - I - 0x01081C 04:880C: 2B 98     .word off_982B_00
- D 0 - I - 0x01081E 04:880E: CD 9D     .word off_9DCD_01
- D 0 - I - 0x010820 04:8810: 2B A5     .word off_A52B_02
- D 0 - I - 0x010822 04:8812: 53 AC     .word off_AC53_03
off_8814_2F:
- D 0 - I - 0x010824 04:8814: 08        .byte $08   ; 
- D 0 - I - 0x010825 04:8815: 53 98     .word off_9853_00
- D 0 - I - 0x010827 04:8817: E6 99     .word off_99E6_01
- D 0 - I - 0x010829 04:8819: 4B A5     .word off_A54B_02
- D 0 - I - 0x01082B 04:881B: FE A5     .word off_A5FE_03
off_881D_30:
- D 0 - I - 0x01082D 04:881D: 08        .byte $08   ; 
- D 0 - I - 0x01082E 04:881E: 53 97     .word off_9753_00
- D 0 - I - 0x010830 04:8820: A6 9C     .word off_9CA6_01
- D 0 - I - 0x010832 04:8822: 9C A4     .word off_A49C_02
- D 0 - I - 0x010834 04:8824: DB AB     .word off_ABDB_03
off_8826_31:
- D 0 - I - 0x010836 04:8826: 09        .byte $09   ; 
- D 0 - I - 0x010837 04:8827: 51 96     .word off_9651_00
- D 0 - I - 0x010839 04:8829: DD 9A     .word off_9ADD_01
- D 0 - I - 0x01083B 04:882B: A8 A3     .word off_A3A8_02
- D 0 - I - 0x01083D 04:882D: 2E A9     .word off_A92E_03
off_882F_32:
off_882F_33:
off_882F_34:
off_882F_35:
- D 0 - I - 0x01083F 04:882F: 09        .byte $09   ; 
- D 0 - I - 0x010840 04:8830: 48 96     .word off_9648_00
- D 0 - I - 0x010842 04:8832: 3B 9D     .word off_9D3B_01
- D 0 - I - 0x010844 04:8834: 9F A3     .word off_A39F_02
- D 0 - I - 0x010846 04:8836: AE A9     .word off_A9AE_03
off_8838_36:
- D 0 - I - 0x010848 04:8838: 0A        .byte $0A   ; 
- D 0 - I - 0x010849 04:8839: 37 95     .word off_9537_00
- D 0 - I - 0x01084B 04:883B: D3 9C     .word off_9CD3_01
- D 0 - I - 0x01084D 04:883D: 8E A2     .word off_A28E_02
- D 0 - I - 0x01084F 04:883F: 0B AA     .word off_AA0B_03
off_8841_37:
- D 0 - I - 0x010851 04:8841: 0B        .byte $0B   ; 
- D 0 - I - 0x010852 04:8842: 54 94     .word off_9454_00
- D 0 - I - 0x010854 04:8844: 47 9C     .word off_9C47_01
- D 0 - I - 0x010856 04:8846: AA A1     .word off_A1AA_02
- D 0 - I - 0x010858 04:8848: 43 A9     .word off_A943_03
off_884A_38:
- D 0 - I - 0x01085A 04:884A: 0A        .byte $0A   ; 
- D 0 - I - 0x01085B 04:884B: 2D 95     .word off_952D_00
- D 0 - I - 0x01085D 04:884D: CA 9C     .word off_9CCA_01
- D 0 - I - 0x01085F 04:884F: 84 A2     .word off_A284_02
- D 0 - I - 0x010861 04:8851: 01 AA     .word off_AA01_03
off_8853_39:
- D 0 - I - 0x010863 04:8853: 09        .byte $09   ; 
- D 0 - I - 0x010864 04:8854: 36 96     .word off_9636_00
- D 0 - I - 0x010866 04:8856: 32 9D     .word off_9D32_01
- D 0 - I - 0x010868 04:8858: 8D A3     .word off_A38D_02
- D 0 - I - 0x01086A 04:885A: FE AA     .word off_AAFE_03
off_885C_3A:
- D 0 - I - 0x01086C 04:885C: 09        .byte $09   ; 
- D 0 - I - 0x01086D 04:885D: 2D 96     .word off_962D_00
- D 0 - I - 0x01086F 04:885F: 92 9C     .word off_9C92_01
- D 0 - I - 0x010871 04:8861: 84 A3     .word off_A384_02
- D 0 - I - 0x010873 04:8863: F5 AA     .word off_AAF5_03
off_8865_3B:
- - - - - - 0x010875 04:8865: 09        .byte $09   ; 
- - - - - - 0x010876 04:8866: 26 96     .word off_9626_00
- - - - - - 0x010878 04:8868: 0D 9A     .word off_9A0D_01
- - - - - - 0x01087A 04:886A: 7B A3     .word off_A37B_02
- - - - - - 0x01087C 04:886C: EC AA     .word off_AAEC_03
off_886E_3C:
- D 0 - I - 0x01087E 04:886E: 09        .byte $09   ; 
- D 0 - I - 0x01087F 04:886F: C6 96     .word off_96C6_00
- D 0 - I - 0x010881 04:8871: E6 99     .word off_99E6_01
- D 0 - I - 0x010883 04:8873: 18 A4     .word off_A418_02
- D 0 - I - 0x010885 04:8875: 6F AB     .word off_AB6F_03
off_8877_3D:
- D 0 - I - 0x010887 04:8877: 08        .byte $08   ; 
- D 0 - I - 0x010888 04:8878: E3 97     .word off_97E3_00
- D 0 - I - 0x01088A 04:887A: B5 9D     .word off_9DB5_01
- D 0 - I - 0x01088C 04:887C: F9 A4     .word off_A4F9_02
- D 0 - I - 0x01088E 04:887E: 33 AC     .word off_AC33_03
off_8880_3E:
- D 0 - I - 0x010890 04:8880: 09        .byte $09   ; 
- D 0 - I - 0x010891 04:8881: AB 96     .word off_96AB_00
- D 0 - I - 0x010893 04:8883: E6 99     .word off_99E6_01
- D 0 - I - 0x010895 04:8885: FD A3     .word off_A3FD_02
- D 0 - I - 0x010897 04:8887: 54 AB     .word off_AB54_03
off_8889_3F:
- D 0 - I - 0x010899 04:8889: 09        .byte $09   ; 
- D 0 - I - 0x01089A 04:888A: 1D 96     .word off_961D_00
- D 0 - I - 0x01089C 04:888C: E6 99     .word off_99E6_01
- D 0 - I - 0x01089E 04:888E: 72 A3     .word off_A372_02
- D 0 - I - 0x0108A0 04:8890: E3 AA     .word off_AAE3_03
off_8892_40:
- D 0 - I - 0x0108A2 04:8892: 0C        .byte $0C   ; 
- D 0 - I - 0x0108A3 04:8893: 73 93     .word off_9373_00
- D 0 - I - 0x0108A5 04:8895: E9 9B     .word off_9BE9_01
- D 0 - I - 0x0108A7 04:8897: D6 A0     .word off_A0D6_02
- D 0 - I - 0x0108A9 04:8899: 74 A8     .word off_A874_03
off_889B_41:
- D 0 - I - 0x0108AB 04:889B: 0D        .byte $0D   ; 
- D 0 - I - 0x0108AC 04:889C: AC 92     .word off_92AC_00
- D 0 - I - 0x0108AE 04:889E: 68 9B     .word off_9B68_01
- D 0 - I - 0x0108B0 04:88A0: 0F A0     .word off_A00F_02
- D 0 - I - 0x0108B2 04:88A2: AE A7     .word off_A7AE_03
off_88A4_42:
- D 0 - I - 0x0108B4 04:88A4: 0C        .byte $0C   ; 
- D 0 - I - 0x0108B5 04:88A5: 97 93     .word off_9397_00
- D 0 - I - 0x0108B7 04:88A7: 05 9B     .word off_9B05_01
- D 0 - I - 0x0108B9 04:88A9: ED A0     .word off_A0ED_02
- D 0 - I - 0x0108BB 04:88AB: 8C A8     .word off_A88C_03
off_88AD_43:
off_88AD_1D:
off_88AD_3F:
- D 0 - I - 0x0108BD 04:88AD: 0A        .byte $0A   ; 
- D 0 - I - 0x0108BE 04:88AE: F3 94     .word off_94F3_00
- D 0 - I - 0x0108C0 04:88B0: AF 9C     .word off_9CAF_01
- D 0 - I - 0x0108C2 04:88B2: 48 A2     .word off_A248_02
- D 0 - I - 0x0108C4 04:88B4: 75 A8     .word off_A875_03
off_88B6_44:
off_88B6_1E:
off_88B6_40:
- D 0 - I - 0x0108C6 04:88B6: 0B        .byte $0B   ; 
- D 0 - I - 0x0108C7 04:88B7: 07 94     .word off_9407_00
- D 0 - I - 0x0108C9 04:88B9: FD 9B     .word off_9BFD_01
- D 0 - I - 0x0108CB 04:88BB: 5D A1     .word off_A15D_02
- D 0 - I - 0x0108CD 04:88BD: FC A8     .word off_A8FC_03
off_88BF_45:
off_88BF_1F:
- D 0 - I - 0x0108CF 04:88BF: 0A        .byte $0A   ; 
- D 0 - I - 0x0108D0 04:88C0: FD 94     .word off_94FD_00
- D 0 - I - 0x0108D2 04:88C2: B8 9C     .word off_9CB8_01
- D 0 - I - 0x0108D4 04:88C4: 52 A2     .word off_A252_02
- D 0 - I - 0x0108D6 04:88C6: D3 A9     .word off_A9D3_03
off_88C8_46:
off_88C8_20:
- D 0 - I - 0x0108D8 04:88C8: 08        .byte $08   ; 
- D 0 - I - 0x0108D9 04:88C9: D3 97     .word off_97D3_00
- D 0 - I - 0x0108DB 04:88CB: CC 99     .word off_99CC_01
- D 0 - I - 0x0108DD 04:88CD: BA A3     .word off_A3BA_02
- D 0 - I - 0x0108DF 04:88CF: 1B AC     .word off_AC1B_03
off_88D1_47:
off_88D1_21:
- D 0 - I - 0x0108E1 04:88D1: 08        .byte $08   ; 
- D 0 - I - 0x0108E2 04:88D2: BB 97     .word off_97BB_00
- D 0 - I - 0x0108E4 04:88D4: A2 9D     .word off_9DA2_01
- D 0 - I - 0x0108E6 04:88D6: E9 A4     .word off_A4E9_02
- D 0 - I - 0x0108E8 04:88D8: 1B AC     .word off_AC1B_03
off_88DA_48:
off_88DA_43:
- D 0 - I - 0x0108EA 04:88DA: 0B        .byte $0B   ; 
- D 0 - I - 0x0108EB 04:88DB: 28 94     .word off_9428_00
- D 0 - I - 0x0108ED 04:88DD: 22 9C     .word off_9C22_01
- D 0 - I - 0x0108EF 04:88DF: 7E A1     .word off_A17E_02
- D 0 - I - 0x0108F1 04:88E1: 1A A9     .word off_A91A_03
off_88E3_49:
off_88E3_22:
- D 0 - I - 0x0108F3 04:88E3: 0A        .byte $0A   ; 
- D 0 - I - 0x0108F4 04:88E4: 19 95     .word off_9519_00
- D 0 - I - 0x0108F6 04:88E6: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x0108F8 04:88E8: 70 A2     .word off_A270_02
- D 0 - I - 0x0108FA 04:88EA: ED A9     .word off_A9ED_03
off_88EC_4A:
off_88EC_23:
- D 0 - I - 0x0108FC 04:88EC: 0A        .byte $0A   ; 
- D 0 - I - 0x0108FD 04:88ED: 23 95     .word off_9523_00
- D 0 - I - 0x0108FF 04:88EF: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x010901 04:88F1: 7A A2     .word off_A27A_02
- D 0 - I - 0x010903 04:88F3: F7 A9     .word off_A9F7_03
off_88F5_4B:
- D 0 - I - 0x010905 04:88F5: 0D        .byte $0D   ; 
- D 0 - I - 0x010906 04:88F6: E0 92     .word off_92E0_00
- D 0 - I - 0x010908 04:88F8: 98 9B     .word off_9B98_01
- D 0 - I - 0x01090A 04:88FA: 43 A0     .word off_A043_02
- D 0 - I - 0x01090C 04:88FC: E2 A7     .word off_A7E2_03
off_88FE_4C:
- D 0 - I - 0x01090E 04:88FE: 0D        .byte $0D   ; 
- D 0 - I - 0x01090F 04:88FF: 07 93     .word off_9307_00
- D 0 - I - 0x010911 04:8901: B1 9B     .word off_9BB1_01
- D 0 - I - 0x010913 04:8903: 68 A0     .word off_A068_02
- D 0 - I - 0x010915 04:8905: 09 A8     .word off_A809_03
off_8907_4D:
off_8907_24:
- D 0 - I - 0x010917 04:8907: 0C        .byte $0C   ; 
- D 0 - I - 0x010918 04:8908: 7F 93     .word off_937F_00
- D 0 - I - 0x01091A 04:890A: F5 9B     .word off_9BF5_01
- D 0 - I - 0x01091C 04:890C: E2 A0     .word off_A0E2_02
- D 0 - I - 0x01091E 04:890E: 80 A8     .word off_A880_03
off_8910_4E:
off_8910_4F:
off_8910_25:
- D 0 - I - 0x010920 04:8910: 0C        .byte $0C   ; 
- D 0 - I - 0x010921 04:8911: 8B 93     .word off_938B_00
- D 0 - I - 0x010923 04:8913: 01 9C     .word off_9C01_01
- D 0 - I - 0x010925 04:8915: E2 A0     .word off_A0E2_02
- D 0 - I - 0x010927 04:8917: 80 A8     .word off_A880_03
off_8919_50:
- D 0 - I - 0x010929 04:8919: 08        .byte $08   ; 
- D 0 - I - 0x01092A 04:891A: 8B 97     .word off_978B_00
- D 0 - I - 0x01092C 04:891C: E6 99     .word off_99E6_01
- D 0 - I - 0x01092E 04:891E: D3 A4     .word off_A4D3_02
- D 0 - I - 0x010930 04:8920: FE A5     .word off_A5FE_03
off_8922_51:
- D 0 - I - 0x010932 04:8922: 08        .byte $08   ; 
- D 0 - I - 0x010933 04:8923: 7B 97     .word off_977B_00
- D 0 - I - 0x010935 04:8925: E6 99     .word off_99E6_01
- D 0 - I - 0x010937 04:8927: C3 A4     .word off_A4C3_02
- D 0 - I - 0x010939 04:8929: FE A5     .word off_A5FE_03
off_892B_52:
- D 0 - I - 0x01093B 04:892B: 08        .byte $08   ; 
- D 0 - I - 0x01093C 04:892C: 5B 97     .word off_975B_00
- D 0 - I - 0x01093E 04:892E: E6 99     .word off_99E6_01
- D 0 - I - 0x010940 04:8930: A3 A4     .word off_A4A3_02
- D 0 - I - 0x010942 04:8932: FE A5     .word off_A5FE_03
off_8934_00:
- D 0 - I - 0x010944 04:8934: 0A        .byte $0A   ; 
- D 0 - I - 0x010945 04:8935: 73 95     .word off_9573_00
- D 0 - I - 0x010947 04:8937: E7 9C     .word off_9CE7_01
- D 0 - I - 0x010949 04:8939: CA A2     .word off_A2CA_02
- D 0 - I - 0x01094B 04:893B: 47 AA     .word off_AA47_03
off_893D_01:
- D 0 - I - 0x01094D 04:893D: 0D        .byte $0D   ; 
- D 0 - I - 0x01094E 04:893E: ED 92     .word off_92ED_00
- D 0 - I - 0x010950 04:8940: A4 9B     .word off_9BA4_01
- D 0 - I - 0x010952 04:8942: 50 A0     .word off_A050_02
- D 0 - I - 0x010954 04:8944: EF A7     .word off_A7EF_03
off_8946_02:
- D 0 - I - 0x010956 04:8946: 0A        .byte $0A   ; 
- D 0 - I - 0x010957 04:8947: 87 95     .word off_9587_00
- D 0 - I - 0x010959 04:8949: F1 9C     .word off_9CF1_01
- D 0 - I - 0x01095B 04:894B: DE A2     .word off_A2DE_02
- D 0 - I - 0x01095D 04:894D: 5B AA     .word off_AA5B_03
off_894F_03:
- D 0 - I - 0x01095F 04:894F: 0C        .byte $0C   ; 
- D 0 - I - 0x010960 04:8950: A3 93     .word off_93A3_00
- D 0 - I - 0x010962 04:8952: 0D 9C     .word off_9C0D_01
- D 0 - I - 0x010964 04:8954: F9 A0     .word off_A0F9_02
- D 0 - I - 0x010966 04:8956: 98 A8     .word off_A898_03
off_8958_04:
- D 0 - I - 0x010968 04:8958: 0A        .byte $0A   ; 
- D 0 - I - 0x010969 04:8959: 9B 95     .word off_959B_00
- D 0 - I - 0x01096B 04:895B: F1 9C     .word off_9CF1_01
- D 0 - I - 0x01096D 04:895D: F2 A2     .word off_A2F2_02
- D 0 - I - 0x01096F 04:895F: 6F AA     .word off_AA6F_03
off_8961_05:
- - - - - - 0x010971 04:8961: 0D        .byte $0D   ; 
- - - - - - 0x010972 04:8962: D3 92     .word off_92D3_00
- - - - - - 0x010974 04:8964: 8D 9B     .word off_9B8D_01
- - - - - - 0x010976 04:8966: 36 A0     .word off_A036_02
- - - - - - 0x010978 04:8968: D5 A7     .word off_A7D5_03
off_896A_06:
- - - - - - 0x01097A 04:896A: 0D        .byte $0D   ; 
- - - - - - 0x01097B 04:896B: B9 92     .word off_92B9_00
- - - - - - 0x01097D 04:896D: 75 9B     .word off_9B75_01
- - - - - - 0x01097F 04:896F: 1C A0     .word off_A01C_02
- - - - - - 0x010981 04:8971: BB A7     .word off_A7BB_03
off_8973_07:
- D 0 - I - 0x010983 04:8973: 12        .byte $12   ; 
- D 0 - I - 0x010984 04:8974: 11 91     .word off_9111_00
- D 0 - I - 0x010986 04:8976: FA 99     .word off_99FA_01
- D 0 - I - 0x010988 04:8978: 75 9E     .word off_9E75_02
- D 0 - I - 0x01098A 04:897A: 1C A6     .word off_A61C_03
off_897C_08:
- D 0 - I - 0x01098C 04:897C: 0A        .byte $0A   ; 
- D 0 - I - 0x01098D 04:897D: C3 95     .word off_95C3_00
- D 0 - I - 0x01098F 04:897F: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x010991 04:8981: 18 A3     .word off_A318_02
- D 0 - I - 0x010993 04:8983: 8B AA     .word off_AA8B_03
off_8985_09:
- D 0 - I - 0x010995 04:8985: 0B        .byte $0B   ; 
- D 0 - I - 0x010996 04:8986: F1 93     .word off_93F1_00
- D 0 - I - 0x010998 04:8988: F3 9A     .word off_9AF3_01
- D 0 - I - 0x01099A 04:898A: 47 A1     .word off_A147_02
- D 0 - I - 0x01099C 04:898C: E6 A8     .word off_A8E6_03
off_898E_0A:
- D 0 - I - 0x01099E 04:898E: 09        .byte $09   ; 
- D 0 - I - 0x01099F 04:898F: 87 96     .word off_9687_00
- D 0 - I - 0x0109A1 04:8991: E8 99     .word off_99E8_01
- D 0 - I - 0x0109A3 04:8993: DC A3     .word off_A3DC_02
- D 0 - I - 0x0109A5 04:8995: 46 A7     .word off_A746_03
off_8997_0B:
- D 0 - I - 0x0109A7 04:8997: 09        .byte $09   ; 
- D 0 - I - 0x0109A8 04:8998: 90 96     .word off_9690_00
- D 0 - I - 0x0109AA 04:899A: E8 99     .word off_99E8_01
- D 0 - I - 0x0109AC 04:899C: E5 A3     .word off_A3E5_02
- D 0 - I - 0x0109AE 04:899E: 3C AB     .word off_AB3C_03
off_89A0_0C:
- D 0 - I - 0x0109B0 04:89A0: 09        .byte $09   ; 
- D 0 - I - 0x0109B1 04:89A1: 99 96     .word off_9699_00
- D 0 - I - 0x0109B3 04:89A3: 68 9D     .word off_9D68_01
- D 0 - I - 0x0109B5 04:89A5: EE A3     .word off_A3EE_02
- D 0 - I - 0x0109B7 04:89A7: 45 AB     .word off_AB45_03
off_89A9_0D:
- D 0 - I - 0x0109B9 04:89A9: 09        .byte $09   ; 
- D 0 - I - 0x0109BA 04:89AA: A2 96     .word off_96A2_00
- D 0 - I - 0x0109BC 04:89AC: 68 9D     .word off_9D68_01
- D 0 - I - 0x0109BE 04:89AE: F4 A3     .word off_A3F4_02
- D 0 - I - 0x0109C0 04:89B0: 4B AB     .word off_AB4B_03
off_89B2_0E:
- D 0 - I - 0x0109C2 04:89B2: 0C        .byte $0C   ; 
- D 0 - I - 0x0109C3 04:89B3: 67 93     .word off_9367_00
- D 0 - I - 0x0109C5 04:89B5: DD 9B     .word off_9BDD_01
- D 0 - I - 0x0109C7 04:89B7: CA A0     .word off_A0CA_02
- D 0 - I - 0x0109C9 04:89B9: 68 A8     .word off_A868_03
off_89BB_0F:
- D 0 - I - 0x0109CB 04:89BB: 0A        .byte $0A   ; 
- D 0 - I - 0x0109CC 04:89BC: FF 95     .word off_95FF_00
- D 0 - I - 0x0109CE 04:89BE: 16 9D     .word off_9D16_01
- D 0 - I - 0x0109D0 04:89C0: 54 A3     .word off_A354_02
- D 0 - I - 0x0109D2 04:89C2: C5 AA     .word off_AAC5_03
off_89C4_10:
- D 0 - I - 0x0109D4 04:89C4: 07        .byte $07   ; 
- D 0 - I - 0x0109D5 04:89C5: 8A 98     .word off_988A_00
- D 0 - I - 0x0109D7 04:89C7: DF 9D     .word off_9DDF_01
- D 0 - I - 0x0109D9 04:89C9: 77 A5     .word off_A577_02
- D 0 - I - 0x0109DB 04:89CB: 91 AC     .word off_AC91_03
off_89CD_26:
- D 0 - I - 0x0109DD 04:89CD: 07        .byte $07   ; 
- D 0 - I - 0x0109DE 04:89CE: 8A 98     .word off_988A_00
- D 0 - I - 0x0109E0 04:89D0: DF 9D     .word off_9DDF_01
- D 0 - I - 0x0109E2 04:89D2: 77 A5     .word off_A577_02
- D 0 - I - 0x0109E4 04:89D4: 8A AC     .word off_AC8A_03
off_89D6_11:
- D 0 - I - 0x0109E6 04:89D6: 0D        .byte $0D   ; 
- D 0 - I - 0x0109E7 04:89D7: 92 92     .word off_9292_00
- D 0 - I - 0x0109E9 04:89D9: 4E 9B     .word off_9B4E_01
- D 0 - I - 0x0109EB 04:89DB: F5 9F     .word off_9FF5_02
- D 0 - I - 0x0109ED 04:89DD: 94 A7     .word off_A794_03
off_89DF_12:
- D 0 - I - 0x0109EF 04:89DF: 0B        .byte $0B   ; 
- D 0 - I - 0x0109F0 04:89E0: 75 94     .word off_9475_00
- D 0 - I - 0x0109F2 04:89E2: 5D 9C     .word off_9C5D_01
- D 0 - I - 0x0109F4 04:89E4: CB A1     .word off_A1CB_02
- D 0 - I - 0x0109F6 04:89E6: 64 A9     .word off_A964_03
off_89E8_13:
- - - - - - 0x0109F8 04:89E8: 01        .byte $01   ; 
- - - - - - 0x0109F9 04:89E9: 91 92     .word off_9291_00
- - - - - - 0x0109FB 04:89EB: C8 99     .word off_99C8_01
- - - - - - 0x0109FD 04:89ED: 23 9E     .word off_9E23_02
- - - - - - 0x0109FF 04:89EF: C6 A5     .word off_A5C6_03
off_89F1_14:
- - - - - - 0x010A01 04:89F1: 01        .byte $01   ; 
- - - - - - 0x010A02 04:89F2: 91 92     .word off_9291_00
- - - - - - 0x010A04 04:89F4: C8 99     .word off_99C8_01
- - - - - - 0x010A06 04:89F6: 5C 9E     .word off_9E5C_02
- - - - - - 0x010A08 04:89F8: C6 A5     .word off_A5C6_03
off_89FA_15:
off_89FA_16:
off_89FA_17:
off_89FA_18:
- - - - - - 0x010A0A 04:89FA: 01        .byte $01   ; 
- - - - - - 0x010A0B 04:89FB: EA 90     .word off_90EA_00
- - - - - - 0x010A0D 04:89FD: CE 99     .word off_99CE_01
- - - - - - 0x010A0F 04:89FF: 23 9E     .word off_9E23_02
- - - - - - 0x010A11 04:8A01: C6 A5     .word off_A5C6_03
off_8A03_19:
- D 0 - I - 0x010A13 04:8A03: 0C        .byte $0C   ; 
- D 0 - I - 0x010A14 04:8A04: 4F 93     .word off_934F_00
- D 0 - I - 0x010A16 04:8A06: E6 99     .word off_99E6_01
- D 0 - I - 0x010A18 04:8A08: B2 A0     .word off_A0B2_02
- D 0 - I - 0x010A1A 04:8A0A: 50 A8     .word off_A850_03
off_8A0C_1A:
- D 0 - I - 0x010A1C 04:8A0C: 0A        .byte $0A   ; 
- D 0 - I - 0x010A1D 04:8A0D: E1 95     .word off_95E1_00
- D 0 - I - 0x010A1F 04:8A0F: 0C 9D     .word off_9D0C_01
- D 0 - I - 0x010A21 04:8A11: 36 A3     .word off_A336_02
- D 0 - I - 0x010A23 04:8A13: A7 AA     .word off_AAA7_03
off_8A15_1B:
- D 0 - I - 0x010A25 04:8A15: 0A        .byte $0A   ; 
- D 0 - I - 0x010A26 04:8A16: EB 95     .word off_95EB_00
- D 0 - I - 0x010A28 04:8A18: E6 99     .word off_99E6_01
- D 0 - I - 0x010A2A 04:8A1A: 40 A3     .word off_A340_02
- D 0 - I - 0x010A2C 04:8A1C: B1 AA     .word off_AAB1_03
off_8A1E_1C:
- D 0 - I - 0x010A2E 04:8A1E: 0E        .byte $0E   ; 
- D 0 - I - 0x010A2F 04:8A1F: 4D 92     .word off_924D_00
- D 0 - I - 0x010A31 04:8A21: 0B 9B     .word off_9B0B_01
- D 0 - I - 0x010A33 04:8A23: B0 9F     .word off_9FB0_02
- D 0 - I - 0x010A35 04:8A25: 4F A7     .word off_A74F_03
off_8A27_00:
- D 0 - I - 0x010A37 04:8A27: 04        .byte $04   ; 
- D 0 - I - 0x010A38 04:8A28: 5B 98     .word off_985B_00
- D 0 - I - 0x010A3A 04:8A2A: D2 99     .word off_99D2_01
- D 0 - I - 0x010A3C 04:8A2C: A6 A1     .word off_A1A6_02
- D 0 - I - 0x010A3E 04:8A2E: C5 A5     .word off_A5C5_03
off_8A30_01:
- D 0 - I - 0x010A40 04:8A30: 04        .byte $04   ; 
- D 0 - I - 0x010A41 04:8A31: 38 99     .word off_9938_00
- D 0 - I - 0x010A43 04:8A33: E4 9A     .word off_9AE4_01
- D 0 - I - 0x010A45 04:8A35: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010A47 04:8A37: 02 A6     .word off_A602_03
off_8A39_02:
- D 0 - I - 0x010A49 04:8A39: 04        .byte $04   ; 
- D 0 - I - 0x010A4A 04:8A3A: 5B 98     .word off_985B_00
- D 0 - I - 0x010A4C 04:8A3C: F9 9D     .word off_9DF9_01
- D 0 - I - 0x010A4E 04:8A3E: 5B A4     .word off_A45B_02
- D 0 - I - 0x010A50 04:8A40: DA A6     .word off_A6DA_03
off_8A42_03:
- D 0 - I - 0x010A52 04:8A42: 04        .byte $04   ; 
- D 0 - I - 0x010A53 04:8A43: 38 99     .word off_9938_00
- D 0 - I - 0x010A55 04:8A45: F6 9D     .word off_9DF6_01
- D 0 - I - 0x010A57 04:8A47: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010A59 04:8A49: B0 A6     .word off_A6B0_03
off_8A4B_04:
- D 0 - I - 0x010A5B 04:8A4B: 04        .byte $04   ; 
- D 0 - I - 0x010A5C 04:8A4C: D5 97     .word off_97D5_00
- D 0 - I - 0x010A5E 04:8A4E: D2 99     .word off_99D2_01
- D 0 - I - 0x010A60 04:8A50: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010A62 04:8A52: 19 AA     .word off_AA19_03
off_8A54_05:
- D 0 - I - 0x010A64 04:8A54: 06        .byte $06   ; 
- D 0 - I - 0x010A65 04:8A55: B8 98     .word off_98B8_00
- D 0 - I - 0x010A67 04:8A57: E8 9D     .word off_9DE8_01
- D 0 - I - 0x010A69 04:8A59: A2 A5     .word off_A5A2_02
- D 0 - I - 0x010A6B 04:8A5B: BE AC     .word off_ACBE_03
off_8A5D_06:
- D 0 - I - 0x010A6D 04:8A5D: 06        .byte $06   ; 
- D 0 - I - 0x010A6E 04:8A5E: 91 98     .word off_9891_00
- D 0 - I - 0x010A70 04:8A60: E6 9D     .word off_9DE6_01
- D 0 - I - 0x010A72 04:8A62: 7E A5     .word off_A57E_02
- D 0 - I - 0x010A74 04:8A64: 98 AC     .word off_AC98_03
off_8A66_07:
- D 0 - I - 0x010A76 04:8A66: 04        .byte $04   ; 
- D 0 - I - 0x010A77 04:8A67: 2C 99     .word off_992C_00
- D 0 - I - 0x010A79 04:8A69: D2 99     .word off_99D2_01
- D 0 - I - 0x010A7B 04:8A6B: A6 A1     .word off_A1A6_02
- D 0 - I - 0x010A7D 04:8A6D: C5 A5     .word off_A5C5_03
off_8A6F_08:
- D 0 - I - 0x010A7F 04:8A6F: 04        .byte $04   ; 
- D 0 - I - 0x010A80 04:8A70: D5 97     .word off_97D5_00
- D 0 - I - 0x010A82 04:8A72: D2 99     .word off_99D2_01
- D 0 - I - 0x010A84 04:8A74: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010A86 04:8A76: 02 A6     .word off_A602_03
off_8A78_09:
- D 0 - I - 0x010A88 04:8A78: 04        .byte $04   ; 
- D 0 - I - 0x010A89 04:8A79: 22 99     .word off_9922_00
- D 0 - I - 0x010A8B 04:8A7B: DB 9D     .word off_9DDB_01
- D 0 - I - 0x010A8D 04:8A7D: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010A8F 04:8A7F: 02 A6     .word off_A602_03
off_8A81_0A:
- D 0 - I - 0x010A91 04:8A81: 04        .byte $04   ; 
- D 0 - I - 0x010A92 04:8A82: D5 97     .word off_97D5_00
- D 0 - I - 0x010A94 04:8A84: F3 9D     .word off_9DF3_01
- D 0 - I - 0x010A96 04:8A86: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010A98 04:8A88: B0 A6     .word off_A6B0_03
off_8A8A_0B:
off_8A8A_25:
- D 0 - I - 0x010A9A 04:8A8A: 04        .byte $04   ; 
- D 0 - I - 0x010A9B 04:8A8B: 05 99     .word off_9905_00
- D 0 - I - 0x010A9D 04:8A8D: D2 99     .word off_99D2_01
- D 0 - I - 0x010A9F 04:8A8F: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010AA1 04:8A91: 02 A6     .word off_A602_03
off_8A93_0C:
- D 0 - I - 0x010AA3 04:8A93: 04        .byte $04   ; 
- D 0 - I - 0x010AA4 04:8A94: 69 99     .word off_9969_00
- D 0 - I - 0x010AA6 04:8A96: D2 99     .word off_99D2_01
- D 0 - I - 0x010AA8 04:8A98: A6 A1     .word off_A1A6_02
- D 0 - I - 0x010AAA 04:8A9A: 12 A8     .word off_A812_03
off_8A9C_0E:
- D 0 - I - 0x010AAC 04:8A9C: 02        .byte $02   ; 
- D 0 - I - 0x010AAD 04:8A9D: 92 99     .word off_9992_00
- D 0 - I - 0x010AAF 04:8A9F: F9 99     .word off_99F9_01
- D 0 - I - 0x010AB1 04:8AA1: 7C 9E     .word off_9E7C_02
- D 0 - I - 0x010AB3 04:8AA3: C8 A5     .word off_A5C8_03
off_8AA5_0F:
- D 0 - I - 0x010AB5 04:8AA5: 02        .byte $02   ; 
- D 0 - I - 0x010AB6 04:8AA6: B7 97     .word off_97B7_00
- D 0 - I - 0x010AB8 04:8AA8: CE 99     .word off_99CE_01
- D 0 - I - 0x010ABA 04:8AAA: 7C 9E     .word off_9E7C_02
- D 0 - I - 0x010ABC 04:8AAC: C8 A5     .word off_A5C8_03
off_8AAE_10:
- D 0 - I - 0x010ABE 04:8AAE: 04        .byte $04   ; 
- D 0 - I - 0x010ABF 04:8AAF: 6B 98     .word off_986B_00
- D 0 - I - 0x010AC1 04:8AB1: DB 9D     .word off_9DDB_01
- D 0 - I - 0x010AC3 04:8AB3: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010AC5 04:8AB5: 02 A6     .word off_A602_03
off_8AB7_11:
- D 0 - I - 0x010AC7 04:8AB7: 04        .byte $04   ; 
- D 0 - I - 0x010AC8 04:8AB8: B5 91     .word off_91B5_00
- D 0 - I - 0x010ACA 04:8ABA: FF 99     .word off_99FF_01
- D 0 - I - 0x010ACC 04:8ABC: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010ACE 04:8ABE: 02 A6     .word off_A602_03
off_8AC0_12:
- D 0 - I - 0x010AD0 04:8AC0: 04        .byte $04   ; 
- D 0 - I - 0x010AD1 04:8AC1: 57 99     .word off_9957_00
- D 0 - I - 0x010AD3 04:8AC3: 01 9E     .word off_9E01_01
- D 0 - I - 0x010AD5 04:8AC5: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010AD7 04:8AC7: 02 A6     .word off_A602_03
off_8AC9_13:
- D 0 - I - 0x010AD9 04:8AC9: 08        .byte $08   ; 
- D 0 - I - 0x010ADA 04:8ACA: 3B 98     .word off_983B_00
- D 0 - I - 0x010ADC 04:8ACC: FA 99     .word off_99FA_01
- D 0 - I - 0x010ADE 04:8ACE: 33 A5     .word off_A533_02
- D 0 - I - 0x010AE0 04:8AD0: 5B AC     .word off_AC5B_03
off_8AD2_14:
- D 0 - I - 0x010AE2 04:8AD2: 08        .byte $08   ; 
- D 0 - I - 0x010AE3 04:8AD3: 5B 98     .word off_985B_00
- D 0 - I - 0x010AE5 04:8AD5: D5 9D     .word off_9DD5_01
- D 0 - I - 0x010AE7 04:8AD7: 53 A5     .word off_A553_02
- D 0 - I - 0x010AE9 04:8AD9: 73 AC     .word off_AC73_03
off_8ADB_15:
- D 0 - I - 0x010AEB 04:8ADB: 08        .byte $08   ; 
- D 0 - I - 0x010AEC 04:8ADC: 6B 98     .word off_986B_00
- D 0 - I - 0x010AEE 04:8ADE: DB 9D     .word off_9DDB_01
- D 0 - I - 0x010AF0 04:8AE0: 60 A5     .word off_A560_02
- D 0 - I - 0x010AF2 04:8AE2: 7B AC     .word off_AC7B_03
off_8AE4_16:
- D 0 - I - 0x010AF4 04:8AE4: 04        .byte $04   ; 
- D 0 - I - 0x010AF5 04:8AE5: 12 99     .word off_9912_00
- D 0 - I - 0x010AF7 04:8AE7: EE 9D     .word off_9DEE_01
- D 0 - I - 0x010AF9 04:8AE9: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010AFB 04:8AEB: 02 A6     .word off_A602_03
off_8AED_17:
- D 0 - I - 0x010AFD 04:8AED: 04        .byte $04   ; 
- D 0 - I - 0x010AFE 04:8AEE: 16 99     .word off_9916_00
- D 0 - I - 0x010B00 04:8AF0: EE 9D     .word off_9DEE_01
- D 0 - I - 0x010B02 04:8AF2: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010B04 04:8AF4: 02 A6     .word off_A602_03
off_8AF6_18:
- D 0 - I - 0x010B06 04:8AF6: 04        .byte $04   ; 
- D 0 - I - 0x010B07 04:8AF7: 1A 99     .word off_991A_00
- D 0 - I - 0x010B09 04:8AF9: EE 9D     .word off_9DEE_01
- D 0 - I - 0x010B0B 04:8AFB: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010B0D 04:8AFD: 02 A6     .word off_A602_03
off_8AFF_19:
- D 0 - I - 0x010B0F 04:8AFF: 04        .byte $04   ; 
- D 0 - I - 0x010B10 04:8B00: 1E 99     .word off_991E_00
- D 0 - I - 0x010B12 04:8B02: EF 9D     .word off_9DEF_01
- D 0 - I - 0x010B14 04:8B04: CE A2     .word off_A2CE_02
- D 0 - I - 0x010B16 04:8B06: C4 AC     .word off_ACC4_03
off_8B08_1A:
- D 0 - I - 0x010B18 04:8B08: 03        .byte $03   ; 
- D 0 - I - 0x010B19 04:8B09: 88 99     .word off_9988_00
- D 0 - I - 0x010B1B 04:8B0B: D2 99     .word off_99D2_01
- D 0 - I - 0x010B1D 04:8B0D: 4C A1     .word off_A14C_02
- D 0 - I - 0x010B1F 04:8B0F: C8 AC     .word off_ACC8_03
off_8B11_1B:
- D 0 - I - 0x010B21 04:8B11: 03        .byte $03   ; 
- D 0 - I - 0x010B22 04:8B12: 88 99     .word off_9988_00
- D 0 - I - 0x010B24 04:8B14: D2 99     .word off_99D2_01
- D 0 - I - 0x010B26 04:8B16: 4C A1     .word off_A14C_02
- D 0 - I - 0x010B28 04:8B18: 12 A6     .word off_A612_03
off_8B1A_1C:
- D 0 - I - 0x010B2A 04:8B1A: 04        .byte $04   ; 
- D 0 - I - 0x010B2B 04:8B1B: 26 99     .word off_9926_00
- D 0 - I - 0x010B2D 04:8B1D: E4 9A     .word off_9AE4_01
- D 0 - I - 0x010B2F 04:8B1F: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010B31 04:8B21: 02 A6     .word off_A602_03
off_8B23_1D:
- D 0 - I - 0x010B33 04:8B23: 04        .byte $04   ; 
- D 0 - I - 0x010B34 04:8B24: 28 99     .word off_9928_00
- D 0 - I - 0x010B36 04:8B26: F6 9D     .word off_9DF6_01
- D 0 - I - 0x010B38 04:8B28: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010B3A 04:8B2A: 02 A6     .word off_A602_03
off_8B2C_1E:
- D 0 - I - 0x010B3C 04:8B2C: 03        .byte $03   ; 
- D 0 - I - 0x010B3D 04:8B2D: 8B 99     .word off_998B_00
- D 0 - I - 0x010B3F 04:8B2F: D2 99     .word off_99D2_01
- D 0 - I - 0x010B41 04:8B31: 68 9F     .word off_9F68_02
- D 0 - I - 0x010B43 04:8B33: C8 A5     .word off_A5C8_03
off_8B35_1F:
- D 0 - I - 0x010B45 04:8B35: 03        .byte $03   ; 
- D 0 - I - 0x010B46 04:8B36: 9B 91     .word off_919B_00
- D 0 - I - 0x010B48 04:8B38: D2 99     .word off_99D2_01
- D 0 - I - 0x010B4A 04:8B3A: 6E 9E     .word off_9E6E_02
- D 0 - I - 0x010B4C 04:8B3C: C8 A5     .word off_A5C8_03
off_8B3E_0D:
off_8B3E_20:
- D 0 - I - 0x010B4E 04:8B3E: 04        .byte $04   ; 
- D 0 - I - 0x010B4F 04:8B3F: 30 99     .word off_9930_00
- D 0 - I - 0x010B51 04:8B41: D2 99     .word off_99D2_01
- D 0 - I - 0x010B53 04:8B43: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010B55 04:8B45: 02 A6     .word off_A602_03
off_8B47_21:
- D 0 - I - 0x010B57 04:8B47: 04        .byte $04   ; 
- D 0 - I - 0x010B58 04:8B48: 34 99     .word off_9934_00
- D 0 - I - 0x010B5A 04:8B4A: D2 99     .word off_99D2_01
- D 0 - I - 0x010B5C 04:8B4C: F6 9F     .word off_9FF6_02
- D 0 - I - 0x010B5E 04:8B4E: 02 A6     .word off_A602_03
off_8B50_22:
- - - - - - 0x010B60 04:8B50: 06        .byte $06   ; 
- - - - - - 0x010B61 04:8B51: A3 98     .word off_98A3_00
- - - - - - 0x010B63 04:8B53: FA 99     .word off_99FA_01
- - - - - - 0x010B65 04:8B55: 90 A5     .word off_A590_02
- - - - - - 0x010B67 04:8B57: A9 AC     .word off_ACA9_03
off_8B59_23:
- - - - - - 0x010B69 04:8B59: 06        .byte $06   ; 
- - - - - - 0x010B6A 04:8B5A: AF 98     .word off_98AF_00
- - - - - - 0x010B6C 04:8B5C: FA 99     .word off_99FA_01
- - - - - - 0x010B6E 04:8B5E: 96 A5     .word off_A596_02
- - - - - - 0x010B70 04:8B60: B5 AC     .word off_ACB5_03
off_8B62_24:
- - - - - - 0x010B72 04:8B62: 06        .byte $06   ; 
- - - - - - 0x010B73 04:8B63: B2 98     .word off_98B2_00
- - - - - - 0x010B75 04:8B65: 02 9A     .word off_9A02_01
- - - - - - 0x010B77 04:8B67: 9C A5     .word off_A59C_02
- - - - - - 0x010B79 04:8B69: B8 AC     .word off_ACB8_03
off_8B6B_26:
off_8B6B_3D:
- D 0 - I - 0x010B7B 04:8B6B: 04        .byte $04   ; 
- D 0 - I - 0x010B7C 04:8B6C: 3C 99     .word off_993C_00
- D 0 - I - 0x010B7E 04:8B6E: D2 99     .word off_99D2_01
- D 0 - I - 0x010B80 04:8B70: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010B82 04:8B72: 02 A6     .word off_A602_03
off_8B74_27:
- D 0 - I - 0x010B84 04:8B74: 04        .byte $04   ; 
- D 0 - I - 0x010B85 04:8B75: 40 99     .word off_9940_00
- D 0 - I - 0x010B87 04:8B77: F9 9D     .word off_9DF9_01
- D 0 - I - 0x010B89 04:8B79: 5A A4     .word off_A45A_02
- D 0 - I - 0x010B8B 04:8B7B: 02 A6     .word off_A602_03
off_8B7D_28:
- D 0 - I - 0x010B8D 04:8B7D: 04        .byte $04   ; 
- D 0 - I - 0x010B8E 04:8B7E: 44 99     .word off_9944_00
- D 0 - I - 0x010B90 04:8B80: F9 9D     .word off_9DF9_01
- D 0 - I - 0x010B92 04:8B82: 5A A4     .word off_A45A_02
- D 0 - I - 0x010B94 04:8B84: 02 A6     .word off_A602_03
off_8B86_29:
- D 0 - I - 0x010B96 04:8B86: 04        .byte $04   ; 
- D 0 - I - 0x010B97 04:8B87: 48 99     .word off_9948_00
- D 0 - I - 0x010B99 04:8B89: DA 9D     .word off_9DDA_01
- D 0 - I - 0x010B9B 04:8B8B: 55 A3     .word off_A355_02
- D 0 - I - 0x010B9D 04:8B8D: 10 A8     .word off_A810_03
off_8B8F_2A:
- D 0 - I - 0x010B9F 04:8B8F: 02        .byte $02   ; 
- D 0 - I - 0x010BA0 04:8B90: 73 92     .word off_9273_00
- D 0 - I - 0x010BA2 04:8B92: CE 99     .word off_99CE_01
- D 0 - I - 0x010BA4 04:8B94: 7C 9E     .word off_9E7C_02
- D 0 - I - 0x010BA6 04:8B96: DF A5     .word off_A5DF_03
off_8B98_2B:
- D 0 - I - 0x010BA8 04:8B98: 04        .byte $04   ; 
- D 0 - I - 0x010BA9 04:8B99: 4B 99     .word off_994B_00
- D 0 - I - 0x010BAB 04:8B9B: FD 9D     .word off_9DFD_01
- D 0 - I - 0x010BAD 04:8B9D: A8 A5     .word off_A5A8_02
- D 0 - I - 0x010BAF 04:8B9F: 02 A6     .word off_A602_03
off_8BA1_2C:
- D 0 - I - 0x010BB1 04:8BA1: 02        .byte $02   ; 
- D 0 - I - 0x010BB2 04:8BA2: 6C 98     .word off_986C_00
- D 0 - I - 0x010BB4 04:8BA4: 92 9C     .word off_9C92_01
- D 0 - I - 0x010BB6 04:8BA6: 7C 9E     .word off_9E7C_02
- D 0 - I - 0x010BB8 04:8BA8: 71 A7     .word off_A771_03
off_8BAA_2D:
- D 0 - I - 0x010BBA 04:8BAA: 04        .byte $04   ; 
- D 0 - I - 0x010BBB 04:8BAB: 53 99     .word off_9953_00
- D 0 - I - 0x010BBD 04:8BAD: D2 99     .word off_99D2_01
- D 0 - I - 0x010BBF 04:8BAF: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010BC1 04:8BB1: 02 A6     .word off_A602_03
off_8BB3_2E:
- D 0 - I - 0x010BC3 04:8BB3: 04        .byte $04   ; 
- D 0 - I - 0x010BC4 04:8BB4: 9C 91     .word off_919C_00
- D 0 - I - 0x010BC6 04:8BB6: D2 99     .word off_99D2_01
- D 0 - I - 0x010BC8 04:8BB8: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010BCA 04:8BBA: 02 A6     .word off_A602_03
off_8BBC_2F:
- D 0 - I - 0x010BCC 04:8BBC: 06        .byte $06   ; 
- D 0 - I - 0x010BCD 04:8BBD: 97 98     .word off_9897_00
- D 0 - I - 0x010BCF 04:8BBF: FA 99     .word off_99FA_01
- D 0 - I - 0x010BD1 04:8BC1: 84 A5     .word off_A584_02
- D 0 - I - 0x010BD3 04:8BC3: 9E AC     .word off_AC9E_03
off_8BC5_30:
- D 0 - I - 0x010BD5 04:8BC5: 05        .byte $05   ; 
- D 0 - I - 0x010BD6 04:8BC6: 05 99     .word off_9905_00
- D 0 - I - 0x010BD8 04:8BC8: D2 99     .word off_99D2_01
- D 0 - I - 0x010BDA 04:8BCA: DA 9F     .word off_9FDA_02
- D 0 - I - 0x010BDC 04:8BCC: 5C A6     .word off_A65C_03
off_8BCE_31:
- - - - - - 0x010BDE 04:8BCE: 04        .byte $04   ; 
- - - - - - 0x010BDF 04:8BCF: 5B 99     .word off_995B_00
- - - - - - 0x010BE1 04:8BD1: D2 99     .word off_99D2_01
- - - - - - 0x010BE3 04:8BD3: 5B A4     .word off_A45B_02
- - - - - - 0x010BE5 04:8BD5: C5 A5     .word off_A5C5_03
off_8BD7_32:
- - - - - - 0x010BE7 04:8BD7: 04        .byte $04   ; 
- - - - - - 0x010BE8 04:8BD8: 63 96     .word off_9663_00
- - - - - - 0x010BEA 04:8BDA: D2 99     .word off_99D2_01
- - - - - - 0x010BEC 04:8BDC: C9 9E     .word off_9EC9_02
- - - - - - 0x010BEE 04:8BDE: 02 A6     .word off_A602_03
off_8BE0_33:
- - - - - - 0x010BF0 04:8BE0: 06        .byte $06   ; 
- - - - - - 0x010BF1 04:8BE1: A9 98     .word off_98A9_00
- - - - - - 0x010BF3 04:8BE3: FA 99     .word off_99FA_01
- - - - - - 0x010BF5 04:8BE5: 7F A5     .word off_A57F_02
- - - - - - 0x010BF7 04:8BE7: AF AC     .word off_ACAF_03
off_8BE9_34:
- D 0 - I - 0x010BF9 04:8BE9: 04        .byte $04   ; 
- D 0 - I - 0x010BFA 04:8BEA: 6D 99     .word off_996D_00
- D 0 - I - 0x010BFC 04:8BEC: EE 9D     .word off_9DEE_01
- D 0 - I - 0x010BFE 04:8BEE: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010C00 04:8BF0: 02 A6     .word off_A602_03
off_8BF2_35:
- D 0 - I - 0x010C02 04:8BF2: 04        .byte $04   ; 
- D 0 - I - 0x010C03 04:8BF3: 71 99     .word off_9971_00
- D 0 - I - 0x010C05 04:8BF5: EE 9D     .word off_9DEE_01
- D 0 - I - 0x010C07 04:8BF7: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010C09 04:8BF9: 02 A6     .word off_A602_03
off_8BFB_36:
- D 0 - I - 0x010C0B 04:8BFB: 04        .byte $04   ; 
- D 0 - I - 0x010C0C 04:8BFC: 75 99     .word off_9975_00
- D 0 - I - 0x010C0E 04:8BFE: DB 9D     .word off_9DDB_01
- D 0 - I - 0x010C10 04:8C00: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010C12 04:8C02: 02 A6     .word off_A602_03
off_8C04_37:
- D 0 - I - 0x010C14 04:8C04: 04        .byte $04   ; 
- D 0 - I - 0x010C15 04:8C05: 78 99     .word off_9978_00
- D 0 - I - 0x010C17 04:8C07: 05 9E     .word off_9E05_01
- D 0 - I - 0x010C19 04:8C09: 5B A4     .word off_A45B_02
- D 0 - I - 0x010C1B 04:8C0B: C5 A5     .word off_A5C5_03
off_8C0D_38:
- D 0 - I - 0x010C1D 04:8C0D: 04        .byte $04   ; 
- D 0 - I - 0x010C1E 04:8C0E: 7C 99     .word off_997C_00
- D 0 - I - 0x010C20 04:8C10: 08 9E     .word off_9E08_01
- D 0 - I - 0x010C22 04:8C12: 5B A4     .word off_A45B_02
- D 0 - I - 0x010C24 04:8C14: C5 A5     .word off_A5C5_03
off_8C16_39:
- D 0 - I - 0x010C26 04:8C16: 04        .byte $04   ; 
- D 0 - I - 0x010C27 04:8C17: 67 96     .word off_9667_00
- D 0 - I - 0x010C29 04:8C19: D2 99     .word off_99D2_01
- D 0 - I - 0x010C2B 04:8C1B: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010C2D 04:8C1D: 9E A6     .word off_A69E_03
off_8C1F_3A:
- D 0 - I - 0x010C2F 04:8C1F: 04        .byte $04   ; 
- D 0 - I - 0x010C30 04:8C20: 63 96     .word off_9663_00
- D 0 - I - 0x010C32 04:8C22: D2 99     .word off_99D2_01
- D 0 - I - 0x010C34 04:8C24: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010C36 04:8C26: 19 AA     .word off_AA19_03
off_8C28_3B:
- D 0 - I - 0x010C38 04:8C28: 04        .byte $04   ; 
- D 0 - I - 0x010C39 04:8C29: 80 99     .word off_9980_00
- D 0 - I - 0x010C3B 04:8C2B: D2 99     .word off_99D2_01
- D 0 - I - 0x010C3D 04:8C2D: A6 A1     .word off_A1A6_02
- D 0 - I - 0x010C3F 04:8C2F: C5 A5     .word off_A5C5_03
off_8C31_3C:
- D 0 - I - 0x010C41 04:8C31: 04        .byte $04   ; 
- D 0 - I - 0x010C42 04:8C32: 84 99     .word off_9984_00
- D 0 - I - 0x010C44 04:8C34: 00 9A     .word off_9A00_01
- D 0 - I - 0x010C46 04:8C36: A6 A1     .word off_A1A6_02
- D 0 - I - 0x010C48 04:8C38: C5 A5     .word off_A5C5_03
off_8C3A_3E:
- D 0 - I - 0x010C4A 04:8C3A: 04        .byte $04   ; 
- D 0 - I - 0x010C4B 04:8C3B: 0A 99     .word off_990A_00
- D 0 - I - 0x010C4D 04:8C3D: DB 9D     .word off_9DDB_01
- D 0 - I - 0x010C4F 04:8C3F: C9 9E     .word off_9EC9_02
- D 0 - I - 0x010C51 04:8C41: 02 A6     .word off_A602_03
off_8C43_3F:
- D 0 - I - 0x010C53 04:8C43: 04        .byte $04   ; 
- D 0 - I - 0x010C54 04:8C44: 0E 99     .word off_990E_00
- D 0 - I - 0x010C56 04:8C46: 02 9A     .word off_9A02_01
- D 0 - I - 0x010C58 04:8C48: 5A A4     .word off_A45A_02
- D 0 - I - 0x010C5A 04:8C4A: 02 A6     .word off_A602_03
off_8C4C_40:
- D 0 - I - 0x010C5C 04:8C4C: 09        .byte $09   ; 
- D 0 - I - 0x010C5D 04:8C4D: 7E 96     .word off_967E_00
- D 0 - I - 0x010C5F 04:8C4F: 4D 9D     .word off_9D4D_01
- D 0 - I - 0x010C61 04:8C51: D3 A3     .word off_A3D3_02
- D 0 - I - 0x010C63 04:8C53: 33 AB     .word off_AB33_03
off_8C55_41:
- D 0 - I - 0x010C65 04:8C55: 09        .byte $09   ; 
- D 0 - I - 0x010C66 04:8C56: 75 96     .word off_9675_00
- D 0 - I - 0x010C68 04:8C58: 5F 9D     .word off_9D5F_01
- D 0 - I - 0x010C6A 04:8C5A: CC A3     .word off_A3CC_02
- D 0 - I - 0x010C6C 04:8C5C: 2A AB     .word off_AB2A_03
off_8C5E_42:
- D 0 - I - 0x010C6E 04:8C5E: 02        .byte $02   ; 
- D 0 - I - 0x010C6F 04:8C5F: 8E 99     .word off_998E_00
- D 0 - I - 0x010C71 04:8C61: CE 99     .word off_99CE_01
- D 0 - I - 0x010C73 04:8C63: 57 A3     .word off_A357_02
- D 0 - I - 0x010C75 04:8C65: CD AC     .word off_ACCD_03
off_8C67_43:
- D 0 - I - 0x010C77 04:8C67: 02        .byte $02   ; 
- D 0 - I - 0x010C78 04:8C68: 8E 99     .word off_998E_00
- D 0 - I - 0x010C7A 04:8C6A: CE 99     .word off_99CE_01
- D 0 - I - 0x010C7C 04:8C6C: B2 A5     .word off_A5B2_02
- D 0 - I - 0x010C7E 04:8C6E: CB AC     .word off_ACCB_03
off_8C70_44:
- D 0 - I - 0x010C80 04:8C70: 02        .byte $02   ; 
- D 0 - I - 0x010C81 04:8C71: 8E 99     .word off_998E_00
- D 0 - I - 0x010C83 04:8C73: CE 99     .word off_99CE_01
- D 0 - I - 0x010C85 04:8C75: B0 A5     .word off_A5B0_02
- D 0 - I - 0x010C87 04:8C77: BD A5     .word off_A5BD_03
off_8C79_45:
- D 0 - I - 0x010C89 04:8C79: 01        .byte $01   ; 
- D 0 - I - 0x010C8A 04:8C7A: 84 93     .word off_9384_00
- D 0 - I - 0x010C8C 04:8C7C: CE 99     .word off_99CE_01
- D 0 - I - 0x010C8E 04:8C7E: 23 9E     .word off_9E23_02
- D 0 - I - 0x010C90 04:8C80: C6 A5     .word off_A5C6_03
off_8C82_00:
- - - - - - 0x010C92 04:8C82: 01        .byte $01   ; 
- - - - - - 0x010C93 04:8C83: 80 95     .word off_9580_00
- - - - - - 0x010C95 04:8C85: CE 99     .word off_99CE_01
- - - - - - 0x010C97 04:8C87: 0F 9E     .word off_9E0F_02
- - - - - - 0x010C99 04:8C89: C6 A5     .word off_A5C6_03
off_8C8B_01:
- - - - - - 0x010C9B 04:8C8B: 02        .byte $02   ; 
- - - - - - 0x010C9C 04:8C8C: 90 99     .word off_9990_00
- - - - - - 0x010C9E 04:8C8E: 01 9A     .word off_9A01_01
- - - - - - 0x010CA0 04:8C90: 7C 9E     .word off_9E7C_02
- - - - - - 0x010CA2 04:8C92: 99 A7     .word off_A799_03
off_8C94_00:
- - - - - - 0x010CA4 04:8C94: 01        .byte $01   ; 
- - - - - - 0x010CA5 04:8C95: 7F 93     .word off_937F_00
- - - - - - 0x010CA7 04:8C97: CE 99     .word off_99CE_01
- - - - - - 0x010CA9 04:8C99: 0F 9E     .word off_9E0F_02
- - - - - - 0x010CAB 04:8C9B: A4 A8     .word off_A8A4_03
off_8C9D_01:
- - - - - - 0x010CAD 04:8C9D: 01        .byte $01   ; 
- - - - - - 0x010CAE 04:8C9E: 80 93     .word off_9380_00
- - - - - - 0x010CB0 04:8CA0: CE 99     .word off_99CE_01
- - - - - - 0x010CB2 04:8CA2: 0F 9E     .word off_9E0F_02
- - - - - - 0x010CB4 04:8CA4: A4 A8     .word off_A8A4_03
off_8CA6_02:
- - - - - - 0x010CB6 04:8CA6: 01        .byte $01   ; 
- - - - - - 0x010CB7 04:8CA7: 82 93     .word off_9382_00
- - - - - - 0x010CB9 04:8CA9: CE 99     .word off_99CE_01
- - - - - - 0x010CBB 04:8CAB: 0F 9E     .word off_9E0F_02
- - - - - - 0x010CBD 04:8CAD: A4 A8     .word off_A8A4_03
off_8CAF_03:
- - - - - - 0x010CBF 04:8CAF: 01        .byte $01   ; 
- - - - - - 0x010CC0 04:8CB0: 83 93     .word off_9383_00
- - - - - - 0x010CC2 04:8CB2: CE 99     .word off_99CE_01
- - - - - - 0x010CC4 04:8CB4: 0F 9E     .word off_9E0F_02
- - - - - - 0x010CC6 04:8CB6: A4 A8     .word off_A8A4_03
off_8CB8_04:
- - - - - - 0x010CC8 04:8CB8: 01        .byte $01   ; 
- - - - - - 0x010CC9 04:8CB9: 81 93     .word off_9381_00
- - - - - - 0x010CCB 04:8CBB: CE 99     .word off_99CE_01
- - - - - - 0x010CCD 04:8CBD: 0F 9E     .word off_9E0F_02
- - - - - - 0x010CCF 04:8CBF: A4 A8     .word off_A8A4_03
off_8CC1_00:
- D 0 - I - 0x010CD1 04:8CC1: 01        .byte $01   ; 
- D 0 - I - 0x010CD2 04:8CC2: E5 90     .word off_90E5_00
- D 0 - I - 0x010CD4 04:8CC4: CE 99     .word off_99CE_01
- D 0 - I - 0x010CD6 04:8CC6: 5C 9E     .word off_9E5C_02
- D 0 - I - 0x010CD8 04:8CC8: C6 A5     .word off_A5C6_03
off_8CCA_01:
- D 0 - I - 0x010CDA 04:8CCA: 01        .byte $01   ; 
- D 0 - I - 0x010CDB 04:8CCB: C6 95     .word off_95C6_00
- D 0 - I - 0x010CDD 04:8CCD: CE 99     .word off_99CE_01
- D 0 - I - 0x010CDF 04:8CCF: 5C 9E     .word off_9E5C_02
- D 0 - I - 0x010CE1 04:8CD1: C6 A5     .word off_A5C6_03
off_8CD3_02:
- D 0 - I - 0x010CE3 04:8CD3: 0D        .byte $0D   ; 
- D 0 - I - 0x010CE4 04:8CD4: 14 93     .word off_9314_00
- D 0 - I - 0x010CE6 04:8CD6: E6 99     .word off_99E6_01
- D 0 - I - 0x010CE8 04:8CD8: 75 A0     .word off_A075_02
- D 0 - I - 0x010CEA 04:8CDA: 16 A8     .word off_A816_03
off_8CDC_03:
- D 0 - I - 0x010CEC 04:8CDC: 0F        .byte $0F   ; 
- D 0 - I - 0x010CED 04:8CDD: FA 91     .word off_91FA_00
- D 0 - I - 0x010CEF 04:8CDF: D7 9A     .word off_9AD7_01
- D 0 - I - 0x010CF1 04:8CE1: 5D 9F     .word off_9F5D_02
- D 0 - I - 0x010CF3 04:8CE3: FE A6     .word off_A6FE_03
off_8CE5_04:
- D 0 - I - 0x010CF5 04:8CE5: 0E        .byte $0E   ; 
- D 0 - I - 0x010CF6 04:8CE6: 5B 92     .word off_925B_00
- D 0 - I - 0x010CF8 04:8CE8: 19 9B     .word off_9B19_01
- D 0 - I - 0x010CFA 04:8CEA: BE 9F     .word off_9FBE_02
- D 0 - I - 0x010CFC 04:8CEC: 5D A7     .word off_A75D_03
off_8CEE_05:
- D 0 - I - 0x010CFE 04:8CEE: 0E        .byte $0E   ; 
- D 0 - I - 0x010CFF 04:8CEF: 3F 92     .word off_923F_00
- D 0 - I - 0x010D01 04:8CF1: 00 9B     .word off_9B00_01
- D 0 - I - 0x010D03 04:8CF3: A2 9F     .word off_9FA2_02
- D 0 - I - 0x010D05 04:8CF5: 41 A7     .word off_A741_03
off_8CF7_06:
- D 0 - I - 0x010D07 04:8CF7: 0D        .byte $0D   ; 
- D 0 - I - 0x010D08 04:8CF8: C6 92     .word off_92C6_00
- D 0 - I - 0x010D0A 04:8CFA: 80 9B     .word off_9B80_01
- D 0 - I - 0x010D0C 04:8CFC: 29 A0     .word off_A029_02
- D 0 - I - 0x010D0E 04:8CFE: C8 A7     .word off_A7C8_03
off_8D00_07:
- D 0 - I - 0x010D10 04:8D00: 0E        .byte $0E   ; 
- D 0 - I - 0x010D11 04:8D01: 17 92     .word off_9217_00
- D 0 - I - 0x010D13 04:8D03: F2 9A     .word off_9AF2_01
- D 0 - I - 0x010D15 04:8D05: 7A 9F     .word off_9F7A_02
- D 0 - I - 0x010D17 04:8D07: 19 A7     .word off_A719_03
off_8D09_08:
- D 0 - I - 0x010D19 04:8D09: 02        .byte $02   ; 
- D 0 - I - 0x010D1A 04:8D0A: AA 90     .word off_90AA_00
- D 0 - I - 0x010D1C 04:8D0C: CE 99     .word off_99CE_01
- D 0 - I - 0x010D1E 04:8D0E: 22 9E     .word off_9E22_02
- D 0 - I - 0x010D20 04:8D10: C8 A5     .word off_A5C8_03
off_8D12_09:
- D 0 - I - 0x010D22 04:8D12: 02        .byte $02   ; 
- D 0 - I - 0x010D23 04:8D13: A8 90     .word off_90A8_00
- D 0 - I - 0x010D25 04:8D15: CE 99     .word off_99CE_01
- D 0 - I - 0x010D27 04:8D17: 22 9E     .word off_9E22_02
- D 0 - I - 0x010D29 04:8D19: C8 A5     .word off_A5C8_03
off_8D1B_0A:
- D 0 - I - 0x010D2B 04:8D1B: 02        .byte $02   ; 
- D 0 - I - 0x010D2C 04:8D1C: 96 99     .word off_9996_00
- D 0 - I - 0x010D2E 04:8D1E: CE 99     .word off_99CE_01
- D 0 - I - 0x010D30 04:8D20: 22 9E     .word off_9E22_02
- D 0 - I - 0x010D32 04:8D22: C8 A5     .word off_A5C8_03
off_8D24_0B:
- D 0 - I - 0x010D34 04:8D24: 02        .byte $02   ; 
- D 0 - I - 0x010D35 04:8D25: 94 99     .word off_9994_00
- D 0 - I - 0x010D37 04:8D27: CE 99     .word off_99CE_01
- D 0 - I - 0x010D39 04:8D29: 22 9E     .word off_9E22_02
- D 0 - I - 0x010D3B 04:8D2B: C8 A5     .word off_A5C8_03
off_8D2D_0C:
- D 0 - I - 0x010D3D 04:8D2D: 04        .byte $04   ; 
- D 0 - I - 0x010D3E 04:8D2E: 4F 99     .word off_994F_00
- D 0 - I - 0x010D40 04:8D30: CC 99     .word off_99CC_01
- D 0 - I - 0x010D42 04:8D32: 9C A2     .word off_A29C_02
- D 0 - I - 0x010D44 04:8D34: B0 A6     .word off_A6B0_03
off_8D36_0D:
- D 0 - I - 0x010D46 04:8D36: 01        .byte $01   ; 
- D 0 - I - 0x010D47 04:8D37: 84 93     .word off_9384_00
- D 0 - I - 0x010D49 04:8D39: CE 99     .word off_99CE_01
- D 0 - I - 0x010D4B 04:8D3B: 5C 9E     .word off_9E5C_02
- D 0 - I - 0x010D4D 04:8D3D: C6 A5     .word off_A5C6_03
off_8D3F_0E:
- D 0 - I - 0x010D4F 04:8D3F: 09        .byte $09   ; 
- D 0 - I - 0x010D50 04:8D40: 26 97     .word off_9726_00
- D 0 - I - 0x010D52 04:8D42: E8 99     .word off_99E8_01
- D 0 - I - 0x010D54 04:8D44: 70 A4     .word off_A470_02
- D 0 - I - 0x010D56 04:8D46: 1A A9     .word off_A91A_03
off_8D48_0F:
- D 0 - I - 0x010D58 04:8D48: 09        .byte $09   ; 
- D 0 - I - 0x010D59 04:8D49: 1D 97     .word off_971D_00
- D 0 - I - 0x010D5B 04:8D4B: E6 99     .word off_99E6_01
- D 0 - I - 0x010D5D 04:8D4D: 70 A4     .word off_A470_02
- D 0 - I - 0x010D5F 04:8D4F: 1A A9     .word off_A91A_03
off_8D51_10:
- D 0 - I - 0x010D61 04:8D51: 0B        .byte $0B   ; 
- D 0 - I - 0x010D62 04:8D52: 1D 94     .word off_941D_00
- D 0 - I - 0x010D64 04:8D54: 05 9B     .word off_9B05_01
- D 0 - I - 0x010D66 04:8D56: 73 A1     .word off_A173_02
- D 0 - I - 0x010D68 04:8D58: 56 A8     .word off_A856_03
off_8D5A_11:
- D 0 - I - 0x010D6A 04:8D5A: 0B        .byte $0B   ; 
- D 0 - I - 0x010D6B 04:8D5B: 1D 94     .word off_941D_00
- D 0 - I - 0x010D6D 04:8D5D: 05 9B     .word off_9B05_01
- D 0 - I - 0x010D6F 04:8D5F: 73 A1     .word off_A173_02
- D 0 - I - 0x010D71 04:8D61: 11 A9     .word off_A911_03
off_8D63_12:
- D 0 - I - 0x010D73 04:8D63: 09        .byte $09   ; 
- D 0 - I - 0x010D74 04:8D64: 16 97     .word off_9716_00
- D 0 - I - 0x010D76 04:8D66: E8 99     .word off_99E8_01
- D 0 - I - 0x010D78 04:8D68: 69 A4     .word off_A469_02
- D 0 - I - 0x010D7A 04:8D6A: C0 AB     .word off_ABC0_03
off_8D6C_13:
- D 0 - I - 0x010D7C 04:8D6C: 0B        .byte $0B   ; 
- D 0 - I - 0x010D7D 04:8D6D: 12 94     .word off_9412_00
- D 0 - I - 0x010D7F 04:8D6F: 84 9A     .word off_9A84_01
- D 0 - I - 0x010D81 04:8D71: 68 A1     .word off_A168_02
- D 0 - I - 0x010D83 04:8D73: 07 A9     .word off_A907_03
off_8D75_14:
- D 0 - I - 0x010D85 04:8D75: 04        .byte $04   ; 
- D 0 - I - 0x010D86 04:8D76: 5F 99     .word off_995F_00
- D 0 - I - 0x010D88 04:8D78: CC 99     .word off_99CC_01
- D 0 - I - 0x010D8A 04:8D7A: 9C A2     .word off_A29C_02
- D 0 - I - 0x010D8C 04:8D7C: B0 A6     .word off_A6B0_03
off_8D7E_15:
- D 0 - I - 0x010D8E 04:8D7E: 04        .byte $04   ; 
- D 0 - I - 0x010D8F 04:8D7F: 63 99     .word off_9963_00
- D 0 - I - 0x010D91 04:8D81: CC 99     .word off_99CC_01
- D 0 - I - 0x010D93 04:8D83: 9C A2     .word off_A29C_02
- D 0 - I - 0x010D95 04:8D85: B0 A6     .word off_A6B0_03
off_8D87_16:
- D 0 - I - 0x010D97 04:8D87: 04        .byte $04   ; 
- D 0 - I - 0x010D98 04:8D88: A5 95     .word off_95A5_00
- D 0 - I - 0x010D9A 04:8D8A: CE 99     .word off_99CE_01
- D 0 - I - 0x010D9C 04:8D8C: 9C A2     .word off_A29C_02
- D 0 - I - 0x010D9E 04:8D8E: 02 A6     .word off_A602_03
off_8D90_17:
off_8D90_18:
off_8D90_19:
off_8D90_1A:
- - - - - - 0x010DA0 04:8D90: 04        .byte $04   ; 
- - - - - - 0x010DA1 04:8D91: 65 99     .word off_9965_00
- - - - - - 0x010DA3 04:8D93: CE 99     .word off_99CE_01
- - - - - - 0x010DA5 04:8D95: AC A5     .word off_A5AC_02
- - - - - - 0x010DA7 04:8D97: 02 A6     .word off_A602_03
off_8D99_1B:
- D 0 - I - 0x010DA9 04:8D99: 0E        .byte $0E   ; 
- D 0 - I - 0x010DAA 04:8D9A: 77 92     .word off_9277_00
- D 0 - I - 0x010DAC 04:8D9C: 33 9B     .word off_9B33_01
- D 0 - I - 0x010DAE 04:8D9E: DA 9F     .word off_9FDA_02
- D 0 - I - 0x010DB0 04:8DA0: 79 A7     .word off_A779_03
off_8DA2_1C:
- D 0 - I - 0x010DB2 04:8DA2: 0E        .byte $0E   ; 
- D 0 - I - 0x010DB3 04:8DA3: 09 92     .word off_9209_00
- D 0 - I - 0x010DB5 04:8DA5: E4 9A     .word off_9AE4_01
- D 0 - I - 0x010DB7 04:8DA7: 6C 9F     .word off_9F6C_02
- D 0 - I - 0x010DB9 04:8DA9: 0D A7     .word off_A70D_03
off_8DAB_1D:
- D 0 - I - 0x010DBB 04:8DAB: 0F        .byte $0F   ; 
- D 0 - I - 0x010DBC 04:8DAC: EB 91     .word off_91EB_00
- D 0 - I - 0x010DBE 04:8DAE: C8 9A     .word off_9AC8_01
- D 0 - I - 0x010DC0 04:8DB0: 4E 9F     .word off_9F4E_02
- D 0 - I - 0x010DC2 04:8DB2: F1 A6     .word off_A6F1_03
off_8DB4_00:
- D 0 - I - 0x010DC4 04:8DB4: 06        .byte $06   ; 
- D 0 - I - 0x010DC5 04:8DB5: BE 98     .word off_98BE_00
- D 0 - I - 0x010DC7 04:8DB7: FA 99     .word off_99FA_01
- D 0 - I - 0x010DC9 04:8DB9: 98 A2     .word off_A298_02
- D 0 - I - 0x010DCB 04:8DBB: 29 A7     .word off_A729_03
off_8DBD_01:
- D 0 - I - 0x010DCD 04:8DBD: 06        .byte $06   ; 
- D 0 - I - 0x010DCE 04:8DBE: 7F 93     .word off_937F_00
- D 0 - I - 0x010DD0 04:8DC0: FA 99     .word off_99FA_01
- D 0 - I - 0x010DD2 04:8DC2: 98 A2     .word off_A298_02
- D 0 - I - 0x010DD4 04:8DC4: 29 A7     .word off_A729_03
off_8DC6_02:
- D 0 - I - 0x010DD6 04:8DC6: 06        .byte $06   ; 
- D 0 - I - 0x010DD7 04:8DC7: C4 98     .word off_98C4_00
- D 0 - I - 0x010DD9 04:8DC9: FA 99     .word off_99FA_01
- D 0 - I - 0x010DDB 04:8DCB: 98 A2     .word off_A298_02
- D 0 - I - 0x010DDD 04:8DCD: 29 A7     .word off_A729_03
off_8DCF_03:
- D 0 - I - 0x010DDF 04:8DCF: 06        .byte $06   ; 
- D 0 - I - 0x010DE0 04:8DD0: CA 98     .word off_98CA_00
- D 0 - I - 0x010DE2 04:8DD2: FA 99     .word off_99FA_01
- D 0 - I - 0x010DE4 04:8DD4: 98 A2     .word off_A298_02
- D 0 - I - 0x010DE6 04:8DD6: 29 A7     .word off_A729_03
off_8DD8_04:
- D 0 - I - 0x010DE8 04:8DD8: 06        .byte $06   ; 
- D 0 - I - 0x010DE9 04:8DD9: D0 98     .word off_98D0_00
- D 0 - I - 0x010DEB 04:8DDB: FA 99     .word off_99FA_01
- D 0 - I - 0x010DED 04:8DDD: 98 A2     .word off_A298_02
- D 0 - I - 0x010DEF 04:8DDF: 29 A7     .word off_A729_03
off_8DE1_05:
- D 0 - I - 0x010DF1 04:8DE1: 06        .byte $06   ; 
- D 0 - I - 0x010DF2 04:8DE2: D6 98     .word off_98D6_00
- D 0 - I - 0x010DF4 04:8DE4: FA 99     .word off_99FA_01
- D 0 - I - 0x010DF6 04:8DE6: 98 A2     .word off_A298_02
- D 0 - I - 0x010DF8 04:8DE8: 29 A7     .word off_A729_03
off_8DEA_06:
- D 0 - I - 0x010DFA 04:8DEA: 06        .byte $06   ; 
- D 0 - I - 0x010DFB 04:8DEB: DC 98     .word off_98DC_00
- D 0 - I - 0x010DFD 04:8DED: FA 99     .word off_99FA_01
- D 0 - I - 0x010DFF 04:8DEF: 98 A2     .word off_A298_02
- D 0 - I - 0x010E01 04:8DF1: 29 A7     .word off_A729_03
off_8DF3_07:
- D 0 - I - 0x010E03 04:8DF3: 06        .byte $06   ; 
- D 0 - I - 0x010E04 04:8DF4: E2 98     .word off_98E2_00
- D 0 - I - 0x010E06 04:8DF6: FA 99     .word off_99FA_01
- D 0 - I - 0x010E08 04:8DF8: 98 A2     .word off_A298_02
- D 0 - I - 0x010E0A 04:8DFA: 29 A7     .word off_A729_03
off_8DFC_08:
- D 0 - I - 0x010E0C 04:8DFC: 06        .byte $06   ; 
- D 0 - I - 0x010E0D 04:8DFD: E8 98     .word off_98E8_00
- D 0 - I - 0x010E0F 04:8DFF: FA 99     .word off_99FA_01
- D 0 - I - 0x010E11 04:8E01: 98 A2     .word off_A298_02
- D 0 - I - 0x010E13 04:8E03: 29 A7     .word off_A729_03
off_8E05_09:
- D 0 - I - 0x010E15 04:8E05: 06        .byte $06   ; 
- D 0 - I - 0x010E16 04:8E06: 9F 92     .word off_929F_00
- D 0 - I - 0x010E18 04:8E08: FA 99     .word off_99FA_01
- D 0 - I - 0x010E1A 04:8E0A: 98 A2     .word off_A298_02
- D 0 - I - 0x010E1C 04:8E0C: 29 A7     .word off_A729_03
off_8E0E_0A:
- D 0 - I - 0x010E1E 04:8E0E: 06        .byte $06   ; 
- D 0 - I - 0x010E1F 04:8E0F: EE 98     .word off_98EE_00
- D 0 - I - 0x010E21 04:8E11: FA 99     .word off_99FA_01
- D 0 - I - 0x010E23 04:8E13: 98 A2     .word off_A298_02
- D 0 - I - 0x010E25 04:8E15: 29 A7     .word off_A729_03
off_8E17_0B:
- D 0 - I - 0x010E27 04:8E17: 06        .byte $06   ; 
- D 0 - I - 0x010E28 04:8E18: F4 98     .word off_98F4_00
- D 0 - I - 0x010E2A 04:8E1A: FA 99     .word off_99FA_01
- D 0 - I - 0x010E2C 04:8E1C: 98 A2     .word off_A298_02
- D 0 - I - 0x010E2E 04:8E1E: 29 A7     .word off_A729_03
off_8E20_0C:
- D 0 - I - 0x010E30 04:8E20: 06        .byte $06   ; 
- D 0 - I - 0x010E31 04:8E21: FA 98     .word off_98FA_00
- D 0 - I - 0x010E33 04:8E23: FA 99     .word off_99FA_01
- D 0 - I - 0x010E35 04:8E25: 98 A2     .word off_A298_02
- D 0 - I - 0x010E37 04:8E27: 29 A7     .word off_A729_03
off_8E29_0D:
- D 0 - I - 0x010E39 04:8E29: 10        .byte $10   ; 
- D 0 - I - 0x010E3A 04:8E2A: DB 91     .word off_91DB_00
- D 0 - I - 0x010E3C 04:8E2C: B8 9A     .word off_9AB8_01
- D 0 - I - 0x010E3E 04:8E2E: 3E 9F     .word off_9F3E_02
- D 0 - I - 0x010E40 04:8E30: E4 A6     .word off_A6E4_03
off_8E32_0E:
- D 0 - I - 0x010E42 04:8E32: 08        .byte $08   ; 
- D 0 - I - 0x010E43 04:8E33: 73 97     .word off_9773_00
- D 0 - I - 0x010E45 04:8E35: BF 9A     .word off_9ABF_01
- D 0 - I - 0x010E47 04:8E37: BB A4     .word off_A4BB_02
- D 0 - I - 0x010E49 04:8E39: F3 AB     .word off_ABF3_03
off_8E3B_0F:
- D 0 - I - 0x010E4B 04:8E3B: 18        .byte $18   ; 
- D 0 - I - 0x010E4C 04:8E3C: C0 90     .word off_90C0_00
- D 0 - I - 0x010E4E 04:8E3E: B0 99     .word off_99B0_01
- D 0 - I - 0x010E50 04:8E40: 24 9E     .word off_9E24_02
- D 0 - I - 0x010E52 04:8E42: CC A5     .word off_A5CC_03
off_8E44_10:
- D 0 - I - 0x010E54 04:8E44: 09        .byte $09   ; 
- D 0 - I - 0x010E55 04:8E45: F3 96     .word off_96F3_00
- D 0 - I - 0x010E57 04:8E47: 71 9D     .word off_9D71_01
- D 0 - I - 0x010E59 04:8E49: 45 A4     .word off_A445_02
- D 0 - I - 0x010E5B 04:8E4B: 9C AB     .word off_AB9C_03
off_8E4D_11:
- D 0 - I - 0x010E5D 04:8E4D: 18        .byte $18   ; 
- D 0 - I - 0x010E5E 04:8E4E: A8 90     .word off_90A8_00
- D 0 - I - 0x010E60 04:8E50: 98 99     .word off_9998_01
- D 0 - I - 0x010E62 04:8E52: 0C 9E     .word off_9E0C_02
- D 0 - I - 0x010E64 04:8E54: B4 A5     .word off_A5B4_03
off_8E56_12:
- D 0 - I - 0x010E66 04:8E56: 09        .byte $09   ; 
- D 0 - I - 0x010E67 04:8E57: D8 96     .word off_96D8_00
- D 0 - I - 0x010E69 04:8E59: 71 9D     .word off_9D71_01
- D 0 - I - 0x010E6B 04:8E5B: 2A A4     .word off_A42A_02
- D 0 - I - 0x010E6D 04:8E5D: 81 AB     .word off_AB81_03
off_8E5F_13:
- D 0 - I - 0x010E6F 04:8E5F: 0E        .byte $0E   ; 
- D 0 - I - 0x010E70 04:8E60: 25 92     .word off_9225_00
- D 0 - I - 0x010E72 04:8E62: 98 99     .word off_9998_01
- D 0 - I - 0x010E74 04:8E64: 88 9F     .word off_9F88_02
- D 0 - I - 0x010E76 04:8E66: 27 A7     .word off_A727_03
off_8E68_14:
- D 0 - I - 0x010E78 04:8E68: 0B        .byte $0B   ; 
- D 0 - I - 0x010E79 04:8E69: FC 93     .word off_93FC_00
- D 0 - I - 0x010E7B 04:8E6B: 98 99     .word off_9998_01
- D 0 - I - 0x010E7D 04:8E6D: 52 A1     .word off_A152_02
- D 0 - I - 0x010E7F 04:8E6F: F1 A8     .word off_A8F1_03
off_8E71_15:
- D 0 - I - 0x010E81 04:8E71: 0E        .byte $0E   ; 
- D 0 - I - 0x010E82 04:8E72: 31 92     .word off_9231_00
- D 0 - I - 0x010E84 04:8E74: 98 99     .word off_9998_01
- D 0 - I - 0x010E86 04:8E76: 94 9F     .word off_9F94_02
- D 0 - I - 0x010E88 04:8E78: 33 A7     .word off_A733_03
off_8E7A_16:
- D 0 - I - 0x010E8A 04:8E7A: 0B        .byte $0B   ; 
- D 0 - I - 0x010E8B 04:8E7B: DB 93     .word off_93DB_00
- D 0 - I - 0x010E8D 04:8E7D: 98 99     .word off_9998_01
- D 0 - I - 0x010E8F 04:8E7F: 31 A1     .word off_A131_02
- D 0 - I - 0x010E91 04:8E81: D0 A8     .word off_A8D0_03
off_8E83_00:
- D 0 - I - 0x010E93 04:8E83: 0B        .byte $0B   ; 
- D 0 - I - 0x010E94 04:8E84: D0 93     .word off_93D0_00
- D 0 - I - 0x010E96 04:8E86: E6 99     .word off_99E6_01
- D 0 - I - 0x010E98 04:8E88: 26 A1     .word off_A126_02
- D 0 - I - 0x010E9A 04:8E8A: C5 A8     .word off_A8C5_03
off_8E8C_01:
- D 0 - I - 0x010E9C 04:8E8C: 0B        .byte $0B   ; 
- D 0 - I - 0x010E9D 04:8E8D: C5 93     .word off_93C5_00
- D 0 - I - 0x010E9F 04:8E8F: E6 99     .word off_99E6_01
- D 0 - I - 0x010EA1 04:8E91: 1B A1     .word off_A11B_02
- D 0 - I - 0x010EA3 04:8E93: BA A8     .word off_A8BA_03
off_8E95_02:
- D 0 - I - 0x010EA5 04:8E95: 08        .byte $08   ; 
- D 0 - I - 0x010EA6 04:8E96: C3 97     .word off_97C3_00
- D 0 - I - 0x010EA8 04:8E98: E8 99     .word off_99E8_01
- D 0 - I - 0x010EAA 04:8E9A: 02 A0     .word off_A002_02
- D 0 - I - 0x010EAC 04:8E9C: 8A A6     .word off_A68A_03
off_8E9E_03:
- D 0 - I - 0x010EAE 04:8E9E: 0B        .byte $0B   ; 
- D 0 - I - 0x010EAF 04:8E9F: BA 93     .word off_93BA_00
- D 0 - I - 0x010EB1 04:8EA1: E8 99     .word off_99E8_01
- D 0 - I - 0x010EB3 04:8EA3: 10 A1     .word off_A110_02
- D 0 - I - 0x010EB5 04:8EA5: AF A8     .word off_A8AF_03
off_8EA7_04:
- D 0 - I - 0x010EB7 04:8EA7: 0B        .byte $0B   ; 
- D 0 - I - 0x010EB8 04:8EA8: AF 93     .word off_93AF_00
- D 0 - I - 0x010EBA 04:8EAA: E8 99     .word off_99E8_01
- D 0 - I - 0x010EBC 04:8EAC: 05 A1     .word off_A105_02
- D 0 - I - 0x010EBE 04:8EAE: A4 A8     .word off_A8A4_03
off_8EB0_05:
- D 0 - I - 0x010EC0 04:8EB0: 0B        .byte $0B   ; 
- D 0 - I - 0x010EC1 04:8EB1: AC 94     .word off_94AC_00
- D 0 - I - 0x010EC3 04:8EB3: E8 99     .word off_99E8_01
- D 0 - I - 0x010EC5 04:8EB5: 01 A2     .word off_A201_02
- D 0 - I - 0x010EC7 04:8EB7: A4 A8     .word off_A8A4_03
off_8EB9_06:
- D 0 - I - 0x010EC9 04:8EB9: 10        .byte $10   ; 
- D 0 - I - 0x010ECA 04:8EBA: BB 91     .word off_91BB_00
- D 0 - I - 0x010ECC 04:8EBC: 9A 9A     .word off_9A9A_01
- D 0 - I - 0x010ECE 04:8EBE: 1E 9F     .word off_9F1E_02
- D 0 - I - 0x010ED0 04:8EC0: C4 A6     .word off_A6C4_03
off_8EC2_07:
- D 0 - I - 0x010ED2 04:8EC2: 10        .byte $10   ; 
- D 0 - I - 0x010ED3 04:8EC3: 7B 91     .word off_917B_00
- D 0 - I - 0x010ED5 04:8EC5: 5D 9A     .word off_9A5D_01
- D 0 - I - 0x010ED7 04:8EC7: DF 9E     .word off_9EDF_02
- D 0 - I - 0x010ED9 04:8EC9: 84 A6     .word off_A684_03
off_8ECB_08:
- D 0 - I - 0x010EDB 04:8ECB: 0C        .byte $0C   ; 
- D 0 - I - 0x010EDC 04:8ECC: 39 93     .word off_9339_00
- D 0 - I - 0x010EDE 04:8ECE: 84 9A     .word off_9A84_01
- D 0 - I - 0x010EE0 04:8ED0: 9A A0     .word off_A09A_02
- D 0 - I - 0x010EE2 04:8ED2: 38 A8     .word off_A838_03
off_8ED4_09:
- D 0 - I - 0x010EE4 04:8ED4: 0C        .byte $0C   ; 
- D 0 - I - 0x010EE5 04:8ED5: 45 93     .word off_9345_00
- D 0 - I - 0x010EE7 04:8ED7: C7 9B     .word off_9BC7_01
- D 0 - I - 0x010EE9 04:8ED9: A6 A0     .word off_A0A6_02
- D 0 - I - 0x010EEB 04:8EDB: 44 A8     .word off_A844_03
off_8EDD_0A:
- D 0 - I - 0x010EED 04:8EDD: 10        .byte $10   ; 
- D 0 - I - 0x010EEE 04:8EDE: CB 91     .word off_91CB_00
- D 0 - I - 0x010EF0 04:8EE0: A8 9A     .word off_9AA8_01
- D 0 - I - 0x010EF2 04:8EE2: 2E 9F     .word off_9F2E_02
- D 0 - I - 0x010EF4 04:8EE4: D4 A6     .word off_A6D4_03
off_8EE6_0B:
- D 0 - I - 0x010EF6 04:8EE6: 10        .byte $10   ; 
- D 0 - I - 0x010EF7 04:8EE7: 8B 91     .word off_918B_00
- D 0 - I - 0x010EF9 04:8EE9: 6D 9A     .word off_9A6D_01
- D 0 - I - 0x010EFB 04:8EEB: EF 9E     .word off_9EEF_02
- D 0 - I - 0x010EFD 04:8EED: 94 A6     .word off_A694_03
off_8EEF_0C:
- D 0 - I - 0x010EFF 04:8EEF: 0A        .byte $0A   ; 
- D 0 - I - 0x010F00 04:8EF0: A5 95     .word off_95A5_00
- D 0 - I - 0x010F02 04:8EF2: E8 99     .word off_99E8_01
- D 0 - I - 0x010F04 04:8EF4: FC A2     .word off_A2FC_02
- D 0 - I - 0x010F06 04:8EF6: 88 A6     .word off_A688_03
off_8EF8_0D:
- D 0 - I - 0x010F08 04:8EF8: 12        .byte $12   ; 
- D 0 - I - 0x010F09 04:8EF9: ED 90     .word off_90ED_00
- D 0 - I - 0x010F0B 04:8EFB: D8 99     .word off_99D8_01
- D 0 - I - 0x010F0D 04:8EFD: 51 9E     .word off_9E51_02
- D 0 - I - 0x010F0F 04:8EFF: F9 A5     .word off_A5F9_03
off_8F01_0E:
- D 0 - I - 0x010F11 04:8F01: 11        .byte $11   ; 
- D 0 - I - 0x010F12 04:8F02: 6A 91     .word off_916A_00
- D 0 - I - 0x010F14 04:8F04: 4E 9A     .word off_9A4E_01
- D 0 - I - 0x010F16 04:8F06: CE 9E     .word off_9ECE_02
- D 0 - I - 0x010F18 04:8F08: 75 A6     .word off_A675_03
off_8F0A_0F:
- D 0 - I - 0x010F1A 04:8F0A: 0A        .byte $0A   ; 
- D 0 - I - 0x010F1B 04:8F0B: 69 95     .word off_9569_00
- D 0 - I - 0x010F1D 04:8F0D: E8 99     .word off_99E8_01
- D 0 - I - 0x010F1F 04:8F0F: C0 A2     .word off_A2C0_02
- D 0 - I - 0x010F21 04:8F11: 3D AA     .word off_AA3D_03
off_8F13_10:
- D 0 - I - 0x010F23 04:8F13: 0A        .byte $0A   ; 
- D 0 - I - 0x010F24 04:8F14: 55 95     .word off_9555_00
- D 0 - I - 0x010F26 04:8F16: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x010F28 04:8F18: AC A2     .word off_A2AC_02
- D 0 - I - 0x010F2A 04:8F1A: 29 AA     .word off_AA29_03
off_8F1C_11:
- D 0 - I - 0x010F2C 04:8F1C: 0A        .byte $0A   ; 
- D 0 - I - 0x010F2D 04:8F1D: 4B 95     .word off_954B_00
- D 0 - I - 0x010F2F 04:8F1F: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x010F31 04:8F21: A2 A2     .word off_A2A2_02
- D 0 - I - 0x010F33 04:8F23: 1F AA     .word off_AA1F_03
off_8F25_12:
- D 0 - I - 0x010F35 04:8F25: 0A        .byte $0A   ; 
- D 0 - I - 0x010F36 04:8F26: 41 95     .word off_9541_00
- D 0 - I - 0x010F38 04:8F28: F9 9B     .word off_9BF9_01
- D 0 - I - 0x010F3A 04:8F2A: 98 A2     .word off_A298_02
- D 0 - I - 0x010F3C 04:8F2C: 15 AA     .word off_AA15_03
off_8F2E_13:
- D 0 - I - 0x010F3E 04:8F2E: 0A        .byte $0A   ; 
- D 0 - I - 0x010F3F 04:8F2F: 07 95     .word off_9507_00
- D 0 - I - 0x010F41 04:8F31: F9 9B     .word off_9BF9_01
- D 0 - I - 0x010F43 04:8F33: 5C A2     .word off_A25C_02
- D 0 - I - 0x010F45 04:8F35: DD A9     .word off_A9DD_03
off_8F37_14:
- D 0 - I - 0x010F47 04:8F37: 09        .byte $09   ; 
- D 0 - I - 0x010F48 04:8F38: 2F 97     .word off_972F_00
- D 0 - I - 0x010F4A 04:8F3A: 0D 9A     .word off_9A0D_01
- D 0 - I - 0x010F4C 04:8F3C: 78 A4     .word off_A478_02
- D 0 - I - 0x010F4E 04:8F3E: C9 AB     .word off_ABC9_03
off_8F40_15:
- D 0 - I - 0x010F50 04:8F40: 0B        .byte $0B   ; 
- D 0 - I - 0x010F51 04:8F41: A1 94     .word off_94A1_00
- D 0 - I - 0x010F53 04:8F43: 86 9C     .word off_9C86_01
- D 0 - I - 0x010F55 04:8F45: F6 A1     .word off_A1F6_02
- D 0 - I - 0x010F57 04:8F47: 8F A9     .word off_A98F_03
off_8F49_16:
- D 0 - I - 0x010F59 04:8F49: 0B        .byte $0B   ; 
- D 0 - I - 0x010F5A 04:8F4A: 96 94     .word off_9496_00
- D 0 - I - 0x010F5C 04:8F4C: 7D 9C     .word off_9C7D_01
- D 0 - I - 0x010F5E 04:8F4E: EC A1     .word off_A1EC_02
- D 0 - I - 0x010F60 04:8F50: 85 A9     .word off_A985_03
off_8F52_17:
off_8F52_18:
- D 0 - I - 0x010F62 04:8F52: 0B        .byte $0B   ; 
- D 0 - I - 0x010F63 04:8F53: 8B 94     .word off_948B_00
- D 0 - I - 0x010F65 04:8F55: 73 9C     .word off_9C73_01
- D 0 - I - 0x010F67 04:8F57: E1 A1     .word off_A1E1_02
- D 0 - I - 0x010F69 04:8F59: 7A A9     .word off_A97A_03
off_8F5B_19:
- D 0 - I - 0x010F6B 04:8F5B: 0A        .byte $0A   ; 
- D 0 - I - 0x010F6C 04:8F5C: CB 94     .word off_94CB_00
- D 0 - I - 0x010F6E 04:8F5E: E6 99     .word off_99E6_01
- D 0 - I - 0x010F70 04:8F60: 20 A2     .word off_A220_02
- D 0 - I - 0x010F72 04:8F62: AE A9     .word off_A9AE_03
off_8F64_1A:
- D 0 - I - 0x010F74 04:8F64: 0A        .byte $0A   ; 
- D 0 - I - 0x010F75 04:8F65: C1 94     .word off_94C1_00
- D 0 - I - 0x010F77 04:8F67: 9B 9C     .word off_9C9B_01
- D 0 - I - 0x010F79 04:8F69: 16 A2     .word off_A216_02
- D 0 - I - 0x010F7B 04:8F6B: A4 A9     .word off_A9A4_03
off_8F6D_1B:
- D 0 - I - 0x010F7D 04:8F6D: 08        .byte $08   ; 
- D 0 - I - 0x010F7E 04:8F6E: 7B 98     .word off_987B_01
- D 0 - I - 0x010F80 04:8F70: D3 99     .word off_99D3_02
- D 0 - I - 0x010F82 04:8F72: 16 A2     .word off_A216_03
- D 0 - I - 0x010F84 04:8F74: FE A5     .word off_A5FE_04
off_8F76_1C:
- D 0 - I - 0x010F86 04:8F76: 08        .byte $08   ; 
- D 0 - I - 0x010F87 04:8F77: A3 97     .word off_97A3_00
- D 0 - I - 0x010F89 04:8F79: 15 9A     .word off_9A15_01
- D 0 - I - 0x010F8B 04:8F7B: 16 A2     .word off_A216_02
- D 0 - I - 0x010F8D 04:8F7D: 03 AC     .word off_AC03_03
off_8F7F_1D:
- D 0 - I - 0x010F8F 04:8F7F: 08        .byte $08   ; 
- D 0 - I - 0x010F90 04:8F80: 33 98     .word off_9833_00
- D 0 - I - 0x010F92 04:8F82: 15 9A     .word off_9A15_01
- D 0 - I - 0x010F94 04:8F84: 16 A2     .word off_A216_02
- D 0 - I - 0x010F96 04:8F86: 03 AC     .word off_AC03_03
off_8F88_1E:
- D 0 - I - 0x010F98 04:8F88: 0B        .byte $0B   ; 
- D 0 - I - 0x010F99 04:8F89: 80 94     .word off_9480_00
- D 0 - I - 0x010F9B 04:8F8B: 68 9C     .word off_9C68_01
- D 0 - I - 0x010F9D 04:8F8D: D6 A1     .word off_A1D6_02
- D 0 - I - 0x010F9F 04:8F8F: 6F A9     .word off_A96F_03
off_8F91_1F:
- D 0 - I - 0x010FA1 04:8F91: 0D        .byte $0D   ; 
- D 0 - I - 0x010FA2 04:8F92: FA 92     .word off_92FA_00
- D 0 - I - 0x010FA4 04:8F94: 5B 9B     .word off_9B5B_01
- D 0 - I - 0x010FA6 04:8F96: 5B A0     .word off_A05B_02
- D 0 - I - 0x010FA8 04:8F98: FC A7     .word off_A7FC_03
off_8F9A_20:
- D 0 - I - 0x010FAA 04:8F9A: 0D        .byte $0D   ; 
- D 0 - I - 0x010FAB 04:8F9B: 9F 92     .word off_929F_00
- D 0 - I - 0x010FAD 04:8F9D: 5B 9B     .word off_9B5B_01
- D 0 - I - 0x010FAF 04:8F9F: 02 A0     .word off_A002_02
- D 0 - I - 0x010FB1 04:8FA1: A1 A7     .word off_A7A1_03
off_8FA3_21:
- D 0 - I - 0x010FB3 04:8FA3: 0A        .byte $0A   ; 
- D 0 - I - 0x010FB4 04:8FA4: 7D 95     .word off_957D_00
- D 0 - I - 0x010FB6 04:8FA6: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x010FB8 04:8FA8: D4 A2     .word off_A2D4_02
- D 0 - I - 0x010FBA 04:8FAA: 51 AA     .word off_AA51_03
off_8FAC_22:
- D 0 - I - 0x010FBC 04:8FAC: 0A        .byte $0A   ; 
- D 0 - I - 0x010FBD 04:8FAD: AF 95     .word off_95AF_00
- D 0 - I - 0x010FBF 04:8FAF: FB 9C     .word off_9CFB_01
- D 0 - I - 0x010FC1 04:8FB1: 06 A3     .word off_A306_02
- D 0 - I - 0x010FC3 04:8FB3: 79 AA     .word off_AA79_03
off_8FB5_23:
- D 0 - I - 0x010FC5 04:8FB5: 0A        .byte $0A   ; 
- D 0 - I - 0x010FC6 04:8FB6: F5 95     .word off_95F5_00
- D 0 - I - 0x010FC8 04:8FB8: F8 9B     .word off_9BF8_01
- D 0 - I - 0x010FCA 04:8FBA: 4A A3     .word off_A34A_02
- D 0 - I - 0x010FCC 04:8FBC: BB AA     .word off_AABB_03
off_8FBE_24:
- D 0 - I - 0x010FCE 04:8FBE: 09        .byte $09   ; 
- D 0 - I - 0x010FCF 04:8FBF: 4A 97     .word off_974A_00
- D 0 - I - 0x010FD1 04:8FC1: 8C 9D     .word off_9D8C_01
- D 0 - I - 0x010FD3 04:8FC3: 93 A4     .word off_A493_02
- D 0 - I - 0x010FD5 04:8FC5: AE A9     .word off_A9AE_03
off_8FC7_25:
- D 0 - I - 0x010FD7 04:8FC7: 0B        .byte $0B   ; 
- D 0 - I - 0x010FD8 04:8FC8: 33 94     .word off_9433_00
- D 0 - I - 0x010FDA 04:8FCA: 2B 9C     .word off_9C2B_01
- D 0 - I - 0x010FDC 04:8FCC: 89 A1     .word off_A189_02
- D 0 - I - 0x010FDE 04:8FCE: 22 A9     .word off_A922_03
off_8FD0_26:
- D 0 - I - 0x010FE0 04:8FD0: 0B        .byte $0B   ; 
- D 0 - I - 0x010FE1 04:8FD1: 3E 94     .word off_943E_00
- D 0 - I - 0x010FE3 04:8FD3: 35 9C     .word off_9C35_01
- D 0 - I - 0x010FE5 04:8FD5: 94 A1     .word off_A194_02
- D 0 - I - 0x010FE7 04:8FD7: 2D A9     .word off_A92D_03
off_8FD9_27:
- D 0 - I - 0x010FE9 04:8FD9: 0D        .byte $0D   ; 
- D 0 - I - 0x010FEA 04:8FDA: 85 92     .word off_9285_00
- D 0 - I - 0x010FEC 04:8FDC: 41 9B     .word off_9B41_01
- D 0 - I - 0x010FEE 04:8FDE: E8 9F     .word off_9FE8_02
- D 0 - I - 0x010FF0 04:8FE0: 87 A7     .word off_A787_03
off_8FE2_28:
- D 0 - I - 0x010FF2 04:8FE2: 0C        .byte $0C   ; 
- D 0 - I - 0x010FF3 04:8FE3: 5B 93     .word off_935B_00
- D 0 - I - 0x010FF5 04:8FE5: D1 9B     .word off_9BD1_01
- D 0 - I - 0x010FF7 04:8FE7: BE A0     .word off_A0BE_02
- D 0 - I - 0x010FF9 04:8FE9: 5C A8     .word off_A85C_03
off_8FEB_29:
- D 0 - I - 0x010FFB 04:8FEB: 11        .byte $11   ; 
- D 0 - I - 0x010FFC 04:8FEC: 59 91     .word off_9159_00
- D 0 - I - 0x010FFE 04:8FEE: 3D 9A     .word off_9A3D_01
- D 0 - I - 0x011000 04:8FF0: BD 9E     .word off_9EBD_02
- D 0 - I - 0x011002 04:8FF2: 64 A6     .word off_A664_03
off_8FF4_2A:
- D 0 - I - 0x011004 04:8FF4: 12        .byte $12   ; 
- D 0 - I - 0x011005 04:8FF5: 47 91     .word off_9147_00
- D 0 - I - 0x011007 04:8FF7: 2D 9A     .word off_9A2D_01
- D 0 - I - 0x011009 04:8FF9: AB 9E     .word off_9EAB_02
- D 0 - I - 0x01100B 04:8FFB: 52 A6     .word off_A652_03
off_8FFD_2B:
- D 0 - I - 0x01100D 04:8FFD: 0B        .byte $0B   ; 
- D 0 - I - 0x01100E 04:8FFE: 49 94     .word off_9449_00
- D 0 - I - 0x011010 04:9000: 3F 9C     .word off_9C3F_01
- D 0 - I - 0x011012 04:9002: 9F A1     .word off_A19F_02
- D 0 - I - 0x011014 04:9004: 38 A9     .word off_A938_03
off_9006_2C:
off_9006_2D:
- D 0 - I - 0x011016 04:9006: 0B        .byte $0B   ; 
- D 0 - I - 0x011017 04:9007: 5F 94     .word off_945F_00
- D 0 - I - 0x011019 04:9009: 52 9C     .word off_9C52_01
- D 0 - I - 0x01101B 04:900B: B5 A1     .word off_A1B5_02
- D 0 - I - 0x01101D 04:900D: 4E A9     .word off_A94E_03
off_900F_2E:
- D 0 - I - 0x01101F 04:900F: 0C        .byte $0C   ; 
- D 0 - I - 0x011020 04:9010: 2D 93     .word off_932D_00
- D 0 - I - 0x011022 04:9012: BC 9B     .word off_9BBC_01
- D 0 - I - 0x011024 04:9014: 8E A0     .word off_A08E_02
- D 0 - I - 0x011026 04:9016: 2E A8     .word off_A82E_03
off_9018_2F:
- D 0 - I - 0x011028 04:9018: 0E        .byte $0E   ; 
- D 0 - I - 0x011029 04:9019: 69 92     .word off_9269_00
- D 0 - I - 0x01102B 04:901B: 27 9B     .word off_9B27_01
- D 0 - I - 0x01102D 04:901D: CC 9F     .word off_9FCC_02
- D 0 - I - 0x01102F 04:901F: 6B A7     .word off_A76B_03
off_9021_30:
- D 0 - I - 0x011031 04:9021: 15        .byte $15   ; 
- D 0 - I - 0x011032 04:9022: D8 90     .word off_90D8_00
- D 0 - I - 0x011034 04:9024: C8 99     .word off_99C8_01
- D 0 - I - 0x011036 04:9026: 3C 9E     .word off_9E3C_02
- D 0 - I - 0x011038 04:9028: E4 A5     .word off_A5E4_03
off_902A_31:
- D 0 - I - 0x01103A 04:902A: 12        .byte $12   ; 
- D 0 - I - 0x01103B 04:902B: 23 91     .word off_9123_00
- D 0 - I - 0x01103D 04:902D: 0C 9A     .word off_9A0C_01
- D 0 - I - 0x01103F 04:902F: 87 9E     .word off_9E87_02
- D 0 - I - 0x011041 04:9031: 2E A6     .word off_A62E_03
off_9033_32:
- D 0 - I - 0x011043 04:9033: 06        .byte $06   ; 
- D 0 - I - 0x011044 04:9034: 9D 98     .word off_989D_00
- D 0 - I - 0x011046 04:9036: FA 99     .word off_99FA_01
- D 0 - I - 0x011048 04:9038: 8A A5     .word off_A58A_02
- D 0 - I - 0x01104A 04:903A: A4 AC     .word off_ACA4_03
off_903C_33:
- D 0 - I - 0x01104C 04:903C: 05        .byte $05   ; 
- D 0 - I - 0x01104D 04:903D: 00 99     .word off_9900_00
- D 0 - I - 0x01104F 04:903F: D2 99     .word off_99D2_01
- D 0 - I - 0x011051 04:9041: 70 A4     .word off_A470_02
- D 0 - I - 0x011053 04:9043: 11 A8     .word off_A811_03
off_9045_34:
off_9045_35:
- D 0 - I - 0x011055 04:9045: 12        .byte $12   ; 
- D 0 - I - 0x011056 04:9046: FF 90     .word off_90FF_00
- D 0 - I - 0x011058 04:9048: E8 99     .word off_99E8_01
- D 0 - I - 0x01105A 04:904A: 63 9E     .word off_9E63_02
- D 0 - I - 0x01105C 04:904C: 0A A6     .word off_A60A_03
off_904E_36:
- D 0 - I - 0x01105E 04:904E: 12        .byte $12   ; 
- D 0 - I - 0x01105F 04:904F: 35 91     .word off_9135_00
- D 0 - I - 0x011061 04:9051: 1E 9A     .word off_9A1E_01
- D 0 - I - 0x011063 04:9053: 99 9E     .word off_9E99_02
- D 0 - I - 0x011065 04:9055: 40 A6     .word off_A640_03
off_9057_37:
off_9057_3B:
- D 0 - I - 0x011067 04:9057: 10        .byte $10   ; 
- D 0 - I - 0x011068 04:9058: 9B 91     .word off_919B_00
- D 0 - I - 0x01106A 04:905A: 7D 9A     .word off_9A7D_01
- D 0 - I - 0x01106C 04:905C: FE 9E     .word off_9EFE_02
- D 0 - I - 0x01106E 04:905E: A4 A6     .word off_A6A4_03
off_9060_38:
off_9060_3C:
- D 0 - I - 0x011070 04:9060: 10        .byte $10   ; 
- D 0 - I - 0x011071 04:9061: AB 91     .word off_91AB_00
- D 0 - I - 0x011073 04:9063: 8D 9A     .word off_9A8D_01
- D 0 - I - 0x011075 04:9065: 0E 9F     .word off_9F0E_02
- D 0 - I - 0x011077 04:9067: B4 A6     .word off_A6B4_03
off_9069_39:
off_9069_3D:
- D 0 - I - 0x011079 04:9069: 07        .byte $07   ; 
- D 0 - I - 0x01107A 04:906A: 83 98     .word off_9883_00
- D 0 - I - 0x01107C 04:906C: E8 99     .word off_99E8_01
- D 0 - I - 0x01107E 04:906E: 70 A5     .word off_A570_02
- D 0 - I - 0x011080 04:9070: 83 AC     .word off_AC83_03
off_9072_3A:
off_9072_3E:
- D 0 - I - 0x011082 04:9072: 08        .byte $08   ; 
- D 0 - I - 0x011083 04:9073: B3 97     .word off_97B3_00
- D 0 - I - 0x011085 04:9075: E8 99     .word off_99E8_01
- D 0 - I - 0x011087 04:9077: BD 9E     .word off_9EBD_02
- D 0 - I - 0x011089 04:9079: 13 AC     .word off_AC13_03
off_907B_41:
- D 0 - I - 0x01108B 04:907B: 0B        .byte $0B   ; 
- D 0 - I - 0x01108C 04:907C: E6 93     .word off_93E6_00
- D 0 - I - 0x01108E 04:907E: 19 9C     .word off_9C19_01
- D 0 - I - 0x011090 04:9080: 3C A1     .word off_A13C_02
- D 0 - I - 0x011092 04:9082: DB A8     .word off_A8DB_03
off_9084_00:
- D 0 - I - 0x011094 04:9084: 08        .byte $08   ; 
- D 0 - I - 0x011095 04:9085: 8B 97     .word off_978B_00
- D 0 - I - 0x011097 04:9087: D3 99     .word off_99D3_01
- D 0 - I - 0x011099 04:9089: BA A3     .word off_A3BA_02
- D 0 - I - 0x01109B 04:908B: FE A5     .word off_A5FE_03
off_908D_01:
- D 0 - I - 0x01109D 04:908D: 08        .byte $08   ; 
- D 0 - I - 0x01109E 04:908E: 63 98     .word off_9863_00
- D 0 - I - 0x0110A0 04:9090: 14 9A     .word off_9A14_01
- D 0 - I - 0x0110A2 04:9092: 5B A5     .word off_A55B_02
- D 0 - I - 0x0110A4 04:9094: 2B AC     .word off_AC2B_03
off_9096_02:
- D 0 - I - 0x0110A6 04:9096: 09        .byte $09   ; 
- D 0 - I - 0x0110A7 04:9097: 41 97     .word off_9741_00
- D 0 - I - 0x0110A9 04:9099: 83 9D     .word off_9D83_01
- D 0 - I - 0x0110AB 04:909B: 8A A4     .word off_A48A_02
- D 0 - I - 0x0110AD 04:909D: D2 AB     .word off_ABD2_03
off_909F_03:
- D 0 - I - 0x0110AF 04:909F: 08        .byte $08   ; 
- D 0 - I - 0x0110B0 04:90A0: 13 98     .word off_9813_00
- D 0 - I - 0x0110B2 04:90A2: D3 99     .word off_99D3_01
- D 0 - I - 0x0110B4 04:90A4: 1F A5     .word off_A51F_02
- D 0 - I - 0x0110B6 04:90A6: FE A5     .word off_A5FE_03
off_90A8_00:
- D 0 - I - 0x0110B8 04:90A8: 40        .byte $40   ; 
- D 0 - I - 0x0110B9 04:90A9: 41        .byte $41   ; 
off_90AA_00:
- D 0 - I - 0x0110BA 04:90AA: 42        .byte $42   ; 
- D 0 - I - 0x0110BB 04:90AB: 43        .byte $43   ; 
- D 0 - I - 0x0110BC 04:90AC: 50        .byte $50   ; 
- D 0 - I - 0x0110BD 04:90AD: 51        .byte $51   ; 
- D 0 - I - 0x0110BE 04:90AE: 52        .byte $52   ; 
- D 0 - I - 0x0110BF 04:90AF: 53        .byte $53   ; 
- D 0 - I - 0x0110C0 04:90B0: 54        .byte $54   ; 
- D 0 - I - 0x0110C1 04:90B1: 60        .byte $60   ; 
- D 0 - I - 0x0110C2 04:90B2: 61        .byte $61   ; 
- D 0 - I - 0x0110C3 04:90B3: 62        .byte $62   ; 
- D 0 - I - 0x0110C4 04:90B4: 63        .byte $63   ; 
- D 0 - I - 0x0110C5 04:90B5: 64        .byte $64   ; 
- D 0 - I - 0x0110C6 04:90B6: 70        .byte $70   ; 
- D 0 - I - 0x0110C7 04:90B7: 72        .byte $72   ; 
- D 0 - I - 0x0110C8 04:90B8: 73        .byte $73   ; 
- D 0 - I - 0x0110C9 04:90B9: 72        .byte $72   ; 
- D 0 - I - 0x0110CA 04:90BA: 46        .byte $46   ; 
- D 0 - I - 0x0110CB 04:90BB: 47        .byte $47   ; 
- D 0 - I - 0x0110CC 04:90BC: 46        .byte $46   ; 
- D 0 - I - 0x0110CD 04:90BD: 46        .byte $46   ; 
- D 0 - I - 0x0110CE 04:90BE: 48        .byte $48   ; 
- D 0 - I - 0x0110CF 04:90BF: 48        .byte $48   ; 
off_90C0_00:
- D 0 - I - 0x0110D0 04:90C0: 51        .byte $51   ; 
- D 0 - I - 0x0110D1 04:90C1: 52        .byte $52   ; 
- D 0 - I - 0x0110D2 04:90C2: 53        .byte $53   ; 
- D 0 - I - 0x0110D3 04:90C3: 54        .byte $54   ; 
- D 0 - I - 0x0110D4 04:90C4: 60        .byte $60   ; 
- D 0 - I - 0x0110D5 04:90C5: 61        .byte $61   ; 
- D 0 - I - 0x0110D6 04:90C6: 62        .byte $62   ; 
- D 0 - I - 0x0110D7 04:90C7: 63        .byte $63   ; 
- D 0 - I - 0x0110D8 04:90C8: 64        .byte $64   ; 
- D 0 - I - 0x0110D9 04:90C9: 70        .byte $70   ; 
- D 0 - I - 0x0110DA 04:90CA: 71        .byte $71   ; 
- D 0 - I - 0x0110DB 04:90CB: 72        .byte $72   ; 
- D 0 - I - 0x0110DC 04:90CC: 73        .byte $73   ; 
- D 0 - I - 0x0110DD 04:90CD: 72        .byte $72   ; 
- D 0 - I - 0x0110DE 04:90CE: 40        .byte $40   ; 
- D 0 - I - 0x0110DF 04:90CF: 41        .byte $41   ; 
- D 0 - I - 0x0110E0 04:90D0: 42        .byte $42   ; 
- D 0 - I - 0x0110E1 04:90D1: 43        .byte $43   ; 
- D 0 - I - 0x0110E2 04:90D2: 50        .byte $50   ; 
- D 0 - I - 0x0110E3 04:90D3: 45        .byte $45   ; 
- D 0 - I - 0x0110E4 04:90D4: 45        .byte $45   ; 
- D 0 - I - 0x0110E5 04:90D5: 45        .byte $45   ; 
- D 0 - I - 0x0110E6 04:90D6: 48        .byte $48   ; 
- D 0 - I - 0x0110E7 04:90D7: 48        .byte $48   ; 
off_90D8_00:
- D 0 - I - 0x0110E8 04:90D8: 08        .byte $08   ; 
- D 0 - I - 0x0110E9 04:90D9: 09        .byte $09   ; 
- D 0 - I - 0x0110EA 04:90DA: 18        .byte $18   ; 
- D 0 - I - 0x0110EB 04:90DB: 19        .byte $19   ; 
- D 0 - I - 0x0110EC 04:90DC: 28        .byte $28   ; 
- D 0 - I - 0x0110ED 04:90DD: 29        .byte $29   ; 
- D 0 - I - 0x0110EE 04:90DE: 27        .byte $27   ; 
- D 0 - I - 0x0110EF 04:90DF: 37        .byte $37   ; 
- D 0 - I - 0x0110F0 04:90E0: 38        .byte $38   ; 
- D 0 - I - 0x0110F1 04:90E1: 39        .byte $39   ; 
- D 0 - I - 0x0110F2 04:90E2: 3A        .byte $3A   ; 
- D 0 - I - 0x0110F3 04:90E3: 0C        .byte $0C   ; 
- D 0 - I - 0x0110F4 04:90E4: 0D        .byte $0D   ; 
off_90E5_00:
- D 0 - I - 0x0110F5 04:90E5: 0E        .byte $0E   ; 
- D 0 - I - 0x0110F6 04:90E6: 0F        .byte $0F   ; 
- D 0 - I - 0x0110F7 04:90E7: 1A        .byte $1A   ; 
- D 0 - I - 0x0110F8 04:90E8: 1B        .byte $1B   ; 
- D 0 - I - 0x0110F9 04:90E9: 2A        .byte $2A   ; 
off_90EA_00:
- D 0 - I - 0x0110FA 04:90EA: 2B        .byte $2B   ; 
- D 0 - I - 0x0110FB 04:90EB: 0B        .byte $0B   ; 
- D 0 - I - 0x0110FC 04:90EC: 0A        .byte $0A   ; 
off_90ED_00:
- D 0 - I - 0x0110FD 04:90ED: 11        .byte $11   ; 
- D 0 - I - 0x0110FE 04:90EE: 12        .byte $12   ; 
- D 0 - I - 0x0110FF 04:90EF: 21        .byte $21   ; 
- D 0 - I - 0x011100 04:90F0: 22        .byte $22   ; 
- D 0 - I - 0x011101 04:90F1: 13        .byte $13   ; 
- D 0 - I - 0x011102 04:90F2: 14        .byte $14   ; 
- D 0 - I - 0x011103 04:90F3: 15        .byte $15   ; 
- D 0 - I - 0x011104 04:90F4: 23        .byte $23   ; 
- D 0 - I - 0x011105 04:90F5: 24        .byte $24   ; 
- D 0 - I - 0x011106 04:90F6: 33        .byte $33   ; 
- D 0 - I - 0x011107 04:90F7: 34        .byte $34   ; 
- D 0 - I - 0x011108 04:90F8: 30        .byte $30   ; 
- D 0 - I - 0x011109 04:90F9: 31        .byte $31   ; 
- D 0 - I - 0x01110A 04:90FA: 09        .byte $09   ; 
- D 0 - I - 0x01110B 04:90FB: 0A        .byte $0A   ; 
- D 0 - I - 0x01110C 04:90FC: 37        .byte $37   ; 
- D 0 - I - 0x01110D 04:90FD: 00        .byte $00   ; 
- D 0 - I - 0x01110E 04:90FE: 01        .byte $01   ; 
off_90FF_00:
- D 0 - I - 0x01110F 04:90FF: 40        .byte $40   ; 
- D 0 - I - 0x011110 04:9100: 41        .byte $41   ; 
- D 0 - I - 0x011111 04:9101: 42        .byte $42   ; 
- D 0 - I - 0x011112 04:9102: 40        .byte $40   ; 
- D 0 - I - 0x011113 04:9103: 50        .byte $50   ; 
- D 0 - I - 0x011114 04:9104: 53        .byte $53   ; 
- D 0 - I - 0x011115 04:9105: 51        .byte $51   ; 
- D 0 - I - 0x011116 04:9106: 52        .byte $52   ; 
- D 0 - I - 0x011117 04:9107: 60        .byte $60   ; 
- D 0 - I - 0x011118 04:9108: 61        .byte $61   ; 
- D 0 - I - 0x011119 04:9109: 70        .byte $70   ; 
- D 0 - I - 0x01111A 04:910A: 71        .byte $71   ; 
- D 0 - I - 0x01111B 04:910B: 72        .byte $72   ; 
- D 0 - I - 0x01111C 04:910C: 73        .byte $73   ; 
- D 0 - I - 0x01111D 04:910D: 75        .byte $75   ; 
- D 0 - I - 0x01111E 04:910E: 76        .byte $76   ; 
- D 0 - I - 0x01111F 04:910F: 77        .byte $77   ; 
- D 0 - I - 0x011120 04:9110: 43        .byte $43   ; 
off_9111_00:
- D 0 - I - 0x011121 04:9111: CE        .byte $CE   ; 
- D 0 - I - 0x011122 04:9112: CF        .byte $CF   ; 
- D 0 - I - 0x011123 04:9113: DE        .byte $DE   ; 
- D 0 - I - 0x011124 04:9114: DF        .byte $DF   ; 
- D 0 - I - 0x011125 04:9115: EE        .byte $EE   ; 
- D 0 - I - 0x011126 04:9116: EF        .byte $EF   ; 
- D 0 - I - 0x011127 04:9117: FE        .byte $FE   ; 
- D 0 - I - 0x011128 04:9118: FF        .byte $FF   ; 
- D 0 - I - 0x011129 04:9119: CF        .byte $CF   ; 
- D 0 - I - 0x01112A 04:911A: DF        .byte $DF   ; 
- D 0 - I - 0x01112B 04:911B: EF        .byte $EF   ; 
- D 0 - I - 0x01112C 04:911C: FF        .byte $FF   ; 
- D 0 - I - 0x01112D 04:911D: CE        .byte $CE   ; 
- D 0 - I - 0x01112E 04:911E: DE        .byte $DE   ; 
- D 0 - I - 0x01112F 04:911F: EE        .byte $EE   ; 
- D 0 - I - 0x011130 04:9120: FE        .byte $FE   ; 
- D 0 - I - 0x011131 04:9121: D5        .byte $D5   ; 
- D 0 - I - 0x011132 04:9122: D5        .byte $D5   ; 
off_9123_00:
- D 0 - I - 0x011133 04:9123: 24        .byte $24   ; 
- D 0 - I - 0x011134 04:9124: 25        .byte $25   ; 
- D 0 - I - 0x011135 04:9125: 26        .byte $26   ; 
- D 0 - I - 0x011136 04:9126: 34        .byte $34   ; 
- D 0 - I - 0x011137 04:9127: 35        .byte $35   ; 
- D 0 - I - 0x011138 04:9128: 36        .byte $36   ; 
- D 0 - I - 0x011139 04:9129: 08        .byte $08   ; 
- D 0 - I - 0x01113A 04:912A: 09        .byte $09   ; 
- D 0 - I - 0x01113B 04:912B: 27        .byte $27   ; 
- D 0 - I - 0x01113C 04:912C: 37        .byte $37   ; 
- D 0 - I - 0x01113D 04:912D: 0A        .byte $0A   ; 
- D 0 - I - 0x01113E 04:912E: 38        .byte $38   ; 
- D 0 - I - 0x01113F 04:912F: 39        .byte $39   ; 
- D 0 - I - 0x011140 04:9130: 07        .byte $07   ; 
- D 0 - I - 0x011141 04:9131: 17        .byte $17   ; 
- D 0 - I - 0x011142 04:9132: 0C        .byte $0C   ; 
- D 0 - I - 0x011143 04:9133: 0D        .byte $0D   ; 
- D 0 - I - 0x011144 04:9134: 0E        .byte $0E   ; 
off_9135_00:
- D 0 - I - 0x011145 04:9135: 40        .byte $40   ; 
- D 0 - I - 0x011146 04:9136: 40        .byte $40   ; 
- D 0 - I - 0x011147 04:9137: 41        .byte $41   ; 
- D 0 - I - 0x011148 04:9138: 42        .byte $42   ; 
- D 0 - I - 0x011149 04:9139: 53        .byte $53   ; 
- D 0 - I - 0x01114A 04:913A: 50        .byte $50   ; 
- D 0 - I - 0x01114B 04:913B: 51        .byte $51   ; 
- D 0 - I - 0x01114C 04:913C: 52        .byte $52   ; 
- D 0 - I - 0x01114D 04:913D: 60        .byte $60   ; 
- D 0 - I - 0x01114E 04:913E: 61        .byte $61   ; 
- D 0 - I - 0x01114F 04:913F: 70        .byte $70   ; 
- D 0 - I - 0x011150 04:9140: 71        .byte $71   ; 
- D 0 - I - 0x011151 04:9141: 72        .byte $72   ; 
- D 0 - I - 0x011152 04:9142: 73        .byte $73   ; 
- D 0 - I - 0x011153 04:9143: 75        .byte $75   ; 
- D 0 - I - 0x011154 04:9144: 76        .byte $76   ; 
- D 0 - I - 0x011155 04:9145: 77        .byte $77   ; 
- D 0 - I - 0x011156 04:9146: 43        .byte $43   ; 
off_9147_00:
- D 0 - I - 0x011157 04:9147: 4E        .byte $4E   ; 
- D 0 - I - 0x011158 04:9148: 4F        .byte $4F   ; 
- D 0 - I - 0x011159 04:9149: 4B        .byte $4B   ; 
- D 0 - I - 0x01115A 04:914A: 5C        .byte $5C   ; 
- D 0 - I - 0x01115B 04:914B: 5D        .byte $5D   ; 
- D 0 - I - 0x01115C 04:914C: 5E        .byte $5E   ; 
- D 0 - I - 0x01115D 04:914D: 5F        .byte $5F   ; 
- D 0 - I - 0x01115E 04:914E: 6F        .byte $6F   ; 
- D 0 - I - 0x01115F 04:914F: 7F        .byte $7F   ; 
- D 0 - I - 0x011160 04:9150: 7E        .byte $7E   ; 
- D 0 - I - 0x011161 04:9151: 6A        .byte $6A   ; 
- D 0 - I - 0x011162 04:9152: 6B        .byte $6B   ; 
- D 0 - I - 0x011163 04:9153: 7A        .byte $7A   ; 
- D 0 - I - 0x011164 04:9154: 7B        .byte $7B   ; 
- D 0 - I - 0x011165 04:9155: 5B        .byte $5B   ; 
- D 0 - I - 0x011166 04:9156: 47        .byte $47   ; 
- D 0 - I - 0x011167 04:9157: 48        .byte $48   ; 
- D 0 - I - 0x011168 04:9158: 49        .byte $49   ; 
off_9159_00:
- D 0 - I - 0x011169 04:9159: 5C        .byte $5C   ; 
- D 0 - I - 0x01116A 04:915A: 5D        .byte $5D   ; 
- D 0 - I - 0x01116B 04:915B: 5E        .byte $5E   ; 
- D 0 - I - 0x01116C 04:915C: 5F        .byte $5F   ; 
- D 0 - I - 0x01116D 04:915D: 6C        .byte $6C   ; 
- D 0 - I - 0x01116E 04:915E: 6D        .byte $6D   ; 
- D 0 - I - 0x01116F 04:915F: 6E        .byte $6E   ; 
- D 0 - I - 0x011170 04:9160: 6F        .byte $6F   ; 
- D 0 - I - 0x011171 04:9161: 7C        .byte $7C   ; 
- D 0 - I - 0x011172 04:9162: 7D        .byte $7D   ; 
- D 0 - I - 0x011173 04:9163: 7E        .byte $7E   ; 
- D 0 - I - 0x011174 04:9164: 7F        .byte $7F   ; 
- D 0 - I - 0x011175 04:9165: 4E        .byte $4E   ; 
- D 0 - I - 0x011176 04:9166: 4F        .byte $4F   ; 
- D 0 - I - 0x011177 04:9167: 4C        .byte $4C   ; 
- D 0 - I - 0x011178 04:9168: 4D        .byte $4D   ; 
- D 0 - I - 0x011179 04:9169: 4B        .byte $4B   ; 
off_916A_00:
- D 0 - I - 0x01117A 04:916A: 12        .byte $12   ; 
- D 0 - I - 0x01117B 04:916B: 21        .byte $21   ; 
- D 0 - I - 0x01117C 04:916C: 22        .byte $22   ; 
- D 0 - I - 0x01117D 04:916D: 25        .byte $25   ; 
- D 0 - I - 0x01117E 04:916E: 26        .byte $26   ; 
- D 0 - I - 0x01117F 04:916F: 35        .byte $35   ; 
- D 0 - I - 0x011180 04:9170: 36        .byte $36   ; 
- D 0 - I - 0x011181 04:9171: 14        .byte $14   ; 
- D 0 - I - 0x011182 04:9172: 23        .byte $23   ; 
- D 0 - I - 0x011183 04:9173: 33        .byte $33   ; 
- D 0 - I - 0x011184 04:9174: 13        .byte $13   ; 
- D 0 - I - 0x011185 04:9175: 34        .byte $34   ; 
- D 0 - I - 0x011186 04:9176: 30        .byte $30   ; 
- D 0 - I - 0x011187 04:9177: 31        .byte $31   ; 
- D 0 - I - 0x011188 04:9178: 09        .byte $09   ; 
- D 0 - I - 0x011189 04:9179: 0A        .byte $0A   ; 
- D 0 - I - 0x01118A 04:917A: 37        .byte $37   ; 
off_917B_00:
- D 0 - I - 0x01118B 04:917B: 43        .byte $43   ; 
- D 0 - I - 0x01118C 04:917C: 44        .byte $44   ; 
- D 0 - I - 0x01118D 04:917D: 02        .byte $02   ; 
- D 0 - I - 0x01118E 04:917E: 03        .byte $03   ; 
- D 0 - I - 0x01118F 04:917F: 53        .byte $53   ; 
- D 0 - I - 0x011190 04:9180: 54        .byte $54   ; 
- D 0 - I - 0x011191 04:9181: 40        .byte $40   ; 
- D 0 - I - 0x011192 04:9182: 41        .byte $41   ; 
- D 0 - I - 0x011193 04:9183: 42        .byte $42   ; 
- D 0 - I - 0x011194 04:9184: 50        .byte $50   ; 
- D 0 - I - 0x011195 04:9185: 51        .byte $51   ; 
- D 0 - I - 0x011196 04:9186: 52        .byte $52   ; 
- D 0 - I - 0x011197 04:9187: 2F        .byte $2F   ; 
- D 0 - I - 0x011198 04:9188: 2E        .byte $2E   ; 
- D 0 - I - 0x011199 04:9189: 64        .byte $64   ; 
- D 0 - I - 0x01119A 04:918A: 0F        .byte $0F   ; 
off_918B_00:
- D 0 - I - 0x01119B 04:918B: 4B        .byte $4B   ; 
- D 0 - I - 0x01119C 04:918C: 4C        .byte $4C   ; 
- D 0 - I - 0x01119D 04:918D: 5B        .byte $5B   ; 
- D 0 - I - 0x01119E 04:918E: 1F        .byte $1F   ; 
- D 0 - I - 0x01119F 04:918F: 2E        .byte $2E   ; 
- D 0 - I - 0x0111A0 04:9190: 2F        .byte $2F   ; 
- D 0 - I - 0x0111A1 04:9191: EC        .byte $EC   ; 
- D 0 - I - 0x0111A2 04:9192: ED        .byte $ED   ; 
- D 0 - I - 0x0111A3 04:9193: 4C        .byte $4C   ; 
- D 0 - I - 0x0111A4 04:9194: 4B        .byte $4B   ; 
- D 0 - I - 0x0111A5 04:9195: 1F        .byte $1F   ; 
- D 0 - I - 0x0111A6 04:9196: 5B        .byte $5B   ; 
- D 0 - I - 0x0111A7 04:9197: 2F        .byte $2F   ; 
- D 0 - I - 0x0111A8 04:9198: 2E        .byte $2E   ; 
- D 0 - I - 0x0111A9 04:9199: EA        .byte $EA   ; 
- D 0 - I - 0x0111AA 04:919A: EB        .byte $EB   ; 
off_919B_00:
- D 0 - I - 0x0111AB 04:919B: E8        .byte $E8   ; 
off_919C_00:
- D 0 - I - 0x0111AC 04:919C: E9        .byte $E9   ; 
- D 0 - I - 0x0111AD 04:919D: EA        .byte $EA   ; 
- D 0 - I - 0x0111AE 04:919E: F9        .byte $F9   ; 
- D 0 - I - 0x0111AF 04:919F: FA        .byte $FA   ; 
- D 0 - I - 0x0111B0 04:91A0: D3        .byte $D3   ; 
- D 0 - I - 0x0111B1 04:91A1: C3        .byte $C3   ; 
- D 0 - I - 0x0111B2 04:91A2: D3        .byte $D3   ; 
- D 0 - I - 0x0111B3 04:91A3: E3        .byte $E3   ; 
- D 0 - I - 0x0111B4 04:91A4: E2        .byte $E2   ; 
- D 0 - I - 0x0111B5 04:91A5: 30        .byte $30   ; 
- D 0 - I - 0x0111B6 04:91A6: 30        .byte $30   ; 
- D 0 - I - 0x0111B7 04:91A7: 31        .byte $31   ; 
- D 0 - I - 0x0111B8 04:91A8: 31        .byte $31   ; 
- D 0 - I - 0x0111B9 04:91A9: E1        .byte $E1   ; 
- D 0 - I - 0x0111BA 04:91AA: 63        .byte $63   ; 
off_91AB_00:
- D 0 - I - 0x0111BB 04:91AB: E8        .byte $E8   ; 
- D 0 - I - 0x0111BC 04:91AC: E9        .byte $E9   ; 
- D 0 - I - 0x0111BD 04:91AD: EA        .byte $EA   ; 
- D 0 - I - 0x0111BE 04:91AE: C3        .byte $C3   ; 
- D 0 - I - 0x0111BF 04:91AF: D3        .byte $D3   ; 
- D 0 - I - 0x0111C0 04:91B0: F9        .byte $F9   ; 
- D 0 - I - 0x0111C1 04:91B1: FA        .byte $FA   ; 
- D 0 - I - 0x0111C2 04:91B2: D3        .byte $D3   ; 
- D 0 - I - 0x0111C3 04:91B3: E1        .byte $E1   ; 
- D 0 - I - 0x0111C4 04:91B4: 63        .byte $63   ; 
off_91B5_00:
- D 0 - I - 0x0111C5 04:91B5: E2        .byte $E2   ; 
- D 0 - I - 0x0111C6 04:91B6: E3        .byte $E3   ; 
- D 0 - I - 0x0111C7 04:91B7: F2        .byte $F2   ; 
- D 0 - I - 0x0111C8 04:91B8: F2        .byte $F2   ; 
- D 0 - I - 0x0111C9 04:91B9: F3        .byte $F3   ; 
- D 0 - I - 0x0111CA 04:91BA: F3        .byte $F3   ; 
off_91BB_00:
- D 0 - I - 0x0111CB 04:91BB: 1F        .byte $1F   ; 
- D 0 - I - 0x0111CC 04:91BC: 2E        .byte $2E   ; 
- D 0 - I - 0x0111CD 04:91BD: 2F        .byte $2F   ; 
- D 0 - I - 0x0111CE 04:91BE: 1F        .byte $1F   ; 
- D 0 - I - 0x0111CF 04:91BF: 2F        .byte $2F   ; 
- D 0 - I - 0x0111D0 04:91C0: 2E        .byte $2E   ; 
- D 0 - I - 0x0111D1 04:91C1: 4B        .byte $4B   ; 
- D 0 - I - 0x0111D2 04:91C2: 5B        .byte $5B   ; 
- D 0 - I - 0x0111D3 04:91C3: 4C        .byte $4C   ; 
- D 0 - I - 0x0111D4 04:91C4: 4C        .byte $4C   ; 
- D 0 - I - 0x0111D5 04:91C5: 4B        .byte $4B   ; 
- D 0 - I - 0x0111D6 04:91C6: 5B        .byte $5B   ; 
- D 0 - I - 0x0111D7 04:91C7: EA        .byte $EA   ; 
- D 0 - I - 0x0111D8 04:91C8: EB        .byte $EB   ; 
- D 0 - I - 0x0111D9 04:91C9: EC        .byte $EC   ; 
- D 0 - I - 0x0111DA 04:91CA: ED        .byte $ED   ; 
off_91CB_00:
- D 0 - I - 0x0111DB 04:91CB: 44        .byte $44   ; 
- D 0 - I - 0x0111DC 04:91CC: 54        .byte $54   ; 
- D 0 - I - 0x0111DD 04:91CD: 43        .byte $43   ; 
- D 0 - I - 0x0111DE 04:91CE: 53        .byte $53   ; 
- D 0 - I - 0x0111DF 04:91CF: 42        .byte $42   ; 
- D 0 - I - 0x0111E0 04:91D0: 52        .byte $52   ; 
- D 0 - I - 0x0111E1 04:91D1: 2E        .byte $2E   ; 
- D 0 - I - 0x0111E2 04:91D2: 51        .byte $51   ; 
- D 0 - I - 0x0111E3 04:91D3: 2F        .byte $2F   ; 
- D 0 - I - 0x0111E4 04:91D4: 50        .byte $50   ; 
- D 0 - I - 0x0111E5 04:91D5: 60        .byte $60   ; 
- D 0 - I - 0x0111E6 04:91D6: 61        .byte $61   ; 
- D 0 - I - 0x0111E7 04:91D7: 00        .byte $00   ; 
- D 0 - I - 0x0111E8 04:91D8: 01        .byte $01   ; 
- D 0 - I - 0x0111E9 04:91D9: 64        .byte $64   ; 
- D 0 - I - 0x0111EA 04:91DA: 0F        .byte $0F   ; 
off_91DB_00:
- D 0 - I - 0x0111EB 04:91DB: 00        .byte $00   ; 
- D 0 - I - 0x0111EC 04:91DC: 01        .byte $01   ; 
- D 0 - I - 0x0111ED 04:91DD: 02        .byte $02   ; 
- D 0 - I - 0x0111EE 04:91DE: 03        .byte $03   ; 
- D 0 - I - 0x0111EF 04:91DF: 10        .byte $10   ; 
- D 0 - I - 0x0111F0 04:91E0: 11        .byte $11   ; 
- D 0 - I - 0x0111F1 04:91E1: 12        .byte $12   ; 
- D 0 - I - 0x0111F2 04:91E2: 13        .byte $13   ; 
- D 0 - I - 0x0111F3 04:91E3: 14        .byte $14   ; 
- D 0 - I - 0x0111F4 04:91E4: 20        .byte $20   ; 
- D 0 - I - 0x0111F5 04:91E5: 21        .byte $21   ; 
- D 0 - I - 0x0111F6 04:91E6: 22        .byte $22   ; 
- D 0 - I - 0x0111F7 04:91E7: 23        .byte $23   ; 
- D 0 - I - 0x0111F8 04:91E8: 24        .byte $24   ; 
- D 0 - I - 0x0111F9 04:91E9: 32        .byte $32   ; 
- D 0 - I - 0x0111FA 04:91EA: 33        .byte $33   ; 
off_91EB_00:
- D 0 - I - 0x0111FB 04:91EB: 6D        .byte $6D   ; 
- D 0 - I - 0x0111FC 04:91EC: 7D        .byte $7D   ; 
- D 0 - I - 0x0111FD 04:91ED: 7D        .byte $7D   ; 
- D 0 - I - 0x0111FE 04:91EE: 4C        .byte $4C   ; 
- D 0 - I - 0x0111FF 04:91EF: 5C        .byte $5C   ; 
- D 0 - I - 0x011200 04:91F0: 6C        .byte $6C   ; 
- D 0 - I - 0x011201 04:91F1: 6D        .byte $6D   ; 
- D 0 - I - 0x011202 04:91F2: 6F        .byte $6F   ; 
- D 0 - I - 0x011203 04:91F3: 7F        .byte $7F   ; 
- D 0 - I - 0x011204 04:91F4: 4C        .byte $4C   ; 
- D 0 - I - 0x011205 04:91F5: 5E        .byte $5E   ; 
- D 0 - I - 0x011206 04:91F6: 5E        .byte $5E   ; 
- D 0 - I - 0x011207 04:91F7: 4F        .byte $4F   ; 
- D 0 - I - 0x011208 04:91F8: 5F        .byte $5F   ; 
- D 0 - I - 0x011209 04:91F9: 4E        .byte $4E   ; 
off_91FA_00:
- D 0 - I - 0x01120A 04:91FA: 00        .byte $00   ; 
- D 0 - I - 0x01120B 04:91FB: 01        .byte $01   ; 
- D 0 - I - 0x01120C 04:91FC: 0A        .byte $0A   ; 
- D 0 - I - 0x01120D 04:91FD: 18        .byte $18   ; 
- D 0 - I - 0x01120E 04:91FE: 19        .byte $19   ; 
- D 0 - I - 0x01120F 04:91FF: 1A        .byte $1A   ; 
- D 0 - I - 0x011210 04:9200: 28        .byte $28   ; 
- D 0 - I - 0x011211 04:9201: 37        .byte $37   ; 
- D 0 - I - 0x011212 04:9202: 17        .byte $17   ; 
- D 0 - I - 0x011213 04:9203: 27        .byte $27   ; 
- D 0 - I - 0x011214 04:9204: 29        .byte $29   ; 
- D 0 - I - 0x011215 04:9205: 38        .byte $38   ; 
- D 0 - I - 0x011216 04:9206: 39        .byte $39   ; 
- D 0 - I - 0x011217 04:9207: EA        .byte $EA   ; 
- D 0 - I - 0x011218 04:9208: EA        .byte $EA   ; 
off_9209_00:
- D 0 - I - 0x011219 04:9209: 4C        .byte $4C   ; 
- D 0 - I - 0x01121A 04:920A: 4C        .byte $4C   ; 
- D 0 - I - 0x01121B 04:920B: 5C        .byte $5C   ; 
- D 0 - I - 0x01121C 04:920C: 5C        .byte $5C   ; 
- D 0 - I - 0x01121D 04:920D: 6C        .byte $6C   ; 
- D 0 - I - 0x01121E 04:920E: 6D        .byte $6D   ; 
- D 0 - I - 0x01121F 04:920F: 6D        .byte $6D   ; 
- D 0 - I - 0x011220 04:9210: 6C        .byte $6C   ; 
- D 0 - I - 0x011221 04:9211: 7D        .byte $7D   ; 
- D 0 - I - 0x011222 04:9212: 7D        .byte $7D   ; 
- D 0 - I - 0x011223 04:9213: 4E        .byte $4E   ; 
- D 0 - I - 0x011224 04:9214: 5E        .byte $5E   ; 
- D 0 - I - 0x011225 04:9215: 4E        .byte $4E   ; 
- D 0 - I - 0x011226 04:9216: 5E        .byte $5E   ; 
off_9217_00:
- D 0 - I - 0x011227 04:9217: 2A        .byte $2A   ; 
- D 0 - I - 0x011228 04:9218: 3A        .byte $3A   ; 
- D 0 - I - 0x011229 04:9219: 3B        .byte $3B   ; 
- D 0 - I - 0x01122A 04:921A: 3C        .byte $3C   ; 
- D 0 - I - 0x01122B 04:921B: 22        .byte $22   ; 
- D 0 - I - 0x01122C 04:921C: 29        .byte $29   ; 
- D 0 - I - 0x01122D 04:921D: 38        .byte $38   ; 
- D 0 - I - 0x01122E 04:921E: 39        .byte $39   ; 
- D 0 - I - 0x01122F 04:921F: 00        .byte $00   ; 
- D 0 - I - 0x011230 04:9220: 01        .byte $01   ; 
- D 0 - I - 0x011231 04:9221: 2D        .byte $2D   ; 
- D 0 - I - 0x011232 04:9222: 3D        .byte $3D   ; 
- D 0 - I - 0x011233 04:9223: 0F        .byte $0F   ; 
- D 0 - I - 0x011234 04:9224: 37        .byte $37   ; 
off_9225_00:
- D 0 - I - 0x011235 04:9225: 66        .byte $66   ; 
- D 0 - I - 0x011236 04:9226: 67        .byte $67   ; 
- D 0 - I - 0x011237 04:9227: 68        .byte $68   ; 
- D 0 - I - 0x011238 04:9228: 69        .byte $69   ; 
- D 0 - I - 0x011239 04:9229: 6A        .byte $6A   ; 
- D 0 - I - 0x01123A 04:922A: 77        .byte $77   ; 
- D 0 - I - 0x01123B 04:922B: 78        .byte $78   ; 
- D 0 - I - 0x01123C 04:922C: 79        .byte $79   ; 
- D 0 - I - 0x01123D 04:922D: 7A        .byte $7A   ; 
- D 0 - I - 0x01123E 04:922E: 56        .byte $56   ; 
- D 0 - I - 0x01123F 04:922F: 57        .byte $57   ; 
- D 0 - I - 0x011240 04:9230: 58        .byte $58   ; 
off_9231_00:
- D 0 - I - 0x011241 04:9231: 5B        .byte $5B   ; 
- D 0 - I - 0x011242 04:9232: 5C        .byte $5C   ; 
- D 0 - I - 0x011243 04:9233: 56        .byte $56   ; 
- D 0 - I - 0x011244 04:9234: 57        .byte $57   ; 
- D 0 - I - 0x011245 04:9235: 58        .byte $58   ; 
- D 0 - I - 0x011246 04:9236: 66        .byte $66   ; 
- D 0 - I - 0x011247 04:9237: 67        .byte $67   ; 
- D 0 - I - 0x011248 04:9238: 68        .byte $68   ; 
- D 0 - I - 0x011249 04:9239: 69        .byte $69   ; 
- D 0 - I - 0x01124A 04:923A: 6A        .byte $6A   ; 
- D 0 - I - 0x01124B 04:923B: 49        .byte $49   ; 
- D 0 - I - 0x01124C 04:923C: 4A        .byte $4A   ; 
- D 0 - I - 0x01124D 04:923D: 4B        .byte $4B   ; 
- D 0 - I - 0x01124E 04:923E: 4B        .byte $4B   ; 
off_923F_00:
- D 0 - I - 0x01124F 04:923F: 06        .byte $06   ; 
- D 0 - I - 0x011250 04:9240: 06        .byte $06   ; 
- D 0 - I - 0x011251 04:9241: 32        .byte $32   ; 
- D 0 - I - 0x011252 04:9242: 33        .byte $33   ; 
- D 0 - I - 0x011253 04:9243: 12        .byte $12   ; 
- D 0 - I - 0x011254 04:9244: 13        .byte $13   ; 
- D 0 - I - 0x011255 04:9245: 14        .byte $14   ; 
- D 0 - I - 0x011256 04:9246: 15        .byte $15   ; 
- D 0 - I - 0x011257 04:9247: 23        .byte $23   ; 
- D 0 - I - 0x011258 04:9248: 24        .byte $24   ; 
- D 0 - I - 0x011259 04:9249: 25        .byte $25   ; 
- D 0 - I - 0x01125A 04:924A: 26        .byte $26   ; 
- D 0 - I - 0x01125B 04:924B: 38        .byte $38   ; 
- D 0 - I - 0x01125C 04:924C: 39        .byte $39   ; 
off_924D_00:
- D 0 - I - 0x01125D 04:924D: 29        .byte $29   ; 
- D 0 - I - 0x01125E 04:924E: 3B        .byte $3B   ; 
- D 0 - I - 0x01125F 04:924F: 3C        .byte $3C   ; 
- D 0 - I - 0x011260 04:9250: 02        .byte $02   ; 
- D 0 - I - 0x011261 04:9251: 03        .byte $03   ; 
- D 0 - I - 0x011262 04:9252: 46        .byte $46   ; 
- D 0 - I - 0x011263 04:9253: 56        .byte $56   ; 
- D 0 - I - 0x011264 04:9254: 60        .byte $60   ; 
- D 0 - I - 0x011265 04:9255: 08        .byte $08   ; 
- D 0 - I - 0x011266 04:9256: 18        .byte $18   ; 
- D 0 - I - 0x011267 04:9257: 7F        .byte $7F   ; 
- D 0 - I - 0x011268 04:9258: 7E        .byte $7E   ; 
- D 0 - I - 0x011269 04:9259: 7C        .byte $7C   ; 
- D 0 - I - 0x01126A 04:925A: 7D        .byte $7D   ; 
off_925B_00:
- D 0 - I - 0x01126B 04:925B: 06        .byte $06   ; 
- D 0 - I - 0x01126C 04:925C: 06        .byte $06   ; 
- D 0 - I - 0x01126D 04:925D: 32        .byte $32   ; 
- D 0 - I - 0x01126E 04:925E: 33        .byte $33   ; 
- D 0 - I - 0x01126F 04:925F: 34        .byte $34   ; 
- D 0 - I - 0x011270 04:9260: 35        .byte $35   ; 
- D 0 - I - 0x011271 04:9261: 36        .byte $36   ; 
- D 0 - I - 0x011272 04:9262: 15        .byte $15   ; 
- D 0 - I - 0x011273 04:9263: 23        .byte $23   ; 
- D 0 - I - 0x011274 04:9264: 24        .byte $24   ; 
- D 0 - I - 0x011275 04:9265: 25        .byte $25   ; 
- D 0 - I - 0x011276 04:9266: 38        .byte $38   ; 
- D 0 - I - 0x011277 04:9267: 26        .byte $26   ; 
- D 0 - I - 0x011278 04:9268: 39        .byte $39   ; 
off_9269_00:
- D 0 - I - 0x011279 04:9269: EE        .byte $EE   ; 
- D 0 - I - 0x01127A 04:926A: EF        .byte $EF   ; 
- D 0 - I - 0x01127B 04:926B: FE        .byte $FE   ; 
- D 0 - I - 0x01127C 04:926C: FF        .byte $FF   ; 
- D 0 - I - 0x01127D 04:926D: DC        .byte $DC   ; 
- D 0 - I - 0x01127E 04:926E: DD        .byte $DD   ; 
- D 0 - I - 0x01127F 04:926F: EB        .byte $EB   ; 
- D 0 - I - 0x011280 04:9270: EC        .byte $EC   ; 
- D 0 - I - 0x011281 04:9271: ED        .byte $ED   ; 
- D 0 - I - 0x011282 04:9272: FB        .byte $FB   ; 
off_9273_00:
- D 0 - I - 0x011283 04:9273: FC        .byte $FC   ; 
- D 0 - I - 0x011284 04:9274: FD        .byte $FD   ; 
- D 0 - I - 0x011285 04:9275: 58        .byte $58   ; 
- D 0 - I - 0x011286 04:9276: 59        .byte $59   ; 
off_9277_00:
- D 0 - I - 0x011287 04:9277: 4C        .byte $4C   ; 
- D 0 - I - 0x011288 04:9278: 4D        .byte $4D   ; 
- D 0 - I - 0x011289 04:9279: 5C        .byte $5C   ; 
- D 0 - I - 0x01128A 04:927A: 5D        .byte $5D   ; 
- D 0 - I - 0x01128B 04:927B: 6C        .byte $6C   ; 
- D 0 - I - 0x01128C 04:927C: 6D        .byte $6D   ; 
- D 0 - I - 0x01128D 04:927D: 7D        .byte $7D   ; 
- D 0 - I - 0x01128E 04:927E: 4D        .byte $4D   ; 
- D 0 - I - 0x01128F 04:927F: 5D        .byte $5D   ; 
- D 0 - I - 0x011290 04:9280: 6D        .byte $6D   ; 
- D 0 - I - 0x011291 04:9281: 7D        .byte $7D   ; 
- D 0 - I - 0x011292 04:9282: 4C        .byte $4C   ; 
- D 0 - I - 0x011293 04:9283: 5C        .byte $5C   ; 
- D 0 - I - 0x011294 04:9284: 6C        .byte $6C   ; 
off_9285_00:
- D 0 - I - 0x011295 04:9285: D3        .byte $D3   ; 
- D 0 - I - 0x011296 04:9286: D4        .byte $D4   ; 
- D 0 - I - 0x011297 04:9287: D5        .byte $D5   ; 
- D 0 - I - 0x011298 04:9288: FC        .byte $FC   ; 
- D 0 - I - 0x011299 04:9289: FD        .byte $FD   ; 
- D 0 - I - 0x01129A 04:928A: 2D        .byte $2D   ; 
- D 0 - I - 0x01129B 04:928B: 2E        .byte $2E   ; 
- D 0 - I - 0x01129C 04:928C: 2F        .byte $2F   ; 
- D 0 - I - 0x01129D 04:928D: 3D        .byte $3D   ; 
- D 0 - I - 0x01129E 04:928E: 3E        .byte $3E   ; 
- D 0 - I - 0x01129F 04:928F: 3F        .byte $3F   ; 
- D 0 - I - 0x0112A0 04:9290: 3C        .byte $3C   ; 
off_9291_00:
- D 0 - I - 0x0112A1 04:9291: 2C        .byte $2C   ; 
off_9292_00:
- D 0 - I - 0x0112A2 04:9292: 41        .byte $41   ; 
- D 0 - I - 0x0112A3 04:9293: 51        .byte $51   ; 
- D 0 - I - 0x0112A4 04:9294: 52        .byte $52   ; 
- D 0 - I - 0x0112A5 04:9295: 47        .byte $47   ; 
- D 0 - I - 0x0112A6 04:9296: 48        .byte $48   ; 
- D 0 - I - 0x0112A7 04:9297: 70        .byte $70   ; 
- D 0 - I - 0x0112A8 04:9298: 71        .byte $71   ; 
- D 0 - I - 0x0112A9 04:9299: 72        .byte $72   ; 
- D 0 - I - 0x0112AA 04:929A: 08        .byte $08   ; 
- D 0 - I - 0x0112AB 04:929B: 18        .byte $18   ; 
- D 0 - I - 0x0112AC 04:929C: 08        .byte $08   ; 
- D 0 - I - 0x0112AD 04:929D: 18        .byte $18   ; 
- D 0 - I - 0x0112AE 04:929E: 41        .byte $41   ; 
off_929F_00:
- D 0 - I - 0x0112AF 04:929F: A9        .byte $A9   ; 
- D 0 - I - 0x0112B0 04:92A0: AA        .byte $AA   ; 
- D 0 - I - 0x0112B1 04:92A1: AB        .byte $AB   ; 
- D 0 - I - 0x0112B2 04:92A2: B9        .byte $B9   ; 
- D 0 - I - 0x0112B3 04:92A3: BA        .byte $BA   ; 
- D 0 - I - 0x0112B4 04:92A4: BB        .byte $BB   ; 
- D 0 - I - 0x0112B5 04:92A5: 30        .byte $30   ; 
- D 0 - I - 0x0112B6 04:92A6: 31        .byte $31   ; 
- D 0 - I - 0x0112B7 04:92A7: 8C        .byte $8C   ; 
- D 0 - I - 0x0112B8 04:92A8: 8D        .byte $8D   ; 
- D 0 - I - 0x0112B9 04:92A9: 00        .byte $00   ; 
- D 0 - I - 0x0112BA 04:92AA: 01        .byte $01   ; 
- D 0 - I - 0x0112BB 04:92AB: 8E        .byte $8E   ; 
off_92AC_00:
- D 0 - I - 0x0112BC 04:92AC: F0        .byte $F0   ; 
- D 0 - I - 0x0112BD 04:92AD: F1        .byte $F1   ; 
- D 0 - I - 0x0112BE 04:92AE: F2        .byte $F2   ; 
- D 0 - I - 0x0112BF 04:92AF: 63        .byte $63   ; 
- D 0 - I - 0x0112C0 04:92B0: 62        .byte $62   ; 
- D 0 - I - 0x0112C1 04:92B1: 30        .byte $30   ; 
- D 0 - I - 0x0112C2 04:92B2: 31        .byte $31   ; 
- D 0 - I - 0x0112C3 04:92B3: EA        .byte $EA   ; 
- D 0 - I - 0x0112C4 04:92B4: EA        .byte $EA   ; 
- D 0 - I - 0x0112C5 04:92B5: 01        .byte $01   ; 
- D 0 - I - 0x0112C6 04:92B6: E5        .byte $E5   ; 
- D 0 - I - 0x0112C7 04:92B7: E5        .byte $E5   ; 
- D 0 - I - 0x0112C8 04:92B8: 00        .byte $00   ; 
off_92B9_00:
- - - - - - 0x0112C9 04:92B9: 40        .byte $40   ; 
- - - - - - 0x0112CA 04:92BA: 50        .byte $50   ; 
- - - - - - 0x0112CB 04:92BB: 47        .byte $47   ; 
- - - - - - 0x0112CC 04:92BC: 48        .byte $48   ; 
- - - - - - 0x0112CD 04:92BD: 3D        .byte $3D   ; 
- - - - - - 0x0112CE 04:92BE: 3E        .byte $3E   ; 
- - - - - - 0x0112CF 04:92BF: 3F        .byte $3F   ; 
- - - - - - 0x0112D0 04:92C0: 40        .byte $40   ; 
- - - - - - 0x0112D1 04:92C1: 50        .byte $50   ; 
- - - - - - 0x0112D2 04:92C2: 4F        .byte $4F   ; 
- - - - - - 0x0112D3 04:92C3: 4F        .byte $4F   ; 
- - - - - - 0x0112D4 04:92C4: 6F        .byte $6F   ; 
- - - - - - 0x0112D5 04:92C5: 49        .byte $49   ; 
off_92C6_00:
- D 0 - I - 0x0112D6 04:92C6: 00        .byte $00   ; 
- D 0 - I - 0x0112D7 04:92C7: 01        .byte $01   ; 
- D 0 - I - 0x0112D8 04:92C8: 0C        .byte $0C   ; 
- D 0 - I - 0x0112D9 04:92C9: 0D        .byte $0D   ; 
- D 0 - I - 0x0112DA 04:92CA: 1B        .byte $1B   ; 
- D 0 - I - 0x0112DB 04:92CB: 1C        .byte $1C   ; 
- D 0 - I - 0x0112DC 04:92CC: 1D        .byte $1D   ; 
- D 0 - I - 0x0112DD 04:92CD: 0F        .byte $0F   ; 
- D 0 - I - 0x0112DE 04:92CE: 0B        .byte $0B   ; 
- D 0 - I - 0x0112DF 04:92CF: 1F        .byte $1F   ; 
- D 0 - I - 0x0112E0 04:92D0: 26        .byte $26   ; 
- D 0 - I - 0x0112E1 04:92D1: 38        .byte $38   ; 
- D 0 - I - 0x0112E2 04:92D2: 37        .byte $37   ; 
off_92D3_00:
- - - - - - 0x0112E3 04:92D3: 41        .byte $41   ; 
- - - - - - 0x0112E4 04:92D4: 41        .byte $41   ; 
- - - - - - 0x0112E5 04:92D5: 51        .byte $51   ; 
- - - - - - 0x0112E6 04:92D6: 52        .byte $52   ; 
- - - - - - 0x0112E7 04:92D7: 47        .byte $47   ; 
- - - - - - 0x0112E8 04:92D8: 48        .byte $48   ; 
- - - - - - 0x0112E9 04:92D9: 70        .byte $70   ; 
- - - - - - 0x0112EA 04:92DA: 71        .byte $71   ; 
- - - - - - 0x0112EB 04:92DB: 72        .byte $72   ; 
- - - - - - 0x0112EC 04:92DC: 46        .byte $46   ; 
- - - - - - 0x0112ED 04:92DD: 56        .byte $56   ; 
- - - - - - 0x0112EE 04:92DE: 46        .byte $46   ; 
- - - - - - 0x0112EF 04:92DF: 56        .byte $56   ; 
off_92E0_00:
- D 0 - I - 0x0112F0 04:92E0: F0        .byte $F0   ; 
- D 0 - I - 0x0112F1 04:92E1: F1        .byte $F1   ; 
- D 0 - I - 0x0112F2 04:92E2: F2        .byte $F2   ; 
- D 0 - I - 0x0112F3 04:92E3: 80        .byte $80   ; 
- D 0 - I - 0x0112F4 04:92E4: 81        .byte $81   ; 
- D 0 - I - 0x0112F5 04:92E5: 95        .byte $95   ; 
- D 0 - I - 0x0112F6 04:92E6: 91        .byte $91   ; 
- D 0 - I - 0x0112F7 04:92E7: 60        .byte $60   ; 
- D 0 - I - 0x0112F8 04:92E8: E5        .byte $E5   ; 
- D 0 - I - 0x0112F9 04:92E9: E5        .byte $E5   ; 
- D 0 - I - 0x0112FA 04:92EA: 00        .byte $00   ; 
- D 0 - I - 0x0112FB 04:92EB: 01        .byte $01   ; 
- D 0 - I - 0x0112FC 04:92EC: FD        .byte $FD   ; 
off_92ED_00:
- D 0 - I - 0x0112FD 04:92ED: 4A        .byte $4A   ; 
- D 0 - I - 0x0112FE 04:92EE: 16        .byte $16   ; 
- D 0 - I - 0x0112FF 04:92EF: 66        .byte $66   ; 
- D 0 - I - 0x011300 04:92F0: 5A        .byte $5A   ; 
- D 0 - I - 0x011301 04:92F1: 65        .byte $65   ; 
- D 0 - I - 0x011302 04:92F2: 3B        .byte $3B   ; 
- D 0 - I - 0x011303 04:92F3: 3C        .byte $3C   ; 
- D 0 - I - 0x011304 04:92F4: 08        .byte $08   ; 
- D 0 - I - 0x011305 04:92F5: 18        .byte $18   ; 
- D 0 - I - 0x011306 04:92F6: 08        .byte $08   ; 
- D 0 - I - 0x011307 04:92F7: 18        .byte $18   ; 
- D 0 - I - 0x011308 04:92F8: 02        .byte $02   ; 
- D 0 - I - 0x011309 04:92F9: 03        .byte $03   ; 
off_92FA_00:
- D 0 - I - 0x01130A 04:92FA: 30        .byte $30   ; 
- D 0 - I - 0x01130B 04:92FB: 31        .byte $31   ; 
- D 0 - I - 0x01130C 04:92FC: 89        .byte $89   ; 
- D 0 - I - 0x01130D 04:92FD: 8A        .byte $8A   ; 
- D 0 - I - 0x01130E 04:92FE: 8B        .byte $8B   ; 
- D 0 - I - 0x01130F 04:92FF: 99        .byte $99   ; 
- D 0 - I - 0x011310 04:9300: 9A        .byte $9A   ; 
- D 0 - I - 0x011311 04:9301: 9B        .byte $9B   ; 
- D 0 - I - 0x011312 04:9302: 9C        .byte $9C   ; 
- D 0 - I - 0x011313 04:9303: 9D        .byte $9D   ; 
- D 0 - I - 0x011314 04:9304: 00        .byte $00   ; 
- D 0 - I - 0x011315 04:9305: 01        .byte $01   ; 
- D 0 - I - 0x011316 04:9306: 9E        .byte $9E   ; 
off_9307_00:
- D 0 - I - 0x011317 04:9307: E2        .byte $E2   ; 
- D 0 - I - 0x011318 04:9308: 00        .byte $00   ; 
- D 0 - I - 0x011319 04:9309: 01        .byte $01   ; 
- D 0 - I - 0x01131A 04:930A: C6        .byte $C6   ; 
- D 0 - I - 0x01131B 04:930B: F5        .byte $F5   ; 
- D 0 - I - 0x01131C 04:930C: F6        .byte $F6   ; 
- D 0 - I - 0x01131D 04:930D: F7        .byte $F7   ; 
- D 0 - I - 0x01131E 04:930E: 95        .byte $95   ; 
- D 0 - I - 0x01131F 04:930F: 80        .byte $80   ; 
- D 0 - I - 0x011320 04:9310: 81        .byte $81   ; 
- D 0 - I - 0x011321 04:9311: 91        .byte $91   ; 
- D 0 - I - 0x011322 04:9312: 60        .byte $60   ; 
- D 0 - I - 0x011323 04:9313: FD        .byte $FD   ; 
off_9314_00:
- D 0 - I - 0x011324 04:9314: 00        .byte $00   ; 
- D 0 - I - 0x011325 04:9315: 01        .byte $01   ; 
- D 0 - I - 0x011326 04:9316: 08        .byte $08   ; 
- D 0 - I - 0x011327 04:9317: 09        .byte $09   ; 
- D 0 - I - 0x011328 04:9318: 28        .byte $28   ; 
- D 0 - I - 0x011329 04:9319: 38        .byte $38   ; 
- D 0 - I - 0x01132A 04:931A: 17        .byte $17   ; 
- D 0 - I - 0x01132B 04:931B: 27        .byte $27   ; 
- D 0 - I - 0x01132C 04:931C: 2F        .byte $2F   ; 
- D 0 - I - 0x01132D 04:931D: 3F        .byte $3F   ; 
- D 0 - I - 0x01132E 04:931E: 3E        .byte $3E   ; 
- D 0 - I - 0x01132F 04:931F: 26        .byte $26   ; 
- D 0 - I - 0x011330 04:9320: 39        .byte $39   ; 
off_9321_00:
- D 0 - I - 0x011331 04:9321: 00        .byte $00   ; 
- D 0 - I - 0x011332 04:9322: 01        .byte $01   ; 
- D 0 - I - 0x011333 04:9323: 14        .byte $14   ; 
- D 0 - I - 0x011334 04:9324: 26        .byte $26   ; 
- D 0 - I - 0x011335 04:9325: 80        .byte $80   ; 
- D 0 - I - 0x011336 04:9326: 91        .byte $91   ; 
- D 0 - I - 0x011337 04:9327: 15        .byte $15   ; 
- D 0 - I - 0x011338 04:9328: 11        .byte $11   ; 
- D 0 - I - 0x011339 04:9329: 60        .byte $60   ; 
- D 0 - I - 0x01133A 04:932A: 81        .byte $81   ; 
- D 0 - I - 0x01133B 04:932B: 25        .byte $25   ; 
- D 0 - I - 0x01133C 04:932C: 95        .byte $95   ; 
off_932D_00:
- D 0 - I - 0x01133D 04:932D: 30        .byte $30   ; 
- D 0 - I - 0x01133E 04:932E: 31        .byte $31   ; 
- D 0 - I - 0x01133F 04:932F: CE        .byte $CE   ; 
- D 0 - I - 0x011340 04:9330: CF        .byte $CF   ; 
- D 0 - I - 0x011341 04:9331: DE        .byte $DE   ; 
- D 0 - I - 0x011342 04:9332: DF        .byte $DF   ; 
- D 0 - I - 0x011343 04:9333: 58        .byte $58   ; 
- D 0 - I - 0x011344 04:9334: 59        .byte $59   ; 
- D 0 - I - 0x011345 04:9335: 68        .byte $68   ; 
- D 0 - I - 0x011346 04:9336: 69        .byte $69   ; 
- D 0 - I - 0x011347 04:9337: 78        .byte $78   ; 
- D 0 - I - 0x011348 04:9338: 79        .byte $79   ; 
off_9339_00:
- D 0 - I - 0x011349 04:9339: 28        .byte $28   ; 
- D 0 - I - 0x01134A 04:933A: 29        .byte $29   ; 
- D 0 - I - 0x01134B 04:933B: 33        .byte $33   ; 
- D 0 - I - 0x01134C 04:933C: 34        .byte $34   ; 
- D 0 - I - 0x01134D 04:933D: 2B        .byte $2B   ; 
- D 0 - I - 0x01134E 04:933E: 2C        .byte $2C   ; 
- D 0 - I - 0x01134F 04:933F: 1D        .byte $1D   ; 
- D 0 - I - 0x011350 04:9340: 2D        .byte $2D   ; 
- D 0 - I - 0x011351 04:9341: 1D        .byte $1D   ; 
- D 0 - I - 0x011352 04:9342: 3D        .byte $3D   ; 
- D 0 - I - 0x011353 04:9343: 00        .byte $00   ; 
- D 0 - I - 0x011354 04:9344: 01        .byte $01   ; 
off_9345_00:
- D 0 - I - 0x011355 04:9345: 0D        .byte $0D   ; 
- D 0 - I - 0x011356 04:9346: 2F        .byte $2F   ; 
- D 0 - I - 0x011357 04:9347: 2E        .byte $2E   ; 
- D 0 - I - 0x011358 04:9348: 2C        .byte $2C   ; 
- D 0 - I - 0x011359 04:9349: 3C        .byte $3C   ; 
- D 0 - I - 0x01135A 04:934A: 3B        .byte $3B   ; 
- D 0 - I - 0x01135B 04:934B: 1D        .byte $1D   ; 
- D 0 - I - 0x01135C 04:934C: 1D        .byte $1D   ; 
- D 0 - I - 0x01135D 04:934D: 3D        .byte $3D   ; 
- D 0 - I - 0x01135E 04:934E: 2D        .byte $2D   ; 
off_934F_00:
- D 0 - I - 0x01135F 04:934F: 00        .byte $00   ; 
- D 0 - I - 0x011360 04:9350: 01        .byte $01   ; 
- D 0 - I - 0x011361 04:9351: 4C        .byte $4C   ; 
- D 0 - I - 0x011362 04:9352: 4D        .byte $4D   ; 
- D 0 - I - 0x011363 04:9353: 4E        .byte $4E   ; 
- D 0 - I - 0x011364 04:9354: 7C        .byte $7C   ; 
- D 0 - I - 0x011365 04:9355: 7D        .byte $7D   ; 
- D 0 - I - 0x011366 04:9356: 5C        .byte $5C   ; 
- D 0 - I - 0x011367 04:9357: 5D        .byte $5D   ; 
- D 0 - I - 0x011368 04:9358: 7E        .byte $7E   ; 
- D 0 - I - 0x011369 04:9359: 60        .byte $60   ; 
- D 0 - I - 0x01136A 04:935A: 7F        .byte $7F   ; 
off_935B_00:
- D 0 - I - 0x01136B 04:935B: C3        .byte $C3   ; 
- D 0 - I - 0x01136C 04:935C: C4        .byte $C4   ; 
- D 0 - I - 0x01136D 04:935D: C5        .byte $C5   ; 
- D 0 - I - 0x01136E 04:935E: FC        .byte $FC   ; 
- D 0 - I - 0x01136F 04:935F: FD        .byte $FD   ; 
- D 0 - I - 0x011370 04:9360: 0B        .byte $0B   ; 
- D 0 - I - 0x011371 04:9361: 0C        .byte $0C   ; 
- D 0 - I - 0x011372 04:9362: 3C        .byte $3C   ; 
- D 0 - I - 0x011373 04:9363: 3D        .byte $3D   ; 
- D 0 - I - 0x011374 04:9364: 0F        .byte $0F   ; 
- D 0 - I - 0x011375 04:9365: 1C        .byte $1C   ; 
- D 0 - I - 0x011376 04:9366: 3B        .byte $3B   ; 
off_9367_00:
- D 0 - I - 0x011377 04:9367: 08        .byte $08   ; 
- D 0 - I - 0x011378 04:9368: 02        .byte $02   ; 
- D 0 - I - 0x011379 04:9369: 03        .byte $03   ; 
- D 0 - I - 0x01137A 04:936A: 58        .byte $58   ; 
- D 0 - I - 0x01137B 04:936B: 18        .byte $18   ; 
- D 0 - I - 0x01137C 04:936C: 69        .byte $69   ; 
- D 0 - I - 0x01137D 04:936D: 57        .byte $57   ; 
- D 0 - I - 0x01137E 04:936E: 68        .byte $68   ; 
- D 0 - I - 0x01137F 04:936F: 79        .byte $79   ; 
- D 0 - I - 0x011380 04:9370: 67        .byte $67   ; 
- D 0 - I - 0x011381 04:9371: 78        .byte $78   ; 
- D 0 - I - 0x011382 04:9372: 77        .byte $77   ; 
off_9373_00:
- D 0 - I - 0x011383 04:9373: 62        .byte $62   ; 
- D 0 - I - 0x011384 04:9374: 80        .byte $80   ; 
- D 0 - I - 0x011385 04:9375: 91        .byte $91   ; 
- D 0 - I - 0x011386 04:9376: 60        .byte $60   ; 
- D 0 - I - 0x011387 04:9377: 96        .byte $96   ; 
- D 0 - I - 0x011388 04:9378: 00        .byte $00   ; 
- D 0 - I - 0x011389 04:9379: 32        .byte $32   ; 
- D 0 - I - 0x01138A 04:937A: 33        .byte $33   ; 
- D 0 - I - 0x01138B 04:937B: 06        .byte $06   ; 
- D 0 - I - 0x01138C 04:937C: 77        .byte $77   ; 
- D 0 - I - 0x01138D 04:937D: 81        .byte $81   ; 
- D 0 - I - 0x01138E 04:937E: 95        .byte $95   ; 
off_937F_00:
- D 0 - I - 0x01138F 04:937F: C0        .byte $C0   ; 
off_9380_00:
- D 0 - I - 0x011390 04:9380: C1        .byte $C1   ; 
off_9381_00:
- D 0 - I - 0x011391 04:9381: C2        .byte $C2   ; 
off_9382_00:
- D 0 - I - 0x011392 04:9382: D0        .byte $D0   ; 
off_9383_00:
- D 0 - I - 0x011393 04:9383: D1        .byte $D1   ; 
off_9384_00:
- D 0 - I - 0x011394 04:9384: D2        .byte $D2   ; 
- D 0 - I - 0x011395 04:9385: 80        .byte $80   ; 
- D 0 - I - 0x011396 04:9386: FD        .byte $FD   ; 
- D 0 - I - 0x011397 04:9387: 91        .byte $91   ; 
- D 0 - I - 0x011398 04:9388: 60        .byte $60   ; 
- D 0 - I - 0x011399 04:9389: 95        .byte $95   ; 
- D 0 - I - 0x01139A 04:938A: 81        .byte $81   ; 
off_938B_00:
- D 0 - I - 0x01139B 04:938B: C7        .byte $C7   ; 
- D 0 - I - 0x01139C 04:938C: C8        .byte $C8   ; 
- D 0 - I - 0x01139D 04:938D: C9        .byte $C9   ; 
- D 0 - I - 0x01139E 04:938E: D7        .byte $D7   ; 
- D 0 - I - 0x01139F 04:938F: D8        .byte $D8   ; 
- D 0 - I - 0x0113A0 04:9390: D2        .byte $D2   ; 
- D 0 - I - 0x0113A1 04:9391: 80        .byte $80   ; 
- D 0 - I - 0x0113A2 04:9392: FD        .byte $FD   ; 
- D 0 - I - 0x0113A3 04:9393: 91        .byte $91   ; 
- D 0 - I - 0x0113A4 04:9394: 60        .byte $60   ; 
- D 0 - I - 0x0113A5 04:9395: 95        .byte $95   ; 
- D 0 - I - 0x0113A6 04:9396: 81        .byte $81   ; 
off_9397_00:
- D 0 - I - 0x0113A7 04:9397: 4A        .byte $4A   ; 
- D 0 - I - 0x0113A8 04:9398: 65        .byte $65   ; 
- D 0 - I - 0x0113A9 04:9399: 66        .byte $66   ; 
- D 0 - I - 0x0113AA 04:939A: 16        .byte $16   ; 
- D 0 - I - 0x0113AB 04:939B: 5A        .byte $5A   ; 
- D 0 - I - 0x0113AC 04:939C: F5        .byte $F5   ; 
- D 0 - I - 0x0113AD 04:939D: F6        .byte $F6   ; 
- D 0 - I - 0x0113AE 04:939E: F7        .byte $F7   ; 
- D 0 - I - 0x0113AF 04:939F: E2        .byte $E2   ; 
- D 0 - I - 0x0113B0 04:93A0: 00        .byte $00   ; 
- D 0 - I - 0x0113B1 04:93A1: 01        .byte $01   ; 
- D 0 - I - 0x0113B2 04:93A2: C6        .byte $C6   ; 
off_93A3_00:
- D 0 - I - 0x0113B3 04:93A3: 08        .byte $08   ; 
- D 0 - I - 0x0113B4 04:93A4: 02        .byte $02   ; 
- D 0 - I - 0x0113B5 04:93A5: 03        .byte $03   ; 
- D 0 - I - 0x0113B6 04:93A6: 08        .byte $08   ; 
- D 0 - I - 0x0113B7 04:93A7: 18        .byte $18   ; 
- D 0 - I - 0x0113B8 04:93A8: 3B        .byte $3B   ; 
- D 0 - I - 0x0113B9 04:93A9: 3C        .byte $3C   ; 
- D 0 - I - 0x0113BA 04:93AA: 18        .byte $18   ; 
- D 0 - I - 0x0113BB 04:93AB: 30        .byte $30   ; 
- D 0 - I - 0x0113BC 04:93AC: 31        .byte $31   ; 
- D 0 - I - 0x0113BD 04:93AD: 63        .byte $63   ; 
- D 0 - I - 0x0113BE 04:93AE: 62        .byte $62   ; 
off_93AF_00:
- D 0 - I - 0x0113BF 04:93AF: 0B        .byte $0B   ; 
- D 0 - I - 0x0113C0 04:93B0: 0C        .byte $0C   ; 
- D 0 - I - 0x0113C1 04:93B1: 1B        .byte $1B   ; 
- D 0 - I - 0x0113C2 04:93B2: 1C        .byte $1C   ; 
- D 0 - I - 0x0113C3 04:93B3: 38        .byte $38   ; 
- D 0 - I - 0x0113C4 04:93B4: 39        .byte $39   ; 
- D 0 - I - 0x0113C5 04:93B5: 3A        .byte $3A   ; 
- D 0 - I - 0x0113C6 04:93B6: 03        .byte $03   ; 
- D 0 - I - 0x0113C7 04:93B7: E2        .byte $E2   ; 
- D 0 - I - 0x0113C8 04:93B8: 02        .byte $02   ; 
- D 0 - I - 0x0113C9 04:93B9: 2A        .byte $2A   ; 
off_93BA_00:
- D 0 - I - 0x0113CA 04:93BA: 28        .byte $28   ; 
- D 0 - I - 0x0113CB 04:93BB: 29        .byte $29   ; 
- D 0 - I - 0x0113CC 04:93BC: 33        .byte $33   ; 
- D 0 - I - 0x0113CD 04:93BD: 34        .byte $34   ; 
- D 0 - I - 0x0113CE 04:93BE: 18        .byte $18   ; 
- D 0 - I - 0x0113CF 04:93BF: 19        .byte $19   ; 
- D 0 - I - 0x0113D0 04:93C0: 1A        .byte $1A   ; 
- D 0 - I - 0x0113D1 04:93C1: 08        .byte $08   ; 
- D 0 - I - 0x0113D2 04:93C2: 00        .byte $00   ; 
- D 0 - I - 0x0113D3 04:93C3: 01        .byte $01   ; 
- D 0 - I - 0x0113D4 04:93C4: 0A        .byte $0A   ; 
off_93C5_00:
- D 0 - I - 0x0113D5 04:93C5: 00        .byte $00   ; 
- D 0 - I - 0x0113D6 04:93C6: 01        .byte $01   ; 
- D 0 - I - 0x0113D7 04:93C7: 13        .byte $13   ; 
- D 0 - I - 0x0113D8 04:93C8: 14        .byte $14   ; 
- D 0 - I - 0x0113D9 04:93C9: 12        .byte $12   ; 
- D 0 - I - 0x0113DA 04:93CA: 22        .byte $22   ; 
- D 0 - I - 0x0113DB 04:93CB: 32        .byte $32   ; 
- D 0 - I - 0x0113DC 04:93CC: 10        .byte $10   ; 
- D 0 - I - 0x0113DD 04:93CD: 11        .byte $11   ; 
- D 0 - I - 0x0113DE 04:93CE: 20        .byte $20   ; 
- D 0 - I - 0x0113DF 04:93CF: 21        .byte $21   ; 
off_93D0_00:
- D 0 - I - 0x0113E0 04:93D0: 00        .byte $00   ; 
- D 0 - I - 0x0113E1 04:93D1: 01        .byte $01   ; 
- D 0 - I - 0x0113E2 04:93D2: 13        .byte $13   ; 
- D 0 - I - 0x0113E3 04:93D3: 14        .byte $14   ; 
- D 0 - I - 0x0113E4 04:93D4: 23        .byte $23   ; 
- D 0 - I - 0x0113E5 04:93D5: 24        .byte $24   ; 
- D 0 - I - 0x0113E6 04:93D6: 33        .byte $33   ; 
- D 0 - I - 0x0113E7 04:93D7: 34        .byte $34   ; 
- D 0 - I - 0x0113E8 04:93D8: 12        .byte $12   ; 
- D 0 - I - 0x0113E9 04:93D9: 22        .byte $22   ; 
- D 0 - I - 0x0113EA 04:93DA: 32        .byte $32   ; 
off_93DB_00:
- D 0 - I - 0x0113EB 04:93DB: 5D        .byte $5D   ; 
- D 0 - I - 0x0113EC 04:93DC: 59        .byte $59   ; 
- D 0 - I - 0x0113ED 04:93DD: 5A        .byte $5A   ; 
- D 0 - I - 0x0113EE 04:93DE: 6B        .byte $6B   ; 
- D 0 - I - 0x0113EF 04:93DF: 6C        .byte $6C   ; 
- D 0 - I - 0x0113F0 04:93E0: 6D        .byte $6D   ; 
- D 0 - I - 0x0113F1 04:93E1: 7E        .byte $7E   ; 
- D 0 - I - 0x0113F2 04:93E2: 6F        .byte $6F   ; 
- D 0 - I - 0x0113F3 04:93E3: 7D        .byte $7D   ; 
- D 0 - I - 0x0113F4 04:93E4: 4D        .byte $4D   ; 
- D 0 - I - 0x0113F5 04:93E5: 4C        .byte $4C   ; 
off_93E6_00:
- D 0 - I - 0x0113F6 04:93E6: F0        .byte $F0   ; 
- D 0 - I - 0x0113F7 04:93E7: F1        .byte $F1   ; 
- D 0 - I - 0x0113F8 04:93E8: F2        .byte $F2   ; 
- D 0 - I - 0x0113F9 04:93E9: E5        .byte $E5   ; 
- D 0 - I - 0x0113FA 04:93EA: 00        .byte $00   ; 
- D 0 - I - 0x0113FB 04:93EB: 01        .byte $01   ; 
- D 0 - I - 0x0113FC 04:93EC: 63        .byte $63   ; 
- D 0 - I - 0x0113FD 04:93ED: 62        .byte $62   ; 
- D 0 - I - 0x0113FE 04:93EE: 30        .byte $30   ; 
- D 0 - I - 0x0113FF 04:93EF: 31        .byte $31   ; 
- D 0 - I - 0x011400 04:93F0: E5        .byte $E5   ; 
off_93F1_00:
- D 0 - I - 0x011401 04:93F1: 09        .byte $09   ; 
- D 0 - I - 0x011402 04:93F2: 0A        .byte $0A   ; 
- D 0 - I - 0x011403 04:93F3: 38        .byte $38   ; 
- D 0 - I - 0x011404 04:93F4: 39        .byte $39   ; 
- D 0 - I - 0x011405 04:93F5: 28        .byte $28   ; 
- D 0 - I - 0x011406 04:93F6: 19        .byte $19   ; 
- D 0 - I - 0x011407 04:93F7: 1A        .byte $1A   ; 
- D 0 - I - 0x011408 04:93F8: 00        .byte $00   ; 
- D 0 - I - 0x011409 04:93F9: 01        .byte $01   ; 
- D 0 - I - 0x01140A 04:93FA: 5E        .byte $5E   ; 
- D 0 - I - 0x01140B 04:93FB: 5F        .byte $5F   ; 
off_93FC_00:
- D 0 - I - 0x01140C 04:93FC: 6B        .byte $6B   ; 
- D 0 - I - 0x01140D 04:93FD: 6C        .byte $6C   ; 
- D 0 - I - 0x01140E 04:93FE: 6D        .byte $6D   ; 
- D 0 - I - 0x01140F 04:93FF: 7B        .byte $7B   ; 
- D 0 - I - 0x011410 04:9400: 7C        .byte $7C   ; 
- D 0 - I - 0x011411 04:9401: 7D        .byte $7D   ; 
- D 0 - I - 0x011412 04:9402: 59        .byte $59   ; 
- D 0 - I - 0x011413 04:9403: 5A        .byte $5A   ; 
- D 0 - I - 0x011414 04:9404: 5D        .byte $5D   ; 
- D 0 - I - 0x011415 04:9405: 76        .byte $76   ; 
- D 0 - I - 0x011416 04:9406: 6E        .byte $6E   ; 
off_9407_00:
- D 0 - I - 0x011417 04:9407: 4A        .byte $4A   ; 
- D 0 - I - 0x011418 04:9408: 65        .byte $65   ; 
- D 0 - I - 0x011419 04:9409: 66        .byte $66   ; 
- D 0 - I - 0x01141A 04:940A: 16        .byte $16   ; 
- D 0 - I - 0x01141B 04:940B: C7        .byte $C7   ; 
- D 0 - I - 0x01141C 04:940C: C8        .byte $C8   ; 
- D 0 - I - 0x01141D 04:940D: D7        .byte $D7   ; 
- D 0 - I - 0x01141E 04:940E: D8        .byte $D8   ; 
- D 0 - I - 0x01141F 04:940F: C9        .byte $C9   ; 
- D 0 - I - 0x011420 04:9410: D2        .byte $D2   ; 
- D 0 - I - 0x011421 04:9411: 5A        .byte $5A   ; 
off_9412_00:
- D 0 - I - 0x011422 04:9412: 72        .byte $72   ; 
- D 0 - I - 0x011423 04:9413: 73        .byte $73   ; 
- D 0 - I - 0x011424 04:9414: 70        .byte $70   ; 
- D 0 - I - 0x011425 04:9415: 71        .byte $71   ; 
- D 0 - I - 0x011426 04:9416: 69        .byte $69   ; 
- D 0 - I - 0x011427 04:9417: 6A        .byte $6A   ; 
- D 0 - I - 0x011428 04:9418: 7A        .byte $7A   ; 
- D 0 - I - 0x011429 04:9419: 5B        .byte $5B   ; 
- D 0 - I - 0x01142A 04:941A: 5B        .byte $5B   ; 
- D 0 - I - 0x01142B 04:941B: 6B        .byte $6B   ; 
- D 0 - I - 0x01142C 04:941C: 7B        .byte $7B   ; 
off_941D_00:
- D 0 - I - 0x01142D 04:941D: 55        .byte $55   ; 
- D 0 - I - 0x01142E 04:941E: 56        .byte $56   ; 
- D 0 - I - 0x01142F 04:941F: 57        .byte $57   ; 
- D 0 - I - 0x011430 04:9420: 65        .byte $65   ; 
- D 0 - I - 0x011431 04:9421: 66        .byte $66   ; 
- D 0 - I - 0x011432 04:9422: 67        .byte $67   ; 
- D 0 - I - 0x011433 04:9423: 74        .byte $74   ; 
- D 0 - I - 0x011434 04:9424: 75        .byte $75   ; 
- D 0 - I - 0x011435 04:9425: 76        .byte $76   ; 
- D 0 - I - 0x011436 04:9426: 54        .byte $54   ; 
- D 0 - I - 0x011437 04:9427: 77        .byte $77   ; 
off_9428_00:
- D 0 - I - 0x011438 04:9428: E2        .byte $E2   ; 
- D 0 - I - 0x011439 04:9429: 01        .byte $01   ; 
- D 0 - I - 0x01143A 04:942A: F5        .byte $F5   ; 
- D 0 - I - 0x01143B 04:942B: F6        .byte $F6   ; 
- D 0 - I - 0x01143C 04:942C: F7        .byte $F7   ; 
- D 0 - I - 0x01143D 04:942D: 63        .byte $63   ; 
- D 0 - I - 0x01143E 04:942E: 62        .byte $62   ; 
- D 0 - I - 0x01143F 04:942F: 30        .byte $30   ; 
- D 0 - I - 0x011440 04:9430: 31        .byte $31   ; 
- D 0 - I - 0x011441 04:9431: C6        .byte $C6   ; 
- D 0 - I - 0x011442 04:9432: 00        .byte $00   ; 
off_9433_00:
- D 0 - I - 0x011443 04:9433: B3        .byte $B3   ; 
- D 0 - I - 0x011444 04:9434: E0        .byte $E0   ; 
- D 0 - I - 0x011445 04:9435: E1        .byte $E1   ; 
- D 0 - I - 0x011446 04:9436: C0        .byte $C0   ; 
- D 0 - I - 0x011447 04:9437: C1        .byte $C1   ; 
- D 0 - I - 0x011448 04:9438: C2        .byte $C2   ; 
- D 0 - I - 0x011449 04:9439: D0        .byte $D0   ; 
- D 0 - I - 0x01144A 04:943A: D1        .byte $D1   ; 
- D 0 - I - 0x01144B 04:943B: D2        .byte $D2   ; 
- D 0 - I - 0x01144C 04:943C: B3        .byte $B3   ; 
- D 0 - I - 0x01144D 04:943D: 2C        .byte $2C   ; 
off_943E_00:
- D 0 - I - 0x01144E 04:943E: D6        .byte $D6   ; 
- D 0 - I - 0x01144F 04:943F: D7        .byte $D7   ; 
- D 0 - I - 0x011450 04:9440: D8        .byte $D8   ; 
- D 0 - I - 0x011451 04:9441: E6        .byte $E6   ; 
- D 0 - I - 0x011452 04:9442: E7        .byte $E7   ; 
- D 0 - I - 0x011453 04:9443: E8        .byte $E8   ; 
- D 0 - I - 0x011454 04:9444: F8        .byte $F8   ; 
- D 0 - I - 0x011455 04:9445: B3        .byte $B3   ; 
- D 0 - I - 0x011456 04:9446: C7        .byte $C7   ; 
- D 0 - I - 0x011457 04:9447: C8        .byte $C8   ; 
- D 0 - I - 0x011458 04:9448: 2C        .byte $2C   ; 
off_9449_00:
- D 0 - I - 0x011459 04:9449: 4B        .byte $4B   ; 
- D 0 - I - 0x01145A 04:944A: 44        .byte $44   ; 
- D 0 - I - 0x01145B 04:944B: 45        .byte $45   ; 
- D 0 - I - 0x01145C 04:944C: 46        .byte $46   ; 
- D 0 - I - 0x01145D 04:944D: 54        .byte $54   ; 
- D 0 - I - 0x01145E 04:944E: 55        .byte $55   ; 
- D 0 - I - 0x01145F 04:944F: 56        .byte $56   ; 
- D 0 - I - 0x011460 04:9450: 64        .byte $64   ; 
- D 0 - I - 0x011461 04:9451: 74        .byte $74   ; 
- D 0 - I - 0x011462 04:9452: 64        .byte $64   ; 
- D 0 - I - 0x011463 04:9453: 74        .byte $74   ; 
off_9454_00:
- D 0 - I - 0x011464 04:9454: 16        .byte $16   ; 
- D 0 - I - 0x011465 04:9455: 77        .byte $77   ; 
- D 0 - I - 0x011466 04:9456: 96        .byte $96   ; 
- D 0 - I - 0x011467 04:9457: 00        .byte $00   ; 
- D 0 - I - 0x011468 04:9458: 4A        .byte $4A   ; 
- D 0 - I - 0x011469 04:9459: 5A        .byte $5A   ; 
- D 0 - I - 0x01146A 04:945A: 32        .byte $32   ; 
- D 0 - I - 0x01146B 04:945B: 33        .byte $33   ; 
- D 0 - I - 0x01146C 04:945C: 06        .byte $06   ; 
- D 0 - I - 0x01146D 04:945D: 66        .byte $66   ; 
- D 0 - I - 0x01146E 04:945E: 65        .byte $65   ; 
off_945F_00:
- D 0 - I - 0x01146F 04:945F: 4B        .byte $4B   ; 
- D 0 - I - 0x011470 04:9460: 46        .byte $46   ; 
- D 0 - I - 0x011471 04:9461: 56        .byte $56   ; 
- D 0 - I - 0x011472 04:9462: 45        .byte $45   ; 
- D 0 - I - 0x011473 04:9463: 55        .byte $55   ; 
- D 0 - I - 0x011474 04:9464: 44        .byte $44   ; 
- D 0 - I - 0x011475 04:9465: 54        .byte $54   ; 
- D 0 - I - 0x011476 04:9466: 64        .byte $64   ; 
- D 0 - I - 0x011477 04:9467: 74        .byte $74   ; 
- D 0 - I - 0x011478 04:9468: 64        .byte $64   ; 
- D 0 - I - 0x011479 04:9469: 74        .byte $74   ; 
off_946A_00:
- D 0 - I - 0x01147A 04:946A: 00        .byte $00   ; 
- D 0 - I - 0x01147B 04:946B: 01        .byte $01   ; 
- D 0 - I - 0x01147C 04:946C: 45        .byte $45   ; 
- D 0 - I - 0x01147D 04:946D: 46        .byte $46   ; 
- D 0 - I - 0x01147E 04:946E: 47        .byte $47   ; 
- D 0 - I - 0x01147F 04:946F: 55        .byte $55   ; 
- D 0 - I - 0x011480 04:9470: 56        .byte $56   ; 
- D 0 - I - 0x011481 04:9471: 57        .byte $57   ; 
- D 0 - I - 0x011482 04:9472: 91        .byte $91   ; 
- D 0 - I - 0x011483 04:9473: 60        .byte $60   ; 
- D 0 - I - 0x011484 04:9474: 64        .byte $64   ; 
off_9475_00:
- D 0 - I - 0x011485 04:9475: 43        .byte $43   ; 
- D 0 - I - 0x011486 04:9476: 44        .byte $44   ; 
- D 0 - I - 0x011487 04:9477: 53        .byte $53   ; 
- D 0 - I - 0x011488 04:9478: 54        .byte $54   ; 
- D 0 - I - 0x011489 04:9479: 41        .byte $41   ; 
- D 0 - I - 0x01148A 04:947A: 64        .byte $64   ; 
- D 0 - I - 0x01148B 04:947B: 64        .byte $64   ; 
- D 0 - I - 0x01148C 04:947C: 70        .byte $70   ; 
- D 0 - I - 0x01148D 04:947D: 71        .byte $71   ; 
- D 0 - I - 0x01148E 04:947E: 72        .byte $72   ; 
- D 0 - I - 0x01148F 04:947F: 41        .byte $41   ; 
off_9480_00:
- D 0 - I - 0x011490 04:9480: 7B        .byte $7B   ; 
- D 0 - I - 0x011491 04:9481: 7C        .byte $7C   ; 
- D 0 - I - 0x011492 04:9482: 60        .byte $60   ; 
- D 0 - I - 0x011493 04:9483: 60        .byte $60   ; 
- D 0 - I - 0x011494 04:9484: 70        .byte $70   ; 
- D 0 - I - 0x011495 04:9485: 61        .byte $61   ; 
- D 0 - I - 0x011496 04:9486: 71        .byte $71   ; 
- D 0 - I - 0x011497 04:9487: 6B        .byte $6B   ; 
- D 0 - I - 0x011498 04:9488: 6C        .byte $6C   ; 
- D 0 - I - 0x011499 04:9489: 4D        .byte $4D   ; 
- D 0 - I - 0x01149A 04:948A: 4D        .byte $4D   ; 
off_948B_00:
- D 0 - I - 0x01149B 04:948B: 31        .byte $31   ; 
- D 0 - I - 0x01149C 04:948C: 30        .byte $30   ; 
- D 0 - I - 0x01149D 04:948D: 21        .byte $21   ; 
- D 0 - I - 0x01149E 04:948E: 22        .byte $22   ; 
- D 0 - I - 0x01149F 04:948F: 11        .byte $11   ; 
- D 0 - I - 0x0114A0 04:9490: 12        .byte $12   ; 
- D 0 - I - 0x0114A1 04:9491: 20        .byte $20   ; 
- D 0 - I - 0x0114A2 04:9492: 50        .byte $50   ; 
- D 0 - I - 0x0114A3 04:9493: 51        .byte $51   ; 
- D 0 - I - 0x0114A4 04:9494: 52        .byte $52   ; 
- D 0 - I - 0x0114A5 04:9495: 72        .byte $72   ; 
off_9496_00:
- D 0 - I - 0x0114A6 04:9496: 32        .byte $32   ; 
- D 0 - I - 0x0114A7 04:9497: 12        .byte $12   ; 
- D 0 - I - 0x0114A8 04:9498: 21        .byte $21   ; 
- D 0 - I - 0x0114A9 04:9499: 22        .byte $22   ; 
- D 0 - I - 0x0114AA 04:949A: 30        .byte $30   ; 
- D 0 - I - 0x0114AB 04:949B: 31        .byte $31   ; 
- D 0 - I - 0x0114AC 04:949C: 27        .byte $27   ; 
- D 0 - I - 0x0114AD 04:949D: 10        .byte $10   ; 
- D 0 - I - 0x0114AE 04:949E: 11        .byte $11   ; 
- D 0 - I - 0x0114AF 04:949F: 64        .byte $64   ; 
- D 0 - I - 0x0114B0 04:94A0: 4E        .byte $4E   ; 
off_94A1_00:
- D 0 - I - 0x0114B1 04:94A1: 46        .byte $46   ; 
- D 0 - I - 0x0114B2 04:94A2: 55        .byte $55   ; 
- D 0 - I - 0x0114B3 04:94A3: 56        .byte $56   ; 
- D 0 - I - 0x0114B4 04:94A4: 57        .byte $57   ; 
- D 0 - I - 0x0114B5 04:94A5: 67        .byte $67   ; 
- D 0 - I - 0x0114B6 04:94A6: 30        .byte $30   ; 
- D 0 - I - 0x0114B7 04:94A7: 31        .byte $31   ; 
- D 0 - I - 0x0114B8 04:94A8: 78        .byte $78   ; 
- D 0 - I - 0x0114B9 04:94A9: 5D        .byte $5D   ; 
- D 0 - I - 0x0114BA 04:94AA: 5E        .byte $5E   ; 
- D 0 - I - 0x0114BB 04:94AB: 4F        .byte $4F   ; 
off_94AC_00:
- D 0 - I - 0x0114BC 04:94AC: 0B        .byte $0B   ; 
- D 0 - I - 0x0114BD 04:94AD: 0C        .byte $0C   ; 
- D 0 - I - 0x0114BE 04:94AE: 1B        .byte $1B   ; 
- D 0 - I - 0x0114BF 04:94AF: 1C        .byte $1C   ; 
- D 0 - I - 0x0114C0 04:94B0: 18        .byte $18   ; 
- D 0 - I - 0x0114C1 04:94B1: 19        .byte $19   ; 
- D 0 - I - 0x0114C2 04:94B2: 1A        .byte $1A   ; 
- D 0 - I - 0x0114C3 04:94B3: 08        .byte $08   ; 
- D 0 - I - 0x0114C4 04:94B4: 00        .byte $00   ; 
- D 0 - I - 0x0114C5 04:94B5: 01        .byte $01   ; 
- D 0 - I - 0x0114C6 04:94B6: 0A        .byte $0A   ; 
off_94B7_00:
- D 0 - I - 0x0114C7 04:94B7: 1B        .byte $1B   ; 
- D 0 - I - 0x0114C8 04:94B8: 03        .byte $03   ; 
- D 0 - I - 0x0114C9 04:94B9: 02        .byte $02   ; 
- D 0 - I - 0x0114CA 04:94BA: 60        .byte $60   ; 
- D 0 - I - 0x0114CB 04:94BB: 1C        .byte $1C   ; 
- D 0 - I - 0x0114CC 04:94BC: 0C        .byte $0C   ; 
- D 0 - I - 0x0114CD 04:94BD: 2A        .byte $2A   ; 
- D 0 - I - 0x0114CE 04:94BE: 1A        .byte $1A   ; 
- D 0 - I - 0x0114CF 04:94BF: 95        .byte $95   ; 
- D 0 - I - 0x0114D0 04:94C0: A6        .byte $A6   ; 
off_94C1_00:
- D 0 - I - 0x0114D1 04:94C1: 4B        .byte $4B   ; 
- D 0 - I - 0x0114D2 04:94C2: 4C        .byte $4C   ; 
- D 0 - I - 0x0114D3 04:94C3: 5B        .byte $5B   ; 
- D 0 - I - 0x0114D4 04:94C4: 5C        .byte $5C   ; 
- D 0 - I - 0x0114D5 04:94C5: 58        .byte $58   ; 
- D 0 - I - 0x0114D6 04:94C6: 59        .byte $59   ; 
- D 0 - I - 0x0114D7 04:94C7: 68        .byte $68   ; 
- D 0 - I - 0x0114D8 04:94C8: 69        .byte $69   ; 
- D 0 - I - 0x0114D9 04:94C9: 6A        .byte $6A   ; 
- D 0 - I - 0x0114DA 04:94CA: 7D        .byte $7D   ; 
off_94CB_00:
- D 0 - I - 0x0114DB 04:94CB: 50        .byte $50   ; 
- D 0 - I - 0x0114DC 04:94CC: 51        .byte $51   ; 
- D 0 - I - 0x0114DD 04:94CD: 11        .byte $11   ; 
- D 0 - I - 0x0114DE 04:94CE: 12        .byte $12   ; 
- D 0 - I - 0x0114DF 04:94CF: 20        .byte $20   ; 
- D 0 - I - 0x0114E0 04:94D0: 21        .byte $21   ; 
- D 0 - I - 0x0114E1 04:94D1: 22        .byte $22   ; 
- D 0 - I - 0x0114E2 04:94D2: 30        .byte $30   ; 
- D 0 - I - 0x0114E3 04:94D3: 31        .byte $31   ; 
- D 0 - I - 0x0114E4 04:94D4: 52        .byte $52   ; 
off_94D5_00:
- D 0 - I - 0x0114E5 04:94D5: 44        .byte $44   ; 
- D 0 - I - 0x0114E6 04:94D6: 53        .byte $53   ; 
- D 0 - I - 0x0114E7 04:94D7: 54        .byte $54   ; 
- D 0 - I - 0x0114E8 04:94D8: 60        .byte $60   ; 
- D 0 - I - 0x0114E9 04:94D9: 95        .byte $95   ; 
- D 0 - I - 0x0114EA 04:94DA: 43        .byte $43   ; 
- D 0 - I - 0x0114EB 04:94DB: 02        .byte $02   ; 
- D 0 - I - 0x0114EC 04:94DC: 03        .byte $03   ; 
- D 0 - I - 0x0114ED 04:94DD: 36        .byte $36   ; 
- D 0 - I - 0x0114EE 04:94DE: A2        .byte $A2   ; 
off_94DF_00:
- D 0 - I - 0x0114EF 04:94DF: 44        .byte $44   ; 
- D 0 - I - 0x0114F0 04:94E0: 54        .byte $54   ; 
- D 0 - I - 0x0114F1 04:94E1: 64        .byte $64   ; 
- D 0 - I - 0x0114F2 04:94E2: 60        .byte $60   ; 
- D 0 - I - 0x0114F3 04:94E3: 02        .byte $02   ; 
- D 0 - I - 0x0114F4 04:94E4: 03        .byte $03   ; 
- D 0 - I - 0x0114F5 04:94E5: 43        .byte $43   ; 
- D 0 - I - 0x0114F6 04:94E6: 53        .byte $53   ; 
- D 0 - I - 0x0114F7 04:94E7: 36        .byte $36   ; 
- D 0 - I - 0x0114F8 04:94E8: A2        .byte $A2   ; 
off_94E9_00:
- D 0 - I - 0x0114F9 04:94E9: C8        .byte $C8   ; 
- D 0 - I - 0x0114FA 04:94EA: C9        .byte $C9   ; 
- D 0 - I - 0x0114FB 04:94EB: E5        .byte $E5   ; 
- D 0 - I - 0x0114FC 04:94EC: D8        .byte $D8   ; 
- D 0 - I - 0x0114FD 04:94ED: D9        .byte $D9   ; 
- D 0 - I - 0x0114FE 04:94EE: DA        .byte $DA   ; 
- D 0 - I - 0x0114FF 04:94EF: 04        .byte $04   ; 
- D 0 - I - 0x011500 04:94F0: 05        .byte $05   ; 
- D 0 - I - 0x011501 04:94F1: C7        .byte $C7   ; 
- D 0 - I - 0x011502 04:94F2: E6        .byte $E6   ; 
off_94F3_00:
- D 0 - I - 0x011503 04:94F3: 63        .byte $63   ; 
- D 0 - I - 0x011504 04:94F4: 30        .byte $30   ; 
- D 0 - I - 0x011505 04:94F5: 31        .byte $31   ; 
- D 0 - I - 0x011506 04:94F6: C0        .byte $C0   ; 
- D 0 - I - 0x011507 04:94F7: C1        .byte $C1   ; 
- D 0 - I - 0x011508 04:94F8: C2        .byte $C2   ; 
- D 0 - I - 0x011509 04:94F9: D0        .byte $D0   ; 
- D 0 - I - 0x01150A 04:94FA: D1        .byte $D1   ; 
- D 0 - I - 0x01150B 04:94FB: D2        .byte $D2   ; 
- D 0 - I - 0x01150C 04:94FC: 62        .byte $62   ; 
off_94FD_00:
- D 0 - I - 0x01150D 04:94FD: 63        .byte $63   ; 
- D 0 - I - 0x01150E 04:94FE: 30        .byte $30   ; 
- D 0 - I - 0x01150F 04:94FF: 31        .byte $31   ; 
- D 0 - I - 0x011510 04:9500: C7        .byte $C7   ; 
- D 0 - I - 0x011511 04:9501: C8        .byte $C8   ; 
- D 0 - I - 0x011512 04:9502: D7        .byte $D7   ; 
- D 0 - I - 0x011513 04:9503: D8        .byte $D8   ; 
- D 0 - I - 0x011514 04:9504: C9        .byte $C9   ; 
- D 0 - I - 0x011515 04:9505: D2        .byte $D2   ; 
- D 0 - I - 0x011516 04:9506: 62        .byte $62   ; 
off_9507_00:
- D 0 - I - 0x011517 04:9507: 19        .byte $19   ; 
- D 0 - I - 0x011518 04:9508: 1A        .byte $1A   ; 
- D 0 - I - 0x011519 04:9509: 1B        .byte $1B   ; 
- D 0 - I - 0x01151A 04:950A: 28        .byte $28   ; 
- D 0 - I - 0x01151B 04:950B: 39        .byte $39   ; 
- D 0 - I - 0x01151C 04:950C: 3A        .byte $3A   ; 
- D 0 - I - 0x01151D 04:950D: 29        .byte $29   ; 
- D 0 - I - 0x01151E 04:950E: 2A        .byte $2A   ; 
off_950F_00:
- D 0 - I - 0x01151F 04:950F: 02        .byte $02   ; 
- D 0 - I - 0x011520 04:9510: 03        .byte $03   ; 
- D 0 - I - 0x011521 04:9511: 1A        .byte $1A   ; 
- D 0 - I - 0x011522 04:9512: 1B        .byte $1B   ; 
- D 0 - I - 0x011523 04:9513: 80        .byte $80   ; 
- D 0 - I - 0x011524 04:9514: 91        .byte $91   ; 
- D 0 - I - 0x011525 04:9515: 61        .byte $61   ; 
- D 0 - I - 0x011526 04:9516: 60        .byte $60   ; 
- D 0 - I - 0x011527 04:9517: 92        .byte $92   ; 
- D 0 - I - 0x011528 04:9518: A6        .byte $A6   ; 
off_9519_00:
- D 0 - I - 0x011529 04:9519: 30        .byte $30   ; 
- D 0 - I - 0x01152A 04:951A: 31        .byte $31   ; 
- D 0 - I - 0x01152B 04:951B: D6        .byte $D6   ; 
- D 0 - I - 0x01152C 04:951C: D9        .byte $D9   ; 
- D 0 - I - 0x01152D 04:951D: DA        .byte $DA   ; 
- D 0 - I - 0x01152E 04:951E: FA        .byte $FA   ; 
- D 0 - I - 0x01152F 04:951F: FB        .byte $FB   ; 
- D 0 - I - 0x011530 04:9520: FC        .byte $FC   ; 
- D 0 - I - 0x011531 04:9521: E0        .byte $E0   ; 
- D 0 - I - 0x011532 04:9522: E1        .byte $E1   ; 
off_9523_00:
- D 0 - I - 0x011533 04:9523: D9        .byte $D9   ; 
- D 0 - I - 0x011534 04:9524: DA        .byte $DA   ; 
- D 0 - I - 0x011535 04:9525: D6        .byte $D6   ; 
- D 0 - I - 0x011536 04:9526: FA        .byte $FA   ; 
- D 0 - I - 0x011537 04:9527: FB        .byte $FB   ; 
- D 0 - I - 0x011538 04:9528: FC        .byte $FC   ; 
- D 0 - I - 0x011539 04:9529: 30        .byte $30   ; 
- D 0 - I - 0x01153A 04:952A: 31        .byte $31   ; 
- D 0 - I - 0x01153B 04:952B: E0        .byte $E0   ; 
- D 0 - I - 0x01153C 04:952C: E1        .byte $E1   ; 
off_952D_00:
- D 0 - I - 0x01153D 04:952D: 71        .byte $71   ; 
- D 0 - I - 0x01153E 04:952E: 72        .byte $72   ; 
- D 0 - I - 0x01153F 04:952F: 77        .byte $77   ; 
- D 0 - I - 0x011540 04:9530: 62        .byte $62   ; 
- D 0 - I - 0x011541 04:9531: 63        .byte $63   ; 
- D 0 - I - 0x011542 04:9532: 96        .byte $96   ; 
- D 0 - I - 0x011543 04:9533: 00        .byte $00   ; 
- D 0 - I - 0x011544 04:9534: 32        .byte $32   ; 
- D 0 - I - 0x011545 04:9535: 33        .byte $33   ; 
- D 0 - I - 0x011546 04:9536: 06        .byte $06   ; 
off_9537_00:
- D 0 - I - 0x011547 04:9537: 70        .byte $70   ; 
- D 0 - I - 0x011548 04:9538: 95        .byte $95   ; 
- D 0 - I - 0x011549 04:9539: 77        .byte $77   ; 
- D 0 - I - 0x01154A 04:953A: 62        .byte $62   ; 
- D 0 - I - 0x01154B 04:953B: 63        .byte $63   ; 
- D 0 - I - 0x01154C 04:953C: 96        .byte $96   ; 
- D 0 - I - 0x01154D 04:953D: 33        .byte $33   ; 
- D 0 - I - 0x01154E 04:953E: 32        .byte $32   ; 
- D 0 - I - 0x01154F 04:953F: 06        .byte $06   ; 
- D 0 - I - 0x011550 04:9540: 00        .byte $00   ; 
off_9541_00:
- D 0 - I - 0x011551 04:9541: 19        .byte $19   ; 
- D 0 - I - 0x011552 04:9542: 1A        .byte $1A   ; 
- D 0 - I - 0x011553 04:9543: 1B        .byte $1B   ; 
- D 0 - I - 0x011554 04:9544: 28        .byte $28   ; 
- D 0 - I - 0x011555 04:9545: 29        .byte $29   ; 
- D 0 - I - 0x011556 04:9546: 2A        .byte $2A   ; 
- D 0 - I - 0x011557 04:9547: 39        .byte $39   ; 
- D 0 - I - 0x011558 04:9548: 3A        .byte $3A   ; 
- D 0 - I - 0x011559 04:9549: 02        .byte $02   ; 
- D 0 - I - 0x01155A 04:954A: 03        .byte $03   ; 
off_954B_00:
- D 0 - I - 0x01155B 04:954B: 21        .byte $21   ; 
- D 0 - I - 0x01155C 04:954C: 22        .byte $22   ; 
- D 0 - I - 0x01155D 04:954D: 27        .byte $27   ; 
- D 0 - I - 0x01155E 04:954E: 08        .byte $08   ; 
- D 0 - I - 0x01155F 04:954F: 06        .byte $06   ; 
- D 0 - I - 0x011560 04:9550: 07        .byte $07   ; 
- D 0 - I - 0x011561 04:9551: 30        .byte $30   ; 
- D 0 - I - 0x011562 04:9552: 31        .byte $31   ; 
- D 0 - I - 0x011563 04:9553: 04        .byte $04   ; 
- D 0 - I - 0x011564 04:9554: 05        .byte $05   ; 
off_9555_00:
- D 0 - I - 0x011565 04:9555: 12        .byte $12   ; 
- D 0 - I - 0x011566 04:9556: 21        .byte $21   ; 
- D 0 - I - 0x011567 04:9557: 22        .byte $22   ; 
- D 0 - I - 0x011568 04:9558: 17        .byte $17   ; 
- D 0 - I - 0x011569 04:9559: 18        .byte $18   ; 
- D 0 - I - 0x01156A 04:955A: 27        .byte $27   ; 
- D 0 - I - 0x01156B 04:955B: 30        .byte $30   ; 
- D 0 - I - 0x01156C 04:955C: 31        .byte $31   ; 
- D 0 - I - 0x01156D 04:955D: 00        .byte $00   ; 
- D 0 - I - 0x01156E 04:955E: 01        .byte $01   ; 
off_955F_00:
- D 0 - I - 0x01156F 04:955F: E5        .byte $E5   ; 
- D 0 - I - 0x011570 04:9560: E6        .byte $E6   ; 
- D 0 - I - 0x011571 04:9561: 77        .byte $77   ; 
- D 0 - I - 0x011572 04:9562: 62        .byte $62   ; 
- D 0 - I - 0x011573 04:9563: 63        .byte $63   ; 
- D 0 - I - 0x011574 04:9564: 32        .byte $32   ; 
- D 0 - I - 0x011575 04:9565: 33        .byte $33   ; 
- D 0 - I - 0x011576 04:9566: C6        .byte $C6   ; 
- D 0 - I - 0x011577 04:9567: D6        .byte $D6   ; 
- D 0 - I - 0x011578 04:9568: 32        .byte $32   ; 
off_9569_00:
- D 0 - I - 0x011579 04:9569: 21        .byte $21   ; 
- D 0 - I - 0x01157A 04:956A: 22        .byte $22   ; 
- D 0 - I - 0x01157B 04:956B: 06        .byte $06   ; 
- D 0 - I - 0x01157C 04:956C: 07        .byte $07   ; 
- D 0 - I - 0x01157D 04:956D: 30        .byte $30   ; 
- D 0 - I - 0x01157E 04:956E: 31        .byte $31   ; 
- D 0 - I - 0x01157F 04:956F: 04        .byte $04   ; 
- D 0 - I - 0x011580 04:9570: 05        .byte $05   ; 
- D 0 - I - 0x011581 04:9571: 38        .byte $38   ; 
- D 0 - I - 0x011582 04:9572: 2B        .byte $2B   ; 
off_9573_00:
- D 0 - I - 0x011583 04:9573: 03        .byte $03   ; 
- D 0 - I - 0x011584 04:9574: 0B        .byte $0B   ; 
- D 0 - I - 0x011585 04:9575: 0C        .byte $0C   ; 
- D 0 - I - 0x011586 04:9576: 1B        .byte $1B   ; 
- D 0 - I - 0x011587 04:9577: 1C        .byte $1C   ; 
- D 0 - I - 0x011588 04:9578: 5E        .byte $5E   ; 
- D 0 - I - 0x011589 04:9579: 5F        .byte $5F   ; 
- D 0 - I - 0x01158A 04:957A: 02        .byte $02   ; 
- D 0 - I - 0x01158B 04:957B: 08        .byte $08   ; 
- D 0 - I - 0x01158C 04:957C: 18        .byte $18   ; 
off_957D_00:
- D 0 - I - 0x01158D 04:957D: 90        .byte $90   ; 
- D 0 - I - 0x01158E 04:957E: 91        .byte $91   ; 
- D 0 - I - 0x01158F 04:957F: A0        .byte $A0   ; 
off_9580_00:
- D 0 - I - 0x011590 04:9580: A1        .byte $A1   ; 
- D 0 - I - 0x011591 04:9581: 92        .byte $92   ; 
- D 0 - I - 0x011592 04:9582: A2        .byte $A2   ; 
- D 0 - I - 0x011593 04:9583: B0        .byte $B0   ; 
- D 0 - I - 0x011594 04:9584: B3        .byte $B3   ; 
- D 0 - I - 0x011595 04:9585: 80        .byte $80   ; 
- D 0 - I - 0x011596 04:9586: 81        .byte $81   ; 
off_9587_00:
- D 0 - I - 0x011597 04:9587: 03        .byte $03   ; 
- D 0 - I - 0x011598 04:9588: 0B        .byte $0B   ; 
- D 0 - I - 0x011599 04:9589: 0C        .byte $0C   ; 
- D 0 - I - 0x01159A 04:958A: 1C        .byte $1C   ; 
- D 0 - I - 0x01159B 04:958B: 02        .byte $02   ; 
- D 0 - I - 0x01159C 04:958C: 30        .byte $30   ; 
- D 0 - I - 0x01159D 04:958D: 31        .byte $31   ; 
- D 0 - I - 0x01159E 04:958E: 1B        .byte $1B   ; 
- D 0 - I - 0x01159F 04:958F: 46        .byte $46   ; 
- D 0 - I - 0x0115A0 04:9590: 56        .byte $56   ; 
off_9591_00:
- D 0 - I - 0x0115A1 04:9591: 14        .byte $14   ; 
- D 0 - I - 0x0115A2 04:9592: 24        .byte $24   ; 
- D 0 - I - 0x0115A3 04:9593: 25        .byte $25   ; 
- D 0 - I - 0x0115A4 04:9594: 26        .byte $26   ; 
- D 0 - I - 0x0115A5 04:9595: 00        .byte $00   ; 
- D 0 - I - 0x0115A6 04:9596: 01        .byte $01   ; 
- D 0 - I - 0x0115A7 04:9597: 15        .byte $15   ; 
- D 0 - I - 0x0115A8 04:9598: 11        .byte $11   ; 
- D 0 - I - 0x0115A9 04:9599: 95        .byte $95   ; 
- D 0 - I - 0x0115AA 04:959A: 34        .byte $34   ; 
off_959B_00:
- D 0 - I - 0x0115AB 04:959B: 03        .byte $03   ; 
- D 0 - I - 0x0115AC 04:959C: 0B        .byte $0B   ; 
- D 0 - I - 0x0115AD 04:959D: 0C        .byte $0C   ; 
- D 0 - I - 0x0115AE 04:959E: 1C        .byte $1C   ; 
- D 0 - I - 0x0115AF 04:959F: 02        .byte $02   ; 
- D 0 - I - 0x0115B0 04:95A0: 1B        .byte $1B   ; 
- D 0 - I - 0x0115B1 04:95A1: 5E        .byte $5E   ; 
- D 0 - I - 0x0115B2 04:95A2: 5F        .byte $5F   ; 
- D 0 - I - 0x0115B3 04:95A3: 46        .byte $46   ; 
- D 0 - I - 0x0115B4 04:95A4: 56        .byte $56   ; 
off_95A5_00:
- D 0 - I - 0x0115B5 04:95A5: 00        .byte $00   ; 
- D 0 - I - 0x0115B6 04:95A6: 01        .byte $01   ; 
- D 0 - I - 0x0115B7 04:95A7: 10        .byte $10   ; 
- D 0 - I - 0x0115B8 04:95A8: 11        .byte $11   ; 
- D 0 - I - 0x0115B9 04:95A9: 12        .byte $12   ; 
- D 0 - I - 0x0115BA 04:95AA: 20        .byte $20   ; 
- D 0 - I - 0x0115BB 04:95AB: 21        .byte $21   ; 
- D 0 - I - 0x0115BC 04:95AC: 22        .byte $22   ; 
- D 0 - I - 0x0115BD 04:95AD: 30        .byte $30   ; 
- D 0 - I - 0x0115BE 04:95AE: 31        .byte $31   ; 
off_95AF_00:
- D 0 - I - 0x0115BF 04:95AF: 86        .byte $86   ; 
- D 0 - I - 0x0115C0 04:95B0: 87        .byte $87   ; 
- D 0 - I - 0x0115C1 04:95B1: 88        .byte $88   ; 
- D 0 - I - 0x0115C2 04:95B2: 96        .byte $96   ; 
- D 0 - I - 0x0115C3 04:95B3: 97        .byte $97   ; 
- D 0 - I - 0x0115C4 04:95B4: 98        .byte $98   ; 
- D 0 - I - 0x0115C5 04:95B5: 82        .byte $82   ; 
- D 0 - I - 0x0115C6 04:95B6: 83        .byte $83   ; 
- D 0 - I - 0x0115C7 04:95B7: B3        .byte $B3   ; 
- D 0 - I - 0x0115C8 04:95B8: B3        .byte $B3   ; 
off_95B9_00:
- D 0 - I - 0x0115C9 04:95B9: 02        .byte $02   ; 
- D 0 - I - 0x0115CA 04:95BA: 03        .byte $03   ; 
- D 0 - I - 0x0115CB 04:95BB: 0B        .byte $0B   ; 
- D 0 - I - 0x0115CC 04:95BC: 28        .byte $28   ; 
- D 0 - I - 0x0115CD 04:95BD: 11        .byte $11   ; 
- D 0 - I - 0x0115CE 04:95BE: 17        .byte $17   ; 
- D 0 - I - 0x0115CF 04:95BF: 26        .byte $26   ; 
- D 0 - I - 0x0115D0 04:95C0: 97        .byte $97   ; 
- D 0 - I - 0x0115D1 04:95C1: B3        .byte $B3   ; 
- D 0 - I - 0x0115D2 04:95C2: B4        .byte $B4   ; 
off_95C3_00:
- D 0 - I - 0x0115D3 04:95C3: 30        .byte $30   ; 
- D 0 - I - 0x0115D4 04:95C4: 31        .byte $31   ; 
- D 0 - I - 0x0115D5 04:95C5: 1D        .byte $1D   ; 
off_95C6_00:
- D 0 - I - 0x0115D6 04:95C6: 1E        .byte $1E   ; 
- D 0 - I - 0x0115D7 04:95C7: 1F        .byte $1F   ; 
- D 0 - I - 0x0115D8 04:95C8: 2D        .byte $2D   ; 
- D 0 - I - 0x0115D9 04:95C9: 2E        .byte $2E   ; 
- D 0 - I - 0x0115DA 04:95CA: 2F        .byte $2F   ; 
- D 0 - I - 0x0115DB 04:95CB: 00        .byte $00   ; 
- D 0 - I - 0x0115DC 04:95CC: 01        .byte $01   ; 
off_95CD_00:
- D 0 - I - 0x0115DD 04:95CD: 02        .byte $02   ; 
- D 0 - I - 0x0115DE 04:95CE: 03        .byte $03   ; 
- D 0 - I - 0x0115DF 04:95CF: 1B        .byte $1B   ; 
- D 0 - I - 0x0115E0 04:95D0: 0C        .byte $0C   ; 
- D 0 - I - 0x0115E1 04:95D1: 1C        .byte $1C   ; 
- D 0 - I - 0x0115E2 04:95D2: 1A        .byte $1A   ; 
- D 0 - I - 0x0115E3 04:95D3: 2A        .byte $2A   ; 
- D 0 - I - 0x0115E4 04:95D4: 60        .byte $60   ; 
- D 0 - I - 0x0115E5 04:95D5: 95        .byte $95   ; 
- D 0 - I - 0x0115E6 04:95D6: A6        .byte $A6   ; 
off_95D7_00:
- D 0 - I - 0x0115E7 04:95D7: 04        .byte $04   ; 
- D 0 - I - 0x0115E8 04:95D8: 05        .byte $05   ; 
- D 0 - I - 0x0115E9 04:95D9: 3A        .byte $3A   ; 
- D 0 - I - 0x0115EA 04:95DA: 3B        .byte $3B   ; 
- D 0 - I - 0x0115EB 04:95DB: 40        .byte $40   ; 
- D 0 - I - 0x0115EC 04:95DC: 41        .byte $41   ; 
- D 0 - I - 0x0115ED 04:95DD: 50        .byte $50   ; 
- D 0 - I - 0x0115EE 04:95DE: 51        .byte $51   ; 
- D 0 - I - 0x0115EF 04:95DF: 60        .byte $60   ; 
- D 0 - I - 0x0115F0 04:95E0: 61        .byte $61   ; 
off_95E1_00:
- D 0 - I - 0x0115F1 04:95E1: 4E        .byte $4E   ; 
- D 0 - I - 0x0115F2 04:95E2: 5C        .byte $5C   ; 
- D 0 - I - 0x0115F3 04:95E3: 5D        .byte $5D   ; 
- D 0 - I - 0x0115F4 04:95E4: 63        .byte $63   ; 
- D 0 - I - 0x0115F5 04:95E5: 6D        .byte $6D   ; 
- D 0 - I - 0x0115F6 04:95E6: 6E        .byte $6E   ; 
- D 0 - I - 0x0115F7 04:95E7: 00        .byte $00   ; 
- D 0 - I - 0x0115F8 04:95E8: 01        .byte $01   ; 
- D 0 - I - 0x0115F9 04:95E9: 0D        .byte $0D   ; 
- D 0 - I - 0x0115FA 04:95EA: 0E        .byte $0E   ; 
off_95EB_00:
- D 0 - I - 0x0115FB 04:95EB: 00        .byte $00   ; 
- D 0 - I - 0x0115FC 04:95EC: 01        .byte $01   ; 
- D 0 - I - 0x0115FD 04:95ED: 4C        .byte $4C   ; 
- D 0 - I - 0x0115FE 04:95EE: 4D        .byte $4D   ; 
- D 0 - I - 0x0115FF 04:95EF: 4E        .byte $4E   ; 
- D 0 - I - 0x011600 04:95F0: 6B        .byte $6B   ; 
- D 0 - I - 0x011601 04:95F1: 6C        .byte $6C   ; 
- D 0 - I - 0x011602 04:95F2: 5D        .byte $5D   ; 
- D 0 - I - 0x011603 04:95F3: 7F        .byte $7F   ; 
- D 0 - I - 0x011604 04:95F4: 7E        .byte $7E   ; 
off_95F5_00:
- D 0 - I - 0x011605 04:95F5: B3        .byte $B3   ; 
- D 0 - I - 0x011606 04:95F6: 84        .byte $84   ; 
- D 0 - I - 0x011607 04:95F7: 85        .byte $85   ; 
- D 0 - I - 0x011608 04:95F8: 93        .byte $93   ; 
- D 0 - I - 0x011609 04:95F9: 94        .byte $94   ; 
- D 0 - I - 0x01160A 04:95FA: 95        .byte $95   ; 
- D 0 - I - 0x01160B 04:95FB: A3        .byte $A3   ; 
- D 0 - I - 0x01160C 04:95FC: A4        .byte $A4   ; 
- D 0 - I - 0x01160D 04:95FD: A5        .byte $A5   ; 
- D 0 - I - 0x01160E 04:95FE: A8        .byte $A8   ; 
off_95FF_00:
- D 0 - I - 0x01160F 04:95FF: CC        .byte $CC   ; 
- D 0 - I - 0x011610 04:9600: DC        .byte $DC   ; 
- D 0 - I - 0x011611 04:9601: EC        .byte $EC   ; 
- D 0 - I - 0x011612 04:9602: DD        .byte $DD   ; 
- D 0 - I - 0x011613 04:9603: ED        .byte $ED   ; 
- D 0 - I - 0x011614 04:9604: CC        .byte $CC   ; 
- D 0 - I - 0x011615 04:9605: DC        .byte $DC   ; 
- D 0 - I - 0x011616 04:9606: EC        .byte $EC   ; 
- D 0 - I - 0x011617 04:9607: CA        .byte $CA   ; 
- D 0 - I - 0x011618 04:9608: CB        .byte $CB   ; 
off_9609_00:
- D 0 - I - 0x011619 04:9609: 43        .byte $43   ; 
- D 0 - I - 0x01161A 04:960A: 44        .byte $44   ; 
- D 0 - I - 0x01161B 04:960B: 03        .byte $03   ; 
- D 0 - I - 0x01161C 04:960C: 64        .byte $64   ; 
- D 0 - I - 0x01161D 04:960D: 60        .byte $60   ; 
- D 0 - I - 0x01161E 04:960E: 02        .byte $02   ; 
- D 0 - I - 0x01161F 04:960F: 42        .byte $42   ; 
- D 0 - I - 0x011620 04:9610: 54        .byte $54   ; 
- D 0 - I - 0x011621 04:9611: 1C        .byte $1C   ; 
- D 0 - I - 0x011622 04:9612: 53        .byte $53   ; 
off_9613_00:
- D 0 - I - 0x011623 04:9613: 30        .byte $30   ; 
- D 0 - I - 0x011624 04:9614: 31        .byte $31   ; 
- D 0 - I - 0x011625 04:9615: 77        .byte $77   ; 
- D 0 - I - 0x011626 04:9616: 62        .byte $62   ; 
- D 0 - I - 0x011627 04:9617: 63        .byte $63   ; 
- D 0 - I - 0x011628 04:9618: 33        .byte $33   ; 
- D 0 - I - 0x011629 04:9619: 32        .byte $32   ; 
- D 0 - I - 0x01162A 04:961A: 06        .byte $06   ; 
- D 0 - I - 0x01162B 04:961B: 96        .byte $96   ; 
- D 0 - I - 0x01162C 04:961C: 00        .byte $00   ; 
off_961D_00:
- D 0 - I - 0x01162D 04:961D: 02        .byte $02   ; 
- D 0 - I - 0x01162E 04:961E: 03        .byte $03   ; 
- D 0 - I - 0x01162F 04:961F: 1B        .byte $1B   ; 
- D 0 - I - 0x011630 04:9620: 13        .byte $13   ; 
- D 0 - I - 0x011631 04:9621: 1A        .byte $1A   ; 
- D 0 - I - 0x011632 04:9622: 2A        .byte $2A   ; 
- D 0 - I - 0x011633 04:9623: A6        .byte $A6   ; 
- D 0 - I - 0x011634 04:9624: 70        .byte $70   ; 
- D 0 - I - 0x011635 04:9625: 95        .byte $95   ; 
off_9626_00:
- - - - - - 0x011636 04:9626: 83        .byte $83   ; 
- - - - - - 0x011637 04:9627: 84        .byte $84   ; 
- - - - - - 0x011638 04:9628: 13        .byte $13   ; 
- - - - - - 0x011639 04:9629: 93        .byte $93   ; 
- - - - - - 0x01163A 04:962A: A8        .byte $A8   ; 
- - - - - - 0x01163B 04:962B: 34        .byte $34   ; 
- - - - - - 0x01163C 04:962C: 64        .byte $64   ; 
off_962D_00:
- D 0 - I - 0x01163D 04:962D: 02        .byte $02   ; 
- D 0 - I - 0x01163E 04:962E: 03        .byte $03   ; 
- D 0 - I - 0x01163F 04:962F: 60        .byte $60   ; 
- D 0 - I - 0x011640 04:9630: 95        .byte $95   ; 
- D 0 - I - 0x011641 04:9631: 1A        .byte $1A   ; 
- D 0 - I - 0x011642 04:9632: 11        .byte $11   ; 
- D 0 - I - 0x011643 04:9633: A6        .byte $A6   ; 
- D 0 - I - 0x011644 04:9634: 2A        .byte $2A   ; 
- D 0 - I - 0x011645 04:9635: 36        .byte $36   ; 
off_9636_00:
- D 0 - I - 0x011646 04:9636: 17        .byte $17   ; 
- D 0 - I - 0x011647 04:9637: B5        .byte $B5   ; 
- D 0 - I - 0x011648 04:9638: 09        .byte $09   ; 
- D 0 - I - 0x011649 04:9639: 0A        .byte $0A   ; 
- D 0 - I - 0x01164A 04:963A: 0B        .byte $0B   ; 
- D 0 - I - 0x01164B 04:963B: A5        .byte $A5   ; 
- D 0 - I - 0x01164C 04:963C: A4        .byte $A4   ; 
- D 0 - I - 0x01164D 04:963D: 02        .byte $02   ; 
- D 0 - I - 0x01164E 04:963E: A7        .byte $A7   ; 
off_963F_00:
- D 0 - I - 0x01164F 04:963F: 30        .byte $30   ; 
- D 0 - I - 0x011650 04:9640: 31        .byte $31   ; 
- D 0 - I - 0x011651 04:9641: 13        .byte $13   ; 
- D 0 - I - 0x011652 04:9642: 00        .byte $00   ; 
- D 0 - I - 0x011653 04:9643: 01        .byte $01   ; 
- D 0 - I - 0x011654 04:9644: E3        .byte $E3   ; 
- D 0 - I - 0x011655 04:9645: E4        .byte $E4   ; 
- D 0 - I - 0x011656 04:9646: F3        .byte $F3   ; 
- D 0 - I - 0x011657 04:9647: F4        .byte $F4   ; 
off_9648_00:
- D 0 - I - 0x011658 04:9648: 35        .byte $35   ; 
- D 0 - I - 0x011659 04:9649: 38        .byte $38   ; 
- D 0 - I - 0x01165A 04:964A: 82        .byte $82   ; 
- D 0 - I - 0x01165B 04:964B: 0F        .byte $0F   ; 
- D 0 - I - 0x01165C 04:964C: 36        .byte $36   ; 
- D 0 - I - 0x01165D 04:964D: 92        .byte $92   ; 
- D 0 - I - 0x01165E 04:964E: A6        .byte $A6   ; 
- D 0 - I - 0x01165F 04:964F: 61        .byte $61   ; 
- D 0 - I - 0x011660 04:9650: 60        .byte $60   ; 
off_9651_00:
- D 0 - I - 0x011661 04:9651: 40        .byte $40   ; 
- D 0 - I - 0x011662 04:9652: 41        .byte $41   ; 
- D 0 - I - 0x011663 04:9653: 36        .byte $36   ; 
- D 0 - I - 0x011664 04:9654: 50        .byte $50   ; 
- D 0 - I - 0x011665 04:9655: 51        .byte $51   ; 
- D 0 - I - 0x011666 04:9656: 60        .byte $60   ; 
- D 0 - I - 0x011667 04:9657: 95        .byte $95   ; 
- D 0 - I - 0x011668 04:9658: 79        .byte $79   ; 
- D 0 - I - 0x011669 04:9659: 79        .byte $79   ; 
off_965A_00:
- D 0 - I - 0x01166A 04:965A: A4        .byte $A4   ; 
- D 0 - I - 0x01166B 04:965B: 0A        .byte $0A   ; 
- D 0 - I - 0x01166C 04:965C: 02        .byte $02   ; 
- D 0 - I - 0x01166D 04:965D: 09        .byte $09   ; 
- D 0 - I - 0x01166E 04:965E: A7        .byte $A7   ; 
- D 0 - I - 0x01166F 04:965F: 0B        .byte $0B   ; 
- D 0 - I - 0x011670 04:9660: 17        .byte $17   ; 
- D 0 - I - 0x011671 04:9661: A5        .byte $A5   ; 
- D 0 - I - 0x011672 04:9662: B5        .byte $B5   ; 
off_9663_00:
- D 0 - I - 0x011673 04:9663: C6        .byte $C6   ; 
- D 0 - I - 0x011674 04:9664: C7        .byte $C7   ; 
- D 0 - I - 0x011675 04:9665: D6        .byte $D6   ; 
- D 0 - I - 0x011676 04:9666: D7        .byte $D7   ; 
off_9667_00:
- D 0 - I - 0x011677 04:9667: C8        .byte $C8   ; 
- D 0 - I - 0x011678 04:9668: C9        .byte $C9   ; 
- D 0 - I - 0x011679 04:9669: D8        .byte $D8   ; 
- D 0 - I - 0x01167A 04:966A: D9        .byte $D9   ; 
- D 0 - I - 0x01167B 04:966B: DA        .byte $DA   ; 
off_966C_00:
- D 0 - I - 0x01167C 04:966C: 60        .byte $60   ; 
- D 0 - I - 0x01167D 04:966D: 94        .byte $94   ; 
- D 0 - I - 0x01167E 04:966E: 64        .byte $64   ; 
- D 0 - I - 0x01167F 04:966F: 0F        .byte $0F   ; 
- D 0 - I - 0x011680 04:9670: 38        .byte $38   ; 
- D 0 - I - 0x011681 04:9671: 35        .byte $35   ; 
- D 0 - I - 0x011682 04:9672: B6        .byte $B6   ; 
- D 0 - I - 0x011683 04:9673: 36        .byte $36   ; 
- D 0 - I - 0x011684 04:9674: 93        .byte $93   ; 
off_9675_00:
- D 0 - I - 0x011685 04:9675: F8        .byte $F8   ; 
- D 0 - I - 0x011686 04:9676: F9        .byte $F9   ; 
- D 0 - I - 0x011687 04:9677: FA        .byte $FA   ; 
- D 0 - I - 0x011688 04:9678: FB        .byte $FB   ; 
- D 0 - I - 0x011689 04:9679: FA        .byte $FA   ; 
- D 0 - I - 0x01168A 04:967A: F8        .byte $F8   ; 
- D 0 - I - 0x01168B 04:967B: F8        .byte $F8   ; 
- D 0 - I - 0x01168C 04:967C: F8        .byte $F8   ; 
- D 0 - I - 0x01168D 04:967D: F9        .byte $F9   ; 
off_967E_00:
- D 0 - I - 0x01168E 04:967E: E5        .byte $E5   ; 
- D 0 - I - 0x01168F 04:967F: E6        .byte $E6   ; 
- D 0 - I - 0x011690 04:9680: E7        .byte $E7   ; 
- D 0 - I - 0x011691 04:9681: F5        .byte $F5   ; 
- D 0 - I - 0x011692 04:9682: F6        .byte $F6   ; 
- D 0 - I - 0x011693 04:9683: F7        .byte $F7   ; 
- D 0 - I - 0x011694 04:9684: E8        .byte $E8   ; 
- D 0 - I - 0x011695 04:9685: E9        .byte $E9   ; 
- D 0 - I - 0x011696 04:9686: EA        .byte $EA   ; 
off_9687_00:
- D 0 - I - 0x011697 04:9687: 12        .byte $12   ; 
- D 0 - I - 0x011698 04:9688: 13        .byte $13   ; 
- D 0 - I - 0x011699 04:9689: 14        .byte $14   ; 
- D 0 - I - 0x01169A 04:968A: 22        .byte $22   ; 
- D 0 - I - 0x01169B 04:968B: 23        .byte $23   ; 
- D 0 - I - 0x01169C 04:968C: 24        .byte $24   ; 
- D 0 - I - 0x01169D 04:968D: 32        .byte $32   ; 
- D 0 - I - 0x01169E 04:968E: 33        .byte $33   ; 
- D 0 - I - 0x01169F 04:968F: 34        .byte $34   ; 
off_9690_00:
- D 0 - I - 0x0116A0 04:9690: 15        .byte $15   ; 
- D 0 - I - 0x0116A1 04:9691: 17        .byte $17   ; 
- D 0 - I - 0x0116A2 04:9692: 25        .byte $25   ; 
- D 0 - I - 0x0116A3 04:9693: 26        .byte $26   ; 
- D 0 - I - 0x0116A4 04:9694: 27        .byte $27   ; 
- D 0 - I - 0x0116A5 04:9695: 35        .byte $35   ; 
- D 0 - I - 0x0116A6 04:9696: 36        .byte $36   ; 
- D 0 - I - 0x0116A7 04:9697: 37        .byte $37   ; 
- D 0 - I - 0x0116A8 04:9698: 61        .byte $61   ; 
off_9699_00:
- D 0 - I - 0x0116A9 04:9699: 14        .byte $14   ; 
- D 0 - I - 0x0116AA 04:969A: 24        .byte $24   ; 
- D 0 - I - 0x0116AB 04:969B: 34        .byte $34   ; 
- D 0 - I - 0x0116AC 04:969C: 33        .byte $33   ; 
- D 0 - I - 0x0116AD 04:969D: 23        .byte $23   ; 
- D 0 - I - 0x0116AE 04:969E: 13        .byte $13   ; 
- D 0 - I - 0x0116AF 04:969F: 12        .byte $12   ; 
- D 0 - I - 0x0116B0 04:96A0: 22        .byte $22   ; 
- D 0 - I - 0x0116B1 04:96A1: 32        .byte $32   ; 
off_96A2_00:
- D 0 - I - 0x0116B2 04:96A2: 15        .byte $15   ; 
- D 0 - I - 0x0116B3 04:96A3: 25        .byte $25   ; 
- D 0 - I - 0x0116B4 04:96A4: 35        .byte $35   ; 
- D 0 - I - 0x0116B5 04:96A5: 17        .byte $17   ; 
- D 0 - I - 0x0116B6 04:96A6: 27        .byte $27   ; 
- D 0 - I - 0x0116B7 04:96A7: 37        .byte $37   ; 
- D 0 - I - 0x0116B8 04:96A8: 36        .byte $36   ; 
- D 0 - I - 0x0116B9 04:96A9: 26        .byte $26   ; 
- D 0 - I - 0x0116BA 04:96AA: 61        .byte $61   ; 
off_96AB_00:
- D 0 - I - 0x0116BB 04:96AB: 02        .byte $02   ; 
- D 0 - I - 0x0116BC 04:96AC: 03        .byte $03   ; 
- D 0 - I - 0x0116BD 04:96AD: 1B        .byte $1B   ; 
- D 0 - I - 0x0116BE 04:96AE: A6        .byte $A6   ; 
- D 0 - I - 0x0116BF 04:96AF: 71        .byte $71   ; 
- D 0 - I - 0x0116C0 04:96B0: 72        .byte $72   ; 
- D 0 - I - 0x0116C1 04:96B1: 13        .byte $13   ; 
- D 0 - I - 0x0116C2 04:96B2: 1A        .byte $1A   ; 
- D 0 - I - 0x0116C3 04:96B3: 2A        .byte $2A   ; 
off_96B4_00:
- D 0 - I - 0x0116C4 04:96B4: 40        .byte $40   ; 
- D 0 - I - 0x0116C5 04:96B5: 41        .byte $41   ; 
- D 0 - I - 0x0116C6 04:96B6: 51        .byte $51   ; 
- D 0 - I - 0x0116C7 04:96B7: 60        .byte $60   ; 
- D 0 - I - 0x0116C8 04:96B8: 04        .byte $04   ; 
- D 0 - I - 0x0116C9 04:96B9: 05        .byte $05   ; 
- D 0 - I - 0x0116CA 04:96BA: 36        .byte $36   ; 
- D 0 - I - 0x0116CB 04:96BB: 50        .byte $50   ; 
- D 0 - I - 0x0116CC 04:96BC: 61        .byte $61   ; 
off_96BD_00:
- D 0 - I - 0x0116CD 04:96BD: 10        .byte $10   ; 
- D 0 - I - 0x0116CE 04:96BE: 11        .byte $11   ; 
- D 0 - I - 0x0116CF 04:96BF: 21        .byte $21   ; 
- D 0 - I - 0x0116D0 04:96C0: 16        .byte $16   ; 
- D 0 - I - 0x0116D1 04:96C1: 2B        .byte $2B   ; 
- D 0 - I - 0x0116D2 04:96C2: 00        .byte $00   ; 
- D 0 - I - 0x0116D3 04:96C3: 01        .byte $01   ; 
- D 0 - I - 0x0116D4 04:96C4: 66        .byte $66   ; 
- D 0 - I - 0x0116D5 04:96C5: 65        .byte $65   ; 
off_96C6_00:
- D 0 - I - 0x0116D6 04:96C6: 02        .byte $02   ; 
- D 0 - I - 0x0116D7 04:96C7: 03        .byte $03   ; 
- D 0 - I - 0x0116D8 04:96C8: 36        .byte $36   ; 
- D 0 - I - 0x0116D9 04:96C9: 60        .byte $60   ; 
- D 0 - I - 0x0116DA 04:96CA: 95        .byte $95   ; 
- D 0 - I - 0x0116DB 04:96CB: 1A        .byte $1A   ; 
- D 0 - I - 0x0116DC 04:96CC: 11        .byte $11   ; 
- D 0 - I - 0x0116DD 04:96CD: 2A        .byte $2A   ; 
- D 0 - I - 0x0116DE 04:96CE: A6        .byte $A6   ; 
off_96CF_00:
- D 0 - I - 0x0116DF 04:96CF: 60        .byte $60   ; 
- D 0 - I - 0x0116E0 04:96D0: 83        .byte $83   ; 
- D 0 - I - 0x0116E1 04:96D1: 84        .byte $84   ; 
- D 0 - I - 0x0116E2 04:96D2: 93        .byte $93   ; 
- D 0 - I - 0x0116E3 04:96D3: 94        .byte $94   ; 
- D 0 - I - 0x0116E4 04:96D4: 02        .byte $02   ; 
- D 0 - I - 0x0116E5 04:96D5: 03        .byte $03   ; 
- D 0 - I - 0x0116E6 04:96D6: 64        .byte $64   ; 
- D 0 - I - 0x0116E7 04:96D7: 3B        .byte $3B   ; 
off_96D8_00:
- D 0 - I - 0x0116E8 04:96D8: 42        .byte $42   ; 
- D 0 - I - 0x0116E9 04:96D9: 44        .byte $44   ; 
- D 0 - I - 0x0116EA 04:96DA: 55        .byte $55   ; 
- D 0 - I - 0x0116EB 04:96DB: 74        .byte $74   ; 
- D 0 - I - 0x0116EC 04:96DC: 65        .byte $65   ; 
- D 0 - I - 0x0116ED 04:96DD: 75        .byte $75   ; 
- D 0 - I - 0x0116EE 04:96DE: 70        .byte $70   ; 
- D 0 - I - 0x0116EF 04:96DF: 47        .byte $47   ; 
- D 0 - I - 0x0116F0 04:96E0: 46        .byte $46   ; 
off_96E1_00:
- D 0 - I - 0x0116F1 04:96E1: 36        .byte $36   ; 
- D 0 - I - 0x0116F2 04:96E2: 03        .byte $03   ; 
- D 0 - I - 0x0116F3 04:96E3: 02        .byte $02   ; 
- D 0 - I - 0x0116F4 04:96E4: 26        .byte $26   ; 
- D 0 - I - 0x0116F5 04:96E5: A0        .byte $A0   ; 
- D 0 - I - 0x0116F6 04:96E6: 27        .byte $27   ; 
- D 0 - I - 0x0116F7 04:96E7: 37        .byte $37   ; 
- D 0 - I - 0x0116F8 04:96E8: 28        .byte $28   ; 
- D 0 - I - 0x0116F9 04:96E9: 11        .byte $11   ; 
off_96EA_00:
- D 0 - I - 0x0116FA 04:96EA: 35        .byte $35   ; 
- D 0 - I - 0x0116FB 04:96EB: 38        .byte $38   ; 
- D 0 - I - 0x0116FC 04:96EC: 60        .byte $60   ; 
- D 0 - I - 0x0116FD 04:96ED: 0F        .byte $0F   ; 
- D 0 - I - 0x0116FE 04:96EE: 82        .byte $82   ; 
- D 0 - I - 0x0116FF 04:96EF: 36        .byte $36   ; 
- D 0 - I - 0x011700 04:96F0: 92        .byte $92   ; 
- D 0 - I - 0x011701 04:96F1: 95        .byte $95   ; 
- D 0 - I - 0x011702 04:96F2: A6        .byte $A6   ; 
off_96F3_00:
- D 0 - I - 0x011703 04:96F3: 42        .byte $42   ; 
- D 0 - I - 0x011704 04:96F4: 44        .byte $44   ; 
- D 0 - I - 0x011705 04:96F5: 55        .byte $55   ; 
- D 0 - I - 0x011706 04:96F6: 65        .byte $65   ; 
- D 0 - I - 0x011707 04:96F7: 74        .byte $74   ; 
- D 0 - I - 0x011708 04:96F8: 75        .byte $75   ; 
- D 0 - I - 0x011709 04:96F9: 70        .byte $70   ; 
- D 0 - I - 0x01170A 04:96FA: 71        .byte $71   ; 
- D 0 - I - 0x01170B 04:96FB: 45        .byte $45   ; 
off_96FC_00:
- D 0 - I - 0x01170C 04:96FC: 1B        .byte $1B   ; 
- D 0 - I - 0x01170D 04:96FD: 61        .byte $61   ; 
- D 0 - I - 0x01170E 04:96FE: 34        .byte $34   ; 
- D 0 - I - 0x01170F 04:96FF: 13        .byte $13   ; 
- D 0 - I - 0x011710 04:9700: 1A        .byte $1A   ; 
- D 0 - I - 0x011711 04:9701: 2A        .byte $2A   ; 
- D 0 - I - 0x011712 04:9702: A6        .byte $A6   ; 
- D 0 - I - 0x011713 04:9703: 02        .byte $02   ; 
off_9704_00:
- D 0 - I - 0x011714 04:9704: 03        .byte $03   ; 
- D 0 - I - 0x011715 04:9705: 64        .byte $64   ; 
- D 0 - I - 0x011716 04:9706: 02        .byte $02   ; 
- D 0 - I - 0x011717 04:9707: FC        .byte $FC   ; 
- D 0 - I - 0x011718 04:9708: FD        .byte $FD   ; 
- D 0 - I - 0x011719 04:9709: FB        .byte $FB   ; 
- D 0 - I - 0x01171A 04:970A: EA        .byte $EA   ; 
- D 0 - I - 0x01171B 04:970B: FA        .byte $FA   ; 
- D 0 - I - 0x01171C 04:970C: 0A        .byte $0A   ; 
off_970D_00:
- D 0 - I - 0x01171D 04:970D: 58        .byte $58   ; 
- D 0 - I - 0x01171E 04:970E: 68        .byte $68   ; 
- D 0 - I - 0x01171F 04:970F: 48        .byte $48   ; 
- D 0 - I - 0x011720 04:9710: 67        .byte $67   ; 
- D 0 - I - 0x011721 04:9711: A2        .byte $A2   ; 
- D 0 - I - 0x011722 04:9712: 59        .byte $59   ; 
- D 0 - I - 0x011723 04:9713: 69        .byte $69   ; 
- D 0 - I - 0x011724 04:9714: 6A        .byte $6A   ; 
- D 0 - I - 0x011725 04:9715: 49        .byte $49   ; 
off_9716_00:
- D 0 - I - 0x011726 04:9716: 58        .byte $58   ; 
- D 0 - I - 0x011727 04:9717: 68        .byte $68   ; 
- D 0 - I - 0x011728 04:9718: 59        .byte $59   ; 
- D 0 - I - 0x011729 04:9719: 78        .byte $78   ; 
- D 0 - I - 0x01172A 04:971A: 79        .byte $79   ; 
- D 0 - I - 0x01172B 04:971B: 60        .byte $60   ; 
- D 0 - I - 0x01172C 04:971C: 70        .byte $70   ; 
off_971D_00:
- D 0 - I - 0x01172D 04:971D: 52        .byte $52   ; 
- D 0 - I - 0x01172E 04:971E: 53        .byte $53   ; 
- D 0 - I - 0x01172F 04:971F: 60        .byte $60   ; 
- D 0 - I - 0x011730 04:9720: 61        .byte $61   ; 
- D 0 - I - 0x011731 04:9721: 64        .byte $64   ; 
- D 0 - I - 0x011732 04:9722: 70        .byte $70   ; 
- D 0 - I - 0x011733 04:9723: 71        .byte $71   ; 
- D 0 - I - 0x011734 04:9724: 72        .byte $72   ; 
- D 0 - I - 0x011735 04:9725: 73        .byte $73   ; 
off_9726_00:
- D 0 - I - 0x011736 04:9726: 50        .byte $50   ; 
- D 0 - I - 0x011737 04:9727: 51        .byte $51   ; 
- D 0 - I - 0x011738 04:9728: 60        .byte $60   ; 
- D 0 - I - 0x011739 04:9729: 61        .byte $61   ; 
- D 0 - I - 0x01173A 04:972A: 64        .byte $64   ; 
- D 0 - I - 0x01173B 04:972B: 70        .byte $70   ; 
- D 0 - I - 0x01173C 04:972C: 71        .byte $71   ; 
- D 0 - I - 0x01173D 04:972D: 72        .byte $72   ; 
- D 0 - I - 0x01173E 04:972E: 73        .byte $73   ; 
off_972F_00:
- D 0 - I - 0x01173F 04:972F: 53        .byte $53   ; 
- D 0 - I - 0x011740 04:9730: 54        .byte $54   ; 
- D 0 - I - 0x011741 04:9731: 39        .byte $39   ; 
- D 0 - I - 0x011742 04:9732: 3A        .byte $3A   ; 
- D 0 - I - 0x011743 04:9733: 49        .byte $49   ; 
- D 0 - I - 0x011744 04:9734: 77        .byte $77   ; 
- D 0 - I - 0x011745 04:9735: 6D        .byte $6D   ; 
- D 0 - I - 0x011746 04:9736: 02        .byte $02   ; 
- D 0 - I - 0x011747 04:9737: 03        .byte $03   ; 
off_9738_00:
- D 0 - I - 0x011748 04:9738: 00        .byte $00   ; 
- D 0 - I - 0x011749 04:9739: 01        .byte $01   ; 
- D 0 - I - 0x01174A 04:973A: 10        .byte $10   ; 
- D 0 - I - 0x01174B 04:973B: 11        .byte $11   ; 
- D 0 - I - 0x01174C 04:973C: 12        .byte $12   ; 
- D 0 - I - 0x01174D 04:973D: 95        .byte $95   ; 
- D 0 - I - 0x01174E 04:973E: 60        .byte $60   ; 
- D 0 - I - 0x01174F 04:973F: 91        .byte $91   ; 
- D 0 - I - 0x011750 04:9740: A6        .byte $A6   ; 
off_9741_00:
- D 0 - I - 0x011751 04:9741: 02        .byte $02   ; 
- D 0 - I - 0x011752 04:9742: 03        .byte $03   ; 
- D 0 - I - 0x011753 04:9743: 12        .byte $12   ; 
- D 0 - I - 0x011754 04:9744: 13        .byte $13   ; 
- D 0 - I - 0x011755 04:9745: 22        .byte $22   ; 
- D 0 - I - 0x011756 04:9746: 23        .byte $23   ; 
- D 0 - I - 0x011757 04:9747: 30        .byte $30   ; 
- D 0 - I - 0x011758 04:9748: 31        .byte $31   ; 
- D 0 - I - 0x011759 04:9749: 33        .byte $33   ; 
off_974A_00:
- D 0 - I - 0x01175A 04:974A: A6        .byte $A6   ; 
- D 0 - I - 0x01175B 04:974B: A7        .byte $A7   ; 
- D 0 - I - 0x01175C 04:974C: B6        .byte $B6   ; 
- D 0 - I - 0x01175D 04:974D: B7        .byte $B7   ; 
- D 0 - I - 0x01175E 04:974E: B4        .byte $B4   ; 
- D 0 - I - 0x01175F 04:974F: B5        .byte $B5   ; 
- D 0 - I - 0x011760 04:9750: B2        .byte $B2   ; 
- D 0 - I - 0x011761 04:9751: B0        .byte $B0   ; 
- D 0 - I - 0x011762 04:9752: B3        .byte $B3   ; 
off_9753_00:
- D 0 - I - 0x011763 04:9753: B8        .byte $B8   ; 
- D 0 - I - 0x011764 04:9754: B1        .byte $B1   ; 
- D 0 - I - 0x011765 04:9755: B2        .byte $B2   ; 
- D 0 - I - 0x011766 04:9756: 04        .byte $04   ; 
- D 0 - I - 0x011767 04:9757: 05        .byte $05   ; 
- D 0 - I - 0x011768 04:9758: A2        .byte $A2   ; 
- D 0 - I - 0x011769 04:9759: B0        .byte $B0   ; 
- D 0 - I - 0x01176A 04:975A: 75        .byte $75   ; 
off_975B_00:
- D 0 - I - 0x01176B 04:975B: 04        .byte $04   ; 
- D 0 - I - 0x01176C 04:975C: 05        .byte $05   ; 
- D 0 - I - 0x01176D 04:975D: 40        .byte $40   ; 
- D 0 - I - 0x01176E 04:975E: 41        .byte $41   ; 
- D 0 - I - 0x01176F 04:975F: 50        .byte $50   ; 
- D 0 - I - 0x011770 04:9760: 51        .byte $51   ; 
- D 0 - I - 0x011771 04:9761: 34        .byte $34   ; 
- D 0 - I - 0x011772 04:9762: 95        .byte $95   ; 
off_9763_00:
- D 0 - I - 0x011773 04:9763: 29        .byte $29   ; 
- D 0 - I - 0x011774 04:9764: 39        .byte $39   ; 
- D 0 - I - 0x011775 04:9765: B8        .byte $B8   ; 
- D 0 - I - 0x011776 04:9766: 88        .byte $88   ; 
- D 0 - I - 0x011777 04:9767: 89        .byte $89   ; 
- D 0 - I - 0x011778 04:9768: 99        .byte $99   ; 
- D 0 - I - 0x011779 04:9769: 9A        .byte $9A   ; 
- D 0 - I - 0x01177A 04:976A: 8A        .byte $8A   ; 
off_976B_00:
- D 0 - I - 0x01177B 04:976B: 85        .byte $85   ; 
- D 0 - I - 0x01177C 04:976C: 86        .byte $86   ; 
- D 0 - I - 0x01177D 04:976D: 3E        .byte $3E   ; 
- D 0 - I - 0x01177E 04:976E: 3D        .byte $3D   ; 
- D 0 - I - 0x01177F 04:976F: 0B        .byte $0B   ; 
- D 0 - I - 0x011780 04:9770: 17        .byte $17   ; 
- D 0 - I - 0x011781 04:9771: 87        .byte $87   ; 
- D 0 - I - 0x011782 04:9772: 3F        .byte $3F   ; 
off_9773_00:
- D 0 - I - 0x011783 04:9773: 15        .byte $15   ; 
- D 0 - I - 0x011784 04:9774: 16        .byte $16   ; 
- D 0 - I - 0x011785 04:9775: 25        .byte $25   ; 
- D 0 - I - 0x011786 04:9776: 26        .byte $26   ; 
- D 0 - I - 0x011787 04:9777: 04        .byte $04   ; 
- D 0 - I - 0x011788 04:9778: 05        .byte $05   ; 
- D 0 - I - 0x011789 04:9779: 30        .byte $30   ; 
- D 0 - I - 0x01178A 04:977A: 31        .byte $31   ; 
off_977B_00:
- D 0 - I - 0x01178B 04:977B: 00        .byte $00   ; 
- D 0 - I - 0x01178C 04:977C: 01        .byte $01   ; 
- D 0 - I - 0x01178D 04:977D: 10        .byte $10   ; 
- D 0 - I - 0x01178E 04:977E: 11        .byte $11   ; 
- D 0 - I - 0x01178F 04:977F: 21        .byte $21   ; 
- D 0 - I - 0x011790 04:9780: 12        .byte $12   ; 
- D 0 - I - 0x011791 04:9781: 95        .byte $95   ; 
- D 0 - I - 0x011792 04:9782: 91        .byte $91   ; 
off_9783_00:
- D 0 - I - 0x011793 04:9783: 40        .byte $40   ; 
- D 0 - I - 0x011794 04:9784: 41        .byte $41   ; 
- D 0 - I - 0x011795 04:9785: 50        .byte $50   ; 
- D 0 - I - 0x011796 04:9786: 51        .byte $51   ; 
- D 0 - I - 0x011797 04:9787: 60        .byte $60   ; 
- D 0 - I - 0x011798 04:9788: 61        .byte $61   ; 
- D 0 - I - 0x011799 04:9789: 04        .byte $04   ; 
- D 0 - I - 0x01179A 04:978A: 05        .byte $05   ; 
off_978B_00:
- D 0 - I - 0x01179B 04:978B: 00        .byte $00   ; 
- D 0 - I - 0x01179C 04:978C: 01        .byte $01   ; 
- D 0 - I - 0x01179D 04:978D: 10        .byte $10   ; 
- D 0 - I - 0x01179E 04:978E: 11        .byte $11   ; 
- D 0 - I - 0x01179F 04:978F: 20        .byte $20   ; 
- D 0 - I - 0x0117A0 04:9790: 21        .byte $21   ; 
- D 0 - I - 0x0117A1 04:9791: 30        .byte $30   ; 
- D 0 - I - 0x0117A2 04:9792: 31        .byte $31   ; 
off_9793_00:
- D 0 - I - 0x0117A3 04:9793: 10        .byte $10   ; 
- D 0 - I - 0x0117A4 04:9794: 11        .byte $11   ; 
- D 0 - I - 0x0117A5 04:9795: 20        .byte $20   ; 
- D 0 - I - 0x0117A6 04:9796: 21        .byte $21   ; 
- D 0 - I - 0x0117A7 04:9797: 71        .byte $71   ; 
- D 0 - I - 0x0117A8 04:9798: 72        .byte $72   ; 
- D 0 - I - 0x0117A9 04:9799: 00        .byte $00   ; 
- D 0 - I - 0x0117AA 04:979A: 01        .byte $01   ; 
off_979B_00:
- D 0 - I - 0x0117AB 04:979B: 10        .byte $10   ; 
- D 0 - I - 0x0117AC 04:979C: 11        .byte $11   ; 
- D 0 - I - 0x0117AD 04:979D: 20        .byte $20   ; 
- D 0 - I - 0x0117AE 04:979E: 70        .byte $70   ; 
- D 0 - I - 0x0117AF 04:979F: A6        .byte $A6   ; 
- D 0 - I - 0x0117B0 04:97A0: 95        .byte $95   ; 
- D 0 - I - 0x0117B1 04:97A1: 00        .byte $00   ; 
- D 0 - I - 0x0117B2 04:97A2: 01        .byte $01   ; 
off_97A3_00:
- D 0 - I - 0x0117B3 04:97A3: 75        .byte $75   ; 
- D 0 - I - 0x0117B4 04:97A4: 76        .byte $76   ; 
- D 0 - I - 0x0117B5 04:97A5: 6B        .byte $6B   ; 
- D 0 - I - 0x0117B6 04:97A6: 6C        .byte $6C   ; 
- D 0 - I - 0x0117B7 04:97A7: 7B        .byte $7B   ; 
- D 0 - I - 0x0117B8 04:97A8: 7C        .byte $7C   ; 
- D 0 - I - 0x0117B9 04:97A9: 79        .byte $79   ; 
- D 0 - I - 0x0117BA 04:97AA: 7A        .byte $7A   ; 
off_97AB_00:
- D 0 - I - 0x0117BB 04:97AB: 0A        .byte $0A   ; 
- D 0 - I - 0x0117BC 04:97AC: 09        .byte $09   ; 
- D 0 - I - 0x0117BD 04:97AD: 19        .byte $19   ; 
- D 0 - I - 0x0117BE 04:97AE: 18        .byte $18   ; 
- D 0 - I - 0x0117BF 04:97AF: 02        .byte $02   ; 
- D 0 - I - 0x0117C0 04:97B0: 17        .byte $17   ; 
- D 0 - I - 0x0117C1 04:97B1: 08        .byte $08   ; 
- D 0 - I - 0x0117C2 04:97B2: 0B        .byte $0B   ; 
off_97B3_00:
- D 0 - I - 0x0117C3 04:97B3: E4        .byte $E4   ; 
- D 0 - I - 0x0117C4 04:97B4: E5        .byte $E5   ; 
- D 0 - I - 0x0117C5 04:97B5: E6        .byte $E6   ; 
- D 0 - I - 0x0117C6 04:97B6: E7        .byte $E7   ; 
off_97B7_00:
- D 0 - I - 0x0117C7 04:97B7: F4        .byte $F4   ; 
- D 0 - I - 0x0117C8 04:97B8: F5        .byte $F5   ; 
- D 0 - I - 0x0117C9 04:97B9: F6        .byte $F6   ; 
- D 0 - I - 0x0117CA 04:97BA: F7        .byte $F7   ; 
off_97BB_00:
- D 0 - I - 0x0117CB 04:97BB: 30        .byte $30   ; 
- D 0 - I - 0x0117CC 04:97BC: 31        .byte $31   ; 
- D 0 - I - 0x0117CD 04:97BD: E3        .byte $E3   ; 
- D 0 - I - 0x0117CE 04:97BE: E4        .byte $E4   ; 
- D 0 - I - 0x0117CF 04:97BF: F3        .byte $F3   ; 
- D 0 - I - 0x0117D0 04:97C0: F4        .byte $F4   ; 
- D 0 - I - 0x0117D1 04:97C1: E6        .byte $E6   ; 
- D 0 - I - 0x0117D2 04:97C2: E7        .byte $E7   ; 
off_97C3_00:
- D 0 - I - 0x0117D3 04:97C3: 25        .byte $25   ; 
- D 0 - I - 0x0117D4 04:97C4: 26        .byte $26   ; 
- D 0 - I - 0x0117D5 04:97C5: 27        .byte $27   ; 
- D 0 - I - 0x0117D6 04:97C6: 35        .byte $35   ; 
- D 0 - I - 0x0117D7 04:97C7: 36        .byte $36   ; 
- D 0 - I - 0x0117D8 04:97C8: 37        .byte $37   ; 
- D 0 - I - 0x0117D9 04:97C9: 15        .byte $15   ; 
- D 0 - I - 0x0117DA 04:97CA: 17        .byte $17   ; 
off_97CB_00:
- D 0 - I - 0x0117DB 04:97CB: 02        .byte $02   ; 
- D 0 - I - 0x0117DC 04:97CC: 19        .byte $19   ; 
- D 0 - I - 0x0117DD 04:97CD: 18        .byte $18   ; 
- D 0 - I - 0x0117DE 04:97CE: 3C        .byte $3C   ; 
- D 0 - I - 0x0117DF 04:97CF: 0A        .byte $0A   ; 
- D 0 - I - 0x0117E0 04:97D0: 09        .byte $09   ; 
- D 0 - I - 0x0117E1 04:97D1: 08        .byte $08   ; 
- D 0 - I - 0x0117E2 04:97D2: 2C        .byte $2C   ; 
off_97D3_00:
- D 0 - I - 0x0117E3 04:97D3: 30        .byte $30   ; 
- D 0 - I - 0x0117E4 04:97D4: 31        .byte $31   ; 
off_97D5_00:
- D 0 - I - 0x0117E5 04:97D5: E8        .byte $E8   ; 
- D 0 - I - 0x0117E6 04:97D6: E9        .byte $E9   ; 
- D 0 - I - 0x0117E7 04:97D7: F8        .byte $F8   ; 
- D 0 - I - 0x0117E8 04:97D8: F9        .byte $F9   ; 
- D 0 - I - 0x0117E9 04:97D9: E6        .byte $E6   ; 
- D 0 - I - 0x0117EA 04:97DA: E7        .byte $E7   ; 
off_97DB_00:
- D 0 - I - 0x0117EB 04:97DB: 31        .byte $31   ; 
- D 0 - I - 0x0117EC 04:97DC: 30        .byte $30   ; 
- D 0 - I - 0x0117ED 04:97DD: 2A        .byte $2A   ; 
- D 0 - I - 0x0117EE 04:97DE: 1B        .byte $1B   ; 
- D 0 - I - 0x0117EF 04:97DF: 1A        .byte $1A   ; 
- D 0 - I - 0x0117F0 04:97E0: 03        .byte $03   ; 
- D 0 - I - 0x0117F1 04:97E1: 02        .byte $02   ; 
- D 0 - I - 0x0117F2 04:97E2: A6        .byte $A6   ; 
off_97E3_00:
- D 0 - I - 0x0117F3 04:97E3: 85        .byte $85   ; 
- D 0 - I - 0x0117F4 04:97E4: 87        .byte $87   ; 
- D 0 - I - 0x0117F5 04:97E5: 3F        .byte $3F   ; 
- D 0 - I - 0x0117F6 04:97E6: 17        .byte $17   ; 
- D 0 - I - 0x0117F7 04:97E7: 0B        .byte $0B   ; 
- D 0 - I - 0x0117F8 04:97E8: 3D        .byte $3D   ; 
- D 0 - I - 0x0117F9 04:97E9: 3E        .byte $3E   ; 
- D 0 - I - 0x0117FA 04:97EA: 86        .byte $86   ; 
off_97EB_00:
- D 0 - I - 0x0117FB 04:97EB: 00        .byte $00   ; 
- D 0 - I - 0x0117FC 04:97EC: 01        .byte $01   ; 
- D 0 - I - 0x0117FD 04:97ED: 11        .byte $11   ; 
- D 0 - I - 0x0117FE 04:97EE: 20        .byte $20   ; 
- D 0 - I - 0x0117FF 04:97EF: 21        .byte $21   ; 
- D 0 - I - 0x011800 04:97F0: 31        .byte $31   ; 
- D 0 - I - 0x011801 04:97F1: 30        .byte $30   ; 
- D 0 - I - 0x011802 04:97F2: 90        .byte $90   ; 
off_97F3_00:
- D 0 - I - 0x011803 04:97F3: 0D        .byte $0D   ; 
- D 0 - I - 0x011804 04:97F4: 0E        .byte $0E   ; 
- D 0 - I - 0x011805 04:97F5: 1D        .byte $1D   ; 
- D 0 - I - 0x011806 04:97F6: 1E        .byte $1E   ; 
- D 0 - I - 0x011807 04:97F7: 00        .byte $00   ; 
- D 0 - I - 0x011808 04:97F8: 01        .byte $01   ; 
- D 0 - I - 0x011809 04:97F9: 1F        .byte $1F   ; 
- D 0 - I - 0x01180A 04:97FA: 47        .byte $47   ; 
off_97FB_00:
- D 0 - I - 0x01180B 04:97FB: 2C        .byte $2C   ; 
- D 0 - I - 0x01180C 04:97FC: 2D        .byte $2D   ; 
- D 0 - I - 0x01180D 04:97FD: 2E        .byte $2E   ; 
- D 0 - I - 0x01180E 04:97FE: 2F        .byte $2F   ; 
- D 0 - I - 0x01180F 04:97FF: 3C        .byte $3C   ; 
- D 0 - I - 0x011810 04:9800: 3D        .byte $3D   ; 
- D 0 - I - 0x011811 04:9801: 3E        .byte $3E   ; 
- D 0 - I - 0x011812 04:9802: 3F        .byte $3F   ; 
off_9803_00:
- D 0 - I - 0x011813 04:9803: 10        .byte $10   ; 
- D 0 - I - 0x011814 04:9804: 11        .byte $11   ; 
- D 0 - I - 0x011815 04:9805: 20        .byte $20   ; 
- D 0 - I - 0x011816 04:9806: 21        .byte $21   ; 
- D 0 - I - 0x011817 04:9807: 30        .byte $30   ; 
- D 0 - I - 0x011818 04:9808: 31        .byte $31   ; 
- D 0 - I - 0x011819 04:9809: 00        .byte $00   ; 
- D 0 - I - 0x01181A 04:980A: 01        .byte $01   ; 
off_980B_00:
- D 0 - I - 0x01181B 04:980B: 30        .byte $30   ; 
- D 0 - I - 0x01181C 04:980C: 31        .byte $31   ; 
- D 0 - I - 0x01181D 04:980D: 02        .byte $02   ; 
- D 0 - I - 0x01181E 04:980E: 03        .byte $03   ; 
- D 0 - I - 0x01181F 04:980F: 1A        .byte $1A   ; 
- D 0 - I - 0x011820 04:9810: 1B        .byte $1B   ; 
- D 0 - I - 0x011821 04:9811: 2A        .byte $2A   ; 
- D 0 - I - 0x011822 04:9812: A6        .byte $A6   ; 
off_9813_00:
- D 0 - I - 0x011823 04:9813: 04        .byte $04   ; 
- D 0 - I - 0x011824 04:9814: 05        .byte $05   ; 
- D 0 - I - 0x011825 04:9815: 14        .byte $14   ; 
- D 0 - I - 0x011826 04:9816: 15        .byte $15   ; 
- D 0 - I - 0x011827 04:9817: 20        .byte $20   ; 
- D 0 - I - 0x011828 04:9818: 21        .byte $21   ; 
- D 0 - I - 0x011829 04:9819: 30        .byte $30   ; 
- D 0 - I - 0x01182A 04:981A: 31        .byte $31   ; 
off_981B_00:
- D 0 - I - 0x01182B 04:981B: 2C        .byte $2C   ; 
- D 0 - I - 0x01182C 04:981C: 08        .byte $08   ; 
- D 0 - I - 0x01182D 04:981D: 09        .byte $09   ; 
- D 0 - I - 0x01182E 04:981E: 0A        .byte $0A   ; 
- D 0 - I - 0x01182F 04:981F: 3C        .byte $3C   ; 
- D 0 - I - 0x011830 04:9820: 18        .byte $18   ; 
- D 0 - I - 0x011831 04:9821: 19        .byte $19   ; 
- D 0 - I - 0x011832 04:9822: 02        .byte $02   ; 
off_9823_00:
- D 0 - I - 0x011833 04:9823: 22        .byte $22   ; 
- D 0 - I - 0x011834 04:9824: 23        .byte $23   ; 
- D 0 - I - 0x011835 04:9825: 22        .byte $22   ; 
- D 0 - I - 0x011836 04:9826: 23        .byte $23   ; 
- D 0 - I - 0x011837 04:9827: A3        .byte $A3   ; 
- D 0 - I - 0x011838 04:9828: A3        .byte $A3   ; 
- D 0 - I - 0x011839 04:9829: 98        .byte $98   ; 
- D 0 - I - 0x01183A 04:982A: 98        .byte $98   ; 
off_982B_00:
- D 0 - I - 0x01183B 04:982B: 0A        .byte $0A   ; 
- D 0 - I - 0x01183C 04:982C: 09        .byte $09   ; 
- D 0 - I - 0x01183D 04:982D: 08        .byte $08   ; 
- D 0 - I - 0x01183E 04:982E: 18        .byte $18   ; 
- D 0 - I - 0x01183F 04:982F: 19        .byte $19   ; 
- D 0 - I - 0x011840 04:9830: 02        .byte $02   ; 
- D 0 - I - 0x011841 04:9831: 17        .byte $17   ; 
- D 0 - I - 0x011842 04:9832: 0B        .byte $0B   ; 
off_9833_00:
- D 0 - I - 0x011843 04:9833: 73        .byte $73   ; 
- D 0 - I - 0x011844 04:9834: 74        .byte $74   ; 
- D 0 - I - 0x011845 04:9835: 6B        .byte $6B   ; 
- D 0 - I - 0x011846 04:9836: 6C        .byte $6C   ; 
- D 0 - I - 0x011847 04:9837: 7B        .byte $7B   ; 
- D 0 - I - 0x011848 04:9838: 7C        .byte $7C   ; 
- D 0 - I - 0x011849 04:9839: 79        .byte $79   ; 
- D 0 - I - 0x01184A 04:983A: 7A        .byte $7A   ; 
off_983B_00:
- D 0 - I - 0x01184B 04:983B: C3        .byte $C3   ; 
- D 0 - I - 0x01184C 04:983C: C4        .byte $C4   ; 
- D 0 - I - 0x01184D 04:983D: D3        .byte $D3   ; 
- D 0 - I - 0x01184E 04:983E: D4        .byte $D4   ; 
- D 0 - I - 0x01184F 04:983F: C7        .byte $C7   ; 
- D 0 - I - 0x011850 04:9840: D7        .byte $D7   ; 
- D 0 - I - 0x011851 04:9841: D6        .byte $D6   ; 
- D 0 - I - 0x011852 04:9842: C6        .byte $C6   ; 
off_9843_00:
- D 0 - I - 0x011853 04:9843: 96        .byte $96   ; 
- D 0 - I - 0x011854 04:9844: B8        .byte $B8   ; 
- D 0 - I - 0x011855 04:9845: B0        .byte $B0   ; 
- D 0 - I - 0x011856 04:9846: B1        .byte $B1   ; 
- D 0 - I - 0x011857 04:9847: B2        .byte $B2   ; 
- D 0 - I - 0x011858 04:9848: 75        .byte $75   ; 
- D 0 - I - 0x011859 04:9849: B9        .byte $B9   ; 
- D 0 - I - 0x01185A 04:984A: 04        .byte $04   ; 
off_984B_00:
- D 0 - I - 0x01185B 04:984B: 00        .byte $00   ; 
- D 0 - I - 0x01185C 04:984C: 01        .byte $01   ; 
- D 0 - I - 0x01185D 04:984D: 10        .byte $10   ; 
- D 0 - I - 0x01185E 04:984E: 11        .byte $11   ; 
- D 0 - I - 0x01185F 04:984F: 20        .byte $20   ; 
- D 0 - I - 0x011860 04:9850: 34        .byte $34   ; 
- D 0 - I - 0x011861 04:9851: A6        .byte $A6   ; 
- D 0 - I - 0x011862 04:9852: 95        .byte $95   ; 
off_9853_00:
- D 0 - I - 0x011863 04:9853: 02        .byte $02   ; 
- D 0 - I - 0x011864 04:9854: 03        .byte $03   ; 
- D 0 - I - 0x011865 04:9855: 1A        .byte $1A   ; 
- D 0 - I - 0x011866 04:9856: 1B        .byte $1B   ; 
- D 0 - I - 0x011867 04:9857: 2A        .byte $2A   ; 
- D 0 - I - 0x011868 04:9858: A6        .byte $A6   ; 
- D 0 - I - 0x011869 04:9859: 70        .byte $70   ; 
- D 0 - I - 0x01186A 04:985A: 95        .byte $95   ; 
off_985B_00:
- D 0 - I - 0x01186B 04:985B: C3        .byte $C3   ; 
- D 0 - I - 0x01186C 04:985C: D3        .byte $D3   ; 
- D 0 - I - 0x01186D 04:985D: C4        .byte $C4   ; 
- D 0 - I - 0x01186E 04:985E: D4        .byte $D4   ; 
- D 0 - I - 0x01186F 04:985F: C7        .byte $C7   ; 
- D 0 - I - 0x011870 04:9860: D7        .byte $D7   ; 
- D 0 - I - 0x011871 04:9861: D6        .byte $D6   ; 
- D 0 - I - 0x011872 04:9862: C6        .byte $C6   ; 
off_9863_00:
- D 0 - I - 0x011873 04:9863: 00        .byte $00   ; 
- D 0 - I - 0x011874 04:9864: 01        .byte $01   ; 
- D 0 - I - 0x011875 04:9865: 11        .byte $11   ; 
- D 0 - I - 0x011876 04:9866: 20        .byte $20   ; 
- D 0 - I - 0x011877 04:9867: 21        .byte $21   ; 
- D 0 - I - 0x011878 04:9868: 30        .byte $30   ; 
- D 0 - I - 0x011879 04:9869: 31        .byte $31   ; 
- D 0 - I - 0x01187A 04:986A: 32        .byte $32   ; 
off_986B_00:
- D 0 - I - 0x01187B 04:986B: FC        .byte $FC   ; 
off_986C_00:
- D 0 - I - 0x01187C 04:986C: FD        .byte $FD   ; 
- D 0 - I - 0x01187D 04:986D: FC        .byte $FC   ; 
- D 0 - I - 0x01187E 04:986E: FD        .byte $FD   ; 
- D 0 - I - 0x01187F 04:986F: C7        .byte $C7   ; 
- D 0 - I - 0x011880 04:9870: D7        .byte $D7   ; 
- D 0 - I - 0x011881 04:9871: D6        .byte $D6   ; 
- D 0 - I - 0x011882 04:9872: C6        .byte $C6   ; 
off_9873_00:
- D 0 - I - 0x011883 04:9873: 11        .byte $11   ; 
- D 0 - I - 0x011884 04:9874: 20        .byte $20   ; 
- D 0 - I - 0x011885 04:9875: 21        .byte $21   ; 
- D 0 - I - 0x011886 04:9876: 30        .byte $30   ; 
- D 0 - I - 0x011887 04:9877: 31        .byte $31   ; 
- D 0 - I - 0x011888 04:9878: 90        .byte $90   ; 
- D 0 - I - 0x011889 04:9879: 00        .byte $00   ; 
- D 0 - I - 0x01188A 04:987A: 01        .byte $01   ; 
off_987B_01:
- D 0 - I - 0x01188B 04:987B: 4B        .byte $4B   ; 
- D 0 - I - 0x01188C 04:987C: 4C        .byte $4C   ; 
- D 0 - I - 0x01188D 04:987D: 5B        .byte $5B   ; 
- D 0 - I - 0x01188E 04:987E: 5C        .byte $5C   ; 
- D 0 - I - 0x01188F 04:987F: 6B        .byte $6B   ; 
- D 0 - I - 0x011890 04:9880: 6C        .byte $6C   ; 
- D 0 - I - 0x011891 04:9881: 7B        .byte $7B   ; 
- D 0 - I - 0x011892 04:9882: 7C        .byte $7C   ; 
off_9883_00:
- D 0 - I - 0x011893 04:9883: E4        .byte $E4   ; 
- D 0 - I - 0x011894 04:9884: E5        .byte $E5   ; 
- D 0 - I - 0x011895 04:9885: F4        .byte $F4   ; 
- D 0 - I - 0x011896 04:9886: F5        .byte $F5   ; 
- D 0 - I - 0x011897 04:9887: E0        .byte $E0   ; 
- D 0 - I - 0x011898 04:9888: F8        .byte $F8   ; 
- D 0 - I - 0x011899 04:9889: D9        .byte $D9   ; 
off_988A_00:
- D 0 - I - 0x01189A 04:988A: C3        .byte $C3   ; 
- D 0 - I - 0x01189B 04:988B: C4        .byte $C4   ; 
- D 0 - I - 0x01189C 04:988C: D3        .byte $D3   ; 
- D 0 - I - 0x01189D 04:988D: D4        .byte $D4   ; 
- D 0 - I - 0x01189E 04:988E: C3        .byte $C3   ; 
- D 0 - I - 0x01189F 04:988F: D3        .byte $D3   ; 
- D 0 - I - 0x0118A0 04:9890: C5        .byte $C5   ; 
off_9891_00:
- D 0 - I - 0x0118A1 04:9891: CA        .byte $CA   ; 
- D 0 - I - 0x0118A2 04:9892: CA        .byte $CA   ; 
- D 0 - I - 0x0118A3 04:9893: C3        .byte $C3   ; 
- D 0 - I - 0x0118A4 04:9894: C4        .byte $C4   ; 
- D 0 - I - 0x0118A5 04:9895: D3        .byte $D3   ; 
- D 0 - I - 0x0118A6 04:9896: D4        .byte $D4   ; 
off_9897_00:
- D 0 - I - 0x0118A7 04:9897: E0        .byte $E0   ; 
- D 0 - I - 0x0118A8 04:9898: F2        .byte $F2   ; 
- D 0 - I - 0x0118A9 04:9899: F3        .byte $F3   ; 
- D 0 - I - 0x0118AA 04:989A: F4        .byte $F4   ; 
- D 0 - I - 0x0118AB 04:989B: E2        .byte $E2   ; 
- D 0 - I - 0x0118AC 04:989C: E1        .byte $E1   ; 
off_989D_00:
- D 0 - I - 0x0118AD 04:989D: 1C        .byte $1C   ; 
- D 0 - I - 0x0118AE 04:989E: 1D        .byte $1D   ; 
- D 0 - I - 0x0118AF 04:989F: 1E        .byte $1E   ; 
- D 0 - I - 0x0118B0 04:98A0: 1F        .byte $1F   ; 
- D 0 - I - 0x0118B1 04:98A1: 3C        .byte $3C   ; 
- D 0 - I - 0x0118B2 04:98A2: 2C        .byte $2C   ; 
off_98A3_00:
- - - - - - 0x0118B3 04:98A3: C6        .byte $C6   ; 
- - - - - - 0x0118B4 04:98A4: C7        .byte $C7   ; 
- - - - - - 0x0118B5 04:98A5: D6        .byte $D6   ; 
- - - - - - 0x0118B6 04:98A6: D7        .byte $D7   ; 
- - - - - - 0x0118B7 04:98A7: CA        .byte $CA   ; 
- - - - - - 0x0118B8 04:98A8: DA        .byte $DA   ; 
off_98A9_00:
- - - - - - 0x0118B9 04:98A9: D8        .byte $D8   ; 
- - - - - - 0x0118BA 04:98AA: D9        .byte $D9   ; 
- - - - - - 0x0118BB 04:98AB: DA        .byte $DA   ; 
- - - - - - 0x0118BC 04:98AC: C8        .byte $C8   ; 
- - - - - - 0x0118BD 04:98AD: C9        .byte $C9   ; 
- - - - - - 0x0118BE 04:98AE: C6        .byte $C6   ; 
off_98AF_00:
- - - - - - 0x0118BF 04:98AF: C8        .byte $C8   ; 
- - - - - - 0x0118C0 04:98B0: D8        .byte $D8   ; 
- - - - - - 0x0118C1 04:98B1: CA        .byte $CA   ; 
off_98B2_00:
- - - - - - 0x0118C2 04:98B2: C9        .byte $C9   ; 
- - - - - - 0x0118C3 04:98B3: D9        .byte $D9   ; 
- - - - - - 0x0118C4 04:98B4: DA        .byte $DA   ; 
- - - - - - 0x0118C5 04:98B5: C8        .byte $C8   ; 
- - - - - - 0x0118C6 04:98B6: D8        .byte $D8   ; 
- - - - - - 0x0118C7 04:98B7: CA        .byte $CA   ; 
off_98B8_00:
- D 0 - I - 0x0118C8 04:98B8: E8        .byte $E8   ; 
- D 0 - I - 0x0118C9 04:98B9: E9        .byte $E9   ; 
- D 0 - I - 0x0118CA 04:98BA: F8        .byte $F8   ; 
- D 0 - I - 0x0118CB 04:98BB: F9        .byte $F9   ; 
- D 0 - I - 0x0118CC 04:98BC: CA        .byte $CA   ; 
- D 0 - I - 0x0118CD 04:98BD: CA        .byte $CA   ; 
off_98BE_00:
- D 0 - I - 0x0118CE 04:98BE: A0        .byte $A0   ; 
- D 0 - I - 0x0118CF 04:98BF: A1        .byte $A1   ; 
- D 0 - I - 0x0118D0 04:98C0: A2        .byte $A2   ; 
- D 0 - I - 0x0118D1 04:98C1: B0        .byte $B0   ; 
- D 0 - I - 0x0118D2 04:98C2: B1        .byte $B1   ; 
- D 0 - I - 0x0118D3 04:98C3: B2        .byte $B2   ; 
off_98C4_00:
- D 0 - I - 0x0118D4 04:98C4: E0        .byte $E0   ; 
- D 0 - I - 0x0118D5 04:98C5: E1        .byte $E1   ; 
- D 0 - I - 0x0118D6 04:98C6: E2        .byte $E2   ; 
- D 0 - I - 0x0118D7 04:98C7: F0        .byte $F0   ; 
- D 0 - I - 0x0118D8 04:98C8: F1        .byte $F1   ; 
- D 0 - I - 0x0118D9 04:98C9: F2        .byte $F2   ; 
off_98CA_00:
- D 0 - I - 0x0118DA 04:98CA: A3        .byte $A3   ; 
- D 0 - I - 0x0118DB 04:98CB: A4        .byte $A4   ; 
- D 0 - I - 0x0118DC 04:98CC: A5        .byte $A5   ; 
- D 0 - I - 0x0118DD 04:98CD: B3        .byte $B3   ; 
- D 0 - I - 0x0118DE 04:98CE: B4        .byte $B4   ; 
- D 0 - I - 0x0118DF 04:98CF: B5        .byte $B5   ; 
off_98D0_00:
- D 0 - I - 0x0118E0 04:98D0: C3        .byte $C3   ; 
- D 0 - I - 0x0118E1 04:98D1: C4        .byte $C4   ; 
- D 0 - I - 0x0118E2 04:98D2: C5        .byte $C5   ; 
- D 0 - I - 0x0118E3 04:98D3: D3        .byte $D3   ; 
- D 0 - I - 0x0118E4 04:98D4: D4        .byte $D4   ; 
- D 0 - I - 0x0118E5 04:98D5: D5        .byte $D5   ; 
off_98D6_00:
- D 0 - I - 0x0118E6 04:98D6: E3        .byte $E3   ; 
- D 0 - I - 0x0118E7 04:98D7: E4        .byte $E4   ; 
- D 0 - I - 0x0118E8 04:98D8: E5        .byte $E5   ; 
- D 0 - I - 0x0118E9 04:98D9: F3        .byte $F3   ; 
- D 0 - I - 0x0118EA 04:98DA: F4        .byte $F4   ; 
- D 0 - I - 0x0118EB 04:98DB: F5        .byte $F5   ; 
off_98DC_00:
- D 0 - I - 0x0118EC 04:98DC: A6        .byte $A6   ; 
- D 0 - I - 0x0118ED 04:98DD: A7        .byte $A7   ; 
- D 0 - I - 0x0118EE 04:98DE: A8        .byte $A8   ; 
- D 0 - I - 0x0118EF 04:98DF: B6        .byte $B6   ; 
- D 0 - I - 0x0118F0 04:98E0: B7        .byte $B7   ; 
- D 0 - I - 0x0118F1 04:98E1: B8        .byte $B8   ; 
off_98E2_00:
- D 0 - I - 0x0118F2 04:98E2: C6        .byte $C6   ; 
- D 0 - I - 0x0118F3 04:98E3: C7        .byte $C7   ; 
- D 0 - I - 0x0118F4 04:98E4: C8        .byte $C8   ; 
- D 0 - I - 0x0118F5 04:98E5: D6        .byte $D6   ; 
- D 0 - I - 0x0118F6 04:98E6: D7        .byte $D7   ; 
- D 0 - I - 0x0118F7 04:98E7: D8        .byte $D8   ; 
off_98E8_00:
- D 0 - I - 0x0118F8 04:98E8: E6        .byte $E6   ; 
- D 0 - I - 0x0118F9 04:98E9: E7        .byte $E7   ; 
- D 0 - I - 0x0118FA 04:98EA: E8        .byte $E8   ; 
- D 0 - I - 0x0118FB 04:98EB: F6        .byte $F6   ; 
- D 0 - I - 0x0118FC 04:98EC: F7        .byte $F7   ; 
- D 0 - I - 0x0118FD 04:98ED: F8        .byte $F8   ; 
off_98EE_00:
- D 0 - I - 0x0118FE 04:98EE: C9        .byte $C9   ; 
- D 0 - I - 0x0118FF 04:98EF: CA        .byte $CA   ; 
- D 0 - I - 0x011900 04:98F0: CB        .byte $CB   ; 
- D 0 - I - 0x011901 04:98F1: D9        .byte $D9   ; 
- D 0 - I - 0x011902 04:98F2: DA        .byte $DA   ; 
- D 0 - I - 0x011903 04:98F3: DB        .byte $DB   ; 
off_98F4_00:
- D 0 - I - 0x011904 04:98F4: E9        .byte $E9   ; 
- D 0 - I - 0x011905 04:98F5: EA        .byte $EA   ; 
- D 0 - I - 0x011906 04:98F6: EB        .byte $EB   ; 
- D 0 - I - 0x011907 04:98F7: F9        .byte $F9   ; 
- D 0 - I - 0x011908 04:98F8: FA        .byte $FA   ; 
- D 0 - I - 0x011909 04:98F9: FB        .byte $FB   ; 
off_98FA_00:
- D 0 - I - 0x01190A 04:98FA: EC        .byte $EC   ; 
- D 0 - I - 0x01190B 04:98FB: ED        .byte $ED   ; 
- D 0 - I - 0x01190C 04:98FC: EE        .byte $EE   ; 
- D 0 - I - 0x01190D 04:98FD: FC        .byte $FC   ; 
- D 0 - I - 0x01190E 04:98FE: FD        .byte $FD   ; 
- D 0 - I - 0x01190F 04:98FF: FE        .byte $FE   ; 
off_9900_00:
- D 0 - I - 0x011910 04:9900: 2D        .byte $2D   ; 
- D 0 - I - 0x011911 04:9901: 2E        .byte $2E   ; 
- D 0 - I - 0x011912 04:9902: 3D        .byte $3D   ; 
- D 0 - I - 0x011913 04:9903: 3E        .byte $3E   ; 
- D 0 - I - 0x011914 04:9904: 2F        .byte $2F   ; 
off_9905_00:
- D 0 - I - 0x011915 04:9905: E0        .byte $E0   ; 
- D 0 - I - 0x011916 04:9906: E1        .byte $E1   ; 
- D 0 - I - 0x011917 04:9907: F0        .byte $F0   ; 
- D 0 - I - 0x011918 04:9908: F1        .byte $F1   ; 
- D 0 - I - 0x011919 04:9909: E2        .byte $E2   ; 
off_990A_00:
- D 0 - I - 0x01191A 04:990A: F4        .byte $F4   ; 
- D 0 - I - 0x01191B 04:990B: E4        .byte $E4   ; 
- D 0 - I - 0x01191C 04:990C: F4        .byte $F4   ; 
- D 0 - I - 0x01191D 04:990D: E4        .byte $E4   ; 
off_990E_00:
- D 0 - I - 0x01191E 04:990E: E3        .byte $E3   ; 
- D 0 - I - 0x01191F 04:990F: E2        .byte $E2   ; 
- D 0 - I - 0x011920 04:9910: F2        .byte $F2   ; 
- D 0 - I - 0x011921 04:9911: F3        .byte $F3   ; 
off_9912_00:
- D 0 - I - 0x011922 04:9912: D8        .byte $D8   ; 
- D 0 - I - 0x011923 04:9913: D8        .byte $D8   ; 
- D 0 - I - 0x011924 04:9914: D8        .byte $D8   ; 
- D 0 - I - 0x011925 04:9915: D8        .byte $D8   ; 
off_9916_00:
- D 0 - I - 0x011926 04:9916: D9        .byte $D9   ; 
- D 0 - I - 0x011927 04:9917: D9        .byte $D9   ; 
- D 0 - I - 0x011928 04:9918: D9        .byte $D9   ; 
- D 0 - I - 0x011929 04:9919: D9        .byte $D9   ; 
off_991A_00:
- D 0 - I - 0x01192A 04:991A: C8        .byte $C8   ; 
- D 0 - I - 0x01192B 04:991B: C9        .byte $C9   ; 
- D 0 - I - 0x01192C 04:991C: C9        .byte $C9   ; 
- D 0 - I - 0x01192D 04:991D: C9        .byte $C9   ; 
off_991E_00:
- D 0 - I - 0x01192E 04:991E: DA        .byte $DA   ; 
- D 0 - I - 0x01192F 04:991F: DA        .byte $DA   ; 
- D 0 - I - 0x011930 04:9920: DA        .byte $DA   ; 
- D 0 - I - 0x011931 04:9921: C8        .byte $C8   ; 
off_9922_00:
- D 0 - I - 0x011932 04:9922: FA        .byte $FA   ; 
- D 0 - I - 0x011933 04:9923: FB        .byte $FB   ; 
- D 0 - I - 0x011934 04:9924: FA        .byte $FA   ; 
- D 0 - I - 0x011935 04:9925: FB        .byte $FB   ; 
off_9926_00:
- D 0 - I - 0x011936 04:9926: F4        .byte $F4   ; 
- D 0 - I - 0x011937 04:9927: F4        .byte $F4   ; 
off_9928_00:
- D 0 - I - 0x011938 04:9928: F5        .byte $F5   ; 
- D 0 - I - 0x011939 04:9929: F5        .byte $F5   ; 
- D 0 - I - 0x01193A 04:992A: F4        .byte $F4   ; 
- D 0 - I - 0x01193B 04:992B: F4        .byte $F4   ; 
off_992C_00:
- D 0 - I - 0x01193C 04:992C: E7        .byte $E7   ; 
- D 0 - I - 0x01193D 04:992D: F7        .byte $F7   ; 
- D 0 - I - 0x01193E 04:992E: E1        .byte $E1   ; 
- D 0 - I - 0x01193F 04:992F: F3        .byte $F3   ; 
off_9930_00:
- D 0 - I - 0x011940 04:9930: E6        .byte $E6   ; 
- D 0 - I - 0x011941 04:9931: E7        .byte $E7   ; 
- D 0 - I - 0x011942 04:9932: F6        .byte $F6   ; 
- D 0 - I - 0x011943 04:9933: F7        .byte $F7   ; 
off_9934_00:
- D 0 - I - 0x011944 04:9934: E8        .byte $E8   ; 
- D 0 - I - 0x011945 04:9935: E7        .byte $E7   ; 
- D 0 - I - 0x011946 04:9936: F8        .byte $F8   ; 
- D 0 - I - 0x011947 04:9937: F7        .byte $F7   ; 
off_9938_00:
- D 0 - I - 0x011948 04:9938: C5        .byte $C5   ; 
- D 0 - I - 0x011949 04:9939: C5        .byte $C5   ; 
- D 0 - I - 0x01194A 04:993A: D5        .byte $D5   ; 
- D 0 - I - 0x01194B 04:993B: D5        .byte $D5   ; 
off_993C_00:
- D 0 - I - 0x01194C 04:993C: E2        .byte $E2   ; 
- D 0 - I - 0x01194D 04:993D: E3        .byte $E3   ; 
- D 0 - I - 0x01194E 04:993E: F2        .byte $F2   ; 
- D 0 - I - 0x01194F 04:993F: F3        .byte $F3   ; 
off_9940_00:
- D 0 - I - 0x011950 04:9940: F1        .byte $F1   ; 
- D 0 - I - 0x011951 04:9941: F0        .byte $F0   ; 
- D 0 - I - 0x011952 04:9942: E0        .byte $E0   ; 
- D 0 - I - 0x011953 04:9943: E1        .byte $E1   ; 
off_9944_00:
- D 0 - I - 0x011954 04:9944: F3        .byte $F3   ; 
- D 0 - I - 0x011955 04:9945: F2        .byte $F2   ; 
- D 0 - I - 0x011956 04:9946: E2        .byte $E2   ; 
- D 0 - I - 0x011957 04:9947: E3        .byte $E3   ; 
off_9948_00:
- D 0 - I - 0x011958 04:9948: FB        .byte $FB   ; 
- D 0 - I - 0x011959 04:9949: F9        .byte $F9   ; 
- D 0 - I - 0x01195A 04:994A: FA        .byte $FA   ; 
off_994B_00:
- D 0 - I - 0x01195B 04:994B: FA        .byte $FA   ; 
- D 0 - I - 0x01195C 04:994C: FB        .byte $FB   ; 
- D 0 - I - 0x01195D 04:994D: FA        .byte $FA   ; 
- D 0 - I - 0x01195E 04:994E: F9        .byte $F9   ; 
off_994F_00:
- D 0 - I - 0x01195F 04:994F: 46        .byte $46   ; 
- D 0 - I - 0x011960 04:9950: 47        .byte $47   ; 
- D 0 - I - 0x011961 04:9951: 00        .byte $00   ; 
- D 0 - I - 0x011962 04:9952: 01        .byte $01   ; 
off_9953_00:
- D 0 - I - 0x011963 04:9953: E3        .byte $E3   ; 
- D 0 - I - 0x011964 04:9954: E4        .byte $E4   ; 
- D 0 - I - 0x011965 04:9955: CA        .byte $CA   ; 
- D 0 - I - 0x011966 04:9956: FB        .byte $FB   ; 
off_9957_00:
- D 0 - I - 0x011967 04:9957: F2        .byte $F2   ; 
- D 0 - I - 0x011968 04:9958: F2        .byte $F2   ; 
- D 0 - I - 0x011969 04:9959: E2        .byte $E2   ; 
- D 0 - I - 0x01196A 04:995A: E3        .byte $E3   ; 
off_995B_00:
- - - - - - 0x01196B 04:995B: E8        .byte $E8   ; 
- - - - - - 0x01196C 04:995C: FA        .byte $FA   ; 
- - - - - - 0x01196D 04:995D: E9        .byte $E9   ; 
- - - - - - 0x01196E 04:995E: F9        .byte $F9   ; 
off_995F_00:
- D 0 - I - 0x01196F 04:995F: 48        .byte $48   ; 
- D 0 - I - 0x011970 04:9960: 49        .byte $49   ; 
- D 0 - I - 0x011971 04:9961: 00        .byte $00   ; 
- D 0 - I - 0x011972 04:9962: 01        .byte $01   ; 
off_9963_00:
- D 0 - I - 0x011973 04:9963: 4A        .byte $4A   ; 
- D 0 - I - 0x011974 04:9964: 4B        .byte $4B   ; 
off_9965_00:
- D 0 - I - 0x011975 04:9965: 00        .byte $00   ; 
- D 0 - I - 0x011976 04:9966: 01        .byte $01   ; 
- - - - - - 0x011977 04:9967: 11        .byte $11   ; 
- - - - - - 0x011978 04:9968: 90        .byte $90   ; 
off_9969_00:
- D 0 - I - 0x011979 04:9969: EA        .byte $EA   ; 
- D 0 - I - 0x01197A 04:996A: F3        .byte $F3   ; 
- D 0 - I - 0x01197B 04:996B: E5        .byte $E5   ; 
- D 0 - I - 0x01197C 04:996C: CA        .byte $CA   ; 
off_996D_00:
- D 0 - I - 0x01197D 04:996D: E5        .byte $E5   ; 
- D 0 - I - 0x01197E 04:996E: E5        .byte $E5   ; 
- D 0 - I - 0x01197F 04:996F: E5        .byte $E5   ; 
- D 0 - I - 0x011980 04:9970: E5        .byte $E5   ; 
off_9971_00:
- D 0 - I - 0x011981 04:9971: F5        .byte $F5   ; 
- D 0 - I - 0x011982 04:9972: F5        .byte $F5   ; 
- D 0 - I - 0x011983 04:9973: F5        .byte $F5   ; 
- D 0 - I - 0x011984 04:9974: F5        .byte $F5   ; 
off_9975_00:
- D 0 - I - 0x011985 04:9975: E6        .byte $E6   ; 
- D 0 - I - 0x011986 04:9976: E7        .byte $E7   ; 
- D 0 - I - 0x011987 04:9977: E6        .byte $E6   ; 
off_9978_00:
- D 0 - I - 0x011988 04:9978: E7        .byte $E7   ; 
- D 0 - I - 0x011989 04:9979: E7        .byte $E7   ; 
- D 0 - I - 0x01198A 04:997A: F6        .byte $F6   ; 
- D 0 - I - 0x01198B 04:997B: F7        .byte $F7   ; 
off_997C_00:
- D 0 - I - 0x01198C 04:997C: E7        .byte $E7   ; 
- D 0 - I - 0x01198D 04:997D: E7        .byte $E7   ; 
- D 0 - I - 0x01198E 04:997E: FC        .byte $FC   ; 
- D 0 - I - 0x01198F 04:997F: FC        .byte $FC   ; 
off_9980_00:
- D 0 - I - 0x011990 04:9980: CA        .byte $CA   ; 
- D 0 - I - 0x011991 04:9981: DA        .byte $DA   ; 
- D 0 - I - 0x011992 04:9982: FC        .byte $FC   ; 
- D 0 - I - 0x011993 04:9983: FD        .byte $FD   ; 
off_9984_00:
- D 0 - I - 0x011994 04:9984: E1        .byte $E1   ; 
- D 0 - I - 0x011995 04:9985: F1        .byte $F1   ; 
- D 0 - I - 0x011996 04:9986: E1        .byte $E1   ; 
- D 0 - I - 0x011997 04:9987: F1        .byte $F1   ; 
off_9988_00:
- D 0 - I - 0x011998 04:9988: E4        .byte $E4   ; 
- D 0 - I - 0x011999 04:9989: E5        .byte $E5   ; 
- D 0 - I - 0x01199A 04:998A: D2        .byte $D2   ; 
off_998B_00:
- D 0 - I - 0x01199B 04:998B: E6        .byte $E6   ; 
- D 0 - I - 0x01199C 04:998C: E9        .byte $E9   ; 
- D 0 - I - 0x01199D 04:998D: EA        .byte $EA   ; 
off_998E_00:
- D 0 - I - 0x01199E 04:998E: C2        .byte $C2   ; 
- D 0 - I - 0x01199F 04:998F: C2        .byte $C2   ; 
off_9990_00:
- - - - - - 0x0119A0 04:9990: B7        .byte $B7   ; 
- - - - - - 0x0119A1 04:9991: B7        .byte $B7   ; 
off_9992_00:
- D 0 - I - 0x0119A2 04:9992: E4        .byte $E4   ; 
- D 0 - I - 0x0119A3 04:9993: E4        .byte $E4   ; 
off_9994_00:
- D 0 - I - 0x0119A4 04:9994: 41        .byte $41   ; 
- D 0 - I - 0x0119A5 04:9995: 45        .byte $45   ; 
off_9996_00:
- D 0 - I - 0x0119A6 04:9996: 44        .byte $44   ; 
- D 0 - I - 0x0119A7 04:9997: 41        .byte $41   ; 
off_9998_01:
- D 0 - I - 0x0119A8 04:9998: 03        .byte $03   ; 
- D 0 - I - 0x0119A9 04:9999: 03        .byte $03   ; 
- D 0 - I - 0x0119AA 04:999A: 03        .byte $03   ; 
- D 0 - I - 0x0119AB 04:999B: 03        .byte $03   ; 
- D 0 - I - 0x0119AC 04:999C: 03        .byte $03   ; 
- D 0 - I - 0x0119AD 04:999D: 03        .byte $03   ; 
- D 0 - I - 0x0119AE 04:999E: 03        .byte $03   ; 
- D 0 - I - 0x0119AF 04:999F: 03        .byte $03   ; 
- D 0 - I - 0x0119B0 04:99A0: 03        .byte $03   ; 
- D 0 - I - 0x0119B1 04:99A1: 03        .byte $03   ; 
- D 0 - I - 0x0119B2 04:99A2: 03        .byte $03   ; 
- D 0 - I - 0x0119B3 04:99A3: 03        .byte $03   ; 
- D 0 - I - 0x0119B4 04:99A4: 03        .byte $03   ; 
- D 0 - I - 0x0119B5 04:99A5: 03        .byte $03   ; 
- D 0 - I - 0x0119B6 04:99A6: 02        .byte $02   ; 
- D 0 - I - 0x0119B7 04:99A7: 02        .byte $02   ; 
- D 0 - I - 0x0119B8 04:99A8: 02        .byte $02   ; 
- D 0 - I - 0x0119B9 04:99A9: 42        .byte $42   ; 
- D 0 - I - 0x0119BA 04:99AA: 02        .byte $02   ; 
- D 0 - I - 0x0119BB 04:99AB: 02        .byte $02   ; 
- D 0 - I - 0x0119BC 04:99AC: 02        .byte $02   ; 
- D 0 - I - 0x0119BD 04:99AD: 42        .byte $42   ; 
- D 0 - I - 0x0119BE 04:99AE: 42        .byte $42   ; 
- D 0 - I - 0x0119BF 04:99AF: 02        .byte $02   ; 
off_99B0_01:
- D 0 - I - 0x0119C0 04:99B0: 03        .byte $03   ; 
- D 0 - I - 0x0119C1 04:99B1: 03        .byte $03   ; 
- D 0 - I - 0x0119C2 04:99B2: 03        .byte $03   ; 
- D 0 - I - 0x0119C3 04:99B3: 03        .byte $03   ; 
- D 0 - I - 0x0119C4 04:99B4: 03        .byte $03   ; 
- D 0 - I - 0x0119C5 04:99B5: 03        .byte $03   ; 
- D 0 - I - 0x0119C6 04:99B6: 03        .byte $03   ; 
- D 0 - I - 0x0119C7 04:99B7: 03        .byte $03   ; 
- D 0 - I - 0x0119C8 04:99B8: 03        .byte $03   ; 
- D 0 - I - 0x0119C9 04:99B9: 02        .byte $02   ; 
- D 0 - I - 0x0119CA 04:99BA: 02        .byte $02   ; 
- D 0 - I - 0x0119CB 04:99BB: 02        .byte $02   ; 
- D 0 - I - 0x0119CC 04:99BC: 02        .byte $02   ; 
- D 0 - I - 0x0119CD 04:99BD: 42        .byte $42   ; 
- D 0 - I - 0x0119CE 04:99BE: 03        .byte $03   ; 
- D 0 - I - 0x0119CF 04:99BF: 03        .byte $03   ; 
- D 0 - I - 0x0119D0 04:99C0: 03        .byte $03   ; 
- D 0 - I - 0x0119D1 04:99C1: 03        .byte $03   ; 
- D 0 - I - 0x0119D2 04:99C2: 03        .byte $03   ; 
- D 0 - I - 0x0119D3 04:99C3: 02        .byte $02   ; 
- D 0 - I - 0x0119D4 04:99C4: 02        .byte $02   ; 
- D 0 - I - 0x0119D5 04:99C5: 42        .byte $42   ; 
- D 0 - I - 0x0119D6 04:99C6: 42        .byte $42   ; 
- D 0 - I - 0x0119D7 04:99C7: 02        .byte $02   ; 
off_99C8_01:
- D 0 - I - 0x0119D8 04:99C8: 01        .byte $01   ; 
off_99C9_01:
- D 0 - I - 0x0119D9 04:99C9: 01        .byte $01   ; 
off_99CA_01:
- D 0 - I - 0x0119DA 04:99CA: 01        .byte $01   ; 
- D 0 - I - 0x0119DB 04:99CB: 01        .byte $01   ; 
off_99CC_01:
- D 0 - I - 0x0119DC 04:99CC: 01        .byte $01   ; 
- D 0 - I - 0x0119DD 04:99CD: 01        .byte $01   ; 
off_99CE_01:
- D 0 - I - 0x0119DE 04:99CE: 00        .byte $00   ; 
- D 0 - I - 0x0119DF 04:99CF: 00        .byte $00   ; 
- D 0 - I - 0x0119E0 04:99D0: 01        .byte $01   ; 
- D 0 - I - 0x0119E1 04:99D1: 01        .byte $01   ; 
off_99D2_01:
- D 0 - I - 0x0119E2 04:99D2: 00        .byte $00   ; 
off_99D3_02:
off_99D3_01:
- D 0 - I - 0x0119E3 04:99D3: 00        .byte $00   ; 
- D 0 - I - 0x0119E4 04:99D4: 00        .byte $00   ; 
- D 0 - I - 0x0119E5 04:99D5: 00        .byte $00   ; 
- D 0 - I - 0x0119E6 04:99D6: 00        .byte $00   ; 
- D 0 - I - 0x0119E7 04:99D7: 01        .byte $01   ; 
off_99D8_01:
- D 0 - I - 0x0119E8 04:99D8: 01        .byte $01   ; 
- D 0 - I - 0x0119E9 04:99D9: 01        .byte $01   ; 
- D 0 - I - 0x0119EA 04:99DA: 01        .byte $01   ; 
- D 0 - I - 0x0119EB 04:99DB: 01        .byte $01   ; 
- D 0 - I - 0x0119EC 04:99DC: 00        .byte $00   ; 
- D 0 - I - 0x0119ED 04:99DD: 00        .byte $00   ; 
- D 0 - I - 0x0119EE 04:99DE: 00        .byte $00   ; 
- D 0 - I - 0x0119EF 04:99DF: 00        .byte $00   ; 
- D 0 - I - 0x0119F0 04:99E0: 01        .byte $01   ; 
- D 0 - I - 0x0119F1 04:99E1: 00        .byte $00   ; 
- D 0 - I - 0x0119F2 04:99E2: 01        .byte $01   ; 
- D 0 - I - 0x0119F3 04:99E3: 01        .byte $01   ; 
- D 0 - I - 0x0119F4 04:99E4: 01        .byte $01   ; 
- D 0 - I - 0x0119F5 04:99E5: 00        .byte $00   ; 
off_99E6_01:
- D 0 - I - 0x0119F6 04:99E6: 00        .byte $00   ; 
- D 0 - I - 0x0119F7 04:99E7: 00        .byte $00   ; 
off_99E8_01:
- D 0 - I - 0x0119F8 04:99E8: 01        .byte $01   ; 
- D 0 - I - 0x0119F9 04:99E9: 01        .byte $01   ; 
- D 0 - I - 0x0119FA 04:99EA: 01        .byte $01   ; 
- D 0 - I - 0x0119FB 04:99EB: 01        .byte $01   ; 
- D 0 - I - 0x0119FC 04:99EC: 01        .byte $01   ; 
- D 0 - I - 0x0119FD 04:99ED: 01        .byte $01   ; 
- D 0 - I - 0x0119FE 04:99EE: 01        .byte $01   ; 
- D 0 - I - 0x0119FF 04:99EF: 01        .byte $01   ; 
- D 0 - I - 0x011A00 04:99F0: 01        .byte $01   ; 
- D 0 - I - 0x011A01 04:99F1: 01        .byte $01   ; 
off_99F2_01:
- D 0 - I - 0x011A02 04:99F2: 01        .byte $01   ; 
- D 0 - I - 0x011A03 04:99F3: 01        .byte $01   ; 
- D 0 - I - 0x011A04 04:99F4: 01        .byte $01   ; 
- D 0 - I - 0x011A05 04:99F5: 01        .byte $01   ; 
- D 0 - I - 0x011A06 04:99F6: 01        .byte $01   ; 
- D 0 - I - 0x011A07 04:99F7: 01        .byte $01   ; 
- D 0 - I - 0x011A08 04:99F8: 01        .byte $01   ; 
off_99F9_01:
- D 0 - I - 0x011A09 04:99F9: 40        .byte $40   ; 
off_99FA_01:
- D 0 - I - 0x011A0A 04:99FA: 00        .byte $00   ; 
- D 0 - I - 0x011A0B 04:99FB: 00        .byte $00   ; 
- D 0 - I - 0x011A0C 04:99FC: 00        .byte $00   ; 
- D 0 - I - 0x011A0D 04:99FD: 00        .byte $00   ; 
- D 0 - I - 0x011A0E 04:99FE: 00        .byte $00   ; 
off_99FF_01:
- D 0 - I - 0x011A0F 04:99FF: 00        .byte $00   ; 
off_9A00_01:
- D 0 - I - 0x011A10 04:9A00: 00        .byte $00   ; 
off_9A01_01:
- D 0 - I - 0x011A11 04:9A01: 00        .byte $00   ; 
off_9A02_01:
- D 0 - I - 0x011A12 04:9A02: 40        .byte $40   ; 
- D 0 - I - 0x011A13 04:9A03: 40        .byte $40   ; 
- D 0 - I - 0x011A14 04:9A04: 40        .byte $40   ; 
- D 0 - I - 0x011A15 04:9A05: 40        .byte $40   ; 
- D 0 - I - 0x011A16 04:9A06: 40        .byte $40   ; 
- D 0 - I - 0x011A17 04:9A07: 40        .byte $40   ; 
- D 0 - I - 0x011A18 04:9A08: 40        .byte $40   ; 
- D 0 - I - 0x011A19 04:9A09: 40        .byte $40   ; 
- D 0 - I - 0x011A1A 04:9A0A: 00        .byte $00   ; 
- D 0 - I - 0x011A1B 04:9A0B: 40        .byte $40   ; 
off_9A0C_01:
- D 0 - I - 0x011A1C 04:9A0C: 01        .byte $01   ; 
off_9A0D_01:
- D 0 - I - 0x011A1D 04:9A0D: 01        .byte $01   ; 
- D 0 - I - 0x011A1E 04:9A0E: 01        .byte $01   ; 
- D 0 - I - 0x011A1F 04:9A0F: 01        .byte $01   ; 
- D 0 - I - 0x011A20 04:9A10: 01        .byte $01   ; 
- D 0 - I - 0x011A21 04:9A11: 01        .byte $01   ; 
- D 0 - I - 0x011A22 04:9A12: 01        .byte $01   ; 
- D 0 - I - 0x011A23 04:9A13: 01        .byte $01   ; 
off_9A14_01:
- D 0 - I - 0x011A24 04:9A14: 00        .byte $00   ; 
off_9A15_01:
- D 0 - I - 0x011A25 04:9A15: 00        .byte $00   ; 
- D 0 - I - 0x011A26 04:9A16: 00        .byte $00   ; 
- D 0 - I - 0x011A27 04:9A17: 01        .byte $01   ; 
- D 0 - I - 0x011A28 04:9A18: 01        .byte $01   ; 
- D 0 - I - 0x011A29 04:9A19: 01        .byte $01   ; 
- D 0 - I - 0x011A2A 04:9A1A: 01        .byte $01   ; 
- D 0 - I - 0x011A2B 04:9A1B: 00        .byte $00   ; 
- D 0 - I - 0x011A2C 04:9A1C: 00        .byte $00   ; 
- D 0 - I - 0x011A2D 04:9A1D: 00        .byte $00   ; 
off_9A1E_01:
- D 0 - I - 0x011A2E 04:9A1E: 01        .byte $01   ; 
- D 0 - I - 0x011A2F 04:9A1F: 01        .byte $01   ; 
- D 0 - I - 0x011A30 04:9A20: 01        .byte $01   ; 
- D 0 - I - 0x011A31 04:9A21: 01        .byte $01   ; 
- D 0 - I - 0x011A32 04:9A22: 01        .byte $01   ; 
- D 0 - I - 0x011A33 04:9A23: 01        .byte $01   ; 
- D 0 - I - 0x011A34 04:9A24: 01        .byte $01   ; 
- D 0 - I - 0x011A35 04:9A25: 01        .byte $01   ; 
- D 0 - I - 0x011A36 04:9A26: 01        .byte $01   ; 
- D 0 - I - 0x011A37 04:9A27: 01        .byte $01   ; 
- D 0 - I - 0x011A38 04:9A28: 01        .byte $01   ; 
- D 0 - I - 0x011A39 04:9A29: 01        .byte $01   ; 
- D 0 - I - 0x011A3A 04:9A2A: 01        .byte $01   ; 
- D 0 - I - 0x011A3B 04:9A2B: 01        .byte $01   ; 
off_9A2C_01:
- D 0 - I - 0x011A3C 04:9A2C: 01        .byte $01   ; 
off_9A2D_01:
- D 0 - I - 0x011A3D 04:9A2D: 01        .byte $01   ; 
- D 0 - I - 0x011A3E 04:9A2E: 01        .byte $01   ; 
- D 0 - I - 0x011A3F 04:9A2F: 00        .byte $00   ; 
- D 0 - I - 0x011A40 04:9A30: 01        .byte $01   ; 
- D 0 - I - 0x011A41 04:9A31: 01        .byte $01   ; 
- D 0 - I - 0x011A42 04:9A32: 01        .byte $01   ; 
- D 0 - I - 0x011A43 04:9A33: 01        .byte $01   ; 
- D 0 - I - 0x011A44 04:9A34: 00        .byte $00   ; 
- D 0 - I - 0x011A45 04:9A35: 01        .byte $01   ; 
- D 0 - I - 0x011A46 04:9A36: 00        .byte $00   ; 
- D 0 - I - 0x011A47 04:9A37: 01        .byte $01   ; 
- D 0 - I - 0x011A48 04:9A38: 01        .byte $01   ; 
- D 0 - I - 0x011A49 04:9A39: 01        .byte $01   ; 
- D 0 - I - 0x011A4A 04:9A3A: 01        .byte $01   ; 
- D 0 - I - 0x011A4B 04:9A3B: 01        .byte $01   ; 
- D 0 - I - 0x011A4C 04:9A3C: 01        .byte $01   ; 
off_9A3D_01:
- D 0 - I - 0x011A4D 04:9A3D: 00        .byte $00   ; 
- D 0 - I - 0x011A4E 04:9A3E: 01        .byte $01   ; 
- D 0 - I - 0x011A4F 04:9A3F: 01        .byte $01   ; 
- D 0 - I - 0x011A50 04:9A40: 01        .byte $01   ; 
- D 0 - I - 0x011A51 04:9A41: 01        .byte $01   ; 
- D 0 - I - 0x011A52 04:9A42: 00        .byte $00   ; 
- D 0 - I - 0x011A53 04:9A43: 00        .byte $00   ; 
- D 0 - I - 0x011A54 04:9A44: 00        .byte $00   ; 
- D 0 - I - 0x011A55 04:9A45: 01        .byte $01   ; 
- D 0 - I - 0x011A56 04:9A46: 00        .byte $00   ; 
- D 0 - I - 0x011A57 04:9A47: 00        .byte $00   ; 
- D 0 - I - 0x011A58 04:9A48: 01        .byte $01   ; 
- D 0 - I - 0x011A59 04:9A49: 01        .byte $01   ; 
- D 0 - I - 0x011A5A 04:9A4A: 01        .byte $01   ; 
- D 0 - I - 0x011A5B 04:9A4B: 01        .byte $01   ; 
- D 0 - I - 0x011A5C 04:9A4C: 01        .byte $01   ; 
- D 0 - I - 0x011A5D 04:9A4D: 00        .byte $00   ; 
off_9A4E_01:
- D 0 - I - 0x011A5E 04:9A4E: 01        .byte $01   ; 
- D 0 - I - 0x011A5F 04:9A4F: 01        .byte $01   ; 
- D 0 - I - 0x011A60 04:9A50: 01        .byte $01   ; 
- D 0 - I - 0x011A61 04:9A51: 01        .byte $01   ; 
- D 0 - I - 0x011A62 04:9A52: 01        .byte $01   ; 
- D 0 - I - 0x011A63 04:9A53: 01        .byte $01   ; 
- D 0 - I - 0x011A64 04:9A54: 01        .byte $01   ; 
- D 0 - I - 0x011A65 04:9A55: 00        .byte $00   ; 
- D 0 - I - 0x011A66 04:9A56: 00        .byte $00   ; 
- D 0 - I - 0x011A67 04:9A57: 00        .byte $00   ; 
- D 0 - I - 0x011A68 04:9A58: 00        .byte $00   ; 
- D 0 - I - 0x011A69 04:9A59: 01        .byte $01   ; 
- D 0 - I - 0x011A6A 04:9A5A: 01        .byte $01   ; 
- D 0 - I - 0x011A6B 04:9A5B: 01        .byte $01   ; 
- D 0 - I - 0x011A6C 04:9A5C: 00        .byte $00   ; 
off_9A5D_01:
- D 0 - I - 0x011A6D 04:9A5D: 00        .byte $00   ; 
- D 0 - I - 0x011A6E 04:9A5E: 00        .byte $00   ; 
- D 0 - I - 0x011A6F 04:9A5F: 01        .byte $01   ; 
- D 0 - I - 0x011A70 04:9A60: 01        .byte $01   ; 
- D 0 - I - 0x011A71 04:9A61: 00        .byte $00   ; 
- D 0 - I - 0x011A72 04:9A62: 00        .byte $00   ; 
- D 0 - I - 0x011A73 04:9A63: 01        .byte $01   ; 
- D 0 - I - 0x011A74 04:9A64: 01        .byte $01   ; 
- D 0 - I - 0x011A75 04:9A65: 01        .byte $01   ; 
- D 0 - I - 0x011A76 04:9A66: 00        .byte $00   ; 
- D 0 - I - 0x011A77 04:9A67: 01        .byte $01   ; 
- D 0 - I - 0x011A78 04:9A68: 01        .byte $01   ; 
- D 0 - I - 0x011A79 04:9A69: 41        .byte $41   ; 
- D 0 - I - 0x011A7A 04:9A6A: 41        .byte $41   ; 
- D 0 - I - 0x011A7B 04:9A6B: 00        .byte $00   ; 
- D 0 - I - 0x011A7C 04:9A6C: 00        .byte $00   ; 
off_9A6D_01:
- D 0 - I - 0x011A7D 04:9A6D: 01        .byte $01   ; 
- D 0 - I - 0x011A7E 04:9A6E: 01        .byte $01   ; 
- D 0 - I - 0x011A7F 04:9A6F: 01        .byte $01   ; 
- D 0 - I - 0x011A80 04:9A70: 01        .byte $01   ; 
- D 0 - I - 0x011A81 04:9A71: 01        .byte $01   ; 
- D 0 - I - 0x011A82 04:9A72: 01        .byte $01   ; 
- D 0 - I - 0x011A83 04:9A73: 00        .byte $00   ; 
- D 0 - I - 0x011A84 04:9A74: 00        .byte $00   ; 
- D 0 - I - 0x011A85 04:9A75: 41        .byte $41   ; 
- D 0 - I - 0x011A86 04:9A76: 41        .byte $41   ; 
- D 0 - I - 0x011A87 04:9A77: 41        .byte $41   ; 
- D 0 - I - 0x011A88 04:9A78: 41        .byte $41   ; 
- D 0 - I - 0x011A89 04:9A79: 41        .byte $41   ; 
- D 0 - I - 0x011A8A 04:9A7A: 41        .byte $41   ; 
- D 0 - I - 0x011A8B 04:9A7B: 40        .byte $40   ; 
- D 0 - I - 0x011A8C 04:9A7C: 40        .byte $40   ; 
off_9A7D_01:
- D 0 - I - 0x011A8D 04:9A7D: 01        .byte $01   ; 
- D 0 - I - 0x011A8E 04:9A7E: 01        .byte $01   ; 
- D 0 - I - 0x011A8F 04:9A7F: 01        .byte $01   ; 
- D 0 - I - 0x011A90 04:9A80: 01        .byte $01   ; 
- D 0 - I - 0x011A91 04:9A81: 01        .byte $01   ; 
- D 0 - I - 0x011A92 04:9A82: C1        .byte $C1   ; 
- D 0 - I - 0x011A93 04:9A83: 01        .byte $01   ; 
off_9A84_01:
- D 0 - I - 0x011A94 04:9A84: 01        .byte $01   ; 
- D 0 - I - 0x011A95 04:9A85: 01        .byte $01   ; 
- D 0 - I - 0x011A96 04:9A86: 01        .byte $01   ; 
- D 0 - I - 0x011A97 04:9A87: 01        .byte $01   ; 
off_9A88_01:
- D 0 - I - 0x011A98 04:9A88: 01        .byte $01   ; 
- D 0 - I - 0x011A99 04:9A89: 01        .byte $01   ; 
- D 0 - I - 0x011A9A 04:9A8A: 01        .byte $01   ; 
- D 0 - I - 0x011A9B 04:9A8B: 01        .byte $01   ; 
- D 0 - I - 0x011A9C 04:9A8C: 41        .byte $41   ; 
off_9A8D_01:
- D 0 - I - 0x011A9D 04:9A8D: 01        .byte $01   ; 
- D 0 - I - 0x011A9E 04:9A8E: 01        .byte $01   ; 
- D 0 - I - 0x011A9F 04:9A8F: 01        .byte $01   ; 
- D 0 - I - 0x011AA0 04:9A90: 01        .byte $01   ; 
- D 0 - I - 0x011AA1 04:9A91: C1        .byte $C1   ; 
- D 0 - I - 0x011AA2 04:9A92: 01        .byte $01   ; 
- D 0 - I - 0x011AA3 04:9A93: 01        .byte $01   ; 
- D 0 - I - 0x011AA4 04:9A94: 01        .byte $01   ; 
- D 0 - I - 0x011AA5 04:9A95: 01        .byte $01   ; 
- D 0 - I - 0x011AA6 04:9A96: 41        .byte $41   ; 
- D 0 - I - 0x011AA7 04:9A97: 01        .byte $01   ; 
- D 0 - I - 0x011AA8 04:9A98: 01        .byte $01   ; 
- D 0 - I - 0x011AA9 04:9A99: 01        .byte $01   ; 
off_9A9A_01:
- D 0 - I - 0x011AAA 04:9A9A: 01        .byte $01   ; 
- D 0 - I - 0x011AAB 04:9A9B: 01        .byte $01   ; 
- D 0 - I - 0x011AAC 04:9A9C: 01        .byte $01   ; 
- D 0 - I - 0x011AAD 04:9A9D: 41        .byte $41   ; 
- D 0 - I - 0x011AAE 04:9A9E: 41        .byte $41   ; 
- D 0 - I - 0x011AAF 04:9A9F: 41        .byte $41   ; 
- D 0 - I - 0x011AB0 04:9AA0: 01        .byte $01   ; 
- D 0 - I - 0x011AB1 04:9AA1: 01        .byte $01   ; 
- D 0 - I - 0x011AB2 04:9AA2: 01        .byte $01   ; 
- D 0 - I - 0x011AB3 04:9AA3: 41        .byte $41   ; 
- D 0 - I - 0x011AB4 04:9AA4: 41        .byte $41   ; 
- D 0 - I - 0x011AB5 04:9AA5: 41        .byte $41   ; 
- D 0 - I - 0x011AB6 04:9AA6: 00        .byte $00   ; 
- D 0 - I - 0x011AB7 04:9AA7: 00        .byte $00   ; 
off_9AA8_01:
- D 0 - I - 0x011AB8 04:9AA8: 40        .byte $40   ; 
- D 0 - I - 0x011AB9 04:9AA9: 40        .byte $40   ; 
- D 0 - I - 0x011ABA 04:9AAA: 40        .byte $40   ; 
- D 0 - I - 0x011ABB 04:9AAB: 40        .byte $40   ; 
- D 0 - I - 0x011ABC 04:9AAC: 41        .byte $41   ; 
- D 0 - I - 0x011ABD 04:9AAD: 41        .byte $41   ; 
- D 0 - I - 0x011ABE 04:9AAE: 01        .byte $01   ; 
- D 0 - I - 0x011ABF 04:9AAF: 41        .byte $41   ; 
- D 0 - I - 0x011AC0 04:9AB0: 01        .byte $01   ; 
- D 0 - I - 0x011AC1 04:9AB1: 40        .byte $40   ; 
- D 0 - I - 0x011AC2 04:9AB2: 01        .byte $01   ; 
- D 0 - I - 0x011AC3 04:9AB3: 01        .byte $01   ; 
- D 0 - I - 0x011AC4 04:9AB4: 41        .byte $41   ; 
- D 0 - I - 0x011AC5 04:9AB5: 41        .byte $41   ; 
- D 0 - I - 0x011AC6 04:9AB6: 40        .byte $40   ; 
- D 0 - I - 0x011AC7 04:9AB7: 00        .byte $00   ; 
off_9AB8_01:
- D 0 - I - 0x011AC8 04:9AB8: 03        .byte $03   ; 
- D 0 - I - 0x011AC9 04:9AB9: 03        .byte $03   ; 
- D 0 - I - 0x011ACA 04:9ABA: 03        .byte $03   ; 
- D 0 - I - 0x011ACB 04:9ABB: 03        .byte $03   ; 
- D 0 - I - 0x011ACC 04:9ABC: 02        .byte $02   ; 
- D 0 - I - 0x011ACD 04:9ABD: 02        .byte $02   ; 
- D 0 - I - 0x011ACE 04:9ABE: 02        .byte $02   ; 
off_9ABF_01:
- D 0 - I - 0x011ACF 04:9ABF: 02        .byte $02   ; 
- D 0 - I - 0x011AD0 04:9AC0: 02        .byte $02   ; 
- D 0 - I - 0x011AD1 04:9AC1: 03        .byte $03   ; 
- D 0 - I - 0x011AD2 04:9AC2: 03        .byte $03   ; 
- D 0 - I - 0x011AD3 04:9AC3: 03        .byte $03   ; 
- D 0 - I - 0x011AD4 04:9AC4: 03        .byte $03   ; 
- D 0 - I - 0x011AD5 04:9AC5: 03        .byte $03   ; 
- D 0 - I - 0x011AD6 04:9AC6: 03        .byte $03   ; 
- D 0 - I - 0x011AD7 04:9AC7: 03        .byte $03   ; 
off_9AC8_01:
- D 0 - I - 0x011AD8 04:9AC8: 41        .byte $41   ; 
- D 0 - I - 0x011AD9 04:9AC9: 01        .byte $01   ; 
- D 0 - I - 0x011ADA 04:9ACA: 41        .byte $41   ; 
- D 0 - I - 0x011ADB 04:9ACB: 00        .byte $00   ; 
- D 0 - I - 0x011ADC 04:9ACC: 00        .byte $00   ; 
- D 0 - I - 0x011ADD 04:9ACD: 00        .byte $00   ; 
- D 0 - I - 0x011ADE 04:9ACE: 01        .byte $01   ; 
- D 0 - I - 0x011ADF 04:9ACF: 00        .byte $00   ; 
- D 0 - I - 0x011AE0 04:9AD0: 00        .byte $00   ; 
- D 0 - I - 0x011AE1 04:9AD1: 40        .byte $40   ; 
- D 0 - I - 0x011AE2 04:9AD2: 01        .byte $01   ; 
- D 0 - I - 0x011AE3 04:9AD3: 41        .byte $41   ; 
- D 0 - I - 0x011AE4 04:9AD4: 40        .byte $40   ; 
- D 0 - I - 0x011AE5 04:9AD5: 40        .byte $40   ; 
- D 0 - I - 0x011AE6 04:9AD6: 40        .byte $40   ; 
off_9AD7_01:
- D 0 - I - 0x011AE7 04:9AD7: 00        .byte $00   ; 
- D 0 - I - 0x011AE8 04:9AD8: 00        .byte $00   ; 
- D 0 - I - 0x011AE9 04:9AD9: 01        .byte $01   ; 
- D 0 - I - 0x011AEA 04:9ADA: 01        .byte $01   ; 
- D 0 - I - 0x011AEB 04:9ADB: 01        .byte $01   ; 
- D 0 - I - 0x011AEC 04:9ADC: 01        .byte $01   ; 
off_9ADD_01:
- D 0 - I - 0x011AED 04:9ADD: 01        .byte $01   ; 
- D 0 - I - 0x011AEE 04:9ADE: 01        .byte $01   ; 
- D 0 - I - 0x011AEF 04:9ADF: 01        .byte $01   ; 
- D 0 - I - 0x011AF0 04:9AE0: 01        .byte $01   ; 
- D 0 - I - 0x011AF1 04:9AE1: 01        .byte $01   ; 
- D 0 - I - 0x011AF2 04:9AE2: 01        .byte $01   ; 
- D 0 - I - 0x011AF3 04:9AE3: 01        .byte $01   ; 
off_9AE4_01:
- D 0 - I - 0x011AF4 04:9AE4: 00        .byte $00   ; 
- D 0 - I - 0x011AF5 04:9AE5: 40        .byte $40   ; 
- D 0 - I - 0x011AF6 04:9AE6: 00        .byte $00   ; 
- D 0 - I - 0x011AF7 04:9AE7: 40        .byte $40   ; 
- D 0 - I - 0x011AF8 04:9AE8: 00        .byte $00   ; 
- D 0 - I - 0x011AF9 04:9AE9: 01        .byte $01   ; 
- D 0 - I - 0x011AFA 04:9AEA: 41        .byte $41   ; 
- D 0 - I - 0x011AFB 04:9AEB: 40        .byte $40   ; 
- D 0 - I - 0x011AFC 04:9AEC: 01        .byte $01   ; 
- D 0 - I - 0x011AFD 04:9AED: 41        .byte $41   ; 
- D 0 - I - 0x011AFE 04:9AEE: 00        .byte $00   ; 
- D 0 - I - 0x011AFF 04:9AEF: 01        .byte $01   ; 
- D 0 - I - 0x011B00 04:9AF0: 40        .byte $40   ; 
- D 0 - I - 0x011B01 04:9AF1: 41        .byte $41   ; 
off_9AF2_01:
- D 0 - I - 0x011B02 04:9AF2: 01        .byte $01   ; 
off_9AF3_01:
- D 0 - I - 0x011B03 04:9AF3: 01        .byte $01   ; 
- D 0 - I - 0x011B04 04:9AF4: 01        .byte $01   ; 
- D 0 - I - 0x011B05 04:9AF5: 01        .byte $01   ; 
- D 0 - I - 0x011B06 04:9AF6: 01        .byte $01   ; 
- D 0 - I - 0x011B07 04:9AF7: 01        .byte $01   ; 
- D 0 - I - 0x011B08 04:9AF8: 01        .byte $01   ; 
- D 0 - I - 0x011B09 04:9AF9: 01        .byte $01   ; 
- D 0 - I - 0x011B0A 04:9AFA: 00        .byte $00   ; 
- D 0 - I - 0x011B0B 04:9AFB: 00        .byte $00   ; 
- D 0 - I - 0x011B0C 04:9AFC: 01        .byte $01   ; 
- D 0 - I - 0x011B0D 04:9AFD: 01        .byte $01   ; 
- D 0 - I - 0x011B0E 04:9AFE: 00        .byte $00   ; 
- D 0 - I - 0x011B0F 04:9AFF: 01        .byte $01   ; 
off_9B00_01:
- D 0 - I - 0x011B10 04:9B00: 40        .byte $40   ; 
- D 0 - I - 0x011B11 04:9B01: 00        .byte $00   ; 
- D 0 - I - 0x011B12 04:9B02: 00        .byte $00   ; 
- D 0 - I - 0x011B13 04:9B03: 00        .byte $00   ; 
- D 0 - I - 0x011B14 04:9B04: 01        .byte $01   ; 
off_9B05_01:
- D 0 - I - 0x011B15 04:9B05: 01        .byte $01   ; 
- D 0 - I - 0x011B16 04:9B06: 01        .byte $01   ; 
- D 0 - I - 0x011B17 04:9B07: 01        .byte $01   ; 
- D 0 - I - 0x011B18 04:9B08: 01        .byte $01   ; 
- D 0 - I - 0x011B19 04:9B09: 01        .byte $01   ; 
- D 0 - I - 0x011B1A 04:9B0A: 01        .byte $01   ; 
off_9B0B_01:
- D 0 - I - 0x011B1B 04:9B0B: 01        .byte $01   ; 
- D 0 - I - 0x011B1C 04:9B0C: 01        .byte $01   ; 
- D 0 - I - 0x011B1D 04:9B0D: 01        .byte $01   ; 
- D 0 - I - 0x011B1E 04:9B0E: 00        .byte $00   ; 
- D 0 - I - 0x011B1F 04:9B0F: 00        .byte $00   ; 
- D 0 - I - 0x011B20 04:9B10: 01        .byte $01   ; 
- D 0 - I - 0x011B21 04:9B11: 01        .byte $01   ; 
- D 0 - I - 0x011B22 04:9B12: 41        .byte $41   ; 
- D 0 - I - 0x011B23 04:9B13: 41        .byte $41   ; 
- D 0 - I - 0x011B24 04:9B14: 41        .byte $41   ; 
- D 0 - I - 0x011B25 04:9B15: 41        .byte $41   ; 
- D 0 - I - 0x011B26 04:9B16: 41        .byte $41   ; 
- D 0 - I - 0x011B27 04:9B17: 01        .byte $01   ; 
- D 0 - I - 0x011B28 04:9B18: 01        .byte $01   ; 
off_9B19_01:
- D 0 - I - 0x011B29 04:9B19: 40        .byte $40   ; 
- D 0 - I - 0x011B2A 04:9B1A: 00        .byte $00   ; 
- D 0 - I - 0x011B2B 04:9B1B: 00        .byte $00   ; 
- D 0 - I - 0x011B2C 04:9B1C: 00        .byte $00   ; 
- D 0 - I - 0x011B2D 04:9B1D: 01        .byte $01   ; 
- D 0 - I - 0x011B2E 04:9B1E: 01        .byte $01   ; 
- D 0 - I - 0x011B2F 04:9B1F: 01        .byte $01   ; 
- D 0 - I - 0x011B30 04:9B20: 01        .byte $01   ; 
- D 0 - I - 0x011B31 04:9B21: 01        .byte $01   ; 
- D 0 - I - 0x011B32 04:9B22: 01        .byte $01   ; 
- D 0 - I - 0x011B33 04:9B23: 01        .byte $01   ; 
- D 0 - I - 0x011B34 04:9B24: 41        .byte $41   ; 
- D 0 - I - 0x011B35 04:9B25: 41        .byte $41   ; 
- D 0 - I - 0x011B36 04:9B26: 41        .byte $41   ; 
off_9B27_01:
- D 0 - I - 0x011B37 04:9B27: 00        .byte $00   ; 
- D 0 - I - 0x011B38 04:9B28: 00        .byte $00   ; 
- D 0 - I - 0x011B39 04:9B29: 00        .byte $00   ; 
- D 0 - I - 0x011B3A 04:9B2A: 01        .byte $01   ; 
- D 0 - I - 0x011B3B 04:9B2B: 00        .byte $00   ; 
- D 0 - I - 0x011B3C 04:9B2C: 00        .byte $00   ; 
- D 0 - I - 0x011B3D 04:9B2D: 01        .byte $01   ; 
- D 0 - I - 0x011B3E 04:9B2E: 01        .byte $01   ; 
- D 0 - I - 0x011B3F 04:9B2F: 01        .byte $01   ; 
- D 0 - I - 0x011B40 04:9B30: 00        .byte $00   ; 
- D 0 - I - 0x011B41 04:9B31: 01        .byte $01   ; 
- D 0 - I - 0x011B42 04:9B32: 01        .byte $01   ; 
off_9B33_01:
- D 0 - I - 0x011B43 04:9B33: 00        .byte $00   ; 
- D 0 - I - 0x011B44 04:9B34: 00        .byte $00   ; 
- D 0 - I - 0x011B45 04:9B35: 00        .byte $00   ; 
- D 0 - I - 0x011B46 04:9B36: 01        .byte $01   ; 
- D 0 - I - 0x011B47 04:9B37: 00        .byte $00   ; 
- D 0 - I - 0x011B48 04:9B38: 01        .byte $01   ; 
- D 0 - I - 0x011B49 04:9B39: 01        .byte $01   ; 
- D 0 - I - 0x011B4A 04:9B3A: 40        .byte $40   ; 
- D 0 - I - 0x011B4B 04:9B3B: 41        .byte $41   ; 
- D 0 - I - 0x011B4C 04:9B3C: 41        .byte $41   ; 
- D 0 - I - 0x011B4D 04:9B3D: 41        .byte $41   ; 
- D 0 - I - 0x011B4E 04:9B3E: 40        .byte $40   ; 
- D 0 - I - 0x011B4F 04:9B3F: 40        .byte $40   ; 
- D 0 - I - 0x011B50 04:9B40: 40        .byte $40   ; 
off_9B41_01:
- D 0 - I - 0x011B51 04:9B41: 01        .byte $01   ; 
- D 0 - I - 0x011B52 04:9B42: 01        .byte $01   ; 
- D 0 - I - 0x011B53 04:9B43: 01        .byte $01   ; 
- D 0 - I - 0x011B54 04:9B44: 00        .byte $00   ; 
- D 0 - I - 0x011B55 04:9B45: 00        .byte $00   ; 
- D 0 - I - 0x011B56 04:9B46: 00        .byte $00   ; 
- D 0 - I - 0x011B57 04:9B47: 00        .byte $00   ; 
- D 0 - I - 0x011B58 04:9B48: 00        .byte $00   ; 
- D 0 - I - 0x011B59 04:9B49: 01        .byte $01   ; 
- D 0 - I - 0x011B5A 04:9B4A: 01        .byte $01   ; 
- D 0 - I - 0x011B5B 04:9B4B: 01        .byte $01   ; 
- D 0 - I - 0x011B5C 04:9B4C: 01        .byte $01   ; 
- D 0 - I - 0x011B5D 04:9B4D: 40        .byte $40   ; 
off_9B4E_01:
- D 0 - I - 0x011B5E 04:9B4E: 00        .byte $00   ; 
- D 0 - I - 0x011B5F 04:9B4F: 01        .byte $01   ; 
- D 0 - I - 0x011B60 04:9B50: 01        .byte $01   ; 
- D 0 - I - 0x011B61 04:9B51: 01        .byte $01   ; 
- D 0 - I - 0x011B62 04:9B52: 01        .byte $01   ; 
- D 0 - I - 0x011B63 04:9B53: 01        .byte $01   ; 
- D 0 - I - 0x011B64 04:9B54: 01        .byte $01   ; 
- D 0 - I - 0x011B65 04:9B55: 01        .byte $01   ; 
- D 0 - I - 0x011B66 04:9B56: 01        .byte $01   ; 
- D 0 - I - 0x011B67 04:9B57: 01        .byte $01   ; 
- D 0 - I - 0x011B68 04:9B58: 41        .byte $41   ; 
- D 0 - I - 0x011B69 04:9B59: 41        .byte $41   ; 
- D 0 - I - 0x011B6A 04:9B5A: 40        .byte $40   ; 
off_9B5B_01:
- D 0 - I - 0x011B6B 04:9B5B: 01        .byte $01   ; 
- D 0 - I - 0x011B6C 04:9B5C: 01        .byte $01   ; 
- D 0 - I - 0x011B6D 04:9B5D: 01        .byte $01   ; 
- D 0 - I - 0x011B6E 04:9B5E: 01        .byte $01   ; 
- D 0 - I - 0x011B6F 04:9B5F: 01        .byte $01   ; 
- D 0 - I - 0x011B70 04:9B60: 01        .byte $01   ; 
- D 0 - I - 0x011B71 04:9B61: 01        .byte $01   ; 
- D 0 - I - 0x011B72 04:9B62: 01        .byte $01   ; 
- D 0 - I - 0x011B73 04:9B63: 00        .byte $00   ; 
- D 0 - I - 0x011B74 04:9B64: 00        .byte $00   ; 
- D 0 - I - 0x011B75 04:9B65: 00        .byte $00   ; 
- D 0 - I - 0x011B76 04:9B66: 00        .byte $00   ; 
- D 0 - I - 0x011B77 04:9B67: 00        .byte $00   ; 
off_9B68_01:
- D 0 - I - 0x011B78 04:9B68: 01        .byte $01   ; 
- D 0 - I - 0x011B79 04:9B69: 01        .byte $01   ; 
- D 0 - I - 0x011B7A 04:9B6A: 01        .byte $01   ; 
- D 0 - I - 0x011B7B 04:9B6B: 41        .byte $41   ; 
- D 0 - I - 0x011B7C 04:9B6C: 41        .byte $41   ; 
- D 0 - I - 0x011B7D 04:9B6D: 01        .byte $01   ; 
- D 0 - I - 0x011B7E 04:9B6E: 01        .byte $01   ; 
- D 0 - I - 0x011B7F 04:9B6F: 00        .byte $00   ; 
- D 0 - I - 0x011B80 04:9B70: 40        .byte $40   ; 
- D 0 - I - 0x011B81 04:9B71: 00        .byte $00   ; 
- D 0 - I - 0x011B82 04:9B72: 01        .byte $01   ; 
- D 0 - I - 0x011B83 04:9B73: 41        .byte $41   ; 
- D 0 - I - 0x011B84 04:9B74: 00        .byte $00   ; 
off_9B75_01:
- - - - - - 0x011B85 04:9B75: 01        .byte $01   ; 
- - - - - - 0x011B86 04:9B76: 01        .byte $01   ; 
- - - - - - 0x011B87 04:9B77: 01        .byte $01   ; 
- - - - - - 0x011B88 04:9B78: 01        .byte $01   ; 
- - - - - - 0x011B89 04:9B79: 01        .byte $01   ; 
- - - - - - 0x011B8A 04:9B7A: 01        .byte $01   ; 
- - - - - - 0x011B8B 04:9B7B: 01        .byte $01   ; 
- - - - - - 0x011B8C 04:9B7C: 41        .byte $41   ; 
- - - - - - 0x011B8D 04:9B7D: 41        .byte $41   ; 
- - - - - - 0x011B8E 04:9B7E: 01        .byte $01   ; 
- - - - - - 0x011B8F 04:9B7F: 41        .byte $41   ; 
off_9B80_01:
- D 0 - I - 0x011B90 04:9B80: 00        .byte $00   ; 
- D 0 - I - 0x011B91 04:9B81: 00        .byte $00   ; 
- D 0 - I - 0x011B92 04:9B82: 01        .byte $01   ; 
- D 0 - I - 0x011B93 04:9B83: 01        .byte $01   ; 
- D 0 - I - 0x011B94 04:9B84: 01        .byte $01   ; 
- D 0 - I - 0x011B95 04:9B85: 01        .byte $01   ; 
- D 0 - I - 0x011B96 04:9B86: 01        .byte $01   ; 
- D 0 - I - 0x011B97 04:9B87: 00        .byte $00   ; 
- D 0 - I - 0x011B98 04:9B88: 01        .byte $01   ; 
- D 0 - I - 0x011B99 04:9B89: 01        .byte $01   ; 
- D 0 - I - 0x011B9A 04:9B8A: 01        .byte $01   ; 
- D 0 - I - 0x011B9B 04:9B8B: 41        .byte $41   ; 
- D 0 - I - 0x011B9C 04:9B8C: 41        .byte $41   ; 
off_9B8D_01:
- - - - - - 0x011B9D 04:9B8D: 00        .byte $00   ; 
- - - - - - 0x011B9E 04:9B8E: 40        .byte $40   ; 
- - - - - - 0x011B9F 04:9B8F: 01        .byte $01   ; 
- - - - - - 0x011BA0 04:9B90: 01        .byte $01   ; 
- - - - - - 0x011BA1 04:9B91: 01        .byte $01   ; 
- - - - - - 0x011BA2 04:9B92: 01        .byte $01   ; 
- - - - - - 0x011BA3 04:9B93: 01        .byte $01   ; 
- - - - - - 0x011BA4 04:9B94: 01        .byte $01   ; 
- - - - - - 0x011BA5 04:9B95: 01        .byte $01   ; 
- - - - - - 0x011BA6 04:9B96: 41        .byte $41   ; 
- - - - - - 0x011BA7 04:9B97: 41        .byte $41   ; 
off_9B98_01:
- D 0 - I - 0x011BA8 04:9B98: 01        .byte $01   ; 
- D 0 - I - 0x011BA9 04:9B99: 01        .byte $01   ; 
- D 0 - I - 0x011BAA 04:9B9A: 01        .byte $01   ; 
- D 0 - I - 0x011BAB 04:9B9B: 01        .byte $01   ; 
- D 0 - I - 0x011BAC 04:9B9C: 01        .byte $01   ; 
- D 0 - I - 0x011BAD 04:9B9D: 01        .byte $01   ; 
- D 0 - I - 0x011BAE 04:9B9E: 01        .byte $01   ; 
- D 0 - I - 0x011BAF 04:9B9F: 01        .byte $01   ; 
- D 0 - I - 0x011BB0 04:9BA0: 01        .byte $01   ; 
- D 0 - I - 0x011BB1 04:9BA1: 41        .byte $41   ; 
- D 0 - I - 0x011BB2 04:9BA2: 00        .byte $00   ; 
- D 0 - I - 0x011BB3 04:9BA3: 00        .byte $00   ; 
off_9BA4_01:
- D 0 - I - 0x011BB4 04:9BA4: 01        .byte $01   ; 
- D 0 - I - 0x011BB5 04:9BA5: 01        .byte $01   ; 
- D 0 - I - 0x011BB6 04:9BA6: 01        .byte $01   ; 
- D 0 - I - 0x011BB7 04:9BA7: 01        .byte $01   ; 
- D 0 - I - 0x011BB8 04:9BA8: 01        .byte $01   ; 
- D 0 - I - 0x011BB9 04:9BA9: 01        .byte $01   ; 
- D 0 - I - 0x011BBA 04:9BAA: 01        .byte $01   ; 
- D 0 - I - 0x011BBB 04:9BAB: 01        .byte $01   ; 
- D 0 - I - 0x011BBC 04:9BAC: 01        .byte $01   ; 
- D 0 - I - 0x011BBD 04:9BAD: 41        .byte $41   ; 
- D 0 - I - 0x011BBE 04:9BAE: 41        .byte $41   ; 
- D 0 - I - 0x011BBF 04:9BAF: 00        .byte $00   ; 
- D 0 - I - 0x011BC0 04:9BB0: 00        .byte $00   ; 
off_9BB1_01:
- D 0 - I - 0x011BC1 04:9BB1: 01        .byte $01   ; 
- D 0 - I - 0x011BC2 04:9BB2: 00        .byte $00   ; 
- D 0 - I - 0x011BC3 04:9BB3: 00        .byte $00   ; 
- D 0 - I - 0x011BC4 04:9BB4: 01        .byte $01   ; 
- D 0 - I - 0x011BC5 04:9BB5: 01        .byte $01   ; 
- D 0 - I - 0x011BC6 04:9BB6: 01        .byte $01   ; 
- D 0 - I - 0x011BC7 04:9BB7: 01        .byte $01   ; 
- D 0 - I - 0x011BC8 04:9BB8: 01        .byte $01   ; 
- D 0 - I - 0x011BC9 04:9BB9: 01        .byte $01   ; 
- D 0 - I - 0x011BCA 04:9BBA: 01        .byte $01   ; 
- D 0 - I - 0x011BCB 04:9BBB: 01        .byte $01   ; 
off_9BBC_01:
- D 0 - I - 0x011BCC 04:9BBC: 01        .byte $01   ; 
- D 0 - I - 0x011BCD 04:9BBD: 01        .byte $01   ; 
- D 0 - I - 0x011BCE 04:9BBE: 00        .byte $00   ; 
- D 0 - I - 0x011BCF 04:9BBF: 01        .byte $01   ; 
- D 0 - I - 0x011BD0 04:9BC0: 00        .byte $00   ; 
- D 0 - I - 0x011BD1 04:9BC1: 01        .byte $01   ; 
- D 0 - I - 0x011BD2 04:9BC2: 00        .byte $00   ; 
- D 0 - I - 0x011BD3 04:9BC3: 00        .byte $00   ; 
- D 0 - I - 0x011BD4 04:9BC4: 00        .byte $00   ; 
- D 0 - I - 0x011BD5 04:9BC5: 00        .byte $00   ; 
- D 0 - I - 0x011BD6 04:9BC6: 01        .byte $01   ; 
off_9BC7_01:
- D 0 - I - 0x011BD7 04:9BC7: 01        .byte $01   ; 
- D 0 - I - 0x011BD8 04:9BC8: 41        .byte $41   ; 
- D 0 - I - 0x011BD9 04:9BC9: 41        .byte $41   ; 
- D 0 - I - 0x011BDA 04:9BCA: 01        .byte $01   ; 
- D 0 - I - 0x011BDB 04:9BCB: 01        .byte $01   ; 
- D 0 - I - 0x011BDC 04:9BCC: 01        .byte $01   ; 
- D 0 - I - 0x011BDD 04:9BCD: 01        .byte $01   ; 
- D 0 - I - 0x011BDE 04:9BCE: 41        .byte $41   ; 
- D 0 - I - 0x011BDF 04:9BCF: 41        .byte $41   ; 
- D 0 - I - 0x011BE0 04:9BD0: 41        .byte $41   ; 
off_9BD1_01:
- D 0 - I - 0x011BE1 04:9BD1: 01        .byte $01   ; 
- D 0 - I - 0x011BE2 04:9BD2: 01        .byte $01   ; 
- D 0 - I - 0x011BE3 04:9BD3: 01        .byte $01   ; 
- D 0 - I - 0x011BE4 04:9BD4: 00        .byte $00   ; 
- D 0 - I - 0x011BE5 04:9BD5: 00        .byte $00   ; 
- D 0 - I - 0x011BE6 04:9BD6: 00        .byte $00   ; 
- D 0 - I - 0x011BE7 04:9BD7: 00        .byte $00   ; 
- D 0 - I - 0x011BE8 04:9BD8: 01        .byte $01   ; 
- D 0 - I - 0x011BE9 04:9BD9: 01        .byte $01   ; 
- D 0 - I - 0x011BEA 04:9BDA: 00        .byte $00   ; 
- D 0 - I - 0x011BEB 04:9BDB: 01        .byte $01   ; 
- D 0 - I - 0x011BEC 04:9BDC: 01        .byte $01   ; 
off_9BDD_01:
- D 0 - I - 0x011BED 04:9BDD: 41        .byte $41   ; 
- D 0 - I - 0x011BEE 04:9BDE: 00        .byte $00   ; 
- D 0 - I - 0x011BEF 04:9BDF: 00        .byte $00   ; 
- D 0 - I - 0x011BF0 04:9BE0: 01        .byte $01   ; 
- D 0 - I - 0x011BF1 04:9BE1: 41        .byte $41   ; 
- D 0 - I - 0x011BF2 04:9BE2: 01        .byte $01   ; 
- D 0 - I - 0x011BF3 04:9BE3: 01        .byte $01   ; 
- D 0 - I - 0x011BF4 04:9BE4: 01        .byte $01   ; 
- D 0 - I - 0x011BF5 04:9BE5: 01        .byte $01   ; 
- D 0 - I - 0x011BF6 04:9BE6: 01        .byte $01   ; 
- D 0 - I - 0x011BF7 04:9BE7: 01        .byte $01   ; 
- D 0 - I - 0x011BF8 04:9BE8: 01        .byte $01   ; 
off_9BE9_01:
- D 0 - I - 0x011BF9 04:9BE9: 41        .byte $41   ; 
- D 0 - I - 0x011BFA 04:9BEA: 01        .byte $01   ; 
- D 0 - I - 0x011BFB 04:9BEB: 01        .byte $01   ; 
- D 0 - I - 0x011BFC 04:9BEC: 41        .byte $41   ; 
- D 0 - I - 0x011BFD 04:9BED: 41        .byte $41   ; 
- D 0 - I - 0x011BFE 04:9BEE: 00        .byte $00   ; 
- D 0 - I - 0x011BFF 04:9BEF: 01        .byte $01   ; 
- D 0 - I - 0x011C00 04:9BF0: 41        .byte $41   ; 
- D 0 - I - 0x011C01 04:9BF1: 01        .byte $01   ; 
- D 0 - I - 0x011C02 04:9BF2: 41        .byte $41   ; 
- D 0 - I - 0x011C03 04:9BF3: 01        .byte $01   ; 
- D 0 - I - 0x011C04 04:9BF4: 41        .byte $41   ; 
off_9BF5_01:
- D 0 - I - 0x011C05 04:9BF5: 00        .byte $00   ; 
- D 0 - I - 0x011C06 04:9BF6: 00        .byte $00   ; 
- D 0 - I - 0x011C07 04:9BF7: 00        .byte $00   ; 
off_9BF8_01:
- D 0 - I - 0x011C08 04:9BF8: 01        .byte $01   ; 
off_9BF9_01:
- D 0 - I - 0x011C09 04:9BF9: 01        .byte $01   ; 
- D 0 - I - 0x011C0A 04:9BFA: 00        .byte $00   ; 
- D 0 - I - 0x011C0B 04:9BFB: 01        .byte $01   ; 
- D 0 - I - 0x011C0C 04:9BFC: 01        .byte $01   ; 
off_9BFD_01:
- D 0 - I - 0x011C0D 04:9BFD: 01        .byte $01   ; 
- D 0 - I - 0x011C0E 04:9BFE: 01        .byte $01   ; 
- D 0 - I - 0x011C0F 04:9BFF: 01        .byte $01   ; 
- D 0 - I - 0x011C10 04:9C00: 01        .byte $01   ; 
off_9C01_01:
- D 0 - I - 0x011C11 04:9C01: 00        .byte $00   ; 
- D 0 - I - 0x011C12 04:9C02: 00        .byte $00   ; 
- D 0 - I - 0x011C13 04:9C03: 00        .byte $00   ; 
- D 0 - I - 0x011C14 04:9C04: 00        .byte $00   ; 
- D 0 - I - 0x011C15 04:9C05: 00        .byte $00   ; 
- D 0 - I - 0x011C16 04:9C06: 00        .byte $00   ; 
- D 0 - I - 0x011C17 04:9C07: 01        .byte $01   ; 
- D 0 - I - 0x011C18 04:9C08: 01        .byte $01   ; 
- D 0 - I - 0x011C19 04:9C09: 01        .byte $01   ; 
- D 0 - I - 0x011C1A 04:9C0A: 01        .byte $01   ; 
- D 0 - I - 0x011C1B 04:9C0B: 01        .byte $01   ; 
- D 0 - I - 0x011C1C 04:9C0C: 01        .byte $01   ; 
off_9C0D_01:
- D 0 - I - 0x011C1D 04:9C0D: 41        .byte $41   ; 
- D 0 - I - 0x011C1E 04:9C0E: 00        .byte $00   ; 
- D 0 - I - 0x011C1F 04:9C0F: 00        .byte $00   ; 
- D 0 - I - 0x011C20 04:9C10: 01        .byte $01   ; 
- D 0 - I - 0x011C21 04:9C11: 41        .byte $41   ; 
- D 0 - I - 0x011C22 04:9C12: 01        .byte $01   ; 
- D 0 - I - 0x011C23 04:9C13: 01        .byte $01   ; 
- D 0 - I - 0x011C24 04:9C14: 01        .byte $01   ; 
- D 0 - I - 0x011C25 04:9C15: 01        .byte $01   ; 
- D 0 - I - 0x011C26 04:9C16: 01        .byte $01   ; 
- D 0 - I - 0x011C27 04:9C17: 41        .byte $41   ; 
- D 0 - I - 0x011C28 04:9C18: 41        .byte $41   ; 
off_9C19_01:
- D 0 - I - 0x011C29 04:9C19: 01        .byte $01   ; 
- D 0 - I - 0x011C2A 04:9C1A: 01        .byte $01   ; 
- D 0 - I - 0x011C2B 04:9C1B: 01        .byte $01   ; 
- D 0 - I - 0x011C2C 04:9C1C: 40        .byte $40   ; 
- D 0 - I - 0x011C2D 04:9C1D: 00        .byte $00   ; 
- D 0 - I - 0x011C2E 04:9C1E: 00        .byte $00   ; 
- D 0 - I - 0x011C2F 04:9C1F: 41        .byte $41   ; 
- D 0 - I - 0x011C30 04:9C20: 41        .byte $41   ; 
- D 0 - I - 0x011C31 04:9C21: 01        .byte $01   ; 
off_9C22_01:
- D 0 - I - 0x011C32 04:9C22: 01        .byte $01   ; 
- D 0 - I - 0x011C33 04:9C23: 00        .byte $00   ; 
- D 0 - I - 0x011C34 04:9C24: 01        .byte $01   ; 
- D 0 - I - 0x011C35 04:9C25: 01        .byte $01   ; 
- D 0 - I - 0x011C36 04:9C26: 01        .byte $01   ; 
- D 0 - I - 0x011C37 04:9C27: 41        .byte $41   ; 
- D 0 - I - 0x011C38 04:9C28: 41        .byte $41   ; 
- D 0 - I - 0x011C39 04:9C29: 01        .byte $01   ; 
- D 0 - I - 0x011C3A 04:9C2A: 01        .byte $01   ; 
off_9C2B_01:
- D 0 - I - 0x011C3B 04:9C2B: 01        .byte $01   ; 
- D 0 - I - 0x011C3C 04:9C2C: 00        .byte $00   ; 
- D 0 - I - 0x011C3D 04:9C2D: 00        .byte $00   ; 
- D 0 - I - 0x011C3E 04:9C2E: 00        .byte $00   ; 
- D 0 - I - 0x011C3F 04:9C2F: 00        .byte $00   ; 
- D 0 - I - 0x011C40 04:9C30: 00        .byte $00   ; 
- D 0 - I - 0x011C41 04:9C31: 01        .byte $01   ; 
- D 0 - I - 0x011C42 04:9C32: 01        .byte $01   ; 
- D 0 - I - 0x011C43 04:9C33: 01        .byte $01   ; 
- D 0 - I - 0x011C44 04:9C34: 01        .byte $01   ; 
off_9C35_01:
- D 0 - I - 0x011C45 04:9C35: 00        .byte $00   ; 
- D 0 - I - 0x011C46 04:9C36: 01        .byte $01   ; 
- D 0 - I - 0x011C47 04:9C37: 00        .byte $00   ; 
- D 0 - I - 0x011C48 04:9C38: 01        .byte $01   ; 
- D 0 - I - 0x011C49 04:9C39: 01        .byte $01   ; 
- D 0 - I - 0x011C4A 04:9C3A: 01        .byte $01   ; 
- D 0 - I - 0x011C4B 04:9C3B: 01        .byte $01   ; 
- D 0 - I - 0x011C4C 04:9C3C: 01        .byte $01   ; 
- D 0 - I - 0x011C4D 04:9C3D: 00        .byte $00   ; 
- D 0 - I - 0x011C4E 04:9C3E: 00        .byte $00   ; 
off_9C3F_01:
- D 0 - I - 0x011C4F 04:9C3F: 00        .byte $00   ; 
- D 0 - I - 0x011C50 04:9C40: 01        .byte $01   ; 
- D 0 - I - 0x011C51 04:9C41: 01        .byte $01   ; 
- D 0 - I - 0x011C52 04:9C42: 01        .byte $01   ; 
- D 0 - I - 0x011C53 04:9C43: 01        .byte $01   ; 
- D 0 - I - 0x011C54 04:9C44: 01        .byte $01   ; 
- D 0 - I - 0x011C55 04:9C45: 01        .byte $01   ; 
- D 0 - I - 0x011C56 04:9C46: 01        .byte $01   ; 
off_9C47_01:
- D 0 - I - 0x011C57 04:9C47: 01        .byte $01   ; 
- D 0 - I - 0x011C58 04:9C48: 41        .byte $41   ; 
- D 0 - I - 0x011C59 04:9C49: 41        .byte $41   ; 
- D 0 - I - 0x011C5A 04:9C4A: 00        .byte $00   ; 
- D 0 - I - 0x011C5B 04:9C4B: 01        .byte $01   ; 
- D 0 - I - 0x011C5C 04:9C4C: 01        .byte $01   ; 
- D 0 - I - 0x011C5D 04:9C4D: 01        .byte $01   ; 
- D 0 - I - 0x011C5E 04:9C4E: 41        .byte $41   ; 
- D 0 - I - 0x011C5F 04:9C4F: 01        .byte $01   ; 
- D 0 - I - 0x011C60 04:9C50: 01        .byte $01   ; 
- D 0 - I - 0x011C61 04:9C51: 01        .byte $01   ; 
off_9C52_01:
- D 0 - I - 0x011C62 04:9C52: 00        .byte $00   ; 
- D 0 - I - 0x011C63 04:9C53: 41        .byte $41   ; 
- D 0 - I - 0x011C64 04:9C54: 41        .byte $41   ; 
- D 0 - I - 0x011C65 04:9C55: 41        .byte $41   ; 
- D 0 - I - 0x011C66 04:9C56: 41        .byte $41   ; 
- D 0 - I - 0x011C67 04:9C57: 41        .byte $41   ; 
- D 0 - I - 0x011C68 04:9C58: 41        .byte $41   ; 
- D 0 - I - 0x011C69 04:9C59: 01        .byte $01   ; 
- D 0 - I - 0x011C6A 04:9C5A: 01        .byte $01   ; 
- D 0 - I - 0x011C6B 04:9C5B: 41        .byte $41   ; 
- D 0 - I - 0x011C6C 04:9C5C: 41        .byte $41   ; 
off_9C5D_01:
- D 0 - I - 0x011C6D 04:9C5D: 01        .byte $01   ; 
- D 0 - I - 0x011C6E 04:9C5E: 01        .byte $01   ; 
- D 0 - I - 0x011C6F 04:9C5F: 01        .byte $01   ; 
- D 0 - I - 0x011C70 04:9C60: 01        .byte $01   ; 
- D 0 - I - 0x011C71 04:9C61: 00        .byte $00   ; 
- D 0 - I - 0x011C72 04:9C62: 01        .byte $01   ; 
- D 0 - I - 0x011C73 04:9C63: 41        .byte $41   ; 
- D 0 - I - 0x011C74 04:9C64: 01        .byte $01   ; 
- D 0 - I - 0x011C75 04:9C65: 01        .byte $01   ; 
- D 0 - I - 0x011C76 04:9C66: 01        .byte $01   ; 
- D 0 - I - 0x011C77 04:9C67: 40        .byte $40   ; 
off_9C68_01:
- D 0 - I - 0x011C78 04:9C68: 01        .byte $01   ; 
- D 0 - I - 0x011C79 04:9C69: 01        .byte $01   ; 
- D 0 - I - 0x011C7A 04:9C6A: 00        .byte $00   ; 
- D 0 - I - 0x011C7B 04:9C6B: 00        .byte $00   ; 
- D 0 - I - 0x011C7C 04:9C6C: 00        .byte $00   ; 
- D 0 - I - 0x011C7D 04:9C6D: 00        .byte $00   ; 
- D 0 - I - 0x011C7E 04:9C6E: 00        .byte $00   ; 
- D 0 - I - 0x011C7F 04:9C6F: 01        .byte $01   ; 
- D 0 - I - 0x011C80 04:9C70: 01        .byte $01   ; 
- D 0 - I - 0x011C81 04:9C71: 00        .byte $00   ; 
- D 0 - I - 0x011C82 04:9C72: 40        .byte $40   ; 
off_9C73_01:
- D 0 - I - 0x011C83 04:9C73: 01        .byte $01   ; 
- D 0 - I - 0x011C84 04:9C74: 01        .byte $01   ; 
- D 0 - I - 0x011C85 04:9C75: 01        .byte $01   ; 
- D 0 - I - 0x011C86 04:9C76: 01        .byte $01   ; 
- D 0 - I - 0x011C87 04:9C77: 01        .byte $01   ; 
- D 0 - I - 0x011C88 04:9C78: 01        .byte $01   ; 
- D 0 - I - 0x011C89 04:9C79: 01        .byte $01   ; 
- D 0 - I - 0x011C8A 04:9C7A: 00        .byte $00   ; 
- D 0 - I - 0x011C8B 04:9C7B: 00        .byte $00   ; 
- D 0 - I - 0x011C8C 04:9C7C: 01        .byte $01   ; 
off_9C7D_01:
- D 0 - I - 0x011C8D 04:9C7D: 00        .byte $00   ; 
- D 0 - I - 0x011C8E 04:9C7E: 01        .byte $01   ; 
- D 0 - I - 0x011C8F 04:9C7F: 01        .byte $01   ; 
- D 0 - I - 0x011C90 04:9C80: 01        .byte $01   ; 
- D 0 - I - 0x011C91 04:9C81: 01        .byte $01   ; 
- D 0 - I - 0x011C92 04:9C82: 01        .byte $01   ; 
- D 0 - I - 0x011C93 04:9C83: 01        .byte $01   ; 
- D 0 - I - 0x011C94 04:9C84: 01        .byte $01   ; 
- D 0 - I - 0x011C95 04:9C85: 01        .byte $01   ; 
off_9C86_01:
- D 0 - I - 0x011C96 04:9C86: 00        .byte $00   ; 
- D 0 - I - 0x011C97 04:9C87: 00        .byte $00   ; 
- D 0 - I - 0x011C98 04:9C88: 00        .byte $00   ; 
- D 0 - I - 0x011C99 04:9C89: 01        .byte $01   ; 
- D 0 - I - 0x011C9A 04:9C8A: 01        .byte $01   ; 
- D 0 - I - 0x011C9B 04:9C8B: 01        .byte $01   ; 
- D 0 - I - 0x011C9C 04:9C8C: 01        .byte $01   ; 
- D 0 - I - 0x011C9D 04:9C8D: 00        .byte $00   ; 
- D 0 - I - 0x011C9E 04:9C8E: 01        .byte $01   ; 
- D 0 - I - 0x011C9F 04:9C8F: 01        .byte $01   ; 
- D 0 - I - 0x011CA0 04:9C90: 01        .byte $01   ; 
off_9C91_01:
- D 0 - I - 0x011CA1 04:9C91: C1        .byte $C1   ; 
off_9C92_01:
- D 0 - I - 0x011CA2 04:9C92: C0        .byte $C0   ; 
- D 0 - I - 0x011CA3 04:9C93: C0        .byte $C0   ; 
- D 0 - I - 0x011CA4 04:9C94: C1        .byte $C1   ; 
- D 0 - I - 0x011CA5 04:9C95: C1        .byte $C1   ; 
- D 0 - I - 0x011CA6 04:9C96: C1        .byte $C1   ; 
- D 0 - I - 0x011CA7 04:9C97: C1        .byte $C1   ; 
- D 0 - I - 0x011CA8 04:9C98: C1        .byte $C1   ; 
- D 0 - I - 0x011CA9 04:9C99: C1        .byte $C1   ; 
- D 0 - I - 0x011CAA 04:9C9A: C1        .byte $C1   ; 
off_9C9B_01:
- D 0 - I - 0x011CAB 04:9C9B: 00        .byte $00   ; 
- D 0 - I - 0x011CAC 04:9C9C: 00        .byte $00   ; 
- D 0 - I - 0x011CAD 04:9C9D: 00        .byte $00   ; 
- D 0 - I - 0x011CAE 04:9C9E: 00        .byte $00   ; 
- D 0 - I - 0x011CAF 04:9C9F: 01        .byte $01   ; 
- D 0 - I - 0x011CB0 04:9CA0: 00        .byte $00   ; 
- D 0 - I - 0x011CB1 04:9CA1: 01        .byte $01   ; 
- D 0 - I - 0x011CB2 04:9CA2: 00        .byte $00   ; 
- D 0 - I - 0x011CB3 04:9CA3: 00        .byte $00   ; 
- D 0 - I - 0x011CB4 04:9CA4: 00        .byte $00   ; 
off_9CA5_01:
- D 0 - I - 0x011CB5 04:9CA5: 01        .byte $01   ; 
off_9CA6_01:
- D 0 - I - 0x011CB6 04:9CA6: 01        .byte $01   ; 
off_9CA7_01:
- D 0 - I - 0x011CB7 04:9CA7: 01        .byte $01   ; 
- D 0 - I - 0x011CB8 04:9CA8: 01        .byte $01   ; 
- D 0 - I - 0x011CB9 04:9CA9: 00        .byte $00   ; 
- D 0 - I - 0x011CBA 04:9CAA: 00        .byte $00   ; 
- D 0 - I - 0x011CBB 04:9CAB: 01        .byte $01   ; 
- D 0 - I - 0x011CBC 04:9CAC: 01        .byte $01   ; 
- D 0 - I - 0x011CBD 04:9CAD: 01        .byte $01   ; 
- D 0 - I - 0x011CBE 04:9CAE: 01        .byte $01   ; 
off_9CAF_01:
- D 0 - I - 0x011CBF 04:9CAF: 41        .byte $41   ; 
- D 0 - I - 0x011CC0 04:9CB0: 01        .byte $01   ; 
- D 0 - I - 0x011CC1 04:9CB1: 01        .byte $01   ; 
- D 0 - I - 0x011CC2 04:9CB2: 00        .byte $00   ; 
- D 0 - I - 0x011CC3 04:9CB3: 00        .byte $00   ; 
- D 0 - I - 0x011CC4 04:9CB4: 00        .byte $00   ; 
- D 0 - I - 0x011CC5 04:9CB5: 01        .byte $01   ; 
- D 0 - I - 0x011CC6 04:9CB6: 01        .byte $01   ; 
- D 0 - I - 0x011CC7 04:9CB7: 00        .byte $00   ; 
off_9CB8_01:
- D 0 - I - 0x011CC8 04:9CB8: 41        .byte $41   ; 
- D 0 - I - 0x011CC9 04:9CB9: 01        .byte $01   ; 
- D 0 - I - 0x011CCA 04:9CBA: 01        .byte $01   ; 
- D 0 - I - 0x011CCB 04:9CBB: 00        .byte $00   ; 
- D 0 - I - 0x011CCC 04:9CBC: 00        .byte $00   ; 
- D 0 - I - 0x011CCD 04:9CBD: 00        .byte $00   ; 
- D 0 - I - 0x011CCE 04:9CBE: 00        .byte $00   ; 
- D 0 - I - 0x011CCF 04:9CBF: 00        .byte $00   ; 
- D 0 - I - 0x011CD0 04:9CC0: 00        .byte $00   ; 
- D 0 - I - 0x011CD1 04:9CC1: 41        .byte $41   ; 
off_9CC2_01:
- D 0 - I - 0x011CD2 04:9CC2: 00        .byte $00   ; 
- D 0 - I - 0x011CD3 04:9CC3: 00        .byte $00   ; 
- D 0 - I - 0x011CD4 04:9CC4: 01        .byte $01   ; 
- D 0 - I - 0x011CD5 04:9CC5: 01        .byte $01   ; 
- D 0 - I - 0x011CD6 04:9CC6: 01        .byte $01   ; 
- D 0 - I - 0x011CD7 04:9CC7: 01        .byte $01   ; 
- D 0 - I - 0x011CD8 04:9CC8: 41        .byte $41   ; 
- D 0 - I - 0x011CD9 04:9CC9: 41        .byte $41   ; 
off_9CCA_01:
- D 0 - I - 0x011CDA 04:9CCA: 01        .byte $01   ; 
- D 0 - I - 0x011CDB 04:9CCB: 01        .byte $01   ; 
- D 0 - I - 0x011CDC 04:9CCC: 41        .byte $41   ; 
- D 0 - I - 0x011CDD 04:9CCD: 41        .byte $41   ; 
- D 0 - I - 0x011CDE 04:9CCE: 41        .byte $41   ; 
- D 0 - I - 0x011CDF 04:9CCF: 41        .byte $41   ; 
- D 0 - I - 0x011CE0 04:9CD0: 00        .byte $00   ; 
- D 0 - I - 0x011CE1 04:9CD1: 01        .byte $01   ; 
- D 0 - I - 0x011CE2 04:9CD2: 41        .byte $41   ; 
off_9CD3_01:
- D 0 - I - 0x011CE3 04:9CD3: 01        .byte $01   ; 
- D 0 - I - 0x011CE4 04:9CD4: 01        .byte $01   ; 
- D 0 - I - 0x011CE5 04:9CD5: 41        .byte $41   ; 
- D 0 - I - 0x011CE6 04:9CD6: 41        .byte $41   ; 
- D 0 - I - 0x011CE7 04:9CD7: 41        .byte $41   ; 
- D 0 - I - 0x011CE8 04:9CD8: 41        .byte $41   ; 
- D 0 - I - 0x011CE9 04:9CD9: 41        .byte $41   ; 
- D 0 - I - 0x011CEA 04:9CDA: 01        .byte $01   ; 
- D 0 - I - 0x011CEB 04:9CDB: 01        .byte $01   ; 
- D 0 - I - 0x011CEC 04:9CDC: 00        .byte $00   ; 
off_9CDD_01:
- D 0 - I - 0x011CED 04:9CDD: 01        .byte $01   ; 
- D 0 - I - 0x011CEE 04:9CDE: 01        .byte $01   ; 
- D 0 - I - 0x011CEF 04:9CDF: 01        .byte $01   ; 
- D 0 - I - 0x011CF0 04:9CE0: 01        .byte $01   ; 
- D 0 - I - 0x011CF1 04:9CE1: 01        .byte $01   ; 
- D 0 - I - 0x011CF2 04:9CE2: 01        .byte $01   ; 
- D 0 - I - 0x011CF3 04:9CE3: 01        .byte $01   ; 
- D 0 - I - 0x011CF4 04:9CE4: 00        .byte $00   ; 
- D 0 - I - 0x011CF5 04:9CE5: 01        .byte $01   ; 
- D 0 - I - 0x011CF6 04:9CE6: 41        .byte $41   ; 
off_9CE7_01:
- D 0 - I - 0x011CF7 04:9CE7: 00        .byte $00   ; 
- D 0 - I - 0x011CF8 04:9CE8: 01        .byte $01   ; 
- D 0 - I - 0x011CF9 04:9CE9: 01        .byte $01   ; 
- D 0 - I - 0x011CFA 04:9CEA: 01        .byte $01   ; 
- D 0 - I - 0x011CFB 04:9CEB: 01        .byte $01   ; 
- D 0 - I - 0x011CFC 04:9CEC: 01        .byte $01   ; 
- D 0 - I - 0x011CFD 04:9CED: 01        .byte $01   ; 
- D 0 - I - 0x011CFE 04:9CEE: 00        .byte $00   ; 
- D 0 - I - 0x011CFF 04:9CEF: 41        .byte $41   ; 
- D 0 - I - 0x011D00 04:9CF0: 41        .byte $41   ; 
off_9CF1_01:
- D 0 - I - 0x011D01 04:9CF1: 00        .byte $00   ; 
- D 0 - I - 0x011D02 04:9CF2: 01        .byte $01   ; 
- D 0 - I - 0x011D03 04:9CF3: 01        .byte $01   ; 
- D 0 - I - 0x011D04 04:9CF4: 01        .byte $01   ; 
- D 0 - I - 0x011D05 04:9CF5: 00        .byte $00   ; 
- D 0 - I - 0x011D06 04:9CF6: 01        .byte $01   ; 
- D 0 - I - 0x011D07 04:9CF7: 01        .byte $01   ; 
- D 0 - I - 0x011D08 04:9CF8: 01        .byte $01   ; 
- D 0 - I - 0x011D09 04:9CF9: 41        .byte $41   ; 
- D 0 - I - 0x011D0A 04:9CFA: 41        .byte $41   ; 
off_9CFB_01:
- D 0 - I - 0x011D0B 04:9CFB: 01        .byte $01   ; 
- D 0 - I - 0x011D0C 04:9CFC: 00        .byte $00   ; 
- D 0 - I - 0x011D0D 04:9CFD: 01        .byte $01   ; 
- D 0 - I - 0x011D0E 04:9CFE: 01        .byte $01   ; 
- D 0 - I - 0x011D0F 04:9CFF: 01        .byte $01   ; 
- D 0 - I - 0x011D10 04:9D00: 01        .byte $01   ; 
- D 0 - I - 0x011D11 04:9D01: 01        .byte $01   ; 
- D 0 - I - 0x011D12 04:9D02: 00        .byte $00   ; 
- D 0 - I - 0x011D13 04:9D03: 01        .byte $01   ; 
- D 0 - I - 0x011D14 04:9D04: 01        .byte $01   ; 
off_9D05_01:
- D 0 - I - 0x011D15 04:9D05: 00        .byte $00   ; 
- D 0 - I - 0x011D16 04:9D06: 00        .byte $00   ; 
- D 0 - I - 0x011D17 04:9D07: 41        .byte $41   ; 
- D 0 - I - 0x011D18 04:9D08: 01        .byte $01   ; 
- D 0 - I - 0x011D19 04:9D09: 01        .byte $01   ; 
- D 0 - I - 0x011D1A 04:9D0A: 41        .byte $41   ; 
- D 0 - I - 0x011D1B 04:9D0B: 01        .byte $01   ; 
off_9D0C_01:
- D 0 - I - 0x011D1C 04:9D0C: 01        .byte $01   ; 
- D 0 - I - 0x011D1D 04:9D0D: 01        .byte $01   ; 
- D 0 - I - 0x011D1E 04:9D0E: 01        .byte $01   ; 
- D 0 - I - 0x011D1F 04:9D0F: 41        .byte $41   ; 
- D 0 - I - 0x011D20 04:9D10: 01        .byte $01   ; 
- D 0 - I - 0x011D21 04:9D11: 01        .byte $01   ; 
- D 0 - I - 0x011D22 04:9D12: 00        .byte $00   ; 
- D 0 - I - 0x011D23 04:9D13: 00        .byte $00   ; 
- D 0 - I - 0x011D24 04:9D14: 01        .byte $01   ; 
- D 0 - I - 0x011D25 04:9D15: 01        .byte $01   ; 
off_9D16_01:
- D 0 - I - 0x011D26 04:9D16: 00        .byte $00   ; 
- D 0 - I - 0x011D27 04:9D17: 00        .byte $00   ; 
- D 0 - I - 0x011D28 04:9D18: 00        .byte $00   ; 
- D 0 - I - 0x011D29 04:9D19: 00        .byte $00   ; 
- D 0 - I - 0x011D2A 04:9D1A: 00        .byte $00   ; 
- D 0 - I - 0x011D2B 04:9D1B: 40        .byte $40   ; 
- D 0 - I - 0x011D2C 04:9D1C: 40        .byte $40   ; 
- D 0 - I - 0x011D2D 04:9D1D: 40        .byte $40   ; 
- D 0 - I - 0x011D2E 04:9D1E: 00        .byte $00   ; 
- D 0 - I - 0x011D2F 04:9D1F: 00        .byte $00   ; 
off_9D20_01:
- D 0 - I - 0x011D30 04:9D20: 01        .byte $01   ; 
- D 0 - I - 0x011D31 04:9D21: 01        .byte $01   ; 
- D 0 - I - 0x011D32 04:9D22: 00        .byte $00   ; 
- D 0 - I - 0x011D33 04:9D23: 01        .byte $01   ; 
- D 0 - I - 0x011D34 04:9D24: 01        .byte $01   ; 
- D 0 - I - 0x011D35 04:9D25: 00        .byte $00   ; 
- D 0 - I - 0x011D36 04:9D26: 01        .byte $01   ; 
- D 0 - I - 0x011D37 04:9D27: 01        .byte $01   ; 
off_9D28_01:
- D 0 - I - 0x011D38 04:9D28: 01        .byte $01   ; 
- D 0 - I - 0x011D39 04:9D29: 01        .byte $01   ; 
- D 0 - I - 0x011D3A 04:9D2A: 41        .byte $41   ; 
- D 0 - I - 0x011D3B 04:9D2B: 41        .byte $41   ; 
- D 0 - I - 0x011D3C 04:9D2C: 41        .byte $41   ; 
- D 0 - I - 0x011D3D 04:9D2D: 41        .byte $41   ; 
- D 0 - I - 0x011D3E 04:9D2E: 01        .byte $01   ; 
- D 0 - I - 0x011D3F 04:9D2F: 01        .byte $01   ; 
- D 0 - I - 0x011D40 04:9D30: 41        .byte $41   ; 
- D 0 - I - 0x011D41 04:9D31: 00        .byte $00   ; 
off_9D32_01:
- D 0 - I - 0x011D42 04:9D32: C1        .byte $C1   ; 
- D 0 - I - 0x011D43 04:9D33: C1        .byte $C1   ; 
- D 0 - I - 0x011D44 04:9D34: 01        .byte $01   ; 
- D 0 - I - 0x011D45 04:9D35: 01        .byte $01   ; 
- D 0 - I - 0x011D46 04:9D36: C1        .byte $C1   ; 
- D 0 - I - 0x011D47 04:9D37: C1        .byte $C1   ; 
- D 0 - I - 0x011D48 04:9D38: C1        .byte $C1   ; 
- D 0 - I - 0x011D49 04:9D39: C0        .byte $C0   ; 
- D 0 - I - 0x011D4A 04:9D3A: 81        .byte $81   ; 
off_9D3B_01:
- D 0 - I - 0x011D4B 04:9D3B: 00        .byte $00   ; 
- D 0 - I - 0x011D4C 04:9D3C: 00        .byte $00   ; 
- D 0 - I - 0x011D4D 04:9D3D: 01        .byte $01   ; 
- D 0 - I - 0x011D4E 04:9D3E: 01        .byte $01   ; 
- D 0 - I - 0x011D4F 04:9D3F: 01        .byte $01   ; 
- D 0 - I - 0x011D50 04:9D40: 01        .byte $01   ; 
- D 0 - I - 0x011D51 04:9D41: 01        .byte $01   ; 
- D 0 - I - 0x011D52 04:9D42: 41        .byte $41   ; 
- D 0 - I - 0x011D53 04:9D43: 41        .byte $41   ; 
off_9D44_01:
- D 0 - I - 0x011D54 04:9D44: 01        .byte $01   ; 
- D 0 - I - 0x011D55 04:9D45: C1        .byte $C1   ; 
- D 0 - I - 0x011D56 04:9D46: 00        .byte $00   ; 
- D 0 - I - 0x011D57 04:9D47: C1        .byte $C1   ; 
- D 0 - I - 0x011D58 04:9D48: 01        .byte $01   ; 
- D 0 - I - 0x011D59 04:9D49: 01        .byte $01   ; 
- D 0 - I - 0x011D5A 04:9D4A: 01        .byte $01   ; 
- D 0 - I - 0x011D5B 04:9D4B: 01        .byte $01   ; 
- D 0 - I - 0x011D5C 04:9D4C: 01        .byte $01   ; 
off_9D4D_01:
- D 0 - I - 0x011D5D 04:9D4D: 00        .byte $00   ; 
- D 0 - I - 0x011D5E 04:9D4E: 00        .byte $00   ; 
- D 0 - I - 0x011D5F 04:9D4F: 00        .byte $00   ; 
- D 0 - I - 0x011D60 04:9D50: 00        .byte $00   ; 
- D 0 - I - 0x011D61 04:9D51: 00        .byte $00   ; 
- D 0 - I - 0x011D62 04:9D52: 00        .byte $00   ; 
- D 0 - I - 0x011D63 04:9D53: 00        .byte $00   ; 
- D 0 - I - 0x011D64 04:9D54: 00        .byte $00   ; 
- D 0 - I - 0x011D65 04:9D55: 00        .byte $00   ; 
off_9D56_01:
- D 0 - I - 0x011D66 04:9D56: 01        .byte $01   ; 
- D 0 - I - 0x011D67 04:9D57: 01        .byte $01   ; 
- D 0 - I - 0x011D68 04:9D58: 01        .byte $01   ; 
- D 0 - I - 0x011D69 04:9D59: 41        .byte $41   ; 
- D 0 - I - 0x011D6A 04:9D5A: 40        .byte $40   ; 
- D 0 - I - 0x011D6B 04:9D5B: 40        .byte $40   ; 
- D 0 - I - 0x011D6C 04:9D5C: 01        .byte $01   ; 
- D 0 - I - 0x011D6D 04:9D5D: C1        .byte $C1   ; 
- D 0 - I - 0x011D6E 04:9D5E: 01        .byte $01   ; 
off_9D5F_01:
- D 0 - I - 0x011D6F 04:9D5F: 00        .byte $00   ; 
- D 0 - I - 0x011D70 04:9D60: 00        .byte $00   ; 
- D 0 - I - 0x011D71 04:9D61: 00        .byte $00   ; 
- D 0 - I - 0x011D72 04:9D62: 00        .byte $00   ; 
- D 0 - I - 0x011D73 04:9D63: 40        .byte $40   ; 
- D 0 - I - 0x011D74 04:9D64: 40        .byte $40   ; 
- D 0 - I - 0x011D75 04:9D65: C0        .byte $C0   ; 
- D 0 - I - 0x011D76 04:9D66: 80        .byte $80   ; 
- D 0 - I - 0x011D77 04:9D67: C0        .byte $C0   ; 
off_9D68_01:
- D 0 - I - 0x011D78 04:9D68: C1        .byte $C1   ; 
- D 0 - I - 0x011D79 04:9D69: C1        .byte $C1   ; 
- D 0 - I - 0x011D7A 04:9D6A: C1        .byte $C1   ; 
- D 0 - I - 0x011D7B 04:9D6B: C1        .byte $C1   ; 
- D 0 - I - 0x011D7C 04:9D6C: C1        .byte $C1   ; 
- D 0 - I - 0x011D7D 04:9D6D: C1        .byte $C1   ; 
- D 0 - I - 0x011D7E 04:9D6E: C1        .byte $C1   ; 
- D 0 - I - 0x011D7F 04:9D6F: C1        .byte $C1   ; 
- D 0 - I - 0x011D80 04:9D70: C1        .byte $C1   ; 
off_9D71_01:
- D 0 - I - 0x011D81 04:9D71: 03        .byte $03   ; 
- D 0 - I - 0x011D82 04:9D72: 03        .byte $03   ; 
- D 0 - I - 0x011D83 04:9D73: 03        .byte $03   ; 
- D 0 - I - 0x011D84 04:9D74: 03        .byte $03   ; 
- D 0 - I - 0x011D85 04:9D75: 03        .byte $03   ; 
- D 0 - I - 0x011D86 04:9D76: 03        .byte $03   ; 
- D 0 - I - 0x011D87 04:9D77: 42        .byte $42   ; 
- D 0 - I - 0x011D88 04:9D78: 42        .byte $42   ; 
- D 0 - I - 0x011D89 04:9D79: 42        .byte $42   ; 
off_9D7A_01:
- D 0 - I - 0x011D8A 04:9D7A: 00        .byte $00   ; 
- D 0 - I - 0x011D8B 04:9D7B: 01        .byte $01   ; 
- D 0 - I - 0x011D8C 04:9D7C: 00        .byte $00   ; 
- D 0 - I - 0x011D8D 04:9D7D: 01        .byte $01   ; 
- D 0 - I - 0x011D8E 04:9D7E: 01        .byte $01   ; 
- D 0 - I - 0x011D8F 04:9D7F: 01        .byte $01   ; 
- D 0 - I - 0x011D90 04:9D80: 01        .byte $01   ; 
- D 0 - I - 0x011D91 04:9D81: 01        .byte $01   ; 
- D 0 - I - 0x011D92 04:9D82: C1        .byte $C1   ; 
off_9D83_01:
- D 0 - I - 0x011D93 04:9D83: 00        .byte $00   ; 
- D 0 - I - 0x011D94 04:9D84: 00        .byte $00   ; 
- D 0 - I - 0x011D95 04:9D85: 00        .byte $00   ; 
- D 0 - I - 0x011D96 04:9D86: 00        .byte $00   ; 
- D 0 - I - 0x011D97 04:9D87: 02        .byte $02   ; 
- D 0 - I - 0x011D98 04:9D88: 01        .byte $01   ; 
- D 0 - I - 0x011D99 04:9D89: 01        .byte $01   ; 
- D 0 - I - 0x011D9A 04:9D8A: 01        .byte $01   ; 
- D 0 - I - 0x011D9B 04:9D8B: 03        .byte $03   ; 
off_9D8C_01:
- D 0 - I - 0x011D9C 04:9D8C: 00        .byte $00   ; 
- D 0 - I - 0x011D9D 04:9D8D: 00        .byte $00   ; 
- D 0 - I - 0x011D9E 04:9D8E: 01        .byte $01   ; 
- D 0 - I - 0x011D9F 04:9D8F: 01        .byte $01   ; 
- D 0 - I - 0x011DA0 04:9D90: 01        .byte $01   ; 
- D 0 - I - 0x011DA1 04:9D91: 01        .byte $01   ; 
- D 0 - I - 0x011DA2 04:9D92: 01        .byte $01   ; 
- D 0 - I - 0x011DA3 04:9D93: 41        .byte $41   ; 
off_9D94_01:
- D 0 - I - 0x011DA4 04:9D94: 01        .byte $01   ; 
- D 0 - I - 0x011DA5 04:9D95: 01        .byte $01   ; 
- D 0 - I - 0x011DA6 04:9D96: 41        .byte $41   ; 
- D 0 - I - 0x011DA7 04:9D97: 41        .byte $41   ; 
- D 0 - I - 0x011DA8 04:9D98: 01        .byte $01   ; 
- D 0 - I - 0x011DA9 04:9D99: 01        .byte $01   ; 
- D 0 - I - 0x011DAA 04:9D9A: 01        .byte $01   ; 
off_9D9B_01:
- D 0 - I - 0x011DAB 04:9D9B: C1        .byte $C1   ; 
- D 0 - I - 0x011DAC 04:9D9C: C1        .byte $C1   ; 
- D 0 - I - 0x011DAD 04:9D9D: C1        .byte $C1   ; 
- D 0 - I - 0x011DAE 04:9D9E: C1        .byte $C1   ; 
- D 0 - I - 0x011DAF 04:9D9F: 00        .byte $00   ; 
- D 0 - I - 0x011DB0 04:9DA0: 01        .byte $01   ; 
- D 0 - I - 0x011DB1 04:9DA1: C1        .byte $C1   ; 
off_9DA2_01:
- D 0 - I - 0x011DB2 04:9DA2: 01        .byte $01   ; 
- D 0 - I - 0x011DB3 04:9DA3: 01        .byte $01   ; 
- D 0 - I - 0x011DB4 04:9DA4: 00        .byte $00   ; 
- D 0 - I - 0x011DB5 04:9DA5: 00        .byte $00   ; 
- D 0 - I - 0x011DB6 04:9DA6: 01        .byte $01   ; 
- D 0 - I - 0x011DB7 04:9DA7: 01        .byte $01   ; 
- D 0 - I - 0x011DB8 04:9DA8: 40        .byte $40   ; 
- D 0 - I - 0x011DB9 04:9DA9: 40        .byte $40   ; 
off_9DAA_01:
- D 0 - I - 0x011DBA 04:9DAA: 00        .byte $00   ; 
- D 0 - I - 0x011DBB 04:9DAB: C1        .byte $C1   ; 
- D 0 - I - 0x011DBC 04:9DAC: C1        .byte $C1   ; 
off_9DAD_01:
- D 0 - I - 0x011DBD 04:9DAD: C1        .byte $C1   ; 
- D 0 - I - 0x011DBE 04:9DAE: C1        .byte $C1   ; 
- D 0 - I - 0x011DBF 04:9DAF: C1        .byte $C1   ; 
- D 0 - I - 0x011DC0 04:9DB0: C1        .byte $C1   ; 
- D 0 - I - 0x011DC1 04:9DB1: C1        .byte $C1   ; 
- D 0 - I - 0x011DC2 04:9DB2: C0        .byte $C0   ; 
- D 0 - I - 0x011DC3 04:9DB3: C0        .byte $C0   ; 
- D 0 - I - 0x011DC4 04:9DB4: C1        .byte $C1   ; 
off_9DB5_01:
- D 0 - I - 0x011DC5 04:9DB5: 81        .byte $81   ; 
- D 0 - I - 0x011DC6 04:9DB6: 81        .byte $81   ; 
- D 0 - I - 0x011DC7 04:9DB7: 41        .byte $41   ; 
- D 0 - I - 0x011DC8 04:9DB8: 81        .byte $81   ; 
- D 0 - I - 0x011DC9 04:9DB9: 81        .byte $81   ; 
- D 0 - I - 0x011DCA 04:9DBA: C1        .byte $C1   ; 
- D 0 - I - 0x011DCB 04:9DBB: C1        .byte $C1   ; 
- D 0 - I - 0x011DCC 04:9DBC: 81        .byte $81   ; 
off_9DBD_01:
- D 0 - I - 0x011DCD 04:9DBD: 01        .byte $01   ; 
- D 0 - I - 0x011DCE 04:9DBE: 01        .byte $01   ; 
- D 0 - I - 0x011DCF 04:9DBF: 01        .byte $01   ; 
- D 0 - I - 0x011DD0 04:9DC0: 01        .byte $01   ; 
- D 0 - I - 0x011DD1 04:9DC1: 01        .byte $01   ; 
- D 0 - I - 0x011DD2 04:9DC2: 01        .byte $01   ; 
- D 0 - I - 0x011DD3 04:9DC3: 01        .byte $01   ; 
- D 0 - I - 0x011DD4 04:9DC4: C0        .byte $C0   ; 
off_9DC5_01:
- D 0 - I - 0x011DD5 04:9DC5: 01        .byte $01   ; 
- D 0 - I - 0x011DD6 04:9DC6: 01        .byte $01   ; 
- D 0 - I - 0x011DD7 04:9DC7: 81        .byte $81   ; 
- D 0 - I - 0x011DD8 04:9DC8: 81        .byte $81   ; 
- D 0 - I - 0x011DD9 04:9DC9: 01        .byte $01   ; 
- D 0 - I - 0x011DDA 04:9DCA: 81        .byte $81   ; 
- D 0 - I - 0x011DDB 04:9DCB: 01        .byte $01   ; 
- D 0 - I - 0x011DDC 04:9DCC: 81        .byte $81   ; 
off_9DCD_01:
- D 0 - I - 0x011DDD 04:9DCD: 41        .byte $41   ; 
- D 0 - I - 0x011DDE 04:9DCE: 41        .byte $41   ; 
- D 0 - I - 0x011DDF 04:9DCF: 41        .byte $41   ; 
- D 0 - I - 0x011DE0 04:9DD0: 41        .byte $41   ; 
- D 0 - I - 0x011DE1 04:9DD1: 41        .byte $41   ; 
- D 0 - I - 0x011DE2 04:9DD2: 80        .byte $80   ; 
- D 0 - I - 0x011DE3 04:9DD3: 81        .byte $81   ; 
- D 0 - I - 0x011DE4 04:9DD4: 81        .byte $81   ; 
off_9DD5_01:
- D 0 - I - 0x011DE5 04:9DD5: 40        .byte $40   ; 
- D 0 - I - 0x011DE6 04:9DD6: 40        .byte $40   ; 
- D 0 - I - 0x011DE7 04:9DD7: 40        .byte $40   ; 
- D 0 - I - 0x011DE8 04:9DD8: 40        .byte $40   ; 
- D 0 - I - 0x011DE9 04:9DD9: 00        .byte $00   ; 
off_9DDA_01:
- D 0 - I - 0x011DEA 04:9DDA: 00        .byte $00   ; 
off_9DDB_01:
- D 0 - I - 0x011DEB 04:9DDB: 00        .byte $00   ; 
- D 0 - I - 0x011DEC 04:9DDC: 00        .byte $00   ; 
- D 0 - I - 0x011DED 04:9DDD: 80        .byte $80   ; 
- D 0 - I - 0x011DEE 04:9DDE: 80        .byte $80   ; 
off_9DDF_01:
- D 0 - I - 0x011DEF 04:9DDF: 00        .byte $00   ; 
- D 0 - I - 0x011DF0 04:9DE0: 00        .byte $00   ; 
- D 0 - I - 0x011DF1 04:9DE1: 00        .byte $00   ; 
- D 0 - I - 0x011DF2 04:9DE2: 00        .byte $00   ; 
- D 0 - I - 0x011DF3 04:9DE3: 40        .byte $40   ; 
- D 0 - I - 0x011DF4 04:9DE4: 40        .byte $40   ; 
- D 0 - I - 0x011DF5 04:9DE5: 00        .byte $00   ; 
off_9DE6_01:
- D 0 - I - 0x011DF6 04:9DE6: 01        .byte $01   ; 
- D 0 - I - 0x011DF7 04:9DE7: 41        .byte $41   ; 
off_9DE8_01:
- D 0 - I - 0x011DF8 04:9DE8: 00        .byte $00   ; 
- D 0 - I - 0x011DF9 04:9DE9: 00        .byte $00   ; 
- D 0 - I - 0x011DFA 04:9DEA: 00        .byte $00   ; 
- D 0 - I - 0x011DFB 04:9DEB: 00        .byte $00   ; 
- D 0 - I - 0x011DFC 04:9DEC: 01        .byte $01   ; 
- D 0 - I - 0x011DFD 04:9DED: 41        .byte $41   ; 
off_9DEE_01:
- D 0 - I - 0x011DFE 04:9DEE: 00        .byte $00   ; 
off_9DEF_01:
- D 0 - I - 0x011DFF 04:9DEF: 40        .byte $40   ; 
- D 0 - I - 0x011E00 04:9DF0: 80        .byte $80   ; 
- D 0 - I - 0x011E01 04:9DF1: C0        .byte $C0   ; 
- D 0 - I - 0x011E02 04:9DF2: 00        .byte $00   ; 
off_9DF3_01:
- D 0 - I - 0x011E03 04:9DF3: 80        .byte $80   ; 
- D 0 - I - 0x011E04 04:9DF4: 80        .byte $80   ; 
- D 0 - I - 0x011E05 04:9DF5: 80        .byte $80   ; 
off_9DF6_01:
- D 0 - I - 0x011E06 04:9DF6: 80        .byte $80   ; 
- D 0 - I - 0x011E07 04:9DF7: C0        .byte $C0   ; 
- D 0 - I - 0x011E08 04:9DF8: 80        .byte $80   ; 
off_9DF9_01:
- D 0 - I - 0x011E09 04:9DF9: C0        .byte $C0   ; 
- D 0 - I - 0x011E0A 04:9DFA: C0        .byte $C0   ; 
- D 0 - I - 0x011E0B 04:9DFB: C0        .byte $C0   ; 
- D 0 - I - 0x011E0C 04:9DFC: C0        .byte $C0   ; 
off_9DFD_01:
- D 0 - I - 0x011E0D 04:9DFD: 40        .byte $40   ; 
- D 0 - I - 0x011E0E 04:9DFE: C0        .byte $C0   ; 
- D 0 - I - 0x011E0F 04:9DFF: C0        .byte $C0   ; 
- D 0 - I - 0x011E10 04:9E00: C0        .byte $C0   ; 
off_9E01_01:
- D 0 - I - 0x011E11 04:9E01: 80        .byte $80   ; 
- D 0 - I - 0x011E12 04:9E02: C0        .byte $C0   ; 
- D 0 - I - 0x011E13 04:9E03: 80        .byte $80   ; 
- D 0 - I - 0x011E14 04:9E04: 80        .byte $80   ; 
off_9E05_01:
- D 0 - I - 0x011E15 04:9E05: 00        .byte $00   ; 
- D 0 - I - 0x011E16 04:9E06: 80        .byte $80   ; 
- D 0 - I - 0x011E17 04:9E07: 00        .byte $00   ; 
off_9E08_01:
- D 0 - I - 0x011E18 04:9E08: 00        .byte $00   ; 
- D 0 - I - 0x011E19 04:9E09: 80        .byte $80   ; 
- D 0 - I - 0x011E1A 04:9E0A: 00        .byte $00   ; 
- D 0 - I - 0x011E1B 04:9E0B: 80        .byte $80   ; 
off_9E0C_02:
- D 0 - I - 0x011E1C 04:9E0C: E4        .byte $E4   ; 
- D 0 - I - 0x011E1D 04:9E0D: EC        .byte $EC   ; 
- D 0 - I - 0x011E1E 04:9E0E: F4        .byte $F4   ; 
off_9E0F_02:
- D 0 - I - 0x011E1F 04:9E0F: FC        .byte $FC   ; 
- D 0 - I - 0x011E20 04:9E10: DC        .byte $DC   ; 
- D 0 - I - 0x011E21 04:9E11: E4        .byte $E4   ; 
- D 0 - I - 0x011E22 04:9E12: EC        .byte $EC   ; 
- D 0 - I - 0x011E23 04:9E13: F4        .byte $F4   ; 
- D 0 - I - 0x011E24 04:9E14: FC        .byte $FC   ; 
- D 0 - I - 0x011E25 04:9E15: DC        .byte $DC   ; 
- D 0 - I - 0x011E26 04:9E16: E4        .byte $E4   ; 
- D 0 - I - 0x011E27 04:9E17: EC        .byte $EC   ; 
- D 0 - I - 0x011E28 04:9E18: F4        .byte $F4   ; 
- D 0 - I - 0x011E29 04:9E19: FC        .byte $FC   ; 
- D 0 - I - 0x011E2A 04:9E1A: DC        .byte $DC   ; 
- D 0 - I - 0x011E2B 04:9E1B: EC        .byte $EC   ; 
- D 0 - I - 0x011E2C 04:9E1C: F4        .byte $F4   ; 
- D 0 - I - 0x011E2D 04:9E1D: FC        .byte $FC   ; 
- D 0 - I - 0x011E2E 04:9E1E: FF        .byte $FF   ; 
- D 0 - I - 0x011E2F 04:9E1F: E4        .byte $E4   ; 
- D 0 - I - 0x011E30 04:9E20: E1        .byte $E1   ; 
- D 0 - I - 0x011E31 04:9E21: E9        .byte $E9   ; 
off_9E22_02:
- D 0 - I - 0x011E32 04:9E22: F0        .byte $F0   ; 
off_9E23_02:
- D 0 - I - 0x011E33 04:9E23: F8        .byte $F8   ; 
off_9E24_02:
- D 0 - I - 0x011E34 04:9E24: E4        .byte $E4   ; 
- D 0 - I - 0x011E35 04:9E25: EC        .byte $EC   ; 
- D 0 - I - 0x011E36 04:9E26: F4        .byte $F4   ; 
- D 0 - I - 0x011E37 04:9E27: FC        .byte $FC   ; 
- D 0 - I - 0x011E38 04:9E28: DC        .byte $DC   ; 
- D 0 - I - 0x011E39 04:9E29: E4        .byte $E4   ; 
- D 0 - I - 0x011E3A 04:9E2A: EC        .byte $EC   ; 
- D 0 - I - 0x011E3B 04:9E2B: F4        .byte $F4   ; 
- D 0 - I - 0x011E3C 04:9E2C: FC        .byte $FC   ; 
- D 0 - I - 0x011E3D 04:9E2D: DC        .byte $DC   ; 
- D 0 - I - 0x011E3E 04:9E2E: E4        .byte $E4   ; 
- D 0 - I - 0x011E3F 04:9E2F: EC        .byte $EC   ; 
- D 0 - I - 0x011E40 04:9E30: F4        .byte $F4   ; 
- D 0 - I - 0x011E41 04:9E31: FC        .byte $FC   ; 
- D 0 - I - 0x011E42 04:9E32: E4        .byte $E4   ; 
- D 0 - I - 0x011E43 04:9E33: EC        .byte $EC   ; 
- D 0 - I - 0x011E44 04:9E34: F4        .byte $F4   ; 
- D 0 - I - 0x011E45 04:9E35: FC        .byte $FC   ; 
- D 0 - I - 0x011E46 04:9E36: DC        .byte $DC   ; 
- D 0 - I - 0x011E47 04:9E37: FF        .byte $FF   ; 
- D 0 - I - 0x011E48 04:9E38: E1        .byte $E1   ; 
- D 0 - I - 0x011E49 04:9E39: E9        .byte $E9   ; 
- D 0 - I - 0x011E4A 04:9E3A: F0        .byte $F0   ; 
- D 0 - I - 0x011E4B 04:9E3B: F8        .byte $F8   ; 
off_9E3C_02:
- D 0 - I - 0x011E4C 04:9E3C: F9        .byte $F9   ; 
- D 0 - I - 0x011E4D 04:9E3D: 01        .byte $01   ; 
- D 0 - I - 0x011E4E 04:9E3E: F9        .byte $F9   ; 
- D 0 - I - 0x011E4F 04:9E3F: 01        .byte $01   ; 
- D 0 - I - 0x011E50 04:9E40: F9        .byte $F9   ; 
- D 0 - I - 0x011E51 04:9E41: 01        .byte $01   ; 
- D 0 - I - 0x011E52 04:9E42: F1        .byte $F1   ; 
- D 0 - I - 0x011E53 04:9E43: F1        .byte $F1   ; 
- D 0 - I - 0x011E54 04:9E44: F9        .byte $F9   ; 
- D 0 - I - 0x011E55 04:9E45: 01        .byte $01   ; 
- D 0 - I - 0x011E56 04:9E46: 09        .byte $09   ; 
- D 0 - I - 0x011E57 04:9E47: F1        .byte $F1   ; 
- D 0 - I - 0x011E58 04:9E48: F9        .byte $F9   ; 
- D 0 - I - 0x011E59 04:9E49: 01        .byte $01   ; 
- D 0 - I - 0x011E5A 04:9E4A: 09        .byte $09   ; 
- D 0 - I - 0x011E5B 04:9E4B: 09        .byte $09   ; 
- D 0 - I - 0x011E5C 04:9E4C: 11        .byte $11   ; 
- D 0 - I - 0x011E5D 04:9E4D: 09        .byte $09   ; 
- D 0 - I - 0x011E5E 04:9E4E: 11        .byte $11   ; 
- D 0 - I - 0x011E5F 04:9E4F: 11        .byte $11   ; 
- D 0 - I - 0x011E60 04:9E50: E9        .byte $E9   ; 
off_9E51_02:
- D 0 - I - 0x011E61 04:9E51: 06        .byte $06   ; 
- D 0 - I - 0x011E62 04:9E52: 0E        .byte $0E   ; 
- D 0 - I - 0x011E63 04:9E53: 06        .byte $06   ; 
- D 0 - I - 0x011E64 04:9E54: 0E        .byte $0E   ; 
- D 0 - I - 0x011E65 04:9E55: EE        .byte $EE   ; 
- D 0 - I - 0x011E66 04:9E56: F6        .byte $F6   ; 
- D 0 - I - 0x011E67 04:9E57: FE        .byte $FE   ; 
- D 0 - I - 0x011E68 04:9E58: F6        .byte $F6   ; 
- D 0 - I - 0x011E69 04:9E59: FE        .byte $FE   ; 
- D 0 - I - 0x011E6A 04:9E5A: F6        .byte $F6   ; 
- D 0 - I - 0x011E6B 04:9E5B: FE        .byte $FE   ; 
off_9E5C_02:
- D 0 - I - 0x011E6C 04:9E5C: 00        .byte $00   ; 
- D 0 - I - 0x011E6D 04:9E5D: 08        .byte $08   ; 
- D 0 - I - 0x011E6E 04:9E5E: EE        .byte $EE   ; 
- D 0 - I - 0x011E6F 04:9E5F: F6        .byte $F6   ; 
- D 0 - I - 0x011E70 04:9E60: FE        .byte $FE   ; 
- D 0 - I - 0x011E71 04:9E61: 01        .byte $01   ; 
- D 0 - I - 0x011E72 04:9E62: 09        .byte $09   ; 
off_9E63_02:
- D 0 - I - 0x011E73 04:9E63: EF        .byte $EF   ; 
- D 0 - I - 0x011E74 04:9E64: F7        .byte $F7   ; 
- D 0 - I - 0x011E75 04:9E65: FF        .byte $FF   ; 
- D 0 - I - 0x011E76 04:9E66: 08        .byte $08   ; 
- D 0 - I - 0x011E77 04:9E67: EF        .byte $EF   ; 
- D 0 - I - 0x011E78 04:9E68: 08        .byte $08   ; 
- D 0 - I - 0x011E79 04:9E69: F6        .byte $F6   ; 
- D 0 - I - 0x011E7A 04:9E6A: FE        .byte $FE   ; 
- D 0 - I - 0x011E7B 04:9E6B: FB        .byte $FB   ; 
- D 0 - I - 0x011E7C 04:9E6C: 03        .byte $03   ; 
- D 0 - I - 0x011E7D 04:9E6D: F0        .byte $F0   ; 
off_9E6E_02:
- D 0 - I - 0x011E7E 04:9E6E: F7        .byte $F7   ; 
- D 0 - I - 0x011E7F 04:9E6F: FF        .byte $FF   ; 
- D 0 - I - 0x011E80 04:9E70: 07        .byte $07   ; 
- D 0 - I - 0x011E81 04:9E71: F7        .byte $F7   ; 
- D 0 - I - 0x011E82 04:9E72: FF        .byte $FF   ; 
- D 0 - I - 0x011E83 04:9E73: 07        .byte $07   ; 
- D 0 - I - 0x011E84 04:9E74: EB        .byte $EB   ; 
off_9E75_02:
- D 0 - I - 0x011E85 04:9E75: F0        .byte $F0   ; 
- D 0 - I - 0x011E86 04:9E76: F8        .byte $F8   ; 
- D 0 - I - 0x011E87 04:9E77: F0        .byte $F0   ; 
- D 0 - I - 0x011E88 04:9E78: F8        .byte $F8   ; 
- D 0 - I - 0x011E89 04:9E79: F0        .byte $F0   ; 
- D 0 - I - 0x011E8A 04:9E7A: F8        .byte $F8   ; 
- D 0 - I - 0x011E8B 04:9E7B: F0        .byte $F0   ; 
off_9E7C_02:
- D 0 - I - 0x011E8C 04:9E7C: F8        .byte $F8   ; 
- D 0 - I - 0x011E8D 04:9E7D: 00        .byte $00   ; 
- D 0 - I - 0x011E8E 04:9E7E: 00        .byte $00   ; 
- D 0 - I - 0x011E8F 04:9E7F: 00        .byte $00   ; 
- D 0 - I - 0x011E90 04:9E80: 00        .byte $00   ; 
- D 0 - I - 0x011E91 04:9E81: 08        .byte $08   ; 
- D 0 - I - 0x011E92 04:9E82: 08        .byte $08   ; 
- D 0 - I - 0x011E93 04:9E83: 08        .byte $08   ; 
- D 0 - I - 0x011E94 04:9E84: 08        .byte $08   ; 
- D 0 - I - 0x011E95 04:9E85: F8        .byte $F8   ; 
- D 0 - I - 0x011E96 04:9E86: 00        .byte $00   ; 
off_9E87_02:
- D 0 - I - 0x011E97 04:9E87: F9        .byte $F9   ; 
- D 0 - I - 0x011E98 04:9E88: 01        .byte $01   ; 
- D 0 - I - 0x011E99 04:9E89: 09        .byte $09   ; 
- D 0 - I - 0x011E9A 04:9E8A: F9        .byte $F9   ; 
- D 0 - I - 0x011E9B 04:9E8B: 01        .byte $01   ; 
- D 0 - I - 0x011E9C 04:9E8C: 09        .byte $09   ; 
- D 0 - I - 0x011E9D 04:9E8D: F9        .byte $F9   ; 
- D 0 - I - 0x011E9E 04:9E8E: 01        .byte $01   ; 
- D 0 - I - 0x011E9F 04:9E8F: F1        .byte $F1   ; 
- D 0 - I - 0x011EA0 04:9E90: F1        .byte $F1   ; 
- D 0 - I - 0x011EA1 04:9E91: E9        .byte $E9   ; 
- D 0 - I - 0x011EA2 04:9E92: F9        .byte $F9   ; 
- D 0 - I - 0x011EA3 04:9E93: 01        .byte $01   ; 
- D 0 - I - 0x011EA4 04:9E94: 09        .byte $09   ; 
- D 0 - I - 0x011EA5 04:9E95: 09        .byte $09   ; 
- D 0 - I - 0x011EA6 04:9E96: F1        .byte $F1   ; 
- D 0 - I - 0x011EA7 04:9E97: F9        .byte $F9   ; 
- D 0 - I - 0x011EA8 04:9E98: 01        .byte $01   ; 
off_9E99_02:
- D 0 - I - 0x011EA9 04:9E99: F0        .byte $F0   ; 
- D 0 - I - 0x011EAA 04:9E9A: 05        .byte $05   ; 
- D 0 - I - 0x011EAB 04:9E9B: F7        .byte $F7   ; 
- D 0 - I - 0x011EAC 04:9E9C: FF        .byte $FF   ; 
- D 0 - I - 0x011EAD 04:9E9D: 05        .byte $05   ; 
- D 0 - I - 0x011EAE 04:9E9E: F0        .byte $F0   ; 
- D 0 - I - 0x011EAF 04:9E9F: F6        .byte $F6   ; 
- D 0 - I - 0x011EB0 04:9EA0: FE        .byte $FE   ; 
- D 0 - I - 0x011EB1 04:9EA1: FB        .byte $FB   ; 
- D 0 - I - 0x011EB2 04:9EA2: 03        .byte $03   ; 
- D 0 - I - 0x011EB3 04:9EA3: EF        .byte $EF   ; 
- D 0 - I - 0x011EB4 04:9EA4: F7        .byte $F7   ; 
- D 0 - I - 0x011EB5 04:9EA5: FF        .byte $FF   ; 
- D 0 - I - 0x011EB6 04:9EA6: 06        .byte $06   ; 
- D 0 - I - 0x011EB7 04:9EA7: F7        .byte $F7   ; 
- D 0 - I - 0x011EB8 04:9EA8: FF        .byte $FF   ; 
- D 0 - I - 0x011EB9 04:9EA9: 07        .byte $07   ; 
- D 0 - I - 0x011EBA 04:9EAA: 04        .byte $04   ; 
off_9EAB_02:
- D 0 - I - 0x011EBB 04:9EAB: FA        .byte $FA   ; 
- D 0 - I - 0x011EBC 04:9EAC: 02        .byte $02   ; 
- D 0 - I - 0x011EBD 04:9EAD: 0C        .byte $0C   ; 
- D 0 - I - 0x011EBE 04:9EAE: F2        .byte $F2   ; 
- D 0 - I - 0x011EBF 04:9EAF: FA        .byte $FA   ; 
- D 0 - I - 0x011EC0 04:9EB0: 02        .byte $02   ; 
- D 0 - I - 0x011EC1 04:9EB1: 0A        .byte $0A   ; 
- D 0 - I - 0x011EC2 04:9EB2: 0A        .byte $0A   ; 
- D 0 - I - 0x011EC3 04:9EB3: 0A        .byte $0A   ; 
- D 0 - I - 0x011EC4 04:9EB4: 02        .byte $02   ; 
- D 0 - I - 0x011EC5 04:9EB5: F2        .byte $F2   ; 
- D 0 - I - 0x011EC6 04:9EB6: FA        .byte $FA   ; 
- D 0 - I - 0x011EC7 04:9EB7: F2        .byte $F2   ; 
- D 0 - I - 0x011EC8 04:9EB8: FA        .byte $FA   ; 
- D 0 - I - 0x011EC9 04:9EB9: F2        .byte $F2   ; 
- D 0 - I - 0x011ECA 04:9EBA: FA        .byte $FA   ; 
- D 0 - I - 0x011ECB 04:9EBB: 02        .byte $02   ; 
- D 0 - I - 0x011ECC 04:9EBC: 02        .byte $02   ; 
off_9EBD_02:
- D 0 - I - 0x011ECD 04:9EBD: F0        .byte $F0   ; 
- D 0 - I - 0x011ECE 04:9EBE: F8        .byte $F8   ; 
- D 0 - I - 0x011ECF 04:9EBF: 00        .byte $00   ; 
- D 0 - I - 0x011ED0 04:9EC0: 08        .byte $08   ; 
- D 0 - I - 0x011ED1 04:9EC1: F0        .byte $F0   ; 
- D 0 - I - 0x011ED2 04:9EC2: F8        .byte $F8   ; 
- D 0 - I - 0x011ED3 04:9EC3: 00        .byte $00   ; 
- D 0 - I - 0x011ED4 04:9EC4: 08        .byte $08   ; 
- D 0 - I - 0x011ED5 04:9EC5: F0        .byte $F0   ; 
- D 0 - I - 0x011ED6 04:9EC6: F8        .byte $F8   ; 
- D 0 - I - 0x011ED7 04:9EC7: 00        .byte $00   ; 
- D 0 - I - 0x011ED8 04:9EC8: 08        .byte $08   ; 
off_9EC9_02:
- D 0 - I - 0x011ED9 04:9EC9: F8        .byte $F8   ; 
- D 0 - I - 0x011EDA 04:9ECA: 00        .byte $00   ; 
- D 0 - I - 0x011EDB 04:9ECB: F8        .byte $F8   ; 
- D 0 - I - 0x011EDC 04:9ECC: 00        .byte $00   ; 
- D 0 - I - 0x011EDD 04:9ECD: F0        .byte $F0   ; 
off_9ECE_02:
- D 0 - I - 0x011EDE 04:9ECE: 0E        .byte $0E   ; 
- D 0 - I - 0x011EDF 04:9ECF: 06        .byte $06   ; 
- D 0 - I - 0x011EE0 04:9ED0: 0E        .byte $0E   ; 
- D 0 - I - 0x011EE1 04:9ED1: FE        .byte $FE   ; 
- D 0 - I - 0x011EE2 04:9ED2: 06        .byte $06   ; 
- D 0 - I - 0x011EE3 04:9ED3: FE        .byte $FE   ; 
- D 0 - I - 0x011EE4 04:9ED4: 06        .byte $06   ; 
- D 0 - I - 0x011EE5 04:9ED5: F6        .byte $F6   ; 
- D 0 - I - 0x011EE6 04:9ED6: F6        .byte $F6   ; 
- D 0 - I - 0x011EE7 04:9ED7: F6        .byte $F6   ; 
- D 0 - I - 0x011EE8 04:9ED8: EE        .byte $EE   ; 
- D 0 - I - 0x011EE9 04:9ED9: FE        .byte $FE   ; 
- D 0 - I - 0x011EEA 04:9EDA: 00        .byte $00   ; 
- D 0 - I - 0x011EEB 04:9EDB: 08        .byte $08   ; 
- D 0 - I - 0x011EEC 04:9EDC: EE        .byte $EE   ; 
- D 0 - I - 0x011EED 04:9EDD: F6        .byte $F6   ; 
- D 0 - I - 0x011EEE 04:9EDE: FE        .byte $FE   ; 
off_9EDF_02:
- D 0 - I - 0x011EEF 04:9EDF: 05        .byte $05   ; 
- D 0 - I - 0x011EF0 04:9EE0: 0D        .byte $0D   ; 
- D 0 - I - 0x011EF1 04:9EE1: F8        .byte $F8   ; 
- D 0 - I - 0x011EF2 04:9EE2: 00        .byte $00   ; 
- D 0 - I - 0x011EF3 04:9EE3: 05        .byte $05   ; 
- D 0 - I - 0x011EF4 04:9EE4: 0D        .byte $0D   ; 
- D 0 - I - 0x011EF5 04:9EE5: F5        .byte $F5   ; 
- D 0 - I - 0x011EF6 04:9EE6: FD        .byte $FD   ; 
- D 0 - I - 0x011EF7 04:9EE7: 05        .byte $05   ; 
- D 0 - I - 0x011EF8 04:9EE8: F3        .byte $F3   ; 
- D 0 - I - 0x011EF9 04:9EE9: FB        .byte $FB   ; 
- D 0 - I - 0x011EFA 04:9EEA: 03        .byte $03   ; 
- D 0 - I - 0x011EFB 04:9EEB: FB        .byte $FB   ; 
- D 0 - I - 0x011EFC 04:9EEC: 03        .byte $03   ; 
- D 0 - I - 0x011EFD 04:9EED: EB        .byte $EB   ; 
- D 0 - I - 0x011EFE 04:9EEE: F0        .byte $F0   ; 
off_9EEF_02:
- D 0 - I - 0x011EFF 04:9EEF: 05        .byte $05   ; 
- D 0 - I - 0x011F00 04:9EF0: 0D        .byte $0D   ; 
- D 0 - I - 0x011F01 04:9EF1: 04        .byte $04   ; 
- D 0 - I - 0x011F02 04:9EF2: 0C        .byte $0C   ; 
- D 0 - I - 0x011F03 04:9EF3: 03        .byte $03   ; 
- D 0 - I - 0x011F04 04:9EF4: 0B        .byte $0B   ; 
- D 0 - I - 0x011F05 04:9EF5: 05        .byte $05   ; 
- D 0 - I - 0x011F06 04:9EF6: 0D        .byte $0D   ; 
- D 0 - I - 0x011F07 04:9EF7: F1        .byte $F1   ; 
- D 0 - I - 0x011F08 04:9EF8: F9        .byte $F9   ; 
- D 0 - I - 0x011F09 04:9EF9: F2        .byte $F2   ; 
- D 0 - I - 0x011F0A 04:9EFA: FA        .byte $FA   ; 
- D 0 - I - 0x011F0B 04:9EFB: F3        .byte $F3   ; 
- D 0 - I - 0x011F0C 04:9EFC: FB        .byte $FB   ; 
- D 0 - I - 0x011F0D 04:9EFD: F9        .byte $F9   ; 
off_9EFE_02:
- D 0 - I - 0x011F0E 04:9EFE: F1        .byte $F1   ; 
- D 0 - I - 0x011F0F 04:9EFF: F9        .byte $F9   ; 
- D 0 - I - 0x011F10 04:9F00: 01        .byte $01   ; 
- D 0 - I - 0x011F11 04:9F01: F9        .byte $F9   ; 
- D 0 - I - 0x011F12 04:9F02: 01        .byte $01   ; 
- D 0 - I - 0x011F13 04:9F03: F1        .byte $F1   ; 
- D 0 - I - 0x011F14 04:9F04: 09        .byte $09   ; 
- D 0 - I - 0x011F15 04:9F05: 08        .byte $08   ; 
- D 0 - I - 0x011F16 04:9F06: 09        .byte $09   ; 
- D 0 - I - 0x011F17 04:9F07: 01        .byte $01   ; 
- D 0 - I - 0x011F18 04:9F08: F1        .byte $F1   ; 
- D 0 - I - 0x011F19 04:9F09: F8        .byte $F8   ; 
- D 0 - I - 0x011F1A 04:9F0A: 08        .byte $08   ; 
- D 0 - I - 0x011F1B 04:9F0B: 00        .byte $00   ; 
- D 0 - I - 0x011F1C 04:9F0C: F2        .byte $F2   ; 
- D 0 - I - 0x011F1D 04:9F0D: F9        .byte $F9   ; 
off_9F0E_02:
- D 0 - I - 0x011F1E 04:9F0E: F1        .byte $F1   ; 
- D 0 - I - 0x011F1F 04:9F0F: F9        .byte $F9   ; 
- D 0 - I - 0x011F20 04:9F10: 01        .byte $01   ; 
- D 0 - I - 0x011F21 04:9F11: 09        .byte $09   ; 
- D 0 - I - 0x011F22 04:9F12: F1        .byte $F1   ; 
- D 0 - I - 0x011F23 04:9F13: F9        .byte $F9   ; 
- D 0 - I - 0x011F24 04:9F14: 01        .byte $01   ; 
- D 0 - I - 0x011F25 04:9F15: 08        .byte $08   ; 
- D 0 - I - 0x011F26 04:9F16: F2        .byte $F2   ; 
- D 0 - I - 0x011F27 04:9F17: F9        .byte $F9   ; 
- D 0 - I - 0x011F28 04:9F18: 01        .byte $01   ; 
- D 0 - I - 0x011F29 04:9F19: 09        .byte $09   ; 
- D 0 - I - 0x011F2A 04:9F1A: F1        .byte $F1   ; 
- D 0 - I - 0x011F2B 04:9F1B: F9        .byte $F9   ; 
- D 0 - I - 0x011F2C 04:9F1C: 01        .byte $01   ; 
- D 0 - I - 0x011F2D 04:9F1D: 09        .byte $09   ; 
off_9F1E_02:
- D 0 - I - 0x011F2E 04:9F1E: FC        .byte $FC   ; 
- D 0 - I - 0x011F2F 04:9F1F: F3        .byte $F3   ; 
- D 0 - I - 0x011F30 04:9F20: FB        .byte $FB   ; 
- D 0 - I - 0x011F31 04:9F21: 08        .byte $08   ; 
- D 0 - I - 0x011F32 04:9F22: 09        .byte $09   ; 
- D 0 - I - 0x011F33 04:9F23: 11        .byte $11   ; 
- D 0 - I - 0x011F34 04:9F24: F5        .byte $F5   ; 
- D 0 - I - 0x011F35 04:9F25: F4        .byte $F4   ; 
- D 0 - I - 0x011F36 04:9F26: FD        .byte $FD   ; 
- D 0 - I - 0x011F37 04:9F27: 07        .byte $07   ; 
- D 0 - I - 0x011F38 04:9F28: 0F        .byte $0F   ; 
- D 0 - I - 0x011F39 04:9F29: 10        .byte $10   ; 
- D 0 - I - 0x011F3A 04:9F2A: F5        .byte $F5   ; 
- D 0 - I - 0x011F3B 04:9F2B: FD        .byte $FD   ; 
- D 0 - I - 0x011F3C 04:9F2C: 0F        .byte $0F   ; 
- D 0 - I - 0x011F3D 04:9F2D: 07        .byte $07   ; 
off_9F2E_02:
- D 0 - I - 0x011F3E 04:9F2E: ED        .byte $ED   ; 
- D 0 - I - 0x011F3F 04:9F2F: ED        .byte $ED   ; 
- D 0 - I - 0x011F40 04:9F30: F5        .byte $F5   ; 
- D 0 - I - 0x011F41 04:9F31: F5        .byte $F5   ; 
- D 0 - I - 0x011F42 04:9F32: F5        .byte $F5   ; 
- D 0 - I - 0x011F43 04:9F33: F7        .byte $F7   ; 
- D 0 - I - 0x011F44 04:9F34: F7        .byte $F7   ; 
- D 0 - I - 0x011F45 04:9F35: FF        .byte $FF   ; 
- D 0 - I - 0x011F46 04:9F36: FF        .byte $FF   ; 
- D 0 - I - 0x011F47 04:9F37: 07        .byte $07   ; 
- D 0 - I - 0x011F48 04:9F38: FD        .byte $FD   ; 
- D 0 - I - 0x011F49 04:9F39: 05        .byte $05   ; 
- D 0 - I - 0x011F4A 04:9F3A: 02        .byte $02   ; 
- D 0 - I - 0x011F4B 04:9F3B: FA        .byte $FA   ; 
- D 0 - I - 0x011F4C 04:9F3C: 0F        .byte $0F   ; 
- D 0 - I - 0x011F4D 04:9F3D: 0A        .byte $0A   ; 
off_9F3E_02:
- D 0 - I - 0x011F4E 04:9F3E: E0        .byte $E0   ; 
- D 0 - I - 0x011F4F 04:9F3F: E8        .byte $E8   ; 
- D 0 - I - 0x011F50 04:9F40: F0        .byte $F0   ; 
- D 0 - I - 0x011F51 04:9F41: F8        .byte $F8   ; 
- D 0 - I - 0x011F52 04:9F42: DC        .byte $DC   ; 
- D 0 - I - 0x011F53 04:9F43: E4        .byte $E4   ; 
- D 0 - I - 0x011F54 04:9F44: EC        .byte $EC   ; 
- D 0 - I - 0x011F55 04:9F45: F4        .byte $F4   ; 
- D 0 - I - 0x011F56 04:9F46: FC        .byte $FC   ; 
- D 0 - I - 0x011F57 04:9F47: DC        .byte $DC   ; 
- D 0 - I - 0x011F58 04:9F48: E4        .byte $E4   ; 
- D 0 - I - 0x011F59 04:9F49: EC        .byte $EC   ; 
- D 0 - I - 0x011F5A 04:9F4A: F4        .byte $F4   ; 
- D 0 - I - 0x011F5B 04:9F4B: FC        .byte $FC   ; 
- D 0 - I - 0x011F5C 04:9F4C: EF        .byte $EF   ; 
- D 0 - I - 0x011F5D 04:9F4D: F7        .byte $F7   ; 
off_9F4E_02:
- D 0 - I - 0x011F5E 04:9F4E: 08        .byte $08   ; 
- D 0 - I - 0x011F5F 04:9F4F: 00        .byte $00   ; 
- D 0 - I - 0x011F60 04:9F50: 08        .byte $08   ; 
- D 0 - I - 0x011F61 04:9F51: F8        .byte $F8   ; 
- D 0 - I - 0x011F62 04:9F52: F8        .byte $F8   ; 
- D 0 - I - 0x011F63 04:9F53: F8        .byte $F8   ; 
- D 0 - I - 0x011F64 04:9F54: 00        .byte $00   ; 
- D 0 - I - 0x011F65 04:9F55: 10        .byte $10   ; 
- D 0 - I - 0x011F66 04:9F56: 10        .byte $10   ; 
- D 0 - I - 0x011F67 04:9F57: 10        .byte $10   ; 
- D 0 - I - 0x011F68 04:9F58: 00        .byte $00   ; 
- D 0 - I - 0x011F69 04:9F59: 08        .byte $08   ; 
- D 0 - I - 0x011F6A 04:9F5A: 00        .byte $00   ; 
- D 0 - I - 0x011F6B 04:9F5B: 00        .byte $00   ; 
- D 0 - I - 0x011F6C 04:9F5C: 08        .byte $08   ; 
off_9F5D_02:
- D 0 - I - 0x011F6D 04:9F5D: F6        .byte $F6   ; 
- D 0 - I - 0x011F6E 04:9F5E: FE        .byte $FE   ; 
- D 0 - I - 0x011F6F 04:9F5F: 04        .byte $04   ; 
- D 0 - I - 0x011F70 04:9F60: F6        .byte $F6   ; 
- D 0 - I - 0x011F71 04:9F61: FE        .byte $FE   ; 
- D 0 - I - 0x011F72 04:9F62: 06        .byte $06   ; 
- D 0 - I - 0x011F73 04:9F63: F5        .byte $F5   ; 
- D 0 - I - 0x011F74 04:9F64: F0        .byte $F0   ; 
- D 0 - I - 0x011F75 04:9F65: F0        .byte $F0   ; 
- D 0 - I - 0x011F76 04:9F66: F0        .byte $F0   ; 
- D 0 - I - 0x011F77 04:9F67: FD        .byte $FD   ; 
off_9F68_02:
- D 0 - I - 0x011F78 04:9F68: F8        .byte $F8   ; 
- D 0 - I - 0x011F79 04:9F69: 00        .byte $00   ; 
- D 0 - I - 0x011F7A 04:9F6A: 04        .byte $04   ; 
- D 0 - I - 0x011F7B 04:9F6B: EE        .byte $EE   ; 
off_9F6C_02:
- D 0 - I - 0x011F7C 04:9F6C: F8        .byte $F8   ; 
- D 0 - I - 0x011F7D 04:9F6D: 10        .byte $10   ; 
- D 0 - I - 0x011F7E 04:9F6E: F8        .byte $F8   ; 
- D 0 - I - 0x011F7F 04:9F6F: 10        .byte $10   ; 
- D 0 - I - 0x011F80 04:9F70: F8        .byte $F8   ; 
- D 0 - I - 0x011F81 04:9F71: 00        .byte $00   ; 
- D 0 - I - 0x011F82 04:9F72: 08        .byte $08   ; 
- D 0 - I - 0x011F83 04:9F73: 10        .byte $10   ; 
- D 0 - I - 0x011F84 04:9F74: 00        .byte $00   ; 
- D 0 - I - 0x011F85 04:9F75: 08        .byte $08   ; 
- D 0 - I - 0x011F86 04:9F76: 00        .byte $00   ; 
- D 0 - I - 0x011F87 04:9F77: 00        .byte $00   ; 
- D 0 - I - 0x011F88 04:9F78: 08        .byte $08   ; 
- D 0 - I - 0x011F89 04:9F79: 08        .byte $08   ; 
off_9F7A_02:
- D 0 - I - 0x011F8A 04:9F7A: EE        .byte $EE   ; 
- D 0 - I - 0x011F8B 04:9F7B: EE        .byte $EE   ; 
- D 0 - I - 0x011F8C 04:9F7C: F6        .byte $F6   ; 
- D 0 - I - 0x011F8D 04:9F7D: FE        .byte $FE   ; 
- D 0 - I - 0x011F8E 04:9F7E: F5        .byte $F5   ; 
- D 0 - I - 0x011F8F 04:9F7F: FD        .byte $FD   ; 
- D 0 - I - 0x011F90 04:9F80: F9        .byte $F9   ; 
- D 0 - I - 0x011F91 04:9F81: 01        .byte $01   ; 
- D 0 - I - 0x011F92 04:9F82: F6        .byte $F6   ; 
- D 0 - I - 0x011F93 04:9F83: FE        .byte $FE   ; 
- D 0 - I - 0x011F94 04:9F84: 04        .byte $04   ; 
- D 0 - I - 0x011F95 04:9F85: 06        .byte $06   ; 
- D 0 - I - 0x011F96 04:9F86: 06        .byte $06   ; 
- D 0 - I - 0x011F97 04:9F87: F1        .byte $F1   ; 
off_9F88_02:
- D 0 - I - 0x011F98 04:9F88: DC        .byte $DC   ; 
- D 0 - I - 0x011F99 04:9F89: E4        .byte $E4   ; 
- D 0 - I - 0x011F9A 04:9F8A: EC        .byte $EC   ; 
- D 0 - I - 0x011F9B 04:9F8B: F4        .byte $F4   ; 
- D 0 - I - 0x011F9C 04:9F8C: FC        .byte $FC   ; 
- D 0 - I - 0x011F9D 04:9F8D: E4        .byte $E4   ; 
- D 0 - I - 0x011F9E 04:9F8E: EC        .byte $EC   ; 
- D 0 - I - 0x011F9F 04:9F8F: F4        .byte $F4   ; 
- D 0 - I - 0x011FA0 04:9F90: FC        .byte $FC   ; 
- D 0 - I - 0x011FA1 04:9F91: EE        .byte $EE   ; 
- D 0 - I - 0x011FA2 04:9F92: F6        .byte $F6   ; 
- D 0 - I - 0x011FA3 04:9F93: FE        .byte $FE   ; 
off_9F94_02:
- D 0 - I - 0x011FA4 04:9F94: F9        .byte $F9   ; 
- D 0 - I - 0x011FA5 04:9F95: 01        .byte $01   ; 
- D 0 - I - 0x011FA6 04:9F96: EE        .byte $EE   ; 
- D 0 - I - 0x011FA7 04:9F97: F6        .byte $F6   ; 
- D 0 - I - 0x011FA8 04:9F98: FE        .byte $FE   ; 
- D 0 - I - 0x011FA9 04:9F99: DC        .byte $DC   ; 
- D 0 - I - 0x011FAA 04:9F9A: E4        .byte $E4   ; 
- D 0 - I - 0x011FAB 04:9F9B: EC        .byte $EC   ; 
- D 0 - I - 0x011FAC 04:9F9C: F4        .byte $F4   ; 
- D 0 - I - 0x011FAD 04:9F9D: FC        .byte $FC   ; 
- D 0 - I - 0x011FAE 04:9F9E: E4        .byte $E4   ; 
- D 0 - I - 0x011FAF 04:9F9F: EC        .byte $EC   ; 
- D 0 - I - 0x011FB0 04:9FA0: F4        .byte $F4   ; 
- D 0 - I - 0x011FB1 04:9FA1: FC        .byte $FC   ; 
off_9FA2_02:
- D 0 - I - 0x011FB2 04:9FA2: EE        .byte $EE   ; 
- D 0 - I - 0x011FB3 04:9FA3: 01        .byte $01   ; 
- D 0 - I - 0x011FB4 04:9FA4: F4        .byte $F4   ; 
- D 0 - I - 0x011FB5 04:9FA5: FC        .byte $FC   ; 
- D 0 - I - 0x011FB6 04:9FA6: E7        .byte $E7   ; 
- D 0 - I - 0x011FB7 04:9FA7: EF        .byte $EF   ; 
- D 0 - I - 0x011FB8 04:9FA8: F7        .byte $F7   ; 
- D 0 - I - 0x011FB9 04:9FA9: FF        .byte $FF   ; 
- D 0 - I - 0x011FBA 04:9FAA: EF        .byte $EF   ; 
- D 0 - I - 0x011FBB 04:9FAB: F7        .byte $F7   ; 
- D 0 - I - 0x011FBC 04:9FAC: FF        .byte $FF   ; 
- D 0 - I - 0x011FBD 04:9FAD: F0        .byte $F0   ; 
- D 0 - I - 0x011FBE 04:9FAE: F8        .byte $F8   ; 
- D 0 - I - 0x011FBF 04:9FAF: 00        .byte $00   ; 
off_9FB0_02:
- D 0 - I - 0x011FC0 04:9FB0: 01        .byte $01   ; 
- D 0 - I - 0x011FC1 04:9FB1: FA        .byte $FA   ; 
- D 0 - I - 0x011FC2 04:9FB2: 02        .byte $02   ; 
- D 0 - I - 0x011FC3 04:9FB3: FA        .byte $FA   ; 
- D 0 - I - 0x011FC4 04:9FB4: 02        .byte $02   ; 
- D 0 - I - 0x011FC5 04:9FB5: 05        .byte $05   ; 
- D 0 - I - 0x011FC6 04:9FB6: 05        .byte $05   ; 
- D 0 - I - 0x011FC7 04:9FB7: 06        .byte $06   ; 
- D 0 - I - 0x011FC8 04:9FB8: F2        .byte $F2   ; 
- D 0 - I - 0x011FC9 04:9FB9: F2        .byte $F2   ; 
- D 0 - I - 0x011FCA 04:9FBA: FE        .byte $FE   ; 
- D 0 - I - 0x011FCB 04:9FBB: F9        .byte $F9   ; 
- D 0 - I - 0x011FCC 04:9FBC: F4        .byte $F4   ; 
- D 0 - I - 0x011FCD 04:9FBD: FC        .byte $FC   ; 
off_9FBE_02:
- D 0 - I - 0x011FCE 04:9FBE: EC        .byte $EC   ; 
- D 0 - I - 0x011FCF 04:9FBF: 03        .byte $03   ; 
- D 0 - I - 0x011FD0 04:9FC0: F5        .byte $F5   ; 
- D 0 - I - 0x011FD1 04:9FC1: FD        .byte $FD   ; 
- D 0 - I - 0x011FD2 04:9FC2: E8        .byte $E8   ; 
- D 0 - I - 0x011FD3 04:9FC3: F0        .byte $F0   ; 
- D 0 - I - 0x011FD4 04:9FC4: F8        .byte $F8   ; 
- D 0 - I - 0x011FD5 04:9FC5: 00        .byte $00   ; 
- D 0 - I - 0x011FD6 04:9FC6: F0        .byte $F0   ; 
- D 0 - I - 0x011FD7 04:9FC7: F8        .byte $F8   ; 
- D 0 - I - 0x011FD8 04:9FC8: 00        .byte $00   ; 
- D 0 - I - 0x011FD9 04:9FC9: F9        .byte $F9   ; 
- D 0 - I - 0x011FDA 04:9FCA: 01        .byte $01   ; 
- D 0 - I - 0x011FDB 04:9FCB: F1        .byte $F1   ; 
off_9FCC_02:
- D 0 - I - 0x011FDC 04:9FCC: E9        .byte $E9   ; 
- D 0 - I - 0x011FDD 04:9FCD: F1        .byte $F1   ; 
- D 0 - I - 0x011FDE 04:9FCE: E9        .byte $E9   ; 
- D 0 - I - 0x011FDF 04:9FCF: F1        .byte $F1   ; 
- D 0 - I - 0x011FE0 04:9FD0: F8        .byte $F8   ; 
- D 0 - I - 0x011FE1 04:9FD1: 00        .byte $00   ; 
- D 0 - I - 0x011FE2 04:9FD2: F0        .byte $F0   ; 
- D 0 - I - 0x011FE3 04:9FD3: F8        .byte $F8   ; 
- D 0 - I - 0x011FE4 04:9FD4: 00        .byte $00   ; 
- D 0 - I - 0x011FE5 04:9FD5: F1        .byte $F1   ; 
- D 0 - I - 0x011FE6 04:9FD6: F9        .byte $F9   ; 
- D 0 - I - 0x011FE7 04:9FD7: 01        .byte $01   ; 
- D 0 - I - 0x011FE8 04:9FD8: F7        .byte $F7   ; 
- D 0 - I - 0x011FE9 04:9FD9: FF        .byte $FF   ; 
off_9FDA_02:
- D 0 - I - 0x011FEA 04:9FDA: F8        .byte $F8   ; 
- D 0 - I - 0x011FEB 04:9FDB: 00        .byte $00   ; 
- D 0 - I - 0x011FEC 04:9FDC: F8        .byte $F8   ; 
- D 0 - I - 0x011FED 04:9FDD: 00        .byte $00   ; 
- D 0 - I - 0x011FEE 04:9FDE: F8        .byte $F8   ; 
- D 0 - I - 0x011FEF 04:9FDF: 00        .byte $00   ; 
- D 0 - I - 0x011FF0 04:9FE0: 00        .byte $00   ; 
- D 0 - I - 0x011FF1 04:9FE1: 08        .byte $08   ; 
- D 0 - I - 0x011FF2 04:9FE2: 08        .byte $08   ; 
- D 0 - I - 0x011FF3 04:9FE3: 08        .byte $08   ; 
- D 0 - I - 0x011FF4 04:9FE4: 08        .byte $08   ; 
- D 0 - I - 0x011FF5 04:9FE5: 10        .byte $10   ; 
- D 0 - I - 0x011FF6 04:9FE6: 10        .byte $10   ; 
- D 0 - I - 0x011FF7 04:9FE7: 10        .byte $10   ; 
off_9FE8_02:
- D 0 - I - 0x011FF8 04:9FE8: F8        .byte $F8   ; 
- D 0 - I - 0x011FF9 04:9FE9: 00        .byte $00   ; 
- D 0 - I - 0x011FFA 04:9FEA: 08        .byte $08   ; 
- D 0 - I - 0x011FFB 04:9FEB: FD        .byte $FD   ; 
- D 0 - I - 0x011FFC 04:9FEC: 05        .byte $05   ; 
- D 0 - I - 0x011FFD 04:9FED: F9        .byte $F9   ; 
- D 0 - I - 0x011FFE 04:9FEE: 01        .byte $01   ; 
- D 0 - I - 0x011FFF 04:9FEF: 09        .byte $09   ; 
- D 0 - I - 0x012000 04:9FF0: FA        .byte $FA   ; 
- D 0 - I - 0x012001 04:9FF1: 01        .byte $01   ; 
- D 0 - I - 0x012002 04:9FF2: 09        .byte $09   ; 
- D 0 - I - 0x012003 04:9FF3: F2        .byte $F2   ; 
- D 0 - I - 0x012004 04:9FF4: 0E        .byte $0E   ; 
off_9FF5_02:
- D 0 - I - 0x012005 04:9FF5: F7        .byte $F7   ; 
off_9FF6_02:
- D 0 - I - 0x012006 04:9FF6: F7        .byte $F7   ; 
- D 0 - I - 0x012007 04:9FF7: FF        .byte $FF   ; 
- D 0 - I - 0x012008 04:9FF8: F7        .byte $F7   ; 
- D 0 - I - 0x012009 04:9FF9: FF        .byte $FF   ; 
- D 0 - I - 0x01200A 04:9FFA: F4        .byte $F4   ; 
- D 0 - I - 0x01200B 04:9FFB: FC        .byte $FC   ; 
- D 0 - I - 0x01200C 04:9FFC: 04        .byte $04   ; 
- D 0 - I - 0x01200D 04:9FFD: 07        .byte $07   ; 
- D 0 - I - 0x01200E 04:9FFE: 07        .byte $07   ; 
- D 0 - I - 0x01200F 04:9FFF: EF        .byte $EF   ; 
- D 1 - I - 0x012010 04:A000: EF        .byte $EF   ; 
- D 1 - I - 0x012011 04:A001: FE        .byte $FE   ; 
off_A002_02:
- D 1 - I - 0x012012 04:A002: F1        .byte $F1   ; 
- D 1 - I - 0x012013 04:A003: F9        .byte $F9   ; 
- D 1 - I - 0x012014 04:A004: 01        .byte $01   ; 
- D 1 - I - 0x012015 04:A005: F1        .byte $F1   ; 
- D 1 - I - 0x012016 04:A006: F9        .byte $F9   ; 
- D 1 - I - 0x012017 04:A007: 01        .byte $01   ; 
- D 1 - I - 0x012018 04:A008: F8        .byte $F8   ; 
- D 1 - I - 0x012019 04:A009: 00        .byte $00   ; 
- D 1 - I - 0x01201A 04:A00A: EF        .byte $EF   ; 
- D 1 - I - 0x01201B 04:A00B: F7        .byte $F7   ; 
- D 1 - I - 0x01201C 04:A00C: F8        .byte $F8   ; 
- D 1 - I - 0x01201D 04:A00D: 00        .byte $00   ; 
- D 1 - I - 0x01201E 04:A00E: EF        .byte $EF   ; 
off_A00F_02:
- D 1 - I - 0x01201F 04:A00F: F3        .byte $F3   ; 
- D 1 - I - 0x012020 04:A010: FB        .byte $FB   ; 
- D 1 - I - 0x012021 04:A011: 03        .byte $03   ; 
- D 1 - I - 0x012022 04:A012: F9        .byte $F9   ; 
- D 1 - I - 0x012023 04:A013: 01        .byte $01   ; 
- D 1 - I - 0x012024 04:A014: F8        .byte $F8   ; 
- D 1 - I - 0x012025 04:A015: 00        .byte $00   ; 
- D 1 - I - 0x012026 04:A016: 06        .byte $06   ; 
- D 1 - I - 0x012027 04:A017: F0        .byte $F0   ; 
- D 1 - I - 0x012028 04:A018: 00        .byte $00   ; 
- D 1 - I - 0x012029 04:A019: 04        .byte $04   ; 
- D 1 - I - 0x01202A 04:A01A: F2        .byte $F2   ; 
- D 1 - I - 0x01202B 04:A01B: F8        .byte $F8   ; 
off_A01C_02:
- - - - - - 0x01202C 04:A01C: F0        .byte $F0   ; 
- - - - - - 0x01202D 04:A01D: F0        .byte $F0   ; 
- - - - - - 0x01202E 04:A01E: F7        .byte $F7   ; 
- - - - - - 0x01202F 04:A01F: FF        .byte $FF   ; 
- - - - - - 0x012030 04:A020: F1        .byte $F1   ; 
- - - - - - 0x012031 04:A021: F9        .byte $F9   ; 
- - - - - - 0x012032 04:A022: 01        .byte $01   ; 
- - - - - - 0x012033 04:A023: 05        .byte $05   ; 
- - - - - - 0x012034 04:A024: 05        .byte $05   ; 
- - - - - - 0x012035 04:A025: F8        .byte $F8   ; 
- - - - - - 0x012036 04:A026: FD        .byte $FD   ; 
- - - - - - 0x012037 04:A027: FF        .byte $FF   ; 
- - - - - - 0x012038 04:A028: F8        .byte $F8   ; 
off_A029_02:
- D 1 - I - 0x012039 04:A029: F1        .byte $F1   ; 
- D 1 - I - 0x01203A 04:A02A: F9        .byte $F9   ; 
- D 1 - I - 0x01203B 04:A02B: F2        .byte $F2   ; 
- D 1 - I - 0x01203C 04:A02C: FA        .byte $FA   ; 
- D 1 - I - 0x01203D 04:A02D: EA        .byte $EA   ; 
- D 1 - I - 0x01203E 04:A02E: F2        .byte $F2   ; 
- D 1 - I - 0x01203F 04:A02F: FA        .byte $FA   ; 
- D 1 - I - 0x012040 04:A030: E9        .byte $E9   ; 
- D 1 - I - 0x012041 04:A031: 01        .byte $01   ; 
- D 1 - I - 0x012042 04:A032: EA        .byte $EA   ; 
- D 1 - I - 0x012043 04:A033: F1        .byte $F1   ; 
- D 1 - I - 0x012044 04:A034: F9        .byte $F9   ; 
- D 1 - I - 0x012045 04:A035: 01        .byte $01   ; 
off_A036_02:
- - - - - - 0x012046 04:A036: F7        .byte $F7   ; 
- - - - - - 0x012047 04:A037: FE        .byte $FE   ; 
- - - - - - 0x012048 04:A038: F7        .byte $F7   ; 
- - - - - - 0x012049 04:A039: FF        .byte $FF   ; 
- - - - - - 0x01204A 04:A03A: F7        .byte $F7   ; 
- - - - - - 0x01204B 04:A03B: FF        .byte $FF   ; 
- - - - - - 0x01204C 04:A03C: F4        .byte $F4   ; 
- - - - - - 0x01204D 04:A03D: FC        .byte $FC   ; 
- - - - - - 0x01204E 04:A03E: 04        .byte $04   ; 
- - - - - - 0x01204F 04:A03F: F2        .byte $F2   ; 
- - - - - - 0x012050 04:A040: F2        .byte $F2   ; 
- - - - - - 0x012051 04:A041: 03        .byte $03   ; 
- - - - - - 0x012052 04:A042: 03        .byte $03   ; 
off_A043_02:
- D 1 - I - 0x012053 04:A043: F2        .byte $F2   ; 
- D 1 - I - 0x012054 04:A044: FA        .byte $FA   ; 
- D 1 - I - 0x012055 04:A045: 02        .byte $02   ; 
- D 1 - I - 0x012056 04:A046: F1        .byte $F1   ; 
- D 1 - I - 0x012057 04:A047: F9        .byte $F9   ; 
- D 1 - I - 0x012058 04:A048: FE        .byte $FE   ; 
- D 1 - I - 0x012059 04:A049: F5        .byte $F5   ; 
- D 1 - I - 0x01205A 04:A04A: F6        .byte $F6   ; 
- D 1 - I - 0x01205B 04:A04B: 03        .byte $03   ; 
- D 1 - I - 0x01205C 04:A04C: F1        .byte $F1   ; 
- D 1 - I - 0x01205D 04:A04D: F7        .byte $F7   ; 
- D 1 - I - 0x01205E 04:A04E: FF        .byte $FF   ; 
- D 1 - I - 0x01205F 04:A04F: FF        .byte $FF   ; 
off_A050_02:
- D 1 - I - 0x012060 04:A050: F8        .byte $F8   ; 
- D 1 - I - 0x012061 04:A051: 03        .byte $03   ; 
- D 1 - I - 0x012062 04:A052: FB        .byte $FB   ; 
- D 1 - I - 0x012063 04:A053: 00        .byte $00   ; 
- D 1 - I - 0x012064 04:A054: F3        .byte $F3   ; 
- D 1 - I - 0x012065 04:A055: F8        .byte $F8   ; 
- D 1 - I - 0x012066 04:A056: 00        .byte $00   ; 
- D 1 - I - 0x012067 04:A057: 06        .byte $06   ; 
- D 1 - I - 0x012068 04:A058: 07        .byte $07   ; 
- D 1 - I - 0x012069 04:A059: F0        .byte $F0   ; 
- D 1 - I - 0x01206A 04:A05A: F0        .byte $F0   ; 
off_A05B_02:
- D 1 - I - 0x01206B 04:A05B: F8        .byte $F8   ; 
- D 1 - I - 0x01206C 04:A05C: 00        .byte $00   ; 
- D 1 - I - 0x01206D 04:A05D: F1        .byte $F1   ; 
- D 1 - I - 0x01206E 04:A05E: F9        .byte $F9   ; 
- D 1 - I - 0x01206F 04:A05F: 01        .byte $01   ; 
- D 1 - I - 0x012070 04:A060: F1        .byte $F1   ; 
- D 1 - I - 0x012071 04:A061: F9        .byte $F9   ; 
- D 1 - I - 0x012072 04:A062: 01        .byte $01   ; 
- D 1 - I - 0x012073 04:A063: FB        .byte $FB   ; 
- D 1 - I - 0x012074 04:A064: 03        .byte $03   ; 
- D 1 - I - 0x012075 04:A065: F8        .byte $F8   ; 
- D 1 - I - 0x012076 04:A066: 00        .byte $00   ; 
- D 1 - I - 0x012077 04:A067: 03        .byte $03   ; 
off_A068_02:
- D 1 - I - 0x012078 04:A068: F1        .byte $F1   ; 
- D 1 - I - 0x012079 04:A069: F7        .byte $F7   ; 
- D 1 - I - 0x01207A 04:A06A: FF        .byte $FF   ; 
- D 1 - I - 0x01207B 04:A06B: 03        .byte $03   ; 
- D 1 - I - 0x01207C 04:A06C: F3        .byte $F3   ; 
- D 1 - I - 0x01207D 04:A06D: FB        .byte $FB   ; 
- D 1 - I - 0x01207E 04:A06E: 03        .byte $03   ; 
- D 1 - I - 0x01207F 04:A06F: FE        .byte $FE   ; 
- D 1 - I - 0x012080 04:A070: F1        .byte $F1   ; 
- D 1 - I - 0x012081 04:A071: F9        .byte $F9   ; 
- D 1 - I - 0x012082 04:A072: F5        .byte $F5   ; 
- D 1 - I - 0x012083 04:A073: F6        .byte $F6   ; 
- D 1 - I - 0x012084 04:A074: FF        .byte $FF   ; 
off_A075_02:
- D 1 - I - 0x012085 04:A075: F5        .byte $F5   ; 
- D 1 - I - 0x012086 04:A076: FD        .byte $FD   ; 
- D 1 - I - 0x012087 04:A077: F4        .byte $F4   ; 
- D 1 - I - 0x012088 04:A078: FC        .byte $FC   ; 
- D 1 - I - 0x012089 04:A079: F4        .byte $F4   ; 
- D 1 - I - 0x01208A 04:A07A: F8        .byte $F8   ; 
- D 1 - I - 0x01208B 04:A07B: EF        .byte $EF   ; 
- D 1 - I - 0x01208C 04:A07C: EF        .byte $EF   ; 
- D 1 - I - 0x01208D 04:A07D: 04        .byte $04   ; 
- D 1 - I - 0x01208E 04:A07E: 04        .byte $04   ; 
- D 1 - I - 0x01208F 04:A07F: FC        .byte $FC   ; 
- D 1 - I - 0x012090 04:A080: F0        .byte $F0   ; 
- D 1 - I - 0x012091 04:A081: 00        .byte $00   ; 
off_A082_02:
- D 1 - I - 0x012092 04:A082: FB        .byte $FB   ; 
- D 1 - I - 0x012093 04:A083: 03        .byte $03   ; 
- D 1 - I - 0x012094 04:A084: F6        .byte $F6   ; 
- D 1 - I - 0x012095 04:A085: 04        .byte $04   ; 
- D 1 - I - 0x012096 04:A086: F0        .byte $F0   ; 
- D 1 - I - 0x012097 04:A087: F3        .byte $F3   ; 
- D 1 - I - 0x012098 04:A088: FE        .byte $FE   ; 
- D 1 - I - 0x012099 04:A089: 03        .byte $03   ; 
- D 1 - I - 0x01209A 04:A08A: F6        .byte $F6   ; 
- D 1 - I - 0x01209B 04:A08B: F8        .byte $F8   ; 
- D 1 - I - 0x01209C 04:A08C: FE        .byte $FE   ; 
- D 1 - I - 0x01209D 04:A08D: FE        .byte $FE   ; 
off_A08E_02:
- D 1 - I - 0x01209E 04:A08E: F8        .byte $F8   ; 
- D 1 - I - 0x01209F 04:A08F: 00        .byte $00   ; 
- D 1 - I - 0x0120A0 04:A090: EA        .byte $EA   ; 
- D 1 - I - 0x0120A1 04:A091: F2        .byte $F2   ; 
- D 1 - I - 0x0120A2 04:A092: EA        .byte $EA   ; 
- D 1 - I - 0x0120A3 04:A093: F2        .byte $F2   ; 
- D 1 - I - 0x0120A4 04:A094: F8        .byte $F8   ; 
- D 1 - I - 0x0120A5 04:A095: 00        .byte $00   ; 
- D 1 - I - 0x0120A6 04:A096: F9        .byte $F9   ; 
- D 1 - I - 0x0120A7 04:A097: 01        .byte $01   ; 
- D 1 - I - 0x0120A8 04:A098: F9        .byte $F9   ; 
- D 1 - I - 0x0120A9 04:A099: 01        .byte $01   ; 
off_A09A_02:
- D 1 - I - 0x0120AA 04:A09A: F7        .byte $F7   ; 
- D 1 - I - 0x0120AB 04:A09B: FE        .byte $FE   ; 
- D 1 - I - 0x0120AC 04:A09C: F7        .byte $F7   ; 
- D 1 - I - 0x0120AD 04:A09D: FE        .byte $FE   ; 
- D 1 - I - 0x0120AE 04:A09E: F6        .byte $F6   ; 
- D 1 - I - 0x0120AF 04:A09F: FE        .byte $FE   ; 
- D 1 - I - 0x0120B0 04:A0A0: F0        .byte $F0   ; 
- D 1 - I - 0x0120B1 04:A0A1: F0        .byte $F0   ; 
- D 1 - I - 0x0120B2 04:A0A2: 05        .byte $05   ; 
- D 1 - I - 0x0120B3 04:A0A3: 05        .byte $05   ; 
- D 1 - I - 0x0120B4 04:A0A4: F8        .byte $F8   ; 
- D 1 - I - 0x0120B5 04:A0A5: 00        .byte $00   ; 
off_A0A6_02:
- D 1 - I - 0x0120B6 04:A0A6: F5        .byte $F5   ; 
- D 1 - I - 0x0120B7 04:A0A7: F7        .byte $F7   ; 
- D 1 - I - 0x0120B8 04:A0A8: FF        .byte $FF   ; 
- D 1 - I - 0x0120B9 04:A0A9: FD        .byte $FD   ; 
- D 1 - I - 0x0120BA 04:A0AA: FD        .byte $FD   ; 
- D 1 - I - 0x0120BB 04:A0AB: F5        .byte $F5   ; 
- D 1 - I - 0x0120BC 04:A0AC: EF        .byte $EF   ; 
- D 1 - I - 0x0120BD 04:A0AD: 04        .byte $04   ; 
- D 1 - I - 0x0120BE 04:A0AE: EF        .byte $EF   ; 
- D 1 - I - 0x0120BF 04:A0AF: 04        .byte $04   ; 
- D 1 - I - 0x0120C0 04:A0B0: F7        .byte $F7   ; 
- D 1 - I - 0x0120C1 04:A0B1: FF        .byte $FF   ; 
off_A0B2_02:
- D 1 - I - 0x0120C2 04:A0B2: F6        .byte $F6   ; 
- D 1 - I - 0x0120C3 04:A0B3: FE        .byte $FE   ; 
- D 1 - I - 0x0120C4 04:A0B4: F2        .byte $F2   ; 
- D 1 - I - 0x0120C5 04:A0B5: FA        .byte $FA   ; 
- D 1 - I - 0x0120C6 04:A0B6: 02        .byte $02   ; 
- D 1 - I - 0x0120C7 04:A0B7: EE        .byte $EE   ; 
- D 1 - I - 0x0120C8 04:A0B8: F6        .byte $F6   ; 
- D 1 - I - 0x0120C9 04:A0B9: FB        .byte $FB   ; 
- D 1 - I - 0x0120CA 04:A0BA: 03        .byte $03   ; 
- D 1 - I - 0x0120CB 04:A0BB: F2        .byte $F2   ; 
- D 1 - I - 0x0120CC 04:A0BC: F4        .byte $F4   ; 
- D 1 - I - 0x0120CD 04:A0BD: FC        .byte $FC   ; 
off_A0BE_02:
- D 1 - I - 0x0120CE 04:A0BE: F8        .byte $F8   ; 
- D 1 - I - 0x0120CF 04:A0BF: 00        .byte $00   ; 
- D 1 - I - 0x0120D0 04:A0C0: 08        .byte $08   ; 
- D 1 - I - 0x0120D1 04:A0C1: FB        .byte $FB   ; 
- D 1 - I - 0x0120D2 04:A0C2: 03        .byte $03   ; 
- D 1 - I - 0x0120D3 04:A0C3: F7        .byte $F7   ; 
- D 1 - I - 0x0120D4 04:A0C4: FF        .byte $FF   ; 
- D 1 - I - 0x0120D5 04:A0C5: EF        .byte $EF   ; 
- D 1 - I - 0x0120D6 04:A0C6: F7        .byte $F7   ; 
- D 1 - I - 0x0120D7 04:A0C7: 07        .byte $07   ; 
- D 1 - I - 0x0120D8 04:A0C8: FF        .byte $FF   ; 
- D 1 - I - 0x0120D9 04:A0C9: 07        .byte $07   ; 
off_A0CA_02:
- D 1 - I - 0x0120DA 04:A0CA: EA        .byte $EA   ; 
- D 1 - I - 0x0120DB 04:A0CB: F2        .byte $F2   ; 
- D 1 - I - 0x0120DC 04:A0CC: FA        .byte $FA   ; 
- D 1 - I - 0x0120DD 04:A0CD: 01        .byte $01   ; 
- D 1 - I - 0x0120DE 04:A0CE: EA        .byte $EA   ; 
- D 1 - I - 0x0120DF 04:A0CF: F2        .byte $F2   ; 
- D 1 - I - 0x0120E0 04:A0D0: FA        .byte $FA   ; 
- D 1 - I - 0x0120E1 04:A0D1: 02        .byte $02   ; 
- D 1 - I - 0x0120E2 04:A0D2: F2        .byte $F2   ; 
- D 1 - I - 0x0120E3 04:A0D3: FA        .byte $FA   ; 
- D 1 - I - 0x0120E4 04:A0D4: 02        .byte $02   ; 
- D 1 - I - 0x0120E5 04:A0D5: FB        .byte $FB   ; 
off_A0D6_02:
- D 1 - I - 0x0120E6 04:A0D6: 00        .byte $00   ; 
- D 1 - I - 0x0120E7 04:A0D7: F2        .byte $F2   ; 
- D 1 - I - 0x0120E8 04:A0D8: F5        .byte $F5   ; 
- D 1 - I - 0x0120E9 04:A0D9: 03        .byte $03   ; 
- D 1 - I - 0x0120EA 04:A0DA: F5        .byte $F5   ; 
- D 1 - I - 0x0120EB 04:A0DB: FA        .byte $FA   ; 
- D 1 - I - 0x0120EC 04:A0DC: 02        .byte $02   ; 
- D 1 - I - 0x0120ED 04:A0DD: F3        .byte $F3   ; 
- D 1 - I - 0x0120EE 04:A0DE: FA        .byte $FA   ; 
- D 1 - I - 0x0120EF 04:A0DF: 02        .byte $02   ; 
- D 1 - I - 0x0120F0 04:A0E0: FA        .byte $FA   ; 
- D 1 - I - 0x0120F1 04:A0E1: FB        .byte $FB   ; 
off_A0E2_02:
- D 1 - I - 0x0120F2 04:A0E2: F2        .byte $F2   ; 
- D 1 - I - 0x0120F3 04:A0E3: FA        .byte $FA   ; 
- D 1 - I - 0x0120F4 04:A0E4: 02        .byte $02   ; 
- D 1 - I - 0x0120F5 04:A0E5: F2        .byte $F2   ; 
- D 1 - I - 0x0120F6 04:A0E6: FA        .byte $FA   ; 
- D 1 - I - 0x0120F7 04:A0E7: 02        .byte $02   ; 
- D 1 - I - 0x0120F8 04:A0E8: F1        .byte $F1   ; 
- D 1 - I - 0x0120F9 04:A0E9: FF        .byte $FF   ; 
- D 1 - I - 0x0120FA 04:A0EA: F4        .byte $F4   ; 
- D 1 - I - 0x0120FB 04:A0EB: F6        .byte $F6   ; 
- D 1 - I - 0x0120FC 04:A0EC: FE        .byte $FE   ; 
off_A0ED_02:
- D 1 - I - 0x0120FD 04:A0ED: F9        .byte $F9   ; 
- D 1 - I - 0x0120FE 04:A0EE: F4        .byte $F4   ; 
- D 1 - I - 0x0120FF 04:A0EF: FC        .byte $FC   ; 
- D 1 - I - 0x012100 04:A0F0: 04        .byte $04   ; 
- D 1 - I - 0x012101 04:A0F1: 01        .byte $01   ; 
- D 1 - I - 0x012102 04:A0F2: F4        .byte $F4   ; 
- D 1 - I - 0x012103 04:A0F3: FC        .byte $FC   ; 
- D 1 - I - 0x012104 04:A0F4: 04        .byte $04   ; 
- D 1 - I - 0x012105 04:A0F5: F2        .byte $F2   ; 
- D 1 - I - 0x012106 04:A0F6: F8        .byte $F8   ; 
- D 1 - I - 0x012107 04:A0F7: 00        .byte $00   ; 
- D 1 - I - 0x012108 04:A0F8: 04        .byte $04   ; 
off_A0F9_02:
- D 1 - I - 0x012109 04:A0F9: F0        .byte $F0   ; 
- D 1 - I - 0x01210A 04:A0FA: F8        .byte $F8   ; 
- D 1 - I - 0x01210B 04:A0FB: 00        .byte $00   ; 
- D 1 - I - 0x01210C 04:A0FC: 06        .byte $06   ; 
- D 1 - I - 0x01210D 04:A0FD: F0        .byte $F0   ; 
- D 1 - I - 0x01210E 04:A0FE: F8        .byte $F8   ; 
- D 1 - I - 0x01210F 04:A0FF: 00        .byte $00   ; 
- D 1 - I - 0x012110 04:A100: 07        .byte $07   ; 
off_A101_02:
- D 1 - I - 0x012111 04:A101: F8        .byte $F8   ; 
- D 1 - I - 0x012112 04:A102: 00        .byte $00   ; 
- D 1 - I - 0x012113 04:A103: F9        .byte $F9   ; 
- D 1 - I - 0x012114 04:A104: 01        .byte $01   ; 
off_A105_02:
- D 1 - I - 0x012115 04:A105: F8        .byte $F8   ; 
- D 1 - I - 0x012116 04:A106: 00        .byte $00   ; 
- D 1 - I - 0x012117 04:A107: F8        .byte $F8   ; 
- D 1 - I - 0x012118 04:A108: 00        .byte $00   ; 
- D 1 - I - 0x012119 04:A109: F6        .byte $F6   ; 
- D 1 - I - 0x01211A 04:A10A: FE        .byte $FE   ; 
- D 1 - I - 0x01211B 04:A10B: 06        .byte $06   ; 
- D 1 - I - 0x01211C 04:A10C: 02        .byte $02   ; 
- D 1 - I - 0x01211D 04:A10D: F4        .byte $F4   ; 
- D 1 - I - 0x01211E 04:A10E: FA        .byte $FA   ; 
- D 1 - I - 0x01211F 04:A10F: 05        .byte $05   ; 
off_A110_02:
- D 1 - I - 0x012120 04:A110: F7        .byte $F7   ; 
- D 1 - I - 0x012121 04:A111: FF        .byte $FF   ; 
- D 1 - I - 0x012122 04:A112: F7        .byte $F7   ; 
- D 1 - I - 0x012123 04:A113: FF        .byte $FF   ; 
- D 1 - I - 0x012124 04:A114: F5        .byte $F5   ; 
- D 1 - I - 0x012125 04:A115: FD        .byte $FD   ; 
- D 1 - I - 0x012126 04:A116: 05        .byte $05   ; 
- D 1 - I - 0x012127 04:A117: F5        .byte $F5   ; 
- D 1 - I - 0x012128 04:A118: F9        .byte $F9   ; 
- D 1 - I - 0x012129 04:A119: 01        .byte $01   ; 
- D 1 - I - 0x01212A 04:A11A: 05        .byte $05   ; 
off_A11B_02:
- D 1 - I - 0x01212B 04:A11B: FB        .byte $FB   ; 
- D 1 - I - 0x01212C 04:A11C: 03        .byte $03   ; 
- D 1 - I - 0x01212D 04:A11D: F8        .byte $F8   ; 
- D 1 - I - 0x01212E 04:A11E: 00        .byte $00   ; 
- D 1 - I - 0x01212F 04:A11F: F0        .byte $F0   ; 
- D 1 - I - 0x012130 04:A120: 08        .byte $08   ; 
- D 1 - I - 0x012131 04:A121: 08        .byte $08   ; 
- D 1 - I - 0x012132 04:A122: F8        .byte $F8   ; 
- D 1 - I - 0x012133 04:A123: 00        .byte $00   ; 
- D 1 - I - 0x012134 04:A124: F8        .byte $F8   ; 
- D 1 - I - 0x012135 04:A125: 00        .byte $00   ; 
off_A126_02:
- D 1 - I - 0x012136 04:A126: FB        .byte $FB   ; 
- D 1 - I - 0x012137 04:A127: 03        .byte $03   ; 
- D 1 - I - 0x012138 04:A128: F8        .byte $F8   ; 
- D 1 - I - 0x012139 04:A129: 00        .byte $00   ; 
- D 1 - I - 0x01213A 04:A12A: F8        .byte $F8   ; 
- D 1 - I - 0x01213B 04:A12B: 00        .byte $00   ; 
- D 1 - I - 0x01213C 04:A12C: F8        .byte $F8   ; 
- D 1 - I - 0x01213D 04:A12D: 00        .byte $00   ; 
- D 1 - I - 0x01213E 04:A12E: F0        .byte $F0   ; 
- D 1 - I - 0x01213F 04:A12F: 08        .byte $08   ; 
- D 1 - I - 0x012140 04:A130: 08        .byte $08   ; 
off_A131_02:
- D 1 - I - 0x012141 04:A131: 09        .byte $09   ; 
- D 1 - I - 0x012142 04:A132: 06        .byte $06   ; 
- D 1 - I - 0x012143 04:A133: 0E        .byte $0E   ; 
- D 1 - I - 0x012144 04:A134: 04        .byte $04   ; 
- D 1 - I - 0x012145 04:A135: 0C        .byte $0C   ; 
- D 1 - I - 0x012146 04:A136: 14        .byte $14   ; 
- D 1 - I - 0x012147 04:A137: 1C        .byte $1C   ; 
- D 1 - I - 0x012148 04:A138: 12        .byte $12   ; 
- D 1 - I - 0x012149 04:A139: 14        .byte $14   ; 
- D 1 - I - 0x01214A 04:A13A: 0C        .byte $0C   ; 
- D 1 - I - 0x01214B 04:A13B: 04        .byte $04   ; 
off_A13C_02:
- D 1 - I - 0x01214C 04:A13C: F3        .byte $F3   ; 
- D 1 - I - 0x01214D 04:A13D: FB        .byte $FB   ; 
- D 1 - I - 0x01214E 04:A13E: 03        .byte $03   ; 
- D 1 - I - 0x01214F 04:A13F: F2        .byte $F2   ; 
- D 1 - I - 0x012150 04:A140: F8        .byte $F8   ; 
- D 1 - I - 0x012151 04:A141: 00        .byte $00   ; 
- D 1 - I - 0x012152 04:A142: F9        .byte $F9   ; 
- D 1 - I - 0x012153 04:A143: 01        .byte $01   ; 
- D 1 - I - 0x012154 04:A144: F8        .byte $F8   ; 
- D 1 - I - 0x012155 04:A145: 00        .byte $00   ; 
- D 1 - I - 0x012156 04:A146: 04        .byte $04   ; 
off_A147_02:
- D 1 - I - 0x012157 04:A147: FA        .byte $FA   ; 
- D 1 - I - 0x012158 04:A148: 02        .byte $02   ; 
- D 1 - I - 0x012159 04:A149: EA        .byte $EA   ; 
- D 1 - I - 0x01215A 04:A14A: F2        .byte $F2   ; 
- D 1 - I - 0x01215B 04:A14B: F2        .byte $F2   ; 
off_A14C_02:
- D 1 - I - 0x01215C 04:A14C: F8        .byte $F8   ; 
- D 1 - I - 0x01215D 04:A14D: 00        .byte $00   ; 
- D 1 - I - 0x01215E 04:A14E: FA        .byte $FA   ; 
- D 1 - I - 0x01215F 04:A14F: 02        .byte $02   ; 
- D 1 - I - 0x012160 04:A150: F8        .byte $F8   ; 
- D 1 - I - 0x012161 04:A151: 00        .byte $00   ; 
off_A152_02:
- D 1 - I - 0x012162 04:A152: 04        .byte $04   ; 
- D 1 - I - 0x012163 04:A153: 0C        .byte $0C   ; 
- D 1 - I - 0x012164 04:A154: 14        .byte $14   ; 
- D 1 - I - 0x012165 04:A155: 04        .byte $04   ; 
- D 1 - I - 0x012166 04:A156: 0C        .byte $0C   ; 
- D 1 - I - 0x012167 04:A157: 14        .byte $14   ; 
- D 1 - I - 0x012168 04:A158: 06        .byte $06   ; 
- D 1 - I - 0x012169 04:A159: 0E        .byte $0E   ; 
- D 1 - I - 0x01216A 04:A15A: 09        .byte $09   ; 
- D 1 - I - 0x01216B 04:A15B: 1C        .byte $1C   ; 
- D 1 - I - 0x01216C 04:A15C: 10        .byte $10   ; 
off_A15D_02:
- D 1 - I - 0x01216D 04:A15D: F9        .byte $F9   ; 
- D 1 - I - 0x01216E 04:A15E: F4        .byte $F4   ; 
- D 1 - I - 0x01216F 04:A15F: FC        .byte $FC   ; 
- D 1 - I - 0x012170 04:A160: 04        .byte $04   ; 
- D 1 - I - 0x012171 04:A161: F4        .byte $F4   ; 
- D 1 - I - 0x012172 04:A162: FC        .byte $FC   ; 
- D 1 - I - 0x012173 04:A163: F4        .byte $F4   ; 
- D 1 - I - 0x012174 04:A164: FC        .byte $FC   ; 
- D 1 - I - 0x012175 04:A165: 04        .byte $04   ; 
- D 1 - I - 0x012176 04:A166: 04        .byte $04   ; 
- D 1 - I - 0x012177 04:A167: 01        .byte $01   ; 
off_A168_02:
- D 1 - I - 0x012178 04:A168: F8        .byte $F8   ; 
- D 1 - I - 0x012179 04:A169: 00        .byte $00   ; 
- D 1 - I - 0x01217A 04:A16A: F8        .byte $F8   ; 
- D 1 - I - 0x01217B 04:A16B: 00        .byte $00   ; 
- D 1 - I - 0x01217C 04:A16C: F8        .byte $F8   ; 
- D 1 - I - 0x01217D 04:A16D: 00        .byte $00   ; 
- D 1 - I - 0x01217E 04:A16E: 00        .byte $00   ; 
- D 1 - I - 0x01217F 04:A16F: 00        .byte $00   ; 
- D 1 - I - 0x012180 04:A170: F6        .byte $F6   ; 
- D 1 - I - 0x012181 04:A171: F0        .byte $F0   ; 
- D 1 - I - 0x012182 04:A172: F8        .byte $F8   ; 
off_A173_02:
- D 1 - I - 0x012183 04:A173: F7        .byte $F7   ; 
- D 1 - I - 0x012184 04:A174: FF        .byte $FF   ; 
- D 1 - I - 0x012185 04:A175: 07        .byte $07   ; 
- D 1 - I - 0x012186 04:A176: F6        .byte $F6   ; 
- D 1 - I - 0x012187 04:A177: FE        .byte $FE   ; 
- D 1 - I - 0x012188 04:A178: 06        .byte $06   ; 
- D 1 - I - 0x012189 04:A179: F0        .byte $F0   ; 
- D 1 - I - 0x01218A 04:A17A: F8        .byte $F8   ; 
- D 1 - I - 0x01218B 04:A17B: 00        .byte $00   ; 
- D 1 - I - 0x01218C 04:A17C: F8        .byte $F8   ; 
- D 1 - I - 0x01218D 04:A17D: 00        .byte $00   ; 
off_A17E_02:
- D 1 - I - 0x01218E 04:A17E: F3        .byte $F3   ; 
- D 1 - I - 0x01218F 04:A17F: 01        .byte $01   ; 
- D 1 - I - 0x012190 04:A180: F5        .byte $F5   ; 
- D 1 - I - 0x012191 04:A181: FD        .byte $FD   ; 
- D 1 - I - 0x012192 04:A182: 05        .byte $05   ; 
- D 1 - I - 0x012193 04:A183: FA        .byte $FA   ; 
- D 1 - I - 0x012194 04:A184: 02        .byte $02   ; 
- D 1 - I - 0x012195 04:A185: F8        .byte $F8   ; 
- D 1 - I - 0x012196 04:A186: 00        .byte $00   ; 
- D 1 - I - 0x012197 04:A187: 05        .byte $05   ; 
- D 1 - I - 0x012198 04:A188: F9        .byte $F9   ; 
off_A189_02:
- D 1 - I - 0x012199 04:A189: F8        .byte $F8   ; 
- D 1 - I - 0x01219A 04:A18A: F5        .byte $F5   ; 
- D 1 - I - 0x01219B 04:A18B: FD        .byte $FD   ; 
- D 1 - I - 0x01219C 04:A18C: F4        .byte $F4   ; 
- D 1 - I - 0x01219D 04:A18D: FC        .byte $FC   ; 
- D 1 - I - 0x01219E 04:A18E: 04        .byte $04   ; 
- D 1 - I - 0x01219F 04:A18F: F4        .byte $F4   ; 
- D 1 - I - 0x0121A0 04:A190: FC        .byte $FC   ; 
- D 1 - I - 0x0121A1 04:A191: 04        .byte $04   ; 
- D 1 - I - 0x0121A2 04:A192: FE        .byte $FE   ; 
- D 1 - I - 0x0121A3 04:A193: EC        .byte $EC   ; 
off_A194_02:
- D 1 - I - 0x0121A4 04:A194: F1        .byte $F1   ; 
- D 1 - I - 0x0121A5 04:A195: F9        .byte $F9   ; 
- D 1 - I - 0x0121A6 04:A196: 01        .byte $01   ; 
- D 1 - I - 0x0121A7 04:A197: F1        .byte $F1   ; 
- D 1 - I - 0x0121A8 04:A198: F9        .byte $F9   ; 
- D 1 - I - 0x0121A9 04:A199: 01        .byte $01   ; 
- D 1 - I - 0x0121AA 04:A19A: F5        .byte $F5   ; 
- D 1 - I - 0x0121AB 04:A19B: FF        .byte $FF   ; 
- D 1 - I - 0x0121AC 04:A19C: F9        .byte $F9   ; 
- D 1 - I - 0x0121AD 04:A19D: 01        .byte $01   ; 
- D 1 - I - 0x0121AE 04:A19E: 06        .byte $06   ; 
off_A19F_02:
- D 1 - I - 0x0121AF 04:A19F: F5        .byte $F5   ; 
- D 1 - I - 0x0121B0 04:A1A0: F5        .byte $F5   ; 
- D 1 - I - 0x0121B1 04:A1A1: FD        .byte $FD   ; 
- D 1 - I - 0x0121B2 04:A1A2: 05        .byte $05   ; 
- D 1 - I - 0x0121B3 04:A1A3: F5        .byte $F5   ; 
- D 1 - I - 0x0121B4 04:A1A4: FD        .byte $FD   ; 
- D 1 - I - 0x0121B5 04:A1A5: 05        .byte $05   ; 
off_A1A6_02:
- D 1 - I - 0x0121B6 04:A1A6: F8        .byte $F8   ; 
- D 1 - I - 0x0121B7 04:A1A7: F8        .byte $F8   ; 
- D 1 - I - 0x0121B8 04:A1A8: 00        .byte $00   ; 
- D 1 - I - 0x0121B9 04:A1A9: 00        .byte $00   ; 
off_A1AA_02:
- D 1 - I - 0x0121BA 04:A1AA: 04        .byte $04   ; 
- D 1 - I - 0x0121BB 04:A1AB: 02        .byte $02   ; 
- D 1 - I - 0x0121BC 04:A1AC: F5        .byte $F5   ; 
- D 1 - I - 0x0121BD 04:A1AD: FA        .byte $FA   ; 
- D 1 - I - 0x0121BE 04:A1AE: F9        .byte $F9   ; 
- D 1 - I - 0x0121BF 04:A1AF: 01        .byte $01   ; 
- D 1 - I - 0x0121C0 04:A1B0: 02        .byte $02   ; 
- D 1 - I - 0x0121C1 04:A1B1: F3        .byte $F3   ; 
- D 1 - I - 0x0121C2 04:A1B2: FA        .byte $FA   ; 
- D 1 - I - 0x0121C3 04:A1B3: FC        .byte $FC   ; 
- D 1 - I - 0x0121C4 04:A1B4: F4        .byte $F4   ; 
off_A1B5_02:
- D 1 - I - 0x0121C5 04:A1B5: 03        .byte $03   ; 
- D 1 - I - 0x0121C6 04:A1B6: F3        .byte $F3   ; 
- D 1 - I - 0x0121C7 04:A1B7: F3        .byte $F3   ; 
- D 1 - I - 0x0121C8 04:A1B8: FB        .byte $FB   ; 
- D 1 - I - 0x0121C9 04:A1B9: FB        .byte $FB   ; 
- D 1 - I - 0x0121CA 04:A1BA: 03        .byte $03   ; 
- D 1 - I - 0x0121CB 04:A1BB: 03        .byte $03   ; 
- D 1 - I - 0x0121CC 04:A1BC: F8        .byte $F8   ; 
- D 1 - I - 0x0121CD 04:A1BD: F8        .byte $F8   ; 
- D 1 - I - 0x0121CE 04:A1BE: 00        .byte $00   ; 
- D 1 - I - 0x0121CF 04:A1BF: 00        .byte $00   ; 
off_A1C0_02:
- D 1 - I - 0x0121D0 04:A1C0: EE        .byte $EE   ; 
- D 1 - I - 0x0121D1 04:A1C1: F6        .byte $F6   ; 
- D 1 - I - 0x0121D2 04:A1C2: EC        .byte $EC   ; 
- D 1 - I - 0x0121D3 04:A1C3: F4        .byte $F4   ; 
- D 1 - I - 0x0121D4 04:A1C4: FC        .byte $FC   ; 
- D 1 - I - 0x0121D5 04:A1C5: EC        .byte $EC   ; 
- D 1 - I - 0x0121D6 04:A1C6: F4        .byte $F4   ; 
- D 1 - I - 0x0121D7 04:A1C7: FC        .byte $FC   ; 
- D 1 - I - 0x0121D8 04:A1C8: F0        .byte $F0   ; 
- D 1 - I - 0x0121D9 04:A1C9: F2        .byte $F2   ; 
- D 1 - I - 0x0121DA 04:A1CA: FA        .byte $FA   ; 
off_A1CB_02:
- D 1 - I - 0x0121DB 04:A1CB: F7        .byte $F7   ; 
- D 1 - I - 0x0121DC 04:A1CC: FF        .byte $FF   ; 
- D 1 - I - 0x0121DD 04:A1CD: F7        .byte $F7   ; 
- D 1 - I - 0x0121DE 04:A1CE: FF        .byte $FF   ; 
- D 1 - I - 0x0121DF 04:A1CF: F7        .byte $F7   ; 
- D 1 - I - 0x0121E0 04:A1D0: EF        .byte $EF   ; 
- D 1 - I - 0x0121E1 04:A1D1: 07        .byte $07   ; 
- D 1 - I - 0x0121E2 04:A1D2: F4        .byte $F4   ; 
- D 1 - I - 0x0121E3 04:A1D3: FC        .byte $FC   ; 
- D 1 - I - 0x0121E4 04:A1D4: 04        .byte $04   ; 
- D 1 - I - 0x0121E5 04:A1D5: FE        .byte $FE   ; 
off_A1D6_02:
- D 1 - I - 0x0121E6 04:A1D6: F9        .byte $F9   ; 
- D 1 - I - 0x0121E7 04:A1D7: 01        .byte $01   ; 
- D 1 - I - 0x0121E8 04:A1D8: FF        .byte $FF   ; 
- D 1 - I - 0x0121E9 04:A1D9: F7        .byte $F7   ; 
- D 1 - I - 0x0121EA 04:A1DA: F7        .byte $F7   ; 
- D 1 - I - 0x0121EB 04:A1DB: FF        .byte $FF   ; 
- D 1 - I - 0x0121EC 04:A1DC: FF        .byte $FF   ; 
- D 1 - I - 0x0121ED 04:A1DD: F9        .byte $F9   ; 
- D 1 - I - 0x0121EE 04:A1DE: 01        .byte $01   ; 
- D 1 - I - 0x0121EF 04:A1DF: F7        .byte $F7   ; 
- D 1 - I - 0x0121F0 04:A1E0: FF        .byte $FF   ; 
off_A1E1_02:
- D 1 - I - 0x0121F1 04:A1E1: 08        .byte $08   ; 
- D 1 - I - 0x0121F2 04:A1E2: 00        .byte $00   ; 
- D 1 - I - 0x0121F3 04:A1E3: 05        .byte $05   ; 
- D 1 - I - 0x0121F4 04:A1E4: 0D        .byte $0D   ; 
- D 1 - I - 0x0121F5 04:A1E5: 05        .byte $05   ; 
- D 1 - I - 0x0121F6 04:A1E6: 0D        .byte $0D   ; 
- D 1 - I - 0x0121F7 04:A1E7: FE        .byte $FE   ; 
- D 1 - I - 0x0121F8 04:A1E8: 00        .byte $00   ; 
- D 1 - I - 0x0121F9 04:A1E9: 08        .byte $08   ; 
- D 1 - I - 0x0121FA 04:A1EA: 00        .byte $00   ; 
- D 1 - I - 0x0121FB 04:A1EB: F8        .byte $F8   ; 
off_A1EC_02:
- D 1 - I - 0x0121FC 04:A1EC: 10        .byte $10   ; 
- D 1 - I - 0x0121FD 04:A1ED: 0E        .byte $0E   ; 
- D 1 - I - 0x0121FE 04:A1EE: 06        .byte $06   ; 
- D 1 - I - 0x0121FF 04:A1EF: 0E        .byte $0E   ; 
- D 1 - I - 0x012200 04:A1F0: 00        .byte $00   ; 
- D 1 - I - 0x012201 04:A1F1: 08        .byte $08   ; 
- D 1 - I - 0x012202 04:A1F2: FE        .byte $FE   ; 
- D 1 - I - 0x012203 04:A1F3: FE        .byte $FE   ; 
- D 1 - I - 0x012204 04:A1F4: 06        .byte $06   ; 
- D 1 - I - 0x012205 04:A1F5: 09        .byte $09   ; 
off_A1F6_02:
- D 1 - I - 0x012206 04:A1F6: 01        .byte $01   ; 
- D 1 - I - 0x012207 04:A1F7: F9        .byte $F9   ; 
- D 1 - I - 0x012208 04:A1F8: 01        .byte $01   ; 
- D 1 - I - 0x012209 04:A1F9: 09        .byte $09   ; 
- D 1 - I - 0x01220A 04:A1FA: 09        .byte $09   ; 
- D 1 - I - 0x01220B 04:A1FB: 00        .byte $00   ; 
- D 1 - I - 0x01220C 04:A1FC: 08        .byte $08   ; 
- D 1 - I - 0x01220D 04:A1FD: F9        .byte $F9   ; 
- D 1 - I - 0x01220E 04:A1FE: F9        .byte $F9   ; 
- D 1 - I - 0x01220F 04:A1FF: 01        .byte $01   ; 
- D 1 - I - 0x012210 04:A200: 09        .byte $09   ; 
off_A201_02:
- D 1 - I - 0x012211 04:A201: F8        .byte $F8   ; 
- D 1 - I - 0x012212 04:A202: 00        .byte $00   ; 
- D 1 - I - 0x012213 04:A203: F8        .byte $F8   ; 
- D 1 - I - 0x012214 04:A204: 00        .byte $00   ; 
- D 1 - I - 0x012215 04:A205: F7        .byte $F7   ; 
- D 1 - I - 0x012216 04:A206: FF        .byte $FF   ; 
- D 1 - I - 0x012217 04:A207: 07        .byte $07   ; 
- D 1 - I - 0x012218 04:A208: F7        .byte $F7   ; 
- D 1 - I - 0x012219 04:A209: FB        .byte $FB   ; 
- D 1 - I - 0x01221A 04:A20A: 03        .byte $03   ; 
- D 1 - I - 0x01221B 04:A20B: 07        .byte $07   ; 
off_A20C_02:
- D 1 - I - 0x01221C 04:A20C: F9        .byte $F9   ; 
- D 1 - I - 0x01221D 04:A20D: FB        .byte $FB   ; 
- D 1 - I - 0x01221E 04:A20E: 03        .byte $03   ; 
- D 1 - I - 0x01221F 04:A20F: 01        .byte $01   ; 
- D 1 - I - 0x012220 04:A210: 07        .byte $07   ; 
- D 1 - I - 0x012221 04:A211: 07        .byte $07   ; 
- D 1 - I - 0x012222 04:A212: 00        .byte $00   ; 
- D 1 - I - 0x012223 04:A213: 01        .byte $01   ; 
- D 1 - I - 0x012224 04:A214: F9        .byte $F9   ; 
- D 1 - I - 0x012225 04:A215: F8        .byte $F8   ; 
off_A216_02:
off_A216_03:
- D 1 - I - 0x012226 04:A216: F9        .byte $F9   ; 
- D 1 - I - 0x012227 04:A217: 01        .byte $01   ; 
- D 1 - I - 0x012228 04:A218: F9        .byte $F9   ; 
- D 1 - I - 0x012229 04:A219: 01        .byte $01   ; 
- D 1 - I - 0x01222A 04:A21A: F9        .byte $F9   ; 
- D 1 - I - 0x01222B 04:A21B: 01        .byte $01   ; 
- D 1 - I - 0x01222C 04:A21C: F9        .byte $F9   ; 
- D 1 - I - 0x01222D 04:A21D: 01        .byte $01   ; 
- D 1 - I - 0x01222E 04:A21E: 09        .byte $09   ; 
- D 1 - I - 0x01222F 04:A21F: 09        .byte $09   ; 
off_A220_02:
- D 1 - I - 0x012230 04:A220: 00        .byte $00   ; 
- D 1 - I - 0x012231 04:A221: 08        .byte $08   ; 
- D 1 - I - 0x012232 04:A222: 05        .byte $05   ; 
- D 1 - I - 0x012233 04:A223: 0D        .byte $0D   ; 
- D 1 - I - 0x012234 04:A224: FE        .byte $FE   ; 
- D 1 - I - 0x012235 04:A225: 05        .byte $05   ; 
- D 1 - I - 0x012236 04:A226: 0D        .byte $0D   ; 
- D 1 - I - 0x012237 04:A227: 00        .byte $00   ; 
- D 1 - I - 0x012238 04:A228: 08        .byte $08   ; 
- D 1 - I - 0x012239 04:A229: 00        .byte $00   ; 
off_A22A_02:
- D 1 - I - 0x01223A 04:A22A: FE        .byte $FE   ; 
- D 1 - I - 0x01223B 04:A22B: F5        .byte $F5   ; 
- D 1 - I - 0x01223C 04:A22C: FD        .byte $FD   ; 
- D 1 - I - 0x01223D 04:A22D: F6        .byte $F6   ; 
- D 1 - I - 0x01223E 04:A22E: FE        .byte $FE   ; 
- D 1 - I - 0x01223F 04:A22F: F6        .byte $F6   ; 
- D 1 - I - 0x012240 04:A230: F3        .byte $F3   ; 
- D 1 - I - 0x012241 04:A231: FB        .byte $FB   ; 
- D 1 - I - 0x012242 04:A232: EE        .byte $EE   ; 
- D 1 - I - 0x012243 04:A233: EE        .byte $EE   ; 
off_A234_02:
- D 1 - I - 0x012244 04:A234: FC        .byte $FC   ; 
- D 1 - I - 0x012245 04:A235: FB        .byte $FB   ; 
- D 1 - I - 0x012246 04:A236: FD        .byte $FD   ; 
- D 1 - I - 0x012247 04:A237: F5        .byte $F5   ; 
- D 1 - I - 0x012248 04:A238: F1        .byte $F1   ; 
- D 1 - I - 0x012249 04:A239: F9        .byte $F9   ; 
- D 1 - I - 0x01224A 04:A23A: F5        .byte $F5   ; 
- D 1 - I - 0x01224B 04:A23B: F4        .byte $F4   ; 
- D 1 - I - 0x01224C 04:A23C: EC        .byte $EC   ; 
- D 1 - I - 0x01224D 04:A23D: ED        .byte $ED   ; 
off_A23E_02:
- D 1 - I - 0x01224E 04:A23E: F3        .byte $F3   ; 
- D 1 - I - 0x01224F 04:A23F: FB        .byte $FB   ; 
- D 1 - I - 0x012250 04:A240: F7        .byte $F7   ; 
- D 1 - I - 0x012251 04:A241: F0        .byte $F0   ; 
- D 1 - I - 0x012252 04:A242: F8        .byte $F8   ; 
- D 1 - I - 0x012253 04:A243: 00        .byte $00   ; 
- D 1 - I - 0x012254 04:A244: F3        .byte $F3   ; 
- D 1 - I - 0x012255 04:A245: FB        .byte $FB   ; 
- D 1 - I - 0x012256 04:A246: EC        .byte $EC   ; 
- D 1 - I - 0x012257 04:A247: FF        .byte $FF   ; 
off_A248_02:
- D 1 - I - 0x012258 04:A248: F9        .byte $F9   ; 
- D 1 - I - 0x012259 04:A249: F8        .byte $F8   ; 
- D 1 - I - 0x01225A 04:A24A: 00        .byte $00   ; 
- D 1 - I - 0x01225B 04:A24B: F4        .byte $F4   ; 
- D 1 - I - 0x01225C 04:A24C: FC        .byte $FC   ; 
- D 1 - I - 0x01225D 04:A24D: 04        .byte $04   ; 
- D 1 - I - 0x01225E 04:A24E: F4        .byte $F4   ; 
- D 1 - I - 0x01225F 04:A24F: FC        .byte $FC   ; 
- D 1 - I - 0x012260 04:A250: 04        .byte $04   ; 
- D 1 - I - 0x012261 04:A251: 01        .byte $01   ; 
off_A252_02:
- D 1 - I - 0x012262 04:A252: FA        .byte $FA   ; 
- D 1 - I - 0x012263 04:A253: F8        .byte $F8   ; 
- D 1 - I - 0x012264 04:A254: 00        .byte $00   ; 
- D 1 - I - 0x012265 04:A255: F5        .byte $F5   ; 
- D 1 - I - 0x012266 04:A256: FD        .byte $FD   ; 
- D 1 - I - 0x012267 04:A257: F5        .byte $F5   ; 
- D 1 - I - 0x012268 04:A258: FD        .byte $FD   ; 
- D 1 - I - 0x012269 04:A259: 05        .byte $05   ; 
- D 1 - I - 0x01226A 04:A25A: 05        .byte $05   ; 
- D 1 - I - 0x01226B 04:A25B: 02        .byte $02   ; 
off_A25C_02:
- D 1 - I - 0x01226C 04:A25C: F7        .byte $F7   ; 
- D 1 - I - 0x01226D 04:A25D: FF        .byte $FF   ; 
- D 1 - I - 0x01226E 04:A25E: 07        .byte $07   ; 
- D 1 - I - 0x01226F 04:A25F: F7        .byte $F7   ; 
- D 1 - I - 0x012270 04:A260: 00        .byte $00   ; 
- D 1 - I - 0x012271 04:A261: 08        .byte $08   ; 
- D 1 - I - 0x012272 04:A262: FF        .byte $FF   ; 
- D 1 - I - 0x012273 04:A263: 07        .byte $07   ; 
- D 1 - I - 0x012274 04:A264: FA        .byte $FA   ; 
- D 1 - I - 0x012275 04:A265: 02        .byte $02   ; 
off_A266_02:
- D 1 - I - 0x012276 04:A266: F2        .byte $F2   ; 
- D 1 - I - 0x012277 04:A267: FA        .byte $FA   ; 
- D 1 - I - 0x012278 04:A268: F4        .byte $F4   ; 
- D 1 - I - 0x012279 04:A269: FC        .byte $FC   ; 
- D 1 - I - 0x01227A 04:A26A: ED        .byte $ED   ; 
- D 1 - I - 0x01227B 04:A26B: F0        .byte $F0   ; 
- D 1 - I - 0x01227C 04:A26C: F7        .byte $F7   ; 
- D 1 - I - 0x01227D 04:A26D: FF        .byte $FF   ; 
- D 1 - I - 0x01227E 04:A26E: F5        .byte $F5   ; 
- D 1 - I - 0x01227F 04:A26F: FD        .byte $FD   ; 
off_A270_02:
- D 1 - I - 0x012280 04:A270: F8        .byte $F8   ; 
- D 1 - I - 0x012281 04:A271: 00        .byte $00   ; 
- D 1 - I - 0x012282 04:A272: F2        .byte $F2   ; 
- D 1 - I - 0x012283 04:A273: FA        .byte $FA   ; 
- D 1 - I - 0x012284 04:A274: 02        .byte $02   ; 
- D 1 - I - 0x012285 04:A275: F2        .byte $F2   ; 
- D 1 - I - 0x012286 04:A276: FA        .byte $FA   ; 
- D 1 - I - 0x012287 04:A277: 02        .byte $02   ; 
- D 1 - I - 0x012288 04:A278: F9        .byte $F9   ; 
- D 1 - I - 0x012289 04:A279: 01        .byte $01   ; 
off_A27A_02:
- D 1 - I - 0x01228A 04:A27A: FA        .byte $FA   ; 
- D 1 - I - 0x01228B 04:A27B: 02        .byte $02   ; 
- D 1 - I - 0x01228C 04:A27C: F2        .byte $F2   ; 
- D 1 - I - 0x01228D 04:A27D: F2        .byte $F2   ; 
- D 1 - I - 0x01228E 04:A27E: FA        .byte $FA   ; 
- D 1 - I - 0x01228F 04:A27F: 02        .byte $02   ; 
- D 1 - I - 0x012290 04:A280: F8        .byte $F8   ; 
- D 1 - I - 0x012291 04:A281: 00        .byte $00   ; 
- D 1 - I - 0x012292 04:A282: F9        .byte $F9   ; 
- D 1 - I - 0x012293 04:A283: 01        .byte $01   ; 
off_A284_02:
- D 1 - I - 0x012294 04:A284: F8        .byte $F8   ; 
- D 1 - I - 0x012295 04:A285: 00        .byte $00   ; 
- D 1 - I - 0x012296 04:A286: 02        .byte $02   ; 
- D 1 - I - 0x012297 04:A287: 01        .byte $01   ; 
- D 1 - I - 0x012298 04:A288: F9        .byte $F9   ; 
- D 1 - I - 0x012299 04:A289: F5        .byte $F5   ; 
- D 1 - I - 0x01229A 04:A28A: FA        .byte $FA   ; 
- D 1 - I - 0x01229B 04:A28B: 02        .byte $02   ; 
- D 1 - I - 0x01229C 04:A28C: F3        .byte $F3   ; 
- D 1 - I - 0x01229D 04:A28D: FA        .byte $FA   ; 
off_A28E_02:
- D 1 - I - 0x01229E 04:A28E: F8        .byte $F8   ; 
- D 1 - I - 0x01229F 04:A28F: 00        .byte $00   ; 
- D 1 - I - 0x0122A0 04:A290: 02        .byte $02   ; 
- D 1 - I - 0x0122A1 04:A291: 01        .byte $01   ; 
- D 1 - I - 0x0122A2 04:A292: F9        .byte $F9   ; 
- D 1 - I - 0x0122A3 04:A293: F5        .byte $F5   ; 
- D 1 - I - 0x0122A4 04:A294: F3        .byte $F3   ; 
- D 1 - I - 0x0122A5 04:A295: 02        .byte $02   ; 
- D 1 - I - 0x0122A6 04:A296: FA        .byte $FA   ; 
- D 1 - I - 0x0122A7 04:A297: FA        .byte $FA   ; 
off_A298_02:
- D 1 - I - 0x0122A8 04:A298: F8        .byte $F8   ; 
- D 1 - I - 0x0122A9 04:A299: 00        .byte $00   ; 
- D 1 - I - 0x0122AA 04:A29A: 08        .byte $08   ; 
- D 1 - I - 0x0122AB 04:A29B: F8        .byte $F8   ; 
off_A29C_02:
- D 1 - I - 0x0122AC 04:A29C: 00        .byte $00   ; 
- D 1 - I - 0x0122AD 04:A29D: 08        .byte $08   ; 
- D 1 - I - 0x0122AE 04:A29E: 00        .byte $00   ; 
- D 1 - I - 0x0122AF 04:A29F: 08        .byte $08   ; 
- D 1 - I - 0x0122B0 04:A2A0: FB        .byte $FB   ; 
- D 1 - I - 0x0122B1 04:A2A1: 03        .byte $03   ; 
off_A2A2_02:
- D 1 - I - 0x0122B2 04:A2A2: 06        .byte $06   ; 
- D 1 - I - 0x0122B3 04:A2A3: 0E        .byte $0E   ; 
- D 1 - I - 0x0122B4 04:A2A4: FE        .byte $FE   ; 
- D 1 - I - 0x0122B5 04:A2A5: FF        .byte $FF   ; 
- D 1 - I - 0x0122B6 04:A2A6: 07        .byte $07   ; 
- D 1 - I - 0x0122B7 04:A2A7: 0F        .byte $0F   ; 
- D 1 - I - 0x0122B8 04:A2A8: 00        .byte $00   ; 
- D 1 - I - 0x0122B9 04:A2A9: 08        .byte $08   ; 
- D 1 - I - 0x0122BA 04:A2AA: 01        .byte $01   ; 
- D 1 - I - 0x0122BB 04:A2AB: 09        .byte $09   ; 
off_A2AC_02:
- D 1 - I - 0x0122BC 04:A2AC: 0E        .byte $0E   ; 
- D 1 - I - 0x0122BD 04:A2AD: 06        .byte $06   ; 
- D 1 - I - 0x0122BE 04:A2AE: 0E        .byte $0E   ; 
- D 1 - I - 0x0122BF 04:A2AF: FE        .byte $FE   ; 
- D 1 - I - 0x0122C0 04:A2B0: 06        .byte $06   ; 
- D 1 - I - 0x0122C1 04:A2B1: FE        .byte $FE   ; 
- D 1 - I - 0x0122C2 04:A2B2: 00        .byte $00   ; 
- D 1 - I - 0x0122C3 04:A2B3: 08        .byte $08   ; 
- D 1 - I - 0x0122C4 04:A2B4: 01        .byte $01   ; 
- D 1 - I - 0x0122C5 04:A2B5: 09        .byte $09   ; 
off_A2B6_02:
- D 1 - I - 0x0122C6 04:A2B6: F8        .byte $F8   ; 
- D 1 - I - 0x0122C7 04:A2B7: 00        .byte $00   ; 
- D 1 - I - 0x0122C8 04:A2B8: F5        .byte $F5   ; 
- D 1 - I - 0x0122C9 04:A2B9: F6        .byte $F6   ; 
- D 1 - I - 0x0122CA 04:A2BA: FE        .byte $FE   ; 
- D 1 - I - 0x0122CB 04:A2BB: 04        .byte $04   ; 
- D 1 - I - 0x0122CC 04:A2BC: 05        .byte $05   ; 
- D 1 - I - 0x0122CD 04:A2BD: FD        .byte $FD   ; 
- D 1 - I - 0x0122CE 04:A2BE: FD        .byte $FD   ; 
- D 1 - I - 0x0122CF 04:A2BF: F5        .byte $F5   ; 
off_A2C0_02:
- D 1 - I - 0x0122D0 04:A2C0: 05        .byte $05   ; 
- D 1 - I - 0x0122D1 04:A2C1: 0D        .byte $0D   ; 
- D 1 - I - 0x0122D2 04:A2C2: 06        .byte $06   ; 
- D 1 - I - 0x0122D3 04:A2C3: 0E        .byte $0E   ; 
- D 1 - I - 0x0122D4 04:A2C4: 00        .byte $00   ; 
- D 1 - I - 0x0122D5 04:A2C5: 08        .byte $08   ; 
- D 1 - I - 0x0122D6 04:A2C6: 00        .byte $00   ; 
- D 1 - I - 0x0122D7 04:A2C7: 08        .byte $08   ; 
- D 1 - I - 0x0122D8 04:A2C8: FE        .byte $FE   ; 
- D 1 - I - 0x0122D9 04:A2C9: FD        .byte $FD   ; 
off_A2CA_02:
- D 1 - I - 0x0122DA 04:A2CA: 01        .byte $01   ; 
- D 1 - I - 0x0122DB 04:A2CB: F9        .byte $F9   ; 
- D 1 - I - 0x0122DC 04:A2CC: 01        .byte $01   ; 
- D 1 - I - 0x0122DD 04:A2CD: F8        .byte $F8   ; 
off_A2CE_02:
- D 1 - I - 0x0122DE 04:A2CE: 00        .byte $00   ; 
- D 1 - I - 0x0122DF 04:A2CF: F8        .byte $F8   ; 
- D 1 - I - 0x0122E0 04:A2D0: 00        .byte $00   ; 
- D 1 - I - 0x0122E1 04:A2D1: F9        .byte $F9   ; 
- D 1 - I - 0x0122E2 04:A2D2: F1        .byte $F1   ; 
- D 1 - I - 0x0122E3 04:A2D3: F1        .byte $F1   ; 
off_A2D4_02:
- D 1 - I - 0x0122E4 04:A2D4: F0        .byte $F0   ; 
- D 1 - I - 0x0122E5 04:A2D5: F8        .byte $F8   ; 
- D 1 - I - 0x0122E6 04:A2D6: F0        .byte $F0   ; 
- D 1 - I - 0x0122E7 04:A2D7: F8        .byte $F8   ; 
- D 1 - I - 0x0122E8 04:A2D8: 00        .byte $00   ; 
- D 1 - I - 0x0122E9 04:A2D9: 00        .byte $00   ; 
- D 1 - I - 0x0122EA 04:A2DA: F0        .byte $F0   ; 
- D 1 - I - 0x0122EB 04:A2DB: FD        .byte $FD   ; 
- D 1 - I - 0x0122EC 04:A2DC: F8        .byte $F8   ; 
- D 1 - I - 0x0122ED 04:A2DD: 00        .byte $00   ; 
off_A2DE_02:
- D 1 - I - 0x0122EE 04:A2DE: 01        .byte $01   ; 
- D 1 - I - 0x0122EF 04:A2DF: FA        .byte $FA   ; 
- D 1 - I - 0x0122F0 04:A2E0: 02        .byte $02   ; 
- D 1 - I - 0x0122F1 04:A2E1: 01        .byte $01   ; 
- D 1 - I - 0x0122F2 04:A2E2: F9        .byte $F9   ; 
- D 1 - I - 0x0122F3 04:A2E3: F8        .byte $F8   ; 
- D 1 - I - 0x0122F4 04:A2E4: 00        .byte $00   ; 
- D 1 - I - 0x0122F5 04:A2E5: F9        .byte $F9   ; 
- D 1 - I - 0x0122F6 04:A2E6: F4        .byte $F4   ; 
- D 1 - I - 0x0122F7 04:A2E7: F4        .byte $F4   ; 
off_A2E8_02:
- D 1 - I - 0x0122F8 04:A2E8: F8        .byte $F8   ; 
- D 1 - I - 0x0122F9 04:A2E9: F8        .byte $F8   ; 
- D 1 - I - 0x0122FA 04:A2EA: 00        .byte $00   ; 
- D 1 - I - 0x0122FB 04:A2EB: 06        .byte $06   ; 
- D 1 - I - 0x0122FC 04:A2EC: FD        .byte $FD   ; 
- D 1 - I - 0x0122FD 04:A2ED: 05        .byte $05   ; 
- D 1 - I - 0x0122FE 04:A2EE: 00        .byte $00   ; 
- D 1 - I - 0x0122FF 04:A2EF: 05        .byte $05   ; 
- D 1 - I - 0x012300 04:A2F0: FF        .byte $FF   ; 
- D 1 - I - 0x012301 04:A2F1: F9        .byte $F9   ; 
off_A2F2_02:
- D 1 - I - 0x012302 04:A2F2: 00        .byte $00   ; 
- D 1 - I - 0x012303 04:A2F3: F9        .byte $F9   ; 
- D 1 - I - 0x012304 04:A2F4: 01        .byte $01   ; 
- D 1 - I - 0x012305 04:A2F5: 00        .byte $00   ; 
- D 1 - I - 0x012306 04:A2F6: F8        .byte $F8   ; 
- D 1 - I - 0x012307 04:A2F7: F8        .byte $F8   ; 
- D 1 - I - 0x012308 04:A2F8: F8        .byte $F8   ; 
- D 1 - I - 0x012309 04:A2F9: 00        .byte $00   ; 
- D 1 - I - 0x01230A 04:A2FA: F3        .byte $F3   ; 
- D 1 - I - 0x01230B 04:A2FB: F3        .byte $F3   ; 
off_A2FC_02:
- D 1 - I - 0x01230C 04:A2FC: 01        .byte $01   ; 
- D 1 - I - 0x01230D 04:A2FD: 09        .byte $09   ; 
- D 1 - I - 0x01230E 04:A2FE: FE        .byte $FE   ; 
- D 1 - I - 0x01230F 04:A2FF: 06        .byte $06   ; 
- D 1 - I - 0x012310 04:A300: 0E        .byte $0E   ; 
- D 1 - I - 0x012311 04:A301: FE        .byte $FE   ; 
- D 1 - I - 0x012312 04:A302: 06        .byte $06   ; 
- D 1 - I - 0x012313 04:A303: 0E        .byte $0E   ; 
- D 1 - I - 0x012314 04:A304: 00        .byte $00   ; 
- D 1 - I - 0x012315 04:A305: 08        .byte $08   ; 
off_A306_02:
- D 1 - I - 0x012316 04:A306: F0        .byte $F0   ; 
- D 1 - I - 0x012317 04:A307: F8        .byte $F8   ; 
- D 1 - I - 0x012318 04:A308: 00        .byte $00   ; 
- D 1 - I - 0x012319 04:A309: F0        .byte $F0   ; 
- D 1 - I - 0x01231A 04:A30A: F8        .byte $F8   ; 
- D 1 - I - 0x01231B 04:A30B: 00        .byte $00   ; 
- D 1 - I - 0x01231C 04:A30C: F3        .byte $F3   ; 
- D 1 - I - 0x01231D 04:A30D: FB        .byte $FB   ; 
- D 1 - I - 0x01231E 04:A30E: F4        .byte $F4   ; 
- D 1 - I - 0x01231F 04:A30F: FD        .byte $FD   ; 
off_A310_02:
- D 1 - I - 0x012320 04:A310: FC        .byte $FC   ; 
- D 1 - I - 0x012321 04:A311: 04        .byte $04   ; 
- D 1 - I - 0x012322 04:A312: F0        .byte $F0   ; 
- D 1 - I - 0x012323 04:A313: FC        .byte $FC   ; 
- D 1 - I - 0x012324 04:A314: 03        .byte $03   ; 
- D 1 - I - 0x012325 04:A315: F0        .byte $F0   ; 
- D 1 - I - 0x012326 04:A316: 04        .byte $04   ; 
- D 1 - I - 0x012327 04:A317: F8        .byte $F8   ; 
off_A318_02:
- D 1 - I - 0x012328 04:A318: F8        .byte $F8   ; 
- D 1 - I - 0x012329 04:A319: 00        .byte $00   ; 
- D 1 - I - 0x01232A 04:A31A: F1        .byte $F1   ; 
- D 1 - I - 0x01232B 04:A31B: F9        .byte $F9   ; 
- D 1 - I - 0x01232C 04:A31C: 01        .byte $01   ; 
- D 1 - I - 0x01232D 04:A31D: F1        .byte $F1   ; 
- D 1 - I - 0x01232E 04:A31E: F9        .byte $F9   ; 
- D 1 - I - 0x01232F 04:A31F: 01        .byte $01   ; 
- D 1 - I - 0x012330 04:A320: F8        .byte $F8   ; 
- D 1 - I - 0x012331 04:A321: 00        .byte $00   ; 
off_A322_02:
- D 1 - I - 0x012332 04:A322: F1        .byte $F1   ; 
- D 1 - I - 0x012333 04:A323: F9        .byte $F9   ; 
- D 1 - I - 0x012334 04:A324: FB        .byte $FB   ; 
- D 1 - I - 0x012335 04:A325: ED        .byte $ED   ; 
- D 1 - I - 0x012336 04:A326: ED        .byte $ED   ; 
- D 1 - I - 0x012337 04:A327: F3        .byte $F3   ; 
- D 1 - I - 0x012338 04:A328: F4        .byte $F4   ; 
- D 1 - I - 0x012339 04:A329: F3        .byte $F3   ; 
- D 1 - I - 0x01233A 04:A32A: FB        .byte $FB   ; 
- D 1 - I - 0x01233B 04:A32B: FC        .byte $FC   ; 
off_A32C_02:
- D 1 - I - 0x01233C 04:A32C: F5        .byte $F5   ; 
- D 1 - I - 0x01233D 04:A32D: FD        .byte $FD   ; 
- D 1 - I - 0x01233E 04:A32E: 06        .byte $06   ; 
- D 1 - I - 0x01233F 04:A32F: 09        .byte $09   ; 
- D 1 - I - 0x012340 04:A330: F6        .byte $F6   ; 
- D 1 - I - 0x012341 04:A331: FE        .byte $FE   ; 
- D 1 - I - 0x012342 04:A332: F6        .byte $F6   ; 
- D 1 - I - 0x012343 04:A333: FE        .byte $FE   ; 
- D 1 - I - 0x012344 04:A334: F7        .byte $F7   ; 
- D 1 - I - 0x012345 04:A335: FF        .byte $FF   ; 
off_A336_02:
- D 1 - I - 0x012346 04:A336: 04        .byte $04   ; 
- D 1 - I - 0x012347 04:A337: FD        .byte $FD   ; 
- D 1 - I - 0x012348 04:A338: 05        .byte $05   ; 
- D 1 - I - 0x012349 04:A339: F7        .byte $F7   ; 
- D 1 - I - 0x01234A 04:A33A: F4        .byte $F4   ; 
- D 1 - I - 0x01234B 04:A33B: FC        .byte $FC   ; 
- D 1 - I - 0x01234C 04:A33C: F8        .byte $F8   ; 
- D 1 - I - 0x01234D 04:A33D: 00        .byte $00   ; 
- D 1 - I - 0x01234E 04:A33E: F7        .byte $F7   ; 
- D 1 - I - 0x01234F 04:A33F: FF        .byte $FF   ; 
off_A340_02:
- D 1 - I - 0x012350 04:A340: F6        .byte $F6   ; 
- D 1 - I - 0x012351 04:A341: FE        .byte $FE   ; 
- D 1 - I - 0x012352 04:A342: F2        .byte $F2   ; 
- D 1 - I - 0x012353 04:A343: FA        .byte $FA   ; 
- D 1 - I - 0x012354 04:A344: 02        .byte $02   ; 
- D 1 - I - 0x012355 04:A345: F3        .byte $F3   ; 
- D 1 - I - 0x012356 04:A346: FB        .byte $FB   ; 
- D 1 - I - 0x012357 04:A347: 03        .byte $03   ; 
- D 1 - I - 0x012358 04:A348: FB        .byte $FB   ; 
- D 1 - I - 0x012359 04:A349: F5        .byte $F5   ; 
off_A34A_02:
- D 1 - I - 0x01235A 04:A34A: FD        .byte $FD   ; 
- D 1 - I - 0x01235B 04:A34B: FD        .byte $FD   ; 
- D 1 - I - 0x01235C 04:A34C: 05        .byte $05   ; 
- D 1 - I - 0x01235D 04:A34D: F5        .byte $F5   ; 
- D 1 - I - 0x01235E 04:A34E: FD        .byte $FD   ; 
- D 1 - I - 0x01235F 04:A34F: 05        .byte $05   ; 
- D 1 - I - 0x012360 04:A350: F5        .byte $F5   ; 
- D 1 - I - 0x012361 04:A351: FD        .byte $FD   ; 
- D 1 - I - 0x012362 04:A352: 05        .byte $05   ; 
- D 1 - I - 0x012363 04:A353: 0C        .byte $0C   ; 
off_A354_02:
- D 1 - I - 0x012364 04:A354: F4        .byte $F4   ; 
off_A355_02:
- D 1 - I - 0x012365 04:A355: F4        .byte $F4   ; 
- D 1 - I - 0x012366 04:A356: F4        .byte $F4   ; 
off_A357_02:
- D 1 - I - 0x012367 04:A357: FC        .byte $FC   ; 
- D 1 - I - 0x012368 04:A358: FC        .byte $FC   ; 
- D 1 - I - 0x012369 04:A359: 04        .byte $04   ; 
- D 1 - I - 0x01236A 04:A35A: 04        .byte $04   ; 
- D 1 - I - 0x01236B 04:A35B: 04        .byte $04   ; 
- D 1 - I - 0x01236C 04:A35C: F8        .byte $F8   ; 
- D 1 - I - 0x01236D 04:A35D: 00        .byte $00   ; 
off_A35E_02:
- D 1 - I - 0x01236E 04:A35E: F4        .byte $F4   ; 
- D 1 - I - 0x01236F 04:A35F: FC        .byte $FC   ; 
- D 1 - I - 0x012370 04:A360: F9        .byte $F9   ; 
- D 1 - I - 0x012371 04:A361: FD        .byte $FD   ; 
- D 1 - I - 0x012372 04:A362: F5        .byte $F5   ; 
- D 1 - I - 0x012373 04:A363: F1        .byte $F1   ; 
- D 1 - I - 0x012374 04:A364: EC        .byte $EC   ; 
- D 1 - I - 0x012375 04:A365: FB        .byte $FB   ; 
- D 1 - I - 0x012376 04:A366: EC        .byte $EC   ; 
- D 1 - I - 0x012377 04:A367: F3        .byte $F3   ; 
off_A368_02:
- D 1 - I - 0x012378 04:A368: F8        .byte $F8   ; 
- D 1 - I - 0x012379 04:A369: 00        .byte $00   ; 
- D 1 - I - 0x01237A 04:A36A: 02        .byte $02   ; 
- D 1 - I - 0x01237B 04:A36B: 01        .byte $01   ; 
- D 1 - I - 0x01237C 04:A36C: F9        .byte $F9   ; 
- D 1 - I - 0x01237D 04:A36D: F3        .byte $F3   ; 
- D 1 - I - 0x01237E 04:A36E: 02        .byte $02   ; 
- D 1 - I - 0x01237F 04:A36F: FA        .byte $FA   ; 
- D 1 - I - 0x012380 04:A370: F5        .byte $F5   ; 
- D 1 - I - 0x012381 04:A371: FA        .byte $FA   ; 
off_A372_02:
- D 1 - I - 0x012382 04:A372: F5        .byte $F5   ; 
- D 1 - I - 0x012383 04:A373: FD        .byte $FD   ; 
- D 1 - I - 0x012384 04:A374: FF        .byte $FF   ; 
- D 1 - I - 0x012385 04:A375: F3        .byte $F3   ; 
- D 1 - I - 0x012386 04:A376: F7        .byte $F7   ; 
- D 1 - I - 0x012387 04:A377: F8        .byte $F8   ; 
- D 1 - I - 0x012388 04:A378: 00        .byte $00   ; 
- D 1 - I - 0x012389 04:A379: F7        .byte $F7   ; 
- D 1 - I - 0x01238A 04:A37A: FF        .byte $FF   ; 
off_A37B_02:
- - - - - - 0x01238B 04:A37B: F4        .byte $F4   ; 
- - - - - - 0x01238C 04:A37C: FC        .byte $FC   ; 
- - - - - - 0x01238D 04:A37D: F3        .byte $F3   ; 
- - - - - - 0x01238E 04:A37E: F6        .byte $F6   ; 
- - - - - - 0x01238F 04:A37F: FE        .byte $FE   ; 
- - - - - - 0x012390 04:A380: F8        .byte $F8   ; 
- - - - - - 0x012391 04:A381: FE        .byte $FE   ; 
- - - - - - 0x012392 04:A382: F2        .byte $F2   ; 
- - - - - - 0x012393 04:A383: FA        .byte $FA   ; 
off_A384_02:
- D 1 - I - 0x012394 04:A384: FB        .byte $FB   ; 
- D 1 - I - 0x012395 04:A385: F3        .byte $F3   ; 
- D 1 - I - 0x012396 04:A386: FC        .byte $FC   ; 
- D 1 - I - 0x012397 04:A387: F4        .byte $F4   ; 
- D 1 - I - 0x012398 04:A388: F9        .byte $F9   ; 
- D 1 - I - 0x012399 04:A389: F4        .byte $F4   ; 
- D 1 - I - 0x01239A 04:A38A: F3        .byte $F3   ; 
- D 1 - I - 0x01239B 04:A38B: FB        .byte $FB   ; 
- D 1 - I - 0x01239C 04:A38C: 02        .byte $02   ; 
off_A38D_02:
- D 1 - I - 0x01239D 04:A38D: F0        .byte $F0   ; 
- D 1 - I - 0x01239E 04:A38E: F5        .byte $F5   ; 
- D 1 - I - 0x01239F 04:A38F: FD        .byte $FD   ; 
- D 1 - I - 0x0123A0 04:A390: 04        .byte $04   ; 
- D 1 - I - 0x0123A1 04:A391: F0        .byte $F0   ; 
- D 1 - I - 0x0123A2 04:A392: F4        .byte $F4   ; 
- D 1 - I - 0x0123A3 04:A393: FC        .byte $FC   ; 
- D 1 - I - 0x0123A4 04:A394: 04        .byte $04   ; 
- D 1 - I - 0x0123A5 04:A395: F7        .byte $F7   ; 
off_A396_02:
- D 1 - I - 0x0123A6 04:A396: F8        .byte $F8   ; 
- D 1 - I - 0x0123A7 04:A397: 00        .byte $00   ; 
- D 1 - I - 0x0123A8 04:A398: F0        .byte $F0   ; 
- D 1 - I - 0x0123A9 04:A399: F7        .byte $F7   ; 
- D 1 - I - 0x0123AA 04:A39A: FF        .byte $FF   ; 
- D 1 - I - 0x0123AB 04:A39B: F7        .byte $F7   ; 
- D 1 - I - 0x0123AC 04:A39C: FF        .byte $FF   ; 
- D 1 - I - 0x0123AD 04:A39D: F8        .byte $F8   ; 
- D 1 - I - 0x0123AE 04:A39E: 00        .byte $00   ; 
off_A39F_02:
- D 1 - I - 0x0123AF 04:A39F: FD        .byte $FD   ; 
- D 1 - I - 0x0123B0 04:A3A0: 05        .byte $05   ; 
- D 1 - I - 0x0123B1 04:A3A1: FD        .byte $FD   ; 
- D 1 - I - 0x0123B2 04:A3A2: 05        .byte $05   ; 
- D 1 - I - 0x0123B3 04:A3A3: F6        .byte $F6   ; 
- D 1 - I - 0x0123B4 04:A3A4: FD        .byte $FD   ; 
- D 1 - I - 0x0123B5 04:A3A5: 05        .byte $05   ; 
- D 1 - I - 0x0123B6 04:A3A6: 00        .byte $00   ; 
- D 1 - I - 0x0123B7 04:A3A7: 08        .byte $08   ; 
off_A3A8_02:
- D 1 - I - 0x0123B8 04:A3A8: F8        .byte $F8   ; 
- D 1 - I - 0x0123B9 04:A3A9: 00        .byte $00   ; 
- D 1 - I - 0x0123BA 04:A3AA: F6        .byte $F6   ; 
- D 1 - I - 0x0123BB 04:A3AB: F8        .byte $F8   ; 
- D 1 - I - 0x0123BC 04:A3AC: 00        .byte $00   ; 
- D 1 - I - 0x0123BD 04:A3AD: F8        .byte $F8   ; 
- D 1 - I - 0x0123BE 04:A3AE: 00        .byte $00   ; 
- D 1 - I - 0x0123BF 04:A3AF: F7        .byte $F7   ; 
- D 1 - I - 0x0123C0 04:A3B0: FF        .byte $FF   ; 
off_A3B1_02:
- D 1 - I - 0x0123C1 04:A3B1: F5        .byte $F5   ; 
- D 1 - I - 0x0123C2 04:A3B2: ED        .byte $ED   ; 
- D 1 - I - 0x0123C3 04:A3B3: ED        .byte $ED   ; 
- D 1 - I - 0x0123C4 04:A3B4: F4        .byte $F4   ; 
- D 1 - I - 0x0123C5 04:A3B5: FB        .byte $FB   ; 
- D 1 - I - 0x0123C6 04:A3B6: 01        .byte $01   ; 
- D 1 - I - 0x0123C7 04:A3B7: 01        .byte $01   ; 
- D 1 - I - 0x0123C8 04:A3B8: FD        .byte $FD   ; 
- D 1 - I - 0x0123C9 04:A3B9: FC        .byte $FC   ; 
off_A3BA_02:
- D 1 - I - 0x0123CA 04:A3BA: F8        .byte $F8   ; 
- D 1 - I - 0x0123CB 04:A3BB: 00        .byte $00   ; 
- D 1 - I - 0x0123CC 04:A3BC: F8        .byte $F8   ; 
- D 1 - I - 0x0123CD 04:A3BD: 00        .byte $00   ; 
- D 1 - I - 0x0123CE 04:A3BE: F8        .byte $F8   ; 
- D 1 - I - 0x0123CF 04:A3BF: 00        .byte $00   ; 
- D 1 - I - 0x0123D0 04:A3C0: F8        .byte $F8   ; 
- D 1 - I - 0x0123D1 04:A3C1: 00        .byte $00   ; 
- D 1 - I - 0x0123D2 04:A3C2: F0        .byte $F0   ; 
off_A3C3_02:
- D 1 - I - 0x0123D3 04:A3C3: F6        .byte $F6   ; 
- D 1 - I - 0x0123D4 04:A3C4: FF        .byte $FF   ; 
- D 1 - I - 0x0123D5 04:A3C5: FE        .byte $FE   ; 
- D 1 - I - 0x0123D6 04:A3C6: F5        .byte $F5   ; 
- D 1 - I - 0x0123D7 04:A3C7: F4        .byte $F4   ; 
- D 1 - I - 0x0123D8 04:A3C8: FC        .byte $FC   ; 
- D 1 - I - 0x0123D9 04:A3C9: FD        .byte $FD   ; 
- D 1 - I - 0x0123DA 04:A3CA: 06        .byte $06   ; 
- D 1 - I - 0x0123DB 04:A3CB: F7        .byte $F7   ; 
off_A3CC_02:
- D 1 - I - 0x0123DC 04:A3CC: F4        .byte $F4   ; 
- D 1 - I - 0x0123DD 04:A3CD: FC        .byte $FC   ; 
- D 1 - I - 0x0123DE 04:A3CE: F4        .byte $F4   ; 
- D 1 - I - 0x0123DF 04:A3CF: FC        .byte $FC   ; 
- D 1 - I - 0x0123E0 04:A3D0: 04        .byte $04   ; 
- D 1 - I - 0x0123E1 04:A3D1: 04        .byte $04   ; 
- D 1 - I - 0x0123E2 04:A3D2: 04        .byte $04   ; 
off_A3D3_02:
- D 1 - I - 0x0123E3 04:A3D3: F4        .byte $F4   ; 
- D 1 - I - 0x0123E4 04:A3D4: FC        .byte $FC   ; 
- D 1 - I - 0x0123E5 04:A3D5: 04        .byte $04   ; 
- D 1 - I - 0x0123E6 04:A3D6: F4        .byte $F4   ; 
- D 1 - I - 0x0123E7 04:A3D7: FC        .byte $FC   ; 
- D 1 - I - 0x0123E8 04:A3D8: 04        .byte $04   ; 
- D 1 - I - 0x0123E9 04:A3D9: F4        .byte $F4   ; 
- D 1 - I - 0x0123EA 04:A3DA: FC        .byte $FC   ; 
- D 1 - I - 0x0123EB 04:A3DB: 04        .byte $04   ; 
off_A3DC_02:
- D 1 - I - 0x0123EC 04:A3DC: F8        .byte $F8   ; 
- D 1 - I - 0x0123ED 04:A3DD: 00        .byte $00   ; 
- D 1 - I - 0x0123EE 04:A3DE: 08        .byte $08   ; 
- D 1 - I - 0x0123EF 04:A3DF: F8        .byte $F8   ; 
- D 1 - I - 0x0123F0 04:A3E0: 00        .byte $00   ; 
- D 1 - I - 0x0123F1 04:A3E1: 08        .byte $08   ; 
- D 1 - I - 0x0123F2 04:A3E2: F8        .byte $F8   ; 
- D 1 - I - 0x0123F3 04:A3E3: 00        .byte $00   ; 
- D 1 - I - 0x0123F4 04:A3E4: 08        .byte $08   ; 
off_A3E5_02:
- D 1 - I - 0x0123F5 04:A3E5: F8        .byte $F8   ; 
- D 1 - I - 0x0123F6 04:A3E6: 08        .byte $08   ; 
- D 1 - I - 0x0123F7 04:A3E7: F8        .byte $F8   ; 
- D 1 - I - 0x0123F8 04:A3E8: 00        .byte $00   ; 
- D 1 - I - 0x0123F9 04:A3E9: 08        .byte $08   ; 
- D 1 - I - 0x0123FA 04:A3EA: F8        .byte $F8   ; 
- D 1 - I - 0x0123FB 04:A3EB: 00        .byte $00   ; 
- D 1 - I - 0x0123FC 04:A3EC: 08        .byte $08   ; 
- D 1 - I - 0x0123FD 04:A3ED: 00        .byte $00   ; 
off_A3EE_02:
- D 1 - I - 0x0123FE 04:A3EE: F8        .byte $F8   ; 
- D 1 - I - 0x0123FF 04:A3EF: F8        .byte $F8   ; 
- D 1 - I - 0x012400 04:A3F0: F8        .byte $F8   ; 
- D 1 - I - 0x012401 04:A3F1: 00        .byte $00   ; 
- D 1 - I - 0x012402 04:A3F2: 00        .byte $00   ; 
- D 1 - I - 0x012403 04:A3F3: 00        .byte $00   ; 
off_A3F4_02:
- D 1 - I - 0x012404 04:A3F4: 08        .byte $08   ; 
- D 1 - I - 0x012405 04:A3F5: 08        .byte $08   ; 
- D 1 - I - 0x012406 04:A3F6: 08        .byte $08   ; 
- D 1 - I - 0x012407 04:A3F7: F8        .byte $F8   ; 
- D 1 - I - 0x012408 04:A3F8: F8        .byte $F8   ; 
- D 1 - I - 0x012409 04:A3F9: F8        .byte $F8   ; 
- D 1 - I - 0x01240A 04:A3FA: 00        .byte $00   ; 
- D 1 - I - 0x01240B 04:A3FB: 00        .byte $00   ; 
- D 1 - I - 0x01240C 04:A3FC: 00        .byte $00   ; 
off_A3FD_02:
- D 1 - I - 0x01240D 04:A3FD: F5        .byte $F5   ; 
- D 1 - I - 0x01240E 04:A3FE: FD        .byte $FD   ; 
- D 1 - I - 0x01240F 04:A3FF: FF        .byte $FF   ; 
- D 1 - I - 0x012410 04:A400: 00        .byte $00   ; 
- D 1 - I - 0x012411 04:A401: F8        .byte $F8   ; 
- D 1 - I - 0x012412 04:A402: 00        .byte $00   ; 
- D 1 - I - 0x012413 04:A403: F3        .byte $F3   ; 
- D 1 - I - 0x012414 04:A404: F7        .byte $F7   ; 
- D 1 - I - 0x012415 04:A405: F8        .byte $F8   ; 
off_A406_02:
- D 1 - I - 0x012416 04:A406: F5        .byte $F5   ; 
- D 1 - I - 0x012417 04:A407: FD        .byte $FD   ; 
- D 1 - I - 0x012418 04:A408: FD        .byte $FD   ; 
- D 1 - I - 0x012419 04:A409: F5        .byte $F5   ; 
- D 1 - I - 0x01241A 04:A40A: F5        .byte $F5   ; 
- D 1 - I - 0x01241B 04:A40B: FD        .byte $FD   ; 
- D 1 - I - 0x01241C 04:A40C: F4        .byte $F4   ; 
- D 1 - I - 0x01241D 04:A40D: F5        .byte $F5   ; 
- D 1 - I - 0x01241E 04:A40E: FD        .byte $FD   ; 
off_A40F_02:
- D 1 - I - 0x01241F 04:A40F: F6        .byte $F6   ; 
- D 1 - I - 0x012420 04:A410: FE        .byte $FE   ; 
- D 1 - I - 0x012421 04:A411: FF        .byte $FF   ; 
- D 1 - I - 0x012422 04:A412: 02        .byte $02   ; 
- D 1 - I - 0x012423 04:A413: F7        .byte $F7   ; 
- D 1 - I - 0x012424 04:A414: F6        .byte $F6   ; 
- D 1 - I - 0x012425 04:A415: FE        .byte $FE   ; 
- D 1 - I - 0x012426 04:A416: FA        .byte $FA   ; 
- D 1 - I - 0x012427 04:A417: F2        .byte $F2   ; 
off_A418_02:
- D 1 - I - 0x012428 04:A418: F3        .byte $F3   ; 
- D 1 - I - 0x012429 04:A419: FB        .byte $FB   ; 
- D 1 - I - 0x01242A 04:A41A: EC        .byte $EC   ; 
- D 1 - I - 0x01242B 04:A41B: F2        .byte $F2   ; 
- D 1 - I - 0x01242C 04:A41C: FA        .byte $FA   ; 
- D 1 - I - 0x01242D 04:A41D: F5        .byte $F5   ; 
- D 1 - I - 0x01242E 04:A41E: FA        .byte $FA   ; 
- D 1 - I - 0x01242F 04:A41F: F3        .byte $F3   ; 
- D 1 - I - 0x012430 04:A420: FB        .byte $FB   ; 
off_A421_02:
- D 1 - I - 0x012431 04:A421: F6        .byte $F6   ; 
- D 1 - I - 0x012432 04:A422: F4        .byte $F4   ; 
- D 1 - I - 0x012433 04:A423: FC        .byte $FC   ; 
- D 1 - I - 0x012434 04:A424: F6        .byte $F6   ; 
- D 1 - I - 0x012435 04:A425: FE        .byte $FE   ; 
- D 1 - I - 0x012436 04:A426: F2        .byte $F2   ; 
- D 1 - I - 0x012437 04:A427: FA        .byte $FA   ; 
- D 1 - I - 0x012438 04:A428: FE        .byte $FE   ; 
- D 1 - I - 0x012439 04:A429: 06        .byte $06   ; 
off_A42A_02:
- D 1 - I - 0x01243A 04:A42A: 04        .byte $04   ; 
- D 1 - I - 0x01243B 04:A42B: 0C        .byte $0C   ; 
- D 1 - I - 0x01243C 04:A42C: 04        .byte $04   ; 
- D 1 - I - 0x01243D 04:A42D: 0C        .byte $0C   ; 
- D 1 - I - 0x01243E 04:A42E: 04        .byte $04   ; 
- D 1 - I - 0x01243F 04:A42F: 0C        .byte $0C   ; 
- D 1 - I - 0x012440 04:A430: 0C        .byte $0C   ; 
- D 1 - I - 0x012441 04:A431: 04        .byte $04   ; 
- D 1 - I - 0x012442 04:A432: 07        .byte $07   ; 
off_A433_02:
- D 1 - I - 0x012443 04:A433: F2        .byte $F2   ; 
- D 1 - I - 0x012444 04:A434: 08        .byte $08   ; 
- D 1 - I - 0x012445 04:A435: 00        .byte $00   ; 
- D 1 - I - 0x012446 04:A436: 08        .byte $08   ; 
- D 1 - I - 0x012447 04:A437: 00        .byte $00   ; 
- D 1 - I - 0x012448 04:A438: F8        .byte $F8   ; 
- D 1 - I - 0x012449 04:A439: F8        .byte $F8   ; 
- D 1 - I - 0x01244A 04:A43A: 00        .byte $00   ; 
- D 1 - I - 0x01244B 04:A43B: 07        .byte $07   ; 
off_A43C_02:
- D 1 - I - 0x01244C 04:A43C: F8        .byte $F8   ; 
- D 1 - I - 0x01244D 04:A43D: 00        .byte $00   ; 
- D 1 - I - 0x01244E 04:A43E: F7        .byte $F7   ; 
- D 1 - I - 0x01244F 04:A43F: 00        .byte $00   ; 
- D 1 - I - 0x012450 04:A440: F8        .byte $F8   ; 
- D 1 - I - 0x012451 04:A441: F1        .byte $F1   ; 
- D 1 - I - 0x012452 04:A442: F8        .byte $F8   ; 
- D 1 - I - 0x012453 04:A443: FF        .byte $FF   ; 
- D 1 - I - 0x012454 04:A444: 00        .byte $00   ; 
off_A445_02:
- D 1 - I - 0x012455 04:A445: 04        .byte $04   ; 
- D 1 - I - 0x012456 04:A446: 0C        .byte $0C   ; 
- D 1 - I - 0x012457 04:A447: 04        .byte $04   ; 
- D 1 - I - 0x012458 04:A448: 04        .byte $04   ; 
- D 1 - I - 0x012459 04:A449: 0C        .byte $0C   ; 
- D 1 - I - 0x01245A 04:A44A: 0C        .byte $0C   ; 
- D 1 - I - 0x01245B 04:A44B: 0C        .byte $0C   ; 
- D 1 - I - 0x01245C 04:A44C: 04        .byte $04   ; 
- D 1 - I - 0x01245D 04:A44D: 07        .byte $07   ; 
off_A44E_02:
- D 1 - I - 0x01245E 04:A44E: FE        .byte $FE   ; 
- D 1 - I - 0x01245F 04:A44F: FE        .byte $FE   ; 
- D 1 - I - 0x012460 04:A450: F8        .byte $F8   ; 
- D 1 - I - 0x012461 04:A451: F2        .byte $F2   ; 
- D 1 - I - 0x012462 04:A452: F6        .byte $F6   ; 
- D 1 - I - 0x012463 04:A453: F7        .byte $F7   ; 
- D 1 - I - 0x012464 04:A454: FF        .byte $FF   ; 
- D 1 - I - 0x012465 04:A455: F4        .byte $F4   ; 
- D 1 - I - 0x012466 04:A456: FC        .byte $FC   ; 
off_A457_02:
- D 1 - I - 0x012467 04:A457: F9        .byte $F9   ; 
- D 1 - I - 0x012468 04:A458: 00        .byte $00   ; 
- D 1 - I - 0x012469 04:A459: F1        .byte $F1   ; 
off_A45A_02:
- D 1 - I - 0x01246A 04:A45A: F8        .byte $F8   ; 
off_A45B_02:
- D 1 - I - 0x01246B 04:A45B: 00        .byte $00   ; 
- D 1 - I - 0x01246C 04:A45C: 00        .byte $00   ; 
- D 1 - I - 0x01246D 04:A45D: F8        .byte $F8   ; 
- D 1 - I - 0x01246E 04:A45E: F8        .byte $F8   ; 
- D 1 - I - 0x01246F 04:A45F: F1        .byte $F1   ; 
off_A460_02:
- D 1 - I - 0x012470 04:A460: F3        .byte $F3   ; 
- D 1 - I - 0x012471 04:A461: F3        .byte $F3   ; 
- D 1 - I - 0x012472 04:A462: F4        .byte $F4   ; 
- D 1 - I - 0x012473 04:A463: F6        .byte $F6   ; 
- D 1 - I - 0x012474 04:A464: 01        .byte $01   ; 
- D 1 - I - 0x012475 04:A465: FB        .byte $FB   ; 
- D 1 - I - 0x012476 04:A466: FB        .byte $FB   ; 
- D 1 - I - 0x012477 04:A467: FE        .byte $FE   ; 
- D 1 - I - 0x012478 04:A468: FC        .byte $FC   ; 
off_A469_02:
- D 1 - I - 0x012479 04:A469: 00        .byte $00   ; 
- D 1 - I - 0x01247A 04:A46A: 00        .byte $00   ; 
- D 1 - I - 0x01247B 04:A46B: 08        .byte $08   ; 
- D 1 - I - 0x01247C 04:A46C: F8        .byte $F8   ; 
- D 1 - I - 0x01247D 04:A46D: 00        .byte $00   ; 
- D 1 - I - 0x01247E 04:A46E: F8        .byte $F8   ; 
- D 1 - I - 0x01247F 04:A46F: F8        .byte $F8   ; 
off_A470_02:
- D 1 - I - 0x012480 04:A470: F8        .byte $F8   ; 
- D 1 - I - 0x012481 04:A471: 00        .byte $00   ; 
- D 1 - I - 0x012482 04:A472: F8        .byte $F8   ; 
- D 1 - I - 0x012483 04:A473: 00        .byte $00   ; 
- D 1 - I - 0x012484 04:A474: 08        .byte $08   ; 
- D 1 - I - 0x012485 04:A475: F8        .byte $F8   ; 
- D 1 - I - 0x012486 04:A476: 00        .byte $00   ; 
- D 1 - I - 0x012487 04:A477: F8        .byte $F8   ; 
off_A478_02:
- D 1 - I - 0x012488 04:A478: 00        .byte $00   ; 
- D 1 - I - 0x012489 04:A479: 08        .byte $08   ; 
- D 1 - I - 0x01248A 04:A47A: 00        .byte $00   ; 
- D 1 - I - 0x01248B 04:A47B: 08        .byte $08   ; 
- D 1 - I - 0x01248C 04:A47C: F8        .byte $F8   ; 
- D 1 - I - 0x01248D 04:A47D: 08        .byte $08   ; 
- D 1 - I - 0x01248E 04:A47E: 00        .byte $00   ; 
- D 1 - I - 0x01248F 04:A47F: FB        .byte $FB   ; 
- D 1 - I - 0x012490 04:A480: 03        .byte $03   ; 
off_A481_02:
- D 1 - I - 0x012491 04:A481: F7        .byte $F7   ; 
- D 1 - I - 0x012492 04:A482: FF        .byte $FF   ; 
- D 1 - I - 0x012493 04:A483: F7        .byte $F7   ; 
- D 1 - I - 0x012494 04:A484: FF        .byte $FF   ; 
- D 1 - I - 0x012495 04:A485: F8        .byte $F8   ; 
- D 1 - I - 0x012496 04:A486: 00        .byte $00   ; 
- D 1 - I - 0x012497 04:A487: F8        .byte $F8   ; 
- D 1 - I - 0x012498 04:A488: F7        .byte $F7   ; 
- D 1 - I - 0x012499 04:A489: 00        .byte $00   ; 
off_A48A_02:
- D 1 - I - 0x01249A 04:A48A: F8        .byte $F8   ; 
- D 1 - I - 0x01249B 04:A48B: 00        .byte $00   ; 
- D 1 - I - 0x01249C 04:A48C: F8        .byte $F8   ; 
- D 1 - I - 0x01249D 04:A48D: 00        .byte $00   ; 
- D 1 - I - 0x01249E 04:A48E: F8        .byte $F8   ; 
- D 1 - I - 0x01249F 04:A48F: 00        .byte $00   ; 
- D 1 - I - 0x0124A0 04:A490: F8        .byte $F8   ; 
- D 1 - I - 0x0124A1 04:A491: 00        .byte $00   ; 
- D 1 - I - 0x0124A2 04:A492: 07        .byte $07   ; 
off_A493_02:
- D 1 - I - 0x0124A3 04:A493: F8        .byte $F8   ; 
- D 1 - I - 0x0124A4 04:A494: 00        .byte $00   ; 
- D 1 - I - 0x0124A5 04:A495: F8        .byte $F8   ; 
- D 1 - I - 0x0124A6 04:A496: 00        .byte $00   ; 
- D 1 - I - 0x0124A7 04:A497: F8        .byte $F8   ; 
- D 1 - I - 0x0124A8 04:A498: 00        .byte $00   ; 
- D 1 - I - 0x0124A9 04:A499: 08        .byte $08   ; 
- D 1 - I - 0x0124AA 04:A49A: 04        .byte $04   ; 
- D 1 - I - 0x0124AB 04:A49B: FB        .byte $FB   ; 
off_A49C_02:
- D 1 - I - 0x0124AC 04:A49C: F8        .byte $F8   ; 
- D 1 - I - 0x0124AD 04:A49D: FF        .byte $FF   ; 
- D 1 - I - 0x0124AE 04:A49E: FF        .byte $FF   ; 
- D 1 - I - 0x0124AF 04:A49F: F6        .byte $F6   ; 
- D 1 - I - 0x0124B0 04:A4A0: FE        .byte $FE   ; 
- D 1 - I - 0x0124B1 04:A4A1: F0        .byte $F0   ; 
- D 1 - I - 0x0124B2 04:A4A2: F7        .byte $F7   ; 
off_A4A3_02:
- D 1 - I - 0x0124B3 04:A4A3: F7        .byte $F7   ; 
- D 1 - I - 0x0124B4 04:A4A4: FF        .byte $FF   ; 
- D 1 - I - 0x0124B5 04:A4A5: F7        .byte $F7   ; 
- D 1 - I - 0x0124B6 04:A4A6: FF        .byte $FF   ; 
- D 1 - I - 0x0124B7 04:A4A7: F7        .byte $F7   ; 
- D 1 - I - 0x0124B8 04:A4A8: FF        .byte $FF   ; 
- D 1 - I - 0x0124B9 04:A4A9: F9        .byte $F9   ; 
- D 1 - I - 0x0124BA 04:A4AA: FF        .byte $FF   ; 
off_A4AB_02:
- D 1 - I - 0x0124BB 04:A4AB: 00        .byte $00   ; 
- D 1 - I - 0x0124BC 04:A4AC: FF        .byte $FF   ; 
- D 1 - I - 0x0124BD 04:A4AD: 02        .byte $02   ; 
- D 1 - I - 0x0124BE 04:A4AE: F9        .byte $F9   ; 
- D 1 - I - 0x0124BF 04:A4AF: 01        .byte $01   ; 
- D 1 - I - 0x0124C0 04:A4B0: F7        .byte $F7   ; 
- D 1 - I - 0x0124C1 04:A4B1: FF        .byte $FF   ; 
- D 1 - I - 0x0124C2 04:A4B2: F7        .byte $F7   ; 
off_A4B3_02:
- D 1 - I - 0x0124C3 04:A4B3: F0        .byte $F0   ; 
- D 1 - I - 0x0124C4 04:A4B4: F8        .byte $F8   ; 
- D 1 - I - 0x0124C5 04:A4B5: F7        .byte $F7   ; 
- D 1 - I - 0x0124C6 04:A4B6: FF        .byte $FF   ; 
- D 1 - I - 0x0124C7 04:A4B7: 07        .byte $07   ; 
- D 1 - I - 0x0124C8 04:A4B8: 07        .byte $07   ; 
- D 1 - I - 0x0124C9 04:A4B9: FF        .byte $FF   ; 
- D 1 - I - 0x0124CA 04:A4BA: F0        .byte $F0   ; 
off_A4BB_02:
- D 1 - I - 0x0124CB 04:A4BB: 04        .byte $04   ; 
- D 1 - I - 0x0124CC 04:A4BC: 0C        .byte $0C   ; 
- D 1 - I - 0x0124CD 04:A4BD: 04        .byte $04   ; 
- D 1 - I - 0x0124CE 04:A4BE: 0C        .byte $0C   ; 
- D 1 - I - 0x0124CF 04:A4BF: 00        .byte $00   ; 
- D 1 - I - 0x0124D0 04:A4C0: 08        .byte $08   ; 
- D 1 - I - 0x0124D1 04:A4C1: 00        .byte $00   ; 
- D 1 - I - 0x0124D2 04:A4C2: 08        .byte $08   ; 
off_A4C3_02:
- D 1 - I - 0x0124D3 04:A4C3: F6        .byte $F6   ; 
- D 1 - I - 0x0124D4 04:A4C4: FE        .byte $FE   ; 
- D 1 - I - 0x0124D5 04:A4C5: F6        .byte $F6   ; 
- D 1 - I - 0x0124D6 04:A4C6: FE        .byte $FE   ; 
- D 1 - I - 0x0124D7 04:A4C7: 00        .byte $00   ; 
- D 1 - I - 0x0124D8 04:A4C8: F8        .byte $F8   ; 
- D 1 - I - 0x0124D9 04:A4C9: 00        .byte $00   ; 
- D 1 - I - 0x0124DA 04:A4CA: F7        .byte $F7   ; 
off_A4CB_02:
- D 1 - I - 0x0124DB 04:A4CB: F5        .byte $F5   ; 
- D 1 - I - 0x0124DC 04:A4CC: FD        .byte $FD   ; 
- D 1 - I - 0x0124DD 04:A4CD: F5        .byte $F5   ; 
- D 1 - I - 0x0124DE 04:A4CE: FD        .byte $FD   ; 
- D 1 - I - 0x0124DF 04:A4CF: F6        .byte $F6   ; 
- D 1 - I - 0x0124E0 04:A4D0: FE        .byte $FE   ; 
- D 1 - I - 0x0124E1 04:A4D1: F4        .byte $F4   ; 
- D 1 - I - 0x0124E2 04:A4D2: FC        .byte $FC   ; 
off_A4D3_02:
- D 1 - I - 0x0124E3 04:A4D3: F5        .byte $F5   ; 
- D 1 - I - 0x0124E4 04:A4D4: FD        .byte $FD   ; 
- D 1 - I - 0x0124E5 04:A4D5: F5        .byte $F5   ; 
- D 1 - I - 0x0124E6 04:A4D6: FD        .byte $FD   ; 
- D 1 - I - 0x0124E7 04:A4D7: F7        .byte $F7   ; 
- D 1 - I - 0x0124E8 04:A4D8: FF        .byte $FF   ; 
off_A4D9_02:
- D 1 - I - 0x0124E9 04:A4D9: F8        .byte $F8   ; 
- D 1 - I - 0x0124EA 04:A4DA: 00        .byte $00   ; 
- D 1 - I - 0x0124EB 04:A4DB: F9        .byte $F9   ; 
- D 1 - I - 0x0124EC 04:A4DC: F8        .byte $F8   ; 
- D 1 - I - 0x0124ED 04:A4DD: 01        .byte $01   ; 
- D 1 - I - 0x0124EE 04:A4DE: 00        .byte $00   ; 
- D 1 - I - 0x0124EF 04:A4DF: F8        .byte $F8   ; 
- D 1 - I - 0x0124F0 04:A4E0: 00        .byte $00   ; 
off_A4E1_02:
- D 1 - I - 0x0124F1 04:A4E1: F0        .byte $F0   ; 
- D 1 - I - 0x0124F2 04:A4E2: F8        .byte $F8   ; 
- D 1 - I - 0x0124F3 04:A4E3: F8        .byte $F8   ; 
- D 1 - I - 0x0124F4 04:A4E4: 00        .byte $00   ; 
- D 1 - I - 0x0124F5 04:A4E5: F0        .byte $F0   ; 
- D 1 - I - 0x0124F6 04:A4E6: 08        .byte $08   ; 
- D 1 - I - 0x0124F7 04:A4E7: 00        .byte $00   ; 
- D 1 - I - 0x0124F8 04:A4E8: 08        .byte $08   ; 
off_A4E9_02:
- D 1 - I - 0x0124F9 04:A4E9: F8        .byte $F8   ; 
- D 1 - I - 0x0124FA 04:A4EA: 00        .byte $00   ; 
- D 1 - I - 0x0124FB 04:A4EB: F8        .byte $F8   ; 
- D 1 - I - 0x0124FC 04:A4EC: 00        .byte $00   ; 
- D 1 - I - 0x0124FD 04:A4ED: F8        .byte $F8   ; 
- D 1 - I - 0x0124FE 04:A4EE: 00        .byte $00   ; 
- D 1 - I - 0x0124FF 04:A4EF: 00        .byte $00   ; 
- D 1 - I - 0x012500 04:A4F0: F8        .byte $F8   ; 
off_A4F1_02:
- D 1 - I - 0x012501 04:A4F1: F7        .byte $F7   ; 
- D 1 - I - 0x012502 04:A4F2: FF        .byte $FF   ; 
- D 1 - I - 0x012503 04:A4F3: FF        .byte $FF   ; 
- D 1 - I - 0x012504 04:A4F4: F8        .byte $F8   ; 
- D 1 - I - 0x012505 04:A4F5: 00        .byte $00   ; 
- D 1 - I - 0x012506 04:A4F6: FA        .byte $FA   ; 
- D 1 - I - 0x012507 04:A4F7: 02        .byte $02   ; 
- D 1 - I - 0x012508 04:A4F8: F7        .byte $F7   ; 
off_A4F9_02:
- D 1 - I - 0x012509 04:A4F9: F0        .byte $F0   ; 
- D 1 - I - 0x01250A 04:A4FA: FF        .byte $FF   ; 
- D 1 - I - 0x01250B 04:A4FB: F0        .byte $F0   ; 
- D 1 - I - 0x01250C 04:A4FC: 07        .byte $07   ; 
- D 1 - I - 0x01250D 04:A4FD: 07        .byte $07   ; 
- D 1 - I - 0x01250E 04:A4FE: FF        .byte $FF   ; 
- D 1 - I - 0x01250F 04:A4FF: F8        .byte $F8   ; 
- D 1 - I - 0x012510 04:A500: F8        .byte $F8   ; 
off_A501_02:
- D 1 - I - 0x012511 04:A501: FA        .byte $FA   ; 
- D 1 - I - 0x012512 04:A502: 02        .byte $02   ; 
- D 1 - I - 0x012513 04:A503: 02        .byte $02   ; 
- D 1 - I - 0x012514 04:A504: FA        .byte $FA   ; 
- D 1 - I - 0x012515 04:A505: 02        .byte $02   ; 
- D 1 - I - 0x012516 04:A506: 00        .byte $00   ; 
- D 1 - I - 0x012517 04:A507: F8        .byte $F8   ; 
- D 1 - I - 0x012518 04:A508: FA        .byte $FA   ; 
off_A509_02:
- D 1 - I - 0x012519 04:A509: F4        .byte $F4   ; 
- D 1 - I - 0x01251A 04:A50A: FC        .byte $FC   ; 
- D 1 - I - 0x01251B 04:A50B: F4        .byte $F4   ; 
- D 1 - I - 0x01251C 04:A50C: FC        .byte $FC   ; 
- D 1 - I - 0x01251D 04:A50D: F7        .byte $F7   ; 
- D 1 - I - 0x01251E 04:A50E: FF        .byte $FF   ; 
- D 1 - I - 0x01251F 04:A50F: 04        .byte $04   ; 
- D 1 - I - 0x012520 04:A510: 04        .byte $04   ; 
off_A511_02:
- D 1 - I - 0x012521 04:A511: F8        .byte $F8   ; 
- D 1 - I - 0x012522 04:A512: 00        .byte $00   ; 
- D 1 - I - 0x012523 04:A513: 08        .byte $08   ; 
- D 1 - I - 0x012524 04:A514: 10        .byte $10   ; 
- D 1 - I - 0x012525 04:A515: F8        .byte $F8   ; 
- D 1 - I - 0x012526 04:A516: 00        .byte $00   ; 
- D 1 - I - 0x012527 04:A517: 08        .byte $08   ; 
- D 1 - I - 0x012528 04:A518: 10        .byte $10   ; 
off_A519_02:
- D 1 - I - 0x012529 04:A519: F7        .byte $F7   ; 
- D 1 - I - 0x01252A 04:A51A: FF        .byte $FF   ; 
- D 1 - I - 0x01252B 04:A51B: F4        .byte $F4   ; 
- D 1 - I - 0x01252C 04:A51C: FC        .byte $FC   ; 
- D 1 - I - 0x01252D 04:A51D: F6        .byte $F6   ; 
- D 1 - I - 0x01252E 04:A51E: FE        .byte $FE   ; 
off_A51F_02:
- D 1 - I - 0x01252F 04:A51F: F7        .byte $F7   ; 
- D 1 - I - 0x012530 04:A520: FF        .byte $FF   ; 
- D 1 - I - 0x012531 04:A521: F7        .byte $F7   ; 
- D 1 - I - 0x012532 04:A522: FF        .byte $FF   ; 
off_A523_02:
- D 1 - I - 0x012533 04:A523: F8        .byte $F8   ; 
- D 1 - I - 0x012534 04:A524: 00        .byte $00   ; 
- D 1 - I - 0x012535 04:A525: F8        .byte $F8   ; 
- D 1 - I - 0x012536 04:A526: 00        .byte $00   ; 
- D 1 - I - 0x012537 04:A527: F0        .byte $F0   ; 
- D 1 - I - 0x012538 04:A528: F0        .byte $F0   ; 
- D 1 - I - 0x012539 04:A529: 08        .byte $08   ; 
- D 1 - I - 0x01253A 04:A52A: 08        .byte $08   ; 
off_A52B_02:
- D 1 - I - 0x01253B 04:A52B: F0        .byte $F0   ; 
- D 1 - I - 0x01253C 04:A52C: F8        .byte $F8   ; 
- D 1 - I - 0x01253D 04:A52D: 00        .byte $00   ; 
- D 1 - I - 0x01253E 04:A52E: 00        .byte $00   ; 
- D 1 - I - 0x01253F 04:A52F: F8        .byte $F8   ; 
- D 1 - I - 0x012540 04:A530: F0        .byte $F0   ; 
- D 1 - I - 0x012541 04:A531: 08        .byte $08   ; 
- D 1 - I - 0x012542 04:A532: 08        .byte $08   ; 
off_A533_02:
- D 1 - I - 0x012543 04:A533: F8        .byte $F8   ; 
- D 1 - I - 0x012544 04:A534: 00        .byte $00   ; 
- D 1 - I - 0x012545 04:A535: F8        .byte $F8   ; 
- D 1 - I - 0x012546 04:A536: 00        .byte $00   ; 
- D 1 - I - 0x012547 04:A537: F0        .byte $F0   ; 
- D 1 - I - 0x012548 04:A538: F0        .byte $F0   ; 
- D 1 - I - 0x012549 04:A539: F8        .byte $F8   ; 
- D 1 - I - 0x01254A 04:A53A: 08        .byte $08   ; 
off_A53B_02:
- D 1 - I - 0x01254B 04:A53B: F3        .byte $F3   ; 
- D 1 - I - 0x01254C 04:A53C: F4        .byte $F4   ; 
- D 1 - I - 0x01254D 04:A53D: F3        .byte $F3   ; 
- D 1 - I - 0x01254E 04:A53E: FB        .byte $FB   ; 
- D 1 - I - 0x01254F 04:A53F: FB        .byte $FB   ; 
- D 1 - I - 0x012550 04:A540: F3        .byte $F3   ; 
- D 1 - I - 0x012551 04:A541: F3        .byte $F3   ; 
- D 1 - I - 0x012552 04:A542: FB        .byte $FB   ; 
off_A543_02:
- D 1 - I - 0x012553 04:A543: F6        .byte $F6   ; 
- D 1 - I - 0x012554 04:A544: FE        .byte $FE   ; 
- D 1 - I - 0x012555 04:A545: F6        .byte $F6   ; 
- D 1 - I - 0x012556 04:A546: FE        .byte $FE   ; 
- D 1 - I - 0x012557 04:A547: F8        .byte $F8   ; 
- D 1 - I - 0x012558 04:A548: F8        .byte $F8   ; 
- D 1 - I - 0x012559 04:A549: 00        .byte $00   ; 
- D 1 - I - 0x01255A 04:A54A: FE        .byte $FE   ; 
off_A54B_02:
- D 1 - I - 0x01255B 04:A54B: F5        .byte $F5   ; 
- D 1 - I - 0x01255C 04:A54C: FD        .byte $FD   ; 
- D 1 - I - 0x01255D 04:A54D: F7        .byte $F7   ; 
- D 1 - I - 0x01255E 04:A54E: FF        .byte $FF   ; 
- D 1 - I - 0x01255F 04:A54F: F8        .byte $F8   ; 
- D 1 - I - 0x012560 04:A550: 00        .byte $00   ; 
- D 1 - I - 0x012561 04:A551: F7        .byte $F7   ; 
- D 1 - I - 0x012562 04:A552: FF        .byte $FF   ; 
off_A553_02:
- D 1 - I - 0x012563 04:A553: 00        .byte $00   ; 
- D 1 - I - 0x012564 04:A554: 00        .byte $00   ; 
- D 1 - I - 0x012565 04:A555: F8        .byte $F8   ; 
- D 1 - I - 0x012566 04:A556: F8        .byte $F8   ; 
- D 1 - I - 0x012567 04:A557: F8        .byte $F8   ; 
- D 1 - I - 0x012568 04:A558: F8        .byte $F8   ; 
- D 1 - I - 0x012569 04:A559: 08        .byte $08   ; 
- D 1 - I - 0x01256A 04:A55A: EF        .byte $EF   ; 
off_A55B_02:
- D 1 - I - 0x01256B 04:A55B: F8        .byte $F8   ; 
- D 1 - I - 0x01256C 04:A55C: 00        .byte $00   ; 
- D 1 - I - 0x01256D 04:A55D: 00        .byte $00   ; 
- D 1 - I - 0x01256E 04:A55E: F8        .byte $F8   ; 
- D 1 - I - 0x01256F 04:A55F: 00        .byte $00   ; 
off_A560_02:
- D 1 - I - 0x012570 04:A560: F8        .byte $F8   ; 
- D 1 - I - 0x012571 04:A561: 00        .byte $00   ; 
- D 1 - I - 0x012572 04:A562: F8        .byte $F8   ; 
- D 1 - I - 0x012573 04:A563: 00        .byte $00   ; 
- D 1 - I - 0x012574 04:A564: 08        .byte $08   ; 
- D 1 - I - 0x012575 04:A565: 08        .byte $08   ; 
- D 1 - I - 0x012576 04:A566: F0        .byte $F0   ; 
- D 1 - I - 0x012577 04:A567: F8        .byte $F8   ; 
off_A568_02:
- D 1 - I - 0x012578 04:A568: 00        .byte $00   ; 
- D 1 - I - 0x012579 04:A569: F9        .byte $F9   ; 
- D 1 - I - 0x01257A 04:A56A: 01        .byte $01   ; 
- D 1 - I - 0x01257B 04:A56B: F8        .byte $F8   ; 
- D 1 - I - 0x01257C 04:A56C: 00        .byte $00   ; 
- D 1 - I - 0x01257D 04:A56D: F8        .byte $F8   ; 
- D 1 - I - 0x01257E 04:A56E: F8        .byte $F8   ; 
- D 1 - I - 0x01257F 04:A56F: 00        .byte $00   ; 
off_A570_02:
- D 1 - I - 0x012580 04:A570: F0        .byte $F0   ; 
- D 1 - I - 0x012581 04:A571: F8        .byte $F8   ; 
- D 1 - I - 0x012582 04:A572: F0        .byte $F0   ; 
- D 1 - I - 0x012583 04:A573: F8        .byte $F8   ; 
- D 1 - I - 0x012584 04:A574: 00        .byte $00   ; 
- D 1 - I - 0x012585 04:A575: 00        .byte $00   ; 
- D 1 - I - 0x012586 04:A576: 08        .byte $08   ; 
off_A577_02:
- D 1 - I - 0x012587 04:A577: EA        .byte $EA   ; 
- D 1 - I - 0x012588 04:A578: F2        .byte $F2   ; 
- D 1 - I - 0x012589 04:A579: EA        .byte $EA   ; 
- D 1 - I - 0x01258A 04:A57A: F2        .byte $F2   ; 
- D 1 - I - 0x01258B 04:A57B: FA        .byte $FA   ; 
- D 1 - I - 0x01258C 04:A57C: FA        .byte $FA   ; 
- D 1 - I - 0x01258D 04:A57D: F2        .byte $F2   ; 
off_A57E_02:
- D 1 - I - 0x01258E 04:A57E: 08        .byte $08   ; 
off_A57F_02:
- D 1 - I - 0x01258F 04:A57F: F0        .byte $F0   ; 
- D 1 - I - 0x012590 04:A580: F8        .byte $F8   ; 
- D 1 - I - 0x012591 04:A581: 00        .byte $00   ; 
- D 1 - I - 0x012592 04:A582: F8        .byte $F8   ; 
- D 1 - I - 0x012593 04:A583: 00        .byte $00   ; 
off_A584_02:
- D 1 - I - 0x012594 04:A584: F0        .byte $F0   ; 
- D 1 - I - 0x012595 04:A585: F0        .byte $F0   ; 
- D 1 - I - 0x012596 04:A586: F8        .byte $F8   ; 
- D 1 - I - 0x012597 04:A587: 00        .byte $00   ; 
- D 1 - I - 0x012598 04:A588: F0        .byte $F0   ; 
- D 1 - I - 0x012599 04:A589: F8        .byte $F8   ; 
off_A58A_02:
- D 1 - I - 0x01259A 04:A58A: F1        .byte $F1   ; 
- D 1 - I - 0x01259B 04:A58B: F9        .byte $F9   ; 
- D 1 - I - 0x01259C 04:A58C: 01        .byte $01   ; 
- D 1 - I - 0x01259D 04:A58D: 09        .byte $09   ; 
- D 1 - I - 0x01259E 04:A58E: 11        .byte $11   ; 
- D 1 - I - 0x01259F 04:A58F: E9        .byte $E9   ; 
off_A590_02:
- - - - - - 0x0125A0 04:A590: F6        .byte $F6   ; 
- - - - - - 0x0125A1 04:A591: FE        .byte $FE   ; 
- - - - - - 0x0125A2 04:A592: F6        .byte $F6   ; 
- - - - - - 0x0125A3 04:A593: FE        .byte $FE   ; 
- - - - - - 0x0125A4 04:A594: FD        .byte $FD   ; 
- - - - - - 0x0125A5 04:A595: 06        .byte $06   ; 
off_A596_02:
- - - - - - 0x0125A6 04:A596: F7        .byte $F7   ; 
- - - - - - 0x0125A7 04:A597: F7        .byte $F7   ; 
- - - - - - 0x0125A8 04:A598: FD        .byte $FD   ; 
- - - - - - 0x0125A9 04:A599: FF        .byte $FF   ; 
- - - - - - 0x0125AA 04:A59A: FF        .byte $FF   ; 
- - - - - - 0x0125AB 04:A59B: 06        .byte $06   ; 
off_A59C_02:
- - - - - - 0x0125AC 04:A59C: F8        .byte $F8   ; 
- - - - - - 0x0125AD 04:A59D: F8        .byte $F8   ; 
- - - - - - 0x0125AE 04:A59E: F1        .byte $F1   ; 
- - - - - - 0x0125AF 04:A59F: 00        .byte $00   ; 
- - - - - - 0x0125B0 04:A5A0: 00        .byte $00   ; 
- - - - - - 0x0125B1 04:A5A1: FA        .byte $FA   ; 
off_A5A2_02:
- D 1 - I - 0x0125B2 04:A5A2: F8        .byte $F8   ; 
- D 1 - I - 0x0125B3 04:A5A3: 00        .byte $00   ; 
- D 1 - I - 0x0125B4 04:A5A4: F8        .byte $F8   ; 
- D 1 - I - 0x0125B5 04:A5A5: 00        .byte $00   ; 
- D 1 - I - 0x0125B6 04:A5A6: 09        .byte $09   ; 
- D 1 - I - 0x0125B7 04:A5A7: EF        .byte $EF   ; 
off_A5A8_02:
- D 1 - I - 0x0125B8 04:A5A8: FC        .byte $FC   ; 
- D 1 - I - 0x0125B9 04:A5A9: 04        .byte $04   ; 
- D 1 - I - 0x0125BA 04:A5AA: FC        .byte $FC   ; 
- D 1 - I - 0x0125BB 04:A5AB: 04        .byte $04   ; 
off_A5AC_02:
- - - - - - 0x0125BC 04:A5AC: 00        .byte $00   ; 
- - - - - - 0x0125BD 04:A5AD: 08        .byte $08   ; 
- - - - - - 0x0125BE 04:A5AE: 08        .byte $08   ; 
- - - - - - 0x0125BF 04:A5AF: 00        .byte $00   ; 
off_A5B0_02:
- D 1 - I - 0x0125C0 04:A5B0: EE        .byte $EE   ; 
- D 1 - I - 0x0125C1 04:A5B1: 0A        .byte $0A   ; 
off_A5B2_02:
- D 1 - I - 0x0125C2 04:A5B2: F2        .byte $F2   ; 
- D 1 - I - 0x0125C3 04:A5B3: 06        .byte $06   ; 
off_A5B4_03:
- D 1 - I - 0x0125C4 04:A5B4: D8        .byte $D8   ; 
- D 1 - I - 0x0125C5 04:A5B5: D8        .byte $D8   ; 
- D 1 - I - 0x0125C6 04:A5B6: D8        .byte $D8   ; 
- D 1 - I - 0x0125C7 04:A5B7: D8        .byte $D8   ; 
- D 1 - I - 0x0125C8 04:A5B8: E0        .byte $E0   ; 
- D 1 - I - 0x0125C9 04:A5B9: E0        .byte $E0   ; 
- D 1 - I - 0x0125CA 04:A5BA: E0        .byte $E0   ; 
- D 1 - I - 0x0125CB 04:A5BB: E0        .byte $E0   ; 
- D 1 - I - 0x0125CC 04:A5BC: E0        .byte $E0   ; 
off_A5BD_03:
- D 1 - I - 0x0125CD 04:A5BD: E8        .byte $E8   ; 
- D 1 - I - 0x0125CE 04:A5BE: E8        .byte $E8   ; 
- D 1 - I - 0x0125CF 04:A5BF: E8        .byte $E8   ; 
- D 1 - I - 0x0125D0 04:A5C0: E8        .byte $E8   ; 
- D 1 - I - 0x0125D1 04:A5C1: E8        .byte $E8   ; 
- D 1 - I - 0x0125D2 04:A5C2: F0        .byte $F0   ; 
- D 1 - I - 0x0125D3 04:A5C3: F0        .byte $F0   ; 
- D 1 - I - 0x0125D4 04:A5C4: F0        .byte $F0   ; 
off_A5C5_03:
- D 1 - I - 0x0125D5 04:A5C5: F0        .byte $F0   ; 
off_A5C6_03:
- D 1 - I - 0x0125D6 04:A5C6: F8        .byte $F8   ; 
- D 1 - I - 0x0125D7 04:A5C7: F0        .byte $F0   ; 
off_A5C8_03:
- D 1 - I - 0x0125D8 04:A5C8: F8        .byte $F8   ; 
- D 1 - I - 0x0125D9 04:A5C9: F8        .byte $F8   ; 
- D 1 - I - 0x0125DA 04:A5CA: F8        .byte $F8   ; 
- D 1 - I - 0x0125DB 04:A5CB: F8        .byte $F8   ; 
off_A5CC_03:
- D 1 - I - 0x0125DC 04:A5CC: E2        .byte $E2   ; 
- D 1 - I - 0x0125DD 04:A5CD: E2        .byte $E2   ; 
- D 1 - I - 0x0125DE 04:A5CE: E2        .byte $E2   ; 
- D 1 - I - 0x0125DF 04:A5CF: E2        .byte $E2   ; 
- D 1 - I - 0x0125E0 04:A5D0: EA        .byte $EA   ; 
- D 1 - I - 0x0125E1 04:A5D1: EA        .byte $EA   ; 
- D 1 - I - 0x0125E2 04:A5D2: EA        .byte $EA   ; 
- D 1 - I - 0x0125E3 04:A5D3: EA        .byte $EA   ; 
- D 1 - I - 0x0125E4 04:A5D4: EA        .byte $EA   ; 
- D 1 - I - 0x0125E5 04:A5D5: F2        .byte $F2   ; 
- D 1 - I - 0x0125E6 04:A5D6: F2        .byte $F2   ; 
- D 1 - I - 0x0125E7 04:A5D7: F2        .byte $F2   ; 
- D 1 - I - 0x0125E8 04:A5D8: F2        .byte $F2   ; 
- D 1 - I - 0x0125E9 04:A5D9: F2        .byte $F2   ; 
- D 1 - I - 0x0125EA 04:A5DA: DA        .byte $DA   ; 
- D 1 - I - 0x0125EB 04:A5DB: DA        .byte $DA   ; 
- D 1 - I - 0x0125EC 04:A5DC: DA        .byte $DA   ; 
- D 1 - I - 0x0125ED 04:A5DD: DA        .byte $DA   ; 
- D 1 - I - 0x0125EE 04:A5DE: E2        .byte $E2   ; 
off_A5DF_03:
- D 1 - I - 0x0125EF 04:A5DF: FA        .byte $FA   ; 
- D 1 - I - 0x0125F0 04:A5E0: FA        .byte $FA   ; 
- D 1 - I - 0x0125F1 04:A5E1: FA        .byte $FA   ; 
- D 1 - I - 0x0125F2 04:A5E2: FA        .byte $FA   ; 
- D 1 - I - 0x0125F3 04:A5E3: FA        .byte $FA   ; 
off_A5E4_03:
- D 1 - I - 0x0125F4 04:A5E4: C6        .byte $C6   ; 
- D 1 - I - 0x0125F5 04:A5E5: C6        .byte $C6   ; 
- D 1 - I - 0x0125F6 04:A5E6: CE        .byte $CE   ; 
- D 1 - I - 0x0125F7 04:A5E7: CE        .byte $CE   ; 
- D 1 - I - 0x0125F8 04:A5E8: D6        .byte $D6   ; 
- D 1 - I - 0x0125F9 04:A5E9: D6        .byte $D6   ; 
- D 1 - I - 0x0125FA 04:A5EA: D6        .byte $D6   ; 
- D 1 - I - 0x0125FB 04:A5EB: DE        .byte $DE   ; 
- D 1 - I - 0x0125FC 04:A5EC: DE        .byte $DE   ; 
- D 1 - I - 0x0125FD 04:A5ED: DE        .byte $DE   ; 
- D 1 - I - 0x0125FE 04:A5EE: E0        .byte $E0   ; 
- D 1 - I - 0x0125FF 04:A5EF: E6        .byte $E6   ; 
- D 1 - I - 0x012600 04:A5F0: E6        .byte $E6   ; 
- D 1 - I - 0x012601 04:A5F1: E6        .byte $E6   ; 
- D 1 - I - 0x012602 04:A5F2: E8        .byte $E8   ; 
- D 1 - I - 0x012603 04:A5F3: CE        .byte $CE   ; 
- D 1 - I - 0x012604 04:A5F4: CE        .byte $CE   ; 
- D 1 - I - 0x012605 04:A5F5: D6        .byte $D6   ; 
- D 1 - I - 0x012606 04:A5F6: D6        .byte $D6   ; 
- D 1 - I - 0x012607 04:A5F7: C6        .byte $C6   ; 
- D 1 - I - 0x012608 04:A5F8: D7        .byte $D7   ; 
off_A5F9_03:
- D 1 - I - 0x012609 04:A5F9: E8        .byte $E8   ; 
- D 1 - I - 0x01260A 04:A5FA: E8        .byte $E8   ; 
- D 1 - I - 0x01260B 04:A5FB: F0        .byte $F0   ; 
- D 1 - I - 0x01260C 04:A5FC: F0        .byte $F0   ; 
- D 1 - I - 0x01260D 04:A5FD: E0        .byte $E0   ; 
off_A5FE_03:
off_A5FE_04:
- D 1 - I - 0x01260E 04:A5FE: E0        .byte $E0   ; 
- D 1 - I - 0x01260F 04:A5FF: E0        .byte $E0   ; 
- D 1 - I - 0x012610 04:A600: E8        .byte $E8   ; 
- D 1 - I - 0x012611 04:A601: E8        .byte $E8   ; 
off_A602_03:
- D 1 - I - 0x012612 04:A602: F0        .byte $F0   ; 
- D 1 - I - 0x012613 04:A603: F0        .byte $F0   ; 
- D 1 - I - 0x012614 04:A604: F8        .byte $F8   ; 
- D 1 - I - 0x012615 04:A605: F8        .byte $F8   ; 
- D 1 - I - 0x012616 04:A606: D8        .byte $D8   ; 
- D 1 - I - 0x012617 04:A607: D8        .byte $D8   ; 
- D 1 - I - 0x012618 04:A608: D8        .byte $D8   ; 
- D 1 - I - 0x012619 04:A609: E0        .byte $E0   ; 
off_A60A_03:
- D 1 - I - 0x01261A 04:A60A: E0        .byte $E0   ; 
- D 1 - I - 0x01261B 04:A60B: D8        .byte $D8   ; 
- D 1 - I - 0x01261C 04:A60C: D8        .byte $D8   ; 
- D 1 - I - 0x01261D 04:A60D: D8        .byte $D8   ; 
- D 1 - I - 0x01261E 04:A60E: E8        .byte $E8   ; 
- D 1 - I - 0x01261F 04:A60F: E0        .byte $E0   ; 
- D 1 - I - 0x012620 04:A610: E0        .byte $E0   ; 
- D 1 - I - 0x012621 04:A611: E0        .byte $E0   ; 
off_A612_03:
- D 1 - I - 0x012622 04:A612: F8        .byte $F8   ; 
- D 1 - I - 0x012623 04:A613: F8        .byte $F8   ; 
- D 1 - I - 0x012624 04:A614: F0        .byte $F0   ; 
- D 1 - I - 0x012625 04:A615: E8        .byte $E8   ; 
- D 1 - I - 0x012626 04:A616: E8        .byte $E8   ; 
- D 1 - I - 0x012627 04:A617: E8        .byte $E8   ; 
- D 1 - I - 0x012628 04:A618: F0        .byte $F0   ; 
- D 1 - I - 0x012629 04:A619: F0        .byte $F0   ; 
- D 1 - I - 0x01262A 04:A61A: F0        .byte $F0   ; 
- D 1 - I - 0x01262B 04:A61B: D9        .byte $D9   ; 
off_A61C_03:
- D 1 - I - 0x01262C 04:A61C: B8        .byte $B8   ; 
- D 1 - I - 0x01262D 04:A61D: B8        .byte $B8   ; 
- D 1 - I - 0x01262E 04:A61E: C0        .byte $C0   ; 
- D 1 - I - 0x01262F 04:A61F: C0        .byte $C0   ; 
- D 1 - I - 0x012630 04:A620: C8        .byte $C8   ; 
- D 1 - I - 0x012631 04:A621: C8        .byte $C8   ; 
- D 1 - I - 0x012632 04:A622: D0        .byte $D0   ; 
- D 1 - I - 0x012633 04:A623: D0        .byte $D0   ; 
- D 1 - I - 0x012634 04:A624: B8        .byte $B8   ; 
- D 1 - I - 0x012635 04:A625: C0        .byte $C0   ; 
- D 1 - I - 0x012636 04:A626: C8        .byte $C8   ; 
- D 1 - I - 0x012637 04:A627: D0        .byte $D0   ; 
- D 1 - I - 0x012638 04:A628: B8        .byte $B8   ; 
- D 1 - I - 0x012639 04:A629: C0        .byte $C0   ; 
- D 1 - I - 0x01263A 04:A62A: C8        .byte $C8   ; 
- D 1 - I - 0x01263B 04:A62B: D0        .byte $D0   ; 
- D 1 - I - 0x01263C 04:A62C: D8        .byte $D8   ; 
- D 1 - I - 0x01263D 04:A62D: D8        .byte $D8   ; 
off_A62E_03:
- D 1 - I - 0x01263E 04:A62E: D0        .byte $D0   ; 
- D 1 - I - 0x01263F 04:A62F: D0        .byte $D0   ; 
- D 1 - I - 0x012640 04:A630: D0        .byte $D0   ; 
- D 1 - I - 0x012641 04:A631: D8        .byte $D8   ; 
- D 1 - I - 0x012642 04:A632: D8        .byte $D8   ; 
- D 1 - I - 0x012643 04:A633: D8        .byte $D8   ; 
- D 1 - I - 0x012644 04:A634: C8        .byte $C8   ; 
- D 1 - I - 0x012645 04:A635: C8        .byte $C8   ; 
- D 1 - I - 0x012646 04:A636: D8        .byte $D8   ; 
- D 1 - I - 0x012647 04:A637: E0        .byte $E0   ; 
- D 1 - I - 0x012648 04:A638: D9        .byte $D9   ; 
- D 1 - I - 0x012649 04:A639: E0        .byte $E0   ; 
- D 1 - I - 0x01264A 04:A63A: E0        .byte $E0   ; 
- D 1 - I - 0x01264B 04:A63B: E0        .byte $E0   ; 
- D 1 - I - 0x01264C 04:A63C: E8        .byte $E8   ; 
- D 1 - I - 0x01264D 04:A63D: E8        .byte $E8   ; 
- D 1 - I - 0x01264E 04:A63E: E8        .byte $E8   ; 
- D 1 - I - 0x01264F 04:A63F: E8        .byte $E8   ; 
off_A640_03:
- D 1 - I - 0x012650 04:A640: E0        .byte $E0   ; 
- D 1 - I - 0x012651 04:A641: D8        .byte $D8   ; 
- D 1 - I - 0x012652 04:A642: D8        .byte $D8   ; 
- D 1 - I - 0x012653 04:A643: D8        .byte $D8   ; 
- D 1 - I - 0x012654 04:A644: E0        .byte $E0   ; 
- D 1 - I - 0x012655 04:A645: E8        .byte $E8   ; 
- D 1 - I - 0x012656 04:A646: E0        .byte $E0   ; 
- D 1 - I - 0x012657 04:A647: E0        .byte $E0   ; 
- D 1 - I - 0x012658 04:A648: F8        .byte $F8   ; 
- D 1 - I - 0x012659 04:A649: F8        .byte $F8   ; 
- D 1 - I - 0x01265A 04:A64A: F0        .byte $F0   ; 
- D 1 - I - 0x01265B 04:A64B: E8        .byte $E8   ; 
- D 1 - I - 0x01265C 04:A64C: E8        .byte $E8   ; 
- D 1 - I - 0x01265D 04:A64D: E8        .byte $E8   ; 
- D 1 - I - 0x01265E 04:A64E: F0        .byte $F0   ; 
- D 1 - I - 0x01265F 04:A64F: F0        .byte $F0   ; 
- D 1 - I - 0x012660 04:A650: F0        .byte $F0   ; 
- D 1 - I - 0x012661 04:A651: D1        .byte $D1   ; 
off_A652_03:
- D 1 - I - 0x012662 04:A652: D8        .byte $D8   ; 
- D 1 - I - 0x012663 04:A653: D8        .byte $D8   ; 
- D 1 - I - 0x012664 04:A654: D6        .byte $D6   ; 
- D 1 - I - 0x012665 04:A655: E0        .byte $E0   ; 
- D 1 - I - 0x012666 04:A656: E0        .byte $E0   ; 
- D 1 - I - 0x012667 04:A657: E0        .byte $E0   ; 
- D 1 - I - 0x012668 04:A658: E0        .byte $E0   ; 
- D 1 - I - 0x012669 04:A659: E8        .byte $E8   ; 
- D 1 - I - 0x01266A 04:A65A: F0        .byte $F0   ; 
- D 1 - I - 0x01266B 04:A65B: F0        .byte $F0   ; 
off_A65C_03:
- D 1 - I - 0x01266C 04:A65C: F0        .byte $F0   ; 
- D 1 - I - 0x01266D 04:A65D: F0        .byte $F0   ; 
- D 1 - I - 0x01266E 04:A65E: F8        .byte $F8   ; 
- D 1 - I - 0x01266F 04:A65F: F8        .byte $F8   ; 
- D 1 - I - 0x012670 04:A660: E8        .byte $E8   ; 
- D 1 - I - 0x012671 04:A661: E8        .byte $E8   ; 
- D 1 - I - 0x012672 04:A662: E8        .byte $E8   ; 
- D 1 - I - 0x012673 04:A663: F8        .byte $F8   ; 
off_A664_03:
- D 1 - I - 0x012674 04:A664: E0        .byte $E0   ; 
- D 1 - I - 0x012675 04:A665: E0        .byte $E0   ; 
- D 1 - I - 0x012676 04:A666: E0        .byte $E0   ; 
- D 1 - I - 0x012677 04:A667: E0        .byte $E0   ; 
- D 1 - I - 0x012678 04:A668: E8        .byte $E8   ; 
- D 1 - I - 0x012679 04:A669: E8        .byte $E8   ; 
- D 1 - I - 0x01267A 04:A66A: E8        .byte $E8   ; 
- D 1 - I - 0x01267B 04:A66B: E8        .byte $E8   ; 
- D 1 - I - 0x01267C 04:A66C: F0        .byte $F0   ; 
- D 1 - I - 0x01267D 04:A66D: F0        .byte $F0   ; 
- D 1 - I - 0x01267E 04:A66E: F0        .byte $F0   ; 
- D 1 - I - 0x01267F 04:A66F: F0        .byte $F0   ; 
- D 1 - I - 0x012680 04:A670: D8        .byte $D8   ; 
- D 1 - I - 0x012681 04:A671: D8        .byte $D8   ; 
- D 1 - I - 0x012682 04:A672: F8        .byte $F8   ; 
- D 1 - I - 0x012683 04:A673: F8        .byte $F8   ; 
- D 1 - I - 0x012684 04:A674: D8        .byte $D8   ; 
off_A675_03:
- D 1 - I - 0x012685 04:A675: E8        .byte $E8   ; 
- D 1 - I - 0x012686 04:A676: F0        .byte $F0   ; 
- D 1 - I - 0x012687 04:A677: F0        .byte $F0   ; 
- D 1 - I - 0x012688 04:A678: E0        .byte $E0   ; 
- D 1 - I - 0x012689 04:A679: E0        .byte $E0   ; 
- D 1 - I - 0x01268A 04:A67A: E8        .byte $E8   ; 
- D 1 - I - 0x01268B 04:A67B: E8        .byte $E8   ; 
- D 1 - I - 0x01268C 04:A67C: E0        .byte $E0   ; 
- D 1 - I - 0x01268D 04:A67D: E8        .byte $E8   ; 
- D 1 - I - 0x01268E 04:A67E: F0        .byte $F0   ; 
- D 1 - I - 0x01268F 04:A67F: E0        .byte $E0   ; 
- D 1 - I - 0x012690 04:A680: F0        .byte $F0   ; 
- D 1 - I - 0x012691 04:A681: F8        .byte $F8   ; 
- D 1 - I - 0x012692 04:A682: F8        .byte $F8   ; 
- D 1 - I - 0x012693 04:A683: D8        .byte $D8   ; 
off_A684_03:
- D 1 - I - 0x012694 04:A684: D8        .byte $D8   ; 
- D 1 - I - 0x012695 04:A685: D8        .byte $D8   ; 
- D 1 - I - 0x012696 04:A686: E0        .byte $E0   ; 
- D 1 - I - 0x012697 04:A687: E0        .byte $E0   ; 
off_A688_03:
- D 1 - I - 0x012698 04:A688: E0        .byte $E0   ; 
- D 1 - I - 0x012699 04:A689: E0        .byte $E0   ; 
off_A68A_03:
- D 1 - I - 0x01269A 04:A68A: E8        .byte $E8   ; 
- D 1 - I - 0x01269B 04:A68B: E8        .byte $E8   ; 
- D 1 - I - 0x01269C 04:A68C: E8        .byte $E8   ; 
- D 1 - I - 0x01269D 04:A68D: F0        .byte $F0   ; 
- D 1 - I - 0x01269E 04:A68E: F0        .byte $F0   ; 
- D 1 - I - 0x01269F 04:A68F: F0        .byte $F0   ; 
- D 1 - I - 0x0126A0 04:A690: F8        .byte $F8   ; 
- D 1 - I - 0x0126A1 04:A691: F8        .byte $F8   ; 
- D 1 - I - 0x0126A2 04:A692: F4        .byte $F4   ; 
- D 1 - I - 0x0126A3 04:A693: D7        .byte $D7   ; 
off_A694_03:
- D 1 - I - 0x0126A4 04:A694: E8        .byte $E8   ; 
- D 1 - I - 0x0126A5 04:A695: E8        .byte $E8   ; 
- D 1 - I - 0x0126A6 04:A696: F0        .byte $F0   ; 
- D 1 - I - 0x0126A7 04:A697: F0        .byte $F0   ; 
- D 1 - I - 0x0126A8 04:A698: F8        .byte $F8   ; 
- D 1 - I - 0x0126A9 04:A699: F8        .byte $F8   ; 
- D 1 - I - 0x0126AA 04:A69A: E0        .byte $E0   ; 
- D 1 - I - 0x0126AB 04:A69B: E0        .byte $E0   ; 
off_A69C_03:
- D 1 - I - 0x0126AC 04:A69C: E7        .byte $E7   ; 
- D 1 - I - 0x0126AD 04:A69D: E7        .byte $E7   ; 
off_A69E_03:
- D 1 - I - 0x0126AE 04:A69E: EF        .byte $EF   ; 
- D 1 - I - 0x0126AF 04:A69F: EF        .byte $EF   ; 
- D 1 - I - 0x0126B0 04:A6A0: F7        .byte $F7   ; 
- D 1 - I - 0x0126B1 04:A6A1: F7        .byte $F7   ; 
- D 1 - I - 0x0126B2 04:A6A2: DF        .byte $DF   ; 
- D 1 - I - 0x0126B3 04:A6A3: DF        .byte $DF   ; 
off_A6A4_03:
- D 1 - I - 0x0126B4 04:A6A4: E0        .byte $E0   ; 
- D 1 - I - 0x0126B5 04:A6A5: E0        .byte $E0   ; 
- D 1 - I - 0x0126B6 04:A6A6: E0        .byte $E0   ; 
- D 1 - I - 0x0126B7 04:A6A7: E8        .byte $E8   ; 
- D 1 - I - 0x0126B8 04:A6A8: E8        .byte $E8   ; 
- D 1 - I - 0x0126B9 04:A6A9: E8        .byte $E8   ; 
- D 1 - I - 0x0126BA 04:A6AA: E0        .byte $E0   ; 
- D 1 - I - 0x0126BB 04:A6AB: E8        .byte $E8   ; 
- D 1 - I - 0x0126BC 04:A6AC: F0        .byte $F0   ; 
- D 1 - I - 0x0126BD 04:A6AD: F0        .byte $F0   ; 
- D 1 - I - 0x0126BE 04:A6AE: F8        .byte $F8   ; 
- D 1 - I - 0x0126BF 04:A6AF: F8        .byte $F8   ; 
off_A6B0_03:
- D 1 - I - 0x0126C0 04:A6B0: F8        .byte $F8   ; 
- D 1 - I - 0x0126C1 04:A6B1: F8        .byte $F8   ; 
- D 1 - I - 0x0126C2 04:A6B2: F0        .byte $F0   ; 
- D 1 - I - 0x0126C3 04:A6B3: F0        .byte $F0   ; 
off_A6B4_03:
- D 1 - I - 0x0126C4 04:A6B4: DF        .byte $DF   ; 
- D 1 - I - 0x0126C5 04:A6B5: DF        .byte $DF   ; 
- D 1 - I - 0x0126C6 04:A6B6: DF        .byte $DF   ; 
- D 1 - I - 0x0126C7 04:A6B7: DF        .byte $DF   ; 
- D 1 - I - 0x0126C8 04:A6B8: E7        .byte $E7   ; 
- D 1 - I - 0x0126C9 04:A6B9: E7        .byte $E7   ; 
- D 1 - I - 0x0126CA 04:A6BA: E7        .byte $E7   ; 
- D 1 - I - 0x0126CB 04:A6BB: E7        .byte $E7   ; 
- D 1 - I - 0x0126CC 04:A6BC: EF        .byte $EF   ; 
- D 1 - I - 0x0126CD 04:A6BD: EF        .byte $EF   ; 
- D 1 - I - 0x0126CE 04:A6BE: EF        .byte $EF   ; 
- D 1 - I - 0x0126CF 04:A6BF: EF        .byte $EF   ; 
- D 1 - I - 0x0126D0 04:A6C0: F7        .byte $F7   ; 
- D 1 - I - 0x0126D1 04:A6C1: F7        .byte $F7   ; 
- D 1 - I - 0x0126D2 04:A6C2: F7        .byte $F7   ; 
- D 1 - I - 0x0126D3 04:A6C3: F7        .byte $F7   ; 
off_A6C4_03:
- D 1 - I - 0x0126D4 04:A6C4: F0        .byte $F0   ; 
- D 1 - I - 0x0126D5 04:A6C5: F8        .byte $F8   ; 
- D 1 - I - 0x0126D6 04:A6C6: F8        .byte $F8   ; 
- D 1 - I - 0x0126D7 04:A6C7: EF        .byte $EF   ; 
- D 1 - I - 0x0126D8 04:A6C8: F7        .byte $F7   ; 
- D 1 - I - 0x0126D9 04:A6C9: F7        .byte $F7   ; 
- D 1 - I - 0x0126DA 04:A6CA: E8        .byte $E8   ; 
- D 1 - I - 0x0126DB 04:A6CB: F0        .byte $F0   ; 
- D 1 - I - 0x0126DC 04:A6CC: E8        .byte $E8   ; 
- D 1 - I - 0x0126DD 04:A6CD: E7        .byte $E7   ; 
- D 1 - I - 0x0126DE 04:A6CE: E7        .byte $E7   ; 
- D 1 - I - 0x0126DF 04:A6CF: EF        .byte $EF   ; 
- D 1 - I - 0x0126E0 04:A6D0: E0        .byte $E0   ; 
- D 1 - I - 0x0126E1 04:A6D1: E0        .byte $E0   ; 
- D 1 - I - 0x0126E2 04:A6D2: DF        .byte $DF   ; 
- D 1 - I - 0x0126E3 04:A6D3: DF        .byte $DF   ; 
off_A6D4_03:
- D 1 - I - 0x0126E4 04:A6D4: D8        .byte $D8   ; 
- D 1 - I - 0x0126E5 04:A6D5: E0        .byte $E0   ; 
- D 1 - I - 0x0126E6 04:A6D6: D8        .byte $D8   ; 
- D 1 - I - 0x0126E7 04:A6D7: E0        .byte $E0   ; 
- D 1 - I - 0x0126E8 04:A6D8: E8        .byte $E8   ; 
- D 1 - I - 0x0126E9 04:A6D9: F0        .byte $F0   ; 
off_A6DA_03:
- D 1 - I - 0x0126EA 04:A6DA: F8        .byte $F8   ; 
- D 1 - I - 0x0126EB 04:A6DB: F0        .byte $F0   ; 
- D 1 - I - 0x0126EC 04:A6DC: F8        .byte $F8   ; 
- D 1 - I - 0x0126ED 04:A6DD: F0        .byte $F0   ; 
- D 1 - I - 0x0126EE 04:A6DE: E8        .byte $E8   ; 
- D 1 - I - 0x0126EF 04:A6DF: E8        .byte $E8   ; 
- D 1 - I - 0x0126F0 04:A6E0: E0        .byte $E0   ; 
- D 1 - I - 0x0126F1 04:A6E1: E0        .byte $E0   ; 
- D 1 - I - 0x0126F2 04:A6E2: F4        .byte $F4   ; 
- D 1 - I - 0x0126F3 04:A6E3: D7        .byte $D7   ; 
off_A6E4_03:
- D 1 - I - 0x0126F4 04:A6E4: E0        .byte $E0   ; 
- D 1 - I - 0x0126F5 04:A6E5: E0        .byte $E0   ; 
- D 1 - I - 0x0126F6 04:A6E6: E0        .byte $E0   ; 
- D 1 - I - 0x0126F7 04:A6E7: E0        .byte $E0   ; 
- D 1 - I - 0x0126F8 04:A6E8: E8        .byte $E8   ; 
- D 1 - I - 0x0126F9 04:A6E9: E8        .byte $E8   ; 
- D 1 - I - 0x0126FA 04:A6EA: E8        .byte $E8   ; 
- D 1 - I - 0x0126FB 04:A6EB: E8        .byte $E8   ; 
- D 1 - I - 0x0126FC 04:A6EC: E8        .byte $E8   ; 
- D 1 - I - 0x0126FD 04:A6ED: F0        .byte $F0   ; 
- D 1 - I - 0x0126FE 04:A6EE: F0        .byte $F0   ; 
- D 1 - I - 0x0126FF 04:A6EF: F0        .byte $F0   ; 
- D 1 - I - 0x012700 04:A6F0: F0        .byte $F0   ; 
off_A6F1_03:
- D 1 - I - 0x012701 04:A6F1: F0        .byte $F0   ; 
- D 1 - I - 0x012702 04:A6F2: F8        .byte $F8   ; 
- D 1 - I - 0x012703 04:A6F3: F8        .byte $F8   ; 
- D 1 - I - 0x012704 04:A6F4: E0        .byte $E0   ; 
- D 1 - I - 0x012705 04:A6F5: E8        .byte $E8   ; 
- D 1 - I - 0x012706 04:A6F6: F0        .byte $F0   ; 
- D 1 - I - 0x012707 04:A6F7: F0        .byte $F0   ; 
- D 1 - I - 0x012708 04:A6F8: E8        .byte $E8   ; 
- D 1 - I - 0x012709 04:A6F9: F0        .byte $F0   ; 
- D 1 - I - 0x01270A 04:A6FA: E0        .byte $E0   ; 
- D 1 - I - 0x01270B 04:A6FB: E8        .byte $E8   ; 
- D 1 - I - 0x01270C 04:A6FC: E8        .byte $E8   ; 
- D 1 - I - 0x01270D 04:A6FD: D8        .byte $D8   ; 
off_A6FE_03:
- D 1 - I - 0x01270E 04:A6FE: E0        .byte $E0   ; 
- D 1 - I - 0x01270F 04:A6FF: E0        .byte $E0   ; 
- D 1 - I - 0x012710 04:A700: E0        .byte $E0   ; 
- D 1 - I - 0x012711 04:A701: E8        .byte $E8   ; 
- D 1 - I - 0x012712 04:A702: E8        .byte $E8   ; 
- D 1 - I - 0x012713 04:A703: E8        .byte $E8   ; 
- D 1 - I - 0x012714 04:A704: F0        .byte $F0   ; 
- D 1 - I - 0x012715 04:A705: F8        .byte $F8   ; 
- D 1 - I - 0x012716 04:A706: EA        .byte $EA   ; 
- D 1 - I - 0x012717 04:A707: F2        .byte $F2   ; 
- D 1 - I - 0x012718 04:A708: F0        .byte $F0   ; 
- D 1 - I - 0x012719 04:A709: F8        .byte $F8   ; 
- D 1 - I - 0x01271A 04:A70A: F8        .byte $F8   ; 
- D 1 - I - 0x01271B 04:A70B: D8        .byte $D8   ; 
- D 1 - I - 0x01271C 04:A70C: D7        .byte $D7   ; 
off_A70D_03:
- D 1 - I - 0x01271D 04:A70D: DF        .byte $DF   ; 
- D 1 - I - 0x01271E 04:A70E: DF        .byte $DF   ; 
- D 1 - I - 0x01271F 04:A70F: E7        .byte $E7   ; 
- D 1 - I - 0x012720 04:A710: E7        .byte $E7   ; 
- D 1 - I - 0x012721 04:A711: EF        .byte $EF   ; 
- D 1 - I - 0x012722 04:A712: F0        .byte $F0   ; 
- D 1 - I - 0x012723 04:A713: F0        .byte $F0   ; 
- D 1 - I - 0x012724 04:A714: EF        .byte $EF   ; 
- D 1 - I - 0x012725 04:A715: F8        .byte $F8   ; 
- D 1 - I - 0x012726 04:A716: F8        .byte $F8   ; 
- D 1 - I - 0x012727 04:A717: E0        .byte $E0   ; 
- D 1 - I - 0x012728 04:A718: E8        .byte $E8   ; 
off_A719_03:
- D 1 - I - 0x012729 04:A719: E0        .byte $E0   ; 
- D 1 - I - 0x01272A 04:A71A: E8        .byte $E8   ; 
- D 1 - I - 0x01272B 04:A71B: E8        .byte $E8   ; 
- D 1 - I - 0x01272C 04:A71C: E8        .byte $E8   ; 
- D 1 - I - 0x01272D 04:A71D: F0        .byte $F0   ; 
- D 1 - I - 0x01272E 04:A71E: F0        .byte $F0   ; 
- D 1 - I - 0x01272F 04:A71F: F8        .byte $F8   ; 
- D 1 - I - 0x012730 04:A720: F8        .byte $F8   ; 
- D 1 - I - 0x012731 04:A721: E0        .byte $E0   ; 
- D 1 - I - 0x012732 04:A722: E0        .byte $E0   ; 
- D 1 - I - 0x012733 04:A723: E0        .byte $E0   ; 
- D 1 - I - 0x012734 04:A724: E8        .byte $E8   ; 
- D 1 - I - 0x012735 04:A725: D6        .byte $D6   ; 
- D 1 - I - 0x012736 04:A726: F8        .byte $F8   ; 
off_A727_03:
- D 1 - I - 0x012737 04:A727: F0        .byte $F0   ; 
off_A728_03:
- D 1 - I - 0x012738 04:A728: F0        .byte $F0   ; 
off_A729_03:
- D 1 - I - 0x012739 04:A729: F0        .byte $F0   ; 
- D 1 - I - 0x01273A 04:A72A: F0        .byte $F0   ; 
- D 1 - I - 0x01273B 04:A72B: F0        .byte $F0   ; 
- D 1 - I - 0x01273C 04:A72C: F8        .byte $F8   ; 
- D 1 - I - 0x01273D 04:A72D: F8        .byte $F8   ; 
- D 1 - I - 0x01273E 04:A72E: F8        .byte $F8   ; 
- D 1 - I - 0x01273F 04:A72F: F8        .byte $F8   ; 
- D 1 - I - 0x012740 04:A730: E8        .byte $E8   ; 
- D 1 - I - 0x012741 04:A731: E8        .byte $E8   ; 
- D 1 - I - 0x012742 04:A732: E8        .byte $E8   ; 
off_A733_03:
- D 1 - I - 0x012743 04:A733: E0        .byte $E0   ; 
- D 1 - I - 0x012744 04:A734: E0        .byte $E0   ; 
- D 1 - I - 0x012745 04:A735: E8        .byte $E8   ; 
- D 1 - I - 0x012746 04:A736: E8        .byte $E8   ; 
- D 1 - I - 0x012747 04:A737: E8        .byte $E8   ; 
- D 1 - I - 0x012748 04:A738: F0        .byte $F0   ; 
- D 1 - I - 0x012749 04:A739: F0        .byte $F0   ; 
- D 1 - I - 0x01274A 04:A73A: F0        .byte $F0   ; 
- D 1 - I - 0x01274B 04:A73B: F0        .byte $F0   ; 
- D 1 - I - 0x01274C 04:A73C: F0        .byte $F0   ; 
- D 1 - I - 0x01274D 04:A73D: F8        .byte $F8   ; 
- D 1 - I - 0x01274E 04:A73E: F8        .byte $F8   ; 
- D 1 - I - 0x01274F 04:A73F: F8        .byte $F8   ; 
- D 1 - I - 0x012750 04:A740: F8        .byte $F8   ; 
off_A741_03:
- D 1 - I - 0x012751 04:A741: D7        .byte $D7   ; 
- D 1 - I - 0x012752 04:A742: D7        .byte $D7   ; 
- D 1 - I - 0x012753 04:A743: E0        .byte $E0   ; 
- D 1 - I - 0x012754 04:A744: E0        .byte $E0   ; 
- D 1 - I - 0x012755 04:A745: E8        .byte $E8   ; 
off_A746_03:
- D 1 - I - 0x012756 04:A746: E8        .byte $E8   ; 
- D 1 - I - 0x012757 04:A747: E8        .byte $E8   ; 
- D 1 - I - 0x012758 04:A748: E8        .byte $E8   ; 
- D 1 - I - 0x012759 04:A749: F0        .byte $F0   ; 
- D 1 - I - 0x01275A 04:A74A: F0        .byte $F0   ; 
- D 1 - I - 0x01275B 04:A74B: F0        .byte $F0   ; 
- D 1 - I - 0x01275C 04:A74C: F8        .byte $F8   ; 
- D 1 - I - 0x01275D 04:A74D: F8        .byte $F8   ; 
- D 1 - I - 0x01275E 04:A74E: F8        .byte $F8   ; 
off_A74F_03:
- D 1 - I - 0x01275F 04:A74F: F0        .byte $F0   ; 
- D 1 - I - 0x012760 04:A750: E8        .byte $E8   ; 
- D 1 - I - 0x012761 04:A751: E8        .byte $E8   ; 
- D 1 - I - 0x012762 04:A752: E0        .byte $E0   ; 
- D 1 - I - 0x012763 04:A753: E0        .byte $E0   ; 
- D 1 - I - 0x012764 04:A754: E7        .byte $E7   ; 
- D 1 - I - 0x012765 04:A755: EF        .byte $EF   ; 
- D 1 - I - 0x012766 04:A756: F8        .byte $F8   ; 
- D 1 - I - 0x012767 04:A757: DF        .byte $DF   ; 
- D 1 - I - 0x012768 04:A758: E7        .byte $E7   ; 
- D 1 - I - 0x012769 04:A759: F8        .byte $F8   ; 
- D 1 - I - 0x01276A 04:A75A: F8        .byte $F8   ; 
- D 1 - I - 0x01276B 04:A75B: F0        .byte $F0   ; 
- D 1 - I - 0x01276C 04:A75C: F0        .byte $F0   ; 
off_A75D_03:
- D 1 - I - 0x01276D 04:A75D: D5        .byte $D5   ; 
- D 1 - I - 0x01276E 04:A75E: D4        .byte $D4   ; 
- D 1 - I - 0x01276F 04:A75F: E0        .byte $E0   ; 
- D 1 - I - 0x012770 04:A760: E0        .byte $E0   ; 
- D 1 - I - 0x012771 04:A761: E8        .byte $E8   ; 
- D 1 - I - 0x012772 04:A762: E8        .byte $E8   ; 
- D 1 - I - 0x012773 04:A763: E8        .byte $E8   ; 
- D 1 - I - 0x012774 04:A764: E8        .byte $E8   ; 
- D 1 - I - 0x012775 04:A765: F0        .byte $F0   ; 
- D 1 - I - 0x012776 04:A766: F0        .byte $F0   ; 
- D 1 - I - 0x012777 04:A767: F0        .byte $F0   ; 
- D 1 - I - 0x012778 04:A768: F8        .byte $F8   ; 
- D 1 - I - 0x012779 04:A769: F8        .byte $F8   ; 
- D 1 - I - 0x01277A 04:A76A: F8        .byte $F8   ; 
off_A76B_03:
- D 1 - I - 0x01277B 04:A76B: DE        .byte $DE   ; 
- D 1 - I - 0x01277C 04:A76C: DF        .byte $DF   ; 
- D 1 - I - 0x01277D 04:A76D: E6        .byte $E6   ; 
- D 1 - I - 0x01277E 04:A76E: E7        .byte $E7   ; 
- D 1 - I - 0x01277F 04:A76F: E6        .byte $E6   ; 
- D 1 - I - 0x012780 04:A770: E6        .byte $E6   ; 
off_A771_03:
- D 1 - I - 0x012781 04:A771: EE        .byte $EE   ; 
- D 1 - I - 0x012782 04:A772: EE        .byte $EE   ; 
- D 1 - I - 0x012783 04:A773: EE        .byte $EE   ; 
- D 1 - I - 0x012784 04:A774: F6        .byte $F6   ; 
- D 1 - I - 0x012785 04:A775: F6        .byte $F6   ; 
- D 1 - I - 0x012786 04:A776: F6        .byte $F6   ; 
- D 1 - I - 0x012787 04:A777: DE        .byte $DE   ; 
- D 1 - I - 0x012788 04:A778: DE        .byte $DE   ; 
off_A779_03:
- D 1 - I - 0x012789 04:A779: DF        .byte $DF   ; 
- D 1 - I - 0x01278A 04:A77A: E0        .byte $E0   ; 
- D 1 - I - 0x01278B 04:A77B: E7        .byte $E7   ; 
- D 1 - I - 0x01278C 04:A77C: E8        .byte $E8   ; 
- D 1 - I - 0x01278D 04:A77D: EF        .byte $EF   ; 
- D 1 - I - 0x01278E 04:A77E: F0        .byte $F0   ; 
- D 1 - I - 0x01278F 04:A77F: F8        .byte $F8   ; 
- D 1 - I - 0x012790 04:A780: E0        .byte $E0   ; 
- D 1 - I - 0x012791 04:A781: E8        .byte $E8   ; 
- D 1 - I - 0x012792 04:A782: F0        .byte $F0   ; 
- D 1 - I - 0x012793 04:A783: F8        .byte $F8   ; 
- D 1 - I - 0x012794 04:A784: DF        .byte $DF   ; 
- D 1 - I - 0x012795 04:A785: E7        .byte $E7   ; 
- D 1 - I - 0x012796 04:A786: EF        .byte $EF   ; 
off_A787_03:
- D 1 - I - 0x012797 04:A787: F8        .byte $F8   ; 
- D 1 - I - 0x012798 04:A788: F8        .byte $F8   ; 
- D 1 - I - 0x012799 04:A789: F8        .byte $F8   ; 
- D 1 - I - 0x01279A 04:A78A: E0        .byte $E0   ; 
- D 1 - I - 0x01279B 04:A78B: E0        .byte $E0   ; 
- D 1 - I - 0x01279C 04:A78C: E8        .byte $E8   ; 
- D 1 - I - 0x01279D 04:A78D: E8        .byte $E8   ; 
- D 1 - I - 0x01279E 04:A78E: E8        .byte $E8   ; 
- D 1 - I - 0x01279F 04:A78F: F0        .byte $F0   ; 
- D 1 - I - 0x0127A0 04:A790: F0        .byte $F0   ; 
- D 1 - I - 0x0127A1 04:A791: F0        .byte $F0   ; 
- D 1 - I - 0x0127A2 04:A792: F0        .byte $F0   ; 
- D 1 - I - 0x0127A3 04:A793: DF        .byte $DF   ; 
off_A794_03:
- D 1 - I - 0x0127A4 04:A794: E1        .byte $E1   ; 
- D 1 - I - 0x0127A5 04:A795: E9        .byte $E9   ; 
- D 1 - I - 0x0127A6 04:A796: E9        .byte $E9   ; 
- D 1 - I - 0x0127A7 04:A797: F1        .byte $F1   ; 
- D 1 - I - 0x0127A8 04:A798: F1        .byte $F1   ; 
off_A799_03:
- D 1 - I - 0x0127A9 04:A799: F9        .byte $F9   ; 
- D 1 - I - 0x0127AA 04:A79A: F9        .byte $F9   ; 
- D 1 - I - 0x0127AB 04:A79B: F9        .byte $F9   ; 
- D 1 - I - 0x0127AC 04:A79C: E2        .byte $E2   ; 
- D 1 - I - 0x0127AD 04:A79D: EA        .byte $EA   ; 
- D 1 - I - 0x0127AE 04:A79E: E2        .byte $E2   ; 
- D 1 - I - 0x0127AF 04:A79F: EA        .byte $EA   ; 
- D 1 - I - 0x0127B0 04:A7A0: E1        .byte $E1   ; 
off_A7A1_03:
- D 1 - I - 0x0127B1 04:A7A1: E8        .byte $E8   ; 
- D 1 - I - 0x0127B2 04:A7A2: E8        .byte $E8   ; 
- D 1 - I - 0x0127B3 04:A7A3: E8        .byte $E8   ; 
- D 1 - I - 0x0127B4 04:A7A4: F0        .byte $F0   ; 
- D 1 - I - 0x0127B5 04:A7A5: F0        .byte $F0   ; 
- D 1 - I - 0x0127B6 04:A7A6: F0        .byte $F0   ; 
- D 1 - I - 0x0127B7 04:A7A7: F8        .byte $F8   ; 
- D 1 - I - 0x0127B8 04:A7A8: F8        .byte $F8   ; 
- D 1 - I - 0x0127B9 04:A7A9: D6        .byte $D6   ; 
- D 1 - I - 0x0127BA 04:A7AA: D6        .byte $D6   ; 
- D 1 - I - 0x0127BB 04:A7AB: E0        .byte $E0   ; 
- D 1 - I - 0x0127BC 04:A7AC: E0        .byte $E0   ; 
- D 1 - I - 0x0127BD 04:A7AD: DE        .byte $DE   ; 
off_A7AE_03:
- D 1 - I - 0x0127BE 04:A7AE: E8        .byte $E8   ; 
- D 1 - I - 0x0127BF 04:A7AF: E8        .byte $E8   ; 
- D 1 - I - 0x0127C0 04:A7B0: E8        .byte $E8   ; 
- D 1 - I - 0x0127C1 04:A7B1: F0        .byte $F0   ; 
- D 1 - I - 0x0127C2 04:A7B2: F0        .byte $F0   ; 
- D 1 - I - 0x0127C3 04:A7B3: F8        .byte $F8   ; 
- D 1 - I - 0x0127C4 04:A7B4: F8        .byte $F8   ; 
- D 1 - I - 0x0127C5 04:A7B5: D7        .byte $D7   ; 
- D 1 - I - 0x0127C6 04:A7B6: D6        .byte $D6   ; 
- D 1 - I - 0x0127C7 04:A7B7: E0        .byte $E0   ; 
- D 1 - I - 0x0127C8 04:A7B8: E0        .byte $E0   ; 
- D 1 - I - 0x0127C9 04:A7B9: E0        .byte $E0   ; 
- D 1 - I - 0x0127CA 04:A7BA: E0        .byte $E0   ; 
off_A7BB_03:
- - - - - - 0x0127CB 04:A7BB: E2        .byte $E2   ; 
- - - - - - 0x0127CC 04:A7BC: EA        .byte $EA   ; 
- - - - - - 0x0127CD 04:A7BD: F0        .byte $F0   ; 
- - - - - - 0x0127CE 04:A7BE: F0        .byte $F0   ; 
- - - - - - 0x0127CF 04:A7BF: F8        .byte $F8   ; 
- - - - - - 0x0127D0 04:A7C0: F8        .byte $F8   ; 
- - - - - - 0x0127D1 04:A7C1: F8        .byte $F8   ; 
- - - - - - 0x0127D2 04:A7C2: E2        .byte $E2   ; 
- - - - - - 0x0127D3 04:A7C3: EA        .byte $EA   ; 
- - - - - - 0x0127D4 04:A7C4: E8        .byte $E8   ; 
- - - - - - 0x0127D5 04:A7C5: E8        .byte $E8   ; 
- - - - - - 0x0127D6 04:A7C6: E0        .byte $E0   ; 
- - - - - - 0x0127D7 04:A7C7: E0        .byte $E0   ; 
off_A7C8_03:
- D 1 - I - 0x0127D8 04:A7C8: E2        .byte $E2   ; 
- D 1 - I - 0x0127D9 04:A7C9: E2        .byte $E2   ; 
- D 1 - I - 0x0127DA 04:A7CA: E8        .byte $E8   ; 
- D 1 - I - 0x0127DB 04:A7CB: E8        .byte $E8   ; 
- D 1 - I - 0x0127DC 04:A7CC: F0        .byte $F0   ; 
- D 1 - I - 0x0127DD 04:A7CD: F0        .byte $F0   ; 
- D 1 - I - 0x0127DE 04:A7CE: F0        .byte $F0   ; 
- D 1 - I - 0x0127DF 04:A7CF: D9        .byte $D9   ; 
- D 1 - I - 0x0127E0 04:A7D0: F0        .byte $F0   ; 
- D 1 - I - 0x0127E1 04:A7D1: E8        .byte $E8   ; 
- D 1 - I - 0x0127E2 04:A7D2: F8        .byte $F8   ; 
- D 1 - I - 0x0127E3 04:A7D3: F8        .byte $F8   ; 
- D 1 - I - 0x0127E4 04:A7D4: F8        .byte $F8   ; 
off_A7D5_03:
- - - - - - 0x0127E5 04:A7D5: E1        .byte $E1   ; 
- - - - - - 0x0127E6 04:A7D6: E1        .byte $E1   ; 
- - - - - - 0x0127E7 04:A7D7: E9        .byte $E9   ; 
- - - - - - 0x0127E8 04:A7D8: E9        .byte $E9   ; 
- - - - - - 0x0127E9 04:A7D9: F1        .byte $F1   ; 
- - - - - - 0x0127EA 04:A7DA: F1        .byte $F1   ; 
- - - - - - 0x0127EB 04:A7DB: F9        .byte $F9   ; 
- - - - - - 0x0127EC 04:A7DC: F9        .byte $F9   ; 
- - - - - - 0x0127ED 04:A7DD: F9        .byte $F9   ; 
- - - - - - 0x0127EE 04:A7DE: E8        .byte $E8   ; 
- - - - - - 0x0127EF 04:A7DF: F0        .byte $F0   ; 
- - - - - - 0x0127F0 04:A7E0: E8        .byte $E8   ; 
- - - - - - 0x0127F1 04:A7E1: F0        .byte $F0   ; 
off_A7E2_03:
- D 1 - I - 0x0127F2 04:A7E2: E8        .byte $E8   ; 
- D 1 - I - 0x0127F3 04:A7E3: E8        .byte $E8   ; 
- D 1 - I - 0x0127F4 04:A7E4: E8        .byte $E8   ; 
- D 1 - I - 0x0127F5 04:A7E5: F0        .byte $F0   ; 
- D 1 - I - 0x0127F6 04:A7E6: F0        .byte $F0   ; 
- D 1 - I - 0x0127F7 04:A7E7: F8        .byte $F8   ; 
- D 1 - I - 0x0127F8 04:A7E8: F8        .byte $F8   ; 
- D 1 - I - 0x0127F9 04:A7E9: F8        .byte $F8   ; 
- D 1 - I - 0x0127FA 04:A7EA: E0        .byte $E0   ; 
- D 1 - I - 0x0127FB 04:A7EB: E0        .byte $E0   ; 
- D 1 - I - 0x0127FC 04:A7EC: E0        .byte $E0   ; 
- D 1 - I - 0x0127FD 04:A7ED: E0        .byte $E0   ; 
- D 1 - I - 0x0127FE 04:A7EE: F0        .byte $F0   ; 
off_A7EF_03:
- D 1 - I - 0x0127FF 04:A7EF: EF        .byte $EF   ; 
- D 1 - I - 0x012800 04:A7F0: F4        .byte $F4   ; 
- D 1 - I - 0x012801 04:A7F1: F7        .byte $F7   ; 
- D 1 - I - 0x012802 04:A7F2: EF        .byte $EF   ; 
- D 1 - I - 0x012803 04:A7F3: F4        .byte $F4   ; 
- D 1 - I - 0x012804 04:A7F4: E7        .byte $E7   ; 
- D 1 - I - 0x012805 04:A7F5: E7        .byte $E7   ; 
- D 1 - I - 0x012806 04:A7F6: DE        .byte $DE   ; 
- D 1 - I - 0x012807 04:A7F7: E6        .byte $E6   ; 
- D 1 - I - 0x012808 04:A7F8: DE        .byte $DE   ; 
- D 1 - I - 0x012809 04:A7F9: E6        .byte $E6   ; 
- D 1 - I - 0x01280A 04:A7FA: DF        .byte $DF   ; 
- D 1 - I - 0x01280B 04:A7FB: DF        .byte $DF   ; 
off_A7FC_03:
- D 1 - I - 0x01280C 04:A7FC: F8        .byte $F8   ; 
- D 1 - I - 0x01280D 04:A7FD: F8        .byte $F8   ; 
- D 1 - I - 0x01280E 04:A7FE: E8        .byte $E8   ; 
- D 1 - I - 0x01280F 04:A7FF: E8        .byte $E8   ; 
- D 1 - I - 0x012810 04:A800: E8        .byte $E8   ; 
- D 1 - I - 0x012811 04:A801: F0        .byte $F0   ; 
- D 1 - I - 0x012812 04:A802: F0        .byte $F0   ; 
- D 1 - I - 0x012813 04:A803: F0        .byte $F0   ; 
- D 1 - I - 0x012814 04:A804: D6        .byte $D6   ; 
- D 1 - I - 0x012815 04:A805: D6        .byte $D6   ; 
- D 1 - I - 0x012816 04:A806: E0        .byte $E0   ; 
- D 1 - I - 0x012817 04:A807: E0        .byte $E0   ; 
- D 1 - I - 0x012818 04:A808: DE        .byte $DE   ; 
off_A809_03:
- D 1 - I - 0x012819 04:A809: E0        .byte $E0   ; 
- D 1 - I - 0x01281A 04:A80A: E0        .byte $E0   ; 
- D 1 - I - 0x01281B 04:A80B: E0        .byte $E0   ; 
- D 1 - I - 0x01281C 04:A80C: E0        .byte $E0   ; 
- D 1 - I - 0x01281D 04:A80D: E8        .byte $E8   ; 
- D 1 - I - 0x01281E 04:A80E: E8        .byte $E8   ; 
- D 1 - I - 0x01281F 04:A80F: E8        .byte $E8   ; 
off_A810_03:
- D 1 - I - 0x012820 04:A810: F8        .byte $F8   ; 
off_A811_03:
- D 1 - I - 0x012821 04:A811: F0        .byte $F0   ; 
off_A812_03:
- D 1 - I - 0x012822 04:A812: F0        .byte $F0   ; 
- D 1 - I - 0x012823 04:A813: F8        .byte $F8   ; 
- D 1 - I - 0x012824 04:A814: F8        .byte $F8   ; 
- D 1 - I - 0x012825 04:A815: F0        .byte $F0   ; 
off_A816_03:
- D 1 - I - 0x012826 04:A816: E0        .byte $E0   ; 
- D 1 - I - 0x012827 04:A817: E0        .byte $E0   ; 
- D 1 - I - 0x012828 04:A818: E8        .byte $E8   ; 
- D 1 - I - 0x012829 04:A819: E8        .byte $E8   ; 
- D 1 - I - 0x01282A 04:A81A: F0        .byte $F0   ; 
- D 1 - I - 0x01282B 04:A81B: F8        .byte $F8   ; 
- D 1 - I - 0x01282C 04:A81C: EA        .byte $EA   ; 
- D 1 - I - 0x01282D 04:A81D: F2        .byte $F2   ; 
- D 1 - I - 0x01282E 04:A81E: E8        .byte $E8   ; 
- D 1 - I - 0x01282F 04:A81F: F0        .byte $F0   ; 
- D 1 - I - 0x012830 04:A820: F0        .byte $F0   ; 
- D 1 - I - 0x012831 04:A821: F8        .byte $F8   ; 
- D 1 - I - 0x012832 04:A822: F8        .byte $F8   ; 
off_A823_03:
- D 1 - I - 0x012833 04:A823: E0        .byte $E0   ; 
- D 1 - I - 0x012834 04:A824: E0        .byte $E0   ; 
- D 1 - I - 0x012835 04:A825: E8        .byte $E8   ; 
- D 1 - I - 0x012836 04:A826: F0        .byte $F0   ; 
- D 1 - I - 0x012837 04:A827: F0        .byte $F0   ; 
- D 1 - I - 0x012838 04:A828: F8        .byte $F8   ; 
- D 1 - I - 0x012839 04:A829: E8        .byte $E8   ; 
- D 1 - I - 0x01283A 04:A82A: E8        .byte $E8   ; 
- D 1 - I - 0x01283B 04:A82B: F8        .byte $F8   ; 
- D 1 - I - 0x01283C 04:A82C: F0        .byte $F0   ; 
- D 1 - I - 0x01283D 04:A82D: F0        .byte $F0   ; 
off_A82E_03:
- D 1 - I - 0x01283E 04:A82E: F8        .byte $F8   ; 
- D 1 - I - 0x01283F 04:A82F: F8        .byte $F8   ; 
- D 1 - I - 0x012840 04:A830: EA        .byte $EA   ; 
- D 1 - I - 0x012841 04:A831: EB        .byte $EB   ; 
- D 1 - I - 0x012842 04:A832: F2        .byte $F2   ; 
- D 1 - I - 0x012843 04:A833: F3        .byte $F3   ; 
- D 1 - I - 0x012844 04:A834: E0        .byte $E0   ; 
- D 1 - I - 0x012845 04:A835: E0        .byte $E0   ; 
- D 1 - I - 0x012846 04:A836: E8        .byte $E8   ; 
- D 1 - I - 0x012847 04:A837: E8        .byte $E8   ; 
off_A838_03:
- D 1 - I - 0x012848 04:A838: F0        .byte $F0   ; 
- D 1 - I - 0x012849 04:A839: F0        .byte $F0   ; 
- D 1 - I - 0x01284A 04:A83A: F8        .byte $F8   ; 
- D 1 - I - 0x01284B 04:A83B: F8        .byte $F8   ; 
- D 1 - I - 0x01284C 04:A83C: E8        .byte $E8   ; 
- D 1 - I - 0x01284D 04:A83D: E8        .byte $E8   ; 
- D 1 - I - 0x01284E 04:A83E: E8        .byte $E8   ; 
- D 1 - I - 0x01284F 04:A83F: F0        .byte $F0   ; 
- D 1 - I - 0x012850 04:A840: E0        .byte $E0   ; 
- D 1 - I - 0x012851 04:A841: E8        .byte $E8   ; 
- D 1 - I - 0x012852 04:A842: E0        .byte $E0   ; 
- D 1 - I - 0x012853 04:A843: E0        .byte $E0   ; 
off_A844_03:
- D 1 - I - 0x012854 04:A844: E8        .byte $E8   ; 
- D 1 - I - 0x012855 04:A845: F8        .byte $F8   ; 
- D 1 - I - 0x012856 04:A846: F8        .byte $F8   ; 
- D 1 - I - 0x012857 04:A847: E8        .byte $E8   ; 
- D 1 - I - 0x012858 04:A848: F0        .byte $F0   ; 
- D 1 - I - 0x012859 04:A849: F0        .byte $F0   ; 
- D 1 - I - 0x01285A 04:A84A: E1        .byte $E1   ; 
- D 1 - I - 0x01285B 04:A84B: E8        .byte $E8   ; 
- D 1 - I - 0x01285C 04:A84C: E9        .byte $E9   ; 
- D 1 - I - 0x01285D 04:A84D: F0        .byte $F0   ; 
- D 1 - I - 0x01285E 04:A84E: E0        .byte $E0   ; 
- D 1 - I - 0x01285F 04:A84F: E0        .byte $E0   ; 
off_A850_03:
- D 1 - I - 0x012860 04:A850: D8        .byte $D8   ; 
- D 1 - I - 0x012861 04:A851: D8        .byte $D8   ; 
- D 1 - I - 0x012862 04:A852: E0        .byte $E0   ; 
- D 1 - I - 0x012863 04:A853: E0        .byte $E0   ; 
- D 1 - I - 0x012864 04:A854: E0        .byte $E0   ; 
- D 1 - I - 0x012865 04:A855: E8        .byte $E8   ; 
off_A856_03:
- D 1 - I - 0x012866 04:A856: E8        .byte $E8   ; 
- D 1 - I - 0x012867 04:A857: E8        .byte $E8   ; 
- D 1 - I - 0x012868 04:A858: E8        .byte $E8   ; 
- D 1 - I - 0x012869 04:A859: F0        .byte $F0   ; 
- D 1 - I - 0x01286A 04:A85A: F0        .byte $F0   ; 
- D 1 - I - 0x01286B 04:A85B: F0        .byte $F0   ; 
off_A85C_03:
- D 1 - I - 0x01286C 04:A85C: F8        .byte $F8   ; 
off_A85D_03:
- D 1 - I - 0x01286D 04:A85D: F8        .byte $F8   ; 
- D 1 - I - 0x01286E 04:A85E: F8        .byte $F8   ; 
- D 1 - I - 0x01286F 04:A85F: E0        .byte $E0   ; 
- D 1 - I - 0x012870 04:A860: E0        .byte $E0   ; 
- D 1 - I - 0x012871 04:A861: E8        .byte $E8   ; 
- D 1 - I - 0x012872 04:A862: E8        .byte $E8   ; 
- D 1 - I - 0x012873 04:A863: F0        .byte $F0   ; 
- D 1 - I - 0x012874 04:A864: F0        .byte $F0   ; 
- D 1 - I - 0x012875 04:A865: E8        .byte $E8   ; 
- D 1 - I - 0x012876 04:A866: F0        .byte $F0   ; 
- D 1 - I - 0x012877 04:A867: F0        .byte $F0   ; 
off_A868_03:
- D 1 - I - 0x012878 04:A868: E1        .byte $E1   ; 
- D 1 - I - 0x012879 04:A869: E2        .byte $E2   ; 
- D 1 - I - 0x01287A 04:A86A: E2        .byte $E2   ; 
- D 1 - I - 0x01287B 04:A86B: E2        .byte $E2   ; 
- D 1 - I - 0x01287C 04:A86C: E9        .byte $E9   ; 
- D 1 - I - 0x01287D 04:A86D: EA        .byte $EA   ; 
- D 1 - I - 0x01287E 04:A86E: EA        .byte $EA   ; 
- D 1 - I - 0x01287F 04:A86F: EA        .byte $EA   ; 
- D 1 - I - 0x012880 04:A870: F2        .byte $F2   ; 
- D 1 - I - 0x012881 04:A871: F2        .byte $F2   ; 
- D 1 - I - 0x012882 04:A872: F2        .byte $F2   ; 
- D 1 - I - 0x012883 04:A873: FA        .byte $FA   ; 
off_A874_03:
- D 1 - I - 0x012884 04:A874: F0        .byte $F0   ; 
off_A875_03:
- D 1 - I - 0x012885 04:A875: F0        .byte $F0   ; 
- D 1 - I - 0x012886 04:A876: F8        .byte $F8   ; 
- D 1 - I - 0x012887 04:A877: F8        .byte $F8   ; 
- D 1 - I - 0x012888 04:A878: E0        .byte $E0   ; 
- D 1 - I - 0x012889 04:A879: E0        .byte $E0   ; 
- D 1 - I - 0x01288A 04:A87A: E0        .byte $E0   ; 
- D 1 - I - 0x01288B 04:A87B: E8        .byte $E8   ; 
- D 1 - I - 0x01288C 04:A87C: E8        .byte $E8   ; 
- D 1 - I - 0x01288D 04:A87D: E8        .byte $E8   ; 
- D 1 - I - 0x01288E 04:A87E: F0        .byte $F0   ; 
- D 1 - I - 0x01288F 04:A87F: F8        .byte $F8   ; 
off_A880_03:
- D 1 - I - 0x012890 04:A880: E0        .byte $E0   ; 
- D 1 - I - 0x012891 04:A881: E0        .byte $E0   ; 
- D 1 - I - 0x012892 04:A882: E0        .byte $E0   ; 
- D 1 - I - 0x012893 04:A883: E8        .byte $E8   ; 
- D 1 - I - 0x012894 04:A884: E8        .byte $E8   ; 
- D 1 - I - 0x012895 04:A885: E8        .byte $E8   ; 
- D 1 - I - 0x012896 04:A886: EF        .byte $EF   ; 
- D 1 - I - 0x012897 04:A887: F0        .byte $F0   ; 
- D 1 - I - 0x012898 04:A888: F7        .byte $F7   ; 
- D 1 - I - 0x012899 04:A889: F8        .byte $F8   ; 
- D 1 - I - 0x01289A 04:A88A: F8        .byte $F8   ; 
- D 1 - I - 0x01289B 04:A88B: F0        .byte $F0   ; 
off_A88C_03:
- D 1 - I - 0x01289C 04:A88C: EE        .byte $EE   ; 
- D 1 - I - 0x01289D 04:A88D: F3        .byte $F3   ; 
- D 1 - I - 0x01289E 04:A88E: F6        .byte $F6   ; 
- D 1 - I - 0x01289F 04:A88F: F3        .byte $F3   ; 
- D 1 - I - 0x0128A0 04:A890: EE        .byte $EE   ; 
- D 1 - I - 0x0128A1 04:A891: E6        .byte $E6   ; 
- D 1 - I - 0x0128A2 04:A892: E6        .byte $E6   ; 
- D 1 - I - 0x0128A3 04:A893: E6        .byte $E6   ; 
- D 1 - I - 0x0128A4 04:A894: DE        .byte $DE   ; 
- D 1 - I - 0x0128A5 04:A895: DE        .byte $DE   ; 
- D 1 - I - 0x0128A6 04:A896: DE        .byte $DE   ; 
- D 1 - I - 0x0128A7 04:A897: DE        .byte $DE   ; 
off_A898_03:
- D 1 - I - 0x0128A8 04:A898: DF        .byte $DF   ; 
- D 1 - I - 0x0128A9 04:A899: E0        .byte $E0   ; 
- D 1 - I - 0x0128AA 04:A89A: E0        .byte $E0   ; 
- D 1 - I - 0x0128AB 04:A89B: DF        .byte $DF   ; 
- D 1 - I - 0x0128AC 04:A89C: E7        .byte $E7   ; 
- D 1 - I - 0x0128AD 04:A89D: E8        .byte $E8   ; 
- D 1 - I - 0x0128AE 04:A89E: E8        .byte $E8   ; 
- D 1 - I - 0x0128AF 04:A89F: E7        .byte $E7   ; 
- D 1 - I - 0x0128B0 04:A8A0: F8        .byte $F8   ; 
- D 1 - I - 0x0128B1 04:A8A1: F8        .byte $F8   ; 
- D 1 - I - 0x0128B2 04:A8A2: F0        .byte $F0   ; 
- D 1 - I - 0x0128B3 04:A8A3: F0        .byte $F0   ; 
off_A8A4_03:
- D 1 - I - 0x0128B4 04:A8A4: F5        .byte $F5   ; 
- D 1 - I - 0x0128B5 04:A8A5: F5        .byte $F5   ; 
- D 1 - I - 0x0128B6 04:A8A6: FD        .byte $FD   ; 
- D 1 - I - 0x0128B7 04:A8A7: FD        .byte $FD   ; 
- D 1 - I - 0x0128B8 04:A8A8: ED        .byte $ED   ; 
- D 1 - I - 0x0128B9 04:A8A9: ED        .byte $ED   ; 
- D 1 - I - 0x0128BA 04:A8AA: ED        .byte $ED   ; 
- D 1 - I - 0x0128BB 04:A8AB: E5        .byte $E5   ; 
- D 1 - I - 0x0128BC 04:A8AC: E5        .byte $E5   ; 
- D 1 - I - 0x0128BD 04:A8AD: E5        .byte $E5   ; 
- D 1 - I - 0x0128BE 04:A8AE: E5        .byte $E5   ; 
off_A8AF_03:
- D 1 - I - 0x0128BF 04:A8AF: F0        .byte $F0   ; 
- D 1 - I - 0x0128C0 04:A8B0: F0        .byte $F0   ; 
- D 1 - I - 0x0128C1 04:A8B1: F8        .byte $F8   ; 
- D 1 - I - 0x0128C2 04:A8B2: F8        .byte $F8   ; 
- D 1 - I - 0x0128C3 04:A8B3: E8        .byte $E8   ; 
- D 1 - I - 0x0128C4 04:A8B4: E8        .byte $E8   ; 
- D 1 - I - 0x0128C5 04:A8B5: E8        .byte $E8   ; 
- D 1 - I - 0x0128C6 04:A8B6: E0        .byte $E0   ; 
- D 1 - I - 0x0128C7 04:A8B7: E0        .byte $E0   ; 
- D 1 - I - 0x0128C8 04:A8B8: E0        .byte $E0   ; 
- D 1 - I - 0x0128C9 04:A8B9: E0        .byte $E0   ; 
off_A8BA_03:
- D 1 - I - 0x0128CA 04:A8BA: DF        .byte $DF   ; 
- D 1 - I - 0x0128CB 04:A8BB: DF        .byte $DF   ; 
- D 1 - I - 0x0128CC 04:A8BC: E7        .byte $E7   ; 
- D 1 - I - 0x0128CD 04:A8BD: E7        .byte $E7   ; 
- D 1 - I - 0x0128CE 04:A8BE: EB        .byte $EB   ; 
- D 1 - I - 0x0128CF 04:A8BF: E7        .byte $E7   ; 
- D 1 - I - 0x0128D0 04:A8C0: EF        .byte $EF   ; 
- D 1 - I - 0x0128D1 04:A8C1: EF        .byte $EF   ; 
- D 1 - I - 0x0128D2 04:A8C2: EF        .byte $EF   ; 
- D 1 - I - 0x0128D3 04:A8C3: F7        .byte $F7   ; 
- D 1 - I - 0x0128D4 04:A8C4: F7        .byte $F7   ; 
off_A8C5_03:
- D 1 - I - 0x0128D5 04:A8C5: E0        .byte $E0   ; 
- D 1 - I - 0x0128D6 04:A8C6: E0        .byte $E0   ; 
- D 1 - I - 0x0128D7 04:A8C7: E8        .byte $E8   ; 
- D 1 - I - 0x0128D8 04:A8C8: E8        .byte $E8   ; 
- D 1 - I - 0x0128D9 04:A8C9: F0        .byte $F0   ; 
- D 1 - I - 0x0128DA 04:A8CA: F0        .byte $F0   ; 
- D 1 - I - 0x0128DB 04:A8CB: F8        .byte $F8   ; 
- D 1 - I - 0x0128DC 04:A8CC: F8        .byte $F8   ; 
- D 1 - I - 0x0128DD 04:A8CD: EC        .byte $EC   ; 
- D 1 - I - 0x0128DE 04:A8CE: E8        .byte $E8   ; 
- D 1 - I - 0x0128DF 04:A8CF: F0        .byte $F0   ; 
off_A8D0_03:
- D 1 - I - 0x0128E0 04:A8D0: E0        .byte $E0   ; 
- D 1 - I - 0x0128E1 04:A8D1: E8        .byte $E8   ; 
- D 1 - I - 0x0128E2 04:A8D2: E8        .byte $E8   ; 
- D 1 - I - 0x0128E3 04:A8D3: F0        .byte $F0   ; 
- D 1 - I - 0x0128E4 04:A8D4: F0        .byte $F0   ; 
- D 1 - I - 0x0128E5 04:A8D5: F0        .byte $F0   ; 
- D 1 - I - 0x0128E6 04:A8D6: F8        .byte $F8   ; 
- D 1 - I - 0x0128E7 04:A8D7: D9        .byte $D9   ; 
- D 1 - I - 0x0128E8 04:A8D8: F8        .byte $F8   ; 
- D 1 - I - 0x0128E9 04:A8D9: F8        .byte $F8   ; 
- D 1 - I - 0x0128EA 04:A8DA: F8        .byte $F8   ; 
off_A8DB_03:
- D 1 - I - 0x0128EB 04:A8DB: E8        .byte $E8   ; 
- D 1 - I - 0x0128EC 04:A8DC: E8        .byte $E8   ; 
- D 1 - I - 0x0128ED 04:A8DD: E8        .byte $E8   ; 
- D 1 - I - 0x0128EE 04:A8DE: E0        .byte $E0   ; 
- D 1 - I - 0x0128EF 04:A8DF: E0        .byte $E0   ; 
- D 1 - I - 0x0128F0 04:A8E0: E0        .byte $E0   ; 
- D 1 - I - 0x0128F1 04:A8E1: F0        .byte $F0   ; 
- D 1 - I - 0x0128F2 04:A8E2: F0        .byte $F0   ; 
- D 1 - I - 0x0128F3 04:A8E3: F8        .byte $F8   ; 
- D 1 - I - 0x0128F4 04:A8E4: F8        .byte $F8   ; 
- D 1 - I - 0x0128F5 04:A8E5: E0        .byte $E0   ; 
off_A8E6_03:
- D 1 - I - 0x0128F6 04:A8E6: E8        .byte $E8   ; 
- D 1 - I - 0x0128F7 04:A8E7: E8        .byte $E8   ; 
- D 1 - I - 0x0128F8 04:A8E8: E7        .byte $E7   ; 
- D 1 - I - 0x0128F9 04:A8E9: E8        .byte $E8   ; 
- D 1 - I - 0x0128FA 04:A8EA: E0        .byte $E0   ; 
- D 1 - I - 0x0128FB 04:A8EB: F0        .byte $F0   ; 
- D 1 - I - 0x0128FC 04:A8EC: F0        .byte $F0   ; 
- D 1 - I - 0x0128FD 04:A8ED: E0        .byte $E0   ; 
- D 1 - I - 0x0128FE 04:A8EE: E0        .byte $E0   ; 
- D 1 - I - 0x0128FF 04:A8EF: F8        .byte $F8   ; 
- D 1 - I - 0x012900 04:A8F0: F8        .byte $F8   ; 
off_A8F1_03:
- D 1 - I - 0x012901 04:A8F1: F0        .byte $F0   ; 
- D 1 - I - 0x012902 04:A8F2: F0        .byte $F0   ; 
- D 1 - I - 0x012903 04:A8F3: F0        .byte $F0   ; 
- D 1 - I - 0x012904 04:A8F4: F8        .byte $F8   ; 
- D 1 - I - 0x012905 04:A8F5: F8        .byte $F8   ; 
- D 1 - I - 0x012906 04:A8F6: F8        .byte $F8   ; 
- D 1 - I - 0x012907 04:A8F7: E8        .byte $E8   ; 
- D 1 - I - 0x012908 04:A8F8: E8        .byte $E8   ; 
- D 1 - I - 0x012909 04:A8F9: E0        .byte $E0   ; 
- D 1 - I - 0x01290A 04:A8FA: F8        .byte $F8   ; 
- D 1 - I - 0x01290B 04:A8FB: D9        .byte $D9   ; 
off_A8FC_03:
- D 1 - I - 0x01290C 04:A8FC: EE        .byte $EE   ; 
- D 1 - I - 0x01290D 04:A8FD: F3        .byte $F3   ; 
- D 1 - I - 0x01290E 04:A8FE: F6        .byte $F6   ; 
- D 1 - I - 0x01290F 04:A8FF: F3        .byte $F3   ; 
- D 1 - I - 0x012910 04:A900: DE        .byte $DE   ; 
- D 1 - I - 0x012911 04:A901: DE        .byte $DE   ; 
- D 1 - I - 0x012912 04:A902: E6        .byte $E6   ; 
- D 1 - I - 0x012913 04:A903: E6        .byte $E6   ; 
- D 1 - I - 0x012914 04:A904: DE        .byte $DE   ; 
- D 1 - I - 0x012915 04:A905: E6        .byte $E6   ; 
- D 1 - I - 0x012916 04:A906: EE        .byte $EE   ; 
off_A907_03:
- D 1 - I - 0x012917 04:A907: F8        .byte $F8   ; 
- D 1 - I - 0x012918 04:A908: F8        .byte $F8   ; 
- D 1 - I - 0x012919 04:A909: F0        .byte $F0   ; 
- D 1 - I - 0x01291A 04:A90A: F0        .byte $F0   ; 
- D 1 - I - 0x01291B 04:A90B: E0        .byte $E0   ; 
- D 1 - I - 0x01291C 04:A90C: E0        .byte $E0   ; 
- D 1 - I - 0x01291D 04:A90D: E8        .byte $E8   ; 
- D 1 - I - 0x01291E 04:A90E: D8        .byte $D8   ; 
- D 1 - I - 0x01291F 04:A90F: D8        .byte $D8   ; 
- D 1 - I - 0x012920 04:A910: E0        .byte $E0   ; 
off_A911_03:
- D 1 - I - 0x012921 04:A911: E8        .byte $E8   ; 
- D 1 - I - 0x012922 04:A912: E8        .byte $E8   ; 
- D 1 - I - 0x012923 04:A913: E7        .byte $E7   ; 
- D 1 - I - 0x012924 04:A914: F0        .byte $F0   ; 
- D 1 - I - 0x012925 04:A915: F0        .byte $F0   ; 
- D 1 - I - 0x012926 04:A916: EF        .byte $EF   ; 
- D 1 - I - 0x012927 04:A917: F8        .byte $F8   ; 
- D 1 - I - 0x012928 04:A918: F8        .byte $F8   ; 
- D 1 - I - 0x012929 04:A919: F8        .byte $F8   ; 
off_A91A_03:
- D 1 - I - 0x01292A 04:A91A: E0        .byte $E0   ; 
- D 1 - I - 0x01292B 04:A91B: E0        .byte $E0   ; 
- D 1 - I - 0x01292C 04:A91C: E8        .byte $E8   ; 
- D 1 - I - 0x01292D 04:A91D: E8        .byte $E8   ; 
- D 1 - I - 0x01292E 04:A91E: E8        .byte $E8   ; 
- D 1 - I - 0x01292F 04:A91F: F0        .byte $F0   ; 
- D 1 - I - 0x012930 04:A920: F0        .byte $F0   ; 
- D 1 - I - 0x012931 04:A921: F8        .byte $F8   ; 
off_A922_03:
- D 1 - I - 0x012932 04:A922: F8        .byte $F8   ; 
- D 1 - I - 0x012933 04:A923: E0        .byte $E0   ; 
- D 1 - I - 0x012934 04:A924: E0        .byte $E0   ; 
- D 1 - I - 0x012935 04:A925: E8        .byte $E8   ; 
- D 1 - I - 0x012936 04:A926: E8        .byte $E8   ; 
- D 1 - I - 0x012937 04:A927: E8        .byte $E8   ; 
- D 1 - I - 0x012938 04:A928: F0        .byte $F0   ; 
- D 1 - I - 0x012939 04:A929: F0        .byte $F0   ; 
- D 1 - I - 0x01293A 04:A92A: F0        .byte $F0   ; 
- D 1 - I - 0x01293B 04:A92B: F8        .byte $F8   ; 
- D 1 - I - 0x01293C 04:A92C: E0        .byte $E0   ; 
off_A92D_03:
- D 1 - I - 0x01293D 04:A92D: E8        .byte $E8   ; 
off_A92E_03:
- D 1 - I - 0x01293E 04:A92E: E8        .byte $E8   ; 
- D 1 - I - 0x01293F 04:A92F: E8        .byte $E8   ; 
- D 1 - I - 0x012940 04:A930: F0        .byte $F0   ; 
- D 1 - I - 0x012941 04:A931: F0        .byte $F0   ; 
- D 1 - I - 0x012942 04:A932: F0        .byte $F0   ; 
- D 1 - I - 0x012943 04:A933: F8        .byte $F8   ; 
- D 1 - I - 0x012944 04:A934: F8        .byte $F8   ; 
- D 1 - I - 0x012945 04:A935: E0        .byte $E0   ; 
- D 1 - I - 0x012946 04:A936: E0        .byte $E0   ; 
- D 1 - I - 0x012947 04:A937: D8        .byte $D8   ; 
off_A938_03:
- D 1 - I - 0x012948 04:A938: D6        .byte $D6   ; 
- D 1 - I - 0x012949 04:A939: E0        .byte $E0   ; 
- D 1 - I - 0x01294A 04:A93A: E0        .byte $E0   ; 
- D 1 - I - 0x01294B 04:A93B: E0        .byte $E0   ; 
- D 1 - I - 0x01294C 04:A93C: E8        .byte $E8   ; 
- D 1 - I - 0x01294D 04:A93D: E8        .byte $E8   ; 
- D 1 - I - 0x01294E 04:A93E: E8        .byte $E8   ; 
- D 1 - I - 0x01294F 04:A93F: F0        .byte $F0   ; 
- D 1 - I - 0x012950 04:A940: F8        .byte $F8   ; 
- D 1 - I - 0x012951 04:A941: F0        .byte $F0   ; 
- D 1 - I - 0x012952 04:A942: F8        .byte $F8   ; 
off_A943_03:
- D 1 - I - 0x012953 04:A943: F3        .byte $F3   ; 
- D 1 - I - 0x012954 04:A944: E6        .byte $E6   ; 
- D 1 - I - 0x012955 04:A945: DE        .byte $DE   ; 
- D 1 - I - 0x012956 04:A946: DE        .byte $DE   ; 
- D 1 - I - 0x012957 04:A947: EE        .byte $EE   ; 
- D 1 - I - 0x012958 04:A948: EE        .byte $EE   ; 
- D 1 - I - 0x012959 04:A949: DE        .byte $DE   ; 
- D 1 - I - 0x01295A 04:A94A: E6        .byte $E6   ; 
- D 1 - I - 0x01295B 04:A94B: E6        .byte $E6   ; 
- D 1 - I - 0x01295C 04:A94C: F6        .byte $F6   ; 
- D 1 - I - 0x01295D 04:A94D: F3        .byte $F3   ; 
off_A94E_03:
- D 1 - I - 0x01295E 04:A94E: D5        .byte $D5   ; 
- D 1 - I - 0x01295F 04:A94F: DF        .byte $DF   ; 
- D 1 - I - 0x012960 04:A950: E7        .byte $E7   ; 
- D 1 - I - 0x012961 04:A951: DF        .byte $DF   ; 
- D 1 - I - 0x012962 04:A952: E7        .byte $E7   ; 
- D 1 - I - 0x012963 04:A953: DF        .byte $DF   ; 
- D 1 - I - 0x012964 04:A954: E7        .byte $E7   ; 
- D 1 - I - 0x012965 04:A955: EF        .byte $EF   ; 
- D 1 - I - 0x012966 04:A956: F7        .byte $F7   ; 
- D 1 - I - 0x012967 04:A957: EF        .byte $EF   ; 
- D 1 - I - 0x012968 04:A958: F7        .byte $F7   ; 
off_A959_03:
- D 1 - I - 0x012969 04:A959: E0        .byte $E0   ; 
- D 1 - I - 0x01296A 04:A95A: E0        .byte $E0   ; 
- D 1 - I - 0x01296B 04:A95B: E8        .byte $E8   ; 
- D 1 - I - 0x01296C 04:A95C: E8        .byte $E8   ; 
- D 1 - I - 0x01296D 04:A95D: E8        .byte $E8   ; 
- D 1 - I - 0x01296E 04:A95E: F0        .byte $F0   ; 
- D 1 - I - 0x01296F 04:A95F: F0        .byte $F0   ; 
- D 1 - I - 0x012970 04:A960: F0        .byte $F0   ; 
- D 1 - I - 0x012971 04:A961: F8        .byte $F8   ; 
- D 1 - I - 0x012972 04:A962: F8        .byte $F8   ; 
- D 1 - I - 0x012973 04:A963: F8        .byte $F8   ; 
off_A964_03:
- D 1 - I - 0x012974 04:A964: E9        .byte $E9   ; 
- D 1 - I - 0x012975 04:A965: E9        .byte $E9   ; 
- D 1 - I - 0x012976 04:A966: F1        .byte $F1   ; 
- D 1 - I - 0x012977 04:A967: F1        .byte $F1   ; 
- D 1 - I - 0x012978 04:A968: E3        .byte $E3   ; 
- D 1 - I - 0x012979 04:A969: EE        .byte $EE   ; 
- D 1 - I - 0x01297A 04:A96A: EE        .byte $EE   ; 
- D 1 - I - 0x01297B 04:A96B: F9        .byte $F9   ; 
- D 1 - I - 0x01297C 04:A96C: F9        .byte $F9   ; 
- D 1 - I - 0x01297D 04:A96D: F9        .byte $F9   ; 
- D 1 - I - 0x01297E 04:A96E: E3        .byte $E3   ; 
off_A96F_03:
- D 1 - I - 0x01297F 04:A96F: F8        .byte $F8   ; 
- D 1 - I - 0x012980 04:A970: F8        .byte $F8   ; 
- D 1 - I - 0x012981 04:A971: D2        .byte $D2   ; 
- D 1 - I - 0x012982 04:A972: DA        .byte $DA   ; 
- D 1 - I - 0x012983 04:A973: E2        .byte $E2   ; 
- D 1 - I - 0x012984 04:A974: DA        .byte $DA   ; 
- D 1 - I - 0x012985 04:A975: E2        .byte $E2   ; 
- D 1 - I - 0x012986 04:A976: F0        .byte $F0   ; 
- D 1 - I - 0x012987 04:A977: F0        .byte $F0   ; 
- D 1 - I - 0x012988 04:A978: EA        .byte $EA   ; 
- D 1 - I - 0x012989 04:A979: EA        .byte $EA   ; 
off_A97A_03:
- D 1 - I - 0x01298A 04:A97A: F8        .byte $F8   ; 
- D 1 - I - 0x01298B 04:A97B: F8        .byte $F8   ; 
- D 1 - I - 0x01298C 04:A97C: F0        .byte $F0   ; 
- D 1 - I - 0x01298D 04:A97D: F0        .byte $F0   ; 
- D 1 - I - 0x01298E 04:A97E: E8        .byte $E8   ; 
- D 1 - I - 0x01298F 04:A97F: E8        .byte $E8   ; 
- D 1 - I - 0x012990 04:A980: F0        .byte $F0   ; 
- D 1 - I - 0x012991 04:A981: E0        .byte $E0   ; 
- D 1 - I - 0x012992 04:A982: E0        .byte $E0   ; 
- D 1 - I - 0x012993 04:A983: E8        .byte $E8   ; 
- D 1 - I - 0x012994 04:A984: E3        .byte $E3   ; 
off_A985_03:
- D 1 - I - 0x012995 04:A985: D8        .byte $D8   ; 
- D 1 - I - 0x012996 04:A986: E8        .byte $E8   ; 
- D 1 - I - 0x012997 04:A987: F0        .byte $F0   ; 
- D 1 - I - 0x012998 04:A988: F0        .byte $F0   ; 
- D 1 - I - 0x012999 04:A989: F8        .byte $F8   ; 
- D 1 - I - 0x01299A 04:A98A: F8        .byte $F8   ; 
- D 1 - I - 0x01299B 04:A98B: F0        .byte $F0   ; 
- D 1 - I - 0x01299C 04:A98C: E8        .byte $E8   ; 
- D 1 - I - 0x01299D 04:A98D: E8        .byte $E8   ; 
- D 1 - I - 0x01299E 04:A98E: E0        .byte $E0   ; 
off_A98F_03:
- D 1 - I - 0x01299F 04:A98F: E0        .byte $E0   ; 
- D 1 - I - 0x0129A0 04:A990: E8        .byte $E8   ; 
- D 1 - I - 0x0129A1 04:A991: E8        .byte $E8   ; 
- D 1 - I - 0x0129A2 04:A992: E8        .byte $E8   ; 
- D 1 - I - 0x0129A3 04:A993: F0        .byte $F0   ; 
- D 1 - I - 0x0129A4 04:A994: F8        .byte $F8   ; 
- D 1 - I - 0x0129A5 04:A995: F8        .byte $F8   ; 
- D 1 - I - 0x0129A6 04:A996: E0        .byte $E0   ; 
- D 1 - I - 0x0129A7 04:A997: F0        .byte $F0   ; 
- D 1 - I - 0x0129A8 04:A998: F0        .byte $F0   ; 
- D 1 - I - 0x0129A9 04:A999: E0        .byte $E0   ; 
off_A99A_03:
- D 1 - I - 0x0129AA 04:A99A: F0        .byte $F0   ; 
- D 1 - I - 0x0129AB 04:A99B: F8        .byte $F8   ; 
- D 1 - I - 0x0129AC 04:A99C: F8        .byte $F8   ; 
- D 1 - I - 0x0129AD 04:A99D: E0        .byte $E0   ; 
- D 1 - I - 0x0129AE 04:A99E: E7        .byte $E7   ; 
- D 1 - I - 0x0129AF 04:A99F: EF        .byte $EF   ; 
- D 1 - I - 0x0129B0 04:A9A0: E8        .byte $E8   ; 
- D 1 - I - 0x0129B1 04:A9A1: F0        .byte $F0   ; 
- D 1 - I - 0x0129B2 04:A9A2: E0        .byte $E0   ; 
- D 1 - I - 0x0129B3 04:A9A3: E8        .byte $E8   ; 
off_A9A4_03:
- D 1 - I - 0x0129B4 04:A9A4: E0        .byte $E0   ; 
- D 1 - I - 0x0129B5 04:A9A5: E0        .byte $E0   ; 
- D 1 - I - 0x0129B6 04:A9A6: E8        .byte $E8   ; 
- D 1 - I - 0x0129B7 04:A9A7: E8        .byte $E8   ; 
- D 1 - I - 0x0129B8 04:A9A8: F0        .byte $F0   ; 
- D 1 - I - 0x0129B9 04:A9A9: F0        .byte $F0   ; 
- D 1 - I - 0x0129BA 04:A9AA: F8        .byte $F8   ; 
- D 1 - I - 0x0129BB 04:A9AB: F8        .byte $F8   ; 
- D 1 - I - 0x0129BC 04:A9AC: F8        .byte $F8   ; 
- D 1 - I - 0x0129BD 04:A9AD: F0        .byte $F0   ; 
off_A9AE_03:
- D 1 - I - 0x0129BE 04:A9AE: E0        .byte $E0   ; 
- D 1 - I - 0x0129BF 04:A9AF: E0        .byte $E0   ; 
- D 1 - I - 0x0129C0 04:A9B0: E8        .byte $E8   ; 
- D 1 - I - 0x0129C1 04:A9B1: E8        .byte $E8   ; 
- D 1 - I - 0x0129C2 04:A9B2: F0        .byte $F0   ; 
- D 1 - I - 0x0129C3 04:A9B3: F0        .byte $F0   ; 
- D 1 - I - 0x0129C4 04:A9B4: F0        .byte $F0   ; 
- D 1 - I - 0x0129C5 04:A9B5: F8        .byte $F8   ; 
- D 1 - I - 0x0129C6 04:A9B6: F8        .byte $F8   ; 
off_A9B7_03:
- D 1 - I - 0x0129C7 04:A9B7: E8        .byte $E8   ; 
- D 1 - I - 0x0129C8 04:A9B8: F0        .byte $F0   ; 
- D 1 - I - 0x0129C9 04:A9B9: F0        .byte $F0   ; 
- D 1 - I - 0x0129CA 04:A9BA: F8        .byte $F8   ; 
- D 1 - I - 0x0129CB 04:A9BB: F8        .byte $F8   ; 
- D 1 - I - 0x0129CC 04:A9BC: E8        .byte $E8   ; 
- D 1 - I - 0x0129CD 04:A9BD: E0        .byte $E0   ; 
- D 1 - I - 0x0129CE 04:A9BE: E0        .byte $E0   ; 
- D 1 - I - 0x0129CF 04:A9BF: EF        .byte $EF   ; 
off_A9C0_03:
- D 1 - I - 0x0129D0 04:A9C0: E8        .byte $E8   ; 
- D 1 - I - 0x0129D1 04:A9C1: F0        .byte $F0   ; 
- D 1 - I - 0x0129D2 04:A9C2: F8        .byte $F8   ; 
- D 1 - I - 0x0129D3 04:A9C3: F8        .byte $F8   ; 
- D 1 - I - 0x0129D4 04:A9C4: E0        .byte $E0   ; 
- D 1 - I - 0x0129D5 04:A9C5: E0        .byte $E0   ; 
- D 1 - I - 0x0129D6 04:A9C6: E8        .byte $E8   ; 
- D 1 - I - 0x0129D7 04:A9C7: F0        .byte $F0   ; 
- D 1 - I - 0x0129D8 04:A9C8: EE        .byte $EE   ; 
off_A9C9_03:
- D 1 - I - 0x0129D9 04:A9C9: E8        .byte $E8   ; 
- D 1 - I - 0x0129DA 04:A9CA: E8        .byte $E8   ; 
- D 1 - I - 0x0129DB 04:A9CB: F8        .byte $F8   ; 
- D 1 - I - 0x0129DC 04:A9CC: F0        .byte $F0   ; 
- D 1 - I - 0x0129DD 04:A9CD: F0        .byte $F0   ; 
- D 1 - I - 0x0129DE 04:A9CE: F0        .byte $F0   ; 
- D 1 - I - 0x0129DF 04:A9CF: E0        .byte $E0   ; 
- D 1 - I - 0x0129E0 04:A9D0: E0        .byte $E0   ; 
- D 1 - I - 0x0129E1 04:A9D1: E8        .byte $E8   ; 
- D 1 - I - 0x0129E2 04:A9D2: F8        .byte $F8   ; 
off_A9D3_03:
- D 1 - I - 0x0129E3 04:A9D3: F0        .byte $F0   ; 
- D 1 - I - 0x0129E4 04:A9D4: F8        .byte $F8   ; 
- D 1 - I - 0x0129E5 04:A9D5: F8        .byte $F8   ; 
- D 1 - I - 0x0129E6 04:A9D6: E0        .byte $E0   ; 
- D 1 - I - 0x0129E7 04:A9D7: E0        .byte $E0   ; 
- D 1 - I - 0x0129E8 04:A9D8: E8        .byte $E8   ; 
- D 1 - I - 0x0129E9 04:A9D9: E8        .byte $E8   ; 
- D 1 - I - 0x0129EA 04:A9DA: E0        .byte $E0   ; 
- D 1 - I - 0x0129EB 04:A9DB: E8        .byte $E8   ; 
- D 1 - I - 0x0129EC 04:A9DC: F0        .byte $F0   ; 
off_A9DD_03:
- D 1 - I - 0x0129ED 04:A9DD: EC        .byte $EC   ; 
- D 1 - I - 0x0129EE 04:A9DE: EC        .byte $EC   ; 
- D 1 - I - 0x0129EF 04:A9DF: EC        .byte $EC   ; 
- D 1 - I - 0x0129F0 04:A9E0: F3        .byte $F3   ; 
- D 1 - I - 0x0129F1 04:A9E1: FB        .byte $FB   ; 
- D 1 - I - 0x0129F2 04:A9E2: FB        .byte $FB   ; 
- D 1 - I - 0x0129F3 04:A9E3: F4        .byte $F4   ; 
- D 1 - I - 0x0129F4 04:A9E4: F4        .byte $F4   ; 
- D 1 - I - 0x0129F5 04:A9E5: E4        .byte $E4   ; 
- D 1 - I - 0x0129F6 04:A9E6: E4        .byte $E4   ; 
off_A9E7_03:
- D 1 - I - 0x0129F7 04:A9E7: E0        .byte $E0   ; 
- D 1 - I - 0x0129F8 04:A9E8: E0        .byte $E0   ; 
- D 1 - I - 0x0129F9 04:A9E9: E8        .byte $E8   ; 
- D 1 - I - 0x0129FA 04:A9EA: E8        .byte $E8   ; 
- D 1 - I - 0x0129FB 04:A9EB: F0        .byte $F0   ; 
- D 1 - I - 0x0129FC 04:A9EC: F8        .byte $F8   ; 
off_A9ED_03:
- D 1 - I - 0x0129FD 04:A9ED: F8        .byte $F8   ; 
- D 1 - I - 0x0129FE 04:A9EE: F8        .byte $F8   ; 
- D 1 - I - 0x0129FF 04:A9EF: F0        .byte $F0   ; 
- D 1 - I - 0x012A00 04:A9F0: F0        .byte $F0   ; 
- D 1 - I - 0x012A01 04:A9F1: F0        .byte $F0   ; 
- D 1 - I - 0x012A02 04:A9F2: E8        .byte $E8   ; 
- D 1 - I - 0x012A03 04:A9F3: E8        .byte $E8   ; 
- D 1 - I - 0x012A04 04:A9F4: E8        .byte $E8   ; 
- D 1 - I - 0x012A05 04:A9F5: E0        .byte $E0   ; 
- D 1 - I - 0x012A06 04:A9F6: E0        .byte $E0   ; 
off_A9F7_03:
- D 1 - I - 0x012A07 04:A9F7: F0        .byte $F0   ; 
- D 1 - I - 0x012A08 04:A9F8: F1        .byte $F1   ; 
- D 1 - I - 0x012A09 04:A9F9: F1        .byte $F1   ; 
- D 1 - I - 0x012A0A 04:A9FA: E9        .byte $E9   ; 
- D 1 - I - 0x012A0B 04:A9FB: E8        .byte $E8   ; 
- D 1 - I - 0x012A0C 04:A9FC: E9        .byte $E9   ; 
- D 1 - I - 0x012A0D 04:A9FD: F8        .byte $F8   ; 
- D 1 - I - 0x012A0E 04:A9FE: F8        .byte $F8   ; 
- D 1 - I - 0x012A0F 04:A9FF: E1        .byte $E1   ; 
- D 1 - I - 0x012A10 04:AA00: E1        .byte $E1   ; 
off_AA01_03:
- D 1 - I - 0x012A11 04:AA01: F7        .byte $F7   ; 
- D 1 - I - 0x012A12 04:AA02: F7        .byte $F7   ; 
- D 1 - I - 0x012A13 04:AA03: E7        .byte $E7   ; 
- D 1 - I - 0x012A14 04:AA04: EF        .byte $EF   ; 
- D 1 - I - 0x012A15 04:AA05: EF        .byte $EF   ; 
- D 1 - I - 0x012A16 04:AA06: DF        .byte $DF   ; 
- D 1 - I - 0x012A17 04:AA07: DF        .byte $DF   ; 
- D 1 - I - 0x012A18 04:AA08: DF        .byte $DF   ; 
- D 1 - I - 0x012A19 04:AA09: E7        .byte $E7   ; 
- D 1 - I - 0x012A1A 04:AA0A: E7        .byte $E7   ; 
off_AA0B_03:
- D 1 - I - 0x012A1B 04:AA0B: F7        .byte $F7   ; 
- D 1 - I - 0x012A1C 04:AA0C: F7        .byte $F7   ; 
- D 1 - I - 0x012A1D 04:AA0D: E7        .byte $E7   ; 
- D 1 - I - 0x012A1E 04:AA0E: EF        .byte $EF   ; 
- D 1 - I - 0x012A1F 04:AA0F: EF        .byte $EF   ; 
- D 1 - I - 0x012A20 04:AA10: DF        .byte $DF   ; 
- D 1 - I - 0x012A21 04:AA11: E7        .byte $E7   ; 
- D 1 - I - 0x012A22 04:AA12: DF        .byte $DF   ; 
- D 1 - I - 0x012A23 04:AA13: E7        .byte $E7   ; 
- D 1 - I - 0x012A24 04:AA14: DF        .byte $DF   ; 
off_AA15_03:
- D 1 - I - 0x012A25 04:AA15: EB        .byte $EB   ; 
- D 1 - I - 0x012A26 04:AA16: EB        .byte $EB   ; 
- D 1 - I - 0x012A27 04:AA17: EB        .byte $EB   ; 
- D 1 - I - 0x012A28 04:AA18: F3        .byte $F3   ; 
off_AA19_03:
- D 1 - I - 0x012A29 04:AA19: F3        .byte $F3   ; 
- D 1 - I - 0x012A2A 04:AA1A: F3        .byte $F3   ; 
- D 1 - I - 0x012A2B 04:AA1B: FB        .byte $FB   ; 
- D 1 - I - 0x012A2C 04:AA1C: FB        .byte $FB   ; 
- D 1 - I - 0x012A2D 04:AA1D: E3        .byte $E3   ; 
- D 1 - I - 0x012A2E 04:AA1E: E3        .byte $E3   ; 
off_AA1F_03:
- D 1 - I - 0x012A2F 04:AA1F: F0        .byte $F0   ; 
- D 1 - I - 0x012A30 04:AA20: F0        .byte $F0   ; 
- D 1 - I - 0x012A31 04:AA21: F0        .byte $F0   ; 
- D 1 - I - 0x012A32 04:AA22: E8        .byte $E8   ; 
- D 1 - I - 0x012A33 04:AA23: E8        .byte $E8   ; 
- D 1 - I - 0x012A34 04:AA24: E8        .byte $E8   ; 
- D 1 - I - 0x012A35 04:AA25: F8        .byte $F8   ; 
- D 1 - I - 0x012A36 04:AA26: F8        .byte $F8   ; 
- D 1 - I - 0x012A37 04:AA27: E0        .byte $E0   ; 
- D 1 - I - 0x012A38 04:AA28: E0        .byte $E0   ; 
off_AA29_03:
- D 1 - I - 0x012A39 04:AA29: E8        .byte $E8   ; 
- D 1 - I - 0x012A3A 04:AA2A: F0        .byte $F0   ; 
- D 1 - I - 0x012A3B 04:AA2B: F0        .byte $F0   ; 
- D 1 - I - 0x012A3C 04:AA2C: E8        .byte $E8   ; 
- D 1 - I - 0x012A3D 04:AA2D: E8        .byte $E8   ; 
- D 1 - I - 0x012A3E 04:AA2E: F0        .byte $F0   ; 
- D 1 - I - 0x012A3F 04:AA2F: F8        .byte $F8   ; 
- D 1 - I - 0x012A40 04:AA30: F8        .byte $F8   ; 
- D 1 - I - 0x012A41 04:AA31: E0        .byte $E0   ; 
- D 1 - I - 0x012A42 04:AA32: E0        .byte $E0   ; 
off_AA33_03:
- D 1 - I - 0x012A43 04:AA33: F8        .byte $F8   ; 
- D 1 - I - 0x012A44 04:AA34: F8        .byte $F8   ; 
- D 1 - I - 0x012A45 04:AA35: E8        .byte $E8   ; 
- D 1 - I - 0x012A46 04:AA36: F0        .byte $F0   ; 
- D 1 - I - 0x012A47 04:AA37: F0        .byte $F0   ; 
- D 1 - I - 0x012A48 04:AA38: E1        .byte $E1   ; 
- D 1 - I - 0x012A49 04:AA39: E8        .byte $E8   ; 
- D 1 - I - 0x012A4A 04:AA3A: E0        .byte $E0   ; 
- D 1 - I - 0x012A4B 04:AA3B: E8        .byte $E8   ; 
- D 1 - I - 0x012A4C 04:AA3C: E0        .byte $E0   ; 
off_AA3D_03:
- D 1 - I - 0x012A4D 04:AA3D: F0        .byte $F0   ; 
- D 1 - I - 0x012A4E 04:AA3E: F0        .byte $F0   ; 
- D 1 - I - 0x012A4F 04:AA3F: E8        .byte $E8   ; 
- D 1 - I - 0x012A50 04:AA40: E8        .byte $E8   ; 
- D 1 - I - 0x012A51 04:AA41: F8        .byte $F8   ; 
- D 1 - I - 0x012A52 04:AA42: F8        .byte $F8   ; 
- D 1 - I - 0x012A53 04:AA43: E0        .byte $E0   ; 
- D 1 - I - 0x012A54 04:AA44: E0        .byte $E0   ; 
- D 1 - I - 0x012A55 04:AA45: E8        .byte $E8   ; 
- D 1 - I - 0x012A56 04:AA46: F0        .byte $F0   ; 
off_AA47_03:
- D 1 - I - 0x012A57 04:AA47: E0        .byte $E0   ; 
- D 1 - I - 0x012A58 04:AA48: E8        .byte $E8   ; 
- D 1 - I - 0x012A59 04:AA49: E8        .byte $E8   ; 
- D 1 - I - 0x012A5A 04:AA4A: F0        .byte $F0   ; 
- D 1 - I - 0x012A5B 04:AA4B: F0        .byte $F0   ; 
- D 1 - I - 0x012A5C 04:AA4C: F8        .byte $F8   ; 
- D 1 - I - 0x012A5D 04:AA4D: F8        .byte $F8   ; 
- D 1 - I - 0x012A5E 04:AA4E: E0        .byte $E0   ; 
- D 1 - I - 0x012A5F 04:AA4F: DF        .byte $DF   ; 
- D 1 - I - 0x012A60 04:AA50: E7        .byte $E7   ; 
off_AA51_03:
- D 1 - I - 0x012A61 04:AA51: E8        .byte $E8   ; 
- D 1 - I - 0x012A62 04:AA52: E8        .byte $E8   ; 
- D 1 - I - 0x012A63 04:AA53: F0        .byte $F0   ; 
- D 1 - I - 0x012A64 04:AA54: F0        .byte $F0   ; 
- D 1 - I - 0x012A65 04:AA55: E8        .byte $E8   ; 
- D 1 - I - 0x012A66 04:AA56: F0        .byte $F0   ; 
- D 1 - I - 0x012A67 04:AA57: F8        .byte $F8   ; 
- D 1 - I - 0x012A68 04:AA58: F8        .byte $F8   ; 
- D 1 - I - 0x012A69 04:AA59: E0        .byte $E0   ; 
- D 1 - I - 0x012A6A 04:AA5A: E0        .byte $E0   ; 
off_AA5B_03:
- D 1 - I - 0x012A6B 04:AA5B: E2        .byte $E2   ; 
- D 1 - I - 0x012A6C 04:AA5C: EA        .byte $EA   ; 
- D 1 - I - 0x012A6D 04:AA5D: EA        .byte $EA   ; 
- D 1 - I - 0x012A6E 04:AA5E: F2        .byte $F2   ; 
- D 1 - I - 0x012A6F 04:AA5F: E2        .byte $E2   ; 
- D 1 - I - 0x012A70 04:AA60: F8        .byte $F8   ; 
- D 1 - I - 0x012A71 04:AA61: F8        .byte $F8   ; 
- D 1 - I - 0x012A72 04:AA62: F2        .byte $F2   ; 
- D 1 - I - 0x012A73 04:AA63: EA        .byte $EA   ; 
- D 1 - I - 0x012A74 04:AA64: F2        .byte $F2   ; 
off_AA65_03:
- D 1 - I - 0x012A75 04:AA65: E8        .byte $E8   ; 
- D 1 - I - 0x012A76 04:AA66: F0        .byte $F0   ; 
- D 1 - I - 0x012A77 04:AA67: F0        .byte $F0   ; 
- D 1 - I - 0x012A78 04:AA68: F0        .byte $F0   ; 
- D 1 - I - 0x012A79 04:AA69: E0        .byte $E0   ; 
- D 1 - I - 0x012A7A 04:AA6A: E0        .byte $E0   ; 
- D 1 - I - 0x012A7B 04:AA6B: E8        .byte $E8   ; 
- D 1 - I - 0x012A7C 04:AA6C: E8        .byte $E8   ; 
- D 1 - I - 0x012A7D 04:AA6D: F8        .byte $F8   ; 
- D 1 - I - 0x012A7E 04:AA6E: F8        .byte $F8   ; 
off_AA6F_03:
- D 1 - I - 0x012A7F 04:AA6F: DE        .byte $DE   ; 
- D 1 - I - 0x012A80 04:AA70: E6        .byte $E6   ; 
- D 1 - I - 0x012A81 04:AA71: E6        .byte $E6   ; 
- D 1 - I - 0x012A82 04:AA72: EE        .byte $EE   ; 
- D 1 - I - 0x012A83 04:AA73: DE        .byte $DE   ; 
- D 1 - I - 0x012A84 04:AA74: EE        .byte $EE   ; 
- D 1 - I - 0x012A85 04:AA75: F6        .byte $F6   ; 
- D 1 - I - 0x012A86 04:AA76: F6        .byte $F6   ; 
- D 1 - I - 0x012A87 04:AA77: E6        .byte $E6   ; 
- D 1 - I - 0x012A88 04:AA78: EE        .byte $EE   ; 
off_AA79_03:
- D 1 - I - 0x012A89 04:AA79: E8        .byte $E8   ; 
- D 1 - I - 0x012A8A 04:AA7A: E8        .byte $E8   ; 
- D 1 - I - 0x012A8B 04:AA7B: E8        .byte $E8   ; 
- D 1 - I - 0x012A8C 04:AA7C: F0        .byte $F0   ; 
- D 1 - I - 0x012A8D 04:AA7D: F0        .byte $F0   ; 
- D 1 - I - 0x012A8E 04:AA7E: F0        .byte $F0   ; 
- D 1 - I - 0x012A8F 04:AA7F: E0        .byte $E0   ; 
- D 1 - I - 0x012A90 04:AA80: E0        .byte $E0   ; 
- D 1 - I - 0x012A91 04:AA81: F7        .byte $F7   ; 
- D 1 - I - 0x012A92 04:AA82: F8        .byte $F8   ; 
off_AA83_03:
- D 1 - I - 0x012A93 04:AA83: E8        .byte $E8   ; 
- D 1 - I - 0x012A94 04:AA84: E8        .byte $E8   ; 
- D 1 - I - 0x012A95 04:AA85: F2        .byte $F2   ; 
- D 1 - I - 0x012A96 04:AA86: F0        .byte $F0   ; 
- D 1 - I - 0x012A97 04:AA87: F0        .byte $F0   ; 
- D 1 - I - 0x012A98 04:AA88: FA        .byte $FA   ; 
- D 1 - I - 0x012A99 04:AA89: F8        .byte $F8   ; 
- D 1 - I - 0x012A9A 04:AA8A: F0        .byte $F0   ; 
off_AA8B_03:
- D 1 - I - 0x012A9B 04:AA8B: F8        .byte $F8   ; 
- D 1 - I - 0x012A9C 04:AA8C: F8        .byte $F8   ; 
- D 1 - I - 0x012A9D 04:AA8D: E8        .byte $E8   ; 
- D 1 - I - 0x012A9E 04:AA8E: E8        .byte $E8   ; 
- D 1 - I - 0x012A9F 04:AA8F: E8        .byte $E8   ; 
- D 1 - I - 0x012AA0 04:AA90: F0        .byte $F0   ; 
- D 1 - I - 0x012AA1 04:AA91: F0        .byte $F0   ; 
- D 1 - I - 0x012AA2 04:AA92: F0        .byte $F0   ; 
off_AA93_03:
- D 1 - I - 0x012AA3 04:AA93: E0        .byte $E0   ; 
- D 1 - I - 0x012AA4 04:AA94: E0        .byte $E0   ; 
- D 1 - I - 0x012AA5 04:AA95: E8        .byte $E8   ; 
- D 1 - I - 0x012AA6 04:AA96: E9        .byte $E9   ; 
- D 1 - I - 0x012AA7 04:AA97: F1        .byte $F1   ; 
- D 1 - I - 0x012AA8 04:AA98: E8        .byte $E8   ; 
- D 1 - I - 0x012AA9 04:AA99: F0        .byte $F0   ; 
- D 1 - I - 0x012AAA 04:AA9A: F8        .byte $F8   ; 
- D 1 - I - 0x012AAB 04:AA9B: F8        .byte $F8   ; 
- D 1 - I - 0x012AAC 04:AA9C: F0        .byte $F0   ; 
off_AA9D_03:
- D 1 - I - 0x012AAD 04:AA9D: E0        .byte $E0   ; 
- D 1 - I - 0x012AAE 04:AA9E: E0        .byte $E0   ; 
- D 1 - I - 0x012AAF 04:AA9F: EF        .byte $EF   ; 
- D 1 - I - 0x012AB0 04:AAA0: EE        .byte $EE   ; 
- D 1 - I - 0x012AB1 04:AAA1: E8        .byte $E8   ; 
- D 1 - I - 0x012AB2 04:AAA2: E8        .byte $E8   ; 
- D 1 - I - 0x012AB3 04:AAA3: F0        .byte $F0   ; 
- D 1 - I - 0x012AB4 04:AAA4: F0        .byte $F0   ; 
- D 1 - I - 0x012AB5 04:AAA5: F8        .byte $F8   ; 
- D 1 - I - 0x012AB6 04:AAA6: F8        .byte $F8   ; 
off_AAA7_03:
- D 1 - I - 0x012AB7 04:AAA7: E8        .byte $E8   ; 
- D 1 - I - 0x012AB8 04:AAA8: F0        .byte $F0   ; 
- D 1 - I - 0x012AB9 04:AAA9: F0        .byte $F0   ; 
- D 1 - I - 0x012ABA 04:AAAA: F0        .byte $F0   ; 
- D 1 - I - 0x012ABB 04:AAAB: E8        .byte $E8   ; 
- D 1 - I - 0x012ABC 04:AAAC: E8        .byte $E8   ; 
- D 1 - I - 0x012ABD 04:AAAD: E0        .byte $E0   ; 
- D 1 - I - 0x012ABE 04:AAAE: E0        .byte $E0   ; 
- D 1 - I - 0x012ABF 04:AAAF: F8        .byte $F8   ; 
- D 1 - I - 0x012AC0 04:AAB0: F8        .byte $F8   ; 
off_AAB1_03:
- D 1 - I - 0x012AC1 04:AAB1: D8        .byte $D8   ; 
- D 1 - I - 0x012AC2 04:AAB2: D8        .byte $D8   ; 
- D 1 - I - 0x012AC3 04:AAB3: E0        .byte $E0   ; 
- D 1 - I - 0x012AC4 04:AAB4: E0        .byte $E0   ; 
- D 1 - I - 0x012AC5 04:AAB5: E0        .byte $E0   ; 
- D 1 - I - 0x012AC6 04:AAB6: E8        .byte $E8   ; 
- D 1 - I - 0x012AC7 04:AAB7: E8        .byte $E8   ; 
- D 1 - I - 0x012AC8 04:AAB8: E8        .byte $E8   ; 
- D 1 - I - 0x012AC9 04:AAB9: F0        .byte $F0   ; 
- D 1 - I - 0x012ACA 04:AABA: F0        .byte $F0   ; 
off_AABB_03:
- D 1 - I - 0x012ACB 04:AABB: F7        .byte $F7   ; 
- D 1 - I - 0x012ACC 04:AABC: DF        .byte $DF   ; 
- D 1 - I - 0x012ACD 04:AABD: DF        .byte $DF   ; 
- D 1 - I - 0x012ACE 04:AABE: E7        .byte $E7   ; 
- D 1 - I - 0x012ACF 04:AABF: E7        .byte $E7   ; 
- D 1 - I - 0x012AD0 04:AAC0: E7        .byte $E7   ; 
- D 1 - I - 0x012AD1 04:AAC1: EF        .byte $EF   ; 
- D 1 - I - 0x012AD2 04:AAC2: EF        .byte $EF   ; 
- D 1 - I - 0x012AD3 04:AAC3: EF        .byte $EF   ; 
- D 1 - I - 0x012AD4 04:AAC4: E7        .byte $E7   ; 
off_AAC5_03:
- D 1 - I - 0x012AD5 04:AAC5: C0        .byte $C0   ; 
- D 1 - I - 0x012AD6 04:AAC6: C8        .byte $C8   ; 
- D 1 - I - 0x012AD7 04:AAC7: D0        .byte $D0   ; 
- D 1 - I - 0x012AD8 04:AAC8: C8        .byte $C8   ; 
- D 1 - I - 0x012AD9 04:AAC9: D0        .byte $D0   ; 
- D 1 - I - 0x012ADA 04:AACA: C0        .byte $C0   ; 
- D 1 - I - 0x012ADB 04:AACB: C8        .byte $C8   ; 
- D 1 - I - 0x012ADC 04:AACC: D0        .byte $D0   ; 
- D 1 - I - 0x012ADD 04:AACD: D8        .byte $D8   ; 
- D 1 - I - 0x012ADE 04:AACE: D8        .byte $D8   ; 
off_AACF_03:
- D 1 - I - 0x012ADF 04:AACF: E8        .byte $E8   ; 
- D 1 - I - 0x012AE0 04:AAD0: E8        .byte $E8   ; 
- D 1 - I - 0x012AE1 04:AAD1: E0        .byte $E0   ; 
- D 1 - I - 0x012AE2 04:AAD2: F8        .byte $F8   ; 
- D 1 - I - 0x012AE3 04:AAD3: F8        .byte $F8   ; 
- D 1 - I - 0x012AE4 04:AAD4: E0        .byte $E0   ; 
- D 1 - I - 0x012AE5 04:AAD5: E8        .byte $E8   ; 
- D 1 - I - 0x012AE6 04:AAD6: F0        .byte $F0   ; 
- D 1 - I - 0x012AE7 04:AAD7: F0        .byte $F0   ; 
- D 1 - I - 0x012AE8 04:AAD8: F0        .byte $F0   ; 
off_AAD9_03:
- D 1 - I - 0x012AE9 04:AAD9: F8        .byte $F8   ; 
- D 1 - I - 0x012AEA 04:AADA: F8        .byte $F8   ; 
- D 1 - I - 0x012AEB 04:AADB: E8        .byte $E8   ; 
- D 1 - I - 0x012AEC 04:AADC: F0        .byte $F0   ; 
- D 1 - I - 0x012AED 04:AADD: F0        .byte $F0   ; 
- D 1 - I - 0x012AEE 04:AADE: E8        .byte $E8   ; 
- D 1 - I - 0x012AEF 04:AADF: E0        .byte $E0   ; 
- D 1 - I - 0x012AF0 04:AAE0: E8        .byte $E8   ; 
- D 1 - I - 0x012AF1 04:AAE1: E0        .byte $E0   ; 
- D 1 - I - 0x012AF2 04:AAE2: E0        .byte $E0   ; 
off_AAE3_03:
- D 1 - I - 0x012AF3 04:AAE3: E1        .byte $E1   ; 
- D 1 - I - 0x012AF4 04:AAE4: E1        .byte $E1   ; 
- D 1 - I - 0x012AF5 04:AAE5: E9        .byte $E9   ; 
- D 1 - I - 0x012AF6 04:AAE6: EF        .byte $EF   ; 
- D 1 - I - 0x012AF7 04:AAE7: E9        .byte $E9   ; 
- D 1 - I - 0x012AF8 04:AAE8: F1        .byte $F1   ; 
- D 1 - I - 0x012AF9 04:AAE9: F1        .byte $F1   ; 
- D 1 - I - 0x012AFA 04:AAEA: F9        .byte $F9   ; 
- D 1 - I - 0x012AFB 04:AAEB: F9        .byte $F9   ; 
off_AAEC_03:
- - - - - - 0x012AFC 04:AAEC: E8        .byte $E8   ; 
- - - - - - 0x012AFD 04:AAED: E8        .byte $E8   ; 
- - - - - - 0x012AFE 04:AAEE: F0        .byte $F0   ; 
- - - - - - 0x012AFF 04:AAEF: F0        .byte $F0   ; 
- - - - - - 0x012B00 04:AAF0: F0        .byte $F0   ; 
- - - - - - 0x012B01 04:AAF1: F8        .byte $F8   ; 
- - - - - - 0x012B02 04:AAF2: F8        .byte $F8   ; 
- - - - - - 0x012B03 04:AAF3: E1        .byte $E1   ; 
- - - - - - 0x012B04 04:AAF4: E1        .byte $E1   ; 
off_AAF5_03:
- D 1 - I - 0x012B05 04:AAF5: FC        .byte $FC   ; 
- D 1 - I - 0x012B06 04:AAF6: FC        .byte $FC   ; 
- D 1 - I - 0x012B07 04:AAF7: E4        .byte $E4   ; 
- D 1 - I - 0x012B08 04:AAF8: E4        .byte $E4   ; 
- D 1 - I - 0x012B09 04:AAF9: F4        .byte $F4   ; 
- D 1 - I - 0x012B0A 04:AAFA: F4        .byte $F4   ; 
- D 1 - I - 0x012B0B 04:AAFB: EC        .byte $EC   ; 
- D 1 - I - 0x012B0C 04:AAFC: EC        .byte $EC   ; 
- D 1 - I - 0x012B0D 04:AAFD: EC        .byte $EC   ; 
off_AAFE_03:
- D 1 - I - 0x012B0E 04:AAFE: EA        .byte $EA   ; 
- D 1 - I - 0x012B0F 04:AAFF: EA        .byte $EA   ; 
- D 1 - I - 0x012B10 04:AB00: EA        .byte $EA   ; 
- D 1 - I - 0x012B11 04:AB01: EA        .byte $EA   ; 
- D 1 - I - 0x012B12 04:AB02: F2        .byte $F2   ; 
- D 1 - I - 0x012B13 04:AB03: F2        .byte $F2   ; 
- D 1 - I - 0x012B14 04:AB04: F2        .byte $F2   ; 
- D 1 - I - 0x012B15 04:AB05: F2        .byte $F2   ; 
- D 1 - I - 0x012B16 04:AB06: FA        .byte $FA   ; 
off_AB07_03:
- D 1 - I - 0x012B17 04:AB07: F8        .byte $F8   ; 
- D 1 - I - 0x012B18 04:AB08: F8        .byte $F8   ; 
- D 1 - I - 0x012B19 04:AB09: EB        .byte $EB   ; 
- D 1 - I - 0x012B1A 04:AB0A: E0        .byte $E0   ; 
- D 1 - I - 0x012B1B 04:AB0B: E0        .byte $E0   ; 
- D 1 - I - 0x012B1C 04:AB0C: E8        .byte $E8   ; 
- D 1 - I - 0x012B1D 04:AB0D: E8        .byte $E8   ; 
- D 1 - I - 0x012B1E 04:AB0E: F0        .byte $F0   ; 
off_AB0F_03:
- D 1 - I - 0x012B1F 04:AB0F: F0        .byte $F0   ; 
- D 1 - I - 0x012B20 04:AB10: F8        .byte $F8   ; 
- D 1 - I - 0x012B21 04:AB11: F0        .byte $F0   ; 
- D 1 - I - 0x012B22 04:AB12: F8        .byte $F8   ; 
- D 1 - I - 0x012B23 04:AB13: E8        .byte $E8   ; 
- D 1 - I - 0x012B24 04:AB14: F0        .byte $F0   ; 
- D 1 - I - 0x012B25 04:AB15: F8        .byte $F8   ; 
- D 1 - I - 0x012B26 04:AB16: F0        .byte $F0   ; 
- D 1 - I - 0x012B27 04:AB17: F8        .byte $F8   ; 
off_AB18_03:
- D 1 - I - 0x012B28 04:AB18: DE        .byte $DE   ; 
- D 1 - I - 0x012B29 04:AB19: DE        .byte $DE   ; 
- D 1 - I - 0x012B2A 04:AB1A: E6        .byte $E6   ; 
- D 1 - I - 0x012B2B 04:AB1B: E6        .byte $E6   ; 
- D 1 - I - 0x012B2C 04:AB1C: EE        .byte $EE   ; 
- D 1 - I - 0x012B2D 04:AB1D: EE        .byte $EE   ; 
- D 1 - I - 0x012B2E 04:AB1E: F6        .byte $F6   ; 
- D 1 - I - 0x012B2F 04:AB1F: F6        .byte $F6   ; 
- D 1 - I - 0x012B30 04:AB20: EE        .byte $EE   ; 
off_AB21_03:
- D 1 - I - 0x012B31 04:AB21: F8        .byte $F8   ; 
- D 1 - I - 0x012B32 04:AB22: F0        .byte $F0   ; 
- D 1 - I - 0x012B33 04:AB23: F8        .byte $F8   ; 
- D 1 - I - 0x012B34 04:AB24: E8        .byte $E8   ; 
- D 1 - I - 0x012B35 04:AB25: E0        .byte $E0   ; 
- D 1 - I - 0x012B36 04:AB26: E0        .byte $E0   ; 
- D 1 - I - 0x012B37 04:AB27: E8        .byte $E8   ; 
- D 1 - I - 0x012B38 04:AB28: EF        .byte $EF   ; 
- D 1 - I - 0x012B39 04:AB29: F0        .byte $F0   ; 
off_AB2A_03:
- D 1 - I - 0x012B3A 04:AB2A: EC        .byte $EC   ; 
- D 1 - I - 0x012B3B 04:AB2B: EC        .byte $EC   ; 
- D 1 - I - 0x012B3C 04:AB2C: F4        .byte $F4   ; 
- D 1 - I - 0x012B3D 04:AB2D: F4        .byte $F4   ; 
- D 1 - I - 0x012B3E 04:AB2E: F4        .byte $F4   ; 
- D 1 - I - 0x012B3F 04:AB2F: EC        .byte $EC   ; 
- D 1 - I - 0x012B40 04:AB30: FC        .byte $FC   ; 
- D 1 - I - 0x012B41 04:AB31: FC        .byte $FC   ; 
- D 1 - I - 0x012B42 04:AB32: FC        .byte $FC   ; 
off_AB33_03:
- D 1 - I - 0x012B43 04:AB33: EC        .byte $EC   ; 
- D 1 - I - 0x012B44 04:AB34: EC        .byte $EC   ; 
- D 1 - I - 0x012B45 04:AB35: EC        .byte $EC   ; 
- D 1 - I - 0x012B46 04:AB36: F4        .byte $F4   ; 
- D 1 - I - 0x012B47 04:AB37: F4        .byte $F4   ; 
- D 1 - I - 0x012B48 04:AB38: F4        .byte $F4   ; 
- D 1 - I - 0x012B49 04:AB39: FC        .byte $FC   ; 
- D 1 - I - 0x012B4A 04:AB3A: FC        .byte $FC   ; 
- D 1 - I - 0x012B4B 04:AB3B: FC        .byte $FC   ; 
off_AB3C_03:
- D 1 - I - 0x012B4C 04:AB3C: E8        .byte $E8   ; 
- D 1 - I - 0x012B4D 04:AB3D: E8        .byte $E8   ; 
- D 1 - I - 0x012B4E 04:AB3E: F0        .byte $F0   ; 
- D 1 - I - 0x012B4F 04:AB3F: F0        .byte $F0   ; 
- D 1 - I - 0x012B50 04:AB40: F0        .byte $F0   ; 
- D 1 - I - 0x012B51 04:AB41: F8        .byte $F8   ; 
- D 1 - I - 0x012B52 04:AB42: F8        .byte $F8   ; 
- D 1 - I - 0x012B53 04:AB43: F8        .byte $F8   ; 
- D 1 - I - 0x012B54 04:AB44: E8        .byte $E8   ; 
off_AB45_03:
- D 1 - I - 0x012B55 04:AB45: F8        .byte $F8   ; 
- D 1 - I - 0x012B56 04:AB46: F0        .byte $F0   ; 
- D 1 - I - 0x012B57 04:AB47: E8        .byte $E8   ; 
- D 1 - I - 0x012B58 04:AB48: E8        .byte $E8   ; 
- D 1 - I - 0x012B59 04:AB49: F0        .byte $F0   ; 
- D 1 - I - 0x012B5A 04:AB4A: F8        .byte $F8   ; 
off_AB4B_03:
- D 1 - I - 0x012B5B 04:AB4B: F8        .byte $F8   ; 
- D 1 - I - 0x012B5C 04:AB4C: F0        .byte $F0   ; 
- D 1 - I - 0x012B5D 04:AB4D: E8        .byte $E8   ; 
- D 1 - I - 0x012B5E 04:AB4E: F8        .byte $F8   ; 
- D 1 - I - 0x012B5F 04:AB4F: F0        .byte $F0   ; 
- D 1 - I - 0x012B60 04:AB50: E8        .byte $E8   ; 
- D 1 - I - 0x012B61 04:AB51: E8        .byte $E8   ; 
- D 1 - I - 0x012B62 04:AB52: F0        .byte $F0   ; 
- D 1 - I - 0x012B63 04:AB53: F8        .byte $F8   ; 
off_AB54_03:
- D 1 - I - 0x012B64 04:AB54: E1        .byte $E1   ; 
- D 1 - I - 0x012B65 04:AB55: E1        .byte $E1   ; 
- D 1 - I - 0x012B66 04:AB56: E9        .byte $E9   ; 
- D 1 - I - 0x012B67 04:AB57: F1        .byte $F1   ; 
- D 1 - I - 0x012B68 04:AB58: F9        .byte $F9   ; 
- D 1 - I - 0x012B69 04:AB59: F9        .byte $F9   ; 
- D 1 - I - 0x012B6A 04:AB5A: EF        .byte $EF   ; 
- D 1 - I - 0x012B6B 04:AB5B: E9        .byte $E9   ; 
- D 1 - I - 0x012B6C 04:AB5C: F1        .byte $F1   ; 
off_AB5D_03:
- D 1 - I - 0x012B6D 04:AB5D: E8        .byte $E8   ; 
- D 1 - I - 0x012B6E 04:AB5E: E8        .byte $E8   ; 
- D 1 - I - 0x012B6F 04:AB5F: F0        .byte $F0   ; 
- D 1 - I - 0x012B70 04:AB60: F8        .byte $F8   ; 
- D 1 - I - 0x012B71 04:AB61: E0        .byte $E0   ; 
- D 1 - I - 0x012B72 04:AB62: E0        .byte $E0   ; 
- D 1 - I - 0x012B73 04:AB63: F0        .byte $F0   ; 
- D 1 - I - 0x012B74 04:AB64: F0        .byte $F0   ; 
- D 1 - I - 0x012B75 04:AB65: F8        .byte $F8   ; 
off_AB66_03:
- D 1 - I - 0x012B76 04:AB66: E7        .byte $E7   ; 
- D 1 - I - 0x012B77 04:AB67: E7        .byte $E7   ; 
- D 1 - I - 0x012B78 04:AB68: EF        .byte $EF   ; 
- D 1 - I - 0x012B79 04:AB69: F4        .byte $F4   ; 
- D 1 - I - 0x012B7A 04:AB6A: EF        .byte $EF   ; 
- D 1 - I - 0x012B7B 04:AB6B: DF        .byte $DF   ; 
- D 1 - I - 0x012B7C 04:AB6C: DF        .byte $DF   ; 
- D 1 - I - 0x012B7D 04:AB6D: F7        .byte $F7   ; 
- D 1 - I - 0x012B7E 04:AB6E: F4        .byte $F4   ; 
off_AB6F_03:
- D 1 - I - 0x012B7F 04:AB6F: E3        .byte $E3   ; 
- D 1 - I - 0x012B80 04:AB70: E3        .byte $E3   ; 
- D 1 - I - 0x012B81 04:AB71: F3        .byte $F3   ; 
- D 1 - I - 0x012B82 04:AB72: FB        .byte $FB   ; 
- D 1 - I - 0x012B83 04:AB73: FB        .byte $FB   ; 
- D 1 - I - 0x012B84 04:AB74: EB        .byte $EB   ; 
- D 1 - I - 0x012B85 04:AB75: EB        .byte $EB   ; 
- D 1 - I - 0x012B86 04:AB76: F3        .byte $F3   ; 
- D 1 - I - 0x012B87 04:AB77: F3        .byte $F3   ; 
off_AB78_03:
- D 1 - I - 0x012B88 04:AB78: F8        .byte $F8   ; 
- D 1 - I - 0x012B89 04:AB79: E8        .byte $E8   ; 
- D 1 - I - 0x012B8A 04:AB7A: E8        .byte $E8   ; 
- D 1 - I - 0x012B8B 04:AB7B: F0        .byte $F0   ; 
- D 1 - I - 0x012B8C 04:AB7C: F0        .byte $F0   ; 
- D 1 - I - 0x012B8D 04:AB7D: E1        .byte $E1   ; 
- D 1 - I - 0x012B8E 04:AB7E: E1        .byte $E1   ; 
- D 1 - I - 0x012B8F 04:AB7F: F8        .byte $F8   ; 
- D 1 - I - 0x012B90 04:AB80: EE        .byte $EE   ; 
off_AB81_03:
- D 1 - I - 0x012B91 04:AB81: D8        .byte $D8   ; 
- D 1 - I - 0x012B92 04:AB82: D8        .byte $D8   ; 
- D 1 - I - 0x012B93 04:AB83: E0        .byte $E0   ; 
- D 1 - I - 0x012B94 04:AB84: E0        .byte $E0   ; 
- D 1 - I - 0x012B95 04:AB85: E8        .byte $E8   ; 
- D 1 - I - 0x012B96 04:AB86: E8        .byte $E8   ; 
- D 1 - I - 0x012B97 04:AB87: F0        .byte $F0   ; 
- D 1 - I - 0x012B98 04:AB88: F0        .byte $F0   ; 
- D 1 - I - 0x012B99 04:AB89: F8        .byte $F8   ; 
off_AB8A_03:
- D 1 - I - 0x012B9A 04:AB8A: F4        .byte $F4   ; 
- D 1 - I - 0x012B9B 04:AB8B: E8        .byte $E8   ; 
- D 1 - I - 0x012B9C 04:AB8C: E8        .byte $E8   ; 
- D 1 - I - 0x012B9D 04:AB8D: F8        .byte $F8   ; 
- D 1 - I - 0x012B9E 04:AB8E: F8        .byte $F8   ; 
- D 1 - I - 0x012B9F 04:AB8F: F0        .byte $F0   ; 
- D 1 - I - 0x012BA0 04:AB90: F8        .byte $F8   ; 
- D 1 - I - 0x012BA1 04:AB91: F0        .byte $F0   ; 
- D 1 - I - 0x012BA2 04:AB92: F0        .byte $F0   ; 
off_AB93_03:
- D 1 - I - 0x012BA3 04:AB93: E0        .byte $E0   ; 
- D 1 - I - 0x012BA4 04:AB94: E0        .byte $E0   ; 
- D 1 - I - 0x012BA5 04:AB95: F8        .byte $F8   ; 
- D 1 - I - 0x012BA6 04:AB96: E8        .byte $E8   ; 
- D 1 - I - 0x012BA7 04:AB97: E8        .byte $E8   ; 
- D 1 - I - 0x012BA8 04:AB98: F0        .byte $F0   ; 
- D 1 - I - 0x012BA9 04:AB99: F0        .byte $F0   ; 
- D 1 - I - 0x012BAA 04:AB9A: F8        .byte $F8   ; 
- D 1 - I - 0x012BAB 04:AB9B: F0        .byte $F0   ; 
off_AB9C_03:
- D 1 - I - 0x012BAC 04:AB9C: DA        .byte $DA   ; 
- D 1 - I - 0x012BAD 04:AB9D: DA        .byte $DA   ; 
- D 1 - I - 0x012BAE 04:AB9E: E2        .byte $E2   ; 
- D 1 - I - 0x012BAF 04:AB9F: EA        .byte $EA   ; 
- D 1 - I - 0x012BB0 04:ABA0: E2        .byte $E2   ; 
- D 1 - I - 0x012BB1 04:ABA1: EA        .byte $EA   ; 
- D 1 - I - 0x012BB2 04:ABA2: F2        .byte $F2   ; 
- D 1 - I - 0x012BB3 04:ABA3: F2        .byte $F2   ; 
- D 1 - I - 0x012BB4 04:ABA4: FA        .byte $FA   ; 
off_ABA5_03:
- D 1 - I - 0x012BB5 04:ABA5: E8        .byte $E8   ; 
- D 1 - I - 0x012BB6 04:ABA6: F8        .byte $F8   ; 
- D 1 - I - 0x012BB7 04:ABA7: F8        .byte $F8   ; 
- D 1 - I - 0x012BB8 04:ABA8: EE        .byte $EE   ; 
- D 1 - I - 0x012BB9 04:ABA9: E8        .byte $E8   ; 
- D 1 - I - 0x012BBA 04:ABAA: F0        .byte $F0   ; 
- D 1 - I - 0x012BBB 04:ABAB: F0        .byte $F0   ; 
- D 1 - I - 0x012BBC 04:ABAC: E0        .byte $E0   ; 
- D 1 - I - 0x012BBD 04:ABAD: E0        .byte $E0   ; 
off_ABAE_03:
- D 1 - I - 0x012BBE 04:ABAE: E2        .byte $E2   ; 
- D 1 - I - 0x012BBF 04:ABAF: F8        .byte $F8   ; 
- D 1 - I - 0x012BC0 04:ABB0: E2        .byte $E2   ; 
- D 1 - I - 0x012BC1 04:ABB1: F0        .byte $F0   ; 
- D 1 - I - 0x012BC2 04:ABB2: F0        .byte $F0   ; 
- D 1 - I - 0x012BC3 04:ABB3: E8        .byte $E8   ; 
- D 1 - I - 0x012BC4 04:ABB4: F8        .byte $F8   ; 
- D 1 - I - 0x012BC5 04:ABB5: E8        .byte $E8   ; 
- D 1 - I - 0x012BC6 04:ABB6: EA        .byte $EA   ; 
off_ABB7_03:
- D 1 - I - 0x012BC7 04:ABB7: F0        .byte $F0   ; 
- D 1 - I - 0x012BC8 04:ABB8: F8        .byte $F8   ; 
- D 1 - I - 0x012BC9 04:ABB9: E8        .byte $E8   ; 
- D 1 - I - 0x012BCA 04:ABBA: E0        .byte $E0   ; 
- D 1 - I - 0x012BCB 04:ABBB: F1        .byte $F1   ; 
- D 1 - I - 0x012BCC 04:ABBC: F0        .byte $F0   ; 
- D 1 - I - 0x012BCD 04:ABBD: F8        .byte $F8   ; 
- D 1 - I - 0x012BCE 04:ABBE: E0        .byte $E0   ; 
- D 1 - I - 0x012BCF 04:ABBF: E8        .byte $E8   ; 
off_ABC0_03:
- D 1 - I - 0x012BD0 04:ABC0: EA        .byte $EA   ; 
- D 1 - I - 0x012BD1 04:ABC1: F2        .byte $F2   ; 
- D 1 - I - 0x012BD2 04:ABC2: ED        .byte $ED   ; 
- D 1 - I - 0x012BD3 04:ABC3: FA        .byte $FA   ; 
- D 1 - I - 0x012BD4 04:ABC4: FA        .byte $FA   ; 
- D 1 - I - 0x012BD5 04:ABC5: EA        .byte $EA   ; 
- D 1 - I - 0x012BD6 04:ABC6: F2        .byte $F2   ; 
- D 1 - I - 0x012BD7 04:ABC7: E2        .byte $E2   ; 
- D 1 - I - 0x012BD8 04:ABC8: E2        .byte $E2   ; 
off_ABC9_03:
- D 1 - I - 0x012BD9 04:ABC9: F3        .byte $F3   ; 
- D 1 - I - 0x012BDA 04:ABCA: F3        .byte $F3   ; 
- D 1 - I - 0x012BDB 04:ABCB: FB        .byte $FB   ; 
- D 1 - I - 0x012BDC 04:ABCC: FB        .byte $FB   ; 
- D 1 - I - 0x012BDD 04:ABCD: EB        .byte $EB   ; 
- D 1 - I - 0x012BDE 04:ABCE: EB        .byte $EB   ; 
- D 1 - I - 0x012BDF 04:ABCF: EB        .byte $EB   ; 
- D 1 - I - 0x012BE0 04:ABD0: E3        .byte $E3   ; 
- D 1 - I - 0x012BE1 04:ABD1: E3        .byte $E3   ; 
off_ABD2_03:
- D 1 - I - 0x012BE2 04:ABD2: E0        .byte $E0   ; 
- D 1 - I - 0x012BE3 04:ABD3: E0        .byte $E0   ; 
- D 1 - I - 0x012BE4 04:ABD4: E8        .byte $E8   ; 
- D 1 - I - 0x012BE5 04:ABD5: E8        .byte $E8   ; 
- D 1 - I - 0x012BE6 04:ABD6: F0        .byte $F0   ; 
- D 1 - I - 0x012BE7 04:ABD7: F0        .byte $F0   ; 
- D 1 - I - 0x012BE8 04:ABD8: F8        .byte $F8   ; 
- D 1 - I - 0x012BE9 04:ABD9: F8        .byte $F8   ; 
- D 1 - I - 0x012BEA 04:ABDA: DC        .byte $DC   ; 
off_ABDB_03:
- D 1 - I - 0x012BEB 04:ABDB: F8        .byte $F8   ; 
- D 1 - I - 0x012BEC 04:ABDC: E7        .byte $E7   ; 
- D 1 - I - 0x012BED 04:ABDD: EF        .byte $EF   ; 
- D 1 - I - 0x012BEE 04:ABDE: E0        .byte $E0   ; 
- D 1 - I - 0x012BEF 04:ABDF: E0        .byte $E0   ; 
- D 1 - I - 0x012BF0 04:ABE0: E8        .byte $E8   ; 
- D 1 - I - 0x012BF1 04:ABE1: E8        .byte $E8   ; 
- D 1 - I - 0x012BF2 04:ABE2: F0        .byte $F0   ; 
off_ABE3_03:
- D 1 - I - 0x012BF3 04:ABE3: D8        .byte $D8   ; 
- D 1 - I - 0x012BF4 04:ABE4: E0        .byte $E0   ; 
- D 1 - I - 0x012BF5 04:ABE5: F8        .byte $F8   ; 
- D 1 - I - 0x012BF6 04:ABE6: F0        .byte $F0   ; 
- D 1 - I - 0x012BF7 04:ABE7: F0        .byte $F0   ; 
- D 1 - I - 0x012BF8 04:ABE8: E8        .byte $E8   ; 
- D 1 - I - 0x012BF9 04:ABE9: E8        .byte $E8   ; 
- D 1 - I - 0x012BFA 04:ABEA: E0        .byte $E0   ; 
off_ABEB_03:
- D 1 - I - 0x012BFB 04:ABEB: F0        .byte $F0   ; 
- D 1 - I - 0x012BFC 04:ABEC: F0        .byte $F0   ; 
- D 1 - I - 0x012BFD 04:ABED: F8        .byte $F8   ; 
- D 1 - I - 0x012BFE 04:ABEE: F8        .byte $F8   ; 
- D 1 - I - 0x012BFF 04:ABEF: F2        .byte $F2   ; 
- D 1 - I - 0x012C00 04:ABF0: FA        .byte $FA   ; 
- D 1 - I - 0x012C01 04:ABF1: F0        .byte $F0   ; 
- D 1 - I - 0x012C02 04:ABF2: F8        .byte $F8   ; 
off_ABF3_03:
- D 1 - I - 0x012C03 04:ABF3: E8        .byte $E8   ; 
- D 1 - I - 0x012C04 04:ABF4: E8        .byte $E8   ; 
- D 1 - I - 0x012C05 04:ABF5: F0        .byte $F0   ; 
- D 1 - I - 0x012C06 04:ABF6: F0        .byte $F0   ; 
- D 1 - I - 0x012C07 04:ABF7: E0        .byte $E0   ; 
- D 1 - I - 0x012C08 04:ABF8: E0        .byte $E0   ; 
- D 1 - I - 0x012C09 04:ABF9: D8        .byte $D8   ; 
- D 1 - I - 0x012C0A 04:ABFA: D8        .byte $D8   ; 
off_ABFB_03:
- D 1 - I - 0x012C0B 04:ABFB: E7        .byte $E7   ; 
- D 1 - I - 0x012C0C 04:ABFC: E7        .byte $E7   ; 
- D 1 - I - 0x012C0D 04:ABFD: EF        .byte $EF   ; 
- D 1 - I - 0x012C0E 04:ABFE: F7        .byte $F7   ; 
- D 1 - I - 0x012C0F 04:ABFF: EF        .byte $EF   ; 
- D 1 - I - 0x012C10 04:AC00: F7        .byte $F7   ; 
- D 1 - I - 0x012C11 04:AC01: DF        .byte $DF   ; 
- D 1 - I - 0x012C12 04:AC02: DF        .byte $DF   ; 
off_AC03_03:
- D 1 - I - 0x012C13 04:AC03: E0        .byte $E0   ; 
- D 1 - I - 0x012C14 04:AC04: E0        .byte $E0   ; 
- D 1 - I - 0x012C15 04:AC05: F0        .byte $F0   ; 
- D 1 - I - 0x012C16 04:AC06: F0        .byte $F0   ; 
- D 1 - I - 0x012C17 04:AC07: F8        .byte $F8   ; 
- D 1 - I - 0x012C18 04:AC08: F8        .byte $F8   ; 
- D 1 - I - 0x012C19 04:AC09: E8        .byte $E8   ; 
- D 1 - I - 0x012C1A 04:AC0A: E8        .byte $E8   ; 
off_AC0B_03:
- D 1 - I - 0x012C1B 04:AC0B: F8        .byte $F8   ; 
- D 1 - I - 0x012C1C 04:AC0C: F8        .byte $F8   ; 
- D 1 - I - 0x012C1D 04:AC0D: F0        .byte $F0   ; 
- D 1 - I - 0x012C1E 04:AC0E: F0        .byte $F0   ; 
- D 1 - I - 0x012C1F 04:AC0F: F0        .byte $F0   ; 
- D 1 - I - 0x012C20 04:AC10: F8        .byte $F8   ; 
- D 1 - I - 0x012C21 04:AC11: F8        .byte $F8   ; 
- D 1 - I - 0x012C22 04:AC12: F0        .byte $F0   ; 
off_AC13_03:
- D 1 - I - 0x012C23 04:AC13: CF        .byte $CF   ; 
- D 1 - I - 0x012C24 04:AC14: CF        .byte $CF   ; 
- D 1 - I - 0x012C25 04:AC15: CF        .byte $CF   ; 
- D 1 - I - 0x012C26 04:AC16: CF        .byte $CF   ; 
- D 1 - I - 0x012C27 04:AC17: D7        .byte $D7   ; 
- D 1 - I - 0x012C28 04:AC18: D7        .byte $D7   ; 
- D 1 - I - 0x012C29 04:AC19: D7        .byte $D7   ; 
- D 1 - I - 0x012C2A 04:AC1A: D7        .byte $D7   ; 
off_AC1B_03:
- D 1 - I - 0x012C2B 04:AC1B: F8        .byte $F8   ; 
- D 1 - I - 0x012C2C 04:AC1C: F8        .byte $F8   ; 
- D 1 - I - 0x012C2D 04:AC1D: E8        .byte $E8   ; 
- D 1 - I - 0x012C2E 04:AC1E: E8        .byte $E8   ; 
- D 1 - I - 0x012C2F 04:AC1F: F0        .byte $F0   ; 
- D 1 - I - 0x012C30 04:AC20: F0        .byte $F0   ; 
- D 1 - I - 0x012C31 04:AC21: E0        .byte $E0   ; 
- D 1 - I - 0x012C32 04:AC22: E0        .byte $E0   ; 
off_AC23_03:
- D 1 - I - 0x012C33 04:AC23: F0        .byte $F0   ; 
- D 1 - I - 0x012C34 04:AC24: F0        .byte $F0   ; 
- D 1 - I - 0x012C35 04:AC25: F0        .byte $F0   ; 
- D 1 - I - 0x012C36 04:AC26: EE        .byte $EE   ; 
- D 1 - I - 0x012C37 04:AC27: F8        .byte $F8   ; 
- D 1 - I - 0x012C38 04:AC28: F8        .byte $F8   ; 
- D 1 - I - 0x012C39 04:AC29: F8        .byte $F8   ; 
- D 1 - I - 0x012C3A 04:AC2A: F6        .byte $F6   ; 
off_AC2B_03:
- D 1 - I - 0x012C3B 04:AC2B: E0        .byte $E0   ; 
- D 1 - I - 0x012C3C 04:AC2C: E0        .byte $E0   ; 
- D 1 - I - 0x012C3D 04:AC2D: E8        .byte $E8   ; 
- D 1 - I - 0x012C3E 04:AC2E: F0        .byte $F0   ; 
- D 1 - I - 0x012C3F 04:AC2F: F0        .byte $F0   ; 
- D 1 - I - 0x012C40 04:AC30: F8        .byte $F8   ; 
- D 1 - I - 0x012C41 04:AC31: F8        .byte $F8   ; 
- D 1 - I - 0x012C42 04:AC32: E8        .byte $E8   ; 
off_AC33_03:
- D 1 - I - 0x012C43 04:AC33: FB        .byte $FB   ; 
- D 1 - I - 0x012C44 04:AC34: FB        .byte $FB   ; 
- D 1 - I - 0x012C45 04:AC35: F3        .byte $F3   ; 
- D 1 - I - 0x012C46 04:AC36: F1        .byte $F1   ; 
- D 1 - I - 0x012C47 04:AC37: F9        .byte $F9   ; 
- D 1 - I - 0x012C48 04:AC38: F3        .byte $F3   ; 
- D 1 - I - 0x012C49 04:AC39: F3        .byte $F3   ; 
- D 1 - I - 0x012C4A 04:AC3A: FB        .byte $FB   ; 
off_AC3B_03:
- D 1 - I - 0x012C4B 04:AC3B: F0        .byte $F0   ; 
- D 1 - I - 0x012C4C 04:AC3C: F0        .byte $F0   ; 
- D 1 - I - 0x012C4D 04:AC3D: F8        .byte $F8   ; 
- D 1 - I - 0x012C4E 04:AC3E: F8        .byte $F8   ; 
- D 1 - I - 0x012C4F 04:AC3F: E8        .byte $E8   ; 
- D 1 - I - 0x012C50 04:AC40: E8        .byte $E8   ; 
- D 1 - I - 0x012C51 04:AC41: F8        .byte $F8   ; 
- D 1 - I - 0x012C52 04:AC42: F0        .byte $F0   ; 
off_AC43_03:
- D 1 - I - 0x012C53 04:AC43: F2        .byte $F2   ; 
- D 1 - I - 0x012C54 04:AC44: F0        .byte $F0   ; 
- D 1 - I - 0x012C55 04:AC45: F0        .byte $F0   ; 
- D 1 - I - 0x012C56 04:AC46: F0        .byte $F0   ; 
- D 1 - I - 0x012C57 04:AC47: FA        .byte $FA   ; 
- D 1 - I - 0x012C58 04:AC48: F8        .byte $F8   ; 
- D 1 - I - 0x012C59 04:AC49: F8        .byte $F8   ; 
- D 1 - I - 0x012C5A 04:AC4A: F8        .byte $F8   ; 
off_AC4B_03:
- D 1 - I - 0x012C5B 04:AC4B: F1        .byte $F1   ; 
- D 1 - I - 0x012C5C 04:AC4C: F1        .byte $F1   ; 
- D 1 - I - 0x012C5D 04:AC4D: F9        .byte $F9   ; 
- D 1 - I - 0x012C5E 04:AC4E: F9        .byte $F9   ; 
- D 1 - I - 0x012C5F 04:AC4F: F1        .byte $F1   ; 
- D 1 - I - 0x012C60 04:AC50: F9        .byte $F9   ; 
- D 1 - I - 0x012C61 04:AC51: F1        .byte $F1   ; 
- D 1 - I - 0x012C62 04:AC52: F9        .byte $F9   ; 
off_AC53_03:
- D 1 - I - 0x012C63 04:AC53: F0        .byte $F0   ; 
- D 1 - I - 0x012C64 04:AC54: F0        .byte $F0   ; 
- D 1 - I - 0x012C65 04:AC55: F0        .byte $F0   ; 
- D 1 - I - 0x012C66 04:AC56: F8        .byte $F8   ; 
- D 1 - I - 0x012C67 04:AC57: F8        .byte $F8   ; 
- D 1 - I - 0x012C68 04:AC58: F8        .byte $F8   ; 
- D 1 - I - 0x012C69 04:AC59: F0        .byte $F0   ; 
- D 1 - I - 0x012C6A 04:AC5A: F8        .byte $F8   ; 
off_AC5B_03:
- D 1 - I - 0x012C6B 04:AC5B: F0        .byte $F0   ; 
- D 1 - I - 0x012C6C 04:AC5C: F0        .byte $F0   ; 
- D 1 - I - 0x012C6D 04:AC5D: F8        .byte $F8   ; 
- D 1 - I - 0x012C6E 04:AC5E: F8        .byte $F8   ; 
- D 1 - I - 0x012C6F 04:AC5F: F0        .byte $F0   ; 
- D 1 - I - 0x012C70 04:AC60: F8        .byte $F8   ; 
- D 1 - I - 0x012C71 04:AC61: E8        .byte $E8   ; 
- D 1 - I - 0x012C72 04:AC62: F0        .byte $F0   ; 
off_AC63_03:
- D 1 - I - 0x012C73 04:AC63: D8        .byte $D8   ; 
- D 1 - I - 0x012C74 04:AC64: F8        .byte $F8   ; 
- D 1 - I - 0x012C75 04:AC65: E8        .byte $E8   ; 
- D 1 - I - 0x012C76 04:AC66: E8        .byte $E8   ; 
- D 1 - I - 0x012C77 04:AC67: F0        .byte $F0   ; 
- D 1 - I - 0x012C78 04:AC68: F0        .byte $F0   ; 
- D 1 - I - 0x012C79 04:AC69: E0        .byte $E0   ; 
- D 1 - I - 0x012C7A 04:AC6A: E0        .byte $E0   ; 
off_AC6B_03:
- D 1 - I - 0x012C7B 04:AC6B: DE        .byte $DE   ; 
- D 1 - I - 0x012C7C 04:AC6C: DE        .byte $DE   ; 
- D 1 - I - 0x012C7D 04:AC6D: E6        .byte $E6   ; 
- D 1 - I - 0x012C7E 04:AC6E: E6        .byte $E6   ; 
- D 1 - I - 0x012C7F 04:AC6F: EE        .byte $EE   ; 
- D 1 - I - 0x012C80 04:AC70: F6        .byte $F6   ; 
- D 1 - I - 0x012C81 04:AC71: EE        .byte $EE   ; 
- D 1 - I - 0x012C82 04:AC72: F6        .byte $F6   ; 
off_AC73_03:
- D 1 - I - 0x012C83 04:AC73: F0        .byte $F0   ; 
- D 1 - I - 0x012C84 04:AC74: F8        .byte $F8   ; 
- D 1 - I - 0x012C85 04:AC75: F0        .byte $F0   ; 
- D 1 - I - 0x012C86 04:AC76: F8        .byte $F8   ; 
- D 1 - I - 0x012C87 04:AC77: E0        .byte $E0   ; 
- D 1 - I - 0x012C88 04:AC78: E8        .byte $E8   ; 
- D 1 - I - 0x012C89 04:AC79: F0        .byte $F0   ; 
- D 1 - I - 0x012C8A 04:AC7A: F8        .byte $F8   ; 
off_AC7B_03:
- D 1 - I - 0x012C8B 04:AC7B: F0        .byte $F0   ; 
- D 1 - I - 0x012C8C 04:AC7C: F0        .byte $F0   ; 
- D 1 - I - 0x012C8D 04:AC7D: F8        .byte $F8   ; 
- D 1 - I - 0x012C8E 04:AC7E: F8        .byte $F8   ; 
- D 1 - I - 0x012C8F 04:AC7F: E8        .byte $E8   ; 
- D 1 - I - 0x012C90 04:AC80: F0        .byte $F0   ; 
- D 1 - I - 0x012C91 04:AC81: F8        .byte $F8   ; 
- D 1 - I - 0x012C92 04:AC82: E8        .byte $E8   ; 
off_AC83_03:
- D 1 - I - 0x012C93 04:AC83: D0        .byte $D0   ; 
- D 1 - I - 0x012C94 04:AC84: D0        .byte $D0   ; 
- D 1 - I - 0x012C95 04:AC85: D8        .byte $D8   ; 
- D 1 - I - 0x012C96 04:AC86: D8        .byte $D8   ; 
- D 1 - I - 0x012C97 04:AC87: D8        .byte $D8   ; 
- D 1 - I - 0x012C98 04:AC88: D0        .byte $D0   ; 
- D 1 - I - 0x012C99 04:AC89: D8        .byte $D8   ; 
off_AC8A_03:
- D 1 - I - 0x012C9A 04:AC8A: D3        .byte $D3   ; 
- D 1 - I - 0x012C9B 04:AC8B: D3        .byte $D3   ; 
- D 1 - I - 0x012C9C 04:AC8C: DB        .byte $DB   ; 
- D 1 - I - 0x012C9D 04:AC8D: DB        .byte $DB   ; 
- D 1 - I - 0x012C9E 04:AC8E: D3        .byte $D3   ; 
- D 1 - I - 0x012C9F 04:AC8F: DB        .byte $DB   ; 
- D 1 - I - 0x012CA0 04:AC90: E3        .byte $E3   ; 
off_AC91_03:
- D 1 - I - 0x012CA1 04:AC91: D2        .byte $D2   ; 
- D 1 - I - 0x012CA2 04:AC92: D2        .byte $D2   ; 
- D 1 - I - 0x012CA3 04:AC93: DA        .byte $DA   ; 
- D 1 - I - 0x012CA4 04:AC94: DA        .byte $DA   ; 
- D 1 - I - 0x012CA5 04:AC95: D2        .byte $D2   ; 
- D 1 - I - 0x012CA6 04:AC96: DA        .byte $DA   ; 
- D 1 - I - 0x012CA7 04:AC97: E2        .byte $E2   ; 
off_AC98_03:
- D 1 - I - 0x012CA8 04:AC98: F4        .byte $F4   ; 
- D 1 - I - 0x012CA9 04:AC99: F4        .byte $F4   ; 
- D 1 - I - 0x012CAA 04:AC9A: F0        .byte $F0   ; 
- D 1 - I - 0x012CAB 04:AC9B: F0        .byte $F0   ; 
- D 1 - I - 0x012CAC 04:AC9C: F8        .byte $F8   ; 
- D 1 - I - 0x012CAD 04:AC9D: F8        .byte $F8   ; 
off_AC9E_03:
- D 1 - I - 0x012CAE 04:AC9E: EF        .byte $EF   ; 
- D 1 - I - 0x012CAF 04:AC9F: F7        .byte $F7   ; 
- D 1 - I - 0x012CB0 04:ACA0: F7        .byte $F7   ; 
- D 1 - I - 0x012CB1 04:ACA1: F7        .byte $F7   ; 
- D 1 - I - 0x012CB2 04:ACA2: E7        .byte $E7   ; 
- D 1 - I - 0x012CB3 04:ACA3: EF        .byte $EF   ; 
off_ACA4_03:
- D 1 - I - 0x012CB4 04:ACA4: EE        .byte $EE   ; 
- D 1 - I - 0x012CB5 04:ACA5: EE        .byte $EE   ; 
- D 1 - I - 0x012CB6 04:ACA6: EE        .byte $EE   ; 
- D 1 - I - 0x012CB7 04:ACA7: F0        .byte $F0   ; 
- D 1 - I - 0x012CB8 04:ACA8: F4        .byte $F4   ; 
off_ACA9_03:
- D 1 - I - 0x012CB9 04:ACA9: F1        .byte $F1   ; 
- - - - - - 0x012CBA 04:ACAA: F1        .byte $F1   ; 
- - - - - - 0x012CBB 04:ACAB: F9        .byte $F9   ; 
- - - - - - 0x012CBC 04:ACAC: F9        .byte $F9   ; 
- - - - - - 0x012CBD 04:ACAD: E9        .byte $E9   ; 
- - - - - - 0x012CBE 04:ACAE: F2        .byte $F2   ; 
off_ACAF_03:
- - - - - - 0x012CBF 04:ACAF: F7        .byte $F7   ; 
- - - - - - 0x012CC0 04:ACB0: F7        .byte $F7   ; 
- - - - - - 0x012CC1 04:ACB1: F7        .byte $F7   ; 
- - - - - - 0x012CC2 04:ACB2: EF        .byte $EF   ; 
- - - - - - 0x012CC3 04:ACB3: EF        .byte $EF   ; 
- - - - - - 0x012CC4 04:ACB4: EF        .byte $EF   ; 
off_ACB5_03:
- - - - - - 0x012CC5 04:ACB5: F1        .byte $F1   ; 
- - - - - - 0x012CC6 04:ACB6: F9        .byte $F9   ; 
- - - - - - 0x012CC7 04:ACB7: E9        .byte $E9   ; 
off_ACB8_03:
- - - - - - 0x012CC8 04:ACB8: F1        .byte $F1   ; 
- - - - - - 0x012CC9 04:ACB9: F9        .byte $F9   ; 
- - - - - - 0x012CCA 04:ACBA: F2        .byte $F2   ; 
- - - - - - 0x012CCB 04:ACBB: F1        .byte $F1   ; 
- - - - - - 0x012CCC 04:ACBC: F9        .byte $F9   ; 
- - - - - - 0x012CCD 04:ACBD: E9        .byte $E9   ; 
off_ACBE_03:
- D 1 - I - 0x012CCE 04:ACBE: F3        .byte $F3   ; 
- D 1 - I - 0x012CCF 04:ACBF: F3        .byte $F3   ; 
- D 1 - I - 0x012CD0 04:ACC0: FB        .byte $FB   ; 
- D 1 - I - 0x012CD1 04:ACC1: FB        .byte $FB   ; 
- D 1 - I - 0x012CD2 04:ACC2: F6        .byte $F6   ; 
- D 1 - I - 0x012CD3 04:ACC3: F6        .byte $F6   ; 
off_ACC4_03:
- D 1 - I - 0x012CD4 04:ACC4: F1        .byte $F1   ; 
- D 1 - I - 0x012CD5 04:ACC5: F9        .byte $F9   ; 
- D 1 - I - 0x012CD6 04:ACC6: F9        .byte $F9   ; 
- D 1 - I - 0x012CD7 04:ACC7: F2        .byte $F2   ; 
off_ACC8_03:
- D 1 - I - 0x012CD8 04:ACC8: F9        .byte $F9   ; 
- D 1 - I - 0x012CD9 04:ACC9: F7        .byte $F7   ; 
- D 1 - I - 0x012CDA 04:ACCA: F1        .byte $F1   ; 
off_ACCB_03:
- D 1 - I - 0x012CDB 04:ACCB: DD        .byte $DD   ; 
- D 1 - I - 0x012CDC 04:ACCC: F2        .byte $F2   ; 
off_ACCD_03:
- D 1 - I - 0x012CDD 04:ACCD: F7        .byte $F7   ; 
- D 1 - I - 0x012CDE 04:ACCE: D8        .byte $D8   ; 
off_ACCF_08:
- D 1 - I - 0x012CDF 04:ACCF: DD AC     .word off_ACDD_00
- D 1 - I - 0x012CE1 04:ACD1: E6 AC     .word off_ACE6_01
- D 1 - I - 0x012CE3 04:ACD3: EF AC     .word off_ACEF_02
- D 1 - I - 0x012CE5 04:ACD5: F8 AC     .word off_ACF8_03
- D 1 - I - 0x012CE7 04:ACD7: 01 AD     .word off_AD01_04
- D 1 - I - 0x012CE9 04:ACD9: 0A AD     .word off_AD0A_05
- D 1 - I - 0x012CEB 04:ACDB: 13 AD     .word off_AD13_06
off_ACDD_00:
- D 1 - I - 0x012CED 04:ACDD: 16        .byte $16   ; 
- D 1 - I - 0x012CEE 04:ACDE: AC AD     .word off_ADAC_00
- D 1 - I - 0x012CF0 04:ACE0: 4A AE     .word off_AE4A_01
- D 1 - I - 0x012CF2 04:ACE2: EC AE     .word off_AEEC_02
- D 1 - I - 0x012CF4 04:ACE4: 77 AF     .word off_AF77_03
off_ACE6_01:
- D 1 - I - 0x012CF6 04:ACE6: 18        .byte $18   ; 
- D 1 - I - 0x012CF7 04:ACE7: 4E AD     .word off_AD4E_00
- D 1 - I - 0x012CF9 04:ACE9: F4 AD     .word off_ADF4_01
- D 1 - I - 0x012CFB 04:ACEB: 92 AE     .word off_AE92_02
- D 1 - I - 0x012CFD 04:ACED: 34 AF     .word off_AF34_03
off_ACEF_02:
- D 1 - I - 0x012CFF 04:ACEF: 17        .byte $17   ; 
- D 1 - I - 0x012D00 04:ACF0: 7E AD     .word off_AD7E_00
- D 1 - I - 0x012D02 04:ACF2: 1C AE     .word off_AE1C_01
- D 1 - I - 0x012D04 04:ACF4: C2 AE     .word off_AEC2_02
- D 1 - I - 0x012D06 04:ACF6: 60 AF     .word off_AF60_03
off_ACF8_03:
- D 1 - I - 0x012D08 04:ACF8: 17        .byte $17   ; 
- D 1 - I - 0x012D09 04:ACF9: 95 AD     .word off_AD95_00
- D 1 - I - 0x012D0B 04:ACFB: 33 AE     .word off_AE33_01
- D 1 - I - 0x012D0D 04:ACFD: D9 AE     .word off_AED9_02
- D 1 - I - 0x012D0F 04:ACFF: 4C AF     .word off_AF4C_03
off_AD01_04:
- D 1 - I - 0x012D11 04:AD01: 18        .byte $18   ; 
- D 1 - I - 0x012D12 04:AD02: 66 AD     .word off_AD66_00
- D 1 - I - 0x012D14 04:AD04: 0C AE     .word off_AE0C_01
- D 1 - I - 0x012D16 04:AD06: AA AE     .word off_AEAA_02
- D 1 - I - 0x012D18 04:AD08: 4C AF     .word off_AF4C_03
off_AD0A_05:
- D 1 - I - 0x012D1A 04:AD0A: 19        .byte $19   ; 
- D 1 - I - 0x012D1B 04:AD0B: 1C AD     .word off_AD1C_00
- D 1 - I - 0x012D1D 04:AD0D: C2 AD     .word off_ADC2_01
- D 1 - I - 0x012D1F 04:AD0F: 60 AE     .word off_AE60_02
- D 1 - I - 0x012D21 04:AD11: 02 AF     .word off_AF02_03
off_AD13_06:
- D 1 - I - 0x012D23 04:AD13: 19        .byte $19   ; 
- D 1 - I - 0x012D24 04:AD14: 35 AD     .word off_AD35_00
- D 1 - I - 0x012D26 04:AD16: DB AD     .word off_ADDB_01
- D 1 - I - 0x012D28 04:AD18: 79 AE     .word off_AE79_02
- D 1 - I - 0x012D2A 04:AD1A: 1B AF     .word off_AF1B_03
off_AD1C_00:
- D 1 - I - 0x012D2C 04:AD1C: 3C        .byte $3C   ; 
- D 1 - I - 0x012D2D 04:AD1D: 3D        .byte $3D   ; 
- D 1 - I - 0x012D2E 04:AD1E: 3E        .byte $3E   ; 
- D 1 - I - 0x012D2F 04:AD1F: 3F        .byte $3F   ; 
- D 1 - I - 0x012D30 04:AD20: 4C        .byte $4C   ; 
- D 1 - I - 0x012D31 04:AD21: 4D        .byte $4D   ; 
- D 1 - I - 0x012D32 04:AD22: 4E        .byte $4E   ; 
- D 1 - I - 0x012D33 04:AD23: 4F        .byte $4F   ; 
- D 1 - I - 0x012D34 04:AD24: 5C        .byte $5C   ; 
- D 1 - I - 0x012D35 04:AD25: 5D        .byte $5D   ; 
- D 1 - I - 0x012D36 04:AD26: 5E        .byte $5E   ; 
- D 1 - I - 0x012D37 04:AD27: 5F        .byte $5F   ; 
- D 1 - I - 0x012D38 04:AD28: 6C        .byte $6C   ; 
- D 1 - I - 0x012D39 04:AD29: 6D        .byte $6D   ; 
- D 1 - I - 0x012D3A 04:AD2A: 6E        .byte $6E   ; 
- D 1 - I - 0x012D3B 04:AD2B: 6F        .byte $6F   ; 
- D 1 - I - 0x012D3C 04:AD2C: 7C        .byte $7C   ; 
- D 1 - I - 0x012D3D 04:AD2D: 7D        .byte $7D   ; 
- D 1 - I - 0x012D3E 04:AD2E: 7E        .byte $7E   ; 
- D 1 - I - 0x012D3F 04:AD2F: 7F        .byte $7F   ; 
- D 1 - I - 0x012D40 04:AD30: 5B        .byte $5B   ; 
- D 1 - I - 0x012D41 04:AD31: 6B        .byte $6B   ; 
- D 1 - I - 0x012D42 04:AD32: 7B        .byte $7B   ; 
- D 1 - I - 0x012D43 04:AD33: 6A        .byte $6A   ; 
- D 1 - I - 0x012D44 04:AD34: 7A        .byte $7A   ; 
off_AD35_00:
- D 1 - I - 0x012D45 04:AD35: 3C        .byte $3C   ; 
- D 1 - I - 0x012D46 04:AD36: 3D        .byte $3D   ; 
- D 1 - I - 0x012D47 04:AD37: 3E        .byte $3E   ; 
- D 1 - I - 0x012D48 04:AD38: 3F        .byte $3F   ; 
- D 1 - I - 0x012D49 04:AD39: 4F        .byte $4F   ; 
- D 1 - I - 0x012D4A 04:AD3A: 39        .byte $39   ; 
- D 1 - I - 0x012D4B 04:AD3B: 3A        .byte $3A   ; 
- D 1 - I - 0x012D4C 04:AD3C: 3B        .byte $3B   ; 
- D 1 - I - 0x012D4D 04:AD3D: 55        .byte $55   ; 
- D 1 - I - 0x012D4E 04:AD3E: 56        .byte $56   ; 
- D 1 - I - 0x012D4F 04:AD3F: 57        .byte $57   ; 
- D 1 - I - 0x012D50 04:AD40: 58        .byte $58   ; 
- D 1 - I - 0x012D51 04:AD41: 59        .byte $59   ; 
- D 1 - I - 0x012D52 04:AD42: 65        .byte $65   ; 
- D 1 - I - 0x012D53 04:AD43: 66        .byte $66   ; 
- D 1 - I - 0x012D54 04:AD44: 67        .byte $67   ; 
- D 1 - I - 0x012D55 04:AD45: 68        .byte $68   ; 
- D 1 - I - 0x012D56 04:AD46: 69        .byte $69   ; 
- D 1 - I - 0x012D57 04:AD47: 75        .byte $75   ; 
- D 1 - I - 0x012D58 04:AD48: 76        .byte $76   ; 
- D 1 - I - 0x012D59 04:AD49: 77        .byte $77   ; 
- D 1 - I - 0x012D5A 04:AD4A: 78        .byte $78   ; 
- D 1 - I - 0x012D5B 04:AD4B: 79        .byte $79   ; 
- D 1 - I - 0x012D5C 04:AD4C: 6A        .byte $6A   ; 
- D 1 - I - 0x012D5D 04:AD4D: 7A        .byte $7A   ; 
off_AD4E_00:
- D 1 - I - 0x012D5E 04:AD4E: 01        .byte $01   ; 
- D 1 - I - 0x012D5F 04:AD4F: 02        .byte $02   ; 
- D 1 - I - 0x012D60 04:AD50: 03        .byte $03   ; 
- D 1 - I - 0x012D61 04:AD51: 04        .byte $04   ; 
- D 1 - I - 0x012D62 04:AD52: 11        .byte $11   ; 
- D 1 - I - 0x012D63 04:AD53: 12        .byte $12   ; 
- D 1 - I - 0x012D64 04:AD54: 13        .byte $13   ; 
- D 1 - I - 0x012D65 04:AD55: 21        .byte $21   ; 
- D 1 - I - 0x012D66 04:AD56: 22        .byte $22   ; 
- D 1 - I - 0x012D67 04:AD57: 50        .byte $50   ; 
- D 1 - I - 0x012D68 04:AD58: 51        .byte $51   ; 
- D 1 - I - 0x012D69 04:AD59: 52        .byte $52   ; 
- D 1 - I - 0x012D6A 04:AD5A: 53        .byte $53   ; 
- D 1 - I - 0x012D6B 04:AD5B: 54        .byte $54   ; 
- D 1 - I - 0x012D6C 04:AD5C: 60        .byte $60   ; 
- D 1 - I - 0x012D6D 04:AD5D: 61        .byte $61   ; 
- D 1 - I - 0x012D6E 04:AD5E: 62        .byte $62   ; 
- D 1 - I - 0x012D6F 04:AD5F: 63        .byte $63   ; 
- D 1 - I - 0x012D70 04:AD60: 64        .byte $64   ; 
- D 1 - I - 0x012D71 04:AD61: 70        .byte $70   ; 
- D 1 - I - 0x012D72 04:AD62: 71        .byte $71   ; 
- D 1 - I - 0x012D73 04:AD63: 72        .byte $72   ; 
- D 1 - I - 0x012D74 04:AD64: 73        .byte $73   ; 
- D 1 - I - 0x012D75 04:AD65: 74        .byte $74   ; 
off_AD66_00:
- D 1 - I - 0x012D76 04:AD66: 01        .byte $01   ; 
- D 1 - I - 0x012D77 04:AD67: 02        .byte $02   ; 
- D 1 - I - 0x012D78 04:AD68: 03        .byte $03   ; 
- D 1 - I - 0x012D79 04:AD69: 04        .byte $04   ; 
- D 1 - I - 0x012D7A 04:AD6A: 11        .byte $11   ; 
- D 1 - I - 0x012D7B 04:AD6B: 12        .byte $12   ; 
- D 1 - I - 0x012D7C 04:AD6C: 13        .byte $13   ; 
- D 1 - I - 0x012D7D 04:AD6D: 14        .byte $14   ; 
- D 1 - I - 0x012D7E 04:AD6E: 22        .byte $22   ; 
- D 1 - I - 0x012D7F 04:AD6F: 23        .byte $23   ; 
- D 1 - I - 0x012D80 04:AD70: 24        .byte $24   ; 
- D 1 - I - 0x012D81 04:AD71: 0B        .byte $0B   ; 
- D 1 - I - 0x012D82 04:AD72: 0C        .byte $0C   ; 
- D 1 - I - 0x012D83 04:AD73: 1A        .byte $1A   ; 
- D 1 - I - 0x012D84 04:AD74: 1B        .byte $1B   ; 
- D 1 - I - 0x012D85 04:AD75: 1C        .byte $1C   ; 
- D 1 - I - 0x012D86 04:AD76: 1D        .byte $1D   ; 
- D 1 - I - 0x012D87 04:AD77: 1E        .byte $1E   ; 
- D 1 - I - 0x012D88 04:AD78: 2A        .byte $2A   ; 
- D 1 - I - 0x012D89 04:AD79: 2B        .byte $2B   ; 
- D 1 - I - 0x012D8A 04:AD7A: 2C        .byte $2C   ; 
- D 1 - I - 0x012D8B 04:AD7B: 2D        .byte $2D   ; 
- D 1 - I - 0x012D8C 04:AD7C: 2E        .byte $2E   ; 
- D 1 - I - 0x012D8D 04:AD7D: 2F        .byte $2F   ; 
off_AD7E_00:
- D 1 - I - 0x012D8E 04:AD7E: 45        .byte $45   ; 
- D 1 - I - 0x012D8F 04:AD7F: 46        .byte $46   ; 
- D 1 - I - 0x012D90 04:AD80: 47        .byte $47   ; 
- D 1 - I - 0x012D91 04:AD81: 48        .byte $48   ; 
- D 1 - I - 0x012D92 04:AD82: 35        .byte $35   ; 
- D 1 - I - 0x012D93 04:AD83: 36        .byte $36   ; 
- D 1 - I - 0x012D94 04:AD84: 37        .byte $37   ; 
- D 1 - I - 0x012D95 04:AD85: 38        .byte $38   ; 
- D 1 - I - 0x012D96 04:AD86: 21        .byte $21   ; 
- D 1 - I - 0x012D97 04:AD87: 26        .byte $26   ; 
- D 1 - I - 0x012D98 04:AD88: 27        .byte $27   ; 
- D 1 - I - 0x012D99 04:AD89: 28        .byte $28   ; 
- D 1 - I - 0x012D9A 04:AD8A: 01        .byte $01   ; 
- D 1 - I - 0x012D9B 04:AD8B: 02        .byte $02   ; 
- D 1 - I - 0x012D9C 04:AD8C: 11        .byte $11   ; 
- D 1 - I - 0x012D9D 04:AD8D: 12        .byte $12   ; 
- D 1 - I - 0x012D9E 04:AD8E: 03        .byte $03   ; 
- D 1 - I - 0x012D9F 04:AD8F: 17        .byte $17   ; 
- D 1 - I - 0x012DA0 04:AD90: 18        .byte $18   ; 
- D 1 - I - 0x012DA1 04:AD91: 19        .byte $19   ; 
- D 1 - I - 0x012DA2 04:AD92: 08        .byte $08   ; 
- D 1 - I - 0x012DA3 04:AD93: 09        .byte $09   ; 
- D 1 - I - 0x012DA4 04:AD94: 49        .byte $49   ; 
off_AD95_00:
- D 1 - I - 0x012DA5 04:AD95: 01        .byte $01   ; 
- D 1 - I - 0x012DA6 04:AD96: 02        .byte $02   ; 
- D 1 - I - 0x012DA7 04:AD97: 03        .byte $03   ; 
- D 1 - I - 0x012DA8 04:AD98: 04        .byte $04   ; 
- D 1 - I - 0x012DA9 04:AD99: 05        .byte $05   ; 
- D 1 - I - 0x012DAA 04:AD9A: 06        .byte $06   ; 
- D 1 - I - 0x012DAB 04:AD9B: 13        .byte $13   ; 
- D 1 - I - 0x012DAC 04:AD9C: 14        .byte $14   ; 
- D 1 - I - 0x012DAD 04:AD9D: 15        .byte $15   ; 
- D 1 - I - 0x012DAE 04:AD9E: 16        .byte $16   ; 
- D 1 - I - 0x012DAF 04:AD9F: 00        .byte $00   ; 
- D 1 - I - 0x012DB0 04:ADA0: 23        .byte $23   ; 
- D 1 - I - 0x012DB1 04:ADA1: 24        .byte $24   ; 
- D 1 - I - 0x012DB2 04:ADA2: 10        .byte $10   ; 
- D 1 - I - 0x012DB3 04:ADA3: 25        .byte $25   ; 
- D 1 - I - 0x012DB4 04:ADA4: 07        .byte $07   ; 
- D 1 - I - 0x012DB5 04:ADA5: 1D        .byte $1D   ; 
- D 1 - I - 0x012DB6 04:ADA6: 1E        .byte $1E   ; 
- D 1 - I - 0x012DB7 04:ADA7: 20        .byte $20   ; 
- D 1 - I - 0x012DB8 04:ADA8: 0D        .byte $0D   ; 
- D 1 - I - 0x012DB9 04:ADA9: 0E        .byte $0E   ; 
- D 1 - I - 0x012DBA 04:ADAA: 0F        .byte $0F   ; 
- D 1 - I - 0x012DBB 04:ADAB: 1F        .byte $1F   ; 
off_ADAC_00:
- D 1 - I - 0x012DBC 04:ADAC: 01        .byte $01   ; 
- D 1 - I - 0x012DBD 04:ADAD: 02        .byte $02   ; 
- D 1 - I - 0x012DBE 04:ADAE: 03        .byte $03   ; 
- D 1 - I - 0x012DBF 04:ADAF: 04        .byte $04   ; 
- D 1 - I - 0x012DC0 04:ADB0: 11        .byte $11   ; 
- D 1 - I - 0x012DC1 04:ADB1: 12        .byte $12   ; 
- D 1 - I - 0x012DC2 04:ADB2: 13        .byte $13   ; 
- D 1 - I - 0x012DC3 04:ADB3: 14        .byte $14   ; 
- D 1 - I - 0x012DC4 04:ADB4: 21        .byte $21   ; 
- D 1 - I - 0x012DC5 04:ADB5: 22        .byte $22   ; 
- D 1 - I - 0x012DC6 04:ADB6: 23        .byte $23   ; 
- D 1 - I - 0x012DC7 04:ADB7: 24        .byte $24   ; 
- D 1 - I - 0x012DC8 04:ADB8: 31        .byte $31   ; 
- D 1 - I - 0x012DC9 04:ADB9: 32        .byte $32   ; 
- D 1 - I - 0x012DCA 04:ADBA: 33        .byte $33   ; 
- D 1 - I - 0x012DCB 04:ADBB: 34        .byte $34   ; 
- D 1 - I - 0x012DCC 04:ADBC: 41        .byte $41   ; 
- D 1 - I - 0x012DCD 04:ADBD: 42        .byte $42   ; 
- D 1 - I - 0x012DCE 04:ADBE: 43        .byte $43   ; 
- D 1 - I - 0x012DCF 04:ADBF: 44        .byte $44   ; 
- D 1 - I - 0x012DD0 04:ADC0: 30        .byte $30   ; 
- D 1 - I - 0x012DD1 04:ADC1: 40        .byte $40   ; 
off_ADC2_01:
- D 1 - I - 0x012DD2 04:ADC2: 01        .byte $01   ; 
- D 1 - I - 0x012DD3 04:ADC3: 01        .byte $01   ; 
- D 1 - I - 0x012DD4 04:ADC4: 01        .byte $01   ; 
- D 1 - I - 0x012DD5 04:ADC5: 01        .byte $01   ; 
- D 1 - I - 0x012DD6 04:ADC6: 01        .byte $01   ; 
- D 1 - I - 0x012DD7 04:ADC7: 01        .byte $01   ; 
- D 1 - I - 0x012DD8 04:ADC8: 01        .byte $01   ; 
- D 1 - I - 0x012DD9 04:ADC9: 01        .byte $01   ; 
- D 1 - I - 0x012DDA 04:ADCA: 00        .byte $00   ; 
- D 1 - I - 0x012DDB 04:ADCB: 00        .byte $00   ; 
- D 1 - I - 0x012DDC 04:ADCC: 00        .byte $00   ; 
- D 1 - I - 0x012DDD 04:ADCD: 01        .byte $01   ; 
- D 1 - I - 0x012DDE 04:ADCE: 02        .byte $02   ; 
- D 1 - I - 0x012DDF 04:ADCF: 00        .byte $00   ; 
- D 1 - I - 0x012DE0 04:ADD0: 00        .byte $00   ; 
- D 1 - I - 0x012DE1 04:ADD1: 01        .byte $01   ; 
- D 1 - I - 0x012DE2 04:ADD2: 02        .byte $02   ; 
- D 1 - I - 0x012DE3 04:ADD3: 01        .byte $01   ; 
- D 1 - I - 0x012DE4 04:ADD4: 01        .byte $01   ; 
- D 1 - I - 0x012DE5 04:ADD5: 01        .byte $01   ; 
- D 1 - I - 0x012DE6 04:ADD6: 02        .byte $02   ; 
- D 1 - I - 0x012DE7 04:ADD7: 02        .byte $02   ; 
- D 1 - I - 0x012DE8 04:ADD8: 02        .byte $02   ; 
- D 1 - I - 0x012DE9 04:ADD9: 02        .byte $02   ; 
- D 1 - I - 0x012DEA 04:ADDA: 02        .byte $02   ; 
off_ADDB_01:
- D 1 - I - 0x012DEB 04:ADDB: 01        .byte $01   ; 
- D 1 - I - 0x012DEC 04:ADDC: 01        .byte $01   ; 
- D 1 - I - 0x012DED 04:ADDD: 01        .byte $01   ; 
- D 1 - I - 0x012DEE 04:ADDE: 01        .byte $01   ; 
- D 1 - I - 0x012DEF 04:ADDF: 01        .byte $01   ; 
- D 1 - I - 0x012DF0 04:ADE0: 01        .byte $01   ; 
- D 1 - I - 0x012DF1 04:ADE1: 01        .byte $01   ; 
- D 1 - I - 0x012DF2 04:ADE2: 01        .byte $01   ; 
- D 1 - I - 0x012DF3 04:ADE3: 02        .byte $02   ; 
- D 1 - I - 0x012DF4 04:ADE4: 00        .byte $00   ; 
- D 1 - I - 0x012DF5 04:ADE5: 00        .byte $00   ; 
- D 1 - I - 0x012DF6 04:ADE6: 01        .byte $01   ; 
- D 1 - I - 0x012DF7 04:ADE7: 01        .byte $01   ; 
- D 1 - I - 0x012DF8 04:ADE8: 02        .byte $02   ; 
- D 1 - I - 0x012DF9 04:ADE9: 02        .byte $02   ; 
- D 1 - I - 0x012DFA 04:ADEA: 02        .byte $02   ; 
- D 1 - I - 0x012DFB 04:ADEB: 02        .byte $02   ; 
- D 1 - I - 0x012DFC 04:ADEC: 02        .byte $02   ; 
- D 1 - I - 0x012DFD 04:ADED: 02        .byte $02   ; 
- D 1 - I - 0x012DFE 04:ADEE: 02        .byte $02   ; 
- D 1 - I - 0x012DFF 04:ADEF: 02        .byte $02   ; 
- D 1 - I - 0x012E00 04:ADF0: 02        .byte $02   ; 
- D 1 - I - 0x012E01 04:ADF1: 02        .byte $02   ; 
- D 1 - I - 0x012E02 04:ADF2: 02        .byte $02   ; 
- D 1 - I - 0x012E03 04:ADF3: 02        .byte $02   ; 
off_ADF4_01:
- D 1 - I - 0x012E04 04:ADF4: 01        .byte $01   ; 
- D 1 - I - 0x012E05 04:ADF5: 01        .byte $01   ; 
- D 1 - I - 0x012E06 04:ADF6: 01        .byte $01   ; 
- D 1 - I - 0x012E07 04:ADF7: 01        .byte $01   ; 
- D 1 - I - 0x012E08 04:ADF8: 01        .byte $01   ; 
- D 1 - I - 0x012E09 04:ADF9: 00        .byte $00   ; 
- D 1 - I - 0x012E0A 04:ADFA: 00        .byte $00   ; 
- D 1 - I - 0x012E0B 04:ADFB: 01        .byte $01   ; 
- D 1 - I - 0x012E0C 04:ADFC: 00        .byte $00   ; 
- D 1 - I - 0x012E0D 04:ADFD: 00        .byte $00   ; 
- D 1 - I - 0x012E0E 04:ADFE: 01        .byte $01   ; 
- D 1 - I - 0x012E0F 04:ADFF: 01        .byte $01   ; 
- D 1 - I - 0x012E10 04:AE00: 01        .byte $01   ; 
- D 1 - I - 0x012E11 04:AE01: 01        .byte $01   ; 
- D 1 - I - 0x012E12 04:AE02: 02        .byte $02   ; 
- D 1 - I - 0x012E13 04:AE03: 02        .byte $02   ; 
- D 1 - I - 0x012E14 04:AE04: 02        .byte $02   ; 
- D 1 - I - 0x012E15 04:AE05: 02        .byte $02   ; 
- D 1 - I - 0x012E16 04:AE06: 02        .byte $02   ; 
- D 1 - I - 0x012E17 04:AE07: 02        .byte $02   ; 
- D 1 - I - 0x012E18 04:AE08: 02        .byte $02   ; 
- D 1 - I - 0x012E19 04:AE09: 02        .byte $02   ; 
- D 1 - I - 0x012E1A 04:AE0A: 02        .byte $02   ; 
- D 1 - I - 0x012E1B 04:AE0B: 02        .byte $02   ; 
off_AE0C_01:
- D 1 - I - 0x012E1C 04:AE0C: 01        .byte $01   ; 
- D 1 - I - 0x012E1D 04:AE0D: 01        .byte $01   ; 
- D 1 - I - 0x012E1E 04:AE0E: 01        .byte $01   ; 
- D 1 - I - 0x012E1F 04:AE0F: 01        .byte $01   ; 
- D 1 - I - 0x012E20 04:AE10: 01        .byte $01   ; 
- D 1 - I - 0x012E21 04:AE11: 00        .byte $00   ; 
- D 1 - I - 0x012E22 04:AE12: 00        .byte $00   ; 
- D 1 - I - 0x012E23 04:AE13: 01        .byte $01   ; 
- D 1 - I - 0x012E24 04:AE14: 00        .byte $00   ; 
- D 1 - I - 0x012E25 04:AE15: 00        .byte $00   ; 
- D 1 - I - 0x012E26 04:AE16: 01        .byte $01   ; 
- D 1 - I - 0x012E27 04:AE17: 01        .byte $01   ; 
- D 1 - I - 0x012E28 04:AE18: 01        .byte $01   ; 
- D 1 - I - 0x012E29 04:AE19: 02        .byte $02   ; 
- D 1 - I - 0x012E2A 04:AE1A: 02        .byte $02   ; 
- D 1 - I - 0x012E2B 04:AE1B: 02        .byte $02   ; 
off_AE1C_01:
- D 1 - I - 0x012E2C 04:AE1C: 02        .byte $02   ; 
- D 1 - I - 0x012E2D 04:AE1D: 02        .byte $02   ; 
- D 1 - I - 0x012E2E 04:AE1E: 02        .byte $02   ; 
- D 1 - I - 0x012E2F 04:AE1F: 02        .byte $02   ; 
- D 1 - I - 0x012E30 04:AE20: 02        .byte $02   ; 
- D 1 - I - 0x012E31 04:AE21: 02        .byte $02   ; 
- D 1 - I - 0x012E32 04:AE22: 02        .byte $02   ; 
- D 1 - I - 0x012E33 04:AE23: 02        .byte $02   ; 
- D 1 - I - 0x012E34 04:AE24: 01        .byte $01   ; 
- D 1 - I - 0x012E35 04:AE25: 00        .byte $00   ; 
- D 1 - I - 0x012E36 04:AE26: 00        .byte $00   ; 
- D 1 - I - 0x012E37 04:AE27: 02        .byte $02   ; 
- D 1 - I - 0x012E38 04:AE28: 01        .byte $01   ; 
- D 1 - I - 0x012E39 04:AE29: 01        .byte $01   ; 
- D 1 - I - 0x012E3A 04:AE2A: 01        .byte $01   ; 
- D 1 - I - 0x012E3B 04:AE2B: 00        .byte $00   ; 
- D 1 - I - 0x012E3C 04:AE2C: 01        .byte $01   ; 
- D 1 - I - 0x012E3D 04:AE2D: 00        .byte $00   ; 
- D 1 - I - 0x012E3E 04:AE2E: 02        .byte $02   ; 
- D 1 - I - 0x012E3F 04:AE2F: 01        .byte $01   ; 
- D 1 - I - 0x012E40 04:AE30: 01        .byte $01   ; 
- D 1 - I - 0x012E41 04:AE31: 01        .byte $01   ; 
- D 1 - I - 0x012E42 04:AE32: 02        .byte $02   ; 
off_AE33_01:
- D 1 - I - 0x012E43 04:AE33: 01        .byte $01   ; 
- D 1 - I - 0x012E44 04:AE34: 01        .byte $01   ; 
- D 1 - I - 0x012E45 04:AE35: 01        .byte $01   ; 
- D 1 - I - 0x012E46 04:AE36: 01        .byte $01   ; 
- D 1 - I - 0x012E47 04:AE37: 01        .byte $01   ; 
- D 1 - I - 0x012E48 04:AE38: 01        .byte $01   ; 
- D 1 - I - 0x012E49 04:AE39: 00        .byte $00   ; 
- D 1 - I - 0x012E4A 04:AE3A: 01        .byte $01   ; 
- D 1 - I - 0x012E4B 04:AE3B: 02        .byte $02   ; 
- D 1 - I - 0x012E4C 04:AE3C: 00        .byte $00   ; 
- D 1 - I - 0x012E4D 04:AE3D: 02        .byte $02   ; 
- D 1 - I - 0x012E4E 04:AE3E: 00        .byte $00   ; 
- D 1 - I - 0x012E4F 04:AE3F: 01        .byte $01   ; 
- D 1 - I - 0x012E50 04:AE40: 02        .byte $02   ; 
- D 1 - I - 0x012E51 04:AE41: 02        .byte $02   ; 
- D 1 - I - 0x012E52 04:AE42: 02        .byte $02   ; 
- D 1 - I - 0x012E53 04:AE43: 02        .byte $02   ; 
- D 1 - I - 0x012E54 04:AE44: 02        .byte $02   ; 
- D 1 - I - 0x012E55 04:AE45: 02        .byte $02   ; 
- D 1 - I - 0x012E56 04:AE46: 02        .byte $02   ; 
- D 1 - I - 0x012E57 04:AE47: 02        .byte $02   ; 
- D 1 - I - 0x012E58 04:AE48: 02        .byte $02   ; 
- D 1 - I - 0x012E59 04:AE49: 02        .byte $02   ; 
off_AE4A_01:
- D 1 - I - 0x012E5A 04:AE4A: 01        .byte $01   ; 
- D 1 - I - 0x012E5B 04:AE4B: 01        .byte $01   ; 
- D 1 - I - 0x012E5C 04:AE4C: 01        .byte $01   ; 
- D 1 - I - 0x012E5D 04:AE4D: 01        .byte $01   ; 
- D 1 - I - 0x012E5E 04:AE4E: 01        .byte $01   ; 
- D 1 - I - 0x012E5F 04:AE4F: 00        .byte $00   ; 
- D 1 - I - 0x012E60 04:AE50: 00        .byte $00   ; 
- D 1 - I - 0x012E61 04:AE51: 01        .byte $01   ; 
- D 1 - I - 0x012E62 04:AE52: 01        .byte $01   ; 
- D 1 - I - 0x012E63 04:AE53: 00        .byte $00   ; 
- D 1 - I - 0x012E64 04:AE54: 00        .byte $00   ; 
- D 1 - I - 0x012E65 04:AE55: 01        .byte $01   ; 
- D 1 - I - 0x012E66 04:AE56: 02        .byte $02   ; 
- D 1 - I - 0x012E67 04:AE57: 02        .byte $02   ; 
- D 1 - I - 0x012E68 04:AE58: 02        .byte $02   ; 
- D 1 - I - 0x012E69 04:AE59: 02        .byte $02   ; 
- D 1 - I - 0x012E6A 04:AE5A: 02        .byte $02   ; 
- D 1 - I - 0x012E6B 04:AE5B: 02        .byte $02   ; 
- D 1 - I - 0x012E6C 04:AE5C: 02        .byte $02   ; 
- D 1 - I - 0x012E6D 04:AE5D: 02        .byte $02   ; 
- D 1 - I - 0x012E6E 04:AE5E: 02        .byte $02   ; 
- D 1 - I - 0x012E6F 04:AE5F: 02        .byte $02   ; 
off_AE60_02:
- D 1 - I - 0x012E70 04:AE60: EA        .byte $EA   ; 
- D 1 - I - 0x012E71 04:AE61: F2        .byte $F2   ; 
- D 1 - I - 0x012E72 04:AE62: FA        .byte $FA   ; 
- D 1 - I - 0x012E73 04:AE63: 02        .byte $02   ; 
- D 1 - I - 0x012E74 04:AE64: EA        .byte $EA   ; 
- D 1 - I - 0x012E75 04:AE65: F2        .byte $F2   ; 
- D 1 - I - 0x012E76 04:AE66: FA        .byte $FA   ; 
- D 1 - I - 0x012E77 04:AE67: 02        .byte $02   ; 
- D 1 - I - 0x012E78 04:AE68: EA        .byte $EA   ; 
- D 1 - I - 0x012E79 04:AE69: F2        .byte $F2   ; 
- D 1 - I - 0x012E7A 04:AE6A: FA        .byte $FA   ; 
- D 1 - I - 0x012E7B 04:AE6B: 02        .byte $02   ; 
- D 1 - I - 0x012E7C 04:AE6C: EA        .byte $EA   ; 
- D 1 - I - 0x012E7D 04:AE6D: F2        .byte $F2   ; 
- D 1 - I - 0x012E7E 04:AE6E: FA        .byte $FA   ; 
- D 1 - I - 0x012E7F 04:AE6F: 02        .byte $02   ; 
- D 1 - I - 0x012E80 04:AE70: EA        .byte $EA   ; 
- D 1 - I - 0x012E81 04:AE71: F2        .byte $F2   ; 
- D 1 - I - 0x012E82 04:AE72: FA        .byte $FA   ; 
- D 1 - I - 0x012E83 04:AE73: 02        .byte $02   ; 
- D 1 - I - 0x012E84 04:AE74: E2        .byte $E2   ; 
- D 1 - I - 0x012E85 04:AE75: E2        .byte $E2   ; 
- D 1 - I - 0x012E86 04:AE76: E2        .byte $E2   ; 
- D 1 - I - 0x012E87 04:AE77: DA        .byte $DA   ; 
- D 1 - I - 0x012E88 04:AE78: DA        .byte $DA   ; 
off_AE79_02:
- D 1 - I - 0x012E89 04:AE79: EA        .byte $EA   ; 
- D 1 - I - 0x012E8A 04:AE7A: F2        .byte $F2   ; 
- D 1 - I - 0x012E8B 04:AE7B: FA        .byte $FA   ; 
- D 1 - I - 0x012E8C 04:AE7C: 02        .byte $02   ; 
- D 1 - I - 0x012E8D 04:AE7D: 02        .byte $02   ; 
- D 1 - I - 0x012E8E 04:AE7E: EA        .byte $EA   ; 
- D 1 - I - 0x012E8F 04:AE7F: F2        .byte $F2   ; 
- D 1 - I - 0x012E90 04:AE80: FA        .byte $FA   ; 
- D 1 - I - 0x012E91 04:AE81: E2        .byte $E2   ; 
- D 1 - I - 0x012E92 04:AE82: EA        .byte $EA   ; 
- D 1 - I - 0x012E93 04:AE83: F2        .byte $F2   ; 
- D 1 - I - 0x012E94 04:AE84: FA        .byte $FA   ; 
- D 1 - I - 0x012E95 04:AE85: 02        .byte $02   ; 
- D 1 - I - 0x012E96 04:AE86: E2        .byte $E2   ; 
- D 1 - I - 0x012E97 04:AE87: EA        .byte $EA   ; 
- D 1 - I - 0x012E98 04:AE88: F2        .byte $F2   ; 
- D 1 - I - 0x012E99 04:AE89: FA        .byte $FA   ; 
- D 1 - I - 0x012E9A 04:AE8A: 02        .byte $02   ; 
- D 1 - I - 0x012E9B 04:AE8B: E2        .byte $E2   ; 
- D 1 - I - 0x012E9C 04:AE8C: EA        .byte $EA   ; 
- D 1 - I - 0x012E9D 04:AE8D: F2        .byte $F2   ; 
- D 1 - I - 0x012E9E 04:AE8E: FA        .byte $FA   ; 
- D 1 - I - 0x012E9F 04:AE8F: 02        .byte $02   ; 
- D 1 - I - 0x012EA0 04:AE90: DA        .byte $DA   ; 
- D 1 - I - 0x012EA1 04:AE91: DA        .byte $DA   ; 
off_AE92_02:
- D 1 - I - 0x012EA2 04:AE92: E9        .byte $E9   ; 
- D 1 - I - 0x012EA3 04:AE93: F1        .byte $F1   ; 
- D 1 - I - 0x012EA4 04:AE94: F9        .byte $F9   ; 
- D 1 - I - 0x012EA5 04:AE95: 01        .byte $01   ; 
- D 1 - I - 0x012EA6 04:AE96: E9        .byte $E9   ; 
- D 1 - I - 0x012EA7 04:AE97: F1        .byte $F1   ; 
- D 1 - I - 0x012EA8 04:AE98: F9        .byte $F9   ; 
- D 1 - I - 0x012EA9 04:AE99: E8        .byte $E8   ; 
- D 1 - I - 0x012EAA 04:AE9A: F0        .byte $F0   ; 
- D 1 - I - 0x012EAB 04:AE9B: F8        .byte $F8   ; 
- D 1 - I - 0x012EAC 04:AE9C: 00        .byte $00   ; 
- D 1 - I - 0x012EAD 04:AE9D: 08        .byte $08   ; 
- D 1 - I - 0x012EAE 04:AE9E: 01        .byte $01   ; 
- D 1 - I - 0x012EAF 04:AE9F: 09        .byte $09   ; 
- D 1 - I - 0x012EB0 04:AEA0: E1        .byte $E1   ; 
- D 1 - I - 0x012EB1 04:AEA1: E9        .byte $E9   ; 
- D 1 - I - 0x012EB2 04:AEA2: F1        .byte $F1   ; 
- D 1 - I - 0x012EB3 04:AEA3: F9        .byte $F9   ; 
- D 1 - I - 0x012EB4 04:AEA4: 01        .byte $01   ; 
- D 1 - I - 0x012EB5 04:AEA5: E1        .byte $E1   ; 
- D 1 - I - 0x012EB6 04:AEA6: E9        .byte $E9   ; 
- D 1 - I - 0x012EB7 04:AEA7: F1        .byte $F1   ; 
- D 1 - I - 0x012EB8 04:AEA8: F9        .byte $F9   ; 
- D 1 - I - 0x012EB9 04:AEA9: 01        .byte $01   ; 
off_AEAA_02:
- D 1 - I - 0x012EBA 04:AEAA: E8        .byte $E8   ; 
- D 1 - I - 0x012EBB 04:AEAB: F0        .byte $F0   ; 
- D 1 - I - 0x012EBC 04:AEAC: F8        .byte $F8   ; 
- D 1 - I - 0x012EBD 04:AEAD: 00        .byte $00   ; 
- D 1 - I - 0x012EBE 04:AEAE: E8        .byte $E8   ; 
- D 1 - I - 0x012EBF 04:AEAF: F0        .byte $F0   ; 
- D 1 - I - 0x012EC0 04:AEB0: F8        .byte $F8   ; 
- D 1 - I - 0x012EC1 04:AEB1: 00        .byte $00   ; 
- D 1 - I - 0x012EC2 04:AEB2: EF        .byte $EF   ; 
- D 1 - I - 0x012EC3 04:AEB3: F7        .byte $F7   ; 
- D 1 - I - 0x012EC4 04:AEB4: FF        .byte $FF   ; 
- D 1 - I - 0x012EC5 04:AEB5: DF        .byte $DF   ; 
- D 1 - I - 0x012EC6 04:AEB6: E7        .byte $E7   ; 
- D 1 - I - 0x012EC7 04:AEB7: DA        .byte $DA   ; 
- D 1 - I - 0x012EC8 04:AEB8: E2        .byte $E2   ; 
- D 1 - I - 0x012EC9 04:AEB9: EA        .byte $EA   ; 
- D 1 - I - 0x012ECA 04:AEBA: F2        .byte $F2   ; 
- D 1 - I - 0x012ECB 04:AEBB: FA        .byte $FA   ; 
- D 1 - I - 0x012ECC 04:AEBC: D8        .byte $D8   ; 
- D 1 - I - 0x012ECD 04:AEBD: E0        .byte $E0   ; 
- D 1 - I - 0x012ECE 04:AEBE: E8        .byte $E8   ; 
- D 1 - I - 0x012ECF 04:AEBF: F0        .byte $F0   ; 
- D 1 - I - 0x012ED0 04:AEC0: F8        .byte $F8   ; 
- D 1 - I - 0x012ED1 04:AEC1: 00        .byte $00   ; 
off_AEC2_02:
- D 1 - I - 0x012ED2 04:AEC2: E1        .byte $E1   ; 
- D 1 - I - 0x012ED3 04:AEC3: E9        .byte $E9   ; 
- D 1 - I - 0x012ED4 04:AEC4: F1        .byte $F1   ; 
- D 1 - I - 0x012ED5 04:AEC5: F9        .byte $F9   ; 
- D 1 - I - 0x012ED6 04:AEC6: E3        .byte $E3   ; 
- D 1 - I - 0x012ED7 04:AEC7: EB        .byte $EB   ; 
- D 1 - I - 0x012ED8 04:AEC8: F3        .byte $F3   ; 
- D 1 - I - 0x012ED9 04:AEC9: FB        .byte $FB   ; 
- D 1 - I - 0x012EDA 04:AECA: E8        .byte $E8   ; 
- D 1 - I - 0x012EDB 04:AECB: F0        .byte $F0   ; 
- D 1 - I - 0x012EDC 04:AECC: F8        .byte $F8   ; 
- D 1 - I - 0x012EDD 04:AECD: 00        .byte $00   ; 
- D 1 - I - 0x012EDE 04:AECE: E9        .byte $E9   ; 
- D 1 - I - 0x012EDF 04:AECF: F1        .byte $F1   ; 
- D 1 - I - 0x012EE0 04:AED0: E9        .byte $E9   ; 
- D 1 - I - 0x012EE1 04:AED1: F1        .byte $F1   ; 
- D 1 - I - 0x012EE2 04:AED2: F9        .byte $F9   ; 
- D 1 - I - 0x012EE3 04:AED3: F9        .byte $F9   ; 
- D 1 - I - 0x012EE4 04:AED4: 01        .byte $01   ; 
- D 1 - I - 0x012EE5 04:AED5: 09        .byte $09   ; 
- D 1 - I - 0x012EE6 04:AED6: 01        .byte $01   ; 
- D 1 - I - 0x012EE7 04:AED7: 09        .byte $09   ; 
- D 1 - I - 0x012EE8 04:AED8: 01        .byte $01   ; 
off_AED9_02:
- D 1 - I - 0x012EE9 04:AED9: E9        .byte $E9   ; 
- D 1 - I - 0x012EEA 04:AEDA: F1        .byte $F1   ; 
- D 1 - I - 0x012EEB 04:AEDB: F9        .byte $F9   ; 
- D 1 - I - 0x012EEC 04:AEDC: 01        .byte $01   ; 
- D 1 - I - 0x012EED 04:AEDD: E9        .byte $E9   ; 
- D 1 - I - 0x012EEE 04:AEDE: F1        .byte $F1   ; 
- D 1 - I - 0x012EEF 04:AEDF: F9        .byte $F9   ; 
- D 1 - I - 0x012EF0 04:AEE0: 01        .byte $01   ; 
- D 1 - I - 0x012EF1 04:AEE1: E8        .byte $E8   ; 
- D 1 - I - 0x012EF2 04:AEE2: F0        .byte $F0   ; 
- D 1 - I - 0x012EF3 04:AEE3: E0        .byte $E0   ; 
- D 1 - I - 0x012EF4 04:AEE4: F8        .byte $F8   ; 
- D 1 - I - 0x012EF5 04:AEE5: 00        .byte $00   ; 
- D 1 - I - 0x012EF6 04:AEE6: DB        .byte $DB   ; 
- D 1 - I - 0x012EF7 04:AEE7: E3        .byte $E3   ; 
- D 1 - I - 0x012EF8 04:AEE8: EB        .byte $EB   ; 
- D 1 - I - 0x012EF9 04:AEE9: F3        .byte $F3   ; 
- D 1 - I - 0x012EFA 04:AEEA: FB        .byte $FB   ; 
- D 1 - I - 0x012EFB 04:AEEB: E0        .byte $E0   ; 
off_AEEC_02:
- D 1 - I - 0x012EFC 04:AEEC: E8        .byte $E8   ; 
- D 1 - I - 0x012EFD 04:AEED: F0        .byte $F0   ; 
- D 1 - I - 0x012EFE 04:AEEE: F8        .byte $F8   ; 
- D 1 - I - 0x012EFF 04:AEEF: 00        .byte $00   ; 
- D 1 - I - 0x012F00 04:AEF0: E8        .byte $E8   ; 
- D 1 - I - 0x012F01 04:AEF1: F0        .byte $F0   ; 
- D 1 - I - 0x012F02 04:AEF2: F8        .byte $F8   ; 
- D 1 - I - 0x012F03 04:AEF3: 00        .byte $00   ; 
- D 1 - I - 0x012F04 04:AEF4: E7        .byte $E7   ; 
- D 1 - I - 0x012F05 04:AEF5: EF        .byte $EF   ; 
- D 1 - I - 0x012F06 04:AEF6: F7        .byte $F7   ; 
- D 1 - I - 0x012F07 04:AEF7: FF        .byte $FF   ; 
- D 1 - I - 0x012F08 04:AEF8: E8        .byte $E8   ; 
- D 1 - I - 0x012F09 04:AEF9: F0        .byte $F0   ; 
- D 1 - I - 0x012F0A 04:AEFA: F8        .byte $F8   ; 
- D 1 - I - 0x012F0B 04:AEFB: 00        .byte $00   ; 
- D 1 - I - 0x012F0C 04:AEFC: E8        .byte $E8   ; 
- D 1 - I - 0x012F0D 04:AEFD: F0        .byte $F0   ; 
- D 1 - I - 0x012F0E 04:AEFE: F8        .byte $F8   ; 
- D 1 - I - 0x012F0F 04:AEFF: 00        .byte $00   ; 
- D 1 - I - 0x012F10 04:AF00: E0        .byte $E0   ; 
- D 1 - I - 0x012F11 04:AF01: E0        .byte $E0   ; 
off_AF02_03:
- D 1 - I - 0x012F12 04:AF02: E0        .byte $E0   ; 
- D 1 - I - 0x012F13 04:AF03: E2        .byte $E2   ; 
- D 1 - I - 0x012F14 04:AF04: E2        .byte $E2   ; 
- D 1 - I - 0x012F15 04:AF05: E2        .byte $E2   ; 
- D 1 - I - 0x012F16 04:AF06: E8        .byte $E8   ; 
- D 1 - I - 0x012F17 04:AF07: EA        .byte $EA   ; 
- D 1 - I - 0x012F18 04:AF08: EA        .byte $EA   ; 
- D 1 - I - 0x012F19 04:AF09: EA        .byte $EA   ; 
- D 1 - I - 0x012F1A 04:AF0A: F0        .byte $F0   ; 
- D 1 - I - 0x012F1B 04:AF0B: F2        .byte $F2   ; 
- D 1 - I - 0x012F1C 04:AF0C: F2        .byte $F2   ; 
- D 1 - I - 0x012F1D 04:AF0D: F2        .byte $F2   ; 
- D 1 - I - 0x012F1E 04:AF0E: F8        .byte $F8   ; 
- D 1 - I - 0x012F1F 04:AF0F: FA        .byte $FA   ; 
- D 1 - I - 0x012F20 04:AF10: FA        .byte $FA   ; 
- D 1 - I - 0x012F21 04:AF11: FA        .byte $FA   ; 
- D 1 - I - 0x012F22 04:AF12: 00        .byte $00   ; 
- D 1 - I - 0x012F23 04:AF13: 02        .byte $02   ; 
- D 1 - I - 0x012F24 04:AF14: 02        .byte $02   ; 
- D 1 - I - 0x012F25 04:AF15: 02        .byte $02   ; 
- D 1 - I - 0x012F26 04:AF16: F0        .byte $F0   ; 
- D 1 - I - 0x012F27 04:AF17: F8        .byte $F8   ; 
- D 1 - I - 0x012F28 04:AF18: 00        .byte $00   ; 
- D 1 - I - 0x012F29 04:AF19: F8        .byte $F8   ; 
- D 1 - I - 0x012F2A 04:AF1A: 00        .byte $00   ; 
off_AF1B_03:
- D 1 - I - 0x012F2B 04:AF1B: E0        .byte $E0   ; 
- D 1 - I - 0x012F2C 04:AF1C: E2        .byte $E2   ; 
- D 1 - I - 0x012F2D 04:AF1D: E2        .byte $E2   ; 
- D 1 - I - 0x012F2E 04:AF1E: E2        .byte $E2   ; 
- D 1 - I - 0x012F2F 04:AF1F: EA        .byte $EA   ; 
- D 1 - I - 0x012F30 04:AF20: E8        .byte $E8   ; 
- D 1 - I - 0x012F31 04:AF21: EA        .byte $EA   ; 
- D 1 - I - 0x012F32 04:AF22: EA        .byte $EA   ; 
- D 1 - I - 0x012F33 04:AF23: F0        .byte $F0   ; 
- D 1 - I - 0x012F34 04:AF24: F0        .byte $F0   ; 
- D 1 - I - 0x012F35 04:AF25: F2        .byte $F2   ; 
- D 1 - I - 0x012F36 04:AF26: F2        .byte $F2   ; 
- D 1 - I - 0x012F37 04:AF27: F2        .byte $F2   ; 
- D 1 - I - 0x012F38 04:AF28: F8        .byte $F8   ; 
- D 1 - I - 0x012F39 04:AF29: F8        .byte $F8   ; 
- D 1 - I - 0x012F3A 04:AF2A: FA        .byte $FA   ; 
- D 1 - I - 0x012F3B 04:AF2B: FA        .byte $FA   ; 
- D 1 - I - 0x012F3C 04:AF2C: FA        .byte $FA   ; 
- D 1 - I - 0x012F3D 04:AF2D: 00        .byte $00   ; 
- D 1 - I - 0x012F3E 04:AF2E: 00        .byte $00   ; 
- D 1 - I - 0x012F3F 04:AF2F: 02        .byte $02   ; 
- D 1 - I - 0x012F40 04:AF30: 02        .byte $02   ; 
- D 1 - I - 0x012F41 04:AF31: 02        .byte $02   ; 
- D 1 - I - 0x012F42 04:AF32: F8        .byte $F8   ; 
- D 1 - I - 0x012F43 04:AF33: 00        .byte $00   ; 
off_AF34_03:
- D 1 - I - 0x012F44 04:AF34: E0        .byte $E0   ; 
- D 1 - I - 0x012F45 04:AF35: E0        .byte $E0   ; 
- D 1 - I - 0x012F46 04:AF36: E0        .byte $E0   ; 
- D 1 - I - 0x012F47 04:AF37: E0        .byte $E0   ; 
- D 1 - I - 0x012F48 04:AF38: E8        .byte $E8   ; 
- D 1 - I - 0x012F49 04:AF39: E8        .byte $E8   ; 
- D 1 - I - 0x012F4A 04:AF3A: E8        .byte $E8   ; 
- D 1 - I - 0x012F4B 04:AF3B: F0        .byte $F0   ; 
- D 1 - I - 0x012F4C 04:AF3C: F0        .byte $F0   ; 
- D 1 - I - 0x012F4D 04:AF3D: F0        .byte $F0   ; 
- D 1 - I - 0x012F4E 04:AF3E: F0        .byte $F0   ; 
- D 1 - I - 0x012F4F 04:AF3F: F0        .byte $F0   ; 
- D 1 - I - 0x012F50 04:AF40: E8        .byte $E8   ; 
- D 1 - I - 0x012F51 04:AF41: E8        .byte $E8   ; 
- D 1 - I - 0x012F52 04:AF42: F8        .byte $F8   ; 
- D 1 - I - 0x012F53 04:AF43: F8        .byte $F8   ; 
- D 1 - I - 0x012F54 04:AF44: F8        .byte $F8   ; 
- D 1 - I - 0x012F55 04:AF45: F8        .byte $F8   ; 
- D 1 - I - 0x012F56 04:AF46: F8        .byte $F8   ; 
- D 1 - I - 0x012F57 04:AF47: 00        .byte $00   ; 
- D 1 - I - 0x012F58 04:AF48: 00        .byte $00   ; 
- D 1 - I - 0x012F59 04:AF49: 00        .byte $00   ; 
- D 1 - I - 0x012F5A 04:AF4A: 00        .byte $00   ; 
- D 1 - I - 0x012F5B 04:AF4B: 00        .byte $00   ; 
off_AF4C_03:
- D 1 - I - 0x012F5C 04:AF4C: E0        .byte $E0   ; 
- D 1 - I - 0x012F5D 04:AF4D: E0        .byte $E0   ; 
- D 1 - I - 0x012F5E 04:AF4E: E0        .byte $E0   ; 
- D 1 - I - 0x012F5F 04:AF4F: E0        .byte $E0   ; 
- D 1 - I - 0x012F60 04:AF50: E8        .byte $E8   ; 
- D 1 - I - 0x012F61 04:AF51: E8        .byte $E8   ; 
- D 1 - I - 0x012F62 04:AF52: E8        .byte $E8   ; 
- D 1 - I - 0x012F63 04:AF53: E8        .byte $E8   ; 
- D 1 - I - 0x012F64 04:AF54: F0        .byte $F0   ; 
- D 1 - I - 0x012F65 04:AF55: F0        .byte $F0   ; 
- D 1 - I - 0x012F66 04:AF56: F0        .byte $F0   ; 
- D 1 - I - 0x012F67 04:AF57: F0        .byte $F0   ; 
- D 1 - I - 0x012F68 04:AF58: F0        .byte $F0   ; 
- D 1 - I - 0x012F69 04:AF59: F8        .byte $F8   ; 
- D 1 - I - 0x012F6A 04:AF5A: F8        .byte $F8   ; 
- D 1 - I - 0x012F6B 04:AF5B: F8        .byte $F8   ; 
- D 1 - I - 0x012F6C 04:AF5C: F8        .byte $F8   ; 
- D 1 - I - 0x012F6D 04:AF5D: F8        .byte $F8   ; 
- D 1 - I - 0x012F6E 04:AF5E: 00        .byte $00   ; 
- D 1 - I - 0x012F6F 04:AF5F: 00        .byte $00   ; 
off_AF60_03:
- D 1 - I - 0x012F70 04:AF60: 00        .byte $00   ; 
- D 1 - I - 0x012F71 04:AF61: 00        .byte $00   ; 
- D 1 - I - 0x012F72 04:AF62: 00        .byte $00   ; 
- D 1 - I - 0x012F73 04:AF63: 00        .byte $00   ; 
- D 1 - I - 0x012F74 04:AF64: F8        .byte $F8   ; 
- D 1 - I - 0x012F75 04:AF65: F8        .byte $F8   ; 
- D 1 - I - 0x012F76 04:AF66: F8        .byte $F8   ; 
- D 1 - I - 0x012F77 04:AF67: F8        .byte $F8   ; 
- D 1 - I - 0x012F78 04:AF68: F0        .byte $F0   ; 
- D 1 - I - 0x012F79 04:AF69: F0        .byte $F0   ; 
- D 1 - I - 0x012F7A 04:AF6A: F0        .byte $F0   ; 
- D 1 - I - 0x012F7B 04:AF6B: F0        .byte $F0   ; 
- D 1 - I - 0x012F7C 04:AF6C: E0        .byte $E0   ; 
- D 1 - I - 0x012F7D 04:AF6D: E0        .byte $E0   ; 
- D 1 - I - 0x012F7E 04:AF6E: E8        .byte $E8   ; 
- D 1 - I - 0x012F7F 04:AF6F: E8        .byte $E8   ; 
- D 1 - I - 0x012F80 04:AF70: E0        .byte $E0   ; 
- D 1 - I - 0x012F81 04:AF71: E8        .byte $E8   ; 
- D 1 - I - 0x012F82 04:AF72: E8        .byte $E8   ; 
- D 1 - I - 0x012F83 04:AF73: E8        .byte $E8   ; 
- D 1 - I - 0x012F84 04:AF74: E0        .byte $E0   ; 
- D 1 - I - 0x012F85 04:AF75: E0        .byte $E0   ; 
- D 1 - I - 0x012F86 04:AF76: 00        .byte $00   ; 
off_AF77_03:
- D 1 - I - 0x012F87 04:AF77: E0        .byte $E0   ; 
- D 1 - I - 0x012F88 04:AF78: E0        .byte $E0   ; 
- D 1 - I - 0x012F89 04:AF79: E0        .byte $E0   ; 
- D 1 - I - 0x012F8A 04:AF7A: E0        .byte $E0   ; 
- D 1 - I - 0x012F8B 04:AF7B: E8        .byte $E8   ; 
- D 1 - I - 0x012F8C 04:AF7C: E8        .byte $E8   ; 
- D 1 - I - 0x012F8D 04:AF7D: E8        .byte $E8   ; 
- D 1 - I - 0x012F8E 04:AF7E: E8        .byte $E8   ; 
- D 1 - I - 0x012F8F 04:AF7F: F0        .byte $F0   ; 
- D 1 - I - 0x012F90 04:AF80: F0        .byte $F0   ; 
- D 1 - I - 0x012F91 04:AF81: F0        .byte $F0   ; 
- D 1 - I - 0x012F92 04:AF82: F0        .byte $F0   ; 
- D 1 - I - 0x012F93 04:AF83: F8        .byte $F8   ; 
- D 1 - I - 0x012F94 04:AF84: F8        .byte $F8   ; 
- D 1 - I - 0x012F95 04:AF85: F8        .byte $F8   ; 
- D 1 - I - 0x012F96 04:AF86: F8        .byte $F8   ; 
- D 1 - I - 0x012F97 04:AF87: 00        .byte $00   ; 
- D 1 - I - 0x012F98 04:AF88: 00        .byte $00   ; 
- D 1 - I - 0x012F99 04:AF89: 00        .byte $00   ; 
- D 1 - I - 0x012F9A 04:AF8A: 00        .byte $00   ; 
- D 1 - I - 0x012F9B 04:AF8B: F8        .byte $F8   ; 
- D 1 - I - 0x012F9C 04:AF8C: 00        .byte $00   ; 



loc_AF8D:
C D 1 - - - 0x012F9D 04:AF8D: A9 01     LDA #$01
C - - - - - 0x012F9F 04:AF8F: 85 1D     STA ram_001D
C - - - - - 0x012FA1 04:AF91: 4C B9 AF  JMP loc_AFB9



loc_AF94:
C D 1 - - - 0x012FA4 04:AF94: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x012FA7 04:AF97: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x012FAA 04:AF9A: 29 7F     AND #$7F
C - - - - - 0x012FAC 04:AF9C: A8        TAY
C - - - - - 0x012FAD 04:AF9D: B9 7C B0  LDA tbl_B07C,Y
C - - - - - 0x012FB0 04:AFA0: 10 15     BPL bra_AFB7
C - - - - - 0x012FB2 04:AFA2: 0A        ASL
C - - - - - 0x012FB3 04:AFA3: A8        TAY
C - - - - - 0x012FB4 04:AFA4: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x012FB7 04:AFA7: 85 2C     STA ram_002C
C - - - - - 0x012FB9 04:AFA9: B9 D9 B0  LDA tbl_B0D8 + $01,Y
C - - - - - 0x012FBC 04:AFAC: 85 2D     STA ram_002D
C - - - - - 0x012FBE 04:AFAE: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x012FC1 04:AFB1: B9 6C 04  LDA ram_игрок_подтип_анимации,Y
C - - - - - 0x012FC4 04:AFB4: A8        TAY
C - - - - - 0x012FC5 04:AFB5: B1 2C     LDA (ram_002C),Y
bra_AFB7:
C - - - - - 0x012FC7 04:AFB7: 85 1D     STA ram_001D
loc_AFB9:
C D 1 - - - 0x012FC9 04:AFB9: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x012FCC 04:AFBC: A9 00     LDA #$00
C - - - - - 0x012FCE 04:AFBE: 85 1C     STA ram_001C
C - - - - - 0x012FD0 04:AFC0: 85 2F     STA ram_002F
C - - - - - 0x012FD2 04:AFC2: 85 31     STA ram_0031
C - - - - - 0x012FD4 04:AFC4: 85 33     STA ram_0033
C - - - - - 0x012FD6 04:AFC6: B9 E8 03  LDA ram_игрок_spd_X_lo,Y
C - - - - - 0x012FD9 04:AFC9: 9D E8 03  STA ram_игрок_spd_X_lo,X
C - - - - - 0x012FDC 04:AFCC: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x012FDF 04:AFCF: 9D F6 03  STA ram_игрок_spd_X_hi,X
C - - - - - 0x012FE2 04:AFD2: B9 04 04  LDA ram_игрок_spd_Y_lo,Y
C - - - - - 0x012FE5 04:AFD5: 9D 04 04  STA ram_игрок_spd_Y_lo,X
C - - - - - 0x012FE8 04:AFD8: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x012FEB 04:AFDB: 9D 12 04  STA ram_игрок_spd_Y_hi,X
C - - - - - 0x012FEE 04:AFDE: B9 20 04  LDA ram_игрок_spd_Z_lo,Y
C - - - - - 0x012FF1 04:AFE1: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x012FF4 04:AFE4: B9 2E 04  LDA ram_игрок_spd_Z_hi,Y
C - - - - - 0x012FF7 04:AFE7: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x012FFA 04:AFEA: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x012FFD 04:AFED: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x013000 04:AFF0: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x013003 04:AFF3: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x013006 04:AFF6: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x013009 04:AFF9: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x01300C 04:AFFC: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x01300F 04:AFFF: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x013012 04:B002: B9 86 03  LDA ram_игрок_Z_lo,Y
C - - - - - 0x013015 04:B005: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x013018 04:B008: B9 99 03  LDA ram_игрок_Z_hi,Y
C - - - - - 0x01301B 04:B00B: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x01301E 04:B00E: B9 A3 04  LDA ram_obj_direction,Y
C - - - - - 0x013021 04:B011: 9D A3 04  STA ram_obj_direction,X
C - - - - - 0x013024 04:B014: 10 02     BPL bra_B018
C - - - - - 0x013026 04:B016: C6 1C     DEC ram_001C
bra_B018:
C - - - - - 0x013028 04:B018: A5 1D     LDA ram_001D
C - - - - - 0x01302A 04:B01A: 0A        ASL
C - - - - - 0x01302B 04:B01B: A8        TAY
C - - - - - 0x01302C 04:B01C: B9 EF B0  LDA tbl_B0EF,Y
C - - - - - 0x01302F 04:B01F: 85 2C     STA ram_002C
C - - - - - 0x013031 04:B021: B9 F0 B0  LDA tbl_B0EF + $01,Y
C - - - - - 0x013034 04:B024: 85 2D     STA ram_002D
C - - - - - 0x013036 04:B026: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013039 04:B029: B9 94 00  LDA a: ram_номер_кадра_анимации,Y
C - - - - - 0x01303C 04:B02C: 0A        ASL
C - - - - - 0x01303D 04:B02D: 79 94 00  ADC a: ram_номер_кадра_анимации,Y
C - - - - - 0x013040 04:B030: A8        TAY
C - - - - - 0x013041 04:B031: 18        CLC
C - - - - - 0x013042 04:B032: A5 1C     LDA ram_001C
C - - - - - 0x013044 04:B034: 10 01     BPL bra_B037
C - - - - - 0x013046 04:B036: 38        SEC
bra_B037:
C - - - - - 0x013047 04:B037: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013049 04:B039: 10 02     BPL bra_B03D
C - - - - - 0x01304B 04:B03B: C6 2F     DEC ram_002F
bra_B03D:
C - - - - - 0x01304D 04:B03D: 45 1C     EOR ram_001C
C - - - - - 0x01304F 04:B03F: 7D 14 03  ADC ram_игрок_X_lo,X
C - - - - - 0x013052 04:B042: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x013055 04:B045: A5 2F     LDA ram_002F
C - - - - - 0x013057 04:B047: 45 1C     EOR ram_001C
C - - - - - 0x013059 04:B049: 7D 27 03  ADC ram_игрок_X_hi,X
C - - - - - 0x01305C 04:B04C: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x01305F 04:B04F: C8        INY
C - - - - - 0x013060 04:B050: 18        CLC
C - - - - - 0x013061 04:B051: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013063 04:B053: 10 02     BPL bra_B057
C - - - - - 0x013065 04:B055: C6 31     DEC ram_0031
bra_B057:
C - - - - - 0x013067 04:B057: 7D 4D 03  ADC ram_игрок_Y_lo,X
C - - - - - 0x01306A 04:B05A: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x01306D 04:B05D: A5 31     LDA ram_0031
C - - - - - 0x01306F 04:B05F: 7D 60 03  ADC ram_игрок_Y_hi,X
C - - - - - 0x013072 04:B062: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x013075 04:B065: C8        INY
C - - - - - 0x013076 04:B066: 18        CLC
C - - - - - 0x013077 04:B067: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013079 04:B069: 10 02     BPL bra_B06D
C - - - - - 0x01307B 04:B06B: C6 33     DEC ram_0033
bra_B06D:
C - - - - - 0x01307D 04:B06D: 7D 86 03  ADC ram_игрок_Z_lo,X
C - - - - - 0x013080 04:B070: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x013083 04:B073: A5 33     LDA ram_0033
C - - - - - 0x013085 04:B075: 7D 99 03  ADC ram_игрок_Z_hi,X
C - - - - - 0x013088 04:B078: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x01308B 04:B07B: 60        RTS



tbl_B07C:
- - - - - - 0x01308C 04:B07C: 00        .byte $00   ; 
- D 1 - - - 0x01308D 04:B07D: 00        .byte $00   ; 
- D 1 - - - 0x01308E 04:B07E: 02        .byte $02   ; 
- - - - - - 0x01308F 04:B07F: 00        .byte $00   ; 
- - - - - - 0x013090 04:B080: 00        .byte $00   ; 
- - - - - - 0x013091 04:B081: 00        .byte $00   ; 
- D 1 - - - 0x013092 04:B082: 00        .byte $00   ; 
- - - - - - 0x013093 04:B083: 00        .byte $00   ; 
- - - - - - 0x013094 04:B084: 00        .byte $00   ; 
- D 1 - - - 0x013095 04:B085: 00        .byte $00   ; 
- D 1 - - - 0x013096 04:B086: 00        .byte $00   ; 
- - - - - - 0x013097 04:B087: 00        .byte $00   ; 
- D 1 - - - 0x013098 04:B088: 82        .byte $82   ; 
- - - - - - 0x013099 04:B089: 00        .byte $00   ; 
- D 1 - - - 0x01309A 04:B08A: 00        .byte $00   ; 
- D 1 - - - 0x01309B 04:B08B: 00        .byte $00   ; 
- D 1 - - - 0x01309C 04:B08C: 81        .byte $81   ; 
- D 1 - - - 0x01309D 04:B08D: 00        .byte $00   ; 
- - - - - - 0x01309E 04:B08E: 00        .byte $00   ; 
- - - - - - 0x01309F 04:B08F: 00        .byte $00   ; 
- - - - - - 0x0130A0 04:B090: 00        .byte $00   ; 
- - - - - - 0x0130A1 04:B091: 00        .byte $00   ; 
- D 1 - - - 0x0130A2 04:B092: 83        .byte $83   ; 
- - - - - - 0x0130A3 04:B093: 00        .byte $00   ; 
- - - - - - 0x0130A4 04:B094: 00        .byte $00   ; 
- - - - - - 0x0130A5 04:B095: 00        .byte $00   ; 
- D 1 - - - 0x0130A6 04:B096: 00        .byte $00   ; 
- - - - - - 0x0130A7 04:B097: 00        .byte $00   ; 
- - - - - - 0x0130A8 04:B098: 00        .byte $00   ; 
- D 1 - - - 0x0130A9 04:B099: 00        .byte $00   ; 
- - - - - - 0x0130AA 04:B09A: 00        .byte $00   ; 
- - - - - - 0x0130AB 04:B09B: 00        .byte $00   ; 
- D 1 - - - 0x0130AC 04:B09C: 00        .byte $00   ; 
- D 1 - - - 0x0130AD 04:B09D: 00        .byte $00   ; 
- - - - - - 0x0130AE 04:B09E: 00        .byte $00   ; 
- D 1 - - - 0x0130AF 04:B09F: 00        .byte $00   ; 
- D 1 - - - 0x0130B0 04:B0A0: 00        .byte $00   ; 
- - - - - - 0x0130B1 04:B0A1: 00        .byte $00   ; 
- - - - - - 0x0130B2 04:B0A2: 00        .byte $00   ; 
- - - - - - 0x0130B3 04:B0A3: 00        .byte $00   ; 
- - - - - - 0x0130B4 04:B0A4: 80        .byte $80   ; 
- D 1 - - - 0x0130B5 04:B0A5: 80        .byte $80   ; 
- - - - - - 0x0130B6 04:B0A6: 00        .byte $00   ; 
- - - - - - 0x0130B7 04:B0A7: 00        .byte $00   ; 
- - - - - - 0x0130B8 04:B0A8: 00        .byte $00   ; 
- D 1 - - - 0x0130B9 04:B0A9: 00        .byte $00   ; 
- D 1 - - - 0x0130BA 04:B0AA: 00        .byte $00   ; 
- D 1 - - - 0x0130BB 04:B0AB: 10        .byte $10   ; 
- D 1 - - - 0x0130BC 04:B0AC: 00        .byte $00   ; 
- - - - - - 0x0130BD 04:B0AD: 00        .byte $00   ; 
- - - - - - 0x0130BE 04:B0AE: 09        .byte $09   ; 
- - - - - - 0x0130BF 04:B0AF: 00        .byte $00   ; 
- - - - - - 0x0130C0 04:B0B0: 00        .byte $00   ; 
- - - - - - 0x0130C1 04:B0B1: 00        .byte $00   ; 
- - - - - - 0x0130C2 04:B0B2: 00        .byte $00   ; 
- D 1 - - - 0x0130C3 04:B0B3: 0A        .byte $0A   ; 
- D 1 - - - 0x0130C4 04:B0B4: 0B        .byte $0B   ; 
- D 1 - - - 0x0130C5 04:B0B5: 00        .byte $00   ; 
- - - - - - 0x0130C6 04:B0B6: 00        .byte $00   ; 
- - - - - - 0x0130C7 04:B0B7: 00        .byte $00   ; 
- D 1 - - - 0x0130C8 04:B0B8: 00        .byte $00   ; 
- D 1 - - - 0x0130C9 04:B0B9: 00        .byte $00   ; 
- - - - - - 0x0130CA 04:B0BA: 80        .byte $80   ; 
- D 1 - - - 0x0130CB 04:B0BB: 80        .byte $80   ; 
- D 1 - - - 0x0130CC 04:B0BC: 0C        .byte $0C   ; 
- - - - - - 0x0130CD 04:B0BD: 00        .byte $00   ; 
- - - - - - 0x0130CE 04:B0BE: 00        .byte $00   ; 
- - - - - - 0x0130CF 04:B0BF: 00        .byte $00   ; 
- - - - - - 0x0130D0 04:B0C0: 00        .byte $00   ; 
- D 1 - - - 0x0130D1 04:B0C1: 00        .byte $00   ; 
- D 1 - - - 0x0130D2 04:B0C2: 09        .byte $09   ; 
- - - - - - 0x0130D3 04:B0C3: 00        .byte $00   ; 
- - - - - - 0x0130D4 04:B0C4: 00        .byte $00   ; 
- - - - - - 0x0130D5 04:B0C5: 00        .byte $00   ; 
- - - - - - 0x0130D6 04:B0C6: 00        .byte $00   ; 
- - - - - - 0x0130D7 04:B0C7: 00        .byte $00   ; 
- - - - - - 0x0130D8 04:B0C8: 00        .byte $00   ; 
- - - - - - 0x0130D9 04:B0C9: 00        .byte $00   ; 
- - - - - - 0x0130DA 04:B0CA: 00        .byte $00   ; 
- - - - - - 0x0130DB 04:B0CB: 00        .byte $00   ; 
- - - - - - 0x0130DC 04:B0CC: 00        .byte $00   ; 
- - - - - - 0x0130DD 04:B0CD: 00        .byte $00   ; 
- - - - - - 0x0130DE 04:B0CE: 00        .byte $00   ; 
- - - - - - 0x0130DF 04:B0CF: 00        .byte $00   ; 
- - - - - - 0x0130E0 04:B0D0: 00        .byte $00   ; 
- D 1 - - - 0x0130E1 04:B0D1: 00        .byte $00   ; 
- - - - - - 0x0130E2 04:B0D2: 00        .byte $00   ; 
- D 1 - - - 0x0130E3 04:B0D3: 0F        .byte $0F   ; 
- - - - - - 0x0130E4 04:B0D4: 00        .byte $00   ; 
- - - - - - 0x0130E5 04:B0D5: 00        .byte $00   ; 
- - - - - - 0x0130E6 04:B0D6: 00        .byte $00   ; 
- - - - - - 0x0130E7 04:B0D7: 00        .byte $00   ; 



tbl_B0D8:
- D 1 - - - 0x0130E8 04:B0D8: E0 B0     .word off_B0E0_00
- D 1 - - - 0x0130EA 04:B0DA: E2 B0     .word off_B0E2_01
- D 1 - - - 0x0130EC 04:B0DC: EA B0     .word off_B0EA_02
- D 1 - - - 0x0130EE 04:B0DE: ED B0     .word off_B0ED_03

off_B0E0_00:
- D 1 - I - 0x0130F0 04:B0E0: 07        .byte $07   ; 
- D 1 - I - 0x0130F1 04:B0E1: 08        .byte $08   ; 



off_B0E2_01:
- D 1 - I - 0x0130F2 04:B0E2: 05        .byte $05   ; 
- - - - - - 0x0130F3 04:B0E3: 05        .byte $05   ; 
- - - - - - 0x0130F4 04:B0E4: 05        .byte $05   ; 
- D 1 - I - 0x0130F5 04:B0E5: 06        .byte $06   ; 
- - - - - - 0x0130F6 04:B0E6: 05        .byte $05   ; 
- - - - - - 0x0130F7 04:B0E7: 05        .byte $05   ; 
- - - - - - 0x0130F8 04:B0E8: 05        .byte $05   ; 
- - - - - - 0x0130F9 04:B0E9: 05        .byte $05   ; 



off_B0EA_02:
- D 1 - I - 0x0130FA 04:B0EA: 04        .byte $04   ; 
- D 1 - I - 0x0130FB 04:B0EB: 03        .byte $03   ; 
- D 1 - I - 0x0130FC 04:B0EC: 03        .byte $03   ; 



off_B0ED_03:
- D 1 - I - 0x0130FD 04:B0ED: 0D        .byte $0D   ; 
- D 1 - I - 0x0130FE 04:B0EE: 0E        .byte $0E   ; 



tbl_B0EF:
- D 1 - - - 0x0130FF 04:B0EF: 1D B1     .word off_B11D_00
- D 1 - - - 0x013101 04:B0F1: 11 B1     .word off_B111_01
- D 1 - - - 0x013103 04:B0F3: 9E B1     .word off_B19E_02
- D 1 - - - 0x013105 04:B0F5: 59 B1     .word off_B159_03
- D 1 - - - 0x013107 04:B0F7: 5F B1     .word off_B15F_04
- D 1 - - - 0x013109 04:B0F9: 32 B1     .word off_B132_05
- D 1 - - - 0x01310B 04:B0FB: 41 B1     .word off_B141_06
- D 1 - - - 0x01310D 04:B0FD: 92 B1     .word off_B192_07
- D 1 - - - 0x01310F 04:B0FF: 98 B1     .word off_B198_08
- D 1 - - - 0x013111 04:B101: 8C B1     .word off_B18C_09
- D 1 - - - 0x013113 04:B103: 80 B1     .word off_B180_0A
- D 1 - - - 0x013115 04:B105: 86 B1     .word off_B186_0B
- D 1 - - - 0x013117 04:B107: A4 B1     .word off_B1A4_0C
- D 1 - - - 0x013119 04:B109: AA B1     .word off_B1AA_0D
- D 1 - - - 0x01311B 04:B10B: B3 B1     .word off_B1B3_0E
- D 1 - - - 0x01311D 04:B10D: BC B1     .word off_B1BC_0F
- D 1 - - - 0x01311F 04:B10F: D4 B1     .word off_B1D4_10



off_B111_01:
- D 1 - I - 0x013121 04:B111: 04        .byte $04   ; 
- D 1 - I - 0x013122 04:B112: 01        .byte $01   ; 
- D 1 - I - 0x013123 04:B113: 08        .byte $08   ; 
- D 1 - I - 0x013124 04:B114: 04        .byte $04   ; 
- D 1 - I - 0x013125 04:B115: 01        .byte $01   ; 
- D 1 - I - 0x013126 04:B116: 09        .byte $09   ; 
- D 1 - I - 0x013127 04:B117: 04        .byte $04   ; 
- D 1 - I - 0x013128 04:B118: 01        .byte $01   ; 
- D 1 - I - 0x013129 04:B119: 08        .byte $08   ; 
- D 1 - I - 0x01312A 04:B11A: 04        .byte $04   ; 
- D 1 - I - 0x01312B 04:B11B: 01        .byte $01   ; 
- D 1 - I - 0x01312C 04:B11C: 09        .byte $09   ; 



off_B11D_00:
- D 1 - I - 0x01312D 04:B11D: 0C        .byte $0C   ; 
- D 1 - I - 0x01312E 04:B11E: 01        .byte $01   ; 
- D 1 - I - 0x01312F 04:B11F: 00        .byte $00   ; 
- D 1 - I - 0x013130 04:B120: 0C        .byte $0C   ; 
- D 1 - I - 0x013131 04:B121: 01        .byte $01   ; 
- D 1 - I - 0x013132 04:B122: 00        .byte $00   ; 
- D 1 - I - 0x013133 04:B123: 0C        .byte $0C   ; 
- D 1 - I - 0x013134 04:B124: 01        .byte $01   ; 
- D 1 - I - 0x013135 04:B125: 00        .byte $00   ; 
- D 1 - I - 0x013136 04:B126: 0C        .byte $0C   ; 
- D 1 - I - 0x013137 04:B127: 01        .byte $01   ; 
- D 1 - I - 0x013138 04:B128: 00        .byte $00   ; 
- D 1 - I - 0x013139 04:B129: 0C        .byte $0C   ; 
- D 1 - I - 0x01313A 04:B12A: 01        .byte $01   ; 
- D 1 - I - 0x01313B 04:B12B: 00        .byte $00   ; 
- D 1 - I - 0x01313C 04:B12C: 0C        .byte $0C   ; 
- D 1 - I - 0x01313D 04:B12D: 01        .byte $01   ; 
- D 1 - I - 0x01313E 04:B12E: 00        .byte $00   ; 
- - - - - - 0x01313F 04:B12F: 0C        .byte $0C   ; 
- - - - - - 0x013140 04:B130: 01        .byte $01   ; 
- - - - - - 0x013141 04:B131: 00        .byte $00   ; 



off_B132_05:
- - - - - - 0x013142 04:B132: 0C        .byte $0C   ; 
- - - - - - 0x013143 04:B133: 01        .byte $01   ; 
- - - - - - 0x013144 04:B134: 00        .byte $00   ; 
- D 1 - I - 0x013145 04:B135: 0C        .byte $0C   ; 
- D 1 - I - 0x013146 04:B136: 01        .byte $01   ; 
- D 1 - I - 0x013147 04:B137: 00        .byte $00   ; 
- D 1 - I - 0x013148 04:B138: 0C        .byte $0C   ; 
- D 1 - I - 0x013149 04:B139: 01        .byte $01   ; 
- D 1 - I - 0x01314A 04:B13A: 00        .byte $00   ; 
- D 1 - I - 0x01314B 04:B13B: F4        .byte $F4   ; 
- D 1 - I - 0x01314C 04:B13C: FF        .byte $FF   ; 
- D 1 - I - 0x01314D 04:B13D: 0A        .byte $0A   ; 
- - - - - - 0x01314E 04:B13E: F4        .byte $F4   ; 
- - - - - - 0x01314F 04:B13F: FF        .byte $FF   ; 
- - - - - - 0x013150 04:B140: 0A        .byte $0A   ; 



off_B141_06:
- - - - - - 0x013151 04:B141: 00        .byte $00   ; 
- - - - - - 0x013152 04:B142: 01        .byte $01   ; 
- - - - - - 0x013153 04:B143: FA        .byte $FA   ; 
- D 1 - I - 0x013154 04:B144: 00        .byte $00   ; 
- D 1 - I - 0x013155 04:B145: 01        .byte $01   ; 
- D 1 - I - 0x013156 04:B146: FA        .byte $FA   ; 
- D 1 - I - 0x013157 04:B147: 00        .byte $00   ; 
- D 1 - I - 0x013158 04:B148: 01        .byte $01   ; 
- D 1 - I - 0x013159 04:B149: FA        .byte $FA   ; 
- D 1 - I - 0x01315A 04:B14A: F4        .byte $F4   ; 
- D 1 - I - 0x01315B 04:B14B: FF        .byte $FF   ; 
- D 1 - I - 0x01315C 04:B14C: 0A        .byte $0A   ; 
- - - - - - 0x01315D 04:B14D: F4        .byte $F4   ; 
- - - - - - 0x01315E 04:B14E: FF        .byte $FF   ; 
- - - - - - 0x01315F 04:B14F: 0A        .byte $0A   ; 
- - - - - - 0x013160 04:B150: 0C        .byte $0C   ; 
- - - - - - 0x013161 04:B151: 01        .byte $01   ; 
- - - - - - 0x013162 04:B152: 00        .byte $00   ; 
- - - - - - 0x013163 04:B153: 0C        .byte $0C   ; 
- - - - - - 0x013164 04:B154: 01        .byte $01   ; 
- - - - - - 0x013165 04:B155: 00        .byte $00   ; 
- - - - - - 0x013166 04:B156: 0C        .byte $0C   ; 
- - - - - - 0x013167 04:B157: 01        .byte $01   ; 
- - - - - - 0x013168 04:B158: 00        .byte $00   ; 



off_B159_03:
- D 1 - I - 0x013169 04:B159: 07        .byte $07   ; 
- D 1 - I - 0x01316A 04:B15A: FF        .byte $FF   ; 
- D 1 - I - 0x01316B 04:B15B: 01        .byte $01   ; 
- - - - - - 0x01316C 04:B15C: 07        .byte $07   ; 
- - - - - - 0x01316D 04:B15D: FF        .byte $FF   ; 
- - - - - - 0x01316E 04:B15E: 01        .byte $01   ; 



off_B15F_04:
- D 1 - I - 0x01316F 04:B15F: 01        .byte $01   ; 
- D 1 - I - 0x013170 04:B160: 01        .byte $01   ; 
- D 1 - I - 0x013171 04:B161: 1C        .byte $1C   ; 
- D 1 - I - 0x013172 04:B162: 07        .byte $07   ; 
- D 1 - I - 0x013173 04:B163: FF        .byte $FF   ; 
- D 1 - I - 0x013174 04:B164: 01        .byte $01   ; 
- - - - - - 0x013175 04:B165: 07        .byte $07   ; 
- - - - - - 0x013176 04:B166: FF        .byte $FF   ; 
- - - - - - 0x013177 04:B167: 01        .byte $01   ; 
- - - - - - 0x013178 04:B168: 0C        .byte $0C   ; 
- - - - - - 0x013179 04:B169: 01        .byte $01   ; 
- - - - - - 0x01317A 04:B16A: 00        .byte $00   ; 
- - - - - - 0x01317B 04:B16B: 0C        .byte $0C   ; 
- - - - - - 0x01317C 04:B16C: 01        .byte $01   ; 
- - - - - - 0x01317D 04:B16D: 00        .byte $00   ; 
- - - - - - 0x01317E 04:B16E: 0C        .byte $0C   ; 
- - - - - - 0x01317F 04:B16F: 01        .byte $01   ; 
- - - - - - 0x013180 04:B170: 00        .byte $00   ; 
- - - - - - 0x013181 04:B171: 0C        .byte $0C   ; 
- - - - - - 0x013182 04:B172: 01        .byte $01   ; 
- - - - - - 0x013183 04:B173: 00        .byte $00   ; 
- - - - - - 0x013184 04:B174: 0C        .byte $0C   ; 
- - - - - - 0x013185 04:B175: 01        .byte $01   ; 
- - - - - - 0x013186 04:B176: 00        .byte $00   ; 
- - - - - - 0x013187 04:B177: 0C        .byte $0C   ; 
- - - - - - 0x013188 04:B178: 01        .byte $01   ; 
- - - - - - 0x013189 04:B179: 00        .byte $00   ; 
- - - - - - 0x01318A 04:B17A: 0C        .byte $0C   ; 
- - - - - - 0x01318B 04:B17B: 01        .byte $01   ; 
- - - - - - 0x01318C 04:B17C: 00        .byte $00   ; 
- - - - - - 0x01318D 04:B17D: 0C        .byte $0C   ; 
- - - - - - 0x01318E 04:B17E: 01        .byte $01   ; 
- - - - - - 0x01318F 04:B17F: 00        .byte $00   ; 



off_B180_0A:
- - - - - - 0x013190 04:B180: 0C        .byte $0C   ; 
- - - - - - 0x013191 04:B181: FF        .byte $FF   ; 
- - - - - - 0x013192 04:B182: 00        .byte $00   ; 
- D 1 - I - 0x013193 04:B183: 0C        .byte $0C   ; 
- D 1 - I - 0x013194 04:B184: FF        .byte $FF   ; 
- D 1 - I - 0x013195 04:B185: 00        .byte $00   ; 



off_B186_0B:
- - - - - - 0x013196 04:B186: 08        .byte $08   ; 
- - - - - - 0x013197 04:B187: FF        .byte $FF   ; 
- - - - - - 0x013198 04:B188: 18        .byte $18   ; 
- D 1 - I - 0x013199 04:B189: 08        .byte $08   ; 
- D 1 - I - 0x01319A 04:B18A: FF        .byte $FF   ; 
- D 1 - I - 0x01319B 04:B18B: 18        .byte $18   ; 



off_B18C_09:
- - - - - - 0x01319C 04:B18C: F8        .byte $F8   ; 
- - - - - - 0x01319D 04:B18D: FF        .byte $FF   ; 
- - - - - - 0x01319E 04:B18E: 18        .byte $18   ; 
- D 1 - I - 0x01319F 04:B18F: F8        .byte $F8   ; 
- D 1 - I - 0x0131A0 04:B190: FF        .byte $FF   ; 
- D 1 - I - 0x0131A1 04:B191: 18        .byte $18   ; 



off_B192_07:
- D 1 - I - 0x0131A2 04:B192: 04        .byte $04   ; 
- D 1 - I - 0x0131A3 04:B193: E4        .byte $E4   ; 
- D 1 - I - 0x0131A4 04:B194: 00        .byte $00   ; 
- - - - - - 0x0131A5 04:B195: 04        .byte $04   ; 
- - - - - - 0x0131A6 04:B196: E4        .byte $E4   ; 
- - - - - - 0x0131A7 04:B197: 00        .byte $00   ; 



off_B198_08:
- D 1 - I - 0x0131A8 04:B198: 08        .byte $08   ; 
- D 1 - I - 0x0131A9 04:B199: 04        .byte $04   ; 
- D 1 - I - 0x0131AA 04:B19A: 00        .byte $00   ; 
- - - - - - 0x0131AB 04:B19B: 08        .byte $08   ; 
- - - - - - 0x0131AC 04:B19C: 04        .byte $04   ; 
- - - - - - 0x0131AD 04:B19D: 00        .byte $00   ; 



off_B19E_02:
- D 1 - I - 0x0131AE 04:B19E: 08        .byte $08   ; 
- D 1 - I - 0x0131AF 04:B19F: 01        .byte $01   ; 
- D 1 - I - 0x0131B0 04:B1A0: 00        .byte $00   ; 
- - - - - - 0x0131B1 04:B1A1: 08        .byte $08   ; 
- - - - - - 0x0131B2 04:B1A2: 01        .byte $01   ; 
- - - - - - 0x0131B3 04:B1A3: 00        .byte $00   ; 



off_B1A4_0C:
- D 1 - I - 0x0131B4 04:B1A4: 01        .byte $01   ; 
- D 1 - I - 0x0131B5 04:B1A5: 01        .byte $01   ; 
- D 1 - I - 0x0131B6 04:B1A6: 1C        .byte $1C   ; 
- - - - - - 0x0131B7 04:B1A7: 01        .byte $01   ; 
- - - - - - 0x0131B8 04:B1A8: 01        .byte $01   ; 
- - - - - - 0x0131B9 04:B1A9: 1C        .byte $1C   ; 



off_B1AA_0D:
- - - - - - 0x0131BA 04:B1AA: 02        .byte $02   ; 
- - - - - - 0x0131BB 04:B1AB: 01        .byte $01   ; 
- - - - - - 0x0131BC 04:B1AC: 1A        .byte $1A   ; 
- - - - - - 0x0131BD 04:B1AD: 02        .byte $02   ; 
- - - - - - 0x0131BE 04:B1AE: 01        .byte $01   ; 
- - - - - - 0x0131BF 04:B1AF: 1A        .byte $1A   ; 
- D 1 - I - 0x0131C0 04:B1B0: 02        .byte $02   ; 
- D 1 - I - 0x0131C1 04:B1B1: 01        .byte $01   ; 
- D 1 - I - 0x0131C2 04:B1B2: 1A        .byte $1A   ; 



off_B1B3_0E:
- - - - - - 0x0131C3 04:B1B3: FD        .byte $FD   ; 
- - - - - - 0x0131C4 04:B1B4: 01        .byte $01   ; 
- - - - - - 0x0131C5 04:B1B5: 1A        .byte $1A   ; 
- - - - - - 0x0131C6 04:B1B6: FD        .byte $FD   ; 
- - - - - - 0x0131C7 04:B1B7: 01        .byte $01   ; 
- - - - - - 0x0131C8 04:B1B8: 1A        .byte $1A   ; 
- D 1 - I - 0x0131C9 04:B1B9: FD        .byte $FD   ; 
- D 1 - I - 0x0131CA 04:B1BA: 01        .byte $01   ; 
- D 1 - I - 0x0131CB 04:B1BB: 1A        .byte $1A   ; 



off_B1BC_0F:
- D 1 - I - 0x0131CC 04:B1BC: 0C        .byte $0C   ; 
- D 1 - I - 0x0131CD 04:B1BD: 01        .byte $01   ; 
- D 1 - I - 0x0131CE 04:B1BE: 00        .byte $00   ; 
- D 1 - I - 0x0131CF 04:B1BF: 0C        .byte $0C   ; 
- D 1 - I - 0x0131D0 04:B1C0: 01        .byte $01   ; 
- D 1 - I - 0x0131D1 04:B1C1: 00        .byte $00   ; 
- D 1 - I - 0x0131D2 04:B1C2: F8        .byte $F8   ; 
- D 1 - I - 0x0131D3 04:B1C3: 01        .byte $01   ; 
- D 1 - I - 0x0131D4 04:B1C4: 00        .byte $00   ; 
- D 1 - I - 0x0131D5 04:B1C5: F8        .byte $F8   ; 
- D 1 - I - 0x0131D6 04:B1C6: 01        .byte $01   ; 
- D 1 - I - 0x0131D7 04:B1C7: 04        .byte $04   ; 
- D 1 - I - 0x0131D8 04:B1C8: 00        .byte $00   ; 
- D 1 - I - 0x0131D9 04:B1C9: 01        .byte $01   ; 
- D 1 - I - 0x0131DA 04:B1CA: 1C        .byte $1C   ; 
- D 1 - I - 0x0131DB 04:B1CB: 0A        .byte $0A   ; 
- D 1 - I - 0x0131DC 04:B1CC: 01        .byte $01   ; 
- D 1 - I - 0x0131DD 04:B1CD: 08        .byte $08   ; 
- D 1 - I - 0x0131DE 04:B1CE: 0C        .byte $0C   ; 
- D 1 - I - 0x0131DF 04:B1CF: 01        .byte $01   ; 
- D 1 - I - 0x0131E0 04:B1D0: 00        .byte $00   ; 
- D 1 - I - 0x0131E1 04:B1D1: 0C        .byte $0C   ; 
- D 1 - I - 0x0131E2 04:B1D2: 01        .byte $01   ; 
- D 1 - I - 0x0131E3 04:B1D3: 00        .byte $00   ; 



off_B1D4_10:
- D 1 - I - 0x0131E4 04:B1D4: 0C        .byte $0C   ; 
- D 1 - I - 0x0131E5 04:B1D5: 01        .byte $01   ; 
- D 1 - I - 0x0131E6 04:B1D6: 00        .byte $00   ; 
- D 1 - I - 0x0131E7 04:B1D7: 08        .byte $08   ; 
- D 1 - I - 0x0131E8 04:B1D8: FF        .byte $FF   ; 
- D 1 - I - 0x0131E9 04:B1D9: 00        .byte $00   ; 
- D 1 - I - 0x0131EA 04:B1DA: F8        .byte $F8   ; 
- D 1 - I - 0x0131EB 04:B1DB: FF        .byte $FF   ; 
- D 1 - I - 0x0131EC 04:B1DC: 00        .byte $00   ; 
- D 1 - I - 0x0131ED 04:B1DD: F6        .byte $F6   ; 
- D 1 - I - 0x0131EE 04:B1DE: 04        .byte $04   ; 
- D 1 - I - 0x0131EF 04:B1DF: 00        .byte $00   ; 
- D 1 - I - 0x0131F0 04:B1E0: 0C        .byte $0C   ; 
- D 1 - I - 0x0131F1 04:B1E1: 01        .byte $01   ; 
- D 1 - I - 0x0131F2 04:B1E2: 00        .byte $00   ; 
- D 1 - I - 0x0131F3 04:B1E3: 08        .byte $08   ; 
- D 1 - I - 0x0131F4 04:B1E4: FF        .byte $FF   ; 
- D 1 - I - 0x0131F5 04:B1E5: 00        .byte $00   ; 
- D 1 - I - 0x0131F6 04:B1E6: F8        .byte $F8   ; 
- D 1 - I - 0x0131F7 04:B1E7: FF        .byte $FF   ; 
- D 1 - I - 0x0131F8 04:B1E8: 00        .byte $00   ; 
- D 1 - I - 0x0131F9 04:B1E9: F6        .byte $F6   ; 
- D 1 - I - 0x0131FA 04:B1EA: 04        .byte $04   ; 
- D 1 - I - 0x0131FB 04:B1EB: 00        .byte $00   ; 
- D 1 - I - 0x0131FC 04:B1EC: 0C        .byte $0C   ; 
- D 1 - I - 0x0131FD 04:B1ED: 01        .byte $01   ; 
- D 1 - I - 0x0131FE 04:B1EE: 00        .byte $00   ; 
- D 1 - I - 0x0131FF 04:B1EF: 08        .byte $08   ; 
- D 1 - I - 0x013200 04:B1F0: FF        .byte $FF   ; 
- D 1 - I - 0x013201 04:B1F1: 00        .byte $00   ; 
- D 1 - I - 0x013202 04:B1F2: F8        .byte $F8   ; 
- D 1 - I - 0x013203 04:B1F3: FF        .byte $FF   ; 
- D 1 - I - 0x013204 04:B1F4: 00        .byte $00   ; 
- D 1 - I - 0x013205 04:B1F5: F6        .byte $F6   ; 
- D 1 - I - 0x013206 04:B1F6: 04        .byte $04   ; 
- D 1 - I - 0x013207 04:B1F7: 00        .byte $00   ; 
- D 1 - I - 0x013208 04:B1F8: 0C        .byte $0C   ; 
- D 1 - I - 0x013209 04:B1F9: 01        .byte $01   ; 
- D 1 - I - 0x01320A 04:B1FA: 00        .byte $00   ; 
- - - - - - 0x01320B 04:B1FB: 08        .byte $08   ; 
- - - - - - 0x01320C 04:B1FC: FF        .byte $FF   ; 
- - - - - - 0x01320D 04:B1FD: 00        .byte $00   ; 
- - - - - - 0x01320E 04:B1FE: F8        .byte $F8   ; 
- - - - - - 0x01320F 04:B1FF: FF        .byte $FF   ; 
- - - - - - 0x013210 04:B200: 00        .byte $00   ; 
- - - - - - 0x013211 04:B201: F6        .byte $F6   ; 
- - - - - - 0x013212 04:B202: 04        .byte $04   ; 
- - - - - - 0x013213 04:B203: 00        .byte $00   ; 



loc_B204:
C D 1 - - - 0x013214 04:B204: 20 6E B2  JSR sub_B26E
C - - - - - 0x013217 04:B207: 4C 0D B2  JMP loc_B20D


; bzk
- - - - - - 0x01321A 04:B20A: 4C 6E B2  JMP loc_B26E



loc_B20D:
C D 1 - - - 0x01321D 04:B20D: A2 00     LDX #$00
bra_B20F:
C - - - - - 0x01321F 04:B20F: BD A1 00  LDA a: ram_приоритет_анимации,X
C - - - - - 0x013222 04:B212: 29 1F     AND #$1F
C - - - - - 0x013224 04:B214: A8        TAY
C - - - - - 0x013225 04:B215: 38        SEC
C - - - - - 0x013226 04:B216: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x013229 04:B219: ED EE 00  SBC a: ram_camera_Y_lo
C - - - - - 0x01322C 04:B21C: 9D C1 00  STA a: ram_разница_координат_и_камеры,X
C - - - - - 0x01322F 04:B21F: E8        INX
C - - - - - 0x013230 04:B220: E4 F4     CPX ram_00F4
C - - - - - 0x013232 04:B222: 90 EB     BCC bra_B20F
C - - - - - 0x013234 04:B224: AD F4 00  LDA a: ram_00F4
C - - - - - 0x013237 04:B227: 85 2B     STA ram_002B
C - - - - - 0x013239 04:B229: F0 42     BEQ bra_B26D_RTS
C - - - - - 0x01323B 04:B22B: C6 2B     DEC ram_002B
loc_B22D:
C D 1 - - - 0x01323D 04:B22D: A5 2B     LDA ram_002B
C - - - - - 0x01323F 04:B22F: F0 3C     BEQ bra_B26D_RTS
C - - - - - 0x013241 04:B231: A2 00     LDX #$00
C - - - - - 0x013243 04:B233: 86 1C     STX ram_001C
bra_B235:
C - - - - - 0x013245 04:B235: BD C1 00  LDA a: ram_разница_координат_и_камеры,X
C - - - - - 0x013248 04:B238: DD C2 00  CMP a: ram_00C2,X
C - - - - - 0x01324B 04:B23B: B0 22     BCS bra_B25F
C - - - - - 0x01324D 04:B23D: BD A2 00  LDA a: ram_приоритет_анимации + $01,X
C - - - - - 0x013250 04:B240: 85 1F     STA ram_001F
C - - - - - 0x013252 04:B242: BD A1 00  LDA a: ram_приоритет_анимации,X
C - - - - - 0x013255 04:B245: 9D A2 00  STA a: ram_приоритет_анимации + $01,X
C - - - - - 0x013258 04:B248: A5 1F     LDA ram_001F
C - - - - - 0x01325A 04:B24A: 9D A1 00  STA a: ram_приоритет_анимации,X
C - - - - - 0x01325D 04:B24D: BD C2 00  LDA a: ram_00C2,X
C - - - - - 0x013260 04:B250: 85 1F     STA ram_001F
C - - - - - 0x013262 04:B252: BD C1 00  LDA a: ram_разница_координат_и_камеры,X
C - - - - - 0x013265 04:B255: 9D C2 00  STA a: ram_00C2,X
C - - - - - 0x013268 04:B258: A5 1F     LDA ram_001F
C - - - - - 0x01326A 04:B25A: 9D C1 00  STA a: ram_разница_координат_и_камеры,X
C - - - - - 0x01326D 04:B25D: E6 1C     INC ram_001C
bra_B25F:
C - - - - - 0x01326F 04:B25F: E8        INX
C - - - - - 0x013270 04:B260: E4 2B     CPX ram_002B
C - - - - - 0x013272 04:B262: 90 D1     BCC bra_B235
C - - - - - 0x013274 04:B264: A5 1C     LDA ram_001C
C - - - - - 0x013276 04:B266: F0 05     BEQ bra_B26D_RTS
C - - - - - 0x013278 04:B268: C6 2B     DEC ram_002B
C - - - - - 0x01327A 04:B26A: 4C 2D B2  JMP loc_B22D
bra_B26D_RTS:
C - - - - - 0x01327D 04:B26D: 60        RTS



sub_B26E:
loc_B26E:
C - - - - - 0x01327E 04:B26E: A2 12     LDX #$12
C - - - - - 0x013280 04:B270: A9 00     LDA #$00
bra_B272:
C - - - - - 0x013282 04:B272: 95 D9     STA ram_флаг_видимости,X
C - - - - - 0x013284 04:B274: CA        DEX
C - - - - - 0x013285 04:B275: 10 FB     BPL bra_B272
C - - - - - 0x013287 04:B277: AD F3 00  LDA a: ram_copy_camera_Y_hi
C - - - - - 0x01328A 04:B27A: F0 02     BEQ bra_B27E
C - - - - - 0x01328C 04:B27C: A9 10     LDA #$10
bra_B27E:
C - - - - - 0x01328E 04:B27E: 8D F5 00  STA a: ram_00F5
C - - - - - 0x013291 04:B281: A5 F4     LDA ram_00F4
C - - - - - 0x013293 04:B283: D0 03     BNE bra_B288
C - - - - - 0x013295 04:B285: 4C 15 B3  JMP loc_B315_RTS
bra_B288:
C - - - - - 0x013298 04:B288: A2 00     LDX #$00
loc_B28A:
C D 1 - - - 0x01329A 04:B28A: BD A1 00  LDA a: ram_приоритет_анимации,X
C - - - - - 0x01329D 04:B28D: 29 1F     AND #$1F
C - - - - - 0x01329F 04:B28F: A8        TAY
C - - - - - 0x0132A0 04:B290: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x0132A3 04:B293: 38        SEC
C - - - - - 0x0132A4 04:B294: E5 F0     SBC ram_copy_camera_X_lo
C - - - - - 0x0132A6 04:B296: 99 AF 03  STA ram_03AF,Y
C - - - - - 0x0132A9 04:B299: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x0132AC 04:B29C: E5 F1     SBC ram_copy_camera_X_hi
C - - - - - 0x0132AE 04:B29E: D0 5B     BNE bra_B2FB
C - - - - - 0x0132B0 04:B2A0: B9 AF 03  LDA ram_03AF,Y
C - - - - - 0x0132B3 04:B2A3: C9 08     CMP #$08
C - - - - - 0x0132B5 04:B2A5: 90 54     BCC bra_B2FB
C - - - - - 0x0132B7 04:B2A7: 18        CLC
C - - - - - 0x0132B8 04:B2A8: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x0132BB 04:B2AB: 65 F5     ADC ram_00F5
C - - - - - 0x0132BD 04:B2AD: 85 2C     STA ram_002C
C - - - - - 0x0132BF 04:B2AF: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x0132C2 04:B2B2: 69 00     ADC #$00
C - - - - - 0x0132C4 04:B2B4: 85 2D     STA ram_002D
C - - - - - 0x0132C6 04:B2B6: 38        SEC
C - - - - - 0x0132C7 04:B2B7: A5 2C     LDA ram_002C
C - - - - - 0x0132C9 04:B2B9: E5 F2     SBC ram_copy_camera_Y_lo
C - - - - - 0x0132CB 04:B2BB: 85 2C     STA ram_002C
C - - - - - 0x0132CD 04:B2BD: 99 D5 03  STA ram_03D5,Y
C - - - - - 0x0132D0 04:B2C0: A5 2D     LDA ram_002D
C - - - - - 0x0132D2 04:B2C2: E5 F3     SBC ram_copy_camera_Y_hi
C - - - - - 0x0132D4 04:B2C4: 85 2D     STA ram_002D
C - - - - - 0x0132D6 04:B2C6: 38        SEC
C - - - - - 0x0132D7 04:B2C7: A5 2C     LDA ram_002C
C - - - - - 0x0132D9 04:B2C9: F9 86 03  SBC ram_игрок_Z_lo,Y
C - - - - - 0x0132DC 04:B2CC: 99 C2 03  STA ram_03C2,Y
C - - - - - 0x0132DF 04:B2CF: A5 2D     LDA ram_002D
C - - - - - 0x0132E1 04:B2D1: F9 99 03  SBC ram_игрок_Z_hi,Y
C - - - - - 0x0132E4 04:B2D4: D0 15     BNE bra_B2EB
C - - - - - 0x0132E6 04:B2D6: A5 2D     LDA ram_002D
C - - - - - 0x0132E8 04:B2D8: F0 05     BEQ bra_B2DF
C - - - - - 0x0132EA 04:B2DA: A9 FF     LDA #$FF
C - - - - - 0x0132EC 04:B2DC: 99 D5 03  STA ram_03D5,Y
bra_B2DF:
C - - - - - 0x0132EF 04:B2DF: A9 01     LDA #$01
C - - - - - 0x0132F1 04:B2E1: 99 D9 00  STA a: ram_флаг_видимости,Y
C - - - - - 0x0132F4 04:B2E4: BD A1 00  LDA a: ram_приоритет_анимации,X
C - - - - - 0x0132F7 04:B2E7: 29 20     AND #$20
C - - - - - 0x0132F9 04:B2E9: F0 22     BEQ bra_B30D
bra_B2EB:
C - - - - - 0x0132FB 04:B2EB: BD A1 00  LDA a: ram_приоритет_анимации,X
C - - - - - 0x0132FE 04:B2EE: 29 20     AND #$20
C - - - - - 0x013300 04:B2F0: F0 09     BEQ bra_B2FB
C - - - - - 0x013302 04:B2F2: A5 2D     LDA ram_002D
C - - - - - 0x013304 04:B2F4: F0 17     BEQ bra_B30D
C - - - - - 0x013306 04:B2F6: A9 FF     LDA #$FF
C - - - - - 0x013308 04:B2F8: 99 D5 03  STA ram_03D5,Y
bra_B2FB:
C - - - - - 0x01330B 04:B2FB: 8A        TXA
C - - - - - 0x01330C 04:B2FC: A8        TAY
C - - - - - 0x01330D 04:B2FD: CA        DEX
C - - - - - 0x01330E 04:B2FE: CE F4 00  DEC a: ram_00F4
bra_B301:
C - - - - - 0x013311 04:B301: B9 A2 00  LDA a: ram_приоритет_анимации + $01,Y
C - - - - - 0x013314 04:B304: 99 A1 00  STA a: ram_приоритет_анимации,Y
C - - - - - 0x013317 04:B307: C8        INY
C - - - - - 0x013318 04:B308: CC F4 00  CPY a: ram_00F4
C - - - - - 0x01331B 04:B30B: 90 F4     BCC bra_B301
bra_B30D:
C - - - - - 0x01331D 04:B30D: E8        INX
C - - - - - 0x01331E 04:B30E: E4 F4     CPX ram_00F4
C - - - - - 0x013320 04:B310: B0 03     BCS bra_B315_RTS
C - - - - - 0x013322 04:B312: 4C 8A B2  JMP loc_B28A
bra_B315_RTS:
loc_B315_RTS:
C D 1 - - - 0x013325 04:B315: 60        RTS



loc_B316:
C D 1 - - - 0x013326 04:B316: A0 00     LDY #$00
C - - - - - 0x013328 04:B318: 8C FC 05  STY ram_05FC
C - - - - - 0x01332B 04:B31B: AD FD 05  LDA ram_сила_ветра
loc_B31E:
C D 1 - - - 0x01332E 04:B31E: D9 8E B4  CMP tbl_B48E,Y
C - - - - - 0x013331 04:B321: F0 09     BEQ bra_B32C
C - - - - - 0x013333 04:B323: 90 07     BCC bra_B32C
C - - - - - 0x013335 04:B325: EE FC 05  INC ram_05FC
C - - - - - 0x013338 04:B328: C8        INY
C - - - - - 0x013339 04:B329: 4C 1E B3  JMP loc_B31E
bra_B32C:
C - - - - - 0x01333C 04:B32C: AD FE 05  LDA ram_сторона_ветра_дождя
C - - - - - 0x01333F 04:B32F: 29 E0     AND #$E0
C - - - - - 0x013341 04:B331: 4A        LSR
C - - - - - 0x013342 04:B332: 4A        LSR
C - - - - - 0x013343 04:B333: 4A        LSR
C - - - - - 0x013344 04:B334: A8        TAY
C - - - - - 0x013345 04:B335: B9 92 B4  LDA tbl_B492,Y
C - - - - - 0x013348 04:B338: 85 2C     STA ram_002C
C - - - - - 0x01334A 04:B33A: B9 93 B4  LDA tbl_B493,Y
C - - - - - 0x01334D 04:B33D: 85 2D     STA ram_002D
C - - - - - 0x01334F 04:B33F: B9 94 B4  LDA tbl_B494,Y
C - - - - - 0x013352 04:B342: 85 2E     STA ram_002E
C - - - - - 0x013354 04:B344: B9 95 B4  LDA tbl_B495,Y
C - - - - - 0x013357 04:B347: 85 2F     STA ram_002F
C - - - - - 0x013359 04:B349: A9 00     LDA #$00
C - - - - - 0x01335B 04:B34B: 8D 00 06  STA ram_ветер_spd_X_lo
C - - - - - 0x01335E 04:B34E: 8D FF 05  STA ram_ветер_spd_X_hi
C - - - - - 0x013361 04:B351: 8D 02 06  STA ram_ветер_spd_Y_lo
C - - - - - 0x013364 04:B354: 8D 01 06  STA ram_ветер_spd_Y_hi
C - - - - - 0x013367 04:B357: AD FD 05  LDA ram_сила_ветра
C - - - - - 0x01336A 04:B35A: F0 3A     BEQ bra_B396
C - - - - - 0x01336C 04:B35C: 85 1C     STA ram_001C
bra_B35E:
C - - - - - 0x01336E 04:B35E: 06 1C     ASL ram_001C
C - - - - - 0x013370 04:B360: 90 22     BCC bra_B384
C - - - - - 0x013372 04:B362: 18        CLC
C - - - - - 0x013373 04:B363: A5 2C     LDA ram_002C
C - - - - - 0x013375 04:B365: 6D 00 06  ADC ram_ветер_spd_X_lo
C - - - - - 0x013378 04:B368: 8D 00 06  STA ram_ветер_spd_X_lo
C - - - - - 0x01337B 04:B36B: A5 2D     LDA ram_002D
C - - - - - 0x01337D 04:B36D: 6D FF 05  ADC ram_ветер_spd_X_hi
C - - - - - 0x013380 04:B370: 8D FF 05  STA ram_ветер_spd_X_hi
C - - - - - 0x013383 04:B373: 18        CLC
C - - - - - 0x013384 04:B374: A5 2E     LDA ram_002E
C - - - - - 0x013386 04:B376: 6D 02 06  ADC ram_ветер_spd_Y_lo
C - - - - - 0x013389 04:B379: 8D 02 06  STA ram_ветер_spd_Y_lo
C - - - - - 0x01338C 04:B37C: A5 2F     LDA ram_002F
C - - - - - 0x01338E 04:B37E: 6D 01 06  ADC ram_ветер_spd_Y_hi
C - - - - - 0x013391 04:B381: 8D 01 06  STA ram_ветер_spd_Y_hi
bra_B384:
C - - - - - 0x013394 04:B384: A5 2D     LDA ram_002D
C - - - - - 0x013396 04:B386: 0A        ASL
C - - - - - 0x013397 04:B387: 66 2D     ROR ram_002D
C - - - - - 0x013399 04:B389: 66 2C     ROR ram_002C
C - - - - - 0x01339B 04:B38B: A5 2F     LDA ram_002F
C - - - - - 0x01339D 04:B38D: 0A        ASL
C - - - - - 0x01339E 04:B38E: 66 2F     ROR ram_002F
C - - - - - 0x0133A0 04:B390: 66 2E     ROR ram_002E
C - - - - - 0x0133A2 04:B392: A5 1C     LDA ram_001C
C - - - - - 0x0133A4 04:B394: D0 C8     BNE bra_B35E
bra_B396:
C - - - - - 0x0133A6 04:B396: A2 00     LDX #$00
C - - - - - 0x0133A8 04:B398: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x0133AB 04:B39B: C9 03     CMP #$03
C - - - - - 0x0133AD 04:B39D: F0 03     BEQ bra_B3A2
C - - - - - 0x0133AF 04:B39F: 4C 4D B4  JMP loc_B44D_RTS
bra_B3A2:
loc_B3A2:
C D 1 - - - 0x0133B2 04:B3A2: A0 0D     LDY #$0D
C - - - - - 0x0133B4 04:B3A4: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x0133B7 04:B3A7: C9 80     CMP #$80
C - - - - - 0x0133B9 04:B3A9: 90 03     BCC bra_B3AE
C - - - - - 0x0133BB 04:B3AB: 4C 45 B4  JMP loc_B445
bra_B3AE:
C - - - - - 0x0133BE 04:B3AE: 4A        LSR
C - - - - - 0x0133BF 04:B3AF: 4A        LSR
C - - - - - 0x0133C0 04:B3B0: 4A        LSR
C - - - - - 0x0133C1 04:B3B1: 29 0C     AND #$0C
C - - - - - 0x0133C3 04:B3B3: 85 1C     STA ram_001C
C - - - - - 0x0133C5 04:B3B5: A8        TAY
C - - - - - 0x0133C6 04:B3B6: E0 0C     CPX #$0C
C - - - - - 0x0133C8 04:B3B8: D0 02     BNE bra_B3BC
C - - - - - 0x0133CA 04:B3BA: C8        INY
C - - - - - 0x0133CB 04:B3BB: C8        INY
bra_B3BC:
C - - - - - 0x0133CC 04:B3BC: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0133CF 04:B3BF: 10 01     BPL bra_B3C2
C - - - - - 0x0133D1 04:B3C1: C8        INY
bra_B3C2:
C - - - - - 0x0133D2 04:B3C2: 98        TYA
C - - - - - 0x0133D3 04:B3C3: 0A        ASL
C - - - - - 0x0133D4 04:B3C4: A8        TAY
C - - - - - 0x0133D5 04:B3C5: B9 4E B4  LDA tbl_B44E,Y
C - - - - - 0x0133D8 04:B3C8: 85 2C     STA ram_002C
C - - - - - 0x0133DA 04:B3CA: 85 2E     STA ram_002E
C - - - - - 0x0133DC 04:B3CC: B9 4F B4  LDA tbl_B44F,Y
C - - - - - 0x0133DF 04:B3CF: 85 2D     STA ram_002D
C - - - - - 0x0133E1 04:B3D1: 85 2F     STA ram_002F
C - - - - - 0x0133E3 04:B3D3: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x0133E6 04:B3D6: CD 34 03  CMP ram_погода_X_hi
C - - - - - 0x0133E9 04:B3D9: F0 05     BEQ bra_B3E0
C - - - - - 0x0133EB 04:B3DB: 90 1E     BCC bra_B3FB
C - - - - - 0x0133ED 04:B3DD: 4C EA B3  JMP loc_B3EA
bra_B3E0:
C - - - - - 0x0133F0 04:B3E0: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x0133F3 04:B3E3: CD 21 03  CMP ram_погода_X_lo
C - - - - - 0x0133F6 04:B3E6: F0 24     BEQ bra_B40C
C - - - - - 0x0133F8 04:B3E8: 90 11     BCC bra_B3FB
loc_B3EA:
C D 1 - - - 0x0133FA 04:B3EA: 18        CLC
C - - - - - 0x0133FB 04:B3EB: A5 2C     LDA ram_002C
C - - - - - 0x0133FD 04:B3ED: 49 FF     EOR #$FF
C - - - - - 0x0133FF 04:B3EF: 69 01     ADC #$01
C - - - - - 0x013401 04:B3F1: 85 2C     STA ram_002C
C - - - - - 0x013403 04:B3F3: A5 2D     LDA ram_002D
C - - - - - 0x013405 04:B3F5: 49 FF     EOR #$FF
C - - - - - 0x013407 04:B3F7: 69 00     ADC #$00
C - - - - - 0x013409 04:B3F9: 85 2D     STA ram_002D
bra_B3FB:
C - - - - - 0x01340B 04:B3FB: 18        CLC
C - - - - - 0x01340C 04:B3FC: BD E8 03  LDA ram_игрок_spd_X_lo,X
C - - - - - 0x01340F 04:B3FF: 65 2C     ADC ram_002C
C - - - - - 0x013411 04:B401: 9D E8 03  STA ram_игрок_spd_X_lo,X
C - - - - - 0x013414 04:B404: BD F6 03  LDA ram_игрок_spd_X_hi,X
C - - - - - 0x013417 04:B407: 65 2D     ADC ram_002D
C - - - - - 0x013419 04:B409: 9D F6 03  STA ram_игрок_spd_X_hi,X
bra_B40C:
C - - - - - 0x01341C 04:B40C: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01341F 04:B40F: CD 6D 03  CMP ram_погода_Y_hi
C - - - - - 0x013422 04:B412: F0 05     BEQ bra_B419
C - - - - - 0x013424 04:B414: 90 1E     BCC bra_B434
C - - - - - 0x013426 04:B416: 4C 23 B4  JMP loc_B423
bra_B419:
C - - - - - 0x013429 04:B419: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01342C 04:B41C: CD 5A 03  CMP ram_погода_Y_lo
C - - - - - 0x01342F 04:B41F: F0 24     BEQ bra_B445
C - - - - - 0x013431 04:B421: 90 11     BCC bra_B434
loc_B423:
C D 1 - - - 0x013433 04:B423: 18        CLC
C - - - - - 0x013434 04:B424: A5 2E     LDA ram_002E
C - - - - - 0x013436 04:B426: 49 FF     EOR #$FF
C - - - - - 0x013438 04:B428: 69 01     ADC #$01
C - - - - - 0x01343A 04:B42A: 85 2E     STA ram_002E
C - - - - - 0x01343C 04:B42C: A5 2F     LDA ram_002F
C - - - - - 0x01343E 04:B42E: 49 FF     EOR #$FF
C - - - - - 0x013440 04:B430: 69 00     ADC #$00
C - - - - - 0x013442 04:B432: 85 2F     STA ram_002F
bra_B434:
C - - - - - 0x013444 04:B434: 18        CLC
C - - - - - 0x013445 04:B435: BD 04 04  LDA ram_игрок_spd_Y_lo,X
C - - - - - 0x013448 04:B438: 65 2E     ADC ram_002E
C - - - - - 0x01344A 04:B43A: 9D 04 04  STA ram_игрок_spd_Y_lo,X
C - - - - - 0x01344D 04:B43D: BD 12 04  LDA ram_игрок_spd_Y_hi,X
C - - - - - 0x013450 04:B440: 65 2F     ADC ram_002F
C - - - - - 0x013452 04:B442: 9D 12 04  STA ram_игрок_spd_Y_hi,X
loc_B445:
bra_B445:
C D 1 - - - 0x013455 04:B445: E8        INX
C - - - - - 0x013456 04:B446: E0 0D     CPX #$0D
C - - - - - 0x013458 04:B448: B0 03     BCS bra_B44D_RTS
C - - - - - 0x01345A 04:B44A: 4C A2 B3  JMP loc_B3A2
bra_B44D_RTS:
loc_B44D_RTS:
C D 1 - - - 0x01345D 04:B44D: 60        RTS



tbl_B44E:
- D 1 - - - 0x01345E 04:B44E: 00        .byte $00   ; 
tbl_B44F:
- D 1 - - - 0x01345F 04:B44F: 01        .byte $01   ; 
- D 1 - - - 0x013460 04:B450: 40        .byte $40   ; 
- D 1 - - - 0x013461 04:B451: 00        .byte $00   ; 
- D 1 - - - 0x013462 04:B452: 40        .byte $40   ; 
- D 1 - - - 0x013463 04:B453: 00        .byte $00   ; 
- D 1 - - - 0x013464 04:B454: 40        .byte $40   ; 
- D 1 - - - 0x013465 04:B455: 00        .byte $00   ; 
- D 1 - - - 0x013466 04:B456: C0        .byte $C0   ; 
- D 1 - - - 0x013467 04:B457: 00        .byte $00   ; 
- D 1 - - - 0x013468 04:B458: 30        .byte $30   ; 
- D 1 - - - 0x013469 04:B459: 00        .byte $00   ; 
- D 1 - - - 0x01346A 04:B45A: 30        .byte $30   ; 
- D 1 - - - 0x01346B 04:B45B: 00        .byte $00   ; 
- D 1 - - - 0x01346C 04:B45C: 30        .byte $30   ; 
- D 1 - - - 0x01346D 04:B45D: 00        .byte $00   ; 
- D 1 - - - 0x01346E 04:B45E: A0        .byte $A0   ; 
- D 1 - - - 0x01346F 04:B45F: 00        .byte $00   ; 
- D 1 - - - 0x013470 04:B460: 20        .byte $20   ; 
- D 1 - - - 0x013471 04:B461: 00        .byte $00   ; 
- D 1 - - - 0x013472 04:B462: 20        .byte $20   ; 
- D 1 - - - 0x013473 04:B463: 00        .byte $00   ; 
- D 1 - - - 0x013474 04:B464: 20        .byte $20   ; 
- D 1 - - - 0x013475 04:B465: 00        .byte $00   ; 
- D 1 - - - 0x013476 04:B466: 80        .byte $80   ; 
- D 1 - - - 0x013477 04:B467: 00        .byte $00   ; 
- D 1 - - - 0x013478 04:B468: 10        .byte $10   ; 
- D 1 - - - 0x013479 04:B469: 00        .byte $00   ; 
- D 1 - - - 0x01347A 04:B46A: 10        .byte $10   ; 
- D 1 - - - 0x01347B 04:B46B: 00        .byte $00   ; 
- D 1 - - - 0x01347C 04:B46C: 10        .byte $10   ; 
- D 1 - - - 0x01347D 04:B46D: 00        .byte $00   ; 
- - - - - - 0x01347E 04:B46E: 40        .byte $40   ; 
- - - - - - 0x01347F 04:B46F: 00        .byte $00   ; 
- - - - - - 0x013480 04:B470: 18        .byte $18   ; 
- - - - - - 0x013481 04:B471: 00        .byte $00   ; 
- - - - - - 0x013482 04:B472: 18        .byte $18   ; 
- - - - - - 0x013483 04:B473: 00        .byte $00   ; 
- - - - - - 0x013484 04:B474: 18        .byte $18   ; 
- - - - - - 0x013485 04:B475: 00        .byte $00   ; 
- - - - - - 0x013486 04:B476: 20        .byte $20   ; 
- - - - - - 0x013487 04:B477: 00        .byte $00   ; 
- - - - - - 0x013488 04:B478: 10        .byte $10   ; 
- - - - - - 0x013489 04:B479: 00        .byte $00   ; 
- - - - - - 0x01348A 04:B47A: 10        .byte $10   ; 
- - - - - - 0x01348B 04:B47B: 00        .byte $00   ; 
- - - - - - 0x01348C 04:B47C: 10        .byte $10   ; 
- - - - - - 0x01348D 04:B47D: 00        .byte $00   ; 
- - - - - - 0x01348E 04:B47E: 10        .byte $10   ; 
- - - - - - 0x01348F 04:B47F: 00        .byte $00   ; 
- - - - - - 0x013490 04:B480: 08        .byte $08   ; 
- - - - - - 0x013491 04:B481: 00        .byte $00   ; 
- - - - - - 0x013492 04:B482: 08        .byte $08   ; 
- - - - - - 0x013493 04:B483: 00        .byte $00   ; 
- - - - - - 0x013494 04:B484: 08        .byte $08   ; 
- - - - - - 0x013495 04:B485: 00        .byte $00   ; 
- - - - - - 0x013496 04:B486: 08        .byte $08   ; 
- - - - - - 0x013497 04:B487: 00        .byte $00   ; 
- - - - - - 0x013498 04:B488: 04        .byte $04   ; 
- - - - - - 0x013499 04:B489: 00        .byte $00   ; 
- - - - - - 0x01349A 04:B48A: 04        .byte $04   ; 
- - - - - - 0x01349B 04:B48B: 00        .byte $00   ; 
- - - - - - 0x01349C 04:B48C: 04        .byte $04   ; 
- - - - - - 0x01349D 04:B48D: 00        .byte $00   ; 



tbl_B48E:
- D 1 - - - 0x01349E 04:B48E: 00        .byte $00   ; 
- D 1 - - - 0x01349F 04:B48F: 03        .byte $03   ; 
- D 1 - - - 0x0134A0 04:B490: 05        .byte $05   ; 
- D 1 - - - 0x0134A1 04:B491: 80        .byte $80   ; 



tbl_B492:
- D 1 - - - 0x0134A2 04:B492: 00        .byte $00   ; 
tbl_B493:
- D 1 - - - 0x0134A3 04:B493: 00        .byte $00   ; 
tbl_B494:
- D 1 - - - 0x0134A4 04:B494: 80        .byte $80   ; 
tbl_B495:
- D 1 - - - 0x0134A5 04:B495: FF        .byte $FF   ; 
- D 1 - - - 0x0134A6 04:B496: A6        .byte $A6   ; 
- D 1 - - - 0x0134A7 04:B497: 00        .byte $00   ; 
- D 1 - - - 0x0134A8 04:B498: AD        .byte $AD   ; 
- D 1 - - - 0x0134A9 04:B499: FF        .byte $FF   ; 
- D 1 - - - 0x0134AA 04:B49A: 00        .byte $00   ; 
- D 1 - - - 0x0134AB 04:B49B: 01        .byte $01   ; 
- D 1 - - - 0x0134AC 04:B49C: 00        .byte $00   ; 
- D 1 - - - 0x0134AD 04:B49D: 00        .byte $00   ; 
- D 1 - - - 0x0134AE 04:B49E: A6        .byte $A6   ; 
- D 1 - - - 0x0134AF 04:B49F: 00        .byte $00   ; 
- D 1 - - - 0x0134B0 04:B4A0: 53        .byte $53   ; 
- D 1 - - - 0x0134B1 04:B4A1: 00        .byte $00   ; 
- - - - - - 0x0134B2 04:B4A2: 00        .byte $00   ; 
- - - - - - 0x0134B3 04:B4A3: 00        .byte $00   ; 
- - - - - - 0x0134B4 04:B4A4: 80        .byte $80   ; 
- - - - - - 0x0134B5 04:B4A5: 00        .byte $00   ; 
- - - - - - 0x0134B6 04:B4A6: 5A        .byte $5A   ; 
- - - - - - 0x0134B7 04:B4A7: FF        .byte $FF   ; 
- - - - - - 0x0134B8 04:B4A8: 53        .byte $53   ; 
- - - - - - 0x0134B9 04:B4A9: 00        .byte $00   ; 
- D 1 - - - 0x0134BA 04:B4AA: 00        .byte $00   ; 
- D 1 - - - 0x0134BB 04:B4AB: FF        .byte $FF   ; 
- D 1 - - - 0x0134BC 04:B4AC: 00        .byte $00   ; 
- D 1 - - - 0x0134BD 04:B4AD: 00        .byte $00   ; 
- - - - - - 0x0134BE 04:B4AE: 5A        .byte $5A   ; 
- - - - - - 0x0134BF 04:B4AF: FF        .byte $FF   ; 
- - - - - - 0x0134C0 04:B4B0: AD        .byte $AD   ; 
- - - - - - 0x0134C1 04:B4B1: FF        .byte $FF   ; 



loc_B4B2:
C D 1 - - - 0x0134C2 04:B4B2: A5 5C     LDA ram_game_script
C - - - - - 0x0134C4 04:B4B4: 29 01     AND #$01
C - - - - - 0x0134C6 04:B4B6: F0 06     BEQ bra_B4BE
C - - - - - 0x0134C8 04:B4B8: 20 50 B8  JSR sub_B850
C - - - - - 0x0134CB 04:B4BB: 4C C8 B4  JMP loc_B4C8_RTS
bra_B4BE:
C - - - - - 0x0134CE 04:B4BE: A2 00     LDX #$00
bra_B4C0:
C - - - - - 0x0134D0 04:B4C0: 20 C9 B4  JSR sub_B4C9
C - - - - - 0x0134D3 04:B4C3: E8        INX
C - - - - - 0x0134D4 04:B4C4: E0 04     CPX #$04
C - - - - - 0x0134D6 04:B4C6: 90 F8     BCC bra_B4C0
loc_B4C8_RTS:
C D 1 - - - 0x0134D8 04:B4C8: 60        RTS



sub_B4C9:
C - - - - - 0x0134D9 04:B4C9: 86 43     STX ram_0043
C - - - - - 0x0134DB 04:B4CB: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x0134DE 04:B4CE: 30 0B     BMI bra_B4DB
C - - - - - 0x0134E0 04:B4D0: AA        TAX
C - - - - - 0x0134E1 04:B4D1: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x0134E4 04:B4D4: 30 05     BMI bra_B4DB
C - - - - - 0x0134E6 04:B4D6: BD 79 04  LDA ram_игрок_номер_действия,X
C - - - - - 0x0134E9 04:B4D9: 30 03     BMI bra_B4DE
bra_B4DB:
C - - - - - 0x0134EB 04:B4DB: 4C 24 B7  JMP loc_B724
bra_B4DE:
C - - - - - 0x0134EE 04:B4DE: A6 43     LDX ram_0043
C - - - - - 0x0134F0 04:B4E0: 20 7A C0  JSR sub_0x01C08A
C - - - - - 0x0134F3 04:B4E3: BD 04 00  LDA a: ram_btn_hold,X
C - - - - - 0x0134F6 04:B4E6: 8D 1D 00  STA a: ram_001D
C - - - - - 0x0134F9 04:B4E9: BD 08 00  LDA a: ram_btn_press,X
C - - - - - 0x0134FC 04:B4EC: 8D 1E 00  STA a: ram_001E
C - - - - - 0x0134FF 04:B4EF: BD 6C 05  LDA ram_056C_кнопки,X
C - - - - - 0x013502 04:B4F2: 8D 1F 00  STA a: ram_001F
C - - - - - 0x013505 04:B4F5: BD 70 05  LDA ram_0570_кнопки,X
C - - - - - 0x013508 04:B4F8: 8D 20 00  STA a: ram_0020
C - - - - - 0x01350B 04:B4FB: BD 7C 05  LDA ram_057C_кнопки,X
C - - - - - 0x01350E 04:B4FE: 8D 21 00  STA a: ram_0021
C - - - - - 0x013511 04:B501: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x013514 04:B504: AA        TAX
C - - - - - 0x013515 04:B505: A5 5C     LDA ram_game_script
C - - - - - 0x013517 04:B507: 29 40     AND #$40
C - - - - - 0x013519 04:B509: D0 2B     BNE bra_B536
C - - - - - 0x01351B 04:B50B: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x01351E 04:B50E: 29 01     AND #$01
C - - - - - 0x013520 04:B510: D0 44     BNE bra_B556
C - - - - - 0x013522 04:B512: E0 0A     CPX #$0A
C - - - - - 0x013524 04:B514: B0 2B     BCS bra_B541
C - - - - - 0x013526 04:B516: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013529 04:B519: C0 0A     CPY #$0A
C - - - - - 0x01352B 04:B51B: 90 0C     BCC bra_B529
C - - - - - 0x01352D 04:B51D: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x013530 04:B520: 29 40     AND #$40
C - - - - - 0x013532 04:B522: F0 05     BEQ bra_B529
C - - - - - 0x013534 04:B524: B9 7C 06  LDA ram_067C,Y
C - - - - - 0x013537 04:B527: 10 0D     BPL bra_B536
bra_B529:
C - - - - - 0x013539 04:B529: 8A        TXA
C - - - - - 0x01353A 04:B52A: 29 01     AND #$01
C - - - - - 0x01353C 04:B52C: A8        TAY
C - - - - - 0x01353D 04:B52D: B9 7A 06  LDA ram_направление_паса_команды,Y
C - - - - - 0x013540 04:B530: 29 0F     AND #$0F
C - - - - - 0x013542 04:B532: C9 0F     CMP #$0F
C - - - - - 0x013544 04:B534: F0 20     BEQ bra_B556
bra_B536:
C - - - - - 0x013546 04:B536: A9 03     LDA #$03
C - - - - - 0x013548 04:B538: 85 1C     STA ram_001C
C - - - - - 0x01354A 04:B53A: 4C 78 B5  JMP loc_B578
- - - - - - 0x01354D 04:B53D: E0 0A     CPX #$0A
- - - - - - 0x01354F 04:B53F: 90 15     BCC bra_B556
bra_B541:
C - - - - - 0x013551 04:B541: BD 7C 06  LDA ram_067C,X
C - - - - - 0x013554 04:B544: 30 10     BMI bra_B556
C - - - - - 0x013556 04:B546: A9 04     LDA #$04
C - - - - - 0x013558 04:B548: 85 1C     STA ram_001C
C - - - - - 0x01355A 04:B54A: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x01355D 04:B54D: 29 40     AND #$40
C - - - - - 0x01355F 04:B54F: D0 27     BNE bra_B578
C - - - - - 0x013561 04:B551: E6 1C     INC ram_001C
C - - - - - 0x013563 04:B553: 4C 78 B5  JMP loc_B578
bra_B556:
C - - - - - 0x013566 04:B556: A9 00     LDA #$00
C - - - - - 0x013568 04:B558: 85 1C     STA ram_001C
C - - - - - 0x01356A 04:B55A: 8A        TXA
C - - - - - 0x01356B 04:B55B: 29 01     AND #$01
C - - - - - 0x01356D 04:B55D: A8        TAY
C - - - - - 0x01356E 04:B55E: AD 2A 05  LDA ram_флаг_владения_мячом_ком
C - - - - - 0x013571 04:B561: 0D 2B 05  ORA ram_флаг_владения_мячом_ком + $01
C - - - - - 0x013574 04:B564: 10 12     BPL bra_B578
C - - - - - 0x013576 04:B566: E6 1C     INC ram_001C
C - - - - - 0x013578 04:B568: B9 2A 05  LDA ram_флаг_владения_мячом_ком,Y
C - - - - - 0x01357B 04:B56B: 10 0B     BPL bra_B578
C - - - - - 0x01357D 04:B56D: E6 1C     INC ram_001C
C - - - - - 0x01357F 04:B56F: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x013582 04:B572: 29 40     AND #$40
C - - - - - 0x013584 04:B574: D0 02     BNE bra_B578
C - - - - - 0x013586 04:B576: E6 1C     INC ram_001C
bra_B578:
loc_B578:
C D 1 - - - 0x013588 04:B578: A5 1C     LDA ram_001C
C - - - - - 0x01358A 04:B57A: 0A        ASL
C - - - - - 0x01358B 04:B57B: A8        TAY
C - - - - - 0x01358C 04:B57C: B9 37 B7  LDA tbl_B737,Y
C - - - - - 0x01358F 04:B57F: 85 2E     STA ram_002E
C - - - - - 0x013591 04:B581: B9 38 B7  LDA tbl_B737 + $01,Y
C - - - - - 0x013594 04:B584: 85 2F     STA ram_002F
C - - - - - 0x013596 04:B586: A9 00     LDA #$00
C - - - - - 0x013598 04:B588: 85 1C     STA ram_001C
C - - - - - 0x01359A 04:B58A: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x01359D 04:B58D: 29 B0     AND #$B0
C - - - - - 0x01359F 04:B58F: F0 12     BEQ bra_B5A3
C - - - - - 0x0135A1 04:B591: E6 1C     INC ram_001C
C - - - - - 0x0135A3 04:B593: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0135A6 04:B596: 30 0B     BMI bra_B5A3
C - - - - - 0x0135A8 04:B598: E6 1C     INC ram_001C
C - - - - - 0x0135AA 04:B59A: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0135AD 04:B59D: 0A        ASL
C - - - - - 0x0135AE 04:B59E: 0A        ASL
C - - - - - 0x0135AF 04:B59F: 30 02     BMI bra_B5A3
C - - - - - 0x0135B1 04:B5A1: E6 1C     INC ram_001C
bra_B5A3:
C - - - - - 0x0135B3 04:B5A3: A5 1C     LDA ram_001C
C - - - - - 0x0135B5 04:B5A5: 0A        ASL
C - - - - - 0x0135B6 04:B5A6: A8        TAY
C - - - - - 0x0135B7 04:B5A7: B1 2E     LDA (ram_002E),Y
C - - - - - 0x0135B9 04:B5A9: 85 2C     STA ram_002C
C - - - - - 0x0135BB 04:B5AB: C8        INY
C - - - - - 0x0135BC 04:B5AC: B1 2E     LDA (ram_002E),Y
C - - - - - 0x0135BE 04:B5AE: 85 2D     STA ram_002D
C - - - - - 0x0135C0 04:B5B0: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0135C3 04:B5B3: 10 21     BPL bra_B5D6
C - - - - - 0x0135C5 04:B5B5: BD BD 04  LDA ram_игрок_таймер_действия,X
C - - - - - 0x0135C8 04:B5B8: F0 15     BEQ bra_B5CF
C - - - - - 0x0135CA 04:B5BA: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x0135CD 04:B5BD: 29 7F     AND #$7F
C - - - - - 0x0135CF 04:B5BF: C9 58     CMP #$58
C - - - - - 0x0135D1 04:B5C1: F0 0C     BEQ bra_B5CF
C - - - - - 0x0135D3 04:B5C3: AD 1E 00  LDA a: ram_001E
C - - - - - 0x0135D6 04:B5C6: 29 C0     AND #$C0
C - - - - - 0x0135D8 04:B5C8: F0 05     BEQ bra_B5CF
C - - - - - 0x0135DA 04:B5CA: A9 45     LDA #$45
C - - - - - 0x0135DC 04:B5CC: 4C 21 B7  JMP loc_B721
bra_B5CF:
C - - - - - 0x0135DF 04:B5CF: AD 1E 00  LDA a: ram_001E
C - - - - - 0x0135E2 04:B5D2: 4A        LSR
C - - - - - 0x0135E3 04:B5D3: 4C 14 B6  JMP loc_B614
bra_B5D6:
C - - - - - 0x0135E6 04:B5D6: AD 20 00  LDA a: ram_0020
C - - - - - 0x0135E9 04:B5D9: 10 39     BPL bra_B614
C - - - - - 0x0135EB 04:B5DB: AD 1D 00  LDA a: ram_001D
C - - - - - 0x0135EE 04:B5DE: 29 0C     AND #$0C
C - - - - - 0x0135F0 04:B5E0: F0 09     BEQ bra_B5EB
C - - - - - 0x0135F2 04:B5E2: A0 01     LDY #$01
C - - - - - 0x0135F4 04:B5E4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x0135F6 04:B5E6: 30 03     BMI bra_B5EB
C - - - - - 0x0135F8 04:B5E8: 4C 21 B7  JMP loc_B721
bra_B5EB:
C - - - - - 0x0135FB 04:B5EB: AD 1D 00  LDA a: ram_001D
C - - - - - 0x0135FE 04:B5EE: 29 03     AND #$03
C - - - - - 0x013600 04:B5F0: F0 09     BEQ bra_B5FB
C - - - - - 0x013602 04:B5F2: A0 00     LDY #$00
C - - - - - 0x013604 04:B5F4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013606 04:B5F6: 30 F3     BMI bra_B5EB
C - - - - - 0x013608 04:B5F8: 4C 21 B7  JMP loc_B721
bra_B5FB:
C - - - - - 0x01360B 04:B5FB: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x01360E 04:B5FE: 29 08     AND #$08
C - - - - - 0x013610 04:B600: F0 09     BEQ bra_B60B
C - - - - - 0x013612 04:B602: A0 02     LDY #$02
C - - - - - 0x013614 04:B604: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013616 04:B606: 30 03     BMI bra_B60B
C - - - - - 0x013618 04:B608: 4C 21 B7  JMP loc_B721
bra_B60B:
C - - - - - 0x01361B 04:B60B: A0 03     LDY #$03
C - - - - - 0x01361D 04:B60D: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01361F 04:B60F: 30 03     BMI bra_B614
C - - - - - 0x013621 04:B611: 4C 21 B7  JMP loc_B721
bra_B614:
loc_B614:
C D 1 - - - 0x013624 04:B614: 0A        ASL
C - - - - - 0x013625 04:B615: 10 30     BPL bra_B647
C - - - - - 0x013627 04:B617: AD 65 04  LDA ram_мяч_номер_движения
C - - - - - 0x01362A 04:B61A: 29 7F     AND #$7F
C - - - - - 0x01362C 04:B61C: C9 0A     CMP #$0A
C - - - - - 0x01362E 04:B61E: D0 0E     BNE bra_B62E
C - - - - - 0x013630 04:B620: EC D6 04  CPX ram_игрок_с_мячом
C - - - - - 0x013633 04:B623: D0 09     BNE bra_B62E
C - - - - - 0x013635 04:B625: A0 04     LDY #$04
C - - - - - 0x013637 04:B627: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013639 04:B629: 30 03     BMI bra_B62E
C - - - - - 0x01363B 04:B62B: 4C 21 B7  JMP loc_B721
bra_B62E:
C - - - - - 0x01363E 04:B62E: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013641 04:B631: 29 0C     AND #$0C
C - - - - - 0x013643 04:B633: F0 09     BEQ bra_B63E
C - - - - - 0x013645 04:B635: A0 05     LDY #$05
C - - - - - 0x013647 04:B637: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013649 04:B639: 30 03     BMI bra_B63E
C - - - - - 0x01364B 04:B63B: 4C 21 B7  JMP loc_B721
bra_B63E:
C - - - - - 0x01364E 04:B63E: A0 06     LDY #$06
C - - - - - 0x013650 04:B640: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013652 04:B642: 30 03     BMI bra_B647
C - - - - - 0x013654 04:B644: 4C 21 B7  JMP loc_B721
bra_B647:
C - - - - - 0x013657 04:B647: 0A        ASL
C - - - - - 0x013658 04:B648: 10 4C     BPL bra_B696
C - - - - - 0x01365A 04:B64A: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x01365D 04:B64D: 29 7F     AND #$7F
C - - - - - 0x01365F 04:B64F: C9 02     CMP #$02
C - - - - - 0x013661 04:B651: D0 09     BNE bra_B65C
C - - - - - 0x013663 04:B653: A0 0B     LDY #$0B
C - - - - - 0x013665 04:B655: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013667 04:B657: 30 03     BMI bra_B65C
C - - - - - 0x013669 04:B659: 4C 21 B7  JMP loc_B721
bra_B65C:
C - - - - - 0x01366C 04:B65C: AD 1D 00  LDA a: ram_001D
C - - - - - 0x01366F 04:B65F: 29 0F     AND #$0F
C - - - - - 0x013671 04:B661: D0 09     BNE bra_B66C
C - - - - - 0x013673 04:B663: A0 07     LDY #$07
C - - - - - 0x013675 04:B665: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013677 04:B667: 30 03     BMI bra_B66C
C - - - - - 0x013679 04:B669: 4C 21 B7  JMP loc_B721
bra_B66C:
C - - - - - 0x01367C 04:B66C: AD 1D 00  LDA a: ram_001D
C - - - - - 0x01367F 04:B66F: 29 0C     AND #$0C
C - - - - - 0x013681 04:B671: F0 09     BEQ bra_B67C
C - - - - - 0x013683 04:B673: A0 08     LDY #$08
C - - - - - 0x013685 04:B675: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013687 04:B677: 30 03     BMI bra_B67C
C - - - - - 0x013689 04:B679: 4C 21 B7  JMP loc_B721
bra_B67C:
C - - - - - 0x01368C 04:B67C: 8A        TXA
C - - - - - 0x01368D 04:B67D: 4D 1D 00  EOR a: ram_001D
C - - - - - 0x013690 04:B680: 29 01     AND #$01
C - - - - - 0x013692 04:B682: D0 09     BNE bra_B68D
C - - - - - 0x013694 04:B684: A0 09     LDY #$09
C - - - - - 0x013696 04:B686: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013698 04:B688: 30 03     BMI bra_B68D
C - - - - - 0x01369A 04:B68A: 4C 21 B7  JMP loc_B721
bra_B68D:
C - - - - - 0x01369D 04:B68D: A0 0A     LDY #$0A
C - - - - - 0x01369F 04:B68F: B1 2C     LDA (ram_002C),Y
C - - - - - 0x0136A1 04:B691: 30 03     BMI bra_B696
C - - - - - 0x0136A3 04:B693: 4C 21 B7  JMP loc_B721
bra_B696:
C - - - - - 0x0136A6 04:B696: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0136A9 04:B699: 30 77     BMI bra_B712
C - - - - - 0x0136AB 04:B69B: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x0136AE 04:B69E: 29 7F     AND #$7F
C - - - - - 0x0136B0 04:B6A0: C9 03     CMP #$03
C - - - - - 0x0136B2 04:B6A2: D0 18     BNE bra_B6BC
C - - - - - 0x0136B4 04:B6A4: AD 1D 00  LDA a: ram_001D
C - - - - - 0x0136B7 04:B6A7: 29 03     AND #$03
C - - - - - 0x0136B9 04:B6A9: D0 0C     BNE bra_B6B7
C - - - - - 0x0136BB 04:B6AB: AD 1D 00  LDA a: ram_001D
C - - - - - 0x0136BE 04:B6AE: 29 0C     AND #$0C
C - - - - - 0x0136C0 04:B6B0: F0 0A     BEQ bra_B6BC
C - - - - - 0x0136C2 04:B6B2: A9 27     LDA #$27
C - - - - - 0x0136C4 04:B6B4: 4C 0F B7  JMP loc_B70F
bra_B6B7:
C - - - - - 0x0136C7 04:B6B7: A9 2A     LDA #$2A
C - - - - - 0x0136C9 04:B6B9: 4C 0F B7  JMP loc_B70F
bra_B6BC:
C - - - - - 0x0136CC 04:B6BC: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0136CF 04:B6BF: 29 08     AND #$08
C - - - - - 0x0136D1 04:B6C1: F0 23     BEQ bra_B6E6
C - - - - - 0x0136D3 04:B6C3: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0136D6 04:B6C6: 29 50     AND #$50
C - - - - - 0x0136D8 04:B6C8: F0 34     BEQ bra_B6FE
C - - - - - 0x0136DA 04:B6CA: 29 10     AND #$10
C - - - - - 0x0136DC 04:B6CC: D0 0C     BNE bra_B6DA
C - - - - - 0x0136DE 04:B6CE: AD 21 00  LDA a: ram_0021
C - - - - - 0x0136E1 04:B6D1: 29 0C     AND #$0C
C - - - - - 0x0136E3 04:B6D3: F0 29     BEQ bra_B6FE
C - - - - - 0x0136E5 04:B6D5: A9 24     LDA #$24
C - - - - - 0x0136E7 04:B6D7: 4C 0F B7  JMP loc_B70F
bra_B6DA:
C - - - - - 0x0136EA 04:B6DA: AD 21 00  LDA a: ram_0021
C - - - - - 0x0136ED 04:B6DD: 29 0C     AND #$0C
C - - - - - 0x0136EF 04:B6DF: F0 1D     BEQ bra_B6FE
C - - - - - 0x0136F1 04:B6E1: A9 25     LDA #$25
C - - - - - 0x0136F3 04:B6E3: 4C 0F B7  JMP loc_B70F
bra_B6E6:
C - - - - - 0x0136F6 04:B6E6: AD 21 00  LDA a: ram_0021
C - - - - - 0x0136F9 04:B6E9: 29 0F     AND #$0F
C - - - - - 0x0136FB 04:B6EB: D0 1D     BNE bra_B70A
C - - - - - 0x0136FD 04:B6ED: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013700 04:B6F0: 29 0F     AND #$0F
C - - - - - 0x013702 04:B6F2: D0 05     BNE bra_B6F9
C - - - - - 0x013704 04:B6F4: A9 01     LDA #$01
C - - - - - 0x013706 04:B6F6: 4C 0F B7  JMP loc_B70F
bra_B6F9:
C - - - - - 0x013709 04:B6F9: A9 20     LDA #$20
C - - - - - 0x01370B 04:B6FB: 4C 0F B7  JMP loc_B70F
bra_B6FE:
C - - - - - 0x01370E 04:B6FE: AD 21 00  LDA a: ram_0021
C - - - - - 0x013711 04:B701: 29 0F     AND #$0F
C - - - - - 0x013713 04:B703: F0 0D     BEQ bra_B712
C - - - - - 0x013715 04:B705: A9 1D     LDA #$21
C - - - - - 0x013717 04:B707: 4C 0F B7  JMP loc_B70F
bra_B70A:
C - - - - - 0x01371A 04:B70A: A9 21     LDA #$21
; bzk
C - - - - - 0x01371C 04:B70C: 4C 0F B7  JMP loc_B70F
loc_B70F:
C D 1 - - - 0x01371F 04:B70F: 9D 79 04  STA ram_игрок_номер_действия,X
bra_B712:
C - - - - - 0x013722 04:B712: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013725 04:B715: 29 0F     AND #$0F
C - - - - - 0x013727 04:B717: A8        TAY
C - - - - - 0x013728 04:B718: B9 27 B7  LDA tbl_B727,Y
C - - - - - 0x01372B 04:B71B: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x01372E 04:B71E: 4C 24 B7  JMP loc_B724
loc_B721:
C D 1 - - - 0x013731 04:B721: 9D 79 04  STA ram_игрок_номер_действия,X
loc_B724:
C D 1 - - - 0x013734 04:B724: A6 43     LDX ram_0043
C - - - - - 0x013736 04:B726: 60        RTS



tbl_B727:
- D 1 - - - 0x013737 04:B727: FF        .byte $FF   ; 
- D 1 - - - 0x013738 04:B728: 40        .byte $40   ; 
- D 1 - - - 0x013739 04:B729: C0        .byte $C0   ; 
- - - - - - 0x01373A 04:B72A: 00        .byte $00   ; 
- D 1 - - - 0x01373B 04:B72B: 80        .byte $80   ; 
- D 1 - - - 0x01373C 04:B72C: 60        .byte $60   ; 
- D 1 - - - 0x01373D 04:B72D: A0        .byte $A0   ; 
- - - - - - 0x01373E 04:B72E: 00        .byte $00   ; 
- D 1 - - - 0x01373F 04:B72F: 00        .byte $00   ; 
- D 1 - - - 0x013740 04:B730: 20        .byte $20   ; 
- D 1 - - - 0x013741 04:B731: E0        .byte $E0   ; 
- - - - - - 0x013742 04:B732: 00        .byte $00   ; 
- - - - - - 0x013743 04:B733: 00        .byte $00   ; 
- - - - - - 0x013744 04:B734: 00        .byte $00   ; 
- - - - - - 0x013745 04:B735: 00        .byte $00   ; 
- - - - - - 0x013746 04:B736: 00        .byte $00   ; 



tbl_B737:
- D 1 - - - 0x013747 04:B737: 45 B7     .word off_B745_00
- D 1 - - - 0x013749 04:B739: 4D B7     .word off_B74D_01
- D 1 - - - 0x01374B 04:B73B: 55 B7     .word off_B755_02
- D 1 - - - 0x01374D 04:B73D: 5D B7     .word off_B75D_03
- D 1 - - - 0x01374F 04:B73F: 6D B7     .word off_B76D_04
- D 1 - - - 0x013751 04:B741: 65 B7     .word off_B765_05
- - - - - - 0x013753 04:B743: 75 B7     .word off_B775_06
off_B745_00:
- D 1 - I - 0x013755 04:B745: 7D B7     .word off_B77D_00
- D 1 - I - 0x013757 04:B747: 89 B7     .word off_B789_01
- D 1 - I - 0x013759 04:B749: 95 B7     .word off_B795_02
- - - - - - 0x01375B 04:B74B: 01 B8     .word off_B801_03
off_B74D_01:
- D 1 - I - 0x01375D 04:B74D: D1 B7     .word off_B7D1_00
- D 1 - I - 0x01375F 04:B74F: DD B7     .word off_B7DD_01
- - - - - - 0x013761 04:B751: C5 B7     .word off_B7C5_02
- - - - - - 0x013763 04:B753: 01 B8     .word off_B801_03
off_B755_02:
- D 1 - I - 0x013765 04:B755: AD B7     .word off_B7AD_00
- D 1 - I - 0x013767 04:B757: B9 B7     .word off_B7B9_01
- D 1 - I - 0x013769 04:B759: A1 B7     .word off_B7A1_02
- D 1 - I - 0x01376B 04:B75B: 01 B8     .word off_B801_03
off_B75D_03:
- D 1 - I - 0x01376D 04:B75D: E9 B7     .word off_B7E9_00
- D 1 - I - 0x01376F 04:B75F: F5 B7     .word off_B7F5_01
- D 1 - I - 0x013771 04:B761: E9 B7     .word off_B7E9_02
- D 1 - I - 0x013773 04:B763: 01 B8     .word off_B801_03
off_B765_05:
- D 1 - I - 0x013775 04:B765: 0D B8     .word off_B80D_00
- D 1 - I - 0x013777 04:B767: 19 B8     .word off_B819_01
- - - - - - 0x013779 04:B769: 25 B8     .word off_B825_02
- - - - - - 0x01377B 04:B76B: 01 B8     .word off_B801_03
off_B76D_04:
- D 1 - I - 0x01377D 04:B76D: 31 B8     .word off_B831_00
- D 1 - I - 0x01377F 04:B76F: B9 B7     .word off_B7B9_01
- - - - - - 0x013781 04:B771: 31 B8     .word off_B831_02
- - - - - - 0x013783 04:B773: 01 B8     .word off_B801_03
off_B775_06:
- - - - - - 0x013785 04:B775: 3D B8     .word off_B83D_00
- - - - - - 0x013787 04:B777: 44 B8     .word off_B844_01
- - - - - - 0x013789 04:B779: 3D B8     .word off_B83D_02
- - - - - - 0x01378B 04:B77B: 01 B8     .word off_B801_03
off_B77D_00:
- D 1 - I - 0x01378D 04:B77D: 30        .byte $30   ; 
- D 1 - I - 0x01378E 04:B77E: 30        .byte $30   ; 
- D 1 - I - 0x01378F 04:B77F: 30        .byte $30   ; 
- D 1 - I - 0x013790 04:B780: 30        .byte $30   ; 
- D 1 - I - 0x013791 04:B781: 0D        .byte $0D   ; 
- D 1 - I - 0x013792 04:B782: 08        .byte $08   ; 
- D 1 - I - 0x013793 04:B783: 08        .byte $08   ; 
- D 1 - I - 0x013794 04:B784: 07        .byte $07   ; 
- D 1 - I - 0x013795 04:B785: 07        .byte $07   ; 
- D 1 - I - 0x013796 04:B786: 31        .byte $31   ; 
- D 1 - I - 0x013797 04:B787: 31        .byte $31   ; 
- D 1 - I - 0x013798 04:B788: 31        .byte $31   ; 
off_B789_01:
- - - - - - 0x013799 04:B789: FF        .byte $FF   ; 
- - - - - - 0x01379A 04:B78A: FF        .byte $FF   ; 
- - - - - - 0x01379B 04:B78B: FF        .byte $FF   ; 
- - - - - - 0x01379C 04:B78C: FF        .byte $FF   ; 
- D 1 - I - 0x01379D 04:B78D: 35        .byte $35   ; 
- D 1 - I - 0x01379E 04:B78E: 35        .byte $35   ; 
- D 1 - I - 0x01379F 04:B78F: 35        .byte $35   ; 
- D 1 - I - 0x0137A0 04:B790: 33        .byte $33   ; 
- D 1 - I - 0x0137A1 04:B791: 34        .byte $34   ; 
- D 1 - I - 0x0137A2 04:B792: 32        .byte $32   ; 
- D 1 - I - 0x0137A3 04:B793: 34        .byte $34   ; 
- - - - - - 0x0137A4 04:B794: 34        .byte $34   ; 
off_B795_02:
- - - - - - 0x0137A5 04:B795: 44        .byte $44   ; 
- - - - - - 0x0137A6 04:B796: 44        .byte $44   ; 
- - - - - - 0x0137A7 04:B797: 44        .byte $44   ; 
- D 1 - I - 0x0137A8 04:B798: 44        .byte $44   ; 
- - - - - - 0x0137A9 04:B799: 08        .byte $08   ; 
- - - - - - 0x0137AA 04:B79A: 08        .byte $08   ; 
- D 1 - I - 0x0137AB 04:B79B: 08        .byte $08   ; 
- D 1 - I - 0x0137AC 04:B79C: 07        .byte $07   ; 
- - - - - - 0x0137AD 04:B79D: 07        .byte $07   ; 
- - - - - - 0x0137AE 04:B79E: 07        .byte $07   ; 
- - - - - - 0x0137AF 04:B79F: 07        .byte $07   ; 
- - - - - - 0x0137B0 04:B7A0: 07        .byte $07   ; 
off_B7A1_02:
- - - - - - 0x0137B1 04:B7A1: 44        .byte $44   ; 
- - - - - - 0x0137B2 04:B7A2: 44        .byte $44   ; 
- - - - - - 0x0137B3 04:B7A3: 44        .byte $44   ; 
- - - - - - 0x0137B4 04:B7A4: 44        .byte $44   ; 
- - - - - - 0x0137B5 04:B7A5: 0A        .byte $0A   ; 
- - - - - - 0x0137B6 04:B7A6: 0A        .byte $0A   ; 
- - - - - - 0x0137B7 04:B7A7: 0A        .byte $0A   ; 
- - - - - - 0x0137B8 04:B7A8: 09        .byte $09   ; 
- - - - - - 0x0137B9 04:B7A9: 09        .byte $09   ; 
- - - - - - 0x0137BA 04:B7AA: 09        .byte $09   ; 
- - - - - - 0x0137BB 04:B7AB: 09        .byte $09   ; 
- - - - - - 0x0137BC 04:B7AC: 09        .byte $09   ; 
off_B7AD_00:
- D 1 - I - 0x0137BD 04:B7AD: 10        .byte $10   ; 
- D 1 - I - 0x0137BE 04:B7AE: 30        .byte $30   ; 
- D 1 - I - 0x0137BF 04:B7AF: 30        .byte $30   ; 
- D 1 - I - 0x0137C0 04:B7B0: 0E        .byte $0E   ; 
- - - - - - 0x0137C1 04:B7B1: 0D        .byte $0D   ; 
- D 1 - I - 0x0137C2 04:B7B2: 0A        .byte $0A   ; 
- D 1 - I - 0x0137C3 04:B7B3: 0A        .byte $0A   ; 
- D 1 - I - 0x0137C4 04:B7B4: 09        .byte $09   ; 
- D 1 - I - 0x0137C5 04:B7B5: 09        .byte $09   ; 
- D 1 - I - 0x0137C6 04:B7B6: 09        .byte $09   ; 
- D 1 - I - 0x0137C7 04:B7B7: 09        .byte $09   ; 
- D 1 - I - 0x0137C8 04:B7B8: 09        .byte $09   ; 
off_B7B9_01:
- - - - - - 0x0137C9 04:B7B9: FF        .byte $FF   ; 
- - - - - - 0x0137CA 04:B7BA: FF        .byte $FF   ; 
- - - - - - 0x0137CB 04:B7BB: FF        .byte $FF   ; 
- - - - - - 0x0137CC 04:B7BC: FF        .byte $FF   ; 
- - - - - - 0x0137CD 04:B7BD: 39        .byte $39   ; 
- D 1 - I - 0x0137CE 04:B7BE: 39        .byte $39   ; 
- D 1 - I - 0x0137CF 04:B7BF: 39        .byte $39   ; 
- D 1 - I - 0x0137D0 04:B7C0: 37        .byte $37   ; 
- D 1 - I - 0x0137D1 04:B7C1: 38        .byte $38   ; 
- D 1 - I - 0x0137D2 04:B7C2: 46        .byte $46   ; 
- D 1 - I - 0x0137D3 04:B7C3: 38        .byte $38   ; 
- D 1 - I - 0x0137D4 04:B7C4: 38        .byte $38   ; 
off_B7C5_02:
- - - - - - 0x0137D5 04:B7C5: 44        .byte $44   ; 
- - - - - - 0x0137D6 04:B7C6: 44        .byte $44   ; 
- - - - - - 0x0137D7 04:B7C7: 44        .byte $44   ; 
- - - - - - 0x0137D8 04:B7C8: 44        .byte $44   ; 
- - - - - - 0x0137D9 04:B7C9: 23        .byte $23   ; 
- - - - - - 0x0137DA 04:B7CA: 23        .byte $23   ; 
- - - - - - 0x0137DB 04:B7CB: 23        .byte $23   ; 
- - - - - - 0x0137DC 04:B7CC: 22        .byte $22   ; 
- - - - - - 0x0137DD 04:B7CD: 22        .byte $22   ; 
- - - - - - 0x0137DE 04:B7CE: 22        .byte $22   ; 
- - - - - - 0x0137DF 04:B7CF: 22        .byte $22   ; 
- - - - - - 0x0137E0 04:B7D0: 19        .byte $19   ; 
off_B7D1_00:
- D 1 - I - 0x0137E1 04:B7D1: 30        .byte $30   ; 
- D 1 - I - 0x0137E2 04:B7D2: 30        .byte $30   ; 
- - - - - - 0x0137E3 04:B7D3: 30        .byte $30   ; 
- D 1 - I - 0x0137E4 04:B7D4: 30        .byte $30   ; 
- - - - - - 0x0137E5 04:B7D5: 23        .byte $23   ; 
- D 1 - I - 0x0137E6 04:B7D6: 23        .byte $23   ; 
- D 1 - I - 0x0137E7 04:B7D7: 23        .byte $23   ; 
- D 1 - I - 0x0137E8 04:B7D8: 22        .byte $22   ; 
- D 1 - I - 0x0137E9 04:B7D9: 22        .byte $22   ; 
- D 1 - I - 0x0137EA 04:B7DA: 22        .byte $22   ; 
- D 1 - I - 0x0137EB 04:B7DB: 22        .byte $22   ; 
- D 1 - I - 0x0137EC 04:B7DC: 19        .byte $19   ; 
off_B7DD_01:
- - - - - - 0x0137ED 04:B7DD: FF        .byte $FF   ; 
- - - - - - 0x0137EE 04:B7DE: FF        .byte $FF   ; 
- - - - - - 0x0137EF 04:B7DF: FF        .byte $FF   ; 
- - - - - - 0x0137F0 04:B7E0: FF        .byte $FF   ; 
- - - - - - 0x0137F1 04:B7E1: 42        .byte $42   ; 
- D 1 - I - 0x0137F2 04:B7E2: 42        .byte $42   ; 
- D 1 - I - 0x0137F3 04:B7E3: 42        .byte $42   ; 
- D 1 - I - 0x0137F4 04:B7E4: 3B        .byte $3B   ; 
- D 1 - I - 0x0137F5 04:B7E5: 3B        .byte $3B   ; 
- D 1 - I - 0x0137F6 04:B7E6: 3B        .byte $3B   ; 
- D 1 - I - 0x0137F7 04:B7E7: 3B        .byte $3B   ; 
- - - - - - 0x0137F8 04:B7E8: 3B        .byte $3B   ; 
off_B7E9_00:
off_B7E9_02:
- D 1 - I - 0x0137F9 04:B7E9: 30        .byte $30   ; 
- D 1 - I - 0x0137FA 04:B7EA: 30        .byte $30   ; 
- D 1 - I - 0x0137FB 04:B7EB: 30        .byte $30   ; 
- D 1 - I - 0x0137FC 04:B7EC: 30        .byte $30   ; 
- - - - - - 0x0137FD 04:B7ED: 11        .byte $11   ; 
- D 1 - I - 0x0137FE 04:B7EE: 11        .byte $11   ; 
- D 1 - I - 0x0137FF 04:B7EF: 11        .byte $11   ; 
- D 1 - I - 0x013800 04:B7F0: 11        .byte $11   ; 
- D 1 - I - 0x013801 04:B7F1: 11        .byte $11   ; 
- D 1 - I - 0x013802 04:B7F2: 11        .byte $11   ; 
- D 1 - I - 0x013803 04:B7F3: 11        .byte $11   ; 
- D 1 - I - 0x013804 04:B7F4: 11        .byte $11   ; 
off_B7F5_01:
- - - - - - 0x013805 04:B7F5: 30        .byte $30   ; 
- - - - - - 0x013806 04:B7F6: 30        .byte $30   ; 
- - - - - - 0x013807 04:B7F7: 30        .byte $30   ; 
- - - - - - 0x013808 04:B7F8: 30        .byte $30   ; 
- - - - - - 0x013809 04:B7F9: 30        .byte $30   ; 
- D 1 - I - 0x01380A 04:B7FA: 30        .byte $30   ; 
- D 1 - I - 0x01380B 04:B7FB: 30        .byte $30   ; 
- D 1 - I - 0x01380C 04:B7FC: 30        .byte $30   ; 
- D 1 - I - 0x01380D 04:B7FD: 30        .byte $30   ; 
- D 1 - I - 0x01380E 04:B7FE: 30        .byte $30   ; 
- D 1 - I - 0x01380F 04:B7FF: 30        .byte $30   ; 
- - - - - - 0x013810 04:B800: 30        .byte $30   ; 
off_B801_03:
- - - - - - 0x013811 04:B801: 10        .byte $10   ; 
- D 1 - I - 0x013812 04:B802: 30        .byte $30   ; 
- - - - - - 0x013813 04:B803: 30        .byte $30   ; 
- D 1 - I - 0x013814 04:B804: 30        .byte $30   ; 
- - - - - - 0x013815 04:B805: FF        .byte $FF   ; 
- - - - - - 0x013816 04:B806: FF        .byte $FF   ; 
- D 1 - I - 0x013817 04:B807: FF        .byte $FF   ; 
- D 1 - I - 0x013818 04:B808: FF        .byte $FF   ; 
- D 1 - I - 0x013819 04:B809: FF        .byte $FF   ; 
- D 1 - I - 0x01381A 04:B80A: FF        .byte $FF   ; 
- D 1 - I - 0x01381B 04:B80B: FF        .byte $FF   ; 
- D 1 - I - 0x01381C 04:B80C: FF        .byte $FF   ; 
off_B80D_00:
- - - - - - 0x01381D 04:B80D: 52        .byte $52   ; 
- D 1 - I - 0x01381E 04:B80E: 3E        .byte $3E   ; 
- - - - - - 0x01381F 04:B80F: 52        .byte $52   ; 
- D 1 - I - 0x013820 04:B810: 52        .byte $52   ; 
- - - - - - 0x013821 04:B811: 22        .byte $22   ; 
- D 1 - I - 0x013822 04:B812: 29        .byte $29   ; 
- D 1 - I - 0x013823 04:B813: 22        .byte $22   ; 
- D 1 - I - 0x013824 04:B814: 22        .byte $22   ; 
- D 1 - I - 0x013825 04:B815: 28        .byte $28   ; 
- D 1 - I - 0x013826 04:B816: 41        .byte $41   ; 
- D 1 - I - 0x013827 04:B817: 41        .byte $41   ; 
- D 1 - I - 0x013828 04:B818: 41        .byte $41   ; 
off_B819_01:
- - - - - - 0x013829 04:B819: FF        .byte $FF   ; 
- - - - - - 0x01382A 04:B81A: FF        .byte $FF   ; 
- - - - - - 0x01382B 04:B81B: FF        .byte $FF   ; 
- - - - - - 0x01382C 04:B81C: FF        .byte $FF   ; 
- - - - - - 0x01382D 04:B81D: 54        .byte $54   ; 
- - - - - - 0x01382E 04:B81E: 54        .byte $54   ; 
- D 1 - I - 0x01382F 04:B81F: 54        .byte $54   ; 
- D 1 - I - 0x013830 04:B820: 54        .byte $54   ; 
- - - - - - 0x013831 04:B821: 54        .byte $54   ; 
- - - - - - 0x013832 04:B822: 54        .byte $54   ; 
- - - - - - 0x013833 04:B823: 54        .byte $54   ; 
- - - - - - 0x013834 04:B824: 54        .byte $54   ; 
off_B825_02:
- - - - - - 0x013835 04:B825: 52        .byte $52   ; 
- - - - - - 0x013836 04:B826: 3E        .byte $3E   ; 
- - - - - - 0x013837 04:B827: 52        .byte $52   ; 
- - - - - - 0x013838 04:B828: 52        .byte $52   ; 
- - - - - - 0x013839 04:B829: 22        .byte $22   ; 
- - - - - - 0x01383A 04:B82A: 29        .byte $29   ; 
- - - - - - 0x01383B 04:B82B: 22        .byte $22   ; 
- - - - - - 0x01383C 04:B82C: 22        .byte $22   ; 
- - - - - - 0x01383D 04:B82D: 28        .byte $28   ; 
- - - - - - 0x01383E 04:B82E: 41        .byte $41   ; 
- - - - - - 0x01383F 04:B82F: 41        .byte $41   ; 
- - - - - - 0x013840 04:B830: 41        .byte $41   ; 
off_B831_00:
off_B831_02:
- - - - - - 0x013841 04:B831: 30        .byte $30   ; 
- D 1 - I - 0x013842 04:B832: 30        .byte $30   ; 
- - - - - - 0x013843 04:B833: 30        .byte $30   ; 
- D 1 - I - 0x013844 04:B834: 30        .byte $30   ; 
- - - - - - 0x013845 04:B835: 0A        .byte $0A   ; 
- - - - - - 0x013846 04:B836: 0A        .byte $0A   ; 
- D 1 - I - 0x013847 04:B837: 0A        .byte $0A   ; 
- D 1 - I - 0x013848 04:B838: 09        .byte $09   ; 
- - - - - - 0x013849 04:B839: 09        .byte $09   ; 
- - - - - - 0x01384A 04:B83A: 09        .byte $09   ; 
- - - - - - 0x01384B 04:B83B: 09        .byte $09   ; 
- - - - - - 0x01384C 04:B83C: 09        .byte $09   ; 
off_B83D_00:
off_B83D_02:
- - - - - - 0x01384D 04:B83D: 30        .byte $30   ; 
- - - - - - 0x01384E 04:B83E: 30        .byte $30   ; 
- - - - - - 0x01384F 04:B83F: 30        .byte $30   ; 
- - - - - - 0x013850 04:B840: 30        .byte $30   ; 
- - - - - - 0x013851 04:B841: 17        .byte $17   ; 
- - - - - - 0x013852 04:B842: 17        .byte $17   ; 
- - - - - - 0x013853 04:B843: 17        .byte $17   ; 
off_B844_01:
- - - - - - 0x013854 04:B844: 30        .byte $30   ; 
- - - - - - 0x013855 04:B845: 30        .byte $30   ; 
- - - - - - 0x013856 04:B846: 30        .byte $30   ; 
- - - - - - 0x013857 04:B847: 30        .byte $30   ; 
- - - - - - 0x013858 04:B848: 30        .byte $30   ; 
- - - - - - 0x013859 04:B849: 30        .byte $30   ; 
- - - - - - 0x01385A 04:B84A: 30        .byte $30   ; 
- - - - - - 0x01385B 04:B84B: 30        .byte $30   ; 
- - - - - - 0x01385C 04:B84C: 30        .byte $30   ; 
- - - - - - 0x01385D 04:B84D: 30        .byte $30   ; 
- - - - - - 0x01385E 04:B84E: 30        .byte $30   ; 
- - - - - - 0x01385F 04:B84F: 30        .byte $30   ;


 
sub_B850:
C - - - - - 0x013860 04:B850: AD 50 06  LDA ram_позиция_управление
C - - - - - 0x013863 04:B853: 2D 51 06  AND ram_позиция_управление + $01
C - - - - - 0x013866 04:B856: 30 0F     BMI bra_B867
C - - - - - 0x013868 04:B858: A2 00     LDX #$00
bra_B85A:
C - - - - - 0x01386A 04:B85A: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x01386D 04:B85D: CD D6 04  CMP ram_игрок_с_мячом
C - - - - - 0x013870 04:B860: F0 1C     BEQ bra_B87E
C - - - - - 0x013872 04:B862: E8        INX
C - - - - - 0x013873 04:B863: E0 04     CPX #$04
C - - - - - 0x013875 04:B865: 90 F3     BCC bra_B85A
bra_B867:
C - - - - - 0x013877 04:B867: AD 00 03  LDA ram_frm_cnt
C - - - - - 0x01387A 04:B86A: 29 1F     AND #$1F
C - - - - - 0x01387C 04:B86C: D0 39     BNE bra_B8A7_RTS
C - - - - - 0x01387E 04:B86E: AE D6 04  LDX ram_игрок_с_мячом
C - - - - - 0x013881 04:B871: A9 02     LDA #$02
C - - - - - 0x013883 04:B873: 0D D6 04  ORA ram_игрок_с_мячом
C - - - - - 0x013886 04:B876: 09 10     ORA #$10
C - - - - - 0x013888 04:B878: 9D 7E 06  STA ram_067E,X
C - - - - - 0x01388B 04:B87B: 4C A2 B8  JMP loc_B8A2
bra_B87E:
C - - - - - 0x01388E 04:B87E: B5 08     LDA ram_btn_press,X
C - - - - - 0x013890 04:B880: 30 20     BMI bra_B8A2
C - - - - - 0x013892 04:B882: 0A        ASL
C - - - - - 0x013893 04:B883: 30 19     BMI bra_B89E
C - - - - - 0x013895 04:B885: A5 08     LDA ram_btn_press
C - - - - - 0x013897 04:B887: 29 30     AND #$30
C - - - - - 0x013899 04:B889: D0 17     BNE bra_B8A2
C - - - - - 0x01389B 04:B88B: B5 04     LDA ram_btn_hold,X
C - - - - - 0x01389D 04:B88D: 4A        LSR
C - - - - - 0x01389E 04:B88E: 4A        LSR
C - - - - - 0x01389F 04:B88F: 29 03     AND #$03
C - - - - - 0x0138A1 04:B891: A8        TAY
C - - - - - 0x0138A2 04:B892: AE D6 04  LDX ram_игрок_с_мячом
C - - - - - 0x0138A5 04:B895: B9 A8 B8  LDA tbl_B8A8,Y
C - - - - - 0x0138A8 04:B898: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x0138AB 04:B89B: 4C A7 B8  JMP loc_B8A7_RTS
bra_B89E:
C - - - - - 0x0138AE 04:B89E: A9 09     LDA #$09
C - - - - - 0x0138B0 04:B8A0: D0 02     BNE bra_B8A4
bra_B8A2:
loc_B8A2:
C D 1 - - - 0x0138B2 04:B8A2: A9 0A     LDA #$0A
bra_B8A4:
C - - - - - 0x0138B4 04:B8A4: 9D 79 04  STA ram_игрок_номер_действия,X
bra_B8A7_RTS:
loc_B8A7_RTS:
C D 1 - - - 0x0138B7 04:B8A7: 60        RTS



tbl_B8A8:
- D 1 - - - 0x0138B8 04:B8A8: 00        .byte $00   ; 
- D 1 - - - 0x0138B9 04:B8A9: 80        .byte $80   ; 
- D 1 - - - 0x0138BA 04:B8AA: 00        .byte $00   ; 



loc_B8AB:
C D 1 - - - 0x0138BB 04:B8AB: 86 43     STX ram_0043
C - - - - - 0x0138BD 04:B8AD: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x0138C0 04:B8B0: AA        TAX
C - - - - - 0x0138C1 04:B8B1: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x0138C4 04:B8B4: 30 05     BMI bra_B8BB
C - - - - - 0x0138C6 04:B8B6: BD 79 04  LDA ram_игрок_номер_действия,X
C - - - - - 0x0138C9 04:B8B9: 30 03     BMI bra_B8BE
bra_B8BB:
C - - - - - 0x0138CB 04:B8BB: 4C E2 B9  JMP loc_B9E2
bra_B8BE:
C - - - - - 0x0138CE 04:B8BE: A6 43     LDX ram_0043
C - - - - - 0x0138D0 04:B8C0: 20 7A C0  JSR sub_0x01C08A
C - - - - - 0x0138D3 04:B8C3: BD 04 00  LDA a: ram_btn_hold,X
C - - - - - 0x0138D6 04:B8C6: 8D 1D 00  STA a: ram_001D
C - - - - - 0x0138D9 04:B8C9: BD 08 00  LDA a: ram_btn_press,X
C - - - - - 0x0138DC 04:B8CC: 8D 1E 00  STA a: ram_001E
C - - - - - 0x0138DF 04:B8CF: BD 6C 05  LDA ram_056C_кнопки,X
C - - - - - 0x0138E2 04:B8D2: 8D 1F 00  STA a: ram_001F
C - - - - - 0x0138E5 04:B8D5: BD 70 05  LDA ram_0570_кнопки,X
C - - - - - 0x0138E8 04:B8D8: 8D 20 00  STA a: ram_0020
C - - - - - 0x0138EB 04:B8DB: BD 7C 05  LDA ram_057C_кнопки,X
C - - - - - 0x0138EE 04:B8DE: 8D 21 00  STA a: ram_0021
C - - - - - 0x0138F1 04:B8E1: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x0138F4 04:B8E4: AA        TAX
C - - - - - 0x0138F5 04:B8E5: A9 00     LDA #$00
C - - - - - 0x0138F7 04:B8E7: 85 1C     STA ram_001C
C - - - - - 0x0138F9 04:B8E9: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0138FC 04:B8EC: 29 B0     AND #$B0
C - - - - - 0x0138FE 04:B8EE: F0 12     BEQ bra_B902
C - - - - - 0x013900 04:B8F0: E6 1C     INC ram_001C
C - - - - - 0x013902 04:B8F2: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x013905 04:B8F5: 30 0B     BMI bra_B902
- - - - - - 0x013907 04:B8F7: E6 1C     INC ram_001C
- - - - - - 0x013909 04:B8F9: BD 86 04  LDA ram_игрок_состояние,X
- - - - - - 0x01390C 04:B8FC: 0A        ASL
- - - - - - 0x01390D 04:B8FD: 0A        ASL
- - - - - - 0x01390E 04:B8FE: 30 02     BMI bra_B902
- - - - - - 0x013910 04:B900: E6 1C     INC ram_001C
bra_B902:
C - - - - - 0x013912 04:B902: A5 1C     LDA ram_001C
C - - - - - 0x013914 04:B904: 0A        ASL
C - - - - - 0x013915 04:B905: A8        TAY
C - - - - - 0x013916 04:B906: B9 F5 B9  LDA tbl_B9F5,Y
C - - - - - 0x013919 04:B909: 85 2C     STA ram_002C
C - - - - - 0x01391B 04:B90B: B9 F6 B9  LDA tbl_B9F5 + $01,Y
C - - - - - 0x01391E 04:B90E: 85 2D     STA ram_002D
C - - - - - 0x013920 04:B910: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x013923 04:B913: 10 07     BPL bra_B91C
C - - - - - 0x013925 04:B915: AD 1E 00  LDA a: ram_001E
C - - - - - 0x013928 04:B918: 4A        LSR
C - - - - - 0x013929 04:B919: 4C 4F B9  JMP loc_B94F
bra_B91C:
C - - - - - 0x01392C 04:B91C: AD 20 00  LDA a: ram_0020
C - - - - - 0x01392F 04:B91F: 10 2E     BPL bra_B94F
C - - - - - 0x013931 04:B921: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013934 04:B924: 29 03     AND #$03
C - - - - - 0x013936 04:B926: F0 16     BEQ bra_B93E
C - - - - - 0x013938 04:B928: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x01393B 04:B92B: 2A        ROL
C - - - - - 0x01393C 04:B92C: 2A        ROL
C - - - - - 0x01393D 04:B92D: 4D 1D 00  EOR a: ram_001D
C - - - - - 0x013940 04:B930: 29 01     AND #$01
C - - - - - 0x013942 04:B932: F0 05     BEQ bra_B939
C - - - - - 0x013944 04:B934: A9 09     LDA #$09
C - - - - - 0x013946 04:B936: 4C DF B9  JMP loc_B9DF
bra_B939:
C - - - - - 0x013949 04:B939: A9 0A     LDA #$0A
C - - - - - 0x01394B 04:B93B: 4C DF B9  JMP loc_B9DF
bra_B93E:
C - - - - - 0x01394E 04:B93E: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x013951 04:B941: 29 08     AND #$08
C - - - - - 0x013953 04:B943: F0 05     BEQ bra_B94A
C - - - - - 0x013955 04:B945: A9 09     LDA #$09
C - - - - - 0x013957 04:B947: 4C DF B9  JMP loc_B9DF
bra_B94A:
C - - - - - 0x01395A 04:B94A: A9 08     LDA #$08
C - - - - - 0x01395C 04:B94C: 4C DF B9  JMP loc_B9DF
bra_B94F:
loc_B94F:
C D 1 - - - 0x01395F 04:B94F: 0A        ASL
C - - - - - 0x013960 04:B950: 10 19     BPL bra_B96B
C - - - - - 0x013962 04:B952: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013965 04:B955: 29 0C     AND #$0C
C - - - - - 0x013967 04:B957: F0 09     BEQ bra_B962
C - - - - - 0x013969 04:B959: A0 05     LDY #$05
C - - - - - 0x01396B 04:B95B: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01396D 04:B95D: 30 03     BMI bra_B962
C - - - - - 0x01396F 04:B95F: 4C DF B9  JMP loc_B9DF
bra_B962:
C - - - - - 0x013972 04:B962: A0 06     LDY #$06
C - - - - - 0x013974 04:B964: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013976 04:B966: 30 03     BMI bra_B96B
C - - - - - 0x013978 04:B968: 4C DF B9  JMP loc_B9DF
bra_B96B:
C - - - - - 0x01397B 04:B96B: 0A        ASL
C - - - - - 0x01397C 04:B96C: 10 3A     BPL bra_B9A8
C - - - - - 0x01397E 04:B96E: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013981 04:B971: 29 0F     AND #$0F
C - - - - - 0x013983 04:B973: D0 09     BNE bra_B97E
C - - - - - 0x013985 04:B975: A0 07     LDY #$07
C - - - - - 0x013987 04:B977: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013989 04:B979: 30 03     BMI bra_B97E
C - - - - - 0x01398B 04:B97B: 4C DF B9  JMP loc_B9DF
bra_B97E:
C - - - - - 0x01398E 04:B97E: AD 1D 00  LDA a: ram_001D
C - - - - - 0x013991 04:B981: 29 0C     AND #$0C
C - - - - - 0x013993 04:B983: F0 09     BEQ bra_B98E
C - - - - - 0x013995 04:B985: A0 08     LDY #$08
C - - - - - 0x013997 04:B987: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013999 04:B989: 30 03     BMI bra_B98E
C - - - - - 0x01399B 04:B98B: 4C DF B9  JMP loc_B9DF
bra_B98E:
C - - - - - 0x01399E 04:B98E: 8A        TXA
C - - - - - 0x01399F 04:B98F: 4D 1D 00  EOR a: ram_001D
C - - - - - 0x0139A2 04:B992: 29 01     AND #$01
C - - - - - 0x0139A4 04:B994: D0 09     BNE bra_B99F
C - - - - - 0x0139A6 04:B996: A0 09     LDY #$09
C - - - - - 0x0139A8 04:B998: B1 2C     LDA (ram_002C),Y
C - - - - - 0x0139AA 04:B99A: 30 03     BMI bra_B99F
C - - - - - 0x0139AC 04:B99C: 4C DF B9  JMP loc_B9DF
bra_B99F:
C - - - - - 0x0139AF 04:B99F: A0 0A     LDY #$0A
C - - - - - 0x0139B1 04:B9A1: B1 2C     LDA (ram_002C),Y
C - - - - - 0x0139B3 04:B9A3: 30 03     BMI bra_B9A8
C - - - - - 0x0139B5 04:B9A5: 4C DF B9  JMP loc_B9DF
bra_B9A8:
C - - - - - 0x0139B8 04:B9A8: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x0139BB 04:B9AB: 30 23     BMI bra_B9D0
C - - - - - 0x0139BD 04:B9AD: AD 21 00  LDA a: ram_0021
C - - - - - 0x0139C0 04:B9B0: 29 0F     AND #$0F
C - - - - - 0x0139C2 04:B9B2: D0 0F     BNE bra_B9C3
C - - - - - 0x0139C4 04:B9B4: AD 1D 00  LDA a: ram_001D
C - - - - - 0x0139C7 04:B9B7: 29 0F     AND #$0F
C - - - - - 0x0139C9 04:B9B9: D0 04     BNE bra_B9BF
C - - - - - 0x0139CB 04:B9BB: A9 01     LDA #$01
C - - - - - 0x0139CD 04:B9BD: D0 0E     BNE bra_B9CD
bra_B9BF:
C - - - - - 0x0139CF 04:B9BF: A9 06     LDA #$06
C - - - - - 0x0139D1 04:B9C1: D0 0A     BNE bra_B9CD
bra_B9C3:
C - - - - - 0x0139D3 04:B9C3: 29 03     AND #$03
C - - - - - 0x0139D5 04:B9C5: D0 04     BNE bra_B9CB
C - - - - - 0x0139D7 04:B9C7: A9 0D     LDA #$0D
C - - - - - 0x0139D9 04:B9C9: D0 02     BNE bra_B9CD
bra_B9CB:
C - - - - - 0x0139DB 04:B9CB: A9 07     LDA #$07
bra_B9CD:
C - - - - - 0x0139DD 04:B9CD: 9D 79 04  STA ram_игрок_номер_действия,X
bra_B9D0:
C - - - - - 0x0139E0 04:B9D0: AD 1D 00  LDA a: ram_001D
C - - - - - 0x0139E3 04:B9D3: 29 0F     AND #$0F
C - - - - - 0x0139E5 04:B9D5: A8        TAY
C - - - - - 0x0139E6 04:B9D6: B9 E5 B9  LDA tbl_B9E5,Y
C - - - - - 0x0139E9 04:B9D9: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x0139EC 04:B9DC: 4C E2 B9  JMP loc_B9E2
loc_B9DF:
C D 1 - - - 0x0139EF 04:B9DF: 9D 79 04  STA ram_игрок_номер_действия,X
loc_B9E2:
C D 1 - - - 0x0139F2 04:B9E2: A6 43     LDX ram_0043
C - - - - - 0x0139F4 04:B9E4: 60        RTS



tbl_B9E5:
- D 1 - - - 0x0139F5 04:B9E5: FF        .byte $FF   ; 
- D 1 - - - 0x0139F6 04:B9E6: 40        .byte $40   ; 
- D 1 - - - 0x0139F7 04:B9E7: C0        .byte $C0   ; 
- - - - - - 0x0139F8 04:B9E8: 00        .byte $00   ; 
- D 1 - - - 0x0139F9 04:B9E9: 80        .byte $80   ; 
- D 1 - - - 0x0139FA 04:B9EA: 60        .byte $60   ; 
- D 1 - - - 0x0139FB 04:B9EB: A0        .byte $A0   ; 
- - - - - - 0x0139FC 04:B9EC: 00        .byte $00   ; 
- D 1 - - - 0x0139FD 04:B9ED: 00        .byte $00   ; 
- D 1 - - - 0x0139FE 04:B9EE: 20        .byte $20   ; 
- D 1 - - - 0x0139FF 04:B9EF: E0        .byte $E0   ; 
- - - - - - 0x013A00 04:B9F0: 00        .byte $00   ; 
- - - - - - 0x013A01 04:B9F1: 00        .byte $00   ; 
- - - - - - 0x013A02 04:B9F2: 00        .byte $00   ; 
- - - - - - 0x013A03 04:B9F3: 00        .byte $00   ; 
- - - - - - 0x013A04 04:B9F4: 00        .byte $00   ; 



tbl_B9F5:
- D 1 - - - 0x013A05 04:B9F5: 05 BA     .word off_BA05_00
- D 1 - - - 0x013A07 04:B9F7: 05 BA     .word off_BA05_01
- - - - - - 0x013A09 04:B9F9: 05 BA     .word off_BA05_02
- - - - - - 0x013A0B 04:B9FB: 05 BA     .word off_BA05_03
- - - - - - 0x013A0D 04:B9FD: 05 BA     .word off_BA05_04
- - - - - - 0x013A0F 04:B9FF: 10 BA     .word off_BA10_05
- - - - - - 0x013A11 04:BA01: 05 BA     .word off_BA05_06
- - - - - - 0x013A13 04:BA03: 05 BA     .word off_BA05_07

off_BA05_00:
off_BA05_01:
off_BA05_02:
off_BA05_03:
off_BA05_04:
off_BA05_06:
off_BA05_07:
- - - - - - 0x013A15 04:BA05: 0A        .byte $0A   ; 
- - - - - - 0x013A16 04:BA06: 08        .byte $08   ; 
- - - - - - 0x013A17 04:BA07: 09        .byte $09   ; 
- - - - - - 0x013A18 04:BA08: 08        .byte $08   ; 
- - - - - - 0x013A19 04:BA09: 04        .byte $04   ; 
- D 1 - I - 0x013A1A 04:BA0A: 04        .byte $04   ; 
- D 1 - I - 0x013A1B 04:BA0B: 04        .byte $04   ; 
- D 1 - I - 0x013A1C 04:BA0C: 05        .byte $05   ; 
- D 1 - I - 0x013A1D 04:BA0D: 05        .byte $05   ; 
- D 1 - I - 0x013A1E 04:BA0E: 05        .byte $05   ; 
- D 1 - I - 0x013A1F 04:BA0F: 05        .byte $05   ; 

off_BA10_05:
- - - - - - 0x013A20 04:BA10: 08        .byte $08   ; 
- - - - - - 0x013A21 04:BA11: 08        .byte $08   ; 
- - - - - - 0x013A22 04:BA12: 08        .byte $08   ; 
- - - - - - 0x013A23 04:BA13: 08        .byte $08   ; 
- - - - - - 0x013A24 04:BA14: 08        .byte $08   ; 
- - - - - - 0x013A25 04:BA15: 08        .byte $08   ; 
- - - - - - 0x013A26 04:BA16: 08        .byte $08   ; 
- - - - - - 0x013A27 04:BA17: 08        .byte $08   ; 
- - - - - - 0x013A28 04:BA18: 08        .byte $08   ; 
- - - - - - 0x013A29 04:BA19: 08        .byte $08   ; 
- - - - - - 0x013A2A 04:BA1A: 08        .byte $08   ; 



loc_BA1B:
C D 1 - - - 0x013A2B 04:BA1B: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013A2E 04:BA1E: B9 A3 04  LDA ram_obj_direction,Y
C - - - - - 0x013A31 04:BA21: 9D A3 04  STA ram_obj_direction,X
C - - - - - 0x013A34 04:BA24: B9 B0 04  LDA ram_obj_new_angle,Y
C - - - - - 0x013A37 04:BA27: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x013A3A 04:BA2A: A9 00     LDA #$00
C - - - - - 0x013A3C 04:BA2C: 8D 10 05  STA ram_подтип_супера
C - - - - - 0x013A3F 04:BA2F: 8D 0F 05  STA ram_номер_супера
C - - - - - 0x013A42 04:BA32: 8D 12 05  STA ram_флаг_красного_супера
C - - - - - 0x013A45 04:BA35: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x013A48 04:BA38: 85 2C     STA ram_002C
C - - - - - 0x013A4A 04:BA3A: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x013A4D 04:BA3D: 85 2D     STA ram_002D
C - - - - - 0x013A4F 04:BA3F: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x013A52 04:BA42: 10 0D     BPL bra_BA51
C - - - - - 0x013A54 04:BA44: 18        CLC
C - - - - - 0x013A55 04:BA45: A9 00     LDA #$00
C - - - - - 0x013A57 04:BA47: E5 2C     SBC ram_002C
C - - - - - 0x013A59 04:BA49: 85 2C     STA ram_002C
C - - - - - 0x013A5B 04:BA4B: A9 04     LDA #$04
C - - - - - 0x013A5D 04:BA4D: E5 2D     SBC ram_002D
C - - - - - 0x013A5F 04:BA4F: 85 2D     STA ram_002D
bra_BA51:
C - - - - - 0x013A61 04:BA51: A0 00     LDY #$00
bra_BA53:
C - - - - - 0x013A63 04:BA53: A5 2D     LDA ram_002D
C - - - - - 0x013A65 04:BA55: D9 0F BB  CMP tbl_BB0F,Y
C - - - - - 0x013A68 04:BA58: F0 04     BEQ bra_BA5E
C - - - - - 0x013A6A 04:BA5A: 90 0F     BCC bra_BA6B
C - - - - - 0x013A6C 04:BA5C: B0 07     BCS bra_BA65
bra_BA5E:
C - - - - - 0x013A6E 04:BA5E: A5 2C     LDA ram_002C
C - - - - - 0x013A70 04:BA60: D9 0E BB  CMP tbl_BB0E,Y
C - - - - - 0x013A73 04:BA63: 90 06     BCC bra_BA6B
bra_BA65:
C - - - - - 0x013A75 04:BA65: C8        INY
C - - - - - 0x013A76 04:BA66: C8        INY
C - - - - - 0x013A77 04:BA67: C0 06     CPY #$06
C - - - - - 0x013A79 04:BA69: 90 E8     BCC bra_BA53
bra_BA6B:
C - - - - - 0x013A7B 04:BA6B: 84 1C     STY ram_001C
C - - - - - 0x013A7D 04:BA6D: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x013A80 04:BA70: D0 61     BNE bra_BAD3
C - - - - - 0x013A82 04:BA72: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013A85 04:BA75: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x013A88 04:BA78: 29 7F     AND #$7F
C - - - - - 0x013A8A 04:BA7A: C9 33     CMP #$33
C - - - - - 0x013A8C 04:BA7C: F0 04     BEQ bra_BA82
C - - - - - 0x013A8E 04:BA7E: C9 37     CMP #$37
C - - - - - 0x013A90 04:BA80: D0 10     BNE bra_BA92
bra_BA82:
C - - - - - 0x013A92 04:BA82: 20 C0 BD  JSR sub_BDC0
C - - - - - 0x013A95 04:BA85: BD 86 03  LDA ram_игрок_Z_lo,X
C - - - - - 0x013A98 04:BA88: D9 D7 BD  CMP tbl_BDD7,Y
C - - - - - 0x013A9B 04:BA8B: 90 46     BCC bra_BAD3
C - - - - - 0x013A9D 04:BA8D: E6 1C     INC ram_001C
C - - - - - 0x013A9F 04:BA8F: 4C 9D BA  JMP loc_BA9D
bra_BA92:
C - - - - - 0x013AA2 04:BA92: 20 C0 BD  JSR sub_BDC0
C - - - - - 0x013AA5 04:BA95: BD 86 03  LDA ram_игрок_Z_lo,X
C - - - - - 0x013AA8 04:BA98: D9 DD BD  CMP tbl_BDDD,Y
C - - - - - 0x013AAB 04:BA9B: 90 36     BCC bra_BAD3
loc_BA9D:
C D 1 - - - 0x013AAD 04:BA9D: A4 1C     LDY ram_001C
C - - - - - 0x013AAF 04:BA9F: B9 16 BB  LDA tbl_BB16,Y
C - - - - - 0x013AB2 04:BAA2: 10 23     BPL bra_BAC7
C - - - - - 0x013AB4 04:BAA4: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x013AB7 04:BAA7: 29 01     AND #$01
C - - - - - 0x013AB9 04:BAA9: A8        TAY
C - - - - - 0x013ABA 04:BAAA: B9 2C 05  LDA ram_номер_команды,Y
C - - - - - 0x013ABD 04:BAAD: 29 0F     AND #$0F
C - - - - - 0x013ABF 04:BAAF: D0 09     BNE bra_BABA
C - - - - - 0x013AC1 04:BAB1: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013AC4 04:BAB4: 18        CLC
C - - - - - 0x013AC5 04:BAB5: A9 10     LDA #$10
C - - - - - 0x013AC7 04:BAB7: 79 32 05  ADC ram_номер_игрока,Y
bra_BABA:
C - - - - - 0x013ACA 04:BABA: 0A        ASL
C - - - - - 0x013ACB 04:BABB: 85 1C     STA ram_001C
C - - - - - 0x013ACD 04:BABD: A8        TAY
C - - - - - 0x013ACE 04:BABE: B9 13 BD  LDA tbl_BD13,Y
C - - - - - 0x013AD1 04:BAC1: 20 02 BB  JSR sub_BB02
C - - - - - 0x013AD4 04:BAC4: B9 12 BD  LDA tbl_BD12,Y
bra_BAC7:
C - - - - - 0x013AD7 04:BAC7: 8D 0F 05  STA ram_номер_супера
C - - - - - 0x013ADA 04:BACA: C9 1E     CMP #$1E
C - - - - - 0x013ADC 04:BACC: D0 05     BNE bra_BAD3
C - - - - - 0x013ADE 04:BACE: A9 7F     LDA #$7F
C - - - - - 0x013AE0 04:BAD0: 8D 25 05  STA ram_таймер_электрического_мяча
bra_BAD3:
C - - - - - 0x013AE3 04:BAD3: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013AE6 04:BAD6: B9 E4 04  LDA ram_игрок_HP,Y
C - - - - - 0x013AE9 04:BAD9: 20 02 BB  JSR sub_BB02
C - - - - - 0x013AEC 04:BADC: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x013AEF 04:BADF: 4A        LSR
C - - - - - 0x013AF0 04:BAE0: B0 0D     BCS bra_BAEF
C - - - - - 0x013AF2 04:BAE2: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x013AF5 04:BAE5: 29 7F     AND #$7F
C - - - - - 0x013AF7 04:BAE7: C9 43     CMP #$43
C - - - - - 0x013AF9 04:BAE9: F0 04     BEQ bra_BAEF
C - - - - - 0x013AFB 04:BAEB: C9 47     CMP #$47
C - - - - - 0x013AFD 04:BAED: D0 05     BNE bra_BAF4
bra_BAEF:
- - - - - - 0x013AFF 04:BAEF: A9 28     LDA #$28
- - - - - - 0x013B01 04:BAF1: 20 02 BB  JSR sub_BB02
bra_BAF4:
C - - - - - 0x013B04 04:BAF4: AC 0F 05  LDY ram_номер_супера
C - - - - - 0x013B07 04:BAF7: C0 03     CPY #$03
C - - - - - 0x013B09 04:BAF9: B0 06     BCS bra_BB01_RTS
C - - - - - 0x013B0B 04:BAFB: B9 0F BD  LDA tbl_BD0F,Y
C - - - - - 0x013B0E 04:BAFE: 20 02 BB  JSR sub_BB02
bra_BB01_RTS:
C - - - - - 0x013B11 04:BB01: 60        RTS



sub_BB02:
C - - - - - 0x013B12 04:BB02: 18        CLC
C - - - - - 0x013B13 04:BB03: 6D F0 04  ADC ram_мяч_HP
C - - - - - 0x013B16 04:BB06: 90 02     BCC bra_BB0A
- - - - - - 0x013B18 04:BB08: A9 FF     LDA #$FF
bra_BB0A:
C - - - - - 0x013B1A 04:BB0A: 8D F0 04  STA ram_мяч_HP
C - - - - - 0x013B1D 04:BB0D: 60        RTS



tbl_BB0E:
- D 1 - - - 0x013B1E 04:BB0E: 60        .byte $60   ; 
tbl_BB0F:
- D 1 - - - 0x013B1F 04:BB0F: 01        .byte $01   ; 
- D 1 - - - 0x013B20 04:BB10: 90        .byte $90   ; 
- D 1 - - - 0x013B21 04:BB11: 02        .byte $02   ; 
- D 1 - - - 0x013B22 04:BB12: 50        .byte $50   ; 
- D 1 - - - 0x013B23 04:BB13: 03        .byte $03   ; 
- - - - - - 0x013B24 04:BB14: FF        .byte $FF   ; 
- - - - - - 0x013B25 04:BB15: 09        .byte $09   ; 



tbl_BB16:
- D 1 - - - 0x013B26 04:BB16: 00        .byte $00   ; 
- D 1 - - - 0x013B27 04:BB17: 00        .byte $00   ; 
- D 1 - - - 0x013B28 04:BB18: 02        .byte $02   ; 
- D 1 - - - 0x013B29 04:BB19: FF        .byte $FF   ; 
- D 1 - - - 0x013B2A 04:BB1A: 01        .byte $01   ; 
- D 1 - - - 0x013B2B 04:BB1B: FF        .byte $FF   ; 
- D 1 - - - 0x013B2C 04:BB1C: 00        .byte $00   ; 
- D 1 - - - 0x013B2D 04:BB1D: 00        .byte $00   ; 



loc_BB1E:
C D 1 - - - 0x013B2E 04:BB1E: A0 00     LDY #$00
C - - - - - 0x013B30 04:BB20: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x013B33 04:BB23: 10 02     BPL bra_BB27
C - - - - - 0x013B35 04:BB25: A0 04     LDY #$04
bra_BB27:
C - - - - - 0x013B37 04:BB27: AD 0E 05  LDA ram_флаг_прозрачного_мяча
C - - - - - 0x013B3A 04:BB2A: 30 02     BMI bra_BB2E
C - - - - - 0x013B3C 04:BB2C: C8        INY
C - - - - - 0x013B3D 04:BB2D: C8        INY
bra_BB2E:
C - - - - - 0x013B3E 04:BB2E: B9 C0 BB  LDA tbl_BBC0,Y
C - - - - - 0x013B41 04:BB31: 85 2E     STA ram_002E
C - - - - - 0x013B43 04:BB33: 8D 1B 05  STA ram_051B
C - - - - - 0x013B46 04:BB36: B9 C1 BB  LDA tbl_BBC1,Y
C - - - - - 0x013B49 04:BB39: 85 2F     STA ram_002F
C - - - - - 0x013B4B 04:BB3B: 8D 1C 05  STA ram_051C
C - - - - - 0x013B4E 04:BB3E: A0 00     LDY #$00
bra_BB40:
C - - - - - 0x013B50 04:BB40: 38        SEC
C - - - - - 0x013B51 04:BB41: B9 BA BB  LDA tbl_BBBA,Y
C - - - - - 0x013B54 04:BB44: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x013B57 04:BB47: B9 BB BB  LDA tbl_BBBB,Y
C - - - - - 0x013B5A 04:BB4A: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x013B5D 04:BB4D: B0 04     BCS bra_BB53
C - - - - - 0x013B5F 04:BB4F: C8        INY
C - - - - - 0x013B60 04:BB50: C8        INY
C - - - - - 0x013B61 04:BB51: 90 ED     BCC bra_BB40
bra_BB53:
C - - - - - 0x013B63 04:BB53: B9 C8 BB  LDA tbl_BBC8,Y
C - - - - - 0x013B66 04:BB56: 85 2C     STA ram_002C
C - - - - - 0x013B68 04:BB58: B9 C9 BB  LDA tbl_BBC8 + $01,Y
C - - - - - 0x013B6B 04:BB5B: 85 2D     STA ram_002D
C - - - - - 0x013B6D 04:BB5D: AD 0F 05  LDA ram_номер_супера
C - - - - - 0x013B70 04:BB60: 29 7F     AND #$7F
C - - - - - 0x013B72 04:BB62: F0 05     BEQ bra_BB69
C - - - - - 0x013B74 04:BB64: A0 08     LDY #$08
C - - - - - 0x013B76 04:BB66: 4C 80 BB  JMP loc_BB80
bra_BB69:
C - - - - - 0x013B79 04:BB69: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x013B7C 04:BB6C: C9 FF     CMP #$FF
C - - - - - 0x013B7E 04:BB6E: D0 08     BNE bra_BB78
C - - - - - 0x013B80 04:BB70: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x013B83 04:BB73: 09 40     ORA #$40
C - - - - - 0x013B85 04:BB75: 9D B0 04  STA ram_obj_new_angle,X
bra_BB78:
C - - - - - 0x013B88 04:BB78: 29 C0     AND #$C0
C - - - - - 0x013B8A 04:BB7A: 4A        LSR
C - - - - - 0x013B8B 04:BB7B: 4A        LSR
C - - - - - 0x013B8C 04:BB7C: 4A        LSR
C - - - - - 0x013B8D 04:BB7D: 4A        LSR
C - - - - - 0x013B8E 04:BB7E: 4A        LSR
C - - - - - 0x013B8F 04:BB7F: A8        TAY
loc_BB80:
C D 1 - - - 0x013B90 04:BB80: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013B92 04:BB82: 85 30     STA ram_0030
C - - - - - 0x013B94 04:BB84: 8D 1D 05  STA ram_051D
C - - - - - 0x013B97 04:BB87: C8        INY
C - - - - - 0x013B98 04:BB88: B1 2C     LDA (ram_002C),Y
C - - - - - 0x013B9A 04:BB8A: 85 31     STA ram_0031
C - - - - - 0x013B9C 04:BB8C: 8D 1E 05  STA ram_051E
C - - - - - 0x013B9F 04:BB8F: 10 22     BPL bra_BBB3
C - - - - - 0x013BA1 04:BB91: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x013BA4 04:BB94: 85 30     STA ram_0030
C - - - - - 0x013BA6 04:BB96: 8D 1D 05  STA ram_051D
C - - - - - 0x013BA9 04:BB99: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x013BAC 04:BB9C: 85 31     STA ram_0031
C - - - - - 0x013BAE 04:BB9E: 8D 1E 05  STA ram_051E
C - - - - - 0x013BB1 04:BBA1: A9 00     LDA #$00
C - - - - - 0x013BB3 04:BBA3: 85 2E     STA ram_002E
C - - - - - 0x013BB5 04:BBA5: 8D 1B 05  STA ram_051B
C - - - - - 0x013BB8 04:BBA8: A5 2F     LDA ram_002F
C - - - - - 0x013BBA 04:BBAA: F0 07     BEQ bra_BBB3
C - - - - - 0x013BBC 04:BBAC: A9 04     LDA #$04
C - - - - - 0x013BBE 04:BBAE: 85 2F     STA ram_002F
C - - - - - 0x013BC0 04:BBB0: 8D 1C 05  STA ram_051C
bra_BBB3:
C - - - - - 0x013BC3 04:BBB3: 20 35 C0  JSR sub_0x01C045
C - - - - - 0x013BC6 04:BBB6: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x013BC9 04:BBB9: 60        RTS



tbl_BBBA:
- D 1 - - - 0x013BCA 04:BBBA: A0        .byte $A0   ; 
tbl_BBBB:
- D 1 - - - 0x013BCB 04:BBBB: 00        .byte $00   ; 
- D 1 - - - 0x013BCC 04:BBBC: E0        .byte $E0   ; 
- D 1 - - - 0x013BCD 04:BBBD: 00        .byte $00   ; 
- D 1 - - - 0x013BCE 04:BBBE: 80        .byte $80   ; 
- D 1 - - - 0x013BCF 04:BBBF: 01        .byte $01   ; 



tbl_BBC0:
- D 1 - - - 0x013BD0 04:BBC0: 80        .byte $80   ; 
tbl_BBC1:
- D 1 - - - 0x013BD1 04:BBC1: 03        .byte $03   ; 
- D 1 - - - 0x013BD2 04:BBC2: 00        .byte $00   ; 
- D 1 - - - 0x013BD3 04:BBC3: 04        .byte $04   ; 
- D 1 - - - 0x013BD4 04:BBC4: 80        .byte $80   ; 
- D 1 - - - 0x013BD5 04:BBC5: 00        .byte $00   ; 
- D 1 - - - 0x013BD6 04:BBC6: 00        .byte $00   ; 
- D 1 - - - 0x013BD7 04:BBC7: 00        .byte $00   ; 



tbl_BBC8:
- D 1 - - - 0x013BD8 04:BBC8: CE BB     .word off_BBCE_00
- D 1 - - - 0x013BDA 04:BBCA: D8 BB     .word off_BBD8_01
- D 1 - - - 0x013BDC 04:BBCC: E2 BB     .word off_BBE2_02

off_BBCE_00:
- D 1 - I - 0x013BDE 04:BBCE: A8        .byte $A8   ; 
- D 1 - I - 0x013BDF 04:BBCF: 00        .byte $00   ; 
- D 1 - I - 0x013BE0 04:BBD0: A8        .byte $A8   ; 
- D 1 - I - 0x013BE1 04:BBD1: 00        .byte $00   ; 
- D 1 - I - 0x013BE2 04:BBD2: C0        .byte $C0   ; 
- D 1 - I - 0x013BE3 04:BBD3: 00        .byte $00   ; 
- D 1 - I - 0x013BE4 04:BBD4: A8        .byte $A8   ; 
- D 1 - I - 0x013BE5 04:BBD5: 00        .byte $00   ; 
- D 1 - I - 0x013BE6 04:BBD6: C0        .byte $C0   ; 
- D 1 - I - 0x013BE7 04:BBD7: 00        .byte $00   ; 



off_BBD8_01:
- D 1 - I - 0x013BE8 04:BBD8: A8        .byte $A8   ; 
- D 1 - I - 0x013BE9 04:BBD9: 00        .byte $00   ; 
- D 1 - I - 0x013BEA 04:BBDA: FF        .byte $FF   ; 
- D 1 - I - 0x013BEB 04:BBDB: FF        .byte $FF   ; 
- D 1 - I - 0x013BEC 04:BBDC: D8        .byte $D8   ; 
- D 1 - I - 0x013BED 04:BBDD: 00        .byte $00   ; 
- D 1 - I - 0x013BEE 04:BBDE: FF        .byte $FF   ; 
- D 1 - I - 0x013BEF 04:BBDF: FF        .byte $FF   ; 
- D 1 - I - 0x013BF0 04:BBE0: C0        .byte $C0   ; 
- D 1 - I - 0x013BF1 04:BBE1: 00        .byte $00   ; 



off_BBE2_02:
- D 1 - I - 0x013BF2 04:BBE2: C0        .byte $C0   ; 
- D 1 - I - 0x013BF3 04:BBE3: 00        .byte $00   ; 
- D 1 - I - 0x013BF4 04:BBE4: D8        .byte $D8   ; 
- D 1 - I - 0x013BF5 04:BBE5: 00        .byte $00   ; 
- D 1 - I - 0x013BF6 04:BBE6: D8        .byte $D8   ; 
- D 1 - I - 0x013BF7 04:BBE7: 00        .byte $00   ; 
- D 1 - I - 0x013BF8 04:BBE8: D8        .byte $D8   ; 
- D 1 - I - 0x013BF9 04:BBE9: 00        .byte $00   ; 
- D 1 - I - 0x013BFA 04:BBEA: C0        .byte $C0   ; 
- D 1 - I - 0x013BFB 04:BBEB: 00        .byte $00   ; 



loc_BBEC:
C D 1 - - - 0x013BFC 04:BBEC: AD 0F 05  LDA ram_номер_супера
C - - - - - 0x013BFF 04:BBEF: 0A        ASL
C - - - - - 0x013C00 04:BBF0: A8        TAY
C - - - - - 0x013C01 04:BBF1: B9 69 BD  LDA tbl_BD69,Y
C - - - - - 0x013C04 04:BBF4: 8D 10 05  STA ram_подтип_супера
C - - - - - 0x013C07 04:BBF7: 0A        ASL
C - - - - - 0x013C08 04:BBF8: A8        TAY
C - - - - - 0x013C09 04:BBF9: B9 4A BD  LDA tbl_BD4A,Y
C - - - - - 0x013C0C 04:BBFC: F0 09     BEQ bra_BC07
C - - - - - 0x013C0E 04:BBFE: 85 2D     STA ram_002D
C - - - - - 0x013C10 04:BC00: A9 00     LDA #$00
C - - - - - 0x013C12 04:BC02: 85 2C     STA ram_002C
C - - - - - 0x013C14 04:BC04: 20 2C 80  JSR sub_802C
bra_BC07:
C - - - - - 0x013C17 04:BC07: AD 10 05  LDA ram_подтип_супера
C - - - - - 0x013C1A 04:BC0A: 0A        ASL
C - - - - - 0x013C1B 04:BC0B: A8        TAY
C - - - - - 0x013C1C 04:BC0C: B9 4B BD  LDA tbl_BD4B,Y
C - - - - - 0x013C1F 04:BC0F: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x013C22 04:BC12: A9 00     LDA #$00
C - - - - - 0x013C24 04:BC14: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x013C27 04:BC17: 20 62 BC  JSR sub_BC62
C - - - - - 0x013C2A 04:BC1A: AD 12 05  LDA ram_флаг_красного_супера
C - - - - - 0x013C2D 04:BC1D: 30 1E     BMI bra_BC3D
C - - - - - 0x013C2F 04:BC1F: CE 12 05  DEC ram_флаг_красного_супера
C - - - - - 0x013C32 04:BC22: A0 00     LDY #$00
C - - - - - 0x013C34 04:BC24: AD 0F 05  LDA ram_номер_супера
C - - - - - 0x013C37 04:BC27: 29 7F     AND #$7F
C - - - - - 0x013C39 04:BC29: F0 06     BEQ bra_BC31
C - - - - - 0x013C3B 04:BC2B: C8        INY
C - - - - - 0x013C3C 04:BC2C: C9 04     CMP #$04
C - - - - - 0x013C3E 04:BC2E: 90 01     BCC bra_BC31
C - - - - - 0x013C40 04:BC30: C8        INY
bra_BC31:
C - - - - - 0x013C41 04:BC31: B9 5F BC  LDA tbl_BC5F,Y
C - - - - - 0x013C44 04:BC34: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x013C47 04:BC37: 20 27 80  JSR sub_8027
C - - - - - 0x013C4A 04:BC3A: 20 27 80  JSR sub_8027
bra_BC3D:
C - - - - - 0x013C4D 04:BC3D: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x013C50 04:BC40: 10 0B     BPL bra_BC4D
C - - - - - 0x013C52 04:BC42: A9 00     LDA #$00
C - - - - - 0x013C54 04:BC44: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x013C57 04:BC47: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x013C5A 04:BC4A: 4C 5E BC  JMP loc_BC5E_RTS
bra_BC4D:
C - - - - - 0x013C5D 04:BC4D: AD 10 05  LDA ram_подтип_супера
C - - - - - 0x013C60 04:BC50: D0 0C     BNE bra_BC5E_RTS
C - - - - - 0x013C62 04:BC52: BD 86 03  LDA ram_игрок_Z_lo,X
C - - - - - 0x013C65 04:BC55: C9 08     CMP #$08
C - - - - - 0x013C67 04:BC57: B0 05     BCS bra_BC5E_RTS
C - - - - - 0x013C69 04:BC59: A9 08     LDA #$08
C - - - - - 0x013C6B 04:BC5B: 9D 86 03  STA ram_игрок_Z_lo,X
bra_BC5E_RTS:
loc_BC5E_RTS:
C D 1 - - - 0x013C6E 04:BC5E: 60        RTS



tbl_BC5F:
- D 1 - - - 0x013C6F 04:BC5F: 29        .byte $29   ; 
- D 1 - - - 0x013C70 04:BC60: 28        .byte $28   ; 
- D 1 - - - 0x013C71 04:BC61: 2A        .byte $2A   ; 



sub_BC62:
C - - - - - 0x013C72 04:BC62: AC 10 05  LDY ram_подтип_супера
C - - - - - 0x013C75 04:BC65: B9 5E BD  LDA tbl_BD5E,Y
C - - - - - 0x013C78 04:BC68: 10 05     BPL bra_BC6F
C - - - - - 0x013C7A 04:BC6A: 20 7F BC  JSR sub_BC7F
C - - - - - 0x013C7D 04:BC6D: A5 2C     LDA ram_002C
bra_BC6F:
C - - - - - 0x013C7F 04:BC6F: 8D C9 04  STA ram_мяч_таймер_действия
C - - - - - 0x013C82 04:BC72: A9 00     LDA #$00
C - - - - - 0x013C84 04:BC74: 9D 4A 04  STA ram_игрок_гравитация_hi,X
C - - - - - 0x013C87 04:BC77: A9 80     LDA #$80
C - - - - - 0x013C89 04:BC79: 9D 3C 04  STA ram_игрок_гравитация_lo,X
C - - - - - 0x013C8C 04:BC7C: 60        RTS

tbl_BC7D:
- D 1 - - - 0x013C8D 04:BC7D: B0        .byte $B0   ; 
- D 1 - - - 0x013C8E 04:BC7E: 00        .byte $00   ; 



sub_BC7F:
C - - - - - 0x013C8F 04:BC7F: AD 7D BC  LDA tbl_BC7D
C - - - - - 0x013C92 04:BC82: 85 2C     STA ram_002C
C - - - - - 0x013C94 04:BC84: AD 7E BC  LDA tbl_BC7D + $01
C - - - - - 0x013C97 04:BC87: 85 2D     STA ram_002D
C - - - - - 0x013C99 04:BC89: A0 00     LDY #$00
C - - - - - 0x013C9B 04:BC8B: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x013C9E 04:BC8E: 10 11     BPL bra_BCA1
C - - - - - 0x013CA0 04:BC90: 18        CLC
C - - - - - 0x013CA1 04:BC91: A5 2C     LDA ram_002C
C - - - - - 0x013CA3 04:BC93: 49 FF     EOR #$FF
C - - - - - 0x013CA5 04:BC95: 69 01     ADC #$01
C - - - - - 0x013CA7 04:BC97: 85 2C     STA ram_002C
C - - - - - 0x013CA9 04:BC99: A5 2D     LDA ram_002D
C - - - - - 0x013CAB 04:BC9B: 49 FF     EOR #$FF
C - - - - - 0x013CAD 04:BC9D: 69 00     ADC #$00
C - - - - - 0x013CAF 04:BC9F: 85 2D     STA ram_002D
bra_BCA1:
C - - - - - 0x013CB1 04:BCA1: 18        CLC
C - - - - - 0x013CB2 04:BCA2: A5 2D     LDA ram_002D
C - - - - - 0x013CB4 04:BCA4: 69 02     ADC #$02
C - - - - - 0x013CB6 04:BCA6: 85 2D     STA ram_002D
C - - - - - 0x013CB8 04:BCA8: 38        SEC
C - - - - - 0x013CB9 04:BCA9: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x013CBC 04:BCAC: E5 2C     SBC ram_002C
C - - - - - 0x013CBE 04:BCAE: 85 2C     STA ram_002C
C - - - - - 0x013CC0 04:BCB0: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x013CC3 04:BCB3: E5 2D     SBC ram_002D
C - - - - - 0x013CC5 04:BCB5: 85 2D     STA ram_002D
C - - - - - 0x013CC7 04:BCB7: 5D A3 04  EOR ram_obj_direction,X
C - - - - - 0x013CCA 04:BCBA: 30 06     BMI bra_BCC2
C - - - - - 0x013CCC 04:BCBC: A9 00     LDA #$00
C - - - - - 0x013CCE 04:BCBE: 85 2C     STA ram_002C
C - - - - - 0x013CD0 04:BCC0: 85 2D     STA ram_002D
bra_BCC2:
C - - - - - 0x013CD2 04:BCC2: A5 2D     LDA ram_002D
C - - - - - 0x013CD4 04:BCC4: 10 11     BPL bra_BCD7
C - - - - - 0x013CD6 04:BCC6: 18        CLC
C - - - - - 0x013CD7 04:BCC7: A5 2C     LDA ram_002C
C - - - - - 0x013CD9 04:BCC9: 49 FF     EOR #$FF
C - - - - - 0x013CDB 04:BCCB: 69 01     ADC #$01
C - - - - - 0x013CDD 04:BCCD: 85 2C     STA ram_002C
C - - - - - 0x013CDF 04:BCCF: A5 2D     LDA ram_002D
C - - - - - 0x013CE1 04:BCD1: 49 FF     EOR #$FF
C - - - - - 0x013CE3 04:BCD3: 69 00     ADC #$00
C - - - - - 0x013CE5 04:BCD5: 85 2D     STA ram_002D
bra_BCD7:
C - - - - - 0x013CE7 04:BCD7: A0 00     LDY #$00
bra_BCD9:
C - - - - - 0x013CE9 04:BCD9: 46 2D     LSR ram_002D
C - - - - - 0x013CEB 04:BCDB: 66 2C     ROR ram_002C
C - - - - - 0x013CED 04:BCDD: C8        INY
C - - - - - 0x013CEE 04:BCDE: C0 03     CPY #$03
C - - - - - 0x013CF0 04:BCE0: 90 F7     BCC bra_BCD9
C - - - - - 0x013CF2 04:BCE2: 60        RTS



loc_BCE3:
ofs_BCE3:
C D 1 - - - 0x013CF3 04:BCE3: AD 0F 05  LDA ram_номер_супера
C - - - - - 0x013CF6 04:BCE6: 0A        ASL
C - - - - - 0x013CF7 04:BCE7: A8        TAY
C - - - - - 0x013CF8 04:BCE8: B9 68 BD  LDA tbl_BD68,Y
C - - - - - 0x013CFB 04:BCEB: D0 08     BNE bra_BCF5
C - - - - - 0x013CFD 04:BCED: 8D 10 05  STA ram_подтип_супера
C - - - - - 0x013D00 04:BCF0: 8D F0 04  STA ram_мяч_HP
C - - - - - 0x013D03 04:BCF3: F0 19     BEQ bra_BD0E_RTS
bra_BCF5:
C - - - - - 0x013D05 04:BCF5: 10 0C     BPL bra_BD03
C - - - - - 0x013D07 04:BCF7: BC 86 03  LDY ram_игрок_Z_lo,X
C - - - - - 0x013D0A 04:BCFA: F0 05     BEQ bra_BD01
C - - - - - 0x013D0C 04:BCFC: AC C9 04  LDY ram_мяч_таймер_действия
C - - - - - 0x013D0F 04:BCFF: F0 0D     BEQ bra_BD0E_RTS
bra_BD01:
C - - - - - 0x013D11 04:BD01: 29 7F     AND #$7F
bra_BD03:
C - - - - - 0x013D13 04:BD03: 8D 0F 05  STA ram_номер_супера
C - - - - - 0x013D16 04:BD06: A9 00     LDA #$00
C - - - - - 0x013D18 04:BD08: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x013D1B 04:BD0B: 9D 94 00  STA a: ram_номер_кадра_анимации,X
bra_BD0E_RTS:
C - - - - - 0x013D1E 04:BD0E: 60        RTS



tbl_BD0F:
- D 1 - - - 0x013D1F 04:BD0F: 0A        .byte $0A   ; 
- D 1 - - - 0x013D20 04:BD10: 14        .byte $14   ; 
- D 1 - - - 0x013D21 04:BD11: 1E        .byte $1E   ; 



tbl_BD12:
- - - - - - 0x013D22 04:BD12: 04        .byte $04   ; 
tbl_BD13:
- - - - - - 0x013D23 04:BD13: 0F        .byte $0F   ; 
- D 1 - - - 0x013D24 04:BD14: 16        .byte $16   ; 
- D 1 - - - 0x013D25 04:BD15: 0F        .byte $0F   ; 
- D 1 - - - 0x013D26 04:BD16: 18        .byte $18   ; 
- D 1 - - - 0x013D27 04:BD17: 0F        .byte $0F   ; 
- D 1 - - - 0x013D28 04:BD18: 17        .byte $17   ; 
- D 1 - - - 0x013D29 04:BD19: 1E        .byte $1E   ; 
- - - - - - 0x013D2A 04:BD1A: 04        .byte $04   ; 
- - - - - - 0x013D2B 04:BD1B: 0F        .byte $0F   ; 
- D 1 - - - 0x013D2C 04:BD1C: 1A        .byte $1A   ; 
- D 1 - - - 0x013D2D 04:BD1D: 0F        .byte $0F   ; 
- D 1 - - - 0x013D2E 04:BD1E: 1B        .byte $1B   ; 
- D 1 - - - 0x013D2F 04:BD1F: 0F        .byte $0F   ; 
- D 1 - - - 0x013D30 04:BD20: 19        .byte $19   ; 
- D 1 - - - 0x013D31 04:BD21: 20        .byte $20   ; 
- - - - - - 0x013D32 04:BD22: 04        .byte $04   ; 
- - - - - - 0x013D33 04:BD23: 0F        .byte $0F   ; 
- D 1 - - - 0x013D34 04:BD24: 21        .byte $21   ; 
- D 1 - - - 0x013D35 04:BD25: 1B        .byte $1B   ; 
- - - - - - 0x013D36 04:BD26: 1F        .byte $1F   ; 
- - - - - - 0x013D37 04:BD27: 0F        .byte $0F   ; 
- D 1 - - - 0x013D38 04:BD28: 20        .byte $20   ; 
- D 1 - - - 0x013D39 04:BD29: 1E        .byte $1E   ; 
- - - - - - 0x013D3A 04:BD2A: 04        .byte $04   ; 
- - - - - - 0x013D3B 04:BD2B: 0F        .byte $0F   ; 
- D 1 - - - 0x013D3C 04:BD2C: 1D        .byte $1D   ; 
- D 1 - - - 0x013D3D 04:BD2D: 1A        .byte $1A   ; 
- D 1 - - - 0x013D3E 04:BD2E: 1C        .byte $1C   ; 
- D 1 - - - 0x013D3F 04:BD2F: 16        .byte $16   ; 
- D 1 - - - 0x013D40 04:BD30: 1E        .byte $1E   ; 
- D 1 - - - 0x013D41 04:BD31: 0F        .byte $0F   ; 
- D 1 - - - 0x013D42 04:BD32: 04        .byte $04   ; 
- D 1 - - - 0x013D43 04:BD33: 14        .byte $14   ; 
- D 1 - - - 0x013D44 04:BD34: 05        .byte $05   ; 
- D 1 - - - 0x013D45 04:BD35: 1E        .byte $1E   ; 
- D 1 - - - 0x013D46 04:BD36: 06        .byte $06   ; 
- D 1 - - - 0x013D47 04:BD37: 14        .byte $14   ; 
- D 1 - - - 0x013D48 04:BD38: 07        .byte $07   ; 
- D 1 - - - 0x013D49 04:BD39: 14        .byte $14   ; 
- D 1 - - - 0x013D4A 04:BD3A: 08        .byte $08   ; 
- D 1 - - - 0x013D4B 04:BD3B: 1E        .byte $1E   ; 
- D 1 - - - 0x013D4C 04:BD3C: 09        .byte $09   ; 
- D 1 - - - 0x013D4D 04:BD3D: 1E        .byte $1E   ; 
- D 1 - - - 0x013D4E 04:BD3E: 0A        .byte $0A   ; 
- D 1 - - - 0x013D4F 04:BD3F: 1E        .byte $1E   ; 
- D 1 - - - 0x013D50 04:BD40: 0B        .byte $0B   ; 
- D 1 - - - 0x013D51 04:BD41: 14        .byte $14   ; 
- D 1 - - - 0x013D52 04:BD42: 0C        .byte $0C   ; 
- D 1 - - - 0x013D53 04:BD43: 14        .byte $14   ; 
- D 1 - - - 0x013D54 04:BD44: 0D        .byte $0D   ; 
- D 1 - - - 0x013D55 04:BD45: 14        .byte $14   ; 
- D 1 - - - 0x013D56 04:BD46: 0E        .byte $0E   ; 
- D 1 - - - 0x013D57 04:BD47: 1E        .byte $1E   ; 
- D 1 - - - 0x013D58 04:BD48: 0F        .byte $0F   ; 
- D 1 - - - 0x013D59 04:BD49: 14        .byte $14   ; 



tbl_BD4A:
- D 1 - - - 0x013D5A 04:BD4A: 08        .byte $08   ; 
tbl_BD4B:
- D 1 - - - 0x013D5B 04:BD4B: 00        .byte $00   ; 
- D 1 - - - 0x013D5C 04:BD4C: 08        .byte $08   ; 
- D 1 - - - 0x013D5D 04:BD4D: F8        .byte $F8   ; 
- D 1 - - - 0x013D5E 04:BD4E: 08        .byte $08   ; 
- D 1 - - - 0x013D5F 04:BD4F: 01        .byte $01   ; 
- D 1 - - - 0x013D60 04:BD50: 10        .byte $10   ; 
- D 1 - - - 0x013D61 04:BD51: 04        .byte $04   ; 
- D 1 - - - 0x013D62 04:BD52: 08        .byte $08   ; 
- D 1 - - - 0x013D63 04:BD53: 00        .byte $00   ; 
- D 1 - - - 0x013D64 04:BD54: 00        .byte $00   ; 
- D 1 - - - 0x013D65 04:BD55: 00        .byte $00   ; 
- D 1 - - - 0x013D66 04:BD56: 00        .byte $00   ; 
- D 1 - - - 0x013D67 04:BD57: 01        .byte $01   ; 
- D 1 - - - 0x013D68 04:BD58: 08        .byte $08   ; 
- D 1 - - - 0x013D69 04:BD59: 00        .byte $00   ; 
- D 1 - - - 0x013D6A 04:BD5A: 04        .byte $04   ; 
- D 1 - - - 0x013D6B 04:BD5B: 00        .byte $00   ; 
- D 1 - - - 0x013D6C 04:BD5C: 04        .byte $04   ; 
- D 1 - - - 0x013D6D 04:BD5D: 06        .byte $06   ; 



tbl_BD5E:
- D 1 - - - 0x013D6E 04:BD5E: 10        .byte $10   ; 
- D 1 - - - 0x013D6F 04:BD5F: 18        .byte $18   ; 
- D 1 - - - 0x013D70 04:BD60: FF        .byte $FF   ; 
- D 1 - - - 0x013D71 04:BD61: 7F        .byte $7F   ; 
- D 1 - - - 0x013D72 04:BD62: 7F        .byte $7F   ; 
- D 1 - - - 0x013D73 04:BD63: 20        .byte $20   ; 
- D 1 - - - 0x013D74 04:BD64: 20        .byte $20   ; 
- D 1 - - - 0x013D75 04:BD65: FF        .byte $FF   ; 
- D 1 - - - 0x013D76 04:BD66: 7F        .byte $7F   ; 
- D 1 - - - 0x013D77 04:BD67: 00        .byte $00   ; 



tbl_BD68:
- D 1 - - - 0x013D78 04:BD68: 00        .byte $00   ; 
tbl_BD69:
- D 1 - - - 0x013D79 04:BD69: 00        .byte $00   ; 
- D 1 - - - 0x013D7A 04:BD6A: 83        .byte $83   ; 
- D 1 - - - 0x013D7B 04:BD6B: 01        .byte $01   ; 
- D 1 - - - 0x013D7C 04:BD6C: 83        .byte $83   ; 
- D 1 - - - 0x013D7D 04:BD6D: 02        .byte $02   ; 
- - - - - - 0x013D7E 04:BD6E: 00        .byte $00   ; 
- D 1 - - - 0x013D7F 04:BD6F: 03        .byte $03   ; 
- - - - - - 0x013D80 04:BD70: 00        .byte $00   ; 
- D 1 - - - 0x013D81 04:BD71: 04        .byte $04   ; 
- D 1 - - - 0x013D82 04:BD72: 2A        .byte $2A   ; 
- D 1 - - - 0x013D83 04:BD73: 07        .byte $07   ; 
- - - - - - 0x013D84 04:BD74: 00        .byte $00   ; 
- D 1 - - - 0x013D85 04:BD75: 04        .byte $04   ; 
- D 1 - - - 0x013D86 04:BD76: 10        .byte $10   ; 
- D 1 - - - 0x013D87 04:BD77: 01        .byte $01   ; 
- D 1 - - - 0x013D88 04:BD78: 04        .byte $04   ; 
- D 1 - - - 0x013D89 04:BD79: 05        .byte $05   ; 
- D 1 - - - 0x013D8A 04:BD7A: 11        .byte $11   ; 
- D 1 - - - 0x013D8B 04:BD7B: 06        .byte $06   ; 
- - - - - - 0x013D8C 04:BD7C: 00        .byte $00   ; 
- D 1 - - - 0x013D8D 04:BD7D: 08        .byte $08   ; 
- - - - - - 0x013D8E 04:BD7E: 00        .byte $00   ; 
- D 1 - - - 0x013D8F 04:BD7F: 04        .byte $04   ; 
- - - - - - 0x013D90 04:BD80: 00        .byte $00   ; 
- D 1 - - - 0x013D91 04:BD81: 04        .byte $04   ; 
- D 1 - - - 0x013D92 04:BD82: 95        .byte $95   ; 
- D 1 - - - 0x013D93 04:BD83: 09        .byte $09   ; 
- D 1 - - - 0x013D94 04:BD84: 14        .byte $14   ; 
- D 1 - - - 0x013D95 04:BD85: 04        .byte $04   ; 
- D 1 - - - 0x013D96 04:BD86: 12        .byte $12   ; 
- D 1 - - - 0x013D97 04:BD87: 02        .byte $02   ; 
- - - - - - 0x013D98 04:BD88: 00        .byte $00   ; 
- D 1 - - - 0x013D99 04:BD89: 04        .byte $04   ; 
- D 1 - - - 0x013D9A 04:BD8A: 12        .byte $12   ; 
- D 1 - - - 0x013D9B 04:BD8B: 07        .byte $07   ; 
- D 1 - - - 0x013D9C 04:BD8C: 13        .byte $13   ; 
- D 1 - - - 0x013D9D 04:BD8D: 01        .byte $01   ; 
- - - - - - 0x013D9E 04:BD8E: 00        .byte $00   ; 
- D 1 - - - 0x013D9F 04:BD8F: 03        .byte $03   ; 
- D 1 - - - 0x013DA0 04:BD90: 0E        .byte $0E   ; 
- D 1 - - - 0x013DA1 04:BD91: 05        .byte $05   ; 
- D 1 - - - 0x013DA2 04:BD92: 0D        .byte $0D   ; 
- D 1 - - - 0x013DA3 04:BD93: 05        .byte $05   ; 
- - - - - - 0x013DA4 04:BD94: 00        .byte $00   ; 
- D 1 - - - 0x013DA5 04:BD95: 04        .byte $04   ; 
- D 1 - - - 0x013DA6 04:BD96: A2        .byte $A2   ; 
- D 1 - - - 0x013DA7 04:BD97: 09        .byte $09   ; 
- D 1 - - - 0x013DA8 04:BD98: A3        .byte $A3   ; 
- D 1 - - - 0x013DA9 04:BD99: 09        .byte $09   ; 
- D 1 - - - 0x013DAA 04:BD9A: 24        .byte $24   ; 
- D 1 - - - 0x013DAB 04:BD9B: 07        .byte $07   ; 
- D 1 - - - 0x013DAC 04:BD9C: 28        .byte $28   ; 
- D 1 - - - 0x013DAD 04:BD9D: 01        .byte $01   ; 
- D 1 - - - 0x013DAE 04:BD9E: 29        .byte $29   ; 
- D 1 - - - 0x013DAF 04:BD9F: 06        .byte $06   ; 
- - - - - - 0x013DB0 04:BDA0: 00        .byte $00   ; 
- D 1 - - - 0x013DB1 04:BDA1: 04        .byte $04   ; 
- D 1 - - - 0x013DB2 04:BDA2: A7        .byte $A7   ; 
- D 1 - - - 0x013DB3 04:BDA3: 09        .byte $09   ; 
- - - - - - 0x013DB4 04:BDA4: 00        .byte $00   ; 
- D 1 - - - 0x013DB5 04:BDA5: 04        .byte $04   ; 
- - - - - - 0x013DB6 04:BDA6: 00        .byte $00   ; 
- - - - - - 0x013DB7 04:BDA7: 04        .byte $04   ; 
- - - - - - 0x013DB8 04:BDA8: 00        .byte $00   ; 
- D 1 - - - 0x013DB9 04:BDA9: 04        .byte $04   ; 
- - - - - - 0x013DBA 04:BDAA: 00        .byte $00   ; 
- D 1 - - - 0x013DBB 04:BDAB: 04        .byte $04   ; 
- - - - - - 0x013DBC 04:BDAC: 17        .byte $17   ; 
- - - - - - 0x013DBD 04:BDAD: 04        .byte $04   ; 
- - - - - - 0x013DBE 04:BDAE: 18        .byte $18   ; 
- - - - - - 0x013DBF 04:BDAF: 04        .byte $04   ; 
- - - - - - 0x013DC0 04:BDB0: 00        .byte $00   ; 
- D 1 - - - 0x013DC1 04:BDB1: 04        .byte $04   ; 
- D 1 - - - 0x013DC2 04:BDB2: 26        .byte $26   ; 
- D 1 - - - 0x013DC3 04:BDB3: 01        .byte $01   ; 
- - - - - - 0x013DC4 04:BDB4: 00        .byte $00   ; 
- D 1 - - - 0x013DC5 04:BDB5: 04        .byte $04   ; 
- D 1 - - - 0x013DC6 04:BDB6: 1D        .byte $1D   ; 
- D 1 - - - 0x013DC7 04:BDB7: 08        .byte $08   ; 
- - - - - - 0x013DC8 04:BDB8: 00        .byte $00   ; 
- D 1 - - - 0x013DC9 04:BDB9: 04        .byte $04   ; 
- D 1 - - - 0x013DCA 04:BDBA: 25        .byte $25   ; 
- D 1 - - - 0x013DCB 04:BDBB: 07        .byte $07   ; 
- D 1 - - - 0x013DCC 04:BDBC: 2B        .byte $2B   ; 
- D 1 - - - 0x013DCD 04:BDBD: 06        .byte $06   ; 
- D 1 - - - 0x013DCE 04:BDBE: 13        .byte $13   ; 
- D 1 - - - 0x013DCF 04:BDBF: 01        .byte $01   ; 



sub_BDC0:
C - - - - - 0x013DD0 04:BDC0: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x013DD3 04:BDC3: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x013DD6 04:BDC6: 10 09     BPL bra_BDD1
C - - - - - 0x013DD8 04:BDC8: 18        CLC
C - - - - - 0x013DD9 04:BDC9: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x013DDB 04:BDCB: 29 03     AND #$03
C - - - - - 0x013DDD 04:BDCD: 69 03     ADC #$03
C - - - - - 0x013DDF 04:BDCF: D0 04     BNE bra_BDD5
bra_BDD1:
C - - - - - 0x013DE1 04:BDD1: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x013DE3 04:BDD3: 29 03     AND #$03
bra_BDD5:
C - - - - - 0x013DE5 04:BDD5: A8        TAY
C - - - - - 0x013DE6 04:BDD6: 60        RTS



tbl_BDD7:
- - - - - - 0x013DE7 04:BDD7: 10        .byte $10   ; 
- D 1 - - - 0x013DE8 04:BDD8: 1C        .byte $1C   ; 
- D 1 - - - 0x013DE9 04:BDD9: 24        .byte $24   ; 
- - - - - - 0x013DEA 04:BDDA: 24        .byte $24   ; 
- D 1 - - - 0x013DEB 04:BDDB: 1C        .byte $1C   ; 
- D 1 - - - 0x013DEC 04:BDDC: 14        .byte $14   ; 



tbl_BDDD:
- - - - - - 0x013DED 04:BDDD: 20        .byte $20   ; 
- D 1 - - - 0x013DEE 04:BDDE: 32        .byte $32   ; 
- D 1 - - - 0x013DEF 04:BDDF: 38        .byte $38   ; 
- - - - - - 0x013DF0 04:BDE0: 38        .byte $38   ; 
- D 1 - - - 0x013DF1 04:BDE1: 32        .byte $32   ; 
- D 1 - - - 0x013DF2 04:BDE2: 2C        .byte $2C   ; 



loc_BDE3:
C D 1 - - - 0x013DF3 04:BDE3: AD 08 BE  LDA tbl_BE08
C - - - - - 0x013DF6 04:BDE6: 85 30     STA ram_0030
C - - - - - 0x013DF8 04:BDE8: AD 09 BE  LDA tbl_BE08 + $01
C - - - - - 0x013DFB 04:BDEB: 85 31     STA ram_0031
C - - - - - 0x013DFD 04:BDED: AD 0A BE  LDA tbl_BE0A
C - - - - - 0x013E00 04:BDF0: 85 32     STA ram_0032
C - - - - - 0x013E02 04:BDF2: AD 0B BE  LDA tbl_BE0A + $01
C - - - - - 0x013E05 04:BDF5: 85 33     STA ram_0033
C - - - - - 0x013E07 04:BDF7: A5 5C     LDA ram_game_script
C - - - - - 0x013E09 04:BDF9: 29 40     AND #$40
C - - - - - 0x013E0B 04:BDFB: F0 04     BEQ bra_BE01
C - - - - - 0x013E0D 04:BDFD: A9 00     LDA #$00
C - - - - - 0x013E0F 04:BDFF: F0 03     BEQ bra_BE04
bra_BE01:
C - - - - - 0x013E11 04:BE01: AD 0F 05  LDA ram_номер_супера
bra_BE04:
C - - - - - 0x013E14 04:BE04: 20 56 C0  JSR sub_0x01C066
C - - - - - 0x013E17 04:BE07: 60        RTS



tbl_BE08:
- D 1 - - - 0x013E18 04:BE08: 0C BE     .word tbl_BE0C

tbl_BE0A:
- D 1 - - - 0x013E1A 04:BE0A: E3 BC     .word ofs_BCE3

tbl_BE0C:
- D 1 - I - 0x013E1C 04:BE0C: 64 BE     .word off_BE64_00
- D 1 - I - 0x013E1E 04:BE0E: 6D BE     .word off_BE6D_01
- D 1 - I - 0x013E20 04:BE10: 6D BE     .word off_BE6D_02
- D 1 - I - 0x013E22 04:BE12: 6D BE     .word off_BE6D_03
- D 1 - I - 0x013E24 04:BE14: 76 BE     .word off_BE76_04
- D 1 - I - 0x013E26 04:BE16: 7D BE     .word off_BE7D_05
- D 1 - I - 0x013E28 04:BE18: 86 BE     .word off_BE86_06
- D 1 - I - 0x013E2A 04:BE1A: 8D BE     .word off_BE8D_07
- D 1 - I - 0x013E2C 04:BE1C: 99 BE     .word off_BE99_08
- D 1 - I - 0x013E2E 04:BE1E: 9E BE     .word off_BE9E_09
- D 1 - I - 0x013E30 04:BE20: AC BE     .word off_BEAC_0A
- D 1 - I - 0x013E32 04:BE22: B3 BE     .word off_BEB3_0B
- D 1 - I - 0x013E34 04:BE24: B8 BE     .word off_BEB8_0C
- D 1 - I - 0x013E36 04:BE26: BF BE     .word off_BEBF_0D
- D 1 - I - 0x013E38 04:BE28: D6 BE     .word off_BED6_0E
- D 1 - I - 0x013E3A 04:BE2A: E3 BE     .word off_BEE3_0F
- D 1 - I - 0x013E3C 04:BE2C: 94 BE     .word off_BE94_10
- D 1 - I - 0x013E3E 04:BE2E: A5 BE     .word off_BEA5_11
- D 1 - I - 0x013E40 04:BE30: 8D BE     .word off_BE8D_12
- D 1 - I - 0x013E42 04:BE32: 86 BE     .word off_BE86_13
- D 1 - I - 0x013E44 04:BE34: CD BE     .word off_BECD_14
- D 1 - I - 0x013E46 04:BE36: C4 BE     .word off_BEC4_15
- D 1 - I - 0x013E48 04:BE38: EC BE     .word off_BEEC_16
- D 1 - I - 0x013E4A 04:BE3A: F5 BE     .word off_BEF5_17
- D 1 - I - 0x013E4C 04:BE3C: 04 BF     .word off_BF04_18
- D 1 - I - 0x013E4E 04:BE3E: 13 BF     .word off_BF13_19
- D 1 - I - 0x013E50 04:BE40: 2B BF     .word off_BF2B_1A
- D 1 - I - 0x013E52 04:BE42: 34 BF     .word off_BF34_1B
- D 1 - I - 0x013E54 04:BE44: 44 BF     .word off_BF44_1C
- D 1 - I - 0x013E56 04:BE46: 4D BF     .word off_BF4D_1D
- D 1 - I - 0x013E58 04:BE48: 5B BF     .word off_BF5B_1E
- - - - - - 0x013E5A 04:BE4A: 64 BF     .word off_BF64_1F
- D 1 - I - 0x013E5C 04:BE4C: 6B BF     .word off_BF6B_20
- D 1 - I - 0x013E5E 04:BE4E: 70 BF     .word off_BF70_21
- - - - - - 0x013E60 04:BE50: FF BE     .word off_BEFF_22
- - - - - - 0x013E62 04:BE52: 0E BF     .word off_BF0E_23
- D 1 - I - 0x013E64 04:BE54: 19 BF     .word off_BF19_24
- D 1 - I - 0x013E66 04:BE56: 3B BF     .word off_BF3B_25
- D 1 - I - 0x013E68 04:BE58: 42 BF     .word off_BF42_26
- D 1 - I - 0x013E6A 04:BE5A: 52 BF     .word off_BF52_27
- D 1 - I - 0x013E6C 04:BE5C: 2B BF     .word off_BF2B_28
- D 1 - I - 0x013E6E 04:BE5E: 34 BF     .word off_BF34_29
- D 1 - I - 0x013E70 04:BE60: 82 BE     .word off_BE82_2A
- D 1 - I - 0x013E72 04:BE62: 7D BE     .word off_BE7D_2B



off_BE64_00:
- D 1 - I - 0x013E74 04:BE64: 01        .byte $01   ; 
- D 1 - I - 0x013E75 04:BE65: 80        .byte $80   ; 
- D 1 - I - 0x013E76 04:BE66: 01        .byte $01   ; 
- D 1 - I - 0x013E77 04:BE67: 81        .byte $81   ; 
- D 1 - I - 0x013E78 04:BE68: 01        .byte $01   ; 
- D 1 - I - 0x013E79 04:BE69: 82        .byte $82   ; 
- D 1 - I - 0x013E7A 04:BE6A: 01        .byte $01   ; 
- D 1 - I - 0x013E7B 04:BE6B: 83        .byte $83   ; 
- D 1 - I - 0x013E7C 04:BE6C: FE        .byte $FE   ; 



off_BE6D_01:
off_BE6D_02:
off_BE6D_03:
- D 1 - I - 0x013E7D 04:BE6D: 01        .byte $01   ; 
- D 1 - I - 0x013E7E 04:BE6E: 00        .byte $00   ; 
- D 1 - I - 0x013E7F 04:BE6F: 01        .byte $01   ; 
- D 1 - I - 0x013E80 04:BE70: 1C        .byte $1C   ; 
- D 1 - I - 0x013E81 04:BE71: 01        .byte $01   ; 
- D 1 - I - 0x013E82 04:BE72: 02        .byte $02   ; 
- D 1 - I - 0x013E83 04:BE73: 01        .byte $01   ; 
- D 1 - I - 0x013E84 04:BE74: 1D        .byte $1D   ; 
- D 1 - I - 0x013E85 04:BE75: FE        .byte $FE   ; 



off_BE76_04:
- D 1 - I - 0x013E86 04:BE76: 01        .byte $01   ; 
- D 1 - I - 0x013E87 04:BE77: 08        .byte $08   ; 
- D 1 - I - 0x013E88 04:BE78: 01        .byte $01   ; 
- D 1 - I - 0x013E89 04:BE79: 10        .byte $10   ; 
- D 1 - I - 0x013E8A 04:BE7A: 01        .byte $01   ; 
- D 1 - I - 0x013E8B 04:BE7B: 0A        .byte $0A   ; 
- D 1 - I - 0x013E8C 04:BE7C: FE        .byte $FE   ; 



off_BE7D_05:
off_BE7D_2B:
- D 1 - I - 0x013E8D 04:BE7D: 01        .byte $01   ; 
- D 1 - I - 0x013E8E 04:BE7E: 34        .byte $34   ; 
- D 1 - I - 0x013E8F 04:BE7F: 01        .byte $01   ; 
- D 1 - I - 0x013E90 04:BE80: 35        .byte $35   ; 
- D 1 - I - 0x013E91 04:BE81: FE        .byte $FE   ; 



off_BE82_2A:
- D 1 - I - 0x013E92 04:BE82: 01        .byte $01   ; 
- D 1 - I - 0x013E93 04:BE83: 41        .byte $41   ; 
- D 1 - I - 0x013E94 04:BE84: 00        .byte $00   ; 
- D 1 - I - 0x013E95 04:BE85: 45        .byte $45   ; 
off_BE86_06:
off_BE86_13:
- D 1 - I - 0x013E96 04:BE86: 01        .byte $01   ; 
- D 1 - I - 0x013E97 04:BE87: 0B        .byte $0B   ; 
- D 1 - I - 0x013E98 04:BE88: 01        .byte $01   ; 
- D 1 - I - 0x013E99 04:BE89: 0C        .byte $0C   ; 
- D 1 - I - 0x013E9A 04:BE8A: 01        .byte $01   ; 
- D 1 - I - 0x013E9B 04:BE8B: 0D        .byte $0D   ; 
- D 1 - I - 0x013E9C 04:BE8C: FE        .byte $FE   ; 



off_BE8D_07:
off_BE8D_12:
- D 1 - I - 0x013E9D 04:BE8D: 01        .byte $01   ; 
- D 1 - I - 0x013E9E 04:BE8E: 8B        .byte $8B   ; 
- D 1 - I - 0x013E9F 04:BE8F: 01        .byte $01   ; 
- D 1 - I - 0x013EA0 04:BE90: 8C        .byte $8C   ; 
- D 1 - I - 0x013EA1 04:BE91: 01        .byte $01   ; 
- D 1 - I - 0x013EA2 04:BE92: 8D        .byte $8D   ; 
- D 1 - I - 0x013EA3 04:BE93: FE        .byte $FE   ; 



off_BE94_10:
- D 1 - I - 0x013EA4 04:BE94: 01        .byte $01   ; 
- D 1 - I - 0x013EA5 04:BE95: 0E        .byte $0E   ; 
- D 1 - I - 0x013EA6 04:BE96: 01        .byte $01   ; 
- D 1 - I - 0x013EA7 04:BE97: 0F        .byte $0F   ; 
- D 1 - I - 0x013EA8 04:BE98: FE        .byte $FE   ; 



off_BE99_08:
- D 1 - I - 0x013EA9 04:BE99: 01        .byte $01   ; 
- D 1 - I - 0x013EAA 04:BE9A: 18        .byte $18   ; 
- D 1 - I - 0x013EAB 04:BE9B: 01        .byte $01   ; 
- D 1 - I - 0x013EAC 04:BE9C: 19        .byte $19   ; 
- D 1 - I - 0x013EAD 04:BE9D: FE        .byte $FE   ; 



off_BE9E_09:
- D 1 - I - 0x013EAE 04:BE9E: 01        .byte $01   ; 
- D 1 - I - 0x013EAF 04:BE9F: 00        .byte $00   ; 
- D 1 - I - 0x013EB0 04:BEA0: 01        .byte $01   ; 
- D 1 - I - 0x013EB1 04:BEA1: 0D        .byte $0D   ; 
- D 1 - I - 0x013EB2 04:BEA2: 01        .byte $01   ; 
- D 1 - I - 0x013EB3 04:BEA3: 0A        .byte $0A   ; 
- D 1 - I - 0x013EB4 04:BEA4: FE        .byte $FE   ; 



off_BEA5_11:
- D 1 - I - 0x013EB5 04:BEA5: 01        .byte $01   ; 
- D 1 - I - 0x013EB6 04:BEA6: 08        .byte $08   ; 
- D 1 - I - 0x013EB7 04:BEA7: 01        .byte $01   ; 
- D 1 - I - 0x013EB8 04:BEA8: 09        .byte $09   ; 
- D 1 - I - 0x013EB9 04:BEA9: 01        .byte $01   ; 
- D 1 - I - 0x013EBA 04:BEAA: 0A        .byte $0A   ; 
- D 1 - I - 0x013EBB 04:BEAB: FE        .byte $FE   ; 



off_BEAC_0A:
- D 1 - I - 0x013EBC 04:BEAC: 04        .byte $04   ; 
- D 1 - I - 0x013EBD 04:BEAD: 13        .byte $13   ; 
- D 1 - I - 0x013EBE 04:BEAE: 04        .byte $04   ; 
- D 1 - I - 0x013EBF 04:BEAF: 14        .byte $14   ; 
- D 1 - I - 0x013EC0 04:BEB0: 04        .byte $04   ; 
- D 1 - I - 0x013EC1 04:BEB1: 15        .byte $15   ; 
- D 1 - I - 0x013EC2 04:BEB2: FE        .byte $FE   ; 



off_BEB3_0B:
- D 1 - I - 0x013EC3 04:BEB3: 02        .byte $02   ; 
- D 1 - I - 0x013EC4 04:BEB4: 16        .byte $16   ; 
- D 1 - I - 0x013EC5 04:BEB5: 02        .byte $02   ; 
- D 1 - I - 0x013EC6 04:BEB6: 17        .byte $17   ; 
- D 1 - I - 0x013EC7 04:BEB7: FE        .byte $FE   ; 



off_BEB8_0C:
- D 1 - I - 0x013EC8 04:BEB8: 01        .byte $01   ; 
- D 1 - I - 0x013EC9 04:BEB9: B6        .byte $B6   ; 
- D 1 - I - 0x013ECA 04:BEBA: 01        .byte $01   ; 
- D 1 - I - 0x013ECB 04:BEBB: B7        .byte $B7   ; 
- D 1 - I - 0x013ECC 04:BEBC: 01        .byte $01   ; 
- D 1 - I - 0x013ECD 04:BEBD: B8        .byte $B8   ; 
- D 1 - I - 0x013ECE 04:BEBE: FE        .byte $FE   ; 



off_BEBF_0D:
- D 1 - I - 0x013ECF 04:BEBF: 02        .byte $02   ; 
- D 1 - I - 0x013ED0 04:BEC0: 1A        .byte $1A   ; 
- D 1 - I - 0x013ED1 04:BEC1: 02        .byte $02   ; 
- D 1 - I - 0x013ED2 04:BEC2: 1B        .byte $1B   ; 
- D 1 - I - 0x013ED3 04:BEC3: FE        .byte $FE   ; 



off_BEC4_15:
- D 1 - I - 0x013ED4 04:BEC4: 01        .byte $01   ; 
- D 1 - I - 0x013ED5 04:BEC5: 00        .byte $00   ; 
- D 1 - I - 0x013ED6 04:BEC6: 01        .byte $01   ; 
- D 1 - I - 0x013ED7 04:BEC7: 1C        .byte $1C   ; 
- D 1 - I - 0x013ED8 04:BEC8: 01        .byte $01   ; 
- D 1 - I - 0x013ED9 04:BEC9: 02        .byte $02   ; 
- D 1 - I - 0x013EDA 04:BECA: 01        .byte $01   ; 
- D 1 - I - 0x013EDB 04:BECB: 1D        .byte $1D   ; 
- D 1 - I - 0x013EDC 04:BECC: FF        .byte $FF   ; 



off_BECD_14:
- D 1 - I - 0x013EDD 04:BECD: 02        .byte $02   ; 
- D 1 - I - 0x013EDE 04:BECE: 11        .byte $11   ; 
- D 1 - I - 0x013EDF 04:BECF: 02        .byte $02   ; 
- D 1 - I - 0x013EE0 04:BED0: 12        .byte $12   ; 
- D 1 - I - 0x013EE1 04:BED1: 02        .byte $02   ; 
- D 1 - I - 0x013EE2 04:BED2: 11        .byte $11   ; 
- D 1 - I - 0x013EE3 04:BED3: 02        .byte $02   ; 
- D 1 - I - 0x013EE4 04:BED4: 12        .byte $12   ; 
- D 1 - I - 0x013EE5 04:BED5: FF        .byte $FF   ; 



off_BED6_0E:
- D 1 - I - 0x013EE6 04:BED6: 01        .byte $01   ; 
- D 1 - I - 0x013EE7 04:BED7: 08        .byte $08   ; 
- D 1 - I - 0x013EE8 04:BED8: 01        .byte $01   ; 
- D 1 - I - 0x013EE9 04:BED9: 10        .byte $10   ; 
- D 1 - I - 0x013EEA 04:BEDA: 01        .byte $01   ; 
- D 1 - I - 0x013EEB 04:BEDB: 0A        .byte $0A   ; 
- D 1 - I - 0x013EEC 04:BEDC: 01        .byte $01   ; 
- D 1 - I - 0x013EED 04:BEDD: 08        .byte $08   ; 
- D 1 - I - 0x013EEE 04:BEDE: 01        .byte $01   ; 
- D 1 - I - 0x013EEF 04:BEDF: 10        .byte $10   ; 
- D 1 - I - 0x013EF0 04:BEE0: 01        .byte $01   ; 
- D 1 - I - 0x013EF1 04:BEE1: 0A        .byte $0A   ; 
- D 1 - I - 0x013EF2 04:BEE2: FF        .byte $FF   ; 



off_BEE3_0F:
- D 1 - I - 0x013EF3 04:BEE3: 01        .byte $01   ; 
- D 1 - I - 0x013EF4 04:BEE4: 18        .byte $18   ; 
- D 1 - I - 0x013EF5 04:BEE5: 01        .byte $01   ; 
- D 1 - I - 0x013EF6 04:BEE6: 0D        .byte $0D   ; 
- D 1 - I - 0x013EF7 04:BEE7: 01        .byte $01   ; 
- D 1 - I - 0x013EF8 04:BEE8: 19        .byte $19   ; 
- D 1 - I - 0x013EF9 04:BEE9: 01        .byte $01   ; 
- D 1 - I - 0x013EFA 04:BEEA: 8D        .byte $8D   ; 
- D 1 - I - 0x013EFB 04:BEEB: FE        .byte $FE   ; 



off_BEEC_16:
- D 1 - I - 0x013EFC 04:BEEC: 01        .byte $01   ; 
- D 1 - I - 0x013EFD 04:BEED: 25        .byte $25   ; 
- D 1 - I - 0x013EFE 04:BEEE: 01        .byte $01   ; 
- D 1 - I - 0x013EFF 04:BEEF: 26        .byte $26   ; 
- D 1 - I - 0x013F00 04:BEF0: 01        .byte $01   ; 
- D 1 - I - 0x013F01 04:BEF1: 27        .byte $27   ; 
- D 1 - I - 0x013F02 04:BEF2: 01        .byte $01   ; 
- D 1 - I - 0x013F03 04:BEF3: 28        .byte $28   ; 
- D 1 - I - 0x013F04 04:BEF4: FE        .byte $FE   ; 



off_BEF5_17:
- D 1 - I - 0x013F05 04:BEF5: 03        .byte $03   ; 
- D 1 - I - 0x013F06 04:BEF6: 2D        .byte $2D   ; 
- - - - - - 0x013F07 04:BEF7: 03        .byte $03   ; 
- - - - - - 0x013F08 04:BEF8: 31        .byte $31   ; 
- - - - - - 0x013F09 04:BEF9: 02        .byte $02   ; 
- - - - - - 0x013F0A 04:BEFA: 32        .byte $32   ; 
- - - - - - 0x013F0B 04:BEFB: 02        .byte $02   ; 
- - - - - - 0x013F0C 04:BEFC: 33        .byte $33   ; 
- - - - - - 0x013F0D 04:BEFD: FC        .byte $FC   ; 
- - - - - - 0x013F0E 04:BEFE: 02        .byte $02   ; 
off_BEFF_22:
- - - - - - 0x013F0F 04:BEFF: 02        .byte $02   ; 
- - - - - - 0x013F10 04:BF00: 32        .byte $32   ; 
- - - - - - 0x013F11 04:BF01: 02        .byte $02   ; 
- - - - - - 0x013F12 04:BF02: 33        .byte $33   ; 
- - - - - - 0x013F13 04:BF03: FE        .byte $FE   ; 



off_BF04_18:
- D 1 - I - 0x013F14 04:BF04: 03        .byte $03   ; 
- D 1 - I - 0x013F15 04:BF05: 2D        .byte $2D   ; 
- D 1 - I - 0x013F16 04:BF06: 03        .byte $03   ; 
- D 1 - I - 0x013F17 04:BF07: 2E        .byte $2E   ; 
- D 1 - I - 0x013F18 04:BF08: 02        .byte $02   ; 
- D 1 - I - 0x013F19 04:BF09: 2F        .byte $2F   ; 
- D 1 - I - 0x013F1A 04:BF0A: 02        .byte $02   ; 
- D 1 - I - 0x013F1B 04:BF0B: 30        .byte $30   ; 
- D 1 - I - 0x013F1C 04:BF0C: FC        .byte $FC   ; 
- D 1 - I - 0x013F1D 04:BF0D: 02        .byte $02   ; 
off_BF0E_23:
- - - - - - 0x013F1E 04:BF0E: 02        .byte $02   ; 
- - - - - - 0x013F1F 04:BF0F: 2F        .byte $2F   ; 
- - - - - - 0x013F20 04:BF10: 02        .byte $02   ; 
- - - - - - 0x013F21 04:BF11: 30        .byte $30   ; 
- - - - - - 0x013F22 04:BF12: FE        .byte $FE   ; 



off_BF13_19:
- D 1 - I - 0x013F23 04:BF13: 02        .byte $02   ; 
- D 1 - I - 0x013F24 04:BF14: 40        .byte $40   ; 
- D 1 - I - 0x013F25 04:BF15: 01        .byte $01   ; 
- D 1 - I - 0x013F26 04:BF16: 41        .byte $41   ; 
- D 1 - I - 0x013F27 04:BF17: 00        .byte $00   ; 
- D 1 - I - 0x013F28 04:BF18: 45        .byte $45   ; 
off_BF19_24:
- D 1 - I - 0x013F29 04:BF19: 08        .byte $08   ; 
- D 1 - I - 0x013F2A 04:BF1A: 45        .byte $45   ; 
- D 1 - I - 0x013F2B 04:BF1B: 01        .byte $01   ; 
- D 1 - I - 0x013F2C 04:BF1C: 41        .byte $41   ; 
- D 1 - I - 0x013F2D 04:BF1D: 02        .byte $02   ; 
- D 1 - I - 0x013F2E 04:BF1E: 00        .byte $00   ; 
- D 1 - I - 0x013F2F 04:BF1F: 02        .byte $02   ; 
- D 1 - I - 0x013F30 04:BF20: 45        .byte $45   ; 
- D 1 - I - 0x013F31 04:BF21: 01        .byte $01   ; 
- D 1 - I - 0x013F32 04:BF22: 00        .byte $00   ; 
- D 1 - I - 0x013F33 04:BF23: 01        .byte $01   ; 
- D 1 - I - 0x013F34 04:BF24: 01        .byte $01   ; 
- D 1 - I - 0x013F35 04:BF25: 01        .byte $01   ; 
- D 1 - I - 0x013F36 04:BF26: 02        .byte $02   ; 
- D 1 - I - 0x013F37 04:BF27: 01        .byte $01   ; 
- D 1 - I - 0x013F38 04:BF28: 03        .byte $03   ; 
- D 1 - I - 0x013F39 04:BF29: FC        .byte $FC   ; 
- D 1 - I - 0x013F3A 04:BF2A: 04        .byte $04   ; 
off_BF2B_1A:
off_BF2B_28:
- D 1 - I - 0x013F3B 04:BF2B: 01        .byte $01   ; 
- D 1 - I - 0x013F3C 04:BF2C: 3C        .byte $3C   ; 
- D 1 - I - 0x013F3D 04:BF2D: 01        .byte $01   ; 
- D 1 - I - 0x013F3E 04:BF2E: 3D        .byte $3D   ; 
- D 1 - I - 0x013F3F 04:BF2F: 01        .byte $01   ; 
- D 1 - I - 0x013F40 04:BF30: 3E        .byte $3E   ; 
- D 1 - I - 0x013F41 04:BF31: 01        .byte $01   ; 
- D 1 - I - 0x013F42 04:BF32: 3F        .byte $3F   ; 
- D 1 - I - 0x013F43 04:BF33: FE        .byte $FE   ; 



off_BF34_1B:
off_BF34_29:
- D 1 - I - 0x013F44 04:BF34: 02        .byte $02   ; 
- D 1 - I - 0x013F45 04:BF35: 39        .byte $39   ; 
- D 1 - I - 0x013F46 04:BF36: 02        .byte $02   ; 
- D 1 - I - 0x013F47 04:BF37: 3A        .byte $3A   ; 
- D 1 - I - 0x013F48 04:BF38: 02        .byte $02   ; 
- D 1 - I - 0x013F49 04:BF39: 3B        .byte $3B   ; 
- D 1 - I - 0x013F4A 04:BF3A: FE        .byte $FE   ; 



off_BF3B_25:
- D 1 - I - 0x013F4B 04:BF3B: 01        .byte $01   ; 
- D 1 - I - 0x013F4C 04:BF3C: 3B        .byte $3B   ; 
- D 1 - I - 0x013F4D 04:BF3D: 01        .byte $01   ; 
- D 1 - I - 0x013F4E 04:BF3E: 3A        .byte $3A   ; 
- D 1 - I - 0x013F4F 04:BF3F: 01        .byte $01   ; 
- D 1 - I - 0x013F50 04:BF40: 39        .byte $39   ; 
- D 1 - I - 0x013F51 04:BF41: FF        .byte $FF   ; 



off_BF42_26:
- D 1 - I - 0x013F52 04:BF42: 00        .byte $00   ; 
- D 1 - I - 0x013F53 04:BF43: 39        .byte $39   ; 
off_BF44_1C:
- D 1 - I - 0x013F54 04:BF44: 01        .byte $01   ; 
- D 1 - I - 0x013F55 04:BF45: 29        .byte $29   ; 
- D 1 - I - 0x013F56 04:BF46: 01        .byte $01   ; 
- D 1 - I - 0x013F57 04:BF47: 2A        .byte $2A   ; 
- D 1 - I - 0x013F58 04:BF48: 01        .byte $01   ; 
- D 1 - I - 0x013F59 04:BF49: 2B        .byte $2B   ; 
- D 1 - I - 0x013F5A 04:BF4A: 01        .byte $01   ; 
- D 1 - I - 0x013F5B 04:BF4B: 2C        .byte $2C   ; 
- D 1 - I - 0x013F5C 04:BF4C: FE        .byte $FE   ; 



off_BF4D_1D:
- D 1 - I - 0x013F5D 04:BF4D: 01        .byte $01   ; 
- D 1 - I - 0x013F5E 04:BF4E: 20        .byte $20   ; 
- D 1 - I - 0x013F5F 04:BF4F: 01        .byte $01   ; 
- D 1 - I - 0x013F60 04:BF50: 21        .byte $21   ; 
- D 1 - I - 0x013F61 04:BF51: FE        .byte $FE   ; 



off_BF52_27:
- D 1 - I - 0x013F62 04:BF52: 01        .byte $01   ; 
- D 1 - I - 0x013F63 04:BF53: 1E        .byte $1E   ; 
- D 1 - I - 0x013F64 04:BF54: 01        .byte $01   ; 
- D 1 - I - 0x013F65 04:BF55: 1F        .byte $1F   ; 
- D 1 - I - 0x013F66 04:BF56: 01        .byte $01   ; 
- D 1 - I - 0x013F67 04:BF57: 1E        .byte $1E   ; 
- D 1 - I - 0x013F68 04:BF58: 01        .byte $01   ; 
- D 1 - I - 0x013F69 04:BF59: 1F        .byte $1F   ; 
- D 1 - I - 0x013F6A 04:BF5A: FF        .byte $FF   ; 



off_BF5B_1E:
- D 1 - I - 0x013F6B 04:BF5B: 01        .byte $01   ; 
- D 1 - I - 0x013F6C 04:BF5C: 3C        .byte $3C   ; 
- D 1 - I - 0x013F6D 04:BF5D: 01        .byte $01   ; 
- D 1 - I - 0x013F6E 04:BF5E: 3D        .byte $3D   ; 
- D 1 - I - 0x013F6F 04:BF5F: 01        .byte $01   ; 
- D 1 - I - 0x013F70 04:BF60: 3E        .byte $3E   ; 
- D 1 - I - 0x013F71 04:BF61: 01        .byte $01   ; 
- D 1 - I - 0x013F72 04:BF62: 3F        .byte $3F   ; 
- D 1 - I - 0x013F73 04:BF63: FE        .byte $FE   ; 



off_BF64_1F:
- - - - - - 0x013F74 04:BF64: 01        .byte $01   ; 
- - - - - - 0x013F75 04:BF65: 22        .byte $22   ; 
- - - - - - 0x013F76 04:BF66: 01        .byte $01   ; 
- - - - - - 0x013F77 04:BF67: 23        .byte $23   ; 
- - - - - - 0x013F78 04:BF68: 01        .byte $01   ; 
- - - - - - 0x013F79 04:BF69: 24        .byte $24   ; 
- - - - - - 0x013F7A 04:BF6A: FE        .byte $FE   ; 



off_BF6B_20:
- D 1 - I - 0x013F7B 04:BF6B: 01        .byte $01   ; 
- D 1 - I - 0x013F7C 04:BF6C: 40        .byte $40   ; 
- D 1 - I - 0x013F7D 04:BF6D: 01        .byte $01   ; 
- D 1 - I - 0x013F7E 04:BF6E: 41        .byte $41   ; 
- D 1 - I - 0x013F7F 04:BF6F: FE        .byte $FE   ; 



off_BF70_21:
- D 1 - I - 0x013F80 04:BF70: 01        .byte $01   ; 
- D 1 - I - 0x013F81 04:BF71: 42        .byte $42   ; 
- D 1 - I - 0x013F82 04:BF72: 01        .byte $01   ; 
- D 1 - I - 0x013F83 04:BF73: 43        .byte $43   ; 
- D 1 - I - 0x013F84 04:BF74: 01        .byte $01   ; 
- D 1 - I - 0x013F85 04:BF75: 44        .byte $44   ; 
- D 1 - I - 0x013F86 04:BF76: 01        .byte $01   ; 
- D 1 - I - 0x013F87 04:BF77: C3        .byte $C3   ; 
- D 1 - I - 0x013F88 04:BF78: FE        .byte $FE   ; 


; bzk garbage
- - - - - - 0x013F89 04:BF79: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013F90 04:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FA0 04:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FB0 04:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FC0 04:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FD0 04:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FE0 04:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x013FF0 04:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014000 04:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 04: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_04_ID"
- D 1 - - - 0x01400F 04:BFFF: 04        .byte con_prg_bank + $04   ; 



