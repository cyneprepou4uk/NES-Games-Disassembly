.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x018010-0x02000F

; !!! bzk don't move code up to 0x018019



sub_8000_indirect_jump_0008:
C - - - - - 0x018010 06:8000: 6C 08 00  JMP (ram_prg_bank_pointer)

; 03
C - - J - - 0x018013 06:8003: 4C 47 82  JMP loc_8247

; 06
C - - J - - 0x018016 06:8006: 4C 15 81  JMP loc_8115

; 09
C - - J - - 0x018019 06:8009: 4C 0C 80  JMP loc_800C



loc_800C:
C D 0 - - - 0x01801C 06:800C: AD 02 20  LDA $2002
C - - - - - 0x01801F 06:800F: A9 0F     LDA #> $0FB0
C - - - - - 0x018021 06:8011: 8D 06 20  STA $2006
C - - - - - 0x018024 06:8014: A9 B0     LDA #< $0FB0
C - - - - - 0x018026 06:8016: 8D 06 20  STA $2006
C - - - - - 0x018029 06:8019: A9 30     LDA #< ofs_8230_RTS
C - - - - - 0x01802B 06:801B: 85 0D     STA ram_000D
C - - - - - 0x01802D 06:801D: A9 82     LDA #> ofs_8230_RTS
C - - - - - 0x01802F 06:801F: 85 0E     STA ram_000E
C - - - - - 0x018031 06:8021: A5 DC     LDA ram_race
C - - - - - 0x018033 06:8023: 0A        ASL
C - - - - - 0x018034 06:8024: 0A        ASL
C - - - - - 0x018035 06:8025: 65 DC     ADC ram_race
C - - - - - 0x018037 06:8027: A8        TAY
C - - - - - 0x018038 06:8028: A2 04     LDX #$04
bra_802A_loop:
C - - - - - 0x01803A 06:802A: 84 21     STY ram_0021
C - - - - - 0x01803C 06:802C: B9 09 01  LDA ram_0109,Y
C - - - - - 0x01803F 06:802F: 20 E5 81  JSR sub_81E5_convert_letters_to_tiles
C - - - - - 0x018042 06:8032: 20 9B 80  JSR sub_809B
C - - - - - 0x018045 06:8035: A0 00     LDY #$00
bra_8037_loop:
C - - - - - 0x018047 06:8037: B1 11     LDA (ram_0011),Y
C - - - - - 0x018049 06:8039: 8D 07 20  STA $2007
C - - - - - 0x01804C 06:803C: C8        INY
C - - - - - 0x01804D 06:803D: C0 07     CPY #$07
C - - - - - 0x01804F 06:803F: D0 F6     BNE bra_8037_loop
C - - - - - 0x018051 06:8041: A9 FF     LDA #$FF
C - - - - - 0x018053 06:8043: 8D 07 20  STA $2007
C - - - - - 0x018056 06:8046: A0 00     LDY #$00
bra_8048_loop:
C - - - - - 0x018058 06:8048: B1 11     LDA (ram_0011),Y
C - - - - - 0x01805A 06:804A: 8D 07 20  STA $2007
C - - - - - 0x01805D 06:804D: C8        INY
C - - - - - 0x01805E 06:804E: C0 07     CPY #$07
C - - - - - 0x018060 06:8050: D0 F6     BNE bra_8048_loop
C - - - - - 0x018062 06:8052: A9 FF     LDA #$FF
C - - - - - 0x018064 06:8054: 8D 07 20  STA $2007
C - - - - - 0x018067 06:8057: A4 21     LDY ram_0021
C - - - - - 0x018069 06:8059: C8        INY
C - - - - - 0x01806A 06:805A: CA        DEX
C - - - - - 0x01806B 06:805B: 10 CD     BPL bra_802A_loop
C - - - - - 0x01806D 06:805D: A9 1B     LDA #> $1B50
C - - - - - 0x01806F 06:805F: 8D 06 20  STA $2006
C - - - - - 0x018072 06:8062: A9 50     LDA #< $1B50
C - - - - - 0x018074 06:8064: 8D 06 20  STA $2006
C - - - - - 0x018077 06:8067: A5 DC     LDA ram_race
C - - - - - 0x018079 06:8069: 0A        ASL
C - - - - - 0x01807A 06:806A: 0A        ASL
C - - - - - 0x01807B 06:806B: 85 15     STA ram_0015
C - - - - - 0x01807D 06:806D: 0A        ASL
C - - - - - 0x01807E 06:806E: 65 15     ADC ram_0015
C - - - - - 0x018080 06:8070: A8        TAY
C - - - - - 0x018081 06:8071: A2 0C     LDX #$0C
bra_8073_loop:
C - - - - - 0x018083 06:8073: 84 21     STY ram_0021
C - - - - - 0x018085 06:8075: B9 A9 80  LDA tbl_80A9,Y
C - - - - - 0x018088 06:8078: 20 E5 81  JSR sub_81E5_convert_letters_to_tiles
C - - - - - 0x01808B 06:807B: 20 9B 80  JSR sub_809B
C - - - - - 0x01808E 06:807E: A0 08     LDY #$08
C - - - - - 0x018090 06:8080: A9 FF     LDA #$FF
bra_8082_loop:
C - - - - - 0x018092 06:8082: 8D 07 20  STA $2007
C - - - - - 0x018095 06:8085: 88        DEY
C - - - - - 0x018096 06:8086: 10 FA     BPL bra_8082_loop
C - - - - - 0x018098 06:8088: A0 00     LDY #$00
bra_808A_loop:
C - - - - - 0x01809A 06:808A: B1 11     LDA (ram_0011),Y
C - - - - - 0x01809C 06:808C: 8D 07 20  STA $2007
C - - - - - 0x01809F 06:808F: C8        INY
C - - - - - 0x0180A0 06:8090: C0 07     CPY #$07
C - - - - - 0x0180A2 06:8092: D0 F6     BNE bra_808A_loop
C - - - - - 0x0180A4 06:8094: A4 21     LDY ram_0021
C - - - - - 0x0180A6 06:8096: C8        INY
C - - - - - 0x0180A7 06:8097: CA        DEX
C - - - - - 0x0180A8 06:8098: D0 D9     BNE bra_8073_loop
C - - - - - 0x0180AA 06:809A: 60        RTS



sub_809B:
C - - - - - 0x0180AB 06:809B: A5 11     LDA ram_0011
C - - - - - 0x0180AD 06:809D: 38        SEC
C - - - - - 0x0180AE 06:809E: E9 E8     SBC #< ( tbl_961A - tbl_9532 )
C - - - - - 0x0180B0 06:80A0: 85 11     STA ram_0011
C - - - - - 0x0180B2 06:80A2: A5 12     LDA ram_0012
C - - - - - 0x0180B4 06:80A4: E9 00     SBC #> ( tbl_961A - tbl_9532 )
C - - - - - 0x0180B6 06:80A6: 85 12     STA ram_0012
C - - - - - 0x0180B8 06:80A8: 60        RTS



tbl_80A9:
- D 0 - - - 0x0180B9 06:80A9: 20        .byte $20   ; 00 
- D 0 - - - 0x0180BA 06:80AA: 57        .byte $57   ; 01 
- D 0 - - - 0x0180BB 06:80AB: 5C        .byte $5C   ; 02 
- D 0 - - - 0x0180BC 06:80AC: 20        .byte $20   ; 03 
- D 0 - - - 0x0180BD 06:80AD: 43        .byte $43   ; 04 
- D 0 - - - 0x0180BE 06:80AE: 41        .byte $41   ; 05 
- D 0 - - - 0x0180BF 06:80AF: 4E        .byte $4E   ; 06 
- D 0 - - - 0x0180C0 06:80B0: 41        .byte $41   ; 07 
- D 0 - - - 0x0180C1 06:80B1: 44        .byte $44   ; 08 
- D 0 - - - 0x0180C2 06:80B2: 41        .byte $41   ; 09 
- D 0 - - - 0x0180C3 06:80B3: 20        .byte $20   ; 0A 
- D 0 - - - 0x0180C4 06:80B4: 20        .byte $20   ; 0B 
- D 0 - - - 0x0180C5 06:80B5: 20        .byte $20   ; 0C 
- D 0 - - - 0x0180C6 06:80B6: 4E        .byte $4E   ; 0D 
- D 0 - - - 0x0180C7 06:80B7: 45        .byte $45   ; 0E 
- D 0 - - - 0x0180C8 06:80B8: 57        .byte $57   ; 0F 
- D 0 - - - 0x0180C9 06:80B9: 20        .byte $20   ; 10 
- D 0 - - - 0x0180CA 06:80BA: 4A        .byte $4A   ; 11 
- D 0 - - - 0x0180CB 06:80BB: 45        .byte $45   ; 12 
- D 0 - - - 0x0180CC 06:80BC: 52        .byte $52   ; 13 
- D 0 - - - 0x0180CD 06:80BD: 53        .byte $53   ; 14 
- D 0 - - - 0x0180CE 06:80BE: 45        .byte $45   ; 15 
- D 0 - - - 0x0180CF 06:80BF: 59        .byte $59   ; 16 
- D 0 - - - 0x0180D0 06:80C0: 20        .byte $20   ; 17 
- D 0 - - - 0x0180D1 06:80C1: 53        .byte $53   ; 18 
- D 0 - - - 0x0180D2 06:80C2: 5C        .byte $5C   ; 19 
- D 0 - - - 0x0180D3 06:80C3: 43        .byte $43   ; 1A 
- D 0 - - - 0x0180D4 06:80C4: 41        .byte $41   ; 1B 
- D 0 - - - 0x0180D5 06:80C5: 4C        .byte $4C   ; 1C 
- D 0 - - - 0x0180D6 06:80C6: 49        .byte $49   ; 1D 
- D 0 - - - 0x0180D7 06:80C7: 46        .byte $46   ; 1E 
- D 0 - - - 0x0180D8 06:80C8: 4F        .byte $4F   ; 1F 
- D 0 - - - 0x0180D9 06:80C9: 52        .byte $52   ; 20 
- D 0 - - - 0x0180DA 06:80CA: 4E        .byte $4E   ; 21 
- D 0 - - - 0x0180DB 06:80CB: 49        .byte $49   ; 22 
- D 0 - - - 0x0180DC 06:80CC: 41        .byte $41   ; 23 
- D 0 - - - 0x0180DD 06:80CD: 20        .byte $20   ; 24 
- D 0 - - - 0x0180DE 06:80CE: 20        .byte $20   ; 25 
- D 0 - - - 0x0180DF 06:80CF: 4D        .byte $4D   ; 26 
- D 0 - - - 0x0180E0 06:80D0: 49        .byte $49   ; 27 
- D 0 - - - 0x0180E1 06:80D1: 43        .byte $43   ; 28 
- D 0 - - - 0x0180E2 06:80D2: 48        .byte $48   ; 29 
- D 0 - - - 0x0180E3 06:80D3: 49        .byte $49   ; 2A 
- D 0 - - - 0x0180E4 06:80D4: 47        .byte $47   ; 2B 
- D 0 - - - 0x0180E5 06:80D5: 41        .byte $41   ; 2C 
- D 0 - - - 0x0180E6 06:80D6: 4E        .byte $4E   ; 2D 
- D 0 - - - 0x0180E7 06:80D7: 20        .byte $20   ; 2E 
- D 0 - - - 0x0180E8 06:80D8: 20        .byte $20   ; 2F 
- D 0 - - - 0x0180E9 06:80D9: 20        .byte $20   ; 30 
- D 0 - - - 0x0180EA 06:80DA: 20        .byte $20   ; 31 
- D 0 - - - 0x0180EB 06:80DB: 49        .byte $49   ; 32 
- D 0 - - - 0x0180EC 06:80DC: 4C        .byte $4C   ; 33 
- D 0 - - - 0x0180ED 06:80DD: 4C        .byte $4C   ; 34 
- D 0 - - - 0x0180EE 06:80DE: 49        .byte $49   ; 35 
- D 0 - - - 0x0180EF 06:80DF: 4E        .byte $4E   ; 36 
- D 0 - - - 0x0180F0 06:80E0: 4F        .byte $4F   ; 37 
- D 0 - - - 0x0180F1 06:80E1: 49        .byte $49   ; 38 
- D 0 - - - 0x0180F2 06:80E2: 53        .byte $53   ; 39 
- D 0 - - - 0x0180F3 06:80E3: 20        .byte $20   ; 3A 
- D 0 - - - 0x0180F4 06:80E4: 20        .byte $20   ; 3B 
- D 0 - - - 0x0180F5 06:80E5: 20        .byte $20   ; 3C 
- D 0 - - - 0x0180F6 06:80E6: 20        .byte $20   ; 3D 
- D 0 - - - 0x0180F7 06:80E7: 20        .byte $20   ; 3E 
- D 0 - - - 0x0180F8 06:80E8: 20        .byte $20   ; 3F 
- D 0 - - - 0x0180F9 06:80E9: 4F        .byte $4F   ; 40 
- D 0 - - - 0x0180FA 06:80EA: 48        .byte $48   ; 41 
- D 0 - - - 0x0180FB 06:80EB: 49        .byte $49   ; 42 
- D 0 - - - 0x0180FC 06:80EC: 4F        .byte $4F   ; 43 
- D 0 - - - 0x0180FD 06:80ED: 20        .byte $20   ; 44 
- D 0 - - - 0x0180FE 06:80EE: 20        .byte $20   ; 45 
- D 0 - - - 0x0180FF 06:80EF: 20        .byte $20   ; 46 
- D 0 - - - 0x018100 06:80F0: 20        .byte $20   ; 47 
- D 0 - - - 0x018101 06:80F1: 20        .byte $20   ; 48 
- D 0 - - - 0x018102 06:80F2: 45        .byte $45   ; 49 
- D 0 - - - 0x018103 06:80F3: 5C        .byte $5C   ; 4A 
- D 0 - - - 0x018104 06:80F4: 20        .byte $20   ; 4B 
- D 0 - - - 0x018105 06:80F5: 43        .byte $43   ; 4C 
- D 0 - - - 0x018106 06:80F6: 41        .byte $41   ; 4D 
- D 0 - - - 0x018107 06:80F7: 4E        .byte $4E   ; 4E 
- D 0 - - - 0x018108 06:80F8: 41        .byte $41   ; 4F 
- D 0 - - - 0x018109 06:80F9: 44        .byte $44   ; 50 
- D 0 - - - 0x01810A 06:80FA: 41        .byte $41   ; 51 
- D 0 - - - 0x01810B 06:80FB: 20        .byte $20   ; 52 
- D 0 - - - 0x01810C 06:80FC: 20        .byte $20   ; 53 
- D 0 - - - 0x01810D 06:80FD: 20        .byte $20   ; 54 
- D 0 - - - 0x01810E 06:80FE: 20        .byte $20   ; 55 
- D 0 - - - 0x01810F 06:80FF: 43        .byte $43   ; 56 
- D 0 - - - 0x018110 06:8100: 4F        .byte $4F   ; 57 
- D 0 - - - 0x018111 06:8101: 4C        .byte $4C   ; 58 
- D 0 - - - 0x018112 06:8102: 4F        .byte $4F   ; 59 
- D 0 - - - 0x018113 06:8103: 52        .byte $52   ; 5A 
- D 0 - - - 0x018114 06:8104: 41        .byte $41   ; 5B 
- D 0 - - - 0x018115 06:8105: 44        .byte $44   ; 5C 
- D 0 - - - 0x018116 06:8106: 4F        .byte $4F   ; 5D 
- D 0 - - - 0x018117 06:8107: 20        .byte $20   ; 5E 
- D 0 - - - 0x018118 06:8108: 20        .byte $20   ; 5F 
- D 0 - - - 0x018119 06:8109: 20        .byte $20   ; 60 
- D 0 - - - 0x01811A 06:810A: 54        .byte $54   ; 61 
- D 0 - - - 0x01811B 06:810B: 52        .byte $52   ; 62 
- D 0 - - - 0x01811C 06:810C: 41        .byte $41   ; 63 
- D 0 - - - 0x01811D 06:810D: 44        .byte $44   ; 64 
- D 0 - - - 0x01811E 06:810E: 45        .byte $45   ; 65 
- D 0 - - - 0x01811F 06:810F: 57        .byte $57   ; 66 
- D 0 - - - 0x018120 06:8110: 45        .byte $45   ; 67 
- D 0 - - - 0x018121 06:8111: 53        .byte $53   ; 68 
- D 0 - - - 0x018122 06:8112: 54        .byte $54   ; 69 
- D 0 - - - 0x018123 06:8113: 20        .byte $20   ; 6A 
- D 0 - - - 0x018124 06:8114: 20        .byte $20   ; 6B 



loc_8115:
C D 0 - - - 0x018125 06:8115: A9 10     LDA #> $1030
C - - - - - 0x018127 06:8117: 8D 06 20  STA $2006
C - - - - - 0x01812A 06:811A: A9 30     LDA #< $1030
C - - - - - 0x01812C 06:811C: 8D 06 20  STA $2006
C - - - - - 0x01812F 06:811F: A2 00     LDX #$00
bra_8121_loop:
C - - - - - 0x018131 06:8121: 86 1F     STX ram_001F
C - - - - - 0x018133 06:8123: BC A2 81  LDY tbl_81A2,X
C - - - - - 0x018136 06:8126: B9 74 81  LDA tbl_8174,Y
C - - - - - 0x018139 06:8129: 85 0D     STA ram_000D
C - - - - - 0x01813B 06:812B: B9 75 81  LDA tbl_8174 + $01,Y
C - - - - - 0x01813E 06:812E: 85 0E     STA ram_000E
C - - - - - 0x018140 06:8130: BD 78 81  LDA tbl_8178,X
C - - - - - 0x018143 06:8133: 20 E5 81  JSR sub_81E5_convert_letters_to_tiles
C - - - - - 0x018146 06:8136: E8        INX
C - - - - - 0x018147 06:8137: E0 2A     CPX #$2A
C - - - - - 0x018149 06:8139: D0 E6     BNE bra_8121_loop
C - - - - - 0x01814B 06:813B: A2 00     LDX #$00
C - - - - - 0x01814D 06:813D: 86 16     STX ram_0016
bra_813F_loop:
C - - - - - 0x01814F 06:813F: 86 1F     STX ram_001F
C - - - - - 0x018151 06:8141: B5 87     LDA ram_position,X
C - - - - - 0x018153 06:8143: 0A        ASL
C - - - - - 0x018154 06:8144: 0A        ASL
C - - - - - 0x018155 06:8145: 75 87     ADC ram_position,X
C - - - - - 0x018157 06:8147: A8        TAY
C - - - - - 0x018158 06:8148: A2 04     LDX #$04
bra_814A_loop:
C - - - - - 0x01815A 06:814A: 84 21     STY ram_0021
C - - - - - 0x01815C 06:814C: A4 16     LDY ram_0016
C - - - - - 0x01815E 06:814E: B9 CC 81  LDA tbl_81CC,Y
C - - - - - 0x018161 06:8151: A8        TAY
C - - - - - 0x018162 06:8152: B9 74 81  LDA tbl_8174,Y
C - - - - - 0x018165 06:8155: 85 0D     STA ram_000D
C - - - - - 0x018167 06:8157: B9 75 81  LDA tbl_8174 + $01,Y
C - - - - - 0x01816A 06:815A: 85 0E     STA ram_000E
C - - - - - 0x01816C 06:815C: E6 16     INC ram_0016
C - - - - - 0x01816E 06:815E: A4 21     LDY ram_0021
C - - - - - 0x018170 06:8160: B9 D4 03  LDA ram_nickname,Y
C - - - - - 0x018173 06:8163: 20 E5 81  JSR sub_81E5_convert_letters_to_tiles
C - - - - - 0x018176 06:8166: A4 21     LDY ram_0021
C - - - - - 0x018178 06:8168: C8        INY
C - - - - - 0x018179 06:8169: CA        DEX
C - - - - - 0x01817A 06:816A: 10 DE     BPL bra_814A_loop
C - - - - - 0x01817C 06:816C: A6 1F     LDX ram_001F
C - - - - - 0x01817E 06:816E: E8        INX
C - - - - - 0x01817F 06:816F: E0 05     CPX #$05
C - - - - - 0x018181 06:8171: D0 CC     BNE bra_813F_loop
C - - - - - 0x018183 06:8173: 60        RTS



tbl_8174:
- D 0 - - - 0x018184 06:8174: 1A 82     .word ofs_014_821A_00
- D 0 - - - 0x018186 06:8176: 31 82     .word ofs_014_8231_02



tbl_8178:
- D 0 - - - 0x018188 06:8178: 50        .byte $50   ; 00 
- D 0 - - - 0x018189 06:8179: 4F        .byte $4F   ; 01 
- D 0 - - - 0x01818A 06:817A: 49        .byte $49   ; 02 
- D 0 - - - 0x01818B 06:817B: 4E        .byte $4E   ; 03 
- D 0 - - - 0x01818C 06:817C: 54        .byte $54   ; 04 
- D 0 - - - 0x01818D 06:817D: 53        .byte $53   ; 05 
- D 0 - - - 0x01818E 06:817E: 50        .byte $50   ; 06 
- D 0 - - - 0x01818F 06:817F: 4F        .byte $4F   ; 07 
- D 0 - - - 0x018190 06:8180: 49        .byte $49   ; 08 
- D 0 - - - 0x018191 06:8181: 4E        .byte $4E   ; 09 
- D 0 - - - 0x018192 06:8182: 54        .byte $54   ; 0A 
- D 0 - - - 0x018193 06:8183: 53        .byte $53   ; 0B 
- D 0 - - - 0x018194 06:8184: 4D        .byte $4D   ; 0C 
- D 0 - - - 0x018195 06:8185: 48        .byte $48   ; 0D 
- D 0 - - - 0x018196 06:8186: 41        .byte $41   ; 0E 
- D 0 - - - 0x018197 06:8187: 56        .byte $56   ; 0F 
- D 0 - - - 0x018198 06:8188: 47        .byte $47   ; 10 
- D 0 - - - 0x018199 06:8189: 4D        .byte $4D   ; 11 
- D 0 - - - 0x01819A 06:818A: 48        .byte $48   ; 12 
- D 0 - - - 0x01819B 06:818B: 41        .byte $41   ; 13 
- D 0 - - - 0x01819C 06:818C: 56        .byte $56   ; 14 
- D 0 - - - 0x01819D 06:818D: 47        .byte $47   ; 15 
- D 0 - - - 0x01819E 06:818E: 30        .byte $30   ; 16 
- D 0 - - - 0x01819F 06:818F: 31        .byte $31   ; 17 
- D 0 - - - 0x0181A0 06:8190: 32        .byte $32   ; 18 
- D 0 - - - 0x0181A1 06:8191: 33        .byte $33   ; 19 
- D 0 - - - 0x0181A2 06:8192: 34        .byte $34   ; 1A 
- D 0 - - - 0x0181A3 06:8193: 35        .byte $35   ; 1B 
- D 0 - - - 0x0181A4 06:8194: 36        .byte $36   ; 1C 
- D 0 - - - 0x0181A5 06:8195: 37        .byte $37   ; 1D 
- D 0 - - - 0x0181A6 06:8196: 38        .byte $38   ; 1E 
- D 0 - - - 0x0181A7 06:8197: 39        .byte $39   ; 1F 
- D 0 - - - 0x0181A8 06:8198: 30        .byte $30   ; 20 
- D 0 - - - 0x0181A9 06:8199: 31        .byte $31   ; 21 
- D 0 - - - 0x0181AA 06:819A: 32        .byte $32   ; 22 
- D 0 - - - 0x0181AB 06:819B: 33        .byte $33   ; 23 
- D 0 - - - 0x0181AC 06:819C: 34        .byte $34   ; 24 
- D 0 - - - 0x0181AD 06:819D: 35        .byte $35   ; 25 
- D 0 - - - 0x0181AE 06:819E: 36        .byte $36   ; 26 
- D 0 - - - 0x0181AF 06:819F: 37        .byte $37   ; 27 
- D 0 - - - 0x0181B0 06:81A0: 38        .byte $38   ; 28 
- D 0 - - - 0x0181B1 06:81A1: 39        .byte $39   ; 29 



tbl_81A2:
- D 0 - - - 0x0181B2 06:81A2: 02        .byte $02   ; 00 
- D 0 - - - 0x0181B3 06:81A3: 02        .byte $02   ; 01 
- D 0 - - - 0x0181B4 06:81A4: 00        .byte $00   ; 02 
- D 0 - - - 0x0181B5 06:81A5: 00        .byte $00   ; 03 
- D 0 - - - 0x0181B6 06:81A6: 00        .byte $00   ; 04 
- D 0 - - - 0x0181B7 06:81A7: 00        .byte $00   ; 05 
- D 0 - - - 0x0181B8 06:81A8: 00        .byte $00   ; 06 
- D 0 - - - 0x0181B9 06:81A9: 00        .byte $00   ; 07 
- D 0 - - - 0x0181BA 06:81AA: 02        .byte $02   ; 08 
- D 0 - - - 0x0181BB 06:81AB: 02        .byte $02   ; 09 
- D 0 - - - 0x0181BC 06:81AC: 02        .byte $02   ; 0A 
- D 0 - - - 0x0181BD 06:81AD: 02        .byte $02   ; 0B 
- D 0 - - - 0x0181BE 06:81AE: 02        .byte $02   ; 0C 
- D 0 - - - 0x0181BF 06:81AF: 00        .byte $00   ; 0D 
- D 0 - - - 0x0181C0 06:81B0: 00        .byte $00   ; 0E 
- D 0 - - - 0x0181C1 06:81B1: 00        .byte $00   ; 0F 
- D 0 - - - 0x0181C2 06:81B2: 02        .byte $02   ; 10 
- D 0 - - - 0x0181C3 06:81B3: 00        .byte $00   ; 11 
- D 0 - - - 0x0181C4 06:81B4: 02        .byte $02   ; 12 
- D 0 - - - 0x0181C5 06:81B5: 02        .byte $02   ; 13 
- D 0 - - - 0x0181C6 06:81B6: 02        .byte $02   ; 14 
- D 0 - - - 0x0181C7 06:81B7: 00        .byte $00   ; 15 
- D 0 - - - 0x0181C8 06:81B8: 00        .byte $00   ; 16 
- D 0 - - - 0x0181C9 06:81B9: 00        .byte $00   ; 17 
- D 0 - - - 0x0181CA 06:81BA: 00        .byte $00   ; 18 
- D 0 - - - 0x0181CB 06:81BB: 00        .byte $00   ; 19 
- D 0 - - - 0x0181CC 06:81BC: 00        .byte $00   ; 1A 
- D 0 - - - 0x0181CD 06:81BD: 00        .byte $00   ; 1B 
- D 0 - - - 0x0181CE 06:81BE: 00        .byte $00   ; 1C 
- D 0 - - - 0x0181CF 06:81BF: 00        .byte $00   ; 1D 
- D 0 - - - 0x0181D0 06:81C0: 00        .byte $00   ; 1E 
- D 0 - - - 0x0181D1 06:81C1: 00        .byte $00   ; 1F 
- D 0 - - - 0x0181D2 06:81C2: 02        .byte $02   ; 20 
- D 0 - - - 0x0181D3 06:81C3: 02        .byte $02   ; 21 
- D 0 - - - 0x0181D4 06:81C4: 02        .byte $02   ; 22 
- D 0 - - - 0x0181D5 06:81C5: 02        .byte $02   ; 23 
- D 0 - - - 0x0181D6 06:81C6: 02        .byte $02   ; 24 
- D 0 - - - 0x0181D7 06:81C7: 02        .byte $02   ; 25 
- D 0 - - - 0x0181D8 06:81C8: 02        .byte $02   ; 26 
- D 0 - - - 0x0181D9 06:81C9: 02        .byte $02   ; 27 
- D 0 - - - 0x0181DA 06:81CA: 02        .byte $02   ; 28 
- D 0 - - - 0x0181DB 06:81CB: 02        .byte $02   ; 29 



tbl_81CC:
- D 0 - - - 0x0181DC 06:81CC: 02        .byte $02   ; 00 
- D 0 - - - 0x0181DD 06:81CD: 02        .byte $02   ; 01 
- D 0 - - - 0x0181DE 06:81CE: 02        .byte $02   ; 02 
- D 0 - - - 0x0181DF 06:81CF: 02        .byte $02   ; 03 
- D 0 - - - 0x0181E0 06:81D0: 00        .byte $00   ; 04 
- D 0 - - - 0x0181E1 06:81D1: 00        .byte $00   ; 05 
- D 0 - - - 0x0181E2 06:81D2: 00        .byte $00   ; 06 
- D 0 - - - 0x0181E3 06:81D3: 00        .byte $00   ; 07 
- D 0 - - - 0x0181E4 06:81D4: 00        .byte $00   ; 08 
- D 0 - - - 0x0181E5 06:81D5: 02        .byte $02   ; 09 
- D 0 - - - 0x0181E6 06:81D6: 02        .byte $02   ; 0A 
- D 0 - - - 0x0181E7 06:81D7: 02        .byte $02   ; 0B 
- D 0 - - - 0x0181E8 06:81D8: 02        .byte $02   ; 0C 
- D 0 - - - 0x0181E9 06:81D9: 02        .byte $02   ; 0D 
- D 0 - - - 0x0181EA 06:81DA: 00        .byte $00   ; 0E 
- D 0 - - - 0x0181EB 06:81DB: 00        .byte $00   ; 0F 
- D 0 - - - 0x0181EC 06:81DC: 00        .byte $00   ; 10 
- D 0 - - - 0x0181ED 06:81DD: 00        .byte $00   ; 11 
- D 0 - - - 0x0181EE 06:81DE: 00        .byte $00   ; 12 
- D 0 - - - 0x0181EF 06:81DF: 02        .byte $02   ; 13 
- D 0 - - - 0x0181F0 06:81E0: 02        .byte $02   ; 14 
- D 0 - - - 0x0181F1 06:81E1: 02        .byte $02   ; 15 
- D 0 - - - 0x0181F2 06:81E2: 02        .byte $02   ; 16 
- D 0 - - - 0x0181F3 06:81E3: 02        .byte $02   ; 17 
- D 0 - - - 0x0181F4 06:81E4: 00        .byte $00   ; 18 



sub_81E5_convert_letters_to_tiles:
C - - - - - 0x0181F5 06:81E5: A0 00     LDY #$00
C - - - - - 0x0181F7 06:81E7: 84 15     STY ram_0015
C - - - - - 0x0181F9 06:81E9: C9 20     CMP #$20    ; space
C - - - - - 0x0181FB 06:81EB: D0 04     BNE bra_81F1
; 20
C - - - - - 0x0181FD 06:81ED: A9 1A     LDA #$1A
C - - - - - 0x0181FF 06:81EF: D0 12     BNE bra_8203    ; jmp
bra_81F1:
C - - - - - 0x018201 06:81F1: C9 30     CMP #$30
C - - - - - 0x018203 06:81F3: 90 0B     BCC bra_8200
; 30+
C - - - - - 0x018205 06:81F5: C9 3A     CMP #$3A
C - - - - - 0x018207 06:81F7: B0 07     BCS bra_8200
; 30-39
C - - - - - 0x018209 06:81F9: 38        SEC
C - - - - - 0x01820A 06:81FA: E9 30     SBC #$30
; C = 1
C - - - - - 0x01820C 06:81FC: 69 1E     ADC #$1E    ; result 1F-28
C - - - - - 0x01820E 06:81FE: D0 03     BNE bra_8203    ; jmp
bra_8200:
; 41+
C - - - - - 0x018210 06:8200: 38        SEC
C - - - - - 0x018211 06:8201: E9 41     SBC #$41    ; result 00+
bra_8203:
C - - - - - 0x018213 06:8203: 0A        ASL
C - - - - - 0x018214 06:8204: 26 15     ROL ram_0015
C - - - - - 0x018216 06:8206: 0A        ASL
C - - - - - 0x018217 06:8207: 26 15     ROL ram_0015
C - - - - - 0x018219 06:8209: 0A        ASL
C - - - - - 0x01821A 06:820A: 26 15     ROL ram_0015
C - - - - - 0x01821C 06:820C: 18        CLC
C - - - - - 0x01821D 06:820D: 69 1A     ADC #< tbl_961A
C - - - - - 0x01821F 06:820F: 85 11     STA ram_0011
C - - - - - 0x018221 06:8211: A9 96     LDA #> tbl_961A
C - - - - - 0x018223 06:8213: 65 15     ADC ram_0015
C - - - - - 0x018225 06:8215: 85 12     STA ram_0012
C - - - - - 0x018227 06:8217: 6C 0D 00  JMP (ram_000D)



ofs_014_821A_00:
C - - J - - 0x01822A 06:821A: A0 07     LDY #$07
C - - - - - 0x01822C 06:821C: A9 FF     LDA #$FF
bra_821E_loop:
C - - - - - 0x01822E 06:821E: 8D 07 20  STA $2007
C - - - - - 0x018231 06:8221: 88        DEY
C - - - - - 0x018232 06:8222: 10 FA     BPL bra_821E_loop
C - - - - - 0x018234 06:8224: A0 00     LDY #$00
bra_8226_loop:
C - - - - - 0x018236 06:8226: B1 11     LDA (ram_0011),Y
C - - - - - 0x018238 06:8228: 8D 07 20  STA $2007
C - - - - - 0x01823B 06:822B: C8        INY
C - - - - - 0x01823C 06:822C: C0 08     CPY #$08
C - - - - - 0x01823E 06:822E: D0 F6     BNE bra_8226_loop
ofs_8230_RTS:
C - - J - - 0x018240 06:8230: 60        RTS



ofs_014_8231_02:
C - - J - - 0x018241 06:8231: A0 00     LDY #$00
bra_8233_loop:
C - - - - - 0x018243 06:8233: B1 11     LDA (ram_0011),Y
C - - - - - 0x018245 06:8235: 8D 07 20  STA $2007
C - - - - - 0x018248 06:8238: C8        INY
C - - - - - 0x018249 06:8239: C0 08     CPY #$08
C - - - - - 0x01824B 06:823B: D0 F6     BNE bra_8233_loop
C - - - - - 0x01824D 06:823D: 88        DEY
C - - - - - 0x01824E 06:823E: A9 FF     LDA #$FF
bra_8240_loop:
C - - - - - 0x018250 06:8240: 8D 07 20  STA $2007
C - - - - - 0x018253 06:8243: 88        DEY
C - - - - - 0x018254 06:8244: 10 FA     BPL bra_8240_loop
C - - - - - 0x018256 06:8246: 60        RTS



loc_8247:
; similar routine to 0x0118B4
C D 0 - - - 0x018257 06:8247: AD 02 20  LDA $2002
C - - - - - 0x01825A 06:824A: A5 15     LDA ram_0015
C - - - - - 0x01825C 06:824C: 0A        ASL
C - - - - - 0x01825D 06:824D: AA        TAX
C - - - - - 0x01825E 06:824E: BD 55 84  LDA tbl_8455,X
C - - - - - 0x018261 06:8251: 85 11     STA ram_0011
C - - - - - 0x018263 06:8253: BD 56 84  LDA tbl_8455 + $01,X
C - - - - - 0x018266 06:8256: 85 12     STA ram_0012
loc_8258_reading_data_loop:
C D 0 - - - 0x018268 06:8258: A0 00     LDY #$00
C - - - - - 0x01826A 06:825A: B1 11     LDA (ram_0011),Y
C - - - - - 0x01826C 06:825C: D0 01     BNE bra_825F
C - - - - - 0x01826E 06:825E: 60        RTS
bra_825F:
C - - - - - 0x01826F 06:825F: 85 15     STA ram_0015
C - - - - - 0x018271 06:8261: C8        INY
C - - - - - 0x018272 06:8262: B1 11     LDA (ram_0011),Y
C - - - - - 0x018274 06:8264: AA        TAX
C - - - - - 0x018275 06:8265: BD 94 82  LDA tbl_8294_decompression_routine,X
C - - - - - 0x018278 06:8268: 85 0D     STA ram_000D
C - - - - - 0x01827A 06:826A: BD 95 82  LDA tbl_8294_decompression_routine + $01,X
C - - - - - 0x01827D 06:826D: 85 0E     STA ram_000E
C - - - - - 0x01827F 06:826F: C8        INY
C - - - - - 0x018280 06:8270: B1 11     LDA (ram_0011),Y
C - - - - - 0x018282 06:8272: 85 13     STA ram_0013
C - - - - - 0x018284 06:8274: C8        INY
C - - - - - 0x018285 06:8275: B1 11     LDA (ram_0011),Y
C - - - - - 0x018287 06:8277: 85 14     STA ram_0014
C - - - - - 0x018289 06:8279: C8        INY
C - - - - - 0x01828A 06:827A: C8        INY
C - - - - - 0x01828B 06:827B: B1 11     LDA (ram_0011),Y
C - - - - - 0x01828D 06:827D: 8D 06 20  STA $2006
C - - - - - 0x018290 06:8280: 88        DEY
C - - - - - 0x018291 06:8281: B1 11     LDA (ram_0011),Y
C - - - - - 0x018293 06:8283: 8D 06 20  STA $2006
C - - - - - 0x018296 06:8286: A9 06     LDA #$06
C - - - - - 0x018298 06:8288: 18        CLC
C - - - - - 0x018299 06:8289: 65 11     ADC ram_0011
C - - - - - 0x01829B 06:828B: 85 11     STA ram_0011
C - - - - - 0x01829D 06:828D: 90 02     BCC bra_8291_not_overflow
C - - - - - 0x01829F 06:828F: E6 12     INC ram_0012
bra_8291_not_overflow:
C - - - - - 0x0182A1 06:8291: 6C 0D 00  JMP (ram_000D)



tbl_8294_decompression_routine:
- D 0 - - - 0x0182A4 06:8294: E2 83     .word ofs_011_83E2_00
- D 0 - - - 0x0182A6 06:8296: 05 84     .word ofs_011_8405_02
- D 0 - - - 0x0182A8 06:8298: 9A 83     .word ofs_011_839A_04
- D 0 - - - 0x0182AA 06:829A: 4D 83     .word ofs_011_834D_06
- D 0 - - - 0x0182AC 06:829C: AA 83     .word ofs_011_83AA_08
- D 0 - - - 0x0182AE 06:829E: BA 83     .word ofs_011_83BA_0A
- - - - - - 0x0182B0 06:82A0: 36 83     .word ofs_011_8336_0C
- D 0 - - - 0x0182B2 06:82A2: A4 82     .word ofs_011_82A4_0E



ofs_011_82A4_0E:
; huge letters?
C - - J - - 0x0182B4 06:82A4: A0 00     LDY #$00
bra_82A6_loop:
C - - - - - 0x0182B6 06:82A6: 84 21     STY ram_0021
C - - - - - 0x0182B8 06:82A8: A9 00     LDA #$00
C - - - - - 0x0182BA 06:82AA: 85 19     STA ram_0019
C - - - - - 0x0182BC 06:82AC: B1 11     LDA (ram_0011),Y
C - - - - - 0x0182BE 06:82AE: 38        SEC
C - - - - - 0x0182BF 06:82AF: E9 40     SBC #$40
C - - - - - 0x0182C1 06:82B1: 0A        ASL
C - - - - - 0x0182C2 06:82B2: 0A        ASL
C - - - - - 0x0182C3 06:82B3: 0A        ASL
C - - - - - 0x0182C4 06:82B4: 26 19     ROL ram_0019
C - - - - - 0x0182C6 06:82B6: A8        TAY
C - - - - - 0x0182C7 06:82B7: 85 16     STA ram_0016
C - - - - - 0x0182C9 06:82B9: A5 14     LDA ram_0014
C - - - - - 0x0182CB 06:82BB: 18        CLC
C - - - - - 0x0182CC 06:82BC: 65 19     ADC ram_0019
C - - - - - 0x0182CE 06:82BE: 85 14     STA ram_0014
C - - - - - 0x0182D0 06:82C0: 20 E8 82  JSR sub_82E8
C - - - - - 0x0182D3 06:82C3: A4 16     LDY ram_0016
C - - - - - 0x0182D5 06:82C5: 20 0C 83  JSR sub_830C
C - - - - - 0x0182D8 06:82C8: 84 16     STY ram_0016
C - - - - - 0x0182DA 06:82CA: 20 E8 82  JSR sub_82E8
C - - - - - 0x0182DD 06:82CD: A4 16     LDY ram_0016
C - - - - - 0x0182DF 06:82CF: 20 0C 83  JSR sub_830C
C - - - - - 0x0182E2 06:82D2: A9 96     LDA #$96
C - - - - - 0x0182E4 06:82D4: 85 14     STA ram_0014
C - - - - - 0x0182E6 06:82D6: A4 21     LDY ram_0021
C - - - - - 0x0182E8 06:82D8: C8        INY
C - - - - - 0x0182E9 06:82D9: C4 15     CPY ram_0015
C - - - - - 0x0182EB 06:82DB: D0 C9     BNE bra_82A6_loop
C - - - - - 0x0182ED 06:82DD: 98        TYA
C - - - - - 0x0182EE 06:82DE: 18        CLC
C - - - - - 0x0182EF 06:82DF: 65 11     ADC ram_0011
C - - - - - 0x0182F1 06:82E1: 85 11     STA ram_0011
C - - - - - 0x0182F3 06:82E3: 90 02     BCC bra_82E7_RTS
- - - - - - 0x0182F5 06:82E5: E6 12     INC ram_0012
bra_82E7_RTS:
C - - - - - 0x0182F7 06:82E7: 60        RTS



sub_82E8:
C - - - - - 0x0182F8 06:82E8: A9 04     LDA #$04
C - - - - - 0x0182FA 06:82EA: 85 17     STA ram_0017
bra_82EC_loop:
C - - - - - 0x0182FC 06:82EC: B1 13     LDA (ram_0013),Y
C - - - - - 0x0182FE 06:82EE: 4A        LSR
C - - - - - 0x0182FF 06:82EF: 4A        LSR
C - - - - - 0x018300 06:82F0: 4A        LSR
C - - - - - 0x018301 06:82F1: 4A        LSR
C - - - - - 0x018302 06:82F2: AA        TAX
C - - - - - 0x018303 06:82F3: BD 26 83  LDA tbl_8326,X
C - - - - - 0x018306 06:82F6: 8D 07 20  STA $2007
C - - - - - 0x018309 06:82F9: 8D 07 20  STA $2007
C - - - - - 0x01830C 06:82FC: C8        INY
C - - - - - 0x01830D 06:82FD: C6 17     DEC ram_0017
C - - - - - 0x01830F 06:82FF: D0 EB     BNE bra_82EC_loop
loc_8301:
C D 0 - - - 0x018311 06:8301: A2 07     LDX #$07
C - - - - - 0x018313 06:8303: A9 00     LDA #$00
bra_8305_loop:
C - - - - - 0x018315 06:8305: 8D 07 20  STA $2007
C - - - - - 0x018318 06:8308: CA        DEX
C - - - - - 0x018319 06:8309: 10 FA     BPL bra_8305_loop
C - - - - - 0x01831B 06:830B: 60        RTS



sub_830C:
C - - - - - 0x01831C 06:830C: A9 04     LDA #$04
C - - - - - 0x01831E 06:830E: 85 17     STA ram_0017
bra_8310_loop:
C - - - - - 0x018320 06:8310: B1 13     LDA (ram_0013),Y
C - - - - - 0x018322 06:8312: 29 0F     AND #$0F
C - - - - - 0x018324 06:8314: AA        TAX
C - - - - - 0x018325 06:8315: BD 26 83  LDA tbl_8326,X
C - - - - - 0x018328 06:8318: 8D 07 20  STA $2007
C - - - - - 0x01832B 06:831B: 8D 07 20  STA $2007
C - - - - - 0x01832E 06:831E: C8        INY
C - - - - - 0x01832F 06:831F: C6 17     DEC ram_0017
C - - - - - 0x018331 06:8321: D0 ED     BNE bra_8310_loop
C - - - - - 0x018333 06:8323: 4C 01 83  JMP loc_8301



tbl_8326:
- D 0 - - - 0x018336 06:8326: 00        .byte $00   ; 00 
- D 0 - - - 0x018337 06:8327: 03        .byte $03   ; 01 
- - - - - - 0x018338 06:8328: 0C        .byte $0C   ; 02 
- D 0 - - - 0x018339 06:8329: 0F        .byte $0F   ; 03 
- - - - - - 0x01833A 06:832A: 30        .byte $30   ; 04 
- - - - - - 0x01833B 06:832B: 33        .byte $33   ; 05 
- D 0 - - - 0x01833C 06:832C: 3C        .byte $3C   ; 06 
- D 0 - - - 0x01833D 06:832D: 3F        .byte $3F   ; 07 
- D 0 - - - 0x01833E 06:832E: C0        .byte $C0   ; 08 
- - - - - - 0x01833F 06:832F: C3        .byte $C3   ; 09 
- - - - - - 0x018340 06:8330: CC        .byte $CC   ; 0A 
- - - - - - 0x018341 06:8331: CF        .byte $CF   ; 0B 
- D 0 - - - 0x018342 06:8332: F0        .byte $F0   ; 0C 
- D 0 - - - 0x018343 06:8333: F3        .byte $F3   ; 0D 
- D 0 - - - 0x018344 06:8334: FC        .byte $FC   ; 0E 
- D 0 - - - 0x018345 06:8335: FF        .byte $FF   ; 0F 



ofs_011_8336_0C:
; write 8 FF bytes, then write 8 specific bytes
bra_8336_loop:
- - - - - - 0x018346 06:8336: A0 07     LDY #$07
- - - - - - 0x018348 06:8338: A9 FF     LDA #$FF
bra_833A_loop:
- - - - - - 0x01834A 06:833A: 8D 07 20  STA $2007
- - - - - - 0x01834D 06:833D: 88        DEY
- - - - - - 0x01834E 06:833E: 10 FA     BPL bra_833A_loop
- - - - - - 0x018350 06:8340: 20 CA 83  JSR sub_83CA_write_8_specific_bytes_to_ppu
- - - - - - 0x018353 06:8343: 20 F8 83  JSR sub_83F8_shift_pointer_0013_by_Y
- - - - - - 0x018356 06:8346: C6 15     DEC ram_0015
- - - - - - 0x018358 06:8348: D0 EC     BNE bra_8336_loop
- - - - - - 0x01835A 06:834A: 4C 58 82  JMP loc_8258_reading_data_loop



ofs_011_834D_06:
bra_834D_loop:
C - - J - - 0x01835D 06:834D: A5 13     LDA ram_0013
C - - - - - 0x01835F 06:834F: 18        CLC
C - - - - - 0x018360 06:8350: 69 08     ADC #< $0008
C - - - - - 0x018362 06:8352: 85 0D     STA ram_000D
C - - - - - 0x018364 06:8354: A5 14     LDA ram_0014
C - - - - - 0x018366 06:8356: 69 00     ADC #> $0008
C - - - - - 0x018368 06:8358: 85 0E     STA ram_000E
C - - - - - 0x01836A 06:835A: A0 00     LDY #$00
bra_835C_loop:
C - - - - - 0x01836C 06:835C: B1 13     LDA (ram_0013),Y
C - - - - - 0x01836E 06:835E: 31 0D     AND (ram_000D),Y
C - - - - - 0x018370 06:8360: 85 18     STA ram_0018
C - - - - - 0x018372 06:8362: 49 FF     EOR #$FF
C - - - - - 0x018374 06:8364: 85 19     STA ram_0019
C - - - - - 0x018376 06:8366: B1 0D     LDA (ram_000D),Y
C - - - - - 0x018378 06:8368: 25 19     AND ram_0019
C - - - - - 0x01837A 06:836A: 85 17     STA ram_0017
C - - - - - 0x01837C 06:836C: B1 13     LDA (ram_0013),Y
C - - - - - 0x01837E 06:836E: 25 19     AND ram_0019
C - - - - - 0x018380 06:8370: 05 17     ORA ram_0017
C - - - - - 0x018382 06:8372: 99 20 07  STA ram_ppu_buffer + $20,Y
C - - - - - 0x018385 06:8375: B1 0D     LDA (ram_000D),Y
C - - - - - 0x018387 06:8377: 25 19     AND ram_0019
C - - - - - 0x018389 06:8379: 05 18     ORA ram_0018
C - - - - - 0x01838B 06:837B: 99 28 07  STA ram_ppu_buffer + $28,Y
C - - - - - 0x01838E 06:837E: C8        INY
C - - - - - 0x01838F 06:837F: C0 08     CPY #$08
C - - - - - 0x018391 06:8381: D0 D9     BNE bra_835C_loop
C - - - - - 0x018393 06:8383: A0 00     LDY #$00
bra_8385_loop:
C - - - - - 0x018395 06:8385: B9 20 07  LDA ram_ppu_buffer + $20,Y
C - - - - - 0x018398 06:8388: 8D 07 20  STA $2007
C - - - - - 0x01839B 06:838B: C8        INY
C - - - - - 0x01839C 06:838C: C0 10     CPY #$10
C - - - - - 0x01839E 06:838E: D0 F5     BNE bra_8385_loop
C - - - - - 0x0183A0 06:8390: 20 F8 83  JSR sub_83F8_shift_pointer_0013_by_Y
C - - - - - 0x0183A3 06:8393: C6 15     DEC ram_0015
C - - - - - 0x0183A5 06:8395: D0 B6     BNE bra_834D_loop
C - - - - - 0x0183A7 06:8397: 4C 58 82  JMP loc_8258_reading_data_loop



ofs_011_839A_04:
; write 8 specific bytes, then write 8 00 bytes, then repeat
bra_839A_loop:
C - - J - - 0x0183AA 06:839A: 20 CA 83  JSR sub_83CA_write_8_specific_bytes_to_ppu
C - - - - - 0x0183AD 06:839D: 20 D7 83  JSR sub_83D7_write_8_00_bytes_to_ppu
C - - - - - 0x0183B0 06:83A0: 20 F8 83  JSR sub_83F8_shift_pointer_0013_by_Y
C - - - - - 0x0183B3 06:83A3: C6 15     DEC ram_0015
C - - - - - 0x0183B5 06:83A5: D0 F3     BNE bra_839A_loop
C - - - - - 0x0183B7 06:83A7: 4C 58 82  JMP loc_8258_reading_data_loop



ofs_011_83AA_08:
; write 8 00 bytes, then write 8 specific bytes, then repeat
bra_83AA_loop:
C - - J - - 0x0183BA 06:83AA: 20 D7 83  JSR sub_83D7_write_8_00_bytes_to_ppu
C - - - - - 0x0183BD 06:83AD: 20 CA 83  JSR sub_83CA_write_8_specific_bytes_to_ppu
C - - - - - 0x0183C0 06:83B0: 20 F8 83  JSR sub_83F8_shift_pointer_0013_by_Y
C - - - - - 0x0183C3 06:83B3: C6 15     DEC ram_0015
C - - - - - 0x0183C5 06:83B5: D0 F3     BNE bra_83AA_loop
C - - - - - 0x0183C7 06:83B7: 4C 58 82  JMP loc_8258_reading_data_loop



ofs_011_83BA_0A:
; write the same 8 bytes 2 times, then repeat
bra_83BA_loop:
C - - J - - 0x0183CA 06:83BA: 20 CA 83  JSR sub_83CA_write_8_specific_bytes_to_ppu
C - - - - - 0x0183CD 06:83BD: 20 CA 83  JSR sub_83CA_write_8_specific_bytes_to_ppu
C - - - - - 0x0183D0 06:83C0: 20 F8 83  JSR sub_83F8_shift_pointer_0013_by_Y
C - - - - - 0x0183D3 06:83C3: C6 15     DEC ram_0015
C - - - - - 0x0183D5 06:83C5: D0 F3     BNE bra_83BA_loop
C - - - - - 0x0183D7 06:83C7: 4C 58 82  JMP loc_8258_reading_data_loop



sub_83CA_write_8_specific_bytes_to_ppu:
C - - - - - 0x0183DA 06:83CA: A0 00     LDY #$00
bra_83CC_loop:
C - - - - - 0x0183DC 06:83CC: B1 13     LDA (ram_0013),Y
C - - - - - 0x0183DE 06:83CE: 8D 07 20  STA $2007
C - - - - - 0x0183E1 06:83D1: C8        INY
C - - - - - 0x0183E2 06:83D2: C0 08     CPY #$08
C - - - - - 0x0183E4 06:83D4: D0 F6     BNE bra_83CC_loop
C - - - - - 0x0183E6 06:83D6: 60        RTS



sub_83D7_write_8_00_bytes_to_ppu:
C - - - - - 0x0183E7 06:83D7: A2 07     LDX #$07
C - - - - - 0x0183E9 06:83D9: A9 00     LDA #$00
bra_83DB_loop:
C - - - - - 0x0183EB 06:83DB: 8D 07 20  STA $2007
C - - - - - 0x0183EE 06:83DE: CA        DEX
C - - - - - 0x0183EF 06:83DF: 10 FA     BPL bra_83DB_loop
C - - - - - 0x0183F1 06:83E1: 60        RTS



ofs_011_83E2_00:
bra_83E2_loop:
C - - J - - 0x0183F2 06:83E2: A0 00     LDY #$00
bra_83E4_loop:
C - - - - - 0x0183F4 06:83E4: B1 13     LDA (ram_0013),Y
C - - - - - 0x0183F6 06:83E6: 8D 07 20  STA $2007
C - - - - - 0x0183F9 06:83E9: C8        INY
C - - - - - 0x0183FA 06:83EA: C0 10     CPY #$10
C - - - - - 0x0183FC 06:83EC: D0 F6     BNE bra_83E4_loop
C - - - - - 0x0183FE 06:83EE: 20 F8 83  JSR sub_83F8_shift_pointer_0013_by_Y
C - - - - - 0x018401 06:83F1: C6 15     DEC ram_0015
C - - - - - 0x018403 06:83F3: D0 ED     BNE bra_83E2_loop
C - - - - - 0x018405 06:83F5: 4C 58 82  JMP loc_8258_reading_data_loop



sub_83F8_shift_pointer_0013_by_Y:
C - - - - - 0x018408 06:83F8: 98        TYA
C - - - - - 0x018409 06:83F9: 18        CLC
C - - - - - 0x01840A 06:83FA: 65 13     ADC ram_0013
C - - - - - 0x01840C 06:83FC: 85 13     STA ram_0013
C - - - - - 0x01840E 06:83FE: A5 14     LDA ram_0014
C - - - - - 0x018410 06:8400: 69 00     ADC #$00
C - - - - - 0x018412 06:8402: 85 14     STA ram_0014
C - - - - - 0x018414 06:8404: 60        RTS



ofs_011_8405_02:
C - - J - - 0x018415 06:8405: A0 00     LDY #$00
C - - - - - 0x018417 06:8407: B1 13     LDA (ram_0013),Y
C - - - - - 0x018419 06:8409: 85 16     STA ram_0016    ; control byte for 00
C - - - - - 0x01841B 06:840B: C8        INY
C - - - - - 0x01841C 06:840C: B1 13     LDA (ram_0013),Y
C - - - - - 0x01841E 06:840E: 85 17     STA ram_0017    ; control byte for FF
C - - - - - 0x018420 06:8410: C8        INY
bra_8411_loop:
C - - - - - 0x018421 06:8411: A2 0F     LDX #$0F
bra_8413_loop:
C - - - - - 0x018423 06:8413: B1 13     LDA (ram_0013),Y
C - - - - - 0x018425 06:8415: C8        INY
C - - - - - 0x018426 06:8416: D0 02     BNE bra_841A_not_overflow
C - - - - - 0x018428 06:8418: E6 14     INC ram_0014
bra_841A_not_overflow:
C - - - - - 0x01842A 06:841A: C5 16     CMP ram_0016    ; control byte for 00
C - - - - - 0x01842C 06:841C: F0 11     BEQ bra_842F
C - - - - - 0x01842E 06:841E: C5 17     CMP ram_0017    ; control byte for FF
C - - - - - 0x018430 06:8420: F0 11     BEQ bra_8433
; write actual byte
C - - - - - 0x018432 06:8422: 8D 07 20  STA $2007
C - - - - - 0x018435 06:8425: CA        DEX
C - - - - - 0x018436 06:8426: 10 EB     BPL bra_8413_loop
C - - - - - 0x018438 06:8428: C6 15     DEC ram_0015    ; main loop counter
C - - - - - 0x01843A 06:842A: D0 E5     BNE bra_8411_loop
C - - - - - 0x01843C 06:842C: 4C 58 82  JMP loc_8258_reading_data_loop
bra_842F:
C - - - - - 0x01843F 06:842F: A9 00     LDA #$00
C - - - - - 0x018441 06:8431: F0 02     BEQ bra_8435    ; jmp
bra_8433:
C - - - - - 0x018443 06:8433: A9 FF     LDA #$FF
bra_8435:
C - - - - - 0x018445 06:8435: 48        PHA
C - - - - - 0x018446 06:8436: B1 13     LDA (ram_0013),Y
C - - - - - 0x018448 06:8438: 85 18     STA ram_0018    ; counter for 00/FF bytes
C - - - - - 0x01844A 06:843A: 68        PLA
C - - - - - 0x01844B 06:843B: C8        INY
C - - - - - 0x01844C 06:843C: D0 02     BNE bra_8440
C - - - - - 0x01844E 06:843E: E6 14     INC ram_0014
bra_8440:
bra_8440_loop:
C - - - - - 0x018450 06:8440: 8D 07 20  STA $2007
C - - - - - 0x018453 06:8443: CA        DEX
C - - - - - 0x018454 06:8444: 30 06     BMI bra_844C
bra_8446_loop:
C - - - - - 0x018456 06:8446: C6 18     DEC ram_0018
C - - - - - 0x018458 06:8448: D0 F6     BNE bra_8440_loop
C - - - - - 0x01845A 06:844A: F0 C7     BEQ bra_8413_loop    ; jmp
bra_844C:
C - - - - - 0x01845C 06:844C: A2 0F     LDX #$0F
C - - - - - 0x01845E 06:844E: C6 15     DEC ram_0015    ; main loop counter
C - - - - - 0x018460 06:8450: D0 F4     BNE bra_8446_loop
C - - - - - 0x018462 06:8452: 4C 58 82  JMP loc_8258_reading_data_loop



tbl_8455:
- D 0 - - - 0x018465 06:8455: BA 84     .word _off015_84BA_00
- D 0 - - - 0x018467 06:8457: C1 84     .word _off015_84C1_01
- D 0 - - - 0x018469 06:8459: CF 84     .word _off015_84CF_02
- D 0 - - - 0x01846B 06:845B: C8 84     .word _off015_84C8_03
- D 0 - - - 0x01846D 06:845D: 81 84     .word _off015_8481_04
- D 0 - - - 0x01846F 06:845F: 8E 84     .word _off015_848E_05
- D 0 - - - 0x018471 06:8461: 33 85     .word _off015_8533_06
- D 0 - - - 0x018473 06:8463: 33 85     .word _off015_8533_07
- D 0 - - - 0x018475 06:8465: DD 84     .word _off015_84DD_08
- D 0 - - - 0x018477 06:8467: 88 85     .word _off015_8588_09
- D 0 - - - 0x018479 06:8469: A1 85     .word _off015_85A1_0A
- D 0 - - - 0x01847B 06:846B: F1 85     .word _off015_85F1_0B
- D 0 - - - 0x01847D 06:846D: 0A 86     .word _off015_860A_0C
- D 0 - - - 0x01847F 06:846F: 2F 86     .word _off015_862F_0D
- D 0 - - - 0x018481 06:8471: B3 84     .word _off015_84B3_0E
- D 0 - - - 0x018483 06:8473: D6 84     .word _off015_84D6_0F
- D 0 - - - 0x018485 06:8475: 96 86     .word _off015_8696_10
- D 0 - - - 0x018487 06:8477: C7 86     .word _off015_86C7_11
- D 0 - - - 0x018489 06:8479: DA 86     .word _off015_86DA_12
- - - - - - 0x01848B 06:847B: F4 86     .word _off015_86F4_13
- D 0 - - - 0x01848D 06:847D: 2C 85     .word _off015_852C_14
- D 0 - - - 0x01848F 06:847F: C6 85     .word _off015_85C6_15



_off015_8481_04:
- D 0 - I - 0x018491 06:8481: FB        .byte $FB   ; counter
- D 0 - I - 0x018492 06:8482: 02        .byte $02   ; routine index
- D 0 - I - 0x018493 06:8483: 06 87     .word off_04_8706
- D 0 - I - 0x018495 06:8485: 00 10     .word $1000 ; ppu

- D 0 - I - 0x018497 06:8487: 20        .byte $20   ; counter
- D 0 - I - 0x018498 06:8488: 02        .byte $02   ; routine index
- D 0 - I - 0x018499 06:8489: C9 93     .word off_04_93C9
- D 0 - I - 0x01849B 06:848B: 00 00     .word $0000 ; ppu

- D 0 - I - 0x01849D 06:848D: 00        .byte $00   ; end token



_off015_848E_05:
- D 0 - I - 0x01849E 06:848E: 01        .byte $01   ; counter
- D 0 - I - 0x01849F 06:848F: 04        .byte $04   ; routine index
- D 0 - I - 0x0184A0 06:8490: EA 96     .word off_05_96EA
- D 0 - I - 0x0184A2 06:8492: 00 10     .word $1000 ; ppu

- D 0 - I - 0x0184A4 06:8494: 01        .byte $01   ; counter
- D 0 - I - 0x0184A5 06:8495: 04        .byte $04   ; routine index
- D 0 - I - 0x0184A6 06:8496: EA 96     .word off_05_96EA
- D 0 - I - 0x0184A8 06:8498: 00 12     .word $1200 ; ppu

- D 0 - I - 0x0184AA 06:849A: 1C        .byte $1C   ; counter
- D 0 - I - 0x0184AB 06:849B: 04        .byte $04   ; routine index
- D 0 - I - 0x0184AC 06:849C: 12 96     .word off_05_9612
- D 0 - I - 0x0184AE 06:849E: 00 14     .word $1400 ; ppu

- D 0 - I - 0x0184B0 06:84A0: 04        .byte $04   ; counter
- D 0 - I - 0x0184B1 06:84A1: 04        .byte $04   ; routine index
- D 0 - I - 0x0184B2 06:84A2: F2 96     .word off_05_96F2
- D 0 - I - 0x0184B4 06:84A4: C0 12     .word $12C0 ; ppu

- D 0 - I - 0x0184B6 06:84A6: 0F        .byte $0F   ; counter
- D 0 - I - 0x0184B7 06:84A7: 04        .byte $04   ; routine index
- D 0 - I - 0x0184B8 06:84A8: 12 97     .word off_05_9712
- D 0 - I - 0x0184BA 06:84AA: 00 13     .word $1300 ; ppu

- D 0 - I - 0x0184BC 06:84AC: 18        .byte $18   ; counter
- D 0 - I - 0x0184BD 06:84AD: 02        .byte $02   ; routine index
- D 0 - I - 0x0184BE 06:84AE: AA 97     .word off_05_97AA
- D 0 - I - 0x0184C0 06:84B0: 00 18     .word $1800 ; ppu

- D 0 - I - 0x0184C2 06:84B2: 00        .byte $00   ; end token



_off015_84B3_0E:
- D 0 - I - 0x0184C3 06:84B3: 4C        .byte $4C   ; counter
- D 0 - I - 0x0184C4 06:84B4: 02        .byte $02   ; routine index
- D 0 - I - 0x0184C5 06:84B5: 66 AF     .word off_0E_AF66
- D 0 - I - 0x0184C7 06:84B7: 00 10     .word $1000 ; ppu

- D 0 - I - 0x0184C9 06:84B9: 00        .byte $00   ; end token



_off015_84BA_00:
- D 0 - I - 0x0184CA 06:84BA: B3        .byte $B3   ; counter
- D 0 - I - 0x0184CB 06:84BB: 02        .byte $02   ; routine index
- D 0 - I - 0x0184CC 06:84BC: 3D B3     .word off_00_B33D
- D 0 - I - 0x0184CE 06:84BE: C0 14     .word $14C0 ; ppu

- D 0 - I - 0x0184D0 06:84C0: 00        .byte $00   ; end token



_off015_84C1_01:
- D 0 - I - 0x0184D1 06:84C1: 73        .byte $73   ; counter
- D 0 - I - 0x0184D2 06:84C2: 02        .byte $02   ; routine index
- D 0 - I - 0x0184D3 06:84C3: B8 BC     .word off_01_BCB8
- D 0 - I - 0x0184D5 06:84C5: C0 14     .word $14C0 ; ppu

- D 0 - I - 0x0184D7 06:84C7: 00        .byte $00   ; end token



_off015_84C8_03:
- D 0 - I - 0x0184D8 06:84C8: 75        .byte $75   ; counter
- D 0 - I - 0x0184D9 06:84C9: 02        .byte $02   ; routine index
- D 0 - I - 0x0184DA 06:84CA: CC C2     .word off_03_C2CC
- D 0 - I - 0x0184DC 06:84CC: C0 14     .word $14C0 ; ppu

- D 0 - I - 0x0184DE 06:84CE: 00        .byte $00   ; end token



_off015_84CF_02:
- D 0 - I - 0x0184DF 06:84CF: B2        .byte $B2   ; counter
- D 0 - I - 0x0184E0 06:84D0: 02        .byte $02   ; routine index
- D 0 - I - 0x0184E1 06:84D1: 44 C9     .word off_02_C944
- D 0 - I - 0x0184E3 06:84D3: C0 14     .word $14C0 ; ppu

- D 0 - I - 0x0184E5 06:84D5: 00        .byte $00   ; end token



_off015_84D6_0F:
- D 0 - I - 0x0184E6 06:84D6: 87        .byte $87   ; counter
- D 0 - I - 0x0184E7 06:84D7: 02        .byte $02   ; routine index
- D 0 - I - 0x0184E8 06:84D8: 36 D2     .word off_0F_D236
- D 0 - I - 0x0184EA 06:84DA: C0 14     .word $14C0 ; ppu

- D 0 - I - 0x0184EC 06:84DC: 00        .byte $00   ; end token



_off015_84DD_08:
- D 0 - I - 0x0184ED 06:84DD: 02        .byte $02   ; counter
- D 0 - I - 0x0184EE 06:84DE: 02        .byte $02   ; routine index
- D 0 - I - 0x0184EF 06:84DF: 83 EA     .word off_08_EA83
- D 0 - I - 0x0184F1 06:84E1: 00 00     .word $0000 ; ppu

- D 0 - I - 0x0184F3 06:84E3: 0B        .byte $0B   ; counter
- D 0 - I - 0x0184F4 06:84E4: 02        .byte $02   ; routine index
- D 0 - I - 0x0184F5 06:84E5: 19 99     .word off_08_9919
- D 0 - I - 0x0184F7 06:84E7: 20 00     .word $0020 ; ppu

- D 0 - I - 0x0184F9 06:84E9: 07        .byte $07   ; counter
- D 0 - I - 0x0184FA 06:84EA: 06        .byte $06   ; routine index
- D 0 - I - 0x0184FB 06:84EB: 6B 9B     .word off_08_9B6B
- D 0 - I - 0x0184FD 06:84ED: 10 01     .word $0110 ; ppu

- D 0 - I - 0x0184FF 06:84EF: 21        .byte $21   ; counter
- D 0 - I - 0x018500 06:84F0: 02        .byte $02   ; routine index
- D 0 - I - 0x018501 06:84F1: B5 99     .word off_08_99B5
- D 0 - I - 0x018503 06:84F3: 80 01     .word $0180 ; ppu

- D 0 - I - 0x018505 06:84F5: 07        .byte $07   ; counter
- D 0 - I - 0x018506 06:84F6: 00        .byte $00   ; routine index
- D 0 - I - 0x018507 06:84F7: 6B 9B     .word off_08_9B6B
- D 0 - I - 0x018509 06:84F9: 90 03     .word $0390 ; ppu

- D 0 - I - 0x01850B 06:84FB: 0A        .byte $0A   ; counter
- D 0 - I - 0x01850C 06:84FC: 00        .byte $00   ; routine index
- D 0 - I - 0x01850D 06:84FD: DB 9B     .word off_08_9BDB
- D 0 - I - 0x01850F 06:84FF: 00 04     .word $0400 ; ppu

- D 0 - I - 0x018511 06:8501: 0A        .byte $0A   ; counter
- D 0 - I - 0x018512 06:8502: 06        .byte $06   ; routine index
- D 0 - I - 0x018513 06:8503: DB 9B     .word off_08_9BDB
- D 0 - I - 0x018515 06:8505: A0 04     .word $04A0 ; ppu

- D 0 - I - 0x018517 06:8507: 1E        .byte $1E   ; counter
- D 0 - I - 0x018518 06:8508: 02        .byte $02   ; routine index
- D 0 - I - 0x018519 06:8509: 7B 9C     .word off_08_9C7B
- D 0 - I - 0x01851B 06:850B: 40 05     .word $0540 ; ppu

- D 0 - I - 0x01851D 06:850D: 0E        .byte $0E   ; counter
- D 0 - I - 0x01851E 06:850E: 08        .byte $08   ; routine index
- D 0 - I - 0x01851F 06:850F: 0A 9E     .word off_08_9E0A
- D 0 - I - 0x018521 06:8511: 20 07     .word $0720 ; ppu

- D 0 - I - 0x018523 06:8513: 0D        .byte $0D   ; counter
- D 0 - I - 0x018524 06:8514: 0A        .byte $0A   ; routine index
- D 0 - I - 0x018525 06:8515: 12 9E     .word off_08_9E12
- D 0 - I - 0x018527 06:8517: 00 08     .word $0800 ; ppu

- D 0 - I - 0x018529 06:8519: 53        .byte $53   ; counter
- D 0 - I - 0x01852A 06:851A: 02        .byte $02   ; routine index
- D 0 - I - 0x01852B 06:851B: A2 9E     .word off_08_9EA2
- D 0 - I - 0x01852D 06:851D: D0 09     .word $09D0 ; ppu

- D 0 - I - 0x01852F 06:851F: 05        .byte $05   ; counter
- D 0 - I - 0x018530 06:8520: 08        .byte $08   ; routine index
- D 0 - I - 0x018531 06:8521: 7A 9E     .word off_08_9E7A
- D 0 - I - 0x018533 06:8523: A0 0F     .word $0FA0 ; ppu

- D 0 - I - 0x018535 06:8525: 01        .byte $01   ; counter
- D 0 - I - 0x018536 06:8526: 04        .byte $04   ; routine index
- D 0 - I - 0x018537 06:8527: EA 96     .word off_08_96EA
- D 0 - I - 0x018539 06:8529: F0 0F     .word $0FF0 ; ppu

- D 0 - I - 0x01853B 06:852B: 00        .byte $00   ; end token



_off015_852C_14:
- D 0 - I - 0x01853C 06:852C: 0C        .byte $0C   ; counter
- D 0 - I - 0x01853D 06:852D: 00        .byte $00   ; routine index
- D 0 - I - 0x01853E 06:852E: 4C A3     .word off_14_A34C
- D 0 - I - 0x018540 06:8530: D0 08     .word $08D0 ; ppu

- D 0 - I - 0x018542 06:8532: 00        .byte $00   ; end token



_off015_8533_06:
_off015_8533_07:
- D 0 - I - 0x018543 06:8533: B0        .byte $B0   ; counter
- D 0 - I - 0x018544 06:8534: 02        .byte $02   ; routine index
- D 0 - I - 0x018545 06:8535: 84 D9     .word off_06_07_D984
- D 0 - I - 0x018547 06:8537: 00 10     .word $1000 ; ppu

- D 0 - I - 0x018549 06:8539: 0B        .byte $0B   ; counter
- D 0 - I - 0x01854A 06:853A: 02        .byte $02   ; routine index
- D 0 - I - 0x01854B 06:853B: 65 E2     .word off_06_07_E265
- D 0 - I - 0x01854D 06:853D: 00 1B     .word $1B00 ; ppu

- D 0 - I - 0x01854F 06:853F: 06        .byte $06   ; counter
- D 0 - I - 0x018550 06:8540: 02        .byte $02   ; routine index
- D 0 - I - 0x018551 06:8541: 13 E3     .word off_06_07_E313
- D 0 - I - 0x018553 06:8543: B0 1B     .word $1BB0 ; ppu

- D 0 - I - 0x018555 06:8545: 1A        .byte $1A   ; counter
- D 0 - I - 0x018556 06:8546: 00        .byte $00   ; routine index
- D 0 - I - 0x018557 06:8547: 61 E3     .word off_06_07_E361
- D 0 - I - 0x018559 06:8549: 10 1C     .word $1C10 ; ppu

- D 0 - I - 0x01855B 06:854B: 16        .byte $16   ; counter
- D 0 - I - 0x01855C 06:854C: 02        .byte $02   ; routine index
- D 0 - I - 0x01855D 06:854D: 31 E5     .word off_06_07_E531
- D 0 - I - 0x01855F 06:854F: B0 1D     .word $1DB0 ; ppu

- D 0 - I - 0x018561 06:8551: 0F        .byte $0F   ; counter
- D 0 - I - 0x018562 06:8552: 02        .byte $02   ; routine index
- D 0 - I - 0x018563 06:8553: 45 E6     .word off_06_07_E645
- D 0 - I - 0x018565 06:8555: 10 1F     .word $1F10 ; ppu

- D 0 - I - 0x018567 06:8557: 02        .byte $02   ; counter
- D 0 - I - 0x018568 06:8558: 02        .byte $02   ; routine index
- D 0 - I - 0x018569 06:8559: 83 EA     .word off_06_07_EA83
- D 0 - I - 0x01856B 06:855B: 00 00     .word $0000 ; ppu

- D 0 - I - 0x01856D 06:855D: 01        .byte $01   ; counter
- D 0 - I - 0x01856E 06:855E: 02        .byte $02   ; routine index
- D 0 - I - 0x01856F 06:855F: 61 E7     .word off_06_07_E761
- D 0 - I - 0x018571 06:8561: 00 02     .word $0200 ; ppu

- D 0 - I - 0x018573 06:8563: 0B        .byte $0B   ; counter
- D 0 - I - 0x018574 06:8564: 02        .byte $02   ; routine index
- D 0 - I - 0x018575 06:8565: 65 E2     .word off_06_07_E265
- D 0 - I - 0x018577 06:8567: 00 03     .word $0300 ; ppu

- D 0 - I - 0x018579 06:8569: 05        .byte $05   ; counter
- D 0 - I - 0x01857A 06:856A: 00        .byte $00   ; routine index
- D 0 - I - 0x01857B 06:856B: 11 E7     .word off_06_07_E711
- D 0 - I - 0x01857D 06:856D: B0 03     .word $03B0 ; ppu

- D 0 - I - 0x01857F 06:856F: 1D        .byte $1D   ; counter
- D 0 - I - 0x018580 06:8570: 00        .byte $00   ; routine index
- D 0 - I - 0x018581 06:8571: 61 E3     .word off_06_07_E361
- D 0 - I - 0x018583 06:8573: 10 04     .word $0410 ; ppu

- D 0 - I - 0x018585 06:8575: 46        .byte $46   ; counter
- D 0 - I - 0x018586 06:8576: 02        .byte $02   ; routine index
- D 0 - I - 0x018587 06:8577: 67 E7     .word off_06_07_E767
- D 0 - I - 0x018589 06:8579: 00 06     .word $0600 ; ppu

- D 0 - I - 0x01858B 06:857B: 35        .byte $35   ; counter
- D 0 - I - 0x01858C 06:857C: 02        .byte $02   ; routine index
- D 0 - I - 0x01858D 06:857D: 0F ED     .word off_06_07_ED0F
- D 0 - I - 0x01858F 06:857F: 00 0B     .word $0B00 ; ppu

- D 0 - I - 0x018591 06:8581: 0F        .byte $0F   ; counter
- D 0 - I - 0x018592 06:8582: 00        .byte $00   ; routine index
- D 0 - I - 0x018593 06:8583: A8 EF     .word off_06_07_EFA8
- D 0 - I - 0x018595 06:8585: 50 0E     .word $0E50 ; ppu

- D 0 - I - 0x018597 06:8587: 00        .byte $00   ; end token



_off015_8588_09:
- D 0 - I - 0x018598 06:8588: 6B        .byte $6B   ; counter
- D 0 - I - 0x018599 06:8589: 02        .byte $02   ; routine index
- D 0 - I - 0x01859A 06:858A: 60 AA     .word off_09_AA60
- D 0 - I - 0x01859C 06:858C: 00 00     .word $0000 ; ppu

- D 0 - I - 0x01859E 06:858E: 34        .byte $34   ; counter
- D 0 - I - 0x01859F 06:858F: 02        .byte $02   ; routine index
- D 0 - I - 0x0185A0 06:8590: 0F ED     .word off_09_ED0F
- D 0 - I - 0x0185A2 06:8592: 00 0B     .word $0B00 ; ppu

- D 0 - I - 0x0185A4 06:8594: 03        .byte $03   ; counter
- D 0 - I - 0x0185A5 06:8595: 02        .byte $02   ; routine index
- D 0 - I - 0x0185A6 06:8596: 98 F0     .word off_09_F098
- D 0 - I - 0x0185A8 06:8598: 00 10     .word $1000 ; ppu

- D 0 - I - 0x0185AA 06:859A: 79        .byte $79   ; counter
- D 0 - I - 0x0185AB 06:859B: 02        .byte $02   ; routine index
- D 0 - I - 0x0185AC 06:859C: 0C A4     .word off_09_A40C
- D 0 - I - 0x0185AE 06:859E: 60 14     .word $1460 ; ppu

- D 0 - I - 0x0185B0 06:85A0: 00        .byte $00   ; end token



_off015_85A1_0A:
- D 0 - I - 0x0185B1 06:85A1: 02        .byte $02   ; counter
- D 0 - I - 0x0185B2 06:85A2: 02        .byte $02   ; routine index
- D 0 - I - 0x0185B3 06:85A3: 98 F0     .word off_0A_F098
- D 0 - I - 0x0185B5 06:85A5: 00 10     .word $1000 ; ppu

- D 0 - I - 0x0185B7 06:85A7: 26        .byte $26   ; counter
- D 0 - I - 0x0185B8 06:85A8: 02        .byte $02   ; routine index
- D 0 - I - 0x0185B9 06:85A9: 8E EA     .word off_0A_EA8E
- D 0 - I - 0x0185BB 06:85AB: 20 17     .word $1720 ; ppu

- D 0 - I - 0x0185BD 06:85AD: 0B        .byte $0B   ; counter
- D 0 - I - 0x0185BE 06:85AE: 02        .byte $02   ; routine index
- D 0 - I - 0x0185BF 06:85AF: 63 EC     .word off_0A_EC63
- D 0 - I - 0x0185C1 06:85B1: 10 1C     .word $1C10 ; ppu

- D 0 - I - 0x0185C3 06:85B3: 34        .byte $34   ; counter
- D 0 - I - 0x0185C4 06:85B4: 02        .byte $02   ; routine index
- D 0 - I - 0x0185C5 06:85B5: 0F ED     .word off_0A_ED0F
- D 0 - I - 0x0185C7 06:85B7: C0 1C     .word $1CC0 ; ppu

- D 0 - I - 0x0185C9 06:85B9: 02        .byte $02   ; counter
- D 0 - I - 0x0185CA 06:85BA: 02        .byte $02   ; routine index
- D 0 - I - 0x0185CB 06:85BB: 98 F0     .word off_0A_F098
- D 0 - I - 0x0185CD 06:85BD: 00 00     .word $0000 ; ppu

- D 0 - I - 0x0185CF 06:85BF: 77        .byte $77   ; counter
- D 0 - I - 0x0185D0 06:85C0: 02        .byte $02   ; routine index
- D 0 - I - 0x0185D1 06:85C1: A4 F0     .word off_0A_F0A4
- D 0 - I - 0x0185D3 06:85C3: 20 08     .word $0820 ; ppu

- D 0 - I - 0x0185D5 06:85C5: 00        .byte $00   ; end token



_off015_85C6_15:
- D 0 - I - 0x0185D6 06:85C6: 02        .byte $02   ; counter
- D 0 - I - 0x0185D7 06:85C7: 00        .byte $00   ; routine index
- D 0 - I - 0x0185D8 06:85C8: 62 F7     .word off_15_F762
- D 0 - I - 0x0185DA 06:85CA: 20 0A     .word $0A20 ; ppu

- D 0 - I - 0x0185DC 06:85CC: 02        .byte $02   ; counter
- D 0 - I - 0x0185DD 06:85CD: 00        .byte $00   ; routine index
- D 0 - I - 0x0185DE 06:85CE: 82 F7     .word off_15_F782
- D 0 - I - 0x0185E0 06:85D0: C0 0B     .word $0BC0 ; ppu

- D 0 - I - 0x0185E2 06:85D2: 02        .byte $02   ; counter
- D 0 - I - 0x0185E3 06:85D3: 00        .byte $00   ; routine index
- D 0 - I - 0x0185E4 06:85D4: A2 F7     .word off_15_F7A2
- D 0 - I - 0x0185E6 06:85D6: 00 0C     .word $0C00 ; ppu

- D 0 - I - 0x0185E8 06:85D8: 02        .byte $02   ; counter
- D 0 - I - 0x0185E9 06:85D9: 00        .byte $00   ; routine index
- D 0 - I - 0x0185EA 06:85DA: C2 F7     .word off_15_F7C2
- D 0 - I - 0x0185EC 06:85DC: D0 0C     .word $0CD0 ; ppu

- D 0 - I - 0x0185EE 06:85DE: 02        .byte $02   ; counter
- D 0 - I - 0x0185EF 06:85DF: 00        .byte $00   ; routine index
- D 0 - I - 0x0185F0 06:85E0: E2 F7     .word off_15_F7E2
- D 0 - I - 0x0185F2 06:85E2: F0 0C     .word $0CF0 ; ppu

- D 0 - I - 0x0185F4 06:85E4: 02        .byte $02   ; counter
- D 0 - I - 0x0185F5 06:85E5: 00        .byte $00   ; routine index
- D 0 - I - 0x0185F6 06:85E6: 02 F8     .word off_15_F802
- D 0 - I - 0x0185F8 06:85E8: D0 0A     .word $0AD0 ; ppu

- D 0 - I - 0x0185FA 06:85EA: 01        .byte $01   ; counter
- D 0 - I - 0x0185FB 06:85EB: 00        .byte $00   ; routine index
- D 0 - I - 0x0185FC 06:85EC: 22 F8     .word off_15_F822
- D 0 - I - 0x0185FE 06:85EE: 30 0B     .word $0B30 ; ppu

- D 0 - I - 0x018600 06:85F0: 00        .byte $00   ; end token



_off015_85F1_0B:
- D 0 - I - 0x018601 06:85F1: 01        .byte $01   ; counter
- D 0 - I - 0x018602 06:85F2: 04        .byte $04   ; routine index
- D 0 - I - 0x018603 06:85F3: EA 96     .word off_0B_96EA
- D 0 - I - 0x018605 06:85F5: 00 02     .word $0200 ; ppu

- D 0 - I - 0x018607 06:85F7: 1C        .byte $1C   ; counter
- D 0 - I - 0x018608 06:85F8: 04        .byte $04   ; routine index
- D 0 - I - 0x018609 06:85F9: 12 96     .word off_0B_9612
- D 0 - I - 0x01860B 06:85FB: 00 04     .word $0400 ; ppu

- D 0 - I - 0x01860D 06:85FD: 01        .byte $01   ; counter
- D 0 - I - 0x01860E 06:85FE: 08        .byte $08   ; routine index
- D 0 - I - 0x01860F 06:85FF: EA 96     .word off_0B_96EA
- D 0 - I - 0x018611 06:8601: 00 0A     .word $0A00 ; ppu

- D 0 - I - 0x018613 06:8603: 1C        .byte $1C   ; counter
- D 0 - I - 0x018614 06:8604: 08        .byte $08   ; routine index
- D 0 - I - 0x018615 06:8605: 12 96     .word off_0B_9612
- D 0 - I - 0x018617 06:8607: 00 0C     .word $0C00 ; ppu

- D 0 - I - 0x018619 06:8609: 00        .byte $00   ; end token



_off015_860A_0C:
- D 0 - I - 0x01861A 06:860A: 01        .byte $01   ; counter
- D 0 - I - 0x01861B 06:860B: 04        .byte $04   ; routine index
- D 0 - I - 0x01861C 06:860C: EA 96     .word off_0C_96EA
- D 0 - I - 0x01861E 06:860E: 00 00     .word $0000 ; ppu

- D 0 - I - 0x018620 06:8610: 01        .byte $01   ; counter
- D 0 - I - 0x018621 06:8611: 04        .byte $04   ; routine index
- D 0 - I - 0x018622 06:8612: EA 96     .word off_0C_96EA
- D 0 - I - 0x018624 06:8614: 00 02     .word $0200 ; ppu

- D 0 - I - 0x018626 06:8616: 03        .byte $03   ; counter
- D 0 - I - 0x018627 06:8617: 04        .byte $04   ; routine index
- D 0 - I - 0x018628 06:8618: F2 96     .word off_0C_96F2
- D 0 - I - 0x01862A 06:861A: C0 02     .word $02C0 ; ppu

- D 0 - I - 0x01862C 06:861C: 0A        .byte $0A   ; counter
- D 0 - I - 0x01862D 06:861D: 04        .byte $04   ; routine index
- D 0 - I - 0x01862E 06:861E: 12 97     .word off_0C_9712
- D 0 - I - 0x018630 06:8620: 00 03     .word $0300 ; ppu

- D 0 - I - 0x018632 06:8622: 1C        .byte $1C   ; counter
- D 0 - I - 0x018633 06:8623: 04        .byte $04   ; routine index
- D 0 - I - 0x018634 06:8624: 12 96     .word off_0C_9612
- D 0 - I - 0x018636 06:8626: 00 04     .word $0400 ; ppu

- D 0 - I - 0x018638 06:8628: 05        .byte $05   ; counter
- D 0 - I - 0x018639 06:8629: 00        .byte $00   ; routine index
- D 0 - I - 0x01863A 06:862A: 16 AF     .word off_0C_AF16
- D 0 - I - 0x01863C 06:862C: 40 18     .word $1840 ; ppu

- D 0 - I - 0x01863E 06:862E: 00        .byte $00   ; end token



_off015_862F_0D:
- D 0 - I - 0x01863F 06:862F: 01        .byte $01   ; counter
- D 0 - I - 0x018640 06:8630: 04        .byte $04   ; routine index
- D 0 - I - 0x018641 06:8631: EA 96     .word off_0D_96EA
- D 0 - I - 0x018643 06:8633: 00 10     .word $1000 ; ppu

- D 0 - I - 0x018645 06:8635: 01        .byte $01   ; counter
- D 0 - I - 0x018646 06:8636: 04        .byte $04   ; routine index
- D 0 - I - 0x018647 06:8637: EA 96     .word off_0D_96EA
- D 0 - I - 0x018649 06:8639: 00 12     .word $1200 ; ppu

- D 0 - I - 0x01864B 06:863B: 03        .byte $03   ; counter
- D 0 - I - 0x01864C 06:863C: 04        .byte $04   ; routine index
- D 0 - I - 0x01864D 06:863D: F2 96     .word off_0D_96F2
- D 0 - I - 0x01864F 06:863F: C0 12     .word $12C0 ; ppu

- D 0 - I - 0x018651 06:8641: 0A        .byte $0A   ; counter
- D 0 - I - 0x018652 06:8642: 04        .byte $04   ; routine index
- D 0 - I - 0x018653 06:8643: 12 97     .word off_0D_9712
- D 0 - I - 0x018655 06:8645: 00 13     .word $1300 ; ppu

- D 0 - I - 0x018657 06:8647: 1C        .byte $1C   ; counter
- D 0 - I - 0x018658 06:8648: 04        .byte $04   ; routine index
- D 0 - I - 0x018659 06:8649: 12 96     .word off_0D_9612
- D 0 - I - 0x01865B 06:864B: 00 14     .word $1400 ; ppu

- D 0 - I - 0x01865D 06:864D: 04        .byte $04   ; counter
- D 0 - I - 0x01865E 06:864E: 04        .byte $04   ; routine index
- D 0 - I - 0x01865F 06:864F: 8A 97     .word off_0D_978A
- D 0 - I - 0x018661 06:8651: 10 12     .word $1210 ; ppu

- D 0 - I - 0x018663 06:8653: 01        .byte $01   ; counter
- D 0 - I - 0x018664 06:8654: 08        .byte $08   ; routine index
- D 0 - I - 0x018665 06:8655: EA 96     .word off_0D_96EA
- D 0 - I - 0x018667 06:8657: 00 1A     .word $1A00 ; ppu

- D 0 - I - 0x018669 06:8659: 03        .byte $03   ; counter
- D 0 - I - 0x01866A 06:865A: 08        .byte $08   ; routine index
- D 0 - I - 0x01866B 06:865B: F2 96     .word off_0D_96F2
- D 0 - I - 0x01866D 06:865D: C0 1A     .word $1AC0 ; ppu

- D 0 - I - 0x01866F 06:865F: 0A        .byte $0A   ; counter
- D 0 - I - 0x018670 06:8660: 08        .byte $08   ; routine index
- D 0 - I - 0x018671 06:8661: 12 97     .word off_0D_9712
- D 0 - I - 0x018673 06:8663: 00 1B     .word $1B00 ; ppu

- D 0 - I - 0x018675 06:8665: 1C        .byte $1C   ; counter
- D 0 - I - 0x018676 06:8666: 08        .byte $08   ; routine index
- D 0 - I - 0x018677 06:8667: 12 96     .word off_0D_9612
- D 0 - I - 0x018679 06:8669: 00 1C     .word $1C00 ; ppu

- D 0 - I - 0x01867B 06:866B: 04        .byte $04   ; counter
- D 0 - I - 0x01867C 06:866C: 08        .byte $08   ; routine index
- D 0 - I - 0x01867D 06:866D: 8A 97     .word off_0D_978A
- D 0 - I - 0x01867F 06:866F: 10 1A     .word $1A10 ; ppu

- D 0 - I - 0x018681 06:8671: 01        .byte $01   ; counter
- D 0 - I - 0x018682 06:8672: 0A        .byte $0A   ; routine index
- D 0 - I - 0x018683 06:8673: EA 96     .word off_0D_96EA
- D 0 - I - 0x018685 06:8675: 00 16     .word $1600 ; ppu

- D 0 - I - 0x018687 06:8677: 03        .byte $03   ; counter
- D 0 - I - 0x018688 06:8678: 0A        .byte $0A   ; routine index
- D 0 - I - 0x018689 06:8679: F2 96     .word off_0D_96F2
- D 0 - I - 0x01868B 06:867B: C0 16     .word $16C0 ; ppu

- D 0 - I - 0x01868D 06:867D: 0A        .byte $0A   ; counter
- D 0 - I - 0x01868E 06:867E: 0A        .byte $0A   ; routine index
- D 0 - I - 0x01868F 06:867F: 12 97     .word off_0D_9712
- D 0 - I - 0x018691 06:8681: 00 17     .word $1700 ; ppu

- D 0 - I - 0x018693 06:8683: 1C        .byte $1C   ; counter
- D 0 - I - 0x018694 06:8684: 0A        .byte $0A   ; routine index
- D 0 - I - 0x018695 06:8685: 12 96     .word off_0D_9612
- D 0 - I - 0x018697 06:8687: 00 18     .word $1800 ; ppu

- D 0 - I - 0x018699 06:8689: 04        .byte $04   ; counter
- D 0 - I - 0x01869A 06:868A: 0A        .byte $0A   ; routine index
- D 0 - I - 0x01869B 06:868B: 8A 97     .word off_0D_978A
- D 0 - I - 0x01869D 06:868D: 10 16     .word $1610 ; ppu

; bzk bug, counter should be lower, otherwise it keeps
; reading garbage data, see 0x01FB16 and 0x01FB3C
- D 0 - I - 0x01869F 06:868F: 36        .byte $36   ; counter       
- D 0 - I - 0x0186A0 06:8690: 02        .byte $02   ; routine index
- D 0 - I - 0x0186A1 06:8691: 32 F8     .word off_0D_F832
- D 0 - I - 0x0186A3 06:8693: 00 00     .word $0000 ; ppu

- D 0 - I - 0x0186A5 06:8695: 00        .byte $00   ; end token



_off015_8696_10:
- D 0 - I - 0x0186A6 06:8696: 01        .byte $01   ; counter
- D 0 - I - 0x0186A7 06:8697: 04        .byte $04   ; routine index
- D 0 - I - 0x0186A8 06:8698: EA 96     .word off_10_96EA
- D 0 - I - 0x0186AA 06:869A: 00 1A     .word $1A00 ; ppu

- D 0 - I - 0x0186AC 06:869C: 03        .byte $03   ; counter
- D 0 - I - 0x0186AD 06:869D: 04        .byte $04   ; routine index
- D 0 - I - 0x0186AE 06:869E: F2 96     .word off_10_96F2
- D 0 - I - 0x0186B0 06:86A0: C0 1A     .word $1AC0 ; ppu

- D 0 - I - 0x0186B2 06:86A2: 0D        .byte $0D   ; counter
- D 0 - I - 0x0186B3 06:86A3: 04        .byte $04   ; routine index
- D 0 - I - 0x0186B4 06:86A4: 12 97     .word off_10_9712
- D 0 - I - 0x0186B6 06:86A6: 00 1B     .word $1B00 ; ppu

- D 0 - I - 0x0186B8 06:86A8: 1C        .byte $1C   ; counter
- D 0 - I - 0x0186B9 06:86A9: 04        .byte $04   ; routine index
- D 0 - I - 0x0186BA 06:86AA: 12 96     .word off_10_9612
- D 0 - I - 0x0186BC 06:86AC: 00 1C     .word $1C00 ; ppu

- D 0 - I - 0x0186BE 06:86AE: 01        .byte $01   ; counter
- D 0 - I - 0x0186BF 06:86AF: 04        .byte $04   ; routine index
- D 0 - I - 0x0186C0 06:86B0: EA 96     .word off_10_96EA
- D 0 - I - 0x0186C2 06:86B2: 00 0A     .word $0A00 ; ppu

- D 0 - I - 0x0186C4 06:86B4: 03        .byte $03   ; counter
- D 0 - I - 0x0186C5 06:86B5: 04        .byte $04   ; routine index
- D 0 - I - 0x0186C6 06:86B6: F2 96     .word off_10_96F2
- D 0 - I - 0x0186C8 06:86B8: C0 0A     .word $0AC0 ; ppu

- D 0 - I - 0x0186CA 06:86BA: 0D        .byte $0D   ; counter
- D 0 - I - 0x0186CB 06:86BB: 04        .byte $04   ; routine index
- D 0 - I - 0x0186CC 06:86BC: 12 97     .word off_10_9712
- D 0 - I - 0x0186CE 06:86BE: 00 0B     .word $0B00 ; ppu

- D 0 - I - 0x0186D0 06:86C0: 1C        .byte $1C   ; counter
- D 0 - I - 0x0186D1 06:86C1: 04        .byte $04   ; routine index
- D 0 - I - 0x0186D2 06:86C2: 12 96     .word off_10_9612
- D 0 - I - 0x0186D4 06:86C4: 00 0C     .word $0C00 ; ppu

- D 0 - I - 0x0186D6 06:86C6: 00        .byte $00   ; end token



_off015_86C7_11:
- D 0 - I - 0x0186D7 06:86C7: 0C        .byte $0C   ; counter
- D 0 - I - 0x0186D8 06:86C8: 0E        .byte $0E   ; routine index
- D 0 - I - 0x0186D9 06:86C9: 12 96     .word off_11_9612
- D 0 - I - 0x0186DB 06:86CB: 10 15     .word $1510 ; ppu

; DANNY'S TIPS
- D 0 - I - 0x0186DD 06:86CD: 44        .byte $44, $41, $4E, $4E, $59, $5F, $53, $54, $49, $50, $53, $6A   ; 


; bzk garbage
- - - - - - 0x0186E9 06:86D9: 00        .byte $00   ; 



_off015_86DA_12:
- D 0 - I - 0x0186EA 06:86DA: 13        .byte $13   ; counter
- D 0 - I - 0x0186EB 06:86DB: 0E        .byte $0E   ; routine index
- D 0 - I - 0x0186EC 06:86DC: 12 96     .word off_12_9612
- D 0 - I - 0x0186EE 06:86DE: 10 15     .word $1510 ; ppu

; DANNY'S AWEOME WINS
- D 0 - I - 0x0186F0 06:86E0: 44        .byte $44, $41, $4E, $4E, $59, $5F, $53, $41, $57, $45, $53, $4F, $4D, $45, $57, $49, $4E, $53, $6A   ; 


; bzk garbage
- - - - - - 0x018703 06:86F3: 00        .byte $00   ; 



_off015_86F4_13:
- - - - - - 0x018704 06:86F4: 0B        .byte $0B   ; counter
- - - - - - 0x018705 06:86F5: 0E        .byte $0E   ; routine index
- - - - - - 0x018706 06:86F6: 12 96     .word off_13_9612
- - - - - - 0x018708 06:86F8: 10 15     .word $1510 ; ppu

; DESIGN TEAM
- - - - - - 0x01870A 06:86FA: 44        .byte $44, $45, $53, $49, $47, $4E, $54, $45, $41, $4D, $6A   ; 


; bzk garbage
- - - - - - 0x018715 06:8705: 00        .byte $00   ; 



off_04_8706:
- D 0 - I - 0x018716 06:8706: 3D        .byte $3D   ; prepare control byte for 00
- D 0 - I - 0x018717 06:8707: 43        .byte $43   ; prepare control byte for FF

- D 0 - I - 0x018718 06:8708: AA        .byte $AA, $55, $AA, $55, $AA, $55, $AA, $55, $AA, $55, $AA, $55, $AA, $55, $AA, $55   ; normal bytes
- D 0 - I - 0x018728 06:8718: AA        .byte $AA, $55, $A9, $53, $AB, $57, $A7, $4E, $AA, $54, $A8, $50, $A8, $50, $A0, $40   ; 
- D 0 - I - 0x018738 06:8728: 02        .byte $02, $F9, $FC, $9E, $AE, $4E, $2E, $4E, $02, $01   ; 

- D 0 - I - 0x018742 06:8732: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018744 06:8734: 20        .byte $20, $40, $20, $40, $A8, $51, $A7, $4F, $AF, $4F, $A7, $53, $A8, $50, $A0, $40   ; 
- D 0 - I - 0x018754 06:8744: A0        .byte $A0, $40, $A0, $50, $00, $FD, $FC, $81, $2A, $55, $2A, $95, $00, $01, $00, $01   ; 
- D 0 - I - 0x018764 06:8754: 2A        .byte $2A, $55, $2A, $15, $AE, $5D, $9C, $39, $78, $7F, $3F, $00, $A0, $41, $80, $01   ; 

- D 0 - I - 0x018774 06:8764: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018776 06:8766: 8C        .byte $8C, $5D, $9A, $39, $72, $E5, $CA, $15, $80, $41, $82, $01, $02, $05, $0A, $15   ; 
- D 0 - I - 0x018786 06:8776: A0        .byte $A0, $5E, $B6, $25, $6C, $78, $1A, $45, $A0, $40, $80, $01   ; 

- D 0 - I - 0x018792 06:8782: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018794 06:8784: 02        .byte $02, $45, $A0, $5E, $B6, $6D, $6C, $D8, $DA, $05, $A0, $40, $80, $01   ; 

- D 0 - I - 0x0187A2 06:8792: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x0187A4 06:8794: 02        .byte $02, $05, $A0, $5E, $B6, $6D, $6C, $D9, $DA, $05, $A0, $40, $80, $01, $00, $01   ; 
- D 0 - I - 0x0187B4 06:87A4: 02        .byte $02, $05, $88, $22, $B6, $5D, $9A, $35, $B2, $05, $88, $00, $80, $41, $82, $05   ; 
- D 0 - I - 0x0187C4 06:87B4: 82        .byte $82, $05, $A9, $54, $AA, $54, $81, $3F, $BF, $00, $A8, $54, $AA, $54, $80, $00   ; 
- D 0 - I - 0x0187D4 06:87C4: 80        .byte $80, $00, $CA, $E5, $F2, $F5, $F2, $E5, $8A, $15, $0A, $05, $02, $05, $02, $05   ; 
- D 0 - I - 0x0187E4 06:87D4: 0A        .byte $0A, $15, $A0, $56, $96, $2D, $AC, $59, $7A, $05, $A0, $40, $80, $01, $80, $01   ; 
- D 0 - I - 0x0187F4 06:87E4: 02        .byte $02, $05, $A0, $4D, $8C, $59, $9A, $31, $BC, $01, $A0, $41, $80, $41, $82, $01   ; 
- D 0 - I - 0x018804 06:87F4: 80        .byte $80, $01, $A0, $4D, $8C, $59, $9A, $35, $B2, $05, $A0, $41, $80, $41, $82, $05   ; 
- D 0 - I - 0x018814 06:8804: 82        .byte $82, $05, $80, $36, $26, $6E, $5D, $7A, $75, $0A, $80   ; 

- D 0 - I - 0x01881F 06:880F: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018821 06:8811: 01        .byte $01, $02, $05, $0A, $A0, $5E, $B6, $25, $6C, $79, $1A, $85, $A0, $40, $80, $01   ; 
- D 0 - I - 0x018831 06:8821: 00        .byte $00, $01, $02, $85, $82, $59, $8C, $45, $A0, $55, $AA, $55, $82, $41, $80, $41   ; 
- D 0 - I - 0x018841 06:8831: A0        .byte $A0, $55, $AA, $55, $80, $1E, $B0, $39, $9C, $0D, $78, $01, $80, $00, $80, $01   ; 
- D 0 - I - 0x018851 06:8841: 80        .byte $80, $01, $00, $01, $D2, $A1, $C0, $80   ; 

- D 0 - I - 0x018859 06:8849: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x01885B 06:884B: 80        .byte $80, $80, $B2, $61, $40, $00, $80, $80, $80, $80, $00, $FF   ; 

- D 0 - I - 0x018867 06:8857: 3D        .byte $3D, $07   ; control byte for 00 + counter

- D 0 - I - 0x018869 06:8859: AA        .byte $AA   ; 

- D 0 - I - 0x01886A 06:885A: 43        .byte $43, $06   ; control byte for FF + counter


- D 0 - I - 0x01886C 06:885C: 3D        .byte $3D, $10   ; control byte for 00 + counter

- D 0 - I - 0x01886E 06:885E: 0F        .byte $0F, $10, $17, $0B, $0B, $05, $05, $05, $F0, $E0, $E7, $F3, $F3, $F9, $F9, $F9   ; 
- D 0 - I - 0x01887E 06:886E: FE        .byte $FE, $01, $F0, $F8, $F8, $FC, $FC, $FC, $01, $00, $F0, $F8, $F8, $FC, $FC, $FC   ; 
- D 0 - I - 0x01888E 06:887E: 0F        .byte $0F, $10, $97, $8B, $4B, $45, $45, $45, $F0, $E0, $67, $73, $33, $39, $39, $39   ; 
- D 0 - I - 0x01889E 06:888E: FF        .byte $FF, $00   ; 

- D 0 - I - 0x0188A0 06:8890: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x0188A2 06:8892: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x0188A4 06:8894: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x0188A6 06:8896: 87        .byte $87, $68, $17, $CB, $EB, $E5, $F5, $F2, $78, $10, $07, $C3, $E3, $E1, $F1, $F0   ; 

- D 0 - I - 0x0188B6 06:88A6: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0188B8 06:88A8: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x0188BA 06:88AA: FB        .byte $FB, $04, $E4, $C6, $CA, $89, $91, $11, $04, $00, $E0, $C0, $C4, $86, $8E, $0E   ; 
- D 0 - I - 0x0188CA 06:88BA: FF        .byte $FF, $00, $FF, $7F, $7F, $3F, $3F, $3F   ; 

- D 0 - I - 0x0188D2 06:88C2: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x0188D4 06:88C4: FF        .byte $FF, $7F, $7F, $3F, $3F, $3F, $FE, $01, $F9, $F1, $F2, $E2, $E4, $C4, $01, $00   ; 
- D 0 - I - 0x0188E4 06:88D4: F8        .byte $F8, $F0, $F1, $E1, $E3, $C3, $05, $05, $0B, $0B, $0B, $0B, $17, $17, $F9, $F9   ; 
- D 0 - I - 0x0188F4 06:88E4: F3        .byte $F3, $F3, $F3, $F3, $E7, $E7, $FC, $FC, $FC, $FC, $F8, $F8, $F8, $F8, $FC, $FC   ; 
- D 0 - I - 0x018904 06:88F4: FC        .byte $FC, $FC, $F8, $F8, $F8, $F8, $45, $45, $4B, $4B, $8B, $8B, $97, $97, $39, $39   ; 
- D 0 - I - 0x018914 06:8904: 33        .byte $33, $33, $73, $73, $67, $67, $0F, $07, $03, $73, $8B, $8B, $8B, $97, $0F, $07   ; 
- D 0 - I - 0x018924 06:8914: 03        .byte $03, $03, $73, $73, $73, $67, $F2, $F1, $F1, $F1, $F1, $F1, $F1, $F1, $F0, $F0   ; 
- D 0 - I - 0x018934 06:8924: F0        .byte $F0, $F0, $F0, $F0, $F0, $F0, $FE, $7E, $7F, $BF, $BF, $5F, $5F, $5F, $FE, $7E   ; 
- D 0 - I - 0x018944 06:8934: 7F        .byte $7F, $3F, $3F, $9F, $9F, $9F, $29, $13, $13, $17, $87, $8F, $8F, $9F, $11, $03   ; 
- D 0 - I - 0x018954 06:8944: 03        .byte $03, $07, $87, $8F, $8F, $9F, $FC, $FC, $F8, $F9, $F1, $E2, $C2, $84, $FC, $FC   ; 
- D 0 - I - 0x018964 06:8954: F8        .byte $F8, $F8, $F0, $E1, $C1, $83   ; 

- D 0 - I - 0x01896A 06:895A: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x01896C 06:895C: 7F        .byte $7F, $40, $80, $80, $FF   ; 

- D 0 - I - 0x018971 06:8961: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018973 06:8963: 3F        .byte $3F, $7F, $7F, $00, $21, $41, $81, $02, $02, $02, $04, $C5, $1E, $3E, $7E, $FC   ; 
- D 0 - I - 0x018983 06:8973: FC        .byte $FC, $FC, $F8, $39, $3F, $7F, $7D, $78, $F8, $F8, $F0, $F0, $3F, $7F, $7D, $78   ; 
- D 0 - I - 0x018993 06:8983: F8        .byte $F8, $F8, $F0, $F0, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC   ; 
- D 0 - I - 0x0189A3 06:8993: FC        .byte $FC, $FC, $FC, $FC, $22, $21, $20, $20, $20, $20, $20, $20, $1C, $1E, $1F, $1F   ; 
- D 0 - I - 0x0189B3 06:89A3: 1F        .byte $1F, $1F, $1F, $1F, $07, $07, $8F, $6F, $2F, $2F, $5F, $5F, $07, $07, $0F, $8F   ; 
- D 0 - I - 0x0189C3 06:89B3: CF        .byte $CF, $CF, $9F, $9F, $F0, $F0, $F0, $F1, $E2, $E2, $E2, $E2, $F0, $F0, $F0, $F0   ; 
- D 0 - I - 0x0189D3 06:89C3: E1        .byte $E1, $E1, $E1, $E1, $08, $08, $10, $F0   ; 

- D 0 - I - 0x0189DB 06:89CB: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x0189DD 06:89CD: 07        .byte $07, $07, $0F, $0F   ; 

- D 0 - I - 0x0189E1 06:89D1: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x0189E3 06:89D3: 17        .byte $17, $17, $2F, $2F, $2F, $2F, $5F, $5F, $E7, $E7, $CF, $CF, $CF, $CF, $9F, $9F   ; 
- D 0 - I - 0x0189F3 06:89E3: F1        .byte $F1, $F1, $F1, $F1, $E2, $E2, $E2, $E2, $F0, $F0, $F0, $F0, $E1, $E1, $E1, $E1   ; 
- D 0 - I - 0x018A03 06:89F3: 2F        .byte $2F, $2F, $2F, $2F, $2F, $2F, $2F, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $9F   ; 
- D 0 - I - 0x018A13 06:8A03: 9F        .byte $9F, $BF, $BE, $FE, $FC, $FC, $F8, $F8, $9F, $BF, $BE, $FE, $FC, $FC, $F8, $F8   ; 
- D 0 - I - 0x018A23 06:8A13: 08        .byte $08, $10, $20, $20, $40, $40, $80, $80, $07, $0F, $1F, $1F, $3F, $3F, $7F, $7F   ; 
- D 0 - I - 0x018A33 06:8A23: F8        .byte $F8   ; 

- D 0 - I - 0x018A34 06:8A24: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x018A36 06:8A26: E0        .byte $E0, $F8   ; 

- D 0 - I - 0x018A38 06:8A28: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x018A3A 06:8A2A: E0        .byte $E0, $0F   ; 

- D 0 - I - 0x018A3C 06:8A2C: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x018A3E 06:8A2E: 1F        .byte $1F, $0F   ; 

- D 0 - I - 0x018A40 06:8A30: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x018A42 06:8A32: 1F        .byte $1F, $00   ; 

- D 0 - I - 0x018A44 06:8A34: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018A46 06:8A36: FE        .byte $FE, $FC, $F0   ; 

- D 0 - I - 0x018A49 06:8A39: 3D        .byte $3D, $02   ; control byte for 00 + counter


- D 0 - I - 0x018A4B 06:8A3B: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018A4D 06:8A3D: FE        .byte $FE, $FC, $F0, $00, $25, $29, $2B, $2B, $33, $57, $57, $A7, $19, $11, $13, $13   ; 
- D 0 - I - 0x018A5D 06:8A4D: 03        .byte $03, $27, $27, $47, $F0, $E2, $E2, $E2, $C6, $C6, $C0, $FF, $F0, $E0, $E0, $E0   ; 
- D 0 - I - 0x018A6D 06:8A5D: C0        .byte $C0, $C0, $C0, $FF, $20, $20, $20, $20, $20, $20, $20, $20, $1F, $1F, $1F, $1F   ; 
- D 0 - I - 0x018A7D 06:8A6D: 1F        .byte $1F, $1F, $1F, $1F, $5F, $5F, $BF, $BF, $BF, $BF, $7F, $7F, $9F, $9F, $3F, $3F   ; 
- D 0 - I - 0x018A8D 06:8A7D: 3F        .byte $3F, $3F, $7F, $7F, $C4, $C4, $C4, $C4, $88, $88, $88, $88, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x018A9D 06:8A8D: 87        .byte $87, $87, $87, $87   ; 

- D 0 - I - 0x018AA1 06:8A91: 43        .byte $43, $10   ; control byte for FF + counter

- D 0 - I - 0x018AA3 06:8A93: 5F        .byte $5F, $5F, $BF, $BF, $BF, $BF, $BF, $BF, $9F, $9F, $3F, $3F, $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x018AB3 06:8AA3: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C4, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x018AC3 06:8AB3: C4        .byte $C4, $C4, $C4, $C4, $C4, $C4, $C0, $FF, $C3, $C3, $C3, $C3, $C3, $C3, $C0, $FF   ; 
- D 0 - I - 0x018AD3 06:8AC3: 5F        .byte $5F, $5F, $BF, $BF, $BF, $BF, $3F, $FF, $9F, $9F, $3F, $3F, $3F, $3F, $3F, $FF   ; 
- D 0 - I - 0x018AE3 06:8AD3: F1        .byte $F1, $F1, $E2, $E2, $C4, $C4, $C4, $C4, $F0, $F0, $E1, $E1, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x018AF3 06:8AE3: E0        .byte $E0, $E0, $C7, $C4, $C4, $C4, $C4, $C4, $E0, $E0, $C0, $C3, $C3, $C3, $C3, $C3   ; 
- D 0 - I - 0x018B03 06:8AF3: 1F        .byte $1F, $1F, $BF, $BF, $BF, $BF, $BF, $BF, $1F, $1F, $3F, $3F, $3F, $3F, $3F, $3F   ; 
- D 0 - I - 0x018B13 06:8B03: C0        .byte $C0, $C0, $C7, $C4, $C4, $C7, $C0, $FF, $C0, $C0, $C0, $C3, $C3, $C0, $C0, $FF   ; 
- D 0 - I - 0x018B23 06:8B13: 00        .byte $00, $01, $FE   ; 

- D 0 - I - 0x018B26 06:8B16: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018B28 06:8B18: FF        .byte $FF, $00, $FF   ; 

- D 0 - I - 0x018B2B 06:8B1B: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018B2D 06:8B1D: 01        .byte $01   ; 

- D 0 - I - 0x018B2E 06:8B1E: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018B30 06:8B20: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018B32 06:8B22: FF        .byte $FF, $AF, $2F, $4F, $5F, $5F, $9F, $BF, $BF, $4F, $CF, $8F, $9F, $9F, $1F, $3F   ; 
- D 0 - I - 0x018B42 06:8B32: 3F        .byte $3F   ; 

- D 0 - I - 0x018B43 06:8B33: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018B45 06:8B35: C0        .byte $C0, $C0, $C7, $C4   ; 

- D 0 - I - 0x018B49 06:8B39: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018B4B 06:8B3B: C0        .byte $C0, $C0, $C0, $C3, $FE, $FE, $FE, $FF, $7F, $7F, $7F, $7F, $FE, $FE, $FE, $FF   ; 
- D 0 - I - 0x018B5B 06:8B4B: 7F        .byte $7F, $7F, $7F, $7F, $20, $10, $10, $10, $10, $08, $88, $88, $1F, $0F, $0F, $0F   ; 
- D 0 - I - 0x018B6B 06:8B5B: 0F        .byte $0F, $07, $87, $87, $7F, $7F   ; 

- D 0 - I - 0x018B71 06:8B61: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x018B73 06:8B63: 7F        .byte $7F, $7F   ; 

- D 0 - I - 0x018B75 06:8B65: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x018B77 06:8B67: 10        .byte $10, $10, $10, $10, $10, $10, $10, $10, $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F   ; 
- D 0 - I - 0x018B87 06:8B77: BF        .byte $BF, $BF, $5F, $47, $20, $10, $0C, $03, $3F, $3F, $9F, $87, $C0, $E0, $F0, $FC   ; 
- D 0 - I - 0x018B97 06:8B87: C4        .byte $C4, $C4, $E4, $E4, $02, $02, $02, $FC, $C3, $C3, $E3, $E3, $01, $01, $01, $03   ; 

- D 0 - I - 0x018BA7 06:8B97: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018BA9 06:8B99: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018BAB 06:8B9B: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018BAD 06:8B9D: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018BAF 06:8B9F: FF        .byte $FF, $FE, $FC, $F0   ; 

- D 0 - I - 0x018BB3 06:8BA3: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018BB5 06:8BA5: 01        .byte $01, $FE, $FF, $FE, $FC, $F0   ; 

- D 0 - I - 0x018BBB 06:8BAB: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018BBD 06:8BAD: 01        .byte $01, $10, $10, $10, $10, $20, $40, $80, $00, $0F, $0F, $0F, $0F, $1F, $3F, $7F   ; 
- D 0 - I - 0x018BCD 06:8BBD: FF        .byte $FF, $C4, $C4, $E4, $E4, $02, $01, $03, $FF, $C3, $C3, $E3, $E3, $00, $01, $03   ; 
- D 0 - I - 0x018BDD 06:8BCD: 0F        .byte $0F   ; 

- D 0 - I - 0x018BDE 06:8BCE: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018BE0 06:8BD0: 07        .byte $07, $1F, $7F   ; 

- D 0 - I - 0x018BE3 06:8BD3: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018BE5 06:8BD5: F8        .byte $F8, $E7, $9F, $7F   ; 

- D 0 - I - 0x018BE9 06:8BD9: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018BEB 06:8BDB: 00        .byte $00   ; 

- D 0 - I - 0x018BEC 06:8BDC: 43        .byte $43, $07   ; control byte for FF + counter

- D 0 - I - 0x018BEE 06:8BDE: 00        .byte $00   ; 

- D 0 - I - 0x018BEF 06:8BDF: 43        .byte $43, $07   ; control byte for FF + counter

- D 0 - I - 0x018BF1 06:8BE1: C4        .byte $C4, $04, $E4, $F8, $FE   ; 

- D 0 - I - 0x018BF6 06:8BE6: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018BF8 06:8BE8: C3        .byte $C3, $03, $E3, $F9, $FE   ; 

- D 0 - I - 0x018BFD 06:8BED: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018BFF 06:8BEF: BF        .byte $BF, $BF, $5F, $47, $20, $90, $CC, $F3, $3F, $3F, $9F, $87, $40, $A0, $C0, $FC   ; 

- D 0 - I - 0x018C0F 06:8BFF: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018C11 06:8C01: 7F        .byte $7F, $1F, $80, $40, $30, $0F   ; 

- D 0 - I - 0x018C17 06:8C07: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018C19 06:8C09: 7F        .byte $7F, $1F, $00, $80, $C0, $F0, $10, $10, $90, $90, $08, $08, $08, $F0, $0F, $0F   ; 
- D 0 - I - 0x018C29 06:8C19: 8F        .byte $8F, $8F, $07, $07, $07, $0F, $55, $AA, $55, $AA, $55, $AA, $55, $AA   ; 

- D 0 - I - 0x018C37 06:8C27: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018C39 06:8C29: 00        .byte $00, $FF   ; 

- D 0 - I - 0x018C3B 06:8C2B: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018C3D 06:8C2D: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018C3F 06:8C2F: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018C41 06:8C31: AA        .byte $AA   ; 

- D 0 - I - 0x018C42 06:8C32: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018C44 06:8C34: 55        .byte $55, $AA, $55, $FF, $00, $FF   ; 

- D 0 - I - 0x018C4A 06:8C3A: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018C4C 06:8C3C: 01        .byte $01, $03, $07, $0F, $00, $AA, $FF, $FE, $FD, $FB, $F7, $EF, $1F, $BF, $7F   ; 

- D 0 - I - 0x018C5B 06:8C4B: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018C5D 06:8C4D: 1F        .byte $1F, $BF, $7F   ; 

- D 0 - I - 0x018C60 06:8C50: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018C62 06:8C52: F8        .byte $F8, $FD, $FE   ; 

- D 0 - I - 0x018C65 06:8C55: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018C67 06:8C57: F8        .byte $F8, $FC, $FE   ; 

- D 0 - I - 0x018C6A 06:8C5A: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018C6C 06:8C5C: 00        .byte $00, $FF   ; 

- D 0 - I - 0x018C6E 06:8C5E: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018C70 06:8C60: 80        .byte $80, $C0, $E0, $F0, $00, $AA, $FF, $7F, $BF, $DF, $EF, $F7   ; 

- D 0 - I - 0x018C7C 06:8C6C: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x018C7E 06:8C6E: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018C80 06:8C70: 55        .byte $55, $AA   ; 

- D 0 - I - 0x018C82 06:8C72: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018C84 06:8C74: 0F        .byte $0F, $1F, $3F, $3F, $7F, $7F   ; 

- D 0 - I - 0x018C8A 06:8C7A: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018C8C 06:8C7C: EF        .byte $EF, $DF, $BF, $BF, $7F, $7F   ; 

- D 0 - I - 0x018C92 06:8C82: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018C94 06:8C84: BE        .byte $BE, $55, $AA, $55, $AA   ; 

- D 0 - I - 0x018C99 06:8C89: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018C9B 06:8C8B: F0        .byte $F0, $F8, $FC, $FC, $FE, $FE   ; 

- D 0 - I - 0x018CA1 06:8C91: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018CA3 06:8C93: F7        .byte $F7, $FB, $FD, $FD, $FE, $FE   ; 

- D 0 - I - 0x018CA9 06:8C99: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018CAB 06:8C9B: 00        .byte $00, $01, $03, $03, $07, $0F, $0F, $1F, $FF, $FE, $FC, $FC, $F8, $F0, $F0, $E0   ; 

- D 0 - I - 0x018CBB 06:8CAB: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018CBD 06:8CAD: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x018CBF 06:8CAF: FD        .byte $FD, $FB, $FB, $F7, $F7, $EF, $CF, $9F, $01, $03, $03, $07, $07, $0F, $0F, $1F   ; 

- D 0 - I - 0x018CCF 06:8CBF: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018CD1 06:8CC1: EF        .byte $EF, $BB, $EE, $5D, $B6   ; 

- D 0 - I - 0x018CD6 06:8CC6: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018CD8 06:8CC8: 7D        .byte $7D, $AA, $55, $AA, $44, $11   ; 

- D 0 - I - 0x018CDE 06:8CCE: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018CE0 06:8CD0: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018CE2 06:8CD2: 55        .byte $55, $88, $22, $88   ; 

- D 0 - I - 0x018CE6 06:8CD6: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018CE8 06:8CD8: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018CEA 06:8CDA: BF        .byte $BF, $DF, $DF, $EF, $EF, $F7, $F3, $F9, $80, $C0, $C0, $E0, $E0, $F0, $F0, $F8   ; 
- D 0 - I - 0x018CFA 06:8CEA: 00        .byte $00, $80, $C0, $C0, $E0, $F0, $F0, $F8, $FF, $7F, $3F, $3F, $1F, $0F, $0F, $07   ; 
- D 0 - I - 0x018D0A 06:8CFA: 1F        .byte $1F, $3F, $3F, $7F, $7F   ; 

- D 0 - I - 0x018D0F 06:8CFF: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018D11 06:8D01: E0        .byte $E0, $C0, $C0, $80, $80   ; 

- D 0 - I - 0x018D16 06:8D06: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018D18 06:8D08: FC        .byte $FC, $F0, $E0, $C0, $80, $80   ; 

- D 0 - I - 0x018D1E 06:8D0E: 3D        .byte $3D, $0A   ; control byte for 00 + counter

- D 0 - I - 0x018D20 06:8D10: 1F        .byte $1F, $1F, $1F, $1F, $2F, $37, $39, $3E, $1F, $1F, $1F, $1F, $2F, $37, $39, $3E   ; 
- D 0 - I - 0x018D30 06:8D20: F8        .byte $F8, $F8, $F8, $F8, $F4, $EC, $9C, $7C, $F8, $F8, $F8, $F8, $F4, $EC, $9C, $7C   ; 
- D 0 - I - 0x018D40 06:8D30: 3F        .byte $3F, $0F, $07, $03, $01, $01   ; 

- D 0 - I - 0x018D46 06:8D36: 3D        .byte $3D, $0A   ; control byte for 00 + counter

- D 0 - I - 0x018D48 06:8D38: F8        .byte $F8, $FC, $FC, $FE, $FE   ; 

- D 0 - I - 0x018D4D 06:8D3D: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018D4F 06:8D3F: 07        .byte $07, $03, $03, $01, $01   ; 

- D 0 - I - 0x018D54 06:8D44: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018D56 06:8D46: AA        .byte $AA, $55, $AA, $55, $AA, $55, $AA, $55, $55, $AA, $55, $AA, $55, $AA, $55, $AA   ; 

- D 0 - I - 0x018D66 06:8D56: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018D68 06:8D58: FE        .byte $FE, $FC, $FC, $F8, $F0, $F0   ; 

- D 0 - I - 0x018D6E 06:8D5E: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x018D70 06:8D60: 75        .byte $75, $0A, $28, $6C, $6C, $68, $68, $38, $3F, $7F, $77, $73, $73, $73, $73, $63   ; 
- D 0 - I - 0x018D80 06:8D70: 30        .byte $30, $C6, $18, $07   ; 

- D 0 - I - 0x018D84 06:8D74: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018D86 06:8D76: 0F        .byte $0F, $C1, $F8   ; 

- D 0 - I - 0x018D89 06:8D79: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018D8B 06:8D7B: 88        .byte $88, $55, $FA, $0F, $F0, $0D, $02, $05, $77, $AA, $05, $00, $F0, $FA, $FD, $FA   ; 
- D 0 - I - 0x018D9B 06:8D8B: 55        .byte $55, $AA, $77, $DD, $FF   ; 

- D 0 - I - 0x018DA0 06:8D90: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018DA2 06:8D92: FF        .byte $FF, $AA, $55, $88, $22   ; 

- D 0 - I - 0x018DA7 06:8D97: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018DA9 06:8D99: FF        .byte $FF, $00, $11, $AA, $5F, $F0, $0F, $B0, $40, $A0, $EE, $55, $A0, $00, $0F, $5F   ; 
- D 0 - I - 0x018DB9 06:8DA9: BF        .byte $BF, $5F, $0C, $63, $18, $E0   ; 

- D 0 - I - 0x018DBF 06:8DAF: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018DC1 06:8DB1: F0        .byte $F0, $83, $1F   ; 

- D 0 - I - 0x018DC4 06:8DB4: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x018DC6 06:8DB6: AE        .byte $AE, $50, $14, $36, $36, $16, $16, $1C, $FC, $FE, $EE, $CE, $CE, $CE, $CE, $C6   ; 

- D 0 - I - 0x018DD6 06:8DC6: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018DD8 06:8DC8: 7F        .byte $7F, $3F, $3F, $1F, $0F, $0F   ; 

- D 0 - I - 0x018DDE 06:8DCE: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x018DE0 06:8DD0: E0        .byte $E0, $C0, $C0, $80   ; 

- D 0 - I - 0x018DE4 06:8DD4: 3D        .byte $3D, $0C   ; control byte for 00 + counter

- D 0 - I - 0x018DE6 06:8DD6: 50        .byte $50, $48, $30, $40, $60, $40, $20, $40, $27, $07, $4F, $7F, $7F, $7F, $7F, $7F   ; 

- D 0 - I - 0x018DF6 06:8DE6: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018DF8 06:8DE8: 03        .byte $03, $0D, $34, $78, $60   ; 

- D 0 - I - 0x018DFD 06:8DED: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018DFF 06:8DEF: FE        .byte $FE, $F8, $E0, $C0, $00, $01, $7F, $A0   ; 

- D 0 - I - 0x018E07 06:8DF7: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018E09 06:8DF9: 0B        .byte $0B, $FF, $FE, $FF, $C0   ; 

- D 0 - I - 0x018E0E 06:8DFE: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018E10 06:8E00: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018E12 06:8E02: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018E14 06:8E04: FF        .byte $FF   ; 

- D 0 - I - 0x018E15 06:8E05: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018E17 06:8E07: FF        .byte $FF   ; 

- D 0 - I - 0x018E18 06:8E08: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x018E1A 06:8E0A: FF        .byte $FF, $00, $80, $FE, $05, $00, $02, $00, $E8, $FF, $7F, $FF, $03, $00, $01   ; 

- D 0 - I - 0x018E29 06:8E19: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x018E2B 06:8E1B: C0        .byte $C0, $B0, $6C, $AE, $76   ; 

- D 0 - I - 0x018E30 06:8E20: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018E32 06:8E22: 7F        .byte $7F, $9F, $47, $03, $0A, $12, $0C, $02, $06, $02, $04, $02, $E4, $E0, $F2, $FE   ; 
- D 0 - I - 0x018E42 06:8E32: FE        .byte $FE, $FE, $FE, $FE, $07, $03, $03, $01   ; 

- D 0 - I - 0x018E4A 06:8E3A: 3D        .byte $3D, $0C   ; control byte for 00 + counter

- D 0 - I - 0x018E4C 06:8E3C: FC        .byte $FC, $FC, $F8, $F8, $F0, $F0, $E0, $E0   ; 

- D 0 - I - 0x018E54 06:8E44: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018E56 06:8E46: 01        .byte $01, $02, $07, $06, $0D, $0E, $20, $00, $40, $00, $40, $40, $40, $00, $7F, $7F   ; 
- D 0 - I - 0x018E66 06:8E56: 3F        .byte $3F, $7F, $3F, $3F, $3F, $3F, $C0, $80, $80, $80, $80, $80, $80, $80, $C0, $80   ; 
- D 0 - I - 0x018E76 06:8E66: 84        .byte $84, $90, $B8, $B8, $B8, $90, $03, $17, $2B, $17, $2C, $5A, $B5, $73, $01, $04   ; 
- D 0 - I - 0x018E86 06:8E76: 09        .byte $09, $02, $07, $0D, $1A, $4C   ; 

- D 0 - I - 0x018E8C 06:8E7C: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x018E8E 06:8E7E: C0        .byte $C0, $2A, $5D   ; 

- D 0 - I - 0x018E91 06:8E81: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018E93 06:8E83: 55        .byte $55, $AA, $7F, $D5, $A2   ; 

- D 0 - I - 0x018E98 06:8E88: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018E9A 06:8E8A: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018E9C 06:8E8C: 3F        .byte $3F, $5F, $AF, $D7, $F7, $40, $AA, $54, $F2, $B9, $5C, $2D, $0A   ; 

- D 0 - I - 0x018EA9 06:8E99: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018EAB 06:8E9B: FE        .byte $FE, $FD, $FA, $F5, $F7, $01, $0A, $55, $9B, $16, $AD, $3A, $A8, $E0, $F4, $EA   ; 
- D 0 - I - 0x018EBB 06:8EAB: 74        .byte $74, $1A, $AD, $D6, $E7, $20, $90, $40, $A4, $F0, $58, $2C, $19, $03, $01, $01   ; 
- D 0 - I - 0x018ECB 06:8EBB: 01        .byte $01, $01, $01, $81, $01, $03, $01, $01, $01, $01, $01, $01, $01, $04, $00, $02   ; 
- D 0 - I - 0x018EDB 06:8ECB: 00        .byte $00, $02, $02, $02, $00, $FE, $FE, $FC, $FE, $FC, $FC, $FC, $FC, $3F, $3F, $1F   ; 
- D 0 - I - 0x018EEB 06:8EDB: 1F        .byte $1F, $0F, $0F, $07, $07   ; 

- D 0 - I - 0x018EF0 06:8EE0: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018EF2 06:8EE2: 80        .byte $80, $40, $E0, $60, $B0, $70   ; 

- D 0 - I - 0x018EF8 06:8EE8: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018EFA 06:8EEA: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x018EFC 06:8EEC: 01        .byte $01, $1F, $7F   ; 

- D 0 - I - 0x018EFF 06:8EEF: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018F01 06:8EF1: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x018F03 06:8EF3: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x018F05 06:8EF5: C0        .byte $C0, $C8, $80, $90, $90, $20, $20, $20, $1D, $1A, $3C, $3A, $34, $78, $74, $68   ; 
- D 0 - I - 0x018F15 06:8F05: 40        .byte $40, $20, $00, $20, $20, $00, $20, $00, $3F, $1F, $3F, $1F, $1F, $1F, $1F, $1F   ; 
- D 0 - I - 0x018F25 06:8F15: 80        .byte $80, $81, $80, $81, $80, $81, $C0, $41, $80, $A0, $80, $80, $80, $80, $C0, $C0   ; 
- D 0 - I - 0x018F35 06:8F25: A6        .byte $A6, $68, $E8, $64, $EB, $6C, $F2, $73, $19, $34, $50, $31, $90, $30, $58, $18   ; 

- D 0 - I - 0x018F45 06:8F35: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x018F47 06:8F37: 80        .byte $80, $00, $64, $E0, $31, $01   ; 

- D 0 - I - 0x018F4D 06:8F3D: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018F4F 06:8F3F: 41        .byte $41, $80, $04, $60, $51, $FB, $33, $01, $05, $05, $C5, $C5, $05, $05, $48, $03   ; 
- D 0 - I - 0x018F5F 06:8F4F: 82        .byte $82, $6B, $0A, $C3, $32, $EF, $E4, $C0, $C0, $C0, $C1, $C1, $C0, $10, $8A, $60   ; 
- D 0 - I - 0x018F6F 06:8F5F: B0        .byte $B0, $73, $B0, $71, $B2   ; 

- D 0 - I - 0x018F74 06:8F64: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x018F76 06:8F66: 93        .byte $93, $83, $46, $80, $00, $03, $C0, $00, $10, $83, $44, $12, $0B, $13, $4B, $3B   ; 
- D 0 - I - 0x018F86 06:8F76: 0B        .byte $0B, $87, $27, $2C, $06, $04, $A6, $04, $96, $0C, $4C, $81, $41, $81, $41, $81   ; 
- D 0 - I - 0x018F96 06:8F86: 41        .byte $41, $83, $42, $01, $01, $01, $01, $01, $01, $03, $03, $02, $04, $00, $04, $04   ; 
- D 0 - I - 0x018FA6 06:8F96: 00        .byte $00, $04, $00, $FC, $F8, $FC, $F8, $F8, $F8, $F8, $F8, $03, $13, $01, $09, $09   ; 
- D 0 - I - 0x018FB6 06:8FA6: 04        .byte $04, $04, $04, $B8, $58, $3C, $5C, $2C, $1E, $2E, $16   ; 

- D 0 - I - 0x018FC1 06:8FB1: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018FC3 06:8FB3: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x018FC5 06:8FB5: F0        .byte $F0, $FE, $7F, $7F, $3F, $3F, $3F, $1F, $1F, $1F   ; 

- D 0 - I - 0x018FCF 06:8FBF: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x018FD1 06:8FC1: 43        .byte $43, $07   ; control byte for FF + counter

- D 0 - I - 0x018FD3 06:8FC3: FA        .byte $FA, $00, $01, $03, $03, $05, $02   ; 

- D 0 - I - 0x018FDA 06:8FCA: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018FDC 06:8FCC: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x018FDE 06:8FCE: 55        .byte $55, $AA   ; 

- D 0 - I - 0x018FE0 06:8FD0: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x018FE2 06:8FD2: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x018FE4 06:8FD4: F0        .byte $F0, $A8, $50, $58, $20, $18, $1C, $1F, $A0, $E0, $E0, $E0, $F0, $F0, $F8, $FE   ; 
- D 0 - I - 0x018FF4 06:8FE4: 10        .byte $10, $10, $08, $08, $0C, $0A, $01, $04, $0F, $0F, $07, $07, $03, $05, $06, $03   ; 
- D 0 - I - 0x019004 06:8FF4: 42        .byte $42, $21, $12, $09, $00, $04, $0A, $87, $E0, $E0, $F0, $F8, $FC, $FA, $F5, $78   ; 
- D 0 - I - 0x019014 06:9004: 4A        .byte $4A, $A2, $F5, $6A, $34, $18, $8C, $E6, $BD, $5D, $0E, $17, $0B, $07, $03, $01   ; 
- D 0 - I - 0x019024 06:9014: 00        .byte $00, $C0, $FE, $7D, $BE, $DF, $E7, $F8, $80, $3F, $01, $82, $41, $20, $18, $07   ; 
- D 0 - I - 0x019034 06:9024: 45        .byte $45, $85, $0B, $1B, $B7, $6F, $9F, $7F, $A3, $52, $A5, $C7, $4E, $92, $6C, $80   ; 
- D 0 - I - 0x019044 06:9034: E0        .byte $E0, $E8, $F4, $F6, $FB, $FD, $FE, $FF, $19, $92, $49, $29, $64, $A2, $55, $BA   ; 
- D 0 - I - 0x019054 06:9044: 80        .byte $80, $40, $1F, $2F, $5F, $BE, $79, $87, $41, $BF, $E0, $D0, $A0, $41, $86, $78   ; 
- D 0 - I - 0x019064 06:9054: 58        .byte $58, $15, $2B, $56, $8D, $18, $31, $66, $2F, $EE, $DC, $B8, $70, $E0, $C0, $81   ; 
- D 0 - I - 0x019074 06:9064: 42        .byte $42, $84, $48, $90, $00, $20, $50, $E1, $07, $07, $0F, $1F, $3F, $5F, $AF, $1E   ; 
- D 0 - I - 0x019084 06:9074: 08        .byte $08, $08, $10, $10, $30, $50, $80, $20, $F0, $F0, $E0, $E0, $C0, $A0, $60, $C0   ; 
- D 0 - I - 0x019094 06:9084: 0F        .byte $0F, $15, $0A, $1A, $04, $18, $38, $F8, $05, $07, $07, $07, $0F, $0F, $1F, $7F   ; 

- D 0 - I - 0x0190A4 06:9094: 43        .byte $43, $07   ; control byte for FF + counter

- D 0 - I - 0x0190A6 06:9096: 5F        .byte $5F, $00, $80, $C0, $C0, $A0, $40   ; 

- D 0 - I - 0x0190AD 06:909D: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x0190AF 06:909F: FE        .byte $FE, $FE, $FC, $FC, $FC, $F8, $F8, $F8   ; 

- D 0 - I - 0x0190B7 06:90A7: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0190B9 06:90A9: 1F        .byte $1F, $1F, $0F, $0F, $0F, $0F, $0F, $0F   ; 

- D 0 - I - 0x0190C1 06:90B1: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0190C3 06:90B3: FD        .byte $FD, $F8, $F8, $F8, $FC, $FC, $FE, $FF   ; 

- D 0 - I - 0x0190CB 06:90BB: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0190CD 06:90BD: AA        .byte $AA, $FF, $55, $AA, $AA, $FF, $55, $AA   ; 
- D 0 - I - 0x0190D5 06:90C5: 55        .byte $55   ; 

- D 0 - I - 0x0190D6 06:90C6: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x0190D8 06:90C8: 55        .byte $55   ; 

- D 0 - I - 0x0190D9 06:90C9: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x0190DB 06:90CB: BD        .byte $BD, $18, $24, $99, $42, $99, $52, $B1   ; 

- D 0 - I - 0x0190E3 06:90D3: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x0190E5 06:90D5: 7E        .byte $7E, $BD, $7E, $BD, $7E, $FF, $00, $BF, $7A, $F4, $68, $D0, $E4   ; 

- D 0 - I - 0x0190F2 06:90E2: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x0190F4 06:90E4: 40        .byte $40, $80, $00, $80   ; 

- D 0 - I - 0x0190F8 06:90E8: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x0190FA 06:90EA: FF        .byte $FF, $00, $FF   ; 

- D 0 - I - 0x0190FD 06:90ED: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x0190FF 06:90EF: 2A        .byte $2A, $54   ; 

- D 0 - I - 0x019101 06:90F1: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x019103 06:90F3: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019105 06:90F5: FF        .byte $FF, $00, $FF, $03, $2B, $51, $A9, $01   ; 

- D 0 - I - 0x01910D 06:90FD: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x01910F 06:90FF: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019111 06:9101: FF        .byte $FF, $00   ; 

- D 0 - I - 0x019113 06:9103: 43        .byte $43, $08   ; control byte for FF + counter

- D 0 - I - 0x019115 06:9105: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019117 06:9107: FF        .byte $FF, $00, $FD, $AA, $54, $AA, $55, $0A   ; 

- D 0 - I - 0x01911F 06:910F: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x019121 06:9111: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019123 06:9113: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x019125 06:9115: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019127 06:9117: FF        .byte $FF   ; 

- D 0 - I - 0x019128 06:9118: 3D        .byte $3D, $07   ; control byte for 00 + counter

- D 0 - I - 0x01912A 06:911A: FF        .byte $FF, $00, $BF, $55, $2A, $55, $AA, $50   ; 

- D 0 - I - 0x019132 06:9122: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x019134 06:9124: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019136 06:9126: FF        .byte $FF, $00, $FF, $C0, $D4, $8A, $95, $80   ; 

- D 0 - I - 0x01913E 06:912E: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x019140 06:9130: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019142 06:9132: FF        .byte $FF, $00, $FD, $5E, $2F, $16, $0B, $27   ; 

- D 0 - I - 0x01914A 06:913A: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x01914C 06:913C: 02        .byte $02, $01, $00, $01   ; 

- D 0 - I - 0x019150 06:9140: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x019152 06:9142: BD        .byte $BD, $18, $24, $99, $42, $99, $42, $81   ; 

- D 0 - I - 0x01915A 06:914A: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x01915C 06:914C: 7E        .byte $7E, $BD, $7E, $BD, $7E, $BF, $1F, $1F, $1F, $3F, $3F, $7F, $FF   ; 

- D 0 - I - 0x019169 06:9159: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01916B 06:915B: F8        .byte $F8, $F8, $F0, $F0, $F0, $F0, $F0, $F0   ; 

- D 0 - I - 0x019173 06:9163: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x019175 06:9165: 0F        .byte $0F, $04, $04, $06, $06, $07, $07, $07   ; 

- D 0 - I - 0x01917D 06:916D: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01917F 06:916F: FF        .byte $FF, $07, $01   ; 

- D 0 - I - 0x019182 06:9172: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x019184 06:9174: 80        .byte $80   ; 

- D 0 - I - 0x019185 06:9175: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x019187 06:9177: F8        .byte $F8, $7E, $3F, $1F, $0F, $07   ; 

- D 0 - I - 0x01918D 06:917D: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x01918F 06:917F: 7F        .byte $7F, $1F, $07, $01   ; 

- D 0 - I - 0x019193 06:9183: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x019195 06:9185: 80        .byte $80, $E0, $F8, $FE, $C0, $F0, $FE   ; 

- D 0 - I - 0x01919C 06:918C: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x01919E 06:918E: 7F        .byte $7F   ; 

- D 0 - I - 0x01919F 06:918F: 3D        .byte $3D, $0B   ; control byte for 00 + counter

- D 0 - I - 0x0191A1 06:9191: 43        .byte $43, $05   ; control byte for FF + counter

- D 0 - I - 0x0191A3 06:9193: 3D        .byte $3D, $0C   ; control byte for 00 + counter

- D 0 - I - 0x0191A5 06:9195: F0        .byte $F0, $C0, $80   ; 

- D 0 - I - 0x0191A8 06:9198: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x0191AA 06:919A: 0C        .byte $0C, $3C, $78, $05, $AB, $5E, $C8, $10, $A0, $40, $80, $78, $70, $60, $60, $40   ; 

- D 0 - I - 0x0191BA 06:91AA: 3D        .byte $3D, $03   ; control byte for 00 + counter

- D 0 - I - 0x0191BC 06:91AC: 40        .byte $40, $80   ; 

- D 0 - I - 0x0191BE 06:91AE: 3D        .byte $3D, $0E   ; control byte for 00 + counter

- D 0 - I - 0x0191C0 06:91B0: F6        .byte $F6, $7D, $6E, $3B, $3E, $1B, $0E, $05   ; 

- D 0 - I - 0x0191C8 06:91B8: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0191CA 06:91BA: 74        .byte $74, $D8, $70, $E0, $50, $A0, $40, $80, $00, $20   ; 

- D 0 - I - 0x0191D4 06:91C4: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x0191D6 06:91C6: 2E        .byte $2E, $1B, $0E, $07, $0A, $05, $02, $01, $00, $04   ; 

- D 0 - I - 0x0191E0 06:91D0: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x0191E2 06:91D2: 6F        .byte $6F, $BE, $76, $DC, $7C, $D8, $70, $A0   ; 

- D 0 - I - 0x0191EA 06:91DA: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0191EC 06:91DC: 02        .byte $02, $01   ; 

- D 0 - I - 0x0191EE 06:91DE: 3D        .byte $3D, $0E   ; control byte for 00 + counter

- D 0 - I - 0x0191F0 06:91E0: A0        .byte $A0, $D5, $7A, $13, $08, $05, $02, $01, $1E, $0E, $06, $06, $02   ; 

- D 0 - I - 0x0191FD 06:91ED: 3D        .byte $3D, $07   ; control byte for 00 + counter

- D 0 - I - 0x0191FF 06:91EF: 0F        .byte $0F, $03, $01   ; 

- D 0 - I - 0x019202 06:91F2: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019204 06:91F4: 30        .byte $30, $3C, $1E, $03, $0F, $7F   ; 

- D 0 - I - 0x01920A 06:91FA: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x01920C 06:91FC: FE        .byte $FE   ; 

- D 0 - I - 0x01920D 06:91FD: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01920F 06:91FF: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x019211 06:9201: FE        .byte $FE, $F8, $E0, $80   ; 

- D 0 - I - 0x019215 06:9205: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x019217 06:9207: 01        .byte $01, $07, $1F, $7F, $FF, $E0, $80   ; 

- D 0 - I - 0x01921E 06:920E: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x019220 06:9210: 01        .byte $01   ; 

- D 0 - I - 0x019221 06:9211: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x019223 06:9213: 1F        .byte $1F, $7E, $FC, $F8, $F0, $E0, $F0, $20, $20, $60, $60, $E0, $E0, $E0   ; 

- D 0 - I - 0x019231 06:9221: 3D        .byte $3D, $10   ; control byte for 00 + counter

- D 0 - I - 0x019233 06:9223: C0        .byte $C0, $F8   ; 

- D 0 - I - 0x019235 06:9225: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x019237 06:9227: 07        .byte $07, $07, $07   ; 

- D 0 - I - 0x01923A 06:922A: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01923C 06:922C: F0        .byte $F0   ; 

- D 0 - I - 0x01923D 06:922D: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x01923F 06:922F: 80        .byte $80, $80, $80   ; 

- D 0 - I - 0x019242 06:9232: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x019244 06:9234: 23        .byte $23, $11, $28, $00   ; 

- D 0 - I - 0x019248 06:9238: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x01924A 06:923A: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01924C 06:923C: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x01924E 06:923E: 00        .byte $00   ; 

- D 0 - I - 0x01924F 06:923F: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x019251 06:9241: 1F        .byte $1F, $07   ; 

- D 0 - I - 0x019253 06:9243: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019255 06:9245: 80        .byte $80, $E0, $C0, $3F, $FF, $FA, $D5, $FF, $F0, $80   ; 

- D 0 - I - 0x01925F 06:924F: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x019261 06:9251: 02        .byte $02, $0D, $7B, $EB, $57, $B7, $EF, $EF   ; 

- D 0 - I - 0x019269 06:9259: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01926B 06:925B: F8        .byte $F8, $F0, $F0, $F1, $E1, $E1, $C3, $C3   ; 

- D 0 - I - 0x019273 06:9263: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x019275 06:9265: A0        .byte $A0, $F0, $A8, $F8, $FC, $FC, $FE, $FE   ; 

- D 0 - I - 0x01927D 06:926D: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01927F 06:926F: 05        .byte $05, $0F, $15, $1F, $3F, $3F, $7F, $7F   ; 

- D 0 - I - 0x019287 06:9277: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x019289 06:9279: 1F        .byte $1F, $0F, $0F, $8F, $87, $87, $C3, $C3, $4F, $01   ; 

- D 0 - I - 0x019293 06:9283: 3D        .byte $3D, $07   ; control byte for 00 + counter

- D 0 - I - 0x019295 06:9285: B0        .byte $B0, $DE, $D7, $EA, $ED, $F7, $F7, $F8, $E0   ; 

- D 0 - I - 0x01929E 06:928E: 3D        .byte $3D, $06   ; control byte for 00 + counter

- D 0 - I - 0x0192A0 06:9290: 01        .byte $01, $07, $03, $FC, $FF, $5F, $AB, $FF, $01, $01, $01   ; 

- D 0 - I - 0x0192AB 06:929B: 3D        .byte $3D, $05   ; control byte for 00 + counter

- D 0 - I - 0x0192AD 06:929D: C4        .byte $C4, $88, $14, $00   ; 

- D 0 - I - 0x0192B1 06:92A1: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x0192B3 06:92A3: E0        .byte $E0, $E0, $E0   ; 

- D 0 - I - 0x0192B6 06:92A6: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0192B8 06:92A8: 0F        .byte $0F   ; 

- D 0 - I - 0x0192B9 06:92A9: 43        .byte $43, $04   ; control byte for FF + counter


- D 0 - I - 0x0192BB 06:92AB: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0192BD 06:92AD: 03        .byte $03, $1F   ; 

- D 0 - I - 0x0192BF 06:92AF: 43        .byte $43, $06   ; control byte for FF + counter


- D 0 - I - 0x0192C1 06:92B1: 3D        .byte $3D, $08   ; control byte for 00 + counter


- D 0 - I - 0x0192C3 06:92B3: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x0192C5 06:92B5: FE        .byte $FE, $FE   ; 

- D 0 - I - 0x0192C7 06:92B7: 3D        .byte $3D, $02   ; control byte for 00 + counter

- D 0 - I - 0x0192C9 06:92B9: 01        .byte $01, $03, $07, $0E, $3E, $7E, $DF, $DF, $BF, $BF, $7F, $7F   ; 

- D 0 - I - 0x0192D5 06:92C5: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x0192D7 06:92C7: C3        .byte $C3, $C7, $87, $87, $87, $8F, $0F, $0F   ; 

- D 0 - I - 0x0192DF 06:92CF: 3D        .byte $3D, $09   ; control byte for 00 + counter

- D 0 - I - 0x0192E1 06:92D1: 80        .byte $80, $80, $C0, $E0, $F0, $FC, $FF   ; 

- D 0 - I - 0x0192E8 06:92D8: 3D        .byte $3D, $0F   ; control byte for 00 + counter

- D 0 - I - 0x0192EA 06:92DA: FF        .byte $FF   ; 

- D 0 - I - 0x0192EB 06:92DB: 3D        .byte $3D, $0E   ; control byte for 00 + counter

- D 0 - I - 0x0192ED 06:92DD: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x0192EF 06:92DF: 3D        .byte $3D, $09   ; control byte for 00 + counter

- D 0 - I - 0x0192F1 06:92E1: 01        .byte $01, $01, $03, $07, $0F, $3F, $FF   ; 

- D 0 - I - 0x0192F8 06:92E8: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0192FA 06:92EA: C3        .byte $C3, $E3, $E1, $E1, $E1, $F1, $F0, $F0   ; 

- D 0 - I - 0x019302 06:92F2: 3D        .byte $3D, $0A   ; control byte for 00 + counter

- D 0 - I - 0x019304 06:92F4: 80        .byte $80, $C0, $E0, $70, $7C, $7E, $FB, $FB, $FD, $FD, $FE, $FE   ; 

- D 0 - I - 0x019310 06:9300: 43        .byte $43, $02   ; control byte for FF + counter

- D 0 - I - 0x019312 06:9302: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x019314 06:9304: 43        .byte $43, $06   ; control byte for FF + counter

- D 0 - I - 0x019316 06:9306: 7F        .byte $7F, $7F   ; 

- D 0 - I - 0x019318 06:9308: 3D        .byte $3D, $04   ; control byte for 00 + counter

- D 0 - I - 0x01931A 06:930A: 43        .byte $43, $0C   ; control byte for FF + counter

- D 0 - I - 0x01931C 06:930C: 00        .byte $00, $05, $1B, $FB, $FB, $F7, $F7, $F7, $FD, $FD, $FB, $FB, $FB, $F7, $F7, $F7   ; 
- D 0 - I - 0x01932C 06:931C: FE        .byte $FE, $FC, $FC, $FC, $FC, $F8, $F8, $F8   ; 

- D 0 - I - 0x019334 06:9324: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x019336 06:9326: FE        .byte $FE, $FE, $FE, $FE, $FE, $0F, $0F, $0F, $1F, $1F, $1F, $1F, $1F   ; 

- D 0 - I - 0x019343 06:9333: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x019345 06:9335: F0        .byte $F0, $F0, $F0, $F8, $F8, $F8, $F8, $F8   ; 

- D 0 - I - 0x01934D 06:933D: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x01934F 06:933F: 7F        .byte $7F, $3F, $3F, $3F, $3F, $1F, $1F, $1F   ; 

- D 0 - I - 0x019357 06:9347: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x019359 06:9349: 7F        .byte $7F, $7F, $7F, $7F, $7F, $00, $A0, $D8, $DF, $DF, $EF, $EF, $EF, $BF, $BF, $DF   ; 
- D 0 - I - 0x019369 06:9359: DF        .byte $DF, $DF, $EF, $EF, $EF, $07, $F7, $E7, $EF, $EF, $EF, $CF, $DF, $07, $F7, $E7   ; 
- D 0 - I - 0x019379 06:9369: EF        .byte $EF, $EF, $EF, $CF, $DF, $E0, $E0, $E0, $E0, $E0, $E0, $E0, $E0, $F8, $F8, $F8   ; 
- D 0 - I - 0x019389 06:9379: F8        .byte $F8, $F8, $F8, $F8, $F8, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F   ; 

- D 0 - I - 0x019396 06:9386: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x019398 06:9388: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x01939A 06:938A: F8        .byte $F8, $E7, $9F, $7F   ; 

- D 0 - I - 0x01939E 06:938E: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0193A0 06:9390: 43        .byte $43, $03   ; control byte for FF + counter

- D 0 - I - 0x0193A2 06:9392: 00        .byte $00   ; 

- D 0 - I - 0x0193A3 06:9393: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x0193A5 06:9395: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0193A7 06:9397: 43        .byte $43, $04   ; control byte for FF + counter

- D 0 - I - 0x0193A9 06:9399: 1F        .byte $1F, $E7, $F9, $FE   ; 

- D 0 - I - 0x0193AD 06:939D: 3D        .byte $3D, $08   ; control byte for 00 + counter

- D 0 - I - 0x0193AF 06:939F: FC        .byte $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $3D, $08, $07, $07, $07, $07, $07, $07   ; 
- D 0 - I - 0x0193BF 06:93AF: 07        .byte $07, $07, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $E0, $EF, $E7, $F7, $F7, $F7   ; 
- D 0 - I - 0x0193CF 06:93BF: F3        .byte $F3, $FB, $E0, $EF, $E7, $F7, $F7, $F7, $F3, $FB   ; 



off_04_93C9:
- D 0 - I - 0x0193D9 06:93C9: 02        .byte $02   ; prepare control byte for 00
- D 0 - I - 0x0193DA 06:93CA: 04        .byte $04   ; prepare control byte for FF

- D 0 - I - 0x0193DB 06:93CB: 04        .byte $04, $10   ; control byte for FF + counter

- D 0 - I - 0x0193DD 06:93CD: DF        .byte $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF, $DF   ; normal bytes
- D 0 - I - 0x0193ED 06:93DD: E0        .byte $E0, $E0, $E0, $E0, $E0, $E0, $E0, $E0, $F8, $F8, $F8, $F8, $F8, $F8, $F8, $F8   ; 
- D 0 - I - 0x0193FD 06:93ED: 3F        .byte $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F   ; 

- D 0 - I - 0x019405 06:93F5: 02        .byte $02, $08   ; control byte for 00 + counter

- D 0 - I - 0x019407 06:93F7: 04        .byte $04, $08   ; control byte for FF + counter

- D 0 - I - 0x019409 06:93F9: 02        .byte $02, $08   ; control byte for 00 + counter

- D 0 - I - 0x01940B 06:93FB: 04        .byte $04, $08   ; control byte for FF + counter

- D 0 - I - 0x01940D 06:93FD: 02        .byte $02, $04   ; control byte for 00 + counter

- D 0 - I - 0x01940F 06:93FF: 03        .byte $03, $0F, $3F   ; 

- D 0 - I - 0x019412 06:9402: 04        .byte $04, $09   ; control byte for FF + counter

- D 0 - I - 0x019414 06:9404: 03        .byte $03, $0F, $3F   ; 

- D 0 - I - 0x019417 06:9407: 04        .byte $04, $0D   ; control byte for FF + counter

- D 0 - I - 0x019419 06:9409: C0        .byte $C0, $F0, $FC   ; 

- D 0 - I - 0x01941C 06:940C: 04        .byte $04, $0D   ; control byte for FF + counter

- D 0 - I - 0x01941E 06:940E: 02        .byte $02, $04   ; control byte for 00 + counter

- D 0 - I - 0x019420 06:9410: C0        .byte $C0, $F0, $FC, $FF, $FC, $FC, $FC, $FC, $FC, $FC, $FC, $FC   ; 

- D 0 - I - 0x01942C 06:941C: 02        .byte $02, $08   ; control byte for 00 + counter

- D 0 - I - 0x01942E 06:941E: 07        .byte $07, $07, $07, $07, $07, $07, $07, $07, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F   ; 
- D 0 - I - 0x01943E 06:942E: FB        .byte $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $FB   ; 
- D 0 - I - 0x01944E 06:943E: 00        .byte $00   ; 

- D 0 - I - 0x01944F 06:943F: 04        .byte $04, $07   ; control byte for FF + counter

- D 0 - I - 0x019451 06:9441: 00        .byte $00   ; 

- D 0 - I - 0x019452 06:9442: 04        .byte $04, $07   ; control byte for FF + counter

- D 0 - I - 0x019454 06:9444: 80        .byte $80, $7F, $00, $E0, $F1, $F8, $F8, $FC, $FF, $80, $80, $C0, $E0, $F0, $F8, $F8   ; 
- D 0 - I - 0x019464 06:9454: 01        .byte $01, $FE, $03, $0B, $F7, $EF, $FF, $5F, $FF, $01, $01, $07, $0F, $1F, $1F, $3F   ; 
- D 0 - I - 0x019474 06:9464: 78        .byte $78, $FE, $C7, $C1, $60, $38, $1E, $07, $00, $38, $7E, $7F, $3F, $1F, $07, $01   ; 

- D 0 - I - 0x019484 06:9474: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x019486 06:9476: 80        .byte $80, $F0, $7F, $0F, $03, $83   ; 

- D 0 - I - 0x01948C 06:947C: 02        .byte $02, $03   ; control byte for 00 + counter

- D 0 - I - 0x01948E 06:947E: 80        .byte $80, $F0, $FE, $FE, $FE, $FB, $3F, $0F   ; 

- D 0 - I - 0x019496 06:9486: 02        .byte $02, $05   ; control byte for 00 + counter

- D 0 - I - 0x019498 06:9488: 3E        .byte $3E, $06   ; 

- D 0 - I - 0x01949A 06:948A: 02        .byte $02, $0C   ; control byte for 00 + counter

- D 0 - I - 0x01949C 06:948C: 3F        .byte $3F, $3F   ; 

- D 0 - I - 0x01949E 06:948E: 02        .byte $02, $07   ; control byte for 00 + counter

- D 0 - I - 0x0194A0 06:9490: 1E        .byte $1E, $24, $24, $24, $24, $3F, $3F   ; 

- D 0 - I - 0x0194A7 06:9497: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x0194A9 06:9499: 1B        .byte $1B, $1B, $1B, $1B, $1E   ; 

- D 0 - I - 0x0194AE 06:949E: 02        .byte $02, $0A   ; control byte for 00 + counter

- D 0 - I - 0x0194B0 06:94A0: BE        .byte $BE   ; 

- D 0 - I - 0x0194B1 06:94A1: 02        .byte $02, $08   ; control byte for 00 + counter

- D 0 - I - 0x0194B3 06:94A3: FF        .byte $FF, $C9, $C9, $C1, $C9, $7F, $77, $00, $1C, $36, $36, $3E, $36, $36   ; 

- D 0 - I - 0x0194C1 06:94B1: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x0194C3 06:94B3: F7        .byte $F7, $FF, $8D, $85, $A1, $B1, $FF, $EF, $00, $62, $72, $7A, $5E, $4E, $46   ; 

- D 0 - I - 0x0194D2 06:94C2: 02        .byte $02, $07   ; control byte for 00 + counter

- D 0 - I - 0x0194D4 06:94C4: 01        .byte $01, $F7   ; 

- D 0 - I - 0x0194D6 06:94C6: 02        .byte $02, $08   ; control byte for 00 + counter

- D 0 - I - 0x0194D8 06:94C8: FF        .byte $FF, $8D, $85, $A1, $B1, $FF, $EF, $00, $62, $72, $7A, $5E, $4E, $46   ; 

- D 0 - I - 0x0194E6 06:94D6: 02        .byte $02, $08   ; control byte for 00 + counter

- D 0 - I - 0x0194E8 06:94D8: CE        .byte $CE, $FE   ; 

- D 0 - I - 0x0194EA 06:94DA: 02        .byte $02, $07   ; control byte for 00 + counter

- D 0 - I - 0x0194EC 06:94DC: CC        .byte $CC, $32, $86, $CC, $48, $78, $78   ; 

- D 0 - I - 0x0194F3 06:94E3: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x0194F5 06:94E5: CC        .byte $CC, $78, $30, $30, $30   ; 

- D 0 - I - 0x0194FA 06:94EA: 02        .byte $02, $05   ; control byte for 00 + counter

- D 0 - I - 0x0194FC 06:94EC: 01        .byte $01, $0F, $FE, $F0, $C0, $C1   ; 

- D 0 - I - 0x019502 06:94F2: 02        .byte $02, $03   ; control byte for 00 + counter

- D 0 - I - 0x019504 06:94F4: 01        .byte $01, $0F, $7F, $7F, $7F, $DF, $FC, $F0   ; 

- D 0 - I - 0x01950C 06:94FC: 02        .byte $02, $05   ; control byte for 00 + counter

- D 0 - I - 0x01950E 06:94FE: 7C        .byte $7C, $60   ; 

- D 0 - I - 0x019510 06:9500: 02        .byte $02, $06   ; control byte for 00 + counter

- D 0 - I - 0x019512 06:9502: 1E        .byte $1E, $7F, $E3, $83, $06, $1C, $78, $E0, $00, $1C, $7E, $FE, $FC, $F8, $E0, $80   ; 
- D 0 - I - 0x019522 06:9512: 3F        .byte $3F, $3F, $36, $16, $16, $1F, $1F   ; 

- D 0 - I - 0x019529 06:9519: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x01952B 06:951B: 1D        .byte $1D, $09, $09, $09, $09   ; 

- D 0 - I - 0x019530 06:9520: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x019532 06:9522: F8        .byte $F8, $F8, $08, $A8, $E8, $B8, $B8   ; 

- D 0 - I - 0x019539 06:9529: 02        .byte $02, $02   ; control byte for 00 + counter

- D 0 - I - 0x01953B 06:952B: B0        .byte $B0, $F0, $50, $10, $10   ; 

- D 0 - I - 0x019540 06:9530: 02        .byte $02, $02   ; control byte for 00 + counter



tbl_9532:
; 8th byte is not used
; reads via 0x018047 0x018058 0x01809A
- D 0 - I - 0x019542 06:9532: 00        .byte $00, $3C, $66, $66, $7E, $66, $00, $00   ; 00 
- - - - - - 0x01954A 06:953A: 00        .byte $00, $7C, $66, $7C, $66, $7C, $00, $00   ; 01 
- D 0 - I - 0x019552 06:9542: 00        .byte $00, $3C, $66, $60, $66, $3C, $00, $00   ; 02 
- D 0 - I - 0x01955A 06:954A: 00        .byte $00, $7C, $66, $66, $66, $7C, $00, $00   ; 03 
- D 0 - I - 0x019562 06:9552: 00        .byte $00, $7C, $60, $7C, $60, $7C, $00, $00   ; 04 
- D 0 - I - 0x01956A 06:955A: 00        .byte $00, $7C, $60, $78, $60, $60, $00, $00   ; 05 
- D 0 - I - 0x019572 06:9562: 00        .byte $00, $3E, $60, $66, $62, $3C, $00, $00   ; 06 
- D 0 - I - 0x01957A 06:956A: 00        .byte $00, $66, $66, $7E, $66, $66, $00, $00   ; 07 
- D 0 - I - 0x019582 06:9572: 00        .byte $00, $3C, $18, $18, $18, $3C, $00, $00   ; 08 
- D 0 - I - 0x01958A 06:957A: 00        .byte $00, $3C, $18, $18, $58, $38, $00, $00   ; 09 
- - - - - - 0x019592 06:9582: 00        .byte $00, $66, $6C, $78, $6C, $66, $00, $00   ; 0A 
- D 0 - I - 0x01959A 06:958A: 00        .byte $00, $30, $30, $30, $30, $3C, $00, $00   ; 0B 
- D 0 - I - 0x0195A2 06:9592: 00        .byte $00, $C6, $EE, $FE, $D6, $C6, $00, $00   ; 0C 
- D 0 - I - 0x0195AA 06:959A: 00        .byte $00, $66, $76, $7E, $6E, $66, $00, $00   ; 0D 
- D 0 - I - 0x0195B2 06:95A2: 00        .byte $00, $3C, $66, $66, $66, $3C, $00, $00   ; 0E 
- - - - - - 0x0195BA 06:95AA: 00        .byte $00, $7C, $66, $66, $7C, $60, $00, $00   ; 0F 
- - - - - - 0x0195C2 06:95B2: 00        .byte $00, $3C, $66, $66, $6E, $3C, $06, $00   ; 10 
- D 0 - I - 0x0195CA 06:95BA: 00        .byte $00, $7C, $66, $66, $7C, $66, $00, $00   ; 11 
- D 0 - I - 0x0195D2 06:95C2: 00        .byte $00, $3C, $62, $3C, $46, $3C, $00, $00   ; 12 
- D 0 - I - 0x0195DA 06:95CA: 00        .byte $00, $7E, $18, $18, $18, $18, $00, $00   ; 13 
- - - - - - 0x0195E2 06:95D2: 00        .byte $00, $66, $66, $66, $66, $3C, $00, $00   ; 14 
- - - - - - 0x0195EA 06:95DA: 00        .byte $00, $66, $66, $24, $3C, $18, $00, $00   ; 15 
- D 0 - I - 0x0195F2 06:95E2: 00        .byte $00, $C6, $D6, $FE, $EE, $44, $00, $00   ; 16 
- - - - - - 0x0195FA 06:95EA: 00        .byte $00, $C6, $6C, $38, $6C, $C6, $00, $00   ; 17 
- D 0 - I - 0x019602 06:95F2: 00        .byte $00, $66, $3C, $18, $18, $18, $00, $00   ; 18 
- - - - - - 0x01960A 06:95FA: 00        .byte $00, $7E, $0C, $18, $30, $7E, $00, $00   ; 19 
- D 0 - I - 0x019612 06:9602: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 1A 
- D 0 - I - 0x01961A 06:960A: 00        .byte $00, $00, $00, $00, $18, $18, $00, $00   ; 1B 



off_05_9612:
off_0B_9612:
off_0C_9612:
off_0D_9612:
off_10_9612:
off_11_9612:
off_12_9612:
off_13_9612:
- D 0 - I - 0x019622 06:9612: 7C        .byte $7C, $82, $9A, $A2, $A2, $9A, $82, $7C   ; 
tbl_961A:   ; continue of above pointers
- D 0 - I - 0x01962A 06:961A: 38        .byte $38, $6C, $C6, $C6, $FE, $C6, $C6, $00   ; 
- D 0 - I - 0x019632 06:9622: FC        .byte $FC, $C6, $C6, $FC, $C6, $C6, $FC, $00   ; 
- D 0 - I - 0x01963A 06:962A: 3C        .byte $3C, $66, $C0, $C0, $C0, $66, $3C, $00   ; 
- D 0 - I - 0x019642 06:9632: F8        .byte $F8, $CC, $C6, $C6, $C6, $CC, $F8, $00   ; 
- D 0 - I - 0x01964A 06:963A: FE        .byte $FE, $C0, $C0, $FC, $C0, $C0, $FE, $00   ; 
- D 0 - I - 0x019652 06:9642: FE        .byte $FE, $C0, $C0, $FC, $C0, $C0, $C0, $00   ; 
- D 0 - I - 0x01965A 06:964A: 3C        .byte $3C, $60, $C0, $CE, $C6, $66, $3E, $00   ; 
- D 0 - I - 0x019662 06:9652: C6        .byte $C6, $C6, $C6, $FE, $C6, $C6, $C6, $00   ; 
- D 0 - I - 0x01966A 06:965A: 3C        .byte $3C, $18, $18, $18, $18, $18, $3C, $00   ; 
- D 0 - I - 0x019672 06:9662: 1E        .byte $1E, $0C, $0C, $0C, $0C, $CC, $78, $00   ; 
- D 0 - I - 0x01967A 06:966A: C6        .byte $C6, $CC, $D8, $F0, $F8, $DC, $CE, $00   ; 
- D 0 - I - 0x019682 06:9672: 60        .byte $60, $60, $60, $60, $60, $60, $7E, $00   ; 
- D 0 - I - 0x01968A 06:967A: C6        .byte $C6, $EE, $FE, $FE, $D6, $C6, $C6, $00   ; 
- D 0 - I - 0x019692 06:9682: C6        .byte $C6, $E6, $F6, $FE, $DE, $CE, $C6, $00   ; 
- D 0 - I - 0x01969A 06:968A: 7C        .byte $7C, $C6, $C6, $C6, $C6, $C6, $7C, $00   ; 
- D 0 - I - 0x0196A2 06:9692: FC        .byte $FC, $C6, $C6, $C6, $FC, $C0, $C0, $00   ; 
- D 0 - I - 0x0196AA 06:969A: 38        .byte $38, $6C, $C6, $C6, $DE, $6C, $3A, $00   ; 
- D 0 - I - 0x0196B2 06:96A2: FC        .byte $FC, $C6, $C6, $FC, $D8, $CC, $C6, $00   ; 
- D 0 - I - 0x0196BA 06:96AA: 7C        .byte $7C, $C6, $C0, $7C, $06, $C6, $7C, $00   ; 
- D 0 - I - 0x0196C2 06:96B2: 7E        .byte $7E, $18, $18, $18, $18, $18, $18, $00   ; 
- D 0 - I - 0x0196CA 06:96BA: C6        .byte $C6, $C6, $C6, $C6, $C6, $C6, $7C, $00   ; 
- D 0 - I - 0x0196D2 06:96C2: C6        .byte $C6, $C6, $6C, $6C, $38, $38, $10, $00   ; 
- D 0 - I - 0x0196DA 06:96CA: C6        .byte $C6, $C6, $D6, $FE, $FE, $EE, $C6, $00   ; 
- D 0 - I - 0x0196E2 06:96D2: C6        .byte $C6, $C6, $6C, $38, $6C, $C6, $C6, $00   ; 
- D 0 - I - 0x0196EA 06:96DA: 66        .byte $66, $66, $66, $3C, $18, $18, $18, $00   ; 
- D 0 - I - 0x0196F2 06:96E2: FE        .byte $FE, $0E, $1C, $38, $70, $E0, $FE, $00   ; 



off_05_96EA:
off_08_96EA:
off_0B_96EA:
off_0C_96EA:
off_0D_96EA:
off_10_96EA:
- D 0 - I - 0x0196FA 06:96EA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 



off_05_96F2:
off_0C_96F2:
off_0D_96F2:
off_10_96F2:
- D 0 - I - 0x019702 06:96F2: 00        .byte $00, $00, $00, $00, $00, $00, $18, $30   ; 
- D 0 - I - 0x01970A 06:96FA: 00        .byte $00, $00, $00, $FE, $FE, $00, $00, $00   ; 
- D 0 - I - 0x019712 06:9702: 00        .byte $00, $00, $00, $00, $00, $18, $18, $00   ; 
- D 0 - I - 0x01971A 06:970A: 18        .byte $18, $30, $00, $00, $00, $00, $00, $00   ; 



off_05_9712:
off_0C_9712:
off_0D_9712:
off_10_9712:
- D 0 - I - 0x019722 06:9712: 38        .byte $38, $4C, $C6, $C6, $C6, $64, $38, $00   ; 
- D 0 - I - 0x01972A 06:971A: 18        .byte $18, $38, $18, $18, $18, $18, $7E, $00   ; 
- D 0 - I - 0x019732 06:9722: 7C        .byte $7C, $C6, $0E, $3C, $78, $E0, $FE, $00   ; 
- D 0 - I - 0x01973A 06:972A: 7E        .byte $7E, $0C, $18, $3C, $06, $C6, $7C, $00   ; 
- D 0 - I - 0x019742 06:9732: 1C        .byte $1C, $3C, $6C, $CC, $FE, $0C, $0C, $00   ; 
- D 0 - I - 0x01974A 06:973A: FC        .byte $FC, $C0, $FC, $06, $06, $06, $7C, $00   ; 
- D 0 - I - 0x019752 06:9742: 3C        .byte $3C, $60, $C0, $FC, $C6, $C6, $7C, $00   ; 
- D 0 - I - 0x01975A 06:974A: FE        .byte $FE, $C6, $0C, $18, $30, $30, $30, $00   ; 
- D 0 - I - 0x019762 06:9752: 7C        .byte $7C, $C6, $C6, $7C, $C6, $C6, $7C, $00   ; 
- D 0 - I - 0x01976A 06:975A: 7C        .byte $7C, $C6, $C6, $7E, $06, $0C, $78, $00   ; 
- D 0 - I - 0x019772 06:9762: 00        .byte $00, $60, $60, $00, $60, $60, $00, $00   ; 
- D 0 - I - 0x01977A 06:976A: 18        .byte $18, $30, $60, $60, $60, $30, $18, $00   ; 
- D 0 - I - 0x019782 06:9772: 18        .byte $18, $0C, $06, $06, $06, $0C, $18, $00   ; 
- D 0 - I - 0x01978A 06:977A: 38        .byte $38, $44, $B2, $AA, $B2, $AA, $44, $38   ; 
- D 0 - I - 0x019792 06:9782: 0C        .byte $0C, $08, $18, $10, $30, $20, $60, $00   ; 



off_0D_978A:
- D 0 - I - 0x01979A 06:978A: EE        .byte $EE, $84, $E4, $24, $E4, $00, $00, $00   ; 
- D 0 - I - 0x0197A2 06:9792: 96        .byte $96, $D5, $F5, $B5, $96, $00, $00, $00   ; 
- D 0 - I - 0x0197AA 06:979A: E6        .byte $E6, $95, $F5, $A5, $96, $00, $00, $00   ; 
- D 0 - I - 0x0197B2 06:97A2: EA        .byte $EA, $4A, $4E, $4A, $4A, $00, $00, $00   ; 



off_05_97AA:
- D 0 - I - 0x0197BA 06:97AA: 03        .byte $03   ; prepare control byte for 00
- D 0 - I - 0x0197BB 06:97AB: 09        .byte $09   ; prepare control byte for FF

- D 0 - I - 0x0197BC 06:97AC: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0197BE 06:97AE: 1E        .byte $1E, $0E, $0E, $0E, $0E, $1C, $7E, $41, $40, $40, $20, $20, $20, $41   ; normal bytes

- D 0 - I - 0x0197CC 06:97BC: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0197CE 06:97BE: 3F        .byte $3F, $1F, $18, $18, $18, $38, $7F, $80, $80, $80, $C0, $C1, $C3, $83   ; 

- D 0 - I - 0x0197DC 06:97CC: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0197DE 06:97CE: E1        .byte $E1, $F0, $F0, $70, $60, $61, $F3, $0C, $04, $04, $06, $06, $06, $0C   ; 

- D 0 - I - 0x0197EC 06:97DC: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0197EE 06:97DE: FE        .byte $FE, $FE, $C7, $C3, $C3, $83, $FE, $01   ; 

- D 0 - I - 0x0197F6 06:97E6: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x0197F8 06:97E8: 18        .byte $18, $18, $38   ; 

- D 0 - I - 0x0197FB 06:97EB: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0197FD 06:97ED: 71        .byte $71, $38, $38, $1D, $1D, $0F, $FB, $04, $00, $02, $02, $40, $40, $60   ; 

- D 0 - I - 0x01980B 06:97FB: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01980D 06:97FD: E0        .byte $E0, $E0, $C0, $C0, $80, $00, $E0, $10, $08, $08, $08, $10, $20, $40   ; 

- D 0 - I - 0x01981B 06:980B: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01981D 06:980D: 1C        .byte $1C, $0E, $0E, $1C, $1C, $1F, $7E, $41, $40, $20, $20, $40, $40, $40   ; 

- D 0 - I - 0x01982B 06:981B: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01982D 06:981D: 38        .byte $38, $1C, $1C, $38, $38, $F8, $7E, $82, $80, $C0, $C1, $81, $02, $02   ; 

- D 0 - I - 0x01983B 06:982B: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01983D 06:982D: FF        .byte $FF, $7F, $70, $60, $E0   ; 

- D 0 - I - 0x019842 06:9832: 09        .byte $09, $02   ; control byte for FF + counter

- D 0 - I - 0x019844 06:9834: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x019846 06:9836: 07        .byte $07   ; 

- D 0 - I - 0x019847 06:9837: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x019849 06:9839: 8F        .byte $8F, $07, $05, $0C, $0C, $18, $DF, $20, $20, $30, $70, $E0, $60, $40   ; 

- D 0 - I - 0x019857 06:9847: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x019859 06:9849: 87        .byte $87, $C7, $C0, $C0, $C1, $C1, $9F, $50, $30, $10, $18, $16, $14, $14   ; 

- D 0 - I - 0x019867 06:9857: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x019869 06:9859: FC        .byte $FC, $F8, $E0, $E0, $C0, $C0, $FF, $01, $01, $02, $04, $08, $10, $10, $1C, $1C   ; 
- D 0 - I - 0x019879 06:9869: 38        .byte $38, $38, $38, $0C   ; 

- D 0 - I - 0x01987D 06:986D: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01987F 06:986F: 41        .byte $41, $41, $83, $83, $81, $41, $21, $1E, $30, $30, $71, $71, $71, $38   ; 

- D 0 - I - 0x01988D 06:987D: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01988F 06:987F: 86        .byte $86, $86, $04, $04, $00, $82, $43, $3C, $E1, $E3, $C3, $C3, $C3, $E1   ; 

- D 0 - I - 0x01989D 06:988D: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01989F 06:988F: 0C        .byte $0C, $08, $18, $18, $08, $0C, $0A, $F1, $86, $86, $0E, $1C, $FC, $F8   ; 

- D 0 - I - 0x0198AD 06:989D: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0198AF 06:989F: 30        .byte $30, $30, $60, $00, $01, $01, $02, $FC, $0E, $1C, $1C, $38, $38, $1C   ; 

- D 0 - I - 0x0198BD 06:98AD: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0198BF 06:98AF: E0        .byte $E0, $C1, $C1, $82, $82, $81, $41, $3F   ; 

- D 0 - I - 0x0198C7 06:98B7: 03        .byte $03, $08   ; control byte for 00 + counter

- D 0 - I - 0x0198C9 06:98B9: 80        .byte $80   ; 

- D 0 - I - 0x0198CA 06:98BA: 03        .byte $03, $07   ; control byte for 00 + counter

- D 0 - I - 0x0198CC 06:98BC: 1F        .byte $1F, $38, $38, $38, $38, $1C   ; 

- D 0 - I - 0x0198D2 06:98C2: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0198D4 06:98C4: 40        .byte $40, $80, $83, $83, $83, $41, $21, $1E, $F0, $70, $71, $71, $70, $38   ; 

- D 0 - I - 0x0198E2 06:98D2: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0198E4 06:98D4: 02        .byte $02, $02, $04, $04, $06, $82, $43, $3C, $FE, $E0, $C0, $C0, $FF, $7E   ; 

- D 0 - I - 0x0198F2 06:98E2: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x0198F4 06:98E4: 0F        .byte $0F   ; 

- D 0 - I - 0x0198F5 06:98E5: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x0198F7 06:98E7: 80        .byte $80, $FF, $1F, $1F, $38, $38, $38, $1C   ; 

- D 0 - I - 0x0198FF 06:98EF: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x019901 06:98F1: 40        .byte $40, $C0, $80, $02, $02, $00, $C1, $3E, $C1, $C3, $E3, $E3, $E3, $71   ; 

- D 0 - I - 0x01990F 06:98FF: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x019911 06:9901: 14        .byte $14, $18, $08, $08, $00, $04, $06, $F9, $C0, $80, $80, $80, $80, $C0   ; 

- D 0 - I - 0x01991F 06:990F: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x019921 06:9911: 10        .byte $10, $30, $20, $20, $20, $10, $10, $F0   ; 



off_08_9919:
- D 0 - I - 0x019929 06:9919: 03        .byte $03   ; prepare control byte for 00
- D 0 - I - 0x01992A 06:991A: 06        .byte $06   ; prepare control byte for FF

- D 0 - I - 0x01992B 06:991B: 04        .byte $04, $00, $01, $10, $14   ; normal bytes

- D 0 - I - 0x019930 06:9920: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x019932 06:9922: 0C        .byte $0C, $1E, $0F, $0A   ; 

- D 0 - I - 0x019936 06:9926: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x019938 06:9928: 28        .byte $28, $01   ; 

- D 0 - I - 0x01993A 06:992A: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x01993C 06:992C: 28        .byte $28   ; 

- D 0 - I - 0x01993D 06:992D: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01993F 06:992F: 38        .byte $38, $3E, $18, $1C, $0E, $14, $08, $00, $21   ; 

- D 0 - I - 0x019948 06:9938: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x01994A 06:993A: 80        .byte $80, $20, $00, $3C, $1E, $18, $38, $68, $48, $10, $10, $02   ; 

- D 0 - I - 0x019956 06:9946: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x019958 06:9948: 80        .byte $80, $01, $80, $00, $18, $0E, $0F, $3D, $79, $10, $60, $10, $40   ; 

- D 0 - I - 0x019965 06:9955: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x019967 06:9957: 94        .byte $94   ; 

- D 0 - I - 0x019968 06:9958: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01996A 06:995A: 10        .byte $10, $70, $E0, $F8, $BC, $08, $00, $90   ; 

- D 0 - I - 0x019972 06:9962: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x019974 06:9964: 08        .byte $08   ; 

- D 0 - I - 0x019975 06:9965: 03        .byte $03, $04   ; control byte for 00 + counter

- D 0 - I - 0x019977 06:9967: F0        .byte $F0, $38, $78, $60   ; 

- D 0 - I - 0x01997B 06:996B: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x01997D 06:996D: 40        .byte $40, $08   ; 

- D 0 - I - 0x01997F 06:996F: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x019981 06:9971: 48        .byte $48   ; 

- D 0 - I - 0x019982 06:9972: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x019984 06:9974: C0        .byte $C0, $F0, $C0, $E0, $30   ; 

- D 0 - I - 0x019989 06:9979: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x01998B 06:997B: 10        .byte $10, $80, $00, $04   ; 

- D 0 - I - 0x01998F 06:997F: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x019991 06:9981: 44        .byte $44, $00, $18, $7C, $18, $18, $38, $48, $00, $08, $05   ; 

- D 0 - I - 0x01999C 06:998C: 03        .byte $03, $05   ; control byte for 00 + counter

- D 0 - I - 0x01999E 06:998E: 22        .byte $22, $00, $18, $1E, $18, $1C, $0E, $3A   ; 

- D 0 - I - 0x0199A6 06:9996: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199A8 06:9998: 10        .byte $10, $80, $08   ; 

- D 0 - I - 0x0199AB 06:999B: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x0199AD 06:999D: 84        .byte $84   ; 

- D 0 - I - 0x0199AE 06:999E: 03        .byte $03, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199B0 06:99A0: 38        .byte $38, $F4, $18, $78, $C8, $08, $04, $00, $21   ; 

- D 0 - I - 0x0199B9 06:99A9: 03        .byte $03, $03   ; control byte for 00 + counter

- D 0 - I - 0x0199BB 06:99AB: 02        .byte $02, $40, $00, $0C, $1E, $18, $1C, $34, $64, $00   ; 



off_08_99B5:
- D 0 - I - 0x0199C5 06:99B5: 05        .byte $05   ; prepare control byte for 00
- D 0 - I - 0x0199C6 06:99B6: 0B        .byte $0B   ; prepare control byte for FF

- D 0 - I - 0x0199C7 06:99B7: 00        .byte $00, $50, $00, $16, $02, $01, $50, $00, $02, $08, $65, $28, $3C, $64, $08   ; normal bytes

- D 0 - I - 0x0199D6 06:99C6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199D8 06:99C8: 50        .byte $50, $08, $06, $02, $04, $50   ; 

- D 0 - I - 0x0199DE 06:99CE: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199E0 06:99D0: 0A        .byte $0A, $64, $38, $3C, $61, $08   ; 

- D 0 - I - 0x0199E6 06:99D6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199E8 06:99D8: 51        .byte $51, $00, $16, $02, $00, $50   ; 

- D 0 - I - 0x0199EE 06:99DE: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199F0 06:99E0: 08        .byte $08, $64, $28, $3D, $64, $0A   ; 

- D 0 - I - 0x0199F6 06:99E6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x0199F8 06:99E8: 50        .byte $50, $00, $17, $02, $04, $50   ; 

- D 0 - I - 0x0199FE 06:99EE: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019A00 06:99F0: 0A        .byte $0A, $64, $28, $3C, $60, $09   ; 

- D 0 - I - 0x019A06 06:99F6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019A08 06:99F8: 58        .byte $58, $64, $3E, $3E, $64, $58, $00, $58, $A4, $9A, $41, $41, $9A, $A4, $58   ; 

- D 0 - I - 0x019A17 06:9A07: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019A19 06:9A09: 08        .byte $08   ; 

- D 0 - I - 0x019A1A 06:9A0A: 05        .byte $05, $08   ; control byte for 00 + counter

- D 0 - I - 0x019A1C 06:9A0C: 1C        .byte $1C   ; 

- D 0 - I - 0x019A1D 06:9A0D: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019A1F 06:9A0F: 08        .byte $08, $04, $02, $14   ; 

- D 0 - I - 0x019A23 06:9A13: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019A25 06:9A15: 18        .byte $18, $3C, $2A, $10, $08, $04, $24, $02, $02, $0A, $01, $00, $10, $38, $18, $0C   ; 
- D 0 - I - 0x019A35 06:9A25: 0C        .byte $0C, $04, $02, $42, $10, $04, $08, $08, $50, $A0   ; 

- D 0 - I - 0x019A3F 06:9A2F: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019A41 06:9A31: 44        .byte $44, $78, $30, $70, $A0   ; 

- D 0 - I - 0x019A46 06:9A36: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019A48 06:9A38: 10        .byte $10, $88, $08, $08, $08, $90   ; 

- D 0 - I - 0x019A4E 06:9A3E: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019A50 06:9A40: 10        .byte $10, $70, $10, $30, $60   ; 

- D 0 - I - 0x019A55 06:9A45: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019A57 06:9A47: 10        .byte $10, $88, $08, $08, $08, $20, $04, $40, $00, $10, $70, $10, $30, $50, $58, $00   ; 
- D 0 - I - 0x019A67 06:9A57: 10        .byte $10, $40, $08, $18, $10, $20, $A0, $40, $00, $30, $F0, $60, $60, $C0, $40, $80   ; 
- D 0 - I - 0x019A77 06:9A67: 08        .byte $08, $04, $4A, $10, $00, $24, $C0, $80, $00, $18, $34, $20, $38, $48   ; 

- D 0 - I - 0x019A85 06:9A75: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019A87 06:9A77: 10        .byte $10   ; 

- D 0 - I - 0x019A88 06:9A78: 05        .byte $05, $0E   ; control byte for 00 + counter

- D 0 - I - 0x019A8A 06:9A7A: 10        .byte $10, $00, $08, $20   ; 

- D 0 - I - 0x019A8E 06:9A7E: 05        .byte $05, $0B   ; control byte for 00 + counter

- D 0 - I - 0x019A90 06:9A80: 08        .byte $08, $08, $00, $42   ; 

- D 0 - I - 0x019A94 06:9A84: 05        .byte $05, $0B   ; control byte for 00 + counter

- D 0 - I - 0x019A96 06:9A86: 08        .byte $08   ; 

- D 0 - I - 0x019A97 06:9A87: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019A99 06:9A89: 80        .byte $80   ; 

- D 0 - I - 0x019A9A 06:9A8A: 05        .byte $05, $17   ; control byte for 00 + counter

- D 0 - I - 0x019A9C 06:9A8C: 18        .byte $18, $18   ; 

- D 0 - I - 0x019A9E 06:9A8E: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019AA0 06:9A90: 14        .byte $14, $22, $00, $22, $14   ; 

- D 0 - I - 0x019AA5 06:9A95: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019AA7 06:9A97: 08        .byte $08, $08, $1C, $7F, $1C, $08, $08, $08, $1C, $22, $41, $41, $22, $1C, $00, $08   ; 
- D 0 - I - 0x019AB7 06:9AA7: 22        .byte $22, $5D, $3E, $3E, $5D, $22, $08   ; 

- D 0 - I - 0x019ABE 06:9AAE: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019AC0 06:9AB0: 0A        .byte $0A, $55, $6F, $7B, $3E, $1C, $1C, $3E, $75, $2A, $10, $04   ; 

- D 0 - I - 0x019ACC 06:9ABC: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019ACE 06:9ABE: 0C        .byte $0C, $37, $5C, $FB, $7F, $1F, $0D, $0C, $33, $48, $A3, $04   ; 

- D 0 - I - 0x019ADA 06:9ACA: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019ADC 06:9ACC: C0        .byte $C0, $78, $CE, $B3, $FD, $FE, $D0, $C0, $38, $86, $31, $4C, $02   ; 

- D 0 - I - 0x019AE9 06:9AD9: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019AEB 06:9ADB: 03        .byte $03, $1D, $2F, $9C, $6F, $73, $21, $00, $0C, $02, $10, $63, $10   ; 

- D 0 - I - 0x019AF8 06:9AE8: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019AFA 06:9AEA: E0        .byte $E0, $F0, $C8, $9F, $76, $FA, $DC, $E0, $10, $00, $32, $60, $88, $04, $00, $01   ; 
- D 0 - I - 0x019B0A 06:9AFA: 07        .byte $07, $3D, $5A, $74, $00, $12, $0F, $06, $18, $42, $A0, $80, $00, $2C, $00, $C0   ; 
- D 0 - I - 0x019B1A 06:9B0A: 70        .byte $70, $40, $A4, $1E, $3E, $F0, $80, $00, $80, $00, $1A, $21, $40   ; 

- D 0 - I - 0x019B27 06:9B17: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019B29 06:9B19: 23        .byte $23, $48, $24, $C0, $28, $01, $12, $0D   ; 

- D 0 - I - 0x019B31 06:9B21: 05        .byte $05, $08   ; control byte for 00 + counter

- D 0 - I - 0x019B33 06:9B23: 40        .byte $40, $90, $40, $96, $21, $1A, $60   ; 

- D 0 - I - 0x019B3A 06:9B2A: 05        .byte $05, $0A   ; control byte for 00 + counter

- D 0 - I - 0x019B3C 06:9B2C: 12        .byte $12, $15, $35, $AF, $CA, $96, $7C, $00, $14, $3E, $7E, $7C, $7C, $78   ; 

- D 0 - I - 0x019B4A 06:9B3A: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019B4C 06:9B3C: 23        .byte $23, $43, $C9, $CA, $AA, $5A, $34, $00, $22, $6A, $6E, $7C, $7E, $3C, $18, $81   ; 
- D 0 - I - 0x019B5C 06:9B4C: 91        .byte $91, $4A, $CB, $E3, $66, $2A, $1C, $81, $D3, $EF, $6E, $7E, $3C, $1C, $10, $20   ; 
- D 0 - I - 0x019B6C 06:9B5C: 21        .byte $21, $33, $52, $23, $67, $26, $34, $20, $73, $73, $77, $76, $3C, $1C, $18   ; 



off_08_9B6B:
- D 0 - I - 0x019B7B 06:9B6B: 00        .byte $00, $00, $00, $00, $10, $08, $04, $00, $00, $00, $00, $20, $20, $10, $08, $00   ; 
- D 0 - I - 0x019B8B 06:9B7B: 00        .byte $00, $00, $00, $08, $08, $08, $08, $00, $00, $00, $00, $10, $10, $10, $10, $00   ; 
- D 0 - I - 0x019B9B 06:9B8B: 00        .byte $00, $00, $00, $00, $00, $3C, $00, $00, $00, $00, $00, $00, $3C, $00, $00, $00   ; 
- D 0 - I - 0x019BAB 06:9B9B: 00        .byte $00, $00, $00, $08, $21, $02, $04, $00, $00, $00, $08, $20, $02, $04, $00, $00   ; 
- D 0 - I - 0x019BBB 06:9BAB: 00        .byte $00, $08, $00, $00, $40, $02, $00, $00, $08, $00, $00, $40, $02, $00, $00, $00   ; 
- D 0 - I - 0x019BCB 06:9BBB: 00        .byte $00, $00, $00, $00, $08, $00, $20, $02, $00, $00, $00, $08, $00, $20, $02, $00   ; 
- D 0 - I - 0x019BDB 06:9BCB: 00        .byte $00, $00, $00, $00, $00, $00, $02, $6F, $00, $00, $00, $00, $00, $00, $44, $00   ; 



off_08_9BDB:
- D 0 - I - 0x019BEB 06:9BDB: 00        .byte $00, $00, $00, $04, $25, $3C, $00, $00, $00, $00, $00, $38, $DA, $00, $00, $00   ; 
- D 0 - I - 0x019BFB 06:9BEB: 00        .byte $00, $00, $12, $FF, $21, $1E, $00, $00, $00, $00, $0C, $00, $5E, $00, $00, $00   ; 
- D 0 - I - 0x019C0B 06:9BFB: FF        .byte $FF, $B5, $55, $51, $3F, $0E, $0A, $1B, $00, $4A, $2A, $2E, $00, $00, $00, $00   ; 
- D 0 - I - 0x019C1B 06:9C0B: 00        .byte $00, $75, $74, $44, $44, $EE, $02, $09, $FF, $8A, $8B, $BB, $BB, $11, $1D, $16   ; 
- D 0 - I - 0x019C2B 06:9C1B: 01        .byte $01, $5D, $49, $49, $49, $EF, $28, $90, $FE, $A2, $B6, $B6, $B6, $10, $D0, $60   ; 
- D 0 - I - 0x019C3B 06:9C2B: 04        .byte $04, $3C, $38, $28, $6C, $00, $00, $00, $78, $40, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x019C4B 06:9C3B: 00        .byte $00, $75, $54, $74, $44, $44, $11, $EE, $FF, $8A, $AB, $8B, $BB, $BB, $EE, $11   ; 
- D 0 - I - 0x019C5B 06:9C4B: 01        .byte $01, $5D, $49, $49, $49, $49, $11, $EF, $FE, $A2, $B6, $B6, $B6, $B6, $EE, $10   ; 
- D 0 - I - 0x019C6B 06:9C5B: 0A        .byte $0A, $2A, $04, $08, $08, $38, $38, $28, $74, $54, $78, $30, $30, $00, $00, $00   ; 
- D 0 - I - 0x019C7B 06:9C6B: 28        .byte $28, $6C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



off_08_9C7B:
- D 0 - I - 0x019C8B 06:9C7B: 05        .byte $05   ; prepare control byte for 00
- D 0 - I - 0x019C8C 06:9C7C: 07        .byte $07   ; prepare control byte for FF

- D 0 - I - 0x019C8D 06:9C7D: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019C8F 06:9C7F: 30        .byte $30, $3C, $14, $08, $60   ; normal bytes

- D 0 - I - 0x019C94 06:9C84: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019C96 06:9C86: 20        .byte $20, $20, $68, $70, $10   ; 

- D 0 - I - 0x019C9B 06:9C8B: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019C9D 06:9C8D: 32        .byte $32, $34, $0C, $04, $48   ; 

- D 0 - I - 0x019CA2 06:9C92: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CA4 06:9C94: 20        .byte $20, $20, $72, $78, $30, $04, $04, $06, $32, $30, $04, $08, $48   ; 

- D 0 - I - 0x019CB1 06:9CA1: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CB3 06:9CA3: 24        .byte $24, $2C, $78, $70, $30, $04, $04, $06, $32, $30, $04, $08, $48   ; 

- D 0 - I - 0x019CC0 06:9CB0: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CC2 06:9CB2: 24        .byte $24, $2C, $78, $70, $30, $04, $04, $06, $32, $30, $04, $08, $48   ; 

- D 0 - I - 0x019CCF 06:9CBF: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CD1 06:9CC1: 24        .byte $24, $2C, $78, $70, $30, $04, $04, $06, $32, $30, $04, $08, $48   ; 

- D 0 - I - 0x019CDE 06:9CCE: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CE0 06:9CD0: 24        .byte $24, $2C, $78, $70, $30   ; 

- D 0 - I - 0x019CE5 06:9CD5: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CE7 06:9CD7: 32        .byte $32, $34, $0C, $04, $48   ; 

- D 0 - I - 0x019CEC 06:9CDC: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CEE 06:9CDE: 20        .byte $20, $20, $72, $78, $30   ; 

- D 0 - I - 0x019CF3 06:9CE3: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CF5 06:9CE5: 30        .byte $30, $3C, $14, $08, $60   ; 

- D 0 - I - 0x019CFA 06:9CEA: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019CFC 06:9CEC: 20        .byte $20, $20, $68, $70, $10   ; 

- D 0 - I - 0x019D01 06:9CF1: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019D03 06:9CF3: 04        .byte $04   ; 

- D 0 - I - 0x019D04 06:9CF4: 05        .byte $05, $07   ; control byte for 00 + counter

- D 0 - I - 0x019D06 06:9CF6: 04        .byte $04   ; 

- D 0 - I - 0x019D07 06:9CF7: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019D09 06:9CF9: 0A        .byte $0A, $04   ; 

- D 0 - I - 0x019D0B 06:9CFB: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019D0D 06:9CFD: 0A        .byte $0A, $04   ; 

- D 0 - I - 0x019D0F 06:9CFF: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019D11 06:9D01: 02        .byte $02, $10, $00, $0A, $04   ; 

- D 0 - I - 0x019D16 06:9D06: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019D18 06:9D08: 02        .byte $02, $10, $00, $0A, $04   ; 

- D 0 - I - 0x019D1D 06:9D0D: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019D1F 06:9D0F: 12        .byte $12, $00, $04   ; 

- D 0 - I - 0x019D22 06:9D12: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019D24 06:9D14: 12        .byte $12, $00, $04   ; 

- D 0 - I - 0x019D27 06:9D17: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019D29 06:9D19: 02        .byte $02, $10   ; 

- D 0 - I - 0x019D2B 06:9D1B: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019D2D 06:9D1D: 02        .byte $02, $10   ; 

- D 0 - I - 0x019D2F 06:9D1F: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019D31 06:9D21: 41        .byte $41   ; 

- D 0 - I - 0x019D32 06:9D22: 05        .byte $05, $07   ; control byte for 00 + counter

- D 0 - I - 0x019D34 06:9D24: 41        .byte $41   ; 

- D 0 - I - 0x019D35 06:9D25: 05        .byte $05, $07   ; control byte for 00 + counter

- D 0 - I - 0x019D37 06:9D27: 7C        .byte $7C, $3F, $9E, $31, $32, $04, $08, $08, $7C, $3F, $9F, $A2, $E4, $78, $30, $30   ; 
- D 0 - I - 0x019D47 06:9D37: 01        .byte $01, $01, $01, $E3, $63, $03, $13, $12, $01, $01, $01, $C3, $C3, $F9, $6D, $62   ; 

- D 0 - I - 0x019D57 06:9D47: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019D59 06:9D49: 80        .byte $80, $70, $38, $0C, $86, $4F   ; 

- D 0 - I - 0x019D5F 06:9D4F: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019D61 06:9D51: 80        .byte $80, $E0, $68, $7C, $FA, $B7, $C0, $60, $30, $38, $58, $00, $04, $04, $C0, $60   ; 
- D 0 - I - 0x019D71 06:9D61: 30        .byte $30, $30, $50, $7C, $3C, $1C, $7C, $3F, $9E, $31, $32, $04, $08, $08, $54, $2A   ; 
- D 0 - I - 0x019D81 06:9D71: 95        .byte $95, $A2, $E4, $78, $30, $30, $01, $01, $01, $E3, $63, $03, $13, $12, $00, $01   ; 
- D 0 - I - 0x019D91 06:9D81: 00        .byte $00, $C1, $C2, $F9, $6C, $60   ; 

- D 0 - I - 0x019D97 06:9D87: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019D99 06:9D89: 80        .byte $80, $70, $38, $0C, $86, $4F   ; 

- D 0 - I - 0x019D9F 06:9D8F: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019DA1 06:9D91: A0        .byte $A0, $60, $78, $F8, $B6, $C0, $60, $30, $38, $58, $00, $04, $04, $40, $20, $10   ; 
- D 0 - I - 0x019DB1 06:9DA1: 20        .byte $20, $50, $7C, $3C, $18   ; 

- D 0 - I - 0x019DB6 06:9DA6: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019DB8 06:9DA8: 0C        .byte $0C   ; 

- D 0 - I - 0x019DB9 06:9DA9: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019DBB 06:9DAB: 04        .byte $04, $0C   ; 

- D 0 - I - 0x019DBD 06:9DAD: 05        .byte $05, $07   ; control byte for 00 + counter

- D 0 - I - 0x019DBF 06:9DAF: 12        .byte $12, $0E   ; 

- D 0 - I - 0x019DC1 06:9DB1: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019DC3 06:9DB3: 08        .byte $08, $1C, $0C   ; 

- D 0 - I - 0x019DC6 06:9DB6: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019DC8 06:9DB8: 08        .byte $08, $00, $02, $02, $0C   ; 

- D 0 - I - 0x019DCD 06:9DBD: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019DCF 06:9DBF: 10        .byte $10, $3C, $3C, $1C   ; 

- D 0 - I - 0x019DD3 06:9DC3: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019DD5 06:9DC5: 04        .byte $04   ; 

- D 0 - I - 0x019DD6 06:9DC6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019DD8 06:9DC8: 02        .byte $02, $1C   ; 

- D 0 - I - 0x019DDA 06:9DCA: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019DDC 06:9DCC: 18        .byte $18, $34, $26, $3C   ; 

- D 0 - I - 0x019DE0 06:9DD0: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019DE2 06:9DD2: 04        .byte $04   ; 

- D 0 - I - 0x019DE3 06:9DD3: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019DE5 06:9DD5: 02        .byte $02, $18   ; 

- D 0 - I - 0x019DE7 06:9DD7: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019DE9 06:9DD9: 20        .byte $20, $12, $66, $30, $00, $04   ; 

- D 0 - I - 0x019DEF 06:9DDF: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019DF1 06:9DE1: 04        .byte $04   ; 

- D 0 - I - 0x019DF2 06:9DE2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019DF4 06:9DE4: 02        .byte $02, $08   ; 

- D 0 - I - 0x019DF6 06:9DE6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019DF8 06:9DE8: 10        .byte $10, $20, $12, $44, $10, $20, $04   ; 

- D 0 - I - 0x019DFF 06:9DEF: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019E01 06:9DF1: 04        .byte $04   ; 

- D 0 - I - 0x019E02 06:9DF2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019E04 06:9DF4: 02        .byte $02   ; 

- D 0 - I - 0x019E05 06:9DF5: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019E07 06:9DF7: 12        .byte $12, $40, $02, $40, $80, $20, $02   ; 

- D 0 - I - 0x019E0E 06:9DFE: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019E10 06:9E00: 02        .byte $02   ; 

- D 0 - I - 0x019E11 06:9E01: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019E13 06:9E03: 10        .byte $10, $00, $02, $40, $00, $10, $00   ; 



off_08_9E0A:
- D 0 - I - 0x019E1A 06:9E0A: 00        .byte $00, $FE, $C6, $C6, $44, $C6, $C6, $FE   ; 
off_08_9E12:
- D 0 - I - 0x019E22 06:9E12: 00        .byte $00, $18, $18, $18, $08, $18, $18, $18   ; 
- D 0 - I - 0x019E2A 06:9E1A: 00        .byte $00, $FE, $06, $06, $7C, $C0, $C0, $FE   ; 
- D 0 - I - 0x019E32 06:9E22: 00        .byte $00, $FE, $06, $06, $3C, $06, $06, $FE   ; 
- D 0 - I - 0x019E3A 06:9E2A: 00        .byte $00, $C6, $C6, $C6, $7C, $06, $06, $06   ; 
- D 0 - I - 0x019E42 06:9E32: 00        .byte $00, $FE, $C0, $C0, $7C, $06, $06, $FE   ; 
- D 0 - I - 0x019E4A 06:9E3A: 00        .byte $00, $FE, $C0, $C0, $7C, $C6, $C6, $FE   ; 
- D 0 - I - 0x019E52 06:9E42: 00        .byte $00, $FE, $06, $06, $00, $06, $06, $06   ; 
- D 0 - I - 0x019E5A 06:9E4A: 00        .byte $00, $FE, $C6, $C6, $7C, $C6, $C6, $FE   ; 
- D 0 - I - 0x019E62 06:9E52: 00        .byte $00, $FE, $C6, $C6, $7C, $06, $06, $FE   ; 
- D 0 - I - 0x019E6A 06:9E5A: 00        .byte $00, $6F, $69, $69, $29, $69, $69, $6F   ; 
- D 0 - I - 0x019E72 06:9E62: 00        .byte $00, $66, $66, $66, $22, $66, $66, $66   ; 
- D 0 - I - 0x019E7A 06:9E6A: 00        .byte $00, $FE, $C0, $C0, $78, $C0, $C0, $C0   ; 
- D 0 - I - 0x019E82 06:9E72: 00        .byte $00, $FE, $FE, $FE, $FE, $FE, $FE, $FE   ; 



off_08_9E7A:
- D 0 - I - 0x019E8A 06:9E7A: 00        .byte $00, $FC, $C6, $C6, $7C, $C0, $C0, $C0   ; 
- D 0 - I - 0x019E92 06:9E82: 00        .byte $00, $FE, $C6, $C6, $7C, $C6, $C6, $C6   ; 
- D 0 - I - 0x019E9A 06:9E8A: 00        .byte $00, $C6, $C6, $C6, $44, $C6, $C6, $FE   ; 
- D 0 - I - 0x019EA2 06:9E92: 00        .byte $00, $FE, $C0, $C0, $7C, $06, $06, $FE   ; 
- D 0 - I - 0x019EAA 06:9E9A: 00        .byte $00, $FE, $C0, $C0, $78, $C0, $C0, $FE   ; 



off_08_9EA2:
- D 0 - I - 0x019EB2 06:9EA2: 05        .byte $05   ; prepare control byte for 00
- D 0 - I - 0x019EB3 06:9EA3: 09        .byte $09   ; prepare control byte for FF

- D 0 - I - 0x019EB4 06:9EA4: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019EB6 06:9EA6: 7F        .byte $7F, $40, $40, $40, $40, $40   ; normal bytes

- D 0 - I - 0x019EBC 06:9EAC: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019EBE 06:9EAE: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F, $00, $7F, $80   ; 

- D 0 - I - 0x019EC7 06:9EB7: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019EC9 06:9EB9: 7F        .byte $7F   ; 

- D 0 - I - 0x019ECA 06:9EBA: 09        .byte $09, $06   ; control byte for FF + counter

- D 0 - I - 0x019ECC 06:9EBC: 0F        .byte $0F, $F0   ; 

- D 0 - I - 0x019ECE 06:9EBE: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019ED0 06:9EC0: 0F        .byte $0F   ; 

- D 0 - I - 0x019ED1 06:9EC1: 09        .byte $09, $08   ; control byte for FF + counter

- D 0 - I - 0x019ED3 06:9EC3: 05        .byte $05, $07   ; control byte for 00 + counter

- D 0 - I - 0x019ED5 06:9EC5: 09        .byte $09, $08   ; control byte for FF + counter

- D 0 - I - 0x019ED7 06:9EC7: F8        .byte $F8, $07   ; 

- D 0 - I - 0x019ED9 06:9EC9: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019EDB 06:9ECB: F8        .byte $F8   ; 

- D 0 - I - 0x019EDC 06:9ECC: 09        .byte $09, $07   ; control byte for FF + counter

- D 0 - I - 0x019EDE 06:9ECE: 00        .byte $00, $FF   ; 

- D 0 - I - 0x019EE0 06:9ED0: 05        .byte $05, $07   ; control byte for 00 + counter

- D 0 - I - 0x019EE2 06:9ED2: 09        .byte $09, $07   ; control byte for FF + counter

- D 0 - I - 0x019EE4 06:9ED4: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019EE6 06:9ED6: FF        .byte $FF, $03, $03, $03, $03, $03   ; 

- D 0 - I - 0x019EEC 06:9EDC: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019EEE 06:9EDE: FF        .byte $FF, $FC, $FC, $FC, $FC, $FC, $40, $40, $40, $40, $40, $40, $40, $40, $7F, $7F   ; 
- D 0 - I - 0x019EFE 06:9EEE: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F   ; 

- D 0 - I - 0x019F04 06:9EF4: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019F06 06:9EF6: E1        .byte $E1, $73, $36   ; 

- D 0 - I - 0x019F09 06:9EF9: 09        .byte $09, $02   ; control byte for FF + counter

- D 0 - I - 0x019F0B 06:9EFB: E3        .byte $E3, $C1, $80, $E1, $73, $36   ; 

- D 0 - I - 0x019F11 06:9F01: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019F13 06:9F03: 7F        .byte $7F, $35, $A5, $26   ; 

- D 0 - I - 0x019F17 06:9F07: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F19 06:9F09: 00        .byte $00, $7F, $35, $A5, $26   ; 

- D 0 - I - 0x019F1E 06:9F0E: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019F20 06:9F10: 13        .byte $13, $32, $56, $54   ; 

- D 0 - I - 0x019F24 06:9F14: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F26 06:9F16: 64        .byte $64, $53, $32, $56, $54   ; 

- D 0 - I - 0x019F2B 06:9F1B: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019F2D 06:9F1D: 9E        .byte $9E, $92, $BA, $A3   ; 

- D 0 - I - 0x019F31 06:9F21: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F33 06:9F23: 60        .byte $60, $9E, $92, $BA, $A3   ; 

- D 0 - I - 0x019F38 06:9F28: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019F3A 06:9F2A: 57        .byte $57, $D4, $EE, $68   ; 

- D 0 - I - 0x019F3E 06:9F2E: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F40 06:9F30: A0        .byte $A0, $57, $D4, $EE, $68   ; 

- D 0 - I - 0x019F45 06:9F35: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x019F47 06:9F37: EF        .byte $EF, $86, $C4, $64   ; 

- D 0 - I - 0x019F4B 06:9F3B: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F4D 06:9F3D: 10        .byte $10, $EF, $86, $C4, $65, $03, $03, $03, $03, $03, $03, $03, $03, $FC, $FC, $FC   ; 
- D 0 - I - 0x019F5D 06:9F4D: FC        .byte $FC, $FC, $FC, $FC, $FC, $1C, $1C, $28   ; 

- D 0 - I - 0x019F65 06:9F55: 05        .byte $05, $05   ; control byte for 00 + counter

- D 0 - I - 0x019F67 06:9F57: 1C        .byte $1C, $9C, $A8, $C1, $E3   ; 

- D 0 - I - 0x019F6C 06:9F5C: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F6E 06:9F5E: 6A        .byte $6A, $49   ; 

- D 0 - I - 0x019F70 06:9F60: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019F72 06:9F62: 6A        .byte $6A, $49   ; 

- D 0 - I - 0x019F74 06:9F64: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019F76 06:9F66: 28        .byte $28   ; 

- D 0 - I - 0x019F77 06:9F67: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F79 06:9F69: F4        .byte $F4, $97   ; 

- D 0 - I - 0x019F7B 06:9F6B: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019F7D 06:9F6D: F4        .byte $F4, $97   ; 

- D 0 - I - 0x019F7F 06:9F6F: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019F81 06:9F71: D1        .byte $D1   ; 

- D 0 - I - 0x019F82 06:9F72: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F84 06:9F74: A3        .byte $A3, $7A   ; 

- D 0 - I - 0x019F86 06:9F76: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019F88 06:9F78: A3        .byte $A3, $7A   ; 

- D 0 - I - 0x019F8A 06:9F7A: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019F8C 06:9F7C: 0B        .byte $0B   ; 

- D 0 - I - 0x019F8D 06:9F7D: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F8F 06:9F7F: 48        .byte $48, $5E   ; 

- D 0 - I - 0x019F91 06:9F81: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019F93 06:9F83: 48        .byte $48, $5E   ; 

- D 0 - I - 0x019F95 06:9F85: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019F97 06:9F87: 42        .byte $42   ; 

- D 0 - I - 0x019F98 06:9F88: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019F9A 06:9F8A: 2C        .byte $2C, $C8   ; 

- D 0 - I - 0x019F9C 06:9F8C: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019F9E 06:9F8E: 2D        .byte $2D, $CB, $03, $07, $6F   ; 

- D 0 - I - 0x019FA3 06:9F93: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x019FA5 06:9F95: 40        .byte $40, $40, $40, $40, $40, $40, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $40, $40   ; 

- D 0 - I - 0x019FB5 06:9FA5: 05        .byte $05, $06   ; control byte for 00 + counter

- D 0 - I - 0x019FB7 06:9FA7: 09        .byte $09, $08   ; control byte for FF + counter

- D 0 - I - 0x019FB9 06:9FA9: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019FBB 06:9FAB: 03        .byte $03, $03, $03, $03, $03, $03   ; 

- D 0 - I - 0x019FC1 06:9FB1: 09        .byte $09, $02   ; control byte for FF + counter

- D 0 - I - 0x019FC3 06:9FB3: FC        .byte $FC, $FC, $FC, $FC, $FC, $FC   ; 

- D 0 - I - 0x019FC9 06:9FB9: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019FCB 06:9FBB: 35        .byte $35, $20, $1F, $80   ; 

- D 0 - I - 0x019FCF 06:9FBF: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019FD1 06:9FC1: FF        .byte $FF, $D5, $C0, $E7, $BF, $3F   ; 

- D 0 - I - 0x019FD7 06:9FC7: 09        .byte $09, $02   ; control byte for FF + counter

- D 0 - I - 0x019FD9 06:9FC9: 00        .byte $00, $2C, $04, $F8, $02   ; 

- D 0 - I - 0x019FDE 06:9FCE: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019FE0 06:9FD0: FF        .byte $FF, $2F, $07, $FF, $FE, $FC   ; 

- D 0 - I - 0x019FE6 06:9FD6: 09        .byte $09, $02   ; control byte for FF + counter

- D 0 - I - 0x019FE8 06:9FD8: 05        .byte $05, $03   ; control byte for 00 + counter

- D 0 - I - 0x019FEA 06:9FDA: 7F        .byte $7F, $40, $5F, $5F, $5F, $5F   ; 

- D 0 - I - 0x019FF0 06:9FE0: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x019FF2 06:9FE2: 7F        .byte $7F, $7F, $60, $60, $60, $60, $00, $7F, $80, $00   ; 

- D 0 - I - 0x019FFC 06:9FEC: 09        .byte $09, $04   ; control byte for FF + counter

- D 0 - I - 0x019FFE 06:9FEE: 00        .byte $00, $7F   ; 

- D 0 - I - 0x01A000 06:9FF0: 09        .byte $09, $02   ; control byte for FF + counter

- D 0 - I - 0x01A002 06:9FF2: 05        .byte $05, $04   ; control byte for 00 + counter

- D 0 - I - 0x01A004 06:9FF4: 0F        .byte $0F, $F0   ; 

- D 0 - I - 0x01A006 06:9FF6: 05        .byte $05, $02   ; control byte for 00 + counter

- D 0 - I - 0x01A008 06:9FF8: FE        .byte $FE, $FE, $FE, $FE, $0F   ; 

- D 0 - I - 0x01A00D 06:9FFD: 09        .byte $09, $03   ; control byte for FF + counter

- D 0 - I - 0x01A00F 06:9FFF: 01        .byte $01, $01, $01, $01, $FF, $00, $47, $08, $10, $20, $20, $40   ; 

- D 1 - I - 0x01A01B 06:A00B: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A01D 06:A00D: D8        .byte $D8, $90, $E0, $C0, $C0, $80, $FF, $00, $E2, $10, $08, $04, $04, $00   ; 

- D 1 - I - 0x01A02B 06:A01B: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A02D 06:A01D: 1E        .byte $1E, $8C, $87, $03, $03, $03, $F8, $07, $00, $1D, $11, $1D, $11, $10, $F8   ; 

- D 1 - I - 0x01A03C 06:A02C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A03E 06:A02E: FD        .byte $FD, $F1, $FD, $F1, $F0, $00, $FF, $00, $5D, $51, $5D, $51, $9D, $00   ; 

- D 1 - I - 0x01A04C 06:A03C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A04E 06:A03E: 5D        .byte $5D, $51, $5D, $51, $9D   ; 

- D 1 - I - 0x01A053 06:A043: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A055 06:A045: FF        .byte $FF, $01, $01, $01, $01, $C1   ; 

- D 1 - I - 0x01A05B 06:A04B: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A05D 06:A04D: FF        .byte $FF, $7E, $7E, $7E, $1E, $DE, $5F, $5F, $5F, $5F, $5F, $5F, $40, $7F, $60, $60   ; 
- D 1 - I - 0x01A06D 06:A05D: 60        .byte $60, $60, $60, $60, $7F, $40   ; 

- D 1 - I - 0x01A073 06:A063: 09        .byte $09, $06   ; control byte for FF + counter

- D 1 - I - 0x01A075 06:A065: 00        .byte $00, $FF   ; 

- D 1 - I - 0x01A077 06:A067: 05        .byte $05, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A079 06:A069: FF        .byte $FF, $00, $FE, $FE, $FE, $FE, $FE, $FE, $00, $FF, $01, $01, $01, $01, $01, $01   ; 
- D 1 - I - 0x01A089 06:A079: FF        .byte $FF   ; 

- D 1 - I - 0x01A08A 06:A07A: 05        .byte $05, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A08C 06:A07C: 3D        .byte $3D, $15, $15, $15, $15, $12   ; 

- D 1 - I - 0x01A092 06:A082: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A094 06:A084: FD        .byte $FD, $D5, $F5, $F5, $F5, $F2   ; 

- D 1 - I - 0x01A09A 06:A08A: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A09C 06:A08C: 77        .byte $77, $55, $57, $75, $65, $57   ; 

- D 1 - I - 0x01A0A2 06:A092: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A0A4 06:A094: 77        .byte $77, $55, $57, $75, $65, $57, $01, $01, $71, $51, $51, $51, $51, $71, $FE, $FE   ; 
- D 1 - I - 0x01A0B4 06:A0A4: 76        .byte $76, $56, $56, $56, $56, $76, $5F, $5F, $5C, $5D, $5D, $5D, $57, $58, $60, $67   ; 
- D 1 - I - 0x01A0C4 06:A0B4: 6C        .byte $6C, $6C, $6C, $6C, $67, $60, $FF, $BD, $32, $F6, $FE, $F2, $B6, $04, $00, $9C   ; 
- D 1 - I - 0x01A0D4 06:A0C4: 32        .byte $32, $32, $3E, $32, $B2, $00, $FE, $F6, $CA, $DA, $F2, $DA, $DA, $02, $01, $F1   ; 
- D 1 - I - 0x01A0E4 06:A0D4: C9        .byte $C9, $C9, $F1, $D9, $D9, $01, $5F, $5F, $5F, $5F, $5F, $5F, $5D, $5E, $60, $61   ; 
- D 1 - I - 0x01A0F4 06:A0E4: 63        .byte $63, $63, $63, $63, $61, $60, $FF, $DD, $2D, $6F, $6F, $6D, $CC, $11, $00, $CC   ; 
- D 1 - I - 0x01A104 06:A0F4: 2D        .byte $2D, $2F, $2F, $2D, $CC, $00, $FE, $DE, $BE, $7E, $7E, $BE, $DE, $1E, $01, $C1   ; 
- D 1 - I - 0x01A114 06:A104: 81        .byte $81, $01, $01, $81, $C1, $01, $5F, $5F, $5C, $5D, $5F, $5C, $5D, $51, $60, $6F   ; 
- D 1 - I - 0x01A124 06:A114: 6C        .byte $6C, $6C, $6F, $6C, $6C, $60, $FF, $7D, $B9, $BB, $3B, $7B, $FD, $C1, $00, $3C   ; 
- D 1 - I - 0x01A134 06:A124: 98        .byte $98, $98, $18, $18, $3C, $00, $FE, $F6, $66, $EE, $EE, $EE, $EE, $8E, $01, $F1   ; 
- D 1 - I - 0x01A144 06:A134: 61        .byte $61, $61, $61, $61, $61, $01, $5F, $5B, $5D, $5E, $5B, $59, $5A, $53, $60, $68   ; 
- D 1 - I - 0x01A154 06:A144: 6C        .byte $6C, $6E, $6B, $69, $68, $60, $FF, $BD, $B2, $B6, $B6, $B6, $9C, $21, $00, $9C   ; 
- D 1 - I - 0x01A164 06:A154: B2        .byte $B2, $B2, $B2, $B2, $9C, $00, $FE, $BA, $AA, $AA, $FA, $DA, $8A, $32, $01, $89   ; 
- D 1 - I - 0x01A174 06:A164: A9        .byte $A9, $A9, $F9, $D9, $89, $01, $5F, $5D, $71, $77, $75, $75, $5D, $40, $60, $7C   ; 
- D 1 - I - 0x01A184 06:A174: 71        .byte $71, $71, $75, $75, $7D, $60, $FF, $DE, $AD, $A6, $E9, $AD, $A6, $08, $00, $C6   ; 
- D 1 - I - 0x01A194 06:A184: AD        .byte $AD, $A6, $E1, $AD, $A6, $00, $BE, $AC, $34, $FC, $6C, $64, $6C, $C8, $81, $A5   ; 
- D 1 - I - 0x01A1A4 06:A194: 35        .byte $35, $3D, $2D, $25, $25, $01, $5F, $5F, $5C, $5D, $5D, $5D, $57, $58, $60, $67   ; 
- D 1 - I - 0x01A1B4 06:A1A4: 6C        .byte $6C, $6C, $6C, $6C, $67, $60, $FF, $BD, $32, $F6, $FE, $F2, $B6, $04, $00, $9C   ; 
- D 1 - I - 0x01A1C4 06:A1B4: 32        .byte $32, $32, $3E, $32, $B2, $00, $FE, $F6, $CA, $DA, $F2, $DA, $DA, $02, $01, $F1   ; 
- D 1 - I - 0x01A1D4 06:A1C4: C9        .byte $C9, $C9, $F1, $D9, $D9, $01, $20, $FF, $A0, $80, $80, $80, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A1E4 06:A1D4: DF        .byte $DF, $80, $80, $80, $FF, $00, $20, $FF, $A0, $C0, $C0, $C0, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A1F4 06:A1E4: DF        .byte $DF, $C0, $C0, $C0, $FF, $00, $20, $FF, $A0, $E0, $E0, $E0, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A204 06:A1F4: DF        .byte $DF, $E0, $E0, $E0, $FF, $00, $20, $FF, $A0, $F0, $F0, $F0, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A214 06:A204: DF        .byte $DF, $F0, $F0, $F0, $FF, $00, $20, $FF, $A0, $F8, $F8, $F8, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A224 06:A214: DF        .byte $DF, $F8, $F8, $F8, $FF, $00, $20, $FF, $A0, $FC, $FC, $FC, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A234 06:A224: DF        .byte $DF, $FC, $FC, $FC, $FF, $00, $20, $FF, $A0, $FE, $FE, $FE, $80, $FF, $C0, $FF   ; 
- D 1 - I - 0x01A244 06:A234: DF        .byte $DF, $FE, $FE, $FE, $FF, $00, $20, $FF, $A0   ; 

- D 1 - I - 0x01A24D 06:A23D: 09        .byte $09, $03   ; control byte for FF + counter

- D 1 - I - 0x01A24F 06:A23F: 80        .byte $80, $FF, $C0, $FF, $DF   ; 

- D 1 - I - 0x01A254 06:A244: 09        .byte $09, $04   ; control byte for FF + counter

- D 1 - I - 0x01A256 06:A246: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A258 06:A248: FF        .byte $FF   ; 

- D 1 - I - 0x01A259 06:A249: 05        .byte $05, $05   ; control byte for 00 + counter

- D 1 - I - 0x01A25B 06:A24B: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01A25D 06:A24D: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A25F 06:A24F: 05        .byte $05, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A261 06:A251: FF        .byte $FF   ; 

- D 1 - I - 0x01A262 06:A252: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A264 06:A254: FF        .byte $FF, $00, $80, $80, $80, $00, $FF, $00   ; 

- D 1 - I - 0x01A26C 06:A25C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A26E 06:A25E: 80        .byte $80, $80, $80, $FF   ; 

- D 1 - I - 0x01A272 06:A262: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A274 06:A264: FF        .byte $FF, $00, $C0, $C0, $C0, $00, $FF, $00   ; 

- D 1 - I - 0x01A27C 06:A26C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A27E 06:A26E: C0        .byte $C0, $C0, $C0, $FF   ; 

- D 1 - I - 0x01A282 06:A272: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A284 06:A274: FF        .byte $FF, $00, $E0, $E0, $E0, $00, $FF, $00   ; 

- D 1 - I - 0x01A28C 06:A27C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A28E 06:A27E: E0        .byte $E0, $E0, $E0, $FF   ; 

- D 1 - I - 0x01A292 06:A282: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A294 06:A284: FF        .byte $FF, $00, $F0, $F0, $F0, $00, $FF, $00   ; 

- D 1 - I - 0x01A29C 06:A28C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A29E 06:A28E: F0        .byte $F0, $F0, $F0, $FF   ; 

- D 1 - I - 0x01A2A2 06:A292: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A2A4 06:A294: FF        .byte $FF, $00, $F8, $F8, $F8, $00, $FF, $00   ; 

- D 1 - I - 0x01A2AC 06:A29C: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A2AE 06:A29E: F8        .byte $F8, $F8, $F8, $FF   ; 

- D 1 - I - 0x01A2B2 06:A2A2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A2B4 06:A2A4: FF        .byte $FF, $00, $FC, $FC, $FC, $00, $FF, $00   ; 

- D 1 - I - 0x01A2BC 06:A2AC: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A2BE 06:A2AE: FC        .byte $FC, $FC, $FC, $FF   ; 

- D 1 - I - 0x01A2C2 06:A2B2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A2C4 06:A2B4: FF        .byte $FF, $00, $FE, $FE, $FE, $00, $FF, $00   ; 

- D 1 - I - 0x01A2CC 06:A2BC: 09        .byte $09, $02   ; control byte for FF + counter

- D 1 - I - 0x01A2CE 06:A2BE: FE        .byte $FE, $FE, $FE, $FF   ; 

- D 1 - I - 0x01A2D2 06:A2C2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A2D4 06:A2C4: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01A2D6 06:A2C6: 09        .byte $09, $03   ; control byte for FF + counter

- D 1 - I - 0x01A2D8 06:A2C8: 00        .byte $00, $FF, $00   ; 

- D 1 - I - 0x01A2DB 06:A2CB: 09        .byte $09, $06   ; control byte for FF + counter

- D 1 - I - 0x01A2DD 06:A2CD: 00        .byte $00, $01, $FF, $01, $01, $01, $01, $01, $FF, $06, $FE, $FE   ; 

- D 1 - I - 0x01A2E9 06:A2D9: 05        .byte $05, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A2EB 06:A2DB: FE        .byte $FE, $00, $01, $FF, $01, $81, $81, $81, $01, $FF, $06, $FE, $FE, $80, $80, $80   ; 
- D 1 - I - 0x01A2FB 06:A2EB: FE        .byte $FE, $00, $01, $FF, $01, $C1, $C1, $C1, $01, $FF, $06, $FE, $FE, $C0, $C0, $C0   ; 
- D 1 - I - 0x01A30B 06:A2FB: FE        .byte $FE, $00, $01, $FF, $01, $E1, $E1, $E1, $01, $FF, $06, $FE, $FE, $E0, $E0, $E0   ; 
- D 1 - I - 0x01A31B 06:A30B: FE        .byte $FE, $00, $01, $FF, $01, $F1, $F1, $F1, $01, $FF, $06, $FE, $FE, $F0, $F0, $F0   ; 
- D 1 - I - 0x01A32B 06:A31B: FE        .byte $FE, $00, $01, $FF, $01, $F9, $F9, $F9, $01, $FF, $06, $FE, $FE, $F8, $F8, $F8   ; 
- D 1 - I - 0x01A33B 06:A32B: FE        .byte $FE, $00, $01, $FF, $01, $FD, $FD, $FD, $01, $FF, $06, $FE, $FE, $FC, $FC, $FC   ; 
- D 1 - I - 0x01A34B 06:A33B: FE        .byte $FE, $00, $01, $FF, $01   ; 

- D 1 - I - 0x01A350 06:A340: 09        .byte $09, $03   ; control byte for FF + counter

- D 1 - I - 0x01A352 06:A342: 01        .byte $01, $FF, $06, $FE, $FE, $FE, $FE, $FE, $FE, $00   ; 



off_14_A34C:
- D 1 - I - 0x01A35C 06:A34C: 07        .byte $07, $06, $06, $07, $06, $06, $06, $00, $FF, $FE, $FE, $FF, $FE, $FE, $FE, $F8   ; 
- D 1 - I - 0x01A36C 06:A35C: C7        .byte $C7, $66, $66, $C7, $06, $06, $06, $00, $DF, $6E, $EE, $CF, $1E, $FE, $FE, $F8   ; 
- D 1 - I - 0x01A37C 06:A36C: C7        .byte $C7, $66, $66, $C7, $66, $66, $67, $00, $DF, $6E, $EE, $CF, $6E, $EE, $EF, $88   ; 
- D 1 - I - 0x01A38C 06:A37C: E3        .byte $E3, $06, $06, $E3, $00, $06, $E3, $00, $EF, $0E, $FE, $EB, $0C, $FE, $EB, $0C   ; 
- D 1 - I - 0x01A39C 06:A38C: C3        .byte $C3, $66, $06, $C3, $60, $66, $C3, $00, $DF, $6E, $8E, $DB, $6C, $EE, $CB, $1C   ; 
- D 1 - I - 0x01A3AC 06:A39C: C0        .byte $C0, $60, $00, $C0, $60, $60, $C0, $00, $DF, $6F, $8F, $DF, $6F, $EF, $CF, $1F   ; 
- D 1 - I - 0x01A3BC 06:A3AC: 03        .byte $03, $06, $06, $03, $00, $06, $03, $00, $FF, $FE, $FE, $FB, $FC, $FE, $FB, $FC   ; 
- D 1 - I - 0x01A3CC 06:A3BC: C7        .byte $C7, $61, $01, $C1, $61, $61, $C1, $00, $DF, $69, $8F, $DF, $6F, $EF, $CF, $1E   ; 
- D 1 - I - 0x01A3DC 06:A3CC: E3        .byte $E3, $86, $86, $87, $86, $86, $86, $00, $EF, $8E, $BE, $BF, $BE, $BE, $BE, $38   ; 
- D 1 - I - 0x01A3EC 06:A3DC: C7        .byte $C7, $66, $66, $E7, $66, $66, $66, $00, $DF, $6E, $EE, $EF, $6E, $EE, $EE, $88   ; 
- D 1 - I - 0x01A3FC 06:A3EC: C7        .byte $C7, $61, $61, $C1, $61, $61, $61, $00, $DF, $69, $EF, $CF, $6F, $EF, $EF, $8E   ; 
- D 1 - I - 0x01A40C 06:A3FC: E0        .byte $E0, $80, $80, $80, $80, $80, $80, $00, $EF, $8F, $BF, $BF, $BF, $BF, $BF, $3F   ; 



off_09_A40C:
- D 1 - I - 0x01A41C 06:A40C: 17        .byte $17   ; prepare control byte for 00
- D 1 - I - 0x01A41D 06:A40D: 29        .byte $29   ; prepare control byte for FF

- D 1 - I - 0x01A41E 06:A40E: 7F        .byte $7F, $3C, $A1, $97, $F3, $E1, $C0, $C1, $3F, $1C, $01, $06, $80, $60, $C0, $C0   ; normal bytes
- D 1 - I - 0x01A42E 06:A41E: 08        .byte $08, $43, $67, $F6, $F8, $F8, $D0, $E1, $00, $03, $47, $26, $30, $78, $D0, $E1   ; 
- D 1 - I - 0x01A43E 06:A42E: 11        .byte $11, $7D, $FD, $FF, $3F, $7D, $3C, $7B, $00, $70, $88, $04, $07, $10, $10, $1B   ; 
- D 1 - I - 0x01A44E 06:A43E: E4        .byte $E4, $E4, $E3, $5F, $DB, $F3, $73, $3F, $20, $60, $C3, $03, $0B, $13, $63, $33   ; 
- D 1 - I - 0x01A45E 06:A44E: FF        .byte $FF, $F7, $F7, $C3, $C3, $C3, $C3, $C1, $FF, $F7, $F7, $C7, $EF, $C7, $EF, $C7   ; 

- D 1 - I - 0x01A46E 06:A45E: 29        .byte $29, $10   ; control byte for FF + counter

- D 1 - I - 0x01A470 06:A460: B0        .byte $B0, $38, $38, $19   ; 

- D 1 - I - 0x01A474 06:A464: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A476 06:A466: 4F        .byte $4F, $8E   ; 

- D 1 - I - 0x01A478 06:A468: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A47A 06:A46A: 4F        .byte $4F, $8E   ; 

- D 1 - I - 0x01A47C 06:A46C: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A47E 06:A46E: 06        .byte $06, $0B, $1E, $0E, $40, $E4   ; 

- D 1 - I - 0x01A484 06:A474: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A486 06:A476: 03        .byte $03, $0E, $06, $00, $64, $C0, $80, $06, $1C, $3E, $3C, $18   ; 

- D 1 - I - 0x01A492 06:A482: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A494 06:A484: 10        .byte $10, $20, $20   ; 

- D 1 - I - 0x01A497 06:A487: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A499 06:A489: 81        .byte $81, $8B, $FD, $FE   ; 

- D 1 - I - 0x01A49D 06:A48D: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A49F 06:A48F: 80        .byte $80, $8B, $F9, $F8, $F9, $FC   ; 

- D 1 - I - 0x01A4A5 06:A495: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A4A7 06:A497: C9        .byte $C9, $98, $98, $24, $27, $F7   ; 

- D 1 - I - 0x01A4AD 06:A49D: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A4AF 06:A49F: 49        .byte $49, $98, $98, $24, $27, $F7   ; 

- D 1 - I - 0x01A4B5 06:A4A5: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A4B7 06:A4A7: A3        .byte $A3, $A3, $C5, $EC, $FC, $7C, $7F, $FF, $A3, $23, $05, $2C, $1C, $1C, $7F, $FF   ; 
- D 1 - I - 0x01A4C7 06:A4B7: 1F        .byte $1F, $1F, $1F   ; 

- D 1 - I - 0x01A4CA 06:A4BA: 29        .byte $29, $05   ; control byte for FF + counter

- D 1 - I - 0x01A4CC 06:A4BC: 1F        .byte $1F, $1F, $1F   ; 

- D 1 - I - 0x01A4CF 06:A4BF: 29        .byte $29, $05   ; control byte for FF + counter

- D 1 - I - 0x01A4D1 06:A4C1: C1        .byte $C1, $C1, $C1, $C1, $C1, $C1, $C1, $C1, $EF, $C3, $EF, $C3, $EF, $C3, $EF, $C3   ; 

- D 1 - I - 0x01A4E1 06:A4D1: 29        .byte $29, $06   ; control byte for FF + counter

- D 1 - I - 0x01A4E3 06:A4D3: 80        .byte $80, $80   ; 

- D 1 - I - 0x01A4E5 06:A4D5: 29        .byte $29, $06   ; control byte for FF + counter

- D 1 - I - 0x01A4E7 06:A4D7: BF        .byte $BF, $9F, $DC, $FC, $7B, $7F   ; 

- D 1 - I - 0x01A4ED 06:A4DD: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A4EF 06:A4DF: DC        .byte $DC, $FC, $7B, $7F   ; 

- D 1 - I - 0x01A4F3 06:A4E3: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A4F5 06:A4E5: FE        .byte $FE, $FF, $FE, $FE, $FE, $FE, $FE, $FC, $F0, $C0, $86, $FE, $FE, $FE, $FE, $FC   ; 
- D 1 - I - 0x01A505 06:A4F5: 00        .byte $00, $0C, $3E, $4C, $C8, $C8, $F8, $F7   ; 

- D 1 - I - 0x01A50D 06:A4FD: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A50F 06:A4FF: 08        .byte $08, $48, $48, $08, $30, $21   ; 

- D 1 - I - 0x01A515 06:A505: 17        .byte $17, $09   ; control byte for 00 + counter

- D 1 - I - 0x01A517 06:A507: 7F        .byte $7F, $7F, $5B, $5B, $7F, $7F, $5B, $03, $03, $03, $03, $03, $03, $03, $03, $07   ; 

- D 1 - I - 0x01A527 06:A517: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A529 06:A519: 6F        .byte $6F, $6F   ; 

- D 1 - I - 0x01A52B 06:A51B: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A52D 06:A51D: 6F        .byte $6F, $C1, $81, $81, $81, $81, $81, $81, $81, $EF, $81, $ED, $81, $ED, $81, $ED   ; 
- D 1 - I - 0x01A53D 06:A52D: 81        .byte $81, $80, $80, $80, $80, $80, $80, $80, $80, $95, $9F, $95, $9F, $95, $9F, $95   ; 
- D 1 - I - 0x01A54D 06:A53D: 9F        .byte $9F, $FF, $00, $7F, $7F, $7F, $7F, $7F, $7F   ; 

- D 1 - I - 0x01A556 06:A546: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A558 06:A548: 80        .byte $80, $80, $80, $80, $80, $80, $FF, $00   ; 

- D 1 - I - 0x01A560 06:A550: 29        .byte $29, $03   ; control byte for FF + counter

- D 1 - I - 0x01A562 06:A552: FE        .byte $FE, $FE, $FE   ; 

- D 1 - I - 0x01A565 06:A555: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A567 06:A557: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A569 06:A559: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01A56B 06:A55B: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A56D 06:A55D: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A56F 06:A55F: 10        .byte $10   ; 

- D 1 - I - 0x01A570 06:A560: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A572 06:A562: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A574 06:A564: 76        .byte $76, $C6, $C6, $FF, $00   ; 

- D 1 - I - 0x01A579 06:A569: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A57B 06:A56B: 08        .byte $08   ; 

- D 1 - I - 0x01A57C 06:A56C: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A57E 06:A56E: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A580 06:A570: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A582 06:A572: F3        .byte $F3, $D6, $D6, $FF, $00   ; 

- D 1 - I - 0x01A587 06:A577: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A589 06:A579: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A58B 06:A57B: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A58D 06:A57D: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A58F 06:A57F: B6        .byte $B6, $36, $36, $FF, $00   ; 

- D 1 - I - 0x01A594 06:A584: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A596 06:A586: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A598 06:A588: 01        .byte $01   ; 

- D 1 - I - 0x01A599 06:A589: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A59B 06:A58B: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A59D 06:A58D: DE        .byte $DE, $CC, $CC, $FF, $00   ; 

- D 1 - I - 0x01A5A2 06:A592: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5A4 06:A594: F8        .byte $F8, $F8, $F8, $F8   ; 

- D 1 - I - 0x01A5A8 06:A598: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5AA 06:A59A: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5AC 06:A59C: 03        .byte $03, $03, $03, $FF, $00   ; 

- D 1 - I - 0x01A5B1 06:A5A1: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5B3 06:A5A3: 60        .byte $60, $60, $60, $60   ; 

- D 1 - I - 0x01A5B7 06:A5A7: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5B9 06:A5A9: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5BB 06:A5AB: 0F        .byte $0F, $0C, $0E, $FF, $00   ; 

- D 1 - I - 0x01A5C0 06:A5B0: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5C2 06:A5B2: 40        .byte $40   ; 

- D 1 - I - 0x01A5C3 06:A5B3: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5C5 06:A5B5: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5C7 06:A5B7: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5C9 06:A5B9: 33        .byte $33, $7B, $6B, $FF, $00   ; 

- D 1 - I - 0x01A5CE 06:A5BE: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5D0 06:A5C0: 20        .byte $20   ; 

- D 1 - I - 0x01A5D1 06:A5C1: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5D3 06:A5C3: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5D5 06:A5C5: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5D7 06:A5C7: 9E        .byte $9E, $58, $5C, $FF, $00   ; 

- D 1 - I - 0x01A5DC 06:A5CC: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5DE 06:A5CE: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A5E0 06:A5D0: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5E2 06:A5D2: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5E4 06:A5D4: F3        .byte $F3, $D6, $D3, $FF, $00   ; 

- D 1 - I - 0x01A5E9 06:A5D9: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5EB 06:A5DB: 3F        .byte $3F, $3F, $3F, $7F   ; 

- D 1 - I - 0x01A5EF 06:A5DF: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A5F1 06:A5E1: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A5F3 06:A5E3: 80        .byte $80   ; 

- D 1 - I - 0x01A5F4 06:A5E4: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A5F6 06:A5E6: FF        .byte $FF, $00, $FE, $FE, $FE, $FE, $FE, $FE, $FF, $FE   ; 

- D 1 - I - 0x01A600 06:A5F0: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A602 06:A5F2: E7        .byte $E7, $E7, $DF   ; 

- D 1 - I - 0x01A605 06:A5F5: 29        .byte $29, $05   ; control byte for FF + counter

- D 1 - I - 0x01A607 06:A5F7: E7        .byte $E7, $E7, $DF   ; 

- D 1 - I - 0x01A60A 06:A5FA: 29        .byte $29, $05   ; control byte for FF + counter

- D 1 - I - 0x01A60C 06:A5FC: 8F        .byte $8F, $8F, $8F, $8F, $80, $80, $80, $80, $BF, $BF, $BF, $BF, $B1, $B0, $B0, $B0   ; 

- D 1 - I - 0x01A61C 06:A60C: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A61E 06:A60E: 31        .byte $31, $11, $11, $11   ; 

- D 1 - I - 0x01A622 06:A612: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A624 06:A614: F7        .byte $F7, $77, $37, $37   ; 

- D 1 - I - 0x01A628 06:A618: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A62A 06:A61A: 5B        .byte $5B, $7F, $7F, $5B, $5B, $7F, $7F, $5B, $03, $03, $03, $03, $03, $03, $03, $03   ; 
- D 1 - I - 0x01A63A 06:A62A: 6F        .byte $6F   ; 

- D 1 - I - 0x01A63B 06:A62B: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A63D 06:A62D: 6F        .byte $6F, $6F   ; 

- D 1 - I - 0x01A63F 06:A62F: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A641 06:A631: 6F        .byte $6F, $81, $01, $01, $01, $01, $01, $01, $01, $ED, $01, $6D, $01, $6D, $01, $6D   ; 
- D 1 - I - 0x01A651 06:A641: 01        .byte $01   ; 

- D 1 - I - 0x01A652 06:A642: 29        .byte $29, $0E   ; control byte for FF + counter

- D 1 - I - 0x01A654 06:A644: E3        .byte $E3, $C1   ; 

- D 1 - I - 0x01A656 06:A646: 17        .byte $17, $05   ; control byte for 00 + counter

- D 1 - I - 0x01A658 06:A648: 78        .byte $78, $FC, $FF, $15, $1F, $15, $1F, $15, $07, $03, $00, $7F, $7F, $7F, $7F, $7F   ; 
- D 1 - I - 0x01A668 06:A658: 7F        .byte $7F, $FE, $FE, $80, $80, $80, $80, $80, $80, $FE, $FE, $FE, $FE, $FE   ; 

- D 1 - I - 0x01A676 06:A666: 29        .byte $29, $03   ; control byte for FF + counter

- D 1 - I - 0x01A678 06:A668: 1F        .byte $1F, $1F   ; 

- D 1 - I - 0x01A67A 06:A66A: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A67C 06:A66C: 3F        .byte $3F, $FF, $10   ; 

- D 1 - I - 0x01A67F 06:A66F: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A681 06:A671: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A683 06:A673: C6        .byte $C6, $C6, $76   ; 

- D 1 - I - 0x01A686 06:A676: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A688 06:A678: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A68A 06:A67A: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A68C 06:A67C: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A68E 06:A67E: E6        .byte $E6, $D6, $D3   ; 

- D 1 - I - 0x01A691 06:A681: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A693 06:A683: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A695 06:A685: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A697 06:A687: 22        .byte $22   ; 

- D 1 - I - 0x01A698 06:A688: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A69A 06:A68A: 36        .byte $36, $36, $9C   ; 

- D 1 - I - 0x01A69D 06:A68D: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A69F 06:A68F: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6A1 06:A691: 01        .byte $01, $01, $01, $01   ; 

- D 1 - I - 0x01A6A5 06:A695: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A6A7 06:A697: CC        .byte $CC, $CC, $CC   ; 

- D 1 - I - 0x01A6AA 06:A69A: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6AC 06:A69C: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6AE 06:A69E: F8        .byte $F8, $F8, $F8, $F8   ; 

- D 1 - I - 0x01A6B2 06:A6A2: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A6B4 06:A6A4: 03        .byte $03, $03, $03   ; 

- D 1 - I - 0x01A6B7 06:A6A7: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6B9 06:A6A9: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6BB 06:A6AB: 60        .byte $60   ; 

- D 1 - I - 0x01A6BC 06:A6AC: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6BE 06:A6AE: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A6C0 06:A6B0: 0C        .byte $0C, $0C, $EF   ; 

- D 1 - I - 0x01A6C3 06:A6B3: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6C5 06:A6B5: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6C7 06:A6B7: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A6C9 06:A6B9: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A6CB 06:A6BB: 6B        .byte $6B, $7B, $6B   ; 

- D 1 - I - 0x01A6CE 06:A6BE: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6D0 06:A6C0: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6D2 06:A6C2: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A6D4 06:A6C4: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A6D6 06:A6C6: 58        .byte $58, $58, $9E   ; 

- D 1 - I - 0x01A6D9 06:A6C9: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6DB 06:A6CB: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6DD 06:A6CD: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A6DF 06:A6CF: 29        .byte $29, $04   ; control byte for FF + counter

- D 1 - I - 0x01A6E1 06:A6D1: E1        .byte $E1, $D1, $D7   ; 

- D 1 - I - 0x01A6E4 06:A6D4: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A6E6 06:A6D6: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6E8 06:A6D8: 3F        .byte $3F, $3F, $3F, $7F   ; 

- D 1 - I - 0x01A6EC 06:A6DC: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A6EE 06:A6DE: FC        .byte $FC, $FC, $80, $80   ; 

- D 1 - I - 0x01A6F2 06:A6E2: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A6F4 06:A6E4: FC        .byte $FC, $FD, $FE, $FE, $FE, $FE, $FE, $FF, $3F, $3F   ; 

- D 1 - I - 0x01A6FE 06:A6EE: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A700 06:A6F0: 7F        .byte $7F   ; 

- D 1 - I - 0x01A701 06:A6F1: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A703 06:A6F3: 1F        .byte $1F, $1F, $1F, $1F, $03, $02, $00, $FF, $3F, $7F, $7F, $7F, $67, $6F, $6F, $00   ; 
- D 1 - I - 0x01A713 06:A703: 80        .byte $80, $83, $80, $C0, $20, $5E, $BB, $FF, $7F, $3C, $16, $02   ; 

- D 1 - I - 0x01A71F 06:A70F: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A721 06:A711: 6F        .byte $6F, $FF, $F5, $20, $00, $80, $C0, $03   ; 
- D 1 - I - 0x01A729 06:A719: 80        .byte $80   ; 

- D 1 - I - 0x01A72A 06:A71A: 17        .byte $17, $07   ; control byte for 00 + counter

- D 1 - I - 0x01A72C 06:A71C: E0        .byte $E0, $E8, $AC, $F6   ; 

- D 1 - I - 0x01A730 06:A720: 29        .byte $29, $02   ; control byte for FF + counter

- D 1 - I - 0x01A732 06:A722: 7F        .byte $7F, $1C, $1F, $07, $03, $01   ; 

- D 1 - I - 0x01A738 06:A728: 17        .byte $17, $05   ; control byte for 00 + counter

- D 1 - I - 0x01A73A 06:A72A: 03        .byte $03, $5F, $CF, $E3, $FB, $CE, $DF, $FF, $FC, $80   ; 

- D 1 - I - 0x01A744 06:A734: 17        .byte $17, $05   ; control byte for 00 + counter

- D 1 - I - 0x01A746 06:A736: 29        .byte $29, $08   ; control byte for FF + counter

- D 1 - I - 0x01A748 06:A738: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A74A 06:A73A: B9        .byte $B9, $7C, $B8, $DD, $9C, $7D, $E0, $DA   ; 

- D 1 - I - 0x01A752 06:A742: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A754 06:A744: DF        .byte $DF, $CB, $63, $A9, $C3, $00, $01, $0F   ; 

- D 1 - I - 0x01A75C 06:A74C: 17        .byte $17, $09   ; control byte for 00 + counter

- D 1 - I - 0x01A75E 06:A74E: D0        .byte $D0, $44, $EE, $27, $97, $80, $84   ; 

- D 1 - I - 0x01A765 06:A755: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A767 06:A757: 82        .byte $82, $24, $67, $C2, $E1, $00, $41, $F2   ; 

- D 1 - I - 0x01A76F 06:A75F: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A771 06:A761: 29        .byte $29, $06   ; control byte for FF + counter

- D 1 - I - 0x01A773 06:A763: AA        .byte $AA   ; 

- D 1 - I - 0x01A774 06:A764: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A776 06:A766: FF        .byte $FF, $AA, $00, $FC, $F8, $FE, $FE, $FE, $FE, $AA, $02, $04, $08, $06, $06, $06   ; 
- D 1 - I - 0x01A786 06:A776: FE        .byte $FE, $AA, $02, $3F, $5F, $7F, $7F, $7F, $7F, $6A, $40, $20, $50, $60, $60, $60   ; 
- D 1 - I - 0x01A796 06:A786: 7F        .byte $7F, $6A, $40, $7E, $BD, $DB, $E7, $E7, $DB, $BD, $7E   ; 

- D 1 - I - 0x01A7A1 06:A791: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A7A3 06:A793: 7E        .byte $7E, $BE, $DC, $E2, $E2, $DC, $BE, $7E, $06, $06, $04, $02, $02, $04, $06, $06   ; 
- D 1 - I - 0x01A7B3 06:A7A3: 7E        .byte $7E, $7D, $5B, $67, $67, $5B, $7D, $7E, $60, $60, $40, $60, $60, $40, $60, $60   ; 
- D 1 - I - 0x01A7C3 06:A7B3: 7C        .byte $7C, $B9, $D9, $E0, $E0, $C0, $A0, $70, $00, $04, $02, $07, $07, $13, $19, $0E   ; 
- D 1 - I - 0x01A7D3 06:A7C3: 7E        .byte $7E, $BD, $DB, $E7, $E7, $DB, $9D, $4E   ; 

- D 1 - I - 0x01A7DB 06:A7CB: 17        .byte $17, $07   ; control byte for 00 + counter

- D 1 - I - 0x01A7DD 06:A7CD: 10        .byte $10, $78, $B8, $D8, $E6, $E6, $DB, $81, $06, $06, $01, $01   ; 

- D 1 - I - 0x01A7E9 06:A7D9: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A7EB 06:A7DB: 06        .byte $06, $7E, $BE, $5C, $22, $02, $0C, $86, $06, $06, $06, $84, $C2, $E2, $54, $3E   ; 
- D 1 - I - 0x01A7FB 06:A7EB: 1E        .byte $1E, $4E, $84, $82, $C6, $C6, $C2, $84, $46, $10, $38, $18   ; 

- D 1 - I - 0x01A807 06:A7F7: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A809 06:A7F9: 10        .byte $10, $18, $18, $1E, $3D, $1B, $63, $25, $1B, $00, $40, $1E, $3D, $1B, $63, $25   ; 
- D 1 - I - 0x01A819 06:A809: 1B        .byte $1B, $00, $44, $46, $A6, $C4, $E2, $E2, $C4, $86, $46, $1E, $0E, $14, $82, $82   ; 
- D 1 - I - 0x01A829 06:A819: CC        .byte $CC, $1E, $1E, $7E, $BD, $DB, $E7, $E4, $D8, $B8, $70   ; 

- D 1 - I - 0x01A834 06:A824: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A836 06:A826: 03        .byte $03   ; 

- D 1 - I - 0x01A837 06:A827: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A839 06:A829: 7E        .byte $7E, $81, $01   ; 

- D 1 - I - 0x01A83C 06:A82C: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A83E 06:A82E: 60        .byte $60, $00, $30, $C8, $C0, $E0, $08, $00, $66, $7E, $BD, $DB, $E7, $67, $5B, $3D   ; 
- D 1 - I - 0x01A84E 06:A83E: 3E        .byte $3E   ; 

- D 1 - I - 0x01A84F 06:A83F: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A851 06:A841: 7E        .byte $7E, $BD, $DB, $E7, $E7, $DB, $B1, $60   ; 

- D 1 - I - 0x01A859 06:A849: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A85B 06:A84B: 46        .byte $46, $84, $C0, $C4, $C4, $C1, $81, $40, $18, $18, $18   ; 

- D 1 - I - 0x01A866 06:A856: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A868 06:A858: 1B        .byte $1B, $1D, $16, $40, $0C, $00, $20, $01, $01, $01, $40, $5E, $1C, $08, $20, $81   ; 
- D 1 - I - 0x01A878 06:A868: C3        .byte $C3, $AD, $7E, $06, $AE, $4C, $C2, $C2, $DC, $1E, $3E, $3E, $36, $54, $E2, $E2   ; 
- D 1 - I - 0x01A888 06:A878: C4        .byte $C4, $26, $66, $7E, $BD, $DB, $E7, $E7, $DB, $BC, $78   ; 

- D 1 - I - 0x01A893 06:A883: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A895 06:A885: 01        .byte $01, $06, $70, $B0, $C0, $C0, $81, $00, $0C, $1E, $08, $08, $18, $20, $61, $D0   ; 
- D 1 - I - 0x01A8A5 06:A895: A1        .byte $A1, $40   ; 

- D 1 - I - 0x01A8A7 06:A897: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A8A9 06:A899: 40        .byte $40, $80   ; 

- D 1 - I - 0x01A8AB 06:A89B: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A8AD 06:A89D: 04        .byte $04, $06, $05, $12, $42, $82, $48, $28, $3C, $3E, $3D, $1B, $27, $67, $5B, $BD   ; 
- D 1 - I - 0x01A8BD 06:A8AD: 7E        .byte $7E   ; 

- D 1 - I - 0x01A8BE 06:A8AE: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01A8C0 06:A8B0: 40        .byte $40, $80, $C0, $C0, $C0, $C0, $A0, $40, $00, $05, $08, $22, $20, $18, $0D, $06   ; 
- D 1 - I - 0x01A8D0 06:A8C0: 40        .byte $40, $21, $19, $07, $07, $0B, $05, $02, $1E, $81, $41, $23, $23, $13, $39, $3C   ; 
- D 1 - I - 0x01A8E0 06:A8D0: 42        .byte $42, $81, $D3, $E7, $E7, $DB, $BD, $6E, $7E, $BD, $DB, $E7, $E7, $DB, $BD, $6E   ; 
- D 1 - I - 0x01A8F0 06:A8E0: 1E        .byte $1E, $3E, $9C, $A2, $A2, $9C, $BE, $7E, $46, $86, $84, $82, $82, $84, $86, $06   ; 
- D 1 - I - 0x01A900 06:A8F0: 70        .byte $70, $B0, $C0, $E0, $E0, $D8, $B8, $60, $0E, $0D, $1B, $06, $06, $08, $00, $14   ; 
- D 1 - I - 0x01A910 06:A900: 3E        .byte $3E, $3C, $12, $23, $60, $5B, $B5, $3E, $06, $1C, $12, $23, $60, $5B, $B5, $7E   ; 
- D 1 - I - 0x01A920 06:A910: 02        .byte $02, $01, $40, $C0, $E0, $C0, $A0, $72, $1E, $1D, $4B, $C7, $E7, $C3, $A1, $72   ; 
- D 1 - I - 0x01A930 06:A920: 7E        .byte $7E, $BD, $DB, $67, $27, $1B, $0D, $0A, $00, $80, $C0, $60, $A0, $D8, $A8, $78   ; 

- D 1 - I - 0x01A940 06:A930: 17        .byte $17, $07   ; control byte for 00 + counter

- D 1 - I - 0x01A942 06:A932: 60        .byte $60, $0E, $1C, $98, $60, $E0, $C0, $80, $00, $02, $00, $02   ; 

- D 1 - I - 0x01A94E 06:A93E: 17        .byte $17, $05   ; control byte for 00 + counter

- D 1 - I - 0x01A950 06:A940: 18        .byte $18, $00, $01, $07, $07, $03, $01, $00, $6E, $04, $01, $03, $03, $03, $05, $06   ; 
- D 1 - I - 0x01A960 06:A950: 6E        .byte $6E, $04, $C0, $E0, $E0, $90, $A0, $60, $7E, $7D, $5A, $64, $60, $58, $78, $78   ; 
- D 1 - I - 0x01A970 06:A960: 60        .byte $60, $60, $40, $63, $66, $40, $64, $64, $40, $80   ; 

- D 1 - I - 0x01A97A 06:A96A: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A97C 06:A96C: 40        .byte $40, $10, $00, $22, $0C, $1A, $87, $01, $40, $10, $00, $3E, $1D, $03, $01, $07   ; 
- D 1 - I - 0x01A98C 06:A97C: 0B        .byte $0B, $0C, $0E, $3E, $9D, $53, $01, $87, $8B, $8C, $4E, $70, $B8, $98, $A4, $A6   ; 
- D 1 - I - 0x01A99C 06:A98C: DA        .byte $DA, $BC, $78, $70, $B8, $98, $A4, $A6, $DA, $BC, $78, $0A, $09, $83, $27, $07   ; 
- D 1 - I - 0x01A9AC 06:A99C: 1B        .byte $1B, $3D, $3E, $78, $98, $C0, $20   ; 

- D 1 - I - 0x01A9B3 06:A9A3: 17        .byte $17, $04   ; control byte for 00 + counter

- D 1 - I - 0x01A9B5 06:A9A5: 70        .byte $70, $B0, $D8, $E0, $E0, $D8, $B8, $78   ; 

- D 1 - I - 0x01A9BD 06:A9AD: 17        .byte $17, $13   ; control byte for 00 + counter

- D 1 - I - 0x01A9BF 06:A9AF: 80        .byte $80, $E0, $D0, $B8, $7C, $06, $05, $03, $07, $07, $03, $01, $02   ; 

- D 1 - I - 0x01A9CC 06:A9BC: 17        .byte $17, $06   ; control byte for 00 + counter

- D 1 - I - 0x01A9CE 06:A9BE: 1C        .byte $1C, $3C, $70, $60, $40, $60, $60, $40, $60, $60, $6C, $7C, $5A, $67, $67, $58   ; 
- D 1 - I - 0x01A9DE 06:A9CE: 78        .byte $78, $70   ; 

- D 1 - I - 0x01A9E0 06:A9D0: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A9E2 06:A9D2: 04        .byte $04, $04, $03   ; 

- D 1 - I - 0x01A9E5 06:A9D5: 17        .byte $17, $02   ; control byte for 00 + counter

- D 1 - I - 0x01A9E7 06:A9D7: 08        .byte $08, $08, $09, $E7, $E7, $5B, $3C, $1E, $06, $01, $03, $03, $81   ; 

- D 1 - I - 0x01A9F4 06:A9E4: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A9F6 06:A9E6: 46        .byte $46, $81, $C3, $83, $81   ; 

- D 1 - I - 0x01A9FB 06:A9EB: 17        .byte $17, $03   ; control byte for 00 + counter

- D 1 - I - 0x01A9FD 06:A9ED: 38        .byte $38, $80, $DA, $A6, $A0, $C9, $B9, $72, $38, $80, $DA, $A6, $A0, $C8, $B8, $70   ; 
- D 1 - I - 0x01AA0D 06:A9FD: 3E        .byte $3E, $3D, $DB, $E7, $E7, $DB, $BD, $7E   ; 

- D 1 - I - 0x01AA15 06:AA05: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AA17 06:AA07: 78        .byte $78, $B8, $D8, $E0, $E0, $D8, $B8, $78   ; 

- D 1 - I - 0x01AA1F 06:AA0F: 17        .byte $17, $09   ; control byte for 00 + counter

- D 1 - I - 0x01AA21 06:AA11: 01        .byte $01, $01, $01, $01, $03, $01, $02, $7E, $BC, $D8, $E4, $E4, $D8, $B8, $78, $02   ; 
- D 1 - I - 0x01AA31 06:AA21: 01        .byte $01, $01, $01, $81, $80, $80, $40, $3C, $3C, $5A, $26, $26, $1B, $1D, $1E, $60   ; 
- D 1 - I - 0x01AA41 06:AA31: 60        .byte $60, $40, $60, $60, $40, $60, $60, $60, $60, $40, $60, $60, $40, $60, $60   ; 

- D 1 - I - 0x01AA50 06:AA40: 17        .byte $17, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AA52 06:AA42: 0E        .byte $0E, $05, $03, $03, $03, $01, $01   ; 

- D 1 - I - 0x01AA59 06:AA49: 17        .byte $17, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01AA5B 06:AA4B: 80        .byte $80, $C0, $E0, $E0, $D0, $B0, $60, $72, $31, $53, $23, $03, $03, $01, $02, $70   ; 
- D 1 - I - 0x01AA6B 06:AA5B: 30        .byte $30, $50, $20   ; 

- D 1 - I - 0x01AA6E 06:AA5E: 17        .byte $17, $04   ; control byte for 00 + counter



off_09_AA60:
- D 1 - I - 0x01AA70 06:AA60: 09        .byte $09   ; prepare control byte for 00
- D 1 - I - 0x01AA71 06:AA61: 0B        .byte $0B   ; prepare control byte for FF

- D 1 - I - 0x01AA72 06:AA62: 09        .byte $09, $10   ; control byte for 00 + counter

- D 1 - I - 0x01AA74 06:AA64: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01AA76 06:AA66: 09        .byte $09, $06   ; control byte for 00 + counter

- D 1 - I - 0x01AA78 06:AA68: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AA7A 06:AA6A: FB        .byte $FB, $EF, $08, $08, $08, $08, $08, $08, $E7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; normal bytes

- D 1 - I - 0x01AA8A 06:AA7A: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AA8C 06:AA7C: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AA8E 06:AA7E: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AA90 06:AA80: 04        .byte $04, $04, $20, $20   ; 

- D 1 - I - 0x01AA94 06:AA84: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AA96 06:AA86: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01AA98 06:AA88: FB        .byte $FB, $FF, $DF   ; 

- D 1 - I - 0x01AA9B 06:AA8B: 0B        .byte $0B, $03   ; control byte for FF + counter

- D 1 - I - 0x01AA9D 06:AA8D: 08        .byte $08, $08, $08, $08, $08, $08, $08, $08, $F7, $F7, $F7, $F7, $F7, $F7, $F7, $F7   ; 

- D 1 - I - 0x01AAAD 06:AA9D: 0B        .byte $0B, $09   ; control byte for FF + counter

- D 1 - I - 0x01AAAF 06:AA9F: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F   ; 

- D 1 - I - 0x01AAB6 06:AAA6: 0B        .byte $0B, $10   ; control byte for FF + counter

- D 1 - I - 0x01AAB8 06:AAA8: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AABA 06:AAAA: 01        .byte $01, $01, $03, $03, $03   ; 

- D 1 - I - 0x01AABF 06:AAAF: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AAC1 06:AAB1: FE        .byte $FE, $FE, $FE, $78, $FC, $FC, $FC, $FC, $AC, $DC, $AC, $FF, $8F, $87, $07, $07   ; 
- D 1 - I - 0x01AAD1 06:AAC1: 07        .byte $07, $07, $07   ; 

- D 1 - I - 0x01AAD4 06:AAC4: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AAD6 06:AAC6: 01        .byte $01, $03, $07   ; 

- D 1 - I - 0x01AAD9 06:AAC9: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AADB 06:AACB: FC        .byte $FC, $F9, $F3   ; 

- D 1 - I - 0x01AADE 06:AACE: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AAE0 06:AAD0: C0        .byte $C0, $E0, $F0   ; 

- D 1 - I - 0x01AAE3 06:AAD3: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AAE5 06:AAD5: 3F        .byte $3F   ; 

- D 1 - I - 0x01AAE6 06:AAD6: 0B        .byte $0B, $0A   ; control byte for FF + counter

- D 1 - I - 0x01AAE8 06:AAD8: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F   ; 

- D 1 - I - 0x01AAF0 06:AAE0: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AAF2 06:AAE2: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AAF4 06:AAE4: E0        .byte $E0, $81   ; 

- D 1 - I - 0x01AAF6 06:AAE6: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AAF8 06:AAE8: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AAFA 06:AAEA: 0F        .byte $0F, $33   ; 

- D 1 - I - 0x01AAFC 06:AAEC: 09        .byte $09, $06   ; control byte for 00 + counter

- D 1 - I - 0x01AAFE 06:AAEE: 03        .byte $03, $3F   ; 

- D 1 - I - 0x01AB00 06:AAF0: 0B        .byte $0B, $07   ; control byte for FF + counter

- D 1 - I - 0x01AB02 06:AAF2: FC        .byte $FC   ; 

- D 1 - I - 0x01AB03 06:AAF3: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB05 06:AAF5: 01        .byte $01, $3F   ; 

- D 1 - I - 0x01AB07 06:AAF7: 0B        .byte $0B, $07   ; control byte for FF + counter

- D 1 - I - 0x01AB09 06:AAF9: FE        .byte $FE, $C0   ; 

- D 1 - I - 0x01AB0B 06:AAFB: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB0D 06:AAFD: 1F        .byte $1F   ; 

- D 1 - I - 0x01AB0E 06:AAFE: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AB10 06:AB00: E0        .byte $E0   ; 

- D 1 - I - 0x01AB11 06:AB01: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AB13 06:AB03: C0        .byte $C0   ; 

- D 1 - I - 0x01AB14 06:AB04: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AB16 06:AB06: F3        .byte $F3, $E4, $3F   ; 

- D 1 - I - 0x01AB19 06:AB09: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB1B 06:AB0B: 07        .byte $07   ; 

- D 1 - I - 0x01AB1C 06:AB0C: 0B        .byte $0B, $07   ; control byte for FF + counter

- D 1 - I - 0x01AB1E 06:AB0E: FC        .byte $FC, $F8   ; 

- D 1 - I - 0x01AB20 06:AB10: 09        .byte $09, $06   ; control byte for 00 + counter

- D 1 - I - 0x01AB22 06:AB12: FC        .byte $FC, $FC, $FE   ; 

- D 1 - I - 0x01AB25 06:AB15: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AB27 06:AB17: 07        .byte $07, $07, $03, $01   ; 

- D 1 - I - 0x01AB2B 06:AB1B: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB2D 06:AB1D: 0F        .byte $0F, $0F, $0F, $0F, $C3, $F0, $FC, $FE, $E6, $E9, $E4, $E8, $E0, $30, $0C, $02   ; 
- D 1 - I - 0x01AB3D 06:AB2D: F8        .byte $F8, $F8, $88, $84, $C4, $E5, $1D, $7C, $FF, $3F, $07, $33, $1B, $E3, $1F, $02   ; 

- D 1 - I - 0x01AB4D 06:AB3D: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AB4F 06:AB3F: 80        .byte $80, $E0, $60   ; 

- D 1 - I - 0x01AB52 06:AB42: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AB54 06:AB44: C0        .byte $C0, $FF, $7F   ; 

- D 1 - I - 0x01AB57 06:AB47: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AB59 06:AB49: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AB5B 06:AB4B: 0F        .byte $0F, $C1   ; 

- D 1 - I - 0x01AB5D 06:AB4D: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AB5F 06:AB4F: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB61 06:AB51: 7F        .byte $7F, $7F, $7F, $7F, $80   ; 

- D 1 - I - 0x01AB66 06:AB56: 0B        .byte $0B, $07   ; control byte for FF + counter

- D 1 - I - 0x01AB68 06:AB58: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AB6A 06:AB5A: 0F        .byte $0F   ; 

- D 1 - I - 0x01AB6B 06:AB5B: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AB6D 06:AB5D: 00        .byte $00, $80, $80, $8F, $FF, $FE, $FC, $F8   ; 

- D 1 - I - 0x01AB75 06:AB65: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB77 06:AB67: FF        .byte $FF, $FE, $FC, $F8, $00, $F0, $F0, $E0   ; 

- D 1 - I - 0x01AB7F 06:AB6F: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AB81 06:AB71: 03        .byte $03, $00, $40   ; 

- D 1 - I - 0x01AB84 06:AB74: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB86 06:AB76: 07        .byte $07, $1C, $3F, $7F   ; 

- D 1 - I - 0x01AB8A 06:AB7A: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AB8C 06:AB7C: 40        .byte $40, $90, $68, $14, $49, $10, $0C, $01, $C1, $70, $98, $EC, $07, $3F, $7F, $3F   ; 
- D 1 - I - 0x01AB9C 06:AB8C: 3F        .byte $3F, $1F, $1F, $0F, $FF, $F8   ; 

- D 1 - I - 0x01ABA2 06:AB92: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01ABA4 06:AB94: 80        .byte $80, $20, $47   ; 

- D 1 - I - 0x01ABA7 06:AB97: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01ABA9 06:AB99: C0        .byte $C0   ; 

- D 1 - I - 0x01ABAA 06:AB9A: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01ABAC 06:AB9C: 01        .byte $01, $0E, $70, $80   ; 

- D 1 - I - 0x01ABB0 06:ABA0: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01ABB2 06:ABA2: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ABB4 06:ABA4: 07        .byte $07, $38, $C0   ; 

- D 1 - I - 0x01ABB7 06:ABA7: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01ABB9 06:ABA9: 0B        .byte $0B, $03   ; control byte for FF + counter

- D 1 - I - 0x01ABBB 06:ABAB: BF        .byte $BF, $BF, $BF, $9F, $DF   ; 

- D 1 - I - 0x01ABC0 06:ABB0: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ABC2 06:ABB2: C0        .byte $C0, $A0, $A0, $A0, $90, $D0   ; 

- D 1 - I - 0x01ABC8 06:ABB8: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01ABCA 06:ABBA: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01ABCC 06:ABBC: C6        .byte $C6, $E7   ; 

- D 1 - I - 0x01ABCE 06:ABBE: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01ABD0 06:ABC0: C4        .byte $C4, $24, $1F   ; 

- D 1 - I - 0x01ABD3 06:ABC3: 09        .byte $09, $07   ; control byte for 00 + counter

- D 1 - I - 0x01ABD5 06:ABC5: C0        .byte $C0   ; 

- D 1 - I - 0x01ABD6 06:ABC6: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01ABD8 06:ABC8: 1F        .byte $1F, $BF, $FF, $3F   ; 

- D 1 - I - 0x01ABDC 06:ABCC: 09        .byte $09, $07   ; control byte for 00 + counter

- D 1 - I - 0x01ABDE 06:ABCE: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01ABE0 06:ABD0: FC        .byte $FC   ; 

- D 1 - I - 0x01ABE1 06:ABD1: 0B        .byte $0B, $03   ; control byte for FF + counter

- D 1 - I - 0x01ABE3 06:ABD3: 09        .byte $09, $07   ; control byte for 00 + counter

- D 1 - I - 0x01ABE5 06:ABD5: F8        .byte $F8, $F8, $F0, $F0, $E0, $7F, $0E, $FC, $80   ; 

- D 1 - I - 0x01ABEE 06:ABDE: 09        .byte $09, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01ABF0 06:ABE0: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01ABF2 06:ABE2: 7F        .byte $7F, $3F, $7F, $9F, $3F, $4F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $3F, $BF, $BF   ; 
- D 1 - I - 0x01AC02 06:ABF2: BF        .byte $BF, $BF, $BF, $BF, $BF, $BF   ; 

- D 1 - I - 0x01AC08 06:ABF8: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AC0A 06:ABFA: E0        .byte $E0, $E0, $40, $41, $41, $41, $41, $01, $43, $83, $80, $30, $30, $04, $08, $08   ; 
- D 1 - I - 0x01AC1A 06:AC0A: 7E        .byte $7E   ; 

- D 1 - I - 0x01AC1B 06:AC0B: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01AC1D 06:AC0D: EF        .byte $EF, $FC   ; 

- D 1 - I - 0x01AC1F 06:AC0F: 0B        .byte $0B, $03   ; control byte for FF + counter

- D 1 - I - 0x01AC21 06:AC11: 0C        .byte $0C, $06, $06, $33, $33, $03, $03, $83, $F4, $FA, $FA, $ED, $FD, $7D, $BD, $3D   ; 
- D 1 - I - 0x01AC31 06:AC21: 0F        .byte $0F, $0F, $07, $07, $07, $07, $07, $07, $20, $17, $20, $13, $08, $28, $18, $08   ; 

- D 1 - I - 0x01AC41 06:AC31: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01AC43 06:AC33: F0        .byte $F0   ; 

- D 1 - I - 0x01AC44 06:AC34: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AC46 06:AC36: 00        .byte $00, $FF, $30, $00, $C0, $30, $08, $06, $FF, $F0, $03   ; 

- D 1 - I - 0x01AC51 06:AC41: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AC53 06:AC43: 1F        .byte $1F, $F0   ; 

- D 1 - I - 0x01AC55 06:AC45: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AC57 06:AC47: 3F        .byte $3F   ; 

- D 1 - I - 0x01AC58 06:AC48: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC5A 06:AC4A: F8        .byte $F8, $03   ; 

- D 1 - I - 0x01AC5C 06:AC4C: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AC5E 06:AC4E: F8        .byte $F8   ; 

- D 1 - I - 0x01AC5F 06:AC4F: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC61 06:AC51: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01AC63 06:AC53: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC65 06:AC55: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AC67 06:AC57: F8        .byte $F8, $F8, $FF   ; 

- D 1 - I - 0x01AC6A 06:AC5A: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC6C 06:AC5C: FF        .byte $FF, $F8, $E0, $F8, $07, $00   ; 

- D 1 - I - 0x01AC72 06:AC62: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AC74 06:AC64: 0F        .byte $0F, $1F, $FF   ; 

- D 1 - I - 0x01AC77 06:AC67: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC79 06:AC69: FF        .byte $FF, $03, $0F, $1F, $FF, $3F, $C0   ; 

- D 1 - I - 0x01AC80 06:AC70: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AC82 06:AC72: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC84 06:AC74: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AC86 06:AC76: 1F        .byte $1F, $E0   ; 

- D 1 - I - 0x01AC88 06:AC78: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AC8A 06:AC7A: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AC8C 06:AC7C: E0        .byte $E0   ; 

- D 1 - I - 0x01AC8D 06:AC7D: 0B        .byte $0B, $06   ; control byte for FF + counter

- D 1 - I - 0x01AC8F 06:AC7F: 1F        .byte $1F, $E0   ; 

- D 1 - I - 0x01AC91 06:AC81: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AC93 06:AC83: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AC95 06:AC85: EF        .byte $EF, $EF, $DF, $BF   ; 

- D 1 - I - 0x01AC99 06:AC89: 0B        .byte $0B, $03   ; control byte for FF + counter

- D 1 - I - 0x01AC9B 06:AC8B: 7F        .byte $7F, $87   ; 

- D 1 - I - 0x01AC9D 06:AC8D: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01AC9F 06:AC8F: EF        .byte $EF   ; 

- D 1 - I - 0x01ACA0 06:AC90: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ACA2 06:AC92: 80        .byte $80, $FC, $E0, $98   ; 

- D 1 - I - 0x01ACA6 06:AC96: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01ACA8 06:AC98: F0        .byte $F0, $E0   ; 

- D 1 - I - 0x01ACAA 06:AC9A: 0B        .byte $0B, $02   ; control byte for FF + counter

- D 1 - I - 0x01ACAC 06:AC9C: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01ACAE 06:AC9E: E0        .byte $E0, $E0, $C0, $C0   ; 

- D 1 - I - 0x01ACB2 06:ACA2: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ACB4 06:ACA4: 80        .byte $80, $80   ; 

- D 1 - I - 0x01ACB6 06:ACA6: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01ACB8 06:ACA8: 01        .byte $01, $01, $01, $01, $01   ; 

- D 1 - I - 0x01ACBD 06:ACAD: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01ACBF 06:ACAF: 06        .byte $06, $06, $07, $2F, $1F, $27, $17, $07, $2F, $19, $08   ; 

- D 1 - I - 0x01ACCA 06:ACBA: 09        .byte $09, $07   ; control byte for 00 + counter

- D 1 - I - 0x01ACCC 06:ACBC: 80        .byte $80   ; 

- D 1 - I - 0x01ACCD 06:ACBD: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01ACCF 06:ACBF: 30        .byte $30, $07, $7F, $7F, $60, $0E, $7E, $7F, $B0, $87, $7F, $7F, $60   ; 

- D 1 - I - 0x01ACDC 06:ACCC: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ACDE 06:ACCE: C0        .byte $C0, $C0, $C0, $E0, $E0, $E0, $F0, $01, $C1, $C1, $C1, $C0, $E0   ; 

- D 1 - I - 0x01ACEB 06:ACDB: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ACED 06:ACDD: 08        .byte $08, $07, $00, $30, $B0, $C0, $23, $63, $FF, $FC, $FC, $EF, $FF, $BF, $5E, $5F   ; 
- D 1 - I - 0x01ACFD 06:ACED: 83        .byte $83, $03, $03, $33, $36, $06, $0C, $14, $3D, $7D, $FD, $ED, $FA, $FA, $F4, $EC   ; 
- D 1 - I - 0x01AD0D 06:ACFD: 07        .byte $07, $05, $04, $04, $04, $04, $04, $08, $08, $08, $08, $08, $10, $10, $10, $20   ; 

- D 1 - I - 0x01AD1D 06:AD0D: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AD1F 06:AD0F: 7F        .byte $7F, $7F, $7F, $03   ; 

- D 1 - I - 0x01AD23 06:AD13: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AD25 06:AD15: 28        .byte $28, $12, $2D, $02, $15   ; 

- D 1 - I - 0x01AD2A 06:AD1A: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AD2C 06:AD1C: 80        .byte $80, $E0, $78, $1F, $01, $60, $54, $FB   ; 

- D 1 - I - 0x01AD34 06:AD24: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AD36 06:AD26: 00        .byte $00, $01, $03, $03, $E3, $3F, $03, $A3   ; 

- D 1 - I - 0x01AD3E 06:AD2E: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AD40 06:AD30: 00        .byte $00   ; 

- D 1 - I - 0x01AD41 06:AD31: 0B        .byte $0B, $0F   ; control byte for FF + counter

- D 1 - I - 0x01AD43 06:AD33: 7F        .byte $7F, $0E, $80, $C0, $C0, $C0, $C0, $C0, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $9F   ; 
- D 1 - I - 0x01AD53 06:AD43: 18        .byte $18, $18, $98, $98, $98, $98, $98, $F0, $80, $80, $80, $80   ; 

- D 1 - I - 0x01AD5F 06:AD4F: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AD61 06:AD51: C0        .byte $C0, $C0, $01, $01, $01, $01   ; 

- D 1 - I - 0x01AD67 06:AD57: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AD69 06:AD59: 07        .byte $07, $07, $07, $07, $07, $07, $07, $17, $08, $08, $08, $08, $17, $10, $10, $20   ; 
- D 1 - I - 0x01AD79 06:AD69: F0        .byte $F0, $F8, $FE   ; 

- D 1 - I - 0x01AD7C 06:AD6C: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AD7E 06:AD6E: 7F        .byte $7F, $0F, $07, $01, $80, $FE, $07   ; 

- D 1 - I - 0x01AD85 06:AD75: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AD87 06:AD77: C0        .byte $C0, $F0, $FC, $FF, $F7, $F7, $F7, $F7, $F7, $37, $FF, $3F   ; 

- D 1 - I - 0x01AD93 06:AD83: 09        .byte $09, $07   ; control byte for 00 + counter

- D 1 - I - 0x01AD95 06:AD85: C0        .byte $C0   ; 

- D 1 - I - 0x01AD96 06:AD86: 0B        .byte $0B, $08   ; control byte for FF + counter

- D 1 - I - 0x01AD98 06:AD88: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AD9A 06:AD8A: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AD9C 06:AD8C: F8        .byte $F8, $C0, $E0, $00, $07   ; 

- D 1 - I - 0x01ADA1 06:AD91: 09        .byte $09, $07   ; control byte for 00 + counter

- D 1 - I - 0x01ADA3 06:AD93: 80        .byte $80, $F0, $FF, $21   ; 

- D 1 - I - 0x01ADA7 06:AD97: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ADA9 06:AD99: 01        .byte $01, $00, $F0, $08, $00, $04, $02, $01   ; 

- D 1 - I - 0x01ADB1 06:ADA1: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADB3 06:ADA3: 80        .byte $80, $80   ; 

- D 1 - I - 0x01ADB5 06:ADA5: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ADB7 06:ADA7: FF        .byte $FF, $00, $18, $07   ; 

- D 1 - I - 0x01ADBB 06:ADAB: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADBD 06:ADAD: 80        .byte $80, $E0, $27, $18, $07   ; 

- D 1 - I - 0x01ADC2 06:ADB2: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01ADC4 06:ADB4: 68        .byte $68, $90, $40   ; 

- D 1 - I - 0x01ADC7 06:ADB7: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01ADC9 06:ADB9: 01        .byte $01, $03, $0E, $98, $70, $C0   ; 

- D 1 - I - 0x01ADCF 06:ADBF: 09        .byte $09, $05   ; control byte for 00 + counter

- D 1 - I - 0x01ADD1 06:ADC1: 08        .byte $08, $30, $30, $63, $80   ; 

- D 1 - I - 0x01ADD6 06:ADC6: 09        .byte $09, $09   ; control byte for 00 + counter

- D 1 - I - 0x01ADD8 06:ADC8: 7F        .byte $7F, $00, $3F, $3F, $3F, $FF   ; 

- D 1 - I - 0x01ADDE 06:ADCE: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADE0 06:ADD0: 02        .byte $02, $01   ; 

- D 1 - I - 0x01ADE2 06:ADD2: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADE4 06:ADD4: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01ADE6 06:ADD6: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01ADE8 06:ADD8: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADEA 06:ADDA: 55        .byte $55, $AF   ; 

- D 1 - I - 0x01ADEC 06:ADDC: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADEE 06:ADDE: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01ADF0 06:ADE0: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01ADF2 06:ADE2: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADF4 06:ADE4: FF        .byte $FF, $B7, $01   ; 

- D 1 - I - 0x01ADF7 06:ADE7: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01ADF9 06:ADE9: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01ADFB 06:ADEB: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01ADFD 06:ADED: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01ADFF 06:ADEF: 0B        .byte $0B, $03   ; control byte for FF + counter

- D 1 - I - 0x01AE01 06:ADF1: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AE03 06:ADF3: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01AE05 06:ADF5: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AE07 06:ADF7: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE09 06:ADF9: C0        .byte $C0, $C0, $81   ; 

- D 1 - I - 0x01AE0C 06:ADFC: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AE0E 06:ADFE: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01AE10 06:AE00: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AE12 06:AE02: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE14 06:AE04: E0        .byte $E0, $80   ; 

- D 1 - I - 0x01AE16 06:AE06: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE18 06:AE08: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01AE1A 06:AE0A: 0B        .byte $0B, $04   ; control byte for FF + counter

- D 1 - I - 0x01AE1C 06:AE0C: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01AE1E 06:AE0E: FF        .byte $FF, $00, $E0, $E0, $F0, $F8, $02, $01   ; 

- D 1 - I - 0x01AE26 06:AE16: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AE28 06:AE18: FE        .byte $FE, $00, $17, $37, $37, $77   ; 

- D 1 - I - 0x01AE2E 06:AE1E: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01AE30 06:AE20: FF        .byte $FF, $00, $11, $B1, $37, $FF   ; 

- D 1 - I - 0x01AE36 06:AE26: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01AE38 06:AE28: FF        .byte $FF, $00, $27, $07, $57, $FF   ; 

- D 1 - I - 0x01AE3E 06:AE2E: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01AE40 06:AE30: FF        .byte $FF, $00, $FC, $FE, $FE, $FC   ; 

- D 1 - I - 0x01AE46 06:AE36: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE48 06:AE38: FF        .byte $FF, $02, $02   ; 

- D 1 - I - 0x01AE4B 06:AE3B: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AE4D 06:AE3D: FF        .byte $FF   ; 

- D 1 - I - 0x01AE4E 06:AE3E: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE50 06:AE40: 0B        .byte $0B, $05   ; control byte for FF + counter

- D 1 - I - 0x01AE52 06:AE42: 09        .byte $09, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AE54 06:AE44: 0F        .byte $0F, $18, $10, $20, $60, $40, $40, $60, $0F, $18, $10, $20, $60, $40, $40, $60   ; 
- D 1 - I - 0x01AE64 06:AE54: 60        .byte $60   ; 

- D 1 - I - 0x01AE65 06:AE55: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AE67 06:AE57: 60        .byte $60, $F0, $E0, $C1, $00, $60   ; 

- D 1 - I - 0x01AE6D 06:AE5D: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AE6F 06:AE5F: 60        .byte $60, $F0, $E0, $C1   ; 

- D 1 - I - 0x01AE73 06:AE63: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE75 06:AE65: 02        .byte $02, $83, $06, $0C   ; 

- D 1 - I - 0x01AE79 06:AE69: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AE7B 06:AE6B: 02        .byte $02, $83, $06, $0C, $00, $10, $70, $A1, $03, $02, $06, $0A, $1D, $10, $70, $A1   ; 
- D 1 - I - 0x01AE8B 06:AE7B: 03        .byte $03, $02, $06, $0A, $1D, $00, $04, $1A, $3D, $2C, $6E, $AC, $D9, $00, $04, $1A   ; 
- D 1 - I - 0x01AE9B 06:AE8B: 3D        .byte $3D, $2C, $6E, $AD, $DA, $C3, $C7, $A7, $6B, $60   ; 

- D 1 - I - 0x01AEA5 06:AE95: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AEA7 06:AE97: 20        .byte $20, $C4, $C8, $B0, $60, $60   ; 

- D 1 - I - 0x01AEAD 06:AE9D: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AEAF 06:AE9F: 80        .byte $80, $81, $84, $B2, $7B, $B0, $F4, $78, $30, $40, $4B, $05, $00, $4C, $08, $03   ; 
- D 1 - I - 0x01AEBF 06:AEAF: 04        .byte $04, $40, $40, $20, $60, $60, $60, $60, $20, $80, $80, $80, $00, $80, $80, $00   ; 
- D 1 - I - 0x01AECF 06:AEBF: 80        .byte $80, $18, $3C, $10, $64, $62, $C3, $81, $40   ; 

- D 1 - I - 0x01AED8 06:AEC8: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AEDA 06:AECA: 08        .byte $08, $00, $04, $18, $3C, $3E, $0C, $0C, $33, $33, $65, $D0, $31, $33   ; 

- D 1 - I - 0x01AEE8 06:AED8: 09        .byte $09, $04   ; control byte for 00 + counter

- D 1 - I - 0x01AEEA 06:AEDA: 08        .byte $08, $0E, $0E, $0C, $33, $65, $D0, $31, $33, $D6, $E5, $F3, $00, $08, $0E, $0E   ; 
- D 1 - I - 0x01AEFA 06:AEEA: 0C        .byte $0C, $08, $08, $00, $03, $81, $80   ; 

- D 1 - I - 0x01AF01 06:AEF1: 09        .byte $09, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AF03 06:AEF3: C0        .byte $C0, $E0, $F0   ; 

- D 1 - I - 0x01AF06 06:AEF6: 09        .byte $09, $09   ; control byte for 00 + counter

- D 1 - I - 0x01AF08 06:AEF8: 84        .byte $84, $8C, $1C, $35, $44, $6D, $F1, $F0, $68, $50, $20, $08, $18   ; 

- D 1 - I - 0x01AF15 06:AF05: 09        .byte $09, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AF17 06:AF07: 20        .byte $20, $60, $E0, $A9, $26, $6F, $8F, $80, $40, $80, $00, $40, $C0   ; 

- D 1 - I - 0x01AF24 06:AF14: 09        .byte $09, $02   ; control byte for 00 + counter



off_0C_AF16:
- D 1 - I - 0x01AF26 06:AF16: 30        .byte $30, $30, $FC, $FC, $30, $30, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x01AF36 06:AF26: 00        .byte $00, $00, $00, $01, $03, $86, $CC, $F8, $00, $00, $00, $00, $01, $03, $07, $4F   ; 
- D 1 - I - 0x01AF46 06:AF36: 30        .byte $30, $78, $CC, $86, $03, $06, $0C, $18, $00, $30, $78, $FC, $FE, $FC, $F8, $F0   ; 
- D 1 - I - 0x01AF56 06:AF46: F0        .byte $F0, $C0, $C0, $C1, $C3, $C1, $FF, $FF, $7F, $7F, $7F, $7F, $7E, $7F, $7F, $00   ; 
- D 1 - I - 0x01AF66 06:AF56: 03        .byte $03, $06, $0C, $18, $30, $18, $FC, $FE, $FE, $FC, $F8, $F0, $E0, $F0, $F8, $00   ; 



off_0E_AF66:
- D 1 - I - 0x01AF76 06:AF66: 0B        .byte $0B   ; prepare control byte for 00
- D 1 - I - 0x01AF77 06:AF67: 0D        .byte $0D   ; prepare control byte for FF

- D 1 - I - 0x01AF78 06:AF68: 0B        .byte $0B, $12   ; control byte for 00 + counter

- D 1 - I - 0x01AF7A 06:AF6A: 80        .byte $80, $80, $80   ; normal bytes

- D 1 - I - 0x01AF7D 06:AF6D: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01AF7F 06:AF6F: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AF81 06:AF71: 7F        .byte $7F, $7F, $7F   ; 

- D 1 - I - 0x01AF84 06:AF74: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AF86 06:AF76: 01        .byte $01, $01, $01   ; 

- D 1 - I - 0x01AF89 06:AF79: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01AF8B 06:AF7B: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AF8D 06:AF7D: FE        .byte $FE, $FE, $FE   ; 

- D 1 - I - 0x01AF90 06:AF80: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 1 - I - 0x01AF92 06:AF82: 81        .byte $81, $81, $81   ; 

- D 1 - I - 0x01AF95 06:AF85: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01AF97 06:AF87: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AF99 06:AF89: 7E        .byte $7E, $7E, $7E   ; 

- D 1 - I - 0x01AF9C 06:AF8C: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AF9E 06:AF8E: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01AFA0 06:AF90: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AFA2 06:AF92: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01AFA4 06:AF94: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AFA6 06:AF96: 80        .byte $80, $C0, $E0   ; 

- D 1 - I - 0x01AFA9 06:AF99: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AFAB 06:AF9B: 80        .byte $80, $C0, $60, $30, $18, $70, $38, $1C, $0E, $07, $03, $01, $00, $0C, $06, $03   ; 
- D 1 - I - 0x01AFBB 06:AFAB: 01        .byte $01   ; 

- D 1 - I - 0x01AFBC 06:AFAC: 0B        .byte $0B, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01AFBE 06:AFAE: 01        .byte $01, $02   ; 

- D 1 - I - 0x01AFC0 06:AFB0: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AFC2 06:AFB2: 01        .byte $01, $03, $07, $0F, $1E, $3C, $04, $08, $10, $20, $40, $80   ; 

- D 1 - I - 0x01AFCE 06:AFBE: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AFD0 06:AFC0: 78        .byte $78, $F0, $E0, $C0, $80   ; 

- D 1 - I - 0x01AFD5 06:AFC5: 0B        .byte $0B, $09   ; control byte for 00 + counter

- D 1 - I - 0x01AFD7 06:AFC7: 11        .byte $11, $12   ; 

- D 1 - I - 0x01AFD9 06:AFC9: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AFDB 06:AFCB: 01        .byte $01, $03, $07, $0F, $0E, $2C, $14, $18, $10, $20, $40, $80   ; 

- D 1 - I - 0x01AFE7 06:AFD7: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01AFE9 06:AFD9: 68        .byte $68, $E0, $E0, $C0, $80   ; 

- D 1 - I - 0x01AFEE 06:AFDE: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01AFF0 06:AFE0: 80        .byte $80, $D0, $F0   ; 

- D 1 - I - 0x01AFF3 06:AFE3: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01AFF5 06:AFE5: 80        .byte $80, $C0, $60, $20, $08, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $04, $04, $04   ; 
- D 1 - I - 0x01B005 06:AFF5: 04        .byte $04, $04, $04, $04, $04, $D0, $D0, $D0, $D0, $D0, $D0, $D0, $D0, $20, $20, $20   ; 
- D 1 - I - 0x01B015 06:B005: 20        .byte $20, $20, $20, $20, $20, $1A, $1A, $1A, $1A, $1E, $1A, $1A, $1A, $04, $04, $04   ; 
- D 1 - I - 0x01B025 06:B015: 04        .byte $04, $00, $04, $04, $04, $D0, $D0, $D0, $F0, $D0, $D0, $D0, $D0, $20, $20, $20   ; 
- D 1 - I - 0x01B035 06:B025: 00        .byte $00, $20, $20, $20, $20, $05, $0A, $14, $0A, $14, $28, $50, $28, $0A, $05, $0A   ; 
- D 1 - I - 0x01B045 06:B035: 14        .byte $14, $28, $14, $28, $50   ; 

- D 1 - I - 0x01B04A 06:B03A: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B04C 06:B03C: 01        .byte $01, $00, $01, $02, $05, $02   ; 

- D 1 - I - 0x01B052 06:B042: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B054 06:B044: 01        .byte $01, $02, $01, $02, $05, $50, $A0, $40, $A0, $40, $80, $00, $80, $A0, $50, $A0   ; 
- D 1 - I - 0x01B064 06:B054: 40        .byte $40, $80, $40, $80   ; 

- D 1 - I - 0x01B068 06:B058: 0B        .byte $0B, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B06A 06:B05A: 03        .byte $03, $0C   ; 

- D 1 - I - 0x01B06C 06:B05C: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B06E 06:B05E: 03        .byte $03, $0F, $3F, $FF, $FC, $F0, $30, $C0   ; 

- D 1 - I - 0x01B076 06:B066: 0B        .byte $0B, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B078 06:B068: C0        .byte $C0   ; 

- D 1 - I - 0x01B079 06:B069: 0B        .byte $0B, $15   ; control byte for 00 + counter

- D 1 - I - 0x01B07B 06:B06B: 03        .byte $03, $0F   ; 

- D 1 - I - 0x01B07D 06:B06D: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B07F 06:B06F: 03        .byte $03, $0C, $30, $C0   ; 

- D 1 - I - 0x01B083 06:B073: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B085 06:B075: 3F        .byte $3F, $FF, $FC, $F0, $C0   ; 

- D 1 - I - 0x01B08A 06:B07A: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B08C 06:B07C: C0        .byte $C0, $F0, $FC   ; 

- D 1 - I - 0x01B08F 06:B07F: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B091 06:B081: C0        .byte $C0, $F0, $3C, $0F, $03   ; 

- D 1 - I - 0x01B096 06:B086: 0B        .byte $0B, $0F   ; control byte for 00 + counter

- D 1 - I - 0x01B098 06:B088: C0        .byte $C0, $3F, $0F, $03   ; 

- D 1 - I - 0x01B09C 06:B08C: 0B        .byte $0B, $0E   ; control byte for 00 + counter

- D 1 - I - 0x01B09E 06:B08E: C0        .byte $C0, $F0, $FC, $3F, $0F, $03, $00, $F0, $3C, $0F, $03   ; 

- D 1 - I - 0x01B0A9 06:B099: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 1 - I - 0x01B0AB 06:B09B: 80        .byte $80, $83, $8C, $B0, $C0   ; 

- D 1 - I - 0x01B0B0 06:B0A0: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B0B2 06:B0A2: 3F        .byte $3F, $7F, $7C, $70, $40   ; 

- D 1 - I - 0x01B0B7 06:B0A7: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B0B9 06:B0A9: C0        .byte $C0, $F1, $FD, $3F, $0F, $03, $00, $F0, $3C, $0E, $02   ; 

- D 1 - I - 0x01B0C4 06:B0B4: 0B        .byte $0B, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01B0C6 06:B0B6: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F, $FF   ; 

- D 1 - I - 0x01B0CD 06:B0BD: 0B        .byte $0B, $09   ; control byte for 00 + counter

- D 1 - I - 0x01B0CF 06:B0BF: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01B0D1 06:B0C1: FE        .byte $FE, $FE, $FC, $FC, $F8   ; 

- D 1 - I - 0x01B0D6 06:B0C6: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B0D8 06:B0C8: 40        .byte $40, $C0, $02, $16, $30   ; 

- D 1 - I - 0x01B0DD 06:B0CD: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B0DF 06:B0CF: 40        .byte $40, $40, $02, $12, $10   ; 

- D 1 - I - 0x01B0E4 06:B0D4: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B0E6 06:B0D6: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F, $FF, $00, $1F, $1F, $3F, $3F, $7F, $7F, $FF, $00   ; 

- D 1 - I - 0x01B0F6 06:B0E6: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01B0F8 06:B0E8: FE        .byte $FE, $FE, $FC, $FC, $F8, $00   ; 

- D 1 - I - 0x01B0FE 06:B0EE: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01B100 06:B0F0: FE        .byte $FE, $FE, $FC, $FC, $F8   ; 

- D 1 - I - 0x01B105 06:B0F5: 0B        .byte $0B, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B107 06:B0F7: 08        .byte $08, $11, $12   ; 

- D 1 - I - 0x01B10A 06:B0FA: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B10C 06:B0FC: 01        .byte $01, $03, $07, $07, $0E, $0C, $12, $18, $0C, $0E, $07, $03, $01, $00, $0C, $06   ; 
- D 1 - I - 0x01B11C 06:B10C: 03        .byte $03, $01   ; 

- D 1 - I - 0x01B11E 06:B10E: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B120 06:B110: 10        .byte $10, $10, $10, $20, $40, $80   ; 

- D 1 - I - 0x01B126 06:B116: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B128 06:B118: 60        .byte $60, $E0, $E0, $C0, $80   ; 

- D 1 - I - 0x01B12D 06:B11D: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B12F 06:B11F: 80        .byte $80, $90, $90   ; 

- D 1 - I - 0x01B132 06:B122: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B134 06:B124: 80        .byte $80, $C0, $60, $60, $60, $10, $20, $20, $40, $40, $80, $80, $00, $E0, $C0, $C0   ; 
- D 1 - I - 0x01B144 06:B134: 80        .byte $80, $80   ; 

- D 1 - I - 0x01B146 06:B136: 0B        .byte $0B, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01B148 06:B138: 01        .byte $01, $00, $01, $01, $03, $03, $07, $07, $0E, $01, $02, $02, $04, $04, $08, $08   ; 
- D 1 - I - 0x01B158 06:B148: 10        .byte $10, $0E, $1C, $1C, $38, $38, $70, $70, $E0, $0C, $06, $06, $03, $03, $01, $01   ; 
- D 1 - I - 0x01B168 06:B158: 00        .byte $00, $03, $01, $01   ; 

- D 1 - I - 0x01B16C 06:B15C: 0B        .byte $0B, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01B16E 06:B15E: 80        .byte $80, $80, $C0, $00, $80, $80, $C0, $C0, $60, $60, $30, $C0, $60, $60, $30, $30   ; 
- D 1 - I - 0x01B17E 06:B16E: 18        .byte $18, $18, $0C, $30, $18, $18, $0C, $0C, $06, $06, $03, $01, $02, $02, $34, $14   ; 
- D 1 - I - 0x01B18E 06:B17E: 18        .byte $18, $08, $10, $0E, $1C, $1C, $08, $28, $60, $70, $E0, $C0, $60, $60, $30, $3C   ; 
- D 1 - I - 0x01B19E 06:B18E: 18        .byte $18, $18, $0C, $30, $18, $18, $0C, $00, $06, $06, $03, $10, $20, $20, $00, $80   ; 
- D 1 - I - 0x01B1AE 06:B19E: 80        .byte $80, $80, $C0, $E0, $C0, $C0, $C0, $40, $60, $60, $30, $01, $02, $02, $04, $04   ; 
- D 1 - I - 0x01B1BE 06:B1AE: 08        .byte $08, $08, $10, $0E, $1C, $1C, $38, $38, $70, $70, $60, $0C, $06, $06   ; 

- D 1 - I - 0x01B1CC 06:B1BC: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B1CE 06:B1BE: 01        .byte $01, $01, $01, $03, $01, $01, $03, $03, $06, $06, $0E, $1A, $1A, $1A, $1A, $1A   ; 
- D 1 - I - 0x01B1DE 06:B1CE: 18        .byte $18, $18, $1C, $04, $04, $04, $04, $04, $06, $06, $03, $D0, $D0, $D0, $D0, $D0   ; 
- D 1 - I - 0x01B1EE 06:B1DE: 90        .byte $90, $90, $90, $20, $20, $20, $20, $20, $60, $60, $60, $09, $18, $1A, $1A, $1A   ; 
- D 1 - I - 0x01B1FE 06:B1EE: 1A        .byte $1A, $1A, $1A, $06, $06, $04, $04, $04, $04, $04, $04   ; 

- D 1 - I - 0x01B209 06:B1F9: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 1 - I - 0x01B20B 06:B1FB: 80        .byte $80, $80, $90, $00, $80, $80, $C0, $C0, $60, $60, $60   ; 

- D 1 - I - 0x01B216 06:B206: 0B        .byte $0B, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B218 06:B208: 01        .byte $01   ; 

- D 1 - I - 0x01B219 06:B209: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B21B 06:B20B: 01        .byte $01, $03, $03, $07, $07, $0E   ; 

- D 1 - I - 0x01B221 06:B211: 0B        .byte $0B, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B223 06:B213: 80        .byte $80, $C0   ; 

- D 1 - I - 0x01B225 06:B215: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B227 06:B217: 80        .byte $80, $C0, $C0, $E0, $60, $30   ; 

- D 1 - I - 0x01B22D 06:B21D: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B22F 06:B21F: 10        .byte $10, $1F, $1C, $FB, $FB, $00, $03, $07, $EF, $EF, $EF, $0C, $0C, $00, $08, $18   ; 
- D 1 - I - 0x01B23F 06:B22F: 18        .byte $18, $F0, $F0, $7F, $7F, $00, $F0, $E0, $E7, $EF, $EF, $E0, $E0   ; 

- D 1 - I - 0x01B24C 06:B23C: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B24E 06:B23E: 10        .byte $10, $10, $10, $F3, $FB, $00, $03, $07, $EF, $E0, $E3, $04, $04, $00, $08, $18   ; 
- D 1 - I - 0x01B25E 06:B24E: 18        .byte $18, $10, $10, $1F, $7F, $00, $F0, $E0, $E7, $0F, $0F, $80, $80   ; 

- D 1 - I - 0x01B26B 06:B25B: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B26D 06:B25D: 7E        .byte $7E, $FF, $FE, $FE   ; 

- D 1 - I - 0x01B271 06:B261: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01B273 06:B263: F8        .byte $F8, $00, $3E, $7E, $05, $05, $04   ; 

- D 1 - I - 0x01B27A 06:B26A: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B27C 06:B26C: 40        .byte $40, $81, $FA, $FA, $FB, $FF, $F8, $00, $3E, $7E, $05, $05, $04   ; 

- D 1 - I - 0x01B289 06:B279: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B28B 06:B27B: 0D        .byte $0D, $08   ; control byte for FF + counter

- D 1 - I - 0x01B28D 06:B27D: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B28F 06:B27F: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B291 06:B281: E7        .byte $E7, $E7   ; 

- D 1 - I - 0x01B293 06:B283: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B295 06:B285: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B297 06:B287: 18        .byte $18, $18   ; 

- D 1 - I - 0x01B299 06:B289: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B29B 06:B28B: F7        .byte $F7, $F7, $F7, $F7, $F7, $F4, $F0, $F8, $0E, $0E, $0E, $0E, $0E, $0C, $08, $00   ; 
- D 1 - I - 0x01B2AB 06:B29B: 1F        .byte $1F, $3F, $7F, $FF, $00   ; 

- D 1 - I - 0x01B2B0 06:B2A0: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B2B2 06:B2A2: 00        .byte $00, $3F, $7F   ; 

- D 1 - I - 0x01B2B5 06:B2A5: 0D        .byte $0D, $02   ; control byte for FF + counter

- D 1 - I - 0x01B2B7 06:B2A7: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B2B9 06:B2A9: 0D        .byte $0D, $04   ; control byte for FF + counter

- D 1 - I - 0x01B2BB 06:B2AB: 07        .byte $07, $F7, $F7, $F7, $00, $FE, $FE, $FE, $FE, $0E, $0E, $0E, $F7, $F7, $F7, $F7   ; 
- D 1 - I - 0x01B2CB 06:B2BB: F7        .byte $F7, $F7, $F7, $F7, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E   ; 

- D 1 - I - 0x01B2D7 06:B2C7: 0D        .byte $0D, $04   ; control byte for FF + counter

- D 1 - I - 0x01B2D9 06:B2C9: 00        .byte $00   ; 

- D 1 - I - 0x01B2DA 06:B2CA: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B2DC 06:B2CC: 00        .byte $00   ; 

- D 1 - I - 0x01B2DD 06:B2CD: 0D        .byte $0D, $04   ; control byte for FF + counter

- D 1 - I - 0x01B2DF 06:B2CF: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B2E1 06:B2D1: F7        .byte $F7, $F7, $F7, $F7, $F0   ; 

- D 1 - I - 0x01B2E6 06:B2D6: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B2E8 06:B2D8: 0E        .byte $0E, $0F, $0F, $0F, $0F   ; 

- D 1 - I - 0x01B2ED 06:B2DD: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B2EF 06:B2DF: F7        .byte $F7, $F7, $F7, $F7, $F1   ; 

- D 1 - I - 0x01B2F4 06:B2E4: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B2F6 06:B2E6: 08        .byte $08, $08, $08, $08, $0E   ; 

- D 1 - I - 0x01B2FB 06:B2EB: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B2FD 06:B2ED: 98        .byte $98, $6B, $6B, $08, $6B   ; 

- D 1 - I - 0x01B302 06:B2F2: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B304 06:B2F4: 67        .byte $67, $94, $94, $F7, $94   ; 

- D 1 - I - 0x01B309 06:B2F9: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B30B 06:B2FB: E3        .byte $E3, $5F, $67, $FB, $C7   ; 

- D 1 - I - 0x01B310 06:B300: 0D        .byte $0D, $03   ; control byte for FF + counter

- D 1 - I - 0x01B312 06:B302: 1C        .byte $1C, $A0, $98, $04, $38   ; 

- D 1 - I - 0x01B317 06:B307: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B319 06:B309: 80        .byte $80, $D0, $D0   ; 

- D 1 - I - 0x01B31C 06:B30C: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B31E 06:B30E: 80        .byte $80, $C0, $60, $20, $20   ; 

- D 1 - I - 0x01B323 06:B313: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 1 - I - 0x01B325 06:B315: 08        .byte $08, $09, $1A   ; 

- D 1 - I - 0x01B328 06:B318: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B32A 06:B31A: 01        .byte $01, $03, $07, $07, $06, $04, $90, $10, $10, $20, $40, $80   ; 

- D 1 - I - 0x01B336 06:B326: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B338 06:B328: 60        .byte $60, $E0, $E0, $C0, $80   ; 

- D 1 - I - 0x01B33D 06:B32D: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B33F 06:B32F: 1A        .byte $1A, $18, $0C, $0E, $07, $03, $01, $00, $04, $06, $03, $01   ; 

- D 1 - I - 0x01B34B 06:B33B: 0B        .byte $0B, $04   ; control byte for 00 + counter



off_00_B33D:
- D 1 - I - 0x01B34D 06:B33D: 4C        .byte $4C   ; prepare control byte for 00
- D 1 - I - 0x01B34E 06:B33E: 5B        .byte $5B   ; prepare control byte for FF

- D 1 - I - 0x01B34F 06:B33F: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B351 06:B341: 5B        .byte $5B, $08   ; control byte for FF + counter

- D 1 - I - 0x01B353 06:B343: 80        .byte $80, $80, $80, $80, $80, $80, $80, $C0   ; normal bytes

- D 1 - I - 0x01B35B 06:B34B: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B35D 06:B34D: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80   ; 

- D 1 - I - 0x01B365 06:B355: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B367 06:B357: 3C        .byte $3C, $7E   ; 

- D 1 - I - 0x01B369 06:B359: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01B36B 06:B35B: FE        .byte $FE, $7C, $18, $18, $1C, $3E, $2F, $5F, $16, $2C, $00, $08   ; 

- D 1 - I - 0x01B377 06:B367: 4C        .byte $4C, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B379 06:B369: 80        .byte $80   ; 

- D 1 - I - 0x01B37A 06:B36A: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B37C 06:B36C: 03        .byte $03, $0F, $3F, $7F   ; 

- D 1 - I - 0x01B380 06:B370: 4C        .byte $4C, $05   ; control byte for 00 + counter

- D 1 - I - 0x01B382 06:B372: 20        .byte $20, $10, $08, $03, $0F, $3F, $FF, $E3, $DD, $EE, $F1   ; 

- D 1 - I - 0x01B38D 06:B37D: 4C        .byte $4C, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B38F 06:B37F: 01        .byte $01, $80, $C0, $E0, $F0, $F8, $FC, $FE, $FE, $80, $40, $A0, $50, $A8, $54, $AA   ; 
- D 1 - I - 0x01B39F 06:B38F: 55        .byte $55, $7F, $3F, $1F, $0F, $07, $03, $01   ; 

- D 1 - I - 0x01B3A7 06:B397: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B3A9 06:B399: 80        .byte $80, $C0, $60, $30, $18, $08   ; 

- D 1 - I - 0x01B3AF 06:B39F: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01B3B1 06:B3A1: 7F        .byte $7F, $3F, $9F, $CF, $E7, $F7, $AA, $55, $2A, $15, $0A, $05, $02, $01, $00, $80   ; 
- D 1 - I - 0x01B3C1 06:B3B1: C0        .byte $C0, $E0, $F0, $F8, $FC, $FE, $F8, $7C, $BE, $5F, $AF, $47, $A3, $45, $07, $03   ; 
- D 1 - I - 0x01B3D1 06:B3C1: 01        .byte $01, $00, $10, $18, $18, $10, $80, $40, $20, $10, $88, $C4, $E2, $F1, $00, $80   ; 
- D 1 - I - 0x01B3E1 06:B3D1: C0        .byte $C0, $E0, $70, $38, $1C, $0E, $4A, $12, $96, $69, $15, $50, $0A, $28, $10, $16   ; 
- D 1 - I - 0x01B3F1 06:B3E1: 41        .byte $41, $3C, $00, $24, $0B, $41   ; 

- D 1 - I - 0x01B3F7 06:B3E7: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B3F9 06:B3E9: 01        .byte $01, $07, $1A, $E8, $C0   ; 

- D 1 - I - 0x01B3FE 06:B3EE: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01B400 06:B3F0: FE        .byte $FE, $F9, $E7, $9A, $E8, $C0, $C0, $E0, $F0, $78, $BE, $5F, $57, $0F, $00, $80   ; 
- D 1 - I - 0x01B410 06:B400: C0        .byte $C0, $60, $B0, $5C, $57, $0F, $C0, $A0, $90, $88, $84, $82, $81, $C0, $3F, $1F   ; 
- D 1 - I - 0x01B420 06:B410: 0F        .byte $0F, $07, $03, $01   ; 

- D 1 - I - 0x01B424 06:B414: 4C        .byte $4C, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B426 06:B416: 03        .byte $03, $0C, $30, $C0   ; 

- D 1 - I - 0x01B42A 06:B41A: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B42C 06:B41C: FC        .byte $FC, $F3, $CF, $3F, $02, $0C, $30, $C0   ; 

- D 1 - I - 0x01B434 06:B424: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B436 06:B426: 01        .byte $01, $FD, $F3, $CF, $3F   ; 

- D 1 - I - 0x01B43B 06:B42B: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01B43D 06:B42D: FE        .byte $FE, $F9, $AA, $55, $2A, $15, $0A, $05, $02, $01   ; 

- D 1 - I - 0x01B447 06:B437: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B449 06:B439: AB        .byte $AB, $57, $2D, $1B, $0E, $05, $02, $01, $00, $80, $C2, $E4, $F1, $FA, $FC, $FE   ; 
- D 1 - I - 0x01B459 06:B449: F8        .byte $F8, $FC, $FE, $5F, $AF, $57, $AB, $55, $07, $03, $01, $A0, $50   ; 

- D 1 - I - 0x01B466 06:B456: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B468 06:B458: 80        .byte $80, $40, $20, $10, $88, $C7, $E3, $F1, $00, $80, $DF, $EF, $77, $38, $1C, $0E   ; 
- D 1 - I - 0x01B478 06:B468: 00        .byte $00, $10, $44, $3A, $1C, $0A, $50   ; 

- D 1 - I - 0x01B47F 06:B46F: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B481 06:B471: 10        .byte $10, $44, $3A, $1C, $0A, $50, $00, $06, $1A, $74, $D0, $80   ; 

- D 1 - I - 0x01B48D 06:B47D: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B48F 06:B47F: E6        .byte $E6, $9A, $74, $D0, $80   ; 

- D 1 - I - 0x01B494 06:B484: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B496 06:B486: F8        .byte $F8, $7C, $BE, $5F, $AF, $57, $AB, $55, $07, $03, $01   ; 

- D 1 - I - 0x01B4A1 06:B491: 4C        .byte $4C, $05   ; control byte for 00 + counter

- D 1 - I - 0x01B4A3 06:B493: BF        .byte $BF, $7F, $7F, $FF, $00   ; 

- D 1 - I - 0x01B4A8 06:B498: 5B        .byte $5B, $03   ; control byte for FF + counter

- D 1 - I - 0x01B4AA 06:B49A: 00        .byte $00, $BF   ; 

- D 1 - I - 0x01B4AC 06:B49C: 5B        .byte $5B, $03   ; control byte for FF + counter


- D 1 - I - 0x01B4AE 06:B49E: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B4B0 06:B4A0: 01        .byte $01, $00, $02, $00, $04, $00, $08   ; 

- D 1 - I - 0x01B4B7 06:B4A7: 4C        .byte $4C, $09   ; control byte for 00 + counter

- D 1 - I - 0x01B4B9 06:B4A9: C0        .byte $C0, $A0, $90, $88, $84, $82, $81, $80, $3F, $1F, $0F, $07, $03, $01   ; 

- D 1 - I - 0x01B4C7 06:B4B7: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B4C9 06:B4B9: 9F        .byte $9F, $FE, $7F, $BE, $FF, $7E, $FE, $FF, $85, $AA, $55, $2E, $B9, $56, $AA, $DD   ; 
- D 1 - I - 0x01B4D9 06:B4C9: AA        .byte $AA, $55, $28, $11   ; 

- D 1 - I - 0x01B4DD 06:B4CD: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B4DF 06:B4CF: 03        .byte $03, $0D   ; 

- D 1 - I - 0x01B4E1 06:B4D1: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B4E3 06:B4D3: 03        .byte $03, $0E, $3F, $FF, $FC, $F0, $80, $40, $A0, $50, $B8, $D4, $AA, $55, $7F, $BF   ; 
- D 1 - I - 0x01B4F3 06:B4E3: 5F        .byte $5F, $AF, $47, $03, $01, $00, $10, $00, $20, $00, $40, $00, $80   ; 

- D 1 - I - 0x01B500 06:B4F0: 4C        .byte $4C, $18   ; control byte for 00 + counter

- D 1 - I - 0x01B502 06:B4F2: 06        .byte $06   ; 

- D 1 - I - 0x01B503 06:B4F3: 4C        .byte $4C, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01B505 06:B4F5: 18        .byte $18, $7C, $66, $6E   ; 

- D 1 - I - 0x01B509 06:B4F9: 4C        .byte $4C, $0F   ; control byte for 00 + counter

- D 1 - I - 0x01B50B 06:B4FB: 03        .byte $03   ; 

- D 1 - I - 0x01B50C 06:B4FC: 4C        .byte $4C, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01B50E 06:B4FE: 01        .byte $01, $07, $06, $26, $33, $93   ; 

- D 1 - I - 0x01B514 06:B504: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B516 06:B506: 1F        .byte $1F, $19, $99, $CC, $6F, $E7, $B4, $10   ; 

- D 1 - I - 0x01B51E 06:B50E: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B520 06:B510: 3B        .byte $3B, $31, $98, $90, $80   ; 

- D 1 - I - 0x01B525 06:B515: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B527 06:B517: C0        .byte $C0, $70, $AC, $57, $AA, $55, $AA, $55, $3F, $0F, $03   ; 

- D 1 - I - 0x01B532 06:B522: 4C        .byte $4C, $09   ; control byte for 00 + counter

- D 1 - I - 0x01B534 06:B524: C0        .byte $C0, $70, $BC, $47   ; 

- D 1 - I - 0x01B538 06:B528: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B53A 06:B52A: 3F        .byte $3F, $0F, $03, $38, $FE, $3F, $0F, $03   ; 

- D 1 - I - 0x01B542 06:B532: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B544 06:B534: 3E        .byte $3E, $CF, $F3, $FC   ; 

- D 1 - I - 0x01B548 06:B538: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B54A 06:B53A: 3F        .byte $3F, $4F, $D3, $E4, $F8, $3E, $0F, $03, $00, $40, $D0, $E4, $38, $CE, $F3, $FC   ; 

- D 1 - I - 0x01B55A 06:B54A: 4C        .byte $4C, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01B55C 06:B54C: 06        .byte $06, $1E, $18, $98   ; 

- D 1 - I - 0x01B560 06:B550: 4C        .byte $4C, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B562 06:B552: 02        .byte $02, $03, $33, $F9, $CD, $DC, $76, $62, $30   ; 

- D 1 - I - 0x01B56B 06:B55B: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B56D 06:B55D: D9        .byte $D9, $69, $BC, $98, $C0, $80   ; 

- D 1 - I - 0x01B573 06:B563: 4C        .byte $4C, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01B575 06:B565: 80        .byte $80   ; 

- D 1 - I - 0x01B576 06:B566: 4C        .byte $4C, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B578 06:B568: AA        .byte $AA, $55, $2A, $14, $08, $00, $01, $02   ; 

- D 1 - I - 0x01B580 06:B570: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B582 06:B572: 01        .byte $01, $03, $07, $0F, $1E, $3C, $85, $0A, $15, $2A, $55, $AA, $55, $AA, $78, $F0   ; 
- D 1 - I - 0x01B592 06:B582: E0        .byte $E0, $C0, $80   ; 

- D 1 - I - 0x01B595 06:B585: 4C        .byte $4C, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B597 06:B587: 60        .byte $60, $18, $06, $00   ; 

- D 1 - I - 0x01B59B 06:B58B: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B59D 06:B58D: 9F        .byte $9F, $E7, $F9, $FF, $00, $FF   ; 

- D 1 - I - 0x01B5A3 06:B593: 4C        .byte $4C, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B5A5 06:B595: FF        .byte $FF, $00   ; 

- D 1 - I - 0x01B5A7 06:B597: 5B        .byte $5B, $06   ; control byte for FF + counter

- D 1 - I - 0x01B5A9 06:B599: 00        .byte $00, $FF   ; 

- D 1 - I - 0x01B5AB 06:B59B: 4C        .byte $4C, $05   ; control byte for 00 + counter


- D 1 - I - 0x01B5AD 06:B59D: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01B5AF 06:B59F: 00        .byte $00   ; 

- D 1 - I - 0x01B5B0 06:B5A0: 5B        .byte $5B, $05   ; control byte for FF + counter


- D 1 - I - 0x01B5B2 06:B5A2: 4C        .byte $4C, $09   ; control byte for 00 + counter

- D 1 - I - 0x01B5B4 06:B5A4: 01        .byte $01, $01, $0D, $CF, $6F, $3D, $1C, $08   ; 

- D 1 - I - 0x01B5BC 06:B5AC: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B5BE 06:B5AE: 8D        .byte $8D, $8F, $86, $B0, $B0, $80   ; 

- D 1 - I - 0x01B5C4 06:B5B4: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B5C6 06:B5B6: 4A        .byte $4A, $12, $96, $69, $15, $50, $0A, $28, $A0, $96, $41, $3C, $00, $24, $0B, $41   ; 
- D 1 - I - 0x01B5D6 06:B5C6: D1        .byte $D1, $2E, $A4, $88, $50, $A0, $51, $92, $54, $44, $21, $D3, $07, $8F, $0E, $2C   ; 
- D 1 - I - 0x01B5E6 06:B5D6: 80        .byte $80, $20, $08, $02   ; 

- D 1 - I - 0x01B5EA 06:B5DA: 4C        .byte $4C, $10   ; control byte for 00 + counter

- D 1 - I - 0x01B5EC 06:B5DC: 80        .byte $80, $20, $08, $02   ; 

- D 1 - I - 0x01B5F0 06:B5E0: 4C        .byte $4C, $0E   ; control byte for 00 + counter

- D 1 - I - 0x01B5F2 06:B5E2: 01        .byte $01, $07   ; 

- D 1 - I - 0x01B5F4 06:B5E4: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B5F6 06:B5E6: 01        .byte $01, $02, $05, $0F, $00, $01, $09, $4F, $CF, $F9, $F9, $CF, $00, $07, $1B, $6F   ; 
- D 1 - I - 0x01B606 06:B5F6: DF        .byte $DF, $FD, $FB, $EF, $91, $9F, $FF, $F1, $91, $9F, $FF, $F1, $DB, $BF, $FF, $FB   ; 
- D 1 - I - 0x01B616 06:B606: D5        .byte $D5, $BF, $FF, $FB   ; 

- D 1 - I - 0x01B61A 06:B60A: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B61C 06:B60C: E0        .byte $E0, $00, $E0, $1F, $03, $C3, $00, $80, $FF, $7F, $FF, $5C, $A8, $D4   ; 

- D 1 - I - 0x01B62A 06:B61A: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B62C 06:B61C: C0        .byte $C0, $70, $FC   ; 

- D 1 - I - 0x01B62F 06:B61F: 5B        .byte $5B, $05   ; control byte for FF + counter

- D 1 - I - 0x01B631 06:B621: 3F        .byte $3F, $0F, $03   ; 

- D 1 - I - 0x01B634 06:B624: 4C        .byte $4C, $07   ; control byte for 00 + counter


- D 1 - I - 0x01B636 06:B626: 5B        .byte $5B, $08   ; control byte for FF + counter


- D 1 - I - 0x01B638 06:B628: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B63A 06:B62A: CA        .byte $CA, $D0, $E4, $F1, $7B, $3C, $0F, $03, $00, $30, $0A, $08, $02   ; 

- D 1 - I - 0x01B647 06:B637: 4C        .byte $4C, $07   ; control byte for 00 + counter

- D 1 - I - 0x01B649 06:B639: 01        .byte $01, $02, $00, $03   ; 

- D 1 - I - 0x01B64D 06:B63D: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B64F 06:B63F: 01        .byte $01, $02, $05, $0B, $0E, $38, $61, $C7, $1C, $70, $C3, $0F, $1F, $3A, $75, $EF   ; 
- D 1 - I - 0x01B65F 06:B64F: 5E        .byte $5E, $F5, $EB, $5F, $FE, $3E, $26, $E4, $F7, $7F, $4B, $55, $FE, $FE, $FE, $FE   ; 
- D 1 - I - 0x01B66F 06:B65F: FC        .byte $FC, $FC, $F8, $FA   ; 

- D 1 - I - 0x01B673 06:B663: 5B        .byte $5B, $06   ; control byte for FF + counter


- D 1 - I - 0x01B675 06:B665: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B677 06:B667: 30        .byte $30, $02, $08, $24   ; 

- D 1 - I - 0x01B67B 06:B66B: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B67D 06:B66D: 90        .byte $90, $90, $90, $95, $9A, $95, $9A, $95, $60, $60, $60, $60, $60, $60, $60, $60   ; 

- D 1 - I - 0x01B68D 06:B67D: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B68F 06:B67F: 55        .byte $55, $AA, $55, $AA, $55   ; 

- D 1 - I - 0x01B694 06:B684: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B696 06:B686: 04        .byte $04, $08, $10, $21, $03, $06, $0C, $18, $06, $1D, $3A, $35, $2B, $57, $2E, $DD   ; 
- D 1 - I - 0x01B6A6 06:B696: 55        .byte $55, $AF, $EF, $7D, $1D, $B9, $6B, $66, $FA, $F6, $F6, $EE, $EC, $DC, $DA, $8C   ; 

- D 1 - I - 0x01B6B6 06:B6A6: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B6B8 06:B6A8: D3        .byte $D3, $10, $08, $2D, $6E, $03, $81, $13, $10, $07, $27, $22, $01   ; 

- D 1 - I - 0x01B6C5 06:B6B5: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B6C7 06:B6B7: 08        .byte $08, $1C, $08, $8C, $F6, $FC   ; 

- D 1 - I - 0x01B6CD 06:B6BD: 5B        .byte $5B, $05   ; control byte for FF + counter

- D 1 - I - 0x01B6CF 06:B6BF: 72        .byte $72, $08, $00, $C3, $DF, $C7, $FB, $C7   ; 

- D 1 - I - 0x01B6D7 06:B6C7: 5B        .byte $5B, $03   ; control byte for FF + counter

- D 1 - I - 0x01B6D9 06:B6C9: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 1 - I - 0x01B6DE 06:B6CE: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B6E0 06:B6D0: 03        .byte $03, $03, $01, $00, $22, $06, $06, $44   ; 

- D 1 - I - 0x01B6E8 06:B6D8: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B6EA 06:B6DA: 1C        .byte $1C, $13, $15, $29, $29, $2B, $3E, $3F, $5F, $7E, $7F, $BD, $FB, $F7, $C4, $C2   ; 
- D 1 - I - 0x01B6FA 06:B6EA: 85        .byte $85, $92, $87, $01, $0A, $03, $1A, $15, $1A, $15, $2A, $35, $2A, $35, $60, $60   ; 
- D 1 - I - 0x01B70A 06:B6FA: 60        .byte $60, $60, $C0, $C0, $C0, $C0, $AA, $55, $AA, $55, $AA, $55, $AA, $55   ; 

- D 1 - I - 0x01B718 06:B708: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B71A 06:B70A: 75        .byte $75, $DA, $A5, $EF, $FA, $3D, $0F, $03, $75, $DA, $A5, $EF, $3A, $CD, $F3, $FC   ; 
- D 1 - I - 0x01B72A 06:B71A: B0        .byte $B0, $E1, $C3, $86, $CC, $EE, $F1, $F8, $7A, $65, $6B, $37, $1F, $0F, $07, $01   ; 
- D 1 - I - 0x01B73A 06:B72A: A6        .byte $A6, $22, $F2, $3B, $2F, $AF, $77, $2F   ; 

- D 1 - I - 0x01B742 06:B732: 5B        .byte $5B, $03   ; control byte for FF + counter

- D 1 - I - 0x01B744 06:B734: FE        .byte $FE, $FC, $FC, $F9, $F3, $66, $C4, $8C, $B8, $B8, $B0, $70, $60, $BC, $30, $48   ; 
- D 1 - I - 0x01B754 06:B744: 70        .byte $70, $B0, $A0, $E0, $40, $40, $92, $96, $69, $15, $50, $0A, $28, $91, $16, $41   ; 
- D 1 - I - 0x01B764 06:B754: BC        .byte $BC, $00, $24, $0B, $41, $95, $22, $49, $14, $81, $22, $11, $84, $95, $22, $49   ; 
- D 1 - I - 0x01B774 06:B764: 14        .byte $14, $81, $22, $11, $84, $04, $0C, $89, $89, $89, $11, $13, $13, $6B, $53, $56   ; 
- D 1 - I - 0x01B784 06:B774: 56        .byte $56, $56, $AE, $AC, $AC, $F8, $F6, $FA, $F4, $E8, $F0, $F4, $EC, $19, $17, $1B   ; 
- D 1 - I - 0x01B794 06:B784: 35        .byte $35, $2B, $33, $77, $2F, $40, $40, $40, $40, $80, $80, $80, $80, $80, $80, $80   ; 
- D 1 - I - 0x01B7A4 06:B794: 80        .byte $80   ; 

- D 1 - I - 0x01B7A5 06:B795: 4C        .byte $4C, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01B7A7 06:B797: 01        .byte $01, $01, $01, $01, $03, $03, $03, $03, $32, $32, $32, $3A, $36, $32, $32, $32   ; 
- D 1 - I - 0x01B7B7 06:B7A7: 0C        .byte $0C, $0C, $0C, $04, $08, $0C, $0C, $0C, $FE   ; 

- D 1 - I - 0x01B7C0 06:B7B0: 5B        .byte $5B, $06   ; control byte for FF + counter

- D 1 - I - 0x01B7C2 06:B7B2: 7F        .byte $7F, $20, $10, $28, $15, $29, $15, $09, $05, $4D, $88, $E0, $FC, $FF, $7F, $3F   ; 
- D 1 - I - 0x01B7D2 06:B7C2: 7F        .byte $7F, $7F, $1F, $03, $80, $E0, $F8, $CF, $87, $C1, $F9, $C7, $41, $81, $F0   ; 

- D 1 - I - 0x01B7E1 06:B7D1: 5B        .byte $5B, $05   ; control byte for FF + counter

- D 1 - I - 0x01B7E3 06:B7D3: 7F        .byte $7F, $0F, $00, $80, $F0, $12, $13, $F2, $12, $13, $11, $0F, $FE   ; 

- D 1 - I - 0x01B7F0 06:B7E0: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B7F2 06:B7E2: FE        .byte $FE, $F0, $01, $03, $7F, $BE, $7C, $C9, $E3, $E6, $C6, $8C, $E7, $CF, $9E, $1D   ; 
- D 1 - I - 0x01B802 06:B7F2: 6A        .byte $6A, $FC, $F0, $C8, $E0, $C0, $80, $80   ; 

- D 1 - I - 0x01B80A 06:B7FA: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B80C 06:B7FC: 01        .byte $01, $02, $C0, $80, $01, $03, $07, $0F, $1E, $3C, $03, $F6, $E6, $97, $E7, $D6   ; 
- D 1 - I - 0x01B81C 06:B80C: F4        .byte $F4, $E0, $FC, $08, $18, $69, $19, $0A, $08, $00, $91, $49, $59, $61, $52, $A2   ; 
- D 1 - I - 0x01B82C 06:B81C: 62        .byte $62, $52, $96, $4E, $5E, $66, $5C, $AC, $6C, $5C, $01, $01, $01, $01, $02, $02   ; 
- D 1 - I - 0x01B83C 06:B82C: 02        .byte $02, $02, $06, $06, $06, $06, $0C, $0C, $0C, $0D, $C0, $F0, $3C, $0F, $03   ; 

- D 1 - I - 0x01B84B 06:B83B: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B84D 06:B83D: 3F        .byte $3F, $0F, $C3, $F0, $FC   ; 

- D 1 - I - 0x01B852 06:B842: 5B        .byte $5B, $03   ; control byte for FF + counter

- D 1 - I - 0x01B854 06:B844: 7A        .byte $7A, $DA, $BA, $FA, $FA, $3A, $0E, $03, $64, $C4, $A4, $E4, $24, $C4, $F0, $FC   ; 
- D 1 - I - 0x01B864 06:B854: 01        .byte $01, $00, $04, $00, $10, $00, $40   ; 

- D 1 - I - 0x01B86B 06:B85B: 4C        .byte $4C, $09   ; control byte for 00 + counter

- D 1 - I - 0x01B86D 06:B85D: 32        .byte $32, $32, $32, $32, $32, $32, $32, $32, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C   ; 
- D 1 - I - 0x01B87D 06:B86D: 3F        .byte $3F, $3F, $1F, $0F, $03   ; 

- D 1 - I - 0x01B882 06:B872: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B884 06:B874: 01        .byte $01, $03   ; 

- D 1 - I - 0x01B886 06:B876: 4C        .byte $4C, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B888 06:B878: 7F        .byte $7F, $77, $DF, $F5, $DF, $FF, $3F, $07, $83, $8B, $2B, $21, $01   ; 

- D 1 - I - 0x01B895 06:B885: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B897 06:B887: AF        .byte $AF, $C3, $AC, $C3, $AC, $C3, $FC, $FF, $BF, $DF, $BF, $DF, $BF, $1F, $03, $00   ; 
- D 1 - I - 0x01B8A7 06:B897: FE        .byte $FE, $7E, $5A, $62, $47, $7F, $7C, $F0   ; 
- D 1 - I - 0x01B8AF 06:B89F: 8E        .byte $8E   ; 

- D 1 - I - 0x01B8B0 06:B8A0: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01B8B2 06:B8A2: FA        .byte $FA, $E7, $FC, $F0, $00, $B8, $F0, $E0, $C0, $80, $00, $11, $12, $B0, $E0, $C1   ; 
- D 1 - I - 0x01B8C2 06:B8B2: 83        .byte $83, $07, $0F, $0E, $2C, $84, $A4, $64, $44, $48, $88, $48, $48, $98, $B8, $78   ; 
- D 1 - I - 0x01B8D2 06:B8C2: 58        .byte $58, $70, $B0, $70, $70   ; 

- D 1 - I - 0x01B8D7 06:B8C7: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01B8D9 06:B8C9: AA        .byte $AA   ; 

- D 1 - I - 0x01B8DA 06:B8CA: 4C        .byte $4C, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01B8DC 06:B8CC: 05        .byte $05, $05, $06, $05, $09, $0E, $09, $0A, $19, $18, $1A, $1A, $31, $34, $32, $32   ; 
- D 1 - I - 0x01B8EC 06:B8DC: C0        .byte $C0, $30, $8C, $C3, $F0, $F8, $FC, $FF, $3F, $0F, $83, $C0, $F0, $F8, $FC, $FF   ; 

- D 1 - I - 0x01B8FC 06:B8EC: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01B8FE 06:B8EE: C0        .byte $C0, $30, $0C, $03   ; 

- D 1 - I - 0x01B902 06:B8F2: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B904 06:B8F4: 3F        .byte $3F, $0F, $03, $00, $80, $40, $20, $10, $08, $04, $02, $01, $00, $80, $C0, $E0   ; 
- D 1 - I - 0x01B914 06:B904: F0        .byte $F0, $F8, $FC, $FE, $03, $02, $0D, $1B, $39, $64, $A5, $E0   ; 

- D 1 - I - 0x01B920 06:B910: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01B922 06:B912: 03        .byte $03, $02, $0C, $11, $64, $2A, $D1, $2E, $A4, $88, $50, $A0, $41, $82, $54, $44   ; 
- D 1 - I - 0x01B932 06:B922: 21        .byte $21, $D3, $07, $8F, $1E, $3C, $FB, $F7, $FB, $F7, $EF, $F7, $FE, $EE, $1A, $15   ; 
- D 1 - I - 0x01B942 06:B932: 19        .byte $19, $22, $2F, $22, $74, $2C, $10, $90, $10, $10, $20, $20, $20, $20, $60, $60   ; 
- D 1 - I - 0x01B952 06:B942: 60        .byte $60, $60, $C0, $C0, $C0, $C0, $1A, $12, $14, $16, $28, $25, $3C, $21, $68, $6A   ; 
- D 1 - I - 0x01B962 06:B952: 62        .byte $62, $65, $C8, $C1, $D6, $C8, $A0, $C0, $F2, $F8, $FC, $3E, $0F, $03, $A0, $C0   ; 
- D 1 - I - 0x01B972 06:B962: F2        .byte $F2, $F8, $3C, $CE, $F3, $FC, $C0, $30, $0C, $43, $00, $48, $82, $C0, $3F, $0F   ; 
- D 1 - I - 0x01B982 06:B972: 03        .byte $03, $40, $00, $48, $82, $C0, $32, $22, $22, $04, $04, $08, $08, $10, $0C, $1C   ; 
- D 1 - I - 0x01B992 06:B982: 1C        .byte $1C, $38, $38, $70, $70, $E0, $3F, $41, $41, $9F   ; 

- D 1 - I - 0x01B99C 06:B98C: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01B99E 06:B98E: 00        .byte $00, $3F, $BF, $63, $7F, $7F, $7E   ; 

- D 1 - I - 0x01B9A5 06:B995: 4C        .byte $4C, $06   ; control byte for 00 + counter

- D 1 - I - 0x01B9A7 06:B997: 01        .byte $01, $01, $01   ; 

- D 1 - I - 0x01B9AA 06:B99A: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01B9AC 06:B99C: 03        .byte $03, $F6, $E6, $97, $E7, $D6, $F4, $F0, $FC, $08, $18, $69, $19, $0A, $08, $00   ; 
- D 1 - I - 0x01B9BC 06:B9AC: EE        .byte $EE, $F2, $EC, $DA, $F4, $EC, $EC, $D4, $65, $53, $ED, $51, $57, $EF, $AB, $C7   ; 
- D 1 - I - 0x01B9CC 06:B9BC: 56        .byte $56, $48, $69, $66, $98, $E6, $A8, $A1, $A2, $88, $A5, $94, $51, $52, $09, $24   ; 
- D 1 - I - 0x01B9DC 06:B9CC: ED        .byte $ED, $78, $3C, $1E, $0F, $07, $02, $01, $6D, $B8, $DC, $EE, $F7, $FB, $FC, $FE   ; 
- D 1 - I - 0x01B9EC 06:B9DC: 02        .byte $02, $02, $02, $04, $04, $04, $08, $08, $01, $01, $01, $03, $03, $03, $07, $07   ; 
- D 1 - I - 0x01B9FC 06:B9EC: 80        .byte $80, $40, $20, $90, $08, $C4, $82, $E1, $7F, $3F, $1F, $8F, $07, $C3, $81, $E0   ; 
- D 1 - I - 0x01BA0C 06:B9FC: 94        .byte $94, $58, $30, $10, $08, $04, $02, $01, $68, $A0, $C0, $E0, $F0, $F8, $FC, $FE   ; 
- D 1 - I - 0x01BA1C 06:BA0C: 81        .byte $81, $42, $22, $25, $1A, $16, $09, $0A, $0E, $9C, $DC, $D9, $E2, $E6, $F1, $F2   ; 
- D 1 - I - 0x01BA2C 06:BA1C: 77        .byte $77, $BE, $FF, $EF, $FF, $FD, $7D, $BD, $76, $BC, $F0, $E0, $F0, $F2, $72, $B2   ; 
- D 1 - I - 0x01BA3C 06:BA2C: 80        .byte $80, $00, $80, $E0, $D4, $7A, $BD, $D6, $00, $40, $21, $13, $3B, $8D, $46, $AB   ; 
- D 1 - I - 0x01BA4C 06:BA3C: 09        .byte $09, $11, $11, $12, $23, $23, $25, $47, $06, $0E, $0E, $0C, $1C, $1C, $18, $38   ; 
- D 1 - I - 0x01BA5C 06:BA4C: 08        .byte $08, $05, $04, $04, $03, $02, $02, $01, $F0, $F9, $F8, $F8, $FD, $FC, $FC, $FE   ; 
- D 1 - I - 0x01BA6C 06:BA5C: AD        .byte $AD, $7D, $EF, $EC, $F8, $A0, $81, $02, $A2, $72, $E0, $E3, $F7, $AF, $9E, $3C   ; 
- D 1 - I - 0x01BA7C 06:BA6C: EF        .byte $EF, $F5, $FB, $FD, $7E, $BF, $1F, $0F, $91, $AA, $B4, $3A, $B9, $1A, $0B, $03   ; 
- D 1 - I - 0x01BA8C 06:BA7C: 00        .byte $00, $80, $C0, $60, $D0, $78, $BC, $DE, $80, $C0, $60, $B0, $38, $8C, $46, $A3   ; 
- D 1 - I - 0x01BA9C 06:BA8C: 47        .byte $47, $C7, $C7, $C7, $C7, $C7, $C7, $C7, $38, $38, $38, $38, $39, $38, $38, $38   ; 
- D 1 - I - 0x01BAAC 06:BA9C: AB        .byte $AB, $55, $2B, $15, $09, $01, $03, $07   ; 

- D 1 - I - 0x01BAB4 06:BAA4: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BAB6 06:BAA6: 02        .byte $02, $06, $0E, $1C, $38, $00, $80, $80, $80, $80, $80, $80, $00, $FF, $7F, $7F   ; 
- D 1 - I - 0x01BAC6 06:BAB6: 7F        .byte $7F, $7F, $7F, $7F, $FF, $01, $01, $01, $01, $01, $01, $01, $01, $FE, $FE, $FE   ; 
- D 1 - I - 0x01BAD6 06:BAC6: FE        .byte $FE, $FE, $FE, $FE, $FE, $05, $0A, $15, $2A, $45, $82, $01, $00, $78, $F0, $E0   ; 
- D 1 - I - 0x01BAE6 06:BAD6: C0        .byte $C0, $80   ; 

- D 1 - I - 0x01BAE8 06:BAD8: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BAEA 06:BADA: 07        .byte $07, $83, $41, $A0, $50, $A8, $54, $AA, $03, $01   ; 

- D 1 - I - 0x01BAF4 06:BAE4: 4C        .byte $4C, $06   ; control byte for 00 + counter

- D 1 - I - 0x01BAF6 06:BAE6: EF        .byte $EF, $F5, $FB, $FD, $7E, $3F, $1F, $0F, $91, $AA, $B4, $3A, $39, $1A, $0B, $03   ; 
- D 1 - I - 0x01BB06 06:BAF6: C7        .byte $C7, $E7, $E3, $E3, $F3, $71, $71, $79, $39, $19, $1D, $1D, $0D, $0E, $0E, $06   ; 
- D 1 - I - 0x01BB16 06:BB06: 5C        .byte $5C, $B6, $01, $01, $01   ; 

- D 1 - I - 0x01BB1B 06:BB0B: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01BB1D 06:BB0D: 00        .byte $00, $49, $37, $FE, $FE, $FE   ; 

- D 1 - I - 0x01BB23 06:BB13: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BB25 06:BB15: 40        .byte $40, $40, $40, $4A, $80, $80, $80, $00, $80, $80, $80, $80   ; 

- D 1 - I - 0x01BB31 06:BB21: 4C        .byte $4C, $04   ; control byte for 00 + counter

- D 1 - I - 0x01BB33 06:BB23: 8F        .byte $8F, $5F, $3E, $1E, $0C   ; 

- D 1 - I - 0x01BB38 06:BB28: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BB3A 06:BB2A: 70        .byte $70, $A0, $C1, $E0, $F1, $FA, $FD, $FA, $03, $03, $06, $06, $0C, $0C, $18, $18   ; 
- D 1 - I - 0x01BB4A 06:BB3A: 54        .byte $54, $A8, $51, $A8, $51, $A2, $45, $A2, $01, $01, $02, $02, $04, $05, $0A, $09   ; 
- D 1 - I - 0x01BB5A 06:BB4A: 54        .byte $54, $AA, $55, $A9, $52, $AA, $54, $A4, $55, $2A, $15, $0A, $05, $02, $01   ; 

- D 1 - I - 0x01BB69 06:BB59: 4C        .byte $4C, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01BB6B 06:BB5B: 80        .byte $80, $C0, $60, $D4, $7A, $BD, $DE, $80, $C0, $61, $B3, $3B, $8D, $46, $A3, $AA   ; 
- D 1 - I - 0x01BB7B 06:BB6B: 55        .byte $55, $2A, $14, $08, $08, $11, $13   ; 

- D 1 - I - 0x01BB82 06:BB72: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BB84 06:BB74: 01        .byte $01, $03, $07, $07, $0E, $0C, $80, $C0, $60, $30, $78, $FC, $FE, $FF, $7F, $3F   ; 
- D 1 - I - 0x01BB94 06:BB84: 9F        .byte $9F, $CF, $87, $03, $01   ; 

- D 1 - I - 0x01BB99 06:BB89: 4C        .byte $4C, $09   ; control byte for 00 + counter

- D 1 - I - 0x01BB9B 06:BB8B: F5        .byte $F5, $EA, $D5, $EA, $D5, $AA, $55, $AA   ; 

- D 1 - I - 0x01BBA3 06:BB93: 4C        .byte $4C, $08   ; control byte for 00 + counter

- D 1 - I - 0x01BBA5 06:BB95: 55        .byte $55, $AA, $55, $AA, $55, $AA, $55, $AA, $12, $15, $2A, $24, $4A, $54, $A8, $94   ; 
- D 1 - I - 0x01BBB5 06:BBA5: 48        .byte $48, $A8, $50, $90, $20, $A0, $40, $40, $07, $83, $41, $A0, $50, $A0, $41, $83   ; 
- D 1 - I - 0x01BBC5 06:BBB5: 03        .byte $03, $01, $00, $03, $07, $0F, $1E, $3C, $DE, $DE, $DE, $DE, $DE, $DE, $DE, $D8   ; 
- D 1 - I - 0x01BBD5 06:BBC5: F1        .byte $F1, $F9, $F9, $61, $79, $61, $78, $78, $82, $C6, $6E, $38, $68, $CC, $8E, $08   ; 
- D 1 - I - 0x01BBE5 06:BBD5: 44        .byte $44, $38, $90, $44, $96, $33, $71, $10, $3E, $3E, $7C, $7C, $7C, $5C, $5C, $00   ; 
- D 1 - I - 0x01BBF5 06:BBE5: 3F        .byte $3F, $3F, $7F, $03, $02, $12, $12, $00, $13, $19, $0C, $0E, $07, $03, $01, $00   ; 
- D 1 - I - 0x01BC05 06:BBF5: 0C        .byte $0C, $06, $03, $01   ; 

- D 1 - I - 0x01BC09 06:BBF9: 4C        .byte $4C, $04   ; control byte for 00 + counter


- D 1 - I - 0x01BC0B 06:BBFB: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01BC0D 06:BBFD: 82        .byte $82, $82, $84, $FC, $F8, $08   ; 

- D 1 - I - 0x01BC13 06:BC03: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BC15 06:BC05: 7D        .byte $7D, $7C, $79, $02, $05, $02, $28, $50, $A0, $40, $A0, $40, $80, $40, $80, $80   ; 

- D 1 - I - 0x01BC25 06:BC15: 4C        .byte $4C, $06   ; control byte for 00 + counter

- D 1 - I - 0x01BC27 06:BC17: 05        .byte $05, $03, $0F, $1E, $18, $73, $77, $EF, $04, $01, $03, $0F, $0F, $1F, $7F, $7F   ; 
- D 1 - I - 0x01BC37 06:BC27: 1B        .byte $1B, $33, $EF, $DF   ; 

- D 1 - I - 0x01BC3B 06:BC2B: 5B        .byte $5B, $04   ; control byte for FF + counter

- D 1 - I - 0x01BC3D 06:BC2D: 1F        .byte $1F   ; 

- D 1 - I - 0x01BC3E 06:BC2E: 5B        .byte $5B, $07   ; control byte for FF + counter

- D 1 - I - 0x01BC40 06:BC30: C4        .byte $C4, $F0, $78, $A6, $F1, $E8, $D8, $FF, $D0, $E0, $F0, $F0, $F8, $FC, $F8, $E0   ; 
- D 1 - I - 0x01BC50 06:BC40: 10        .byte $10, $10, $20, $20, $40, $40, $80, $80, $05, $0A, $15, $0A, $15, $2A, $55, $2A   ; 
- D 1 - I - 0x01BC60 06:BC50: FF        .byte $FF, $7F   ; 

- D 1 - I - 0x01BC62 06:BC52: 5B        .byte $5B, $1E   ; control byte for FF + counter

- D 1 - I - 0x01BC64 06:BC54: AA        .byte $AA, $55, $80, $80, $80   ; 

- D 1 - I - 0x01BC69 06:BC59: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01BC6B 06:BC5B: 01        .byte $01   ; 

- D 1 - I - 0x01BC6C 06:BC5C: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BC6E 06:BC5E: 7F        .byte $7F, $7F, $7F   ; 

- D 1 - I - 0x01BC71 06:BC61: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BC73 06:BC63: F8        .byte $F8, $7C, $3E, $1F, $0F, $E7, $E7, $45, $07, $03, $C1, $E0, $F0, $18, $18, $10   ; 
- D 1 - I - 0x01BC83 06:BC73: C0        .byte $C0, $40, $20, $10, $88, $C4, $E2, $F1, $00, $80, $C0, $E0, $70, $38, $1C, $0E   ; 
- D 1 - I - 0x01BC93 06:BC83: 01        .byte $01, $01, $02, $02, $04, $FC, $F8, $08   ; 

- D 1 - I - 0x01BC9B 06:BC8B: 4C        .byte $4C, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BC9D 06:BC8D: FD        .byte $FD, $FC, $FB, $02, $05, $06, $01, $01, $02, $02, $05, $05, $0B, $0A, $54, $AA   ; 
- D 1 - I - 0x01BCAD 06:BC9D: 55        .byte $55, $AD, $52, $AA, $54, $A4, $28, $50, $80, $80, $00   ; 

- D 1 - I - 0x01BCB8 06:BCA8: 5B        .byte $5B, $02   ; control byte for FF + counter

- D 1 - I - 0x01BCBA 06:BCAA: 00        .byte $00, $80, $80, $7F, $7F, $FF   ; 

- D 1 - I - 0x01BCC0 06:BCB0: 4C        .byte $4C, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BCC2 06:BCB2: 3F        .byte $3F   ; 

- D 1 - I - 0x01BCC3 06:BCB3: 5B        .byte $5B, $07   ; control byte for FF + counter

- D 1 - I - 0x01BCC5 06:BCB5: 7F        .byte $7F, $5B, $07   ; 



off_01_BCB8:
- D 1 - I - 0x01BCC8 06:BCB8: 25        .byte $25   ; prepare control byte for 00
- D 1 - I - 0x01BCC9 06:BCB9: 26        .byte $26   ; prepare control byte for FF

- D 1 - I - 0x01BCCA 06:BCBA: 26        .byte $26, $10   ; control byte for FF + counter

- D 1 - I - 0x01BCCC 06:BCBC: FA        .byte $FA, $ED, $FA, $B4, $E8, $B0, $E0, $40   ; normal bytes

- D 1 - I - 0x01BCD4 06:BCC4: 26        .byte $26, $04   ; control byte for FF + counter

- D 1 - I - 0x01BCD6 06:BCC6: FE        .byte $FE, $FD, $FA, $F4, $01, $02, $04, $08, $10, $20, $40, $80, $E8, $D0, $A0, $40   ; 
- D 1 - I - 0x01BCE6 06:BCD6: 80        .byte $80   ; 

- D 1 - I - 0x01BCE7 06:BCD7: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BCE9 06:BCD9: 03        .byte $03, $06, $0B, $14, $0B, $1C, $23, $1C, $03, $07, $0B, $17, $0F, $1F, $2F, $1F   ; 
- D 1 - I - 0x01BCF9 06:BCE9: 00        .byte $00, $C0, $30, $CC, $33, $CC, $32, $CC, $C0, $F0, $FC   ; 

- D 1 - I - 0x01BD04 06:BCF4: 26        .byte $26, $02   ; control byte for FF + counter

- D 1 - I - 0x01BD06 06:BCF6: FE        .byte $FE, $FE, $FC, $2F, $57, $AB, $17, $2B, $15, $22, $00, $2F, $57, $AB, $17, $2B   ; 
- D 1 - I - 0x01BD16 06:BD06: 15        .byte $15, $22, $00, $F4, $EA, $D5, $E8, $D4, $A8, $44, $00, $F4, $EA, $D5, $E8, $D4   ; 
- D 1 - I - 0x01BD26 06:BD16: A8        .byte $A8, $44, $00, $AA, $51, $AC, $35, $AA, $5D, $A2, $15, $AA, $51, $AC, $35, $AA   ; 
- D 1 - I - 0x01BD36 06:BD26: 5D        .byte $5D, $A2, $15, $3F, $7F   ; 

- D 1 - I - 0x01BD3B 06:BD2B: 26        .byte $26, $02   ; control byte for FF + counter

- D 1 - I - 0x01BD3D 06:BD2D: AA        .byte $AA, $55, $55, $55, $23, $40, $80   ; 

- D 1 - I - 0x01BD44 06:BD34: 25        .byte $25, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BD46 06:BD36: 55        .byte $55, $55, $55, $32, $CA, $F6, $FC, $BC, $68, $78, $70, $FC, $F8, $38, $08, $10   ; 
- D 1 - I - 0x01BD56 06:BD46: 40        .byte $40, $40, $40, $01, $20, $08, $44, $11   ; 

- D 1 - I - 0x01BD5E 06:BD4E: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BD60 06:BD50: 01        .byte $01, $20, $08, $44, $11   ; 

- D 1 - I - 0x01BD65 06:BD55: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BD67 06:BD57: 55        .byte $55, $AA, $D5, $EA, $F5, $FA, $FD, $FE   ; 

- D 1 - I - 0x01BD6F 06:BD5F: 26        .byte $26, $08   ; control byte for FF + counter

- D 1 - I - 0x01BD71 06:BD61: 00        .byte $00, $80, $40, $A0, $50, $A8, $54, $AA, $00, $80, $C0, $E0, $F0, $F8, $FC, $FE   ; 
- D 1 - I - 0x01BD81 06:BD71: 45        .byte $45, $A0, $08, $44, $10   ; 

- D 1 - I - 0x01BD86 06:BD76: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BD88 06:BD78: 45        .byte $45, $A0, $08, $44, $10   ; 

- D 1 - I - 0x01BD8D 06:BD7D: 25        .byte $25, $07   ; control byte for 00 + counter

- D 1 - I - 0x01BD8F 06:BD7F: 10        .byte $10, $10, $10   ; 

- D 1 - I - 0x01BD92 06:BD82: 25        .byte $25, $04   ; control byte for 00 + counter

- D 1 - I - 0x01BD94 06:BD84: 10        .byte $10, $00, $03, $0F, $2F, $00, $20, $20   ; 
- D 1 - I - 0x01BD9C 06:BD8C: 20        .byte $20   ; 

- D 1 - I - 0x01BD9D 06:BD8D: 25        .byte $25, $04   ; control byte for 00 + counter

- D 1 - I - 0x01BD9F 06:BD8F: 20        .byte $20   ; 

- D 1 - I - 0x01BDA0 06:BD90: 25        .byte $25, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BDA2 06:BD92: 10        .byte $10, $F8, $FC, $FE   ; 

- D 1 - I - 0x01BDA6 06:BD96: 26        .byte $26, $04   ; control byte for FF + counter

- D 1 - I - 0x01BDA8 06:BD98: DF        .byte $DF, $CF, $CF, $DB, $DD, $7B, $B9, $98, $88, $80, $8C, $96, $93, $10, $78, $B8   ; 
- D 1 - I - 0x01BDB8 06:BDA8: 3C        .byte $3C, $9F, $4E, $36, $0A, $47, $07, $83, $01, $80, $41, $31, $09, $03, $0D, $3D   ; 
- D 1 - I - 0x01BDC8 06:BDB8: FD        .byte $FD, $FE, $FC, $EB, $A4, $FC, $F2, $C2, $02, $02, $0C, $2B, $A4, $00, $02, $01   ; 
- D 1 - I - 0x01BDD8 06:BDC8: 02        .byte $02, $01   ; 

- D 1 - I - 0x01BDDA 06:BDCA: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 1 - I - 0x01BDDC 06:BDCC: C0        .byte $C0, $F7, $BB, $6F, $F7, $DF, $EF, $FF, $FE, $A9, $27, $53, $4F, $A7, $9F, $4E   ; 
- D 1 - I - 0x01BDEC 06:BDDC: 30        .byte $30   ; 

- D 1 - I - 0x01BDED 06:BDDD: 26        .byte $26, $03   ; control byte for FF + counter

- D 1 - I - 0x01BDEF 06:BDDF: DF        .byte $DF, $CF, $C7, $83, $81, $7F, $BF, $5F, $8F, $47, $83, $01, $0E, $00, $80, $40   ; 
- D 1 - I - 0x01BDFF 06:BDEF: A0        .byte $A0, $50, $AF, $57, $AA, $00, $80   ; 

- D 1 - I - 0x01BE06 06:BDF6: 26        .byte $26, $03   ; control byte for FF + counter

- D 1 - I - 0x01BE08 06:BDF8: F8        .byte $F8, $FC, $FE, $80, $00, $20, $00, $08, $00, $02   ; 

- D 1 - I - 0x01BE12 06:BE02: 25        .byte $25, $09   ; control byte for 00 + counter

- D 1 - I - 0x01BE14 06:BE04: 70        .byte $70, $38, $1D, $0D, $09, $09, $01, $01, $0C, $06, $02, $02, $06, $06, $06, $06   ; 
- D 1 - I - 0x01BE24 06:BE14: 45        .byte $45, $A0, $09, $44, $11   ; 

- D 1 - I - 0x01BE29 06:BE19: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BE2B 06:BE1B: 45        .byte $45, $A0, $09, $44, $11   ; 

- D 1 - I - 0x01BE30 06:BE20: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BE32 06:BE22: 40        .byte $40, $00, $03, $0C, $34, $EA, $55, $AA, $3F, $FF, $FC, $F0, $C0   ; 

- D 1 - I - 0x01BE3F 06:BE2F: 25        .byte $25, $03   ; control byte for 00 + counter


- D 1 - I - 0x01BE41 06:BE31: 26        .byte $26, $02   ; control byte for FF + counter

- D 1 - I - 0x01BE43 06:BE33: 3F        .byte $3F, $1F, $0F, $07, $03, $81, $7F, $3F, $1F, $0F, $07, $03, $01, $00, $01, $01   ; 
- D 1 - I - 0x01BE53 06:BE43: 01        .byte $01, $01, $01, $01, $01, $01, $06, $06, $06, $06, $06, $06, $06, $0E, $01, $00   ; 
- D 1 - I - 0x01BE63 06:BE53: 04        .byte $04, $00, $10, $00, $40   ; 

- D 1 - I - 0x01BE68 06:BE58: 25        .byte $25, $09   ; control byte for 00 + counter

- D 1 - I - 0x01BE6A 06:BE5A: 55        .byte $55, $2A, $15, $0A, $05, $02, $01   ; 

- D 1 - I - 0x01BE71 06:BE61: 25        .byte $25, $09   ; control byte for 00 + counter

- D 1 - I - 0x01BE73 06:BE63: 40        .byte $40, $A0, $50, $A8, $54, $AA, $55, $AA   ; 

- D 1 - I - 0x01BE7B 06:BE6B: 25        .byte $25, $08   ; control byte for 00 + counter

- D 1 - I - 0x01BE7D 06:BE6D: FF        .byte $FF, $7F, $3F, $1F, $0F, $07, $03, $81, $7F, $3F, $1F, $0F, $07, $03, $01, $00   ; 
- D 1 - I - 0x01BE8D 06:BE7D: 56        .byte $56, $AE, $DE, $DE, $DE, $DE, $DE, $DE, $FF, $FB, $E3, $E3, $E3, $E3, $E3, $E3   ; 

- D 1 - I - 0x01BE9D 06:BE8D: 25        .byte $25, $07   ; control byte for 00 + counter

- D 1 - I - 0x01BE9F 06:BE8F: 80        .byte $80   ; 

- D 1 - I - 0x01BEA0 06:BE90: 25        .byte $25, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01BEA2 06:BE92: 01        .byte $01, $01, $09, $11   ; 

- D 1 - I - 0x01BEA6 06:BE96: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BEA8 06:BE98: 0E        .byte $0E, $3E, $FE, $F6, $EE   ; 

- D 1 - I - 0x01BEAD 06:BE9D: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BEAF 06:BE9F: AA        .byte $AA   ; 

- D 1 - I - 0x01BEB0 06:BEA0: 25        .byte $25, $10   ; control byte for 00 + counter

- D 1 - I - 0x01BEB2 06:BEA2: 01        .byte $01, $04, $10, $40   ; 

- D 1 - I - 0x01BEB6 06:BEA6: 25        .byte $25, $08   ; control byte for 00 + counter

- D 1 - I - 0x01BEB8 06:BEA8: 01        .byte $01, $04, $10, $40   ; 

- D 1 - I - 0x01BEBC 06:BEAC: 25        .byte $25, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01BEBE 06:BEAE: 40        .byte $40, $A0, $50, $A8, $54, $AA, $54, $A0   ; 

- D 1 - I - 0x01BEC6 06:BEB6: 25        .byte $25, $06   ; control byte for 00 + counter

- D 1 - I - 0x01BEC8 06:BEB8: 03        .byte $03, $0F, $DF, $5E, $39, $1B, $1C, $1D, $3E, $7E, $20, $21, $0E, $0C, $27, $E6   ; 
- D 1 - I - 0x01BED8 06:BEC8: C3        .byte $C3, $83, $40, $40, $A0, $20, $D0, $9F, $6F, $C8, $80, $80, $5F, $DF, $2F, $60   ; 
- D 1 - I - 0x01BEE8 06:BED8: 90        .byte $90, $30, $21, $C2, $02, $04, $04, $08, $08, $10, $CE, $1C, $1C, $38, $38, $70   ; 
- D 1 - I - 0x01BEF8 06:BEE8: 70        .byte $70, $E0, $FF, $DF, $AF, $57, $AB, $55, $0A, $01, $01, $01   ; 

- D 1 - I - 0x01BF04 06:BEF4: 25        .byte $25, $06   ; control byte for 00 + counter

- D 1 - I - 0x01BF06 06:BEF6: 34        .byte $34, $64, $9A, $B2, $CD, $D9, $E6, $78, $C8, $98, $E4, $CC, $72, $66, $38, $20   ; 
- D 1 - I - 0x01BF16 06:BF06: 00        .byte $00, $22, $15, $2B, $17, $AB, $57, $2F, $00, $22, $15, $2B, $17, $AB, $57, $2F   ; 
- D 1 - I - 0x01BF26 06:BF16: 80        .byte $80, $20, $08, $02   ; 

- D 1 - I - 0x01BF2A 06:BF1A: 25        .byte $25, $0C   ; control byte for 00 + counter

- D 1 - I - 0x01BF2C 06:BF1C: 12        .byte $12, $24, $53, $50, $89, $52, $44, $18, $58, $24, $C5, $11, $98, $06, $45, $50   ; 
- D 1 - I - 0x01BF3C 06:BF2C: 12        .byte $12, $24, $53, $50, $8A   ; 

- D 1 - I - 0x01BF41 06:BF31: 26        .byte $26, $02   ; control byte for FF + counter

- D 1 - I - 0x01BF43 06:BF33: 00        .byte $00, $58, $24, $C5, $11, $98   ; 

- D 1 - I - 0x01BF49 06:BF39: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BF4B 06:BF3B: 12        .byte $12, $12, $12, $1A, $16, $12, $12, $12, $0C, $0C, $0C, $04, $08, $0C, $0C, $0C   ; 
- D 1 - I - 0x01BF5B 06:BF4B: 03        .byte $03, $06, $1B, $1C, $29, $72, $C4, $98, $00, $04, $07, $15, $18, $06, $45, $50   ; 
- D 1 - I - 0x01BF6B 06:BF5B: 80        .byte $80, $60, $70, $58, $8C, $52, $47, $19, $40, $20, $C0, $10, $90, $04, $44, $50   ; 
- D 1 - I - 0x01BF7B 06:BF6B: C3        .byte $C3, $DF, $C7, $FB, $C7   ; 

- D 1 - I - 0x01BF80 06:BF70: 26        .byte $26, $03   ; control byte for FF + counter

- D 1 - I - 0x01BF82 06:BF72: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 1 - I - 0x01BF87 06:BF77: 25        .byte $25, $04   ; control byte for 00 + counter

- D 1 - I - 0x01BF89 06:BF79: 3E        .byte $3E, $7E, $7C, $00, $FE, $FE, $FE, $7F, $5D, $99, $83   ; 

- D 1 - I - 0x01BF94 06:BF84: 26        .byte $26, $04   ; control byte for FF + counter

- D 1 - I - 0x01BF96 06:BF86: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01BF98 06:BF88: 80        .byte $80, $C0, $E0, $F0, $B8, $00, $80, $C0, $E0, $F0, $78, $3C, $1E, $92, $E4, $E3   ; 
- D 1 - I - 0x01BFA8 06:BF98: F0        .byte $F0, $79, $3E, $0E, $03, $58, $24, $05, $01, $00, $02, $01, $00, $FE, $FF   ; 

- D 1 - I - 0x01BFB7 06:BFA7: 25        .byte $25, $06   ; control byte for 00 + counter

- D 1 - I - 0x01BFB9 06:BFA9: FF        .byte $FF   ; 

- D 1 - I - 0x01BFBA 06:BFAA: 25        .byte $25, $07   ; control byte for 00 + counter

- D 1 - I - 0x01BFBC 06:BFAC: 9C        .byte $9C, $8E, $0E, $0E, $0E, $0E, $0E, $0E, $0F, $07, $07, $07, $07, $07, $07, $07   ; 
- D 1 - I - 0x01BFCC 06:BFBC: 01        .byte $01, $03, $07, $0F, $1F, $1D, $19, $11, $02, $06, $0E, $1E, $1E, $1C, $18, $10   ; 

- D 1 - I - 0x01BFDC 06:BFCC: 25        .byte $25, $02   ; control byte for 00 + counter

- D 1 - I - 0x01BFDE 06:BFCE: 01        .byte $01, $01, $03, $03, $07, $07, $01, $01, $03, $03, $07, $06, $0E, $0C, $06, $F6   ; 
- D 1 - I - 0x01BFEE 06:BFDE: EF        .byte $EF, $EF, $DF, $DF, $BF, $BE, $FE, $8E, $9D, $1D, $39, $39, $71, $70, $0E, $0E   ; 

- D 1 - I - 0x01BFFE 06:BFEE: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01C000 06:BFF0: 26        .byte $26, $02   ; control byte for FF + counter

- D 1 - I - 0x01C002 06:BFF2: 00        .byte $00, $07, $07   ; 

- D 1 - I - 0x01C005 06:BFF5: 26        .byte $26, $03   ; control byte for FF + counter

- D 1 - I - 0x01C007 06:BFF7: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01C009 06:BFF9: 01        .byte $01, $01   ; 

- D 1 - I - 0x01C00B 06:BFFB: 25        .byte $25, $03   ; control byte for 00 + counter

- D 1 - I - 0x01C00D 06:BFFD: 26        .byte $26, $02   ; control byte for FF + counter

- D 1 - I - 0x01C00F 06:BFFF: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C011 07:C001: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x01C013 07:C003: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01C015 07:C005: 81        .byte $81, $FF, $81, $FF, $81   ; 

- D 2 - I - 0x01C01A 07:C00A: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C01C 07:C00C: 81        .byte $81, $FF, $81, $FF, $81, $00, $0F, $0F, $5E, $5E, $BD, $BD, $7B, $7B, $1C, $18   ; 
- D 2 - I - 0x01C02C 07:C01C: B9        .byte $B9, $B1, $73, $63, $E7, $C7, $6A, $74, $EA, $D4, $A8   ; 

- D 2 - I - 0x01C037 07:C027: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C039 07:C029: 50        .byte $50, $E0, $E0, $D5, $EB, $D7, $80   ; 

- D 2 - I - 0x01C040 07:C030: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C042 07:C032: 2A        .byte $2A, $54, $2A, $54, $A8, $54, $A8   ; 

- D 2 - I - 0x01C049 07:C039: 25        .byte $25, $0E   ; control byte for 00 + counter

- D 2 - I - 0x01C04B 07:C03B: 08        .byte $08, $18, $38   ; 

- D 2 - I - 0x01C04E 07:C03E: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01C050 07:C040: 08        .byte $08, $18, $38, $78, $06, $F7, $EE, $ED, $DA, $DD, $BA, $B5, $FE, $8E, $9C, $1C   ; 
- D 2 - I - 0x01C060 07:C050: 38        .byte $38, $38, $70, $70, $A0, $40, $A0, $40, $80, $00, $80   ; 

- D 2 - I - 0x01C06B 07:C05B: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C06D 07:C05D: 1B        .byte $1B, $1B, $3E, $7E, $6D, $6D   ; 

- D 2 - I - 0x01C073 07:C063: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C075 07:C065: 7D        .byte $7D, $61, $C1, $F1, $81, $F1   ; 

- D 2 - I - 0x01C07B 07:C06B: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C07D 07:C06D: 81        .byte $81, $93, $B6, $FC, $D8, $90   ; 

- D 2 - I - 0x01C083 07:C073: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C085 07:C075: 07        .byte $07, $01, $03, $13, $1E, $0C   ; 

- D 2 - I - 0x01C08B 07:C07B: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C08D 07:C07D: EF        .byte $EF, $8C, $18, $1E, $30, $3E   ; 

- D 2 - I - 0x01C093 07:C083: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C095 07:C085: 9E        .byte $9E, $1B, $33, $3D, $66, $67, $02   ; 

- D 2 - I - 0x01C09C 07:C08C: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01C09E 07:C08E: 02        .byte $02, $01, $00, $05, $50, $BC, $62, $B8, $4C, $8D, $79, $80, $A0, $40, $80, $40   ; 
- D 2 - I - 0x01C0AE 07:C09E: A0        .byte $A0, $40, $80   ; 

- D 2 - I - 0x01C0B1 07:C0A1: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C0B3 07:C0A3: 7C        .byte $7C, $60, $C0, $F2, $83, $F1   ; 

- D 2 - I - 0x01C0B9 07:C0A9: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C0BB 07:C0AB: 8C        .byte $8C, $D8, $70, $60, $C0, $80   ; 

- D 2 - I - 0x01C0C1 07:C0B1: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C0C3 07:C0B3: 44        .byte $44, $A8, $D4, $E8, $D5, $EA, $F4, $00, $44, $A8, $D4, $E8, $D5, $EA, $F4, $F8   ; 
- D 2 - I - 0x01C0D3 07:C0C3: F0        .byte $F0, $E0, $C0, $80, $80, $80, $00, $78, $70, $60, $40   ; 

- D 2 - I - 0x01C0DE 07:C0CE: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C0E0 07:C0D0: 80        .byte $80, $0F, $0F, $1E, $1E, $3D, $3D, $7B, $7B, $1C, $18, $39, $31, $73, $63, $E7   ; 
- D 2 - I - 0x01C0F0 07:C0E0: C7        .byte $C7, $6A, $74, $EA, $D4, $A8, $D0, $A8, $50, $E0, $E0, $C0, $C0, $80, $80   ; 

- D 2 - I - 0x01C0FF 07:C0EF: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C101 07:C0F1: FB        .byte $FB   ; 

- D 2 - I - 0x01C102 07:C0F2: 26        .byte $26, $06   ; control byte for FF + counter

- D 2 - I - 0x01C104 07:C0F4: BF        .byte $BF, $FE, $FE, $FE, $FE, $FE, $FE, $82, $82, $A0, $40, $A0   ; 

- D 2 - I - 0x01C110 07:C100: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C112 07:C102: FC        .byte $FC, $FF   ; 

- D 2 - I - 0x01C114 07:C104: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C116 07:C106: F0        .byte $F0, $F8, $FC, $3E, $FF, $D0, $D0, $D0, $D0, $D0, $90, $90, $10, $20, $20, $20   ; 
- D 2 - I - 0x01C126 07:C116: 20        .byte $20, $20, $60, $60, $E0, $03, $02, $0D, $0A, $36, $2E, $D6, $A6, $03, $02, $0C   ; 
- D 2 - I - 0x01C136 07:C126: 08        .byte $08, $30, $24, $C4, $84, $CF   ; 

- D 2 - I - 0x01C13C 07:C12C: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x01C13E 07:C12E: FE        .byte $FE, $F2, $E2, $C2, $82, $82, $82, $82, $82, $82, $82, $82   ; 

- D 2 - I - 0x01C14A 07:C13A: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C14C 07:C13C: BF        .byte $BF, $FF, $BF, $EF, $D7, $FF, $7F, $3F, $5F, $6F, $57, $7B, $2D, $1A, $80, $C0   ; 
- D 2 - I - 0x01C15C 07:C14C: E0        .byte $E0, $F0, $F8, $FC, $FE, $FE, $80, $C0, $E0, $F0, $F8, $FC, $FC, $E1, $01, $00   ; 
- D 2 - I - 0x01C16C 07:C15C: 02        .byte $02, $00, $04, $00, $08   ; 

- D 2 - I - 0x01C171 07:C161: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01C173 07:C163: 7A        .byte $7A, $3F, $1E, $0F, $07, $03, $01, $00, $0F, $05, $03, $01   ; 

- D 2 - I - 0x01C17F 07:C16F: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01C181 07:C171: EE        .byte $EE, $B6, $FB, $AE, $FE, $FE, $F8, $E0, $19, $7D, $5C, $78, $60   ; 

- D 2 - I - 0x01C18E 07:C17E: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C190 07:C180: 10        .byte $10, $00, $20, $00, $40, $00, $80   ; 

- D 2 - I - 0x01C197 07:C187: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01C199 07:C189: 12        .byte $12, $24, $53, $50, $89, $52, $40, $17, $58, $24, $C5, $11, $98, $06, $4F, $5F   ; 

- D 2 - I - 0x01C1A9 07:C199: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C1AB 07:C19B: 10        .byte $10, $32, $06, $30, $B0   ; 

- D 2 - I - 0x01C1B0 07:C1A0: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C1B2 07:C1A2: 10        .byte $10, $12, $02, $00, $F0, $F0, $04, $08, $1F   ; 

- D 2 - I - 0x01C1BB 07:C1AB: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x01C1BD 07:C1AD: 6C        .byte $6C, $3F, $03, $77, $E7, $27, $F7, $F7   ; 

- D 2 - I - 0x01C1C5 07:C1B5: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C1C7 07:C1B7: 01        .byte $01, $03   ; 

- D 2 - I - 0x01C1C9 07:C1B9: 26        .byte $26, $03   ; control byte for FF + counter

- D 2 - I - 0x01C1CB 07:C1BB: FE        .byte $FE, $36, $FC   ; 

- D 2 - I - 0x01C1CE 07:C1BE: 26        .byte $26, $05   ; control byte for FF + counter

- D 2 - I - 0x01C1D0 07:C1C0: FE        .byte $FE   ; 

- D 2 - I - 0x01C1D1 07:C1C1: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C1D3 07:C1C3: 10        .byte $10, $10, $90, $80, $80, $C0, $7F, $3F, $E0, $E0, $60, $7F, $7F, $3F   ; 

- D 2 - I - 0x01C1E1 07:C1D1: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C1E3 07:C1D3: 0F        .byte $0F, $0F, $1E, $5E, $BD, $BD, $7B, $7B, $1F, $18, $39, $B1, $73, $63, $E7, $C7   ; 
- D 2 - I - 0x01C1F3 07:C1E3: 70        .byte $70, $70, $F0, $F0, $D0, $90, $FF, $FE, $F0, $F0, $D1, $DF, $BF, $FF, $10, $00   ; 
- D 2 - I - 0x01C203 07:C1F3: 20        .byte $20, $42, $B4, $C8, $2C, $7C, $FE, $FC, $58, $BC, $4B, $36, $20, $78, $B6, $4C   ; 

- D 2 - I - 0x01C213 07:C203: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C215 07:C205: 04        .byte $04, $0E, $04, $0C, $1F   ; 

- D 2 - I - 0x01C21A 07:C20A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C21C 07:C20C: 0F        .byte $0F, $1F, $1F, $1F, $13   ; 

- D 2 - I - 0x01C221 07:C211: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C223 07:C213: 05        .byte $05, $00, $06, $6C, $00, $30, $F0   ; 

- D 2 - I - 0x01C22A 07:C21A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C22C 07:C21C: FC        .byte $FC, $F8, $92, $FE, $CC   ; 

- D 2 - I - 0x01C231 07:C221: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C233 07:C223: 01        .byte $01, $03, $03, $07, $07, $0F, $0F, $00, $01, $03, $03, $07, $07, $0F, $0F, $00   ; 
- D 2 - I - 0x01C243 07:C233: 80        .byte $80, $C0, $E0, $F0, $F8, $FC, $FE, $00, $80, $C0, $E0, $F0, $F8, $FC, $FE, $04   ; 
- D 2 - I - 0x01C253 07:C243: 08        .byte $08, $18, $D8, $08, $08, $6C, $3F, $03, $77, $E0, $07, $F7, $F7   ; 

- D 2 - I - 0x01C260 07:C250: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01C262 07:C252: 36        .byte $36, $FC, $FE, $FD, $03, $FB, $FB, $FA   ; 

- D 2 - I - 0x01C26A 07:C25A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C26C 07:C25C: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01C272 07:C262: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C274 07:C264: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01C27A 07:C26A: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C27C 07:C26C: FE        .byte $FE, $FE   ; 

- D 2 - I - 0x01C27E 07:C26E: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C280 07:C270: FE        .byte $FE, $FE, $FC, $FC, $FE, $FE, $FE, $FE, $FC, $FC, $FA, $FA, $D0, $D0, $D0, $D0   ; 
- D 2 - I - 0x01C290 07:C280: D0        .byte $D0, $D0, $C0, $E0, $20, $20, $20, $20, $20, $20, $30, $18   ; 

- D 2 - I - 0x01C29C 07:C28C: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C29E 07:C28E: 7F        .byte $7F, $3F, $1F, $0F, $07, $03, $FF, $7F, $BF, $DF, $EF, $F7, $FB, $FD, $F8, $F8   ; 
- D 2 - I - 0x01C2AE 07:C29E: F0        .byte $F0, $F0, $E0, $E0, $C0, $C0, $F6, $F6, $EE, $EE, $DE, $DE, $BE, $BE, $0F, $0F   ; 
- D 2 - I - 0x01C2BE 07:C2AE: 1E        .byte $1E, $1E, $3D, $3D, $7B, $7B, $1C, $18, $F9, $F1, $F3, $E3, $E7, $C7, $6A, $74   ; 
- D 2 - I - 0x01C2CE 07:C2BE: E0        .byte $E0, $E0, $C0   ; 

- D 2 - I - 0x01C2D1 07:C2C1: 26        .byte $26, $02   ; control byte for FF + counter

- D 2 - I - 0x01C2D3 07:C2C3: 10        .byte $10, $E0, $E0, $DF, $DF, $BF, $80   ; 

- D 2 - I - 0x01C2DA 07:C2CA: 25        .byte $25, $02   ; control byte for 00 + counter



off_03_C2CC:
- D 2 - I - 0x01C2DC 07:C2CC: 19        .byte $19   ; prepare control byte for 00
- D 2 - I - 0x01C2DD 07:C2CD: 29        .byte $29   ; prepare control byte for FF

- D 2 - I - 0x01C2DE 07:C2CE: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C2E0 07:C2D0: 14        .byte $14, $3A, $6E, $FF, $FD, $FE   ; normal bytes

- D 2 - I - 0x01C2E6 07:C2D6: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C2E8 07:C2D8: 14        .byte $14, $1A, $2E, $5B, $2D, $5E   ; 

- D 2 - I - 0x01C2EE 07:C2DE: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C2F0 07:C2E0: BB        .byte $BB, $BB, $BB, $88   ; 

- D 2 - I - 0x01C2F4 07:C2E4: 29        .byte $29, $04   ; control byte for FF + counter

- D 2 - I - 0x01C2F6 07:C2E6: 88        .byte $88, $88, $88, $88   ; 

- D 2 - I - 0x01C2FA 07:C2EA: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C2FC 07:C2EC: F9        .byte $F9, $F9, $B9, $B9, $BA, $8A, $FC, $FC, $FE, $FE, $8E, $8E, $8C, $8C, $F8, $F8   ; 
- D 2 - I - 0x01C30C 07:C2FC: FF        .byte $FF, $7E   ; 

- D 2 - I - 0x01C30E 07:C2FE: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C310 07:C300: 77        .byte $77, $36, $14, $14, $1D, $2E, $57, $2A, $1C, $08, $08, $08, $7E, $FE, $FF, $FB   ; 
- D 2 - I - 0x01C320 07:C310: 6E        .byte $6E, $FF, $FD, $FE, $26, $40, $15, $5B, $2E, $5B, $2D, $5E, $03, $06, $0C, $1E   ; 
- D 2 - I - 0x01C330 07:C320: 1B        .byte $1B, $31, $38, $7E, $03, $07, $0F, $1F, $1F, $3F, $3F, $6F, $C0, $F0, $7C, $1F   ; 
- D 2 - I - 0x01C340 07:C330: 87        .byte $87, $E3, $78, $1E, $00, $C0, $F0, $FC, $FF, $FE, $FE, $FC, $C0, $E0, $F3, $F3   ; 
- D 2 - I - 0x01C350 07:C340: FB        .byte $FB, $7B, $7F, $3F, $00, $40, $60, $63, $51, $32, $2B, $1D, $06, $0E, $1E, $BE   ; 
- D 2 - I - 0x01C360 07:C350: FC        .byte $FC, $FC, $F8, $F0, $00, $04, $0C, $14, $98, $A8, $B0, $60, $1E, $1E, $3C, $3C   ; 
- D 2 - I - 0x01C370 07:C360: 78        .byte $78, $79, $F0, $F0, $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01C37A 07:C36A: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C37C 07:C36C: 00        .byte $00, $14, $99, $D7, $7C, $FE, $20, $00   ; 

- D 2 - I - 0x01C384 07:C374: 29        .byte $29, $08   ; control byte for FF + counter

- D 2 - I - 0x01C386 07:C376: 0F        .byte $0F, $0F, $9F, $1F, $3D, $3D, $7D, $79   ; 

- D 2 - I - 0x01C38E 07:C37E: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C390 07:C380: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $7F   ; 

- D 2 - I - 0x01C397 07:C387: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C399 07:C389: 00        .byte $00, $E6, $E6, $E6, $E6, $43, $C0, $80, $FF, $7F, $7F, $7F, $7F, $84, $E4, $F8   ; 
- D 2 - I - 0x01C3A9 07:C399: 08        .byte $08, $70, $70, $60, $60, $FE, $FA, $3E, $FC, $FC, $E8, $F8, $F0, $3F, $1F, $0F   ; 
- D 2 - I - 0x01C3B9 07:C3A9: 07        .byte $07, $07   ; 

- D 2 - I - 0x01C3BB 07:C3AB: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C3BD 07:C3AD: 0F        .byte $0F, $0E, $07, $F3, $FB, $FB, $03, $04, $05, $E0, $E0, $C0, $C0, $E0   ; 

- D 2 - I - 0x01C3CB 07:C3BB: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C3CD 07:C3BD: C0        .byte $C0, $C0, $C0, $BF, $BF, $5F, $C0, $80, $80, $F9, $F9, $B9, $B9, $B9, $89, $F9   ; 
- D 2 - I - 0x01C3DD 07:C3CD: F9        .byte $F9, $FE, $FE, $8E, $8E, $8E, $8E, $FE, $FE, $1C, $1A, $32, $39, $64, $75, $C8   ; 
- D 2 - I - 0x01C3ED 07:C3DD: EA        .byte $EA, $06, $04, $0A, $0C, $14, $13, $28, $22, $18, $62, $0A, $91, $20, $45, $88   ; 
- D 2 - I - 0x01C3FD 07:C3ED: 2A        .byte $2A, $92, $48, $42, $94, $30, $03, $A8, $22   ; 

- D 2 - I - 0x01C406 07:C3F6: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C408 07:C3F8: FC        .byte $FC, $FC, $78, $38, $30, $7C   ; 

- D 2 - I - 0x01C40E 07:C3FE: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C410 07:C400: 54        .byte $54, $6C, $38, $10, $10, $38, $0F, $07, $07, $07, $07, $07, $0F, $3F, $03, $01   ; 
- D 2 - I - 0x01C420 07:C410: 01        .byte $01, $00, $02, $01, $01, $06, $80, $80, $C0, $E0, $E0, $F0, $F0, $F8   ; 

- D 2 - I - 0x01C42E 07:C41E: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C430 07:C420: 80        .byte $80, $C0, $C0, $60, $E0, $30, $01, $03, $07, $0F, $1F, $3F, $7F, $FF, $00, $01   ; 
- D 2 - I - 0x01C440 07:C430: 02        .byte $02, $04, $09, $13, $27, $4E   ; 

- D 2 - I - 0x01C446 07:C436: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C448 07:C438: DE        .byte $DE, $FB   ; 

- D 2 - I - 0x01C44A 07:C43A: 29        .byte $29, $04   ; control byte for FF + counter

- D 2 - I - 0x01C44C 07:C43C: 00        .byte $00, $FF, $21, $04   ; 

- D 2 - I - 0x01C450 07:C440: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C452 07:C442: 00        .byte $00, $80, $C2, $F2, $F4, $FC, $FC, $FE, $FF, $0E, $9C, $4C, $28, $90, $C8, $E4   ; 
- D 2 - I - 0x01C462 07:C452: 72        .byte $72   ; 

- D 2 - I - 0x01C463 07:C453: 29        .byte $29, $10   ; control byte for FF + counter

- D 2 - I - 0x01C465 07:C455: FE        .byte $FE, $FC, $F8, $F5, $EA, $D5, $AA, $55, $9C, $38, $70, $E0, $C0, $80   ; 

- D 2 - I - 0x01C473 07:C463: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C475 07:C465: 01        .byte $01, $02, $02, $35, $96, $1D, $8A, $15, $0E, $1C, $1C, $08, $28, $60, $70, $E0   ; 

- D 2 - I - 0x01C485 07:C475: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C487 07:C477: 55        .byte $55, $AA, $55, $AA, $55   ; 

- D 2 - I - 0x01C48C 07:C47C: 19        .byte $19, $0B   ; control byte for 00 + counter

- D 2 - I - 0x01C48E 07:C47E: 54        .byte $54, $A8, $50, $A8, $51, $00, $01, $01, $03, $03, $07, $07, $0E, $FF, $7F, $3F   ; 
- D 2 - I - 0x01C49E 07:C48E: 3F        .byte $3F, $6F, $57, $AB, $D5, $39, $9C, $CE, $C7, $83, $81, $01   ; 

- D 2 - I - 0x01C4AA 07:C49A: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C4AC 07:C49C: 3E        .byte $3E, $30, $60, $78, $C0, $F8   ; 

- D 2 - I - 0x01C4B2 07:C4A2: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C4B4 07:C4A4: 03        .byte $03, $06, $06, $0C, $CC, $C7   ; 

- D 2 - I - 0x01C4BA 07:C4AA: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C4BC 07:C4AC: C0        .byte $C0, $21, $03, $06, $CF, $98   ; 

- D 2 - I - 0x01C4C2 07:C4B2: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C4C4 07:C4B4: C6        .byte $C6, $C6, $CF, $CF, $DB, $DB   ; 

- D 2 - I - 0x01C4CA 07:C4BA: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C4CC 07:C4BC: C1        .byte $C1, $C3, $87, $8D, $1F, $31   ; 

- D 2 - I - 0x01C4D2 07:C4C2: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C4D4 07:C4C4: 8F        .byte $8F, $8D, $99, $99, $B3, $BE   ; 

- D 2 - I - 0x01C4DA 07:C4CA: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C4DC 07:C4CC: 03        .byte $03, $87, $8F, $9B, $3F, $63   ; 

- D 2 - I - 0x01C4E2 07:C4D2: 19        .byte $19, $09   ; control byte for 00 + counter

- D 2 - I - 0x01C4E4 07:C4D4: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C4E6 07:C4D6: 19        .byte $19, $0E   ; control byte for 00 + counter

- D 2 - I - 0x01C4E8 07:C4D8: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C4EA 07:C4DA: 3F        .byte $3F, $1F, $0F, $07, $03, $01, $00, $0F, $00, $03, $00, $01   ; 

- D 2 - I - 0x01C4F6 07:C4E6: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C4F8 07:C4E8: 29        .byte $29, $08   ; control byte for FF + counter

- D 2 - I - 0x01C4FA 07:C4EA: 00        .byte $00, $FF, $00, $FF, $00   ; 

- D 2 - I - 0x01C4FF 07:C4EF: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C501 07:C4F1: 7F        .byte $7F, $16, $6F, $7D, $BE, $FF, $7A, $FC, $6C, $16, $6B, $2D, $BA, $57, $7A, $B4   ; 
- D 2 - I - 0x01C511 07:C501: 6C        .byte $6C   ; 

- D 2 - I - 0x01C512 07:C502: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C514 07:C504: 7E        .byte $7E, $3C, $7E, $7E, $7E, $00, $3E, $00, $1E, $00, $3E, $1E, $2E, $FF, $7E   ; 

- D 2 - I - 0x01C523 07:C513: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C525 07:C515: 76        .byte $76, $F7, $F7, $14, $1D, $2E, $57, $2A, $9D, $08, $08, $08, $01, $03, $07, $0F   ; 
- D 2 - I - 0x01C535 07:C525: 1F        .byte $1F   ; 

- D 2 - I - 0x01C536 07:C526: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C538 07:C528: 00        .byte $00, $01, $FA, $F4, $E9, $13, $27, $4E, $80, $C0, $E0, $F0, $F8, $FC, $FE, $FF   ; 
- D 2 - I - 0x01C548 07:C538: 00        .byte $00, $81, $41, $23, $93, $CB, $E5, $72, $C3, $DF, $C7, $FB, $C7   ; 

- D 2 - I - 0x01C555 07:C545: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C557 07:C547: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 2 - I - 0x01C55C 07:C54C: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C55E 07:C54E: 7E        .byte $7E, $7E, $7E, $7E   ; 

- D 2 - I - 0x01C562 07:C552: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C564 07:C554: 55        .byte $55, $1E, $2E, $1E, $2E, $5F, $3E   ; 

- D 2 - I - 0x01C56B 07:C55B: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C56D 07:C55D: FE        .byte $FE, $FC, $F8, $F4, $E8, $D0, $A8, $51, $9C, $39, $71, $E3, $C3, $87, $07, $0E   ; 
- D 2 - I - 0x01C57D 07:C56D: 10        .byte $10, $20, $20, $55, $6A, $D5, $AA, $55, $E0, $C0, $C0, $80, $80   ; 

- D 2 - I - 0x01C58A 07:C57A: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C58C 07:C57C: 7F        .byte $7F, $3F, $1F, $5F, $B7, $53, $B3, $52, $39, $1C, $0E, $07, $0B, $0D, $0C, $0C   ; 
- D 2 - I - 0x01C59C 07:C58C: F8        .byte $F8, $F8, $D8, $F8, $F8, $F8, $F8, $F8, $00, $F0, $20, $00, $F0, $F0, $F0, $00   ; 
- D 2 - I - 0x01C5AC 07:C59C: 80        .byte $80, $80, $40, $40, $20, $20, $10, $10, $80, $80, $40, $40, $20, $20, $10, $10   ; 
- D 2 - I - 0x01C5BC 07:C5AC: 01        .byte $01, $02, $02, $34, $15, $1B, $0B, $16, $0E, $1C, $1C, $08, $28, $60, $70, $E1   ; 

- D 2 - I - 0x01C5CC 07:C5BC: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C5CE 07:C5BE: 80        .byte $80, $80, $FF, $02, $88, $51   ; 

- D 2 - I - 0x01C5D4 07:C5C4: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C5D6 07:C5C6: 7F        .byte $7F, $7F, $00, $51, $24, $88   ; 

- D 2 - I - 0x01C5DC 07:C5CC: 19        .byte $19, $04   ; control byte for 00 + counter

- D 2 - I - 0x01C5DE 07:C5CE: FF        .byte $FF, $04, $42, $10   ; 

- D 2 - I - 0x01C5E2 07:C5D2: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C5E4 07:C5D4: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C5E6 07:C5D6: 00        .byte $00, $52, $08, $A4   ; 

- D 2 - I - 0x01C5EA 07:C5DA: 19        .byte $19, $04   ; control byte for 00 + counter

- D 2 - I - 0x01C5EC 07:C5DC: FF        .byte $FF, $01, $08, $42   ; 

- D 2 - I - 0x01C5F0 07:C5E0: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C5F2 07:C5E2: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C5F4 07:C5E4: 00        .byte $00, $A4, $12, $88   ; 

- D 2 - I - 0x01C5F8 07:C5E8: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C5FA 07:C5EA: 07        .byte $07, $C9, $43, $83, $97   ; 

- D 2 - I - 0x01C5FF 07:C5EF: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C601 07:C5F1: FF        .byte $FF, $F8, $06, $1C, $1C, $28, $08, $08, $04, $04, $02, $02, $01, $01, $08, $08   ; 
- D 2 - I - 0x01C611 07:C601: 04        .byte $04, $04, $02, $02, $01, $01, $17, $2C, $2C, $59, $58, $B1, $B0, $62, $E0, $C1   ; 
- D 2 - I - 0x01C621 07:C611: C2        .byte $C2, $80, $82, $04, $09, $04, $24, $90, $4A, $66, $14, $2F, $5F, $1F, $D2, $65   ; 
- D 2 - I - 0x01C631 07:C621: 30        .byte $30, $98, $48, $87, $2F, $8F, $82, $00, $5F, $10, $10   ; 

- D 2 - I - 0x01C63C 07:C62C: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C63E 07:C62E: 11        .byte $11, $28, $80, $25, $00, $BF, $BF, $7F, $09, $01, $D2, $42, $40, $FE, $FF, $FE   ; 
- D 2 - I - 0x01C64E 07:C63E: 20        .byte $20, $94, $08   ; 

- D 2 - I - 0x01C651 07:C641: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C653 07:C643: DD        .byte $DD, $DC, $B9, $27, $0E, $4E, $1C, $9C, $38, $38, $70, $18, $50, $30, $A0, $60   ; 
- D 2 - I - 0x01C663 07:C653: C0        .byte $C0, $C0, $80, $01, $02, $02, $35, $15, $1B, $0B, $16, $0E, $1C, $1C, $08, $28   ; 
- D 2 - I - 0x01C673 07:C663: 60        .byte $60, $70, $E0, $62, $CA, $C0, $88, $84, $00, $25, $11, $09, $04, $12, $25, $12   ; 
- D 2 - I - 0x01C683 07:C673: 49        .byte $49, $02, $44, $7F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01C68A 07:C67A: 29        .byte $29, $04   ; control byte for FF + counter

- D 2 - I - 0x01C68C 07:C67C: 1F        .byte $1F, $9F, $3F, $3F, $7F, $7E, $80, $FD   ; 

- D 2 - I - 0x01C694 07:C684: 29        .byte $29, $08   ; control byte for FF + counter

- D 2 - I - 0x01C696 07:C686: 00        .byte $00   ; 

- D 2 - I - 0x01C697 07:C687: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C699 07:C689: 0F        .byte $0F, $F7, $00, $EF, $FC, $FA, $FC, $F1, $F9, $E3, $E3, $D7, $3B, $F5, $F3, $EE   ; 
- D 2 - I - 0x01C6A9 07:C699: E6        .byte $E6, $CC, $1C, $A8, $70, $E0, $E0, $C0, $C0, $80, $80, $01, $80, $01, $01, $03   ; 
- D 2 - I - 0x01C6B9 07:C6A9: 03        .byte $03, $07, $07, $0E   ; 

- D 2 - I - 0x01C6BD 07:C6AD: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C6BF 07:C6AF: 85        .byte $85, $8B, $88   ; 

- D 2 - I - 0x01C6C2 07:C6B2: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C6C4 07:C6B4: 07        .byte $07, $01, $01, $7B, $77, $77, $07, $07, $07, $00, $FE, $FC, $FC, $A0, $F8, $F8   ; 
- D 2 - I - 0x01C6D4 07:C6C4: F8        .byte $F8, $FF, $F9, $F3, $E3, $5F, $1F, $5F, $1F, $01, $02, $04, $08, $30, $C0   ; 

- D 2 - I - 0x01C6E3 07:C6D3: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C6E5 07:C6D5: 3E        .byte $3E, $FC, $F8, $F0, $C0   ; 

- D 2 - I - 0x01C6EA 07:C6DA: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C6EC 07:C6DC: 16        .byte $16, $2C, $2C, $59, $58, $B1, $B0, $62, $E0, $C1, $C2, $80, $82, $04, $09, $04   ; 
- D 2 - I - 0x01C6FC 07:C6EC: 03        .byte $03, $2B, $47, $17, $0F, $2F, $5F, $1F, $91, $45, $2B, $83, $57, $87, $2F, $8E   ; 

- D 2 - I - 0x01C70C 07:C6FC: 29        .byte $29, $08   ; control byte for FF + counter

- D 2 - I - 0x01C70E 07:C6FE: FE        .byte $FE   ; 

- D 2 - I - 0x01C70F 07:C6FF: 29        .byte $29, $04   ; control byte for FF + counter

- D 2 - I - 0x01C711 07:C701: 00        .byte $00, $7F   ; 

- D 2 - I - 0x01C713 07:C703: 29        .byte $29, $07   ; control byte for FF + counter

- D 2 - I - 0x01C715 07:C705: FE        .byte $FE, $FD, $1F   ; 

- D 2 - I - 0x01C718 07:C708: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C71A 07:C70A: FE        .byte $FE, $FE, $3C, $BD, $7A, $C7, $AE, $CE, $1C, $9C, $38, $38, $70, $98, $50, $30   ; 
- D 2 - I - 0x01C72A 07:C71A: A0        .byte $A0, $60, $C0, $40, $80, $FF, $80, $FF, $80, $80, $80, $80, $FF, $00, $7F, $00   ; 
- D 2 - I - 0x01C73A 07:C72A: 7F        .byte $7F, $7F, $7F, $7F, $00, $FF, $00, $FF   ; 

- D 2 - I - 0x01C742 07:C732: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C744 07:C734: CC        .byte $CC, $CC, $FF, $00, $FF, $00   ; 

- D 2 - I - 0x01C74A 07:C73A: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C74C 07:C73C: 33        .byte $33, $33, $00, $FF, $00, $FF   ; 

- D 2 - I - 0x01C752 07:C742: 19        .byte $19, $04   ; control byte for 00 + counter

- D 2 - I - 0x01C754 07:C744: FF        .byte $FF, $00, $FF, $00   ; 

- D 2 - I - 0x01C758 07:C748: 29        .byte $29, $04   ; control byte for FF + counter

- D 2 - I - 0x01C75A 07:C74A: 00        .byte $00, $F0, $E0, $E0, $C0, $C0, $80, $80, $01, $00, $01, $01, $03, $03, $07, $07   ; 
- D 2 - I - 0x01C76A 07:C75A: 0E        .byte $0E, $01, $01, $02, $02, $04, $04, $08, $08, $01, $01, $02, $02, $04, $04, $08   ; 
- D 2 - I - 0x01C77A 07:C76A: 08        .byte $08, $10, $10, $20, $20, $40, $40, $80, $80, $10, $10, $20, $20, $40, $40, $80   ; 
- D 2 - I - 0x01C78A 07:C77A: 80        .byte $80, $02, $09, $06, $14, $4A, $35, $6A, $95, $00, $01, $02, $14, $02, $15, $28   ; 
- D 2 - I - 0x01C79A 07:C78A: 85        .byte $85, $01, $01, $03, $03, $07, $07, $0F, $0F   ; 

- D 2 - I - 0x01C7A3 07:C793: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C7A5 07:C795: 01        .byte $01, $01, $03, $03, $07, $07   ; 

- D 2 - I - 0x01C7AB 07:C79B: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C7AD 07:C79D: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x01C7B3 07:C7A3: 29        .byte $29, $08   ; control byte for FF + counter

- D 2 - I - 0x01C7B5 07:C7A5: 80        .byte $80, $C0, $E0, $F0, $F8, $FC, $FE, $FF, $00, $80, $40, $20, $90, $C8, $E4, $72   ; 

- D 2 - I - 0x01C7C5 07:C7B5: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C7C7 07:C7B7: 82        .byte $82, $82, $82   ; 

- D 2 - I - 0x01C7CA 07:C7BA: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C7CC 07:C7BC: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C7CE 07:C7BE: 7D        .byte $7D, $7D, $7D   ; 

- D 2 - I - 0x01C7D1 07:C7C1: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C7D3 07:C7C3: FF        .byte $FF   ; 

- D 2 - I - 0x01C7D4 07:C7C4: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C7D6 07:C7C6: 08        .byte $08, $08, $09, $F9, $F9, $F1   ; 

- D 2 - I - 0x01C7DC 07:C7CC: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C7DE 07:C7CE: F4        .byte $F4, $F6, $F6, $06, $06, $EE, $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01C7EA 07:C7DA: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C7EC 07:C7DC: 0F        .byte $0F, $0F, $1F, $1F, $3F, $3F, $7F, $7F, $F0, $F0, $E0, $E1, $C2, $C1, $82, $85   ; 

- D 2 - I - 0x01C7FC 07:C7EC: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C7FE 07:C7EE: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x01C804 07:C7F4: 29        .byte $29, $05   ; control byte for FF + counter

- D 2 - I - 0x01C806 07:C7F6: 7F        .byte $7F, $BF, $54, $79, $3C, $1E, $0F, $07, $03, $01, $00, $01, $0B, $0B, $0F, $07   ; 
- D 2 - I - 0x01C816 07:C806: 0F        .byte $0F, $0F, $1F, $0E, $15, $15, $33, $3B, $77, $77, $EF   ; 

- D 2 - I - 0x01C821 07:C811: 29        .byte $29, $0F   ; control byte for FF + counter

- D 2 - I - 0x01C823 07:C813: FE        .byte $FE, $F1, $E2, $E3, $D5, $D6, $99, $8E, $18, $EE, $DC, $DD, $A8, $AA, $60, $72   ; 
- D 2 - I - 0x01C833 07:C823: E8        .byte $E8, $01, $01, $03, $03, $07, $87, $CF, $EF   ; 

- D 2 - I - 0x01C83C 07:C82C: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C83E 07:C82E: 01        .byte $01, $81, $C3, $63, $37, $17, $0A, $05, $0A, $15, $2A, $15, $2A, $54, $F0, $F0   ; 
- D 2 - I - 0x01C84E 07:C83E: E0        .byte $E0, $E0, $C0, $C0, $80, $80, $A0, $40, $80, $40, $80   ; 

- D 2 - I - 0x01C859 07:C849: 19        .byte $19, $0D   ; control byte for 00 + counter

- D 2 - I - 0x01C85B 07:C84B: 0F        .byte $0F, $7F, $7F   ; 

- D 2 - I - 0x01C85E 07:C84E: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C860 07:C850: AA        .byte $AA, $03, $37, $77, $17, $77, $77, $00   ; 
- D 2 - I - 0x01C868 07:C858: 44        .byte $44   ; 

- D 2 - I - 0x01C869 07:C859: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C86B 07:C85B: FC        .byte $FC, $FC, $FC, $FD, $FE, $D4   ; 

- D 2 - I - 0x01C871 07:C861: 29        .byte $29, $05   ; control byte for FF + counter

- D 2 - I - 0x01C873 07:C863: FE        .byte $FE, $00, $28, $1F, $0F, $90, $90, $50, $7F, $3F, $00, $EF, $F3, $6F, $6F, $2F   ; 

- D 2 - I - 0x01C883 07:C873: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C885 07:C875: FF        .byte $FF, $FE, $82, $82, $82   ; 

- D 2 - I - 0x01C88A 07:C87A: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C88C 07:C87C: 00        .byte $00, $FE, $FD, $7D, $7D, $7D   ; 

- D 2 - I - 0x01C892 07:C882: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C894 07:C884: 16        .byte $16, $25, $3A, $66, $55, $DB, $35, $4A, $E2, $C5, $C8, $A2, $84, $51, $14, $42   ; 
- D 2 - I - 0x01C8A4 07:C894: 96        .byte $96, $6F, $7D, $BE, $FF, $7A, $FC, $6C, $96, $6B, $2D, $BA, $57, $7A, $B4, $6C   ; 
- D 2 - I - 0x01C8B4 07:C8A4: 7F        .byte $7F, $3F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01C8BA 07:C8AA: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C8BC 07:C8AC: 0F        .byte $0F, $0F, $1F, $1F, $3F, $3F, $7F, $7F, $F0, $F0, $E1, $E1, $C2, $C3, $87, $85   ; 

- D 2 - I - 0x01C8CC 07:C8BC: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C8CE 07:C8BE: FE        .byte $FE, $FE, $FD, $FC, $F8, $F8, $AA, $54   ; 

- D 2 - I - 0x01C8D6 07:C8C6: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C8D8 07:C8C8: 29        .byte $29, $02   ; control byte for FF + counter

- D 2 - I - 0x01C8DA 07:C8CA: 50        .byte $50   ; 

- D 2 - I - 0x01C8DB 07:C8CB: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C8DD 07:C8CD: 29        .byte $29, $03   ; control byte for FF + counter

- D 2 - I - 0x01C8DF 07:C8CF: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C8E1 07:C8D1: 01        .byte $01, $02, $02, $04, $04, $F8, $F0, $00, $0E, $1C, $FC, $F8, $F8   ; 

- D 2 - I - 0x01C8EE 07:C8DE: 19        .byte $19, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C8F0 07:C8E0: A9        .byte $A9, $56, $AC, $52, $28, $60, $90, $40, $A1, $14, $A8, $40, $28, $40, $80, $00   ; 
- D 2 - I - 0x01C900 07:C8F0: AA        .byte $AA, $54, $A8, $54, $A8, $50, $A0, $50   ; 

- D 2 - I - 0x01C908 07:C8F8: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C90A 07:C8FA: 0C        .byte $0C   ; 

- D 2 - I - 0x01C90B 07:C8FB: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C90D 07:C8FD: 36        .byte $36, $7D, $1F, $07, $0F, $03, $1F, $1F, $09, $02   ; 

- D 2 - I - 0x01C917 07:C907: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C919 07:C909: 24        .byte $24, $76, $22, $02, $36, $EC, $F8, $FC, $FA, $F8, $FE, $FC, $C8, $10   ; 

- D 2 - I - 0x01C927 07:C917: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C929 07:C919: D5        .byte $D5, $AA, $D5, $AA, $D5, $AA, $D5, $80   ; 

- D 2 - I - 0x01C931 07:C921: 19        .byte $19, $08   ; control byte for 00 + counter

- D 2 - I - 0x01C933 07:C923: D5        .byte $D5, $AB, $D5, $AB, $D5, $AB, $D5, $81   ; 

- D 2 - I - 0x01C93B 07:C92B: 19        .byte $19, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01C93D 07:C92D: 01        .byte $01, $03, $07, $0E, $1C   ; 

- D 2 - I - 0x01C942 07:C932: 19        .byte $19, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C944 07:C934: 01        .byte $01, $03, $07, $0E, $1C, $38   ; 

- D 2 - I - 0x01C94A 07:C93A: 29        .byte $29, $08   ; control byte for FF + counter

- D 2 - I - 0x01C94C 07:C93C: 00        .byte $00, $7F, $7F, $7F, $7F, $7F, $7F, $7F   ; 



off_02_C944:
- D 2 - I - 0x01C954 07:C944: 09        .byte $09   ; prepare control byte for 00
- D 2 - I - 0x01C955 07:C945: 16        .byte $16   ; prepare control byte for FF

- D 2 - I - 0x01C956 07:C946: 73        .byte $73, $AD, $B3, $57, $7A, $D3, $A4, $DF, $00, $21, $93, $13, $38, $10, $A0, $D5   ; normal bytes
- D 2 - I - 0x01C966 07:C956: 0C        .byte $0C, $7E, $FB, $AF, $F5, $4A, $7E, $2A, $0C, $7E, $FB, $AD, $64, $42, $52, $00   ; 
- D 2 - I - 0x01C976 07:C966: 0F        .byte $0F, $0F, $1E, $1E, $3D, $3D, $7B, $7B, $1C, $18, $39, $31, $73, $63, $E7, $C7   ; 
- D 2 - I - 0x01C986 07:C976: 6A        .byte $6A, $74, $EA, $D4, $A8, $D0, $A8, $50, $E0, $E0, $C0, $C0, $80, $80   ; 

- D 2 - I - 0x01C994 07:C984: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C996 07:C986: 5F        .byte $5F, $9F, $2F, $1B, $25, $01   ; 

- D 2 - I - 0x01C99C 07:C98C: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C99E 07:C98E: 4B        .byte $4B, $95, $2A, $19, $25, $01   ; 

- D 2 - I - 0x01C9A4 07:C994: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01C9A6 07:C996: 05        .byte $05, $41, $50, $14, $05, $41, $50, $14   ; 

- D 2 - I - 0x01C9AE 07:C99E: 09        .byte $09, $08   ; control byte for 00 + counter

- D 2 - I - 0x01C9B0 07:C9A0: 1D        .byte $1D, $55, $57, $1F, $1D, $55, $57, $1F, $1D, $15, $17, $1F, $1D, $15, $17, $1F   ; 

- D 2 - I - 0x01C9C0 07:C9B0: 09        .byte $09, $08   ; control byte for 00 + counter

- D 2 - I - 0x01C9C2 07:C9B2: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01C9C4 07:C9B4: FA        .byte $FA, $F9, $B4, $D8, $A4   ; 

- D 2 - I - 0x01C9C9 07:C9B9: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C9CB 07:C9BB: D2        .byte $D2, $69, $94, $58, $A4   ; 

- D 2 - I - 0x01C9D0 07:C9C0: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01C9D2 07:C9C2: 05        .byte $05, $05, $0B, $FB, $F7, $07, $01, $01, $FB, $FB, $F7, $06, $0E, $0C, $07, $F7   ; 
- D 2 - I - 0x01C9E2 07:C9D2: EE        .byte $EE, $EF, $DE, $DF, $BF, $B5, $FE, $8E, $9D, $1C, $39, $38, $70, $70, $A0, $40   ; 
- D 2 - I - 0x01C9F2 07:C9E2: 80        .byte $80, $40, $80   ; 

- D 2 - I - 0x01C9F5 07:C9E5: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01C9F7 07:C9E7: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C9F9 07:C9E9: 7F        .byte $7F, $BF, $7F   ; 

- D 2 - I - 0x01C9FC 07:C9EC: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01C9FE 07:C9EE: 9A        .byte $9A, $19, $38, $5E, $1C, $3F, $9E, $1C, $80, $01, $20, $42, $00, $21, $80   ; 

- D 2 - I - 0x01CA0D 07:C9FD: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CA0F 07:C9FF: 80        .byte $80, $C0, $E0, $F0, $F8, $FC, $FE, $7F, $BF, $DF, $EF, $F7, $FB, $FD, $FE   ; 

- D 2 - I - 0x01CA1E 07:CA0E: 16        .byte $16, $10   ; control byte for FF + counter

- D 2 - I - 0x01CA20 07:CA10: 10        .byte $10, $00, $10, $00, $10, $00, $10   ; 

- D 2 - I - 0x01CA27 07:CA17: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01CA29 07:CA19: 01        .byte $01, $00, $04, $00, $10, $00, $40   ; 

- D 2 - I - 0x01CA30 07:CA20: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01CA32 07:CA22: FD        .byte $FD, $BA, $ED, $DB, $7E, $DD, $F6, $7A, $FD, $BA, $ED, $DB, $7E, $DD, $F6, $7A   ; 

- D 2 - I - 0x01CA42 07:CA32: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CA44 07:CA34: 80        .byte $80, $20, $08, $02   ; 

- D 2 - I - 0x01CA48 07:CA38: 09        .byte $09, $08   ; control byte for 00 + counter

- D 2 - I - 0x01CA4A 07:CA3A: 80        .byte $80, $20, $08, $02   ; 

- D 2 - I - 0x01CA4E 07:CA3E: 09        .byte $09, $0E   ; control byte for 00 + counter

- D 2 - I - 0x01CA50 07:CA40: 01        .byte $01, $01, $03, $03, $07, $07, $01, $01, $03, $03, $07, $06, $0E, $0C, $F6, $F7   ; 
- D 2 - I - 0x01CA60 07:CA50: EE        .byte $EE, $EE, $DC, $DC, $BB, $BC, $CE, $8E, $9D, $1D, $3B, $3B, $74, $70, $A0, $40   ; 
- D 2 - I - 0x01CA70 07:CA60: 80        .byte $80   ; 

- D 2 - I - 0x01CA71 07:CA61: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CA73 07:CA63: 80        .byte $80, $90, $90   ; 

- D 2 - I - 0x01CA76 07:CA66: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CA78 07:CA68: 80        .byte $80, $C0, $60, $60, $60   ; 

- D 2 - I - 0x01CA7D 07:CA6D: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CA7F 07:CA6F: 04        .byte $04, $0E, $04, $0C, $1F   ; 

- D 2 - I - 0x01CA84 07:CA74: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CA86 07:CA76: 0F        .byte $0F, $1F, $1F, $1F, $13   ; 

- D 2 - I - 0x01CA8B 07:CA7B: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CA8D 07:CA7D: 05        .byte $05, $00, $06, $6C, $00, $30, $F0   ; 

- D 2 - I - 0x01CA94 07:CA84: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CA96 07:CA86: FC        .byte $FC, $F8, $92, $FE, $CC   ; 

- D 2 - I - 0x01CA9B 07:CA8B: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CA9D 07:CA8D: 1F        .byte $1F, $1F, $1F, $3F, $DF, $18, $00, $3F   ; 

- D 2 - I - 0x01CAA5 07:CA95: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CAA7 07:CA97: F0        .byte $F0, $D0, $10, $13, $0F, $70, $F0, $F0, $E0, $C0, $00, $03, $0C, $E0, $E0, $C3   ; 
- D 2 - I - 0x01CAB7 07:CAA7: CF        .byte $CF, $BF, $FF, $FC, $F0   ; 

- D 2 - I - 0x01CABC 07:CAAC: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CABE 07:CAAE: 04        .byte $04, $04, $04, $07, $0C   ; 

- D 2 - I - 0x01CAC3 07:CAB3: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CAC5 07:CAB5: 03        .byte $03, $0B, $3B, $FB, $F8, $F0   ; 

- D 2 - I - 0x01CACB 07:CABB: 16        .byte $16, $07   ; control byte for FF + counter

- D 2 - I - 0x01CACD 07:CABD: F7        .byte $F7   ; 

- D 2 - I - 0x01CACE 07:CABE: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CAD0 07:CAC0: F9        .byte $F9, $F8, $F8, $F8, $F0, $C8   ; 

- D 2 - I - 0x01CAD6 07:CAC6: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CAD8 07:CAC8: AA        .byte $AA   ; 

- D 2 - I - 0x01CAD9 07:CAC9: 09        .byte $09, $12   ; control byte for 00 + counter

- D 2 - I - 0x01CADB 07:CACB: 01        .byte $01, $02   ; 

- D 2 - I - 0x01CADD 07:CACD: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CADF 07:CACF: 03        .byte $03, $07, $0F, $1E, $3C, $12, $18, $0C, $0E, $07, $03   ; 

- D 2 - I - 0x01CAEA 07:CADA: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CAEC 07:CADC: 0C        .byte $0C, $06, $03, $01   ; 

- D 2 - I - 0x01CAF0 07:CAE0: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01CAF2 07:CAE2: 01        .byte $01, $07   ; 

- D 2 - I - 0x01CAF4 07:CAE4: 09        .byte $09, $06   ; control byte for 00 + counter

- D 2 - I - 0x01CAF6 07:CAE6: 01        .byte $01, $07   ; 

- D 2 - I - 0x01CAF8 07:CAE8: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01CAFA 07:CAEA: 40        .byte $40, $E0, $F0   ; 

- D 2 - I - 0x01CAFD 07:CAED: 09        .byte $09, $06   ; control byte for 00 + counter

- D 2 - I - 0x01CAFF 07:CAEF: C3        .byte $C3, $EF   ; 

- D 2 - I - 0x01CB01 07:CAF1: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CB03 07:CAF3: 03        .byte $03, $0C, $30, $C0   ; 

- D 2 - I - 0x01CB07 07:CAF7: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CB09 07:CAF9: 3F        .byte $3F, $FF, $FC, $F0, $C0, $00, $03, $0F, $30, $C0   ; 

- D 2 - I - 0x01CB13 07:CB03: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CB15 07:CB05: 03        .byte $03, $0C, $C0, $00, $03, $0F, $3F, $FF, $FC, $F0   ; 

- D 2 - I - 0x01CB1F 07:CB0F: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CB21 07:CB11: 03        .byte $03, $FF, $FC, $F0   ; 

- D 2 - I - 0x01CB25 07:CB15: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CB27 07:CB17: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CB29 07:CB19: 0C        .byte $0C, $33, $CF, $03, $0F, $3C, $F4, $D7, $1F, $3F, $FD, $03, $0C, $F3, $CF, $3B   ; 
- D 2 - I - 0x01CB39 07:CB29: EF        .byte $EF, $FC, $F0, $C3, $0F, $3F   ; 

- D 2 - I - 0x01CB3F 07:CB2F: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CB41 07:CB31: DF        .byte $DF, $0F, $47, $3E, $FE, $FC, $F3, $CF, $1C, $C0, $A0   ; 

- D 2 - I - 0x01CB4C 07:CB3C: 16        .byte $16, $07   ; control byte for FF + counter

- D 2 - I - 0x01CB4E 07:CB3E: F7        .byte $F7   ; 

- D 2 - I - 0x01CB4F 07:CB3F: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CB51 07:CB41: F9        .byte $F9, $F8, $F8, $F8, $70, $C8   ; 

- D 2 - I - 0x01CB57 07:CB47: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CB59 07:CB49: 01        .byte $01, $04, $10, $40   ; 

- D 2 - I - 0x01CB5D 07:CB4D: 09        .byte $09, $08   ; control byte for 00 + counter

- D 2 - I - 0x01CB5F 07:CB4F: 04        .byte $04, $08, $10, $20, $40, $80, $11, $12, $78, $F0, $E1, $C3, $87, $0F, $0E, $2C   ; 

- D 2 - I - 0x01CB6F 07:CB5F: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CB71 07:CB61: 01        .byte $01, $07, $1F, $1F, $1F, $1F   ; 

- D 2 - I - 0x01CB77 07:CB67: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CB79 07:CB69: 01        .byte $01, $07, $1F, $0F, $17, $0B, $1F, $7F   ; 

- D 2 - I - 0x01CB81 07:CB71: 16        .byte $16, $06   ; control byte for FF + counter

- D 2 - I - 0x01CB83 07:CB73: 1F        .byte $1F, $7F   ; 

- D 2 - I - 0x01CB85 07:CB75: 16        .byte $16, $04   ; control byte for FF + counter

- D 2 - I - 0x01CB87 07:CB77: FC        .byte $FC, $FA, $F8, $FC, $FF, $FE, $FE, $FE, $FC, $F0, $F7, $FB, $FC, $F0, $C0, $00   ; 
- D 2 - I - 0x01CB97 07:CB87: 03        .byte $03, $0F   ; 

- D 2 - I - 0x01CB99 07:CB89: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CB9B 07:CB8B: 03        .byte $03, $0E, $38, $E0   ; 

- D 2 - I - 0x01CB9F 07:CB8F: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CBA1 07:CB91: 03        .byte $03, $0D, $37, $DF   ; 

- D 2 - I - 0x01CBA5 07:CB95: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CBA7 07:CB97: 20        .byte $20, $F0, $9B, $2F, $00, $30   ; 

- D 2 - I - 0x01CBAD 07:CB9D: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CBAF 07:CB9F: 20        .byte $20, $D0, $6B, $F4, $DF, $CF, $03, $0F, $3C, $F4, $D7, $1F, $3F, $FC, $03, $0C   ; 
- D 2 - I - 0x01CBBF 07:CBAF: 33        .byte $33, $CF, $3B, $EF, $FC, $F0, $D3, $1F, $3F, $FC, $F0, $C1, $0A, $15, $3F, $EF   ; 
- D 2 - I - 0x01CBCF 07:CBBF: FC        .byte $FC, $F0, $C0   ; 

- D 2 - I - 0x01CBD2 07:CBC2: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CBD4 07:CBC4: F0        .byte $F0, $C1, $0A, $15, $AB, $5F, $BC, $F0, $C0   ; 

- D 2 - I - 0x01CBDD 07:CBCD: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CBDF 07:CBCF: 03        .byte $03, $0C, $33, $CF, $A3, $4F, $BC, $F4, $C7, $4F, $7F, $FD, $53, $3C, $33, $CF   ; 
- D 2 - I - 0x01CBEF 07:CBDF: 3B        .byte $3B, $FF, $BC, $F0, $C3, $0F, $3F   ; 

- D 2 - I - 0x01CBF6 07:CBE6: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CBF8 07:CBE8: DF        .byte $DF, $0F, $07, $3E, $FE, $FC, $F3, $CF, $1C, $C0, $E0, $01, $04, $10, $40   ; 

- D 2 - I - 0x01CC07 07:CBF7: 09        .byte $09, $0C   ; control byte for 00 + counter

- D 2 - I - 0x01CC09 07:CBF9: 1F        .byte $1F, $1F, $1F, $1F, $3F, $EF, $04, $00, $35, $EA, $F5, $EA, $C5, $02, $03, $0F   ; 

- D 2 - I - 0x01CC19 07:CC09: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CC1B 07:CC0B: F7        .byte $F7, $FB, $CD, $06, $03, $0D, $E9, $8C, $0E, $87, $33, $F9, $FC, $F0, $C0, $80   ; 
- D 2 - I - 0x01CC2B 07:CC1B: C3        .byte $C3, $EC, $F0, $F8, $7C, $BE, $3F, $FF, $7C, $30, $90, $C8, $E4, $72, $80, $C4   ; 
- D 2 - I - 0x01CC3B 07:CC2B: E0        .byte $E0, $F6, $F8, $FC, $FE, $FF, $7F, $BF, $DB, $E9, $F7, $FB, $FD, $FE   ; 

- D 2 - I - 0x01CC49 07:CC39: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CC4B 07:CC3B: 10        .byte $10, $10, $18, $02, $02, $03   ; 

- D 2 - I - 0x01CC51 07:CC41: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CC53 07:CC43: EF        .byte $EF, $E7, $FF, $FD, $FC, $F0, $C1, $6A, $35, $5B, $4F, $64, $00, $C0, $40, $A0   ; 
- D 2 - I - 0x01CC63 07:CC53: D0        .byte $D0, $EB, $B4, $9B, $FF, $AB, $5F, $BC, $F4, $C7, $4F, $7F, $FC, $03, $0C, $33   ; 
- D 2 - I - 0x01CC73 07:CC63: CF        .byte $CF, $3B, $FF, $BC, $F0, $F0, $C1, $0A, $15, $AA, $55, $AA, $54, $C0   ; 

- D 2 - I - 0x01CC81 07:CC71: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CC83 07:CC73: 83        .byte $83, $41, $A0, $50, $A8, $44, $82, $01, $71, $39, $1C, $0E, $07, $03, $01, $00   ; 
- D 2 - I - 0x01CC93 07:CC83: 12        .byte $12, $10, $18, $0C, $06, $03   ; 

- D 2 - I - 0x01CC99 07:CC89: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CC9B 07:CC8B: 0C        .byte $0C, $0E, $07, $03, $01   ; 

- D 2 - I - 0x01CCA0 07:CC90: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01CCA2 07:CC92: 03        .byte $03, $0E, $35, $C2, $01, $00, $3F, $FF, $FC, $F0, $C0   ; 

- D 2 - I - 0x01CCAD 07:CC9D: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CCAF 07:CC9F: 30        .byte $30, $C0, $40, $A0, $50, $A8, $54, $AA, $C0   ; 

- D 2 - I - 0x01CCB8 07:CCA8: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CCBA 07:CCAA: DF        .byte $DF, $6F, $37, $1B, $0D, $06, $02, $01, $39, $1C, $0E, $07, $03, $01, $01, $01   ; 
- D 2 - I - 0x01CCCA 07:CCBA: 00        .byte $00, $80, $C0, $E0, $F3   ; 

- D 2 - I - 0x01CCCF 07:CCBF: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CCD1 07:CCC1: 00        .byte $00, $80, $40, $20, $93, $CF   ; 

- D 2 - I - 0x01CCD7 07:CCC7: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CCD9 07:CCC9: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CCDB 07:CCCB: 80        .byte $80, $C0, $E0, $F0   ; 

- D 2 - I - 0x01CCDF 07:CCCF: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CCE1 07:CCD1: 10        .byte $10, $78, $BC, $DE, $EF   ; 

- D 2 - I - 0x01CCE6 07:CCD6: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CCE8 07:CCD8: 80        .byte $80   ; 

- D 2 - I - 0x01CCE9 07:CCD9: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CCEB 07:CCDB: 03        .byte $03, $0F, $3F, $7F, $80, $C4, $E4, $F6, $F8, $FC, $FE, $FF, $7F, $BF, $DB, $E9   ; 
- D 2 - I - 0x01CCFB 07:CCEB: F7        .byte $F7, $FB, $FD, $FE   ; 

- D 2 - I - 0x01CCFF 07:CCEF: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CD01 07:CCF1: 03        .byte $03, $0F, $3F   ; 

- D 2 - I - 0x01CD04 07:CCF4: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01CD06 07:CCF6: 7F        .byte $7F, $F0, $C1, $7A, $FD, $FA, $FD, $FA, $FD, $C0, $40, $B0, $F0, $F0, $F0, $F0   ; 
- D 2 - I - 0x01CD16 07:CD06: F0        .byte $F0, $AA, $55, $AA, $54, $A8, $40, $80   ; 

- D 2 - I - 0x01CD1E 07:CD0E: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01CD20 07:CD10: A8        .byte $A8, $40, $80   ; 

- D 2 - I - 0x01CD23 07:CD13: 09        .byte $09, $0D   ; control byte for 00 + counter

- D 2 - I - 0x01CD25 07:CD15: 55        .byte $55, $2A, $15, $0A, $05, $02, $01   ; 

- D 2 - I - 0x01CD2C 07:CD1C: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01CD2E 07:CD1E: 80        .byte $80, $00, $C0, $E0, $F0, $F8, $FC, $03, $0F, $3F, $BF, $5F, $AF, $57, $AB   ; 

- D 2 - I - 0x01CD3D 07:CD2D: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CD3F 07:CD2F: 7F        .byte $7F, $3F, $1F, $7F, $BF, $5F, $AF, $57, $AB, $D5, $EA, $F8, $FC, $FE   ; 

- D 2 - I - 0x01CD4D 07:CD3D: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CD4F 07:CD3F: F7        .byte $F7, $FB, $FD, $FE, $FC, $F0, $C0, $00, $43, $2F, $13, $01   ; 

- D 2 - I - 0x01CD5B 07:CD4B: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CD5D 07:CD4D: BC        .byte $BC, $D0, $E0, $F0, $F8, $FC, $FE   ; 

- D 2 - I - 0x01CD64 07:CD54: 16        .byte $16, $06   ; control byte for FF + counter

- D 2 - I - 0x01CD66 07:CD56: 7F        .byte $7F, $3F, $1F, $7F, $3F, $1F, $0F, $07, $03, $01, $00   ; 

- D 2 - I - 0x01CD71 07:CD61: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01CD73 07:CD63: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $7F, $F8, $F8, $F8, $F8, $FC, $FA, $F9, $F8   ; 
- D 2 - I - 0x01CD83 07:CD73: F4        .byte $F4, $F6, $F7, $F7, $F3, $F1, $F0, $F0   ; 

- D 2 - I - 0x01CD8B 07:CD7B: 09        .byte $09, $06   ; control byte for 00 + counter

- D 2 - I - 0x01CD8D 07:CD7D: 10        .byte $10, $90   ; 

- D 2 - I - 0x01CD8F 07:CD7F: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CD91 07:CD81: 80        .byte $80, $C0, $E0, $E0, $60, $80, $00, $20, $00, $08, $00, $02   ; 

- D 2 - I - 0x01CD9D 07:CD8D: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01CD9F 07:CD8F: 0C        .byte $0C, $7E, $FB, $AF, $F5, $4A, $7F, $2A, $0C, $7E, $FB, $AD, $66, $47, $52, $14   ; 
- D 2 - I - 0x01CDAF 07:CD9F: 70        .byte $70, $3C, $1E, $7F, $7F, $7F, $7F, $7F, $0C, $06, $1F, $7F, $7F, $3F, $1F, $0F   ; 

- D 2 - I - 0x01CDBF 07:CDAF: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CDC1 07:CDB1: 80        .byte $80, $C1, $E3, $F7   ; 

- D 2 - I - 0x01CDC5 07:CDB5: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CDC7 07:CDB7: 80        .byte $80, $C0, $E1, $F3, $CF   ; 

- D 2 - I - 0x01CDCC 07:CDBC: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CDCE 07:CDBE: 07        .byte $07, $1F, $7F   ; 

- D 2 - I - 0x01CDD1 07:CDC1: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CDD3 07:CDC3: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CDD5 07:CDC5: 07        .byte $07, $1F, $7F   ; 

- D 2 - I - 0x01CDD8 07:CDC8: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CDDA 07:CDCA: 00        .byte $00, $7E   ; 

- D 2 - I - 0x01CDDC 07:CDCC: 16        .byte $16, $06   ; control byte for FF + counter

- D 2 - I - 0x01CDDE 07:CDCE: 00        .byte $00, $7E   ; 

- D 2 - I - 0x01CDE0 07:CDD0: 16        .byte $16, $06   ; control byte for FF + counter

- D 2 - I - 0x01CDE2 07:CDD2: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CDE4 07:CDD4: C0        .byte $C0, $F0, $F8, $FC, $FE, $FE   ; 

- D 2 - I - 0x01CDEA 07:CDDA: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CDEC 07:CDDC: C0        .byte $C0, $F0, $F8, $FC, $FE, $FE   ; 

- D 2 - I - 0x01CDF2 07:CDE2: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CDF4 07:CDE4: 03        .byte $03, $0F, $3F, $FF   ; 

- D 2 - I - 0x01CDF8 07:CDE8: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CDFA 07:CDEA: 03        .byte $03, $0F, $3F, $FF, $FE   ; 

- D 2 - I - 0x01CDFF 07:CDEF: 16        .byte $16, $07   ; control byte for FF + counter

- D 2 - I - 0x01CE01 07:CDF1: 55        .byte $55, $AA, $55, $EA, $F5, $F2, $C5, $02, $0F, $07, $83, $C1, $E0, $F0, $F8, $FC   ; 
- D 2 - I - 0x01CE11 07:CE01: F5        .byte $F5, $FA, $7D, $BE, $5F, $AF, $57, $AB, $FF, $FC, $F0, $C0   ; 

- D 2 - I - 0x01CE1D 07:CE0D: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01CE1F 07:CE0F: 03        .byte $03, $0F, $3F, $FF, $FC, $F0, $C0, $00, $01, $01, $01, $01, $07, $1F, $7F, $FF   ; 
- D 2 - I - 0x01CE2F 07:CE1F: FC        .byte $FC, $F0, $C0   ; 

- D 2 - I - 0x01CE32 07:CE22: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CE34 07:CE24: 06        .byte $06, $1F, $0F, $07, $03, $01   ; 

- D 2 - I - 0x01CE3A 07:CE2A: 09        .byte $09, $0C   ; control byte for 00 + counter

- D 2 - I - 0x01CE3C 07:CE2C: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CE3E 07:CE2E: FC        .byte $FC, $F0, $C0, $7F, $7F, $7F, $7F, $7C, $70, $43, $0F, $F8, $F8, $F0, $C0   ; 

- D 2 - I - 0x01CE4D 07:CE3D: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CE4F 07:CE3F: 03        .byte $03, $0C, $F0, $F0, $C3, $0F, $3F, $FF, $FC, $F0, $0C, $7E, $FB, $AF, $F5, $4A   ; 
- D 2 - I - 0x01CE5F 07:CE4F: 7E        .byte $7E, $2A, $0C, $7E, $FB, $AD, $64, $42, $53, $05, $1E, $19, $18, $3E, $5C, $BF   ; 
- D 2 - I - 0x01CE6F 07:CE5F: 9E        .byte $9E, $1C, $60, $E1, $E0, $C2, $80, $21, $80, $00, $7F, $3F, $1F, $0F, $07, $01   ; 

- D 2 - I - 0x01CE7F 07:CE6F: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CE81 07:CE71: 07        .byte $07   ; 

- D 2 - I - 0x01CE82 07:CE72: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CE84 07:CE74: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01CE86 07:CE76: 3F        .byte $3F, $FF, $7F, $3F, $7F, $7F, $7F, $FF, $03, $0F, $3F   ; 

- D 2 - I - 0x01CE91 07:CE81: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CE93 07:CE83: 03        .byte $03, $0F, $3F, $FF, $FC, $F0, $C0, $00   ; 

- D 2 - I - 0x01CE9B 07:CE8B: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CE9D 07:CE8D: FC        .byte $FC, $F0, $C0, $FC, $F0, $C0   ; 

- D 2 - I - 0x01CEA3 07:CE93: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01CEA5 07:CE95: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01CEA7 07:CE97: 05        .byte $05, $02, $05, $0A, $05, $02, $01, $00, $FE   ; 

- D 2 - I - 0x01CEB0 07:CEA0: 16        .byte $16, $07   ; control byte for FF + counter

- D 2 - I - 0x01CEB2 07:CEA2: 55        .byte $55, $AA, $55, $AA, $55, $AA, $55, $AA   ; 

- D 2 - I - 0x01CEBA 07:CEAA: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01CEBC 07:CEAC: 7F        .byte $7F, $BF, $5F, $AF, $57, $AB, $55, $2A, $80, $C0, $E0, $F0, $F8, $FC, $FE, $FF   ; 
- D 2 - I - 0x01CECC 07:CEBC: 80        .byte $80, $C0, $E0, $F0, $F8, $FC   ; 

- D 2 - I - 0x01CED2 07:CEC2: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CED4 07:CEC4: 07        .byte $07   ; 

- D 2 - I - 0x01CED5 07:CEC5: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01CED7 07:CEC7: 03        .byte $03, $0C   ; 

- D 2 - I - 0x01CED9 07:CEC9: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CEDB 07:CECB: 03        .byte $03, $0F, $3F, $FF, $FC, $F0, $1A, $18, $1B, $1E, $3C, $FF, $9E, $1C, $25, $E7   ; 
- D 2 - I - 0x01CEEB 07:CEDB: E4        .byte $E4, $E2, $C0, $21, $80, $00, $30, $C0, $07, $1C, $33, $6F, $BF, $FF, $C0, $00   ; 
- D 2 - I - 0x01CEFB 07:CEEB: 07        .byte $07, $1F, $3F, $7F   ; 

- D 2 - I - 0x01CEFF 07:CEEF: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CF01 07:CEF1: 30        .byte $30, $DC, $26, $FB, $FF, $FE, $8F, $FD, $30, $FC, $FE   ; 

- D 2 - I - 0x01CF0C 07:CEFC: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CF0E 07:CEFE: C3        .byte $C3, $DF, $C7, $FB, $C7   ; 

- D 2 - I - 0x01CF13 07:CF03: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CF15 07:CF05: 3C        .byte $3C, $20, $38, $04, $38   ; 

- D 2 - I - 0x01CF1A 07:CF0A: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CF1C 07:CF0C: 0F        .byte $0F, $0F, $1F, $1F, $1F, $1F, $1F, $1F, $0F, $0F, $1F, $1F, $01, $01, $01, $00   ; 

- D 2 - I - 0x01CF2C 07:CF1C: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CF2E 07:CF1E: FE        .byte $FE, $FE, $FC, $FD, $F9, $FA   ; 

- D 2 - I - 0x01CF34 07:CF24: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01CF36 07:CF26: FE        .byte $FE, $FE, $FC, $FC, $F9, $F8, $FF, $FC, $E8, $E8, $E8, $48, $D0, $90, $70, $70   ; 
- D 2 - I - 0x01CF46 07:CF36: E0        .byte $E0, $E0, $E0, $40, $C0, $80, $7F, $3F, $1F, $0F, $07, $03, $01   ; 

- D 2 - I - 0x01CF53 07:CF43: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01CF55 07:CF45: 16        .byte $16, $08   ; control byte for FF + counter

- D 2 - I - 0x01CF57 07:CF47: 55        .byte $55, $2A, $15, $0A, $05, $02, $01   ; 

- D 2 - I - 0x01CF5E 07:CF4E: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01CF60 07:CF50: 01        .byte $01, $06, $18, $60, $80   ; 

- D 2 - I - 0x01CF65 07:CF55: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CF67 07:CF57: 03        .byte $03, $0F   ; 

- D 2 - I - 0x01CF69 07:CF59: 16        .byte $16, $04   ; control byte for FF + counter

- D 2 - I - 0x01CF6B 07:CF5B: D7        .byte $D7, $0B, $07, $0E, $15, $0A, $05, $02, $29, $F4, $F8, $F0   ; 

- D 2 - I - 0x01CF77 07:CF67: 16        .byte $16, $06   ; control byte for FF + counter

- D 2 - I - 0x01CF79 07:CF69: 7F        .byte $7F, $BF, $7F, $BF, $5F, $AF, $57, $AB, $55, $2A, $B0, $C0, $E0, $F0, $F8, $FC   ; 
- D 2 - I - 0x01CF89 07:CF79: FE        .byte $FE, $FF, $C0, $C0, $E0, $F0, $F8, $FC, $FE, $FF, $B8, $BF, $FF, $5F, $6F, $32   ; 
- D 2 - I - 0x01CF99 07:CF89: 1F        .byte $1F, $07   ; 

- D 2 - I - 0x01CF9B 07:CF8B: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01CF9D 07:CF8D: 7F        .byte $7F, $7F, $3F, $1F, $C7, $FF, $F7, $8F, $FD, $E7, $3E, $F8, $80   ; 

- D 2 - I - 0x01CFAA 07:CF9A: 16        .byte $16, $05   ; control byte for FF + counter

- D 2 - I - 0x01CFAC 07:CF9C: FE        .byte $FE, $F8, $80, $03, $03, $03, $03, $03, $01, $01   ; 

- D 2 - I - 0x01CFB6 07:CFA6: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01CFB8 07:CFA8: 16        .byte $16, $09   ; control byte for FF + counter

- D 2 - I - 0x01CFBA 07:CFAA: 7F        .byte $7F, $7F, $3F, $1F, $07   ; 

- D 2 - I - 0x01CFBF 07:CFAF: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CFC1 07:CFB1: 16        .byte $16, $07   ; control byte for FF + counter

- D 2 - I - 0x01CFC3 07:CFB3: 50        .byte $50   ; 

- D 2 - I - 0x01CFC4 07:CFB4: 16        .byte $16, $07   ; control byte for FF + counter

- D 2 - I - 0x01CFC6 07:CFB6: 00        .byte $00   ; 

- D 2 - I - 0x01CFC7 07:CFB7: 16        .byte $16, $04   ; control byte for FF + counter

- D 2 - I - 0x01CFC9 07:CFB9: FE        .byte $FE, $F8, $C0, $00   ; 

- D 2 - I - 0x01CFCD 07:CFBD: 16        .byte $16, $04   ; control byte for FF + counter

- D 2 - I - 0x01CFCF 07:CFBF: FE        .byte $FE, $F8, $C0, $00, $F3, $E7, $CF, $8F, $0F, $0F, $0F, $10, $F3, $E7, $CF, $80   ; 

- D 2 - I - 0x01CFDF 07:CFCF: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01CFE1 07:CFD1: A0        .byte $A0, $20, $40, $40, $80, $80   ; 

- D 2 - I - 0x01CFE7 07:CFD7: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01CFE9 07:CFD9: 80        .byte $80   ; 

- D 2 - I - 0x01CFEA 07:CFDA: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CFEC 07:CFDC: 35        .byte $35, $EA, $15, $0A, $05, $02, $01, $00, $C0   ; 

- D 2 - I - 0x01CFF5 07:CFE5: 09        .byte $09, $07   ; control byte for 00 + counter

- D 2 - I - 0x01CFF7 07:CFE7: 5F        .byte $5F, $AF, $57, $AB, $55, $AA, $55, $AA, $15, $0A, $05, $02, $01   ; 

- D 2 - I - 0x01D004 07:CFF4: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D006 07:CFF6: 80        .byte $80, $C0, $E0, $F0, $F8, $FC, $FE, $FF, $80, $C0, $E0, $F0, $F8, $FC, $FE   ; 

- D 2 - I - 0x01D015 07:D005: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01D017 07:D007: 7F        .byte $7F, $3F, $1F, $0F, $07, $01   ; 

- D 2 - I - 0x01D01D 07:D00D: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01D01F 07:D00F: 50        .byte $50, $50, $50, $50, $50, $50, $D0, $3F   ; 

- D 2 - I - 0x01D027 07:D017: 09        .byte $09, $0C   ; control byte for 00 + counter

- D 2 - I - 0x01D029 07:D019: 03        .byte $03, $0C, $30, $C0   ; 

- D 2 - I - 0x01D02D 07:D01D: 09        .byte $09, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D02F 07:D01F: 10        .byte $10, $20, $40, $80   ; 

- D 2 - I - 0x01D033 07:D023: 09        .byte $09, $0C   ; control byte for 00 + counter

- D 2 - I - 0x01D035 07:D025: 0A        .byte $0A, $15, $15, $2A, $2A, $7F, $7F, $00, $1F, $3F, $3F, $7F, $7F, $55   ; 

- D 2 - I - 0x01D043 07:D033: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D045 07:D035: A0        .byte $A0, $40, $50, $90, $B0, $E0, $E0, $00, $F0, $F0, $E0, $E0, $C0, $40   ; 

- D 2 - I - 0x01D053 07:D043: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D055 07:D045: 5F        .byte $5F, $AF, $57, $AB, $55, $AA, $55, $A0, $15, $0A, $05, $02, $01, $00, $02, $0F   ; 
- D 2 - I - 0x01D065 07:D055: 80        .byte $80, $C0, $E3, $F4, $F8, $F8, $F8, $F8, $BF, $FF, $FC, $F8, $F8, $E8, $88, $08   ; 

- D 2 - I - 0x01D075 07:D065: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D077 07:D067: 05        .byte $05, $05, $0B, $03, $F7, $07, $00, $01, $FB, $FB, $F7, $0E, $0E, $0C, $06, $F6   ; 
- D 2 - I - 0x01D087 07:D077: EF        .byte $EF, $EF, $DF, $DF, $BF, $BE, $FE, $8E, $9D, $1D, $39, $39, $71, $70, $12, $12   ; 
- D 2 - I - 0x01D097 07:D087: 12        .byte $12, $12, $12, $12, $12, $12, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $0C, $40, $00   ; 
- D 2 - I - 0x01D0A7 07:D097: 03        .byte $03, $0E, $35, $C2   ; 

- D 2 - I - 0x01D0AB 07:D09B: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D0AD 07:D09D: 3F        .byte $3F, $FF, $FC, $F0, $C0   ; 

- D 2 - I - 0x01D0B2 07:D0A2: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D0B4 07:D0A4: 7F        .byte $7F, $FF, $5F, $AF, $5F, $AF, $57, $2B, $95, $0A, $05, $02, $01, $01, $01, $00   ; 
- D 2 - I - 0x01D0C4 07:D0B4: F8        .byte $F8, $F8, $F8, $C8, $08, $00, $04, $84, $08, $08, $08, $38, $C8, $18, $64, $9C   ; 
- D 2 - I - 0x01D0D4 07:D0C4: 60        .byte $60, $B8, $EC, $5A, $7E, $9C, $37, $0B, $60, $B8, $EC, $5A, $7E, $9C, $37, $0B   ; 
- D 2 - I - 0x01D0E4 07:D0D4: 17        .byte $17, $0B, $05, $02   ; 

- D 2 - I - 0x01D0E8 07:D0D8: 09        .byte $09, $0B   ; control byte for 00 + counter

- D 2 - I - 0x01D0EA 07:D0DA: C0        .byte $C0, $84, $82, $C2, $C2, $40   ; 

- D 2 - I - 0x01D0F0 07:D0E0: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D0F2 07:D0E2: E4        .byte $E4, $8E, $72, $4E, $70   ; 

- D 2 - I - 0x01D0F7 07:D0E7: 09        .byte $09, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D0F9 07:D0E9: 0C        .byte $0C, $7E, $FB, $AF, $F5, $4A, $7E, $2A, $0C, $7E, $FB, $AD, $64, $42, $52, $C0   ; 
- D 2 - I - 0x01D109 07:D0F9: 06        .byte $06, $F7, $EE, $ED, $DA, $DD, $BA, $B5, $FE, $8E, $9C, $1C, $38, $38, $70, $70   ; 
- D 2 - I - 0x01D119 07:D109: A0        .byte $A0, $40, $A0, $40, $80, $00, $80   ; 

- D 2 - I - 0x01D120 07:D110: 09        .byte $09, $09   ; control byte for 00 + counter

- D 2 - I - 0x01D122 07:D112: 1A        .byte $1A, $1A, $1A, $1A, $1A, $1A, $18, $18, $04, $04, $04, $04, $04, $04, $07, $07   ; 
- D 2 - I - 0x01D132 07:D122: 3F        .byte $3F, $0F, $03   ; 

- D 2 - I - 0x01D135 07:D125: 09        .byte $09, $0C   ; control byte for 00 + counter

- D 2 - I - 0x01D137 07:D127: C0        .byte $C0, $1A, $D9, $F8, $FC, $3F, $3F, $9E, $1C, $E0, $25, $07, $03, $00, $20, $80   ; 
- D 2 - I - 0x01D147 07:D137: 00        .byte $00, $0C, $7E, $FB, $AF, $F5, $CA, $FE, $3E, $0C, $7E, $FB, $ED, $64, $76, $53   ; 
- D 2 - I - 0x01D157 07:D147: 01        .byte $01, $0F, $0F, $03   ; 

- D 2 - I - 0x01D15B 07:D14B: 09        .byte $09, $0D   ; control byte for 00 + counter

- D 2 - I - 0x01D15D 07:D14D: 9F        .byte $9F, $1F, $3B, $5E, $1C, $3F, $9E, $1C, $80, $00, $20, $42, $00, $21, $80   ; 

- D 2 - I - 0x01D16C 07:D15C: 09        .byte $09, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D16E 07:D15E: 01        .byte $01, $03, $03, $07, $07   ; 

- D 2 - I - 0x01D173 07:D163: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D175 07:D165: 01        .byte $01, $03, $07, $06, $0E, $0C, $3F, $0F, $03, $E8, $D8, $DC, $B4, $B4   ; 

- D 2 - I - 0x01D183 07:D173: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D185 07:D175: F0        .byte $F0, $B8, $B8, $3C, $74, $74, $0F, $0F, $5E, $5E, $BD, $BD, $7B, $7B, $1C, $18   ; 
- D 2 - I - 0x01D195 07:D185: B9        .byte $B9, $B1, $73, $63, $E7, $C7, $6A, $74, $EA, $D4, $A8   ; 

- D 2 - I - 0x01D1A0 07:D190: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01D1A2 07:D192: 50        .byte $50, $E0, $E0, $D5, $EB, $D7, $80   ; 

- D 2 - I - 0x01D1A9 07:D199: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D1AB 07:D19B: 6E        .byte $6E, $74, $EA, $D4, $A8   ; 

- D 2 - I - 0x01D1B0 07:D1A0: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01D1B2 07:D1A2: 50        .byte $50, $E4, $E0, $D5, $EB, $D7, $80   ; 

- D 2 - I - 0x01D1B9 07:D1A9: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D1BB 07:D1AB: A0        .byte $A0, $43, $A6, $43, $80, $08, $87   ; 

- D 2 - I - 0x01D1C2 07:D1B2: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1C4 07:D1B4: C0        .byte $C0, $20, $80, $C0, $CC, $8C   ; 

- D 2 - I - 0x01D1CA 07:D1BA: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1CC 07:D1BC: 1E        .byte $1E, $31, $30, $60, $66, $3C   ; 

- D 2 - I - 0x01D1D2 07:D1C2: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1D4 07:D1C4: 06        .byte $06, $0E, $1E, $36, $7E, $C6   ; 

- D 2 - I - 0x01D1DA 07:D1CA: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1DC 07:D1CC: 39        .byte $39, $31, $63, $63, $C6, $F6   ; 

- D 2 - I - 0x01D1E2 07:D1D2: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1E4 07:D1D4: 9F        .byte $9F, $98, $30, $3C, $60, $60   ; 

- D 2 - I - 0x01D1EA 07:D1DA: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1EC 07:D1DC: 38        .byte $38, $6C, $CC, $CC, $D9, $71   ; 

- D 2 - I - 0x01D1F2 07:D1E2: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1F4 07:D1E4: 78        .byte $78, $6C, $CC, $F1, $99, $99   ; 

- D 2 - I - 0x01D1FA 07:D1EA: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D1FC 07:D1EC: 6C        .byte $6C, $6C, $F9, $F9, $B3, $B3   ; 

- D 2 - I - 0x01D202 07:D1F2: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D204 07:D1F4: C1        .byte $C1, $C3, $87, $8D, $1F, $31   ; 

- D 2 - I - 0x01D20A 07:D1FA: 09        .byte $09, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D20C 07:D1FC: 80        .byte $80, $81, $81, $83, $83, $87, $07, $01, $01, $03, $03, $07, $06, $0E, $0C   ; 

- D 2 - I - 0x01D21B 07:D20B: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D21D 07:D20D: 01        .byte $01, $01, $03, $FE, $FE, $02   ; 

- D 2 - I - 0x01D223 07:D213: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D225 07:D215: FE        .byte $FE, $FE, $FC, $01, $01, $01, $81, $BF, $7F, $7F, $FF, $97, $F6, $96, $7E, $78   ; 
- D 2 - I - 0x01D235 07:D225: F1        .byte $F1, $E1, $03, $6B, $0B, $6B   ; 

- D 2 - I - 0x01D23B 07:D22B: 09        .byte $09, $05   ; control byte for 00 + counter

- D 2 - I - 0x01D23D 07:D22D: 16        .byte $16, $02   ; control byte for FF + counter

- D 2 - I - 0x01D23F 07:D22F: 10        .byte $10   ; 

- D 2 - I - 0x01D240 07:D230: 09        .byte $09, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D242 07:D232: 16        .byte $16, $03   ; control byte for FF + counter

- D 2 - I - 0x01D244 07:D234: 09        .byte $09, $03   ; control byte for 00 + counter



off_0F_D236:
- D 2 - I - 0x01D246 07:D236: 29        .byte $29   ; prepare control byte for 00
- D 2 - I - 0x01D247 07:D237: 32        .byte $32   ; prepare control byte for FF

- D 2 - I - 0x01D248 07:D238: 32        .byte $32, $11   ; control byte for FF + counter

- D 2 - I - 0x01D24A 07:D23A: F7        .byte $F7, $FB, $F7, $FB   ; normal bytes

- D 2 - I - 0x01D24E 07:D23E: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D250 07:D240: E7        .byte $E7, $DB, $AD, $9D, $AD, $C3, $E7, $87   ; 

- D 2 - I - 0x01D258 07:D248: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D25A 07:D24A: 88        .byte $88   ; 

- D 2 - I - 0x01D25B 07:D24B: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D25D 07:D24D: 88        .byte $88   ; 

- D 2 - I - 0x01D25E 07:D24E: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D260 07:D250: 88        .byte $88, $88   ; 

- D 2 - I - 0x01D262 07:D252: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D264 07:D254: 88        .byte $88, $88   ; 

- D 2 - I - 0x01D266 07:D256: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D268 07:D258: 8F        .byte $8F   ; 

- D 2 - I - 0x01D269 07:D259: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D26B 07:D25B: 8F        .byte $8F   ; 

- D 2 - I - 0x01D26C 07:D25C: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D26E 07:D25E: 8F        .byte $8F, $8F   ; 

- D 2 - I - 0x01D270 07:D260: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D272 07:D262: 8F        .byte $8F, $8F, $FF, $01, $01, $03, $03, $07, $07, $0F, $0F, $01, $01, $03, $03, $07   ; 
- D 2 - I - 0x01D282 07:D272: 07        .byte $07, $0F, $0F   ; 

- D 2 - I - 0x01D285 07:D275: 32        .byte $32, $04   ; control byte for FF + counter

- D 2 - I - 0x01D287 07:D277: FD        .byte $FD, $FD, $FB, $FB   ; 

- D 2 - I - 0x01D28B 07:D27B: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D28D 07:D27D: FE        .byte $FE, $FC, $FC, $F8, $F8, $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01D298 07:D288: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D29A 07:D28A: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01D2A0 07:D290: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D2A2 07:D292: F3        .byte $F3, $F7, $E7, $E7, $C7, $C3, $83, $81, $F0, $F0, $E0, $E0, $C0, $C0, $80, $80   ; 
- D 2 - I - 0x01D2B2 07:D2A2: FE        .byte $FE, $FE, $8E, $FC, $FC, $FC, $88, $F8, $FE, $8E, $8E, $FC, $FC, $8C, $88, $F8   ; 
- D 2 - I - 0x01D2C2 07:D2B2: FF        .byte $FF, $FE, $F8, $00, $03   ; 

- D 2 - I - 0x01D2C7 07:D2B7: 32        .byte $32, $04   ; control byte for FF + counter

- D 2 - I - 0x01D2C9 07:D2B9: FE        .byte $FE, $F8, $00, $03   ; 

- D 2 - I - 0x01D2CD 07:D2BD: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D2CF 07:D2BF: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D2D1 07:D2C1: 01        .byte $01, $03, $04, $0B   ; 

- D 2 - I - 0x01D2D5 07:D2C5: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D2D7 07:D2C7: 01        .byte $01, $02, $07, $0C   ; 

- D 2 - I - 0x01D2DB 07:D2CB: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D2DD 07:D2CD: 80        .byte $80, $40, $A0, $50   ; 

- D 2 - I - 0x01D2E1 07:D2D1: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D2E3 07:D2D3: 80        .byte $80, $C0, $60, $30   ; 

- D 2 - I - 0x01D2E7 07:D2D7: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D2E9 07:D2D9: FE        .byte $FE, $FF, $FD, $FD, $FB, $FB   ; 

- D 2 - I - 0x01D2EF 07:D2DF: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D2F1 07:D2E1: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8, $00, $E0, $C0, $C0, $80, $80   ; 

- D 2 - I - 0x01D2FD 07:D2ED: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D2FF 07:D2EF: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01D305 07:D2F5: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D307 07:D2F7: 01        .byte $01, $01, $01, $01, $03, $03, $03, $03   ; 

- D 2 - I - 0x01D30F 07:D2FF: 32        .byte $32, $08   ; control byte for FF + counter

- D 2 - I - 0x01D311 07:D301: F0        .byte $F0, $E0, $E0, $C0, $C6, $89, $84, $0B, $F0, $E7, $EF, $CF, $C9, $94, $92, $20   ; 

- D 2 - I - 0x01D321 07:D311: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D323 07:D313: 55        .byte $55, $C9, $B4, $4B, $00   ; 

- D 2 - I - 0x01D328 07:D318: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D32A 07:D31A: 22        .byte $22, $14, $42, $A0   ; 

- D 2 - I - 0x01D32E 07:D31E: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D330 07:D320: 55        .byte $55, $C9, $B5, $4B, $00   ; 

- D 2 - I - 0x01D335 07:D325: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D337 07:D327: 22        .byte $22, $14, $43, $A0   ; 

- D 2 - I - 0x01D33B 07:D32B: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D33D 07:D32D: DD        .byte $DD, $EB, $BD, $5F, $00   ; 

- D 2 - I - 0x01D342 07:D332: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D344 07:D334: AA        .byte $AA, $36, $CB, $B4   ; 

- D 2 - I - 0x01D348 07:D338: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D34A 07:D33A: DD        .byte $DD, $E9, $B4, $5B, $00   ; 

- D 2 - I - 0x01D34F 07:D33F: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D351 07:D341: AA        .byte $AA, $34, $42, $B0   ; 

- D 2 - I - 0x01D355 07:D345: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D357 07:D347: 54        .byte $54, $C8, $B0, $40, $00   ; 

- D 2 - I - 0x01D35C 07:D34C: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D35E 07:D34E: 23        .byte $23, $17, $47, $AF   ; 

- D 2 - I - 0x01D362 07:D352: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D364 07:D354: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x01D36A 07:D35A: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D36C 07:D35C: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x01D372 07:D362: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D374 07:D364: 01        .byte $01, $02, $07, $05   ; 

- D 2 - I - 0x01D378 07:D368: 29        .byte $29, $05   ; control byte for 00 + counter

- D 2 - I - 0x01D37A 07:D36A: 01        .byte $01, $02, $0F, $0A, $1F, $7D, $57, $EF, $BE, $DF, $F5, $17, $34, $42, $BD, $98   ; 
- D 2 - I - 0x01D38A 07:D37A: 63        .byte $63, $B4, $4B, $E0, $D8, $7E, $DA, $F7, $BD, $DB, $FF, $58, $BC, $C2, $3D, $89   ; 
- D 2 - I - 0x01D39A 07:D38A: 66        .byte $66, $BD, $42   ; 

- D 2 - I - 0x01D39D 07:D38D: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D39F 07:D38F: 80        .byte $80, $40, $E0, $A0   ; 

- D 2 - I - 0x01D3A3 07:D393: 29        .byte $29, $05   ; control byte for 00 + counter

- D 2 - I - 0x01D3A5 07:D395: 80        .byte $80, $40, $E0, $00, $40, $48, $09, $21, $22, $0A, $08, $40, $48, $09, $21, $22   ; 
- D 2 - I - 0x01D3B5 07:D3A5: 0A        .byte $0A, $08   ; 

- D 2 - I - 0x01D3B7 07:D3A7: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D3B9 07:D3A9: 3C        .byte $3C, $13, $2C, $57, $08, $34, $00, $35, $42, $68, $42, $A0, $D5, $8A, $FF, $00   ; 
- D 2 - I - 0x01D3C9 07:D3B9: BC        .byte $BC, $D3, $2C, $37, $C8, $B4, $00, $55, $02, $28, $92, $40, $15, $42, $FF, $02   ; 
- D 2 - I - 0x01D3D9 07:D3C9: BD        .byte $BD, $D7, $2D, $3F, $CA, $BD, $00, $57, $03, $2C, $93, $48, $17, $4B, $FF, $A6   ; 
- D 2 - I - 0x01D3E9 07:D3D9: FD        .byte $FD, $D7, $7D, $FF, $EB, $FD, $00, $FB, $4B, $2C, $D3, $88, $36, $4B, $FF, $A0   ; 
- D 2 - I - 0x01D3F9 07:D3E9: FC        .byte $FC, $D3, $6C, $B7, $C8, $B4, $00, $F5, $42, $28, $D2, $C0, $15, $42, $FF, $10   ; 
- D 2 - I - 0x01D409 07:D3F9: A1        .byte $A1, $A3, $07, $4F, $9F, $BF, $7F, $4F, $1E, $5D, $BB, $37, $6F, $5F, $BF, $F0   ; 
- D 2 - I - 0x01D419 07:D409: F0        .byte $F0, $E0, $E0, $C0, $C0, $80, $80, $F0, $F0, $E0, $E0, $C0, $C0, $80, $80, $02   ; 
- D 2 - I - 0x01D429 07:D419: 1F        .byte $1F, $7D, $57, $EF, $BE, $DF, $F5, $17, $34, $42, $BD, $98, $63, $B4, $4B, $42   ; 
- D 2 - I - 0x01D439 07:D429: DF        .byte $DF, $7D, $D7, $FF, $BE, $DF, $F5, $57, $B4, $C2, $3D, $88, $63, $B4, $4B, $4B   ; 
- D 2 - I - 0x01D449 07:D439: DF        .byte $DF, $7A, $DF, $FB, $B5, $DF, $FD, $56, $B9, $C7, $34, $8E, $6A, $B9, $46, $60   ; 
- D 2 - I - 0x01D459 07:D449: E0        .byte $E0, $E0, $80, $40, $80, $80, $00, $A0, $40, $00, $C0, $83, $8F, $3F, $FF   ; 

- D 2 - I - 0x01D468 07:D458: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D46A 07:D45A: 80        .byte $80, $8F, $BF, $C0   ; 

- D 2 - I - 0x01D46E 07:D45E: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D470 07:D460: 3F        .byte $3F, $FF, $7F, $70, $40, $00, $47, $DA, $7E, $D7, $FD, $B1, $D8, $F1, $58, $BF   ; 
- D 2 - I - 0x01D480 07:D470: C5        .byte $C5, $38, $8A, $6E, $B7, $4E, $03, $0C, $30, $40, $40, $80, $80, $00, $FC, $F0   ; 
- D 2 - I - 0x01D490 07:D480: C0        .byte $C0, $80, $80   ; 

- D 2 - I - 0x01D493 07:D483: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D495 07:D485: 4B        .byte $4B, $DF, $7A, $DF, $FB, $B5, $D7, $F5, $56, $B9, $C7, $34, $8E, $62, $B1, $46   ; 
- D 2 - I - 0x01D4A5 07:D495: 71        .byte $71, $E2, $E2, $84, $44, $88, $88, $10, $AE, $5C, $1C, $F8, $B8, $F0, $70, $E0   ; 

- D 2 - I - 0x01D4B5 07:D4A5: 29        .byte $29, $0B   ; control byte for 00 + counter

- D 2 - I - 0x01D4B7 07:D4A7: 01        .byte $01, $02, $04, $08, $08   ; 

- D 2 - I - 0x01D4BC 07:D4AC: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D4BE 07:D4AE: 06        .byte $06, $1C, $3C, $78, $F8, $F1   ; 

- D 2 - I - 0x01D4C4 07:D4B4: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D4C6 07:D4B6: 67        .byte $67, $9F, $3F, $7F, $FF, $FE   ; 

- D 2 - I - 0x01D4CC 07:D4BC: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D4CE 07:D4BE: 30        .byte $30, $9C, $9E, $9F   ; 

- D 2 - I - 0x01D4D2 07:D4C2: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D4D4 07:D4C4: 80        .byte $80, $F0, $7C, $6E, $6F   ; 

- D 2 - I - 0x01D4D9 07:D4C9: 29        .byte $29, $0E   ; control byte for 00 + counter

- D 2 - I - 0x01D4DB 07:D4CB: 20        .byte $20, $10, $01, $01, $03, $03, $07, $07, $0F, $0F, $11, $11, $23, $23, $47, $47   ; 
- D 2 - I - 0x01D4EB 07:D4DB: 8F        .byte $8F, $8F, $F1, $E2, $E2, $F4, $D4, $98, $88, $10, $FE, $FC, $FC, $C8, $E8, $E0   ; 
- D 2 - I - 0x01D4FB 07:D4EB: F0        .byte $F0, $E0   ; 

- D 2 - I - 0x01D4FD 07:D4ED: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D4FF 07:D4EF: 10        .byte $10, $10, $00, $20, $22, $02, $00, $10, $10, $00, $20, $22, $02   ; 

- D 2 - I - 0x01D50C 07:D4FC: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D50E 07:D4FE: 3F        .byte $3F, $5A, $7E, $12, $FC, $F8   ; 

- D 2 - I - 0x01D514 07:D504: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D516 07:D506: 38        .byte $38, $35, $70, $6C, $E0, $C4, $00, $01, $33, $31   ; 

- D 2 - I - 0x01D520 07:D510: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D522 07:D512: 3F        .byte $3F, $30, $0F, $3F, $4F, $4F, $7F, $7F   ; 

- D 2 - I - 0x01D52A 07:D51A: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D52C 07:D51C: 08        .byte $08, $08, $88, $08, $08, $08, $F8, $60, $F0, $F0, $F0, $F0, $F0, $F0   ; 

- D 2 - I - 0x01D53A 07:D52A: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D53C 07:D52C: 1F        .byte $1F, $3F, $3F, $7F, $7F   ; 

- D 2 - I - 0x01D541 07:D531: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D543 07:D533: EF        .byte $EF, $DF, $DF, $BF, $BF, $7F, $7F, $FF, $00, $80, $80, $80, $80, $80   ; 

- D 2 - I - 0x01D551 07:D541: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D553 07:D543: 10        .byte $10, $88, $88, $88, $88, $88, $10, $10   ; 

- D 2 - I - 0x01D55B 07:D54B: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D55D 07:D54D: 01        .byte $01, $01, $02, $02, $04, $04, $08, $08, $1F, $1E, $3E, $3C, $7C, $78, $F8, $F1   ; 
- D 2 - I - 0x01D56D 07:D55D: 1F        .byte $1F, $1F, $3F, $3F, $7F, $7F, $FF, $FE, $01, $03, $03, $37, $17, $1F, $0F, $1F   ; 
- D 2 - I - 0x01D57D 07:D56D: 0E        .byte $0E, $1D, $1D, $0B, $2B, $67, $77, $EF   ; 

- D 2 - I - 0x01D585 07:D575: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D587 07:D577: 10        .byte $10, $20, $20, $20, $40, $40, $80, $80, $00, $08, $0A, $22, $21, $09, $48, $40   ; 
- D 2 - I - 0x01D597 07:D587: 08        .byte $08, $0A, $22, $21, $09, $48, $40, $00, $F0, $F0, $E0, $E0, $C0, $C0, $80, $80   ; 
- D 2 - I - 0x01D5A7 07:D597: F1        .byte $F1, $F1, $E2, $E2, $C4, $C4, $88, $88, $10, $20, $20, $40, $46, $89, $84, $0B   ; 
- D 2 - I - 0x01D5B7 07:D5A7: E0        .byte $E0, $C7, $CF, $8F, $89, $14, $12, $20, $00, $02, $02, $04, $54, $C8, $B8, $48   ; 
- D 2 - I - 0x01D5C7 07:D5B7: 00        .byte $00, $FC, $FC, $FA, $22, $16, $46, $A6   ; 

- D 2 - I - 0x01D5CF 07:D5BF: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D5D1 07:D5C1: 06        .byte $06, $09, $04, $0B, $00, $07, $0F, $0F, $09, $14, $12, $20   ; 

- D 2 - I - 0x01D5DD 07:D5CD: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D5DF 07:D5CF: 10        .byte $10, $10, $20, $20, $40, $40, $80, $80, $01, $03, $03, $36, $15, $1F, $0E, $1B   ; 
- D 2 - I - 0x01D5EF 07:D5DF: 0E        .byte $0E, $1C, $1D, $08, $2B, $60, $73, $E5, $50, $B0, $D2, $22, $64, $84, $88, $48   ; 
- D 2 - I - 0x01D5FF 07:D5EF: 0E        .byte $0E, $4E, $2C, $9C, $18, $58, $30, $B0, $D1, $DD, $D1, $D7, $D1   ; 

- D 2 - I - 0x01D60C 07:D5FC: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D60E 07:D5FE: 2E        .byte $2E, $22, $2E, $28, $2E   ; 

- D 2 - I - 0x01D613 07:D603: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D615 07:D605: 1E        .byte $1E, $3B, $3D, $77, $75, $CF, $FE, $F5, $E9, $C6, $CA, $95, $AA, $1A, $25, $1B   ; 
- D 2 - I - 0x01D625 07:D615: 1F        .byte $1F, $1E, $1E, $3C, $3C, $38, $38, $11, $1F, $1F, $1F, $3F, $3F, $3F, $3F, $1E   ; 
- D 2 - I - 0x01D635 07:D625: 10        .byte $10, $26, $27, $4F, $4B, $9E, $80, $7F, $E7, $CD, $C9, $92, $94, $2B, $7F   ; 

- D 2 - I - 0x01D644 07:D634: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D646 07:D636: FD        .byte $FD, $D7, $7D, $FF, $EB, $00   ; 

- D 2 - I - 0x01D64C 07:D63C: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D64E 07:D63E: 4B        .byte $4B, $2C, $D3, $88, $36, $FF   ; 

- D 2 - I - 0x01D654 07:D644: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D656 07:D646: 06        .byte $06, $07, $0F, $0B, $1E, $00, $7F, $07, $0D, $09, $12, $14, $2B, $7F   ; 

- D 2 - I - 0x01D664 07:D654: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D666 07:D656: FC        .byte $FC, $D6, $7D, $FD, $EA, $02, $FC, $FF, $4B, $2D, $D2, $8A, $34, $FC, $00, $24   ; 
- D 2 - I - 0x01D676 07:D666: FD        .byte $FD, $D7, $7D, $FF, $EB, $FD, $5F, $75, $4B, $2C, $D3, $88, $36, $4B, $B4   ; 

- D 2 - I - 0x01D685 07:D675: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D687 07:D677: 10        .byte $10, $10, $10, $10, $10, $10, $10, $10   ; 

- D 2 - I - 0x01D68F 07:D67F: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D691 07:D681: 10        .byte $10, $10, $10, $F3, $F3, $00, $03, $07, $EF, $E0, $E3, $04, $04, $00, $1F, $3F   ; 
- D 2 - I - 0x01D6A1 07:D691: 3F        .byte $3F, $7F, $7F, $FC, $E0, $00, $EF, $DF, $DF, $BF, $BF, $7C, $60, $00, $F0, $F0   ; 
- D 2 - I - 0x01D6B1 07:D6A1: E0        .byte $E0, $C0   ; 

- D 2 - I - 0x01D6B3 07:D6A3: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D6B5 07:D6A5: F1        .byte $F1, $F1, $E2, $C2, $04, $04, $08, $08   ; 

- D 2 - I - 0x01D6BD 07:D6AD: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D6BF 07:D6AF: 08        .byte $08, $04, $02, $01   ; 

- D 2 - I - 0x01D6C3 07:D6B3: 29        .byte $29, $10   ; control byte for 00 + counter

- D 2 - I - 0x01D6C5 07:D6B5: C0        .byte $C0, $30, $0C, $03   ; 

- D 2 - I - 0x01D6C9 07:D6B9: 29        .byte $29, $0F   ; control byte for 00 + counter

- D 2 - I - 0x01D6CB 07:D6BB: 80        .byte $80   ; 

- D 2 - I - 0x01D6CC 07:D6BC: 29        .byte $29, $0D   ; control byte for 00 + counter

- D 2 - I - 0x01D6CE 07:D6BE: 01        .byte $01, $06, $18   ; 

- D 2 - I - 0x01D6D1 07:D6C1: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D6D3 07:D6C3: 10        .byte $10, $10, $20, $40, $80   ; 

- D 2 - I - 0x01D6D8 07:D6C8: 29        .byte $29, $0B   ; control byte for 00 + counter

- D 2 - I - 0x01D6DA 07:D6CA: 70        .byte $70, $0F   ; 

- D 2 - I - 0x01D6DC 07:D6CC: 29        .byte $29, $0F   ; control byte for 00 + counter

- D 2 - I - 0x01D6DE 07:D6CE: FF        .byte $FF   ; 

- D 2 - I - 0x01D6DF 07:D6CF: 29        .byte $29, $06   ; control byte for 00 + counter

- D 2 - I - 0x01D6E1 07:D6D1: 05        .byte $05, $0A, $14, $0A, $14, $28, $50, $28, $0A, $F5, $0A, $14, $28, $14, $28, $50   ; 

- D 2 - I - 0x01D6F1 07:D6E1: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D6F3 07:D6E3: E0        .byte $E0   ; 

- D 2 - I - 0x01D6F4 07:D6E4: 29        .byte $29, $0C   ; control byte for 00 + counter

- D 2 - I - 0x01D6F6 07:D6E6: 08        .byte $08, $11, $13   ; 

- D 2 - I - 0x01D6F9 07:D6E9: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D6FB 07:D6EB: 01        .byte $01, $03, $07, $07, $0E, $0D   ; 

- D 2 - I - 0x01D701 07:D6F1: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D703 07:D6F3: 80        .byte $80, $80, $80   ; 

- D 2 - I - 0x01D706 07:D6F6: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D708 07:D6F8: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D70A 07:D6FA: 7F        .byte $7F, $7F, $7F   ; 

- D 2 - I - 0x01D70D 07:D6FD: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D70F 07:D6FF: FF        .byte $FF   ; 

- D 2 - I - 0x01D710 07:D700: 29        .byte $29, $05   ; control byte for 00 + counter

- D 2 - I - 0x01D712 07:D702: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D714 07:D704: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D716 07:D706: 32        .byte $32, $03   ; control byte for FF + counter

- D 2 - I - 0x01D718 07:D708: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D71A 07:D70A: FF        .byte $FF, $13, $19, $0C, $0E, $07, $03, $01, $00, $0D, $07, $03, $01   ; 

- D 2 - I - 0x01D727 07:D717: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D729 07:D719: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D72B 07:D71B: 80        .byte $80, $80, $80   ; 

- D 2 - I - 0x01D72E 07:D71E: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D730 07:D720: 00        .byte $00   ; 

- D 2 - I - 0x01D731 07:D721: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D733 07:D723: 7F        .byte $7F, $7F, $7F   ; 

- D 2 - I - 0x01D736 07:D726: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D738 07:D728: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D73A 07:D72A: 01        .byte $01, $01, $01   ; 

- D 2 - I - 0x01D73D 07:D72D: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D73F 07:D72F: 00        .byte $00   ; 

- D 2 - I - 0x01D740 07:D730: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D742 07:D732: FE        .byte $FE, $FE, $FE   ; 

- D 2 - I - 0x01D745 07:D735: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D747 07:D737: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D749 07:D739: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D74B 07:D73B: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D74D 07:D73D: 00        .byte $00   ; 

- D 2 - I - 0x01D74E 07:D73E: 32        .byte $32, $05   ; control byte for FF + counter

- D 2 - I - 0x01D750 07:D740: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D752 07:D742: 5F        .byte $5F, $76, $DC, $F8, $F0, $E0, $C0, $80, $64, $99, $A3, $57, $0F, $5F, $3F, $7F   ; 
- D 2 - I - 0x01D762 07:D752: 70        .byte $70, $38, $DC, $5E, $B7, $AB, $1B, $D4, $0C, $86, $83, $F1, $20, $DC, $B2, $8A   ; 

- D 2 - I - 0x01D772 07:D762: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D774 07:D764: 1E        .byte $1E, $11, $3B, $2B   ; 

- D 2 - I - 0x01D778 07:D768: 29        .byte $29, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D77A 07:D76A: 1F        .byte $1F, $21, $22, $44, $44, $17, $1B, $17, $2A, $55, $F7, $4E, $6B, $6A, $E6, $E5   ; 
- D 2 - I - 0x01D78A 07:D77A: D8        .byte $D8, $8B, $54, $23, $C5   ; 

- D 2 - I - 0x01D78F 07:D77F: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D791 07:D781: 32        .byte $32, $08   ; control byte for FF + counter

- D 2 - I - 0x01D793 07:D783: 05        .byte $05, $FD, $8B, $8B, $8F, $8D, $8D, $F9, $FA, $02, $54, $54, $20, $50, $50, $00   ; 
- D 2 - I - 0x01D7A3 07:D793: 14        .byte $14, $1A, $12, $24, $59, $8C, $23, $58, $68, $E2, $E9, $C4, $93, $18, $66, $0A   ; 
- D 2 - I - 0x01D7B3 07:D7A3: A4        .byte $A4, $FD, $D7, $7D, $FF, $EB, $FD, $5F, $F5, $4B, $2C, $D3, $88, $36, $4B, $B4   ; 
- D 2 - I - 0x01D7C3 07:D7B3: 9B        .byte $9B, $6D, $76, $CE, $EB, $BC, $B0, $C0, $C8, $33, $44, $2A, $B0, $53, $8F, $3F   ; 
- D 2 - I - 0x01D7D3 07:D7C3: 6B        .byte $6B, $6C, $B0, $C0   ; 

- D 2 - I - 0x01D7D7 07:D7C7: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D7D9 07:D7C9: A0        .byte $A0, $43, $0F, $3F   ; 

- D 2 - I - 0x01D7DD 07:D7CD: 32        .byte $32, $04   ; control byte for FF + counter

- D 2 - I - 0x01D7DF 07:D7CF: 01        .byte $01, $03, $05, $09, $11, $31, $51, $91, $FE, $FC, $FA, $F6, $EE, $CE, $AE, $6E   ; 
- D 2 - I - 0x01D7EF 07:D7DF: CA        .byte $CA, $BA, $6D, $73, $D7, $3D, $0D, $03, $56, $C9, $23, $54, $0D, $CA, $F1, $FC   ; 
- D 2 - I - 0x01D7FF 07:D7EF: 3F        .byte $3F, $5F, $47, $28, $D9, $47, $BC, $21, $00, $50, $94, $22, $A9, $52, $55, $28   ; 
- D 2 - I - 0x01D80F 07:D7FF: 00        .byte $00, $C0, $F1, $FD, $3F, $4F, $BB, $40, $F0, $3C, $0E, $02, $80, $50, $A8, $14   ; 
- D 2 - I - 0x01D81F 07:D80F: A9        .byte $A9, $A9, $A9, $A9, $A9   ; 

- D 2 - I - 0x01D824 07:D814: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D826 07:D816: A9        .byte $A9   ; 

- D 2 - I - 0x01D827 07:D817: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D829 07:D819: 56        .byte $56, $56, $56   ; 

- D 2 - I - 0x01D82C 07:D81C: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D82E 07:D81E: 80        .byte $80, $83, $8F, $B1, $C0, $1A, $04, $3F, $7F, $7C, $73, $40, $04, $0B, $20, $30   ; 
- D 2 - I - 0x01D83E 07:D82E: CE        .byte $CE, $61, $14, $0B, $E6, $1A, $45, $C2, $04, $49, $14, $40, $A3, $0C, $15, $11   ; 
- D 2 - I - 0x01D84E 07:D83E: 11        .byte $11, $11, $11, $11, $11, $11, $11, $EE, $EE, $EE, $EE, $EE, $EE, $EE, $EE, $D6   ; 
- D 2 - I - 0x01D85E 07:D84E: 36        .byte $36, $0D, $03   ; 

- D 2 - I - 0x01D861 07:D851: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D863 07:D853: 05        .byte $05, $C2, $F0, $FC   ; 

- D 2 - I - 0x01D867 07:D857: 32        .byte $32, $04   ; control byte for FF + counter

- D 2 - I - 0x01D869 07:D859: A9        .byte $A9, $A9, $A9, $88, $88, $88   ; 

- D 2 - I - 0x01D86F 07:D85F: 29        .byte $29, $0A   ; control byte for 00 + counter

- D 2 - I - 0x01D871 07:D861: 10        .byte $10, $10, $27, $21, $40, $40, $80, $80, $0F, $0F, $18, $1E, $3F, $3F, $7F, $7F   ; 
- D 2 - I - 0x01D881 07:D871: 00        .byte $00, $06, $EF, $FC, $F8, $70, $D0, $A0, $FF, $F9, $10, $03, $07, $8F, $2F, $5F   ; 
- D 2 - I - 0x01D891 07:D881: 00        .byte $00, $3F, $0C, $18, $18, $30, $30, $00, $FF, $C0, $F3, $E7, $E7, $CF, $CF, $FF   ; 
- D 2 - I - 0x01D8A1 07:D891: 00        .byte $00, $3C, $36, $66, $78, $CC, $CC, $00, $FF, $C3, $C9, $99, $87, $33, $33, $FF   ; 
- D 2 - I - 0x01D8B1 07:D8A1: 00        .byte $00, $06, $0E, $1E, $36, $7E, $C6, $00, $FF, $F9, $F1, $E1, $C9, $81, $39, $FF   ; 
- D 2 - I - 0x01D8C1 07:D8B1: 00        .byte $00, $1E, $1B, $33, $36, $66, $7C, $00, $FF, $E1, $E4, $CC, $C9, $99, $83, $FF   ; 
- D 2 - I - 0x01D8D1 07:D8C1: 00        .byte $00, $1F, $18, $3E, $30, $60, $7E, $00, $FF, $E0, $E7, $C1, $CF, $9F, $81, $FF   ; 
- D 2 - I - 0x01D8E1 07:D8D1: 00        .byte $00, $61, $61, $6B, $7F, $76, $66, $00, $FF, $9E, $9E, $94, $80, $89, $99, $FF   ; 
- D 2 - I - 0x01D8F1 07:D8E1: 00        .byte $00, $9F, $98, $3E, $30, $60, $7E, $00, $FF, $60, $67, $C1, $CF, $9F, $81, $FF   ; 
- D 2 - I - 0x01D901 07:D8F1: 00        .byte $00, $1E, $31, $1C, $06, $66, $3C, $00, $FF, $E1, $CE, $E3, $F9, $99, $C3, $FF   ; 

- D 2 - I - 0x01D911 07:D901: 29        .byte $29, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D913 07:D903: 01        .byte $01, $01, $03, $03, $07, $07   ; 

- D 2 - I - 0x01D919 07:D909: 32        .byte $32, $02   ; control byte for FF + counter

- D 2 - I - 0x01D91B 07:D90B: FE        .byte $FE, $FE, $FC, $FC, $F8, $F8   ; 

- D 2 - I - 0x01D921 07:D911: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D923 07:D913: 03        .byte $03, $0C, $38, $C8   ; 

- D 2 - I - 0x01D927 07:D917: 32        .byte $32, $04   ; control byte for FF + counter

- D 2 - I - 0x01D929 07:D919: FC        .byte $FC, $F3, $C7, $37, $03, $0D, $39, $C9, $89, $89, $89, $89, $FC, $F2, $C6, $36   ; 
- D 2 - I - 0x01D939 07:D929: 76        .byte $76, $76, $76, $76   ; 

- D 2 - I - 0x01D93D 07:D92D: 29        .byte $29, $04   ; control byte for 00 + counter

- D 2 - I - 0x01D93F 07:D92F: C0        .byte $C0, $30, $1C, $13   ; 

- D 2 - I - 0x01D943 07:D933: 32        .byte $32, $04   ; control byte for FF + counter

- D 2 - I - 0x01D945 07:D935: 3F        .byte $3F, $CF, $E3, $EC, $FF   ; 

- D 2 - I - 0x01D94A 07:D93A: 29        .byte $29, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D94C 07:D93C: 32        .byte $32, $07   ; control byte for FF + counter

- D 2 - I - 0x01D94E 07:D93E: 0F        .byte $0F   ; 

- D 2 - I - 0x01D94F 07:D93F: 29        .byte $29, $07   ; control byte for 00 + counter

- D 2 - I - 0x01D951 07:D941: F0        .byte $F0   ; 

- D 2 - I - 0x01D952 07:D942: 32        .byte $32, $07   ; control byte for FF + counter

- D 2 - I - 0x01D954 07:D944: 03        .byte $03, $0C, $38, $C8, $88, $88, $88, $88, $FC, $F3, $C7, $37, $77, $77, $77, $77   ; 
- D 2 - I - 0x01D964 07:D954: 88        .byte $88, $88, $88, $88, $88, $88, $88, $88, $77, $77, $77, $77, $77, $77, $77, $77   ; 
- D 2 - I - 0x01D974 07:D964: 89        .byte $89, $89, $89, $89, $89, $89, $89, $89, $76, $76, $76, $76, $76, $76, $76, $76   ; 
- D 2 - I - 0x01D984 07:D974: 11        .byte $11, $13, $17, $1F, $1F, $3F, $7F, $FF, $EE, $EC, $E8, $E0, $E0, $C0, $80, $00   ; 



off_06_07_D984:
- D 2 - I - 0x01D994 07:D984: 25        .byte $25   ; prepare control byte for 00
- D 2 - I - 0x01D995 07:D985: 2A        .byte $2A   ; prepare control byte for FF

- D 2 - I - 0x01D996 07:D986: 25        .byte $25, $10   ; control byte for 00 + counter

- D 2 - I - 0x01D998 07:D988: BF        .byte $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF   ; normal bytes

- D 2 - I - 0x01D9A0 07:D990: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01D9A2 07:D992: 01        .byte $01   ; 

- D 2 - I - 0x01D9A3 07:D993: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D9A5 07:D995: 01        .byte $01, $01   ; 

- D 2 - I - 0x01D9A7 07:D997: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01D9A9 07:D999: FE        .byte $FE, $FF, $FC, $F1, $E9, $C3   ; 

- D 2 - I - 0x01D9AF 07:D99F: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D9B1 07:D9A1: 06        .byte $06, $3F, $7F, $7F, $FF, $FE   ; 

- D 2 - I - 0x01D9B7 07:D9A7: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01D9B9 07:D9A9: 7F        .byte $7F, $9F, $6F, $57, $CB, $87   ; 

- D 2 - I - 0x01D9BF 07:D9AF: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01D9C1 07:D9B1: 04        .byte $04, $84, $E1, $F0, $F8, $FE   ; 

- D 2 - I - 0x01D9C7 07:D9B7: 2A        .byte $2A, $08   ; control byte for FF + counter

- D 2 - I - 0x01D9C9 07:D9B9: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01D9CB 07:D9BB: 74        .byte $74, $00, $E0   ; 

- D 2 - I - 0x01D9CE 07:D9BE: 2A        .byte $2A, $08   ; control byte for FF + counter

- D 2 - I - 0x01D9D0 07:D9C0: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01D9D2 07:D9C2: BF        .byte $BF, $BE, $BE, $BE, $BE, $BE, $BC, $BC, $03, $03, $03, $07, $07, $07, $07, $07   ; 
- D 2 - I - 0x01D9E2 07:D9D2: 01        .byte $01, $FE, $FE, $1C, $71, $FE, $FE, $00, $FF, $FE, $FE, $1C, $F0, $FE, $FE, $00   ; 
- D 2 - I - 0x01D9F2 07:D9E2: 83        .byte $83, $FD, $E6, $EE, $EE, $EE, $7C, $81, $7E, $7C, $E6, $E6, $E6, $E6, $7C, $00   ; 
- D 2 - I - 0x01DA02 07:D9F2: FF        .byte $FF, $FD, $E6, $EE, $EE, $EE, $7C, $81, $00, $7C, $E6, $E6, $E6, $E6, $7C, $00   ; 
- D 2 - I - 0x01DA12 07:DA02: FF        .byte $FF, $DE, $EE, $FE, $D6, $C6, $DE, $18, $00, $C6, $EE, $FE, $D6, $C6, $C6, $00   ; 
- D 2 - I - 0x01DA22 07:DA12: BE        .byte $BE, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $07, $07, $02, $03, $03, $01, $01, $04   ; 
- D 2 - I - 0x01DA32 07:DA22: 1B        .byte $1B, $0D, $E5, $C2, $86, $C0, $C0, $F2, $F8, $FC, $FC, $FE   ; 

- D 2 - I - 0x01DA3E 07:DA2E: 2A        .byte $2A, $04   ; control byte for FF + counter

- D 2 - I - 0x01DA40 07:DA30: E2        .byte $E2, $E6, $E2, $C6, $C5, $49, $4D, $0B, $7E, $3E, $FE, $FE, $FC, $FC, $FC, $F8   ; 

- D 2 - I - 0x01DA50 07:DA40: 2A        .byte $2A, $08   ; control byte for FF + counter

- D 2 - I - 0x01DA52 07:DA42: 00        .byte $00, $78   ; 

- D 2 - I - 0x01DA54 07:DA44: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DA56 07:DA46: 3A        .byte $3A, $00, $70, $00, $BF, $BF, $BF, $BF, $BF, $BF, $BF   ; 

- D 2 - I - 0x01DA61 07:DA51: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DA63 07:DA53: F2        .byte $F2   ; 

- D 2 - I - 0x01DA64 07:DA54: 2A        .byte $2A, $06   ; control byte for FF + counter

- D 2 - I - 0x01DA66 07:DA56: 00        .byte $00, $FF, $7F, $3B, $0C, $01   ; 

- D 2 - I - 0x01DA6C 07:DA5C: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DA6E 07:DA5E: 1B        .byte $1B, $37, $EF, $9F, $7F   ; 

- D 2 - I - 0x01DA73 07:DA63: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DA75 07:DA65: 00        .byte $00, $F8, $F1, $E2, $80   ; 

- D 2 - I - 0x01DA7A 07:DA6A: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DA7C 07:DA6C: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DA7E 07:DA6E: 00        .byte $00, $80   ; 

- D 2 - I - 0x01DA80 07:DA70: 25        .byte $25, $07   ; control byte for 00 + counter

- D 2 - I - 0x01DA82 07:DA72: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DA84 07:DA74: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DA86 07:DA76: BF        .byte $BF, $BF, $BF, $BF, $BF, $BC, $B9, $BC   ; 

- D 2 - I - 0x01DA8E 07:DA7E: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DA90 07:DA80: 01        .byte $01, $00   ; 

- D 2 - I - 0x01DA92 07:DA82: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DA94 07:DA84: F8        .byte $F8, $E7, $1C, $F0, $81, $0A   ; 

- D 2 - I - 0x01DA9A 07:DA8A: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DA9C 07:DA8C: 07        .byte $07, $1C, $F0, $80, $00   ; 

- D 2 - I - 0x01DAA1 07:DA91: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DAA3 07:DA93: F1        .byte $F1, $A2, $28, $29, $26, $A4   ; 

- D 2 - I - 0x01DAA9 07:DA99: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DAAB 07:DA9B: F0        .byte $F0, $A0, $28, $28, $24, $24   ; 

- D 2 - I - 0x01DAB1 07:DAA1: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DAB3 07:DAA3: 44        .byte $44, $10, $40, $80   ; 

- D 2 - I - 0x01DAB7 07:DAA7: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DAB9 07:DAA9: 0C        .byte $0C   ; 

- D 2 - I - 0x01DABA 07:DAAA: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DABC 07:DAAC: 17        .byte $17, $0B, $05, $03   ; 

- D 2 - I - 0x01DAC0 07:DAB0: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DAC2 07:DAB2: 0C        .byte $0C, $26, $23, $10, $08, $04   ; 

- D 2 - I - 0x01DAC8 07:DAB8: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DACA 07:DABA: 81        .byte $81, $C1, $E1, $81, $01, $01   ; 

- D 2 - I - 0x01DAD0 07:DAC0: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DAD2 07:DAC2: 1E        .byte $1E, $0E, $0E, $1E, $3E, $7E, $B9, $B4, $BA, $A5, $B2, $A8, $B3, $A8, $01   ; 

- D 2 - I - 0x01DAE1 07:DAD1: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DAE3 07:DAD3: 03        .byte $03, $00, $94, $61, $9C, $43, $28, $10, $80, $60, $80, $60, $1C, $03   ; 

- D 2 - I - 0x01DAF1 07:DAE1: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DAF3 07:DAE3: 80        .byte $80, $63, $24, $94, $12, $12, $D2, $39, $0B, $02, $24, $14, $12, $12, $D2, $39   ; 
- D 2 - I - 0x01DB03 07:DAF3: CB        .byte $CB, $E2   ; 

- D 2 - I - 0x01DB05 07:DAF5: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DB07 07:DAF7: F0        .byte $F0, $88, $34, $7C, $3E, $FF, $7F, $0F, $F7, $8B, $35, $7D   ; 

- D 2 - I - 0x01DB13 07:DB03: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DB15 07:DB05: 03        .byte $03, $01, $80, $C1, $E7   ; 

- D 2 - I - 0x01DB1A 07:DB0A: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DB1C 07:DB0C: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE   ; 
- D 2 - I - 0x01DB2C 07:DB1C: B4        .byte $B4, $AA, $B4, $B0, $A0, $A0, $A0, $A0   ; 

- D 2 - I - 0x01DB34 07:DB24: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DB36 07:DB26: 02        .byte $02, $0F, $18, $06, $01   ; 

- D 2 - I - 0x01DB3B 07:DB2B: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DB3D 07:DB2D: 19        .byte $19, $06, $31, $1C, $CE, $67, $33, $19, $06, $04, $84, $6C, $34, $04, $04, $02   ; 
- D 2 - I - 0x01DB4D 07:DB3D: E6        .byte $E6, $64, $84, $6C, $34, $04, $84, $C2, $66, $DA, $90, $AC, $AC, $A4, $A0, $94   ; 
- D 2 - I - 0x01DB5D 07:DB4D: 67        .byte $67, $DA, $90, $AC, $AC, $A4, $A0, $95   ; 

- D 2 - I - 0x01DB65 07:DB55: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DB67 07:DB57: 2A        .byte $2A, $08   ; control byte for FF + counter

- D 2 - I - 0x01DB69 07:DB59: A0        .byte $A0, $A0, $A0, $A0, $A0, $A0, $BF, $00, $1F, $1F, $1F, $1F, $1F, $1F   ; 

- D 2 - I - 0x01DB77 07:DB67: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DB79 07:DB69: FF        .byte $FF, $00, $8C, $C6, $E3, $F1, $F8, $FC   ; 

- D 2 - I - 0x01DB81 07:DB71: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DB83 07:DB73: 02        .byte $02, $01   ; 

- D 2 - I - 0x01DB85 07:DB75: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DB87 07:DB77: FF        .byte $FF, $00, $DA, $1D, $10, $80   ; 

- D 2 - I - 0x01DB8D 07:DB7D: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DB8F 07:DB7F: 58        .byte $58, $20, $C0, $78   ; 

- D 2 - I - 0x01DB93 07:DB83: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DB95 07:DB85: FF        .byte $FF, $00, $59, $21, $C3, $7F, $07, $1F   ; 

- D 2 - I - 0x01DB9D 07:DB8D: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DB9F 07:DB8F: FF        .byte $FF, $00   ; 

- D 2 - I - 0x01DBA1 07:DB91: 2A        .byte $2A, $06   ; control byte for FF + counter

- D 2 - I - 0x01DBA3 07:DB93: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DBA5 07:DB95: 01        .byte $01, $01, $01, $01, $01, $01, $FF, $00, $FE, $FE, $FE, $FE, $FE, $FE   ; 

- D 2 - I - 0x01DBB3 07:DBA3: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DBB5 07:DBA5: BF        .byte $BF, $BF, $BF, $BB, $B8, $B8, $BC, $BE   ; 

- D 2 - I - 0x01DBBD 07:DBAD: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DBBF 07:DBAF: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DBC1 07:DBB1: 08        .byte $08, $80, $40, $28, $18   ; 

- D 2 - I - 0x01DBC6 07:DBB6: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DBC8 07:DBB8: 57        .byte $57, $2B, $1D, $04, $01   ; 

- D 2 - I - 0x01DBCD 07:DBBD: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DBCF 07:DBBF: 0F        .byte $0F, $03, $00, $40, $18   ; 

- D 2 - I - 0x01DBD4 07:DBC4: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DBD6 07:DBC6: F0        .byte $F0, $FC, $FF, $A7, $FB   ; 

- D 2 - I - 0x01DBDB 07:DBCB: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DBDD 07:DBCD: 08        .byte $08, $80, $C0, $20, $18   ; 

- D 2 - I - 0x01DBE2 07:DBD2: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DBE4 07:DBD4: 71        .byte $71, $1E, $0F, $C7, $01   ; 

- D 2 - I - 0x01DBE9 07:DBD9: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DBEB 07:DBDB: 1F        .byte $1F, $27, $1B, $04, $02   ; 

- D 2 - I - 0x01DBF0 07:DBE0: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DBF2 07:DBE2: C0        .byte $C0, $60, $38, $DC, $EE   ; 

- D 2 - I - 0x01DBF7 07:DBE7: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DBF9 07:DBE9: BF        .byte $BF, $0F, $33, $09, $0D, $0D   ; 

- D 2 - I - 0x01DBFF 07:DBEF: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DC01 07:DBF1: 70        .byte $70, $38, $74, $74, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF   ; 

- D 2 - I - 0x01DC0D 07:DBFD: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DC0F 07:DBFF: 05        .byte $05, $C0, $F0, $FC   ; 

- D 2 - I - 0x01DC13 07:DC03: 2A        .byte $2A, $04   ; control byte for FF + counter

- D 2 - I - 0x01DC15 07:DC05: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DC17 07:DC07: 50        .byte $50, $B0, $50, $11, $31, $F3, $FE, $F8, $33, $17, $1D, $17, $31, $23, $22, $20   ; 
- D 2 - I - 0x01DC27 07:DC17: 44        .byte $44, $C3, $98, $90, $30, $20, $60, $60, $58, $C0, $9B, $F3, $7F, $3F, $63, $40   ; 
- D 2 - I - 0x01DC37 07:DC27: 01        .byte $01, $00, $80, $40, $20   ; 

- D 2 - I - 0x01DC3C 07:DC2C: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DC3E 07:DC2E: F7        .byte $F7, $7F, $1F, $8F, $CF, $C7, $03, $05, $1B, $9B, $5B, $07, $07, $17, $17, $2F   ; 
- D 2 - I - 0x01DC4E 07:DC3E: 28        .byte $28, $A8, $C8, $C0, $E0, $F0, $F0, $E0, $E0, $C0, $80, $80   ; 

- D 2 - I - 0x01DC5A 07:DC4A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DC5C 07:DC4C: 07        .byte $07, $0B, $20   ; 

- D 2 - I - 0x01DC5F 07:DC4F: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DC61 07:DC51: 07        .byte $07, $0B, $0C, $07, $03, $03, $01, $01, $81, $41   ; 

- D 2 - I - 0x01DC6B 07:DC5B: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DC6D 07:DC5D: 03        .byte $03, $02   ; 

- D 2 - I - 0x01DC6F 07:DC5F: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DC71 07:DC61: 80        .byte $80, $40, $60, $C0, $80, $C8, $C4, $C3, $83, $82, $62, $C1, $80, $00, $08, $1D   ; 
- D 2 - I - 0x01DC81 07:DC71: 1D        .byte $1D, $3E, $2F, $4F, $1F, $1F, $3F, $7F, $7F, $7F, $E0, $40, $80   ; 

- D 2 - I - 0x01DC8E 07:DC7E: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DC90 07:DC80: 0C        .byte $0C, $8B, $87, $C0, $E0, $F8, $FF, $00, $0C, $0B, $07   ; 

- D 2 - I - 0x01DC9B 07:DC8B: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DC9D 07:DC8D: C1        .byte $C1, $43, $83, $07, $0F, $3F, $FF, $00, $C0, $40, $80   ; 

- D 2 - I - 0x01DCA8 07:DC98: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DCAA 07:DC9A: 06        .byte $06, $04, $0D, $01, $F1   ; 

- D 2 - I - 0x01DCAF 07:DC9F: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DCB1 07:DCA1: 00        .byte $00, $3A, $1C, $04   ; 

- D 2 - I - 0x01DCB5 07:DCA5: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DCB7 07:DCA7: BF        .byte $BF, $A0, $A0, $A0, $A0, $A0, $A0, $A0, $00, $1F, $1F, $1F, $1F, $1F, $1F, $1F   ; 
- D 2 - I - 0x01DCC7 07:DCB7: FF        .byte $FF   ; 

- D 2 - I - 0x01DCC8 07:DCB8: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DCCA 07:DCBA: 2A        .byte $2A, $05   ; control byte for FF + counter

- D 2 - I - 0x01DCCC 07:DCBC: E0        .byte $E0, $8E, $FF, $00, $07   ; 

- D 2 - I - 0x01DCD1 07:DCC1: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DCD3 07:DCC3: 78        .byte $78, $7C, $00, $F7, $F0, $E0, $98, $3C, $04, $00, $FF, $D0, $F9, $08, $0C, $C1   ; 
- D 2 - I - 0x01DCE3 07:DCD3: 05        .byte $05, $11, $00, $2D   ; 

- D 2 - I - 0x01DCE7 07:DCD7: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DCE9 07:DCD9: E0        .byte $E0, $01, $01, $01, $FF   ; 

- D 2 - I - 0x01DCEE 07:DCDE: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DCF0 07:DCE0: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F, $7F, $FF, $01, $01, $01, $01, $01, $01, $01, $00   ; 
- D 2 - I - 0x01DD00 07:DCF0: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $FE, $A0, $A0, $A0, $A0, $A0, $A0, $A3, $A3, $1F   ; 
- D 2 - I - 0x01DD10 07:DD00: 1E        .byte $1E, $1C, $19, $13, $17, $04, $0C, $04, $02, $13, $1A, $56, $F6, $D2, $C1, $3A   ; 
- D 2 - I - 0x01DD20 07:DD10: 7D        .byte $7D, $EC, $E4, $A1, $01, $01, $02, $7A, $36, $35, $01, $01, $01, $01, $81, $02   ; 
- D 2 - I - 0x01DD30 07:DD20: 06        .byte $06, $04, $02, $72, $72, $72, $32, $F1, $EC, $AA, $A4, $B0, $D8, $D9, $99, $07   ; 
- D 2 - I - 0x01DD40 07:DD30: 02        .byte $02, $04, $01, $01, $00, $01, $01   ; 

- D 2 - I - 0x01DD47 07:DD37: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DD49 07:DD39: 7F        .byte $7F, $7F, $BF, $BF, $3F, $7F, $7F, $7F, $A7, $A7, $A7, $A7, $A3, $A1, $A1, $A0   ; 
- D 2 - I - 0x01DD59 07:DD49: 08        .byte $08, $18, $18, $18, $1C, $0E, $0E, $03, $01, $80   ; 

- D 2 - I - 0x01DD63 07:DD53: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DD65 07:DD55: 80        .byte $80, $C0, $C0, $60, $02, $01, $0D, $1C, $1E, $1F, $0F, $87, $81, $81, $C3, $30   ; 
- D 2 - I - 0x01DD75 07:DD65: 38        .byte $38, $08, $00, $03, $32, $12, $00, $C3, $01, $03, $C0, $F0, $D8, $91, $D3, $03   ; 
- D 2 - I - 0x01DD85 07:DD75: 43        .byte $43, $43, $43, $81   ; 

- D 2 - I - 0x01DD89 07:DD79: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DD8B 07:DD7B: 80        .byte $80, $80   ; 

- D 2 - I - 0x01DD8D 07:DD7D: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DD8F 07:DD7F: 80        .byte $80, $E0, $F8, $78, $78, $00, $C0, $1F, $6F, $17, $7B, $7B, $7B, $07, $37, $A0   ; 
- D 2 - I - 0x01DD9F 07:DD8F: A0        .byte $A0, $A0, $A0, $A0, $A0, $BF, $00, $11, $1C, $1E, $1F, $1F, $1F   ; 

- D 2 - I - 0x01DDAC 07:DD9C: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDAE 07:DD9E: 60        .byte $60, $30, $10, $18   ; 

- D 2 - I - 0x01DDB2 07:DDA2: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDB4 07:DDA4: FF        .byte $FF, $00, $87, $43, $23, $23, $A0, $0F   ; 

- D 2 - I - 0x01DDBC 07:DDAC: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDBE 07:DDAE: 02        .byte $02, $00, $01, $3F, $10, $38, $FF, $00, $F0, $F0, $80, $80, $10, $B8   ; 

- D 2 - I - 0x01DDCC 07:DDBC: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDCE 07:DDBE: 08        .byte $08, $40, $D8, $9E, $26, $23, $FF   ; 

- D 2 - I - 0x01DDD5 07:DDC5: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDD7 07:DDC7: 01        .byte $01   ; 

- D 2 - I - 0x01DDD8 07:DDC8: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDDA 07:DDCA: 20        .byte $20   ; 

- D 2 - I - 0x01DDDB 07:DDCB: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DDDD 07:DDCD: 72        .byte $72, $01, $01, $06, $21, $FF, $00, $01, $F0, $F8, $00, $78, $1E   ; 

- D 2 - I - 0x01DDEA 07:DDDA: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DDEC 07:DDDC: 01        .byte $01, $01, $81, $E1, $71, $99, $FF, $00, $FE, $7E, $06   ; 

- D 2 - I - 0x01DDF7 07:DDE7: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DDF9 07:DDE9: BF        .byte $BF, $BF, $BF, $BF, $BF, $B0, $B7, $B4   ; 

- D 2 - I - 0x01DE01 07:DDF1: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DE03 07:DDF3: 07        .byte $07, $07   ; 

- D 2 - I - 0x01DE05 07:DDF5: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DE07 07:DDF7: FC        .byte $FC, $F9, $FB, $00, $77, $54   ; 

- D 2 - I - 0x01DE0D 07:DDFD: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DE0F 07:DDFF: 01        .byte $01, $03, $00   ; 

- D 2 - I - 0x01DE12 07:DE02: 2A        .byte $2A, $04   ; control byte for FF + counter

- D 2 - I - 0x01DE14 07:DE04: 1F        .byte $1F, $DF, $1F, $7F, $7F, $7F   ; 

- D 2 - I - 0x01DE1A 07:DE0A: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DE1C 07:DE0C: C0        .byte $C0   ; 

- D 2 - I - 0x01DE1D 07:DE0D: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DE1F 07:DE0F: B5        .byte $B5, $B5, $B7, $B0, $B0, $B0, $A0, $B0, $07, $07, $07, $07   ; 

- D 2 - I - 0x01DE2B 07:DE1B: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DE2D 07:DE1D: 77        .byte $77, $51, $57   ; 

- D 2 - I - 0x01DE30 07:DE20: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DE32 07:DE22: 03        .byte $03, $01, $00   ; 

- D 2 - I - 0x01DE35 07:DE25: 2A        .byte $2A, $04   ; control byte for FF + counter

- D 2 - I - 0x01DE37 07:DE27: 00        .byte $00, $3F, $1F, $1F, $7F, $7F, $7F, $7F, $7F   ; 

- D 2 - I - 0x01DE40 07:DE30: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DE42 07:DE32: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DE44 07:DE34: C0        .byte $C0, $F0, $FC, $FF, $FD, $E6, $EE, $EE, $FC, $E1, $0F, $00, $FC, $E6, $E6, $E6   ; 
- D 2 - I - 0x01DE54 07:DE44: FC        .byte $FC, $E0, $00, $FF, $FD, $E6, $E8, $EE, $EE, $7E, $80, $00, $7C, $E6, $E0, $EE   ; 
- D 2 - I - 0x01DE64 07:DE54: E6        .byte $E6, $7E, $00, $B0, $A0, $B0, $B0, $A0, $B0, $B0, $A0   ; 

- D 2 - I - 0x01DE6F 07:DE5F: 25        .byte $25, $10   ; control byte for 00 + counter

- D 2 - I - 0x01DE71 07:DE61: 0F        .byte $0F, $0F, $07, $07, $03, $03, $01, $00, $7F, $3F, $1F, $0F, $07, $03, $01, $00   ; 

- D 2 - I - 0x01DE81 07:DE71: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DE83 07:DE73: 00        .byte $00   ; 

- D 2 - I - 0x01DE84 07:DE74: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DE86 07:DE76: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DE88 07:DE78: C0        .byte $C0, $F8, $FE   ; 

- D 2 - I - 0x01DE8B 07:DE7B: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DE8D 07:DE7D: 00        .byte $00   ; 

- D 2 - I - 0x01DE8E 07:DE7E: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DE90 07:DE80: 07        .byte $07   ; 

- D 2 - I - 0x01DE91 07:DE81: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DE93 07:DE83: 80        .byte $80, $E0, $F0, $00, $B6, $BF, $BF, $BF, $BF, $BF, $BF   ; 

- D 2 - I - 0x01DE9E 07:DE8E: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEA0 07:DE90: 01        .byte $01, $01, $01, $01, $01   ; 

- D 2 - I - 0x01DEA5 07:DE95: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEA7 07:DE97: DB        .byte $DB   ; 

- D 2 - I - 0x01DEA8 07:DE98: 2A        .byte $2A, $06   ; control byte for FF + counter

- D 2 - I - 0x01DEAA 07:DE9A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEAC 07:DE9C: 12        .byte $12, $B2, $52, $12, $12   ; 

- D 2 - I - 0x01DEB1 07:DEA1: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEB3 07:DEA3: 6D        .byte $6D   ; 

- D 2 - I - 0x01DEB4 07:DEA4: 2A        .byte $2A, $06   ; control byte for FF + counter

- D 2 - I - 0x01DEB6 07:DEA6: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEB8 07:DEA8: 43        .byte $43, $42, $43, $42, $73   ; 

- D 2 - I - 0x01DEBD 07:DEAD: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEBF 07:DEAF: B6        .byte $B6   ; 

- D 2 - I - 0x01DEC0 07:DEB0: 2A        .byte $2A, $06   ; control byte for FF + counter

- D 2 - I - 0x01DEC2 07:DEB2: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEC4 07:DEB4: 9C        .byte $9C, $10, $1C, $04, $9C   ; 

- D 2 - I - 0x01DEC9 07:DEB9: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DECB 07:DEBB: DF        .byte $DF   ; 

- D 2 - I - 0x01DECC 07:DEBC: 2A        .byte $2A, $06   ; control byte for FF + counter

- D 2 - I - 0x01DECE 07:DEBE: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DED0 07:DEC0: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DED2 07:DEC2: FE        .byte $FE, $FD, $FD, $FD, $FD, $F9   ; 

- D 2 - I - 0x01DED8 07:DEC8: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DEDA 07:DECA: 01        .byte $01, $01, $01, $01, $01   ; 

- D 2 - I - 0x01DEDF 07:DECF: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DEE1 07:DED1: 80        .byte $80, $0E, $23, $39, $1C, $0E   ; 

- D 2 - I - 0x01DEE7 07:DED7: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DEE9 07:DED9: 80        .byte $80, $0F, $23, $19, $0C, $06   ; 

- D 2 - I - 0x01DEEF 07:DEDF: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DEF1 07:DEE1: 1F        .byte $1F, $0F, $07, $C3, $F0, $78   ; 

- D 2 - I - 0x01DEF7 07:DEE7: 25        .byte $25, $04   ; control byte for 00 + counter

- D 2 - I - 0x01DEF9 07:DEE9: C0        .byte $C0, $F0, $FC, $7C   ; 

- D 2 - I - 0x01DEFD 07:DEED: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DEFF 07:DEEF: 3F        .byte $3F   ; 

- D 2 - I - 0x01DF00 07:DEF0: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DF02 07:DEF2: BF        .byte $BF, $B9, $BA, $BB, $BB, $B1, $B4, $B6   ; 

- D 2 - I - 0x01DF0A 07:DEFA: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DF0C 07:DEFC: 02        .byte $02, $03, $03, $01, $04, $06, $FB, $F2, $F6, $66, $8C, $CD, $F9, $73, $03, $02   ; 
- D 2 - I - 0x01DF1C 07:DF0C: 06        .byte $06, $06, $8C, $CD, $F9, $73, $27, $22, $28, $4A, $AA, $52, $AA, $D4, $23, $20   ; 
- D 2 - I - 0x01DF2C 07:DF1C: 28        .byte $28, $0A, $0A, $02, $82, $C0, $01, $7F, $7F   ; 

- D 2 - I - 0x01DF35 07:DF25: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DF37 07:DF27: 3E        .byte $3E, $41, $28, $01, $7F, $7F   ; 

- D 2 - I - 0x01DF3D 07:DF2D: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DF3F 07:DF2F: 3E        .byte $3E, $41, $08, $BF, $BF, $BF, $0F, $E7, $FB, $20, $D6, $80, $80, $80, $00, $E0   ; 
- D 2 - I - 0x01DF4F 07:DF3F: F8        .byte $F8, $60, $B6   ; 

- D 2 - I - 0x01DF52 07:DF42: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01DF54 07:DF44: 7F        .byte $7F   ; 

- D 2 - I - 0x01DF55 07:DF45: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01DF57 07:DF47: B7        .byte $B7, $BB, $B9, $BC, $BE, $BF, $BF, $BF, $07, $03   ; 

- D 2 - I - 0x01DF61 07:DF51: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DF63 07:DF53: 01        .byte $01, $8C, $FE, $FF, $7E, $3C, $80, $C0, $01, $8C, $FE, $7C, $38   ; 

- D 2 - I - 0x01DF70 07:DF60: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DF72 07:DF62: 6A        .byte $6A, $F4, $59, $33, $16, $04, $04, $05, $60, $F0, $59, $33, $16, $04, $04, $05   ; 
- D 2 - I - 0x01DF82 07:DF72: 12        .byte $12, $0F, $00, $A3, $53, $AB, $70, $1B, $40, $60, $70, $98, $C8, $60, $10, $03   ; 
- D 2 - I - 0x01DF92 07:DF82: 2B        .byte $2B, $10, $03, $00, $18, $3E, $07, $F9, $1B, $08, $00, $08, $16, $39, $06, $F9   ; 
- D 2 - I - 0x01DFA2 07:DF92: 3F        .byte $3F, $1F, $4F, $A7, $17, $2B, $03, $83   ; 

- D 2 - I - 0x01DFAA 07:DF9A: 25        .byte $25, $05   ; control byte for 00 + counter

- D 2 - I - 0x01DFAC 07:DF9C: 80        .byte $80, $80, $40, $F0, $FC, $FC, $FE   ; 

- D 2 - I - 0x01DFB3 07:DFA3: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 2 - I - 0x01DFB5 07:DFA5: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DFB7 07:DFA7: 1C        .byte $1C, $36, $29   ; 

- D 2 - I - 0x01DFBA 07:DFAA: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DFBC 07:DFAC: FF        .byte $FF   ; 

- D 2 - I - 0x01DFBD 07:DFAD: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DFBF 07:DFAF: C1        .byte $C1, $7D, $01, $55   ; 

- D 2 - I - 0x01DFC3 07:DFB3: 25        .byte $25, $02   ; control byte for 00 + counter

- D 2 - I - 0x01DFC5 07:DFB5: FF        .byte $FF, $00, $C1, $7C   ; 

- D 2 - I - 0x01DFC9 07:DFB9: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DFCB 07:DFBB: FC        .byte $FC, $FE, $AA   ; 

- D 2 - I - 0x01DFCE 07:DFBE: 25        .byte $25, $03   ; control byte for 00 + counter

- D 2 - I - 0x01DFD0 07:DFC0: FF        .byte $FF, $00, $54, $A8   ; 

- D 2 - I - 0x01DFD4 07:DFC4: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DFD6 07:DFC6: C3        .byte $C3, $83, $07, $07, $0F, $1F, $FF   ; 

- D 2 - I - 0x01DFDD 07:DFCD: 25        .byte $25, $09   ; control byte for 00 + counter

- D 2 - I - 0x01DFDF 07:DFCF: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DFE1 07:DFD1: EB        .byte $EB, $DF, $DA, $BD, $38, $68   ; 

- D 2 - I - 0x01DFE7 07:DFD7: 25        .byte $25, $06   ; control byte for 00 + counter

- D 2 - I - 0x01DFE9 07:DFD9: 02        .byte $02, $03   ; 

- D 2 - I - 0x01DFEB 07:DFDB: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DFED 07:DFDD: E7        .byte $E7, $0F, $FD, $F8, $70   ; 

- D 2 - I - 0x01DFF2 07:DFE2: 25        .byte $25, $07   ; control byte for 00 + counter

- D 2 - I - 0x01DFF4 07:DFE4: 02        .byte $02, $0E   ; 

- D 2 - I - 0x01DFF6 07:DFE6: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 2 - I - 0x01DFF8 07:DFE8: DF        .byte $DF, $EF, $B7, $B7, $53, $7B   ; 

- D 2 - I - 0x01DFFE 07:DFEE: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01E000 07:DFF0: 2A        .byte $2A, $07   ; control byte for FF + counter

- D 2 - I - 0x01E002 07:DFF2: FC        .byte $FC   ; 

- D 2 - I - 0x01E003 07:DFF3: 25        .byte $25, $08   ; control byte for 00 + counter

- D 2 - I - 0x01E005 07:DFF5: 70        .byte $70, $60, $60, $40, $40, $00, $1F, $10, $03, $07, $06, $0F, $0F, $00, $1F, $70   ; 

- D 3 - I - 0x01E015 07:E005: 25        .byte $25, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E017 07:E007: 20        .byte $20, $87, $04, $FF, $CB, $7F, $FF, $87, $20, $87, $34, $1B, $23, $1B, $1B, $0B   ; 
- D 3 - I - 0x01E027 07:E017: 03        .byte $03, $C3, $03   ; 

- D 3 - I - 0x01E02A 07:E01A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E02C 07:E01C: 80        .byte $80, $80, $C0, $00, $C0, $00, $F0, $E0, $C0, $C0, $80, $80, $80, $80, $01, $06   ; 
- D 3 - I - 0x01E03C 07:E02C: 0F        .byte $0F, $19, $1E, $3E, $3B, $3B   ; 

- D 3 - I - 0x01E042 07:E032: 25        .byte $25, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E044 07:E034: 20        .byte $20, $E0, $40, $80, $10, $1F, $EF, $8F, $0E, $04   ; 

- D 3 - I - 0x01E04E 07:E03E: 25        .byte $25, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E050 07:E040: 34        .byte $34, $30, $78, $F4, $B7, $CF, $FF, $00, $07, $07, $07, $07, $07, $0F, $0F, $0F   ; 

- D 3 - I - 0x01E060 07:E050: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E062 07:E052: 20        .byte $20, $C0, $C0, $C0, $80, $BF, $BF, $BE, $BE, $BE, $BE, $BF   ; 

- D 3 - I - 0x01E06E 07:E05E: 25        .byte $25, $09   ; control byte for 00 + counter

- D 3 - I - 0x01E070 07:E060: 80        .byte $80, $00, $01, $83, $C1, $C1, $FF, $00, $32, $34, $28, $88, $C0, $C0   ; 

- D 3 - I - 0x01E07E 07:E06E: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E080 07:E070: 70        .byte $70, $E0, $E8, $DC, $DE, $DF, $FF, $00, $06, $07, $0B, $1D, $1E, $1F   ; 

- D 3 - I - 0x01E08E 07:E07E: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E090 07:E080: 7C        .byte $7C, $7C, $38   ; 

- D 3 - I - 0x01E093 07:E083: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E095 07:E085: FF        .byte $FF, $00, $7C, $39, $01, $82, $FC   ; 

- D 3 - I - 0x01E09C 07:E08C: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E09E 07:E08E: 1F        .byte $1F, $0F, $17, $1B, $2B, $2B, $FF, $00, $80, $80, $10, $18, $28, $28   ; 

- D 3 - I - 0x01E0AC 07:E09C: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E0AE 07:E09E: FF        .byte $FF   ; 

- D 3 - I - 0x01E0AF 07:E09F: 25        .byte $25, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E0B1 07:E0A1: 2A        .byte $2A, $08   ; control byte for FF + counter

- D 3 - I - 0x01E0B3 07:E0A3: 25        .byte $25, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E0B5 07:E0A5: 07        .byte $07, $00   ; 

- D 3 - I - 0x01E0B7 07:E0A7: 2A        .byte $2A, $05   ; control byte for FF + counter

- D 3 - I - 0x01E0B9 07:E0A9: F0        .byte $F0, $F0, $FF   ; 

- D 3 - I - 0x01E0BC 07:E0AC: 25        .byte $25, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E0BE 07:E0AE: DE        .byte $DE, $00   ; 

- D 3 - I - 0x01E0C0 07:E0B0: 2A        .byte $2A, $05   ; control byte for FF + counter

- D 3 - I - 0x01E0C2 07:E0B2: 00        .byte $00, $C0, $AA, $B5, $A0, $A0, $A0, $A0, $A0, $A0, $0A, $15, $1F, $1F, $1F, $1C   ; 
- D 3 - I - 0x01E0D2 07:E0C2: 1F        .byte $1F, $1F, $AA, $55   ; 

- D 3 - I - 0x01E0D6 07:E0C6: 25        .byte $25, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E0D8 07:E0C8: AA        .byte $AA, $55, $FF, $FB, $FF, $DF, $FE, $FE, $00, $0C, $00, $05, $03, $0C, $FB, $09   ; 
- D 3 - I - 0x01E0E8 07:E0D8: 00        .byte $00, $08   ; 

- D 3 - I - 0x01E0EA 07:E0DA: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E0EC 07:E0DC: E0        .byte $E0, $01, $01, $F3, $D0, $03, $D0, $DA, $DE, $DB, $DD, $DD, $40, $01, $40, $40   ; 
- D 3 - I - 0x01E0FC 07:E0EC: C2        .byte $C2, $C1, $80, $80, $0A, $05   ; 

- D 3 - I - 0x01E102 07:E0F2: 25        .byte $25, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E104 07:E0F4: F0        .byte $F0, $F0, $0A, $05, $0F, $0F, $7F, $0F, $F4, $17, $AB, $55, $01, $01, $01, $01   ; 
- D 3 - I - 0x01E114 07:E104: 01        .byte $01, $01, $AA, $54, $FE, $3E, $FE, $FE, $EE, $FE, $A0, $A0, $A0, $A0, $A0, $A0   ; 
- D 3 - I - 0x01E124 07:E114: A0        .byte $A0, $A0, $1F, $1F, $1E, $1F, $1F, $1F, $19, $1F   ; 

- D 3 - I - 0x01E12E 07:E11E: 25        .byte $25, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E130 07:E120: E7        .byte $E7, $FC, $FC, $FC, $95, $FC, $FD, $3D, $05, $02   ; 

- D 3 - I - 0x01E13A 07:E12A: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E13C 07:E12C: 1E        .byte $1E, $1E   ; 

- D 3 - I - 0x01E13E 07:E12E: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E140 07:E130: 1B        .byte $1B, $0C   ; 

- D 3 - I - 0x01E142 07:E132: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E144 07:E134: 1E        .byte $1E   ; 

- D 3 - I - 0x01E145 07:E135: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E147 07:E137: 0F        .byte $0F, $07, $40, $D0, $D7, $C7, $80, $40   ; 

- D 3 - I - 0x01E14F 07:E13F: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E151 07:E141: 40        .byte $40, $D0, $D0, $C7, $80, $40, $80   ; 

- D 3 - I - 0x01E158 07:E148: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E15A 07:E14A: 80        .byte $80, $80   ; 

- D 3 - I - 0x01E15C 07:E14C: 25        .byte $25, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E15E 07:E14E: 0F        .byte $0F, $03, $03, $03, $23, $83, $23, $2B, $01, $01, $01, $01, $01, $01, $01, $01   ; 
- D 3 - I - 0x01E16E 07:E15E: C6        .byte $C6, $FE, $7E, $FE, $FE, $96, $FE, $FE, $A0, $A0, $A0, $A0, $A0, $BF, $BF, $00   ; 
- D 3 - I - 0x01E17E 07:E16E: 1F        .byte $1F, $1F, $1B, $1F, $1F   ; 

- D 3 - I - 0x01E183 07:E173: 25        .byte $25, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E185 07:E175: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E187 07:E177: 00        .byte $00, $FC, $E4, $FC, $FE, $FF   ; 

- D 3 - I - 0x01E18D 07:E17D: 25        .byte $25, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E18F 07:E17F: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E191 07:E181: 00        .byte $00, $14, $0A, $15, $AA, $FF   ; 

- D 3 - I - 0x01E197 07:E187: 25        .byte $25, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E199 07:E189: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E19B 07:E18B: 00        .byte $00, $02, $05, $0A, $95, $FF   ; 

- D 3 - I - 0x01E1A1 07:E191: 25        .byte $25, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E1A3 07:E193: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E1A5 07:E195: 00        .byte $00, $82, $03, $83, $57, $FF   ; 

- D 3 - I - 0x01E1AB 07:E19B: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E1AD 07:E19D: 01        .byte $01, $01, $01, $01, $01   ; 

- D 3 - I - 0x01E1B2 07:E1A2: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E1B4 07:E1A4: 00        .byte $00, $FE, $E6, $FE, $FE, $FE   ; 

- D 3 - I - 0x01E1BA 07:E1AA: 25        .byte $25, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E1BC 07:E1AC: 2A        .byte $2A, $08   ; control byte for FF + counter

- D 3 - I - 0x01E1BE 07:E1AE: 25        .byte $25, $0A   ; control byte for 00 + counter

- D 3 - I - 0x01E1C0 07:E1B0: FF        .byte $FF, $00   ; 

- D 3 - I - 0x01E1C2 07:E1B2: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E1C4 07:E1B4: 00        .byte $00   ; 

- D 3 - I - 0x01E1C5 07:E1B5: 2A        .byte $2A, $19   ; control byte for FF + counter

- D 3 - I - 0x01E1C7 07:E1B7: BF        .byte $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $C0, $C0, $C0, $C0, $C0, $C0, $C0, $C0   ; 
- D 3 - I - 0x01E1D7 07:E1C7: 7F        .byte $7F, $3F, $1F, $1F, $1F, $1F, $1F, $1F, $7F, $3F, $1F, $1F, $1F, $1F, $1F, $1F   ; 
- D 3 - I - 0x01E1E7 07:E1D7: 1F        .byte $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $1F   ; 
- D 3 - I - 0x01E1F7 07:E1E7: BF        .byte $BF, $BF, $80, $B0, $D0, $D0, $D1, $D2, $C0, $C0, $80, $80, $E0, $E0, $E0, $E3   ; 

- D 3 - I - 0x01E207 07:E1F7: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E209 07:E1F9: 25        .byte $25, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E20B 07:E1FB: 80        .byte $80, $9F   ; 

- D 3 - I - 0x01E20D 07:E1FD: 25        .byte $25, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E20F 07:E1FF: 1F        .byte $1F   ; 

- D 3 - I - 0x01E210 07:E200: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E212 07:E202: 25        .byte $25, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E214 07:E204: FF        .byte $FF   ; 

- D 3 - I - 0x01E215 07:E205: 25        .byte $25, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E217 07:E207: 2A        .byte $2A, $03   ; control byte for FF + counter

- D 3 - I - 0x01E219 07:E209: 25        .byte $25, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E21B 07:E20B: BF        .byte $BF   ; 

- D 3 - I - 0x01E21C 07:E20C: 25        .byte $25, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E21E 07:E20E: 80        .byte $80   ; 

- D 3 - I - 0x01E21F 07:E20F: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E221 07:E211: 25        .byte $25, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E223 07:E213: FF        .byte $FF   ; 

- D 3 - I - 0x01E224 07:E214: 25        .byte $25, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E226 07:E216: 7F        .byte $7F   ; 

- D 3 - I - 0x01E227 07:E217: 2A        .byte $2A, $02   ; control byte for FF + counter

- D 3 - I - 0x01E229 07:E219: 00        .byte $00, $60, $20, $20, $23, $A5   ; 

- D 3 - I - 0x01E22F 07:E21F: 25        .byte $25, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E231 07:E221: 40        .byte $40, $40, $40, $C6, $1F, $1F, $1F, $1F, $1F, $1F, $3F, $3F, $1F, $1F, $1F, $1F   ; 
- D 3 - I - 0x01E241 07:E231: 1F        .byte $1F, $1F, $3F, $3F, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $D2, $E3, $E3, $E3, $E3   ; 
- D 3 - I - 0x01E251 07:E241: E3        .byte $E3, $E3, $E3, $E3, $9F, $9F, $9F, $9F, $9F, $9F, $9F, $9F, $1F, $1F, $1F, $1F   ; 
- D 3 - I - 0x01E261 07:E251: 1F        .byte $1F, $1F, $1F, $1F, $7B, $7A, $3F, $80, $CF, $CF, $CF, $FF, $3F, $2F, $00, $80   ; 
- D 3 - I - 0x01E271 07:E261: 8F        .byte $8F, $8F, $8F, $8F   ; 



off_06_07_E265:
- D 3 - I - 0x01E275 07:E265: 01        .byte $01   ; prepare control byte for 00
- D 3 - I - 0x01E276 07:E266: 02        .byte $02   ; prepare control byte for FF

- D 3 - I - 0x01E277 07:E267: FF        .byte $FF, $FB, $CD, $DD, $DD, $DD, $79, $83, $00, $78, $CC, $CC, $CC, $CC, $78, $00   ; normal bytes
- D 3 - I - 0x01E287 07:E277: FF        .byte $FF, $FB, $FB, $FB, $DB, $FB, $FD, $C1, $00, $18, $38, $38, $18, $18, $3C, $00   ; 
- D 3 - I - 0x01E297 07:E287: FF        .byte $FF, $FD, $E6, $8E, $FC, $E1, $FE, $80, $00, $3C, $66, $06, $7C, $60, $7E, $00   ; 
- D 3 - I - 0x01E2A7 07:E297: FF        .byte $FF, $FD, $E6, $9E, $E6, $FE, $BC, $C1, $00, $3C, $66, $1E, $06, $66, $3C, $00   ; 
- D 3 - I - 0x01E2B7 07:E2A7: FF        .byte $FF, $EF, $ED, $ED, $FE, $8C, $FD, $F1, $00, $60, $6C, $6C, $7E, $0C, $0C, $00   ; 
- D 3 - I - 0x01E2C7 07:E2B7: FF        .byte $FF, $FD, $E1, $FB, $8D, $FD, $F9, $83, $00, $7C, $60, $78, $0C, $1C, $78, $00   ; 
- D 3 - I - 0x01E2D7 07:E2C7: FF        .byte $FF, $FD, $E1, $FE, $E6, $EE, $BC, $C1, $00, $3C, $60, $7E, $66, $66, $3C, $00   ; 
- D 3 - I - 0x01E2E7 07:E2D7: FF        .byte $FF, $FD, $FD, $99, $FB, $F3, $F7, $C7, $00, $7C, $7C, $18, $18, $30, $30, $00   ; 
- D 3 - I - 0x01E2F7 07:E2E7: FF        .byte $FF, $FD, $E6, $BC, $E6, $EE, $BC, $C1, $00, $3C, $66, $3C, $66, $66, $3C, $00   ; 
- D 3 - I - 0x01E307 07:E2F7: FF        .byte $FF, $FD, $E6, $BE, $C6, $FE, $BC, $C1, $00, $3C, $66, $3E, $06, $66, $3C, $00   ; 

- D 3 - I - 0x01E317 07:E307: 02        .byte $02, $04   ; control byte for FF + counter

- D 3 - I - 0x01E319 07:E309: FB        .byte $FB, $FB, $F3, $C7   ; 

- D 3 - I - 0x01E31D 07:E30D: 01        .byte $01, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E31F 07:E30F: 18        .byte $18, $18, $30, $00   ; 



off_06_07_E313:
- D 3 - I - 0x01E323 07:E313: 02        .byte $02   ; prepare control byte for 00
- D 3 - I - 0x01E324 07:E314: 03        .byte $03   ; prepare control byte for FF

- D 3 - I - 0x01E325 07:E315: 3F        .byte $3F, $9F, $0F, $07, $C3, $E3, $E1, $F1, $3F, $1F, $0F, $07, $C3, $E3, $E1, $F1   ; normal bytes
- D 3 - I - 0x01E335 07:E325: A5        .byte $A5, $A5, $A5, $A5, $A5, $A5, $A5, $A5, $C6, $C6, $C6, $C6, $C6, $C6, $C6, $C6   ; 
- D 3 - I - 0x01E345 07:E335: 3F        .byte $3F, $3F, $3F, $3F, $3F, $21, $00, $06, $3F, $3F, $3F, $3F, $3F, $21, $00, $01   ; 

- D 3 - I - 0x01E355 07:E345: 02        .byte $02, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E357 07:E347: 01        .byte $01   ; 

- D 3 - I - 0x01E358 07:E348: 02        .byte $02, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E35A 07:E34A: 01        .byte $01   ; 

- D 3 - I - 0x01E35B 07:E34B: 02        .byte $02, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E35D 07:E34D: FF        .byte $FF, $02, $07, $FF, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01   ; 
- D 3 - I - 0x01E36D 07:E35D: 01        .byte $01, $01, $01, $01   ; 



off_06_07_E361:
- D 3 - I - 0x01E371 07:E361: FF        .byte $FF, $FD, $C6, $DE, $FE, $C6, $DE, $18, $00, $7C, $C6, $C6, $FE, $C6, $C6, $00   ; 
- D 3 - I - 0x01E381 07:E371: FF        .byte $FF, $FD, $E6, $FC, $E6, $EE, $FC, $01, $00, $FC, $E6, $FC, $E6, $E6, $FC, $00   ; 
- D 3 - I - 0x01E391 07:E381: FF        .byte $FF, $FD, $E6, $E8, $EF, $EE, $7C, $81, $00, $7C, $E6, $E0, $E0, $E6, $7C, $00   ; 
- D 3 - I - 0x01E3A1 07:E391: FF        .byte $FF, $FD, $E6, $EE, $EE, $EE, $FC, $01, $00, $FC, $E6, $E6, $E6, $E6, $FC, $00   ; 
- D 3 - I - 0x01E3B1 07:E3A1: FF        .byte $FF, $FE, $E0, $FB, $E3, $EF, $FE, $00, $00, $FE, $E0, $F8, $E0, $E0, $FE, $00   ; 
- D 3 - I - 0x01E3C1 07:E3B1: FF        .byte $FF, $FE, $E0, $FB, $E3, $EF, $EF, $0F, $00, $FE, $E0, $F8, $E0, $E0, $E0, $00   ; 
- D 3 - I - 0x01E3D1 07:E3C1: FF        .byte $FF, $FD, $E6, $E8, $EE, $EE, $7E, $80, $00, $7C, $E6, $E0, $EE, $E6, $7E, $00   ; 
- D 3 - I - 0x01E3E1 07:E3D1: FF        .byte $FF, $EE, $EE, $FE, $E6, $EE, $EE, $08, $00, $E6, $E6, $FE, $E6, $E6, $E6, $00   ; 
- D 3 - I - 0x01E3F1 07:E3E1: FF        .byte $FF, $FD, $B9, $FB, $FB, $FB, $FD, $81, $00, $7C, $38, $38, $38, $38, $7C, $00   ; 
- D 3 - I - 0x01E401 07:E3F1: FF        .byte $FF, $FD, $B9, $FB, $FB, $FB, $F3, $87, $00, $7C, $38, $38, $38, $78, $70, $00   ; 
- D 3 - I - 0x01E411 07:E401: FF        .byte $FF, $EE, $EC, $F9, $FB, $ED, $E6, $08, $00, $E6, $EC, $F8, $F8, $EC, $E6, $00   ; 
- D 3 - I - 0x01E421 07:E411: FF        .byte $FF, $F7, $F7, $F7, $F7, $F7, $FD, $81, $00, $70, $70, $70, $70, $70, $7C, $00   ; 
- D 3 - I - 0x01E431 07:E421: FF        .byte $FF, $DE, $EE, $FE, $D6, $C6, $DE, $18, $00, $C6, $EE, $FE, $D6, $C6, $C6, $00   ; 
- D 3 - I - 0x01E441 07:E431: FF        .byte $FF, $EE, $F6, $FE, $FE, $EE, $E6, $08, $00, $E6, $F6, $FE, $FE, $EE, $E6, $00   ; 
- D 3 - I - 0x01E451 07:E441: FF        .byte $FF, $FD, $E6, $EE, $EE, $EE, $7C, $81, $00, $7C, $E6, $E6, $E6, $E6, $7C, $00   ; 
- D 3 - I - 0x01E461 07:E451: FF        .byte $FF, $FD, $E6, $EE, $EE, $FC, $E1, $0F, $00, $FC, $E6, $E6, $E6, $FC, $E0, $00   ; 
- D 3 - I - 0x01E471 07:E461: FF        .byte $FF, $FD, $E6, $EE, $FE, $EE, $7A, $80, $00, $7C, $E6, $E6, $FE, $EE, $7A, $00   ; 
- D 3 - I - 0x01E481 07:E471: FF        .byte $FF, $FD, $E6, $EE, $FC, $E6, $EE, $08, $00, $FC, $E6, $E6, $FC, $E6, $E6, $00   ; 
- D 3 - I - 0x01E491 07:E481: FF        .byte $FF, $FD, $E6, $78, $9E, $C6, $7C, $81, $00, $7C, $E6, $78, $1E, $C6, $7C, $00   ; 
- D 3 - I - 0x01E4A1 07:E491: FF        .byte $FF, $FD, $FD, $31, $F7, $F7, $F7, $C7, $00, $FC, $FC, $30, $30, $30, $30, $00   ; 
- D 3 - I - 0x01E4B1 07:E4A1: FF        .byte $FF, $EE, $EE, $EE, $EE, $EE, $7C, $81, $00, $E6, $E6, $E6, $E6, $E6, $7C, $00   ; 
- D 3 - I - 0x01E4C1 07:E4B1: FF        .byte $FF, $BE, $DE, $EE, $7C, $B9, $D3, $E7, $00, $82, $C6, $EE, $7C, $38, $10, $00   ; 
- D 3 - I - 0x01E4D1 07:E4C1: FF        .byte $FF, $DE, $DE, $D6, $FE, $EE, $C6, $18, $00, $C6, $C6, $D6, $FE, $EE, $C6, $00   ; 
- D 3 - I - 0x01E4E1 07:E4D1: FF        .byte $FF, $DE, $EE, $7C, $B9, $FD, $EE, $10, $00, $C6, $EE, $7C, $38, $7C, $EE, $00   ; 
- D 3 - I - 0x01E4F1 07:E4E1: FF        .byte $FF, $DE, $EE, $7C, $B9, $F3, $E7, $0F, $00, $C6, $EE, $7C, $38, $F0, $E0, $00   ; 
- D 3 - I - 0x01E501 07:E4F1: FF        .byte $FF, $FE, $FE, $1C, $F1, $FE, $FE, $00, $00, $FE, $FE, $1C, $70, $FE, $FE, $00   ; 
- D 3 - I - 0x01E511 07:E501: FF        .byte $FF, $FD, $FB, $F7, $DF, $EF, $F7, $F9, $06, $0C, $18, $30, $18, $0C, $06, $00   ; 
- D 3 - I - 0x01E521 07:E511: EF        .byte $EF, $DD, $FA, $DA, $FA, $1C, $E1, $FF, $E0, $DC, $FA, $DA, $FA, $1C, $00, $00   ; 
- D 3 - I - 0x01E531 07:E521: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00   ; 



off_06_07_E531:
- D 3 - I - 0x01E541 07:E531: 02        .byte $02   ; prepare control byte for 00
- D 3 - I - 0x01E542 07:E532: 03        .byte $03   ; prepare control byte for FF

- D 3 - I - 0x01E543 07:E533: 03        .byte $03, $09   ; control byte for FF + counter

- D 3 - I - 0x01E545 07:E535: 02        .byte $02, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E547 07:E537: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E549 07:E539: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $FF, $00, $06, $0E, $1E, $3E, $7E, $FE   ; normal bytes

- D 3 - I - 0x01E557 07:E547: 03        .byte $03, $06   ; control byte for FF + counter

- D 3 - I - 0x01E559 07:E549: FE        .byte $FE, $FE, $FF   ; 

- D 3 - I - 0x01E55C 07:E54C: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E55E 07:E54E: 07        .byte $07, $0E, $0E   ; 

- D 3 - I - 0x01E561 07:E551: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E563 07:E553: DE        .byte $DE, $6E, $8F, $FF   ; 

- D 3 - I - 0x01E567 07:E557: 02        .byte $02, $04   ; control byte for 00 + counter
- D 3 - I - 0x01E569 07:E559: CE        .byte $CE, $6E, $0F   ; 

- D 3 - I - 0x01E56C 07:E55C: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E56E 07:E55E: EF        .byte $EF, $EE, $EE, $FF   ; 

- D 3 - I - 0x01E572 07:E562: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E574 07:E564: 67        .byte $67, $6E, $EE   ; 

- D 3 - I - 0x01E577 07:E567: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E579 07:E569: DF        .byte $DF, $6B, $EF, $FF   ; 

- D 3 - I - 0x01E57D 07:E56D: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E57F 07:E56F: C7        .byte $C7, $63, $63   ; 

- D 3 - I - 0x01E582 07:E572: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E584 07:E574: DF        .byte $DF, $9E, $BE, $FF   ; 

- D 3 - I - 0x01E588 07:E578: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E58A 07:E57A: C7        .byte $C7, $8E, $8E   ; 

- D 3 - I - 0x01E58D 07:E57D: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E58F 07:E57F: DF        .byte $DF, $6E, $8F, $FF   ; 

- D 3 - I - 0x01E593 07:E583: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E595 07:E585: CF        .byte $CF, $6E, $0F   ; 

- D 3 - I - 0x01E598 07:E588: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E59A 07:E58A: EF        .byte $EF, $0E, $B7, $FF   ; 

- D 3 - I - 0x01E59E 07:E58E: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E5A0 07:E590: E7        .byte $E7, $0E, $87   ; 

- D 3 - I - 0x01E5A3 07:E593: 03        .byte $03, $05   ; control byte for FF + counter

- D 3 - I - 0x01E5A5 07:E595: DF        .byte $DF, $6F, $8F, $FF   ; 

- D 3 - I - 0x01E5A9 07:E599: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E5AB 07:E59B: C0        .byte $C0, $60, $80   ; 

- D 3 - I - 0x01E5AE 07:E59E: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E5B0 07:E5A0: 7F        .byte $7F, $7F, $7F, $7F, $7F, $7F, $FF, $00, $60, $70, $78, $7C, $7E, $7F   ; 

- D 3 - I - 0x01E5BE 07:E5AE: 03        .byte $03, $06   ; control byte for FF + counter

- D 3 - I - 0x01E5C0 07:E5B0: 00        .byte $00, $FF   ; 

- D 3 - I - 0x01E5C2 07:E5B2: 02        .byte $02, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E5C4 07:E5B4: FF        .byte $FF, $7E, $BE, $DE, $EE, $F6, $F8, $00, $FF, $7E, $3E, $1E, $0E, $06   ; 

- D 3 - I - 0x01E5D2 07:E5C2: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E5D4 07:E5C4: FF        .byte $FF, $FE, $FE, $F7, $F8   ; 

- D 3 - I - 0x01E5D9 07:E5C9: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E5DB 07:E5CB: 00        .byte $00, $FF, $0E, $0E, $07   ; 

- D 3 - I - 0x01E5E0 07:E5D0: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E5E2 07:E5D2: FF        .byte $FF, $FE, $EE, $CE, $10   ; 

- D 3 - I - 0x01E5E7 07:E5D7: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E5E9 07:E5D9: 00        .byte $00, $FF, $0E, $6E, $CE   ; 

- D 3 - I - 0x01E5EE 07:E5DE: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E5F0 07:E5E0: FF        .byte $FF, $6E, $EE, $E7, $88   ; 

- D 3 - I - 0x01E5F5 07:E5E5: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E5F7 07:E5E7: 00        .byte $00, $FF, $6E, $6E, $67   ; 

- D 3 - I - 0x01E5FC 07:E5EC: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E5FE 07:E5EE: FF        .byte $FF, $EF, $EF, $CF, $18   ; 

- D 3 - I - 0x01E603 07:E5F3: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E605 07:E5F5: 00        .byte $00, $FF, $63, $63, $C7   ; 

- D 3 - I - 0x01E60A 07:E5FA: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E60C 07:E5FC: FF        .byte $FF, $BE, $BE, $D7, $18   ; 

- D 3 - I - 0x01E611 07:E601: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E613 07:E603: 00        .byte $00, $FF, $8E, $8E, $C7   ; 

- D 3 - I - 0x01E618 07:E608: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E61A 07:E60A: FF        .byte $FF, $FE, $EE, $CF, $10   ; 

- D 3 - I - 0x01E61F 07:E60F: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E621 07:E611: 00        .byte $00, $FF, $0E, $6E, $CF   ; 

- D 3 - I - 0x01E626 07:E616: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E628 07:E618: FF        .byte $FF, $39, $FC, $E7, $08   ; 

- D 3 - I - 0x01E62D 07:E61D: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E62F 07:E61F: 00        .byte $00, $FF, $01, $0C, $E7   ; 

- D 3 - I - 0x01E634 07:E624: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E636 07:E626: FF        .byte $FF, $EF, $6F, $CF, $1F   ; 

- D 3 - I - 0x01E63B 07:E62B: 03        .byte $03, $02   ; control byte for FF + counter

- D 3 - I - 0x01E63D 07:E62D: 00        .byte $00, $FF, $E0, $60, $C0   ; 

- D 3 - I - 0x01E642 07:E632: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E644 07:E634: FF        .byte $FF, $7E, $7D, $7B, $77, $6F, $1F, $00, $FF, $7E, $7C, $78, $70, $60   ; 

- D 3 - I - 0x01E652 07:E642: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E654 07:E644: FF        .byte $FF   ; 



off_06_07_E645:
- D 3 - I - 0x01E655 07:E645: 01        .byte $01   ; prepare control byte for 00
- D 3 - I - 0x01E656 07:E646: 02        .byte $02   ; prepare control byte for FF

- D 3 - I - 0x01E657 07:E647: FF        .byte $FF, $F0, $F0, $F0, $F0, $F0, $FF, $00, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $00   ; normal bytes
- D 3 - I - 0x01E667 07:E657: FF        .byte $FF   ; 

- D 3 - I - 0x01E668 07:E658: 01        .byte $01, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E66A 07:E65A: FF        .byte $FF, $00, $FF   ; 

- D 3 - I - 0x01E66D 07:E65D: 01        .byte $01, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E66F 07:E65F: FF        .byte $FF, $00, $FF, $F0, $F0, $F0, $F0, $F0, $FF, $00, $FF, $F0, $F0, $F0, $F0, $F0   ; 
- D 3 - I - 0x01E67F 07:E66F: FF        .byte $FF, $00, $FF, $F0, $F0, $F0, $F0, $F0, $FF, $00   ; 

- D 3 - I - 0x01E689 07:E679: 02        .byte $02, $07   ; control byte for FF + counter

- D 3 - I - 0x01E68B 07:E67B: 00        .byte $00, $FB, $0B, $0B, $0B, $0B, $0B, $FB, $00, $F8, $08, $08, $08, $08, $08, $F8   ; 
- D 3 - I - 0x01E69B 07:E68B: 00        .byte $00, $FB, $FB, $FB, $FB, $FB, $FB, $FB, $00, $F8, $F8, $F8, $F8, $F8, $F8, $F8   ; 
- D 3 - I - 0x01E6AB 07:E69B: 00        .byte $00, $FF, $F0, $F0, $F0, $F0, $F0, $FF, $00, $1F, $10, $10, $10, $10, $10, $1F   ; 
- D 3 - I - 0x01E6BB 07:E6AB: 00        .byte $00, $FF, $FC, $FC, $FC, $FC, $FC, $FF, $00, $1F, $1C, $1C, $1C, $1C, $1C, $1F   ; 
- D 3 - I - 0x01E6CB 07:E6BB: 00        .byte $00   ; 

- D 3 - I - 0x01E6CC 07:E6BC: 02        .byte $02, $07   ; control byte for FF + counter

- D 3 - I - 0x01E6CE 07:E6BE: 00        .byte $00, $1F, $1F, $1F, $1F, $1F, $1F, $1F, $00, $FF, $C0, $C0, $C0, $C0, $C0, $FF   ; 
- D 3 - I - 0x01E6DE 07:E6CE: 00        .byte $00, $FF, $C0, $C0, $C0, $C0, $C0, $FF, $00, $FF, $F0, $F0, $F0, $F0, $F0, $FF   ; 
- D 3 - I - 0x01E6EE 07:E6DE: 00        .byte $00, $FF, $F0, $F0, $F0, $F0, $F0, $FF, $00, $FF, $FC, $FC, $FC, $FC, $FC, $FF   ; 
- D 3 - I - 0x01E6FE 07:E6EE: 00        .byte $00, $FF, $FC, $FC, $FC, $FC, $FC, $FF, $00   ; 

- D 3 - I - 0x01E707 07:E6F7: 02        .byte $02, $07   ; control byte for FF + counter

- D 3 - I - 0x01E709 07:E6F9: 00        .byte $00   ; 

- D 3 - I - 0x01E70A 07:E6FA: 02        .byte $02, $07   ; control byte for FF + counter

- D 3 - I - 0x01E70C 07:E6FC: 00        .byte $00, $FB, $CB, $CB, $CB, $CB, $CB, $FB, $00, $F8, $C8, $C8, $C8, $C8, $C8, $F8   ; 
- D 3 - I - 0x01E71C 07:E70C: 00        .byte $00   ; 

- D 3 - I - 0x01E71D 07:E70D: 02        .byte $02, $07   ; control byte for FF + counter

- D 3 - I - 0x01E71F 07:E70F: 01        .byte $01, $09   ; control byte for 00 + counter



off_06_07_E711:
- D 3 - I - 0x01E721 07:E711: FF        .byte $FF, $FF, $F7, $F7, $C7, $F7, $F7, $C7, $00, $00, $30, $30, $00, $30, $30, $00   ; 
- D 3 - I - 0x01E731 07:E721: FF        .byte $FF, $FF, $FF, $FD, $FD, $81, $FF, $FF, $00, $00, $00, $7C, $7C, $00, $00, $00   ; 
- D 3 - I - 0x01E741 07:E731: FF        .byte $FF, $EB, $EB, $EB, $C3, $FF, $FF, $FF, $00, $28, $28, $28, $00, $00, $00, $00   ; 
- D 3 - I - 0x01E751 07:E741: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01   ; 
- D 3 - I - 0x01E761 07:E751: FF        .byte $FF, $00, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $FF, $00, $00, $00, $00, $00   ; 



off_06_07_E761:
- D 3 - I - 0x01E771 07:E761: 01        .byte $01   ; prepare control byte for 00
- D 3 - I - 0x01E772 07:E762: 02        .byte $02   ; prepare control byte for FF

- D 3 - I - 0x01E773 07:E763: 02        .byte $02, $08, $01, $08   ; normal bytes



off_06_07_E767:
- D 3 - I - 0x01E777 07:E767: 05        .byte $05   ; prepare control byte for 00
- D 3 - I - 0x01E778 07:E768: 06        .byte $06   ; prepare control byte for FF

- D 3 - I - 0x01E779 07:E769: 5D        .byte $5D, $20, $28, $28, $28, $28, $08, $C0, $9E, $C7, $CF, $CF, $CF, $CF, $0F, $07   ; normal bytes
- D 3 - I - 0x01E789 07:E779: 70        .byte $70, $18   ; 

- D 3 - I - 0x01E78B 07:E77B: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E78D 07:E77D: 9F        .byte $9F, $EF   ; 

- D 3 - I - 0x01E78F 07:E77F: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01E791 07:E781: 00        .byte $00, $60, $C0, $80   ; 

- D 3 - I - 0x01E795 07:E785: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E797 07:E787: FF        .byte $FF, $BF, $7F, $7F   ; 

- D 3 - I - 0x01E79B 07:E78B: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01E79D 07:E78D: 60        .byte $60   ; 

- D 3 - I - 0x01E79E 07:E78E: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E7A0 07:E790: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01E7A2 07:E792: 5D        .byte $5D, $40, $28, $28, $28, $28, $28, $28, $9E, $87, $CF, $CF, $CF, $CF, $CF, $CF   ; 
- D 3 - I - 0x01E7B2 07:E7A2: 0C        .byte $0C   ; 

- D 3 - I - 0x01E7B3 07:E7A3: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E7B5 07:E7A5: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01E7B7 07:E7A7: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E7B9 07:E7A9: 01        .byte $01   ; 

- D 3 - I - 0x01E7BA 07:E7AA: 06        .byte $06, $07   ; control byte for FF + counter

- D 3 - I - 0x01E7BC 07:E7AC: FE        .byte $FE   ; 

- D 3 - I - 0x01E7BD 07:E7AD: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E7BF 07:E7AF: 60        .byte $60, $60, $C0, $80   ; 

- D 3 - I - 0x01E7C3 07:E7B3: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01E7C5 07:E7B5: BF        .byte $BF, $BF, $7F, $FF, $58, $40, $20, $2C, $2C, $2A, $2B, $29, $91, $88, $C8, $C8   ; 
- D 3 - I - 0x01E7D5 07:E7C5: C8        .byte $C8, $CC, $CC, $CE, $0C   ; 

- D 3 - I - 0x01E7DA 07:E7CA: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E7DC 07:E7CC: 80        .byte $80   ; 

- D 3 - I - 0x01E7DD 07:E7CD: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E7DF 07:E7CF: 7F        .byte $7F, $3F, $1F, $07, $40, $10, $18   ; 

- D 3 - I - 0x01E7E6 07:E7D6: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E7E8 07:E7D8: FF        .byte $FF, $EF, $FE, $FE, $FC, $F0, $81, $03, $0C, $1C, $38, $30, $30, $60, $60, $C0   ; 
- D 3 - I - 0x01E7F8 07:E7E8: 03        .byte $03, $03, $07, $4F, $4F, $9F, $9F, $3F, $30, $08, $E6, $F9, $FC, $3F, $07, $03   ; 
- D 3 - I - 0x01E808 07:E7F8: C3        .byte $C3, $F1, $F8, $FE   ; 

- D 3 - I - 0x01E80C 07:E7FC: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01E80E 07:E7FE: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E810 07:E800: 80        .byte $80, $40, $B0, $DC   ; 

- D 3 - I - 0x01E814 07:E804: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E816 07:E806: 7F        .byte $7F, $3F, $8F, $C3, $E0   ; 

- D 3 - I - 0x01E81B 07:E80B: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E81D 07:E80D: 01        .byte $01, $01, $03, $01   ; 

- D 3 - I - 0x01E821 07:E811: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E823 07:E813: FE        .byte $FE, $FC, $FD, $F9, $03, $00, $02, $04, $7F, $FF, $CF, $C7, $E1, $FF, $C1, $38   ; 

- D 3 - I - 0x01E833 07:E823: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E835 07:E825: CF        .byte $CF, $C7, $E1, $28, $28, $28, $48, $D0, $F4, $FD, $FF, $CF, $CF, $0F, $8F, $E3   ; 
- D 3 - I - 0x01E845 07:E835: F8        .byte $F8, $FE, $FF   ; 

- D 3 - I - 0x01E848 07:E838: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01E84A 07:E83A: 40        .byte $40   ; 

- D 3 - I - 0x01E84B 07:E83B: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01E84D 07:E83D: 3F        .byte $3F, $8F   ; 

- D 3 - I - 0x01E84F 07:E83F: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E851 07:E841: 02        .byte $02   ; 

- D 3 - I - 0x01E852 07:E842: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E854 07:E844: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01E856 07:E846: 80        .byte $80   ; 

- D 3 - I - 0x01E857 07:E847: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E859 07:E849: 01        .byte $01   ; 

- D 3 - I - 0x01E85A 07:E84A: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E85C 07:E84C: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E85E 07:E84E: FE        .byte $FE   ; 

- D 3 - I - 0x01E85F 07:E84F: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01E861 07:E851: 28        .byte $28, $58, $98, $48, $A8, $28, $28, $28, $CF, $8F, $0F, $1F, $4F, $CF, $CF, $CF   ; 
- D 3 - I - 0x01E871 07:E861: C0        .byte $C0, $F0, $3C, $0F, $03   ; 

- D 3 - I - 0x01E876 07:E866: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E878 07:E868: 30        .byte $30, $30, $0F, $C3, $F0, $FC   ; 

- D 3 - I - 0x01E87E 07:E86E: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E880 07:E870: DF        .byte $DF, $01, $03, $1F, $FC, $F0   ; 

- D 3 - I - 0x01E886 07:E876: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E888 07:E878: 01        .byte $01, $1E, $FC, $E0, $03, $0F   ; 

- D 3 - I - 0x01E88E 07:E87E: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E890 07:E880: FE        .byte $FE, $C0, $80   ; 

- D 3 - I - 0x01E893 07:E883: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E895 07:E885: 60        .byte $60, $60, $C0, $80, $3F, $7F   ; 

- D 3 - I - 0x01E89B 07:E88B: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E89D 07:E88D: BF        .byte $BF, $BF, $7F, $FF, $C0, $F0, $FC   ; 

- D 3 - I - 0x01E8A4 07:E894: 06        .byte $06, $05   ; control byte for FF + counter

- D 3 - I - 0x01E8A6 07:E896: 3F        .byte $3F, $0F, $03   ; 

- D 3 - I - 0x01E8A9 07:E899: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E8AB 07:E89B: E1        .byte $E1, $7E, $1F, $00, $C0, $F0   ; 

- D 3 - I - 0x01E8B1 07:E8A1: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E8B3 07:E8A3: FE        .byte $FE   ; 

- D 3 - I - 0x01E8B4 07:E8A4: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E8B6 07:E8A6: 3F        .byte $3F, $0F   ; 

- D 3 - I - 0x01E8B8 07:E8A8: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E8BA 07:E8AA: E1        .byte $E1, $1D, $83, $FC, $07   ; 

- D 3 - I - 0x01E8BF 07:E8AF: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E8C1 07:E8B1: FE        .byte $FE, $03, $E1, $FC   ; 

- D 3 - I - 0x01E8C5 07:E8B5: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01E8C7 07:E8B7: 01        .byte $01, $F1, $F8, $FF, $00, $FF, $3E   ; 

- D 3 - I - 0x01E8CE 07:E8BE: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E8D0 07:E8C0: F0        .byte $F0, $F8, $00   ; 

- D 3 - I - 0x01E8D3 07:E8C3: 06        .byte $06, $05   ; control byte for FF + counter

- D 3 - I - 0x01E8D5 07:E8C5: 7E        .byte $7E, $38, $F9, $73, $E2, $24, $40, $C0, $7F, $3C, $18, $91, $E0, $E0, $C0, $40   ; 
- D 3 - I - 0x01E8E5 07:E8D5: 00        .byte $00, $7A, $C9   ; 

- D 3 - I - 0x01E8E8 07:E8D8: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E8EA 07:E8DA: 3E        .byte $3E, $00, $7C, $F0   ; 

- D 3 - I - 0x01E8EE 07:E8DE: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E8F0 07:E8E0: 78        .byte $78, $00, $08, $00, $88, $04, $04, $02, $02, $C1, $28, $10   ; 

- D 3 - I - 0x01E8FC 07:E8EC: 05        .byte $05, $0D   ; control byte for 00 + counter

- D 3 - I - 0x01E8FE 07:E8EE: FF        .byte $FF, $7F, $3F, $1F, $0F, $0F, $07, $07, $28, $28, $28, $28, $28, $28, $28, $28   ; 
- D 3 - I - 0x01E90E 07:E8FE: CF        .byte $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $60, $40   ; 

- D 3 - I - 0x01E918 07:E908: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E91A 07:E90A: BF        .byte $BF, $BF   ; 

- D 3 - I - 0x01E91C 07:E90C: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01E91E 07:E90E: 80        .byte $80   ; 

- D 3 - I - 0x01E91F 07:E90F: 05        .byte $05, $07   ; control byte for 00 + counter


- D 3 - I - 0x01E921 07:E911: 06        .byte $06, $0B   ; control byte for FF + counter

- D 3 - I - 0x01E923 07:E913: 00        .byte $00   ; 

- D 3 - I - 0x01E924 07:E914: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E926 07:E916: 00        .byte $00, $FF   ; 

- D 3 - I - 0x01E928 07:E918: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E92A 07:E91A: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01E92C 07:E91C: 00        .byte $00   ; 

- D 3 - I - 0x01E92D 07:E91D: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E92F 07:E91F: 00        .byte $00, $FF, $FC, $01, $FE   ; 

- D 3 - I - 0x01E934 07:E924: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E936 07:E926: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E938 07:E928: FE        .byte $FE, $00   ; 

- D 3 - I - 0x01E93A 07:E92A: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01E93C 07:E92C: 3F        .byte $3F, $5F, $8F, $0F, $0F   ; 

- D 3 - I - 0x01E941 07:E931: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E943 07:E933: C0        .byte $C0, $80   ; 

- D 3 - I - 0x01E945 07:E935: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E947 07:E937: FF        .byte $FF, $F8, $F1, $F9, $FC, $FF, $F0, $E2   ; 

- D 3 - I - 0x01E94F 07:E93F: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E951 07:E941: 03        .byte $03   ; 

- D 3 - I - 0x01E952 07:E942: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01E954 07:E944: 07        .byte $07, $C0, $80, $81, $82, $03, $02, $02, $00, $80, $81, $81, $80, $82, $83, $83   ; 
- D 3 - I - 0x01E964 07:E954: 82        .byte $82, $C1, $D0, $60, $61, $F0, $E0, $48, $78, $CE, $9F, $1C, $1D, $0F, $07, $8F   ; 
- D 3 - I - 0x01E974 07:E964: 1C        .byte $1C, $03, $83, $01, $41, $41, $41, $41, $41   ; 

- D 3 - I - 0x01E97D 07:E96D: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E97F 07:E96F: 80        .byte $80, $80, $80, $80, $80, $80, $80, $60, $7C, $1D, $E3, $FE, $1F, $07, $03, $83   ; 
- D 3 - I - 0x01E98F 07:E97F: E0        .byte $E0, $FE, $1F, $01   ; 

- D 3 - I - 0x01E993 07:E983: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E995 07:E985: 28        .byte $28, $28, $28, $20, $4C, $D3, $F0, $E2, $CF, $CF, $4F, $0F, $83, $E0, $38, $1C   ; 

- D 3 - I - 0x01E9A5 07:E995: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E9A7 07:E997: 80        .byte $80, $FF, $00   ; 

- D 3 - I - 0x01E9AA 07:E99A: 06        .byte $06, $05   ; control byte for FF + counter

- D 3 - I - 0x01E9AC 07:E99C: 7F        .byte $7F   ; 

- D 3 - I - 0x01E9AD 07:E99D: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E9AF 07:E99F: F0        .byte $F0, $0C   ; 

- D 3 - I - 0x01E9B1 07:E9A1: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01E9B3 07:E9A3: 0F        .byte $0F, $03   ; 

- D 3 - I - 0x01E9B5 07:E9A5: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01E9B7 07:E9A7: 60        .byte $60, $80   ; 

- D 3 - I - 0x01E9B9 07:E9A9: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01E9BB 07:E9AB: BF        .byte $BF, $1E   ; 

- D 3 - I - 0x01E9BD 07:E9AD: 06        .byte $06, $07   ; control byte for FF + counter

- D 3 - I - 0x01E9BF 07:E9AF: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01E9C1 07:E9B1: FF        .byte $FF, $FE, $FE, $FE, $FE, $FE, $FA, $FA, $03   ; 

- D 3 - I - 0x01E9CA 07:E9BA: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E9CC 07:E9BC: 04        .byte $04, $04, $FC, $4F, $4F, $0F, $5F, $90, $20, $47, $80   ; 

- D 3 - I - 0x01E9D7 07:E9C7: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E9D9 07:E9C9: 40        .byte $40, $80, $0F   ; 

- D 3 - I - 0x01E9DC 07:E9CC: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E9DE 07:E9CE: F1        .byte $F1, $FC   ; 

- D 3 - I - 0x01E9E0 07:E9D0: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01E9E2 07:E9D2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01E9E4 07:E9D4: FF        .byte $FF   ; 

- D 3 - I - 0x01E9E5 07:E9D5: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01E9E7 07:E9D7: FF        .byte $FF   ; 

- D 3 - I - 0x01E9E8 07:E9D8: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01E9EA 07:E9DA: 02        .byte $02, $00, $41, $80, $00, $40, $D0, $00, $80, $81, $80, $40, $C0, $20, $20, $10   ; 
- D 3 - I - 0x01E9FA 07:E9EA: D9        .byte $D9, $2C, $04, $91, $46   ; 

- D 3 - I - 0x01E9FF 07:E9EF: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EA01 07:E9F1: A5        .byte $A5, $D3, $CB, $5E, $38   ; 

- D 3 - I - 0x01EA06 07:E9F6: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EA08 07:E9F8: 41        .byte $41, $81, $82, $02, $02, $04, $04, $08, $80   ; 

- D 3 - I - 0x01EA11 07:EA01: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA13 07:EA03: 3F        .byte $3F, $4F, $58, $50, $40, $40, $3F   ; 

- D 3 - I - 0x01EA1A 07:EA0A: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EA1C 07:EA0C: 3F        .byte $3F, $3F, $3F, $3F, $3F, $00, $03   ; 

- D 3 - I - 0x01EA23 07:EA13: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EA25 07:EA15: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EA27 07:EA17: 03        .byte $03, $0F, $FF   ; 

- D 3 - I - 0x01EA2A 07:EA1A: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EA2C 07:EA1C: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01EA2E 07:EA1E: FC        .byte $FC, $F0   ; 

- D 3 - I - 0x01EA30 07:EA20: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EA32 07:EA22: FF        .byte $FF, $F1, $03, $FE, $FC, $F8, $E3, $FF, $00, $FE, $FC   ; 

- D 3 - I - 0x01EA3D 07:EA2D: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EA3F 07:EA2F: 10        .byte $10, $A7, $67, $4F, $9F, $3F   ; 

- D 3 - I - 0x01EA45 07:EA35: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EA47 07:EA37: E0        .byte $E0   ; 

- D 3 - I - 0x01EA48 07:EA38: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA4A 07:EA3A: 06        .byte $06, $07   ; control byte for FF + counter

- D 3 - I - 0x01EA4C 07:EA3C: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA4E 07:EA3E: FF        .byte $FF   ; 

- D 3 - I - 0x01EA4F 07:EA3F: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EA51 07:EA41: FF        .byte $FF   ; 

- D 3 - I - 0x01EA52 07:EA42: 05        .byte $05, $0C   ; control byte for 00 + counter

- D 3 - I - 0x01EA54 07:EA44: 07        .byte $07, $0F, $3F, $FF   ; 

- D 3 - I - 0x01EA58 07:EA48: 05        .byte $05, $0C   ; control byte for 00 + counter

- D 3 - I - 0x01EA5A 07:EA4A: FC        .byte $FC, $FE   ; 

- D 3 - I - 0x01EA5C 07:EA4C: 06        .byte $06, $02   ; control byte for FF + counter


- D 3 - I - 0x01EA5E 07:EA4E: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA60 07:EA50: 08        .byte $08, $04   ; 

- D 3 - I - 0x01EA62 07:EA52: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EA64 07:EA54: 80        .byte $80, $FF   ; 

- D 3 - I - 0x01EA66 07:EA56: 05        .byte $05, $0F   ; control byte for 00 + counter

- D 3 - I - 0x01EA68 07:EA58: FF        .byte $FF   ; 

- D 3 - I - 0x01EA69 07:EA59: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA6B 07:EA5B: 10        .byte $10, $20, $00, $01, $0F, $3E   ; 

- D 3 - I - 0x01EA71 07:EA61: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EA73 07:EA63: 05        .byte $05, $0B   ; control byte for 00 + counter

- D 3 - I - 0x01EA75 07:EA65: 80        .byte $80   ; 

- D 3 - I - 0x01EA76 07:EA66: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EA78 07:EA68: FF        .byte $FF   ; 

- D 3 - I - 0x01EA79 07:EA69: 05        .byte $05, $0E   ; control byte for 00 + counter

- D 3 - I - 0x01EA7B 07:EA6B: 03        .byte $03, $FF   ; 

- D 3 - I - 0x01EA7D 07:EA6D: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA7F 07:EA6F: 03        .byte $03, $00, $01, $07, $1F, $7F   ; 

- D 3 - I - 0x01EA85 07:EA75: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EA87 07:EA77: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA89 07:EA79: FF        .byte $FF, $7F   ; 

- D 3 - I - 0x01EA8B 07:EA7B: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01EA8D 07:EA7D: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EA8F 07:EA7F: 06        .byte $06, $08   ; 

- D 3 - I - 0x01EA91 07:EA81: 05        .byte $05, $08   ; control byte for 00 + counter



off_08_EA83:
off_06_07_EA83:
- D 3 - I - 0x01EA93 07:EA83: 02        .byte $02   ; prepare control byte for 00
- D 3 - I - 0x01EA94 07:EA84: 03        .byte $03   ; prepare control byte for FF

- D 3 - I - 0x01EA95 07:EA85: 02        .byte $02, $1F, $80   ; normal bytes


; bzk garbage? counter 02
- - - - - - 0x01EA98 07:EA88: 00        .byte $00   ; 
- - - - - - 0x01EA99 07:EA89: FF        .byte $FF   ; 
- - - - - - 0x01EA9A 07:EA8A: FF        .byte $FF   ; 
- - - - - - 0x01EA9B 07:EA8B: 08        .byte $08   ; 
- - - - - - 0x01EA9C 07:EA8C: 00        .byte $00   ; 
- - - - - - 0x01EA9D 07:EA8D: 08        .byte $08   ; 



off_0A_EA8E:
- D 3 - I - 0x01EA9E 07:EA8E: 02        .byte $02   ; prepare control byte for 00
- D 3 - I - 0x01EA9F 07:EA8F: 06        .byte $06   ; prepare control byte for FF

- D 3 - I - 0x01EAA0 07:EA90: 02        .byte $02, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EAA2 07:EA92: 06        .byte $06, $11   ; control byte for FF + counter

- D 3 - I - 0x01EAA4 07:EA94: 80        .byte $80, $80, $80, $80, $80, $80, $80   ; normal bytes

- D 3 - I - 0x01EAAB 07:EA9B: 06        .byte $06, $09   ; control byte for FF + counter

- D 3 - I - 0x01EAAD 07:EA9D: 02        .byte $02, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EAAF 07:EA9F: FE        .byte $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE, $FE   ; 

- D 3 - I - 0x01EAB8 07:EAA8: 02        .byte $02, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EABA 07:EAAA: F0        .byte $F0, $FC, $FC, $FF, $FC, $30, $00   ; 

- D 3 - I - 0x01EAC1 07:EAB1: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01EAC3 07:EAB3: 02        .byte $02, $09   ; control byte for 00 + counter

- D 3 - I - 0x01EAC5 07:EAB5: 06        .byte $06, $07   ; control byte for FF + counter

- D 3 - I - 0x01EAC7 07:EAB7: 00        .byte $00, $14, $14, $14, $14, $14, $14, $14, $00, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
- D 3 - I - 0x01EAD7 07:EAC7: 00        .byte $00, $01, $0F, $7F, $FF, $1F, $04, $00   ; 

- D 3 - I - 0x01EADF 07:EACF: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01EAE1 07:EAD1: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EAE3 07:EAD3: 04        .byte $04, $0C, $3C, $04   ; 

- D 3 - I - 0x01EAE7 07:EAD7: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EAE9 07:EAD9: FF        .byte $FF, $FD, $FD, $FD, $FD, $FD, $FD, $FD   ; 

- D 3 - I - 0x01EAF1 07:EAE1: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EAF3 07:EAE3: 04        .byte $04, $04, $0C, $1C, $30, $00   ; 

- D 3 - I - 0x01EAF9 07:EAE9: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EAFB 07:EAEB: FD        .byte $FD, $FD, $FD, $FD, $FD, $FD, $00, $30, $1C, $0C, $04, $04   ; 

- D 3 - I - 0x01EB07 07:EAF7: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EB09 07:EAF9: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EB0B 07:EAFB: FD        .byte $FD, $FD, $FD, $FD, $FD, $FD   ; 

- D 3 - I - 0x01EB11 07:EB01: 02        .byte $02, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EB13 07:EB03: FD        .byte $FD, $FD, $FD, $FD, $FD, $FD, $FD, $FD, $00, $AA, $88   ; 

- D 3 - I - 0x01EB1E 07:EB0E: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EB20 07:EB10: FF        .byte $FF   ; 

- D 3 - I - 0x01EB21 07:EB11: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EB23 07:EB13: 22        .byte $22, $AA, $AA, $AA   ; 

- D 3 - I - 0x01EB27 07:EB17: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EB29 07:EB19: 38        .byte $38, $31, $63, $C3, $C3, $C0, $3E, $81, $3F, $0E, $1C, $3C, $3C, $18, $00, $01   ; 
- D 3 - I - 0x01EB39 07:EB29: E3        .byte $E3, $C3, $C3, $87, $87, $00, $7B, $00, $FF, $3C, $3C, $78, $78, $30, $08, $2C   ; 

- D 3 - I - 0x01EB49 07:EB39: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01EB4B 07:EB3B: 02        .byte $02, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EB4D 07:EB3D: 81        .byte $81, $83, $83, $83, $C1, $FF, $C3, $C3   ; 

- D 3 - I - 0x01EB55 07:EB45: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EB57 07:EB47: 01        .byte $01, $01, $3F, $3C, $3C, $80, $80, $CC, $DC, $98, $FF, $87, $87, $1C, $0C, $0C   ; 
- D 3 - I - 0x01EB67 07:EB57: 9C        .byte $9C, $98, $FF, $78, $78, $E7, $F7, $E7, $E7, $E7, $E7, $E7, $C7   ; 

- D 3 - I - 0x01EB74 07:EB64: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EB76 07:EB66: 04        .byte $04, $3C, $3C, $30, $10, $00, $E7, $E7, $E7, $E7, $F7, $E7, $CB, $C9, $00, $08   ; 
- D 3 - I - 0x01EB86 07:EB76: 20        .byte $20, $3C, $3C, $1C, $34, $00, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $C3, $3C, $3C   ; 
- D 3 - I - 0x01EB96 07:EB86: 3C        .byte $3C, $3C, $3C, $3C, $3C, $3C, $87, $87, $87, $87, $87, $87, $87, $87, $78, $78   ; 
- D 3 - I - 0x01EBA6 07:EB96: 78        .byte $78, $78, $78, $78, $78, $78, $E0, $FF, $80, $80, $80, $80, $80, $F5, $1F, $7F   ; 
- D 3 - I - 0x01EBB6 07:EBA6: 7F        .byte $7F, $3F, $3F   ; 

- D 3 - I - 0x01EBB9 07:EBA9: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EBBB 07:EBAB: 1F        .byte $1F, $DF, $5F, $5F, $7C, $30, $27, $D8, $E0, $E0, $E0, $E0, $C3, $0F, $1F, $38   ; 

- D 3 - I - 0x01EBCB 07:EBBB: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EBCD 07:EBBD: F0        .byte $F0, $8F, $78, $07, $80, $4C   ; 

- D 3 - I - 0x01EBD3 07:EBC3: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EBD5 07:EBC5: 0F        .byte $0F, $7F   ; 

- D 3 - I - 0x01EBD7 07:EBC7: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01EBD9 07:EBC9: 7F        .byte $7F, $F8, $80, $30, $C0, $00, $F0, $0F, $00, $05, $7B, $F4, $F9, $FC   ; 

- D 3 - I - 0x01EBE7 07:EBD7: 06        .byte $06, $03   ; control byte for FF + counter

- D 3 - I - 0x01EBE9 07:EBD9: 3F        .byte $3F, $9F, $47, $A0   ; 

- D 3 - I - 0x01EBED 07:EBDD: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EBEF 07:EBDF: FF        .byte $FF, $00, $C0, $E0, $F8   ; 

- D 3 - I - 0x01EBF4 07:EBE4: 06        .byte $06, $08   ; control byte for FF + counter

- D 3 - I - 0x01EBF6 07:EBE6: 7F        .byte $7F, $03, $00, $E0, $42   ; 

- D 3 - I - 0x01EBFB 07:EBEB: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EBFD 07:EBED: 80        .byte $80, $FC   ; 

- D 3 - I - 0x01EBFF 07:EBEF: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EC01 07:EBF1: C3        .byte $C3   ; 

- D 3 - I - 0x01EC02 07:EBF2: 06        .byte $06, $05   ; control byte for FF + counter

- D 3 - I - 0x01EC04 07:EBF4: 7F        .byte $7F, $7F, $7F   ; 

- D 3 - I - 0x01EC07 07:EBF7: 02        .byte $02, $05   ; control byte for 00 + counter

- D 3 - I - 0x01EC09 07:EBF9: 80        .byte $80, $80, $80, $C3, $C3, $FF, $C0   ; 

- D 3 - I - 0x01EC10 07:EC00: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01EC12 07:EC02: 3C        .byte $3C, $3C   ; 

- D 3 - I - 0x01EC14 07:EC04: 02        .byte $02, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EC16 07:EC06: 87        .byte $87, $87, $FF, $00   ; 

- D 3 - I - 0x01EC1A 07:EC0A: 06        .byte $06, $04   ; control byte for FF + counter

- D 3 - I - 0x01EC1C 07:EC0C: 78        .byte $78, $78   ; 

- D 3 - I - 0x01EC1E 07:EC0E: 02        .byte $02, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EC20 07:EC10: F4        .byte $F4, $B0, $80, $80, $DF, $FC, $C0, $FF   ; 

- D 3 - I - 0x01EC28 07:EC18: 02        .byte $02, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EC2A 07:EC1A: 30        .byte $30, $23, $04, $04, $E4, $03, $00, $F8, $70, $60, $03, $01   ; 

- D 3 - I - 0x01EC36 07:EC26: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EC38 07:EC28: 23        .byte $23, $10, $98, $8C, $83   ; 

- D 3 - I - 0x01EC3D 07:EC2D: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EC3F 07:EC2F: 3F        .byte $3F, $3F, $1F, $1F, $0F, $03   ; 

- D 3 - I - 0x01EC45 07:EC35: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EC47 07:EC37: C0        .byte $C0, $30, $0F, $80   ; 

- D 3 - I - 0x01EC4B 07:EC3B: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EC4D 07:EC3D: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01EC4F 07:EC3F: 02        .byte $02, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EC51 07:EC41: FF        .byte $FF   ; 

- D 3 - I - 0x01EC52 07:EC42: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EC54 07:EC44: 06        .byte $06, $06   ; control byte for FF + counter

- D 3 - I - 0x01EC56 07:EC46: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EC58 07:EC48: 81        .byte $81, $18, $24, $24, $24, $18, $00, $C1, $81, $00, $18, $08   ; 

- D 3 - I - 0x01EC64 07:EC54: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EC66 07:EC56: 7F        .byte $7F   ; 

- D 3 - I - 0x01EC67 07:EC57: 06        .byte $06, $02   ; control byte for FF + counter

- D 3 - I - 0x01EC69 07:EC59: 7F        .byte $7F, $7F, $7F, $7F, $FF, $80, $80, $80   ; 

- D 3 - I - 0x01EC71 07:EC61: 02        .byte $02, $05   ; control byte for 00 + counter



off_0A_EC63:
- D 3 - I - 0x01EC73 07:EC63: 02        .byte $02   ; prepare control byte for 00
- D 3 - I - 0x01EC74 07:EC64: 05        .byte $05   ; prepare control byte for FF

- D 3 - I - 0x01EC75 07:EC65: 1F        .byte $1F, $15, $9B, $9A, $8D, $8A, $8D, $46, $0D, $EA, $64, $45, $42, $45, $42, $21   ; normal bytes
- D 3 - I - 0x01EC85 07:EC75: F8        .byte $F8, $5F, $FF, $BB, $73, $B3, $73, $E6, $F8, $F7, $11, $E1, $E1, $E1, $C1, $C2   ; 
- D 3 - I - 0x01EC95 07:EC85: 45        .byte $45, $26, $1F   ; 

- D 3 - I - 0x01EC98 07:EC88: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EC9A 07:EC8A: 0F        .byte $0F, $0F, $22, $19   ; 

- D 3 - I - 0x01EC9E 07:EC8E: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01ECA0 07:EC90: 07        .byte $07, $00, $66, $FC, $F8, $E0, $60, $E0, $F0, $F0, $C2, $C4, $18, $C0, $40, $C0   ; 
- D 3 - I - 0x01ECB0 07:ECA0: B0        .byte $B0, $10, $FF, $AA, $DF, $D5, $6B, $55, $6B, $37, $6F, $57, $20, $2F, $17, $2F   ; 
- D 3 - I - 0x01ECC0 07:ECB0: 16        .byte $16, $0E, $FF, $AB, $7F, $57, $AE, $56, $AE, $DC, $BF, $5E, $82, $BC, $5C, $BC   ; 
- D 3 - I - 0x01ECD0 07:ECC0: 58        .byte $58, $38, $16, $0E, $1E, $1E   ; 

- D 3 - I - 0x01ECD6 07:ECC6: 05        .byte $05, $02   ; control byte for FF + counter

- D 3 - I - 0x01ECD8 07:ECC8: 02        .byte $02   ; 

- D 3 - I - 0x01ECD9 07:ECC9: 02        .byte $02, $0C   ; control byte for 00 + counter

- D 3 - I - 0x01ECDB 07:ECCB: 0C        .byte $0C, $00, $2C, $5F, $01   ; 

- D 3 - I - 0x01ECE0 07:ECD0: 02        .byte $02, $02   ; control byte for 00 + counter

- D 3 - I - 0x01ECE2 07:ECD2: EF        .byte $EF, $AB, $DF, $D5, $6A, $56, $6A, $34, $FF, $55, $20, $2E, $14, $2C, $14, $08   ; 
- D 3 - I - 0x01ECF2 07:ECE2: 04        .byte $04, $04, $0C, $6E, $5A   ; 

- D 3 - I - 0x01ECF7 07:ECE7: 02        .byte $02, $04   ; control byte for 00 + counter

- D 3 - I - 0x01ECF9 07:ECE9: 08        .byte $08, $00, $1E, $26   ; 

- D 3 - I - 0x01ECFD 07:ECED: 02        .byte $02, $03   ; control byte for 00 + counter

- D 3 - I - 0x01ECFF 07:ECEF: 7F        .byte $7F, $1F, $0F, $03, $0C, $0F, $FF, $00, $FF, $1F, $0F, $0F, $03, $08   ; 

- D 3 - I - 0x01ED0D 07:ECFD: 05        .byte $05, $02   ; control byte for FF + counter

- D 3 - I - 0x01ED0F 07:ECFF: FE        .byte $FE, $FD, $F2, $CE, $3E, $FE, $FE, $00, $FF, $FE, $FD, $F3, $CF, $3F   ; 

- D 3 - I - 0x01ED1D 07:ED0D: 05        .byte $05, $02   ; control byte for FF + counter



off_06_07_ED0F:
off_09_ED0F:
off_0A_ED0F:
- D 3 - I - 0x01ED1F 07:ED0F: 05        .byte $05   ; prepare control byte for 00
- D 3 - I - 0x01ED20 07:ED10: 12        .byte $12   ; prepare control byte for FF

- D 3 - I - 0x01ED21 07:ED11: 3F        .byte $3F, $65, $4F, $BF, $FB, $DF, $F2, $AF, $00, $1A, $30, $41, $1D, $3D, $3F, $72   ; normal bytes
- D 3 - I - 0x01ED31 07:ED21: 00        .byte $00, $80, $C0, $C0, $C0, $80, $00, $80   ; 

- D 3 - I - 0x01ED39 07:ED29: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01ED3B 07:ED2B: 80        .byte $80, $C0, $80, $00, $72, $7E, $FE, $DC, $FF, $7D, $6F, $36   ; 

- D 3 - I - 0x01ED47 07:ED37: 12        .byte $12, $02   ; control byte for FF + counter

- D 3 - I - 0x01ED49 07:ED39: 7F        .byte $7F, $3F, $3F, $3E, $3F, $2F, $00, $80, $80, $80   ; 

- D 3 - I - 0x01ED53 07:ED43: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01ED55 07:ED45: 80        .byte $80, $80, $80, $80, $80, $80, $80, $00, $08   ; 

- D 3 - I - 0x01ED5E 07:ED4E: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01ED60 07:ED50: 06        .byte $06   ; 

- D 3 - I - 0x01ED61 07:ED51: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01ED63 07:ED53: 2A        .byte $2A, $2B, $7F, $7C, $CE, $DF, $DF, $F2, $2A, $7F   ; 

- D 3 - I - 0x01ED6D 07:ED5D: 12        .byte $12, $02   ; control byte for FF + counter

- D 3 - I - 0x01ED6F 07:ED5F: F7        .byte $F7, $FF, $BF, $BF, $80, $80, $80, $00, $80, $00, $80, $00, $80, $80, $80, $80   ; 
- D 3 - I - 0x01ED7F 07:ED6F: 00        .byte $00, $80, $80, $80, $BB, $6F, $F2, $FE, $5C, $7F, $6E, $7F, $F6, $F2, $7F, $7F   ; 
- D 3 - I - 0x01ED8F 07:ED7F: BF        .byte $BF, $7F, $7D, $6F, $00, $80   ; 

- D 3 - I - 0x01ED95 07:ED85: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01ED97 07:ED87: 80        .byte $80, $00, $80, $80, $80, $80, $80, $80, $36, $08   ; 

- D 3 - I - 0x01EDA1 07:ED91: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EDA3 07:ED93: 2F        .byte $2F, $06   ; 

- D 3 - I - 0x01EDA5 07:ED95: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EDA7 07:ED97: 07        .byte $07, $1E, $3F, $7F, $FE, $F5   ; 

- D 3 - I - 0x01EDAD 07:ED9D: 12        .byte $12, $02   ; control byte for FF + counter

- D 3 - I - 0x01EDAF 07:ED9F: 00        .byte $00, $01, $00, $01, $07, $0E, $0F, $00, $C0, $E0, $70, $F0, $E0, $A0, $E0, $E0   ; 

- D 3 - I - 0x01EDBF 07:EDAF: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EDC1 07:EDB1: 80        .byte $80   ; 

- D 3 - I - 0x01EDC2 07:EDB2: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EDC4 07:EDB4: 60        .byte $60, $E0, $00, $FF, $5F, $7F, $6F, $77, $3F, $0B, $09, $0C, $24, $23, $33, $09   ; 
- D 3 - I - 0x01EDD4 07:EDC4: 0F        .byte $0F, $1F, $0F, $E0, $A0, $80, $80, $C0, $80, $C0, $80, $00, $C0, $E0, $E0, $E0   ; 
- D 3 - I - 0x01EDE4 07:EDD4: 60        .byte $60, $E0, $C0   ; 

- D 3 - I - 0x01EDE7 07:EDD7: 05        .byte $05, $08   ; control byte for 00 + counter

- D 3 - I - 0x01EDE9 07:EDD9: 03        .byte $03   ; 

- D 3 - I - 0x01EDEA 07:EDDA: 05        .byte $05, $0F   ; control byte for 00 + counter

- D 3 - I - 0x01EDEC 07:EDDC: 80        .byte $80   ; 

- D 3 - I - 0x01EDED 07:EDDD: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EDEF 07:EDDF: 02        .byte $02, $16, $16, $3F, $7E, $79, $7F, $6F, $06, $1F, $3F, $7F, $7F, $7E, $EB, $DF   ; 
- D 3 - I - 0x01EDFF 07:EDEF: 40        .byte $40, $40, $D0, $D0, $A0, $40, $80, $C0, $E0, $E0, $F0, $F0, $E0, $80, $C0, $C0   ; 
- D 3 - I - 0x01EE0F 07:EDFF: 7F        .byte $7F, $7F, $2F, $37, $7D, $7F, $2F, $5D, $DF, $C0, $D8, $79, $3F, $3F, $5F, $7E   ; 
- D 3 - I - 0x01EE1F 07:EE0F: 80        .byte $80, $C0, $C0, $40   ; 

- D 3 - I - 0x01EE23 07:EE13: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EE25 07:EE15: 80        .byte $80, $00, $C0   ; 

- D 3 - I - 0x01EE28 07:EE18: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EE2A 07:EE1A: 80        .byte $80, $C0, $C0, $C0, $C0, $17, $1B, $04   ; 

- D 3 - I - 0x01EE32 07:EE22: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01EE34 07:EE24: 3F        .byte $3F, $37, $03   ; 

- D 3 - I - 0x01EE37 07:EE27: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01EE39 07:EE29: 80        .byte $80   ; 

- D 3 - I - 0x01EE3A 07:EE2A: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EE3C 07:EE2C: C0        .byte $C0, $80   ; 

- D 3 - I - 0x01EE3E 07:EE2E: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EE40 07:EE30: 0F        .byte $0F, $1F, $37, $3F, $7F, $7E, $77, $77   ; 

- D 3 - I - 0x01EE48 07:EE38: 05        .byte $05, $02   ; control byte for 00 + counter

- D 3 - I - 0x01EE4A 07:EE3A: 08        .byte $08, $04, $04, $07, $0F, $0F, $C0, $E0, $F0, $F0, $F0, $E0, $E0, $C0   ; 

- D 3 - I - 0x01EE58 07:EE48: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EE5A 07:EE4A: E0        .byte $E0, $E0, $47, $5F, $7F, $77, $3F, $3B, $1B, $0D, $3C, $3F, $1F, $0F, $0F, $0F   ; 
- D 3 - I - 0x01EE6A 07:EE5A: 0F        .byte $0F, $0B, $E0, $A0, $A0, $00, $C0, $80, $C0, $80, $80, $E0, $E0, $E0, $E0, $60   ; 
- D 3 - I - 0x01EE7A 07:EE6A: E0        .byte $E0, $C0, $02   ; 

- D 3 - I - 0x01EE7D 07:EE6D: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EE7F 07:EE6F: 01        .byte $01   ; 

- D 3 - I - 0x01EE80 07:EE70: 05        .byte $05, $0F   ; control byte for 00 + counter

- D 3 - I - 0x01EE82 07:EE72: 80        .byte $80   ; 

- D 3 - I - 0x01EE83 07:EE73: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EE85 07:EE75: 1F        .byte $1F, $2B, $5F, $5E, $7B, $73, $7F, $7F, $00, $14, $20, $21, $07, $0F, $0F, $00   ; 
- D 3 - I - 0x01EE95 07:EE85: E0        .byte $E0, $F0, $F0, $F0, $20, $E0, $C0, $E0   ; 

- D 3 - I - 0x01EE9D 07:EE8D: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EE9F 07:EE8F: C0        .byte $C0, $E0, $E0, $00, $77, $6F, $3E, $2F, $37, $0E, $0B, $0D, $0C, $1C, $1F, $1F   ; 
- D 3 - I - 0x01EEAF 07:EE9F: 0F        .byte $0F, $1F, $1F, $1B, $E0, $A0, $80, $00, $C0, $80, $C0, $80, $00, $C0, $E0, $E0   ; 
- D 3 - I - 0x01EEBF 07:EEAF: E0        .byte $E0, $60, $E0, $C0, $02   ; 

- D 3 - I - 0x01EEC4 07:EEB4: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EEC6 07:EEB6: 01        .byte $01   ; 

- D 3 - I - 0x01EEC7 07:EEB7: 05        .byte $05, $0F   ; control byte for 00 + counter

- D 3 - I - 0x01EEC9 07:EEB9: 80        .byte $80   ; 

- D 3 - I - 0x01EECA 07:EEBA: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EECC 07:EEBC: 03        .byte $03, $0D, $1B, $3F, $36, $7A, $78, $77, $00, $02, $04, $00, $09, $07, $07, $08   ; 
- D 3 - I - 0x01EEDC 07:EECC: 80        .byte $80, $E0, $F0, $F0, $78, $18, $18, $70   ; 

- D 3 - I - 0x01EEE4 07:EED4: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EEE6 07:EED6: 80        .byte $80, $E0, $E0, $80, $7D, $6C, $68, $79, $3B, $11, $10, $04, $0A, $1F, $1F, $0E   ; 
- D 3 - I - 0x01EEF6 07:EEE6: 0C        .byte $0C, $0F, $0F, $1B, $50, $80, $80, $80, $C0, $80, $20, $20, $A0, $60, $60, $60   ; 
- D 3 - I - 0x01EF06 07:EEF6: 20        .byte $20, $E0, $C0, $C0, $03   ; 

- D 3 - I - 0x01EF0B 07:EEFB: 05        .byte $05, $07   ; control byte for 00 + counter

- D 3 - I - 0x01EF0D 07:EEFD: 0C        .byte $0C, $07   ; 

- D 3 - I - 0x01EF0F 07:EEFF: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EF11 07:EF01: C0        .byte $C0, $80   ; 

- D 3 - I - 0x01EF13 07:EF03: 05        .byte $05, $0E   ; control byte for 00 + counter

- D 3 - I - 0x01EF15 07:EF05: 0F        .byte $0F, $1F, $3F, $3F, $77, $7F, $6F, $6F   ; 

- D 3 - I - 0x01EF1D 07:EF0D: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EF1F 07:EF0F: 08        .byte $08, $0F, $1F, $19, $C0, $E0, $F0, $F0, $30, $F8, $B8, $F8   ; 

- D 3 - I - 0x01EF2B 07:EF1B: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EF2D 07:EF1D: C0        .byte $C0, $C0, $C0, $00, $69, $7F, $5E, $7F, $7D, $7F, $7F, $77, $1F, $0F, $2F, $2F   ; 
- D 3 - I - 0x01EF3D 07:EF2D: 4E        .byte $4E, $4F, $2B, $0C, $38, $B8, $B8, $B8, $B8, $F8, $38, $F8, $C0, $C0, $C0, $E0   ; 
- D 3 - I - 0x01EF4D 07:EF3D: D0        .byte $D0, $90, $E0, $00, $76, $30, $10   ; 

- D 3 - I - 0x01EF54 07:EF44: 05        .byte $05, $05   ; control byte for 00 + counter

- D 3 - I - 0x01EF56 07:EF46: 0F        .byte $0F, $06   ; 

- D 3 - I - 0x01EF58 07:EF48: 05        .byte $05, $06   ; control byte for 00 + counter

- D 3 - I - 0x01EF5A 07:EF4A: F0        .byte $F0, $30, $20   ; 

- D 3 - I - 0x01EF5D 07:EF4D: 05        .byte $05, $0E   ; control byte for 00 + counter

- D 3 - I - 0x01EF5F 07:EF4F: 06        .byte $06, $0F, $1F, $1B, $33, $37, $27, $07, $1F, $3F, $3F, $3F, $7D, $79, $7F, $00   ; 
- D 3 - I - 0x01EF6F 07:EF5F: 80        .byte $80, $40, $B0, $50, $98, $68, $E8, $C0, $F0, $F8, $F8, $F8, $7C, $DC, $DC, $6E   ; 
- D 3 - I - 0x01EF7F 07:EF6F: 67        .byte $67, $64, $6F, $6F, $6F, $4F, $4F, $F7, $FC, $FF, $F7, $F7, $F7, $F6, $F7, $88   ; 
- D 3 - I - 0x01EF8F 07:EF7F: E8        .byte $E8, $A8, $E8, $60, $C8, $E8, $A0, $FC, $9C, $DC, $DC, $DC, $FC, $5C, $DC, $5D   ; 
- D 3 - I - 0x01EF9F 07:EF8F: 5E        .byte $5E, $0A, $C0, $40   ; 

- D 3 - I - 0x01EFA3 07:EF93: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EFA5 07:EF95: E7        .byte $E7, $E3, $F7, $63   ; 

- D 3 - I - 0x01EFA9 07:EF99: 05        .byte $05, $04   ; control byte for 00 + counter

- D 3 - I - 0x01EFAB 07:EF9B: E8        .byte $E8, $D4, $50, $14, $08   ; 

- D 3 - I - 0x01EFB0 07:EFA0: 05        .byte $05, $03   ; control byte for 00 + counter

- D 3 - I - 0x01EFB2 07:EFA2: 9C        .byte $9C, $08, $8C, $08, $05, $04   ; 



off_06_07_EFA8:
- D 3 - I - 0x01EFB8 07:EFA8: 03        .byte $03, $0F, $1E, $3C, $38, $78, $70, $F0, $03, $00, $01, $03, $07, $07, $0F, $0F   ; 
- D 3 - I - 0x01EFC8 07:EFB8: E0        .byte $E0, $B8, $0C, $06, $02, $03, $07, $01, $E0, $78, $FC, $FE, $FE, $FF, $FF, $FF   ; 
- D 3 - I - 0x01EFD8 07:EFC8: 03        .byte $03, $0B, $47, $E7, $DF, $EE, $B6, $6C, $FF, $FF, $BF, $1F, $2F, $56, $CA, $F0   ; 
- D 3 - I - 0x01EFE8 07:EFD8: E0        .byte $E0, $E0, $F0, $F0, $F9, $FD, $FB, $B7, $1F, $1F, $0F, $0F, $06, $02, $04, $49   ; 
- D 3 - I - 0x01EFF8 07:EFE8: 07        .byte $07, $07, $07, $07, $03, $3F, $47, $82, $00, $00, $00, $00, $00, $30, $78, $FD   ; 
- D 3 - I - 0x01F008 07:EFF8: EB        .byte $EB, $F6, $FE, $FC, $70, $A0, $E0, $C0, $3F, $1E, $8E, $CC, $E0, $40, $00, $00   ; 
- D 3 - I - 0x01F018 07:F008: 0B        .byte $0B, $2D, $6D, $7E, $FB, $D9, $B0, $30, $F6, $D3, $93, $81, $04, $26, $4F, $CF   ; 
- D 3 - I - 0x01F028 07:F018: 0C        .byte $0C, $18, $18, $30, $31, $71, $63, $E2, $07, $0F, $0F, $1F, $1E, $1E, $3C, $3D   ; 
- D 3 - I - 0x01F038 07:F028: C3        .byte $C3, $87, $87, $87, $2F, $1E, $0E, $1E, $3D, $79, $79, $79, $D1, $E2, $F2, $E6   ; 
- D 3 - I - 0x01F048 07:F038: C5        .byte $C5, $C9, $8B, $83, $87, $8F, $03, $07, $7A, $76, $F4, $FC, $F8, $F0, $FC, $F8   ; 
- D 3 - I - 0x01F058 07:F048: 38        .byte $38, $39, $71, $70, $70, $71, $E0, $E0, $0F, $0E, $1E, $1F, $1F, $1E, $3F, $3F   ; 
- D 3 - I - 0x01F068 07:F058: F3        .byte $F3, $F0, $70, $78, $1E, $0F, $01, $00, $2C, $2F, $0F, $07, $01, $00, $00, $00   ; 
- D 3 - I - 0x01F078 07:F068: F3        .byte $F3, $9F, $00, $00, $04, $E2, $FF, $07, $0C, $60, $FF, $FF, $FB, $1D, $00, $00   ; 
- D 3 - I - 0x01F088 07:F078: 80        .byte $80, $E0, $FF, $18, $11, $10, $33, $FF, $80, $00, $01, $E7, $EF, $EF, $CC, $00   ; 
- D 3 - I - 0x01F098 07:F088: FC        .byte $FC, $86, $1D, $05, $3B, $FF, $06, $00, $1C, $7A, $FF, $FF, $C4, $00, $00, $00   ; 



off_09_F098:
off_0A_F098:
- D 3 - I - 0x01F0A8 07:F098: 00        .byte $00   ; prepare control byte for 00
- D 3 - I - 0x01F0A9 07:F099: FF        .byte $FF   ; prepare control byte for FF

- D 3 - I - 0x01F0AA 07:F09A: 00        .byte $00, $10   ; control byte for 00 + counter

- D 3 - I - 0x01F0AC 07:F09C: FF        .byte $FF, $08   ; control byte for FF + counter

- D 3 - I - 0x01F0AE 07:F09E: 00        .byte $00, $08   ; control byte for 00 + counter

- D 3 - I - 0x01F0B0 07:F0A0: 00        .byte $00, $08   ; control byte for 00 + counter

- D 3 - I - 0x01F0B2 07:F0A2: FF        .byte $FF, $08   ; control byte for FF + counter



off_0A_F0A4:
- D 3 - I - 0x01F0B4 07:F0A4: 0B        .byte $0B   ; prepare control byte for 00
- D 3 - I - 0x01F0B5 07:F0A5: 17        .byte $17   ; prepare control byte for FF

- D 3 - I - 0x01F0B6 07:F0A6: 3C        .byte $3C, $38, $70, $68, $51, $EB, $F4, $FF, $38, $30, $60, $40, $41, $E3, $F0, $FF   ; normal bytes
- D 3 - I - 0x01F0C6 07:F0B6: 1F        .byte $1F, $2A, $15, $0A, $D5, $CB, $1F, $FF, $0F   ; 

- D 3 - I - 0x01F0CF 07:F0BF: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F0D1 07:F0C1: C0        .byte $C0, $C1, $0F, $FF, $F0, $A0, $53, $A8, $55, $FA   ; 

- D 3 - I - 0x01F0DB 07:F0CB: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F0DD 07:F0CD: F0        .byte $F0, $00, $03   ; 

- D 3 - I - 0x01F0E0 07:F0D0: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F0E2 07:F0D2: F8        .byte $F8   ; 

- D 3 - I - 0x01F0E3 07:F0D3: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F0E5 07:F0D5: 3C        .byte $3C, $CC, $F6, $F2, $F4, $AB   ; 

- D 3 - I - 0x01F0EB 07:F0DB: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F0ED 07:F0DD: 3C        .byte $3C, $CC, $F6, $F0, $00, $03   ; 

- D 3 - I - 0x01F0F3 07:F0E3: 17        .byte $17, $05   ; control byte for FF + counter

- D 3 - I - 0x01F0F5 07:F0E5: FC        .byte $FC, $F8, $F0, $F4, $FC   ; 

- D 3 - I - 0x01F0FA 07:F0EA: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 3 - I - 0x01F0FC 07:F0EC: 04        .byte $04, $08, $00   ; 

- D 3 - I - 0x01F0FF 07:F0EF: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F101 07:F0F1: 7F        .byte $7F, $7F, $78, $70, $70   ; 

- D 3 - I - 0x01F106 07:F0F6: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F108 07:F0F8: 80        .byte $80, $80, $80, $83, $80   ; 

- D 3 - I - 0x01F10D 07:F0FD: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F10F 07:F0FF: FE        .byte $FE, $FE, $FE, $0C, $04, $46   ; 

- D 3 - I - 0x01F115 07:F105: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 3 - I - 0x01F117 07:F107: 10        .byte $10, $CA, $B8   ; 

- D 3 - I - 0x01F11A 07:F10A: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F11C 07:F10C: 3F        .byte $3F, $3F, $3F, $1F, $1F, $3F, $01, $01, $41, $41, $41, $21, $61, $41, $3F, $CF   ; 
- D 3 - I - 0x01F12C 07:F11C: F7        .byte $F7, $F3, $F5, $AB   ; 

- D 3 - I - 0x01F130 07:F120: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F132 07:F122: 3F        .byte $3F, $CF, $F7, $F1, $01, $03   ; 

- D 3 - I - 0x01F138 07:F128: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F13A 07:F12A: FC        .byte $FC, $FC, $FC, $F0, $F0   ; 

- D 3 - I - 0x01F13F 07:F12F: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F141 07:F131: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F143 07:F133: 0F        .byte $0F   ; 

- D 3 - I - 0x01F144 07:F134: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F146 07:F136: 70        .byte $70, $78, $73, $10, $18   ; 

- D 3 - I - 0x01F14B 07:F13B: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F14D 07:F13D: 88        .byte $88, $87, $80, $28, $E7   ; 

- D 3 - I - 0x01F152 07:F142: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F154 07:F144: 1E        .byte $1E, $06, $06, $06, $0F   ; 

- D 3 - I - 0x01F159 07:F149: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F15B 07:F14B: 20        .byte $20, $08, $C8, $19, $F0   ; 

- D 3 - I - 0x01F160 07:F150: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F162 07:F152: 3F        .byte $3F, $3F, $27, $07, $0F   ; 

- D 3 - I - 0x01F167 07:F157: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F169 07:F159: 41        .byte $41, $41, $49, $19, $F1, $01, $01, $01, $FC, $F3, $EF, $CF, $AF, $D5   ; 

- D 3 - I - 0x01F177 07:F167: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F179 07:F169: FC        .byte $FC, $F3, $EF, $8F, $80, $C0   ; 

- D 3 - I - 0x01F17F 07:F16F: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F181 07:F171: 0F        .byte $0F, $05, $CA, $15, $AA, $5F   ; 

- D 3 - I - 0x01F187 07:F177: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F189 07:F179: 0F        .byte $0F, $00, $C0   ; 

- D 3 - I - 0x01F18C 07:F17C: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F18E 07:F17E: 1F        .byte $1F   ; 

- D 3 - I - 0x01F18F 07:F17F: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F191 07:F181: F8        .byte $F8, $54, $A8, $50, $AB, $D3, $F8, $FF, $F0   ; 

- D 3 - I - 0x01F19A 07:F18A: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F19C 07:F18C: 03        .byte $03, $83, $F0, $FF, $3C, $1C, $0E, $16, $8A, $D7, $2F, $FF, $1C, $0C, $06, $02   ; 
- D 3 - I - 0x01F1AC 07:F19C: 82        .byte $82, $C7, $0F, $FF   ; 

- D 3 - I - 0x01F1B0 07:F1A0: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F1B2 07:F1A2: 1F        .byte $1F, $20, $4E, $4A, $7C, $09   ; 

- D 3 - I - 0x01F1B8 07:F1A8: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F1BA 07:F1AA: E0        .byte $E0, $C0, $8E, $8C, $B8, $F1   ; 

- D 3 - I - 0x01F1C0 07:F1B0: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F1C2 07:F1B2: 80        .byte $80, $7D, $62, $F1, $12   ; 

- D 3 - I - 0x01F1C7 07:F1B7: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F1C9 07:F1B9: 42        .byte $42, $42, $D1, $E3   ; 

- D 3 - I - 0x01F1CD 07:F1BD: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F1CF 07:F1BF: C1        .byte $C1, $22, $94, $49   ; 

- D 3 - I - 0x01F1D3 07:F1C3: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F1D5 07:F1C5: 3E        .byte $3E, $3C, $18, $89, $01, $45, $45, $25, $E5, $25, $C5, $25, $FF, $87, $87, $E7   ; 
- D 3 - I - 0x01F1E5 07:F1D5: 07        .byte $07, $07, $C7, $E7, $FD, $E6, $8E, $FD, $FB, $F7, $FE, $80, $3C, $66, $0E, $1C   ; 
- D 3 - I - 0x01F1F5 07:F1E5: 38        .byte $38, $70, $7E, $00, $FD, $E6, $E6, $EE, $EE, $EE, $BC, $C1, $3C, $66, $66, $66   ; 
- D 3 - I - 0x01F205 07:F1F5: 66        .byte $66, $66, $3C, $00, $FB, $E5, $E5, $EC, $F9, $E3, $EF, $8F, $78, $64, $65, $64   ; 
- D 3 - I - 0x01F215 07:F205: 78        .byte $78, $60, $60, $00, $FF, $BF, $DD, $91, $BD, $A5, $59, $83, $01, $81, $CD, $91   ; 
- D 3 - I - 0x01F225 07:F215: 9D        .byte $9D, $85, $59, $01   ; 

- D 3 - I - 0x01F229 07:F219: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F22B 07:F21B: 0F        .byte $0F, $10, $27, $25, $3D, $08   ; 

- D 3 - I - 0x01F231 07:F221: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F233 07:F223: F0        .byte $F0, $E0, $C7, $C6, $DE, $F0   ; 

- D 3 - I - 0x01F239 07:F229: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F23B 07:F22B: 80        .byte $80, $40, $2E, $31, $38, $49   ; 

- D 3 - I - 0x01F241 07:F231: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F243 07:F233: 7F        .byte $7F, $7F, $31, $21, $28, $71   ; 

- D 3 - I - 0x01F249 07:F239: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F24B 07:F23B: E1        .byte $E1, $12, $CC, $B9   ; 

- D 3 - I - 0x01F24F 07:F23F: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F251 07:F241: 1E        .byte $1E, $1C, $C8, $F9, $12, $25, $4F, $40, $7F   ; 

- D 3 - I - 0x01F25A 07:F24A: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F25C 07:F24C: E3        .byte $E3, $C6, $88, $80, $BF   ; 

- D 3 - I - 0x01F261 07:F251: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F263 07:F253: 12        .byte $12, $D2, $52, $52, $DE   ; 

- D 3 - I - 0x01F268 07:F258: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F26A 07:F25A: E3        .byte $E3, $23, $63, $63, $EF   ; 

- D 3 - I - 0x01F26F 07:F25F: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F271 07:F261: 49        .byte $49, $49, $4C, $4A, $79   ; 

- D 3 - I - 0x01F276 07:F266: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F278 07:F268: 89        .byte $89, $89, $8C, $8E, $BF   ; 

- D 3 - I - 0x01F27D 07:F26D: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F27F 07:F26F: 25        .byte $25, $25, $C5, $25, $DD, $01, $01, $01, $C7, $C7, $87, $27   ; 

- D 3 - I - 0x01F28B 07:F27B: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F28D 07:F27D: F7        .byte $F7, $FD, $D1, $FD, $95, $FD, $91, $E6, $10, $7D, $51, $7D, $15, $7D, $11, $00   ; 
- D 3 - I - 0x01F29D 07:F28D: FF        .byte $FF, $6E, $55, $55, $55, $55, $22, $4C, $00, $22, $55, $55, $55, $55, $22, $00   ; 
- D 3 - I - 0x01F2AD 07:F29D: FF        .byte $FF, $FB, $75, $75, $75, $55, $88, $33, $00, $08, $15, $15, $15, $55, $88, $00   ; 
- D 3 - I - 0x01F2BD 07:F2AD: FF        .byte $FF, $BB, $55, $55, $55, $55, $89, $33, $01, $89, $55, $55, $55, $55, $89, $01   ; 
- D 3 - I - 0x01F2CD 07:F2BD: 3F        .byte $3F, $21, $25, $10, $0F   ; 

- D 3 - I - 0x01F2D2 07:F2C2: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F2D4 07:F2C4: C7        .byte $C7, $C6, $C2, $F0   ; 

- D 3 - I - 0x01F2D8 07:F2C8: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F2DA 07:F2CA: 29        .byte $29, $29, $29, $69, $CF   ; 

- D 3 - I - 0x01F2DF 07:F2CF: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F2E1 07:F2D1: 31        .byte $31, $31, $31, $71, $F7   ; 

- D 3 - I - 0x01F2E6 07:F2D6: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F2E8 07:F2D8: 09        .byte $09, $09, $04, $02, $01   ; 

- D 3 - I - 0x01F2ED 07:F2DD: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F2EF 07:F2DF: F1        .byte $F1, $F1, $FC, $FE   ; 

- D 3 - I - 0x01F2F3 07:F2E3: 17        .byte $17, $07   ; control byte for FF + counter

- D 3 - I - 0x01F2F5 07:F2E5: FE        .byte $FE, $FC, $F8, $F2, $E6   ; 

- D 3 - I - 0x01F2FA 07:F2EA: 0B        .byte $0B, $05   ; control byte for 00 + counter

- D 3 - I - 0x01F2FC 07:F2EC: 02        .byte $02, $04, $08   ; 

- D 3 - I - 0x01F2FF 07:F2EF: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F301 07:F2F1: F8        .byte $F8, $38, $38, $30, $30, $38   ; 

- D 3 - I - 0x01F307 07:F2F7: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F309 07:F2F9: 01        .byte $01, $41, $41, $40, $49, $41   ; 

- D 3 - I - 0x01F30F 07:F2FF: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F311 07:F301: E1        .byte $E1, $E1, $F1, $70, $70, $F1   ; 

- D 3 - I - 0x01F317 07:F307: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F319 07:F309: 02        .byte $02, $12, $02, $82, $81, $02   ; 

- D 3 - I - 0x01F31F 07:F30F: 17        .byte $17, $05   ; control byte for FF + counter

- D 3 - I - 0x01F321 07:F311: 1F        .byte $1F, $0F, $87, $01, $01, $01, $01, $01, $21, $91, $49, $18, $38, $38, $18, $18   ; 
- D 3 - I - 0x01F331 07:F321: 18        .byte $18, $3C, $00, $FB, $FB, $FB, $DB, $FB, $F9, $FD, $C1, $3E, $60, $60, $7C, $66   ; 
- D 3 - I - 0x01F341 07:F331: 66        .byte $66, $3C, $00, $FE, $E0, $E1, $FD, $E6, $E6, $BC, $C1, $78, $64, $65, $64, $78   ; 
- D 3 - I - 0x01F351 07:F341: 60        .byte $60, $60, $00, $FB, $E5, $E5, $EC, $F9, $E3, $EF, $8F, $01, $81, $CD, $91, $9D   ; 
- D 3 - I - 0x01F361 07:F351: 85        .byte $85, $59, $01, $FF, $BF, $DD, $91, $BD, $A5, $59, $83   ; 

- D 3 - I - 0x01F36C 07:F35C: 17        .byte $17, $08   ; control byte for FF + counter

- D 3 - I - 0x01F36E 07:F35E: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 3 - I - 0x01F370 07:F360: 17        .byte $17, $08   ; control byte for FF + counter

- D 3 - I - 0x01F372 07:F362: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01, $60, $60, $6C, $6C, $7E, $0C, $0C, $00   ; 
- D 3 - I - 0x01F382 07:F372: EF        .byte $EF, $EF, $ED, $ED, $FE, $8C, $FD, $F1   ; 

- D 3 - I - 0x01F38A 07:F37A: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F38C 07:F37C: E0        .byte $E0, $E0, $E3, $E0, $E0   ; 

- D 3 - I - 0x01F391 07:F381: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F393 07:F383: 07        .byte $07, $04, $00, $07   ; 

- D 3 - I - 0x01F397 07:F387: 17        .byte $17, $02   ; control byte for FF + counter

- D 3 - I - 0x01F399 07:F389: F8        .byte $F8, $18, $18, $F0, $30, $18   ; 

- D 3 - I - 0x01F39F 07:F38F: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F3A1 07:F391: 01        .byte $01, $21, $E1, $00, $49, $21, $3F, $3F, $7F, $7F, $7F   ; 

- D 3 - I - 0x01F3AC 07:F39C: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F3AE 07:F39E: 3F        .byte $3F, $3F, $7F, $7F, $7F   ; 

- D 3 - I - 0x01F3B3 07:F3A3: 17        .byte $17, $13   ; control byte for FF + counter

- D 3 - I - 0x01F3B5 07:F3A5: E0        .byte $E0, $E0, $FE, $FC, $FC   ; 

- D 3 - I - 0x01F3BA 07:F3AA: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F3BC 07:F3AC: 00        .byte $00, $1E   ; 

- D 3 - I - 0x01F3BE 07:F3AE: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F3C0 07:F3B0: 03        .byte $03   ; 

- D 3 - I - 0x01F3C1 07:F3B1: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F3C3 07:F3B3: 18        .byte $18, $18, $38, $18, $1C   ; 

- D 3 - I - 0x01F3C8 07:F3B8: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F3CA 07:F3BA: 21        .byte $21, $61, $41, $24, $E3   ; 

- D 3 - I - 0x01F3CF 07:F3BF: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F3D1 07:F3C1: F1        .byte $F1, $F1, $91, $11, $31   ; 

- D 3 - I - 0x01F3D6 07:F3C6: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F3D8 07:F3C8: 02        .byte $02, $02, $22, $62, $CE   ; 

- D 3 - I - 0x01F3DD 07:F3CD: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F3DF 07:F3CF: C7        .byte $C7, $C7, $C7, $C7, $C7   ; 

- D 3 - I - 0x01F3E4 07:F3D4: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F3E6 07:F3D6: 09        .byte $09, $09, $09, $09, $39, $01, $01, $01, $10, $7C, $50, $7C, $14, $7C, $10, $00   ; 
- D 3 - I - 0x01F3F6 07:F3E6: F7        .byte $F7, $FD, $D1, $FD, $95, $FD, $91, $E7, $00, $62, $95, $95, $75, $95, $62, $00   ; 
- D 3 - I - 0x01F406 07:F3F6: FF        .byte $FF, $EE, $95, $B5, $75, $95, $62, $8C, $00, $08, $15, $15, $15, $55, $88, $00   ; 
- D 3 - I - 0x01F416 07:F406: FF        .byte $FF, $FB, $75, $75, $75, $55, $88, $33, $01, $89, $55, $55, $55, $55, $89, $01   ; 
- D 3 - I - 0x01F426 07:F416: FF        .byte $FF, $BB, $55, $55, $55, $55, $89, $33, $10, $7C, $51, $7C, $15, $7D, $10, $00   ; 
- D 3 - I - 0x01F436 07:F426: F7        .byte $F7, $FC, $D1, $FC, $95, $FD, $90, $E7, $00, $CF, $28, $CF, $21, $21, $CE, $00   ; 
- D 3 - I - 0x01F446 07:F436: FF        .byte $FF, $DF, $28, $CF, $21, $6D, $CE   ; 

- D 3 - I - 0x01F44D 07:F43D: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F44F 07:F43F: 08        .byte $08, $15, $15, $15, $55, $88, $00, $FF, $7B, $75, $75, $75, $55, $88, $33, $E7   ; 
- D 3 - I - 0x01F45F 07:F44F: FF        .byte $FF, $E7, $E0, $F0   ; 

- D 3 - I - 0x01F463 07:F453: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F465 07:F455: 18        .byte $18   ; 

- D 3 - I - 0x01F466 07:F456: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F468 07:F458: 10        .byte $10, $0F   ; 

- D 3 - I - 0x01F46A 07:F45A: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F46C 07:F45C: 18        .byte $18, $18, $18, $18, $3C   ; 

- D 3 - I - 0x01F471 07:F461: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F473 07:F463: 21        .byte $21, $21, $21, $64, $C3   ; 

- D 3 - I - 0x01F478 07:F468: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F47A 07:F46A: FC        .byte $FC, $FC, $FE, $FE, $FE   ; 

- D 3 - I - 0x01F47F 07:F46F: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F481 07:F471: FC        .byte $FC, $FC, $FE, $FE, $FE   ; 

- D 3 - I - 0x01F486 07:F476: 17        .byte $17, $03   ; control byte for FF + counter

- D 3 - I - 0x01F488 07:F478: 0B        .byte $0B, $08   ; control byte for 00 + counter

- D 3 - I - 0x01F48A 07:F47A: 17        .byte $17, $08   ; control byte for FF + counter

- D 3 - I - 0x01F48C 07:F47C: 01        .byte $01, $01, $01, $01, $01, $01, $01, $01   ; 

- D 3 - I - 0x01F494 07:F484: 17        .byte $17, $08   ; control byte for FF + counter

- D 3 - I - 0x01F496 07:F486: FB        .byte $FB, $FB, $FB, $DB, $FB, $F9, $FD, $C1, $18, $38, $38, $18, $18, $18, $3C, $00   ; 
- D 3 - I - 0x01F4A6 07:F496: EF        .byte $EF, $EF, $ED, $ED, $FE, $8C, $FD, $F1, $60, $60, $6C, $6C, $7E, $0C, $0C, $00   ; 
- D 3 - I - 0x01F4B6 07:F4A6: FB        .byte $FB, $E5, $E5, $EC, $F9, $E3, $EF, $8F, $78, $64, $65, $64, $78, $60, $60, $00   ; 
- D 3 - I - 0x01F4C6 07:F4B6: FF        .byte $FF, $BF, $DD, $91, $BD, $A5, $59, $83, $01, $81, $CD, $91, $9D, $85, $59, $01   ; 
- D 3 - I - 0x01F4D6 07:F4C6: FF        .byte $FF, $EC, $EA, $EA, $EA, $EA, $E4, $C9, $00, $24, $2A, $2A, $2A, $2A, $24, $00   ; 
- D 3 - I - 0x01F4E6 07:F4D6: F7        .byte $F7, $FD, $D1, $FD, $95, $FD, $91, $E7, $10, $7C, $50, $7C, $14, $7C, $10, $00   ; 
- D 3 - I - 0x01F4F6 07:F4E6: FF        .byte $FF, $EE, $95, $65, $95, $B5, $62, $8C, $00, $62, $95, $65, $95, $95, $62, $00   ; 
- D 3 - I - 0x01F506 07:F4F6: F7        .byte $F7, $FD, $D0, $FD, $95, $FD, $91, $E7, $10, $7D, $50, $7C, $14, $7C, $10, $00   ; 
- D 3 - I - 0x01F516 07:F506: FF        .byte $FF, $EF, $28, $EF, $E1, $ED, $EE, $C0, $00, $EF, $28, $2F, $21, $21, $2E, $00   ; 
- D 3 - I - 0x01F526 07:F516: FF        .byte $FF, $7B, $75, $75, $75, $55, $88, $33, $00, $08, $15, $15, $15, $55, $88, $00   ; 
- D 3 - I - 0x01F536 07:F526: FF        .byte $FF, $BB, $DA, $FA, $AB, $8A, $BA, $30, $00, $8B, $DA, $FA, $AB, $8A, $8A, $00   ; 
- D 3 - I - 0x01F546 07:F536: FF        .byte $FF, $6D, $AD, $BD, $25, $6D, $ED, $C9, $01, $25, $A5, $BD, $25, $25, $25, $01   ; 
- D 3 - I - 0x01F556 07:F546: 00        .byte $00, $8B, $DA, $FA, $AB, $8A, $8A, $00, $FF, $BB, $DA, $FA, $AB, $8A, $BA, $30   ; 
- D 3 - I - 0x01F566 07:F556: 01        .byte $01, $25, $A5, $BD, $25, $25, $25, $01, $FF, $6D, $AD, $BD, $25, $6D, $ED, $C9   ; 
- D 3 - I - 0x01F576 07:F566: 70        .byte $70, $F8, $D8, $D8, $D8, $D8, $F8, $70, $60, $90, $90, $90, $90, $90, $60, $00   ; 
- D 3 - I - 0x01F586 07:F576: 30        .byte $30, $70, $30, $30, $30, $30, $78, $78, $20, $60, $20, $20, $20, $20, $70, $00   ; 
- D 3 - I - 0x01F596 07:F586: F0        .byte $F0, $F8, $18, $F8, $F0, $C0, $F8, $F8, $E0, $10, $10, $E0, $80, $80, $F0, $00   ; 
- D 3 - I - 0x01F5A6 07:F596: F0        .byte $F0, $F8, $18, $78, $78, $18, $F8, $F0, $E0, $10, $10, $60, $10, $10, $E0, $00   ; 
- D 3 - I - 0x01F5B6 07:F5A6: C0        .byte $C0, $C0, $F0, $F0, $F8, $F8, $30, $30, $80, $80, $A0, $A0, $F0, $20, $20, $00   ; 
- D 3 - I - 0x01F5C6 07:F5B6: F8        .byte $F8, $F8, $C0, $F8, $F8, $18, $F8, $F0, $F0, $80, $80, $F0, $10, $10, $E0, $00   ; 
- D 3 - I - 0x01F5D6 07:F5C6: 78        .byte $78, $F8, $C0, $F8, $F8, $D8, $F8, $70, $70, $80, $80, $F0, $90, $90, $60, $00   ; 
- D 3 - I - 0x01F5E6 07:F5D6: F8        .byte $F8, $F8, $18, $38, $30, $70, $60, $60, $F0, $10, $10, $20, $20, $40, $40, $00   ; 
- D 3 - I - 0x01F5F6 07:F5E6: 70        .byte $70, $F8, $D8, $F8, $F8, $98, $F8, $70, $60, $90, $90, $60, $90, $90, $60, $00   ; 
- D 3 - I - 0x01F606 07:F5F6: 70        .byte $70, $F8, $D8, $F8, $78, $98, $F8, $70, $60, $90, $90, $70, $10, $90, $60, $00   ; 
- D 3 - I - 0x01F616 07:F606: FF        .byte $FF, $80, $87, $84, $84, $87, $84, $84   ; 

- D 3 - I - 0x01F61E 07:F60E: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F620 07:F610: 07        .byte $07, $04, $04, $07, $04, $04, $FF, $00, $39, $A2, $B2, $22, $A2, $B9   ; 

- D 3 - I - 0x01F62E 07:F61E: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F630 07:F620: 39        .byte $39, $A2, $B2, $22, $A2, $B9, $FF, $00, $8C, $52, $12, $12, $52, $8C   ; 

- D 3 - I - 0x01F63E 07:F62E: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F640 07:F630: 8C        .byte $8C, $52, $12, $12, $52, $8C, $FF, $08, $E7, $94, $94, $E4, $94, $97   ; 

- D 3 - I - 0x01F64E 07:F63E: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F650 07:F640: E7        .byte $E7, $94, $94, $E4, $94, $97, $FF   ; 

- D 3 - I - 0x01F657 07:F647: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F659 07:F649: A0        .byte $A0, $80, $80, $A0   ; 

- D 3 - I - 0x01F65D 07:F64D: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F65F 07:F64F: A0        .byte $A0, $80, $80, $A0, $00, $FF   ; 

- D 3 - I - 0x01F665 07:F655: 0B        .byte $0B, $0F   ; control byte for 00 + counter

- D 3 - I - 0x01F667 07:F657: FF        .byte $FF, $00, $8B, $DA, $AA, $8B, $8A   ; 

- D 3 - I - 0x01F66E 07:F65E: 0B        .byte $0B, $03   ; control byte for 00 + counter

- D 3 - I - 0x01F670 07:F660: 8B        .byte $8B, $DA, $AA, $8B, $8A, $00, $FF, $01, $25, $A5, $BD, $25, $25, $01, $00, $01   ; 
- D 3 - I - 0x01F680 07:F670: 25        .byte $25, $A5, $BD, $25, $25, $01, $80, $80, $80, $80, $80, $80, $80, $FF   ; 

- D 3 - I - 0x01F68E 07:F67E: 0B        .byte $0B, $07   ; control byte for 00 + counter

- D 3 - I - 0x01F690 07:F680: 7F        .byte $7F   ; 

- D 3 - I - 0x01F691 07:F681: 0B        .byte $0B, $07   ; control byte for 00 + counter

- D 3 - I - 0x01F693 07:F683: FF        .byte $FF   ; 

- D 3 - I - 0x01F694 07:F684: 0B        .byte $0B, $07   ; control byte for 00 + counter

- D 3 - I - 0x01F696 07:F686: FF        .byte $FF, $00, $0E, $09, $0E, $09, $0E, $00, $FF, $00, $0E, $09, $0E, $09, $0E, $00   ; 
- D 3 - I - 0x01F6A6 07:F696: FF        .byte $FF, $00, $44, $28, $10, $10, $10, $00, $FF, $00, $44, $28, $10, $10, $10, $00   ; 
- D 3 - I - 0x01F6B6 07:F6A6: FF        .byte $FF, $01, $01, $01, $01, $01, $01, $01, $FF, $01, $01, $01, $01, $01, $01, $01   ; 

- D 3 - I - 0x01F6C6 07:F6B6: 17        .byte $17, $05   ; control byte for FF + counter

- D 3 - I - 0x01F6C8 07:F6B8: 87        .byte $87, $93, $39, $18   ; 

- D 3 - I - 0x01F6CC 07:F6BC: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F6CE 07:F6BE: 78        .byte $78, $7C, $FE, $DA   ; 

- D 3 - I - 0x01F6D2 07:F6C2: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F6D4 07:F6C4: F1        .byte $F1, $E0, $C6, $CF   ; 

- D 3 - I - 0x01F6D8 07:F6C8: 0B        .byte $0B, $06   ; control byte for 00 + counter

- D 3 - I - 0x01F6DA 07:F6CA: 06        .byte $06, $0F   ; 

- D 3 - I - 0x01F6DC 07:F6CC: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F6DE 07:F6CE: 8F        .byte $8F, $07, $63, $F3   ; 

- D 3 - I - 0x01F6E2 07:F6D2: 0B        .byte $0B, $06   ; control byte for 00 + counter

- D 3 - I - 0x01F6E4 07:F6D4: 60        .byte $60, $F0   ; 

- D 3 - I - 0x01F6E6 07:F6D6: 17        .byte $17, $04   ; control byte for FF + counter

- D 3 - I - 0x01F6E8 07:F6D8: E1        .byte $E1, $C9, $9C, $18   ; 

- D 3 - I - 0x01F6EC 07:F6DC: 0B        .byte $0B, $04   ; control byte for 00 + counter

- D 3 - I - 0x01F6EE 07:F6DE: 1E        .byte $1E, $3E, $7F, $5B, $09, $3F, $3E, $34, $18, $18, $18, $30, $C8, $7C, $FC, $F6   ; 
- D 3 - I - 0x01F6FE 07:F6EE: 7F        .byte $7F, $3F, $9B, $B0, $55, $9F, $FB, $61, $60, $46, $C7, $C6, $15, $1F, $3B, $3F   ; 
- D 3 - I - 0x01F70E 07:F6FE: 1F        .byte $1F, $3F, $3F, $36, $AA, $F9, $DF, $86, $06, $62, $E3, $63, $A8, $F8, $DC, $FC   ; 
- D 3 - I - 0x01F71E 07:F70E: F8        .byte $F8, $FC, $FC, $6C, $90, $FD, $7C, $2C, $18, $18, $18, $0C, $13, $3E, $3F, $6F   ; 
- D 3 - I - 0x01F72E 07:F71E: FB        .byte $FB, $FF, $DB, $0D, $61, $CE, $D5, $FF, $83, $93, $39, $18, $80, $0E, $15, $3F   ; 
- D 3 - I - 0x01F73E 07:F72E: 7B        .byte $7B, $7F, $FF, $DA, $0D, $0F, $09, $8E, $81, $40, $46, $CF, $7D, $7F, $39, $BF   ; 
- D 3 - I - 0x01F74E 07:F73E: B0        .byte $B0, $20, $06, $0F, $B0, $F0, $90, $71, $81, $02, $62, $F3, $BE, $FE, $9C, $FD   ; 
- D 3 - I - 0x01F75E 07:F74E: 0D        .byte $0D, $04, $60, $F0, $86, $73, $AB, $FF, $C1, $C9, $9C, $18, $01, $70, $A8, $FC   ; 
- D 3 - I - 0x01F76E 07:F75E: DE        .byte $DE, $FE, $FF, $5B   ; 



off_15_F762:
- D 3 - I - 0x01F772 07:F762: EF        .byte $EF, $F7, $E1, $B7, $B4, $F5, $A7, $C0, $20, $77, $61, $37, $34, $75, $27, $00   ; 
- D 3 - I - 0x01F782 07:F772: FF        .byte $FF, $6E, $55, $55, $55, $55, $22, $4C, $00, $22, $55, $55, $55, $55, $22, $00   ; 



off_15_F782:
- D 3 - I - 0x01F792 07:F782: 10        .byte $10, $7D, $51, $7D, $15, $7D, $11, $00, $F7, $FD, $D1, $FD, $95, $FD, $91, $E6   ; 
- D 3 - I - 0x01F7A2 07:F792: 00        .byte $00, $72, $55, $75, $55, $55, $72, $00, $FF, $76, $55, $75, $55, $55, $72, $04   ; 



off_15_F7A2:
- D 3 - I - 0x01F7B2 07:F7A2: 10        .byte $10, $7D, $51, $7D, $15, $7D, $11, $00, $F7, $FD, $D1, $FD, $95, $FD, $91, $E6   ; 
- D 3 - I - 0x01F7C2 07:F7B2: 00        .byte $00, $72, $15, $15, $15, $15, $12, $00, $FF, $76, $15, $55, $55, $55, $52, $44   ; 



off_15_F7C2:
- D 3 - I - 0x01F7D2 07:F7C2: F7        .byte $F7, $FD, $D1, $FD, $95, $FD, $91, $E6, $10, $7D, $51, $7D, $15, $7D, $11, $00   ; 
- D 3 - I - 0x01F7E2 07:F7D2: FF        .byte $FF, $76, $45, $75, $55, $55, $72, $04, $00, $72, $45, $75, $55, $55, $72, $00   ; 



off_15_F7E2:
- D 3 - I - 0x01F7F2 07:F7E2: F7        .byte $F7, $FD, $D1, $FD, $95, $FD, $91, $E6, $10, $7D, $51, $7D, $15, $7D, $11, $00   ; 
- D 3 - I - 0x01F802 07:F7F2: FF        .byte $FF, $76, $45, $75, $15, $15, $72, $04, $00, $72, $45, $75, $15, $15, $72, $00   ; 



off_15_F802:
- D 3 - I - 0x01F812 07:F802: 3C        .byte $3C, $66, $06, $1C, $06, $66, $3C, $00, $FD, $E6, $86, $FD, $E6, $F6, $BC, $C1   ; 
- D 3 - I - 0x01F822 07:F812: 3C        .byte $3C, $66, $0E, $1C, $38, $70, $7E, $00, $FD, $E6, $8E, $FD, $FB, $F7, $FE, $80   ; 



off_15_F822:
- D 3 - I - 0x01F832 07:F822: 3C        .byte $3C, $66, $66, $3C, $66, $66, $3C, $00, $FD, $E6, $E6, $BC, $E6, $E6, $BC, $C1   ; 



off_0D_F832:
- D 3 - I - 0x01F842 07:F832: 0B        .byte $0B   ; prepare control byte for 00
- D 3 - I - 0x01F843 07:F833: 12        .byte $12   ; prepare control byte for FF

- D 3 - I - 0x01F844 07:F834: 0B        .byte $0B, $10   ; control byte for 00 + counter

- D 3 - I - 0x01F846 07:F836: FF        .byte $FF, $F0, $F0, $F0, $0F, $0F, $0F, $0F, $FF, $F0, $F0, $F0, $0F, $0F, $0F, $0F   ; normal bytes
- D 3 - I - 0x01F856 07:F846: F0        .byte $F0, $F0, $F0, $F0, $0F, $0F, $0F, $0F, $F0, $F0, $F0, $F0, $0F, $0F, $0F, $0F   ; 
- D 3 - I - 0x01F866 07:F856: 3F        .byte $3F, $60, $C0, $9F, $9F, $93, $43, $67, $00, $1F, $20, $5F, $5F, $53, $2B, $17   ; 
- D 3 - I - 0x01F876 07:F866: F8        .byte $F8, $0C, $07, $F2, $F2, $90, $84, $09, $00, $F0, $08, $F5, $F5, $96, $AA, $75   ; 
- D 3 - I - 0x01F886 07:F876: 7E        .byte $7E, $83, $01, $7C, $7C, $FE, $C6, $C6, $00, $7C, $82, $7D, $7D, $FE, $C6, $C6   ; 
- D 3 - I - 0x01F896 07:F886: 0F        .byte $0F, $10, $20, $A7, $A7, $66, $4E, $4C, $00, $0F, $10, $17, $17, $96, $AE, $AC   ; 
- D 3 - I - 0x01F8A6 07:F896: F8        .byte $F8, $0C, $06, $F2, $F9, $39, $39, $72, $00, $F0, $08, $F4, $FA, $3A, $3A, $74   ; 
- D 3 - I - 0x01F8B6 07:F8A6: FB        .byte $FB, $0E, $04, $F0, $F0, $90, $81, $09, $00, $F1, $0A, $F6, $F6, $96, $AD, $75   ; 
- D 3 - I - 0x01F8C6 07:F8B6: FF        .byte $FF   ; 

- D 3 - I - 0x01F8C7 07:F8B7: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F8C9 07:F8B9: 12        .byte $12, $02   ; control byte for FF + counter

- D 3 - I - 0x01F8CB 07:F8BB: E0        .byte $E0, $E0, $FE, $00, $FF, $00   ; 

- D 3 - I - 0x01F8D1 07:F8C1: 12        .byte $12, $02   ; control byte for FF + counter

- D 3 - I - 0x01F8D3 07:F8C3: E0        .byte $E0, $E0, $FE, $9F, $F0, $60, $27, $27, $27, $4F, $4F, $00, $0F, $90, $57, $57   ; 
- D 3 - I - 0x01F8E3 07:F8D3: 57        .byte $57, $AF, $AF, $BC, $46, $03, $39, $39, $B9, $B2, $F2, $00, $B8, $44, $3A, $3A   ; 
- D 3 - I - 0x01F8F3 07:F8E3: BA        .byte $BA, $B4, $F4, $DF, $B0, $A0, $A7, $27, $27, $4F, $4E, $C0, $8F, $90, $97, $17   ; 
- D 3 - I - 0x01F903 07:F8F3: 17        .byte $17, $2F, $2E, $F8, $0C, $06, $F2, $F9, $19, $19, $39, $00, $F0, $08, $F4, $FA   ; 
- D 3 - I - 0x01F913 07:F903: 1A        .byte $1A, $1A, $3A, $7F, $C0, $80, $9F, $9F, $9C, $38, $38, $00, $3F, $40, $5F, $5F   ; 
- D 3 - I - 0x01F923 07:F913: 5C        .byte $5C, $B8, $B8, $F0, $18, $0D, $E5, $F3, $73, $72, $E6, $00, $E0, $10, $E8, $F4   ; 
- D 3 - I - 0x01F933 07:F923: 74        .byte $74, $75, $E9, $7C, $C7, $83, $39, $39, $39, $73, $73, $00, $38, $44, $BA, $BA   ; 
- D 3 - I - 0x01F943 07:F933: BA        .byte $BA, $74, $74, $FB, $04, $00, $31, $31, $31, $31, $3B, $00, $FB, $84, $B5, $B5   ; 
- D 3 - I - 0x01F953 07:F943: B5        .byte $B5, $B5, $BB, $E7, $1C, $18, $99, $99, $99, $93, $33, $00, $E3, $24, $A5, $A5   ; 
- D 3 - I - 0x01F963 07:F953: A5        .byte $A5, $AB, $4B, $FF, $01, $00, $FE, $FE, $C0, $C0, $FC, $00, $FE, $01, $FE, $FE   ; 
- D 3 - I - 0x01F973 07:F963: C0        .byte $C0, $C1, $FD, $3F, $E0, $C0, $4F, $4F, $4E, $9C, $9C, $00, $1F, $20, $AF, $AF   ; 
- D 3 - I - 0x01F983 07:F973: AE        .byte $AE, $5C, $5C, $F8, $0C, $06, $F2, $F9, $39, $39, $73, $00, $F0, $08, $F4, $FA   ; 
- D 3 - I - 0x01F993 07:F983: 3A        .byte $3A, $3A, $74, $1F, $20, $40, $8F, $9F, $1F, $3C, $3F, $00, $1F, $30, $6F, $5F   ; 
- D 3 - I - 0x01F9A3 07:F993: DF        .byte $DF, $BC, $BF, $F0, $08, $04, $E2, $F2, $F2, $04, $C4, $00, $F0, $18, $EC, $F4   ; 
- D 3 - I - 0x01F9B3 07:F9A3: F4        .byte $F4, $08, $D8, $27, $27, $4E, $4E, $4E, $60, $31, $1F, $17, $17, $2E, $2E, $2E   ; 
- D 3 - I - 0x01F9C3 07:F9B3: 11        .byte $11, $0E, $00, $39, $29, $69, $44, $44, $C2, $83, $01, $45, $45, $85, $82, $82   ; 
- D 3 - I - 0x01F9D3 07:F9C3: 01        .byte $01   ; 

- D 3 - I - 0x01F9D4 07:F9C4: 0B        .byte $0B, $02   ; control byte for 00 + counter

- D 3 - I - 0x01F9D6 07:F9C6: 8E        .byte $8E, $8C, $FC, $F9, $F9, $02, $04, $F8, $8E, $8D, $FD, $FA, $FA, $04, $F8, $00   ; 
- D 3 - I - 0x01F9E6 07:F9D6: 4F        .byte $4F, $CF, $9E, $9C, $9C, $C1, $62, $3C, $AF, $2F, $5E, $5D, $5D, $22, $1C, $00   ; 
- D 3 - I - 0x01F9F6 07:F9E6: F2        .byte $F2, $E4, $08, $10, $E7, $0F, $0F, $0F, $F4, $E8, $10, $E0, $07, $0F, $0F, $0F   ; 
- D 3 - I - 0x01FA06 07:F9F6: 39        .byte $39, $29, $53, $53, $53, $D8, $8C, $07, $45, $45, $8B, $8B, $8B, $04, $03, $00   ; 
- D 3 - I - 0x01FA16 07:FA06: FE        .byte $FE, $C0, $C0, $FC, $FC, $01, $03, $FE, $FE, $C0, $C1, $FD, $FD, $02, $FC, $00   ; 
- D 3 - I - 0x01FA26 07:FA16: 4F        .byte $4F, $4E, $9E, $9C, $9C, $C0, $62, $3D, $AF, $AE, $5E, $5C, $5C, $22, $1D, $00   ; 
- D 3 - I - 0x01FA36 07:FA26: F2        .byte $F2, $F2, $E4, $E4, $E5, $0D, $19, $F3, $F4, $F4, $E8, $E8, $E9, $11, $E1, $03   ; 
- D 3 - I - 0x01FA46 07:FA36: 4E        .byte $4E, $4C, $9C, $9F, $9F, $C0, $60, $3F, $2E, $2C, $5C, $5F, $5F, $20, $1F, $00   ; 
- D 3 - I - 0x01FA56 07:FA46: 39        .byte $39, $33, $72, $E6, $CE, $1B, $31, $E0, $3A, $34, $75, $E9, $D1, $20, $C0, $00   ; 
- D 3 - I - 0x01FA66 07:FA56: 3F        .byte $3F, $3F, $73, $71, $71, $04, $8E, $F9, $BF, $BF, $73, $75, $75, $8A, $71, $00   ; 
- D 3 - I - 0x01FA76 07:FA66: E6        .byte $E6, $CE, $9C, $CC, $CC, $0A, $13, $E1, $E9, $D1, $A2, $D2, $D2, $11, $E0, $00   ; 
- D 3 - I - 0x01FA86 07:FA76: 73        .byte $73, $73, $E6, $E4, $E4, $0C, $18, $F0, $74, $74, $E8, $E8, $E8, $10, $E0, $00   ; 
- D 3 - I - 0x01FA96 07:FA86: 3B        .byte $3B, $1E, $9E, $8C, $49, $42, $24, $18, $BB, $DE, $5E, $6D, $2A, $34, $18, $00   ; 
- D 3 - I - 0x01FAA6 07:FA96: 33        .byte $33, $53, $67, $A7, $27, $30, $18, $0F, $4B, $8B, $97, $17, $17, $08, $07, $00   ; 
- D 3 - I - 0x01FAB6 07:FAA6: FC        .byte $FC, $80, $81, $F9, $F9, $03, $06, $FC, $FD, $81, $82, $FA, $FA, $04, $F8, $00   ; 
- D 3 - I - 0x01FAC6 07:FAB6: 9F        .byte $9F, $9F, $39, $38, $38, $82, $C7, $7C, $5F, $5F, $B9, $BA, $BA, $45, $38, $00   ; 
- D 3 - I - 0x01FAD6 07:FAC6: F3        .byte $F3, $E6, $CE, $E6, $E6, $05, $08, $F0, $F4, $E9, $D1, $E9, $E9, $08, $F0, $00   ; 
- D 3 - I - 0x01FAE6 07:FAD6: 1F        .byte $1F, $01, $7F, $7F, $3F, $00, $80, $7F, $DF, $81, $7F, $7F, $BF, $C0, $7F, $00   ; 
- D 3 - I - 0x01FAF6 07:FAE6: E4        .byte $E4, $E4, $E4, $C8, $8B, $13, $27, $CF, $E8, $E8, $E8, $D0, $B3, $63, $C7, $0F   ; 
- D 3 - I - 0x01FB06 07:FAF6: F0        .byte $F0, $F0, $F0, $F0, $0F, $0F, $0F, $FF, $F0, $F0, $F0, $F0, $0F, $0F, $0F, $FF   ; 



vec_FB06_NMI:   ; bzk bug, see 0x01869F
C D 3 - I - 0x01FB16 07:FB06: 85 02     STA ram_save_A
C D 3 - I - 0x01FB18 07:FB08: 86 03     STX ram_save_X
C D 3 - I - 0x01FB1A 07:FB0A: 84 04     STY ram_save_Y
C D 3 - I - 0x01FB1C 07:FB0C: A5 06     LDA ram_prg_bank_rts
C D 3 - I - 0x01FB1E 07:FB0E: 85 07     STA ram_copy_prg_bank_rts
C D 3 - I - 0x01FB20 07:FB10: A5 08     LDA ram_prg_bank_pointer
C D 3 - I - 0x01FB22 07:FB12: 85 0A     STA ram_copy_prg_bank_pointer
C D 3 - I - 0x01FB24 07:FB14: A2 02     LDX #con_prg_bank_jsr + $02
C D 3 - I - 0x01FB26 07:FB16: A0 03     LDY #con_prg_bank_rts + $03
C D 3 - I - 0x01FB28 07:FB18: A9 03     LDA #con_bsw_02_03
C D 3 - I - 0x01FB2A 07:FB1A: 20 D2 FF  JSR sub_FFD2_prg_bankswitch
C D 3 - I - 0x01FB2D 07:FB1D: A5 0A     LDA ram_copy_prg_bank_pointer
C D 3 - I - 0x01FB2F 07:FB1F: 85 08     STA ram_prg_bank_pointer
C D 3 - I - 0x01FB31 07:FB21: A5 07     LDA ram_copy_prg_bank_rts
C D 3 - I - 0x01FB33 07:FB23: 85 06     STA ram_prg_bank_rts
C D 3 - I - 0x01FB35 07:FB25: A5 02     LDA ram_save_A
C D 3 - I - 0x01FB37 07:FB27: A6 03     LDX ram_save_X
C D 3 - I - 0x01FB39 07:FB29: A4 04     LDY ram_save_Y
vec_FB2B_IRQ:
C D 3 - I - 0x01FB3B 07:FB2B: 40        RTI


; bzk bug, see 0x01869F
; bzk garbage
- D 3 - I - 0x01FB3C 07:FB2C: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 3 - I - 0x01FB4C 07:FB3C: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 3 - I - 0x01FB5C 07:FB4C: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 3 - I - 0x01FB6C 07:FB5C: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 3 - I - 0x01FB7C 07:FB6C: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 3 - I - 0x01FB8C 07:FB7C: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



; bzk garbage
- - - - - - 0x01FB96 07:FB86: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FBA0 07:FB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FBB0 07:FBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FBC0 07:FBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FBD0 07:FBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FBE0 07:FBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FBF0 07:FBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC00 07:FBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC10 07:FC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC20 07:FC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC30 07:FC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC40 07:FC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC50 07:FC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC60 07:FC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC70 07:FC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC80 07:FC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FC90 07:FC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FCA0 07:FC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FCB0 07:FCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FCC0 07:FCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FCD0 07:FCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FCE0 07:FCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FCF0 07:FCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD00 07:FCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD10 07:FD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD20 07:FD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD30 07:FD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD40 07:FD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD50 07:FD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD60 07:FD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD70 07:FD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD80 07:FD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FD90 07:FD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FDA0 07:FD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FDB0 07:FDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FDC0 07:FDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FDD0 07:FDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FDE0 07:FDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FDF0 07:FDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE00 07:FDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE10 07:FE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE20 07:FE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE30 07:FE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE40 07:FE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE50 07:FE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE60 07:FE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE70 07:FE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE80 07:FE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE90 07:FE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FEA0 07:FE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FEB0 07:FEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FEC0 07:FEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FED0 07:FEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FEE0 07:FED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FEF0 07:FEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF00 07:FEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF10 07:FF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF20 07:FF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF30 07:FF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF40 07:FF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF50 07:FF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF60 07:FF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF70 07:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF80 07:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FF90 07:FF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFA0 07:FF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFB0 07:FFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFC0 07:FFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FFD0 07:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 




.segment "BSW_FF"   ; !!! bzk bankswitch must be at the same address in all banks and contain the same code
.org $FFD0
- - - - - - 0x01FFE0 07:FFD0: 86 0B     STX ram_prg_bank_jsr
sub_FFD2_prg_bankswitch:
C - - - - - 0x01FFE2 07:FFD2: 85 08     STA ram_prg_bank_pointer
C - - - - - 0x01FFE4 07:FFD4: 84 06     STY ram_prg_bank_rts
C - - - - - 0x01FFE6 07:FFD6: BD E8 FF  LDA tbl_FFE8,X
C - - - - - 0x01FFE9 07:FFD9: 9D E8 FF  STA tbl_FFE8,X
C - - - - - 0x01FFEC 07:FFDC: 20 00 80  JSR sub_8000_indirect_jump_0008
C - - - - - 0x01FFEF 07:FFDF: A6 06     LDX ram_prg_bank_rts
C - - - - - 0x01FFF1 07:FFE1: BD E8 FF  LDA tbl_FFE8,X
C - - - - - 0x01FFF4 07:FFE4: 9D E8 FF  STA tbl_FFE8,X
C - - - - - 0x01FFF7 07:FFE7: 60        RTS



tbl_FFE8:
- - - - - - 0x01FFF8 07:FFE8: 00        .byte $00, $01, $02, $03   ; 


; bzk garbage
- - - - - - 0x01FFFC 07:FFEC: 10        .byte $10, $11, $12, $13   ; 



vec_FFF0_RESET:
loc_FFF0_infinite_loop:
- - - - - - 0x020000 07:FFF0: 78        SEI
- - - - - - 0x020001 07:FFF1: A9 00     LDA #$00
- - - - - - 0x020003 07:FFF3: 8D E8 FF  STA tbl_FFE8
- - - - - - 0x020006 07:FFF6: 4C F0 FF  JMP loc_FFF0_infinite_loop


; bzk garbage
- - - - - - 0x020009 07:FFF9: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS_FF"
- D 3 - - - 0x02000A 07:FFFA: 06 FB     .word vec_FB06_NMI
- - - - - - 0x02000C 07:FFFC: F0 FF     .word vec_FFF0_RESET
- - - - - - 0x02000E 07:FFFE: 2B FB     .word vec_FB2B_IRQ



