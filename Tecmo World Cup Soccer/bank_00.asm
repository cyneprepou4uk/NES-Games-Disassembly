.segment "BANK_00"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x000010-0x00400F



.export sub_0x000010_update_sound_engine



sub_0x000010_update_sound_engine:
C D 0 - - - 0x000010 00:8000: A5 FC     LDA ram_00FC
C - - - - - 0x000012 00:8002: F0 01     BEQ bra_8005
- - - - - - 0x000014 00:8004: 60        RTS
bra_8005:
C - - - - - 0x000015 00:8005: AA        TAX
C - - - - - 0x000016 00:8006: AD 00 07  LDA ram_sound_cnt
C - - - - - 0x000019 00:8009: F0 1E     BEQ bra_8029
bra_800B:
C - - - - - 0x00001B 00:800B: BC 01 07  LDY ram_sound_queue,X
C - - - - - 0x00001E 00:800E: F0 0E     BEQ bra_801E
C - - - - - 0x000020 00:8010: C0 20     CPY #$20
C - - - - - 0x000022 00:8012: D0 03     BNE bra_8017
C - - - - - 0x000024 00:8014: 4C 0A 84  JMP loc_840A
bra_8017:
C - - - - - 0x000027 00:8017: 86 F2     STX ram_00F2
C - - - - - 0x000029 00:8019: 20 B9 83  JSR sub_83B9
C - - - - - 0x00002C 00:801C: A6 F2     LDX ram_00F2
bra_801E:
C - - - - - 0x00002E 00:801E: E8        INX
C - - - - - 0x00002F 00:801F: EC 00 07  CPX ram_sound_cnt
C - - - - - 0x000032 00:8022: D0 E7     BNE bra_800B
C - - - - - 0x000034 00:8024: A9 00     LDA #$00
C - - - - - 0x000036 00:8026: 8D 00 07  STA ram_sound_cnt
bra_8029:
loc_8029:
C D 0 - - - 0x000039 00:8029: AD 05 07  LDA ram_0705_se_flag
C - - - - - 0x00003C 00:802C: F0 36     BEQ bra_8064
C - - - - - 0x00003E 00:802E: A2 07     LDX #$07
bra_8030:
C - - - - - 0x000040 00:8030: A9 01     LDA #$01
C - - - - - 0x000042 00:8032: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x000045 00:8035: F0 28     BEQ bra_805F
C - - - - - 0x000047 00:8037: DE 06 07  DEC ram_0706_se,X
C - - - - - 0x00004A 00:803A: D0 23     BNE bra_805F
C - - - - - 0x00004C 00:803C: BD 0E 07  LDA ram_070E_se,X
C - - - - - 0x00004F 00:803F: 9D 06 07  STA ram_0706_se,X
C - - - - - 0x000052 00:8042: FE 6E 07  INC ram_076E_se,X
C - - - - - 0x000055 00:8045: BD 6E 07  LDA ram_076E_se,X
C - - - - - 0x000058 00:8048: C9 0F     CMP #$0F
C - - - - - 0x00005A 00:804A: D0 13     BNE bra_805F
C - - - - - 0x00005C 00:804C: A9 00     LDA #$00
C - - - - - 0x00005E 00:804E: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x000061 00:8051: AD 1A 07  LDA ram_0716_se + $04
C - - - - - 0x000064 00:8054: 0D 1B 07  ORA ram_0716_se + $05
C - - - - - 0x000067 00:8057: 0D 1D 07  ORA ram_0716_se + $07
C - - - - - 0x00006A 00:805A: D0 03     BNE bra_805F
C - - - - - 0x00006C 00:805C: 8D 05 07  STA ram_0705_se_flag
bra_805F:
C - - - - - 0x00006F 00:805F: CA        DEX
C - - - - - 0x000070 00:8060: E0 03     CPX #$03
C - - - - - 0x000072 00:8062: D0 CC     BNE bra_8030
bra_8064:
C - - - - - 0x000074 00:8064: A2 00     LDX #$00
C - - - - - 0x000076 00:8066: A9 B6     LDA #< ram_07B6
C - - - - - 0x000078 00:8068: 85 F2     STA ram_00F2
C - - - - - 0x00007A 00:806A: A9 07     LDA #> ram_07B6
C - - - - - 0x00007C 00:806C: 85 F3     STA ram_00F3
C - - - - - 0x00007E 00:806E: A9 01     LDA #$01
C - - - - - 0x000080 00:8070: 85 F8     STA ram_00F8
bra_8072:
C - - - - - 0x000082 00:8072: BD 16 07  LDA ram_0716_se,X
C - - - - - 0x000085 00:8075: 29 01     AND #$01
C - - - - - 0x000087 00:8077: F0 63     BEQ bra_80DC
C - - - - - 0x000089 00:8079: 8A        TXA
C - - - - - 0x00008A 00:807A: 29 03     AND #$03
C - - - - - 0x00008C 00:807C: 85 F4     STA ram_00F4
C - - - - - 0x00008E 00:807E: DE 2E 07  DEC ram_072E_se,X
C - - - - - 0x000091 00:8081: D0 3D     BNE bra_80C0
C - - - - - 0x000093 00:8083: BD 36 07  LDA ram_0736_se,X
C - - - - - 0x000096 00:8086: D0 35     BNE bra_80BD
C - - - - - 0x000098 00:8088: A9 00     LDA #$00
C - - - - - 0x00009A 00:808A: 85 FA     STA ram_00FA
C - - - - - 0x00009C 00:808C: E0 02     CPX #$02
C - - - - - 0x00009E 00:808E: B0 04     BCS bra_8094
C - - - - - 0x0000A0 00:8090: A9 08     LDA #$08
C - - - - - 0x0000A2 00:8092: 95 FD     STA ram_00FD,X
bra_8094:
C - - - - - 0x0000A4 00:8094: A9 04     LDA #$04
C - - - - - 0x0000A6 00:8096: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x0000A9 00:8099: D0 1C     BNE bra_80B7
C - - - - - 0x0000AB 00:809B: A9 00     LDA #$00
C - - - - - 0x0000AD 00:809D: 9D 66 07  STA ram_0766_se,X
C - - - - - 0x0000B0 00:80A0: A9 01     LDA #$01
C - - - - - 0x0000B2 00:80A2: 9D 4E 07  STA ram_074E_se,X
C - - - - - 0x0000B5 00:80A5: A9 FF     LDA #$FF
C - - - - - 0x0000B7 00:80A7: 9D A6 07  STA ram_07A6_se,X
C - - - - - 0x0000BA 00:80AA: BD 86 07  LDA ram_0786_se,X
C - - - - - 0x0000BD 00:80AD: 29 F8     AND #$F8
C - - - - - 0x0000BF 00:80AF: 9D 86 07  STA ram_0786_se,X
C - - - - - 0x0000C2 00:80B2: A9 01     LDA #$01
C - - - - - 0x0000C4 00:80B4: 9D 7E 07  STA ram_077E_se,X
bra_80B7:
C - - - - - 0x0000C7 00:80B7: 20 C3 82  JSR sub_82C3
C - - - - - 0x0000CA 00:80BA: 4C C0 80  JMP loc_80C0
bra_80BD:
C - - - - - 0x0000CD 00:80BD: DE 36 07  DEC ram_0736_se,X
bra_80C0:
loc_80C0:
C D 0 - - - 0x0000D0 00:80C0: DE 4E 07  DEC ram_074E_se,X
C - - - - - 0x0000D3 00:80C3: D0 03     BNE bra_80C8
C - - - - - 0x0000D5 00:80C5: 20 32 82  JSR sub_8232
bra_80C8:
C - - - - - 0x0000D8 00:80C8: A9 08     LDA #$08
C - - - - - 0x0000DA 00:80CA: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x0000DD 00:80CD: F0 0D     BEQ bra_80DC
C - - - - - 0x0000DF 00:80CF: DE 7E 07  DEC ram_077E_se,X
C - - - - - 0x0000E2 00:80D2: D0 08     BNE bra_80DC
C - - - - - 0x0000E4 00:80D4: A9 40     LDA #$40
C - - - - - 0x0000E6 00:80D6: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x0000E9 00:80D9: 9D 16 07  STA ram_0716_se,X
bra_80DC:
C - - - - - 0x0000EC 00:80DC: A9 08     LDA #$08
C - - - - - 0x0000EE 00:80DE: 18        CLC
C - - - - - 0x0000EF 00:80DF: 65 F2     ADC ram_00F2
C - - - - - 0x0000F1 00:80E1: 90 02     BCC bra_80E5
- - - - - - 0x0000F3 00:80E3: E6 F3     INC ram_00F3
bra_80E5:
C - - - - - 0x0000F5 00:80E5: 85 F2     STA ram_00F2
C - - - - - 0x0000F7 00:80E7: E8        INX
C - - - - - 0x0000F8 00:80E8: E0 08     CPX #$08
C - - - - - 0x0000FA 00:80EA: D0 86     BNE bra_8072
C - - - - - 0x0000FC 00:80EC: A2 00     LDX #$00
C - - - - - 0x0000FE 00:80EE: 86 FA     STX ram_00FA
C - - - - - 0x000100 00:80F0: A9 01     LDA #$01
C - - - - - 0x000102 00:80F2: 85 F1     STA ram_00F1
bra_80F4:
C - - - - - 0x000104 00:80F4: A9 01     LDA #$01
C - - - - - 0x000106 00:80F6: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x000109 00:80F9: F0 0E     BEQ bra_8109
C - - - - - 0x00010B 00:80FB: A9 02     LDA #$02
C - - - - - 0x00010D 00:80FD: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x000110 00:8100: D0 1B     BNE bra_811D
C - - - - - 0x000112 00:8102: A5 F1     LDA ram_00F1
C - - - - - 0x000114 00:8104: 05 FA     ORA ram_00FA
C - - - - - 0x000116 00:8106: 4C 1B 81  JMP loc_811B
bra_8109:
C - - - - - 0x000119 00:8109: A9 01     LDA #$01
C - - - - - 0x00011B 00:810B: 3D 1A 07  AND ram_0716_se + $04,X
C - - - - - 0x00011E 00:810E: F0 0D     BEQ bra_811D
C - - - - - 0x000120 00:8110: A9 02     LDA #$02
C - - - - - 0x000122 00:8112: 3D 1A 07  AND ram_0716_se + $04,X
C - - - - - 0x000125 00:8115: D0 06     BNE bra_811D
C - - - - - 0x000127 00:8117: A5 F1     LDA ram_00F1
C - - - - - 0x000129 00:8119: 05 FA     ORA ram_00FA
loc_811B:
C D 0 - - - 0x00012B 00:811B: 85 FA     STA ram_00FA
bra_811D:
C - - - - - 0x00012D 00:811D: 06 F1     ASL ram_00F1
C - - - - - 0x00012F 00:811F: E8        INX
C - - - - - 0x000130 00:8120: E0 04     CPX #$04
C - - - - - 0x000132 00:8122: D0 D0     BNE bra_80F4
C - - - - - 0x000134 00:8124: AD 15 40  LDA $4015
C - - - - - 0x000137 00:8127: 29 10     AND #$10
C - - - - - 0x000139 00:8129: 05 FA     ORA ram_00FA
C - - - - - 0x00013B 00:812B: C5 FF     CMP ram_00FF
C - - - - - 0x00013D 00:812D: F0 05     BEQ bra_8134
C - - - - - 0x00013F 00:812F: 8D 15 40  STA $4015
C - - - - - 0x000142 00:8132: 85 FF     STA ram_00FF
bra_8134:
C - - - - - 0x000144 00:8134: A2 00     LDX #$00
C - - - - - 0x000146 00:8136: A0 00     LDY #$00
loc_8138:
C D 0 - - - 0x000148 00:8138: BD 16 07  LDA ram_0716_se,X
C - - - - - 0x00014B 00:813B: 85 F1     STA ram_00F1
C - - - - - 0x00014D 00:813D: 29 01     AND #$01
C - - - - - 0x00014F 00:813F: F0 6A     BEQ bra_81AB
C - - - - - 0x000151 00:8141: A9 80     LDA #$80
C - - - - - 0x000153 00:8143: 25 F1     AND ram_00F1
C - - - - - 0x000155 00:8145: F0 1A     BEQ bra_8161
C - - - - - 0x000157 00:8147: BD 8E 07  LDA ram_078E_se,X
C - - - - - 0x00015A 00:814A: E0 02     CPX #$02
C - - - - - 0x00015C 00:814C: D0 02     BNE bra_8150
C - - - - - 0x00015E 00:814E: 09 80     ORA #$80
bra_8150:
C - - - - - 0x000160 00:8150: 85 F5     STA ram_00F5
C - - - - - 0x000162 00:8152: A9 10     LDA #$10
C - - - - - 0x000164 00:8154: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x000167 00:8157: F0 02     BEQ bra_815B
C - - - - - 0x000169 00:8159: A9 40     LDA #$40
bra_815B:
C - - - - - 0x00016B 00:815B: 18        CLC
C - - - - - 0x00016C 00:815C: 65 F5     ADC ram_00F5
C - - - - - 0x00016E 00:815E: 99 00 40  STA $4000,Y
bra_8161:
C - - - - - 0x000171 00:8161: C8        INY
C - - - - - 0x000172 00:8162: E0 02     CPX #$02
C - - - - - 0x000174 00:8164: B0 05     BCS bra_816B
C - - - - - 0x000176 00:8166: B5 FD     LDA ram_00FD,X
C - - - - - 0x000178 00:8168: 99 00 40  STA $4000,Y
bra_816B:
C - - - - - 0x00017B 00:816B: C8        INY
C - - - - - 0x00017C 00:816C: A9 40     LDA #$40
C - - - - - 0x00017E 00:816E: 25 F1     AND ram_00F1
C - - - - - 0x000180 00:8170: F0 17     BEQ bra_8189
C - - - - - 0x000182 00:8172: BD 96 07  LDA ram_0796_se,X
C - - - - - 0x000185 00:8175: 85 F3     STA ram_00F3
C - - - - - 0x000187 00:8177: A9 08     LDA #$08
C - - - - - 0x000189 00:8179: 25 F1     AND ram_00F1
C - - - - - 0x00018B 00:817B: F0 07     BEQ bra_8184
C - - - - - 0x00018D 00:817D: 84 F4     STY ram_00F4
C - - - - - 0x00018F 00:817F: 20 7E 82  JSR sub_827E
C - - - - - 0x000192 00:8182: A4 F4     LDY ram_00F4
bra_8184:
C - - - - - 0x000194 00:8184: A5 F3     LDA ram_00F3
C - - - - - 0x000196 00:8186: 99 00 40  STA $4000,Y
bra_8189:
C - - - - - 0x000199 00:8189: C8        INY
C - - - - - 0x00019A 00:818A: A9 20     LDA #$20
C - - - - - 0x00019C 00:818C: 25 F1     AND ram_00F1
C - - - - - 0x00019E 00:818E: F0 10     BEQ bra_81A0
C - - - - - 0x0001A0 00:8190: BD 9E 07  LDA ram_079E_se,X
C - - - - - 0x0001A3 00:8193: 09 80     ORA #$80
C - - - - - 0x0001A5 00:8195: DD A6 07  CMP ram_07A6_se,X
C - - - - - 0x0001A8 00:8198: F0 06     BEQ bra_81A0
C - - - - - 0x0001AA 00:819A: 99 00 40  STA $4000,Y
C - - - - - 0x0001AD 00:819D: 9D A6 07  STA ram_07A6_se,X
bra_81A0:
C - - - - - 0x0001B0 00:81A0: A9 0F     LDA #$0F
C - - - - - 0x0001B2 00:81A2: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x0001B5 00:81A5: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x0001B8 00:81A8: 4C 28 82  JMP loc_8228
bra_81AB:
C - - - - - 0x0001BB 00:81AB: BD 1A 07  LDA ram_0716_se + $04,X
C - - - - - 0x0001BE 00:81AE: 85 F1     STA ram_00F1
C - - - - - 0x0001C0 00:81B0: 29 01     AND #$01
C - - - - - 0x0001C2 00:81B2: D0 05     BNE bra_81B9
C - - - - - 0x0001C4 00:81B4: C8        INY
C - - - - - 0x0001C5 00:81B5: C8        INY
C - - - - - 0x0001C6 00:81B6: C8        INY
C - - - - - 0x0001C7 00:81B7: D0 6F     BNE bra_8228    ; jmp
bra_81B9:
C - - - - - 0x0001C9 00:81B9: A9 80     LDA #$80
C - - - - - 0x0001CB 00:81BB: 25 F1     AND ram_00F1
C - - - - - 0x0001CD 00:81BD: F0 1A     BEQ bra_81D9
C - - - - - 0x0001CF 00:81BF: BD 92 07  LDA ram_078E_se + $04,X
C - - - - - 0x0001D2 00:81C2: E0 02     CPX #$02
C - - - - - 0x0001D4 00:81C4: D0 02     BNE bra_81C8
C - - - - - 0x0001D6 00:81C6: 09 80     ORA #$80
bra_81C8:
C - - - - - 0x0001D8 00:81C8: 85 F5     STA ram_00F5
C - - - - - 0x0001DA 00:81CA: A9 10     LDA #$10
C - - - - - 0x0001DC 00:81CC: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x0001DF 00:81CF: F0 02     BEQ bra_81D3
- - - - - - 0x0001E1 00:81D1: A9 40     LDA #$40
bra_81D3:
C - - - - - 0x0001E3 00:81D3: 18        CLC
C - - - - - 0x0001E4 00:81D4: 65 F5     ADC ram_00F5
C - - - - - 0x0001E6 00:81D6: 99 00 40  STA $4000,Y
bra_81D9:
C - - - - - 0x0001E9 00:81D9: C8        INY
C - - - - - 0x0001EA 00:81DA: E0 02     CPX #$02
C - - - - - 0x0001EC 00:81DC: B0 05     BCS bra_81E3
C - - - - - 0x0001EE 00:81DE: A9 08     LDA #$08
C - - - - - 0x0001F0 00:81E0: 99 00 40  STA $4000,Y
bra_81E3:
C - - - - - 0x0001F3 00:81E3: C8        INY
C - - - - - 0x0001F4 00:81E4: A9 40     LDA #$40
C - - - - - 0x0001F6 00:81E6: 25 F1     AND ram_00F1
C - - - - - 0x0001F8 00:81E8: F0 1F     BEQ bra_8209
C - - - - - 0x0001FA 00:81EA: BD 9A 07  LDA ram_0796_se + $04,X
C - - - - - 0x0001FD 00:81ED: 85 F3     STA ram_00F3
C - - - - - 0x0001FF 00:81EF: A9 08     LDA #$08
C - - - - - 0x000201 00:81F1: 25 F1     AND ram_00F1
C - - - - - 0x000203 00:81F3: F0 0F     BEQ bra_8204
C - - - - - 0x000205 00:81F5: 8A        TXA
C - - - - - 0x000206 00:81F6: 09 04     ORA #$04
C - - - - - 0x000208 00:81F8: AA        TAX
C - - - - - 0x000209 00:81F9: 84 F4     STY ram_00F4
C - - - - - 0x00020B 00:81FB: 20 7E 82  JSR sub_827E
C - - - - - 0x00020E 00:81FE: A4 F4     LDY ram_00F4
C - - - - - 0x000210 00:8200: 8A        TXA
C - - - - - 0x000211 00:8201: 29 03     AND #$03
C - - - - - 0x000213 00:8203: AA        TAX
bra_8204:
C - - - - - 0x000214 00:8204: A5 F3     LDA ram_00F3
C - - - - - 0x000216 00:8206: 99 00 40  STA $4000,Y
bra_8209:
C - - - - - 0x000219 00:8209: C8        INY
C - - - - - 0x00021A 00:820A: A9 20     LDA #$20
C - - - - - 0x00021C 00:820C: 25 F1     AND ram_00F1
C - - - - - 0x00021E 00:820E: F0 10     BEQ bra_8220
C - - - - - 0x000220 00:8210: BD A2 07  LDA ram_079E_se + $04,X
C - - - - - 0x000223 00:8213: 09 80     ORA #$80
C - - - - - 0x000225 00:8215: DD AA 07  CMP ram_07A6_se + $04,X
C - - - - - 0x000228 00:8218: F0 06     BEQ bra_8220
C - - - - - 0x00022A 00:821A: 99 00 40  STA $4000,Y
C - - - - - 0x00022D 00:821D: 9D AA 07  STA ram_07A6_se + $04,X
bra_8220:
C - - - - - 0x000230 00:8220: A9 0F     LDA #$0F
C - - - - - 0x000232 00:8222: 3D 1A 07  AND ram_0716_se + $04,X
C - - - - - 0x000235 00:8225: 9D 1A 07  STA ram_0716_se + $04,X
bra_8228:
loc_8228:
C D 0 - - - 0x000238 00:8228: C8        INY
C - - - - - 0x000239 00:8229: E8        INX
C - - - - - 0x00023A 00:822A: E0 04     CPX #$04
C - - - - - 0x00023C 00:822C: F0 03     BEQ bra_8231_RTS
C - - - - - 0x00023E 00:822E: 4C 38 81  JMP loc_8138
bra_8231_RTS:
C - - - - - 0x000241 00:8231: 60        RTS



sub_8232:
C - - - - - 0x000242 00:8232: BD 56 07  LDA ram_0756_se,X
C - - - - - 0x000245 00:8235: 85 F0     STA ram_00F0
C - - - - - 0x000247 00:8237: BD 5E 07  LDA ram_075E_se,X
C - - - - - 0x00024A 00:823A: 85 F1     STA ram_00F1
C - - - - - 0x00024C 00:823C: BC 66 07  LDY ram_0766_se,X
C - - - - - 0x00024F 00:823F: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000251 00:8241: 9D 4E 07  STA ram_074E_se,X
C - - - - - 0x000254 00:8244: C8        INY
C - - - - - 0x000255 00:8245: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000257 00:8247: 38        SEC
C - - - - - 0x000258 00:8248: FD 6E 07  SBC ram_076E_se,X
C - - - - - 0x00025B 00:824B: B0 09     BCS bra_8256
C - - - - - 0x00025D 00:824D: A9 02     LDA #$02
C - - - - - 0x00025F 00:824F: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x000262 00:8252: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x000265 00:8255: 60        RTS
bra_8256:
C - - - - - 0x000266 00:8256: 85 F5     STA ram_00F5
C - - - - - 0x000268 00:8258: BD 8E 07  LDA ram_078E_se,X
C - - - - - 0x00026B 00:825B: 29 F0     AND #$F0
C - - - - - 0x00026D 00:825D: 05 F5     ORA ram_00F5
C - - - - - 0x00026F 00:825F: 9D 8E 07  STA ram_078E_se,X
C - - - - - 0x000272 00:8262: A5 F4     LDA ram_00F4
C - - - - - 0x000274 00:8264: C9 02     CMP #$02
C - - - - - 0x000276 00:8266: F0 08     BEQ bra_8270
C - - - - - 0x000278 00:8268: A9 30     LDA #$30
C - - - - - 0x00027A 00:826A: 1D 8E 07  ORA ram_078E_se,X
C - - - - - 0x00027D 00:826D: 9D 8E 07  STA ram_078E_se,X
bra_8270:
C - - - - - 0x000280 00:8270: C8        INY
C - - - - - 0x000281 00:8271: 98        TYA
C - - - - - 0x000282 00:8272: 9D 66 07  STA ram_0766_se,X
C - - - - - 0x000285 00:8275: A9 80     LDA #$80
C - - - - - 0x000287 00:8277: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x00028A 00:827A: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x00028D 00:827D: 60        RTS



sub_827E:
C - - - - - 0x00028E 00:827E: BD 7E 07  LDA ram_077E_se,X
C - - - - - 0x000291 00:8281: D0 3F     BNE bra_82C2_RTS
C - - - - - 0x000293 00:8283: BD 86 07  LDA ram_0786_se,X
C - - - - - 0x000296 00:8286: A8        TAY
C - - - - - 0x000297 00:8287: 29 F8     AND #$F8
C - - - - - 0x000299 00:8289: 85 F5     STA ram_00F5
C - - - - - 0x00029B 00:828B: B9 BA 86  LDA tbl_86BA,Y
C - - - - - 0x00029E 00:828E: 9D 7E 07  STA ram_077E_se,X
C - - - - - 0x0002A1 00:8291: C8        INY
C - - - - - 0x0002A2 00:8292: B9 BA 86  LDA tbl_86BA,Y
C - - - - - 0x0002A5 00:8295: 85 F0     STA ram_00F0
C - - - - - 0x0002A7 00:8297: A9 80     LDA #$80
C - - - - - 0x0002A9 00:8299: 25 F0     AND ram_00F0
C - - - - - 0x0002AB 00:829B: D0 0B     BNE bra_82A8
C - - - - - 0x0002AD 00:829D: A5 F3     LDA ram_00F3
C - - - - - 0x0002AF 00:829F: 18        CLC
C - - - - - 0x0002B0 00:82A0: 65 F0     ADC ram_00F0
C - - - - - 0x0002B2 00:82A2: 90 13     BCC bra_82B7
C - - - - - 0x0002B4 00:82A4: A9 FF     LDA #$FF
C - - - - - 0x0002B6 00:82A6: D0 0F     BNE bra_82B7
bra_82A8:
C - - - - - 0x0002B8 00:82A8: A9 7F     LDA #$7F
C - - - - - 0x0002BA 00:82AA: 25 F0     AND ram_00F0
C - - - - - 0x0002BC 00:82AC: 85 F0     STA ram_00F0
C - - - - - 0x0002BE 00:82AE: A5 F3     LDA ram_00F3
C - - - - - 0x0002C0 00:82B0: 38        SEC
C - - - - - 0x0002C1 00:82B1: E5 F0     SBC ram_00F0
C - - - - - 0x0002C3 00:82B3: B0 02     BCS bra_82B7
- - - - - - 0x0002C5 00:82B5: A9 00     LDA #$00
bra_82B7:
C - - - - - 0x0002C7 00:82B7: 85 F3     STA ram_00F3
C - - - - - 0x0002C9 00:82B9: C8        INY
C - - - - - 0x0002CA 00:82BA: 98        TYA
C - - - - - 0x0002CB 00:82BB: 29 07     AND #$07
C - - - - - 0x0002CD 00:82BD: 05 F5     ORA ram_00F5
C - - - - - 0x0002CF 00:82BF: 9D 86 07  STA ram_0786_se,X
bra_82C2_RTS:
C - - - - - 0x0002D2 00:82C2: 60        RTS



sub_82C3:
C - - - - - 0x0002D3 00:82C3: BD 1E 07  LDA ram_071E_se,X
C - - - - - 0x0002D6 00:82C6: 85 F0     STA ram_00F0
C - - - - - 0x0002D8 00:82C8: BD 26 07  LDA ram_0726_se,X
C - - - - - 0x0002DB 00:82CB: 85 F1     STA ram_00F1
C - - - - - 0x0002DD 00:82CD: A0 00     LDY #$00
loc_82CF_read_next_byte:
C D 0 - - - 0x0002DF 00:82CF: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0002E1 00:82D1: C8        INY
C - - - - - 0x0002E2 00:82D2: 85 F5     STA ram_00F5
C - - - - - 0x0002E4 00:82D4: C9 E0     CMP #$E0
C - - - - - 0x0002E6 00:82D6: 90 15     BCC bra_82ED
; E0-FF control bytes
C - - - - - 0x0002E8 00:82D8: 29 1F     AND #$1F
C - - - - - 0x0002EA 00:82DA: 0A        ASL
C - - - - - 0x0002EB 00:82DB: 84 F9     STY ram_00F9
C - - - - - 0x0002ED 00:82DD: A8        TAY
C - - - - - 0x0002EE 00:82DE: B9 47 84  LDA tbl_8447,Y
C - - - - - 0x0002F1 00:82E1: 85 F6     STA ram_00F6
C - - - - - 0x0002F3 00:82E3: B9 48 84  LDA tbl_8447 + $01,Y
C - - - - - 0x0002F6 00:82E6: 85 F7     STA ram_00F7
C - - - - - 0x0002F8 00:82E8: A4 F9     LDY ram_00F9
C - - - - - 0x0002FA 00:82EA: 6C F6 00  JMP (ram_00F6)
bra_82ED:
C - - - - - 0x0002FD 00:82ED: C9 80     CMP #$80
C - - - - - 0x0002FF 00:82EF: 90 2A     BCC bra_831B
C - - - - - 0x000301 00:82F1: 29 7F     AND #$7F
C - - - - - 0x000303 00:82F3: 0A        ASL
C - - - - - 0x000304 00:82F4: 84 F9     STY ram_00F9
C - - - - - 0x000306 00:82F6: 86 F5     STX ram_00F5
C - - - - - 0x000308 00:82F8: A4 F5     LDY ram_00F5
C - - - - - 0x00030A 00:82FA: AA        TAX
C - - - - - 0x00030B 00:82FB: BD 7A 86  LDA tbl_867A,X
C - - - - - 0x00030E 00:82FE: 18        CLC
C - - - - - 0x00030F 00:82FF: 79 2E 07  ADC ram_072E_se,Y
C - - - - - 0x000312 00:8302: 99 2E 07  STA ram_072E_se,Y
C - - - - - 0x000315 00:8305: 99 3E 07  STA ram_073E_se,Y
C - - - - - 0x000318 00:8308: BD 7B 86  LDA tbl_867B,X
C - - - - - 0x00031B 00:830B: 79 36 07  ADC ram_0736_se,Y
C - - - - - 0x00031E 00:830E: 99 36 07  STA ram_0736_se,Y
C - - - - - 0x000321 00:8311: 99 46 07  STA ram_0746_se,Y
C - - - - - 0x000324 00:8314: A4 F9     LDY ram_00F9
C - - - - - 0x000326 00:8316: A6 F5     LDX ram_00F5
C - - - - - 0x000328 00:8318: 4C CF 82  JMP loc_82CF_read_next_byte
bra_831B:
C - - - - - 0x00032B 00:831B: 84 F9     STY ram_00F9
C - - - - - 0x00032D 00:831D: A5 F4     LDA ram_00F4
C - - - - - 0x00032F 00:831F: C9 03     CMP #$03
C - - - - - 0x000331 00:8321: D0 0C     BNE bra_832F
C - - - - - 0x000333 00:8323: A5 F5     LDA ram_00F5
C - - - - - 0x000335 00:8325: C9 10     CMP #$10
C - - - - - 0x000337 00:8327: F0 0C     BEQ bra_8335
C - - - - - 0x000339 00:8329: 9D 96 07  STA ram_0796_se,X
C - - - - - 0x00033C 00:832C: 4C 94 83  JMP loc_8394
bra_832F:
C - - - - - 0x00033F 00:832F: A5 F5     LDA ram_00F5
C - - - - - 0x000341 00:8331: C9 0C     CMP #$0C
C - - - - - 0x000343 00:8333: D0 0D     BNE bra_8342
bra_8335:
C - - - - - 0x000345 00:8335: A9 02     LDA #$02
C - - - - - 0x000347 00:8337: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x00034A 00:833A: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x00034D 00:833D: A4 F9     LDY ram_00F9
C - - - - - 0x00034F 00:833F: 4C 9E 83  JMP loc_839E
bra_8342:
C - - - - - 0x000352 00:8342: 29 0F     AND #$0F
C - - - - - 0x000354 00:8344: 0A        ASL
C - - - - - 0x000355 00:8345: A8        TAY
C - - - - - 0x000356 00:8346: B9 62 86  LDA tbl_8662,Y
C - - - - - 0x000359 00:8349: 85 F6     STA ram_00F6
C - - - - - 0x00035B 00:834B: B9 63 86  LDA tbl_8663,Y
C - - - - - 0x00035E 00:834E: 85 F7     STA ram_00F7
C - - - - - 0x000360 00:8350: A9 F0     LDA #$F0
C - - - - - 0x000362 00:8352: 25 F5     AND ram_00F5
C - - - - - 0x000364 00:8354: F0 0C     BEQ bra_8362
C - - - - - 0x000366 00:8356: 4A        LSR
C - - - - - 0x000367 00:8357: 4A        LSR
C - - - - - 0x000368 00:8358: 4A        LSR
C - - - - - 0x000369 00:8359: 4A        LSR
C - - - - - 0x00036A 00:835A: A8        TAY
bra_835B:
C - - - - - 0x00036B 00:835B: 46 F7     LSR ram_00F7
C - - - - - 0x00036D 00:835D: 66 F6     ROR ram_00F6
C - - - - - 0x00036F 00:835F: 88        DEY
C - - - - - 0x000370 00:8360: D0 F9     BNE bra_835B
bra_8362:
C - - - - - 0x000372 00:8362: A4 F9     LDY ram_00F9
C - - - - - 0x000374 00:8364: BD 76 07  LDA ram_0776_se,X
C - - - - - 0x000377 00:8367: 29 80     AND #$80
C - - - - - 0x000379 00:8369: D0 0C     BNE bra_8377
C - - - - - 0x00037B 00:836B: BD 76 07  LDA ram_0776_se,X
C - - - - - 0x00037E 00:836E: 18        CLC
C - - - - - 0x00037F 00:836F: 65 F6     ADC ram_00F6
C - - - - - 0x000381 00:8371: 90 14     BCC bra_8387
C - - - - - 0x000383 00:8373: A9 FF     LDA #$FF
C - - - - - 0x000385 00:8375: F0 10     BEQ bra_8387
bra_8377:
C - - - - - 0x000387 00:8377: BD 76 07  LDA ram_0776_se,X
C - - - - - 0x00038A 00:837A: 29 7F     AND #$7F
C - - - - - 0x00038C 00:837C: 85 F9     STA ram_00F9
C - - - - - 0x00038E 00:837E: A5 F6     LDA ram_00F6
C - - - - - 0x000390 00:8380: 38        SEC
C - - - - - 0x000391 00:8381: E5 F9     SBC ram_00F9
C - - - - - 0x000393 00:8383: B0 02     BCS bra_8387
- - - - - - 0x000395 00:8385: A9 00     LDA #$00
bra_8387:
C - - - - - 0x000397 00:8387: 9D 96 07  STA ram_0796_se,X
C - - - - - 0x00039A 00:838A: A9 F8     LDA #$F8
C - - - - - 0x00039C 00:838C: 3D 9E 07  AND ram_079E_se,X
C - - - - - 0x00039F 00:838F: 05 F7     ORA ram_00F7
C - - - - - 0x0003A1 00:8391: 9D 9E 07  STA ram_079E_se,X
loc_8394:
C D 0 - - - 0x0003A4 00:8394: A9 60     LDA #$60
C - - - - - 0x0003A6 00:8396: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x0003A9 00:8399: 29 FD     AND #$FD
C - - - - - 0x0003AB 00:839B: 9D 16 07  STA ram_0716_se,X
loc_839E:
C D 0 - - - 0x0003AE 00:839E: 98        TYA
C - - - - - 0x0003AF 00:839F: 18        CLC
C - - - - - 0x0003B0 00:83A0: 65 F0     ADC ram_00F0
C - - - - - 0x0003B2 00:83A2: 9D 1E 07  STA ram_071E_se,X
C - - - - - 0x0003B5 00:83A5: A9 00     LDA #$00
C - - - - - 0x0003B7 00:83A7: 65 F1     ADC ram_00F1
C - - - - - 0x0003B9 00:83A9: 9D 26 07  STA ram_0726_se,X
C - - - - - 0x0003BC 00:83AC: BD 3E 07  LDA ram_073E_se,X
C - - - - - 0x0003BF 00:83AF: 9D 2E 07  STA ram_072E_se,X
C - - - - - 0x0003C2 00:83B2: BD 46 07  LDA ram_0746_se,X
C - - - - - 0x0003C5 00:83B5: 9D 36 07  STA ram_0736_se,X
C - - - - - 0x0003C8 00:83B8: 60        RTS



sub_83B9:
C - - - - - 0x0003C9 00:83B9: A5 FB     LDA ram_00FB
C - - - - - 0x0003CB 00:83BB: F0 05     BEQ bra_83C2
C - - - - - 0x0003CD 00:83BD: C0 09     CPY #$09
C - - - - - 0x0003CF 00:83BF: B0 01     BCS bra_83C2
C - - - - - 0x0003D1 00:83C1: 60        RTS
bra_83C2:
C - - - - - 0x0003D2 00:83C2: AD 05 07  LDA ram_0705_se_flag
C - - - - - 0x0003D5 00:83C5: F0 06     BEQ bra_83CD
- - - - - - 0x0003D7 00:83C7: C4 10     CPY ram_0010
- - - - - - 0x0003D9 00:83C9: B0 02     BCS bra_83CD
- - - - - - 0x0003DB 00:83CB: A9 00     LDA #$00
bra_83CD:
C - - - - - 0x0003DD 00:83CD: 8D 05 07  STA ram_0705_se_flag
C - - - - - 0x0003E0 00:83D0: 88        DEY
C - - - - - 0x0003E1 00:83D1: 98        TYA
C - - - - - 0x0003E2 00:83D2: 0A        ASL
C - - - - - 0x0003E3 00:83D3: A8        TAY
C - - - - - 0x0003E4 00:83D4: B9 80 8F  LDA tbl_8F80_music_and_sfx,Y
C - - - - - 0x0003E7 00:83D7: 85 F0     STA ram_00F0
C - - - - - 0x0003E9 00:83D9: B9 81 8F  LDA tbl_8F80_music_and_sfx + $01,Y
C - - - - - 0x0003EC 00:83DC: 85 F1     STA ram_00F1
C - - - - - 0x0003EE 00:83DE: A0 00     LDY #$00
bra_83E0_loop:
C - - - - - 0x0003F0 00:83E0: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0003F2 00:83E2: C9 FF     CMP #$FF
C - - - - - 0x0003F4 00:83E4: D0 01     BNE bra_83E7
C - - - - - 0x0003F6 00:83E6: 60        RTS
bra_83E7:
C - - - - - 0x0003F7 00:83E7: AA        TAX
C - - - - - 0x0003F8 00:83E8: C8        INY
C - - - - - 0x0003F9 00:83E9: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0003FB 00:83EB: 9D 1E 07  STA ram_071E_se,X
C - - - - - 0x0003FE 00:83EE: C8        INY
C - - - - - 0x0003FF 00:83EF: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000401 00:83F1: 9D 26 07  STA ram_0726_se,X
C - - - - - 0x000404 00:83F4: A9 01     LDA #$01
C - - - - - 0x000406 00:83F6: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x000409 00:83F9: 9D 2E 07  STA ram_072E_se,X
C - - - - - 0x00040C 00:83FC: A9 00     LDA #$00
C - - - - - 0x00040E 00:83FE: 9D 36 07  STA ram_0736_se,X
C - - - - - 0x000411 00:8401: 9D AE 07  STA ram_07AE_se,X
C - - - - - 0x000414 00:8404: 9D 76 07  STA ram_0776_se,X
C - - - - - 0x000417 00:8407: C8        INY
C - - - - - 0x000418 00:8408: D0 D6     BNE bra_83E0_loop



loc_840A:
C D 0 - - - 0x00041A 00:840A: A9 01     LDA #$01
C - - - - - 0x00041C 00:840C: 8D 05 07  STA ram_0705_se_flag
C - - - - - 0x00041F 00:840F: A9 00     LDA #$00
C - - - - - 0x000421 00:8411: 8D 00 07  STA ram_sound_cnt
C - - - - - 0x000424 00:8414: 8D 1C 07  STA ram_0716_se + $06
C - - - - - 0x000427 00:8417: A2 07     LDX #$07
bra_8419:
C - - - - - 0x000429 00:8419: BC 6E 07  LDY ram_076E_se,X
C - - - - - 0x00042C 00:841C: C0 0F     CPY #$0F
C - - - - - 0x00042E 00:841E: D0 07     BNE bra_8427
- - - - - - 0x000430 00:8420: A9 00     LDA #$00
- - - - - - 0x000432 00:8422: 8D 16 07  STA ram_0716_se
- - - - - - 0x000435 00:8425: F0 09     BEQ bra_8430
bra_8427:
C - - - - - 0x000437 00:8427: B9 38 84  LDA tbl_8438,Y
C - - - - - 0x00043A 00:842A: 9D 06 07  STA ram_0706_se,X
C - - - - - 0x00043D 00:842D: 9D 0E 07  STA ram_070E_se,X
bra_8430:
C - - - - - 0x000440 00:8430: CA        DEX
C - - - - - 0x000441 00:8431: E0 03     CPX #$03
C - - - - - 0x000443 00:8433: D0 E4     BNE bra_8419
C - - - - - 0x000445 00:8435: 4C 29 80  JMP loc_8029



tbl_8438:
- D 0 - - - 0x000448 00:8438: 0C        .byte $0C   ; 
- - - - - - 0x000449 00:8439: 0D        .byte $0D   ; 
- - - - - - 0x00044A 00:843A: 0E        .byte $0E   ; 
- D 0 - - - 0x00044B 00:843B: 0F        .byte $0F   ; 
- D 0 - - - 0x00044C 00:843C: 10        .byte $10   ; 
- D 0 - - - 0x00044D 00:843D: 12        .byte $12   ; 
- - - - - - 0x00044E 00:843E: 14        .byte $14   ; 
- - - - - - 0x00044F 00:843F: 17        .byte $17   ; 
- D 0 - - - 0x000450 00:8440: 1A        .byte $1A   ; 
- - - - - - 0x000451 00:8441: 1E        .byte $1E   ; 
- - - - - - 0x000452 00:8442: 24        .byte $24   ; 
- - - - - - 0x000453 00:8443: 2D        .byte $2D   ; 
- - - - - - 0x000454 00:8444: 3C        .byte $3C   ; 
- - - - - - 0x000455 00:8445: 5A        .byte $5A   ; 
- - - - - - 0x000456 00:8446: B4        .byte $B4   ; 



tbl_8447:
; see con_se_cb
- D 0 - - - 0x000457 00:8447: 8A 84     .word ofs_000_848A_E0
- - - - - - 0x000459 00:8449: 87 84     .word ofs_000_8487_E1   ; unused, index doesn't exist
- D 0 - - - 0x00045B 00:844B: B7 84     .word ofs_000_84B7_E2
- D 0 - - - 0x00045D 00:844D: C9 84     .word ofs_000_84C9_E3
- D 0 - - - 0x00045F 00:844F: DB 84     .word ofs_000_84DB_E4
- D 0 - - - 0x000461 00:8451: E7 84     .word ofs_000_84E7_E5
- - - - - - 0x000463 00:8453: 87 84     .word ofs_000_8487_E6   ; unused, index doesn't exist
- - - - - - 0x000465 00:8455: 87 84     .word ofs_000_8487_E7   ; unused, index doesn't exist
- D 0 - - - 0x000467 00:8457: F0 84     .word ofs_000_84F0_E8_jmp
- D 0 - - - 0x000469 00:8459: 07 85     .word ofs_000_8507_E9_jsr
- D 0 - - - 0x00046B 00:845B: 33 85     .word ofs_000_8533_EA_rts
- D 0 - - - 0x00046D 00:845D: 4E 85     .word ofs_000_854E_EB
- D 0 - - - 0x00046F 00:845F: 79 85     .word ofs_000_8579_EC
- D 0 - - - 0x000471 00:8461: A8 85     .word ofs_000_85A8_ED
- - - - - - 0x000473 00:8463: 87 84     .word ofs_000_8487_EE   ; unused, index doesn't exist
- D 0 - - - 0x000475 00:8465: CD 85     .word ofs_000_85CD_EF
- - - - - - 0x000477 00:8467: 87 84     .word ofs_000_8487_F0   ; unused, index doesn't exist
- - - - - - 0x000479 00:8469: 87 84     .word ofs_000_8487_F1   ; unused, index doesn't exist
- D 0 - - - 0x00047B 00:846B: AC 84     .word ofs_000_84AC_F2
- D 0 - - - 0x00047D 00:846D: D8 85     .word ofs_000_85D8_F3
- D 0 - - - 0x00047F 00:846F: E3 85     .word ofs_000_85E3_F4
- - - - - - 0x000481 00:8471: EE 85     .word ofs_000_85EE_F5   ; unused, index doesn't exist
- - - - - - 0x000483 00:8473: F5 85     .word ofs_000_85F5_F6   ; unused, index doesn't exist
- - - - - - 0x000485 00:8475: 87 84     .word ofs_000_8487_F7   ; unused, index doesn't exist
- - - - - - 0x000487 00:8477: 87 84     .word ofs_000_8487_F8   ; unused, index doesn't exist
- - - - - - 0x000489 00:8479: FC 85     .word ofs_000_85FC_F9   ; unused, index doesn't exist
- - - - - - 0x00048B 00:847B: 1A 86     .word ofs_000_861A_FA   ; unused, index doesn't exist
- D 0 - - - 0x00048D 00:847D: 3B 86     .word ofs_000_863B_FB
- D 0 - - - 0x00048F 00:847F: 42 86     .word ofs_000_8642_FC
- - - - - - 0x000491 00:8481: 87 84     .word ofs_000_8487_FD   ; unused, index doesn't exist
- - - - - - 0x000493 00:8483: 38 86     .word ofs_000_8638_FE   ; unused, index doesn't exist
- D 0 - - - 0x000495 00:8485: 49 86     .word ofs_000_8649_FF_stop



ofs_000_8487_E1:
ofs_000_8487_E6:
ofs_000_8487_E7:
ofs_000_8487_EE:
ofs_000_8487_F0:
ofs_000_8487_F1:
ofs_000_8487_F7:
ofs_000_8487_F8:
ofs_000_8487_FD:
; bzk garbage
- - - - - - 0x000497 00:8487: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_848A_E0:
C - - J - - 0x00049A 00:848A: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x00049C 00:848C: C8        INY
C - - - - - 0x00049D 00:848D: 84 F9     STY ram_00F9
C - - - - - 0x00049F 00:848F: 0A        ASL
C - - - - - 0x0004A0 00:8490: A8        TAY
C - - - - - 0x0004A1 00:8491: B9 7A 87  LDA tbl_877A,Y
C - - - - - 0x0004A4 00:8494: 9D 56 07  STA ram_0756_se,X
C - - - - - 0x0004A7 00:8497: B9 7B 87  LDA tbl_877A + $01,Y
C - - - - - 0x0004AA 00:849A: 9D 5E 07  STA ram_075E_se,X
C - - - - - 0x0004AD 00:849D: A9 01     LDA #$01
C - - - - - 0x0004AF 00:849F: 9D 4E 07  STA ram_074E_se,X
C - - - - - 0x0004B2 00:84A2: A9 00     LDA #$00
C - - - - - 0x0004B4 00:84A4: 9D 66 07  STA ram_0766_se,X
C - - - - - 0x0004B7 00:84A7: A4 F9     LDY ram_00F9
C - - - - - 0x0004B9 00:84A9: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_84AC_F2:
C - - J - - 0x0004BC 00:84AC: A9 10     LDA #$10
C - - - - - 0x0004BE 00:84AE: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x0004C1 00:84B1: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x0004C4 00:84B4: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_84B7_E2:
C - - J - - 0x0004C7 00:84B7: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0004C9 00:84B9: C8        INY
C - - - - - 0x0004CA 00:84BA: 85 F9     STA ram_00F9
C - - - - - 0x0004CC 00:84BC: A9 3F     LDA #$3F
C - - - - - 0x0004CE 00:84BE: 3D 8E 07  AND ram_078E_se,X
C - - - - - 0x0004D1 00:84C1: 05 F9     ORA ram_00F9
C - - - - - 0x0004D3 00:84C3: 9D 8E 07  STA ram_078E_se,X
C - - - - - 0x0004D6 00:84C6: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_84C9_E3:
C - - J - - 0x0004D9 00:84C9: AD 05 07  LDA ram_0705_se_flag
C - - - - - 0x0004DC 00:84CC: F0 04     BEQ bra_84D2
C - - - - - 0x0004DE 00:84CE: C8        INY
C - - - - - 0x0004DF 00:84CF: 4C CF 82  JMP loc_82CF_read_next_byte
bra_84D2:
C - - - - - 0x0004E2 00:84D2: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0004E4 00:84D4: C8        INY
C - - - - - 0x0004E5 00:84D5: 9D 6E 07  STA ram_076E_se,X
C - - - - - 0x0004E8 00:84D8: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_84DB_E4:
C - - J - - 0x0004EB 00:84DB: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0004ED 00:84DD: C8        INY
C - - - - - 0x0004EE 00:84DE: E0 02     CPX #$02
C - - - - - 0x0004F0 00:84E0: B0 02     BCS bra_84E4
C - - - - - 0x0004F2 00:84E2: 95 FD     STA ram_00FD,X
bra_84E4:
C - - - - - 0x0004F4 00:84E4: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_84E7_E5:
C - - J - - 0x0004F7 00:84E7: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0004F9 00:84E9: C8        INY
C - - - - - 0x0004FA 00:84EA: 9D 76 07  STA ram_0776_se,X
C - - - - - 0x0004FD 00:84ED: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_84F0_E8_jmp:
C - - J - - 0x000500 00:84F0: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000502 00:84F2: C8        INY
C - - - - - 0x000503 00:84F3: 9D 1E 07  STA ram_071E_se,X
C - - - - - 0x000506 00:84F6: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000508 00:84F8: 9D 26 07  STA ram_0726_se,X
C - - - - - 0x00050B 00:84FB: 85 F1     STA ram_00F1
C - - - - - 0x00050D 00:84FD: BD 1E 07  LDA ram_071E_se,X
C - - - - - 0x000510 00:8500: 85 F0     STA ram_00F0
C - - - - - 0x000512 00:8502: A0 00     LDY #$00
C - - - - - 0x000514 00:8504: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_8507_E9_jsr:
C - - J - - 0x000517 00:8507: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000519 00:8509: 85 F6     STA ram_00F6
C - - - - - 0x00051B 00:850B: C8        INY
C - - - - - 0x00051C 00:850C: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x00051E 00:850E: 85 F7     STA ram_00F7
C - - - - - 0x000520 00:8510: C8        INY
C - - - - - 0x000521 00:8511: 98        TYA
C - - - - - 0x000522 00:8512: BC AE 07  LDY ram_07AE_se,X
C - - - - - 0x000525 00:8515: 91 F2     STA (ram_00F2),Y
C - - - - - 0x000527 00:8517: C8        INY
C - - - - - 0x000528 00:8518: A5 F0     LDA ram_00F0
C - - - - - 0x00052A 00:851A: 91 F2     STA (ram_00F2),Y
C - - - - - 0x00052C 00:851C: C8        INY
C - - - - - 0x00052D 00:851D: A5 F1     LDA ram_00F1
C - - - - - 0x00052F 00:851F: 91 F2     STA (ram_00F2),Y
C - - - - - 0x000531 00:8521: C8        INY
C - - - - - 0x000532 00:8522: 98        TYA
C - - - - - 0x000533 00:8523: 9D AE 07  STA ram_07AE_se,X
C - - - - - 0x000536 00:8526: A5 F6     LDA ram_00F6
C - - - - - 0x000538 00:8528: 85 F0     STA ram_00F0
C - - - - - 0x00053A 00:852A: A5 F7     LDA ram_00F7
C - - - - - 0x00053C 00:852C: 85 F1     STA ram_00F1
C - - - - - 0x00053E 00:852E: A0 00     LDY #$00
C - - - - - 0x000540 00:8530: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_8533_EA_rts:
C - - J - - 0x000543 00:8533: BC AE 07  LDY ram_07AE_se,X
C - - - - - 0x000546 00:8536: 88        DEY
C - - - - - 0x000547 00:8537: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x000549 00:8539: 85 F1     STA ram_00F1
C - - - - - 0x00054B 00:853B: 88        DEY
C - - - - - 0x00054C 00:853C: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x00054E 00:853E: 85 F0     STA ram_00F0
C - - - - - 0x000550 00:8540: 88        DEY
C - - - - - 0x000551 00:8541: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x000553 00:8543: 85 F6     STA ram_00F6
C - - - - - 0x000555 00:8545: 98        TYA
C - - - - - 0x000556 00:8546: 9D AE 07  STA ram_07AE_se,X
C - - - - - 0x000559 00:8549: A4 F6     LDY ram_00F6
C - - - - - 0x00055B 00:854B: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_854E_EB:
C - - J - - 0x00055E 00:854E: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000560 00:8550: C8        INY
C - - - - - 0x000561 00:8551: 85 F6     STA ram_00F6
C - - - - - 0x000563 00:8553: D0 03     BNE bra_8558
- - - - - - 0x000565 00:8555: 4C CF 82  JMP loc_82CF_read_next_byte
bra_8558:
C - - - - - 0x000568 00:8558: 84 F7     STY ram_00F7
C - - - - - 0x00056A 00:855A: 98        TYA
C - - - - - 0x00056B 00:855B: BC AE 07  LDY ram_07AE_se,X
C - - - - - 0x00056E 00:855E: 91 F2     STA (ram_00F2),Y
C - - - - - 0x000570 00:8560: C8        INY
C - - - - - 0x000571 00:8561: A5 F0     LDA ram_00F0
C - - - - - 0x000573 00:8563: 91 F2     STA (ram_00F2),Y
C - - - - - 0x000575 00:8565: A5 F1     LDA ram_00F1
C - - - - - 0x000577 00:8567: C8        INY
C - - - - - 0x000578 00:8568: 91 F2     STA (ram_00F2),Y
C - - - - - 0x00057A 00:856A: C8        INY
C - - - - - 0x00057B 00:856B: A5 F6     LDA ram_00F6
C - - - - - 0x00057D 00:856D: 91 F2     STA (ram_00F2),Y
C - - - - - 0x00057F 00:856F: C8        INY
C - - - - - 0x000580 00:8570: 98        TYA
C - - - - - 0x000581 00:8571: 9D AE 07  STA ram_07AE_se,X
C - - - - - 0x000584 00:8574: A4 F7     LDY ram_00F7
C - - - - - 0x000586 00:8576: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_8579_EC:
C - - J - - 0x000589 00:8579: 84 F6     STY ram_00F6
C - - - - - 0x00058B 00:857B: BC AE 07  LDY ram_07AE_se,X
C - - - - - 0x00058E 00:857E: 88        DEY
C - - - - - 0x00058F 00:857F: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x000591 00:8581: 85 F7     STA ram_00F7
C - - - - - 0x000593 00:8583: C6 F7     DEC ram_00F7
C - - - - - 0x000595 00:8585: D0 0C     BNE bra_8593
C - - - - - 0x000597 00:8587: 88        DEY
C - - - - - 0x000598 00:8588: 88        DEY
C - - - - - 0x000599 00:8589: 88        DEY
C - - - - - 0x00059A 00:858A: 98        TYA
C - - - - - 0x00059B 00:858B: 9D AE 07  STA ram_07AE_se,X
C - - - - - 0x00059E 00:858E: A4 F6     LDY ram_00F6
C - - - - - 0x0005A0 00:8590: 4C CF 82  JMP loc_82CF_read_next_byte
bra_8593:
C - - - - - 0x0005A3 00:8593: A5 F7     LDA ram_00F7
C - - - - - 0x0005A5 00:8595: 91 F2     STA (ram_00F2),Y
C - - - - - 0x0005A7 00:8597: 88        DEY
C - - - - - 0x0005A8 00:8598: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x0005AA 00:859A: 85 F1     STA ram_00F1
C - - - - - 0x0005AC 00:859C: 88        DEY
C - - - - - 0x0005AD 00:859D: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x0005AF 00:859F: 85 F0     STA ram_00F0
C - - - - - 0x0005B1 00:85A1: 88        DEY
C - - - - - 0x0005B2 00:85A2: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x0005B4 00:85A4: A8        TAY
C - - - - - 0x0005B5 00:85A5: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85A8_ED:
C - - J - - 0x0005B8 00:85A8: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0005BA 00:85AA: F0 0D     BEQ bra_85B9
C - - - - - 0x0005BC 00:85AC: 84 F6     STY ram_00F6
C - - - - - 0x0005BE 00:85AE: A8        TAY
C - - - - - 0x0005BF 00:85AF: A9 00     LDA #$00
C - - - - - 0x0005C1 00:85B1: 18        CLC
bra_85B2:
C - - - - - 0x0005C2 00:85B2: 69 08     ADC #$08
C - - - - - 0x0005C4 00:85B4: 88        DEY
C - - - - - 0x0005C5 00:85B5: D0 FB     BNE bra_85B2
C - - - - - 0x0005C7 00:85B7: A4 F6     LDY ram_00F6
bra_85B9:
C - - - - - 0x0005C9 00:85B9: 9D 86 07  STA ram_0786_se,X
C - - - - - 0x0005CC 00:85BC: C8        INY
C - - - - - 0x0005CD 00:85BD: A9 08     LDA #$08
C - - - - - 0x0005CF 00:85BF: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x0005D2 00:85C2: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x0005D5 00:85C5: A9 01     LDA #$01
C - - - - - 0x0005D7 00:85C7: 9D 7E 07  STA ram_077E_se,X
C - - - - - 0x0005DA 00:85CA: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85CD_EF:
C - - J - - 0x0005DD 00:85CD: A9 F7     LDA #$F7
C - - - - - 0x0005DF 00:85CF: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x0005E2 00:85D2: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x0005E5 00:85D5: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85D8_F3:
C - - J - - 0x0005E8 00:85D8: A9 04     LDA #$04
C - - - - - 0x0005EA 00:85DA: 1D 16 07  ORA ram_0716_se,X
C - - - - - 0x0005ED 00:85DD: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x0005F0 00:85E0: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85E3_F4:
C - - J - - 0x0005F3 00:85E3: A9 FB     LDA #$FB
C - - - - - 0x0005F5 00:85E5: 3D 16 07  AND ram_0716_se,X
C - - - - - 0x0005F8 00:85E8: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x0005FB 00:85EB: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85EE_F5:
; bzk garbage
- - - - - - 0x0005FE 00:85EE: A5 01     LDA ram_0001
- - - - - - 0x000600 00:85F0: 85 FC     STA ram_00FC
- - - - - - 0x000602 00:85F2: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85F5_F6:
; bzk garbage
- - - - - - 0x000605 00:85F5: A9 00     LDA #$00
- - - - - - 0x000607 00:85F7: 85 FC     STA ram_00FC
- - - - - - 0x000609 00:85F9: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_85FC_F9:
- - - - - - 0x00060C 00:85FC: A9 0F     LDA #$0F
- - - - - - 0x00060E 00:85FE: 8D 10 40  STA $4010
- - - - - - 0x000611 00:8601: A9 00     LDA #$00
- - - - - - 0x000613 00:8603: 8D 11 40  STA $4011
- - - - - - 0x000616 00:8606: A9 F8     LDA #$F8
- - - - - - 0x000618 00:8608: 8D 12 40  STA $4012
- - - - - - 0x00061B 00:860B: A9 04     LDA #$04
- - - - - - 0x00061D 00:860D: 8D 13 40  STA $4013
- - - - - - 0x000620 00:8610: A5 FA     LDA ram_00FA
- - - - - - 0x000622 00:8612: 09 10     ORA #$10
- - - - - - 0x000624 00:8614: 8D 15 40  STA $4015
- - - - - - 0x000627 00:8617: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_861A_FA:
- - - - - - 0x00062A 00:861A: A9 0F     LDA #$0F
- - - - - - 0x00062C 00:861C: 8D 10 40  STA $4010
- - - - - - 0x00062F 00:861F: A9 00     LDA #$00
- - - - - - 0x000631 00:8621: 8D 11 40  STA $4011
- - - - - - 0x000634 00:8624: A9 F0     LDA #$F0
- - - - - - 0x000636 00:8626: 8D 12 40  STA $4012
- - - - - - 0x000639 00:8629: A9 20     LDA #$20
- - - - - - 0x00063B 00:862B: 8D 13 40  STA $4013
- - - - - - 0x00063E 00:862E: A5 FA     LDA ram_00FA
- - - - - - 0x000640 00:8630: 09 10     ORA #$10
- - - - - - 0x000642 00:8632: 8D 15 40  STA $4015
- - - - - - 0x000645 00:8635: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_8638_FE:
; bzk garbage
- - - - - - 0x000648 00:8638: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_863B_FB:
C - - J - - 0x00064B 00:863B: A9 01     LDA #$01
C - - - - - 0x00064D 00:863D: 85 FB     STA ram_00FB
C - - - - - 0x00064F 00:863F: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_8642_FC:
C - - J - - 0x000652 00:8642: A9 00     LDA #$00
C - - - - - 0x000654 00:8644: 85 FB     STA ram_00FB
C - - - - - 0x000656 00:8646: 4C CF 82  JMP loc_82CF_read_next_byte



ofs_000_8649_FF_stop:
C - - J - - 0x000659 00:8649: A9 00     LDA #$00
C - - - - - 0x00065B 00:864B: 9D 16 07  STA ram_0716_se,X
C - - - - - 0x00065E 00:864E: 8A        TXA
C - - - - - 0x00065F 00:864F: 29 04     AND #$04
C - - - - - 0x000661 00:8651: D0 0D     BNE bra_8660_RTS
C - - - - - 0x000663 00:8653: A9 E0     LDA #$E0
C - - - - - 0x000665 00:8655: 1D 1A 07  ORA ram_0716_se + $04,X
C - - - - - 0x000668 00:8658: 9D 1A 07  STA ram_0716_se + $04,X
C - - - - - 0x00066B 00:865B: A9 FF     LDA #$FF
C - - - - - 0x00066D 00:865D: 9D AA 07  STA ram_07A6_se + $04,X
bra_8660_RTS:
C - - - - - 0x000670 00:8660: 60        RTS


; bzk garbage
- - - - - - 0x000671 00:8661: 00        .byte $00   ; 



tbl_8662:
- D 0 - - - 0x000672 00:8662: AE        .byte $AE   ; 
tbl_8663:
- D 0 - - - 0x000673 00:8663: 06        .byte $06   ; 
- D 0 - - - 0x000674 00:8664: 4E        .byte $4E   ; 
- D 0 - - - 0x000675 00:8665: 06        .byte $06   ; 
- D 0 - - - 0x000676 00:8666: F3        .byte $F3   ; 
- D 0 - - - 0x000677 00:8667: 05        .byte $05   ; 
- D 0 - - - 0x000678 00:8668: 9E        .byte $9E   ; 
- D 0 - - - 0x000679 00:8669: 05        .byte $05   ; 
- D 0 - - - 0x00067A 00:866A: 4D        .byte $4D   ; 
- D 0 - - - 0x00067B 00:866B: 05        .byte $05   ; 
- D 0 - - - 0x00067C 00:866C: 01        .byte $01   ; 
- D 0 - - - 0x00067D 00:866D: 05        .byte $05   ; 
- D 0 - - - 0x00067E 00:866E: B9        .byte $B9   ; 
- D 0 - - - 0x00067F 00:866F: 04        .byte $04   ; 
- D 0 - - - 0x000680 00:8670: 75        .byte $75   ; 
- D 0 - - - 0x000681 00:8671: 04        .byte $04   ; 
- D 0 - - - 0x000682 00:8672: 35        .byte $35   ; 
- D 0 - - - 0x000683 00:8673: 04        .byte $04   ; 
- D 0 - - - 0x000684 00:8674: F8        .byte $F8   ; 
- D 0 - - - 0x000685 00:8675: 03        .byte $03   ; 
- D 0 - - - 0x000686 00:8676: BF        .byte $BF   ; 
- D 0 - - - 0x000687 00:8677: 03        .byte $03   ; 
- D 0 - - - 0x000688 00:8678: 89        .byte $89   ; 
- D 0 - - - 0x000689 00:8679: 03        .byte $03   ; 



tbl_867A:
- D 0 - - - 0x00068A 00:867A: 01        .byte $01   ; 
tbl_867B:
- D 0 - - - 0x00068B 00:867B: 00        .byte $00   ; 
- D 0 - - - 0x00068C 00:867C: 02        .byte $02   ; 
- D 0 - - - 0x00068D 00:867D: 00        .byte $00   ; 
- D 0 - - - 0x00068E 00:867E: 04        .byte $04   ; 
- D 0 - - - 0x00068F 00:867F: 00        .byte $00   ; 
- D 0 - - - 0x000690 00:8680: 06        .byte $06   ; 
- D 0 - - - 0x000691 00:8681: 00        .byte $00   ; 
- D 0 - - - 0x000692 00:8682: 08        .byte $08   ; 
- D 0 - - - 0x000693 00:8683: 00        .byte $00   ; 
- D 0 - - - 0x000694 00:8684: 0C        .byte $0C   ; 
- D 0 - - - 0x000695 00:8685: 00        .byte $00   ; 
- D 0 - - - 0x000696 00:8686: 10        .byte $10   ; 
- D 0 - - - 0x000697 00:8687: 00        .byte $00   ; 
- D 0 - - - 0x000698 00:8688: 18        .byte $18   ; 
- D 0 - - - 0x000699 00:8689: 00        .byte $00   ; 
- D 0 - - - 0x00069A 00:868A: 20        .byte $20   ; 
- D 0 - - - 0x00069B 00:868B: 00        .byte $00   ; 
- D 0 - - - 0x00069C 00:868C: 30        .byte $30   ; 
- D 0 - - - 0x00069D 00:868D: 00        .byte $00   ; 
- D 0 - - - 0x00069E 00:868E: 40        .byte $40   ; 
- D 0 - - - 0x00069F 00:868F: 00        .byte $00   ; 
- - - - - - 0x0006A0 00:8690: 60        .byte $60   ; 
- - - - - - 0x0006A1 00:8691: 00        .byte $00   ; 
- - - - - - 0x0006A2 00:8692: 80        .byte $80   ; 
- - - - - - 0x0006A3 00:8693: 00        .byte $00   ; 
- - - - - - 0x0006A4 00:8694: C0        .byte $C0   ; 
- - - - - - 0x0006A5 00:8695: 00        .byte $00   ; 
- D 0 - - - 0x0006A6 00:8696: 00        .byte $00   ; 
- D 0 - - - 0x0006A7 00:8697: 01        .byte $01   ; 
- - - - - - 0x0006A8 00:8698: 80        .byte $80   ; 
- - - - - - 0x0006A9 00:8699: 01        .byte $01   ; 
- - - - - - 0x0006AA 00:869A: 00        .byte $00   ; 
- - - - - - 0x0006AB 00:869B: 02        .byte $02   ; 
- - - - - - 0x0006AC 00:869C: 00        .byte $00   ; 
- - - - - - 0x0006AD 00:869D: 03        .byte $03   ; 
- - - - - - 0x0006AE 00:869E: 00        .byte $00   ; 
- - - - - - 0x0006AF 00:869F: 04        .byte $04   ; 
- - - - - - 0x0006B0 00:86A0: 00        .byte $00   ; 
- - - - - - 0x0006B1 00:86A1: 06        .byte $06   ; 
- - - - - - 0x0006B2 00:86A2: 00        .byte $00   ; 
- - - - - - 0x0006B3 00:86A3: 08        .byte $08   ; 
- - - - - - 0x0006B4 00:86A4: 00        .byte $00   ; 
- - - - - - 0x0006B5 00:86A5: 0C        .byte $0C   ; 
- D 0 - - - 0x0006B6 00:86A6: 03        .byte $03   ; 
- D 0 - - - 0x0006B7 00:86A7: 00        .byte $00   ; 
- D 0 - - - 0x0006B8 00:86A8: 15        .byte $15   ; 
- D 0 - - - 0x0006B9 00:86A9: 00        .byte $00   ; 
- D 0 - - - 0x0006BA 00:86AA: 24        .byte $24   ; 
- D 0 - - - 0x0006BB 00:86AB: 00        .byte $00   ; 
- - - - - - 0x0006BC 00:86AC: 2A        .byte $2A   ; 
- - - - - - 0x0006BD 00:86AD: 00        .byte $00   ; 
- - - - - - 0x0006BE 00:86AE: 2B        .byte $2B   ; 
- - - - - - 0x0006BF 00:86AF: 00        .byte $00   ; 
- - - - - - 0x0006C0 00:86B0: 55        .byte $55   ; 
- - - - - - 0x0006C1 00:86B1: 00        .byte $00   ; 
- D 0 - - - 0x0006C2 00:86B2: 56        .byte $56   ; 
- D 0 - - - 0x0006C3 00:86B3: 00        .byte $00   ; 
- - - - - - 0x0006C4 00:86B4: AA        .byte $AA   ; 
- - - - - - 0x0006C5 00:86B5: 00        .byte $00   ; 
- - - - - - 0x0006C6 00:86B6: AC        .byte $AC   ; 
- - - - - - 0x0006C7 00:86B7: 00        .byte $00   ; 
- - - - - - 0x0006C8 00:86B8: E0        .byte $E0   ; 
- - - - - - 0x0006C9 00:86B9: 01        .byte $01   ; 



tbl_86BA:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x0006CA 00:86BA: 01        .byte $01, $00   ; 00 
- D 0 - - - 0x0006CC 00:86BC: 01        .byte $01, $81   ; 02 
- D 0 - - - 0x0006CE 00:86BE: 01        .byte $01, $00   ; 04 
- D 0 - - - 0x0006D0 00:86C0: 01        .byte $01, $01   ; 06 
- D 0 - - - 0x0006D2 00:86C2: 01        .byte $01, $00   ; 08 
- D 0 - - - 0x0006D4 00:86C4: 01        .byte $01, $82   ; 0A 
- D 0 - - - 0x0006D6 00:86C6: 01        .byte $01, $00   ; 0C 
- D 0 - - - 0x0006D8 00:86C8: 01        .byte $01, $02   ; 0E 
- D 0 - - - 0x0006DA 00:86CA: 01        .byte $01, $00   ; 10 
- D 0 - - - 0x0006DC 00:86CC: 01        .byte $01, $83   ; 12 
- D 0 - - - 0x0006DE 00:86CE: 01        .byte $01, $00   ; 14 
- D 0 - - - 0x0006E0 00:86D0: 01        .byte $01, $03   ; 16 
- D 0 - - - 0x0006E2 00:86D2: 01        .byte $01, $00   ; 18 
- D 0 - - - 0x0006E4 00:86D4: 01        .byte $01, $84   ; 1A 
- D 0 - - - 0x0006E6 00:86D6: 01        .byte $01, $00   ; 1C 
- D 0 - - - 0x0006E8 00:86D8: 01        .byte $01, $04   ; 1E 
- D 0 - - - 0x0006EA 00:86DA: 01        .byte $01, $00   ; 20 
- D 0 - - - 0x0006EC 00:86DC: 01        .byte $01, $85   ; 22 
- D 0 - - - 0x0006EE 00:86DE: 01        .byte $01, $00   ; 24 
- D 0 - - - 0x0006F0 00:86E0: 01        .byte $01, $05   ; 26 
- D 0 - - - 0x0006F2 00:86E2: 01        .byte $01, $00   ; 28 
- D 0 - - - 0x0006F4 00:86E4: 01        .byte $01, $86   ; 2A 
- D 0 - - - 0x0006F6 00:86E6: 01        .byte $01, $00   ; 2C 
- D 0 - - - 0x0006F8 00:86E8: 01        .byte $01, $06   ; 2E 
- D 0 - - - 0x0006FA 00:86EA: 02        .byte $02, $00   ; 30 
- D 0 - - - 0x0006FC 00:86EC: 02        .byte $02, $81   ; 32 
- D 0 - - - 0x0006FE 00:86EE: 02        .byte $02, $00   ; 34 
- D 0 - - - 0x000700 00:86F0: 02        .byte $02, $01   ; 36 
- D 0 - - - 0x000702 00:86F2: 02        .byte $02, $00   ; 38 
- D 0 - - - 0x000704 00:86F4: 02        .byte $02, $82   ; 3A 
- D 0 - - - 0x000706 00:86F6: 02        .byte $02, $00   ; 3C 
- D 0 - - - 0x000708 00:86F8: 02        .byte $02, $02   ; 3E 
- D 0 - - - 0x00070A 00:86FA: 02        .byte $02, $00   ; 40 
- D 0 - - - 0x00070C 00:86FC: 02        .byte $02, $83   ; 42 
- D 0 - - - 0x00070E 00:86FE: 02        .byte $02, $00   ; 44 
- D 0 - - - 0x000710 00:8700: 02        .byte $02, $03   ; 46 
- D 0 - - - 0x000712 00:8702: 02        .byte $02, $00   ; 48 
- D 0 - - - 0x000714 00:8704: 02        .byte $02, $84   ; 4A 
- D 0 - - - 0x000716 00:8706: 02        .byte $02, $00   ; 4C 
- D 0 - - - 0x000718 00:8708: 02        .byte $02, $04   ; 4E 
- - - - - - 0x00071A 00:870A: 02        .byte $02, $00   ; 50 
- - - - - - 0x00071C 00:870C: 02        .byte $02, $85   ; 52 
- - - - - - 0x00071E 00:870E: 02        .byte $02, $00   ; 54 
- - - - - - 0x000720 00:8710: 02        .byte $02, $05   ; 56 
- D 0 - - - 0x000722 00:8712: 02        .byte $02, $00   ; 58 
- D 0 - - - 0x000724 00:8714: 02        .byte $02, $86   ; 5A 
- D 0 - - - 0x000726 00:8716: 02        .byte $02, $00   ; 5C 
- D 0 - - - 0x000728 00:8718: 02        .byte $02, $06   ; 5E 
- D 0 - - - 0x00072A 00:871A: 03        .byte $03, $00   ; 60 
- D 0 - - - 0x00072C 00:871C: 03        .byte $03, $81   ; 62 
- D 0 - - - 0x00072E 00:871E: 03        .byte $03, $00   ; 64 
- D 0 - - - 0x000730 00:8720: 03        .byte $03, $01   ; 66 
- D 0 - - - 0x000732 00:8722: 03        .byte $03, $00   ; 68 
- D 0 - - - 0x000734 00:8724: 03        .byte $03, $82   ; 6A 
- D 0 - - - 0x000736 00:8726: 03        .byte $03, $00   ; 6C 
- D 0 - - - 0x000738 00:8728: 03        .byte $03, $02   ; 6E 
- D 0 - - - 0x00073A 00:872A: 03        .byte $03, $00   ; 70 
- D 0 - - - 0x00073C 00:872C: 03        .byte $03, $83   ; 72 
- D 0 - - - 0x00073E 00:872E: 03        .byte $03, $00   ; 74 
- D 0 - - - 0x000740 00:8730: 03        .byte $03, $03   ; 76 
- D 0 - - - 0x000742 00:8732: 03        .byte $03, $00   ; 78 
- D 0 - - - 0x000744 00:8734: 03        .byte $03, $84   ; 7A 
- D 0 - - - 0x000746 00:8736: 03        .byte $03, $00   ; 7C 
- D 0 - - - 0x000748 00:8738: 04        .byte $04, $08   ; 7E 
- D 0 - - - 0x00074A 00:873A: 03        .byte $03, $00   ; 80 
- D 0 - - - 0x00074C 00:873C: 03        .byte $03, $85   ; 82 
- D 0 - - - 0x00074E 00:873E: 03        .byte $03, $00   ; 84 
- D 0 - - - 0x000750 00:8740: 03        .byte $03, $05   ; 86 
- - - - - - 0x000752 00:8742: 03        .byte $03, $00   ; 88 
- - - - - - 0x000754 00:8744: 03        .byte $03, $86   ; 8A 
- - - - - - 0x000756 00:8746: 03        .byte $03, $00   ; 8C 
- - - - - - 0x000758 00:8748: 03        .byte $03, $06   ; 8E 
- D 0 - - - 0x00075A 00:874A: 02        .byte $02, $0A   ; 90 
- D 0 - - - 0x00075C 00:874C: 01        .byte $01, $06   ; 92 
- D 0 - - - 0x00075E 00:874E: FF        .byte $FF, $00   ; 94 
- - - - - - 0x000760 00:8750: FF        .byte $FF, $00   ; 96 
- D 0 - - - 0x000762 00:8752: 01        .byte $01, $03   ; 98 
- D 0 - - - 0x000764 00:8754: 01        .byte $01, $02   ; 9A 
- D 0 - - - 0x000766 00:8756: 01        .byte $01, $01   ; 9C 
- D 0 - - - 0x000768 00:8758: FF        .byte $FF, $00   ; 9E 
- D 0 - - - 0x00076A 00:875A: 02        .byte $02, $0C   ; A0 
- D 0 - - - 0x00076C 00:875C: 01        .byte $01, $06   ; A2 
- D 0 - - - 0x00076E 00:875E: 02        .byte $02, $02   ; A4 
- D 0 - - - 0x000770 00:8760: FF        .byte $FF, $00   ; A6 
- D 0 - - - 0x000772 00:8762: 01        .byte $01, $09   ; A8 
- D 0 - - - 0x000774 00:8764: 01        .byte $01, $06   ; AA 
- D 0 - - - 0x000776 00:8766: 01        .byte $01, $03   ; AC 
- D 0 - - - 0x000778 00:8768: FF        .byte $FF, $00   ; AE 
- - - - - - 0x00077A 00:876A: 02        .byte $02, $48   ; B0 
- - - - - - 0x00077C 00:876C: 02        .byte $02, $30   ; B2 
- - - - - - 0x00077E 00:876E: 02        .byte $02, $18   ; B4 
- - - - - - 0x000780 00:8770: FF        .byte $FF, $00   ; B6 
- - - - - - 0x000782 00:8772: 02        .byte $02, $36   ; B8 
- - - - - - 0x000784 00:8774: 02        .byte $02, $24   ; BA 
- - - - - - 0x000786 00:8776: 02        .byte $02, $12   ; BC 
- - - - - - 0x000788 00:8778: FF        .byte $FF, $00   ; BE 



tbl_877A:
- D 0 - - - 0x00078A 00:877A: 04 88     .word _off001_8804_00
- D 0 - - - 0x00078C 00:877C: 24 88     .word _off001_8824_01
- D 0 - - - 0x00078E 00:877E: 44 88     .word _off001_8844_02
- D 0 - - - 0x000790 00:8780: 68 88     .word _off001_8868_03
- D 0 - - - 0x000792 00:8782: 96 88     .word _off001_8896_04
- D 0 - - - 0x000794 00:8784: CC 88     .word _off001_88CC_05
- D 0 - - - 0x000796 00:8786: 04 89     .word _off001_8904_06
- D 0 - - - 0x000798 00:8788: 3C 89     .word _off001_893C_07
- D 0 - - - 0x00079A 00:878A: 74 89     .word _off001_8974_08
- D 0 - - - 0x00079C 00:878C: 8A 89     .word _off001_898A_09
- D 0 - - - 0x00079E 00:878E: 9E 89     .word _off001_899E_0A
- D 0 - - - 0x0007A0 00:8790: B4 89     .word _off001_89B4_0B
- D 0 - - - 0x0007A2 00:8792: CE 89     .word _off001_89CE_0C
- D 0 - - - 0x0007A4 00:8794: F6 89     .word _off001_89F6_0D
- D 0 - - - 0x0007A6 00:8796: 0A 8A     .word _off001_8A0A_0E
- D 0 - - - 0x0007A8 00:8798: 18 8A     .word _off001_8A18_0F
- D 0 - - - 0x0007AA 00:879A: 2A 8A     .word _off001_8A2A_10
- D 0 - - - 0x0007AC 00:879C: 48 8A     .word _off001_8A48_11
- D 0 - - - 0x0007AE 00:879E: 52 8A     .word _off001_8A52_12
- D 0 - - - 0x0007B0 00:87A0: 62 8A     .word _off001_8A62_13
- D 0 - - - 0x0007B2 00:87A2: 70 8A     .word _off001_8A70_14
- D 0 - - - 0x0007B4 00:87A4: 94 8A     .word _off001_8A94_15
- D 0 - - - 0x0007B6 00:87A6: B0 8A     .word _off001_8AB0_16
- D 0 - - - 0x0007B8 00:87A8: C0 8A     .word _off001_8AC0_17
- D 0 - - - 0x0007BA 00:87AA: E8 8A     .word _off001_8AE8_18
- - - - - - 0x0007BC 00:87AC: FC 8A     .word _off001_8AFC_19
- D 0 - - - 0x0007BE 00:87AE: 1A 8B     .word _off001_8B1A_1A
- D 0 - - - 0x0007C0 00:87B0: 34 8B     .word _off001_8B34_1B
- D 0 - - - 0x0007C2 00:87B2: 58 8B     .word _off001_8B58_1C
- D 0 - - - 0x0007C4 00:87B4: 5C 8B     .word _off001_8B5C_1D
- D 0 - - - 0x0007C6 00:87B6: 72 8B     .word _off001_8B72_1E
- D 0 - - - 0x0007C8 00:87B8: 90 8B     .word _off001_8B90_1F
- D 0 - - - 0x0007CA 00:87BA: AA 8B     .word _off001_8BAA_20
- D 0 - - - 0x0007CC 00:87BC: AE 8B     .word _off001_8BAE_21
- D 0 - - - 0x0007CE 00:87BE: B2 8B     .word _off001_8BB2_22
- D 0 - - - 0x0007D0 00:87C0: B6 8B     .word _off001_8BB6_23
- D 0 - - - 0x0007D2 00:87C2: BA 8B     .word _off001_8BBA_24
- D 0 - - - 0x0007D4 00:87C4: BE 8B     .word _off001_8BBE_25
- D 0 - - - 0x0007D6 00:87C6: FA 8B     .word _off001_8BFA_26
- D 0 - - - 0x0007D8 00:87C8: 2A 8C     .word _off001_8C2A_27
- D 0 - - - 0x0007DA 00:87CA: 54 8C     .word _off001_8C54_28
- D 0 - - - 0x0007DC 00:87CC: 74 8C     .word _off001_8C74_29
- D 0 - - - 0x0007DE 00:87CE: 86 8C     .word _off001_8C86_2A
- D 0 - - - 0x0007E0 00:87D0: A6 8C     .word _off001_8CA6_2B
- D 0 - - - 0x0007E2 00:87D2: BE 8C     .word _off001_8CBE_2C
- D 0 - - - 0x0007E4 00:87D4: CC 8C     .word _off001_8CCC_2D
- D 0 - - - 0x0007E6 00:87D6: EA 8C     .word _off001_8CEA_2E
- D 0 - - - 0x0007E8 00:87D8: EE 8C     .word _off001_8CEE_2F
- D 0 - - - 0x0007EA 00:87DA: 2A 8D     .word _off001_8D2A_30
- D 0 - - - 0x0007EC 00:87DC: 4A 8D     .word _off001_8D4A_31
- D 0 - - - 0x0007EE 00:87DE: 5C 8D     .word _off001_8D5C_32
- D 0 - - - 0x0007F0 00:87E0: 6E 8D     .word _off001_8D6E_33
- D 0 - - - 0x0007F2 00:87E2: 82 8D     .word _off001_8D82_34
- - - - - - 0x0007F4 00:87E4: AC 8D     .word _off001_8DAC_35
- D 0 - - - 0x0007F6 00:87E6: D6 8D     .word _off001_8DD6_36
- D 0 - - - 0x0007F8 00:87E8: FC 8D     .word _off001_8DFC_37
- D 0 - - - 0x0007FA 00:87EA: 18 8E     .word _off001_8E18_38
- D 0 - - - 0x0007FC 00:87EC: 28 8E     .word _off001_8E28_39
- D 0 - - - 0x0007FE 00:87EE: 42 8E     .word _off001_8E42_3A
- D 0 - - - 0x000800 00:87F0: 5C 8E     .word _off001_8E5C_3B
- D 0 - - - 0x000802 00:87F2: 70 8E     .word _off001_8E70_3C
- D 0 - - - 0x000804 00:87F4: 8C 8E     .word _off001_8E8C_3D
- D 0 - - - 0x000806 00:87F6: A4 8E     .word _off001_8EA4_3E
- D 0 - - - 0x000808 00:87F8: B4 8E     .word _off001_8EB4_3F
- D 0 - - - 0x00080A 00:87FA: CC 8E     .word _off001_8ECC_40
- D 0 - - - 0x00080C 00:87FC: EE 8E     .word _off001_8EEE_41
- D 0 - - - 0x00080E 00:87FE: 26 8F     .word _off001_8F26_42
- D 0 - - - 0x000810 00:8800: 3C 8F     .word _off001_8F3C_43
- D 0 - - - 0x000812 00:8802: 66 8F     .word _off001_8F66_44



_off001_8804_00:
- D 0 - I - 0x000814 00:8804: 01        .byte $01   ; 
- D 0 - I - 0x000815 00:8805: 0F        .byte $0F   ; 
- D 0 - I - 0x000816 00:8806: 01        .byte $01   ; 
- D 0 - I - 0x000817 00:8807: 0E        .byte $0E   ; 
- D 0 - I - 0x000818 00:8808: 01        .byte $01   ; 
- D 0 - I - 0x000819 00:8809: 0D        .byte $0D   ; 
- D 0 - I - 0x00081A 00:880A: 01        .byte $01   ; 
- D 0 - I - 0x00081B 00:880B: 0C        .byte $0C   ; 
- D 0 - I - 0x00081C 00:880C: 01        .byte $01   ; 
- D 0 - I - 0x00081D 00:880D: 0B        .byte $0B   ; 
- D 0 - I - 0x00081E 00:880E: 01        .byte $01   ; 
- D 0 - I - 0x00081F 00:880F: 0A        .byte $0A   ; 
- D 0 - I - 0x000820 00:8810: 01        .byte $01   ; 
- D 0 - I - 0x000821 00:8811: 09        .byte $09   ; 
- D 0 - I - 0x000822 00:8812: 01        .byte $01   ; 
- D 0 - I - 0x000823 00:8813: 08        .byte $08   ; 
- D 0 - I - 0x000824 00:8814: 01        .byte $01   ; 
- D 0 - I - 0x000825 00:8815: 07        .byte $07   ; 
- D 0 - I - 0x000826 00:8816: 01        .byte $01   ; 
- D 0 - I - 0x000827 00:8817: 06        .byte $06   ; 
- D 0 - I - 0x000828 00:8818: 01        .byte $01   ; 
- D 0 - I - 0x000829 00:8819: 05        .byte $05   ; 
- D 0 - I - 0x00082A 00:881A: 01        .byte $01   ; 
- D 0 - I - 0x00082B 00:881B: 04        .byte $04   ; 
- D 0 - I - 0x00082C 00:881C: 01        .byte $01   ; 
- D 0 - I - 0x00082D 00:881D: 03        .byte $03   ; 
- D 0 - I - 0x00082E 00:881E: 01        .byte $01   ; 
- D 0 - I - 0x00082F 00:881F: 02        .byte $02   ; 
- D 0 - I - 0x000830 00:8820: 01        .byte $01   ; 
- D 0 - I - 0x000831 00:8821: 01        .byte $01   ; 
- D 0 - I - 0x000832 00:8822: FF        .byte $FF   ; 
- D 0 - I - 0x000833 00:8823: 00        .byte $00   ; 



_off001_8824_01:
- D 0 - I - 0x000834 00:8824: 02        .byte $02   ; 
- D 0 - I - 0x000835 00:8825: 0F        .byte $0F   ; 
- D 0 - I - 0x000836 00:8826: 02        .byte $02   ; 
- D 0 - I - 0x000837 00:8827: 0E        .byte $0E   ; 
- D 0 - I - 0x000838 00:8828: 02        .byte $02   ; 
- D 0 - I - 0x000839 00:8829: 0D        .byte $0D   ; 
- D 0 - I - 0x00083A 00:882A: 02        .byte $02   ; 
- D 0 - I - 0x00083B 00:882B: 0C        .byte $0C   ; 
- D 0 - I - 0x00083C 00:882C: 02        .byte $02   ; 
- D 0 - I - 0x00083D 00:882D: 0B        .byte $0B   ; 
- D 0 - I - 0x00083E 00:882E: 02        .byte $02   ; 
- D 0 - I - 0x00083F 00:882F: 0A        .byte $0A   ; 
- D 0 - I - 0x000840 00:8830: 02        .byte $02   ; 
- D 0 - I - 0x000841 00:8831: 09        .byte $09   ; 
- D 0 - I - 0x000842 00:8832: 02        .byte $02   ; 
- D 0 - I - 0x000843 00:8833: 08        .byte $08   ; 
- D 0 - I - 0x000844 00:8834: 02        .byte $02   ; 
- D 0 - I - 0x000845 00:8835: 07        .byte $07   ; 
- D 0 - I - 0x000846 00:8836: 02        .byte $02   ; 
- D 0 - I - 0x000847 00:8837: 06        .byte $06   ; 
- D 0 - I - 0x000848 00:8838: 02        .byte $02   ; 
- D 0 - I - 0x000849 00:8839: 05        .byte $05   ; 
- D 0 - I - 0x00084A 00:883A: 02        .byte $02   ; 
- D 0 - I - 0x00084B 00:883B: 04        .byte $04   ; 
- D 0 - I - 0x00084C 00:883C: 02        .byte $02   ; 
- D 0 - I - 0x00084D 00:883D: 03        .byte $03   ; 
- D 0 - I - 0x00084E 00:883E: 02        .byte $02   ; 
- D 0 - I - 0x00084F 00:883F: 02        .byte $02   ; 
- D 0 - I - 0x000850 00:8840: 02        .byte $02   ; 
- D 0 - I - 0x000851 00:8841: 01        .byte $01   ; 
- D 0 - I - 0x000852 00:8842: FF        .byte $FF   ; 
- D 0 - I - 0x000853 00:8843: 00        .byte $00   ; 



_off001_8844_02:
- D 0 - I - 0x000854 00:8844: 01        .byte $01   ; 
- D 0 - I - 0x000855 00:8845: 0B        .byte $0B   ; 
- D 0 - I - 0x000856 00:8846: 01        .byte $01   ; 
- D 0 - I - 0x000857 00:8847: 0D        .byte $0D   ; 
- D 0 - I - 0x000858 00:8848: 02        .byte $02   ; 
- D 0 - I - 0x000859 00:8849: 0F        .byte $0F   ; 
- D 0 - I - 0x00085A 00:884A: 01        .byte $01   ; 
- D 0 - I - 0x00085B 00:884B: 0E        .byte $0E   ; 
- D 0 - I - 0x00085C 00:884C: 01        .byte $01   ; 
- D 0 - I - 0x00085D 00:884D: 0C        .byte $0C   ; 
- D 0 - I - 0x00085E 00:884E: 01        .byte $01   ; 
- D 0 - I - 0x00085F 00:884F: 0B        .byte $0B   ; 
- D 0 - I - 0x000860 00:8850: 01        .byte $01   ; 
- D 0 - I - 0x000861 00:8851: 09        .byte $09   ; 
- D 0 - I - 0x000862 00:8852: 01        .byte $01   ; 
- D 0 - I - 0x000863 00:8853: 07        .byte $07   ; 
- D 0 - I - 0x000864 00:8854: 01        .byte $01   ; 
- D 0 - I - 0x000865 00:8855: 04        .byte $04   ; 
- D 0 - I - 0x000866 00:8856: 01        .byte $01   ; 
- D 0 - I - 0x000867 00:8857: 05        .byte $05   ; 
- D 0 - I - 0x000868 00:8858: 01        .byte $01   ; 
- D 0 - I - 0x000869 00:8859: 06        .byte $06   ; 
- D 0 - I - 0x00086A 00:885A: 02        .byte $02   ; 
- D 0 - I - 0x00086B 00:885B: 07        .byte $07   ; 
- D 0 - I - 0x00086C 00:885C: 01        .byte $01   ; 
- D 0 - I - 0x00086D 00:885D: 06        .byte $06   ; 
- D 0 - I - 0x00086E 00:885E: 01        .byte $01   ; 
- D 0 - I - 0x00086F 00:885F: 05        .byte $05   ; 
- D 0 - I - 0x000870 00:8860: 01        .byte $01   ; 
- D 0 - I - 0x000871 00:8861: 04        .byte $04   ; 
- D 0 - I - 0x000872 00:8862: 01        .byte $01   ; 
- D 0 - I - 0x000873 00:8863: 02        .byte $02   ; 
- D 0 - I - 0x000874 00:8864: 01        .byte $01   ; 
- D 0 - I - 0x000875 00:8865: 01        .byte $01   ; 
- D 0 - I - 0x000876 00:8866: FF        .byte $FF   ; 
- D 0 - I - 0x000877 00:8867: 00        .byte $00   ; 



_off001_8868_03:
- D 0 - I - 0x000878 00:8868: 01        .byte $01   ; 
- D 0 - I - 0x000879 00:8869: 0B        .byte $0B   ; 
- D 0 - I - 0x00087A 00:886A: 01        .byte $01   ; 
- D 0 - I - 0x00087B 00:886B: 0D        .byte $0D   ; 
- D 0 - I - 0x00087C 00:886C: 03        .byte $03   ; 
- D 0 - I - 0x00087D 00:886D: 0F        .byte $0F   ; 
- D 0 - I - 0x00087E 00:886E: 02        .byte $02   ; 
- D 0 - I - 0x00087F 00:886F: 0E        .byte $0E   ; 
- D 0 - I - 0x000880 00:8870: 02        .byte $02   ; 
- D 0 - I - 0x000881 00:8871: 0C        .byte $0C   ; 
- D 0 - I - 0x000882 00:8872: 01        .byte $01   ; 
- D 0 - I - 0x000883 00:8873: 0B        .byte $0B   ; 
- D 0 - I - 0x000884 00:8874: 01        .byte $01   ; 
- D 0 - I - 0x000885 00:8875: 0A        .byte $0A   ; 
- D 0 - I - 0x000886 00:8876: 01        .byte $01   ; 
- D 0 - I - 0x000887 00:8877: 09        .byte $09   ; 
- D 0 - I - 0x000888 00:8878: 01        .byte $01   ; 
- D 0 - I - 0x000889 00:8879: 08        .byte $08   ; 
- D 0 - I - 0x00088A 00:887A: 01        .byte $01   ; 
- D 0 - I - 0x00088B 00:887B: 07        .byte $07   ; 
- D 0 - I - 0x00088C 00:887C: 01        .byte $01   ; 
- D 0 - I - 0x00088D 00:887D: 04        .byte $04   ; 
- D 0 - I - 0x00088E 00:887E: 01        .byte $01   ; 
- D 0 - I - 0x00088F 00:887F: 05        .byte $05   ; 
- D 0 - I - 0x000890 00:8880: 01        .byte $01   ; 
- D 0 - I - 0x000891 00:8881: 06        .byte $06   ; 
- D 0 - I - 0x000892 00:8882: 03        .byte $03   ; 
- D 0 - I - 0x000893 00:8883: 07        .byte $07   ; 
- D 0 - I - 0x000894 00:8884: 02        .byte $02   ; 
- D 0 - I - 0x000895 00:8885: 06        .byte $06   ; 
- D 0 - I - 0x000896 00:8886: 02        .byte $02   ; 
- D 0 - I - 0x000897 00:8887: 05        .byte $05   ; 
- D 0 - I - 0x000898 00:8888: 01        .byte $01   ; 
- D 0 - I - 0x000899 00:8889: 04        .byte $04   ; 
- D 0 - I - 0x00089A 00:888A: 01        .byte $01   ; 
- D 0 - I - 0x00089B 00:888B: 03        .byte $03   ; 
- - - - - - 0x00089C 00:888C: 01        .byte $01   ; 
- - - - - - 0x00089D 00:888D: 02        .byte $02   ; 
- - - - - - 0x00089E 00:888E: 01        .byte $01   ; 
- - - - - - 0x00089F 00:888F: 01        .byte $01   ; 
- - - - - - 0x0008A0 00:8890: 01        .byte $01   ; 
- - - - - - 0x0008A1 00:8891: 02        .byte $02   ; 
- - - - - - 0x0008A2 00:8892: 01        .byte $01   ; 
- - - - - - 0x0008A3 00:8893: 01        .byte $01   ; 
- - - - - - 0x0008A4 00:8894: FF        .byte $FF   ; 
- - - - - - 0x0008A5 00:8895: 00        .byte $00   ; 



_off001_8896_04:
- D 0 - I - 0x0008A6 00:8896: 02        .byte $02   ; 
- D 0 - I - 0x0008A7 00:8897: 0B        .byte $0B   ; 
- D 0 - I - 0x0008A8 00:8898: 02        .byte $02   ; 
- D 0 - I - 0x0008A9 00:8899: 0D        .byte $0D   ; 
- D 0 - I - 0x0008AA 00:889A: 06        .byte $06   ; 
- D 0 - I - 0x0008AB 00:889B: 0F        .byte $0F   ; 
- D 0 - I - 0x0008AC 00:889C: 03        .byte $03   ; 
- D 0 - I - 0x0008AD 00:889D: 0E        .byte $0E   ; 
- D 0 - I - 0x0008AE 00:889E: 02        .byte $02   ; 
- D 0 - I - 0x0008AF 00:889F: 0D        .byte $0D   ; 
- D 0 - I - 0x0008B0 00:88A0: 05        .byte $05   ; 
- D 0 - I - 0x0008B1 00:88A1: 0C        .byte $0C   ; 
- D 0 - I - 0x0008B2 00:88A2: 03        .byte $03   ; 
- D 0 - I - 0x0008B3 00:88A3: 0B        .byte $0B   ; 
- D 0 - I - 0x0008B4 00:88A4: 02        .byte $02   ; 
- D 0 - I - 0x0008B5 00:88A5: 0C        .byte $0C   ; 
- D 0 - I - 0x0008B6 00:88A6: 03        .byte $03   ; 
- D 0 - I - 0x0008B7 00:88A7: 0A        .byte $0A   ; 
- D 0 - I - 0x0008B8 00:88A8: 02        .byte $02   ; 
- D 0 - I - 0x0008B9 00:88A9: 09        .byte $09   ; 
- D 0 - I - 0x0008BA 00:88AA: 03        .byte $03   ; 
- D 0 - I - 0x0008BB 00:88AB: 0A        .byte $0A   ; 
- D 0 - I - 0x0008BC 00:88AC: 02        .byte $02   ; 
- D 0 - I - 0x0008BD 00:88AD: 09        .byte $09   ; 
- D 0 - I - 0x0008BE 00:88AE: 03        .byte $03   ; 
- D 0 - I - 0x0008BF 00:88AF: 08        .byte $08   ; 
- D 0 - I - 0x0008C0 00:88B0: 02        .byte $02   ; 
- D 0 - I - 0x0008C1 00:88B1: 07        .byte $07   ; 
- D 0 - I - 0x0008C2 00:88B2: 02        .byte $02   ; 
- D 0 - I - 0x0008C3 00:88B3: 06        .byte $06   ; 
- D 0 - I - 0x0008C4 00:88B4: 02        .byte $02   ; 
- D 0 - I - 0x0008C5 00:88B5: 06        .byte $06   ; 
- D 0 - I - 0x0008C6 00:88B6: 06        .byte $06   ; 
- D 0 - I - 0x0008C7 00:88B7: 05        .byte $05   ; 
- D 0 - I - 0x0008C8 00:88B8: 03        .byte $03   ; 
- D 0 - I - 0x0008C9 00:88B9: 04        .byte $04   ; 
- D 0 - I - 0x0008CA 00:88BA: 02        .byte $02   ; 
- D 0 - I - 0x0008CB 00:88BB: 03        .byte $03   ; 
- D 0 - I - 0x0008CC 00:88BC: 05        .byte $05   ; 
- D 0 - I - 0x0008CD 00:88BD: 04        .byte $04   ; 
- D 0 - I - 0x0008CE 00:88BE: 03        .byte $03   ; 
- D 0 - I - 0x0008CF 00:88BF: 03        .byte $03   ; 
- D 0 - I - 0x0008D0 00:88C0: 02        .byte $02   ; 
- D 0 - I - 0x0008D1 00:88C1: 04        .byte $04   ; 
- D 0 - I - 0x0008D2 00:88C2: 03        .byte $03   ; 
- D 0 - I - 0x0008D3 00:88C3: 03        .byte $03   ; 
- D 0 - I - 0x0008D4 00:88C4: 02        .byte $02   ; 
- D 0 - I - 0x0008D5 00:88C5: 02        .byte $02   ; 
- D 0 - I - 0x0008D6 00:88C6: 03        .byte $03   ; 
- D 0 - I - 0x0008D7 00:88C7: 02        .byte $02   ; 
- D 0 - I - 0x0008D8 00:88C8: 02        .byte $02   ; 
- D 0 - I - 0x0008D9 00:88C9: 01        .byte $01   ; 
- D 0 - I - 0x0008DA 00:88CA: FF        .byte $FF   ; 
- D 0 - I - 0x0008DB 00:88CB: 00        .byte $00   ; 



_off001_88CC_05:
- D 0 - I - 0x0008DC 00:88CC: 01        .byte $01   ; 
- D 0 - I - 0x0008DD 00:88CD: 0B        .byte $0B   ; 
- D 0 - I - 0x0008DE 00:88CE: 0B        .byte $0B   ; 
- D 0 - I - 0x0008DF 00:88CF: 0C        .byte $0C   ; 
- D 0 - I - 0x0008E0 00:88D0: 02        .byte $02   ; 
- D 0 - I - 0x0008E1 00:88D1: 0B        .byte $0B   ; 
- D 0 - I - 0x0008E2 00:88D2: 02        .byte $02   ; 
- D 0 - I - 0x0008E3 00:88D3: 0A        .byte $0A   ; 
- D 0 - I - 0x0008E4 00:88D4: 02        .byte $02   ; 
- D 0 - I - 0x0008E5 00:88D5: 0B        .byte $0B   ; 
- D 0 - I - 0x0008E6 00:88D6: 02        .byte $02   ; 
- D 0 - I - 0x0008E7 00:88D7: 0A        .byte $0A   ; 
- D 0 - I - 0x0008E8 00:88D8: 02        .byte $02   ; 
- D 0 - I - 0x0008E9 00:88D9: 0B        .byte $0B   ; 
- D 0 - I - 0x0008EA 00:88DA: 02        .byte $02   ; 
- D 0 - I - 0x0008EB 00:88DB: 0A        .byte $0A   ; 
- D 0 - I - 0x0008EC 00:88DC: 02        .byte $02   ; 
- D 0 - I - 0x0008ED 00:88DD: 09        .byte $09   ; 
- D 0 - I - 0x0008EE 00:88DE: 02        .byte $02   ; 
- D 0 - I - 0x0008EF 00:88DF: 08        .byte $08   ; 
- D 0 - I - 0x0008F0 00:88E0: 02        .byte $02   ; 
- D 0 - I - 0x0008F1 00:88E1: 09        .byte $09   ; 
- D 0 - I - 0x0008F2 00:88E2: 02        .byte $02   ; 
- D 0 - I - 0x0008F3 00:88E3: 08        .byte $08   ; 
- D 0 - I - 0x0008F4 00:88E4: 02        .byte $02   ; 
- D 0 - I - 0x0008F5 00:88E5: 09        .byte $09   ; 
- D 0 - I - 0x0008F6 00:88E6: 02        .byte $02   ; 
- D 0 - I - 0x0008F7 00:88E7: 08        .byte $08   ; 
- D 0 - I - 0x0008F8 00:88E8: 02        .byte $02   ; 
- D 0 - I - 0x0008F9 00:88E9: 09        .byte $09   ; 
- D 0 - I - 0x0008FA 00:88EA: 02        .byte $02   ; 
- D 0 - I - 0x0008FB 00:88EB: 06        .byte $06   ; 
- D 0 - I - 0x0008FC 00:88EC: 02        .byte $02   ; 
- D 0 - I - 0x0008FD 00:88ED: 07        .byte $07   ; 
- D 0 - I - 0x0008FE 00:88EE: 02        .byte $02   ; 
- D 0 - I - 0x0008FF 00:88EF: 06        .byte $06   ; 
- D 0 - I - 0x000900 00:88F0: 02        .byte $02   ; 
- D 0 - I - 0x000901 00:88F1: 05        .byte $05   ; 
- D 0 - I - 0x000902 00:88F2: 02        .byte $02   ; 
- D 0 - I - 0x000903 00:88F3: 06        .byte $06   ; 
- - - - - - 0x000904 00:88F4: 02        .byte $02   ; 
- - - - - - 0x000905 00:88F5: 04        .byte $04   ; 
- - - - - - 0x000906 00:88F6: 02        .byte $02   ; 
- - - - - - 0x000907 00:88F7: 03        .byte $03   ; 
- - - - - - 0x000908 00:88F8: 02        .byte $02   ; 
- - - - - - 0x000909 00:88F9: 04        .byte $04   ; 
- - - - - - 0x00090A 00:88FA: 02        .byte $02   ; 
- - - - - - 0x00090B 00:88FB: 03        .byte $03   ; 
- - - - - - 0x00090C 00:88FC: 02        .byte $02   ; 
- - - - - - 0x00090D 00:88FD: 02        .byte $02   ; 
- - - - - - 0x00090E 00:88FE: 02        .byte $02   ; 
- - - - - - 0x00090F 00:88FF: 01        .byte $01   ; 
- - - - - - 0x000910 00:8900: 01        .byte $01   ; 
- - - - - - 0x000911 00:8901: 01        .byte $01   ; 
- - - - - - 0x000912 00:8902: FF        .byte $FF   ; 
- - - - - - 0x000913 00:8903: 00        .byte $00   ; 



_off001_8904_06:
- D 0 - I - 0x000914 00:8904: 01        .byte $01   ; 
- D 0 - I - 0x000915 00:8905: 0B        .byte $0B   ; 
- D 0 - I - 0x000916 00:8906: 03        .byte $03   ; 
- D 0 - I - 0x000917 00:8907: 0C        .byte $0C   ; 
- D 0 - I - 0x000918 00:8908: 02        .byte $02   ; 
- D 0 - I - 0x000919 00:8909: 0B        .byte $0B   ; 
- D 0 - I - 0x00091A 00:890A: 01        .byte $01   ; 
- D 0 - I - 0x00091B 00:890B: 0C        .byte $0C   ; 
- D 0 - I - 0x00091C 00:890C: 01        .byte $01   ; 
- D 0 - I - 0x00091D 00:890D: 0B        .byte $0B   ; 
- D 0 - I - 0x00091E 00:890E: 01        .byte $01   ; 
- D 0 - I - 0x00091F 00:890F: 0A        .byte $0A   ; 
- D 0 - I - 0x000920 00:8910: 01        .byte $01   ; 
- D 0 - I - 0x000921 00:8911: 0B        .byte $0B   ; 
- D 0 - I - 0x000922 00:8912: 01        .byte $01   ; 
- D 0 - I - 0x000923 00:8913: 0A        .byte $0A   ; 
- D 0 - I - 0x000924 00:8914: 01        .byte $01   ; 
- D 0 - I - 0x000925 00:8915: 09        .byte $09   ; 
- D 0 - I - 0x000926 00:8916: 01        .byte $01   ; 
- D 0 - I - 0x000927 00:8917: 08        .byte $08   ; 
- D 0 - I - 0x000928 00:8918: 01        .byte $01   ; 
- D 0 - I - 0x000929 00:8919: 09        .byte $09   ; 
- D 0 - I - 0x00092A 00:891A: 01        .byte $01   ; 
- D 0 - I - 0x00092B 00:891B: 0A        .byte $0A   ; 
- D 0 - I - 0x00092C 00:891C: 01        .byte $01   ; 
- D 0 - I - 0x00092D 00:891D: 08        .byte $08   ; 
- D 0 - I - 0x00092E 00:891E: 01        .byte $01   ; 
- D 0 - I - 0x00092F 00:891F: 07        .byte $07   ; 
- D 0 - I - 0x000930 00:8920: 01        .byte $01   ; 
- D 0 - I - 0x000931 00:8921: 06        .byte $06   ; 
- D 0 - I - 0x000932 00:8922: 01        .byte $01   ; 
- D 0 - I - 0x000933 00:8923: 07        .byte $07   ; 
- D 0 - I - 0x000934 00:8924: 01        .byte $01   ; 
- D 0 - I - 0x000935 00:8925: 08        .byte $08   ; 
- D 0 - I - 0x000936 00:8926: 01        .byte $01   ; 
- D 0 - I - 0x000937 00:8927: 07        .byte $07   ; 
- D 0 - I - 0x000938 00:8928: 01        .byte $01   ; 
- D 0 - I - 0x000939 00:8929: 06        .byte $06   ; 
- D 0 - I - 0x00093A 00:892A: 01        .byte $01   ; 
- D 0 - I - 0x00093B 00:892B: 04        .byte $04   ; 
- D 0 - I - 0x00093C 00:892C: 01        .byte $01   ; 
- D 0 - I - 0x00093D 00:892D: 04        .byte $04   ; 
- D 0 - I - 0x00093E 00:892E: 01        .byte $01   ; 
- D 0 - I - 0x00093F 00:892F: 03        .byte $03   ; 
- D 0 - I - 0x000940 00:8930: 01        .byte $01   ; 
- D 0 - I - 0x000941 00:8931: 04        .byte $04   ; 
- D 0 - I - 0x000942 00:8932: 01        .byte $01   ; 
- D 0 - I - 0x000943 00:8933: 03        .byte $03   ; 
- D 0 - I - 0x000944 00:8934: 01        .byte $01   ; 
- D 0 - I - 0x000945 00:8935: 02        .byte $02   ; 
- D 0 - I - 0x000946 00:8936: 01        .byte $01   ; 
- D 0 - I - 0x000947 00:8937: 01        .byte $01   ; 
- - - - - - 0x000948 00:8938: 01        .byte $01   ; 
- - - - - - 0x000949 00:8939: 01        .byte $01   ; 
- - - - - - 0x00094A 00:893A: FF        .byte $FF   ; 
- - - - - - 0x00094B 00:893B: 00        .byte $00   ; 



_off001_893C_07:
- D 0 - I - 0x00094C 00:893C: 02        .byte $02   ; 
- D 0 - I - 0x00094D 00:893D: 0D        .byte $0D   ; 
- D 0 - I - 0x00094E 00:893E: 05        .byte $05   ; 
- D 0 - I - 0x00094F 00:893F: 0C        .byte $0C   ; 
- D 0 - I - 0x000950 00:8940: 03        .byte $03   ; 
- D 0 - I - 0x000951 00:8941: 0B        .byte $0B   ; 
- D 0 - I - 0x000952 00:8942: 02        .byte $02   ; 
- D 0 - I - 0x000953 00:8943: 0C        .byte $0C   ; 
- D 0 - I - 0x000954 00:8944: 02        .byte $02   ; 
- D 0 - I - 0x000955 00:8945: 0B        .byte $0B   ; 
- D 0 - I - 0x000956 00:8946: 02        .byte $02   ; 
- D 0 - I - 0x000957 00:8947: 0A        .byte $0A   ; 
- D 0 - I - 0x000958 00:8948: 02        .byte $02   ; 
- D 0 - I - 0x000959 00:8949: 0B        .byte $0B   ; 
- D 0 - I - 0x00095A 00:894A: 02        .byte $02   ; 
- D 0 - I - 0x00095B 00:894B: 0A        .byte $0A   ; 
- D 0 - I - 0x00095C 00:894C: 02        .byte $02   ; 
- D 0 - I - 0x00095D 00:894D: 09        .byte $09   ; 
- D 0 - I - 0x00095E 00:894E: 02        .byte $02   ; 
- D 0 - I - 0x00095F 00:894F: 08        .byte $08   ; 
- D 0 - I - 0x000960 00:8950: 03        .byte $03   ; 
- D 0 - I - 0x000961 00:8951: 09        .byte $09   ; 
- D 0 - I - 0x000962 00:8952: 03        .byte $03   ; 
- D 0 - I - 0x000963 00:8953: 08        .byte $08   ; 
- D 0 - I - 0x000964 00:8954: 03        .byte $03   ; 
- D 0 - I - 0x000965 00:8955: 07        .byte $07   ; 
- D 0 - I - 0x000966 00:8956: 03        .byte $03   ; 
- D 0 - I - 0x000967 00:8957: 08        .byte $08   ; 
- D 0 - I - 0x000968 00:8958: 03        .byte $03   ; 
- D 0 - I - 0x000969 00:8959: 07        .byte $07   ; 
- D 0 - I - 0x00096A 00:895A: 04        .byte $04   ; 
- D 0 - I - 0x00096B 00:895B: 07        .byte $07   ; 
- D 0 - I - 0x00096C 00:895C: 04        .byte $04   ; 
- D 0 - I - 0x00096D 00:895D: 08        .byte $08   ; 
- D 0 - I - 0x00096E 00:895E: 04        .byte $04   ; 
- D 0 - I - 0x00096F 00:895F: 07        .byte $07   ; 
- D 0 - I - 0x000970 00:8960: 04        .byte $04   ; 
- D 0 - I - 0x000971 00:8961: 06        .byte $06   ; 
- D 0 - I - 0x000972 00:8962: 04        .byte $04   ; 
- D 0 - I - 0x000973 00:8963: 07        .byte $07   ; 
- D 0 - I - 0x000974 00:8964: 05        .byte $05   ; 
- D 0 - I - 0x000975 00:8965: 04        .byte $04   ; 
- D 0 - I - 0x000976 00:8966: 05        .byte $05   ; 
- D 0 - I - 0x000977 00:8967: 03        .byte $03   ; 
- D 0 - I - 0x000978 00:8968: 05        .byte $05   ; 
- D 0 - I - 0x000979 00:8969: 04        .byte $04   ; 
- D 0 - I - 0x00097A 00:896A: 02        .byte $02   ; 
- D 0 - I - 0x00097B 00:896B: 03        .byte $03   ; 
- D 0 - I - 0x00097C 00:896C: 02        .byte $02   ; 
- D 0 - I - 0x00097D 00:896D: 02        .byte $02   ; 
- D 0 - I - 0x00097E 00:896E: 02        .byte $02   ; 
- D 0 - I - 0x00097F 00:896F: 01        .byte $01   ; 
- - - - - - 0x000980 00:8970: 02        .byte $02   ; 
- - - - - - 0x000981 00:8971: 01        .byte $01   ; 
- - - - - - 0x000982 00:8972: FF        .byte $FF   ; 
- - - - - - 0x000983 00:8973: 00        .byte $00   ; 



_off001_8974_08:
- D 0 - I - 0x000984 00:8974: 02        .byte $02   ; 
- D 0 - I - 0x000985 00:8975: 07        .byte $07   ; 
- D 0 - I - 0x000986 00:8976: 04        .byte $04   ; 
- D 0 - I - 0x000987 00:8977: 09        .byte $09   ; 
- D 0 - I - 0x000988 00:8978: 02        .byte $02   ; 
- D 0 - I - 0x000989 00:8979: 08        .byte $08   ; 
- D 0 - I - 0x00098A 00:897A: 02        .byte $02   ; 
- D 0 - I - 0x00098B 00:897B: 07        .byte $07   ; 
- D 0 - I - 0x00098C 00:897C: 02        .byte $02   ; 
- D 0 - I - 0x00098D 00:897D: 06        .byte $06   ; 
- D 0 - I - 0x00098E 00:897E: 02        .byte $02   ; 
- D 0 - I - 0x00098F 00:897F: 05        .byte $05   ; 
- D 0 - I - 0x000990 00:8980: 02        .byte $02   ; 
- D 0 - I - 0x000991 00:8981: 04        .byte $04   ; 
- D 0 - I - 0x000992 00:8982: 03        .byte $03   ; 
- D 0 - I - 0x000993 00:8983: 03        .byte $03   ; 
- D 0 - I - 0x000994 00:8984: 03        .byte $03   ; 
- D 0 - I - 0x000995 00:8985: 02        .byte $02   ; 
- D 0 - I - 0x000996 00:8986: 03        .byte $03   ; 
- D 0 - I - 0x000997 00:8987: 01        .byte $01   ; 
- D 0 - I - 0x000998 00:8988: FF        .byte $FF   ; 
- D 0 - I - 0x000999 00:8989: 00        .byte $00   ; 



_off001_898A_09:
- D 0 - I - 0x00099A 00:898A: 04        .byte $04   ; 
- D 0 - I - 0x00099B 00:898B: 07        .byte $07   ; 
- D 0 - I - 0x00099C 00:898C: 0B        .byte $0B   ; 
- D 0 - I - 0x00099D 00:898D: 09        .byte $09   ; 
- D 0 - I - 0x00099E 00:898E: 09        .byte $09   ; 
- D 0 - I - 0x00099F 00:898F: 08        .byte $08   ; 
- D 0 - I - 0x0009A0 00:8990: 09        .byte $09   ; 
- D 0 - I - 0x0009A1 00:8991: 07        .byte $07   ; 
- D 0 - I - 0x0009A2 00:8992: 10        .byte $10   ; 
- D 0 - I - 0x0009A3 00:8993: 06        .byte $06   ; 
- D 0 - I - 0x0009A4 00:8994: 10        .byte $10   ; 
- D 0 - I - 0x0009A5 00:8995: 05        .byte $05   ; 
- D 0 - I - 0x0009A6 00:8996: 10        .byte $10   ; 
- D 0 - I - 0x0009A7 00:8997: 04        .byte $04   ; 
- D 0 - I - 0x0009A8 00:8998: 13        .byte $13   ; 
- D 0 - I - 0x0009A9 00:8999: 02        .byte $02   ; 
- D 0 - I - 0x0009AA 00:899A: 10        .byte $10   ; 
- D 0 - I - 0x0009AB 00:899B: 01        .byte $01   ; 
- D 0 - I - 0x0009AC 00:899C: FF        .byte $FF   ; 
- D 0 - I - 0x0009AD 00:899D: 00        .byte $00   ; 



_off001_899E_0A:
- D 0 - I - 0x0009AE 00:899E: 02        .byte $02   ; 
- D 0 - I - 0x0009AF 00:899F: 06        .byte $06   ; 
- D 0 - I - 0x0009B0 00:89A0: 02        .byte $02   ; 
- D 0 - I - 0x0009B1 00:89A1: 07        .byte $07   ; 
- D 0 - I - 0x0009B2 00:89A2: 05        .byte $05   ; 
- D 0 - I - 0x0009B3 00:89A3: 09        .byte $09   ; 
- D 0 - I - 0x0009B4 00:89A4: 06        .byte $06   ; 
- D 0 - I - 0x0009B5 00:89A5: 08        .byte $08   ; 
- D 0 - I - 0x0009B6 00:89A6: 06        .byte $06   ; 
- D 0 - I - 0x0009B7 00:89A7: 07        .byte $07   ; 
- D 0 - I - 0x0009B8 00:89A8: 0C        .byte $0C   ; 
- D 0 - I - 0x0009B9 00:89A9: 06        .byte $06   ; 
- - - - - - 0x0009BA 00:89AA: 10        .byte $10   ; 
- - - - - - 0x0009BB 00:89AB: 05        .byte $05   ; 
- - - - - - 0x0009BC 00:89AC: 20        .byte $20   ; 
- - - - - - 0x0009BD 00:89AD: 04        .byte $04   ; 
- - - - - - 0x0009BE 00:89AE: 30        .byte $30   ; 
- - - - - - 0x0009BF 00:89AF: 03        .byte $03   ; 
- - - - - - 0x0009C0 00:89B0: 30        .byte $30   ; 
- - - - - - 0x0009C1 00:89B1: 01        .byte $01   ; 
- - - - - - 0x0009C2 00:89B2: FF        .byte $FF   ; 
- - - - - - 0x0009C3 00:89B3: 00        .byte $00   ; 



_off001_89B4_0B:
- D 0 - I - 0x0009C4 00:89B4: 02        .byte $02   ; 
- D 0 - I - 0x0009C5 00:89B5: 09        .byte $09   ; 
- D 0 - I - 0x0009C6 00:89B6: 02        .byte $02   ; 
- D 0 - I - 0x0009C7 00:89B7: 08        .byte $08   ; 
- D 0 - I - 0x0009C8 00:89B8: 02        .byte $02   ; 
- D 0 - I - 0x0009C9 00:89B9: 07        .byte $07   ; 
- D 0 - I - 0x0009CA 00:89BA: 02        .byte $02   ; 
- D 0 - I - 0x0009CB 00:89BB: 06        .byte $06   ; 
- D 0 - I - 0x0009CC 00:89BC: 02        .byte $02   ; 
- D 0 - I - 0x0009CD 00:89BD: 04        .byte $04   ; 
- D 0 - I - 0x0009CE 00:89BE: 02        .byte $02   ; 
- D 0 - I - 0x0009CF 00:89BF: 01        .byte $01   ; 
- D 0 - I - 0x0009D0 00:89C0: 02        .byte $02   ; 
- D 0 - I - 0x0009D1 00:89C1: 08        .byte $08   ; 
- D 0 - I - 0x0009D2 00:89C2: 02        .byte $02   ; 
- D 0 - I - 0x0009D3 00:89C3: 07        .byte $07   ; 
- D 0 - I - 0x0009D4 00:89C4: 02        .byte $02   ; 
- D 0 - I - 0x0009D5 00:89C5: 06        .byte $06   ; 
- D 0 - I - 0x0009D6 00:89C6: 02        .byte $02   ; 
- D 0 - I - 0x0009D7 00:89C7: 04        .byte $04   ; 
- D 0 - I - 0x0009D8 00:89C8: 02        .byte $02   ; 
- D 0 - I - 0x0009D9 00:89C9: 02        .byte $02   ; 
- D 0 - I - 0x0009DA 00:89CA: 02        .byte $02   ; 
- D 0 - I - 0x0009DB 00:89CB: 01        .byte $01   ; 
- D 0 - I - 0x0009DC 00:89CC: FF        .byte $FF   ; 
- D 0 - I - 0x0009DD 00:89CD: 00        .byte $00   ; 



_off001_89CE_0C:
- D 0 - I - 0x0009DE 00:89CE: 01        .byte $01   ; 
- D 0 - I - 0x0009DF 00:89CF: 09        .byte $09   ; 
- D 0 - I - 0x0009E0 00:89D0: 01        .byte $01   ; 
- D 0 - I - 0x0009E1 00:89D1: 07        .byte $07   ; 
- D 0 - I - 0x0009E2 00:89D2: 01        .byte $01   ; 
- D 0 - I - 0x0009E3 00:89D3: 06        .byte $06   ; 
- D 0 - I - 0x0009E4 00:89D4: 01        .byte $01   ; 
- D 0 - I - 0x0009E5 00:89D5: 05        .byte $05   ; 
- D 0 - I - 0x0009E6 00:89D6: 01        .byte $01   ; 
- D 0 - I - 0x0009E7 00:89D7: 03        .byte $03   ; 
- D 0 - I - 0x0009E8 00:89D8: 01        .byte $01   ; 
- D 0 - I - 0x0009E9 00:89D9: 01        .byte $01   ; 
- D 0 - I - 0x0009EA 00:89DA: 01        .byte $01   ; 
- D 0 - I - 0x0009EB 00:89DB: 06        .byte $06   ; 
- D 0 - I - 0x0009EC 00:89DC: 01        .byte $01   ; 
- D 0 - I - 0x0009ED 00:89DD: 05        .byte $05   ; 
- D 0 - I - 0x0009EE 00:89DE: 01        .byte $01   ; 
- D 0 - I - 0x0009EF 00:89DF: 04        .byte $04   ; 
- D 0 - I - 0x0009F0 00:89E0: 01        .byte $01   ; 
- D 0 - I - 0x0009F1 00:89E1: 02        .byte $02   ; 
- D 0 - I - 0x0009F2 00:89E2: 01        .byte $01   ; 
- D 0 - I - 0x0009F3 00:89E3: 02        .byte $02   ; 
- D 0 - I - 0x0009F4 00:89E4: 01        .byte $01   ; 
- D 0 - I - 0x0009F5 00:89E5: 00        .byte $00   ; 
- D 0 - I - 0x0009F6 00:89E6: 01        .byte $01   ; 
- D 0 - I - 0x0009F7 00:89E7: 05        .byte $05   ; 
- D 0 - I - 0x0009F8 00:89E8: 01        .byte $01   ; 
- D 0 - I - 0x0009F9 00:89E9: 04        .byte $04   ; 
- D 0 - I - 0x0009FA 00:89EA: 01        .byte $01   ; 
- D 0 - I - 0x0009FB 00:89EB: 03        .byte $03   ; 
- D 0 - I - 0x0009FC 00:89EC: 01        .byte $01   ; 
- D 0 - I - 0x0009FD 00:89ED: 01        .byte $01   ; 
- D 0 - I - 0x0009FE 00:89EE: 02        .byte $02   ; 
- D 0 - I - 0x0009FF 00:89EF: 00        .byte $00   ; 
- D 0 - I - 0x000A00 00:89F0: 01        .byte $01   ; 
- D 0 - I - 0x000A01 00:89F1: 02        .byte $02   ; 
- D 0 - I - 0x000A02 00:89F2: 03        .byte $03   ; 
- D 0 - I - 0x000A03 00:89F3: 01        .byte $01   ; 
- D 0 - I - 0x000A04 00:89F4: FF        .byte $FF   ; 
- D 0 - I - 0x000A05 00:89F5: 00        .byte $00   ; 



_off001_89F6_0D:
- D 0 - I - 0x000A06 00:89F6: 01        .byte $01   ; 
- D 0 - I - 0x000A07 00:89F7: 0E        .byte $0E   ; 
- D 0 - I - 0x000A08 00:89F8: 01        .byte $01   ; 
- D 0 - I - 0x000A09 00:89F9: 0A        .byte $0A   ; 
- D 0 - I - 0x000A0A 00:89FA: 01        .byte $01   ; 
- D 0 - I - 0x000A0B 00:89FB: 08        .byte $08   ; 
- D 0 - I - 0x000A0C 00:89FC: 01        .byte $01   ; 
- D 0 - I - 0x000A0D 00:89FD: 05        .byte $05   ; 
- D 0 - I - 0x000A0E 00:89FE: 01        .byte $01   ; 
- D 0 - I - 0x000A0F 00:89FF: 03        .byte $03   ; 
- D 0 - I - 0x000A10 00:8A00: 01        .byte $01   ; 
- D 0 - I - 0x000A11 00:8A01: 01        .byte $01   ; 
- D 0 - I - 0x000A12 00:8A02: 01        .byte $01   ; 
- D 0 - I - 0x000A13 00:8A03: 05        .byte $05   ; 
- D 0 - I - 0x000A14 00:8A04: 01        .byte $01   ; 
- D 0 - I - 0x000A15 00:8A05: 03        .byte $03   ; 
- D 0 - I - 0x000A16 00:8A06: 01        .byte $01   ; 
- D 0 - I - 0x000A17 00:8A07: 01        .byte $01   ; 
- D 0 - I - 0x000A18 00:8A08: FF        .byte $FF   ; 
- D 0 - I - 0x000A19 00:8A09: 00        .byte $00   ; 



_off001_8A0A_0E:
- D 0 - I - 0x000A1A 00:8A0A: 01        .byte $01   ; 
- D 0 - I - 0x000A1B 00:8A0B: 07        .byte $07   ; 
- D 0 - I - 0x000A1C 00:8A0C: 01        .byte $01   ; 
- D 0 - I - 0x000A1D 00:8A0D: 03        .byte $03   ; 
- D 0 - I - 0x000A1E 00:8A0E: 01        .byte $01   ; 
- D 0 - I - 0x000A1F 00:8A0F: 01        .byte $01   ; 
- D 0 - I - 0x000A20 00:8A10: 01        .byte $01   ; 
- D 0 - I - 0x000A21 00:8A11: 00        .byte $00   ; 
- D 0 - I - 0x000A22 00:8A12: 01        .byte $01   ; 
- D 0 - I - 0x000A23 00:8A13: 03        .byte $03   ; 
- D 0 - I - 0x000A24 00:8A14: 01        .byte $01   ; 
- D 0 - I - 0x000A25 00:8A15: 01        .byte $01   ; 
- - - - - - 0x000A26 00:8A16: FF        .byte $FF   ; 
- - - - - - 0x000A27 00:8A17: 00        .byte $00   ; 



_off001_8A18_0F:
- D 0 - I - 0x000A28 00:8A18: 01        .byte $01   ; 
- D 0 - I - 0x000A29 00:8A19: 07        .byte $07   ; 
- D 0 - I - 0x000A2A 00:8A1A: 01        .byte $01   ; 
- D 0 - I - 0x000A2B 00:8A1B: 05        .byte $05   ; 
- D 0 - I - 0x000A2C 00:8A1C: 01        .byte $01   ; 
- D 0 - I - 0x000A2D 00:8A1D: 04        .byte $04   ; 
- D 0 - I - 0x000A2E 00:8A1E: 02        .byte $02   ; 
- D 0 - I - 0x000A2F 00:8A1F: 03        .byte $03   ; 
- D 0 - I - 0x000A30 00:8A20: 03        .byte $03   ; 
- D 0 - I - 0x000A31 00:8A21: 04        .byte $04   ; 
- D 0 - I - 0x000A32 00:8A22: 02        .byte $02   ; 
- D 0 - I - 0x000A33 00:8A23: 03        .byte $03   ; 
- D 0 - I - 0x000A34 00:8A24: 02        .byte $02   ; 
- D 0 - I - 0x000A35 00:8A25: 02        .byte $02   ; 
- D 0 - I - 0x000A36 00:8A26: 03        .byte $03   ; 
- D 0 - I - 0x000A37 00:8A27: 01        .byte $01   ; 
- D 0 - I - 0x000A38 00:8A28: FF        .byte $FF   ; 
- D 0 - I - 0x000A39 00:8A29: 00        .byte $00   ; 



_off001_8A2A_10:
- D 0 - I - 0x000A3A 00:8A2A: 01        .byte $01   ; 
- D 0 - I - 0x000A3B 00:8A2B: 0F        .byte $0F   ; 
- D 0 - I - 0x000A3C 00:8A2C: 01        .byte $01   ; 
- D 0 - I - 0x000A3D 00:8A2D: 0E        .byte $0E   ; 
- D 0 - I - 0x000A3E 00:8A2E: 02        .byte $02   ; 
- D 0 - I - 0x000A3F 00:8A2F: 0D        .byte $0D   ; 
- D 0 - I - 0x000A40 00:8A30: 01        .byte $01   ; 
- D 0 - I - 0x000A41 00:8A31: 0B        .byte $0B   ; 
- D 0 - I - 0x000A42 00:8A32: 01        .byte $01   ; 
- D 0 - I - 0x000A43 00:8A33: 0A        .byte $0A   ; 
- D 0 - I - 0x000A44 00:8A34: 02        .byte $02   ; 
- D 0 - I - 0x000A45 00:8A35: 09        .byte $09   ; 
- D 0 - I - 0x000A46 00:8A36: 02        .byte $02   ; 
- D 0 - I - 0x000A47 00:8A37: 08        .byte $08   ; 
- D 0 - I - 0x000A48 00:8A38: 02        .byte $02   ; 
- D 0 - I - 0x000A49 00:8A39: 07        .byte $07   ; 
- D 0 - I - 0x000A4A 00:8A3A: 02        .byte $02   ; 
- D 0 - I - 0x000A4B 00:8A3B: 06        .byte $06   ; 
- D 0 - I - 0x000A4C 00:8A3C: 02        .byte $02   ; 
- D 0 - I - 0x000A4D 00:8A3D: 05        .byte $05   ; 
- D 0 - I - 0x000A4E 00:8A3E: 02        .byte $02   ; 
- D 0 - I - 0x000A4F 00:8A3F: 04        .byte $04   ; 
- D 0 - I - 0x000A50 00:8A40: 02        .byte $02   ; 
- D 0 - I - 0x000A51 00:8A41: 03        .byte $03   ; 
- D 0 - I - 0x000A52 00:8A42: 01        .byte $01   ; 
- D 0 - I - 0x000A53 00:8A43: 02        .byte $02   ; 
- D 0 - I - 0x000A54 00:8A44: 01        .byte $01   ; 
- D 0 - I - 0x000A55 00:8A45: 01        .byte $01   ; 
- D 0 - I - 0x000A56 00:8A46: FF        .byte $FF   ; 
- D 0 - I - 0x000A57 00:8A47: 00        .byte $00   ; 



_off001_8A48_11:
- D 0 - I - 0x000A58 00:8A48: 01        .byte $01   ; 
- D 0 - I - 0x000A59 00:8A49: 0F        .byte $0F   ; 
- D 0 - I - 0x000A5A 00:8A4A: 01        .byte $01   ; 
- D 0 - I - 0x000A5B 00:8A4B: 0D        .byte $0D   ; 
- D 0 - I - 0x000A5C 00:8A4C: 02        .byte $02   ; 
- D 0 - I - 0x000A5D 00:8A4D: 0C        .byte $0C   ; 
- D 0 - I - 0x000A5E 00:8A4E: 01        .byte $01   ; 
- D 0 - I - 0x000A5F 00:8A4F: 0A        .byte $0A   ; 
- D 0 - I - 0x000A60 00:8A50: FF        .byte $FF   ; 
- D 0 - I - 0x000A61 00:8A51: 00        .byte $00   ; 



_off001_8A52_12:
- D 0 - I - 0x000A62 00:8A52: 02        .byte $02   ; 
- D 0 - I - 0x000A63 00:8A53: 0F        .byte $0F   ; 
- D 0 - I - 0x000A64 00:8A54: 02        .byte $02   ; 
- D 0 - I - 0x000A65 00:8A55: 0E        .byte $0E   ; 
- D 0 - I - 0x000A66 00:8A56: 01        .byte $01   ; 
- D 0 - I - 0x000A67 00:8A57: 0D        .byte $0D   ; 
- D 0 - I - 0x000A68 00:8A58: 01        .byte $01   ; 
- D 0 - I - 0x000A69 00:8A59: 0C        .byte $0C   ; 
- D 0 - I - 0x000A6A 00:8A5A: 01        .byte $01   ; 
- D 0 - I - 0x000A6B 00:8A5B: 0B        .byte $0B   ; 
- D 0 - I - 0x000A6C 00:8A5C: 01        .byte $01   ; 
- D 0 - I - 0x000A6D 00:8A5D: 0A        .byte $0A   ; 
- D 0 - I - 0x000A6E 00:8A5E: 01        .byte $01   ; 
- D 0 - I - 0x000A6F 00:8A5F: 09        .byte $09   ; 
- - - - - - 0x000A70 00:8A60: FF        .byte $FF   ; 
- - - - - - 0x000A71 00:8A61: 00        .byte $00   ; 



_off001_8A62_13:
- D 0 - I - 0x000A72 00:8A62: 02        .byte $02   ; 
- D 0 - I - 0x000A73 00:8A63: 08        .byte $08   ; 
- D 0 - I - 0x000A74 00:8A64: 02        .byte $02   ; 
- D 0 - I - 0x000A75 00:8A65: 06        .byte $06   ; 
- D 0 - I - 0x000A76 00:8A66: 02        .byte $02   ; 
- D 0 - I - 0x000A77 00:8A67: 05        .byte $05   ; 
- D 0 - I - 0x000A78 00:8A68: 03        .byte $03   ; 
- D 0 - I - 0x000A79 00:8A69: 03        .byte $03   ; 
- D 0 - I - 0x000A7A 00:8A6A: 03        .byte $03   ; 
- D 0 - I - 0x000A7B 00:8A6B: 02        .byte $02   ; 
- D 0 - I - 0x000A7C 00:8A6C: 03        .byte $03   ; 
- D 0 - I - 0x000A7D 00:8A6D: 01        .byte $01   ; 
- D 0 - I - 0x000A7E 00:8A6E: FF        .byte $FF   ; 
- D 0 - I - 0x000A7F 00:8A6F: 00        .byte $00   ; 



_off001_8A70_14:
- D 0 - I - 0x000A80 00:8A70: 08        .byte $08   ; 
- D 0 - I - 0x000A81 00:8A71: 0F        .byte $0F   ; 
- D 0 - I - 0x000A82 00:8A72: 09        .byte $09   ; 
- D 0 - I - 0x000A83 00:8A73: 0E        .byte $0E   ; 
- D 0 - I - 0x000A84 00:8A74: 0A        .byte $0A   ; 
- D 0 - I - 0x000A85 00:8A75: 0D        .byte $0D   ; 
- D 0 - I - 0x000A86 00:8A76: 0B        .byte $0B   ; 
- D 0 - I - 0x000A87 00:8A77: 0E        .byte $0E   ; 
- - - - - - 0x000A88 00:8A78: 0B        .byte $0B   ; 
- - - - - - 0x000A89 00:8A79: 0D        .byte $0D   ; 
- - - - - - 0x000A8A 00:8A7A: 0C        .byte $0C   ; 
- - - - - - 0x000A8B 00:8A7B: 0C        .byte $0C   ; 
- - - - - - 0x000A8C 00:8A7C: 0B        .byte $0B   ; 
- - - - - - 0x000A8D 00:8A7D: 0B        .byte $0B   ; 
- - - - - - 0x000A8E 00:8A7E: 0C        .byte $0C   ; 
- - - - - - 0x000A8F 00:8A7F: 0A        .byte $0A   ; 
- - - - - - 0x000A90 00:8A80: 0C        .byte $0C   ; 
- - - - - - 0x000A91 00:8A81: 09        .byte $09   ; 
- - - - - - 0x000A92 00:8A82: 0C        .byte $0C   ; 
- - - - - - 0x000A93 00:8A83: 08        .byte $08   ; 
- - - - - - 0x000A94 00:8A84: 0C        .byte $0C   ; 
- - - - - - 0x000A95 00:8A85: 07        .byte $07   ; 
- - - - - - 0x000A96 00:8A86: 0C        .byte $0C   ; 
- - - - - - 0x000A97 00:8A87: 06        .byte $06   ; 
- - - - - - 0x000A98 00:8A88: 0B        .byte $0B   ; 
- - - - - - 0x000A99 00:8A89: 05        .byte $05   ; 
- - - - - - 0x000A9A 00:8A8A: 0B        .byte $0B   ; 
- - - - - - 0x000A9B 00:8A8B: 04        .byte $04   ; 
- - - - - - 0x000A9C 00:8A8C: 0B        .byte $0B   ; 
- - - - - - 0x000A9D 00:8A8D: 03        .byte $03   ; 
- - - - - - 0x000A9E 00:8A8E: 0B        .byte $0B   ; 
- - - - - - 0x000A9F 00:8A8F: 02        .byte $02   ; 
- - - - - - 0x000AA0 00:8A90: 0B        .byte $0B   ; 
- - - - - - 0x000AA1 00:8A91: 01        .byte $01   ; 
- - - - - - 0x000AA2 00:8A92: FF        .byte $FF   ; 
- - - - - - 0x000AA3 00:8A93: 00        .byte $00   ; 



_off001_8A94_15:
- D 0 - I - 0x000AA4 00:8A94: 02        .byte $02   ; 
- D 0 - I - 0x000AA5 00:8A95: 04        .byte $04   ; 
- D 0 - I - 0x000AA6 00:8A96: 02        .byte $02   ; 
- D 0 - I - 0x000AA7 00:8A97: 05        .byte $05   ; 
- D 0 - I - 0x000AA8 00:8A98: 05        .byte $05   ; 
- D 0 - I - 0x000AA9 00:8A99: 06        .byte $06   ; 
- D 0 - I - 0x000AAA 00:8A9A: 06        .byte $06   ; 
- D 0 - I - 0x000AAB 00:8A9B: 05        .byte $05   ; 
- D 0 - I - 0x000AAC 00:8A9C: 04        .byte $04   ; 
- D 0 - I - 0x000AAD 00:8A9D: 04        .byte $04   ; 
- D 0 - I - 0x000AAE 00:8A9E: 04        .byte $04   ; 
- D 0 - I - 0x000AAF 00:8A9F: 03        .byte $03   ; 
- D 0 - I - 0x000AB0 00:8AA0: 04        .byte $04   ; 
- D 0 - I - 0x000AB1 00:8AA1: 04        .byte $04   ; 
- D 0 - I - 0x000AB2 00:8AA2: 04        .byte $04   ; 
- D 0 - I - 0x000AB3 00:8AA3: 03        .byte $03   ; 
- D 0 - I - 0x000AB4 00:8AA4: 04        .byte $04   ; 
- D 0 - I - 0x000AB5 00:8AA5: 02        .byte $02   ; 
- D 0 - I - 0x000AB6 00:8AA6: 04        .byte $04   ; 
- D 0 - I - 0x000AB7 00:8AA7: 03        .byte $03   ; 
- D 0 - I - 0x000AB8 00:8AA8: 04        .byte $04   ; 
- D 0 - I - 0x000AB9 00:8AA9: 02        .byte $02   ; 
- D 0 - I - 0x000ABA 00:8AAA: 04        .byte $04   ; 
- D 0 - I - 0x000ABB 00:8AAB: 03        .byte $03   ; 
- D 0 - I - 0x000ABC 00:8AAC: 04        .byte $04   ; 
- D 0 - I - 0x000ABD 00:8AAD: 01        .byte $01   ; 
- - - - - - 0x000ABE 00:8AAE: FF        .byte $FF   ; 
- - - - - - 0x000ABF 00:8AAF: 00        .byte $00   ; 



_off001_8AB0_16:
- D 0 - I - 0x000AC0 00:8AB0: 03        .byte $03   ; 
- D 0 - I - 0x000AC1 00:8AB1: 03        .byte $03   ; 
- D 0 - I - 0x000AC2 00:8AB2: 03        .byte $03   ; 
- D 0 - I - 0x000AC3 00:8AB3: 04        .byte $04   ; 
- D 0 - I - 0x000AC4 00:8AB4: 03        .byte $03   ; 
- D 0 - I - 0x000AC5 00:8AB5: 05        .byte $05   ; 
- D 0 - I - 0x000AC6 00:8AB6: 02        .byte $02   ; 
- D 0 - I - 0x000AC7 00:8AB7: 04        .byte $04   ; 
- D 0 - I - 0x000AC8 00:8AB8: 03        .byte $03   ; 
- D 0 - I - 0x000AC9 00:8AB9: 03        .byte $03   ; 
- D 0 - I - 0x000ACA 00:8ABA: 03        .byte $03   ; 
- D 0 - I - 0x000ACB 00:8ABB: 02        .byte $02   ; 
- D 0 - I - 0x000ACC 00:8ABC: 03        .byte $03   ; 
- D 0 - I - 0x000ACD 00:8ABD: 01        .byte $01   ; 
- D 0 - I - 0x000ACE 00:8ABE: FF        .byte $FF   ; 
- D 0 - I - 0x000ACF 00:8ABF: 00        .byte $00   ; 



_off001_8AC0_17:
- D 0 - I - 0x000AD0 00:8AC0: 02        .byte $02   ; 
- D 0 - I - 0x000AD1 00:8AC1: 0E        .byte $0E   ; 
- D 0 - I - 0x000AD2 00:8AC2: 01        .byte $01   ; 
- D 0 - I - 0x000AD3 00:8AC3: 0B        .byte $0B   ; 
- D 0 - I - 0x000AD4 00:8AC4: 01        .byte $01   ; 
- D 0 - I - 0x000AD5 00:8AC5: 09        .byte $09   ; 
- D 0 - I - 0x000AD6 00:8AC6: 01        .byte $01   ; 
- D 0 - I - 0x000AD7 00:8AC7: 06        .byte $06   ; 
- D 0 - I - 0x000AD8 00:8AC8: 01        .byte $01   ; 
- D 0 - I - 0x000AD9 00:8AC9: 03        .byte $03   ; 
- D 0 - I - 0x000ADA 00:8ACA: 01        .byte $01   ; 
- D 0 - I - 0x000ADB 00:8ACB: 01        .byte $01   ; 
- D 0 - I - 0x000ADC 00:8ACC: 01        .byte $01   ; 
- D 0 - I - 0x000ADD 00:8ACD: 06        .byte $06   ; 
- D 0 - I - 0x000ADE 00:8ACE: 01        .byte $01   ; 
- D 0 - I - 0x000ADF 00:8ACF: 05        .byte $05   ; 
- D 0 - I - 0x000AE0 00:8AD0: 01        .byte $01   ; 
- D 0 - I - 0x000AE1 00:8AD1: 04        .byte $04   ; 
- D 0 - I - 0x000AE2 00:8AD2: 01        .byte $01   ; 
- D 0 - I - 0x000AE3 00:8AD3: 02        .byte $02   ; 
- D 0 - I - 0x000AE4 00:8AD4: 01        .byte $01   ; 
- D 0 - I - 0x000AE5 00:8AD5: 01        .byte $01   ; 
- D 0 - I - 0x000AE6 00:8AD6: 01        .byte $01   ; 
- D 0 - I - 0x000AE7 00:8AD7: 00        .byte $00   ; 
- D 0 - I - 0x000AE8 00:8AD8: 01        .byte $01   ; 
- D 0 - I - 0x000AE9 00:8AD9: 03        .byte $03   ; 
- D 0 - I - 0x000AEA 00:8ADA: 01        .byte $01   ; 
- D 0 - I - 0x000AEB 00:8ADB: 02        .byte $02   ; 
- D 0 - I - 0x000AEC 00:8ADC: 01        .byte $01   ; 
- D 0 - I - 0x000AED 00:8ADD: 01        .byte $01   ; 
- D 0 - I - 0x000AEE 00:8ADE: 03        .byte $03   ; 
- D 0 - I - 0x000AEF 00:8ADF: 00        .byte $00   ; 
- D 0 - I - 0x000AF0 00:8AE0: 01        .byte $01   ; 
- D 0 - I - 0x000AF1 00:8AE1: 02        .byte $02   ; 
- D 0 - I - 0x000AF2 00:8AE2: 01        .byte $01   ; 
- D 0 - I - 0x000AF3 00:8AE3: 01        .byte $01   ; 
- D 0 - I - 0x000AF4 00:8AE4: 04        .byte $04   ; 
- D 0 - I - 0x000AF5 00:8AE5: 00        .byte $00   ; 
- D 0 - I - 0x000AF6 00:8AE6: FF        .byte $FF   ; 
- D 0 - I - 0x000AF7 00:8AE7: 00        .byte $00   ; 



_off001_8AE8_18:
- D 0 - I - 0x000AF8 00:8AE8: 01        .byte $01   ; 
- D 0 - I - 0x000AF9 00:8AE9: 0F        .byte $0F   ; 
- D 0 - I - 0x000AFA 00:8AEA: 01        .byte $01   ; 
- D 0 - I - 0x000AFB 00:8AEB: 0E        .byte $0E   ; 
- D 0 - I - 0x000AFC 00:8AEC: 01        .byte $01   ; 
- D 0 - I - 0x000AFD 00:8AED: 0B        .byte $0B   ; 
- D 0 - I - 0x000AFE 00:8AEE: 01        .byte $01   ; 
- D 0 - I - 0x000AFF 00:8AEF: 07        .byte $07   ; 
- D 0 - I - 0x000B00 00:8AF0: 01        .byte $01   ; 
- D 0 - I - 0x000B01 00:8AF1: 03        .byte $03   ; 
- D 0 - I - 0x000B02 00:8AF2: 01        .byte $01   ; 
- D 0 - I - 0x000B03 00:8AF3: 01        .byte $01   ; 
- D 0 - I - 0x000B04 00:8AF4: 01        .byte $01   ; 
- D 0 - I - 0x000B05 00:8AF5: 04        .byte $04   ; 
- D 0 - I - 0x000B06 00:8AF6: 01        .byte $01   ; 
- D 0 - I - 0x000B07 00:8AF7: 03        .byte $03   ; 
- D 0 - I - 0x000B08 00:8AF8: 01        .byte $01   ; 
- D 0 - I - 0x000B09 00:8AF9: 01        .byte $01   ; 
- D 0 - I - 0x000B0A 00:8AFA: FF        .byte $FF   ; 
- D 0 - I - 0x000B0B 00:8AFB: 00        .byte $00   ; 



_off001_8AFC_19:
- - - - - - 0x000B0C 00:8AFC: 01        .byte $01   ; 
- - - - - - 0x000B0D 00:8AFD: 0A        .byte $0A   ; 
- - - - - - 0x000B0E 00:8AFE: 01        .byte $01   ; 
- - - - - - 0x000B0F 00:8AFF: 0F        .byte $0F   ; 
- - - - - - 0x000B10 00:8B00: 01        .byte $01   ; 
- - - - - - 0x000B11 00:8B01: 0D        .byte $0D   ; 
- - - - - - 0x000B12 00:8B02: 01        .byte $01   ; 
- - - - - - 0x000B13 00:8B03: 0C        .byte $0C   ; 
- - - - - - 0x000B14 00:8B04: 01        .byte $01   ; 
- - - - - - 0x000B15 00:8B05: 0A        .byte $0A   ; 
- - - - - - 0x000B16 00:8B06: 01        .byte $01   ; 
- - - - - - 0x000B17 00:8B07: 09        .byte $09   ; 
- - - - - - 0x000B18 00:8B08: 01        .byte $01   ; 
- - - - - - 0x000B19 00:8B09: 08        .byte $08   ; 
- - - - - - 0x000B1A 00:8B0A: 01        .byte $01   ; 
- - - - - - 0x000B1B 00:8B0B: 07        .byte $07   ; 
- - - - - - 0x000B1C 00:8B0C: 01        .byte $01   ; 
- - - - - - 0x000B1D 00:8B0D: 06        .byte $06   ; 
- - - - - - 0x000B1E 00:8B0E: 01        .byte $01   ; 
- - - - - - 0x000B1F 00:8B0F: 05        .byte $05   ; 
- - - - - - 0x000B20 00:8B10: 01        .byte $01   ; 
- - - - - - 0x000B21 00:8B11: 04        .byte $04   ; 
- - - - - - 0x000B22 00:8B12: 01        .byte $01   ; 
- - - - - - 0x000B23 00:8B13: 03        .byte $03   ; 
- - - - - - 0x000B24 00:8B14: 01        .byte $01   ; 
- - - - - - 0x000B25 00:8B15: 02        .byte $02   ; 
- - - - - - 0x000B26 00:8B16: 01        .byte $01   ; 
- - - - - - 0x000B27 00:8B17: 01        .byte $01   ; 
- - - - - - 0x000B28 00:8B18: FF        .byte $FF   ; 
- - - - - - 0x000B29 00:8B19: 00        .byte $00   ; 



_off001_8B1A_1A:
- D 0 - I - 0x000B2A 00:8B1A: 02        .byte $02   ; 
- D 0 - I - 0x000B2B 00:8B1B: 08        .byte $08   ; 
- D 0 - I - 0x000B2C 00:8B1C: 01        .byte $01   ; 
- D 0 - I - 0x000B2D 00:8B1D: 0D        .byte $0D   ; 
- D 0 - I - 0x000B2E 00:8B1E: 02        .byte $02   ; 
- D 0 - I - 0x000B2F 00:8B1F: 0F        .byte $0F   ; 
- D 0 - I - 0x000B30 00:8B20: 01        .byte $01   ; 
- D 0 - I - 0x000B31 00:8B21: 0E        .byte $0E   ; 
- D 0 - I - 0x000B32 00:8B22: 01        .byte $01   ; 
- D 0 - I - 0x000B33 00:8B23: 0D        .byte $0D   ; 
- D 0 - I - 0x000B34 00:8B24: 01        .byte $01   ; 
- D 0 - I - 0x000B35 00:8B25: 0B        .byte $0B   ; 
- D 0 - I - 0x000B36 00:8B26: 02        .byte $02   ; 
- D 0 - I - 0x000B37 00:8B27: 09        .byte $09   ; 
- D 0 - I - 0x000B38 00:8B28: 02        .byte $02   ; 
- D 0 - I - 0x000B39 00:8B29: 07        .byte $07   ; 
- D 0 - I - 0x000B3A 00:8B2A: 02        .byte $02   ; 
- D 0 - I - 0x000B3B 00:8B2B: 05        .byte $05   ; 
- D 0 - I - 0x000B3C 00:8B2C: 02        .byte $02   ; 
- D 0 - I - 0x000B3D 00:8B2D: 03        .byte $03   ; 
- D 0 - I - 0x000B3E 00:8B2E: 02        .byte $02   ; 
- D 0 - I - 0x000B3F 00:8B2F: 02        .byte $02   ; 
- D 0 - I - 0x000B40 00:8B30: 02        .byte $02   ; 
- D 0 - I - 0x000B41 00:8B31: 01        .byte $01   ; 
- - - - - - 0x000B42 00:8B32: FF        .byte $FF   ; 
- - - - - - 0x000B43 00:8B33: 00        .byte $00   ; 



_off001_8B34_1B:
- D 0 - I - 0x000B44 00:8B34: 02        .byte $02   ; 
- D 0 - I - 0x000B45 00:8B35: 08        .byte $08   ; 
- D 0 - I - 0x000B46 00:8B36: 01        .byte $01   ; 
- D 0 - I - 0x000B47 00:8B37: 09        .byte $09   ; 
- D 0 - I - 0x000B48 00:8B38: 01        .byte $01   ; 
- D 0 - I - 0x000B49 00:8B39: 0D        .byte $0D   ; 
- D 0 - I - 0x000B4A 00:8B3A: 06        .byte $06   ; 
- D 0 - I - 0x000B4B 00:8B3B: 0F        .byte $0F   ; 
- D 0 - I - 0x000B4C 00:8B3C: 03        .byte $03   ; 
- D 0 - I - 0x000B4D 00:8B3D: 0E        .byte $0E   ; 
- D 0 - I - 0x000B4E 00:8B3E: 03        .byte $03   ; 
- D 0 - I - 0x000B4F 00:8B3F: 0D        .byte $0D   ; 
- D 0 - I - 0x000B50 00:8B40: 03        .byte $03   ; 
- D 0 - I - 0x000B51 00:8B41: 0B        .byte $0B   ; 
- D 0 - I - 0x000B52 00:8B42: 03        .byte $03   ; 
- D 0 - I - 0x000B53 00:8B43: 0A        .byte $0A   ; 
- D 0 - I - 0x000B54 00:8B44: 03        .byte $03   ; 
- D 0 - I - 0x000B55 00:8B45: 09        .byte $09   ; 
- D 0 - I - 0x000B56 00:8B46: 03        .byte $03   ; 
- D 0 - I - 0x000B57 00:8B47: 08        .byte $08   ; 
- D 0 - I - 0x000B58 00:8B48: 03        .byte $03   ; 
- D 0 - I - 0x000B59 00:8B49: 07        .byte $07   ; 
- D 0 - I - 0x000B5A 00:8B4A: 03        .byte $03   ; 
- D 0 - I - 0x000B5B 00:8B4B: 06        .byte $06   ; 
- D 0 - I - 0x000B5C 00:8B4C: 03        .byte $03   ; 
- D 0 - I - 0x000B5D 00:8B4D: 05        .byte $05   ; 
- D 0 - I - 0x000B5E 00:8B4E: 03        .byte $03   ; 
- D 0 - I - 0x000B5F 00:8B4F: 04        .byte $04   ; 
- D 0 - I - 0x000B60 00:8B50: 03        .byte $03   ; 
- D 0 - I - 0x000B61 00:8B51: 03        .byte $03   ; 
- D 0 - I - 0x000B62 00:8B52: 03        .byte $03   ; 
- D 0 - I - 0x000B63 00:8B53: 02        .byte $02   ; 
- D 0 - I - 0x000B64 00:8B54: 03        .byte $03   ; 
- D 0 - I - 0x000B65 00:8B55: 01        .byte $01   ; 
- - - - - - 0x000B66 00:8B56: FF        .byte $FF   ; 
- - - - - - 0x000B67 00:8B57: 00        .byte $00   ; 



_off001_8B58_1C:
- D 0 - I - 0x000B68 00:8B58: FF        .byte $FF   ; 
- D 0 - I - 0x000B69 00:8B59: 0F        .byte $0F   ; 
- - - - - - 0x000B6A 00:8B5A: FF        .byte $FF   ; 
- - - - - - 0x000B6B 00:8B5B: 00        .byte $00   ; 



_off001_8B5C_1D:
- D 0 - I - 0x000B6C 00:8B5C: 01        .byte $01   ; 
- D 0 - I - 0x000B6D 00:8B5D: 05        .byte $05   ; 
- D 0 - I - 0x000B6E 00:8B5E: 01        .byte $01   ; 
- D 0 - I - 0x000B6F 00:8B5F: 04        .byte $04   ; 
- D 0 - I - 0x000B70 00:8B60: 01        .byte $01   ; 
- D 0 - I - 0x000B71 00:8B61: 03        .byte $03   ; 
- D 0 - I - 0x000B72 00:8B62: 01        .byte $01   ; 
- D 0 - I - 0x000B73 00:8B63: 02        .byte $02   ; 
- D 0 - I - 0x000B74 00:8B64: 01        .byte $01   ; 
- D 0 - I - 0x000B75 00:8B65: 01        .byte $01   ; 
- D 0 - I - 0x000B76 00:8B66: 02        .byte $02   ; 
- D 0 - I - 0x000B77 00:8B67: 00        .byte $00   ; 
- D 0 - I - 0x000B78 00:8B68: 01        .byte $01   ; 
- D 0 - I - 0x000B79 00:8B69: 04        .byte $04   ; 
- D 0 - I - 0x000B7A 00:8B6A: 01        .byte $01   ; 
- D 0 - I - 0x000B7B 00:8B6B: 03        .byte $03   ; 
- D 0 - I - 0x000B7C 00:8B6C: 01        .byte $01   ; 
- D 0 - I - 0x000B7D 00:8B6D: 02        .byte $02   ; 
- D 0 - I - 0x000B7E 00:8B6E: 01        .byte $01   ; 
- D 0 - I - 0x000B7F 00:8B6F: 01        .byte $01   ; 
- D 0 - I - 0x000B80 00:8B70: FF        .byte $FF   ; 
- D 0 - I - 0x000B81 00:8B71: 00        .byte $00   ; 



_off001_8B72_1E:
- D 0 - I - 0x000B82 00:8B72: 02        .byte $02   ; 
- D 0 - I - 0x000B83 00:8B73: 0A        .byte $0A   ; 
- D 0 - I - 0x000B84 00:8B74: 01        .byte $01   ; 
- D 0 - I - 0x000B85 00:8B75: 09        .byte $09   ; 
- D 0 - I - 0x000B86 00:8B76: 01        .byte $01   ; 
- D 0 - I - 0x000B87 00:8B77: 08        .byte $08   ; 
- D 0 - I - 0x000B88 00:8B78: 01        .byte $01   ; 
- D 0 - I - 0x000B89 00:8B79: 07        .byte $07   ; 
- D 0 - I - 0x000B8A 00:8B7A: 01        .byte $01   ; 
- D 0 - I - 0x000B8B 00:8B7B: 06        .byte $06   ; 
- D 0 - I - 0x000B8C 00:8B7C: 01        .byte $01   ; 
- D 0 - I - 0x000B8D 00:8B7D: 05        .byte $05   ; 
- D 0 - I - 0x000B8E 00:8B7E: 01        .byte $01   ; 
- D 0 - I - 0x000B8F 00:8B7F: 04        .byte $04   ; 
- D 0 - I - 0x000B90 00:8B80: 01        .byte $01   ; 
- D 0 - I - 0x000B91 00:8B81: 03        .byte $03   ; 
- D 0 - I - 0x000B92 00:8B82: 02        .byte $02   ; 
- D 0 - I - 0x000B93 00:8B83: 02        .byte $02   ; 
- D 0 - I - 0x000B94 00:8B84: 01        .byte $01   ; 
- D 0 - I - 0x000B95 00:8B85: 01        .byte $01   ; 
- D 0 - I - 0x000B96 00:8B86: 02        .byte $02   ; 
- D 0 - I - 0x000B97 00:8B87: 00        .byte $00   ; 
- D 0 - I - 0x000B98 00:8B88: 03        .byte $03   ; 
- D 0 - I - 0x000B99 00:8B89: 03        .byte $03   ; 
- D 0 - I - 0x000B9A 00:8B8A: 03        .byte $03   ; 
- D 0 - I - 0x000B9B 00:8B8B: 02        .byte $02   ; 
- D 0 - I - 0x000B9C 00:8B8C: 03        .byte $03   ; 
- D 0 - I - 0x000B9D 00:8B8D: 01        .byte $01   ; 
- D 0 - I - 0x000B9E 00:8B8E: FF        .byte $FF   ; 
- D 0 - I - 0x000B9F 00:8B8F: 00        .byte $00   ; 



_off001_8B90_1F:
- D 0 - I - 0x000BA0 00:8B90: 01        .byte $01   ; 
- D 0 - I - 0x000BA1 00:8B91: 0E        .byte $0E   ; 
- D 0 - I - 0x000BA2 00:8B92: 01        .byte $01   ; 
- D 0 - I - 0x000BA3 00:8B93: 0D        .byte $0D   ; 
- D 0 - I - 0x000BA4 00:8B94: 01        .byte $01   ; 
- D 0 - I - 0x000BA5 00:8B95: 0C        .byte $0C   ; 
- D 0 - I - 0x000BA6 00:8B96: 01        .byte $01   ; 
- D 0 - I - 0x000BA7 00:8B97: 0A        .byte $0A   ; 
- D 0 - I - 0x000BA8 00:8B98: 01        .byte $01   ; 
- D 0 - I - 0x000BA9 00:8B99: 07        .byte $07   ; 
- D 0 - I - 0x000BAA 00:8B9A: 01        .byte $01   ; 
- D 0 - I - 0x000BAB 00:8B9B: 05        .byte $05   ; 
- D 0 - I - 0x000BAC 00:8B9C: 01        .byte $01   ; 
- D 0 - I - 0x000BAD 00:8B9D: 00        .byte $00   ; 
- D 0 - I - 0x000BAE 00:8B9E: 01        .byte $01   ; 
- D 0 - I - 0x000BAF 00:8B9F: 05        .byte $05   ; 
- D 0 - I - 0x000BB0 00:8BA0: 01        .byte $01   ; 
- D 0 - I - 0x000BB1 00:8BA1: 04        .byte $04   ; 
- D 0 - I - 0x000BB2 00:8BA2: 01        .byte $01   ; 
- D 0 - I - 0x000BB3 00:8BA3: 03        .byte $03   ; 
- D 0 - I - 0x000BB4 00:8BA4: 01        .byte $01   ; 
- D 0 - I - 0x000BB5 00:8BA5: 02        .byte $02   ; 
- D 0 - I - 0x000BB6 00:8BA6: 01        .byte $01   ; 
- D 0 - I - 0x000BB7 00:8BA7: 01        .byte $01   ; 
- D 0 - I - 0x000BB8 00:8BA8: FF        .byte $FF   ; 
- D 0 - I - 0x000BB9 00:8BA9: 00        .byte $00   ; 



_off001_8BAA_20:
- D 0 - I - 0x000BBA 00:8BAA: 04        .byte $04   ; 
- D 0 - I - 0x000BBB 00:8BAB: 0F        .byte $0F   ; 
- D 0 - I - 0x000BBC 00:8BAC: FF        .byte $FF   ; 
- D 0 - I - 0x000BBD 00:8BAD: 00        .byte $00   ; 



_off001_8BAE_21:
- D 0 - I - 0x000BBE 00:8BAE: 07        .byte $07   ; 
- D 0 - I - 0x000BBF 00:8BAF: 0F        .byte $0F   ; 
- D 0 - I - 0x000BC0 00:8BB0: FF        .byte $FF   ; 
- D 0 - I - 0x000BC1 00:8BB1: 00        .byte $00   ; 



_off001_8BB2_22:
- D 0 - I - 0x000BC2 00:8BB2: 08        .byte $08   ; 
- D 0 - I - 0x000BC3 00:8BB3: 0F        .byte $0F   ; 
- D 0 - I - 0x000BC4 00:8BB4: FF        .byte $FF   ; 
- D 0 - I - 0x000BC5 00:8BB5: 00        .byte $00   ; 



_off001_8BB6_23:
- D 0 - I - 0x000BC6 00:8BB6: 09        .byte $09   ; 
- D 0 - I - 0x000BC7 00:8BB7: 0F        .byte $0F   ; 
- D 0 - I - 0x000BC8 00:8BB8: FF        .byte $FF   ; 
- D 0 - I - 0x000BC9 00:8BB9: 00        .byte $00   ; 



_off001_8BBA_24:
- D 0 - I - 0x000BCA 00:8BBA: 11        .byte $11   ; 
- D 0 - I - 0x000BCB 00:8BBB: 0F        .byte $0F   ; 
- D 0 - I - 0x000BCC 00:8BBC: FF        .byte $FF   ; 
- D 0 - I - 0x000BCD 00:8BBD: 00        .byte $00   ; 



_off001_8BBE_25:
- D 0 - I - 0x000BCE 00:8BBE: 01        .byte $01   ; 
- D 0 - I - 0x000BCF 00:8BBF: 0A        .byte $0A   ; 
- D 0 - I - 0x000BD0 00:8BC0: 01        .byte $01   ; 
- D 0 - I - 0x000BD1 00:8BC1: 0D        .byte $0D   ; 
- D 0 - I - 0x000BD2 00:8BC2: 02        .byte $02   ; 
- D 0 - I - 0x000BD3 00:8BC3: 0F        .byte $0F   ; 
- D 0 - I - 0x000BD4 00:8BC4: 02        .byte $02   ; 
- D 0 - I - 0x000BD5 00:8BC5: 0E        .byte $0E   ; 
- D 0 - I - 0x000BD6 00:8BC6: 02        .byte $02   ; 
- D 0 - I - 0x000BD7 00:8BC7: 0F        .byte $0F   ; 
- D 0 - I - 0x000BD8 00:8BC8: 02        .byte $02   ; 
- D 0 - I - 0x000BD9 00:8BC9: 0E        .byte $0E   ; 
- D 0 - I - 0x000BDA 00:8BCA: 02        .byte $02   ; 
- D 0 - I - 0x000BDB 00:8BCB: 0D        .byte $0D   ; 
- D 0 - I - 0x000BDC 00:8BCC: 02        .byte $02   ; 
- D 0 - I - 0x000BDD 00:8BCD: 0E        .byte $0E   ; 
- D 0 - I - 0x000BDE 00:8BCE: 02        .byte $02   ; 
- D 0 - I - 0x000BDF 00:8BCF: 0D        .byte $0D   ; 
- D 0 - I - 0x000BE0 00:8BD0: 02        .byte $02   ; 
- D 0 - I - 0x000BE1 00:8BD1: 0C        .byte $0C   ; 
- D 0 - I - 0x000BE2 00:8BD2: 02        .byte $02   ; 
- D 0 - I - 0x000BE3 00:8BD3: 0B        .byte $0B   ; 
- D 0 - I - 0x000BE4 00:8BD4: 02        .byte $02   ; 
- D 0 - I - 0x000BE5 00:8BD5: 0A        .byte $0A   ; 
- D 0 - I - 0x000BE6 00:8BD6: 02        .byte $02   ; 
- D 0 - I - 0x000BE7 00:8BD7: 0B        .byte $0B   ; 
- D 0 - I - 0x000BE8 00:8BD8: 02        .byte $02   ; 
- D 0 - I - 0x000BE9 00:8BD9: 0A        .byte $0A   ; 
- D 0 - I - 0x000BEA 00:8BDA: 02        .byte $02   ; 
- D 0 - I - 0x000BEB 00:8BDB: 09        .byte $09   ; 
- D 0 - I - 0x000BEC 00:8BDC: 02        .byte $02   ; 
- D 0 - I - 0x000BED 00:8BDD: 0A        .byte $0A   ; 
- D 0 - I - 0x000BEE 00:8BDE: 02        .byte $02   ; 
- D 0 - I - 0x000BEF 00:8BDF: 09        .byte $09   ; 
- D 0 - I - 0x000BF0 00:8BE0: 02        .byte $02   ; 
- D 0 - I - 0x000BF1 00:8BE1: 08        .byte $08   ; 
- D 0 - I - 0x000BF2 00:8BE2: 02        .byte $02   ; 
- D 0 - I - 0x000BF3 00:8BE3: 07        .byte $07   ; 
- D 0 - I - 0x000BF4 00:8BE4: 02        .byte $02   ; 
- D 0 - I - 0x000BF5 00:8BE5: 08        .byte $08   ; 
- D 0 - I - 0x000BF6 00:8BE6: 02        .byte $02   ; 
- D 0 - I - 0x000BF7 00:8BE7: 07        .byte $07   ; 
- D 0 - I - 0x000BF8 00:8BE8: 02        .byte $02   ; 
- D 0 - I - 0x000BF9 00:8BE9: 06        .byte $06   ; 
- D 0 - I - 0x000BFA 00:8BEA: 02        .byte $02   ; 
- D 0 - I - 0x000BFB 00:8BEB: 05        .byte $05   ; 
- D 0 - I - 0x000BFC 00:8BEC: 02        .byte $02   ; 
- D 0 - I - 0x000BFD 00:8BED: 06        .byte $06   ; 
- D 0 - I - 0x000BFE 00:8BEE: 02        .byte $02   ; 
- D 0 - I - 0x000BFF 00:8BEF: 05        .byte $05   ; 
- D 0 - I - 0x000C00 00:8BF0: 02        .byte $02   ; 
- D 0 - I - 0x000C01 00:8BF1: 04        .byte $04   ; 
- D 0 - I - 0x000C02 00:8BF2: 02        .byte $02   ; 
- D 0 - I - 0x000C03 00:8BF3: 03        .byte $03   ; 
- D 0 - I - 0x000C04 00:8BF4: 02        .byte $02   ; 
- D 0 - I - 0x000C05 00:8BF5: 02        .byte $02   ; 
- D 0 - I - 0x000C06 00:8BF6: 02        .byte $02   ; 
- D 0 - I - 0x000C07 00:8BF7: 01        .byte $01   ; 
- D 0 - I - 0x000C08 00:8BF8: FF        .byte $FF   ; 
- D 0 - I - 0x000C09 00:8BF9: 00        .byte $00   ; 



_off001_8BFA_26:
- D 0 - I - 0x000C0A 00:8BFA: 01        .byte $01   ; 
- D 0 - I - 0x000C0B 00:8BFB: 0A        .byte $0A   ; 
- D 0 - I - 0x000C0C 00:8BFC: 01        .byte $01   ; 
- D 0 - I - 0x000C0D 00:8BFD: 0D        .byte $0D   ; 
- D 0 - I - 0x000C0E 00:8BFE: 02        .byte $02   ; 
- D 0 - I - 0x000C0F 00:8BFF: 0F        .byte $0F   ; 
- D 0 - I - 0x000C10 00:8C00: 02        .byte $02   ; 
- D 0 - I - 0x000C11 00:8C01: 0E        .byte $0E   ; 
- D 0 - I - 0x000C12 00:8C02: 02        .byte $02   ; 
- D 0 - I - 0x000C13 00:8C03: 0F        .byte $0F   ; 
- D 0 - I - 0x000C14 00:8C04: 02        .byte $02   ; 
- D 0 - I - 0x000C15 00:8C05: 0E        .byte $0E   ; 
- D 0 - I - 0x000C16 00:8C06: 02        .byte $02   ; 
- D 0 - I - 0x000C17 00:8C07: 0D        .byte $0D   ; 
- D 0 - I - 0x000C18 00:8C08: 02        .byte $02   ; 
- D 0 - I - 0x000C19 00:8C09: 0E        .byte $0E   ; 
- D 0 - I - 0x000C1A 00:8C0A: 02        .byte $02   ; 
- D 0 - I - 0x000C1B 00:8C0B: 0D        .byte $0D   ; 
- D 0 - I - 0x000C1C 00:8C0C: 02        .byte $02   ; 
- D 0 - I - 0x000C1D 00:8C0D: 0C        .byte $0C   ; 
- D 0 - I - 0x000C1E 00:8C0E: 02        .byte $02   ; 
- D 0 - I - 0x000C1F 00:8C0F: 0B        .byte $0B   ; 
- D 0 - I - 0x000C20 00:8C10: 02        .byte $02   ; 
- D 0 - I - 0x000C21 00:8C11: 0A        .byte $0A   ; 
- D 0 - I - 0x000C22 00:8C12: 02        .byte $02   ; 
- D 0 - I - 0x000C23 00:8C13: 0B        .byte $0B   ; 
- D 0 - I - 0x000C24 00:8C14: 02        .byte $02   ; 
- D 0 - I - 0x000C25 00:8C15: 0A        .byte $0A   ; 
- D 0 - I - 0x000C26 00:8C16: 02        .byte $02   ; 
- D 0 - I - 0x000C27 00:8C17: 09        .byte $09   ; 
- D 0 - I - 0x000C28 00:8C18: 02        .byte $02   ; 
- D 0 - I - 0x000C29 00:8C19: 08        .byte $08   ; 
- D 0 - I - 0x000C2A 00:8C1A: 02        .byte $02   ; 
- D 0 - I - 0x000C2B 00:8C1B: 07        .byte $07   ; 
- D 0 - I - 0x000C2C 00:8C1C: 02        .byte $02   ; 
- D 0 - I - 0x000C2D 00:8C1D: 06        .byte $06   ; 
- D 0 - I - 0x000C2E 00:8C1E: 02        .byte $02   ; 
- D 0 - I - 0x000C2F 00:8C1F: 05        .byte $05   ; 
- - - - - - 0x000C30 00:8C20: 02        .byte $02   ; 
- - - - - - 0x000C31 00:8C21: 04        .byte $04   ; 
- - - - - - 0x000C32 00:8C22: 01        .byte $01   ; 
- - - - - - 0x000C33 00:8C23: 03        .byte $03   ; 
- - - - - - 0x000C34 00:8C24: 01        .byte $01   ; 
- - - - - - 0x000C35 00:8C25: 01        .byte $01   ; 
- - - - - - 0x000C36 00:8C26: 01        .byte $01   ; 
- - - - - - 0x000C37 00:8C27: 01        .byte $01   ; 
- - - - - - 0x000C38 00:8C28: FF        .byte $FF   ; 
- - - - - - 0x000C39 00:8C29: 00        .byte $00   ; 



_off001_8C2A_27:
- D 0 - I - 0x000C3A 00:8C2A: 01        .byte $01   ; 
- D 0 - I - 0x000C3B 00:8C2B: 0C        .byte $0C   ; 
- D 0 - I - 0x000C3C 00:8C2C: 02        .byte $02   ; 
- D 0 - I - 0x000C3D 00:8C2D: 0F        .byte $0F   ; 
- D 0 - I - 0x000C3E 00:8C2E: 02        .byte $02   ; 
- D 0 - I - 0x000C3F 00:8C2F: 0E        .byte $0E   ; 
- D 0 - I - 0x000C40 00:8C30: 02        .byte $02   ; 
- D 0 - I - 0x000C41 00:8C31: 0F        .byte $0F   ; 
- D 0 - I - 0x000C42 00:8C32: 02        .byte $02   ; 
- D 0 - I - 0x000C43 00:8C33: 0E        .byte $0E   ; 
- D 0 - I - 0x000C44 00:8C34: 02        .byte $02   ; 
- D 0 - I - 0x000C45 00:8C35: 0D        .byte $0D   ; 
- D 0 - I - 0x000C46 00:8C36: 02        .byte $02   ; 
- D 0 - I - 0x000C47 00:8C37: 0E        .byte $0E   ; 
- D 0 - I - 0x000C48 00:8C38: 02        .byte $02   ; 
- D 0 - I - 0x000C49 00:8C39: 0D        .byte $0D   ; 
- D 0 - I - 0x000C4A 00:8C3A: 02        .byte $02   ; 
- D 0 - I - 0x000C4B 00:8C3B: 0C        .byte $0C   ; 
- D 0 - I - 0x000C4C 00:8C3C: 01        .byte $01   ; 
- D 0 - I - 0x000C4D 00:8C3D: 0B        .byte $0B   ; 
- D 0 - I - 0x000C4E 00:8C3E: 01        .byte $01   ; 
- D 0 - I - 0x000C4F 00:8C3F: 0A        .byte $0A   ; 
- D 0 - I - 0x000C50 00:8C40: 01        .byte $01   ; 
- D 0 - I - 0x000C51 00:8C41: 09        .byte $09   ; 
- D 0 - I - 0x000C52 00:8C42: 01        .byte $01   ; 
- D 0 - I - 0x000C53 00:8C43: 08        .byte $08   ; 
- D 0 - I - 0x000C54 00:8C44: 01        .byte $01   ; 
- D 0 - I - 0x000C55 00:8C45: 07        .byte $07   ; 
- D 0 - I - 0x000C56 00:8C46: 01        .byte $01   ; 
- D 0 - I - 0x000C57 00:8C47: 08        .byte $08   ; 
- D 0 - I - 0x000C58 00:8C48: 01        .byte $01   ; 
- D 0 - I - 0x000C59 00:8C49: 07        .byte $07   ; 
- - - - - - 0x000C5A 00:8C4A: 01        .byte $01   ; 
- - - - - - 0x000C5B 00:8C4B: 06        .byte $06   ; 
- - - - - - 0x000C5C 00:8C4C: 01        .byte $01   ; 
- - - - - - 0x000C5D 00:8C4D: 03        .byte $03   ; 
- - - - - - 0x000C5E 00:8C4E: 01        .byte $01   ; 
- - - - - - 0x000C5F 00:8C4F: 02        .byte $02   ; 
- - - - - - 0x000C60 00:8C50: 01        .byte $01   ; 
- - - - - - 0x000C61 00:8C51: 01        .byte $01   ; 
- - - - - - 0x000C62 00:8C52: FF        .byte $FF   ; 
- - - - - - 0x000C63 00:8C53: 00        .byte $00   ; 



_off001_8C54_28:
- D 0 - I - 0x000C64 00:8C54: 01        .byte $01   ; 
- D 0 - I - 0x000C65 00:8C55: 0C        .byte $0C   ; 
- D 0 - I - 0x000C66 00:8C56: 01        .byte $01   ; 
- D 0 - I - 0x000C67 00:8C57: 0F        .byte $0F   ; 
- D 0 - I - 0x000C68 00:8C58: 01        .byte $01   ; 
- D 0 - I - 0x000C69 00:8C59: 0E        .byte $0E   ; 
- D 0 - I - 0x000C6A 00:8C5A: 01        .byte $01   ; 
- D 0 - I - 0x000C6B 00:8C5B: 0F        .byte $0F   ; 
- D 0 - I - 0x000C6C 00:8C5C: 01        .byte $01   ; 
- D 0 - I - 0x000C6D 00:8C5D: 0E        .byte $0E   ; 
- D 0 - I - 0x000C6E 00:8C5E: 01        .byte $01   ; 
- D 0 - I - 0x000C6F 00:8C5F: 0D        .byte $0D   ; 
- D 0 - I - 0x000C70 00:8C60: 01        .byte $01   ; 
- D 0 - I - 0x000C71 00:8C61: 0C        .byte $0C   ; 
- D 0 - I - 0x000C72 00:8C62: 01        .byte $01   ; 
- D 0 - I - 0x000C73 00:8C63: 0B        .byte $0B   ; 
- D 0 - I - 0x000C74 00:8C64: 01        .byte $01   ; 
- D 0 - I - 0x000C75 00:8C65: 0A        .byte $0A   ; 
- D 0 - I - 0x000C76 00:8C66: 01        .byte $01   ; 
- D 0 - I - 0x000C77 00:8C67: 09        .byte $09   ; 
- D 0 - I - 0x000C78 00:8C68: 01        .byte $01   ; 
- D 0 - I - 0x000C79 00:8C69: 08        .byte $08   ; 
- D 0 - I - 0x000C7A 00:8C6A: 01        .byte $01   ; 
- D 0 - I - 0x000C7B 00:8C6B: 06        .byte $06   ; 
- D 0 - I - 0x000C7C 00:8C6C: 01        .byte $01   ; 
- D 0 - I - 0x000C7D 00:8C6D: 04        .byte $04   ; 
- D 0 - I - 0x000C7E 00:8C6E: 01        .byte $01   ; 
- D 0 - I - 0x000C7F 00:8C6F: 03        .byte $03   ; 
- D 0 - I - 0x000C80 00:8C70: 01        .byte $01   ; 
- D 0 - I - 0x000C81 00:8C71: 01        .byte $01   ; 
- D 0 - I - 0x000C82 00:8C72: FF        .byte $FF   ; 
- D 0 - I - 0x000C83 00:8C73: 00        .byte $00   ; 



_off001_8C74_29:
- D 0 - I - 0x000C84 00:8C74: 01        .byte $01   ; 
- D 0 - I - 0x000C85 00:8C75: 0C        .byte $0C   ; 
- D 0 - I - 0x000C86 00:8C76: 01        .byte $01   ; 
- D 0 - I - 0x000C87 00:8C77: 0F        .byte $0F   ; 
- D 0 - I - 0x000C88 00:8C78: 01        .byte $01   ; 
- D 0 - I - 0x000C89 00:8C79: 0E        .byte $0E   ; 
- D 0 - I - 0x000C8A 00:8C7A: 01        .byte $01   ; 
- D 0 - I - 0x000C8B 00:8C7B: 0C        .byte $0C   ; 
- D 0 - I - 0x000C8C 00:8C7C: 01        .byte $01   ; 
- D 0 - I - 0x000C8D 00:8C7D: 0A        .byte $0A   ; 
- D 0 - I - 0x000C8E 00:8C7E: 01        .byte $01   ; 
- D 0 - I - 0x000C8F 00:8C7F: 08        .byte $08   ; 
- D 0 - I - 0x000C90 00:8C80: 01        .byte $01   ; 
- D 0 - I - 0x000C91 00:8C81: 03        .byte $03   ; 
- D 0 - I - 0x000C92 00:8C82: 01        .byte $01   ; 
- D 0 - I - 0x000C93 00:8C83: 01        .byte $01   ; 
- D 0 - I - 0x000C94 00:8C84: FF        .byte $FF   ; 
- D 0 - I - 0x000C95 00:8C85: 00        .byte $00   ; 



_off001_8C86_2A:
- D 0 - I - 0x000C96 00:8C86: 04        .byte $04   ; 
- D 0 - I - 0x000C97 00:8C87: 0F        .byte $0F   ; 
- D 0 - I - 0x000C98 00:8C88: 03        .byte $03   ; 
- D 0 - I - 0x000C99 00:8C89: 0E        .byte $0E   ; 
- D 0 - I - 0x000C9A 00:8C8A: 03        .byte $03   ; 
- D 0 - I - 0x000C9B 00:8C8B: 0D        .byte $0D   ; 
- D 0 - I - 0x000C9C 00:8C8C: 03        .byte $03   ; 
- D 0 - I - 0x000C9D 00:8C8D: 0C        .byte $0C   ; 
- D 0 - I - 0x000C9E 00:8C8E: 03        .byte $03   ; 
- D 0 - I - 0x000C9F 00:8C8F: 0B        .byte $0B   ; 
- D 0 - I - 0x000CA0 00:8C90: 03        .byte $03   ; 
- D 0 - I - 0x000CA1 00:8C91: 0A        .byte $0A   ; 
- D 0 - I - 0x000CA2 00:8C92: 03        .byte $03   ; 
- D 0 - I - 0x000CA3 00:8C93: 09        .byte $09   ; 
- D 0 - I - 0x000CA4 00:8C94: 02        .byte $02   ; 
- D 0 - I - 0x000CA5 00:8C95: 08        .byte $08   ; 
- D 0 - I - 0x000CA6 00:8C96: 02        .byte $02   ; 
- D 0 - I - 0x000CA7 00:8C97: 07        .byte $07   ; 
- D 0 - I - 0x000CA8 00:8C98: 02        .byte $02   ; 
- D 0 - I - 0x000CA9 00:8C99: 06        .byte $06   ; 
- D 0 - I - 0x000CAA 00:8C9A: 02        .byte $02   ; 
- D 0 - I - 0x000CAB 00:8C9B: 05        .byte $05   ; 
- D 0 - I - 0x000CAC 00:8C9C: 02        .byte $02   ; 
- D 0 - I - 0x000CAD 00:8C9D: 04        .byte $04   ; 
- D 0 - I - 0x000CAE 00:8C9E: 02        .byte $02   ; 
- D 0 - I - 0x000CAF 00:8C9F: 03        .byte $03   ; 
- D 0 - I - 0x000CB0 00:8CA0: 02        .byte $02   ; 
- D 0 - I - 0x000CB1 00:8CA1: 02        .byte $02   ; 
- D 0 - I - 0x000CB2 00:8CA2: 02        .byte $02   ; 
- D 0 - I - 0x000CB3 00:8CA3: 01        .byte $01   ; 
- D 0 - I - 0x000CB4 00:8CA4: FF        .byte $FF   ; 
- D 0 - I - 0x000CB5 00:8CA5: 00        .byte $00   ; 



_off001_8CA6_2B:
- D 0 - I - 0x000CB6 00:8CA6: 02        .byte $02   ; 
- D 0 - I - 0x000CB7 00:8CA7: 0F        .byte $0F   ; 
- D 0 - I - 0x000CB8 00:8CA8: 02        .byte $02   ; 
- D 0 - I - 0x000CB9 00:8CA9: 0E        .byte $0E   ; 
- D 0 - I - 0x000CBA 00:8CAA: 01        .byte $01   ; 
- D 0 - I - 0x000CBB 00:8CAB: 0F        .byte $0F   ; 
- D 0 - I - 0x000CBC 00:8CAC: 01        .byte $01   ; 
- D 0 - I - 0x000CBD 00:8CAD: 0E        .byte $0E   ; 
- D 0 - I - 0x000CBE 00:8CAE: 01        .byte $01   ; 
- D 0 - I - 0x000CBF 00:8CAF: 0D        .byte $0D   ; 
- D 0 - I - 0x000CC0 00:8CB0: 01        .byte $01   ; 
- D 0 - I - 0x000CC1 00:8CB1: 0C        .byte $0C   ; 
- D 0 - I - 0x000CC2 00:8CB2: 01        .byte $01   ; 
- D 0 - I - 0x000CC3 00:8CB3: 0A        .byte $0A   ; 
- D 0 - I - 0x000CC4 00:8CB4: 01        .byte $01   ; 
- D 0 - I - 0x000CC5 00:8CB5: 08        .byte $08   ; 
- D 0 - I - 0x000CC6 00:8CB6: 01        .byte $01   ; 
- D 0 - I - 0x000CC7 00:8CB7: 05        .byte $05   ; 
- D 0 - I - 0x000CC8 00:8CB8: 01        .byte $01   ; 
- D 0 - I - 0x000CC9 00:8CB9: 03        .byte $03   ; 
- D 0 - I - 0x000CCA 00:8CBA: 01        .byte $01   ; 
- D 0 - I - 0x000CCB 00:8CBB: 01        .byte $01   ; 
- D 0 - I - 0x000CCC 00:8CBC: FF        .byte $FF   ; 
- D 0 - I - 0x000CCD 00:8CBD: 00        .byte $00   ; 



_off001_8CBE_2C:
- D 0 - I - 0x000CCE 00:8CBE: 02        .byte $02   ; 
- D 0 - I - 0x000CCF 00:8CBF: 0F        .byte $0F   ; 
- D 0 - I - 0x000CD0 00:8CC0: 01        .byte $01   ; 
- D 0 - I - 0x000CD1 00:8CC1: 0E        .byte $0E   ; 
- D 0 - I - 0x000CD2 00:8CC2: 01        .byte $01   ; 
- D 0 - I - 0x000CD3 00:8CC3: 0D        .byte $0D   ; 
- D 0 - I - 0x000CD4 00:8CC4: 01        .byte $01   ; 
- D 0 - I - 0x000CD5 00:8CC5: 08        .byte $08   ; 
- D 0 - I - 0x000CD6 00:8CC6: 01        .byte $01   ; 
- D 0 - I - 0x000CD7 00:8CC7: 05        .byte $05   ; 
- D 0 - I - 0x000CD8 00:8CC8: 01        .byte $01   ; 
- D 0 - I - 0x000CD9 00:8CC9: 03        .byte $03   ; 
- - - - - - 0x000CDA 00:8CCA: FF        .byte $FF   ; 
- - - - - - 0x000CDB 00:8CCB: 00        .byte $00   ; 



_off001_8CCC_2D:
- D 0 - I - 0x000CDC 00:8CCC: 02        .byte $02   ; 
- D 0 - I - 0x000CDD 00:8CCD: 0F        .byte $0F   ; 
- D 0 - I - 0x000CDE 00:8CCE: 02        .byte $02   ; 
- D 0 - I - 0x000CDF 00:8CCF: 0E        .byte $0E   ; 
- D 0 - I - 0x000CE0 00:8CD0: 02        .byte $02   ; 
- D 0 - I - 0x000CE1 00:8CD1: 0F        .byte $0F   ; 
- D 0 - I - 0x000CE2 00:8CD2: 02        .byte $02   ; 
- D 0 - I - 0x000CE3 00:8CD3: 0E        .byte $0E   ; 
- D 0 - I - 0x000CE4 00:8CD4: 01        .byte $01   ; 
- D 0 - I - 0x000CE5 00:8CD5: 0F        .byte $0F   ; 
- D 0 - I - 0x000CE6 00:8CD6: 01        .byte $01   ; 
- D 0 - I - 0x000CE7 00:8CD7: 0E        .byte $0E   ; 
- D 0 - I - 0x000CE8 00:8CD8: 01        .byte $01   ; 
- D 0 - I - 0x000CE9 00:8CD9: 0D        .byte $0D   ; 
- D 0 - I - 0x000CEA 00:8CDA: 01        .byte $01   ; 
- D 0 - I - 0x000CEB 00:8CDB: 0C        .byte $0C   ; 
- D 0 - I - 0x000CEC 00:8CDC: 01        .byte $01   ; 
- D 0 - I - 0x000CED 00:8CDD: 0A        .byte $0A   ; 
- D 0 - I - 0x000CEE 00:8CDE: 01        .byte $01   ; 
- D 0 - I - 0x000CEF 00:8CDF: 09        .byte $09   ; 
- D 0 - I - 0x000CF0 00:8CE0: 01        .byte $01   ; 
- D 0 - I - 0x000CF1 00:8CE1: 08        .byte $08   ; 
- D 0 - I - 0x000CF2 00:8CE2: 01        .byte $01   ; 
- D 0 - I - 0x000CF3 00:8CE3: 05        .byte $05   ; 
- D 0 - I - 0x000CF4 00:8CE4: 01        .byte $01   ; 
- D 0 - I - 0x000CF5 00:8CE5: 03        .byte $03   ; 
- D 0 - I - 0x000CF6 00:8CE6: 01        .byte $01   ; 
- D 0 - I - 0x000CF7 00:8CE7: 01        .byte $01   ; 
- D 0 - I - 0x000CF8 00:8CE8: FF        .byte $FF   ; 
- D 0 - I - 0x000CF9 00:8CE9: 00        .byte $00   ; 



_off001_8CEA_2E:
- D 0 - I - 0x000CFA 00:8CEA: 05        .byte $05   ; 
- D 0 - I - 0x000CFB 00:8CEB: 0F        .byte $0F   ; 
- D 0 - I - 0x000CFC 00:8CEC: FF        .byte $FF   ; 
- D 0 - I - 0x000CFD 00:8CED: 00        .byte $00   ; 



_off001_8CEE_2F:
- D 0 - I - 0x000CFE 00:8CEE: 01        .byte $01   ; 
- D 0 - I - 0x000CFF 00:8CEF: 0F        .byte $0F   ; 
- D 0 - I - 0x000D00 00:8CF0: 01        .byte $01   ; 
- D 0 - I - 0x000D01 00:8CF1: 0E        .byte $0E   ; 
- D 0 - I - 0x000D02 00:8CF2: 01        .byte $01   ; 
- D 0 - I - 0x000D03 00:8CF3: 0F        .byte $0F   ; 
- D 0 - I - 0x000D04 00:8CF4: 01        .byte $01   ; 
- D 0 - I - 0x000D05 00:8CF5: 0E        .byte $0E   ; 
- D 0 - I - 0x000D06 00:8CF6: 01        .byte $01   ; 
- D 0 - I - 0x000D07 00:8CF7: 0D        .byte $0D   ; 
- D 0 - I - 0x000D08 00:8CF8: 01        .byte $01   ; 
- D 0 - I - 0x000D09 00:8CF9: 0C        .byte $0C   ; 
- D 0 - I - 0x000D0A 00:8CFA: 01        .byte $01   ; 
- D 0 - I - 0x000D0B 00:8CFB: 0D        .byte $0D   ; 
- D 0 - I - 0x000D0C 00:8CFC: 01        .byte $01   ; 
- D 0 - I - 0x000D0D 00:8CFD: 0C        .byte $0C   ; 
- D 0 - I - 0x000D0E 00:8CFE: 01        .byte $01   ; 
- D 0 - I - 0x000D0F 00:8CFF: 0B        .byte $0B   ; 
- D 0 - I - 0x000D10 00:8D00: 01        .byte $01   ; 
- D 0 - I - 0x000D11 00:8D01: 0A        .byte $0A   ; 
- D 0 - I - 0x000D12 00:8D02: 01        .byte $01   ; 
- D 0 - I - 0x000D13 00:8D03: 0B        .byte $0B   ; 
- D 0 - I - 0x000D14 00:8D04: 01        .byte $01   ; 
- D 0 - I - 0x000D15 00:8D05: 0A        .byte $0A   ; 
- D 0 - I - 0x000D16 00:8D06: 01        .byte $01   ; 
- D 0 - I - 0x000D17 00:8D07: 09        .byte $09   ; 
- D 0 - I - 0x000D18 00:8D08: 01        .byte $01   ; 
- D 0 - I - 0x000D19 00:8D09: 08        .byte $08   ; 
- D 0 - I - 0x000D1A 00:8D0A: 01        .byte $01   ; 
- D 0 - I - 0x000D1B 00:8D0B: 09        .byte $09   ; 
- D 0 - I - 0x000D1C 00:8D0C: 01        .byte $01   ; 
- D 0 - I - 0x000D1D 00:8D0D: 08        .byte $08   ; 
- D 0 - I - 0x000D1E 00:8D0E: 01        .byte $01   ; 
- D 0 - I - 0x000D1F 00:8D0F: 07        .byte $07   ; 
- D 0 - I - 0x000D20 00:8D10: 01        .byte $01   ; 
- D 0 - I - 0x000D21 00:8D11: 06        .byte $06   ; 
- D 0 - I - 0x000D22 00:8D12: 01        .byte $01   ; 
- D 0 - I - 0x000D23 00:8D13: 07        .byte $07   ; 
- D 0 - I - 0x000D24 00:8D14: 01        .byte $01   ; 
- D 0 - I - 0x000D25 00:8D15: 06        .byte $06   ; 
- D 0 - I - 0x000D26 00:8D16: 01        .byte $01   ; 
- D 0 - I - 0x000D27 00:8D17: 05        .byte $05   ; 
- D 0 - I - 0x000D28 00:8D18: 01        .byte $01   ; 
- D 0 - I - 0x000D29 00:8D19: 04        .byte $04   ; 
- D 0 - I - 0x000D2A 00:8D1A: 01        .byte $01   ; 
- D 0 - I - 0x000D2B 00:8D1B: 05        .byte $05   ; 
- D 0 - I - 0x000D2C 00:8D1C: 01        .byte $01   ; 
- D 0 - I - 0x000D2D 00:8D1D: 04        .byte $04   ; 
- D 0 - I - 0x000D2E 00:8D1E: 01        .byte $01   ; 
- D 0 - I - 0x000D2F 00:8D1F: 03        .byte $03   ; 
- D 0 - I - 0x000D30 00:8D20: 01        .byte $01   ; 
- D 0 - I - 0x000D31 00:8D21: 02        .byte $02   ; 
- D 0 - I - 0x000D32 00:8D22: 01        .byte $01   ; 
- D 0 - I - 0x000D33 00:8D23: 03        .byte $03   ; 
- D 0 - I - 0x000D34 00:8D24: 01        .byte $01   ; 
- D 0 - I - 0x000D35 00:8D25: 02        .byte $02   ; 
- D 0 - I - 0x000D36 00:8D26: 02        .byte $02   ; 
- D 0 - I - 0x000D37 00:8D27: 01        .byte $01   ; 
- D 0 - I - 0x000D38 00:8D28: FF        .byte $FF   ; 
- D 0 - I - 0x000D39 00:8D29: 00        .byte $00   ; 



_off001_8D2A_30:
- D 0 - I - 0x000D3A 00:8D2A: 01        .byte $01   ; 
- D 0 - I - 0x000D3B 00:8D2B: 0F        .byte $0F   ; 
- D 0 - I - 0x000D3C 00:8D2C: 01        .byte $01   ; 
- D 0 - I - 0x000D3D 00:8D2D: 0E        .byte $0E   ; 
- D 0 - I - 0x000D3E 00:8D2E: 01        .byte $01   ; 
- D 0 - I - 0x000D3F 00:8D2F: 0F        .byte $0F   ; 
- D 0 - I - 0x000D40 00:8D30: 01        .byte $01   ; 
- D 0 - I - 0x000D41 00:8D31: 0E        .byte $0E   ; 
- D 0 - I - 0x000D42 00:8D32: 01        .byte $01   ; 
- D 0 - I - 0x000D43 00:8D33: 0D        .byte $0D   ; 
- D 0 - I - 0x000D44 00:8D34: 01        .byte $01   ; 
- D 0 - I - 0x000D45 00:8D35: 0C        .byte $0C   ; 
- D 0 - I - 0x000D46 00:8D36: 01        .byte $01   ; 
- D 0 - I - 0x000D47 00:8D37: 0B        .byte $0B   ; 
- D 0 - I - 0x000D48 00:8D38: 01        .byte $01   ; 
- D 0 - I - 0x000D49 00:8D39: 0A        .byte $0A   ; 
- D 0 - I - 0x000D4A 00:8D3A: 01        .byte $01   ; 
- D 0 - I - 0x000D4B 00:8D3B: 09        .byte $09   ; 
- D 0 - I - 0x000D4C 00:8D3C: 01        .byte $01   ; 
- D 0 - I - 0x000D4D 00:8D3D: 08        .byte $08   ; 
- D 0 - I - 0x000D4E 00:8D3E: 01        .byte $01   ; 
- D 0 - I - 0x000D4F 00:8D3F: 07        .byte $07   ; 
- D 0 - I - 0x000D50 00:8D40: 01        .byte $01   ; 
- D 0 - I - 0x000D51 00:8D41: 05        .byte $05   ; 
- D 0 - I - 0x000D52 00:8D42: 01        .byte $01   ; 
- D 0 - I - 0x000D53 00:8D43: 03        .byte $03   ; 
- D 0 - I - 0x000D54 00:8D44: 01        .byte $01   ; 
- D 0 - I - 0x000D55 00:8D45: 02        .byte $02   ; 
- D 0 - I - 0x000D56 00:8D46: 01        .byte $01   ; 
- D 0 - I - 0x000D57 00:8D47: 01        .byte $01   ; 
- D 0 - I - 0x000D58 00:8D48: FF        .byte $FF   ; 
- D 0 - I - 0x000D59 00:8D49: 00        .byte $00   ; 



_off001_8D4A_31:
- D 0 - I - 0x000D5A 00:8D4A: 01        .byte $01   ; 
- D 0 - I - 0x000D5B 00:8D4B: 0F        .byte $0F   ; 
- D 0 - I - 0x000D5C 00:8D4C: 01        .byte $01   ; 
- D 0 - I - 0x000D5D 00:8D4D: 0E        .byte $0E   ; 
- D 0 - I - 0x000D5E 00:8D4E: 01        .byte $01   ; 
- D 0 - I - 0x000D5F 00:8D4F: 0F        .byte $0F   ; 
- D 0 - I - 0x000D60 00:8D50: 01        .byte $01   ; 
- D 0 - I - 0x000D61 00:8D51: 0E        .byte $0E   ; 
- D 0 - I - 0x000D62 00:8D52: 01        .byte $01   ; 
- D 0 - I - 0x000D63 00:8D53: 0B        .byte $0B   ; 
- D 0 - I - 0x000D64 00:8D54: 01        .byte $01   ; 
- D 0 - I - 0x000D65 00:8D55: 09        .byte $09   ; 
- D 0 - I - 0x000D66 00:8D56: 01        .byte $01   ; 
- D 0 - I - 0x000D67 00:8D57: 07        .byte $07   ; 
- D 0 - I - 0x000D68 00:8D58: 01        .byte $01   ; 
- D 0 - I - 0x000D69 00:8D59: 03        .byte $03   ; 
- D 0 - I - 0x000D6A 00:8D5A: FF        .byte $FF   ; 
- D 0 - I - 0x000D6B 00:8D5B: 00        .byte $00   ; 



_off001_8D5C_32:
- D 0 - I - 0x000D6C 00:8D5C: 01        .byte $01   ; 
- D 0 - I - 0x000D6D 00:8D5D: 05        .byte $05   ; 
- D 0 - I - 0x000D6E 00:8D5E: 01        .byte $01   ; 
- D 0 - I - 0x000D6F 00:8D5F: 04        .byte $04   ; 
- D 0 - I - 0x000D70 00:8D60: 01        .byte $01   ; 
- D 0 - I - 0x000D71 00:8D61: 02        .byte $02   ; 
- D 0 - I - 0x000D72 00:8D62: 01        .byte $01   ; 
- D 0 - I - 0x000D73 00:8D63: 01        .byte $01   ; 
- D 0 - I - 0x000D74 00:8D64: 01        .byte $01   ; 
- D 0 - I - 0x000D75 00:8D65: 00        .byte $00   ; 
- D 0 - I - 0x000D76 00:8D66: 01        .byte $01   ; 
- D 0 - I - 0x000D77 00:8D67: 03        .byte $03   ; 
- D 0 - I - 0x000D78 00:8D68: 01        .byte $01   ; 
- D 0 - I - 0x000D79 00:8D69: 02        .byte $02   ; 
- D 0 - I - 0x000D7A 00:8D6A: 01        .byte $01   ; 
- D 0 - I - 0x000D7B 00:8D6B: 01        .byte $01   ; 
- D 0 - I - 0x000D7C 00:8D6C: FF        .byte $FF   ; 
- D 0 - I - 0x000D7D 00:8D6D: 00        .byte $00   ; 



_off001_8D6E_33:
- D 0 - I - 0x000D7E 00:8D6E: 03        .byte $03   ; 
- D 0 - I - 0x000D7F 00:8D6F: 05        .byte $05   ; 
- D 0 - I - 0x000D80 00:8D70: 02        .byte $02   ; 
- D 0 - I - 0x000D81 00:8D71: 04        .byte $04   ; 
- D 0 - I - 0x000D82 00:8D72: 02        .byte $02   ; 
- D 0 - I - 0x000D83 00:8D73: 03        .byte $03   ; 
- D 0 - I - 0x000D84 00:8D74: 01        .byte $01   ; 
- D 0 - I - 0x000D85 00:8D75: 02        .byte $02   ; 
- D 0 - I - 0x000D86 00:8D76: 01        .byte $01   ; 
- D 0 - I - 0x000D87 00:8D77: 01        .byte $01   ; 
- D 0 - I - 0x000D88 00:8D78: 01        .byte $01   ; 
- D 0 - I - 0x000D89 00:8D79: 00        .byte $00   ; 
- D 0 - I - 0x000D8A 00:8D7A: 02        .byte $02   ; 
- D 0 - I - 0x000D8B 00:8D7B: 03        .byte $03   ; 
- D 0 - I - 0x000D8C 00:8D7C: 02        .byte $02   ; 
- D 0 - I - 0x000D8D 00:8D7D: 02        .byte $02   ; 
- D 0 - I - 0x000D8E 00:8D7E: 02        .byte $02   ; 
- D 0 - I - 0x000D8F 00:8D7F: 01        .byte $01   ; 
- - - - - - 0x000D90 00:8D80: FF        .byte $FF   ; 
- - - - - - 0x000D91 00:8D81: 00        .byte $00   ; 



_off001_8D82_34:
- D 0 - I - 0x000D92 00:8D82: 01        .byte $01   ; 
- D 0 - I - 0x000D93 00:8D83: 0A        .byte $0A   ; 
- D 0 - I - 0x000D94 00:8D84: 02        .byte $02   ; 
- D 0 - I - 0x000D95 00:8D85: 0F        .byte $0F   ; 
- D 0 - I - 0x000D96 00:8D86: 01        .byte $01   ; 
- D 0 - I - 0x000D97 00:8D87: 0E        .byte $0E   ; 
- D 0 - I - 0x000D98 00:8D88: 01        .byte $01   ; 
- D 0 - I - 0x000D99 00:8D89: 0D        .byte $0D   ; 
- D 0 - I - 0x000D9A 00:8D8A: 03        .byte $03   ; 
- D 0 - I - 0x000D9B 00:8D8B: 0C        .byte $0C   ; 
- D 0 - I - 0x000D9C 00:8D8C: 03        .byte $03   ; 
- D 0 - I - 0x000D9D 00:8D8D: 0D        .byte $0D   ; 
- D 0 - I - 0x000D9E 00:8D8E: 03        .byte $03   ; 
- D 0 - I - 0x000D9F 00:8D8F: 0C        .byte $0C   ; 
- D 0 - I - 0x000DA0 00:8D90: 03        .byte $03   ; 
- D 0 - I - 0x000DA1 00:8D91: 0B        .byte $0B   ; 
- D 0 - I - 0x000DA2 00:8D92: 03        .byte $03   ; 
- D 0 - I - 0x000DA3 00:8D93: 0C        .byte $0C   ; 
- D 0 - I - 0x000DA4 00:8D94: 02        .byte $02   ; 
- D 0 - I - 0x000DA5 00:8D95: 0B        .byte $0B   ; 
- D 0 - I - 0x000DA6 00:8D96: 01        .byte $01   ; 
- D 0 - I - 0x000DA7 00:8D97: 0A        .byte $0A   ; 
- D 0 - I - 0x000DA8 00:8D98: 01        .byte $01   ; 
- D 0 - I - 0x000DA9 00:8D99: 09        .byte $09   ; 
- D 0 - I - 0x000DAA 00:8D9A: 02        .byte $02   ; 
- D 0 - I - 0x000DAB 00:8D9B: 08        .byte $08   ; 
- D 0 - I - 0x000DAC 00:8D9C: 02        .byte $02   ; 
- D 0 - I - 0x000DAD 00:8D9D: 07        .byte $07   ; 
- D 0 - I - 0x000DAE 00:8D9E: 02        .byte $02   ; 
- D 0 - I - 0x000DAF 00:8D9F: 06        .byte $06   ; 
- D 0 - I - 0x000DB0 00:8DA0: 01        .byte $01   ; 
- D 0 - I - 0x000DB1 00:8DA1: 05        .byte $05   ; 
- D 0 - I - 0x000DB2 00:8DA2: 01        .byte $01   ; 
- D 0 - I - 0x000DB3 00:8DA3: 04        .byte $04   ; 
- D 0 - I - 0x000DB4 00:8DA4: 01        .byte $01   ; 
- D 0 - I - 0x000DB5 00:8DA5: 03        .byte $03   ; 
- D 0 - I - 0x000DB6 00:8DA6: 01        .byte $01   ; 
- D 0 - I - 0x000DB7 00:8DA7: 02        .byte $02   ; 
- D 0 - I - 0x000DB8 00:8DA8: 01        .byte $01   ; 
- D 0 - I - 0x000DB9 00:8DA9: 01        .byte $01   ; 
- D 0 - I - 0x000DBA 00:8DAA: FF        .byte $FF   ; 
- D 0 - I - 0x000DBB 00:8DAB: 00        .byte $00   ; 



_off001_8DAC_35:
- - - - - - 0x000DBC 00:8DAC: 01        .byte $01   ; 
- - - - - - 0x000DBD 00:8DAD: 0A        .byte $0A   ; 
- - - - - - 0x000DBE 00:8DAE: 02        .byte $02   ; 
- - - - - - 0x000DBF 00:8DAF: 0F        .byte $0F   ; 
- - - - - - 0x000DC0 00:8DB0: 01        .byte $01   ; 
- - - - - - 0x000DC1 00:8DB1: 0E        .byte $0E   ; 
- - - - - - 0x000DC2 00:8DB2: 01        .byte $01   ; 
- - - - - - 0x000DC3 00:8DB3: 0D        .byte $0D   ; 
- - - - - - 0x000DC4 00:8DB4: 02        .byte $02   ; 
- - - - - - 0x000DC5 00:8DB5: 0C        .byte $0C   ; 
- - - - - - 0x000DC6 00:8DB6: 02        .byte $02   ; 
- - - - - - 0x000DC7 00:8DB7: 0D        .byte $0D   ; 
- - - - - - 0x000DC8 00:8DB8: 02        .byte $02   ; 
- - - - - - 0x000DC9 00:8DB9: 0C        .byte $0C   ; 
- - - - - - 0x000DCA 00:8DBA: 02        .byte $02   ; 
- - - - - - 0x000DCB 00:8DBB: 0B        .byte $0B   ; 
- - - - - - 0x000DCC 00:8DBC: 01        .byte $01   ; 
- - - - - - 0x000DCD 00:8DBD: 0C        .byte $0C   ; 
- - - - - - 0x000DCE 00:8DBE: 01        .byte $01   ; 
- - - - - - 0x000DCF 00:8DBF: 0B        .byte $0B   ; 
- - - - - - 0x000DD0 00:8DC0: 01        .byte $01   ; 
- - - - - - 0x000DD1 00:8DC1: 0A        .byte $0A   ; 
- - - - - - 0x000DD2 00:8DC2: 01        .byte $01   ; 
- - - - - - 0x000DD3 00:8DC3: 09        .byte $09   ; 
- - - - - - 0x000DD4 00:8DC4: 01        .byte $01   ; 
- - - - - - 0x000DD5 00:8DC5: 08        .byte $08   ; 
- - - - - - 0x000DD6 00:8DC6: 01        .byte $01   ; 
- - - - - - 0x000DD7 00:8DC7: 07        .byte $07   ; 
- - - - - - 0x000DD8 00:8DC8: 01        .byte $01   ; 
- - - - - - 0x000DD9 00:8DC9: 06        .byte $06   ; 
- - - - - - 0x000DDA 00:8DCA: 01        .byte $01   ; 
- - - - - - 0x000DDB 00:8DCB: 05        .byte $05   ; 
- - - - - - 0x000DDC 00:8DCC: 01        .byte $01   ; 
- - - - - - 0x000DDD 00:8DCD: 04        .byte $04   ; 
- - - - - - 0x000DDE 00:8DCE: 01        .byte $01   ; 
- - - - - - 0x000DDF 00:8DCF: 03        .byte $03   ; 
- - - - - - 0x000DE0 00:8DD0: 01        .byte $01   ; 
- - - - - - 0x000DE1 00:8DD1: 02        .byte $02   ; 
- - - - - - 0x000DE2 00:8DD2: 01        .byte $01   ; 
- - - - - - 0x000DE3 00:8DD3: 01        .byte $01   ; 
- - - - - - 0x000DE4 00:8DD4: FF        .byte $FF   ; 
- - - - - - 0x000DE5 00:8DD5: 00        .byte $00   ; 



_off001_8DD6_36:
- D 0 - I - 0x000DE6 00:8DD6: 01        .byte $01   ; 
- D 0 - I - 0x000DE7 00:8DD7: 0C        .byte $0C   ; 
- D 0 - I - 0x000DE8 00:8DD8: 01        .byte $01   ; 
- D 0 - I - 0x000DE9 00:8DD9: 0F        .byte $0F   ; 
- D 0 - I - 0x000DEA 00:8DDA: 01        .byte $01   ; 
- D 0 - I - 0x000DEB 00:8DDB: 0E        .byte $0E   ; 
- D 0 - I - 0x000DEC 00:8DDC: 01        .byte $01   ; 
- D 0 - I - 0x000DED 00:8DDD: 0D        .byte $0D   ; 
- D 0 - I - 0x000DEE 00:8DDE: 02        .byte $02   ; 
- D 0 - I - 0x000DEF 00:8DDF: 0C        .byte $0C   ; 
- D 0 - I - 0x000DF0 00:8DE0: 01        .byte $01   ; 
- D 0 - I - 0x000DF1 00:8DE1: 0D        .byte $0D   ; 
- D 0 - I - 0x000DF2 00:8DE2: 01        .byte $01   ; 
- D 0 - I - 0x000DF3 00:8DE3: 0C        .byte $0C   ; 
- D 0 - I - 0x000DF4 00:8DE4: 01        .byte $01   ; 
- D 0 - I - 0x000DF5 00:8DE5: 0B        .byte $0B   ; 
- D 0 - I - 0x000DF6 00:8DE6: 01        .byte $01   ; 
- D 0 - I - 0x000DF7 00:8DE7: 0A        .byte $0A   ; 
- D 0 - I - 0x000DF8 00:8DE8: 01        .byte $01   ; 
- D 0 - I - 0x000DF9 00:8DE9: 09        .byte $09   ; 
- D 0 - I - 0x000DFA 00:8DEA: 01        .byte $01   ; 
- D 0 - I - 0x000DFB 00:8DEB: 08        .byte $08   ; 
- D 0 - I - 0x000DFC 00:8DEC: 01        .byte $01   ; 
- D 0 - I - 0x000DFD 00:8DED: 07        .byte $07   ; 
- D 0 - I - 0x000DFE 00:8DEE: 01        .byte $01   ; 
- D 0 - I - 0x000DFF 00:8DEF: 06        .byte $06   ; 
- D 0 - I - 0x000E00 00:8DF0: 01        .byte $01   ; 
- D 0 - I - 0x000E01 00:8DF1: 05        .byte $05   ; 
- D 0 - I - 0x000E02 00:8DF2: 01        .byte $01   ; 
- D 0 - I - 0x000E03 00:8DF3: 04        .byte $04   ; 
- D 0 - I - 0x000E04 00:8DF4: 01        .byte $01   ; 
- D 0 - I - 0x000E05 00:8DF5: 03        .byte $03   ; 
- D 0 - I - 0x000E06 00:8DF6: 01        .byte $01   ; 
- D 0 - I - 0x000E07 00:8DF7: 02        .byte $02   ; 
- - - - - - 0x000E08 00:8DF8: 01        .byte $01   ; 
- - - - - - 0x000E09 00:8DF9: 01        .byte $01   ; 
- - - - - - 0x000E0A 00:8DFA: FF        .byte $FF   ; 
- - - - - - 0x000E0B 00:8DFB: 00        .byte $00   ; 



_off001_8DFC_37:
- D 0 - I - 0x000E0C 00:8DFC: 01        .byte $01   ; 
- D 0 - I - 0x000E0D 00:8DFD: 0C        .byte $0C   ; 
- D 0 - I - 0x000E0E 00:8DFE: 01        .byte $01   ; 
- D 0 - I - 0x000E0F 00:8DFF: 0F        .byte $0F   ; 
- D 0 - I - 0x000E10 00:8E00: 01        .byte $01   ; 
- D 0 - I - 0x000E11 00:8E01: 0D        .byte $0D   ; 
- D 0 - I - 0x000E12 00:8E02: 01        .byte $01   ; 
- D 0 - I - 0x000E13 00:8E03: 0C        .byte $0C   ; 
- D 0 - I - 0x000E14 00:8E04: 01        .byte $01   ; 
- D 0 - I - 0x000E15 00:8E05: 0D        .byte $0D   ; 
- D 0 - I - 0x000E16 00:8E06: 01        .byte $01   ; 
- D 0 - I - 0x000E17 00:8E07: 0B        .byte $0B   ; 
- D 0 - I - 0x000E18 00:8E08: 01        .byte $01   ; 
- D 0 - I - 0x000E19 00:8E09: 0A        .byte $0A   ; 
- D 0 - I - 0x000E1A 00:8E0A: 01        .byte $01   ; 
- D 0 - I - 0x000E1B 00:8E0B: 08        .byte $08   ; 
- D 0 - I - 0x000E1C 00:8E0C: 01        .byte $01   ; 
- D 0 - I - 0x000E1D 00:8E0D: 07        .byte $07   ; 
- D 0 - I - 0x000E1E 00:8E0E: 01        .byte $01   ; 
- D 0 - I - 0x000E1F 00:8E0F: 06        .byte $06   ; 
- D 0 - I - 0x000E20 00:8E10: 01        .byte $01   ; 
- D 0 - I - 0x000E21 00:8E11: 04        .byte $04   ; 
- D 0 - I - 0x000E22 00:8E12: 01        .byte $01   ; 
- D 0 - I - 0x000E23 00:8E13: 02        .byte $02   ; 
- - - - - - 0x000E24 00:8E14: 01        .byte $01   ; 
- - - - - - 0x000E25 00:8E15: 01        .byte $01   ; 
- - - - - - 0x000E26 00:8E16: FF        .byte $FF   ; 
- - - - - - 0x000E27 00:8E17: 00        .byte $00   ; 



_off001_8E18_38:
- D 0 - I - 0x000E28 00:8E18: 01        .byte $01   ; 
- D 0 - I - 0x000E29 00:8E19: 0F        .byte $0F   ; 
- D 0 - I - 0x000E2A 00:8E1A: 01        .byte $01   ; 
- D 0 - I - 0x000E2B 00:8E1B: 0C        .byte $0C   ; 
- D 0 - I - 0x000E2C 00:8E1C: 01        .byte $01   ; 
- D 0 - I - 0x000E2D 00:8E1D: 0A        .byte $0A   ; 
- D 0 - I - 0x000E2E 00:8E1E: 01        .byte $01   ; 
- D 0 - I - 0x000E2F 00:8E1F: 08        .byte $08   ; 
- D 0 - I - 0x000E30 00:8E20: 01        .byte $01   ; 
- D 0 - I - 0x000E31 00:8E21: 06        .byte $06   ; 
- D 0 - I - 0x000E32 00:8E22: 01        .byte $01   ; 
- D 0 - I - 0x000E33 00:8E23: 04        .byte $04   ; 
- D 0 - I - 0x000E34 00:8E24: 01        .byte $01   ; 
- D 0 - I - 0x000E35 00:8E25: 01        .byte $01   ; 
- D 0 - I - 0x000E36 00:8E26: FF        .byte $FF   ; 
- D 0 - I - 0x000E37 00:8E27: 00        .byte $00   ; 



_off001_8E28_39:
- D 0 - I - 0x000E38 00:8E28: 01        .byte $01   ; 
- D 0 - I - 0x000E39 00:8E29: 0F        .byte $0F   ; 
- D 0 - I - 0x000E3A 00:8E2A: 03        .byte $03   ; 
- D 0 - I - 0x000E3B 00:8E2B: 0C        .byte $0C   ; 
- D 0 - I - 0x000E3C 00:8E2C: 01        .byte $01   ; 
- D 0 - I - 0x000E3D 00:8E2D: 0B        .byte $0B   ; 
- D 0 - I - 0x000E3E 00:8E2E: 01        .byte $01   ; 
- D 0 - I - 0x000E3F 00:8E2F: 0A        .byte $0A   ; 
- D 0 - I - 0x000E40 00:8E30: 01        .byte $01   ; 
- D 0 - I - 0x000E41 00:8E31: 08        .byte $08   ; 
- D 0 - I - 0x000E42 00:8E32: 01        .byte $01   ; 
- D 0 - I - 0x000E43 00:8E33: 07        .byte $07   ; 
- D 0 - I - 0x000E44 00:8E34: 02        .byte $02   ; 
- D 0 - I - 0x000E45 00:8E35: 06        .byte $06   ; 
- D 0 - I - 0x000E46 00:8E36: 01        .byte $01   ; 
- D 0 - I - 0x000E47 00:8E37: 05        .byte $05   ; 
- D 0 - I - 0x000E48 00:8E38: 01        .byte $01   ; 
- D 0 - I - 0x000E49 00:8E39: 04        .byte $04   ; 
- D 0 - I - 0x000E4A 00:8E3A: 01        .byte $01   ; 
- D 0 - I - 0x000E4B 00:8E3B: 03        .byte $03   ; 
- D 0 - I - 0x000E4C 00:8E3C: 01        .byte $01   ; 
- D 0 - I - 0x000E4D 00:8E3D: 02        .byte $02   ; 
- D 0 - I - 0x000E4E 00:8E3E: 01        .byte $01   ; 
- D 0 - I - 0x000E4F 00:8E3F: 01        .byte $01   ; 
- D 0 - I - 0x000E50 00:8E40: FF        .byte $FF   ; 
- D 0 - I - 0x000E51 00:8E41: 00        .byte $00   ; 



_off001_8E42_3A:
- D 0 - I - 0x000E52 00:8E42: 01        .byte $01   ; 
- D 0 - I - 0x000E53 00:8E43: 0F        .byte $0F   ; 
- D 0 - I - 0x000E54 00:8E44: 06        .byte $06   ; 
- D 0 - I - 0x000E55 00:8E45: 0C        .byte $0C   ; 
- D 0 - I - 0x000E56 00:8E46: 02        .byte $02   ; 
- D 0 - I - 0x000E57 00:8E47: 0B        .byte $0B   ; 
- D 0 - I - 0x000E58 00:8E48: 02        .byte $02   ; 
- D 0 - I - 0x000E59 00:8E49: 0A        .byte $0A   ; 
- D 0 - I - 0x000E5A 00:8E4A: 02        .byte $02   ; 
- D 0 - I - 0x000E5B 00:8E4B: 08        .byte $08   ; 
- D 0 - I - 0x000E5C 00:8E4C: 02        .byte $02   ; 
- D 0 - I - 0x000E5D 00:8E4D: 07        .byte $07   ; 
- D 0 - I - 0x000E5E 00:8E4E: 03        .byte $03   ; 
- D 0 - I - 0x000E5F 00:8E4F: 06        .byte $06   ; 
- D 0 - I - 0x000E60 00:8E50: 03        .byte $03   ; 
- D 0 - I - 0x000E61 00:8E51: 05        .byte $05   ; 
- D 0 - I - 0x000E62 00:8E52: 03        .byte $03   ; 
- D 0 - I - 0x000E63 00:8E53: 04        .byte $04   ; 
- D 0 - I - 0x000E64 00:8E54: 03        .byte $03   ; 
- D 0 - I - 0x000E65 00:8E55: 03        .byte $03   ; 
- D 0 - I - 0x000E66 00:8E56: 03        .byte $03   ; 
- D 0 - I - 0x000E67 00:8E57: 02        .byte $02   ; 
- D 0 - I - 0x000E68 00:8E58: 03        .byte $03   ; 
- D 0 - I - 0x000E69 00:8E59: 01        .byte $01   ; 
- - - - - - 0x000E6A 00:8E5A: FF        .byte $FF   ; 
- - - - - - 0x000E6B 00:8E5B: 00        .byte $00   ; 



_off001_8E5C_3B:
- D 0 - I - 0x000E6C 00:8E5C: 01        .byte $01   ; 
- D 0 - I - 0x000E6D 00:8E5D: 05        .byte $05   ; 
- D 0 - I - 0x000E6E 00:8E5E: 01        .byte $01   ; 
- D 0 - I - 0x000E6F 00:8E5F: 04        .byte $04   ; 
- D 0 - I - 0x000E70 00:8E60: 01        .byte $01   ; 
- D 0 - I - 0x000E71 00:8E61: 03        .byte $03   ; 
- D 0 - I - 0x000E72 00:8E62: 01        .byte $01   ; 
- D 0 - I - 0x000E73 00:8E63: 02        .byte $02   ; 
- D 0 - I - 0x000E74 00:8E64: 01        .byte $01   ; 
- D 0 - I - 0x000E75 00:8E65: 01        .byte $01   ; 
- D 0 - I - 0x000E76 00:8E66: 01        .byte $01   ; 
- D 0 - I - 0x000E77 00:8E67: 00        .byte $00   ; 
- D 0 - I - 0x000E78 00:8E68: 01        .byte $01   ; 
- D 0 - I - 0x000E79 00:8E69: 03        .byte $03   ; 
- D 0 - I - 0x000E7A 00:8E6A: 01        .byte $01   ; 
- D 0 - I - 0x000E7B 00:8E6B: 02        .byte $02   ; 
- D 0 - I - 0x000E7C 00:8E6C: 01        .byte $01   ; 
- D 0 - I - 0x000E7D 00:8E6D: 01        .byte $01   ; 
- D 0 - I - 0x000E7E 00:8E6E: FF        .byte $FF   ; 
- D 0 - I - 0x000E7F 00:8E6F: 00        .byte $00   ; 



_off001_8E70_3C:
- D 0 - I - 0x000E80 00:8E70: 02        .byte $02   ; 
- D 0 - I - 0x000E81 00:8E71: 0A        .byte $0A   ; 
- D 0 - I - 0x000E82 00:8E72: 01        .byte $01   ; 
- D 0 - I - 0x000E83 00:8E73: 09        .byte $09   ; 
- D 0 - I - 0x000E84 00:8E74: 01        .byte $01   ; 
- D 0 - I - 0x000E85 00:8E75: 08        .byte $08   ; 
- D 0 - I - 0x000E86 00:8E76: 01        .byte $01   ; 
- D 0 - I - 0x000E87 00:8E77: 07        .byte $07   ; 
- D 0 - I - 0x000E88 00:8E78: 01        .byte $01   ; 
- D 0 - I - 0x000E89 00:8E79: 06        .byte $06   ; 
- D 0 - I - 0x000E8A 00:8E7A: 01        .byte $01   ; 
- D 0 - I - 0x000E8B 00:8E7B: 05        .byte $05   ; 
- D 0 - I - 0x000E8C 00:8E7C: 01        .byte $01   ; 
- D 0 - I - 0x000E8D 00:8E7D: 04        .byte $04   ; 
- D 0 - I - 0x000E8E 00:8E7E: 01        .byte $01   ; 
- D 0 - I - 0x000E8F 00:8E7F: 03        .byte $03   ; 
- D 0 - I - 0x000E90 00:8E80: 01        .byte $01   ; 
- D 0 - I - 0x000E91 00:8E81: 02        .byte $02   ; 
- D 0 - I - 0x000E92 00:8E82: 01        .byte $01   ; 
- D 0 - I - 0x000E93 00:8E83: 01        .byte $01   ; 
- D 0 - I - 0x000E94 00:8E84: 01        .byte $01   ; 
- D 0 - I - 0x000E95 00:8E85: 00        .byte $00   ; 
- D 0 - I - 0x000E96 00:8E86: 05        .byte $05   ; 
- D 0 - I - 0x000E97 00:8E87: 02        .byte $02   ; 
- D 0 - I - 0x000E98 00:8E88: 04        .byte $04   ; 
- D 0 - I - 0x000E99 00:8E89: 01        .byte $01   ; 
- D 0 - I - 0x000E9A 00:8E8A: FF        .byte $FF   ; 
- D 0 - I - 0x000E9B 00:8E8B: 00        .byte $00   ; 



_off001_8E8C_3D:
- D 0 - I - 0x000E9C 00:8E8C: 01        .byte $01   ; 
- D 0 - I - 0x000E9D 00:8E8D: 0F        .byte $0F   ; 
- D 0 - I - 0x000E9E 00:8E8E: 02        .byte $02   ; 
- D 0 - I - 0x000E9F 00:8E8F: 0E        .byte $0E   ; 
- D 0 - I - 0x000EA0 00:8E90: 01        .byte $01   ; 
- D 0 - I - 0x000EA1 00:8E91: 0D        .byte $0D   ; 
- D 0 - I - 0x000EA2 00:8E92: 01        .byte $01   ; 
- D 0 - I - 0x000EA3 00:8E93: 0C        .byte $0C   ; 
- D 0 - I - 0x000EA4 00:8E94: 01        .byte $01   ; 
- D 0 - I - 0x000EA5 00:8E95: 09        .byte $09   ; 
- D 0 - I - 0x000EA6 00:8E96: 01        .byte $01   ; 
- D 0 - I - 0x000EA7 00:8E97: 00        .byte $00   ; 
- D 0 - I - 0x000EA8 00:8E98: 01        .byte $01   ; 
- D 0 - I - 0x000EA9 00:8E99: 05        .byte $05   ; 
- D 0 - I - 0x000EAA 00:8E9A: 01        .byte $01   ; 
- D 0 - I - 0x000EAB 00:8E9B: 04        .byte $04   ; 
- D 0 - I - 0x000EAC 00:8E9C: 01        .byte $01   ; 
- D 0 - I - 0x000EAD 00:8E9D: 03        .byte $03   ; 
- D 0 - I - 0x000EAE 00:8E9E: 01        .byte $01   ; 
- D 0 - I - 0x000EAF 00:8E9F: 02        .byte $02   ; 
- D 0 - I - 0x000EB0 00:8EA0: 01        .byte $01   ; 
- D 0 - I - 0x000EB1 00:8EA1: 01        .byte $01   ; 
- D 0 - I - 0x000EB2 00:8EA2: FF        .byte $FF   ; 
- D 0 - I - 0x000EB3 00:8EA3: 00        .byte $00   ; 



_off001_8EA4_3E:
- D 0 - I - 0x000EB4 00:8EA4: 01        .byte $01   ; 
- D 0 - I - 0x000EB5 00:8EA5: 0F        .byte $0F   ; 
- D 0 - I - 0x000EB6 00:8EA6: 03        .byte $03   ; 
- D 0 - I - 0x000EB7 00:8EA7: 0D        .byte $0D   ; 
- D 0 - I - 0x000EB8 00:8EA8: 02        .byte $02   ; 
- D 0 - I - 0x000EB9 00:8EA9: 0C        .byte $0C   ; 
- D 0 - I - 0x000EBA 00:8EAA: 02        .byte $02   ; 
- D 0 - I - 0x000EBB 00:8EAB: 0D        .byte $0D   ; 
- D 0 - I - 0x000EBC 00:8EAC: 02        .byte $02   ; 
- D 0 - I - 0x000EBD 00:8EAD: 0C        .byte $0C   ; 
- D 0 - I - 0x000EBE 00:8EAE: 02        .byte $02   ; 
- D 0 - I - 0x000EBF 00:8EAF: 0A        .byte $0A   ; 
- D 0 - I - 0x000EC0 00:8EB0: 02        .byte $02   ; 
- D 0 - I - 0x000EC1 00:8EB1: 08        .byte $08   ; 
- D 0 - I - 0x000EC2 00:8EB2: FF        .byte $FF   ; 
- D 0 - I - 0x000EC3 00:8EB3: 00        .byte $00   ; 



_off001_8EB4_3F:
- D 0 - I - 0x000EC4 00:8EB4: 02        .byte $02   ; 
- D 0 - I - 0x000EC5 00:8EB5: 0F        .byte $0F   ; 
- D 0 - I - 0x000EC6 00:8EB6: 02        .byte $02   ; 
- D 0 - I - 0x000EC7 00:8EB7: 0D        .byte $0D   ; 
- D 0 - I - 0x000EC8 00:8EB8: 02        .byte $02   ; 
- D 0 - I - 0x000EC9 00:8EB9: 0C        .byte $0C   ; 
- D 0 - I - 0x000ECA 00:8EBA: 02        .byte $02   ; 
- D 0 - I - 0x000ECB 00:8EBB: 0D        .byte $0D   ; 
- D 0 - I - 0x000ECC 00:8EBC: 02        .byte $02   ; 
- D 0 - I - 0x000ECD 00:8EBD: 0C        .byte $0C   ; 
- D 0 - I - 0x000ECE 00:8EBE: 02        .byte $02   ; 
- D 0 - I - 0x000ECF 00:8EBF: 0B        .byte $0B   ; 
- D 0 - I - 0x000ED0 00:8EC0: 02        .byte $02   ; 
- D 0 - I - 0x000ED1 00:8EC1: 0A        .byte $0A   ; 
- D 0 - I - 0x000ED2 00:8EC2: 01        .byte $01   ; 
- D 0 - I - 0x000ED3 00:8EC3: 0B        .byte $0B   ; 
- D 0 - I - 0x000ED4 00:8EC4: 01        .byte $01   ; 
- D 0 - I - 0x000ED5 00:8EC5: 08        .byte $08   ; 
- D 0 - I - 0x000ED6 00:8EC6: 01        .byte $01   ; 
- D 0 - I - 0x000ED7 00:8EC7: 05        .byte $05   ; 
- D 0 - I - 0x000ED8 00:8EC8: 01        .byte $01   ; 
- D 0 - I - 0x000ED9 00:8EC9: 00        .byte $00   ; 
- - - - - - 0x000EDA 00:8ECA: FF        .byte $FF   ; 
- - - - - - 0x000EDB 00:8ECB: 00        .byte $00   ; 



_off001_8ECC_40:
- D 0 - I - 0x000EDC 00:8ECC: 01        .byte $01   ; 
- D 0 - I - 0x000EDD 00:8ECD: 0F        .byte $0F   ; 
- D 0 - I - 0x000EDE 00:8ECE: 01        .byte $01   ; 
- D 0 - I - 0x000EDF 00:8ECF: 0E        .byte $0E   ; 
- D 0 - I - 0x000EE0 00:8ED0: 01        .byte $01   ; 
- D 0 - I - 0x000EE1 00:8ED1: 0D        .byte $0D   ; 
- D 0 - I - 0x000EE2 00:8ED2: 01        .byte $01   ; 
- D 0 - I - 0x000EE3 00:8ED3: 0A        .byte $0A   ; 
- D 0 - I - 0x000EE4 00:8ED4: 01        .byte $01   ; 
- D 0 - I - 0x000EE5 00:8ED5: 08        .byte $08   ; 
- D 0 - I - 0x000EE6 00:8ED6: 01        .byte $01   ; 
- D 0 - I - 0x000EE7 00:8ED7: 05        .byte $05   ; 
- D 0 - I - 0x000EE8 00:8ED8: 01        .byte $01   ; 
- D 0 - I - 0x000EE9 00:8ED9: 03        .byte $03   ; 
- D 0 - I - 0x000EEA 00:8EDA: 01        .byte $01   ; 
- D 0 - I - 0x000EEB 00:8EDB: 00        .byte $00   ; 
- D 0 - I - 0x000EEC 00:8EDC: 01        .byte $01   ; 
- D 0 - I - 0x000EED 00:8EDD: 08        .byte $08   ; 
- D 0 - I - 0x000EEE 00:8EDE: 01        .byte $01   ; 
- D 0 - I - 0x000EEF 00:8EDF: 07        .byte $07   ; 
- D 0 - I - 0x000EF0 00:8EE0: 01        .byte $01   ; 
- D 0 - I - 0x000EF1 00:8EE1: 06        .byte $06   ; 
- D 0 - I - 0x000EF2 00:8EE2: 01        .byte $01   ; 
- D 0 - I - 0x000EF3 00:8EE3: 05        .byte $05   ; 
- - - - - - 0x000EF4 00:8EE4: 01        .byte $01   ; 
- - - - - - 0x000EF5 00:8EE5: 03        .byte $03   ; 
- - - - - - 0x000EF6 00:8EE6: 01        .byte $01   ; 
- - - - - - 0x000EF7 00:8EE7: 02        .byte $02   ; 
- - - - - - 0x000EF8 00:8EE8: 01        .byte $01   ; 
- - - - - - 0x000EF9 00:8EE9: 01        .byte $01   ; 
- - - - - - 0x000EFA 00:8EEA: 01        .byte $01   ; 
- - - - - - 0x000EFB 00:8EEB: 00        .byte $00   ; 
- - - - - - 0x000EFC 00:8EEC: FF        .byte $FF   ; 
- - - - - - 0x000EFD 00:8EED: 00        .byte $00   ; 



_off001_8EEE_41:
- D 0 - I - 0x000EFE 00:8EEE: 01        .byte $01   ; 
- D 0 - I - 0x000EFF 00:8EEF: 0A        .byte $0A   ; 
- D 0 - I - 0x000F00 00:8EF0: 01        .byte $01   ; 
- D 0 - I - 0x000F01 00:8EF1: 0B        .byte $0B   ; 
- D 0 - I - 0x000F02 00:8EF2: 01        .byte $01   ; 
- D 0 - I - 0x000F03 00:8EF3: 0C        .byte $0C   ; 
- D 0 - I - 0x000F04 00:8EF4: 01        .byte $01   ; 
- D 0 - I - 0x000F05 00:8EF5: 0D        .byte $0D   ; 
- D 0 - I - 0x000F06 00:8EF6: 01        .byte $01   ; 
- D 0 - I - 0x000F07 00:8EF7: 0E        .byte $0E   ; 
- D 0 - I - 0x000F08 00:8EF8: 03        .byte $03   ; 
- D 0 - I - 0x000F09 00:8EF9: 0F        .byte $0F   ; 
- D 0 - I - 0x000F0A 00:8EFA: 03        .byte $03   ; 
- D 0 - I - 0x000F0B 00:8EFB: 0E        .byte $0E   ; 
- D 0 - I - 0x000F0C 00:8EFC: 03        .byte $03   ; 
- D 0 - I - 0x000F0D 00:8EFD: 0F        .byte $0F   ; 
- D 0 - I - 0x000F0E 00:8EFE: 03        .byte $03   ; 
- D 0 - I - 0x000F0F 00:8EFF: 0E        .byte $0E   ; 
- D 0 - I - 0x000F10 00:8F00: 03        .byte $03   ; 
- D 0 - I - 0x000F11 00:8F01: 0F        .byte $0F   ; 
- D 0 - I - 0x000F12 00:8F02: 03        .byte $03   ; 
- D 0 - I - 0x000F13 00:8F03: 0E        .byte $0E   ; 
- D 0 - I - 0x000F14 00:8F04: 03        .byte $03   ; 
- D 0 - I - 0x000F15 00:8F05: 0F        .byte $0F   ; 
- D 0 - I - 0x000F16 00:8F06: 03        .byte $03   ; 
- D 0 - I - 0x000F17 00:8F07: 0E        .byte $0E   ; 
- D 0 - I - 0x000F18 00:8F08: 03        .byte $03   ; 
- D 0 - I - 0x000F19 00:8F09: 0F        .byte $0F   ; 
- D 0 - I - 0x000F1A 00:8F0A: 03        .byte $03   ; 
- D 0 - I - 0x000F1B 00:8F0B: 0E        .byte $0E   ; 
- D 0 - I - 0x000F1C 00:8F0C: 03        .byte $03   ; 
- D 0 - I - 0x000F1D 00:8F0D: 0F        .byte $0F   ; 
- D 0 - I - 0x000F1E 00:8F0E: 03        .byte $03   ; 
- D 0 - I - 0x000F1F 00:8F0F: 0E        .byte $0E   ; 
- D 0 - I - 0x000F20 00:8F10: 01        .byte $01   ; 
- D 0 - I - 0x000F21 00:8F11: 0D        .byte $0D   ; 
- D 0 - I - 0x000F22 00:8F12: 01        .byte $01   ; 
- D 0 - I - 0x000F23 00:8F13: 0A        .byte $0A   ; 
- D 0 - I - 0x000F24 00:8F14: 01        .byte $01   ; 
- D 0 - I - 0x000F25 00:8F15: 08        .byte $08   ; 
- D 0 - I - 0x000F26 00:8F16: 01        .byte $01   ; 
- D 0 - I - 0x000F27 00:8F17: 07        .byte $07   ; 
- D 0 - I - 0x000F28 00:8F18: 01        .byte $01   ; 
- D 0 - I - 0x000F29 00:8F19: 06        .byte $06   ; 
- D 0 - I - 0x000F2A 00:8F1A: 01        .byte $01   ; 
- D 0 - I - 0x000F2B 00:8F1B: 05        .byte $05   ; 
- - - - - - 0x000F2C 00:8F1C: 01        .byte $01   ; 
- - - - - - 0x000F2D 00:8F1D: 04        .byte $04   ; 
- - - - - - 0x000F2E 00:8F1E: 01        .byte $01   ; 
- - - - - - 0x000F2F 00:8F1F: 03        .byte $03   ; 
- - - - - - 0x000F30 00:8F20: 01        .byte $01   ; 
- - - - - - 0x000F31 00:8F21: 02        .byte $02   ; 
- - - - - - 0x000F32 00:8F22: 01        .byte $01   ; 
- - - - - - 0x000F33 00:8F23: 01        .byte $01   ; 
- - - - - - 0x000F34 00:8F24: FF        .byte $FF   ; 
- - - - - - 0x000F35 00:8F25: 00        .byte $00   ; 



_off001_8F26_42:
- D 0 - I - 0x000F36 00:8F26: 01        .byte $01   ; 
- D 0 - I - 0x000F37 00:8F27: 0C        .byte $0C   ; 
- D 0 - I - 0x000F38 00:8F28: 01        .byte $01   ; 
- D 0 - I - 0x000F39 00:8F29: 0D        .byte $0D   ; 
- D 0 - I - 0x000F3A 00:8F2A: 01        .byte $01   ; 
- D 0 - I - 0x000F3B 00:8F2B: 0E        .byte $0E   ; 
- D 0 - I - 0x000F3C 00:8F2C: 02        .byte $02   ; 
- D 0 - I - 0x000F3D 00:8F2D: 0F        .byte $0F   ; 
- D 0 - I - 0x000F3E 00:8F2E: 02        .byte $02   ; 
- D 0 - I - 0x000F3F 00:8F2F: 0E        .byte $0E   ; 
- D 0 - I - 0x000F40 00:8F30: 02        .byte $02   ; 
- D 0 - I - 0x000F41 00:8F31: 0F        .byte $0F   ; 
- D 0 - I - 0x000F42 00:8F32: 01        .byte $01   ; 
- D 0 - I - 0x000F43 00:8F33: 0E        .byte $0E   ; 
- D 0 - I - 0x000F44 00:8F34: 01        .byte $01   ; 
- D 0 - I - 0x000F45 00:8F35: 0C        .byte $0C   ; 
- D 0 - I - 0x000F46 00:8F36: 01        .byte $01   ; 
- D 0 - I - 0x000F47 00:8F37: 0A        .byte $0A   ; 
- - - - - - 0x000F48 00:8F38: 01        .byte $01   ; 
- - - - - - 0x000F49 00:8F39: 08        .byte $08   ; 
- - - - - - 0x000F4A 00:8F3A: FF        .byte $FF   ; 
- - - - - - 0x000F4B 00:8F3B: 00        .byte $00   ; 



_off001_8F3C_43:
- D 0 - I - 0x000F4C 00:8F3C: 01        .byte $01   ; 
- D 0 - I - 0x000F4D 00:8F3D: 0F        .byte $0F   ; 
- D 0 - I - 0x000F4E 00:8F3E: 01        .byte $01   ; 
- D 0 - I - 0x000F4F 00:8F3F: 0A        .byte $0A   ; 
- D 0 - I - 0x000F50 00:8F40: 01        .byte $01   ; 
- D 0 - I - 0x000F51 00:8F41: 0C        .byte $0C   ; 
- D 0 - I - 0x000F52 00:8F42: 01        .byte $01   ; 
- D 0 - I - 0x000F53 00:8F43: 0D        .byte $0D   ; 
- D 0 - I - 0x000F54 00:8F44: 02        .byte $02   ; 
- D 0 - I - 0x000F55 00:8F45: 0F        .byte $0F   ; 
- D 0 - I - 0x000F56 00:8F46: 02        .byte $02   ; 
- D 0 - I - 0x000F57 00:8F47: 0D        .byte $0D   ; 
- D 0 - I - 0x000F58 00:8F48: 02        .byte $02   ; 
- D 0 - I - 0x000F59 00:8F49: 0F        .byte $0F   ; 
- D 0 - I - 0x000F5A 00:8F4A: 02        .byte $02   ; 
- D 0 - I - 0x000F5B 00:8F4B: 0D        .byte $0D   ; 
- D 0 - I - 0x000F5C 00:8F4C: 02        .byte $02   ; 
- D 0 - I - 0x000F5D 00:8F4D: 0F        .byte $0F   ; 
- D 0 - I - 0x000F5E 00:8F4E: 02        .byte $02   ; 
- D 0 - I - 0x000F5F 00:8F4F: 0B        .byte $0B   ; 
- D 0 - I - 0x000F60 00:8F50: 02        .byte $02   ; 
- D 0 - I - 0x000F61 00:8F51: 0C        .byte $0C   ; 
- D 0 - I - 0x000F62 00:8F52: 02        .byte $02   ; 
- D 0 - I - 0x000F63 00:8F53: 0A        .byte $0A   ; 
- D 0 - I - 0x000F64 00:8F54: 02        .byte $02   ; 
- D 0 - I - 0x000F65 00:8F55: 0C        .byte $0C   ; 
- D 0 - I - 0x000F66 00:8F56: 02        .byte $02   ; 
- D 0 - I - 0x000F67 00:8F57: 0A        .byte $0A   ; 
- D 0 - I - 0x000F68 00:8F58: 02        .byte $02   ; 
- D 0 - I - 0x000F69 00:8F59: 09        .byte $09   ; 
- D 0 - I - 0x000F6A 00:8F5A: 02        .byte $02   ; 
- D 0 - I - 0x000F6B 00:8F5B: 07        .byte $07   ; 
- D 0 - I - 0x000F6C 00:8F5C: 02        .byte $02   ; 
- D 0 - I - 0x000F6D 00:8F5D: 09        .byte $09   ; 
- - - - - - 0x000F6E 00:8F5E: 02        .byte $02   ; 
- - - - - - 0x000F6F 00:8F5F: 07        .byte $07   ; 
- - - - - - 0x000F70 00:8F60: 02        .byte $02   ; 
- - - - - - 0x000F71 00:8F61: 08        .byte $08   ; 
- - - - - - 0x000F72 00:8F62: 02        .byte $02   ; 
- - - - - - 0x000F73 00:8F63: 07        .byte $07   ; 
- - - - - - 0x000F74 00:8F64: FF        .byte $FF   ; 
- - - - - - 0x000F75 00:8F65: 00        .byte $00   ; 



_off001_8F66_44:
- D 0 - I - 0x000F76 00:8F66: 01        .byte $01   ; 
- D 0 - I - 0x000F77 00:8F67: 0F        .byte $0F   ; 
- D 0 - I - 0x000F78 00:8F68: 06        .byte $06   ; 
- D 0 - I - 0x000F79 00:8F69: 0E        .byte $0E   ; 
- D 0 - I - 0x000F7A 00:8F6A: 02        .byte $02   ; 
- D 0 - I - 0x000F7B 00:8F6B: 0D        .byte $0D   ; 
- D 0 - I - 0x000F7C 00:8F6C: 02        .byte $02   ; 
- D 0 - I - 0x000F7D 00:8F6D: 0C        .byte $0C   ; 
- D 0 - I - 0x000F7E 00:8F6E: 02        .byte $02   ; 
- D 0 - I - 0x000F7F 00:8F6F: 0A        .byte $0A   ; 
- D 0 - I - 0x000F80 00:8F70: 02        .byte $02   ; 
- D 0 - I - 0x000F81 00:8F71: 09        .byte $09   ; 
- D 0 - I - 0x000F82 00:8F72: 02        .byte $02   ; 
- D 0 - I - 0x000F83 00:8F73: 08        .byte $08   ; 
- - - - - - 0x000F84 00:8F74: 02        .byte $02   ; 
- - - - - - 0x000F85 00:8F75: 07        .byte $07   ; 
- - - - - - 0x000F86 00:8F76: 02        .byte $02   ; 
- - - - - - 0x000F87 00:8F77: 06        .byte $06   ; 
- - - - - - 0x000F88 00:8F78: 02        .byte $02   ; 
- - - - - - 0x000F89 00:8F79: 04        .byte $04   ; 
- - - - - - 0x000F8A 00:8F7A: 02        .byte $02   ; 
- - - - - - 0x000F8B 00:8F7B: 03        .byte $03   ; 
- - - - - - 0x000F8C 00:8F7C: 02        .byte $02   ; 
- - - - - - 0x000F8D 00:8F7D: 01        .byte $01   ; 
- - - - - - 0x000F8E 00:8F7E: FF        .byte $FF   ; 
- - - - - - 0x000F8F 00:8F7F: 00        .byte $00   ; 



tbl_8F80_music_and_sfx:
- D 0 - - - 0x000F90 00:8F80: B8 8F     .word _sfx_8FB8_01_off
- D 0 - - - 0x000F92 00:8F82: 4A AD     .word _sfx_AD4A_02_dead
- D 0 - - - 0x000F94 00:8F84: 6D AD     .word _sfx_AD6D_03_shot
- D 0 - - - 0x000F96 00:8F86: 7B AE     .word _sfx_AE7B_04_fast_shot
- D 0 - - - 0x000F98 00:8F88: 98 AD     .word _sfx_AD98_05_receive
- D 0 - - - 0x000F9A 00:8F8A: AC AD     .word _sfx_ADAC_06_throw
- D 0 - - - 0x000F9C 00:8F8C: DB AD     .word _sfx_ADDB_07_catch
- D 0 - - - 0x000F9E 00:8F8E: C0 AD     .word _sfx_ADC0_08_tackle
- - - - - - 0x000FA0 00:8F90: A0 AE     .word _sfx_AEA0_09  ; unused, index doesn't exist
- D 0 - - - 0x000FA2 00:8F92: CA AE     .word _sfx_AECA_0A_time_low
- D 0 - - - 0x000FA4 00:8F94: F2 AE     .word _sfx_AEF2_0B_time_up
- D 0 - - - 0x000FA6 00:8F96: 23 AF     .word _sfx_AF23_0C_whistle_referee
- D 0 - - - 0x000FA8 00:8F98: 46 AE     .word _sfx_AE46_0D_hit_goalspot
- D 0 - - - 0x000FAA 00:8F9A: 00 AE     .word _sfx_AE00_0E_fans
- D 0 - - - 0x000FAC 00:8F9C: 14 AD     .word _sfx_AD14_0F_mode_select

- D 0 - - - 0x000FAE 00:8F9E: 13 B0     .word _music_B013_10_field
- D 0 - - - 0x000FB0 00:8FA0: 49 A8     .word _music_A849_11_logo
- D 0 - - - 0x000FB2 00:8FA2: 20 A7     .word _music_A720_12_goal
- D 0 - - - 0x000FB4 00:8FA4: 45 A6     .word _music_A645_13_half_time
- D 0 - - - 0x000FB6 00:8FA6: 43 AF     .word _music_AF43_14_game_number
- D 0 - - - 0x000FB8 00:8FA8: D4 98     .word _music_98D4_15_credits
- D 0 - - - 0x000FBA 00:8FAA: 49 A1     .word _music_A149_16_team_select
- D 0 - - - 0x000FBC 00:8FAC: 7B 93     .word _music_937B_17_penalty

- D 0 - - - 0x000FBE 00:8FAE: 5A 93     .word _sfx_935A_18_select
- - - - - - 0x000FC0 00:8FB0: 4A 93     .word _sfx_934A_19  ; unused, index doesn't exist
- D 0 - - - 0x000FC2 00:8FB2: F9 8F     .word _sfx_8FF9_1A_whistle_fans
- D 0 - - - 0x000FC4 00:8FB4: 24 93     .word _sfx_9324_1B_wrong_psw

- D 0 - - - 0x000FC6 00:8FB6: D1 8F     .word _sfx_8FD1_1C_syndrom



_sfx_8FB8_01_off:
- D 0 - I - 0x000FC8 00:8FB8: 00        .byte $00   ; 
- D 0 - I - 0x000FC9 00:8FB9: D0 8F     .word off_ch_01_8FD0_00
- D 0 - I - 0x000FCB 00:8FBB: 01        .byte $01   ; 
- D 0 - I - 0x000FCC 00:8FBC: D0 8F     .word off_ch_01_8FD0_01
- D 0 - I - 0x000FCE 00:8FBE: 02        .byte $02   ; 
- D 0 - I - 0x000FCF 00:8FBF: D0 8F     .word off_ch_01_8FD0_02
- D 0 - I - 0x000FD1 00:8FC1: 03        .byte $03   ; 
- D 0 - I - 0x000FD2 00:8FC2: D0 8F     .word off_ch_01_8FD0_03
- D 0 - I - 0x000FD4 00:8FC4: 04        .byte $04   ; 
- D 0 - I - 0x000FD5 00:8FC5: D0 8F     .word off_ch_01_8FD0_04
- D 0 - I - 0x000FD7 00:8FC7: 05        .byte $05   ; 
- D 0 - I - 0x000FD8 00:8FC8: D0 8F     .word off_ch_01_8FD0_05
- D 0 - I - 0x000FDA 00:8FCA: 06        .byte $06   ; 
- D 0 - I - 0x000FDB 00:8FCB: D0 8F     .word off_ch_01_8FD0_06
- D 0 - I - 0x000FDD 00:8FCD: 07        .byte $07   ; 
- D 0 - I - 0x000FDE 00:8FCE: D0 8F     .word off_ch_01_8FD0_07



off_ch_01_8FD0_00:
off_ch_01_8FD0_01:
off_ch_01_8FD0_02:
off_ch_01_8FD0_03:
off_ch_01_8FD0_04:
off_ch_01_8FD0_05:
off_ch_01_8FD0_06:
off_ch_01_8FD0_07:
- D 0 - I - 0x000FE0 00:8FD0: FF        .byte con_se_cb_stop   ; 



_sfx_8FD1_1C_syndrom:
- D 0 - I - 0x000FE1 00:8FD1: 00        .byte $00   ; 
- D 0 - I - 0x000FE2 00:8FD2: D8 8F     .word off_ch_1C_8FD8_00
- D 0 - I - 0x000FE4 00:8FD4: 03        .byte $03   ; 
- D 0 - I - 0x000FE5 00:8FD5: EB 8F     .word off_ch_1C_8FEB_03
- D 0 - I - 0x000FE7 00:8FD7: FF        .byte $FF   ; 



off_ch_1C_8FD8_00:
- D 0 - I - 0x000FE8 00:8FD8: E0        .byte con_se_cb_E0, $00   ; 
- D 0 - I - 0x000FEA 00:8FDA: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x000FEC 00:8FDC: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x000FEE 00:8FDE: 80        .byte $80   ; 
- D 0 - I - 0x000FEF 00:8FDF: 11        .byte $11   ; 
- D 0 - I - 0x000FF0 00:8FE0: 12        .byte $12   ; 
- D 0 - I - 0x000FF1 00:8FE1: E3        .byte con_se_cb_E3, $02   ; 
- D 0 - I - 0x000FF3 00:8FE3: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x000FF4 00:8FE4: 13        .byte $13   ; 
- D 0 - I - 0x000FF5 00:8FE5: 12        .byte $12   ; 
- D 0 - I - 0x000FF6 00:8FE6: 10        .byte $10   ; 
- D 0 - I - 0x000FF7 00:8FE7: 0B        .byte $0B   ; 
- D 0 - I - 0x000FF8 00:8FE8: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x000FF9 00:8FE9: 06        .byte $06   ; 
- D 0 - I - 0x000FFA 00:8FEA: FF        .byte con_se_cb_stop   ; 



off_ch_1C_8FEB_03:
- D 0 - I - 0x000FFB 00:8FEB: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x000FFC 00:8FEC: E0        .byte con_se_cb_E0, $00   ; 
- D 0 - I - 0x000FFE 00:8FEE: E3        .byte con_se_cb_E3, $06   ; 
- D 0 - I - 0x001000 00:8FF0: 80        .byte $80   ; 
- D 0 - I - 0x001001 00:8FF1: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001002 00:8FF2: 0A        .byte $0A   ; 
- D 0 - I - 0x001003 00:8FF3: 0F        .byte $0F   ; 
- D 0 - I - 0x001004 00:8FF4: 81        .byte $81   ; 
- D 0 - I - 0x001005 00:8FF5: 0E        .byte $0E   ; 
- D 0 - I - 0x001006 00:8FF6: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001007 00:8FF7: 07        .byte $07   ; 
- D 0 - I - 0x001008 00:8FF8: FF        .byte con_se_cb_stop   ; 



_sfx_8FF9_1A_whistle_fans:
- D 0 - I - 0x001009 00:8FF9: 04        .byte $04   ; 
- D 0 - I - 0x00100A 00:8FFA: 06 90     .word off_ch_1A_9006_04
- D 0 - I - 0x00100C 00:8FFC: 05        .byte $05   ; 
- D 0 - I - 0x00100D 00:8FFD: 3D 91     .word off_ch_1A_913D_05
- D 0 - I - 0x00100F 00:8FFF: 06        .byte $06   ; 
- D 0 - I - 0x001010 00:9000: 75 92     .word off_ch_1A_9275_06
- D 0 - I - 0x001012 00:9002: 07        .byte $07   ; 
- D 0 - I - 0x001013 00:9003: DA 92     .word off_ch_1A_92DA_07
- D 0 - I - 0x001015 00:9005: FF        .byte $FF   ; 



off_ch_1A_9006_04:
- D 0 - I - 0x001016 00:9006: 98        .byte $98   ; 
- D 0 - I - 0x001017 00:9007: 0C        .byte $0C   ; 
off_E8_9008:
- D 0 - I - 0x001018 00:9008: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x00101A 00:900A: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x00101C 00:900C: E3        .byte con_se_cb_E3, $06   ; 
- D 0 - I - 0x00101E 00:900E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x00101F 00:900F: 83        .byte $83   ; 
- D 0 - I - 0x001020 00:9010: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001022 00:9012: 34        .byte $34   ; 
- D 0 - I - 0x001023 00:9013: 85        .byte $85   ; 
- D 0 - I - 0x001024 00:9014: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x001026 00:9016: 34        .byte $34   ; 
- D 0 - I - 0x001027 00:9017: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001029 00:9019: 34        .byte $34   ; 
- D 0 - I - 0x00102A 00:901A: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x00102C 00:901C: 34        .byte $34   ; 
- D 0 - I - 0x00102D 00:901D: 85        .byte $85   ; 
- D 0 - I - 0x00102E 00:901E: 83        .byte $83   ; 
- D 0 - I - 0x00102F 00:901F: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001030 00:9020: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x001032 00:9022: 34        .byte $34   ; 
- D 0 - I - 0x001033 00:9023: 85        .byte $85   ; 
- D 0 - I - 0x001034 00:9024: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001036 00:9026: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001038 00:9028: 34        .byte $34   ; 
- D 0 - I - 0x001039 00:9029: 32        .byte $32   ; 
- D 0 - I - 0x00103A 00:902A: 31        .byte $31   ; 
- D 0 - I - 0x00103B 00:902B: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x00103D 00:902D: 83        .byte $83   ; 
- D 0 - I - 0x00103E 00:902E: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001040 00:9030: 2B        .byte $2B   ; 
- D 0 - I - 0x001041 00:9031: 85        .byte $85   ; 
- D 0 - I - 0x001042 00:9032: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x001044 00:9034: 2B        .byte $2B   ; 
- D 0 - I - 0x001045 00:9035: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001047 00:9037: 2B        .byte $2B   ; 
- D 0 - I - 0x001048 00:9038: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x00104A 00:903A: 2B        .byte $2B   ; 
- D 0 - I - 0x00104B 00:903B: 85        .byte $85   ; 
- D 0 - I - 0x00104C 00:903C: 83        .byte $83   ; 
- D 0 - I - 0x00104D 00:903D: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00104E 00:903E: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x001050 00:9040: 2B        .byte $2B   ; 
- D 0 - I - 0x001051 00:9041: 85        .byte $85   ; 
- D 0 - I - 0x001052 00:9042: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001054 00:9044: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001056 00:9046: 2B        .byte $2B   ; 
- D 0 - I - 0x001057 00:9047: 31        .byte $31   ; 
- D 0 - I - 0x001058 00:9048: 32        .byte $32   ; 
- D 0 - I - 0x001059 00:9049: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x00105B 00:904B: 83        .byte $83   ; 
- D 0 - I - 0x00105C 00:904C: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x00105E 00:904E: 29        .byte $29   ; 
- D 0 - I - 0x00105F 00:904F: 85        .byte $85   ; 
- D 0 - I - 0x001060 00:9050: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x001062 00:9052: 29        .byte $29   ; 
- D 0 - I - 0x001063 00:9053: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001065 00:9055: 29        .byte $29   ; 
- D 0 - I - 0x001066 00:9056: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x001068 00:9058: 29        .byte $29   ; 
- D 0 - I - 0x001069 00:9059: 85        .byte $85   ; 
- D 0 - I - 0x00106A 00:905A: 83        .byte $83   ; 
- D 0 - I - 0x00106B 00:905B: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00106C 00:905C: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x00106E 00:905E: 29        .byte $29   ; 
- D 0 - I - 0x00106F 00:905F: 85        .byte $85   ; 
- D 0 - I - 0x001070 00:9060: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001072 00:9062: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001074 00:9064: 29        .byte $29   ; 
- D 0 - I - 0x001075 00:9065: 2B        .byte $2B   ; 
- D 0 - I - 0x001076 00:9066: 31        .byte $31   ; 
- D 0 - I - 0x001077 00:9067: E0        .byte con_se_cb_E0, $43   ; 
- D 0 - I - 0x001079 00:9069: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x00107B 00:906B: 83        .byte $83   ; 
- D 0 - I - 0x00107C 00:906C: E3        .byte con_se_cb_E3, $03   ; 
- D 0 - I - 0x00107E 00:906E: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x00107F 00:906F: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001081 00:9071: 35        .byte $35   ; 
- D 0 - I - 0x001082 00:9072: 85        .byte $85   ; 
- D 0 - I - 0x001083 00:9073: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001085 00:9075: 35        .byte $35   ; 
- D 0 - I - 0x001086 00:9076: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001087 00:9077: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x001089 00:9079: 35        .byte $35   ; 
- D 0 - I - 0x00108A 00:907A: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00108C 00:907C: 83        .byte $83   ; 
- D 0 - I - 0x00108D 00:907D: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x00108E 00:907E: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001090 00:9080: 35        .byte $35   ; 
- D 0 - I - 0x001091 00:9081: 85        .byte $85   ; 
- D 0 - I - 0x001092 00:9082: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001093 00:9083: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001095 00:9085: 35        .byte $35   ; 
- D 0 - I - 0x001096 00:9086: 83        .byte $83   ; 
- D 0 - I - 0x001097 00:9087: E3        .byte con_se_cb_E3, $03   ; 
- D 0 - I - 0x001099 00:9089: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x00109A 00:908A: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x00109C 00:908C: 37        .byte $37   ; 
- D 0 - I - 0x00109D 00:908D: 85        .byte $85   ; 
- D 0 - I - 0x00109E 00:908E: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010A0 00:9090: 37        .byte $37   ; 
- D 0 - I - 0x0010A1 00:9091: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x0010A2 00:9092: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x0010A4 00:9094: 37        .byte $37   ; 
- D 0 - I - 0x0010A5 00:9095: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0010A7 00:9097: 83        .byte $83   ; 
- D 0 - I - 0x0010A8 00:9098: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0010A9 00:9099: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x0010AB 00:909B: 37        .byte $37   ; 
- D 0 - I - 0x0010AC 00:909C: 85        .byte $85   ; 
- D 0 - I - 0x0010AD 00:909D: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x0010AE 00:909E: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010B0 00:90A0: 37        .byte $37   ; 
- D 0 - I - 0x0010B1 00:90A1: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x0010B3 00:90A3: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0010B5 00:90A5: E3        .byte con_se_cb_E3, $06   ; 
- D 0 - I - 0x0010B7 00:90A7: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0010B8 00:90A8: 83        .byte $83   ; 
- D 0 - I - 0x0010B9 00:90A9: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x0010BB 00:90AB: 34        .byte $34   ; 
- D 0 - I - 0x0010BC 00:90AC: 85        .byte $85   ; 
- D 0 - I - 0x0010BD 00:90AD: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x0010BF 00:90AF: 34        .byte $34   ; 
- D 0 - I - 0x0010C0 00:90B0: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010C2 00:90B2: 34        .byte $34   ; 
- D 0 - I - 0x0010C3 00:90B3: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x0010C5 00:90B5: 34        .byte $34   ; 
- D 0 - I - 0x0010C6 00:90B6: 85        .byte $85   ; 
- D 0 - I - 0x0010C7 00:90B7: 83        .byte $83   ; 
- D 0 - I - 0x0010C8 00:90B8: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x0010C9 00:90B9: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x0010CB 00:90BB: 34        .byte $34   ; 
- D 0 - I - 0x0010CC 00:90BC: 85        .byte $85   ; 
- D 0 - I - 0x0010CD 00:90BD: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x0010CF 00:90BF: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010D1 00:90C1: 34        .byte $34   ; 
- D 0 - I - 0x0010D2 00:90C2: 32        .byte $32   ; 
- D 0 - I - 0x0010D3 00:90C3: 31        .byte $31   ; 
- D 0 - I - 0x0010D4 00:90C4: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x0010D6 00:90C6: 83        .byte $83   ; 
- D 0 - I - 0x0010D7 00:90C7: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x0010D9 00:90C9: 37        .byte $37   ; 
- D 0 - I - 0x0010DA 00:90CA: 85        .byte $85   ; 
- D 0 - I - 0x0010DB 00:90CB: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x0010DD 00:90CD: 37        .byte $37   ; 
- D 0 - I - 0x0010DE 00:90CE: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010E0 00:90D0: 37        .byte $37   ; 
- D 0 - I - 0x0010E1 00:90D1: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x0010E3 00:90D3: 37        .byte $37   ; 
- D 0 - I - 0x0010E4 00:90D4: 85        .byte $85   ; 
- D 0 - I - 0x0010E5 00:90D5: 83        .byte $83   ; 
- D 0 - I - 0x0010E6 00:90D6: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x0010E7 00:90D7: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x0010E9 00:90D9: 37        .byte $37   ; 
- D 0 - I - 0x0010EA 00:90DA: 85        .byte $85   ; 
- D 0 - I - 0x0010EB 00:90DB: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x0010ED 00:90DD: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010EF 00:90DF: 37        .byte $37   ; 
- D 0 - I - 0x0010F0 00:90E0: 36        .byte $36   ; 
- D 0 - I - 0x0010F1 00:90E1: 34        .byte $34   ; 
- D 0 - I - 0x0010F2 00:90E2: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x0010F4 00:90E4: 83        .byte $83   ; 
- D 0 - I - 0x0010F5 00:90E5: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x0010F7 00:90E7: 32        .byte $32   ; 
- D 0 - I - 0x0010F8 00:90E8: 85        .byte $85   ; 
- D 0 - I - 0x0010F9 00:90E9: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x0010FB 00:90EB: 32        .byte $32   ; 
- D 0 - I - 0x0010FC 00:90EC: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0010FE 00:90EE: 32        .byte $32   ; 
- D 0 - I - 0x0010FF 00:90EF: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x001101 00:90F1: 32        .byte $32   ; 
- D 0 - I - 0x001102 00:90F2: 85        .byte $85   ; 
- D 0 - I - 0x001103 00:90F3: 83        .byte $83   ; 
- D 0 - I - 0x001104 00:90F4: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001105 00:90F5: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x001107 00:90F7: 32        .byte $32   ; 
- D 0 - I - 0x001108 00:90F8: 85        .byte $85   ; 
- D 0 - I - 0x001109 00:90F9: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x00110B 00:90FB: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00110D 00:90FD: 32        .byte $32   ; 
- D 0 - I - 0x00110E 00:90FE: 34        .byte $34   ; 
- D 0 - I - 0x00110F 00:90FF: 36        .byte $36   ; 
- D 0 - I - 0x001110 00:9100: E0        .byte con_se_cb_E0, $43   ; 
- D 0 - I - 0x001112 00:9102: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x001114 00:9104: 83        .byte $83   ; 
- D 0 - I - 0x001115 00:9105: E3        .byte con_se_cb_E3, $03   ; 
- D 0 - I - 0x001117 00:9107: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001118 00:9108: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x00111A 00:910A: 35        .byte $35   ; 
- D 0 - I - 0x00111B 00:910B: 85        .byte $85   ; 
- D 0 - I - 0x00111C 00:910C: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00111E 00:910E: 35        .byte $35   ; 
- D 0 - I - 0x00111F 00:910F: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001120 00:9110: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x001122 00:9112: 35        .byte $35   ; 
- D 0 - I - 0x001123 00:9113: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001125 00:9115: 83        .byte $83   ; 
- D 0 - I - 0x001126 00:9116: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001127 00:9117: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001129 00:9119: 35        .byte $35   ; 
- D 0 - I - 0x00112A 00:911A: 85        .byte $85   ; 
- D 0 - I - 0x00112B 00:911B: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00112C 00:911C: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00112E 00:911E: 35        .byte $35   ; 
- D 0 - I - 0x00112F 00:911F: 83        .byte $83   ; 
- D 0 - I - 0x001130 00:9120: E3        .byte con_se_cb_E3, $03   ; 
- D 0 - I - 0x001132 00:9122: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001133 00:9123: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001135 00:9125: 37        .byte $37   ; 
- D 0 - I - 0x001136 00:9126: 85        .byte $85   ; 
- D 0 - I - 0x001137 00:9127: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001139 00:9129: 37        .byte $37   ; 
- D 0 - I - 0x00113A 00:912A: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00113B 00:912B: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x00113D 00:912D: 37        .byte $37   ; 
- D 0 - I - 0x00113E 00:912E: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001140 00:9130: 83        .byte $83   ; 
- D 0 - I - 0x001141 00:9131: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001142 00:9132: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001144 00:9134: 37        .byte $37   ; 
- D 0 - I - 0x001145 00:9135: 85        .byte $85   ; 
- D 0 - I - 0x001146 00:9136: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001147 00:9137: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001149 00:9139: 37        .byte $37   ; 
- D 0 - I - 0x00114A 00:913A: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x00114B 00:913B: 08 90     .word off_E8_9008



off_ch_1A_913D_05:
- D 0 - I - 0x00114D 00:913D: 98        .byte $98   ; 
- D 0 - I - 0x00114E 00:913E: 83        .byte $83   ; 
- D 0 - I - 0x00114F 00:913F: 0C        .byte $0C   ; 
off_E8_9140:
- D 0 - I - 0x001150 00:9140: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x001152 00:9142: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x001154 00:9144: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001156 00:9146: E3        .byte con_se_cb_E3, $09   ; 
- D 0 - I - 0x001158 00:9148: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001159 00:9149: 83        .byte $83   ; 
- D 0 - I - 0x00115A 00:914A: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x00115C 00:914C: 34        .byte $34   ; 
- D 0 - I - 0x00115D 00:914D: 85        .byte $85   ; 
- D 0 - I - 0x00115E 00:914E: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x001160 00:9150: 34        .byte $34   ; 
- D 0 - I - 0x001161 00:9151: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001163 00:9153: 34        .byte $34   ; 
- D 0 - I - 0x001164 00:9154: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x001166 00:9156: 34        .byte $34   ; 
- D 0 - I - 0x001167 00:9157: 85        .byte $85   ; 
- D 0 - I - 0x001168 00:9158: 83        .byte $83   ; 
- D 0 - I - 0x001169 00:9159: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00116A 00:915A: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x00116C 00:915C: 34        .byte $34   ; 
- D 0 - I - 0x00116D 00:915D: 85        .byte $85   ; 
- D 0 - I - 0x00116E 00:915E: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001170 00:9160: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001172 00:9162: 34        .byte $34   ; 
- D 0 - I - 0x001173 00:9163: 32        .byte $32   ; 
- D 0 - I - 0x001174 00:9164: 31        .byte $31   ; 
- D 0 - I - 0x001175 00:9165: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x001177 00:9167: 83        .byte $83   ; 
- D 0 - I - 0x001178 00:9168: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x00117A 00:916A: 2B        .byte $2B   ; 
- D 0 - I - 0x00117B 00:916B: 85        .byte $85   ; 
- D 0 - I - 0x00117C 00:916C: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x00117E 00:916E: 2B        .byte $2B   ; 
- D 0 - I - 0x00117F 00:916F: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001181 00:9171: 2B        .byte $2B   ; 
- D 0 - I - 0x001182 00:9172: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x001184 00:9174: 2B        .byte $2B   ; 
- D 0 - I - 0x001185 00:9175: 85        .byte $85   ; 
- D 0 - I - 0x001186 00:9176: 83        .byte $83   ; 
- D 0 - I - 0x001187 00:9177: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001188 00:9178: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x00118A 00:917A: 2B        .byte $2B   ; 
- D 0 - I - 0x00118B 00:917B: 85        .byte $85   ; 
- D 0 - I - 0x00118C 00:917C: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x00118E 00:917E: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001190 00:9180: 2B        .byte $2B   ; 
- D 0 - I - 0x001191 00:9181: 31        .byte $31   ; 
- D 0 - I - 0x001192 00:9182: 32        .byte $32   ; 
- D 0 - I - 0x001193 00:9183: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x001195 00:9185: 83        .byte $83   ; 
- D 0 - I - 0x001196 00:9186: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001198 00:9188: 29        .byte $29   ; 
- D 0 - I - 0x001199 00:9189: 85        .byte $85   ; 
- D 0 - I - 0x00119A 00:918A: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x00119C 00:918C: 29        .byte $29   ; 
- D 0 - I - 0x00119D 00:918D: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00119F 00:918F: 29        .byte $29   ; 
- D 0 - I - 0x0011A0 00:9190: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x0011A2 00:9192: 29        .byte $29   ; 
- D 0 - I - 0x0011A3 00:9193: 85        .byte $85   ; 
- D 0 - I - 0x0011A4 00:9194: 83        .byte $83   ; 
- D 0 - I - 0x0011A5 00:9195: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x0011A6 00:9196: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x0011A8 00:9198: 29        .byte $29   ; 
- D 0 - I - 0x0011A9 00:9199: 85        .byte $85   ; 
- D 0 - I - 0x0011AA 00:919A: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x0011AC 00:919C: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0011AE 00:919E: 29        .byte $29   ; 
- D 0 - I - 0x0011AF 00:919F: 2B        .byte $2B   ; 
- D 0 - I - 0x0011B0 00:91A0: 83        .byte $83   ; 
- D 0 - I - 0x0011B1 00:91A1: 31        .byte $31   ; 
- D 0 - I - 0x0011B2 00:91A2: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x0011B4 00:91A4: E0        .byte con_se_cb_E0, $43   ; 
- D 0 - I - 0x0011B6 00:91A6: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x0011B8 00:91A8: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x0011BA 00:91AA: 86        .byte $86   ; 
- D 0 - I - 0x0011BB 00:91AB: 30        .byte $30   ; 
- D 0 - I - 0x0011BC 00:91AC: 84        .byte $84   ; 
- D 0 - I - 0x0011BD 00:91AD: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011BF 00:91AF: 30        .byte $30   ; 
- D 0 - I - 0x0011C0 00:91B0: 84        .byte $84   ; 
- D 0 - I - 0x0011C1 00:91B1: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x0011C3 00:91B3: 29        .byte $29   ; 
- D 0 - I - 0x0011C4 00:91B4: 82        .byte $82   ; 
- D 0 - I - 0x0011C5 00:91B5: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011C7 00:91B7: 29        .byte $29   ; 
- D 0 - I - 0x0011C8 00:91B8: 84        .byte $84   ; 
- D 0 - I - 0x0011C9 00:91B9: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x0011CB 00:91BB: 30        .byte $30   ; 
- D 0 - I - 0x0011CC 00:91BC: 82        .byte $82   ; 
- D 0 - I - 0x0011CD 00:91BD: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011CF 00:91BF: 30        .byte $30   ; 
- D 0 - I - 0x0011D0 00:91C0: 86        .byte $86   ; 
- D 0 - I - 0x0011D1 00:91C1: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x0011D3 00:91C3: 32        .byte $32   ; 
- D 0 - I - 0x0011D4 00:91C4: 84        .byte $84   ; 
- D 0 - I - 0x0011D5 00:91C5: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011D7 00:91C7: 32        .byte $32   ; 
- D 0 - I - 0x0011D8 00:91C8: 84        .byte $84   ; 
- D 0 - I - 0x0011D9 00:91C9: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x0011DB 00:91CB: 2B        .byte $2B   ; 
- D 0 - I - 0x0011DC 00:91CC: 82        .byte $82   ; 
- D 0 - I - 0x0011DD 00:91CD: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011DF 00:91CF: 2B        .byte $2B   ; 
- D 0 - I - 0x0011E0 00:91D0: 84        .byte $84   ; 
- D 0 - I - 0x0011E1 00:91D1: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x0011E3 00:91D3: 32        .byte $32   ; 
- D 0 - I - 0x0011E4 00:91D4: 82        .byte $82   ; 
- D 0 - I - 0x0011E5 00:91D5: 83        .byte $83   ; 
- D 0 - I - 0x0011E6 00:91D6: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011E8 00:91D8: 32        .byte $32   ; 
- D 0 - I - 0x0011E9 00:91D9: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x0011EB 00:91DB: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x0011ED 00:91DD: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0011EF 00:91DF: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0011F1 00:91E1: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x0011F2 00:91E2: 83        .byte $83   ; 
- D 0 - I - 0x0011F3 00:91E3: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x0011F5 00:91E5: 34        .byte $34   ; 
- D 0 - I - 0x0011F6 00:91E6: 85        .byte $85   ; 
- D 0 - I - 0x0011F7 00:91E7: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x0011F9 00:91E9: 34        .byte $34   ; 
- D 0 - I - 0x0011FA 00:91EA: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x0011FC 00:91EC: 34        .byte $34   ; 
- D 0 - I - 0x0011FD 00:91ED: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x0011FF 00:91EF: 34        .byte $34   ; 
- D 0 - I - 0x001200 00:91F0: 85        .byte $85   ; 
- D 0 - I - 0x001201 00:91F1: 83        .byte $83   ; 
- D 0 - I - 0x001202 00:91F2: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001203 00:91F3: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x001205 00:91F5: 34        .byte $34   ; 
- D 0 - I - 0x001206 00:91F6: 85        .byte $85   ; 
- D 0 - I - 0x001207 00:91F7: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001209 00:91F9: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00120B 00:91FB: 34        .byte $34   ; 
- D 0 - I - 0x00120C 00:91FC: 32        .byte $32   ; 
- D 0 - I - 0x00120D 00:91FD: 31        .byte $31   ; 
- D 0 - I - 0x00120E 00:91FE: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x001210 00:9200: 83        .byte $83   ; 
- D 0 - I - 0x001211 00:9201: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001213 00:9203: 37        .byte $37   ; 
- D 0 - I - 0x001214 00:9204: 85        .byte $85   ; 
- D 0 - I - 0x001215 00:9205: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x001217 00:9207: 37        .byte $37   ; 
- D 0 - I - 0x001218 00:9208: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00121A 00:920A: 37        .byte $37   ; 
- D 0 - I - 0x00121B 00:920B: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x00121D 00:920D: 37        .byte $37   ; 
- D 0 - I - 0x00121E 00:920E: 85        .byte $85   ; 
- D 0 - I - 0x00121F 00:920F: 83        .byte $83   ; 
- D 0 - I - 0x001220 00:9210: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x001221 00:9211: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x001223 00:9213: 37        .byte $37   ; 
- D 0 - I - 0x001224 00:9214: 85        .byte $85   ; 
- D 0 - I - 0x001225 00:9215: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001227 00:9217: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001229 00:9219: 37        .byte $37   ; 
- D 0 - I - 0x00122A 00:921A: 36        .byte $36   ; 
- D 0 - I - 0x00122B 00:921B: 34        .byte $34   ; 
- D 0 - I - 0x00122C 00:921C: E0        .byte con_se_cb_E0, $41   ; 
- D 0 - I - 0x00122E 00:921E: 83        .byte $83   ; 
- D 0 - I - 0x00122F 00:921F: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001231 00:9221: 32        .byte $32   ; 
- D 0 - I - 0x001232 00:9222: 85        .byte $85   ; 
- D 0 - I - 0x001233 00:9223: ED        .byte con_se_cb_ED, $0D   ; 
- D 0 - I - 0x001235 00:9225: 32        .byte $32   ; 
- D 0 - I - 0x001236 00:9226: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001238 00:9228: 32        .byte $32   ; 
- D 0 - I - 0x001239 00:9229: ED        .byte con_se_cb_ED, $0F   ; 
- D 0 - I - 0x00123B 00:922B: 32        .byte $32   ; 
- D 0 - I - 0x00123C 00:922C: 85        .byte $85   ; 
- D 0 - I - 0x00123D 00:922D: 83        .byte $83   ; 
- D 0 - I - 0x00123E 00:922E: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00123F 00:922F: ED        .byte con_se_cb_ED, $10   ; 
- D 0 - I - 0x001241 00:9231: 32        .byte $32   ; 
- D 0 - I - 0x001242 00:9232: 85        .byte $85   ; 
- D 0 - I - 0x001243 00:9233: E0        .byte con_se_cb_E0, $42   ; 
- D 0 - I - 0x001245 00:9235: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001247 00:9237: 32        .byte $32   ; 
- D 0 - I - 0x001248 00:9238: 34        .byte $34   ; 
- D 0 - I - 0x001249 00:9239: 83        .byte $83   ; 
- D 0 - I - 0x00124A 00:923A: 36        .byte $36   ; 
- D 0 - I - 0x00124B 00:923B: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x00124D 00:923D: E0        .byte con_se_cb_E0, $43   ; 
- D 0 - I - 0x00124F 00:923F: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x001251 00:9241: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x001253 00:9243: 86        .byte $86   ; 
- D 0 - I - 0x001254 00:9244: 30        .byte $30   ; 
- D 0 - I - 0x001255 00:9245: 84        .byte $84   ; 
- D 0 - I - 0x001256 00:9246: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001258 00:9248: 30        .byte $30   ; 
- D 0 - I - 0x001259 00:9249: 84        .byte $84   ; 
- D 0 - I - 0x00125A 00:924A: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x00125C 00:924C: 29        .byte $29   ; 
- D 0 - I - 0x00125D 00:924D: 82        .byte $82   ; 
- D 0 - I - 0x00125E 00:924E: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001260 00:9250: 29        .byte $29   ; 
- D 0 - I - 0x001261 00:9251: 84        .byte $84   ; 
- D 0 - I - 0x001262 00:9252: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x001264 00:9254: 30        .byte $30   ; 
- D 0 - I - 0x001265 00:9255: 82        .byte $82   ; 
- D 0 - I - 0x001266 00:9256: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001268 00:9258: 30        .byte $30   ; 
- D 0 - I - 0x001269 00:9259: 86        .byte $86   ; 
- D 0 - I - 0x00126A 00:925A: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x00126C 00:925C: 32        .byte $32   ; 
- D 0 - I - 0x00126D 00:925D: 84        .byte $84   ; 
- D 0 - I - 0x00126E 00:925E: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001270 00:9260: 32        .byte $32   ; 
- D 0 - I - 0x001271 00:9261: 84        .byte $84   ; 
- D 0 - I - 0x001272 00:9262: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x001274 00:9264: 2B        .byte $2B   ; 
- D 0 - I - 0x001275 00:9265: 82        .byte $82   ; 
- D 0 - I - 0x001276 00:9266: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001278 00:9268: 2B        .byte $2B   ; 
- D 0 - I - 0x001279 00:9269: 84        .byte $84   ; 
- D 0 - I - 0x00127A 00:926A: E3        .byte con_se_cb_E3, $04   ; 
- D 0 - I - 0x00127C 00:926C: 32        .byte $32   ; 
- D 0 - I - 0x00127D 00:926D: 82        .byte $82   ; 
- D 0 - I - 0x00127E 00:926E: 83        .byte $83   ; 
- D 0 - I - 0x00127F 00:926F: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001281 00:9271: 32        .byte $32   ; 
- D 0 - I - 0x001282 00:9272: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x001283 00:9273: 40 91     .word off_E8_9140



off_ch_1A_9275_06:
- D 0 - I - 0x001285 00:9275: 98        .byte $98   ; 
- D 0 - I - 0x001286 00:9276: 0C        .byte $0C   ; 
- D 0 - I - 0x001287 00:9277: E3        .byte con_se_cb_E3, $00   ; 
off_E8_9279:
- D 0 - I - 0x001289 00:9279: 87        .byte $87   ; 
- D 0 - I - 0x00128A 00:927A: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x00128C 00:927C: 29        .byte $29   ; 
- D 0 - I - 0x00128D 00:927D: 85        .byte $85   ; 
- D 0 - I - 0x00128E 00:927E: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001290 00:9280: 29        .byte $29   ; 
- D 0 - I - 0x001291 00:9281: 31        .byte $31   ; 
- D 0 - I - 0x001292 00:9282: 34        .byte $34   ; 
- D 0 - I - 0x001293 00:9283: 87        .byte $87   ; 
- D 0 - I - 0x001294 00:9284: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x001296 00:9286: 29        .byte $29   ; 
- D 0 - I - 0x001297 00:9287: 85        .byte $85   ; 
- D 0 - I - 0x001298 00:9288: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x00129A 00:928A: 29        .byte $29   ; 
- D 0 - I - 0x00129B 00:928B: 87        .byte $87   ; 
- D 0 - I - 0x00129C 00:928C: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x00129E 00:928E: 27        .byte $27   ; 
- D 0 - I - 0x00129F 00:928F: 85        .byte $85   ; 
- D 0 - I - 0x0012A0 00:9290: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0012A2 00:9292: 27        .byte $27   ; 
- D 0 - I - 0x0012A3 00:9293: 2B        .byte $2B   ; 
- D 0 - I - 0x0012A4 00:9294: 32        .byte $32   ; 
- D 0 - I - 0x0012A5 00:9295: 87        .byte $87   ; 
- D 0 - I - 0x0012A6 00:9296: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x0012A8 00:9298: 27        .byte $27   ; 
- D 0 - I - 0x0012A9 00:9299: 85        .byte $85   ; 
- D 0 - I - 0x0012AA 00:929A: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0012AC 00:929C: 27        .byte $27   ; 
- D 0 - I - 0x0012AD 00:929D: 87        .byte $87   ; 
- D 0 - I - 0x0012AE 00:929E: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x0012B0 00:92A0: 26        .byte $26   ; 
- D 0 - I - 0x0012B1 00:92A1: 85        .byte $85   ; 
- D 0 - I - 0x0012B2 00:92A2: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0012B4 00:92A4: 26        .byte $26   ; 
- D 0 - I - 0x0012B5 00:92A5: 29        .byte $29   ; 
- D 0 - I - 0x0012B6 00:92A6: 31        .byte $31   ; 
- D 0 - I - 0x0012B7 00:92A7: 87        .byte $87   ; 
- D 0 - I - 0x0012B8 00:92A8: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x0012BA 00:92AA: 26        .byte $26   ; 
- D 0 - I - 0x0012BB 00:92AB: 85        .byte $85   ; 
- D 0 - I - 0x0012BC 00:92AC: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0012BE 00:92AE: 26        .byte $26   ; 
- D 0 - I - 0x0012BF 00:92AF: 87        .byte $87   ; 
- D 0 - I - 0x0012C0 00:92B0: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x0012C2 00:92B2: 25        .byte $25   ; 
- D 0 - I - 0x0012C3 00:92B3: 85        .byte $85   ; 
- D 0 - I - 0x0012C4 00:92B4: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0012C6 00:92B6: 25        .byte $25   ; 
- D 0 - I - 0x0012C7 00:92B7: 80        .byte $80   ; 
- D 0 - I - 0x0012C8 00:92B8: 39        .byte $39   ; 
- D 0 - I - 0x0012C9 00:92B9: 38        .byte $38   ; 
- D 0 - I - 0x0012CA 00:92BA: 37        .byte $37   ; 
- D 0 - I - 0x0012CB 00:92BB: 36        .byte $36   ; 
- D 0 - I - 0x0012CC 00:92BC: 35        .byte $35   ; 
- D 0 - I - 0x0012CD 00:92BD: 34        .byte $34   ; 
- D 0 - I - 0x0012CE 00:92BE: 33        .byte $33   ; 
- D 0 - I - 0x0012CF 00:92BF: 32        .byte $32   ; 
- D 0 - I - 0x0012D0 00:92C0: 31        .byte $31   ; 
- D 0 - I - 0x0012D1 00:92C1: 30        .byte $30   ; 
- D 0 - I - 0x0012D2 00:92C2: 2B        .byte $2B   ; 
- D 0 - I - 0x0012D3 00:92C3: 2A        .byte $2A   ; 
- D 0 - I - 0x0012D4 00:92C4: 85        .byte $85   ; 
- D 0 - I - 0x0012D5 00:92C5: 30        .byte $30   ; 
- D 0 - I - 0x0012D6 00:92C6: 27        .byte $27   ; 
- D 0 - I - 0x0012D7 00:92C7: 80        .byte $80   ; 
- D 0 - I - 0x0012D8 00:92C8: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x0012DA 00:92CA: 39        .byte $39   ; 
- D 0 - I - 0x0012DB 00:92CB: 38        .byte $38   ; 
- D 0 - I - 0x0012DC 00:92CC: 37        .byte $37   ; 
- D 0 - I - 0x0012DD 00:92CD: 36        .byte $36   ; 
- D 0 - I - 0x0012DE 00:92CE: 35        .byte $35   ; 
- D 0 - I - 0x0012DF 00:92CF: 34        .byte $34   ; 
- D 0 - I - 0x0012E0 00:92D0: 33        .byte $33   ; 
- D 0 - I - 0x0012E1 00:92D1: 32        .byte $32   ; 
- D 0 - I - 0x0012E2 00:92D2: 31        .byte $31   ; 
- D 0 - I - 0x0012E3 00:92D3: 30        .byte $30   ; 
- D 0 - I - 0x0012E4 00:92D4: 2B        .byte $2B   ; 
- D 0 - I - 0x0012E5 00:92D5: 2A        .byte $2A   ; 
- D 0 - I - 0x0012E6 00:92D6: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0012E7 00:92D7: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0012E8 00:92D8: 79 92     .word off_E8_9279



off_ch_1A_92DA_07:
- D 0 - I - 0x0012EA 00:92DA: E0        .byte con_se_cb_E0, $1F   ; 
- D 0 - I - 0x0012EC 00:92DC: E3        .byte con_se_cb_E3, $01   ; 
- D 0 - I - 0x0012EE 00:92DE: 85        .byte $85   ; 
- D 0 - I - 0x0012EF 00:92DF: 0A        .byte $0A   ; 
- D 0 - I - 0x0012F0 00:92E0: 0A        .byte $0A   ; 
- D 0 - I - 0x0012F1 00:92E1: 0A        .byte $0A   ; 
off_E8_92E2:
- D 0 - I - 0x0012F2 00:92E2: EB        .byte con_se_cb_EB, $03   ; 
- D 0 - I - 0x0012F4 00:92E4: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x0012F6 00:92E6: E0        .byte con_se_cb_E0, $01   ; 
- D 0 - I - 0x0012F8 00:92E8: 87        .byte $87   ; 
- D 0 - I - 0x0012F9 00:92E9: 02        .byte $02   ; 
- D 0 - I - 0x0012FA 00:92EA: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x0012FC 00:92EC: E0        .byte con_se_cb_E0, $00   ; 
- D 0 - I - 0x0012FE 00:92EE: 85        .byte $85   ; 
- D 0 - I - 0x0012FF 00:92EF: 06        .byte $06   ; 
- D 0 - I - 0x001300 00:92F0: E3        .byte con_se_cb_E3, $01   ; 
- D 0 - I - 0x001302 00:92F2: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x001304 00:92F4: 0B        .byte $0B   ; 
- D 0 - I - 0x001305 00:92F5: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x001307 00:92F7: E0        .byte con_se_cb_E0, $00   ; 
- D 0 - I - 0x001309 00:92F9: 85        .byte $85   ; 
- D 0 - I - 0x00130A 00:92FA: 06        .byte $06   ; 
- D 0 - I - 0x00130B 00:92FB: 03        .byte $03   ; 
- D 0 - I - 0x00130C 00:92FC: E3        .byte con_se_cb_E3, $01   ; 
- D 0 - I - 0x00130E 00:92FE: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x001310 00:9300: 0B        .byte $0B   ; 
- D 0 - I - 0x001311 00:9301: 0B        .byte $0B   ; 
- D 0 - I - 0x001312 00:9302: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001313 00:9303: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x001315 00:9305: E0        .byte con_se_cb_E0, $01   ; 
- D 0 - I - 0x001317 00:9307: 87        .byte $87   ; 
- D 0 - I - 0x001318 00:9308: 04        .byte $04   ; 
- D 0 - I - 0x001319 00:9309: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x00131B 00:930B: E0        .byte con_se_cb_E0, $00   ; 
- D 0 - I - 0x00131D 00:930D: 85        .byte $85   ; 
- D 0 - I - 0x00131E 00:930E: 07        .byte $07   ; 
- D 0 - I - 0x00131F 00:930F: E3        .byte con_se_cb_E3, $01   ; 
- D 0 - I - 0x001321 00:9311: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x001323 00:9313: 0B        .byte $0B   ; 
- D 0 - I - 0x001324 00:9314: E3        .byte con_se_cb_E3, $05   ; 
- D 0 - I - 0x001326 00:9316: E0        .byte con_se_cb_E0, $01   ; 
- D 0 - I - 0x001328 00:9318: 87        .byte $87   ; 
- D 0 - I - 0x001329 00:9319: 04        .byte $04   ; 
- D 0 - I - 0x00132A 00:931A: 85        .byte $85   ; 
- D 0 - I - 0x00132B 00:931B: E3        .byte con_se_cb_E3, $01   ; 
- D 0 - I - 0x00132D 00:931D: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x00132F 00:931F: 0B        .byte $0B   ; 
- D 0 - I - 0x001330 00:9320: 0B        .byte $0B   ; 
- D 0 - I - 0x001331 00:9321: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x001332 00:9322: E2 92     .word off_E8_92E2



_sfx_9324_1B_wrong_psw:
- D 0 - I - 0x001334 00:9324: 01        .byte $01   ; 
- D 0 - I - 0x001335 00:9325: 2B 93     .word off_ch_1B_932B_01
- D 0 - I - 0x001337 00:9327: 02        .byte $02   ; 
- D 0 - I - 0x001338 00:9328: 40 93     .word off_ch_1B_9340_02
- D 0 - I - 0x00133A 00:932A: FF        .byte $FF   ; 



off_ch_1B_932B_01:
- D 0 - I - 0x00133B 00:932B: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x00133D 00:932D: E2        .byte con_se_cb_E2, $00   ; 
- D 0 - I - 0x00133F 00:932F: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001341 00:9331: 96        .byte $96   ; 
- D 0 - I - 0x001342 00:9332: 81        .byte $81   ; 
- D 0 - I - 0x001343 00:9333: ED        .byte con_se_cb_ED, $14   ; 
- D 0 - I - 0x001345 00:9335: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001346 00:9336: 27        .byte $27   ; 
- D 0 - I - 0x001347 00:9337: ED        .byte con_se_cb_ED, $04   ; 
- D 0 - I - 0x001349 00:9339: 27        .byte $27   ; 
- D 0 - I - 0x00134A 00:933A: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00134B 00:933B: 83        .byte $83   ; 
- D 0 - I - 0x00134C 00:933C: ED        .byte con_se_cb_ED, $05   ; 
- D 0 - I - 0x00134E 00:933E: 27        .byte $27   ; 
- D 0 - I - 0x00134F 00:933F: FF        .byte con_se_cb_stop   ; 



off_ch_1B_9340_02:
- D 0 - I - 0x001350 00:9340: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x001351 00:9341: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001353 00:9343: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001355 00:9345: ED        .byte con_se_cb_ED, $05   ; 
- D 0 - I - 0x001357 00:9347: 86        .byte $86   ; 
- D 0 - I - 0x001358 00:9348: 37        .byte $37   ; 
- D 0 - I - 0x001359 00:9349: FF        .byte con_se_cb_stop   ; 



_sfx_934A_19:
; bzk garbage
- - - - - - 0x00135A 00:934A: 00        .byte $00   ; 
- - - - - - 0x00135B 00:934B: 2A AF     .word off_ch_0C_AF2A_00
- - - - - - 0x00135D 00:934D: 01        .byte $01   ; 
- - - - - - 0x00135E 00:934E: 35 AF     .word off_ch_0C_AF35_01
- - - - - - 0x001360 00:9350: 03        .byte $03   ; 
- - - - - - 0x001361 00:9351: 54 93     .word off_ch_19_9354_03
- - - - - - 0x001363 00:9353: FF        .byte $FF   ; 



off_ch_19_9354_03:
; bzk garbage
- - - - - - 0x001364 00:9354: 86        .byte $86   ; 
- - - - - - 0x001365 00:9355: 82        .byte $82   ; 
- - - - - - 0x001366 00:9356: 10        .byte $10   ; 
- - - - - - 0x001367 00:9357: E8        .byte con_se_cb_jmp   ; 
- - - - - - 0x001368 00:9358: 04 AE     .word off_E8_AE04



_sfx_935A_18_select:
- D 0 - I - 0x00136A 00:935A: 00        .byte $00   ; 
- D 0 - I - 0x00136B 00:935B: 61 93     .word off_ch_18_9361_00
- D 0 - I - 0x00136D 00:935D: 01        .byte $01   ; 
- D 0 - I - 0x00136E 00:935E: 6D 93     .word off_ch_18_936D_01
- D 0 - I - 0x001370 00:9360: FF        .byte $FF   ; 



off_ch_18_9361_00:
- D 0 - I - 0x001371 00:9361: E0        .byte con_se_cb_E0, $00   ; 
- D 0 - I - 0x001373 00:9363: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001375 00:9365: E3        .byte con_se_cb_E3, $00   ; 
off_E8_9367:
- D 0 - I - 0x001377 00:9367: 80        .byte $80   ; 
- D 0 - I - 0x001378 00:9368: F3        .byte con_se_cb_F3   ; 
- D 0 - I - 0x001379 00:9369: 34        .byte $34   ; 
- D 0 - I - 0x00137A 00:936A: F4        .byte con_se_cb_F4   ; 
- D 0 - I - 0x00137B 00:936B: 54        .byte $54   ; 
- D 0 - I - 0x00137C 00:936C: FF        .byte con_se_cb_stop   ; 



off_ch_18_936D_01:
- D 0 - I - 0x00137D 00:936D: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x00137E 00:936E: E0        .byte con_se_cb_E0, $06   ; 
- D 0 - I - 0x001380 00:9370: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x001382 00:9372: E5        .byte con_se_cb_E5, $01   ; 
- D 0 - I - 0x001384 00:9374: 80        .byte $80   ; 
- D 0 - I - 0x001385 00:9375: 0C        .byte $0C   ; 
- D 0 - I - 0x001386 00:9376: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001388 00:9378: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x001389 00:9379: 67 93     .word off_E8_9367



_music_937B_17_penalty:
- D 0 - I - 0x00138B 00:937B: 04        .byte $04   ; 
- D 0 - I - 0x00138C 00:937C: 88 93     .word off_ch_17_9388_04
- D 0 - I - 0x00138E 00:937E: 05        .byte $05   ; 
- D 0 - I - 0x00138F 00:937F: 30 95     .word off_ch_17_9530_05
- D 0 - I - 0x001391 00:9381: 06        .byte $06   ; 
- D 0 - I - 0x001392 00:9382: F7 96     .word off_ch_17_96F7_06
- D 0 - I - 0x001394 00:9384: 07        .byte $07   ; 
- D 0 - I - 0x001395 00:9385: 7B 98     .word off_ch_17_987B_07
- D 0 - I - 0x001397 00:9387: FF        .byte $FF   ; 



off_ch_17_9388_04:
- D 0 - I - 0x001398 00:9388: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x001399 00:9389: 89        .byte $89   ; 
- D 0 - I - 0x00139A 00:938A: 0C        .byte $0C   ; 
off_E8_938B:
- D 0 - I - 0x00139B 00:938B: E0        .byte con_se_cb_E0, $3E   ; 
- D 0 - I - 0x00139D 00:938D: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x00139F 00:938F: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x0013A1 00:9391: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x0013A3 00:9393: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0013A4 00:9394: 0A 95     .word ofs_E9_950A
- D 0 - I - 0x0013A6 00:9396: 83        .byte $83   ; 
- D 0 - I - 0x0013A7 00:9397: 0C        .byte $0C   ; 
- D 0 - I - 0x0013A8 00:9398: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013AA 00:939A: 27        .byte $27   ; 
- D 0 - I - 0x0013AB 00:939B: 27        .byte $27   ; 
- D 0 - I - 0x0013AC 00:939C: 0C        .byte $0C   ; 
- D 0 - I - 0x0013AD 00:939D: 27        .byte $27   ; 
- D 0 - I - 0x0013AE 00:939E: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013B0 00:93A0: 27        .byte $27   ; 
- D 0 - I - 0x0013B1 00:93A1: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013B3 00:93A3: 26        .byte $26   ; 
- D 0 - I - 0x0013B4 00:93A4: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013B6 00:93A6: 26        .byte $26   ; 
- D 0 - I - 0x0013B7 00:93A7: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013B9 00:93A9: 27        .byte $27   ; 
- D 0 - I - 0x0013BA 00:93AA: 0C        .byte $0C   ; 
- D 0 - I - 0x0013BB 00:93AB: 27        .byte $27   ; 
- D 0 - I - 0x0013BC 00:93AC: 83        .byte $83   ; 
- D 0 - I - 0x0013BD 00:93AD: 29        .byte $29   ; 
- D 0 - I - 0x0013BE 00:93AE: 83        .byte $83   ; 
- D 0 - I - 0x0013BF 00:93AF: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013C1 00:93B1: 29        .byte $29   ; 
- D 0 - I - 0x0013C2 00:93B2: E3        .byte con_se_cb_E3, $0A   ; 
- D 0 - I - 0x0013C4 00:93B4: 29        .byte $29   ; 
- D 0 - I - 0x0013C5 00:93B5: 85        .byte $85   ; 
- D 0 - I - 0x0013C6 00:93B6: E3        .byte con_se_cb_E3, $0B   ; 
- D 0 - I - 0x0013C8 00:93B8: 29        .byte $29   ; 
- D 0 - I - 0x0013C9 00:93B9: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x0013CA 00:93BA: 0A 95     .word ofs_E9_950A
- D 0 - I - 0x0013CC 00:93BC: 83        .byte $83   ; 
- D 0 - I - 0x0013CD 00:93BD: 0C        .byte $0C   ; 
- D 0 - I - 0x0013CE 00:93BE: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013D0 00:93C0: 2B        .byte $2B   ; 
- D 0 - I - 0x0013D1 00:93C1: 2B        .byte $2B   ; 
- D 0 - I - 0x0013D2 00:93C2: 0C        .byte $0C   ; 
- D 0 - I - 0x0013D3 00:93C3: 2B        .byte $2B   ; 
- D 0 - I - 0x0013D4 00:93C4: 0C        .byte $0C   ; 
- D 0 - I - 0x0013D5 00:93C5: 85        .byte $85   ; 
- D 0 - I - 0x0013D6 00:93C6: 29        .byte $29   ; 
- D 0 - I - 0x0013D7 00:93C7: 83        .byte $83   ; 
- D 0 - I - 0x0013D8 00:93C8: 2B        .byte $2B   ; 
- D 0 - I - 0x0013D9 00:93C9: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013DB 00:93CB: 2B        .byte $2B   ; 
- D 0 - I - 0x0013DC 00:93CC: 0C        .byte $0C   ; 
- D 0 - I - 0x0013DD 00:93CD: 83        .byte $83   ; 
- D 0 - I - 0x0013DE 00:93CE: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013E0 00:93D0: 29        .byte $29   ; 
- D 0 - I - 0x0013E1 00:93D1: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013E3 00:93D3: 29        .byte $29   ; 
- D 0 - I - 0x0013E4 00:93D4: 0C        .byte $0C   ; 
- D 0 - I - 0x0013E5 00:93D5: 83        .byte $83   ; 
- D 0 - I - 0x0013E6 00:93D6: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013E8 00:93D8: 26        .byte $26   ; 
- D 0 - I - 0x0013E9 00:93D9: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013EB 00:93DB: 26        .byte $26   ; 
- D 0 - I - 0x0013EC 00:93DC: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0013ED 00:93DD: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0013EF 00:93DF: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0013F1 00:93E1: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0013F3 00:93E3: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013F5 00:93E5: 85        .byte $85   ; 
- D 0 - I - 0x0013F6 00:93E6: 0C        .byte $0C   ; 
- D 0 - I - 0x0013F7 00:93E7: 83        .byte $83   ; 
- D 0 - I - 0x0013F8 00:93E8: 27        .byte $27   ; 
- D 0 - I - 0x0013F9 00:93E9: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0013FB 00:93EB: 85        .byte $85   ; 
- D 0 - I - 0x0013FC 00:93EC: 27        .byte $27   ; 
- D 0 - I - 0x0013FD 00:93ED: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0013FF 00:93EF: 27        .byte $27   ; 
- D 0 - I - 0x001400 00:93F0: 83        .byte $83   ; 
- D 0 - I - 0x001401 00:93F1: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001403 00:93F3: 27        .byte $27   ; 
- D 0 - I - 0x001404 00:93F4: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x001406 00:93F6: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x001408 00:93F8: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x00140A 00:93FA: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00140C 00:93FC: 26        .byte $26   ; 
- D 0 - I - 0x00140D 00:93FD: 27        .byte $27   ; 
- D 0 - I - 0x00140E 00:93FE: 85        .byte $85   ; 
- D 0 - I - 0x00140F 00:93FF: 29        .byte $29   ; 
- D 0 - I - 0x001410 00:9400: 27        .byte $27   ; 
- D 0 - I - 0x001411 00:9401: 26        .byte $26   ; 
- D 0 - I - 0x001412 00:9402: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001414 00:9404: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x001416 00:9406: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001418 00:9408: 0C        .byte $0C   ; 
- D 0 - I - 0x001419 00:9409: 83        .byte $83   ; 
- D 0 - I - 0x00141A 00:940A: 29        .byte $29   ; 
- D 0 - I - 0x00141B 00:940B: 85        .byte $85   ; 
- D 0 - I - 0x00141C 00:940C: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00141E 00:940E: 29        .byte $29   ; 
- D 0 - I - 0x00141F 00:940F: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001421 00:9411: 29        .byte $29   ; 
- D 0 - I - 0x001422 00:9412: 83        .byte $83   ; 
- D 0 - I - 0x001423 00:9413: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001425 00:9415: 29        .byte $29   ; 
- D 0 - I - 0x001426 00:9416: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x001428 00:9418: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x00142A 00:941A: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x00142C 00:941C: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00142E 00:941E: 27        .byte $27   ; 
- D 0 - I - 0x00142F 00:941F: 29        .byte $29   ; 
- D 0 - I - 0x001430 00:9420: 85        .byte $85   ; 
- D 0 - I - 0x001431 00:9421: 2B        .byte $2B   ; 
- D 0 - I - 0x001432 00:9422: 29        .byte $29   ; 
- D 0 - I - 0x001433 00:9423: 26        .byte $26   ; 
- D 0 - I - 0x001434 00:9424: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001436 00:9426: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x001438 00:9428: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x00143A 00:942A: 85        .byte $85   ; 
- D 0 - I - 0x00143B 00:942B: 0C        .byte $0C   ; 
- D 0 - I - 0x00143C 00:942C: 83        .byte $83   ; 
- D 0 - I - 0x00143D 00:942D: 2B        .byte $2B   ; 
- D 0 - I - 0x00143E 00:942E: 85        .byte $85   ; 
- D 0 - I - 0x00143F 00:942F: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001441 00:9431: 2B        .byte $2B   ; 
- D 0 - I - 0x001442 00:9432: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001444 00:9434: 2B        .byte $2B   ; 
- D 0 - I - 0x001445 00:9435: 83        .byte $83   ; 
- D 0 - I - 0x001446 00:9436: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001448 00:9438: 2B        .byte $2B   ; 
- D 0 - I - 0x001449 00:9439: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x00144B 00:943B: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x00144D 00:943D: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x00144F 00:943F: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001451 00:9441: 29        .byte $29   ; 
- D 0 - I - 0x001452 00:9442: 2B        .byte $2B   ; 
- D 0 - I - 0x001453 00:9443: 85        .byte $85   ; 
- D 0 - I - 0x001454 00:9444: 30        .byte $30   ; 
- D 0 - I - 0x001455 00:9445: 2B        .byte $2B   ; 
- D 0 - I - 0x001456 00:9446: 29        .byte $29   ; 
- D 0 - I - 0x001457 00:9447: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001459 00:9449: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x00145B 00:944B: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x00145D 00:944D: 85        .byte $85   ; 
- D 0 - I - 0x00145E 00:944E: 0C        .byte $0C   ; 
- D 0 - I - 0x00145F 00:944F: 83        .byte $83   ; 
- D 0 - I - 0x001460 00:9450: 2B        .byte $2B   ; 
- D 0 - I - 0x001461 00:9451: 85        .byte $85   ; 
- D 0 - I - 0x001462 00:9452: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001464 00:9454: 2B        .byte $2B   ; 
- D 0 - I - 0x001465 00:9455: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001467 00:9457: 2B        .byte $2B   ; 
- D 0 - I - 0x001468 00:9458: 83        .byte $83   ; 
- D 0 - I - 0x001469 00:9459: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00146B 00:945B: 2B        .byte $2B   ; 
- D 0 - I - 0x00146C 00:945C: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x00146E 00:945E: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x001470 00:9460: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x001472 00:9462: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001474 00:9464: 29        .byte $29   ; 
- D 0 - I - 0x001475 00:9465: 2B        .byte $2B   ; 
- D 0 - I - 0x001476 00:9466: 85        .byte $85   ; 
- D 0 - I - 0x001477 00:9467: 30        .byte $30   ; 
- D 0 - I - 0x001478 00:9468: 83        .byte $83   ; 
- D 0 - I - 0x001479 00:9469: 2B        .byte $2B   ; 
- D 0 - I - 0x00147A 00:946A: 29        .byte $29   ; 
- D 0 - I - 0x00147B 00:946B: 85        .byte $85   ; 
- D 0 - I - 0x00147C 00:946C: 26        .byte $26   ; 
- D 0 - I - 0x00147D 00:946D: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x00147F 00:946F: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x001481 00:9471: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001483 00:9473: 85        .byte $85   ; 
- D 0 - I - 0x001484 00:9474: 0C        .byte $0C   ; 
- D 0 - I - 0x001485 00:9475: 83        .byte $83   ; 
- D 0 - I - 0x001486 00:9476: 27        .byte $27   ; 
- D 0 - I - 0x001487 00:9477: 85        .byte $85   ; 
- D 0 - I - 0x001488 00:9478: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00148A 00:947A: 27        .byte $27   ; 
- D 0 - I - 0x00148B 00:947B: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00148D 00:947D: 27        .byte $27   ; 
- D 0 - I - 0x00148E 00:947E: 83        .byte $83   ; 
- D 0 - I - 0x00148F 00:947F: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001491 00:9481: 27        .byte $27   ; 
- D 0 - I - 0x001492 00:9482: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x001494 00:9484: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x001496 00:9486: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x001498 00:9488: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00149A 00:948A: 26        .byte $26   ; 
- D 0 - I - 0x00149B 00:948B: 27        .byte $27   ; 
- D 0 - I - 0x00149C 00:948C: 85        .byte $85   ; 
- D 0 - I - 0x00149D 00:948D: 29        .byte $29   ; 
- D 0 - I - 0x00149E 00:948E: 27        .byte $27   ; 
- D 0 - I - 0x00149F 00:948F: 26        .byte $26   ; 
- D 0 - I - 0x0014A0 00:9490: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0014A2 00:9492: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0014A4 00:9494: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0014A6 00:9496: 85        .byte $85   ; 
- D 0 - I - 0x0014A7 00:9497: 0C        .byte $0C   ; 
- D 0 - I - 0x0014A8 00:9498: 83        .byte $83   ; 
- D 0 - I - 0x0014A9 00:9499: 29        .byte $29   ; 
- D 0 - I - 0x0014AA 00:949A: 85        .byte $85   ; 
- D 0 - I - 0x0014AB 00:949B: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014AD 00:949D: 29        .byte $29   ; 
- D 0 - I - 0x0014AE 00:949E: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0014B0 00:94A0: 29        .byte $29   ; 
- D 0 - I - 0x0014B1 00:94A1: 83        .byte $83   ; 
- D 0 - I - 0x0014B2 00:94A2: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014B4 00:94A4: 29        .byte $29   ; 
- D 0 - I - 0x0014B5 00:94A5: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0014B7 00:94A7: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x0014B9 00:94A9: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x0014BB 00:94AB: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0014BD 00:94AD: 27        .byte $27   ; 
- D 0 - I - 0x0014BE 00:94AE: 29        .byte $29   ; 
- D 0 - I - 0x0014BF 00:94AF: 85        .byte $85   ; 
- D 0 - I - 0x0014C0 00:94B0: 2B        .byte $2B   ; 
- D 0 - I - 0x0014C1 00:94B1: 29        .byte $29   ; 
- D 0 - I - 0x0014C2 00:94B2: 26        .byte $26   ; 
- D 0 - I - 0x0014C3 00:94B3: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0014C5 00:94B5: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0014C7 00:94B7: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0014C9 00:94B9: 85        .byte $85   ; 
- D 0 - I - 0x0014CA 00:94BA: 0C        .byte $0C   ; 
- D 0 - I - 0x0014CB 00:94BB: 83        .byte $83   ; 
- D 0 - I - 0x0014CC 00:94BC: 2B        .byte $2B   ; 
- D 0 - I - 0x0014CD 00:94BD: 85        .byte $85   ; 
- D 0 - I - 0x0014CE 00:94BE: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014D0 00:94C0: 2B        .byte $2B   ; 
- D 0 - I - 0x0014D1 00:94C1: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0014D3 00:94C3: 2B        .byte $2B   ; 
- D 0 - I - 0x0014D4 00:94C4: 83        .byte $83   ; 
- D 0 - I - 0x0014D5 00:94C5: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014D7 00:94C7: 2B        .byte $2B   ; 
- D 0 - I - 0x0014D8 00:94C8: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0014DA 00:94CA: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x0014DC 00:94CC: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x0014DE 00:94CE: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0014E0 00:94D0: 29        .byte $29   ; 
- D 0 - I - 0x0014E1 00:94D1: 2B        .byte $2B   ; 
- D 0 - I - 0x0014E2 00:94D2: 85        .byte $85   ; 
- D 0 - I - 0x0014E3 00:94D3: 30        .byte $30   ; 
- D 0 - I - 0x0014E4 00:94D4: 2B        .byte $2B   ; 
- D 0 - I - 0x0014E5 00:94D5: 29        .byte $29   ; 
- D 0 - I - 0x0014E6 00:94D6: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0014E8 00:94D8: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0014EA 00:94DA: 85        .byte $85   ; 
- D 0 - I - 0x0014EB 00:94DB: 0C        .byte $0C   ; 
- D 0 - I - 0x0014EC 00:94DC: 83        .byte $83   ; 
- D 0 - I - 0x0014ED 00:94DD: 27        .byte $27   ; 
- D 0 - I - 0x0014EE 00:94DE: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014F0 00:94E0: 27        .byte $27   ; 
- D 0 - I - 0x0014F1 00:94E1: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0014F3 00:94E3: 27        .byte $27   ; 
- D 0 - I - 0x0014F4 00:94E4: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014F6 00:94E6: 27        .byte $27   ; 
- D 0 - I - 0x0014F7 00:94E7: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0014F9 00:94E9: 26        .byte $26   ; 
- D 0 - I - 0x0014FA 00:94EA: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0014FC 00:94EC: 26        .byte $26   ; 
- D 0 - I - 0x0014FD 00:94ED: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0014FF 00:94EF: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x001501 00:94F1: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x001503 00:94F3: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001505 00:94F5: 85        .byte $85   ; 
- D 0 - I - 0x001506 00:94F6: 27        .byte $27   ; 
- D 0 - I - 0x001507 00:94F7: 83        .byte $83   ; 
- D 0 - I - 0x001508 00:94F8: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00150A 00:94FA: 27        .byte $27   ; 
- D 0 - I - 0x00150B 00:94FB: 85        .byte $85   ; 
- D 0 - I - 0x00150C 00:94FC: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00150E 00:94FE: 29        .byte $29   ; 
- D 0 - I - 0x00150F 00:94FF: 83        .byte $83   ; 
- D 0 - I - 0x001510 00:9500: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001512 00:9502: 29        .byte $29   ; 
- D 0 - I - 0x001513 00:9503: 85        .byte $85   ; 
- D 0 - I - 0x001514 00:9504: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001516 00:9506: 26        .byte $26   ; 
- D 0 - I - 0x001517 00:9507: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x001518 00:9508: 8B 93     .word off_E8_938B
ofs_E9_950A:
- D 0 - I - 0x00151A 00:950A: 85        .byte $85   ; 
- D 0 - I - 0x00151B 00:950B: 83        .byte $83   ; 
- D 0 - I - 0x00151C 00:950C: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00151E 00:950E: 27        .byte $27   ; 
- D 0 - I - 0x00151F 00:950F: 83        .byte $83   ; 
- D 0 - I - 0x001520 00:9510: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001522 00:9512: 27        .byte $27   ; 
- D 0 - I - 0x001523 00:9513: 85        .byte $85   ; 
- D 0 - I - 0x001524 00:9514: 83        .byte $83   ; 
- D 0 - I - 0x001525 00:9515: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001527 00:9517: 26        .byte $26   ; 
- D 0 - I - 0x001528 00:9518: 83        .byte $83   ; 
- D 0 - I - 0x001529 00:9519: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00152B 00:951B: 26        .byte $26   ; 
- D 0 - I - 0x00152C 00:951C: 83        .byte $83   ; 
- D 0 - I - 0x00152D 00:951D: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00152F 00:951F: 27        .byte $27   ; 
- D 0 - I - 0x001530 00:9520: 0C        .byte $0C   ; 
- D 0 - I - 0x001531 00:9521: 27        .byte $27   ; 
- D 0 - I - 0x001532 00:9522: 83        .byte $83   ; 
- D 0 - I - 0x001533 00:9523: 29        .byte $29   ; 
- D 0 - I - 0x001534 00:9524: 83        .byte $83   ; 
- D 0 - I - 0x001535 00:9525: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001537 00:9527: 29        .byte $29   ; 
- D 0 - I - 0x001538 00:9528: E3        .byte con_se_cb_E3, $0A   ; 
- D 0 - I - 0x00153A 00:952A: 29        .byte $29   ; 
- D 0 - I - 0x00153B 00:952B: 85        .byte $85   ; 
- D 0 - I - 0x00153C 00:952C: E3        .byte con_se_cb_E3, $0B   ; 
- D 0 - I - 0x00153E 00:952E: 29        .byte $29   ; 
- D 0 - I - 0x00153F 00:952F: EA        .byte con_se_cb_rts   ; 



off_ch_17_9530_05:
- D 0 - I - 0x001540 00:9530: 89        .byte $89   ; 
- D 0 - I - 0x001541 00:9531: 80        .byte $80   ; 
- D 0 - I - 0x001542 00:9532: 0C        .byte $0C   ; 
off_E8_9533:
- D 0 - I - 0x001543 00:9533: E0        .byte con_se_cb_E0, $3E   ; 
- D 0 - I - 0x001545 00:9535: ED        .byte con_se_cb_ED, $0E   ; 
- D 0 - I - 0x001547 00:9537: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x001549 00:9539: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x00154B 00:953B: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x00154C 00:953C: D1 96     .word ofs_E9_96D1
- D 0 - I - 0x00154E 00:953E: 83        .byte $83   ; 
- D 0 - I - 0x00154F 00:953F: 0C        .byte $0C   ; 
- D 0 - I - 0x001550 00:9540: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001552 00:9542: 24        .byte $24   ; 
- D 0 - I - 0x001553 00:9543: 24        .byte $24   ; 
- D 0 - I - 0x001554 00:9544: 0C        .byte $0C   ; 
- D 0 - I - 0x001555 00:9545: 24        .byte $24   ; 
- D 0 - I - 0x001556 00:9546: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001558 00:9548: 24        .byte $24   ; 
- D 0 - I - 0x001559 00:9549: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00155B 00:954B: 22        .byte $22   ; 
- D 0 - I - 0x00155C 00:954C: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00155E 00:954E: 22        .byte $22   ; 
- D 0 - I - 0x00155F 00:954F: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001561 00:9551: 24        .byte $24   ; 
- D 0 - I - 0x001562 00:9552: 0C        .byte $0C   ; 
- D 0 - I - 0x001563 00:9553: 24        .byte $24   ; 
- D 0 - I - 0x001564 00:9554: 83        .byte $83   ; 
- D 0 - I - 0x001565 00:9555: 26        .byte $26   ; 
- D 0 - I - 0x001566 00:9556: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001568 00:9558: 26        .byte $26   ; 
- D 0 - I - 0x001569 00:9559: E3        .byte con_se_cb_E3, $0A   ; 
- D 0 - I - 0x00156B 00:955B: 26        .byte $26   ; 
- D 0 - I - 0x00156C 00:955C: 85        .byte $85   ; 
- D 0 - I - 0x00156D 00:955D: E3        .byte con_se_cb_E3, $0B   ; 
- D 0 - I - 0x00156F 00:955F: 26        .byte $26   ; 
- D 0 - I - 0x001570 00:9560: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001571 00:9561: D1 96     .word ofs_E9_96D1
- D 0 - I - 0x001573 00:9563: 83        .byte $83   ; 
- D 0 - I - 0x001574 00:9564: 0C        .byte $0C   ; 
- D 0 - I - 0x001575 00:9565: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001577 00:9567: 27        .byte $27   ; 
- D 0 - I - 0x001578 00:9568: 27        .byte $27   ; 
- D 0 - I - 0x001579 00:9569: 0C        .byte $0C   ; 
- D 0 - I - 0x00157A 00:956A: 27        .byte $27   ; 
- D 0 - I - 0x00157B 00:956B: 0C        .byte $0C   ; 
- D 0 - I - 0x00157C 00:956C: 85        .byte $85   ; 
- D 0 - I - 0x00157D 00:956D: 26        .byte $26   ; 
- D 0 - I - 0x00157E 00:956E: 83        .byte $83   ; 
- D 0 - I - 0x00157F 00:956F: 27        .byte $27   ; 
- D 0 - I - 0x001580 00:9570: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001582 00:9572: 27        .byte $27   ; 
- D 0 - I - 0x001583 00:9573: 0C        .byte $0C   ; 
- D 0 - I - 0x001584 00:9574: 83        .byte $83   ; 
- D 0 - I - 0x001585 00:9575: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001587 00:9577: 26        .byte $26   ; 
- D 0 - I - 0x001588 00:9578: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00158A 00:957A: 26        .byte $26   ; 
- D 0 - I - 0x00158B 00:957B: 0C        .byte $0C   ; 
- D 0 - I - 0x00158C 00:957C: 83        .byte $83   ; 
- D 0 - I - 0x00158D 00:957D: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00158F 00:957F: 22        .byte $22   ; 
- D 0 - I - 0x001590 00:9580: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001592 00:9582: 22        .byte $22   ; 
- D 0 - I - 0x001593 00:9583: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001594 00:9584: 80        .byte $80   ; 
- D 0 - I - 0x001595 00:9585: 0C        .byte $0C   ; 
- D 0 - I - 0x001596 00:9586: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x001598 00:9588: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x00159A 00:958A: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x00159C 00:958C: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00159E 00:958E: 85        .byte $85   ; 
- D 0 - I - 0x00159F 00:958F: 0C        .byte $0C   ; 
- D 0 - I - 0x0015A0 00:9590: 83        .byte $83   ; 
- D 0 - I - 0x0015A1 00:9591: 24        .byte $24   ; 
- D 0 - I - 0x0015A2 00:9592: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0015A4 00:9594: 85        .byte $85   ; 
- D 0 - I - 0x0015A5 00:9595: 24        .byte $24   ; 
- D 0 - I - 0x0015A6 00:9596: 85        .byte $85   ; 
- D 0 - I - 0x0015A7 00:9597: 83        .byte $83   ; 
- D 0 - I - 0x0015A8 00:9598: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0015AA 00:959A: 24        .byte $24   ; 
- D 0 - I - 0x0015AB 00:959B: 83        .byte $83   ; 
- D 0 - I - 0x0015AC 00:959C: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0015AE 00:959E: 24        .byte $24   ; 
- D 0 - I - 0x0015AF 00:959F: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0015B1 00:95A1: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x0015B3 00:95A3: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x0015B5 00:95A5: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x0015B7 00:95A7: 26        .byte $26   ; 
- D 0 - I - 0x0015B8 00:95A8: 27        .byte $27   ; 
- D 0 - I - 0x0015B9 00:95A9: 85        .byte $85   ; 
- D 0 - I - 0x0015BA 00:95AA: 29        .byte $29   ; 
- D 0 - I - 0x0015BB 00:95AB: 27        .byte $27   ; 
- D 0 - I - 0x0015BC 00:95AC: 26        .byte $26   ; 
- D 0 - I - 0x0015BD 00:95AD: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0015BF 00:95AF: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0015C1 00:95B1: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x0015C3 00:95B3: 83        .byte $83   ; 
- D 0 - I - 0x0015C4 00:95B4: 0C        .byte $0C   ; 
- D 0 - I - 0x0015C5 00:95B5: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0015C7 00:95B7: 83        .byte $83   ; 
- D 0 - I - 0x0015C8 00:95B8: 26        .byte $26   ; 
- D 0 - I - 0x0015C9 00:95B9: 85        .byte $85   ; 
- D 0 - I - 0x0015CA 00:95BA: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0015CC 00:95BC: 26        .byte $26   ; 
- D 0 - I - 0x0015CD 00:95BD: 85        .byte $85   ; 
- D 0 - I - 0x0015CE 00:95BE: 83        .byte $83   ; 
- D 0 - I - 0x0015CF 00:95BF: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0015D1 00:95C1: 26        .byte $26   ; 
- D 0 - I - 0x0015D2 00:95C2: 83        .byte $83   ; 
- D 0 - I - 0x0015D3 00:95C3: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0015D5 00:95C5: 26        .byte $26   ; 
- D 0 - I - 0x0015D6 00:95C6: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0015D8 00:95C8: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x0015DA 00:95CA: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x0015DC 00:95CC: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x0015DE 00:95CE: 27        .byte $27   ; 
- D 0 - I - 0x0015DF 00:95CF: 29        .byte $29   ; 
- D 0 - I - 0x0015E0 00:95D0: 85        .byte $85   ; 
- D 0 - I - 0x0015E1 00:95D1: 2B        .byte $2B   ; 
- D 0 - I - 0x0015E2 00:95D2: 29        .byte $29   ; 
- D 0 - I - 0x0015E3 00:95D3: 26        .byte $26   ; 
- D 0 - I - 0x0015E4 00:95D4: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0015E6 00:95D6: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x0015E8 00:95D8: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0015EA 00:95DA: 83        .byte $83   ; 
- D 0 - I - 0x0015EB 00:95DB: 0C        .byte $0C   ; 
- D 0 - I - 0x0015EC 00:95DC: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0015EE 00:95DE: 83        .byte $83   ; 
- D 0 - I - 0x0015EF 00:95DF: 27        .byte $27   ; 
- D 0 - I - 0x0015F0 00:95E0: 85        .byte $85   ; 
- D 0 - I - 0x0015F1 00:95E1: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0015F3 00:95E3: 27        .byte $27   ; 
- D 0 - I - 0x0015F4 00:95E4: 85        .byte $85   ; 
- D 0 - I - 0x0015F5 00:95E5: 83        .byte $83   ; 
- D 0 - I - 0x0015F6 00:95E6: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0015F8 00:95E8: 27        .byte $27   ; 
- D 0 - I - 0x0015F9 00:95E9: 83        .byte $83   ; 
- D 0 - I - 0x0015FA 00:95EA: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0015FC 00:95EC: 27        .byte $27   ; 
- D 0 - I - 0x0015FD 00:95ED: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0015FF 00:95EF: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x001601 00:95F1: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x001603 00:95F3: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x001605 00:95F5: 29        .byte $29   ; 
- D 0 - I - 0x001606 00:95F6: 2B        .byte $2B   ; 
- D 0 - I - 0x001607 00:95F7: 85        .byte $85   ; 
- D 0 - I - 0x001608 00:95F8: 30        .byte $30   ; 
- D 0 - I - 0x001609 00:95F9: 2B        .byte $2B   ; 
- D 0 - I - 0x00160A 00:95FA: 29        .byte $29   ; 
- D 0 - I - 0x00160B 00:95FB: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x00160D 00:95FD: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x00160F 00:95FF: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x001611 00:9601: 83        .byte $83   ; 
- D 0 - I - 0x001612 00:9602: 0C        .byte $0C   ; 
- D 0 - I - 0x001613 00:9603: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001615 00:9605: 83        .byte $83   ; 
- D 0 - I - 0x001616 00:9606: 27        .byte $27   ; 
- D 0 - I - 0x001617 00:9607: 85        .byte $85   ; 
- D 0 - I - 0x001618 00:9608: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00161A 00:960A: 27        .byte $27   ; 
- D 0 - I - 0x00161B 00:960B: 85        .byte $85   ; 
- D 0 - I - 0x00161C 00:960C: 83        .byte $83   ; 
- D 0 - I - 0x00161D 00:960D: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00161F 00:960F: 27        .byte $27   ; 
- D 0 - I - 0x001620 00:9610: 83        .byte $83   ; 
- D 0 - I - 0x001621 00:9611: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001623 00:9613: 27        .byte $27   ; 
- D 0 - I - 0x001624 00:9614: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x001626 00:9616: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x001628 00:9618: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x00162A 00:961A: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x00162C 00:961C: 29        .byte $29   ; 
- D 0 - I - 0x00162D 00:961D: 2B        .byte $2B   ; 
- D 0 - I - 0x00162E 00:961E: 85        .byte $85   ; 
- D 0 - I - 0x00162F 00:961F: 30        .byte $30   ; 
- D 0 - I - 0x001630 00:9620: 83        .byte $83   ; 
- D 0 - I - 0x001631 00:9621: 2B        .byte $2B   ; 
- D 0 - I - 0x001632 00:9622: 29        .byte $29   ; 
- D 0 - I - 0x001633 00:9623: 85        .byte $85   ; 
- D 0 - I - 0x001634 00:9624: 26        .byte $26   ; 
- D 0 - I - 0x001635 00:9625: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001637 00:9627: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x001639 00:9629: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x00163B 00:962B: 83        .byte $83   ; 
- D 0 - I - 0x00163C 00:962C: 0C        .byte $0C   ; 
- D 0 - I - 0x00163D 00:962D: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00163F 00:962F: 83        .byte $83   ; 
- D 0 - I - 0x001640 00:9630: 24        .byte $24   ; 
- D 0 - I - 0x001641 00:9631: 85        .byte $85   ; 
- D 0 - I - 0x001642 00:9632: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001644 00:9634: 24        .byte $24   ; 
- D 0 - I - 0x001645 00:9635: 85        .byte $85   ; 
- D 0 - I - 0x001646 00:9636: 83        .byte $83   ; 
- D 0 - I - 0x001647 00:9637: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001649 00:9639: 24        .byte $24   ; 
- D 0 - I - 0x00164A 00:963A: 83        .byte $83   ; 
- D 0 - I - 0x00164B 00:963B: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00164D 00:963D: 24        .byte $24   ; 
- D 0 - I - 0x00164E 00:963E: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x001650 00:9640: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x001652 00:9642: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x001654 00:9644: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x001656 00:9646: 26        .byte $26   ; 
- D 0 - I - 0x001657 00:9647: 27        .byte $27   ; 
- D 0 - I - 0x001658 00:9648: 85        .byte $85   ; 
- D 0 - I - 0x001659 00:9649: 29        .byte $29   ; 
- D 0 - I - 0x00165A 00:964A: 27        .byte $27   ; 
- D 0 - I - 0x00165B 00:964B: 26        .byte $26   ; 
- D 0 - I - 0x00165C 00:964C: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x00165E 00:964E: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x001660 00:9650: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x001662 00:9652: 83        .byte $83   ; 
- D 0 - I - 0x001663 00:9653: 0C        .byte $0C   ; 
- D 0 - I - 0x001664 00:9654: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001666 00:9656: 83        .byte $83   ; 
- D 0 - I - 0x001667 00:9657: 26        .byte $26   ; 
- D 0 - I - 0x001668 00:9658: 85        .byte $85   ; 
- D 0 - I - 0x001669 00:9659: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00166B 00:965B: 26        .byte $26   ; 
- D 0 - I - 0x00166C 00:965C: 85        .byte $85   ; 
- D 0 - I - 0x00166D 00:965D: 83        .byte $83   ; 
- D 0 - I - 0x00166E 00:965E: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001670 00:9660: 26        .byte $26   ; 
- D 0 - I - 0x001671 00:9661: 83        .byte $83   ; 
- D 0 - I - 0x001672 00:9662: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001674 00:9664: 26        .byte $26   ; 
- D 0 - I - 0x001675 00:9665: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x001677 00:9667: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x001679 00:9669: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x00167B 00:966B: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x00167D 00:966D: 27        .byte $27   ; 
- D 0 - I - 0x00167E 00:966E: 29        .byte $29   ; 
- D 0 - I - 0x00167F 00:966F: 85        .byte $85   ; 
- D 0 - I - 0x001680 00:9670: 2B        .byte $2B   ; 
- D 0 - I - 0x001681 00:9671: 29        .byte $29   ; 
- D 0 - I - 0x001682 00:9672: 26        .byte $26   ; 
- D 0 - I - 0x001683 00:9673: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001685 00:9675: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x001687 00:9677: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x001689 00:9679: 83        .byte $83   ; 
- D 0 - I - 0x00168A 00:967A: 0C        .byte $0C   ; 
- D 0 - I - 0x00168B 00:967B: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00168D 00:967D: 83        .byte $83   ; 
- D 0 - I - 0x00168E 00:967E: 27        .byte $27   ; 
- D 0 - I - 0x00168F 00:967F: 85        .byte $85   ; 
- D 0 - I - 0x001690 00:9680: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x001692 00:9682: 27        .byte $27   ; 
- D 0 - I - 0x001693 00:9683: 85        .byte $85   ; 
- D 0 - I - 0x001694 00:9684: 83        .byte $83   ; 
- D 0 - I - 0x001695 00:9685: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001697 00:9687: 27        .byte $27   ; 
- D 0 - I - 0x001698 00:9688: 83        .byte $83   ; 
- D 0 - I - 0x001699 00:9689: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x00169B 00:968B: 27        .byte $27   ; 
- D 0 - I - 0x00169C 00:968C: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x00169E 00:968E: E5        .byte con_se_cb_E5, $02   ; 
- D 0 - I - 0x0016A0 00:9690: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x0016A2 00:9692: E3        .byte con_se_cb_E3, $07   ; 
- D 0 - I - 0x0016A4 00:9694: 29        .byte $29   ; 
- D 0 - I - 0x0016A5 00:9695: 2B        .byte $2B   ; 
- D 0 - I - 0x0016A6 00:9696: 85        .byte $85   ; 
- D 0 - I - 0x0016A7 00:9697: 30        .byte $30   ; 
- D 0 - I - 0x0016A8 00:9698: 2B        .byte $2B   ; 
- D 0 - I - 0x0016A9 00:9699: 29        .byte $29   ; 
- D 0 - I - 0x0016AA 00:969A: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0016AC 00:969C: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x0016AE 00:969E: E0        .byte con_se_cb_E0, $3F   ; 
- D 0 - I - 0x0016B0 00:96A0: 82        .byte $82   ; 
- D 0 - I - 0x0016B1 00:96A1: 80        .byte $80   ; 
- D 0 - I - 0x0016B2 00:96A2: 0C        .byte $0C   ; 
- D 0 - I - 0x0016B3 00:96A3: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016B5 00:96A5: 83        .byte $83   ; 
- D 0 - I - 0x0016B6 00:96A6: 24        .byte $24   ; 
- D 0 - I - 0x0016B7 00:96A7: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016B9 00:96A9: 24        .byte $24   ; 
- D 0 - I - 0x0016BA 00:96AA: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016BC 00:96AC: 24        .byte $24   ; 
- D 0 - I - 0x0016BD 00:96AD: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016BF 00:96AF: 24        .byte $24   ; 
- D 0 - I - 0x0016C0 00:96B0: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016C2 00:96B2: 22        .byte $22   ; 
- D 0 - I - 0x0016C3 00:96B3: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016C5 00:96B5: 22        .byte $22   ; 
- D 0 - I - 0x0016C6 00:96B6: ED        .byte con_se_cb_ED, $02   ; 
- D 0 - I - 0x0016C8 00:96B8: E0        .byte con_se_cb_E0, $40   ; 
- D 0 - I - 0x0016CA 00:96BA: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016CC 00:96BC: 85        .byte $85   ; 
- D 0 - I - 0x0016CD 00:96BD: 24        .byte $24   ; 
- D 0 - I - 0x0016CE 00:96BE: 83        .byte $83   ; 
- D 0 - I - 0x0016CF 00:96BF: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016D1 00:96C1: 24        .byte $24   ; 
- D 0 - I - 0x0016D2 00:96C2: 85        .byte $85   ; 
- D 0 - I - 0x0016D3 00:96C3: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016D5 00:96C5: 26        .byte $26   ; 
- D 0 - I - 0x0016D6 00:96C6: 83        .byte $83   ; 
- D 0 - I - 0x0016D7 00:96C7: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016D9 00:96C9: 26        .byte $26   ; 
- D 0 - I - 0x0016DA 00:96CA: 85        .byte $85   ; 
- D 0 - I - 0x0016DB 00:96CB: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016DD 00:96CD: 22        .byte $22   ; 
- D 0 - I - 0x0016DE 00:96CE: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0016DF 00:96CF: 33 95     .word off_E8_9533
ofs_E9_96D1:
- D 0 - I - 0x0016E1 00:96D1: 85        .byte $85   ; 
- D 0 - I - 0x0016E2 00:96D2: 83        .byte $83   ; 
- D 0 - I - 0x0016E3 00:96D3: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016E5 00:96D5: 24        .byte $24   ; 
- D 0 - I - 0x0016E6 00:96D6: 83        .byte $83   ; 
- D 0 - I - 0x0016E7 00:96D7: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016E9 00:96D9: 24        .byte $24   ; 
- D 0 - I - 0x0016EA 00:96DA: 85        .byte $85   ; 
- D 0 - I - 0x0016EB 00:96DB: 83        .byte $83   ; 
- D 0 - I - 0x0016EC 00:96DC: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016EE 00:96DE: 22        .byte $22   ; 
- D 0 - I - 0x0016EF 00:96DF: 83        .byte $83   ; 
- D 0 - I - 0x0016F0 00:96E0: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016F2 00:96E2: 22        .byte $22   ; 
- D 0 - I - 0x0016F3 00:96E3: 83        .byte $83   ; 
- D 0 - I - 0x0016F4 00:96E4: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0016F6 00:96E6: 24        .byte $24   ; 
- D 0 - I - 0x0016F7 00:96E7: 0C        .byte $0C   ; 
- D 0 - I - 0x0016F8 00:96E8: 24        .byte $24   ; 
- D 0 - I - 0x0016F9 00:96E9: 83        .byte $83   ; 
- D 0 - I - 0x0016FA 00:96EA: 26        .byte $26   ; 
- D 0 - I - 0x0016FB 00:96EB: 83        .byte $83   ; 
- D 0 - I - 0x0016FC 00:96EC: E3        .byte con_se_cb_E3, $08   ; 
- D 0 - I - 0x0016FE 00:96EE: 26        .byte $26   ; 
- D 0 - I - 0x0016FF 00:96EF: E3        .byte con_se_cb_E3, $0A   ; 
- D 0 - I - 0x001701 00:96F1: 26        .byte $26   ; 
- D 0 - I - 0x001702 00:96F2: 85        .byte $85   ; 
- D 0 - I - 0x001703 00:96F3: E3        .byte con_se_cb_E3, $0B   ; 
- D 0 - I - 0x001705 00:96F5: 26        .byte $26   ; 
- D 0 - I - 0x001706 00:96F6: EA        .byte con_se_cb_rts   ; 



off_ch_17_96F7_06:
- D 0 - I - 0x001707 00:96F7: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001709 00:96F9: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00170B 00:96FB: 80        .byte $80   ; 
- D 0 - I - 0x00170C 00:96FC: 39        .byte $39   ; 
- D 0 - I - 0x00170D 00:96FD: 38        .byte $38   ; 
- D 0 - I - 0x00170E 00:96FE: 37        .byte $37   ; 
- D 0 - I - 0x00170F 00:96FF: 36        .byte $36   ; 
- D 0 - I - 0x001710 00:9700: 35        .byte $35   ; 
- D 0 - I - 0x001711 00:9701: 34        .byte $34   ; 
- D 0 - I - 0x001712 00:9702: 39        .byte $39   ; 
- D 0 - I - 0x001713 00:9703: 38        .byte $38   ; 
- D 0 - I - 0x001714 00:9704: 37        .byte $37   ; 
- D 0 - I - 0x001715 00:9705: 36        .byte $36   ; 
- D 0 - I - 0x001716 00:9706: 35        .byte $35   ; 
- D 0 - I - 0x001717 00:9707: 34        .byte $34   ; 
- D 0 - I - 0x001718 00:9708: 36        .byte $36   ; 
- D 0 - I - 0x001719 00:9709: 35        .byte $35   ; 
- D 0 - I - 0x00171A 00:970A: 34        .byte $34   ; 
- D 0 - I - 0x00171B 00:970B: 33        .byte $33   ; 
- D 0 - I - 0x00171C 00:970C: 32        .byte $32   ; 
- D 0 - I - 0x00171D 00:970D: 31        .byte $31   ; 
- D 0 - I - 0x00171E 00:970E: 30        .byte $30   ; 
- D 0 - I - 0x00171F 00:970F: 2B        .byte $2B   ; 
- D 0 - I - 0x001720 00:9710: 2A        .byte $2A   ; 
- D 0 - I - 0x001721 00:9711: 29        .byte $29   ; 
- D 0 - I - 0x001722 00:9712: 28        .byte $28   ; 
- D 0 - I - 0x001723 00:9713: 27        .byte $27   ; 
- D 0 - I - 0x001724 00:9714: 36        .byte $36   ; 
- D 0 - I - 0x001725 00:9715: 35        .byte $35   ; 
- D 0 - I - 0x001726 00:9716: 34        .byte $34   ; 
- D 0 - I - 0x001727 00:9717: 33        .byte $33   ; 
- D 0 - I - 0x001728 00:9718: 32        .byte $32   ; 
- D 0 - I - 0x001729 00:9719: 31        .byte $31   ; 
- D 0 - I - 0x00172A 00:971A: 36        .byte $36   ; 
- D 0 - I - 0x00172B 00:971B: 35        .byte $35   ; 
- D 0 - I - 0x00172C 00:971C: 34        .byte $34   ; 
- D 0 - I - 0x00172D 00:971D: 33        .byte $33   ; 
- D 0 - I - 0x00172E 00:971E: 32        .byte $32   ; 
- D 0 - I - 0x00172F 00:971F: 31        .byte $31   ; 
- D 0 - I - 0x001730 00:9720: 33        .byte $33   ; 
- D 0 - I - 0x001731 00:9721: 32        .byte $32   ; 
- D 0 - I - 0x001732 00:9722: 31        .byte $31   ; 
- D 0 - I - 0x001733 00:9723: 30        .byte $30   ; 
- D 0 - I - 0x001734 00:9724: 2B        .byte $2B   ; 
- D 0 - I - 0x001735 00:9725: 2A        .byte $2A   ; 
- D 0 - I - 0x001736 00:9726: 29        .byte $29   ; 
- D 0 - I - 0x001737 00:9727: 28        .byte $28   ; 
- D 0 - I - 0x001738 00:9728: 27        .byte $27   ; 
- D 0 - I - 0x001739 00:9729: 26        .byte $26   ; 
- D 0 - I - 0x00173A 00:972A: 25        .byte $25   ; 
- D 0 - I - 0x00173B 00:972B: 24        .byte $24   ; 
off_E8_972C:
- D 0 - I - 0x00173C 00:972C: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x00173E 00:972E: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001740 00:9730: 87        .byte $87   ; 
- D 0 - I - 0x001741 00:9731: 24        .byte $24   ; 
- D 0 - I - 0x001742 00:9732: 22        .byte $22   ; 
- D 0 - I - 0x001743 00:9733: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x001745 00:9735: 83        .byte $83   ; 
- D 0 - I - 0x001746 00:9736: 20        .byte $20   ; 
- D 0 - I - 0x001747 00:9737: 0C        .byte $0C   ; 
- D 0 - I - 0x001748 00:9738: 20        .byte $20   ; 
- D 0 - I - 0x001749 00:9739: 22        .byte $22   ; 
- D 0 - I - 0x00174A 00:973A: 80        .byte $80   ; 
- D 0 - I - 0x00174B 00:973B: 36        .byte $36   ; 
- D 0 - I - 0x00174C 00:973C: 35        .byte $35   ; 
- D 0 - I - 0x00174D 00:973D: 34        .byte $34   ; 
- D 0 - I - 0x00174E 00:973E: 33        .byte $33   ; 
- D 0 - I - 0x00174F 00:973F: 32        .byte $32   ; 
- D 0 - I - 0x001750 00:9740: 31        .byte $31   ; 
- D 0 - I - 0x001751 00:9741: 30        .byte $30   ; 
- D 0 - I - 0x001752 00:9742: 2B        .byte $2B   ; 
- D 0 - I - 0x001753 00:9743: 2A        .byte $2A   ; 
- D 0 - I - 0x001754 00:9744: 29        .byte $29   ; 
- D 0 - I - 0x001755 00:9745: 28        .byte $28   ; 
- D 0 - I - 0x001756 00:9746: 27        .byte $27   ; 
- D 0 - I - 0x001757 00:9747: 83        .byte $83   ; 
- D 0 - I - 0x001758 00:9748: 0C        .byte $0C   ; 
- D 0 - I - 0x001759 00:9749: 0C        .byte $0C   ; 
- D 0 - I - 0x00175A 00:974A: 0C        .byte $0C   ; 
- D 0 - I - 0x00175B 00:974B: 24        .byte $24   ; 
- D 0 - I - 0x00175C 00:974C: 24        .byte $24   ; 
- D 0 - I - 0x00175D 00:974D: 0C        .byte $0C   ; 
- D 0 - I - 0x00175E 00:974E: 24        .byte $24   ; 
- D 0 - I - 0x00175F 00:974F: 0C        .byte $0C   ; 
- D 0 - I - 0x001760 00:9750: 22        .byte $22   ; 
- D 0 - I - 0x001761 00:9751: 0C        .byte $0C   ; 
- D 0 - I - 0x001762 00:9752: 20        .byte $20   ; 
- D 0 - I - 0x001763 00:9753: 0C        .byte $0C   ; 
- D 0 - I - 0x001764 00:9754: 20        .byte $20   ; 
- D 0 - I - 0x001765 00:9755: 22        .byte $22   ; 
- D 0 - I - 0x001766 00:9756: 80        .byte $80   ; 
- D 0 - I - 0x001767 00:9757: 36        .byte $36   ; 
- D 0 - I - 0x001768 00:9758: 35        .byte $35   ; 
- D 0 - I - 0x001769 00:9759: 34        .byte $34   ; 
- D 0 - I - 0x00176A 00:975A: 33        .byte $33   ; 
- D 0 - I - 0x00176B 00:975B: 32        .byte $32   ; 
- D 0 - I - 0x00176C 00:975C: 31        .byte $31   ; 
- D 0 - I - 0x00176D 00:975D: 30        .byte $30   ; 
- D 0 - I - 0x00176E 00:975E: 2B        .byte $2B   ; 
- D 0 - I - 0x00176F 00:975F: 2A        .byte $2A   ; 
- D 0 - I - 0x001770 00:9760: 29        .byte $29   ; 
- D 0 - I - 0x001771 00:9761: 28        .byte $28   ; 
- D 0 - I - 0x001772 00:9762: 27        .byte $27   ; 
- D 0 - I - 0x001773 00:9763: 83        .byte $83   ; 
- D 0 - I - 0x001774 00:9764: 0C        .byte $0C   ; 
- D 0 - I - 0x001775 00:9765: 0C        .byte $0C   ; 
- D 0 - I - 0x001776 00:9766: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001778 00:9768: 87        .byte $87   ; 
- D 0 - I - 0x001779 00:9769: 24        .byte $24   ; 
- D 0 - I - 0x00177A 00:976A: 22        .byte $22   ; 
- D 0 - I - 0x00177B 00:976B: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x00177D 00:976D: 83        .byte $83   ; 
- D 0 - I - 0x00177E 00:976E: 20        .byte $20   ; 
- D 0 - I - 0x00177F 00:976F: 0C        .byte $0C   ; 
- D 0 - I - 0x001780 00:9770: 20        .byte $20   ; 
- D 0 - I - 0x001781 00:9771: 22        .byte $22   ; 
- D 0 - I - 0x001782 00:9772: 80        .byte $80   ; 
- D 0 - I - 0x001783 00:9773: 36        .byte $36   ; 
- D 0 - I - 0x001784 00:9774: 35        .byte $35   ; 
- D 0 - I - 0x001785 00:9775: 34        .byte $34   ; 
- D 0 - I - 0x001786 00:9776: 33        .byte $33   ; 
- D 0 - I - 0x001787 00:9777: 32        .byte $32   ; 
- D 0 - I - 0x001788 00:9778: 31        .byte $31   ; 
- D 0 - I - 0x001789 00:9779: 30        .byte $30   ; 
- D 0 - I - 0x00178A 00:977A: 2B        .byte $2B   ; 
- D 0 - I - 0x00178B 00:977B: 2A        .byte $2A   ; 
- D 0 - I - 0x00178C 00:977C: 29        .byte $29   ; 
- D 0 - I - 0x00178D 00:977D: 28        .byte $28   ; 
- D 0 - I - 0x00178E 00:977E: 27        .byte $27   ; 
- D 0 - I - 0x00178F 00:977F: 83        .byte $83   ; 
- D 0 - I - 0x001790 00:9780: 0C        .byte $0C   ; 
- D 0 - I - 0x001791 00:9781: 0C        .byte $0C   ; 
- D 0 - I - 0x001792 00:9782: 0C        .byte $0C   ; 
- D 0 - I - 0x001793 00:9783: 24        .byte $24   ; 
- D 0 - I - 0x001794 00:9784: 24        .byte $24   ; 
- D 0 - I - 0x001795 00:9785: 0C        .byte $0C   ; 
- D 0 - I - 0x001796 00:9786: 24        .byte $24   ; 
- D 0 - I - 0x001797 00:9787: 0C        .byte $0C   ; 
- D 0 - I - 0x001798 00:9788: 26        .byte $26   ; 
- D 0 - I - 0x001799 00:9789: 0C        .byte $0C   ; 
- D 0 - I - 0x00179A 00:978A: 80        .byte $80   ; 
- D 0 - I - 0x00179B 00:978B: 36        .byte $36   ; 
- D 0 - I - 0x00179C 00:978C: 35        .byte $35   ; 
- D 0 - I - 0x00179D 00:978D: 34        .byte $34   ; 
- D 0 - I - 0x00179E 00:978E: 33        .byte $33   ; 
- D 0 - I - 0x00179F 00:978F: 32        .byte $32   ; 
- D 0 - I - 0x0017A0 00:9790: 31        .byte $31   ; 
- D 0 - I - 0x0017A1 00:9791: 30        .byte $30   ; 
- D 0 - I - 0x0017A2 00:9792: 2B        .byte $2B   ; 
- D 0 - I - 0x0017A3 00:9793: 2A        .byte $2A   ; 
- D 0 - I - 0x0017A4 00:9794: 29        .byte $29   ; 
- D 0 - I - 0x0017A5 00:9795: 28        .byte $28   ; 
- D 0 - I - 0x0017A6 00:9796: 27        .byte $27   ; 
- D 0 - I - 0x0017A7 00:9797: 83        .byte $83   ; 
- D 0 - I - 0x0017A8 00:9798: 0C        .byte $0C   ; 
- D 0 - I - 0x0017A9 00:9799: 80        .byte $80   ; 
- D 0 - I - 0x0017AA 00:979A: 36        .byte $36   ; 
- D 0 - I - 0x0017AB 00:979B: 35        .byte $35   ; 
- D 0 - I - 0x0017AC 00:979C: 34        .byte $34   ; 
- D 0 - I - 0x0017AD 00:979D: 33        .byte $33   ; 
- D 0 - I - 0x0017AE 00:979E: 32        .byte $32   ; 
- D 0 - I - 0x0017AF 00:979F: 31        .byte $31   ; 
- D 0 - I - 0x0017B0 00:97A0: 30        .byte $30   ; 
- D 0 - I - 0x0017B1 00:97A1: 2B        .byte $2B   ; 
- D 0 - I - 0x0017B2 00:97A2: 2A        .byte $2A   ; 
- D 0 - I - 0x0017B3 00:97A3: 29        .byte $29   ; 
- D 0 - I - 0x0017B4 00:97A4: 28        .byte $28   ; 
- D 0 - I - 0x0017B5 00:97A5: 27        .byte $27   ; 
- D 0 - I - 0x0017B6 00:97A6: 83        .byte $83   ; 
- D 0 - I - 0x0017B7 00:97A7: 0C        .byte $0C   ; 
- D 0 - I - 0x0017B8 00:97A8: 80        .byte $80   ; 
- D 0 - I - 0x0017B9 00:97A9: 33        .byte $33   ; 
- D 0 - I - 0x0017BA 00:97AA: 32        .byte $32   ; 
- D 0 - I - 0x0017BB 00:97AB: 31        .byte $31   ; 
- D 0 - I - 0x0017BC 00:97AC: 30        .byte $30   ; 
- D 0 - I - 0x0017BD 00:97AD: 2B        .byte $2B   ; 
- D 0 - I - 0x0017BE 00:97AE: 2A        .byte $2A   ; 
- D 0 - I - 0x0017BF 00:97AF: 29        .byte $29   ; 
- D 0 - I - 0x0017C0 00:97B0: 28        .byte $28   ; 
- D 0 - I - 0x0017C1 00:97B1: 27        .byte $27   ; 
- D 0 - I - 0x0017C2 00:97B2: 26        .byte $26   ; 
- D 0 - I - 0x0017C3 00:97B3: 25        .byte $25   ; 
- D 0 - I - 0x0017C4 00:97B4: 24        .byte $24   ; 
- D 0 - I - 0x0017C5 00:97B5: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0017C6 00:97B6: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0017C8 00:97B8: 85        .byte $85   ; 
- D 0 - I - 0x0017C9 00:97B9: 20        .byte $20   ; 
- D 0 - I - 0x0017CA 00:97BA: 20        .byte $20   ; 
- D 0 - I - 0x0017CB 00:97BB: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x0017CD 00:97BD: 83        .byte $83   ; 
- D 0 - I - 0x0017CE 00:97BE: 20        .byte $20   ; 
- D 0 - I - 0x0017CF 00:97BF: 0C        .byte $0C   ; 
- D 0 - I - 0x0017D0 00:97C0: 20        .byte $20   ; 
- D 0 - I - 0x0017D1 00:97C1: 20        .byte $20   ; 
- D 0 - I - 0x0017D2 00:97C2: 0C        .byte $0C   ; 
- D 0 - I - 0x0017D3 00:97C3: 20        .byte $20   ; 
- D 0 - I - 0x0017D4 00:97C4: 20        .byte $20   ; 
- D 0 - I - 0x0017D5 00:97C5: 0C        .byte $0C   ; 
- D 0 - I - 0x0017D6 00:97C6: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0017D8 00:97C8: 85        .byte $85   ; 
- D 0 - I - 0x0017D9 00:97C9: 20        .byte $20   ; 
- D 0 - I - 0x0017DA 00:97CA: 20        .byte $20   ; 
- D 0 - I - 0x0017DB 00:97CB: 22        .byte $22   ; 
- D 0 - I - 0x0017DC 00:97CC: 22        .byte $22   ; 
- D 0 - I - 0x0017DD 00:97CD: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x0017DF 00:97CF: 83        .byte $83   ; 
- D 0 - I - 0x0017E0 00:97D0: 22        .byte $22   ; 
- D 0 - I - 0x0017E1 00:97D1: 0C        .byte $0C   ; 
- D 0 - I - 0x0017E2 00:97D2: 22        .byte $22   ; 
- D 0 - I - 0x0017E3 00:97D3: 22        .byte $22   ; 
- D 0 - I - 0x0017E4 00:97D4: 0C        .byte $0C   ; 
- D 0 - I - 0x0017E5 00:97D5: 22        .byte $22   ; 
- D 0 - I - 0x0017E6 00:97D6: 22        .byte $22   ; 
- D 0 - I - 0x0017E7 00:97D7: 0C        .byte $0C   ; 
- D 0 - I - 0x0017E8 00:97D8: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0017EA 00:97DA: 85        .byte $85   ; 
- D 0 - I - 0x0017EB 00:97DB: 22        .byte $22   ; 
- D 0 - I - 0x0017EC 00:97DC: 22        .byte $22   ; 
- D 0 - I - 0x0017ED 00:97DD: 24        .byte $24   ; 
- D 0 - I - 0x0017EE 00:97DE: 24        .byte $24   ; 
- D 0 - I - 0x0017EF 00:97DF: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x0017F1 00:97E1: 83        .byte $83   ; 
- D 0 - I - 0x0017F2 00:97E2: 24        .byte $24   ; 
- D 0 - I - 0x0017F3 00:97E3: 0C        .byte $0C   ; 
- D 0 - I - 0x0017F4 00:97E4: 24        .byte $24   ; 
- D 0 - I - 0x0017F5 00:97E5: 24        .byte $24   ; 
- D 0 - I - 0x0017F6 00:97E6: 0C        .byte $0C   ; 
- D 0 - I - 0x0017F7 00:97E7: 24        .byte $24   ; 
- D 0 - I - 0x0017F8 00:97E8: 24        .byte $24   ; 
- D 0 - I - 0x0017F9 00:97E9: 0C        .byte $0C   ; 
- D 0 - I - 0x0017FA 00:97EA: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x0017FC 00:97EC: 85        .byte $85   ; 
- D 0 - I - 0x0017FD 00:97ED: 24        .byte $24   ; 
- D 0 - I - 0x0017FE 00:97EE: 24        .byte $24   ; 
- D 0 - I - 0x0017FF 00:97EF: 24        .byte $24   ; 
- D 0 - I - 0x001800 00:97F0: 34        .byte $34   ; 
- D 0 - I - 0x001801 00:97F1: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x001803 00:97F3: 83        .byte $83   ; 
- D 0 - I - 0x001804 00:97F4: 22        .byte $22   ; 
- D 0 - I - 0x001805 00:97F5: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001807 00:97F7: 85        .byte $85   ; 
- D 0 - I - 0x001808 00:97F8: 32        .byte $32   ; 
- D 0 - I - 0x001809 00:97F9: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x00180B 00:97FB: 83        .byte $83   ; 
- D 0 - I - 0x00180C 00:97FC: 32        .byte $32   ; 
- D 0 - I - 0x00180D 00:97FD: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x00180F 00:97FF: 85        .byte $85   ; 
- D 0 - I - 0x001810 00:9800: 20        .byte $20   ; 
- D 0 - I - 0x001811 00:9801: 30        .byte $30   ; 
- D 0 - I - 0x001812 00:9802: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x001814 00:9804: 83        .byte $83   ; 
- D 0 - I - 0x001815 00:9805: 1B        .byte $1B   ; 
- D 0 - I - 0x001816 00:9806: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001818 00:9808: 85        .byte $85   ; 
- D 0 - I - 0x001819 00:9809: 2B        .byte $2B   ; 
- D 0 - I - 0x00181A 00:980A: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x00181C 00:980C: 83        .byte $83   ; 
- D 0 - I - 0x00181D 00:980D: 2B        .byte $2B   ; 
- D 0 - I - 0x00181E 00:980E: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001820 00:9810: 85        .byte $85   ; 
- D 0 - I - 0x001821 00:9811: 20        .byte $20   ; 
- D 0 - I - 0x001822 00:9812: 20        .byte $20   ; 
- D 0 - I - 0x001823 00:9813: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x001825 00:9815: 83        .byte $83   ; 
- D 0 - I - 0x001826 00:9816: 20        .byte $20   ; 
- D 0 - I - 0x001827 00:9817: 0C        .byte $0C   ; 
- D 0 - I - 0x001828 00:9818: 20        .byte $20   ; 
- D 0 - I - 0x001829 00:9819: 20        .byte $20   ; 
- D 0 - I - 0x00182A 00:981A: 0C        .byte $0C   ; 
- D 0 - I - 0x00182B 00:981B: 20        .byte $20   ; 
- D 0 - I - 0x00182C 00:981C: 20        .byte $20   ; 
- D 0 - I - 0x00182D 00:981D: 0C        .byte $0C   ; 
- D 0 - I - 0x00182E 00:981E: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001830 00:9820: 85        .byte $85   ; 
- D 0 - I - 0x001831 00:9821: 20        .byte $20   ; 
- D 0 - I - 0x001832 00:9822: 20        .byte $20   ; 
- D 0 - I - 0x001833 00:9823: 22        .byte $22   ; 
- D 0 - I - 0x001834 00:9824: 22        .byte $22   ; 
- D 0 - I - 0x001835 00:9825: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x001837 00:9827: 83        .byte $83   ; 
- D 0 - I - 0x001838 00:9828: 22        .byte $22   ; 
- D 0 - I - 0x001839 00:9829: 0C        .byte $0C   ; 
- D 0 - I - 0x00183A 00:982A: 22        .byte $22   ; 
- D 0 - I - 0x00183B 00:982B: 22        .byte $22   ; 
- D 0 - I - 0x00183C 00:982C: 0C        .byte $0C   ; 
- D 0 - I - 0x00183D 00:982D: 22        .byte $22   ; 
- D 0 - I - 0x00183E 00:982E: 22        .byte $22   ; 
- D 0 - I - 0x00183F 00:982F: 0C        .byte $0C   ; 
- D 0 - I - 0x001840 00:9830: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001842 00:9832: 85        .byte $85   ; 
- D 0 - I - 0x001843 00:9833: 22        .byte $22   ; 
- D 0 - I - 0x001844 00:9834: 22        .byte $22   ; 
- D 0 - I - 0x001845 00:9835: 24        .byte $24   ; 
- D 0 - I - 0x001846 00:9836: 24        .byte $24   ; 
- D 0 - I - 0x001847 00:9837: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x001849 00:9839: 83        .byte $83   ; 
- D 0 - I - 0x00184A 00:983A: 24        .byte $24   ; 
- D 0 - I - 0x00184B 00:983B: 0C        .byte $0C   ; 
- D 0 - I - 0x00184C 00:983C: 24        .byte $24   ; 
- D 0 - I - 0x00184D 00:983D: 24        .byte $24   ; 
- D 0 - I - 0x00184E 00:983E: 0C        .byte $0C   ; 
- D 0 - I - 0x00184F 00:983F: 24        .byte $24   ; 
- D 0 - I - 0x001850 00:9840: 24        .byte $24   ; 
- D 0 - I - 0x001851 00:9841: 0C        .byte $0C   ; 
- D 0 - I - 0x001852 00:9842: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001854 00:9844: 85        .byte $85   ; 
- D 0 - I - 0x001855 00:9845: 24        .byte $24   ; 
- D 0 - I - 0x001856 00:9846: 24        .byte $24   ; 
- D 0 - I - 0x001857 00:9847: 0C        .byte $0C   ; 
- D 0 - I - 0x001858 00:9848: E0        .byte con_se_cb_E0, $20   ; 
- D 0 - I - 0x00185A 00:984A: 27        .byte $27   ; 
- D 0 - I - 0x00185B 00:984B: 27        .byte $27   ; 
- D 0 - I - 0x00185C 00:984C: 26        .byte $26   ; 
- D 0 - I - 0x00185D 00:984D: 80        .byte $80   ; 
- D 0 - I - 0x00185E 00:984E: 36        .byte $36   ; 
- D 0 - I - 0x00185F 00:984F: 35        .byte $35   ; 
- D 0 - I - 0x001860 00:9850: 34        .byte $34   ; 
- D 0 - I - 0x001861 00:9851: 33        .byte $33   ; 
- D 0 - I - 0x001862 00:9852: 32        .byte $32   ; 
- D 0 - I - 0x001863 00:9853: 31        .byte $31   ; 
- D 0 - I - 0x001864 00:9854: 30        .byte $30   ; 
- D 0 - I - 0x001865 00:9855: 2B        .byte $2B   ; 
- D 0 - I - 0x001866 00:9856: 2A        .byte $2A   ; 
- D 0 - I - 0x001867 00:9857: 29        .byte $29   ; 
- D 0 - I - 0x001868 00:9858: 28        .byte $28   ; 
- D 0 - I - 0x001869 00:9859: 27        .byte $27   ; 
- D 0 - I - 0x00186A 00:985A: 83        .byte $83   ; 
- D 0 - I - 0x00186B 00:985B: 0C        .byte $0C   ; 
- D 0 - I - 0x00186C 00:985C: 80        .byte $80   ; 
- D 0 - I - 0x00186D 00:985D: 36        .byte $36   ; 
- D 0 - I - 0x00186E 00:985E: 35        .byte $35   ; 
- D 0 - I - 0x00186F 00:985F: 34        .byte $34   ; 
- D 0 - I - 0x001870 00:9860: 33        .byte $33   ; 
- D 0 - I - 0x001871 00:9861: 32        .byte $32   ; 
- D 0 - I - 0x001872 00:9862: 31        .byte $31   ; 
- D 0 - I - 0x001873 00:9863: 30        .byte $30   ; 
- D 0 - I - 0x001874 00:9864: 2B        .byte $2B   ; 
- D 0 - I - 0x001875 00:9865: 2A        .byte $2A   ; 
- D 0 - I - 0x001876 00:9866: 29        .byte $29   ; 
- D 0 - I - 0x001877 00:9867: 28        .byte $28   ; 
- D 0 - I - 0x001878 00:9868: 27        .byte $27   ; 
- D 0 - I - 0x001879 00:9869: 83        .byte $83   ; 
- D 0 - I - 0x00187A 00:986A: 0C        .byte $0C   ; 
- D 0 - I - 0x00187B 00:986B: 80        .byte $80   ; 
- D 0 - I - 0x00187C 00:986C: 33        .byte $33   ; 
- D 0 - I - 0x00187D 00:986D: 32        .byte $32   ; 
- D 0 - I - 0x00187E 00:986E: 31        .byte $31   ; 
- D 0 - I - 0x00187F 00:986F: 30        .byte $30   ; 
- D 0 - I - 0x001880 00:9870: 2B        .byte $2B   ; 
- D 0 - I - 0x001881 00:9871: 2A        .byte $2A   ; 
- D 0 - I - 0x001882 00:9872: 29        .byte $29   ; 
- D 0 - I - 0x001883 00:9873: 28        .byte $28   ; 
- D 0 - I - 0x001884 00:9874: 27        .byte $27   ; 
- D 0 - I - 0x001885 00:9875: 26        .byte $26   ; 
- D 0 - I - 0x001886 00:9876: 25        .byte $25   ; 
- D 0 - I - 0x001887 00:9877: 24        .byte $24   ; 
- D 0 - I - 0x001888 00:9878: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x001889 00:9879: 2C 97     .word off_E8_972C



off_ch_17_987B_07:
- D 0 - I - 0x00188B 00:987B: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x00188D 00:987D: 85        .byte $85   ; 
- D 0 - I - 0x00188E 00:987E: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x001890 00:9880: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x001892 00:9882: 03        .byte $03   ; 
- D 0 - I - 0x001893 00:9883: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x001895 00:9885: 05        .byte $05   ; 
- D 0 - I - 0x001896 00:9886: EC        .byte con_se_cb_EC   ; 
off_E8_9887:
- D 0 - I - 0x001897 00:9887: EB        .byte con_se_cb_EB, $07   ; 
- D 0 - I - 0x001899 00:9889: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x00189B 00:988B: 85        .byte $85   ; 
- D 0 - I - 0x00189C 00:988C: 03        .byte $03   ; 
- D 0 - I - 0x00189D 00:988D: 03        .byte $03   ; 
- D 0 - I - 0x00189E 00:988E: E0        .byte con_se_cb_E0, $3C   ; 
- D 0 - I - 0x0018A0 00:9890: 87        .byte $87   ; 
- D 0 - I - 0x0018A1 00:9891: 07        .byte $07   ; 
- D 0 - I - 0x0018A2 00:9892: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x0018A4 00:9894: 85        .byte $85   ; 
- D 0 - I - 0x0018A5 00:9895: 03        .byte $03   ; 
- D 0 - I - 0x0018A6 00:9896: 03        .byte $03   ; 
- D 0 - I - 0x0018A7 00:9897: E0        .byte con_se_cb_E0, $3C   ; 
- D 0 - I - 0x0018A9 00:9899: 87        .byte $87   ; 
- D 0 - I - 0x0018AA 00:989A: 07        .byte $07   ; 
- D 0 - I - 0x0018AB 00:989B: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0018AC 00:989C: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x0018AE 00:989E: 85        .byte $85   ; 
- D 0 - I - 0x0018AF 00:989F: 03        .byte $03   ; 
- D 0 - I - 0x0018B0 00:98A0: 03        .byte $03   ; 
- D 0 - I - 0x0018B1 00:98A1: E0        .byte con_se_cb_E0, $3C   ; 
- D 0 - I - 0x0018B3 00:98A3: 87        .byte $87   ; 
- D 0 - I - 0x0018B4 00:98A4: 07        .byte $07   ; 
- D 0 - I - 0x0018B5 00:98A5: 85        .byte $85   ; 
- D 0 - I - 0x0018B6 00:98A6: 83        .byte $83   ; 
- D 0 - I - 0x0018B7 00:98A7: 07        .byte $07   ; 
- D 0 - I - 0x0018B8 00:98A8: 07        .byte $07   ; 
- D 0 - I - 0x0018B9 00:98A9: 85        .byte $85   ; 
- D 0 - I - 0x0018BA 00:98AA: 07        .byte $07   ; 
- D 0 - I - 0x0018BB 00:98AB: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x0018BD 00:98AD: EB        .byte con_se_cb_EB, $07   ; 
- D 0 - I - 0x0018BF 00:98AF: 85        .byte $85   ; 
- D 0 - I - 0x0018C0 00:98B0: 03        .byte $03   ; 
- D 0 - I - 0x0018C1 00:98B1: 03        .byte $03   ; 
- D 0 - I - 0x0018C2 00:98B2: E0        .byte con_se_cb_E0, $3C   ; 
- D 0 - I - 0x0018C4 00:98B4: 87        .byte $87   ; 
- D 0 - I - 0x0018C5 00:98B5: 07        .byte $07   ; 
- D 0 - I - 0x0018C6 00:98B6: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x0018C8 00:98B8: 85        .byte $85   ; 
- D 0 - I - 0x0018C9 00:98B9: 03        .byte $03   ; 
- D 0 - I - 0x0018CA 00:98BA: 03        .byte $03   ; 
- D 0 - I - 0x0018CB 00:98BB: E0        .byte con_se_cb_E0, $3D   ; 
- D 0 - I - 0x0018CD 00:98BD: 0A        .byte $0A   ; 
- D 0 - I - 0x0018CE 00:98BE: E0        .byte con_se_cb_E0, $3B   ; 
- D 0 - I - 0x0018D0 00:98C0: 03        .byte $03   ; 
- D 0 - I - 0x0018D1 00:98C1: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0018D2 00:98C2: 85        .byte $85   ; 
- D 0 - I - 0x0018D3 00:98C3: 03        .byte $03   ; 
- D 0 - I - 0x0018D4 00:98C4: 03        .byte $03   ; 
- D 0 - I - 0x0018D5 00:98C5: E0        .byte con_se_cb_E0, $3C   ; 
- D 0 - I - 0x0018D7 00:98C7: 87        .byte $87   ; 
- D 0 - I - 0x0018D8 00:98C8: 07        .byte $07   ; 
- D 0 - I - 0x0018D9 00:98C9: E0        .byte con_se_cb_E0, $3D   ; 
- D 0 - I - 0x0018DB 00:98CB: 85        .byte $85   ; 
- D 0 - I - 0x0018DC 00:98CC: 83        .byte $83   ; 
- D 0 - I - 0x0018DD 00:98CD: 0A        .byte $0A   ; 
- D 0 - I - 0x0018DE 00:98CE: 0A        .byte $0A   ; 
- D 0 - I - 0x0018DF 00:98CF: 85        .byte $85   ; 
- D 0 - I - 0x0018E0 00:98D0: 0A        .byte $0A   ; 
- D 0 - I - 0x0018E1 00:98D1: E8        .byte con_se_cb_jmp   ; 
- D 0 - I - 0x0018E2 00:98D2: 87 98     .word off_E8_9887



_music_98D4_15_credits:
- D 0 - I - 0x0018E4 00:98D4: 04        .byte $04   ; 
- D 0 - I - 0x0018E5 00:98D5: E1 98     .word off_ch_15_98E1_04
- D 0 - I - 0x0018E7 00:98D7: 05        .byte $05   ; 
- D 0 - I - 0x0018E8 00:98D8: C3 9A     .word off_ch_15_9AC3_05
- D 0 - I - 0x0018EA 00:98DA: 06        .byte $06   ; 
- D 0 - I - 0x0018EB 00:98DB: AC 9C     .word off_ch_15_9CAC_06
- D 0 - I - 0x0018ED 00:98DD: 07        .byte $07   ; 
- D 0 - I - 0x0018EE 00:98DE: AF 9F     .word off_ch_15_9FAF_07
- D 0 - I - 0x0018F0 00:98E0: FF        .byte $FF   ; 



off_ch_15_98E1_04:
- D 0 - I - 0x0018F1 00:98E1: FC        .byte con_se_cb_FC   ; 
- D 0 - I - 0x0018F2 00:98E2: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x0018F4 00:98E4: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0018F6 00:98E6: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x0018F8 00:98E8: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0018FA 00:98EA: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x0018FC 00:98EC: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x0018FE 00:98EE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0018FF 00:98EF: 86        .byte $86   ; 
- D 0 - I - 0x001900 00:98F0: 34        .byte $34   ; 
- D 0 - I - 0x001901 00:98F1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001902 00:98F2: 84        .byte $84   ; 
- D 0 - I - 0x001903 00:98F3: 34        .byte $34   ; 
- D 0 - I - 0x001904 00:98F4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001905 00:98F5: 86        .byte $86   ; 
- D 0 - I - 0x001906 00:98F6: 35        .byte $35   ; 
- D 0 - I - 0x001907 00:98F7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001908 00:98F8: 84        .byte $84   ; 
- D 0 - I - 0x001909 00:98F9: 35        .byte $35   ; 
- D 0 - I - 0x00190A 00:98FA: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x00190C 00:98FC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00190D 00:98FD: 88        .byte $88   ; 
- D 0 - I - 0x00190E 00:98FE: 34        .byte $34   ; 
- D 0 - I - 0x00190F 00:98FF: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001911 00:9901: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001912 00:9902: 86        .byte $86   ; 
- D 0 - I - 0x001913 00:9903: 35        .byte $35   ; 
- D 0 - I - 0x001914 00:9904: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001915 00:9905: 34        .byte $34   ; 
- D 0 - I - 0x001916 00:9906: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001917 00:9907: 35        .byte $35   ; 
- D 0 - I - 0x001918 00:9908: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001919 00:9909: 34        .byte $34   ; 
- D 0 - I - 0x00191A 00:990A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00191B 00:990B: 84        .byte $84   ; 
- D 0 - I - 0x00191C 00:990C: 34        .byte $34   ; 
- D 0 - I - 0x00191D 00:990D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00191E 00:990E: 86        .byte $86   ; 
- D 0 - I - 0x00191F 00:990F: 35        .byte $35   ; 
- D 0 - I - 0x001920 00:9910: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001921 00:9911: 84        .byte $84   ; 
- D 0 - I - 0x001922 00:9912: 35        .byte $35   ; 
- D 0 - I - 0x001923 00:9913: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001924 00:9914: 34        .byte $34   ; 
- D 0 - I - 0x001925 00:9915: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001927 00:9917: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001928 00:9918: 87        .byte $87   ; 
- D 0 - I - 0x001929 00:9919: 34        .byte $34   ; 
- D 0 - I - 0x00192A 00:991A: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x00192C 00:991C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00192D 00:991D: 86        .byte $86   ; 
- D 0 - I - 0x00192E 00:991E: 32        .byte $32   ; 
- D 0 - I - 0x00192F 00:991F: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001931 00:9921: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001932 00:9922: 88        .byte $88   ; 
- D 0 - I - 0x001933 00:9923: 32        .byte $32   ; 
- D 0 - I - 0x001934 00:9924: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001935 00:9925: ED        .byte con_se_cb_ED, $13   ; 
- D 0 - I - 0x001937 00:9927: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001939 00:9929: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00193A 00:992A: 86        .byte $86   ; 
- D 0 - I - 0x00193B 00:992B: 30        .byte $30   ; 
- D 0 - I - 0x00193C 00:992C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00193D 00:992D: 30        .byte $30   ; 
- D 0 - I - 0x00193E 00:992E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00193F 00:992F: 32        .byte $32   ; 
- D 0 - I - 0x001940 00:9930: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001941 00:9931: 84        .byte $84   ; 
- D 0 - I - 0x001942 00:9932: 32        .byte $32   ; 
- D 0 - I - 0x001943 00:9933: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001944 00:9934: 86        .byte $86   ; 
- D 0 - I - 0x001945 00:9935: 34        .byte $34   ; 
- D 0 - I - 0x001946 00:9936: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001947 00:9937: 34        .byte $34   ; 
- D 0 - I - 0x001948 00:9938: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001949 00:9939: 84        .byte $84   ; 
- D 0 - I - 0x00194A 00:993A: 34        .byte $34   ; 
- D 0 - I - 0x00194B 00:993B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00194C 00:993C: 86        .byte $86   ; 
- D 0 - I - 0x00194D 00:993D: 34        .byte $34   ; 
- D 0 - I - 0x00194E 00:993E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00194F 00:993F: 32        .byte $32   ; 
- D 0 - I - 0x001950 00:9940: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001951 00:9941: 30        .byte $30   ; 
- D 0 - I - 0x001952 00:9942: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001953 00:9943: 30        .byte $30   ; 
- D 0 - I - 0x001954 00:9944: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001955 00:9945: 32        .byte $32   ; 
- D 0 - I - 0x001956 00:9946: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001957 00:9947: 84        .byte $84   ; 
- D 0 - I - 0x001958 00:9948: 32        .byte $32   ; 
- D 0 - I - 0x001959 00:9949: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00195A 00:994A: 86        .byte $86   ; 
- D 0 - I - 0x00195B 00:994B: 37        .byte $37   ; 
- D 0 - I - 0x00195C 00:994C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00195D 00:994D: 37        .byte $37   ; 
- D 0 - I - 0x00195E 00:994E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00195F 00:994F: 84        .byte $84   ; 
- D 0 - I - 0x001960 00:9950: 35        .byte $35   ; 
- D 0 - I - 0x001961 00:9951: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001962 00:9952: 86        .byte $86   ; 
- D 0 - I - 0x001963 00:9953: 34        .byte $34   ; 
- D 0 - I - 0x001964 00:9954: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001965 00:9955: 32        .byte $32   ; 
- D 0 - I - 0x001966 00:9956: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001967 00:9957: 30        .byte $30   ; 
- D 0 - I - 0x001968 00:9958: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001969 00:9959: 30        .byte $30   ; 
- D 0 - I - 0x00196A 00:995A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00196B 00:995B: 32        .byte $32   ; 
- D 0 - I - 0x00196C 00:995C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00196D 00:995D: 84        .byte $84   ; 
- D 0 - I - 0x00196E 00:995E: 32        .byte $32   ; 
- D 0 - I - 0x00196F 00:995F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001970 00:9960: 86        .byte $86   ; 
- D 0 - I - 0x001971 00:9961: 34        .byte $34   ; 
- D 0 - I - 0x001972 00:9962: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001973 00:9963: 34        .byte $34   ; 
- D 0 - I - 0x001974 00:9964: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001975 00:9965: 84        .byte $84   ; 
- D 0 - I - 0x001976 00:9966: 34        .byte $34   ; 
- D 0 - I - 0x001977 00:9967: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001978 00:9968: 86        .byte $86   ; 
- D 0 - I - 0x001979 00:9969: 34        .byte $34   ; 
- D 0 - I - 0x00197A 00:996A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00197B 00:996B: 32        .byte $32   ; 
- D 0 - I - 0x00197C 00:996C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00197D 00:996D: 30        .byte $30   ; 
- D 0 - I - 0x00197E 00:996E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00197F 00:996F: 30        .byte $30   ; 
- D 0 - I - 0x001980 00:9970: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001981 00:9971: 32        .byte $32   ; 
- D 0 - I - 0x001982 00:9972: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001983 00:9973: 84        .byte $84   ; 
- D 0 - I - 0x001984 00:9974: 32        .byte $32   ; 
- D 0 - I - 0x001985 00:9975: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001986 00:9976: 86        .byte $86   ; 
- D 0 - I - 0x001987 00:9977: 37        .byte $37   ; 
- D 0 - I - 0x001988 00:9978: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001989 00:9979: 37        .byte $37   ; 
- D 0 - I - 0x00198A 00:997A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00198B 00:997B: 84        .byte $84   ; 
- D 0 - I - 0x00198C 00:997C: 37        .byte $37   ; 
- D 0 - I - 0x00198D 00:997D: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x00198F 00:997F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001990 00:9980: 88        .byte $88   ; 
- D 0 - I - 0x001991 00:9981: 37        .byte $37   ; 
- D 0 - I - 0x001992 00:9982: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001993 00:9983: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001995 00:9985: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001997 00:9987: EB        .byte con_se_cb_EB, $07   ; 
- D 0 - I - 0x001999 00:9989: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x00199B 00:998B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00199C 00:998C: 86        .byte $86   ; 
- D 0 - I - 0x00199D 00:998D: 30        .byte $30   ; 
- D 0 - I - 0x00199E 00:998E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x00199F 00:998F: 30        .byte $30   ; 
- D 0 - I - 0x0019A0 00:9990: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019A1 00:9991: 30        .byte $30   ; 
- D 0 - I - 0x0019A2 00:9992: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019A3 00:9993: 84        .byte $84   ; 
- D 0 - I - 0x0019A4 00:9994: 2B        .byte $2B   ; 
- D 0 - I - 0x0019A5 00:9995: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019A6 00:9996: 86        .byte $86   ; 
- D 0 - I - 0x0019A7 00:9997: 2B        .byte $2B   ; 
- D 0 - I - 0x0019A8 00:9998: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019A9 00:9999: 84        .byte $84   ; 
- D 0 - I - 0x0019AA 00:999A: 2B        .byte $2B   ; 
- D 0 - I - 0x0019AB 00:999B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019AC 00:999C: 86        .byte $86   ; 
- D 0 - I - 0x0019AD 00:999D: 2B        .byte $2B   ; 
- D 0 - I - 0x0019AE 00:999E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019AF 00:999F: 2B        .byte $2B   ; 
- D 0 - I - 0x0019B0 00:99A0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019B1 00:99A1: 2B        .byte $2B   ; 
- D 0 - I - 0x0019B2 00:99A2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019B3 00:99A3: 29        .byte $29   ; 
- D 0 - I - 0x0019B4 00:99A4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019B5 00:99A5: 29        .byte $29   ; 
- D 0 - I - 0x0019B6 00:99A6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019B7 00:99A7: 29        .byte $29   ; 
- D 0 - I - 0x0019B8 00:99A8: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019B9 00:99A9: 84        .byte $84   ; 
- D 0 - I - 0x0019BA 00:99AA: 2B        .byte $2B   ; 
- D 0 - I - 0x0019BB 00:99AB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019BC 00:99AC: 86        .byte $86   ; 
- D 0 - I - 0x0019BD 00:99AD: 2B        .byte $2B   ; 
- D 0 - I - 0x0019BE 00:99AE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019BF 00:99AF: 84        .byte $84   ; 
- D 0 - I - 0x0019C0 00:99B0: 2B        .byte $2B   ; 
- D 0 - I - 0x0019C1 00:99B1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019C2 00:99B2: 86        .byte $86   ; 
- D 0 - I - 0x0019C3 00:99B3: 2B        .byte $2B   ; 
- D 0 - I - 0x0019C4 00:99B4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019C5 00:99B5: 2B        .byte $2B   ; 
- D 0 - I - 0x0019C6 00:99B6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019C7 00:99B7: 2B        .byte $2B   ; 
- D 0 - I - 0x0019C8 00:99B8: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x0019C9 00:99B9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019CA 00:99BA: 86        .byte $86   ; 
- D 0 - I - 0x0019CB 00:99BB: 30        .byte $30   ; 
- D 0 - I - 0x0019CC 00:99BC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019CD 00:99BD: 30        .byte $30   ; 
- D 0 - I - 0x0019CE 00:99BE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019CF 00:99BF: 30        .byte $30   ; 
- D 0 - I - 0x0019D0 00:99C0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019D1 00:99C1: 84        .byte $84   ; 
- D 0 - I - 0x0019D2 00:99C2: 2B        .byte $2B   ; 
- D 0 - I - 0x0019D3 00:99C3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019D4 00:99C4: 86        .byte $86   ; 
- D 0 - I - 0x0019D5 00:99C5: 2B        .byte $2B   ; 
- D 0 - I - 0x0019D6 00:99C6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019D7 00:99C7: 84        .byte $84   ; 
- D 0 - I - 0x0019D8 00:99C8: 2B        .byte $2B   ; 
- D 0 - I - 0x0019D9 00:99C9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019DA 00:99CA: 86        .byte $86   ; 
- D 0 - I - 0x0019DB 00:99CB: 2B        .byte $2B   ; 
- D 0 - I - 0x0019DC 00:99CC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019DD 00:99CD: 2B        .byte $2B   ; 
- D 0 - I - 0x0019DE 00:99CE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019DF 00:99CF: 2B        .byte $2B   ; 
- D 0 - I - 0x0019E0 00:99D0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019E1 00:99D1: 29        .byte $29   ; 
- D 0 - I - 0x0019E2 00:99D2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019E3 00:99D3: 29        .byte $29   ; 
- D 0 - I - 0x0019E4 00:99D4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019E5 00:99D5: 29        .byte $29   ; 
- D 0 - I - 0x0019E6 00:99D6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019E7 00:99D7: 84        .byte $84   ; 
- D 0 - I - 0x0019E8 00:99D8: 32        .byte $32   ; 
- D 0 - I - 0x0019E9 00:99D9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019EA 00:99DA: 86        .byte $86   ; 
- D 0 - I - 0x0019EB 00:99DB: 32        .byte $32   ; 
- D 0 - I - 0x0019EC 00:99DC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019ED 00:99DD: 84        .byte $84   ; 
- D 0 - I - 0x0019EE 00:99DE: 32        .byte $32   ; 
- D 0 - I - 0x0019EF 00:99DF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019F0 00:99E0: 86        .byte $86   ; 
- D 0 - I - 0x0019F1 00:99E1: 32        .byte $32   ; 
- D 0 - I - 0x0019F2 00:99E2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019F3 00:99E3: 32        .byte $32   ; 
- D 0 - I - 0x0019F4 00:99E4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x0019F5 00:99E5: 32        .byte $32   ; 
- D 0 - I - 0x0019F6 00:99E6: EB        .byte con_se_cb_EB, $04   ; 
- D 0 - I - 0x0019F8 00:99E8: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x0019FA 00:99EA: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x0019FC 00:99EC: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x0019FE 00:99EE: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001A00 00:99F0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A01 00:99F1: 86        .byte $86   ; 
- D 0 - I - 0x001A02 00:99F2: 34        .byte $34   ; 
- D 0 - I - 0x001A03 00:99F3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A04 00:99F4: 84        .byte $84   ; 
- D 0 - I - 0x001A05 00:99F5: 34        .byte $34   ; 
- D 0 - I - 0x001A06 00:99F6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A07 00:99F7: 86        .byte $86   ; 
- D 0 - I - 0x001A08 00:99F8: 35        .byte $35   ; 
- D 0 - I - 0x001A09 00:99F9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A0A 00:99FA: 84        .byte $84   ; 
- D 0 - I - 0x001A0B 00:99FB: 35        .byte $35   ; 
- D 0 - I - 0x001A0C 00:99FC: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001A0E 00:99FE: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A0F 00:99FF: 88        .byte $88   ; 
- D 0 - I - 0x001A10 00:9A00: 34        .byte $34   ; 
- D 0 - I - 0x001A11 00:9A01: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001A13 00:9A03: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A14 00:9A04: 86        .byte $86   ; 
- D 0 - I - 0x001A15 00:9A05: 35        .byte $35   ; 
- D 0 - I - 0x001A16 00:9A06: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A17 00:9A07: 34        .byte $34   ; 
- D 0 - I - 0x001A18 00:9A08: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A19 00:9A09: 35        .byte $35   ; 
- D 0 - I - 0x001A1A 00:9A0A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A1B 00:9A0B: 34        .byte $34   ; 
- D 0 - I - 0x001A1C 00:9A0C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A1D 00:9A0D: 84        .byte $84   ; 
- D 0 - I - 0x001A1E 00:9A0E: 34        .byte $34   ; 
- D 0 - I - 0x001A1F 00:9A0F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A20 00:9A10: 86        .byte $86   ; 
- D 0 - I - 0x001A21 00:9A11: 35        .byte $35   ; 
- D 0 - I - 0x001A22 00:9A12: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A23 00:9A13: 84        .byte $84   ; 
- D 0 - I - 0x001A24 00:9A14: 35        .byte $35   ; 
- D 0 - I - 0x001A25 00:9A15: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A26 00:9A16: 34        .byte $34   ; 
- D 0 - I - 0x001A27 00:9A17: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001A29 00:9A19: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A2A 00:9A1A: 87        .byte $87   ; 
- D 0 - I - 0x001A2B 00:9A1B: 34        .byte $34   ; 
- D 0 - I - 0x001A2C 00:9A1C: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001A2E 00:9A1E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A2F 00:9A1F: 86        .byte $86   ; 
- D 0 - I - 0x001A30 00:9A20: 32        .byte $32   ; 
- D 0 - I - 0x001A31 00:9A21: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001A33 00:9A23: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A34 00:9A24: 88        .byte $88   ; 
- D 0 - I - 0x001A35 00:9A25: 32        .byte $32   ; 
- D 0 - I - 0x001A36 00:9A26: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001A37 00:9A27: ED        .byte con_se_cb_ED, $13   ; 
- D 0 - I - 0x001A39 00:9A29: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001A3B 00:9A2B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A3C 00:9A2C: 86        .byte $86   ; 
- D 0 - I - 0x001A3D 00:9A2D: 30        .byte $30   ; 
- D 0 - I - 0x001A3E 00:9A2E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A3F 00:9A2F: 30        .byte $30   ; 
- D 0 - I - 0x001A40 00:9A30: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A41 00:9A31: 32        .byte $32   ; 
- D 0 - I - 0x001A42 00:9A32: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A43 00:9A33: 84        .byte $84   ; 
- D 0 - I - 0x001A44 00:9A34: 32        .byte $32   ; 
- D 0 - I - 0x001A45 00:9A35: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A46 00:9A36: 86        .byte $86   ; 
- D 0 - I - 0x001A47 00:9A37: 34        .byte $34   ; 
- D 0 - I - 0x001A48 00:9A38: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A49 00:9A39: 34        .byte $34   ; 
- D 0 - I - 0x001A4A 00:9A3A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A4B 00:9A3B: 84        .byte $84   ; 
- D 0 - I - 0x001A4C 00:9A3C: 34        .byte $34   ; 
- D 0 - I - 0x001A4D 00:9A3D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A4E 00:9A3E: 86        .byte $86   ; 
- D 0 - I - 0x001A4F 00:9A3F: 34        .byte $34   ; 
- D 0 - I - 0x001A50 00:9A40: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A51 00:9A41: 32        .byte $32   ; 
- D 0 - I - 0x001A52 00:9A42: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A53 00:9A43: 30        .byte $30   ; 
- D 0 - I - 0x001A54 00:9A44: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A55 00:9A45: 30        .byte $30   ; 
- D 0 - I - 0x001A56 00:9A46: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A57 00:9A47: 32        .byte $32   ; 
- D 0 - I - 0x001A58 00:9A48: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A59 00:9A49: 84        .byte $84   ; 
- D 0 - I - 0x001A5A 00:9A4A: 32        .byte $32   ; 
- D 0 - I - 0x001A5B 00:9A4B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A5C 00:9A4C: 86        .byte $86   ; 
- D 0 - I - 0x001A5D 00:9A4D: 37        .byte $37   ; 
- D 0 - I - 0x001A5E 00:9A4E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A5F 00:9A4F: 37        .byte $37   ; 
- D 0 - I - 0x001A60 00:9A50: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A61 00:9A51: 84        .byte $84   ; 
- D 0 - I - 0x001A62 00:9A52: 35        .byte $35   ; 
- D 0 - I - 0x001A63 00:9A53: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A64 00:9A54: 86        .byte $86   ; 
- D 0 - I - 0x001A65 00:9A55: 34        .byte $34   ; 
- D 0 - I - 0x001A66 00:9A56: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A67 00:9A57: 32        .byte $32   ; 
- D 0 - I - 0x001A68 00:9A58: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A69 00:9A59: 30        .byte $30   ; 
- D 0 - I - 0x001A6A 00:9A5A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A6B 00:9A5B: 30        .byte $30   ; 
- D 0 - I - 0x001A6C 00:9A5C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A6D 00:9A5D: 32        .byte $32   ; 
- D 0 - I - 0x001A6E 00:9A5E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A6F 00:9A5F: 84        .byte $84   ; 
- D 0 - I - 0x001A70 00:9A60: 32        .byte $32   ; 
- D 0 - I - 0x001A71 00:9A61: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A72 00:9A62: 86        .byte $86   ; 
- D 0 - I - 0x001A73 00:9A63: 34        .byte $34   ; 
- D 0 - I - 0x001A74 00:9A64: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A75 00:9A65: 34        .byte $34   ; 
- D 0 - I - 0x001A76 00:9A66: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A77 00:9A67: 84        .byte $84   ; 
- D 0 - I - 0x001A78 00:9A68: 34        .byte $34   ; 
- D 0 - I - 0x001A79 00:9A69: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A7A 00:9A6A: 86        .byte $86   ; 
- D 0 - I - 0x001A7B 00:9A6B: 34        .byte $34   ; 
- D 0 - I - 0x001A7C 00:9A6C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A7D 00:9A6D: 32        .byte $32   ; 
- D 0 - I - 0x001A7E 00:9A6E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A7F 00:9A6F: 30        .byte $30   ; 
- D 0 - I - 0x001A80 00:9A70: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A81 00:9A71: 30        .byte $30   ; 
- D 0 - I - 0x001A82 00:9A72: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A83 00:9A73: 32        .byte $32   ; 
- D 0 - I - 0x001A84 00:9A74: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A85 00:9A75: 84        .byte $84   ; 
- D 0 - I - 0x001A86 00:9A76: 32        .byte $32   ; 
- D 0 - I - 0x001A87 00:9A77: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A88 00:9A78: 86        .byte $86   ; 
- D 0 - I - 0x001A89 00:9A79: 37        .byte $37   ; 
- D 0 - I - 0x001A8A 00:9A7A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A8B 00:9A7B: 37        .byte $37   ; 
- D 0 - I - 0x001A8C 00:9A7C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A8D 00:9A7D: 84        .byte $84   ; 
- D 0 - I - 0x001A8E 00:9A7E: 37        .byte $37   ; 
- D 0 - I - 0x001A8F 00:9A7F: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001A91 00:9A81: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A92 00:9A82: 88        .byte $88   ; 
- D 0 - I - 0x001A93 00:9A83: 37        .byte $37   ; 
- D 0 - I - 0x001A94 00:9A84: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001A95 00:9A85: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x001A97 00:9A87: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001A99 00:9A89: EB        .byte con_se_cb_EB, $03   ; 
- D 0 - I - 0x001A9B 00:9A8B: 86        .byte $86   ; 
- D 0 - I - 0x001A9C 00:9A8C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A9D 00:9A8D: 29        .byte $29   ; 
- D 0 - I - 0x001A9E 00:9A8E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001A9F 00:9A8F: 29        .byte $29   ; 
- D 0 - I - 0x001AA0 00:9A90: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AA1 00:9A91: 2B        .byte $2B   ; 
- D 0 - I - 0x001AA2 00:9A92: 84        .byte $84   ; 
- D 0 - I - 0x001AA3 00:9A93: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AA4 00:9A94: 2B        .byte $2B   ; 
- D 0 - I - 0x001AA5 00:9A95: 86        .byte $86   ; 
- D 0 - I - 0x001AA6 00:9A96: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AA7 00:9A97: 27        .byte $27   ; 
- D 0 - I - 0x001AA8 00:9A98: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AA9 00:9A99: 27        .byte $27   ; 
- D 0 - I - 0x001AAA 00:9A9A: 84        .byte $84   ; 
- D 0 - I - 0x001AAB 00:9A9B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AAC 00:9A9C: 27        .byte $27   ; 
- D 0 - I - 0x001AAD 00:9A9D: 86        .byte $86   ; 
- D 0 - I - 0x001AAE 00:9A9E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AAF 00:9A9F: 30        .byte $30   ; 
- D 0 - I - 0x001AB0 00:9AA0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AB1 00:9AA1: 2B        .byte $2B   ; 
- D 0 - I - 0x001AB2 00:9AA2: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001AB3 00:9AA3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AB4 00:9AA4: 29        .byte $29   ; 
- D 0 - I - 0x001AB5 00:9AA5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AB6 00:9AA6: 29        .byte $29   ; 
- D 0 - I - 0x001AB7 00:9AA7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AB8 00:9AA8: 2B        .byte $2B   ; 
- D 0 - I - 0x001AB9 00:9AA9: 84        .byte $84   ; 
- D 0 - I - 0x001ABA 00:9AAA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001ABB 00:9AAB: 2B        .byte $2B   ; 
- D 0 - I - 0x001ABC 00:9AAC: 86        .byte $86   ; 
- D 0 - I - 0x001ABD 00:9AAD: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001ABE 00:9AAE: 2B        .byte $2B   ; 
- D 0 - I - 0x001ABF 00:9AAF: E0        .byte con_se_cb_E0, $44   ; 
- D 0 - I - 0x001AC1 00:9AB1: 84        .byte $84   ; 
- D 0 - I - 0x001AC2 00:9AB2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AC3 00:9AB3: 30        .byte $30   ; 
- D 0 - I - 0x001AC4 00:9AB4: 0C        .byte $0C   ; 
- D 0 - I - 0x001AC5 00:9AB5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AC6 00:9AB6: 30        .byte $30   ; 
- D 0 - I - 0x001AC7 00:9AB7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AC8 00:9AB8: 30        .byte $30   ; 
- D 0 - I - 0x001AC9 00:9AB9: 82        .byte $82   ; 
- D 0 - I - 0x001ACA 00:9ABA: E3        .byte con_se_cb_E3, $09   ; 
- D 0 - I - 0x001ACC 00:9ABC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001ACD 00:9ABD: 30        .byte $30   ; 
- D 0 - I - 0x001ACE 00:9ABE: E3        .byte con_se_cb_E3, $0B   ; 
- D 0 - I - 0x001AD0 00:9AC0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AD1 00:9AC1: 30        .byte $30   ; 
- D 0 - I - 0x001AD2 00:9AC2: FF        .byte con_se_cb_stop   ; 



off_ch_15_9AC3_05:
- D 0 - I - 0x001AD3 00:9AC3: 81        .byte $81   ; 
- D 0 - I - 0x001AD4 00:9AC4: 0C        .byte $0C   ; 
- D 0 - I - 0x001AD5 00:9AC5: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001AD7 00:9AC7: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x001AD9 00:9AC9: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x001ADB 00:9ACB: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001ADD 00:9ACD: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x001ADF 00:9ACF: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001AE1 00:9AD1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AE2 00:9AD2: 86        .byte $86   ; 
- D 0 - I - 0x001AE3 00:9AD3: 30        .byte $30   ; 
- D 0 - I - 0x001AE4 00:9AD4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AE5 00:9AD5: 84        .byte $84   ; 
- D 0 - I - 0x001AE6 00:9AD6: 30        .byte $30   ; 
- D 0 - I - 0x001AE7 00:9AD7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AE8 00:9AD8: 86        .byte $86   ; 
- D 0 - I - 0x001AE9 00:9AD9: 32        .byte $32   ; 
- D 0 - I - 0x001AEA 00:9ADA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AEB 00:9ADB: 84        .byte $84   ; 
- D 0 - I - 0x001AEC 00:9ADC: 32        .byte $32   ; 
- D 0 - I - 0x001AED 00:9ADD: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001AEF 00:9ADF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AF0 00:9AE0: 88        .byte $88   ; 
- D 0 - I - 0x001AF1 00:9AE1: 30        .byte $30   ; 
- D 0 - I - 0x001AF2 00:9AE2: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001AF4 00:9AE4: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AF5 00:9AE5: 86        .byte $86   ; 
- D 0 - I - 0x001AF6 00:9AE6: 32        .byte $32   ; 
- D 0 - I - 0x001AF7 00:9AE7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AF8 00:9AE8: 30        .byte $30   ; 
- D 0 - I - 0x001AF9 00:9AE9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AFA 00:9AEA: 32        .byte $32   ; 
- D 0 - I - 0x001AFB 00:9AEB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AFC 00:9AEC: 30        .byte $30   ; 
- D 0 - I - 0x001AFD 00:9AED: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001AFE 00:9AEE: 84        .byte $84   ; 
- D 0 - I - 0x001AFF 00:9AEF: 30        .byte $30   ; 
- D 0 - I - 0x001B00 00:9AF0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B01 00:9AF1: 86        .byte $86   ; 
- D 0 - I - 0x001B02 00:9AF2: 32        .byte $32   ; 
- D 0 - I - 0x001B03 00:9AF3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B04 00:9AF4: 84        .byte $84   ; 
- D 0 - I - 0x001B05 00:9AF5: 32        .byte $32   ; 
- D 0 - I - 0x001B06 00:9AF6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B07 00:9AF7: 30        .byte $30   ; 
- D 0 - I - 0x001B08 00:9AF8: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001B0A 00:9AFA: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B0B 00:9AFB: 87        .byte $87   ; 
- D 0 - I - 0x001B0C 00:9AFC: 30        .byte $30   ; 
- D 0 - I - 0x001B0D 00:9AFD: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001B0F 00:9AFF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B10 00:9B00: 86        .byte $86   ; 
- D 0 - I - 0x001B11 00:9B01: 2B        .byte $2B   ; 
- D 0 - I - 0x001B12 00:9B02: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001B14 00:9B04: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B15 00:9B05: 88        .byte $88   ; 
- D 0 - I - 0x001B16 00:9B06: 2B        .byte $2B   ; 
- D 0 - I - 0x001B17 00:9B07: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001B18 00:9B08: ED        .byte con_se_cb_ED, $13   ; 
- D 0 - I - 0x001B1A 00:9B0A: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001B1C 00:9B0C: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001B1E 00:9B0E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B1F 00:9B0F: 86        .byte $86   ; 
- D 0 - I - 0x001B20 00:9B10: 29        .byte $29   ; 
- D 0 - I - 0x001B21 00:9B11: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B22 00:9B12: 29        .byte $29   ; 
- D 0 - I - 0x001B23 00:9B13: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B24 00:9B14: 2B        .byte $2B   ; 
- D 0 - I - 0x001B25 00:9B15: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B26 00:9B16: 84        .byte $84   ; 
- D 0 - I - 0x001B27 00:9B17: 2B        .byte $2B   ; 
- D 0 - I - 0x001B28 00:9B18: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B29 00:9B19: 86        .byte $86   ; 
- D 0 - I - 0x001B2A 00:9B1A: 30        .byte $30   ; 
- D 0 - I - 0x001B2B 00:9B1B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B2C 00:9B1C: 30        .byte $30   ; 
- D 0 - I - 0x001B2D 00:9B1D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B2E 00:9B1E: 84        .byte $84   ; 
- D 0 - I - 0x001B2F 00:9B1F: 30        .byte $30   ; 
- D 0 - I - 0x001B30 00:9B20: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B31 00:9B21: 86        .byte $86   ; 
- D 0 - I - 0x001B32 00:9B22: 30        .byte $30   ; 
- D 0 - I - 0x001B33 00:9B23: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B34 00:9B24: 2B        .byte $2B   ; 
- D 0 - I - 0x001B35 00:9B25: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B36 00:9B26: 29        .byte $29   ; 
- D 0 - I - 0x001B37 00:9B27: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B38 00:9B28: 29        .byte $29   ; 
- D 0 - I - 0x001B39 00:9B29: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B3A 00:9B2A: 2B        .byte $2B   ; 
- D 0 - I - 0x001B3B 00:9B2B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B3C 00:9B2C: 84        .byte $84   ; 
- D 0 - I - 0x001B3D 00:9B2D: 2B        .byte $2B   ; 
- D 0 - I - 0x001B3E 00:9B2E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B3F 00:9B2F: 86        .byte $86   ; 
- D 0 - I - 0x001B40 00:9B30: 34        .byte $34   ; 
- D 0 - I - 0x001B41 00:9B31: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B42 00:9B32: 34        .byte $34   ; 
- D 0 - I - 0x001B43 00:9B33: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B44 00:9B34: 84        .byte $84   ; 
- D 0 - I - 0x001B45 00:9B35: 32        .byte $32   ; 
- D 0 - I - 0x001B46 00:9B36: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B47 00:9B37: 86        .byte $86   ; 
- D 0 - I - 0x001B48 00:9B38: 30        .byte $30   ; 
- D 0 - I - 0x001B49 00:9B39: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B4A 00:9B3A: 2B        .byte $2B   ; 
- D 0 - I - 0x001B4B 00:9B3B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B4C 00:9B3C: 29        .byte $29   ; 
- D 0 - I - 0x001B4D 00:9B3D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B4E 00:9B3E: 29        .byte $29   ; 
- D 0 - I - 0x001B4F 00:9B3F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B50 00:9B40: 2B        .byte $2B   ; 
- D 0 - I - 0x001B51 00:9B41: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B52 00:9B42: 84        .byte $84   ; 
- D 0 - I - 0x001B53 00:9B43: 2B        .byte $2B   ; 
- D 0 - I - 0x001B54 00:9B44: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B55 00:9B45: 86        .byte $86   ; 
- D 0 - I - 0x001B56 00:9B46: 30        .byte $30   ; 
- D 0 - I - 0x001B57 00:9B47: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B58 00:9B48: 30        .byte $30   ; 
- D 0 - I - 0x001B59 00:9B49: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B5A 00:9B4A: 84        .byte $84   ; 
- D 0 - I - 0x001B5B 00:9B4B: 30        .byte $30   ; 
- D 0 - I - 0x001B5C 00:9B4C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B5D 00:9B4D: 86        .byte $86   ; 
- D 0 - I - 0x001B5E 00:9B4E: 30        .byte $30   ; 
- D 0 - I - 0x001B5F 00:9B4F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B60 00:9B50: 2B        .byte $2B   ; 
- D 0 - I - 0x001B61 00:9B51: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B62 00:9B52: 29        .byte $29   ; 
- D 0 - I - 0x001B63 00:9B53: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B64 00:9B54: 29        .byte $29   ; 
- D 0 - I - 0x001B65 00:9B55: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B66 00:9B56: 2B        .byte $2B   ; 
- D 0 - I - 0x001B67 00:9B57: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B68 00:9B58: 84        .byte $84   ; 
- D 0 - I - 0x001B69 00:9B59: 2B        .byte $2B   ; 
- D 0 - I - 0x001B6A 00:9B5A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B6B 00:9B5B: 86        .byte $86   ; 
- D 0 - I - 0x001B6C 00:9B5C: 34        .byte $34   ; 
- D 0 - I - 0x001B6D 00:9B5D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B6E 00:9B5E: 34        .byte $34   ; 
- D 0 - I - 0x001B6F 00:9B5F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B70 00:9B60: 84        .byte $84   ; 
- D 0 - I - 0x001B71 00:9B61: 34        .byte $34   ; 
- D 0 - I - 0x001B72 00:9B62: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001B74 00:9B64: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B75 00:9B65: 88        .byte $88   ; 
- D 0 - I - 0x001B76 00:9B66: 34        .byte $34   ; 
- D 0 - I - 0x001B77 00:9B67: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001B78 00:9B68: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001B7A 00:9B6A: EB        .byte con_se_cb_EB, $07   ; 
- D 0 - I - 0x001B7C 00:9B6C: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001B7E 00:9B6E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B7F 00:9B6F: 86        .byte $86   ; 
- D 0 - I - 0x001B80 00:9B70: 29        .byte $29   ; 
- D 0 - I - 0x001B81 00:9B71: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B82 00:9B72: 29        .byte $29   ; 
- D 0 - I - 0x001B83 00:9B73: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B84 00:9B74: 29        .byte $29   ; 
- D 0 - I - 0x001B85 00:9B75: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B86 00:9B76: 84        .byte $84   ; 
- D 0 - I - 0x001B87 00:9B77: 27        .byte $27   ; 
- D 0 - I - 0x001B88 00:9B78: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B89 00:9B79: 86        .byte $86   ; 
- D 0 - I - 0x001B8A 00:9B7A: 27        .byte $27   ; 
- D 0 - I - 0x001B8B 00:9B7B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B8C 00:9B7C: 84        .byte $84   ; 
- D 0 - I - 0x001B8D 00:9B7D: 27        .byte $27   ; 
- D 0 - I - 0x001B8E 00:9B7E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B8F 00:9B7F: 86        .byte $86   ; 
- D 0 - I - 0x001B90 00:9B80: 27        .byte $27   ; 
- D 0 - I - 0x001B91 00:9B81: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B92 00:9B82: 27        .byte $27   ; 
- D 0 - I - 0x001B93 00:9B83: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B94 00:9B84: 27        .byte $27   ; 
- D 0 - I - 0x001B95 00:9B85: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B96 00:9B86: 25        .byte $25   ; 
- D 0 - I - 0x001B97 00:9B87: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B98 00:9B88: 25        .byte $25   ; 
- D 0 - I - 0x001B99 00:9B89: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B9A 00:9B8A: 25        .byte $25   ; 
- D 0 - I - 0x001B9B 00:9B8B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B9C 00:9B8C: 84        .byte $84   ; 
- D 0 - I - 0x001B9D 00:9B8D: 27        .byte $27   ; 
- D 0 - I - 0x001B9E 00:9B8E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001B9F 00:9B8F: 86        .byte $86   ; 
- D 0 - I - 0x001BA0 00:9B90: 27        .byte $27   ; 
- D 0 - I - 0x001BA1 00:9B91: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BA2 00:9B92: 84        .byte $84   ; 
- D 0 - I - 0x001BA3 00:9B93: 27        .byte $27   ; 
- D 0 - I - 0x001BA4 00:9B94: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BA5 00:9B95: 86        .byte $86   ; 
- D 0 - I - 0x001BA6 00:9B96: 27        .byte $27   ; 
- D 0 - I - 0x001BA7 00:9B97: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BA8 00:9B98: 27        .byte $27   ; 
- D 0 - I - 0x001BA9 00:9B99: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BAA 00:9B9A: 27        .byte $27   ; 
- D 0 - I - 0x001BAB 00:9B9B: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001BAC 00:9B9C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BAD 00:9B9D: 86        .byte $86   ; 
- D 0 - I - 0x001BAE 00:9B9E: 29        .byte $29   ; 
- D 0 - I - 0x001BAF 00:9B9F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BB0 00:9BA0: 29        .byte $29   ; 
- D 0 - I - 0x001BB1 00:9BA1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BB2 00:9BA2: 29        .byte $29   ; 
- D 0 - I - 0x001BB3 00:9BA3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BB4 00:9BA4: 84        .byte $84   ; 
- D 0 - I - 0x001BB5 00:9BA5: 27        .byte $27   ; 
- D 0 - I - 0x001BB6 00:9BA6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BB7 00:9BA7: 86        .byte $86   ; 
- D 0 - I - 0x001BB8 00:9BA8: 27        .byte $27   ; 
- D 0 - I - 0x001BB9 00:9BA9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BBA 00:9BAA: 84        .byte $84   ; 
- D 0 - I - 0x001BBB 00:9BAB: 27        .byte $27   ; 
- D 0 - I - 0x001BBC 00:9BAC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BBD 00:9BAD: 86        .byte $86   ; 
- D 0 - I - 0x001BBE 00:9BAE: 27        .byte $27   ; 
- D 0 - I - 0x001BBF 00:9BAF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BC0 00:9BB0: 27        .byte $27   ; 
- D 0 - I - 0x001BC1 00:9BB1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BC2 00:9BB2: 27        .byte $27   ; 
- D 0 - I - 0x001BC3 00:9BB3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BC4 00:9BB4: 25        .byte $25   ; 
- D 0 - I - 0x001BC5 00:9BB5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BC6 00:9BB6: 25        .byte $25   ; 
- D 0 - I - 0x001BC7 00:9BB7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BC8 00:9BB8: 25        .byte $25   ; 
- D 0 - I - 0x001BC9 00:9BB9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BCA 00:9BBA: 84        .byte $84   ; 
- D 0 - I - 0x001BCB 00:9BBB: 2B        .byte $2B   ; 
- D 0 - I - 0x001BCC 00:9BBC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BCD 00:9BBD: 86        .byte $86   ; 
- D 0 - I - 0x001BCE 00:9BBE: 2B        .byte $2B   ; 
- D 0 - I - 0x001BCF 00:9BBF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BD0 00:9BC0: 84        .byte $84   ; 
- D 0 - I - 0x001BD1 00:9BC1: 2B        .byte $2B   ; 
- D 0 - I - 0x001BD2 00:9BC2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BD3 00:9BC3: 86        .byte $86   ; 
- D 0 - I - 0x001BD4 00:9BC4: 2B        .byte $2B   ; 
- D 0 - I - 0x001BD5 00:9BC5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BD6 00:9BC6: 2B        .byte $2B   ; 
- D 0 - I - 0x001BD7 00:9BC7: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BD8 00:9BC8: 2B        .byte $2B   ; 
- D 0 - I - 0x001BD9 00:9BC9: EB        .byte con_se_cb_EB, $04   ; 
- D 0 - I - 0x001BDB 00:9BCB: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001BDD 00:9BCD: E2        .byte con_se_cb_E2, $C0   ; 
- D 0 - I - 0x001BDF 00:9BCF: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x001BE1 00:9BD1: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001BE3 00:9BD3: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BE4 00:9BD4: 86        .byte $86   ; 
- D 0 - I - 0x001BE5 00:9BD5: 30        .byte $30   ; 
- D 0 - I - 0x001BE6 00:9BD6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BE7 00:9BD7: 84        .byte $84   ; 
- D 0 - I - 0x001BE8 00:9BD8: 30        .byte $30   ; 
- D 0 - I - 0x001BE9 00:9BD9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BEA 00:9BDA: 86        .byte $86   ; 
- D 0 - I - 0x001BEB 00:9BDB: 32        .byte $32   ; 
- D 0 - I - 0x001BEC 00:9BDC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BED 00:9BDD: 84        .byte $84   ; 
- D 0 - I - 0x001BEE 00:9BDE: 32        .byte $32   ; 
- D 0 - I - 0x001BEF 00:9BDF: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001BF1 00:9BE1: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BF2 00:9BE2: 88        .byte $88   ; 
- D 0 - I - 0x001BF3 00:9BE3: 30        .byte $30   ; 
- D 0 - I - 0x001BF4 00:9BE4: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001BF6 00:9BE6: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BF7 00:9BE7: 86        .byte $86   ; 
- D 0 - I - 0x001BF8 00:9BE8: 32        .byte $32   ; 
- D 0 - I - 0x001BF9 00:9BE9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BFA 00:9BEA: 30        .byte $30   ; 
- D 0 - I - 0x001BFB 00:9BEB: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BFC 00:9BEC: 32        .byte $32   ; 
- D 0 - I - 0x001BFD 00:9BED: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001BFE 00:9BEE: 30        .byte $30   ; 
- D 0 - I - 0x001BFF 00:9BEF: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C00 00:9BF0: 84        .byte $84   ; 
- D 0 - I - 0x001C01 00:9BF1: 30        .byte $30   ; 
- D 0 - I - 0x001C02 00:9BF2: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C03 00:9BF3: 86        .byte $86   ; 
- D 0 - I - 0x001C04 00:9BF4: 32        .byte $32   ; 
- D 0 - I - 0x001C05 00:9BF5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C06 00:9BF6: 84        .byte $84   ; 
- D 0 - I - 0x001C07 00:9BF7: 32        .byte $32   ; 
- D 0 - I - 0x001C08 00:9BF8: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C09 00:9BF9: 30        .byte $30   ; 
- D 0 - I - 0x001C0A 00:9BFA: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001C0C 00:9BFC: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C0D 00:9BFD: 87        .byte $87   ; 
- D 0 - I - 0x001C0E 00:9BFE: 30        .byte $30   ; 
- D 0 - I - 0x001C0F 00:9BFF: E0        .byte con_se_cb_E0, $39   ; 
- D 0 - I - 0x001C11 00:9C01: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C12 00:9C02: 86        .byte $86   ; 
- D 0 - I - 0x001C13 00:9C03: 2B        .byte $2B   ; 
- D 0 - I - 0x001C14 00:9C04: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001C16 00:9C06: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C17 00:9C07: 88        .byte $88   ; 
- D 0 - I - 0x001C18 00:9C08: 2B        .byte $2B   ; 
- D 0 - I - 0x001C19 00:9C09: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001C1A 00:9C0A: ED        .byte con_se_cb_ED, $13   ; 
- D 0 - I - 0x001C1C 00:9C0C: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001C1E 00:9C0E: E2        .byte con_se_cb_E2, $80   ; 
- D 0 - I - 0x001C20 00:9C10: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C21 00:9C11: 86        .byte $86   ; 
- D 0 - I - 0x001C22 00:9C12: 29        .byte $29   ; 
- D 0 - I - 0x001C23 00:9C13: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C24 00:9C14: 29        .byte $29   ; 
- D 0 - I - 0x001C25 00:9C15: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C26 00:9C16: 2B        .byte $2B   ; 
- D 0 - I - 0x001C27 00:9C17: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C28 00:9C18: 84        .byte $84   ; 
- D 0 - I - 0x001C29 00:9C19: 2B        .byte $2B   ; 
- D 0 - I - 0x001C2A 00:9C1A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C2B 00:9C1B: 86        .byte $86   ; 
- D 0 - I - 0x001C2C 00:9C1C: 30        .byte $30   ; 
- D 0 - I - 0x001C2D 00:9C1D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C2E 00:9C1E: 30        .byte $30   ; 
- D 0 - I - 0x001C2F 00:9C1F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C30 00:9C20: 84        .byte $84   ; 
- D 0 - I - 0x001C31 00:9C21: 30        .byte $30   ; 
- D 0 - I - 0x001C32 00:9C22: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C33 00:9C23: 86        .byte $86   ; 
- D 0 - I - 0x001C34 00:9C24: 30        .byte $30   ; 
- D 0 - I - 0x001C35 00:9C25: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C36 00:9C26: 2B        .byte $2B   ; 
- D 0 - I - 0x001C37 00:9C27: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C38 00:9C28: 29        .byte $29   ; 
- D 0 - I - 0x001C39 00:9C29: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C3A 00:9C2A: 29        .byte $29   ; 
- D 0 - I - 0x001C3B 00:9C2B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C3C 00:9C2C: 2B        .byte $2B   ; 
- D 0 - I - 0x001C3D 00:9C2D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C3E 00:9C2E: 84        .byte $84   ; 
- D 0 - I - 0x001C3F 00:9C2F: 2B        .byte $2B   ; 
- D 0 - I - 0x001C40 00:9C30: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C41 00:9C31: 86        .byte $86   ; 
- D 0 - I - 0x001C42 00:9C32: 34        .byte $34   ; 
- D 0 - I - 0x001C43 00:9C33: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C44 00:9C34: 34        .byte $34   ; 
- D 0 - I - 0x001C45 00:9C35: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C46 00:9C36: 84        .byte $84   ; 
- D 0 - I - 0x001C47 00:9C37: 32        .byte $32   ; 
- D 0 - I - 0x001C48 00:9C38: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C49 00:9C39: 86        .byte $86   ; 
- D 0 - I - 0x001C4A 00:9C3A: 30        .byte $30   ; 
- D 0 - I - 0x001C4B 00:9C3B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C4C 00:9C3C: 2B        .byte $2B   ; 
- D 0 - I - 0x001C4D 00:9C3D: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C4E 00:9C3E: 29        .byte $29   ; 
- D 0 - I - 0x001C4F 00:9C3F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C50 00:9C40: 29        .byte $29   ; 
- D 0 - I - 0x001C51 00:9C41: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C52 00:9C42: 2B        .byte $2B   ; 
- D 0 - I - 0x001C53 00:9C43: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C54 00:9C44: 84        .byte $84   ; 
- D 0 - I - 0x001C55 00:9C45: 2B        .byte $2B   ; 
- D 0 - I - 0x001C56 00:9C46: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C57 00:9C47: 86        .byte $86   ; 
- D 0 - I - 0x001C58 00:9C48: 30        .byte $30   ; 
- D 0 - I - 0x001C59 00:9C49: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C5A 00:9C4A: 30        .byte $30   ; 
- D 0 - I - 0x001C5B 00:9C4B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C5C 00:9C4C: 84        .byte $84   ; 
- D 0 - I - 0x001C5D 00:9C4D: 30        .byte $30   ; 
- D 0 - I - 0x001C5E 00:9C4E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C5F 00:9C4F: 86        .byte $86   ; 
- D 0 - I - 0x001C60 00:9C50: 30        .byte $30   ; 
- D 0 - I - 0x001C61 00:9C51: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C62 00:9C52: 2B        .byte $2B   ; 
- D 0 - I - 0x001C63 00:9C53: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C64 00:9C54: 29        .byte $29   ; 
- D 0 - I - 0x001C65 00:9C55: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C66 00:9C56: 29        .byte $29   ; 
- D 0 - I - 0x001C67 00:9C57: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C68 00:9C58: 2B        .byte $2B   ; 
- D 0 - I - 0x001C69 00:9C59: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C6A 00:9C5A: 84        .byte $84   ; 
- D 0 - I - 0x001C6B 00:9C5B: 2B        .byte $2B   ; 
- D 0 - I - 0x001C6C 00:9C5C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C6D 00:9C5D: 86        .byte $86   ; 
- D 0 - I - 0x001C6E 00:9C5E: 34        .byte $34   ; 
- D 0 - I - 0x001C6F 00:9C5F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C70 00:9C60: 34        .byte $34   ; 
- D 0 - I - 0x001C71 00:9C61: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C72 00:9C62: 84        .byte $84   ; 
- D 0 - I - 0x001C73 00:9C63: 34        .byte $34   ; 
- D 0 - I - 0x001C74 00:9C64: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001C76 00:9C66: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C77 00:9C67: 88        .byte $88   ; 
- D 0 - I - 0x001C78 00:9C68: 34        .byte $34   ; 
- D 0 - I - 0x001C79 00:9C69: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001C7A 00:9C6A: E2        .byte con_se_cb_E2, $40   ; 
- D 0 - I - 0x001C7C 00:9C6C: E0        .byte con_se_cb_E0, $3A   ; 
- D 0 - I - 0x001C7E 00:9C6E: EB        .byte con_se_cb_EB, $03   ; 
- D 0 - I - 0x001C80 00:9C70: 86        .byte $86   ; 
- D 0 - I - 0x001C81 00:9C71: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C82 00:9C72: 25        .byte $25   ; 
- D 0 - I - 0x001C83 00:9C73: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C84 00:9C74: 25        .byte $25   ; 
- D 0 - I - 0x001C85 00:9C75: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C86 00:9C76: 27        .byte $27   ; 
- D 0 - I - 0x001C87 00:9C77: E5        .byte con_se_cb_E5, $01   ; 
- D 0 - I - 0x001C89 00:9C79: 84        .byte $84   ; 
- D 0 - I - 0x001C8A 00:9C7A: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C8B 00:9C7B: 27        .byte $27   ; 
- D 0 - I - 0x001C8C 00:9C7C: E5        .byte con_se_cb_E5, $00   ; 
- D 0 - I - 0x001C8E 00:9C7E: 86        .byte $86   ; 
- D 0 - I - 0x001C8F 00:9C7F: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C90 00:9C80: 24        .byte $24   ; 
- D 0 - I - 0x001C91 00:9C81: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C92 00:9C82: 24        .byte $24   ; 
- D 0 - I - 0x001C93 00:9C83: 84        .byte $84   ; 
- D 0 - I - 0x001C94 00:9C84: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C95 00:9C85: 24        .byte $24   ; 
- D 0 - I - 0x001C96 00:9C86: 86        .byte $86   ; 
- D 0 - I - 0x001C97 00:9C87: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C98 00:9C88: 29        .byte $29   ; 
- D 0 - I - 0x001C99 00:9C89: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C9A 00:9C8A: 27        .byte $27   ; 
- D 0 - I - 0x001C9B 00:9C8B: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001C9C 00:9C8C: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C9D 00:9C8D: 25        .byte $25   ; 
- D 0 - I - 0x001C9E 00:9C8E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001C9F 00:9C8F: 25        .byte $25   ; 
- D 0 - I - 0x001CA0 00:9C90: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CA1 00:9C91: 27        .byte $27   ; 
- D 0 - I - 0x001CA2 00:9C92: 84        .byte $84   ; 
- D 0 - I - 0x001CA3 00:9C93: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CA4 00:9C94: 27        .byte $27   ; 
- D 0 - I - 0x001CA5 00:9C95: E0        .byte con_se_cb_E0, $44   ; 
- D 0 - I - 0x001CA7 00:9C97: 86        .byte $86   ; 
- D 0 - I - 0x001CA8 00:9C98: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CA9 00:9C99: 27        .byte $27   ; 
- D 0 - I - 0x001CAA 00:9C9A: 84        .byte $84   ; 
- D 0 - I - 0x001CAB 00:9C9B: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CAC 00:9C9C: 27        .byte $27   ; 
- D 0 - I - 0x001CAD 00:9C9D: 0C        .byte $0C   ; 
- D 0 - I - 0x001CAE 00:9C9E: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CAF 00:9C9F: 27        .byte $27   ; 
- D 0 - I - 0x001CB0 00:9CA0: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CB1 00:9CA1: 27        .byte $27   ; 
- D 0 - I - 0x001CB2 00:9CA2: 82        .byte $82   ; 
- D 0 - I - 0x001CB3 00:9CA3: E3        .byte con_se_cb_E3, $09   ; 
- D 0 - I - 0x001CB5 00:9CA5: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CB6 00:9CA6: 27        .byte $27   ; 
- D 0 - I - 0x001CB7 00:9CA7: E3        .byte con_se_cb_E3, $0B   ; 
- D 0 - I - 0x001CB9 00:9CA9: F2        .byte con_se_cb_F2   ; 
- D 0 - I - 0x001CBA 00:9CAA: 27        .byte $27   ; 
- D 0 - I - 0x001CBB 00:9CAB: FF        .byte con_se_cb_stop   ; 



off_ch_15_9CAC_06:
- D 0 - I - 0x001CBC 00:9CAC: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001CBE 00:9CAE: ED        .byte con_se_cb_ED, $07   ; 
- D 0 - I - 0x001CC0 00:9CB0: EB        .byte con_se_cb_EB, $02   ; 
- D 0 - I - 0x001CC2 00:9CB2: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001CC4 00:9CB4: 88        .byte $88   ; 
- D 0 - I - 0x001CC5 00:9CB5: 30        .byte $30   ; 
- D 0 - I - 0x001CC6 00:9CB6: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001CC7 00:9CB7: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001CC9 00:9CB9: 89        .byte $89   ; 
- D 0 - I - 0x001CCA 00:9CBA: 30        .byte $30   ; 
- D 0 - I - 0x001CCB 00:9CBB: 80        .byte $80   ; 
- D 0 - I - 0x001CCC 00:9CBC: 39        .byte $39   ; 
- D 0 - I - 0x001CCD 00:9CBD: 37        .byte $37   ; 
- D 0 - I - 0x001CCE 00:9CBE: 36        .byte $36   ; 
- D 0 - I - 0x001CCF 00:9CBF: 35        .byte $35   ; 
- D 0 - I - 0x001CD0 00:9CC0: 34        .byte $34   ; 
- D 0 - I - 0x001CD1 00:9CC1: 33        .byte $33   ; 
- D 0 - I - 0x001CD2 00:9CC2: 32        .byte $32   ; 
- D 0 - I - 0x001CD3 00:9CC3: 31        .byte $31   ; 
- D 0 - I - 0x001CD4 00:9CC4: 39        .byte $39   ; 
- D 0 - I - 0x001CD5 00:9CC5: 37        .byte $37   ; 
- D 0 - I - 0x001CD6 00:9CC6: 36        .byte $36   ; 
- D 0 - I - 0x001CD7 00:9CC7: 35        .byte $35   ; 
- D 0 - I - 0x001CD8 00:9CC8: 34        .byte $34   ; 
- D 0 - I - 0x001CD9 00:9CC9: 33        .byte $33   ; 
- D 0 - I - 0x001CDA 00:9CCA: 32        .byte $32   ; 
- D 0 - I - 0x001CDB 00:9CCB: 31        .byte $31   ; 
- D 0 - I - 0x001CDC 00:9CCC: 30        .byte $30   ; 
- D 0 - I - 0x001CDD 00:9CCD: 2B        .byte $2B   ; 
- D 0 - I - 0x001CDE 00:9CCE: 2A        .byte $2A   ; 
- D 0 - I - 0x001CDF 00:9CCF: 29        .byte $29   ; 
- D 0 - I - 0x001CE0 00:9CD0: 28        .byte $28   ; 
- D 0 - I - 0x001CE1 00:9CD1: 27        .byte $27   ; 
- D 0 - I - 0x001CE2 00:9CD2: 26        .byte $26   ; 
- D 0 - I - 0x001CE3 00:9CD3: 25        .byte $25   ; 
- D 0 - I - 0x001CE4 00:9CD4: 24        .byte $24   ; 
- D 0 - I - 0x001CE5 00:9CD5: 23        .byte $23   ; 
- D 0 - I - 0x001CE6 00:9CD6: 22        .byte $22   ; 
- D 0 - I - 0x001CE7 00:9CD7: 21        .byte $21   ; 
- D 0 - I - 0x001CE8 00:9CD8: 20        .byte $20   ; 
- D 0 - I - 0x001CE9 00:9CD9: 1B        .byte $1B   ; 
- D 0 - I - 0x001CEA 00:9CDA: 1A        .byte $1A   ; 
- D 0 - I - 0x001CEB 00:9CDB: 19        .byte $19   ; 
- D 0 - I - 0x001CEC 00:9CDC: 88        .byte $88   ; 
- D 0 - I - 0x001CED 00:9CDD: 30        .byte $30   ; 
- D 0 - I - 0x001CEE 00:9CDE: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001CEF 00:9CDF: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001CF1 00:9CE1: 86        .byte $86   ; 
- D 0 - I - 0x001CF2 00:9CE2: 30        .byte $30   ; 
- D 0 - I - 0x001CF3 00:9CE3: 0C        .byte $0C   ; 
- D 0 - I - 0x001CF4 00:9CE4: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001CF6 00:9CE6: 86        .byte $86   ; 
- D 0 - I - 0x001CF7 00:9CE7: 27        .byte $27   ; 
- D 0 - I - 0x001CF8 00:9CE8: E0        .byte con_se_cb_E0, $2E   ; 
- D 0 - I - 0x001CFA 00:9CEA: 84        .byte $84   ; 
- D 0 - I - 0x001CFB 00:9CEB: 27        .byte $27   ; 
- D 0 - I - 0x001CFC 00:9CEC: 27        .byte $27   ; 
- D 0 - I - 0x001CFD 00:9CED: 29        .byte $29   ; 
- D 0 - I - 0x001CFE 00:9CEE: 2B        .byte $2B   ; 
- D 0 - I - 0x001CFF 00:9CEF: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D01 00:9CF1: 88        .byte $88   ; 
- D 0 - I - 0x001D02 00:9CF2: 30        .byte $30   ; 
- D 0 - I - 0x001D03 00:9CF3: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001D04 00:9CF4: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001D06 00:9CF6: 89        .byte $89   ; 
- D 0 - I - 0x001D07 00:9CF7: 30        .byte $30   ; 
- D 0 - I - 0x001D08 00:9CF8: 80        .byte $80   ; 
- D 0 - I - 0x001D09 00:9CF9: 39        .byte $39   ; 
- D 0 - I - 0x001D0A 00:9CFA: 37        .byte $37   ; 
- D 0 - I - 0x001D0B 00:9CFB: 36        .byte $36   ; 
- D 0 - I - 0x001D0C 00:9CFC: 35        .byte $35   ; 
- D 0 - I - 0x001D0D 00:9CFD: 34        .byte $34   ; 
- D 0 - I - 0x001D0E 00:9CFE: 33        .byte $33   ; 
- D 0 - I - 0x001D0F 00:9CFF: 32        .byte $32   ; 
- D 0 - I - 0x001D10 00:9D00: 31        .byte $31   ; 
- D 0 - I - 0x001D11 00:9D01: 39        .byte $39   ; 
- D 0 - I - 0x001D12 00:9D02: 37        .byte $37   ; 
- D 0 - I - 0x001D13 00:9D03: 36        .byte $36   ; 
- D 0 - I - 0x001D14 00:9D04: 35        .byte $35   ; 
- D 0 - I - 0x001D15 00:9D05: 34        .byte $34   ; 
- D 0 - I - 0x001D16 00:9D06: 33        .byte $33   ; 
- D 0 - I - 0x001D17 00:9D07: 32        .byte $32   ; 
- D 0 - I - 0x001D18 00:9D08: 31        .byte $31   ; 
- D 0 - I - 0x001D19 00:9D09: 30        .byte $30   ; 
- D 0 - I - 0x001D1A 00:9D0A: 2B        .byte $2B   ; 
- D 0 - I - 0x001D1B 00:9D0B: 2A        .byte $2A   ; 
- D 0 - I - 0x001D1C 00:9D0C: 29        .byte $29   ; 
- D 0 - I - 0x001D1D 00:9D0D: 28        .byte $28   ; 
- D 0 - I - 0x001D1E 00:9D0E: 27        .byte $27   ; 
- D 0 - I - 0x001D1F 00:9D0F: 26        .byte $26   ; 
- D 0 - I - 0x001D20 00:9D10: 25        .byte $25   ; 
- D 0 - I - 0x001D21 00:9D11: 24        .byte $24   ; 
- D 0 - I - 0x001D22 00:9D12: 23        .byte $23   ; 
- D 0 - I - 0x001D23 00:9D13: 22        .byte $22   ; 
- D 0 - I - 0x001D24 00:9D14: 21        .byte $21   ; 
- D 0 - I - 0x001D25 00:9D15: 20        .byte $20   ; 
- D 0 - I - 0x001D26 00:9D16: 1B        .byte $1B   ; 
- D 0 - I - 0x001D27 00:9D17: 1A        .byte $1A   ; 
- D 0 - I - 0x001D28 00:9D18: 19        .byte $19   ; 
- D 0 - I - 0x001D29 00:9D19: 88        .byte $88   ; 
- D 0 - I - 0x001D2A 00:9D1A: 30        .byte $30   ; 
- D 0 - I - 0x001D2B 00:9D1B: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001D2C 00:9D1C: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001D2E 00:9D1E: 86        .byte $86   ; 
- D 0 - I - 0x001D2F 00:9D1F: 30        .byte $30   ; 
- D 0 - I - 0x001D30 00:9D20: 0C        .byte $0C   ; 
- D 0 - I - 0x001D31 00:9D21: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001D33 00:9D23: 86        .byte $86   ; 
- D 0 - I - 0x001D34 00:9D24: 27        .byte $27   ; 
- D 0 - I - 0x001D35 00:9D25: E0        .byte con_se_cb_E0, $2E   ; 
- D 0 - I - 0x001D37 00:9D27: 84        .byte $84   ; 
- D 0 - I - 0x001D38 00:9D28: 30        .byte $30   ; 
- D 0 - I - 0x001D39 00:9D29: 2B        .byte $2B   ; 
- D 0 - I - 0x001D3A 00:9D2A: 29        .byte $29   ; 
- D 0 - I - 0x001D3B 00:9D2B: 27        .byte $27   ; 
- D 0 - I - 0x001D3C 00:9D2C: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D3E 00:9D2E: 87        .byte $87   ; 
- D 0 - I - 0x001D3F 00:9D2F: 25        .byte $25   ; 
- D 0 - I - 0x001D40 00:9D30: 84        .byte $84   ; 
- D 0 - I - 0x001D41 00:9D31: 0C        .byte $0C   ; 
- D 0 - I - 0x001D42 00:9D32: 87        .byte $87   ; 
- D 0 - I - 0x001D43 00:9D33: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x001D45 00:9D35: 27        .byte $27   ; 
- D 0 - I - 0x001D46 00:9D36: 89        .byte $89   ; 
- D 0 - I - 0x001D47 00:9D37: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D49 00:9D39: 29        .byte $29   ; 
- D 0 - I - 0x001D4A 00:9D3A: 84        .byte $84   ; 
- D 0 - I - 0x001D4B 00:9D3B: 0C        .byte $0C   ; 
- D 0 - I - 0x001D4C 00:9D3C: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001D4D 00:9D3D: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001D4F 00:9D3F: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D51 00:9D41: 87        .byte $87   ; 
- D 0 - I - 0x001D52 00:9D42: 25        .byte $25   ; 
- D 0 - I - 0x001D53 00:9D43: 84        .byte $84   ; 
- D 0 - I - 0x001D54 00:9D44: 0C        .byte $0C   ; 
- D 0 - I - 0x001D55 00:9D45: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x001D57 00:9D47: 87        .byte $87   ; 
- D 0 - I - 0x001D58 00:9D48: 27        .byte $27   ; 
- D 0 - I - 0x001D59 00:9D49: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D5B 00:9D4B: 87        .byte $87   ; 
- D 0 - I - 0x001D5C 00:9D4C: 30        .byte $30   ; 
- D 0 - I - 0x001D5D 00:9D4D: 84        .byte $84   ; 
- D 0 - I - 0x001D5E 00:9D4E: 0C        .byte $0C   ; 
- D 0 - I - 0x001D5F 00:9D4F: E0        .byte con_se_cb_E0, $2E   ; 
- D 0 - I - 0x001D61 00:9D51: 84        .byte $84   ; 
- D 0 - I - 0x001D62 00:9D52: 2A        .byte $2A   ; 
- D 0 - I - 0x001D63 00:9D53: E0        .byte con_se_cb_E0, $23   ; 
- D 0 - I - 0x001D65 00:9D55: 86        .byte $86   ; 
- D 0 - I - 0x001D66 00:9D56: 29        .byte $29   ; 
- D 0 - I - 0x001D67 00:9D57: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001D68 00:9D58: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001D6A 00:9D5A: 87        .byte $87   ; 
- D 0 - I - 0x001D6B 00:9D5B: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D6D 00:9D5D: 25        .byte $25   ; 
- D 0 - I - 0x001D6E 00:9D5E: 84        .byte $84   ; 
- D 0 - I - 0x001D6F 00:9D5F: 0C        .byte $0C   ; 
- D 0 - I - 0x001D70 00:9D60: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x001D72 00:9D62: 87        .byte $87   ; 
- D 0 - I - 0x001D73 00:9D63: 27        .byte $27   ; 
- D 0 - I - 0x001D74 00:9D64: 89        .byte $89   ; 
- D 0 - I - 0x001D75 00:9D65: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D77 00:9D67: 29        .byte $29   ; 
- D 0 - I - 0x001D78 00:9D68: 84        .byte $84   ; 
- D 0 - I - 0x001D79 00:9D69: 0C        .byte $0C   ; 
- D 0 - I - 0x001D7A 00:9D6A: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001D7B 00:9D6B: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001D7D 00:9D6D: 87        .byte $87   ; 
- D 0 - I - 0x001D7E 00:9D6E: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D80 00:9D70: 25        .byte $25   ; 
- D 0 - I - 0x001D81 00:9D71: 84        .byte $84   ; 
- D 0 - I - 0x001D82 00:9D72: 0C        .byte $0C   ; 
- D 0 - I - 0x001D83 00:9D73: E0        .byte con_se_cb_E0, $24   ; 
- D 0 - I - 0x001D85 00:9D75: 87        .byte $87   ; 
- D 0 - I - 0x001D86 00:9D76: 27        .byte $27   ; 
- D 0 - I - 0x001D87 00:9D77: E0        .byte con_se_cb_E0, $1C   ; 
- D 0 - I - 0x001D89 00:9D79: 89        .byte $89   ; 
- D 0 - I - 0x001D8A 00:9D7A: 84        .byte $84   ; 
- D 0 - I - 0x001D8B 00:9D7B: 30        .byte $30   ; 
- D 0 - I - 0x001D8C 00:9D7C: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001D8D 00:9D7D: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001D8F 00:9D7F: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001D90 00:9D80: E0        .byte con_se_cb_E0, $2E   ; 
- D 0 - I - 0x001D92 00:9D82: 84        .byte $84   ; 
- D 0 - I - 0x001D93 00:9D83: EB        .byte con_se_cb_EB, $03   ; 
- D 0 - I - 0x001D95 00:9D85: 29        .byte $29   ; 
- D 0 - I - 0x001D96 00:9D86: 29        .byte $29   ; 
- D 0 - I - 0x001D97 00:9D87: 30        .byte $30   ; 
- D 0 - I - 0x001D98 00:9D88: 29        .byte $29   ; 
- D 0 - I - 0x001D99 00:9D89: 34        .byte $34   ; 
- D 0 - I - 0x001D9A 00:9D8A: 32        .byte $32   ; 
- D 0 - I - 0x001D9B 00:9D8B: 30        .byte $30   ; 
- D 0 - I - 0x001D9C 00:9D8C: 29        .byte $29   ; 
- D 0 - I - 0x001D9D 00:9D8D: 27        .byte $27   ; 
- D 0 - I - 0x001D9E 00:9D8E: 27        .byte $27   ; 
- D 0 - I - 0x001D9F 00:9D8F: 2B        .byte $2B   ; 
- D 0 - I - 0x001DA0 00:9D90: 27        .byte $27   ; 
- D 0 - I - 0x001DA1 00:9D91: 32        .byte $32   ; 
- D 0 - I - 0x001DA2 00:9D92: 30        .byte $30   ; 
- D 0 - I - 0x001DA3 00:9D93: 2B        .byte $2B   ; 
- D 0 - I - 0x001DA4 00:9D94: 27        .byte $27   ; 
- D 0 - I - 0x001DA5 00:9D95: 25        .byte $25   ; 
- D 0 - I - 0x001DA6 00:9D96: 25        .byte $25   ; 
- D 0 - I - 0x001DA7 00:9D97: 29        .byte $29   ; 
- D 0 - I - 0x001DA8 00:9D98: 25        .byte $25   ; 
- D 0 - I - 0x001DA9 00:9D99: 30        .byte $30   ; 
- D 0 - I - 0x001DAA 00:9D9A: 2B        .byte $2B   ; 
- D 0 - I - 0x001DAB 00:9D9B: 29        .byte $29   ; 
- D 0 - I - 0x001DAC 00:9D9C: 25        .byte $25   ; 
- D 0 - I - 0x001DAD 00:9D9D: 27        .byte $27   ; 
- D 0 - I - 0x001DAE 00:9D9E: 27        .byte $27   ; 
- D 0 - I - 0x001DAF 00:9D9F: 2B        .byte $2B   ; 
- D 0 - I - 0x001DB0 00:9DA0: 27        .byte $27   ; 
- D 0 - I - 0x001DB1 00:9DA1: 32        .byte $32   ; 
- D 0 - I - 0x001DB2 00:9DA2: 30        .byte $30   ; 
- D 0 - I - 0x001DB3 00:9DA3: 2B        .byte $2B   ; 
- D 0 - I - 0x001DB4 00:9DA4: 29        .byte $29   ; 
- D 0 - I - 0x001DB5 00:9DA5: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001DB6 00:9DA6: 29        .byte $29   ; 
- D 0 - I - 0x001DB7 00:9DA7: 29        .byte $29   ; 
- D 0 - I - 0x001DB8 00:9DA8: 30        .byte $30   ; 
- D 0 - I - 0x001DB9 00:9DA9: 29        .byte $29   ; 
- D 0 - I - 0x001DBA 00:9DAA: 34        .byte $34   ; 
- D 0 - I - 0x001DBB 00:9DAB: 32        .byte $32   ; 
- D 0 - I - 0x001DBC 00:9DAC: 30        .byte $30   ; 
- D 0 - I - 0x001DBD 00:9DAD: 29        .byte $29   ; 
- D 0 - I - 0x001DBE 00:9DAE: 27        .byte $27   ; 
- D 0 - I - 0x001DBF 00:9DAF: 27        .byte $27   ; 
- D 0 - I - 0x001DC0 00:9DB0: 2B        .byte $2B   ; 
- D 0 - I - 0x001DC1 00:9DB1: 27        .byte $27   ; 
- D 0 - I - 0x001DC2 00:9DB2: 32        .byte $32   ; 
- D 0 - I - 0x001DC3 00:9DB3: 30        .byte $30   ; 
- D 0 - I - 0x001DC4 00:9DB4: 2B        .byte $2B   ; 
- D 0 - I - 0x001DC5 00:9DB5: 27        .byte $27   ; 
- D 0 - I - 0x001DC6 00:9DB6: 25        .byte $25   ; 
- D 0 - I - 0x001DC7 00:9DB7: 25        .byte $25   ; 
- D 0 - I - 0x001DC8 00:9DB8: 29        .byte $29   ; 
- D 0 - I - 0x001DC9 00:9DB9: 25        .byte $25   ; 
- D 0 - I - 0x001DCA 00:9DBA: 30        .byte $30   ; 
- D 0 - I - 0x001DCB 00:9DBB: 2B        .byte $2B   ; 
- D 0 - I - 0x001DCC 00:9DBC: 29        .byte $29   ; 
- D 0 - I - 0x001DCD 00:9DBD: 25        .byte $25   ; 
- D 0 - I - 0x001DCE 00:9DBE: 27        .byte $27   ; 
- D 0 - I - 0x001DCF 00:9DBF: 27        .byte $27   ; 
- D 0 - I - 0x001DD0 00:9DC0: 2B        .byte $2B   ; 
- D 0 - I - 0x001DD1 00:9DC1: 27        .byte $27   ; 
- D 0 - I - 0x001DD2 00:9DC2: 80        .byte $80   ; 
- D 0 - I - 0x001DD3 00:9DC3: 35        .byte $35   ; 
- D 0 - I - 0x001DD4 00:9DC4: 34        .byte $34   ; 
- D 0 - I - 0x001DD5 00:9DC5: 33        .byte $33   ; 
- D 0 - I - 0x001DD6 00:9DC6: 32        .byte $32   ; 
- D 0 - I - 0x001DD7 00:9DC7: 31        .byte $31   ; 
- D 0 - I - 0x001DD8 00:9DC8: 30        .byte $30   ; 
- D 0 - I - 0x001DD9 00:9DC9: 2B        .byte $2B   ; 
- D 0 - I - 0x001DDA 00:9DCA: 2A        .byte $2A   ; 
- D 0 - I - 0x001DDB 00:9DCB: 35        .byte $35   ; 
- D 0 - I - 0x001DDC 00:9DCC: 34        .byte $34   ; 
- D 0 - I - 0x001DDD 00:9DCD: 33        .byte $33   ; 
- D 0 - I - 0x001DDE 00:9DCE: 32        .byte $32   ; 
- D 0 - I - 0x001DDF 00:9DCF: 31        .byte $31   ; 
- D 0 - I - 0x001DE0 00:9DD0: 30        .byte $30   ; 
- D 0 - I - 0x001DE1 00:9DD1: 2B        .byte $2B   ; 
- D 0 - I - 0x001DE2 00:9DD2: 2A        .byte $2A   ; 
- D 0 - I - 0x001DE3 00:9DD3: 35        .byte $35   ; 
- D 0 - I - 0x001DE4 00:9DD4: 34        .byte $34   ; 
- D 0 - I - 0x001DE5 00:9DD5: 33        .byte $33   ; 
- D 0 - I - 0x001DE6 00:9DD6: 32        .byte $32   ; 
- D 0 - I - 0x001DE7 00:9DD7: 31        .byte $31   ; 
- D 0 - I - 0x001DE8 00:9DD8: 30        .byte $30   ; 
- D 0 - I - 0x001DE9 00:9DD9: 2B        .byte $2B   ; 
- D 0 - I - 0x001DEA 00:9DDA: 2A        .byte $2A   ; 
- D 0 - I - 0x001DEB 00:9DDB: 29        .byte $29   ; 
- D 0 - I - 0x001DEC 00:9DDC: 28        .byte $28   ; 
- D 0 - I - 0x001DED 00:9DDD: 27        .byte $27   ; 
- D 0 - I - 0x001DEE 00:9DDE: 26        .byte $26   ; 
- D 0 - I - 0x001DEF 00:9DDF: 25        .byte $25   ; 
- D 0 - I - 0x001DF0 00:9DE0: 24        .byte $24   ; 
- D 0 - I - 0x001DF1 00:9DE1: 23        .byte $23   ; 
- D 0 - I - 0x001DF2 00:9DE2: 22        .byte $22   ; 
- D 0 - I - 0x001DF3 00:9DE3: EB        .byte con_se_cb_EB, $03   ; 
- D 0 - I - 0x001DF5 00:9DE5: 84        .byte $84   ; 
- D 0 - I - 0x001DF6 00:9DE6: 29        .byte $29   ; 
- D 0 - I - 0x001DF7 00:9DE7: 29        .byte $29   ; 
- D 0 - I - 0x001DF8 00:9DE8: 30        .byte $30   ; 
- D 0 - I - 0x001DF9 00:9DE9: 29        .byte $29   ; 
- D 0 - I - 0x001DFA 00:9DEA: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001DFB 00:9DEB: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001DFD 00:9DED: 84        .byte $84   ; 
- D 0 - I - 0x001DFE 00:9DEE: 30        .byte $30   ; 
- D 0 - I - 0x001DFF 00:9DEF: 29        .byte $29   ; 
- D 0 - I - 0x001E00 00:9DF0: 27        .byte $27   ; 
- D 0 - I - 0x001E01 00:9DF1: 27        .byte $27   ; 
- D 0 - I - 0x001E02 00:9DF2: 2B        .byte $2B   ; 
- D 0 - I - 0x001E03 00:9DF3: 27        .byte $27   ; 
- D 0 - I - 0x001E04 00:9DF4: 32        .byte $32   ; 
- D 0 - I - 0x001E05 00:9DF5: 30        .byte $30   ; 
- D 0 - I - 0x001E06 00:9DF6: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E07 00:9DF7: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001E09 00:9DF9: 84        .byte $84   ; 
- D 0 - I - 0x001E0A 00:9DFA: 25        .byte $25   ; 
- D 0 - I - 0x001E0B 00:9DFB: 25        .byte $25   ; 
- D 0 - I - 0x001E0C 00:9DFC: 29        .byte $29   ; 
- D 0 - I - 0x001E0D 00:9DFD: 25        .byte $25   ; 
- D 0 - I - 0x001E0E 00:9DFE: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E0F 00:9DFF: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001E11 00:9E01: 84        .byte $84   ; 
- D 0 - I - 0x001E12 00:9E02: 29        .byte $29   ; 
- D 0 - I - 0x001E13 00:9E03: 25        .byte $25   ; 
- D 0 - I - 0x001E14 00:9E04: 27        .byte $27   ; 
- D 0 - I - 0x001E15 00:9E05: 27        .byte $27   ; 
- D 0 - I - 0x001E16 00:9E06: 2B        .byte $2B   ; 
- D 0 - I - 0x001E17 00:9E07: 27        .byte $27   ; 
- D 0 - I - 0x001E18 00:9E08: 32        .byte $32   ; 
- D 0 - I - 0x001E19 00:9E09: 30        .byte $30   ; 
- D 0 - I - 0x001E1A 00:9E0A: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E1B 00:9E0B: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001E1D 00:9E0D: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001E1E 00:9E0E: 84        .byte $84   ; 
- D 0 - I - 0x001E1F 00:9E0F: 29        .byte $29   ; 
- D 0 - I - 0x001E20 00:9E10: 29        .byte $29   ; 
- D 0 - I - 0x001E21 00:9E11: 30        .byte $30   ; 
- D 0 - I - 0x001E22 00:9E12: 29        .byte $29   ; 
- D 0 - I - 0x001E23 00:9E13: 80        .byte $80   ; 
- D 0 - I - 0x001E24 00:9E14: 39        .byte $39   ; 
- D 0 - I - 0x001E25 00:9E15: 38        .byte $38   ; 
- D 0 - I - 0x001E26 00:9E16: 37        .byte $37   ; 
- D 0 - I - 0x001E27 00:9E17: 36        .byte $36   ; 
- D 0 - I - 0x001E28 00:9E18: 35        .byte $35   ; 
- D 0 - I - 0x001E29 00:9E19: 34        .byte $34   ; 
- D 0 - I - 0x001E2A 00:9E1A: 33        .byte $33   ; 
- D 0 - I - 0x001E2B 00:9E1B: 32        .byte $32   ; 
- D 0 - I - 0x001E2C 00:9E1C: 31        .byte $31   ; 
- D 0 - I - 0x001E2D 00:9E1D: 30        .byte $30   ; 
- D 0 - I - 0x001E2E 00:9E1E: 2B        .byte $2B   ; 
- D 0 - I - 0x001E2F 00:9E1F: 2A        .byte $2A   ; 
- D 0 - I - 0x001E30 00:9E20: 29        .byte $29   ; 
- D 0 - I - 0x001E31 00:9E21: 28        .byte $28   ; 
- D 0 - I - 0x001E32 00:9E22: 27        .byte $27   ; 
- D 0 - I - 0x001E33 00:9E23: 26        .byte $26   ; 
- D 0 - I - 0x001E34 00:9E24: 84        .byte $84   ; 
- D 0 - I - 0x001E35 00:9E25: 30        .byte $30   ; 
- D 0 - I - 0x001E36 00:9E26: 29        .byte $29   ; 
- D 0 - I - 0x001E37 00:9E27: 27        .byte $27   ; 
- D 0 - I - 0x001E38 00:9E28: 27        .byte $27   ; 
- D 0 - I - 0x001E39 00:9E29: 2B        .byte $2B   ; 
- D 0 - I - 0x001E3A 00:9E2A: 27        .byte $27   ; 
- D 0 - I - 0x001E3B 00:9E2B: 32        .byte $32   ; 
- D 0 - I - 0x001E3C 00:9E2C: 30        .byte $30   ; 
- D 0 - I - 0x001E3D 00:9E2D: 80        .byte $80   ; 
- D 0 - I - 0x001E3E 00:9E2E: 39        .byte $39   ; 
- D 0 - I - 0x001E3F 00:9E2F: 38        .byte $38   ; 
- D 0 - I - 0x001E40 00:9E30: 37        .byte $37   ; 
- D 0 - I - 0x001E41 00:9E31: 36        .byte $36   ; 
- D 0 - I - 0x001E42 00:9E32: 35        .byte $35   ; 
- D 0 - I - 0x001E43 00:9E33: 34        .byte $34   ; 
- D 0 - I - 0x001E44 00:9E34: 33        .byte $33   ; 
- D 0 - I - 0x001E45 00:9E35: 32        .byte $32   ; 
- D 0 - I - 0x001E46 00:9E36: 31        .byte $31   ; 
- D 0 - I - 0x001E47 00:9E37: 30        .byte $30   ; 
- D 0 - I - 0x001E48 00:9E38: 2B        .byte $2B   ; 
- D 0 - I - 0x001E49 00:9E39: 2A        .byte $2A   ; 
- D 0 - I - 0x001E4A 00:9E3A: 29        .byte $29   ; 
- D 0 - I - 0x001E4B 00:9E3B: 28        .byte $28   ; 
- D 0 - I - 0x001E4C 00:9E3C: 27        .byte $27   ; 
- D 0 - I - 0x001E4D 00:9E3D: 26        .byte $26   ; 
- D 0 - I - 0x001E4E 00:9E3E: 84        .byte $84   ; 
- D 0 - I - 0x001E4F 00:9E3F: 25        .byte $25   ; 
- D 0 - I - 0x001E50 00:9E40: 25        .byte $25   ; 
- D 0 - I - 0x001E51 00:9E41: 29        .byte $29   ; 
- D 0 - I - 0x001E52 00:9E42: 25        .byte $25   ; 
- D 0 - I - 0x001E53 00:9E43: 80        .byte $80   ; 
- D 0 - I - 0x001E54 00:9E44: 39        .byte $39   ; 
- D 0 - I - 0x001E55 00:9E45: 38        .byte $38   ; 
- D 0 - I - 0x001E56 00:9E46: 37        .byte $37   ; 
- D 0 - I - 0x001E57 00:9E47: 36        .byte $36   ; 
- D 0 - I - 0x001E58 00:9E48: 35        .byte $35   ; 
- D 0 - I - 0x001E59 00:9E49: 34        .byte $34   ; 
- D 0 - I - 0x001E5A 00:9E4A: 33        .byte $33   ; 
- D 0 - I - 0x001E5B 00:9E4B: 32        .byte $32   ; 
- D 0 - I - 0x001E5C 00:9E4C: 31        .byte $31   ; 
- D 0 - I - 0x001E5D 00:9E4D: 30        .byte $30   ; 
- D 0 - I - 0x001E5E 00:9E4E: 2B        .byte $2B   ; 
- D 0 - I - 0x001E5F 00:9E4F: 2A        .byte $2A   ; 
- D 0 - I - 0x001E60 00:9E50: 29        .byte $29   ; 
- D 0 - I - 0x001E61 00:9E51: 28        .byte $28   ; 
- D 0 - I - 0x001E62 00:9E52: 27        .byte $27   ; 
- D 0 - I - 0x001E63 00:9E53: 26        .byte $26   ; 
- D 0 - I - 0x001E64 00:9E54: 84        .byte $84   ; 
- D 0 - I - 0x001E65 00:9E55: 29        .byte $29   ; 
- D 0 - I - 0x001E66 00:9E56: 25        .byte $25   ; 
- D 0 - I - 0x001E67 00:9E57: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E68 00:9E58: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001E6A 00:9E5A: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E6B 00:9E5B: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001E6D 00:9E5D: 35        .byte $35   ; 
- D 0 - I - 0x001E6E 00:9E5E: 34        .byte $34   ; 
- D 0 - I - 0x001E6F 00:9E5F: 33        .byte $33   ; 
- D 0 - I - 0x001E70 00:9E60: 32        .byte $32   ; 
- D 0 - I - 0x001E71 00:9E61: 31        .byte $31   ; 
- D 0 - I - 0x001E72 00:9E62: 30        .byte $30   ; 
- D 0 - I - 0x001E73 00:9E63: 2B        .byte $2B   ; 
- D 0 - I - 0x001E74 00:9E64: 2A        .byte $2A   ; 
- D 0 - I - 0x001E75 00:9E65: 35        .byte $35   ; 
- D 0 - I - 0x001E76 00:9E66: 34        .byte $34   ; 
- D 0 - I - 0x001E77 00:9E67: 33        .byte $33   ; 
- D 0 - I - 0x001E78 00:9E68: 32        .byte $32   ; 
- D 0 - I - 0x001E79 00:9E69: 31        .byte $31   ; 
- D 0 - I - 0x001E7A 00:9E6A: 30        .byte $30   ; 
- D 0 - I - 0x001E7B 00:9E6B: 2B        .byte $2B   ; 
- D 0 - I - 0x001E7C 00:9E6C: 2A        .byte $2A   ; 
- D 0 - I - 0x001E7D 00:9E6D: 35        .byte $35   ; 
- D 0 - I - 0x001E7E 00:9E6E: 34        .byte $34   ; 
- D 0 - I - 0x001E7F 00:9E6F: 33        .byte $33   ; 
- D 0 - I - 0x001E80 00:9E70: 32        .byte $32   ; 
- D 0 - I - 0x001E81 00:9E71: 31        .byte $31   ; 
- D 0 - I - 0x001E82 00:9E72: 30        .byte $30   ; 
- D 0 - I - 0x001E83 00:9E73: 2B        .byte $2B   ; 
- D 0 - I - 0x001E84 00:9E74: 2A        .byte $2A   ; 
- D 0 - I - 0x001E85 00:9E75: 29        .byte $29   ; 
- D 0 - I - 0x001E86 00:9E76: 28        .byte $28   ; 
- D 0 - I - 0x001E87 00:9E77: 27        .byte $27   ; 
- D 0 - I - 0x001E88 00:9E78: 26        .byte $26   ; 
- D 0 - I - 0x001E89 00:9E79: 25        .byte $25   ; 
- D 0 - I - 0x001E8A 00:9E7A: 24        .byte $24   ; 
- D 0 - I - 0x001E8B 00:9E7B: 23        .byte $23   ; 
- D 0 - I - 0x001E8C 00:9E7C: 22        .byte $22   ; 
- D 0 - I - 0x001E8D 00:9E7D: EB        .byte con_se_cb_EB, $04   ; 
- D 0 - I - 0x001E8F 00:9E7F: 84        .byte $84   ; 
- D 0 - I - 0x001E90 00:9E80: 20        .byte $20   ; 
- D 0 - I - 0x001E91 00:9E81: 20        .byte $20   ; 
- D 0 - I - 0x001E92 00:9E82: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E93 00:9E83: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001E95 00:9E85: 84        .byte $84   ; 
- D 0 - I - 0x001E96 00:9E86: 0C        .byte $0C   ; 
- D 0 - I - 0x001E97 00:9E87: 20        .byte $20   ; 
- D 0 - I - 0x001E98 00:9E88: 24        .byte $24   ; 
- D 0 - I - 0x001E99 00:9E89: 20        .byte $20   ; 
- D 0 - I - 0x001E9A 00:9E8A: 84        .byte $84   ; 
- D 0 - I - 0x001E9B 00:9E8B: 20        .byte $20   ; 
- D 0 - I - 0x001E9C 00:9E8C: 20        .byte $20   ; 
- D 0 - I - 0x001E9D 00:9E8D: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001E9E 00:9E8E: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EA0 00:9E90: 84        .byte $84   ; 
- D 0 - I - 0x001EA1 00:9E91: 0C        .byte $0C   ; 
- D 0 - I - 0x001EA2 00:9E92: 20        .byte $20   ; 
- D 0 - I - 0x001EA3 00:9E93: 24        .byte $24   ; 
- D 0 - I - 0x001EA4 00:9E94: 20        .byte $20   ; 
- D 0 - I - 0x001EA5 00:9E95: 20        .byte $20   ; 
- D 0 - I - 0x001EA6 00:9E96: 20        .byte $20   ; 
- D 0 - I - 0x001EA7 00:9E97: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EA8 00:9E98: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EAA 00:9E9A: 84        .byte $84   ; 
- D 0 - I - 0x001EAB 00:9E9B: 0C        .byte $0C   ; 
- D 0 - I - 0x001EAC 00:9E9C: 20        .byte $20   ; 
- D 0 - I - 0x001EAD 00:9E9D: 24        .byte $24   ; 
- D 0 - I - 0x001EAE 00:9E9E: 20        .byte $20   ; 
- D 0 - I - 0x001EAF 00:9E9F: 20        .byte $20   ; 
- D 0 - I - 0x001EB0 00:9EA0: 20        .byte $20   ; 
- D 0 - I - 0x001EB1 00:9EA1: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EB2 00:9EA2: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EB4 00:9EA4: 84        .byte $84   ; 
- D 0 - I - 0x001EB5 00:9EA5: 0C        .byte $0C   ; 
- D 0 - I - 0x001EB6 00:9EA6: 27        .byte $27   ; 
- D 0 - I - 0x001EB7 00:9EA7: 29        .byte $29   ; 
- D 0 - I - 0x001EB8 00:9EA8: 2B        .byte $2B   ; 
- D 0 - I - 0x001EB9 00:9EA9: 84        .byte $84   ; 
- D 0 - I - 0x001EBA 00:9EAA: 20        .byte $20   ; 
- D 0 - I - 0x001EBB 00:9EAB: 20        .byte $20   ; 
- D 0 - I - 0x001EBC 00:9EAC: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EBD 00:9EAD: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EBF 00:9EAF: 84        .byte $84   ; 
- D 0 - I - 0x001EC0 00:9EB0: 0C        .byte $0C   ; 
- D 0 - I - 0x001EC1 00:9EB1: 20        .byte $20   ; 
- D 0 - I - 0x001EC2 00:9EB2: 24        .byte $24   ; 
- D 0 - I - 0x001EC3 00:9EB3: 20        .byte $20   ; 
- D 0 - I - 0x001EC4 00:9EB4: 84        .byte $84   ; 
- D 0 - I - 0x001EC5 00:9EB5: 20        .byte $20   ; 
- D 0 - I - 0x001EC6 00:9EB6: 20        .byte $20   ; 
- D 0 - I - 0x001EC7 00:9EB7: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EC8 00:9EB8: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001ECA 00:9EBA: 84        .byte $84   ; 
- D 0 - I - 0x001ECB 00:9EBB: 0C        .byte $0C   ; 
- D 0 - I - 0x001ECC 00:9EBC: 20        .byte $20   ; 
- D 0 - I - 0x001ECD 00:9EBD: 24        .byte $24   ; 
- D 0 - I - 0x001ECE 00:9EBE: 20        .byte $20   ; 
- D 0 - I - 0x001ECF 00:9EBF: 84        .byte $84   ; 
- D 0 - I - 0x001ED0 00:9EC0: 20        .byte $20   ; 
- D 0 - I - 0x001ED1 00:9EC1: 20        .byte $20   ; 
- D 0 - I - 0x001ED2 00:9EC2: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001ED3 00:9EC3: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001ED5 00:9EC5: 84        .byte $84   ; 
- D 0 - I - 0x001ED6 00:9EC6: 0C        .byte $0C   ; 
- D 0 - I - 0x001ED7 00:9EC7: 20        .byte $20   ; 
- D 0 - I - 0x001ED8 00:9EC8: 24        .byte $24   ; 
- D 0 - I - 0x001ED9 00:9EC9: 20        .byte $20   ; 
- D 0 - I - 0x001EDA 00:9ECA: 84        .byte $84   ; 
- D 0 - I - 0x001EDB 00:9ECB: 20        .byte $20   ; 
- D 0 - I - 0x001EDC 00:9ECC: 20        .byte $20   ; 
- D 0 - I - 0x001EDD 00:9ECD: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EDE 00:9ECE: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EE0 00:9ED0: 84        .byte $84   ; 
- D 0 - I - 0x001EE1 00:9ED1: 0C        .byte $0C   ; 
- D 0 - I - 0x001EE2 00:9ED2: 27        .byte $27   ; 
- D 0 - I - 0x001EE3 00:9ED3: 29        .byte $29   ; 
- D 0 - I - 0x001EE4 00:9ED4: 2B        .byte $2B   ; 
- D 0 - I - 0x001EE5 00:9ED5: 84        .byte $84   ; 
- D 0 - I - 0x001EE6 00:9ED6: 20        .byte $20   ; 
- D 0 - I - 0x001EE7 00:9ED7: 20        .byte $20   ; 
- D 0 - I - 0x001EE8 00:9ED8: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EE9 00:9ED9: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EEB 00:9EDB: 84        .byte $84   ; 
- D 0 - I - 0x001EEC 00:9EDC: 22        .byte $22   ; 
- D 0 - I - 0x001EED 00:9EDD: 22        .byte $22   ; 
- D 0 - I - 0x001EEE 00:9EDE: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EEF 00:9EDF: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EF1 00:9EE1: 84        .byte $84   ; 
- D 0 - I - 0x001EF2 00:9EE2: 24        .byte $24   ; 
- D 0 - I - 0x001EF3 00:9EE3: 24        .byte $24   ; 
- D 0 - I - 0x001EF4 00:9EE4: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EF5 00:9EE5: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EF7 00:9EE7: 84        .byte $84   ; 
- D 0 - I - 0x001EF8 00:9EE8: 24        .byte $24   ; 
- D 0 - I - 0x001EF9 00:9EE9: 24        .byte $24   ; 
- D 0 - I - 0x001EFA 00:9EEA: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001EFB 00:9EEB: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001EFD 00:9EED: 84        .byte $84   ; 
- D 0 - I - 0x001EFE 00:9EEE: 20        .byte $20   ; 
- D 0 - I - 0x001EFF 00:9EEF: 20        .byte $20   ; 
- D 0 - I - 0x001F00 00:9EF0: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F01 00:9EF1: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F03 00:9EF3: 84        .byte $84   ; 
- D 0 - I - 0x001F04 00:9EF4: 22        .byte $22   ; 
- D 0 - I - 0x001F05 00:9EF5: 22        .byte $22   ; 
- D 0 - I - 0x001F06 00:9EF6: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F07 00:9EF7: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F09 00:9EF9: 84        .byte $84   ; 
- D 0 - I - 0x001F0A 00:9EFA: 24        .byte $24   ; 
- D 0 - I - 0x001F0B 00:9EFB: 24        .byte $24   ; 
- D 0 - I - 0x001F0C 00:9EFC: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F0D 00:9EFD: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F0F 00:9EFF: 84        .byte $84   ; 
- D 0 - I - 0x001F10 00:9F00: 22        .byte $22   ; 
- D 0 - I - 0x001F11 00:9F01: 1B        .byte $1B   ; 
- D 0 - I - 0x001F12 00:9F02: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F13 00:9F03: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F15 00:9F05: 84        .byte $84   ; 
- D 0 - I - 0x001F16 00:9F06: 20        .byte $20   ; 
- D 0 - I - 0x001F17 00:9F07: 20        .byte $20   ; 
- D 0 - I - 0x001F18 00:9F08: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F19 00:9F09: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F1B 00:9F0B: 84        .byte $84   ; 
- D 0 - I - 0x001F1C 00:9F0C: 22        .byte $22   ; 
- D 0 - I - 0x001F1D 00:9F0D: 22        .byte $22   ; 
- D 0 - I - 0x001F1E 00:9F0E: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F1F 00:9F0F: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F21 00:9F11: 84        .byte $84   ; 
- D 0 - I - 0x001F22 00:9F12: 24        .byte $24   ; 
- D 0 - I - 0x001F23 00:9F13: 24        .byte $24   ; 
- D 0 - I - 0x001F24 00:9F14: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F25 00:9F15: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F27 00:9F17: 84        .byte $84   ; 
- D 0 - I - 0x001F28 00:9F18: 24        .byte $24   ; 
- D 0 - I - 0x001F29 00:9F19: 24        .byte $24   ; 
- D 0 - I - 0x001F2A 00:9F1A: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F2B 00:9F1B: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F2D 00:9F1D: 84        .byte $84   ; 
- D 0 - I - 0x001F2E 00:9F1E: 20        .byte $20   ; 
- D 0 - I - 0x001F2F 00:9F1F: 20        .byte $20   ; 
- D 0 - I - 0x001F30 00:9F20: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F31 00:9F21: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F33 00:9F23: 84        .byte $84   ; 
- D 0 - I - 0x001F34 00:9F24: 22        .byte $22   ; 
- D 0 - I - 0x001F35 00:9F25: 22        .byte $22   ; 
- D 0 - I - 0x001F36 00:9F26: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F37 00:9F27: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F39 00:9F29: 84        .byte $84   ; 
- D 0 - I - 0x001F3A 00:9F2A: 24        .byte $24   ; 
- D 0 - I - 0x001F3B 00:9F2B: 24        .byte $24   ; 
- D 0 - I - 0x001F3C 00:9F2C: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F3D 00:9F2D: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F3F 00:9F2F: 80        .byte $80   ; 
- D 0 - I - 0x001F40 00:9F30: 36        .byte $36   ; 
- D 0 - I - 0x001F41 00:9F31: 35        .byte $35   ; 
- D 0 - I - 0x001F42 00:9F32: 34        .byte $34   ; 
- D 0 - I - 0x001F43 00:9F33: 33        .byte $33   ; 
- D 0 - I - 0x001F44 00:9F34: 32        .byte $32   ; 
- D 0 - I - 0x001F45 00:9F35: 31        .byte $31   ; 
- D 0 - I - 0x001F46 00:9F36: 30        .byte $30   ; 
- D 0 - I - 0x001F47 00:9F37: 2B        .byte $2B   ; 
- D 0 - I - 0x001F48 00:9F38: 36        .byte $36   ; 
- D 0 - I - 0x001F49 00:9F39: 35        .byte $35   ; 
- D 0 - I - 0x001F4A 00:9F3A: 34        .byte $34   ; 
- D 0 - I - 0x001F4B 00:9F3B: 33        .byte $33   ; 
- D 0 - I - 0x001F4C 00:9F3C: 32        .byte $32   ; 
- D 0 - I - 0x001F4D 00:9F3D: 31        .byte $31   ; 
- D 0 - I - 0x001F4E 00:9F3E: 30        .byte $30   ; 
- D 0 - I - 0x001F4F 00:9F3F: 2B        .byte $2B   ; 
- D 0 - I - 0x001F50 00:9F40: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F51 00:9F41: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F53 00:9F43: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001F54 00:9F44: EB        .byte con_se_cb_EB, $03   ; 
- D 0 - I - 0x001F56 00:9F46: 84        .byte $84   ; 
- D 0 - I - 0x001F57 00:9F47: 29        .byte $29   ; 
- D 0 - I - 0x001F58 00:9F48: 29        .byte $29   ; 
- D 0 - I - 0x001F59 00:9F49: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F5A 00:9F4A: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F5C 00:9F4C: 84        .byte $84   ; 
- D 0 - I - 0x001F5D 00:9F4D: 2B        .byte $2B   ; 
- D 0 - I - 0x001F5E 00:9F4E: 2B        .byte $2B   ; 
- D 0 - I - 0x001F5F 00:9F4F: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F60 00:9F50: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F62 00:9F52: 84        .byte $84   ; 
- D 0 - I - 0x001F63 00:9F53: 30        .byte $30   ; 
- D 0 - I - 0x001F64 00:9F54: 30        .byte $30   ; 
- D 0 - I - 0x001F65 00:9F55: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F66 00:9F56: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F68 00:9F58: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F69 00:9F59: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F6B 00:9F5B: 80        .byte $80   ; 
- D 0 - I - 0x001F6C 00:9F5C: 36        .byte $36   ; 
- D 0 - I - 0x001F6D 00:9F5D: 35        .byte $35   ; 
- D 0 - I - 0x001F6E 00:9F5E: 34        .byte $34   ; 
- D 0 - I - 0x001F6F 00:9F5F: 33        .byte $33   ; 
- D 0 - I - 0x001F70 00:9F60: 32        .byte $32   ; 
- D 0 - I - 0x001F71 00:9F61: 31        .byte $31   ; 
- D 0 - I - 0x001F72 00:9F62: 30        .byte $30   ; 
- D 0 - I - 0x001F73 00:9F63: 2B        .byte $2B   ; 
- D 0 - I - 0x001F74 00:9F64: 36        .byte $36   ; 
- D 0 - I - 0x001F75 00:9F65: 35        .byte $35   ; 
- D 0 - I - 0x001F76 00:9F66: 34        .byte $34   ; 
- D 0 - I - 0x001F77 00:9F67: 33        .byte $33   ; 
- D 0 - I - 0x001F78 00:9F68: 32        .byte $32   ; 
- D 0 - I - 0x001F79 00:9F69: 31        .byte $31   ; 
- D 0 - I - 0x001F7A 00:9F6A: 30        .byte $30   ; 
- D 0 - I - 0x001F7B 00:9F6B: 2B        .byte $2B   ; 
- D 0 - I - 0x001F7C 00:9F6C: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001F7D 00:9F6D: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F7E 00:9F6E: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F80 00:9F70: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F81 00:9F71: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F83 00:9F73: 36        .byte $36   ; 
- D 0 - I - 0x001F84 00:9F74: 35        .byte $35   ; 
- D 0 - I - 0x001F85 00:9F75: 34        .byte $34   ; 
- D 0 - I - 0x001F86 00:9F76: 33        .byte $33   ; 
- D 0 - I - 0x001F87 00:9F77: 32        .byte $32   ; 
- D 0 - I - 0x001F88 00:9F78: 31        .byte $31   ; 
- D 0 - I - 0x001F89 00:9F79: 30        .byte $30   ; 
- D 0 - I - 0x001F8A 00:9F7A: 2B        .byte $2B   ; 
- D 0 - I - 0x001F8B 00:9F7B: 36        .byte $36   ; 
- D 0 - I - 0x001F8C 00:9F7C: 35        .byte $35   ; 
- D 0 - I - 0x001F8D 00:9F7D: 34        .byte $34   ; 
- D 0 - I - 0x001F8E 00:9F7E: 33        .byte $33   ; 
- D 0 - I - 0x001F8F 00:9F7F: 32        .byte $32   ; 
- D 0 - I - 0x001F90 00:9F80: 31        .byte $31   ; 
- D 0 - I - 0x001F91 00:9F81: 30        .byte $30   ; 
- D 0 - I - 0x001F92 00:9F82: 2B        .byte $2B   ; 
- D 0 - I - 0x001F93 00:9F83: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F94 00:9F84: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F96 00:9F86: 84        .byte $84   ; 
- D 0 - I - 0x001F97 00:9F87: 2B        .byte $2B   ; 
- D 0 - I - 0x001F98 00:9F88: E9        .byte con_se_cb_jsr   ; 
- D 0 - I - 0x001F99 00:9F89: 9D 9F     .word ofs_E9_9F9D
- D 0 - I - 0x001F9B 00:9F8B: 80        .byte $80   ; 
- D 0 - I - 0x001F9C 00:9F8C: 39        .byte $39   ; 
- D 0 - I - 0x001F9D 00:9F8D: 38        .byte $38   ; 
- D 0 - I - 0x001F9E 00:9F8E: 37        .byte $37   ; 
- D 0 - I - 0x001F9F 00:9F8F: 36        .byte $36   ; 
- D 0 - I - 0x001FA0 00:9F90: 35        .byte $35   ; 
- D 0 - I - 0x001FA1 00:9F91: 34        .byte $34   ; 
- D 0 - I - 0x001FA2 00:9F92: 33        .byte $33   ; 
- D 0 - I - 0x001FA3 00:9F93: 32        .byte $32   ; 
- D 0 - I - 0x001FA4 00:9F94: 39        .byte $39   ; 
- D 0 - I - 0x001FA5 00:9F95: 38        .byte $38   ; 
- D 0 - I - 0x001FA6 00:9F96: 37        .byte $37   ; 
- D 0 - I - 0x001FA7 00:9F97: 36        .byte $36   ; 
- D 0 - I - 0x001FA8 00:9F98: 35        .byte $35   ; 
- D 0 - I - 0x001FA9 00:9F99: 34        .byte $34   ; 
- D 0 - I - 0x001FAA 00:9F9A: 33        .byte $33   ; 
- D 0 - I - 0x001FAB 00:9F9B: 32        .byte $32   ; 
- D 0 - I - 0x001FAC 00:9F9C: FF        .byte con_se_cb_stop   ; 



ofs_E9_9F9D:
- D 0 - I - 0x001FAD 00:9F9D: 80        .byte $80   ; 
- D 0 - I - 0x001FAE 00:9F9E: 39        .byte $39   ; 
- D 0 - I - 0x001FAF 00:9F9F: 38        .byte $38   ; 
- D 0 - I - 0x001FB0 00:9FA0: 37        .byte $37   ; 
- D 0 - I - 0x001FB1 00:9FA1: 36        .byte $36   ; 
- D 0 - I - 0x001FB2 00:9FA2: 35        .byte $35   ; 
- D 0 - I - 0x001FB3 00:9FA3: 34        .byte $34   ; 
- D 0 - I - 0x001FB4 00:9FA4: 33        .byte $33   ; 
- D 0 - I - 0x001FB5 00:9FA5: 32        .byte $32   ; 
- D 0 - I - 0x001FB6 00:9FA6: 31        .byte $31   ; 
- D 0 - I - 0x001FB7 00:9FA7: 30        .byte $30   ; 
- D 0 - I - 0x001FB8 00:9FA8: 2B        .byte $2B   ; 
- D 0 - I - 0x001FB9 00:9FA9: 2A        .byte $2A   ; 
- D 0 - I - 0x001FBA 00:9FAA: 29        .byte $29   ; 
- D 0 - I - 0x001FBB 00:9FAB: 28        .byte $28   ; 
- D 0 - I - 0x001FBC 00:9FAC: 27        .byte $27   ; 
- D 0 - I - 0x001FBD 00:9FAD: 26        .byte $26   ; 
- D 0 - I - 0x001FBE 00:9FAE: EA        .byte con_se_cb_rts   ; 



off_ch_15_9FAF_07:
- D 0 - I - 0x001FBF 00:9FAF: E3        .byte con_se_cb_E3, $00   ; 
- D 0 - I - 0x001FC1 00:9FB1: EB        .byte con_se_cb_EB, $07   ; 
- D 0 - I - 0x001FC3 00:9FB3: E0        .byte con_se_cb_E0, $1D   ; 
- D 0 - I - 0x001FC5 00:9FB5: 84        .byte $84   ; 
- D 0 - I - 0x001FC6 00:9FB6: 03        .byte $03   ; 
- D 0 - I - 0x001FC7 00:9FB7: 03        .byte $03   ; 
- D 0 - I - 0x001FC8 00:9FB8: 10        .byte $10   ; 
- D 0 - I - 0x001FC9 00:9FB9: 10        .byte $10   ; 
- D 0 - I - 0x001FCA 00:9FBA: 86        .byte $86   ; 
- D 0 - I - 0x001FCB 00:9FBB: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x001FCD 00:9FBD: 05        .byte $05   ; 
- D 0 - I - 0x001FCE 00:9FBE: E0        .byte con_se_cb_E0, $1D   ; 
- D 0 - I - 0x001FD0 00:9FC0: 84        .byte $84   ; 
- D 0 - I - 0x001FD1 00:9FC1: 03        .byte $03   ; 
- D 0 - I - 0x001FD2 00:9FC2: 03        .byte $03   ; 
- D 0 - I - 0x001FD3 00:9FC3: 03        .byte $03   ; 
- D 0 - I - 0x001FD4 00:9FC4: 03        .byte $03   ; 
- D 0 - I - 0x001FD5 00:9FC5: 10        .byte $10   ; 
- D 0 - I - 0x001FD6 00:9FC6: 10        .byte $10   ; 
- D 0 - I - 0x001FD7 00:9FC7: 03        .byte $03   ; 
- D 0 - I - 0x001FD8 00:9FC8: 03        .byte $03   ; 
- D 0 - I - 0x001FD9 00:9FC9: E0        .byte con_se_cb_E0, $0F   ; 
- D 0 - I - 0x001FDB 00:9FCB: 86        .byte $86   ; 
- D 0 - I - 0x001FDC 00:9FCC: 02        .byte $02   ; 
- D 0 - I - 0x001FDD 00:9FCD: E0        .byte con_se_cb_E0, $1D   ; 
- D 0 - I - 0x001FDF 00:9FCF: 84        .byte $84   ; 
- D 0 - I - 0x001FE0 00:9FD0: 03        .byte $03   ; 
- D 0 - I - 0x001FE1 00:9FD1: 03        .byte $03   ; 
- D 0 - I - 0x001FE2 00:9FD2: 10        .byte $10   ; 
- D 0 - I - 0x001FE3 00:9FD3: 03        .byte $03   ; 
- D 0 - I - 0x001FE4 00:9FD4: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x001FE6 00:9FD6: 86        .byte $86   ; 
- D 0 - I - 0x001FE7 00:9FD7: 05        .byte $05   ; 
- D 0 - I - 0x001FE8 00:9FD8: E0        .byte con_se_cb_E0, $1D   ; 
- D 0 - I - 0x001FEA 00:9FDA: 84        .byte $84   ; 
- D 0 - I - 0x001FEB 00:9FDB: 03        .byte $03   ; 
- D 0 - I - 0x001FEC 00:9FDC: 03        .byte $03   ; 
- D 0 - I - 0x001FED 00:9FDD: 84        .byte $84   ; 
- D 0 - I - 0x001FEE 00:9FDE: 10        .byte $10   ; 
- D 0 - I - 0x001FEF 00:9FDF: 10        .byte $10   ; 
- D 0 - I - 0x001FF0 00:9FE0: 03        .byte $03   ; 
- D 0 - I - 0x001FF1 00:9FE1: 03        .byte $03   ; 
- D 0 - I - 0x001FF2 00:9FE2: 03        .byte $03   ; 
- D 0 - I - 0x001FF3 00:9FE3: 03        .byte $03   ; 
- D 0 - I - 0x001FF4 00:9FE4: E0        .byte con_se_cb_E0, $0F   ; 
- D 0 - I - 0x001FF6 00:9FE6: 86        .byte $86   ; 
- D 0 - I - 0x001FF7 00:9FE7: 02        .byte $02   ; 
- D 0 - I - 0x001FF8 00:9FE8: EC        .byte con_se_cb_EC   ; 
- D 0 - I - 0x001FF9 00:9FE9: E0        .byte con_se_cb_E0, $1D   ; 
- D 0 - I - 0x001FFB 00:9FEB: 84        .byte $84   ; 
- D 0 - I - 0x001FFC 00:9FEC: 03        .byte $03   ; 
- D 0 - I - 0x001FFD 00:9FED: 03        .byte $03   ; 
- D 0 - I - 0x001FFE 00:9FEE: 10        .byte $10   ; 
- D 0 - I - 0x001FFF 00:9FEF: 10        .byte $10   ; 
- D 0 - I - 0x002000 00:9FF0: 03        .byte $03   ; 
- D 0 - I - 0x002001 00:9FF1: 03        .byte $03   ; 
- D 0 - I - 0x002002 00:9FF2: 10        .byte $10   ; 
- D 0 - I - 0x002003 00:9FF3: 10        .byte $10   ; 
- D 0 - I - 0x002004 00:9FF4: 86        .byte $86   ; 
- D 0 - I - 0x002005 00:9FF5: E0        .byte con_se_cb_E0, $1E   ; 
- D 0 - I - 0x002007 00:9FF7: 05        .byte $05   ; 
- D 0 - I - 0x002008 00:9FF8: 84        .byte $84   ; 
- D 0 - I - 0x002009 00:9FF9: E0        .byte con_se_cb_E0, $1D   ; 
- D 0 - I - 0x00200B 00:9FFB: 03        .byte $03   ; 
- D 0 - I - 0x00200C 00:9FFC: 03        .byte $03   ; 
- D 0 - I - 0x00200D 00:9FFD: 03        .byte $03   ; 
- D 0 - I - 0x00200E 00:9FFE: 03        .byte $03   ; 
- D 0 - I - 0x00200F 00:9FFF: E0        .byte con_se_cb_E0, $0F   ; 
- D 1 - I - 0x002011 00:A001: 86        .byte $86   ; 
- D 1 - I - 0x002012 00:A002: 02        .byte $02   ; 
- D 1 - I - 0x002013 00:A003: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002015 00:A005: 84        .byte $84   ; 
- D 1 - I - 0x002016 00:A006: 03        .byte $03   ; 
- D 1 - I - 0x002017 00:A007: 03        .byte $03   ; 
- D 1 - I - 0x002018 00:A008: 10        .byte $10   ; 
- D 1 - I - 0x002019 00:A009: 03        .byte $03   ; 
- D 1 - I - 0x00201A 00:A00A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00201C 00:A00C: 86        .byte $86   ; 
- D 1 - I - 0x00201D 00:A00D: 05        .byte $05   ; 
- D 1 - I - 0x00201E 00:A00E: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002020 00:A010: 84        .byte $84   ; 
- D 1 - I - 0x002021 00:A011: 03        .byte $03   ; 
- D 1 - I - 0x002022 00:A012: 03        .byte $03   ; 
- D 1 - I - 0x002023 00:A013: 10        .byte $10   ; 
- D 1 - I - 0x002024 00:A014: 10        .byte $10   ; 
- D 1 - I - 0x002025 00:A015: 03        .byte $03   ; 
- D 1 - I - 0x002026 00:A016: 03        .byte $03   ; 
- D 1 - I - 0x002027 00:A017: 03        .byte $03   ; 
- D 1 - I - 0x002028 00:A018: 03        .byte $03   ; 
- D 1 - I - 0x002029 00:A019: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00202B 00:A01B: 86        .byte $86   ; 
- D 1 - I - 0x00202C 00:A01C: 0A        .byte $0A   ; 
- D 1 - I - 0x00202D 00:A01D: EB        .byte con_se_cb_EB, $07   ; 
- D 1 - I - 0x00202F 00:A01F: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002031 00:A021: 84        .byte $84   ; 
- D 1 - I - 0x002032 00:A022: 03        .byte $03   ; 
- D 1 - I - 0x002033 00:A023: 03        .byte $03   ; 
- D 1 - I - 0x002034 00:A024: 10        .byte $10   ; 
- D 1 - I - 0x002035 00:A025: 03        .byte $03   ; 
- D 1 - I - 0x002036 00:A026: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002038 00:A028: 88        .byte $88   ; 
- D 1 - I - 0x002039 00:A029: 0A        .byte $0A   ; 
- D 1 - I - 0x00203A 00:A02A: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x00203C 00:A02C: 84        .byte $84   ; 
- D 1 - I - 0x00203D 00:A02D: 10        .byte $10   ; 
- D 1 - I - 0x00203E 00:A02E: 03        .byte $03   ; 
- D 1 - I - 0x00203F 00:A02F: 86        .byte $86   ; 
- D 1 - I - 0x002040 00:A030: 03        .byte $03   ; 
- D 1 - I - 0x002041 00:A031: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002043 00:A033: 88        .byte $88   ; 
- D 1 - I - 0x002044 00:A034: 0A        .byte $0A   ; 
- D 1 - I - 0x002045 00:A035: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002046 00:A036: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002048 00:A038: 84        .byte $84   ; 
- D 1 - I - 0x002049 00:A039: 03        .byte $03   ; 
- D 1 - I - 0x00204A 00:A03A: 03        .byte $03   ; 
- D 1 - I - 0x00204B 00:A03B: 10        .byte $10   ; 
- D 1 - I - 0x00204C 00:A03C: 03        .byte $03   ; 
- D 1 - I - 0x00204D 00:A03D: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00204F 00:A03F: 88        .byte $88   ; 
- D 1 - I - 0x002050 00:A040: 0A        .byte $0A   ; 
- D 1 - I - 0x002051 00:A041: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002053 00:A043: 84        .byte $84   ; 
- D 1 - I - 0x002054 00:A044: 03        .byte $03   ; 
- D 1 - I - 0x002055 00:A045: 03        .byte $03   ; 
- D 1 - I - 0x002056 00:A046: 86        .byte $86   ; 
- D 1 - I - 0x002057 00:A047: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002059 00:A049: 05        .byte $05   ; 
- D 1 - I - 0x00205A 00:A04A: 88        .byte $88   ; 
- D 1 - I - 0x00205B 00:A04B: 0A        .byte $0A   ; 
- D 1 - I - 0x00205C 00:A04C: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x00205E 00:A04E: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002060 00:A050: 84        .byte $84   ; 
- D 1 - I - 0x002061 00:A051: 03        .byte $03   ; 
- D 1 - I - 0x002062 00:A052: 03        .byte $03   ; 
- D 1 - I - 0x002063 00:A053: 86        .byte $86   ; 
- D 1 - I - 0x002064 00:A054: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002066 00:A056: 04        .byte $04   ; 
- D 1 - I - 0x002067 00:A057: 88        .byte $88   ; 
- D 1 - I - 0x002068 00:A058: 0A        .byte $0A   ; 
- D 1 - I - 0x002069 00:A059: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x00206B 00:A05B: 84        .byte $84   ; 
- D 1 - I - 0x00206C 00:A05C: 10        .byte $10   ; 
- D 1 - I - 0x00206D 00:A05D: 03        .byte $03   ; 
- D 1 - I - 0x00206E 00:A05E: 86        .byte $86   ; 
- D 1 - I - 0x00206F 00:A05F: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002071 00:A061: 04        .byte $04   ; 
- D 1 - I - 0x002072 00:A062: 88        .byte $88   ; 
- D 1 - I - 0x002073 00:A063: 0A        .byte $0A   ; 
- D 1 - I - 0x002074 00:A064: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002075 00:A065: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002077 00:A067: 84        .byte $84   ; 
- D 1 - I - 0x002078 00:A068: 03        .byte $03   ; 
- D 1 - I - 0x002079 00:A069: 03        .byte $03   ; 
- D 1 - I - 0x00207A 00:A06A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00207C 00:A06C: 86        .byte $86   ; 
- D 1 - I - 0x00207D 00:A06D: 04        .byte $04   ; 
- D 1 - I - 0x00207E 00:A06E: 88        .byte $88   ; 
- D 1 - I - 0x00207F 00:A06F: 0A        .byte $0A   ; 
- D 1 - I - 0x002080 00:A070: 86        .byte $86   ; 
- D 1 - I - 0x002081 00:A071: 05        .byte $05   ; 
- D 1 - I - 0x002082 00:A072: 05        .byte $05   ; 
- D 1 - I - 0x002083 00:A073: 05        .byte $05   ; 
- D 1 - I - 0x002084 00:A074: 84        .byte $84   ; 
- D 1 - I - 0x002085 00:A075: 05        .byte $05   ; 
- D 1 - I - 0x002086 00:A076: 05        .byte $05   ; 
- D 1 - I - 0x002087 00:A077: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x002089 00:A079: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x00208B 00:A07B: 84        .byte $84   ; 
- D 1 - I - 0x00208C 00:A07C: 03        .byte $03   ; 
- D 1 - I - 0x00208D 00:A07D: 03        .byte $03   ; 
- D 1 - I - 0x00208E 00:A07E: 86        .byte $86   ; 
- D 1 - I - 0x00208F 00:A07F: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002091 00:A081: 04        .byte $04   ; 
- D 1 - I - 0x002092 00:A082: 0A        .byte $0A   ; 
- D 1 - I - 0x002093 00:A083: 04        .byte $04   ; 
- D 1 - I - 0x002094 00:A084: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002096 00:A086: 84        .byte $84   ; 
- D 1 - I - 0x002097 00:A087: 10        .byte $10   ; 
- D 1 - I - 0x002098 00:A088: 03        .byte $03   ; 
- D 1 - I - 0x002099 00:A089: 86        .byte $86   ; 
- D 1 - I - 0x00209A 00:A08A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00209C 00:A08C: 04        .byte $04   ; 
- D 1 - I - 0x00209D 00:A08D: 0A        .byte $0A   ; 
- D 1 - I - 0x00209E 00:A08E: 04        .byte $04   ; 
- D 1 - I - 0x00209F 00:A08F: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0020A0 00:A090: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020A2 00:A092: 84        .byte $84   ; 
- D 1 - I - 0x0020A3 00:A093: 03        .byte $03   ; 
- D 1 - I - 0x0020A4 00:A094: 03        .byte $03   ; 
- D 1 - I - 0x0020A5 00:A095: 86        .byte $86   ; 
- D 1 - I - 0x0020A6 00:A096: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0020A8 00:A098: 04        .byte $04   ; 
- D 1 - I - 0x0020A9 00:A099: 0A        .byte $0A   ; 
- D 1 - I - 0x0020AA 00:A09A: 04        .byte $04   ; 
- D 1 - I - 0x0020AB 00:A09B: 86        .byte $86   ; 
- D 1 - I - 0x0020AC 00:A09C: 07        .byte $07   ; 
- D 1 - I - 0x0020AD 00:A09D: 07        .byte $07   ; 
- D 1 - I - 0x0020AE 00:A09E: 84        .byte $84   ; 
- D 1 - I - 0x0020AF 00:A09F: 07        .byte $07   ; 
- D 1 - I - 0x0020B0 00:A0A0: 07        .byte $07   ; 
- D 1 - I - 0x0020B1 00:A0A1: 07        .byte $07   ; 
- D 1 - I - 0x0020B2 00:A0A2: 07        .byte $07   ; 
- D 1 - I - 0x0020B3 00:A0A3: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x0020B5 00:A0A5: EB        .byte con_se_cb_EB, $07   ; 
- D 1 - I - 0x0020B7 00:A0A7: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020B9 00:A0A9: 84        .byte $84   ; 
- D 1 - I - 0x0020BA 00:A0AA: 03        .byte $03   ; 
- D 1 - I - 0x0020BB 00:A0AB: 03        .byte $03   ; 
- D 1 - I - 0x0020BC 00:A0AC: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0020BE 00:A0AE: 86        .byte $86   ; 
- D 1 - I - 0x0020BF 00:A0AF: 07        .byte $07   ; 
- D 1 - I - 0x0020C0 00:A0B0: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0020C1 00:A0B1: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020C3 00:A0B3: 84        .byte $84   ; 
- D 1 - I - 0x0020C4 00:A0B4: 03        .byte $03   ; 
- D 1 - I - 0x0020C5 00:A0B5: 03        .byte $03   ; 
- D 1 - I - 0x0020C6 00:A0B6: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0020C8 00:A0B8: 07        .byte $07   ; 
- D 1 - I - 0x0020C9 00:A0B9: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x0020CB 00:A0BB: 0A        .byte $0A   ; 
- D 1 - I - 0x0020CC 00:A0BC: EB        .byte con_se_cb_EB, $07   ; 
- D 1 - I - 0x0020CE 00:A0BE: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020D0 00:A0C0: 84        .byte $84   ; 
- D 1 - I - 0x0020D1 00:A0C1: 03        .byte $03   ; 
- D 1 - I - 0x0020D2 00:A0C2: 03        .byte $03   ; 
- D 1 - I - 0x0020D3 00:A0C3: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0020D5 00:A0C5: 86        .byte $86   ; 
- D 1 - I - 0x0020D6 00:A0C6: 07        .byte $07   ; 
- D 1 - I - 0x0020D7 00:A0C7: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0020D8 00:A0C8: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x0020DA 00:A0CA: 84        .byte $84   ; 
- D 1 - I - 0x0020DB 00:A0CB: 0A        .byte $0A   ; 
- D 1 - I - 0x0020DC 00:A0CC: 10        .byte $10   ; 
- D 1 - I - 0x0020DD 00:A0CD: 0A        .byte $0A   ; 
- D 1 - I - 0x0020DE 00:A0CE: 0A        .byte $0A   ; 
- D 1 - I - 0x0020DF 00:A0CF: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x0020E1 00:A0D1: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x0020E3 00:A0D3: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020E5 00:A0D5: 84        .byte $84   ; 
- D 1 - I - 0x0020E6 00:A0D6: 03        .byte $03   ; 
- D 1 - I - 0x0020E7 00:A0D7: 03        .byte $03   ; 
- D 1 - I - 0x0020E8 00:A0D8: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0020EA 00:A0DA: 86        .byte $86   ; 
- D 1 - I - 0x0020EB 00:A0DB: 07        .byte $07   ; 
- D 1 - I - 0x0020EC 00:A0DC: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0020ED 00:A0DD: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020EF 00:A0DF: 84        .byte $84   ; 
- D 1 - I - 0x0020F0 00:A0E0: 03        .byte $03   ; 
- D 1 - I - 0x0020F1 00:A0E1: 03        .byte $03   ; 
- D 1 - I - 0x0020F2 00:A0E2: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0020F4 00:A0E4: 07        .byte $07   ; 
- D 1 - I - 0x0020F5 00:A0E5: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x0020F7 00:A0E7: 0A        .byte $0A   ; 
- D 1 - I - 0x0020F8 00:A0E8: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0020F9 00:A0E9: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x0020FB 00:A0EB: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x0020FD 00:A0ED: 84        .byte $84   ; 
- D 1 - I - 0x0020FE 00:A0EE: 03        .byte $03   ; 
- D 1 - I - 0x0020FF 00:A0EF: 03        .byte $03   ; 
- D 1 - I - 0x002100 00:A0F0: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002102 00:A0F2: 86        .byte $86   ; 
- D 1 - I - 0x002103 00:A0F3: 07        .byte $07   ; 
- D 1 - I - 0x002104 00:A0F4: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002105 00:A0F5: 84        .byte $84   ; 
- D 1 - I - 0x002106 00:A0F6: 07        .byte $07   ; 
- D 1 - I - 0x002107 00:A0F7: 07        .byte $07   ; 
- D 1 - I - 0x002108 00:A0F8: 86        .byte $86   ; 
- D 1 - I - 0x002109 00:A0F9: 0A        .byte $0A   ; 
- D 1 - I - 0x00210A 00:A0FA: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x00210B 00:A0FB: EB        .byte con_se_cb_EB, $07   ; 
- D 1 - I - 0x00210D 00:A0FD: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x00210F 00:A0FF: 84        .byte $84   ; 
- D 1 - I - 0x002110 00:A100: 03        .byte $03   ; 
- D 1 - I - 0x002111 00:A101: 03        .byte $03   ; 
- D 1 - I - 0x002112 00:A102: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002114 00:A104: 86        .byte $86   ; 
- D 1 - I - 0x002115 00:A105: 07        .byte $07   ; 
- D 1 - I - 0x002116 00:A106: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002117 00:A107: E0        .byte con_se_cb_E0, $3C   ; 
- D 1 - I - 0x002119 00:A109: 84        .byte $84   ; 
- D 1 - I - 0x00211A 00:A10A: 05        .byte $05   ; 
- D 1 - I - 0x00211B 00:A10B: 05        .byte $05   ; 
- D 1 - I - 0x00211C 00:A10C: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00211E 00:A10E: 07        .byte $07   ; 
- D 1 - I - 0x00211F 00:A10F: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002121 00:A111: 0A        .byte $0A   ; 
- D 1 - I - 0x002122 00:A112: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x002124 00:A114: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002126 00:A116: 84        .byte $84   ; 
- D 1 - I - 0x002127 00:A117: 03        .byte $03   ; 
- D 1 - I - 0x002128 00:A118: 03        .byte $03   ; 
- D 1 - I - 0x002129 00:A119: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00212B 00:A11B: 86        .byte $86   ; 
- D 1 - I - 0x00212C 00:A11C: 07        .byte $07   ; 
- D 1 - I - 0x00212D 00:A11D: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x00212E 00:A11E: E0        .byte con_se_cb_E0, $3C   ; 
- D 1 - I - 0x002130 00:A120: 86        .byte $86   ; 
- D 1 - I - 0x002131 00:A121: 05        .byte $05   ; 
- D 1 - I - 0x002132 00:A122: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002134 00:A124: 84        .byte $84   ; 
- D 1 - I - 0x002135 00:A125: 0A        .byte $0A   ; 
- D 1 - I - 0x002136 00:A126: 0A        .byte $0A   ; 
- D 1 - I - 0x002137 00:A127: 86        .byte $86   ; 
- D 1 - I - 0x002138 00:A128: 07        .byte $07   ; 
- D 1 - I - 0x002139 00:A129: 07        .byte $07   ; 
- D 1 - I - 0x00213A 00:A12A: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x00213C 00:A12C: E0        .byte con_se_cb_E0, $01   ; 
- D 1 - I - 0x00213E 00:A12E: 05        .byte $05   ; 
- D 1 - I - 0x00213F 00:A12F: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002141 00:A131: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002143 00:A133: 84        .byte $84   ; 
- D 1 - I - 0x002144 00:A134: 07        .byte $07   ; 
- D 1 - I - 0x002145 00:A135: 07        .byte $07   ; 
- D 1 - I - 0x002146 00:A136: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002148 00:A138: 03        .byte $03   ; 
- D 1 - I - 0x002149 00:A139: 86        .byte $86   ; 
- D 1 - I - 0x00214A 00:A13A: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x00214C 00:A13C: 0A        .byte $0A   ; 
- D 1 - I - 0x00214D 00:A13D: 84        .byte $84   ; 
- D 1 - I - 0x00214E 00:A13E: 07        .byte $07   ; 
- D 1 - I - 0x00214F 00:A13F: 07        .byte $07   ; 
- D 1 - I - 0x002150 00:A140: 82        .byte $82   ; 
- D 1 - I - 0x002151 00:A141: E3        .byte con_se_cb_E3, $09   ; 
- D 1 - I - 0x002153 00:A143: 07        .byte $07   ; 
- D 1 - I - 0x002154 00:A144: 84        .byte $84   ; 
- D 1 - I - 0x002155 00:A145: E3        .byte con_se_cb_E3, $0B   ; 
- D 1 - I - 0x002157 00:A147: 07        .byte $07   ; 
- D 1 - I - 0x002158 00:A148: FF        .byte con_se_cb_stop   ; 



_music_A149_16_team_select:
- D 1 - I - 0x002159 00:A149: 04        .byte $04   ; 
- D 1 - I - 0x00215A 00:A14A: 56 A1     .word off_ch_16_A156_04
- D 1 - I - 0x00215C 00:A14C: 05        .byte $05   ; 
- D 1 - I - 0x00215D 00:A14D: B0 A2     .word off_ch_16_A2B0_05
- D 1 - I - 0x00215F 00:A14F: 06        .byte $06   ; 
- D 1 - I - 0x002160 00:A150: 0E A4     .word off_ch_16_A40E_06
- D 1 - I - 0x002162 00:A152: 07        .byte $07   ; 
- D 1 - I - 0x002163 00:A153: 7F A5     .word off_ch_16_A57F_07
- D 1 - I - 0x002165 00:A155: FF        .byte $FF   ; 



off_ch_16_A156_04:
off_E8_A156:
- D 1 - I - 0x002166 00:A156: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002167 00:A157: 87        .byte $87   ; 
- D 1 - I - 0x002168 00:A158: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x00216A 00:A15A: E0        .byte con_se_cb_E0, $34   ; 
- D 1 - I - 0x00216C 00:A15C: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x00216E 00:A15E: EB        .byte con_se_cb_EB, $07   ; 
- D 1 - I - 0x002170 00:A160: 0C        .byte $0C   ; 
- D 1 - I - 0x002171 00:A161: 85        .byte $85   ; 
- D 1 - I - 0x002172 00:A162: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002174 00:A164: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002175 00:A165: 34        .byte $34   ; 
- D 1 - I - 0x002176 00:A166: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x002178 00:A168: 34        .byte $34   ; 
- D 1 - I - 0x002179 00:A169: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00217A 00:A16A: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x00217C 00:A16C: 34        .byte $34   ; 
- D 1 - I - 0x00217D 00:A16D: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x00217F 00:A16F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002180 00:A170: 32        .byte $32   ; 
- D 1 - I - 0x002181 00:A171: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x002183 00:A173: 32        .byte $32   ; 
- D 1 - I - 0x002184 00:A174: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002185 00:A175: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x002187 00:A177: 32        .byte $32   ; 
- D 1 - I - 0x002188 00:A178: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x00218A 00:A17A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00218B 00:A17B: 2B        .byte $2B   ; 
- D 1 - I - 0x00218C 00:A17C: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00218E 00:A17E: 2B        .byte $2B   ; 
- D 1 - I - 0x00218F 00:A17F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002190 00:A180: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x002192 00:A182: 2B        .byte $2B   ; 
- D 1 - I - 0x002193 00:A183: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x002195 00:A185: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002196 00:A186: 30        .byte $30   ; 
- D 1 - I - 0x002197 00:A187: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x002199 00:A189: 30        .byte $30   ; 
- D 1 - I - 0x00219A 00:A18A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00219B 00:A18B: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x00219D 00:A18D: 30        .byte $30   ; 
- D 1 - I - 0x00219E 00:A18E: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0021A0 00:A190: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0021A1 00:A191: 30        .byte $30   ; 
- D 1 - I - 0x0021A2 00:A192: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0021A4 00:A194: 30        .byte $30   ; 
- D 1 - I - 0x0021A5 00:A195: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0021A6 00:A196: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0021A8 00:A198: 30        .byte $30   ; 
- D 1 - I - 0x0021A9 00:A199: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0021AA 00:A19A: 0C        .byte $0C   ; 
- D 1 - I - 0x0021AB 00:A19B: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0021AD 00:A19D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0021AE 00:A19E: 34        .byte $34   ; 
- D 1 - I - 0x0021AF 00:A19F: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0021B1 00:A1A1: 34        .byte $34   ; 
- D 1 - I - 0x0021B2 00:A1A2: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0021B3 00:A1A3: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0021B5 00:A1A5: 34        .byte $34   ; 
- D 1 - I - 0x0021B6 00:A1A6: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0021B8 00:A1A8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0021B9 00:A1A9: 32        .byte $32   ; 
- D 1 - I - 0x0021BA 00:A1AA: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0021BC 00:A1AC: 32        .byte $32   ; 
- D 1 - I - 0x0021BD 00:A1AD: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0021BE 00:A1AE: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0021C0 00:A1B0: 32        .byte $32   ; 
- D 1 - I - 0x0021C1 00:A1B1: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0021C3 00:A1B3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0021C4 00:A1B4: 2B        .byte $2B   ; 
- D 1 - I - 0x0021C5 00:A1B5: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0021C7 00:A1B7: 2B        .byte $2B   ; 
- D 1 - I - 0x0021C8 00:A1B8: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0021C9 00:A1B9: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0021CB 00:A1BB: 2B        .byte $2B   ; 
- D 1 - I - 0x0021CC 00:A1BC: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0021CE 00:A1BE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0021CF 00:A1BF: 30        .byte $30   ; 
- D 1 - I - 0x0021D0 00:A1C0: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0021D2 00:A1C2: 30        .byte $30   ; 
- D 1 - I - 0x0021D3 00:A1C3: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0021D4 00:A1C4: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0021D6 00:A1C6: 30        .byte $30   ; 
- D 1 - I - 0x0021D7 00:A1C7: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0021D9 00:A1C9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0021DA 00:A1CA: 2B        .byte $2B   ; 
- D 1 - I - 0x0021DB 00:A1CB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0021DC 00:A1CC: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x0021DE 00:A1CE: 2B        .byte $2B   ; 
- D 1 - I - 0x0021DF 00:A1CF: ED        .byte con_se_cb_ED, $0C   ; 
- D 1 - I - 0x0021E1 00:A1D1: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0021E3 00:A1D3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021E4 00:A1D4: 29        .byte $29   ; 
- D 1 - I - 0x0021E5 00:A1D5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021E6 00:A1D6: 29        .byte $29   ; 
- D 1 - I - 0x0021E7 00:A1D7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021E8 00:A1D8: 29        .byte $29   ; 
- D 1 - I - 0x0021E9 00:A1D9: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x0021EB 00:A1DB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021EC 00:A1DC: 85        .byte $85   ; 
- D 1 - I - 0x0021ED 00:A1DD: 83        .byte $83   ; 
- D 1 - I - 0x0021EE 00:A1DE: 2B        .byte $2B   ; 
- D 1 - I - 0x0021EF 00:A1DF: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x0021F1 00:A1E1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021F2 00:A1E2: 83        .byte $83   ; 
- D 1 - I - 0x0021F3 00:A1E3: 2B        .byte $2B   ; 
- D 1 - I - 0x0021F4 00:A1E4: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0021F6 00:A1E6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021F7 00:A1E7: 85        .byte $85   ; 
- D 1 - I - 0x0021F8 00:A1E8: 2B        .byte $2B   ; 
- D 1 - I - 0x0021F9 00:A1E9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021FA 00:A1EA: 2B        .byte $2B   ; 
- D 1 - I - 0x0021FB 00:A1EB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021FC 00:A1EC: 2B        .byte $2B   ; 
- D 1 - I - 0x0021FD 00:A1ED: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0021FE 00:A1EE: 30        .byte $30   ; 
- D 1 - I - 0x0021FF 00:A1EF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002200 00:A1F0: 30        .byte $30   ; 
- D 1 - I - 0x002201 00:A1F1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002202 00:A1F2: 30        .byte $30   ; 
- D 1 - I - 0x002203 00:A1F3: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x002205 00:A1F5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002206 00:A1F6: 83        .byte $83   ; 
- D 1 - I - 0x002207 00:A1F7: 32        .byte $32   ; 
- D 1 - I - 0x002208 00:A1F8: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00220A 00:A1FA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00220B 00:A1FB: 85        .byte $85   ; 
- D 1 - I - 0x00220C 00:A1FC: 32        .byte $32   ; 
- D 1 - I - 0x00220D 00:A1FD: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x00220F 00:A1FF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002210 00:A200: 83        .byte $83   ; 
- D 1 - I - 0x002211 00:A201: 30        .byte $30   ; 
- D 1 - I - 0x002212 00:A202: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002214 00:A204: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002215 00:A205: 85        .byte $85   ; 
- D 1 - I - 0x002216 00:A206: 30        .byte $30   ; 
- D 1 - I - 0x002217 00:A207: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002218 00:A208: 2B        .byte $2B   ; 
- D 1 - I - 0x002219 00:A209: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00221A 00:A20A: 30        .byte $30   ; 
- D 1 - I - 0x00221B 00:A20B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00221C 00:A20C: 29        .byte $29   ; 
- D 1 - I - 0x00221D 00:A20D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00221E 00:A20E: 29        .byte $29   ; 
- D 1 - I - 0x00221F 00:A20F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002220 00:A210: 29        .byte $29   ; 
- D 1 - I - 0x002221 00:A211: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002223 00:A213: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002224 00:A214: 85        .byte $85   ; 
- D 1 - I - 0x002225 00:A215: 83        .byte $83   ; 
- D 1 - I - 0x002226 00:A216: 2B        .byte $2B   ; 
- D 1 - I - 0x002227 00:A217: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x002229 00:A219: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00222A 00:A21A: 83        .byte $83   ; 
- D 1 - I - 0x00222B 00:A21B: 2B        .byte $2B   ; 
- D 1 - I - 0x00222C 00:A21C: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00222E 00:A21E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00222F 00:A21F: 85        .byte $85   ; 
- D 1 - I - 0x002230 00:A220: 2B        .byte $2B   ; 
- D 1 - I - 0x002231 00:A221: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002232 00:A222: 2B        .byte $2B   ; 
- D 1 - I - 0x002233 00:A223: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002234 00:A224: 2B        .byte $2B   ; 
- D 1 - I - 0x002235 00:A225: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002237 00:A227: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002238 00:A228: 85        .byte $85   ; 
- D 1 - I - 0x002239 00:A229: 83        .byte $83   ; 
- D 1 - I - 0x00223A 00:A22A: 32        .byte $32   ; 
- D 1 - I - 0x00223B 00:A22B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00223C 00:A22C: 32        .byte $32   ; 
- D 1 - I - 0x00223D 00:A22D: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00223F 00:A22F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002240 00:A230: 85        .byte $85   ; 
- D 1 - I - 0x002241 00:A231: 32        .byte $32   ; 
- D 1 - I - 0x002242 00:A232: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002244 00:A234: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002245 00:A235: 85        .byte $85   ; 
- D 1 - I - 0x002246 00:A236: 83        .byte $83   ; 
- D 1 - I - 0x002247 00:A237: 31        .byte $31   ; 
- D 1 - I - 0x002248 00:A238: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002249 00:A239: 31        .byte $31   ; 
- D 1 - I - 0x00224A 00:A23A: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00224C 00:A23C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00224D 00:A23D: 85        .byte $85   ; 
- D 1 - I - 0x00224E 00:A23E: 31        .byte $31   ; 
- D 1 - I - 0x00224F 00:A23F: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002251 00:A241: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002252 00:A242: 29        .byte $29   ; 
- D 1 - I - 0x002253 00:A243: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002254 00:A244: 29        .byte $29   ; 
- D 1 - I - 0x002255 00:A245: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002256 00:A246: 29        .byte $29   ; 
- D 1 - I - 0x002257 00:A247: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002259 00:A249: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00225A 00:A24A: 85        .byte $85   ; 
- D 1 - I - 0x00225B 00:A24B: 83        .byte $83   ; 
- D 1 - I - 0x00225C 00:A24C: 2B        .byte $2B   ; 
- D 1 - I - 0x00225D 00:A24D: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x00225F 00:A24F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002260 00:A250: 83        .byte $83   ; 
- D 1 - I - 0x002261 00:A251: 2B        .byte $2B   ; 
- D 1 - I - 0x002262 00:A252: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002264 00:A254: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002265 00:A255: 85        .byte $85   ; 
- D 1 - I - 0x002266 00:A256: 2B        .byte $2B   ; 
- D 1 - I - 0x002267 00:A257: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002268 00:A258: 2B        .byte $2B   ; 
- D 1 - I - 0x002269 00:A259: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00226A 00:A25A: 2B        .byte $2B   ; 
- D 1 - I - 0x00226B 00:A25B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00226C 00:A25C: 30        .byte $30   ; 
- D 1 - I - 0x00226D 00:A25D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00226E 00:A25E: 30        .byte $30   ; 
- D 1 - I - 0x00226F 00:A25F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002270 00:A260: 30        .byte $30   ; 
- D 1 - I - 0x002271 00:A261: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x002273 00:A263: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002274 00:A264: 83        .byte $83   ; 
- D 1 - I - 0x002275 00:A265: 32        .byte $32   ; 
- D 1 - I - 0x002276 00:A266: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002278 00:A268: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002279 00:A269: 85        .byte $85   ; 
- D 1 - I - 0x00227A 00:A26A: 32        .byte $32   ; 
- D 1 - I - 0x00227B 00:A26B: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x00227D 00:A26D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00227E 00:A26E: 83        .byte $83   ; 
- D 1 - I - 0x00227F 00:A26F: 30        .byte $30   ; 
- D 1 - I - 0x002280 00:A270: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002282 00:A272: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002283 00:A273: 85        .byte $85   ; 
- D 1 - I - 0x002284 00:A274: 30        .byte $30   ; 
- D 1 - I - 0x002285 00:A275: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002286 00:A276: 2B        .byte $2B   ; 
- D 1 - I - 0x002287 00:A277: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002288 00:A278: 30        .byte $30   ; 
- D 1 - I - 0x002289 00:A279: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00228A 00:A27A: 29        .byte $29   ; 
- D 1 - I - 0x00228B 00:A27B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00228C 00:A27C: 29        .byte $29   ; 
- D 1 - I - 0x00228D 00:A27D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00228E 00:A27E: 29        .byte $29   ; 
- D 1 - I - 0x00228F 00:A27F: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002291 00:A281: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002292 00:A282: 85        .byte $85   ; 
- D 1 - I - 0x002293 00:A283: 83        .byte $83   ; 
- D 1 - I - 0x002294 00:A284: 2B        .byte $2B   ; 
- D 1 - I - 0x002295 00:A285: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x002297 00:A287: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002298 00:A288: 83        .byte $83   ; 
- D 1 - I - 0x002299 00:A289: 2B        .byte $2B   ; 
- D 1 - I - 0x00229A 00:A28A: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00229C 00:A28C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00229D 00:A28D: 85        .byte $85   ; 
- D 1 - I - 0x00229E 00:A28E: 2B        .byte $2B   ; 
- D 1 - I - 0x00229F 00:A28F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022A0 00:A290: 2B        .byte $2B   ; 
- D 1 - I - 0x0022A1 00:A291: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022A2 00:A292: 2B        .byte $2B   ; 
- D 1 - I - 0x0022A3 00:A293: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x0022A5 00:A295: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022A6 00:A296: 85        .byte $85   ; 
- D 1 - I - 0x0022A7 00:A297: 83        .byte $83   ; 
- D 1 - I - 0x0022A8 00:A298: 30        .byte $30   ; 
- D 1 - I - 0x0022A9 00:A299: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022AA 00:A29A: 30        .byte $30   ; 
- D 1 - I - 0x0022AB 00:A29B: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0022AD 00:A29D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022AE 00:A29E: 85        .byte $85   ; 
- D 1 - I - 0x0022AF 00:A29F: 30        .byte $30   ; 
- D 1 - I - 0x0022B0 00:A2A0: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x0022B2 00:A2A2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022B3 00:A2A3: 85        .byte $85   ; 
- D 1 - I - 0x0022B4 00:A2A4: 83        .byte $83   ; 
- D 1 - I - 0x0022B5 00:A2A5: 30        .byte $30   ; 
- D 1 - I - 0x0022B6 00:A2A6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022B7 00:A2A7: 30        .byte $30   ; 
- D 1 - I - 0x0022B8 00:A2A8: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0022BA 00:A2AA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0022BB 00:A2AB: 85        .byte $85   ; 
- D 1 - I - 0x0022BC 00:A2AC: 30        .byte $30   ; 
- D 1 - I - 0x0022BD 00:A2AD: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0022BE 00:A2AE: 56 A1     .word off_E8_A156



off_ch_16_A2B0_05:
- D 1 - I - 0x0022C0 00:A2B0: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x0022C1 00:A2B1: 81        .byte $81   ; 
- D 1 - I - 0x0022C2 00:A2B2: 0C        .byte $0C   ; 
off_E8_A2B3:
- D 1 - I - 0x0022C3 00:A2B3: 87        .byte $87   ; 
- D 1 - I - 0x0022C4 00:A2B4: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x0022C6 00:A2B6: E0        .byte con_se_cb_E0, $34   ; 
- D 1 - I - 0x0022C8 00:A2B8: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x0022CA 00:A2BA: EB        .byte con_se_cb_EB, $07   ; 
- D 1 - I - 0x0022CC 00:A2BC: 0C        .byte $0C   ; 
- D 1 - I - 0x0022CD 00:A2BD: 85        .byte $85   ; 
- D 1 - I - 0x0022CE 00:A2BE: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0022D0 00:A2C0: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0022D1 00:A2C1: 30        .byte $30   ; 
- D 1 - I - 0x0022D2 00:A2C2: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0022D4 00:A2C4: 30        .byte $30   ; 
- D 1 - I - 0x0022D5 00:A2C5: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0022D6 00:A2C6: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0022D8 00:A2C8: 30        .byte $30   ; 
- D 1 - I - 0x0022D9 00:A2C9: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0022DB 00:A2CB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0022DC 00:A2CC: 2B        .byte $2B   ; 
- D 1 - I - 0x0022DD 00:A2CD: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0022DF 00:A2CF: 2B        .byte $2B   ; 
- D 1 - I - 0x0022E0 00:A2D0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0022E1 00:A2D1: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0022E3 00:A2D3: 2B        .byte $2B   ; 
- D 1 - I - 0x0022E4 00:A2D4: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0022E6 00:A2D6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0022E7 00:A2D7: 27        .byte $27   ; 
- D 1 - I - 0x0022E8 00:A2D8: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0022EA 00:A2DA: 27        .byte $27   ; 
- D 1 - I - 0x0022EB 00:A2DB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0022EC 00:A2DC: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0022EE 00:A2DE: 27        .byte $27   ; 
- D 1 - I - 0x0022EF 00:A2DF: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0022F1 00:A2E1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0022F2 00:A2E2: 29        .byte $29   ; 
- D 1 - I - 0x0022F3 00:A2E3: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0022F5 00:A2E5: 29        .byte $29   ; 
- D 1 - I - 0x0022F6 00:A2E6: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0022F7 00:A2E7: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0022F9 00:A2E9: 29        .byte $29   ; 
- D 1 - I - 0x0022FA 00:A2EA: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0022FC 00:A2EC: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0022FD 00:A2ED: 29        .byte $29   ; 
- D 1 - I - 0x0022FE 00:A2EE: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x002300 00:A2F0: 29        .byte $29   ; 
- D 1 - I - 0x002301 00:A2F1: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002302 00:A2F2: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x002304 00:A2F4: 29        .byte $29   ; 
- D 1 - I - 0x002305 00:A2F5: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002306 00:A2F6: 0C        .byte $0C   ; 
- D 1 - I - 0x002307 00:A2F7: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002309 00:A2F9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00230A 00:A2FA: 30        .byte $30   ; 
- D 1 - I - 0x00230B 00:A2FB: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00230D 00:A2FD: 30        .byte $30   ; 
- D 1 - I - 0x00230E 00:A2FE: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00230F 00:A2FF: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x002311 00:A301: 30        .byte $30   ; 
- D 1 - I - 0x002312 00:A302: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x002314 00:A304: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002315 00:A305: 2B        .byte $2B   ; 
- D 1 - I - 0x002316 00:A306: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x002318 00:A308: 2B        .byte $2B   ; 
- D 1 - I - 0x002319 00:A309: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00231A 00:A30A: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x00231C 00:A30C: 2B        .byte $2B   ; 
- D 1 - I - 0x00231D 00:A30D: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x00231F 00:A30F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002320 00:A310: 27        .byte $27   ; 
- D 1 - I - 0x002321 00:A311: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x002323 00:A313: 27        .byte $27   ; 
- D 1 - I - 0x002324 00:A314: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002325 00:A315: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x002327 00:A317: 27        .byte $27   ; 
- D 1 - I - 0x002328 00:A318: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x00232A 00:A31A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00232B 00:A31B: 29        .byte $29   ; 
- D 1 - I - 0x00232C 00:A31C: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00232E 00:A31E: 29        .byte $29   ; 
- D 1 - I - 0x00232F 00:A31F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002330 00:A320: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x002332 00:A322: 29        .byte $29   ; 
- D 1 - I - 0x002333 00:A323: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x002335 00:A325: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002336 00:A326: 27        .byte $27   ; 
- D 1 - I - 0x002337 00:A327: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002338 00:A328: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x00233A 00:A32A: 27        .byte $27   ; 
- D 1 - I - 0x00233B 00:A32B: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x00233D 00:A32D: ED        .byte con_se_cb_ED, $0C   ; 
- D 1 - I - 0x00233F 00:A32F: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002341 00:A331: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002342 00:A332: 25        .byte $25   ; 
- D 1 - I - 0x002343 00:A333: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002344 00:A334: 25        .byte $25   ; 
- D 1 - I - 0x002345 00:A335: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002346 00:A336: 25        .byte $25   ; 
- D 1 - I - 0x002347 00:A337: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002349 00:A339: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00234A 00:A33A: 85        .byte $85   ; 
- D 1 - I - 0x00234B 00:A33B: 83        .byte $83   ; 
- D 1 - I - 0x00234C 00:A33C: 27        .byte $27   ; 
- D 1 - I - 0x00234D 00:A33D: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x00234F 00:A33F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002350 00:A340: 83        .byte $83   ; 
- D 1 - I - 0x002351 00:A341: 27        .byte $27   ; 
- D 1 - I - 0x002352 00:A342: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002354 00:A344: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002355 00:A345: 85        .byte $85   ; 
- D 1 - I - 0x002356 00:A346: 27        .byte $27   ; 
- D 1 - I - 0x002357 00:A347: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002358 00:A348: 27        .byte $27   ; 
- D 1 - I - 0x002359 00:A349: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00235A 00:A34A: 27        .byte $27   ; 
- D 1 - I - 0x00235B 00:A34B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00235C 00:A34C: 29        .byte $29   ; 
- D 1 - I - 0x00235D 00:A34D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00235E 00:A34E: 29        .byte $29   ; 
- D 1 - I - 0x00235F 00:A34F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002360 00:A350: 29        .byte $29   ; 
- D 1 - I - 0x002361 00:A351: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x002363 00:A353: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002364 00:A354: 83        .byte $83   ; 
- D 1 - I - 0x002365 00:A355: 2B        .byte $2B   ; 
- D 1 - I - 0x002366 00:A356: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002368 00:A358: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002369 00:A359: 85        .byte $85   ; 
- D 1 - I - 0x00236A 00:A35A: 2B        .byte $2B   ; 
- D 1 - I - 0x00236B 00:A35B: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x00236D 00:A35D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00236E 00:A35E: 83        .byte $83   ; 
- D 1 - I - 0x00236F 00:A35F: 29        .byte $29   ; 
- D 1 - I - 0x002370 00:A360: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002372 00:A362: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002373 00:A363: 85        .byte $85   ; 
- D 1 - I - 0x002374 00:A364: 29        .byte $29   ; 
- D 1 - I - 0x002375 00:A365: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002376 00:A366: 27        .byte $27   ; 
- D 1 - I - 0x002377 00:A367: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002378 00:A368: 29        .byte $29   ; 
- D 1 - I - 0x002379 00:A369: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00237A 00:A36A: 25        .byte $25   ; 
- D 1 - I - 0x00237B 00:A36B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00237C 00:A36C: 25        .byte $25   ; 
- D 1 - I - 0x00237D 00:A36D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00237E 00:A36E: 25        .byte $25   ; 
- D 1 - I - 0x00237F 00:A36F: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002381 00:A371: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002382 00:A372: 85        .byte $85   ; 
- D 1 - I - 0x002383 00:A373: 83        .byte $83   ; 
- D 1 - I - 0x002384 00:A374: 27        .byte $27   ; 
- D 1 - I - 0x002385 00:A375: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x002387 00:A377: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002388 00:A378: 83        .byte $83   ; 
- D 1 - I - 0x002389 00:A379: 27        .byte $27   ; 
- D 1 - I - 0x00238A 00:A37A: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00238C 00:A37C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00238D 00:A37D: 85        .byte $85   ; 
- D 1 - I - 0x00238E 00:A37E: 27        .byte $27   ; 
- D 1 - I - 0x00238F 00:A37F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002390 00:A380: 27        .byte $27   ; 
- D 1 - I - 0x002391 00:A381: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002392 00:A382: 27        .byte $27   ; 
- D 1 - I - 0x002393 00:A383: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002395 00:A385: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002396 00:A386: 85        .byte $85   ; 
- D 1 - I - 0x002397 00:A387: 83        .byte $83   ; 
- D 1 - I - 0x002398 00:A388: 29        .byte $29   ; 
- D 1 - I - 0x002399 00:A389: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00239A 00:A38A: 29        .byte $29   ; 
- D 1 - I - 0x00239B 00:A38B: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00239D 00:A38D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00239E 00:A38E: 85        .byte $85   ; 
- D 1 - I - 0x00239F 00:A38F: 29        .byte $29   ; 
- D 1 - I - 0x0023A0 00:A390: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x0023A2 00:A392: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023A3 00:A393: 85        .byte $85   ; 
- D 1 - I - 0x0023A4 00:A394: 83        .byte $83   ; 
- D 1 - I - 0x0023A5 00:A395: 29        .byte $29   ; 
- D 1 - I - 0x0023A6 00:A396: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023A7 00:A397: 29        .byte $29   ; 
- D 1 - I - 0x0023A8 00:A398: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0023AA 00:A39A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023AB 00:A39B: 85        .byte $85   ; 
- D 1 - I - 0x0023AC 00:A39C: 29        .byte $29   ; 
- D 1 - I - 0x0023AD 00:A39D: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0023AF 00:A39F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023B0 00:A3A0: 25        .byte $25   ; 
- D 1 - I - 0x0023B1 00:A3A1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023B2 00:A3A2: 25        .byte $25   ; 
- D 1 - I - 0x0023B3 00:A3A3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023B4 00:A3A4: 25        .byte $25   ; 
- D 1 - I - 0x0023B5 00:A3A5: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x0023B7 00:A3A7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023B8 00:A3A8: 85        .byte $85   ; 
- D 1 - I - 0x0023B9 00:A3A9: 83        .byte $83   ; 
- D 1 - I - 0x0023BA 00:A3AA: 27        .byte $27   ; 
- D 1 - I - 0x0023BB 00:A3AB: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x0023BD 00:A3AD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023BE 00:A3AE: 83        .byte $83   ; 
- D 1 - I - 0x0023BF 00:A3AF: 27        .byte $27   ; 
- D 1 - I - 0x0023C0 00:A3B0: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0023C2 00:A3B2: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023C3 00:A3B3: 85        .byte $85   ; 
- D 1 - I - 0x0023C4 00:A3B4: 27        .byte $27   ; 
- D 1 - I - 0x0023C5 00:A3B5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023C6 00:A3B6: 27        .byte $27   ; 
- D 1 - I - 0x0023C7 00:A3B7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023C8 00:A3B8: 27        .byte $27   ; 
- D 1 - I - 0x0023C9 00:A3B9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023CA 00:A3BA: 29        .byte $29   ; 
- D 1 - I - 0x0023CB 00:A3BB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023CC 00:A3BC: 29        .byte $29   ; 
- D 1 - I - 0x0023CD 00:A3BD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023CE 00:A3BE: 29        .byte $29   ; 
- D 1 - I - 0x0023CF 00:A3BF: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x0023D1 00:A3C1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023D2 00:A3C2: 83        .byte $83   ; 
- D 1 - I - 0x0023D3 00:A3C3: 2B        .byte $2B   ; 
- D 1 - I - 0x0023D4 00:A3C4: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0023D6 00:A3C6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023D7 00:A3C7: 85        .byte $85   ; 
- D 1 - I - 0x0023D8 00:A3C8: 2B        .byte $2B   ; 
- D 1 - I - 0x0023D9 00:A3C9: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x0023DB 00:A3CB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023DC 00:A3CC: 83        .byte $83   ; 
- D 1 - I - 0x0023DD 00:A3CD: 29        .byte $29   ; 
- D 1 - I - 0x0023DE 00:A3CE: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0023E0 00:A3D0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023E1 00:A3D1: 85        .byte $85   ; 
- D 1 - I - 0x0023E2 00:A3D2: 29        .byte $29   ; 
- D 1 - I - 0x0023E3 00:A3D3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023E4 00:A3D4: 27        .byte $27   ; 
- D 1 - I - 0x0023E5 00:A3D5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023E6 00:A3D6: 29        .byte $29   ; 
- D 1 - I - 0x0023E7 00:A3D7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023E8 00:A3D8: 25        .byte $25   ; 
- D 1 - I - 0x0023E9 00:A3D9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023EA 00:A3DA: 25        .byte $25   ; 
- D 1 - I - 0x0023EB 00:A3DB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023EC 00:A3DC: 25        .byte $25   ; 
- D 1 - I - 0x0023ED 00:A3DD: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x0023EF 00:A3DF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023F0 00:A3E0: 85        .byte $85   ; 
- D 1 - I - 0x0023F1 00:A3E1: 83        .byte $83   ; 
- D 1 - I - 0x0023F2 00:A3E2: 27        .byte $27   ; 
- D 1 - I - 0x0023F3 00:A3E3: E0        .byte con_se_cb_E0, $38   ; 
- D 1 - I - 0x0023F5 00:A3E5: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023F6 00:A3E6: 83        .byte $83   ; 
- D 1 - I - 0x0023F7 00:A3E7: 27        .byte $27   ; 
- D 1 - I - 0x0023F8 00:A3E8: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x0023FA 00:A3EA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023FB 00:A3EB: 85        .byte $85   ; 
- D 1 - I - 0x0023FC 00:A3EC: 27        .byte $27   ; 
- D 1 - I - 0x0023FD 00:A3ED: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0023FE 00:A3EE: 27        .byte $27   ; 
- D 1 - I - 0x0023FF 00:A3EF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002400 00:A3F0: 27        .byte $27   ; 
- D 1 - I - 0x002401 00:A3F1: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002403 00:A3F3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002404 00:A3F4: 85        .byte $85   ; 
- D 1 - I - 0x002405 00:A3F5: 83        .byte $83   ; 
- D 1 - I - 0x002406 00:A3F6: 29        .byte $29   ; 
- D 1 - I - 0x002407 00:A3F7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002408 00:A3F8: 29        .byte $29   ; 
- D 1 - I - 0x002409 00:A3F9: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x00240B 00:A3FB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00240C 00:A3FC: 85        .byte $85   ; 
- D 1 - I - 0x00240D 00:A3FD: 29        .byte $29   ; 
- D 1 - I - 0x00240E 00:A3FE: E0        .byte con_se_cb_E0, $36   ; 
- D 1 - I - 0x002410 00:A400: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002411 00:A401: 85        .byte $85   ; 
- D 1 - I - 0x002412 00:A402: 83        .byte $83   ; 
- D 1 - I - 0x002413 00:A403: 29        .byte $29   ; 
- D 1 - I - 0x002414 00:A404: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002415 00:A405: 29        .byte $29   ; 
- D 1 - I - 0x002416 00:A406: E0        .byte con_se_cb_E0, $37   ; 
- D 1 - I - 0x002418 00:A408: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002419 00:A409: 85        .byte $85   ; 
- D 1 - I - 0x00241A 00:A40A: 29        .byte $29   ; 
- D 1 - I - 0x00241B 00:A40B: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x00241C 00:A40C: B3 A2     .word off_E8_A2B3



off_ch_16_A40E_06:
off_E8_A40E:
- D 1 - I - 0x00241E 00:A40E: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x002420 00:A410: 85        .byte $85   ; 
- D 1 - I - 0x002421 00:A411: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002423 00:A413: 30        .byte $30   ; 
- D 1 - I - 0x002424 00:A414: 30        .byte $30   ; 
- D 1 - I - 0x002425 00:A415: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002426 00:A416: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002428 00:A418: 85        .byte $85   ; 
- D 1 - I - 0x002429 00:A419: 30        .byte $30   ; 
- D 1 - I - 0x00242A 00:A41A: 30        .byte $30   ; 
- D 1 - I - 0x00242B 00:A41B: 30        .byte $30   ; 
- D 1 - I - 0x00242C 00:A41C: 83        .byte $83   ; 
- D 1 - I - 0x00242D 00:A41D: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00242F 00:A41F: 30        .byte $30   ; 
- D 1 - I - 0x002430 00:A420: 0C        .byte $0C   ; 
- D 1 - I - 0x002431 00:A421: 30        .byte $30   ; 
- D 1 - I - 0x002432 00:A422: 30        .byte $30   ; 
- D 1 - I - 0x002433 00:A423: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002434 00:A424: 85        .byte $85   ; 
- D 1 - I - 0x002435 00:A425: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002437 00:A427: 30        .byte $30   ; 
- D 1 - I - 0x002438 00:A428: 30        .byte $30   ; 
- D 1 - I - 0x002439 00:A429: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00243A 00:A42A: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00243C 00:A42C: 85        .byte $85   ; 
- D 1 - I - 0x00243D 00:A42D: 30        .byte $30   ; 
- D 1 - I - 0x00243E 00:A42E: 30        .byte $30   ; 
- D 1 - I - 0x00243F 00:A42F: 30        .byte $30   ; 
- D 1 - I - 0x002440 00:A430: 83        .byte $83   ; 
- D 1 - I - 0x002441 00:A431: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002443 00:A433: 30        .byte $30   ; 
- D 1 - I - 0x002444 00:A434: 0C        .byte $0C   ; 
- D 1 - I - 0x002445 00:A435: 30        .byte $30   ; 
- D 1 - I - 0x002446 00:A436: 30        .byte $30   ; 
- D 1 - I - 0x002447 00:A437: 85        .byte $85   ; 
- D 1 - I - 0x002448 00:A438: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x00244A 00:A43A: 30        .byte $30   ; 
- D 1 - I - 0x00244B 00:A43B: 30        .byte $30   ; 
- D 1 - I - 0x00244C 00:A43C: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00244D 00:A43D: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00244F 00:A43F: 85        .byte $85   ; 
- D 1 - I - 0x002450 00:A440: 30        .byte $30   ; 
- D 1 - I - 0x002451 00:A441: 30        .byte $30   ; 
- D 1 - I - 0x002452 00:A442: 30        .byte $30   ; 
- D 1 - I - 0x002453 00:A443: 83        .byte $83   ; 
- D 1 - I - 0x002454 00:A444: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002456 00:A446: 30        .byte $30   ; 
- D 1 - I - 0x002457 00:A447: 0C        .byte $0C   ; 
- D 1 - I - 0x002458 00:A448: 30        .byte $30   ; 
- D 1 - I - 0x002459 00:A449: 27        .byte $27   ; 
- D 1 - I - 0x00245A 00:A44A: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x00245C 00:A44C: 85        .byte $85   ; 
- D 1 - I - 0x00245D 00:A44D: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x00245F 00:A44F: 29        .byte $29   ; 
- D 1 - I - 0x002460 00:A450: 29        .byte $29   ; 
- D 1 - I - 0x002461 00:A451: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002462 00:A452: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002464 00:A454: 85        .byte $85   ; 
- D 1 - I - 0x002465 00:A455: 29        .byte $29   ; 
- D 1 - I - 0x002466 00:A456: 29        .byte $29   ; 
- D 1 - I - 0x002467 00:A457: 29        .byte $29   ; 
- D 1 - I - 0x002468 00:A458: 83        .byte $83   ; 
- D 1 - I - 0x002469 00:A459: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00246B 00:A45B: 29        .byte $29   ; 
- D 1 - I - 0x00246C 00:A45C: 0C        .byte $0C   ; 
- D 1 - I - 0x00246D 00:A45D: 29        .byte $29   ; 
- D 1 - I - 0x00246E 00:A45E: 29        .byte $29   ; 
- D 1 - I - 0x00246F 00:A45F: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002470 00:A460: 85        .byte $85   ; 
- D 1 - I - 0x002471 00:A461: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002473 00:A463: 29        .byte $29   ; 
- D 1 - I - 0x002474 00:A464: 29        .byte $29   ; 
- D 1 - I - 0x002475 00:A465: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002476 00:A466: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002478 00:A468: 85        .byte $85   ; 
- D 1 - I - 0x002479 00:A469: 29        .byte $29   ; 
- D 1 - I - 0x00247A 00:A46A: 29        .byte $29   ; 
- D 1 - I - 0x00247B 00:A46B: 29        .byte $29   ; 
- D 1 - I - 0x00247C 00:A46C: 83        .byte $83   ; 
- D 1 - I - 0x00247D 00:A46D: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00247F 00:A46F: 29        .byte $29   ; 
- D 1 - I - 0x002480 00:A470: 0C        .byte $0C   ; 
- D 1 - I - 0x002481 00:A471: 29        .byte $29   ; 
- D 1 - I - 0x002482 00:A472: 29        .byte $29   ; 
- D 1 - I - 0x002483 00:A473: 85        .byte $85   ; 
- D 1 - I - 0x002484 00:A474: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002486 00:A476: 29        .byte $29   ; 
- D 1 - I - 0x002487 00:A477: 29        .byte $29   ; 
- D 1 - I - 0x002488 00:A478: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002489 00:A479: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00248B 00:A47B: 85        .byte $85   ; 
- D 1 - I - 0x00248C 00:A47C: 29        .byte $29   ; 
- D 1 - I - 0x00248D 00:A47D: 29        .byte $29   ; 
- D 1 - I - 0x00248E 00:A47E: 29        .byte $29   ; 
- D 1 - I - 0x00248F 00:A47F: 83        .byte $83   ; 
- D 1 - I - 0x002490 00:A480: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002492 00:A482: 29        .byte $29   ; 
- D 1 - I - 0x002493 00:A483: 0C        .byte $0C   ; 
- D 1 - I - 0x002494 00:A484: 29        .byte $29   ; 
- D 1 - I - 0x002495 00:A485: 2B        .byte $2B   ; 
- D 1 - I - 0x002496 00:A486: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x002498 00:A488: 85        .byte $85   ; 
- D 1 - I - 0x002499 00:A489: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x00249B 00:A48B: 30        .byte $30   ; 
- D 1 - I - 0x00249C 00:A48C: 30        .byte $30   ; 
- D 1 - I - 0x00249D 00:A48D: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00249E 00:A48E: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x0024A0 00:A490: 85        .byte $85   ; 
- D 1 - I - 0x0024A1 00:A491: 30        .byte $30   ; 
- D 1 - I - 0x0024A2 00:A492: 30        .byte $30   ; 
- D 1 - I - 0x0024A3 00:A493: 30        .byte $30   ; 
- D 1 - I - 0x0024A4 00:A494: 83        .byte $83   ; 
- D 1 - I - 0x0024A5 00:A495: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0024A7 00:A497: 30        .byte $30   ; 
- D 1 - I - 0x0024A8 00:A498: 0C        .byte $0C   ; 
- D 1 - I - 0x0024A9 00:A499: 30        .byte $30   ; 
- D 1 - I - 0x0024AA 00:A49A: 30        .byte $30   ; 
- D 1 - I - 0x0024AB 00:A49B: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0024AC 00:A49C: 85        .byte $85   ; 
- D 1 - I - 0x0024AD 00:A49D: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0024AF 00:A49F: 30        .byte $30   ; 
- D 1 - I - 0x0024B0 00:A4A0: 30        .byte $30   ; 
- D 1 - I - 0x0024B1 00:A4A1: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0024B2 00:A4A2: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x0024B4 00:A4A4: 85        .byte $85   ; 
- D 1 - I - 0x0024B5 00:A4A5: 30        .byte $30   ; 
- D 1 - I - 0x0024B6 00:A4A6: 30        .byte $30   ; 
- D 1 - I - 0x0024B7 00:A4A7: 30        .byte $30   ; 
- D 1 - I - 0x0024B8 00:A4A8: 83        .byte $83   ; 
- D 1 - I - 0x0024B9 00:A4A9: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0024BB 00:A4AB: 30        .byte $30   ; 
- D 1 - I - 0x0024BC 00:A4AC: 0C        .byte $0C   ; 
- D 1 - I - 0x0024BD 00:A4AD: 30        .byte $30   ; 
- D 1 - I - 0x0024BE 00:A4AE: 30        .byte $30   ; 
- D 1 - I - 0x0024BF 00:A4AF: 85        .byte $85   ; 
- D 1 - I - 0x0024C0 00:A4B0: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0024C2 00:A4B2: 30        .byte $30   ; 
- D 1 - I - 0x0024C3 00:A4B3: 30        .byte $30   ; 
- D 1 - I - 0x0024C4 00:A4B4: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0024C5 00:A4B5: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x0024C7 00:A4B7: 85        .byte $85   ; 
- D 1 - I - 0x0024C8 00:A4B8: 30        .byte $30   ; 
- D 1 - I - 0x0024C9 00:A4B9: 30        .byte $30   ; 
- D 1 - I - 0x0024CA 00:A4BA: 30        .byte $30   ; 
- D 1 - I - 0x0024CB 00:A4BB: 83        .byte $83   ; 
- D 1 - I - 0x0024CC 00:A4BC: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0024CE 00:A4BE: 30        .byte $30   ; 
- D 1 - I - 0x0024CF 00:A4BF: 0C        .byte $0C   ; 
- D 1 - I - 0x0024D0 00:A4C0: 30        .byte $30   ; 
- D 1 - I - 0x0024D1 00:A4C1: 27        .byte $27   ; 
- D 1 - I - 0x0024D2 00:A4C2: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0024D4 00:A4C4: 85        .byte $85   ; 
- D 1 - I - 0x0024D5 00:A4C5: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0024D7 00:A4C7: 29        .byte $29   ; 
- D 1 - I - 0x0024D8 00:A4C8: 29        .byte $29   ; 
- D 1 - I - 0x0024D9 00:A4C9: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0024DA 00:A4CA: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x0024DC 00:A4CC: 85        .byte $85   ; 
- D 1 - I - 0x0024DD 00:A4CD: 29        .byte $29   ; 
- D 1 - I - 0x0024DE 00:A4CE: 29        .byte $29   ; 
- D 1 - I - 0x0024DF 00:A4CF: 29        .byte $29   ; 
- D 1 - I - 0x0024E0 00:A4D0: 83        .byte $83   ; 
- D 1 - I - 0x0024E1 00:A4D1: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0024E3 00:A4D3: 29        .byte $29   ; 
- D 1 - I - 0x0024E4 00:A4D4: 0C        .byte $0C   ; 
- D 1 - I - 0x0024E5 00:A4D5: 29        .byte $29   ; 
- D 1 - I - 0x0024E6 00:A4D6: 29        .byte $29   ; 
- D 1 - I - 0x0024E7 00:A4D7: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0024E8 00:A4D8: 85        .byte $85   ; 
- D 1 - I - 0x0024E9 00:A4D9: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0024EB 00:A4DB: 29        .byte $29   ; 
- D 1 - I - 0x0024EC 00:A4DC: 29        .byte $29   ; 
- D 1 - I - 0x0024ED 00:A4DD: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x0024EE 00:A4DE: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x0024F0 00:A4E0: 85        .byte $85   ; 
- D 1 - I - 0x0024F1 00:A4E1: 29        .byte $29   ; 
- D 1 - I - 0x0024F2 00:A4E2: 29        .byte $29   ; 
- D 1 - I - 0x0024F3 00:A4E3: 29        .byte $29   ; 
- D 1 - I - 0x0024F4 00:A4E4: 83        .byte $83   ; 
- D 1 - I - 0x0024F5 00:A4E5: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0024F7 00:A4E7: 29        .byte $29   ; 
- D 1 - I - 0x0024F8 00:A4E8: 0C        .byte $0C   ; 
- D 1 - I - 0x0024F9 00:A4E9: 29        .byte $29   ; 
- D 1 - I - 0x0024FA 00:A4EA: 29        .byte $29   ; 
- D 1 - I - 0x0024FB 00:A4EB: 85        .byte $85   ; 
- D 1 - I - 0x0024FC 00:A4EC: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0024FE 00:A4EE: 29        .byte $29   ; 
- D 1 - I - 0x0024FF 00:A4EF: 29        .byte $29   ; 
- D 1 - I - 0x002500 00:A4F0: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002501 00:A4F1: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002503 00:A4F3: 85        .byte $85   ; 
- D 1 - I - 0x002504 00:A4F4: 29        .byte $29   ; 
- D 1 - I - 0x002505 00:A4F5: 29        .byte $29   ; 
- D 1 - I - 0x002506 00:A4F6: 29        .byte $29   ; 
- D 1 - I - 0x002507 00:A4F7: 83        .byte $83   ; 
- D 1 - I - 0x002508 00:A4F8: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00250A 00:A4FA: 29        .byte $29   ; 
- D 1 - I - 0x00250B 00:A4FB: 0C        .byte $0C   ; 
- D 1 - I - 0x00250C 00:A4FC: 29        .byte $29   ; 
- D 1 - I - 0x00250D 00:A4FD: 27        .byte $27   ; 
- D 1 - I - 0x00250E 00:A4FE: 85        .byte $85   ; 
- D 1 - I - 0x00250F 00:A4FF: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002511 00:A501: 25        .byte $25   ; 
- D 1 - I - 0x002512 00:A502: 25        .byte $25   ; 
- D 1 - I - 0x002513 00:A503: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002514 00:A504: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002516 00:A506: 85        .byte $85   ; 
- D 1 - I - 0x002517 00:A507: 27        .byte $27   ; 
- D 1 - I - 0x002518 00:A508: 27        .byte $27   ; 
- D 1 - I - 0x002519 00:A509: 27        .byte $27   ; 
- D 1 - I - 0x00251A 00:A50A: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00251B 00:A50B: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00251D 00:A50D: 85        .byte $85   ; 
- D 1 - I - 0x00251E 00:A50E: 27        .byte $27   ; 
- D 1 - I - 0x00251F 00:A50F: 29        .byte $29   ; 
- D 1 - I - 0x002520 00:A510: 29        .byte $29   ; 
- D 1 - I - 0x002521 00:A511: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002522 00:A512: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002524 00:A514: 85        .byte $85   ; 
- D 1 - I - 0x002525 00:A515: 29        .byte $29   ; 
- D 1 - I - 0x002526 00:A516: 29        .byte $29   ; 
- D 1 - I - 0x002527 00:A517: 29        .byte $29   ; 
- D 1 - I - 0x002528 00:A518: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002529 00:A519: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00252B 00:A51B: 85        .byte $85   ; 
- D 1 - I - 0x00252C 00:A51C: 27        .byte $27   ; 
- D 1 - I - 0x00252D 00:A51D: 25        .byte $25   ; 
- D 1 - I - 0x00252E 00:A51E: 25        .byte $25   ; 
- D 1 - I - 0x00252F 00:A51F: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002530 00:A520: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002532 00:A522: 85        .byte $85   ; 
- D 1 - I - 0x002533 00:A523: 27        .byte $27   ; 
- D 1 - I - 0x002534 00:A524: 27        .byte $27   ; 
- D 1 - I - 0x002535 00:A525: 27        .byte $27   ; 
- D 1 - I - 0x002536 00:A526: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002537 00:A527: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002539 00:A529: 85        .byte $85   ; 
- D 1 - I - 0x00253A 00:A52A: 27        .byte $27   ; 
- D 1 - I - 0x00253B 00:A52B: 85        .byte $85   ; 
- D 1 - I - 0x00253C 00:A52C: 83        .byte $83   ; 
- D 1 - I - 0x00253D 00:A52D: 29        .byte $29   ; 
- D 1 - I - 0x00253E 00:A52E: 29        .byte $29   ; 
- D 1 - I - 0x00253F 00:A52F: 85        .byte $85   ; 
- D 1 - I - 0x002540 00:A530: 29        .byte $29   ; 
- D 1 - I - 0x002541 00:A531: 85        .byte $85   ; 
- D 1 - I - 0x002542 00:A532: 83        .byte $83   ; 
- D 1 - I - 0x002543 00:A533: 29        .byte $29   ; 
- D 1 - I - 0x002544 00:A534: 29        .byte $29   ; 
- D 1 - I - 0x002545 00:A535: 85        .byte $85   ; 
- D 1 - I - 0x002546 00:A536: 29        .byte $29   ; 
- D 1 - I - 0x002547 00:A537: 85        .byte $85   ; 
- D 1 - I - 0x002548 00:A538: 25        .byte $25   ; 
- D 1 - I - 0x002549 00:A539: 25        .byte $25   ; 
- D 1 - I - 0x00254A 00:A53A: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00254B 00:A53B: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00254D 00:A53D: 85        .byte $85   ; 
- D 1 - I - 0x00254E 00:A53E: 27        .byte $27   ; 
- D 1 - I - 0x00254F 00:A53F: 27        .byte $27   ; 
- D 1 - I - 0x002550 00:A540: 27        .byte $27   ; 
- D 1 - I - 0x002551 00:A541: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002552 00:A542: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002554 00:A544: 85        .byte $85   ; 
- D 1 - I - 0x002555 00:A545: 27        .byte $27   ; 
- D 1 - I - 0x002556 00:A546: 29        .byte $29   ; 
- D 1 - I - 0x002557 00:A547: 29        .byte $29   ; 
- D 1 - I - 0x002558 00:A548: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002559 00:A549: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x00255B 00:A54B: 85        .byte $85   ; 
- D 1 - I - 0x00255C 00:A54C: 29        .byte $29   ; 
- D 1 - I - 0x00255D 00:A54D: 29        .byte $29   ; 
- D 1 - I - 0x00255E 00:A54E: 29        .byte $29   ; 
- D 1 - I - 0x00255F 00:A54F: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002560 00:A550: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002562 00:A552: 85        .byte $85   ; 
- D 1 - I - 0x002563 00:A553: 27        .byte $27   ; 
- D 1 - I - 0x002564 00:A554: 25        .byte $25   ; 
- D 1 - I - 0x002565 00:A555: 25        .byte $25   ; 
- D 1 - I - 0x002566 00:A556: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x002567 00:A557: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002569 00:A559: 85        .byte $85   ; 
- D 1 - I - 0x00256A 00:A55A: 27        .byte $27   ; 
- D 1 - I - 0x00256B 00:A55B: 27        .byte $27   ; 
- D 1 - I - 0x00256C 00:A55C: 27        .byte $27   ; 
- D 1 - I - 0x00256D 00:A55D: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00256E 00:A55E: 71 A5     .word ofs_E9_A571
- D 1 - I - 0x002570 00:A560: 85        .byte $85   ; 
- D 1 - I - 0x002571 00:A561: 27        .byte $27   ; 
- D 1 - I - 0x002572 00:A562: 85        .byte $85   ; 
- D 1 - I - 0x002573 00:A563: 83        .byte $83   ; 
- D 1 - I - 0x002574 00:A564: 29        .byte $29   ; 
- D 1 - I - 0x002575 00:A565: 29        .byte $29   ; 
- D 1 - I - 0x002576 00:A566: 85        .byte $85   ; 
- D 1 - I - 0x002577 00:A567: 29        .byte $29   ; 
- D 1 - I - 0x002578 00:A568: 85        .byte $85   ; 
- D 1 - I - 0x002579 00:A569: 83        .byte $83   ; 
- D 1 - I - 0x00257A 00:A56A: 29        .byte $29   ; 
- D 1 - I - 0x00257B 00:A56B: 29        .byte $29   ; 
- D 1 - I - 0x00257C 00:A56C: 85        .byte $85   ; 
- D 1 - I - 0x00257D 00:A56D: 2B        .byte $2B   ; 
- D 1 - I - 0x00257E 00:A56E: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x00257F 00:A56F: 0E A4     .word off_E8_A40E
ofs_E9_A571:
- D 1 - I - 0x002581 00:A571: 80        .byte $80   ; 
- D 1 - I - 0x002582 00:A572: 39        .byte $39   ; 
- D 1 - I - 0x002583 00:A573: 38        .byte $38   ; 
- D 1 - I - 0x002584 00:A574: 37        .byte $37   ; 
- D 1 - I - 0x002585 00:A575: 36        .byte $36   ; 
- D 1 - I - 0x002586 00:A576: 35        .byte $35   ; 
- D 1 - I - 0x002587 00:A577: 34        .byte $34   ; 
- D 1 - I - 0x002588 00:A578: 33        .byte $33   ; 
- D 1 - I - 0x002589 00:A579: 32        .byte $32   ; 
- D 1 - I - 0x00258A 00:A57A: 31        .byte $31   ; 
- D 1 - I - 0x00258B 00:A57B: 30        .byte $30   ; 
- D 1 - I - 0x00258C 00:A57C: 2B        .byte $2B   ; 
- D 1 - I - 0x00258D 00:A57D: 2A        .byte $2A   ; 
- D 1 - I - 0x00258E 00:A57E: EA        .byte con_se_cb_rts   ; 



off_ch_16_A57F_07:
- D 1 - I - 0x00258F 00:A57F: E3        .byte con_se_cb_E3, $01   ; 
off_E8_A581:
- D 1 - I - 0x002591 00:A581: EB        .byte con_se_cb_EB, $0F   ; 
- D 1 - I - 0x002593 00:A583: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x002595 00:A585: 85        .byte $85   ; 
- D 1 - I - 0x002596 00:A586: 02        .byte $02   ; 
- D 1 - I - 0x002597 00:A587: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x002599 00:A589: 83        .byte $83   ; 
- D 1 - I - 0x00259A 00:A58A: 03        .byte $03   ; 
- D 1 - I - 0x00259B 00:A58B: 03        .byte $03   ; 
- D 1 - I - 0x00259C 00:A58C: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00259E 00:A58E: 85        .byte $85   ; 
- D 1 - I - 0x00259F 00:A58F: 07        .byte $07   ; 
- D 1 - I - 0x0025A0 00:A590: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025A2 00:A592: 83        .byte $83   ; 
- D 1 - I - 0x0025A3 00:A593: 03        .byte $03   ; 
- D 1 - I - 0x0025A4 00:A594: 03        .byte $03   ; 
- D 1 - I - 0x0025A5 00:A595: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x0025A7 00:A597: 85        .byte $85   ; 
- D 1 - I - 0x0025A8 00:A598: 02        .byte $02   ; 
- D 1 - I - 0x0025A9 00:A599: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025AB 00:A59B: 83        .byte $83   ; 
- D 1 - I - 0x0025AC 00:A59C: 03        .byte $03   ; 
- D 1 - I - 0x0025AD 00:A59D: 03        .byte $03   ; 
- D 1 - I - 0x0025AE 00:A59E: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x0025B0 00:A5A0: 85        .byte $85   ; 
- D 1 - I - 0x0025B1 00:A5A1: 0A        .byte $0A   ; 
- D 1 - I - 0x0025B2 00:A5A2: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025B4 00:A5A4: 83        .byte $83   ; 
- D 1 - I - 0x0025B5 00:A5A5: 03        .byte $03   ; 
- D 1 - I - 0x0025B6 00:A5A6: 03        .byte $03   ; 
- D 1 - I - 0x0025B7 00:A5A7: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0025B8 00:A5A8: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x0025BA 00:A5AA: 85        .byte $85   ; 
- D 1 - I - 0x0025BB 00:A5AB: 02        .byte $02   ; 
- D 1 - I - 0x0025BC 00:A5AC: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025BE 00:A5AE: 83        .byte $83   ; 
- D 1 - I - 0x0025BF 00:A5AF: 03        .byte $03   ; 
- D 1 - I - 0x0025C0 00:A5B0: 03        .byte $03   ; 
- D 1 - I - 0x0025C1 00:A5B1: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0025C3 00:A5B3: 85        .byte $85   ; 
- D 1 - I - 0x0025C4 00:A5B4: 07        .byte $07   ; 
- D 1 - I - 0x0025C5 00:A5B5: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025C7 00:A5B7: 83        .byte $83   ; 
- D 1 - I - 0x0025C8 00:A5B8: 03        .byte $03   ; 
- D 1 - I - 0x0025C9 00:A5B9: 03        .byte $03   ; 
- D 1 - I - 0x0025CA 00:A5BA: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x0025CC 00:A5BC: 85        .byte $85   ; 
- D 1 - I - 0x0025CD 00:A5BD: 02        .byte $02   ; 
- D 1 - I - 0x0025CE 00:A5BE: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025D0 00:A5C0: 83        .byte $83   ; 
- D 1 - I - 0x0025D1 00:A5C1: 03        .byte $03   ; 
- D 1 - I - 0x0025D2 00:A5C2: 03        .byte $03   ; 
- D 1 - I - 0x0025D3 00:A5C3: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x0025D5 00:A5C5: 85        .byte $85   ; 
- D 1 - I - 0x0025D6 00:A5C6: 0A        .byte $0A   ; 
- D 1 - I - 0x0025D7 00:A5C7: 0A        .byte $0A   ; 
- D 1 - I - 0x0025D8 00:A5C8: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x0025DA 00:A5CA: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x0025DC 00:A5CC: 85        .byte $85   ; 
- D 1 - I - 0x0025DD 00:A5CD: 02        .byte $02   ; 
- D 1 - I - 0x0025DE 00:A5CE: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025E0 00:A5D0: 83        .byte $83   ; 
- D 1 - I - 0x0025E1 00:A5D1: 03        .byte $03   ; 
- D 1 - I - 0x0025E2 00:A5D2: 03        .byte $03   ; 
- D 1 - I - 0x0025E3 00:A5D3: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x0025E5 00:A5D5: 85        .byte $85   ; 
- D 1 - I - 0x0025E6 00:A5D6: 07        .byte $07   ; 
- D 1 - I - 0x0025E7 00:A5D7: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025E9 00:A5D9: 83        .byte $83   ; 
- D 1 - I - 0x0025EA 00:A5DA: 03        .byte $03   ; 
- D 1 - I - 0x0025EB 00:A5DB: 03        .byte $03   ; 
- D 1 - I - 0x0025EC 00:A5DC: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x0025EE 00:A5DE: 85        .byte $85   ; 
- D 1 - I - 0x0025EF 00:A5DF: 02        .byte $02   ; 
- D 1 - I - 0x0025F0 00:A5E0: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025F2 00:A5E2: 83        .byte $83   ; 
- D 1 - I - 0x0025F3 00:A5E3: 03        .byte $03   ; 
- D 1 - I - 0x0025F4 00:A5E4: 03        .byte $03   ; 
- D 1 - I - 0x0025F5 00:A5E5: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x0025F7 00:A5E7: 85        .byte $85   ; 
- D 1 - I - 0x0025F8 00:A5E8: 0A        .byte $0A   ; 
- D 1 - I - 0x0025F9 00:A5E9: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x0025FB 00:A5EB: 83        .byte $83   ; 
- D 1 - I - 0x0025FC 00:A5EC: 03        .byte $03   ; 
- D 1 - I - 0x0025FD 00:A5ED: 03        .byte $03   ; 
- D 1 - I - 0x0025FE 00:A5EE: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0025FF 00:A5EF: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x002601 00:A5F1: 85        .byte $85   ; 
- D 1 - I - 0x002602 00:A5F2: 02        .byte $02   ; 
- D 1 - I - 0x002603 00:A5F3: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x002605 00:A5F5: 83        .byte $83   ; 
- D 1 - I - 0x002606 00:A5F6: 03        .byte $03   ; 
- D 1 - I - 0x002607 00:A5F7: 03        .byte $03   ; 
- D 1 - I - 0x002608 00:A5F8: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00260A 00:A5FA: 85        .byte $85   ; 
- D 1 - I - 0x00260B 00:A5FB: 07        .byte $07   ; 
- D 1 - I - 0x00260C 00:A5FC: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x00260E 00:A5FE: 83        .byte $83   ; 
- D 1 - I - 0x00260F 00:A5FF: 03        .byte $03   ; 
- D 1 - I - 0x002610 00:A600: 03        .byte $03   ; 
- D 1 - I - 0x002611 00:A601: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002613 00:A603: 85        .byte $85   ; 
- D 1 - I - 0x002614 00:A604: 83        .byte $83   ; 
- D 1 - I - 0x002615 00:A605: 0A        .byte $0A   ; 
- D 1 - I - 0x002616 00:A606: 0A        .byte $0A   ; 
- D 1 - I - 0x002617 00:A607: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002619 00:A609: 85        .byte $85   ; 
- D 1 - I - 0x00261A 00:A60A: 0A        .byte $0A   ; 
- D 1 - I - 0x00261B 00:A60B: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x00261D 00:A60D: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x00261F 00:A60F: 85        .byte $85   ; 
- D 1 - I - 0x002620 00:A610: 02        .byte $02   ; 
- D 1 - I - 0x002621 00:A611: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x002623 00:A613: 83        .byte $83   ; 
- D 1 - I - 0x002624 00:A614: 03        .byte $03   ; 
- D 1 - I - 0x002625 00:A615: 03        .byte $03   ; 
- D 1 - I - 0x002626 00:A616: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002628 00:A618: 85        .byte $85   ; 
- D 1 - I - 0x002629 00:A619: 07        .byte $07   ; 
- D 1 - I - 0x00262A 00:A61A: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x00262C 00:A61C: 83        .byte $83   ; 
- D 1 - I - 0x00262D 00:A61D: 03        .byte $03   ; 
- D 1 - I - 0x00262E 00:A61E: 03        .byte $03   ; 
- D 1 - I - 0x00262F 00:A61F: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x002631 00:A621: 85        .byte $85   ; 
- D 1 - I - 0x002632 00:A622: 02        .byte $02   ; 
- D 1 - I - 0x002633 00:A623: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x002635 00:A625: 83        .byte $83   ; 
- D 1 - I - 0x002636 00:A626: 03        .byte $03   ; 
- D 1 - I - 0x002637 00:A627: 03        .byte $03   ; 
- D 1 - I - 0x002638 00:A628: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x00263A 00:A62A: 85        .byte $85   ; 
- D 1 - I - 0x00263B 00:A62B: 0A        .byte $0A   ; 
- D 1 - I - 0x00263C 00:A62C: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x00263E 00:A62E: 83        .byte $83   ; 
- D 1 - I - 0x00263F 00:A62F: 03        .byte $03   ; 
- D 1 - I - 0x002640 00:A630: 03        .byte $03   ; 
- D 1 - I - 0x002641 00:A631: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002642 00:A632: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002644 00:A634: 85        .byte $85   ; 
- D 1 - I - 0x002645 00:A635: 83        .byte $83   ; 
- D 1 - I - 0x002646 00:A636: 0A        .byte $0A   ; 
- D 1 - I - 0x002647 00:A637: 0A        .byte $0A   ; 
- D 1 - I - 0x002648 00:A638: 85        .byte $85   ; 
- D 1 - I - 0x002649 00:A639: 0B        .byte $0B   ; 
- D 1 - I - 0x00264A 00:A63A: 85        .byte $85   ; 
- D 1 - I - 0x00264B 00:A63B: 83        .byte $83   ; 
- D 1 - I - 0x00264C 00:A63C: 0B        .byte $0B   ; 
- D 1 - I - 0x00264D 00:A63D: 0B        .byte $0B   ; 
- D 1 - I - 0x00264E 00:A63E: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x002650 00:A640: 85        .byte $85   ; 
- D 1 - I - 0x002651 00:A641: 0A        .byte $0A   ; 
- D 1 - I - 0x002652 00:A642: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x002653 00:A643: 81 A5     .word off_E8_A581



_music_A645_13_half_time:
- D 1 - I - 0x002655 00:A645: 04        .byte $04   ; 
- D 1 - I - 0x002656 00:A646: 52 A6     .word off_ch_13_A652_04
- D 1 - I - 0x002658 00:A648: 05        .byte $05   ; 
- D 1 - I - 0x002659 00:A649: 90 A6     .word off_ch_13_A690_05
- D 1 - I - 0x00265B 00:A64B: 06        .byte $06   ; 
- D 1 - I - 0x00265C 00:A64C: CF A6     .word off_ch_13_A6CF_06
- D 1 - I - 0x00265E 00:A64E: 07        .byte $07   ; 
- D 1 - I - 0x00265F 00:A64F: FA A6     .word off_ch_13_A6FA_07
- D 1 - I - 0x002661 00:A651: FF        .byte $FF   ; 



off_ch_13_A652_04:
- D 1 - I - 0x002662 00:A652: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002663 00:A653: ED        .byte con_se_cb_ED, $00   ; 
- D 1 - I - 0x002665 00:A655: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x002667 00:A657: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002669 00:A659: E0        .byte con_se_cb_E0, $31   ; 
- D 1 - I - 0x00266B 00:A65B: 84        .byte $84   ; 
- D 1 - I - 0x00266C 00:A65C: 37        .byte $37   ; 
- D 1 - I - 0x00266D 00:A65D: 37        .byte $37   ; 
- D 1 - I - 0x00266E 00:A65E: 37        .byte $37   ; 
- D 1 - I - 0x00266F 00:A65F: 37        .byte $37   ; 
- D 1 - I - 0x002670 00:A660: 0C        .byte $0C   ; 
- D 1 - I - 0x002671 00:A661: E0        .byte con_se_cb_E0, $30   ; 
- D 1 - I - 0x002673 00:A663: 86        .byte $86   ; 
- D 1 - I - 0x002674 00:A664: 37        .byte $37   ; 
- D 1 - I - 0x002675 00:A665: E0        .byte con_se_cb_E0, $31   ; 
- D 1 - I - 0x002677 00:A667: 84        .byte $84   ; 
- D 1 - I - 0x002678 00:A668: 37        .byte $37   ; 
- D 1 - I - 0x002679 00:A669: 39        .byte $39   ; 
- D 1 - I - 0x00267A 00:A66A: 39        .byte $39   ; 
- D 1 - I - 0x00267B 00:A66B: 39        .byte $39   ; 
- D 1 - I - 0x00267C 00:A66C: 39        .byte $39   ; 
- D 1 - I - 0x00267D 00:A66D: 0C        .byte $0C   ; 
- D 1 - I - 0x00267E 00:A66E: E0        .byte con_se_cb_E0, $30   ; 
- D 1 - I - 0x002680 00:A670: 86        .byte $86   ; 
- D 1 - I - 0x002681 00:A671: 39        .byte $39   ; 
- D 1 - I - 0x002682 00:A672: E0        .byte con_se_cb_E0, $31   ; 
- D 1 - I - 0x002684 00:A674: 84        .byte $84   ; 
- D 1 - I - 0x002685 00:A675: 39        .byte $39   ; 
- D 1 - I - 0x002686 00:A676: 3B        .byte $3B   ; 
- D 1 - I - 0x002687 00:A677: 3B        .byte $3B   ; 
- D 1 - I - 0x002688 00:A678: 39        .byte $39   ; 
- D 1 - I - 0x002689 00:A679: 3B        .byte $3B   ; 
- D 1 - I - 0x00268A 00:A67A: 0C        .byte $0C   ; 
- D 1 - I - 0x00268B 00:A67B: 39        .byte $39   ; 
- D 1 - I - 0x00268C 00:A67C: 3B        .byte $3B   ; 
- D 1 - I - 0x00268D 00:A67D: 39        .byte $39   ; 
- D 1 - I - 0x00268E 00:A67E: E0        .byte con_se_cb_E0, $2F   ; 
- D 1 - I - 0x002690 00:A680: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002691 00:A681: 82        .byte $82   ; 
- D 1 - I - 0x002692 00:A682: 3B        .byte $3B   ; 
- D 1 - I - 0x002693 00:A683: ED        .byte con_se_cb_ED, $01   ; 
- D 1 - I - 0x002695 00:A685: 3B        .byte $3B   ; 
- D 1 - I - 0x002696 00:A686: 84        .byte $84   ; 
- D 1 - I - 0x002697 00:A687: ED        .byte con_se_cb_ED, $02   ; 
- D 1 - I - 0x002699 00:A689: 3B        .byte $3B   ; 
- D 1 - I - 0x00269A 00:A68A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00269B 00:A68B: 86        .byte $86   ; 
- D 1 - I - 0x00269C 00:A68C: ED        .byte con_se_cb_ED, $03   ; 
- D 1 - I - 0x00269E 00:A68E: 3B        .byte $3B   ; 
- D 1 - I - 0x00269F 00:A68F: FF        .byte con_se_cb_stop   ; 



off_ch_13_A690_05:
- D 1 - I - 0x0026A0 00:A690: 80        .byte $80   ; 
- D 1 - I - 0x0026A1 00:A691: 0C        .byte $0C   ; 
- D 1 - I - 0x0026A2 00:A692: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x0026A4 00:A694: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x0026A6 00:A696: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x0026A8 00:A698: E0        .byte con_se_cb_E0, $31   ; 
- D 1 - I - 0x0026AA 00:A69A: 84        .byte $84   ; 
- D 1 - I - 0x0026AB 00:A69B: 32        .byte $32   ; 
- D 1 - I - 0x0026AC 00:A69C: 32        .byte $32   ; 
- D 1 - I - 0x0026AD 00:A69D: 32        .byte $32   ; 
- D 1 - I - 0x0026AE 00:A69E: 32        .byte $32   ; 
- D 1 - I - 0x0026AF 00:A69F: 0C        .byte $0C   ; 
- D 1 - I - 0x0026B0 00:A6A0: E0        .byte con_se_cb_E0, $30   ; 
- D 1 - I - 0x0026B2 00:A6A2: 86        .byte $86   ; 
- D 1 - I - 0x0026B3 00:A6A3: 32        .byte $32   ; 
- D 1 - I - 0x0026B4 00:A6A4: E0        .byte con_se_cb_E0, $31   ; 
- D 1 - I - 0x0026B6 00:A6A6: 84        .byte $84   ; 
- D 1 - I - 0x0026B7 00:A6A7: 32        .byte $32   ; 
- D 1 - I - 0x0026B8 00:A6A8: 34        .byte $34   ; 
- D 1 - I - 0x0026B9 00:A6A9: 34        .byte $34   ; 
- D 1 - I - 0x0026BA 00:A6AA: 34        .byte $34   ; 
- D 1 - I - 0x0026BB 00:A6AB: 34        .byte $34   ; 
- D 1 - I - 0x0026BC 00:A6AC: 0C        .byte $0C   ; 
- D 1 - I - 0x0026BD 00:A6AD: E0        .byte con_se_cb_E0, $30   ; 
- D 1 - I - 0x0026BF 00:A6AF: 86        .byte $86   ; 
- D 1 - I - 0x0026C0 00:A6B0: 34        .byte $34   ; 
- D 1 - I - 0x0026C1 00:A6B1: E0        .byte con_se_cb_E0, $31   ; 
- D 1 - I - 0x0026C3 00:A6B3: 84        .byte $84   ; 
- D 1 - I - 0x0026C4 00:A6B4: 34        .byte $34   ; 
- D 1 - I - 0x0026C5 00:A6B5: 36        .byte $36   ; 
- D 1 - I - 0x0026C6 00:A6B6: 36        .byte $36   ; 
- D 1 - I - 0x0026C7 00:A6B7: 34        .byte $34   ; 
- D 1 - I - 0x0026C8 00:A6B8: 36        .byte $36   ; 
- D 1 - I - 0x0026C9 00:A6B9: 0C        .byte $0C   ; 
- D 1 - I - 0x0026CA 00:A6BA: 34        .byte $34   ; 
- D 1 - I - 0x0026CB 00:A6BB: 36        .byte $36   ; 
- D 1 - I - 0x0026CC 00:A6BC: 34        .byte $34   ; 
- D 1 - I - 0x0026CD 00:A6BD: E0        .byte con_se_cb_E0, $2F   ; 
- D 1 - I - 0x0026CF 00:A6BF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0026D0 00:A6C0: 82        .byte $82   ; 
- D 1 - I - 0x0026D1 00:A6C1: 36        .byte $36   ; 
- D 1 - I - 0x0026D2 00:A6C2: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x0026D4 00:A6C4: 36        .byte $36   ; 
- D 1 - I - 0x0026D5 00:A6C5: 84        .byte $84   ; 
- D 1 - I - 0x0026D6 00:A6C6: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0026D8 00:A6C8: 36        .byte $36   ; 
- D 1 - I - 0x0026D9 00:A6C9: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0026DA 00:A6CA: 86        .byte $86   ; 
- D 1 - I - 0x0026DB 00:A6CB: ED        .byte con_se_cb_ED, $09   ; 
- D 1 - I - 0x0026DD 00:A6CD: 36        .byte $36   ; 
- D 1 - I - 0x0026DE 00:A6CE: FF        .byte con_se_cb_stop   ; 



off_ch_13_A6CF_06:
- D 1 - I - 0x0026DF 00:A6CF: E0        .byte con_se_cb_E0, $2E   ; 
- D 1 - I - 0x0026E1 00:A6D1: ED        .byte con_se_cb_ED, $0B   ; 
- D 1 - I - 0x0026E3 00:A6D3: 84        .byte $84   ; 
- D 1 - I - 0x0026E4 00:A6D4: 27        .byte $27   ; 
- D 1 - I - 0x0026E5 00:A6D5: 27        .byte $27   ; 
- D 1 - I - 0x0026E6 00:A6D6: 22        .byte $22   ; 
- D 1 - I - 0x0026E7 00:A6D7: 27        .byte $27   ; 
- D 1 - I - 0x0026E8 00:A6D8: 0C        .byte $0C   ; 
- D 1 - I - 0x0026E9 00:A6D9: 1B        .byte $1B   ; 
- D 1 - I - 0x0026EA 00:A6DA: 22        .byte $22   ; 
- D 1 - I - 0x0026EB 00:A6DB: 27        .byte $27   ; 
- D 1 - I - 0x0026EC 00:A6DC: 29        .byte $29   ; 
- D 1 - I - 0x0026ED 00:A6DD: 29        .byte $29   ; 
- D 1 - I - 0x0026EE 00:A6DE: 24        .byte $24   ; 
- D 1 - I - 0x0026EF 00:A6DF: 29        .byte $29   ; 
- D 1 - I - 0x0026F0 00:A6E0: 32        .byte $32   ; 
- D 1 - I - 0x0026F1 00:A6E1: 31        .byte $31   ; 
- D 1 - I - 0x0026F2 00:A6E2: 2B        .byte $2B   ; 
- D 1 - I - 0x0026F3 00:A6E3: 29        .byte $29   ; 
- D 1 - I - 0x0026F4 00:A6E4: 2B        .byte $2B   ; 
- D 1 - I - 0x0026F5 00:A6E5: 2B        .byte $2B   ; 
- D 1 - I - 0x0026F6 00:A6E6: 29        .byte $29   ; 
- D 1 - I - 0x0026F7 00:A6E7: 26        .byte $26   ; 
- D 1 - I - 0x0026F8 00:A6E8: 0C        .byte $0C   ; 
- D 1 - I - 0x0026F9 00:A6E9: 24        .byte $24   ; 
- D 1 - I - 0x0026FA 00:A6EA: 26        .byte $26   ; 
- D 1 - I - 0x0026FB 00:A6EB: 29        .byte $29   ; 
- D 1 - I - 0x0026FC 00:A6EC: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x0026FE 00:A6EE: 82        .byte $82   ; 
- D 1 - I - 0x0026FF 00:A6EF: 29        .byte $29   ; 
- D 1 - I - 0x002700 00:A6F0: 2A        .byte $2A   ; 
- D 1 - I - 0x002701 00:A6F1: 86        .byte $86   ; 
- D 1 - I - 0x002702 00:A6F2: 2B        .byte $2B   ; 
- D 1 - I - 0x002703 00:A6F3: 84        .byte $84   ; 
- D 1 - I - 0x002704 00:A6F4: 0C        .byte $0C   ; 
- D 1 - I - 0x002705 00:A6F5: E0        .byte con_se_cb_E0, $2E   ; 
- D 1 - I - 0x002707 00:A6F7: 82        .byte $82   ; 
- D 1 - I - 0x002708 00:A6F8: 1B        .byte $1B   ; 
- D 1 - I - 0x002709 00:A6F9: FF        .byte con_se_cb_stop   ; 



off_ch_13_A6FA_07:
- D 1 - I - 0x00270A 00:A6FA: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x00270C 00:A6FC: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x00270E 00:A6FE: E0        .byte con_se_cb_E0, $32   ; 
- D 1 - I - 0x002710 00:A700: 84        .byte $84   ; 
- D 1 - I - 0x002711 00:A701: 03        .byte $03   ; 
- D 1 - I - 0x002712 00:A702: 03        .byte $03   ; 
- D 1 - I - 0x002713 00:A703: E0        .byte con_se_cb_E0, $33   ; 
- D 1 - I - 0x002715 00:A705: 86        .byte $86   ; 
- D 1 - I - 0x002716 00:A706: 05        .byte $05   ; 
- D 1 - I - 0x002717 00:A707: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002718 00:A708: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x00271A 00:A70A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00271C 00:A70C: 84        .byte $84   ; 
- D 1 - I - 0x00271D 00:A70D: 05        .byte $05   ; 
- D 1 - I - 0x00271E 00:A70E: 05        .byte $05   ; 
- D 1 - I - 0x00271F 00:A70F: 05        .byte $05   ; 
- D 1 - I - 0x002720 00:A710: 86        .byte $86   ; 
- D 1 - I - 0x002721 00:A711: 05        .byte $05   ; 
- D 1 - I - 0x002722 00:A712: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002724 00:A714: 84        .byte $84   ; 
- D 1 - I - 0x002725 00:A715: 0A        .byte $0A   ; 
- D 1 - I - 0x002726 00:A716: 0A        .byte $0A   ; 
- D 1 - I - 0x002727 00:A717: 0A        .byte $0A   ; 
- D 1 - I - 0x002728 00:A718: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x00272A 00:A71A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00272C 00:A71C: 86        .byte $86   ; 
- D 1 - I - 0x00272D 00:A71D: 85        .byte $85   ; 
- D 1 - I - 0x00272E 00:A71E: 07        .byte $07   ; 
- D 1 - I - 0x00272F 00:A71F: FF        .byte con_se_cb_stop   ; 



_music_A720_12_goal:
- D 1 - I - 0x002730 00:A720: 04        .byte $04   ; 
- D 1 - I - 0x002731 00:A721: 2D A7     .word off_ch_12_A72D_04
- D 1 - I - 0x002733 00:A723: 05        .byte $05   ; 
- D 1 - I - 0x002734 00:A724: 6D A7     .word off_ch_12_A76D_05
- D 1 - I - 0x002736 00:A726: 06        .byte $06   ; 
- D 1 - I - 0x002737 00:A727: AC A7     .word off_ch_12_A7AC_06
- D 1 - I - 0x002739 00:A729: 07        .byte $07   ; 
- D 1 - I - 0x00273A 00:A72A: 1A A8     .word off_ch_12_A81A_07
- D 1 - I - 0x00273C 00:A72C: FF        .byte $FF   ; 



off_ch_12_A72D_04:
- D 1 - I - 0x00273D 00:A72D: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x00273E 00:A72E: 85        .byte $85   ; 
- D 1 - I - 0x00273F 00:A72F: 86        .byte $86   ; 
- D 1 - I - 0x002740 00:A730: 0C        .byte $0C   ; 
- D 1 - I - 0x002741 00:A731: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x002743 00:A733: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002745 00:A735: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x002747 00:A737: E0        .byte con_se_cb_E0, $2B   ; 
- D 1 - I - 0x002749 00:A739: 84        .byte $84   ; 
- D 1 - I - 0x00274A 00:A73A: 83        .byte $83   ; 
- D 1 - I - 0x00274B 00:A73B: 2B        .byte $2B   ; 
- D 1 - I - 0x00274C 00:A73C: 2B        .byte $2B   ; 
- D 1 - I - 0x00274D 00:A73D: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x00274F 00:A73F: 82        .byte $82   ; 
- D 1 - I - 0x002750 00:A740: 96        .byte $96   ; 
- D 1 - I - 0x002751 00:A741: 30        .byte $30   ; 
- D 1 - I - 0x002752 00:A742: E0        .byte con_se_cb_E0, $2B   ; 
- D 1 - I - 0x002754 00:A744: 83        .byte $83   ; 
- D 1 - I - 0x002755 00:A745: 84        .byte $84   ; 
- D 1 - I - 0x002756 00:A746: 30        .byte $30   ; 
- D 1 - I - 0x002757 00:A747: 31        .byte $31   ; 
- D 1 - I - 0x002758 00:A748: 31        .byte $31   ; 
- D 1 - I - 0x002759 00:A749: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x00275B 00:A74B: 82        .byte $82   ; 
- D 1 - I - 0x00275C 00:A74C: 96        .byte $96   ; 
- D 1 - I - 0x00275D 00:A74D: 31        .byte $31   ; 
- D 1 - I - 0x00275E 00:A74E: E0        .byte con_se_cb_E0, $2B   ; 
- D 1 - I - 0x002760 00:A750: 84        .byte $84   ; 
- D 1 - I - 0x002761 00:A751: 83        .byte $83   ; 
- D 1 - I - 0x002762 00:A752: 32        .byte $32   ; 
- D 1 - I - 0x002763 00:A753: 32        .byte $32   ; 
- D 1 - I - 0x002764 00:A754: 37        .byte $37   ; 
- D 1 - I - 0x002765 00:A755: 37        .byte $37   ; 
- D 1 - I - 0x002766 00:A756: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x002768 00:A758: 82        .byte $82   ; 
- D 1 - I - 0x002769 00:A759: 96        .byte $96   ; 
- D 1 - I - 0x00276A 00:A75A: 36        .byte $36   ; 
- D 1 - I - 0x00276B 00:A75B: E0        .byte con_se_cb_E0, $2D   ; 
- D 1 - I - 0x00276D 00:A75D: 97        .byte $97   ; 
- D 1 - I - 0x00276E 00:A75E: 36        .byte $36   ; 
- D 1 - I - 0x00276F 00:A75F: 37        .byte $37   ; 
- D 1 - I - 0x002770 00:A760: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x002772 00:A762: 82        .byte $82   ; 
- D 1 - I - 0x002773 00:A763: 96        .byte $96   ; 
- D 1 - I - 0x002774 00:A764: 37        .byte $37   ; 
- D 1 - I - 0x002775 00:A765: E3        .byte con_se_cb_E3, $08   ; 
- D 1 - I - 0x002777 00:A767: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x002779 00:A769: 84        .byte $84   ; 
- D 1 - I - 0x00277A 00:A76A: 81        .byte $81   ; 
- D 1 - I - 0x00277B 00:A76B: 37        .byte $37   ; 
- D 1 - I - 0x00277C 00:A76C: FF        .byte con_se_cb_stop   ; 



off_ch_12_A76D_05:
- D 1 - I - 0x00277D 00:A76D: 86        .byte $86   ; 
- D 1 - I - 0x00277E 00:A76E: 85        .byte $85   ; 
- D 1 - I - 0x00277F 00:A76F: 80        .byte $80   ; 
- D 1 - I - 0x002780 00:A770: 0C        .byte $0C   ; 
- D 1 - I - 0x002781 00:A771: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002783 00:A773: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002785 00:A775: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x002787 00:A777: E0        .byte con_se_cb_E0, $2B   ; 
- D 1 - I - 0x002789 00:A779: 84        .byte $84   ; 
- D 1 - I - 0x00278A 00:A77A: 83        .byte $83   ; 
- D 1 - I - 0x00278B 00:A77B: 27        .byte $27   ; 
- D 1 - I - 0x00278C 00:A77C: 27        .byte $27   ; 
- D 1 - I - 0x00278D 00:A77D: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x00278F 00:A77F: 82        .byte $82   ; 
- D 1 - I - 0x002790 00:A780: 96        .byte $96   ; 
- D 1 - I - 0x002791 00:A781: 29        .byte $29   ; 
- D 1 - I - 0x002792 00:A782: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x002794 00:A784: 83        .byte $83   ; 
- D 1 - I - 0x002795 00:A785: 84        .byte $84   ; 
- D 1 - I - 0x002796 00:A786: 29        .byte $29   ; 
- D 1 - I - 0x002797 00:A787: 29        .byte $29   ; 
- D 1 - I - 0x002798 00:A788: 29        .byte $29   ; 
- D 1 - I - 0x002799 00:A789: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x00279B 00:A78B: 82        .byte $82   ; 
- D 1 - I - 0x00279C 00:A78C: 96        .byte $96   ; 
- D 1 - I - 0x00279D 00:A78D: 29        .byte $29   ; 
- D 1 - I - 0x00279E 00:A78E: E0        .byte con_se_cb_E0, $2B   ; 
- D 1 - I - 0x0027A0 00:A790: 84        .byte $84   ; 
- D 1 - I - 0x0027A1 00:A791: 83        .byte $83   ; 
- D 1 - I - 0x0027A2 00:A792: 29        .byte $29   ; 
- D 1 - I - 0x0027A3 00:A793: 29        .byte $29   ; 
- D 1 - I - 0x0027A4 00:A794: 32        .byte $32   ; 
- D 1 - I - 0x0027A5 00:A795: 32        .byte $32   ; 
- D 1 - I - 0x0027A6 00:A796: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x0027A8 00:A798: 82        .byte $82   ; 
- D 1 - I - 0x0027A9 00:A799: 96        .byte $96   ; 
- D 1 - I - 0x0027AA 00:A79A: 32        .byte $32   ; 
- D 1 - I - 0x0027AB 00:A79B: E0        .byte con_se_cb_E0, $2D   ; 
- D 1 - I - 0x0027AD 00:A79D: 97        .byte $97   ; 
- D 1 - I - 0x0027AE 00:A79E: 32        .byte $32   ; 
- D 1 - I - 0x0027AF 00:A79F: 32        .byte $32   ; 
- D 1 - I - 0x0027B0 00:A7A0: E0        .byte con_se_cb_E0, $2C   ; 
- D 1 - I - 0x0027B2 00:A7A2: 83        .byte $83   ; 
- D 1 - I - 0x0027B3 00:A7A3: 32        .byte $32   ; 
- D 1 - I - 0x0027B4 00:A7A4: E3        .byte con_se_cb_E3, $08   ; 
- D 1 - I - 0x0027B6 00:A7A6: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x0027B8 00:A7A8: 84        .byte $84   ; 
- D 1 - I - 0x0027B9 00:A7A9: 81        .byte $81   ; 
- D 1 - I - 0x0027BA 00:A7AA: 32        .byte $32   ; 
- D 1 - I - 0x0027BB 00:A7AB: FF        .byte con_se_cb_stop   ; 



off_ch_12_A7AC_06:
- D 1 - I - 0x0027BC 00:A7AC: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x0027BE 00:A7AE: 80        .byte $80   ; 
- D 1 - I - 0x0027BF 00:A7AF: 39        .byte $39   ; 
- D 1 - I - 0x0027C0 00:A7B0: 38        .byte $38   ; 
- D 1 - I - 0x0027C1 00:A7B1: 37        .byte $37   ; 
- D 1 - I - 0x0027C2 00:A7B2: 36        .byte $36   ; 
- D 1 - I - 0x0027C3 00:A7B3: 35        .byte $35   ; 
- D 1 - I - 0x0027C4 00:A7B4: 34        .byte $34   ; 
- D 1 - I - 0x0027C5 00:A7B5: 33        .byte $33   ; 
- D 1 - I - 0x0027C6 00:A7B6: 39        .byte $39   ; 
- D 1 - I - 0x0027C7 00:A7B7: 38        .byte $38   ; 
- D 1 - I - 0x0027C8 00:A7B8: 37        .byte $37   ; 
- D 1 - I - 0x0027C9 00:A7B9: 36        .byte $36   ; 
- D 1 - I - 0x0027CA 00:A7BA: 35        .byte $35   ; 
- D 1 - I - 0x0027CB 00:A7BB: 34        .byte $34   ; 
- D 1 - I - 0x0027CC 00:A7BC: 33        .byte $33   ; 
- D 1 - I - 0x0027CD 00:A7BD: 34        .byte $34   ; 
- D 1 - I - 0x0027CE 00:A7BE: 33        .byte $33   ; 
- D 1 - I - 0x0027CF 00:A7BF: 32        .byte $32   ; 
- D 1 - I - 0x0027D0 00:A7C0: 31        .byte $31   ; 
- D 1 - I - 0x0027D1 00:A7C1: 30        .byte $30   ; 
- D 1 - I - 0x0027D2 00:A7C2: 2B        .byte $2B   ; 
- D 1 - I - 0x0027D3 00:A7C3: 2A        .byte $2A   ; 
- D 1 - I - 0x0027D4 00:A7C4: 29        .byte $29   ; 
- D 1 - I - 0x0027D5 00:A7C5: 28        .byte $28   ; 
- D 1 - I - 0x0027D6 00:A7C6: 27        .byte $27   ; 
- D 1 - I - 0x0027D7 00:A7C7: 26        .byte $26   ; 
- D 1 - I - 0x0027D8 00:A7C8: 25        .byte $25   ; 
- D 1 - I - 0x0027D9 00:A7C9: 24        .byte $24   ; 
- D 1 - I - 0x0027DA 00:A7CA: 23        .byte $23   ; 
- D 1 - I - 0x0027DB 00:A7CB: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0027DD 00:A7CD: 84        .byte $84   ; 
- D 1 - I - 0x0027DE 00:A7CE: 83        .byte $83   ; 
- D 1 - I - 0x0027DF 00:A7CF: 22        .byte $22   ; 
- D 1 - I - 0x0027E0 00:A7D0: 22        .byte $22   ; 
- D 1 - I - 0x0027E1 00:A7D1: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0027E3 00:A7D3: 82        .byte $82   ; 
- D 1 - I - 0x0027E4 00:A7D4: 96        .byte $96   ; 
- D 1 - I - 0x0027E5 00:A7D5: 20        .byte $20   ; 
- D 1 - I - 0x0027E6 00:A7D6: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x0027E8 00:A7D8: 84        .byte $84   ; 
- D 1 - I - 0x0027E9 00:A7D9: 83        .byte $83   ; 
- D 1 - I - 0x0027EA 00:A7DA: 20        .byte $20   ; 
- D 1 - I - 0x0027EB 00:A7DB: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x0027ED 00:A7DD: 88        .byte $88   ; 
- D 1 - I - 0x0027EE 00:A7DE: 96        .byte $96   ; 
- D 1 - I - 0x0027EF 00:A7DF: 21        .byte $21   ; 
- D 1 - I - 0x0027F0 00:A7E0: 80        .byte $80   ; 
- D 1 - I - 0x0027F1 00:A7E1: 39        .byte $39   ; 
- D 1 - I - 0x0027F2 00:A7E2: 38        .byte $38   ; 
- D 1 - I - 0x0027F3 00:A7E3: 37        .byte $37   ; 
- D 1 - I - 0x0027F4 00:A7E4: 36        .byte $36   ; 
- D 1 - I - 0x0027F5 00:A7E5: 35        .byte $35   ; 
- D 1 - I - 0x0027F6 00:A7E6: 34        .byte $34   ; 
- D 1 - I - 0x0027F7 00:A7E7: 33        .byte $33   ; 
- D 1 - I - 0x0027F8 00:A7E8: 39        .byte $39   ; 
- D 1 - I - 0x0027F9 00:A7E9: 38        .byte $38   ; 
- D 1 - I - 0x0027FA 00:A7EA: 37        .byte $37   ; 
- D 1 - I - 0x0027FB 00:A7EB: 36        .byte $36   ; 
- D 1 - I - 0x0027FC 00:A7EC: 35        .byte $35   ; 
- D 1 - I - 0x0027FD 00:A7ED: 34        .byte $34   ; 
- D 1 - I - 0x0027FE 00:A7EE: 33        .byte $33   ; 
- D 1 - I - 0x0027FF 00:A7EF: 34        .byte $34   ; 
- D 1 - I - 0x002800 00:A7F0: 33        .byte $33   ; 
- D 1 - I - 0x002801 00:A7F1: 32        .byte $32   ; 
- D 1 - I - 0x002802 00:A7F2: 31        .byte $31   ; 
- D 1 - I - 0x002803 00:A7F3: 30        .byte $30   ; 
- D 1 - I - 0x002804 00:A7F4: 2B        .byte $2B   ; 
- D 1 - I - 0x002805 00:A7F5: 2A        .byte $2A   ; 
- D 1 - I - 0x002806 00:A7F6: 29        .byte $29   ; 
- D 1 - I - 0x002807 00:A7F7: 28        .byte $28   ; 
- D 1 - I - 0x002808 00:A7F8: 27        .byte $27   ; 
- D 1 - I - 0x002809 00:A7F9: 26        .byte $26   ; 
- D 1 - I - 0x00280A 00:A7FA: 25        .byte $25   ; 
- D 1 - I - 0x00280B 00:A7FB: 24        .byte $24   ; 
- D 1 - I - 0x00280C 00:A7FC: 23        .byte $23   ; 
- D 1 - I - 0x00280D 00:A7FD: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x00280F 00:A7FF: 84        .byte $84   ; 
- D 1 - I - 0x002810 00:A800: 83        .byte $83   ; 
- D 1 - I - 0x002811 00:A801: 22        .byte $22   ; 
- D 1 - I - 0x002812 00:A802: 22        .byte $22   ; 
- D 1 - I - 0x002813 00:A803: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002815 00:A805: 82        .byte $82   ; 
- D 1 - I - 0x002816 00:A806: 96        .byte $96   ; 
- D 1 - I - 0x002817 00:A807: 26        .byte $26   ; 
- D 1 - I - 0x002818 00:A808: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x00281A 00:A80A: 84        .byte $84   ; 
- D 1 - I - 0x00281B 00:A80B: 83        .byte $83   ; 
- D 1 - I - 0x00281C 00:A80C: 26        .byte $26   ; 
- D 1 - I - 0x00281D 00:A80D: 82        .byte $82   ; 
- D 1 - I - 0x00281E 00:A80E: 96        .byte $96   ; 
- D 1 - I - 0x00281F 00:A80F: 0C        .byte $0C   ; 
- D 1 - I - 0x002820 00:A810: 84        .byte $84   ; 
- D 1 - I - 0x002821 00:A811: 83        .byte $83   ; 
- D 1 - I - 0x002822 00:A812: 27        .byte $27   ; 
- D 1 - I - 0x002823 00:A813: 82        .byte $82   ; 
- D 1 - I - 0x002824 00:A814: 96        .byte $96   ; 
- D 1 - I - 0x002825 00:A815: 0C        .byte $0C   ; 
- D 1 - I - 0x002826 00:A816: 84        .byte $84   ; 
- D 1 - I - 0x002827 00:A817: 83        .byte $83   ; 
- D 1 - I - 0x002828 00:A818: 27        .byte $27   ; 
- D 1 - I - 0x002829 00:A819: FF        .byte con_se_cb_stop   ; 



off_ch_12_A81A_07:
- D 1 - I - 0x00282A 00:A81A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x00282C 00:A81C: 82        .byte $82   ; 
- D 1 - I - 0x00282D 00:A81D: 96        .byte $96   ; 
- D 1 - I - 0x00282E 00:A81E: 03        .byte $03   ; 
- D 1 - I - 0x00282F 00:A81F: 03        .byte $03   ; 
- D 1 - I - 0x002830 00:A820: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002832 00:A822: 84        .byte $84   ; 
- D 1 - I - 0x002833 00:A823: 83        .byte $83   ; 
- D 1 - I - 0x002834 00:A824: 05        .byte $05   ; 
- D 1 - I - 0x002835 00:A825: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002837 00:A827: 03        .byte $03   ; 
- D 1 - I - 0x002838 00:A828: 03        .byte $03   ; 
- D 1 - I - 0x002839 00:A829: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x00283B 00:A82B: 05        .byte $05   ; 
- D 1 - I - 0x00283C 00:A82C: 82        .byte $82   ; 
- D 1 - I - 0x00283D 00:A82D: 96        .byte $96   ; 
- D 1 - I - 0x00283E 00:A82E: 05        .byte $05   ; 
- D 1 - I - 0x00283F 00:A82F: 05        .byte $05   ; 
- D 1 - I - 0x002840 00:A830: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002842 00:A832: 83        .byte $83   ; 
- D 1 - I - 0x002843 00:A833: 84        .byte $84   ; 
- D 1 - I - 0x002844 00:A834: 03        .byte $03   ; 
- D 1 - I - 0x002845 00:A835: 03        .byte $03   ; 
- D 1 - I - 0x002846 00:A836: 82        .byte $82   ; 
- D 1 - I - 0x002847 00:A837: 96        .byte $96   ; 
- D 1 - I - 0x002848 00:A838: 03        .byte $03   ; 
- D 1 - I - 0x002849 00:A839: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x00284B 00:A83B: 07        .byte $07   ; 
- D 1 - I - 0x00284C 00:A83C: 84        .byte $84   ; 
- D 1 - I - 0x00284D 00:A83D: 83        .byte $83   ; 
- D 1 - I - 0x00284E 00:A83E: 07        .byte $07   ; 
- D 1 - I - 0x00284F 00:A83F: 07        .byte $07   ; 
- D 1 - I - 0x002850 00:A840: 07        .byte $07   ; 
- D 1 - I - 0x002851 00:A841: 82        .byte $82   ; 
- D 1 - I - 0x002852 00:A842: 96        .byte $96   ; 
- D 1 - I - 0x002853 00:A843: 07        .byte $07   ; 
- D 1 - I - 0x002854 00:A844: 97        .byte $97   ; 
- D 1 - I - 0x002855 00:A845: 07        .byte $07   ; 
- D 1 - I - 0x002856 00:A846: 0A        .byte $0A   ; 
- D 1 - I - 0x002857 00:A847: 0A        .byte $0A   ; 
- D 1 - I - 0x002858 00:A848: FF        .byte con_se_cb_stop   ; 



_music_A849_11_logo:
- D 1 - I - 0x002859 00:A849: 04        .byte $04   ; 
- D 1 - I - 0x00285A 00:A84A: 56 A8     .word off_ch_11_A856_04
- D 1 - I - 0x00285C 00:A84C: 05        .byte $05   ; 
- D 1 - I - 0x00285D 00:A84D: F3 A9     .word off_ch_11_A9F3_05
- D 1 - I - 0x00285F 00:A84F: 06        .byte $06   ; 
- D 1 - I - 0x002860 00:A850: FF A9     .word off_ch_11_A9FF_06
- D 1 - I - 0x002862 00:A852: 07        .byte $07   ; 
- D 1 - I - 0x002863 00:A853: 50 AC     .word off_ch_11_AC50_07
- D 1 - I - 0x002865 00:A855: FF        .byte $FF   ; 



off_ch_11_A856_04:
- D 1 - I - 0x002866 00:A856: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002867 00:A857: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002869 00:A859: E2        .byte con_se_cb_E2, $C0   ; 
off_E8_A85B:
- D 1 - I - 0x00286B 00:A85B: 8E        .byte $8E   ; 
- D 1 - I - 0x00286C 00:A85C: 9C        .byte $9C   ; 
- D 1 - I - 0x00286D 00:A85D: 87        .byte $87   ; 
- D 1 - I - 0x00286E 00:A85E: 83        .byte $83   ; 
- D 1 - I - 0x00286F 00:A85F: 0C        .byte $0C   ; 
off_E8_A860:
- D 1 - I - 0x002870 00:A860: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x002872 00:A862: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x002873 00:A863: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x002875 00:A865: 83        .byte $83   ; 
- D 1 - I - 0x002876 00:A866: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002877 00:A867: 37        .byte $37   ; 
- D 1 - I - 0x002878 00:A868: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002879 00:A869: 39        .byte $39   ; 
- D 1 - I - 0x00287A 00:A86A: E0        .byte con_se_cb_E0, $27   ; 
- D 1 - I - 0x00287C 00:A86C: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00287D 00:A86D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00287E 00:A86E: 3B        .byte $3B   ; 
- D 1 - I - 0x00287F 00:A86F: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002881 00:A871: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002882 00:A872: 85        .byte $85   ; 
- D 1 - I - 0x002883 00:A873: 83        .byte $83   ; 
- D 1 - I - 0x002884 00:A874: 3B        .byte $3B   ; 
- D 1 - I - 0x002885 00:A875: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x002886 00:A876: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002887 00:A877: 83        .byte $83   ; 
- D 1 - I - 0x002888 00:A878: 37        .byte $37   ; 
- D 1 - I - 0x002889 00:A879: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00288B 00:A87B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00288C 00:A87C: 85        .byte $85   ; 
- D 1 - I - 0x00288D 00:A87D: 83        .byte $83   ; 
- D 1 - I - 0x00288E 00:A87E: 37        .byte $37   ; 
- D 1 - I - 0x00288F 00:A87F: E0        .byte con_se_cb_E0, $25   ; 
- D 1 - I - 0x002891 00:A881: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002893 00:A883: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002894 00:A884: 83        .byte $83   ; 
- D 1 - I - 0x002895 00:A885: 39        .byte $39   ; 
- D 1 - I - 0x002896 00:A886: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002898 00:A888: 85        .byte $85   ; 
- D 1 - I - 0x002899 00:A889: 83        .byte $83   ; 
- D 1 - I - 0x00289A 00:A88A: 39        .byte $39   ; 
- D 1 - I - 0x00289B 00:A88B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00289C 00:A88C: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00289E 00:A88E: 87        .byte $87   ; 
- D 1 - I - 0x00289F 00:A88F: 39        .byte $39   ; 
- D 1 - I - 0x0028A0 00:A890: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x0028A2 00:A892: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0028A3 00:A893: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028A4 00:A894: 83        .byte $83   ; 
- D 1 - I - 0x0028A5 00:A895: 37        .byte $37   ; 
- D 1 - I - 0x0028A6 00:A896: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028A7 00:A897: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028A9 00:A899: 37        .byte $37   ; 
- D 1 - I - 0x0028AA 00:A89A: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0028AB 00:A89B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028AC 00:A89C: 37        .byte $37   ; 
- D 1 - I - 0x0028AD 00:A89D: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028AE 00:A89E: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028B0 00:A8A0: 37        .byte $37   ; 
- D 1 - I - 0x0028B1 00:A8A1: E0        .byte con_se_cb_E0, $27   ; 
- D 1 - I - 0x0028B3 00:A8A3: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0028B5 00:A8A5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028B6 00:A8A6: 39        .byte $39   ; 
- D 1 - I - 0x0028B7 00:A8A7: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0028B9 00:A8A9: 39        .byte $39   ; 
- D 1 - I - 0x0028BA 00:A8AA: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028BB 00:A8AB: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028BD 00:A8AD: 85        .byte $85   ; 
- D 1 - I - 0x0028BE 00:A8AE: 39        .byte $39   ; 
- D 1 - I - 0x0028BF 00:A8AF: E0        .byte con_se_cb_E0, $26   ; 
- D 1 - I - 0x0028C1 00:A8B1: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0028C3 00:A8B3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028C4 00:A8B4: 83        .byte $83   ; 
- D 1 - I - 0x0028C5 00:A8B5: 34        .byte $34   ; 
- D 1 - I - 0x0028C6 00:A8B6: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0028C8 00:A8B8: 85        .byte $85   ; 
- D 1 - I - 0x0028C9 00:A8B9: 34        .byte $34   ; 
- D 1 - I - 0x0028CA 00:A8BA: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028CB 00:A8BB: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028CD 00:A8BD: 34        .byte $34   ; 
- D 1 - I - 0x0028CE 00:A8BE: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x0028D0 00:A8C0: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0028D1 00:A8C1: 83        .byte $83   ; 
- D 1 - I - 0x0028D2 00:A8C2: 34        .byte $34   ; 
- D 1 - I - 0x0028D3 00:A8C3: 37        .byte $37   ; 
- D 1 - I - 0x0028D4 00:A8C4: 34        .byte $34   ; 
- D 1 - I - 0x0028D5 00:A8C5: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x0028D7 00:A8C7: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0028D8 00:A8C8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028D9 00:A8C9: 83        .byte $83   ; 
- D 1 - I - 0x0028DA 00:A8CA: 37        .byte $37   ; 
- D 1 - I - 0x0028DB 00:A8CB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028DC 00:A8CC: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028DE 00:A8CE: 37        .byte $37   ; 
- D 1 - I - 0x0028DF 00:A8CF: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0028E0 00:A8D0: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028E1 00:A8D1: 37        .byte $37   ; 
- D 1 - I - 0x0028E2 00:A8D2: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028E3 00:A8D3: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028E5 00:A8D5: 37        .byte $37   ; 
- D 1 - I - 0x0028E6 00:A8D6: E0        .byte con_se_cb_E0, $27   ; 
- D 1 - I - 0x0028E8 00:A8D8: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0028EA 00:A8DA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028EB 00:A8DB: 34        .byte $34   ; 
- D 1 - I - 0x0028EC 00:A8DC: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0028EE 00:A8DE: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028EF 00:A8DF: 85        .byte $85   ; 
- D 1 - I - 0x0028F0 00:A8E0: 83        .byte $83   ; 
- D 1 - I - 0x0028F1 00:A8E1: 34        .byte $34   ; 
- D 1 - I - 0x0028F2 00:A8E2: E0        .byte con_se_cb_E0, $25   ; 
- D 1 - I - 0x0028F4 00:A8E4: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0028F6 00:A8E6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0028F7 00:A8E7: 83        .byte $83   ; 
- D 1 - I - 0x0028F8 00:A8E8: 37        .byte $37   ; 
- D 1 - I - 0x0028F9 00:A8E9: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0028FB 00:A8EB: 85        .byte $85   ; 
- D 1 - I - 0x0028FC 00:A8EC: 83        .byte $83   ; 
- D 1 - I - 0x0028FD 00:A8ED: 37        .byte $37   ; 
- D 1 - I - 0x0028FE 00:A8EE: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0028FF 00:A8EF: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002901 00:A8F1: 87        .byte $87   ; 
- D 1 - I - 0x002902 00:A8F2: 37        .byte $37   ; 
- D 1 - I - 0x002903 00:A8F3: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x002905 00:A8F5: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x002906 00:A8F6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002907 00:A8F7: 83        .byte $83   ; 
- D 1 - I - 0x002908 00:A8F8: 37        .byte $37   ; 
- D 1 - I - 0x002909 00:A8F9: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00290A 00:A8FA: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00290C 00:A8FC: 37        .byte $37   ; 
- D 1 - I - 0x00290D 00:A8FD: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00290E 00:A8FE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00290F 00:A8FF: 34        .byte $34   ; 
- D 1 - I - 0x002910 00:A900: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002911 00:A901: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002913 00:A903: 34        .byte $34   ; 
- D 1 - I - 0x002914 00:A904: E0        .byte con_se_cb_E0, $27   ; 
- D 1 - I - 0x002916 00:A906: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002918 00:A908: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002919 00:A909: 83        .byte $83   ; 
- D 1 - I - 0x00291A 00:A90A: 3B        .byte $3B   ; 
- D 1 - I - 0x00291B 00:A90B: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00291D 00:A90D: 3B        .byte $3B   ; 
- D 1 - I - 0x00291E 00:A90E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00291F 00:A90F: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002921 00:A911: 85        .byte $85   ; 
- D 1 - I - 0x002922 00:A912: 3B        .byte $3B   ; 
- D 1 - I - 0x002923 00:A913: E0        .byte con_se_cb_E0, $26   ; 
- D 1 - I - 0x002925 00:A915: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002927 00:A917: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002928 00:A918: 83        .byte $83   ; 
- D 1 - I - 0x002929 00:A919: 39        .byte $39   ; 
- D 1 - I - 0x00292A 00:A91A: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00292C 00:A91C: 85        .byte $85   ; 
- D 1 - I - 0x00292D 00:A91D: 39        .byte $39   ; 
- D 1 - I - 0x00292E 00:A91E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00292F 00:A91F: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002931 00:A921: 85        .byte $85   ; 
- D 1 - I - 0x002932 00:A922: 83        .byte $83   ; 
- D 1 - I - 0x002933 00:A923: 39        .byte $39   ; 
- D 1 - I - 0x002934 00:A924: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002935 00:A925: 85        .byte $85   ; 
- D 1 - I - 0x002936 00:A926: 0C        .byte $0C   ; 
- D 1 - I - 0x002937 00:A927: E0        .byte con_se_cb_E0, $25   ; 
- D 1 - I - 0x002939 00:A929: 83        .byte $83   ; 
- D 1 - I - 0x00293A 00:A92A: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x00293C 00:A92C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00293D 00:A92D: 2B        .byte $2B   ; 
- D 1 - I - 0x00293E 00:A92E: 85        .byte $85   ; 
- D 1 - I - 0x00293F 00:A92F: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002941 00:A931: 2B        .byte $2B   ; 
- D 1 - I - 0x002942 00:A932: 85        .byte $85   ; 
- D 1 - I - 0x002943 00:A933: 83        .byte $83   ; 
- D 1 - I - 0x002944 00:A934: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002945 00:A935: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002947 00:A937: 2B        .byte $2B   ; 
- D 1 - I - 0x002948 00:A938: 83        .byte $83   ; 
- D 1 - I - 0x002949 00:A939: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x00294B 00:A93B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00294C 00:A93C: 29        .byte $29   ; 
- D 1 - I - 0x00294D 00:A93D: 87        .byte $87   ; 
- D 1 - I - 0x00294E 00:A93E: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002950 00:A940: 29        .byte $29   ; 
- D 1 - I - 0x002951 00:A941: 87        .byte $87   ; 
- D 1 - I - 0x002952 00:A942: 83        .byte $83   ; 
- D 1 - I - 0x002953 00:A943: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x002955 00:A945: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002956 00:A946: 29        .byte $29   ; 
- D 1 - I - 0x002957 00:A947: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x002959 00:A949: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00295A 00:A94A: 85        .byte $85   ; 
- D 1 - I - 0x00295B 00:A94B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00295C 00:A94C: 27        .byte $27   ; 
- D 1 - I - 0x00295D 00:A94D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00295E 00:A94E: 29        .byte $29   ; 
- D 1 - I - 0x00295F 00:A94F: 83        .byte $83   ; 
- D 1 - I - 0x002960 00:A950: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002961 00:A951: 27        .byte $27   ; 
- D 1 - I - 0x002962 00:A952: E0        .byte con_se_cb_E0, $27   ; 
- D 1 - I - 0x002964 00:A954: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002965 00:A955: 26        .byte $26   ; 
- D 1 - I - 0x002966 00:A956: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002968 00:A958: 85        .byte $85   ; 
- D 1 - I - 0x002969 00:A959: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00296A 00:A95A: 26        .byte $26   ; 
- D 1 - I - 0x00296B 00:A95B: E0        .byte con_se_cb_E0, $25   ; 
- D 1 - I - 0x00296D 00:A95D: 83        .byte $83   ; 
- D 1 - I - 0x00296E 00:A95E: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002970 00:A960: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002971 00:A961: 24        .byte $24   ; 
- D 1 - I - 0x002972 00:A962: 85        .byte $85   ; 
- D 1 - I - 0x002973 00:A963: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002975 00:A965: 24        .byte $24   ; 
- D 1 - I - 0x002976 00:A966: 87        .byte $87   ; 
- D 1 - I - 0x002977 00:A967: 83        .byte $83   ; 
- D 1 - I - 0x002978 00:A968: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00297A 00:A96A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00297B 00:A96B: 24        .byte $24   ; 
- D 1 - I - 0x00297C 00:A96C: E0        .byte con_se_cb_E0, $25   ; 
- D 1 - I - 0x00297E 00:A96E: 83        .byte $83   ; 
- D 1 - I - 0x00297F 00:A96F: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002981 00:A971: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002982 00:A972: 27        .byte $27   ; 
- D 1 - I - 0x002983 00:A973: 85        .byte $85   ; 
- D 1 - I - 0x002984 00:A974: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002986 00:A976: 27        .byte $27   ; 
- D 1 - I - 0x002987 00:A977: 85        .byte $85   ; 
- D 1 - I - 0x002988 00:A978: 83        .byte $83   ; 
- D 1 - I - 0x002989 00:A979: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00298A 00:A97A: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00298C 00:A97C: 27        .byte $27   ; 
- D 1 - I - 0x00298D 00:A97D: 83        .byte $83   ; 
- D 1 - I - 0x00298E 00:A97E: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x002990 00:A980: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002991 00:A981: 29        .byte $29   ; 
- D 1 - I - 0x002992 00:A982: 87        .byte $87   ; 
- D 1 - I - 0x002993 00:A983: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x002995 00:A985: 29        .byte $29   ; 
- D 1 - I - 0x002996 00:A986: 87        .byte $87   ; 
- D 1 - I - 0x002997 00:A987: 83        .byte $83   ; 
- D 1 - I - 0x002998 00:A988: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00299A 00:A98A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00299B 00:A98B: 29        .byte $29   ; 
- D 1 - I - 0x00299C 00:A98C: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x00299E 00:A98E: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x0029A0 00:A990: 85        .byte $85   ; 
- D 1 - I - 0x0029A1 00:A991: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0029A2 00:A992: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029A3 00:A993: 34        .byte $34   ; 
- D 1 - I - 0x0029A4 00:A994: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029A5 00:A995: 34        .byte $34   ; 
- D 1 - I - 0x0029A6 00:A996: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029A7 00:A997: 37        .byte $37   ; 
- D 1 - I - 0x0029A8 00:A998: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029A9 00:A999: 37        .byte $37   ; 
- D 1 - I - 0x0029AA 00:A99A: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x0029AC 00:A99C: 83        .byte $83   ; 
- D 1 - I - 0x0029AD 00:A99D: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0029AF 00:A99F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0029B0 00:A9A0: 39        .byte $39   ; 
- D 1 - I - 0x0029B1 00:A9A1: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0029B3 00:A9A3: 39        .byte $39   ; 
- D 1 - I - 0x0029B4 00:A9A4: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0029B5 00:A9A5: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0029B7 00:A9A7: 39        .byte $39   ; 
- D 1 - I - 0x0029B8 00:A9A8: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x0029BA 00:A9AA: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0029BB 00:A9AB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029BC 00:A9AC: 37        .byte $37   ; 
- D 1 - I - 0x0029BD 00:A9AD: 87        .byte $87   ; 
- D 1 - I - 0x0029BE 00:A9AE: 0C        .byte $0C   ; 
- D 1 - I - 0x0029BF 00:A9AF: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0029C0 00:A9B0: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x0029C2 00:A9B2: 85        .byte $85   ; 
- D 1 - I - 0x0029C3 00:A9B3: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0029C4 00:A9B4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029C5 00:A9B5: 40        .byte $40   ; 
- D 1 - I - 0x0029C6 00:A9B6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029C7 00:A9B7: 40        .byte $40   ; 
- D 1 - I - 0x0029C8 00:A9B8: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029C9 00:A9B9: 3B        .byte $3B   ; 
- D 1 - I - 0x0029CA 00:A9BA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029CB 00:A9BB: 3B        .byte $3B   ; 
- D 1 - I - 0x0029CC 00:A9BC: E0        .byte con_se_cb_E0, $28   ; 
- D 1 - I - 0x0029CE 00:A9BE: 83        .byte $83   ; 
- D 1 - I - 0x0029CF 00:A9BF: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0029D1 00:A9C1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0029D2 00:A9C2: 39        .byte $39   ; 
- D 1 - I - 0x0029D3 00:A9C3: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0029D5 00:A9C5: 39        .byte $39   ; 
- D 1 - I - 0x0029D6 00:A9C6: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0029D7 00:A9C7: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0029D9 00:A9C9: 39        .byte $39   ; 
- D 1 - I - 0x0029DA 00:A9CA: E0        .byte con_se_cb_E0, $29   ; 
- D 1 - I - 0x0029DC 00:A9CC: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0029DD 00:A9CD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0029DE 00:A9CE: 3B        .byte $3B   ; 
- D 1 - I - 0x0029DF 00:A9CF: 87        .byte $87   ; 
- D 1 - I - 0x0029E0 00:A9D0: 0C        .byte $0C   ; 
- D 1 - I - 0x0029E1 00:A9D1: E0        .byte con_se_cb_E0, $0A   ; 
- D 1 - I - 0x0029E3 00:A9D3: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0029E4 00:A9D4: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0029E6 00:A9D6: 85        .byte $85   ; 
- D 1 - I - 0x0029E7 00:A9D7: 83        .byte $83   ; 
- D 1 - I - 0x0029E8 00:A9D8: 2B        .byte $2B   ; 
- D 1 - I - 0x0029E9 00:A9D9: 29        .byte $29   ; 
- D 1 - I - 0x0029EA 00:A9DA: 2B        .byte $2B   ; 
- D 1 - I - 0x0029EB 00:A9DB: 29        .byte $29   ; 
- D 1 - I - 0x0029EC 00:A9DC: 85        .byte $85   ; 
- D 1 - I - 0x0029ED 00:A9DD: 2B        .byte $2B   ; 
- D 1 - I - 0x0029EE 00:A9DE: 29        .byte $29   ; 
- D 1 - I - 0x0029EF 00:A9DF: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0029F0 00:A9E0: 85        .byte $85   ; 
- D 1 - I - 0x0029F1 00:A9E1: 83        .byte $83   ; 
- D 1 - I - 0x0029F2 00:A9E2: 30        .byte $30   ; 
- D 1 - I - 0x0029F3 00:A9E3: 2B        .byte $2B   ; 
- D 1 - I - 0x0029F4 00:A9E4: 30        .byte $30   ; 
- D 1 - I - 0x0029F5 00:A9E5: 2B        .byte $2B   ; 
- D 1 - I - 0x0029F6 00:A9E6: 85        .byte $85   ; 
- D 1 - I - 0x0029F7 00:A9E7: 30        .byte $30   ; 
- D 1 - I - 0x0029F8 00:A9E8: 2B        .byte $2B   ; 
- D 1 - I - 0x0029F9 00:A9E9: 85        .byte $85   ; 
- D 1 - I - 0x0029FA 00:A9EA: 83        .byte $83   ; 
- D 1 - I - 0x0029FB 00:A9EB: 32        .byte $32   ; 
- D 1 - I - 0x0029FC 00:A9EC: 30        .byte $30   ; 
- D 1 - I - 0x0029FD 00:A9ED: 87        .byte $87   ; 
- D 1 - I - 0x0029FE 00:A9EE: 27        .byte $27   ; 
- D 1 - I - 0x0029FF 00:A9EF: 29        .byte $29   ; 
- D 1 - I - 0x002A00 00:A9F0: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x002A01 00:A9F1: 60 A8     .word off_E8_A860



off_ch_11_A9F3_05:
- D 1 - I - 0x002A03 00:A9F3: E3        .byte con_se_cb_E3, $06   ; 
- D 1 - I - 0x002A05 00:A9F5: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x002A07 00:A9F7: E5        .byte con_se_cb_E5, $01   ; 
- D 1 - I - 0x002A09 00:A9F9: 84        .byte $84   ; 
- D 1 - I - 0x002A0A 00:A9FA: 81        .byte $81   ; 
- D 1 - I - 0x002A0B 00:A9FB: 0C        .byte $0C   ; 
- D 1 - I - 0x002A0C 00:A9FC: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x002A0D 00:A9FD: 5B A8     .word off_E8_A85B



off_ch_11_A9FF_06:
off_E8_A9FF:
- D 1 - I - 0x002A0F 00:A9FF: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x002A11 00:AA01: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A13 00:AA03: 85        .byte $85   ; 
- D 1 - I - 0x002A14 00:AA04: 24        .byte $24   ; 
- D 1 - I - 0x002A15 00:AA05: 24        .byte $24   ; 
- D 1 - I - 0x002A16 00:AA06: 80        .byte $80   ; 
- D 1 - I - 0x002A17 00:AA07: 39        .byte $39   ; 
- D 1 - I - 0x002A18 00:AA08: 38        .byte $38   ; 
- D 1 - I - 0x002A19 00:AA09: 37        .byte $37   ; 
- D 1 - I - 0x002A1A 00:AA0A: 36        .byte $36   ; 
- D 1 - I - 0x002A1B 00:AA0B: 35        .byte $35   ; 
- D 1 - I - 0x002A1C 00:AA0C: 34        .byte $34   ; 
- D 1 - I - 0x002A1D 00:AA0D: 33        .byte $33   ; 
- D 1 - I - 0x002A1E 00:AA0E: 32        .byte $32   ; 
- D 1 - I - 0x002A1F 00:AA0F: 31        .byte $31   ; 
- D 1 - I - 0x002A20 00:AA10: 30        .byte $30   ; 
- D 1 - I - 0x002A21 00:AA11: 2B        .byte $2B   ; 
- D 1 - I - 0x002A22 00:AA12: 2A        .byte $2A   ; 
- D 1 - I - 0x002A23 00:AA13: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A25 00:AA15: 85        .byte $85   ; 
- D 1 - I - 0x002A26 00:AA16: 27        .byte $27   ; 
- D 1 - I - 0x002A27 00:AA17: E0        .byte con_se_cb_E0, $24   ; 
- D 1 - I - 0x002A29 00:AA19: 85        .byte $85   ; 
- D 1 - I - 0x002A2A 00:AA1A: 83        .byte $83   ; 
- D 1 - I - 0x002A2B 00:AA1B: 29        .byte $29   ; 
- D 1 - I - 0x002A2C 00:AA1C: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A2E 00:AA1E: 85        .byte $85   ; 
- D 1 - I - 0x002A2F 00:AA1F: 27        .byte $27   ; 
- D 1 - I - 0x002A30 00:AA20: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002A32 00:AA22: 83        .byte $83   ; 
- D 1 - I - 0x002A33 00:AA23: 22        .byte $22   ; 
- D 1 - I - 0x002A34 00:AA24: 24        .byte $24   ; 
- D 1 - I - 0x002A35 00:AA25: 22        .byte $22   ; 
- D 1 - I - 0x002A36 00:AA26: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A38 00:AA28: 85        .byte $85   ; 
- D 1 - I - 0x002A39 00:AA29: 24        .byte $24   ; 
- D 1 - I - 0x002A3A 00:AA2A: 24        .byte $24   ; 
- D 1 - I - 0x002A3B 00:AA2B: 80        .byte $80   ; 
- D 1 - I - 0x002A3C 00:AA2C: 39        .byte $39   ; 
- D 1 - I - 0x002A3D 00:AA2D: 38        .byte $38   ; 
- D 1 - I - 0x002A3E 00:AA2E: 37        .byte $37   ; 
- D 1 - I - 0x002A3F 00:AA2F: 36        .byte $36   ; 
- D 1 - I - 0x002A40 00:AA30: 35        .byte $35   ; 
- D 1 - I - 0x002A41 00:AA31: 34        .byte $34   ; 
- D 1 - I - 0x002A42 00:AA32: 33        .byte $33   ; 
- D 1 - I - 0x002A43 00:AA33: 32        .byte $32   ; 
- D 1 - I - 0x002A44 00:AA34: 31        .byte $31   ; 
- D 1 - I - 0x002A45 00:AA35: 30        .byte $30   ; 
- D 1 - I - 0x002A46 00:AA36: 2B        .byte $2B   ; 
- D 1 - I - 0x002A47 00:AA37: 2A        .byte $2A   ; 
- D 1 - I - 0x002A48 00:AA38: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A4A 00:AA3A: 85        .byte $85   ; 
- D 1 - I - 0x002A4B 00:AA3B: 2B        .byte $2B   ; 
- D 1 - I - 0x002A4C 00:AA3C: E0        .byte con_se_cb_E0, $24   ; 
- D 1 - I - 0x002A4E 00:AA3E: 85        .byte $85   ; 
- D 1 - I - 0x002A4F 00:AA3F: 83        .byte $83   ; 
- D 1 - I - 0x002A50 00:AA40: 29        .byte $29   ; 
- D 1 - I - 0x002A51 00:AA41: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A53 00:AA43: 85        .byte $85   ; 
- D 1 - I - 0x002A54 00:AA44: 27        .byte $27   ; 
- D 1 - I - 0x002A55 00:AA45: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002A57 00:AA47: 83        .byte $83   ; 
- D 1 - I - 0x002A58 00:AA48: 1B        .byte $1B   ; 
- D 1 - I - 0x002A59 00:AA49: 20        .byte $20   ; 
- D 1 - I - 0x002A5A 00:AA4A: 1B        .byte $1B   ; 
- D 1 - I - 0x002A5B 00:AA4B: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A5D 00:AA4D: 85        .byte $85   ; 
- D 1 - I - 0x002A5E 00:AA4E: 20        .byte $20   ; 
- D 1 - I - 0x002A5F 00:AA4F: 20        .byte $20   ; 
- D 1 - I - 0x002A60 00:AA50: 80        .byte $80   ; 
- D 1 - I - 0x002A61 00:AA51: 39        .byte $39   ; 
- D 1 - I - 0x002A62 00:AA52: 38        .byte $38   ; 
- D 1 - I - 0x002A63 00:AA53: 37        .byte $37   ; 
- D 1 - I - 0x002A64 00:AA54: 36        .byte $36   ; 
- D 1 - I - 0x002A65 00:AA55: 35        .byte $35   ; 
- D 1 - I - 0x002A66 00:AA56: 34        .byte $34   ; 
- D 1 - I - 0x002A67 00:AA57: 33        .byte $33   ; 
- D 1 - I - 0x002A68 00:AA58: 32        .byte $32   ; 
- D 1 - I - 0x002A69 00:AA59: 31        .byte $31   ; 
- D 1 - I - 0x002A6A 00:AA5A: 30        .byte $30   ; 
- D 1 - I - 0x002A6B 00:AA5B: 2B        .byte $2B   ; 
- D 1 - I - 0x002A6C 00:AA5C: 2A        .byte $2A   ; 
- D 1 - I - 0x002A6D 00:AA5D: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A6F 00:AA5F: 85        .byte $85   ; 
- D 1 - I - 0x002A70 00:AA60: 24        .byte $24   ; 
- D 1 - I - 0x002A71 00:AA61: 27        .byte $27   ; 
- D 1 - I - 0x002A72 00:AA62: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002A74 00:AA64: 83        .byte $83   ; 
- D 1 - I - 0x002A75 00:AA65: 1B        .byte $1B   ; 
- D 1 - I - 0x002A76 00:AA66: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A78 00:AA68: 85        .byte $85   ; 
- D 1 - I - 0x002A79 00:AA69: 20        .byte $20   ; 
- D 1 - I - 0x002A7A 00:AA6A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002A7C 00:AA6C: 83        .byte $83   ; 
- D 1 - I - 0x002A7D 00:AA6D: 1B        .byte $1B   ; 
- D 1 - I - 0x002A7E 00:AA6E: 20        .byte $20   ; 
- D 1 - I - 0x002A7F 00:AA6F: 1B        .byte $1B   ; 
- D 1 - I - 0x002A80 00:AA70: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A82 00:AA72: 85        .byte $85   ; 
- D 1 - I - 0x002A83 00:AA73: 20        .byte $20   ; 
- D 1 - I - 0x002A84 00:AA74: 20        .byte $20   ; 
- D 1 - I - 0x002A85 00:AA75: 80        .byte $80   ; 
- D 1 - I - 0x002A86 00:AA76: 39        .byte $39   ; 
- D 1 - I - 0x002A87 00:AA77: 38        .byte $38   ; 
- D 1 - I - 0x002A88 00:AA78: 37        .byte $37   ; 
- D 1 - I - 0x002A89 00:AA79: 36        .byte $36   ; 
- D 1 - I - 0x002A8A 00:AA7A: 35        .byte $35   ; 
- D 1 - I - 0x002A8B 00:AA7B: 34        .byte $34   ; 
- D 1 - I - 0x002A8C 00:AA7C: 33        .byte $33   ; 
- D 1 - I - 0x002A8D 00:AA7D: 32        .byte $32   ; 
- D 1 - I - 0x002A8E 00:AA7E: 31        .byte $31   ; 
- D 1 - I - 0x002A8F 00:AA7F: 30        .byte $30   ; 
- D 1 - I - 0x002A90 00:AA80: 2B        .byte $2B   ; 
- D 1 - I - 0x002A91 00:AA81: 2A        .byte $2A   ; 
- D 1 - I - 0x002A92 00:AA82: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002A94 00:AA84: 85        .byte $85   ; 
- D 1 - I - 0x002A95 00:AA85: 24        .byte $24   ; 
- D 1 - I - 0x002A96 00:AA86: E0        .byte con_se_cb_E0, $24   ; 
- D 1 - I - 0x002A98 00:AA88: 85        .byte $85   ; 
- D 1 - I - 0x002A99 00:AA89: 22        .byte $22   ; 
- D 1 - I - 0x002A9A 00:AA8A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002A9C 00:AA8C: 83        .byte $83   ; 
- D 1 - I - 0x002A9D 00:AA8D: 22        .byte $22   ; 
- D 1 - I - 0x002A9E 00:AA8E: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AA0 00:AA90: 85        .byte $85   ; 
- D 1 - I - 0x002AA1 00:AA91: 26        .byte $26   ; 
- D 1 - I - 0x002AA2 00:AA92: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002AA4 00:AA94: 83        .byte $83   ; 
- D 1 - I - 0x002AA5 00:AA95: 26        .byte $26   ; 
- D 1 - I - 0x002AA6 00:AA96: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AA8 00:AA98: 85        .byte $85   ; 
- D 1 - I - 0x002AA9 00:AA99: 26        .byte $26   ; 
- D 1 - I - 0x002AAA 00:AA9A: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002AAB 00:AA9B: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AAD 00:AA9D: 85        .byte $85   ; 
- D 1 - I - 0x002AAE 00:AA9E: 24        .byte $24   ; 
- D 1 - I - 0x002AAF 00:AA9F: 24        .byte $24   ; 
- D 1 - I - 0x002AB0 00:AAA0: 80        .byte $80   ; 
- D 1 - I - 0x002AB1 00:AAA1: 39        .byte $39   ; 
- D 1 - I - 0x002AB2 00:AAA2: 38        .byte $38   ; 
- D 1 - I - 0x002AB3 00:AAA3: 37        .byte $37   ; 
- D 1 - I - 0x002AB4 00:AAA4: 36        .byte $36   ; 
- D 1 - I - 0x002AB5 00:AAA5: 35        .byte $35   ; 
- D 1 - I - 0x002AB6 00:AAA6: 34        .byte $34   ; 
- D 1 - I - 0x002AB7 00:AAA7: 33        .byte $33   ; 
- D 1 - I - 0x002AB8 00:AAA8: 32        .byte $32   ; 
- D 1 - I - 0x002AB9 00:AAA9: 31        .byte $31   ; 
- D 1 - I - 0x002ABA 00:AAAA: 30        .byte $30   ; 
- D 1 - I - 0x002ABB 00:AAAB: 2B        .byte $2B   ; 
- D 1 - I - 0x002ABC 00:AAAC: 2A        .byte $2A   ; 
- D 1 - I - 0x002ABD 00:AAAD: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002ABF 00:AAAF: 85        .byte $85   ; 
- D 1 - I - 0x002AC0 00:AAB0: 27        .byte $27   ; 
- D 1 - I - 0x002AC1 00:AAB1: E0        .byte con_se_cb_E0, $24   ; 
- D 1 - I - 0x002AC3 00:AAB3: 85        .byte $85   ; 
- D 1 - I - 0x002AC4 00:AAB4: 83        .byte $83   ; 
- D 1 - I - 0x002AC5 00:AAB5: 29        .byte $29   ; 
- D 1 - I - 0x002AC6 00:AAB6: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AC8 00:AAB8: 85        .byte $85   ; 
- D 1 - I - 0x002AC9 00:AAB9: 27        .byte $27   ; 
- D 1 - I - 0x002ACA 00:AABA: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002ACC 00:AABC: 83        .byte $83   ; 
- D 1 - I - 0x002ACD 00:AABD: 22        .byte $22   ; 
- D 1 - I - 0x002ACE 00:AABE: 24        .byte $24   ; 
- D 1 - I - 0x002ACF 00:AABF: 22        .byte $22   ; 
- D 1 - I - 0x002AD0 00:AAC0: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AD2 00:AAC2: 85        .byte $85   ; 
- D 1 - I - 0x002AD3 00:AAC3: 24        .byte $24   ; 
- D 1 - I - 0x002AD4 00:AAC4: 24        .byte $24   ; 
- D 1 - I - 0x002AD5 00:AAC5: 80        .byte $80   ; 
- D 1 - I - 0x002AD6 00:AAC6: 39        .byte $39   ; 
- D 1 - I - 0x002AD7 00:AAC7: 38        .byte $38   ; 
- D 1 - I - 0x002AD8 00:AAC8: 37        .byte $37   ; 
- D 1 - I - 0x002AD9 00:AAC9: 36        .byte $36   ; 
- D 1 - I - 0x002ADA 00:AACA: 35        .byte $35   ; 
- D 1 - I - 0x002ADB 00:AACB: 34        .byte $34   ; 
- D 1 - I - 0x002ADC 00:AACC: 33        .byte $33   ; 
- D 1 - I - 0x002ADD 00:AACD: 32        .byte $32   ; 
- D 1 - I - 0x002ADE 00:AACE: 31        .byte $31   ; 
- D 1 - I - 0x002ADF 00:AACF: 30        .byte $30   ; 
- D 1 - I - 0x002AE0 00:AAD0: 2B        .byte $2B   ; 
- D 1 - I - 0x002AE1 00:AAD1: 2A        .byte $2A   ; 
- D 1 - I - 0x002AE2 00:AAD2: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AE4 00:AAD4: 85        .byte $85   ; 
- D 1 - I - 0x002AE5 00:AAD5: 2B        .byte $2B   ; 
- D 1 - I - 0x002AE6 00:AAD6: E0        .byte con_se_cb_E0, $24   ; 
- D 1 - I - 0x002AE8 00:AAD8: 85        .byte $85   ; 
- D 1 - I - 0x002AE9 00:AAD9: 83        .byte $83   ; 
- D 1 - I - 0x002AEA 00:AADA: 29        .byte $29   ; 
- D 1 - I - 0x002AEB 00:AADB: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AED 00:AADD: 85        .byte $85   ; 
- D 1 - I - 0x002AEE 00:AADE: 27        .byte $27   ; 
- D 1 - I - 0x002AEF 00:AADF: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002AF1 00:AAE1: 83        .byte $83   ; 
- D 1 - I - 0x002AF2 00:AAE2: 1B        .byte $1B   ; 
- D 1 - I - 0x002AF3 00:AAE3: 20        .byte $20   ; 
- D 1 - I - 0x002AF4 00:AAE4: 1B        .byte $1B   ; 
- D 1 - I - 0x002AF5 00:AAE5: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002AF7 00:AAE7: 85        .byte $85   ; 
- D 1 - I - 0x002AF8 00:AAE8: 20        .byte $20   ; 
- D 1 - I - 0x002AF9 00:AAE9: 20        .byte $20   ; 
- D 1 - I - 0x002AFA 00:AAEA: 80        .byte $80   ; 
- D 1 - I - 0x002AFB 00:AAEB: 39        .byte $39   ; 
- D 1 - I - 0x002AFC 00:AAEC: 38        .byte $38   ; 
- D 1 - I - 0x002AFD 00:AAED: 37        .byte $37   ; 
- D 1 - I - 0x002AFE 00:AAEE: 36        .byte $36   ; 
- D 1 - I - 0x002AFF 00:AAEF: 35        .byte $35   ; 
- D 1 - I - 0x002B00 00:AAF0: 34        .byte $34   ; 
- D 1 - I - 0x002B01 00:AAF1: 33        .byte $33   ; 
- D 1 - I - 0x002B02 00:AAF2: 32        .byte $32   ; 
- D 1 - I - 0x002B03 00:AAF3: 31        .byte $31   ; 
- D 1 - I - 0x002B04 00:AAF4: 30        .byte $30   ; 
- D 1 - I - 0x002B05 00:AAF5: 2B        .byte $2B   ; 
- D 1 - I - 0x002B06 00:AAF6: 2A        .byte $2A   ; 
- D 1 - I - 0x002B07 00:AAF7: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B09 00:AAF9: 85        .byte $85   ; 
- D 1 - I - 0x002B0A 00:AAFA: 24        .byte $24   ; 
- D 1 - I - 0x002B0B 00:AAFB: 27        .byte $27   ; 
- D 1 - I - 0x002B0C 00:AAFC: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002B0E 00:AAFE: 83        .byte $83   ; 
- D 1 - I - 0x002B0F 00:AAFF: 1B        .byte $1B   ; 
- D 1 - I - 0x002B10 00:AB00: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B12 00:AB02: 85        .byte $85   ; 
- D 1 - I - 0x002B13 00:AB03: 20        .byte $20   ; 
- D 1 - I - 0x002B14 00:AB04: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002B16 00:AB06: 83        .byte $83   ; 
- D 1 - I - 0x002B17 00:AB07: 1B        .byte $1B   ; 
- D 1 - I - 0x002B18 00:AB08: 20        .byte $20   ; 
- D 1 - I - 0x002B19 00:AB09: 1B        .byte $1B   ; 
- D 1 - I - 0x002B1A 00:AB0A: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B1C 00:AB0C: 85        .byte $85   ; 
- D 1 - I - 0x002B1D 00:AB0D: 20        .byte $20   ; 
- D 1 - I - 0x002B1E 00:AB0E: 20        .byte $20   ; 
- D 1 - I - 0x002B1F 00:AB0F: 80        .byte $80   ; 
- D 1 - I - 0x002B20 00:AB10: 39        .byte $39   ; 
- D 1 - I - 0x002B21 00:AB11: 38        .byte $38   ; 
- D 1 - I - 0x002B22 00:AB12: 37        .byte $37   ; 
- D 1 - I - 0x002B23 00:AB13: 36        .byte $36   ; 
- D 1 - I - 0x002B24 00:AB14: 35        .byte $35   ; 
- D 1 - I - 0x002B25 00:AB15: 34        .byte $34   ; 
- D 1 - I - 0x002B26 00:AB16: 33        .byte $33   ; 
- D 1 - I - 0x002B27 00:AB17: 32        .byte $32   ; 
- D 1 - I - 0x002B28 00:AB18: 31        .byte $31   ; 
- D 1 - I - 0x002B29 00:AB19: 30        .byte $30   ; 
- D 1 - I - 0x002B2A 00:AB1A: 2B        .byte $2B   ; 
- D 1 - I - 0x002B2B 00:AB1B: 2A        .byte $2A   ; 
- D 1 - I - 0x002B2C 00:AB1C: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B2E 00:AB1E: 85        .byte $85   ; 
- D 1 - I - 0x002B2F 00:AB1F: 24        .byte $24   ; 
- D 1 - I - 0x002B30 00:AB20: 80        .byte $80   ; 
- D 1 - I - 0x002B31 00:AB21: 39        .byte $39   ; 
- D 1 - I - 0x002B32 00:AB22: 38        .byte $38   ; 
- D 1 - I - 0x002B33 00:AB23: 37        .byte $37   ; 
- D 1 - I - 0x002B34 00:AB24: 36        .byte $36   ; 
- D 1 - I - 0x002B35 00:AB25: 35        .byte $35   ; 
- D 1 - I - 0x002B36 00:AB26: 34        .byte $34   ; 
- D 1 - I - 0x002B37 00:AB27: 33        .byte $33   ; 
- D 1 - I - 0x002B38 00:AB28: 32        .byte $32   ; 
- D 1 - I - 0x002B39 00:AB29: 31        .byte $31   ; 
- D 1 - I - 0x002B3A 00:AB2A: 30        .byte $30   ; 
- D 1 - I - 0x002B3B 00:AB2B: 2B        .byte $2B   ; 
- D 1 - I - 0x002B3C 00:AB2C: 2A        .byte $2A   ; 
- D 1 - I - 0x002B3D 00:AB2D: 39        .byte $39   ; 
- D 1 - I - 0x002B3E 00:AB2E: 38        .byte $38   ; 
- D 1 - I - 0x002B3F 00:AB2F: 37        .byte $37   ; 
- D 1 - I - 0x002B40 00:AB30: 36        .byte $36   ; 
- D 1 - I - 0x002B41 00:AB31: 35        .byte $35   ; 
- D 1 - I - 0x002B42 00:AB32: 34        .byte $34   ; 
- D 1 - I - 0x002B43 00:AB33: 33        .byte $33   ; 
- D 1 - I - 0x002B44 00:AB34: 32        .byte $32   ; 
- D 1 - I - 0x002B45 00:AB35: 31        .byte $31   ; 
- D 1 - I - 0x002B46 00:AB36: 30        .byte $30   ; 
- D 1 - I - 0x002B47 00:AB37: 2B        .byte $2B   ; 
- D 1 - I - 0x002B48 00:AB38: 2A        .byte $2A   ; 
- D 1 - I - 0x002B49 00:AB39: 39        .byte $39   ; 
- D 1 - I - 0x002B4A 00:AB3A: 38        .byte $38   ; 
- D 1 - I - 0x002B4B 00:AB3B: 37        .byte $37   ; 
- D 1 - I - 0x002B4C 00:AB3C: 36        .byte $36   ; 
- D 1 - I - 0x002B4D 00:AB3D: 35        .byte $35   ; 
- D 1 - I - 0x002B4E 00:AB3E: 34        .byte $34   ; 
- D 1 - I - 0x002B4F 00:AB3F: 39        .byte $39   ; 
- D 1 - I - 0x002B50 00:AB40: 38        .byte $38   ; 
- D 1 - I - 0x002B51 00:AB41: 37        .byte $37   ; 
- D 1 - I - 0x002B52 00:AB42: 36        .byte $36   ; 
- D 1 - I - 0x002B53 00:AB43: 35        .byte $35   ; 
- D 1 - I - 0x002B54 00:AB44: 34        .byte $34   ; 
- D 1 - I - 0x002B55 00:AB45: 39        .byte $39   ; 
- D 1 - I - 0x002B56 00:AB46: 38        .byte $38   ; 
- D 1 - I - 0x002B57 00:AB47: 37        .byte $37   ; 
- D 1 - I - 0x002B58 00:AB48: 36        .byte $36   ; 
- D 1 - I - 0x002B59 00:AB49: 35        .byte $35   ; 
- D 1 - I - 0x002B5A 00:AB4A: 34        .byte $34   ; 
- D 1 - I - 0x002B5B 00:AB4B: 33        .byte $33   ; 
- D 1 - I - 0x002B5C 00:AB4C: 32        .byte $32   ; 
- D 1 - I - 0x002B5D 00:AB4D: 31        .byte $31   ; 
- D 1 - I - 0x002B5E 00:AB4E: 30        .byte $30   ; 
- D 1 - I - 0x002B5F 00:AB4F: 2B        .byte $2B   ; 
- D 1 - I - 0x002B60 00:AB50: 2A        .byte $2A   ; 
- D 1 - I - 0x002B61 00:AB51: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B63 00:AB53: 85        .byte $85   ; 
- D 1 - I - 0x002B64 00:AB54: 24        .byte $24   ; 
- D 1 - I - 0x002B65 00:AB55: 24        .byte $24   ; 
- D 1 - I - 0x002B66 00:AB56: 80        .byte $80   ; 
- D 1 - I - 0x002B67 00:AB57: 39        .byte $39   ; 
- D 1 - I - 0x002B68 00:AB58: 38        .byte $38   ; 
- D 1 - I - 0x002B69 00:AB59: 37        .byte $37   ; 
- D 1 - I - 0x002B6A 00:AB5A: 36        .byte $36   ; 
- D 1 - I - 0x002B6B 00:AB5B: 35        .byte $35   ; 
- D 1 - I - 0x002B6C 00:AB5C: 34        .byte $34   ; 
- D 1 - I - 0x002B6D 00:AB5D: 33        .byte $33   ; 
- D 1 - I - 0x002B6E 00:AB5E: 32        .byte $32   ; 
- D 1 - I - 0x002B6F 00:AB5F: 31        .byte $31   ; 
- D 1 - I - 0x002B70 00:AB60: 30        .byte $30   ; 
- D 1 - I - 0x002B71 00:AB61: 2B        .byte $2B   ; 
- D 1 - I - 0x002B72 00:AB62: 2A        .byte $2A   ; 
- D 1 - I - 0x002B73 00:AB63: 85        .byte $85   ; 
- D 1 - I - 0x002B74 00:AB64: 27        .byte $27   ; 
- D 1 - I - 0x002B75 00:AB65: 22        .byte $22   ; 
- D 1 - I - 0x002B76 00:AB66: 83        .byte $83   ; 
- D 1 - I - 0x002B77 00:AB67: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002B79 00:AB69: 22        .byte $22   ; 
- D 1 - I - 0x002B7A 00:AB6A: 29        .byte $29   ; 
- D 1 - I - 0x002B7B 00:AB6B: 80        .byte $80   ; 
- D 1 - I - 0x002B7C 00:AB6C: 39        .byte $39   ; 
- D 1 - I - 0x002B7D 00:AB6D: 38        .byte $38   ; 
- D 1 - I - 0x002B7E 00:AB6E: 37        .byte $37   ; 
- D 1 - I - 0x002B7F 00:AB6F: 36        .byte $36   ; 
- D 1 - I - 0x002B80 00:AB70: 35        .byte $35   ; 
- D 1 - I - 0x002B81 00:AB71: 34        .byte $34   ; 
- D 1 - I - 0x002B82 00:AB72: 33        .byte $33   ; 
- D 1 - I - 0x002B83 00:AB73: 32        .byte $32   ; 
- D 1 - I - 0x002B84 00:AB74: 31        .byte $31   ; 
- D 1 - I - 0x002B85 00:AB75: 30        .byte $30   ; 
- D 1 - I - 0x002B86 00:AB76: 2B        .byte $2B   ; 
- D 1 - I - 0x002B87 00:AB77: 2A        .byte $2A   ; 
- D 1 - I - 0x002B88 00:AB78: 85        .byte $85   ; 
- D 1 - I - 0x002B89 00:AB79: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B8B 00:AB7B: 29        .byte $29   ; 
- D 1 - I - 0x002B8C 00:AB7C: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002B8E 00:AB7E: 85        .byte $85   ; 
- D 1 - I - 0x002B8F 00:AB7F: 27        .byte $27   ; 
- D 1 - I - 0x002B90 00:AB80: 27        .byte $27   ; 
- D 1 - I - 0x002B91 00:AB81: 80        .byte $80   ; 
- D 1 - I - 0x002B92 00:AB82: 39        .byte $39   ; 
- D 1 - I - 0x002B93 00:AB83: 38        .byte $38   ; 
- D 1 - I - 0x002B94 00:AB84: 37        .byte $37   ; 
- D 1 - I - 0x002B95 00:AB85: 36        .byte $36   ; 
- D 1 - I - 0x002B96 00:AB86: 35        .byte $35   ; 
- D 1 - I - 0x002B97 00:AB87: 34        .byte $34   ; 
- D 1 - I - 0x002B98 00:AB88: 33        .byte $33   ; 
- D 1 - I - 0x002B99 00:AB89: 32        .byte $32   ; 
- D 1 - I - 0x002B9A 00:AB8A: 31        .byte $31   ; 
- D 1 - I - 0x002B9B 00:AB8B: 30        .byte $30   ; 
- D 1 - I - 0x002B9C 00:AB8C: 2B        .byte $2B   ; 
- D 1 - I - 0x002B9D 00:AB8D: 2A        .byte $2A   ; 
- D 1 - I - 0x002B9E 00:AB8E: 85        .byte $85   ; 
- D 1 - I - 0x002B9F 00:AB8F: 26        .byte $26   ; 
- D 1 - I - 0x002BA0 00:AB90: 24        .byte $24   ; 
- D 1 - I - 0x002BA1 00:AB91: 83        .byte $83   ; 
- D 1 - I - 0x002BA2 00:AB92: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002BA4 00:AB94: 24        .byte $24   ; 
- D 1 - I - 0x002BA5 00:AB95: 22        .byte $22   ; 
- D 1 - I - 0x002BA6 00:AB96: 80        .byte $80   ; 
- D 1 - I - 0x002BA7 00:AB97: 39        .byte $39   ; 
- D 1 - I - 0x002BA8 00:AB98: 38        .byte $38   ; 
- D 1 - I - 0x002BA9 00:AB99: 37        .byte $37   ; 
- D 1 - I - 0x002BAA 00:AB9A: 36        .byte $36   ; 
- D 1 - I - 0x002BAB 00:AB9B: 35        .byte $35   ; 
- D 1 - I - 0x002BAC 00:AB9C: 34        .byte $34   ; 
- D 1 - I - 0x002BAD 00:AB9D: 33        .byte $33   ; 
- D 1 - I - 0x002BAE 00:AB9E: 32        .byte $32   ; 
- D 1 - I - 0x002BAF 00:AB9F: 31        .byte $31   ; 
- D 1 - I - 0x002BB0 00:ABA0: 30        .byte $30   ; 
- D 1 - I - 0x002BB1 00:ABA1: 2B        .byte $2B   ; 
- D 1 - I - 0x002BB2 00:ABA2: 2A        .byte $2A   ; 
- D 1 - I - 0x002BB3 00:ABA3: 85        .byte $85   ; 
- D 1 - I - 0x002BB4 00:ABA4: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002BB6 00:ABA6: 22        .byte $22   ; 
- D 1 - I - 0x002BB7 00:ABA7: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002BB9 00:ABA9: 85        .byte $85   ; 
- D 1 - I - 0x002BBA 00:ABAA: 20        .byte $20   ; 
- D 1 - I - 0x002BBB 00:ABAB: 20        .byte $20   ; 
- D 1 - I - 0x002BBC 00:ABAC: 80        .byte $80   ; 
- D 1 - I - 0x002BBD 00:ABAD: 39        .byte $39   ; 
- D 1 - I - 0x002BBE 00:ABAE: 38        .byte $38   ; 
- D 1 - I - 0x002BBF 00:ABAF: 37        .byte $37   ; 
- D 1 - I - 0x002BC0 00:ABB0: 36        .byte $36   ; 
- D 1 - I - 0x002BC1 00:ABB1: 35        .byte $35   ; 
- D 1 - I - 0x002BC2 00:ABB2: 34        .byte $34   ; 
- D 1 - I - 0x002BC3 00:ABB3: 33        .byte $33   ; 
- D 1 - I - 0x002BC4 00:ABB4: 32        .byte $32   ; 
- D 1 - I - 0x002BC5 00:ABB5: 31        .byte $31   ; 
- D 1 - I - 0x002BC6 00:ABB6: 30        .byte $30   ; 
- D 1 - I - 0x002BC7 00:ABB7: 2B        .byte $2B   ; 
- D 1 - I - 0x002BC8 00:ABB8: 2A        .byte $2A   ; 
- D 1 - I - 0x002BC9 00:ABB9: 85        .byte $85   ; 
- D 1 - I - 0x002BCA 00:ABBA: 24        .byte $24   ; 
- D 1 - I - 0x002BCB 00:ABBB: 22        .byte $22   ; 
- D 1 - I - 0x002BCC 00:ABBC: 83        .byte $83   ; 
- D 1 - I - 0x002BCD 00:ABBD: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002BCF 00:ABBF: 22        .byte $22   ; 
- D 1 - I - 0x002BD0 00:ABC0: 26        .byte $26   ; 
- D 1 - I - 0x002BD1 00:ABC1: 80        .byte $80   ; 
- D 1 - I - 0x002BD2 00:ABC2: 39        .byte $39   ; 
- D 1 - I - 0x002BD3 00:ABC3: 38        .byte $38   ; 
- D 1 - I - 0x002BD4 00:ABC4: 37        .byte $37   ; 
- D 1 - I - 0x002BD5 00:ABC5: 36        .byte $36   ; 
- D 1 - I - 0x002BD6 00:ABC6: 35        .byte $35   ; 
- D 1 - I - 0x002BD7 00:ABC7: 34        .byte $34   ; 
- D 1 - I - 0x002BD8 00:ABC8: 33        .byte $33   ; 
- D 1 - I - 0x002BD9 00:ABC9: 32        .byte $32   ; 
- D 1 - I - 0x002BDA 00:ABCA: 31        .byte $31   ; 
- D 1 - I - 0x002BDB 00:ABCB: 30        .byte $30   ; 
- D 1 - I - 0x002BDC 00:ABCC: 2B        .byte $2B   ; 
- D 1 - I - 0x002BDD 00:ABCD: 2A        .byte $2A   ; 
- D 1 - I - 0x002BDE 00:ABCE: 85        .byte $85   ; 
- D 1 - I - 0x002BDF 00:ABCF: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002BE1 00:ABD1: 26        .byte $26   ; 
- D 1 - I - 0x002BE2 00:ABD2: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x002BE4 00:ABD4: 24        .byte $24   ; 
- D 1 - I - 0x002BE5 00:ABD5: 24        .byte $24   ; 
- D 1 - I - 0x002BE6 00:ABD6: 80        .byte $80   ; 
- D 1 - I - 0x002BE7 00:ABD7: 39        .byte $39   ; 
- D 1 - I - 0x002BE8 00:ABD8: 38        .byte $38   ; 
- D 1 - I - 0x002BE9 00:ABD9: 37        .byte $37   ; 
- D 1 - I - 0x002BEA 00:ABDA: 36        .byte $36   ; 
- D 1 - I - 0x002BEB 00:ABDB: 35        .byte $35   ; 
- D 1 - I - 0x002BEC 00:ABDC: 34        .byte $34   ; 
- D 1 - I - 0x002BED 00:ABDD: 33        .byte $33   ; 
- D 1 - I - 0x002BEE 00:ABDE: 32        .byte $32   ; 
- D 1 - I - 0x002BEF 00:ABDF: 31        .byte $31   ; 
- D 1 - I - 0x002BF0 00:ABE0: 30        .byte $30   ; 
- D 1 - I - 0x002BF1 00:ABE1: 2B        .byte $2B   ; 
- D 1 - I - 0x002BF2 00:ABE2: 2A        .byte $2A   ; 
- D 1 - I - 0x002BF3 00:ABE3: 85        .byte $85   ; 
- D 1 - I - 0x002BF4 00:ABE4: 27        .byte $27   ; 
- D 1 - I - 0x002BF5 00:ABE5: 85        .byte $85   ; 
- D 1 - I - 0x002BF6 00:ABE6: 83        .byte $83   ; 
- D 1 - I - 0x002BF7 00:ABE7: E0        .byte con_se_cb_E0, $24   ; 
- D 1 - I - 0x002BF9 00:ABE9: 29        .byte $29   ; 
- D 1 - I - 0x002BFA 00:ABEA: 83        .byte $83   ; 
- D 1 - I - 0x002BFB 00:ABEB: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002BFD 00:ABED: 27        .byte $27   ; 
- D 1 - I - 0x002BFE 00:ABEE: 80        .byte $80   ; 
- D 1 - I - 0x002BFF 00:ABEF: 39        .byte $39   ; 
- D 1 - I - 0x002C00 00:ABF0: 38        .byte $38   ; 
- D 1 - I - 0x002C01 00:ABF1: 37        .byte $37   ; 
- D 1 - I - 0x002C02 00:ABF2: 36        .byte $36   ; 
- D 1 - I - 0x002C03 00:ABF3: 35        .byte $35   ; 
- D 1 - I - 0x002C04 00:ABF4: 34        .byte $34   ; 
- D 1 - I - 0x002C05 00:ABF5: 33        .byte $33   ; 
- D 1 - I - 0x002C06 00:ABF6: 32        .byte $32   ; 
- D 1 - I - 0x002C07 00:ABF7: 31        .byte $31   ; 
- D 1 - I - 0x002C08 00:ABF8: 30        .byte $30   ; 
- D 1 - I - 0x002C09 00:ABF9: 2B        .byte $2B   ; 
- D 1 - I - 0x002C0A 00:ABFA: 2A        .byte $2A   ; 
- D 1 - I - 0x002C0B 00:ABFB: 39        .byte $39   ; 
- D 1 - I - 0x002C0C 00:ABFC: 38        .byte $38   ; 
- D 1 - I - 0x002C0D 00:ABFD: 37        .byte $37   ; 
- D 1 - I - 0x002C0E 00:ABFE: 36        .byte $36   ; 
- D 1 - I - 0x002C0F 00:ABFF: 35        .byte $35   ; 
- D 1 - I - 0x002C10 00:AC00: 34        .byte $34   ; 
- D 1 - I - 0x002C11 00:AC01: 33        .byte $33   ; 
- D 1 - I - 0x002C12 00:AC02: 32        .byte $32   ; 
- D 1 - I - 0x002C13 00:AC03: 31        .byte $31   ; 
- D 1 - I - 0x002C14 00:AC04: 30        .byte $30   ; 
- D 1 - I - 0x002C15 00:AC05: 2B        .byte $2B   ; 
- D 1 - I - 0x002C16 00:AC06: 2A        .byte $2A   ; 
- D 1 - I - 0x002C17 00:AC07: 85        .byte $85   ; 
- D 1 - I - 0x002C18 00:AC08: E0        .byte con_se_cb_E0, $23   ; 
- D 1 - I - 0x002C1A 00:AC0A: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002C1B 00:AC0B: 30        .byte $30   ; 
- D 1 - I - 0x002C1C 00:AC0C: 30        .byte $30   ; 
- D 1 - I - 0x002C1D 00:AC0D: 80        .byte $80   ; 
- D 1 - I - 0x002C1E 00:AC0E: 39        .byte $39   ; 
- D 1 - I - 0x002C1F 00:AC0F: 38        .byte $38   ; 
- D 1 - I - 0x002C20 00:AC10: 37        .byte $37   ; 
- D 1 - I - 0x002C21 00:AC11: 36        .byte $36   ; 
- D 1 - I - 0x002C22 00:AC12: 35        .byte $35   ; 
- D 1 - I - 0x002C23 00:AC13: 34        .byte $34   ; 
- D 1 - I - 0x002C24 00:AC14: 33        .byte $33   ; 
- D 1 - I - 0x002C25 00:AC15: 32        .byte $32   ; 
- D 1 - I - 0x002C26 00:AC16: 31        .byte $31   ; 
- D 1 - I - 0x002C27 00:AC17: 30        .byte $30   ; 
- D 1 - I - 0x002C28 00:AC18: 2B        .byte $2B   ; 
- D 1 - I - 0x002C29 00:AC19: 2A        .byte $2A   ; 
- D 1 - I - 0x002C2A 00:AC1A: 85        .byte $85   ; 
- D 1 - I - 0x002C2B 00:AC1B: 2B        .byte $2B   ; 
- D 1 - I - 0x002C2C 00:AC1C: 80        .byte $80   ; 
- D 1 - I - 0x002C2D 00:AC1D: 39        .byte $39   ; 
- D 1 - I - 0x002C2E 00:AC1E: 38        .byte $38   ; 
- D 1 - I - 0x002C2F 00:AC1F: 37        .byte $37   ; 
- D 1 - I - 0x002C30 00:AC20: 36        .byte $36   ; 
- D 1 - I - 0x002C31 00:AC21: 35        .byte $35   ; 
- D 1 - I - 0x002C32 00:AC22: 34        .byte $34   ; 
- D 1 - I - 0x002C33 00:AC23: 33        .byte $33   ; 
- D 1 - I - 0x002C34 00:AC24: 32        .byte $32   ; 
- D 1 - I - 0x002C35 00:AC25: 31        .byte $31   ; 
- D 1 - I - 0x002C36 00:AC26: 30        .byte $30   ; 
- D 1 - I - 0x002C37 00:AC27: 2B        .byte $2B   ; 
- D 1 - I - 0x002C38 00:AC28: 2A        .byte $2A   ; 
- D 1 - I - 0x002C39 00:AC29: 39        .byte $39   ; 
- D 1 - I - 0x002C3A 00:AC2A: 38        .byte $38   ; 
- D 1 - I - 0x002C3B 00:AC2B: 37        .byte $37   ; 
- D 1 - I - 0x002C3C 00:AC2C: 36        .byte $36   ; 
- D 1 - I - 0x002C3D 00:AC2D: 35        .byte $35   ; 
- D 1 - I - 0x002C3E 00:AC2E: 34        .byte $34   ; 
- D 1 - I - 0x002C3F 00:AC2F: 33        .byte $33   ; 
- D 1 - I - 0x002C40 00:AC30: 32        .byte $32   ; 
- D 1 - I - 0x002C41 00:AC31: 31        .byte $31   ; 
- D 1 - I - 0x002C42 00:AC32: 30        .byte $30   ; 
- D 1 - I - 0x002C43 00:AC33: 2B        .byte $2B   ; 
- D 1 - I - 0x002C44 00:AC34: 2A        .byte $2A   ; 
- D 1 - I - 0x002C45 00:AC35: 39        .byte $39   ; 
- D 1 - I - 0x002C46 00:AC36: 38        .byte $38   ; 
- D 1 - I - 0x002C47 00:AC37: 37        .byte $37   ; 
- D 1 - I - 0x002C48 00:AC38: 36        .byte $36   ; 
- D 1 - I - 0x002C49 00:AC39: 35        .byte $35   ; 
- D 1 - I - 0x002C4A 00:AC3A: 34        .byte $34   ; 
- D 1 - I - 0x002C4B 00:AC3B: 39        .byte $39   ; 
- D 1 - I - 0x002C4C 00:AC3C: 38        .byte $38   ; 
- D 1 - I - 0x002C4D 00:AC3D: 37        .byte $37   ; 
- D 1 - I - 0x002C4E 00:AC3E: 36        .byte $36   ; 
- D 1 - I - 0x002C4F 00:AC3F: 35        .byte $35   ; 
- D 1 - I - 0x002C50 00:AC40: 34        .byte $34   ; 
- D 1 - I - 0x002C51 00:AC41: 36        .byte $36   ; 
- D 1 - I - 0x002C52 00:AC42: 35        .byte $35   ; 
- D 1 - I - 0x002C53 00:AC43: 34        .byte $34   ; 
- D 1 - I - 0x002C54 00:AC44: 33        .byte $33   ; 
- D 1 - I - 0x002C55 00:AC45: 32        .byte $32   ; 
- D 1 - I - 0x002C56 00:AC46: 31        .byte $31   ; 
- D 1 - I - 0x002C57 00:AC47: 30        .byte $30   ; 
- D 1 - I - 0x002C58 00:AC48: 2B        .byte $2B   ; 
- D 1 - I - 0x002C59 00:AC49: 2A        .byte $2A   ; 
- D 1 - I - 0x002C5A 00:AC4A: 29        .byte $29   ; 
- D 1 - I - 0x002C5B 00:AC4B: 28        .byte $28   ; 
- D 1 - I - 0x002C5C 00:AC4C: 27        .byte $27   ; 
- D 1 - I - 0x002C5D 00:AC4D: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x002C5E 00:AC4E: FF A9     .word off_E8_A9FF



off_ch_11_AC50_07:
off_E8_AC50:
- D 1 - I - 0x002C60 00:AC50: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002C62 00:AC52: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x002C64 00:AC54: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C66 00:AC56: 85        .byte $85   ; 
- D 1 - I - 0x002C67 00:AC57: 03        .byte $03   ; 
- D 1 - I - 0x002C68 00:AC58: 03        .byte $03   ; 
- D 1 - I - 0x002C69 00:AC59: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002C6B 00:AC5B: 87        .byte $87   ; 
- D 1 - I - 0x002C6C 00:AC5C: 07        .byte $07   ; 
- D 1 - I - 0x002C6D 00:AC5D: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C6F 00:AC5F: 85        .byte $85   ; 
- D 1 - I - 0x002C70 00:AC60: 03        .byte $03   ; 
- D 1 - I - 0x002C71 00:AC61: 03        .byte $03   ; 
- D 1 - I - 0x002C72 00:AC62: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002C74 00:AC64: 07        .byte $07   ; 
- D 1 - I - 0x002C75 00:AC65: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C77 00:AC67: 83        .byte $83   ; 
- D 1 - I - 0x002C78 00:AC68: 03        .byte $03   ; 
- D 1 - I - 0x002C79 00:AC69: 03        .byte $03   ; 
- D 1 - I - 0x002C7A 00:AC6A: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002C7B 00:AC6B: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C7D 00:AC6D: 85        .byte $85   ; 
- D 1 - I - 0x002C7E 00:AC6E: 03        .byte $03   ; 
- D 1 - I - 0x002C7F 00:AC6F: 03        .byte $03   ; 
- D 1 - I - 0x002C80 00:AC70: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002C82 00:AC72: 87        .byte $87   ; 
- D 1 - I - 0x002C83 00:AC73: 07        .byte $07   ; 
- D 1 - I - 0x002C84 00:AC74: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C86 00:AC76: 85        .byte $85   ; 
- D 1 - I - 0x002C87 00:AC77: 03        .byte $03   ; 
- D 1 - I - 0x002C88 00:AC78: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002C8A 00:AC7A: 0A        .byte $0A   ; 
- D 1 - I - 0x002C8B 00:AC7B: 0A        .byte $0A   ; 
- D 1 - I - 0x002C8C 00:AC7C: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C8E 00:AC7E: 83        .byte $83   ; 
- D 1 - I - 0x002C8F 00:AC7F: 03        .byte $03   ; 
- D 1 - I - 0x002C90 00:AC80: 03        .byte $03   ; 
- D 1 - I - 0x002C91 00:AC81: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x002C93 00:AC83: 85        .byte $85   ; 
- D 1 - I - 0x002C94 00:AC84: 03        .byte $03   ; 
- D 1 - I - 0x002C95 00:AC85: 03        .byte $03   ; 
- D 1 - I - 0x002C96 00:AC86: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002C98 00:AC88: 87        .byte $87   ; 
- D 1 - I - 0x002C99 00:AC89: 07        .byte $07   ; 
- D 1 - I - 0x002C9A 00:AC8A: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002C9C 00:AC8C: 85        .byte $85   ; 
- D 1 - I - 0x002C9D 00:AC8D: 03        .byte $03   ; 
- D 1 - I - 0x002C9E 00:AC8E: 03        .byte $03   ; 
- D 1 - I - 0x002C9F 00:AC8F: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CA1 00:AC91: 07        .byte $07   ; 
- D 1 - I - 0x002CA2 00:AC92: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CA4 00:AC94: 83        .byte $83   ; 
- D 1 - I - 0x002CA5 00:AC95: 03        .byte $03   ; 
- D 1 - I - 0x002CA6 00:AC96: 03        .byte $03   ; 
- D 1 - I - 0x002CA7 00:AC97: 85        .byte $85   ; 
- D 1 - I - 0x002CA8 00:AC98: 03        .byte $03   ; 
- D 1 - I - 0x002CA9 00:AC99: 03        .byte $03   ; 
- D 1 - I - 0x002CAA 00:AC9A: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CAC 00:AC9C: 87        .byte $87   ; 
- D 1 - I - 0x002CAD 00:AC9D: 07        .byte $07   ; 
- D 1 - I - 0x002CAE 00:AC9E: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CB0 00:ACA0: 85        .byte $85   ; 
- D 1 - I - 0x002CB1 00:ACA1: 03        .byte $03   ; 
- D 1 - I - 0x002CB2 00:ACA2: 03        .byte $03   ; 
- D 1 - I - 0x002CB3 00:ACA3: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CB5 00:ACA5: 07        .byte $07   ; 
- D 1 - I - 0x002CB6 00:ACA6: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002CB8 00:ACA8: 0A        .byte $0A   ; 
- D 1 - I - 0x002CB9 00:ACA9: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CBB 00:ACAB: 85        .byte $85   ; 
- D 1 - I - 0x002CBC 00:ACAC: 03        .byte $03   ; 
- D 1 - I - 0x002CBD 00:ACAD: 03        .byte $03   ; 
- D 1 - I - 0x002CBE 00:ACAE: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CC0 00:ACB0: 87        .byte $87   ; 
- D 1 - I - 0x002CC1 00:ACB1: 07        .byte $07   ; 
- D 1 - I - 0x002CC2 00:ACB2: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CC4 00:ACB4: 85        .byte $85   ; 
- D 1 - I - 0x002CC5 00:ACB5: 03        .byte $03   ; 
- D 1 - I - 0x002CC6 00:ACB6: 03        .byte $03   ; 
- D 1 - I - 0x002CC7 00:ACB7: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CC9 00:ACB9: 07        .byte $07   ; 
- D 1 - I - 0x002CCA 00:ACBA: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CCC 00:ACBC: 83        .byte $83   ; 
- D 1 - I - 0x002CCD 00:ACBD: 03        .byte $03   ; 
- D 1 - I - 0x002CCE 00:ACBE: 03        .byte $03   ; 
- D 1 - I - 0x002CCF 00:ACBF: 85        .byte $85   ; 
- D 1 - I - 0x002CD0 00:ACC0: 03        .byte $03   ; 
- D 1 - I - 0x002CD1 00:ACC1: 03        .byte $03   ; 
- D 1 - I - 0x002CD2 00:ACC2: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CD4 00:ACC4: 87        .byte $87   ; 
- D 1 - I - 0x002CD5 00:ACC5: 07        .byte $07   ; 
- D 1 - I - 0x002CD6 00:ACC6: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CD8 00:ACC8: 85        .byte $85   ; 
- D 1 - I - 0x002CD9 00:ACC9: 03        .byte $03   ; 
- D 1 - I - 0x002CDA 00:ACCA: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002CDC 00:ACCC: 0A        .byte $0A   ; 
- D 1 - I - 0x002CDD 00:ACCD: 0A        .byte $0A   ; 
- D 1 - I - 0x002CDE 00:ACCE: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CE0 00:ACD0: 83        .byte $83   ; 
- D 1 - I - 0x002CE1 00:ACD1: 03        .byte $03   ; 
- D 1 - I - 0x002CE2 00:ACD2: 03        .byte $03   ; 
- D 1 - I - 0x002CE3 00:ACD3: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002CE4 00:ACD4: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x002CE6 00:ACD6: 85        .byte $85   ; 
- D 1 - I - 0x002CE7 00:ACD7: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CE9 00:ACD9: 03        .byte $03   ; 
- D 1 - I - 0x002CEA 00:ACDA: 03        .byte $03   ; 
- D 1 - I - 0x002CEB 00:ACDB: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CED 00:ACDD: 87        .byte $87   ; 
- D 1 - I - 0x002CEE 00:ACDE: 07        .byte $07   ; 
- D 1 - I - 0x002CEF 00:ACDF: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002CF1 00:ACE1: 85        .byte $85   ; 
- D 1 - I - 0x002CF2 00:ACE2: 03        .byte $03   ; 
- D 1 - I - 0x002CF3 00:ACE3: 03        .byte $03   ; 
- D 1 - I - 0x002CF4 00:ACE4: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002CF6 00:ACE6: 87        .byte $87   ; 
- D 1 - I - 0x002CF7 00:ACE7: 07        .byte $07   ; 
- D 1 - I - 0x002CF8 00:ACE8: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002CF9 00:ACE9: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x002CFB 00:ACEB: 85        .byte $85   ; 
- D 1 - I - 0x002CFC 00:ACEC: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002CFE 00:ACEE: 03        .byte $03   ; 
- D 1 - I - 0x002CFF 00:ACEF: 03        .byte $03   ; 
- D 1 - I - 0x002D00 00:ACF0: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002D02 00:ACF2: 87        .byte $87   ; 
- D 1 - I - 0x002D03 00:ACF3: 0A        .byte $0A   ; 
- D 1 - I - 0x002D04 00:ACF4: E0        .byte con_se_cb_E0, $1D   ; 
- D 1 - I - 0x002D06 00:ACF6: 85        .byte $85   ; 
- D 1 - I - 0x002D07 00:ACF7: 03        .byte $03   ; 
- D 1 - I - 0x002D08 00:ACF8: 03        .byte $03   ; 
- D 1 - I - 0x002D09 00:ACF9: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002D0B 00:ACFB: 07        .byte $07   ; 
- D 1 - I - 0x002D0C 00:ACFC: 07        .byte $07   ; 
- D 1 - I - 0x002D0D 00:ACFD: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x002D0E 00:ACFE: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002D10 00:AD00: 85        .byte $85   ; 
- D 1 - I - 0x002D11 00:AD01: 03        .byte $03   ; 
- D 1 - I - 0x002D12 00:AD02: 03        .byte $03   ; 
- D 1 - I - 0x002D13 00:AD03: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002D15 00:AD05: 87        .byte $87   ; 
- D 1 - I - 0x002D16 00:AD06: 07        .byte $07   ; 
- D 1 - I - 0x002D17 00:AD07: 85        .byte $85   ; 
- D 1 - I - 0x002D18 00:AD08: 07        .byte $07   ; 
- D 1 - I - 0x002D19 00:AD09: E0        .byte con_se_cb_E0, $1F   ; 
- D 1 - I - 0x002D1B 00:AD0B: 0A        .byte $0A   ; 
- D 1 - I - 0x002D1C 00:AD0C: 0A        .byte $0A   ; 
- D 1 - I - 0x002D1D 00:AD0D: E0        .byte con_se_cb_E0, $1E   ; 
- D 1 - I - 0x002D1F 00:AD0F: 85        .byte $85   ; 
- D 1 - I - 0x002D20 00:AD10: 07        .byte $07   ; 
- D 1 - I - 0x002D21 00:AD11: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x002D22 00:AD12: 50 AC     .word off_E8_AC50



_sfx_AD14_0F_mode_select:
- D 1 - I - 0x002D24 00:AD14: 00        .byte $00   ; 
- D 1 - I - 0x002D25 00:AD15: 1B AD     .word off_ch_0F_AD1B_00
- D 1 - I - 0x002D27 00:AD17: 01        .byte $01   ; 
- D 1 - I - 0x002D28 00:AD18: 30 AD     .word off_ch_0F_AD30_01
- D 1 - I - 0x002D2A 00:AD1A: FF        .byte $FF   ; 



off_ch_0F_AD1B_00:
- D 1 - I - 0x002D2B 00:AD1B: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002D2C 00:AD1C: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002D2E 00:AD1E: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002D30 00:AD20: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002D32 00:AD22: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002D33 00:AD23: 96        .byte $96   ; 
- D 1 - I - 0x002D34 00:AD24: 20        .byte $20   ; 
- D 1 - I - 0x002D35 00:AD25: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002D36 00:AD26: 24        .byte $24   ; 
- D 1 - I - 0x002D37 00:AD27: E0        .byte con_se_cb_E0, $2A   ; 
- D 1 - I - 0x002D39 00:AD29: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x002D3B 00:AD2B: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x002D3D 00:AD2D: 89        .byte $89   ; 
- D 1 - I - 0x002D3E 00:AD2E: 30        .byte $30   ; 
- D 1 - I - 0x002D3F 00:AD2F: FF        .byte con_se_cb_stop   ; 



off_ch_0F_AD30_01:
- D 1 - I - 0x002D40 00:AD30: 80        .byte $80   ; 
- D 1 - I - 0x002D41 00:AD31: 0C        .byte $0C   ; 
- D 1 - I - 0x002D42 00:AD32: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002D44 00:AD34: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002D46 00:AD36: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002D48 00:AD38: E5        .byte con_se_cb_E5, $01   ; 
- D 1 - I - 0x002D4A 00:AD3A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002D4B 00:AD3B: 96        .byte $96   ; 
- D 1 - I - 0x002D4C 00:AD3C: 20        .byte $20   ; 
- D 1 - I - 0x002D4D 00:AD3D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x002D4E 00:AD3E: 24        .byte $24   ; 
- D 1 - I - 0x002D4F 00:AD3F: E0        .byte con_se_cb_E0, $2A   ; 
- D 1 - I - 0x002D51 00:AD41: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x002D53 00:AD43: E5        .byte con_se_cb_E5, $02   ; 
- D 1 - I - 0x002D55 00:AD45: ED        .byte con_se_cb_ED, $00   ; 
- D 1 - I - 0x002D57 00:AD47: 89        .byte $89   ; 
- D 1 - I - 0x002D58 00:AD48: 30        .byte $30   ; 
- D 1 - I - 0x002D59 00:AD49: FF        .byte con_se_cb_stop   ; 



_sfx_AD4A_02_dead:
- D 1 - I - 0x002D5A 00:AD4A: 00        .byte $00   ; 
- D 1 - I - 0x002D5B 00:AD4B: 51 AD     .word off_ch_02_AD51_00
- D 1 - I - 0x002D5D 00:AD4D: 03        .byte $03   ; 
- D 1 - I - 0x002D5E 00:AD4E: 60 AD     .word off_ch_02_AD60_03
- D 1 - I - 0x002D60 00:AD50: FF        .byte $FF   ; 



off_ch_02_AD51_00:
- D 1 - I - 0x002D61 00:AD51: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002D63 00:AD53: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x002D65 00:AD55: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002D67 00:AD57: E4        .byte con_se_cb_E4, $92   ; 
- D 1 - I - 0x002D69 00:AD59: 82        .byte $82   ; 
- D 1 - I - 0x002D6A 00:AD5A: 20        .byte $20   ; 
- D 1 - I - 0x002D6B 00:AD5B: E4        .byte con_se_cb_E4, $8B   ; 
- D 1 - I - 0x002D6D 00:AD5D: 82        .byte $82   ; 
- D 1 - I - 0x002D6E 00:AD5E: 09        .byte $09   ; 
- D 1 - I - 0x002D6F 00:AD5F: FF        .byte con_se_cb_stop   ; 



off_ch_02_AD60_03:
- D 1 - I - 0x002D70 00:AD60: E0        .byte con_se_cb_E0, $01   ; 
- D 1 - I - 0x002D72 00:AD62: E3        .byte con_se_cb_E3, $07   ; 
- D 1 - I - 0x002D74 00:AD64: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002D75 00:AD65: 81        .byte $81   ; 
- D 1 - I - 0x002D76 00:AD66: 08        .byte $08   ; 
- D 1 - I - 0x002D77 00:AD67: 09        .byte $09   ; 
- D 1 - I - 0x002D78 00:AD68: E3        .byte con_se_cb_E3, $0B   ; 
- D 1 - I - 0x002D7A 00:AD6A: 82        .byte $82   ; 
- D 1 - I - 0x002D7B 00:AD6B: 09        .byte $09   ; 
- D 1 - I - 0x002D7C 00:AD6C: FF        .byte con_se_cb_stop   ; 



_sfx_AD6D_03_shot:
- D 1 - I - 0x002D7D 00:AD6D: 00        .byte $00   ; 
- D 1 - I - 0x002D7E 00:AD6E: 74 AD     .word off_ch_03_AD74_00
- D 1 - I - 0x002D80 00:AD70: 03        .byte $03   ; 
- D 1 - I - 0x002D81 00:AD71: 85 AD     .word off_ch_03_AD85_03
- D 1 - I - 0x002D83 00:AD73: FF        .byte $FF   ; 



off_ch_03_AD74_00:
- D 1 - I - 0x002D84 00:AD74: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002D86 00:AD76: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x002D88 00:AD78: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002D8A 00:AD7A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002D8B 00:AD7B: 81        .byte $81   ; 
- D 1 - I - 0x002D8C 00:AD7C: 05        .byte $05   ; 
- D 1 - I - 0x002D8D 00:AD7D: E4        .byte con_se_cb_E4, $84   ; 
- D 1 - I - 0x002D8F 00:AD7F: 82        .byte $82   ; 
- D 1 - I - 0x002D90 00:AD80: 19        .byte $19   ; 
- D 1 - I - 0x002D91 00:AD81: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x002D93 00:AD83: 26        .byte $26   ; 
- D 1 - I - 0x002D94 00:AD84: FF        .byte con_se_cb_stop   ; 



off_ch_03_AD85_03:
- D 1 - I - 0x002D95 00:AD85: E0        .byte con_se_cb_E0, $10   ; 
- D 1 - I - 0x002D97 00:AD87: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002D99 00:AD89: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002D9A 00:AD8A: 80        .byte $80   ; 
- D 1 - I - 0x002D9B 00:AD8B: 0F        .byte $0F   ; 
- D 1 - I - 0x002D9C 00:AD8C: 0E        .byte $0E   ; 
- D 1 - I - 0x002D9D 00:AD8D: 0D        .byte $0D   ; 
- D 1 - I - 0x002D9E 00:AD8E: 0C        .byte $0C   ; 
- D 1 - I - 0x002D9F 00:AD8F: 96        .byte $96   ; 
- D 1 - I - 0x002DA0 00:AD90: 07        .byte $07   ; 
- D 1 - I - 0x002DA1 00:AD91: 06        .byte $06   ; 
- D 1 - I - 0x002DA2 00:AD92: 05        .byte $05   ; 
- D 1 - I - 0x002DA3 00:AD93: 04        .byte $04   ; 
- D 1 - I - 0x002DA4 00:AD94: 03        .byte $03   ; 
- D 1 - I - 0x002DA5 00:AD95: 02        .byte $02   ; 
- D 1 - I - 0x002DA6 00:AD96: 01        .byte $01   ; 
- D 1 - I - 0x002DA7 00:AD97: FF        .byte con_se_cb_stop   ; 



_sfx_AD98_05_receive:
- D 1 - I - 0x002DA8 00:AD98: 00        .byte $00   ; 
- D 1 - I - 0x002DA9 00:AD99: 9C AD     .word off_ch_05_AD9C_00
- D 1 - I - 0x002DAB 00:AD9B: FF        .byte $FF   ; 



off_ch_05_AD9C_00:
- D 1 - I - 0x002DAC 00:AD9C: E0        .byte con_se_cb_E0, $11   ; 
- D 1 - I - 0x002DAE 00:AD9E: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x002DB0 00:ADA0: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002DB2 00:ADA2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002DB3 00:ADA3: E4        .byte con_se_cb_E4, $83   ; 
- D 1 - I - 0x002DB5 00:ADA5: 81        .byte $81   ; 
- D 1 - I - 0x002DB6 00:ADA6: 19        .byte $19   ; 
- D 1 - I - 0x002DB7 00:ADA7: E4        .byte con_se_cb_E4, $8C   ; 
- D 1 - I - 0x002DB9 00:ADA9: 82        .byte $82   ; 
- D 1 - I - 0x002DBA 00:ADAA: 09        .byte $09   ; 
- D 1 - I - 0x002DBB 00:ADAB: FF        .byte con_se_cb_stop   ; 



_sfx_ADAC_06_throw:
- D 1 - I - 0x002DBC 00:ADAC: 03        .byte $03   ; 
- D 1 - I - 0x002DBD 00:ADAD: B0 AD     .word off_ch_06_ADB0_03
- D 1 - I - 0x002DBF 00:ADAF: FF        .byte $FF   ; 



off_ch_06_ADB0_03:
- D 1 - I - 0x002DC0 00:ADB0: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002DC2 00:ADB2: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002DC4 00:ADB4: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002DC5 00:ADB5: 80        .byte $80   ; 
- D 1 - I - 0x002DC6 00:ADB6: 0A        .byte $0A   ; 
- D 1 - I - 0x002DC7 00:ADB7: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002DC8 00:ADB8: 07        .byte $07   ; 
- D 1 - I - 0x002DC9 00:ADB9: E0        .byte con_se_cb_E0, $01   ; 
- D 1 - I - 0x002DCB 00:ADBB: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002DCD 00:ADBD: 96        .byte $96   ; 
- D 1 - I - 0x002DCE 00:ADBE: 03        .byte $03   ; 
- D 1 - I - 0x002DCF 00:ADBF: FF        .byte con_se_cb_stop   ; 



_sfx_ADC0_08_tackle:
- D 1 - I - 0x002DD0 00:ADC0: 03        .byte $03   ; 
- D 1 - I - 0x002DD1 00:ADC1: C4 AD     .word off_ch_08_ADC4_03
- D 1 - I - 0x002DD3 00:ADC3: FF        .byte $FF   ; 



off_ch_08_ADC4_03:
- D 1 - I - 0x002DD4 00:ADC4: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002DD6 00:ADC6: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002DD8 00:ADC8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002DD9 00:ADC9: 81        .byte $81   ; 
- D 1 - I - 0x002DDA 00:ADCA: 05        .byte $05   ; 
- D 1 - I - 0x002DDB 00:ADCB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002DDC 00:ADCC: 04        .byte $04   ; 
- D 1 - I - 0x002DDD 00:ADCD: 80        .byte $80   ; 
- D 1 - I - 0x002DDE 00:ADCE: 10        .byte $10   ; 
- D 1 - I - 0x002DDF 00:ADCF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002DE0 00:ADD0: 96        .byte $96   ; 
- D 1 - I - 0x002DE1 00:ADD1: 04        .byte $04   ; 
- D 1 - I - 0x002DE2 00:ADD2: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002DE3 00:ADD3: 03        .byte $03   ; 
- D 1 - I - 0x002DE4 00:ADD4: 80        .byte $80   ; 
- D 1 - I - 0x002DE5 00:ADD5: 10        .byte $10   ; 
- D 1 - I - 0x002DE6 00:ADD6: E0        .byte con_se_cb_E0, $01   ; 
- D 1 - I - 0x002DE8 00:ADD8: 88        .byte $88   ; 
- D 1 - I - 0x002DE9 00:ADD9: 07        .byte $07   ; 
- D 1 - I - 0x002DEA 00:ADDA: FF        .byte con_se_cb_stop   ; 



_sfx_ADDB_07_catch:
- D 1 - I - 0x002DEB 00:ADDB: 00        .byte $00   ; 
- D 1 - I - 0x002DEC 00:ADDC: E2 AD     .word off_ch_07_ADE2_00
- D 1 - I - 0x002DEE 00:ADDE: 03        .byte $03   ; 
- D 1 - I - 0x002DEF 00:ADDF: F3 AD     .word off_ch_07_ADF3_03
- D 1 - I - 0x002DF1 00:ADE1: FF        .byte $FF   ; 



off_ch_07_ADE2_00:
- D 1 - I - 0x002DF2 00:ADE2: E0        .byte con_se_cb_E0, $12   ; 
- D 1 - I - 0x002DF4 00:ADE4: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x002DF6 00:ADE6: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002DF8 00:ADE8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002DF9 00:ADE9: 80        .byte $80   ; 
- D 1 - I - 0x002DFA 00:ADEA: 15        .byte $15   ; 
- D 1 - I - 0x002DFB 00:ADEB: 18        .byte $18   ; 
- D 1 - I - 0x002DFC 00:ADEC: 14        .byte $14   ; 
- D 1 - I - 0x002DFD 00:ADED: 12        .byte $12   ; 
- D 1 - I - 0x002DFE 00:ADEE: 0B        .byte $0B   ; 
- D 1 - I - 0x002DFF 00:ADEF: 12        .byte $12   ; 
- D 1 - I - 0x002E00 00:ADF0: 09        .byte $09   ; 
- D 1 - I - 0x002E01 00:ADF1: 08        .byte $08   ; 
- D 1 - I - 0x002E02 00:ADF2: FF        .byte con_se_cb_stop   ; 



off_ch_07_ADF3_03:
- D 1 - I - 0x002E03 00:ADF3: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002E05 00:ADF5: E3        .byte con_se_cb_E3, $03   ; 
- D 1 - I - 0x002E07 00:ADF7: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002E08 00:ADF8: 80        .byte $80   ; 
- D 1 - I - 0x002E09 00:ADF9: 09        .byte $09   ; 
- D 1 - I - 0x002E0A 00:ADFA: 0A        .byte $0A   ; 
- D 1 - I - 0x002E0B 00:ADFB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002E0C 00:ADFC: 0B        .byte $0B   ; 
- D 1 - I - 0x002E0D 00:ADFD: 84        .byte $84   ; 
- D 1 - I - 0x002E0E 00:ADFE: 05        .byte $05   ; 
- D 1 - I - 0x002E0F 00:ADFF: FF        .byte con_se_cb_stop   ; 



_sfx_AE00_0E_fans:
- D 1 - I - 0x002E10 00:AE00: 03        .byte $03   ; 
- D 1 - I - 0x002E11 00:AE01: 04 AE     .word off_ch_0E_AE04_03
- D 1 - I - 0x002E13 00:AE03: FF        .byte $FF   ; 



off_ch_0E_AE04_03:
off_E8_AE04:
- D 1 - I - 0x002E14 00:AE04: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002E15 00:AE05: E0        .byte con_se_cb_E0, $14   ; 
- D 1 - I - 0x002E17 00:AE07: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002E19 00:AE09: 86        .byte $86   ; 
- D 1 - I - 0x002E1A 00:AE0A: 81        .byte $81   ; 
- D 1 - I - 0x002E1B 00:AE0B: 0A        .byte $0A   ; 
- D 1 - I - 0x002E1C 00:AE0C: E3        .byte con_se_cb_E3, $03   ; 
- D 1 - I - 0x002E1E 00:AE0E: 88        .byte $88   ; 
- D 1 - I - 0x002E1F 00:AE0F: 0A        .byte $0A   ; 
- D 1 - I - 0x002E20 00:AE10: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002E22 00:AE12: 85        .byte $85   ; 
- D 1 - I - 0x002E23 00:AE13: 0A        .byte $0A   ; 
- D 1 - I - 0x002E24 00:AE14: E3        .byte con_se_cb_E3, $03   ; 
- D 1 - I - 0x002E26 00:AE16: 86        .byte $86   ; 
- D 1 - I - 0x002E27 00:AE17: 81        .byte $81   ; 
- D 1 - I - 0x002E28 00:AE18: 0A        .byte $0A   ; 
- D 1 - I - 0x002E29 00:AE19: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002E2B 00:AE1B: 87        .byte $87   ; 
- D 1 - I - 0x002E2C 00:AE1C: 0A        .byte $0A   ; 
- D 1 - I - 0x002E2D 00:AE1D: E3        .byte con_se_cb_E3, $05   ; 
- D 1 - I - 0x002E2F 00:AE1F: 86        .byte $86   ; 
- D 1 - I - 0x002E30 00:AE20: 81        .byte $81   ; 
- D 1 - I - 0x002E31 00:AE21: 0A        .byte $0A   ; 
- D 1 - I - 0x002E32 00:AE22: E3        .byte con_se_cb_E3, $06   ; 
- D 1 - I - 0x002E34 00:AE24: 85        .byte $85   ; 
- D 1 - I - 0x002E35 00:AE25: 0A        .byte $0A   ; 
- D 1 - I - 0x002E36 00:AE26: E3        .byte con_se_cb_E3, $06   ; 
- D 1 - I - 0x002E38 00:AE28: 87        .byte $87   ; 
- D 1 - I - 0x002E39 00:AE29: 0A        .byte $0A   ; 
- D 1 - I - 0x002E3A 00:AE2A: E3        .byte con_se_cb_E3, $08   ; 
- D 1 - I - 0x002E3C 00:AE2C: 0A        .byte $0A   ; 
- D 1 - I - 0x002E3D 00:AE2D: E3        .byte con_se_cb_E3, $09   ; 
- D 1 - I - 0x002E3F 00:AE2F: 88        .byte $88   ; 
- D 1 - I - 0x002E40 00:AE30: 0A        .byte $0A   ; 
- D 1 - I - 0x002E41 00:AE31: E3        .byte con_se_cb_E3, $0A   ; 
- D 1 - I - 0x002E43 00:AE33: 86        .byte $86   ; 
- D 1 - I - 0x002E44 00:AE34: 81        .byte $81   ; 
- D 1 - I - 0x002E45 00:AE35: 0A        .byte $0A   ; 
- D 1 - I - 0x002E46 00:AE36: E3        .byte con_se_cb_E3, $0B   ; 
- D 1 - I - 0x002E48 00:AE38: 0A        .byte $0A   ; 
- D 1 - I - 0x002E49 00:AE39: E3        .byte con_se_cb_E3, $0C   ; 
- D 1 - I - 0x002E4B 00:AE3B: 0A        .byte $0A   ; 
- D 1 - I - 0x002E4C 00:AE3C: E3        .byte con_se_cb_E3, $0D   ; 
- D 1 - I - 0x002E4E 00:AE3E: 0A        .byte $0A   ; 
- D 1 - I - 0x002E4F 00:AE3F: E3        .byte con_se_cb_E3, $0E   ; 
- D 1 - I - 0x002E51 00:AE41: 0A        .byte $0A   ; 
- D 1 - I - 0x002E52 00:AE42: E3        .byte con_se_cb_E3, $0E   ; 
- D 1 - I - 0x002E54 00:AE44: 0A        .byte $0A   ; 
- D 1 - I - 0x002E55 00:AE45: FF        .byte con_se_cb_stop   ; 



_sfx_AE46_0D_hit_goalspot:
- D 1 - I - 0x002E56 00:AE46: 00        .byte $00   ; 
- D 1 - I - 0x002E57 00:AE47: 50 AE     .word off_ch_0D_AE50_00
- D 1 - I - 0x002E59 00:AE49: 02        .byte $02   ; 
- D 1 - I - 0x002E5A 00:AE4A: 62 AE     .word off_ch_0D_AE62_02
- D 1 - I - 0x002E5C 00:AE4C: 03        .byte $03   ; 
- D 1 - I - 0x002E5D 00:AE4D: 6D AE     .word off_ch_0D_AE6D_03
- D 1 - I - 0x002E5F 00:AE4F: FF        .byte $FF   ; 



off_ch_0D_AE50_00:
- D 1 - I - 0x002E60 00:AE50: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002E61 00:AE51: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002E63 00:AE53: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002E65 00:AE55: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002E67 00:AE57: 96        .byte $96   ; 
- D 1 - I - 0x002E68 00:AE58: 34        .byte $34   ; 
- D 1 - I - 0x002E69 00:AE59: E0        .byte con_se_cb_E0, $01   ; 
- D 1 - I - 0x002E6B 00:AE5B: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x002E6D 00:AE5D: 87        .byte $87   ; 
- D 1 - I - 0x002E6E 00:AE5E: E4        .byte con_se_cb_E4, $DD   ; 
- D 1 - I - 0x002E70 00:AE60: 36        .byte $36   ; 
- D 1 - I - 0x002E71 00:AE61: FF        .byte con_se_cb_stop   ; 



off_ch_0D_AE62_02:
- D 1 - I - 0x002E72 00:AE62: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x002E74 00:AE64: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002E76 00:AE66: 80        .byte $80   ; 
- D 1 - I - 0x002E77 00:AE67: 49        .byte $49   ; 
- D 1 - I - 0x002E78 00:AE68: 48        .byte $48   ; 
- D 1 - I - 0x002E79 00:AE69: 47        .byte $47   ; 
- D 1 - I - 0x002E7A 00:AE6A: 49        .byte $49   ; 
- D 1 - I - 0x002E7B 00:AE6B: 46        .byte $46   ; 
- D 1 - I - 0x002E7C 00:AE6C: FF        .byte con_se_cb_stop   ; 



off_ch_0D_AE6D_03:
- D 1 - I - 0x002E7D 00:AE6D: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002E7F 00:AE6F: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002E81 00:AE71: 80        .byte $80   ; 
- D 1 - I - 0x002E82 00:AE72: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002E83 00:AE73: 0E        .byte $0E   ; 
- D 1 - I - 0x002E84 00:AE74: 0D        .byte $0D   ; 
- D 1 - I - 0x002E85 00:AE75: 0C        .byte $0C   ; 
- D 1 - I - 0x002E86 00:AE76: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002E88 00:AE78: 85        .byte $85   ; 
- D 1 - I - 0x002E89 00:AE79: 01        .byte $01   ; 
- D 1 - I - 0x002E8A 00:AE7A: FF        .byte con_se_cb_stop   ; 



_sfx_AE7B_04_fast_shot:
- D 1 - I - 0x002E8B 00:AE7B: 00        .byte $00   ; 
- D 1 - I - 0x002E8C 00:AE7C: 82 AE     .word off_ch_04_AE82_00
- D 1 - I - 0x002E8E 00:AE7E: 03        .byte $03   ; 
- D 1 - I - 0x002E8F 00:AE7F: 91 AE     .word off_ch_04_AE91_03
- D 1 - I - 0x002E91 00:AE81: FF        .byte $FF   ; 



off_ch_04_AE82_00:
- D 1 - I - 0x002E92 00:AE82: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002E94 00:AE84: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002E96 00:AE86: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002E98 00:AE88: E4        .byte con_se_cb_E4, $92   ; 
- D 1 - I - 0x002E9A 00:AE8A: 82        .byte $82   ; 
- D 1 - I - 0x002E9B 00:AE8B: 24        .byte $24   ; 
- D 1 - I - 0x002E9C 00:AE8C: E4        .byte con_se_cb_E4, $82   ; 
- D 1 - I - 0x002E9E 00:AE8E: 84        .byte $84   ; 
- D 1 - I - 0x002E9F 00:AE8F: 33        .byte $33   ; 
- D 1 - I - 0x002EA0 00:AE90: FF        .byte con_se_cb_stop   ; 



off_ch_04_AE91_03:
- D 1 - I - 0x002EA1 00:AE91: E0        .byte con_se_cb_E0, $00   ; 
- D 1 - I - 0x002EA3 00:AE93: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002EA5 00:AE95: 80        .byte $80   ; 
- D 1 - I - 0x002EA6 00:AE96: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002EA7 00:AE97: 0A        .byte $0A   ; 
- D 1 - I - 0x002EA8 00:AE98: 09        .byte $09   ; 
- D 1 - I - 0x002EA9 00:AE99: 07        .byte $07   ; 
- D 1 - I - 0x002EAA 00:AE9A: 08        .byte $08   ; 
- D 1 - I - 0x002EAB 00:AE9B: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002EAD 00:AE9D: 84        .byte $84   ; 
- D 1 - I - 0x002EAE 00:AE9E: 06        .byte $06   ; 
- D 1 - I - 0x002EAF 00:AE9F: FF        .byte con_se_cb_stop   ; 



_sfx_AEA0_09:
; bzk garbage
- - - - - - 0x002EB0 00:AEA0: 00        .byte $00   ; 
- - - - - - 0x002EB1 00:AEA1: A7 AE     .word off_ch_09_AEA7_00
- - - - - - 0x002EB3 00:AEA3: 01        .byte $01   ; 
- - - - - - 0x002EB4 00:AEA4: B5 AE     .word off_ch_09_AEB5_01
- - - - - - 0x002EB6 00:AEA6: FF        .byte $FF   ; 



off_ch_09_AEA7_00:
; bzk garbage
- - - - - - 0x002EB7 00:AEA7: E0        .byte con_se_cb_E0, $19   ; 
- - - - - - 0x002EB9 00:AEA9: E2        .byte con_se_cb_E2, $80   ; 
- - - - - - 0x002EBB 00:AEAB: E3        .byte con_se_cb_E3, $00   ; 
- - - - - - 0x002EBD 00:AEAD: 96        .byte $96   ; 
- - - - - - 0x002EBE 00:AEAE: 34        .byte $34   ; 
- - - - - - 0x002EBF 00:AEAF: 31        .byte $31   ; 
- - - - - - 0x002EC0 00:AEB0: E4        .byte con_se_cb_E4, $AE   ; 
- - - - - - 0x002EC2 00:AEB2: 86        .byte $86   ; 
- - - - - - 0x002EC3 00:AEB3: 39        .byte $39   ; 
- - - - - - 0x002EC4 00:AEB4: FF        .byte con_se_cb_stop   ; 



off_ch_09_AEB5_01:
; bzk garbage
- - - - - - 0x002EC5 00:AEB5: FB        .byte con_se_cb_FB   ; 
- - - - - - 0x002EC6 00:AEB6: E0        .byte con_se_cb_E0, $19   ; 
- - - - - - 0x002EC8 00:AEB8: E2        .byte con_se_cb_E2, $80   ; 
- - - - - - 0x002ECA 00:AEBA: E3        .byte con_se_cb_E3, $04   ; 
- - - - - - 0x002ECC 00:AEBC: E5        .byte con_se_cb_E5, $85   ; 
- - - - - - 0x002ECE 00:AEBE: 82        .byte $82   ; 
- - - - - - 0x002ECF 00:AEBF: 0C        .byte $0C   ; 
- - - - - - 0x002ED0 00:AEC0: 96        .byte $96   ; 
- - - - - - 0x002ED1 00:AEC1: 34        .byte $34   ; 
- - - - - - 0x002ED2 00:AEC2: 31        .byte $31   ; 
- - - - - - 0x002ED3 00:AEC3: E4        .byte con_se_cb_E4, $AE   ; 
- - - - - - 0x002ED5 00:AEC5: 84        .byte $84   ; 
- - - - - - 0x002ED6 00:AEC6: 81        .byte $81   ; 
- - - - - - 0x002ED7 00:AEC7: 39        .byte $39   ; 
- - - - - - 0x002ED8 00:AEC8: FC        .byte con_se_cb_FC   ; 
- - - - - - 0x002ED9 00:AEC9: FF        .byte con_se_cb_stop   ; 



_sfx_AECA_0A_time_low:
- D 1 - I - 0x002EDA 00:AECA: 00        .byte $00   ; 
- D 1 - I - 0x002EDB 00:AECB: D1 AE     .word off_ch_0A_AED1_00
- D 1 - I - 0x002EDD 00:AECD: 01        .byte $01   ; 
- D 1 - I - 0x002EDE 00:AECE: DB AE     .word off_ch_0A_AEDB_01
- D 1 - I - 0x002EE0 00:AED0: FF        .byte $FF   ; 



off_ch_0A_AED1_00:
- D 1 - I - 0x002EE1 00:AED1: E0        .byte con_se_cb_E0, $1A   ; 
- D 1 - I - 0x002EE3 00:AED3: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002EE5 00:AED5: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002EE7 00:AED7: 85        .byte $85   ; 
- D 1 - I - 0x002EE8 00:AED8: 84        .byte $84   ; 
- D 1 - I - 0x002EE9 00:AED9: 32        .byte $32   ; 
- D 1 - I - 0x002EEA 00:AEDA: FF        .byte con_se_cb_stop   ; 



off_ch_0A_AEDB_01:
- D 1 - I - 0x002EEB 00:AEDB: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x002EEC 00:AEDC: E0        .byte con_se_cb_E0, $1A   ; 
- D 1 - I - 0x002EEE 00:AEDE: E3        .byte con_se_cb_E3, $03   ; 
- D 1 - I - 0x002EF0 00:AEE0: 81        .byte $81   ; 
- D 1 - I - 0x002EF1 00:AEE1: 0C        .byte $0C   ; 
- D 1 - I - 0x002EF2 00:AEE2: E5        .byte con_se_cb_E5, $81   ; 
- D 1 - I - 0x002EF4 00:AEE4: 40        .byte $40   ; 
- D 1 - I - 0x002EF5 00:AEE5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002EF6 00:AEE6: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x002EF8 00:AEE8: 96        .byte $96   ; 
- D 1 - I - 0x002EF9 00:AEE9: 32        .byte $32   ; 
- D 1 - I - 0x002EFA 00:AEEA: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002EFB 00:AEEB: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002EFD 00:AEED: 84        .byte $84   ; 
- D 1 - I - 0x002EFE 00:AEEE: 96        .byte $96   ; 
- D 1 - I - 0x002EFF 00:AEEF: 32        .byte $32   ; 
- D 1 - I - 0x002F00 00:AEF0: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002F01 00:AEF1: FF        .byte con_se_cb_stop   ; 



_sfx_AEF2_0B_time_up:
- D 1 - I - 0x002F02 00:AEF2: 00        .byte $00   ; 
- D 1 - I - 0x002F03 00:AEF3: 05 AF     .word off_ch_0B_AF05_00
- D 1 - I - 0x002F05 00:AEF5: 01        .byte $01   ; 
- D 1 - I - 0x002F06 00:AEF6: 0E AF     .word off_ch_0B_AF0E_01
- D 1 - I - 0x002F08 00:AEF8: 04        .byte $04   ; 
- D 1 - I - 0x002F09 00:AEF9: 04 AF     .word off_ch_0B_AF04_04
- D 1 - I - 0x002F0B 00:AEFB: 05        .byte $05   ; 
- D 1 - I - 0x002F0C 00:AEFC: 04 AF     .word off_ch_0B_AF04_05
- D 1 - I - 0x002F0E 00:AEFE: 06        .byte $06   ; 
- D 1 - I - 0x002F0F 00:AEFF: 04 AF     .word off_ch_0B_AF04_06
- D 1 - I - 0x002F11 00:AF01: 07        .byte $07   ; 
- D 1 - I - 0x002F12 00:AF02: 04 AF     .word off_ch_0B_AF04_07



off_ch_0B_AF04_04:
off_ch_0B_AF04_05:
off_ch_0B_AF04_06:
off_ch_0B_AF04_07:
- D 1 - I - 0x002F14 00:AF04: FF        .byte con_se_cb_stop   ; 



off_ch_0B_AF05_00:
- D 1 - I - 0x002F15 00:AF05: E0        .byte con_se_cb_E0, $1B   ; 
- D 1 - I - 0x002F17 00:AF07: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002F19 00:AF09: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002F1B 00:AF0B: 89        .byte $89   ; 
- D 1 - I - 0x002F1C 00:AF0C: 42        .byte $42   ; 
- D 1 - I - 0x002F1D 00:AF0D: FF        .byte con_se_cb_stop   ; 



off_ch_0B_AF0E_01:
- D 1 - I - 0x002F1E 00:AF0E: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x002F1F 00:AF0F: E0        .byte con_se_cb_E0, $1B   ; 
- D 1 - I - 0x002F21 00:AF11: E3        .byte con_se_cb_E3, $03   ; 
- D 1 - I - 0x002F23 00:AF13: 81        .byte $81   ; 
- D 1 - I - 0x002F24 00:AF14: 0C        .byte $0C   ; 
- D 1 - I - 0x002F25 00:AF15: E5        .byte con_se_cb_E5, $01   ; 
- D 1 - I - 0x002F27 00:AF17: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x002F28 00:AF18: E2        .byte con_se_cb_E2, $00   ; 
- D 1 - I - 0x002F2A 00:AF1A: 96        .byte $96   ; 
- D 1 - I - 0x002F2B 00:AF1B: 42        .byte $42   ; 
- D 1 - I - 0x002F2C 00:AF1C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x002F2D 00:AF1D: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002F2F 00:AF1F: 98        .byte $98   ; 
- D 1 - I - 0x002F30 00:AF20: 42        .byte $42   ; 
- D 1 - I - 0x002F31 00:AF21: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002F32 00:AF22: FF        .byte con_se_cb_stop   ; 



_sfx_AF23_0C_whistle_referee:
- D 1 - I - 0x002F33 00:AF23: 00        .byte $00   ; 
- D 1 - I - 0x002F34 00:AF24: 2A AF     .word off_ch_0C_AF2A_00
- D 1 - I - 0x002F36 00:AF26: 01        .byte $01   ; 
- D 1 - I - 0x002F37 00:AF27: 35 AF     .word off_ch_0C_AF35_01
- D 1 - I - 0x002F39 00:AF29: FF        .byte $FF   ; 



off_ch_0C_AF2A_00:
- D 1 - I - 0x002F3A 00:AF2A: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x002F3C 00:AF2C: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x002F3E 00:AF2E: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002F40 00:AF30: ED        .byte con_se_cb_ED, $00   ; 
- D 1 - I - 0x002F42 00:AF32: 86        .byte $86   ; 
- D 1 - I - 0x002F43 00:AF33: 4B        .byte $4B   ; 
- D 1 - I - 0x002F44 00:AF34: FF        .byte con_se_cb_stop   ; 



off_ch_0C_AF35_01:
- D 1 - I - 0x002F45 00:AF35: FB        .byte con_se_cb_FB   ; 
- D 1 - I - 0x002F46 00:AF36: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x002F48 00:AF38: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x002F4A 00:AF3A: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002F4C 00:AF3C: ED        .byte con_se_cb_ED, $02   ; 
- D 1 - I - 0x002F4E 00:AF3E: 86        .byte $86   ; 
- D 1 - I - 0x002F4F 00:AF3F: 82        .byte $82   ; 
- D 1 - I - 0x002F50 00:AF40: 50        .byte $50   ; 
- D 1 - I - 0x002F51 00:AF41: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002F52 00:AF42: FF        .byte con_se_cb_stop   ; 



_music_AF43_14_game_number:
- D 1 - I - 0x002F53 00:AF43: 04        .byte $04   ; 
- D 1 - I - 0x002F54 00:AF44: 50 AF     .word off_ch_14_AF50_04
- D 1 - I - 0x002F56 00:AF46: 05        .byte $05   ; 
- D 1 - I - 0x002F57 00:AF47: 87 AF     .word off_ch_14_AF87_05
- D 1 - I - 0x002F59 00:AF49: 06        .byte $06   ; 
- D 1 - I - 0x002F5A 00:AF4A: BF AF     .word off_ch_14_AFBF_06
- D 1 - I - 0x002F5C 00:AF4C: 07        .byte $07   ; 
- D 1 - I - 0x002F5D 00:AF4D: E0 AF     .word off_ch_14_AFE0_07
- D 1 - I - 0x002F5F 00:AF4F: FF        .byte $FF   ; 



off_ch_14_AF50_04:
- D 1 - I - 0x002F60 00:AF50: FC        .byte con_se_cb_FC   ; 
- D 1 - I - 0x002F61 00:AF51: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x002F63 00:AF53: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x002F65 00:AF55: E3        .byte con_se_cb_E3, $05   ; 
- D 1 - I - 0x002F67 00:AF57: E0        .byte con_se_cb_E0, $03   ; 
- D 1 - I - 0x002F69 00:AF59: 87        .byte $87   ; 
- D 1 - I - 0x002F6A 00:AF5A: 83        .byte $83   ; 
- D 1 - I - 0x002F6B 00:AF5B: 37        .byte $37   ; 
- D 1 - I - 0x002F6C 00:AF5C: 37        .byte $37   ; 
- D 1 - I - 0x002F6D 00:AF5D: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002F6F 00:AF5F: E0        .byte con_se_cb_E0, $02   ; 
- D 1 - I - 0x002F71 00:AF61: 86        .byte $86   ; 
- D 1 - I - 0x002F72 00:AF62: 82        .byte $82   ; 
- D 1 - I - 0x002F73 00:AF63: 37        .byte $37   ; 
- D 1 - I - 0x002F74 00:AF64: E0        .byte con_se_cb_E0, $03   ; 
- D 1 - I - 0x002F76 00:AF66: 87        .byte $87   ; 
- D 1 - I - 0x002F77 00:AF67: 83        .byte $83   ; 
- D 1 - I - 0x002F78 00:AF68: 36        .byte $36   ; 
- D 1 - I - 0x002F79 00:AF69: 36        .byte $36   ; 
- D 1 - I - 0x002F7A 00:AF6A: E0        .byte con_se_cb_E0, $02   ; 
- D 1 - I - 0x002F7C 00:AF6C: 86        .byte $86   ; 
- D 1 - I - 0x002F7D 00:AF6D: 82        .byte $82   ; 
- D 1 - I - 0x002F7E 00:AF6E: 36        .byte $36   ; 
- D 1 - I - 0x002F7F 00:AF6F: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x002F81 00:AF71: E0        .byte con_se_cb_E0, $02   ; 
- D 1 - I - 0x002F83 00:AF73: 84        .byte $84   ; 
- D 1 - I - 0x002F84 00:AF74: 81        .byte $81   ; 
- D 1 - I - 0x002F85 00:AF75: 37        .byte $37   ; 
- D 1 - I - 0x002F86 00:AF76: 87        .byte $87   ; 
- D 1 - I - 0x002F87 00:AF77: 83        .byte $83   ; 
- D 1 - I - 0x002F88 00:AF78: 37        .byte $37   ; 
- D 1 - I - 0x002F89 00:AF79: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002F8B 00:AF7B: 84        .byte $84   ; 
- D 1 - I - 0x002F8C 00:AF7C: 81        .byte $81   ; 
- D 1 - I - 0x002F8D 00:AF7D: 39        .byte $39   ; 
- D 1 - I - 0x002F8E 00:AF7E: 86        .byte $86   ; 
- D 1 - I - 0x002F8F 00:AF7F: 82        .byte $82   ; 
- D 1 - I - 0x002F90 00:AF80: 39        .byte $39   ; 
- D 1 - I - 0x002F91 00:AF81: E0        .byte con_se_cb_E0, $04   ; 
- D 1 - I - 0x002F93 00:AF83: 8A        .byte $8A   ; 
- D 1 - I - 0x002F94 00:AF84: 86        .byte $86   ; 
- D 1 - I - 0x002F95 00:AF85: 37        .byte $37   ; 
- D 1 - I - 0x002F96 00:AF86: FF        .byte con_se_cb_stop   ; 



off_ch_14_AF87_05:
- D 1 - I - 0x002F97 00:AF87: 81        .byte $81   ; 
- D 1 - I - 0x002F98 00:AF88: 0C        .byte $0C   ; 
- D 1 - I - 0x002F99 00:AF89: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x002F9B 00:AF8B: ED        .byte con_se_cb_ED, $0C   ; 
- D 1 - I - 0x002F9D 00:AF8D: E3        .byte con_se_cb_E3, $05   ; 
- D 1 - I - 0x002F9F 00:AF8F: E0        .byte con_se_cb_E0, $03   ; 
- D 1 - I - 0x002FA1 00:AF91: 87        .byte $87   ; 
- D 1 - I - 0x002FA2 00:AF92: 83        .byte $83   ; 
- D 1 - I - 0x002FA3 00:AF93: 34        .byte $34   ; 
- D 1 - I - 0x002FA4 00:AF94: 34        .byte $34   ; 
- D 1 - I - 0x002FA5 00:AF95: E3        .byte con_se_cb_E3, $04   ; 
- D 1 - I - 0x002FA7 00:AF97: E0        .byte con_se_cb_E0, $02   ; 
- D 1 - I - 0x002FA9 00:AF99: 86        .byte $86   ; 
- D 1 - I - 0x002FAA 00:AF9A: 82        .byte $82   ; 
- D 1 - I - 0x002FAB 00:AF9B: 34        .byte $34   ; 
- D 1 - I - 0x002FAC 00:AF9C: E0        .byte con_se_cb_E0, $03   ; 
- D 1 - I - 0x002FAE 00:AF9E: 87        .byte $87   ; 
- D 1 - I - 0x002FAF 00:AF9F: 83        .byte $83   ; 
- D 1 - I - 0x002FB0 00:AFA0: 32        .byte $32   ; 
- D 1 - I - 0x002FB1 00:AFA1: 32        .byte $32   ; 
- D 1 - I - 0x002FB2 00:AFA2: E0        .byte con_se_cb_E0, $02   ; 
- D 1 - I - 0x002FB4 00:AFA4: 86        .byte $86   ; 
- D 1 - I - 0x002FB5 00:AFA5: 82        .byte $82   ; 
- D 1 - I - 0x002FB6 00:AFA6: 32        .byte $32   ; 
- D 1 - I - 0x002FB7 00:AFA7: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x002FB9 00:AFA9: E0        .byte con_se_cb_E0, $02   ; 
- D 1 - I - 0x002FBB 00:AFAB: 84        .byte $84   ; 
- D 1 - I - 0x002FBC 00:AFAC: 81        .byte $81   ; 
- D 1 - I - 0x002FBD 00:AFAD: 32        .byte $32   ; 
- D 1 - I - 0x002FBE 00:AFAE: 87        .byte $87   ; 
- D 1 - I - 0x002FBF 00:AFAF: 83        .byte $83   ; 
- D 1 - I - 0x002FC0 00:AFB0: 32        .byte $32   ; 
- D 1 - I - 0x002FC1 00:AFB1: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x002FC3 00:AFB3: 84        .byte $84   ; 
- D 1 - I - 0x002FC4 00:AFB4: 81        .byte $81   ; 
- D 1 - I - 0x002FC5 00:AFB5: 36        .byte $36   ; 
- D 1 - I - 0x002FC6 00:AFB6: 86        .byte $86   ; 
- D 1 - I - 0x002FC7 00:AFB7: 82        .byte $82   ; 
- D 1 - I - 0x002FC8 00:AFB8: 36        .byte $36   ; 
- D 1 - I - 0x002FC9 00:AFB9: E0        .byte con_se_cb_E0, $04   ; 
- D 1 - I - 0x002FCB 00:AFBB: 8A        .byte $8A   ; 
- D 1 - I - 0x002FCC 00:AFBC: 86        .byte $86   ; 
- D 1 - I - 0x002FCD 00:AFBD: 32        .byte $32   ; 
- D 1 - I - 0x002FCE 00:AFBE: FF        .byte con_se_cb_stop   ; 



off_ch_14_AFBF_06:
- D 1 - I - 0x002FCF 00:AFBF: E0        .byte con_se_cb_E0, $22   ; 
- D 1 - I - 0x002FD1 00:AFC1: 84        .byte $84   ; 
- D 1 - I - 0x002FD2 00:AFC2: 81        .byte $81   ; 
- D 1 - I - 0x002FD3 00:AFC3: 20        .byte $20   ; 
- D 1 - I - 0x002FD4 00:AFC4: 20        .byte $20   ; 
- D 1 - I - 0x002FD5 00:AFC5: 24        .byte $24   ; 
- D 1 - I - 0x002FD6 00:AFC6: 20        .byte $20   ; 
- D 1 - I - 0x002FD7 00:AFC7: 27        .byte $27   ; 
- D 1 - I - 0x002FD8 00:AFC8: 26        .byte $26   ; 
- D 1 - I - 0x002FD9 00:AFC9: 24        .byte $24   ; 
- D 1 - I - 0x002FDA 00:AFCA: 20        .byte $20   ; 
- D 1 - I - 0x002FDB 00:AFCB: 22        .byte $22   ; 
- D 1 - I - 0x002FDC 00:AFCC: 22        .byte $22   ; 
- D 1 - I - 0x002FDD 00:AFCD: 26        .byte $26   ; 
- D 1 - I - 0x002FDE 00:AFCE: 22        .byte $22   ; 
- D 1 - I - 0x002FDF 00:AFCF: 29        .byte $29   ; 
- D 1 - I - 0x002FE0 00:AFD0: 27        .byte $27   ; 
- D 1 - I - 0x002FE1 00:AFD1: 26        .byte $26   ; 
- D 1 - I - 0x002FE2 00:AFD2: 22        .byte $22   ; 
- D 1 - I - 0x002FE3 00:AFD3: 24        .byte $24   ; 
- D 1 - I - 0x002FE4 00:AFD4: 24        .byte $24   ; 
- D 1 - I - 0x002FE5 00:AFD5: 0C        .byte $0C   ; 
- D 1 - I - 0x002FE6 00:AFD6: 0C        .byte $0C   ; 
- D 1 - I - 0x002FE7 00:AFD7: 22        .byte $22   ; 
- D 1 - I - 0x002FE8 00:AFD8: 22        .byte $22   ; 
- D 1 - I - 0x002FE9 00:AFD9: 0C        .byte $0C   ; 
- D 1 - I - 0x002FEA 00:AFDA: E0        .byte con_se_cb_E0, $1C   ; 
- D 1 - I - 0x002FEC 00:AFDC: 8A        .byte $8A   ; 
- D 1 - I - 0x002FED 00:AFDD: 83        .byte $83   ; 
- D 1 - I - 0x002FEE 00:AFDE: 20        .byte $20   ; 
- D 1 - I - 0x002FEF 00:AFDF: FF        .byte con_se_cb_stop   ; 



off_ch_14_AFE0_07:
- D 1 - I - 0x002FF0 00:AFE0: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x002FF2 00:AFE2: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x002FF4 00:AFE4: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x002FF6 00:AFE6: 84        .byte $84   ; 
- D 1 - I - 0x002FF7 00:AFE7: 81        .byte $81   ; 
- D 1 - I - 0x002FF8 00:AFE8: 03        .byte $03   ; 
- D 1 - I - 0x002FF9 00:AFE9: 03        .byte $03   ; 
- D 1 - I - 0x002FFA 00:AFEA: E0        .byte con_se_cb_E0, $0F   ; 
- D 1 - I - 0x002FFC 00:AFEC: 86        .byte $86   ; 
- D 1 - I - 0x002FFD 00:AFED: 82        .byte $82   ; 
- D 1 - I - 0x002FFE 00:AFEE: 05        .byte $05   ; 
- D 1 - I - 0x002FFF 00:AFEF: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003000 00:AFF0: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003002 00:AFF2: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003004 00:AFF4: 84        .byte $84   ; 
- D 1 - I - 0x003005 00:AFF5: 81        .byte $81   ; 
- D 1 - I - 0x003006 00:AFF6: 03        .byte $03   ; 
- D 1 - I - 0x003007 00:AFF7: 03        .byte $03   ; 
- D 1 - I - 0x003008 00:AFF8: E0        .byte con_se_cb_E0, $0F   ; 
- D 1 - I - 0x00300A 00:AFFA: 86        .byte $86   ; 
- D 1 - I - 0x00300B 00:AFFB: 82        .byte $82   ; 
- D 1 - I - 0x00300C 00:AFFC: 05        .byte $05   ; 
- D 1 - I - 0x00300D 00:AFFD: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x00300E 00:AFFE: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x003010 00:B000: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003012 00:B002: 84        .byte $84   ; 
- D 1 - I - 0x003013 00:B003: 81        .byte $81   ; 
- D 1 - I - 0x003014 00:B004: 0A        .byte $0A   ; 
- D 1 - I - 0x003015 00:B005: 87        .byte $87   ; 
- D 1 - I - 0x003016 00:B006: 83        .byte $83   ; 
- D 1 - I - 0x003017 00:B007: 0A        .byte $0A   ; 
- D 1 - I - 0x003018 00:B008: 84        .byte $84   ; 
- D 1 - I - 0x003019 00:B009: 81        .byte $81   ; 
- D 1 - I - 0x00301A 00:B00A: 0A        .byte $0A   ; 
- D 1 - I - 0x00301B 00:B00B: 86        .byte $86   ; 
- D 1 - I - 0x00301C 00:B00C: 82        .byte $82   ; 
- D 1 - I - 0x00301D 00:B00D: 0A        .byte $0A   ; 
- D 1 - I - 0x00301E 00:B00E: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003020 00:B010: 8A        .byte $8A   ; 
- D 1 - I - 0x003021 00:B011: 07        .byte $07   ; 
- D 1 - I - 0x003022 00:B012: FF        .byte con_se_cb_stop   ; 



_music_B013_10_field:
- D 1 - I - 0x003023 00:B013: 04        .byte $04   ; 
- D 1 - I - 0x003024 00:B014: 20 B0     .word off_ch_10_B020_04
- D 1 - I - 0x003026 00:B016: 05        .byte $05   ; 
- D 1 - I - 0x003027 00:B017: E8 B3     .word off_ch_10_B3E8_05
- D 1 - I - 0x003029 00:B019: 06        .byte $06   ; 
- D 1 - I - 0x00302A 00:B01A: AD B7     .word off_ch_10_B7AD_06
- D 1 - I - 0x00302C 00:B01C: 07        .byte $07   ; 
- D 1 - I - 0x00302D 00:B01D: 08 BB     .word off_ch_10_BB08_07
- D 1 - I - 0x00302F 00:B01F: FF        .byte $FF   ; 



off_ch_10_B020_04:
- D 1 - I - 0x003030 00:B020: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x003032 00:B022: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x003034 00:B024: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x003036 00:B026: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x003038 00:B028: 85        .byte $85   ; 
- D 1 - I - 0x003039 00:B029: 0C        .byte $0C   ; 
- D 1 - I - 0x00303A 00:B02A: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x00303C 00:B02C: 85        .byte $85   ; 
- D 1 - I - 0x00303D 00:B02D: 34        .byte $34   ; 
- D 1 - I - 0x00303E 00:B02E: 85        .byte $85   ; 
- D 1 - I - 0x00303F 00:B02F: 2B        .byte $2B   ; 
- D 1 - I - 0x003040 00:B030: 0C        .byte $0C   ; 
- D 1 - I - 0x003041 00:B031: 34        .byte $34   ; 
- D 1 - I - 0x003042 00:B032: 83        .byte $83   ; 
- D 1 - I - 0x003043 00:B033: 34        .byte $34   ; 
- D 1 - I - 0x003044 00:B034: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003046 00:B036: 85        .byte $85   ; 
- D 1 - I - 0x003047 00:B037: 83        .byte $83   ; 
- D 1 - I - 0x003048 00:B038: 2B        .byte $2B   ; 
- D 1 - I - 0x003049 00:B039: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x00304B 00:B03B: 85        .byte $85   ; 
- D 1 - I - 0x00304C 00:B03C: 34        .byte $34   ; 
- D 1 - I - 0x00304D 00:B03D: EC        .byte con_se_cb_EC   ; 
off_E8_B03E:
- D 1 - I - 0x00304E 00:B03E: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00304F 00:B03F: BC B2     .word ofs_E9_B2BC
- D 1 - I - 0x003051 00:B041: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003053 00:B043: 85        .byte $85   ; 
- D 1 - I - 0x003054 00:B044: 0C        .byte $0C   ; 
- D 1 - I - 0x003055 00:B045: 34        .byte $34   ; 
- D 1 - I - 0x003056 00:B046: 32        .byte $32   ; 
- D 1 - I - 0x003057 00:B047: 0C        .byte $0C   ; 
- D 1 - I - 0x003058 00:B048: 34        .byte $34   ; 
- D 1 - I - 0x003059 00:B049: 83        .byte $83   ; 
- D 1 - I - 0x00305A 00:B04A: 34        .byte $34   ; 
- D 1 - I - 0x00305B 00:B04B: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x00305D 00:B04D: 85        .byte $85   ; 
- D 1 - I - 0x00305E 00:B04E: 83        .byte $83   ; 
- D 1 - I - 0x00305F 00:B04F: 2B        .byte $2B   ; 
- D 1 - I - 0x003060 00:B050: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003062 00:B052: 85        .byte $85   ; 
- D 1 - I - 0x003063 00:B053: 34        .byte $34   ; 
- D 1 - I - 0x003064 00:B054: E0        .byte con_se_cb_E0, $17   ; 
- D 1 - I - 0x003066 00:B056: 85        .byte $85   ; 
- D 1 - I - 0x003067 00:B057: 0C        .byte $0C   ; 
- D 1 - I - 0x003068 00:B058: 34        .byte $34   ; 
- D 1 - I - 0x003069 00:B059: 2B        .byte $2B   ; 
- D 1 - I - 0x00306A 00:B05A: 0C        .byte $0C   ; 
- D 1 - I - 0x00306B 00:B05B: 34        .byte $34   ; 
- D 1 - I - 0x00306C 00:B05C: 83        .byte $83   ; 
- D 1 - I - 0x00306D 00:B05D: 34        .byte $34   ; 
- D 1 - I - 0x00306E 00:B05E: 85        .byte $85   ; 
- D 1 - I - 0x00306F 00:B05F: 83        .byte $83   ; 
- D 1 - I - 0x003070 00:B060: 2B        .byte $2B   ; 
- D 1 - I - 0x003071 00:B061: 85        .byte $85   ; 
- D 1 - I - 0x003072 00:B062: 34        .byte $34   ; 
- D 1 - I - 0x003073 00:B063: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x003074 00:B064: BC B2     .word ofs_E9_B2BC
- D 1 - I - 0x003076 00:B066: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003078 00:B068: 85        .byte $85   ; 
- D 1 - I - 0x003079 00:B069: 0C        .byte $0C   ; 
- D 1 - I - 0x00307A 00:B06A: 34        .byte $34   ; 
- D 1 - I - 0x00307B 00:B06B: 2B        .byte $2B   ; 
- D 1 - I - 0x00307C 00:B06C: 0C        .byte $0C   ; 
- D 1 - I - 0x00307D 00:B06D: 34        .byte $34   ; 
- D 1 - I - 0x00307E 00:B06E: 83        .byte $83   ; 
- D 1 - I - 0x00307F 00:B06F: 34        .byte $34   ; 
- D 1 - I - 0x003080 00:B070: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003082 00:B072: 85        .byte $85   ; 
- D 1 - I - 0x003083 00:B073: 83        .byte $83   ; 
- D 1 - I - 0x003084 00:B074: 2B        .byte $2B   ; 
- D 1 - I - 0x003085 00:B075: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003087 00:B077: 85        .byte $85   ; 
- D 1 - I - 0x003088 00:B078: 34        .byte $34   ; 
- D 1 - I - 0x003089 00:B079: E0        .byte con_se_cb_E0, $17   ; 
- D 1 - I - 0x00308B 00:B07B: 85        .byte $85   ; 
- D 1 - I - 0x00308C 00:B07C: 0C        .byte $0C   ; 
- D 1 - I - 0x00308D 00:B07D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00308E 00:B07E: 34        .byte $34   ; 
- D 1 - I - 0x00308F 00:B07F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003090 00:B080: 34        .byte $34   ; 
- D 1 - I - 0x003091 00:B081: 0C        .byte $0C   ; 
- D 1 - I - 0x003092 00:B082: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003093 00:B083: 38        .byte $38   ; 
- D 1 - I - 0x003094 00:B084: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003095 00:B085: 83        .byte $83   ; 
- D 1 - I - 0x003096 00:B086: 38        .byte $38   ; 
- D 1 - I - 0x003097 00:B087: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003098 00:B088: 85        .byte $85   ; 
- D 1 - I - 0x003099 00:B089: 83        .byte $83   ; 
- D 1 - I - 0x00309A 00:B08A: 34        .byte $34   ; 
- D 1 - I - 0x00309B 00:B08B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00309C 00:B08C: 85        .byte $85   ; 
- D 1 - I - 0x00309D 00:B08D: 38        .byte $38   ; 
- D 1 - I - 0x00309E 00:B08E: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x0030A0 00:B090: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x0030A2 00:B092: 96        .byte $96   ; 
- D 1 - I - 0x0030A3 00:B093: 0C        .byte $0C   ; 
- D 1 - I - 0x0030A4 00:B094: E5        .byte con_se_cb_E5, $01   ; 
- D 1 - I - 0x0030A6 00:B096: E3        .byte con_se_cb_E3, $05   ; 
- D 1 - I - 0x0030A8 00:B098: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0030AA 00:B09A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030AB 00:B09B: 83        .byte $83   ; 
- D 1 - I - 0x0030AC 00:B09C: 40        .byte $40   ; 
- D 1 - I - 0x0030AD 00:B09D: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030AF 00:B09F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030B0 00:B0A0: 85        .byte $85   ; 
- D 1 - I - 0x0030B1 00:B0A1: 40        .byte $40   ; 
- D 1 - I - 0x0030B2 00:B0A2: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030B3 00:B0A3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030B4 00:B0A4: 83        .byte $83   ; 
- D 1 - I - 0x0030B5 00:B0A5: 3B        .byte $3B   ; 
- D 1 - I - 0x0030B6 00:B0A6: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030B8 00:B0A8: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030B9 00:B0A9: 85        .byte $85   ; 
- D 1 - I - 0x0030BA 00:B0AA: 3B        .byte $3B   ; 
- D 1 - I - 0x0030BB 00:B0AB: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030BC 00:B0AC: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030BD 00:B0AD: 83        .byte $83   ; 
- D 1 - I - 0x0030BE 00:B0AE: 40        .byte $40   ; 
- D 1 - I - 0x0030BF 00:B0AF: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030C1 00:B0B1: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030C2 00:B0B2: 85        .byte $85   ; 
- D 1 - I - 0x0030C3 00:B0B3: 40        .byte $40   ; 
- D 1 - I - 0x0030C4 00:B0B4: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030C5 00:B0B5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030C6 00:B0B6: 83        .byte $83   ; 
- D 1 - I - 0x0030C7 00:B0B7: 3B        .byte $3B   ; 
- D 1 - I - 0x0030C8 00:B0B8: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030CA 00:B0BA: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030CB 00:B0BB: 85        .byte $85   ; 
- D 1 - I - 0x0030CC 00:B0BC: 3B        .byte $3B   ; 
- D 1 - I - 0x0030CD 00:B0BD: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030CE 00:B0BE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030CF 00:B0BF: 83        .byte $83   ; 
- D 1 - I - 0x0030D0 00:B0C0: 40        .byte $40   ; 
- D 1 - I - 0x0030D1 00:B0C1: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030D3 00:B0C3: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030D4 00:B0C4: 40        .byte $40   ; 
- D 1 - I - 0x0030D5 00:B0C5: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030D6 00:B0C6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030D7 00:B0C7: 83        .byte $83   ; 
- D 1 - I - 0x0030D8 00:B0C8: 3B        .byte $3B   ; 
- D 1 - I - 0x0030D9 00:B0C9: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030DB 00:B0CB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030DC 00:B0CC: 3B        .byte $3B   ; 
- D 1 - I - 0x0030DD 00:B0CD: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0030DF 00:B0CF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030E0 00:B0D0: 83        .byte $83   ; 
- D 1 - I - 0x0030E1 00:B0D1: 40        .byte $40   ; 
- D 1 - I - 0x0030E2 00:B0D2: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030E4 00:B0D4: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030E5 00:B0D5: 85        .byte $85   ; 
- D 1 - I - 0x0030E6 00:B0D6: 40        .byte $40   ; 
- D 1 - I - 0x0030E7 00:B0D7: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030E8 00:B0D8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030E9 00:B0D9: 83        .byte $83   ; 
- D 1 - I - 0x0030EA 00:B0DA: 3B        .byte $3B   ; 
- D 1 - I - 0x0030EB 00:B0DB: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030ED 00:B0DD: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030EE 00:B0DE: 85        .byte $85   ; 
- D 1 - I - 0x0030EF 00:B0DF: 3B        .byte $3B   ; 
- D 1 - I - 0x0030F0 00:B0E0: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030F1 00:B0E1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030F2 00:B0E2: 83        .byte $83   ; 
- D 1 - I - 0x0030F3 00:B0E3: 40        .byte $40   ; 
- D 1 - I - 0x0030F4 00:B0E4: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030F6 00:B0E6: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0030F7 00:B0E7: 85        .byte $85   ; 
- D 1 - I - 0x0030F8 00:B0E8: 40        .byte $40   ; 
- D 1 - I - 0x0030F9 00:B0E9: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0030FA 00:B0EA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0030FB 00:B0EB: 83        .byte $83   ; 
- D 1 - I - 0x0030FC 00:B0EC: 3B        .byte $3B   ; 
- D 1 - I - 0x0030FD 00:B0ED: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0030FF 00:B0EF: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003100 00:B0F0: 85        .byte $85   ; 
- D 1 - I - 0x003101 00:B0F1: 3B        .byte $3B   ; 
- D 1 - I - 0x003102 00:B0F2: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003103 00:B0F3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003104 00:B0F4: 83        .byte $83   ; 
- D 1 - I - 0x003105 00:B0F5: 42        .byte $42   ; 
- D 1 - I - 0x003106 00:B0F6: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003108 00:B0F8: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003109 00:B0F9: 42        .byte $42   ; 
- D 1 - I - 0x00310A 00:B0FA: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00310B 00:B0FB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00310C 00:B0FC: 83        .byte $83   ; 
- D 1 - I - 0x00310D 00:B0FD: 3B        .byte $3B   ; 
- D 1 - I - 0x00310E 00:B0FE: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003110 00:B100: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003111 00:B101: 3B        .byte $3B   ; 
- D 1 - I - 0x003112 00:B102: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x003114 00:B104: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003115 00:B105: 83        .byte $83   ; 
- D 1 - I - 0x003116 00:B106: 40        .byte $40   ; 
- D 1 - I - 0x003117 00:B107: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003119 00:B109: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00311A 00:B10A: 85        .byte $85   ; 
- D 1 - I - 0x00311B 00:B10B: 40        .byte $40   ; 
- D 1 - I - 0x00311C 00:B10C: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00311D 00:B10D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00311E 00:B10E: 83        .byte $83   ; 
- D 1 - I - 0x00311F 00:B10F: 3B        .byte $3B   ; 
- D 1 - I - 0x003120 00:B110: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003122 00:B112: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003123 00:B113: 85        .byte $85   ; 
- D 1 - I - 0x003124 00:B114: 3B        .byte $3B   ; 
- D 1 - I - 0x003125 00:B115: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003126 00:B116: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003127 00:B117: 83        .byte $83   ; 
- D 1 - I - 0x003128 00:B118: 40        .byte $40   ; 
- D 1 - I - 0x003129 00:B119: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00312B 00:B11B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00312C 00:B11C: 85        .byte $85   ; 
- D 1 - I - 0x00312D 00:B11D: 40        .byte $40   ; 
- D 1 - I - 0x00312E 00:B11E: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00312F 00:B11F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003130 00:B120: 83        .byte $83   ; 
- D 1 - I - 0x003131 00:B121: 3B        .byte $3B   ; 
- D 1 - I - 0x003132 00:B122: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003134 00:B124: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003135 00:B125: 85        .byte $85   ; 
- D 1 - I - 0x003136 00:B126: 3B        .byte $3B   ; 
- D 1 - I - 0x003137 00:B127: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003138 00:B128: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003139 00:B129: 83        .byte $83   ; 
- D 1 - I - 0x00313A 00:B12A: 40        .byte $40   ; 
- D 1 - I - 0x00313B 00:B12B: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00313D 00:B12D: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00313E 00:B12E: 40        .byte $40   ; 
- D 1 - I - 0x00313F 00:B12F: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003140 00:B130: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003141 00:B131: 83        .byte $83   ; 
- D 1 - I - 0x003142 00:B132: 3B        .byte $3B   ; 
- D 1 - I - 0x003143 00:B133: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003145 00:B135: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003146 00:B136: 3B        .byte $3B   ; 
- D 1 - I - 0x003147 00:B137: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x003149 00:B139: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00314A 00:B13A: 83        .byte $83   ; 
- D 1 - I - 0x00314B 00:B13B: 40        .byte $40   ; 
- D 1 - I - 0x00314C 00:B13C: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00314E 00:B13E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00314F 00:B13F: 85        .byte $85   ; 
- D 1 - I - 0x003150 00:B140: 40        .byte $40   ; 
- D 1 - I - 0x003151 00:B141: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003152 00:B142: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003153 00:B143: 83        .byte $83   ; 
- D 1 - I - 0x003154 00:B144: 3B        .byte $3B   ; 
- D 1 - I - 0x003155 00:B145: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003157 00:B147: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003158 00:B148: 85        .byte $85   ; 
- D 1 - I - 0x003159 00:B149: 3B        .byte $3B   ; 
- D 1 - I - 0x00315A 00:B14A: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00315B 00:B14B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00315C 00:B14C: 83        .byte $83   ; 
- D 1 - I - 0x00315D 00:B14D: 40        .byte $40   ; 
- D 1 - I - 0x00315E 00:B14E: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003160 00:B150: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003161 00:B151: 85        .byte $85   ; 
- D 1 - I - 0x003162 00:B152: 40        .byte $40   ; 
- D 1 - I - 0x003163 00:B153: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003164 00:B154: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003165 00:B155: 83        .byte $83   ; 
- D 1 - I - 0x003166 00:B156: 3B        .byte $3B   ; 
- D 1 - I - 0x003167 00:B157: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003169 00:B159: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00316A 00:B15A: 85        .byte $85   ; 
- D 1 - I - 0x00316B 00:B15B: 3B        .byte $3B   ; 
- D 1 - I - 0x00316C 00:B15C: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00316D 00:B15D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00316E 00:B15E: 83        .byte $83   ; 
- D 1 - I - 0x00316F 00:B15F: 40        .byte $40   ; 
- D 1 - I - 0x003170 00:B160: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003172 00:B162: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003173 00:B163: 40        .byte $40   ; 
- D 1 - I - 0x003174 00:B164: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003175 00:B165: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003176 00:B166: 83        .byte $83   ; 
- D 1 - I - 0x003177 00:B167: 42        .byte $42   ; 
- D 1 - I - 0x003178 00:B168: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00317A 00:B16A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00317B 00:B16B: 96        .byte $96   ; 
- D 1 - I - 0x00317C 00:B16C: 42        .byte $42   ; 
- D 1 - I - 0x00317D 00:B16D: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x00317F 00:B16F: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x003181 00:B171: E5        .byte con_se_cb_E5, $00   ; 
- D 1 - I - 0x003183 00:B173: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x003185 00:B175: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003186 00:B176: 83        .byte $83   ; 
- D 1 - I - 0x003187 00:B177: 40        .byte $40   ; 
- D 1 - I - 0x003188 00:B178: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00318A 00:B17A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00318B 00:B17B: 85        .byte $85   ; 
- D 1 - I - 0x00318C 00:B17C: 40        .byte $40   ; 
- D 1 - I - 0x00318D 00:B17D: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00318E 00:B17E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00318F 00:B17F: 83        .byte $83   ; 
- D 1 - I - 0x003190 00:B180: 3B        .byte $3B   ; 
- D 1 - I - 0x003191 00:B181: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003193 00:B183: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003194 00:B184: 85        .byte $85   ; 
- D 1 - I - 0x003195 00:B185: 3B        .byte $3B   ; 
- D 1 - I - 0x003196 00:B186: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003197 00:B187: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003198 00:B188: 83        .byte $83   ; 
- D 1 - I - 0x003199 00:B189: 40        .byte $40   ; 
- D 1 - I - 0x00319A 00:B18A: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00319C 00:B18C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00319D 00:B18D: 85        .byte $85   ; 
- D 1 - I - 0x00319E 00:B18E: 40        .byte $40   ; 
- D 1 - I - 0x00319F 00:B18F: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031A0 00:B190: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031A1 00:B191: 83        .byte $83   ; 
- D 1 - I - 0x0031A2 00:B192: 3B        .byte $3B   ; 
- D 1 - I - 0x0031A3 00:B193: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031A5 00:B195: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031A6 00:B196: 85        .byte $85   ; 
- D 1 - I - 0x0031A7 00:B197: 3B        .byte $3B   ; 
- D 1 - I - 0x0031A8 00:B198: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031A9 00:B199: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031AA 00:B19A: 83        .byte $83   ; 
- D 1 - I - 0x0031AB 00:B19B: 40        .byte $40   ; 
- D 1 - I - 0x0031AC 00:B19C: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031AE 00:B19E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031AF 00:B19F: 40        .byte $40   ; 
- D 1 - I - 0x0031B0 00:B1A0: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031B1 00:B1A1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031B2 00:B1A2: 83        .byte $83   ; 
- D 1 - I - 0x0031B3 00:B1A3: 3B        .byte $3B   ; 
- D 1 - I - 0x0031B4 00:B1A4: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031B6 00:B1A6: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031B7 00:B1A7: 3B        .byte $3B   ; 
- D 1 - I - 0x0031B8 00:B1A8: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0031BA 00:B1AA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031BB 00:B1AB: 83        .byte $83   ; 
- D 1 - I - 0x0031BC 00:B1AC: 40        .byte $40   ; 
- D 1 - I - 0x0031BD 00:B1AD: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031BF 00:B1AF: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031C0 00:B1B0: 85        .byte $85   ; 
- D 1 - I - 0x0031C1 00:B1B1: 40        .byte $40   ; 
- D 1 - I - 0x0031C2 00:B1B2: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031C3 00:B1B3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031C4 00:B1B4: 83        .byte $83   ; 
- D 1 - I - 0x0031C5 00:B1B5: 3B        .byte $3B   ; 
- D 1 - I - 0x0031C6 00:B1B6: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031C8 00:B1B8: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031C9 00:B1B9: 85        .byte $85   ; 
- D 1 - I - 0x0031CA 00:B1BA: 3B        .byte $3B   ; 
- D 1 - I - 0x0031CB 00:B1BB: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031CC 00:B1BC: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031CD 00:B1BD: 83        .byte $83   ; 
- D 1 - I - 0x0031CE 00:B1BE: 39        .byte $39   ; 
- D 1 - I - 0x0031CF 00:B1BF: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031D1 00:B1C1: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031D2 00:B1C2: 85        .byte $85   ; 
- D 1 - I - 0x0031D3 00:B1C3: 39        .byte $39   ; 
- D 1 - I - 0x0031D4 00:B1C4: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031D5 00:B1C5: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031D6 00:B1C6: 83        .byte $83   ; 
- D 1 - I - 0x0031D7 00:B1C7: 37        .byte $37   ; 
- D 1 - I - 0x0031D8 00:B1C8: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031DA 00:B1CA: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031DB 00:B1CB: 85        .byte $85   ; 
- D 1 - I - 0x0031DC 00:B1CC: 37        .byte $37   ; 
- D 1 - I - 0x0031DD 00:B1CD: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031DE 00:B1CE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031DF 00:B1CF: 83        .byte $83   ; 
- D 1 - I - 0x0031E0 00:B1D0: 39        .byte $39   ; 
- D 1 - I - 0x0031E1 00:B1D1: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031E3 00:B1D3: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031E4 00:B1D4: 39        .byte $39   ; 
- D 1 - I - 0x0031E5 00:B1D5: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031E6 00:B1D6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031E7 00:B1D7: 83        .byte $83   ; 
- D 1 - I - 0x0031E8 00:B1D8: 3B        .byte $3B   ; 
- D 1 - I - 0x0031E9 00:B1D9: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031EB 00:B1DB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031EC 00:B1DC: 3B        .byte $3B   ; 
- D 1 - I - 0x0031ED 00:B1DD: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0031EF 00:B1DF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031F0 00:B1E0: 83        .byte $83   ; 
- D 1 - I - 0x0031F1 00:B1E1: 40        .byte $40   ; 
- D 1 - I - 0x0031F2 00:B1E2: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031F4 00:B1E4: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031F5 00:B1E5: 85        .byte $85   ; 
- D 1 - I - 0x0031F6 00:B1E6: 40        .byte $40   ; 
- D 1 - I - 0x0031F7 00:B1E7: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0031F8 00:B1E8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0031F9 00:B1E9: 83        .byte $83   ; 
- D 1 - I - 0x0031FA 00:B1EA: 3B        .byte $3B   ; 
- D 1 - I - 0x0031FB 00:B1EB: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0031FD 00:B1ED: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0031FE 00:B1EE: 85        .byte $85   ; 
- D 1 - I - 0x0031FF 00:B1EF: 3B        .byte $3B   ; 
- D 1 - I - 0x003200 00:B1F0: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003201 00:B1F1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003202 00:B1F2: 83        .byte $83   ; 
- D 1 - I - 0x003203 00:B1F3: 40        .byte $40   ; 
- D 1 - I - 0x003204 00:B1F4: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003206 00:B1F6: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003207 00:B1F7: 85        .byte $85   ; 
- D 1 - I - 0x003208 00:B1F8: 40        .byte $40   ; 
- D 1 - I - 0x003209 00:B1F9: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00320A 00:B1FA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00320B 00:B1FB: 83        .byte $83   ; 
- D 1 - I - 0x00320C 00:B1FC: 3B        .byte $3B   ; 
- D 1 - I - 0x00320D 00:B1FD: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00320F 00:B1FF: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003210 00:B200: 85        .byte $85   ; 
- D 1 - I - 0x003211 00:B201: 3B        .byte $3B   ; 
- D 1 - I - 0x003212 00:B202: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003213 00:B203: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003214 00:B204: 83        .byte $83   ; 
- D 1 - I - 0x003215 00:B205: 40        .byte $40   ; 
- D 1 - I - 0x003216 00:B206: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003218 00:B208: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003219 00:B209: 40        .byte $40   ; 
- D 1 - I - 0x00321A 00:B20A: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00321B 00:B20B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00321C 00:B20C: 83        .byte $83   ; 
- D 1 - I - 0x00321D 00:B20D: 3B        .byte $3B   ; 
- D 1 - I - 0x00321E 00:B20E: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003220 00:B210: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003221 00:B211: 3B        .byte $3B   ; 
- D 1 - I - 0x003222 00:B212: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x003224 00:B214: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003225 00:B215: 83        .byte $83   ; 
- D 1 - I - 0x003226 00:B216: 40        .byte $40   ; 
- D 1 - I - 0x003227 00:B217: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003229 00:B219: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00322A 00:B21A: 85        .byte $85   ; 
- D 1 - I - 0x00322B 00:B21B: 40        .byte $40   ; 
- D 1 - I - 0x00322C 00:B21C: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00322D 00:B21D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00322E 00:B21E: 83        .byte $83   ; 
- D 1 - I - 0x00322F 00:B21F: 3B        .byte $3B   ; 
- D 1 - I - 0x003230 00:B220: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003232 00:B222: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003233 00:B223: 85        .byte $85   ; 
- D 1 - I - 0x003234 00:B224: 3B        .byte $3B   ; 
- D 1 - I - 0x003235 00:B225: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003236 00:B226: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003237 00:B227: 83        .byte $83   ; 
- D 1 - I - 0x003238 00:B228: 40        .byte $40   ; 
- D 1 - I - 0x003239 00:B229: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00323B 00:B22B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00323C 00:B22C: 85        .byte $85   ; 
- D 1 - I - 0x00323D 00:B22D: 40        .byte $40   ; 
- D 1 - I - 0x00323E 00:B22E: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00323F 00:B22F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003240 00:B230: 83        .byte $83   ; 
- D 1 - I - 0x003241 00:B231: 3B        .byte $3B   ; 
- D 1 - I - 0x003242 00:B232: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003244 00:B234: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003245 00:B235: 85        .byte $85   ; 
- D 1 - I - 0x003246 00:B236: 3B        .byte $3B   ; 
- D 1 - I - 0x003247 00:B237: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003248 00:B238: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003249 00:B239: 83        .byte $83   ; 
- D 1 - I - 0x00324A 00:B23A: 39        .byte $39   ; 
- D 1 - I - 0x00324B 00:B23B: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00324D 00:B23D: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00324E 00:B23E: 39        .byte $39   ; 
- D 1 - I - 0x00324F 00:B23F: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003250 00:B240: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003251 00:B241: 83        .byte $83   ; 
- D 1 - I - 0x003252 00:B242: 42        .byte $42   ; 
- D 1 - I - 0x003253 00:B243: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003255 00:B245: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003256 00:B246: 42        .byte $42   ; 
- D 1 - I - 0x003257 00:B247: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x003259 00:B249: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x00325B 00:B24B: E0        .byte con_se_cb_E0, $15   ; 
- D 1 - I - 0x00325D 00:B24D: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00325E 00:B24E: ED        .byte con_se_cb_ED, $21   ; 
- D 1 - I - 0x003260 00:B250: 85        .byte $85   ; 
- D 1 - I - 0x003261 00:B251: 30        .byte $30   ; 
- D 1 - I - 0x003262 00:B252: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x003264 00:B254: 30        .byte $30   ; 
- D 1 - I - 0x003265 00:B255: ED        .byte con_se_cb_ED, $10   ; 
- D 1 - I - 0x003267 00:B257: 30        .byte $30   ; 
- D 1 - I - 0x003268 00:B258: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003269 00:B259: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00326B 00:B25B: 30        .byte $30   ; 
- D 1 - I - 0x00326C 00:B25C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00326D 00:B25D: ED        .byte con_se_cb_ED, $24   ; 
- D 1 - I - 0x00326F 00:B25F: 85        .byte $85   ; 
- D 1 - I - 0x003270 00:B260: 2B        .byte $2B   ; 
- D 1 - I - 0x003271 00:B261: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x003273 00:B263: 2B        .byte $2B   ; 
- D 1 - I - 0x003274 00:B264: ED        .byte con_se_cb_ED, $10   ; 
- D 1 - I - 0x003276 00:B266: 2B        .byte $2B   ; 
- D 1 - I - 0x003277 00:B267: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003278 00:B268: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00327A 00:B26A: 2B        .byte $2B   ; 
- D 1 - I - 0x00327B 00:B26B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00327C 00:B26C: ED        .byte con_se_cb_ED, $24   ; 
- D 1 - I - 0x00327E 00:B26E: 85        .byte $85   ; 
- D 1 - I - 0x00327F 00:B26F: 30        .byte $30   ; 
- D 1 - I - 0x003280 00:B270: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x003282 00:B272: 30        .byte $30   ; 
- D 1 - I - 0x003283 00:B273: ED        .byte con_se_cb_ED, $10   ; 
- D 1 - I - 0x003285 00:B275: 30        .byte $30   ; 
- D 1 - I - 0x003286 00:B276: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003287 00:B277: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x003289 00:B279: 30        .byte $30   ; 
- D 1 - I - 0x00328A 00:B27A: E0        .byte con_se_cb_E0, $16   ; 
- D 1 - I - 0x00328C 00:B27C: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00328E 00:B27E: 83        .byte $83   ; 
- D 1 - I - 0x00328F 00:B27F: 85        .byte $85   ; 
- D 1 - I - 0x003290 00:B280: 32        .byte $32   ; 
- D 1 - I - 0x003291 00:B281: 34        .byte $34   ; 
- D 1 - I - 0x003292 00:B282: 85        .byte $85   ; 
- D 1 - I - 0x003293 00:B283: 32        .byte $32   ; 
- D 1 - I - 0x003294 00:B284: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003295 00:B285: E0        .byte con_se_cb_E0, $15   ; 
- D 1 - I - 0x003297 00:B287: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003298 00:B288: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003299 00:B289: 85        .byte $85   ; 
- D 1 - I - 0x00329A 00:B28A: 30        .byte $30   ; 
- D 1 - I - 0x00329B 00:B28B: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00329D 00:B28D: 30        .byte $30   ; 
- D 1 - I - 0x00329E 00:B28E: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x0032A0 00:B290: 30        .byte $30   ; 
- D 1 - I - 0x0032A1 00:B291: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0032A2 00:B292: ED        .byte con_se_cb_ED, $10   ; 
- D 1 - I - 0x0032A4 00:B294: 30        .byte $30   ; 
- D 1 - I - 0x0032A5 00:B295: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0032A6 00:B296: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0032A7 00:B297: 85        .byte $85   ; 
- D 1 - I - 0x0032A8 00:B298: 2B        .byte $2B   ; 
- D 1 - I - 0x0032A9 00:B299: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0032AB 00:B29B: 2B        .byte $2B   ; 
- D 1 - I - 0x0032AC 00:B29C: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x0032AE 00:B29E: 2B        .byte $2B   ; 
- D 1 - I - 0x0032AF 00:B29F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0032B0 00:B2A0: ED        .byte con_se_cb_ED, $10   ; 
- D 1 - I - 0x0032B2 00:B2A2: 2B        .byte $2B   ; 
- D 1 - I - 0x0032B3 00:B2A3: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0032B5 00:B2A5: E0        .byte con_se_cb_E0, $17   ; 
- D 1 - I - 0x0032B7 00:B2A7: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0032B8 00:B2A8: 85        .byte $85   ; 
- D 1 - I - 0x0032B9 00:B2A9: 83        .byte $83   ; 
- D 1 - I - 0x0032BA 00:B2AA: 34        .byte $34   ; 
- D 1 - I - 0x0032BB 00:B2AB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0032BC 00:B2AC: 34        .byte $34   ; 
- D 1 - I - 0x0032BD 00:B2AD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0032BE 00:B2AE: 85        .byte $85   ; 
- D 1 - I - 0x0032BF 00:B2AF: 34        .byte $34   ; 
- D 1 - I - 0x0032C0 00:B2B0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0032C1 00:B2B1: 83        .byte $83   ; 
- D 1 - I - 0x0032C2 00:B2B2: 85        .byte $85   ; 
- D 1 - I - 0x0032C3 00:B2B3: 34        .byte $34   ; 
- D 1 - I - 0x0032C4 00:B2B4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0032C5 00:B2B5: 36        .byte $36   ; 
- D 1 - I - 0x0032C6 00:B2B6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0032C7 00:B2B7: 85        .byte $85   ; 
- D 1 - I - 0x0032C8 00:B2B8: 37        .byte $37   ; 
- D 1 - I - 0x0032C9 00:B2B9: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x0032CA 00:B2BA: 3E B0     .word off_E8_B03E
ofs_E9_B2BC:
- D 1 - I - 0x0032CC 00:B2BC: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x0032CE 00:B2BE: E3        .byte con_se_cb_E3, $01   ; 
- D 1 - I - 0x0032D0 00:B2C0: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0032D2 00:B2C2: 85        .byte $85   ; 
- D 1 - I - 0x0032D3 00:B2C3: 0C        .byte $0C   ; 
- D 1 - I - 0x0032D4 00:B2C4: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0032D6 00:B2C6: 85        .byte $85   ; 
- D 1 - I - 0x0032D7 00:B2C7: 34        .byte $34   ; 
- D 1 - I - 0x0032D8 00:B2C8: 85        .byte $85   ; 
- D 1 - I - 0x0032D9 00:B2C9: 2B        .byte $2B   ; 
- D 1 - I - 0x0032DA 00:B2CA: 0C        .byte $0C   ; 
- D 1 - I - 0x0032DB 00:B2CB: 34        .byte $34   ; 
- D 1 - I - 0x0032DC 00:B2CC: 83        .byte $83   ; 
- D 1 - I - 0x0032DD 00:B2CD: 34        .byte $34   ; 
- D 1 - I - 0x0032DE 00:B2CE: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x0032E0 00:B2D0: 85        .byte $85   ; 
- D 1 - I - 0x0032E1 00:B2D1: 83        .byte $83   ; 
- D 1 - I - 0x0032E2 00:B2D2: 2B        .byte $2B   ; 
- D 1 - I - 0x0032E3 00:B2D3: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0032E5 00:B2D5: 85        .byte $85   ; 
- D 1 - I - 0x0032E6 00:B2D6: 34        .byte $34   ; 
- D 1 - I - 0x0032E7 00:B2D7: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0032E8 00:B2D8: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0032EA 00:B2DA: 85        .byte $85   ; 
- D 1 - I - 0x0032EB 00:B2DB: 0C        .byte $0C   ; 
- D 1 - I - 0x0032EC 00:B2DC: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0032EE 00:B2DE: 85        .byte $85   ; 
- D 1 - I - 0x0032EF 00:B2DF: 32        .byte $32   ; 
- D 1 - I - 0x0032F0 00:B2E0: 85        .byte $85   ; 
- D 1 - I - 0x0032F1 00:B2E1: 29        .byte $29   ; 
- D 1 - I - 0x0032F2 00:B2E2: 0C        .byte $0C   ; 
- D 1 - I - 0x0032F3 00:B2E3: 32        .byte $32   ; 
- D 1 - I - 0x0032F4 00:B2E4: 83        .byte $83   ; 
- D 1 - I - 0x0032F5 00:B2E5: 32        .byte $32   ; 
- D 1 - I - 0x0032F6 00:B2E6: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x0032F8 00:B2E8: 85        .byte $85   ; 
- D 1 - I - 0x0032F9 00:B2E9: 83        .byte $83   ; 
- D 1 - I - 0x0032FA 00:B2EA: 29        .byte $29   ; 
- D 1 - I - 0x0032FB 00:B2EB: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0032FD 00:B2ED: 85        .byte $85   ; 
- D 1 - I - 0x0032FE 00:B2EE: 32        .byte $32   ; 
- D 1 - I - 0x0032FF 00:B2EF: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003300 00:B2F0: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003302 00:B2F2: 85        .byte $85   ; 
- D 1 - I - 0x003303 00:B2F3: 0C        .byte $0C   ; 
- D 1 - I - 0x003304 00:B2F4: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003306 00:B2F6: 85        .byte $85   ; 
- D 1 - I - 0x003307 00:B2F7: 34        .byte $34   ; 
- D 1 - I - 0x003308 00:B2F8: 85        .byte $85   ; 
- D 1 - I - 0x003309 00:B2F9: 2B        .byte $2B   ; 
- D 1 - I - 0x00330A 00:B2FA: 0C        .byte $0C   ; 
- D 1 - I - 0x00330B 00:B2FB: 34        .byte $34   ; 
- D 1 - I - 0x00330C 00:B2FC: 83        .byte $83   ; 
- D 1 - I - 0x00330D 00:B2FD: 34        .byte $34   ; 
- D 1 - I - 0x00330E 00:B2FE: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003310 00:B300: 85        .byte $85   ; 
- D 1 - I - 0x003311 00:B301: 83        .byte $83   ; 
- D 1 - I - 0x003312 00:B302: 2B        .byte $2B   ; 
- D 1 - I - 0x003313 00:B303: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003315 00:B305: 85        .byte $85   ; 
- D 1 - I - 0x003316 00:B306: 34        .byte $34   ; 
- D 1 - I - 0x003317 00:B307: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003318 00:B308: 85        .byte $85   ; 
- D 1 - I - 0x003319 00:B309: 0C        .byte $0C   ; 
- D 1 - I - 0x00331A 00:B30A: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x00331C 00:B30C: 85        .byte $85   ; 
- D 1 - I - 0x00331D 00:B30D: 32        .byte $32   ; 
- D 1 - I - 0x00331E 00:B30E: 85        .byte $85   ; 
- D 1 - I - 0x00331F 00:B30F: 29        .byte $29   ; 
- D 1 - I - 0x003320 00:B310: 0C        .byte $0C   ; 
- D 1 - I - 0x003321 00:B311: 32        .byte $32   ; 
- D 1 - I - 0x003322 00:B312: 83        .byte $83   ; 
- D 1 - I - 0x003323 00:B313: 32        .byte $32   ; 
- D 1 - I - 0x003324 00:B314: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003326 00:B316: 85        .byte $85   ; 
- D 1 - I - 0x003327 00:B317: 83        .byte $83   ; 
- D 1 - I - 0x003328 00:B318: 29        .byte $29   ; 
- D 1 - I - 0x003329 00:B319: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x00332B 00:B31B: 85        .byte $85   ; 
- D 1 - I - 0x00332C 00:B31C: 32        .byte $32   ; 
- D 1 - I - 0x00332D 00:B31D: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x00332F 00:B31F: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x003331 00:B321: E0        .byte con_se_cb_E0, $0A   ; 
- D 1 - I - 0x003333 00:B323: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x003335 00:B325: 83        .byte $83   ; 
- D 1 - I - 0x003336 00:B326: 2B        .byte $2B   ; 
- D 1 - I - 0x003337 00:B327: 32        .byte $32   ; 
- D 1 - I - 0x003338 00:B328: 34        .byte $34   ; 
- D 1 - I - 0x003339 00:B329: 36        .byte $36   ; 
- D 1 - I - 0x00333A 00:B32A: 32        .byte $32   ; 
- D 1 - I - 0x00333B 00:B32B: 34        .byte $34   ; 
- D 1 - I - 0x00333C 00:B32C: 36        .byte $36   ; 
- D 1 - I - 0x00333D 00:B32D: 37        .byte $37   ; 
- D 1 - I - 0x00333E 00:B32E: 34        .byte $34   ; 
- D 1 - I - 0x00333F 00:B32F: 36        .byte $36   ; 
- D 1 - I - 0x003340 00:B330: 37        .byte $37   ; 
- D 1 - I - 0x003341 00:B331: 39        .byte $39   ; 
- D 1 - I - 0x003342 00:B332: 36        .byte $36   ; 
- D 1 - I - 0x003343 00:B333: 37        .byte $37   ; 
- D 1 - I - 0x003344 00:B334: 85        .byte $85   ; 
- D 1 - I - 0x003345 00:B335: 39        .byte $39   ; 
- D 1 - I - 0x003346 00:B336: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x003348 00:B338: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003349 00:B339: 87        .byte $87   ; 
- D 1 - I - 0x00334A 00:B33A: 37        .byte $37   ; 
- D 1 - I - 0x00334B 00:B33B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00334C 00:B33C: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x00334E 00:B33E: 37        .byte $37   ; 
- D 1 - I - 0x00334F 00:B33F: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x003351 00:B341: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x003353 00:B343: 85        .byte $85   ; 
- D 1 - I - 0x003354 00:B344: 83        .byte $83   ; 
- D 1 - I - 0x003355 00:B345: 36        .byte $36   ; 
- D 1 - I - 0x003356 00:B346: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003357 00:B347: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x003359 00:B349: 85        .byte $85   ; 
- D 1 - I - 0x00335A 00:B34A: 34        .byte $34   ; 
- D 1 - I - 0x00335B 00:B34B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00335C 00:B34C: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x00335E 00:B34E: 8A        .byte $8A   ; 
- D 1 - I - 0x00335F 00:B34F: 81        .byte $81   ; 
- D 1 - I - 0x003360 00:B350: 34        .byte $34   ; 
- D 1 - I - 0x003361 00:B351: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x003363 00:B353: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x003365 00:B355: 83        .byte $83   ; 
- D 1 - I - 0x003366 00:B356: 32        .byte $32   ; 
- D 1 - I - 0x003367 00:B357: 34        .byte $34   ; 
- D 1 - I - 0x003368 00:B358: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x00336A 00:B35A: 98        .byte $98   ; 
- D 1 - I - 0x00336B 00:B35B: 36        .byte $36   ; 
- D 1 - I - 0x00336C 00:B35C: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x00336E 00:B35E: 85        .byte $85   ; 
- D 1 - I - 0x00336F 00:B35F: 83        .byte $83   ; 
- D 1 - I - 0x003370 00:B360: 37        .byte $37   ; 
- D 1 - I - 0x003371 00:B361: 36        .byte $36   ; 
- D 1 - I - 0x003372 00:B362: 85        .byte $85   ; 
- D 1 - I - 0x003373 00:B363: 34        .byte $34   ; 
- D 1 - I - 0x003374 00:B364: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x003376 00:B366: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003377 00:B367: 88        .byte $88   ; 
- D 1 - I - 0x003378 00:B368: 80        .byte $80   ; 
- D 1 - I - 0x003379 00:B369: 39        .byte $39   ; 
- D 1 - I - 0x00337A 00:B36A: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x00337C 00:B36C: 39        .byte $39   ; 
- D 1 - I - 0x00337D 00:B36D: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00337F 00:B36F: 39        .byte $39   ; 
- D 1 - I - 0x003380 00:B370: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003381 00:B371: 39        .byte $39   ; 
- D 1 - I - 0x003382 00:B372: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x003384 00:B374: E0        .byte con_se_cb_E0, $0A   ; 
- D 1 - I - 0x003386 00:B376: 83        .byte $83   ; 
- D 1 - I - 0x003387 00:B377: 32        .byte $32   ; 
- D 1 - I - 0x003388 00:B378: 32        .byte $32   ; 
- D 1 - I - 0x003389 00:B379: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x00338B 00:B37B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00338C 00:B37C: 87        .byte $87   ; 
- D 1 - I - 0x00338D 00:B37D: 37        .byte $37   ; 
- D 1 - I - 0x00338E 00:B37E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00338F 00:B37F: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x003391 00:B381: 37        .byte $37   ; 
- D 1 - I - 0x003392 00:B382: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x003394 00:B384: 85        .byte $85   ; 
- D 1 - I - 0x003395 00:B385: 83        .byte $83   ; 
- D 1 - I - 0x003396 00:B386: 36        .byte $36   ; 
- D 1 - I - 0x003397 00:B387: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x003399 00:B389: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00339A 00:B38A: 85        .byte $85   ; 
- D 1 - I - 0x00339B 00:B38B: 34        .byte $34   ; 
- D 1 - I - 0x00339C 00:B38C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00339D 00:B38D: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x00339F 00:B38F: 8A        .byte $8A   ; 
- D 1 - I - 0x0033A0 00:B390: 81        .byte $81   ; 
- D 1 - I - 0x0033A1 00:B391: 34        .byte $34   ; 
- D 1 - I - 0x0033A2 00:B392: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x0033A4 00:B394: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x0033A6 00:B396: 83        .byte $83   ; 
- D 1 - I - 0x0033A7 00:B397: 32        .byte $32   ; 
- D 1 - I - 0x0033A8 00:B398: 34        .byte $34   ; 
- D 1 - I - 0x0033A9 00:B399: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x0033AB 00:B39B: 98        .byte $98   ; 
- D 1 - I - 0x0033AC 00:B39C: 36        .byte $36   ; 
- D 1 - I - 0x0033AD 00:B39D: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x0033AF 00:B39F: 85        .byte $85   ; 
- D 1 - I - 0x0033B0 00:B3A0: 83        .byte $83   ; 
- D 1 - I - 0x0033B1 00:B3A1: 37        .byte $37   ; 
- D 1 - I - 0x0033B2 00:B3A2: 36        .byte $36   ; 
- D 1 - I - 0x0033B3 00:B3A3: 34        .byte $34   ; 
- D 1 - I - 0x0033B4 00:B3A4: E0        .byte con_se_cb_E0, $09   ; 
- D 1 - I - 0x0033B6 00:B3A6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0033B7 00:B3A7: 87        .byte $87   ; 
- D 1 - I - 0x0033B8 00:B3A8: 42        .byte $42   ; 
- D 1 - I - 0x0033B9 00:B3A9: ED        .byte con_se_cb_ED, $07   ; 
- D 1 - I - 0x0033BB 00:B3AB: 42        .byte $42   ; 
- D 1 - I - 0x0033BC 00:B3AC: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0033BE 00:B3AE: 42        .byte $42   ; 
- D 1 - I - 0x0033BF 00:B3AF: 42        .byte $42   ; 
- D 1 - I - 0x0033C0 00:B3B0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0033C1 00:B3B1: 85        .byte $85   ; 
- D 1 - I - 0x0033C2 00:B3B2: 83        .byte $83   ; 
- D 1 - I - 0x0033C3 00:B3B3: 42        .byte $42   ; 
- D 1 - I - 0x0033C4 00:B3B4: ED        .byte con_se_cb_ED, $06   ; 
- D 1 - I - 0x0033C6 00:B3B6: E0        .byte con_se_cb_E0, $08   ; 
- D 1 - I - 0x0033C8 00:B3B8: 83        .byte $83   ; 
- D 1 - I - 0x0033C9 00:B3B9: 42        .byte $42   ; 
- D 1 - I - 0x0033CA 00:B3BA: 40        .byte $40   ; 
- D 1 - I - 0x0033CB 00:B3BB: 3B        .byte $3B   ; 
- D 1 - I - 0x0033CC 00:B3BC: 39        .byte $39   ; 
- D 1 - I - 0x0033CD 00:B3BD: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x0033CF 00:B3BF: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0033D1 00:B3C1: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0033D3 00:B3C3: 85        .byte $85   ; 
- D 1 - I - 0x0033D4 00:B3C4: 0C        .byte $0C   ; 
- D 1 - I - 0x0033D5 00:B3C5: 34        .byte $34   ; 
- D 1 - I - 0x0033D6 00:B3C6: 32        .byte $32   ; 
- D 1 - I - 0x0033D7 00:B3C7: 0C        .byte $0C   ; 
- D 1 - I - 0x0033D8 00:B3C8: 34        .byte $34   ; 
- D 1 - I - 0x0033D9 00:B3C9: 83        .byte $83   ; 
- D 1 - I - 0x0033DA 00:B3CA: 34        .byte $34   ; 
- D 1 - I - 0x0033DB 00:B3CB: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x0033DD 00:B3CD: 85        .byte $85   ; 
- D 1 - I - 0x0033DE 00:B3CE: 83        .byte $83   ; 
- D 1 - I - 0x0033DF 00:B3CF: 32        .byte $32   ; 
- D 1 - I - 0x0033E0 00:B3D0: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0033E2 00:B3D2: 85        .byte $85   ; 
- D 1 - I - 0x0033E3 00:B3D3: 34        .byte $34   ; 
- D 1 - I - 0x0033E4 00:B3D4: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0033E6 00:B3D6: 85        .byte $85   ; 
- D 1 - I - 0x0033E7 00:B3D7: 0C        .byte $0C   ; 
- D 1 - I - 0x0033E8 00:B3D8: 37        .byte $37   ; 
- D 1 - I - 0x0033E9 00:B3D9: 36        .byte $36   ; 
- D 1 - I - 0x0033EA 00:B3DA: 0C        .byte $0C   ; 
- D 1 - I - 0x0033EB 00:B3DB: 37        .byte $37   ; 
- D 1 - I - 0x0033EC 00:B3DC: 83        .byte $83   ; 
- D 1 - I - 0x0033ED 00:B3DD: 37        .byte $37   ; 
- D 1 - I - 0x0033EE 00:B3DE: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x0033F0 00:B3E0: 85        .byte $85   ; 
- D 1 - I - 0x0033F1 00:B3E1: 83        .byte $83   ; 
- D 1 - I - 0x0033F2 00:B3E2: 36        .byte $36   ; 
- D 1 - I - 0x0033F3 00:B3E3: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x0033F5 00:B3E5: 85        .byte $85   ; 
- D 1 - I - 0x0033F6 00:B3E6: 37        .byte $37   ; 
- D 1 - I - 0x0033F7 00:B3E7: EA        .byte con_se_cb_rts   ; 



off_ch_10_B3E8_05:
- D 1 - I - 0x0033F8 00:B3E8: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x0033FA 00:B3EA: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x0033FC 00:B3EC: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0033FE 00:B3EE: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x003400 00:B3F0: 85        .byte $85   ; 
- D 1 - I - 0x003401 00:B3F1: 0C        .byte $0C   ; 
- D 1 - I - 0x003402 00:B3F2: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003404 00:B3F4: 85        .byte $85   ; 
- D 1 - I - 0x003405 00:B3F5: 37        .byte $37   ; 
- D 1 - I - 0x003406 00:B3F6: 85        .byte $85   ; 
- D 1 - I - 0x003407 00:B3F7: 34        .byte $34   ; 
- D 1 - I - 0x003408 00:B3F8: 0C        .byte $0C   ; 
- D 1 - I - 0x003409 00:B3F9: 37        .byte $37   ; 
- D 1 - I - 0x00340A 00:B3FA: 83        .byte $83   ; 
- D 1 - I - 0x00340B 00:B3FB: 37        .byte $37   ; 
- D 1 - I - 0x00340C 00:B3FC: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x00340E 00:B3FE: 85        .byte $85   ; 
- D 1 - I - 0x00340F 00:B3FF: 83        .byte $83   ; 
- D 1 - I - 0x003410 00:B400: 34        .byte $34   ; 
- D 1 - I - 0x003411 00:B401: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003413 00:B403: 85        .byte $85   ; 
- D 1 - I - 0x003414 00:B404: 37        .byte $37   ; 
- D 1 - I - 0x003415 00:B405: EC        .byte con_se_cb_EC   ; 
off_E8_B406:
- D 1 - I - 0x003416 00:B406: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x003417 00:B407: 3D B6     .word ofs_E9_B63D
- D 1 - I - 0x003419 00:B409: 85        .byte $85   ; 
- D 1 - I - 0x00341A 00:B40A: 0C        .byte $0C   ; 
- D 1 - I - 0x00341B 00:B40B: E0        .byte con_se_cb_E0, $17   ; 
- D 1 - I - 0x00341D 00:B40D: 85        .byte $85   ; 
- D 1 - I - 0x00341E 00:B40E: 37        .byte $37   ; 
- D 1 - I - 0x00341F 00:B40F: 85        .byte $85   ; 
- D 1 - I - 0x003420 00:B410: 34        .byte $34   ; 
- D 1 - I - 0x003421 00:B411: 0C        .byte $0C   ; 
- D 1 - I - 0x003422 00:B412: 37        .byte $37   ; 
- D 1 - I - 0x003423 00:B413: 83        .byte $83   ; 
- D 1 - I - 0x003424 00:B414: 37        .byte $37   ; 
- D 1 - I - 0x003425 00:B415: 85        .byte $85   ; 
- D 1 - I - 0x003426 00:B416: 83        .byte $83   ; 
- D 1 - I - 0x003427 00:B417: 34        .byte $34   ; 
- D 1 - I - 0x003428 00:B418: 85        .byte $85   ; 
- D 1 - I - 0x003429 00:B419: 37        .byte $37   ; 
- D 1 - I - 0x00342A 00:B41A: E9        .byte con_se_cb_jsr   ; 
- D 1 - I - 0x00342B 00:B41B: 3D B6     .word ofs_E9_B63D
- D 1 - I - 0x00342D 00:B41D: 85        .byte $85   ; 
- D 1 - I - 0x00342E 00:B41E: 0C        .byte $0C   ; 
- D 1 - I - 0x00342F 00:B41F: E0        .byte con_se_cb_E0, $17   ; 
- D 1 - I - 0x003431 00:B421: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003432 00:B422: 3B        .byte $3B   ; 
- D 1 - I - 0x003433 00:B423: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003434 00:B424: 38        .byte $38   ; 
- D 1 - I - 0x003435 00:B425: 0C        .byte $0C   ; 
- D 1 - I - 0x003436 00:B426: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003437 00:B427: 3B        .byte $3B   ; 
- D 1 - I - 0x003438 00:B428: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003439 00:B429: 83        .byte $83   ; 
- D 1 - I - 0x00343A 00:B42A: 3B        .byte $3B   ; 
- D 1 - I - 0x00343B 00:B42B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00343C 00:B42C: 85        .byte $85   ; 
- D 1 - I - 0x00343D 00:B42D: 83        .byte $83   ; 
- D 1 - I - 0x00343E 00:B42E: 38        .byte $38   ; 
- D 1 - I - 0x00343F 00:B42F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003440 00:B430: 85        .byte $85   ; 
- D 1 - I - 0x003441 00:B431: 3B        .byte $3B   ; 
- D 1 - I - 0x003442 00:B432: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x003444 00:B434: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x003446 00:B436: E3        .byte con_se_cb_E3, $01   ; 
- D 1 - I - 0x003448 00:B438: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x00344A 00:B43A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00344B 00:B43B: 83        .byte $83   ; 
- D 1 - I - 0x00344C 00:B43C: 40        .byte $40   ; 
- D 1 - I - 0x00344D 00:B43D: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00344F 00:B43F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003450 00:B440: 85        .byte $85   ; 
- D 1 - I - 0x003451 00:B441: 40        .byte $40   ; 
- D 1 - I - 0x003452 00:B442: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003453 00:B443: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003454 00:B444: 83        .byte $83   ; 
- D 1 - I - 0x003455 00:B445: 3B        .byte $3B   ; 
- D 1 - I - 0x003456 00:B446: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003458 00:B448: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003459 00:B449: 85        .byte $85   ; 
- D 1 - I - 0x00345A 00:B44A: 3B        .byte $3B   ; 
- D 1 - I - 0x00345B 00:B44B: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00345C 00:B44C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00345D 00:B44D: 83        .byte $83   ; 
- D 1 - I - 0x00345E 00:B44E: 40        .byte $40   ; 
- D 1 - I - 0x00345F 00:B44F: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003461 00:B451: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003462 00:B452: 85        .byte $85   ; 
- D 1 - I - 0x003463 00:B453: 40        .byte $40   ; 
- D 1 - I - 0x003464 00:B454: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003465 00:B455: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003466 00:B456: 83        .byte $83   ; 
- D 1 - I - 0x003467 00:B457: 3B        .byte $3B   ; 
- D 1 - I - 0x003468 00:B458: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00346A 00:B45A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00346B 00:B45B: 85        .byte $85   ; 
- D 1 - I - 0x00346C 00:B45C: 3B        .byte $3B   ; 
- D 1 - I - 0x00346D 00:B45D: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00346E 00:B45E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00346F 00:B45F: 83        .byte $83   ; 
- D 1 - I - 0x003470 00:B460: 40        .byte $40   ; 
- D 1 - I - 0x003471 00:B461: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003473 00:B463: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003474 00:B464: 40        .byte $40   ; 
- D 1 - I - 0x003475 00:B465: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003476 00:B466: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003477 00:B467: 83        .byte $83   ; 
- D 1 - I - 0x003478 00:B468: 3B        .byte $3B   ; 
- D 1 - I - 0x003479 00:B469: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00347B 00:B46B: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00347C 00:B46C: 3B        .byte $3B   ; 
- D 1 - I - 0x00347D 00:B46D: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x00347F 00:B46F: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003480 00:B470: 83        .byte $83   ; 
- D 1 - I - 0x003481 00:B471: 40        .byte $40   ; 
- D 1 - I - 0x003482 00:B472: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003484 00:B474: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003485 00:B475: 85        .byte $85   ; 
- D 1 - I - 0x003486 00:B476: 40        .byte $40   ; 
- D 1 - I - 0x003487 00:B477: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003488 00:B478: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003489 00:B479: 83        .byte $83   ; 
- D 1 - I - 0x00348A 00:B47A: 3B        .byte $3B   ; 
- D 1 - I - 0x00348B 00:B47B: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00348D 00:B47D: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00348E 00:B47E: 85        .byte $85   ; 
- D 1 - I - 0x00348F 00:B47F: 3B        .byte $3B   ; 
- D 1 - I - 0x003490 00:B480: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003491 00:B481: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003492 00:B482: 83        .byte $83   ; 
- D 1 - I - 0x003493 00:B483: 40        .byte $40   ; 
- D 1 - I - 0x003494 00:B484: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003496 00:B486: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003497 00:B487: 85        .byte $85   ; 
- D 1 - I - 0x003498 00:B488: 40        .byte $40   ; 
- D 1 - I - 0x003499 00:B489: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00349A 00:B48A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00349B 00:B48B: 83        .byte $83   ; 
- D 1 - I - 0x00349C 00:B48C: 3B        .byte $3B   ; 
- D 1 - I - 0x00349D 00:B48D: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00349F 00:B48F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034A0 00:B490: 85        .byte $85   ; 
- D 1 - I - 0x0034A1 00:B491: 3B        .byte $3B   ; 
- D 1 - I - 0x0034A2 00:B492: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034A3 00:B493: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034A4 00:B494: 83        .byte $83   ; 
- D 1 - I - 0x0034A5 00:B495: 42        .byte $42   ; 
- D 1 - I - 0x0034A6 00:B496: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034A8 00:B498: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034A9 00:B499: 42        .byte $42   ; 
- D 1 - I - 0x0034AA 00:B49A: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034AB 00:B49B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034AC 00:B49C: 83        .byte $83   ; 
- D 1 - I - 0x0034AD 00:B49D: 3B        .byte $3B   ; 
- D 1 - I - 0x0034AE 00:B49E: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034B0 00:B4A0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034B1 00:B4A1: 3B        .byte $3B   ; 
- D 1 - I - 0x0034B2 00:B4A2: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0034B4 00:B4A4: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034B5 00:B4A5: 83        .byte $83   ; 
- D 1 - I - 0x0034B6 00:B4A6: 40        .byte $40   ; 
- D 1 - I - 0x0034B7 00:B4A7: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034B9 00:B4A9: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034BA 00:B4AA: 85        .byte $85   ; 
- D 1 - I - 0x0034BB 00:B4AB: 40        .byte $40   ; 
- D 1 - I - 0x0034BC 00:B4AC: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034BD 00:B4AD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034BE 00:B4AE: 83        .byte $83   ; 
- D 1 - I - 0x0034BF 00:B4AF: 3B        .byte $3B   ; 
- D 1 - I - 0x0034C0 00:B4B0: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034C2 00:B4B2: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034C3 00:B4B3: 85        .byte $85   ; 
- D 1 - I - 0x0034C4 00:B4B4: 3B        .byte $3B   ; 
- D 1 - I - 0x0034C5 00:B4B5: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034C6 00:B4B6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034C7 00:B4B7: 83        .byte $83   ; 
- D 1 - I - 0x0034C8 00:B4B8: 40        .byte $40   ; 
- D 1 - I - 0x0034C9 00:B4B9: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034CB 00:B4BB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034CC 00:B4BC: 85        .byte $85   ; 
- D 1 - I - 0x0034CD 00:B4BD: 40        .byte $40   ; 
- D 1 - I - 0x0034CE 00:B4BE: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034CF 00:B4BF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034D0 00:B4C0: 83        .byte $83   ; 
- D 1 - I - 0x0034D1 00:B4C1: 3B        .byte $3B   ; 
- D 1 - I - 0x0034D2 00:B4C2: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034D4 00:B4C4: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034D5 00:B4C5: 85        .byte $85   ; 
- D 1 - I - 0x0034D6 00:B4C6: 3B        .byte $3B   ; 
- D 1 - I - 0x0034D7 00:B4C7: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034D8 00:B4C8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034D9 00:B4C9: 83        .byte $83   ; 
- D 1 - I - 0x0034DA 00:B4CA: 40        .byte $40   ; 
- D 1 - I - 0x0034DB 00:B4CB: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034DD 00:B4CD: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034DE 00:B4CE: 40        .byte $40   ; 
- D 1 - I - 0x0034DF 00:B4CF: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034E0 00:B4D0: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034E1 00:B4D1: 83        .byte $83   ; 
- D 1 - I - 0x0034E2 00:B4D2: 3B        .byte $3B   ; 
- D 1 - I - 0x0034E3 00:B4D3: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034E5 00:B4D5: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034E6 00:B4D6: 3B        .byte $3B   ; 
- D 1 - I - 0x0034E7 00:B4D7: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0034E9 00:B4D9: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034EA 00:B4DA: 83        .byte $83   ; 
- D 1 - I - 0x0034EB 00:B4DB: 40        .byte $40   ; 
- D 1 - I - 0x0034EC 00:B4DC: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034EE 00:B4DE: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034EF 00:B4DF: 85        .byte $85   ; 
- D 1 - I - 0x0034F0 00:B4E0: 40        .byte $40   ; 
- D 1 - I - 0x0034F1 00:B4E1: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034F2 00:B4E2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034F3 00:B4E3: 83        .byte $83   ; 
- D 1 - I - 0x0034F4 00:B4E4: 3B        .byte $3B   ; 
- D 1 - I - 0x0034F5 00:B4E5: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0034F7 00:B4E7: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0034F8 00:B4E8: 85        .byte $85   ; 
- D 1 - I - 0x0034F9 00:B4E9: 3B        .byte $3B   ; 
- D 1 - I - 0x0034FA 00:B4EA: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0034FB 00:B4EB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0034FC 00:B4EC: 83        .byte $83   ; 
- D 1 - I - 0x0034FD 00:B4ED: 40        .byte $40   ; 
- D 1 - I - 0x0034FE 00:B4EE: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003500 00:B4F0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003501 00:B4F1: 85        .byte $85   ; 
- D 1 - I - 0x003502 00:B4F2: 40        .byte $40   ; 
- D 1 - I - 0x003503 00:B4F3: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003504 00:B4F4: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003505 00:B4F5: 83        .byte $83   ; 
- D 1 - I - 0x003506 00:B4F6: 3B        .byte $3B   ; 
- D 1 - I - 0x003507 00:B4F7: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003509 00:B4F9: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00350A 00:B4FA: 85        .byte $85   ; 
- D 1 - I - 0x00350B 00:B4FB: 3B        .byte $3B   ; 
- D 1 - I - 0x00350C 00:B4FC: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00350D 00:B4FD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00350E 00:B4FE: 83        .byte $83   ; 
- D 1 - I - 0x00350F 00:B4FF: 40        .byte $40   ; 
- D 1 - I - 0x003510 00:B500: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003512 00:B502: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003513 00:B503: 40        .byte $40   ; 
- D 1 - I - 0x003514 00:B504: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003515 00:B505: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003516 00:B506: 83        .byte $83   ; 
- D 1 - I - 0x003517 00:B507: 42        .byte $42   ; 
- D 1 - I - 0x003518 00:B508: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00351A 00:B50A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00351B 00:B50B: 42        .byte $42   ; 
- D 1 - I - 0x00351C 00:B50C: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x00351E 00:B50E: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x003520 00:B510: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003521 00:B511: 83        .byte $83   ; 
- D 1 - I - 0x003522 00:B512: 44        .byte $44   ; 
- D 1 - I - 0x003523 00:B513: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003525 00:B515: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003526 00:B516: 85        .byte $85   ; 
- D 1 - I - 0x003527 00:B517: 44        .byte $44   ; 
- D 1 - I - 0x003528 00:B518: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003529 00:B519: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00352A 00:B51A: 83        .byte $83   ; 
- D 1 - I - 0x00352B 00:B51B: 42        .byte $42   ; 
- D 1 - I - 0x00352C 00:B51C: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00352E 00:B51E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00352F 00:B51F: 85        .byte $85   ; 
- D 1 - I - 0x003530 00:B520: 42        .byte $42   ; 
- D 1 - I - 0x003531 00:B521: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003532 00:B522: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003533 00:B523: 83        .byte $83   ; 
- D 1 - I - 0x003534 00:B524: 44        .byte $44   ; 
- D 1 - I - 0x003535 00:B525: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003537 00:B527: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003538 00:B528: 85        .byte $85   ; 
- D 1 - I - 0x003539 00:B529: 44        .byte $44   ; 
- D 1 - I - 0x00353A 00:B52A: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00353B 00:B52B: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00353C 00:B52C: 83        .byte $83   ; 
- D 1 - I - 0x00353D 00:B52D: 42        .byte $42   ; 
- D 1 - I - 0x00353E 00:B52E: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003540 00:B530: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003541 00:B531: 85        .byte $85   ; 
- D 1 - I - 0x003542 00:B532: 42        .byte $42   ; 
- D 1 - I - 0x003543 00:B533: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003544 00:B534: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003545 00:B535: 83        .byte $83   ; 
- D 1 - I - 0x003546 00:B536: 44        .byte $44   ; 
- D 1 - I - 0x003547 00:B537: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003549 00:B539: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00354A 00:B53A: 44        .byte $44   ; 
- D 1 - I - 0x00354B 00:B53B: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00354C 00:B53C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00354D 00:B53D: 83        .byte $83   ; 
- D 1 - I - 0x00354E 00:B53E: 42        .byte $42   ; 
- D 1 - I - 0x00354F 00:B53F: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003551 00:B541: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003552 00:B542: 42        .byte $42   ; 
- D 1 - I - 0x003553 00:B543: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x003555 00:B545: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003556 00:B546: 83        .byte $83   ; 
- D 1 - I - 0x003557 00:B547: 44        .byte $44   ; 
- D 1 - I - 0x003558 00:B548: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00355A 00:B54A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00355B 00:B54B: 85        .byte $85   ; 
- D 1 - I - 0x00355C 00:B54C: 44        .byte $44   ; 
- D 1 - I - 0x00355D 00:B54D: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00355E 00:B54E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00355F 00:B54F: 83        .byte $83   ; 
- D 1 - I - 0x003560 00:B550: 42        .byte $42   ; 
- D 1 - I - 0x003561 00:B551: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003563 00:B553: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003564 00:B554: 85        .byte $85   ; 
- D 1 - I - 0x003565 00:B555: 42        .byte $42   ; 
- D 1 - I - 0x003566 00:B556: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003567 00:B557: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003568 00:B558: 83        .byte $83   ; 
- D 1 - I - 0x003569 00:B559: 40        .byte $40   ; 
- D 1 - I - 0x00356A 00:B55A: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00356C 00:B55C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00356D 00:B55D: 85        .byte $85   ; 
- D 1 - I - 0x00356E 00:B55E: 40        .byte $40   ; 
- D 1 - I - 0x00356F 00:B55F: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003570 00:B560: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003571 00:B561: 83        .byte $83   ; 
- D 1 - I - 0x003572 00:B562: 3B        .byte $3B   ; 
- D 1 - I - 0x003573 00:B563: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003575 00:B565: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003576 00:B566: 85        .byte $85   ; 
- D 1 - I - 0x003577 00:B567: 3B        .byte $3B   ; 
- D 1 - I - 0x003578 00:B568: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003579 00:B569: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00357A 00:B56A: 83        .byte $83   ; 
- D 1 - I - 0x00357B 00:B56B: 40        .byte $40   ; 
- D 1 - I - 0x00357C 00:B56C: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00357E 00:B56E: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00357F 00:B56F: 40        .byte $40   ; 
- D 1 - I - 0x003580 00:B570: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003581 00:B571: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003582 00:B572: 83        .byte $83   ; 
- D 1 - I - 0x003583 00:B573: 42        .byte $42   ; 
- D 1 - I - 0x003584 00:B574: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003586 00:B576: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003587 00:B577: 42        .byte $42   ; 
- D 1 - I - 0x003588 00:B578: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x00358A 00:B57A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00358B 00:B57B: 83        .byte $83   ; 
- D 1 - I - 0x00358C 00:B57C: 44        .byte $44   ; 
- D 1 - I - 0x00358D 00:B57D: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x00358F 00:B57F: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003590 00:B580: 85        .byte $85   ; 
- D 1 - I - 0x003591 00:B581: 44        .byte $44   ; 
- D 1 - I - 0x003592 00:B582: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x003593 00:B583: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003594 00:B584: 83        .byte $83   ; 
- D 1 - I - 0x003595 00:B585: 42        .byte $42   ; 
- D 1 - I - 0x003596 00:B586: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x003598 00:B588: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003599 00:B589: 85        .byte $85   ; 
- D 1 - I - 0x00359A 00:B58A: 42        .byte $42   ; 
- D 1 - I - 0x00359B 00:B58B: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x00359C 00:B58C: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00359D 00:B58D: 83        .byte $83   ; 
- D 1 - I - 0x00359E 00:B58E: 44        .byte $44   ; 
- D 1 - I - 0x00359F 00:B58F: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035A1 00:B591: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035A2 00:B592: 85        .byte $85   ; 
- D 1 - I - 0x0035A3 00:B593: 44        .byte $44   ; 
- D 1 - I - 0x0035A4 00:B594: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035A5 00:B595: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035A6 00:B596: 83        .byte $83   ; 
- D 1 - I - 0x0035A7 00:B597: 42        .byte $42   ; 
- D 1 - I - 0x0035A8 00:B598: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035AA 00:B59A: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035AB 00:B59B: 85        .byte $85   ; 
- D 1 - I - 0x0035AC 00:B59C: 42        .byte $42   ; 
- D 1 - I - 0x0035AD 00:B59D: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035AE 00:B59E: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035AF 00:B59F: 83        .byte $83   ; 
- D 1 - I - 0x0035B0 00:B5A0: 44        .byte $44   ; 
- D 1 - I - 0x0035B1 00:B5A1: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035B3 00:B5A3: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035B4 00:B5A4: 44        .byte $44   ; 
- D 1 - I - 0x0035B5 00:B5A5: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035B6 00:B5A6: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035B7 00:B5A7: 83        .byte $83   ; 
- D 1 - I - 0x0035B8 00:B5A8: 42        .byte $42   ; 
- D 1 - I - 0x0035B9 00:B5A9: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035BB 00:B5AB: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035BC 00:B5AC: 42        .byte $42   ; 
- D 1 - I - 0x0035BD 00:B5AD: ED        .byte con_se_cb_ED, $15   ; 
- D 1 - I - 0x0035BF 00:B5AF: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035C0 00:B5B0: 83        .byte $83   ; 
- D 1 - I - 0x0035C1 00:B5B1: 44        .byte $44   ; 
- D 1 - I - 0x0035C2 00:B5B2: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035C4 00:B5B4: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035C5 00:B5B5: 85        .byte $85   ; 
- D 1 - I - 0x0035C6 00:B5B6: 44        .byte $44   ; 
- D 1 - I - 0x0035C7 00:B5B7: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035C8 00:B5B8: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035C9 00:B5B9: 83        .byte $83   ; 
- D 1 - I - 0x0035CA 00:B5BA: 42        .byte $42   ; 
- D 1 - I - 0x0035CB 00:B5BB: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035CD 00:B5BD: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035CE 00:B5BE: 85        .byte $85   ; 
- D 1 - I - 0x0035CF 00:B5BF: 42        .byte $42   ; 
- D 1 - I - 0x0035D0 00:B5C0: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035D1 00:B5C1: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035D2 00:B5C2: 83        .byte $83   ; 
- D 1 - I - 0x0035D3 00:B5C3: 44        .byte $44   ; 
- D 1 - I - 0x0035D4 00:B5C4: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035D6 00:B5C6: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035D7 00:B5C7: 85        .byte $85   ; 
- D 1 - I - 0x0035D8 00:B5C8: 44        .byte $44   ; 
- D 1 - I - 0x0035D9 00:B5C9: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035DA 00:B5CA: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035DB 00:B5CB: 83        .byte $83   ; 
- D 1 - I - 0x0035DC 00:B5CC: 42        .byte $42   ; 
- D 1 - I - 0x0035DD 00:B5CD: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035DF 00:B5CF: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035E0 00:B5D0: 85        .byte $85   ; 
- D 1 - I - 0x0035E1 00:B5D1: 42        .byte $42   ; 
- D 1 - I - 0x0035E2 00:B5D2: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035E3 00:B5D3: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035E4 00:B5D4: 83        .byte $83   ; 
- D 1 - I - 0x0035E5 00:B5D5: 40        .byte $40   ; 
- D 1 - I - 0x0035E6 00:B5D6: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035E8 00:B5D8: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035E9 00:B5D9: 40        .byte $40   ; 
- D 1 - I - 0x0035EA 00:B5DA: EF        .byte con_se_cb_EF   ; 
- D 1 - I - 0x0035EB 00:B5DB: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0035EC 00:B5DC: 83        .byte $83   ; 
- D 1 - I - 0x0035ED 00:B5DD: 3B        .byte $3B   ; 
- D 1 - I - 0x0035EE 00:B5DE: ED        .byte con_se_cb_ED, $08   ; 
- D 1 - I - 0x0035F0 00:B5E0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0035F1 00:B5E1: 3B        .byte $3B   ; 
- D 1 - I - 0x0035F2 00:B5E2: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x0035F4 00:B5E4: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x0035F6 00:B5E6: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0035F8 00:B5E8: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x0035FA 00:B5EA: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x0035FC 00:B5EC: 85        .byte $85   ; 
- D 1 - I - 0x0035FD 00:B5ED: 83        .byte $83   ; 
- D 1 - I - 0x0035FE 00:B5EE: 37        .byte $37   ; 
- D 1 - I - 0x0035FF 00:B5EF: 34        .byte $34   ; 
- D 1 - I - 0x003600 00:B5F0: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003602 00:B5F2: 85        .byte $85   ; 
- D 1 - I - 0x003603 00:B5F3: 37        .byte $37   ; 
- D 1 - I - 0x003604 00:B5F4: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003606 00:B5F6: 85        .byte $85   ; 
- D 1 - I - 0x003607 00:B5F7: 83        .byte $83   ; 
- D 1 - I - 0x003608 00:B5F8: 32        .byte $32   ; 
- D 1 - I - 0x003609 00:B5F9: 37        .byte $37   ; 
- D 1 - I - 0x00360A 00:B5FA: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x00360C 00:B5FC: 85        .byte $85   ; 
- D 1 - I - 0x00360D 00:B5FD: 32        .byte $32   ; 
- D 1 - I - 0x00360E 00:B5FE: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003610 00:B600: 85        .byte $85   ; 
- D 1 - I - 0x003611 00:B601: 83        .byte $83   ; 
- D 1 - I - 0x003612 00:B602: 34        .byte $34   ; 
- D 1 - I - 0x003613 00:B603: 34        .byte $34   ; 
- D 1 - I - 0x003614 00:B604: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003616 00:B606: 85        .byte $85   ; 
- D 1 - I - 0x003617 00:B607: 37        .byte $37   ; 
- D 1 - I - 0x003618 00:B608: 83        .byte $83   ; 
- D 1 - I - 0x003619 00:B609: 39        .byte $39   ; 
- D 1 - I - 0x00361A 00:B60A: 85        .byte $85   ; 
- D 1 - I - 0x00361B 00:B60B: 39        .byte $39   ; 
- D 1 - I - 0x00361C 00:B60C: 83        .byte $83   ; 
- D 1 - I - 0x00361D 00:B60D: 39        .byte $39   ; 
- D 1 - I - 0x00361E 00:B60E: 85        .byte $85   ; 
- D 1 - I - 0x00361F 00:B60F: 37        .byte $37   ; 
- D 1 - I - 0x003620 00:B610: 36        .byte $36   ; 
- D 1 - I - 0x003621 00:B611: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003622 00:B612: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x003624 00:B614: 85        .byte $85   ; 
- D 1 - I - 0x003625 00:B615: 83        .byte $83   ; 
- D 1 - I - 0x003626 00:B616: 37        .byte $37   ; 
- D 1 - I - 0x003627 00:B617: 34        .byte $34   ; 
- D 1 - I - 0x003628 00:B618: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x00362A 00:B61A: 85        .byte $85   ; 
- D 1 - I - 0x00362B 00:B61B: 37        .byte $37   ; 
- D 1 - I - 0x00362C 00:B61C: E0        .byte con_se_cb_E0, $0B   ; 
- D 1 - I - 0x00362E 00:B61E: 85        .byte $85   ; 
- D 1 - I - 0x00362F 00:B61F: 83        .byte $83   ; 
- D 1 - I - 0x003630 00:B620: 32        .byte $32   ; 
- D 1 - I - 0x003631 00:B621: 37        .byte $37   ; 
- D 1 - I - 0x003632 00:B622: E0        .byte con_se_cb_E0, $0C   ; 
- D 1 - I - 0x003634 00:B624: 85        .byte $85   ; 
- D 1 - I - 0x003635 00:B625: 32        .byte $32   ; 
- D 1 - I - 0x003636 00:B626: E0        .byte con_se_cb_E0, $17   ; 
- D 1 - I - 0x003638 00:B628: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003639 00:B629: 85        .byte $85   ; 
- D 1 - I - 0x00363A 00:B62A: 83        .byte $83   ; 
- D 1 - I - 0x00363B 00:B62B: 37        .byte $37   ; 
- D 1 - I - 0x00363C 00:B62C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00363D 00:B62D: 37        .byte $37   ; 
- D 1 - I - 0x00363E 00:B62E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00363F 00:B62F: 85        .byte $85   ; 
- D 1 - I - 0x003640 00:B630: 37        .byte $37   ; 
- D 1 - I - 0x003641 00:B631: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003642 00:B632: 83        .byte $83   ; 
- D 1 - I - 0x003643 00:B633: 85        .byte $85   ; 
- D 1 - I - 0x003644 00:B634: 37        .byte $37   ; 
- D 1 - I - 0x003645 00:B635: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003646 00:B636: 39        .byte $39   ; 
- D 1 - I - 0x003647 00:B637: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003648 00:B638: 85        .byte $85   ; 
- D 1 - I - 0x003649 00:B639: 3B        .byte $3B   ; 
- D 1 - I - 0x00364A 00:B63A: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x00364B 00:B63B: 06 B4     .word off_E8_B406
ofs_E9_B63D:
- D 1 - I - 0x00364D 00:B63D: E0        .byte con_se_cb_E0, $05   ; 
- D 1 - I - 0x00364F 00:B63F: E2        .byte con_se_cb_E2, $C0   ; 
- D 1 - I - 0x003651 00:B641: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003652 00:B642: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x003654 00:B644: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003655 00:B645: 87        .byte $87   ; 
- D 1 - I - 0x003656 00:B646: 37        .byte $37   ; 
- D 1 - I - 0x003657 00:B647: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003658 00:B648: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00365A 00:B64A: 37        .byte $37   ; 
- D 1 - I - 0x00365B 00:B64B: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x00365D 00:B64D: 85        .byte $85   ; 
- D 1 - I - 0x00365E 00:B64E: 83        .byte $83   ; 
- D 1 - I - 0x00365F 00:B64F: 36        .byte $36   ; 
- D 1 - I - 0x003660 00:B650: E0        .byte con_se_cb_E0, $07   ; 
- D 1 - I - 0x003662 00:B652: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003663 00:B653: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x003665 00:B655: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003666 00:B656: 83        .byte $83   ; 
- D 1 - I - 0x003667 00:B657: 37        .byte $37   ; 
- D 1 - I - 0x003668 00:B658: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00366A 00:B65A: 87        .byte $87   ; 
- D 1 - I - 0x00366B 00:B65B: 37        .byte $37   ; 
- D 1 - I - 0x00366C 00:B65C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00366D 00:B65D: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00366F 00:B65F: 89        .byte $89   ; 
- D 1 - I - 0x003670 00:B660: 37        .byte $37   ; 
- D 1 - I - 0x003671 00:B661: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x003673 00:B663: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003674 00:B664: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x003676 00:B666: 85        .byte $85   ; 
- D 1 - I - 0x003677 00:B667: 83        .byte $83   ; 
- D 1 - I - 0x003678 00:B668: 36        .byte $36   ; 
- D 1 - I - 0x003679 00:B669: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00367A 00:B66A: 37        .byte $37   ; 
- D 1 - I - 0x00367B 00:B66B: 85        .byte $85   ; 
- D 1 - I - 0x00367C 00:B66C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00367D 00:B66D: 36        .byte $36   ; 
- D 1 - I - 0x00367E 00:B66E: 85        .byte $85   ; 
- D 1 - I - 0x00367F 00:B66F: 83        .byte $83   ; 
- D 1 - I - 0x003680 00:B670: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003681 00:B671: 37        .byte $37   ; 
- D 1 - I - 0x003682 00:B672: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003683 00:B673: 36        .byte $36   ; 
- D 1 - I - 0x003684 00:B674: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003685 00:B675: 34        .byte $34   ; 
- D 1 - I - 0x003686 00:B676: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003687 00:B677: 36        .byte $36   ; 
- D 1 - I - 0x003688 00:B678: 85        .byte $85   ; 
- D 1 - I - 0x003689 00:B679: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00368A 00:B67A: 37        .byte $37   ; 
- D 1 - I - 0x00368B 00:B67B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00368C 00:B67C: 36        .byte $36   ; 
- D 1 - I - 0x00368D 00:B67D: 83        .byte $83   ; 
- D 1 - I - 0x00368E 00:B67E: 85        .byte $85   ; 
- D 1 - I - 0x00368F 00:B67F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003690 00:B680: 37        .byte $37   ; 
- D 1 - I - 0x003691 00:B681: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003692 00:B682: 36        .byte $36   ; 
- D 1 - I - 0x003693 00:B683: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003694 00:B684: 34        .byte $34   ; 
- D 1 - I - 0x003695 00:B685: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003696 00:B686: 36        .byte $36   ; 
- D 1 - I - 0x003697 00:B687: 85        .byte $85   ; 
- D 1 - I - 0x003698 00:B688: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003699 00:B689: 37        .byte $37   ; 
- D 1 - I - 0x00369A 00:B68A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00369B 00:B68B: 36        .byte $36   ; 
- D 1 - I - 0x00369C 00:B68C: E0        .byte con_se_cb_E0, $05   ; 
- D 1 - I - 0x00369E 00:B68E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00369F 00:B68F: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0036A1 00:B691: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0036A2 00:B692: 87        .byte $87   ; 
- D 1 - I - 0x0036A3 00:B693: 37        .byte $37   ; 
- D 1 - I - 0x0036A4 00:B694: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0036A5 00:B695: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0036A7 00:B697: 37        .byte $37   ; 
- D 1 - I - 0x0036A8 00:B698: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x0036AA 00:B69A: 85        .byte $85   ; 
- D 1 - I - 0x0036AB 00:B69B: 83        .byte $83   ; 
- D 1 - I - 0x0036AC 00:B69C: 36        .byte $36   ; 
- D 1 - I - 0x0036AD 00:B69D: E0        .byte con_se_cb_E0, $07   ; 
- D 1 - I - 0x0036AF 00:B69F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036B0 00:B6A0: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0036B2 00:B6A2: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0036B3 00:B6A3: 87        .byte $87   ; 
- D 1 - I - 0x0036B4 00:B6A4: 37        .byte $37   ; 
- D 1 - I - 0x0036B5 00:B6A5: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0036B7 00:B6A7: 83        .byte $83   ; 
- D 1 - I - 0x0036B8 00:B6A8: 37        .byte $37   ; 
- D 1 - I - 0x0036B9 00:B6A9: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0036BA 00:B6AA: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0036BC 00:B6AC: 89        .byte $89   ; 
- D 1 - I - 0x0036BD 00:B6AD: 37        .byte $37   ; 
- D 1 - I - 0x0036BE 00:B6AE: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x0036C0 00:B6B0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036C1 00:B6B1: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0036C3 00:B6B3: 85        .byte $85   ; 
- D 1 - I - 0x0036C4 00:B6B4: 83        .byte $83   ; 
- D 1 - I - 0x0036C5 00:B6B5: 36        .byte $36   ; 
- D 1 - I - 0x0036C6 00:B6B6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036C7 00:B6B7: 37        .byte $37   ; 
- D 1 - I - 0x0036C8 00:B6B8: 85        .byte $85   ; 
- D 1 - I - 0x0036C9 00:B6B9: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036CA 00:B6BA: 36        .byte $36   ; 
- D 1 - I - 0x0036CB 00:B6BB: 85        .byte $85   ; 
- D 1 - I - 0x0036CC 00:B6BC: 83        .byte $83   ; 
- D 1 - I - 0x0036CD 00:B6BD: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036CE 00:B6BE: 37        .byte $37   ; 
- D 1 - I - 0x0036CF 00:B6BF: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036D0 00:B6C0: 36        .byte $36   ; 
- D 1 - I - 0x0036D1 00:B6C1: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036D2 00:B6C2: 34        .byte $34   ; 
- D 1 - I - 0x0036D3 00:B6C3: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036D4 00:B6C4: 36        .byte $36   ; 
- D 1 - I - 0x0036D5 00:B6C5: 85        .byte $85   ; 
- D 1 - I - 0x0036D6 00:B6C6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036D7 00:B6C7: 37        .byte $37   ; 
- D 1 - I - 0x0036D8 00:B6C8: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036D9 00:B6C9: 36        .byte $36   ; 
- D 1 - I - 0x0036DA 00:B6CA: 83        .byte $83   ; 
- D 1 - I - 0x0036DB 00:B6CB: 85        .byte $85   ; 
- D 1 - I - 0x0036DC 00:B6CC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036DD 00:B6CD: 37        .byte $37   ; 
- D 1 - I - 0x0036DE 00:B6CE: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036DF 00:B6CF: 39        .byte $39   ; 
- D 1 - I - 0x0036E0 00:B6D0: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036E1 00:B6D1: 3B        .byte $3B   ; 
- D 1 - I - 0x0036E2 00:B6D2: 40        .byte $40   ; 
- D 1 - I - 0x0036E3 00:B6D3: 85        .byte $85   ; 
- D 1 - I - 0x0036E4 00:B6D4: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036E5 00:B6D5: 3B        .byte $3B   ; 
- D 1 - I - 0x0036E6 00:B6D6: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036E7 00:B6D7: 39        .byte $39   ; 
- D 1 - I - 0x0036E8 00:B6D8: E0        .byte con_se_cb_E0, $05   ; 
- D 1 - I - 0x0036EA 00:B6DA: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036EB 00:B6DB: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0036ED 00:B6DD: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0036EE 00:B6DE: 87        .byte $87   ; 
- D 1 - I - 0x0036EF 00:B6DF: 3B        .byte $3B   ; 
- D 1 - I - 0x0036F0 00:B6E0: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0036F1 00:B6E1: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0036F3 00:B6E3: 3B        .byte $3B   ; 
- D 1 - I - 0x0036F4 00:B6E4: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x0036F6 00:B6E6: 85        .byte $85   ; 
- D 1 - I - 0x0036F7 00:B6E7: 83        .byte $83   ; 
- D 1 - I - 0x0036F8 00:B6E8: 39        .byte $39   ; 
- D 1 - I - 0x0036F9 00:B6E9: E0        .byte con_se_cb_E0, $07   ; 
- D 1 - I - 0x0036FB 00:B6EB: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x0036FC 00:B6EC: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x0036FE 00:B6EE: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0036FF 00:B6EF: 87        .byte $87   ; 
- D 1 - I - 0x003700 00:B6F0: 3B        .byte $3B   ; 
- D 1 - I - 0x003701 00:B6F1: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x003703 00:B6F3: 83        .byte $83   ; 
- D 1 - I - 0x003704 00:B6F4: 3B        .byte $3B   ; 
- D 1 - I - 0x003705 00:B6F5: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003706 00:B6F6: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x003708 00:B6F8: 89        .byte $89   ; 
- D 1 - I - 0x003709 00:B6F9: 3B        .byte $3B   ; 
- D 1 - I - 0x00370A 00:B6FA: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x00370C 00:B6FC: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00370D 00:B6FD: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00370F 00:B6FF: 85        .byte $85   ; 
- D 1 - I - 0x003710 00:B700: 83        .byte $83   ; 
- D 1 - I - 0x003711 00:B701: 39        .byte $39   ; 
- D 1 - I - 0x003712 00:B702: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003713 00:B703: 3B        .byte $3B   ; 
- D 1 - I - 0x003714 00:B704: 85        .byte $85   ; 
- D 1 - I - 0x003715 00:B705: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003716 00:B706: 39        .byte $39   ; 
- D 1 - I - 0x003717 00:B707: 85        .byte $85   ; 
- D 1 - I - 0x003718 00:B708: 83        .byte $83   ; 
- D 1 - I - 0x003719 00:B709: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00371A 00:B70A: 3B        .byte $3B   ; 
- D 1 - I - 0x00371B 00:B70B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00371C 00:B70C: 39        .byte $39   ; 
- D 1 - I - 0x00371D 00:B70D: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00371E 00:B70E: 37        .byte $37   ; 
- D 1 - I - 0x00371F 00:B70F: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003720 00:B710: 36        .byte $36   ; 
- D 1 - I - 0x003721 00:B711: 85        .byte $85   ; 
- D 1 - I - 0x003722 00:B712: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003723 00:B713: 34        .byte $34   ; 
- D 1 - I - 0x003724 00:B714: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003725 00:B715: 36        .byte $36   ; 
- D 1 - I - 0x003726 00:B716: 83        .byte $83   ; 
- D 1 - I - 0x003727 00:B717: 85        .byte $85   ; 
- D 1 - I - 0x003728 00:B718: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003729 00:B719: 37        .byte $37   ; 
- D 1 - I - 0x00372A 00:B71A: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00372B 00:B71B: 39        .byte $39   ; 
- D 1 - I - 0x00372C 00:B71C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00372D 00:B71D: 3B        .byte $3B   ; 
- D 1 - I - 0x00372E 00:B71E: 40        .byte $40   ; 
- D 1 - I - 0x00372F 00:B71F: 85        .byte $85   ; 
- D 1 - I - 0x003730 00:B720: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003731 00:B721: 3B        .byte $3B   ; 
- D 1 - I - 0x003732 00:B722: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003733 00:B723: 39        .byte $39   ; 
- D 1 - I - 0x003734 00:B724: E0        .byte con_se_cb_E0, $05   ; 
- D 1 - I - 0x003736 00:B726: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003737 00:B727: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x003739 00:B729: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00373A 00:B72A: 87        .byte $87   ; 
- D 1 - I - 0x00373B 00:B72B: 3B        .byte $3B   ; 
- D 1 - I - 0x00373C 00:B72C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00373D 00:B72D: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00373F 00:B72F: 3B        .byte $3B   ; 
- D 1 - I - 0x003740 00:B730: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x003742 00:B732: 85        .byte $85   ; 
- D 1 - I - 0x003743 00:B733: 83        .byte $83   ; 
- D 1 - I - 0x003744 00:B734: 39        .byte $39   ; 
- D 1 - I - 0x003745 00:B735: E0        .byte con_se_cb_E0, $07   ; 
- D 1 - I - 0x003747 00:B737: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003748 00:B738: ED        .byte con_se_cb_ED, $14   ; 
- D 1 - I - 0x00374A 00:B73A: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00374B 00:B73B: 87        .byte $87   ; 
- D 1 - I - 0x00374C 00:B73C: 3B        .byte $3B   ; 
- D 1 - I - 0x00374D 00:B73D: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00374F 00:B73F: 83        .byte $83   ; 
- D 1 - I - 0x003750 00:B740: 3B        .byte $3B   ; 
- D 1 - I - 0x003751 00:B741: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003752 00:B742: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x003754 00:B744: 89        .byte $89   ; 
- D 1 - I - 0x003755 00:B745: 3B        .byte $3B   ; 
- D 1 - I - 0x003756 00:B746: E0        .byte con_se_cb_E0, $06   ; 
- D 1 - I - 0x003758 00:B748: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003759 00:B749: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00375B 00:B74B: 85        .byte $85   ; 
- D 1 - I - 0x00375C 00:B74C: 83        .byte $83   ; 
- D 1 - I - 0x00375D 00:B74D: 39        .byte $39   ; 
- D 1 - I - 0x00375E 00:B74E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00375F 00:B74F: 3B        .byte $3B   ; 
- D 1 - I - 0x003760 00:B750: 85        .byte $85   ; 
- D 1 - I - 0x003761 00:B751: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003762 00:B752: 39        .byte $39   ; 
- D 1 - I - 0x003763 00:B753: 85        .byte $85   ; 
- D 1 - I - 0x003764 00:B754: 83        .byte $83   ; 
- D 1 - I - 0x003765 00:B755: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003766 00:B756: 3B        .byte $3B   ; 
- D 1 - I - 0x003767 00:B757: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003768 00:B758: 39        .byte $39   ; 
- D 1 - I - 0x003769 00:B759: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00376A 00:B75A: 37        .byte $37   ; 
- D 1 - I - 0x00376B 00:B75B: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00376C 00:B75C: 36        .byte $36   ; 
- D 1 - I - 0x00376D 00:B75D: 85        .byte $85   ; 
- D 1 - I - 0x00376E 00:B75E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00376F 00:B75F: 34        .byte $34   ; 
- D 1 - I - 0x003770 00:B760: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003771 00:B761: 36        .byte $36   ; 
- D 1 - I - 0x003772 00:B762: 83        .byte $83   ; 
- D 1 - I - 0x003773 00:B763: 85        .byte $85   ; 
- D 1 - I - 0x003774 00:B764: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003775 00:B765: 37        .byte $37   ; 
- D 1 - I - 0x003776 00:B766: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003777 00:B767: 39        .byte $39   ; 
- D 1 - I - 0x003778 00:B768: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x003779 00:B769: 37        .byte $37   ; 
- D 1 - I - 0x00377A 00:B76A: 3B        .byte $3B   ; 
- D 1 - I - 0x00377B 00:B76B: 85        .byte $85   ; 
- D 1 - I - 0x00377C 00:B76C: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00377D 00:B76D: 39        .byte $39   ; 
- D 1 - I - 0x00377E 00:B76E: F2        .byte con_se_cb_F2   ; 
- D 1 - I - 0x00377F 00:B76F: 36        .byte $36   ; 
- D 1 - I - 0x003780 00:B770: E2        .byte con_se_cb_E2, $40   ; 
- D 1 - I - 0x003782 00:B772: E3        .byte con_se_cb_E3, $02   ; 
- D 1 - I - 0x003784 00:B774: E0        .byte con_se_cb_E0, $07   ; 
- D 1 - I - 0x003786 00:B776: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003787 00:B777: 85        .byte $85   ; 
- D 1 - I - 0x003788 00:B778: 37        .byte $37   ; 
- D 1 - I - 0x003789 00:B779: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x00378B 00:B77B: 87        .byte $87   ; 
- D 1 - I - 0x00378C 00:B77C: 37        .byte $37   ; 
- D 1 - I - 0x00378D 00:B77D: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00378F 00:B77F: 37        .byte $37   ; 
- D 1 - I - 0x003790 00:B780: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x003792 00:B782: 37        .byte $37   ; 
- D 1 - I - 0x003793 00:B783: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x003794 00:B784: 85        .byte $85   ; 
- D 1 - I - 0x003795 00:B785: 37        .byte $37   ; 
- D 1 - I - 0x003796 00:B786: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x003797 00:B787: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x003799 00:B789: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x00379A 00:B78A: 87        .byte $87   ; 
- D 1 - I - 0x00379B 00:B78B: 39        .byte $39   ; 
- D 1 - I - 0x00379C 00:B78C: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x00379D 00:B78D: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x00379F 00:B78F: 39        .byte $39   ; 
- D 1 - I - 0x0037A0 00:B790: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0037A2 00:B792: 37        .byte $37   ; 
- D 1 - I - 0x0037A3 00:B793: 39        .byte $39   ; 
- D 1 - I - 0x0037A4 00:B794: F3        .byte con_se_cb_F3   ; 
- D 1 - I - 0x0037A5 00:B795: 85        .byte $85   ; 
- D 1 - I - 0x0037A6 00:B796: 37        .byte $37   ; 
- D 1 - I - 0x0037A7 00:B797: ED        .byte con_se_cb_ED, $0D   ; 
- D 1 - I - 0x0037A9 00:B799: 87        .byte $87   ; 
- D 1 - I - 0x0037AA 00:B79A: 37        .byte $37   ; 
- D 1 - I - 0x0037AB 00:B79B: ED        .byte con_se_cb_ED, $0E   ; 
- D 1 - I - 0x0037AD 00:B79D: 37        .byte $37   ; 
- D 1 - I - 0x0037AE 00:B79E: ED        .byte con_se_cb_ED, $0F   ; 
- D 1 - I - 0x0037B0 00:B7A0: 37        .byte $37   ; 
- D 1 - I - 0x0037B1 00:B7A1: F4        .byte con_se_cb_F4   ; 
- D 1 - I - 0x0037B2 00:B7A2: 85        .byte $85   ; 
- D 1 - I - 0x0037B3 00:B7A3: 37        .byte $37   ; 
- D 1 - I - 0x0037B4 00:B7A4: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x0037B6 00:B7A6: E2        .byte con_se_cb_E2, $80   ; 
- D 1 - I - 0x0037B8 00:B7A8: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x0037BA 00:B7AA: ED        .byte con_se_cb_ED, $13   ; 
- D 1 - I - 0x0037BC 00:B7AC: EA        .byte con_se_cb_rts   ; 



off_ch_10_B7AD_06:
- D 1 - I - 0x0037BD 00:B7AD: ED        .byte con_se_cb_ED, $12   ; 
- D 1 - I - 0x0037BF 00:B7AF: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x0037C1 00:B7B1: EB        .byte con_se_cb_EB, $04   ; 
- D 1 - I - 0x0037C3 00:B7B3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0037C5 00:B7B5: 85        .byte $85   ; 
- D 1 - I - 0x0037C6 00:B7B6: 24        .byte $24   ; 
- D 1 - I - 0x0037C7 00:B7B7: 2B        .byte $2B   ; 
- D 1 - I - 0x0037C8 00:B7B8: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0037CA 00:B7BA: 83        .byte $83   ; 
- D 1 - I - 0x0037CB 00:B7BB: 29        .byte $29   ; 
- D 1 - I - 0x0037CC 00:B7BC: 0C        .byte $0C   ; 
- D 1 - I - 0x0037CD 00:B7BD: 27        .byte $27   ; 
- D 1 - I - 0x0037CE 00:B7BE: 27        .byte $27   ; 
- D 1 - I - 0x0037CF 00:B7BF: 0C        .byte $0C   ; 
- D 1 - I - 0x0037D0 00:B7C0: 26        .byte $26   ; 
- D 1 - I - 0x0037D1 00:B7C1: 0C        .byte $0C   ; 
- D 1 - I - 0x0037D2 00:B7C2: 27        .byte $27   ; 
- D 1 - I - 0x0037D3 00:B7C3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0037D5 00:B7C5: 85        .byte $85   ; 
- D 1 - I - 0x0037D6 00:B7C6: 26        .byte $26   ; 
- D 1 - I - 0x0037D7 00:B7C7: 22        .byte $22   ; 
- D 1 - I - 0x0037D8 00:B7C8: EC        .byte con_se_cb_EC   ; 
off_E8_B7C9:
- D 1 - I - 0x0037D9 00:B7C9: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0037DB 00:B7CB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0037DD 00:B7CD: 85        .byte $85   ; 
- D 1 - I - 0x0037DE 00:B7CE: 24        .byte $24   ; 
- D 1 - I - 0x0037DF 00:B7CF: 2B        .byte $2B   ; 
- D 1 - I - 0x0037E0 00:B7D0: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0037E2 00:B7D2: 83        .byte $83   ; 
- D 1 - I - 0x0037E3 00:B7D3: 29        .byte $29   ; 
- D 1 - I - 0x0037E4 00:B7D4: 0C        .byte $0C   ; 
- D 1 - I - 0x0037E5 00:B7D5: 27        .byte $27   ; 
- D 1 - I - 0x0037E6 00:B7D6: 27        .byte $27   ; 
- D 1 - I - 0x0037E7 00:B7D7: 0C        .byte $0C   ; 
- D 1 - I - 0x0037E8 00:B7D8: 26        .byte $26   ; 
- D 1 - I - 0x0037E9 00:B7D9: 0C        .byte $0C   ; 
- D 1 - I - 0x0037EA 00:B7DA: 27        .byte $27   ; 
- D 1 - I - 0x0037EB 00:B7DB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0037ED 00:B7DD: 85        .byte $85   ; 
- D 1 - I - 0x0037EE 00:B7DE: 26        .byte $26   ; 
- D 1 - I - 0x0037EF 00:B7DF: 22        .byte $22   ; 
- D 1 - I - 0x0037F0 00:B7E0: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0037F1 00:B7E1: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0037F3 00:B7E3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0037F5 00:B7E5: 85        .byte $85   ; 
- D 1 - I - 0x0037F6 00:B7E6: 22        .byte $22   ; 
- D 1 - I - 0x0037F7 00:B7E7: 29        .byte $29   ; 
- D 1 - I - 0x0037F8 00:B7E8: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0037FA 00:B7EA: 83        .byte $83   ; 
- D 1 - I - 0x0037FB 00:B7EB: 27        .byte $27   ; 
- D 1 - I - 0x0037FC 00:B7EC: 0C        .byte $0C   ; 
- D 1 - I - 0x0037FD 00:B7ED: 26        .byte $26   ; 
- D 1 - I - 0x0037FE 00:B7EE: 26        .byte $26   ; 
- D 1 - I - 0x0037FF 00:B7EF: 0C        .byte $0C   ; 
- D 1 - I - 0x003800 00:B7F0: 26        .byte $26   ; 
- D 1 - I - 0x003801 00:B7F1: 0C        .byte $0C   ; 
- D 1 - I - 0x003802 00:B7F2: 29        .byte $29   ; 
- D 1 - I - 0x003803 00:B7F3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003805 00:B7F5: 85        .byte $85   ; 
- D 1 - I - 0x003806 00:B7F6: 26        .byte $26   ; 
- D 1 - I - 0x003807 00:B7F7: 22        .byte $22   ; 
- D 1 - I - 0x003808 00:B7F8: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003809 00:B7F9: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x00380B 00:B7FB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00380D 00:B7FD: 85        .byte $85   ; 
- D 1 - I - 0x00380E 00:B7FE: 24        .byte $24   ; 
- D 1 - I - 0x00380F 00:B7FF: 2B        .byte $2B   ; 
- D 1 - I - 0x003810 00:B800: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003812 00:B802: 83        .byte $83   ; 
- D 1 - I - 0x003813 00:B803: 29        .byte $29   ; 
- D 1 - I - 0x003814 00:B804: 0C        .byte $0C   ; 
- D 1 - I - 0x003815 00:B805: 27        .byte $27   ; 
- D 1 - I - 0x003816 00:B806: 27        .byte $27   ; 
- D 1 - I - 0x003817 00:B807: 0C        .byte $0C   ; 
- D 1 - I - 0x003818 00:B808: 26        .byte $26   ; 
- D 1 - I - 0x003819 00:B809: 0C        .byte $0C   ; 
- D 1 - I - 0x00381A 00:B80A: 27        .byte $27   ; 
- D 1 - I - 0x00381B 00:B80B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00381D 00:B80D: 85        .byte $85   ; 
- D 1 - I - 0x00381E 00:B80E: 26        .byte $26   ; 
- D 1 - I - 0x00381F 00:B80F: 22        .byte $22   ; 
- D 1 - I - 0x003820 00:B810: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003821 00:B811: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003823 00:B813: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003825 00:B815: 85        .byte $85   ; 
- D 1 - I - 0x003826 00:B816: 22        .byte $22   ; 
- D 1 - I - 0x003827 00:B817: 29        .byte $29   ; 
- D 1 - I - 0x003828 00:B818: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00382A 00:B81A: 83        .byte $83   ; 
- D 1 - I - 0x00382B 00:B81B: 27        .byte $27   ; 
- D 1 - I - 0x00382C 00:B81C: 0C        .byte $0C   ; 
- D 1 - I - 0x00382D 00:B81D: 26        .byte $26   ; 
- D 1 - I - 0x00382E 00:B81E: 26        .byte $26   ; 
- D 1 - I - 0x00382F 00:B81F: 0C        .byte $0C   ; 
- D 1 - I - 0x003830 00:B820: 26        .byte $26   ; 
- D 1 - I - 0x003831 00:B821: 0C        .byte $0C   ; 
- D 1 - I - 0x003832 00:B822: 29        .byte $29   ; 
- D 1 - I - 0x003833 00:B823: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003835 00:B825: 85        .byte $85   ; 
- D 1 - I - 0x003836 00:B826: 26        .byte $26   ; 
- D 1 - I - 0x003837 00:B827: 22        .byte $22   ; 
- D 1 - I - 0x003838 00:B828: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003839 00:B829: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x00383B 00:B82B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00383D 00:B82D: 85        .byte $85   ; 
- D 1 - I - 0x00383E 00:B82E: 24        .byte $24   ; 
- D 1 - I - 0x00383F 00:B82F: 2B        .byte $2B   ; 
- D 1 - I - 0x003840 00:B830: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003842 00:B832: 83        .byte $83   ; 
- D 1 - I - 0x003843 00:B833: 29        .byte $29   ; 
- D 1 - I - 0x003844 00:B834: 0C        .byte $0C   ; 
- D 1 - I - 0x003845 00:B835: 27        .byte $27   ; 
- D 1 - I - 0x003846 00:B836: 27        .byte $27   ; 
- D 1 - I - 0x003847 00:B837: 0C        .byte $0C   ; 
- D 1 - I - 0x003848 00:B838: 26        .byte $26   ; 
- D 1 - I - 0x003849 00:B839: 0C        .byte $0C   ; 
- D 1 - I - 0x00384A 00:B83A: 27        .byte $27   ; 
- D 1 - I - 0x00384B 00:B83B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00384D 00:B83D: 85        .byte $85   ; 
- D 1 - I - 0x00384E 00:B83E: 26        .byte $26   ; 
- D 1 - I - 0x00384F 00:B83F: 22        .byte $22   ; 
- D 1 - I - 0x003850 00:B840: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003852 00:B842: 85        .byte $85   ; 
- D 1 - I - 0x003853 00:B843: 24        .byte $24   ; 
- D 1 - I - 0x003854 00:B844: 2B        .byte $2B   ; 
- D 1 - I - 0x003855 00:B845: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003857 00:B847: 83        .byte $83   ; 
- D 1 - I - 0x003858 00:B848: 27        .byte $27   ; 
- D 1 - I - 0x003859 00:B849: 0C        .byte $0C   ; 
- D 1 - I - 0x00385A 00:B84A: 32        .byte $32   ; 
- D 1 - I - 0x00385B 00:B84B: 2B        .byte $2B   ; 
- D 1 - I - 0x00385C 00:B84C: 0C        .byte $0C   ; 
- D 1 - I - 0x00385D 00:B84D: 27        .byte $27   ; 
- D 1 - I - 0x00385E 00:B84E: 0C        .byte $0C   ; 
- D 1 - I - 0x00385F 00:B84F: 27        .byte $27   ; 
- D 1 - I - 0x003860 00:B850: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003862 00:B852: 85        .byte $85   ; 
- D 1 - I - 0x003863 00:B853: 29        .byte $29   ; 
- D 1 - I - 0x003864 00:B854: 26        .byte $26   ; 
- D 1 - I - 0x003865 00:B855: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003867 00:B857: 85        .byte $85   ; 
- D 1 - I - 0x003868 00:B858: 22        .byte $22   ; 
- D 1 - I - 0x003869 00:B859: 29        .byte $29   ; 
- D 1 - I - 0x00386A 00:B85A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00386C 00:B85C: 83        .byte $83   ; 
- D 1 - I - 0x00386D 00:B85D: 27        .byte $27   ; 
- D 1 - I - 0x00386E 00:B85E: 0C        .byte $0C   ; 
- D 1 - I - 0x00386F 00:B85F: 26        .byte $26   ; 
- D 1 - I - 0x003870 00:B860: 26        .byte $26   ; 
- D 1 - I - 0x003871 00:B861: 0C        .byte $0C   ; 
- D 1 - I - 0x003872 00:B862: 26        .byte $26   ; 
- D 1 - I - 0x003873 00:B863: 0C        .byte $0C   ; 
- D 1 - I - 0x003874 00:B864: 29        .byte $29   ; 
- D 1 - I - 0x003875 00:B865: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003877 00:B867: 85        .byte $85   ; 
- D 1 - I - 0x003878 00:B868: 26        .byte $26   ; 
- D 1 - I - 0x003879 00:B869: 22        .byte $22   ; 
- D 1 - I - 0x00387A 00:B86A: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00387C 00:B86C: 85        .byte $85   ; 
- D 1 - I - 0x00387D 00:B86D: 22        .byte $22   ; 
- D 1 - I - 0x00387E 00:B86E: 29        .byte $29   ; 
- D 1 - I - 0x00387F 00:B86F: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003881 00:B871: 83        .byte $83   ; 
- D 1 - I - 0x003882 00:B872: 26        .byte $26   ; 
- D 1 - I - 0x003883 00:B873: 0C        .byte $0C   ; 
- D 1 - I - 0x003884 00:B874: 27        .byte $27   ; 
- D 1 - I - 0x003885 00:B875: 32        .byte $32   ; 
- D 1 - I - 0x003886 00:B876: 0C        .byte $0C   ; 
- D 1 - I - 0x003887 00:B877: 32        .byte $32   ; 
- D 1 - I - 0x003888 00:B878: 0C        .byte $0C   ; 
- D 1 - I - 0x003889 00:B879: 29        .byte $29   ; 
- D 1 - I - 0x00388A 00:B87A: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00388C 00:B87C: 85        .byte $85   ; 
- D 1 - I - 0x00388D 00:B87D: 29        .byte $29   ; 
- D 1 - I - 0x00388E 00:B87E: 26        .byte $26   ; 
- D 1 - I - 0x00388F 00:B87F: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003890 00:B880: 20        .byte $20   ; 
- D 1 - I - 0x003891 00:B881: 30        .byte $30   ; 
- D 1 - I - 0x003892 00:B882: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003894 00:B884: 83        .byte $83   ; 
- D 1 - I - 0x003895 00:B885: 20        .byte $20   ; 
- D 1 - I - 0x003896 00:B886: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003898 00:B888: 85        .byte $85   ; 
- D 1 - I - 0x003899 00:B889: 30        .byte $30   ; 
- D 1 - I - 0x00389A 00:B88A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00389C 00:B88C: 83        .byte $83   ; 
- D 1 - I - 0x00389D 00:B88D: 30        .byte $30   ; 
- D 1 - I - 0x00389E 00:B88E: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038A0 00:B890: 85        .byte $85   ; 
- D 1 - I - 0x0038A1 00:B891: 20        .byte $20   ; 
- D 1 - I - 0x0038A2 00:B892: 30        .byte $30   ; 
- D 1 - I - 0x0038A3 00:B893: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038A5 00:B895: 83        .byte $83   ; 
- D 1 - I - 0x0038A6 00:B896: 20        .byte $20   ; 
- D 1 - I - 0x0038A7 00:B897: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038A9 00:B899: 85        .byte $85   ; 
- D 1 - I - 0x0038AA 00:B89A: 30        .byte $30   ; 
- D 1 - I - 0x0038AB 00:B89B: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038AD 00:B89D: 83        .byte $83   ; 
- D 1 - I - 0x0038AE 00:B89E: 30        .byte $30   ; 
- D 1 - I - 0x0038AF 00:B89F: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038B1 00:B8A1: 85        .byte $85   ; 
- D 1 - I - 0x0038B2 00:B8A2: 22        .byte $22   ; 
- D 1 - I - 0x0038B3 00:B8A3: 32        .byte $32   ; 
- D 1 - I - 0x0038B4 00:B8A4: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038B6 00:B8A6: 83        .byte $83   ; 
- D 1 - I - 0x0038B7 00:B8A7: 22        .byte $22   ; 
- D 1 - I - 0x0038B8 00:B8A8: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038BA 00:B8AA: 85        .byte $85   ; 
- D 1 - I - 0x0038BB 00:B8AB: 32        .byte $32   ; 
- D 1 - I - 0x0038BC 00:B8AC: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038BE 00:B8AE: 83        .byte $83   ; 
- D 1 - I - 0x0038BF 00:B8AF: 32        .byte $32   ; 
- D 1 - I - 0x0038C0 00:B8B0: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038C2 00:B8B2: 85        .byte $85   ; 
- D 1 - I - 0x0038C3 00:B8B3: 22        .byte $22   ; 
- D 1 - I - 0x0038C4 00:B8B4: 32        .byte $32   ; 
- D 1 - I - 0x0038C5 00:B8B5: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038C7 00:B8B7: 83        .byte $83   ; 
- D 1 - I - 0x0038C8 00:B8B8: 22        .byte $22   ; 
- D 1 - I - 0x0038C9 00:B8B9: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038CB 00:B8BB: 85        .byte $85   ; 
- D 1 - I - 0x0038CC 00:B8BC: 32        .byte $32   ; 
- D 1 - I - 0x0038CD 00:B8BD: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038CF 00:B8BF: 83        .byte $83   ; 
- D 1 - I - 0x0038D0 00:B8C0: 32        .byte $32   ; 
- D 1 - I - 0x0038D1 00:B8C1: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0038D3 00:B8C3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038D5 00:B8C5: 85        .byte $85   ; 
- D 1 - I - 0x0038D6 00:B8C6: 24        .byte $24   ; 
- D 1 - I - 0x0038D7 00:B8C7: 2B        .byte $2B   ; 
- D 1 - I - 0x0038D8 00:B8C8: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038DA 00:B8CA: 83        .byte $83   ; 
- D 1 - I - 0x0038DB 00:B8CB: 29        .byte $29   ; 
- D 1 - I - 0x0038DC 00:B8CC: 0C        .byte $0C   ; 
- D 1 - I - 0x0038DD 00:B8CD: 27        .byte $27   ; 
- D 1 - I - 0x0038DE 00:B8CE: 27        .byte $27   ; 
- D 1 - I - 0x0038DF 00:B8CF: 0C        .byte $0C   ; 
- D 1 - I - 0x0038E0 00:B8D0: 26        .byte $26   ; 
- D 1 - I - 0x0038E1 00:B8D1: 0C        .byte $0C   ; 
- D 1 - I - 0x0038E2 00:B8D2: 27        .byte $27   ; 
- D 1 - I - 0x0038E3 00:B8D3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038E5 00:B8D5: 85        .byte $85   ; 
- D 1 - I - 0x0038E6 00:B8D6: 26        .byte $26   ; 
- D 1 - I - 0x0038E7 00:B8D7: 22        .byte $22   ; 
- D 1 - I - 0x0038E8 00:B8D8: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0038E9 00:B8D9: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x0038EB 00:B8DB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038ED 00:B8DD: 85        .byte $85   ; 
- D 1 - I - 0x0038EE 00:B8DE: 24        .byte $24   ; 
- D 1 - I - 0x0038EF 00:B8DF: 2B        .byte $2B   ; 
- D 1 - I - 0x0038F0 00:B8E0: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0038F2 00:B8E2: 83        .byte $83   ; 
- D 1 - I - 0x0038F3 00:B8E3: 29        .byte $29   ; 
- D 1 - I - 0x0038F4 00:B8E4: 0C        .byte $0C   ; 
- D 1 - I - 0x0038F5 00:B8E5: 27        .byte $27   ; 
- D 1 - I - 0x0038F6 00:B8E6: 27        .byte $27   ; 
- D 1 - I - 0x0038F7 00:B8E7: 0C        .byte $0C   ; 
- D 1 - I - 0x0038F8 00:B8E8: 26        .byte $26   ; 
- D 1 - I - 0x0038F9 00:B8E9: 0C        .byte $0C   ; 
- D 1 - I - 0x0038FA 00:B8EA: 27        .byte $27   ; 
- D 1 - I - 0x0038FB 00:B8EB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0038FD 00:B8ED: 85        .byte $85   ; 
- D 1 - I - 0x0038FE 00:B8EE: 26        .byte $26   ; 
- D 1 - I - 0x0038FF 00:B8EF: 22        .byte $22   ; 
- D 1 - I - 0x003900 00:B8F0: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003901 00:B8F1: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003903 00:B8F3: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003905 00:B8F5: 85        .byte $85   ; 
- D 1 - I - 0x003906 00:B8F6: 22        .byte $22   ; 
- D 1 - I - 0x003907 00:B8F7: 29        .byte $29   ; 
- D 1 - I - 0x003908 00:B8F8: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00390A 00:B8FA: 83        .byte $83   ; 
- D 1 - I - 0x00390B 00:B8FB: 27        .byte $27   ; 
- D 1 - I - 0x00390C 00:B8FC: 0C        .byte $0C   ; 
- D 1 - I - 0x00390D 00:B8FD: 26        .byte $26   ; 
- D 1 - I - 0x00390E 00:B8FE: 26        .byte $26   ; 
- D 1 - I - 0x00390F 00:B8FF: 0C        .byte $0C   ; 
- D 1 - I - 0x003910 00:B900: 26        .byte $26   ; 
- D 1 - I - 0x003911 00:B901: 0C        .byte $0C   ; 
- D 1 - I - 0x003912 00:B902: 29        .byte $29   ; 
- D 1 - I - 0x003913 00:B903: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003915 00:B905: 85        .byte $85   ; 
- D 1 - I - 0x003916 00:B906: 26        .byte $26   ; 
- D 1 - I - 0x003917 00:B907: 22        .byte $22   ; 
- D 1 - I - 0x003918 00:B908: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003919 00:B909: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x00391B 00:B90B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00391D 00:B90D: 85        .byte $85   ; 
- D 1 - I - 0x00391E 00:B90E: 24        .byte $24   ; 
- D 1 - I - 0x00391F 00:B90F: 2B        .byte $2B   ; 
- D 1 - I - 0x003920 00:B910: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003922 00:B912: 83        .byte $83   ; 
- D 1 - I - 0x003923 00:B913: 29        .byte $29   ; 
- D 1 - I - 0x003924 00:B914: 0C        .byte $0C   ; 
- D 1 - I - 0x003925 00:B915: 27        .byte $27   ; 
- D 1 - I - 0x003926 00:B916: 27        .byte $27   ; 
- D 1 - I - 0x003927 00:B917: 0C        .byte $0C   ; 
- D 1 - I - 0x003928 00:B918: 26        .byte $26   ; 
- D 1 - I - 0x003929 00:B919: 0C        .byte $0C   ; 
- D 1 - I - 0x00392A 00:B91A: 27        .byte $27   ; 
- D 1 - I - 0x00392B 00:B91B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00392D 00:B91D: 85        .byte $85   ; 
- D 1 - I - 0x00392E 00:B91E: 26        .byte $26   ; 
- D 1 - I - 0x00392F 00:B91F: 22        .byte $22   ; 
- D 1 - I - 0x003930 00:B920: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003931 00:B921: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003933 00:B923: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003935 00:B925: 85        .byte $85   ; 
- D 1 - I - 0x003936 00:B926: 22        .byte $22   ; 
- D 1 - I - 0x003937 00:B927: 29        .byte $29   ; 
- D 1 - I - 0x003938 00:B928: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00393A 00:B92A: 83        .byte $83   ; 
- D 1 - I - 0x00393B 00:B92B: 27        .byte $27   ; 
- D 1 - I - 0x00393C 00:B92C: 0C        .byte $0C   ; 
- D 1 - I - 0x00393D 00:B92D: 26        .byte $26   ; 
- D 1 - I - 0x00393E 00:B92E: 26        .byte $26   ; 
- D 1 - I - 0x00393F 00:B92F: 0C        .byte $0C   ; 
- D 1 - I - 0x003940 00:B930: 26        .byte $26   ; 
- D 1 - I - 0x003941 00:B931: 0C        .byte $0C   ; 
- D 1 - I - 0x003942 00:B932: 29        .byte $29   ; 
- D 1 - I - 0x003943 00:B933: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003945 00:B935: 85        .byte $85   ; 
- D 1 - I - 0x003946 00:B936: 26        .byte $26   ; 
- D 1 - I - 0x003947 00:B937: 22        .byte $22   ; 
- D 1 - I - 0x003948 00:B938: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003949 00:B939: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x00394B 00:B93B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00394D 00:B93D: 85        .byte $85   ; 
- D 1 - I - 0x00394E 00:B93E: 24        .byte $24   ; 
- D 1 - I - 0x00394F 00:B93F: 2B        .byte $2B   ; 
- D 1 - I - 0x003950 00:B940: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003952 00:B942: 83        .byte $83   ; 
- D 1 - I - 0x003953 00:B943: 29        .byte $29   ; 
- D 1 - I - 0x003954 00:B944: 0C        .byte $0C   ; 
- D 1 - I - 0x003955 00:B945: 27        .byte $27   ; 
- D 1 - I - 0x003956 00:B946: 27        .byte $27   ; 
- D 1 - I - 0x003957 00:B947: 0C        .byte $0C   ; 
- D 1 - I - 0x003958 00:B948: 26        .byte $26   ; 
- D 1 - I - 0x003959 00:B949: 0C        .byte $0C   ; 
- D 1 - I - 0x00395A 00:B94A: 27        .byte $27   ; 
- D 1 - I - 0x00395B 00:B94B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00395D 00:B94D: 85        .byte $85   ; 
- D 1 - I - 0x00395E 00:B94E: 26        .byte $26   ; 
- D 1 - I - 0x00395F 00:B94F: 22        .byte $22   ; 
- D 1 - I - 0x003960 00:B950: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003962 00:B952: 85        .byte $85   ; 
- D 1 - I - 0x003963 00:B953: 24        .byte $24   ; 
- D 1 - I - 0x003964 00:B954: 2B        .byte $2B   ; 
- D 1 - I - 0x003965 00:B955: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003967 00:B957: 83        .byte $83   ; 
- D 1 - I - 0x003968 00:B958: 27        .byte $27   ; 
- D 1 - I - 0x003969 00:B959: 0C        .byte $0C   ; 
- D 1 - I - 0x00396A 00:B95A: 32        .byte $32   ; 
- D 1 - I - 0x00396B 00:B95B: 2B        .byte $2B   ; 
- D 1 - I - 0x00396C 00:B95C: 0C        .byte $0C   ; 
- D 1 - I - 0x00396D 00:B95D: 27        .byte $27   ; 
- D 1 - I - 0x00396E 00:B95E: 0C        .byte $0C   ; 
- D 1 - I - 0x00396F 00:B95F: 27        .byte $27   ; 
- D 1 - I - 0x003970 00:B960: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003972 00:B962: 85        .byte $85   ; 
- D 1 - I - 0x003973 00:B963: 29        .byte $29   ; 
- D 1 - I - 0x003974 00:B964: 26        .byte $26   ; 
- D 1 - I - 0x003975 00:B965: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003977 00:B967: 85        .byte $85   ; 
- D 1 - I - 0x003978 00:B968: 22        .byte $22   ; 
- D 1 - I - 0x003979 00:B969: 29        .byte $29   ; 
- D 1 - I - 0x00397A 00:B96A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x00397C 00:B96C: 83        .byte $83   ; 
- D 1 - I - 0x00397D 00:B96D: 27        .byte $27   ; 
- D 1 - I - 0x00397E 00:B96E: 0C        .byte $0C   ; 
- D 1 - I - 0x00397F 00:B96F: 26        .byte $26   ; 
- D 1 - I - 0x003980 00:B970: 26        .byte $26   ; 
- D 1 - I - 0x003981 00:B971: 0C        .byte $0C   ; 
- D 1 - I - 0x003982 00:B972: 26        .byte $26   ; 
- D 1 - I - 0x003983 00:B973: 0C        .byte $0C   ; 
- D 1 - I - 0x003984 00:B974: 29        .byte $29   ; 
- D 1 - I - 0x003985 00:B975: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003987 00:B977: 85        .byte $85   ; 
- D 1 - I - 0x003988 00:B978: 26        .byte $26   ; 
- D 1 - I - 0x003989 00:B979: 22        .byte $22   ; 
- D 1 - I - 0x00398A 00:B97A: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00398C 00:B97C: 85        .byte $85   ; 
- D 1 - I - 0x00398D 00:B97D: 22        .byte $22   ; 
- D 1 - I - 0x00398E 00:B97E: 29        .byte $29   ; 
- D 1 - I - 0x00398F 00:B97F: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003991 00:B981: 83        .byte $83   ; 
- D 1 - I - 0x003992 00:B982: 26        .byte $26   ; 
- D 1 - I - 0x003993 00:B983: 0C        .byte $0C   ; 
- D 1 - I - 0x003994 00:B984: 27        .byte $27   ; 
- D 1 - I - 0x003995 00:B985: 32        .byte $32   ; 
- D 1 - I - 0x003996 00:B986: 0C        .byte $0C   ; 
- D 1 - I - 0x003997 00:B987: 32        .byte $32   ; 
- D 1 - I - 0x003998 00:B988: 0C        .byte $0C   ; 
- D 1 - I - 0x003999 00:B989: 29        .byte $29   ; 
- D 1 - I - 0x00399A 00:B98A: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x00399C 00:B98C: 85        .byte $85   ; 
- D 1 - I - 0x00399D 00:B98D: 29        .byte $29   ; 
- D 1 - I - 0x00399E 00:B98E: 26        .byte $26   ; 
- D 1 - I - 0x00399F 00:B98F: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x0039A0 00:B990: 20        .byte $20   ; 
- D 1 - I - 0x0039A1 00:B991: 30        .byte $30   ; 
- D 1 - I - 0x0039A2 00:B992: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039A4 00:B994: 83        .byte $83   ; 
- D 1 - I - 0x0039A5 00:B995: 20        .byte $20   ; 
- D 1 - I - 0x0039A6 00:B996: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039A8 00:B998: 85        .byte $85   ; 
- D 1 - I - 0x0039A9 00:B999: 30        .byte $30   ; 
- D 1 - I - 0x0039AA 00:B99A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039AC 00:B99C: 83        .byte $83   ; 
- D 1 - I - 0x0039AD 00:B99D: 30        .byte $30   ; 
- D 1 - I - 0x0039AE 00:B99E: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039B0 00:B9A0: 85        .byte $85   ; 
- D 1 - I - 0x0039B1 00:B9A1: 20        .byte $20   ; 
- D 1 - I - 0x0039B2 00:B9A2: 30        .byte $30   ; 
- D 1 - I - 0x0039B3 00:B9A3: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039B5 00:B9A5: 83        .byte $83   ; 
- D 1 - I - 0x0039B6 00:B9A6: 20        .byte $20   ; 
- D 1 - I - 0x0039B7 00:B9A7: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039B9 00:B9A9: 85        .byte $85   ; 
- D 1 - I - 0x0039BA 00:B9AA: 30        .byte $30   ; 
- D 1 - I - 0x0039BB 00:B9AB: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039BD 00:B9AD: 83        .byte $83   ; 
- D 1 - I - 0x0039BE 00:B9AE: 30        .byte $30   ; 
- D 1 - I - 0x0039BF 00:B9AF: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039C1 00:B9B1: 85        .byte $85   ; 
- D 1 - I - 0x0039C2 00:B9B2: 22        .byte $22   ; 
- D 1 - I - 0x0039C3 00:B9B3: 32        .byte $32   ; 
- D 1 - I - 0x0039C4 00:B9B4: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039C6 00:B9B6: 83        .byte $83   ; 
- D 1 - I - 0x0039C7 00:B9B7: 22        .byte $22   ; 
- D 1 - I - 0x0039C8 00:B9B8: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039CA 00:B9BA: 85        .byte $85   ; 
- D 1 - I - 0x0039CB 00:B9BB: 32        .byte $32   ; 
- D 1 - I - 0x0039CC 00:B9BC: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039CE 00:B9BE: 83        .byte $83   ; 
- D 1 - I - 0x0039CF 00:B9BF: 32        .byte $32   ; 
- D 1 - I - 0x0039D0 00:B9C0: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039D2 00:B9C2: 85        .byte $85   ; 
- D 1 - I - 0x0039D3 00:B9C3: 22        .byte $22   ; 
- D 1 - I - 0x0039D4 00:B9C4: 32        .byte $32   ; 
- D 1 - I - 0x0039D5 00:B9C5: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039D7 00:B9C7: 83        .byte $83   ; 
- D 1 - I - 0x0039D8 00:B9C8: 22        .byte $22   ; 
- D 1 - I - 0x0039D9 00:B9C9: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039DB 00:B9CB: 85        .byte $85   ; 
- D 1 - I - 0x0039DC 00:B9CC: 32        .byte $32   ; 
- D 1 - I - 0x0039DD 00:B9CD: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039DF 00:B9CF: 83        .byte $83   ; 
- D 1 - I - 0x0039E0 00:B9D0: 32        .byte $32   ; 
- D 1 - I - 0x0039E1 00:B9D1: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039E3 00:B9D3: 85        .byte $85   ; 
- D 1 - I - 0x0039E4 00:B9D4: 24        .byte $24   ; 
- D 1 - I - 0x0039E5 00:B9D5: 2B        .byte $2B   ; 
- D 1 - I - 0x0039E6 00:B9D6: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039E8 00:B9D8: 83        .byte $83   ; 
- D 1 - I - 0x0039E9 00:B9D9: 29        .byte $29   ; 
- D 1 - I - 0x0039EA 00:B9DA: 0C        .byte $0C   ; 
- D 1 - I - 0x0039EB 00:B9DB: 27        .byte $27   ; 
- D 1 - I - 0x0039EC 00:B9DC: 27        .byte $27   ; 
- D 1 - I - 0x0039ED 00:B9DD: 0C        .byte $0C   ; 
- D 1 - I - 0x0039EE 00:B9DE: 26        .byte $26   ; 
- D 1 - I - 0x0039EF 00:B9DF: 0C        .byte $0C   ; 
- D 1 - I - 0x0039F0 00:B9E0: 27        .byte $27   ; 
- D 1 - I - 0x0039F1 00:B9E1: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039F3 00:B9E3: 85        .byte $85   ; 
- D 1 - I - 0x0039F4 00:B9E4: 26        .byte $26   ; 
- D 1 - I - 0x0039F5 00:B9E5: 22        .byte $22   ; 
- D 1 - I - 0x0039F6 00:B9E6: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x0039F8 00:B9E8: 85        .byte $85   ; 
- D 1 - I - 0x0039F9 00:B9E9: 24        .byte $24   ; 
- D 1 - I - 0x0039FA 00:B9EA: 2B        .byte $2B   ; 
- D 1 - I - 0x0039FB 00:B9EB: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x0039FD 00:B9ED: 83        .byte $83   ; 
- D 1 - I - 0x0039FE 00:B9EE: 32        .byte $32   ; 
- D 1 - I - 0x0039FF 00:B9EF: 0C        .byte $0C   ; 
- D 1 - I - 0x003A00 00:B9F0: 2B        .byte $2B   ; 
- D 1 - I - 0x003A01 00:B9F1: 28        .byte $28   ; 
- D 1 - I - 0x003A02 00:B9F2: 0C        .byte $0C   ; 
- D 1 - I - 0x003A03 00:B9F3: 28        .byte $28   ; 
- D 1 - I - 0x003A04 00:B9F4: 0C        .byte $0C   ; 
- D 1 - I - 0x003A05 00:B9F5: 28        .byte $28   ; 
- D 1 - I - 0x003A06 00:B9F6: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A08 00:B9F8: 85        .byte $85   ; 
- D 1 - I - 0x003A09 00:B9F9: 28        .byte $28   ; 
- D 1 - I - 0x003A0A 00:B9FA: 2B        .byte $2B   ; 
- D 1 - I - 0x003A0B 00:B9FB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A0D 00:B9FD: 85        .byte $85   ; 
- D 1 - I - 0x003A0E 00:B9FE: 29        .byte $29   ; 
- D 1 - I - 0x003A0F 00:B9FF: 24        .byte $24   ; 
- D 1 - I - 0x003A10 00:BA00: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A12 00:BA02: 83        .byte $83   ; 
- D 1 - I - 0x003A13 00:BA03: 30        .byte $30   ; 
- D 1 - I - 0x003A14 00:BA04: 0C        .byte $0C   ; 
- D 1 - I - 0x003A15 00:BA05: 2B        .byte $2B   ; 
- D 1 - I - 0x003A16 00:BA06: 27        .byte $27   ; 
- D 1 - I - 0x003A17 00:BA07: 0C        .byte $0C   ; 
- D 1 - I - 0x003A18 00:BA08: 22        .byte $22   ; 
- D 1 - I - 0x003A19 00:BA09: 0C        .byte $0C   ; 
- D 1 - I - 0x003A1A 00:BA0A: 22        .byte $22   ; 
- D 1 - I - 0x003A1B 00:BA0B: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A1D 00:BA0D: 85        .byte $85   ; 
- D 1 - I - 0x003A1E 00:BA0E: 22        .byte $22   ; 
- D 1 - I - 0x003A1F 00:BA0F: 27        .byte $27   ; 
- D 1 - I - 0x003A20 00:BA10: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A22 00:BA12: 85        .byte $85   ; 
- D 1 - I - 0x003A23 00:BA13: 29        .byte $29   ; 
- D 1 - I - 0x003A24 00:BA14: 24        .byte $24   ; 
- D 1 - I - 0x003A25 00:BA15: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A27 00:BA17: 83        .byte $83   ; 
- D 1 - I - 0x003A28 00:BA18: 30        .byte $30   ; 
- D 1 - I - 0x003A29 00:BA19: 0C        .byte $0C   ; 
- D 1 - I - 0x003A2A 00:BA1A: 2B        .byte $2B   ; 
- D 1 - I - 0x003A2B 00:BA1B: 27        .byte $27   ; 
- D 1 - I - 0x003A2C 00:BA1C: 0C        .byte $0C   ; 
- D 1 - I - 0x003A2D 00:BA1D: 32        .byte $32   ; 
- D 1 - I - 0x003A2E 00:BA1E: 0C        .byte $0C   ; 
- D 1 - I - 0x003A2F 00:BA1F: 32        .byte $32   ; 
- D 1 - I - 0x003A30 00:BA20: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A32 00:BA22: 85        .byte $85   ; 
- D 1 - I - 0x003A33 00:BA23: 32        .byte $32   ; 
- D 1 - I - 0x003A34 00:BA24: 2B        .byte $2B   ; 
- D 1 - I - 0x003A35 00:BA25: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A37 00:BA27: 85        .byte $85   ; 
- D 1 - I - 0x003A38 00:BA28: 25        .byte $25   ; 
- D 1 - I - 0x003A39 00:BA29: 20        .byte $20   ; 
- D 1 - I - 0x003A3A 00:BA2A: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A3C 00:BA2C: 83        .byte $83   ; 
- D 1 - I - 0x003A3D 00:BA2D: 29        .byte $29   ; 
- D 1 - I - 0x003A3E 00:BA2E: 0C        .byte $0C   ; 
- D 1 - I - 0x003A3F 00:BA2F: 25        .byte $25   ; 
- D 1 - I - 0x003A40 00:BA30: 27        .byte $27   ; 
- D 1 - I - 0x003A41 00:BA31: 0C        .byte $0C   ; 
- D 1 - I - 0x003A42 00:BA32: 27        .byte $27   ; 
- D 1 - I - 0x003A43 00:BA33: 0C        .byte $0C   ; 
- D 1 - I - 0x003A44 00:BA34: 27        .byte $27   ; 
- D 1 - I - 0x003A45 00:BA35: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A47 00:BA37: 85        .byte $85   ; 
- D 1 - I - 0x003A48 00:BA38: 2B        .byte $2B   ; 
- D 1 - I - 0x003A49 00:BA39: 27        .byte $27   ; 
- D 1 - I - 0x003A4A 00:BA3A: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A4C 00:BA3C: 85        .byte $85   ; 
- D 1 - I - 0x003A4D 00:BA3D: 25        .byte $25   ; 
- D 1 - I - 0x003A4E 00:BA3E: 20        .byte $20   ; 
- D 1 - I - 0x003A4F 00:BA3F: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A51 00:BA41: 83        .byte $83   ; 
- D 1 - I - 0x003A52 00:BA42: 29        .byte $29   ; 
- D 1 - I - 0x003A53 00:BA43: 0C        .byte $0C   ; 
- D 1 - I - 0x003A54 00:BA44: 25        .byte $25   ; 
- D 1 - I - 0x003A55 00:BA45: 27        .byte $27   ; 
- D 1 - I - 0x003A56 00:BA46: 0C        .byte $0C   ; 
- D 1 - I - 0x003A57 00:BA47: 27        .byte $27   ; 
- D 1 - I - 0x003A58 00:BA48: 0C        .byte $0C   ; 
- D 1 - I - 0x003A59 00:BA49: 27        .byte $27   ; 
- D 1 - I - 0x003A5A 00:BA4A: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A5C 00:BA4C: 85        .byte $85   ; 
- D 1 - I - 0x003A5D 00:BA4D: 27        .byte $27   ; 
- D 1 - I - 0x003A5E 00:BA4E: 2B        .byte $2B   ; 
- D 1 - I - 0x003A5F 00:BA4F: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A61 00:BA51: 85        .byte $85   ; 
- D 1 - I - 0x003A62 00:BA52: 29        .byte $29   ; 
- D 1 - I - 0x003A63 00:BA53: 24        .byte $24   ; 
- D 1 - I - 0x003A64 00:BA54: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A66 00:BA56: 83        .byte $83   ; 
- D 1 - I - 0x003A67 00:BA57: 30        .byte $30   ; 
- D 1 - I - 0x003A68 00:BA58: 0C        .byte $0C   ; 
- D 1 - I - 0x003A69 00:BA59: 29        .byte $29   ; 
- D 1 - I - 0x003A6A 00:BA5A: 27        .byte $27   ; 
- D 1 - I - 0x003A6B 00:BA5B: 0C        .byte $0C   ; 
- D 1 - I - 0x003A6C 00:BA5C: 27        .byte $27   ; 
- D 1 - I - 0x003A6D 00:BA5D: 0C        .byte $0C   ; 
- D 1 - I - 0x003A6E 00:BA5E: 27        .byte $27   ; 
- D 1 - I - 0x003A6F 00:BA5F: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A71 00:BA61: 85        .byte $85   ; 
- D 1 - I - 0x003A72 00:BA62: 27        .byte $27   ; 
- D 1 - I - 0x003A73 00:BA63: 2B        .byte $2B   ; 
- D 1 - I - 0x003A74 00:BA64: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A76 00:BA66: 85        .byte $85   ; 
- D 1 - I - 0x003A77 00:BA67: 29        .byte $29   ; 
- D 1 - I - 0x003A78 00:BA68: 24        .byte $24   ; 
- D 1 - I - 0x003A79 00:BA69: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A7B 00:BA6B: 83        .byte $83   ; 
- D 1 - I - 0x003A7C 00:BA6C: 30        .byte $30   ; 
- D 1 - I - 0x003A7D 00:BA6D: 0C        .byte $0C   ; 
- D 1 - I - 0x003A7E 00:BA6E: 29        .byte $29   ; 
- D 1 - I - 0x003A7F 00:BA6F: 27        .byte $27   ; 
- D 1 - I - 0x003A80 00:BA70: 0C        .byte $0C   ; 
- D 1 - I - 0x003A81 00:BA71: 27        .byte $27   ; 
- D 1 - I - 0x003A82 00:BA72: 0C        .byte $0C   ; 
- D 1 - I - 0x003A83 00:BA73: 27        .byte $27   ; 
- D 1 - I - 0x003A84 00:BA74: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A86 00:BA76: 85        .byte $85   ; 
- D 1 - I - 0x003A87 00:BA77: 2B        .byte $2B   ; 
- D 1 - I - 0x003A88 00:BA78: 32        .byte $32   ; 
- D 1 - I - 0x003A89 00:BA79: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A8B 00:BA7B: 85        .byte $85   ; 
- D 1 - I - 0x003A8C 00:BA7C: 25        .byte $25   ; 
- D 1 - I - 0x003A8D 00:BA7D: 20        .byte $20   ; 
- D 1 - I - 0x003A8E 00:BA7E: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003A90 00:BA80: 83        .byte $83   ; 
- D 1 - I - 0x003A91 00:BA81: 29        .byte $29   ; 
- D 1 - I - 0x003A92 00:BA82: 0C        .byte $0C   ; 
- D 1 - I - 0x003A93 00:BA83: 25        .byte $25   ; 
- D 1 - I - 0x003A94 00:BA84: 27        .byte $27   ; 
- D 1 - I - 0x003A95 00:BA85: 0C        .byte $0C   ; 
- D 1 - I - 0x003A96 00:BA86: 27        .byte $27   ; 
- D 1 - I - 0x003A97 00:BA87: 0C        .byte $0C   ; 
- D 1 - I - 0x003A98 00:BA88: 27        .byte $27   ; 
- D 1 - I - 0x003A99 00:BA89: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003A9B 00:BA8B: 85        .byte $85   ; 
- D 1 - I - 0x003A9C 00:BA8C: 27        .byte $27   ; 
- D 1 - I - 0x003A9D 00:BA8D: 2B        .byte $2B   ; 
- D 1 - I - 0x003A9E 00:BA8E: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AA0 00:BA90: 85        .byte $85   ; 
- D 1 - I - 0x003AA1 00:BA91: 29        .byte $29   ; 
- D 1 - I - 0x003AA2 00:BA92: 25        .byte $25   ; 
- D 1 - I - 0x003AA3 00:BA93: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003AA5 00:BA95: 83        .byte $83   ; 
- D 1 - I - 0x003AA6 00:BA96: 30        .byte $30   ; 
- D 1 - I - 0x003AA7 00:BA97: 0C        .byte $0C   ; 
- D 1 - I - 0x003AA8 00:BA98: 29        .byte $29   ; 
- D 1 - I - 0x003AA9 00:BA99: 2B        .byte $2B   ; 
- D 1 - I - 0x003AAA 00:BA9A: 0C        .byte $0C   ; 
- D 1 - I - 0x003AAB 00:BA9B: 2B        .byte $2B   ; 
- D 1 - I - 0x003AAC 00:BA9C: 0C        .byte $0C   ; 
- D 1 - I - 0x003AAD 00:BA9D: 2B        .byte $2B   ; 
- D 1 - I - 0x003AAE 00:BA9E: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AB0 00:BAA0: 85        .byte $85   ; 
- D 1 - I - 0x003AB1 00:BAA1: 2B        .byte $2B   ; 
- D 1 - I - 0x003AB2 00:BAA2: 32        .byte $32   ; 
- D 1 - I - 0x003AB3 00:BAA3: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x003AB5 00:BAA5: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AB7 00:BAA7: 85        .byte $85   ; 
- D 1 - I - 0x003AB8 00:BAA8: 24        .byte $24   ; 
- D 1 - I - 0x003AB9 00:BAA9: 27        .byte $27   ; 
- D 1 - I - 0x003ABA 00:BAAA: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003ABC 00:BAAC: 83        .byte $83   ; 
- D 1 - I - 0x003ABD 00:BAAD: 30        .byte $30   ; 
- D 1 - I - 0x003ABE 00:BAAE: 0C        .byte $0C   ; 
- D 1 - I - 0x003ABF 00:BAAF: 32        .byte $32   ; 
- D 1 - I - 0x003AC0 00:BAB0: 32        .byte $32   ; 
- D 1 - I - 0x003AC1 00:BAB1: 0C        .byte $0C   ; 
- D 1 - I - 0x003AC2 00:BAB2: 27        .byte $27   ; 
- D 1 - I - 0x003AC3 00:BAB3: 0C        .byte $0C   ; 
- D 1 - I - 0x003AC4 00:BAB4: 27        .byte $27   ; 
- D 1 - I - 0x003AC5 00:BAB5: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AC7 00:BAB7: 85        .byte $85   ; 
- D 1 - I - 0x003AC8 00:BAB8: 27        .byte $27   ; 
- D 1 - I - 0x003AC9 00:BAB9: 32        .byte $32   ; 
- D 1 - I - 0x003ACA 00:BABA: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003ACC 00:BABC: 85        .byte $85   ; 
- D 1 - I - 0x003ACD 00:BABD: 24        .byte $24   ; 
- D 1 - I - 0x003ACE 00:BABE: 27        .byte $27   ; 
- D 1 - I - 0x003ACF 00:BABF: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003AD1 00:BAC1: 83        .byte $83   ; 
- D 1 - I - 0x003AD2 00:BAC2: 30        .byte $30   ; 
- D 1 - I - 0x003AD3 00:BAC3: 0C        .byte $0C   ; 
- D 1 - I - 0x003AD4 00:BAC4: 27        .byte $27   ; 
- D 1 - I - 0x003AD5 00:BAC5: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AD7 00:BAC7: 85        .byte $85   ; 
- D 1 - I - 0x003AD8 00:BAC8: 34        .byte $34   ; 
- D 1 - I - 0x003AD9 00:BAC9: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003ADB 00:BACB: 83        .byte $83   ; 
- D 1 - I - 0x003ADC 00:BACC: 34        .byte $34   ; 
- D 1 - I - 0x003ADD 00:BACD: 22        .byte $22   ; 
- D 1 - I - 0x003ADE 00:BACE: 32        .byte $32   ; 
- D 1 - I - 0x003ADF 00:BACF: 20        .byte $20   ; 
- D 1 - I - 0x003AE0 00:BAD0: 32        .byte $32   ; 
- D 1 - I - 0x003AE1 00:BAD1: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AE3 00:BAD3: 85        .byte $85   ; 
- D 1 - I - 0x003AE4 00:BAD4: 2B        .byte $2B   ; 
- D 1 - I - 0x003AE5 00:BAD5: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003AE6 00:BAD6: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AE8 00:BAD8: 85        .byte $85   ; 
- D 1 - I - 0x003AE9 00:BAD9: 27        .byte $27   ; 
- D 1 - I - 0x003AEA 00:BADA: 24        .byte $24   ; 
- D 1 - I - 0x003AEB 00:BADB: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003AED 00:BADD: 83        .byte $83   ; 
- D 1 - I - 0x003AEE 00:BADE: 30        .byte $30   ; 
- D 1 - I - 0x003AEF 00:BADF: 27        .byte $27   ; 
- D 1 - I - 0x003AF0 00:BAE0: 0C        .byte $0C   ; 
- D 1 - I - 0x003AF1 00:BAE1: 26        .byte $26   ; 
- D 1 - I - 0x003AF2 00:BAE2: 0C        .byte $0C   ; 
- D 1 - I - 0x003AF3 00:BAE3: 26        .byte $26   ; 
- D 1 - I - 0x003AF4 00:BAE4: 0C        .byte $0C   ; 
- D 1 - I - 0x003AF5 00:BAE5: 26        .byte $26   ; 
- D 1 - I - 0x003AF6 00:BAE6: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AF8 00:BAE8: 85        .byte $85   ; 
- D 1 - I - 0x003AF9 00:BAE9: 29        .byte $29   ; 
- D 1 - I - 0x003AFA 00:BAEA: 32        .byte $32   ; 
- D 1 - I - 0x003AFB 00:BAEB: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003AFD 00:BAED: 85        .byte $85   ; 
- D 1 - I - 0x003AFE 00:BAEE: 2B        .byte $2B   ; 
- D 1 - I - 0x003AFF 00:BAEF: 27        .byte $27   ; 
- D 1 - I - 0x003B00 00:BAF0: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003B02 00:BAF2: 83        .byte $83   ; 
- D 1 - I - 0x003B03 00:BAF3: 34        .byte $34   ; 
- D 1 - I - 0x003B04 00:BAF4: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003B06 00:BAF6: 85        .byte $85   ; 
- D 1 - I - 0x003B07 00:BAF7: 2B        .byte $2B   ; 
- D 1 - I - 0x003B08 00:BAF8: 34        .byte $34   ; 
- D 1 - I - 0x003B09 00:BAF9: E0        .byte con_se_cb_E0, $20   ; 
- D 1 - I - 0x003B0B 00:BAFB: 83        .byte $83   ; 
- D 1 - I - 0x003B0C 00:BAFC: 34        .byte $34   ; 
- D 1 - I - 0x003B0D 00:BAFD: 22        .byte $22   ; 
- D 1 - I - 0x003B0E 00:BAFE: 32        .byte $32   ; 
- D 1 - I - 0x003B0F 00:BAFF: 20        .byte $20   ; 
- D 1 - I - 0x003B10 00:BB00: 30        .byte $30   ; 
- D 1 - I - 0x003B11 00:BB01: E0        .byte con_se_cb_E0, $21   ; 
- D 1 - I - 0x003B13 00:BB03: 85        .byte $85   ; 
- D 1 - I - 0x003B14 00:BB04: 2B        .byte $2B   ; 
- D 1 - I - 0x003B15 00:BB05: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x003B16 00:BB06: C9 B7     .word off_E8_B7C9



off_ch_10_BB08_07:
- D 1 - I - 0x003B18 00:BB08: E3        .byte con_se_cb_E3, $00   ; 
- D 1 - I - 0x003B1A 00:BB0A: EB        .byte con_se_cb_EB, $03   ; 
- D 1 - I - 0x003B1C 00:BB0C: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B1E 00:BB0E: 83        .byte $83   ; 
- D 1 - I - 0x003B1F 00:BB0F: 03        .byte $03   ; 
- D 1 - I - 0x003B20 00:BB10: 03        .byte $03   ; 
- D 1 - I - 0x003B21 00:BB11: 10        .byte $10   ; 
- D 1 - I - 0x003B22 00:BB12: 03        .byte $03   ; 
- D 1 - I - 0x003B23 00:BB13: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B25 00:BB15: 85        .byte $85   ; 
- D 1 - I - 0x003B26 00:BB16: 0A        .byte $0A   ; 
- D 1 - I - 0x003B27 00:BB17: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B29 00:BB19: 83        .byte $83   ; 
- D 1 - I - 0x003B2A 00:BB1A: 03        .byte $03   ; 
- D 1 - I - 0x003B2B 00:BB1B: 03        .byte $03   ; 
- D 1 - I - 0x003B2C 00:BB1C: 03        .byte $03   ; 
- D 1 - I - 0x003B2D 00:BB1D: 03        .byte $03   ; 
- D 1 - I - 0x003B2E 00:BB1E: 10        .byte $10   ; 
- D 1 - I - 0x003B2F 00:BB1F: 03        .byte $03   ; 
- D 1 - I - 0x003B30 00:BB20: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B32 00:BB22: 85        .byte $85   ; 
- D 1 - I - 0x003B33 00:BB23: 0A        .byte $0A   ; 
- D 1 - I - 0x003B34 00:BB24: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B36 00:BB26: 83        .byte $83   ; 
- D 1 - I - 0x003B37 00:BB27: 03        .byte $03   ; 
- D 1 - I - 0x003B38 00:BB28: 03        .byte $03   ; 
- D 1 - I - 0x003B39 00:BB29: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003B3A 00:BB2A: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B3C 00:BB2C: 83        .byte $83   ; 
- D 1 - I - 0x003B3D 00:BB2D: 03        .byte $03   ; 
- D 1 - I - 0x003B3E 00:BB2E: 03        .byte $03   ; 
- D 1 - I - 0x003B3F 00:BB2F: 10        .byte $10   ; 
- D 1 - I - 0x003B40 00:BB30: 03        .byte $03   ; 
- D 1 - I - 0x003B41 00:BB31: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B43 00:BB33: 85        .byte $85   ; 
- D 1 - I - 0x003B44 00:BB34: 0A        .byte $0A   ; 
- D 1 - I - 0x003B45 00:BB35: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B47 00:BB37: 83        .byte $83   ; 
- D 1 - I - 0x003B48 00:BB38: 03        .byte $03   ; 
- D 1 - I - 0x003B49 00:BB39: 03        .byte $03   ; 
- D 1 - I - 0x003B4A 00:BB3A: 03        .byte $03   ; 
- D 1 - I - 0x003B4B 00:BB3B: 03        .byte $03   ; 
- D 1 - I - 0x003B4C 00:BB3C: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B4E 00:BB3E: 83        .byte $83   ; 
- D 1 - I - 0x003B4F 00:BB3F: 0A        .byte $0A   ; 
- D 1 - I - 0x003B50 00:BB40: 0A        .byte $0A   ; 
- D 1 - I - 0x003B51 00:BB41: 0A        .byte $0A   ; 
- D 1 - I - 0x003B52 00:BB42: 0A        .byte $0A   ; 
- D 1 - I - 0x003B53 00:BB43: 0B        .byte $0B   ; 
- D 1 - I - 0x003B54 00:BB44: 0B        .byte $0B   ; 
off_E8_BB45:
- D 1 - I - 0x003B55 00:BB45: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003B57 00:BB47: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003B59 00:BB49: 85        .byte $85   ; 
- D 1 - I - 0x003B5A 00:BB4A: 83        .byte $83   ; 
- D 1 - I - 0x003B5B 00:BB4B: 07        .byte $07   ; 
- D 1 - I - 0x003B5C 00:BB4C: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B5E 00:BB4E: 83        .byte $83   ; 
- D 1 - I - 0x003B5F 00:BB4F: 03        .byte $03   ; 
- D 1 - I - 0x003B60 00:BB50: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B62 00:BB52: 85        .byte $85   ; 
- D 1 - I - 0x003B63 00:BB53: 0A        .byte $0A   ; 
- D 1 - I - 0x003B64 00:BB54: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B66 00:BB56: 83        .byte $83   ; 
- D 1 - I - 0x003B67 00:BB57: 03        .byte $03   ; 
- D 1 - I - 0x003B68 00:BB58: 03        .byte $03   ; 
- D 1 - I - 0x003B69 00:BB59: 03        .byte $03   ; 
- D 1 - I - 0x003B6A 00:BB5A: 03        .byte $03   ; 
- D 1 - I - 0x003B6B 00:BB5B: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B6D 00:BB5D: 0A        .byte $0A   ; 
- D 1 - I - 0x003B6E 00:BB5E: 85        .byte $85   ; 
- D 1 - I - 0x003B6F 00:BB5F: 83        .byte $83   ; 
- D 1 - I - 0x003B70 00:BB60: 0A        .byte $0A   ; 
- D 1 - I - 0x003B71 00:BB61: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B73 00:BB63: 83        .byte $83   ; 
- D 1 - I - 0x003B74 00:BB64: 03        .byte $03   ; 
- D 1 - I - 0x003B75 00:BB65: 03        .byte $03   ; 
- D 1 - I - 0x003B76 00:BB66: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B78 00:BB68: 83        .byte $83   ; 
- D 1 - I - 0x003B79 00:BB69: 03        .byte $03   ; 
- D 1 - I - 0x003B7A 00:BB6A: 03        .byte $03   ; 
- D 1 - I - 0x003B7B 00:BB6B: 10        .byte $10   ; 
- D 1 - I - 0x003B7C 00:BB6C: 03        .byte $03   ; 
- D 1 - I - 0x003B7D 00:BB6D: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B7F 00:BB6F: 85        .byte $85   ; 
- D 1 - I - 0x003B80 00:BB70: 0A        .byte $0A   ; 
- D 1 - I - 0x003B81 00:BB71: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B83 00:BB73: 83        .byte $83   ; 
- D 1 - I - 0x003B84 00:BB74: 03        .byte $03   ; 
- D 1 - I - 0x003B85 00:BB75: 03        .byte $03   ; 
- D 1 - I - 0x003B86 00:BB76: 03        .byte $03   ; 
- D 1 - I - 0x003B87 00:BB77: 03        .byte $03   ; 
- D 1 - I - 0x003B88 00:BB78: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B8A 00:BB7A: 0A        .byte $0A   ; 
- D 1 - I - 0x003B8B 00:BB7B: 85        .byte $85   ; 
- D 1 - I - 0x003B8C 00:BB7C: 83        .byte $83   ; 
- D 1 - I - 0x003B8D 00:BB7D: 0A        .byte $0A   ; 
- D 1 - I - 0x003B8E 00:BB7E: 85        .byte $85   ; 
- D 1 - I - 0x003B8F 00:BB7F: 0D        .byte $0D   ; 
- D 1 - I - 0x003B90 00:BB80: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003B92 00:BB82: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B94 00:BB84: 83        .byte $83   ; 
- D 1 - I - 0x003B95 00:BB85: 03        .byte $03   ; 
- D 1 - I - 0x003B96 00:BB86: 03        .byte $03   ; 
- D 1 - I - 0x003B97 00:BB87: 10        .byte $10   ; 
- D 1 - I - 0x003B98 00:BB88: 03        .byte $03   ; 
- D 1 - I - 0x003B99 00:BB89: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003B9B 00:BB8B: 85        .byte $85   ; 
- D 1 - I - 0x003B9C 00:BB8C: 0A        .byte $0A   ; 
- D 1 - I - 0x003B9D 00:BB8D: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003B9F 00:BB8F: 83        .byte $83   ; 
- D 1 - I - 0x003BA0 00:BB90: 03        .byte $03   ; 
- D 1 - I - 0x003BA1 00:BB91: 03        .byte $03   ; 
- D 1 - I - 0x003BA2 00:BB92: 03        .byte $03   ; 
- D 1 - I - 0x003BA3 00:BB93: 03        .byte $03   ; 
- D 1 - I - 0x003BA4 00:BB94: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BA6 00:BB96: 0A        .byte $0A   ; 
- D 1 - I - 0x003BA7 00:BB97: 85        .byte $85   ; 
- D 1 - I - 0x003BA8 00:BB98: 83        .byte $83   ; 
- D 1 - I - 0x003BA9 00:BB99: 0A        .byte $0A   ; 
- D 1 - I - 0x003BAA 00:BB9A: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BAC 00:BB9C: 83        .byte $83   ; 
- D 1 - I - 0x003BAD 00:BB9D: 03        .byte $03   ; 
- D 1 - I - 0x003BAE 00:BB9E: 03        .byte $03   ; 
- D 1 - I - 0x003BAF 00:BB9F: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BB1 00:BBA1: 83        .byte $83   ; 
- D 1 - I - 0x003BB2 00:BBA2: 03        .byte $03   ; 
- D 1 - I - 0x003BB3 00:BBA3: 03        .byte $03   ; 
- D 1 - I - 0x003BB4 00:BBA4: 10        .byte $10   ; 
- D 1 - I - 0x003BB5 00:BBA5: 03        .byte $03   ; 
- D 1 - I - 0x003BB6 00:BBA6: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BB8 00:BBA8: 85        .byte $85   ; 
- D 1 - I - 0x003BB9 00:BBA9: 0A        .byte $0A   ; 
- D 1 - I - 0x003BBA 00:BBAA: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BBC 00:BBAC: 83        .byte $83   ; 
- D 1 - I - 0x003BBD 00:BBAD: 03        .byte $03   ; 
- D 1 - I - 0x003BBE 00:BBAE: 03        .byte $03   ; 
- D 1 - I - 0x003BBF 00:BBAF: 03        .byte $03   ; 
- D 1 - I - 0x003BC0 00:BBB0: 03        .byte $03   ; 
- D 1 - I - 0x003BC1 00:BBB1: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BC3 00:BBB3: 0A        .byte $0A   ; 
- D 1 - I - 0x003BC4 00:BBB4: 85        .byte $85   ; 
- D 1 - I - 0x003BC5 00:BBB5: 83        .byte $83   ; 
- D 1 - I - 0x003BC6 00:BBB6: 0A        .byte $0A   ; 
- D 1 - I - 0x003BC7 00:BBB7: 85        .byte $85   ; 
- D 1 - I - 0x003BC8 00:BBB8: 0B        .byte $0B   ; 
- D 1 - I - 0x003BC9 00:BBB9: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003BCA 00:BBBA: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BCC 00:BBBC: 83        .byte $83   ; 
- D 1 - I - 0x003BCD 00:BBBD: 03        .byte $03   ; 
- D 1 - I - 0x003BCE 00:BBBE: 03        .byte $03   ; 
- D 1 - I - 0x003BCF 00:BBBF: 10        .byte $10   ; 
- D 1 - I - 0x003BD0 00:BBC0: 03        .byte $03   ; 
- D 1 - I - 0x003BD1 00:BBC1: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BD3 00:BBC3: 85        .byte $85   ; 
- D 1 - I - 0x003BD4 00:BBC4: 0A        .byte $0A   ; 
- D 1 - I - 0x003BD5 00:BBC5: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BD7 00:BBC7: 83        .byte $83   ; 
- D 1 - I - 0x003BD8 00:BBC8: 03        .byte $03   ; 
- D 1 - I - 0x003BD9 00:BBC9: 03        .byte $03   ; 
- D 1 - I - 0x003BDA 00:BBCA: 03        .byte $03   ; 
- D 1 - I - 0x003BDB 00:BBCB: 03        .byte $03   ; 
- D 1 - I - 0x003BDC 00:BBCC: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BDE 00:BBCE: 0A        .byte $0A   ; 
- D 1 - I - 0x003BDF 00:BBCF: 85        .byte $85   ; 
- D 1 - I - 0x003BE0 00:BBD0: 83        .byte $83   ; 
- D 1 - I - 0x003BE1 00:BBD1: 0A        .byte $0A   ; 
- D 1 - I - 0x003BE2 00:BBD2: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BE4 00:BBD4: 83        .byte $83   ; 
- D 1 - I - 0x003BE5 00:BBD5: 03        .byte $03   ; 
- D 1 - I - 0x003BE6 00:BBD6: 03        .byte $03   ; 
- D 1 - I - 0x003BE7 00:BBD7: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BE9 00:BBD9: 83        .byte $83   ; 
- D 1 - I - 0x003BEA 00:BBDA: 03        .byte $03   ; 
- D 1 - I - 0x003BEB 00:BBDB: 03        .byte $03   ; 
- D 1 - I - 0x003BEC 00:BBDC: 10        .byte $10   ; 
- D 1 - I - 0x003BED 00:BBDD: 03        .byte $03   ; 
- D 1 - I - 0x003BEE 00:BBDE: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BF0 00:BBE0: 85        .byte $85   ; 
- D 1 - I - 0x003BF1 00:BBE1: 0A        .byte $0A   ; 
- D 1 - I - 0x003BF2 00:BBE2: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003BF4 00:BBE4: 83        .byte $83   ; 
- D 1 - I - 0x003BF5 00:BBE5: 03        .byte $03   ; 
- D 1 - I - 0x003BF6 00:BBE6: 03        .byte $03   ; 
- D 1 - I - 0x003BF7 00:BBE7: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003BF9 00:BBE9: 85        .byte $85   ; 
- D 1 - I - 0x003BFA 00:BBEA: 0A        .byte $0A   ; 
- D 1 - I - 0x003BFB 00:BBEB: 0A        .byte $0A   ; 
- D 1 - I - 0x003BFC 00:BBEC: 83        .byte $83   ; 
- D 1 - I - 0x003BFD 00:BBED: 0B        .byte $0B   ; 
- D 1 - I - 0x003BFE 00:BBEE: 0B        .byte $0B   ; 
- D 1 - I - 0x003BFF 00:BBEF: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003C01 00:BBF1: 85        .byte $85   ; 
- D 1 - I - 0x003C02 00:BBF2: 0B        .byte $0B   ; 
- D 1 - I - 0x003C03 00:BBF3: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003C05 00:BBF5: 83        .byte $83   ; 
- D 1 - I - 0x003C06 00:BBF6: 85        .byte $85   ; 
- D 1 - I - 0x003C07 00:BBF7: 07        .byte $07   ; 
- D 1 - I - 0x003C08 00:BBF8: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C0A 00:BBFA: 83        .byte $83   ; 
- D 1 - I - 0x003C0B 00:BBFB: 03        .byte $03   ; 
- D 1 - I - 0x003C0C 00:BBFC: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C0E 00:BBFE: 85        .byte $85   ; 
- D 1 - I - 0x003C0F 00:BBFF: 0A        .byte $0A   ; 
- D 1 - I - 0x003C10 00:BC00: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C12 00:BC02: 83        .byte $83   ; 
- D 1 - I - 0x003C13 00:BC03: 03        .byte $03   ; 
- D 1 - I - 0x003C14 00:BC04: 03        .byte $03   ; 
- D 1 - I - 0x003C15 00:BC05: 03        .byte $03   ; 
- D 1 - I - 0x003C16 00:BC06: 03        .byte $03   ; 
- D 1 - I - 0x003C17 00:BC07: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C19 00:BC09: 0A        .byte $0A   ; 
- D 1 - I - 0x003C1A 00:BC0A: 85        .byte $85   ; 
- D 1 - I - 0x003C1B 00:BC0B: 83        .byte $83   ; 
- D 1 - I - 0x003C1C 00:BC0C: 0A        .byte $0A   ; 
- D 1 - I - 0x003C1D 00:BC0D: 85        .byte $85   ; 
- D 1 - I - 0x003C1E 00:BC0E: 0B        .byte $0B   ; 
- D 1 - I - 0x003C1F 00:BC0F: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C21 00:BC11: 83        .byte $83   ; 
- D 1 - I - 0x003C22 00:BC12: 03        .byte $03   ; 
- D 1 - I - 0x003C23 00:BC13: 03        .byte $03   ; 
- D 1 - I - 0x003C24 00:BC14: 10        .byte $10   ; 
- D 1 - I - 0x003C25 00:BC15: 03        .byte $03   ; 
- D 1 - I - 0x003C26 00:BC16: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C28 00:BC18: 85        .byte $85   ; 
- D 1 - I - 0x003C29 00:BC19: 0A        .byte $0A   ; 
- D 1 - I - 0x003C2A 00:BC1A: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C2C 00:BC1C: 83        .byte $83   ; 
- D 1 - I - 0x003C2D 00:BC1D: 03        .byte $03   ; 
- D 1 - I - 0x003C2E 00:BC1E: 03        .byte $03   ; 
- D 1 - I - 0x003C2F 00:BC1F: 03        .byte $03   ; 
- D 1 - I - 0x003C30 00:BC20: 03        .byte $03   ; 
- D 1 - I - 0x003C31 00:BC21: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C33 00:BC23: 0A        .byte $0A   ; 
- D 1 - I - 0x003C34 00:BC24: 85        .byte $85   ; 
- D 1 - I - 0x003C35 00:BC25: 83        .byte $83   ; 
- D 1 - I - 0x003C36 00:BC26: 0A        .byte $0A   ; 
- D 1 - I - 0x003C37 00:BC27: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C39 00:BC29: 83        .byte $83   ; 
- D 1 - I - 0x003C3A 00:BC2A: 03        .byte $03   ; 
- D 1 - I - 0x003C3B 00:BC2B: 03        .byte $03   ; 
- D 1 - I - 0x003C3C 00:BC2C: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003C3E 00:BC2E: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C40 00:BC30: 83        .byte $83   ; 
- D 1 - I - 0x003C41 00:BC31: 03        .byte $03   ; 
- D 1 - I - 0x003C42 00:BC32: 03        .byte $03   ; 
- D 1 - I - 0x003C43 00:BC33: 10        .byte $10   ; 
- D 1 - I - 0x003C44 00:BC34: 03        .byte $03   ; 
- D 1 - I - 0x003C45 00:BC35: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C47 00:BC37: 85        .byte $85   ; 
- D 1 - I - 0x003C48 00:BC38: 0A        .byte $0A   ; 
- D 1 - I - 0x003C49 00:BC39: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C4B 00:BC3B: 83        .byte $83   ; 
- D 1 - I - 0x003C4C 00:BC3C: 03        .byte $03   ; 
- D 1 - I - 0x003C4D 00:BC3D: 03        .byte $03   ; 
- D 1 - I - 0x003C4E 00:BC3E: 03        .byte $03   ; 
- D 1 - I - 0x003C4F 00:BC3F: 03        .byte $03   ; 
- D 1 - I - 0x003C50 00:BC40: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C52 00:BC42: 0A        .byte $0A   ; 
- D 1 - I - 0x003C53 00:BC43: 85        .byte $85   ; 
- D 1 - I - 0x003C54 00:BC44: 83        .byte $83   ; 
- D 1 - I - 0x003C55 00:BC45: 0A        .byte $0A   ; 
- D 1 - I - 0x003C56 00:BC46: 85        .byte $85   ; 
- D 1 - I - 0x003C57 00:BC47: 0B        .byte $0B   ; 
- D 1 - I - 0x003C58 00:BC48: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C5A 00:BC4A: 83        .byte $83   ; 
- D 1 - I - 0x003C5B 00:BC4B: 03        .byte $03   ; 
- D 1 - I - 0x003C5C 00:BC4C: 03        .byte $03   ; 
- D 1 - I - 0x003C5D 00:BC4D: 10        .byte $10   ; 
- D 1 - I - 0x003C5E 00:BC4E: 03        .byte $03   ; 
- D 1 - I - 0x003C5F 00:BC4F: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C61 00:BC51: 85        .byte $85   ; 
- D 1 - I - 0x003C62 00:BC52: 0A        .byte $0A   ; 
- D 1 - I - 0x003C63 00:BC53: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C65 00:BC55: 83        .byte $83   ; 
- D 1 - I - 0x003C66 00:BC56: 03        .byte $03   ; 
- D 1 - I - 0x003C67 00:BC57: 03        .byte $03   ; 
- D 1 - I - 0x003C68 00:BC58: 03        .byte $03   ; 
- D 1 - I - 0x003C69 00:BC59: 03        .byte $03   ; 
- D 1 - I - 0x003C6A 00:BC5A: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C6C 00:BC5C: 0A        .byte $0A   ; 
- D 1 - I - 0x003C6D 00:BC5D: 85        .byte $85   ; 
- D 1 - I - 0x003C6E 00:BC5E: 83        .byte $83   ; 
- D 1 - I - 0x003C6F 00:BC5F: 0A        .byte $0A   ; 
- D 1 - I - 0x003C70 00:BC60: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C72 00:BC62: 83        .byte $83   ; 
- D 1 - I - 0x003C73 00:BC63: 03        .byte $03   ; 
- D 1 - I - 0x003C74 00:BC64: 03        .byte $03   ; 
- D 1 - I - 0x003C75 00:BC65: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003C76 00:BC66: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C78 00:BC68: 83        .byte $83   ; 
- D 1 - I - 0x003C79 00:BC69: 03        .byte $03   ; 
- D 1 - I - 0x003C7A 00:BC6A: 03        .byte $03   ; 
- D 1 - I - 0x003C7B 00:BC6B: 10        .byte $10   ; 
- D 1 - I - 0x003C7C 00:BC6C: 03        .byte $03   ; 
- D 1 - I - 0x003C7D 00:BC6D: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C7F 00:BC6F: 85        .byte $85   ; 
- D 1 - I - 0x003C80 00:BC70: 0A        .byte $0A   ; 
- D 1 - I - 0x003C81 00:BC71: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C83 00:BC73: 83        .byte $83   ; 
- D 1 - I - 0x003C84 00:BC74: 03        .byte $03   ; 
- D 1 - I - 0x003C85 00:BC75: 03        .byte $03   ; 
- D 1 - I - 0x003C86 00:BC76: 03        .byte $03   ; 
- D 1 - I - 0x003C87 00:BC77: 03        .byte $03   ; 
- D 1 - I - 0x003C88 00:BC78: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C8A 00:BC7A: 0A        .byte $0A   ; 
- D 1 - I - 0x003C8B 00:BC7B: 85        .byte $85   ; 
- D 1 - I - 0x003C8C 00:BC7C: 83        .byte $83   ; 
- D 1 - I - 0x003C8D 00:BC7D: 0A        .byte $0A   ; 
- D 1 - I - 0x003C8E 00:BC7E: 85        .byte $85   ; 
- D 1 - I - 0x003C8F 00:BC7F: 0B        .byte $0B   ; 
- D 1 - I - 0x003C90 00:BC80: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C92 00:BC82: 83        .byte $83   ; 
- D 1 - I - 0x003C93 00:BC83: 03        .byte $03   ; 
- D 1 - I - 0x003C94 00:BC84: 03        .byte $03   ; 
- D 1 - I - 0x003C95 00:BC85: 10        .byte $10   ; 
- D 1 - I - 0x003C96 00:BC86: 03        .byte $03   ; 
- D 1 - I - 0x003C97 00:BC87: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003C99 00:BC89: 85        .byte $85   ; 
- D 1 - I - 0x003C9A 00:BC8A: 0A        .byte $0A   ; 
- D 1 - I - 0x003C9B 00:BC8B: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003C9D 00:BC8D: 83        .byte $83   ; 
- D 1 - I - 0x003C9E 00:BC8E: 03        .byte $03   ; 
- D 1 - I - 0x003C9F 00:BC8F: 03        .byte $03   ; 
- D 1 - I - 0x003CA0 00:BC90: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CA2 00:BC92: 83        .byte $83   ; 
- D 1 - I - 0x003CA3 00:BC93: 0A        .byte $0A   ; 
- D 1 - I - 0x003CA4 00:BC94: 0A        .byte $0A   ; 
- D 1 - I - 0x003CA5 00:BC95: 0A        .byte $0A   ; 
- D 1 - I - 0x003CA6 00:BC96: 0A        .byte $0A   ; 
- D 1 - I - 0x003CA7 00:BC97: 0B        .byte $0B   ; 
- D 1 - I - 0x003CA8 00:BC98: 0B        .byte $0B   ; 
- D 1 - I - 0x003CA9 00:BC99: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003CAB 00:BC9B: 85        .byte $85   ; 
- D 1 - I - 0x003CAC 00:BC9C: 0B        .byte $0B   ; 
- D 1 - I - 0x003CAD 00:BC9D: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003CAF 00:BC9F: 85        .byte $85   ; 
- D 1 - I - 0x003CB0 00:BCA0: 07        .byte $07   ; 
- D 1 - I - 0x003CB1 00:BCA1: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CB3 00:BCA3: 0A        .byte $0A   ; 
- D 1 - I - 0x003CB4 00:BCA4: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CB6 00:BCA6: 83        .byte $83   ; 
- D 1 - I - 0x003CB7 00:BCA7: 03        .byte $03   ; 
- D 1 - I - 0x003CB8 00:BCA8: 10        .byte $10   ; 
- D 1 - I - 0x003CB9 00:BCA9: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CBB 00:BCAB: 85        .byte $85   ; 
- D 1 - I - 0x003CBC 00:BCAC: 0A        .byte $0A   ; 
- D 1 - I - 0x003CBD 00:BCAD: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CBF 00:BCAF: 83        .byte $83   ; 
- D 1 - I - 0x003CC0 00:BCB0: 03        .byte $03   ; 
- D 1 - I - 0x003CC1 00:BCB1: 03        .byte $03   ; 
- D 1 - I - 0x003CC2 00:BCB2: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CC4 00:BCB4: 85        .byte $85   ; 
- D 1 - I - 0x003CC5 00:BCB5: 0A        .byte $0A   ; 
- D 1 - I - 0x003CC6 00:BCB6: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CC8 00:BCB8: 83        .byte $83   ; 
- D 1 - I - 0x003CC9 00:BCB9: 03        .byte $03   ; 
- D 1 - I - 0x003CCA 00:BCBA: 10        .byte $10   ; 
- D 1 - I - 0x003CCB 00:BCBB: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CCD 00:BCBD: 85        .byte $85   ; 
- D 1 - I - 0x003CCE 00:BCBE: 0A        .byte $0A   ; 
- D 1 - I - 0x003CCF 00:BCBF: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003CD1 00:BCC1: 85        .byte $85   ; 
- D 1 - I - 0x003CD2 00:BCC2: 07        .byte $07   ; 
- D 1 - I - 0x003CD3 00:BCC3: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CD5 00:BCC5: 0A        .byte $0A   ; 
- D 1 - I - 0x003CD6 00:BCC6: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CD8 00:BCC8: 83        .byte $83   ; 
- D 1 - I - 0x003CD9 00:BCC9: 03        .byte $03   ; 
- D 1 - I - 0x003CDA 00:BCCA: 10        .byte $10   ; 
- D 1 - I - 0x003CDB 00:BCCB: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CDD 00:BCCD: 85        .byte $85   ; 
- D 1 - I - 0x003CDE 00:BCCE: 0A        .byte $0A   ; 
- D 1 - I - 0x003CDF 00:BCCF: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CE1 00:BCD1: 83        .byte $83   ; 
- D 1 - I - 0x003CE2 00:BCD2: 03        .byte $03   ; 
- D 1 - I - 0x003CE3 00:BCD3: 03        .byte $03   ; 
- D 1 - I - 0x003CE4 00:BCD4: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CE6 00:BCD6: 85        .byte $85   ; 
- D 1 - I - 0x003CE7 00:BCD7: 0A        .byte $0A   ; 
- D 1 - I - 0x003CE8 00:BCD8: 83        .byte $83   ; 
- D 1 - I - 0x003CE9 00:BCD9: 0A        .byte $0A   ; 
- D 1 - I - 0x003CEA 00:BCDA: 0A        .byte $0A   ; 
- D 1 - I - 0x003CEB 00:BCDB: 0A        .byte $0A   ; 
- D 1 - I - 0x003CEC 00:BCDC: 0B        .byte $0B   ; 
- D 1 - I - 0x003CED 00:BCDD: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003CEF 00:BCDF: 85        .byte $85   ; 
- D 1 - I - 0x003CF0 00:BCE0: 83        .byte $83   ; 
- D 1 - I - 0x003CF1 00:BCE1: 07        .byte $07   ; 
- D 1 - I - 0x003CF2 00:BCE2: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CF4 00:BCE4: 83        .byte $83   ; 
- D 1 - I - 0x003CF5 00:BCE5: 03        .byte $03   ; 
- D 1 - I - 0x003CF6 00:BCE6: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003CF8 00:BCE8: 85        .byte $85   ; 
- D 1 - I - 0x003CF9 00:BCE9: 0A        .byte $0A   ; 
- D 1 - I - 0x003CFA 00:BCEA: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003CFC 00:BCEC: 83        .byte $83   ; 
- D 1 - I - 0x003CFD 00:BCED: 03        .byte $03   ; 
- D 1 - I - 0x003CFE 00:BCEE: 03        .byte $03   ; 
- D 1 - I - 0x003CFF 00:BCEF: 03        .byte $03   ; 
- D 1 - I - 0x003D00 00:BCF0: 03        .byte $03   ; 
- D 1 - I - 0x003D01 00:BCF1: 10        .byte $10   ; 
- D 1 - I - 0x003D02 00:BCF2: 03        .byte $03   ; 
- D 1 - I - 0x003D03 00:BCF3: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D05 00:BCF5: 85        .byte $85   ; 
- D 1 - I - 0x003D06 00:BCF6: 0A        .byte $0A   ; 
- D 1 - I - 0x003D07 00:BCF7: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D09 00:BCF9: 83        .byte $83   ; 
- D 1 - I - 0x003D0A 00:BCFA: 03        .byte $03   ; 
- D 1 - I - 0x003D0B 00:BCFB: 03        .byte $03   ; 
- D 1 - I - 0x003D0C 00:BCFC: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D0E 00:BCFE: 83        .byte $83   ; 
- D 1 - I - 0x003D0F 00:BCFF: 03        .byte $03   ; 
- D 1 - I - 0x003D10 00:BD00: 03        .byte $03   ; 
- D 1 - I - 0x003D11 00:BD01: 10        .byte $10   ; 
- D 1 - I - 0x003D12 00:BD02: 03        .byte $03   ; 
- D 1 - I - 0x003D13 00:BD03: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D15 00:BD05: 85        .byte $85   ; 
- D 1 - I - 0x003D16 00:BD06: 0A        .byte $0A   ; 
- D 1 - I - 0x003D17 00:BD07: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D19 00:BD09: 83        .byte $83   ; 
- D 1 - I - 0x003D1A 00:BD0A: 03        .byte $03   ; 
- D 1 - I - 0x003D1B 00:BD0B: 03        .byte $03   ; 
- D 1 - I - 0x003D1C 00:BD0C: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D1E 00:BD0E: 83        .byte $83   ; 
- D 1 - I - 0x003D1F 00:BD0F: 0A        .byte $0A   ; 
- D 1 - I - 0x003D20 00:BD10: 0A        .byte $0A   ; 
- D 1 - I - 0x003D21 00:BD11: 0A        .byte $0A   ; 
- D 1 - I - 0x003D22 00:BD12: 0A        .byte $0A   ; 
- D 1 - I - 0x003D23 00:BD13: 0B        .byte $0B   ; 
- D 1 - I - 0x003D24 00:BD14: 0B        .byte $0B   ; 
- D 1 - I - 0x003D25 00:BD15: 0B        .byte $0B   ; 
- D 1 - I - 0x003D26 00:BD16: 0B        .byte $0B   ; 
- D 1 - I - 0x003D27 00:BD17: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003D28 00:BD18: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003D2A 00:BD1A: 85        .byte $85   ; 
- D 1 - I - 0x003D2B 00:BD1B: 07        .byte $07   ; 
- D 1 - I - 0x003D2C 00:BD1C: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D2E 00:BD1E: 85        .byte $85   ; 
- D 1 - I - 0x003D2F 00:BD1F: 0A        .byte $0A   ; 
- D 1 - I - 0x003D30 00:BD20: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D32 00:BD22: 83        .byte $83   ; 
- D 1 - I - 0x003D33 00:BD23: 03        .byte $03   ; 
- D 1 - I - 0x003D34 00:BD24: 10        .byte $10   ; 
- D 1 - I - 0x003D35 00:BD25: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D37 00:BD27: 85        .byte $85   ; 
- D 1 - I - 0x003D38 00:BD28: 0A        .byte $0A   ; 
- D 1 - I - 0x003D39 00:BD29: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D3B 00:BD2B: 83        .byte $83   ; 
- D 1 - I - 0x003D3C 00:BD2C: 03        .byte $03   ; 
- D 1 - I - 0x003D3D 00:BD2D: 03        .byte $03   ; 
- D 1 - I - 0x003D3E 00:BD2E: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D40 00:BD30: 0A        .byte $0A   ; 
- D 1 - I - 0x003D41 00:BD31: 85        .byte $85   ; 
- D 1 - I - 0x003D42 00:BD32: 0A        .byte $0A   ; 
- D 1 - I - 0x003D43 00:BD33: 83        .byte $83   ; 
- D 1 - I - 0x003D44 00:BD34: 10        .byte $10   ; 
- D 1 - I - 0x003D45 00:BD35: 85        .byte $85   ; 
- D 1 - I - 0x003D46 00:BD36: 0A        .byte $0A   ; 
- D 1 - I - 0x003D47 00:BD37: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003D49 00:BD39: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D4B 00:BD3B: 83        .byte $83   ; 
- D 1 - I - 0x003D4C 00:BD3C: 03        .byte $03   ; 
- D 1 - I - 0x003D4D 00:BD3D: 03        .byte $03   ; 
- D 1 - I - 0x003D4E 00:BD3E: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D50 00:BD40: 85        .byte $85   ; 
- D 1 - I - 0x003D51 00:BD41: 0A        .byte $0A   ; 
- D 1 - I - 0x003D52 00:BD42: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D54 00:BD44: 83        .byte $83   ; 
- D 1 - I - 0x003D55 00:BD45: 03        .byte $03   ; 
- D 1 - I - 0x003D56 00:BD46: 10        .byte $10   ; 
- D 1 - I - 0x003D57 00:BD47: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D59 00:BD49: 85        .byte $85   ; 
- D 1 - I - 0x003D5A 00:BD4A: 0A        .byte $0A   ; 
- D 1 - I - 0x003D5B 00:BD4B: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D5D 00:BD4D: 83        .byte $83   ; 
- D 1 - I - 0x003D5E 00:BD4E: 03        .byte $03   ; 
- D 1 - I - 0x003D5F 00:BD4F: 03        .byte $03   ; 
- D 1 - I - 0x003D60 00:BD50: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D62 00:BD52: 0A        .byte $0A   ; 
- D 1 - I - 0x003D63 00:BD53: 85        .byte $85   ; 
- D 1 - I - 0x003D64 00:BD54: 0A        .byte $0A   ; 
- D 1 - I - 0x003D65 00:BD55: 83        .byte $83   ; 
- D 1 - I - 0x003D66 00:BD56: 10        .byte $10   ; 
- D 1 - I - 0x003D67 00:BD57: 85        .byte $85   ; 
- D 1 - I - 0x003D68 00:BD58: 0A        .byte $0A   ; 
- D 1 - I - 0x003D69 00:BD59: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003D6A 00:BD5A: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D6C 00:BD5C: 83        .byte $83   ; 
- D 1 - I - 0x003D6D 00:BD5D: 03        .byte $03   ; 
- D 1 - I - 0x003D6E 00:BD5E: 03        .byte $03   ; 
- D 1 - I - 0x003D6F 00:BD5F: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D71 00:BD61: 85        .byte $85   ; 
- D 1 - I - 0x003D72 00:BD62: 0A        .byte $0A   ; 
- D 1 - I - 0x003D73 00:BD63: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D75 00:BD65: 83        .byte $83   ; 
- D 1 - I - 0x003D76 00:BD66: 03        .byte $03   ; 
- D 1 - I - 0x003D77 00:BD67: 10        .byte $10   ; 
- D 1 - I - 0x003D78 00:BD68: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D7A 00:BD6A: 85        .byte $85   ; 
- D 1 - I - 0x003D7B 00:BD6B: 0A        .byte $0A   ; 
- D 1 - I - 0x003D7C 00:BD6C: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D7E 00:BD6E: 83        .byte $83   ; 
- D 1 - I - 0x003D7F 00:BD6F: 03        .byte $03   ; 
- D 1 - I - 0x003D80 00:BD70: 03        .byte $03   ; 
- D 1 - I - 0x003D81 00:BD71: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D83 00:BD73: 0A        .byte $0A   ; 
- D 1 - I - 0x003D84 00:BD74: 85        .byte $85   ; 
- D 1 - I - 0x003D85 00:BD75: 0A        .byte $0A   ; 
- D 1 - I - 0x003D86 00:BD76: 83        .byte $83   ; 
- D 1 - I - 0x003D87 00:BD77: 0A        .byte $0A   ; 
- D 1 - I - 0x003D88 00:BD78: 0B        .byte $0B   ; 
- D 1 - I - 0x003D89 00:BD79: 0B        .byte $0B   ; 
- D 1 - I - 0x003D8A 00:BD7A: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003D8C 00:BD7C: 85        .byte $85   ; 
- D 1 - I - 0x003D8D 00:BD7D: 07        .byte $07   ; 
- D 1 - I - 0x003D8E 00:BD7E: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D90 00:BD80: 85        .byte $85   ; 
- D 1 - I - 0x003D91 00:BD81: 0A        .byte $0A   ; 
- D 1 - I - 0x003D92 00:BD82: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D94 00:BD84: 83        .byte $83   ; 
- D 1 - I - 0x003D95 00:BD85: 03        .byte $03   ; 
- D 1 - I - 0x003D96 00:BD86: 10        .byte $10   ; 
- D 1 - I - 0x003D97 00:BD87: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003D99 00:BD89: 85        .byte $85   ; 
- D 1 - I - 0x003D9A 00:BD8A: 0A        .byte $0A   ; 
- D 1 - I - 0x003D9B 00:BD8B: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003D9D 00:BD8D: 83        .byte $83   ; 
- D 1 - I - 0x003D9E 00:BD8E: 03        .byte $03   ; 
- D 1 - I - 0x003D9F 00:BD8F: 03        .byte $03   ; 
- D 1 - I - 0x003DA0 00:BD90: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DA2 00:BD92: 0A        .byte $0A   ; 
- D 1 - I - 0x003DA3 00:BD93: 85        .byte $85   ; 
- D 1 - I - 0x003DA4 00:BD94: 0A        .byte $0A   ; 
- D 1 - I - 0x003DA5 00:BD95: 83        .byte $83   ; 
- D 1 - I - 0x003DA6 00:BD96: 10        .byte $10   ; 
- D 1 - I - 0x003DA7 00:BD97: 85        .byte $85   ; 
- D 1 - I - 0x003DA8 00:BD98: 0A        .byte $0A   ; 
- D 1 - I - 0x003DA9 00:BD99: EB        .byte con_se_cb_EB, $02   ; 
- D 1 - I - 0x003DAB 00:BD9B: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DAD 00:BD9D: 83        .byte $83   ; 
- D 1 - I - 0x003DAE 00:BD9E: 03        .byte $03   ; 
- D 1 - I - 0x003DAF 00:BD9F: 03        .byte $03   ; 
- D 1 - I - 0x003DB0 00:BDA0: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DB2 00:BDA2: 85        .byte $85   ; 
- D 1 - I - 0x003DB3 00:BDA3: 0A        .byte $0A   ; 
- D 1 - I - 0x003DB4 00:BDA4: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DB6 00:BDA6: 83        .byte $83   ; 
- D 1 - I - 0x003DB7 00:BDA7: 03        .byte $03   ; 
- D 1 - I - 0x003DB8 00:BDA8: 10        .byte $10   ; 
- D 1 - I - 0x003DB9 00:BDA9: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DBB 00:BDAB: 85        .byte $85   ; 
- D 1 - I - 0x003DBC 00:BDAC: 0A        .byte $0A   ; 
- D 1 - I - 0x003DBD 00:BDAD: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DBF 00:BDAF: 83        .byte $83   ; 
- D 1 - I - 0x003DC0 00:BDB0: 03        .byte $03   ; 
- D 1 - I - 0x003DC1 00:BDB1: 03        .byte $03   ; 
- D 1 - I - 0x003DC2 00:BDB2: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DC4 00:BDB4: 0A        .byte $0A   ; 
- D 1 - I - 0x003DC5 00:BDB5: 85        .byte $85   ; 
- D 1 - I - 0x003DC6 00:BDB6: 0A        .byte $0A   ; 
- D 1 - I - 0x003DC7 00:BDB7: 83        .byte $83   ; 
- D 1 - I - 0x003DC8 00:BDB8: 10        .byte $10   ; 
- D 1 - I - 0x003DC9 00:BDB9: 85        .byte $85   ; 
- D 1 - I - 0x003DCA 00:BDBA: 0A        .byte $0A   ; 
- D 1 - I - 0x003DCB 00:BDBB: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003DCC 00:BDBC: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DCE 00:BDBE: 83        .byte $83   ; 
- D 1 - I - 0x003DCF 00:BDBF: 03        .byte $03   ; 
- D 1 - I - 0x003DD0 00:BDC0: 03        .byte $03   ; 
- D 1 - I - 0x003DD1 00:BDC1: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DD3 00:BDC3: 85        .byte $85   ; 
- D 1 - I - 0x003DD4 00:BDC4: 0A        .byte $0A   ; 
- D 1 - I - 0x003DD5 00:BDC5: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DD7 00:BDC7: 83        .byte $83   ; 
- D 1 - I - 0x003DD8 00:BDC8: 03        .byte $03   ; 
- D 1 - I - 0x003DD9 00:BDC9: 10        .byte $10   ; 
- D 1 - I - 0x003DDA 00:BDCA: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DDC 00:BDCC: 85        .byte $85   ; 
- D 1 - I - 0x003DDD 00:BDCD: 0A        .byte $0A   ; 
- D 1 - I - 0x003DDE 00:BDCE: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DE0 00:BDD0: 83        .byte $83   ; 
- D 1 - I - 0x003DE1 00:BDD1: 03        .byte $03   ; 
- D 1 - I - 0x003DE2 00:BDD2: 03        .byte $03   ; 
- D 1 - I - 0x003DE3 00:BDD3: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DE5 00:BDD5: 0A        .byte $0A   ; 
- D 1 - I - 0x003DE6 00:BDD6: 0A        .byte $0A   ; 
- D 1 - I - 0x003DE7 00:BDD7: 0B        .byte $0B   ; 
- D 1 - I - 0x003DE8 00:BDD8: 0B        .byte $0B   ; 
- D 1 - I - 0x003DE9 00:BDD9: 0C        .byte $0C   ; 
- D 1 - I - 0x003DEA 00:BDDA: 0C        .byte $0C   ; 
- D 1 - I - 0x003DEB 00:BDDB: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003DED 00:BDDD: 85        .byte $85   ; 
- D 1 - I - 0x003DEE 00:BDDE: 07        .byte $07   ; 
- D 1 - I - 0x003DEF 00:BDDF: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DF1 00:BDE1: 85        .byte $85   ; 
- D 1 - I - 0x003DF2 00:BDE2: 0A        .byte $0A   ; 
- D 1 - I - 0x003DF3 00:BDE3: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003DF5 00:BDE5: 83        .byte $83   ; 
- D 1 - I - 0x003DF6 00:BDE6: 03        .byte $03   ; 
- D 1 - I - 0x003DF7 00:BDE7: 10        .byte $10   ; 
- D 1 - I - 0x003DF8 00:BDE8: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003DFA 00:BDEA: 83        .byte $83   ; 
- D 1 - I - 0x003DFB 00:BDEB: 0A        .byte $0A   ; 
- D 1 - I - 0x003DFC 00:BDEC: 85        .byte $85   ; 
- D 1 - I - 0x003DFD 00:BDED: 0A        .byte $0A   ; 
- D 1 - I - 0x003DFE 00:BDEE: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003E00 00:BDF0: 83        .byte $83   ; 
- D 1 - I - 0x003E01 00:BDF1: 03        .byte $03   ; 
- D 1 - I - 0x003E02 00:BDF2: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003E04 00:BDF4: 85        .byte $85   ; 
- D 1 - I - 0x003E05 00:BDF5: 0A        .byte $0A   ; 
- D 1 - I - 0x003E06 00:BDF6: 83        .byte $83   ; 
- D 1 - I - 0x003E07 00:BDF7: 0A        .byte $0A   ; 
- D 1 - I - 0x003E08 00:BDF8: 0A        .byte $0A   ; 
- D 1 - I - 0x003E09 00:BDF9: 85        .byte $85   ; 
- D 1 - I - 0x003E0A 00:BDFA: 0A        .byte $0A   ; 
- D 1 - I - 0x003E0B 00:BDFB: EB        .byte con_se_cb_EB, $05   ; 
- D 1 - I - 0x003E0D 00:BDFD: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003E0F 00:BDFF: 83        .byte $83   ; 
- D 1 - I - 0x003E10 00:BE00: 03        .byte $03   ; 
- D 1 - I - 0x003E11 00:BE01: 03        .byte $03   ; 
- D 1 - I - 0x003E12 00:BE02: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003E14 00:BE04: 85        .byte $85   ; 
- D 1 - I - 0x003E15 00:BE05: 0A        .byte $0A   ; 
- D 1 - I - 0x003E16 00:BE06: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003E18 00:BE08: 83        .byte $83   ; 
- D 1 - I - 0x003E19 00:BE09: 03        .byte $03   ; 
- D 1 - I - 0x003E1A 00:BE0A: 10        .byte $10   ; 
- D 1 - I - 0x003E1B 00:BE0B: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003E1D 00:BE0D: 83        .byte $83   ; 
- D 1 - I - 0x003E1E 00:BE0E: 0A        .byte $0A   ; 
- D 1 - I - 0x003E1F 00:BE0F: 85        .byte $85   ; 
- D 1 - I - 0x003E20 00:BE10: 0A        .byte $0A   ; 
- D 1 - I - 0x003E21 00:BE11: E0        .byte con_se_cb_E0, $0E   ; 
- D 1 - I - 0x003E23 00:BE13: 83        .byte $83   ; 
- D 1 - I - 0x003E24 00:BE14: 03        .byte $03   ; 
- D 1 - I - 0x003E25 00:BE15: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003E27 00:BE17: 85        .byte $85   ; 
- D 1 - I - 0x003E28 00:BE18: 0A        .byte $0A   ; 
- D 1 - I - 0x003E29 00:BE19: 83        .byte $83   ; 
- D 1 - I - 0x003E2A 00:BE1A: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2B 00:BE1B: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2C 00:BE1C: 85        .byte $85   ; 
- D 1 - I - 0x003E2D 00:BE1D: 0A        .byte $0A   ; 
- D 1 - I - 0x003E2E 00:BE1E: EC        .byte con_se_cb_EC   ; 
- D 1 - I - 0x003E2F 00:BE1F: E0        .byte con_se_cb_E0, $0D   ; 
- D 1 - I - 0x003E31 00:BE21: 85        .byte $85   ; 
- D 1 - I - 0x003E32 00:BE22: 0A        .byte $0A   ; 
- D 1 - I - 0x003E33 00:BE23: 83        .byte $83   ; 
- D 1 - I - 0x003E34 00:BE24: 10        .byte $10   ; 
- D 1 - I - 0x003E35 00:BE25: 85        .byte $85   ; 
- D 1 - I - 0x003E36 00:BE26: 0A        .byte $0A   ; 
- D 1 - I - 0x003E37 00:BE27: 83        .byte $83   ; 
- D 1 - I - 0x003E38 00:BE28: 0A        .byte $0A   ; 
- D 1 - I - 0x003E39 00:BE29: 0A        .byte $0A   ; 
- D 1 - I - 0x003E3A 00:BE2A: 85        .byte $85   ; 
- D 1 - I - 0x003E3B 00:BE2B: 0A        .byte $0A   ; 
- D 1 - I - 0x003E3C 00:BE2C: 83        .byte $83   ; 
- D 1 - I - 0x003E3D 00:BE2D: 10        .byte $10   ; 
- D 1 - I - 0x003E3E 00:BE2E: 85        .byte $85   ; 
- D 1 - I - 0x003E3F 00:BE2F: 0A        .byte $0A   ; 
- D 1 - I - 0x003E40 00:BE30: 83        .byte $83   ; 
- D 1 - I - 0x003E41 00:BE31: 0A        .byte $0A   ; 
- D 1 - I - 0x003E42 00:BE32: 0A        .byte $0A   ; 
- D 1 - I - 0x003E43 00:BE33: 85        .byte $85   ; 
- D 1 - I - 0x003E44 00:BE34: 0A        .byte $0A   ; 
- D 1 - I - 0x003E45 00:BE35: E0        .byte con_se_cb_E0, $18   ; 
- D 1 - I - 0x003E47 00:BE37: 85        .byte $85   ; 
- D 1 - I - 0x003E48 00:BE38: 83        .byte $83   ; 
- D 1 - I - 0x003E49 00:BE39: 0B        .byte $0B   ; 
- D 1 - I - 0x003E4A 00:BE3A: 83        .byte $83   ; 
- D 1 - I - 0x003E4B 00:BE3B: 0C        .byte $0C   ; 
- D 1 - I - 0x003E4C 00:BE3C: 85        .byte $85   ; 
- D 1 - I - 0x003E4D 00:BE3D: 0C        .byte $0C   ; 
- D 1 - I - 0x003E4E 00:BE3E: 0B        .byte $0B   ; 
- D 1 - I - 0x003E4F 00:BE3F: 85        .byte $85   ; 
- D 1 - I - 0x003E50 00:BE40: 0B        .byte $0B   ; 
- D 1 - I - 0x003E51 00:BE41: 0B        .byte $0B   ; 
- D 1 - I - 0x003E52 00:BE42: 83        .byte $83   ; 
- D 1 - I - 0x003E53 00:BE43: 0A        .byte $0A   ; 
- D 1 - I - 0x003E54 00:BE44: 0A        .byte $0A   ; 
- D 1 - I - 0x003E55 00:BE45: E0        .byte con_se_cb_E0, $13   ; 
- D 1 - I - 0x003E57 00:BE47: 85        .byte $85   ; 
- D 1 - I - 0x003E58 00:BE48: 0D        .byte $0D   ; 
- D 1 - I - 0x003E59 00:BE49: E8        .byte con_se_cb_jmp   ; 
- D 1 - I - 0x003E5A 00:BE4A: 45 BB     .word off_E8_BB45


; bzk garbage
- - - - - - 0x003E5C 00:BE4C: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E60 00:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E70 00:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E80 00:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003E90 00:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EA0 00:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EB0 00:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EC0 00:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003ED0 00:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EE0 00:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003EF0 00:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F00 00:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F10 00:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F20 00:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F30 00:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F40 00:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F50 00:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F60 00:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F70 00:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F80 00:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F90 00:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FA0 00:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FB0 00:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC0 00:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD0 00:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE0 00:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF0 00:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($C000 - *), ($C000 - *))



