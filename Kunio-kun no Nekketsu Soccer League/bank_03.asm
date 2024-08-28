.segment "BANK_03"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x00C010-0x01000F



.export loc_0x00C010
.export loc_0x00C013
.export loc_0x00C016
.export loc_0x00C019
.export loc_0x00C01C
.export loc_0x00C01F
.export loc_0x00C022



loc_0x00C010:
; bzk optimize
C D 0 J - - 0x00C010 03:8000: 4C 15 80  JMP loc_8015



loc_0x00C013:
; bzk optimize
C - - J - - 0x00C013 03:8003: 4C 99 B9  JMP loc_B999



loc_0x00C016:
; bzk optimize
C - - J - - 0x00C016 03:8006: 4C 95 A9  JMP loc_A995



loc_0x00C019:
; bzk optimize
C - - J - - 0x00C019 03:8009: 4C F9 BA  JMP loc_BAF9



loc_0x00C01C:
; bzk optimize
C - - J - - 0x00C01C 03:800C: 4C F1 BC  JMP loc_BCF1



loc_0x00C01F:
; bzk optimize
C - - J - - 0x00C01F 03:800F: 4C D4 BE  JMP loc_BED4



loc_0x00C022:
; bzk optimize
C - - J - - 0x00C022 03:8012: 4C 23 BF  JMP loc_BF23



loc_8015:
C D 0 - - - 0x00C025 03:8015: 20 AE B0  JSR sub_B0AE
C - - - - - 0x00C028 03:8018: 20 D2 9B  JSR sub_9BD2
C - - - - - 0x00C02B 03:801B: A2 0B     LDX #$0B
bra_801D:
C - - - - - 0x00C02D 03:801D: BD 68 06  LDA ram_0668,X
C - - - - - 0x00C030 03:8020: 09 F0     ORA #$F0
C - - - - - 0x00C032 03:8022: 9D 68 06  STA ram_0668,X
C - - - - - 0x00C035 03:8025: A9 00     LDA #$00
C - - - - - 0x00C037 03:8027: 9D 5C 06  STA ram_интеллект_бота,X
C - - - - - 0x00C03A 03:802A: CA        DEX
C - - - - - 0x00C03B 03:802B: 10 F0     BPL bra_801D
C - - - - - 0x00C03D 03:802D: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C040 03:8030: 10 1D     BPL bra_804F
C - - - - - 0x00C042 03:8032: AD 24 05  LDA ram_0524
C - - - - - 0x00C045 03:8035: 85 1C     STA ram_001C
C - - - - - 0x00C047 03:8037: A0 0C     LDY #$0C
C - - - - - 0x00C049 03:8039: 20 D0 98  JSR sub_98D0
C - - - - - 0x00C04C 03:803C: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00C04F 03:803F: 48        PHA
C - - - - - 0x00C050 03:8040: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00C053 03:8043: 48        PHA
C - - - - - 0x00C054 03:8044: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00C057 03:8047: 48        PHA
C - - - - - 0x00C058 03:8048: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00C05B 03:804B: 48        PHA
C - - - - - 0x00C05C 03:804C: 20 94 81  JSR sub_8194
bra_804F:
C - - - - - 0x00C05F 03:804F: A9 0C     LDA #$0C
C - - - - - 0x00C061 03:8051: 85 22     STA ram_0022
C - - - - - 0x00C063 03:8053: A9 00     LDA #$00
C - - - - - 0x00C065 03:8055: 85 23     STA ram_0023
C - - - - - 0x00C067 03:8057: A9 06     LDA #$06
C - - - - - 0x00C069 03:8059: 85 27     STA ram_0027
C - - - - - 0x00C06B 03:805B: A9 0B     LDA #$0B
C - - - - - 0x00C06D 03:805D: 85 28     STA ram_0028
C - - - - - 0x00C06F 03:805F: A9 01     LDA #$01
C - - - - - 0x00C071 03:8061: 85 29     STA ram_0029
C - - - - - 0x00C073 03:8063: 20 3E C0  JSR sub_0x01C04E
C - - - - - 0x00C076 03:8066: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C079 03:8069: 10 10     BPL bra_807B
C - - - - - 0x00C07B 03:806B: 68        PLA
C - - - - - 0x00C07C 03:806C: 8D 6C 03  STA ram_мяч_Y_hi
C - - - - - 0x00C07F 03:806F: 68        PLA
C - - - - - 0x00C080 03:8070: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00C083 03:8073: 68        PLA
C - - - - - 0x00C084 03:8074: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00C087 03:8077: 68        PLA
C - - - - - 0x00C088 03:8078: 8D 20 03  STA ram_мяч_X_lo
bra_807B:
C - - - - - 0x00C08B 03:807B: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C08E 03:807E: 29 40     AND #$40
C - - - - - 0x00C090 03:8080: F0 12     BEQ bra_8094
C - - - - - 0x00C092 03:8082: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C095 03:8085: 29 01     AND #$01
C - - - - - 0x00C097 03:8087: D0 0B     BNE bra_8094
C - - - - - 0x00C099 03:8089: A9 00     LDA #$00
C - - - - - 0x00C09B 03:808B: 8D 76 06  STA ram_дистанция_ближайшего
C - - - - - 0x00C09E 03:808E: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C0A1 03:8091: 4C B4 80  JMP loc_80B4
bra_8094:
C - - - - - 0x00C0A4 03:8094: A2 00     LDX #$00
loc_8096:
C D 0 - - - 0x00C0A6 03:8096: B5 2C     LDA ram_002C,X
C - - - - - 0x00C0A8 03:8098: C9 FF     CMP #$FF
C - - - - - 0x00C0AA 03:809A: F0 09     BEQ bra_80A5
C - - - - - 0x00C0AC 03:809C: 29 01     AND #$01
C - - - - - 0x00C0AE 03:809E: F0 0D     BEQ bra_80AD
C - - - - - 0x00C0B0 03:80A0: E8        INX
C - - - - - 0x00C0B1 03:80A1: E8        INX
C - - - - - 0x00C0B2 03:80A2: 4C 96 80  JMP loc_8096
bra_80A5:
- - - - - - 0x00C0B5 03:80A5: 8D 76 06  STA ram_дистанция_ближайшего
- - - - - - 0x00C0B8 03:80A8: A9 00     LDA #$00
- - - - - - 0x00C0BA 03:80AA: 4C B4 80  JMP loc_80B4
bra_80AD:
C - - - - - 0x00C0BD 03:80AD: B5 2D     LDA ram_002D,X
C - - - - - 0x00C0BF 03:80AF: 8D 76 06  STA ram_дистанция_ближайшего
C - - - - - 0x00C0C2 03:80B2: B5 2C     LDA ram_002C,X
loc_80B4:
C D 0 - - - 0x00C0C4 03:80B4: 8D 74 06  STA ram_номер_ближайшего
C - - - - - 0x00C0C7 03:80B7: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C0CA 03:80BA: 29 40     AND #$40
C - - - - - 0x00C0CC 03:80BC: F0 12     BEQ bra_80D0
C - - - - - 0x00C0CE 03:80BE: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C0D1 03:80C1: 29 01     AND #$01
C - - - - - 0x00C0D3 03:80C3: F0 0B     BEQ bra_80D0
C - - - - - 0x00C0D5 03:80C5: A9 00     LDA #$00
C - - - - - 0x00C0D7 03:80C7: 8D 77 06  STA ram_дистанция_ближайшего + $01
C - - - - - 0x00C0DA 03:80CA: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C0DD 03:80CD: 4C F0 80  JMP loc_80F0
bra_80D0:
C - - - - - 0x00C0E0 03:80D0: A2 00     LDX #$00
loc_80D2:
C D 0 - - - 0x00C0E2 03:80D2: B5 2C     LDA ram_002C,X
C - - - - - 0x00C0E4 03:80D4: C9 FF     CMP #$FF
C - - - - - 0x00C0E6 03:80D6: F0 09     BEQ bra_80E1
C - - - - - 0x00C0E8 03:80D8: 29 01     AND #$01
C - - - - - 0x00C0EA 03:80DA: D0 0D     BNE bra_80E9
C - - - - - 0x00C0EC 03:80DC: E8        INX
C - - - - - 0x00C0ED 03:80DD: E8        INX
C - - - - - 0x00C0EE 03:80DE: 4C D2 80  JMP loc_80D2
bra_80E1:
- - - - - - 0x00C0F1 03:80E1: 8D 77 06  STA ram_дистанция_ближайшего + $01
- - - - - - 0x00C0F4 03:80E4: A9 01     LDA #$01
- - - - - - 0x00C0F6 03:80E6: 4C F0 80  JMP loc_80F0
bra_80E9:
C - - - - - 0x00C0F9 03:80E9: B5 2D     LDA ram_002D,X
C - - - - - 0x00C0FB 03:80EB: 8D 77 06  STA ram_дистанция_ближайшего + $01
C - - - - - 0x00C0FE 03:80EE: B5 2C     LDA ram_002C,X
loc_80F0:
C D 0 - - - 0x00C100 03:80F0: 8D 75 06  STA ram_номер_ближайшего + $01
C - - - - - 0x00C103 03:80F3: A2 00     LDX #$00
C - - - - - 0x00C105 03:80F5: A9 10     LDA #$10
C - - - - - 0x00C107 03:80F7: 85 1C     STA ram_001C
C - - - - - 0x00C109 03:80F9: A9 01     LDA #$01
C - - - - - 0x00C10B 03:80FB: 85 1D     STA ram_001D
bra_80FD:
C - - - - - 0x00C10D 03:80FD: B5 2D     LDA ram_002D,X
C - - - - - 0x00C10F 03:80FF: C9 FF     CMP #$FF
C - - - - - 0x00C111 03:8101: F0 27     BEQ bra_812A
C - - - - - 0x00C113 03:8103: B5 2C     LDA ram_002C,X
C - - - - - 0x00C115 03:8105: A8        TAY
C - - - - - 0x00C116 03:8106: B9 68 06  LDA ram_0668,Y
C - - - - - 0x00C119 03:8109: 29 0F     AND #$0F
C - - - - - 0x00C11B 03:810B: C5 1D     CMP ram_001D
C - - - - - 0x00C11D 03:810D: 90 07     BCC bra_8116
C - - - - - 0x00C11F 03:810F: CC D6 04  CPY ram_игрок_с_мячом
C - - - - - 0x00C122 03:8112: F0 02     BEQ bra_8116
C - - - - - 0x00C124 03:8114: A5 1D     LDA ram_001D
bra_8116:
C - - - - - 0x00C126 03:8116: 05 1C     ORA ram_001C
C - - - - - 0x00C128 03:8118: 99 68 06  STA ram_0668,Y
C - - - - - 0x00C12B 03:811B: A5 1C     LDA ram_001C
C - - - - - 0x00C12D 03:811D: 18        CLC
C - - - - - 0x00C12E 03:811E: 69 10     ADC #$10
C - - - - - 0x00C130 03:8120: 85 1C     STA ram_001C
C - - - - - 0x00C132 03:8122: E6 1D     INC ram_001D
C - - - - - 0x00C134 03:8124: E8        INX
C - - - - - 0x00C135 03:8125: E8        INX
C - - - - - 0x00C136 03:8126: E0 0C     CPX #$0C
C - - - - - 0x00C138 03:8128: 90 D3     BCC bra_80FD
bra_812A:
C - - - - - 0x00C13A 03:812A: AD 72 06  LDA ram_0672
C - - - - - 0x00C13D 03:812D: 29 0F     AND #$0F
C - - - - - 0x00C13F 03:812F: C9 02     CMP #$02
C - - - - - 0x00C141 03:8131: 90 05     BCC bra_8138
C - - - - - 0x00C143 03:8133: A9 22     LDA #$22
C - - - - - 0x00C145 03:8135: 8D 72 06  STA ram_0672
bra_8138:
C - - - - - 0x00C148 03:8138: AD 73 06  LDA ram_0673
C - - - - - 0x00C14B 03:813B: 29 0F     AND #$0F
C - - - - - 0x00C14D 03:813D: C9 02     CMP #$02
C - - - - - 0x00C14F 03:813F: 90 05     BCC bra_8146
C - - - - - 0x00C151 03:8141: A9 22     LDA #$22
C - - - - - 0x00C153 03:8143: 8D 73 06  STA ram_0673
bra_8146:
C - - - - - 0x00C156 03:8146: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00C158 03:8148: C9 01     CMP #$01
C - - - - - 0x00C15A 03:814A: D0 15     BNE bra_8161
C - - - - - 0x00C15C 03:814C: AD 5C 00  LDA a: ram_game_script
C - - - - - 0x00C15F 03:814F: 29 20     AND #$20
C - - - - - 0x00C161 03:8151: F0 17     BEQ bra_816A
C - - - - - 0x00C163 03:8153: AD 2A 05  LDA ram_флаг_владения_мячом_ком
C - - - - - 0x00C166 03:8156: 29 01     AND #$01
C - - - - - 0x00C168 03:8158: A8        TAY
C - - - - - 0x00C169 03:8159: A9 06     LDA #$06
C - - - - - 0x00C16B 03:815B: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00C16E 03:815E: 4C 6A 81  JMP loc_816A
bra_8161:
C - - - - - 0x00C171 03:8161: 20 A9 81  JSR sub_81A9
C - - - - - 0x00C174 03:8164: 20 17 A0  JSR sub_A017
C - - - - - 0x00C177 03:8167: 20 A1 A7  JSR sub_A7A1
bra_816A:
loc_816A:
C D 0 - - - 0x00C17A 03:816A: A2 00     LDX #$00
bra_816C:
C - - - - - 0x00C17C 03:816C: DE 68 06  DEC ram_0668,X
C - - - - - 0x00C17F 03:816F: BD 68 06  LDA ram_0668,X
C - - - - - 0x00C182 03:8172: 29 0F     AND #$0F
C - - - - - 0x00C184 03:8174: F0 03     BEQ bra_8179
C - - - - - 0x00C186 03:8176: 4C 89 81  JMP loc_8189
bra_8179:
C - - - - - 0x00C189 03:8179: 20 39 83  JSR sub_8339
C - - - - - 0x00C18C 03:817C: BD 68 06  LDA ram_0668,X
C - - - - - 0x00C18F 03:817F: 4A        LSR
C - - - - - 0x00C190 03:8180: 4A        LSR
C - - - - - 0x00C191 03:8181: 4A        LSR
C - - - - - 0x00C192 03:8182: 4A        LSR
C - - - - - 0x00C193 03:8183: 1D 68 06  ORA ram_0668,X
C - - - - - 0x00C196 03:8186: 9D 68 06  STA ram_0668,X
loc_8189:
C D 0 - - - 0x00C199 03:8189: E8        INX
C - - - - - 0x00C19A 03:818A: E0 0C     CPX #$0C
C - - - - - 0x00C19C 03:818C: D0 DE     BNE bra_816C
C - - - - - 0x00C19E 03:818E: 60        RTS


; bzk garbage
loc_818F:
- - - - - - 0x00C19F 03:818F: A9 00     LDA #$00
- - - - - - 0x00C1A1 03:8191: 4C 8F 81  JMP loc_818F



sub_8194:
C - - - - - 0x00C1A4 03:8194: A5 32     LDA ram_0032
C - - - - - 0x00C1A6 03:8196: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00C1A9 03:8199: A5 33     LDA ram_0033
C - - - - - 0x00C1AB 03:819B: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00C1AE 03:819E: A5 34     LDA ram_0034
C - - - - - 0x00C1B0 03:81A0: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00C1B3 03:81A3: A5 35     LDA ram_0035
C - - - - - 0x00C1B5 03:81A5: 8D 6C 03  STA ram_мяч_Y_hi
C - - - - - 0x00C1B8 03:81A8: 60        RTS



sub_81A9:
C - - - - - 0x00C1B9 03:81A9: AD 59 00  LDA a: ram_подтип_экрана
C - - - - - 0x00C1BC 03:81AC: C9 03     CMP #$03
C - - - - - 0x00C1BE 03:81AE: F0 07     BEQ bra_81B7_RTS
C - - - - - 0x00C1C0 03:81B0: C9 06     CMP #$06
C - - - - - 0x00C1C2 03:81B2: D0 04     BNE bra_81B8
C - - - - - 0x00C1C4 03:81B4: 4C 98 82  JMP loc_8298
bra_81B7_RTS:
C - - - - - 0x00C1C7 03:81B7: 60        RTS
bra_81B8:
C - - - - - 0x00C1C8 03:81B8: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C1CB 03:81BB: 48        PHA
C - - - - - 0x00C1CC 03:81BC: A2 00     LDX #$00
bra_81BE:
C - - - - - 0x00C1CE 03:81BE: 20 DD 81  JSR sub_81DD
C - - - - - 0x00C1D1 03:81C1: E8        INX
C - - - - - 0x00C1D2 03:81C2: E0 02     CPX #$02
C - - - - - 0x00C1D4 03:81C4: 90 F8     BCC bra_81BE
C - - - - - 0x00C1D6 03:81C6: 68        PLA
C - - - - - 0x00C1D7 03:81C7: 8D D6 04  STA ram_игрок_с_мячом
C - - - - - 0x00C1DA 03:81CA: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00C1DD 03:81CD: 29 20     AND #$20
C - - - - - 0x00C1DF 03:81CF: F0 0B     BEQ bra_81DC_RTS
C - - - - - 0x00C1E1 03:81D1: AD CC 05  LDA ram_счетчик_смен
C - - - - - 0x00C1E4 03:81D4: 29 7F     AND #$7F
C - - - - - 0x00C1E6 03:81D6: A8        TAY
C - - - - - 0x00C1E7 03:81D7: A9 2B     LDA #$2B
C - - - - - 0x00C1E9 03:81D9: 99 5C 06  STA ram_интеллект_бота,Y
bra_81DC_RTS:
C - - - - - 0x00C1EC 03:81DC: 60        RTS



sub_81DD:
C - - - - - 0x00C1ED 03:81DD: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C1F0 03:81E0: 29 40     AND #$40
C - - - - - 0x00C1F2 03:81E2: D0 22     BNE bra_8206
C - - - - - 0x00C1F4 03:81E4: AD 65 04  LDA ram_мяч_номер_движения
C - - - - - 0x00C1F7 03:81E7: 29 7F     AND #$7F
C - - - - - 0x00C1F9 03:81E9: C9 04     CMP #$04
C - - - - - 0x00C1FB 03:81EB: F0 0E     BEQ bra_81FB
C - - - - - 0x00C1FD 03:81ED: C9 0A     CMP #$0A
C - - - - - 0x00C1FF 03:81EF: F0 0A     BEQ bra_81FB
C - - - - - 0x00C201 03:81F1: C9 15     CMP #$15
C - - - - - 0x00C203 03:81F3: F0 06     BEQ bra_81FB
bra_81F5:
C - - - - - 0x00C205 03:81F5: 20 9B A5  JSR sub_A59B
C - - - - - 0x00C208 03:81F8: 4C 1E 82  JMP loc_821E_RTS
bra_81FB:
C - - - - - 0x00C20B 03:81FB: 8A        TXA
C - - - - - 0x00C20C 03:81FC: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00C20F 03:81FF: 29 01     AND #$01
C - - - - - 0x00C211 03:8201: D0 F2     BNE bra_81F5
C - - - - - 0x00C213 03:8203: 4C 0E 82  JMP loc_820E
bra_8206:
C - - - - - 0x00C216 03:8206: 8A        TXA
C - - - - - 0x00C217 03:8207: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00C21A 03:820A: 29 01     AND #$01
C - - - - - 0x00C21C 03:820C: D0 06     BNE bra_8214
loc_820E:
C D 0 - - - 0x00C21E 03:820E: 20 06 A1  JSR sub_A106
C - - - - - 0x00C221 03:8211: 4C 1E 82  JMP loc_821E_RTS
bra_8214:
C - - - - - 0x00C224 03:8214: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C227 03:8217: 29 40     AND #$40
C - - - - - 0x00C229 03:8219: F0 03     BEQ bra_821E_RTS
C - - - - - 0x00C22B 03:821B: 20 9C A3  JSR sub_A39C
bra_821E_RTS:
loc_821E_RTS:
C D 0 - - - 0x00C22E 03:821E: 60        RTS



sub_821F:
C - - - - - 0x00C22F 03:821F: 8A        TXA
C - - - - - 0x00C230 03:8220: 48        PHA
C - - - - - 0x00C231 03:8221: A2 00     LDX #$00
bra_8223:
C - - - - - 0x00C233 03:8223: B5 2C     LDA ram_002C,X
C - - - - - 0x00C235 03:8225: A8        TAY
C - - - - - 0x00C236 03:8226: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x00C239 03:8229: 29 7F     AND #$7F
C - - - - - 0x00C23B 03:822B: C9 04     CMP #$04
C - - - - - 0x00C23D 03:822D: F0 13     BEQ bra_8242
C - - - - - 0x00C23F 03:822F: C9 05     CMP #$05
C - - - - - 0x00C241 03:8231: F0 0F     BEQ bra_8242
C - - - - - 0x00C243 03:8233: C9 2D     CMP #$2D
C - - - - - 0x00C245 03:8235: F0 0B     BEQ bra_8242
C - - - - - 0x00C247 03:8237: C9 2E     CMP #$2E
C - - - - - 0x00C249 03:8239: F0 07     BEQ bra_8242
C - - - - - 0x00C24B 03:823B: C9 3C     CMP #$3C
C - - - - - 0x00C24D 03:823D: F0 03     BEQ bra_8242
C - - - - - 0x00C24F 03:823F: 4C 4B 82  JMP loc_824B
bra_8242:
C - - - - - 0x00C252 03:8242: E8        INX
C - - - - - 0x00C253 03:8243: E8        INX
C - - - - - 0x00C254 03:8244: E0 0C     CPX #$0C
C - - - - - 0x00C256 03:8246: 90 DB     BCC bra_8223
- - - - - - 0x00C258 03:8248: 4C 5E 82  JMP loc_825E



loc_824B:
C D 0 - - - 0x00C25B 03:824B: AD 65 04  LDA ram_мяч_номер_движения
C - - - - - 0x00C25E 03:824E: 29 7F     AND #$7F
C - - - - - 0x00C260 03:8250: C9 05     CMP #$05
C - - - - - 0x00C262 03:8252: D0 05     BNE bra_8259
C - - - - - 0x00C264 03:8254: A9 05     LDA #$05
C - - - - - 0x00C266 03:8256: 4C 5B 82  JMP loc_825B
bra_8259:
C - - - - - 0x00C269 03:8259: A9 06     LDA #$06
loc_825B:
C D 0 - - - 0x00C26B 03:825B: 99 5C 06  STA ram_интеллект_бота,Y
loc_825E:
C - - - - - 0x00C26E 03:825E: 68        PLA
C - - - - - 0x00C26F 03:825F: AA        TAX
C - - - - - 0x00C270 03:8260: 60        RTS



bra_8261:
sub_8261:
C - - - - - 0x00C271 03:8261: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00C274 03:8264: C8        INY
C - - - - - 0x00C275 03:8265: C8        INY
C - - - - - 0x00C276 03:8266: C0 0B     CPY #$0B
C - - - - - 0x00C278 03:8268: 90 F7     BCC bra_8261
C - - - - - 0x00C27A 03:826A: 60        RTS



bra_826B:
sub_826B:
C - - - - - 0x00C27B 03:826B: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00C27E 03:826E: 29 30     AND #$30
C - - - - - 0x00C280 03:8270: F0 0B     BEQ bra_827D
C - - - - - 0x00C282 03:8272: C9 10     CMP #$10
C - - - - - 0x00C284 03:8274: F0 0C     BEQ bra_8282
C - - - - - 0x00C286 03:8276: C9 20     CMP #$20
C - - - - - 0x00C288 03:8278: F0 0D     BEQ bra_8287
C - - - - - 0x00C28A 03:827A: 4C 8C 82  JMP loc_828C
bra_827D:
C - - - - - 0x00C28D 03:827D: A5 1C     LDA ram_001C
C - - - - - 0x00C28F 03:827F: 4C 8E 82  JMP loc_828E
bra_8282:
C - - - - - 0x00C292 03:8282: A5 1D     LDA ram_001D
C - - - - - 0x00C294 03:8284: 4C 8E 82  JMP loc_828E
bra_8287:
C - - - - - 0x00C297 03:8287: A5 1E     LDA ram_001E
C - - - - - 0x00C299 03:8289: 4C 8E 82  JMP loc_828E
loc_828C:
C D 0 - - - 0x00C29C 03:828C: A5 1F     LDA ram_001F
loc_828E:
C D 0 - - - 0x00C29E 03:828E: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00C2A1 03:8291: C8        INY
C - - - - - 0x00C2A2 03:8292: C8        INY
C - - - - - 0x00C2A3 03:8293: C0 0B     CPY #$0B
C - - - - - 0x00C2A5 03:8295: 90 D4     BCC bra_826B
C - - - - - 0x00C2A7 03:8297: 60        RTS



loc_8298:
C D 0 - - - 0x00C2A8 03:8298: A9 FF     LDA #$FF
C - - - - - 0x00C2AA 03:829A: 8D 78 06  STA ram_приказ_боту
C - - - - - 0x00C2AD 03:829D: 8D 79 06  STA ram_приказ_боту + $01
C - - - - - 0x00C2B0 03:82A0: AD 8B 06  LDA ram_068B
C - - - - - 0x00C2B3 03:82A3: 29 01     AND #$01
C - - - - - 0x00C2B5 03:82A5: A8        TAY
C - - - - - 0x00C2B6 03:82A6: A9 0A     LDA #$0A
bra_82A8:
C - - - - - 0x00C2B8 03:82A8: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00C2BB 03:82AB: C8        INY
C - - - - - 0x00C2BC 03:82AC: C8        INY
C - - - - - 0x00C2BD 03:82AD: C0 0C     CPY #$0C
C - - - - - 0x00C2BF 03:82AF: 90 F7     BCC bra_82A8
C - - - - - 0x00C2C1 03:82B1: AD 8B 06  LDA ram_068B
C - - - - - 0x00C2C4 03:82B4: 29 01     AND #$01
C - - - - - 0x00C2C6 03:82B6: 49 01     EOR #$01
C - - - - - 0x00C2C8 03:82B8: A8        TAY
bra_82B9:
C - - - - - 0x00C2C9 03:82B9: C0 0A     CPY #$0A
C - - - - - 0x00C2CB 03:82BB: 90 05     BCC bra_82C2
C - - - - - 0x00C2CD 03:82BD: A9 0A     LDA #$0A
C - - - - - 0x00C2CF 03:82BF: 4C C4 82  JMP loc_82C4
bra_82C2:
C - - - - - 0x00C2D2 03:82C2: A9 29     LDA #$29
loc_82C4:
C D 0 - - - 0x00C2D4 03:82C4: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00C2D7 03:82C7: C8        INY
C - - - - - 0x00C2D8 03:82C8: C8        INY
C - - - - - 0x00C2D9 03:82C9: C0 0C     CPY #$0C
C - - - - - 0x00C2DB 03:82CB: 90 EC     BCC bra_82B9
C - - - - - 0x00C2DD 03:82CD: AE D6 04  LDX ram_игрок_с_мячом
C - - - - - 0x00C2E0 03:82D0: A5 5C     LDA ram_game_script
C - - - - - 0x00C2E2 03:82D2: 29 04     AND #$04
C - - - - - 0x00C2E4 03:82D4: D0 43     BNE bra_8319
C - - - - - 0x00C2E6 03:82D6: AD 1A 05  LDA ram_подающий_Y_hi
C - - - - - 0x00C2E9 03:82D9: F0 0A     BEQ bra_82E5
C - - - - - 0x00C2EB 03:82DB: AD 19 05  LDA ram_подающий_Y_lo
C - - - - - 0x00C2EE 03:82DE: C9 58     CMP #$58
C - - - - - 0x00C2F0 03:82E0: D0 0D     BNE bra_82EF
C - - - - - 0x00C2F2 03:82E2: 4C 04 83  JMP loc_8304
bra_82E5:
C - - - - - 0x00C2F5 03:82E5: AD 19 05  LDA ram_подающий_Y_lo
C - - - - - 0x00C2F8 03:82E8: C9 30     CMP #$30
C - - - - - 0x00C2FA 03:82EA: D0 03     BNE bra_82EF
C - - - - - 0x00C2FC 03:82EC: 4C 04 83  JMP loc_8304
bra_82EF:
C - - - - - 0x00C2FF 03:82EF: AD 8A 06  LDA ram_068A
C - - - - - 0x00C302 03:82F2: A8        TAY
C - - - - - 0x00C303 03:82F3: B9 34 83  LDA tbl_8334,Y
C - - - - - 0x00C306 03:82F6: 9D 5C 06  STA ram_интеллект_бота,X
C - - - - - 0x00C309 03:82F9: BD 68 06  LDA ram_0668,X
C - - - - - 0x00C30C 03:82FC: 29 F0     AND #$F0
C - - - - - 0x00C30E 03:82FE: 09 01     ORA #$01
C - - - - - 0x00C310 03:8300: 9D 68 06  STA ram_0668,X
C - - - - - 0x00C313 03:8303: 60        RTS



loc_8304:
C D 0 - - - 0x00C314 03:8304: AD 8A 06  LDA ram_068A
C - - - - - 0x00C317 03:8307: A8        TAY
C - - - - - 0x00C318 03:8308: B9 31 83  LDA tbl_8331,Y
C - - - - - 0x00C31B 03:830B: 9D 5C 06  STA ram_интеллект_бота,X
C - - - - - 0x00C31E 03:830E: BD 68 06  LDA ram_0668,X
C - - - - - 0x00C321 03:8311: 29 F0     AND #$F0
C - - - - - 0x00C323 03:8313: 09 01     ORA #$01
C - - - - - 0x00C325 03:8315: 9D 68 06  STA ram_0668,X
C - - - - - 0x00C328 03:8318: 60        RTS
bra_8319:
C - - - - - 0x00C329 03:8319: AD 8A 06  LDA ram_068A
C - - - - - 0x00C32C 03:831C: A8        TAY
C - - - - - 0x00C32D 03:831D: B9 2E 83  LDA tbl_832E,Y
C - - - - - 0x00C330 03:8320: 9D 5C 06  STA ram_интеллект_бота,X
C - - - - - 0x00C333 03:8323: BD 68 06  LDA ram_0668,X
C - - - - - 0x00C336 03:8326: 29 F0     AND #$F0
C - - - - - 0x00C338 03:8328: 09 01     ORA #$01
C - - - - - 0x00C33A 03:832A: 9D 68 06  STA ram_0668,X
C - - - - - 0x00C33D 03:832D: 60        RTS



tbl_832E:
- D 0 - - - 0x00C33E 03:832E: 15        .byte $15   ; 
- D 0 - - - 0x00C33F 03:832F: 16        .byte $16   ; 
- D 0 - - - 0x00C340 03:8330: 17        .byte $17   ; 



tbl_8331:
- D 0 - - - 0x00C341 03:8331: 18        .byte $18   ; 
- D 0 - - - 0x00C342 03:8332: 19        .byte $19   ; 
- D 0 - - - 0x00C343 03:8333: 1A        .byte $1A   ; 



tbl_8334:
- D 0 - - - 0x00C344 03:8334: 1B        .byte $1B   ; 
- D 0 - - - 0x00C345 03:8335: 1C        .byte $1C   ; 
- D 0 - - - 0x00C346 03:8336: 1D        .byte $1D   ; 
- D 0 - - - 0x00C347 03:8337: 1E        .byte $1E   ; 
- D 0 - - - 0x00C348 03:8338: 1F        .byte $1F   ; 



sub_8339:
C - - - - - 0x00C349 03:8339: BD 79 04  LDA ram_игрок_номер_действия,X
C - - - - - 0x00C34C 03:833C: 10 08     BPL bra_8346_RTS
C - - - - - 0x00C34E 03:833E: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00C351 03:8341: 10 03     BPL bra_8346_RTS
C - - - - - 0x00C353 03:8343: 4C 47 83  JMP loc_8347
bra_8346_RTS:
C - - - - - 0x00C356 03:8346: 60        RTS



loc_8347:
C D 0 - - - 0x00C357 03:8347: BD 5C 06  LDA ram_интеллект_бота,X
C - - - - - 0x00C35A 03:834A: 0A        ASL
C - - - - - 0x00C35B 03:834B: A8        TAY
C - - - - - 0x00C35C 03:834C: B9 59 83  LDA tbl_8359,Y
C - - - - - 0x00C35F 03:834F: 85 2C     STA ram_002C
C - - - - - 0x00C361 03:8351: B9 5A 83  LDA tbl_8359 + $01,Y
C - - - - - 0x00C364 03:8354: 85 2D     STA ram_002D
C - - - - - 0x00C366 03:8356: 6C 2C 00  JMP (ram_002C)

tbl_8359:
- D 0 - - - 0x00C369 03:8359: B1 83     .word ofs_014_83B1_00
- - - - - - 0x00C36B 03:835B: C4 86     .word ofs_014_86C4_01
- D 0 - - - 0x00C36D 03:835D: 3F 87     .word ofs_014_873F_02
- - - - - - 0x00C36F 03:835F: 60 87     .word ofs_014_8760_03
- D 0 - - - 0x00C371 03:8361: 34 87     .word ofs_014_8734_04
- D 0 - - - 0x00C373 03:8363: CA 83     .word ofs_014_83CA_05
- D 0 - - - 0x00C375 03:8365: F7 85     .word ofs_014_85F7_06
- - - - - - 0x00C377 03:8367: B9 84     .word ofs_014_84B9_07
- D 0 - - - 0x00C379 03:8369: D1 84     .word ofs_014_84D1_08
- D 0 - - - 0x00C37B 03:836B: 29 85     .word ofs_014_8529_09
- D 0 - - - 0x00C37D 03:836D: 36 86     .word ofs_014_8636_0A
- D 0 - - - 0x00C37F 03:836F: 63 87     .word ofs_014_8763_0B
- D 0 - - - 0x00C381 03:8371: D1 87     .word ofs_014_87D1_0C
- D 0 - - - 0x00C383 03:8373: 58 88     .word ofs_014_8858_0D
- D 0 - - - 0x00C385 03:8375: DD 89     .word ofs_014_89DD_0E
- D 0 - - - 0x00C387 03:8377: C8 8A     .word ofs_014_8AC8_0F
- - - - - - 0x00C389 03:8379: AB 8F     .word ofs_014_8FAB_10
- - - - - - 0x00C38B 03:837B: BB 8F     .word ofs_014_8FBB_11
- - - - - - 0x00C38D 03:837D: BB 8F     .word ofs_014_8FBB_12
- - - - - - 0x00C38F 03:837F: BB 8F     .word ofs_014_8FBB_13
- - - - - - 0x00C391 03:8381: 3E 90     .word ofs_014_903E_14
- D 0 - - - 0x00C393 03:8383: B7 90     .word ofs_014_90B7_15
- D 0 - - - 0x00C395 03:8385: CC 90     .word ofs_014_90CC_16
- D 0 - - - 0x00C397 03:8387: F1 90     .word ofs_014_90F1_17
- D 0 - - - 0x00C399 03:8389: B7 90     .word ofs_014_90B7_18
- D 0 - - - 0x00C39B 03:838B: CC 90     .word ofs_014_90CC_19
- D 0 - - - 0x00C39D 03:838D: F7 90     .word ofs_014_90F7_1A
- D 0 - - - 0x00C39F 03:838F: 06 91     .word ofs_014_9106_1B
- D 0 - - - 0x00C3A1 03:8391: B7 90     .word ofs_014_90B7_1C
- D 0 - - - 0x00C3A3 03:8393: 2F 91     .word ofs_014_912F_1D
- D 0 - - - 0x00C3A5 03:8395: CC 90     .word ofs_014_90CC_1E
- D 0 - - - 0x00C3A7 03:8397: F7 90     .word ofs_014_90F7_1F
- D 0 - - - 0x00C3A9 03:8399: 58 91     .word ofs_014_9158_20
- - - - - - 0x00C3AB 03:839B: B9 84     .word ofs_014_84B9_21
- D 0 - - - 0x00C3AD 03:839D: 58 91     .word ofs_014_9158_22
- D 0 - - - 0x00C3AF 03:839F: 0B 92     .word ofs_014_920B_23
- D 0 - - - 0x00C3B1 03:83A1: EC 92     .word ofs_014_92EC_24
- D 0 - - - 0x00C3B3 03:83A3: 76 93     .word ofs_014_9376_25
- D 0 - - - 0x00C3B5 03:83A5: 93 94     .word ofs_014_9493_26
- D 0 - - - 0x00C3B7 03:83A7: A5 94     .word ofs_014_94A5_27
- D 0 - - - 0x00C3B9 03:83A9: 33 95     .word ofs_014_9533_28
- D 0 - - - 0x00C3BB 03:83AB: 2F 96     .word ofs_014_962F_29
- D 0 - - - 0x00C3BD 03:83AD: 9D 96     .word ofs_014_969D_2A
- D 0 - - - 0x00C3BF 03:83AF: 2D 97     .word ofs_014_972D_2B



loc_83B1:
ofs_014_83B1_00:
C D 0 J - - 0x00C3C1 03:83B1: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00C3C4 03:83B4: 29 7F     AND #$7F
C - - - - - 0x00C3C6 03:83B6: C9 21     CMP #$21
C - - - - - 0x00C3C8 03:83B8: D0 05     BNE bra_83BF
C - - - - - 0x00C3CA 03:83BA: A9 0F     LDA #$0F
C - - - - - 0x00C3CC 03:83BC: 4C C1 83  JMP loc_83C1
bra_83BF:
C - - - - - 0x00C3CF 03:83BF: A9 01     LDA #$01
loc_83C1:
C D 0 - - - 0x00C3D1 03:83C1: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C3D4 03:83C4: A9 FF     LDA #$FF
C - - - - - 0x00C3D6 03:83C6: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00C3D9 03:83C9: 60        RTS



loc_83CA:
ofs_014_83CA_05:
C D 0 J - - 0x00C3DA 03:83CA: 20 0D 84  JSR sub_840D
C - - - - - 0x00C3DD 03:83CD: E0 0A     CPX #$0A
C - - - - - 0x00C3DF 03:83CF: 90 10     BCC bra_83E1
C - - - - - 0x00C3E1 03:83D1: A5 22     LDA ram_0022
C - - - - - 0x00C3E3 03:83D3: D0 09     BNE bra_83DE
C - - - - - 0x00C3E5 03:83D5: A5 21     LDA ram_0021
C - - - - - 0x00C3E7 03:83D7: C9 90     CMP #$90
C - - - - - 0x00C3E9 03:83D9: 90 03     BCC bra_83DE
C - - - - - 0x00C3EB 03:83DB: 4C E1 83  JMP loc_83E1
bra_83DE:
C - - - - - 0x00C3EE 03:83DE: 4C 58 88  JMP loc_8858
bra_83E1:
loc_83E1:
C D 0 - - - 0x00C3F1 03:83E1: A5 21     LDA ram_0021
C - - - - - 0x00C3F3 03:83E3: 9D 38 06  STA ram_0638,X
C - - - - - 0x00C3F6 03:83E6: A5 22     LDA ram_0022
C - - - - - 0x00C3F8 03:83E8: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C3FB 03:83EB: E0 0A     CPX #$0A
C - - - - - 0x00C3FD 03:83ED: D0 0D     BNE bra_83FC
C - - - - - 0x00C3FF 03:83EF: A9 A0     LDA #$A0
C - - - - - 0x00C401 03:83F1: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C404 03:83F4: A9 00     LDA #$00
C - - - - - 0x00C406 03:83F6: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00C409 03:83F9: 4C 06 84  JMP loc_8406
bra_83FC:
C - - - - - 0x00C40C 03:83FC: A9 60     LDA #$60
C - - - - - 0x00C40E 03:83FE: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C411 03:8401: A9 03     LDA #$03
C - - - - - 0x00C413 03:8403: 9D 2C 06  STA ram_062C,X
loc_8406:
C D 0 - - - 0x00C416 03:8406: 20 37 AE  JSR sub_AE37
C - - - - - 0x00C419 03:8409: 20 5F 98  JSR sub_985F
C - - - - - 0x00C41C 03:840C: 60        RTS



sub_840D:
C - - - - - 0x00C41D 03:840D: E0 0A     CPX #$0A
C - - - - - 0x00C41F 03:840F: D0 2B     BNE bra_843C
C - - - - - 0x00C421 03:8411: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00C424 03:8414: 38        SEC
C - - - - - 0x00C425 03:8415: FD 14 03  SBC ram_игрок_X_lo,X
C - - - - - 0x00C428 03:8418: 85 1D     STA ram_001D
C - - - - - 0x00C42A 03:841A: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00C42D 03:841D: FD 27 03  SBC ram_игрок_X_hi,X
C - - - - - 0x00C430 03:8420: 85 1E     STA ram_001E
C - - - - - 0x00C432 03:8422: AD 02 04  LDA ram_мяч_spd_X_hi
C - - - - - 0x00C435 03:8425: 49 FF     EOR #$FF
C - - - - - 0x00C437 03:8427: 85 2D     STA ram_002D
C - - - - - 0x00C439 03:8429: AD F4 03  LDA ram_мяч_spd_X_lo
C - - - - - 0x00C43C 03:842C: 49 FF     EOR #$FF
C - - - - - 0x00C43E 03:842E: 18        CLC
C - - - - - 0x00C43F 03:842F: 69 01     ADC #$01
C - - - - - 0x00C441 03:8431: 85 2C     STA ram_002C
C - - - - - 0x00C443 03:8433: A5 2D     LDA ram_002D
C - - - - - 0x00C445 03:8435: 69 00     ADC #$00
C - - - - - 0x00C447 03:8437: 85 2D     STA ram_002D
C - - - - - 0x00C449 03:8439: 4C 57 84  JMP loc_8457
bra_843C:
C - - - - - 0x00C44C 03:843C: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00C44F 03:843F: 38        SEC
C - - - - - 0x00C450 03:8440: ED 20 03  SBC ram_мяч_X_lo
C - - - - - 0x00C453 03:8443: 85 1D     STA ram_001D
C - - - - - 0x00C455 03:8445: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00C458 03:8448: ED 33 03  SBC ram_мяч_X_hi
C - - - - - 0x00C45B 03:844B: 85 1E     STA ram_001E
C - - - - - 0x00C45D 03:844D: AD 02 04  LDA ram_мяч_spd_X_hi
C - - - - - 0x00C460 03:8450: 85 2D     STA ram_002D
C - - - - - 0x00C462 03:8452: AD F4 03  LDA ram_мяч_spd_X_lo
C - - - - - 0x00C465 03:8455: 85 2C     STA ram_002C
loc_8457:
C D 0 - - - 0x00C467 03:8457: A9 00     LDA #$00
C - - - - - 0x00C469 03:8459: 85 1C     STA ram_001C
C - - - - - 0x00C46B 03:845B: 20 26 C0  JSR sub_0x01C036
C - - - - - 0x00C46E 03:845E: A5 1C     LDA ram_001C
C - - - - - 0x00C470 03:8460: 85 1F     STA ram_001F
C - - - - - 0x00C472 03:8462: AD 1E 04  LDA ram_мяч_spd_Y_hi
C - - - - - 0x00C475 03:8465: 30 11     BMI bra_8478
C - - - - - 0x00C477 03:8467: AD 1E 04  LDA ram_мяч_spd_Y_hi
C - - - - - 0x00C47A 03:846A: 85 1D     STA ram_001D
C - - - - - 0x00C47C 03:846C: AD 10 04  LDA ram_мяч_spd_Y_lo
C - - - - - 0x00C47F 03:846F: 85 1C     STA ram_001C
C - - - - - 0x00C481 03:8471: A9 00     LDA #$00
C - - - - - 0x00C483 03:8473: 85 1E     STA ram_001E
C - - - - - 0x00C485 03:8475: 4C 8F 84  JMP loc_848F
bra_8478:
C - - - - - 0x00C488 03:8478: AD 1E 04  LDA ram_мяч_spd_Y_hi
C - - - - - 0x00C48B 03:847B: 49 FF     EOR #$FF
C - - - - - 0x00C48D 03:847D: 85 1D     STA ram_001D
C - - - - - 0x00C48F 03:847F: AD 10 04  LDA ram_мяч_spd_Y_lo
C - - - - - 0x00C492 03:8482: 49 FF     EOR #$FF
C - - - - - 0x00C494 03:8484: 18        CLC
C - - - - - 0x00C495 03:8485: 69 01     ADC #$01
C - - - - - 0x00C497 03:8487: 85 1C     STA ram_001C
C - - - - - 0x00C499 03:8489: A5 1D     LDA ram_001D
C - - - - - 0x00C49B 03:848B: 69 00     ADC #$00
C - - - - - 0x00C49D 03:848D: 85 1D     STA ram_001D
loc_848F:
C D 0 - - - 0x00C49F 03:848F: 20 2C C0  JSR sub_0x01C03C
C - - - - - 0x00C4A2 03:8492: AD 1E 04  LDA ram_мяч_spd_Y_hi
C - - - - - 0x00C4A5 03:8495: 30 12     BMI bra_84A9
C - - - - - 0x00C4A7 03:8497: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00C4AA 03:849A: 18        CLC
C - - - - - 0x00C4AB 03:849B: 65 21     ADC ram_0021
C - - - - - 0x00C4AD 03:849D: 85 21     STA ram_0021
C - - - - - 0x00C4AF 03:849F: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00C4B2 03:84A2: 65 22     ADC ram_0022
C - - - - - 0x00C4B4 03:84A4: 85 22     STA ram_0022
C - - - - - 0x00C4B6 03:84A6: 4C B8 84  JMP loc_84B8_RTS
bra_84A9:
C - - - - - 0x00C4B9 03:84A9: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00C4BC 03:84AC: 38        SEC
C - - - - - 0x00C4BD 03:84AD: E5 21     SBC ram_0021
C - - - - - 0x00C4BF 03:84AF: 85 21     STA ram_0021
C - - - - - 0x00C4C1 03:84B1: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00C4C4 03:84B4: E5 22     SBC ram_0022
C - - - - - 0x00C4C6 03:84B6: 85 22     STA ram_0022
loc_84B8_RTS:
C D 0 - - - 0x00C4C8 03:84B8: 60        RTS



loc_84B9:
ofs_014_84B9_07:
ofs_014_84B9_21:
C D 0 - - - 0x00C4C9 03:84B9: BD 5C 06  LDA ram_интеллект_бота,X
C - - - - - 0x00C4CC 03:84BC: C9 21     CMP #$21
C - - - - - 0x00C4CE 03:84BE: D0 06     BNE bra_84C6
- - - - - - 0x00C4D0 03:84C0: BC C7 84  LDY tbl_84CD - $06,X
- - - - - - 0x00C4D3 03:84C3: 4C C9 84  JMP loc_84C9
bra_84C6:
C - - - - - 0x00C4D6 03:84C6: AC D6 04  LDY ram_игрок_с_мячом
loc_84C9:
C - - - - - 0x00C4D9 03:84C9: 20 B5 99  JSR sub_99B5
C - - - - - 0x00C4DC 03:84CC: 60        RTS



tbl_84CD:
- D 0 - - - 0x00C4DD 03:84CD: 03        .byte $03   ; 
- D 0 - - - 0x00C4DE 03:84CE: 05        .byte $05   ; 
- D 0 - - - 0x00C4DF 03:84CF: 02        .byte $02   ; 
- D 0 - - - 0x00C4E0 03:84D0: 04        .byte $04   ; 



ofs_014_84D1_08:
C - - J - - 0x00C4E1 03:84D1: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00C4E4 03:84D4: 29 03     AND #$03
C - - - - - 0x00C4E6 03:84D6: D0 16     BNE bra_84EE
- - - - - - 0x00C4E8 03:84D8: AD 57 00  LDA a: ram_опция_режим_сложность
- - - - - - 0x00C4EB 03:84DB: 29 80     AND #$80
- - - - - - 0x00C4ED 03:84DD: F0 0F     BEQ bra_84EE
- - - - - - 0x00C4EF 03:84DF: 8A        TXA
- - - - - - 0x00C4F0 03:84E0: 29 01     AND #$01
- - - - - - 0x00C4F2 03:84E2: F0 0A     BEQ bra_84EE
- - - - - - 0x00C4F4 03:84E4: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00C4F7 03:84E7: C9 30     CMP #$30
- - - - - - 0x00C4F9 03:84E9: 90 03     BCC bra_84EE
- - - - - - 0x00C4FB 03:84EB: 4C B9 84  JMP loc_84B9
bra_84EE:
C - - - - - 0x00C4FE 03:84EE: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00C501 03:84F1: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00C504 03:84F4: 85 1C     STA ram_001C
C - - - - - 0x00C506 03:84F6: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00C509 03:84F9: A5 1C     LDA ram_001C
C - - - - - 0x00C50B 03:84FB: D9 25 85  CMP tbl_8525,Y
C - - - - - 0x00C50E 03:84FE: 90 03     BCC bra_8503
C - - - - - 0x00C510 03:8500: 4C B9 84  JMP loc_84B9
bra_8503:
C - - - - - 0x00C513 03:8503: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00C516 03:8506: 29 C0     AND #$C0
C - - - - - 0x00C518 03:8508: C9 C0     CMP #$C0
C - - - - - 0x00C51A 03:850A: F0 05     BEQ bra_8511
C - - - - - 0x00C51C 03:850C: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x00C51F 03:850F: 10 0E     BPL bra_851F
bra_8511:
C - - - - - 0x00C521 03:8511: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00C524 03:8514: 10 06     BPL bra_851C
C - - - - - 0x00C526 03:8516: A9 42     LDA #$42
C - - - - - 0x00C528 03:8518: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C52B 03:851B: 60        RTS
bra_851C:
C - - - - - 0x00C52C 03:851C: 4C 57 9B  JMP loc_9B57
bra_851F:
C - - - - - 0x00C52F 03:851F: A9 23     LDA #$23
C - - - - - 0x00C531 03:8521: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C534 03:8524: 60        RTS



tbl_8525:
- D 0 - - - 0x00C535 03:8525: 18        .byte $18   ; 
- D 0 - - - 0x00C536 03:8526: 18        .byte $18   ; 
- D 0 - - - 0x00C537 03:8527: 1C        .byte $1C   ; 
- D 0 - - - 0x00C538 03:8528: 20        .byte $20   ; 



loc_8529:
ofs_014_8529_09:
C D 0 J - - 0x00C539 03:8529: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00C53C 03:852C: 29 03     AND #$03
C - - - - - 0x00C53E 03:852E: D0 16     BNE bra_8546
- - - - - - 0x00C540 03:8530: AD 57 00  LDA a: ram_опция_режим_сложность
- - - - - - 0x00C543 03:8533: 29 80     AND #$80
- - - - - - 0x00C545 03:8535: F0 0F     BEQ bra_8546
- - - - - - 0x00C547 03:8537: 8A        TXA
- - - - - - 0x00C548 03:8538: 29 01     AND #$01
- - - - - - 0x00C54A 03:853A: F0 0A     BEQ bra_8546
- - - - - - 0x00C54C 03:853C: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00C54F 03:853F: C9 30     CMP #$30
- - - - - - 0x00C551 03:8541: 90 03     BCC bra_8546
- - - - - - 0x00C553 03:8543: 4C B9 84  JMP loc_84B9
bra_8546:
C - - - - - 0x00C556 03:8546: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00C559 03:8549: 29 40     AND #$40
C - - - - - 0x00C55B 03:854B: F0 03     BEQ bra_8550
C - - - - - 0x00C55D 03:854D: 4C AC 85  JMP loc_85AC
bra_8550:
loc_8550:
C D 0 - - - 0x00C560 03:8550: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00C563 03:8553: 29 02     AND #$02
C - - - - - 0x00C565 03:8555: F0 03     BEQ bra_855A
C - - - - - 0x00C567 03:8557: 4C CD 85  JMP loc_85CD
bra_855A:
loc_855A:
C D 0 - - - 0x00C56A 03:855A: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00C56D 03:855D: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00C570 03:8560: 85 1C     STA ram_001C
C - - - - - 0x00C572 03:8562: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00C575 03:8565: A5 1C     LDA ram_001C
C - - - - - 0x00C577 03:8567: D9 A8 85  CMP tbl_85A8,Y
C - - - - - 0x00C57A 03:856A: 90 03     BCC bra_856F
C - - - - - 0x00C57C 03:856C: 4C B9 84  JMP loc_84B9
bra_856F:
C - - - - - 0x00C57F 03:856F: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00C582 03:8572: 29 C0     AND #$C0
C - - - - - 0x00C584 03:8574: C9 C0     CMP #$C0
C - - - - - 0x00C586 03:8576: F0 1C     BEQ bra_8594
C - - - - - 0x00C588 03:8578: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00C58B 03:857B: 29 0F     AND #$0F
C - - - - - 0x00C58D 03:857D: C9 0C     CMP #$0C
C - - - - - 0x00C58F 03:857F: B0 13     BCS bra_8594
C - - - - - 0x00C591 03:8581: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00C594 03:8584: 29 02     AND #$02
C - - - - - 0x00C596 03:8586: D0 17     BNE bra_859F
C - - - - - 0x00C598 03:8588: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00C59B 03:858B: 29 08     AND #$08
C - - - - - 0x00C59D 03:858D: D0 05     BNE bra_8594
C - - - - - 0x00C59F 03:858F: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00C5A2 03:8592: 10 0E     BPL bra_85A2
bra_8594:
C - - - - - 0x00C5A4 03:8594: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00C5A7 03:8597: 10 06     BPL bra_859F
C - - - - - 0x00C5A9 03:8599: A9 3B     LDA #$3B
C - - - - - 0x00C5AB 03:859B: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C5AE 03:859E: 60        RTS
bra_859F:
C - - - - - 0x00C5AF 03:859F: 4C 57 9B  JMP loc_9B57
bra_85A2:
C - - - - - 0x00C5B2 03:85A2: A9 22     LDA #$22
C - - - - - 0x00C5B4 03:85A4: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C5B7 03:85A7: 60        RTS



tbl_85A8:
- D 0 - - - 0x00C5B8 03:85A8: 10        .byte $10   ; 
- D 0 - - - 0x00C5B9 03:85A9: 10        .byte $10   ; 
- D 0 - - - 0x00C5BA 03:85AA: 15        .byte $15   ; 
- D 0 - - - 0x00C5BB 03:85AB: 1C        .byte $1C   ; 



loc_85AC:
C D 0 - - - 0x00C5BC 03:85AC: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C5BF 03:85AF: 85 1F     STA ram_001F
C - - - - - 0x00C5C1 03:85B1: 20 1A AE  JSR sub_AE1A
C - - - - - 0x00C5C4 03:85B4: A5 2A     LDA ram_002A
C - - - - - 0x00C5C6 03:85B6: C9 30     CMP #$30
C - - - - - 0x00C5C8 03:85B8: B0 10     BCS bra_85CA
C - - - - - 0x00C5CA 03:85BA: A5 2B     LDA ram_002B
C - - - - - 0x00C5CC 03:85BC: C9 20     CMP #$20
C - - - - - 0x00C5CE 03:85BE: B0 0A     BCS bra_85CA
C - - - - - 0x00C5D0 03:85C0: A5 29     LDA ram_0029
C - - - - - 0x00C5D2 03:85C2: 30 06     BMI bra_85CA
C - - - - - 0x00C5D4 03:85C4: A9 19     LDA #$19
C - - - - - 0x00C5D6 03:85C6: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C5D9 03:85C9: 60        RTS
bra_85CA:
C - - - - - 0x00C5DA 03:85CA: 4C 50 85  JMP loc_8550



loc_85CD:
C D 0 - - - 0x00C5DD 03:85CD: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00C5E0 03:85D0: 85 1F     STA ram_001F
C - - - - - 0x00C5E2 03:85D2: 20 1A AE  JSR sub_AE1A
C - - - - - 0x00C5E5 03:85D5: A5 2A     LDA ram_002A
C - - - - - 0x00C5E7 03:85D7: C9 30     CMP #$30
C - - - - - 0x00C5E9 03:85D9: B0 19     BCS bra_85F4
C - - - - - 0x00C5EB 03:85DB: A5 2B     LDA ram_002B
C - - - - - 0x00C5ED 03:85DD: C9 20     CMP #$20
C - - - - - 0x00C5EF 03:85DF: B0 13     BCS bra_85F4
C - - - - - 0x00C5F1 03:85E1: A5 29     LDA ram_0029
C - - - - - 0x00C5F3 03:85E3: 30 0F     BMI bra_85F4
C - - - - - 0x00C5F5 03:85E5: A9 00     LDA #$00
C - - - - - 0x00C5F7 03:85E7: 85 1E     STA ram_001E
C - - - - - 0x00C5F9 03:85E9: 85 1F     STA ram_001F
C - - - - - 0x00C5FB 03:85EB: 20 75 B1  JSR sub_B175
C - - - - - 0x00C5FE 03:85EE: A9 30     LDA #$30
C - - - - - 0x00C600 03:85F0: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C603 03:85F3: 60        RTS
bra_85F4:
C - - - - - 0x00C604 03:85F4: 4C 5A 85  JMP loc_855A



loc_85F7:
ofs_014_85F7_06:
C D 0 J - - 0x00C607 03:85F7: 86 22     STX ram_0022
C - - - - - 0x00C609 03:85F9: 8A        TXA
C - - - - - 0x00C60A 03:85FA: 49 01     EOR #$01
C - - - - - 0x00C60C 03:85FC: 29 01     AND #$01
C - - - - - 0x00C60E 03:85FE: 85 23     STA ram_0023
C - - - - - 0x00C610 03:8600: A9 06     LDA #$06
C - - - - - 0x00C612 03:8602: 85 27     STA ram_0027
C - - - - - 0x00C614 03:8604: A9 0A     LDA #$0A
C - - - - - 0x00C616 03:8606: 85 28     STA ram_0028
C - - - - - 0x00C618 03:8608: A9 02     LDA #$02
C - - - - - 0x00C61A 03:860A: 85 29     STA ram_0029
C - - - - - 0x00C61C 03:860C: 20 3E C0  JSR sub_0x01C04E
C - - - - - 0x00C61F 03:860F: A5 2D     LDA ram_002D
C - - - - - 0x00C621 03:8611: C9 40     CMP #$40
C - - - - - 0x00C623 03:8613: B0 1B     BCS bra_8630
C - - - - - 0x00C625 03:8615: AD F4 03  LDA ram_мяч_spd_X_lo
C - - - - - 0x00C628 03:8618: 0D 10 04  ORA ram_мяч_spd_Y_lo
C - - - - - 0x00C62B 03:861B: F0 10     BEQ bra_862D
C - - - - - 0x00C62D 03:861D: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00C630 03:8620: 29 0F     AND #$0F
C - - - - - 0x00C632 03:8622: C9 0E     CMP #$0E
C - - - - - 0x00C634 03:8624: B0 07     BCS bra_862D
C - - - - - 0x00C636 03:8626: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00C639 03:8629: C9 02     CMP #$02
C - - - - - 0x00C63B 03:862B: 90 03     BCC bra_8630
bra_862D:
C - - - - - 0x00C63D 03:862D: 4C EC 92  JMP loc_92EC
bra_8630:
C - - - - - 0x00C640 03:8630: A0 0C     LDY #$0C
C - - - - - 0x00C642 03:8632: 20 B5 99  JSR sub_99B5
C - - - - - 0x00C645 03:8635: 60        RTS



loc_8636:
ofs_014_8636_0A:
C D 0 J - - 0x00C646 03:8636: 8A        TXA
C - - - - - 0x00C647 03:8637: 29 01     AND #$01
C - - - - - 0x00C649 03:8639: A8        TAY
C - - - - - 0x00C64A 03:863A: B9 30 05  LDA ram_расстановка_команды,Y
C - - - - - 0x00C64D 03:863D: 29 03     AND #$03
C - - - - - 0x00C64F 03:863F: 0A        ASL
C - - - - - 0x00C650 03:8640: A8        TAY
C - - - - - 0x00C651 03:8641: B9 E6 86  LDA tbl_86E6,Y
C - - - - - 0x00C654 03:8644: 85 2C     STA ram_002C
C - - - - - 0x00C656 03:8646: B9 E7 86  LDA tbl_86E6 + $01,Y
C - - - - - 0x00C659 03:8649: 85 2D     STA ram_002D
C - - - - - 0x00C65B 03:864B: 8A        TXA
C - - - - - 0x00C65C 03:864C: 4A        LSR
C - - - - - 0x00C65D 03:864D: A8        TAY
C - - - - - 0x00C65E 03:864E: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C660 03:8650: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C663 03:8653: 98        TYA
C - - - - - 0x00C664 03:8654: 18        CLC
C - - - - - 0x00C665 03:8655: 69 06     ADC #$06
C - - - - - 0x00C667 03:8657: A8        TAY
C - - - - - 0x00C668 03:8658: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C66A 03:865A: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00C66D 03:865D: 98        TYA
C - - - - - 0x00C66E 03:865E: 18        CLC
C - - - - - 0x00C66F 03:865F: 69 06     ADC #$06
C - - - - - 0x00C671 03:8661: A8        TAY
C - - - - - 0x00C672 03:8662: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C674 03:8664: 9D 38 06  STA ram_0638,X
C - - - - - 0x00C677 03:8667: 98        TYA
C - - - - - 0x00C678 03:8668: 18        CLC
C - - - - - 0x00C679 03:8669: 69 06     ADC #$06
C - - - - - 0x00C67B 03:866B: A8        TAY
C - - - - - 0x00C67C 03:866C: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C67E 03:866E: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C681 03:8671: 8A        TXA
C - - - - - 0x00C682 03:8672: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00C685 03:8675: 29 01     AND #$01
C - - - - - 0x00C687 03:8677: D0 31     BNE bra_86AA
C - - - - - 0x00C689 03:8679: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00C68C 03:867C: 29 40     AND #$40
C - - - - - 0x00C68E 03:867E: F0 2A     BEQ bra_86AA
C - - - - - 0x00C690 03:8680: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00C693 03:8683: 8A        TXA
C - - - - - 0x00C694 03:8684: 29 01     AND #$01
C - - - - - 0x00C696 03:8686: D0 0A     BNE bra_8692
C - - - - - 0x00C698 03:8688: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00C69B 03:868B: C9 02     CMP #$02
C - - - - - 0x00C69D 03:868D: 90 1B     BCC bra_86AA
C - - - - - 0x00C69F 03:868F: 4C 99 86  JMP loc_8699
bra_8692:
C - - - - - 0x00C6A2 03:8692: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00C6A5 03:8695: C9 02     CMP #$02
C - - - - - 0x00C6A7 03:8697: B0 11     BCS bra_86AA
loc_8699:
C D 0 - - - 0x00C6A9 03:8699: BD 20 06  LDA ram_0620,X
C - - - - - 0x00C6AC 03:869C: 18        CLC
C - - - - - 0x00C6AD 03:869D: 69 C0     ADC #$C0
C - - - - - 0x00C6AF 03:869F: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C6B2 03:86A2: BD 2C 06  LDA ram_062C,X
C - - - - - 0x00C6B5 03:86A5: 69 00     ADC #$00
C - - - - - 0x00C6B7 03:86A7: 9D 2C 06  STA ram_062C,X
bra_86AA:
C - - - - - 0x00C6BA 03:86AA: 8A        TXA
C - - - - - 0x00C6BB 03:86AB: 29 01     AND #$01
C - - - - - 0x00C6BD 03:86AD: F0 15     BEQ bra_86C4
C - - - - - 0x00C6BF 03:86AF: BD 20 06  LDA ram_0620,X
C - - - - - 0x00C6C2 03:86B2: 49 FF     EOR #$FF
C - - - - - 0x00C6C4 03:86B4: 18        CLC
C - - - - - 0x00C6C5 03:86B5: 69 01     ADC #$01
C - - - - - 0x00C6C7 03:86B7: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C6CA 03:86BA: BD 2C 06  LDA ram_062C,X
C - - - - - 0x00C6CD 03:86BD: 49 FF     EOR #$FF
C - - - - - 0x00C6CF 03:86BF: 69 04     ADC #$04
C - - - - - 0x00C6D1 03:86C1: 9D 2C 06  STA ram_062C,X
bra_86C4:
ofs_014_86C4_01:
C - - - - - 0x00C6D4 03:86C4: 20 37 AE  JSR sub_AE37
C - - - - - 0x00C6D7 03:86C7: 20 5F 98  JSR sub_985F
C - - - - - 0x00C6DA 03:86CA: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00C6DD 03:86CD: C9 FF     CMP #$FF
C - - - - - 0x00C6DF 03:86CF: D0 14     BNE bra_86E5_RTS
C - - - - - 0x00C6E1 03:86D1: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00C6E4 03:86D4: C9 20     CMP #$20
C - - - - - 0x00C6E6 03:86D6: B0 0D     BCS bra_86E5_RTS
C - - - - - 0x00C6E8 03:86D8: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00C6EB 03:86DB: 29 E0     AND #$E0
C - - - - - 0x00C6ED 03:86DD: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00C6F0 03:86E0: A9 20     LDA #$20
C - - - - - 0x00C6F2 03:86E2: 9D 79 04  STA ram_игрок_номер_действия,X
bra_86E5_RTS:
C - - - - - 0x00C6F5 03:86E5: 60        RTS



tbl_86E6:
- D 0 - - - 0x00C6F6 03:86E6: EC 86     .word off_86EC_00
- D 0 - - - 0x00C6F8 03:86E8: 04 87     .word off_8704_01
- D 0 - - - 0x00C6FA 03:86EA: 1C 87     .word off_871C_02

off_86EC_00:
- D 0 - I - 0x00C6FC 03:86EC: 00        .byte $00   ; 
- D 0 - I - 0x00C6FD 03:86ED: D0        .byte $D0   ; 
- D 0 - I - 0x00C6FE 03:86EE: D0        .byte $D0   ; 
- D 0 - I - 0x00C6FF 03:86EF: 20        .byte $20   ; 
- D 0 - I - 0x00C700 03:86F0: 20        .byte $20   ; 
- D 0 - I - 0x00C701 03:86F1: A0        .byte $A0   ; 
- D 0 - I - 0x00C702 03:86F2: 02        .byte $02   ; 
- D 0 - I - 0x00C703 03:86F3: 02        .byte $02   ; 
- D 0 - I - 0x00C704 03:86F4: 02        .byte $02   ; 
- D 0 - I - 0x00C705 03:86F5: 01        .byte $01   ; 
- D 0 - I - 0x00C706 03:86F6: 01        .byte $01   ; 
- D 0 - I - 0x00C707 03:86F7: 00        .byte $00   ; 
- D 0 - I - 0x00C708 03:86F8: C0        .byte $C0   ; 
- D 0 - I - 0x00C709 03:86F9: 80        .byte $80   ; 
- D 0 - I - 0x00C70A 03:86FA: 00        .byte $00   ; 
- D 0 - I - 0x00C70B 03:86FB: 80        .byte $80   ; 
- D 0 - I - 0x00C70C 03:86FC: 00        .byte $00   ; 
- D 0 - I - 0x00C70D 03:86FD: C0        .byte $C0   ; 
- D 0 - I - 0x00C70E 03:86FE: 00        .byte $00   ; 
- D 0 - I - 0x00C70F 03:86FF: 00        .byte $00   ; 
- D 0 - I - 0x00C710 03:8700: 01        .byte $01   ; 
- D 0 - I - 0x00C711 03:8701: 00        .byte $00   ; 
- D 0 - I - 0x00C712 03:8702: 01        .byte $01   ; 
- D 0 - I - 0x00C713 03:8703: 00        .byte $00   ; 



off_8704_01:
- D 0 - I - 0x00C714 03:8704: 00        .byte $00   ; 
- D 0 - I - 0x00C715 03:8705: D0        .byte $D0   ; 
- D 0 - I - 0x00C716 03:8706: D0        .byte $D0   ; 
- D 0 - I - 0x00C717 03:8707: 00        .byte $00   ; 
- D 0 - I - 0x00C718 03:8708: 00        .byte $00   ; 
- D 0 - I - 0x00C719 03:8709: A0        .byte $A0   ; 
- D 0 - I - 0x00C71A 03:870A: 02        .byte $02   ; 
- D 0 - I - 0x00C71B 03:870B: 02        .byte $02   ; 
- D 0 - I - 0x00C71C 03:870C: 02        .byte $02   ; 
- D 0 - I - 0x00C71D 03:870D: 02        .byte $02   ; 
- D 0 - I - 0x00C71E 03:870E: 01        .byte $01   ; 
- D 0 - I - 0x00C71F 03:870F: 00        .byte $00   ; 
- D 0 - I - 0x00C720 03:8710: 00        .byte $00   ; 
- D 0 - I - 0x00C721 03:8711: 80        .byte $80   ; 
- D 0 - I - 0x00C722 03:8712: 00        .byte $00   ; 
- D 0 - I - 0x00C723 03:8713: 80        .byte $80   ; 
- D 0 - I - 0x00C724 03:8714: C0        .byte $C0   ; 
- D 0 - I - 0x00C725 03:8715: C0        .byte $C0   ; 
- D 0 - I - 0x00C726 03:8716: 01        .byte $01   ; 
- D 0 - I - 0x00C727 03:8717: 00        .byte $00   ; 
- D 0 - I - 0x00C728 03:8718: 01        .byte $01   ; 
- D 0 - I - 0x00C729 03:8719: 00        .byte $00   ; 
- D 0 - I - 0x00C72A 03:871A: 00        .byte $00   ; 
- D 0 - I - 0x00C72B 03:871B: 00        .byte $00   ; 



off_871C_02:
- D 0 - I - 0x00C72C 03:871C: 00        .byte $00   ; 
- D 0 - I - 0x00C72D 03:871D: A0        .byte $A0   ; 
- D 0 - I - 0x00C72E 03:871E: 00        .byte $00   ; 
- D 0 - I - 0x00C72F 03:871F: 20        .byte $20   ; 
- D 0 - I - 0x00C730 03:8720: 20        .byte $20   ; 
- D 0 - I - 0x00C731 03:8721: A0        .byte $A0   ; 
- D 0 - I - 0x00C732 03:8722: 02        .byte $02   ; 
- D 0 - I - 0x00C733 03:8723: 02        .byte $02   ; 
- D 0 - I - 0x00C734 03:8724: 02        .byte $02   ; 
- D 0 - I - 0x00C735 03:8725: 01        .byte $01   ; 
- D 0 - I - 0x00C736 03:8726: 01        .byte $01   ; 
- D 0 - I - 0x00C737 03:8727: 00        .byte $00   ; 
- D 0 - I - 0x00C738 03:8728: 00        .byte $00   ; 
- D 0 - I - 0x00C739 03:8729: C0        .byte $C0   ; 
- D 0 - I - 0x00C73A 03:872A: 80        .byte $80   ; 
- D 0 - I - 0x00C73B 03:872B: 80        .byte $80   ; 
- D 0 - I - 0x00C73C 03:872C: 00        .byte $00   ; 
- D 0 - I - 0x00C73D 03:872D: C0        .byte $C0   ; 
- D 0 - I - 0x00C73E 03:872E: 01        .byte $01   ; 
- D 0 - I - 0x00C73F 03:872F: 00        .byte $00   ; 
- D 0 - I - 0x00C740 03:8730: 00        .byte $00   ; 
- D 0 - I - 0x00C741 03:8731: 00        .byte $00   ; 
- D 0 - I - 0x00C742 03:8732: 01        .byte $01   ; 
- D 0 - I - 0x00C743 03:8733: 00        .byte $00   ; 



ofs_014_8734_04:
C - - J - - 0x00C744 03:8734: A9 09     LDA #$09
C - - - - - 0x00C746 03:8736: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C749 03:8739: A9 FF     LDA #$FF
C - - - - - 0x00C74B 03:873B: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00C74E 03:873E: 60        RTS



ofs_014_873F_02:
C - - J - - 0x00C74F 03:873F: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00C752 03:8742: 10 05     BPL bra_8749
C - - - - - 0x00C754 03:8744: A9 39     LDA #$39
C - - - - - 0x00C756 03:8746: 4C 4B 87  JMP loc_874B
bra_8749:
C - - - - - 0x00C759 03:8749: A9 0A     LDA #$0A
loc_874B:
C D 0 - - - 0x00C75B 03:874B: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00C75E 03:874E: 8A        TXA
C - - - - - 0x00C75F 03:874F: 29 01     AND #$01
C - - - - - 0x00C761 03:8751: A8        TAY
C - - - - - 0x00C762 03:8752: B9 7C 06  LDA ram_067C,Y
C - - - - - 0x00C765 03:8755: C9 FF     CMP #$FF
C - - - - - 0x00C767 03:8757: D0 03     BNE bra_875C
C - - - - - 0x00C769 03:8759: 98        TYA
C - - - - - 0x00C76A 03:875A: 09 10     ORA #$10
bra_875C:
C - - - - - 0x00C76C 03:875C: 99 7E 06  STA ram_067E,Y
C - - - - - 0x00C76F 03:875F: 60        RTS



ofs_014_8760_03:
- - - - - - 0x00C770 03:8760: 4C F7 85  JMP loc_85F7



ofs_014_8763_0B:
C - - J - - 0x00C773 03:8763: 8A        TXA
C - - - - - 0x00C774 03:8764: 29 01     AND #$01
C - - - - - 0x00C776 03:8766: A8        TAY
C - - - - - 0x00C777 03:8767: B9 30 05  LDA ram_расстановка_команды,Y
C - - - - - 0x00C77A 03:876A: 85 1C     STA ram_001C
C - - - - - 0x00C77C 03:876C: 29 03     AND #$03
C - - - - - 0x00C77E 03:876E: 0A        ASL
C - - - - - 0x00C77F 03:876F: A8        TAY
C - - - - - 0x00C780 03:8770: B9 F8 B1  LDA tbl_B1F8,Y
C - - - - - 0x00C783 03:8773: 85 2C     STA ram_002C
C - - - - - 0x00C785 03:8775: B9 F9 B1  LDA tbl_B1F8 + $01,Y
C - - - - - 0x00C788 03:8778: 85 2D     STA ram_002D
C - - - - - 0x00C78A 03:877A: A5 1C     LDA ram_001C
C - - - - - 0x00C78C 03:877C: 4A        LSR
C - - - - - 0x00C78D 03:877D: 4A        LSR
C - - - - - 0x00C78E 03:877E: 0A        ASL
C - - - - - 0x00C78F 03:877F: A8        TAY
C - - - - - 0x00C790 03:8780: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C792 03:8782: 85 2E     STA ram_002E
C - - - - - 0x00C794 03:8784: C8        INY
C - - - - - 0x00C795 03:8785: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C797 03:8787: 85 2F     STA ram_002F
C - - - - - 0x00C799 03:8789: 8A        TXA
C - - - - - 0x00C79A 03:878A: 4A        LSR
C - - - - - 0x00C79B 03:878B: 0A        ASL
C - - - - - 0x00C79C 03:878C: 0A        ASL
C - - - - - 0x00C79D 03:878D: A8        TAY
C - - - - - 0x00C79E 03:878E: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C7A0 03:8790: 85 1C     STA ram_001C
C - - - - - 0x00C7A2 03:8792: C8        INY
C - - - - - 0x00C7A3 03:8793: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C7A5 03:8795: 85 1D     STA ram_001D
C - - - - - 0x00C7A7 03:8797: C8        INY
C - - - - - 0x00C7A8 03:8798: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C7AA 03:879A: 85 1E     STA ram_001E
C - - - - - 0x00C7AC 03:879C: C8        INY
C - - - - - 0x00C7AD 03:879D: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C7AF 03:879F: 85 1F     STA ram_001F
C - - - - - 0x00C7B1 03:87A1: 8A        TXA
C - - - - - 0x00C7B2 03:87A2: 4A        LSR
C - - - - - 0x00C7B3 03:87A3: 90 11     BCC bra_87B6
C - - - - - 0x00C7B5 03:87A5: A5 1D     LDA ram_001D
C - - - - - 0x00C7B7 03:87A7: 49 FF     EOR #$FF
C - - - - - 0x00C7B9 03:87A9: 18        CLC
C - - - - - 0x00C7BA 03:87AA: 69 01     ADC #$01
C - - - - - 0x00C7BC 03:87AC: 85 1D     STA ram_001D
C - - - - - 0x00C7BE 03:87AE: A5 1C     LDA ram_001C
C - - - - - 0x00C7C0 03:87B0: 49 FF     EOR #$FF
C - - - - - 0x00C7C2 03:87B2: 69 04     ADC #$04
C - - - - - 0x00C7C4 03:87B4: 85 1C     STA ram_001C
bra_87B6:
C - - - - - 0x00C7C6 03:87B6: A5 1C     LDA ram_001C
C - - - - - 0x00C7C8 03:87B8: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00C7CB 03:87BB: A5 1D     LDA ram_001D
C - - - - - 0x00C7CD 03:87BD: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C7D0 03:87C0: A5 1E     LDA ram_001E
C - - - - - 0x00C7D2 03:87C2: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C7D5 03:87C5: A5 1F     LDA ram_001F
C - - - - - 0x00C7D7 03:87C7: 9D 38 06  STA ram_0638,X
C - - - - - 0x00C7DA 03:87CA: 20 37 AE  JSR sub_AE37
C - - - - - 0x00C7DD 03:87CD: 20 5F 98  JSR sub_985F
C - - - - - 0x00C7E0 03:87D0: 60        RTS



ofs_014_87D1_0C:
C - - J - - 0x00C7E1 03:87D1: 8A        TXA
C - - - - - 0x00C7E2 03:87D2: 29 01     AND #$01
C - - - - - 0x00C7E4 03:87D4: A8        TAY
C - - - - - 0x00C7E5 03:87D5: B9 30 05  LDA ram_расстановка_команды,Y
C - - - - - 0x00C7E8 03:87D8: 29 03     AND #$03
C - - - - - 0x00C7EA 03:87DA: 0A        ASL
C - - - - - 0x00C7EB 03:87DB: A8        TAY
C - - - - - 0x00C7EC 03:87DC: B9 41 98  LDA tbl_9841,Y
C - - - - - 0x00C7EF 03:87DF: 85 2C     STA ram_002C
C - - - - - 0x00C7F1 03:87E1: B9 42 98  LDA tbl_9841 + $01,Y
C - - - - - 0x00C7F4 03:87E4: 85 2D     STA ram_002D
C - - - - - 0x00C7F6 03:87E6: 8A        TXA
C - - - - - 0x00C7F7 03:87E7: 0A        ASL
C - - - - - 0x00C7F8 03:87E8: 0A        ASL
C - - - - - 0x00C7F9 03:87E9: A8        TAY
C - - - - - 0x00C7FA 03:87EA: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C7FC 03:87EC: 85 1C     STA ram_001C
C - - - - - 0x00C7FE 03:87EE: C8        INY
C - - - - - 0x00C7FF 03:87EF: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C801 03:87F1: 85 1D     STA ram_001D
C - - - - - 0x00C803 03:87F3: C8        INY
C - - - - - 0x00C804 03:87F4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C806 03:87F6: 85 1E     STA ram_001E
C - - - - - 0x00C808 03:87F8: C8        INY
C - - - - - 0x00C809 03:87F9: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C80B 03:87FB: 85 1F     STA ram_001F
C - - - - - 0x00C80D 03:87FD: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00C810 03:8800: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00C813 03:8803: 18        CLC
C - - - - - 0x00C814 03:8804: 65 1D     ADC ram_001D
C - - - - - 0x00C816 03:8806: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C819 03:8809: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00C81C 03:880C: 65 1C     ADC ram_001C
C - - - - - 0x00C81E 03:880E: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00C821 03:8811: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00C824 03:8814: 18        CLC
C - - - - - 0x00C825 03:8815: 65 1F     ADC ram_001F
C - - - - - 0x00C827 03:8817: 9D 38 06  STA ram_0638,X
C - - - - - 0x00C82A 03:881A: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00C82D 03:881D: 65 1E     ADC ram_001E
C - - - - - 0x00C82F 03:881F: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C832 03:8822: 30 16     BMI bra_883A
C - - - - - 0x00C834 03:8824: D0 0A     BNE bra_8830
C - - - - - 0x00C836 03:8826: BD 38 06  LDA ram_0638,X
C - - - - - 0x00C839 03:8829: C9 30     CMP #$30
C - - - - - 0x00C83B 03:882B: 90 0D     BCC bra_883A
C - - - - - 0x00C83D 03:882D: 4C 51 88  JMP loc_8851
bra_8830:
C - - - - - 0x00C840 03:8830: BD 38 06  LDA ram_0638,X
C - - - - - 0x00C843 03:8833: C9 60     CMP #$60
C - - - - - 0x00C845 03:8835: B0 10     BCS bra_8847
C - - - - - 0x00C847 03:8837: 4C 51 88  JMP loc_8851
bra_883A:
C - - - - - 0x00C84A 03:883A: A9 00     LDA #$00
C - - - - - 0x00C84C 03:883C: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C84F 03:883F: A9 30     LDA #$30
C - - - - - 0x00C851 03:8841: 9D 38 06  STA ram_0638,X
C - - - - - 0x00C854 03:8844: 4C 51 88  JMP loc_8851
bra_8847:
C - - - - - 0x00C857 03:8847: A9 01     LDA #$01
C - - - - - 0x00C859 03:8849: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C85C 03:884C: A9 60     LDA #$60
C - - - - - 0x00C85E 03:884E: 9D 38 06  STA ram_0638,X
loc_8851:
C D 0 - - - 0x00C861 03:8851: 20 37 AE  JSR sub_AE37
C - - - - - 0x00C864 03:8854: 20 5F 98  JSR sub_985F
C - - - - - 0x00C867 03:8857: 60        RTS



loc_8858:
ofs_014_8858_0D:
C D 0 J - - 0x00C868 03:8858: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00C86B 03:885B: 48        PHA
C - - - - - 0x00C86C 03:885C: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00C86F 03:885F: 48        PHA
C - - - - - 0x00C870 03:8860: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00C873 03:8863: 48        PHA
C - - - - - 0x00C874 03:8864: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00C877 03:8867: 48        PHA
C - - - - - 0x00C878 03:8868: BD CB 89  LDA tbl_89D5 - $0A,X
C - - - - - 0x00C87B 03:886B: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00C87E 03:886E: BD CD 89  LDA tbl_89D7 - $0A,X
C - - - - - 0x00C881 03:8871: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00C884 03:8874: BD CF 89  LDA tbl_89D9 - $0A,X
C - - - - - 0x00C887 03:8877: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00C88A 03:887A: BD D1 89  LDA tbl_89DB - $0A,X
C - - - - - 0x00C88D 03:887D: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x00C890 03:8880: A0 0C     LDY #$0C
C - - - - - 0x00C892 03:8882: 20 32 C0  JSR sub_0x01C042
C - - - - - 0x00C895 03:8885: 85 1C     STA ram_001C
C - - - - - 0x00C897 03:8887: 68        PLA
C - - - - - 0x00C898 03:8888: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x00C89B 03:888B: 68        PLA
C - - - - - 0x00C89C 03:888C: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00C89F 03:888F: 68        PLA
C - - - - - 0x00C8A0 03:8890: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00C8A3 03:8893: 68        PLA
C - - - - - 0x00C8A4 03:8894: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00C8A7 03:8897: E0 0A     CPX #$0A
C - - - - - 0x00C8A9 03:8899: F0 09     BEQ bra_88A4
C - - - - - 0x00C8AB 03:889B: A5 1C     LDA ram_001C
C - - - - - 0x00C8AD 03:889D: 49 FF     EOR #$FF
C - - - - - 0x00C8AF 03:889F: 18        CLC
C - - - - - 0x00C8B0 03:88A0: 69 01     ADC #$01
C - - - - - 0x00C8B2 03:88A2: 85 1C     STA ram_001C
bra_88A4:
C - - - - - 0x00C8B4 03:88A4: A5 1C     LDA ram_001C
C - - - - - 0x00C8B6 03:88A6: 10 02     BPL bra_88AA
C - - - - - 0x00C8B8 03:88A8: A9 7F     LDA #$7F
bra_88AA:
C - - - - - 0x00C8BA 03:88AA: 4A        LSR
C - - - - - 0x00C8BB 03:88AB: 4A        LSR
C - - - - - 0x00C8BC 03:88AC: 4A        LSR
C - - - - - 0x00C8BD 03:88AD: 4A        LSR
C - - - - - 0x00C8BE 03:88AE: 85 1C     STA ram_001C
C - - - - - 0x00C8C0 03:88B0: 8A        TXA
C - - - - - 0x00C8C1 03:88B1: 29 01     AND #$01
C - - - - - 0x00C8C3 03:88B3: 0A        ASL
C - - - - - 0x00C8C4 03:88B4: A8        TAY
C - - - - - 0x00C8C5 03:88B5: B9 01 89  LDA tbl_8901,Y
C - - - - - 0x00C8C8 03:88B8: 85 2C     STA ram_002C
C - - - - - 0x00C8CA 03:88BA: B9 02 89  LDA tbl_8901 + $01,Y
C - - - - - 0x00C8CD 03:88BD: 85 2D     STA ram_002D
C - - - - - 0x00C8CF 03:88BF: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00C8D2 03:88C2: 0A        ASL
C - - - - - 0x00C8D3 03:88C3: A8        TAY
C - - - - - 0x00C8D4 03:88C4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C8D6 03:88C6: 85 2E     STA ram_002E
C - - - - - 0x00C8D8 03:88C8: C8        INY
C - - - - - 0x00C8D9 03:88C9: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00C8DB 03:88CB: 85 2F     STA ram_002F
C - - - - - 0x00C8DD 03:88CD: A5 1C     LDA ram_001C
C - - - - - 0x00C8DF 03:88CF: 0A        ASL
C - - - - - 0x00C8E0 03:88D0: 0A        ASL
C - - - - - 0x00C8E1 03:88D1: A8        TAY
C - - - - - 0x00C8E2 03:88D2: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C8E4 03:88D4: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00C8E7 03:88D7: C8        INY
C - - - - - 0x00C8E8 03:88D8: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C8EA 03:88DA: 9D 20 06  STA ram_0620,X
C - - - - - 0x00C8ED 03:88DD: C8        INY
C - - - - - 0x00C8EE 03:88DE: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C8F0 03:88E0: 9D 44 06  STA ram_0644,X
C - - - - - 0x00C8F3 03:88E3: C8        INY
C - - - - - 0x00C8F4 03:88E4: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00C8F6 03:88E6: 9D 38 06  STA ram_0638,X
C - - - - - 0x00C8F9 03:88E9: 20 37 AE  JSR sub_AE37
C - - - - - 0x00C8FC 03:88EC: 20 5F 98  JSR sub_985F
C - - - - - 0x00C8FF 03:88EF: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x00C902 03:88F2: 10 0C     BPL bra_8900_RTS
- - - - - - 0x00C904 03:88F4: BD 86 03  LDA ram_игрок_Z_lo,X
- - - - - - 0x00C907 03:88F7: C9 FB     CMP #$FB
- - - - - - 0x00C909 03:88F9: B0 05     BCS bra_8900_RTS
- - - - - - 0x00C90B 03:88FB: A9 30     LDA #$30
- - - - - - 0x00C90D 03:88FD: 9D 79 04  STA ram_игрок_номер_действия,X
bra_8900_RTS:
C - - - - - 0x00C910 03:8900: 60        RTS



tbl_8901:
- D 0 - - - 0x00C911 03:8901: 05 89     .word off_8905_00
- D 0 - - - 0x00C913 03:8903: 0D 89     .word off_890D_01

off_8905_00:
- D 0 - I - 0x00C915 03:8905: 15 89     .word off_8915_00
- D 0 - I - 0x00C917 03:8907: 35 89     .word off_8935_01
- - - - - - 0x00C919 03:8909: 35 89     .word off_8935_02
- D 0 - I - 0x00C91B 03:890B: 55 89     .word off_8955_03

off_890D_01:
- - - - - - 0x00C91D 03:890D: 75 89     .word off_8975_00
- D 0 - I - 0x00C91F 03:890F: 95 89     .word off_8995_01
- D 0 - I - 0x00C921 03:8911: 95 89     .word off_8995_02
- D 0 - I - 0x00C923 03:8913: B5 89     .word off_89B5_03

off_8915_00:
- - - - - - 0x00C925 03:8915: 00        .byte $00   ; 
- - - - - - 0x00C926 03:8916: 99        .byte $99   ; 
- - - - - - 0x00C927 03:8917: 00        .byte $00   ; 
- - - - - - 0x00C928 03:8918: A1        .byte $A1   ; 
- - - - - - 0x00C929 03:8919: 00        .byte $00   ; 
- - - - - - 0x00C92A 03:891A: 99        .byte $99   ; 
- - - - - - 0x00C92B 03:891B: 00        .byte $00   ; 
- - - - - - 0x00C92C 03:891C: AD        .byte $AD   ; 
- D 0 - I - 0x00C92D 03:891D: 00        .byte $00   ; 
- D 0 - I - 0x00C92E 03:891E: 96        .byte $96   ; 
- D 0 - I - 0x00C92F 03:891F: 00        .byte $00   ; 
- D 0 - I - 0x00C930 03:8920: B8        .byte $B8   ; 
- D 0 - I - 0x00C931 03:8921: 00        .byte $00   ; 
- D 0 - I - 0x00C932 03:8922: 95        .byte $95   ; 
- D 0 - I - 0x00C933 03:8923: 00        .byte $00   ; 
- D 0 - I - 0x00C934 03:8924: C2        .byte $C2   ; 
- D 0 - I - 0x00C935 03:8925: 00        .byte $00   ; 
- D 0 - I - 0x00C936 03:8926: 94        .byte $94   ; 
- D 0 - I - 0x00C937 03:8927: 00        .byte $00   ; 
- D 0 - I - 0x00C938 03:8928: CA        .byte $CA   ; 
- D 0 - I - 0x00C939 03:8929: 00        .byte $00   ; 
- D 0 - I - 0x00C93A 03:892A: 93        .byte $93   ; 
- D 0 - I - 0x00C93B 03:892B: 00        .byte $00   ; 
- D 0 - I - 0x00C93C 03:892C: D3        .byte $D3   ; 
- - - - - - 0x00C93D 03:892D: 00        .byte $00   ; 
- - - - - - 0x00C93E 03:892E: 91        .byte $91   ; 
- - - - - - 0x00C93F 03:892F: 00        .byte $00   ; 
- - - - - - 0x00C940 03:8930: DA        .byte $DA   ; 
- - - - - - 0x00C941 03:8931: 00        .byte $00   ; 
- - - - - - 0x00C942 03:8932: 91        .byte $91   ; 
- - - - - - 0x00C943 03:8933: 00        .byte $00   ; 
- - - - - - 0x00C944 03:8934: E6        .byte $E6   ; 



off_8935_01:
off_8935_02:
- D 0 - I - 0x00C945 03:8935: 00        .byte $00   ; 
- D 0 - I - 0x00C946 03:8936: 99        .byte $99   ; 
- D 0 - I - 0x00C947 03:8937: 00        .byte $00   ; 
- D 0 - I - 0x00C948 03:8938: A5        .byte $A5   ; 
- D 0 - I - 0x00C949 03:8939: 00        .byte $00   ; 
- D 0 - I - 0x00C94A 03:893A: 99        .byte $99   ; 
- D 0 - I - 0x00C94B 03:893B: 00        .byte $00   ; 
- D 0 - I - 0x00C94C 03:893C: AF        .byte $AF   ; 
- D 0 - I - 0x00C94D 03:893D: 00        .byte $00   ; 
- D 0 - I - 0x00C94E 03:893E: A9        .byte $A9   ; 
- D 0 - I - 0x00C94F 03:893F: 00        .byte $00   ; 
- D 0 - I - 0x00C950 03:8940: B7        .byte $B7   ; 
- D 0 - I - 0x00C951 03:8941: 00        .byte $00   ; 
- D 0 - I - 0x00C952 03:8942: A9        .byte $A9   ; 
- D 0 - I - 0x00C953 03:8943: 00        .byte $00   ; 
- D 0 - I - 0x00C954 03:8944: BE        .byte $BE   ; 
- D 0 - I - 0x00C955 03:8945: 00        .byte $00   ; 
- D 0 - I - 0x00C956 03:8946: A4        .byte $A4   ; 
- D 0 - I - 0x00C957 03:8947: 00        .byte $00   ; 
- D 0 - I - 0x00C958 03:8948: CA        .byte $CA   ; 
- D 0 - I - 0x00C959 03:8949: 00        .byte $00   ; 
- D 0 - I - 0x00C95A 03:894A: A0        .byte $A0   ; 
- D 0 - I - 0x00C95B 03:894B: 00        .byte $00   ; 
- D 0 - I - 0x00C95C 03:894C: D3        .byte $D3   ; 
- D 0 - I - 0x00C95D 03:894D: 00        .byte $00   ; 
- D 0 - I - 0x00C95E 03:894E: 91        .byte $91   ; 
- D 0 - I - 0x00C95F 03:894F: 00        .byte $00   ; 
- D 0 - I - 0x00C960 03:8950: DE        .byte $DE   ; 
- D 0 - I - 0x00C961 03:8951: 00        .byte $00   ; 
- D 0 - I - 0x00C962 03:8952: 91        .byte $91   ; 
- D 0 - I - 0x00C963 03:8953: 00        .byte $00   ; 
- D 0 - I - 0x00C964 03:8954: E5        .byte $E5   ; 



off_8955_03:
- - - - - - 0x00C965 03:8955: 00        .byte $00   ; 
- - - - - - 0x00C966 03:8956: 99        .byte $99   ; 
- - - - - - 0x00C967 03:8957: 00        .byte $00   ; 
- - - - - - 0x00C968 03:8958: 92        .byte $92   ; 
- - - - - - 0x00C969 03:8959: 00        .byte $00   ; 
- - - - - - 0x00C96A 03:895A: 99        .byte $99   ; 
- - - - - - 0x00C96B 03:895B: 00        .byte $00   ; 
- - - - - - 0x00C96C 03:895C: A3        .byte $A3   ; 
- - - - - - 0x00C96D 03:895D: 00        .byte $00   ; 
- - - - - - 0x00C96E 03:895E: BB        .byte $BB   ; 
- - - - - - 0x00C96F 03:895F: 00        .byte $00   ; 
- - - - - - 0x00C970 03:8960: B1        .byte $B1   ; 
- D 0 - I - 0x00C971 03:8961: 00        .byte $00   ; 
- D 0 - I - 0x00C972 03:8962: B9        .byte $B9   ; 
- D 0 - I - 0x00C973 03:8963: 00        .byte $00   ; 
- D 0 - I - 0x00C974 03:8964: BF        .byte $BF   ; 
- D 0 - I - 0x00C975 03:8965: 00        .byte $00   ; 
- D 0 - I - 0x00C976 03:8966: B5        .byte $B5   ; 
- D 0 - I - 0x00C977 03:8967: 00        .byte $00   ; 
- D 0 - I - 0x00C978 03:8968: CC        .byte $CC   ; 
- D 0 - I - 0x00C979 03:8969: 00        .byte $00   ; 
- D 0 - I - 0x00C97A 03:896A: AC        .byte $AC   ; 
- D 0 - I - 0x00C97B 03:896B: 00        .byte $00   ; 
- D 0 - I - 0x00C97C 03:896C: DE        .byte $DE   ; 
- - - - - - 0x00C97D 03:896D: 00        .byte $00   ; 
- - - - - - 0x00C97E 03:896E: 91        .byte $91   ; 
- - - - - - 0x00C97F 03:896F: 00        .byte $00   ; 
- - - - - - 0x00C980 03:8970: EF        .byte $EF   ; 
- - - - - - 0x00C981 03:8971: 00        .byte $00   ; 
- - - - - - 0x00C982 03:8972: 91        .byte $91   ; 
- - - - - - 0x00C983 03:8973: 00        .byte $00   ; 
- - - - - - 0x00C984 03:8974: FE        .byte $FE   ; 



off_8975_00:
- - - - - - 0x00C985 03:8975: 03        .byte $03   ; 
- - - - - - 0x00C986 03:8976: 67        .byte $67   ; 
- - - - - - 0x00C987 03:8977: 00        .byte $00   ; 
- - - - - - 0x00C988 03:8978: A2        .byte $A2   ; 
- - - - - - 0x00C989 03:8979: 03        .byte $03   ; 
- - - - - - 0x00C98A 03:897A: 67        .byte $67   ; 
- - - - - - 0x00C98B 03:897B: 00        .byte $00   ; 
- - - - - - 0x00C98C 03:897C: B1        .byte $B1   ; 
- - - - - - 0x00C98D 03:897D: 03        .byte $03   ; 
- - - - - - 0x00C98E 03:897E: 69        .byte $69   ; 
- - - - - - 0x00C98F 03:897F: 00        .byte $00   ; 
- - - - - - 0x00C990 03:8980: B6        .byte $B6   ; 
- - - - - - 0x00C991 03:8981: 03        .byte $03   ; 
- - - - - - 0x00C992 03:8982: 6A        .byte $6A   ; 
- - - - - - 0x00C993 03:8983: 00        .byte $00   ; 
- - - - - - 0x00C994 03:8984: BF        .byte $BF   ; 
- - - - - - 0x00C995 03:8985: 03        .byte $03   ; 
- - - - - - 0x00C996 03:8986: 6B        .byte $6B   ; 
- - - - - - 0x00C997 03:8987: 00        .byte $00   ; 
- - - - - - 0x00C998 03:8988: C6        .byte $C6   ; 
- - - - - - 0x00C999 03:8989: 03        .byte $03   ; 
- - - - - - 0x00C99A 03:898A: 6C        .byte $6C   ; 
- - - - - - 0x00C99B 03:898B: 00        .byte $00   ; 
- - - - - - 0x00C99C 03:898C: CD        .byte $CD   ; 
- - - - - - 0x00C99D 03:898D: 03        .byte $03   ; 
- - - - - - 0x00C99E 03:898E: 6F        .byte $6F   ; 
- - - - - - 0x00C99F 03:898F: 00        .byte $00   ; 
- - - - - - 0x00C9A0 03:8990: D6        .byte $D6   ; 
- - - - - - 0x00C9A1 03:8991: 03        .byte $03   ; 
- - - - - - 0x00C9A2 03:8992: 6F        .byte $6F   ; 
- - - - - - 0x00C9A3 03:8993: 00        .byte $00   ; 
- - - - - - 0x00C9A4 03:8994: E2        .byte $E2   ; 



off_8995_01:
off_8995_02:
- - - - - - 0x00C9A5 03:8995: 03        .byte $03   ; 
- - - - - - 0x00C9A6 03:8996: 67        .byte $67   ; 
- - - - - - 0x00C9A7 03:8997: 00        .byte $00   ; 
- - - - - - 0x00C9A8 03:8998: A3        .byte $A3   ; 
- D 0 - I - 0x00C9A9 03:8999: 03        .byte $03   ; 
- D 0 - I - 0x00C9AA 03:899A: 67        .byte $67   ; 
- D 0 - I - 0x00C9AB 03:899B: 00        .byte $00   ; 
- D 0 - I - 0x00C9AC 03:899C: AD        .byte $AD   ; 
- D 0 - I - 0x00C9AD 03:899D: 03        .byte $03   ; 
- D 0 - I - 0x00C9AE 03:899E: 59        .byte $59   ; 
- D 0 - I - 0x00C9AF 03:899F: 00        .byte $00   ; 
- D 0 - I - 0x00C9B0 03:89A0: B4        .byte $B4   ; 
- D 0 - I - 0x00C9B1 03:89A1: 03        .byte $03   ; 
- D 0 - I - 0x00C9B2 03:89A2: 52        .byte $52   ; 
- D 0 - I - 0x00C9B3 03:89A3: 00        .byte $00   ; 
- D 0 - I - 0x00C9B4 03:89A4: BE        .byte $BE   ; 
- D 0 - I - 0x00C9B5 03:89A5: 03        .byte $03   ; 
- D 0 - I - 0x00C9B6 03:89A6: 55        .byte $55   ; 
- D 0 - I - 0x00C9B7 03:89A7: 00        .byte $00   ; 
- D 0 - I - 0x00C9B8 03:89A8: C8        .byte $C8   ; 
- D 0 - I - 0x00C9B9 03:89A9: 03        .byte $03   ; 
- D 0 - I - 0x00C9BA 03:89AA: 5E        .byte $5E   ; 
- D 0 - I - 0x00C9BB 03:89AB: 00        .byte $00   ; 
- D 0 - I - 0x00C9BC 03:89AC: D3        .byte $D3   ; 
- D 0 - I - 0x00C9BD 03:89AD: 03        .byte $03   ; 
- D 0 - I - 0x00C9BE 03:89AE: 6F        .byte $6F   ; 
- D 0 - I - 0x00C9BF 03:89AF: 00        .byte $00   ; 
- D 0 - I - 0x00C9C0 03:89B0: DD        .byte $DD   ; 
- D 0 - I - 0x00C9C1 03:89B1: 03        .byte $03   ; 
- D 0 - I - 0x00C9C2 03:89B2: 6F        .byte $6F   ; 
- D 0 - I - 0x00C9C3 03:89B3: 00        .byte $00   ; 
- D 0 - I - 0x00C9C4 03:89B4: E3        .byte $E3   ; 



off_89B5_03:
- - - - - - 0x00C9C5 03:89B5: 03        .byte $03   ; 
- - - - - - 0x00C9C6 03:89B6: 67        .byte $67   ; 
- - - - - - 0x00C9C7 03:89B7: 00        .byte $00   ; 
- - - - - - 0x00C9C8 03:89B8: 93        .byte $93   ; 
- D 0 - I - 0x00C9C9 03:89B9: 03        .byte $03   ; 
- D 0 - I - 0x00C9CA 03:89BA: 57        .byte $57   ; 
- D 0 - I - 0x00C9CB 03:89BB: 00        .byte $00   ; 
- D 0 - I - 0x00C9CC 03:89BC: A0        .byte $A0   ; 
- D 0 - I - 0x00C9CD 03:89BD: 03        .byte $03   ; 
- D 0 - I - 0x00C9CE 03:89BE: 52        .byte $52   ; 
- D 0 - I - 0x00C9CF 03:89BF: 00        .byte $00   ; 
- D 0 - I - 0x00C9D0 03:89C0: B4        .byte $B4   ; 
- D 0 - I - 0x00C9D1 03:89C1: 03        .byte $03   ; 
- D 0 - I - 0x00C9D2 03:89C2: 47        .byte $47   ; 
- D 0 - I - 0x00C9D3 03:89C3: 00        .byte $00   ; 
- D 0 - I - 0x00C9D4 03:89C4: BE        .byte $BE   ; 
- D 0 - I - 0x00C9D5 03:89C5: 03        .byte $03   ; 
- D 0 - I - 0x00C9D6 03:89C6: 4D        .byte $4D   ; 
- D 0 - I - 0x00C9D7 03:89C7: 00        .byte $00   ; 
- D 0 - I - 0x00C9D8 03:89C8: CB        .byte $CB   ; 
- D 0 - I - 0x00C9D9 03:89C9: 03        .byte $03   ; 
- D 0 - I - 0x00C9DA 03:89CA: 57        .byte $57   ; 
- D 0 - I - 0x00C9DB 03:89CB: 00        .byte $00   ; 
- D 0 - I - 0x00C9DC 03:89CC: D9        .byte $D9   ; 
- D 0 - I - 0x00C9DD 03:89CD: 03        .byte $03   ; 
- D 0 - I - 0x00C9DE 03:89CE: 6F        .byte $6F   ; 
- D 0 - I - 0x00C9DF 03:89CF: 00        .byte $00   ; 
- D 0 - I - 0x00C9E0 03:89D0: E7        .byte $E7   ; 
- - - - - - 0x00C9E1 03:89D1: 03        .byte $03   ; 
- - - - - - 0x00C9E2 03:89D2: 7F        .byte $7F   ; 
- - - - - - 0x00C9E3 03:89D3: 00        .byte $00   ; 
- - - - - - 0x00C9E4 03:89D4: F3        .byte $F3   ; 



tbl_89D5:
- D 0 - - - 0x00C9E5 03:89D5: 88        .byte $88   ; 
- D 0 - - - 0x00C9E6 03:89D6: 78        .byte $78   ; 

tbl_89D7:
- D 0 - - - 0x00C9E7 03:89D7: 00        .byte $00   ; 
- D 0 - - - 0x00C9E8 03:89D8: 03        .byte $03   ; 

tbl_89D9:
- D 0 - - - 0x00C9E9 03:89D9: C0        .byte $C0   ; 
- D 0 - - - 0x00C9EA 03:89DA: C0        .byte $C0   ; 

tbl_89DB:
- D 0 - - - 0x00C9EB 03:89DB: 00        .byte $00   ; 
- D 0 - - - 0x00C9EC 03:89DC: 00        .byte $00   ; 



ofs_014_89DD_0E:
C - - J - - 0x00C9ED 03:89DD: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00C9F0 03:89E0: B9 C4 8A  LDA tbl_8AC4,Y
C - - - - - 0x00C9F3 03:89E3: CD 45 00  CMP a: ram_рандом
C - - - - - 0x00C9F6 03:89E6: B0 03     BCS bra_89EB
C - - - - - 0x00C9F8 03:89E8: 4C CA 83  JMP loc_83CA
bra_89EB:
C - - - - - 0x00C9FB 03:89EB: AD A5 03  LDA ram_мяч_Z_hi
C - - - - - 0x00C9FE 03:89EE: 30 14     BMI bra_8A04
C - - - - - 0x00CA00 03:89F0: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00CA03 03:89F3: 38        SEC
C - - - - - 0x00CA04 03:89F4: FD 86 03  SBC ram_игрок_Z_lo,X
C - - - - - 0x00CA07 03:89F7: C9 20     CMP #$20
C - - - - - 0x00CA09 03:89F9: 90 09     BCC bra_8A04
C - - - - - 0x00CA0B 03:89FB: AD 3A 04  LDA ram_мяч_spd_Z_hi
C - - - - - 0x00CA0E 03:89FE: 10 46     BPL bra_8A46
C - - - - - 0x00CA10 03:8A00: C9 FC     CMP #$FC
C - - - - - 0x00CA12 03:8A02: B0 42     BCS bra_8A46
bra_8A04:
C - - - - - 0x00CA14 03:8A04: 20 9C 8A  JSR sub_8A9C
C - - - - - 0x00CA17 03:8A07: A5 22     LDA ram_0022
C - - - - - 0x00CA19 03:8A09: D0 09     BNE bra_8A14
C - - - - - 0x00CA1B 03:8A0B: A5 21     LDA ram_0021
C - - - - - 0x00CA1D 03:8A0D: C9 90     CMP #$90
C - - - - - 0x00CA1F 03:8A0F: 90 03     BCC bra_8A14
C - - - - - 0x00CA21 03:8A11: 4C 17 8A  JMP loc_8A17
bra_8A14:
C - - - - - 0x00CA24 03:8A14: 4C 58 88  JMP loc_8858
loc_8A17:
C D 0 - - - 0x00CA27 03:8A17: A5 1D     LDA ram_001D
C - - - - - 0x00CA29 03:8A19: F0 03     BEQ bra_8A1E
- - - - - - 0x00CA2B 03:8A1B: 4C CA 83  JMP loc_83CA
bra_8A1E:
C - - - - - 0x00CA2E 03:8A1E: A5 1C     LDA ram_001C
C - - - - - 0x00CA30 03:8A20: C9 06     CMP #$06
C - - - - - 0x00CA32 03:8A22: B0 03     BCS bra_8A27
C - - - - - 0x00CA34 03:8A24: 4C CA 83  JMP loc_83CA
bra_8A27:
C - - - - - 0x00CA37 03:8A27: A5 1E     LDA ram_001E
C - - - - - 0x00CA39 03:8A29: 10 05     BPL bra_8A30
C - - - - - 0x00CA3B 03:8A2B: A9 80     LDA #$80
C - - - - - 0x00CA3D 03:8A2D: 4C 32 8A  JMP loc_8A32
bra_8A30:
C - - - - - 0x00CA40 03:8A30: A9 00     LDA #$00
loc_8A32:
C D 0 - - - 0x00CA42 03:8A32: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00CA45 03:8A35: A5 1C     LDA ram_001C
C - - - - - 0x00CA47 03:8A37: C9 14     CMP #$14
C - - - - - 0x00CA49 03:8A39: B0 05     BCS bra_8A40
C - - - - - 0x00CA4B 03:8A3B: A9 29     LDA #$29
C - - - - - 0x00CA4D 03:8A3D: 4C 42 8A  JMP loc_8A42
bra_8A40:
C - - - - - 0x00CA50 03:8A40: A9 28     LDA #$28
loc_8A42:
C D 0 - - - 0x00CA52 03:8A42: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CA55 03:8A45: 60        RTS
bra_8A46:
C - - - - - 0x00CA56 03:8A46: 20 9C 8A  JSR sub_8A9C
C - - - - - 0x00CA59 03:8A49: A5 22     LDA ram_0022
C - - - - - 0x00CA5B 03:8A4B: D0 09     BNE bra_8A56
C - - - - - 0x00CA5D 03:8A4D: A5 21     LDA ram_0021
C - - - - - 0x00CA5F 03:8A4F: C9 90     CMP #$90
C - - - - - 0x00CA61 03:8A51: 90 03     BCC bra_8A56
C - - - - - 0x00CA63 03:8A53: 4C 59 8A  JMP loc_8A59
bra_8A56:
C - - - - - 0x00CA66 03:8A56: 4C 58 88  JMP loc_8858
loc_8A59:
C D 0 - - - 0x00CA69 03:8A59: A5 1D     LDA ram_001D
C - - - - - 0x00CA6B 03:8A5B: F0 03     BEQ bra_8A60
- - - - - - 0x00CA6D 03:8A5D: 4C CA 83  JMP loc_83CA
bra_8A60:
C - - - - - 0x00CA70 03:8A60: A5 1C     LDA ram_001C
C - - - - - 0x00CA72 03:8A62: C9 0C     CMP #$0C
C - - - - - 0x00CA74 03:8A64: B0 17     BCS bra_8A7D
C - - - - - 0x00CA76 03:8A66: A9 FF     LDA #$FF
C - - - - - 0x00CA78 03:8A68: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00CA7B 03:8A6B: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00CA7E 03:8A6E: C9 80     CMP #$80
C - - - - - 0x00CA80 03:8A70: B0 05     BCS bra_8A77
C - - - - - 0x00CA82 03:8A72: A9 52     LDA #$52
C - - - - - 0x00CA84 03:8A74: 4C 79 8A  JMP loc_8A79
bra_8A77:
C - - - - - 0x00CA87 03:8A77: A9 54     LDA #$54
loc_8A79:
C D 0 - - - 0x00CA89 03:8A79: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CA8C 03:8A7C: 60        RTS
bra_8A7D:
C - - - - - 0x00CA8D 03:8A7D: A5 1E     LDA ram_001E
C - - - - - 0x00CA8F 03:8A7F: 10 05     BPL bra_8A86
C - - - - - 0x00CA91 03:8A81: A9 80     LDA #$80
C - - - - - 0x00CA93 03:8A83: 4C 88 8A  JMP loc_8A88
bra_8A86:
C - - - - - 0x00CA96 03:8A86: A9 00     LDA #$00
loc_8A88:
C D 0 - - - 0x00CA98 03:8A88: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00CA9B 03:8A8B: A5 1C     LDA ram_001C
C - - - - - 0x00CA9D 03:8A8D: C9 14     CMP #$14
C - - - - - 0x00CA9F 03:8A8F: B0 05     BCS bra_8A96
C - - - - - 0x00CAA1 03:8A91: A9 3F     LDA #$3F
C - - - - - 0x00CAA3 03:8A93: 4C 98 8A  JMP loc_8A98
bra_8A96:
C - - - - - 0x00CAA6 03:8A96: A9 3E     LDA #$3E
loc_8A98:
C D 0 - - - 0x00CAA8 03:8A98: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CAAB 03:8A9B: 60        RTS
sub_8A9C:
C - - - - - 0x00CAAC 03:8A9C: 20 0D 84  JSR sub_840D
C - - - - - 0x00CAAF 03:8A9F: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00CAB2 03:8AA2: 38        SEC
C - - - - - 0x00CAB3 03:8AA3: E5 21     SBC ram_0021
C - - - - - 0x00CAB5 03:8AA5: 85 1C     STA ram_001C
C - - - - - 0x00CAB7 03:8AA7: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00CABA 03:8AAA: E5 22     SBC ram_0022
C - - - - - 0x00CABC 03:8AAC: 85 1D     STA ram_001D
C - - - - - 0x00CABE 03:8AAE: 85 1E     STA ram_001E
C - - - - - 0x00CAC0 03:8AB0: 10 11     BPL bra_8AC3_RTS
C - - - - - 0x00CAC2 03:8AB2: A5 1C     LDA ram_001C
C - - - - - 0x00CAC4 03:8AB4: 49 FF     EOR #$FF
C - - - - - 0x00CAC6 03:8AB6: 18        CLC
C - - - - - 0x00CAC7 03:8AB7: 69 01     ADC #$01
C - - - - - 0x00CAC9 03:8AB9: 85 1C     STA ram_001C
C - - - - - 0x00CACB 03:8ABB: A5 1D     LDA ram_001D
C - - - - - 0x00CACD 03:8ABD: 49 FF     EOR #$FF
C - - - - - 0x00CACF 03:8ABF: 69 00     ADC #$00
C - - - - - 0x00CAD1 03:8AC1: 85 1D     STA ram_001D
bra_8AC3_RTS:
C - - - - - 0x00CAD3 03:8AC3: 60        RTS



tbl_8AC4:
- D 0 - - - 0x00CAD4 03:8AC4: 80        .byte $80   ; 
- D 0 - - - 0x00CAD5 03:8AC5: C0        .byte $C0   ; 
- D 0 - - - 0x00CAD6 03:8AC6: C0        .byte $C0   ; 
- D 0 - - - 0x00CAD7 03:8AC7: FF        .byte $FF   ; 



ofs_014_8AC8_0F:
C - - J - - 0x00CAD8 03:8AC8: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00CADB 03:8ACB: 29 03     AND #$03
C - - - - - 0x00CADD 03:8ACD: D0 16     BNE bra_8AE5
- - - - - - 0x00CADF 03:8ACF: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00CAE2 03:8AD2: C9 04     CMP #$04
- - - - - - 0x00CAE4 03:8AD4: B0 0F     BCS bra_8AE5
- - - - - - 0x00CAE6 03:8AD6: A9 0A     LDA #$0A
- - - - - - 0x00CAE8 03:8AD8: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00CAEB 03:8ADB: 8A        TXA
- - - - - - 0x00CAEC 03:8ADC: 29 01     AND #$01
- - - - - - 0x00CAEE 03:8ADE: A8        TAY
- - - - - - 0x00CAEF 03:8ADF: A9 10     LDA #$10
- - - - - - 0x00CAF1 03:8AE1: 99 7E 06  STA ram_067E,Y
- - - - - - 0x00CAF4 03:8AE4: 60        RTS
bra_8AE5:
C - - - - - 0x00CAF5 03:8AE5: 8A        TXA
C - - - - - 0x00CAF6 03:8AE6: 29 01     AND #$01
C - - - - - 0x00CAF8 03:8AE8: A8        TAY
C - - - - - 0x00CAF9 03:8AE9: B9 30 05  LDA ram_расстановка_команды,Y
C - - - - - 0x00CAFC 03:8AEC: 29 03     AND #$03
C - - - - - 0x00CAFE 03:8AEE: 0A        ASL
C - - - - - 0x00CAFF 03:8AEF: 0A        ASL
C - - - - - 0x00CB00 03:8AF0: 0A        ASL
C - - - - - 0x00CB01 03:8AF1: 0A        ASL
C - - - - - 0x00CB02 03:8AF2: 85 2C     STA ram_002C
C - - - - - 0x00CB04 03:8AF4: 8A        TXA
C - - - - - 0x00CB05 03:8AF5: 29 0E     AND #$0E
C - - - - - 0x00CB07 03:8AF7: 05 2C     ORA ram_002C
C - - - - - 0x00CB09 03:8AF9: 85 2C     STA ram_002C
C - - - - - 0x00CB0B 03:8AFB: BD E4 04  LDA ram_игрок_HP,X
C - - - - - 0x00CB0E 03:8AFE: 29 01     AND #$01
C - - - - - 0x00CB10 03:8B00: 05 2C     ORA ram_002C
C - - - - - 0x00CB12 03:8B02: 0A        ASL
C - - - - - 0x00CB13 03:8B03: A8        TAY
C - - - - - 0x00CB14 03:8B04: B9 6E B7  LDA tbl_B76E,Y
C - - - - - 0x00CB17 03:8B07: 85 2C     STA ram_002C
C - - - - - 0x00CB19 03:8B09: B9 6F B7  LDA tbl_B76E + $01,Y
C - - - - - 0x00CB1C 03:8B0C: 85 2D     STA ram_002D
C - - - - - 0x00CB1E 03:8B0E: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00CB21 03:8B11: 29 0F     AND #$0F
C - - - - - 0x00CB23 03:8B13: 85 2E     STA ram_002E
C - - - - - 0x00CB25 03:8B15: BD E4 04  LDA ram_игрок_HP,X
C - - - - - 0x00CB28 03:8B18: 29 07     AND #$07
C - - - - - 0x00CB2A 03:8B1A: 38        SEC
C - - - - - 0x00CB2B 03:8B1B: E9 03     SBC #$03
C - - - - - 0x00CB2D 03:8B1D: 18        CLC
C - - - - - 0x00CB2E 03:8B1E: 65 2E     ADC ram_002E
C - - - - - 0x00CB30 03:8B20: 30 09     BMI bra_8B2B
C - - - - - 0x00CB32 03:8B22: C9 10     CMP #$10
C - - - - - 0x00CB34 03:8B24: 90 07     BCC bra_8B2D
C - - - - - 0x00CB36 03:8B26: A9 0F     LDA #$0F
C - - - - - 0x00CB38 03:8B28: 4C 2D 8B  JMP loc_8B2D
bra_8B2B:
- - - - - - 0x00CB3B 03:8B2B: A9 00     LDA #$00
bra_8B2D:
loc_8B2D:
C D 0 - - - 0x00CB3D 03:8B2D: 4A        LSR
C - - - - - 0x00CB3E 03:8B2E: 29 FE     AND #$FE
C - - - - - 0x00CB40 03:8B30: 85 2E     STA ram_002E
C - - - - - 0x00CB42 03:8B32: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00CB45 03:8B35: 29 C0     AND #$C0
C - - - - - 0x00CB47 03:8B37: 4A        LSR
C - - - - - 0x00CB48 03:8B38: 4A        LSR
C - - - - - 0x00CB49 03:8B39: 4A        LSR
C - - - - - 0x00CB4A 03:8B3A: 05 2E     ORA ram_002E
C - - - - - 0x00CB4C 03:8B3C: A8        TAY
C - - - - - 0x00CB4D 03:8B3D: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00CB4F 03:8B3F: 85 2E     STA ram_002E
C - - - - - 0x00CB51 03:8B41: C8        INY
C - - - - - 0x00CB52 03:8B42: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00CB54 03:8B44: 85 2F     STA ram_002F
C - - - - - 0x00CB56 03:8B46: A0 00     LDY #$00
loc_8B48:
C D 0 - - - 0x00CB58 03:8B48: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00CB5A 03:8B4A: 10 1B     BPL bra_8B67
C - - - - - 0x00CB5C 03:8B4C: AD 26 B9  LDA tbl_B926
C - - - - - 0x00CB5F 03:8B4F: 85 2E     STA ram_002E
C - - - - - 0x00CB61 03:8B51: AD 27 B9  LDA tbl_B926 + $01
C - - - - - 0x00CB64 03:8B54: 85 2F     STA ram_002F
C - - - - - 0x00CB66 03:8B56: BD E4 04  LDA ram_игрок_HP,X
C - - - - - 0x00CB69 03:8B59: 29 1F     AND #$1F
C - - - - - 0x00CB6B 03:8B5B: C9 1C     CMP #$1C
C - - - - - 0x00CB6D 03:8B5D: 90 02     BCC bra_8B61
- - - - - - 0x00CB6F 03:8B5F: A9 1B     LDA #$1B
bra_8B61:
C - - - - - 0x00CB71 03:8B61: 0A        ASL
C - - - - - 0x00CB72 03:8B62: 0A        ASL
C - - - - - 0x00CB73 03:8B63: A8        TAY
C - - - - - 0x00CB74 03:8B64: 4C 48 8B  JMP loc_8B48
bra_8B67:
C - - - - - 0x00CB77 03:8B67: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00CB7A 03:8B6A: C8        INY
C - - - - - 0x00CB7B 03:8B6B: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00CB7D 03:8B6D: 9D 20 06  STA ram_0620,X
C - - - - - 0x00CB80 03:8B70: C8        INY
C - - - - - 0x00CB81 03:8B71: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00CB83 03:8B73: 9D 44 06  STA ram_0644,X
C - - - - - 0x00CB86 03:8B76: C8        INY
C - - - - - 0x00CB87 03:8B77: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00CB89 03:8B79: 9D 38 06  STA ram_0638,X
C - - - - - 0x00CB8C 03:8B7C: 8A        TXA
C - - - - - 0x00CB8D 03:8B7D: 29 01     AND #$01
C - - - - - 0x00CB8F 03:8B7F: F0 15     BEQ bra_8B96
C - - - - - 0x00CB91 03:8B81: BD 20 06  LDA ram_0620,X
C - - - - - 0x00CB94 03:8B84: 49 FF     EOR #$FF
C - - - - - 0x00CB96 03:8B86: 18        CLC
C - - - - - 0x00CB97 03:8B87: 69 01     ADC #$01
C - - - - - 0x00CB99 03:8B89: 9D 20 06  STA ram_0620,X
C - - - - - 0x00CB9C 03:8B8C: BD 2C 06  LDA ram_062C,X
C - - - - - 0x00CB9F 03:8B8F: 49 FF     EOR #$FF
C - - - - - 0x00CBA1 03:8B91: 69 04     ADC #$04
C - - - - - 0x00CBA3 03:8B93: 9D 2C 06  STA ram_062C,X
bra_8B96:
C - - - - - 0x00CBA6 03:8B96: 20 37 AE  JSR sub_AE37
C - - - - - 0x00CBA9 03:8B99: A9 10     LDA #$10
C - - - - - 0x00CBAB 03:8B9B: 85 1E     STA ram_001E
C - - - - - 0x00CBAD 03:8B9D: 85 1F     STA ram_001F
C - - - - - 0x00CBAF 03:8B9F: 20 75 B1  JSR sub_B175
C - - - - - 0x00CBB2 03:8BA2: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00CBB5 03:8BA5: 29 40     AND #$40
C - - - - - 0x00CBB7 03:8BA7: F0 03     BEQ bra_8BAC
C - - - - - 0x00CBB9 03:8BA9: 4C 3E 90  JMP loc_903E
bra_8BAC:
C - - - - - 0x00CBBC 03:8BAC: 20 F4 99  JSR sub_99F4
C - - - - - 0x00CBBF 03:8BAF: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00CBC2 03:8BB2: 4A        LSR
C - - - - - 0x00CBC3 03:8BB3: 4A        LSR
C - - - - - 0x00CBC4 03:8BB4: 4A        LSR
C - - - - - 0x00CBC5 03:8BB5: 4A        LSR
C - - - - - 0x00CBC6 03:8BB6: 4A        LSR
C - - - - - 0x00CBC7 03:8BB7: A8        TAY
C - - - - - 0x00CBC8 03:8BB8: B9 AE 9A  LDA tbl_9AAE,Y
C - - - - - 0x00CBCB 03:8BBB: 85 1C     STA ram_001C
C - - - - - 0x00CBCD 03:8BBD: 20 70 8F  JSR sub_8F70
C - - - - - 0x00CBD0 03:8BC0: D0 06     BNE bra_8BC8
C - - - - - 0x00CBD2 03:8BC2: 20 E4 9A  JSR sub_9AE4
C - - - - - 0x00CBD5 03:8BC5: 4C 04 8D  JMP loc_8D04
bra_8BC8:
C - - - - - 0x00CBD8 03:8BC8: 20 BA 9A  JSR sub_9ABA
C - - - - - 0x00CBDB 03:8BCB: 4C A2 8D  JMP loc_8DA2
loc_8BCE:
C D 0 - - - 0x00CBDE 03:8BCE: A5 2A     LDA ram_002A
C - - - - - 0x00CBE0 03:8BD0: 30 0A     BMI bra_8BDC
C - - - - - 0x00CBE2 03:8BD2: A9 00     LDA #$00
C - - - - - 0x00CBE4 03:8BD4: 46 1C     LSR ram_001C
C - - - - - 0x00CBE6 03:8BD6: 6A        ROR
C - - - - - 0x00CBE7 03:8BD7: 05 1C     ORA ram_001C
C - - - - - 0x00CBE9 03:8BD9: 4C E3 8B  JMP loc_8BE3
bra_8BDC:
C - - - - - 0x00CBEC 03:8BDC: A9 00     LDA #$00
C - - - - - 0x00CBEE 03:8BDE: 06 1C     ASL ram_001C
C - - - - - 0x00CBF0 03:8BE0: 2A        ROL
C - - - - - 0x00CBF1 03:8BE1: 05 1C     ORA ram_001C
loc_8BE3:
C D 0 - - - 0x00CBF3 03:8BE3: 85 1C     STA ram_001C
C - - - - - 0x00CBF5 03:8BE5: 20 70 8F  JSR sub_8F70
C - - - - - 0x00CBF8 03:8BE8: D0 03     BNE bra_8BED
C - - - - - 0x00CBFA 03:8BEA: 4C 04 8D  JMP loc_8D04
bra_8BED:
C - - - - - 0x00CBFD 03:8BED: A5 2A     LDA ram_002A
C - - - - - 0x00CBFF 03:8BEF: 30 0D     BMI bra_8BFE
- - - - - - 0x00CC01 03:8BF1: A9 00     LDA #$00
- - - - - - 0x00CC03 03:8BF3: 06 1C     ASL ram_001C
- - - - - - 0x00CC05 03:8BF5: 2A        ROL
- - - - - - 0x00CC06 03:8BF6: 06 1C     ASL ram_001C
- - - - - - 0x00CC08 03:8BF8: 2A        ROL
- - - - - - 0x00CC09 03:8BF9: 05 1C     ORA ram_001C
- - - - - - 0x00CC0B 03:8BFB: 4C 08 8C  JMP loc_8C08
bra_8BFE:
C - - - - - 0x00CC0E 03:8BFE: A9 00     LDA #$00
C - - - - - 0x00CC10 03:8C00: 46 1C     LSR ram_001C
C - - - - - 0x00CC12 03:8C02: 6A        ROR
C - - - - - 0x00CC13 03:8C03: 46 1C     LSR ram_001C
C - - - - - 0x00CC15 03:8C05: 6A        ROR
C - - - - - 0x00CC16 03:8C06: 05 1C     ORA ram_001C
loc_8C08:
C - - - - - 0x00CC18 03:8C08: 85 1C     STA ram_001C
C - - - - - 0x00CC1A 03:8C0A: 20 70 8F  JSR sub_8F70
C - - - - - 0x00CC1D 03:8C0D: D0 03     BNE bra_8C12
C - - - - - 0x00CC1F 03:8C0F: 4C 04 8D  JMP loc_8D04
bra_8C12:
- - - - - - 0x00CC22 03:8C12: A5 2A     LDA ram_002A
- - - - - - 0x00CC24 03:8C14: 30 10     BMI bra_8C26
- - - - - - 0x00CC26 03:8C16: A9 00     LDA #$00
- - - - - - 0x00CC28 03:8C18: 46 1C     LSR ram_001C
- - - - - - 0x00CC2A 03:8C1A: 6A        ROR
- - - - - - 0x00CC2B 03:8C1B: 46 1C     LSR ram_001C
- - - - - - 0x00CC2D 03:8C1D: 6A        ROR
- - - - - - 0x00CC2E 03:8C1E: 46 1C     LSR ram_001C
- - - - - - 0x00CC30 03:8C20: 6A        ROR
- - - - - - 0x00CC31 03:8C21: 05 1C     ORA ram_001C
- - - - - - 0x00CC33 03:8C23: 4C 33 8C  JMP loc_8C33
bra_8C26:
- - - - - - 0x00CC36 03:8C26: A9 00     LDA #$00
- - - - - - 0x00CC38 03:8C28: 06 1C     ASL ram_001C
- - - - - - 0x00CC3A 03:8C2A: 2A        ROL
- - - - - - 0x00CC3B 03:8C2B: 06 1C     ASL ram_001C
- - - - - - 0x00CC3D 03:8C2D: 2A        ROL
- - - - - - 0x00CC3E 03:8C2E: 06 1C     ASL ram_001C
- - - - - - 0x00CC40 03:8C30: 2A        ROL
- - - - - - 0x00CC41 03:8C31: 05 1C     ORA ram_001C
loc_8C33:
- - - - - - 0x00CC43 03:8C33: 85 1C     STA ram_001C
- - - - - - 0x00CC45 03:8C35: 20 70 8F  JSR sub_8F70
- - - - - - 0x00CC48 03:8C38: D0 03     BNE bra_8C3D
- - - - - - 0x00CC4A 03:8C3A: 4C 04 8D  JMP loc_8D04
bra_8C3D:
- - - - - - 0x00CC4D 03:8C3D: A5 2A     LDA ram_002A
- - - - - - 0x00CC4F 03:8C3F: 30 13     BMI bra_8C54
- - - - - - 0x00CC51 03:8C41: A9 00     LDA #$00
- - - - - - 0x00CC53 03:8C43: 06 1C     ASL ram_001C
- - - - - - 0x00CC55 03:8C45: 2A        ROL
- - - - - - 0x00CC56 03:8C46: 06 1C     ASL ram_001C
- - - - - - 0x00CC58 03:8C48: 2A        ROL
- - - - - - 0x00CC59 03:8C49: 06 1C     ASL ram_001C
- - - - - - 0x00CC5B 03:8C4B: 2A        ROL
- - - - - - 0x00CC5C 03:8C4C: 06 1C     ASL ram_001C
- - - - - - 0x00CC5E 03:8C4E: 2A        ROL
- - - - - - 0x00CC5F 03:8C4F: 05 1C     ORA ram_001C
- - - - - - 0x00CC61 03:8C51: 4C 64 8C  JMP loc_8C64
bra_8C54:
- - - - - - 0x00CC64 03:8C54: A9 00     LDA #$00
- - - - - - 0x00CC66 03:8C56: 46 1C     LSR ram_001C
- - - - - - 0x00CC68 03:8C58: 6A        ROR
- - - - - - 0x00CC69 03:8C59: 46 1C     LSR ram_001C
- - - - - - 0x00CC6B 03:8C5B: 6A        ROR
- - - - - - 0x00CC6C 03:8C5C: 46 1C     LSR ram_001C
- - - - - - 0x00CC6E 03:8C5E: 6A        ROR
- - - - - - 0x00CC6F 03:8C5F: 46 1C     LSR ram_001C
- - - - - - 0x00CC71 03:8C61: 6A        ROR
- - - - - - 0x00CC72 03:8C62: 05 1C     ORA ram_001C
loc_8C64:
- - - - - - 0x00CC74 03:8C64: 85 1C     STA ram_001C
- - - - - - 0x00CC76 03:8C66: 20 70 8F  JSR sub_8F70
- - - - - - 0x00CC79 03:8C69: D0 03     BNE bra_8C6E
- - - - - - 0x00CC7B 03:8C6B: 4C 04 8D  JMP loc_8D04
bra_8C6E:
- - - - - - 0x00CC7E 03:8C6E: A5 2A     LDA ram_002A
- - - - - - 0x00CC80 03:8C70: 30 16     BMI bra_8C88
- - - - - - 0x00CC82 03:8C72: A9 00     LDA #$00
- - - - - - 0x00CC84 03:8C74: 46 1C     LSR ram_001C
- - - - - - 0x00CC86 03:8C76: 6A        ROR
- - - - - - 0x00CC87 03:8C77: 46 1C     LSR ram_001C
- - - - - - 0x00CC89 03:8C79: 6A        ROR
- - - - - - 0x00CC8A 03:8C7A: 46 1C     LSR ram_001C
- - - - - - 0x00CC8C 03:8C7C: 6A        ROR
- - - - - - 0x00CC8D 03:8C7D: 46 1C     LSR ram_001C
- - - - - - 0x00CC8F 03:8C7F: 6A        ROR
- - - - - - 0x00CC90 03:8C80: 46 1C     LSR ram_001C
- - - - - - 0x00CC92 03:8C82: 6A        ROR
- - - - - - 0x00CC93 03:8C83: 05 1C     ORA ram_001C
- - - - - - 0x00CC95 03:8C85: 4C 9B 8C  JMP loc_8C9B
bra_8C88:
- - - - - - 0x00CC98 03:8C88: A9 00     LDA #$00
- - - - - - 0x00CC9A 03:8C8A: 06 1C     ASL ram_001C
- - - - - - 0x00CC9C 03:8C8C: 2A        ROL
- - - - - - 0x00CC9D 03:8C8D: 06 1C     ASL ram_001C
- - - - - - 0x00CC9F 03:8C8F: 2A        ROL
- - - - - - 0x00CCA0 03:8C90: 06 1C     ASL ram_001C
- - - - - - 0x00CCA2 03:8C92: 2A        ROL
- - - - - - 0x00CCA3 03:8C93: 06 1C     ASL ram_001C
- - - - - - 0x00CCA5 03:8C95: 2A        ROL
- - - - - - 0x00CCA6 03:8C96: 06 1C     ASL ram_001C
- - - - - - 0x00CCA8 03:8C98: 2A        ROL
- - - - - - 0x00CCA9 03:8C99: 05 1C     ORA ram_001C
loc_8C9B:
- - - - - - 0x00CCAB 03:8C9B: 85 1C     STA ram_001C
- - - - - - 0x00CCAD 03:8C9D: 20 70 8F  JSR sub_8F70
- - - - - - 0x00CCB0 03:8CA0: D0 03     BNE bra_8CA5
- - - - - - 0x00CCB2 03:8CA2: 4C 04 8D  JMP loc_8D04
bra_8CA5:
- - - - - - 0x00CCB5 03:8CA5: A5 2A     LDA ram_002A
- - - - - - 0x00CCB7 03:8CA7: 30 19     BMI bra_8CC2
- - - - - - 0x00CCB9 03:8CA9: A9 00     LDA #$00
- - - - - - 0x00CCBB 03:8CAB: 06 1C     ASL ram_001C
- - - - - - 0x00CCBD 03:8CAD: 2A        ROL
- - - - - - 0x00CCBE 03:8CAE: 06 1C     ASL ram_001C
- - - - - - 0x00CCC0 03:8CB0: 2A        ROL
- - - - - - 0x00CCC1 03:8CB1: 06 1C     ASL ram_001C
- - - - - - 0x00CCC3 03:8CB3: 2A        ROL
- - - - - - 0x00CCC4 03:8CB4: 06 1C     ASL ram_001C
- - - - - - 0x00CCC6 03:8CB6: 2A        ROL
- - - - - - 0x00CCC7 03:8CB7: 06 1C     ASL ram_001C
- - - - - - 0x00CCC9 03:8CB9: 2A        ROL
- - - - - - 0x00CCCA 03:8CBA: 06 1C     ASL ram_001C
- - - - - - 0x00CCCC 03:8CBC: 2A        ROL
- - - - - - 0x00CCCD 03:8CBD: 05 1C     ORA ram_001C
- - - - - - 0x00CCCF 03:8CBF: 4C D8 8C  JMP loc_8CD8
bra_8CC2:
- - - - - - 0x00CCD2 03:8CC2: A9 00     LDA #$00
- - - - - - 0x00CCD4 03:8CC4: 46 1C     LSR ram_001C
- - - - - - 0x00CCD6 03:8CC6: 6A        ROR
- - - - - - 0x00CCD7 03:8CC7: 46 1C     LSR ram_001C
- - - - - - 0x00CCD9 03:8CC9: 6A        ROR
- - - - - - 0x00CCDA 03:8CCA: 46 1C     LSR ram_001C
- - - - - - 0x00CCDC 03:8CCC: 6A        ROR
- - - - - - 0x00CCDD 03:8CCD: 46 1C     LSR ram_001C
- - - - - - 0x00CCDF 03:8CCF: 6A        ROR
- - - - - - 0x00CCE0 03:8CD0: 46 1C     LSR ram_001C
- - - - - - 0x00CCE2 03:8CD2: 6A        ROR
- - - - - - 0x00CCE3 03:8CD3: 46 1C     LSR ram_001C
- - - - - - 0x00CCE5 03:8CD5: 6A        ROR
- - - - - - 0x00CCE6 03:8CD6: 05 1C     ORA ram_001C
loc_8CD8:
- - - - - - 0x00CCE8 03:8CD8: 85 1C     STA ram_001C
- - - - - - 0x00CCEA 03:8CDA: 20 70 8F  JSR sub_8F70
- - - - - - 0x00CCED 03:8CDD: D0 03     BNE bra_8CE2
- - - - - - 0x00CCEF 03:8CDF: 4C 04 8D  JMP loc_8D04
bra_8CE2:
- - - - - - 0x00CCF2 03:8CE2: A5 2A     LDA ram_002A
- - - - - - 0x00CCF4 03:8CE4: 30 0A     BMI bra_8CF0
- - - - - - 0x00CCF6 03:8CE6: A9 00     LDA #$00
- - - - - - 0x00CCF8 03:8CE8: 06 1C     ASL ram_001C
- - - - - - 0x00CCFA 03:8CEA: 2A        ROL
- - - - - - 0x00CCFB 03:8CEB: 05 1C     ORA ram_001C
- - - - - - 0x00CCFD 03:8CED: 4C F7 8C  JMP loc_8CF7
bra_8CF0:
- - - - - - 0x00CD00 03:8CF0: A9 00     LDA #$00
- - - - - - 0x00CD02 03:8CF2: 46 1C     LSR ram_001C
- - - - - - 0x00CD04 03:8CF4: 6A        ROR
- - - - - - 0x00CD05 03:8CF5: 05 1C     ORA ram_001C
loc_8CF7:
- - - - - - 0x00CD07 03:8CF7: 85 1C     STA ram_001C
- - - - - - 0x00CD09 03:8CF9: 20 70 8F  JSR sub_8F70
- - - - - - 0x00CD0C 03:8CFC: D0 03     BNE bra_8D01
- - - - - - 0x00CD0E 03:8CFE: 4C 04 8D  JMP loc_8D04
bra_8D01:
loc_8D01:
- - - - - - 0x00CD11 03:8D01: 4C 01 8D  JMP loc_8D01
loc_8D04:
C D 0 - - - 0x00CD14 03:8D04: A5 1C     LDA ram_001C
C - - - - - 0x00CD16 03:8D06: 85 2B     STA ram_002B
C - - - - - 0x00CD18 03:8D08: 8A        TXA
C - - - - - 0x00CD19 03:8D09: 29 01     AND #$01
C - - - - - 0x00CD1B 03:8D0B: 49 01     EOR #$01
C - - - - - 0x00CD1D 03:8D0D: A8        TAY
C - - - - - 0x00CD1E 03:8D0E: B9 76 06  LDA ram_дистанция_ближайшего,Y
C - - - - - 0x00CD21 03:8D11: C9 18     CMP #$18
C - - - - - 0x00CD23 03:8D13: B0 17     BCS bra_8D2C
C - - - - - 0x00CD25 03:8D15: B9 74 06  LDA ram_номер_ближайшего,Y
C - - - - - 0x00CD28 03:8D18: A8        TAY
C - - - - - 0x00CD29 03:8D19: 20 BF AE  JSR sub_AEBF
C - - - - - 0x00CD2C 03:8D1C: 90 0E     BCC bra_8D2C
C - - - - - 0x00CD2E 03:8D1E: 8A        TXA
C - - - - - 0x00CD2F 03:8D1F: 29 01     AND #$01
C - - - - - 0x00CD31 03:8D21: A8        TAY
C - - - - - 0x00CD32 03:8D22: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00CD35 03:8D25: 29 03     AND #$03
C - - - - - 0x00CD37 03:8D27: D0 03     BNE bra_8D2C
C - - - - - 0x00CD39 03:8D29: 4C BB 8F  JMP loc_8FBB
bra_8D2C:
C - - - - - 0x00CD3C 03:8D2C: A5 2B     LDA ram_002B
C - - - - - 0x00CD3E 03:8D2E: 85 1C     STA ram_001C
C - - - - - 0x00CD40 03:8D30: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00CD43 03:8D33: 29 07     AND #$07
C - - - - - 0x00CD45 03:8D35: 85 1D     STA ram_001D
C - - - - - 0x00CD47 03:8D37: BD 68 06  LDA ram_0668,X
C - - - - - 0x00CD4A 03:8D3A: 29 F0     AND #$F0
C - - - - - 0x00CD4C 03:8D3C: 05 1D     ORA ram_001D
C - - - - - 0x00CD4E 03:8D3E: 09 01     ORA #$01
C - - - - - 0x00CD50 03:8D40: 9D 68 06  STA ram_0668,X
C - - - - - 0x00CD53 03:8D43: A9 00     LDA #$00
C - - - - - 0x00CD55 03:8D45: 85 1D     STA ram_001D
loc_8D47:
C D 0 - - - 0x00CD57 03:8D47: A5 1C     LDA ram_001C
C - - - - - 0x00CD59 03:8D49: 29 01     AND #$01
C - - - - - 0x00CD5B 03:8D4B: D0 0C     BNE bra_8D59
C - - - - - 0x00CD5D 03:8D4D: 46 1C     LSR ram_001C
C - - - - - 0x00CD5F 03:8D4F: A5 1D     LDA ram_001D
C - - - - - 0x00CD61 03:8D51: 18        CLC
C - - - - - 0x00CD62 03:8D52: 69 20     ADC #$20
C - - - - - 0x00CD64 03:8D54: 85 1D     STA ram_001D
C - - - - - 0x00CD66 03:8D56: 4C 47 8D  JMP loc_8D47
bra_8D59:
C - - - - - 0x00CD69 03:8D59: A5 1D     LDA ram_001D
C - - - - - 0x00CD6B 03:8D5B: 9D B0 04  STA ram_obj_new_angle,X
loc_8D5E:
C - - - - - 0x00CD6E 03:8D5E: 29 60     AND #$60
C - - - - - 0x00CD70 03:8D60: D0 27     BNE bra_8D89
C - - - - - 0x00CD72 03:8D62: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00CD75 03:8D65: 29 7F     AND #$7F
C - - - - - 0x00CD77 03:8D67: C9 21     CMP #$21
C - - - - - 0x00CD79 03:8D69: D0 05     BNE bra_8D70
C - - - - - 0x00CD7B 03:8D6B: A9 0F     LDA #$0F
C - - - - - 0x00CD7D 03:8D6D: 4C 85 8D  JMP loc_8D85
bra_8D70:
C - - - - - 0x00CD80 03:8D70: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00CD83 03:8D73: 29 20     AND #$20
C - - - - - 0x00CD85 03:8D75: F0 0C     BEQ bra_8D83
- - - - - - 0x00CD87 03:8D77: BD 86 03  LDA ram_игрок_Z_lo,X
- - - - - - 0x00CD8A 03:8D7A: C9 F0     CMP #$F0
- - - - - - 0x00CD8C 03:8D7C: B0 05     BCS bra_8D83
- - - - - - 0x00CD8E 03:8D7E: A9 30     LDA #$30
- - - - - - 0x00CD90 03:8D80: 4C 85 8D  JMP loc_8D85
bra_8D83:
C - - - - - 0x00CD93 03:8D83: A9 20     LDA #$20
loc_8D85:
C D 0 - - - 0x00CD95 03:8D85: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CD98 03:8D88: 60        RTS
bra_8D89:
C - - - - - 0x00CD99 03:8D89: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00CD9C 03:8D8C: 29 20     AND #$20
C - - - - - 0x00CD9E 03:8D8E: F0 0C     BEQ bra_8D9C
- - - - - - 0x00CDA0 03:8D90: BD 86 03  LDA ram_игрок_Z_lo,X
- - - - - - 0x00CDA3 03:8D93: C9 F0     CMP #$F0
- - - - - - 0x00CDA5 03:8D95: B0 05     BCS bra_8D9C
- - - - - - 0x00CDA7 03:8D97: A9 30     LDA #$30
- - - - - - 0x00CDA9 03:8D99: 4C 9E 8D  JMP loc_8D9E
bra_8D9C:
C - - - - - 0x00CDAC 03:8D9C: A9 21     LDA #$21
loc_8D9E:
C - - - - - 0x00CDAE 03:8D9E: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CDB1 03:8DA1: 60        RTS



loc_8DA2:
C D 0 - - - 0x00CDB2 03:8DA2: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00CDB5 03:8DA5: 29 03     AND #$03
C - - - - - 0x00CDB7 03:8DA7: D0 03     BNE bra_8DAC
- - - - - - 0x00CDB9 03:8DA9: 4C CE 8B  JMP loc_8BCE
bra_8DAC:
C - - - - - 0x00CDBC 03:8DAC: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00CDBF 03:8DAF: 29 04     AND #$04
C - - - - - 0x00CDC1 03:8DB1: F0 0B     BEQ bra_8DBE
C - - - - - 0x00CDC3 03:8DB3: BD F6 03  LDA ram_игрок_spd_X_hi,X
C - - - - - 0x00CDC6 03:8DB6: 1D 12 04  ORA ram_игрок_spd_Y_hi,X
C - - - - - 0x00CDC9 03:8DB9: F0 03     BEQ bra_8DBE
C - - - - - 0x00CDCB 03:8DBB: 4C 12 8F  JMP loc_8F12
bra_8DBE:
C - - - - - 0x00CDCE 03:8DBE: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00CDD1 03:8DC1: 29 80     AND #$80
C - - - - - 0x00CDD3 03:8DC3: F0 0A     BEQ bra_8DCF
C - - - - - 0x00CDD5 03:8DC5: BD 96 04  LDA ram_obj_current_angle,X
C - - - - - 0x00CDD8 03:8DC8: 29 60     AND #$60
C - - - - - 0x00CDDA 03:8DCA: F0 03     BEQ bra_8DCF
C - - - - - 0x00CDDC 03:8DCC: 4C DF 8E  JMP loc_8EDF
bra_8DCF:
C - - - - - 0x00CDDF 03:8DCF: 8A        TXA
C - - - - - 0x00CDE0 03:8DD0: 29 01     AND #$01
C - - - - - 0x00CDE2 03:8DD2: A8        TAY
C - - - - - 0x00CDE3 03:8DD3: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00CDE6 03:8DD6: 29 03     AND #$03
C - - - - - 0x00CDE8 03:8DD8: D0 03     BNE bra_8DDD
C - - - - - 0x00CDEA 03:8DDA: 4C B8 8E  JMP loc_8EB8
bra_8DDD:
C - - - - - 0x00CDED 03:8DDD: 8A        TXA
C - - - - - 0x00CDEE 03:8DDE: 29 01     AND #$01
C - - - - - 0x00CDF0 03:8DE0: A8        TAY
C - - - - - 0x00CDF1 03:8DE1: B9 2C 05  LDA ram_номер_команды,Y
C - - - - - 0x00CDF4 03:8DE4: 29 0F     AND #$0F
C - - - - - 0x00CDF6 03:8DE6: 0A        ASL
C - - - - - 0x00CDF7 03:8DE7: A8        TAY
C - - - - - 0x00CDF8 03:8DE8: B9 F5 8D  LDA tbl_8DF5,Y
C - - - - - 0x00CDFB 03:8DEB: 85 1D     STA ram_001D
C - - - - - 0x00CDFD 03:8DED: B9 F6 8D  LDA tbl_8DF5 + $01,Y
C - - - - - 0x00CE00 03:8DF0: 85 1E     STA ram_001E
C - - - - - 0x00CE02 03:8DF2: 4C 12 98  JMP loc_9812



tbl_8DF5:
- D 0 - - - 0x00CE05 03:8DF5: 15 8E     .word off_8E15_00
- D 0 - - - 0x00CE07 03:8DF7: 35 8E     .word off_8E35_01
- - - - - - 0x00CE09 03:8DF9: 55 8E     .word off_8E55_02
- D 0 - - - 0x00CE0B 03:8DFB: 35 8E     .word off_8E35_03
- - - - - - 0x00CE0D 03:8DFD: 15 8E     .word off_8E15_04
- D 0 - - - 0x00CE0F 03:8DFF: 35 8E     .word off_8E35_05
- - - - - - 0x00CE11 03:8E01: 75 8E     .word off_8E75_06
- - - - - - 0x00CE13 03:8E03: 35 8E     .word off_8E35_07
- - - - - - 0x00CE15 03:8E05: 15 8E     .word off_8E15_08
- - - - - - 0x00CE17 03:8E07: 35 8E     .word off_8E35_09
- - - - - - 0x00CE19 03:8E09: 35 8E     .word off_8E35_0A
- - - - - - 0x00CE1B 03:8E0B: 95 8E     .word off_8E95_0B
- - - - - - 0x00CE1D 03:8E0D: 15 8E     .word off_8E15_0C
- - - - - - 0x00CE1F 03:8E0F: 35 8E     .word off_8E35_0D
- - - - - - 0x00CE21 03:8E11: 35 8E     .word off_8E35_0E
- D 0 - - - 0x00CE23 03:8E13: 35 8E     .word off_8E35_0F



off_8E15_00:
off_8E15_04:
off_8E15_08:
off_8E15_0C:
- D 0 - I - 0x00CE25 03:8E15: 06 8F     .word ofs_015_8F06_00
- D 0 - I - 0x00CE27 03:8E17: D9 8E     .word ofs_015_8ED9_01
- D 0 - I - 0x00CE29 03:8E19: DF 8E     .word ofs_015_8EDF_02
- D 0 - I - 0x00CE2B 03:8E1B: C7 8E     .word ofs_015_8EC7_03
- D 0 - I - 0x00CE2D 03:8E1D: C7 8E     .word ofs_015_8EC7_04
- D 0 - I - 0x00CE2F 03:8E1F: B8 8E     .word ofs_015_8EB8_05
- D 0 - I - 0x00CE31 03:8E21: D9 8E     .word ofs_015_8ED9_06
- D 0 - I - 0x00CE33 03:8E23: DF 8E     .word ofs_015_8EDF_07
- D 0 - I - 0x00CE35 03:8E25: D6 8E     .word ofs_015_8ED6_08
- D 0 - I - 0x00CE37 03:8E27: DF 8E     .word ofs_015_8EDF_09
- D 0 - I - 0x00CE39 03:8E29: D9 8E     .word ofs_015_8ED9_0A
- - - - - - 0x00CE3B 03:8E2B: D6 8E     .word ofs_015_8ED6_0B
- - - - - - 0x00CE3D 03:8E2D: B8 8E     .word ofs_015_8EB8_0C
- - - - - - 0x00CE3F 03:8E2F: D9 8E     .word ofs_015_8ED9_0D
- - - - - - 0x00CE41 03:8E31: DF 8E     .word ofs_015_8EDF_0E
- - - - - - 0x00CE43 03:8E33: C7 8E     .word ofs_015_8EC7_0F



off_8E35_01:
off_8E35_03:
off_8E35_05:
off_8E35_07:
off_8E35_09:
off_8E35_0A:
off_8E35_0D:
off_8E35_0E:
off_8E35_0F:
- D 0 - I - 0x00CE45 03:8E35: B5 8E     .word ofs_015_8EB5_00
- D 0 - I - 0x00CE47 03:8E37: B8 8E     .word ofs_015_8EB8_01
- D 0 - I - 0x00CE49 03:8E39: D9 8E     .word ofs_015_8ED9_02
- - - - - - 0x00CE4B 03:8E3B: B8 8E     .word ofs_015_8EB8_03
- D 0 - I - 0x00CE4D 03:8E3D: B5 8E     .word ofs_015_8EB5_04
- D 0 - I - 0x00CE4F 03:8E3F: B8 8E     .word ofs_015_8EB8_05
- D 0 - I - 0x00CE51 03:8E41: B8 8E     .word ofs_015_8EB8_06
- - - - - - 0x00CE53 03:8E43: B8 8E     .word ofs_015_8EB8_07
- D 0 - I - 0x00CE55 03:8E45: B5 8E     .word ofs_015_8EB5_08
- D 0 - I - 0x00CE57 03:8E47: D9 8E     .word ofs_015_8ED9_09
- D 0 - I - 0x00CE59 03:8E49: DF 8E     .word ofs_015_8EDF_0A
- - - - - - 0x00CE5B 03:8E4B: 12 8F     .word ofs_015_8F12_0B
- - - - - - 0x00CE5D 03:8E4D: B5 8E     .word ofs_015_8EB5_0C
- - - - - - 0x00CE5F 03:8E4F: D9 8E     .word ofs_015_8ED9_0D
- - - - - - 0x00CE61 03:8E51: DF 8E     .word ofs_015_8EDF_0E
- - - - - - 0x00CE63 03:8E53: C7 8E     .word ofs_015_8EC7_0F



off_8E55_02:
- - - - - - 0x00CE65 03:8E55: C7 8E     .word ofs_015_8EC7_00
- - - - - - 0x00CE67 03:8E57: D9 8E     .word ofs_015_8ED9_01
- - - - - - 0x00CE69 03:8E59: 0C 8F     .word ofs_015_8F0C_02
- - - - - - 0x00CE6B 03:8E5B: 0C 8F     .word ofs_015_8F0C_03
- - - - - - 0x00CE6D 03:8E5D: C7 8E     .word ofs_015_8EC7_04
- - - - - - 0x00CE6F 03:8E5F: C7 8E     .word ofs_015_8EC7_05
- - - - - - 0x00CE71 03:8E61: C7 8E     .word ofs_015_8EC7_06
- - - - - - 0x00CE73 03:8E63: C7 8E     .word ofs_015_8EC7_07
- - - - - - 0x00CE75 03:8E65: C7 8E     .word ofs_015_8EC7_08
- - - - - - 0x00CE77 03:8E67: 12 8F     .word ofs_015_8F12_09
- - - - - - 0x00CE79 03:8E69: C7 8E     .word ofs_015_8EC7_0A
- - - - - - 0x00CE7B 03:8E6B: C7 8E     .word ofs_015_8EC7_0B
- - - - - - 0x00CE7D 03:8E6D: C7 8E     .word ofs_015_8EC7_0C
- - - - - - 0x00CE7F 03:8E6F: C7 8E     .word ofs_015_8EC7_0D
- - - - - - 0x00CE81 03:8E71: 12 8F     .word ofs_015_8F12_0E
- - - - - - 0x00CE83 03:8E73: 12 8F     .word ofs_015_8F12_0F



off_8E75_06:
- - - - - - 0x00CE85 03:8E75: 0C 8F     .word ofs_015_8F0C_00
- - - - - - 0x00CE87 03:8E77: B8 8E     .word ofs_015_8EB8_01
- - - - - - 0x00CE89 03:8E79: B8 8E     .word ofs_015_8EB8_02
- - - - - - 0x00CE8B 03:8E7B: 0C 8F     .word ofs_015_8F0C_03
- - - - - - 0x00CE8D 03:8E7D: 2E 8F     .word ofs_015_8F2E_04
- - - - - - 0x00CE8F 03:8E7F: B8 8E     .word ofs_015_8EB8_05
- - - - - - 0x00CE91 03:8E81: B8 8E     .word ofs_015_8EB8_06
- - - - - - 0x00CE93 03:8E83: 0C 8F     .word ofs_015_8F0C_07
- - - - - - 0x00CE95 03:8E85: 0C 8F     .word ofs_015_8F0C_08
- - - - - - 0x00CE97 03:8E87: B8 8E     .word ofs_015_8EB8_09
- - - - - - 0x00CE99 03:8E89: B8 8E     .word ofs_015_8EB8_0A
- - - - - - 0x00CE9B 03:8E8B: D9 8E     .word ofs_015_8ED9_0B
- - - - - - 0x00CE9D 03:8E8D: 2E 8F     .word ofs_015_8F2E_0C
- - - - - - 0x00CE9F 03:8E8F: B8 8E     .word ofs_015_8EB8_0D
- - - - - - 0x00CEA1 03:8E91: B8 8E     .word ofs_015_8EB8_0E
- - - - - - 0x00CEA3 03:8E93: D9 8E     .word ofs_015_8ED9_0F



off_8E95_0B:
- - - - - - 0x00CEA5 03:8E95: C7 8E     .word ofs_015_8EC7_00
- - - - - - 0x00CEA7 03:8E97: C7 8E     .word ofs_015_8EC7_01
- - - - - - 0x00CEA9 03:8E99: 3A 8F     .word ofs_015_8F3A_02
- - - - - - 0x00CEAB 03:8E9B: 3A 8F     .word ofs_015_8F3A_03
- - - - - - 0x00CEAD 03:8E9D: 12 8F     .word ofs_015_8F12_04
- - - - - - 0x00CEAF 03:8E9F: D9 8E     .word ofs_015_8ED9_05
- - - - - - 0x00CEB1 03:8EA1: 0C 8F     .word ofs_015_8F0C_06
- - - - - - 0x00CEB3 03:8EA3: 0C 8F     .word ofs_015_8F0C_07
- - - - - - 0x00CEB5 03:8EA5: DF 8E     .word ofs_015_8EDF_08
- - - - - - 0x00CEB7 03:8EA7: 3A 8F     .word ofs_015_8F3A_09
- - - - - - 0x00CEB9 03:8EA9: 3A 8F     .word ofs_015_8F3A_0A
- - - - - - 0x00CEBB 03:8EAB: C7 8E     .word ofs_015_8EC7_0B
- - - - - - 0x00CEBD 03:8EAD: 12 8F     .word ofs_015_8F12_0C
- - - - - - 0x00CEBF 03:8EAF: C7 8E     .word ofs_015_8EC7_0D
- - - - - - 0x00CEC1 03:8EB1: C7 8E     .word ofs_015_8EC7_0E
- - - - - - 0x00CEC3 03:8EB3: C7 8E     .word ofs_015_8EC7_0F



ofs_015_8EB5_00:
ofs_015_8EB5_04:
ofs_015_8EB5_08:
ofs_015_8EB5_0C:
loc_8EB5:
bra_8EB5:
C - - J - - 0x00CEC5 03:8EB5: 4C CE 8B  JMP loc_8BCE



loc_8EB8:
ofs_015_8EB8_05:
ofs_015_8EB8_0C:
ofs_015_8EB8_01:
ofs_015_8EB8_03:
ofs_015_8EB8_06:
ofs_015_8EB8_07:
ofs_015_8EB8_02:
ofs_015_8EB8_09:
ofs_015_8EB8_0A:
ofs_015_8EB8_0D:
ofs_015_8EB8_0E:
C D 0 J - - 0x00CEC8 03:8EB8: 8A        TXA
C - - - - - 0x00CEC9 03:8EB9: 29 01     AND #$01
C - - - - - 0x00CECB 03:8EBB: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00CECE 03:8EBE: 29 03     AND #$03
C - - - - - 0x00CED0 03:8EC0: C9 02     CMP #$02
C - - - - - 0x00CED2 03:8EC2: F0 F1     BEQ bra_8EB5
C - - - - - 0x00CED4 03:8EC4: 4C BB 8F  JMP loc_8FBB



ofs_015_8EC7_03:
ofs_015_8EC7_04:
ofs_015_8EC7_0F:
ofs_015_8EC7_00:
ofs_015_8EC7_05:
ofs_015_8EC7_06:
ofs_015_8EC7_07:
ofs_015_8EC7_08:
ofs_015_8EC7_0A:
ofs_015_8EC7_0B:
ofs_015_8EC7_0C:
ofs_015_8EC7_0D:
ofs_015_8EC7_01:
ofs_015_8EC7_0E:
C - - J - - 0x00CED7 03:8EC7: 8A        TXA
C - - - - - 0x00CED8 03:8EC8: 29 01     AND #$01
C - - - - - 0x00CEDA 03:8ECA: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00CEDD 03:8ECD: 29 0C     AND #$0C
C - - - - - 0x00CEDF 03:8ECF: C9 08     CMP #$08
C - - - - - 0x00CEE1 03:8ED1: F0 E2     BEQ bra_8EB5
C - - - - - 0x00CEE3 03:8ED3: 4C 0B 92  JMP loc_920B



ofs_015_8ED6_08:
ofs_015_8ED6_0B:
C - - J - - 0x00CEE6 03:8ED6: 4C 04 8D  JMP loc_8D04



ofs_015_8ED9_01:
ofs_015_8ED9_06:
ofs_015_8ED9_0A:
ofs_015_8ED9_0D:
ofs_015_8ED9_02:
ofs_015_8ED9_09:
ofs_015_8ED9_0B:
ofs_015_8ED9_0F:
ofs_015_8ED9_05:
C - - J - - 0x00CEE9 03:8ED9: A9 10     LDA #$10
C - - - - - 0x00CEEB 03:8EDB: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CEEE 03:8EDE: 60        RTS



loc_8EDF:
ofs_015_8EDF_02:
ofs_015_8EDF_07:
ofs_015_8EDF_09:
ofs_015_8EDF_0E:
ofs_015_8EDF_0A:
ofs_015_8EDF_08:
C D 0 - - - 0x00CEEF 03:8EDF: A4 2C     LDY ram_002C
C - - - - - 0x00CEF1 03:8EE1: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00CEF4 03:8EE4: 38        SEC
C - - - - - 0x00CEF5 03:8EE5: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x00CEF8 03:8EE8: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00CEFB 03:8EEB: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x00CEFE 03:8EEE: 10 0B     BPL bra_8EFB
C - - - - - 0x00CF00 03:8EF0: A9 00     LDA #$00
C - - - - - 0x00CF02 03:8EF2: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00CF05 03:8EF5: A9 24     LDA #$24
C - - - - - 0x00CF07 03:8EF7: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CF0A 03:8EFA: 60        RTS
bra_8EFB:
C - - - - - 0x00CF0B 03:8EFB: A9 80     LDA #$80
C - - - - - 0x00CF0D 03:8EFD: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00CF10 03:8F00: A9 24     LDA #$24
C - - - - - 0x00CF12 03:8F02: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CF15 03:8F05: 60        RTS



ofs_015_8F06_00:
C - - J - - 0x00CF16 03:8F06: A9 0F     LDA #$0F
C - - - - - 0x00CF18 03:8F08: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CF1B 03:8F0B: 60        RTS



ofs_015_8F0C_02:
ofs_015_8F0C_03:
ofs_015_8F0C_00:
ofs_015_8F0C_07:
ofs_015_8F0C_08:
ofs_015_8F0C_06:
- - - - - - 0x00CF1C 03:8F0C: A9 0D     LDA #$0D
- - - - - - 0x00CF1E 03:8F0E: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00CF21 03:8F11: 60        RTS



loc_8F12:
ofs_015_8F12_0B:
ofs_015_8F12_09:
ofs_015_8F12_0E:
ofs_015_8F12_0F:
ofs_015_8F12_04:
ofs_015_8F12_0C:
C D 0 - - - 0x00CF22 03:8F12: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00CF25 03:8F15: 29 10     AND #$10
C - - - - - 0x00CF27 03:8F17: F0 05     BEQ bra_8F1E
- - - - - - 0x00CF29 03:8F19: A9 10     LDA #$10
- - - - - - 0x00CF2B 03:8F1B: 4C 2A 8F  JMP loc_8F2A
bra_8F1E:
C - - - - - 0x00CF2E 03:8F1E: BD 96 04  LDA ram_obj_current_angle,X
C - - - - - 0x00CF31 03:8F21: C9 FF     CMP #$FF
C - - - - - 0x00CF33 03:8F23: D0 03     BNE bra_8F28
- - - - - - 0x00CF35 03:8F25: 4C B5 8E  JMP loc_8EB5
bra_8F28:
C - - - - - 0x00CF38 03:8F28: A9 30     LDA #$30
loc_8F2A:
C - - - - - 0x00CF3A 03:8F2A: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00CF3D 03:8F2D: 60        RTS



ofs_015_8F2E_04:
ofs_015_8F2E_0C:
- - - - - - 0x00CF3E 03:8F2E: BD B0 04  LDA ram_obj_new_angle,X
- - - - - - 0x00CF41 03:8F31: 18        CLC
- - - - - - 0x00CF42 03:8F32: 69 80     ADC #$80
- - - - - - 0x00CF44 03:8F34: 9D B0 04  STA ram_obj_new_angle,X
- - - - - - 0x00CF47 03:8F37: 4C 5E 8D  JMP loc_8D5E



ofs_015_8F3A_02:
ofs_015_8F3A_03:
ofs_015_8F3A_09:
ofs_015_8F3A_0A:
- - - - - - 0x00CF4A 03:8F3A: 8A        TXA
- - - - - - 0x00CF4B 03:8F3B: 29 01     AND #$01
- - - - - - 0x00CF4D 03:8F3D: B9 D3 05  LDA ram_05D3,Y
- - - - - - 0x00CF50 03:8F40: 29 03     AND #$03
- - - - - - 0x00CF52 03:8F42: C9 02     CMP #$02
- - - - - - 0x00CF54 03:8F44: D0 03     BNE bra_8F49
- - - - - - 0x00CF56 03:8F46: 4C B5 8E  JMP loc_8EB5
bra_8F49:
- - - - - - 0x00CF59 03:8F49: BD 99 03  LDA ram_игрок_Z_hi,X
- - - - - - 0x00CF5C 03:8F4C: 30 0A     BMI bra_8F58
- - - - - - 0x00CF5E 03:8F4E: BD 86 03  LDA ram_игрок_Z_lo,X
- - - - - - 0x00CF61 03:8F51: F0 05     BEQ bra_8F58
- - - - - - 0x00CF63 03:8F53: C9 0A     CMP #$0A
- - - - - - 0x00CF65 03:8F55: B0 13     BCS bra_8F6A
- - - - - - 0x00CF67 03:8F57: 60        RTS
bra_8F58:
- - - - - - 0x00CF68 03:8F58: BD 86 04  LDA ram_игрок_состояние,X
- - - - - - 0x00CF6B 03:8F5B: 29 10     AND #$10
- - - - - - 0x00CF6D 03:8F5D: F0 05     BEQ bra_8F64
- - - - - - 0x00CF6F 03:8F5F: A9 10     LDA #$10
- - - - - - 0x00CF71 03:8F61: 4C 66 8F  JMP loc_8F66
bra_8F64:
- - - - - - 0x00CF74 03:8F64: A9 30     LDA #$30
loc_8F66:
- - - - - - 0x00CF76 03:8F66: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00CF79 03:8F69: 60        RTS
bra_8F6A:
- - - - - - 0x00CF7A 03:8F6A: A9 39     LDA #$39
- - - - - - 0x00CF7C 03:8F6C: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00CF7F 03:8F6F: 60        RTS



sub_8F70:
C - - - - - 0x00CF80 03:8F70: A5 1C     LDA ram_001C
C - - - - - 0x00CF82 03:8F72: 2D 89 06  AND ram_0689
C - - - - - 0x00CF85 03:8F75: D0 12     BNE bra_8F89
C - - - - - 0x00CF87 03:8F77: A5 1C     LDA ram_001C
C - - - - - 0x00CF89 03:8F79: 2D 88 06  AND ram_0688
C - - - - - 0x00CF8C 03:8F7C: D0 03     BNE bra_8F81
C - - - - - 0x00CF8E 03:8F7E: 4C 8C 8F  JMP loc_8F8C
bra_8F81:
C - - - - - 0x00CF91 03:8F81: 20 8F 8F  JSR sub_8F8F
C - - - - - 0x00CF94 03:8F84: D0 03     BNE bra_8F89
C - - - - - 0x00CF96 03:8F86: 4C 8C 8F  JMP loc_8F8C
bra_8F89:
C - - - - - 0x00CF99 03:8F89: A9 FF     LDA #$FF
C - - - - - 0x00CF9B 03:8F8B: 60        RTS
loc_8F8C:
C D 0 - - - 0x00CF9C 03:8F8C: A9 00     LDA #$00
C - - - - - 0x00CF9E 03:8F8E: 60        RTS



sub_8F8F:
C - - - - - 0x00CF9F 03:8F8F: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00CFA2 03:8F92: 29 0F     AND #$0F
C - - - - - 0x00CFA4 03:8F94: F0 12     BEQ bra_8FA8
C - - - - - 0x00CFA6 03:8F96: 85 1D     STA ram_001D
C - - - - - 0x00CFA8 03:8F98: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00CFAB 03:8F9B: 4A        LSR
C - - - - - 0x00CFAC 03:8F9C: 4A        LSR
C - - - - - 0x00CFAD 03:8F9D: 4A        LSR
C - - - - - 0x00CFAE 03:8F9E: 4A        LSR
C - - - - - 0x00CFAF 03:8F9F: 65 1D     ADC ram_001D
C - - - - - 0x00CFB1 03:8FA1: C9 10     CMP #$10
C - - - - - 0x00CFB3 03:8FA3: B0 03     BCS bra_8FA8
C - - - - - 0x00CFB5 03:8FA5: A9 FF     LDA #$FF
C - - - - - 0x00CFB7 03:8FA7: 60        RTS
bra_8FA8:
C - - - - - 0x00CFB8 03:8FA8: A9 00     LDA #$00
C - - - - - 0x00CFBA 03:8FAA: 60        RTS



ofs_014_8FAB_10:
- - - - - - 0x00CFBB 03:8FAB: 8A        TXA
- - - - - - 0x00CFBC 03:8FAC: 29 01     AND #$01
- - - - - - 0x00CFBE 03:8FAE: A8        TAY
- - - - - - 0x00CFBF 03:8FAF: B9 7C 06  LDA ram_067C,Y
- - - - - - 0x00CFC2 03:8FB2: 9D B0 04  STA ram_obj_new_angle,X
- - - - - - 0x00CFC5 03:8FB5: A9 20     LDA #$20
- - - - - - 0x00CFC7 03:8FB7: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00CFCA 03:8FBA: 60        RTS



loc_8FBB:
ofs_014_8FBB_11:
ofs_014_8FBB_12:
ofs_014_8FBB_13:
C D 0 - - - 0x00CFCB 03:8FBB: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00CFCE 03:8FBE: D0 0A     BNE bra_8FCA
C - - - - - 0x00CFD0 03:8FC0: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00CFD3 03:8FC3: C9 40     CMP #$40
C - - - - - 0x00CFD5 03:8FC5: 90 0D     BCC bra_8FD4
C - - - - - 0x00CFD7 03:8FC7: 4C E4 8F  JMP loc_8FE4
bra_8FCA:
C - - - - - 0x00CFDA 03:8FCA: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00CFDD 03:8FCD: C9 50     CMP #$50
C - - - - - 0x00CFDF 03:8FCF: B0 0B     BCS bra_8FDC
C - - - - - 0x00CFE1 03:8FD1: 4C E4 8F  JMP loc_8FE4
bra_8FD4:
C - - - - - 0x00CFE4 03:8FD4: A9 80     LDA #$80
C - - - - - 0x00CFE6 03:8FD6: 9D 7E 06  STA ram_067E,X
C - - - - - 0x00CFE9 03:8FD9: 4C 38 90  JMP loc_9038
bra_8FDC:
C - - - - - 0x00CFEC 03:8FDC: A9 00     LDA #$00
C - - - - - 0x00CFEE 03:8FDE: 9D 7E 06  STA ram_067E,X
C - - - - - 0x00CFF1 03:8FE1: 4C 38 90  JMP loc_9038
loc_8FE4:
C D 0 - - - 0x00CFF4 03:8FE4: 8A        TXA
C - - - - - 0x00CFF5 03:8FE5: 29 01     AND #$01
C - - - - - 0x00CFF7 03:8FE7: A8        TAY
C - - - - - 0x00CFF8 03:8FE8: A9 80     LDA #$80
C - - - - - 0x00CFFA 03:8FEA: 85 21     STA ram_0021
C - - - - - 0x00CFFC 03:8FEC: 20 34 B0  JSR sub_B034
C - - - - - 0x00CFFF 03:8FEF: A0 00     LDY #$00
C - - - - - 0x00D001 03:8FF1: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00D004 03:8FF4: 10 03     BPL bra_8FF9
C - - - - - 0x00D006 03:8FF6: C8        INY
C - - - - - 0x00D007 03:8FF7: C8        INY
C - - - - - 0x00D008 03:8FF8: C8        INY
bra_8FF9:
loc_8FF9:
C D 0 - - - 0x00D009 03:8FF9: B9 2C 00  LDA a: ram_002C,Y
C - - - - - 0x00D00C 03:8FFC: 30 27     BMI bra_9025
C - - - - - 0x00D00E 03:8FFE: 84 44     STY ram_0044
C - - - - - 0x00D010 03:9000: A8        TAY
C - - - - - 0x00D011 03:9001: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x00D014 03:9004: A4 44     LDY ram_0044
C - - - - - 0x00D016 03:9006: 29 7F     AND #$7F
C - - - - - 0x00D018 03:9008: C9 04     CMP #$04
C - - - - - 0x00D01A 03:900A: F0 13     BEQ bra_901F
C - - - - - 0x00D01C 03:900C: C9 05     CMP #$05
C - - - - - 0x00D01E 03:900E: F0 0F     BEQ bra_901F
C - - - - - 0x00D020 03:9010: C9 2D     CMP #$2D
C - - - - - 0x00D022 03:9012: F0 0B     BEQ bra_901F
C - - - - - 0x00D024 03:9014: C9 2E     CMP #$2E
C - - - - - 0x00D026 03:9016: F0 07     BEQ bra_901F
C - - - - - 0x00D028 03:9018: C9 3C     CMP #$3C
C - - - - - 0x00D02A 03:901A: F0 03     BEQ bra_901F
C - - - - - 0x00D02C 03:901C: 4C 28 90  JMP loc_9028
bra_901F:
C - - - - - 0x00D02F 03:901F: C8        INY
C - - - - - 0x00D030 03:9020: C8        INY
C - - - - - 0x00D031 03:9021: C8        INY
C - - - - - 0x00D032 03:9022: 4C F9 8F  JMP loc_8FF9
bra_9025:
C - - - - - 0x00D035 03:9025: 4C B1 83  JMP loc_83B1
loc_9028:
C D 0 - - - 0x00D038 03:9028: B9 2C 00  LDA a: ram_002C,Y
C - - - - - 0x00D03B 03:902B: 85 1C     STA ram_001C
C - - - - - 0x00D03D 03:902D: 8A        TXA
C - - - - - 0x00D03E 03:902E: 29 01     AND #$01
C - - - - - 0x00D040 03:9030: A8        TAY
C - - - - - 0x00D041 03:9031: A5 1C     LDA ram_001C
C - - - - - 0x00D043 03:9033: 09 10     ORA #$10
C - - - - - 0x00D045 03:9035: 99 7E 06  STA ram_067E,Y
loc_9038:
C D 0 - - - 0x00D048 03:9038: A9 0A     LDA #$0A
C - - - - - 0x00D04A 03:903A: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D04D 03:903D: 60        RTS



loc_903E:
ofs_014_903E_14:
C D 0 - - - 0x00D04E 03:903E: 8A        TXA
C - - - - - 0x00D04F 03:903F: 29 01     AND #$01
C - - - - - 0x00D051 03:9041: 0A        ASL
C - - - - - 0x00D052 03:9042: 0A        ASL
C - - - - - 0x00D053 03:9043: A8        TAY
C - - - - - 0x00D054 03:9044: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D057 03:9047: 85 2E     STA ram_002E
C - - - - - 0x00D059 03:9049: C8        INY
C - - - - - 0x00D05A 03:904A: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D05D 03:904D: 85 2F     STA ram_002F
C - - - - - 0x00D05F 03:904F: C8        INY
C - - - - - 0x00D060 03:9050: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D063 03:9053: 85 30     STA ram_0030
C - - - - - 0x00D065 03:9055: C8        INY
C - - - - - 0x00D066 03:9056: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D069 03:9059: 85 31     STA ram_0031
C - - - - - 0x00D06B 03:905B: 20 35 C0  JSR sub_0x01C045
C - - - - - 0x00D06E 03:905E: 85 1C     STA ram_001C
C - - - - - 0x00D070 03:9060: 8A        TXA
C - - - - - 0x00D071 03:9061: 29 01     AND #$01
C - - - - - 0x00D073 03:9063: F0 09     BEQ bra_906E
C - - - - - 0x00D075 03:9065: A5 1C     LDA ram_001C
C - - - - - 0x00D077 03:9067: 49 FF     EOR #$FF
C - - - - - 0x00D079 03:9069: 18        CLC
C - - - - - 0x00D07A 03:906A: 69 01     ADC #$01
C - - - - - 0x00D07C 03:906C: 85 1C     STA ram_001C
bra_906E:
C - - - - - 0x00D07E 03:906E: A5 1C     LDA ram_001C
C - - - - - 0x00D080 03:9070: C9 20     CMP #$20
C - - - - - 0x00D082 03:9072: 90 06     BCC bra_907A
C - - - - - 0x00D084 03:9074: C9 60     CMP #$60
C - - - - - 0x00D086 03:9076: B0 02     BCS bra_907A
C - - - - - 0x00D088 03:9078: 90 03     BCC bra_907D
bra_907A:
C - - - - - 0x00D08A 03:907A: 4C BB 8F  JMP loc_8FBB
bra_907D:
C - - - - - 0x00D08D 03:907D: 8A        TXA
C - - - - - 0x00D08E 03:907E: 29 01     AND #$01
C - - - - - 0x00D090 03:9080: D0 0A     BNE bra_908C
C - - - - - 0x00D092 03:9082: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00D095 03:9085: C9 03     CMP #$03
C - - - - - 0x00D097 03:9087: F0 0B     BEQ bra_9094
C - - - - - 0x00D099 03:9089: 4C BB 8F  JMP loc_8FBB
bra_908C:
C - - - - - 0x00D09C 03:908C: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00D09F 03:908F: F0 03     BEQ bra_9094
C - - - - - 0x00D0A1 03:9091: 4C BB 8F  JMP loc_8FBB
bra_9094:
C - - - - - 0x00D0A4 03:9094: 8A        TXA
C - - - - - 0x00D0A5 03:9095: 29 01     AND #$01
C - - - - - 0x00D0A7 03:9097: A8        TAY
C - - - - - 0x00D0A8 03:9098: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00D0AB 03:909B: 29 0C     AND #$0C
C - - - - - 0x00D0AD 03:909D: C9 08     CMP #$08
C - - - - - 0x00D0AF 03:909F: D0 03     BNE bra_90A4
- - - - - - 0x00D0B1 03:90A1: 4C BB 8F  JMP loc_8FBB
bra_90A4:
C - - - - - 0x00D0B4 03:90A4: A9 09     LDA #$09
C - - - - - 0x00D0B6 03:90A6: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D0B9 03:90A9: A9 FF     LDA #$FF
C - - - - - 0x00D0BB 03:90AB: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D0BE 03:90AE: 60        RTS



tbl_90AF:
- D 0 - - - 0x00D0BF 03:90AF: 70        .byte $70   ; 
tbl_90B0:
- D 0 - - - 0x00D0C0 03:90B0: 03        .byte $03   ; 
tbl_90B1:
- D 0 - - - 0x00D0C1 03:90B1: C0        .byte $C0   ; 
tbl_90B2:
- D 0 - - - 0x00D0C2 03:90B2: 00        .byte $00   ; 
- D 0 - - - 0x00D0C3 03:90B3: A0        .byte $A0   ; 
- D 0 - - - 0x00D0C4 03:90B4: 00        .byte $00   ; 
- D 0 - - - 0x00D0C5 03:90B5: C0        .byte $C0   ; 
- D 0 - - - 0x00D0C6 03:90B6: 00        .byte $00   ; 



ofs_014_90B7_15:
ofs_014_90B7_18:
ofs_014_90B7_1C:
C - - J - - 0x00D0C7 03:90B7: A9 0C     LDA #$0C
C - - - - - 0x00D0C9 03:90B9: 85 1F     STA ram_001F
C - - - - - 0x00D0CB 03:90BB: 20 1A AE  JSR sub_AE1A
C - - - - - 0x00D0CE 03:90BE: 20 5F 98  JSR sub_985F
C - - - - - 0x00D0D1 03:90C1: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00D0D4 03:90C4: 29 40     AND #$40
C - - - - - 0x00D0D6 03:90C6: F0 03     BEQ bra_90CB_RTS
C - - - - - 0x00D0D8 03:90C8: EE 8A 06  INC ram_068A
bra_90CB_RTS:
C - - - - - 0x00D0DB 03:90CB: 60        RTS



ofs_014_90CC_16:
ofs_014_90CC_19:
ofs_014_90CC_1E:
C - - J - - 0x00D0DC 03:90CC: AD 17 05  LDA ram_подающий_X_lo
C - - - - - 0x00D0DF 03:90CF: 85 32     STA ram_0032
C - - - - - 0x00D0E1 03:90D1: AD 18 05  LDA ram_подающий_X_hi
C - - - - - 0x00D0E4 03:90D4: 85 33     STA ram_0033
C - - - - - 0x00D0E6 03:90D6: AD 19 05  LDA ram_подающий_Y_lo
C - - - - - 0x00D0E9 03:90D9: 85 34     STA ram_0034
C - - - - - 0x00D0EB 03:90DB: AD 1A 05  LDA ram_подающий_Y_hi
C - - - - - 0x00D0EE 03:90DE: 85 35     STA ram_0035
C - - - - - 0x00D0F0 03:90E0: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D0F3 03:90E3: 20 5F 98  JSR sub_985F
C - - - - - 0x00D0F6 03:90E6: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D0F9 03:90E9: C9 FF     CMP #$FF
C - - - - - 0x00D0FB 03:90EB: D0 03     BNE bra_90F0_RTS
C - - - - - 0x00D0FD 03:90ED: EE 8A 06  INC ram_068A
bra_90F0_RTS:
C - - - - - 0x00D100 03:90F0: 60        RTS



ofs_014_90F1_17:
C - - J - - 0x00D101 03:90F1: A9 16     LDA #$16
C - - - - - 0x00D103 03:90F3: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D106 03:90F6: 60        RTS



ofs_014_90F7_1A:
ofs_014_90F7_1F:
C - - J - - 0x00D107 03:90F7: A9 1A     LDA #$1A
C - - - - - 0x00D109 03:90F9: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D10C 03:90FC: 8A        TXA
C - - - - - 0x00D10D 03:90FD: 29 01     AND #$01
C - - - - - 0x00D10F 03:90FF: A8        TAY
C - - - - - 0x00D110 03:9100: 09 10     ORA #$10
C - - - - - 0x00D112 03:9102: 99 7E 06  STA ram_067E,Y
C - - - - - 0x00D115 03:9105: 60        RTS



ofs_014_9106_1B:
C - - J - - 0x00D116 03:9106: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00D119 03:9109: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D11C 03:910C: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00D11F 03:910F: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D122 03:9112: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00D125 03:9115: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D128 03:9118: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00D12B 03:911B: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D12E 03:911E: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D131 03:9121: 20 5F 98  JSR sub_985F
C - - - - - 0x00D134 03:9124: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D137 03:9127: C9 FF     CMP #$FF
C - - - - - 0x00D139 03:9129: D0 03     BNE bra_912E_RTS
C - - - - - 0x00D13B 03:912B: EE 8A 06  INC ram_068A
bra_912E_RTS:
C - - - - - 0x00D13E 03:912E: 60        RTS



ofs_014_912F_1D:
C - - J - - 0x00D13F 03:912F: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00D142 03:9132: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D145 03:9135: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00D148 03:9138: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D14B 03:913B: AD 17 05  LDA ram_подающий_X_lo
C - - - - - 0x00D14E 03:913E: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D151 03:9141: AD 18 05  LDA ram_подающий_X_hi
C - - - - - 0x00D154 03:9144: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D157 03:9147: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D15A 03:914A: 20 5F 98  JSR sub_985F
C - - - - - 0x00D15D 03:914D: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D160 03:9150: C9 FF     CMP #$FF
C - - - - - 0x00D162 03:9152: D0 03     BNE bra_9157_RTS
C - - - - - 0x00D164 03:9154: EE 8A 06  INC ram_068A
bra_9157_RTS:
C - - - - - 0x00D167 03:9157: 60        RTS



ofs_014_9158_20:
ofs_014_9158_22:
C - - J - - 0x00D168 03:9158: BD 5C 06  LDA ram_интеллект_бота,X
C - - - - - 0x00D16B 03:915B: C9 22     CMP #$22
C - - - - - 0x00D16D 03:915D: D0 06     BNE bra_9165
C - - - - - 0x00D16F 03:915F: BD C7 84  LDA tbl_84CD - $06,X
C - - - - - 0x00D172 03:9162: 4C 67 91  JMP loc_9167
bra_9165:
C - - - - - 0x00D175 03:9165: A9 0C     LDA #$0C
loc_9167:
C D 0 - - - 0x00D177 03:9167: 85 1C     STA ram_001C
C - - - - - 0x00D179 03:9169: 8A        TXA
C - - - - - 0x00D17A 03:916A: 48        PHA
C - - - - - 0x00D17B 03:916B: 29 01     AND #$01
C - - - - - 0x00D17D 03:916D: A8        TAY
C - - - - - 0x00D17E 03:916E: B9 D5 89  LDA tbl_89D5,Y
C - - - - - 0x00D181 03:9171: 85 2E     STA ram_002E
C - - - - - 0x00D183 03:9173: B9 D7 89  LDA tbl_89D7,Y
C - - - - - 0x00D186 03:9176: 85 2F     STA ram_002F
C - - - - - 0x00D188 03:9178: B9 D9 89  LDA tbl_89D9,Y
C - - - - - 0x00D18B 03:917B: 85 30     STA ram_0030
C - - - - - 0x00D18D 03:917D: B9 DB 89  LDA tbl_89DB,Y
C - - - - - 0x00D190 03:9180: 85 31     STA ram_0031
C - - - - - 0x00D192 03:9182: A6 1C     LDX ram_001C
C - - - - - 0x00D194 03:9184: 20 35 C0  JSR sub_0x01C045
C - - - - - 0x00D197 03:9187: 4A        LSR
C - - - - - 0x00D198 03:9188: 4A        LSR
C - - - - - 0x00D199 03:9189: 4A        LSR
C - - - - - 0x00D19A 03:918A: 4A        LSR
C - - - - - 0x00D19B 03:918B: A8        TAY
C - - - - - 0x00D19C 03:918C: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00D19F 03:918F: 18        CLC
C - - - - - 0x00D1A0 03:9190: 79 CB 91  ADC tbl_91CB,Y
C - - - - - 0x00D1A3 03:9193: 85 2E     STA ram_002E
C - - - - - 0x00D1A5 03:9195: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00D1A8 03:9198: 79 DB 91  ADC tbl_91DB,Y
C - - - - - 0x00D1AB 03:919B: 85 2F     STA ram_002F
C - - - - - 0x00D1AD 03:919D: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00D1B0 03:91A0: 18        CLC
C - - - - - 0x00D1B1 03:91A1: 79 EB 91  ADC tbl_91EB,Y
C - - - - - 0x00D1B4 03:91A4: 85 30     STA ram_0030
C - - - - - 0x00D1B6 03:91A6: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00D1B9 03:91A9: 79 FB 91  ADC tbl_91FB,Y
C - - - - - 0x00D1BC 03:91AC: 85 31     STA ram_0031
C - - - - - 0x00D1BE 03:91AE: 68        PLA
C - - - - - 0x00D1BF 03:91AF: AA        TAX
C - - - - - 0x00D1C0 03:91B0: A5 2E     LDA ram_002E
C - - - - - 0x00D1C2 03:91B2: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D1C5 03:91B5: A5 2F     LDA ram_002F
C - - - - - 0x00D1C7 03:91B7: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D1CA 03:91BA: A5 30     LDA ram_0030
C - - - - - 0x00D1CC 03:91BC: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D1CF 03:91BF: A5 31     LDA ram_0031
C - - - - - 0x00D1D1 03:91C1: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D1D4 03:91C4: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D1D7 03:91C7: 20 5F 98  JSR sub_985F
C - - - - - 0x00D1DA 03:91CA: 60        RTS



tbl_91CB:
- D 0 - - - 0x00D1DB 03:91CB: 00        .byte $00   ; 
- D 0 - - - 0x00D1DC 03:91CC: 15        .byte $15   ; 
- D 0 - - - 0x00D1DD 03:91CD: 1E        .byte $1E   ; 
- D 0 - - - 0x00D1DE 03:91CE: 27        .byte $27   ; 
- D 0 - - - 0x00D1DF 03:91CF: 30        .byte $30   ; 
- D 0 - - - 0x00D1E0 03:91D0: 27        .byte $27   ; 
- - - - - - 0x00D1E1 03:91D1: 1E        .byte $1E   ; 
- - - - - - 0x00D1E2 03:91D2: 15        .byte $15   ; 
- D 0 - - - 0x00D1E3 03:91D3: 00        .byte $00   ; 
- D 0 - - - 0x00D1E4 03:91D4: EB        .byte $EB   ; 
- D 0 - - - 0x00D1E5 03:91D5: E2        .byte $E2   ; 
- D 0 - - - 0x00D1E6 03:91D6: D9        .byte $D9   ; 
- D 0 - - - 0x00D1E7 03:91D7: D0        .byte $D0   ; 
- D 0 - - - 0x00D1E8 03:91D8: D9        .byte $D9   ; 
- D 0 - - - 0x00D1E9 03:91D9: E2        .byte $E2   ; 
- - - - - - 0x00D1EA 03:91DA: EB        .byte $EB   ; 



tbl_91DB:
- D 0 - - - 0x00D1EB 03:91DB: 00        .byte $00   ; 
- D 0 - - - 0x00D1EC 03:91DC: 00        .byte $00   ; 
- D 0 - - - 0x00D1ED 03:91DD: 00        .byte $00   ; 
- D 0 - - - 0x00D1EE 03:91DE: 00        .byte $00   ; 
- D 0 - - - 0x00D1EF 03:91DF: 00        .byte $00   ; 
- D 0 - - - 0x00D1F0 03:91E0: 00        .byte $00   ; 
- - - - - - 0x00D1F1 03:91E1: 00        .byte $00   ; 
- - - - - - 0x00D1F2 03:91E2: 00        .byte $00   ; 
- D 0 - - - 0x00D1F3 03:91E3: 00        .byte $00   ; 
- D 0 - - - 0x00D1F4 03:91E4: FF        .byte $FF   ; 
- D 0 - - - 0x00D1F5 03:91E5: FF        .byte $FF   ; 
- D 0 - - - 0x00D1F6 03:91E6: FF        .byte $FF   ; 
- D 0 - - - 0x00D1F7 03:91E7: FF        .byte $FF   ; 
- D 0 - - - 0x00D1F8 03:91E8: FF        .byte $FF   ; 
- D 0 - - - 0x00D1F9 03:91E9: FF        .byte $FF   ; 
- - - - - - 0x00D1FA 03:91EA: FF        .byte $FF   ; 



tbl_91EB:
- D 0 - - - 0x00D1FB 03:91EB: E0        .byte $E0   ; 
- D 0 - - - 0x00D1FC 03:91EC: E8        .byte $E8   ; 
- D 0 - - - 0x00D1FD 03:91ED: F0        .byte $F0   ; 
- D 0 - - - 0x00D1FE 03:91EE: F8        .byte $F8   ; 
- D 0 - - - 0x00D1FF 03:91EF: 00        .byte $00   ; 
- D 0 - - - 0x00D200 03:91F0: 08        .byte $08   ; 
- - - - - - 0x00D201 03:91F1: 10        .byte $10   ; 
- - - - - - 0x00D202 03:91F2: 18        .byte $18   ; 
- D 0 - - - 0x00D203 03:91F3: 20        .byte $20   ; 
- D 0 - - - 0x00D204 03:91F4: 18        .byte $18   ; 
- D 0 - - - 0x00D205 03:91F5: 10        .byte $10   ; 
- D 0 - - - 0x00D206 03:91F6: 08        .byte $08   ; 
- D 0 - - - 0x00D207 03:91F7: 00        .byte $00   ; 
- D 0 - - - 0x00D208 03:91F8: F8        .byte $F8   ; 
- D 0 - - - 0x00D209 03:91F9: F0        .byte $F0   ; 
- - - - - - 0x00D20A 03:91FA: E8        .byte $E8   ; 



tbl_91FB:
- D 0 - - - 0x00D20B 03:91FB: FF        .byte $FF   ; 
- D 0 - - - 0x00D20C 03:91FC: FF        .byte $FF   ; 
- D 0 - - - 0x00D20D 03:91FD: FF        .byte $FF   ; 
- D 0 - - - 0x00D20E 03:91FE: FF        .byte $FF   ; 
- D 0 - - - 0x00D20F 03:91FF: 00        .byte $00   ; 
- D 0 - - - 0x00D210 03:9200: 00        .byte $00   ; 
- - - - - - 0x00D211 03:9201: 00        .byte $00   ; 
- - - - - - 0x00D212 03:9202: 00        .byte $00   ; 
- D 0 - - - 0x00D213 03:9203: 00        .byte $00   ; 
- D 0 - - - 0x00D214 03:9204: 00        .byte $00   ; 
- D 0 - - - 0x00D215 03:9205: 00        .byte $00   ; 
- D 0 - - - 0x00D216 03:9206: 00        .byte $00   ; 
- D 0 - - - 0x00D217 03:9207: 00        .byte $00   ; 
- D 0 - - - 0x00D218 03:9208: FF        .byte $FF   ; 
- D 0 - - - 0x00D219 03:9209: FF        .byte $FF   ; 
- - - - - - 0x00D21A 03:920A: FF        .byte $FF   ; 



loc_920B:
ofs_014_920B_23:
C D 0 J - - 0x00D21B 03:920B: 8A        TXA
C - - - - - 0x00D21C 03:920C: 29 01     AND #$01
C - - - - - 0x00D21E 03:920E: 0A        ASL
C - - - - - 0x00D21F 03:920F: 0A        ASL
C - - - - - 0x00D220 03:9210: A8        TAY
C - - - - - 0x00D221 03:9211: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D224 03:9214: 85 2E     STA ram_002E
C - - - - - 0x00D226 03:9216: C8        INY
C - - - - - 0x00D227 03:9217: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D22A 03:921A: 85 2F     STA ram_002F
C - - - - - 0x00D22C 03:921C: C8        INY
C - - - - - 0x00D22D 03:921D: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D230 03:9220: 85 30     STA ram_0030
C - - - - - 0x00D232 03:9222: C8        INY
C - - - - - 0x00D233 03:9223: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00D236 03:9226: 85 31     STA ram_0031
C - - - - - 0x00D238 03:9228: 20 35 C0  JSR sub_0x01C045
C - - - - - 0x00D23B 03:922B: 85 1C     STA ram_001C
C - - - - - 0x00D23D 03:922D: 8A        TXA
C - - - - - 0x00D23E 03:922E: 29 01     AND #$01
C - - - - - 0x00D240 03:9230: F0 09     BEQ bra_923B
C - - - - - 0x00D242 03:9232: A5 1C     LDA ram_001C
C - - - - - 0x00D244 03:9234: 49 FF     EOR #$FF
C - - - - - 0x00D246 03:9236: 18        CLC
C - - - - - 0x00D247 03:9237: 69 01     ADC #$01
C - - - - - 0x00D249 03:9239: 85 1C     STA ram_001C
bra_923B:
C - - - - - 0x00D24B 03:923B: A5 1C     LDA ram_001C
C - - - - - 0x00D24D 03:923D: C9 20     CMP #$20
C - - - - - 0x00D24F 03:923F: 90 07     BCC bra_9248
C - - - - - 0x00D251 03:9241: C9 60     CMP #$60
C - - - - - 0x00D253 03:9243: B0 03     BCS bra_9248
C - - - - - 0x00D255 03:9245: 4C 4B 92  JMP loc_924B
bra_9248:
C - - - - - 0x00D258 03:9248: 4C BB 8F  JMP loc_8FBB
loc_924B:
C D 0 - - - 0x00D25B 03:924B: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00D25E 03:924E: 29 C0     AND #$C0
C - - - - - 0x00D260 03:9250: 4A        LSR
C - - - - - 0x00D261 03:9251: 4A        LSR
C - - - - - 0x00D262 03:9252: 4A        LSR
C - - - - - 0x00D263 03:9253: 4A        LSR
C - - - - - 0x00D264 03:9254: 4A        LSR
C - - - - - 0x00D265 03:9255: A8        TAY
C - - - - - 0x00D266 03:9256: B9 63 92  LDA tbl_9263,Y
C - - - - - 0x00D269 03:9259: 85 2C     STA ram_002C
C - - - - - 0x00D26B 03:925B: B9 64 92  LDA tbl_9263 + $01,Y
C - - - - - 0x00D26E 03:925E: 85 2D     STA ram_002D
C - - - - - 0x00D270 03:9260: 6C 2C 00  JMP (ram_002C)

tbl_9263:
- D 0 - - - 0x00D273 03:9263: 6B 92     .word ofs_016_926B_00
- D 0 - - - 0x00D275 03:9265: 6B 92     .word ofs_016_926B_01
- D 0 - - - 0x00D277 03:9267: AD 92     .word ofs_016_92AD_02
- D 0 - - - 0x00D279 03:9269: AD 92     .word ofs_016_92AD_03



ofs_016_926B_00:
ofs_016_926B_01:
C - - J - - 0x00D27B 03:926B: BD F1 04  LDA ram_номер_скилла,X
C - - - - - 0x00D27E 03:926E: 29 04     AND #$04
C - - - - - 0x00D280 03:9270: F0 0C     BEQ bra_927E
C - - - - - 0x00D282 03:9272: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00D285 03:9275: 29 7F     AND #$7F
C - - - - - 0x00D287 03:9277: C9 21     CMP #$21
C - - - - - 0x00D289 03:9279: D0 03     BNE bra_927E
C - - - - - 0x00D28B 03:927B: 4C AD 92  JMP loc_92AD
bra_927E:
C - - - - - 0x00D28E 03:927E: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00D291 03:9281: 10 0C     BPL bra_928F
C - - - - - 0x00D293 03:9283: BD 86 03  LDA ram_игрок_Z_lo,X
C - - - - - 0x00D296 03:9286: C9 12     CMP #$12
C - - - - - 0x00D298 03:9288: 90 22     BCC bra_92AC_RTS
C - - - - - 0x00D29A 03:928A: A9 37     LDA #$37
C - - - - - 0x00D29C 03:928C: 4C 9A 92  JMP loc_929A
bra_928F:
C - - - - - 0x00D29F 03:928F: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00D2A2 03:9292: 29 0F     AND #$0F
C - - - - - 0x00D2A4 03:9294: C9 0E     CMP #$0E
C - - - - - 0x00D2A6 03:9296: B0 15     BCS bra_92AD
C - - - - - 0x00D2A8 03:9298: A9 09     LDA #$09
loc_929A:
C D 0 - - - 0x00D2AA 03:929A: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D2AD 03:929D: A9 FF     LDA #$FF
C - - - - - 0x00D2AF 03:929F: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D2B2 03:92A2: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00D2B5 03:92A5: C9 40     CMP #$40
C - - - - - 0x00D2B7 03:92A7: B0 03     BCS bra_92AC_RTS
C - - - - - 0x00D2B9 03:92A9: 4C BB 8F  JMP loc_8FBB
bra_92AC_RTS:
C - - - - - 0x00D2BC 03:92AC: 60        RTS



bra_92AD:
loc_92AD:
ofs_016_92AD_02:
ofs_016_92AD_03:
C D 0 - - - 0x00D2BD 03:92AD: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00D2C0 03:92B0: 10 28     BPL bra_92DA
C - - - - - 0x00D2C2 03:92B2: AD 46 00  LDA a: ram_рандом + $01
C - - - - - 0x00D2C5 03:92B5: 30 09     BMI bra_92C0
C - - - - - 0x00D2C7 03:92B7: C9 40     CMP #$40
C - - - - - 0x00D2C9 03:92B9: 90 0A     BCC bra_92C5
C - - - - - 0x00D2CB 03:92BB: A9 38     LDA #$38
C - - - - - 0x00D2CD 03:92BD: 4C C7 92  JMP loc_92C7
bra_92C0:
C - - - - - 0x00D2D0 03:92C0: A9 37     LDA #$37
C - - - - - 0x00D2D2 03:92C2: 4C C7 92  JMP loc_92C7
bra_92C5:
C - - - - - 0x00D2D5 03:92C5: A9 46     LDA #$46
loc_92C7:
C D 0 - - - 0x00D2D7 03:92C7: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D2DA 03:92CA: A9 FF     LDA #$FF
C - - - - - 0x00D2DC 03:92CC: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D2DF 03:92CF: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00D2E2 03:92D2: C9 40     CMP #$40
C - - - - - 0x00D2E4 03:92D4: B0 03     BCS bra_92D9_RTS
C - - - - - 0x00D2E6 03:92D6: 4C BB 8F  JMP loc_8FBB
bra_92D9_RTS:
C - - - - - 0x00D2E9 03:92D9: 60        RTS
bra_92DA:
C - - - - - 0x00D2EA 03:92DA: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00D2ED 03:92DD: 29 10     AND #$10
C - - - - - 0x00D2EF 03:92DF: F0 05     BEQ bra_92E6
C - - - - - 0x00D2F1 03:92E1: A9 10     LDA #$10
C - - - - - 0x00D2F3 03:92E3: 4C E8 92  JMP loc_92E8
bra_92E6:
C - - - - - 0x00D2F6 03:92E6: A9 30     LDA #$30
loc_92E8:
C D 0 - - - 0x00D2F8 03:92E8: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D2FB 03:92EB: 60        RTS
loc_92EC:
ofs_014_92EC_24:
C D 0 J - - 0x00D2FC 03:92EC: A0 0C     LDY #$0C
C - - - - - 0x00D2FE 03:92EE: B9 99 03  LDA ram_игрок_Z_hi,Y
C - - - - - 0x00D301 03:92F1: 30 0A     BMI bra_92FD
C - - - - - 0x00D303 03:92F3: 19 86 03  ORA ram_игрок_Z_lo,Y
C - - - - - 0x00D306 03:92F6: C9 18     CMP #$18
C - - - - - 0x00D308 03:92F8: 90 03     BCC bra_92FD
C - - - - - 0x00D30A 03:92FA: 4C 0F 93  JMP loc_930F
bra_92FD:
C - - - - - 0x00D30D 03:92FD: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D310 03:9300: 4A        LSR
C - - - - - 0x00D311 03:9301: 4A        LSR
C - - - - - 0x00D312 03:9302: 4A        LSR
C - - - - - 0x00D313 03:9303: 85 1C     STA ram_001C
C - - - - - 0x00D315 03:9305: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D318 03:9308: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D31B 03:930B: 20 5F 98  JSR sub_985F
C - - - - - 0x00D31E 03:930E: 60        RTS
loc_930F:
C D 0 - - - 0x00D31F 03:930F: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00D322 03:9312: 85 1C     STA ram_001C
C - - - - - 0x00D324 03:9314: B9 6E 93  LDA tbl_936E,Y
C - - - - - 0x00D327 03:9317: CD 24 05  CMP ram_0524
C - - - - - 0x00D32A 03:931A: B0 1B     BCS bra_9337
bra_931C:
C - - - - - 0x00D32C 03:931C: AD 24 05  LDA ram_0524
C - - - - - 0x00D32F 03:931F: 38        SEC
C - - - - - 0x00D330 03:9320: E5 1C     SBC ram_001C
C - - - - - 0x00D332 03:9322: 10 02     BPL bra_9326
C - - - - - 0x00D334 03:9324: A9 00     LDA #$00
bra_9326:
C - - - - - 0x00D336 03:9326: 85 1C     STA ram_001C
C - - - - - 0x00D338 03:9328: A0 0C     LDY #$0C
C - - - - - 0x00D33A 03:932A: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D33D 03:932D: 20 75 9B  JSR sub_9B75
C - - - - - 0x00D340 03:9330: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D343 03:9333: 20 5F 98  JSR sub_985F
C - - - - - 0x00D346 03:9336: 60        RTS
bra_9337:
C - - - - - 0x00D347 03:9337: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00D34A 03:933A: 10 E0     BPL bra_931C
C - - - - - 0x00D34C 03:933C: A0 0C     LDY #$0C
C - - - - - 0x00D34E 03:933E: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D351 03:9341: C9 30     CMP #$30
C - - - - - 0x00D353 03:9343: B0 D7     BCS bra_931C
C - - - - - 0x00D355 03:9345: A9 0C     LDA #$0C
C - - - - - 0x00D357 03:9347: 85 1F     STA ram_001F
C - - - - - 0x00D359 03:9349: 20 1A AE  JSR sub_AE1A
C - - - - - 0x00D35C 03:934C: 20 75 B1  JSR sub_B175
C - - - - - 0x00D35F 03:934F: B9 72 93  LDA tbl_9372,Y
C - - - - - 0x00D362 03:9352: 85 1F     STA ram_001F
C - - - - - 0x00D364 03:9354: 85 1E     STA ram_001E
C - - - - - 0x00D366 03:9356: 20 75 B1  JSR sub_B175
C - - - - - 0x00D369 03:9359: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D36C 03:935C: C9 FF     CMP #$FF
C - - - - - 0x00D36E 03:935E: F0 08     BEQ bra_9368
- - - - - - 0x00D370 03:9360: DD 96 04  CMP ram_obj_current_angle,X
- - - - - - 0x00D373 03:9363: F0 03     BEQ bra_9368
- - - - - - 0x00D375 03:9365: 4C 57 9B  JMP loc_9B57
bra_9368:
C - - - - - 0x00D378 03:9368: A9 30     LDA #$30
C - - - - - 0x00D37A 03:936A: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D37D 03:936D: 60        RTS



tbl_936E:
- D 0 - - - 0x00D37E 03:936E: 09        .byte $09   ; 
- D 0 - - - 0x00D37F 03:936F: 09        .byte $09   ; 
- D 0 - - - 0x00D380 03:9370: 0A        .byte $0A   ; 
- D 0 - - - 0x00D381 03:9371: 0B        .byte $0B   ; 



tbl_9372:
- - - - - - 0x00D382 03:9372: 10        .byte $10   ; 
- - - - - - 0x00D383 03:9373: 0C        .byte $0C   ; 
- - - - - - 0x00D384 03:9374: 08        .byte $08   ; 
- - - - - - 0x00D385 03:9375: 08        .byte $08   ; 



loc_9376:
ofs_014_9376_25:
C D 0 J - - 0x00D386 03:9376: A0 0C     LDY #$0C
C - - - - - 0x00D388 03:9378: B9 99 03  LDA ram_игрок_Z_hi,Y
C - - - - - 0x00D38B 03:937B: 30 0A     BMI bra_9387
C - - - - - 0x00D38D 03:937D: B9 86 03  LDA ram_игрок_Z_lo,Y
C - - - - - 0x00D390 03:9380: C9 18     CMP #$18
C - - - - - 0x00D392 03:9382: 90 03     BCC bra_9387
C - - - - - 0x00D394 03:9384: 4C F4 93  JMP loc_93F4
bra_9387:
C - - - - - 0x00D397 03:9387: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D39A 03:938A: 4A        LSR
C - - - - - 0x00D39B 03:938B: 4A        LSR
C - - - - - 0x00D39C 03:938C: 4A        LSR
C - - - - - 0x00D39D 03:938D: 85 1C     STA ram_001C
C - - - - - 0x00D39F 03:938F: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D3A2 03:9392: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D3A5 03:9395: A5 2B     LDA ram_002B
C - - - - - 0x00D3A7 03:9397: C9 08     CMP #$08
C - - - - - 0x00D3A9 03:9399: B0 55     BCS bra_93F0
C - - - - - 0x00D3AB 03:939B: 8A        TXA
C - - - - - 0x00D3AC 03:939C: 29 01     AND #$01
C - - - - - 0x00D3AE 03:939E: D0 1D     BNE bra_93BD
C - - - - - 0x00D3B0 03:93A0: A5 1C     LDA ram_001C
C - - - - - 0x00D3B2 03:93A2: 30 4C     BMI bra_93F0
C - - - - - 0x00D3B4 03:93A4: C9 20     CMP #$20
C - - - - - 0x00D3B6 03:93A6: 90 48     BCC bra_93F0
C - - - - - 0x00D3B8 03:93A8: C9 38     CMP #$38
C - - - - - 0x00D3BA 03:93AA: B0 44     BCS bra_93F0
C - - - - - 0x00D3BC 03:93AC: BD 74 00  LDA a: ram_номер_анимации,X
C - - - - - 0x00D3BF 03:93AF: 30 3F     BMI bra_93F0
C - - - - - 0x00D3C1 03:93B1: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00D3C4 03:93B4: C9 90     CMP #$90
C - - - - - 0x00D3C6 03:93B6: 90 38     BCC bra_93F0
C - - - - - 0x00D3C8 03:93B8: A9 40     LDA #$40
C - - - - - 0x00D3CA 03:93BA: 4C D7 93  JMP loc_93D7
bra_93BD:
C - - - - - 0x00D3CD 03:93BD: A5 1C     LDA ram_001C
C - - - - - 0x00D3CF 03:93BF: 10 2F     BPL bra_93F0
C - - - - - 0x00D3D1 03:93C1: C9 E0     CMP #$E0
C - - - - - 0x00D3D3 03:93C3: B0 2B     BCS bra_93F0
C - - - - - 0x00D3D5 03:93C5: C9 C8     CMP #$C8
C - - - - - 0x00D3D7 03:93C7: 90 27     BCC bra_93F0
C - - - - - 0x00D3D9 03:93C9: BD 74 00  LDA a: ram_номер_анимации,X
C - - - - - 0x00D3DC 03:93CC: 10 22     BPL bra_93F0
C - - - - - 0x00D3DE 03:93CE: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00D3E1 03:93D1: C9 90     CMP #$90
C - - - - - 0x00D3E3 03:93D3: 90 1B     BCC bra_93F0
C - - - - - 0x00D3E5 03:93D5: A9 C0     LDA #$C0
loc_93D7:
C D 0 - - - 0x00D3E7 03:93D7: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D3EA 03:93DA: A9 31     LDA #$31
C - - - - - 0x00D3EC 03:93DC: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D3EF 03:93DF: 8A        TXA
C - - - - - 0x00D3F0 03:93E0: 29 01     AND #$01
C - - - - - 0x00D3F2 03:93E2: A8        TAY
C - - - - - 0x00D3F3 03:93E3: B9 78 06  LDA ram_приказ_боту,Y
C - - - - - 0x00D3F6 03:93E6: C9 02     CMP #$02
C - - - - - 0x00D3F8 03:93E8: D0 05     BNE bra_93EF_RTS
- - - - - - 0x00D3FA 03:93EA: A9 FF     LDA #$FF
- - - - - - 0x00D3FC 03:93EC: 99 78 06  STA ram_приказ_боту,Y
bra_93EF_RTS:
C - - - - - 0x00D3FF 03:93EF: 60        RTS
bra_93F0:
C - - - - - 0x00D400 03:93F0: 20 5F 98  JSR sub_985F
C - - - - - 0x00D403 03:93F3: 60        RTS



loc_93F4:
C D 0 - - - 0x00D404 03:93F4: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00D407 03:93F7: 85 1C     STA ram_001C
C - - - - - 0x00D409 03:93F9: B9 8F 94  LDA tbl_948F,Y
C - - - - - 0x00D40C 03:93FC: CD 24 05  CMP ram_0524
C - - - - - 0x00D40F 03:93FF: B0 1B     BCS bra_941C
bra_9401:
C - - - - - 0x00D411 03:9401: AD 24 05  LDA ram_0524
C - - - - - 0x00D414 03:9404: 38        SEC
C - - - - - 0x00D415 03:9405: E5 1C     SBC ram_001C
C - - - - - 0x00D417 03:9407: 10 02     BPL bra_940B
C - - - - - 0x00D419 03:9409: A9 00     LDA #$00
bra_940B:
C - - - - - 0x00D41B 03:940B: 85 1C     STA ram_001C
C - - - - - 0x00D41D 03:940D: A0 0C     LDY #$0C
C - - - - - 0x00D41F 03:940F: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D422 03:9412: 20 75 9B  JSR sub_9B75
C - - - - - 0x00D425 03:9415: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D428 03:9418: 20 5F 98  JSR sub_985F
C - - - - - 0x00D42B 03:941B: 60        RTS
bra_941C:
C - - - - - 0x00D42C 03:941C: A0 0C     LDY #$0C
C - - - - - 0x00D42E 03:941E: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D431 03:9421: C9 40     CMP #$40
C - - - - - 0x00D433 03:9423: B0 DC     BCS bra_9401
C - - - - - 0x00D435 03:9425: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00D438 03:9428: 10 3C     BPL bra_9466
C - - - - - 0x00D43A 03:942A: A0 0C     LDY #$0C
C - - - - - 0x00D43C 03:942C: 20 BF AE  JSR sub_AEBF
C - - - - - 0x00D43F 03:942F: 90 D0     BCC bra_9401
C - - - - - 0x00D441 03:9431: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00D444 03:9434: 10 CB     BPL bra_9401
C - - - - - 0x00D446 03:9436: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00D449 03:9439: C9 A0     CMP #$A0
C - - - - - 0x00D44B 03:943B: B0 09     BCS bra_9446
C - - - - - 0x00D44D 03:943D: C9 50     CMP #$50
C - - - - - 0x00D44F 03:943F: B0 0A     BCS bra_944B
C - - - - - 0x00D451 03:9441: A9 32     LDA #$32
C - - - - - 0x00D453 03:9443: 4C 4D 94  JMP loc_944D
bra_9446:
C - - - - - 0x00D456 03:9446: A9 33     LDA #$33
C - - - - - 0x00D458 03:9448: 4C 4D 94  JMP loc_944D
bra_944B:
C - - - - - 0x00D45B 03:944B: A9 34     LDA #$34
loc_944D:
C D 0 - - - 0x00D45D 03:944D: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D460 03:9450: A9 FF     LDA #$FF
C - - - - - 0x00D462 03:9452: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D465 03:9455: 8A        TXA
C - - - - - 0x00D466 03:9456: 29 01     AND #$01
C - - - - - 0x00D468 03:9458: A8        TAY
C - - - - - 0x00D469 03:9459: B9 78 06  LDA ram_приказ_боту,Y
C - - - - - 0x00D46C 03:945C: C9 02     CMP #$02
C - - - - - 0x00D46E 03:945E: D0 05     BNE bra_9465_RTS
- - - - - - 0x00D470 03:9460: A9 FF     LDA #$FF
- - - - - - 0x00D472 03:9462: 99 78 06  STA ram_приказ_боту,Y
bra_9465_RTS:
C - - - - - 0x00D475 03:9465: 60        RTS
bra_9466:
C - - - - - 0x00D476 03:9466: A9 0C     LDA #$0C
C - - - - - 0x00D478 03:9468: 85 1F     STA ram_001F
C - - - - - 0x00D47A 03:946A: 20 1A AE  JSR sub_AE1A
C - - - - - 0x00D47D 03:946D: 20 75 B1  JSR sub_B175
C - - - - - 0x00D480 03:9470: B9 72 93  LDA tbl_9372,Y
C - - - - - 0x00D483 03:9473: 85 1F     STA ram_001F
C - - - - - 0x00D485 03:9475: 85 1E     STA ram_001E
C - - - - - 0x00D487 03:9477: 20 75 B1  JSR sub_B175
C - - - - - 0x00D48A 03:947A: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D48D 03:947D: C9 FF     CMP #$FF
C - - - - - 0x00D48F 03:947F: F0 08     BEQ bra_9489
- - - - - - 0x00D491 03:9481: DD 96 04  CMP ram_obj_current_angle,X
- - - - - - 0x00D494 03:9484: F0 03     BEQ bra_9489
- - - - - - 0x00D496 03:9486: 4C 57 9B  JMP loc_9B57
bra_9489:
C - - - - - 0x00D499 03:9489: A9 30     LDA #$30
C - - - - - 0x00D49B 03:948B: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D49E 03:948E: 60        RTS



tbl_948F:
- D 0 - - - 0x00D49F 03:948F: 0D        .byte $0D   ; 
- D 0 - - - 0x00D4A0 03:9490: 0D        .byte $0D   ; 
- D 0 - - - 0x00D4A1 03:9491: 0E        .byte $0E   ; 
- D 0 - - - 0x00D4A2 03:9492: 0F        .byte $0F   ; 



ofs_014_9493_26:
C - - J - - 0x00D4A3 03:9493: 8A        TXA
C - - - - - 0x00D4A4 03:9494: 29 01     AND #$01
C - - - - - 0x00D4A6 03:9496: A8        TAY
C - - - - - 0x00D4A7 03:9497: B9 A3 94  LDA tbl_94A3,Y
C - - - - - 0x00D4AA 03:949A: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D4AD 03:949D: A9 21     LDA #$21
C - - - - - 0x00D4AF 03:949F: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D4B2 03:94A2: 60        RTS

tbl_94A3:
- D 0 - - - 0x00D4B3 03:94A3: C0        .byte $C0   ; 
- D 0 - - - 0x00D4B4 03:94A4: 40        .byte $40   ; 



ofs_014_94A5_27:
C - - J - - 0x00D4B5 03:94A5: 8A        TXA
C - - - - - 0x00D4B6 03:94A6: 38        SEC
C - - - - - 0x00D4B7 03:94A7: E9 0A     SBC #$0A
C - - - - - 0x00D4B9 03:94A9: 0A        ASL
C - - - - - 0x00D4BA 03:94AA: 0A        ASL
C - - - - - 0x00D4BB 03:94AB: A8        TAY
C - - - - - 0x00D4BC 03:94AC: B9 2B 95  LDA tbl_952B,Y
C - - - - - 0x00D4BF 03:94AF: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D4C2 03:94B2: B9 2C 95  LDA tbl_952C,Y
C - - - - - 0x00D4C5 03:94B5: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D4C8 03:94B8: B9 2D 95  LDA tbl_952D,Y
C - - - - - 0x00D4CB 03:94BB: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D4CE 03:94BE: B9 2E 95  LDA tbl_952E,Y
C - - - - - 0x00D4D1 03:94C1: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D4D4 03:94C4: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D4D7 03:94C7: A9 04     LDA #$04
C - - - - - 0x00D4D9 03:94C9: 85 1E     STA ram_001E
C - - - - - 0x00D4DB 03:94CB: 85 1F     STA ram_001F
C - - - - - 0x00D4DD 03:94CD: 20 75 B1  JSR sub_B175
C - - - - - 0x00D4E0 03:94D0: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D4E3 03:94D3: C9 FF     CMP #$FF
C - - - - - 0x00D4E5 03:94D5: D0 41     BNE bra_9518
C - - - - - 0x00D4E7 03:94D7: 8A        TXA
C - - - - - 0x00D4E8 03:94D8: 29 01     AND #$01
C - - - - - 0x00D4EA 03:94DA: A8        TAY
C - - - - - 0x00D4EB 03:94DB: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x00D4EE 03:94DE: 29 7F     AND #$7F
C - - - - - 0x00D4F0 03:94E0: C9 04     CMP #$04
C - - - - - 0x00D4F2 03:94E2: F0 2E     BEQ bra_9512
C - - - - - 0x00D4F4 03:94E4: C9 05     CMP #$05
C - - - - - 0x00D4F6 03:94E6: F0 2A     BEQ bra_9512
C - - - - - 0x00D4F8 03:94E8: C9 02     CMP #$02
C - - - - - 0x00D4FA 03:94EA: F0 26     BEQ bra_9512
C - - - - - 0x00D4FC 03:94EC: C9 2D     CMP #$2D
C - - - - - 0x00D4FE 03:94EE: F0 22     BEQ bra_9512
C - - - - - 0x00D500 03:94F0: C9 2E     CMP #$2E
C - - - - - 0x00D502 03:94F2: F0 1E     BEQ bra_9512
C - - - - - 0x00D504 03:94F4: C9 3C     CMP #$3C
C - - - - - 0x00D506 03:94F6: F0 1A     BEQ bra_9512
C - - - - - 0x00D508 03:94F8: C9 3D     CMP #$3D
C - - - - - 0x00D50A 03:94FA: F0 16     BEQ bra_9512
C - - - - - 0x00D50C 03:94FC: C9 59     CMP #$59
C - - - - - 0x00D50E 03:94FE: F0 12     BEQ bra_9512
C - - - - - 0x00D510 03:9500: C9 5A     CMP #$5A
C - - - - - 0x00D512 03:9502: F0 0E     BEQ bra_9512
C - - - - - 0x00D514 03:9504: A9 0A     LDA #$0A
C - - - - - 0x00D516 03:9506: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D519 03:9509: 8A        TXA
C - - - - - 0x00D51A 03:950A: 29 01     AND #$01
C - - - - - 0x00D51C 03:950C: 09 10     ORA #$10
C - - - - - 0x00D51E 03:950E: 9D 74 06  STA ram_номер_ближайшего,X
C - - - - - 0x00D521 03:9511: 60        RTS
bra_9512:
C - - - - - 0x00D522 03:9512: A9 01     LDA #$01
C - - - - - 0x00D524 03:9514: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D527 03:9517: 60        RTS
bra_9518:
C - - - - - 0x00D528 03:9518: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00D52B 03:951B: 29 08     AND #$08
C - - - - - 0x00D52D 03:951D: D0 06     BNE bra_9525
C - - - - - 0x00D52F 03:951F: A9 20     LDA #$20
C - - - - - 0x00D531 03:9521: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D534 03:9524: 60        RTS
bra_9525:
C - - - - - 0x00D535 03:9525: A9 0F     LDA #$0F
C - - - - - 0x00D537 03:9527: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D53A 03:952A: 60        RTS



tbl_952B:
- D 0 - - - 0x00D53B 03:952B: C2        .byte $C2   ; 
tbl_952C:
- D 0 - - - 0x00D53C 03:952C: 00        .byte $00   ; 
tbl_952D:
- D 0 - - - 0x00D53D 03:952D: C0        .byte $C0   ; 
tbl_952E:
- D 0 - - - 0x00D53E 03:952E: 00        .byte $00   ; 
- D 0 - - - 0x00D53F 03:952F: 47        .byte $47   ; 
- D 0 - - - 0x00D540 03:9530: 03        .byte $03   ; 
- D 0 - - - 0x00D541 03:9531: C0        .byte $C0   ; 
- D 0 - - - 0x00D542 03:9532: 00        .byte $00   ; 



ofs_014_9533_28:
C - - J - - 0x00D543 03:9533: 8A        TXA
C - - - - - 0x00D544 03:9534: 49 01     EOR #$01
C - - - - - 0x00D546 03:9536: 29 01     AND #$01
C - - - - - 0x00D548 03:9538: A8        TAY
C - - - - - 0x00D549 03:9539: B9 74 06  LDA ram_номер_ближайшего,Y
C - - - - - 0x00D54C 03:953C: A8        TAY
C - - - - - 0x00D54D 03:953D: 84 44     STY ram_0044
C - - - - - 0x00D54F 03:953F: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x00D552 03:9542: 30 03     BMI bra_9547
C - - - - - 0x00D554 03:9544: 4C FE 95  JMP loc_95FE
bra_9547:
C - - - - - 0x00D557 03:9547: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D55A 03:954A: 4A        LSR
C - - - - - 0x00D55B 03:954B: 4A        LSR
C - - - - - 0x00D55C 03:954C: 4A        LSR
C - - - - - 0x00D55D 03:954D: 4A        LSR
C - - - - - 0x00D55E 03:954E: 4A        LSR
C - - - - - 0x00D55F 03:954F: 85 1C     STA ram_001C
C - - - - - 0x00D561 03:9551: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D564 03:9554: 84 1F     STY ram_001F
C - - - - - 0x00D566 03:9556: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D569 03:9559: A5 2B     LDA ram_002B
C - - - - - 0x00D56B 03:955B: C9 08     CMP #$08
C - - - - - 0x00D56D 03:955D: B0 29     BCS bra_9588
C - - - - - 0x00D56F 03:955F: A5 2A     LDA ram_002A
C - - - - - 0x00D571 03:9561: C9 38     CMP #$38
C - - - - - 0x00D573 03:9563: B0 23     BCS bra_9588
C - - - - - 0x00D575 03:9565: C9 28     CMP #$28
C - - - - - 0x00D577 03:9567: 90 1F     BCC bra_9588
C - - - - - 0x00D579 03:9569: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00D57C 03:956C: 30 1A     BMI bra_9588
- - - - - - 0x00D57E 03:956E: A9 00     LDA #$00
- - - - - - 0x00D580 03:9570: 85 1E     STA ram_001E
- - - - - - 0x00D582 03:9572: 85 1F     STA ram_001F
- - - - - - 0x00D584 03:9574: 20 75 B1  JSR sub_B175
- - - - - - 0x00D587 03:9577: BD B0 04  LDA ram_obj_new_angle,X
- - - - - - 0x00D58A 03:957A: 29 80     AND #$80
- - - - - - 0x00D58C 03:957C: 18        CLC
- - - - - - 0x00D58D 03:957D: 69 40     ADC #$40
- - - - - - 0x00D58F 03:957F: 9D B0 04  STA ram_obj_new_angle,X
- - - - - - 0x00D592 03:9582: A9 41     LDA #$41
- - - - - - 0x00D594 03:9584: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00D597 03:9587: 60        RTS
bra_9588:
C - - - - - 0x00D598 03:9588: A5 2B     LDA ram_002B
C - - - - - 0x00D59A 03:958A: C9 08     CMP #$08
C - - - - - 0x00D59C 03:958C: B0 25     BCS bra_95B3
C - - - - - 0x00D59E 03:958E: A5 2A     LDA ram_002A
C - - - - - 0x00D5A0 03:9590: C9 28     CMP #$28
C - - - - - 0x00D5A2 03:9592: B0 1F     BCS bra_95B3
C - - - - - 0x00D5A4 03:9594: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00D5A7 03:9597: 30 1A     BMI bra_95B3
C - - - - - 0x00D5A9 03:9599: A9 00     LDA #$00
C - - - - - 0x00D5AB 03:959B: 85 1E     STA ram_001E
C - - - - - 0x00D5AD 03:959D: 85 1F     STA ram_001F
C - - - - - 0x00D5AF 03:959F: 20 75 B1  JSR sub_B175
C - - - - - 0x00D5B2 03:95A2: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D5B5 03:95A5: 29 80     AND #$80
C - - - - - 0x00D5B7 03:95A7: 18        CLC
C - - - - - 0x00D5B8 03:95A8: 69 40     ADC #$40
C - - - - - 0x00D5BA 03:95AA: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D5BD 03:95AD: A9 54     LDA #$54
C - - - - - 0x00D5BF 03:95AF: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D5C2 03:95B2: 60        RTS
bra_95B3:
C - - - - - 0x00D5C3 03:95B3: A5 2B     LDA ram_002B
C - - - - - 0x00D5C5 03:95B5: C9 50     CMP #$50
C - - - - - 0x00D5C7 03:95B7: B0 25     BCS bra_95DE
C - - - - - 0x00D5C9 03:95B9: A5 2A     LDA ram_002A
C - - - - - 0x00D5CB 03:95BB: C9 18     CMP #$18
C - - - - - 0x00D5CD 03:95BD: B0 1F     BCS bra_95DE
C - - - - - 0x00D5CF 03:95BF: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00D5D2 03:95C2: 30 1A     BMI bra_95DE
C - - - - - 0x00D5D4 03:95C4: A9 00     LDA #$00
C - - - - - 0x00D5D6 03:95C6: 85 1E     STA ram_001E
C - - - - - 0x00D5D8 03:95C8: 85 1F     STA ram_001F
C - - - - - 0x00D5DA 03:95CA: 20 75 B1  JSR sub_B175
C - - - - - 0x00D5DD 03:95CD: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D5E0 03:95D0: 18        CLC
C - - - - - 0x00D5E1 03:95D1: 69 40     ADC #$40
C - - - - - 0x00D5E3 03:95D3: 29 80     AND #$80
C - - - - - 0x00D5E5 03:95D5: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00D5E8 03:95D8: A9 3E     LDA #$3E
C - - - - - 0x00D5EA 03:95DA: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D5ED 03:95DD: 60        RTS
bra_95DE:
C - - - - - 0x00D5EE 03:95DE: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00D5F1 03:95E1: A5 34     LDA ram_0034
C - - - - - 0x00D5F3 03:95E3: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D5F6 03:95E6: A5 35     LDA ram_0035
C - - - - - 0x00D5F8 03:95E8: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D5FB 03:95EB: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00D5FE 03:95EE: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D601 03:95F1: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00D604 03:95F4: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D607 03:95F7: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D60A 03:95FA: 20 5F 98  JSR sub_985F
C - - - - - 0x00D60D 03:95FD: 60        RTS



loc_95FE:
C D 0 - - - 0x00D60E 03:95FE: 4C 29 85  JMP loc_8529
- - - - - - 0x00D611 03:9601: A5 2B     LDA ram_002B
- - - - - - 0x00D613 03:9603: C9 30     CMP #$30
- - - - - - 0x00D615 03:9605: B0 25     BCS bra_962C
- - - - - - 0x00D617 03:9607: A5 2A     LDA ram_002A
- - - - - - 0x00D619 03:9609: C9 12     CMP #$12
- - - - - - 0x00D61B 03:960B: B0 1F     BCS bra_962C
- - - - - - 0x00D61D 03:960D: BD 7C 06  LDA ram_067C,X
- - - - - - 0x00D620 03:9610: 30 1A     BMI bra_962C
- - - - - - 0x00D622 03:9612: A9 00     LDA #$00
- - - - - - 0x00D624 03:9614: 85 1E     STA ram_001E
- - - - - - 0x00D626 03:9616: 85 1F     STA ram_001F
- - - - - - 0x00D628 03:9618: 20 75 B1  JSR sub_B175
- - - - - - 0x00D62B 03:961B: BD B0 04  LDA ram_obj_new_angle,X
- - - - - - 0x00D62E 03:961E: 18        CLC
- - - - - - 0x00D62F 03:961F: 69 40     ADC #$40
- - - - - - 0x00D631 03:9621: 29 80     AND #$80
- - - - - - 0x00D633 03:9623: 9D B0 04  STA ram_obj_new_angle,X
- - - - - - 0x00D636 03:9626: A9 28     LDA #$28
- - - - - - 0x00D638 03:9628: 9D 79 04  STA ram_игрок_номер_действия,X
- - - - - - 0x00D63B 03:962B: 60        RTS
bra_962C:
- - - - - - 0x00D63C 03:962C: 4C 58 88  JMP loc_8858



ofs_014_962F_29:
C - - J - - 0x00D63F 03:962F: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00D642 03:9632: D0 0A     BNE bra_963E
C - - - - - 0x00D644 03:9634: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00D647 03:9637: C9 90     CMP #$90
C - - - - - 0x00D649 03:9639: 90 10     BCC bra_964B
C - - - - - 0x00D64B 03:963B: 4C 58 96  JMP loc_9658
bra_963E:
C - - - - - 0x00D64E 03:963E: A9 00     LDA #$00
C - - - - - 0x00D650 03:9640: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D653 03:9643: A9 FF     LDA #$FF
C - - - - - 0x00D655 03:9645: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D658 03:9648: 4C 64 96  JMP loc_9664
bra_964B:
C - - - - - 0x00D65B 03:964B: A9 00     LDA #$00
C - - - - - 0x00D65D 03:964D: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D660 03:9650: A9 92     LDA #$92
C - - - - - 0x00D662 03:9652: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D665 03:9655: 4C 64 96  JMP loc_9664
loc_9658:
C D 0 - - - 0x00D668 03:9658: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00D66B 03:965B: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D66E 03:965E: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00D671 03:9661: 9D 44 06  STA ram_0644,X
loc_9664:
C D 0 - - - 0x00D674 03:9664: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00D677 03:9667: F0 07     BEQ bra_9670
C - - - - - 0x00D679 03:9669: C9 03     CMP #$03
C - - - - - 0x00D67B 03:966B: F0 10     BEQ bra_967D
C - - - - - 0x00D67D 03:966D: 4C 8A 96  JMP loc_968A
bra_9670:
C - - - - - 0x00D680 03:9670: A9 01     LDA #$01
C - - - - - 0x00D682 03:9672: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D685 03:9675: A9 00     LDA #$00
C - - - - - 0x00D687 03:9677: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D68A 03:967A: 4C 96 96  JMP loc_9696
bra_967D:
C - - - - - 0x00D68D 03:967D: A9 02     LDA #$02
C - - - - - 0x00D68F 03:967F: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D692 03:9682: A9 FF     LDA #$FF
C - - - - - 0x00D694 03:9684: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D697 03:9687: 4C 96 96  JMP loc_9696
loc_968A:
C D 0 - - - 0x00D69A 03:968A: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00D69D 03:968D: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D6A0 03:9690: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00D6A3 03:9693: 9D 2C 06  STA ram_062C,X
loc_9696:
C D 0 - - - 0x00D6A6 03:9696: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D6A9 03:9699: 20 5F 98  JSR sub_985F
C - - - - - 0x00D6AC 03:969C: 60        RTS



ofs_014_969D_2A:
C - - J - - 0x00D6AD 03:969D: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00D6B0 03:96A0: A8        TAY
C - - - - - 0x00D6B1 03:96A1: 29 01     AND #$01
C - - - - - 0x00D6B3 03:96A3: D0 16     BNE bra_96BB
C - - - - - 0x00D6B5 03:96A5: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00D6B8 03:96A8: 49 FF     EOR #$FF
C - - - - - 0x00D6BA 03:96AA: 18        CLC
C - - - - - 0x00D6BB 03:96AB: 69 01     ADC #$01
C - - - - - 0x00D6BD 03:96AD: 85 1C     STA ram_001C
C - - - - - 0x00D6BF 03:96AF: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00D6C2 03:96B2: 49 FF     EOR #$FF
C - - - - - 0x00D6C4 03:96B4: 69 04     ADC #$04
C - - - - - 0x00D6C6 03:96B6: 85 1D     STA ram_001D
C - - - - - 0x00D6C8 03:96B8: 4C C5 96  JMP loc_96C5
bra_96BB:
C - - - - - 0x00D6CB 03:96BB: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00D6CE 03:96BE: 85 1C     STA ram_001C
C - - - - - 0x00D6D0 03:96C0: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00D6D3 03:96C3: 85 1D     STA ram_001D
loc_96C5:
C D 0 - - - 0x00D6D5 03:96C5: A5 1D     LDA ram_001D
C - - - - - 0x00D6D7 03:96C7: F0 0A     BEQ bra_96D3
C - - - - - 0x00D6D9 03:96C9: C9 02     CMP #$02
C - - - - - 0x00D6DB 03:96CB: B0 15     BCS bra_96E2
C - - - - - 0x00D6DD 03:96CD: A5 1C     LDA ram_001C
C - - - - - 0x00D6DF 03:96CF: C9 80     CMP #$80
C - - - - - 0x00D6E1 03:96D1: B0 0F     BCS bra_96E2
bra_96D3:
C - - - - - 0x00D6E3 03:96D3: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00D6E6 03:96D6: D0 0D     BNE bra_96E5
C - - - - - 0x00D6E8 03:96D8: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00D6EB 03:96DB: C9 60     CMP #$60
C - - - - - 0x00D6ED 03:96DD: 90 03     BCC bra_96E2
C - - - - - 0x00D6EF 03:96DF: 4C EC 96  JMP loc_96EC
bra_96E2:
C - - - - - 0x00D6F2 03:96E2: 4C 36 86  JMP loc_8636
bra_96E5:
C - - - - - 0x00D6F5 03:96E5: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00D6F8 03:96E8: C9 20     CMP #$20
C - - - - - 0x00D6FA 03:96EA: B0 F6     BCS bra_96E2
loc_96EC:
C D 0 - - - 0x00D6FC 03:96EC: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D6FF 03:96EF: 85 1C     STA ram_001C
C - - - - - 0x00D701 03:96F1: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00D704 03:96F4: A5 1C     LDA ram_001C
C - - - - - 0x00D706 03:96F6: D9 29 97  CMP tbl_9729,Y
C - - - - - 0x00D709 03:96F9: B0 E7     BCS bra_96E2
C - - - - - 0x00D70B 03:96FB: 8A        TXA
C - - - - - 0x00D70C 03:96FC: 29 01     AND #$01
C - - - - - 0x00D70E 03:96FE: A8        TAY
C - - - - - 0x00D70F 03:96FF: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00D712 03:9702: 29 30     AND #$30
C - - - - - 0x00D714 03:9704: F0 20     BEQ bra_9726
C - - - - - 0x00D716 03:9706: C9 20     CMP #$20
C - - - - - 0x00D718 03:9708: F0 19     BEQ bra_9723
C - - - - - 0x00D71A 03:970A: AD 00 03  LDA ram_frm_cnt
C - - - - - 0x00D71D 03:970D: 29 30     AND #$30
C - - - - - 0x00D71F 03:970F: C9 30     CMP #$30
C - - - - - 0x00D721 03:9711: F0 13     BEQ bra_9726
C - - - - - 0x00D723 03:9713: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00D726 03:9716: C9 02     CMP #$02
C - - - - - 0x00D728 03:9718: B0 0C     BCS bra_9726
C - - - - - 0x00D72A 03:971A: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00D72D 03:971D: 29 0F     AND #$0F
C - - - - - 0x00D72F 03:971F: C9 0E     CMP #$0E
C - - - - - 0x00D731 03:9721: B0 03     BCS bra_9726
bra_9723:
C - - - - - 0x00D733 03:9723: 4C B9 84  JMP loc_84B9
bra_9726:
C - - - - - 0x00D736 03:9726: 4C 29 85  JMP loc_8529



tbl_9729:
- - - - - - 0x00D739 03:9729: 60        .byte $60   ; 
- D 0 - - - 0x00D73A 03:972A: 60        .byte $60   ; 
- D 0 - - - 0x00D73B 03:972B: 70        .byte $70   ; 
- D 0 - - - 0x00D73C 03:972C: 80        .byte $80   ; 



ofs_014_972D_2B:
C - - J - - 0x00D73D 03:972D: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00D740 03:9730: 29 40     AND #$40
C - - - - - 0x00D742 03:9732: D0 12     BNE bra_9746
C - - - - - 0x00D744 03:9734: AD A5 03  LDA ram_мяч_Z_hi
C - - - - - 0x00D747 03:9737: 30 0A     BMI bra_9743
C - - - - - 0x00D749 03:9739: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00D74C 03:973C: C9 18     CMP #$18
C - - - - - 0x00D74E 03:973E: 90 03     BCC bra_9743
C - - - - - 0x00D750 03:9740: 4C 76 93  JMP loc_9376
bra_9743:
C - - - - - 0x00D753 03:9743: 4C F7 85  JMP loc_85F7
bra_9746:
C - - - - - 0x00D756 03:9746: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x00D759 03:9749: 10 24     BPL bra_976F
C - - - - - 0x00D75B 03:974B: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00D75E 03:974E: C9 40     CMP #$40
C - - - - - 0x00D760 03:9750: B0 1C     BCS bra_976E_RTS
C - - - - - 0x00D762 03:9752: 29 03     AND #$03
C - - - - - 0x00D764 03:9754: F0 09     BEQ bra_975F
- - - - - - 0x00D766 03:9756: C9 02     CMP #$02
- - - - - - 0x00D768 03:9758: B0 0A     BCS bra_9764
- - - - - - 0x00D76A 03:975A: A9 38     LDA #$38
- - - - - - 0x00D76C 03:975C: 4C 66 97  JMP loc_9766
bra_975F:
C - - - - - 0x00D76F 03:975F: A9 46     LDA #$46
C - - - - - 0x00D771 03:9761: 4C 66 97  JMP loc_9766
bra_9764:
- - - - - - 0x00D774 03:9764: A9 37     LDA #$37
loc_9766:
C D 0 - - - 0x00D776 03:9766: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D779 03:9769: A9 FF     LDA #$FF
C - - - - - 0x00D77B 03:976B: 9D B0 04  STA ram_obj_new_angle,X
bra_976E_RTS:
C - - - - - 0x00D77E 03:976E: 60        RTS
bra_976F:
C - - - - - 0x00D77F 03:976F: AD 8E 06  LDA ram_068E
C - - - - - 0x00D782 03:9772: D0 05     BNE bra_9779
C - - - - - 0x00D784 03:9774: A9 01     LDA #$01
C - - - - - 0x00D786 03:9776: 8D 8E 06  STA ram_068E
bra_9779:
C - - - - - 0x00D789 03:9779: AD 8F 06  LDA ram_068F
C - - - - - 0x00D78C 03:977C: 29 F0     AND #$F0
C - - - - - 0x00D78E 03:977E: 4A        LSR
C - - - - - 0x00D78F 03:977F: 4A        LSR
C - - - - - 0x00D790 03:9780: 85 1C     STA ram_001C
C - - - - - 0x00D792 03:9782: A9 08     LDA #$08
C - - - - - 0x00D794 03:9784: 18        CLC
C - - - - - 0x00D795 03:9785: 65 1C     ADC ram_001C
C - - - - - 0x00D797 03:9787: 9D 20 06  STA ram_0620,X
C - - - - - 0x00D79A 03:978A: A9 03     LDA #$03
C - - - - - 0x00D79C 03:978C: 69 00     ADC #$00
C - - - - - 0x00D79E 03:978E: 9D 2C 06  STA ram_062C,X
C - - - - - 0x00D7A1 03:9791: AD 8F 06  LDA ram_068F
C - - - - - 0x00D7A4 03:9794: 29 0F     AND #$0F
C - - - - - 0x00D7A6 03:9796: 0A        ASL
C - - - - - 0x00D7A7 03:9797: 0A        ASL
C - - - - - 0x00D7A8 03:9798: 0A        ASL
C - - - - - 0x00D7A9 03:9799: 85 1C     STA ram_001C
C - - - - - 0x00D7AB 03:979B: A9 84     LDA #$84
C - - - - - 0x00D7AD 03:979D: 18        CLC
C - - - - - 0x00D7AE 03:979E: 65 1C     ADC ram_001C
C - - - - - 0x00D7B0 03:97A0: 9D 38 06  STA ram_0638,X
C - - - - - 0x00D7B3 03:97A3: A9 00     LDA #$00
C - - - - - 0x00D7B5 03:97A5: 69 00     ADC #$00
C - - - - - 0x00D7B7 03:97A7: 9D 44 06  STA ram_0644,X
C - - - - - 0x00D7BA 03:97AA: 20 37 AE  JSR sub_AE37
C - - - - - 0x00D7BD 03:97AD: A9 08     LDA #$08
C - - - - - 0x00D7BF 03:97AF: 85 1E     STA ram_001E
C - - - - - 0x00D7C1 03:97B1: A9 05     LDA #$05
C - - - - - 0x00D7C3 03:97B3: 85 1F     STA ram_001F
C - - - - - 0x00D7C5 03:97B5: 20 75 B1  JSR sub_B175
C - - - - - 0x00D7C8 03:97B8: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D7CB 03:97BB: C9 FF     CMP #$FF
C - - - - - 0x00D7CD 03:97BD: D0 03     BNE bra_97C2
C - - - - - 0x00D7CF 03:97BF: 4C DF 97  JMP loc_97DF
bra_97C2:
C - - - - - 0x00D7D2 03:97C2: 29 70     AND #$70
C - - - - - 0x00D7D4 03:97C4: F0 0A     BEQ bra_97D0
C - - - - - 0x00D7D6 03:97C6: A9 21     LDA #$21
C - - - - - 0x00D7D8 03:97C8: 4C DB 97  JMP loc_97DB
bra_97CB:
- - - - - - 0x00D7DB 03:97CB: A9 0F     LDA #$0F
- - - - - - 0x00D7DD 03:97CD: 4C DB 97  JMP loc_97DB
bra_97D0:
C - - - - - 0x00D7E0 03:97D0: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00D7E3 03:97D3: 29 7F     AND #$7F
C - - - - - 0x00D7E5 03:97D5: C9 21     CMP #$21
C - - - - - 0x00D7E7 03:97D7: D0 F2     BNE bra_97CB
C - - - - - 0x00D7E9 03:97D9: A9 20     LDA #$20
loc_97DB:
C D 0 - - - 0x00D7EB 03:97DB: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D7EE 03:97DE: 60        RTS
loc_97DF:
C D 0 - - - 0x00D7EF 03:97DF: AD 8E 06  LDA ram_068E
C - - - - - 0x00D7F2 03:97E2: C9 01     CMP #$01
C - - - - - 0x00D7F4 03:97E4: D0 05     BNE bra_97EB
C - - - - - 0x00D7F6 03:97E6: A9 02     LDA #$02
C - - - - - 0x00D7F8 03:97E8: 8D 8E 06  STA ram_068E
bra_97EB:
C - - - - - 0x00D7FB 03:97EB: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00D7FE 03:97EE: 29 03     AND #$03
C - - - - - 0x00D800 03:97F0: F0 0B     BEQ bra_97FD
C - - - - - 0x00D802 03:97F2: C9 01     CMP #$01
C - - - - - 0x00D804 03:97F4: F0 0C     BEQ bra_9802
C - - - - - 0x00D806 03:97F6: C9 02     CMP #$02
C - - - - - 0x00D808 03:97F8: F0 0D     BEQ bra_9807
C - - - - - 0x00D80A 03:97FA: 4C 0C 98  JMP loc_980C
bra_97FD:
C - - - - - 0x00D80D 03:97FD: A9 30     LDA #$30
C - - - - - 0x00D80F 03:97FF: 4C 0E 98  JMP loc_980E
bra_9802:
C - - - - - 0x00D812 03:9802: A9 10     LDA #$10
C - - - - - 0x00D814 03:9804: 4C 0E 98  JMP loc_980E
bra_9807:
- - - - - - 0x00D817 03:9807: A9 0E     LDA #$0E
- - - - - - 0x00D819 03:9809: 4C 0E 98  JMP loc_980E
loc_980C:
C D 0 - - - 0x00D81C 03:980C: A9 09     LDA #$09
loc_980E:
C D 0 - - - 0x00D81E 03:980E: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D821 03:9811: 60        RTS



loc_9812:
C D 0 - - - 0x00D822 03:9812: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00D825 03:9815: 29 C0     AND #$C0
C - - - - - 0x00D827 03:9817: 4A        LSR
C - - - - - 0x00D828 03:9818: 4A        LSR
C - - - - - 0x00D829 03:9819: 4A        LSR
C - - - - - 0x00D82A 03:981A: 4A        LSR
C - - - - - 0x00D82B 03:981B: 85 1F     STA ram_001F
C - - - - - 0x00D82D 03:981D: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00D830 03:9820: 29 07     AND #$07
C - - - - - 0x00D832 03:9822: 38        SEC
C - - - - - 0x00D833 03:9823: E9 04     SBC #$04
C - - - - - 0x00D835 03:9825: 85 20     STA ram_0020
C - - - - - 0x00D837 03:9827: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00D83A 03:982A: 18        CLC
C - - - - - 0x00D83B 03:982B: 65 20     ADC ram_0020
C - - - - - 0x00D83D 03:982D: 29 0F     AND #$0F
C - - - - - 0x00D83F 03:982F: 4A        LSR
C - - - - - 0x00D840 03:9830: 4A        LSR
C - - - - - 0x00D841 03:9831: 05 1F     ORA ram_001F
C - - - - - 0x00D843 03:9833: 0A        ASL
C - - - - - 0x00D844 03:9834: A8        TAY
C - - - - - 0x00D845 03:9835: B1 1D     LDA (ram_001D),Y
C - - - - - 0x00D847 03:9837: 85 1F     STA ram_001F
C - - - - - 0x00D849 03:9839: C8        INY
C - - - - - 0x00D84A 03:983A: B1 1D     LDA (ram_001D),Y
C - - - - - 0x00D84C 03:983C: 85 20     STA ram_0020
C - - - - - 0x00D84E 03:983E: 6C 1F 00  JMP (ram_001F)

tbl_9841:
- D 0 - - - 0x00D851 03:9841: 47 98     .word off_9847_00
- D 0 - - - 0x00D853 03:9843: 47 98     .word off_9847_01
- D 0 - - - 0x00D855 03:9845: 47 98     .word off_9847_02

; bzk
off_9847_00:
off_9847_01:
off_9847_02:
- D 0 - I - 0x00D857 03:9847: FF        .byte $FF   ; 
- D 0 - I - 0x00D858 03:9848: D0        .byte $D0   ; 
- D 0 - I - 0x00D859 03:9849: 00        .byte $00   ; 
- D 0 - I - 0x00D85A 03:984A: 30        .byte $30   ; 
- D 0 - I - 0x00D85B 03:984B: 00        .byte $00   ; 
- D 0 - I - 0x00D85C 03:984C: 36        .byte $36   ; 
- D 0 - I - 0x00D85D 03:984D: FF        .byte $FF   ; 
- D 0 - I - 0x00D85E 03:984E: BB        .byte $BB   ; 
- D 0 - I - 0x00D85F 03:984F: 00        .byte $00   ; 
- D 0 - I - 0x00D860 03:9850: 51        .byte $51   ; 
- D 0 - I - 0x00D861 03:9851: FF        .byte $FF   ; 
- D 0 - I - 0x00D862 03:9852: BB        .byte $BB   ; 
- D 0 - I - 0x00D863 03:9853: FF        .byte $FF   ; 
- D 0 - I - 0x00D864 03:9854: B8        .byte $B8   ; 
- D 0 - I - 0x00D865 03:9855: FF        .byte $FF   ; 
- D 0 - I - 0x00D866 03:9856: BC        .byte $BC   ; 
- D 0 - I - 0x00D867 03:9857: 00        .byte $00   ; 
- D 0 - I - 0x00D868 03:9858: 57        .byte $57   ; 
- D 0 - I - 0x00D869 03:9859: 00        .byte $00   ; 
- D 0 - I - 0x00D86A 03:985A: 41        .byte $41   ; 
- D 0 - I - 0x00D86B 03:985B: FF        .byte $FF   ; 
- D 0 - I - 0x00D86C 03:985C: B4        .byte $B4   ; 
- D 0 - I - 0x00D86D 03:985D: 00        .byte $00   ; 
- D 0 - I - 0x00D86E 03:985E: 3D        .byte $3D   ; 



sub_985F:
C D 0 - I - 0x00D86F 03:985F: BD 68 06  LDA ram_0668,X
C D 0 - I - 0x00D872 03:9862: 4A        LSR
C D 0 - I - 0x00D873 03:9863: 4A        LSR
C D 0 - I - 0x00D874 03:9864: 4A        LSR
C D 0 - I - 0x00D875 03:9865: 4A        LSR
C D 0 - I - 0x00D876 03:9866: A8        TAY
C - - - - - 0x00D877 03:9867: B9 C2 9B  LDA tbl_9BC2,Y
C - - - - - 0x00D87A 03:986A: 85 1E     STA ram_001E
C - - - - - 0x00D87C 03:986C: 85 1F     STA ram_001F
C - - - - - 0x00D87E 03:986E: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00D881 03:9871: 29 7F     AND #$7F
C - - - - - 0x00D883 03:9873: C9 21     CMP #$21
C - - - - - 0x00D885 03:9875: F0 02     BEQ bra_9879
C - - - - - 0x00D887 03:9877: 46 1F     LSR ram_001F
bra_9879:
C - - - - - 0x00D889 03:9879: 20 75 B1  JSR sub_B175
C - - - - - 0x00D88C 03:987C: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D88F 03:987F: C9 FF     CMP #$FF
C - - - - - 0x00D891 03:9881: D0 13     BNE bra_9896
C - - - - - 0x00D893 03:9883: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00D896 03:9886: 29 7F     AND #$7F
C - - - - - 0x00D898 03:9888: C9 21     CMP #$21
C - - - - - 0x00D89A 03:988A: D0 05     BNE bra_9891
bra_988C:
loc_988C:
C D 0 - - - 0x00D89C 03:988C: A9 0F     LDA #$0F
C - - - - - 0x00D89E 03:988E: 4C CC 98  JMP loc_98CC
bra_9891:
C - - - - - 0x00D8A1 03:9891: A9 01     LDA #$01
C - - - - - 0x00D8A3 03:9893: 4C CC 98  JMP loc_98CC
bra_9896:
C - - - - - 0x00D8A6 03:9896: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00D8A9 03:9899: 29 7F     AND #$7F
C - - - - - 0x00D8AB 03:989B: F0 24     BEQ bra_98C1
C - - - - - 0x00D8AD 03:989D: A5 29     LDA ram_0029
C - - - - - 0x00D8AF 03:989F: 30 20     BMI bra_98C1
C - - - - - 0x00D8B1 03:98A1: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00D8B4 03:98A4: 29 7F     AND #$7F
C - - - - - 0x00D8B6 03:98A6: C9 21     CMP #$21
C - - - - - 0x00D8B8 03:98A8: F0 0E     BEQ bra_98B8
C - - - - - 0x00D8BA 03:98AA: A5 2A     LDA ram_002A
C - - - - - 0x00D8BC 03:98AC: C9 20     CMP #$20
C - - - - - 0x00D8BE 03:98AE: B0 03     BCS bra_98B3
C - - - - - 0x00D8C0 03:98B0: 4C C1 98  JMP loc_98C1
bra_98B3:
C - - - - - 0x00D8C3 03:98B3: A9 21     LDA #$21
C - - - - - 0x00D8C5 03:98B5: 4C CC 98  JMP loc_98CC
bra_98B8:
C - - - - - 0x00D8C8 03:98B8: A5 2A     LDA ram_002A
C - - - - - 0x00D8CA 03:98BA: C9 10     CMP #$10
C - - - - - 0x00D8CC 03:98BC: B0 F5     BCS bra_98B3
C - - - - - 0x00D8CE 03:98BE: 4C 8C 98  JMP loc_988C
bra_98C1:
loc_98C1:
C D 0 - - - 0x00D8D1 03:98C1: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00D8D4 03:98C4: 29 7F     AND #$7F
C - - - - - 0x00D8D6 03:98C6: C9 21     CMP #$21
C - - - - - 0x00D8D8 03:98C8: F0 C2     BEQ bra_988C
C - - - - - 0x00D8DA 03:98CA: A9 20     LDA #$20
loc_98CC:
C D 0 - - - 0x00D8DC 03:98CC: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00D8DF 03:98CF: 60        RTS



sub_98D0:
C - - - - - 0x00D8E0 03:98D0: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00D8E3 03:98D3: 19 E8 03  ORA ram_игрок_spd_X_lo,Y
C - - - - - 0x00D8E6 03:98D6: D0 0D     BNE bra_98E5
C - - - - - 0x00D8E8 03:98D8: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00D8EB 03:98DB: 85 32     STA ram_0032
C - - - - - 0x00D8ED 03:98DD: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00D8F0 03:98E0: 85 33     STA ram_0033
C - - - - - 0x00D8F2 03:98E2: 4C 3B 99  JMP loc_993B
bra_98E5:
C - - - - - 0x00D8F5 03:98E5: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00D8F8 03:98E8: 10 16     BPL bra_9900
C - - - - - 0x00D8FA 03:98EA: B9 E8 03  LDA ram_игрок_spd_X_lo,Y
C - - - - - 0x00D8FD 03:98ED: 49 FF     EOR #$FF
C - - - - - 0x00D8FF 03:98EF: 18        CLC
C - - - - - 0x00D900 03:98F0: 69 01     ADC #$01
C - - - - - 0x00D902 03:98F2: 85 2C     STA ram_002C
C - - - - - 0x00D904 03:98F4: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00D907 03:98F7: 49 FF     EOR #$FF
C - - - - - 0x00D909 03:98F9: 69 00     ADC #$00
C - - - - - 0x00D90B 03:98FB: 85 2D     STA ram_002D
C - - - - - 0x00D90D 03:98FD: 4C 0A 99  JMP loc_990A
bra_9900:
C - - - - - 0x00D910 03:9900: B9 E8 03  LDA ram_игрок_spd_X_lo,Y
C - - - - - 0x00D913 03:9903: 85 2C     STA ram_002C
C - - - - - 0x00D915 03:9905: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00D918 03:9908: 85 2D     STA ram_002D
loc_990A:
C D 0 - - - 0x00D91A 03:990A: A9 00     LDA #$00
C - - - - - 0x00D91C 03:990C: 85 2F     STA ram_002F
C - - - - - 0x00D91E 03:990E: A5 1C     LDA ram_001C
C - - - - - 0x00D920 03:9910: 85 2E     STA ram_002E
C - - - - - 0x00D922 03:9912: 20 29 C0  JSR sub_0x01C039
C - - - - - 0x00D925 03:9915: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00D928 03:9918: 10 12     BPL bra_992C
C - - - - - 0x00D92A 03:991A: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00D92D 03:991D: 38        SEC
C - - - - - 0x00D92E 03:991E: E5 31     SBC ram_0031
C - - - - - 0x00D930 03:9920: 85 32     STA ram_0032
C - - - - - 0x00D932 03:9922: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00D935 03:9925: E9 00     SBC #$00
C - - - - - 0x00D937 03:9927: 85 33     STA ram_0033
C - - - - - 0x00D939 03:9929: 4C 3B 99  JMP loc_993B
bra_992C:
C - - - - - 0x00D93C 03:992C: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00D93F 03:992F: 18        CLC
C - - - - - 0x00D940 03:9930: 65 31     ADC ram_0031
C - - - - - 0x00D942 03:9932: 85 32     STA ram_0032
C - - - - - 0x00D944 03:9934: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00D947 03:9937: 69 00     ADC #$00
C - - - - - 0x00D949 03:9939: 85 33     STA ram_0033
loc_993B:
C D 0 - - - 0x00D94B 03:993B: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00D94E 03:993E: 19 04 04  ORA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00D951 03:9941: D0 0D     BNE bra_9950
C - - - - - 0x00D953 03:9943: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00D956 03:9946: 85 34     STA ram_0034
C - - - - - 0x00D958 03:9948: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00D95B 03:994B: 85 35     STA ram_0035
C - - - - - 0x00D95D 03:994D: 4C B4 99  JMP loc_99B4_RTS
bra_9950:
C - - - - - 0x00D960 03:9950: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00D963 03:9953: 10 16     BPL bra_996B
C - - - - - 0x00D965 03:9955: B9 04 04  LDA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00D968 03:9958: 49 FF     EOR #$FF
C - - - - - 0x00D96A 03:995A: 18        CLC
C - - - - - 0x00D96B 03:995B: 69 01     ADC #$01
C - - - - - 0x00D96D 03:995D: 85 2C     STA ram_002C
C - - - - - 0x00D96F 03:995F: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00D972 03:9962: 49 FF     EOR #$FF
C - - - - - 0x00D974 03:9964: 69 00     ADC #$00
C - - - - - 0x00D976 03:9966: 85 2D     STA ram_002D
C - - - - - 0x00D978 03:9968: 4C 75 99  JMP loc_9975
bra_996B:
C - - - - - 0x00D97B 03:996B: B9 04 04  LDA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00D97E 03:996E: 85 2C     STA ram_002C
C - - - - - 0x00D980 03:9970: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00D983 03:9973: 85 2D     STA ram_002D
loc_9975:
C D 0 - - - 0x00D985 03:9975: A9 00     LDA #$00
C - - - - - 0x00D987 03:9977: 85 2F     STA ram_002F
C - - - - - 0x00D989 03:9979: B9 2E 04  LDA ram_игрок_spd_Z_hi,Y
C - - - - - 0x00D98C 03:997C: 19 20 04  ORA ram_игрок_spd_Z_lo,Y
C - - - - - 0x00D98F 03:997F: D0 06     BNE bra_9987
C - - - - - 0x00D991 03:9981: A5 1C     LDA ram_001C
C - - - - - 0x00D993 03:9983: 4A        LSR
C - - - - - 0x00D994 03:9984: 4C 89 99  JMP loc_9989
bra_9987:
C - - - - - 0x00D997 03:9987: A5 1C     LDA ram_001C
loc_9989:
C D 0 - - - 0x00D999 03:9989: 85 2E     STA ram_002E
C - - - - - 0x00D99B 03:998B: 20 29 C0  JSR sub_0x01C039
C - - - - - 0x00D99E 03:998E: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00D9A1 03:9991: 10 12     BPL bra_99A5
C - - - - - 0x00D9A3 03:9993: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00D9A6 03:9996: 38        SEC
C - - - - - 0x00D9A7 03:9997: E5 31     SBC ram_0031
C - - - - - 0x00D9A9 03:9999: 85 34     STA ram_0034
C - - - - - 0x00D9AB 03:999B: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00D9AE 03:999E: E9 00     SBC #$00
C - - - - - 0x00D9B0 03:99A0: 85 35     STA ram_0035
C - - - - - 0x00D9B2 03:99A2: 4C B4 99  JMP loc_99B4_RTS
bra_99A5:
C - - - - - 0x00D9B5 03:99A5: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00D9B8 03:99A8: 18        CLC
C - - - - - 0x00D9B9 03:99A9: 65 31     ADC ram_0031
C - - - - - 0x00D9BB 03:99AB: 85 34     STA ram_0034
C - - - - - 0x00D9BD 03:99AD: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00D9C0 03:99B0: 69 00     ADC #$00
C - - - - - 0x00D9C2 03:99B2: 85 35     STA ram_0035
loc_99B4_RTS:
C D 0 - - - 0x00D9C4 03:99B4: 60        RTS



sub_99B5:
C - - - - - 0x00D9C5 03:99B5: B9 99 03  LDA ram_игрок_Z_hi,Y
C - - - - - 0x00D9C8 03:99B8: 30 0A     BMI bra_99C4
C - - - - - 0x00D9CA 03:99BA: B9 86 03  LDA ram_игрок_Z_lo,Y
C - - - - - 0x00D9CD 03:99BD: C9 18     CMP #$18
C - - - - - 0x00D9CF 03:99BF: 90 03     BCC bra_99C4
C - - - - - 0x00D9D1 03:99C1: 4C E2 99  JMP loc_99E2
bra_99C4:
C - - - - - 0x00D9D4 03:99C4: B9 2E 04  LDA ram_игрок_spd_Z_hi,Y
C - - - - - 0x00D9D7 03:99C7: 19 20 04  ORA ram_игрок_spd_Z_lo,Y
C - - - - - 0x00D9DA 03:99CA: F0 03     BEQ bra_99CF
C - - - - - 0x00D9DC 03:99CC: 4C E2 99  JMP loc_99E2
bra_99CF:
C - - - - - 0x00D9DF 03:99CF: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00D9E2 03:99D2: 4A        LSR
C - - - - - 0x00D9E3 03:99D3: 4A        LSR
C - - - - - 0x00D9E4 03:99D4: 4A        LSR
C - - - - - 0x00D9E5 03:99D5: 4A        LSR
C - - - - - 0x00D9E6 03:99D6: 85 1C     STA ram_001C
C - - - - - 0x00D9E8 03:99D8: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D9EB 03:99DB: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00D9EE 03:99DE: 20 5F 98  JSR sub_985F
C - - - - - 0x00D9F1 03:99E1: 60        RTS
loc_99E2:
C D 0 - - - 0x00D9F2 03:99E2: AD 24 05  LDA ram_0524
C - - - - - 0x00D9F5 03:99E5: 85 1C     STA ram_001C
C - - - - - 0x00D9F7 03:99E7: 20 D0 98  JSR sub_98D0
C - - - - - 0x00D9FA 03:99EA: 20 75 9B  JSR sub_9B75
C - - - - - 0x00D9FD 03:99ED: 20 4B AE  JSR sub_AE4B
C - - - - - 0x00DA00 03:99F0: 20 5F 98  JSR sub_985F
C - - - - - 0x00DA03 03:99F3: 60        RTS



sub_99F4:
C - - - - - 0x00DA04 03:99F4: 8A        TXA
C - - - - - 0x00DA05 03:99F5: 49 01     EOR #$01
C - - - - - 0x00DA07 03:99F7: 29 01     AND #$01
C - - - - - 0x00DA09 03:99F9: A8        TAY
C - - - - - 0x00DA0A 03:99FA: A9 80     LDA #$80
C - - - - - 0x00DA0C 03:99FC: 85 21     STA ram_0021
C - - - - - 0x00DA0E 03:99FE: 20 34 B0  JSR sub_B034
C - - - - - 0x00DA11 03:9A01: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00DA14 03:9A04: 4A        LSR
C - - - - - 0x00DA15 03:9A05: 4A        LSR
C - - - - - 0x00DA16 03:9A06: 4A        LSR
C - - - - - 0x00DA17 03:9A07: 4A        LSR
C - - - - - 0x00DA18 03:9A08: 4A        LSR
C - - - - - 0x00DA19 03:9A09: 4A        LSR
C - - - - - 0x00DA1A 03:9A0A: F0 07     BEQ bra_9A13
C - - - - - 0x00DA1C 03:9A0C: A8        TAY
C - - - - - 0x00DA1D 03:9A0D: B9 B6 9A  LDA tbl_9AB6,Y
C - - - - - 0x00DA20 03:9A10: 4C 15 9A  JMP loc_9A15
bra_9A13:
C - - - - - 0x00DA23 03:9A13: A9 60     LDA #$60
loc_9A15:
C D 0 - - - 0x00DA25 03:9A15: 85 1C     STA ram_001C
C - - - - - 0x00DA27 03:9A17: 86 43     STX ram_0043
C - - - - - 0x00DA29 03:9A19: A2 00     LDX #$00
C - - - - - 0x00DA2B 03:9A1B: 8E 88 06  STX ram_0688
bra_9A1E:
C - - - - - 0x00DA2E 03:9A1E: B5 2D     LDA ram_002D,X
C - - - - - 0x00DA30 03:9A20: C9 FF     CMP #$FF
C - - - - - 0x00DA32 03:9A22: F0 23     BEQ bra_9A47
C - - - - - 0x00DA34 03:9A24: B5 2E     LDA ram_002E,X
C - - - - - 0x00DA36 03:9A26: C5 1C     CMP ram_001C
C - - - - - 0x00DA38 03:9A28: B0 16     BCS bra_9A40
C - - - - - 0x00DA3A 03:9A2A: B5 2D     LDA ram_002D,X
C - - - - - 0x00DA3C 03:9A2C: 18        CLC
C - - - - - 0x00DA3D 03:9A2D: 69 10     ADC #$10
C - - - - - 0x00DA3F 03:9A2F: 29 E0     AND #$E0
C - - - - - 0x00DA41 03:9A31: 4A        LSR
C - - - - - 0x00DA42 03:9A32: 4A        LSR
C - - - - - 0x00DA43 03:9A33: 4A        LSR
C - - - - - 0x00DA44 03:9A34: 4A        LSR
C - - - - - 0x00DA45 03:9A35: 4A        LSR
C - - - - - 0x00DA46 03:9A36: A8        TAY
C - - - - - 0x00DA47 03:9A37: B9 AE 9A  LDA tbl_9AAE,Y
C - - - - - 0x00DA4A 03:9A3A: 0D 88 06  ORA ram_0688
C - - - - - 0x00DA4D 03:9A3D: 8D 88 06  STA ram_0688
bra_9A40:
C - - - - - 0x00DA50 03:9A40: E8        INX
C - - - - - 0x00DA51 03:9A41: E8        INX
C - - - - - 0x00DA52 03:9A42: E8        INX
C - - - - - 0x00DA53 03:9A43: E0 12     CPX #$12
C - - - - - 0x00DA55 03:9A45: 90 D7     BCC bra_9A1E
bra_9A47:
C - - - - - 0x00DA57 03:9A47: A6 43     LDX ram_0043
C - - - - - 0x00DA59 03:9A49: A9 00     LDA #$00
C - - - - - 0x00DA5B 03:9A4B: 8D 89 06  STA ram_0689
C - - - - - 0x00DA5E 03:9A4E: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00DA61 03:9A51: D0 0A     BNE bra_9A5D
C - - - - - 0x00DA63 03:9A53: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00DA66 03:9A56: C9 40     CMP #$40
C - - - - - 0x00DA68 03:9A58: 90 0D     BCC bra_9A67
C - - - - - 0x00DA6A 03:9A5A: 4C 7A 9A  JMP loc_9A7A
bra_9A5D:
C - - - - - 0x00DA6D 03:9A5D: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00DA70 03:9A60: C9 40     CMP #$40
C - - - - - 0x00DA72 03:9A62: B0 0E     BCS bra_9A72
C - - - - - 0x00DA74 03:9A64: 4C 7A 9A  JMP loc_9A7A
bra_9A67:
C - - - - - 0x00DA77 03:9A67: AD 89 06  LDA ram_0689
C - - - - - 0x00DA7A 03:9A6A: 09 83     ORA #$83
C - - - - - 0x00DA7C 03:9A6C: 8D 89 06  STA ram_0689
C - - - - - 0x00DA7F 03:9A6F: 4C 7A 9A  JMP loc_9A7A
bra_9A72:
C - - - - - 0x00DA82 03:9A72: AD 89 06  LDA ram_0689
C - - - - - 0x00DA85 03:9A75: 09 38     ORA #$38
C - - - - - 0x00DA87 03:9A77: 8D 89 06  STA ram_0689
loc_9A7A:
C D 0 - - - 0x00DA8A 03:9A7A: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00DA8D 03:9A7D: F0 07     BEQ bra_9A86
C - - - - - 0x00DA8F 03:9A7F: C9 03     CMP #$03
C - - - - - 0x00DA91 03:9A81: F0 0D     BEQ bra_9A90
C - - - - - 0x00DA93 03:9A83: 4C AD 9A  JMP loc_9AAD_RTS
bra_9A86:
C - - - - - 0x00DA96 03:9A86: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00DA99 03:9A89: C9 C0     CMP #$C0
C - - - - - 0x00DA9B 03:9A8B: 90 0D     BCC bra_9A9A
C - - - - - 0x00DA9D 03:9A8D: 4C AD 9A  JMP loc_9AAD_RTS
bra_9A90:
C - - - - - 0x00DAA0 03:9A90: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00DAA3 03:9A93: C9 40     CMP #$40
C - - - - - 0x00DAA5 03:9A95: B0 0E     BCS bra_9AA5
C - - - - - 0x00DAA7 03:9A97: 4C AD 9A  JMP loc_9AAD_RTS
bra_9A9A:
C - - - - - 0x00DAAA 03:9A9A: AD 89 06  LDA ram_0689
C - - - - - 0x00DAAD 03:9A9D: 09 E0     ORA #$E0
C - - - - - 0x00DAAF 03:9A9F: 8D 89 06  STA ram_0689
C - - - - - 0x00DAB2 03:9AA2: 4C AD 9A  JMP loc_9AAD_RTS
bra_9AA5:
C - - - - - 0x00DAB5 03:9AA5: AD 89 06  LDA ram_0689
C - - - - - 0x00DAB8 03:9AA8: 09 0E     ORA #$0E
C - - - - - 0x00DABA 03:9AAA: 8D 89 06  STA ram_0689
loc_9AAD_RTS:
C D 0 - - - 0x00DABD 03:9AAD: 60        RTS



tbl_9AAE:
- D 0 - - - 0x00DABE 03:9AAE: 01        .byte $01   ; 
- D 0 - - - 0x00DABF 03:9AAF: 02        .byte $02   ; 
- D 0 - - - 0x00DAC0 03:9AB0: 04        .byte $04   ; 
- D 0 - - - 0x00DAC1 03:9AB1: 08        .byte $08   ; 
- D 0 - - - 0x00DAC2 03:9AB2: 10        .byte $10   ; 
- D 0 - - - 0x00DAC3 03:9AB3: 20        .byte $20   ; 
- D 0 - - - 0x00DAC4 03:9AB4: 40        .byte $40   ; 
- D 0 - - - 0x00DAC5 03:9AB5: 80        .byte $80   ; 



tbl_9AB6:
- - - - - - 0x00DAC6 03:9AB6: 00        .byte $00   ; 
- D 0 - - - 0x00DAC7 03:9AB7: 60        .byte $60   ; 
- D 0 - - - 0x00DAC8 03:9AB8: 50        .byte $50   ; 
- D 0 - - - 0x00DAC9 03:9AB9: 30        .byte $30   ; 



sub_9ABA:
C - - - - - 0x00DACA 03:9ABA: A0 00     LDY #$00
loc_9ABC:
C D 0 - - - 0x00DACC 03:9ABC: B9 2D 00  LDA a: ram_002D,Y
C - - - - - 0x00DACF 03:9ABF: 38        SEC
C - - - - - 0x00DAD0 03:9AC0: FD B0 04  SBC ram_obj_new_angle,X
C - - - - - 0x00DAD3 03:9AC3: 85 1E     STA ram_001E
C - - - - - 0x00DAD5 03:9AC5: 10 05     BPL bra_9ACC
C - - - - - 0x00DAD7 03:9AC7: 49 FF     EOR #$FF
C - - - - - 0x00DAD9 03:9AC9: 18        CLC
C - - - - - 0x00DADA 03:9ACA: 69 01     ADC #$01
bra_9ACC:
C - - - - - 0x00DADC 03:9ACC: C9 21     CMP #$21
C - - - - - 0x00DADE 03:9ACE: 90 06     BCC bra_9AD6
C - - - - - 0x00DAE0 03:9AD0: C8        INY
C - - - - - 0x00DAE1 03:9AD1: C8        INY
C - - - - - 0x00DAE2 03:9AD2: C8        INY
C - - - - - 0x00DAE3 03:9AD3: 4C BC 9A  JMP loc_9ABC
bra_9AD6:
C - - - - - 0x00DAE6 03:9AD6: A5 1E     LDA ram_001E
C - - - - - 0x00DAE8 03:9AD8: 10 05     BPL bra_9ADF
C - - - - - 0x00DAEA 03:9ADA: A9 FF     LDA #$FF
C - - - - - 0x00DAEC 03:9ADC: 4C E1 9A  JMP loc_9AE1
bra_9ADF:
C - - - - - 0x00DAEF 03:9ADF: A9 00     LDA #$00
loc_9AE1:
C D 0 - - - 0x00DAF1 03:9AE1: 85 2A     STA ram_002A
C - - - - - 0x00DAF3 03:9AE3: 60        RTS



sub_9AE4:
C - - - - - 0x00DAF4 03:9AE4: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00DAF7 03:9AE7: 29 03     AND #$03
C - - - - - 0x00DAF9 03:9AE9: D0 08     BNE bra_9AF3
- - - - - - 0x00DAFB 03:9AEB: 8A        TXA
- - - - - - 0x00DAFC 03:9AEC: 29 01     AND #$01
- - - - - - 0x00DAFE 03:9AEE: F0 03     BEQ bra_9AF3
- - - - - - 0x00DB00 03:9AF0: 4C F9 9A  JMP loc_9AF9_RTS
bra_9AF3:
C - - - - - 0x00DB03 03:9AF3: A5 1C     LDA ram_001C
C - - - - - 0x00DB05 03:9AF5: 29 44     AND #$44
C - - - - - 0x00DB07 03:9AF7: D0 01     BNE bra_9AFA
bra_9AF9_RTS:
loc_9AF9_RTS:
C D 0 - - - 0x00DB09 03:9AF9: 60        RTS
bra_9AFA:
C - - - - - 0x00DB0A 03:9AFA: A5 2C     LDA ram_002C
C - - - - - 0x00DB0C 03:9AFC: 30 FB     BMI bra_9AF9_RTS
C - - - - - 0x00DB0E 03:9AFE: A5 2D     LDA ram_002D
C - - - - - 0x00DB10 03:9B00: 18        CLC
C - - - - - 0x00DB11 03:9B01: 69 20     ADC #$20
C - - - - - 0x00DB13 03:9B03: 85 29     STA ram_0029
C - - - - - 0x00DB15 03:9B05: 10 03     BPL bra_9B0A
C - - - - - 0x00DB17 03:9B07: 18        CLC
C - - - - - 0x00DB18 03:9B08: 69 80     ADC #$80
bra_9B0A:
C - - - - - 0x00DB1A 03:9B0A: C9 41     CMP #$41
C - - - - - 0x00DB1C 03:9B0C: B0 EB     BCS bra_9AF9_RTS
C - - - - - 0x00DB1E 03:9B0E: A5 2E     LDA ram_002E
C - - - - - 0x00DB20 03:9B10: C9 30     CMP #$30
C - - - - - 0x00DB22 03:9B12: B0 E5     BCS bra_9AF9_RTS
C - - - - - 0x00DB24 03:9B14: A5 29     LDA ram_0029
C - - - - - 0x00DB26 03:9B16: 10 0C     BPL bra_9B24
C - - - - - 0x00DB28 03:9B18: A5 1C     LDA ram_001C
C - - - - - 0x00DB2A 03:9B1A: 29 40     AND #$40
C - - - - - 0x00DB2C 03:9B1C: D0 03     BNE bra_9B21
C - - - - - 0x00DB2E 03:9B1E: 4C 30 9B  JMP loc_9B30
bra_9B21:
C - - - - - 0x00DB31 03:9B21: 4C 3E 9B  JMP loc_9B3E
bra_9B24:
C - - - - - 0x00DB34 03:9B24: A5 1C     LDA ram_001C
C - - - - - 0x00DB36 03:9B26: 29 40     AND #$40
C - - - - - 0x00DB38 03:9B28: D0 03     BNE bra_9B2D
C - - - - - 0x00DB3A 03:9B2A: 4C 3E 9B  JMP loc_9B3E
bra_9B2D:
C - - - - - 0x00DB3D 03:9B2D: 4C 30 9B  JMP loc_9B30
loc_9B30:
C D 0 - - - 0x00DB40 03:9B30: 46 1C     LSR ram_001C
C - - - - - 0x00DB42 03:9B32: A5 1C     LDA ram_001C
C - - - - - 0x00DB44 03:9B34: 2D 89 06  AND ram_0689
C - - - - - 0x00DB47 03:9B37: F0 02     BEQ bra_9B3B_RTS
C - - - - - 0x00DB49 03:9B39: 06 1C     ASL ram_001C
bra_9B3B_RTS:
loc_9B3B_RTS:
C D 0 - - - 0x00DB4B 03:9B3B: 4C F9 9A  JMP loc_9AF9_RTS
loc_9B3E:
C D 0 - - - 0x00DB4E 03:9B3E: 06 1C     ASL ram_001C
C - - - - - 0x00DB50 03:9B40: A5 1C     LDA ram_001C
C - - - - - 0x00DB52 03:9B42: 2D 89 06  AND ram_0689
C - - - - - 0x00DB55 03:9B45: F0 F4     BEQ bra_9B3B_RTS
C - - - - - 0x00DB57 03:9B47: 46 1C     LSR ram_001C
C - - - - - 0x00DB59 03:9B49: 4C 3B 9B  JMP loc_9B3B_RTS



sub_9B4C:
C - - - - - 0x00DB5C 03:9B4C: BD FD 04  LDA ram_защита_поведение,X
C - - - - - 0x00DB5F 03:9B4F: 4A        LSR
C - - - - - 0x00DB60 03:9B50: 4A        LSR
C - - - - - 0x00DB61 03:9B51: 4A        LSR
C - - - - - 0x00DB62 03:9B52: 4A        LSR
C - - - - - 0x00DB63 03:9B53: 4A        LSR
C - - - - - 0x00DB64 03:9B54: 4A        LSR
C - - - - - 0x00DB65 03:9B55: A8        TAY
C - - - - - 0x00DB66 03:9B56: 60        RTS



loc_9B57:
C D 0 - - - 0x00DB67 03:9B57: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00DB6A 03:9B5A: DD 96 04  CMP ram_obj_current_angle,X
C - - - - - 0x00DB6D 03:9B5D: D0 06     BNE bra_9B65
C - - - - - 0x00DB6F 03:9B5F: A9 30     LDA #$30
C - - - - - 0x00DB71 03:9B61: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00DB74 03:9B64: 60        RTS
bra_9B65:
C - - - - - 0x00DB75 03:9B65: 29 70     AND #$70
C - - - - - 0x00DB77 03:9B67: F0 06     BEQ bra_9B6F
C - - - - - 0x00DB79 03:9B69: A9 21     LDA #$21
C - - - - - 0x00DB7B 03:9B6B: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00DB7E 03:9B6E: 60        RTS
bra_9B6F:
C - - - - - 0x00DB7F 03:9B6F: A9 20     LDA #$20
C - - - - - 0x00DB81 03:9B71: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00DB84 03:9B74: 60        RTS



sub_9B75:
C - - - - - 0x00DB85 03:9B75: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00DB88 03:9B78: 29 03     AND #$03
C - - - - - 0x00DB8A 03:9B7A: D0 45     BNE bra_9BC1_RTS
- - - - - - 0x00DB8C 03:9B7C: AD 57 00  LDA a: ram_опция_режим_сложность
- - - - - - 0x00DB8F 03:9B7F: 10 40     BPL bra_9BC1_RTS
- - - - - - 0x00DB91 03:9B81: 8A        TXA
- - - - - - 0x00DB92 03:9B82: 29 01     AND #$01
- - - - - - 0x00DB94 03:9B84: F0 3B     BEQ bra_9BC1_RTS
- - - - - - 0x00DB96 03:9B86: BD E4 04  LDA ram_игрок_HP,X
- - - - - - 0x00DB99 03:9B89: 29 1F     AND #$1F
- - - - - - 0x00DB9B 03:9B8B: 38        SEC
- - - - - - 0x00DB9C 03:9B8C: E9 10     SBC #$10
- - - - - - 0x00DB9E 03:9B8E: 85 3C     STA ram_003C
- - - - - - 0x00DBA0 03:9B90: A9 00     LDA #$00
- - - - - - 0x00DBA2 03:9B92: E9 00     SBC #$00
- - - - - - 0x00DBA4 03:9B94: 85 3D     STA ram_003D
- - - - - - 0x00DBA6 03:9B96: BD E4 04  LDA ram_игрок_HP,X
- - - - - - 0x00DBA9 03:9B99: 4A        LSR
- - - - - - 0x00DBAA 03:9B9A: 4A        LSR
- - - - - - 0x00DBAB 03:9B9B: 4A        LSR
- - - - - - 0x00DBAC 03:9B9C: 38        SEC
- - - - - - 0x00DBAD 03:9B9D: E9 10     SBC #$10
- - - - - - 0x00DBAF 03:9B9F: 85 3E     STA ram_003E
- - - - - - 0x00DBB1 03:9BA1: A9 00     LDA #$00
- - - - - - 0x00DBB3 03:9BA3: E9 00     SBC #$00
- - - - - - 0x00DBB5 03:9BA5: 85 3F     STA ram_003F
- - - - - - 0x00DBB7 03:9BA7: A5 32     LDA ram_0032
- - - - - - 0x00DBB9 03:9BA9: 18        CLC
- - - - - - 0x00DBBA 03:9BAA: 65 3C     ADC ram_003C
- - - - - - 0x00DBBC 03:9BAC: 85 32     STA ram_0032
- - - - - - 0x00DBBE 03:9BAE: A5 33     LDA ram_0033
- - - - - - 0x00DBC0 03:9BB0: 65 3D     ADC ram_003D
- - - - - - 0x00DBC2 03:9BB2: 85 33     STA ram_0033
- - - - - - 0x00DBC4 03:9BB4: A5 34     LDA ram_0034
- - - - - - 0x00DBC6 03:9BB6: 18        CLC
- - - - - - 0x00DBC7 03:9BB7: 65 3E     ADC ram_003E
- - - - - - 0x00DBC9 03:9BB9: 85 34     STA ram_0034
- - - - - - 0x00DBCB 03:9BBB: A5 35     LDA ram_0035
- - - - - - 0x00DBCD 03:9BBD: 65 3F     ADC ram_003F
- - - - - - 0x00DBCF 03:9BBF: 85 35     STA ram_0035
bra_9BC1_RTS:
C - - - - - 0x00DBD1 03:9BC1: 60        RTS



tbl_9BC2:
- - - - - - 0x00DBD2 03:9BC2: 03        .byte $03   ; 
- D 0 - - - 0x00DBD3 03:9BC3: 04        .byte $04   ; 
- D 0 - - - 0x00DBD4 03:9BC4: 06        .byte $06   ; 
- D 0 - - - 0x00DBD5 03:9BC5: 08        .byte $08   ; 
- D 0 - - - 0x00DBD6 03:9BC6: 0A        .byte $0A   ; 
- D 0 - - - 0x00DBD7 03:9BC7: 0C        .byte $0C   ; 
- D 0 - - - 0x00DBD8 03:9BC8: 0E        .byte $0E   ; 
- - - - - - 0x00DBD9 03:9BC9: 10        .byte $10   ; 
- - - - - - 0x00DBDA 03:9BCA: 12        .byte $12   ; 
- - - - - - 0x00DBDB 03:9BCB: 14        .byte $14   ; 
- - - - - - 0x00DBDC 03:9BCC: 16        .byte $16   ; 
- - - - - - 0x00DBDD 03:9BCD: 18        .byte $18   ; 
- - - - - - 0x00DBDE 03:9BCE: 1A        .byte $1A   ; 
- - - - - - 0x00DBDF 03:9BCF: 1C        .byte $1C   ; 
- - - - - - 0x00DBE0 03:9BD0: 1E        .byte $1E   ; 
- D 0 - - - 0x00DBE1 03:9BD1: 20        .byte $20   ; 



sub_9BD2:
C - - - - - 0x00DBE2 03:9BD2: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00DBE4 03:9BD4: C9 02     CMP #$02
C - - - - - 0x00DBE6 03:9BD6: F0 01     BEQ bra_9BD9
C - - - - - 0x00DBE8 03:9BD8: 60        RTS
bra_9BD9:
C - - - - - 0x00DBE9 03:9BD9: A2 00     LDX #$00
bra_9BDB:
C - - - - - 0x00DBEB 03:9BDB: 20 E4 9B  JSR sub_9BE4
C - - - - - 0x00DBEE 03:9BDE: E8        INX
C - - - - - 0x00DBEF 03:9BDF: E0 02     CPX #$02
C - - - - - 0x00DBF1 03:9BE1: 90 F8     BCC bra_9BDB
C - - - - - 0x00DBF3 03:9BE3: 60        RTS



sub_9BE4:
C - - - - - 0x00DBF4 03:9BE4: 8A        TXA
C - - - - - 0x00DBF5 03:9BE5: 4D 00 03  EOR ram_frm_cnt
C - - - - - 0x00DBF8 03:9BE8: 29 01     AND #$01
C - - - - - 0x00DBFA 03:9BEA: F0 0A     BEQ bra_9BF6
C - - - - - 0x00DBFC 03:9BEC: BD 70 05  LDA ram_0570_кнопки,X
C - - - - - 0x00DBFF 03:9BEF: 29 60     AND #$60
C - - - - - 0x00DC01 03:9BF1: D0 03     BNE bra_9BF6
C - - - - - 0x00DC03 03:9BF3: 4C 53 9C  JMP loc_9C53
bra_9BF6:
C - - - - - 0x00DC06 03:9BF6: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00DC09 03:9BF9: 29 40     AND #$40
C - - - - - 0x00DC0B 03:9BFB: F0 22     BEQ bra_9C1F
C - - - - - 0x00DC0D 03:9BFD: 8A        TXA
C - - - - - 0x00DC0E 03:9BFE: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00DC11 03:9C01: 29 01     AND #$01
C - - - - - 0x00DC13 03:9C03: F0 06     BEQ bra_9C0B
C - - - - - 0x00DC15 03:9C05: 20 03 9E  JSR sub_9E03
C - - - - - 0x00DC18 03:9C08: 4C 22 9C  JMP loc_9C22
bra_9C0B:
C - - - - - 0x00DC1B 03:9C0B: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00DC1E 03:9C0E: C0 0A     CPY #$0A
C - - - - - 0x00DC20 03:9C10: 90 08     BCC bra_9C1A
C - - - - - 0x00DC22 03:9C12: B9 7C 06  LDA ram_067C,Y
C - - - - - 0x00DC25 03:9C15: 30 03     BMI bra_9C1A
C - - - - - 0x00DC27 03:9C17: 4C 43 9C  JMP loc_9C43
bra_9C1A:
C - - - - - 0x00DC2A 03:9C1A: 84 2C     STY ram_002C
C - - - - - 0x00DC2C 03:9C1C: 4C 22 9C  JMP loc_9C22
bra_9C1F:
C - - - - - 0x00DC2F 03:9C1F: 20 86 9D  JSR sub_9D86
loc_9C22:
C D 0 - - - 0x00DC32 03:9C22: A4 2C     LDY ram_002C
C - - - - - 0x00DC34 03:9C24: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00DC37 03:9C27: 10 1A     BPL bra_9C43
C - - - - - 0x00DC39 03:9C29: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00DC3C 03:9C2C: 29 F0     AND #$F0
C - - - - - 0x00DC3E 03:9C2E: D0 06     BNE bra_9C36
C - - - - - 0x00DC40 03:9C30: A5 2C     LDA ram_002C
C - - - - - 0x00DC42 03:9C32: C9 02     CMP #$02
C - - - - - 0x00DC44 03:9C34: 90 0D     BCC bra_9C43
bra_9C36:
C - - - - - 0x00DC46 03:9C36: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00DC49 03:9C39: 10 04     BPL bra_9C3F
C - - - - - 0x00DC4B 03:9C3B: C0 01     CPY #$01
C - - - - - 0x00DC4D 03:9C3D: F0 04     BEQ bra_9C43
bra_9C3F:
C - - - - - 0x00DC4F 03:9C3F: 98        TYA
C - - - - - 0x00DC50 03:9C40: 4C 45 9C  JMP loc_9C45
bra_9C43:
loc_9C43:
C D 0 - - - 0x00DC53 03:9C43: A9 0F     LDA #$0F
loc_9C45:
C D 0 - - - 0x00DC55 03:9C45: 85 1C     STA ram_001C
C - - - - - 0x00DC57 03:9C47: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DC5A 03:9C4A: 0A        ASL
C - - - - - 0x00DC5B 03:9C4B: 0A        ASL
C - - - - - 0x00DC5C 03:9C4C: 0A        ASL
C - - - - - 0x00DC5D 03:9C4D: 0A        ASL
C - - - - - 0x00DC5E 03:9C4E: 05 1C     ORA ram_001C
C - - - - - 0x00DC60 03:9C50: 9D 7A 06  STA ram_направление_паса_команды,X
loc_9C53:
C D 0 - - - 0x00DC63 03:9C53: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DC66 03:9C56: 29 0F     AND #$0F
C - - - - - 0x00DC68 03:9C58: C9 0F     CMP #$0F
C - - - - - 0x00DC6A 03:9C5A: F0 13     BEQ bra_9C6F_RTS
C - - - - - 0x00DC6C 03:9C5C: BD 70 05  LDA ram_0570_кнопки,X
C - - - - - 0x00DC6F 03:9C5F: 30 0E     BMI bra_9C6F_RTS
C - - - - - 0x00DC71 03:9C61: BD 70 05  LDA ram_0570_кнопки,X
C - - - - - 0x00DC74 03:9C64: 29 40     AND #$40
C - - - - - 0x00DC76 03:9C66: D0 08     BNE bra_9C70
C - - - - - 0x00DC78 03:9C68: BD 70 05  LDA ram_0570_кнопки,X
C - - - - - 0x00DC7B 03:9C6B: 29 20     AND #$20
C - - - - - 0x00DC7D 03:9C6D: D0 23     BNE bra_9C92
bra_9C6F_RTS:
C - - - - - 0x00DC7F 03:9C6F: 60        RTS
bra_9C70:
C - - - - - 0x00DC80 03:9C70: 20 3D 9E  JSR sub_9E3D
C - - - - - 0x00DC83 03:9C73: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00DC86 03:9C76: 29 40     AND #$40
C - - - - - 0x00DC88 03:9C78: F0 10     BEQ bra_9C8A
C - - - - - 0x00DC8A 03:9C7A: 8A        TXA
C - - - - - 0x00DC8B 03:9C7B: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00DC8E 03:9C7E: 29 01     AND #$01
C - - - - - 0x00DC90 03:9C80: F0 08     BEQ bra_9C8A
C - - - - - 0x00DC92 03:9C82: A9 02     LDA #$02
C - - - - - 0x00DC94 03:9C84: 85 1C     STA ram_001C
C - - - - - 0x00DC96 03:9C86: 20 B4 9C  JSR sub_9CB4
C - - - - - 0x00DC99 03:9C89: 60        RTS
bra_9C8A:
C - - - - - 0x00DC9A 03:9C8A: A9 00     LDA #$00
C - - - - - 0x00DC9C 03:9C8C: 85 1C     STA ram_001C
C - - - - - 0x00DC9E 03:9C8E: 20 B4 9C  JSR sub_9CB4
C - - - - - 0x00DCA1 03:9C91: 60        RTS
bra_9C92:
C - - - - - 0x00DCA2 03:9C92: 20 3D 9E  JSR sub_9E3D
C - - - - - 0x00DCA5 03:9C95: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00DCA8 03:9C98: 29 40     AND #$40
C - - - - - 0x00DCAA 03:9C9A: F0 10     BEQ bra_9CAC
C - - - - - 0x00DCAC 03:9C9C: 8A        TXA
C - - - - - 0x00DCAD 03:9C9D: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00DCB0 03:9CA0: 29 01     AND #$01
C - - - - - 0x00DCB2 03:9CA2: F0 08     BEQ bra_9CAC
C - - - - - 0x00DCB4 03:9CA4: A9 03     LDA #$03
C - - - - - 0x00DCB6 03:9CA6: 85 1C     STA ram_001C
C - - - - - 0x00DCB8 03:9CA8: 20 B4 9C  JSR sub_9CB4
C - - - - - 0x00DCBB 03:9CAB: 60        RTS
bra_9CAC:
C - - - - - 0x00DCBC 03:9CAC: A9 01     LDA #$01
C - - - - - 0x00DCBE 03:9CAE: 85 1C     STA ram_001C
C - - - - - 0x00DCC0 03:9CB0: 20 B4 9C  JSR sub_9CB4
C - - - - - 0x00DCC3 03:9CB3: 60        RTS



sub_9CB4:
C - - - - - 0x00DCC4 03:9CB4: BD 78 06  LDA ram_приказ_боту,X
C - - - - - 0x00DCC7 03:9CB7: C5 1C     CMP ram_001C
C - - - - - 0x00DCC9 03:9CB9: D0 0D     BNE bra_9CC8
C - - - - - 0x00DCCB 03:9CBB: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DCCE 03:9CBE: 29 0F     AND #$0F
C - - - - - 0x00DCD0 03:9CC0: A8        TAY
C - - - - - 0x00DCD1 03:9CC1: A9 FE     LDA #$FE
C - - - - - 0x00DCD3 03:9CC3: 85 2C     STA ram_002C
C - - - - - 0x00DCD5 03:9CC5: 20 31 9F  JSR sub_9F31
bra_9CC8:
C - - - - - 0x00DCD8 03:9CC8: A5 1C     LDA ram_001C
C - - - - - 0x00DCDA 03:9CCA: 0A        ASL
C - - - - - 0x00DCDB 03:9CCB: A8        TAY
C - - - - - 0x00DCDC 03:9CCC: B9 D9 9C  LDA tbl_9CD9,Y
C - - - - - 0x00DCDF 03:9CCF: 85 2C     STA ram_002C
C - - - - - 0x00DCE1 03:9CD1: B9 DA 9C  LDA tbl_9CD9 + $01,Y
C - - - - - 0x00DCE4 03:9CD4: 85 2D     STA ram_002D
C - - - - - 0x00DCE6 03:9CD6: 6C 2C 00  JMP (ram_002C)

tbl_9CD9:
- D 0 - - - 0x00DCE9 03:9CD9: E1 9C     .word ofs_017_9CE1_00
- D 0 - - - 0x00DCEB 03:9CDB: 2C 9D     .word ofs_017_9D2C_01
- D 0 - - - 0x00DCED 03:9CDD: 60 9D     .word ofs_017_9D60_02
- D 0 - - - 0x00DCEF 03:9CDF: 73 9D     .word ofs_017_9D73_03



ofs_017_9CE1_00:
C - - J - - 0x00DCF1 03:9CE1: 20 94 9E  JSR sub_9E94
C - - - - - 0x00DCF4 03:9CE4: 20 4A 9E  JSR sub_9E4A
C - - - - - 0x00DCF7 03:9CE7: 29 01     AND #$01
C - - - - - 0x00DCF9 03:9CE9: F0 09     BEQ bra_9CF4
C - - - - - 0x00DCFB 03:9CEB: A9 34     LDA #$34
C - - - - - 0x00DCFD 03:9CED: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00DD00 03:9CF0: 20 02 9F  JSR sub_9F02
C - - - - - 0x00DD03 03:9CF3: 60        RTS
bra_9CF4:
C - - - - - 0x00DD04 03:9CF4: A9 33     LDA #$33
C - - - - - 0x00DD06 03:9CF6: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00DD09 03:9CF9: A5 1C     LDA ram_001C
C - - - - - 0x00DD0B 03:9CFB: 9D 78 06  STA ram_приказ_боту,X
C - - - - - 0x00DD0E 03:9CFE: 20 09 9F  JSR sub_9F09
C - - - - - 0x00DD11 03:9D01: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00DD14 03:9D04: C9 FF     CMP #$FF
C - - - - - 0x00DD16 03:9D06: F0 04     BEQ bra_9D0C
C - - - - - 0x00DD18 03:9D08: 9D 7E 06  STA ram_067E,X
C - - - - - 0x00DD1B 03:9D0B: 60        RTS
bra_9D0C:
C - - - - - 0x00DD1C 03:9D0C: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DD1F 03:9D0F: 29 0F     AND #$0F
C - - - - - 0x00DD21 03:9D11: A8        TAY
C - - - - - 0x00DD22 03:9D12: BD 2A 9D  LDA tbl_9D2A,X
C - - - - - 0x00DD25 03:9D15: D9 27 03  CMP ram_игрок_X_hi,Y
C - - - - - 0x00DD28 03:9D18: D0 07     BNE bra_9D21
C - - - - - 0x00DD2A 03:9D1A: A9 FC     LDA #$FC
C - - - - - 0x00DD2C 03:9D1C: 85 2C     STA ram_002C
C - - - - - 0x00DD2E 03:9D1E: 20 31 9F  JSR sub_9F31
bra_9D21:
C - - - - - 0x00DD31 03:9D21: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x00DD34 03:9D24: 09 10     ORA #$10
C - - - - - 0x00DD36 03:9D26: 9D 7E 06  STA ram_067E,X
C - - - - - 0x00DD39 03:9D29: 60        RTS

tbl_9D2A:
- D 0 - - - 0x00DD3A 03:9D2A: 03        .byte $03   ; 
- D 0 - - - 0x00DD3B 03:9D2B: 00        .byte $00   ; 



ofs_017_9D2C_01:
C - - J - - 0x00DD3C 03:9D2C: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DD3F 03:9D2F: 29 0F     AND #$0F
C - - - - - 0x00DD41 03:9D31: A8        TAY
C - - - - - 0x00DD42 03:9D32: A9 02     LDA #$02
C - - - - - 0x00DD44 03:9D34: 85 2C     STA ram_002C
C - - - - - 0x00DD46 03:9D36: 20 31 9F  JSR sub_9F31
C - - - - - 0x00DD49 03:9D39: 20 94 9E  JSR sub_9E94
C - - - - - 0x00DD4C 03:9D3C: 20 4A 9E  JSR sub_9E4A
C - - - - - 0x00DD4F 03:9D3F: 29 02     AND #$02
C - - - - - 0x00DD51 03:9D41: F0 09     BEQ bra_9D4C
C - - - - - 0x00DD53 03:9D43: A9 34     LDA #$34
C - - - - - 0x00DD55 03:9D45: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00DD58 03:9D48: 20 02 9F  JSR sub_9F02
C - - - - - 0x00DD5B 03:9D4B: 60        RTS
bra_9D4C:
C - - - - - 0x00DD5C 03:9D4C: A9 33     LDA #$33
C - - - - - 0x00DD5E 03:9D4E: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00DD61 03:9D51: A5 1C     LDA ram_001C
C - - - - - 0x00DD63 03:9D53: 9D 78 06  STA ram_приказ_боту,X
C - - - - - 0x00DD66 03:9D56: 20 09 9F  JSR sub_9F09
C - - - - - 0x00DD69 03:9D59: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00DD6C 03:9D5C: 9D 7E 06  STA ram_067E,X
C - - - - - 0x00DD6F 03:9D5F: 60        RTS



ofs_017_9D60_02:
C - - J - - 0x00DD70 03:9D60: 20 94 9E  JSR sub_9E94
C - - - - - 0x00DD73 03:9D63: 20 4A 9E  JSR sub_9E4A
C - - - - - 0x00DD76 03:9D66: 29 04     AND #$04
C - - - - - 0x00DD78 03:9D68: F0 E2     BEQ bra_9D4C
C - - - - - 0x00DD7A 03:9D6A: A9 34     LDA #$34
C - - - - - 0x00DD7C 03:9D6C: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00DD7F 03:9D6F: 20 02 9F  JSR sub_9F02
C - - - - - 0x00DD82 03:9D72: 60        RTS



ofs_017_9D73_03:
C - - J - - 0x00DD83 03:9D73: 20 94 9E  JSR sub_9E94
C - - - - - 0x00DD86 03:9D76: 20 4A 9E  JSR sub_9E4A
C - - - - - 0x00DD89 03:9D79: 29 08     AND #$08
C - - - - - 0x00DD8B 03:9D7B: F0 CF     BEQ bra_9D4C
- - - - - - 0x00DD8D 03:9D7D: A9 34     LDA #$34
- - - - - - 0x00DD8F 03:9D7F: 20 02 C0  JSR sub_0x01C012
- - - - - - 0x00DD92 03:9D82: 20 02 9F  JSR sub_9F02
- - - - - - 0x00DD95 03:9D85: 60        RTS



sub_9D86:
C - - - - - 0x00DD96 03:9D86: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00DD99 03:9D89: 48        PHA
C - - - - - 0x00DD9A 03:9D8A: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00DD9D 03:9D8D: 48        PHA
C - - - - - 0x00DD9E 03:9D8E: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00DDA1 03:9D91: 48        PHA
C - - - - - 0x00DDA2 03:9D92: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00DDA5 03:9D95: 48        PHA
C - - - - - 0x00DDA6 03:9D96: AD 24 05  LDA ram_0524
C - - - - - 0x00DDA9 03:9D99: F0 1E     BEQ bra_9DB9
C - - - - - 0x00DDAB 03:9D9B: A0 0C     LDY #$0C
C - - - - - 0x00DDAD 03:9D9D: AD 24 05  LDA ram_0524
C - - - - - 0x00DDB0 03:9DA0: 85 1C     STA ram_001C
C - - - - - 0x00DDB2 03:9DA2: 20 D0 98  JSR sub_98D0
C - - - - - 0x00DDB5 03:9DA5: A5 32     LDA ram_0032
C - - - - - 0x00DDB7 03:9DA7: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00DDBA 03:9DAA: A5 33     LDA ram_0033
C - - - - - 0x00DDBC 03:9DAC: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00DDBF 03:9DAF: A5 34     LDA ram_0034
C - - - - - 0x00DDC1 03:9DB1: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00DDC4 03:9DB4: A5 35     LDA ram_0035
C - - - - - 0x00DDC6 03:9DB6: 8D 6C 03  STA ram_мяч_Y_hi
bra_9DB9:
C - - - - - 0x00DDC9 03:9DB9: 8A        TXA
C - - - - - 0x00DDCA 03:9DBA: 48        PHA
C - - - - - 0x00DDCB 03:9DBB: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x00DDCE 03:9DBE: AA        TAX
C - - - - - 0x00DDCF 03:9DBF: A0 0C     LDY #$0C
C - - - - - 0x00DDD1 03:9DC1: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00DDD4 03:9DC4: 85 2C     STA ram_002C
C - - - - - 0x00DDD6 03:9DC6: 68        PLA
C - - - - - 0x00DDD7 03:9DC7: AA        TAX
C - - - - - 0x00DDD8 03:9DC8: A5 2C     LDA ram_002C
C - - - - - 0x00DDDA 03:9DCA: C9 40     CMP #$40
C - - - - - 0x00DDDC 03:9DCC: B0 05     BCS bra_9DD3
C - - - - - 0x00DDDE 03:9DCE: 86 2C     STX ram_002C
C - - - - - 0x00DDE0 03:9DD0: 4C F2 9D  JMP loc_9DF2
bra_9DD3:
C - - - - - 0x00DDE3 03:9DD3: A9 0C     LDA #$0C
C - - - - - 0x00DDE5 03:9DD5: 85 22     STA ram_0022
C - - - - - 0x00DDE7 03:9DD7: 86 23     STX ram_0023
C - - - - - 0x00DDE9 03:9DD9: BD 86 06  LDA ram_флаг_кипера_в_штрафной,X
C - - - - - 0x00DDEC 03:9DDC: 10 05     BPL bra_9DE3
C - - - - - 0x00DDEE 03:9DDE: A9 06     LDA #$06
C - - - - - 0x00DDF0 03:9DE0: 4C E5 9D  JMP loc_9DE5
bra_9DE3:
C - - - - - 0x00DDF3 03:9DE3: A9 05     LDA #$05
loc_9DE5:
C D 0 - - - 0x00DDF5 03:9DE5: 85 27     STA ram_0027
C - - - - - 0x00DDF7 03:9DE7: A9 09     LDA #$09
C - - - - - 0x00DDF9 03:9DE9: 85 28     STA ram_0028
C - - - - - 0x00DDFB 03:9DEB: A9 02     LDA #$02
C - - - - - 0x00DDFD 03:9DED: 85 29     STA ram_0029
C - - - - - 0x00DDFF 03:9DEF: 20 3E C0  JSR sub_0x01C04E
loc_9DF2:
C D 0 - - - 0x00DE02 03:9DF2: 68        PLA
C - - - - - 0x00DE03 03:9DF3: 8D 6C 03  STA ram_мяч_Y_hi
C - - - - - 0x00DE06 03:9DF6: 68        PLA
C - - - - - 0x00DE07 03:9DF7: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00DE0A 03:9DFA: 68        PLA
C - - - - - 0x00DE0B 03:9DFB: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00DE0E 03:9DFE: 68        PLA
C - - - - - 0x00DE0F 03:9DFF: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00DE12 03:9E02: 60        RTS



sub_9E03:
C - - - - - 0x00DE13 03:9E03: 8A        TXA
C - - - - - 0x00DE14 03:9E04: 48        PHA
C - - - - - 0x00DE15 03:9E05: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x00DE18 03:9E08: AA        TAX
C - - - - - 0x00DE19 03:9E09: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00DE1C 03:9E0C: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00DE1F 03:9E0F: 85 2C     STA ram_002C
C - - - - - 0x00DE21 03:9E11: 68        PLA
C - - - - - 0x00DE22 03:9E12: AA        TAX
C - - - - - 0x00DE23 03:9E13: A5 2C     LDA ram_002C
C - - - - - 0x00DE25 03:9E15: C9 40     CMP #$40
C - - - - - 0x00DE27 03:9E17: B0 03     BCS bra_9E1C
C - - - - - 0x00DE29 03:9E19: 86 2C     STX ram_002C
C - - - - - 0x00DE2B 03:9E1B: 60        RTS
bra_9E1C:
C - - - - - 0x00DE2C 03:9E1C: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00DE2F 03:9E1F: 85 22     STA ram_0022
C - - - - - 0x00DE31 03:9E21: 86 23     STX ram_0023
C - - - - - 0x00DE33 03:9E23: BD 86 06  LDA ram_флаг_кипера_в_штрафной,X
C - - - - - 0x00DE36 03:9E26: 10 05     BPL bra_9E2D
C - - - - - 0x00DE38 03:9E28: A9 06     LDA #$06
C - - - - - 0x00DE3A 03:9E2A: 4C 2F 9E  JMP loc_9E2F
bra_9E2D:
C - - - - - 0x00DE3D 03:9E2D: A9 05     LDA #$05
loc_9E2F:
C D 0 - - - 0x00DE3F 03:9E2F: 85 27     STA ram_0027
C - - - - - 0x00DE41 03:9E31: A9 09     LDA #$09
C - - - - - 0x00DE43 03:9E33: 85 28     STA ram_0028
C - - - - - 0x00DE45 03:9E35: A9 02     LDA #$02
C - - - - - 0x00DE47 03:9E37: 85 29     STA ram_0029
C - - - - - 0x00DE49 03:9E39: 20 3E C0  JSR sub_0x01C04E
C - - - - - 0x00DE4C 03:9E3C: 60        RTS



sub_9E3D:
C - - - - - 0x00DE4D 03:9E3D: BD 04 00  LDA a: ram_btn_hold,X
C - - - - - 0x00DE50 03:9E40: 29 0F     AND #$0F
C - - - - - 0x00DE52 03:9E42: A8        TAY
C - - - - - 0x00DE53 03:9E43: B9 07 A0  LDA tbl_A007,Y
C - - - - - 0x00DE56 03:9E46: 9D 7C 06  STA ram_067C,X
C - - - - - 0x00DE59 03:9E49: 60        RTS



sub_9E4A:
C - - - - - 0x00DE5A 03:9E4A: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00DE5D 03:9E4D: 29 03     AND #$03
C - - - - - 0x00DE5F 03:9E4F: D0 05     BNE bra_9E56
- - - - - - 0x00DE61 03:9E51: A9 00     LDA #$00
- - - - - - 0x00DE63 03:9E53: 85 1D     STA ram_001D
- - - - - - 0x00DE65 03:9E55: 60        RTS
bra_9E56:
C - - - - - 0x00DE66 03:9E56: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DE69 03:9E59: 29 0F     AND #$0F
C - - - - - 0x00DE6B 03:9E5B: A8        TAY
C - - - - - 0x00DE6C 03:9E5C: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00DE6F 03:9E5F: 29 C0     AND #$C0
C - - - - - 0x00DE71 03:9E61: 4A        LSR
C - - - - - 0x00DE72 03:9E62: 4A        LSR
C - - - - - 0x00DE73 03:9E63: 4A        LSR
C - - - - - 0x00DE74 03:9E64: 4A        LSR
C - - - - - 0x00DE75 03:9E65: 85 1D     STA ram_001D
C - - - - - 0x00DE77 03:9E67: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00DE7A 03:9E6A: 29 0F     AND #$0F
C - - - - - 0x00DE7C 03:9E6C: 85 1E     STA ram_001E
C - - - - - 0x00DE7E 03:9E6E: BD E4 04  LDA ram_игрок_HP,X
C - - - - - 0x00DE81 03:9E71: 29 07     AND #$07
C - - - - - 0x00DE83 03:9E73: 38        SEC
C - - - - - 0x00DE84 03:9E74: E9 03     SBC #$03
C - - - - - 0x00DE86 03:9E76: 18        CLC
C - - - - - 0x00DE87 03:9E77: 65 1E     ADC ram_001E
C - - - - - 0x00DE89 03:9E79: 30 07     BMI bra_9E82
C - - - - - 0x00DE8B 03:9E7B: C9 10     CMP #$10
C - - - - - 0x00DE8D 03:9E7D: B0 08     BCS bra_9E87
C - - - - - 0x00DE8F 03:9E7F: 4C 89 9E  JMP loc_9E89
bra_9E82:
- - - - - - 0x00DE92 03:9E82: A9 00     LDA #$00
- - - - - - 0x00DE94 03:9E84: 4C 89 9E  JMP loc_9E89
bra_9E87:
- - - - - - 0x00DE97 03:9E87: A9 0F     LDA #$0F
loc_9E89:
C D 0 - - - 0x00DE99 03:9E89: 4A        LSR
C - - - - - 0x00DE9A 03:9E8A: 4A        LSR
C - - - - - 0x00DE9B 03:9E8B: 05 1D     ORA ram_001D
C - - - - - 0x00DE9D 03:9E8D: A8        TAY
C - - - - - 0x00DE9E 03:9E8E: B9 F3 9F  LDA tbl_9FF3,Y
C - - - - - 0x00DEA1 03:9E91: 85 1D     STA ram_001D
C - - - - - 0x00DEA3 03:9E93: 60        RTS



sub_9E94:
C - - - - - 0x00DEA4 03:9E94: A5 1C     LDA ram_001C
C - - - - - 0x00DEA6 03:9E96: D0 1B     BNE bra_9EB3
C - - - - - 0x00DEA8 03:9E98: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00DEAB 03:9E9B: C9 FF     CMP #$FF
C - - - - - 0x00DEAD 03:9E9D: D0 14     BNE bra_9EB3
C - - - - - 0x00DEAF 03:9E9F: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x00DEB2 03:9EA2: A8        TAY
C - - - - - 0x00DEB3 03:9EA3: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00DEB6 03:9EA6: 4A        LSR
C - - - - - 0x00DEB7 03:9EA7: 4A        LSR
C - - - - - 0x00DEB8 03:9EA8: 4A        LSR
C - - - - - 0x00DEB9 03:9EA9: 4A        LSR
C - - - - - 0x00DEBA 03:9EAA: 4A        LSR
C - - - - - 0x00DEBB 03:9EAB: 4A        LSR
C - - - - - 0x00DEBC 03:9EAC: A8        TAY
C - - - - - 0x00DEBD 03:9EAD: B9 03 A0  LDA tbl_A003,Y
C - - - - - 0x00DEC0 03:9EB0: 4C FC 9E  JMP loc_9EFC
bra_9EB3:
C - - - - - 0x00DEC3 03:9EB3: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00DEC6 03:9EB6: 29 03     AND #$03
C - - - - - 0x00DEC8 03:9EB8: 85 1E     STA ram_001E
C - - - - - 0x00DECA 03:9EBA: A5 1C     LDA ram_001C
C - - - - - 0x00DECC 03:9EBC: 0A        ASL
C - - - - - 0x00DECD 03:9EBD: 0A        ASL
C - - - - - 0x00DECE 03:9EBE: 05 1E     ORA ram_001E
C - - - - - 0x00DED0 03:9EC0: 85 1E     STA ram_001E
C - - - - - 0x00DED2 03:9EC2: BD 68 05  LDA ram_номер_управляемого,X
C - - - - - 0x00DED5 03:9EC5: A8        TAY
C - - - - - 0x00DED6 03:9EC6: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00DED9 03:9EC9: 29 C0     AND #$C0
C - - - - - 0x00DEDB 03:9ECB: 4A        LSR
C - - - - - 0x00DEDC 03:9ECC: 4A        LSR
C - - - - - 0x00DEDD 03:9ECD: 05 1E     ORA ram_001E
C - - - - - 0x00DEDF 03:9ECF: 85 1E     STA ram_001E
C - - - - - 0x00DEE1 03:9ED1: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DEE4 03:9ED4: 29 0F     AND #$0F
C - - - - - 0x00DEE6 03:9ED6: A8        TAY
C - - - - - 0x00DEE7 03:9ED7: E0 01     CPX #$01
C - - - - - 0x00DEE9 03:9ED9: F0 0A     BEQ bra_9EE5
C - - - - - 0x00DEEB 03:9EDB: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00DEEE 03:9EDE: C9 02     CMP #$02
C - - - - - 0x00DEF0 03:9EE0: 90 0D     BCC bra_9EEF
C - - - - - 0x00DEF2 03:9EE2: 4C F4 9E  JMP loc_9EF4
bra_9EE5:
C - - - - - 0x00DEF5 03:9EE5: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00DEF8 03:9EE8: C9 02     CMP #$02
C - - - - - 0x00DEFA 03:9EEA: 90 08     BCC bra_9EF4
C - - - - - 0x00DEFC 03:9EEC: 4C EF 9E  JMP loc_9EEF
bra_9EEF:
loc_9EEF:
C D 0 - - - 0x00DEFF 03:9EEF: A9 40     LDA #$40
C - - - - - 0x00DF01 03:9EF1: 4C F6 9E  JMP loc_9EF6
bra_9EF4:
loc_9EF4:
C D 0 - - - 0x00DF04 03:9EF4: A9 00     LDA #$00
loc_9EF6:
C D 0 - - - 0x00DF06 03:9EF6: 05 1E     ORA ram_001E
C - - - - - 0x00DF08 03:9EF8: A8        TAY
C - - - - - 0x00DF09 03:9EF9: B9 53 9F  LDA tbl_9F53,Y
loc_9EFC:
C D 0 - - - 0x00DF0C 03:9EFC: 09 80     ORA #$80
C - - - - - 0x00DF0E 03:9EFE: 9D 80 06  STA ram_0680,X
C - - - - - 0x00DF11 03:9F01: 60        RTS



sub_9F02:
C - - - - - 0x00DF12 03:9F02: A9 10     LDA #$10
C - - - - - 0x00DF14 03:9F04: 85 1E     STA ram_001E
C - - - - - 0x00DF16 03:9F06: 4C 0D 9F  JMP loc_9F0D



sub_9F09:
C - - - - - 0x00DF19 03:9F09: A9 00     LDA #$00
C - - - - - 0x00DF1B 03:9F0B: 85 1E     STA ram_001E
loc_9F0D:
C D 0 - - - 0x00DF1D 03:9F0D: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00DF20 03:9F10: 29 0F     AND #$0F
C - - - - - 0x00DF22 03:9F12: A8        TAY
C - - - - - 0x00DF23 03:9F13: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00DF26 03:9F16: 29 C0     AND #$C0
C - - - - - 0x00DF28 03:9F18: 4A        LSR
C - - - - - 0x00DF29 03:9F19: 4A        LSR
C - - - - - 0x00DF2A 03:9F1A: 4A        LSR
C - - - - - 0x00DF2B 03:9F1B: 4A        LSR
C - - - - - 0x00DF2C 03:9F1C: 05 1E     ORA ram_001E
C - - - - - 0x00DF2E 03:9F1E: 85 1E     STA ram_001E
C - - - - - 0x00DF30 03:9F20: AD 46 00  LDA a: ram_рандом + $01
C - - - - - 0x00DF33 03:9F23: 29 03     AND #$03
C - - - - - 0x00DF35 03:9F25: 05 1E     ORA ram_001E
C - - - - - 0x00DF37 03:9F27: A8        TAY
C - - - - - 0x00DF38 03:9F28: B9 D3 9F  LDA tbl_9FD3,Y
C - - - - - 0x00DF3B 03:9F2B: 09 80     ORA #$80
C - - - - - 0x00DF3D 03:9F2D: 9D 82 06  STA ram_0682,X
C - - - - - 0x00DF40 03:9F30: 60        RTS



sub_9F31:
C - - - - - 0x00DF41 03:9F31: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00DF44 03:9F34: 29 0F     AND #$0F
C - - - - - 0x00DF46 03:9F36: 18        CLC
C - - - - - 0x00DF47 03:9F37: 65 2C     ADC ram_002C
C - - - - - 0x00DF49 03:9F39: 30 09     BMI bra_9F44
C - - - - - 0x00DF4B 03:9F3B: C9 10     CMP #$10
C - - - - - 0x00DF4D 03:9F3D: 90 07     BCC bra_9F46
C - - - - - 0x00DF4F 03:9F3F: A9 0F     LDA #$0F
C - - - - - 0x00DF51 03:9F41: 4C 46 9F  JMP loc_9F46
bra_9F44:
C - - - - - 0x00DF54 03:9F44: A9 00     LDA #$00
bra_9F46:
loc_9F46:
C D 0 - - - 0x00DF56 03:9F46: 85 2D     STA ram_002D
C - - - - - 0x00DF58 03:9F48: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00DF5B 03:9F4B: 29 F0     AND #$F0
C - - - - - 0x00DF5D 03:9F4D: 05 2D     ORA ram_002D
C - - - - - 0x00DF5F 03:9F4F: 99 50 06  STA ram_позиция_управление,Y
C - - - - - 0x00DF62 03:9F52: 60        RTS



tbl_9F53:
- - - - - - 0x00DF63 03:9F53: 06        .byte $06   ; 
- - - - - - 0x00DF64 03:9F54: 22        .byte $22   ; 
- - - - - - 0x00DF65 03:9F55: 08        .byte $08   ; 
- - - - - - 0x00DF66 03:9F56: 03        .byte $03   ; 
- - - - - - 0x00DF67 03:9F57: 15        .byte $15   ; 
- - - - - - 0x00DF68 03:9F58: 1C        .byte $1C   ; 
- - - - - - 0x00DF69 03:9F59: 01        .byte $01   ; 
- - - - - - 0x00DF6A 03:9F5A: 06        .byte $06   ; 
- - - - - - 0x00DF6B 03:9F5B: 23        .byte $23   ; 
- - - - - - 0x00DF6C 03:9F5C: 33        .byte $33   ; 
- - - - - - 0x00DF6D 03:9F5D: 34        .byte $34   ; 
- - - - - - 0x00DF6E 03:9F5E: 06        .byte $06   ; 
- - - - - - 0x00DF6F 03:9F5F: 0E        .byte $0E   ; 
- - - - - - 0x00DF70 03:9F60: 27        .byte $27   ; 
- - - - - - 0x00DF71 03:9F61: 33        .byte $33   ; 
- - - - - - 0x00DF72 03:9F62: 17        .byte $17   ; 
- D 0 - - - 0x00DF73 03:9F63: 07        .byte $07   ; 
- D 0 - - - 0x00DF74 03:9F64: 08        .byte $08   ; 
- D 0 - - - 0x00DF75 03:9F65: 16        .byte $16   ; 
- - - - - - 0x00DF76 03:9F66: 07        .byte $07   ; 
- D 0 - - - 0x00DF77 03:9F67: 00        .byte $00   ; 
- D 0 - - - 0x00DF78 03:9F68: 01        .byte $01   ; 
- D 0 - - - 0x00DF79 03:9F69: 03        .byte $03   ; 
- D 0 - - - 0x00DF7A 03:9F6A: 02        .byte $02   ; 
- D 0 - - - 0x00DF7B 03:9F6B: 12        .byte $12   ; 
- D 0 - - - 0x00DF7C 03:9F6C: 13        .byte $13   ; 
- D 0 - - - 0x00DF7D 03:9F6D: 17        .byte $17   ; 
- - - - - - 0x00DF7E 03:9F6E: 12        .byte $12   ; 
- D 0 - - - 0x00DF7F 03:9F6F: 0D        .byte $0D   ; 
- D 0 - - - 0x00DF80 03:9F70: 11        .byte $11   ; 
- D 0 - - - 0x00DF81 03:9F71: 0E        .byte $0E   ; 
- D 0 - - - 0x00DF82 03:9F72: 0D        .byte $0D   ; 
- - - - - - 0x00DF83 03:9F73: 08        .byte $08   ; 
- - - - - - 0x00DF84 03:9F74: 0C        .byte $0C   ; 
- - - - - - 0x00DF85 03:9F75: 2C        .byte $2C   ; 
- - - - - - 0x00DF86 03:9F76: 07        .byte $07   ; 
- D 0 - - - 0x00DF87 03:9F77: 15        .byte $15   ; 
- D 0 - - - 0x00DF88 03:9F78: 02        .byte $02   ; 
- D 0 - - - 0x00DF89 03:9F79: 01        .byte $01   ; 
- D 0 - - - 0x00DF8A 03:9F7A: 07        .byte $07   ; 
- D 0 - - - 0x00DF8B 03:9F7B: 16        .byte $16   ; 
- D 0 - - - 0x00DF8C 03:9F7C: 17        .byte $17   ; 
- D 0 - - - 0x00DF8D 03:9F7D: 15        .byte $15   ; 
- D 0 - - - 0x00DF8E 03:9F7E: 12        .byte $12   ; 
- D 0 - - - 0x00DF8F 03:9F7F: 0D        .byte $0D   ; 
- D 0 - - - 0x00DF90 03:9F80: 10        .byte $10   ; 
- D 0 - - - 0x00DF91 03:9F81: 0F        .byte $0F   ; 
- D 0 - - - 0x00DF92 03:9F82: 15        .byte $15   ; 
- D 0 - - - 0x00DF93 03:9F83: 07        .byte $07   ; 
- D 0 - - - 0x00DF94 03:9F84: 08        .byte $08   ; 
- - - - - - 0x00DF95 03:9F85: 16        .byte $16   ; 
- D 0 - - - 0x00DF96 03:9F86: 0B        .byte $0B   ; 
- D 0 - - - 0x00DF97 03:9F87: 00        .byte $00   ; 
- D 0 - - - 0x00DF98 03:9F88: 01        .byte $01   ; 
- D 0 - - - 0x00DF99 03:9F89: 03        .byte $03   ; 
- D 0 - - - 0x00DF9A 03:9F8A: 02        .byte $02   ; 
- D 0 - - - 0x00DF9B 03:9F8B: 12        .byte $12   ; 
- D 0 - - - 0x00DF9C 03:9F8C: 09        .byte $09   ; 
- D 0 - - - 0x00DF9D 03:9F8D: 11        .byte $11   ; 
- D 0 - - - 0x00DF9E 03:9F8E: 13        .byte $13   ; 
- D 0 - - - 0x00DF9F 03:9F8F: 0D        .byte $0D   ; 
- D 0 - - - 0x00DFA0 03:9F90: 10        .byte $10   ; 
- D 0 - - - 0x00DFA1 03:9F91: 0F        .byte $0F   ; 
- D 0 - - - 0x00DFA2 03:9F92: 0E        .byte $0E   ; 
- - - - - - 0x00DFA3 03:9F93: 23        .byte $23   ; 
- - - - - - 0x00DFA4 03:9F94: 21        .byte $21   ; 
- - - - - - 0x00DFA5 03:9F95: 15        .byte $15   ; 
- - - - - - 0x00DFA6 03:9F96: 06        .byte $06   ; 
- - - - - - 0x00DFA7 03:9F97: 15        .byte $15   ; 
- - - - - - 0x00DFA8 03:9F98: 17        .byte $17   ; 
- - - - - - 0x00DFA9 03:9F99: 11        .byte $11   ; 
- - - - - - 0x00DFAA 03:9F9A: 03        .byte $03   ; 
- - - - - - 0x00DFAB 03:9F9B: 23        .byte $23   ; 
- - - - - - 0x00DFAC 03:9F9C: 33        .byte $33   ; 
- - - - - - 0x00DFAD 03:9F9D: 0E        .byte $0E   ; 
- - - - - - 0x00DFAE 03:9F9E: 06        .byte $06   ; 
- - - - - - 0x00DFAF 03:9F9F: 0F        .byte $0F   ; 
- - - - - - 0x00DFB0 03:9FA0: 2A        .byte $2A   ; 
- - - - - - 0x00DFB1 03:9FA1: 31        .byte $31   ; 
- - - - - - 0x00DFB2 03:9FA2: 16        .byte $16   ; 
- - - - - - 0x00DFB3 03:9FA3: 07        .byte $07   ; 
- - - - - - 0x00DFB4 03:9FA4: 08        .byte $08   ; 
- D 0 - - - 0x00DFB5 03:9FA5: 16        .byte $16   ; 
- D 0 - - - 0x00DFB6 03:9FA6: 07        .byte $07   ; 
- D 0 - - - 0x00DFB7 03:9FA7: 04        .byte $04   ; 
- D 0 - - - 0x00DFB8 03:9FA8: 05        .byte $05   ; 
- D 0 - - - 0x00DFB9 03:9FA9: 07        .byte $07   ; 
- D 0 - - - 0x00DFBA 03:9FAA: 04        .byte $04   ; 
- D 0 - - - 0x00DFBB 03:9FAB: 12        .byte $12   ; 
- D 0 - - - 0x00DFBC 03:9FAC: 14        .byte $14   ; 
- D 0 - - - 0x00DFBD 03:9FAD: 17        .byte $17   ; 
- D 0 - - - 0x00DFBE 03:9FAE: 12        .byte $12   ; 
- D 0 - - - 0x00DFBF 03:9FAF: 11        .byte $11   ; 
- - - - - - 0x00DFC0 03:9FB0: 10        .byte $10   ; 
- D 0 - - - 0x00DFC1 03:9FB1: 0E        .byte $0E   ; 
- D 0 - - - 0x00DFC2 03:9FB2: 11        .byte $11   ; 
- - - - - - 0x00DFC3 03:9FB3: 08        .byte $08   ; 
- - - - - - 0x00DFC4 03:9FB4: 0C        .byte $0C   ; 
- - - - - - 0x00DFC5 03:9FB5: 2C        .byte $2C   ; 
- - - - - - 0x00DFC6 03:9FB6: 07        .byte $07   ; 
- D 0 - - - 0x00DFC7 03:9FB7: 07        .byte $07   ; 
- D 0 - - - 0x00DFC8 03:9FB8: 05        .byte $05   ; 
- D 0 - - - 0x00DFC9 03:9FB9: 06        .byte $06   ; 
- D 0 - - - 0x00DFCA 03:9FBA: 15        .byte $15   ; 
- D 0 - - - 0x00DFCB 03:9FBB: 12        .byte $12   ; 
- D 0 - - - 0x00DFCC 03:9FBC: 16        .byte $16   ; 
- D 0 - - - 0x00DFCD 03:9FBD: 17        .byte $17   ; 
- D 0 - - - 0x00DFCE 03:9FBE: 12        .byte $12   ; 
- D 0 - - - 0x00DFCF 03:9FBF: 11        .byte $11   ; 
- D 0 - - - 0x00DFD0 03:9FC0: 0F        .byte $0F   ; 
- D 0 - - - 0x00DFD1 03:9FC1: 2D        .byte $2D   ; 
- D 0 - - - 0x00DFD2 03:9FC2: 15        .byte $15   ; 
- D 0 - - - 0x00DFD3 03:9FC3: 07        .byte $07   ; 
- D 0 - - - 0x00DFD4 03:9FC4: 08        .byte $08   ; 
- D 0 - - - 0x00DFD5 03:9FC5: 16        .byte $16   ; 
- - - - - - 0x00DFD6 03:9FC6: 0B        .byte $0B   ; 
- D 0 - - - 0x00DFD7 03:9FC7: 04        .byte $04   ; 
- D 0 - - - 0x00DFD8 03:9FC8: 05        .byte $05   ; 
- D 0 - - - 0x00DFD9 03:9FC9: 17        .byte $17   ; 
- D 0 - - - 0x00DFDA 03:9FCA: 03        .byte $03   ; 
- D 0 - - - 0x00DFDB 03:9FCB: 02        .byte $02   ; 
- D 0 - - - 0x00DFDC 03:9FCC: 13        .byte $13   ; 
- D 0 - - - 0x00DFDD 03:9FCD: 08        .byte $08   ; 
- D 0 - - - 0x00DFDE 03:9FCE: 11        .byte $11   ; 
- D 0 - - - 0x00DFDF 03:9FCF: 10        .byte $10   ; 
- D 0 - - - 0x00DFE0 03:9FD0: 14        .byte $14   ; 
- D 0 - - - 0x00DFE1 03:9FD1: 0F        .byte $0F   ; 
- D 0 - - - 0x00DFE2 03:9FD2: 0E        .byte $0E   ; 



tbl_9FD3:
- D 0 - - - 0x00DFE3 03:9FD3: 21        .byte $21   ; 
- D 0 - - - 0x00DFE4 03:9FD4: 3C        .byte $3C   ; 
- D 0 - - - 0x00DFE5 03:9FD5: 25        .byte $25   ; 
- D 0 - - - 0x00DFE6 03:9FD6: 23        .byte $23   ; 
- D 0 - - - 0x00DFE7 03:9FD7: 18        .byte $18   ; 
- D 0 - - - 0x00DFE8 03:9FD8: 18        .byte $18   ; 
- D 0 - - - 0x00DFE9 03:9FD9: 18        .byte $18   ; 
- D 0 - - - 0x00DFEA 03:9FDA: 22        .byte $22   ; 
- D 0 - - - 0x00DFEB 03:9FDB: 18        .byte $18   ; 
- D 0 - - - 0x00DFEC 03:9FDC: 1A        .byte $1A   ; 
- D 0 - - - 0x00DFED 03:9FDD: 31        .byte $31   ; 
- D 0 - - - 0x00DFEE 03:9FDE: 1C        .byte $1C   ; 
- D 0 - - - 0x00DFEF 03:9FDF: 19        .byte $19   ; 
- D 0 - - - 0x00DFF0 03:9FE0: 1B        .byte $1B   ; 
- D 0 - - - 0x00DFF1 03:9FE1: 39        .byte $39   ; 
- D 0 - - - 0x00DFF2 03:9FE2: 27        .byte $27   ; 
- D 0 - - - 0x00DFF3 03:9FE3: 1F        .byte $1F   ; 
- D 0 - - - 0x00DFF4 03:9FE4: 1D        .byte $1D   ; 
- D 0 - - - 0x00DFF5 03:9FE5: 23        .byte $23   ; 
- D 0 - - - 0x00DFF6 03:9FE6: 26        .byte $26   ; 
- - - - - - 0x00DFF7 03:9FE7: 21        .byte $21   ; 
- - - - - - 0x00DFF8 03:9FE8: 23        .byte $23   ; 
- - - - - - 0x00DFF9 03:9FE9: 24        .byte $24   ; 
- - - - - - 0x00DFFA 03:9FEA: 3B        .byte $3B   ; 
- D 0 - - - 0x00DFFB 03:9FEB: 1F        .byte $1F   ; 
- D 0 - - - 0x00DFFC 03:9FEC: 20        .byte $20   ; 
- D 0 - - - 0x00DFFD 03:9FED: 2C        .byte $2C   ; 
- D 0 - - - 0x00DFFE 03:9FEE: 26        .byte $26   ; 
- D 0 - - - 0x00DFFF 03:9FEF: 1D        .byte $1D   ; 
- D 0 - - - 0x00E000 03:9FF0: 1E        .byte $1E   ; 
- D 0 - - - 0x00E001 03:9FF1: 3A        .byte $3A   ; 
- D 0 - - - 0x00E002 03:9FF2: 24        .byte $24   ; 



tbl_9FF3:
- - - - - - 0x00E003 03:9FF3: 0E        .byte $0E   ; 
- D 0 - - - 0x00E004 03:9FF4: 01        .byte $01   ; 
- D 0 - - - 0x00E005 03:9FF5: 02        .byte $02   ; 
- - - - - - 0x00E006 03:9FF6: 04        .byte $04   ; 
- - - - - - 0x00E007 03:9FF7: 00        .byte $00   ; 
- D 0 - - - 0x00E008 03:9FF8: 00        .byte $00   ; 
- D 0 - - - 0x00E009 03:9FF9: 00        .byte $00   ; 
- - - - - - 0x00E00A 03:9FFA: 00        .byte $00   ; 
- D 0 - - - 0x00E00B 03:9FFB: 09        .byte $09   ; 
- D 0 - - - 0x00E00C 03:9FFC: 04        .byte $04   ; 
- D 0 - - - 0x00E00D 03:9FFD: 02        .byte $02   ; 
- - - - - - 0x00E00E 03:9FFE: 01        .byte $01   ; 
- D 0 - - - 0x00E00F 03:9FFF: 01        .byte $01   ; 
- D 1 - - - 0x00E010 03:A000: 01        .byte $01   ; 
- D 1 - - - 0x00E011 03:A001: 00        .byte $00   ; 
- - - - - - 0x00E012 03:A002: 01        .byte $01   ; 



tbl_A003:
- - - - - - 0x00E013 03:A003: 0B        .byte $0B   ; 
- - - - - - 0x00E014 03:A004: 07        .byte $07   ; 
- D 1 - - - 0x00E015 03:A005: 09        .byte $09   ; 
- D 1 - - - 0x00E016 03:A006: 0A        .byte $0A   ; 



tbl_A007:
- D 1 - - - 0x00E017 03:A007: FF        .byte $FF   ; 
- D 1 - - - 0x00E018 03:A008: 40        .byte $40   ; 
- D 1 - - - 0x00E019 03:A009: C0        .byte $C0   ; 
- - - - - - 0x00E01A 03:A00A: FF        .byte $FF   ; 
- D 1 - - - 0x00E01B 03:A00B: 80        .byte $80   ; 
- D 1 - - - 0x00E01C 03:A00C: 60        .byte $60   ; 
- D 1 - - - 0x00E01D 03:A00D: A0        .byte $A0   ; 
- - - - - - 0x00E01E 03:A00E: FF        .byte $FF   ; 
- D 1 - - - 0x00E01F 03:A00F: 00        .byte $00   ; 
- D 1 - - - 0x00E020 03:A010: 20        .byte $20   ; 
- - - - - - 0x00E021 03:A011: E0        .byte $E0   ; 
- - - - - - 0x00E022 03:A012: FF        .byte $FF   ; 
- - - - - - 0x00E023 03:A013: FF        .byte $FF   ; 
- - - - - - 0x00E024 03:A014: FF        .byte $FF   ; 
- - - - - - 0x00E025 03:A015: FF        .byte $FF   ; 
- - - - - - 0x00E026 03:A016: FF        .byte $FF   ; 



sub_A017:
C - - - - - 0x00E027 03:A017: A2 00     LDX #$00
bra_A019:
C - - - - - 0x00E029 03:A019: 20 22 A0  JSR sub_A022
C - - - - - 0x00E02C 03:A01C: E8        INX
C - - - - - 0x00E02D 03:A01D: E0 02     CPX #$02
C - - - - - 0x00E02F 03:A01F: 90 F8     BCC bra_A019
C - - - - - 0x00E031 03:A021: 60        RTS



sub_A022:
C - - - - - 0x00E032 03:A022: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00E035 03:A025: 29 40     AND #$40
C - - - - - 0x00E037 03:A027: F0 15     BEQ bra_A03E
C - - - - - 0x00E039 03:A029: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E03C 03:A02C: C9 0A     CMP #$0A
C - - - - - 0x00E03E 03:A02E: 90 0E     BCC bra_A03E
C - - - - - 0x00E040 03:A030: 8A        TXA
C - - - - - 0x00E041 03:A031: 49 01     EOR #$01
C - - - - - 0x00E043 03:A033: A8        TAY
C - - - - - 0x00E044 03:A034: AD 86 06  LDA ram_флаг_кипера_в_штрафной
C - - - - - 0x00E047 03:A037: 30 05     BMI bra_A03E
C - - - - - 0x00E049 03:A039: A9 FF     LDA #$FF
C - - - - - 0x00E04B 03:A03B: 9D 78 06  STA ram_приказ_боту,X
bra_A03E:
C - - - - - 0x00E04E 03:A03E: BD 78 06  LDA ram_приказ_боту,X
C - - - - - 0x00E051 03:A041: C9 FF     CMP #$FF
C - - - - - 0x00E053 03:A043: D0 01     BNE bra_A046
C - - - - - 0x00E055 03:A045: 60        RTS
bra_A046:
C - - - - - 0x00E056 03:A046: 0A        ASL
C - - - - - 0x00E057 03:A047: A8        TAY
C - - - - - 0x00E058 03:A048: B9 55 A0  LDA tbl_A055,Y
C - - - - - 0x00E05B 03:A04B: 85 2C     STA ram_002C
C - - - - - 0x00E05D 03:A04D: B9 56 A0  LDA tbl_A055 + $01,Y
C - - - - - 0x00E060 03:A050: 85 2D     STA ram_002D
C - - - - - 0x00E062 03:A052: 6C 2C 00  JMP (ram_002C)

tbl_A055:
- D 1 - - - 0x00E065 03:A055: 5D A0     .word ofs_018_A05D_00
- D 1 - - - 0x00E067 03:A057: 7E A0     .word ofs_018_A07E_01
- D 1 - - - 0x00E069 03:A059: AF A0     .word ofs_018_A0AF_02
- D 1 - - - 0x00E06B 03:A05B: C3 A0     .word ofs_018_A0C3_03



ofs_018_A05D_00:
C - - J - - 0x00E06D 03:A05D: 20 EC A0  JSR sub_A0EC
C - - - - - 0x00E070 03:A060: F0 10     BEQ bra_A072
C - - - - - 0x00E072 03:A062: 30 45     BMI bra_A0A9
C - - - - - 0x00E074 03:A064: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E077 03:A067: 29 0F     AND #$0F
C - - - - - 0x00E079 03:A069: A8        TAY
C - - - - - 0x00E07A 03:A06A: A9 02     LDA #$02
C - - - - - 0x00E07C 03:A06C: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E07F 03:A06F: 4C 7D A0  JMP loc_A07D_RTS
bra_A072:
C - - - - - 0x00E082 03:A072: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E085 03:A075: 29 0F     AND #$0F
C - - - - - 0x00E087 03:A077: A8        TAY
C - - - - - 0x00E088 03:A078: A9 06     LDA #$06
C - - - - - 0x00E08A 03:A07A: 99 5C 06  STA ram_интеллект_бота,Y
loc_A07D_RTS:
C D 1 - - - 0x00E08D 03:A07D: 60        RTS



ofs_018_A07E_01:
C - - J - - 0x00E08E 03:A07E: 20 EC A0  JSR sub_A0EC
C - - - - - 0x00E091 03:A081: F0 10     BEQ bra_A093
C - - - - - 0x00E093 03:A083: 30 24     BMI bra_A0A9
C - - - - - 0x00E095 03:A085: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E098 03:A088: 29 0F     AND #$0F
C - - - - - 0x00E09A 03:A08A: A8        TAY
C - - - - - 0x00E09B 03:A08B: A9 23     LDA #$23
C - - - - - 0x00E09D 03:A08D: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E0A0 03:A090: 4C 9E A0  JMP loc_A09E
bra_A093:
C - - - - - 0x00E0A3 03:A093: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E0A6 03:A096: 29 0F     AND #$0F
C - - - - - 0x00E0A8 03:A098: A8        TAY
C - - - - - 0x00E0A9 03:A099: A9 25     LDA #$25
C - - - - - 0x00E0AB 03:A09B: 99 5C 06  STA ram_интеллект_бота,Y
loc_A09E:
C D 1 - - - 0x00E0AE 03:A09E: B9 68 06  LDA ram_0668,Y
C - - - - - 0x00E0B1 03:A0A1: 29 F0     AND #$F0
C - - - - - 0x00E0B3 03:A0A3: 09 01     ORA #$01
C - - - - - 0x00E0B5 03:A0A5: 99 68 06  STA ram_0668,Y
C - - - - - 0x00E0B8 03:A0A8: 60        RTS
bra_A0A9:
loc_A0A9:
C D 1 - - - 0x00E0B9 03:A0A9: A9 FF     LDA #$FF
C - - - - - 0x00E0BB 03:A0AB: 9D 78 06  STA ram_приказ_боту,X
C - - - - - 0x00E0BE 03:A0AE: 60        RTS



ofs_018_A0AF_02:
C - - J - - 0x00E0BF 03:A0AF: 20 D7 A0  JSR sub_A0D7
C - - - - - 0x00E0C2 03:A0B2: 30 03     BMI bra_A0B7
C - - - - - 0x00E0C4 03:A0B4: 4C A9 A0  JMP loc_A0A9
bra_A0B7:
C - - - - - 0x00E0C7 03:A0B7: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E0CA 03:A0BA: 29 0F     AND #$0F
C - - - - - 0x00E0CC 03:A0BC: A8        TAY
C - - - - - 0x00E0CD 03:A0BD: A9 08     LDA #$08
C - - - - - 0x00E0CF 03:A0BF: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E0D2 03:A0C2: 60        RTS



ofs_018_A0C3_03:
C - - J - - 0x00E0D3 03:A0C3: 20 D7 A0  JSR sub_A0D7
C - - - - - 0x00E0D6 03:A0C6: 30 03     BMI bra_A0CB
C - - - - - 0x00E0D8 03:A0C8: 4C A9 A0  JMP loc_A0A9
bra_A0CB:
C - - - - - 0x00E0DB 03:A0CB: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E0DE 03:A0CE: 29 0F     AND #$0F
C - - - - - 0x00E0E0 03:A0D0: A8        TAY
C - - - - - 0x00E0E1 03:A0D1: A9 09     LDA #$09
C - - - - - 0x00E0E3 03:A0D3: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E0E6 03:A0D6: 60        RTS



sub_A0D7:
C - - - - - 0x00E0E7 03:A0D7: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00E0EA 03:A0DA: 29 40     AND #$40
C - - - - - 0x00E0EC 03:A0DC: F0 0B     BEQ bra_A0E9
C - - - - - 0x00E0EE 03:A0DE: 8A        TXA
C - - - - - 0x00E0EF 03:A0DF: 4D D6 04  EOR ram_игрок_с_мячом
C - - - - - 0x00E0F2 03:A0E2: 29 01     AND #$01
C - - - - - 0x00E0F4 03:A0E4: F0 03     BEQ bra_A0E9
C - - - - - 0x00E0F6 03:A0E6: A9 FF     LDA #$FF
C - - - - - 0x00E0F8 03:A0E8: 60        RTS
bra_A0E9:
C - - - - - 0x00E0F9 03:A0E9: A9 00     LDA #$00
C - - - - - 0x00E0FB 03:A0EB: 60        RTS



sub_A0EC:
C - - - - - 0x00E0FC 03:A0EC: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00E0FF 03:A0EF: 29 40     AND #$40
C - - - - - 0x00E101 03:A0F1: D0 03     BNE bra_A0F6
C - - - - - 0x00E103 03:A0F3: A9 00     LDA #$00
C - - - - - 0x00E105 03:A0F5: 60        RTS
bra_A0F6:
C - - - - - 0x00E106 03:A0F6: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E109 03:A0F9: 29 0F     AND #$0F
C - - - - - 0x00E10B 03:A0FB: CD D6 04  CMP ram_игрок_с_мячом
C - - - - - 0x00E10E 03:A0FE: D0 03     BNE bra_A103
C - - - - - 0x00E110 03:A100: A9 01     LDA #$01
C - - - - - 0x00E112 03:A102: 60        RTS
bra_A103:
C - - - - - 0x00E113 03:A103: A9 FF     LDA #$FF
C - - - - - 0x00E115 03:A105: 60        RTS



sub_A106:
C - - - - - 0x00E116 03:A106: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E119 03:A109: 48        PHA
C - - - - - 0x00E11A 03:A10A: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E11D 03:A10D: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x00E120 03:A110: 29 01     AND #$01
C - - - - - 0x00E122 03:A112: F0 06     BEQ bra_A11A
- - - - - - 0x00E124 03:A114: B9 CA 04  LDA ram_04CA,Y
- - - - - - 0x00E127 03:A117: 8D D6 04  STA ram_игрок_с_мячом
bra_A11A:
C - - - - - 0x00E12A 03:A11A: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E12D 03:A11D: A8        TAY
C - - - - - 0x00E12E 03:A11E: 29 01     AND #$01
C - - - - - 0x00E130 03:A120: F0 17     BEQ bra_A139
C - - - - - 0x00E132 03:A122: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00E135 03:A125: 49 FF     EOR #$FF
C - - - - - 0x00E137 03:A127: 18        CLC
C - - - - - 0x00E138 03:A128: 69 01     ADC #$01
C - - - - - 0x00E13A 03:A12A: 85 2C     STA ram_002C
C - - - - - 0x00E13C 03:A12C: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00E13F 03:A12F: 49 FF     EOR #$FF
C - - - - - 0x00E141 03:A131: 18        CLC
C - - - - - 0x00E142 03:A132: 69 04     ADC #$04
C - - - - - 0x00E144 03:A134: 85 2D     STA ram_002D
C - - - - - 0x00E146 03:A136: 4C 69 A1  JMP loc_A169
bra_A139:
C - - - - - 0x00E149 03:A139: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00E14C 03:A13C: 85 2C     STA ram_002C
C - - - - - 0x00E14E 03:A13E: 85 2E     STA ram_002E
C - - - - - 0x00E150 03:A140: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00E153 03:A143: 85 2D     STA ram_002D
C - - - - - 0x00E155 03:A145: 85 2F     STA ram_002F
C - - - - - 0x00E157 03:A147: B9 74 00  LDA a: ram_номер_анимации,Y
C - - - - - 0x00E15A 03:A14A: 10 10     BPL bra_A15C
C - - - - - 0x00E15C 03:A14C: A5 2E     LDA ram_002E
C - - - - - 0x00E15E 03:A14E: 38        SEC
C - - - - - 0x00E15F 03:A14F: E9 20     SBC #$20
C - - - - - 0x00E161 03:A151: 85 2E     STA ram_002E
C - - - - - 0x00E163 03:A153: A5 2F     LDA ram_002F
C - - - - - 0x00E165 03:A155: E9 00     SBC #$00
C - - - - - 0x00E167 03:A157: 85 2F     STA ram_002F
C - - - - - 0x00E169 03:A159: 4C 69 A1  JMP loc_A169
bra_A15C:
C - - - - - 0x00E16C 03:A15C: A5 2E     LDA ram_002E
C - - - - - 0x00E16E 03:A15E: 18        CLC
C - - - - - 0x00E16F 03:A15F: 69 20     ADC #$20
C - - - - - 0x00E171 03:A161: 85 2E     STA ram_002E
C - - - - - 0x00E173 03:A163: A5 2F     LDA ram_002F
C - - - - - 0x00E175 03:A165: 69 00     ADC #$00
C - - - - - 0x00E177 03:A167: 85 2F     STA ram_002F
loc_A169:
C D 1 - - - 0x00E179 03:A169: A5 2F     LDA ram_002F
C - - - - - 0x00E17B 03:A16B: F0 08     BEQ bra_A175
C - - - - - 0x00E17D 03:A16D: C9 01     CMP #$01
C - - - - - 0x00E17F 03:A16F: F0 12     BEQ bra_A183
C - - - - - 0x00E181 03:A171: C9 02     CMP #$02
C - - - - - 0x00E183 03:A173: B0 26     BCS bra_A19B
bra_A175:
C - - - - - 0x00E185 03:A175: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E188 03:A178: 29 01     AND #$01
C - - - - - 0x00E18A 03:A17A: A8        TAY
C - - - - - 0x00E18B 03:A17B: A9 0A     LDA #$0A
C - - - - - 0x00E18D 03:A17D: 20 61 82  JSR sub_8261
C - - - - - 0x00E190 03:A180: 4C 0A A2  JMP loc_A20A
bra_A183:
C - - - - - 0x00E193 03:A183: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E196 03:A186: 29 01     AND #$01
C - - - - - 0x00E198 03:A188: A8        TAY
C - - - - - 0x00E199 03:A189: A9 0C     LDA #$0C
C - - - - - 0x00E19B 03:A18B: 85 1C     STA ram_001C
C - - - - - 0x00E19D 03:A18D: 85 1D     STA ram_001D
C - - - - - 0x00E19F 03:A18F: A9 0A     LDA #$0A
C - - - - - 0x00E1A1 03:A191: 85 1E     STA ram_001E
C - - - - - 0x00E1A3 03:A193: 85 1F     STA ram_001F
C - - - - - 0x00E1A5 03:A195: 20 6B 82  JSR sub_826B
C - - - - - 0x00E1A8 03:A198: 4C 0A A2  JMP loc_A20A
bra_A19B:
C - - - - - 0x00E1AB 03:A19B: A5 2D     LDA ram_002D
C - - - - - 0x00E1AD 03:A19D: 38        SEC
C - - - - - 0x00E1AE 03:A19E: E9 02     SBC #$02
C - - - - - 0x00E1B0 03:A1A0: 10 04     BPL bra_A1A6
C - - - - - 0x00E1B2 03:A1A2: A9 00     LDA #$00
C - - - - - 0x00E1B4 03:A1A4: 85 2C     STA ram_002C
bra_A1A6:
C - - - - - 0x00E1B6 03:A1A6: 85 2D     STA ram_002D
C - - - - - 0x00E1B8 03:A1A8: A9 42     LDA #$42
C - - - - - 0x00E1BA 03:A1AA: 85 2E     STA ram_002E
C - - - - - 0x00E1BC 03:A1AC: A9 00     LDA #$00
C - - - - - 0x00E1BE 03:A1AE: 85 2F     STA ram_002F
C - - - - - 0x00E1C0 03:A1B0: 20 20 C0  JSR sub_0x01C030
C - - - - - 0x00E1C3 03:A1B3: A5 2C     LDA ram_002C
C - - - - - 0x00E1C5 03:A1B5: 85 1D     STA ram_001D
C - - - - - 0x00E1C7 03:A1B7: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00E1CA 03:A1BA: 38        SEC
C - - - - - 0x00E1CB 03:A1BB: E9 30     SBC #$30
C - - - - - 0x00E1CD 03:A1BD: 85 2C     STA ram_002C
C - - - - - 0x00E1CF 03:A1BF: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00E1D2 03:A1C2: E9 00     SBC #$00
C - - - - - 0x00E1D4 03:A1C4: 10 04     BPL bra_A1CA
- - - - - - 0x00E1D6 03:A1C6: A9 00     LDA #$00
- - - - - - 0x00E1D8 03:A1C8: 85 2C     STA ram_002C
bra_A1CA:
C - - - - - 0x00E1DA 03:A1CA: 85 2D     STA ram_002D
C - - - - - 0x00E1DC 03:A1CC: A9 00     LDA #$00
C - - - - - 0x00E1DE 03:A1CE: 85 2F     STA ram_002F
C - - - - - 0x00E1E0 03:A1D0: A9 22     LDA #$22
C - - - - - 0x00E1E2 03:A1D2: 85 2E     STA ram_002E
C - - - - - 0x00E1E4 03:A1D4: 20 20 C0  JSR sub_0x01C030
C - - - - - 0x00E1E7 03:A1D7: A4 2C     LDY ram_002C
C - - - - - 0x00E1E9 03:A1D9: B9 F2 A2  LDA tbl_A2F2,Y
C - - - - - 0x00E1EC 03:A1DC: 18        CLC
C - - - - - 0x00E1ED 03:A1DD: 65 1D     ADC ram_001D
C - - - - - 0x00E1EF 03:A1DF: 0A        ASL
C - - - - - 0x00E1F0 03:A1E0: 0A        ASL
C - - - - - 0x00E1F1 03:A1E1: 85 1D     STA ram_001D
C - - - - - 0x00E1F3 03:A1E3: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E1F6 03:A1E6: 29 01     AND #$01
C - - - - - 0x00E1F8 03:A1E8: A8        TAY
C - - - - - 0x00E1F9 03:A1E9: A5 1D     LDA ram_001D
C - - - - - 0x00E1FB 03:A1EB: B9 30 05  LDA ram_расстановка_команды,Y
C - - - - - 0x00E1FE 03:A1EE: 29 03     AND #$03
C - - - - - 0x00E200 03:A1F0: 05 1D     ORA ram_001D
C - - - - - 0x00E202 03:A1F2: 99 30 05  STA ram_расстановка_команды,Y
C - - - - - 0x00E205 03:A1F5: A9 0B     LDA #$0B
C - - - - - 0x00E207 03:A1F7: 85 1C     STA ram_001C
C - - - - - 0x00E209 03:A1F9: 85 1D     STA ram_001D
C - - - - - 0x00E20B 03:A1FB: A9 0A     LDA #$0A
C - - - - - 0x00E20D 03:A1FD: 85 1E     STA ram_001E
C - - - - - 0x00E20F 03:A1FF: 85 1F     STA ram_001F
C - - - - - 0x00E211 03:A201: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E214 03:A204: 29 01     AND #$01
C - - - - - 0x00E216 03:A206: A8        TAY
C - - - - - 0x00E217 03:A207: 20 6B 82  JSR sub_826B
loc_A20A:
C D 1 - - - 0x00E21A 03:A20A: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E21D 03:A20D: A9 0F     LDA #$0F
C - - - - - 0x00E21F 03:A20F: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E222 03:A212: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00E225 03:A215: 29 0F     AND #$0F
C - - - - - 0x00E227 03:A217: C9 06     CMP #$06
C - - - - - 0x00E229 03:A219: F0 13     BEQ bra_A22E
C - - - - - 0x00E22B 03:A21B: C9 0E     CMP #$0E
C - - - - - 0x00E22D 03:A21D: F0 0F     BEQ bra_A22E
C - - - - - 0x00E22F 03:A21F: C9 09     CMP #$09
C - - - - - 0x00E231 03:A221: F0 0B     BEQ bra_A22E
C - - - - - 0x00E233 03:A223: C9 0A     CMP #$0A
C - - - - - 0x00E235 03:A225: F0 07     BEQ bra_A22E
C - - - - - 0x00E237 03:A227: C9 0B     CMP #$0B
C - - - - - 0x00E239 03:A229: F0 03     BEQ bra_A22E
C - - - - - 0x00E23B 03:A22B: 4C 3D A2  JMP loc_A23D
bra_A22E:
C - - - - - 0x00E23E 03:A22E: BD 30 05  LDA ram_расстановка_команды,X
C - - - - - 0x00E241 03:A231: 29 FC     AND #$FC
C - - - - - 0x00E243 03:A233: 09 01     ORA #$01
C - - - - - 0x00E245 03:A235: 9D 30 05  STA ram_расстановка_команды,X
C - - - - - 0x00E248 03:A238: 8A        TXA
C - - - - - 0x00E249 03:A239: A8        TAY
C - - - - - 0x00E24A 03:A23A: 20 2D B1  JSR sub_B12D
loc_A23D:
C D 1 - - - 0x00E24D 03:A23D: BD D3 05  LDA ram_05D3,X
C - - - - - 0x00E250 03:A240: 29 0C     AND #$0C
C - - - - - 0x00E252 03:A242: C9 08     CMP #$08
C - - - - - 0x00E254 03:A244: F0 51     BEQ bra_A297
C - - - - - 0x00E256 03:A246: 20 01 A3  JSR sub_A301
C - - - - - 0x00E259 03:A249: 90 08     BCC bra_A253
C - - - - - 0x00E25B 03:A24B: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E25E 03:A24E: A9 23     LDA #$23
C - - - - - 0x00E260 03:A250: 99 5C 06  STA ram_интеллект_бота,Y
bra_A253:
C - - - - - 0x00E263 03:A253: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E266 03:A256: BD FF A2  LDA tbl_A2FF,X
C - - - - - 0x00E269 03:A259: D9 27 03  CMP ram_игрок_X_hi,Y
C - - - - - 0x00E26C 03:A25C: D0 39     BNE bra_A297
C - - - - - 0x00E26E 03:A25E: 8A        TXA
C - - - - - 0x00E26F 03:A25F: 48        PHA
C - - - - - 0x00E270 03:A260: 0A        ASL
C - - - - - 0x00E271 03:A261: 0A        ASL
C - - - - - 0x00E272 03:A262: A8        TAY
C - - - - - 0x00E273 03:A263: B9 AF 90  LDA tbl_90AF,Y
C - - - - - 0x00E276 03:A266: 85 2E     STA ram_002E
C - - - - - 0x00E278 03:A268: B9 B0 90  LDA tbl_90B0,Y
C - - - - - 0x00E27B 03:A26B: 85 2F     STA ram_002F
C - - - - - 0x00E27D 03:A26D: B9 B1 90  LDA tbl_90B1,Y
C - - - - - 0x00E280 03:A270: 85 30     STA ram_0030
C - - - - - 0x00E282 03:A272: B9 B2 90  LDA tbl_90B2,Y
C - - - - - 0x00E285 03:A275: 85 31     STA ram_0031
C - - - - - 0x00E287 03:A277: AE D6 04  LDX ram_игрок_с_мячом
C - - - - - 0x00E28A 03:A27A: 20 35 C0  JSR sub_0x01C045
C - - - - - 0x00E28D 03:A27D: 85 20     STA ram_0020
C - - - - - 0x00E28F 03:A27F: A9 10     LDA #$10
C - - - - - 0x00E291 03:A281: 85 21     STA ram_0021
C - - - - - 0x00E293 03:A283: 8A        TXA
C - - - - - 0x00E294 03:A284: 49 01     EOR #$01
C - - - - - 0x00E296 03:A286: 29 01     AND #$01
C - - - - - 0x00E298 03:A288: A8        TAY
C - - - - - 0x00E299 03:A289: 20 34 B0  JSR sub_B034
C - - - - - 0x00E29C 03:A28C: A5 2C     LDA ram_002C
C - - - - - 0x00E29E 03:A28E: 10 05     BPL bra_A295
C - - - - - 0x00E2A0 03:A290: A9 04     LDA #$04
C - - - - - 0x00E2A2 03:A292: 9D 5C 06  STA ram_интеллект_бота,X
bra_A295:
C - - - - - 0x00E2A5 03:A295: 68        PLA
C - - - - - 0x00E2A6 03:A296: AA        TAX
bra_A297:
C - - - - - 0x00E2A7 03:A297: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E2AA 03:A29A: C0 0A     CPY #$0A
C - - - - - 0x00E2AC 03:A29C: B0 08     BCS bra_A2A6
C - - - - - 0x00E2AE 03:A29E: A9 0A     LDA #$0A
C - - - - - 0x00E2B0 03:A2A0: 9D 66 06  STA ram_интеллект_бота + con_gk_id,X
C - - - - - 0x00E2B3 03:A2A3: 4C E1 A2  JMP loc_A2E1
bra_A2A6:
C - - - - - 0x00E2B6 03:A2A6: BD D3 05  LDA ram_05D3,X
C - - - - - 0x00E2B9 03:A2A9: 29 C0     AND #$C0
C - - - - - 0x00E2BB 03:A2AB: F0 2C     BEQ bra_A2D9
C - - - - - 0x00E2BD 03:A2AD: C9 80     CMP #$80
C - - - - - 0x00E2BF 03:A2AF: F0 1D     BEQ bra_A2CE
C - - - - - 0x00E2C1 03:A2B1: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E2C4 03:A2B4: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00E2C7 03:A2B7: 29 C0     AND #$C0
C - - - - - 0x00E2C9 03:A2B9: C9 80     CMP #$80
C - - - - - 0x00E2CB 03:A2BB: 90 11     BCC bra_A2CE
C - - - - - 0x00E2CD 03:A2BD: C9 C0     CMP #$C0
C - - - - - 0x00E2CF 03:A2BF: F0 08     BEQ bra_A2C9
C - - - - - 0x00E2D1 03:A2C1: 20 E6 A2  JSR sub_A2E6
C - - - - - 0x00E2D4 03:A2C4: 30 13     BMI bra_A2D9
C - - - - - 0x00E2D6 03:A2C6: 4C CE A2  JMP loc_A2CE
bra_A2C9:
C - - - - - 0x00E2D9 03:A2C9: 20 E6 A2  JSR sub_A2E6
C - - - - - 0x00E2DC 03:A2CC: 10 0B     BPL bra_A2D9
bra_A2CE:
loc_A2CE:
C D 1 - - - 0x00E2DE 03:A2CE: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E2E1 03:A2D1: A9 27     LDA #$27
C - - - - - 0x00E2E3 03:A2D3: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E2E6 03:A2D6: 4C E1 A2  JMP loc_A2E1
bra_A2D9:
C - - - - - 0x00E2E9 03:A2D9: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E2EC 03:A2DC: A9 0F     LDA #$0F
C - - - - - 0x00E2EE 03:A2DE: 99 5C 06  STA ram_интеллект_бота,Y
loc_A2E1:
C D 1 - - - 0x00E2F1 03:A2E1: 68        PLA
C - - - - - 0x00E2F2 03:A2E2: 8D D6 04  STA ram_игрок_с_мячом
C - - - - - 0x00E2F5 03:A2E5: 60        RTS



sub_A2E6:
C - - - - - 0x00E2F6 03:A2E6: 8A        TXA
C - - - - - 0x00E2F7 03:A2E7: 49 01     EOR #$01
C - - - - - 0x00E2F9 03:A2E9: A8        TAY
C - - - - - 0x00E2FA 03:A2EA: BD 2E 05  LDA ram_счет_команды,X
C - - - - - 0x00E2FD 03:A2ED: 38        SEC
C - - - - - 0x00E2FE 03:A2EE: F9 2E 05  SBC ram_счет_команды,Y
C - - - - - 0x00E301 03:A2F1: 60        RTS



tbl_A2F2:
- D 1 - - - 0x00E302 03:A2F2: 00        .byte $00   ; 
- D 1 - - - 0x00E303 03:A2F3: 06        .byte $06   ; 
- D 1 - - - 0x00E304 03:A2F4: 0C        .byte $0C   ; 
- D 1 - - - 0x00E305 03:A2F5: 12        .byte $12   ; 
- D 1 - - - 0x00E306 03:A2F6: 18        .byte $18   ; 
- D 1 - - - 0x00E307 03:A2F7: 1E        .byte $1E   ; 
- D 1 - - - 0x00E308 03:A2F8: 24        .byte $24   ; 
- D 1 - - - 0x00E309 03:A2F9: 2A        .byte $2A   ; 
- D 1 - - - 0x00E30A 03:A2FA: 30        .byte $30   ; 



tbl_A2FB:
- D 1 - - - 0x00E30B 03:A2FB: 40        .byte $40   ; 
- D 1 - - - 0x00E30C 03:A2FC: 40        .byte $40   ; 
- D 1 - - - 0x00E30D 03:A2FD: 80        .byte $80   ; 
- D 1 - - - 0x00E30E 03:A2FE: A0        .byte $A0   ; 



tbl_A2FF:
- D 1 - - - 0x00E30F 03:A2FF: 03        .byte $03   ; 
- D 1 - - - 0x00E310 03:A300: 00        .byte $00   ; 



sub_A301:
C - - - - - 0x00E311 03:A301: 8A        TXA
C - - - - - 0x00E312 03:A302: 48        PHA
C - - - - - 0x00E313 03:A303: 0A        ASL
C - - - - - 0x00E314 03:A304: 0A        ASL
C - - - - - 0x00E315 03:A305: AA        TAX
C - - - - - 0x00E316 03:A306: BD AF 90  LDA tbl_90AF,X
C - - - - - 0x00E319 03:A309: 85 2E     STA ram_002E
C - - - - - 0x00E31B 03:A30B: BD B0 90  LDA tbl_90B0,X
C - - - - - 0x00E31E 03:A30E: 85 2F     STA ram_002F
C - - - - - 0x00E320 03:A310: BD B1 90  LDA tbl_90B1,X
C - - - - - 0x00E323 03:A313: 85 30     STA ram_0030
C - - - - - 0x00E325 03:A315: BD B2 90  LDA tbl_90B2,X
C - - - - - 0x00E328 03:A318: 85 31     STA ram_0031
C - - - - - 0x00E32A 03:A31A: 98        TYA
C - - - - - 0x00E32B 03:A31B: AA        TAX
C - - - - - 0x00E32C 03:A31C: 20 35 C0  JSR sub_0x01C045
C - - - - - 0x00E32F 03:A31F: 85 1C     STA ram_001C
C - - - - - 0x00E331 03:A321: 68        PLA
C - - - - - 0x00E332 03:A322: AA        TAX
C - - - - - 0x00E333 03:A323: F0 09     BEQ bra_A32E
C - - - - - 0x00E335 03:A325: A5 1C     LDA ram_001C
C - - - - - 0x00E337 03:A327: 49 FF     EOR #$FF
C - - - - - 0x00E339 03:A329: 18        CLC
C - - - - - 0x00E33A 03:A32A: 69 01     ADC #$01
C - - - - - 0x00E33C 03:A32C: 85 1C     STA ram_001C
bra_A32E:
C - - - - - 0x00E33E 03:A32E: A5 1C     LDA ram_001C
C - - - - - 0x00E340 03:A330: C9 18     CMP #$18
C - - - - - 0x00E342 03:A332: 90 66     BCC bra_A39A
C - - - - - 0x00E344 03:A334: C9 68     CMP #$68
C - - - - - 0x00E346 03:A336: B0 62     BCS bra_A39A
C - - - - - 0x00E348 03:A338: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E34B 03:A33B: 98        TYA
C - - - - - 0x00E34C 03:A33C: 29 01     AND #$01
C - - - - - 0x00E34E 03:A33E: D0 12     BNE bra_A352
C - - - - - 0x00E350 03:A340: A9 88     LDA #$88
C - - - - - 0x00E352 03:A342: 38        SEC
C - - - - - 0x00E353 03:A343: F9 14 03  SBC ram_игрок_X_lo,Y
C - - - - - 0x00E356 03:A346: 85 1C     STA ram_001C
C - - - - - 0x00E358 03:A348: A9 03     LDA #$03
C - - - - - 0x00E35A 03:A34A: F9 27 03  SBC ram_игрок_X_hi,Y
C - - - - - 0x00E35D 03:A34D: D0 4B     BNE bra_A39A
C - - - - - 0x00E35F 03:A34F: 4C 61 A3  JMP loc_A361
bra_A352:
C - - - - - 0x00E362 03:A352: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00E365 03:A355: 38        SEC
C - - - - - 0x00E366 03:A356: E9 78     SBC #$78
C - - - - - 0x00E368 03:A358: 85 1C     STA ram_001C
C - - - - - 0x00E36A 03:A35A: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00E36D 03:A35D: E9 00     SBC #$00
C - - - - - 0x00E36F 03:A35F: D0 39     BNE bra_A39A
loc_A361:
C D 1 - - - 0x00E371 03:A361: A5 1C     LDA ram_001C
C - - - - - 0x00E373 03:A363: 49 FF     EOR #$FF
C - - - - - 0x00E375 03:A365: 18        CLC
C - - - - - 0x00E376 03:A366: 69 01     ADC #$01
C - - - - - 0x00E378 03:A368: 85 1C     STA ram_001C
C - - - - - 0x00E37A 03:A36A: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x00E37D 03:A36D: 10 0A     BPL bra_A379
C - - - - - 0x00E37F 03:A36F: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00E382 03:A372: 0A        ASL
C - - - - - 0x00E383 03:A373: 18        CLC
C - - - - - 0x00E384 03:A374: A9 FF     LDA #$FF
C - - - - - 0x00E386 03:A376: 4C 7C A3  JMP loc_A37C
bra_A379:
C - - - - - 0x00E389 03:A379: AD 45 00  LDA a: ram_рандом
loc_A37C:
C D 1 - - - 0x00E38C 03:A37C: 85 1D     STA ram_001D
C - - - - - 0x00E38E 03:A37E: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00E391 03:A381: 4A        LSR
C - - - - - 0x00E392 03:A382: 4A        LSR
C - - - - - 0x00E393 03:A383: 4A        LSR
C - - - - - 0x00E394 03:A384: 4A        LSR
C - - - - - 0x00E395 03:A385: 4A        LSR
C - - - - - 0x00E396 03:A386: 4A        LSR
C - - - - - 0x00E397 03:A387: A8        TAY
C - - - - - 0x00E398 03:A388: A5 1C     LDA ram_001C
C - - - - - 0x00E39A 03:A38A: 18        CLC
C - - - - - 0x00E39B 03:A38B: 79 FB A2  ADC tbl_A2FB,Y
C - - - - - 0x00E39E 03:A38E: B0 08     BCS bra_A398
C - - - - - 0x00E3A0 03:A390: 18        CLC
C - - - - - 0x00E3A1 03:A391: 65 1D     ADC ram_001D
C - - - - - 0x00E3A3 03:A393: B0 03     BCS bra_A398
C - - - - - 0x00E3A5 03:A395: 4C 9A A3  JMP loc_A39A
bra_A398:
C - - - - - 0x00E3A8 03:A398: 38        SEC
C - - - - - 0x00E3A9 03:A399: 60        RTS
bra_A39A:
loc_A39A:
C D 1 - - - 0x00E3AA 03:A39A: 18        CLC
C - - - - - 0x00E3AB 03:A39B: 60        RTS



sub_A39C:
C - - - - - 0x00E3AC 03:A39C: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E3AF 03:A39F: C0 0A     CPY #$0A
C - - - - - 0x00E3B1 03:A3A1: 90 08     BCC bra_A3AB
C - - - - - 0x00E3B3 03:A3A3: B9 7C 06  LDA ram_067C,Y
C - - - - - 0x00E3B6 03:A3A6: 30 03     BMI bra_A3AB
C - - - - - 0x00E3B8 03:A3A8: 4C 89 A5  JMP loc_A589
bra_A3AB:
C - - - - - 0x00E3BB 03:A3AB: A9 00     LDA #$00
C - - - - - 0x00E3BD 03:A3AD: 85 1C     STA ram_001C
C - - - - - 0x00E3BF 03:A3AF: 85 1D     STA ram_001D
C - - - - - 0x00E3C1 03:A3B1: A9 0D     LDA #$0D
C - - - - - 0x00E3C3 03:A3B3: 85 1F     STA ram_001F
C - - - - - 0x00E3C5 03:A3B5: A9 22     LDA #$22
C - - - - - 0x00E3C7 03:A3B7: 85 1E     STA ram_001E
C - - - - - 0x00E3C9 03:A3B9: 8A        TXA
C - - - - - 0x00E3CA 03:A3BA: A8        TAY
C - - - - - 0x00E3CB 03:A3BB: 20 6B 82  JSR sub_826B
C - - - - - 0x00E3CE 03:A3BE: 8A        TXA
C - - - - - 0x00E3CF 03:A3BF: A8        TAY
C - - - - - 0x00E3D0 03:A3C0: 48        PHA
C - - - - - 0x00E3D1 03:A3C1: AE D6 04  LDX ram_игрок_с_мячом
C - - - - - 0x00E3D4 03:A3C4: A9 80     LDA #$80
C - - - - - 0x00E3D6 03:A3C6: 85 21     STA ram_0021
C - - - - - 0x00E3D8 03:A3C8: 20 34 B0  JSR sub_B034
C - - - - - 0x00E3DB 03:A3CB: A5 2C     LDA ram_002C
C - - - - - 0x00E3DD 03:A3CD: 30 0D     BMI bra_A3DC
C - - - - - 0x00E3DF 03:A3CF: C9 0A     CMP #$0A
C - - - - - 0x00E3E1 03:A3D1: B0 09     BCS bra_A3DC
C - - - - - 0x00E3E3 03:A3D3: A5 2E     LDA ram_002E
C - - - - - 0x00E3E5 03:A3D5: C9 40     CMP #$40
C - - - - - 0x00E3E7 03:A3D7: B0 03     BCS bra_A3DC
C - - - - - 0x00E3E9 03:A3D9: 20 A8 A4  JSR sub_A4A8
bra_A3DC:
C - - - - - 0x00E3EC 03:A3DC: 68        PLA
C - - - - - 0x00E3ED 03:A3DD: AA        TAX
C - - - - - 0x00E3EE 03:A3DE: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E3F1 03:A3E1: 20 20 A5  JSR sub_A520
C - - - - - 0x00E3F4 03:A3E4: A5 1C     LDA ram_001C
C - - - - - 0x00E3F6 03:A3E6: C9 FF     CMP #$FF
C - - - - - 0x00E3F8 03:A3E8: F0 1E     BEQ bra_A408
C - - - - - 0x00E3FA 03:A3EA: 8A        TXA
C - - - - - 0x00E3FB 03:A3EB: 48        PHA
C - - - - - 0x00E3FC 03:A3EC: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E3FF 03:A3EF: AA        TAX
C - - - - - 0x00E400 03:A3F0: 49 01     EOR #$01
C - - - - - 0x00E402 03:A3F2: 29 01     AND #$01
C - - - - - 0x00E404 03:A3F4: A8        TAY
C - - - - - 0x00E405 03:A3F5: A5 1C     LDA ram_001C
C - - - - - 0x00E407 03:A3F7: 85 20     STA ram_0020
C - - - - - 0x00E409 03:A3F9: A9 50     LDA #$50
C - - - - - 0x00E40B 03:A3FB: 85 21     STA ram_0021
C - - - - - 0x00E40D 03:A3FD: 20 34 B0  JSR sub_B034
C - - - - - 0x00E410 03:A400: 68        PLA
C - - - - - 0x00E411 03:A401: AA        TAX
C - - - - - 0x00E412 03:A402: A5 2C     LDA ram_002C
C - - - - - 0x00E414 03:A404: C9 0A     CMP #$0A
C - - - - - 0x00E416 03:A406: 90 16     BCC bra_A41E
bra_A408:
C - - - - - 0x00E418 03:A408: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E41B 03:A40B: 85 22     STA ram_0022
C - - - - - 0x00E41D 03:A40D: 86 23     STX ram_0023
C - - - - - 0x00E41F 03:A40F: A9 05     LDA #$05
C - - - - - 0x00E421 03:A411: 85 27     STA ram_0027
C - - - - - 0x00E423 03:A413: A9 09     LDA #$09
C - - - - - 0x00E425 03:A415: 85 28     STA ram_0028
C - - - - - 0x00E427 03:A417: A9 02     LDA #$02
C - - - - - 0x00E429 03:A419: 85 29     STA ram_0029
C - - - - - 0x00E42B 03:A41B: 20 3E C0  JSR sub_0x01C04E
bra_A41E:
C - - - - - 0x00E42E 03:A41E: 20 A8 A4  JSR sub_A4A8
C - - - - - 0x00E431 03:A421: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E434 03:A424: 49 01     EOR #$01
C - - - - - 0x00E436 03:A426: 29 01     AND #$01
C - - - - - 0x00E438 03:A428: A8        TAY
bra_A429:
C - - - - - 0x00E439 03:A429: B9 5C 06  LDA ram_интеллект_бота,Y
; bzk опт
C - - - - - 0x00E43C 03:A42C: C9 00     CMP #$00
C - - - - - 0x00E43E 03:A42E: D0 0C     BNE bra_A43C
C - - - - - 0x00E440 03:A430: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00E443 03:A433: 29 30     AND #$30
C - - - - - 0x00E445 03:A435: D0 05     BNE bra_A43C
C - - - - - 0x00E447 03:A437: A9 0A     LDA #$0A
C - - - - - 0x00E449 03:A439: 99 5C 06  STA ram_интеллект_бота,Y
bra_A43C:
C - - - - - 0x00E44C 03:A43C: C8        INY
C - - - - - 0x00E44D 03:A43D: C8        INY
C - - - - - 0x00E44E 03:A43E: C0 0A     CPY #$0A
C - - - - - 0x00E450 03:A440: 90 E7     BCC bra_A429
C - - - - - 0x00E452 03:A442: BD 30 05  LDA ram_расстановка_команды,X
C - - - - - 0x00E455 03:A445: 29 03     AND #$03
C - - - - - 0x00E457 03:A447: C9 01     CMP #$01
C - - - - - 0x00E459 03:A449: D0 05     BNE bra_A450
C - - - - - 0x00E45B 03:A44B: A9 2A     LDA #$2A
C - - - - - 0x00E45D 03:A44D: 9D 64 06  STA ram_интеллект_бота + $08,X
bra_A450:
C - - - - - 0x00E460 03:A450: 8A        TXA
C - - - - - 0x00E461 03:A451: 48        PHA
C - - - - - 0x00E462 03:A452: 18        CLC
C - - - - - 0x00E463 03:A453: 69 0A     ADC #$0A
C - - - - - 0x00E465 03:A455: AA        TAX
C - - - - - 0x00E466 03:A456: 49 01     EOR #$01
C - - - - - 0x00E468 03:A458: 29 01     AND #$01
C - - - - - 0x00E46A 03:A45A: A8        TAY
C - - - - - 0x00E46B 03:A45B: B9 74 06  LDA ram_номер_ближайшего,Y
C - - - - - 0x00E46E 03:A45E: A8        TAY
C - - - - - 0x00E46F 03:A45F: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00E472 03:A462: 85 1C     STA ram_001C
C - - - - - 0x00E474 03:A464: 8A        TXA
C - - - - - 0x00E475 03:A465: A8        TAY
C - - - - - 0x00E476 03:A466: 68        PLA
C - - - - - 0x00E477 03:A467: AA        TAX
C - - - - - 0x00E478 03:A468: 20 4C 9B  JSR sub_9B4C
C - - - - - 0x00E47B 03:A46B: B9 97 A5  LDA tbl_A597,Y
C - - - - - 0x00E47E 03:A46E: C5 1C     CMP ram_001C
C - - - - - 0x00E480 03:A470: 90 05     BCC bra_A477
C - - - - - 0x00E482 03:A472: A9 28     LDA #$28
C - - - - - 0x00E484 03:A474: 4C 79 A4  JMP loc_A479
bra_A477:
C - - - - - 0x00E487 03:A477: A9 0D     LDA #$0D
loc_A479:
C D 1 - - - 0x00E489 03:A479: 9D 66 06  STA ram_интеллект_бота + con_gk_id,X
C - - - - - 0x00E48C 03:A47C: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00E48F 03:A47F: 29 0F     AND #$0F
C - - - - - 0x00E491 03:A481: C9 06     CMP #$06
C - - - - - 0x00E493 03:A483: F0 13     BEQ bra_A498
C - - - - - 0x00E495 03:A485: C9 0E     CMP #$0E
C - - - - - 0x00E497 03:A487: F0 0F     BEQ bra_A498
C - - - - - 0x00E499 03:A489: C9 09     CMP #$09
C - - - - - 0x00E49B 03:A48B: F0 0B     BEQ bra_A498
C - - - - - 0x00E49D 03:A48D: C9 0A     CMP #$0A
C - - - - - 0x00E49F 03:A48F: F0 07     BEQ bra_A498
C - - - - - 0x00E4A1 03:A491: C9 0B     CMP #$0B
C - - - - - 0x00E4A3 03:A493: F0 03     BEQ bra_A498
C - - - - - 0x00E4A5 03:A495: 4C A7 A4  JMP loc_A4A7_RTS
bra_A498:
C - - - - - 0x00E4A8 03:A498: BD 30 05  LDA ram_расстановка_команды,X
C - - - - - 0x00E4AB 03:A49B: 29 FC     AND #$FC
C - - - - - 0x00E4AD 03:A49D: 09 02     ORA #$02
C - - - - - 0x00E4AF 03:A49F: 9D 30 05  STA ram_расстановка_команды,X
C - - - - - 0x00E4B2 03:A4A2: 8A        TXA
C - - - - - 0x00E4B3 03:A4A3: A8        TAY
C - - - - - 0x00E4B4 03:A4A4: 20 2D B1  JSR sub_B12D
loc_A4A7_RTS:
C D 1 - - - 0x00E4B7 03:A4A7: 60        RTS



sub_A4A8:
C - - - - - 0x00E4B8 03:A4A8: A5 2C     LDA ram_002C
C - - - - - 0x00E4BA 03:A4AA: 29 01     AND #$01
C - - - - - 0x00E4BC 03:A4AC: A8        TAY
C - - - - - 0x00E4BD 03:A4AD: B9 D3 05  LDA ram_05D3,Y
C - - - - - 0x00E4C0 03:A4B0: 29 30     AND #$30
C - - - - - 0x00E4C2 03:A4B2: F0 07     BEQ bra_A4BB
C - - - - - 0x00E4C4 03:A4B4: C9 10     CMP #$10
C - - - - - 0x00E4C6 03:A4B6: F0 19     BEQ bra_A4D1
- - - - - - 0x00E4C8 03:A4B8: 4C DE A4  JMP loc_A4DE
bra_A4BB:
C - - - - - 0x00E4CB 03:A4BB: A4 2C     LDY ram_002C
C - - - - - 0x00E4CD 03:A4BD: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00E4D0 03:A4C0: C9 C0     CMP #$C0
C - - - - - 0x00E4D2 03:A4C2: 90 05     BCC bra_A4C9
C - - - - - 0x00E4D4 03:A4C4: A9 08     LDA #$08
C - - - - - 0x00E4D6 03:A4C6: 4C CB A4  JMP loc_A4CB
bra_A4C9:
C - - - - - 0x00E4D9 03:A4C9: A9 09     LDA #$09
loc_A4CB:
C D 1 - - - 0x00E4DB 03:A4CB: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E4DE 03:A4CE: 4C 1F A5  JMP loc_A51F_RTS
bra_A4D1:
C - - - - - 0x00E4E1 03:A4D1: A4 2C     LDY ram_002C
C - - - - - 0x00E4E3 03:A4D3: B9 FD 04  LDA ram_защита_поведение,Y
C - - - - - 0x00E4E6 03:A4D6: 29 C0     AND #$C0
C - - - - - 0x00E4E8 03:A4D8: F0 E1     BEQ bra_A4BB
C - - - - - 0x00E4EA 03:A4DA: C9 C0     CMP #$C0
C - - - - - 0x00E4EC 03:A4DC: F0 DD     BEQ bra_A4BB
loc_A4DE:
C - - - - - 0x00E4EE 03:A4DE: BD D3 05  LDA ram_05D3,X
C - - - - - 0x00E4F1 03:A4E1: 29 30     AND #$30
C - - - - - 0x00E4F3 03:A4E3: C9 20     CMP #$20
C - - - - - 0x00E4F5 03:A4E5: F0 0E     BEQ bra_A4F5
C - - - - - 0x00E4F7 03:A4E7: AD 00 03  LDA ram_frm_cnt
C - - - - - 0x00E4FA 03:A4EA: 29 60     AND #$60
C - - - - - 0x00E4FC 03:A4EC: C9 60     CMP #$60
C - - - - - 0x00E4FE 03:A4EE: D0 05     BNE bra_A4F5
bra_A4F0:
C - - - - - 0x00E500 03:A4F0: A9 09     LDA #$09
C - - - - - 0x00E502 03:A4F2: 4C 1A A5  JMP loc_A51A
bra_A4F5:
C - - - - - 0x00E505 03:A4F5: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E508 03:A4F8: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00E50B 03:A4FB: 85 1C     STA ram_001C
C - - - - - 0x00E50D 03:A4FD: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E510 03:A500: 29 01     AND #$01
C - - - - - 0x00E512 03:A502: A8        TAY
C - - - - - 0x00E513 03:A503: B9 87 A5  LDA tbl_A587,Y
C - - - - - 0x00E516 03:A506: C5 1C     CMP ram_001C
C - - - - - 0x00E518 03:A508: F0 05     BEQ bra_A50F
C - - - - - 0x00E51A 03:A50A: A9 20     LDA #$20
C - - - - - 0x00E51C 03:A50C: 4C 1A A5  JMP loc_A51A
bra_A50F:
C - - - - - 0x00E51F 03:A50F: AD D3 05  LDA ram_05D3
C - - - - - 0x00E522 03:A512: 29 30     AND #$30
C - - - - - 0x00E524 03:A514: C9 10     CMP #$10
C - - - - - 0x00E526 03:A516: F0 D8     BEQ bra_A4F0
- - - - - - 0x00E528 03:A518: A9 07     LDA #$07
loc_A51A:
C D 1 - - - 0x00E52A 03:A51A: A4 2C     LDY ram_002C
C - - - - - 0x00E52C 03:A51C: 99 5C 06  STA ram_интеллект_бота,Y
loc_A51F_RTS:
C D 1 - - - 0x00E52F 03:A51F: 60        RTS



sub_A520:
C - - - - - 0x00E530 03:A520: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00E533 03:A523: 19 E8 03  ORA ram_игрок_spd_X_lo,Y
C - - - - - 0x00E536 03:A526: 19 12 04  ORA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00E539 03:A529: 19 04 04  ORA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00E53C 03:A52C: D0 05     BNE bra_A533
C - - - - - 0x00E53E 03:A52E: A9 FF     LDA #$FF
loc_A530:
C D 1 - - - 0x00E540 03:A530: 85 1C     STA ram_001C
C - - - - - 0x00E542 03:A532: 60        RTS
bra_A533:
C - - - - - 0x00E543 03:A533: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00E546 03:A536: 19 E8 03  ORA ram_игрок_spd_X_lo,Y
C - - - - - 0x00E549 03:A539: F0 3D     BEQ bra_A578
C - - - - - 0x00E54B 03:A53B: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00E54E 03:A53E: 10 1C     BPL bra_A55C
C - - - - - 0x00E550 03:A540: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00E553 03:A543: 19 04 04  ORA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00E556 03:A546: F0 0F     BEQ bra_A557
C - - - - - 0x00E558 03:A548: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00E55B 03:A54B: 10 05     BPL bra_A552
C - - - - - 0x00E55D 03:A54D: A9 E0     LDA #$E0
C - - - - - 0x00E55F 03:A54F: 4C 30 A5  JMP loc_A530
bra_A552:
C - - - - - 0x00E562 03:A552: A9 A0     LDA #$A0
C - - - - - 0x00E564 03:A554: 4C 30 A5  JMP loc_A530
bra_A557:
C - - - - - 0x00E567 03:A557: A9 C0     LDA #$C0
C - - - - - 0x00E569 03:A559: 4C 30 A5  JMP loc_A530
bra_A55C:
C - - - - - 0x00E56C 03:A55C: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00E56F 03:A55F: 19 04 04  ORA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00E572 03:A562: F0 0F     BEQ bra_A573
C - - - - - 0x00E574 03:A564: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00E577 03:A567: 10 05     BPL bra_A56E
C - - - - - 0x00E579 03:A569: A9 20     LDA #$20
C - - - - - 0x00E57B 03:A56B: 4C 30 A5  JMP loc_A530
bra_A56E:
C - - - - - 0x00E57E 03:A56E: A9 60     LDA #$60
C - - - - - 0x00E580 03:A570: 4C 30 A5  JMP loc_A530
bra_A573:
C - - - - - 0x00E583 03:A573: A9 40     LDA #$40
C - - - - - 0x00E585 03:A575: 4C 30 A5  JMP loc_A530
bra_A578:
C - - - - - 0x00E588 03:A578: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00E58B 03:A57B: 10 05     BPL bra_A582
C - - - - - 0x00E58D 03:A57D: A9 00     LDA #$00
C - - - - - 0x00E58F 03:A57F: 4C 30 A5  JMP loc_A530
bra_A582:
C - - - - - 0x00E592 03:A582: A9 80     LDA #$80
C - - - - - 0x00E594 03:A584: 4C 30 A5  JMP loc_A530



tbl_A587:
- D 1 - - - 0x00E597 03:A587: 03        .byte $03   ; 
- D 1 - - - 0x00E598 03:A588: 00        .byte $00   ; 



loc_A589:
C D 1 - - - 0x00E599 03:A589: 8A        TXA
C - - - - - 0x00E59A 03:A58A: A8        TAY
C - - - - - 0x00E59B 03:A58B: A9 0A     LDA #$0A
bra_A58D:
C - - - - - 0x00E59D 03:A58D: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E5A0 03:A590: C8        INY
C - - - - - 0x00E5A1 03:A591: C8        INY
C - - - - - 0x00E5A2 03:A592: C0 0A     CPY #$0A
C - - - - - 0x00E5A4 03:A594: 90 F7     BCC bra_A58D
C - - - - - 0x00E5A6 03:A596: 60        RTS



tbl_A597:
- D 1 - - - 0x00E5A7 03:A597: 30        .byte $30   ; 
- D 1 - - - 0x00E5A8 03:A598: 28        .byte $28   ; 
- D 1 - - - 0x00E5A9 03:A599: 38        .byte $38   ; 
- D 1 - - - 0x00E5AA 03:A59A: 40        .byte $40   ; 



sub_A59B:
C - - - - - 0x00E5AB 03:A59B: 8A        TXA
C - - - - - 0x00E5AC 03:A59C: A8        TAY
C - - - - - 0x00E5AD 03:A59D: A9 0A     LDA #$0A
bra_A59F:
C - - - - - 0x00E5AF 03:A59F: 99 5C 06  STA ram_интеллект_бота,Y
C - - - - - 0x00E5B2 03:A5A2: C8        INY
C - - - - - 0x00E5B3 03:A5A3: C8        INY
C - - - - - 0x00E5B4 03:A5A4: C0 0C     CPY #$0C
C - - - - - 0x00E5B6 03:A5A6: 90 F7     BCC bra_A59F
C - - - - - 0x00E5B8 03:A5A8: A0 0C     LDY #$0C
C - - - - - 0x00E5BA 03:A5AA: AD 24 05  LDA ram_0524
C - - - - - 0x00E5BD 03:A5AD: 85 1C     STA ram_001C
C - - - - - 0x00E5BF 03:A5AF: 20 D0 98  JSR sub_98D0
C - - - - - 0x00E5C2 03:A5B2: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00E5C5 03:A5B5: 48        PHA
C - - - - - 0x00E5C6 03:A5B6: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00E5C9 03:A5B9: 48        PHA
C - - - - - 0x00E5CA 03:A5BA: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00E5CD 03:A5BD: 48        PHA
C - - - - - 0x00E5CE 03:A5BE: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00E5D1 03:A5C1: 48        PHA
C - - - - - 0x00E5D2 03:A5C2: 20 94 81  JSR sub_8194
C - - - - - 0x00E5D5 03:A5C5: A9 0C     LDA #$0C
C - - - - - 0x00E5D7 03:A5C7: 85 22     STA ram_0022
C - - - - - 0x00E5D9 03:A5C9: 8A        TXA
C - - - - - 0x00E5DA 03:A5CA: 85 23     STA ram_0023
C - - - - - 0x00E5DC 03:A5CC: A9 09     LDA #$09
C - - - - - 0x00E5DE 03:A5CE: 85 28     STA ram_0028
C - - - - - 0x00E5E0 03:A5D0: A9 02     LDA #$02
C - - - - - 0x00E5E2 03:A5D2: 85 29     STA ram_0029
C - - - - - 0x00E5E4 03:A5D4: A9 05     LDA #$05
C - - - - - 0x00E5E6 03:A5D6: 85 27     STA ram_0027
C - - - - - 0x00E5E8 03:A5D8: 20 3E C0  JSR sub_0x01C04E
C - - - - - 0x00E5EB 03:A5DB: 20 1F 82  JSR sub_821F
C - - - - - 0x00E5EE 03:A5DE: 84 1C     STY ram_001C
C - - - - - 0x00E5F0 03:A5E0: 68        PLA
C - - - - - 0x00E5F1 03:A5E1: 8D 6C 03  STA ram_мяч_Y_hi
C - - - - - 0x00E5F4 03:A5E4: 68        PLA
C - - - - - 0x00E5F5 03:A5E5: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00E5F8 03:A5E8: 68        PLA
C - - - - - 0x00E5F9 03:A5E9: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00E5FC 03:A5EC: 68        PLA
C - - - - - 0x00E5FD 03:A5ED: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00E600 03:A5F0: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00E603 03:A5F3: 48        PHA
C - - - - - 0x00E604 03:A5F4: A5 1C     LDA ram_001C
C - - - - - 0x00E606 03:A5F6: 8D D6 04  STA ram_игрок_с_мячом
C - - - - - 0x00E609 03:A5F9: 20 01 A3  JSR sub_A301
C - - - - - 0x00E60C 03:A5FC: 90 11     BCC bra_A60F
C - - - - - 0x00E60E 03:A5FE: BD D3 05  LDA ram_05D3,X
C - - - - - 0x00E611 03:A601: 29 0C     AND #$0C
C - - - - - 0x00E613 03:A603: C9 08     CMP #$08
C - - - - - 0x00E615 03:A605: F0 08     BEQ bra_A60F
C - - - - - 0x00E617 03:A607: A9 25     LDA #$25
C - - - - - 0x00E619 03:A609: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x00E61C 03:A60C: 99 5C 06  STA ram_интеллект_бота,Y
bra_A60F:
C - - - - - 0x00E61F 03:A60F: 68        PLA
C - - - - - 0x00E620 03:A610: 8D D6 04  STA ram_игрок_с_мячом
C - - - - - 0x00E623 03:A613: 8A        TXA
C - - - - - 0x00E624 03:A614: 49 01     EOR #$01
C - - - - - 0x00E626 03:A616: A8        TAY
C - - - - - 0x00E627 03:A617: B9 74 06  LDA ram_номер_ближайшего,Y
C - - - - - 0x00E62A 03:A61A: 84 44     STY ram_0044
C - - - - - 0x00E62C 03:A61C: A8        TAY
C - - - - - 0x00E62D 03:A61D: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x00E630 03:A620: 10 47     BPL bra_A669
C - - - - - 0x00E632 03:A622: B9 59 04  LDA ram_игрок_номер_движения,Y
C - - - - - 0x00E635 03:A625: 29 7F     AND #$7F
C - - - - - 0x00E637 03:A627: C9 32     CMP #$32
C - - - - - 0x00E639 03:A629: F0 1A     BEQ bra_A645
C - - - - - 0x00E63B 03:A62B: C9 33     CMP #$33
C - - - - - 0x00E63D 03:A62D: F0 16     BEQ bra_A645
C - - - - - 0x00E63F 03:A62F: C9 34     CMP #$34
C - - - - - 0x00E641 03:A631: F0 12     BEQ bra_A645
C - - - - - 0x00E643 03:A633: A4 44     LDY ram_0044
C - - - - - 0x00E645 03:A635: B9 76 06  LDA ram_дистанция_ближайшего,Y
C - - - - - 0x00E648 03:A638: C9 20     CMP #$20
C - - - - - 0x00E64A 03:A63A: B0 2D     BCS bra_A669
C - - - - - 0x00E64C 03:A63C: AD 24 05  LDA ram_0524
C - - - - - 0x00E64F 03:A63F: F0 28     BEQ bra_A669
C - - - - - 0x00E651 03:A641: C9 10     CMP #$10
C - - - - - 0x00E653 03:A643: B0 24     BCS bra_A669
bra_A645:
C - - - - - 0x00E655 03:A645: 8A        TXA
C - - - - - 0x00E656 03:A646: 49 01     EOR #$01
C - - - - - 0x00E658 03:A648: A8        TAY
C - - - - - 0x00E659 03:A649: B9 74 06  LDA ram_номер_ближайшего,Y
C - - - - - 0x00E65C 03:A64C: A8        TAY
C - - - - - 0x00E65D 03:A64D: B9 76 06  LDA ram_дистанция_ближайшего,Y
C - - - - - 0x00E660 03:A650: C9 30     CMP #$30
C - - - - - 0x00E662 03:A652: B0 15     BCS bra_A669
C - - - - - 0x00E664 03:A654: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00E667 03:A657: D0 10     BNE bra_A669
C - - - - - 0x00E669 03:A659: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00E66C 03:A65C: C9 90     CMP #$90
C - - - - - 0x00E66E 03:A65E: 90 09     BCC bra_A669
C - - - - - 0x00E670 03:A660: C9 F0     CMP #$F0
C - - - - - 0x00E672 03:A662: B0 05     BCS bra_A669
C - - - - - 0x00E674 03:A664: A9 28     LDA #$28
C - - - - - 0x00E676 03:A666: 4C 90 A7  JMP loc_A790
bra_A669:
C - - - - - 0x00E679 03:A669: AD 65 04  LDA ram_мяч_номер_движения
C - - - - - 0x00E67C 03:A66C: 29 7F     AND #$7F
C - - - - - 0x00E67E 03:A66E: C9 05     CMP #$05
C - - - - - 0x00E680 03:A670: F0 6E     BEQ bra_A6E0
C - - - - - 0x00E682 03:A672: AD 02 04  LDA ram_мяч_spd_X_hi
C - - - - - 0x00E685 03:A675: 10 05     BPL bra_A67C
C - - - - - 0x00E687 03:A677: 49 FF     EOR #$FF
C - - - - - 0x00E689 03:A679: 18        CLC
C - - - - - 0x00E68A 03:A67A: 69 01     ADC #$01
bra_A67C:
C - - - - - 0x00E68C 03:A67C: C9 04     CMP #$04
C - - - - - 0x00E68E 03:A67E: B0 60     BCS bra_A6E0
C - - - - - 0x00E690 03:A680: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00E693 03:A683: 10 06     BPL bra_A68B
C - - - - - 0x00E695 03:A685: AD 24 05  LDA ram_0524
C - - - - - 0x00E698 03:A688: 4C 8D A6  JMP loc_A68D
bra_A68B:
C - - - - - 0x00E69B 03:A68B: A9 00     LDA #$00
loc_A68D:
C D 1 - - - 0x00E69D 03:A68D: 85 1C     STA ram_001C
C - - - - - 0x00E69F 03:A68F: A0 0C     LDY #$0C
C - - - - - 0x00E6A1 03:A691: 20 D0 98  JSR sub_98D0
C - - - - - 0x00E6A4 03:A694: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00E6A7 03:A697: 48        PHA
C - - - - - 0x00E6A8 03:A698: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00E6AB 03:A69B: 48        PHA
C - - - - - 0x00E6AC 03:A69C: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00E6AF 03:A69F: 48        PHA
C - - - - - 0x00E6B0 03:A6A0: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00E6B3 03:A6A3: 48        PHA
C - - - - - 0x00E6B4 03:A6A4: 20 94 81  JSR sub_8194
C - - - - - 0x00E6B7 03:A6A7: A0 0C     LDY #$0C
C - - - - - 0x00E6B9 03:A6A9: 20 D7 B0  JSR sub_B0D7
C - - - - - 0x00E6BC 03:A6AC: 85 1C     STA ram_001C
C - - - - - 0x00E6BE 03:A6AE: E4 1C     CPX ram_001C
C - - - - - 0x00E6C0 03:A6B0: D0 1B     BNE bra_A6CD
C - - - - - 0x00E6C2 03:A6B2: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00E6C5 03:A6B5: F0 0A     BEQ bra_A6C1
C - - - - - 0x00E6C7 03:A6B7: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00E6CA 03:A6BA: C9 20     CMP #$20
C - - - - - 0x00E6CC 03:A6BC: B0 0F     BCS bra_A6CD
C - - - - - 0x00E6CE 03:A6BE: 4C C8 A6  JMP loc_A6C8
bra_A6C1:
C - - - - - 0x00E6D1 03:A6C1: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00E6D4 03:A6C4: C9 70     CMP #$70
C - - - - - 0x00E6D6 03:A6C6: 90 05     BCC bra_A6CD
loc_A6C8:
C D 1 - - - 0x00E6D8 03:A6C8: A9 24     LDA #$24
C - - - - - 0x00E6DA 03:A6CA: 9D 66 06  STA ram_интеллект_бота + con_gk_id,X
bra_A6CD:
C - - - - - 0x00E6DD 03:A6CD: 68        PLA
C - - - - - 0x00E6DE 03:A6CE: 8D 6C 03  STA ram_мяч_Y_hi
C - - - - - 0x00E6E1 03:A6D1: 68        PLA
C - - - - - 0x00E6E2 03:A6D2: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00E6E5 03:A6D5: 68        PLA
C - - - - - 0x00E6E6 03:A6D6: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00E6E9 03:A6D9: 68        PLA
C - - - - - 0x00E6EA 03:A6DA: 8D 20 03  STA ram_мяч_X_lo
bra_A6DD:
C - - - - - 0x00E6ED 03:A6DD: 4C 93 A7  JMP loc_A793
bra_A6E0:
C - - - - - 0x00E6F0 03:A6E0: AD 02 04  LDA ram_мяч_spd_X_hi
C - - - - - 0x00E6F3 03:A6E3: 30 20     BMI bra_A705
C - - - - - 0x00E6F5 03:A6E5: E0 01     CPX #$01
C - - - - - 0x00E6F7 03:A6E7: D0 F4     BNE bra_A6DD
C - - - - - 0x00E6F9 03:A6E9: AD 1F 03  LDA ram_игрок_X_lo + con_gk_id + $01
C - - - - - 0x00E6FC 03:A6EC: 38        SEC
C - - - - - 0x00E6FD 03:A6ED: ED 20 03  SBC ram_мяч_X_lo
C - - - - - 0x00E700 03:A6F0: 85 1C     STA ram_001C
C - - - - - 0x00E702 03:A6F2: AD 32 03  LDA ram_игрок_X_hi + con_gk_id + $01
C - - - - - 0x00E705 03:A6F5: ED 33 03  SBC ram_мяч_X_hi
C - - - - - 0x00E708 03:A6F8: F0 2B     BEQ bra_A725
C - - - - - 0x00E70A 03:A6FA: 10 E1     BPL bra_A6DD
C - - - - - 0x00E70C 03:A6FC: A5 1C     LDA ram_001C
C - - - - - 0x00E70E 03:A6FE: C9 E8     CMP #$E8
C - - - - - 0x00E710 03:A700: 90 03     BCC bra_A705
C - - - - - 0x00E712 03:A702: 4C 8E A7  JMP loc_A78E
bra_A705:
C - - - - - 0x00E715 03:A705: E0 00     CPX #$00
C - - - - - 0x00E717 03:A707: D0 D4     BNE bra_A6DD
C - - - - - 0x00E719 03:A709: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00E71C 03:A70C: 38        SEC
C - - - - - 0x00E71D 03:A70D: ED 1E 03  SBC ram_игрок_X_lo + con_gk_id
C - - - - - 0x00E720 03:A710: 85 1C     STA ram_001C
C - - - - - 0x00E722 03:A712: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00E725 03:A715: ED 31 03  SBC ram_игрок_X_hi + con_gk_id
C - - - - - 0x00E728 03:A718: F0 0B     BEQ bra_A725
C - - - - - 0x00E72A 03:A71A: 10 77     BPL bra_A793
C - - - - - 0x00E72C 03:A71C: A5 1C     LDA ram_001C
C - - - - - 0x00E72E 03:A71E: C9 E8     CMP #$E8
C - - - - - 0x00E730 03:A720: B0 03     BCS bra_A725
C - - - - - 0x00E732 03:A722: 4C 8E A7  JMP loc_A78E
bra_A725:
C - - - - - 0x00E735 03:A725: AD A5 03  LDA ram_мяч_Z_hi
C - - - - - 0x00E738 03:A728: 30 1C     BMI bra_A746
C - - - - - 0x00E73A 03:A72A: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00E73D 03:A72D: C9 28     CMP #$28
C - - - - - 0x00E73F 03:A72F: 90 05     BCC bra_A736
C - - - - - 0x00E741 03:A731: A9 28     LDA #$28
C - - - - - 0x00E743 03:A733: 4C 39 A7  JMP loc_A739
bra_A736:
C - - - - - 0x00E746 03:A736: AD 92 03  LDA ram_мяч_Z_lo
loc_A739:
C D 1 - - - 0x00E749 03:A739: 85 1E     STA ram_001E
C - - - - - 0x00E74B 03:A73B: A5 1C     LDA ram_001C
C - - - - - 0x00E74D 03:A73D: 38        SEC
C - - - - - 0x00E74E 03:A73E: E5 1E     SBC ram_001E
C - - - - - 0x00E750 03:A740: B0 02     BCS bra_A744
C - - - - - 0x00E752 03:A742: A9 00     LDA #$00
bra_A744:
C - - - - - 0x00E754 03:A744: 85 1C     STA ram_001C
bra_A746:
C - - - - - 0x00E756 03:A746: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00E759 03:A749: 30 05     BMI bra_A750
C - - - - - 0x00E75B 03:A74B: A0 01     LDY #$01
C - - - - - 0x00E75D 03:A74D: 4C 56 A7  JMP loc_A756
bra_A750:
C - - - - - 0x00E760 03:A750: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00E763 03:A753: 29 03     AND #$03
C - - - - - 0x00E765 03:A755: A8        TAY
loc_A756:
C D 1 - - - 0x00E766 03:A756: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00E769 03:A759: 39 9E A7  AND tbl_A79E,Y
C - - - - - 0x00E76C 03:A75C: 18        CLC
C - - - - - 0x00E76D 03:A75D: 65 1C     ADC ram_001C
C - - - - - 0x00E76F 03:A75F: B0 11     BCS bra_A772
C - - - - - 0x00E771 03:A761: C9 10     CMP #$10
C - - - - - 0x00E773 03:A763: 90 03     BCC bra_A768
C - - - - - 0x00E775 03:A765: 4C 72 A7  JMP loc_A772
bra_A768:
C - - - - - 0x00E778 03:A768: BD 86 06  LDA ram_флаг_кипера_в_штрафной,X
C - - - - - 0x00E77B 03:A76B: 30 21     BMI bra_A78E
C - - - - - 0x00E77D 03:A76D: A9 0E     LDA #$0E
C - - - - - 0x00E77F 03:A76F: 4C 90 A7  JMP loc_A790
bra_A772:
loc_A772:
C D 1 - - - 0x00E782 03:A772: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00E785 03:A775: 29 03     AND #$03
C - - - - - 0x00E787 03:A777: D0 10     BNE bra_A789
- - - - - - 0x00E789 03:A779: E0 01     CPX #$01
- - - - - - 0x00E78B 03:A77B: D0 0C     BNE bra_A789
- - - - - - 0x00E78D 03:A77D: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00E790 03:A780: C9 A0     CMP #$A0
- - - - - - 0x00E792 03:A782: B0 05     BCS bra_A789
- - - - - - 0x00E794 03:A784: A9 00     LDA #$00
- - - - - - 0x00E796 03:A786: 4C 90 A7  JMP loc_A790
bra_A789:
C - - - - - 0x00E799 03:A789: A9 05     LDA #$05
C - - - - - 0x00E79B 03:A78B: 4C 90 A7  JMP loc_A790
bra_A78E:
loc_A78E:
C D 1 - - - 0x00E79E 03:A78E: A9 26     LDA #$26
loc_A790:
C D 1 - - - 0x00E7A0 03:A790: 9D 66 06  STA ram_интеллект_бота + con_gk_id,X
bra_A793:
loc_A793:
C D 1 - - - 0x00E7A3 03:A793: BD 66 06  LDA ram_интеллект_бота + con_gk_id,X
C - - - - - 0x00E7A6 03:A796: D0 05     BNE bra_A79D_RTS
- - - - - - 0x00E7A8 03:A798: A9 0A     LDA #$0A
- - - - - - 0x00E7AA 03:A79A: 9D 66 06  STA ram_интеллект_бота + con_gk_id,X
bra_A79D_RTS:
C - - - - - 0x00E7AD 03:A79D: 60        RTS



tbl_A79E:
- - - - - - 0x00E7AE 03:A79E: 3F        .byte $3F   ; 
- D 1 - - - 0x00E7AF 03:A79F: 07        .byte $07   ; 
- D 1 - - - 0x00E7B0 03:A7A0: 00        .byte $00   ; 



sub_A7A1:
C - - - - - 0x00E7B1 03:A7A1: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00E7B3 03:A7A3: C9 01     CMP #$01
C - - - - - 0x00E7B5 03:A7A5: F0 0E     BEQ bra_A7B5_RTS
C - - - - - 0x00E7B7 03:A7A7: C9 03     CMP #$03
C - - - - - 0x00E7B9 03:A7A9: F0 0A     BEQ bra_A7B5_RTS
C - - - - - 0x00E7BB 03:A7AB: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00E7BE 03:A7AE: 29 20     AND #$20
C - - - - - 0x00E7C0 03:A7B0: D0 03     BNE bra_A7B5_RTS
C - - - - - 0x00E7C2 03:A7B2: 4C B6 A7  JMP loc_A7B6
bra_A7B5_RTS:
C - - - - - 0x00E7C5 03:A7B5: 60        RTS
loc_A7B6:
C D 1 - - - 0x00E7C6 03:A7B6: A2 00     LDX #$00
loc_A7B8:
C D 1 - - - 0x00E7C8 03:A7B8: 86 43     STX ram_0043
C - - - - - 0x00E7CA 03:A7BA: 8A        TXA
C - - - - - 0x00E7CB 03:A7BB: 0A        ASL
C - - - - - 0x00E7CC 03:A7BC: A8        TAY
C - - - - - 0x00E7CD 03:A7BD: B9 7C AB  LDA tbl_AB7C,Y
C - - - - - 0x00E7D0 03:A7C0: 85 2C     STA ram_002C
C - - - - - 0x00E7D2 03:A7C2: B9 7D AB  LDA tbl_AB7D,Y
C - - - - - 0x00E7D5 03:A7C5: 85 2D     STA ram_002D
C - - - - - 0x00E7D7 03:A7C7: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E7DA 03:A7CA: 4A        LSR
C - - - - - 0x00E7DB 03:A7CB: 4A        LSR
C - - - - - 0x00E7DC 03:A7CC: 4A        LSR
C - - - - - 0x00E7DD 03:A7CD: 4A        LSR
C - - - - - 0x00E7DE 03:A7CE: 85 1C     STA ram_001C
C - - - - - 0x00E7E0 03:A7D0: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E7E3 03:A7D3: 29 0F     AND #$0F
C - - - - - 0x00E7E5 03:A7D5: C5 1C     CMP ram_001C
C - - - - - 0x00E7E7 03:A7D7: F0 18     BEQ bra_A7F1
C - - - - - 0x00E7E9 03:A7D9: C9 0F     CMP #$0F
C - - - - - 0x00E7EB 03:A7DB: D0 0E     BNE bra_A7EB
C - - - - - 0x00E7ED 03:A7DD: A9 FF     LDA #$FF
C - - - - - 0x00E7EF 03:A7DF: 9D 78 06  STA ram_приказ_боту,X
C - - - - - 0x00E7F2 03:A7E2: 20 2D A8  JSR sub_A82D
C - - - - - 0x00E7F5 03:A7E5: 20 81 A9  JSR sub_A981
C - - - - - 0x00E7F8 03:A7E8: 4C F1 A7  JMP loc_A7F1
bra_A7EB:
C - - - - - 0x00E7FB 03:A7EB: 20 59 A8  JSR sub_A859
C - - - - - 0x00E7FE 03:A7EE: 20 81 A9  JSR sub_A981
bra_A7F1:
loc_A7F1:
C D 1 - - - 0x00E801 03:A7F1: BD 84 06  LDA ram_0684,X
C - - - - - 0x00E804 03:A7F4: F0 03     BEQ bra_A7F9
C - - - - - 0x00E806 03:A7F6: 4C 01 A8  JMP loc_A801
bra_A7F9:
C - - - - - 0x00E809 03:A7F9: A9 C0     LDA #$C0
C - - - - - 0x00E80B 03:A7FB: 9D 80 06  STA ram_0680,X
C - - - - - 0x00E80E 03:A7FE: 9D 82 06  STA ram_0682,X
loc_A801:
C D 1 - - - 0x00E811 03:A801: BD 80 06  LDA ram_0680,X
C - - - - - 0x00E814 03:A804: 10 06     BPL bra_A80C
C - - - - - 0x00E816 03:A806: 20 F0 A8  JSR sub_A8F0
C - - - - - 0x00E819 03:A809: 20 81 A9  JSR sub_A981
bra_A80C:
C - - - - - 0x00E81C 03:A80C: BD 82 06  LDA ram_0682,X
C - - - - - 0x00E81F 03:A80F: 10 06     BPL bra_A817
C - - - - - 0x00E821 03:A811: 20 45 A9  JSR sub_A945
C - - - - - 0x00E824 03:A814: 20 81 A9  JSR sub_A981
bra_A817:
C - - - - - 0x00E827 03:A817: DE 84 06  DEC ram_0684,X
C - - - - - 0x00E82A 03:A81A: BD 84 06  LDA ram_0684,X
C - - - - - 0x00E82D 03:A81D: 10 05     BPL bra_A824
C - - - - - 0x00E82F 03:A81F: A9 FF     LDA #$FF
C - - - - - 0x00E831 03:A821: 9D 84 06  STA ram_0684,X
bra_A824:
C - - - - - 0x00E834 03:A824: E8        INX
C - - - - - 0x00E835 03:A825: E0 02     CPX #$02
C - - - - - 0x00E837 03:A827: B0 03     BCS bra_A82C_RTS
C - - - - - 0x00E839 03:A829: 4C B8 A7  JMP loc_A7B8
bra_A82C_RTS:
C - - - - - 0x00E83C 03:A82C: 60        RTS



sub_A82D:
C - - - - - 0x00E83D 03:A82D: 8A        TXA
C - - - - - 0x00E83E 03:A82E: D0 05     BNE bra_A835
C - - - - - 0x00E840 03:A830: A0 00     LDY #$00
C - - - - - 0x00E842 03:A832: 4C 37 A8  JMP loc_A837
bra_A835:
C - - - - - 0x00E845 03:A835: A0 23     LDY #$23
loc_A837:
C D 1 - - - 0x00E847 03:A837: A2 00     LDX #$00
C - - - - - 0x00E849 03:A839: A9 0F     LDA #$0F
bra_A83B:
C - - - - - 0x00E84B 03:A83B: 99 9C 06  STA ram_буфер_атрибутов + $06,Y
C - - - - - 0x00E84E 03:A83E: E8        INX
C - - - - - 0x00E84F 03:A83F: C8        INY
C - - - - - 0x00E850 03:A840: E0 14     CPX #$14
C - - - - - 0x00E852 03:A842: 90 F7     BCC bra_A83B
C - - - - - 0x00E854 03:A844: 98        TYA
C - - - - - 0x00E855 03:A845: 38        SEC
C - - - - - 0x00E856 03:A846: E9 14     SBC #$14
C - - - - - 0x00E858 03:A848: A8        TAY
C - - - - - 0x00E859 03:A849: A2 00     LDX #$00
C - - - - - 0x00E85B 03:A84B: A9 FA     LDA #$FA
bra_A84D:
C - - - - - 0x00E85D 03:A84D: 99 9C 06  STA ram_буфер_атрибутов + $06,Y
C - - - - - 0x00E860 03:A850: C8        INY
C - - - - - 0x00E861 03:A851: E8        INX
C - - - - - 0x00E862 03:A852: E0 05     CPX #$05
C - - - - - 0x00E864 03:A854: 90 F7     BCC bra_A84D
C - - - - - 0x00E866 03:A856: A6 43     LDX ram_0043
C - - - - - 0x00E868 03:A858: 60        RTS



sub_A859:
C - - - - - 0x00E869 03:A859: 8A        TXA
C - - - - - 0x00E86A 03:A85A: 0A        ASL
C - - - - - 0x00E86B 03:A85B: A8        TAY
C - - - - - 0x00E86C 03:A85C: B9 7C AB  LDA tbl_AB7C,Y
C - - - - - 0x00E86F 03:A85F: 85 2C     STA ram_002C
C - - - - - 0x00E871 03:A861: B9 7D AB  LDA tbl_AB7D,Y
C - - - - - 0x00E874 03:A864: 85 2D     STA ram_002D
C - - - - - 0x00E876 03:A866: 20 DC AA  JSR sub_AADC
C - - - - - 0x00E879 03:A869: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E87C 03:A86C: 29 0F     AND #$0F
C - - - - - 0x00E87E 03:A86E: A8        TAY
C - - - - - 0x00E87F 03:A86F: B9 32 05  LDA ram_номер_игрока,Y
C - - - - - 0x00E882 03:A872: 85 2B     STA ram_002B
C - - - - - 0x00E884 03:A874: A8        TAY
C - - - - - 0x00E885 03:A875: A5 2E     LDA ram_002E
C - - - - - 0x00E887 03:A877: 18        CLC
C - - - - - 0x00E888 03:A878: 79 4B AB  ADC tbl_AB4B,Y
C - - - - - 0x00E88B 03:A87B: 85 2E     STA ram_002E
C - - - - - 0x00E88D 03:A87D: A5 2F     LDA ram_002F
C - - - - - 0x00E88F 03:A87F: 69 00     ADC #$00
C - - - - - 0x00E891 03:A881: 85 2F     STA ram_002F
C - - - - - 0x00E893 03:A883: A5 2B     LDA ram_002B
C - - - - - 0x00E895 03:A885: 0A        ASL
C - - - - - 0x00E896 03:A886: 85 2B     STA ram_002B
C - - - - - 0x00E898 03:A888: A5 32     LDA ram_0032
C - - - - - 0x00E89A 03:A88A: 18        CLC
C - - - - - 0x00E89B 03:A88B: 65 2B     ADC ram_002B
C - - - - - 0x00E89D 03:A88D: 85 32     STA ram_0032
C - - - - - 0x00E89F 03:A88F: A5 33     LDA ram_0033
C - - - - - 0x00E8A1 03:A891: 69 00     ADC #$00
C - - - - - 0x00E8A3 03:A893: 85 33     STA ram_0033
C - - - - - 0x00E8A5 03:A895: 20 01 AB  JSR sub_AB01
C - - - - - 0x00E8A8 03:A898: A2 00     LDX #$00
bra_A89A:
C - - - - - 0x00E8AA 03:A89A: BD 6F AB  LDA tbl_AB6F,X
C - - - - - 0x00E8AD 03:A89D: A8        TAY
C - - - - - 0x00E8AE 03:A89E: B5 1C     LDA ram_001C,X
C - - - - - 0x00E8B0 03:A8A0: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E8B2 03:A8A2: E8        INX
C - - - - - 0x00E8B3 03:A8A3: E0 0D     CPX #$0D
C - - - - - 0x00E8B5 03:A8A5: 90 F3     BCC bra_A89A
C - - - - - 0x00E8B7 03:A8A7: A6 43     LDX ram_0043
C - - - - - 0x00E8B9 03:A8A9: BD 7A 06  LDA ram_направление_паса_команды,X
C - - - - - 0x00E8BC 03:A8AC: 29 0F     AND #$0F
C - - - - - 0x00E8BE 03:A8AE: A8        TAY
C - - - - - 0x00E8BF 03:A8AF: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00E8C2 03:A8B2: 29 30     AND #$30
C - - - - - 0x00E8C4 03:A8B4: 4A        LSR
C - - - - - 0x00E8C5 03:A8B5: 4A        LSR
C - - - - - 0x00E8C6 03:A8B6: 4A        LSR
C - - - - - 0x00E8C7 03:A8B7: A8        TAY
C - - - - - 0x00E8C8 03:A8B8: B9 80 AB  LDA tbl_AB80,Y
C - - - - - 0x00E8CB 03:A8BB: 85 1C     STA ram_001C
C - - - - - 0x00E8CD 03:A8BD: B9 81 AB  LDA tbl_AB81,Y
C - - - - - 0x00E8D0 03:A8C0: 85 1D     STA ram_001D
C - - - - - 0x00E8D2 03:A8C2: A2 00     LDX #$00
C - - - - - 0x00E8D4 03:A8C4: A0 13     LDY #$13
bra_A8C6:
C - - - - - 0x00E8D6 03:A8C6: B5 1C     LDA ram_001C,X
C - - - - - 0x00E8D8 03:A8C8: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E8DA 03:A8CA: E8        INX
C - - - - - 0x00E8DB 03:A8CB: C8        INY
C - - - - - 0x00E8DC 03:A8CC: E0 02     CPX #$02
C - - - - - 0x00E8DE 03:A8CE: 90 F6     BCC bra_A8C6
C - - - - - 0x00E8E0 03:A8D0: A6 43     LDX ram_0043
C - - - - - 0x00E8E2 03:A8D2: A9 4C     LDA #$4C
C - - - - - 0x00E8E4 03:A8D4: A0 10     LDY #$10
C - - - - - 0x00E8E6 03:A8D6: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E8E8 03:A8D8: A9 0F     LDA #$0F
C - - - - - 0x00E8EA 03:A8DA: A0 19     LDY #$19
C - - - - - 0x00E8EC 03:A8DC: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E8EE 03:A8DE: A0 15     LDY #$15
C - - - - - 0x00E8F0 03:A8E0: A2 00     LDX #$00
bra_A8E2:
C - - - - - 0x00E8F2 03:A8E2: BD 63 AB  LDA tbl_AB63,X
C - - - - - 0x00E8F5 03:A8E5: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E8F7 03:A8E7: E8        INX
C - - - - - 0x00E8F8 03:A8E8: C8        INY
C - - - - - 0x00E8F9 03:A8E9: E0 03     CPX #$03
C - - - - - 0x00E8FB 03:A8EB: 90 F5     BCC bra_A8E2
C - - - - - 0x00E8FD 03:A8ED: A6 43     LDX ram_0043
C - - - - - 0x00E8FF 03:A8EF: 60        RTS



sub_A8F0:
C - - - - - 0x00E900 03:A8F0: BD 80 06  LDA ram_0680,X
C - - - - - 0x00E903 03:A8F3: C9 C0     CMP #$C0
C - - - - - 0x00E905 03:A8F5: D0 0A     BNE bra_A901
C - - - - - 0x00E907 03:A8F7: A9 FF     LDA #$FF
C - - - - - 0x00E909 03:A8F9: 9D 84 06  STA ram_0684,X
C - - - - - 0x00E90C 03:A8FC: A9 FF     LDA #$FF
C - - - - - 0x00E90E 03:A8FE: 4C 1D A9  JMP loc_A91D
bra_A901:
C - - - - - 0x00E911 03:A901: A9 20     LDA #$20
C - - - - - 0x00E913 03:A903: 9D 84 06  STA ram_0684,X
C - - - - - 0x00E916 03:A906: BD 7C 06  LDA ram_067C,X
C - - - - - 0x00E919 03:A909: C9 FF     CMP #$FF
C - - - - - 0x00E91B 03:A90B: D0 05     BNE bra_A912
C - - - - - 0x00E91D 03:A90D: A9 08     LDA #$08
C - - - - - 0x00E91F 03:A90F: 4C 17 A9  JMP loc_A917
bra_A912:
C - - - - - 0x00E922 03:A912: 4A        LSR
C - - - - - 0x00E923 03:A913: 4A        LSR
C - - - - - 0x00E924 03:A914: 4A        LSR
C - - - - - 0x00E925 03:A915: 4A        LSR
C - - - - - 0x00E926 03:A916: 4A        LSR
loc_A917:
C D 1 - - - 0x00E927 03:A917: A8        TAY
C - - - - - 0x00E928 03:A918: B9 66 AB  LDA tbl_AB66,Y
C - - - - - 0x00E92B 03:A91B: A0 00     LDY #$00
loc_A91D:
C D 1 - - - 0x00E92D 03:A91D: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E92F 03:A91F: BD 80 06  LDA ram_0680,X
C - - - - - 0x00E932 03:A922: 29 7F     AND #$7F
C - - - - - 0x00E934 03:A924: C9 40     CMP #$40
C - - - - - 0x00E936 03:A926: 90 02     BCC bra_A92A
C - - - - - 0x00E938 03:A928: A9 40     LDA #$40
bra_A92A:
C - - - - - 0x00E93A 03:A92A: 9D 80 06  STA ram_0680,X
C - - - - - 0x00E93D 03:A92D: 0A        ASL
C - - - - - 0x00E93E 03:A92E: A8        TAY
C - - - - - 0x00E93F 03:A92F: B9 88 AB  LDA tbl_AB88,Y
C - - - - - 0x00E942 03:A932: 85 2E     STA ram_002E
C - - - - - 0x00E944 03:A934: B9 89 AB  LDA tbl_AB88 + $01,Y
C - - - - - 0x00E947 03:A937: 85 2F     STA ram_002F
C - - - - - 0x00E949 03:A939: A0 00     LDY #$00
bra_A93B:
C - - - - - 0x00E94B 03:A93B: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00E94D 03:A93D: C8        INY
C - - - - - 0x00E94E 03:A93E: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E950 03:A940: C0 05     CPY #$05
C - - - - - 0x00E952 03:A942: 90 F7     BCC bra_A93B
C - - - - - 0x00E954 03:A944: 60        RTS



sub_A945:
C - - - - - 0x00E955 03:A945: A9 20     LDA #$20
C - - - - - 0x00E957 03:A947: 9D 84 06  STA ram_0684,X
C - - - - - 0x00E95A 03:A94A: BD 82 06  LDA ram_0682,X
C - - - - - 0x00E95D 03:A94D: 29 7F     AND #$7F
C - - - - - 0x00E95F 03:A94F: C9 40     CMP #$40
C - - - - - 0x00E961 03:A951: 90 02     BCC bra_A955
C - - - - - 0x00E963 03:A953: A9 40     LDA #$40
bra_A955:
C - - - - - 0x00E965 03:A955: 9D 82 06  STA ram_0682,X
C - - - - - 0x00E968 03:A958: 0A        ASL
C - - - - - 0x00E969 03:A959: A8        TAY
C - - - - - 0x00E96A 03:A95A: B9 88 AB  LDA tbl_AB88,Y
C - - - - - 0x00E96D 03:A95D: 85 2E     STA ram_002E
C - - - - - 0x00E96F 03:A95F: B9 89 AB  LDA tbl_AB88 + $01,Y
C - - - - - 0x00E972 03:A962: 85 2F     STA ram_002F
C - - - - - 0x00E974 03:A964: A0 00     LDY #$00
bra_A966:
C - - - - - 0x00E976 03:A966: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00E978 03:A968: 99 1C 00  STA a: ram_001C,Y
C - - - - - 0x00E97B 03:A96B: C8        INY
C - - - - - 0x00E97C 03:A96C: C0 05     CPY #$05
C - - - - - 0x00E97E 03:A96E: 90 F6     BCC bra_A966
C - - - - - 0x00E980 03:A970: A2 00     LDX #$00
C - - - - - 0x00E982 03:A972: A0 1A     LDY #$1A
bra_A974:
C - - - - - 0x00E984 03:A974: B5 1C     LDA ram_001C,X
C - - - - - 0x00E986 03:A976: 91 2C     STA (ram_002C),Y
C - - - - - 0x00E988 03:A978: E8        INX
C - - - - - 0x00E989 03:A979: C8        INY
C - - - - - 0x00E98A 03:A97A: E0 05     CPX #$05
C - - - - - 0x00E98C 03:A97C: 90 F6     BCC bra_A974
C - - - - - 0x00E98E 03:A97E: A6 43     LDX ram_0043
C - - - - - 0x00E990 03:A980: 60        RTS



sub_A981:
C - - - - - 0x00E991 03:A981: 8A        TXA
C - - - - - 0x00E992 03:A982: D0 08     BNE bra_A98C
C - - - - - 0x00E994 03:A984: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x00E997 03:A987: 09 20     ORA #$20
C - - - - - 0x00E999 03:A989: 4C 91 A9  JMP loc_A991
bra_A98C:
C - - - - - 0x00E99C 03:A98C: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x00E99F 03:A98F: 09 10     ORA #$10
loc_A991:
C D 1 - - - 0x00E9A1 03:A991: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x00E9A4 03:A994: 60        RTS



loc_A995:
C D 1 - - - 0x00E9A5 03:A995: A5 4C     LDA ram_для_2000
C - - - - - 0x00E9A7 03:A997: 29 FB     AND #$FB
C - - - - - 0x00E9A9 03:A999: 85 4C     STA ram_для_2000
C - - - - - 0x00E9AB 03:A99B: 8D 00 20  STA $2000
C - - - - - 0x00E9AE 03:A99E: A2 00     LDX #$00
bra_A9A0:
C - - - - - 0x00E9B0 03:A9A0: 20 A9 A9  JSR sub_A9A9
C - - - - - 0x00E9B3 03:A9A3: E8        INX
C - - - - - 0x00E9B4 03:A9A4: E0 02     CPX #$02
C - - - - - 0x00E9B6 03:A9A6: 90 F8     BCC bra_A9A0
C - - - - - 0x00E9B8 03:A9A8: 60        RTS



sub_A9A9:
C - - - - - 0x00E9B9 03:A9A9: 20 DC AA  JSR sub_AADC
C - - - - - 0x00E9BC 03:A9AC: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00E9BF 03:A9AF: 29 20     AND #$20
C - - - - - 0x00E9C1 03:A9B1: F0 17     BEQ bra_A9CA
C - - - - - 0x00E9C3 03:A9B3: 8A        TXA
C - - - - - 0x00E9C4 03:A9B4: 4D CC 05  EOR ram_счетчик_смен
C - - - - - 0x00E9C7 03:A9B7: 29 01     AND #$01
C - - - - - 0x00E9C9 03:A9B9: F0 06     BEQ bra_A9C1
C - - - - - 0x00E9CB 03:A9BB: BD 3C 05  LDA ram_номер_игрока + con_gk_id,X
C - - - - - 0x00E9CE 03:A9BE: 4C CD A9  JMP loc_A9CD
bra_A9C1:
C - - - - - 0x00E9D1 03:A9C1: AD CC 05  LDA ram_счетчик_смен
C - - - - - 0x00E9D4 03:A9C4: 29 7F     AND #$7F
C - - - - - 0x00E9D6 03:A9C6: 4A        LSR
C - - - - - 0x00E9D7 03:A9C7: 4C CD A9  JMP loc_A9CD
bra_A9CA:
C - - - - - 0x00E9DA 03:A9CA: BD 32 05  LDA ram_номер_игрока,X
loc_A9CD:
C D 1 - - - 0x00E9DD 03:A9CD: 85 2B     STA ram_002B
C - - - - - 0x00E9DF 03:A9CF: A8        TAY
C - - - - - 0x00E9E0 03:A9D0: A5 2E     LDA ram_002E
C - - - - - 0x00E9E2 03:A9D2: 18        CLC
C - - - - - 0x00E9E3 03:A9D3: 79 4B AB  ADC tbl_AB4B,Y
C - - - - - 0x00E9E6 03:A9D6: 85 2E     STA ram_002E
C - - - - - 0x00E9E8 03:A9D8: A5 2F     LDA ram_002F
C - - - - - 0x00E9EA 03:A9DA: 69 00     ADC #$00
C - - - - - 0x00E9EC 03:A9DC: 85 2F     STA ram_002F
C - - - - - 0x00E9EE 03:A9DE: A5 2B     LDA ram_002B
C - - - - - 0x00E9F0 03:A9E0: 0A        ASL
C - - - - - 0x00E9F1 03:A9E1: 85 2B     STA ram_002B
C - - - - - 0x00E9F3 03:A9E3: A5 32     LDA ram_0032
C - - - - - 0x00E9F5 03:A9E5: 18        CLC
C - - - - - 0x00E9F6 03:A9E6: 65 2B     ADC ram_002B
C - - - - - 0x00E9F8 03:A9E8: 85 32     STA ram_0032
C - - - - - 0x00E9FA 03:A9EA: A5 33     LDA ram_0033
C - - - - - 0x00E9FC 03:A9EC: 69 00     ADC #$00
C - - - - - 0x00E9FE 03:A9EE: 85 33     STA ram_0033
C - - - - - 0x00EA00 03:A9F0: 20 01 AB  JSR sub_AB01
C - - - - - 0x00EA03 03:A9F3: AD 02 20  LDA $2002
C - - - - - 0x00EA06 03:A9F6: A9 2A     LDA #$2A
C - - - - - 0x00EA08 03:A9F8: 8D 06 20  STA $2006
C - - - - - 0x00EA0B 03:A9FB: BD 57 AB  LDA tbl_AB57_ppu_lo,X
C - - - - - 0x00EA0E 03:A9FE: 8D 06 20  STA $2006
C - - - - - 0x00EA11 03:AA01: A0 00     LDY #$00
bra_AA03:
C - - - - - 0x00EA13 03:AA03: B9 1C 00  LDA a: ram_001C,Y
C - - - - - 0x00EA16 03:AA06: 8D 07 20  STA $2007
C - - - - - 0x00EA19 03:AA09: C8        INY
C - - - - - 0x00EA1A 03:AA0A: C0 05     CPY #$05
C - - - - - 0x00EA1C 03:AA0C: 90 F5     BCC bra_AA03
C - - - - - 0x00EA1E 03:AA0E: AD 02 20  LDA $2002
C - - - - - 0x00EA21 03:AA11: A9 2A     LDA #$2A
C - - - - - 0x00EA23 03:AA13: 8D 06 20  STA $2006
C - - - - - 0x00EA26 03:AA16: BD 59 AB  LDA tbl_AB59_ppu_lo,X
C - - - - - 0x00EA29 03:AA19: 8D 06 20  STA $2006
bra_AA1C:
C - - - - - 0x00EA2C 03:AA1C: B9 1C 00  LDA a: ram_001C,Y
C - - - - - 0x00EA2F 03:AA1F: 8D 07 20  STA $2007
C - - - - - 0x00EA32 03:AA22: C8        INY
C - - - - - 0x00EA33 03:AA23: C0 0A     CPY #$0A
C - - - - - 0x00EA35 03:AA25: 90 F5     BCC bra_AA1C
C - - - - - 0x00EA37 03:AA27: AD 02 20  LDA $2002
C - - - - - 0x00EA3A 03:AA2A: A9 2A     LDA #$2A
C - - - - - 0x00EA3C 03:AA2C: 8D 06 20  STA $2006
C - - - - - 0x00EA3F 03:AA2F: BD 5B AB  LDA tbl_AB5B_ppu_lo,X
C - - - - - 0x00EA42 03:AA32: 8D 06 20  STA $2006
C - - - - - 0x00EA45 03:AA35: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00EA48 03:AA38: 29 20     AND #$20
C - - - - - 0x00EA4A 03:AA3A: D0 0A     BNE bra_AA46
C - - - - - 0x00EA4C 03:AA3C: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00EA4F 03:AA3F: 10 0A     BPL bra_AA4B
C - - - - - 0x00EA51 03:AA41: A9 4C     LDA #$4C
C - - - - - 0x00EA53 03:AA43: 4C 4F AA  JMP loc_AA4F
bra_AA46:
C - - - - - 0x00EA56 03:AA46: A9 FF     LDA #$FF
C - - - - - 0x00EA58 03:AA48: 4C 4F AA  JMP loc_AA4F
bra_AA4B:
C - - - - - 0x00EA5B 03:AA4B: 8A        TXA
C - - - - - 0x00EA5C 03:AA4C: 18        CLC
C - - - - - 0x00EA5D 03:AA4D: 69 3E     ADC #$3E
loc_AA4F:
C D 1 - - - 0x00EA5F 03:AA4F: 8D 07 20  STA $2007
bra_AA52:
C - - - - - 0x00EA62 03:AA52: B9 1C 00  LDA a: ram_001C,Y
C - - - - - 0x00EA65 03:AA55: 8D 07 20  STA $2007
C - - - - - 0x00EA68 03:AA58: C8        INY
C - - - - - 0x00EA69 03:AA59: C0 0C     CPY #$0C
C - - - - - 0x00EA6B 03:AA5B: 90 F5     BCC bra_AA52
C - - - - - 0x00EA6D 03:AA5D: AD 02 20  LDA $2002
C - - - - - 0x00EA70 03:AA60: A9 2A     LDA #$2A
C - - - - - 0x00EA72 03:AA62: 8D 06 20  STA $2006
C - - - - - 0x00EA75 03:AA65: BD 5D AB  LDA tbl_AB5D_ppu_lo,X
C - - - - - 0x00EA78 03:AA68: 8D 06 20  STA $2006
C - - - - - 0x00EA7B 03:AA6B: B9 1C 00  LDA a: ram_001C,Y
C - - - - - 0x00EA7E 03:AA6E: 8D 07 20  STA $2007
C - - - - - 0x00EA81 03:AA71: AD 02 20  LDA $2002
C - - - - - 0x00EA84 03:AA74: A9 2A     LDA #$2A
C - - - - - 0x00EA86 03:AA76: 8D 06 20  STA $2006
C - - - - - 0x00EA89 03:AA79: BD 5F AB  LDA tbl_AB5F_ppu_lo,X
C - - - - - 0x00EA8C 03:AA7C: 8D 06 20  STA $2006
C - - - - - 0x00EA8F 03:AA7F: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00EA92 03:AA82: 29 20     AND #$20
C - - - - - 0x00EA94 03:AA84: F0 1B     BEQ bra_AAA1
C - - - - - 0x00EA96 03:AA86: 8A        TXA
C - - - - - 0x00EA97 03:AA87: 4D CC 05  EOR ram_счетчик_смен
C - - - - - 0x00EA9A 03:AA8A: 29 01     AND #$01
C - - - - - 0x00EA9C 03:AA8C: F0 07     BEQ bra_AA95
C - - - - - 0x00EA9E 03:AA8E: 8A        TXA
C - - - - - 0x00EA9F 03:AA8F: 18        CLC
C - - - - - 0x00EAA0 03:AA90: 69 0A     ADC #$0A
C - - - - - 0x00EAA2 03:AA92: 4C 9A AA  JMP loc_AA9A
bra_AA95:
C - - - - - 0x00EAA5 03:AA95: AD CC 05  LDA ram_счетчик_смен
C - - - - - 0x00EAA8 03:AA98: 29 7F     AND #$7F
loc_AA9A:
C D 1 - - - 0x00EAAA 03:AA9A: A8        TAY
C - - - - - 0x00EAAB 03:AA9B: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x00EAAE 03:AA9E: 4C A4 AA  JMP loc_AAA4
bra_AAA1:
C - - - - - 0x00EAB1 03:AAA1: BD 50 06  LDA ram_позиция_управление,X
loc_AAA4:
C D 1 - - - 0x00EAB4 03:AAA4: 29 30     AND #$30
C - - - - - 0x00EAB6 03:AAA6: 4A        LSR
C - - - - - 0x00EAB7 03:AAA7: 4A        LSR
C - - - - - 0x00EAB8 03:AAA8: 4A        LSR
C - - - - - 0x00EAB9 03:AAA9: A8        TAY
C - - - - - 0x00EABA 03:AAAA: B9 80 AB  LDA tbl_AB80,Y
C - - - - - 0x00EABD 03:AAAD: 8D 07 20  STA $2007
C - - - - - 0x00EAC0 03:AAB0: C8        INY
C - - - - - 0x00EAC1 03:AAB1: B9 80 AB  LDA tbl_AB80,Y
C - - - - - 0x00EAC4 03:AAB4: 8D 07 20  STA $2007
C - - - - - 0x00EAC7 03:AAB7: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00EACA 03:AABA: 29 20     AND #$20
C - - - - - 0x00EACC 03:AABC: D0 05     BNE bra_AAC3
C - - - - - 0x00EACE 03:AABE: A9 DC     LDA #$DC
C - - - - - 0x00EAD0 03:AAC0: 8D 07 20  STA $2007
bra_AAC3:
C - - - - - 0x00EAD3 03:AAC3: AD 02 20  LDA $2002
C - - - - - 0x00EAD6 03:AAC6: A9 2A     LDA #$2A
C - - - - - 0x00EAD8 03:AAC8: 8D 06 20  STA $2006
C - - - - - 0x00EADB 03:AACB: BD 61 AB  LDA tbl_AB61_ppu_lo,X
C - - - - - 0x00EADE 03:AACE: 8D 06 20  STA $2006
C - - - - - 0x00EAE1 03:AAD1: A9 0C     LDA #$0C
C - - - - - 0x00EAE3 03:AAD3: 8D 07 20  STA $2007
C - - - - - 0x00EAE6 03:AAD6: A9 0D     LDA #$0D
C - - - - - 0x00EAE8 03:AAD8: 8D 07 20  STA $2007
C - - - - - 0x00EAEB 03:AADB: 60        RTS



sub_AADC:
C - - - - - 0x00EAEC 03:AADC: AD 00 C0  LDA tbl_0x01C010
C - - - - - 0x00EAEF 03:AADF: 85 32     STA ram_0032
C - - - - - 0x00EAF1 03:AAE1: AD 01 C0  LDA tbl_0x01C010 + $01
C - - - - - 0x00EAF4 03:AAE4: 85 33     STA ram_0033
C - - - - - 0x00EAF6 03:AAE6: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00EAF9 03:AAE9: 29 0F     AND #$0F
C - - - - - 0x00EAFB 03:AAEB: 0A        ASL
C - - - - - 0x00EAFC 03:AAEC: A8        TAY
C - - - - - 0x00EAFD 03:AAED: B1 32     LDA (ram_0032),Y
C - - - - - 0x00EAFF 03:AAEF: 85 2E     STA ram_002E
C - - - - - 0x00EB01 03:AAF1: C8        INY
C - - - - - 0x00EB02 03:AAF2: B1 32     LDA (ram_0032),Y
C - - - - - 0x00EB04 03:AAF4: 85 2F     STA ram_002F
C - - - - - 0x00EB06 03:AAF6: B9 4E AD  LDA tbl_AD4F - $01,Y
C - - - - - 0x00EB09 03:AAF9: 85 32     STA ram_0032
C - - - - - 0x00EB0B 03:AAFB: B9 4F AD  LDA tbl_AD4F,Y
C - - - - - 0x00EB0E 03:AAFE: 85 33     STA ram_0033
C - - - - - 0x00EB10 03:AB00: 60        RTS



sub_AB01:
C - - - - - 0x00EB11 03:AB01: A0 04     LDY #$04
C - - - - - 0x00EB13 03:AB03: A9 FA     LDA #$FA
bra_AB05:
C - - - - - 0x00EB15 03:AB05: 99 1C 00  STA a: ram_001C,Y
C - - - - - 0x00EB18 03:AB08: 88        DEY
C - - - - - 0x00EB19 03:AB09: 10 FA     BPL bra_AB05
C - - - - - 0x00EB1B 03:AB0B: A0 00     LDY #$00
bra_AB0D:
C - - - - - 0x00EB1D 03:AB0D: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00EB1F 03:AB0F: C9 50     CMP #$50
C - - - - - 0x00EB21 03:AB11: 90 09     BCC bra_AB1C
C - - - - - 0x00EB23 03:AB13: C9 80     CMP #$80
C - - - - - 0x00EB25 03:AB15: 90 0F     BCC bra_AB26
C - - - - - 0x00EB27 03:AB17: 85 2B     STA ram_002B
C - - - - - 0x00EB29 03:AB19: 4C 30 AB  JMP loc_AB30
bra_AB1C:
C - - - - - 0x00EB2C 03:AB1C: 18        CLC
C - - - - - 0x00EB2D 03:AB1D: 69 80     ADC #$80
C - - - - - 0x00EB2F 03:AB1F: 85 2B     STA ram_002B
C - - - - - 0x00EB31 03:AB21: A9 FB     LDA #$FB
C - - - - - 0x00EB33 03:AB23: 4C 2D AB  JMP loc_AB2D
bra_AB26:
C - - - - - 0x00EB36 03:AB26: 18        CLC
C - - - - - 0x00EB37 03:AB27: 69 50     ADC #$50
C - - - - - 0x00EB39 03:AB29: 85 2B     STA ram_002B
C - - - - - 0x00EB3B 03:AB2B: A9 FC     LDA #$FC
loc_AB2D:
C D 1 - - - 0x00EB3D 03:AB2D: 99 1C 00  STA a: ram_001C,Y
loc_AB30:
C D 1 - - - 0x00EB40 03:AB30: A5 2B     LDA ram_002B
C - - - - - 0x00EB42 03:AB32: 99 21 00  STA a: ram_0021,Y
C - - - - - 0x00EB45 03:AB35: C8        INY
C - - - - - 0x00EB46 03:AB36: C0 05     CPY #$05
C - - - - - 0x00EB48 03:AB38: 90 D3     BCC bra_AB0D
C - - - - - 0x00EB4A 03:AB3A: A0 00     LDY #$00
C - - - - - 0x00EB4C 03:AB3C: B1 32     LDA (ram_0032),Y
C - - - - - 0x00EB4E 03:AB3E: 85 26     STA ram_0026
C - - - - - 0x00EB50 03:AB40: 18        CLC
C - - - - - 0x00EB51 03:AB41: 69 01     ADC #$01
C - - - - - 0x00EB53 03:AB43: 85 27     STA ram_0027
C - - - - - 0x00EB55 03:AB45: C8        INY
C - - - - - 0x00EB56 03:AB46: B1 32     LDA (ram_0032),Y
C - - - - - 0x00EB58 03:AB48: 85 28     STA ram_0028
C - - - - - 0x00EB5A 03:AB4A: 60        RTS



tbl_AB4B:
- D 1 - - - 0x00EB5B 03:AB4B: 00        .byte $00   ; 
- D 1 - - - 0x00EB5C 03:AB4C: 05        .byte $05   ; 
- D 1 - - - 0x00EB5D 03:AB4D: 0A        .byte $0A   ; 
- D 1 - - - 0x00EB5E 03:AB4E: 0F        .byte $0F   ; 
- D 1 - - - 0x00EB5F 03:AB4F: 14        .byte $14   ; 
- D 1 - - - 0x00EB60 03:AB50: 19        .byte $19   ; 
- - - - - - 0x00EB61 03:AB51: 1E        .byte $1E   ; 
- D 1 - - - 0x00EB62 03:AB52: 23        .byte $23   ; 
- D 1 - - - 0x00EB63 03:AB53: 28        .byte $28   ; 
- D 1 - - - 0x00EB64 03:AB54: 2D        .byte $2D   ; 
- D 1 - - - 0x00EB65 03:AB55: 32        .byte $32   ; 
- D 1 - - - 0x00EB66 03:AB56: 37        .byte $37   ; 



tbl_AB57_ppu_lo:
- D 1 - - - 0x00EB67 03:AB57: 01        .byte < $2A01   ; 00 
- D 1 - - - 0x00EB68 03:AB58: 14        .byte < $2A14   ; 01 



tbl_AB59_ppu_lo:
- D 1 - - - 0x00EB69 03:AB59: 21        .byte < $2A21   ; 00 
- D 1 - - - 0x00EB6A 03:AB5A: 34        .byte < $2A34   ; 01 



tbl_AB5B_ppu_lo:
- D 1 - - - 0x00EB6B 03:AB5B: 41        .byte < $2A41   ; 00 
- D 1 - - - 0x00EB6C 03:AB5C: 54        .byte < $2A54   ; 01 



tbl_AB5D_ppu_lo:
- D 1 - - - 0x00EB6D 03:AB5D: 64        .byte < $2A64   ; 00 
- D 1 - - - 0x00EB6E 03:AB5E: 77        .byte < $2A77   ; 01 



tbl_AB5F_ppu_lo:
- D 1 - - - 0x00EB6F 03:AB5F: 44        .byte < $2A44   ; 00 
- D 1 - - - 0x00EB70 03:AB60: 57        .byte < $2A57   ; 01 



tbl_AB61_ppu_lo:
- D 1 - - - 0x00EB71 03:AB61: 62        .byte < $2A62   ; 00 
- D 1 - - - 0x00EB72 03:AB62: 75        .byte < $2A75   ; 01 



tbl_AB63:
- D 1 - - - 0x00EB73 03:AB63: 0F        .byte $0F   ; 
- D 1 - - - 0x00EB74 03:AB64: 0C        .byte $0C   ; 
- D 1 - - - 0x00EB75 03:AB65: 0D        .byte $0D   ; 



tbl_AB66:
- D 1 - - - 0x00EB76 03:AB66: 5C        .byte $5C   ; 
- D 1 - - - 0x00EB77 03:AB67: 5D        .byte $5D   ; 
- D 1 - - - 0x00EB78 03:AB68: 5E        .byte $5E   ; 
- D 1 - - - 0x00EB79 03:AB69: 5F        .byte $5F   ; 
- D 1 - - - 0x00EB7A 03:AB6A: 6C        .byte $6C   ; 
- D 1 - - - 0x00EB7B 03:AB6B: 6D        .byte $6D   ; 
- D 1 - - - 0x00EB7C 03:AB6C: 6E        .byte $6E   ; 
- - - - - - 0x00EB7D 03:AB6D: 6F        .byte $6F   ; 
- D 1 - - - 0x00EB7E 03:AB6E: 0F        .byte $0F   ; 



tbl_AB6F:
- D 1 - - - 0x00EB7F 03:AB6F: 06        .byte $06   ; 
- D 1 - - - 0x00EB80 03:AB70: 07        .byte $07   ; 
- D 1 - - - 0x00EB81 03:AB71: 08        .byte $08   ; 
- D 1 - - - 0x00EB82 03:AB72: 09        .byte $09   ; 
- D 1 - - - 0x00EB83 03:AB73: 0A        .byte $0A   ; 
- D 1 - - - 0x00EB84 03:AB74: 0B        .byte $0B   ; 
- D 1 - - - 0x00EB85 03:AB75: 0C        .byte $0C   ; 
- D 1 - - - 0x00EB86 03:AB76: 0D        .byte $0D   ; 
- D 1 - - - 0x00EB87 03:AB77: 0E        .byte $0E   ; 
- D 1 - - - 0x00EB88 03:AB78: 0F        .byte $0F   ; 
- D 1 - - - 0x00EB89 03:AB79: 11        .byte $11   ; 
- D 1 - - - 0x00EB8A 03:AB7A: 12        .byte $12   ; 
- D 1 - - - 0x00EB8B 03:AB7B: 18        .byte $18   ; 



tbl_AB7C:
- D 1 - - - 0x00EB8C 03:AB7C: 96        .byte $96   ; 
tbl_AB7D:
- D 1 - - - 0x00EB8D 03:AB7D: 06        .byte $06   ; 
- D 1 - - - 0x00EB8E 03:AB7E: B9        .byte $B9   ; 
- D 1 - - - 0x00EB8F 03:AB7F: 06        .byte $06   ; 



tbl_AB80:
- D 1 - - - 0x00EB90 03:AB80: 8F        .byte $8F   ; 
tbl_AB81:
- D 1 - - - 0x00EB91 03:AB81: A1        .byte $A1   ; 
- D 1 - - - 0x00EB92 03:AB82: A0        .byte $A0   ; 
- D 1 - - - 0x00EB93 03:AB83: 8F        .byte $8F   ; 
- D 1 - - - 0x00EB94 03:AB84: 8D        .byte $8D   ; 
- D 1 - - - 0x00EB95 03:AB85: 8F        .byte $8F   ; 
- D 1 - - - 0x00EB96 03:AB86: 9E        .byte $9E   ; 
- D 1 - - - 0x00EB97 03:AB87: 9F        .byte $9F   ; 



tbl_AB88:
- D 1 - - - 0x00EB98 03:AB88: 0A AC     .word off_AC0A_00
- D 1 - - - 0x00EB9A 03:AB8A: 0F AC     .word off_AC0F_01
- D 1 - - - 0x00EB9C 03:AB8C: 14 AC     .word off_AC14_02
- D 1 - - - 0x00EB9E 03:AB8E: 19 AC     .word off_AC19_03
- D 1 - - - 0x00EBA0 03:AB90: 1E AC     .word off_AC1E_04
- D 1 - - - 0x00EBA2 03:AB92: 23 AC     .word off_AC23_05
- D 1 - - - 0x00EBA4 03:AB94: 28 AC     .word off_AC28_06
- D 1 - - - 0x00EBA6 03:AB96: 2D AC     .word off_AC2D_07
- D 1 - - - 0x00EBA8 03:AB98: 32 AC     .word off_AC32_08
- D 1 - - - 0x00EBAA 03:AB9A: 37 AC     .word off_AC37_09
- D 1 - - - 0x00EBAC 03:AB9C: 3C AC     .word off_AC3C_0A
- D 1 - - - 0x00EBAE 03:AB9E: 41 AC     .word off_AC41_0B
- - - - - - 0x00EBB0 03:ABA0: 46 AC     .word off_AC46_0C
- D 1 - - - 0x00EBB2 03:ABA2: 4B AC     .word off_AC4B_0D
- D 1 - - - 0x00EBB4 03:ABA4: 50 AC     .word off_AC50_0E
- D 1 - - - 0x00EBB6 03:ABA6: 55 AC     .word off_AC55_0F
- D 1 - - - 0x00EBB8 03:ABA8: 5A AC     .word off_AC5A_10
- D 1 - - - 0x00EBBA 03:ABAA: 5F AC     .word off_AC5F_11
- D 1 - - - 0x00EBBC 03:ABAC: 64 AC     .word off_AC64_12
- D 1 - - - 0x00EBBE 03:ABAE: 69 AC     .word off_AC69_13
- D 1 - - - 0x00EBC0 03:ABB0: 6E AC     .word off_AC6E_14
- D 1 - - - 0x00EBC2 03:ABB2: 73 AC     .word off_AC73_15
- D 1 - - - 0x00EBC4 03:ABB4: 78 AC     .word off_AC78_16
- D 1 - - - 0x00EBC6 03:ABB6: 7D AC     .word off_AC7D_17
- D 1 - - - 0x00EBC8 03:ABB8: 82 AC     .word off_AC82_18
- D 1 - - - 0x00EBCA 03:ABBA: 87 AC     .word off_AC87_19
- D 1 - - - 0x00EBCC 03:ABBC: 8C AC     .word off_AC8C_1A
- D 1 - - - 0x00EBCE 03:ABBE: 91 AC     .word off_AC91_1B
- D 1 - - - 0x00EBD0 03:ABC0: 96 AC     .word off_AC96_1C
- D 1 - - - 0x00EBD2 03:ABC2: 9B AC     .word off_AC9B_1D
- D 1 - - - 0x00EBD4 03:ABC4: A0 AC     .word off_ACA0_1E
- D 1 - - - 0x00EBD6 03:ABC6: A5 AC     .word off_ACA5_1F
- D 1 - - - 0x00EBD8 03:ABC8: AA AC     .word off_ACAA_20
- D 1 - - - 0x00EBDA 03:ABCA: AF AC     .word off_ACAF_21
- D 1 - - - 0x00EBDC 03:ABCC: B4 AC     .word off_ACB4_22
- D 1 - - - 0x00EBDE 03:ABCE: B9 AC     .word off_ACB9_23
- D 1 - - - 0x00EBE0 03:ABD0: BE AC     .word off_ACBE_24
- D 1 - - - 0x00EBE2 03:ABD2: C3 AC     .word off_ACC3_25
- D 1 - - - 0x00EBE4 03:ABD4: C8 AC     .word off_ACC8_26
- D 1 - - - 0x00EBE6 03:ABD6: CD AC     .word off_ACCD_27
- D 1 - - - 0x00EBE8 03:ABD8: D2 AC     .word off_ACD2_28
- D 1 - - - 0x00EBEA 03:ABDA: D7 AC     .word off_ACD7_29
- D 1 - - - 0x00EBEC 03:ABDC: DC AC     .word off_ACDC_2A
- D 1 - - - 0x00EBEE 03:ABDE: E1 AC     .word off_ACE1_2B
- D 1 - - - 0x00EBF0 03:ABE0: E6 AC     .word off_ACE6_2C
- D 1 - - - 0x00EBF2 03:ABE2: EB AC     .word off_ACEB_2D
- D 1 - - - 0x00EBF4 03:ABE4: F0 AC     .word off_ACF0_2E
- D 1 - - - 0x00EBF6 03:ABE6: F5 AC     .word off_ACF5_2F
- D 1 - - - 0x00EBF8 03:ABE8: FA AC     .word off_ACFA_30
- D 1 - - - 0x00EBFA 03:ABEA: FF AC     .word off_ACFF_31
- D 1 - - - 0x00EBFC 03:ABEC: 04 AD     .word off_AD04_32
- D 1 - - - 0x00EBFE 03:ABEE: 09 AD     .word off_AD09_33
- D 1 - - - 0x00EC00 03:ABF0: 0E AD     .word off_AD0E_34
- D 1 - - - 0x00EC02 03:ABF2: 13 AD     .word off_AD13_35
- D 1 - - - 0x00EC04 03:ABF4: 18 AD     .word off_AD18_36
- D 1 - - - 0x00EC06 03:ABF6: 1D AD     .word off_AD1D_37
- D 1 - - - 0x00EC08 03:ABF8: 22 AD     .word off_AD22_38
- D 1 - - - 0x00EC0A 03:ABFA: 27 AD     .word off_AD27_39
- D 1 - - - 0x00EC0C 03:ABFC: 2C AD     .word off_AD2C_3A
- - - - - - 0x00EC0E 03:ABFE: 31 AD     .word off_AD31_3B
- D 1 - - - 0x00EC10 03:AC00: 36 AD     .word off_AD36_3C
- D 1 - - - 0x00EC12 03:AC02: 3B AD     .word off_AD3B_3D
- D 1 - - - 0x00EC14 03:AC04: 40 AD     .word off_AD40_3E
- D 1 - - - 0x00EC16 03:AC06: 45 AD     .word off_AD45_3F
- D 1 - - - 0x00EC18 03:AC08: 4A AD     .word off_AD4A_40



off_AC0A_00:
- D 1 - I - 0x00EC1A 03:AC0A: AD        .byte $AD   ; 
- D 1 - I - 0x00EC1B 03:AC0B: D2        .byte $D2   ; 
- D 1 - I - 0x00EC1C 03:AC0C: D9        .byte $D9   ; 
- D 1 - I - 0x00EC1D 03:AC0D: B5        .byte $B5   ; 
- D 1 - I - 0x00EC1E 03:AC0E: FF        .byte $FF   ; 



off_AC0F_01:
- D 1 - I - 0x00EC1F 03:AC0F: B2        .byte $B2   ; 
- D 1 - I - 0x00EC20 03:AC10: D1        .byte $D1   ; 
- D 1 - I - 0x00EC21 03:AC11: CF        .byte $CF   ; 
- D 1 - I - 0x00EC22 03:AC12: AE        .byte $AE   ; 
- D 1 - I - 0x00EC23 03:AC13: FF        .byte $FF   ; 



off_AC14_02:
- D 1 - I - 0x00EC24 03:AC14: AB        .byte $AB   ; 
- D 1 - I - 0x00EC25 03:AC15: E1        .byte $E1   ; 
- D 1 - I - 0x00EC26 03:AC16: A6        .byte $A6   ; 
- D 1 - I - 0x00EC27 03:AC17: D9        .byte $D9   ; 
- D 1 - I - 0x00EC28 03:AC18: CA        .byte $CA   ; 



off_AC19_03:
- D 1 - I - 0x00EC29 03:AC19: A3        .byte $A3   ; 
- D 1 - I - 0x00EC2A 03:AC1A: AA        .byte $AA   ; 
- D 1 - I - 0x00EC2B 03:AC1B: A3        .byte $A3   ; 
- D 1 - I - 0x00EC2C 03:AC1C: AA        .byte $AA   ; 
- D 1 - I - 0x00EC2D 03:AC1D: DF        .byte $DF   ; 



off_AC1E_04:
- D 1 - I - 0x00EC2E 03:AC1E: B1        .byte $B1   ; 
- D 1 - I - 0x00EC2F 03:AC1F: E1        .byte $E1   ; 
- D 1 - I - 0x00EC30 03:AC20: D0        .byte $D0   ; 
- D 1 - I - 0x00EC31 03:AC21: AD        .byte $AD   ; 
- D 1 - I - 0x00EC32 03:AC22: D2        .byte $D2   ; 



off_AC23_05:
- D 1 - I - 0x00EC33 03:AC23: A7        .byte $A7   ; 
- D 1 - I - 0x00EC34 03:AC24: CD        .byte $CD   ; 
- D 1 - I - 0x00EC35 03:AC25: AF        .byte $AF   ; 
- D 1 - I - 0x00EC36 03:AC26: FF        .byte $FF   ; 
- D 1 - I - 0x00EC37 03:AC27: FF        .byte $FF   ; 



off_AC28_06:
- D 1 - I - 0x00EC38 03:AC28: BD        .byte $BD   ; 
- D 1 - I - 0x00EC39 03:AC29: E1        .byte $E1   ; 
- D 1 - I - 0x00EC3A 03:AC2A: B3        .byte $B3   ; 
- D 1 - I - 0x00EC3B 03:AC2B: AA        .byte $AA   ; 
- D 1 - I - 0x00EC3C 03:AC2C: CC        .byte $CC   ; 



off_AC2D_07:
- D 1 - I - 0x00EC3D 03:AC2D: BB        .byte $BB   ; 
- D 1 - I - 0x00EC3E 03:AC2E: E0        .byte $E0   ; 
- D 1 - I - 0x00EC3F 03:AC2F: AE        .byte $AE   ; 
- D 1 - I - 0x00EC40 03:AC30: DF        .byte $DF   ; 
- D 1 - I - 0x00EC41 03:AC31: FF        .byte $FF   ; 



off_AC32_08:
- D 1 - I - 0x00EC42 03:AC32: C0        .byte $C0   ; 
- D 1 - I - 0x00EC43 03:AC33: CD        .byte $CD   ; 
- D 1 - I - 0x00EC44 03:AC34: AF        .byte $AF   ; 
- D 1 - I - 0x00EC45 03:AC35: FF        .byte $FF   ; 
- D 1 - I - 0x00EC46 03:AC36: FF        .byte $FF   ; 



off_AC37_09:
- D 1 - I - 0x00EC47 03:AC37: C7        .byte $C7   ; 
- D 1 - I - 0x00EC48 03:AC38: AB        .byte $AB   ; 
- D 1 - I - 0x00EC49 03:AC39: AF        .byte $AF   ; 
- D 1 - I - 0x00EC4A 03:AC3A: FF        .byte $FF   ; 
- D 1 - I - 0x00EC4B 03:AC3B: FF        .byte $FF   ; 



off_AC3C_0A:
- D 1 - I - 0x00EC4C 03:AC3C: A6        .byte $A6   ; 
- D 1 - I - 0x00EC4D 03:AC3D: CB        .byte $CB   ; 
- D 1 - I - 0x00EC4E 03:AC3E: A6        .byte $A6   ; 
- D 1 - I - 0x00EC4F 03:AC3F: CB        .byte $CB   ; 
- D 1 - I - 0x00EC50 03:AC40: DF        .byte $DF   ; 



off_AC41_0B:
- D 1 - I - 0x00EC51 03:AC41: AB        .byte $AB   ; 
- D 1 - I - 0x00EC52 03:AC42: D0        .byte $D0   ; 
- D 1 - I - 0x00EC53 03:AC43: B2        .byte $B2   ; 
- D 1 - I - 0x00EC54 03:AC44: FF        .byte $FF   ; 
- D 1 - I - 0x00EC55 03:AC45: FF        .byte $FF   ; 



off_AC46_0C:
- - - - - - 0x00EC56 03:AC46: C0        .byte $C0   ; 
- - - - - - 0x00EC57 03:AC47: A7        .byte $A7   ; 
- - - - - - 0x00EC58 03:AC48: AF        .byte $AF   ; 
- - - - - - 0x00EC59 03:AC49: CC        .byte $CC   ; 
- - - - - - 0x00EC5A 03:AC4A: FF        .byte $FF   ; 



off_AC4B_0D:
- D 1 - I - 0x00EC5B 03:AC4B: B1        .byte $B1   ; 
- D 1 - I - 0x00EC5C 03:AC4C: D0        .byte $D0   ; 
- D 1 - I - 0x00EC5D 03:AC4D: A9        .byte $A9   ; 
- D 1 - I - 0x00EC5E 03:AC4E: CA        .byte $CA   ; 
- D 1 - I - 0x00EC5F 03:AC4F: FF        .byte $FF   ; 



off_AC50_0E:
- D 1 - I - 0x00EC60 03:AC50: C0        .byte $C0   ; 
- D 1 - I - 0x00EC61 03:AC51: A2        .byte $A2   ; 
- D 1 - I - 0x00EC62 03:AC52: D9        .byte $D9   ; 
- D 1 - I - 0x00EC63 03:AC53: A9        .byte $A9   ; 
- D 1 - I - 0x00EC64 03:AC54: FF        .byte $FF   ; 



off_AC55_0F:
- D 1 - I - 0x00EC65 03:AC55: A4        .byte $A4   ; 
- D 1 - I - 0x00EC66 03:AC56: BB        .byte $BB   ; 
- D 1 - I - 0x00EC67 03:AC57: E1        .byte $E1   ; 
- D 1 - I - 0x00EC68 03:AC58: A5        .byte $A5   ; 
- D 1 - I - 0x00EC69 03:AC59: DF        .byte $DF   ; 



off_AC5A_10:
- D 1 - I - 0x00EC6A 03:AC5A: BD        .byte $BD   ; 
- D 1 - I - 0x00EC6B 03:AC5B: E1        .byte $E1   ; 
- D 1 - I - 0x00EC6C 03:AC5C: CC        .byte $CC   ; 
- D 1 - I - 0x00EC6D 03:AC5D: D0        .byte $D0   ; 
- D 1 - I - 0x00EC6E 03:AC5E: A9        .byte $A9   ; 



off_AC5F_11:
- D 1 - I - 0x00EC6F 03:AC5F: B2        .byte $B2   ; 
- D 1 - I - 0x00EC70 03:AC60: D7        .byte $D7   ; 
- D 1 - I - 0x00EC71 03:AC61: D0        .byte $D0   ; 
- D 1 - I - 0x00EC72 03:AC62: A9        .byte $A9   ; 
- D 1 - I - 0x00EC73 03:AC63: FF        .byte $FF   ; 



off_AC64_12:
- D 1 - I - 0x00EC74 03:AC64: AE        .byte $AE   ; 
- D 1 - I - 0x00EC75 03:AC65: BE        .byte $BE   ; 
- D 1 - I - 0x00EC76 03:AC66: E1        .byte $E1   ; 
- D 1 - I - 0x00EC77 03:AC67: CB        .byte $CB   ; 
- D 1 - I - 0x00EC78 03:AC68: FF        .byte $FF   ; 



off_AC69_13:
- D 1 - I - 0x00EC79 03:AC69: A7        .byte $A7   ; 
- D 1 - I - 0x00EC7A 03:AC6A: D0        .byte $D0   ; 
- D 1 - I - 0x00EC7B 03:AC6B: B5        .byte $B5   ; 
- D 1 - I - 0x00EC7C 03:AC6C: DF        .byte $DF   ; 
- D 1 - I - 0x00EC7D 03:AC6D: FF        .byte $FF   ; 



off_AC6E_14:
- D 1 - I - 0x00EC7E 03:AC6E: A9        .byte $A9   ; 
- D 1 - I - 0x00EC7F 03:AC6F: C9        .byte $C9   ; 
- D 1 - I - 0x00EC80 03:AC70: A2        .byte $A2   ; 
- D 1 - I - 0x00EC81 03:AC71: D9        .byte $D9   ; 
- D 1 - I - 0x00EC82 03:AC72: FF        .byte $FF   ; 



off_AC73_15:
- D 1 - I - 0x00EC83 03:AC73: AA        .byte $AA   ; 
- D 1 - I - 0x00EC84 03:AC74: CB        .byte $CB   ; 
- D 1 - I - 0x00EC85 03:AC75: DF        .byte $DF   ; 
- D 1 - I - 0x00EC86 03:AC76: FF        .byte $FF   ; 
- D 1 - I - 0x00EC87 03:AC77: FF        .byte $FF   ; 



off_AC78_16:
- D 1 - I - 0x00EC88 03:AC78: C5        .byte $C5   ; 
- D 1 - I - 0x00EC89 03:AC79: CB        .byte $CB   ; 
- D 1 - I - 0x00EC8A 03:AC7A: DF        .byte $DF   ; 
- D 1 - I - 0x00EC8B 03:AC7B: FF        .byte $FF   ; 
- D 1 - I - 0x00EC8C 03:AC7C: FF        .byte $FF   ; 



off_AC7D_17:
- D 1 - I - 0x00EC8D 03:AC7D: A3        .byte $A3   ; 
- D 1 - I - 0x00EC8E 03:AC7E: AA        .byte $AA   ; 
- D 1 - I - 0x00EC8F 03:AC7F: DF        .byte $DF   ; 
- D 1 - I - 0x00EC90 03:AC80: FF        .byte $FF   ; 
- D 1 - I - 0x00EC91 03:AC81: FF        .byte $FF   ; 



off_AC82_18:
- D 1 - I - 0x00EC92 03:AC82: 80        .byte $80   ; 
- D 1 - I - 0x00EC93 03:AC83: 9F        .byte $9F   ; 
- D 1 - I - 0x00EC94 03:AC84: DF        .byte $DF   ; 
- D 1 - I - 0x00EC95 03:AC85: FF        .byte $FF   ; 
- D 1 - I - 0x00EC96 03:AC86: FF        .byte $FF   ; 



off_AC87_19:
- D 1 - I - 0x00EC97 03:AC87: 80        .byte $80   ; 
- D 1 - I - 0x00EC98 03:AC88: 9F        .byte $9F   ; 
- D 1 - I - 0x00EC99 03:AC89: 80        .byte $80   ; 
- D 1 - I - 0x00EC9A 03:AC8A: 9F        .byte $9F   ; 
- D 1 - I - 0x00EC9B 03:AC8B: DF        .byte $DF   ; 



off_AC8C_1A:
- D 1 - I - 0x00EC9C 03:AC8C: A6        .byte $A6   ; 
- D 1 - I - 0x00EC9D 03:AC8D: D0        .byte $D0   ; 
- D 1 - I - 0x00EC9E 03:AC8E: AE        .byte $AE   ; 
- D 1 - I - 0x00EC9F 03:AC8F: FF        .byte $FF   ; 
- D 1 - I - 0x00ECA0 03:AC90: FF        .byte $FF   ; 



off_AC91_1B:
- D 1 - I - 0x00ECA1 03:AC91: A7        .byte $A7   ; 
- D 1 - I - 0x00ECA2 03:AC92: E1        .byte $E1   ; 
- D 1 - I - 0x00ECA3 03:AC93: D0        .byte $D0   ; 
- D 1 - I - 0x00ECA4 03:AC94: B4        .byte $B4   ; 
- D 1 - I - 0x00ECA5 03:AC95: CF        .byte $CF   ; 



off_AC96_1C:
- D 1 - I - 0x00ECA6 03:AC96: C7        .byte $C7   ; 
- D 1 - I - 0x00ECA7 03:AC97: AD        .byte $AD   ; 
- D 1 - I - 0x00ECA8 03:AC98: DF        .byte $DF   ; 
- D 1 - I - 0x00ECA9 03:AC99: FF        .byte $FF   ; 
- D 1 - I - 0x00ECAA 03:AC9A: FF        .byte $FF   ; 



off_AC9B_1D:
- D 1 - I - 0x00ECAB 03:AC9B: A3        .byte $A3   ; 
- D 1 - I - 0x00ECAC 03:AC9C: C5        .byte $C5   ; 
- D 1 - I - 0x00ECAD 03:AC9D: B1        .byte $B1   ; 
- D 1 - I - 0x00ECAE 03:AC9E: E1        .byte $E1   ; 
- D 1 - I - 0x00ECAF 03:AC9F: DF        .byte $DF   ; 



off_ACA0_1E:
- D 1 - I - 0x00ECB0 03:ACA0: BE        .byte $BE   ; 
- D 1 - I - 0x00ECB1 03:ACA1: E1        .byte $E1   ; 
- D 1 - I - 0x00ECB2 03:ACA2: A5        .byte $A5   ; 
- D 1 - I - 0x00ECB3 03:ACA3: D9        .byte $D9   ; 
- D 1 - I - 0x00ECB4 03:ACA4: D0        .byte $D0   ; 



off_ACA5_1F:
- D 1 - I - 0x00ECB5 03:ACA5: A4        .byte $A4   ; 
- D 1 - I - 0x00ECB6 03:ACA6: CA        .byte $CA   ; 
- D 1 - I - 0x00ECB7 03:ACA7: AC        .byte $AC   ; 
- D 1 - I - 0x00ECB8 03:ACA8: A3        .byte $A3   ; 
- D 1 - I - 0x00ECB9 03:ACA9: FF        .byte $FF   ; 



off_ACAA_20:
- D 1 - I - 0x00ECBA 03:ACAA: C2        .byte $C2   ; 
- D 1 - I - 0x00ECBB 03:ACAB: AD        .byte $AD   ; 
- D 1 - I - 0x00ECBC 03:ACAC: D0        .byte $D0   ; 
- D 1 - I - 0x00ECBD 03:ACAD: DF        .byte $DF   ; 
- D 1 - I - 0x00ECBE 03:ACAE: FF        .byte $FF   ; 



off_ACAF_21:
- D 1 - I - 0x00ECBF 03:ACAF: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC0 03:ACB0: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC1 03:ACB1: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC2 03:ACB2: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC3 03:ACB3: E2        .byte $E2   ; 



off_ACB4_22:
- D 1 - I - 0x00ECC4 03:ACB4: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC5 03:ACB5: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC6 03:ACB6: E2        .byte $E2   ; 
- D 1 - I - 0x00ECC7 03:ACB7: E3        .byte $E3   ; 
- D 1 - I - 0x00ECC8 03:ACB8: DF        .byte $DF   ; 



off_ACB9_23:
- D 1 - I - 0x00ECC9 03:ACB9: E2        .byte $E2   ; 
- D 1 - I - 0x00ECCA 03:ACBA: E2        .byte $E2   ; 
- D 1 - I - 0x00ECCB 03:ACBB: E2        .byte $E2   ; 
- D 1 - I - 0x00ECCC 03:ACBC: CF        .byte $CF   ; 
- D 1 - I - 0x00ECCD 03:ACBD: DF        .byte $DF   ; 



off_ACBE_24:
- D 1 - I - 0x00ECCE 03:ACBE: E2        .byte $E2   ; 
- D 1 - I - 0x00ECCF 03:ACBF: E2        .byte $E2   ; 
- D 1 - I - 0x00ECD0 03:ACC0: E2        .byte $E2   ; 
- D 1 - I - 0x00ECD1 03:ACC1: DF        .byte $DF   ; 
- D 1 - I - 0x00ECD2 03:ACC2: DE        .byte $DE   ; 



off_ACC3_25:
- D 1 - I - 0x00ECD3 03:ACC3: E3        .byte $E3   ; 
- D 1 - I - 0x00ECD4 03:ACC4: E2        .byte $E2   ; 
- D 1 - I - 0x00ECD5 03:ACC5: E3        .byte $E3   ; 
- D 1 - I - 0x00ECD6 03:ACC6: E2        .byte $E2   ; 
- D 1 - I - 0x00ECD7 03:ACC7: E3        .byte $E3   ; 



off_ACC8_26:
- D 1 - I - 0x00ECD8 03:ACC8: DE        .byte $DE   ; 
- D 1 - I - 0x00ECD9 03:ACC9: DE        .byte $DE   ; 
- D 1 - I - 0x00ECDA 03:ACCA: DE        .byte $DE   ; 
- D 1 - I - 0x00ECDB 03:ACCB: DE        .byte $DE   ; 
- D 1 - I - 0x00ECDC 03:ACCC: DF        .byte $DF   ; 



off_ACCD_27:
- D 1 - I - 0x00ECDD 03:ACCD: A4        .byte $A4   ; 
- D 1 - I - 0x00ECDE 03:ACCE: BC        .byte $BC   ; 
- D 1 - I - 0x00ECDF 03:ACCF: D3        .byte $D3   ; 
- D 1 - I - 0x00ECE0 03:ACD0: FF        .byte $FF   ; 
- D 1 - I - 0x00ECE1 03:ACD1: FF        .byte $FF   ; 



off_ACD2_28:
- D 1 - I - 0x00ECE2 03:ACD2: A4        .byte $A4   ; 
- D 1 - I - 0x00ECE3 03:ACD3: BB        .byte $BB   ; 
- D 1 - I - 0x00ECE4 03:ACD4: D4        .byte $D4   ; 
- D 1 - I - 0x00ECE5 03:ACD5: FF        .byte $FF   ; 
- D 1 - I - 0x00ECE6 03:ACD6: FF        .byte $FF   ; 



off_ACD7_29:
- D 1 - I - 0x00ECE7 03:ACD7: A8        .byte $A8   ; 
- D 1 - I - 0x00ECE8 03:ACD8: E1        .byte $E1   ; 
- D 1 - I - 0x00ECE9 03:ACD9: A5        .byte $A5   ; 
- D 1 - I - 0x00ECEA 03:ACDA: D9        .byte $D9   ; 
- D 1 - I - 0x00ECEB 03:ACDB: D0        .byte $D0   ; 



off_ACDC_2A:
- D 1 - I - 0x00ECEC 03:ACDC: A9        .byte $A9   ; 
- D 1 - I - 0x00ECED 03:ACDD: E1        .byte $E1   ; 
- D 1 - I - 0x00ECEE 03:ACDE: A5        .byte $A5   ; 
- D 1 - I - 0x00ECEF 03:ACDF: D9        .byte $D9   ; 
- D 1 - I - 0x00ECF0 03:ACE0: D0        .byte $D0   ; 



off_ACE1_2B:
- D 1 - I - 0x00ECF1 03:ACE1: A9        .byte $A9   ; 
- D 1 - I - 0x00ECF2 03:ACE2: E1        .byte $E1   ; 
- D 1 - I - 0x00ECF3 03:ACE3: AA        .byte $AA   ; 
- D 1 - I - 0x00ECF4 03:ACE4: E1        .byte $E1   ; 
- D 1 - I - 0x00ECF5 03:ACE5: D0        .byte $D0   ; 



off_ACE6_2C:
- D 1 - I - 0x00ECF6 03:ACE6: B1        .byte $B1   ; 
- D 1 - I - 0x00ECF7 03:ACE7: E1        .byte $E1   ; 
- D 1 - I - 0x00ECF8 03:ACE8: A2        .byte $A2   ; 
- D 1 - I - 0x00ECF9 03:ACE9: D9        .byte $D9   ; 
- D 1 - I - 0x00ECFA 03:ACEA: D0        .byte $D0   ; 



off_ACEB_2D:
- D 1 - I - 0x00ECFB 03:ACEB: B5        .byte $B5   ; 
- D 1 - I - 0x00ECFC 03:ACEC: E1        .byte $E1   ; 
- D 1 - I - 0x00ECFD 03:ACED: C9        .byte $C9   ; 
- D 1 - I - 0x00ECFE 03:ACEE: D1        .byte $D1   ; 
- D 1 - I - 0x00ECFF 03:ACEF: D9        .byte $D9   ; 



off_ACF0_2E:
- D 1 - I - 0x00ED00 03:ACF0: A7        .byte $A7   ; 
- D 1 - I - 0x00ED01 03:ACF1: E1        .byte $E1   ; 
- D 1 - I - 0x00ED02 03:ACF2: A6        .byte $A6   ; 
- D 1 - I - 0x00ED03 03:ACF3: D9        .byte $D9   ; 
- D 1 - I - 0x00ED04 03:ACF4: D0        .byte $D0   ; 



off_ACF5_2F:
- D 1 - I - 0x00ED05 03:ACF5: B1        .byte $B1   ; 
- D 1 - I - 0x00ED06 03:ACF6: A2        .byte $A2   ; 
- D 1 - I - 0x00ED07 03:ACF7: D9        .byte $D9   ; 
- D 1 - I - 0x00ED08 03:ACF8: D0        .byte $D0   ; 
- D 1 - I - 0x00ED09 03:ACF9: FF        .byte $FF   ; 



off_ACFA_30:
- D 1 - I - 0x00ED0A 03:ACFA: B5        .byte $B5   ; 
- D 1 - I - 0x00ED0B 03:ACFB: C9        .byte $C9   ; 
- D 1 - I - 0x00ED0C 03:ACFC: D1        .byte $D1   ; 
- D 1 - I - 0x00ED0D 03:ACFD: D9        .byte $D9   ; 
- D 1 - I - 0x00ED0E 03:ACFE: FF        .byte $FF   ; 



off_ACFF_31:
- D 1 - I - 0x00ED0F 03:ACFF: A4        .byte $A4   ; 
- D 1 - I - 0x00ED10 03:AD00: C9        .byte $C9   ; 
- D 1 - I - 0x00ED11 03:AD01: D1        .byte $D1   ; 
- D 1 - I - 0x00ED12 03:AD02: D9        .byte $D9   ; 
- D 1 - I - 0x00ED13 03:AD03: FF        .byte $FF   ; 



off_AD04_32:
- D 1 - I - 0x00ED14 03:AD04: BF        .byte $BF   ; 
- D 1 - I - 0x00ED15 03:AD05: A3        .byte $A3   ; 
- D 1 - I - 0x00ED16 03:AD06: D0        .byte $D0   ; 
- D 1 - I - 0x00ED17 03:AD07: FF        .byte $FF   ; 
- D 1 - I - 0x00ED18 03:AD08: FF        .byte $FF   ; 



off_AD09_33:
- D 1 - I - 0x00ED19 03:AD09: BB        .byte $BB   ; 
- D 1 - I - 0x00ED1A 03:AD0A: A2        .byte $A2   ; 
- D 1 - I - 0x00ED1B 03:AD0B: D0        .byte $D0   ; 
- D 1 - I - 0x00ED1C 03:AD0C: FF        .byte $FF   ; 
- D 1 - I - 0x00ED1D 03:AD0D: FF        .byte $FF   ; 



off_AD0E_34:
- D 1 - I - 0x00ED1E 03:AD0E: A5        .byte $A5   ; 
- D 1 - I - 0x00ED1F 03:AD0F: A3        .byte $A3   ; 
- D 1 - I - 0x00ED20 03:AD10: DF        .byte $DF   ; 
- D 1 - I - 0x00ED21 03:AD11: FF        .byte $FF   ; 
- D 1 - I - 0x00ED22 03:AD12: FF        .byte $FF   ; 



off_AD13_35:
- D 1 - I - 0x00ED23 03:AD13: CF        .byte $CF   ; 
- D 1 - I - 0x00ED24 03:AD14: BB        .byte $BB   ; 
- D 1 - I - 0x00ED25 03:AD15: E1        .byte $E1   ; 
- D 1 - I - 0x00ED26 03:AD16: DF        .byte $DF   ; 
- D 1 - I - 0x00ED27 03:AD17: FF        .byte $FF   ; 



off_AD18_36:
- D 1 - I - 0x00ED28 03:AD18: B8        .byte $B8   ; 
- D 1 - I - 0x00ED29 03:AD19: BB        .byte $BB   ; 
- D 1 - I - 0x00ED2A 03:AD1A: E1        .byte $E1   ; 
- D 1 - I - 0x00ED2B 03:AD1B: DF        .byte $DF   ; 
- D 1 - I - 0x00ED2C 03:AD1C: FF        .byte $FF   ; 



off_AD1D_37:
- D 1 - I - 0x00ED2D 03:AD1D: CF        .byte $CF   ; 
- D 1 - I - 0x00ED2E 03:AD1E: AA        .byte $AA   ; 
- D 1 - I - 0x00ED2F 03:AD1F: E1        .byte $E1   ; 
- D 1 - I - 0x00ED30 03:AD20: DF        .byte $DF   ; 
- D 1 - I - 0x00ED31 03:AD21: FF        .byte $FF   ; 



off_AD22_38:
- D 1 - I - 0x00ED32 03:AD22: D0        .byte $D0   ; 
- D 1 - I - 0x00ED33 03:AD23: AA        .byte $AA   ; 
- D 1 - I - 0x00ED34 03:AD24: E1        .byte $E1   ; 
- D 1 - I - 0x00ED35 03:AD25: CC        .byte $CC   ; 
- D 1 - I - 0x00ED36 03:AD26: FF        .byte $FF   ; 



off_AD27_39:
- D 1 - I - 0x00ED37 03:AD27: A3        .byte $A3   ; 
- D 1 - I - 0x00ED38 03:AD28: A5        .byte $A5   ; 
- D 1 - I - 0x00ED39 03:AD29: D9        .byte $D9   ; 
- D 1 - I - 0x00ED3A 03:AD2A: AE        .byte $AE   ; 
- D 1 - I - 0x00ED3B 03:AD2B: FF        .byte $FF   ; 



off_AD2C_3A:
- D 1 - I - 0x00ED3C 03:AD2C: A6        .byte $A6   ; 
- D 1 - I - 0x00ED3D 03:AD2D: E2        .byte $E2   ; 
- D 1 - I - 0x00ED3E 03:AD2E: BA        .byte $BA   ; 
- D 1 - I - 0x00ED3F 03:AD2F: D9        .byte $D9   ; 
- D 1 - I - 0x00ED40 03:AD30: A4        .byte $A4   ; 



off_AD31_3B:
- - - - - - 0x00ED41 03:AD31: AB        .byte $AB   ; 
- - - - - - 0x00ED42 03:AD32: E1        .byte $E1   ; 
- - - - - - 0x00ED43 03:AD33: C3        .byte $C3   ; 
- - - - - - 0x00ED44 03:AD34: CF        .byte $CF   ; 
- - - - - - 0x00ED45 03:AD35: DF        .byte $DF   ; 



off_AD36_3C:
- D 1 - I - 0x00ED46 03:AD36: C5        .byte $C5   ; 
- D 1 - I - 0x00ED47 03:AD37: C2        .byte $C2   ; 
- D 1 - I - 0x00ED48 03:AD38: C5        .byte $C5   ; 
- D 1 - I - 0x00ED49 03:AD39: C2        .byte $C2   ; 
- D 1 - I - 0x00ED4A 03:AD3A: FF        .byte $FF   ; 



off_AD3B_3D:
- D 1 - I - 0x00ED4B 03:AD3B: A3        .byte $A3   ; 
- D 1 - I - 0x00ED4C 03:AD3C: B4        .byte $B4   ; 
- D 1 - I - 0x00ED4D 03:AD3D: D7        .byte $D7   ; 
- D 1 - I - 0x00ED4E 03:AD3E: FF        .byte $FF   ; 
- D 1 - I - 0x00ED4F 03:AD3F: FF        .byte $FF   ; 



off_AD40_3E:
- D 1 - I - 0x00ED50 03:AD40: A4        .byte $A4   ; 
- D 1 - I - 0x00ED51 03:AD41: D0        .byte $D0   ; 
- D 1 - I - 0x00ED52 03:AD42: DF        .byte $DF   ; 
- D 1 - I - 0x00ED53 03:AD43: FF        .byte $FF   ; 
- D 1 - I - 0x00ED54 03:AD44: FF        .byte $FF   ; 



off_AD45_3F:
- D 1 - I - 0x00ED55 03:AD45: A6        .byte $A6   ; 
- D 1 - I - 0x00ED56 03:AD46: D9        .byte $D9   ; 
- D 1 - I - 0x00ED57 03:AD47: D0        .byte $D0   ; 
- D 1 - I - 0x00ED58 03:AD48: DF        .byte $DF   ; 
- D 1 - I - 0x00ED59 03:AD49: DF        .byte $DF   ; 



off_AD4A_40:
- D 1 - I - 0x00ED5A 03:AD4A: FF        .byte $FF   ; 
- D 1 - I - 0x00ED5B 03:AD4B: FF        .byte $FF   ; 
- D 1 - I - 0x00ED5C 03:AD4C: FF        .byte $FF   ; 
- D 1 - I - 0x00ED5D 03:AD4D: FF        .byte $FF   ; 
- D 1 - I - 0x00ED5E 03:AD4E: FF        .byte $FF   ; 



tbl_AD4F:
- D 1 - - - 0x00ED5F 03:AD4F: 6F AD     .word off_AD6F_00
- D 1 - - - 0x00ED61 03:AD51: 87 AD     .word off_AD87_01
- - - - - - 0x00ED63 03:AD53: 9F AD     .word off_AD9F_02
- D 1 - - - 0x00ED65 03:AD55: 93 AD     .word off_AD93_03
- - - - - - 0x00ED67 03:AD57: 6F AD     .word off_AD6F_04
- D 1 - - - 0x00ED69 03:AD59: AB AD     .word off_ADAB_05
- - - - - - 0x00ED6B 03:AD5B: B7 AD     .word off_ADB7_06
- D 1 - - - 0x00ED6D 03:AD5D: C3 AD     .word off_ADC3_07
- - - - - - 0x00ED6F 03:AD5F: 6F AD     .word off_AD6F_08
- D 1 - - - 0x00ED71 03:AD61: CF AD     .word off_ADCF_09
- - - - - - 0x00ED73 03:AD63: DB AD     .word off_ADDB_0A
- D 1 - - - 0x00ED75 03:AD65: E7 AD     .word off_ADE7_0B
- - - - - - 0x00ED77 03:AD67: 6F AD     .word off_AD6F_0C
- D 1 - - - 0x00ED79 03:AD69: F3 AD     .word off_ADF3_0D
- D 1 - - - 0x00ED7B 03:AD6B: FF AD     .word off_ADFF_0E
- D 1 - - - 0x00ED7D 03:AD6D: 0B AE     .word off_AE0B_0F



off_AD6F_00:
off_AD6F_04:
off_AD6F_08:
off_AD6F_0C:
- D 1 - I - 0x00ED7F 03:AD6F: 00        .byte $00   ; 
- D 1 - I - 0x00ED80 03:AD70: 98        .byte $98   ; 
- D 1 - I - 0x00ED81 03:AD71: 18        .byte $18   ; 
- D 1 - I - 0x00ED82 03:AD72: 97        .byte $97   ; 
- D 1 - I - 0x00ED83 03:AD73: 08        .byte $08   ; 
- D 1 - I - 0x00ED84 03:AD74: 99        .byte $99   ; 
- D 1 - I - 0x00ED85 03:AD75: 16        .byte $16   ; 
- D 1 - I - 0x00ED86 03:AD76: 91        .byte $91   ; 
- D 1 - I - 0x00ED87 03:AD77: 0A        .byte $0A   ; 
- D 1 - I - 0x00ED88 03:AD78: 92        .byte $92   ; 
- D 1 - I - 0x00ED89 03:AD79: 02        .byte $02   ; 
- D 1 - I - 0x00ED8A 03:AD7A: 90        .byte $90   ; 
- - - - - - 0x00ED8B 03:AD7B: 12        .byte $12   ; 
- - - - - - 0x00ED8C 03:AD7C: 93        .byte $93   ; 
- D 1 - I - 0x00ED8D 03:AD7D: 14        .byte $14   ; 
- D 1 - I - 0x00ED8E 03:AD7E: 94        .byte $94   ; 
- D 1 - I - 0x00ED8F 03:AD7F: 06        .byte $06   ; 
- D 1 - I - 0x00ED90 03:AD80: 95        .byte $95   ; 
- D 1 - I - 0x00ED91 03:AD81: 10        .byte $10   ; 
- D 1 - I - 0x00ED92 03:AD82: 96        .byte $96   ; 
- D 1 - I - 0x00ED93 03:AD83: 1A        .byte $1A   ; 
- D 1 - I - 0x00ED94 03:AD84: 9A        .byte $9A   ; 
- D 1 - I - 0x00ED95 03:AD85: 04        .byte $04   ; 
- D 1 - I - 0x00ED96 03:AD86: 9B        .byte $9B   ; 



off_AD87_01:
- D 1 - I - 0x00ED97 03:AD87: 20        .byte $20   ; 
- D 1 - I - 0x00ED98 03:AD88: 90        .byte $90   ; 
- D 1 - I - 0x00ED99 03:AD89: 22        .byte $22   ; 
- D 1 - I - 0x00ED9A 03:AD8A: 91        .byte $91   ; 
- D 1 - I - 0x00ED9B 03:AD8B: 24        .byte $24   ; 
- D 1 - I - 0x00ED9C 03:AD8C: 92        .byte $92   ; 
- D 1 - I - 0x00ED9D 03:AD8D: 26        .byte $26   ; 
- D 1 - I - 0x00ED9E 03:AD8E: 93        .byte $93   ; 
- D 1 - I - 0x00ED9F 03:AD8F: 28        .byte $28   ; 
- D 1 - I - 0x00EDA0 03:AD90: 94        .byte $94   ; 
- - - - - - 0x00EDA1 03:AD91: 2A        .byte $2A   ; 
- - - - - - 0x00EDA2 03:AD92: 95        .byte $95   ; 



off_AD93_03:
- D 1 - I - 0x00EDA3 03:AD93: 30        .byte $30   ; 
- D 1 - I - 0x00EDA4 03:AD94: 90        .byte $90   ; 
- D 1 - I - 0x00EDA5 03:AD95: 32        .byte $32   ; 
- D 1 - I - 0x00EDA6 03:AD96: 91        .byte $91   ; 
- D 1 - I - 0x00EDA7 03:AD97: 34        .byte $34   ; 
- D 1 - I - 0x00EDA8 03:AD98: 92        .byte $92   ; 
- D 1 - I - 0x00EDA9 03:AD99: 36        .byte $36   ; 
- D 1 - I - 0x00EDAA 03:AD9A: 93        .byte $93   ; 
- D 1 - I - 0x00EDAB 03:AD9B: 38        .byte $38   ; 
- D 1 - I - 0x00EDAC 03:AD9C: 94        .byte $94   ; 
- D 1 - I - 0x00EDAD 03:AD9D: 3A        .byte $3A   ; 
- D 1 - I - 0x00EDAE 03:AD9E: 95        .byte $95   ; 



off_AD9F_02:
- - - - - - 0x00EDAF 03:AD9F: 70        .byte $70   ; 
- - - - - - 0x00EDB0 03:ADA0: 90        .byte $90   ; 
- - - - - - 0x00EDB1 03:ADA1: 72        .byte $72   ; 
- - - - - - 0x00EDB2 03:ADA2: 91        .byte $91   ; 
- - - - - - 0x00EDB3 03:ADA3: 74        .byte $74   ; 
- - - - - - 0x00EDB4 03:ADA4: 92        .byte $92   ; 
- - - - - - 0x00EDB5 03:ADA5: 76        .byte $76   ; 
- - - - - - 0x00EDB6 03:ADA6: 93        .byte $93   ; 
- - - - - - 0x00EDB7 03:ADA7: 78        .byte $78   ; 
- - - - - - 0x00EDB8 03:ADA8: 94        .byte $94   ; 
- - - - - - 0x00EDB9 03:ADA9: 7A        .byte $7A   ; 
- - - - - - 0x00EDBA 03:ADAA: 95        .byte $95   ; 



off_ADAB_05:
- D 1 - I - 0x00EDBB 03:ADAB: 40        .byte $40   ; 
- D 1 - I - 0x00EDBC 03:ADAC: 90        .byte $90   ; 
- D 1 - I - 0x00EDBD 03:ADAD: 42        .byte $42   ; 
- D 1 - I - 0x00EDBE 03:ADAE: 91        .byte $91   ; 
- D 1 - I - 0x00EDBF 03:ADAF: 44        .byte $44   ; 
- D 1 - I - 0x00EDC0 03:ADB0: 92        .byte $92   ; 
- D 1 - I - 0x00EDC1 03:ADB1: 46        .byte $46   ; 
- D 1 - I - 0x00EDC2 03:ADB2: 93        .byte $93   ; 
- D 1 - I - 0x00EDC3 03:ADB3: 48        .byte $48   ; 
- D 1 - I - 0x00EDC4 03:ADB4: 94        .byte $94   ; 
- D 1 - I - 0x00EDC5 03:ADB5: 4A        .byte $4A   ; 
- D 1 - I - 0x00EDC6 03:ADB6: 95        .byte $95   ; 



off_ADB7_06:
- - - - - - 0x00EDC7 03:ADB7: 50        .byte $50   ; 
- - - - - - 0x00EDC8 03:ADB8: 90        .byte $90   ; 
- - - - - - 0x00EDC9 03:ADB9: 52        .byte $52   ; 
- - - - - - 0x00EDCA 03:ADBA: 91        .byte $91   ; 
- - - - - - 0x00EDCB 03:ADBB: 54        .byte $54   ; 
- - - - - - 0x00EDCC 03:ADBC: 92        .byte $92   ; 
- - - - - - 0x00EDCD 03:ADBD: 56        .byte $56   ; 
- - - - - - 0x00EDCE 03:ADBE: 93        .byte $93   ; 
- - - - - - 0x00EDCF 03:ADBF: 58        .byte $58   ; 
- - - - - - 0x00EDD0 03:ADC0: 94        .byte $94   ; 
- - - - - - 0x00EDD1 03:ADC1: 5A        .byte $5A   ; 
- - - - - - 0x00EDD2 03:ADC2: 95        .byte $95   ; 



off_ADC3_07:
- D 1 - I - 0x00EDD3 03:ADC3: 20        .byte $20   ; 
- D 1 - I - 0x00EDD4 03:ADC4: 90        .byte $90   ; 
- D 1 - I - 0x00EDD5 03:ADC5: 22        .byte $22   ; 
- D 1 - I - 0x00EDD6 03:ADC6: 91        .byte $91   ; 
- D 1 - I - 0x00EDD7 03:ADC7: 24        .byte $24   ; 
- D 1 - I - 0x00EDD8 03:ADC8: 92        .byte $92   ; 
- D 1 - I - 0x00EDD9 03:ADC9: 26        .byte $26   ; 
- D 1 - I - 0x00EDDA 03:ADCA: 93        .byte $93   ; 
- D 1 - I - 0x00EDDB 03:ADCB: 28        .byte $28   ; 
- D 1 - I - 0x00EDDC 03:ADCC: 94        .byte $94   ; 
- - - - - - 0x00EDDD 03:ADCD: 2A        .byte $2A   ; 
- - - - - - 0x00EDDE 03:ADCE: 95        .byte $95   ; 



off_ADCF_09:
- D 1 - I - 0x00EDDF 03:ADCF: 50        .byte $50   ; 
- D 1 - I - 0x00EDE0 03:ADD0: 90        .byte $90   ; 
- D 1 - I - 0x00EDE1 03:ADD1: 52        .byte $52   ; 
- D 1 - I - 0x00EDE2 03:ADD2: 91        .byte $91   ; 
- D 1 - I - 0x00EDE3 03:ADD3: 54        .byte $54   ; 
- D 1 - I - 0x00EDE4 03:ADD4: 92        .byte $92   ; 
- D 1 - I - 0x00EDE5 03:ADD5: 56        .byte $56   ; 
- D 1 - I - 0x00EDE6 03:ADD6: 93        .byte $93   ; 
- D 1 - I - 0x00EDE7 03:ADD7: 58        .byte $58   ; 
- D 1 - I - 0x00EDE8 03:ADD8: 94        .byte $94   ; 
- D 1 - I - 0x00EDE9 03:ADD9: 5A        .byte $5A   ; 
- D 1 - I - 0x00EDEA 03:ADDA: 95        .byte $95   ; 



off_ADDB_0A:
- - - - - - 0x00EDEB 03:ADDB: 70        .byte $70   ; 
- - - - - - 0x00EDEC 03:ADDC: 90        .byte $90   ; 
- - - - - - 0x00EDED 03:ADDD: 72        .byte $72   ; 
- - - - - - 0x00EDEE 03:ADDE: 91        .byte $91   ; 
- - - - - - 0x00EDEF 03:ADDF: 74        .byte $74   ; 
- - - - - - 0x00EDF0 03:ADE0: 92        .byte $92   ; 
- - - - - - 0x00EDF1 03:ADE1: 76        .byte $76   ; 
- - - - - - 0x00EDF2 03:ADE2: 93        .byte $93   ; 
- - - - - - 0x00EDF3 03:ADE3: 78        .byte $78   ; 
- - - - - - 0x00EDF4 03:ADE4: 94        .byte $94   ; 
- - - - - - 0x00EDF5 03:ADE5: 7A        .byte $7A   ; 
- - - - - - 0x00EDF6 03:ADE6: 95        .byte $95   ; 



off_ADE7_0B:
- D 1 - I - 0x00EDF7 03:ADE7: 60        .byte $60   ; 
- D 1 - I - 0x00EDF8 03:ADE8: 90        .byte $90   ; 
- D 1 - I - 0x00EDF9 03:ADE9: 62        .byte $62   ; 
- D 1 - I - 0x00EDFA 03:ADEA: 91        .byte $91   ; 
- D 1 - I - 0x00EDFB 03:ADEB: 64        .byte $64   ; 
- D 1 - I - 0x00EDFC 03:ADEC: 92        .byte $92   ; 
- D 1 - I - 0x00EDFD 03:ADED: 66        .byte $66   ; 
- D 1 - I - 0x00EDFE 03:ADEE: 93        .byte $93   ; 
- D 1 - I - 0x00EDFF 03:ADEF: 68        .byte $68   ; 
- D 1 - I - 0x00EE00 03:ADF0: 94        .byte $94   ; 
- - - - - - 0x00EE01 03:ADF1: 6A        .byte $6A   ; 
- - - - - - 0x00EE02 03:ADF2: 95        .byte $95   ; 



off_ADF3_0D:
- D 1 - I - 0x00EE03 03:ADF3: 30        .byte $30   ; 
- D 1 - I - 0x00EE04 03:ADF4: 90        .byte $90   ; 
- D 1 - I - 0x00EE05 03:ADF5: 32        .byte $32   ; 
- D 1 - I - 0x00EE06 03:ADF6: 91        .byte $91   ; 
- D 1 - I - 0x00EE07 03:ADF7: 34        .byte $34   ; 
- D 1 - I - 0x00EE08 03:ADF8: 92        .byte $92   ; 
- D 1 - I - 0x00EE09 03:ADF9: 36        .byte $36   ; 
- D 1 - I - 0x00EE0A 03:ADFA: 93        .byte $93   ; 
- D 1 - I - 0x00EE0B 03:ADFB: 38        .byte $38   ; 
- D 1 - I - 0x00EE0C 03:ADFC: 94        .byte $94   ; 
- - - - - - 0x00EE0D 03:ADFD: 3A        .byte $3A   ; 
- - - - - - 0x00EE0E 03:ADFE: 95        .byte $95   ; 



off_ADFF_0E:
- D 1 - I - 0x00EE0F 03:ADFF: 40        .byte $40   ; 
- D 1 - I - 0x00EE10 03:AE00: 90        .byte $90   ; 
- D 1 - I - 0x00EE11 03:AE01: 42        .byte $42   ; 
- D 1 - I - 0x00EE12 03:AE02: 91        .byte $91   ; 
- D 1 - I - 0x00EE13 03:AE03: 44        .byte $44   ; 
- D 1 - I - 0x00EE14 03:AE04: 92        .byte $92   ; 
- D 1 - I - 0x00EE15 03:AE05: 46        .byte $46   ; 
- D 1 - I - 0x00EE16 03:AE06: 93        .byte $93   ; 
- D 1 - I - 0x00EE17 03:AE07: 48        .byte $48   ; 
- D 1 - I - 0x00EE18 03:AE08: 94        .byte $94   ; 
- D 1 - I - 0x00EE19 03:AE09: 4A        .byte $4A   ; 
- D 1 - I - 0x00EE1A 03:AE0A: 95        .byte $95   ; 



off_AE0B_0F:
- D 1 - I - 0x00EE1B 03:AE0B: 60        .byte $60   ; 
- D 1 - I - 0x00EE1C 03:AE0C: 90        .byte $90   ; 
- D 1 - I - 0x00EE1D 03:AE0D: 62        .byte $62   ; 
- D 1 - I - 0x00EE1E 03:AE0E: 91        .byte $91   ; 
- D 1 - I - 0x00EE1F 03:AE0F: 64        .byte $64   ; 
- D 1 - I - 0x00EE20 03:AE10: 92        .byte $92   ; 
- D 1 - I - 0x00EE21 03:AE11: 66        .byte $66   ; 
- D 1 - I - 0x00EE22 03:AE12: 93        .byte $93   ; 
- D 1 - I - 0x00EE23 03:AE13: 68        .byte $68   ; 
- D 1 - I - 0x00EE24 03:AE14: 94        .byte $94   ; 
- - - - - - 0x00EE25 03:AE15: 6A        .byte $6A   ; 
- - - - - - 0x00EE26 03:AE16: 95        .byte $95   ; 


; bzk
loc_AE17:
- - - - - - 0x00EE27 03:AE17: 4C 17 AE  JMP loc_AE17



sub_AE1A:
C - - - - - 0x00EE2A 03:AE1A: 98        TYA
C - - - - - 0x00EE2B 03:AE1B: 48        PHA
C - - - - - 0x00EE2C 03:AE1C: A4 1F     LDY ram_001F
C - - - - - 0x00EE2E 03:AE1E: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00EE31 03:AE21: 85 32     STA ram_0032
C - - - - - 0x00EE33 03:AE23: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00EE36 03:AE26: 85 33     STA ram_0033
C - - - - - 0x00EE38 03:AE28: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00EE3B 03:AE2B: 85 34     STA ram_0034
C - - - - - 0x00EE3D 03:AE2D: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00EE40 03:AE30: 85 35     STA ram_0035
C - - - - - 0x00EE42 03:AE32: 68        PLA
C - - - - - 0x00EE43 03:AE33: A8        TAY
C - - - - - 0x00EE44 03:AE34: 4C 4B AE  JMP loc_AE4B



sub_AE37:
C - - - - - 0x00EE47 03:AE37: BD 20 06  LDA ram_0620,X
C - - - - - 0x00EE4A 03:AE3A: 85 32     STA ram_0032
C - - - - - 0x00EE4C 03:AE3C: BD 2C 06  LDA ram_062C,X
C - - - - - 0x00EE4F 03:AE3F: 85 33     STA ram_0033
C - - - - - 0x00EE51 03:AE41: BD 38 06  LDA ram_0638,X
C - - - - - 0x00EE54 03:AE44: 85 34     STA ram_0034
C - - - - - 0x00EE56 03:AE46: BD 44 06  LDA ram_0644,X
C - - - - - 0x00EE59 03:AE49: 85 35     STA ram_0035
sub_AE4B:
loc_AE4B:
C D 1 - - - 0x00EE5B 03:AE4B: A5 32     LDA ram_0032
C - - - - - 0x00EE5D 03:AE4D: 38        SEC
C - - - - - 0x00EE5E 03:AE4E: FD 14 03  SBC ram_игрок_X_lo,X
C - - - - - 0x00EE61 03:AE51: 85 1E     STA ram_001E
C - - - - - 0x00EE63 03:AE53: A5 33     LDA ram_0033
C - - - - - 0x00EE65 03:AE55: FD 27 03  SBC ram_игрок_X_hi,X
C - - - - - 0x00EE68 03:AE58: 85 28     STA ram_0028
C - - - - - 0x00EE6A 03:AE5A: 30 0E     BMI bra_AE6A
C - - - - - 0x00EE6C 03:AE5C: D0 07     BNE bra_AE65
C - - - - - 0x00EE6E 03:AE5E: A5 1E     LDA ram_001E
C - - - - - 0x00EE70 03:AE60: 30 03     BMI bra_AE65
C - - - - - 0x00EE72 03:AE62: 4C 77 AE  JMP loc_AE77
bra_AE65:
C - - - - - 0x00EE75 03:AE65: A9 7F     LDA #$7F
C - - - - - 0x00EE77 03:AE67: 4C 77 AE  JMP loc_AE77
bra_AE6A:
C - - - - - 0x00EE7A 03:AE6A: C9 FF     CMP #$FF
C - - - - - 0x00EE7C 03:AE6C: 90 07     BCC bra_AE75
C - - - - - 0x00EE7E 03:AE6E: A5 1E     LDA ram_001E
C - - - - - 0x00EE80 03:AE70: 10 03     BPL bra_AE75
C - - - - - 0x00EE82 03:AE72: 4C 77 AE  JMP loc_AE77
bra_AE75:
C - - - - - 0x00EE85 03:AE75: A9 80     LDA #$80
loc_AE77:
C D 1 - - - 0x00EE87 03:AE77: 85 1C     STA ram_001C
C - - - - - 0x00EE89 03:AE79: 10 05     BPL bra_AE80
C - - - - - 0x00EE8B 03:AE7B: 49 FF     EOR #$FF
C - - - - - 0x00EE8D 03:AE7D: 18        CLC
C - - - - - 0x00EE8E 03:AE7E: 69 01     ADC #$01
bra_AE80:
C - - - - - 0x00EE90 03:AE80: 85 2A     STA ram_002A
C - - - - - 0x00EE92 03:AE82: A5 28     LDA ram_0028
C - - - - - 0x00EE94 03:AE84: 5D 74 00  EOR a: ram_номер_анимации,X
C - - - - - 0x00EE97 03:AE87: 85 29     STA ram_0029
C - - - - - 0x00EE99 03:AE89: A5 34     LDA ram_0034
C - - - - - 0x00EE9B 03:AE8B: 38        SEC
C - - - - - 0x00EE9C 03:AE8C: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x00EE9F 03:AE8F: 85 1E     STA ram_001E
C - - - - - 0x00EEA1 03:AE91: A5 35     LDA ram_0035
C - - - - - 0x00EEA3 03:AE93: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x00EEA6 03:AE96: 30 0E     BMI bra_AEA6
C - - - - - 0x00EEA8 03:AE98: D0 07     BNE bra_AEA1
C - - - - - 0x00EEAA 03:AE9A: A5 1E     LDA ram_001E
C - - - - - 0x00EEAC 03:AE9C: 30 03     BMI bra_AEA1
C - - - - - 0x00EEAE 03:AE9E: 4C B3 AE  JMP loc_AEB3
bra_AEA1:
C - - - - - 0x00EEB1 03:AEA1: A9 7F     LDA #$7F
C - - - - - 0x00EEB3 03:AEA3: 4C B3 AE  JMP loc_AEB3
bra_AEA6:
C - - - - - 0x00EEB6 03:AEA6: C9 FF     CMP #$FF
C - - - - - 0x00EEB8 03:AEA8: 90 07     BCC bra_AEB1
C - - - - - 0x00EEBA 03:AEAA: A5 1E     LDA ram_001E
C - - - - - 0x00EEBC 03:AEAC: 10 03     BPL bra_AEB1
C - - - - - 0x00EEBE 03:AEAE: 4C B3 AE  JMP loc_AEB3
bra_AEB1:
C - - - - - 0x00EEC1 03:AEB1: A9 80     LDA #$80
loc_AEB3:
C D 1 - - - 0x00EEC3 03:AEB3: 85 1D     STA ram_001D
C - - - - - 0x00EEC5 03:AEB5: 10 05     BPL bra_AEBC
C - - - - - 0x00EEC7 03:AEB7: 49 FF     EOR #$FF
C - - - - - 0x00EEC9 03:AEB9: 18        CLC
C - - - - - 0x00EECA 03:AEBA: 69 01     ADC #$01
bra_AEBC:
C - - - - - 0x00EECC 03:AEBC: 85 2B     STA ram_002B
C - - - - - 0x00EECE 03:AEBE: 60        RTS



sub_AEBF:
C - - - - - 0x00EECF 03:AEBF: 86 1C     STX ram_001C
C - - - - - 0x00EED1 03:AEC1: C4 1C     CPY ram_001C
C - - - - - 0x00EED3 03:AEC3: D0 02     BNE bra_AEC7
- - - - - - 0x00EED5 03:AEC5: 38        SEC
- - - - - - 0x00EED6 03:AEC6: 60        RTS
bra_AEC7:
C - - - - - 0x00EED7 03:AEC7: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00EEDA 03:AECA: 38        SEC
C - - - - - 0x00EEDB 03:AECB: FD 14 03  SBC ram_игрок_X_lo,X
C - - - - - 0x00EEDE 03:AECE: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00EEE1 03:AED1: FD 27 03  SBC ram_игрок_X_hi,X
C - - - - - 0x00EEE4 03:AED4: 85 1C     STA ram_001C
C - - - - - 0x00EEE6 03:AED6: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00EEE9 03:AED9: 38        SEC
C - - - - - 0x00EEEA 03:AEDA: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x00EEED 03:AEDD: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00EEF0 03:AEE0: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x00EEF3 03:AEE3: 85 1D     STA ram_001D
C - - - - - 0x00EEF5 03:AEE5: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00EEF8 03:AEE8: F0 05     BEQ bra_AEEF
C - - - - - 0x00EEFA 03:AEEA: 45 1C     EOR ram_001C
C - - - - - 0x00EEFC 03:AEEC: 4C F1 AE  JMP loc_AEF1
bra_AEEF:
C - - - - - 0x00EEFF 03:AEEF: A9 80     LDA #$80
loc_AEF1:
C D 1 - - - 0x00EF01 03:AEF1: 85 1C     STA ram_001C
C - - - - - 0x00EF03 03:AEF3: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00EF06 03:AEF6: F0 05     BEQ bra_AEFD
C - - - - - 0x00EF08 03:AEF8: 45 1D     EOR ram_001D
C - - - - - 0x00EF0A 03:AEFA: 4C FF AE  JMP loc_AEFF
bra_AEFD:
C - - - - - 0x00EF0D 03:AEFD: A9 80     LDA #$80
loc_AEFF:
C D 1 - - - 0x00EF0F 03:AEFF: 25 1C     AND ram_001C
C - - - - - 0x00EF11 03:AF01: 85 1D     STA ram_001D
C - - - - - 0x00EF13 03:AF03: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00EF16 03:AF06: 19 E8 03  ORA ram_игрок_spd_X_lo,Y
C - - - - - 0x00EF19 03:AF09: F0 0D     BEQ bra_AF18
C - - - - - 0x00EF1B 03:AF0B: B9 F6 03  LDA ram_игрок_spd_X_hi,Y
C - - - - - 0x00EF1E 03:AF0E: 10 05     BPL bra_AF15
C - - - - - 0x00EF20 03:AF10: 49 FF     EOR #$FF
C - - - - - 0x00EF22 03:AF12: 18        CLC
C - - - - - 0x00EF23 03:AF13: 69 01     ADC #$01
bra_AF15:
C - - - - - 0x00EF25 03:AF15: 18        CLC
C - - - - - 0x00EF26 03:AF16: 69 01     ADC #$01
bra_AF18:
C - - - - - 0x00EF28 03:AF18: 85 1C     STA ram_001C
C - - - - - 0x00EF2A 03:AF1A: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00EF2D 03:AF1D: 19 04 04  ORA ram_игрок_spd_Y_lo,Y
C - - - - - 0x00EF30 03:AF20: F0 0D     BEQ bra_AF2F
C - - - - - 0x00EF32 03:AF22: B9 12 04  LDA ram_игрок_spd_Y_hi,Y
C - - - - - 0x00EF35 03:AF25: 10 05     BPL bra_AF2C
C - - - - - 0x00EF37 03:AF27: 49 FF     EOR #$FF
C - - - - - 0x00EF39 03:AF29: 18        CLC
C - - - - - 0x00EF3A 03:AF2A: 69 01     ADC #$01
bra_AF2C:
C - - - - - 0x00EF3C 03:AF2C: 18        CLC
C - - - - - 0x00EF3D 03:AF2D: 69 01     ADC #$01
bra_AF2F:
C - - - - - 0x00EF3F 03:AF2F: 18        CLC
C - - - - - 0x00EF40 03:AF30: 65 1C     ADC ram_001C
C - - - - - 0x00EF42 03:AF32: 85 1C     STA ram_001C
C - - - - - 0x00EF44 03:AF34: A5 1D     LDA ram_001D
C - - - - - 0x00EF46 03:AF36: 0A        ASL
C - - - - - 0x00EF47 03:AF37: 60        RTS



sub_AF38:
C - - - - - 0x00EF48 03:AF38: 98        TYA
C - - - - - 0x00EF49 03:AF39: 48        PHA
C - - - - - 0x00EF4A 03:AF3A: A9 00     LDA #$00
C - - - - - 0x00EF4C 03:AF3C: 85 2A     STA ram_002A
C - - - - - 0x00EF4E 03:AF3E: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00EF51 03:AF41: 38        SEC
C - - - - - 0x00EF52 03:AF42: FD 14 03  SBC ram_игрок_X_lo,X
C - - - - - 0x00EF55 03:AF45: 85 1C     STA ram_001C
C - - - - - 0x00EF57 03:AF47: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00EF5A 03:AF4A: FD 27 03  SBC ram_игрок_X_hi,X
C - - - - - 0x00EF5D 03:AF4D: 85 1D     STA ram_001D
C - - - - - 0x00EF5F 03:AF4F: 10 15     BPL bra_AF66
C - - - - - 0x00EF61 03:AF51: A9 FF     LDA #$FF
C - - - - - 0x00EF63 03:AF53: 85 2A     STA ram_002A
C - - - - - 0x00EF65 03:AF55: A5 1C     LDA ram_001C
C - - - - - 0x00EF67 03:AF57: 49 FF     EOR #$FF
C - - - - - 0x00EF69 03:AF59: 18        CLC
C - - - - - 0x00EF6A 03:AF5A: 69 01     ADC #$01
C - - - - - 0x00EF6C 03:AF5C: 85 1C     STA ram_001C
C - - - - - 0x00EF6E 03:AF5E: A5 1D     LDA ram_001D
C - - - - - 0x00EF70 03:AF60: 49 FF     EOR #$FF
C - - - - - 0x00EF72 03:AF62: 69 00     ADC #$00
C - - - - - 0x00EF74 03:AF64: 85 1D     STA ram_001D
bra_AF66:
C - - - - - 0x00EF76 03:AF66: A9 00     LDA #$00
C - - - - - 0x00EF78 03:AF68: 85 2B     STA ram_002B
C - - - - - 0x00EF7A 03:AF6A: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00EF7D 03:AF6D: 38        SEC
C - - - - - 0x00EF7E 03:AF6E: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x00EF81 03:AF71: 85 1E     STA ram_001E
C - - - - - 0x00EF83 03:AF73: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00EF86 03:AF76: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x00EF89 03:AF79: 85 1F     STA ram_001F
C - - - - - 0x00EF8B 03:AF7B: 10 15     BPL bra_AF92
C - - - - - 0x00EF8D 03:AF7D: A9 FF     LDA #$FF
C - - - - - 0x00EF8F 03:AF7F: 85 2B     STA ram_002B
C - - - - - 0x00EF91 03:AF81: A5 1E     LDA ram_001E
C - - - - - 0x00EF93 03:AF83: 49 FF     EOR #$FF
C - - - - - 0x00EF95 03:AF85: 18        CLC
C - - - - - 0x00EF96 03:AF86: 69 01     ADC #$01
C - - - - - 0x00EF98 03:AF88: 85 1E     STA ram_001E
C - - - - - 0x00EF9A 03:AF8A: A5 1F     LDA ram_001F
C - - - - - 0x00EF9C 03:AF8C: 49 FF     EOR #$FF
C - - - - - 0x00EF9E 03:AF8E: 69 00     ADC #$00
C - - - - - 0x00EFA0 03:AF90: 85 1F     STA ram_001F
bra_AF92:
loc_AF92:
C D 1 - - - 0x00EFA2 03:AF92: A5 1D     LDA ram_001D
C - - - - - 0x00EFA4 03:AF94: 05 1F     ORA ram_001F
C - - - - - 0x00EFA6 03:AF96: D0 08     BNE bra_AFA0
C - - - - - 0x00EFA8 03:AF98: A5 1C     LDA ram_001C
C - - - - - 0x00EFAA 03:AF9A: 05 1E     ORA ram_001E
C - - - - - 0x00EFAC 03:AF9C: 29 E0     AND #$E0
C - - - - - 0x00EFAE 03:AF9E: F0 0B     BEQ bra_AFAB
bra_AFA0:
C - - - - - 0x00EFB0 03:AFA0: 46 1D     LSR ram_001D
C - - - - - 0x00EFB2 03:AFA2: 66 1C     ROR ram_001C
C - - - - - 0x00EFB4 03:AFA4: 46 1F     LSR ram_001F
C - - - - - 0x00EFB6 03:AFA6: 66 1E     ROR ram_001E
C - - - - - 0x00EFB8 03:AFA8: 4C 92 AF  JMP loc_AF92
bra_AFAB:
C - - - - - 0x00EFBB 03:AFAB: A5 1E     LDA ram_001E
C - - - - - 0x00EFBD 03:AFAD: 85 1D     STA ram_001D
loc_AFAF:
C D 1 - - - 0x00EFBF 03:AFAF: A5 1C     LDA ram_001C
C - - - - - 0x00EFC1 03:AFB1: 05 1D     ORA ram_001D
C - - - - - 0x00EFC3 03:AFB3: F0 0B     BEQ bra_AFC0
C - - - - - 0x00EFC5 03:AFB5: 29 10     AND #$10
C - - - - - 0x00EFC7 03:AFB7: D0 07     BNE bra_AFC0
C - - - - - 0x00EFC9 03:AFB9: 06 1C     ASL ram_001C
C - - - - - 0x00EFCB 03:AFBB: 06 1D     ASL ram_001D
C - - - - - 0x00EFCD 03:AFBD: 4C AF AF  JMP loc_AFAF
bra_AFC0:
C - - - - - 0x00EFD0 03:AFC0: A5 1C     LDA ram_001C
C - - - - - 0x00EFD2 03:AFC2: 38        SEC
C - - - - - 0x00EFD3 03:AFC3: E5 1D     SBC ram_001D
C - - - - - 0x00EFD5 03:AFC5: 10 05     BPL bra_AFCC
C - - - - - 0x00EFD7 03:AFC7: 49 FF     EOR #$FF
C - - - - - 0x00EFD9 03:AFC9: 18        CLC
C - - - - - 0x00EFDA 03:AFCA: 69 01     ADC #$01
bra_AFCC:
C - - - - - 0x00EFDC 03:AFCC: A8        TAY
C - - - - - 0x00EFDD 03:AFCD: B9 14 B0  LDA tbl_B014,Y
C - - - - - 0x00EFE0 03:AFD0: 85 1F     STA ram_001F
C - - - - - 0x00EFE2 03:AFD2: A5 1C     LDA ram_001C
C - - - - - 0x00EFE4 03:AFD4: C5 1D     CMP ram_001D
C - - - - - 0x00EFE6 03:AFD6: F0 0C     BEQ bra_AFE4
C - - - - - 0x00EFE8 03:AFD8: B0 11     BCS bra_AFEB
C - - - - - 0x00EFEA 03:AFDA: A9 60     LDA #$60
C - - - - - 0x00EFEC 03:AFDC: 18        CLC
C - - - - - 0x00EFED 03:AFDD: 65 1F     ADC ram_001F
C - - - - - 0x00EFEF 03:AFDF: 85 1F     STA ram_001F
C - - - - - 0x00EFF1 03:AFE1: 4C F2 AF  JMP loc_AFF2
bra_AFE4:
C - - - - - 0x00EFF4 03:AFE4: A9 60     LDA #$60
C - - - - - 0x00EFF6 03:AFE6: 85 1F     STA ram_001F
C - - - - - 0x00EFF8 03:AFE8: 4C F2 AF  JMP loc_AFF2
bra_AFEB:
C - - - - - 0x00EFFB 03:AFEB: A9 60     LDA #$60
C - - - - - 0x00EFFD 03:AFED: 38        SEC
C - - - - - 0x00EFFE 03:AFEE: E5 1F     SBC ram_001F
C - - - - - 0x00F000 03:AFF0: 85 1F     STA ram_001F
loc_AFF2:
C D 1 - - - 0x00F002 03:AFF2: A5 2B     LDA ram_002B
C - - - - - 0x00F004 03:AFF4: 10 0C     BPL bra_B002
C - - - - - 0x00F006 03:AFF6: A5 1F     LDA ram_001F
C - - - - - 0x00F008 03:AFF8: 38        SEC
C - - - - - 0x00F009 03:AFF9: E9 40     SBC #$40
C - - - - - 0x00F00B 03:AFFB: 49 FF     EOR #$FF
C - - - - - 0x00F00D 03:AFFD: 18        CLC
C - - - - - 0x00F00E 03:AFFE: 69 41     ADC #$41
C - - - - - 0x00F010 03:B000: 85 1F     STA ram_001F
bra_B002:
C - - - - - 0x00F012 03:B002: A5 2A     LDA ram_002A
C - - - - - 0x00F014 03:B004: 10 09     BPL bra_B00F
C - - - - - 0x00F016 03:B006: A5 1F     LDA ram_001F
C - - - - - 0x00F018 03:B008: 49 FF     EOR #$FF
C - - - - - 0x00F01A 03:B00A: 18        CLC
C - - - - - 0x00F01B 03:B00B: 69 01     ADC #$01
C - - - - - 0x00F01D 03:B00D: 85 1F     STA ram_001F
bra_B00F:
C - - - - - 0x00F01F 03:B00F: 68        PLA
C - - - - - 0x00F020 03:B010: A8        TAY
C - - - - - 0x00F021 03:B011: A5 1F     LDA ram_001F
C - - - - - 0x00F023 03:B013: 60        RTS



tbl_B014:
- D 1 - - - 0x00F024 03:B014: 00        .byte $00   ; 
- D 1 - - - 0x00F025 03:B015: 01        .byte $01   ; 
- D 1 - - - 0x00F026 03:B016: 02        .byte $02   ; 
- D 1 - - - 0x00F027 03:B017: 04        .byte $04   ; 
- D 1 - - - 0x00F028 03:B018: 05        .byte $05   ; 
- D 1 - - - 0x00F029 03:B019: 06        .byte $06   ; 
- D 1 - - - 0x00F02A 03:B01A: 08        .byte $08   ; 
- D 1 - - - 0x00F02B 03:B01B: 09        .byte $09   ; 
- D 1 - - - 0x00F02C 03:B01C: 0A        .byte $0A   ; 
- D 1 - - - 0x00F02D 03:B01D: 0B        .byte $0B   ; 
- D 1 - - - 0x00F02E 03:B01E: 0C        .byte $0C   ; 
- D 1 - - - 0x00F02F 03:B01F: 0D        .byte $0D   ; 
- D 1 - - - 0x00F030 03:B020: 0E        .byte $0E   ; 
- D 1 - - - 0x00F031 03:B021: 10        .byte $10   ; 
- D 1 - - - 0x00F032 03:B022: 11        .byte $11   ; 
- D 1 - - - 0x00F033 03:B023: 12        .byte $12   ; 
- D 1 - - - 0x00F034 03:B024: 13        .byte $13   ; 
- D 1 - - - 0x00F035 03:B025: 14        .byte $14   ; 
- D 1 - - - 0x00F036 03:B026: 15        .byte $15   ; 
- D 1 - - - 0x00F037 03:B027: 16        .byte $16   ; 
- D 1 - - - 0x00F038 03:B028: 17        .byte $17   ; 
- D 1 - - - 0x00F039 03:B029: 18        .byte $18   ; 
- D 1 - - - 0x00F03A 03:B02A: 19        .byte $19   ; 
- D 1 - - - 0x00F03B 03:B02B: 1A        .byte $1A   ; 
- D 1 - - - 0x00F03C 03:B02C: 1B        .byte $1B   ; 
- D 1 - - - 0x00F03D 03:B02D: 1C        .byte $1C   ; 
- D 1 - - - 0x00F03E 03:B02E: 1C        .byte $1C   ; 
- D 1 - - - 0x00F03F 03:B02F: 1D        .byte $1D   ; 
- D 1 - - - 0x00F040 03:B030: 1E        .byte $1E   ; 
- D 1 - - - 0x00F041 03:B031: 1F        .byte $1F   ; 
- D 1 - - - 0x00F042 03:B032: 1F        .byte $1F   ; 
- D 1 - - - 0x00F043 03:B033: 20        .byte $20   ; 



sub_B034:
C - - - - - 0x00F044 03:B034: 86 43     STX ram_0043
C - - - - - 0x00F046 03:B036: A2 00     LDX #$00
C - - - - - 0x00F048 03:B038: A9 FF     LDA #$FF
bra_B03A:
C - - - - - 0x00F04A 03:B03A: 95 2C     STA ram_002C,X
C - - - - - 0x00F04C 03:B03C: E8        INX
C - - - - - 0x00F04D 03:B03D: E0 12     CPX #$12
C - - - - - 0x00F04F 03:B03F: 90 F9     BCC bra_B03A
C - - - - - 0x00F051 03:B041: A6 43     LDX ram_0043
bra_B043:
C - - - - - 0x00F053 03:B043: B9 D9 00  LDA a: ram_флаг_видимости,Y
C - - - - - 0x00F056 03:B046: D0 03     BNE bra_B04B
C - - - - - 0x00F058 03:B048: 4C A7 B0  JMP loc_B0A7
bra_B04B:
C - - - - - 0x00F05B 03:B04B: 86 3F     STX ram_003F
C - - - - - 0x00F05D 03:B04D: 98        TYA
C - - - - - 0x00F05E 03:B04E: C5 3F     CMP ram_003F
C - - - - - 0x00F060 03:B050: F0 55     BEQ bra_B0A7
C - - - - - 0x00F062 03:B052: 20 38 AF  JSR sub_AF38
C - - - - - 0x00F065 03:B055: 38        SEC
C - - - - - 0x00F066 03:B056: E5 20     SBC ram_0020
C - - - - - 0x00F068 03:B058: 10 05     BPL bra_B05F
C - - - - - 0x00F06A 03:B05A: 49 FF     EOR #$FF
C - - - - - 0x00F06C 03:B05C: 18        CLC
C - - - - - 0x00F06D 03:B05D: 69 01     ADC #$01
bra_B05F:
C - - - - - 0x00F06F 03:B05F: C5 21     CMP ram_0021
C - - - - - 0x00F071 03:B061: F0 05     BEQ bra_B068
C - - - - - 0x00F073 03:B063: 90 03     BCC bra_B068
C - - - - - 0x00F075 03:B065: 4C A7 B0  JMP loc_B0A7
bra_B068:
C - - - - - 0x00F078 03:B068: 20 41 C0  JSR sub_0x01C051
C - - - - - 0x00F07B 03:B06B: 84 44     STY ram_0044
C - - - - - 0x00F07D 03:B06D: A0 0F     LDY #$0F
bra_B06F:
C - - - - - 0x00F07F 03:B06F: A5 24     LDA ram_0024
C - - - - - 0x00F081 03:B071: D9 2E 00  CMP a: ram_002E,Y
C - - - - - 0x00F084 03:B074: F0 05     BEQ bra_B07B
C - - - - - 0x00F086 03:B076: 90 03     BCC bra_B07B
C - - - - - 0x00F088 03:B078: 4C A5 B0  JMP loc_B0A5
bra_B07B:
C - - - - - 0x00F08B 03:B07B: C0 0F     CPY #$0F
C - - - - - 0x00F08D 03:B07D: F0 12     BEQ bra_B091
C - - - - - 0x00F08F 03:B07F: B9 2C 00  LDA a: ram_002C,Y
C - - - - - 0x00F092 03:B082: 99 2F 00  STA a: ram_002F,Y
C - - - - - 0x00F095 03:B085: B9 2D 00  LDA a: ram_002D,Y
C - - - - - 0x00F098 03:B088: 99 30 00  STA a: ram_0030,Y
C - - - - - 0x00F09B 03:B08B: B9 2E 00  LDA a: ram_002E,Y
C - - - - - 0x00F09E 03:B08E: 99 31 00  STA a: ram_0031,Y
bra_B091:
C - - - - - 0x00F0A1 03:B091: A5 24     LDA ram_0024
C - - - - - 0x00F0A3 03:B093: 99 2E 00  STA a: ram_002E,Y
C - - - - - 0x00F0A6 03:B096: A5 1F     LDA ram_001F
C - - - - - 0x00F0A8 03:B098: 99 2D 00  STA a: ram_002D,Y
C - - - - - 0x00F0AB 03:B09B: A5 44     LDA ram_0044
C - - - - - 0x00F0AD 03:B09D: 99 2C 00  STA a: ram_002C,Y
C - - - - - 0x00F0B0 03:B0A0: 88        DEY
C - - - - - 0x00F0B1 03:B0A1: 88        DEY
C - - - - - 0x00F0B2 03:B0A2: 88        DEY
C - - - - - 0x00F0B3 03:B0A3: 10 CA     BPL bra_B06F
loc_B0A5:
C D 1 - - - 0x00F0B5 03:B0A5: A4 44     LDY ram_0044
bra_B0A7:
loc_B0A7:
C D 1 - - - 0x00F0B7 03:B0A7: C8        INY
C - - - - - 0x00F0B8 03:B0A8: C8        INY
C - - - - - 0x00F0B9 03:B0A9: C0 0C     CPY #$0C
C - - - - - 0x00F0BB 03:B0AB: 90 96     BCC bra_B043
C - - - - - 0x00F0BD 03:B0AD: 60        RTS



sub_B0AE:
C - - - - - 0x00F0BE 03:B0AE: A0 0A     LDY #$0A
bra_B0B0:
C - - - - - 0x00F0C0 03:B0B0: 20 D7 B0  JSR sub_B0D7
C - - - - - 0x00F0C3 03:B0B3: 30 11     BMI bra_B0C6
C - - - - - 0x00F0C5 03:B0B5: 85 1C     STA ram_001C
C - - - - - 0x00F0C7 03:B0B7: 98        TYA
C - - - - - 0x00F0C8 03:B0B8: 29 01     AND #$01
C - - - - - 0x00F0CA 03:B0BA: 45 1C     EOR ram_001C
C - - - - - 0x00F0CC 03:B0BC: F0 03     BEQ bra_B0C1
C - - - - - 0x00F0CE 03:B0BE: 4C C6 B0  JMP loc_B0C6
bra_B0C1:
C - - - - - 0x00F0D1 03:B0C1: A9 00     LDA #$00
C - - - - - 0x00F0D3 03:B0C3: 4C CE B0  JMP loc_B0CE
bra_B0C6:
loc_B0C6:
C D 1 - - - 0x00F0D6 03:B0C6: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x00F0D8 03:B0C8: 29 20     AND #$20
C - - - - - 0x00F0DA 03:B0CA: D0 F5     BNE bra_B0C1
C - - - - - 0x00F0DC 03:B0CC: A9 80     LDA #$80
loc_B0CE:
C D 1 - - - 0x00F0DE 03:B0CE: 99 7C 06  STA ram_067C,Y
C - - - - - 0x00F0E1 03:B0D1: C8        INY
C - - - - - 0x00F0E2 03:B0D2: C0 0C     CPY #$0C
C - - - - - 0x00F0E4 03:B0D4: 90 DA     BCC bra_B0B0
C - - - - - 0x00F0E6 03:B0D6: 60        RTS



sub_B0D7:
C - - - - - 0x00F0E7 03:B0D7: A9 60     LDA #$60
C - - - - - 0x00F0E9 03:B0D9: 38        SEC
C - - - - - 0x00F0EA 03:B0DA: F9 4D 03  SBC ram_игрок_Y_lo,Y
C - - - - - 0x00F0ED 03:B0DD: A9 00     LDA #$00
C - - - - - 0x00F0EF 03:B0DF: F9 60 03  SBC ram_игрок_Y_hi,Y
C - - - - - 0x00F0F2 03:B0E2: 10 46     BPL bra_B12A
C - - - - - 0x00F0F4 03:B0E4: A9 20     LDA #$20
C - - - - - 0x00F0F6 03:B0E6: 38        SEC
C - - - - - 0x00F0F7 03:B0E7: F9 4D 03  SBC ram_игрок_Y_lo,Y
C - - - - - 0x00F0FA 03:B0EA: A9 01     LDA #$01
C - - - - - 0x00F0FC 03:B0EC: F9 60 03  SBC ram_игрок_Y_hi,Y
C - - - - - 0x00F0FF 03:B0EF: 30 39     BMI bra_B12A
C - - - - - 0x00F101 03:B0F1: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00F104 03:B0F4: 38        SEC
C - - - - - 0x00F105 03:B0F5: E9 60     SBC #$60
C - - - - - 0x00F107 03:B0F7: 4A        LSR
C - - - - - 0x00F108 03:B0F8: 4A        LSR
C - - - - - 0x00F109 03:B0F9: 4A        LSR
C - - - - - 0x00F10A 03:B0FA: 85 1C     STA ram_001C
C - - - - - 0x00F10C 03:B0FC: A9 08     LDA #$08
C - - - - - 0x00F10E 03:B0FE: 18        CLC
C - - - - - 0x00F10F 03:B0FF: 65 1C     ADC ram_001C
C - - - - - 0x00F111 03:B101: 85 1D     STA ram_001D
C - - - - - 0x00F113 03:B103: A5 1D     LDA ram_001D
C - - - - - 0x00F115 03:B105: 38        SEC
C - - - - - 0x00F116 03:B106: F9 14 03  SBC ram_игрок_X_lo,Y
C - - - - - 0x00F119 03:B109: A9 03     LDA #$03
C - - - - - 0x00F11B 03:B10B: F9 27 03  SBC ram_игрок_X_hi,Y
C - - - - - 0x00F11E 03:B10E: 10 03     BPL bra_B113
C - - - - - 0x00F120 03:B110: A9 01     LDA #$01
C - - - - - 0x00F122 03:B112: 60        RTS
bra_B113:
C - - - - - 0x00F123 03:B113: A9 F8     LDA #$F8
C - - - - - 0x00F125 03:B115: 38        SEC
C - - - - - 0x00F126 03:B116: E5 1C     SBC ram_001C
C - - - - - 0x00F128 03:B118: 85 1D     STA ram_001D
C - - - - - 0x00F12A 03:B11A: A5 1D     LDA ram_001D
C - - - - - 0x00F12C 03:B11C: 38        SEC
C - - - - - 0x00F12D 03:B11D: F9 14 03  SBC ram_игрок_X_lo,Y
C - - - - - 0x00F130 03:B120: A9 00     LDA #$00
C - - - - - 0x00F132 03:B122: F9 27 03  SBC ram_игрок_X_hi,Y
C - - - - - 0x00F135 03:B125: 30 03     BMI bra_B12A
C - - - - - 0x00F137 03:B127: A9 00     LDA #$00
C - - - - - 0x00F139 03:B129: 60        RTS
bra_B12A:
C - - - - - 0x00F13A 03:B12A: A9 FF     LDA #$FF
C - - - - - 0x00F13C 03:B12C: 60        RTS



sub_B12D:
C - - - - - 0x00F13D 03:B12D: 8A        TXA
C - - - - - 0x00F13E 03:B12E: 48        PHA
C - - - - - 0x00F13F 03:B12F: 98        TYA
C - - - - - 0x00F140 03:B130: 29 01     AND #$01
C - - - - - 0x00F142 03:B132: 85 1C     STA ram_001C
C - - - - - 0x00F144 03:B134: B9 30 05  LDA ram_расстановка_команды,Y
C - - - - - 0x00F147 03:B137: 29 03     AND #$03
C - - - - - 0x00F149 03:B139: 0A        ASL
C - - - - - 0x00F14A 03:B13A: A8        TAY
C - - - - - 0x00F14B 03:B13B: B9 5D B1  LDA tbl_B15D,Y
C - - - - - 0x00F14E 03:B13E: 85 2C     STA ram_002C
C - - - - - 0x00F150 03:B140: B9 5E B1  LDA tbl_B15D + $01,Y
C - - - - - 0x00F153 03:B143: 85 2D     STA ram_002D
C - - - - - 0x00F155 03:B145: A6 1C     LDX ram_001C
C - - - - - 0x00F157 03:B147: A0 00     LDY #$00
bra_B149:
C - - - - - 0x00F159 03:B149: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00F15C 03:B14C: 29 CF     AND #$CF
C - - - - - 0x00F15E 03:B14E: 11 2C     ORA (ram_002C),Y
C - - - - - 0x00F160 03:B150: 9D 50 06  STA ram_позиция_управление,X
C - - - - - 0x00F163 03:B153: E8        INX
C - - - - - 0x00F164 03:B154: E8        INX
C - - - - - 0x00F165 03:B155: C8        INY
C - - - - - 0x00F166 03:B156: C0 06     CPY #$06
C - - - - - 0x00F168 03:B158: 90 EF     BCC bra_B149
C - - - - - 0x00F16A 03:B15A: 68        PLA
C - - - - - 0x00F16B 03:B15B: AA        TAX
C - - - - - 0x00F16C 03:B15C: 60        RTS



tbl_B15D:
- - - - - - 0x00F16D 03:B15D: 63 B1     .word off_B163_00
- D 1 - - - 0x00F16F 03:B15F: 69 B1     .word off_B169_01
- D 1 - - - 0x00F171 03:B161: 6F B1     .word off_B16F_02

off_B163_00:
- - - - - - 0x00F173 03:B163: 10        .byte $10   ; 
- - - - - - 0x00F174 03:B164: 00        .byte $00   ; 
- - - - - - 0x00F175 03:B165: 00        .byte $00   ; 
- - - - - - 0x00F176 03:B166: 20        .byte $20   ; 
- - - - - - 0x00F177 03:B167: 20        .byte $20   ; 
- - - - - - 0x00F178 03:B168: 30        .byte $30   ; 



off_B169_01:
- D 1 - I - 0x00F179 03:B169: 10        .byte $10   ; 
- D 1 - I - 0x00F17A 03:B16A: 00        .byte $00   ; 
- D 1 - I - 0x00F17B 03:B16B: 00        .byte $00   ; 
- D 1 - I - 0x00F17C 03:B16C: 10        .byte $10   ; 
- D 1 - I - 0x00F17D 03:B16D: 20        .byte $20   ; 
- D 1 - I - 0x00F17E 03:B16E: 30        .byte $30   ; 



off_B16F_02:
- D 1 - I - 0x00F17F 03:B16F: 10        .byte $10   ; 
- D 1 - I - 0x00F180 03:B170: 00        .byte $00   ; 
- D 1 - I - 0x00F181 03:B171: 10        .byte $10   ; 
- D 1 - I - 0x00F182 03:B172: 20        .byte $20   ; 
- D 1 - I - 0x00F183 03:B173: 20        .byte $20   ; 
- D 1 - I - 0x00F184 03:B174: 30        .byte $30   ; 



sub_B175:
C - - - - - 0x00F185 03:B175: 98        TYA
C - - - - - 0x00F186 03:B176: 48        PHA
C - - - - - 0x00F187 03:B177: A5 2A     LDA ram_002A
C - - - - - 0x00F189 03:B179: F0 07     BEQ bra_B182
C - - - - - 0x00F18B 03:B17B: C5 1E     CMP ram_001E
C - - - - - 0x00F18D 03:B17D: 90 03     BCC bra_B182
C - - - - - 0x00F18F 03:B17F: 4C 87 B1  JMP loc_B187
bra_B182:
C - - - - - 0x00F192 03:B182: A9 00     LDA #$00
C - - - - - 0x00F194 03:B184: 4C 92 B1  JMP loc_B192
loc_B187:
C D 1 - - - 0x00F197 03:B187: A5 1C     LDA ram_001C
C - - - - - 0x00F199 03:B189: 10 05     BPL bra_B190
C - - - - - 0x00F19B 03:B18B: A9 02     LDA #$02
C - - - - - 0x00F19D 03:B18D: 4C 92 B1  JMP loc_B192
bra_B190:
C - - - - - 0x00F1A0 03:B190: A9 01     LDA #$01
loc_B192:
C D 1 - - - 0x00F1A2 03:B192: 85 20     STA ram_0020
C - - - - - 0x00F1A4 03:B194: A5 2B     LDA ram_002B
C - - - - - 0x00F1A6 03:B196: F0 07     BEQ bra_B19F
C - - - - - 0x00F1A8 03:B198: C5 1F     CMP ram_001F
C - - - - - 0x00F1AA 03:B19A: 90 03     BCC bra_B19F
C - - - - - 0x00F1AC 03:B19C: 4C A4 B1  JMP loc_B1A4
bra_B19F:
C - - - - - 0x00F1AF 03:B19F: A9 00     LDA #$00
C - - - - - 0x00F1B1 03:B1A1: 4C CB B1  JMP loc_B1CB
loc_B1A4:
C D 1 - - - 0x00F1B4 03:B1A4: A5 1D     LDA ram_001D
C - - - - - 0x00F1B6 03:B1A6: 10 13     BPL bra_B1BB
C - - - - - 0x00F1B8 03:B1A8: A5 20     LDA ram_0020
C - - - - - 0x00F1BA 03:B1AA: F0 0A     BEQ bra_B1B6
C - - - - - 0x00F1BC 03:B1AC: A5 2A     LDA ram_002A
C - - - - - 0x00F1BE 03:B1AE: C5 2B     CMP ram_002B
C - - - - - 0x00F1C0 03:B1B0: B0 04     BCS bra_B1B6
C - - - - - 0x00F1C2 03:B1B2: A9 00     LDA #$00
C - - - - - 0x00F1C4 03:B1B4: 85 20     STA ram_0020
bra_B1B6:
C - - - - - 0x00F1C6 03:B1B6: A9 08     LDA #$08
C - - - - - 0x00F1C8 03:B1B8: 4C CB B1  JMP loc_B1CB
bra_B1BB:
C - - - - - 0x00F1CB 03:B1BB: A5 20     LDA ram_0020
C - - - - - 0x00F1CD 03:B1BD: F0 0A     BEQ bra_B1C9
C - - - - - 0x00F1CF 03:B1BF: A5 2A     LDA ram_002A
C - - - - - 0x00F1D1 03:B1C1: C5 2B     CMP ram_002B
C - - - - - 0x00F1D3 03:B1C3: B0 04     BCS bra_B1C9
C - - - - - 0x00F1D5 03:B1C5: A9 00     LDA #$00
C - - - - - 0x00F1D7 03:B1C7: 85 20     STA ram_0020
bra_B1C9:
C - - - - - 0x00F1D9 03:B1C9: A9 04     LDA #$04
loc_B1CB:
C D 1 - - - 0x00F1DB 03:B1CB: 05 20     ORA ram_0020
C - - - - - 0x00F1DD 03:B1CD: 85 20     STA ram_0020
C - - - - - 0x00F1DF 03:B1CF: A8        TAY
C - - - - - 0x00F1E0 03:B1D0: B9 ED B1  LDA tbl_B1ED,Y
C - - - - - 0x00F1E3 03:B1D3: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00F1E6 03:B1D6: C9 FF     CMP #$FF
C - - - - - 0x00F1E8 03:B1D8: F0 08     BEQ bra_B1E2
C - - - - - 0x00F1EA 03:B1DA: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00F1ED 03:B1DD: 29 BF     AND #$BF
C - - - - - 0x00F1EF 03:B1DF: 4C E7 B1  JMP loc_B1E7
bra_B1E2:
C - - - - - 0x00F1F2 03:B1E2: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x00F1F5 03:B1E5: 09 40     ORA #$40
loc_B1E7:
C D 1 - - - 0x00F1F7 03:B1E7: 9D 50 06  STA ram_позиция_управление,X
C - - - - - 0x00F1FA 03:B1EA: 68        PLA
C - - - - - 0x00F1FB 03:B1EB: A8        TAY
C - - - - - 0x00F1FC 03:B1EC: 60        RTS



tbl_B1ED:
- D 1 - - - 0x00F1FD 03:B1ED: FF        .byte $FF   ; 
- D 1 - - - 0x00F1FE 03:B1EE: 40        .byte $40   ; 
- D 1 - - - 0x00F1FF 03:B1EF: C0        .byte $C0   ; 
- - - - - - 0x00F200 03:B1F0: FF        .byte $FF   ; 
- D 1 - - - 0x00F201 03:B1F1: 80        .byte $80   ; 
- D 1 - - - 0x00F202 03:B1F2: 60        .byte $60   ; 
- D 1 - - - 0x00F203 03:B1F3: A0        .byte $A0   ; 
- - - - - - 0x00F204 03:B1F4: FF        .byte $FF   ; 
- D 1 - - - 0x00F205 03:B1F5: 00        .byte $00   ; 
- D 1 - - - 0x00F206 03:B1F6: 20        .byte $20   ; 
- D 1 - - - 0x00F207 03:B1F7: E0        .byte $E0   ; 



tbl_B1F8:
- D 1 - - - 0x00F208 03:B1F8: FE B1     .word off_B1FE_00
- D 1 - - - 0x00F20A 03:B1FA: FE B1     .word off_B1FE_01
- D 1 - - - 0x00F20C 03:B1FC: 0A B5     .word off_B50A_02

off_B1FE_00:
off_B1FE_01:
- D 1 - I - 0x00F20E 03:B1FE: 6A B2     .word off_B26A_00
- D 1 - I - 0x00F210 03:B200: 7A B2     .word off_B27A_01
- D 1 - I - 0x00F212 03:B202: 8A B2     .word off_B28A_02
- D 1 - I - 0x00F214 03:B204: 9A B2     .word off_B29A_03
- D 1 - I - 0x00F216 03:B206: AA B2     .word off_B2AA_04
- D 1 - I - 0x00F218 03:B208: BA B2     .word off_B2BA_05
- D 1 - I - 0x00F21A 03:B20A: 6A B2     .word off_B26A_06
- D 1 - I - 0x00F21C 03:B20C: 7A B2     .word off_B27A_07
- D 1 - I - 0x00F21E 03:B20E: 8A B2     .word off_B28A_08
- D 1 - I - 0x00F220 03:B210: 9A B2     .word off_B29A_09
- D 1 - I - 0x00F222 03:B212: AA B2     .word off_B2AA_0A
- D 1 - I - 0x00F224 03:B214: BA B2     .word off_B2BA_0B
- D 1 - I - 0x00F226 03:B216: CA B2     .word off_B2CA_0C
- D 1 - I - 0x00F228 03:B218: DA B2     .word off_B2DA_0D
- D 1 - I - 0x00F22A 03:B21A: EA B2     .word off_B2EA_0E
- D 1 - I - 0x00F22C 03:B21C: FA B2     .word off_B2FA_0F
- D 1 - I - 0x00F22E 03:B21E: 0A B3     .word off_B30A_10
- D 1 - I - 0x00F230 03:B220: 1A B3     .word off_B31A_11
- D 1 - I - 0x00F232 03:B222: 2A B3     .word off_B32A_12
- D 1 - I - 0x00F234 03:B224: 3A B3     .word off_B33A_13
- D 1 - I - 0x00F236 03:B226: 4A B3     .word off_B34A_14
- D 1 - I - 0x00F238 03:B228: 5A B3     .word off_B35A_15
- D 1 - I - 0x00F23A 03:B22A: 6A B3     .word off_B36A_16
- - - - - - 0x00F23C 03:B22C: 7A B3     .word off_B37A_17
- D 1 - I - 0x00F23E 03:B22E: 8A B3     .word off_B38A_18
- D 1 - I - 0x00F240 03:B230: 9A B3     .word off_B39A_19
- D 1 - I - 0x00F242 03:B232: AA B3     .word off_B3AA_1A
- D 1 - I - 0x00F244 03:B234: BA B3     .word off_B3BA_1B
- D 1 - I - 0x00F246 03:B236: CA B3     .word off_B3CA_1C
- D 1 - I - 0x00F248 03:B238: DA B3     .word off_B3DA_1D
- D 1 - I - 0x00F24A 03:B23A: EA B3     .word off_B3EA_1E
- D 1 - I - 0x00F24C 03:B23C: FA B3     .word off_B3FA_1F
- D 1 - I - 0x00F24E 03:B23E: 0A B4     .word off_B40A_20
- D 1 - I - 0x00F250 03:B240: 1A B4     .word off_B41A_21
- D 1 - I - 0x00F252 03:B242: 2A B4     .word off_B42A_22
- D 1 - I - 0x00F254 03:B244: 3A B4     .word off_B43A_23
- D 1 - I - 0x00F256 03:B246: 4A B4     .word off_B44A_24
- D 1 - I - 0x00F258 03:B248: 5A B4     .word off_B45A_25
- D 1 - I - 0x00F25A 03:B24A: 6A B4     .word off_B46A_26
- D 1 - I - 0x00F25C 03:B24C: 7A B4     .word off_B47A_27
- D 1 - I - 0x00F25E 03:B24E: 8A B4     .word off_B48A_28
- D 1 - I - 0x00F260 03:B250: 9A B4     .word off_B49A_29
- D 1 - I - 0x00F262 03:B252: AA B4     .word off_B4AA_2A
- D 1 - I - 0x00F264 03:B254: BA B4     .word off_B4BA_2B
- D 1 - I - 0x00F266 03:B256: CA B4     .word off_B4CA_2C
- D 1 - I - 0x00F268 03:B258: DA B4     .word off_B4DA_2D
- D 1 - I - 0x00F26A 03:B25A: EA B4     .word off_B4EA_2E
- D 1 - I - 0x00F26C 03:B25C: FA B4     .word off_B4FA_2F
- D 1 - I - 0x00F26E 03:B25E: AA B4     .word off_B4AA_30
- D 1 - I - 0x00F270 03:B260: BA B4     .word off_B4BA_31
- D 1 - I - 0x00F272 03:B262: CA B4     .word off_B4CA_32
- D 1 - I - 0x00F274 03:B264: DA B4     .word off_B4DA_33
- D 1 - I - 0x00F276 03:B266: EA B4     .word off_B4EA_34
- D 1 - I - 0x00F278 03:B268: FA B4     .word off_B4FA_35



off_B26A_00:
off_B26A_06:
- D 1 - I - 0x00F27A 03:B26A: 02        .byte $02   ; 
- D 1 - I - 0x00F27B 03:B26B: 22        .byte $22   ; 
- D 1 - I - 0x00F27C 03:B26C: 00        .byte $00   ; 
- D 1 - I - 0x00F27D 03:B26D: 78        .byte $78   ; 
- D 1 - I - 0x00F27E 03:B26E: 02        .byte $02   ; 
- D 1 - I - 0x00F27F 03:B26F: C3        .byte $C3   ; 
- D 1 - I - 0x00F280 03:B270: 00        .byte $00   ; 
- D 1 - I - 0x00F281 03:B271: 44        .byte $44   ; 
- D 1 - I - 0x00F282 03:B272: 02        .byte $02   ; 
- D 1 - I - 0x00F283 03:B273: 93        .byte $93   ; 
- D 1 - I - 0x00F284 03:B274: 00        .byte $00   ; 
- D 1 - I - 0x00F285 03:B275: B7        .byte $B7   ; 
- D 1 - I - 0x00F286 03:B276: 01        .byte $01   ; 
- D 1 - I - 0x00F287 03:B277: EB        .byte $EB   ; 
- D 1 - I - 0x00F288 03:B278: 00        .byte $00   ; 
- D 1 - I - 0x00F289 03:B279: 56        .byte $56   ; 



off_B27A_01:
off_B27A_07:
- D 1 - I - 0x00F28A 03:B27A: 02        .byte $02   ; 
- D 1 - I - 0x00F28B 03:B27B: 79        .byte $79   ; 
- D 1 - I - 0x00F28C 03:B27C: 00        .byte $00   ; 
- D 1 - I - 0x00F28D 03:B27D: 6C        .byte $6C   ; 
- D 1 - I - 0x00F28E 03:B27E: 02        .byte $02   ; 
- D 1 - I - 0x00F28F 03:B27F: F2        .byte $F2   ; 
- D 1 - I - 0x00F290 03:B280: 00        .byte $00   ; 
- D 1 - I - 0x00F291 03:B281: 44        .byte $44   ; 
- D 1 - I - 0x00F292 03:B282: 02        .byte $02   ; 
- D 1 - I - 0x00F293 03:B283: A7        .byte $A7   ; 
- D 1 - I - 0x00F294 03:B284: 00        .byte $00   ; 
- D 1 - I - 0x00F295 03:B285: B4        .byte $B4   ; 
- D 1 - I - 0x00F296 03:B286: 02        .byte $02   ; 
- D 1 - I - 0x00F297 03:B287: 22        .byte $22   ; 
- D 1 - I - 0x00F298 03:B288: 00        .byte $00   ; 
- D 1 - I - 0x00F299 03:B289: 77        .byte $77   ; 



off_B28A_02:
off_B28A_08:
- D 1 - I - 0x00F29A 03:B28A: 02        .byte $02   ; 
- D 1 - I - 0x00F29B 03:B28B: 96        .byte $96   ; 
- D 1 - I - 0x00F29C 03:B28C: 00        .byte $00   ; 
- D 1 - I - 0x00F29D 03:B28D: 8C        .byte $8C   ; 
- D 1 - I - 0x00F29E 03:B28E: 03        .byte $03   ; 
- D 1 - I - 0x00F29F 03:B28F: 3D        .byte $3D   ; 
- D 1 - I - 0x00F2A0 03:B290: 00        .byte $00   ; 
- D 1 - I - 0x00F2A1 03:B291: 44        .byte $44   ; 
- D 1 - I - 0x00F2A2 03:B292: 02        .byte $02   ; 
- D 1 - I - 0x00F2A3 03:B293: EB        .byte $EB   ; 
- D 1 - I - 0x00F2A4 03:B294: 00        .byte $00   ; 
- D 1 - I - 0x00F2A5 03:B295: C3        .byte $C3   ; 
- D 1 - I - 0x00F2A6 03:B296: 02        .byte $02   ; 
- D 1 - I - 0x00F2A7 03:B297: 62        .byte $62   ; 
- D 1 - I - 0x00F2A8 03:B298: 00        .byte $00   ; 
- D 1 - I - 0x00F2A9 03:B299: 9E        .byte $9E   ; 



off_B29A_03:
off_B29A_09:
- D 1 - I - 0x00F2AA 03:B29A: 03        .byte $03   ; 
- D 1 - I - 0x00F2AB 03:B29B: 00        .byte $00   ; 
- D 1 - I - 0x00F2AC 03:B29C: 00        .byte $00   ; 
- D 1 - I - 0x00F2AD 03:B29D: 63        .byte $63   ; 
- D 1 - I - 0x00F2AE 03:B29E: 03        .byte $03   ; 
- D 1 - I - 0x00F2AF 03:B29F: 55        .byte $55   ; 
- D 1 - I - 0x00F2B0 03:B2A0: 00        .byte $00   ; 
- D 1 - I - 0x00F2B1 03:B2A1: 44        .byte $44   ; 
- D 1 - I - 0x00F2B2 03:B2A2: 03        .byte $03   ; 
- D 1 - I - 0x00F2B3 03:B2A3: 09        .byte $09   ; 
- D 1 - I - 0x00F2B4 03:B2A4: 00        .byte $00   ; 
- D 1 - I - 0x00F2B5 03:B2A5: C1        .byte $C1   ; 
- D 1 - I - 0x00F2B6 03:B2A6: 02        .byte $02   ; 
- D 1 - I - 0x00F2B7 03:B2A7: AD        .byte $AD   ; 
- D 1 - I - 0x00F2B8 03:B2A8: 00        .byte $00   ; 
- D 1 - I - 0x00F2B9 03:B2A9: 7B        .byte $7B   ; 



off_B2AA_04:
off_B2AA_0A:
- D 1 - I - 0x00F2BA 03:B2AA: 03        .byte $03   ; 
- D 1 - I - 0x00F2BB 03:B2AB: 00        .byte $00   ; 
- D 1 - I - 0x00F2BC 03:B2AC: 00        .byte $00   ; 
- D 1 - I - 0x00F2BD 03:B2AD: 63        .byte $63   ; 
- D 1 - I - 0x00F2BE 03:B2AE: 03        .byte $03   ; 
- D 1 - I - 0x00F2BF 03:B2AF: 55        .byte $55   ; 
- D 1 - I - 0x00F2C0 03:B2B0: 00        .byte $00   ; 
- D 1 - I - 0x00F2C1 03:B2B1: A0        .byte $A0   ; 
- D 1 - I - 0x00F2C2 03:B2B2: 03        .byte $03   ; 
- D 1 - I - 0x00F2C3 03:B2B3: 09        .byte $09   ; 
- D 1 - I - 0x00F2C4 03:B2B4: 00        .byte $00   ; 
- D 1 - I - 0x00F2C5 03:B2B5: DC        .byte $DC   ; 
- - - - - - 0x00F2C6 03:B2B6: 02        .byte $02   ; 
- - - - - - 0x00F2C7 03:B2B7: D3        .byte $D3   ; 
- - - - - - 0x00F2C8 03:B2B8: 00        .byte $00   ; 
- - - - - - 0x00F2C9 03:B2B9: 5B        .byte $5B   ; 



off_B2BA_05:
off_B2BA_0B:
- D 1 - I - 0x00F2CA 03:B2BA: 03        .byte $03   ; 
- D 1 - I - 0x00F2CB 03:B2BB: 1D        .byte $1D   ; 
- D 1 - I - 0x00F2CC 03:B2BC: 00        .byte $00   ; 
- D 1 - I - 0x00F2CD 03:B2BD: 8E        .byte $8E   ; 
- - - - - - 0x00F2CE 03:B2BE: 03        .byte $03   ; 
- - - - - - 0x00F2CF 03:B2BF: 32        .byte $32   ; 
- - - - - - 0x00F2D0 03:B2C0: 00        .byte $00   ; 
- - - - - - 0x00F2D1 03:B2C1: B0        .byte $B0   ; 
- D 1 - I - 0x00F2D2 03:B2C2: 02        .byte $02   ; 
- D 1 - I - 0x00F2D3 03:B2C3: E6        .byte $E6   ; 
- D 1 - I - 0x00F2D4 03:B2C4: 00        .byte $00   ; 
- D 1 - I - 0x00F2D5 03:B2C5: D3        .byte $D3   ; 
- D 1 - I - 0x00F2D6 03:B2C6: 02        .byte $02   ; 
- D 1 - I - 0x00F2D7 03:B2C7: E3        .byte $E3   ; 
- D 1 - I - 0x00F2D8 03:B2C8: 00        .byte $00   ; 
- D 1 - I - 0x00F2D9 03:B2C9: 40        .byte $40   ; 



off_B2CA_0C:
- D 1 - I - 0x00F2DA 03:B2CA: 02        .byte $02   ; 
- D 1 - I - 0x00F2DB 03:B2CB: 0C        .byte $0C   ; 
- D 1 - I - 0x00F2DC 03:B2CC: 00        .byte $00   ; 
- D 1 - I - 0x00F2DD 03:B2CD: A6        .byte $A6   ; 
- D 1 - I - 0x00F2DE 03:B2CE: 02        .byte $02   ; 
- D 1 - I - 0x00F2DF 03:B2CF: B3        .byte $B3   ; 
- D 1 - I - 0x00F2E0 03:B2D0: 00        .byte $00   ; 
- D 1 - I - 0x00F2E1 03:B2D1: 4E        .byte $4E   ; 
- D 1 - I - 0x00F2E2 03:B2D2: 02        .byte $02   ; 
- D 1 - I - 0x00F2E3 03:B2D3: 91        .byte $91   ; 
- D 1 - I - 0x00F2E4 03:B2D4: 00        .byte $00   ; 
- D 1 - I - 0x00F2E5 03:B2D5: BB        .byte $BB   ; 
- D 1 - I - 0x00F2E6 03:B2D6: 01        .byte $01   ; 
- D 1 - I - 0x00F2E7 03:B2D7: F6        .byte $F6   ; 
- D 1 - I - 0x00F2E8 03:B2D8: 00        .byte $00   ; 
- D 1 - I - 0x00F2E9 03:B2D9: 61        .byte $61   ; 



off_B2DA_0D:
- D 1 - I - 0x00F2EA 03:B2DA: 02        .byte $02   ; 
- D 1 - I - 0x00F2EB 03:B2DB: 39        .byte $39   ; 
- D 1 - I - 0x00F2EC 03:B2DC: 00        .byte $00   ; 
- D 1 - I - 0x00F2ED 03:B2DD: A6        .byte $A6   ; 
- D 1 - I - 0x00F2EE 03:B2DE: 02        .byte $02   ; 
- D 1 - I - 0x00F2EF 03:B2DF: F5        .byte $F5   ; 
- D 1 - I - 0x00F2F0 03:B2E0: 00        .byte $00   ; 
- D 1 - I - 0x00F2F1 03:B2E1: 4E        .byte $4E   ; 
- D 1 - I - 0x00F2F2 03:B2E2: 02        .byte $02   ; 
- D 1 - I - 0x00F2F3 03:B2E3: B0        .byte $B0   ; 
- D 1 - I - 0x00F2F4 03:B2E4: 00        .byte $00   ; 
- D 1 - I - 0x00F2F5 03:B2E5: BB        .byte $BB   ; 
- D 1 - I - 0x00F2F6 03:B2E6: 02        .byte $02   ; 
- D 1 - I - 0x00F2F7 03:B2E7: 32        .byte $32   ; 
- D 1 - I - 0x00F2F8 03:B2E8: 00        .byte $00   ; 
- D 1 - I - 0x00F2F9 03:B2E9: 5E        .byte $5E   ; 



off_B2EA_0E:
- D 1 - I - 0x00F2FA 03:B2EA: 02        .byte $02   ; 
- D 1 - I - 0x00F2FB 03:B2EB: 80        .byte $80   ; 
- D 1 - I - 0x00F2FC 03:B2EC: 00        .byte $00   ; 
- D 1 - I - 0x00F2FD 03:B2ED: 99        .byte $99   ; 
- D 1 - I - 0x00F2FE 03:B2EE: 03        .byte $03   ; 
- D 1 - I - 0x00F2FF 03:B2EF: 4C        .byte $4C   ; 
- D 1 - I - 0x00F300 03:B2F0: 00        .byte $00   ; 
- D 1 - I - 0x00F301 03:B2F1: 44        .byte $44   ; 
- D 1 - I - 0x00F302 03:B2F2: 02        .byte $02   ; 
- D 1 - I - 0x00F303 03:B2F3: EE        .byte $EE   ; 
- D 1 - I - 0x00F304 03:B2F4: 00        .byte $00   ; 
- D 1 - I - 0x00F305 03:B2F5: BB        .byte $BB   ; 
- D 1 - I - 0x00F306 03:B2F6: 02        .byte $02   ; 
- D 1 - I - 0x00F307 03:B2F7: 8C        .byte $8C   ; 
- D 1 - I - 0x00F308 03:B2F8: 00        .byte $00   ; 
- D 1 - I - 0x00F309 03:B2F9: 52        .byte $52   ; 



off_B2FA_0F:
- D 1 - I - 0x00F30A 03:B2FA: 02        .byte $02   ; 
- D 1 - I - 0x00F30B 03:B2FB: CA        .byte $CA   ; 
- D 1 - I - 0x00F30C 03:B2FC: 00        .byte $00   ; 
- D 1 - I - 0x00F30D 03:B2FD: 99        .byte $99   ; 
- D 1 - I - 0x00F30E 03:B2FE: 03        .byte $03   ; 
- D 1 - I - 0x00F30F 03:B2FF: 56        .byte $56   ; 
- D 1 - I - 0x00F310 03:B300: 00        .byte $00   ; 
- D 1 - I - 0x00F311 03:B301: 53        .byte $53   ; 
- D 1 - I - 0x00F312 03:B302: 03        .byte $03   ; 
- D 1 - I - 0x00F313 03:B303: 25        .byte $25   ; 
- D 1 - I - 0x00F314 03:B304: 00        .byte $00   ; 
- D 1 - I - 0x00F315 03:B305: C7        .byte $C7   ; 
- D 1 - I - 0x00F316 03:B306: 02        .byte $02   ; 
- D 1 - I - 0x00F317 03:B307: CE        .byte $CE   ; 
- D 1 - I - 0x00F318 03:B308: 00        .byte $00   ; 
- D 1 - I - 0x00F319 03:B309: 3A        .byte $3A   ; 



off_B30A_10:
- D 1 - I - 0x00F31A 03:B30A: 02        .byte $02   ; 
- D 1 - I - 0x00F31B 03:B30B: DD        .byte $DD   ; 
- D 1 - I - 0x00F31C 03:B30C: 00        .byte $00   ; 
- D 1 - I - 0x00F31D 03:B30D: A8        .byte $A8   ; 
- D 1 - I - 0x00F31E 03:B30E: 03        .byte $03   ; 
- D 1 - I - 0x00F31F 03:B30F: 56        .byte $56   ; 
- D 1 - I - 0x00F320 03:B310: 00        .byte $00   ; 
- D 1 - I - 0x00F321 03:B311: 53        .byte $53   ; 
- D 1 - I - 0x00F322 03:B312: 03        .byte $03   ; 
- D 1 - I - 0x00F323 03:B313: 39        .byte $39   ; 
- D 1 - I - 0x00F324 03:B314: 00        .byte $00   ; 
- D 1 - I - 0x00F325 03:B315: D0        .byte $D0   ; 
- D 1 - I - 0x00F326 03:B316: 02        .byte $02   ; 
- D 1 - I - 0x00F327 03:B317: DE        .byte $DE   ; 
- D 1 - I - 0x00F328 03:B318: 00        .byte $00   ; 
- D 1 - I - 0x00F329 03:B319: 3A        .byte $3A   ; 



off_B31A_11:
- D 1 - I - 0x00F32A 03:B31A: 02        .byte $02   ; 
- D 1 - I - 0x00F32B 03:B31B: D5        .byte $D5   ; 
- D 1 - I - 0x00F32C 03:B31C: 00        .byte $00   ; 
- D 1 - I - 0x00F32D 03:B31D: BC        .byte $BC   ; 
- - - - - - 0x00F32E 03:B31E: 03        .byte $03   ; 
- - - - - - 0x00F32F 03:B31F: 28        .byte $28   ; 
- - - - - - 0x00F330 03:B320: 00        .byte $00   ; 
- - - - - - 0x00F331 03:B321: B0        .byte $B0   ; 
- D 1 - I - 0x00F332 03:B322: 03        .byte $03   ; 
- D 1 - I - 0x00F333 03:B323: 54        .byte $54   ; 
- D 1 - I - 0x00F334 03:B324: 00        .byte $00   ; 
- D 1 - I - 0x00F335 03:B325: D9        .byte $D9   ; 
- D 1 - I - 0x00F336 03:B326: 02        .byte $02   ; 
- D 1 - I - 0x00F337 03:B327: D5        .byte $D5   ; 
- D 1 - I - 0x00F338 03:B328: 00        .byte $00   ; 
- D 1 - I - 0x00F339 03:B329: 5A        .byte $5A   ; 



off_B32A_12:
- D 1 - I - 0x00F33A 03:B32A: 02        .byte $02   ; 
- D 1 - I - 0x00F33B 03:B32B: 24        .byte $24   ; 
- D 1 - I - 0x00F33C 03:B32C: 00        .byte $00   ; 
- D 1 - I - 0x00F33D 03:B32D: CF        .byte $CF   ; 
- D 1 - I - 0x00F33E 03:B32E: 02        .byte $02   ; 
- D 1 - I - 0x00F33F 03:B32F: C9        .byte $C9   ; 
- D 1 - I - 0x00F340 03:B330: 00        .byte $00   ; 
- D 1 - I - 0x00F341 03:B331: 5B        .byte $5B   ; 
- D 1 - I - 0x00F342 03:B332: 02        .byte $02   ; 
- D 1 - I - 0x00F343 03:B333: B1        .byte $B1   ; 
- D 1 - I - 0x00F344 03:B334: 00        .byte $00   ; 
- D 1 - I - 0x00F345 03:B335: DA        .byte $DA   ; 
- D 1 - I - 0x00F346 03:B336: 01        .byte $01   ; 
- D 1 - I - 0x00F347 03:B337: F7        .byte $F7   ; 
- D 1 - I - 0x00F348 03:B338: 00        .byte $00   ; 
- D 1 - I - 0x00F349 03:B339: 74        .byte $74   ; 



off_B33A_13:
- D 1 - I - 0x00F34A 03:B33A: 02        .byte $02   ; 
- D 1 - I - 0x00F34B 03:B33B: 42        .byte $42   ; 
- D 1 - I - 0x00F34C 03:B33C: 00        .byte $00   ; 
- D 1 - I - 0x00F34D 03:B33D: CF        .byte $CF   ; 
- D 1 - I - 0x00F34E 03:B33E: 02        .byte $02   ; 
- D 1 - I - 0x00F34F 03:B33F: EF        .byte $EF   ; 
- D 1 - I - 0x00F350 03:B340: 00        .byte $00   ; 
- D 1 - I - 0x00F351 03:B341: 58        .byte $58   ; 
- D 1 - I - 0x00F352 03:B342: 02        .byte $02   ; 
- D 1 - I - 0x00F353 03:B343: CF        .byte $CF   ; 
- D 1 - I - 0x00F354 03:B344: 00        .byte $00   ; 
- D 1 - I - 0x00F355 03:B345: DA        .byte $DA   ; 
- D 1 - I - 0x00F356 03:B346: 02        .byte $02   ; 
- D 1 - I - 0x00F357 03:B347: 2C        .byte $2C   ; 
- D 1 - I - 0x00F358 03:B348: 00        .byte $00   ; 
- D 1 - I - 0x00F359 03:B349: 6B        .byte $6B   ; 



off_B34A_14:
- D 1 - I - 0x00F35A 03:B34A: 02        .byte $02   ; 
- D 1 - I - 0x00F35B 03:B34B: 63        .byte $63   ; 
- D 1 - I - 0x00F35C 03:B34C: 00        .byte $00   ; 
- D 1 - I - 0x00F35D 03:B34D: CF        .byte $CF   ; 
- D 1 - I - 0x00F35E 03:B34E: 03        .byte $03   ; 
- D 1 - I - 0x00F35F 03:B34F: 3A        .byte $3A   ; 
- D 1 - I - 0x00F360 03:B350: 00        .byte $00   ; 
- D 1 - I - 0x00F361 03:B351: 51        .byte $51   ; 
- D 1 - I - 0x00F362 03:B352: 03        .byte $03   ; 
- D 1 - I - 0x00F363 03:B353: 0B        .byte $0B   ; 
- D 1 - I - 0x00F364 03:B354: 00        .byte $00   ; 
- D 1 - I - 0x00F365 03:B355: CB        .byte $CB   ; 
- D 1 - I - 0x00F366 03:B356: 02        .byte $02   ; 
- D 1 - I - 0x00F367 03:B357: 7A        .byte $7A   ; 
- D 1 - I - 0x00F368 03:B358: 00        .byte $00   ; 
- D 1 - I - 0x00F369 03:B359: 62        .byte $62   ; 



off_B35A_15:
- D 1 - I - 0x00F36A 03:B35A: 02        .byte $02   ; 
- D 1 - I - 0x00F36B 03:B35B: AC        .byte $AC   ; 
- D 1 - I - 0x00F36C 03:B35C: 00        .byte $00   ; 
- D 1 - I - 0x00F36D 03:B35D: DB        .byte $DB   ; 
- D 1 - I - 0x00F36E 03:B35E: 03        .byte $03   ; 
- D 1 - I - 0x00F36F 03:B35F: 54        .byte $54   ; 
- D 1 - I - 0x00F370 03:B360: 00        .byte $00   ; 
- D 1 - I - 0x00F371 03:B361: 4E        .byte $4E   ; 
- D 1 - I - 0x00F372 03:B362: 03        .byte $03   ; 
- D 1 - I - 0x00F373 03:B363: 1F        .byte $1F   ; 
- D 1 - I - 0x00F374 03:B364: 00        .byte $00   ; 
- D 1 - I - 0x00F375 03:B365: C8        .byte $C8   ; 
- D 1 - I - 0x00F376 03:B366: 02        .byte $02   ; 
- D 1 - I - 0x00F377 03:B367: D0        .byte $D0   ; 
- D 1 - I - 0x00F378 03:B368: 00        .byte $00   ; 
- D 1 - I - 0x00F379 03:B369: 53        .byte $53   ; 



off_B36A_16:
- D 1 - I - 0x00F37A 03:B36A: 02        .byte $02   ; 
- D 1 - I - 0x00F37B 03:B36B: D0        .byte $D0   ; 
- D 1 - I - 0x00F37C 03:B36C: 00        .byte $00   ; 
- D 1 - I - 0x00F37D 03:B36D: B1        .byte $B1   ; 
- D 1 - I - 0x00F37E 03:B36E: 03        .byte $03   ; 
- D 1 - I - 0x00F37F 03:B36F: 5C        .byte $5C   ; 
- D 1 - I - 0x00F380 03:B370: 00        .byte $00   ; 
- D 1 - I - 0x00F381 03:B371: 5D        .byte $5D   ; 
- D 1 - I - 0x00F382 03:B372: 03        .byte $03   ; 
- D 1 - I - 0x00F383 03:B373: 25        .byte $25   ; 
- D 1 - I - 0x00F384 03:B374: 00        .byte $00   ; 
- D 1 - I - 0x00F385 03:B375: E6        .byte $E6   ; 
- D 1 - I - 0x00F386 03:B376: 02        .byte $02   ; 
- D 1 - I - 0x00F387 03:B377: F6        .byte $F6   ; 
- D 1 - I - 0x00F388 03:B378: 00        .byte $00   ; 
- D 1 - I - 0x00F389 03:B379: 45        .byte $45   ; 



off_B37A_17:
- - - - - - 0x00F38A 03:B37A: 02        .byte $02   ; 
- - - - - - 0x00F38B 03:B37B: D8        .byte $D8   ; 
- - - - - - 0x00F38C 03:B37C: 00        .byte $00   ; 
- - - - - - 0x00F38D 03:B37D: 96        .byte $96   ; 
- - - - - - 0x00F38E 03:B37E: 03        .byte $03   ; 
- - - - - - 0x00F38F 03:B37F: 5C        .byte $5C   ; 
- - - - - - 0x00F390 03:B380: 00        .byte $00   ; 
- - - - - - 0x00F391 03:B381: 6C        .byte $6C   ; 
- - - - - - 0x00F392 03:B382: 03        .byte $03   ; 
- - - - - - 0x00F393 03:B383: 3A        .byte $3A   ; 
- - - - - - 0x00F394 03:B384: 00        .byte $00   ; 
- - - - - - 0x00F395 03:B385: F1        .byte $F1   ; 
- - - - - - 0x00F396 03:B386: 03        .byte $03   ; 
- - - - - - 0x00F397 03:B387: 0A        .byte $0A   ; 
- - - - - - 0x00F398 03:B388: 00        .byte $00   ; 
- - - - - - 0x00F399 03:B389: 54        .byte $54   ; 



off_B38A_18:
- D 1 - I - 0x00F39A 03:B38A: 01        .byte $01   ; 
- D 1 - I - 0x00F39B 03:B38B: F2        .byte $F2   ; 
- D 1 - I - 0x00F39C 03:B38C: 00        .byte $00   ; 
- D 1 - I - 0x00F39D 03:B38D: E7        .byte $E7   ; 
- D 1 - I - 0x00F39E 03:B38E: 02        .byte $02   ; 
- D 1 - I - 0x00F39F 03:B38F: A2        .byte $A2   ; 
- D 1 - I - 0x00F3A0 03:B390: 00        .byte $00   ; 
- D 1 - I - 0x00F3A1 03:B391: 7B        .byte $7B   ; 
- D 1 - I - 0x00F3A2 03:B392: 02        .byte $02   ; 
- D 1 - I - 0x00F3A3 03:B393: A7        .byte $A7   ; 
- D 1 - I - 0x00F3A4 03:B394: 00        .byte $00   ; 
- D 1 - I - 0x00F3A5 03:B395: FD        .byte $FD   ; 
- D 1 - I - 0x00F3A6 03:B396: 01        .byte $01   ; 
- D 1 - I - 0x00F3A7 03:B397: F5        .byte $F5   ; 
- D 1 - I - 0x00F3A8 03:B398: 00        .byte $00   ; 
- D 1 - I - 0x00F3A9 03:B399: 97        .byte $97   ; 



off_B39A_19:
- D 1 - I - 0x00F3AA 03:B39A: 02        .byte $02   ; 
- D 1 - I - 0x00F3AB 03:B39B: 39        .byte $39   ; 
- D 1 - I - 0x00F3AC 03:B39C: 00        .byte $00   ; 
- D 1 - I - 0x00F3AD 03:B39D: E7        .byte $E7   ; 
- D 1 - I - 0x00F3AE 03:B39E: 02        .byte $02   ; 
- D 1 - I - 0x00F3AF 03:B39F: F3        .byte $F3   ; 
- D 1 - I - 0x00F3B0 03:B3A0: 00        .byte $00   ; 
- D 1 - I - 0x00F3B1 03:B3A1: 7B        .byte $7B   ; 
- D 1 - I - 0x00F3B2 03:B3A2: 02        .byte $02   ; 
- D 1 - I - 0x00F3B3 03:B3A3: FC        .byte $FC   ; 
- D 1 - I - 0x00F3B4 03:B3A4: 00        .byte $00   ; 
- D 1 - I - 0x00F3B5 03:B3A5: FD        .byte $FD   ; 
- D 1 - I - 0x00F3B6 03:B3A6: 02        .byte $02   ; 
- D 1 - I - 0x00F3B7 03:B3A7: 36        .byte $36   ; 
- D 1 - I - 0x00F3B8 03:B3A8: 00        .byte $00   ; 
- D 1 - I - 0x00F3B9 03:B3A9: 97        .byte $97   ; 



off_B3AA_1A:
- D 1 - I - 0x00F3BA 03:B3AA: 02        .byte $02   ; 
- D 1 - I - 0x00F3BB 03:B3AB: 6A        .byte $6A   ; 
- D 1 - I - 0x00F3BC 03:B3AC: 00        .byte $00   ; 
- D 1 - I - 0x00F3BD 03:B3AD: E7        .byte $E7   ; 
- D 1 - I - 0x00F3BE 03:B3AE: 03        .byte $03   ; 
- D 1 - I - 0x00F3BF 03:B3AF: 35        .byte $35   ; 
- D 1 - I - 0x00F3C0 03:B3B0: 00        .byte $00   ; 
- D 1 - I - 0x00F3C1 03:B3B1: 6F        .byte $6F   ; 
- D 1 - I - 0x00F3C2 03:B3B2: 03        .byte $03   ; 
- D 1 - I - 0x00F3C3 03:B3B3: 0D        .byte $0D   ; 
- D 1 - I - 0x00F3C4 03:B3B4: 01        .byte $01   ; 
- D 1 - I - 0x00F3C5 03:B3B5: 0B        .byte $0B   ; 
- D 1 - I - 0x00F3C6 03:B3B6: 02        .byte $02   ; 
- D 1 - I - 0x00F3C7 03:B3B7: 6D        .byte $6D   ; 
- D 1 - I - 0x00F3C8 03:B3B8: 00        .byte $00   ; 
- D 1 - I - 0x00F3C9 03:B3B9: 8B        .byte $8B   ; 



off_B3BA_1B:
- D 1 - I - 0x00F3CA 03:B3BA: 02        .byte $02   ; 
- D 1 - I - 0x00F3CB 03:B3BB: AE        .byte $AE   ; 
- D 1 - I - 0x00F3CC 03:B3BC: 00        .byte $00   ; 
- D 1 - I - 0x00F3CD 03:B3BD: E7        .byte $E7   ; 
- D 1 - I - 0x00F3CE 03:B3BE: 03        .byte $03   ; 
- D 1 - I - 0x00F3CF 03:B3BF: 53        .byte $53   ; 
- D 1 - I - 0x00F3D0 03:B3C0: 00        .byte $00   ; 
- D 1 - I - 0x00F3D1 03:B3C1: 5D        .byte $5D   ; 
- D 1 - I - 0x00F3D2 03:B3C2: 03        .byte $03   ; 
- D 1 - I - 0x00F3D3 03:B3C3: 4C        .byte $4C   ; 
- D 1 - I - 0x00F3D4 03:B3C4: 01        .byte $01   ; 
- D 1 - I - 0x00F3D5 03:B3C5: 11        .byte $11   ; 
- D 1 - I - 0x00F3D6 03:B3C6: 02        .byte $02   ; 
- D 1 - I - 0x00F3D7 03:B3C7: AB        .byte $AB   ; 
- D 1 - I - 0x00F3D8 03:B3C8: 00        .byte $00   ; 
- D 1 - I - 0x00F3D9 03:B3C9: 7F        .byte $7F   ; 



off_B3CA_1C:
- D 1 - I - 0x00F3DA 03:B3CA: 02        .byte $02   ; 
- D 1 - I - 0x00F3DB 03:B3CB: DC        .byte $DC   ; 
- D 1 - I - 0x00F3DC 03:B3CC: 00        .byte $00   ; 
- D 1 - I - 0x00F3DD 03:B3CD: E7        .byte $E7   ; 
- D 1 - I - 0x00F3DE 03:B3CE: 03        .byte $03   ; 
- D 1 - I - 0x00F3DF 03:B3CF: 3B        .byte $3B   ; 
- D 1 - I - 0x00F3E0 03:B3D0: 00        .byte $00   ; 
- D 1 - I - 0x00F3E1 03:B3D1: 90        .byte $90   ; 
- D 1 - I - 0x00F3E2 03:B3D2: 03        .byte $03   ; 
- D 1 - I - 0x00F3E3 03:B3D3: 46        .byte $46   ; 
- D 1 - I - 0x00F3E4 03:B3D4: 01        .byte $01   ; 
- D 1 - I - 0x00F3E5 03:B3D5: 05        .byte $05   ; 
- D 1 - I - 0x00F3E6 03:B3D6: 02        .byte $02   ; 
- D 1 - I - 0x00F3E7 03:B3D7: DC        .byte $DC   ; 
- D 1 - I - 0x00F3E8 03:B3D8: 00        .byte $00   ; 
- D 1 - I - 0x00F3E9 03:B3D9: 9A        .byte $9A   ; 



off_B3DA_1D:
- - - - - - 0x00F3EA 03:B3DA: 02        .byte $02   ; 
- - - - - - 0x00F3EB 03:B3DB: E5        .byte $E5   ; 
- - - - - - 0x00F3EC 03:B3DC: 00        .byte $00   ; 
- - - - - - 0x00F3ED 03:B3DD: FC        .byte $FC   ; 
- D 1 - I - 0x00F3EE 03:B3DE: 03        .byte $03   ; 
- D 1 - I - 0x00F3EF 03:B3DF: 2F        .byte $2F   ; 
- D 1 - I - 0x00F3F0 03:B3E0: 00        .byte $00   ; 
- D 1 - I - 0x00F3F1 03:B3E1: 9F        .byte $9F   ; 
- D 1 - I - 0x00F3F2 03:B3E2: 03        .byte $03   ; 
- D 1 - I - 0x00F3F3 03:B3E3: 3C        .byte $3C   ; 
- D 1 - I - 0x00F3F4 03:B3E4: 00        .byte $00   ; 
- D 1 - I - 0x00F3F5 03:B3E5: EA        .byte $EA   ; 
- D 1 - I - 0x00F3F6 03:B3E6: 02        .byte $02   ; 
- D 1 - I - 0x00F3F7 03:B3E7: DC        .byte $DC   ; 
- D 1 - I - 0x00F3F8 03:B3E8: 00        .byte $00   ; 
- D 1 - I - 0x00F3F9 03:B3E9: 80        .byte $80   ; 



off_B3EA_1E:
- D 1 - I - 0x00F3FA 03:B3EA: 01        .byte $01   ; 
- D 1 - I - 0x00F3FB 03:B3EB: F7        .byte $F7   ; 
- D 1 - I - 0x00F3FC 03:B3EC: 01        .byte $01   ; 
- D 1 - I - 0x00F3FD 03:B3ED: 20        .byte $20   ; 
- D 1 - I - 0x00F3FE 03:B3EE: 02        .byte $02   ; 
- D 1 - I - 0x00F3FF 03:B3EF: 9E        .byte $9E   ; 
- D 1 - I - 0x00F400 03:B3F0: 00        .byte $00   ; 
- D 1 - I - 0x00F401 03:B3F1: 9A        .byte $9A   ; 
- D 1 - I - 0x00F402 03:B3F2: 02        .byte $02   ; 
- D 1 - I - 0x00F403 03:B3F3: C6        .byte $C6   ; 
- D 1 - I - 0x00F404 03:B3F4: 01        .byte $01   ; 
- D 1 - I - 0x00F405 03:B3F5: 22        .byte $22   ; 
- D 1 - I - 0x00F406 03:B3F6: 01        .byte $01   ; 
- D 1 - I - 0x00F407 03:B3F7: EE        .byte $EE   ; 
- D 1 - I - 0x00F408 03:B3F8: 00        .byte $00   ; 
- D 1 - I - 0x00F409 03:B3F9: BB        .byte $BB   ; 



off_B3FA_1F:
- D 1 - I - 0x00F40A 03:B3FA: 02        .byte $02   ; 
- D 1 - I - 0x00F40B 03:B3FB: 3E        .byte $3E   ; 
- D 1 - I - 0x00F40C 03:B3FC: 01        .byte $01   ; 
- D 1 - I - 0x00F40D 03:B3FD: 20        .byte $20   ; 
- D 1 - I - 0x00F40E 03:B3FE: 02        .byte $02   ; 
- D 1 - I - 0x00F40F 03:B3FF: BB        .byte $BB   ; 
- D 1 - I - 0x00F410 03:B400: 00        .byte $00   ; 
- D 1 - I - 0x00F411 03:B401: 91        .byte $91   ; 
- D 1 - I - 0x00F412 03:B402: 03        .byte $03   ; 
- D 1 - I - 0x00F413 03:B403: 03        .byte $03   ; 
- D 1 - I - 0x00F414 03:B404: 01        .byte $01   ; 
- D 1 - I - 0x00F415 03:B405: 22        .byte $22   ; 
- D 1 - I - 0x00F416 03:B406: 02        .byte $02   ; 
- D 1 - I - 0x00F417 03:B407: 30        .byte $30   ; 
- D 1 - I - 0x00F418 03:B408: 00        .byte $00   ; 
- D 1 - I - 0x00F419 03:B409: C4        .byte $C4   ; 



off_B40A_20:
- D 1 - I - 0x00F41A 03:B40A: 02        .byte $02   ; 
- D 1 - I - 0x00F41B 03:B40B: 7E        .byte $7E   ; 
- D 1 - I - 0x00F41C 03:B40C: 01        .byte $01   ; 
- D 1 - I - 0x00F41D 03:B40D: 26        .byte $26   ; 
- D 1 - I - 0x00F41E 03:B40E: 02        .byte $02   ; 
- D 1 - I - 0x00F41F 03:B40F: FF        .byte $FF   ; 
- D 1 - I - 0x00F420 03:B410: 00        .byte $00   ; 
- D 1 - I - 0x00F421 03:B411: A0        .byte $A0   ; 
- D 1 - I - 0x00F422 03:B412: 03        .byte $03   ; 
- D 1 - I - 0x00F423 03:B413: 4D        .byte $4D   ; 
- D 1 - I - 0x00F424 03:B414: 01        .byte $01   ; 
- D 1 - I - 0x00F425 03:B415: 22        .byte $22   ; 
- D 1 - I - 0x00F426 03:B416: 02        .byte $02   ; 
- D 1 - I - 0x00F427 03:B417: 6F        .byte $6F   ; 
- D 1 - I - 0x00F428 03:B418: 00        .byte $00   ; 
- D 1 - I - 0x00F429 03:B419: D3        .byte $D3   ; 



off_B41A_21:
- D 1 - I - 0x00F42A 03:B41A: 02        .byte $02   ; 
- D 1 - I - 0x00F42B 03:B41B: C5        .byte $C5   ; 
- D 1 - I - 0x00F42C 03:B41C: 01        .byte $01   ; 
- D 1 - I - 0x00F42D 03:B41D: 2F        .byte $2F   ; 
- D 1 - I - 0x00F42E 03:B41E: 03        .byte $03   ; 
- D 1 - I - 0x00F42F 03:B41F: 2B        .byte $2B   ; 
- D 1 - I - 0x00F430 03:B420: 00        .byte $00   ; 
- D 1 - I - 0x00F431 03:B421: B5        .byte $B5   ; 
- D 1 - I - 0x00F432 03:B422: 03        .byte $03   ; 
- D 1 - I - 0x00F433 03:B423: 72        .byte $72   ; 
- D 1 - I - 0x00F434 03:B424: 01        .byte $01   ; 
- D 1 - I - 0x00F435 03:B425: 31        .byte $31   ; 
- D 1 - I - 0x00F436 03:B426: 02        .byte $02   ; 
- D 1 - I - 0x00F437 03:B427: B4        .byte $B4   ; 
- D 1 - I - 0x00F438 03:B428: 00        .byte $00   ; 
- D 1 - I - 0x00F439 03:B429: D9        .byte $D9   ; 



off_B42A_22:
- D 1 - I - 0x00F43A 03:B42A: 02        .byte $02   ; 
- D 1 - I - 0x00F43B 03:B42B: F2        .byte $F2   ; 
- D 1 - I - 0x00F43C 03:B42C: 01        .byte $01   ; 
- D 1 - I - 0x00F43D 03:B42D: 35        .byte $35   ; 
- D 1 - I - 0x00F43E 03:B42E: 03        .byte $03   ; 
- D 1 - I - 0x00F43F 03:B42F: 4A        .byte $4A   ; 
- D 1 - I - 0x00F440 03:B430: 00        .byte $00   ; 
- D 1 - I - 0x00F441 03:B431: A6        .byte $A6   ; 
- D 1 - I - 0x00F442 03:B432: 03        .byte $03   ; 
- D 1 - I - 0x00F443 03:B433: 6D        .byte $6D   ; 
- D 1 - I - 0x00F444 03:B434: 01        .byte $01   ; 
- D 1 - I - 0x00F445 03:B435: 3A        .byte $3A   ; 
- D 1 - I - 0x00F446 03:B436: 02        .byte $02   ; 
- D 1 - I - 0x00F447 03:B437: CD        .byte $CD   ; 
- D 1 - I - 0x00F448 03:B438: 00        .byte $00   ; 
- D 1 - I - 0x00F449 03:B439: D1        .byte $D1   ; 



off_B43A_23:
- D 1 - I - 0x00F44A 03:B43A: 03        .byte $03   ; 
- D 1 - I - 0x00F44B 03:B43B: 12        .byte $12   ; 
- D 1 - I - 0x00F44C 03:B43C: 01        .byte $01   ; 
- D 1 - I - 0x00F44D 03:B43D: 20        .byte $20   ; 
- D 1 - I - 0x00F44E 03:B43E: 03        .byte $03   ; 
- D 1 - I - 0x00F44F 03:B43F: 3F        .byte $3F   ; 
- D 1 - I - 0x00F450 03:B440: 00        .byte $00   ; 
- D 1 - I - 0x00F451 03:B441: AD        .byte $AD   ; 
- - - - - - 0x00F452 03:B442: 03        .byte $03   ; 
- - - - - - 0x00F453 03:B443: 6D        .byte $6D   ; 
- - - - - - 0x00F454 03:B444: 01        .byte $01   ; 
- - - - - - 0x00F455 03:B445: 52        .byte $52   ; 
- - - - - - 0x00F456 03:B446: 02        .byte $02   ; 
- - - - - - 0x00F457 03:B447: DC        .byte $DC   ; 
- - - - - - 0x00F458 03:B448: 00        .byte $00   ; 
- - - - - - 0x00F459 03:B449: BF        .byte $BF   ; 



off_B44A_24:
- D 1 - I - 0x00F45A 03:B44A: 01        .byte $01   ; 
- D 1 - I - 0x00F45B 03:B44B: FF        .byte $FF   ; 
- D 1 - I - 0x00F45C 03:B44C: 01        .byte $01   ; 
- D 1 - I - 0x00F45D 03:B44D: 4A        .byte $4A   ; 
- D 1 - I - 0x00F45E 03:B44E: 02        .byte $02   ; 
- D 1 - I - 0x00F45F 03:B44F: 89        .byte $89   ; 
- D 1 - I - 0x00F460 03:B450: 00        .byte $00   ; 
- D 1 - I - 0x00F461 03:B451: BB        .byte $BB   ; 
- D 1 - I - 0x00F462 03:B452: 02        .byte $02   ; 
- D 1 - I - 0x00F463 03:B453: C3        .byte $C3   ; 
- D 1 - I - 0x00F464 03:B454: 01        .byte $01   ; 
- D 1 - I - 0x00F465 03:B455: 40        .byte $40   ; 
- D 1 - I - 0x00F466 03:B456: 01        .byte $01   ; 
- D 1 - I - 0x00F467 03:B457: E4        .byte $E4   ; 
- D 1 - I - 0x00F468 03:B458: 00        .byte $00   ; 
- D 1 - I - 0x00F469 03:B459: F3        .byte $F3   ; 



off_B45A_25:
- D 1 - I - 0x00F46A 03:B45A: 02        .byte $02   ; 
- D 1 - I - 0x00F46B 03:B45B: 3B        .byte $3B   ; 
- D 1 - I - 0x00F46C 03:B45C: 01        .byte $01   ; 
- D 1 - I - 0x00F46D 03:B45D: 4A        .byte $4A   ; 
- D 1 - I - 0x00F46E 03:B45E: 02        .byte $02   ; 
- D 1 - I - 0x00F46F 03:B45F: AD        .byte $AD   ; 
- D 1 - I - 0x00F470 03:B460: 00        .byte $00   ; 
- D 1 - I - 0x00F471 03:B461: BB        .byte $BB   ; 
- D 1 - I - 0x00F472 03:B462: 03        .byte $03   ; 
- D 1 - I - 0x00F473 03:B463: 08        .byte $08   ; 
- D 1 - I - 0x00F474 03:B464: 01        .byte $01   ; 
- D 1 - I - 0x00F475 03:B465: 40        .byte $40   ; 
- D 1 - I - 0x00F476 03:B466: 02        .byte $02   ; 
- D 1 - I - 0x00F477 03:B467: 23        .byte $23   ; 
- D 1 - I - 0x00F478 03:B468: 00        .byte $00   ; 
- D 1 - I - 0x00F479 03:B469: F3        .byte $F3   ; 



off_B46A_26:
- D 1 - I - 0x00F47A 03:B46A: 02        .byte $02   ; 
- D 1 - I - 0x00F47B 03:B46B: 88        .byte $88   ; 
- D 1 - I - 0x00F47C 03:B46C: 01        .byte $01   ; 
- D 1 - I - 0x00F47D 03:B46D: 4A        .byte $4A   ; 
- D 1 - I - 0x00F47E 03:B46E: 03        .byte $03   ; 
- D 1 - I - 0x00F47F 03:B46F: 05        .byte $05   ; 
- D 1 - I - 0x00F480 03:B470: 00        .byte $00   ; 
- D 1 - I - 0x00F481 03:B471: BB        .byte $BB   ; 
- D 1 - I - 0x00F482 03:B472: 03        .byte $03   ; 
- D 1 - I - 0x00F483 03:B473: 58        .byte $58   ; 
- D 1 - I - 0x00F484 03:B474: 01        .byte $01   ; 
- D 1 - I - 0x00F485 03:B475: 40        .byte $40   ; 
- D 1 - I - 0x00F486 03:B476: 02        .byte $02   ; 
- D 1 - I - 0x00F487 03:B477: 7C        .byte $7C   ; 
- D 1 - I - 0x00F488 03:B478: 00        .byte $00   ; 
- D 1 - I - 0x00F489 03:B479: F3        .byte $F3   ; 



off_B47A_27:
- D 1 - I - 0x00F48A 03:B47A: 02        .byte $02   ; 
- D 1 - I - 0x00F48B 03:B47B: CB        .byte $CB   ; 
- D 1 - I - 0x00F48C 03:B47C: 01        .byte $01   ; 
- D 1 - I - 0x00F48D 03:B47D: 4A        .byte $4A   ; 
- D 1 - I - 0x00F48E 03:B47E: 03        .byte $03   ; 
- D 1 - I - 0x00F48F 03:B47F: 2B        .byte $2B   ; 
- D 1 - I - 0x00F490 03:B480: 00        .byte $00   ; 
- D 1 - I - 0x00F491 03:B481: BB        .byte $BB   ; 
- D 1 - I - 0x00F492 03:B482: 03        .byte $03   ; 
- D 1 - I - 0x00F493 03:B483: 6E        .byte $6E   ; 
- D 1 - I - 0x00F494 03:B484: 01        .byte $01   ; 
- D 1 - I - 0x00F495 03:B485: 49        .byte $49   ; 
- D 1 - I - 0x00F496 03:B486: 02        .byte $02   ; 
- D 1 - I - 0x00F497 03:B487: C9        .byte $C9   ; 
- D 1 - I - 0x00F498 03:B488: 00        .byte $00   ; 
- D 1 - I - 0x00F499 03:B489: E4        .byte $E4   ; 



off_B48A_28:
- D 1 - I - 0x00F49A 03:B48A: 02        .byte $02   ; 
- D 1 - I - 0x00F49B 03:B48B: EC        .byte $EC   ; 
- D 1 - I - 0x00F49C 03:B48C: 01        .byte $01   ; 
- D 1 - I - 0x00F49D 03:B48D: 3F        .byte $3F   ; 
- D 1 - I - 0x00F49E 03:B48E: 03        .byte $03   ; 
- D 1 - I - 0x00F49F 03:B48F: 36        .byte $36   ; 
- D 1 - I - 0x00F4A0 03:B490: 00        .byte $00   ; 
- D 1 - I - 0x00F4A1 03:B491: AC        .byte $AC   ; 
- D 1 - I - 0x00F4A2 03:B492: 03        .byte $03   ; 
- D 1 - I - 0x00F4A3 03:B493: 6C        .byte $6C   ; 
- D 1 - I - 0x00F4A4 03:B494: 01        .byte $01   ; 
- D 1 - I - 0x00F4A5 03:B495: 43        .byte $43   ; 
- - - - - - 0x00F4A6 03:B496: 02        .byte $02   ; 
- - - - - - 0x00F4A7 03:B497: FF        .byte $FF   ; 
- - - - - - 0x00F4A8 03:B498: 00        .byte $00   ; 
- - - - - - 0x00F4A9 03:B499: CD        .byte $CD   ; 



off_B49A_29:
- D 1 - I - 0x00F4AA 03:B49A: 02        .byte $02   ; 
- D 1 - I - 0x00F4AB 03:B49B: E3        .byte $E3   ; 
- D 1 - I - 0x00F4AC 03:B49C: 01        .byte $01   ; 
- D 1 - I - 0x00F4AD 03:B49D: 36        .byte $36   ; 
- D 1 - I - 0x00F4AE 03:B49E: 03        .byte $03   ; 
- D 1 - I - 0x00F4AF 03:B49F: 3A        .byte $3A   ; 
- D 1 - I - 0x00F4B0 03:B4A0: 00        .byte $00   ; 
- D 1 - I - 0x00F4B1 03:B4A1: AF        .byte $AF   ; 
- - - - - - 0x00F4B2 03:B4A2: 03        .byte $03   ; 
- - - - - - 0x00F4B3 03:B4A3: 6C        .byte $6C   ; 
- - - - - - 0x00F4B4 03:B4A4: 01        .byte $01   ; 
- - - - - - 0x00F4B5 03:B4A5: 55        .byte $55   ; 
- - - - - - 0x00F4B6 03:B4A6: 03        .byte $03   ; 
- - - - - - 0x00F4B7 03:B4A7: 18        .byte $18   ; 
- - - - - - 0x00F4B8 03:B4A8: 00        .byte $00   ; 
- - - - - - 0x00F4B9 03:B4A9: D9        .byte $D9   ; 



off_B4AA_2A:
off_B4AA_30:
- D 1 - I - 0x00F4BA 03:B4AA: 01        .byte $01   ; 
- D 1 - I - 0x00F4BB 03:B4AB: F5        .byte $F5   ; 
- D 1 - I - 0x00F4BC 03:B4AC: 01        .byte $01   ; 
- D 1 - I - 0x00F4BD 03:B4AD: 59        .byte $59   ; 
- D 1 - I - 0x00F4BE 03:B4AE: 02        .byte $02   ; 
- D 1 - I - 0x00F4BF 03:B4AF: 6D        .byte $6D   ; 
- D 1 - I - 0x00F4C0 03:B4B0: 00        .byte $00   ; 
- D 1 - I - 0x00F4C1 03:B4B1: DF        .byte $DF   ; 
- D 1 - I - 0x00F4C2 03:B4B2: 02        .byte $02   ; 
- D 1 - I - 0x00F4C3 03:B4B3: CB        .byte $CB   ; 
- D 1 - I - 0x00F4C4 03:B4B4: 01        .byte $01   ; 
- D 1 - I - 0x00F4C5 03:B4B5: 57        .byte $57   ; 
- D 1 - I - 0x00F4C6 03:B4B6: 02        .byte $02   ; 
- D 1 - I - 0x00F4C7 03:B4B7: 01        .byte $01   ; 
- D 1 - I - 0x00F4C8 03:B4B8: 00        .byte $00   ; 
- D 1 - I - 0x00F4C9 03:B4B9: FC        .byte $FC   ; 



off_B4BA_2B:
off_B4BA_31:
- D 1 - I - 0x00F4CA 03:B4BA: 02        .byte $02   ; 
- D 1 - I - 0x00F4CB 03:B4BB: 3E        .byte $3E   ; 
- D 1 - I - 0x00F4CC 03:B4BC: 01        .byte $01   ; 
- D 1 - I - 0x00F4CD 03:B4BD: 59        .byte $59   ; 
- D 1 - I - 0x00F4CE 03:B4BE: 02        .byte $02   ; 
- D 1 - I - 0x00F4CF 03:B4BF: A8        .byte $A8   ; 
- D 1 - I - 0x00F4D0 03:B4C0: 00        .byte $00   ; 
- D 1 - I - 0x00F4D1 03:B4C1: D9        .byte $D9   ; 
- D 1 - I - 0x00F4D2 03:B4C2: 03        .byte $03   ; 
- D 1 - I - 0x00F4D3 03:B4C3: 11        .byte $11   ; 
- D 1 - I - 0x00F4D4 03:B4C4: 01        .byte $01   ; 
- D 1 - I - 0x00F4D5 03:B4C5: 57        .byte $57   ; 
- D 1 - I - 0x00F4D6 03:B4C6: 02        .byte $02   ; 
- D 1 - I - 0x00F4D7 03:B4C7: 3F        .byte $3F   ; 
- D 1 - I - 0x00F4D8 03:B4C8: 00        .byte $00   ; 
- D 1 - I - 0x00F4D9 03:B4C9: FC        .byte $FC   ; 



off_B4CA_2C:
off_B4CA_32:
- D 1 - I - 0x00F4DA 03:B4CA: 02        .byte $02   ; 
- D 1 - I - 0x00F4DB 03:B4CB: 82        .byte $82   ; 
- D 1 - I - 0x00F4DC 03:B4CC: 01        .byte $01   ; 
- D 1 - I - 0x00F4DD 03:B4CD: 59        .byte $59   ; 
- D 1 - I - 0x00F4DE 03:B4CE: 02        .byte $02   ; 
- D 1 - I - 0x00F4DF 03:B4CF: F4        .byte $F4   ; 
- D 1 - I - 0x00F4E0 03:B4D0: 00        .byte $00   ; 
- D 1 - I - 0x00F4E1 03:B4D1: D3        .byte $D3   ; 
- D 1 - I - 0x00F4E2 03:B4D2: 03        .byte $03   ; 
- D 1 - I - 0x00F4E3 03:B4D3: 54        .byte $54   ; 
- D 1 - I - 0x00F4E4 03:B4D4: 01        .byte $01   ; 
- D 1 - I - 0x00F4E5 03:B4D5: 4F        .byte $4F   ; 
- D 1 - I - 0x00F4E6 03:B4D6: 02        .byte $02   ; 
- D 1 - I - 0x00F4E7 03:B4D7: 8C        .byte $8C   ; 
- D 1 - I - 0x00F4E8 03:B4D8: 00        .byte $00   ; 
- D 1 - I - 0x00F4E9 03:B4D9: F1        .byte $F1   ; 



off_B4DA_2D:
off_B4DA_33:
- D 1 - I - 0x00F4EA 03:B4DA: 02        .byte $02   ; 
- D 1 - I - 0x00F4EB 03:B4DB: C0        .byte $C0   ; 
- D 1 - I - 0x00F4EC 03:B4DC: 01        .byte $01   ; 
- D 1 - I - 0x00F4ED 03:B4DD: 59        .byte $59   ; 
- D 1 - I - 0x00F4EE 03:B4DE: 03        .byte $03   ; 
- D 1 - I - 0x00F4EF 03:B4DF: 24        .byte $24   ; 
- D 1 - I - 0x00F4F0 03:B4E0: 00        .byte $00   ; 
- D 1 - I - 0x00F4F1 03:B4E1: CD        .byte $CD   ; 
- D 1 - I - 0x00F4F2 03:B4E2: 03        .byte $03   ; 
- D 1 - I - 0x00F4F3 03:B4E3: 65        .byte $65   ; 
- D 1 - I - 0x00F4F4 03:B4E4: 01        .byte $01   ; 
- D 1 - I - 0x00F4F5 03:B4E5: 43        .byte $43   ; 
- - - - - - 0x00F4F6 03:B4E6: 02        .byte $02   ; 
- - - - - - 0x00F4F7 03:B4E7: CD        .byte $CD   ; 
- - - - - - 0x00F4F8 03:B4E8: 00        .byte $00   ; 
- - - - - - 0x00F4F9 03:B4E9: EB        .byte $EB   ; 



off_B4EA_2E:
off_B4EA_34:
- D 1 - I - 0x00F4FA 03:B4EA: 02        .byte $02   ; 
- D 1 - I - 0x00F4FB 03:B4EB: DD        .byte $DD   ; 
- D 1 - I - 0x00F4FC 03:B4EC: 01        .byte $01   ; 
- D 1 - I - 0x00F4FD 03:B4ED: 56        .byte $56   ; 
- D 1 - I - 0x00F4FE 03:B4EE: 03        .byte $03   ; 
- D 1 - I - 0x00F4FF 03:B4EF: 49        .byte $49   ; 
- D 1 - I - 0x00F500 03:B4F0: 00        .byte $00   ; 
- D 1 - I - 0x00F501 03:B4F1: D5        .byte $D5   ; 
- D 1 - I - 0x00F502 03:B4F2: 03        .byte $03   ; 
- D 1 - I - 0x00F503 03:B4F3: 65        .byte $65   ; 
- D 1 - I - 0x00F504 03:B4F4: 00        .byte $00   ; 
- D 1 - I - 0x00F505 03:B4F5: 00        .byte $00   ; 
- - - - - - 0x00F506 03:B4F6: 02        .byte $02   ; 
- - - - - - 0x00F507 03:B4F7: E4        .byte $E4   ; 
- - - - - - 0x00F508 03:B4F8: 00        .byte $00   ; 
- - - - - - 0x00F509 03:B4F9: E5        .byte $E5   ; 



off_B4FA_2F:
off_B4FA_35:
- D 1 - I - 0x00F50A 03:B4FA: 02        .byte $02   ; 
- D 1 - I - 0x00F50B 03:B4FB: DD        .byte $DD   ; 
- D 1 - I - 0x00F50C 03:B4FC: 01        .byte $01   ; 
- D 1 - I - 0x00F50D 03:B4FD: 2C        .byte $2C   ; 
- D 1 - I - 0x00F50E 03:B4FE: 03        .byte $03   ; 
- D 1 - I - 0x00F50F 03:B4FF: 56        .byte $56   ; 
- D 1 - I - 0x00F510 03:B500: 00        .byte $00   ; 
- D 1 - I - 0x00F511 03:B501: AE        .byte $AE   ; 
- D 1 - I - 0x00F512 03:B502: 03        .byte $03   ; 
- D 1 - I - 0x00F513 03:B503: 3D        .byte $3D   ; 
- D 1 - I - 0x00F514 03:B504: 00        .byte $00   ; 
- D 1 - I - 0x00F515 03:B505: F4        .byte $F4   ; 
- D 1 - I - 0x00F516 03:B506: 03        .byte $03   ; 
- D 1 - I - 0x00F517 03:B507: 04        .byte $04   ; 
- D 1 - I - 0x00F518 03:B508: 00        .byte $00   ; 
- D 1 - I - 0x00F519 03:B509: D9        .byte $D9   ; 






off_B50A_02:
- - - - - - 0x00F51A 03:B50A: 76 B5     .word off_B576_00
- - - - - - 0x00F51C 03:B50C: 82 B5     .word off_B582_01
- - - - - - 0x00F51E 03:B50E: 8E B5     .word off_B58E_02
- - - - - - 0x00F520 03:B510: 9A B5     .word off_B59A_03
- - - - - - 0x00F522 03:B512: A6 B5     .word off_B5A6_04
- - - - - - 0x00F524 03:B514: B2 B5     .word off_B5B2_05
- D 1 - I - 0x00F526 03:B516: 76 B5     .word off_B576_06
- D 1 - I - 0x00F528 03:B518: 82 B5     .word off_B582_07
- - - - - - 0x00F52A 03:B51A: 8E B5     .word off_B58E_08
- - - - - - 0x00F52C 03:B51C: 9A B5     .word off_B59A_09
- - - - - - 0x00F52E 03:B51E: A6 B5     .word off_B5A6_0A
- - - - - - 0x00F530 03:B520: B2 B5     .word off_B5B2_0B
- D 1 - I - 0x00F532 03:B522: BE B5     .word off_B5BE_0C
- D 1 - I - 0x00F534 03:B524: CA B5     .word off_B5CA_0D
- D 1 - I - 0x00F536 03:B526: D6 B5     .word off_B5D6_0E
- - - - - - 0x00F538 03:B528: E2 B5     .word off_B5E2_0F
- - - - - - 0x00F53A 03:B52A: EE B5     .word off_B5EE_10
- - - - - - 0x00F53C 03:B52C: FA B5     .word off_B5FA_11
- D 1 - I - 0x00F53E 03:B52E: 06 B6     .word off_B606_12
- D 1 - I - 0x00F540 03:B530: 12 B6     .word off_B612_13
- D 1 - I - 0x00F542 03:B532: 1E B6     .word off_B61E_14
- - - - - - 0x00F544 03:B534: 2A B6     .word off_B62A_15
- - - - - - 0x00F546 03:B536: 36 B6     .word off_B636_16
- - - - - - 0x00F548 03:B538: 42 B6     .word off_B642_17
- D 1 - I - 0x00F54A 03:B53A: 4E B6     .word off_B64E_18
- D 1 - I - 0x00F54C 03:B53C: 5A B6     .word off_B65A_19
- D 1 - I - 0x00F54E 03:B53E: 66 B6     .word off_B666_1A
- - - - - - 0x00F550 03:B540: 72 B6     .word off_B672_1B
- D 1 - I - 0x00F552 03:B542: 7E B6     .word off_B67E_1C
- - - - - - 0x00F554 03:B544: 8A B6     .word off_B68A_1D
- D 1 - I - 0x00F556 03:B546: 96 B6     .word off_B696_1E
- D 1 - I - 0x00F558 03:B548: A2 B6     .word off_B6A2_1F
- D 1 - I - 0x00F55A 03:B54A: AE B6     .word off_B6AE_20
- D 1 - I - 0x00F55C 03:B54C: BA B6     .word off_B6BA_21
- - - - - - 0x00F55E 03:B54E: C6 B6     .word off_B6C6_22
- - - - - - 0x00F560 03:B550: D2 B6     .word off_B6D2_23
- D 1 - I - 0x00F562 03:B552: DE B6     .word off_B6DE_24
- D 1 - I - 0x00F564 03:B554: EA B6     .word off_B6EA_25
- D 1 - I - 0x00F566 03:B556: F6 B6     .word off_B6F6_26
- - - - - - 0x00F568 03:B558: 02 B7     .word off_B702_27
- D 1 - I - 0x00F56A 03:B55A: 0E B7     .word off_B70E_28
- - - - - - 0x00F56C 03:B55C: 1A B7     .word off_B71A_29
- D 1 - I - 0x00F56E 03:B55E: 26 B7     .word off_B726_2A
- D 1 - I - 0x00F570 03:B560: 32 B7     .word off_B732_2B
- D 1 - I - 0x00F572 03:B562: 3E B7     .word off_B73E_2C
- - - - - - 0x00F574 03:B564: 4A B7     .word off_B74A_2D
- - - - - - 0x00F576 03:B566: 56 B7     .word off_B756_2E
- - - - - - 0x00F578 03:B568: 62 B7     .word off_B762_2F
- - - - - - 0x00F57A 03:B56A: 26 B7     .word off_B726_30
- - - - - - 0x00F57C 03:B56C: 32 B7     .word off_B732_31
- D 1 - I - 0x00F57E 03:B56E: 3E B7     .word off_B73E_32
- D 1 - I - 0x00F580 03:B570: 4A B7     .word off_B74A_33
- - - - - - 0x00F582 03:B572: 56 B7     .word off_B756_34
- - - - - - 0x00F584 03:B574: 62 B7     .word off_B762_35



off_B576_00:
off_B576_06:
- D 1 - I - 0x00F586 03:B576: 02        .byte $02   ; 
- D 1 - I - 0x00F587 03:B577: 35        .byte $35   ; 
- D 1 - I - 0x00F588 03:B578: 00        .byte $00   ; 
- D 1 - I - 0x00F589 03:B579: 8F        .byte $8F   ; 
- D 1 - I - 0x00F58A 03:B57A: 02        .byte $02   ; 
- D 1 - I - 0x00F58B 03:B57B: 04        .byte $04   ; 
- D 1 - I - 0x00F58C 03:B57C: 00        .byte $00   ; 
- D 1 - I - 0x00F58D 03:B57D: C0        .byte $C0   ; 
- D 1 - I - 0x00F58E 03:B57E: 02        .byte $02   ; 
- D 1 - I - 0x00F58F 03:B57F: 00        .byte $00   ; 
- D 1 - I - 0x00F590 03:B580: 00        .byte $00   ; 
- D 1 - I - 0x00F591 03:B581: 5C        .byte $5C   ; 



off_B582_01:
off_B582_07:
- - - - - - 0x00F592 03:B582: 02        .byte $02   ; 
- - - - - - 0x00F593 03:B583: 08        .byte $08   ; 
- - - - - - 0x00F594 03:B584: 00        .byte $00   ; 
- - - - - - 0x00F595 03:B585: C2        .byte $C2   ; 
- D 1 - I - 0x00F596 03:B586: 02        .byte $02   ; 
- D 1 - I - 0x00F597 03:B587: 4F        .byte $4F   ; 
- D 1 - I - 0x00F598 03:B588: 00        .byte $00   ; 
- D 1 - I - 0x00F599 03:B589: 85        .byte $85   ; 
- - - - - - 0x00F59A 03:B58A: 01        .byte $01   ; 
- - - - - - 0x00F59B 03:B58B: F8        .byte $F8   ; 
- - - - - - 0x00F59C 03:B58C: 00        .byte $00   ; 
- - - - - - 0x00F59D 03:B58D: 76        .byte $76   ; 



off_B58E_02:
off_B58E_08:
- - - - - - 0x00F59E 03:B58E: 02        .byte $02   ; 
- - - - - - 0x00F59F 03:B58F: 5E        .byte $5E   ; 
- - - - - - 0x00F5A0 03:B590: 00        .byte $00   ; 
- - - - - - 0x00F5A1 03:B591: C2        .byte $C2   ; 
- - - - - - 0x00F5A2 03:B592: 02        .byte $02   ; 
- - - - - - 0x00F5A3 03:B593: A3        .byte $A3   ; 
- - - - - - 0x00F5A4 03:B594: 00        .byte $00   ; 
- - - - - - 0x00F5A5 03:B595: 86        .byte $86   ; 
- - - - - - 0x00F5A6 03:B596: 02        .byte $02   ; 
- - - - - - 0x00F5A7 03:B597: 2F        .byte $2F   ; 
- - - - - - 0x00F5A8 03:B598: 00        .byte $00   ; 
- - - - - - 0x00F5A9 03:B599: 76        .byte $76   ; 



off_B59A_03:
off_B59A_09:
- - - - - - 0x00F5AA 03:B59A: 02        .byte $02   ; 
- - - - - - 0x00F5AB 03:B59B: B4        .byte $B4   ; 
- - - - - - 0x00F5AC 03:B59C: 00        .byte $00   ; 
- - - - - - 0x00F5AD 03:B59D: B6        .byte $B6   ; 
- - - - - - 0x00F5AE 03:B59E: 03        .byte $03   ; 
- - - - - - 0x00F5AF 03:B59F: 0C        .byte $0C   ; 
- - - - - - 0x00F5B0 03:B5A0: 00        .byte $00   ; 
- - - - - - 0x00F5B1 03:B5A1: A5        .byte $A5   ; 
- - - - - - 0x00F5B2 03:B5A2: 02        .byte $02   ; 
- - - - - - 0x00F5B3 03:B5A3: AF        .byte $AF   ; 
- - - - - - 0x00F5B4 03:B5A4: 00        .byte $00   ; 
- - - - - - 0x00F5B5 03:B5A5: 76        .byte $76   ; 



off_B5A6_04:
off_B5A6_0A:
- - - - - - 0x00F5B6 03:B5A6: 02        .byte $02   ; 
- - - - - - 0x00F5B7 03:B5A7: D9        .byte $D9   ; 
- - - - - - 0x00F5B8 03:B5A8: 00        .byte $00   ; 
- - - - - - 0x00F5B9 03:B5A9: B6        .byte $B6   ; 
- - - - - - 0x00F5BA 03:B5AA: 03        .byte $03   ; 
- - - - - - 0x00F5BB 03:B5AB: 38        .byte $38   ; 
- - - - - - 0x00F5BC 03:B5AC: 00        .byte $00   ; 
- - - - - - 0x00F5BD 03:B5AD: 92        .byte $92   ; 
- - - - - - 0x00F5BE 03:B5AE: 02        .byte $02   ; 
- - - - - - 0x00F5BF 03:B5AF: DE        .byte $DE   ; 
- - - - - - 0x00F5C0 03:B5B0: 00        .byte $00   ; 
- - - - - - 0x00F5C1 03:B5B1: 80        .byte $80   ; 



off_B5B2_05:
off_B5B2_0B:
- - - - - - 0x00F5C2 03:B5B2: 02        .byte $02   ; 
- - - - - - 0x00F5C3 03:B5B3: DC        .byte $DC   ; 
- - - - - - 0x00F5C4 03:B5B4: 00        .byte $00   ; 
- - - - - - 0x00F5C5 03:B5B5: B6        .byte $B6   ; 
- - - - - - 0x00F5C6 03:B5B6: 03        .byte $03   ; 
- - - - - - 0x00F5C7 03:B5B7: 40        .byte $40   ; 
- - - - - - 0x00F5C8 03:B5B8: 00        .byte $00   ; 
- - - - - - 0x00F5C9 03:B5B9: C5        .byte $C5   ; 
- - - - - - 0x00F5CA 03:B5BA: 03        .byte $03   ; 
- - - - - - 0x00F5CB 03:B5BB: 12        .byte $12   ; 
- - - - - - 0x00F5CC 03:B5BC: 00        .byte $00   ; 
- - - - - - 0x00F5CD 03:B5BD: 75        .byte $75   ; 



off_B5BE_0C:
- D 1 - I - 0x00F5CE 03:B5BE: 01        .byte $01   ; 
- D 1 - I - 0x00F5CF 03:B5BF: F0        .byte $F0   ; 
- D 1 - I - 0x00F5D0 03:B5C0: 00        .byte $00   ; 
- D 1 - I - 0x00F5D1 03:B5C1: CD        .byte $CD   ; 
- D 1 - I - 0x00F5D2 03:B5C2: 02        .byte $02   ; 
- D 1 - I - 0x00F5D3 03:B5C3: 8E        .byte $8E   ; 
- D 1 - I - 0x00F5D4 03:B5C4: 00        .byte $00   ; 
- D 1 - I - 0x00F5D5 03:B5C5: AA        .byte $AA   ; 
- D 1 - I - 0x00F5D6 03:B5C6: 01        .byte $01   ; 
- D 1 - I - 0x00F5D7 03:B5C7: E9        .byte $E9   ; 
- D 1 - I - 0x00F5D8 03:B5C8: 00        .byte $00   ; 
- D 1 - I - 0x00F5D9 03:B5C9: 65        .byte $65   ; 



off_B5CA_0D:
- D 1 - I - 0x00F5DA 03:B5CA: 02        .byte $02   ; 
- D 1 - I - 0x00F5DB 03:B5CB: 2A        .byte $2A   ; 
- D 1 - I - 0x00F5DC 03:B5CC: 00        .byte $00   ; 
- D 1 - I - 0x00F5DD 03:B5CD: CD        .byte $CD   ; 
- D 1 - I - 0x00F5DE 03:B5CE: 02        .byte $02   ; 
- D 1 - I - 0x00F5DF 03:B5CF: C6        .byte $C6   ; 
- D 1 - I - 0x00F5E0 03:B5D0: 00        .byte $00   ; 
- D 1 - I - 0x00F5E1 03:B5D1: AA        .byte $AA   ; 
- D 1 - I - 0x00F5E2 03:B5D2: 02        .byte $02   ; 
- D 1 - I - 0x00F5E3 03:B5D3: 28        .byte $28   ; 
- D 1 - I - 0x00F5E4 03:B5D4: 00        .byte $00   ; 
- D 1 - I - 0x00F5E5 03:B5D5: 62        .byte $62   ; 



off_B5D6_0E:
- - - - - - 0x00F5E6 03:B5D6: 02        .byte $02   ; 
- - - - - - 0x00F5E7 03:B5D7: 74        .byte $74   ; 
- - - - - - 0x00F5E8 03:B5D8: 00        .byte $00   ; 
- - - - - - 0x00F5E9 03:B5D9: CD        .byte $CD   ; 
- D 1 - I - 0x00F5EA 03:B5DA: 03        .byte $03   ; 
- D 1 - I - 0x00F5EB 03:B5DB: 1E        .byte $1E   ; 
- D 1 - I - 0x00F5EC 03:B5DC: 00        .byte $00   ; 
- D 1 - I - 0x00F5ED 03:B5DD: AA        .byte $AA   ; 
- D 1 - I - 0x00F5EE 03:B5DE: 02        .byte $02   ; 
- D 1 - I - 0x00F5EF 03:B5DF: 77        .byte $77   ; 
- D 1 - I - 0x00F5F0 03:B5E0: 00        .byte $00   ; 
- D 1 - I - 0x00F5F1 03:B5E1: 62        .byte $62   ; 



off_B5E2_0F:
- - - - - - 0x00F5F2 03:B5E2: 02        .byte $02   ; 
- - - - - - 0x00F5F3 03:B5E3: B5        .byte $B5   ; 
- - - - - - 0x00F5F4 03:B5E4: 00        .byte $00   ; 
- - - - - - 0x00F5F5 03:B5E5: CD        .byte $CD   ; 
- - - - - - 0x00F5F6 03:B5E6: 03        .byte $03   ; 
- - - - - - 0x00F5F7 03:B5E7: 3B        .byte $3B   ; 
- - - - - - 0x00F5F8 03:B5E8: 00        .byte $00   ; 
- - - - - - 0x00F5F9 03:B5E9: D3        .byte $D3   ; 
- - - - - - 0x00F5FA 03:B5EA: 02        .byte $02   ; 
- - - - - - 0x00F5FB 03:B5EB: B1        .byte $B1   ; 
- - - - - - 0x00F5FC 03:B5EC: 00        .byte $00   ; 
- - - - - - 0x00F5FD 03:B5ED: 59        .byte $59   ; 



off_B5EE_10:
- - - - - - 0x00F5FE 03:B5EE: 02        .byte $02   ; 
- - - - - - 0x00F5FF 03:B5EF: DA        .byte $DA   ; 
- - - - - - 0x00F600 03:B5F0: 00        .byte $00   ; 
- - - - - - 0x00F601 03:B5F1: CD        .byte $CD   ; 
- - - - - - 0x00F602 03:B5F2: 03        .byte $03   ; 
- - - - - - 0x00F603 03:B5F3: 41        .byte $41   ; 
- - - - - - 0x00F604 03:B5F4: 00        .byte $00   ; 
- - - - - - 0x00F605 03:B5F5: E6        .byte $E6   ; 
- - - - - - 0x00F606 03:B5F6: 02        .byte $02   ; 
- - - - - - 0x00F607 03:B5F7: D8        .byte $D8   ; 
- - - - - - 0x00F608 03:B5F8: 00        .byte $00   ; 
- - - - - - 0x00F609 03:B5F9: 59        .byte $59   ; 



off_B5FA_11:
- - - - - - 0x00F60A 03:B5FA: 02        .byte $02   ; 
- - - - - - 0x00F60B 03:B5FB: F5        .byte $F5   ; 
- - - - - - 0x00F60C 03:B5FC: 00        .byte $00   ; 
- - - - - - 0x00F60D 03:B5FD: B6        .byte $B6   ; 
- - - - - - 0x00F60E 03:B5FE: 03        .byte $03   ; 
- - - - - - 0x00F60F 03:B5FF: 60        .byte $60   ; 
- - - - - - 0x00F610 03:B600: 00        .byte $00   ; 
- - - - - - 0x00F611 03:B601: FD        .byte $FD   ; 
- - - - - - 0x00F612 03:B602: 02        .byte $02   ; 
- - - - - - 0x00F613 03:B603: FA        .byte $FA   ; 
- - - - - - 0x00F614 03:B604: 00        .byte $00   ; 
- - - - - - 0x00F615 03:B605: 45        .byte $45   ; 



off_B606_12:
- D 1 - I - 0x00F616 03:B606: 02        .byte $02   ; 
- D 1 - I - 0x00F617 03:B607: 01        .byte $01   ; 
- D 1 - I - 0x00F618 03:B608: 00        .byte $00   ; 
- D 1 - I - 0x00F619 03:B609: E8        .byte $E8   ; 
- D 1 - I - 0x00F61A 03:B60A: 02        .byte $02   ; 
- D 1 - I - 0x00F61B 03:B60B: AC        .byte $AC   ; 
- D 1 - I - 0x00F61C 03:B60C: 00        .byte $00   ; 
- D 1 - I - 0x00F61D 03:B60D: C2        .byte $C2   ; 
- D 1 - I - 0x00F61E 03:B60E: 02        .byte $02   ; 
- D 1 - I - 0x00F61F 03:B60F: 12        .byte $12   ; 
- D 1 - I - 0x00F620 03:B610: 00        .byte $00   ; 
- D 1 - I - 0x00F621 03:B611: 45        .byte $45   ; 



off_B612_13:
- D 1 - I - 0x00F622 03:B612: 02        .byte $02   ; 
- D 1 - I - 0x00F623 03:B613: 30        .byte $30   ; 
- D 1 - I - 0x00F624 03:B614: 00        .byte $00   ; 
- D 1 - I - 0x00F625 03:B615: E8        .byte $E8   ; 
- D 1 - I - 0x00F626 03:B616: 02        .byte $02   ; 
- D 1 - I - 0x00F627 03:B617: ED        .byte $ED   ; 
- D 1 - I - 0x00F628 03:B618: 00        .byte $00   ; 
- D 1 - I - 0x00F629 03:B619: C2        .byte $C2   ; 
- D 1 - I - 0x00F62A 03:B61A: 02        .byte $02   ; 
- D 1 - I - 0x00F62B 03:B61B: 53        .byte $53   ; 
- D 1 - I - 0x00F62C 03:B61C: 00        .byte $00   ; 
- D 1 - I - 0x00F62D 03:B61D: 45        .byte $45   ; 



off_B61E_14:
- - - - - - 0x00F62E 03:B61E: 02        .byte $02   ; 
- - - - - - 0x00F62F 03:B61F: 73        .byte $73   ; 
- - - - - - 0x00F630 03:B620: 00        .byte $00   ; 
- - - - - - 0x00F631 03:B621: E8        .byte $E8   ; 
- D 1 - I - 0x00F632 03:B622: 03        .byte $03   ; 
- D 1 - I - 0x00F633 03:B623: 2C        .byte $2C   ; 
- D 1 - I - 0x00F634 03:B624: 00        .byte $00   ; 
- D 1 - I - 0x00F635 03:B625: C2        .byte $C2   ; 
- D 1 - I - 0x00F636 03:B626: 02        .byte $02   ; 
- D 1 - I - 0x00F637 03:B627: 8D        .byte $8D   ; 
- D 1 - I - 0x00F638 03:B628: 00        .byte $00   ; 
- D 1 - I - 0x00F639 03:B629: 45        .byte $45   ; 



off_B62A_15:
- - - - - - 0x00F63A 03:B62A: 02        .byte $02   ; 
- - - - - - 0x00F63B 03:B62B: C2        .byte $C2   ; 
- - - - - - 0x00F63C 03:B62C: 00        .byte $00   ; 
- - - - - - 0x00F63D 03:B62D: E8        .byte $E8   ; 
- - - - - - 0x00F63E 03:B62E: 03        .byte $03   ; 
- - - - - - 0x00F63F 03:B62F: 3D        .byte $3D   ; 
- - - - - - 0x00F640 03:B630: 00        .byte $00   ; 
- - - - - - 0x00F641 03:B631: E7        .byte $E7   ; 
- - - - - - 0x00F642 03:B632: 02        .byte $02   ; 
- - - - - - 0x00F643 03:B633: EF        .byte $EF   ; 
- - - - - - 0x00F644 03:B634: 00        .byte $00   ; 
- - - - - - 0x00F645 03:B635: 41        .byte $41   ; 



off_B636_16:
- - - - - - 0x00F646 03:B636: 02        .byte $02   ; 
- - - - - - 0x00F647 03:B637: E0        .byte $E0   ; 
- - - - - - 0x00F648 03:B638: 00        .byte $00   ; 
- - - - - - 0x00F649 03:B639: E8        .byte $E8   ; 
- - - - - - 0x00F64A 03:B63A: 03        .byte $03   ; 
- - - - - - 0x00F64B 03:B63B: 34        .byte $34   ; 
- - - - - - 0x00F64C 03:B63C: 00        .byte $00   ; 
- - - - - - 0x00F64D 03:B63D: F7        .byte $F7   ; 
- - - - - - 0x00F64E 03:B63E: 02        .byte $02   ; 
- - - - - - 0x00F64F 03:B63F: F1        .byte $F1   ; 
- - - - - - 0x00F650 03:B640: 00        .byte $00   ; 
- - - - - - 0x00F651 03:B641: 41        .byte $41   ; 



off_B642_17:
- - - - - - 0x00F652 03:B642: 02        .byte $02   ; 
- - - - - - 0x00F653 03:B643: E0        .byte $E0   ; 
- - - - - - 0x00F654 03:B644: 00        .byte $00   ; 
- - - - - - 0x00F655 03:B645: E8        .byte $E8   ; 
- - - - - - 0x00F656 03:B646: 03        .byte $03   ; 
- - - - - - 0x00F657 03:B647: 44        .byte $44   ; 
- - - - - - 0x00F658 03:B648: 01        .byte $01   ; 
- - - - - - 0x00F659 03:B649: 01        .byte $01   ; 
- - - - - - 0x00F65A 03:B64A: 02        .byte $02   ; 
- - - - - - 0x00F65B 03:B64B: F1        .byte $F1   ; 
- - - - - - 0x00F65C 03:B64C: 00        .byte $00   ; 
- - - - - - 0x00F65D 03:B64D: 41        .byte $41   ; 



off_B64E_18:
- D 1 - I - 0x00F65E 03:B64E: 01        .byte $01   ; 
- D 1 - I - 0x00F65F 03:B64F: F2        .byte $F2   ; 
- D 1 - I - 0x00F660 03:B650: 01        .byte $01   ; 
- D 1 - I - 0x00F661 03:B651: 00        .byte $00   ; 
- D 1 - I - 0x00F662 03:B652: 02        .byte $02   ; 
- D 1 - I - 0x00F663 03:B653: 56        .byte $56   ; 
- D 1 - I - 0x00F664 03:B654: 00        .byte $00   ; 
- D 1 - I - 0x00F665 03:B655: F0        .byte $F0   ; 
- D 1 - I - 0x00F666 03:B656: 01        .byte $01   ; 
- D 1 - I - 0x00F667 03:B657: F1        .byte $F1   ; 
- D 1 - I - 0x00F668 03:B658: 00        .byte $00   ; 
- D 1 - I - 0x00F669 03:B659: 7C        .byte $7C   ; 



off_B65A_19:
- D 1 - I - 0x00F66A 03:B65A: 02        .byte $02   ; 
- D 1 - I - 0x00F66B 03:B65B: 30        .byte $30   ; 
- D 1 - I - 0x00F66C 03:B65C: 01        .byte $01   ; 
- D 1 - I - 0x00F66D 03:B65D: 00        .byte $00   ; 
- D 1 - I - 0x00F66E 03:B65E: 02        .byte $02   ; 
- D 1 - I - 0x00F66F 03:B65F: 95        .byte $95   ; 
- D 1 - I - 0x00F670 03:B660: 00        .byte $00   ; 
- D 1 - I - 0x00F671 03:B661: 95        .byte $95   ; 
- D 1 - I - 0x00F672 03:B662: 02        .byte $02   ; 
- D 1 - I - 0x00F673 03:B663: 2E        .byte $2E   ; 
- D 1 - I - 0x00F674 03:B664: 00        .byte $00   ; 
- D 1 - I - 0x00F675 03:B665: 77        .byte $77   ; 



off_B666_1A:
- D 1 - I - 0x00F676 03:B666: 02        .byte $02   ; 
- D 1 - I - 0x00F677 03:B667: 6C        .byte $6C   ; 
- D 1 - I - 0x00F678 03:B668: 01        .byte $01   ; 
- D 1 - I - 0x00F679 03:B669: 00        .byte $00   ; 
- D 1 - I - 0x00F67A 03:B66A: 02        .byte $02   ; 
- D 1 - I - 0x00F67B 03:B66B: F8        .byte $F8   ; 
- D 1 - I - 0x00F67C 03:B66C: 00        .byte $00   ; 
- D 1 - I - 0x00F67D 03:B66D: EA        .byte $EA   ; 
- D 1 - I - 0x00F67E 03:B66E: 02        .byte $02   ; 
- D 1 - I - 0x00F67F 03:B66F: 6A        .byte $6A   ; 
- D 1 - I - 0x00F680 03:B670: 00        .byte $00   ; 
- D 1 - I - 0x00F681 03:B671: 77        .byte $77   ; 



off_B672_1B:
- - - - - - 0x00F682 03:B672: 02        .byte $02   ; 
- - - - - - 0x00F683 03:B673: B6        .byte $B6   ; 
- - - - - - 0x00F684 03:B674: 01        .byte $01   ; 
- - - - - - 0x00F685 03:B675: 00        .byte $00   ; 
- - - - - - 0x00F686 03:B676: 03        .byte $03   ; 
- - - - - - 0x00F687 03:B677: 2B        .byte $2B   ; 
- - - - - - 0x00F688 03:B678: 00        .byte $00   ; 
- - - - - - 0x00F689 03:B679: 9B        .byte $9B   ; 
- - - - - - 0x00F68A 03:B67A: 02        .byte $02   ; 
- - - - - - 0x00F68B 03:B67B: B9        .byte $B9   ; 
- - - - - - 0x00F68C 03:B67C: 00        .byte $00   ; 
- - - - - - 0x00F68D 03:B67D: 77        .byte $77   ; 



off_B67E_1C:
- - - - - - 0x00F68E 03:B67E: 02        .byte $02   ; 
- - - - - - 0x00F68F 03:B67F: EA        .byte $EA   ; 
- - - - - - 0x00F690 03:B680: 01        .byte $01   ; 
- - - - - - 0x00F691 03:B681: 00        .byte $00   ; 
- D 1 - I - 0x00F692 03:B682: 03        .byte $03   ; 
- D 1 - I - 0x00F693 03:B683: 31        .byte $31   ; 
- D 1 - I - 0x00F694 03:B684: 00        .byte $00   ; 
- D 1 - I - 0x00F695 03:B685: ED        .byte $ED   ; 
- D 1 - I - 0x00F696 03:B686: 02        .byte $02   ; 
- D 1 - I - 0x00F697 03:B687: DE        .byte $DE   ; 
- D 1 - I - 0x00F698 03:B688: 00        .byte $00   ; 
- D 1 - I - 0x00F699 03:B689: 77        .byte $77   ; 



off_B68A_1D:
- - - - - - 0x00F69A 03:B68A: 02        .byte $02   ; 
- - - - - - 0x00F69B 03:B68B: E8        .byte $E8   ; 
- - - - - - 0x00F69C 03:B68C: 01        .byte $01   ; 
- - - - - - 0x00F69D 03:B68D: 00        .byte $00   ; 
- - - - - - 0x00F69E 03:B68E: 03        .byte $03   ; 
- - - - - - 0x00F69F 03:B68F: 2B        .byte $2B   ; 
- - - - - - 0x00F6A0 03:B690: 00        .byte $00   ; 
- - - - - - 0x00F6A1 03:B691: 9D        .byte $9D   ; 
- - - - - - 0x00F6A2 03:B692: 02        .byte $02   ; 
- - - - - - 0x00F6A3 03:B693: DE        .byte $DE   ; 
- - - - - - 0x00F6A4 03:B694: 00        .byte $00   ; 
- - - - - - 0x00F6A5 03:B695: 77        .byte $77   ; 



off_B696_1E:
- D 1 - I - 0x00F6A6 03:B696: 01        .byte $01   ; 
- D 1 - I - 0x00F6A7 03:B697: E6        .byte $E6   ; 
- D 1 - I - 0x00F6A8 03:B698: 01        .byte $01   ; 
- D 1 - I - 0x00F6A9 03:B699: 1A        .byte $1A   ; 
- D 1 - I - 0x00F6AA 03:B69A: 02        .byte $02   ; 
- D 1 - I - 0x00F6AB 03:B69B: 6B        .byte $6B   ; 
- D 1 - I - 0x00F6AC 03:B69C: 00        .byte $00   ; 
- D 1 - I - 0x00F6AD 03:B69D: C3        .byte $C3   ; 
- D 1 - I - 0x00F6AE 03:B69E: 01        .byte $01   ; 
- D 1 - I - 0x00F6AF 03:B69F: EB        .byte $EB   ; 
- D 1 - I - 0x00F6B0 03:B6A0: 00        .byte $00   ; 
- D 1 - I - 0x00F6B1 03:B6A1: A4        .byte $A4   ; 



off_B6A2_1F:
- D 1 - I - 0x00F6B2 03:B6A2: 02        .byte $02   ; 
- D 1 - I - 0x00F6B3 03:B6A3: 2D        .byte $2D   ; 
- D 1 - I - 0x00F6B4 03:B6A4: 01        .byte $01   ; 
- D 1 - I - 0x00F6B5 03:B6A5: 1A        .byte $1A   ; 
- D 1 - I - 0x00F6B6 03:B6A6: 02        .byte $02   ; 
- D 1 - I - 0x00F6B7 03:B6A7: B3        .byte $B3   ; 
- D 1 - I - 0x00F6B8 03:B6A8: 00        .byte $00   ; 
- D 1 - I - 0x00F6B9 03:B6A9: C3        .byte $C3   ; 
- D 1 - I - 0x00F6BA 03:B6AA: 02        .byte $02   ; 
- D 1 - I - 0x00F6BB 03:B6AB: 2E        .byte $2E   ; 
- D 1 - I - 0x00F6BC 03:B6AC: 00        .byte $00   ; 
- D 1 - I - 0x00F6BD 03:B6AD: A4        .byte $A4   ; 



off_B6AE_20:
- D 1 - I - 0x00F6BE 03:B6AE: 02        .byte $02   ; 
- D 1 - I - 0x00F6BF 03:B6AF: 78        .byte $78   ; 
- D 1 - I - 0x00F6C0 03:B6B0: 01        .byte $01   ; 
- D 1 - I - 0x00F6C1 03:B6B1: 1A        .byte $1A   ; 
- D 1 - I - 0x00F6C2 03:B6B2: 03        .byte $03   ; 
- D 1 - I - 0x00F6C3 03:B6B3: 19        .byte $19   ; 
- D 1 - I - 0x00F6C4 03:B6B4: 00        .byte $00   ; 
- D 1 - I - 0x00F6C5 03:B6B5: C3        .byte $C3   ; 
- D 1 - I - 0x00F6C6 03:B6B6: 02        .byte $02   ; 
- D 1 - I - 0x00F6C7 03:B6B7: 7F        .byte $7F   ; 
- D 1 - I - 0x00F6C8 03:B6B8: 00        .byte $00   ; 
- D 1 - I - 0x00F6C9 03:B6B9: A4        .byte $A4   ; 



off_B6BA_21:
- D 1 - I - 0x00F6CA 03:B6BA: 02        .byte $02   ; 
- D 1 - I - 0x00F6CB 03:B6BB: CC        .byte $CC   ; 
- D 1 - I - 0x00F6CC 03:B6BC: 01        .byte $01   ; 
- D 1 - I - 0x00F6CD 03:B6BD: 28        .byte $28   ; 
- - - - - - 0x00F6CE 03:B6BE: 03        .byte $03   ; 
- - - - - - 0x00F6CF 03:B6BF: 24        .byte $24   ; 
- - - - - - 0x00F6D0 03:B6C0: 00        .byte $00   ; 
- - - - - - 0x00F6D1 03:B6C1: A0        .byte $A0   ; 
- D 1 - I - 0x00F6D2 03:B6C2: 02        .byte $02   ; 
- D 1 - I - 0x00F6D3 03:B6C3: C5        .byte $C5   ; 
- D 1 - I - 0x00F6D4 03:B6C4: 00        .byte $00   ; 
- D 1 - I - 0x00F6D5 03:B6C5: A4        .byte $A4   ; 



off_B6C6_22:
- - - - - - 0x00F6D6 03:B6C6: 03        .byte $03   ; 
- - - - - - 0x00F6D7 03:B6C7: 04        .byte $04   ; 
- - - - - - 0x00F6D8 03:B6C8: 01        .byte $01   ; 
- - - - - - 0x00F6D9 03:B6C9: 31        .byte $31   ; 
- - - - - - 0x00F6DA 03:B6CA: 03        .byte $03   ; 
- - - - - - 0x00F6DB 03:B6CB: 4F        .byte $4F   ; 
- - - - - - 0x00F6DC 03:B6CC: 00        .byte $00   ; 
- - - - - - 0x00F6DD 03:B6CD: 9D        .byte $9D   ; 
- - - - - - 0x00F6DE 03:B6CE: 02        .byte $02   ; 
- - - - - - 0x00F6DF 03:B6CF: DC        .byte $DC   ; 
- - - - - - 0x00F6E0 03:B6D0: 00        .byte $00   ; 
- - - - - - 0x00F6E1 03:B6D1: A4        .byte $A4   ; 



off_B6D2_23:
- - - - - - 0x00F6E2 03:B6D2: 03        .byte $03   ; 
- - - - - - 0x00F6E3 03:B6D3: 1F        .byte $1F   ; 
- - - - - - 0x00F6E4 03:B6D4: 01        .byte $01   ; 
- - - - - - 0x00F6E5 03:B6D5: 31        .byte $31   ; 
- - - - - - 0x00F6E6 03:B6D6: 03        .byte $03   ; 
- - - - - - 0x00F6E7 03:B6D7: 2B        .byte $2B   ; 
- - - - - - 0x00F6E8 03:B6D8: 00        .byte $00   ; 
- - - - - - 0x00F6E9 03:B6D9: A2        .byte $A2   ; 
- - - - - - 0x00F6EA 03:B6DA: 02        .byte $02   ; 
- - - - - - 0x00F6EB 03:B6DB: DC        .byte $DC   ; 
- - - - - - 0x00F6EC 03:B6DC: 00        .byte $00   ; 
- - - - - - 0x00F6ED 03:B6DD: A4        .byte $A4   ; 



off_B6DE_24:
- D 1 - I - 0x00F6EE 03:B6DE: 01        .byte $01   ; 
- D 1 - I - 0x00F6EF 03:B6DF: F1        .byte $F1   ; 
- D 1 - I - 0x00F6F0 03:B6E0: 01        .byte $01   ; 
- D 1 - I - 0x00F6F1 03:B6E1: 3E        .byte $3E   ; 
- D 1 - I - 0x00F6F2 03:B6E2: 02        .byte $02   ; 
- D 1 - I - 0x00F6F3 03:B6E3: 61        .byte $61   ; 
- D 1 - I - 0x00F6F4 03:B6E4: 00        .byte $00   ; 
- D 1 - I - 0x00F6F5 03:B6E5: B7        .byte $B7   ; 
- D 1 - I - 0x00F6F6 03:B6E6: 01        .byte $01   ; 
- D 1 - I - 0x00F6F7 03:B6E7: F2        .byte $F2   ; 
- D 1 - I - 0x00F6F8 03:B6E8: 00        .byte $00   ; 
- D 1 - I - 0x00F6F9 03:B6E9: C8        .byte $C8   ; 



off_B6EA_25:
- - - - - - 0x00F6FA 03:B6EA: 02        .byte $02   ; 
- - - - - - 0x00F6FB 03:B6EB: 40        .byte $40   ; 
- - - - - - 0x00F6FC 03:B6EC: 01        .byte $01   ; 
- - - - - - 0x00F6FD 03:B6ED: 3E        .byte $3E   ; 
- D 1 - I - 0x00F6FE 03:B6EE: 02        .byte $02   ; 
- D 1 - I - 0x00F6FF 03:B6EF: AD        .byte $AD   ; 
- D 1 - I - 0x00F700 03:B6F0: 00        .byte $00   ; 
- D 1 - I - 0x00F701 03:B6F1: B7        .byte $B7   ; 
- D 1 - I - 0x00F702 03:B6F2: 02        .byte $02   ; 
- D 1 - I - 0x00F703 03:B6F3: 37        .byte $37   ; 
- D 1 - I - 0x00F704 03:B6F4: 00        .byte $00   ; 
- D 1 - I - 0x00F705 03:B6F5: C8        .byte $C8   ; 



off_B6F6_26:
- - - - - - 0x00F706 03:B6F6: 02        .byte $02   ; 
- - - - - - 0x00F707 03:B6F7: 75        .byte $75   ; 
- - - - - - 0x00F708 03:B6F8: 01        .byte $01   ; 
- - - - - - 0x00F709 03:B6F9: 3E        .byte $3E   ; 
- D 1 - I - 0x00F70A 03:B6FA: 02        .byte $02   ; 
- D 1 - I - 0x00F70B 03:B6FB: EE        .byte $EE   ; 
- D 1 - I - 0x00F70C 03:B6FC: 00        .byte $00   ; 
- D 1 - I - 0x00F70D 03:B6FD: AE        .byte $AE   ; 
- D 1 - I - 0x00F70E 03:B6FE: 02        .byte $02   ; 
- D 1 - I - 0x00F70F 03:B6FF: 74        .byte $74   ; 
- D 1 - I - 0x00F710 03:B700: 00        .byte $00   ; 
- D 1 - I - 0x00F711 03:B701: C8        .byte $C8   ; 



off_B702_27:
- - - - - - 0x00F712 03:B702: 02        .byte $02   ; 
- - - - - - 0x00F713 03:B703: BD        .byte $BD   ; 
- - - - - - 0x00F714 03:B704: 01        .byte $01   ; 
- - - - - - 0x00F715 03:B705: 3E        .byte $3E   ; 
- - - - - - 0x00F716 03:B706: 03        .byte $03   ; 
- - - - - - 0x00F717 03:B707: 29        .byte $29   ; 
- - - - - - 0x00F718 03:B708: 00        .byte $00   ; 
- - - - - - 0x00F719 03:B709: A9        .byte $A9   ; 
- - - - - - 0x00F71A 03:B70A: 02        .byte $02   ; 
- - - - - - 0x00F71B 03:B70B: BE        .byte $BE   ; 
- - - - - - 0x00F71C 03:B70C: 00        .byte $00   ; 
- - - - - - 0x00F71D 03:B70D: C8        .byte $C8   ; 



off_B70E_28:
- - - - - - 0x00F71E 03:B70E: 03        .byte $03   ; 
- - - - - - 0x00F71F 03:B70F: 0A        .byte $0A   ; 
- - - - - - 0x00F720 03:B710: 01        .byte $01   ; 
- - - - - - 0x00F721 03:B711: 3E        .byte $3E   ; 
- D 1 - I - 0x00F722 03:B712: 03        .byte $03   ; 
- D 1 - I - 0x00F723 03:B713: 51        .byte $51   ; 
- D 1 - I - 0x00F724 03:B714: 00        .byte $00   ; 
- D 1 - I - 0x00F725 03:B715: 9D        .byte $9D   ; 
- D 1 - I - 0x00F726 03:B716: 02        .byte $02   ; 
- D 1 - I - 0x00F727 03:B717: EA        .byte $EA   ; 
- D 1 - I - 0x00F728 03:B718: 00        .byte $00   ; 
- D 1 - I - 0x00F729 03:B719: BA        .byte $BA   ; 



off_B71A_29:
- - - - - - 0x00F72A 03:B71A: 03        .byte $03   ; 
- - - - - - 0x00F72B 03:B71B: 1C        .byte $1C   ; 
- - - - - - 0x00F72C 03:B71C: 01        .byte $01   ; 
- - - - - - 0x00F72D 03:B71D: 43        .byte $43   ; 
- - - - - - 0x00F72E 03:B71E: 03        .byte $03   ; 
- - - - - - 0x00F72F 03:B71F: 2B        .byte $2B   ; 
- - - - - - 0x00F730 03:B720: 00        .byte $00   ; 
- - - - - - 0x00F731 03:B721: A2        .byte $A2   ; 
- - - - - - 0x00F732 03:B722: 02        .byte $02   ; 
- - - - - - 0x00F733 03:B723: DC        .byte $DC   ; 
- - - - - - 0x00F734 03:B724: 00        .byte $00   ; 
- - - - - - 0x00F735 03:B725: D4        .byte $D4   ; 



off_B726_2A:
off_B726_30:
- D 1 - I - 0x00F736 03:B726: 01        .byte $01   ; 
- D 1 - I - 0x00F737 03:B727: FB        .byte $FB   ; 
- D 1 - I - 0x00F738 03:B728: 01        .byte $01   ; 
- D 1 - I - 0x00F739 03:B729: 53        .byte $53   ; 
- D 1 - I - 0x00F73A 03:B72A: 02        .byte $02   ; 
- D 1 - I - 0x00F73B 03:B72B: 87        .byte $87   ; 
- D 1 - I - 0x00F73C 03:B72C: 00        .byte $00   ; 
- D 1 - I - 0x00F73D 03:B72D: E6        .byte $E6   ; 
- D 1 - I - 0x00F73E 03:B72E: 02        .byte $02   ; 
- D 1 - I - 0x00F73F 03:B72F: 0D        .byte $0D   ; 
- D 1 - I - 0x00F740 03:B730: 00        .byte $00   ; 
- D 1 - I - 0x00F741 03:B731: F0        .byte $F0   ; 



off_B732_2B:
off_B732_31:
- D 1 - I - 0x00F742 03:B732: 02        .byte $02   ; 
- D 1 - I - 0x00F743 03:B733: 32        .byte $32   ; 
- D 1 - I - 0x00F744 03:B734: 01        .byte $01   ; 
- D 1 - I - 0x00F745 03:B735: 53        .byte $53   ; 
- D 1 - I - 0x00F746 03:B736: 02        .byte $02   ; 
- D 1 - I - 0x00F747 03:B737: B2        .byte $B2   ; 
- D 1 - I - 0x00F748 03:B738: 00        .byte $00   ; 
- D 1 - I - 0x00F749 03:B739: DC        .byte $DC   ; 
- D 1 - I - 0x00F74A 03:B73A: 02        .byte $02   ; 
- D 1 - I - 0x00F74B 03:B73B: 47        .byte $47   ; 
- D 1 - I - 0x00F74C 03:B73C: 00        .byte $00   ; 
- D 1 - I - 0x00F74D 03:B73D: F0        .byte $F0   ; 



off_B73E_2C:
off_B73E_32:
- D 1 - I - 0x00F74E 03:B73E: 02        .byte $02   ; 
- D 1 - I - 0x00F74F 03:B73F: 86        .byte $86   ; 
- D 1 - I - 0x00F750 03:B740: 01        .byte $01   ; 
- D 1 - I - 0x00F751 03:B741: 53        .byte $53   ; 
- D 1 - I - 0x00F752 03:B742: 02        .byte $02   ; 
- D 1 - I - 0x00F753 03:B743: FA        .byte $FA   ; 
- D 1 - I - 0x00F754 03:B744: 00        .byte $00   ; 
- D 1 - I - 0x00F755 03:B745: D5        .byte $D5   ; 
- D 1 - I - 0x00F756 03:B746: 02        .byte $02   ; 
- D 1 - I - 0x00F757 03:B747: 91        .byte $91   ; 
- D 1 - I - 0x00F758 03:B748: 00        .byte $00   ; 
- D 1 - I - 0x00F759 03:B749: F0        .byte $F0   ; 



off_B74A_2D:
off_B74A_33:
- D 1 - I - 0x00F75A 03:B74A: 02        .byte $02   ; 
- D 1 - I - 0x00F75B 03:B74B: CD        .byte $CD   ; 
- D 1 - I - 0x00F75C 03:B74C: 01        .byte $01   ; 
- D 1 - I - 0x00F75D 03:B74D: 53        .byte $53   ; 
- D 1 - I - 0x00F75E 03:B74E: 03        .byte $03   ; 
- D 1 - I - 0x00F75F 03:B74F: 3D        .byte $3D   ; 
- D 1 - I - 0x00F760 03:B750: 00        .byte $00   ; 
- D 1 - I - 0x00F761 03:B751: E3        .byte $E3   ; 
- D 1 - I - 0x00F762 03:B752: 02        .byte $02   ; 
- D 1 - I - 0x00F763 03:B753: D0        .byte $D0   ; 
- D 1 - I - 0x00F764 03:B754: 00        .byte $00   ; 
- D 1 - I - 0x00F765 03:B755: CD        .byte $CD   ; 



off_B756_2E:
off_B756_34:
- - - - - - 0x00F766 03:B756: 02        .byte $02   ; 
- - - - - - 0x00F767 03:B757: D9        .byte $D9   ; 
- - - - - - 0x00F768 03:B758: 01        .byte $01   ; 
- - - - - - 0x00F769 03:B759: 51        .byte $51   ; 
- - - - - - 0x00F76A 03:B75A: 03        .byte $03   ; 
- - - - - - 0x00F76B 03:B75B: 60        .byte $60   ; 
- - - - - - 0x00F76C 03:B75C: 00        .byte $00   ; 
- - - - - - 0x00F76D 03:B75D: D0        .byte $D0   ; 
- - - - - - 0x00F76E 03:B75E: 02        .byte $02   ; 
- - - - - - 0x00F76F 03:B75F: D9        .byte $D9   ; 
- - - - - - 0x00F770 03:B760: 00        .byte $00   ; 
- - - - - - 0x00F771 03:B761: CD        .byte $CD   ; 



off_B762_2F:
off_B762_35:
- - - - - - 0x00F772 03:B762: 02        .byte $02   ; 
- - - - - - 0x00F773 03:B763: E3        .byte $E3   ; 
- - - - - - 0x00F774 03:B764: 01        .byte $01   ; 
- - - - - - 0x00F775 03:B765: 4F        .byte $4F   ; 
- - - - - - 0x00F776 03:B766: 03        .byte $03   ; 
- - - - - - 0x00F777 03:B767: 3F        .byte $3F   ; 
- - - - - - 0x00F778 03:B768: 00        .byte $00   ; 
- - - - - - 0x00F779 03:B769: 96        .byte $96   ; 
- - - - - - 0x00F77A 03:B76A: 02        .byte $02   ; 
- - - - - - 0x00F77B 03:B76B: D9        .byte $D9   ; 
- - - - - - 0x00F77C 03:B76C: 00        .byte $00   ; 
- - - - - - 0x00F77D 03:B76D: CD        .byte $CD   ; 



tbl_B76E:
- D 1 - - - 0x00F77E 03:B76E: 46 B8     .word off_B846_00
- D 1 - - - 0x00F780 03:B770: 86 B8     .word off_B886_01
- D 1 - - - 0x00F782 03:B772: C6 B7     .word off_B7C6_02
- D 1 - - - 0x00F784 03:B774: C6 B7     .word off_B7C6_03
- D 1 - - - 0x00F786 03:B776: E6 B7     .word off_B7E6_04
- D 1 - - - 0x00F788 03:B778: E6 B7     .word off_B7E6_05
- D 1 - - - 0x00F78A 03:B77A: A6 B8     .word off_B8A6_06
- D 1 - - - 0x00F78C 03:B77C: A6 B8     .word off_B8A6_07
- D 1 - - - 0x00F78E 03:B77E: C6 B8     .word off_B8C6_08
- D 1 - - - 0x00F790 03:B780: C6 B8     .word off_B8C6_09
- D 1 - - - 0x00F792 03:B782: 06 B8     .word off_B806_0A
- D 1 - - - 0x00F794 03:B784: 26 B8     .word off_B826_0B
- - - - - - 0x00F796 03:B786: C6 B7     .word off_B7C6_0C
- - - - - - 0x00F798 03:B788: C6 B7     .word off_B7C6_0D
- - - - - - 0x00F79A 03:B78A: C6 B7     .word off_B7C6_0E
- - - - - - 0x00F79C 03:B78C: C6 B7     .word off_B7C6_0F
- D 1 - - - 0x00F79E 03:B78E: 46 B8     .word off_B846_10
- D 1 - - - 0x00F7A0 03:B790: 86 B8     .word off_B886_11
- D 1 - - - 0x00F7A2 03:B792: C6 B7     .word off_B7C6_12
- D 1 - - - 0x00F7A4 03:B794: C6 B7     .word off_B7C6_13
- D 1 - - - 0x00F7A6 03:B796: E6 B7     .word off_B7E6_14
- D 1 - - - 0x00F7A8 03:B798: E6 B7     .word off_B7E6_15
- D 1 - - - 0x00F7AA 03:B79A: 66 B8     .word off_B866_16
- D 1 - - - 0x00F7AC 03:B79C: 66 B8     .word off_B866_17
- D 1 - - - 0x00F7AE 03:B79E: E6 B8     .word off_B8E6_18
- D 1 - - - 0x00F7B0 03:B7A0: 06 B9     .word off_B906_19
- D 1 - - - 0x00F7B2 03:B7A2: 06 B8     .word off_B806_1A
- D 1 - - - 0x00F7B4 03:B7A4: 26 B8     .word off_B826_1B
- - - - - - 0x00F7B6 03:B7A6: C6 B7     .word off_B7C6_1C
- - - - - - 0x00F7B8 03:B7A8: C6 B7     .word off_B7C6_1D
- - - - - - 0x00F7BA 03:B7AA: C6 B7     .word off_B7C6_1E
- - - - - - 0x00F7BC 03:B7AC: C6 B7     .word off_B7C6_1F
- D 1 - - - 0x00F7BE 03:B7AE: 46 B8     .word off_B846_20
- D 1 - - - 0x00F7C0 03:B7B0: 86 B8     .word off_B886_21
- D 1 - - - 0x00F7C2 03:B7B2: 06 B8     .word off_B806_22
- D 1 - - - 0x00F7C4 03:B7B4: 26 B8     .word off_B826_23
- D 1 - - - 0x00F7C6 03:B7B6: 66 B8     .word off_B866_24
- D 1 - - - 0x00F7C8 03:B7B8: 66 B8     .word off_B866_25
- D 1 - - - 0x00F7CA 03:B7BA: A6 B8     .word off_B8A6_26
- D 1 - - - 0x00F7CC 03:B7BC: A6 B8     .word off_B8A6_27
- - - - - - 0x00F7CE 03:B7BE: C6 B8     .word off_B8C6_28
- D 1 - - - 0x00F7D0 03:B7C0: C6 B8     .word off_B8C6_29
- - - - - - 0x00F7D2 03:B7C2: 06 B8     .word off_B806_2A
- - - - - - 0x00F7D4 03:B7C4: 26 B8     .word off_B826_2B



off_B7C6_02:
off_B7C6_03:
off_B7C6_0C:
off_B7C6_0D:
off_B7C6_0E:
off_B7C6_0F:
off_B7C6_12:
off_B7C6_13:
off_B7C6_1C:
off_B7C6_1D:
off_B7C6_1E:
off_B7C6_1F:
- - - - - - 0x00F7D6 03:B7C6: 64 B9     .word off_B964_00
- D 1 - I - 0x00F7D8 03:B7C8: 98 B9     .word off_B998_01
- D 1 - I - 0x00F7DA 03:B7CA: 44 B9     .word off_B944_02
- D 1 - I - 0x00F7DC 03:B7CC: 98 B9     .word off_B998_03
- - - - - - 0x00F7DE 03:B7CE: 50 B9     .word off_B950_04
- - - - - - 0x00F7E0 03:B7D0: 30 B9     .word off_B930_05
- - - - - - 0x00F7E2 03:B7D2: 2C B9     .word off_B92C_06
- - - - - - 0x00F7E4 03:B7D4: 48 B9     .word off_B948_07
- D 1 - I - 0x00F7E6 03:B7D6: 64 B9     .word off_B964_08
- D 1 - I - 0x00F7E8 03:B7D8: 54 B9     .word off_B954_09
- D 1 - I - 0x00F7EA 03:B7DA: 44 B9     .word off_B944_0A
- - - - - - 0x00F7EC 03:B7DC: 30 B9     .word off_B930_0B
- - - - - - 0x00F7EE 03:B7DE: 70 B9     .word off_B970_0C
- D 1 - I - 0x00F7F0 03:B7E0: 6C B9     .word off_B96C_0D
- D 1 - I - 0x00F7F2 03:B7E2: 94 B9     .word off_B994_0E
- D 1 - I - 0x00F7F4 03:B7E4: 64 B9     .word off_B964_0F



off_B7E6_04:
off_B7E6_05:
off_B7E6_14:
off_B7E6_15:
- - - - - - 0x00F7F6 03:B7E6: 64 B9     .word off_B964_00
- - - - - - 0x00F7F8 03:B7E8: 98 B9     .word off_B998_01
- - - - - - 0x00F7FA 03:B7EA: 44 B9     .word off_B944_02
- - - - - - 0x00F7FC 03:B7EC: 98 B9     .word off_B998_03
- - - - - - 0x00F7FE 03:B7EE: 90 B9     .word off_B990_04
- D 1 - I - 0x00F800 03:B7F0: 70 B9     .word off_B970_05
- D 1 - I - 0x00F802 03:B7F2: 6C B9     .word off_B96C_06
- D 1 - I - 0x00F804 03:B7F4: 88 B9     .word off_B988_07
- - - - - - 0x00F806 03:B7F6: 64 B9     .word off_B964_08
- D 1 - I - 0x00F808 03:B7F8: 54 B9     .word off_B954_09
- D 1 - I - 0x00F80A 03:B7FA: 44 B9     .word off_B944_0A
- D 1 - I - 0x00F80C 03:B7FC: 30 B9     .word off_B930_0B
- - - - - - 0x00F80E 03:B7FE: 48 B9     .word off_B948_0C
- - - - - - 0x00F810 03:B800: 2C B9     .word off_B92C_0D
- D 1 - I - 0x00F812 03:B802: 54 B9     .word off_B954_0E
- D 1 - I - 0x00F814 03:B804: 64 B9     .word off_B964_0F



off_B806_0A:
off_B806_1A:
off_B806_22:
off_B806_2A:
- - - - - - 0x00F816 03:B806: 60 B9     .word off_B960_00
- - - - - - 0x00F818 03:B808: 54 B9     .word off_B954_01
- - - - - - 0x00F81A 03:B80A: 48 B9     .word off_B948_02
- - - - - - 0x00F81C 03:B80C: 98 B9     .word off_B998_03
- - - - - - 0x00F81E 03:B80E: 4C B9     .word off_B94C_04
- - - - - - 0x00F820 03:B810: 50 B9     .word off_B950_05
- - - - - - 0x00F822 03:B812: 44 B9     .word off_B944_06
- - - - - - 0x00F824 03:B814: 48 B9     .word off_B948_07
- - - - - - 0x00F826 03:B816: 38 B9     .word off_B938_08
- D 1 - I - 0x00F828 03:B818: 60 B9     .word off_B960_09
- D 1 - I - 0x00F82A 03:B81A: 54 B9     .word off_B954_0A
- D 1 - I - 0x00F82C 03:B81C: 64 B9     .word off_B964_0B
- - - - - - 0x00F82E 03:B81E: 5C B9     .word off_B95C_0C
- D 1 - I - 0x00F830 03:B820: 64 B9     .word off_B964_0D
- D 1 - I - 0x00F832 03:B822: 90 B9     .word off_B990_0E
- D 1 - I - 0x00F834 03:B824: 60 B9     .word off_B960_0F



off_B826_0B:
off_B826_1B:
off_B826_23:
off_B826_2B:
- - - - - - 0x00F836 03:B826: 64 B9     .word off_B964_00
- - - - - - 0x00F838 03:B828: 94 B9     .word off_B994_01
- - - - - - 0x00F83A 03:B82A: 88 B9     .word off_B988_02
- - - - - - 0x00F83C 03:B82C: 98 B9     .word off_B998_03
- - - - - - 0x00F83E 03:B82E: 8C B9     .word off_B98C_04
- - - - - - 0x00F840 03:B830: 90 B9     .word off_B990_05
- - - - - - 0x00F842 03:B832: 84 B9     .word off_B984_06
- - - - - - 0x00F844 03:B834: 88 B9     .word off_B988_07
- - - - - - 0x00F846 03:B836: 78 B9     .word off_B978_08
- D 1 - I - 0x00F848 03:B838: 70 B9     .word off_B970_09
- D 1 - I - 0x00F84A 03:B83A: 94 B9     .word off_B994_0A
- D 1 - I - 0x00F84C 03:B83C: 48 B9     .word off_B948_0B
- - - - - - 0x00F84E 03:B83E: 64 B9     .word off_B964_0C
- D 1 - I - 0x00F850 03:B840: 5C B9     .word off_B95C_0D
- D 1 - I - 0x00F852 03:B842: 50 B9     .word off_B950_0E
- D 1 - I - 0x00F854 03:B844: 88 B9     .word off_B988_0F



off_B846_00:
off_B846_10:
off_B846_20:
- D 1 - I - 0x00F856 03:B846: 98 B9     .word off_B998_00
- D 1 - I - 0x00F858 03:B848: 54 B9     .word off_B954_01
- D 1 - I - 0x00F85A 03:B84A: 64 B9     .word off_B964_02
- - - - - - 0x00F85C 03:B84C: 98 B9     .word off_B998_03
- - - - - - 0x00F85E 03:B84E: 38 B9     .word off_B938_04
- - - - - - 0x00F860 03:B850: 2C B9     .word off_B92C_05
- - - - - - 0x00F862 03:B852: 50 B9     .word off_B950_06
- - - - - - 0x00F864 03:B854: 30 B9     .word off_B930_07
- - - - - - 0x00F866 03:B856: 5C B9     .word off_B95C_08
- D 1 - I - 0x00F868 03:B858: 60 B9     .word off_B960_09
- D 1 - I - 0x00F86A 03:B85A: 64 B9     .word off_B964_0A
- - - - - - 0x00F86C 03:B85C: 44 B9     .word off_B944_0B
- D 1 - I - 0x00F86E 03:B85E: 30 B9     .word off_B930_0C
- D 1 - I - 0x00F870 03:B860: 2C B9     .word off_B92C_0D
- D 1 - I - 0x00F872 03:B862: 48 B9     .word off_B948_0E
- - - - - - 0x00F874 03:B864: 50 B9     .word off_B950_0F



off_B866_16:
off_B866_17:
off_B866_24:
off_B866_25:
- - - - - - 0x00F876 03:B866: 98 B9     .word off_B998_00
- D 1 - I - 0x00F878 03:B868: 94 B9     .word off_B994_01
- - - - - - 0x00F87A 03:B86A: 64 B9     .word off_B964_02
- - - - - - 0x00F87C 03:B86C: 98 B9     .word off_B998_03
- D 1 - I - 0x00F87E 03:B86E: 78 B9     .word off_B978_04
- D 1 - I - 0x00F880 03:B870: 6C B9     .word off_B96C_05
- D 1 - I - 0x00F882 03:B872: 90 B9     .word off_B990_06
- D 1 - I - 0x00F884 03:B874: 70 B9     .word off_B970_07
- D 1 - I - 0x00F886 03:B876: 5C B9     .word off_B95C_08
- D 1 - I - 0x00F888 03:B878: 60 B9     .word off_B960_09
- D 1 - I - 0x00F88A 03:B87A: 44 B9     .word off_B944_0A
- D 1 - I - 0x00F88C 03:B87C: 54 B9     .word off_B954_0B
- - - - - - 0x00F88E 03:B87E: 70 B9     .word off_B970_0C
- - - - - - 0x00F890 03:B880: 6C B9     .word off_B96C_0D
- D 1 - I - 0x00F892 03:B882: 88 B9     .word off_B988_0E
- D 1 - I - 0x00F894 03:B884: 90 B9     .word off_B990_0F



off_B886_01:
off_B886_11:
off_B886_21:
- - - - - - 0x00F896 03:B886: 98 B9     .word off_B998_00
- D 1 - I - 0x00F898 03:B888: 64 B9     .word off_B964_01
- D 1 - I - 0x00F89A 03:B88A: 94 B9     .word off_B994_02
- - - - - - 0x00F89C 03:B88C: 98 B9     .word off_B998_03
- - - - - - 0x00F89E 03:B88E: 78 B9     .word off_B978_04
- - - - - - 0x00F8A0 03:B890: 6C B9     .word off_B96C_05
- - - - - - 0x00F8A2 03:B892: 90 B9     .word off_B990_06
- - - - - - 0x00F8A4 03:B894: 70 B9     .word off_B970_07
- - - - - - 0x00F8A6 03:B896: 60 B9     .word off_B960_08
- D 1 - I - 0x00F8A8 03:B898: 5C B9     .word off_B95C_09
- D 1 - I - 0x00F8AA 03:B89A: 84 B9     .word off_B984_0A
- - - - - - 0x00F8AC 03:B89C: 94 B9     .word off_B994_0B
- - - - - - 0x00F8AE 03:B89E: 70 B9     .word off_B970_0C
- D 1 - I - 0x00F8B0 03:B8A0: 6C B9     .word off_B96C_0D
- D 1 - I - 0x00F8B2 03:B8A2: 88 B9     .word off_B988_0E
- - - - - - 0x00F8B4 03:B8A4: 90 B9     .word off_B990_0F



off_B8A6_06:
off_B8A6_07:
off_B8A6_26:
off_B8A6_27:
- - - - - - 0x00F8B6 03:B8A6: 5C B9     .word off_B95C_00
- - - - - - 0x00F8B8 03:B8A8: 98 B9     .word off_B998_01
- D 1 - I - 0x00F8BA 03:B8AA: 60 B9     .word off_B960_02
- - - - - - 0x00F8BC 03:B8AC: 98 B9     .word off_B998_03
- - - - - - 0x00F8BE 03:B8AE: 3C B9     .word off_B93C_04
- D 1 - I - 0x00F8C0 03:B8B0: 58 B9     .word off_B958_05
- D 1 - I - 0x00F8C2 03:B8B2: 34 B9     .word off_B934_06
- D 1 - I - 0x00F8C4 03:B8B4: 28 B9     .word off_B928_07
- - - - - - 0x00F8C6 03:B8B6: 34 B9     .word off_B934_08
- - - - - - 0x00F8C8 03:B8B8: 5C B9     .word off_B95C_09
- - - - - - 0x00F8CA 03:B8BA: 38 B9     .word off_B938_0A
- - - - - - 0x00F8CC 03:B8BC: 60 B9     .word off_B960_0B
- - - - - - 0x00F8CE 03:B8BE: 60 B9     .word off_B960_0C
- D 1 - I - 0x00F8D0 03:B8C0: 38 B9     .word off_B938_0D
- D 1 - I - 0x00F8D2 03:B8C2: 30 B9     .word off_B930_0E
- - - - - - 0x00F8D4 03:B8C4: 44 B9     .word off_B944_0F



off_B8C6_08:
off_B8C6_09:
off_B8C6_28:
off_B8C6_29:
- - - - - - 0x00F8D6 03:B8C6: 5C B9     .word off_B95C_00
- D 1 - I - 0x00F8D8 03:B8C8: 98 B9     .word off_B998_01
- D 1 - I - 0x00F8DA 03:B8CA: 60 B9     .word off_B960_02
- - - - - - 0x00F8DC 03:B8CC: 98 B9     .word off_B998_03
- - - - - - 0x00F8DE 03:B8CE: 7C B9     .word off_B97C_04
- D 1 - I - 0x00F8E0 03:B8D0: 58 B9     .word off_B958_05
- D 1 - I - 0x00F8E2 03:B8D2: 74 B9     .word off_B974_06
- - - - - - 0x00F8E4 03:B8D4: 68 B9     .word off_B968_07
- - - - - - 0x00F8E6 03:B8D6: 74 B9     .word off_B974_08
- D 1 - I - 0x00F8E8 03:B8D8: 5C B9     .word off_B95C_09
- D 1 - I - 0x00F8EA 03:B8DA: 78 B9     .word off_B978_0A
- D 1 - I - 0x00F8EC 03:B8DC: 60 B9     .word off_B960_0B
- - - - - - 0x00F8EE 03:B8DE: 60 B9     .word off_B960_0C
- D 1 - I - 0x00F8F0 03:B8E0: 78 B9     .word off_B978_0D
- - - - - - 0x00F8F2 03:B8E2: 70 B9     .word off_B970_0E
- - - - - - 0x00F8F4 03:B8E4: 84 B9     .word off_B984_0F



off_B8E6_18:
- - - - - - 0x00F8F6 03:B8E6: 64 B9     .word off_B964_00
- - - - - - 0x00F8F8 03:B8E8: 98 B9     .word off_B998_01
- - - - - - 0x00F8FA 03:B8EA: 98 B9     .word off_B998_02
- - - - - - 0x00F8FC 03:B8EC: 58 B9     .word off_B958_03
- - - - - - 0x00F8FE 03:B8EE: 58 B9     .word off_B958_04
- D 1 - I - 0x00F900 03:B8F0: 7C B9     .word off_B97C_05
- D 1 - I - 0x00F902 03:B8F2: 3C B9     .word off_B93C_06
- - - - - - 0x00F904 03:B8F4: 74 B9     .word off_B974_07
- - - - - - 0x00F906 03:B8F6: 34 B9     .word off_B934_08
- D 1 - I - 0x00F908 03:B8F8: 40 B9     .word off_B940_09
- D 1 - I - 0x00F90A 03:B8FA: 5C B9     .word off_B95C_0A
- - - - - - 0x00F90C 03:B8FC: 38 B9     .word off_B938_0B
- - - - - - 0x00F90E 03:B8FE: 5C B9     .word off_B95C_0C
- D 1 - I - 0x00F910 03:B900: 68 B9     .word off_B968_0D
- D 1 - I - 0x00F912 03:B902: 6C B9     .word off_B96C_0E
- D 1 - I - 0x00F914 03:B904: 60 B9     .word off_B960_0F



off_B906_19:
- - - - - - 0x00F916 03:B906: 58 B9     .word off_B958_00
- - - - - - 0x00F918 03:B908: 98 B9     .word off_B998_01
- - - - - - 0x00F91A 03:B90A: 98 B9     .word off_B998_02
- - - - - - 0x00F91C 03:B90C: 64 B9     .word off_B964_03
- - - - - - 0x00F91E 03:B90E: 5C B9     .word off_B95C_04
- D 1 - I - 0x00F920 03:B910: 3C B9     .word off_B93C_05
- - - - - - 0x00F922 03:B912: 7C B9     .word off_B97C_06
- - - - - - 0x00F924 03:B914: 34 B9     .word off_B934_07
- - - - - - 0x00F926 03:B916: 74 B9     .word off_B974_08
- - - - - - 0x00F928 03:B918: 80 B9     .word off_B980_09
- D 1 - I - 0x00F92A 03:B91A: 60 B9     .word off_B960_0A
- D 1 - I - 0x00F92C 03:B91C: 78 B9     .word off_B978_0B
- - - - - - 0x00F92E 03:B91E: 4C B9     .word off_B94C_0C
- D 1 - I - 0x00F930 03:B920: 28 B9     .word off_B928_0D
- D 1 - I - 0x00F932 03:B922: 2C B9     .word off_B92C_0E
- D 1 - I - 0x00F934 03:B924: 90 B9     .word off_B990_0F



tbl_B926:
- D 1 - - - 0x00F936 03:B926: 28 B9     .word off_B928



off_B928_07:
off_B928_0D:
off_B928:
- D 1 - I - 0x00F938 03:B928: 02        .byte $02   ; 
- D 1 - I - 0x00F939 03:B929: 7F        .byte $7F   ; 
- D 1 - I - 0x00F93A 03:B92A: 00        .byte $00   ; 
- D 1 - I - 0x00F93B 03:B92B: 4F        .byte $4F   ; 
off_B92C_06:
off_B92C_0D:
off_B92C_05:
off_B92C_0E:
- D 1 - I - 0x00F93C 03:B92C: 03        .byte $03   ; 
- D 1 - I - 0x00F93D 03:B92D: 15        .byte $15   ; 
- D 1 - I - 0x00F93E 03:B92E: 00        .byte $00   ; 
- D 1 - I - 0x00F93F 03:B92F: 4F        .byte $4F   ; 
off_B930_05:
off_B930_0B:
off_B930_07:
off_B930_0C:
off_B930_0E:
- D 1 - I - 0x00F940 03:B930: 03        .byte $03   ; 
- D 1 - I - 0x00F941 03:B931: 4A        .byte $4A   ; 
- D 1 - I - 0x00F942 03:B932: 00        .byte $00   ; 
- D 1 - I - 0x00F943 03:B933: 4F        .byte $4F   ; 
off_B934_06:
off_B934_08:
off_B934_07:
- D 1 - I - 0x00F944 03:B934: 02        .byte $02   ; 
- D 1 - I - 0x00F945 03:B935: 4E        .byte $4E   ; 
- D 1 - I - 0x00F946 03:B936: 00        .byte $00   ; 
- D 1 - I - 0x00F947 03:B937: 61        .byte $61   ; 
off_B938_08:
off_B938_04:
off_B938_0A:
off_B938_0D:
off_B938_0B:
- D 1 - I - 0x00F948 03:B938: 02        .byte $02   ; 
- D 1 - I - 0x00F949 03:B939: CF        .byte $CF   ; 
- D 1 - I - 0x00F94A 03:B93A: 00        .byte $00   ; 
- D 1 - I - 0x00F94B 03:B93B: 61        .byte $61   ; 
off_B93C_04:
off_B93C_06:
off_B93C_05:
- D 1 - I - 0x00F94C 03:B93C: 02        .byte $02   ; 
- D 1 - I - 0x00F94D 03:B93D: 10        .byte $10   ; 
- D 1 - I - 0x00F94E 03:B93E: 00        .byte $00   ; 
- D 1 - I - 0x00F94F 03:B93F: 7D        .byte $7D   ; 
off_B940_09:
- D 1 - I - 0x00F950 03:B940: 02        .byte $02   ; 
- D 1 - I - 0x00F951 03:B941: 6D        .byte $6D   ; 
- D 1 - I - 0x00F952 03:B942: 00        .byte $00   ; 
- D 1 - I - 0x00F953 03:B943: 7D        .byte $7D   ; 
off_B944_02:
off_B944_0A:
off_B944_06:
off_B944_0B:
off_B944_0F:
- D 1 - I - 0x00F954 03:B944: 03        .byte $03   ; 
- D 1 - I - 0x00F955 03:B945: 28        .byte $28   ; 
- D 1 - I - 0x00F956 03:B946: 00        .byte $00   ; 
- D 1 - I - 0x00F957 03:B947: 7D        .byte $7D   ; 
off_B948_07:
off_B948_0C:
off_B948_02:
off_B948_0B:
off_B948_0E:
- D 1 - I - 0x00F958 03:B948: 03        .byte $03   ; 
- D 1 - I - 0x00F959 03:B949: 32        .byte $32   ; 
- D 1 - I - 0x00F95A 03:B94A: 00        .byte $00   ; 
- D 1 - I - 0x00F95B 03:B94B: 7D        .byte $7D   ; 
off_B94C_04:
off_B94C_0C:
- - - - - - 0x00F95C 03:B94C: 02        .byte $02   ; 
- - - - - - 0x00F95D 03:B94D: BE        .byte $BE   ; 
- - - - - - 0x00F95E 03:B94E: 00        .byte $00   ; 
- - - - - - 0x00F95F 03:B94F: A2        .byte $A2   ; 
off_B950_04:
off_B950_05:
off_B950_0E:
off_B950_06:
off_B950_0F:
- D 1 - I - 0x00F960 03:B950: 03        .byte $03   ; 
- D 1 - I - 0x00F961 03:B951: 08        .byte $08   ; 
- D 1 - I - 0x00F962 03:B952: 00        .byte $00   ; 
- D 1 - I - 0x00F963 03:B953: A2        .byte $A2   ; 
off_B954_09:
off_B954_0E:
off_B954_01:
off_B954_0A:
off_B954_0B:
- D 1 - I - 0x00F964 03:B954: 03        .byte $03   ; 
- D 1 - I - 0x00F965 03:B955: 2F        .byte $2F   ; 
- D 1 - I - 0x00F966 03:B956: 00        .byte $00   ; 
- D 1 - I - 0x00F967 03:B957: A2        .byte $A2   ; 
off_B958_05:
off_B958_03:
off_B958_04:
off_B958_00:
- D 1 - I - 0x00F968 03:B958: 02        .byte $02   ; 
- D 1 - I - 0x00F969 03:B959: 33        .byte $33   ; 
- D 1 - I - 0x00F96A 03:B95A: 00        .byte $00   ; 
- D 1 - I - 0x00F96B 03:B95B: C3        .byte $C3   ; 
off_B95C_0C:
off_B95C_0D:
off_B95C_08:
off_B95C_09:
off_B95C_00:
off_B95C_0A:
off_B95C_04:
- D 1 - I - 0x00F96C 03:B95C: 02        .byte $02   ; 
- D 1 - I - 0x00F96D 03:B95D: 92        .byte $92   ; 
- D 1 - I - 0x00F96E 03:B95E: 00        .byte $00   ; 
- D 1 - I - 0x00F96F 03:B95F: C3        .byte $C3   ; 
off_B960_00:
off_B960_09:
off_B960_0F:
off_B960_08:
off_B960_02:
off_B960_0B:
off_B960_0C:
off_B960_0A:
- D 1 - I - 0x00F970 03:B960: 03        .byte $03   ; 
- D 1 - I - 0x00F971 03:B961: 08        .byte $08   ; 
- D 1 - I - 0x00F972 03:B962: 00        .byte $00   ; 
- D 1 - I - 0x00F973 03:B963: C3        .byte $C3   ; 
off_B964_00:
off_B964_08:
off_B964_0F:
off_B964_0B:
off_B964_0D:
off_B964_0C:
off_B964_02:
off_B964_0A:
off_B964_01:
off_B964_03:
- D 1 - I - 0x00F974 03:B964: 03        .byte $03   ; 
- D 1 - I - 0x00F975 03:B965: 29        .byte $29   ; 
- D 1 - I - 0x00F976 03:B966: 00        .byte $00   ; 
- D 1 - I - 0x00F977 03:B967: C3        .byte $C3   ; 
off_B968_07:
off_B968_0D:
- D 1 - I - 0x00F978 03:B968: 02        .byte $02   ; 
- D 1 - I - 0x00F979 03:B969: 90        .byte $90   ; 
- D 1 - I - 0x00F97A 03:B96A: 01        .byte $01   ; 
- D 1 - I - 0x00F97B 03:B96B: 3E        .byte $3E   ; 
off_B96C_0D:
off_B96C_06:
off_B96C_05:
off_B96C_0E:
- D 1 - I - 0x00F97C 03:B96C: 03        .byte $03   ; 
- D 1 - I - 0x00F97D 03:B96D: 35        .byte $35   ; 
- D 1 - I - 0x00F97E 03:B96E: 01        .byte $01   ; 
- D 1 - I - 0x00F97F 03:B96F: 3E        .byte $3E   ; 
off_B970_0C:
off_B970_05:
off_B970_09:
off_B970_07:
off_B970_0E:
- D 1 - I - 0x00F980 03:B970: 03        .byte $03   ; 
- D 1 - I - 0x00F981 03:B971: 61        .byte $61   ; 
- D 1 - I - 0x00F982 03:B972: 01        .byte $01   ; 
- D 1 - I - 0x00F983 03:B973: 3E        .byte $3E   ; 
off_B974_06:
off_B974_08:
off_B974_07:
- D 1 - I - 0x00F984 03:B974: 02        .byte $02   ; 
- D 1 - I - 0x00F985 03:B975: 59        .byte $59   ; 
- D 1 - I - 0x00F986 03:B976: 01        .byte $01   ; 
- D 1 - I - 0x00F987 03:B977: 24        .byte $24   ; 
off_B978_08:
off_B978_04:
off_B978_0A:
off_B978_0D:
off_B978_0B:
- D 1 - I - 0x00F988 03:B978: 02        .byte $02   ; 
- D 1 - I - 0x00F989 03:B979: DB        .byte $DB   ; 
- D 1 - I - 0x00F98A 03:B97A: 01        .byte $01   ; 
- D 1 - I - 0x00F98B 03:B97B: 24        .byte $24   ; 
off_B97C_04:
off_B97C_05:
off_B97C_06:
- D 1 - I - 0x00F98C 03:B97C: 02        .byte $02   ; 
- D 1 - I - 0x00F98D 03:B97D: 18        .byte $18   ; 
- D 1 - I - 0x00F98E 03:B97E: 01        .byte $01   ; 
- D 1 - I - 0x00F98F 03:B97F: 0A        .byte $0A   ; 
off_B980_09:
- - - - - - 0x00F990 03:B980: 02        .byte $02   ; 
- - - - - - 0x00F991 03:B981: 7C        .byte $7C   ; 
- - - - - - 0x00F992 03:B982: 01        .byte $01   ; 
- - - - - - 0x00F993 03:B983: 0A        .byte $0A   ; 
off_B984_06:
off_B984_0A:
off_B984_0F:
- D 1 - I - 0x00F994 03:B984: 03        .byte $03   ; 
- D 1 - I - 0x00F995 03:B985: 30        .byte $30   ; 
- D 1 - I - 0x00F996 03:B986: 01        .byte $01   ; 
- D 1 - I - 0x00F997 03:B987: 0A        .byte $0A   ; 
off_B988_07:
off_B988_02:
off_B988_0F:
off_B988_0E:
- D 1 - I - 0x00F998 03:B988: 03        .byte $03   ; 
- D 1 - I - 0x00F999 03:B989: 44        .byte $44   ; 
- D 1 - I - 0x00F99A 03:B98A: 01        .byte $01   ; 
- D 1 - I - 0x00F99B 03:B98B: 0A        .byte $0A   ; 
off_B98C_04:
- - - - - - 0x00F99C 03:B98C: 02        .byte $02   ; 
- - - - - - 0x00F99D 03:B98D: D6        .byte $D6   ; 
- - - - - - 0x00F99E 03:B98E: 00        .byte $00   ; 
- - - - - - 0x00F99F 03:B98F: E3        .byte $E3   ; 
off_B990_04:
off_B990_0E:
off_B990_05:
off_B990_06:
off_B990_0F:
- D 1 - I - 0x00F9A0 03:B990: 03        .byte $03   ; 
- D 1 - I - 0x00F9A1 03:B991: 10        .byte $10   ; 
- D 1 - I - 0x00F9A2 03:B992: 00        .byte $00   ; 
- D 1 - I - 0x00F9A3 03:B993: E3        .byte $E3   ; 
off_B994_0E:
off_B994_01:
off_B994_0A:
off_B994_02:
off_B994_0B:
- D 1 - I - 0x00F9A4 03:B994: 03        .byte $03   ; 
- D 1 - I - 0x00F9A5 03:B995: 35        .byte $35   ; 
- D 1 - I - 0x00F9A6 03:B996: 00        .byte $00   ; 
- D 1 - I - 0x00F9A7 03:B997: E3        .byte $E3   ; 
off_B998_01:
off_B998_03:
off_B998_00:
off_B998_02:
- D 1 - I - 0x00F9A8 03:B998: FF        .byte $FF   ; 



loc_B999:
C D 1 - - - 0x00F9A9 03:B999: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x00F9AC 03:B99C: 29 20     AND #$20
C - - - - - 0x00F9AE 03:B99E: D0 05     BNE bra_B9A5
C - - - - - 0x00F9B0 03:B9A0: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00F9B3 03:B9A3: 10 01     BPL bra_B9A6
bra_B9A5:
C - - - - - 0x00F9B5 03:B9A5: 60        RTS
bra_B9A6:
C - - - - - 0x00F9B6 03:B9A6: 8A        TXA
C - - - - - 0x00F9B7 03:B9A7: 29 01     AND #$01
C - - - - - 0x00F9B9 03:B9A9: 85 1D     STA ram_001D
C - - - - - 0x00F9BB 03:B9AB: A8        TAY
C - - - - - 0x00F9BC 03:B9AC: B9 2C 05  LDA ram_номер_команды,Y
C - - - - - 0x00F9BF 03:B9AF: 10 07     BPL bra_B9B8
C - - - - - 0x00F9C1 03:B9B1: E0 00     CPX #$00
C - - - - - 0x00F9C3 03:B9B3: D0 1E     BNE bra_B9D3
C - - - - - 0x00F9C5 03:B9B5: 4C C1 B9  JMP loc_B9C1
bra_B9B8:
C - - - - - 0x00F9C8 03:B9B8: B9 68 05  LDA ram_номер_управляемого,Y
C - - - - - 0x00F9CB 03:B9BB: 85 1E     STA ram_001E
C - - - - - 0x00F9CD 03:B9BD: E4 1E     CPX ram_001E
C - - - - - 0x00F9CF 03:B9BF: D0 12     BNE bra_B9D3
loc_B9C1:
C D 1 - - - 0x00F9D1 03:B9C1: 20 EE B9  JSR sub_B9EE
C - - - - - 0x00F9D4 03:B9C4: F0 0D     BEQ bra_B9D3
C - - - - - 0x00F9D6 03:B9C6: A4 1D     LDY ram_001D
C - - - - - 0x00F9D8 03:B9C8: 99 80 06  STA ram_0680,Y
C - - - - - 0x00F9DB 03:B9CB: A9 20     LDA #$20
C - - - - - 0x00F9DD 03:B9CD: 99 84 06  STA ram_0684,Y
C - - - - - 0x00F9E0 03:B9D0: 4C ED B9  JMP loc_B9ED_RTS
bra_B9D3:
C - - - - - 0x00F9E3 03:B9D3: B9 7A 06  LDA ram_направление_паса_команды,Y
C - - - - - 0x00F9E6 03:B9D6: 29 0F     AND #$0F
C - - - - - 0x00F9E8 03:B9D8: 85 1E     STA ram_001E
C - - - - - 0x00F9EA 03:B9DA: E4 1E     CPX ram_001E
C - - - - - 0x00F9EC 03:B9DC: D0 0F     BNE bra_B9ED_RTS
C - - - - - 0x00F9EE 03:B9DE: 20 EE B9  JSR sub_B9EE
C - - - - - 0x00F9F1 03:B9E1: F0 0A     BEQ bra_B9ED_RTS
C - - - - - 0x00F9F3 03:B9E3: A4 1D     LDY ram_001D
C - - - - - 0x00F9F5 03:B9E5: 99 82 06  STA ram_0682,Y
C - - - - - 0x00F9F8 03:B9E8: A9 20     LDA #$20
C - - - - - 0x00F9FA 03:B9EA: 99 84 06  STA ram_0684,Y
bra_B9ED_RTS:
loc_B9ED_RTS:
C D 1 - - - 0x00F9FD 03:B9ED: 60        RTS



sub_B9EE:
C - - - - - 0x00F9FE 03:B9EE: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00FA01 03:B9F1: 10 03     BPL bra_B9F6
- - - - - - 0x00FA03 03:B9F3: A9 00     LDA #$00
- - - - - - 0x00FA05 03:B9F5: 60        RTS
bra_B9F6:
C - - - - - 0x00FA06 03:B9F6: C9 09     CMP #$09
C - - - - - 0x00FA08 03:B9F8: F0 71     BEQ bra_BA6B
C - - - - - 0x00FA0A 03:B9FA: C9 07     CMP #$07
C - - - - - 0x00FA0C 03:B9FC: F0 6D     BEQ bra_BA6B
C - - - - - 0x00FA0E 03:B9FE: C9 31     CMP #$31
C - - - - - 0x00FA10 03:BA00: F0 69     BEQ bra_BA6B
C - - - - - 0x00FA12 03:BA02: C9 32     CMP #$32
C - - - - - 0x00FA14 03:BA04: F0 65     BEQ bra_BA6B
C - - - - - 0x00FA16 03:BA06: C9 46     CMP #$46
C - - - - - 0x00FA18 03:BA08: F0 61     BEQ bra_BA6B
C - - - - - 0x00FA1A 03:BA0A: C9 33     CMP #$33
C - - - - - 0x00FA1C 03:BA0C: F0 5D     BEQ bra_BA6B
C - - - - - 0x00FA1E 03:BA0E: C9 34     CMP #$34
C - - - - - 0x00FA20 03:BA10: F0 59     BEQ bra_BA6B
C - - - - - 0x00FA22 03:BA12: C9 37     CMP #$37
C - - - - - 0x00FA24 03:BA14: F0 55     BEQ bra_BA6B
C - - - - - 0x00FA26 03:BA16: C9 38     CMP #$38
C - - - - - 0x00FA28 03:BA18: F0 51     BEQ bra_BA6B
C - - - - - 0x00FA2A 03:BA1A: C9 49     CMP #$49
C - - - - - 0x00FA2C 03:BA1C: F0 4D     BEQ bra_BA6B
C - - - - - 0x00FA2E 03:BA1E: C9 4B     CMP #$4B
C - - - - - 0x00FA30 03:BA20: F0 49     BEQ bra_BA6B
C - - - - - 0x00FA32 03:BA22: C9 4D     CMP #$4D
C - - - - - 0x00FA34 03:BA24: F0 45     BEQ bra_BA6B
C - - - - - 0x00FA36 03:BA26: C9 4F     CMP #$4F
C - - - - - 0x00FA38 03:BA28: F0 41     BEQ bra_BA6B
C - - - - - 0x00FA3A 03:BA2A: C9 0A     CMP #$0A
C - - - - - 0x00FA3C 03:BA2C: F0 42     BEQ bra_BA70
C - - - - - 0x00FA3E 03:BA2E: C9 08     CMP #$08
C - - - - - 0x00FA40 03:BA30: F0 3E     BEQ bra_BA70
C - - - - - 0x00FA42 03:BA32: C9 35     CMP #$35
C - - - - - 0x00FA44 03:BA34: F0 3A     BEQ bra_BA70
C - - - - - 0x00FA46 03:BA36: C9 39     CMP #$39
C - - - - - 0x00FA48 03:BA38: F0 36     BEQ bra_BA70
C - - - - - 0x00FA4A 03:BA3A: C9 36     CMP #$36
C - - - - - 0x00FA4C 03:BA3C: F0 32     BEQ bra_BA70
C - - - - - 0x00FA4E 03:BA3E: C9 3A     CMP #$3A
C - - - - - 0x00FA50 03:BA40: C9 22     CMP #$22
C - - - - - 0x00FA52 03:BA42: F0 31     BEQ bra_BA75
C - - - - - 0x00FA54 03:BA44: C9 3B     CMP #$3B
C - - - - - 0x00FA56 03:BA46: F0 2D     BEQ bra_BA75
C - - - - - 0x00FA58 03:BA48: C9 23     CMP #$23
C - - - - - 0x00FA5A 03:BA4A: F0 2E     BEQ bra_BA7A
C - - - - - 0x00FA5C 03:BA4C: C9 42     CMP #$42
C - - - - - 0x00FA5E 03:BA4E: F0 2A     BEQ bra_BA7A
C - - - - - 0x00FA60 03:BA50: C9 2D     CMP #$2D
C - - - - - 0x00FA62 03:BA52: F0 2B     BEQ bra_BA7F
C - - - - - 0x00FA64 03:BA54: C9 2E     CMP #$2E
C - - - - - 0x00FA66 03:BA56: F0 27     BEQ bra_BA7F
C - - - - - 0x00FA68 03:BA58: C9 3C     CMP #$3C
C - - - - - 0x00FA6A 03:BA5A: F0 23     BEQ bra_BA7F
C - - - - - 0x00FA6C 03:BA5C: C9 3D     CMP #$3D
C - - - - - 0x00FA6E 03:BA5E: F0 1F     BEQ bra_BA7F
C - - - - - 0x00FA70 03:BA60: C9 59     CMP #$59
C - - - - - 0x00FA72 03:BA62: F0 1B     BEQ bra_BA7F
C - - - - - 0x00FA74 03:BA64: C9 5A     CMP #$5A
C - - - - - 0x00FA76 03:BA66: F0 17     BEQ bra_BA7F
C - - - - - 0x00FA78 03:BA68: A9 00     LDA #$00
C - - - - - 0x00FA7A 03:BA6A: 60        RTS
bra_BA6B:
C - - - - - 0x00FA7B 03:BA6B: A9 00     LDA #$00
C - - - - - 0x00FA7D 03:BA6D: 4C 81 BA  JMP loc_BA81
bra_BA70:
C - - - - - 0x00FA80 03:BA70: A9 04     LDA #$04
C - - - - - 0x00FA82 03:BA72: 4C 81 BA  JMP loc_BA81
bra_BA75:
C - - - - - 0x00FA85 03:BA75: A9 08     LDA #$08
C - - - - - 0x00FA87 03:BA77: 4C 81 BA  JMP loc_BA81
bra_BA7A:
C - - - - - 0x00FA8A 03:BA7A: A9 0C     LDA #$0C
C - - - - - 0x00FA8C 03:BA7C: 4C 81 BA  JMP loc_BA81
bra_BA7F:
C - - - - - 0x00FA8F 03:BA7F: A9 10     LDA #$10
loc_BA81:
C D 1 - - - 0x00FA91 03:BA81: 85 1C     STA ram_001C
C - - - - - 0x00FA93 03:BA83: B9 2C 05  LDA ram_номер_команды,Y
C - - - - - 0x00FA96 03:BA86: 29 0C     AND #$0C
C - - - - - 0x00FA98 03:BA88: 4A        LSR
C - - - - - 0x00FA99 03:BA89: A8        TAY
C - - - - - 0x00FA9A 03:BA8A: B9 A1 BA  LDA tbl_BAA1,Y
C - - - - - 0x00FA9D 03:BA8D: 85 2C     STA ram_002C
C - - - - - 0x00FA9F 03:BA8F: B9 A2 BA  LDA tbl_BAA1 + $01,Y
C - - - - - 0x00FAA2 03:BA92: 85 2D     STA ram_002D
C - - - - - 0x00FAA4 03:BA94: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00FAA7 03:BA97: 29 03     AND #$03
C - - - - - 0x00FAA9 03:BA99: 05 1C     ORA ram_001C
C - - - - - 0x00FAAB 03:BA9B: A8        TAY
C - - - - - 0x00FAAC 03:BA9C: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00FAAE 03:BA9E: 09 80     ORA #$80
C - - - - - 0x00FAB0 03:BAA0: 60        RTS



tbl_BAA1:
- D 1 - - - 0x00FAB1 03:BAA1: A9 BA     .word off_BAA9_00
- D 1 - - - 0x00FAB3 03:BAA3: BD BA     .word off_BABD_01
- D 1 - - - 0x00FAB5 03:BAA5: D1 BA     .word off_BAD1_02
- D 1 - - - 0x00FAB7 03:BAA7: E5 BA     .word off_BAE5_03

off_BAA9_00:
- D 1 - I - 0x00FAB9 03:BAA9: 2C        .byte $2C   ; 
- D 1 - I - 0x00FABA 03:BAAA: 2D        .byte $2D   ; 
- D 1 - I - 0x00FABB 03:BAAB: 02        .byte $02   ; 
- D 1 - I - 0x00FABC 03:BAAC: 17        .byte $17   ; 
- D 1 - I - 0x00FABD 03:BAAD: 33        .byte $33   ; 
- D 1 - I - 0x00FABE 03:BAAE: 32        .byte $32   ; 
- D 1 - I - 0x00FABF 03:BAAF: 07        .byte $07   ; 
- D 1 - I - 0x00FAC0 03:BAB0: 34        .byte $34   ; 
- D 1 - I - 0x00FAC1 03:BAB1: 2C        .byte $2C   ; 
- D 1 - I - 0x00FAC2 03:BAB2: 30        .byte $30   ; 
- D 1 - I - 0x00FAC3 03:BAB3: 33        .byte $33   ; 
- D 1 - I - 0x00FAC4 03:BAB4: 3F        .byte $3F   ; 
- D 1 - I - 0x00FAC5 03:BAB5: 33        .byte $33   ; 
- D 1 - I - 0x00FAC6 03:BAB6: 2F        .byte $2F   ; 
- D 1 - I - 0x00FAC7 03:BAB7: 30        .byte $30   ; 
- D 1 - I - 0x00FAC8 03:BAB8: 34        .byte $34   ; 
- D 1 - I - 0x00FAC9 03:BAB9: 3D        .byte $3D   ; 
- D 1 - I - 0x00FACA 03:BABA: 3E        .byte $3E   ; 
- D 1 - I - 0x00FACB 03:BABB: 37        .byte $37   ; 
- D 1 - I - 0x00FACC 03:BABC: 3F        .byte $3F   ; 



off_BABD_01:
- D 1 - I - 0x00FACD 03:BABD: 2E        .byte $2E   ; 
- D 1 - I - 0x00FACE 03:BABE: 29        .byte $29   ; 
- D 1 - I - 0x00FACF 03:BABF: 31        .byte $31   ; 
- D 1 - I - 0x00FAD0 03:BAC0: 35        .byte $35   ; 
- D 1 - I - 0x00FAD1 03:BAC1: 27        .byte $27   ; 
- D 1 - I - 0x00FAD2 03:BAC2: 07        .byte $07   ; 
- D 1 - I - 0x00FAD3 03:BAC3: 0E        .byte $0E   ; 
- D 1 - I - 0x00FAD4 03:BAC4: 36        .byte $36   ; 
- D 1 - I - 0x00FAD5 03:BAC5: 2E        .byte $2E   ; 
- D 1 - I - 0x00FAD6 03:BAC6: 2A        .byte $2A   ; 
- D 1 - I - 0x00FAD7 03:BAC7: 30        .byte $30   ; 
- D 1 - I - 0x00FAD8 03:BAC8: 35        .byte $35   ; 
- D 1 - I - 0x00FAD9 03:BAC9: 28        .byte $28   ; 
- D 1 - I - 0x00FADA 03:BACA: 13        .byte $13   ; 
- D 1 - I - 0x00FADB 03:BACB: 3E        .byte $3E   ; 
- D 1 - I - 0x00FADC 03:BACC: 38        .byte $38   ; 
- D 1 - I - 0x00FADD 03:BACD: 3E        .byte $3E   ; 
- D 1 - I - 0x00FADE 03:BACE: 3F        .byte $3F   ; 
- D 1 - I - 0x00FADF 03:BACF: 2B        .byte $2B   ; 
- D 1 - I - 0x00FAE0 03:BAD0: 29        .byte $29   ; 



off_BAD1_02:
- D 1 - I - 0x00FAE1 03:BAD1: 00        .byte $00   ; 
- D 1 - I - 0x00FAE2 03:BAD2: 02        .byte $02   ; 
- D 1 - I - 0x00FAE3 03:BAD3: 39        .byte $39   ; 
- D 1 - I - 0x00FAE4 03:BAD4: 18        .byte $18   ; 
- D 1 - I - 0x00FAE5 03:BAD5: 07        .byte $07   ; 
- D 1 - I - 0x00FAE6 03:BAD6: 3F        .byte $3F   ; 
- D 1 - I - 0x00FAE7 03:BAD7: 33        .byte $33   ; 
- D 1 - I - 0x00FAE8 03:BAD8: 39        .byte $39   ; 
- D 1 - I - 0x00FAE9 03:BAD9: 10        .byte $10   ; 
- D 1 - I - 0x00FAEA 03:BADA: 11        .byte $11   ; 
- D 1 - I - 0x00FAEB 03:BADB: 33        .byte $33   ; 
- D 1 - I - 0x00FAEC 03:BADC: 2C        .byte $2C   ; 
- D 1 - I - 0x00FAED 03:BADD: 13        .byte $13   ; 
- D 1 - I - 0x00FAEE 03:BADE: 14        .byte $14   ; 
- D 1 - I - 0x00FAEF 03:BADF: 33        .byte $33   ; 
- D 1 - I - 0x00FAF0 03:BAE0: 2F        .byte $2F   ; 
- D 1 - I - 0x00FAF1 03:BAE1: 3A        .byte $3A   ; 
- D 1 - I - 0x00FAF2 03:BAE2: 3F        .byte $3F   ; 
- D 1 - I - 0x00FAF3 03:BAE3: 3E        .byte $3E   ; 
- D 1 - I - 0x00FAF4 03:BAE4: 2B        .byte $2B   ; 



off_BAE5_03:
- D 1 - I - 0x00FAF5 03:BAE5: 00        .byte $00   ; 
- D 1 - I - 0x00FAF6 03:BAE6: 02        .byte $02   ; 
- D 1 - I - 0x00FAF7 03:BAE7: 2C        .byte $2C   ; 
- D 1 - I - 0x00FAF8 03:BAE8: 39        .byte $39   ; 
- D 1 - I - 0x00FAF9 03:BAE9: 07        .byte $07   ; 
- D 1 - I - 0x00FAFA 03:BAEA: 2F        .byte $2F   ; 
- D 1 - I - 0x00FAFB 03:BAEB: 30        .byte $30   ; 
- D 1 - I - 0x00FAFC 03:BAEC: 32        .byte $32   ; 
- D 1 - I - 0x00FAFD 03:BAED: 10        .byte $10   ; 
- D 1 - I - 0x00FAFE 03:BAEE: 19        .byte $19   ; 
- D 1 - I - 0x00FAFF 03:BAEF: 31        .byte $31   ; 
- D 1 - I - 0x00FB00 03:BAF0: 33        .byte $33   ; 
- D 1 - I - 0x00FB01 03:BAF1: 13        .byte $13   ; 
- D 1 - I - 0x00FB02 03:BAF2: 18        .byte $18   ; 
- D 1 - I - 0x00FB03 03:BAF3: 33        .byte $33   ; 
- D 1 - I - 0x00FB04 03:BAF4: 2F        .byte $2F   ; 
- D 1 - I - 0x00FB05 03:BAF5: 37        .byte $37   ; 
- D 1 - I - 0x00FB06 03:BAF6: 2A        .byte $2A   ; 
- D 1 - I - 0x00FB07 03:BAF7: 3E        .byte $3E   ; 
- D 1 - I - 0x00FB08 03:BAF8: 3F        .byte $3F   ; 



loc_BAF9:
C D 1 - - - 0x00FB09 03:BAF9: A5 5C     LDA ram_game_script
C - - - - - 0x00FB0B 03:BAFB: 29 40     AND #$40
C - - - - - 0x00FB0D 03:BAFD: D0 0C     BNE bra_BB0B_RTS
C - - - - - 0x00FB0F 03:BAFF: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x00FB12 03:BB02: 29 7F     AND #$7F
C - - - - - 0x00FB14 03:BB04: C9 01     CMP #$01
C - - - - - 0x00FB16 03:BB06: F0 03     BEQ bra_BB0B_RTS
C - - - - - 0x00FB18 03:BB08: 4C 0C BB  JMP loc_BB0C
bra_BB0B_RTS:
C - - - - - 0x00FB1B 03:BB0B: 60        RTS
loc_BB0C:
C D 1 - - - 0x00FB1C 03:BB0C: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x00FB1F 03:BB0F: 29 7F     AND #$7F
C - - - - - 0x00FB21 03:BB11: F0 0B     BEQ bra_BB1E
C - - - - - 0x00FB23 03:BB13: C9 04     CMP #$04
C - - - - - 0x00FB25 03:BB15: F0 07     BEQ bra_BB1E
C - - - - - 0x00FB27 03:BB17: C9 02     CMP #$02
C - - - - - 0x00FB29 03:BB19: F0 36     BEQ bra_BB51
bra_BB1B:
C - - - - - 0x00FB2B 03:BB1B: 4C 94 BB  JMP loc_BB94
bra_BB1E:
C - - - - - 0x00FB2E 03:BB1E: AD 94 04  LDA ram_опция_дождь_ветер
C - - - - - 0x00FB31 03:BB21: 29 0F     AND #$0F
C - - - - - 0x00FB33 03:BB23: F0 F6     BEQ bra_BB1B
C - - - - - 0x00FB35 03:BB25: AD 94 04  LDA ram_опция_дождь_ветер
C - - - - - 0x00FB38 03:BB28: 29 04     AND #$04
C - - - - - 0x00FB3A 03:BB2A: D0 45     BNE bra_BB71
C - - - - - 0x00FB3C 03:BB2C: AD 03 06  LDA ram_0603
C - - - - - 0x00FB3F 03:BB2F: F0 EA     BEQ bra_BB1B
C - - - - - 0x00FB41 03:BB31: 0A        ASL
C - - - - - 0x00FB42 03:BB32: 90 02     BCC bra_BB36
- - - - - - 0x00FB44 03:BB34: A9 FF     LDA #$FF
bra_BB36:
C - - - - - 0x00FB46 03:BB36: 85 1C     STA ram_001C
C - - - - - 0x00FB48 03:BB38: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00FB4B 03:BB3B: C5 1C     CMP ram_001C
C - - - - - 0x00FB4D 03:BB3D: B0 DC     BCS bra_BB1B
C - - - - - 0x00FB4F 03:BB3F: A9 82     LDA #$82
C - - - - - 0x00FB51 03:BB41: 8D 66 04  STA ram_погода_номер_эффекта
C - - - - - 0x00FB54 03:BB44: AD 94 04  LDA ram_опция_дождь_ветер
C - - - - - 0x00FB57 03:BB47: 29 0F     AND #$0F
C - - - - - 0x00FB59 03:BB49: 0A        ASL
C - - - - - 0x00FB5A 03:BB4A: 0A        ASL
C - - - - - 0x00FB5B 03:BB4B: 8D AC 03  STA ram_объем_дождя
C - - - - - 0x00FB5E 03:BB4E: 4C 94 BB  JMP loc_BB94
bra_BB51:
C - - - - - 0x00FB61 03:BB51: AD 94 04  LDA ram_опция_дождь_ветер
C - - - - - 0x00FB64 03:BB54: 29 03     AND #$03
C - - - - - 0x00FB66 03:BB56: 0A        ASL
C - - - - - 0x00FB67 03:BB57: 0A        ASL
C - - - - - 0x00FB68 03:BB58: 18        CLC
C - - - - - 0x00FB69 03:BB59: 69 F3     ADC #$F3
C - - - - - 0x00FB6B 03:BB5B: 85 1C     STA ram_001C
C - - - - - 0x00FB6D 03:BB5D: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00FB70 03:BB60: C5 1C     CMP ram_001C
C - - - - - 0x00FB72 03:BB62: 90 30     BCC bra_BB94
C - - - - - 0x00FB74 03:BB64: A9 00     LDA #$00
C - - - - - 0x00FB76 03:BB66: 8D 66 04  STA ram_погода_номер_эффекта
C - - - - - 0x00FB79 03:BB69: A9 0C     LDA #$0C
C - - - - - 0x00FB7B 03:BB6B: 8D AC 03  STA ram_объем_дождя
C - - - - - 0x00FB7E 03:BB6E: 4C 94 BB  JMP loc_BB94
bra_BB71:
- - - - - - 0x00FB81 03:BB71: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00FB84 03:BB74: C9 A0     CMP #$A0
- - - - - - 0x00FB86 03:BB76: B0 1C     BCS bra_BB94
- - - - - - 0x00FB88 03:BB78: A9 82     LDA #$82
- - - - - - 0x00FB8A 03:BB7A: 8D 66 04  STA ram_погода_номер_эффекта
- - - - - - 0x00FB8D 03:BB7D: A9 0C     LDA #$0C
- - - - - - 0x00FB8F 03:BB7F: 8D AC 03  STA ram_объем_дождя
- - - - - - 0x00FB92 03:BB82: 4C 94 BB  JMP loc_BB94
- - - - - - 0x00FB95 03:BB85: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00FB98 03:BB88: 30 0A     BMI bra_BB94
- - - - - - 0x00FB9A 03:BB8A: A9 00     LDA #$00
- - - - - - 0x00FB9C 03:BB8C: 8D 66 04  STA ram_погода_номер_эффекта
- - - - - - 0x00FB9F 03:BB8F: A9 0C     LDA #$0C
- - - - - - 0x00FBA1 03:BB91: 8D AC 03  STA ram_объем_дождя
bra_BB94:
loc_BB94:
C D 1 - - - 0x00FBA4 03:BB94: AD 94 04  LDA ram_опция_дождь_ветер
C - - - - - 0x00FBA7 03:BB97: C9 40     CMP #$40
C - - - - - 0x00FBA9 03:BB99: B0 2F     BCS bra_BBCA
C - - - - - 0x00FBAB 03:BB9B: 29 30     AND #$30
C - - - - - 0x00FBAD 03:BB9D: F0 66     BEQ bra_BC05
C - - - - - 0x00FBAF 03:BB9F: 4A        LSR
C - - - - - 0x00FBB0 03:BBA0: 4A        LSR
C - - - - - 0x00FBB1 03:BBA1: 4A        LSR
C - - - - - 0x00FBB2 03:BBA2: 85 1C     STA ram_001C
C - - - - - 0x00FBB4 03:BBA4: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00FBB7 03:BBA7: 29 03     AND #$03
C - - - - - 0x00FBB9 03:BBA9: 38        SEC
C - - - - - 0x00FBBA 03:BBAA: E9 02     SBC #$02
C - - - - - 0x00FBBC 03:BBAC: 18        CLC
C - - - - - 0x00FBBD 03:BBAD: 65 1C     ADC ram_001C
C - - - - - 0x00FBBF 03:BBAF: 8D FD 05  STA ram_сила_ветра
loc_BBB2:
C - - - - - 0x00FBC2 03:BBB2: AD 95 04  LDA ram_направление_молния_смерч
C - - - - - 0x00FBC5 03:BBB5: 29 03     AND #$03
C - - - - - 0x00FBC7 03:BBB7: F0 14     BEQ bra_BBCD
C - - - - - 0x00FBC9 03:BBB9: C9 02     CMP #$02
C - - - - - 0x00FBCB 03:BBBB: F0 05     BEQ bra_BBC2
C - - - - - 0x00FBCD 03:BBBD: AD 45 00  LDA a: ram_рандом
C - - - - - 0x00FBD0 03:BBC0: 10 0B     BPL bra_BBCD
bra_BBC2:
C - - - - - 0x00FBD2 03:BBC2: A9 40     LDA #$40
C - - - - - 0x00FBD4 03:BBC4: 8D FE 05  STA ram_сторона_ветра_дождя
C - - - - - 0x00FBD7 03:BBC7: 4C D2 BB  JMP loc_BBD2
bra_BBCA:
- - - - - - 0x00FBDA 03:BBCA: 4C 19 BC  JMP loc_BC19
bra_BBCD:
C - - - - - 0x00FBDD 03:BBCD: A9 C0     LDA #$C0
C - - - - - 0x00FBDF 03:BBCF: 8D FE 05  STA ram_сторона_ветра_дождя
loc_BBD2:
C D 1 - - - 0x00FBE2 03:BBD2: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00FBE5 03:BBD5: 30 15     BMI bra_BBEC
C - - - - - 0x00FBE7 03:BBD7: AC FE 05  LDY ram_сторона_ветра_дождя
C - - - - - 0x00FBEA 03:BBDA: 84 1C     STY ram_001C
C - - - - - 0x00FBEC 03:BBDC: 29 60     AND #$60
C - - - - - 0x00FBEE 03:BBDE: 4D FE 05  EOR ram_сторона_ветра_дождя
C - - - - - 0x00FBF1 03:BBE1: 85 1D     STA ram_001D
C - - - - - 0x00FBF3 03:BBE3: 29 60     AND #$60
C - - - - - 0x00FBF5 03:BBE5: D0 02     BNE bra_BBE9
C - - - - - 0x00FBF7 03:BBE7: A5 1C     LDA ram_001C
bra_BBE9:
C - - - - - 0x00FBF9 03:BBE9: 8D FE 05  STA ram_сторона_ветра_дождя
bra_BBEC:
C - - - - - 0x00FBFC 03:BBEC: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x00FBFF 03:BBEF: 29 7F     AND #$7F
C - - - - - 0x00FC01 03:BBF1: C9 02     CMP #$02
C - - - - - 0x00FC03 03:BBF3: F0 10     BEQ bra_BC05
C - - - - - 0x00FC05 03:BBF5: AD FD 05  LDA ram_сила_ветра
C - - - - - 0x00FC08 03:BBF8: F0 0E     BEQ bra_BC08
C - - - - - 0x00FC0A 03:BBFA: 18        CLC
C - - - - - 0x00FC0B 03:BBFB: 69 05     ADC #$05
C - - - - - 0x00FC0D 03:BBFD: 8D AC 03  STA ram_объем_дождя
C - - - - - 0x00FC10 03:BC00: A9 84     LDA #$84
C - - - - - 0x00FC12 03:BC02: 8D 66 04  STA ram_погода_номер_эффекта
bra_BC05:
C - - - - - 0x00FC15 03:BC05: 4C 40 BC  JMP loc_BC40
bra_BC08:
C - - - - - 0x00FC18 03:BC08: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x00FC1B 03:BC0B: 29 7F     AND #$7F
C - - - - - 0x00FC1D 03:BC0D: C9 04     CMP #$04
C - - - - - 0x00FC1F 03:BC0F: D0 F4     BNE bra_BC05
C - - - - - 0x00FC21 03:BC11: A9 00     LDA #$00
C - - - - - 0x00FC23 03:BC13: 8D 66 04  STA ram_погода_номер_эффекта
C - - - - - 0x00FC26 03:BC16: 4C 40 BC  JMP loc_BC40



loc_BC19:
- - - - - - 0x00FC29 03:BC19: AD FD 05  LDA ram_сила_ветра
- - - - - - 0x00FC2C 03:BC1C: D0 15     BNE bra_BC33
- - - - - - 0x00FC2E 03:BC1E: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00FC31 03:BC21: C9 C0     CMP #$C0
- - - - - - 0x00FC33 03:BC23: B0 1B     BCS bra_BC40
bra_BC25:
- - - - - - 0x00FC35 03:BC25: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00FC38 03:BC28: 29 03     AND #$03
- - - - - - 0x00FC3A 03:BC2A: 18        CLC
- - - - - - 0x00FC3B 03:BC2B: 69 06     ADC #$06
- - - - - - 0x00FC3D 03:BC2D: 8D FD 05  STA ram_сила_ветра
- - - - - - 0x00FC40 03:BC30: 4C B2 BB  JMP loc_BBB2
bra_BC33:
- - - - - - 0x00FC43 03:BC33: 20 05 C0  JSR sub_0x01C015
- - - - - - 0x00FC46 03:BC36: 10 ED     BPL bra_BC25
- - - - - - 0x00FC48 03:BC38: A9 00     LDA #$00
- - - - - - 0x00FC4A 03:BC3A: 8D FD 05  STA ram_сила_ветра
- - - - - - 0x00FC4D 03:BC3D: 4C B2 BB  JMP loc_BBB2
loc_BC40:
bra_BC40:
C D 1 - - - 0x00FC50 03:BC40: 20 84 BC  JSR sub_BC84
C - - - - - 0x00FC53 03:BC43: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x00FC56 03:BC46: C9 84     CMP #$84
C - - - - - 0x00FC58 03:BC48: D0 05     BNE bra_BC4F
C - - - - - 0x00FC5A 03:BC4A: A9 41     LDA #$41
C - - - - - 0x00FC5C 03:BC4C: 20 02 C0  JSR sub_0x01C012
bra_BC4F:
C - - - - - 0x00FC5F 03:BC4F: AD 95 04  LDA ram_направление_молния_смерч
C - - - - - 0x00FC62 03:BC52: 29 30     AND #$30
C - - - - - 0x00FC64 03:BC54: F0 12     BEQ bra_BC68
C - - - - - 0x00FC66 03:BC56: 4A        LSR
C - - - - - 0x00FC67 03:BC57: 4A        LSR
C - - - - - 0x00FC68 03:BC58: 4A        LSR
C - - - - - 0x00FC69 03:BC59: 4A        LSR
C - - - - - 0x00FC6A 03:BC5A: A8        TAY
C - - - - - 0x00FC6B 03:BC5B: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00FC6E 03:BC5E: D9 80 BC  CMP tbl_BC80,Y
C - - - - - 0x00FC71 03:BC61: 90 05     BCC bra_BC68
C - - - - - 0x00FC73 03:BC63: A9 83     LDA #$83
C - - - - - 0x00FC75 03:BC65: 8D 66 04  STA ram_погода_номер_эффекта
bra_BC68:
C - - - - - 0x00FC78 03:BC68: AD 95 04  LDA ram_направление_молния_смерч
C - - - - - 0x00FC7B 03:BC6B: 29 0C     AND #$0C
C - - - - - 0x00FC7D 03:BC6D: F0 10     BEQ bra_BC7F_RTS
C - - - - - 0x00FC7F 03:BC6F: 4A        LSR
C - - - - - 0x00FC80 03:BC70: 4A        LSR
C - - - - - 0x00FC81 03:BC71: A8        TAY
C - - - - - 0x00FC82 03:BC72: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00FC85 03:BC75: D9 80 BC  CMP tbl_BC80,Y
C - - - - - 0x00FC88 03:BC78: 90 05     BCC bra_BC7F_RTS
C - - - - - 0x00FC8A 03:BC7A: A9 81     LDA #$81
C - - - - - 0x00FC8C 03:BC7C: 8D 66 04  STA ram_погода_номер_эффекта
bra_BC7F_RTS:
C - - - - - 0x00FC8F 03:BC7F: 60        RTS



tbl_BC80:
- - - - - - 0x00FC90 03:BC80: FF        .byte $FF   ; 
- D 1 - - - 0x00FC91 03:BC81: E0        .byte $E0   ; 
- - - - - - 0x00FC92 03:BC82: A0        .byte $A0   ; 
- - - - - - 0x00FC93 03:BC83: 60        .byte $60   ; 



sub_BC84:
C - - - - - 0x00FC94 03:BC84: AD FD 05  LDA ram_сила_ветра
C - - - - - 0x00FC97 03:BC87: 85 1C     STA ram_001C
C - - - - - 0x00FC99 03:BC89: 49 FF     EOR #$FF
C - - - - - 0x00FC9B 03:BC8B: 18        CLC
C - - - - - 0x00FC9C 03:BC8C: 69 01     ADC #$01
C - - - - - 0x00FC9E 03:BC8E: 85 1D     STA ram_001D
C - - - - - 0x00FCA0 03:BC90: AD FE 05  LDA ram_сторона_ветра_дождя
C - - - - - 0x00FCA3 03:BC93: C9 20     CMP #$20
C - - - - - 0x00FCA5 03:BC95: F0 1B     BEQ bra_BCB2
C - - - - - 0x00FCA7 03:BC97: C9 40     CMP #$40
C - - - - - 0x00FCA9 03:BC99: F0 24     BEQ bra_BCBF
C - - - - - 0x00FCAB 03:BC9B: C9 60     CMP #$60
C - - - - - 0x00FCAD 03:BC9D: F0 2D     BEQ bra_BCCC
C - - - - - 0x00FCAF 03:BC9F: C9 A0     CMP #$A0
C - - - - - 0x00FCB1 03:BCA1: F0 36     BEQ bra_BCD9
C - - - - - 0x00FCB3 03:BCA3: C9 C0     CMP #$C0
C - - - - - 0x00FCB5 03:BCA5: F0 3F     BEQ bra_BCE6
C - - - - - 0x00FCB7 03:BCA7: A5 1D     LDA ram_001D
C - - - - - 0x00FCB9 03:BCA9: 8D 40 01  STA ram_0140
C - - - - - 0x00FCBC 03:BCAC: 8D 41 01  STA ram_0141
C - - - - - 0x00FCBF 03:BCAF: 4C F0 BC  JMP loc_BCF0_RTS
bra_BCB2:
C - - - - - 0x00FCC2 03:BCB2: A5 1C     LDA ram_001C
C - - - - - 0x00FCC4 03:BCB4: 8D 40 01  STA ram_0140
C - - - - - 0x00FCC7 03:BCB7: A5 1D     LDA ram_001D
C - - - - - 0x00FCC9 03:BCB9: 8D 41 01  STA ram_0141
C - - - - - 0x00FCCC 03:BCBC: 4C F0 BC  JMP loc_BCF0_RTS
bra_BCBF:
C - - - - - 0x00FCCF 03:BCBF: A5 1C     LDA ram_001C
C - - - - - 0x00FCD1 03:BCC1: 8D 40 01  STA ram_0140
C - - - - - 0x00FCD4 03:BCC4: A9 00     LDA #$00
C - - - - - 0x00FCD6 03:BCC6: 8D 41 01  STA ram_0141
C - - - - - 0x00FCD9 03:BCC9: 4C F0 BC  JMP loc_BCF0_RTS
bra_BCCC:
C - - - - - 0x00FCDC 03:BCCC: A5 1C     LDA ram_001C
C - - - - - 0x00FCDE 03:BCCE: 8D 40 01  STA ram_0140
C - - - - - 0x00FCE1 03:BCD1: A5 1C     LDA ram_001C
C - - - - - 0x00FCE3 03:BCD3: 8D 41 01  STA ram_0141
C - - - - - 0x00FCE6 03:BCD6: 4C F0 BC  JMP loc_BCF0_RTS
bra_BCD9:
- - - - - - 0x00FCE9 03:BCD9: A5 1D     LDA ram_001D
- - - - - - 0x00FCEB 03:BCDB: 8D 40 01  STA ram_0140
- - - - - - 0x00FCEE 03:BCDE: A5 1D     LDA ram_001D
- - - - - - 0x00FCF0 03:BCE0: 8D 41 01  STA ram_0141
- - - - - - 0x00FCF3 03:BCE3: 4C F0 BC  JMP loc_BCF0_RTS
bra_BCE6:
C - - - - - 0x00FCF6 03:BCE6: A5 1D     LDA ram_001D
C - - - - - 0x00FCF8 03:BCE8: 8D 40 01  STA ram_0140
C - - - - - 0x00FCFB 03:BCEB: A9 00     LDA #$00
C - - - - - 0x00FCFD 03:BCED: 8D 41 01  STA ram_0141
loc_BCF0_RTS:
C D 1 - - - 0x00FD00 03:BCF0: 60        RTS



loc_BCF1:
C D 1 - - - 0x00FD01 03:BCF1: AD AD 03  LDA ram_объект_камеры
C - - - - - 0x00FD04 03:BCF4: 29 0F     AND #$0F
C - - - - - 0x00FD06 03:BCF6: A8        TAY
C - - - - - 0x00FD07 03:BCF7: AD AD 03  LDA ram_объект_камеры
C - - - - - 0x00FD0A 03:BCFA: 10 03     BPL bra_BCFF
C - - - - - 0x00FD0C 03:BCFC: 4C C2 BD  JMP loc_BDC2
bra_BCFF:
C - - - - - 0x00FD0F 03:BCFF: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00FD12 03:BD02: 38        SEC
C - - - - - 0x00FD13 03:BD03: E9 80     SBC #$80
C - - - - - 0x00FD15 03:BD05: 85 1C     STA ram_001C
C - - - - - 0x00FD17 03:BD07: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x00FD1A 03:BD0A: E9 00     SBC #$00
C - - - - - 0x00FD1C 03:BD0C: 85 1D     STA ram_001D
C - - - - - 0x00FD1E 03:BD0E: AD AD 03  LDA ram_объект_камеры
C - - - - - 0x00FD21 03:BD11: 29 40     AND #$40
C - - - - - 0x00FD23 03:BD13: D0 3C     BNE bra_BD51
C - - - - - 0x00FD25 03:BD15: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x00FD28 03:BD18: 29 01     AND #$01
C - - - - - 0x00FD2A 03:BD1A: F0 10     BEQ bra_BD2C
C - - - - - 0x00FD2C 03:BD1C: AD F6 05  LDA ram_смещение_камеры
C - - - - - 0x00FD2F 03:BD1F: C9 D0     CMP #$D0
C - - - - - 0x00FD31 03:BD21: F0 16     BEQ bra_BD39
C - - - - - 0x00FD33 03:BD23: 38        SEC
C - - - - - 0x00FD34 03:BD24: E9 08     SBC #$08
C - - - - - 0x00FD36 03:BD26: 8D F6 05  STA ram_смещение_камеры
C - - - - - 0x00FD39 03:BD29: 4C 39 BD  JMP loc_BD39
bra_BD2C:
C - - - - - 0x00FD3C 03:BD2C: AD F6 05  LDA ram_смещение_камеры
C - - - - - 0x00FD3F 03:BD2F: C9 30     CMP #$30
C - - - - - 0x00FD41 03:BD31: F0 06     BEQ bra_BD39
C - - - - - 0x00FD43 03:BD33: 18        CLC
C - - - - - 0x00FD44 03:BD34: 69 08     ADC #$08
C - - - - - 0x00FD46 03:BD36: 8D F6 05  STA ram_смещение_камеры
bra_BD39:
loc_BD39:
C D 1 - - - 0x00FD49 03:BD39: AD F6 05  LDA ram_смещение_камеры
C - - - - - 0x00FD4C 03:BD3C: 10 02     BPL bra_BD40
C - - - - - 0x00FD4E 03:BD3E: C6 1D     DEC ram_001D
bra_BD40:
C - - - - - 0x00FD50 03:BD40: A5 1C     LDA ram_001C
C - - - - - 0x00FD52 03:BD42: 18        CLC
C - - - - - 0x00FD53 03:BD43: 6D F6 05  ADC ram_смещение_камеры
C - - - - - 0x00FD56 03:BD46: 85 1C     STA ram_001C
C - - - - - 0x00FD58 03:BD48: A5 1D     LDA ram_001D
C - - - - - 0x00FD5A 03:BD4A: 69 00     ADC #$00
C - - - - - 0x00FD5C 03:BD4C: 85 1D     STA ram_001D
C - - - - - 0x00FD5E 03:BD4E: 4C 56 BD  JMP loc_BD56
bra_BD51:
C - - - - - 0x00FD61 03:BD51: A9 00     LDA #$00
C - - - - - 0x00FD63 03:BD53: 8D F6 05  STA ram_смещение_камеры
loc_BD56:
C D 1 - - - 0x00FD66 03:BD56: AD EC 00  LDA a: ram_camera_X_lo
C - - - - - 0x00FD69 03:BD59: 38        SEC
C - - - - - 0x00FD6A 03:BD5A: E5 1C     SBC ram_001C
C - - - - - 0x00FD6C 03:BD5C: 85 1C     STA ram_001C
C - - - - - 0x00FD6E 03:BD5E: AD ED 00  LDA a: ram_camera_X_hi
C - - - - - 0x00FD71 03:BD61: E5 1D     SBC ram_001D
C - - - - - 0x00FD73 03:BD63: 85 1D     STA ram_001D
C - - - - - 0x00FD75 03:BD65: 10 28     BPL bra_BD8F
C - - - - - 0x00FD77 03:BD67: A5 1D     LDA ram_001D
C - - - - - 0x00FD79 03:BD69: C9 FF     CMP #$FF
C - - - - - 0x00FD7B 03:BD6B: B0 0B     BCS bra_BD78
C - - - - - 0x00FD7D 03:BD6D: A9 FF     LDA #$FF
C - - - - - 0x00FD7F 03:BD6F: 85 1D     STA ram_001D
C - - - - - 0x00FD81 03:BD71: A9 F8     LDA #$F8
C - - - - - 0x00FD83 03:BD73: 85 1C     STA ram_001C
C - - - - - 0x00FD85 03:BD75: 4C B1 BD  JMP loc_BDB1
bra_BD78:
C - - - - - 0x00FD88 03:BD78: A9 FF     LDA #$FF
C - - - - - 0x00FD8A 03:BD7A: 85 1D     STA ram_001D
C - - - - - 0x00FD8C 03:BD7C: A5 1C     LDA ram_001C
C - - - - - 0x00FD8E 03:BD7E: 38        SEC
C - - - - - 0x00FD8F 03:BD7F: 6A        ROR
C - - - - - 0x00FD90 03:BD80: 38        SEC
C - - - - - 0x00FD91 03:BD81: 6A        ROR
C - - - - - 0x00FD92 03:BD82: 38        SEC
C - - - - - 0x00FD93 03:BD83: 6A        ROR
C - - - - - 0x00FD94 03:BD84: C9 F8     CMP #$F8
C - - - - - 0x00FD96 03:BD86: B0 02     BCS bra_BD8A
C - - - - - 0x00FD98 03:BD88: A9 F8     LDA #$F8
bra_BD8A:
C - - - - - 0x00FD9A 03:BD8A: 85 1C     STA ram_001C
C - - - - - 0x00FD9C 03:BD8C: 4C B1 BD  JMP loc_BDB1
bra_BD8F:
C - - - - - 0x00FD9F 03:BD8F: A5 1D     LDA ram_001D
C - - - - - 0x00FDA1 03:BD91: C9 01     CMP #$01
C - - - - - 0x00FDA3 03:BD93: 90 0B     BCC bra_BDA0
C - - - - - 0x00FDA5 03:BD95: A9 00     LDA #$00
C - - - - - 0x00FDA7 03:BD97: 85 1D     STA ram_001D
C - - - - - 0x00FDA9 03:BD99: A9 08     LDA #$08
C - - - - - 0x00FDAB 03:BD9B: 85 1C     STA ram_001C
C - - - - - 0x00FDAD 03:BD9D: 4C B1 BD  JMP loc_BDB1
bra_BDA0:
C - - - - - 0x00FDB0 03:BDA0: A9 00     LDA #$00
C - - - - - 0x00FDB2 03:BDA2: 85 1D     STA ram_001D
C - - - - - 0x00FDB4 03:BDA4: A5 1C     LDA ram_001C
C - - - - - 0x00FDB6 03:BDA6: 4A        LSR
C - - - - - 0x00FDB7 03:BDA7: 4A        LSR
C - - - - - 0x00FDB8 03:BDA8: 4A        LSR
C - - - - - 0x00FDB9 03:BDA9: C9 08     CMP #$08
C - - - - - 0x00FDBB 03:BDAB: 90 02     BCC bra_BDAF
C - - - - - 0x00FDBD 03:BDAD: A9 08     LDA #$08
bra_BDAF:
C - - - - - 0x00FDBF 03:BDAF: 85 1C     STA ram_001C
loc_BDB1:
C D 1 - - - 0x00FDC1 03:BDB1: AD EC 00  LDA a: ram_camera_X_lo
C - - - - - 0x00FDC4 03:BDB4: 38        SEC
C - - - - - 0x00FDC5 03:BDB5: E5 1C     SBC ram_001C
C - - - - - 0x00FDC7 03:BDB7: 8D F0 00  STA a: ram_copy_camera_X_lo
C - - - - - 0x00FDCA 03:BDBA: AD ED 00  LDA a: ram_camera_X_hi
C - - - - - 0x00FDCD 03:BDBD: E5 1D     SBC ram_001D
C - - - - - 0x00FDCF 03:BDBF: 8D F1 00  STA a: ram_copy_camera_X_hi
loc_BDC2:
C D 1 - - - 0x00FDD2 03:BDC2: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00FDD5 03:BDC5: 38        SEC
C - - - - - 0x00FDD6 03:BDC6: E9 80     SBC #$80
C - - - - - 0x00FDD8 03:BDC8: 85 1C     STA ram_001C
C - - - - - 0x00FDDA 03:BDCA: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x00FDDD 03:BDCD: E9 00     SBC #$00
C - - - - - 0x00FDDF 03:BDCF: 85 1D     STA ram_001D
C - - - - - 0x00FDE1 03:BDD1: AD EE 00  LDA a: ram_camera_Y_lo
C - - - - - 0x00FDE4 03:BDD4: 38        SEC
C - - - - - 0x00FDE5 03:BDD5: E5 1C     SBC ram_001C
C - - - - - 0x00FDE7 03:BDD7: 85 1C     STA ram_001C
C - - - - - 0x00FDE9 03:BDD9: AD EF 00  LDA a: ram_camera_Y_hi
C - - - - - 0x00FDEC 03:BDDC: E5 1D     SBC ram_001D
C - - - - - 0x00FDEE 03:BDDE: 85 1D     STA ram_001D
C - - - - - 0x00FDF0 03:BDE0: 10 28     BPL bra_BE0A
C - - - - - 0x00FDF2 03:BDE2: A5 1D     LDA ram_001D
C - - - - - 0x00FDF4 03:BDE4: C9 FF     CMP #$FF
C - - - - - 0x00FDF6 03:BDE6: B0 0B     BCS bra_BDF3
- - - - - - 0x00FDF8 03:BDE8: A9 FF     LDA #$FF
- - - - - - 0x00FDFA 03:BDEA: 85 1D     STA ram_001D
- - - - - - 0x00FDFC 03:BDEC: A9 F8     LDA #$F8
- - - - - - 0x00FDFE 03:BDEE: 85 1C     STA ram_001C
- - - - - - 0x00FE00 03:BDF0: 4C 2C BE  JMP loc_BE2C
bra_BDF3:
C - - - - - 0x00FE03 03:BDF3: A9 FF     LDA #$FF
C - - - - - 0x00FE05 03:BDF5: 85 1D     STA ram_001D
C - - - - - 0x00FE07 03:BDF7: A5 1C     LDA ram_001C
C - - - - - 0x00FE09 03:BDF9: 38        SEC
C - - - - - 0x00FE0A 03:BDFA: 6A        ROR
C - - - - - 0x00FE0B 03:BDFB: 38        SEC
C - - - - - 0x00FE0C 03:BDFC: 6A        ROR
C - - - - - 0x00FE0D 03:BDFD: 38        SEC
C - - - - - 0x00FE0E 03:BDFE: 6A        ROR
C - - - - - 0x00FE0F 03:BDFF: C9 F8     CMP #$F8
C - - - - - 0x00FE11 03:BE01: B0 02     BCS bra_BE05
C - - - - - 0x00FE13 03:BE03: A9 F8     LDA #$F8
bra_BE05:
C - - - - - 0x00FE15 03:BE05: 85 1C     STA ram_001C
C - - - - - 0x00FE17 03:BE07: 4C 2C BE  JMP loc_BE2C
bra_BE0A:
C - - - - - 0x00FE1A 03:BE0A: A5 1D     LDA ram_001D
C - - - - - 0x00FE1C 03:BE0C: C9 01     CMP #$01
C - - - - - 0x00FE1E 03:BE0E: 90 0B     BCC bra_BE1B
- - - - - - 0x00FE20 03:BE10: A9 00     LDA #$00
- - - - - - 0x00FE22 03:BE12: 85 1D     STA ram_001D
- - - - - - 0x00FE24 03:BE14: A9 08     LDA #$08
- - - - - - 0x00FE26 03:BE16: 85 1C     STA ram_001C
- - - - - - 0x00FE28 03:BE18: 4C 2C BE  JMP loc_BE2C
bra_BE1B:
C - - - - - 0x00FE2B 03:BE1B: A9 00     LDA #$00
C - - - - - 0x00FE2D 03:BE1D: 85 1D     STA ram_001D
C - - - - - 0x00FE2F 03:BE1F: A5 1C     LDA ram_001C
C - - - - - 0x00FE31 03:BE21: 4A        LSR
C - - - - - 0x00FE32 03:BE22: 4A        LSR
C - - - - - 0x00FE33 03:BE23: 4A        LSR
C - - - - - 0x00FE34 03:BE24: C9 08     CMP #$08
C - - - - - 0x00FE36 03:BE26: 90 02     BCC bra_BE2A
C - - - - - 0x00FE38 03:BE28: A9 08     LDA #$08
bra_BE2A:
C - - - - - 0x00FE3A 03:BE2A: 85 1C     STA ram_001C
loc_BE2C:
C D 1 - - - 0x00FE3C 03:BE2C: AD EE 00  LDA a: ram_camera_Y_lo
C - - - - - 0x00FE3F 03:BE2F: 38        SEC
C - - - - - 0x00FE40 03:BE30: E5 1C     SBC ram_001C
C - - - - - 0x00FE42 03:BE32: 8D F2 00  STA a: ram_copy_camera_Y_lo
C - - - - - 0x00FE45 03:BE35: AD EF 00  LDA a: ram_camera_Y_hi
C - - - - - 0x00FE48 03:BE38: E5 1D     SBC ram_001D
C - - - - - 0x00FE4A 03:BE3A: 8D F3 00  STA a: ram_copy_camera_Y_hi
C - - - - - 0x00FE4D 03:BE3D: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00FE4F 03:BE3F: C9 05     CMP #$05
C - - - - - 0x00FE51 03:BE41: F0 04     BEQ bra_BE47
C - - - - - 0x00FE53 03:BE43: C9 08     CMP #$08
C - - - - - 0x00FE55 03:BE45: 90 37     BCC bra_BE7E
bra_BE47:
C - - - - - 0x00FE57 03:BE47: AD F1 00  LDA a: ram_copy_camera_X_hi
C - - - - - 0x00FE5A 03:BE4A: C9 00     CMP #$00
C - - - - - 0x00FE5C 03:BE4C: D0 14     BNE bra_BE62
C - - - - - 0x00FE5E 03:BE4E: AD F0 00  LDA a: ram_copy_camera_X_lo
C - - - - - 0x00FE61 03:BE51: C9 30     CMP #$30
C - - - - - 0x00FE63 03:BE53: B0 1E     BCS bra_BE73
C - - - - - 0x00FE65 03:BE55: A9 30     LDA #$30
C - - - - - 0x00FE67 03:BE57: 8D F0 00  STA a: ram_copy_camera_X_lo
C - - - - - 0x00FE6A 03:BE5A: A9 00     LDA #$00
C - - - - - 0x00FE6C 03:BE5C: 8D F1 00  STA a: ram_copy_camera_X_hi
C - - - - - 0x00FE6F 03:BE5F: 4C 73 BE  JMP loc_BE73
bra_BE62:
C - - - - - 0x00FE72 03:BE62: AD F0 00  LDA a: ram_copy_camera_X_lo
C - - - - - 0x00FE75 03:BE65: C9 D0     CMP #$D0
C - - - - - 0x00FE77 03:BE67: 90 0A     BCC bra_BE73
C - - - - - 0x00FE79 03:BE69: A9 01     LDA #$01
C - - - - - 0x00FE7B 03:BE6B: 8D F1 00  STA a: ram_copy_camera_X_hi
C - - - - - 0x00FE7E 03:BE6E: A9 D0     LDA #$D0
C - - - - - 0x00FE80 03:BE70: 8D F0 00  STA a: ram_copy_camera_X_lo
bra_BE73:
loc_BE73:
C D 1 - - - 0x00FE83 03:BE73: A9 00     LDA #$00
C - - - - - 0x00FE85 03:BE75: 8D F2 00  STA a: ram_copy_camera_Y_lo
C - - - - - 0x00FE88 03:BE78: 8D F3 00  STA a: ram_copy_camera_Y_hi
C - - - - - 0x00FE8B 03:BE7B: 4C D3 BE  JMP loc_BED3_RTS
bra_BE7E:
C - - - - - 0x00FE8E 03:BE7E: AD F1 00  LDA a: ram_copy_camera_X_hi
C - - - - - 0x00FE91 03:BE81: C9 01     CMP #$01
C - - - - - 0x00FE93 03:BE83: B0 11     BCS bra_BE96
C - - - - - 0x00FE95 03:BE85: AD F0 00  LDA a: ram_copy_camera_X_lo
C - - - - - 0x00FE98 03:BE88: C9 40     CMP #$40
C - - - - - 0x00FE9A 03:BE8A: B0 0A     BCS bra_BE96
C - - - - - 0x00FE9C 03:BE8C: A9 40     LDA #$40
C - - - - - 0x00FE9E 03:BE8E: 8D F0 00  STA a: ram_copy_camera_X_lo
C - - - - - 0x00FEA1 03:BE91: A9 00     LDA #$00
C - - - - - 0x00FEA3 03:BE93: 8D F1 00  STA a: ram_copy_camera_X_hi
bra_BE96:
C - - - - - 0x00FEA6 03:BE96: AD F1 00  LDA a: ram_copy_camera_X_hi
C - - - - - 0x00FEA9 03:BE99: C9 02     CMP #$02
C - - - - - 0x00FEAB 03:BE9B: 90 11     BCC bra_BEAE
C - - - - - 0x00FEAD 03:BE9D: AD F0 00  LDA a: ram_copy_camera_X_lo
C - - - - - 0x00FEB0 03:BEA0: C9 C0     CMP #$C0
C - - - - - 0x00FEB2 03:BEA2: 90 0A     BCC bra_BEAE
C - - - - - 0x00FEB4 03:BEA4: A9 02     LDA #$02
C - - - - - 0x00FEB6 03:BEA6: 8D F1 00  STA a: ram_copy_camera_X_hi
C - - - - - 0x00FEB9 03:BEA9: A9 C0     LDA #$C0
C - - - - - 0x00FEBB 03:BEAB: 8D F0 00  STA a: ram_copy_camera_X_lo
bra_BEAE:
C - - - - - 0x00FEBE 03:BEAE: AD F3 00  LDA a: ram_copy_camera_Y_hi
C - - - - - 0x00FEC1 03:BEB1: 10 08     BPL bra_BEBB
C - - - - - 0x00FEC3 03:BEB3: A9 00     LDA #$00
C - - - - - 0x00FEC5 03:BEB5: 8D F2 00  STA a: ram_copy_camera_Y_lo
C - - - - - 0x00FEC8 03:BEB8: 8D F3 00  STA a: ram_copy_camera_Y_hi
bra_BEBB:
C - - - - - 0x00FECB 03:BEBB: AD F3 00  LDA a: ram_copy_camera_Y_hi
C - - - - - 0x00FECE 03:BEBE: C9 01     CMP #$01
C - - - - - 0x00FED0 03:BEC0: B0 07     BCS bra_BEC9
C - - - - - 0x00FED2 03:BEC2: AD F2 00  LDA a: ram_copy_camera_Y_lo
C - - - - - 0x00FED5 03:BEC5: C9 AF     CMP #$AF
C - - - - - 0x00FED7 03:BEC7: 90 0A     BCC bra_BED3_RTS
bra_BEC9:
C - - - - - 0x00FED9 03:BEC9: A9 AF     LDA #$AF
C - - - - - 0x00FEDB 03:BECB: 8D F2 00  STA a: ram_copy_camera_Y_lo
C - - - - - 0x00FEDE 03:BECE: A9 00     LDA #$00
C - - - - - 0x00FEE0 03:BED0: 8D F3 00  STA a: ram_copy_camera_Y_hi
bra_BED3_RTS:
loc_BED3_RTS:
C D 1 - - - 0x00FEE3 03:BED3: 60        RTS



loc_BED4:
C D 1 - - - 0x00FEE4 03:BED4: A5 58     LDA ram_номер_экрана
C - - - - - 0x00FEE6 03:BED6: D0 3A     BNE bra_BF12_RTS
C - - - - - 0x00FEE8 03:BED8: 24 5C     BIT ram_game_script
C - - - - - 0x00FEEA 03:BEDA: 50 16     BVC bra_BEF2
C - - - - - 0x00FEEC 03:BEDC: A5 5C     LDA ram_game_script
C - - - - - 0x00FEEE 03:BEDE: 29 0F     AND #$0F
C - - - - - 0x00FEF0 03:BEE0: D0 07     BNE bra_BEE9
C - - - - - 0x00FEF2 03:BEE2: AD 59 05  LDA ram_0559
C - - - - - 0x00FEF5 03:BEE5: F0 0B     BEQ bra_BEF2
C - - - - - 0x00FEF7 03:BEE7: D0 04     BNE bra_BEED
bra_BEE9:
C - - - - - 0x00FEF9 03:BEE9: 29 02     AND #$02
C - - - - - 0x00FEFB 03:BEEB: F0 05     BEQ bra_BEF2
bra_BEED:
C - - - - - 0x00FEFD 03:BEED: A9 11     LDA #$11
C - - - - - 0x00FEFF 03:BEEF: 4C 0F BF  JMP loc_BF0F
bra_BEF2:
C - - - - - 0x00FF02 03:BEF2: A0 00     LDY #$00
C - - - - - 0x00FF04 03:BEF4: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x00FF07 03:BEF7: 29 7F     AND #$7F
C - - - - - 0x00FF09 03:BEF9: C9 01     CMP #$01
C - - - - - 0x00FF0B 03:BEFB: F0 0D     BEQ bra_BF0A
C - - - - - 0x00FF0D 03:BEFD: AD 80 00  LDA a: ram_номер_анимации_мяча
C - - - - - 0x00FF10 03:BF00: 29 7F     AND #$7F
bra_BF02:
C - - - - - 0x00FF12 03:BF02: C8        INY
C - - - - - 0x00FF13 03:BF03: D9 13 BF  CMP tbl_BF13,Y
C - - - - - 0x00FF16 03:BF06: F0 02     BEQ bra_BF0A
C - - - - - 0x00FF18 03:BF08: B0 F8     BCS bra_BF02
bra_BF0A:
C - - - - - 0x00FF1A 03:BF0A: B9 1B BF  LDA tbl_BF1B,Y
C - - - - - 0x00FF1D 03:BF0D: 30 03     BMI bra_BF12_RTS
loc_BF0F:
C D 1 - - - 0x00FF1F 03:BF0F: 8D BB 05  STA ram_банк_спрайтов + $03
bra_BF12_RTS:
C - - - - - 0x00FF22 03:BF12: 60        RTS



tbl_BF13:
- - - - - - 0x00FF23 03:BF13: 00        .byte $00   ; 
- D 1 - - - 0x00FF24 03:BF14: 06        .byte $06   ; 
- D 1 - - - 0x00FF25 03:BF15: 07        .byte $07   ; 
- D 1 - - - 0x00FF26 03:BF16: 19        .byte $19   ; 
- D 1 - - - 0x00FF27 03:BF17: 2C        .byte $2C   ; 
- D 1 - - - 0x00FF28 03:BF18: 38        .byte $38   ; 
- D 1 - - - 0x00FF29 03:BF19: 45        .byte $45   ; 
- D 1 - - - 0x00FF2A 03:BF1A: FF        .byte $FF   ; 



tbl_BF1B:
- D 1 - - - 0x00FF2B 03:BF1B: 0A        .byte $0A   ; 
- D 1 - - - 0x00FF2C 03:BF1C: 09        .byte $09   ; 
- D 1 - - - 0x00FF2D 03:BF1D: 0A        .byte $0A   ; 
- D 1 - - - 0x00FF2E 03:BF1E: 0B        .byte $0B   ; 
- D 1 - - - 0x00FF2F 03:BF1F: 0C        .byte $0C   ; 
- D 1 - - - 0x00FF30 03:BF20: 0D        .byte $0D   ; 
- D 1 - - - 0x00FF31 03:BF21: 0E        .byte $0E   ; 
- D 1 - - - 0x00FF32 03:BF22: FF        .byte $FF   ; 



loc_BF23:
C D 1 - - - 0x00FF33 03:BF23: AD 00 03  LDA ram_frm_cnt
C - - - - - 0x00FF36 03:BF26: 4A        LSR
C - - - - - 0x00FF37 03:BF27: 90 01     BCC bra_BF2A
bra_BF29:
C - - - - - 0x00FF39 03:BF29: 60        RTS
bra_BF2A:
C - - - - - 0x00FF3A 03:BF2A: A6 F4     LDX ram_00F4
C - - - - - 0x00FF3C 03:BF2C: CA        DEX
C - - - - - 0x00FF3D 03:BF2D: A0 00     LDY #$00
bra_BF2F:
C - - - - - 0x00FF3F 03:BF2F: B5 A1     LDA ram_приоритет_анимации,X
C - - - - - 0x00FF41 03:BF31: C9 0C     CMP #$0C
C - - - - - 0x00FF43 03:BF33: B0 01     BCS bra_BF36
C - - - - - 0x00FF45 03:BF35: C8        INY
bra_BF36:
C - - - - - 0x00FF46 03:BF36: CA        DEX
C - - - - - 0x00FF47 03:BF37: 10 F6     BPL bra_BF2F
C - - - - - 0x00FF49 03:BF39: C0 08     CPY #$08
C - - - - - 0x00FF4B 03:BF3B: 90 1C     BCC bra_BF59
C - - - - - 0x00FF4D 03:BF3D: A6 F4     LDX ram_00F4
C - - - - - 0x00FF4F 03:BF3F: CA        DEX
C - - - - - 0x00FF50 03:BF40: A0 00     LDY #$00
bra_BF42:
C - - - - - 0x00FF52 03:BF42: B5 A1     LDA ram_приоритет_анимации,X
C - - - - - 0x00FF54 03:BF44: 99 1C 00  STA a: ram_001C,Y
C - - - - - 0x00FF57 03:BF47: C8        INY
C - - - - - 0x00FF58 03:BF48: CA        DEX
C - - - - - 0x00FF59 03:BF49: 10 F7     BPL bra_BF42
C - - - - - 0x00FF5B 03:BF4B: A6 F4     LDX ram_00F4
C - - - - - 0x00FF5D 03:BF4D: CA        DEX
C - - - - - 0x00FF5E 03:BF4E: 88        DEY
bra_BF4F:
C - - - - - 0x00FF5F 03:BF4F: B9 1C 00  LDA a: ram_001C,Y
C - - - - - 0x00FF62 03:BF52: 95 A1     STA ram_приоритет_анимации,X
C - - - - - 0x00FF64 03:BF54: 88        DEY
C - - - - - 0x00FF65 03:BF55: CA        DEX
C - - - - - 0x00FF66 03:BF56: 10 F7     BPL bra_BF4F
C - - - - - 0x00FF68 03:BF58: 60        RTS
bra_BF59:
C - - - - - 0x00FF69 03:BF59: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00FF6C 03:BF5C: 38        SEC
C - - - - - 0x00FF6D 03:BF5D: ED 92 03  SBC ram_мяч_Z_lo
C - - - - - 0x00FF70 03:BF60: 85 1F     STA ram_001F
C - - - - - 0x00FF72 03:BF62: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x00FF75 03:BF65: ED A5 03  SBC ram_мяч_Z_hi
C - - - - - 0x00FF78 03:BF68: 85 20     STA ram_0020
C - - - - - 0x00FF7A 03:BF6A: A2 0C     LDX #$0C
C - - - - - 0x00FF7C 03:BF6C: A0 00     LDY #$00
bra_BF6E:
C - - - - - 0x00FF7E 03:BF6E: BD D9 00  LDA a: ram_флаг_видимости,X
C - - - - - 0x00FF81 03:BF71: 4A        LSR
C - - - - - 0x00FF82 03:BF72: 90 1E     BCC bra_BF92
C - - - - - 0x00FF84 03:BF74: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00FF87 03:BF77: 38        SEC
C - - - - - 0x00FF88 03:BF78: E5 1F     SBC ram_001F
C - - - - - 0x00FF8A 03:BF7A: 85 1C     STA ram_001C
C - - - - - 0x00FF8C 03:BF7C: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00FF8F 03:BF7F: E5 20     SBC ram_0020
C - - - - - 0x00FF91 03:BF81: D0 0F     BNE bra_BF92
C - - - - - 0x00FF93 03:BF83: A5 1C     LDA ram_001C
C - - - - - 0x00FF95 03:BF85: C9 18     CMP #$18
C - - - - - 0x00FF97 03:BF87: B0 09     BCS bra_BF92
C - - - - - 0x00FF99 03:BF89: 8A        TXA
C - - - - - 0x00FF9A 03:BF8A: 99 2C 00  STA a: ram_002C,Y
C - - - - - 0x00FF9D 03:BF8D: C8        INY
C - - - - - 0x00FF9E 03:BF8E: C0 06     CPY #$06
C - - - - - 0x00FFA0 03:BF90: F0 03     BEQ bra_BF95
bra_BF92:
C - - - - - 0x00FFA2 03:BF92: CA        DEX
C - - - - - 0x00FFA3 03:BF93: 10 D9     BPL bra_BF6E
bra_BF95:
C - - - - - 0x00FFA5 03:BF95: C0 04     CPY #$04
C - - - - - 0x00FFA7 03:BF97: 90 90     BCC bra_BF29
C - - - - - 0x00FFA9 03:BF99: 84 1C     STY ram_001C
C - - - - - 0x00FFAB 03:BF9B: A9 00     LDA #$00
C - - - - - 0x00FFAD 03:BF9D: 85 1D     STA ram_001D
C - - - - - 0x00FFAF 03:BF9F: A6 F4     LDX ram_00F4
C - - - - - 0x00FFB1 03:BFA1: CA        DEX
bra_BFA2:
C - - - - - 0x00FFB2 03:BFA2: A4 1C     LDY ram_001C
C - - - - - 0x00FFB4 03:BFA4: 88        DEY
C - - - - - 0x00FFB5 03:BFA5: BD A1 00  LDA a: ram_приоритет_анимации,X
bra_BFA8:
C - - - - - 0x00FFB8 03:BFA8: D9 2C 00  CMP a: ram_002C,Y
C - - - - - 0x00FFBB 03:BFAB: D0 12     BNE bra_BFBF
C - - - - - 0x00FFBD 03:BFAD: 84 44     STY ram_0044
C - - - - - 0x00FFBF 03:BFAF: A4 1D     LDY ram_001D
C - - - - - 0x00FFC1 03:BFB1: 99 32 00  STA a: ram_0032,Y
C - - - - - 0x00FFC4 03:BFB4: 8A        TXA
C - - - - - 0x00FFC5 03:BFB5: 99 38 00  STA a: ram_0038,Y
C - - - - - 0x00FFC8 03:BFB8: E6 1D     INC ram_001D
C - - - - - 0x00FFCA 03:BFBA: A4 44     LDY ram_0044
C - - - - - 0x00FFCC 03:BFBC: BD A1 00  LDA a: ram_приоритет_анимации,X
bra_BFBF:
C - - - - - 0x00FFCF 03:BFBF: 88        DEY
C - - - - - 0x00FFD0 03:BFC0: 10 E6     BPL bra_BFA8
C - - - - - 0x00FFD2 03:BFC2: CA        DEX
C - - - - - 0x00FFD3 03:BFC3: 10 DD     BPL bra_BFA2
C - - - - - 0x00FFD5 03:BFC5: A9 00     LDA #$00
C - - - - - 0x00FFD7 03:BFC7: 85 1C     STA ram_001C
C - - - - - 0x00FFD9 03:BFC9: A6 1D     LDX ram_001D
C - - - - - 0x00FFDB 03:BFCB: CA        DEX
bra_BFCC:
C - - - - - 0x00FFDC 03:BFCC: A4 1C     LDY ram_001C
C - - - - - 0x00FFDE 03:BFCE: B9 32 00  LDA a: ram_0032,Y
C - - - - - 0x00FFE1 03:BFD1: B4 38     LDY ram_0038,X
C - - - - - 0x00FFE3 03:BFD3: 99 A1 00  STA a: ram_приоритет_анимации,Y
C - - - - - 0x00FFE6 03:BFD6: E6 1C     INC ram_001C
C - - - - - 0x00FFE8 03:BFD8: CA        DEX
C - - - - - 0x00FFE9 03:BFD9: 10 F1     BPL bra_BFCC
C - - - - - 0x00FFEB 03:BFDB: 60        RTS


; bzk garbage
- - - - - - 0x00FFEC 03:BFDC: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFF0 03:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x010000 03:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 03: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_03_ID"
- D 1 - - - 0x01000F 03:BFFF: 03        .byte con_prg_bank + $03   ; 



