.segment "BANK_3C"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x018010-0x01C00F



.export sub_0x018011_stop_sound_engine
.export sub_0x018049_play_sound
.export sub_0x01814C_update_sound_engine



; bzk this byte must be placed at 8000
- D 0 - - - 0x018010 06:8000: 3C        .byte con_prg_bank + $3C   ; 



sub_8001_28_36:
sub_0x018011_stop_sound_engine:
C - - - - - 0x018011 06:8001: A9        LDA #$00
C - - - - - 0x018013 06:8003: 86 E2     STX ram_00E2
C - - - - - 0x018015 06:8005: AA        TAX ; 00
bra_8006_loop:
C - - - - - 0x018016 06:8006: 9D 0A 01  STA ram_010A,X
C - - - - - 0x018019 06:8009: E8        INX
C - - - - - 0x01801A 06:800A: E0 06     CPX #$06
C - - - - - 0x01801C 06:800C: 90 F8     BCC bra_8006_loop
C - - - - - 0x01801E 06:800E: 8D 6D 01  STA ram_016A + $03
C - - - - - 0x018021 06:8011: A6 E2     LDX ram_00E2
loc_8013:
C D 0 - - - 0x018023 06:8013: 20 61 8C  JSR sub_8C61
C - - - - - 0x018026 06:8016: A9 30     LDA #$30
C - - - - - 0x018028 06:8018: 8D 00 40  STA $4000
C - - - - - 0x01802B 06:801B: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x01802E 06:801E: 8D 04 40  STA $4004
C - - - - - 0x018031 06:8021: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018034 06:8024: 8D 0C 40  STA $400C
C - - - - - 0x018037 06:8027: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x01803A 06:802A: A9 7F     LDA #$7F
C - - - - - 0x01803C 06:802C: 8D 01 40  STA $4001
C - - - - - 0x01803F 06:802F: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018042 06:8032: 8D 05 40  STA $4005
C - - - - - 0x018045 06:8035: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018048 06:8038: 60        RTS



sub_0x018049_play_sound:
C - - - - - 0x018049 06:8039: 8D 61 01  STA ram_0161
C - - - - - 0x01804C 06:803C: C9 37     CMP #$37
C - - - - - 0x01804E 06:803E: 90 03     BCC bra_8043
- - - - - - 0x018050 06:8040: 4C 6F 85  JMP loc_856F_37_3B
bra_8043:
C - - - - - 0x018053 06:8043: C9 28     CMP #$28
C - - - - - 0x018055 06:8045: 90 03     BCC bra_804A
C - - - - - 0x018057 06:8047: 20 01 80  JSR sub_8001_28_36
bra_804A:
C - - - - - 0x01805A 06:804A: C9 17     CMP #$17
C - - - - - 0x01805C 06:804C: D0 06     BNE bra_8054
C - - - - - 0x01805E 06:804E: CD 0E 01  CMP ram_010A + $04
C - - - - - 0x018061 06:8051: D0 01     BNE bra_8054
C - - - - - 0x018063 06:8053: 60        RTS
bra_8054:
C - - - - - 0x018064 06:8054: 86 E4     STX ram_00E4
C - - - - - 0x018066 06:8056: 84 E5     STY ram_00E5
C - - - - - 0x018068 06:8058: AD 61 01  LDA ram_0161
C - - - - - 0x01806B 06:805B: 0A        ASL
C - - - - - 0x01806C 06:805C: A8        TAY
C - - - - - 0x01806D 06:805D: B9 31 8D  LDA tbl_8D33 - $02,Y
C - - - - - 0x018070 06:8060: 85 E8     STA ram_00E8
C - - - - - 0x018072 06:8062: B9 32 8D  LDA tbl_8D33 - $02 + $01,Y
C - - - - - 0x018075 06:8065: 85 E9     STA ram_00E9
C - - - - - 0x018077 06:8067: A0 00     LDY #$00
C - - - - - 0x018079 06:8069: B1 E8     LDA (ram_00E8),Y
C - - - - - 0x01807B 06:806B: 85 EA     STA ram_00EA
loc_806D_loop:
C D 0 - - - 0x01807D 06:806D: C8        INY
C - - - - - 0x01807E 06:806E: B1 E8     LDA (ram_00E8),Y
C - - - - - 0x018080 06:8070: AA        TAX
C - - - - - 0x018081 06:8071: AD 61 01  LDA ram_0161
C - - - - - 0x018084 06:8074: DD 0A 01  CMP ram_010A,X
C - - - - - 0x018087 06:8077: B0 05     BCS bra_807E
C - - - - - 0x018089 06:8079: C8        INY
C - - - - - 0x01808A 06:807A: C8        INY
C - - - - - 0x01808B 06:807B: 4C E4 80  JMP loc_80E4
bra_807E:
C - - - - - 0x01808E 06:807E: C8        INY
C - - - - - 0x01808F 06:807F: B1 E8     LDA (ram_00E8),Y
C - - - - - 0x018091 06:8081: 9D 28 01  STA ram_0128,X
C - - - - - 0x018094 06:8084: 85 E6     STA ram_00E6
C - - - - - 0x018096 06:8086: C8        INY
C - - - - - 0x018097 06:8087: B1 E8     LDA (ram_00E8),Y
C - - - - - 0x018099 06:8089: 9D 2E 01  STA ram_012E,X
C - - - - - 0x01809C 06:808C: 85 E7     STA ram_00E7
C - - - - - 0x01809E 06:808E: A9 00     LDA #$00
C - - - - - 0x0180A0 06:8090: 9D 1C 01  STA ram_011C,X
C - - - - - 0x0180A3 06:8093: A9 01     LDA #$01
C - - - - - 0x0180A5 06:8095: 9D 04 01  STA ram_0104,X
C - - - - - 0x0180A8 06:8098: E0 03     CPX #$03
C - - - - - 0x0180AA 06:809A: F0 2C     BEQ bra_80C8
C - - - - - 0x0180AC 06:809C: A9 F8     LDA #$F8
C - - - - - 0x0180AE 06:809E: 9D 58 01  STA ram_0158,X
C - - - - - 0x0180B1 06:80A1: E0 05     CPX #$05
C - - - - - 0x0180B3 06:80A3: F0 23     BEQ bra_80C8
C - - - - - 0x0180B5 06:80A5: A9 00     LDA #$00
C - - - - - 0x0180B7 06:80A7: 9D 75 01  STA ram_0175,X
C - - - - - 0x0180BA 06:80AA: 9D 70 01  STA ram_0170,X
C - - - - - 0x0180BD 06:80AD: 9D 89 01  STA ram_0189,X
C - - - - - 0x0180C0 06:80B0: E0 04     CPX #$04
C - - - - - 0x0180C2 06:80B2: F0 14     BEQ bra_80C8
C - - - - - 0x0180C4 06:80B4: 9D 91 01  STA ram_0191,X
C - - - - - 0x0180C7 06:80B7: E0 02     CPX #$02
C - - - - - 0x0180C9 06:80B9: F0 0D     BEQ bra_80C8
C - - - - - 0x0180CB 06:80BB: 9D BC 01  STA ram_01BC,X
C - - - - - 0x0180CE 06:80BE: A9 01     LDA #$01
C - - - - - 0x0180D0 06:80C0: 9D B0 01  STA ram_01B0,X
C - - - - - 0x0180D3 06:80C3: A9 80     LDA #$80
C - - - - - 0x0180D5 06:80C5: 9D BE 01  STA ram_01BE,X
bra_80C8:
C - - - - - 0x0180D8 06:80C8: 84 E2     STY ram_00E2
C - - - - - 0x0180DA 06:80CA: A0 00     LDY #$00
C - - - - - 0x0180DC 06:80CC: B1 E6     LDA (ram_00E6),Y
C - - - - - 0x0180DE 06:80CE: C8        INY ; 01
C - - - - - 0x0180DF 06:80CF: C9 10     CMP #$10
C - - - - - 0x0180E1 06:80D1: 90 05     BCC bra_80D8
C - - - - - 0x0180E3 06:80D3: E0 04     CPX #$04
C - - - - - 0x0180E5 06:80D5: F0 01     BEQ bra_80D8
C - - - - - 0x0180E7 06:80D7: 88        DEY ; 00
bra_80D8:
C - - - - - 0x0180E8 06:80D8: 98        TYA
C - - - - - 0x0180E9 06:80D9: 9D 16 01  STA ram_0116,X
C - - - - - 0x0180EC 06:80DC: A4 E2     LDY ram_00E2
C - - - - - 0x0180EE 06:80DE: AD 61 01  LDA ram_0161
C - - - - - 0x0180F1 06:80E1: 9D 0A 01  STA ram_010A,X
loc_80E4:
C D 0 - - - 0x0180F4 06:80E4: C6 EA     DEC ram_00EA
C - - - - - 0x0180F6 06:80E6: 30 03     BMI bra_80EB
C - - - - - 0x0180F8 06:80E8: 4C 6D 80  JMP loc_806D_loop
bra_80EB:
C - - - - - 0x0180FB 06:80EB: A6 E4     LDX ram_00E4
C - - - - - 0x0180FD 06:80ED: A4 E5     LDY ram_00E5
C - - - - - 0x0180FF 06:80EF: 60        RTS



sub_80F0:
C - - - - - 0x018100 06:80F0: 8D 6C 01  STA ram_016A + $02
C - - - - - 0x018103 06:80F3: C9 00     CMP #$00    ; bzk optimize
C - - - - - 0x018105 06:80F5: F0 03     BEQ bra_80FA
C - - - - - 0x018107 06:80F7: 4C 13 80  JMP loc_8013
bra_80FA:
C - - - - - 0x01810A 06:80FA: AD 0E 01  LDA ram_010A + $04
C - - - - - 0x01810D 06:80FD: D0 0C     BNE bra_810B_RTS
C - - - - - 0x01810F 06:80FF: AD 0A 01  LDA ram_010A
C - - - - - 0x018112 06:8102: F0 07     BEQ bra_810B_RTS
C - - - - - 0x018114 06:8104: A2 00     LDX #$00
C - - - - - 0x018116 06:8106: A0 00     LDY #$00
C - - - - - 0x018118 06:8108: 20 16 81  JSR sub_8116
bra_810B_RTS:
C - - - - - 0x01811B 06:810B: 60        RTS
bra_810C:
C - - - - - 0x01811C 06:810C: A9 30     LDA #$30
C - - - - - 0x01811E 06:810E: 9D 00 40  STA $4000,X
C - - - - - 0x018121 06:8111: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018124 06:8114: D0 12     BNE bra_8128    ; jmp



sub_8116:
C - - - - - 0x018126 06:8116: BD 16 01  LDA ram_0116,X
C - - - - - 0x018129 06:8119: 29 41     AND #$41
C - - - - - 0x01812B 06:811B: 0D 6C 01  ORA ram_016A + $02
C - - - - - 0x01812E 06:811E: D0 EC     BNE bra_810C
C - - - - - 0x018130 06:8120: BD 5E 01  LDA ram_015E,X
C - - - - - 0x018133 06:8123: 20 88 82  JSR sub_8288
C - - - - - 0x018136 06:8126: A2 00     LDX #$00
bra_8128:
C - - - - - 0x018138 06:8128: BD AC 01  LDA ram_01AC,X
C - - - - - 0x01813B 06:812B: 99 02 40  STA $4002,Y
C - - - - - 0x01813E 06:812E: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018141 06:8131: BD 58 01  LDA ram_0158,X
C - - - - - 0x018144 06:8134: 09 08     ORA #$08
C - - - - - 0x018146 06:8136: 99 03 40  STA $4003,Y
C - - - - - 0x018149 06:8139: 4C 28 8D  JMP loc_8D28_10_NOPs



sub_0x01814C_update_sound_engine:
C - - - - - 0x01814C 06:813C: AD 6D 01  LDA ram_016A + $03
C - - - - - 0x01814F 06:813F: F0 11     BEQ bra_8152
C - - - - - 0x018151 06:8141: EE 73 01  INC ram_0170 + $03
C - - - - - 0x018154 06:8144: AD 73 01  LDA ram_0170 + $03
C - - - - - 0x018157 06:8147: CD 6D 01  CMP ram_016A + $03
C - - - - - 0x01815A 06:814A: D0 06     BNE bra_8152
C - - - - - 0x01815C 06:814C: A9 00     LDA #$00
C - - - - - 0x01815E 06:814E: 8D 73 01  STA ram_0170 + $03
C - - - - - 0x018161 06:8151: 60        RTS
bra_8152:
C - - - - - 0x018162 06:8152: A5 39     LDA ram_pause_flag
C - - - - - 0x018164 06:8154: CD 6C 01  CMP ram_016A + $02
C - - - - - 0x018167 06:8157: F0 03     BEQ bra_815C
C - - - - - 0x018169 06:8159: 20 F0 80  JSR sub_80F0
bra_815C:
C - - - - - 0x01816C 06:815C: A2 00     LDX #$00
C - - - - - 0x01816E 06:815E: A0 00     LDY #$00
loc_8160_loop:
C D 0 - - - 0x018170 06:8160: 8E 5B 01  STX ram_0158 + $03
C - - - - - 0x018173 06:8163: 8C 60 01  STY ram_0160
C - - - - - 0x018176 06:8166: BD 0A 01  LDA ram_010A,X
C - - - - - 0x018179 06:8169: F0 03     BEQ bra_816E
C - - - - - 0x01817B 06:816B: 20 81 81  JSR sub_8181
bra_816E:
C - - - - - 0x01817E 06:816E: E8        INX
C - - - - - 0x01817F 06:816F: E0 06     CPX #$06
C - - - - - 0x018181 06:8171: F0 07     BEQ bra_817A_RTS
C - - - - - 0x018183 06:8173: BD 7B 81  LDA tbl_817B,X
C - - - - - 0x018186 06:8176: A8        TAY
C - - - - - 0x018187 06:8177: 4C 60 81  JMP loc_8160_loop
bra_817A_RTS:
C - - - - - 0x01818A 06:817A: 60        RTS



tbl_817B:
- D 0 - - - 0x01818B 06:817B: 00        .byte $00   ; 00 
- D 0 - - - 0x01818C 06:817C: 04        .byte $04   ; 01 
- D 0 - - - 0x01818D 06:817D: 08        .byte $08   ; 02 
- D 0 - - - 0x01818E 06:817E: 0C        .byte $0C   ; 03 
- D 0 - - - 0x01818F 06:817F: 00        .byte $00   ; 04 
- D 0 - - - 0x018190 06:8180: 0C        .byte $0C   ; 05 



sub_8181:
C - - - - - 0x018191 06:8181: 20 AB FD  JSR sub_0x01FDBB_select_secondary_music_bank
C - - - - - 0x018194 06:8184: AD 6C 01  LDA ram_016A + $02
C - - - - - 0x018197 06:8187: F0 07     BEQ bra_8190
C - - - - - 0x018199 06:8189: BD 0A 01  LDA ram_010A,X
C - - - - - 0x01819C 06:818C: C9 27     CMP #$27
C - - - - - 0x01819E 06:818E: D0 EA     BNE bra_817A_RTS
bra_8190:
C - - - - - 0x0181A0 06:8190: DE 04 01  DEC ram_0104,X
C - - - - - 0x0181A3 06:8193: D0 12     BNE bra_81A7
C - - - - - 0x0181A5 06:8195: A0 00     LDY #$00
C - - - - - 0x0181A7 06:8197: BD 28 01  LDA ram_0128,X
C - - - - - 0x0181AA 06:819A: 85 E0     STA ram_00E0
C - - - - - 0x0181AC 06:819C: BD 2E 01  LDA ram_012E,X
C - - - - - 0x0181AF 06:819F: 85 E1     STA ram_00E1
C - - - - - 0x0181B1 06:81A1: BD 16 01  LDA ram_0116,X
C - - - - - 0x0181B4 06:81A4: 4C AF 84  JMP loc_84AF
bra_81A7:
C - - - - - 0x0181B7 06:81A7: E0 02     CPX #$02
C - - - - - 0x0181B9 06:81A9: F0 75     BEQ bra_8220
C - - - - - 0x0181BB 06:81AB: B0 CD     BCS bra_817A_RTS
C - - - - - 0x0181BD 06:81AD: BD 16 01  LDA ram_0116,X
C - - - - - 0x0181C0 06:81B0: 29 41     AND #$41
C - - - - - 0x0181C2 06:81B2: D0 C6     BNE bra_817A_RTS
C - - - - - 0x0181C4 06:81B4: BD BE 01  LDA ram_01BE,X
C - - - - - 0x0181C7 06:81B7: 30 24     BMI bra_81DD
C - - - - - 0x0181C9 06:81B9: BD 10 01  LDA ram_0110,X
C - - - - - 0x0181CC 06:81BC: 85 E2     STA ram_00E2
C - - - - - 0x0181CE 06:81BE: BD BE 01  LDA ram_01BE,X
C - - - - - 0x0181D1 06:81C1: 29 10     AND #$10
C - - - - - 0x0181D3 06:81C3: F0 05     BEQ bra_81CA
C - - - - - 0x0181D5 06:81C5: A5 E2     LDA ram_00E2
C - - - - - 0x0181D7 06:81C7: 0A        ASL
C - - - - - 0x0181D8 06:81C8: 85 E2     STA ram_00E2
bra_81CA:
C - - - - - 0x0181DA 06:81CA: BD 04 01  LDA ram_0104,X
bra_81CD_loop:
C - - - - - 0x0181DD 06:81CD: 38        SEC
C - - - - - 0x0181DE 06:81CE: E5 E2     SBC ram_00E2
C - - - - - 0x0181E0 06:81D0: F0 3E     BEQ bra_8210
C - - - - - 0x0181E2 06:81D2: B0 F9     BCS bra_81CD_loop
loc_81D4_loop:
C D 0 - - - 0x0181E4 06:81D4: BD 16 01  LDA ram_0116,X
C - - - - - 0x0181E7 06:81D7: 29 06     AND #$06
C - - - - - 0x0181E9 06:81D9: C9 06     CMP #$06
C - - - - - 0x0181EB 06:81DB: F0 15     BEQ bra_81F2
bra_81DD:
C - - - - - 0x0181ED 06:81DD: BD 75 01  LDA ram_0175,X
C - - - - - 0x0181F0 06:81E0: 29 10     AND #$10
C - - - - - 0x0181F2 06:81E2: F0 0E     BEQ bra_81F2
C - - - - - 0x0181F4 06:81E4: DE B0 01  DEC ram_01B0,X
C - - - - - 0x0181F7 06:81E7: D0 09     BNE bra_81F2
C - - - - - 0x0181F9 06:81E9: FE B0 01  INC ram_01B0,X
C - - - - - 0x0181FC 06:81EC: 20 E7 83  JSR sub_83E7
C - - - - - 0x0181FF 06:81EF: 20 E9 87  JSR sub_87E9
bra_81F2:
C - - - - - 0x018202 06:81F2: DE 9C 01  DEC ram_019C,X
C - - - - - 0x018205 06:81F5: D0 83     BNE bra_817A_RTS
C - - - - - 0x018207 06:81F7: FE 9C 01  INC ram_019C,X
C - - - - - 0x01820A 06:81FA: 20 12 83  JSR sub_8312
C - - - - - 0x01820D 06:81FD: BD 16 01  LDA ram_0116,X
C - - - - - 0x018210 06:8200: 29 06     AND #$06
C - - - - - 0x018212 06:8202: A8        TAY
C - - - - - 0x018213 06:8203: B9 C4 8C  LDA tbl_8CC4,Y
C - - - - - 0x018216 06:8206: 85 E2     STA ram_00E2
C - - - - - 0x018218 06:8208: B9 C5 8C  LDA tbl_8CC4 + $01,Y
C - - - - - 0x01821B 06:820B: 85 E3     STA ram_00E3
C - - - - - 0x01821D 06:820D: 6C E2 00  JMP (ram_00E2)
bra_8210:
C - - - - - 0x018220 06:8210: BD 94 01  LDA ram_0194,X
C - - - - - 0x018223 06:8213: 85 EC     STA ram_00EC
C - - - - - 0x018225 06:8215: BD 97 01  LDA ram_0197,X
C - - - - - 0x018228 06:8218: 85 ED     STA ram_00ED
C - - - - - 0x01822A 06:821A: 20 47 88  JSR sub_8847
C - - - - - 0x01822D 06:821D: 4C D4 81  JMP loc_81D4_loop
bra_8220:
C - - - - - 0x018230 06:8220: EE 67 01  INC ram_0164 + $03
C - - - - - 0x018233 06:8223: AD 67 01  LDA ram_0164 + $03
C - - - - - 0x018236 06:8226: 29 40     AND #$40
C - - - - - 0x018238 06:8228: D0 21     BNE bra_824B_RTS
C - - - - - 0x01823A 06:822A: AD 67 01  LDA ram_0164 + $03
C - - - - - 0x01823D 06:822D: 29 0F     AND #$0F
C - - - - - 0x01823F 06:822F: D0 1A     BNE bra_824B_RTS
C - - - - - 0x018241 06:8231: BD 64 01  LDA ram_0164,X
C - - - - - 0x018244 06:8234: F0 15     BEQ bra_824B_RTS
C - - - - - 0x018246 06:8236: C9 80     CMP #$80
C - - - - - 0x018248 06:8238: B0 11     BCS bra_824B_RTS
C - - - - - 0x01824A 06:823A: AD 8C 01  LDA ram_0189 + $03
C - - - - - 0x01824D 06:823D: 38        SEC
C - - - - - 0x01824E 06:823E: E9 40     SBC #$40
C - - - - - 0x018250 06:8240: 90 09     BCC bra_824B_RTS
C - - - - - 0x018252 06:8242: 8D 8C 01  STA ram_0189 + $03
C - - - - - 0x018255 06:8245: 8D 08 40  STA $4008
C - - - - - 0x018258 06:8248: 20 28 8D  JSR sub_8D28_10_NOPs
bra_824B_RTS:
C - - - - - 0x01825B 06:824B: 60        RTS



loc_824C:
sub_824C:
ofs_041_824C_00:
C D 0 - - - 0x01825C 06:824C: BD 9A 01  LDA ram_019A,X
C - - - - - 0x01825F 06:824F: 0A        ASL
C - - - - - 0x018260 06:8250: A8        TAY
C - - - - - 0x018261 06:8251: B9 6A 8F  LDA tbl_8F6A,Y
C - - - - - 0x018264 06:8254: 85 E2     STA ram_00E2
C - - - - - 0x018266 06:8256: B9 6B 8F  LDA tbl_8F6A + $01,Y
C - - - - - 0x018269 06:8259: 85 E3     STA ram_00E3
loc_825B:
C D 0 - - - 0x01826B 06:825B: BD 9E 01  LDA ram_019E,X
C - - - - - 0x01826E 06:825E: A8        TAY
C - - - - - 0x01826F 06:825F: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x018271 06:8261: C9 FB     CMP #$FB
C - - - - - 0x018273 06:8263: B0 5B     BCS bra_82C0_FB_FE_FF
C - - - - - 0x018275 06:8265: C9 10     CMP #$10
C - - - - - 0x018277 06:8267: 90 07     BCC bra_8270
C - - - - - 0x018279 06:8269: 4A        LSR
C - - - - - 0x01827A 06:826A: 4A        LSR
C - - - - - 0x01827B 06:826B: 4A        LSR
C - - - - - 0x01827C 06:826C: 4A        LSR
C - - - - - 0x01827D 06:826D: 9D 9C 01  STA ram_019C,X
bra_8270:
C - - - - - 0x018280 06:8270: FE 9E 01  INC ram_019E,X
C - - - - - 0x018283 06:8273: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x018285 06:8275: 29 0F     AND #$0F
C - - - - - 0x018287 06:8277: F0 0C     BEQ bra_8285
C - - - - - 0x018289 06:8279: 38        SEC
C - - - - - 0x01828A 06:827A: FD C2 01  SBC ram_01C2,X
C - - - - - 0x01828D 06:827D: 90 04     BCC bra_8283
C - - - - - 0x01828F 06:827F: F0 02     BEQ bra_8283
C - - - - - 0x018291 06:8281: D0 02     BNE bra_8285    ; jmp
bra_8283:
- - - - - - 0x018293 06:8283: A9 01     LDA #$01
bra_8285:
loc_8285:
sub_8285:
C D 0 - - - 0x018295 06:8285: 9D 5E 01  STA ram_015E,X
sub_8288:
loc_8288:
C D 0 - - - 0x018298 06:8288: 1D 5E 01  ORA ram_015E,X
C - - - - - 0x01829B 06:828B: F0 08     BEQ bra_8295
C - - - - - 0x01829D 06:828D: 38        SEC
C - - - - - 0x01829E 06:828E: FD 70 01  SBC ram_0170,X
C - - - - - 0x0182A1 06:8291: 90 1F     BCC bra_82B2
C - - - - - 0x0182A3 06:8293: F0 1D     BEQ bra_82B2
bra_8295:
C - - - - - 0x0182A5 06:8295: 85 E2     STA ram_00E2
C - - - - - 0x0182A7 06:8297: BD 75 01  LDA ram_0175,X
C - - - - - 0x0182AA 06:829A: 29 20     AND #$20
C - - - - - 0x0182AC 06:829C: D0 18     BNE bra_82B6
C - - - - - 0x0182AE 06:829E: A5 E2     LDA ram_00E2
C - - - - - 0x0182B0 06:82A0: 1D 6A 01  ORA ram_016A,X
loc_82A3:
C D 0 - - - 0x0182B3 06:82A3: 20 35 89  JSR sub_8935
C - - - - - 0x0182B6 06:82A6: B0 06     BCS bra_82AE
C - - - - - 0x0182B8 06:82A8: 9D 00 40  STA $4000,X
C - - - - - 0x0182BB 06:82AB: 20 28 8D  JSR sub_8D28_10_NOPs
bra_82AE:
C - - - - - 0x0182BE 06:82AE: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x0182C1 06:82B1: 60        RTS
bra_82B2:
C - - - - - 0x0182C2 06:82B2: A9 01     LDA #$01
C - - - - - 0x0182C4 06:82B4: D0 DF     BNE bra_8295    ; jmp
bra_82B6:
C - - - - - 0x0182C6 06:82B6: BD BC 01  LDA ram_01BC,X
C - - - - - 0x0182C9 06:82B9: 29 F0     AND #$F0
C - - - - - 0x0182CB 06:82BB: 05 E2     ORA ram_00E2
C - - - - - 0x0182CD 06:82BD: 4C A3 82  JMP loc_82A3
bra_82C0_FB_FE_FF:
C - - - - - 0x0182D0 06:82C0: C9 FE     CMP #$FE
C - - - - - 0x0182D2 06:82C2: F0 0E     BEQ bra_82D2_FE
C - - - - - 0x0182D4 06:82C4: B0 7F     BCS bra_8345_FF
; FB
C - - - - - 0x0182D6 06:82C6: FE 9E 01  INC ram_019E,X
C - - - - - 0x0182D9 06:82C9: BD 9E 01  LDA ram_019E,X
C - - - - - 0x0182DC 06:82CC: 9D A2 01  STA ram_01A2,X
C - - - - - 0x0182DF 06:82CF: 4C 5B 82  JMP loc_825B
bra_82D2_FE:
C - - - - - 0x0182E2 06:82D2: C8        INY
C - - - - - 0x0182E3 06:82D3: FE A0 01  INC ram_01A0,X
C - - - - - 0x0182E6 06:82D6: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x0182E8 06:82D8: DD A0 01  CMP ram_01A0,X
C - - - - - 0x0182EB 06:82DB: D0 11     BNE bra_82EE
- - - - - - 0x0182ED 06:82DD: A9 00     LDA #$00
- - - - - - 0x0182EF 06:82DF: 9D A0 01  STA ram_01A0,X
- - - - - - 0x0182F2 06:82E2: 9D A2 01  STA ram_01A2,X
- - - - - - 0x0182F5 06:82E5: FE 9E 01  INC ram_019E,X
- - - - - - 0x0182F8 06:82E8: FE 9E 01  INC ram_019E,X
- - - - - - 0x0182FB 06:82EB: 4C 5B 82  JMP loc_825B
bra_82EE:
C - - - - - 0x0182FE 06:82EE: BD A2 01  LDA ram_01A2,X
C - - - - - 0x018301 06:82F1: 9D 9E 01  STA ram_019E,X
C - - - - - 0x018304 06:82F4: 4C 5B 82  JMP loc_825B



ofs_041_82F7_02:
C - - J - - 0x018307 06:82F7: DE 9E 01  DEC ram_019E,X
C - - - - - 0x01830A 06:82FA: 30 49     BMI bra_8345
C - - - - - 0x01830C 06:82FC: DE 5E 01  DEC ram_015E,X
C - - - - - 0x01830F 06:82FF: 30 06     BMI bra_8307
C - - - - - 0x018311 06:8301: BD 5E 01  LDA ram_015E,X
C - - - - - 0x018314 06:8304: 4C 85 82  JMP loc_8285
bra_8307:
- - - - - - 0x018317 06:8307: FE 5E 01  INC ram_015E,X
- - - - - - 0x01831A 06:830A: 60        RTS



ofs_041_830B_04:
C - - J - - 0x01831B 06:830B: BD 16 01  LDA ram_0116,X
C - - - - - 0x01831E 06:830E: 29 02     AND #$02
C - - - - - 0x018320 06:8310: D0 52     BNE bra_8364
sub_8312:
C - - - - - 0x018322 06:8312: BD 16 01  LDA ram_0116,X
C - - - - - 0x018325 06:8315: 29 06     AND #$06
C - - - - - 0x018327 06:8317: C9 06     CMP #$06
C - - - - - 0x018329 06:8319: F0 3C     BEQ bra_8357_RTS
C - - - - - 0x01832B 06:831B: BD 04 01  LDA ram_0104,X
C - - - - - 0x01832E 06:831E: DD A4 01  CMP ram_01A4,X
C - - - - - 0x018331 06:8321: B0 34     BCS bra_8357_RTS
C - - - - - 0x018333 06:8323: BD 16 01  LDA ram_0116,X
C - - - - - 0x018336 06:8326: 09 06     ORA #$06
C - - - - - 0x018338 06:8328: 9D 16 01  STA ram_0116,X
C - - - - - 0x01833B 06:832B: BD BC 01  LDA ram_01BC,X
C - - - - - 0x01833E 06:832E: 29 0C     AND #$0C
C - - - - - 0x018340 06:8330: D0 26     BNE bra_8358
C - - - - - 0x018342 06:8332: 4C 35 83  JMP loc_8335



loc_8335:
sub_8335:
C D 0 - - - 0x018345 06:8335: BD BC 01  LDA ram_01BC,X
C - - - - - 0x018348 06:8338: 29 02     AND #$02
C - - - - - 0x01834A 06:833A: F0 08     BEQ bra_8344_RTS
C - - - - - 0x01834C 06:833C: BD 75 01  LDA ram_0175,X
C - - - - - 0x01834F 06:833F: 09 20     ORA #$20
C - - - - - 0x018351 06:8341: 9D 75 01  STA ram_0175,X
bra_8344_RTS:
C - - - - - 0x018354 06:8344: 60        RTS



bra_8345:
bra_8345_FF:
C - - - - - 0x018355 06:8345: BD 16 01  LDA ram_0116,X
C - - - - - 0x018358 06:8348: 09 04     ORA #$04
C - - - - - 0x01835A 06:834A: 29 FD     AND #$FD
C - - - - - 0x01835C 06:834C: 9D 16 01  STA ram_0116,X
C - - - - - 0x01835F 06:834F: BD 9E 01  LDA ram_019E,X
C - - - - - 0x018362 06:8352: 09 80     ORA #$80
C - - - - - 0x018364 06:8354: 9D 9E 01  STA ram_019E,X
bra_8357_RTS:
C - - - - - 0x018367 06:8357: 60        RTS
bra_8358:
C - - - - - 0x018368 06:8358: 4A        LSR
C - - - - - 0x018369 06:8359: 4A        LSR
C - - - - - 0x01836A 06:835A: 85 E2     STA ram_00E2
C - - - - - 0x01836C 06:835C: 20 35 83  JSR sub_8335
C - - - - - 0x01836F 06:835F: A5 E2     LDA ram_00E2
C - - - - - 0x018371 06:8361: 4C 85 82  JMP loc_8285



bra_8364:
ofs_041_8364_06:
C - - J - - 0x018374 06:8364: BD BE 01  LDA ram_01BE,X
C - - - - - 0x018377 06:8367: 30 2A     BMI bra_8393
C - - - - - 0x018379 06:8369: 84 E2     STY ram_00E2
C - - - - - 0x01837B 06:836B: BD BE 01  LDA ram_01BE,X
C - - - - - 0x01837E 06:836E: 29 0F     AND #$0F
C - - - - - 0x018380 06:8370: 85 E4     STA ram_00E4
C - - - - - 0x018382 06:8372: BD C0 01  LDA ram_01C0,X
C - - - - - 0x018385 06:8375: 38        SEC
C - - - - - 0x018386 06:8376: E9 01     SBC #$01
C - - - - - 0x018388 06:8378: 29 03     AND #$03
C - - - - - 0x01838A 06:837A: 38        SEC
C - - - - - 0x01838B 06:837B: E5 E4     SBC ram_00E4
C - - - - - 0x01838D 06:837D: 29 03     AND #$03
C - - - - - 0x01838F 06:837F: E0 01     CPX #$01
C - - - - - 0x018391 06:8381: D0 02     BNE bra_8385
C - - - - - 0x018393 06:8383: 09 04     ORA #$04
bra_8385:
C - - - - - 0x018395 06:8385: A8        TAY
C - - - - - 0x018396 06:8386: B9 C4 01  LDA ram_01C4,Y
C - - - - - 0x018399 06:8389: 85 EC     STA ram_00EC
C - - - - - 0x01839B 06:838B: B9 CC 01  LDA ram_01CC,Y
C - - - - - 0x01839E 06:838E: 85 ED     STA ram_00ED
C - - - - - 0x0183A0 06:8390: 20 03 88  JSR sub_8803
bra_8393:
C - - - - - 0x0183A3 06:8393: BD BC 01  LDA ram_01BC,X
C - - - - - 0x0183A6 06:8396: 29 0C     AND #$0C
C - - - - - 0x0183A8 06:8398: D0 BD     BNE bra_8357_RTS
C - - - - - 0x0183AA 06:839A: BD 9A 01  LDA ram_019A,X
C - - - - - 0x0183AD 06:839D: 30 25     BMI bra_83C4
C - - - - - 0x0183AF 06:839F: BD 9E 01  LDA ram_019E,X
C - - - - - 0x0183B2 06:83A2: 30 20     BMI bra_83C4
C - - - - - 0x0183B4 06:83A4: DE AA 01  DEC ram_01AA,X
C - - - - - 0x0183B7 06:83A7: F0 03     BEQ bra_83AC
C - - - - - 0x0183B9 06:83A9: 4C 4C 82  JMP loc_824C
bra_83AC:
C - - - - - 0x0183BC 06:83AC: FE C2 01  INC ram_01C2,X
C - - - - - 0x0183BF 06:83AF: BD C2 01  LDA ram_01C2,X
C - - - - - 0x0183C2 06:83B2: C9 10     CMP #$10
C - - - - - 0x0183C4 06:83B4: 90 05     BCC bra_83BB
- - - - - - 0x0183C6 06:83B6: A9 0F     LDA #$0F
- - - - - - 0x0183C8 06:83B8: 9D C2 01  STA ram_01C2,X
bra_83BB:
C - - - - - 0x0183CB 06:83BB: BD A8 01  LDA ram_01A8,X
C - - - - - 0x0183CE 06:83BE: 9D AA 01  STA ram_01AA,X
C - - - - - 0x0183D1 06:83C1: 4C 4C 82  JMP loc_824C
bra_83C4:
C - - - - - 0x0183D4 06:83C4: DE AA 01  DEC ram_01AA,X
C - - - - - 0x0183D7 06:83C7: D0 8E     BNE bra_8357_RTS
C - - - - - 0x0183D9 06:83C9: BD A8 01  LDA ram_01A8,X
C - - - - - 0x0183DC 06:83CC: 9D AA 01  STA ram_01AA,X
C - - - - - 0x0183DF 06:83CF: DE 5E 01  DEC ram_015E,X
C - - - - - 0x0183E2 06:83D2: 30 0F     BMI bra_83E3
C - - - - - 0x0183E4 06:83D4: A9 01     LDA #$01
C - - - - - 0x0183E6 06:83D6: DD 5E 01  CMP ram_015E,X
C - - - - - 0x0183E9 06:83D9: F0 02     BEQ bra_83DD
C - - - - - 0x0183EB 06:83DB: B0 06     BCS bra_83E3
bra_83DD:
C - - - - - 0x0183ED 06:83DD: BD 5E 01  LDA ram_015E,X
C - - - - - 0x0183F0 06:83E0: 4C 88 82  JMP loc_8288
bra_83E3:
C - - - - - 0x0183F3 06:83E3: FE 5E 01  INC ram_015E,X
C - - - - - 0x0183F6 06:83E6: 60        RTS



sub_83E7:
loc_83E7:
C D 0 - - - 0x0183F7 06:83E7: BD B4 01  LDA ram_01B4,X
C - - - - - 0x0183FA 06:83EA: 0A        ASL
C - - - - - 0x0183FB 06:83EB: A8        TAY
C - - - - - 0x0183FC 06:83EC: B9 BC 8F  LDA tbl_8FBC,Y
C - - - - - 0x0183FF 06:83EF: 85 E2     STA ram_00E2
C - - - - - 0x018401 06:83F1: B9 BD 8F  LDA tbl_8FBC + $01,Y
C - - - - - 0x018404 06:83F4: 85 E3     STA ram_00E3
C - - - - - 0x018406 06:83F6: BD B6 01  LDA ram_01B6,X
C - - - - - 0x018409 06:83F9: A8        TAY
C - - - - - 0x01840A 06:83FA: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x01840C 06:83FC: C9 FB     CMP #$FB
C - - - - - 0x01840E 06:83FE: B0 72     BCS bra_8472_FB_FE
C - - - - - 0x018410 06:8400: C9 10     CMP #$10
C - - - - - 0x018412 06:8402: 90 07     BCC bra_840B
C - - - - - 0x018414 06:8404: 4A        LSR
C - - - - - 0x018415 06:8405: 4A        LSR
C - - - - - 0x018416 06:8406: 4A        LSR
C - - - - - 0x018417 06:8407: 4A        LSR
C - - - - - 0x018418 06:8408: 9D B0 01  STA ram_01B0,X
bra_840B:
C - - - - - 0x01841B 06:840B: FE B6 01  INC ram_01B6,X
C - - - - - 0x01841E 06:840E: B1 E2     LDA (ram_00E2),Y
C - - - - - 0x018420 06:8410: 29 0F     AND #$0F
C - - - - - 0x018422 06:8412: 85 E2     STA ram_00E2
C - - - - - 0x018424 06:8414: C9 08     CMP #$08
C - - - - - 0x018426 06:8416: B0 07     BCS bra_841F
C - - - - - 0x018428 06:8418: 20 2D 84  JSR sub_842D
C - - - - - 0x01842B 06:841B: 20 42 84  JSR sub_8442
C - - - - - 0x01842E 06:841E: 60        RTS
bra_841F:
C - - - - - 0x01842F 06:841F: A9 10     LDA #$10
C - - - - - 0x018431 06:8421: 38        SEC
C - - - - - 0x018432 06:8422: E5 E2     SBC ram_00E2
C - - - - - 0x018434 06:8424: 85 E2     STA ram_00E2
C - - - - - 0x018436 06:8426: 20 2D 84  JSR sub_842D
C - - - - - 0x018439 06:8429: 20 58 84  JSR sub_8458
C - - - - - 0x01843C 06:842C: 60        RTS



sub_842D:
C - - - - - 0x01843D 06:842D: BD B2 01  LDA ram_01B2,X
C - - - - - 0x018440 06:8430: AA        TAX
C - - - - - 0x018441 06:8431: A5 E2     LDA ram_00E2
loc_8433:
C D 0 - - - 0x018443 06:8433: CA        DEX
C - - - - - 0x018444 06:8434: F0 06     BEQ bra_843C
C - - - - - 0x018446 06:8436: 18        CLC
C - - - - - 0x018447 06:8437: 65 E2     ADC ram_00E2
C - - - - - 0x018449 06:8439: 4C 33 84  JMP loc_8433
bra_843C:
C - - - - - 0x01844C 06:843C: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x01844F 06:843F: 85 E2     STA ram_00E2
C - - - - - 0x018451 06:8441: 60        RTS



sub_8442:
C - - - - - 0x018452 06:8442: 18        CLC
C - - - - - 0x018453 06:8443: 7D 94 01  ADC ram_0194,X
C - - - - - 0x018456 06:8446: 85 EC     STA ram_00EC
C - - - - - 0x018458 06:8448: 90 08     BCC bra_8452
C - - - - - 0x01845A 06:844A: BD 97 01  LDA ram_0197,X
C - - - - - 0x01845D 06:844D: 85 ED     STA ram_00ED
C - - - - - 0x01845F 06:844F: E6 ED     INC ram_00ED
C - - - - - 0x018461 06:8451: 60        RTS
bra_8452:
C - - - - - 0x018462 06:8452: BD 97 01  LDA ram_0197,X
C - - - - - 0x018465 06:8455: 85 ED     STA ram_00ED
C - - - - - 0x018467 06:8457: 60        RTS



sub_8458:
C - - - - - 0x018468 06:8458: BD 94 01  LDA ram_0194,X
C - - - - - 0x01846B 06:845B: 38        SEC
C - - - - - 0x01846C 06:845C: E5 E2     SBC ram_00E2
C - - - - - 0x01846E 06:845E: B0 0A     BCS bra_846A
C - - - - - 0x018470 06:8460: 85 EC     STA ram_00EC
C - - - - - 0x018472 06:8462: BD 97 01  LDA ram_0197,X
C - - - - - 0x018475 06:8465: 85 ED     STA ram_00ED
C - - - - - 0x018477 06:8467: C6 ED     DEC ram_00ED
C - - - - - 0x018479 06:8469: 60        RTS
bra_846A:
C - - - - - 0x01847A 06:846A: 85 EC     STA ram_00EC
C - - - - - 0x01847C 06:846C: BD 97 01  LDA ram_0197,X
C - - - - - 0x01847F 06:846F: 85 ED     STA ram_00ED
C - - - - - 0x018481 06:8471: 60        RTS



bra_8472_FB_FE:
C - - - - - 0x018482 06:8472: C9 FE     CMP #$FE
C - - - - - 0x018484 06:8474: F0 0E     BEQ bra_8484_FE
C - - - - - 0x018486 06:8476: B0 31     BCS bra_84A9_FF
; FB
C - - - - - 0x018488 06:8478: FE B6 01  INC ram_01B6,X
C - - - - - 0x01848B 06:847B: BD B6 01  LDA ram_01B6,X
C - - - - - 0x01848E 06:847E: 9D B8 01  STA ram_01B8,X
C - - - - - 0x018491 06:8481: 4C E7 83  JMP loc_83E7
bra_8484_FE:
C - - - - - 0x018494 06:8484: C8        INY
C - - - - - 0x018495 06:8485: FE BA 01  INC ram_01BA,X
C - - - - - 0x018498 06:8488: B1 E2     LDA (ram_00E2),Y
; A = FF
C - - - - - 0x01849A 06:848A: DD BA 01  CMP ram_01BA,X
C - - - - - 0x01849D 06:848D: D0 11     BNE bra_84A0
; bzk garbage? 0x0184B9
- - - - - - 0x01849F 06:848F: A9 00     LDA #$00
- - - - - - 0x0184A1 06:8491: 9D BA 01  STA ram_01BA,X
- - - - - - 0x0184A4 06:8494: 9D B8 01  STA ram_01B8,X
- - - - - - 0x0184A7 06:8497: FE B6 01  INC ram_01B6,X
- - - - - - 0x0184AA 06:849A: FE B6 01  INC ram_01B6,X
- - - - - - 0x0184AD 06:849D: 4C E7 83  JMP loc_83E7
bra_84A0:
C - - - - - 0x0184B0 06:84A0: BD B8 01  LDA ram_01B8,X
C - - - - - 0x0184B3 06:84A3: 9D B6 01  STA ram_01B6,X
C - - - - - 0x0184B6 06:84A6: 4C E7 83  JMP loc_83E7
bra_84A9_FF:
; bzk optimize, control byte FF only exists at 0x019124, which is probably never used
- - - - - - 0x0184B9 06:84A9: A9 FF     LDA #$FF
- - - - - - 0x0184BB 06:84AB: 9D B0 01  STA ram_01B0,X
- - - - - - 0x0184BE 06:84AE: 60        RTS



loc_84AF:
C D 0 - - - 0x0184BF 06:84AF: 4A        LSR
C - - - - - 0x0184C0 06:84B0: 90 03     BCC bra_84B5
C - - - - - 0x0184C2 06:84B2: 4C AF 85  JMP loc_85AF
bra_84B5:
loc_84B5:
C D 0 - - - 0x0184C5 06:84B5: AD 5B 01  LDA ram_0158 + $03
C - - - - - 0x0184C8 06:84B8: C9 03     CMP #$03
C - - - - - 0x0184CA 06:84BA: F0 25     BEQ bra_84E1
C - - - - - 0x0184CC 06:84BC: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0184CE 06:84BE: 29 F0     AND #$F0
C - - - - - 0x0184D0 06:84C0: C9 C0     CMP #$C0
C - - - - - 0x0184D2 06:84C2: B0 03     BCS bra_84C7_control_byte
C - - - - - 0x0184D4 06:84C4: 4C 42 87  JMP loc_8742
bra_84C7_control_byte:
C - - - - - 0x0184D7 06:84C7: 29 30     AND #$30
C - - - - - 0x0184D9 06:84C9: 4A        LSR
C - - - - - 0x0184DA 06:84CA: 4A        LSR
C - - - - - 0x0184DB 06:84CB: 4A        LSR
C - - - - - 0x0184DC 06:84CC: AA        TAX
C - - - - - 0x0184DD 06:84CD: BD D8 8C  LDA tbl_8CD8,X
C - - - - - 0x0184E0 06:84D0: 85 E2     STA ram_00E2
C - - - - - 0x0184E2 06:84D2: BD D9 8C  LDA tbl_8CD8 + $01,X
C - - - - - 0x0184E5 06:84D5: 85 E3     STA ram_00E3
C - - - - - 0x0184E7 06:84D7: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x0184EA 06:84DA: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0184EC 06:84DC: 29 0F     AND #$0F
C - - - - - 0x0184EE 06:84DE: 6C E2 00  JMP (ram_00E2)
bra_84E1:
loc_84E1:
C D 0 - - - 0x0184F1 06:84E1: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0184F3 06:84E3: 29 F0     AND #$F0
C - - - - - 0x0184F5 06:84E5: C9 F0     CMP #$F0
C - - - - - 0x0184F7 06:84E7: D0 0E     BNE bra_84F7
; F0
C - - - - - 0x0184F9 06:84E9: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0184FB 06:84EB: 29 0F     AND #$0F
C - - - - - 0x0184FD 06:84ED: C9 0B     CMP #$0B
C - - - - - 0x0184FF 06:84EF: B0 03     BCS bra_84F4_FB_FF
; F0-FA
; bzk optimize, most likely control bytes don't exist
- - - - - - 0x018501 06:84F1: 4C B9 88  JMP loc_88B9_F0_FA
bra_84F4_FB_FF:
C - - - - - 0x018504 06:84F4: 4C AE 8B  JMP loc_8BAE_FB_FF
bra_84F7:
C - - - - - 0x018507 06:84F7: C9 E0     CMP #$E0
C - - - - - 0x018509 06:84F9: F0 42     BEQ bra_853D_E0
C - - - - - 0x01850B 06:84FB: C9 D0     CMP #$D0
C - - - - - 0x01850D 06:84FD: F0 03     BEQ bra_8502_D0
C - - - - - 0x01850F 06:84FF: 4C B9 88  JMP loc_88B9
bra_8502_D0:
C - - - - - 0x018512 06:8502: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018514 06:8504: 29 0F     AND #$0F
C - - - - - 0x018516 06:8506: 9D 10 01  STA ram_0110,X
C - - - - - 0x018519 06:8509: BD 16 01  LDA ram_0116,X
C - - - - - 0x01851C 06:850C: 29 7F     AND #$7F
C - - - - - 0x01851E 06:850E: 9D 16 01  STA ram_0116,X
C - - - - - 0x018521 06:8511: C8        INY
C - - - - - 0x018522 06:8512: 4C E1 84  JMP loc_84E1



loc_8515:
C D 0 - - - 0x018525 06:8515: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018527 06:8517: 4A        LSR
C - - - - - 0x018528 06:8518: 4A        LSR
C - - - - - 0x018529 06:8519: 4A        LSR
C - - - - - 0x01852A 06:851A: 4A        LSR
C - - - - - 0x01852B 06:851B: C9 0F     CMP #$0F
C - - - - - 0x01852D 06:851D: D0 06     BNE bra_8525
; F0-FF
- - - - - - 0x01852F 06:851F: A9 0F     LDA #$0F
- - - - - - 0x018531 06:8521: 8D 15 40  STA $4015
- - - - - - 0x018534 06:8524: 60        RTS
bra_8525:
C - - - - - 0x018535 06:8525: C9 0C     CMP #$0C
C - - - - - 0x018537 06:8527: D0 01     BNE bra_852A
; C0-CF
C - - - - - 0x018539 06:8529: 60        RTS
bra_852A:
C - - - - - 0x01853A 06:852A: AA        TAX
C - - - - - 0x01853B 06:852B: AD 19 01  LDA ram_0116 + $03
C - - - - - 0x01853E 06:852E: 30 38     BMI bra_8568
C - - - - - 0x018540 06:8530: BD A3 85  LDA tbl_85A3,X
C - - - - - 0x018543 06:8533: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018546 06:8536: C9 37     CMP #$37
C - - - - - 0x018548 06:8538: B0 35     BCS bra_856F_37_3B
; 01-05
C - - - - - 0x01854A 06:853A: 4C F6 FD  JMP loc_0x01FE06
bra_853D_E0:
C - - - - - 0x01854D 06:853D: BD 16 01  LDA ram_0116,X
C - - - - - 0x018550 06:8540: 09 80     ORA #$80
C - - - - - 0x018552 06:8542: 9D 16 01  STA ram_0116,X
C - - - - - 0x018555 06:8545: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018557 06:8547: 29 0F     AND #$0F
C - - - - - 0x018559 06:8549: C9 04     CMP #$04
C - - - - - 0x01855B 06:854B: D0 09     BNE bra_8556
; 04
- - - - - - 0x01855D 06:854D: A9 03     LDA #$03
- - - - - - 0x01855F 06:854F: 8D 87 01  STA ram_0187
bra_8552:
C - - - - - 0x018562 06:8552: C8        INY
C - - - - - 0x018563 06:8553: 4C E1 84  JMP loc_84E1
bra_8556:
C - - - - - 0x018566 06:8556: C9 03     CMP #$03
C - - - - - 0x018568 06:8558: D0 07     BNE bra_8561
; 03
C - - - - - 0x01856A 06:855A: A9 0F     LDA #$0F
C - - - - - 0x01856C 06:855C: 8D 87 01  STA ram_0187
C - - - - - 0x01856F 06:855F: D0 F1     BNE bra_8552    ; jmp
bra_8561:
C - - - - - 0x018571 06:8561: A9 1B     LDA #$1B
C - - - - - 0x018573 06:8563: 8D 87 01  STA ram_0187
C - - - - - 0x018576 06:8566: D0 EA     BNE bra_8552    ; jmp
bra_8568:
C - - - - - 0x018578 06:8568: 8A        TXA
C - - - - - 0x018579 06:8569: 18        CLC
C - - - - - 0x01857A 06:856A: 6D 87 01  ADC ram_0187
C - - - - - 0x01857D 06:856D: D0 09     BNE bra_8578    ; jmp?
bra_856F_37_3B:
loc_856F_37_3B:
C - - - - - 0x01857F 06:856F: 38        SEC
C - - - - - 0x018580 06:8570: E9 35     SBC #$35
C - - - - - 0x018582 06:8572: 8D 61 01  STA ram_0161
; bzk optimize, loading the same A
C - - - - - 0x018585 06:8575: AD 61 01  LDA ram_0161
bra_8578:
C - - - - - 0x018588 06:8578: 0A        ASL
C - - - - - 0x018589 06:8579: 0A        ASL
C - - - - - 0x01858A 06:857A: AA        TAX
C - - - - - 0x01858B 06:857B: BD 35 91  LDA tbl_9134 + $01,X  ; bzk optimize, useless read
C - - - - - 0x01858E 06:857E: A9 0F     LDA #$0F
C - - - - - 0x018590 06:8580: 8D 15 40  STA $4015
C - - - - - 0x018593 06:8583: BD 34 91  LDA tbl_9134,X
C - - - - - 0x018596 06:8586: 8D 10 40  STA $4010
C - - - - - 0x018599 06:8589: BD 35 91  LDA tbl_9134 + $01,X
C - - - - - 0x01859C 06:858C: 8D 11 40  STA $4011
C - - - - - 0x01859F 06:858F: BD 36 91  LDA tbl_9134 + $02,X
C - - - - - 0x0185A2 06:8592: 8D 12 40  STA $4012
C - - - - - 0x0185A5 06:8595: BD 37 91  LDA tbl_9134 + $03,X
C - - - - - 0x0185A8 06:8598: 8D 13 40  STA $4013
C - - - - - 0x0185AB 06:859B: A9 1F     LDA #$1F
C - - - - - 0x0185AD 06:859D: 8D 15 40  STA $4015
C - - - - - 0x0185B0 06:85A0: A2 03     LDX #$03
C - - - - - 0x0185B2 06:85A2: 60        RTS



tbl_85A3:
- D 0 - - - 0x0185B3 06:85A3: 01        .byte con_sound_01   ; 00 
- D 0 - - - 0x0185B4 06:85A4: 02        .byte con_sound_02   ; 10 
- D 0 - - - 0x0185B5 06:85A5: 03        .byte con_sound_03   ; 20 
- - - - - - 0x0185B6 06:85A6: 04        .byte con_sound_04   ; 30 
- D 0 - - - 0x0185B7 06:85A7: 05        .byte con_sound_05   ; 40 
- - - - - - 0x0185B8 06:85A8: 3A        .byte con_sound_3A   ; 50 
- D 0 - - - 0x0185B9 06:85A9: 3A        .byte con_sound_3A   ; 60 
- D 0 - - - 0x0185BA 06:85AA: 37        .byte con_sound_37   ; 70 
- D 0 - - - 0x0185BB 06:85AB: 38        .byte con_sound_38   ; 80 
- D 0 - - - 0x0185BC 06:85AC: 39        .byte con_sound_39   ; 90 
- D 0 - - - 0x0185BD 06:85AD: 3A        .byte con_sound_3A   ; A0 
- D 0 - - - 0x0185BE 06:85AE: 3B        .byte con_sound_3B   ; B0 



loc_85AF:
C D 0 - - - 0x0185BF 06:85AF: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0185C1 06:85B1: C9 E6     CMP #$E6
C - - - - - 0x0185C3 06:85B3: B0 03     BCS bra_85B8_E6_FF
C - - - - - 0x0185C5 06:85B5: 4C CD 85  JMP loc_85CD
bra_85B8_E6_FF:
C - - - - - 0x0185C8 06:85B8: C9 F0     CMP #$F0
C - - - - - 0x0185CA 06:85BA: 90 0D     BCC bra_85C9_E6_EF
; F0-FF
C - - - - - 0x0185CC 06:85BC: 29 0F     AND #$0F
C - - - - - 0x0185CE 06:85BE: C9 0B     CMP #$0B
C - - - - - 0x0185D0 06:85C0: 90 03     BCC bra_85C5_F0_FA
C - - - - - 0x0185D2 06:85C2: 4C AE 8B  JMP loc_8BAE_FB_FF
bra_85C5_F0_FA:
C - - - - - 0x0185D5 06:85C5: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0185D7 06:85C7: D0 04     BNE bra_85CD
bra_85C9_E6_EF:
C - - - - - 0x0185D9 06:85C9: E0 05     CPX #$05
C - - - - - 0x0185DB 06:85CB: F0 00     BEQ bra_85CD
bra_85CD:
loc_85CD:
C D 0 - - - 0x0185DD 06:85CD: 29 F0     AND #$F0
C - - - - - 0x0185DF 06:85CF: C9 00     CMP #$00    ; bzk optimize
C - - - - - 0x0185E1 06:85D1: D0 73     BNE bra_8646
; F0-F9
C - - - - - 0x0185E3 06:85D3: B1 E0     LDA (ram_00E0),Y
; A = 00-0A, 0F 
C - - - - - 0x0185E5 06:85D5: 29 0F     AND #$0F
C - - - - - 0x0185E7 06:85D7: D0 03     BNE bra_85DC
; 00
C - - - - - 0x0185E9 06:85D9: 4C 46 86  JMP loc_8646
bra_85DC:
C - - - - - 0x0185EC 06:85DC: 9D 10 01  STA ram_0110,X
C - - - - - 0x0185EF 06:85DF: BD 16 01  LDA ram_0116,X
C - - - - - 0x0185F2 06:85E2: 29 F9     AND #$F9
C - - - - - 0x0185F4 06:85E4: 9D 16 01  STA ram_0116,X
C - - - - - 0x0185F7 06:85E7: C8        INY
C - - - - - 0x0185F8 06:85E8: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0185FA 06:85EA: E0 02     CPX #$02
C - - - - - 0x0185FC 06:85EC: F0 46     BEQ bra_8634
C - - - - - 0x0185FE 06:85EE: E0 05     CPX #$05
C - - - - - 0x018600 06:85F0: D0 08     BNE bra_85FA
C - - - - - 0x018602 06:85F2: A9 30     LDA #$30
C - - - - - 0x018604 06:85F4: 9D 6A 01  STA ram_016A,X
C - - - - - 0x018607 06:85F7: 4C 3E 86  JMP loc_863E
bra_85FA:
C - - - - - 0x01860A 06:85FA: 9D 6A 01  STA ram_016A,X
C - - - - - 0x01860D 06:85FD: C8        INY
C - - - - - 0x01860E 06:85FE: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018610 06:8600: C9 88     CMP #$88
C - - - - - 0x018612 06:8602: F0 23     BEQ bra_8627
C - - - - - 0x018614 06:8604: BD 16 01  LDA ram_0116,X
C - - - - - 0x018617 06:8607: 09 80     ORA #$80
C - - - - - 0x018619 06:8609: 9D 16 01  STA ram_0116,X
C - - - - - 0x01861C 06:860C: B1 E0     LDA (ram_00E0),Y
loc_860E:
C D 0 - - - 0x01861E 06:860E: E0 04     CPX #$04
C - - - - - 0x018620 06:8610: D0 03     BNE bra_8615
C - - - - - 0x018622 06:8612: 8D 7D 01  STA ram_017D
bra_8615:
C - - - - - 0x018625 06:8615: 20 35 89  JSR sub_8935
C - - - - - 0x018628 06:8618: B0 06     BCS bra_8620
C - - - - - 0x01862A 06:861A: 9D 01 40  STA $4001,X
C - - - - - 0x01862D 06:861D: 20 28 8D  JSR sub_8D28_10_NOPs
bra_8620:
C - - - - - 0x018630 06:8620: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018633 06:8623: C8        INY
bra_8624:
C - - - - - 0x018634 06:8624: 4C AF 85  JMP loc_85AF
bra_8627:
C - - - - - 0x018637 06:8627: BD 16 01  LDA ram_0116,X
C - - - - - 0x01863A 06:862A: 29 7F     AND #$7F
C - - - - - 0x01863C 06:862C: 9D 16 01  STA ram_0116,X
C - - - - - 0x01863F 06:862F: A9 7F     LDA #$7F
C - - - - - 0x018641 06:8631: 4C 0E 86  JMP loc_860E
bra_8634:
- - - - - - 0x018644 06:8634: 8D 08 40  STA $4008
- - - - - - 0x018647 06:8637: 20 28 8D  JSR sub_8D28_10_NOPs
- - - - - - 0x01864A 06:863A: C8        INY
- - - - - - 0x01864B 06:863B: 4C AF 85  JMP loc_85AF



loc_863E:
C D 0 - - - 0x01864E 06:863E: C9 00     CMP #$00    ; bzk optimize
C - - - - - 0x018650 06:8640: D0 E2     BNE bra_8624
- - - - - - 0x018652 06:8642: C8        INY
- - - - - - 0x018653 06:8643: 4C AF 85  JMP loc_85AF



bra_8646:
loc_8646:
C D 0 - - - 0x018656 06:8646: E0 05     CPX #$05
C - - - - - 0x018658 06:8648: D0 07     BNE bra_8651
C - - - - - 0x01865A 06:864A: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x01865C 06:864C: C9 10     CMP #$10
C - - - - - 0x01865E 06:864E: D0 01     BNE bra_8651
C - - - - - 0x018660 06:8650: C8        INY
bra_8651:
C - - - - - 0x018661 06:8651: BD 10 01  LDA ram_0110,X
C - - - - - 0x018664 06:8654: 9D 04 01  STA ram_0104,X
C - - - - - 0x018667 06:8657: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018669 06:8659: E0 02     CPX #$02
C - - - - - 0x01866B 06:865B: F0 23     BEQ bra_8680
C - - - - - 0x01866D 06:865D: 4A        LSR
C - - - - - 0x01866E 06:865E: 4A        LSR
C - - - - - 0x01866F 06:865F: 4A        LSR
C - - - - - 0x018670 06:8660: 4A        LSR
C - - - - - 0x018671 06:8661: 9D 64 01  STA ram_0164,X
C - - - - - 0x018674 06:8664: E0 05     CPX #$05
C - - - - - 0x018676 06:8666: F0 0A     BEQ bra_8672
C - - - - - 0x018678 06:8668: BD 6A 01  LDA ram_016A,X
C - - - - - 0x01867B 06:866B: 29 10     AND #$10
C - - - - - 0x01867D 06:866D: F0 2D     BEQ bra_869C
C - - - - - 0x01867F 06:866F: BD 64 01  LDA ram_0164,X
bra_8672:
C - - - - - 0x018682 06:8672: 1D 6A 01  ORA ram_016A,X
loc_8675:
C D 0 - - - 0x018685 06:8675: 20 35 89  JSR sub_8935
C - - - - - 0x018688 06:8678: B0 06     BCS bra_8680
C - - - - - 0x01868A 06:867A: 9D 00 40  STA $4000,X
C - - - - - 0x01868D 06:867D: 20 28 8D  JSR sub_8D28_10_NOPs
bra_8680:
C - - - - - 0x018690 06:8680: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018693 06:8683: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018695 06:8685: 29 0F     AND #$0F
C - - - - - 0x018697 06:8687: E0 05     CPX #$05
C - - - - - 0x018699 06:8689: F0 09     BEQ bra_8694
C - - - - - 0x01869B 06:868B: 85 ED     STA ram_00ED
C - - - - - 0x01869D 06:868D: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x01869F 06:868F: F0 03     BEQ bra_8694
C - - - - - 0x0186A1 06:8691: C8        INY
C - - - - - 0x0186A2 06:8692: B1 E0     LDA (ram_00E0),Y
bra_8694:
C - - - - - 0x0186A4 06:8694: 85 EC     STA ram_00EC
C - - - - - 0x0186A6 06:8696: 20 E9 87  JSR sub_87E9
C - - - - - 0x0186A9 06:8699: 4C A7 8C  JMP loc_8CA7
bra_869C:
C - - - - - 0x0186AC 06:869C: BD 6A 01  LDA ram_016A,X
C - - - - - 0x0186AF 06:869F: 4C 75 86  JMP loc_8675



loc_86A2:
C D 0 - - - 0x0186B2 06:86A2: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0186B4 06:86A4: 29 0F     AND #$0F
C - - - - - 0x0186B6 06:86A6: AA        TAX
C - - - - - 0x0186B7 06:86A7: E8        INX
C - - - - - 0x0186B8 06:86A8: A9 00     LDA #$00
C - - - - - 0x0186BA 06:86AA: 8D 67 01  STA ram_0164 + $03
C - - - - - 0x0186BD 06:86AD: AD 66 01  LDA ram_0164 + $02
C - - - - - 0x0186C0 06:86B0: 85 E2     STA ram_00E2
C - - - - - 0x0186C2 06:86B2: F0 17     BEQ bra_86CB
C - - - - - 0x0186C4 06:86B4: C9 80     CMP #$80
C - - - - - 0x0186C6 06:86B6: B0 2A     BCS bra_86E2
C - - - - - 0x0186C8 06:86B8: E6 E2     INC ram_00E2
C - - - - - 0x0186CA 06:86BA: A5 E2     LDA ram_00E2
loc_86BC:
C D 0 - - - 0x0186CC 06:86BC: CA        DEX
C - - - - - 0x0186CD 06:86BD: F0 08     BEQ bra_86C7
C - - - - - 0x0186CF 06:86BF: 18        CLC
C - - - - - 0x0186D0 06:86C0: 65 E2     ADC ram_00E2
C - - - - - 0x0186D2 06:86C2: B0 07     BCS bra_86CB
C - - - - - 0x0186D4 06:86C4: 4C BC 86  JMP loc_86BC
bra_86C7:
C - - - - - 0x0186D7 06:86C7: C9 80     CMP #$80
C - - - - - 0x0186D9 06:86C9: 90 02     BCC bra_86CD
bra_86CB:
C - - - - - 0x0186DB 06:86CB: A9 90     LDA #$90
bra_86CD:
loc_86CD:
C D 0 - - - 0x0186DD 06:86CD: 8D 08 40  STA $4008
C - - - - - 0x0186E0 06:86D0: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x0186E3 06:86D3: 8D 8C 01  STA ram_0189 + $03
C - - - - - 0x0186E6 06:86D6: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x0186E9 06:86D9: BD 75 01  LDA ram_0175,X
C - - - - - 0x0186EC 06:86DC: 10 01     BPL bra_86DF
- - - - - - 0x0186EE 06:86DE: 60        RTS
bra_86DF:
C - - - - - 0x0186EF 06:86DF: 4C 7F 87  JMP loc_877F
bra_86E2:
C - - - - - 0x0186F2 06:86E2: 38        SEC
C - - - - - 0x0186F3 06:86E3: E9 80     SBC #$80
C - - - - - 0x0186F5 06:86E5: 4C CD 86  JMP loc_86CD
bra_86E8:
C - - - - - 0x0186F8 06:86E8: A9 01     LDA #$01
C - - - - - 0x0186FA 06:86EA: 9D 9C 01  STA ram_019C,X
C - - - - - 0x0186FD 06:86ED: BD 64 01  LDA ram_0164,X
C - - - - - 0x018700 06:86F0: 20 85 82  JSR sub_8285
C - - - - - 0x018703 06:86F3: BD 9A 01  LDA ram_019A,X
C - - - - - 0x018706 06:86F6: 29 0F     AND #$0F
C - - - - - 0x018708 06:86F8: 9D 9E 01  STA ram_019E,X
C - - - - - 0x01870B 06:86FB: BD 16 01  LDA ram_0116,X
C - - - - - 0x01870E 06:86FE: 29 BB     AND #$BB
C - - - - - 0x018710 06:8700: 09 02     ORA #$02
C - - - - - 0x018712 06:8702: 9D 16 01  STA ram_0116,X
C - - - - - 0x018715 06:8705: BD 75 01  LDA ram_0175,X
C - - - - - 0x018718 06:8708: 29 DF     AND #$DF
C - - - - - 0x01871A 06:870A: 9D 75 01  STA ram_0175,X
C - - - - - 0x01871D 06:870D: 4C 7F 87  JMP loc_877F



sub_8710:
C - - - - - 0x018720 06:8710: BD 75 01  LDA ram_0175,X
C - - - - - 0x018723 06:8713: 29 DF     AND #$DF
C - - - - - 0x018725 06:8715: 9D 75 01  STA ram_0175,X
C - - - - - 0x018728 06:8718: BD BC 01  LDA ram_01BC,X
C - - - - - 0x01872B 06:871B: 4A        LSR
C - - - - - 0x01872C 06:871C: 90 08     BCC bra_8726_RTS
C - - - - - 0x01872E 06:871E: BD 75 01  LDA ram_0175,X
C - - - - - 0x018731 06:8721: 09 20     ORA #$20
C - - - - - 0x018733 06:8723: 9D 75 01  STA ram_0175,X
bra_8726_RTS:
C - - - - - 0x018736 06:8726: 60        RTS



bra_8727:
C - - - - - 0x018737 06:8727: 29 7F     AND #$7F
C - - - - - 0x018739 06:8729: 85 E4     STA ram_00E4
C - - - - - 0x01873B 06:872B: 8A        TXA
C - - - - - 0x01873C 06:872C: 38        SEC
C - - - - - 0x01873D 06:872D: E5 E4     SBC ram_00E4
C - - - - - 0x01873F 06:872F: B0 67     BCS bra_8798
C - - - - - 0x018741 06:8731: 38        SEC
C - - - - - 0x018742 06:8732: E9 E8     SBC #$E8
C - - - - - 0x018744 06:8734: AA        TAX
C - - - - - 0x018745 06:8735: BD E0 8C  LDA tbl_8CE0,X
C - - - - - 0x018748 06:8738: 85 EC     STA ram_00EC
C - - - - - 0x01874A 06:873A: BD E1 8C  LDA tbl_8CE0 + $01,X
C - - - - - 0x01874D 06:873D: 85 ED     STA ram_00ED
C - - - - - 0x01874F 06:873F: 4C A3 87  JMP loc_87A3



loc_8742:
C D 0 - - - 0x018752 06:8742: 20 B9 88  JSR sub_88B9
C - - - - - 0x018755 06:8745: E0 02     CPX #$02
C - - - - - 0x018757 06:8747: D0 03     BNE bra_874C
C - - - - - 0x018759 06:8749: 4C A2 86  JMP loc_86A2
bra_874C:
C - - - - - 0x01875C 06:874C: 20 10 87  JSR sub_8710
C - - - - - 0x01875F 06:874F: BD 9A 01  LDA ram_019A,X
C - - - - - 0x018762 06:8752: 30 94     BMI bra_86E8
C - - - - - 0x018764 06:8754: A9 00     LDA #$00
C - - - - - 0x018766 06:8756: 9D C2 01  STA ram_01C2,X
C - - - - - 0x018769 06:8759: 9D 9E 01  STA ram_019E,X
C - - - - - 0x01876C 06:875C: 9D A2 01  STA ram_01A2,X
C - - - - - 0x01876F 06:875F: 9D A0 01  STA ram_01A0,X
C - - - - - 0x018772 06:8762: 9D 9C 01  STA ram_019C,X
C - - - - - 0x018775 06:8765: FE 9C 01  INC ram_019C,X
C - - - - - 0x018778 06:8768: 84 E4     STY ram_00E4
C - - - - - 0x01877A 06:876A: 20 4C 82  JSR sub_824C
C - - - - - 0x01877D 06:876D: A4 E4     LDY ram_00E4
C - - - - - 0x01877F 06:876F: BD 16 01  LDA ram_0116,X
C - - - - - 0x018782 06:8772: 29 B9     AND #$B9
C - - - - - 0x018784 06:8774: 9D 16 01  STA ram_0116,X
C - - - - - 0x018787 06:8777: BD 75 01  LDA ram_0175,X
C - - - - - 0x01878A 06:877A: 29 DF     AND #$DF
C - - - - - 0x01878C 06:877C: 9D 75 01  STA ram_0175,X
loc_877F:
C D 0 - - - 0x01878F 06:877F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018791 06:8781: 29 F0     AND #$F0
C - - - - - 0x018793 06:8783: 4A        LSR
C - - - - - 0x018794 06:8784: 4A        LSR
C - - - - - 0x018795 06:8785: 4A        LSR
C - - - - - 0x018796 06:8786: AA        TAX
C - - - - - 0x018797 06:8787: 98        TYA
C - - - - - 0x018798 06:8788: 48        PHA
C - - - - - 0x018799 06:8789: AC 5B 01  LDY ram_0158 + $03
C - - - - - 0x01879C 06:878C: B9 91 01  LDA ram_0191,Y
C - - - - - 0x01879F 06:878F: F0 08     BEQ bra_8799
C - - - - - 0x0187A1 06:8791: 30 94     BMI bra_8727
C - - - - - 0x0187A3 06:8793: 8A        TXA
C - - - - - 0x0187A4 06:8794: 18        CLC
C - - - - - 0x0187A5 06:8795: 79 91 01  ADC ram_0191,Y
bra_8798:
C - - - - - 0x0187A8 06:8798: AA        TAX
bra_8799:
C - - - - - 0x0187A9 06:8799: BD F8 8C  LDA tbl_8CF8,X
C - - - - - 0x0187AC 06:879C: 85 EC     STA ram_00EC
C - - - - - 0x0187AE 06:879E: BD F9 8C  LDA tbl_8CF8 + $01,X
C - - - - - 0x0187B1 06:87A1: 85 ED     STA ram_00ED
loc_87A3:
C D 0 - - - 0x0187B3 06:87A3: 68        PLA
C - - - - - 0x0187B4 06:87A4: A8        TAY
C - - - - - 0x0187B5 06:87A5: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x0187B8 06:87A8: BD 8E 01  LDA ram_018E,X
C - - - - - 0x0187BB 06:87AB: AA        TAX
bra_87AC_loop:
C - - - - - 0x0187BC 06:87AC: E0 05     CPX #$05
C - - - - - 0x0187BE 06:87AE: F0 07     BEQ bra_87B7
C - - - - - 0x0187C0 06:87B0: 46 ED     LSR ram_00ED
C - - - - - 0x0187C2 06:87B2: 66 EC     ROR ram_00EC
C - - - - - 0x0187C4 06:87B4: E8        INX
C - - - - - 0x0187C5 06:87B5: D0 F5     BNE bra_87AC_loop
bra_87B7:
C - - - - - 0x0187C7 06:87B7: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x0187CA 06:87BA: A5 EC     LDA ram_00EC
C - - - - - 0x0187CC 06:87BC: 9D 94 01  STA ram_0194,X
C - - - - - 0x0187CF 06:87BF: A5 ED     LDA ram_00ED
C - - - - - 0x0187D1 06:87C1: 9D 97 01  STA ram_0197,X
C - - - - - 0x0187D4 06:87C4: E0 02     CPX #$02
C - - - - - 0x0187D6 06:87C6: F0 1B     BEQ bra_87E3
C - - - - - 0x0187D8 06:87C8: BD BE 01  LDA ram_01BE,X
C - - - - - 0x0187DB 06:87CB: 30 03     BMI bra_87D0
C - - - - - 0x0187DD 06:87CD: 20 47 88  JSR sub_8847
bra_87D0:
C - - - - - 0x0187E0 06:87D0: BD 75 01  LDA ram_0175,X
C - - - - - 0x0187E3 06:87D3: 29 10     AND #$10
C - - - - - 0x0187E5 06:87D5: F0 0C     BEQ bra_87E3
C - - - - - 0x0187E7 06:87D7: BD AE 01  LDA ram_01AE,X
C - - - - - 0x0187EA 06:87DA: D0 07     BNE bra_87E3
C - - - - - 0x0187EC 06:87DC: 98        TYA
C - - - - - 0x0187ED 06:87DD: 48        PHA
C - - - - - 0x0187EE 06:87DE: 20 E7 83  JSR sub_83E7
C - - - - - 0x0187F1 06:87E1: 68        PLA
C - - - - - 0x0187F2 06:87E2: A8        TAY
bra_87E3:
C - - - - - 0x0187F3 06:87E3: 20 E9 87  JSR sub_87E9
C - - - - - 0x0187F6 06:87E6: 4C A7 8C  JMP loc_8CA7



sub_87E9:
C - - - - - 0x0187F9 06:87E9: E0 05     CPX #$05
C - - - - - 0x0187FB 06:87EB: F0 2D     BEQ bra_881A
C - - - - - 0x0187FD 06:87ED: 20 8D 88  JSR sub_888D
C - - - - - 0x018800 06:87F0: E0 02     CPX #$02
C - - - - - 0x018802 06:87F2: F0 26     BEQ bra_881A
C - - - - - 0x018804 06:87F4: BD 75 01  LDA ram_0175,X
C - - - - - 0x018807 06:87F7: 29 10     AND #$10
C - - - - - 0x018809 06:87F9: F0 08     BEQ bra_8803
C - - - - - 0x01880B 06:87FB: BD B0 01  LDA ram_01B0,X
C - - - - - 0x01880E 06:87FE: C9 FF     CMP #$FF
C - - - - - 0x018810 06:8800: D0 01     BNE bra_8803
- - - - - - 0x018812 06:8802: 60        RTS
bra_8803:
sub_8803:
C - - - - - 0x018813 06:8803: A5 ED     LDA ram_00ED
C - - - - - 0x018815 06:8805: DD 58 01  CMP ram_0158,X
C - - - - - 0x018818 06:8808: D0 12     BNE bra_881C
C - - - - - 0x01881A 06:880A: BD 16 01  LDA ram_0116,X
C - - - - - 0x01881D 06:880D: 29 81     AND #$81
C - - - - - 0x01881F 06:880F: C9 81     CMP #$81
C - - - - - 0x018821 06:8811: F0 07     BEQ bra_881A
C - - - - - 0x018823 06:8813: BD 6A 01  LDA ram_016A,X
C - - - - - 0x018826 06:8816: 29 10     AND #$10
C - - - - - 0x018828 06:8818: D0 12     BNE bra_882C
bra_881A:
C - - - - - 0x01882A 06:881A: A5 ED     LDA ram_00ED
bra_881C:
C - - - - - 0x01882C 06:881C: 9D 58 01  STA ram_0158,X
C - - - - - 0x01882F 06:881F: 09 08     ORA #$08
C - - - - - 0x018831 06:8821: 20 35 89  JSR sub_8935
C - - - - - 0x018834 06:8824: B0 06     BCS bra_882C
C - - - - - 0x018836 06:8826: 9D 03 40  STA $4003,X
C - - - - - 0x018839 06:8829: 20 28 8D  JSR sub_8D28_10_NOPs
bra_882C:
C - - - - - 0x01883C 06:882C: A5 EC     LDA ram_00EC
C - - - - - 0x01883E 06:882E: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018841 06:8831: E0 02     CPX #$02
C - - - - - 0x018843 06:8833: B0 03     BCS bra_8838
C - - - - - 0x018845 06:8835: 9D AC 01  STA ram_01AC,X
bra_8838:
C - - - - - 0x018848 06:8838: 20 35 89  JSR sub_8935
C - - - - - 0x01884B 06:883B: B0 06     BCS bra_8843
C - - - - - 0x01884D 06:883D: 9D 02 40  STA $4002,X
C - - - - - 0x018850 06:8840: 20 28 8D  JSR sub_8D28_10_NOPs
bra_8843:
C - - - - - 0x018853 06:8843: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018856 06:8846: 60        RTS



sub_8847:
C - - - - - 0x018857 06:8847: 84 E2     STY ram_00E2
C - - - - - 0x018859 06:8849: BD C0 01  LDA ram_01C0,X
C - - - - - 0x01885C 06:884C: E0 01     CPX #$01
C - - - - - 0x01885E 06:884E: D0 02     BNE bra_8852
C - - - - - 0x018860 06:8850: 09 04     ORA #$04
bra_8852:
C - - - - - 0x018862 06:8852: A8        TAY
C - - - - - 0x018863 06:8853: A5 ED     LDA ram_00ED
C - - - - - 0x018865 06:8855: 99 CC 01  STA ram_01CC,Y
C - - - - - 0x018868 06:8858: A5 EC     LDA ram_00EC
C - - - - - 0x01886A 06:885A: 99 C4 01  STA ram_01C4,Y
C - - - - - 0x01886D 06:885D: BD BE 01  LDA ram_01BE,X
C - - - - - 0x018870 06:8860: 29 40     AND #$40
C - - - - - 0x018872 06:8862: F0 1B     BEQ bra_887F
C - - - - - 0x018874 06:8864: BD BE 01  LDA ram_01BE,X
C - - - - - 0x018877 06:8867: 29 BF     AND #$BF
C - - - - - 0x018879 06:8869: 9D BE 01  STA ram_01BE,X
C - - - - - 0x01887C 06:886C: A9 03     LDA #$03
C - - - - - 0x01887E 06:886E: 85 E4     STA ram_00E4
bra_8870_loop:
C - - - - - 0x018880 06:8870: C8        INY
C - - - - - 0x018881 06:8871: A5 ED     LDA ram_00ED
C - - - - - 0x018883 06:8873: 99 CC 01  STA ram_01CC,Y
C - - - - - 0x018886 06:8876: A5 EC     LDA ram_00EC
C - - - - - 0x018888 06:8878: 99 C4 01  STA ram_01C4,Y
C - - - - - 0x01888B 06:887B: C6 E4     DEC ram_00E4
C - - - - - 0x01888D 06:887D: D0 F1     BNE bra_8870_loop
bra_887F:
C - - - - - 0x01888F 06:887F: A4 E2     LDY ram_00E2
C - - - - - 0x018891 06:8881: FE C0 01  INC ram_01C0,X
C - - - - - 0x018894 06:8884: BD C0 01  LDA ram_01C0,X
C - - - - - 0x018897 06:8887: 29 03     AND #$03
C - - - - - 0x018899 06:8889: 9D C0 01  STA ram_01C0,X
C - - - - - 0x01889C 06:888C: 60        RTS



sub_888D:
C - - - - - 0x01889D 06:888D: BD 89 01  LDA ram_0189,X
C - - - - - 0x0188A0 06:8890: 85 E2     STA ram_00E2
C - - - - - 0x0188A2 06:8892: F0 11     BEQ bra_88A5_RTS
C - - - - - 0x0188A4 06:8894: 10 10     BPL bra_88A6
C - - - - - 0x0188A6 06:8896: 29 7F     AND #$7F
C - - - - - 0x0188A8 06:8898: 85 E2     STA ram_00E2
C - - - - - 0x0188AA 06:889A: A5 EC     LDA ram_00EC
C - - - - - 0x0188AC 06:889C: 18        CLC
C - - - - - 0x0188AD 06:889D: 65 E2     ADC ram_00E2
C - - - - - 0x0188AF 06:889F: 85 EC     STA ram_00EC
C - - - - - 0x0188B1 06:88A1: 90 02     BCC bra_88A5_RTS
- - - - - - 0x0188B3 06:88A3: E6 ED     INC ram_00ED
bra_88A5_RTS:
C - - - - - 0x0188B5 06:88A5: 60        RTS
bra_88A6:
C - - - - - 0x0188B6 06:88A6: A5 EC     LDA ram_00EC
C - - - - - 0x0188B8 06:88A8: 38        SEC
C - - - - - 0x0188B9 06:88A9: E5 E2     SBC ram_00E2
C - - - - - 0x0188BB 06:88AB: 85 EC     STA ram_00EC
C - - - - - 0x0188BD 06:88AD: B0 02     BCS bra_88B1_RTS
- - - - - - 0x0188BF 06:88AF: C6 ED     DEC ram_00ED
bra_88B1_RTS:
C - - - - - 0x0188C1 06:88B1: 60        RTS
bra_88B2:
C - - - - - 0x0188C2 06:88B2: 20 A7 8C  JSR sub_8CA7
C - - - - - 0x0188C5 06:88B5: 88        DEY
C - - - - - 0x0188C6 06:88B6: 4C 15 85  JMP loc_8515



loc_88B9_F0_FA:
loc_88B9:
sub_88B9:
C D 0 - - - 0x0188C9 06:88B9: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0188CB 06:88BB: 29 0F     AND #$0F
sub_88BD:
C - - - - - 0x0188CD 06:88BD: 85 E2     STA ram_00E2
C - - - - - 0x0188CF 06:88BF: F0 0D     BEQ bra_88CE
C - - - - - 0x0188D1 06:88C1: BD 10 01  LDA ram_0110,X
bra_88C4_loop:
C - - - - - 0x0188D4 06:88C4: 18        CLC
C - - - - - 0x0188D5 06:88C5: 7D 10 01  ADC ram_0110,X
C - - - - - 0x0188D8 06:88C8: C6 E2     DEC ram_00E2
C - - - - - 0x0188DA 06:88CA: D0 F8     BNE bra_88C4_loop
C - - - - - 0x0188DC 06:88CC: F0 03     BEQ bra_88D1    ; jmp
bra_88CE:
C - - - - - 0x0188DE 06:88CE: BD 10 01  LDA ram_0110,X
bra_88D1:
C - - - - - 0x0188E1 06:88D1: 9D 04 01  STA ram_0104,X
C - - - - - 0x0188E4 06:88D4: E0 02     CPX #$02
C - - - - - 0x0188E6 06:88D6: B0 1B     BCS bra_88F3
C - - - - - 0x0188E8 06:88D8: BD 75 01  LDA ram_0175,X
C - - - - - 0x0188EB 06:88DB: 29 10     AND #$10
C - - - - - 0x0188ED 06:88DD: F0 14     BEQ bra_88F3
C - - - - - 0x0188EF 06:88DF: BD AE 01  LDA ram_01AE,X
C - - - - - 0x0188F2 06:88E2: 9D B0 01  STA ram_01B0,X
C - - - - - 0x0188F5 06:88E5: FE B0 01  INC ram_01B0,X
C - - - - - 0x0188F8 06:88E8: A9 00     LDA #$00
C - - - - - 0x0188FA 06:88EA: 9D B6 01  STA ram_01B6,X
C - - - - - 0x0188FD 06:88ED: 9D BA 01  STA ram_01BA,X
C - - - - - 0x018900 06:88F0: 9D B8 01  STA ram_01B8,X
bra_88F3:
C - - - - - 0x018903 06:88F3: E0 02     CPX #$02
C - - - - - 0x018905 06:88F5: F0 12     BEQ bra_8909_RTS
C - - - - - 0x018907 06:88F7: E0 03     CPX #$03
C - - - - - 0x018909 06:88F9: F0 B7     BEQ bra_88B2
C - - - - - 0x01890B 06:88FB: BD A6 01  LDA ram_01A6,X
C - - - - - 0x01890E 06:88FE: 20 0A 89  JSR sub_890A
C - - - - - 0x018911 06:8901: 9D A4 01  STA ram_01A4,X
C - - - - - 0x018914 06:8904: A9 01     LDA #$01
C - - - - - 0x018916 06:8906: 9D AA 01  STA ram_01AA,X
bra_8909_RTS:
C - - - - - 0x018919 06:8909: 60        RTS



sub_890A:
C - - - - - 0x01891A 06:890A: 29 0F     AND #$0F
C - - - - - 0x01891C 06:890C: 85 E2     STA ram_00E2
C - - - - - 0x01891E 06:890E: A9 00     LDA #$00
C - - - - - 0x018920 06:8910: 85 E4     STA ram_00E4
C - - - - - 0x018922 06:8912: 85 E5     STA ram_00E5
bra_8914_loop:
C - - - - - 0x018924 06:8914: C6 E2     DEC ram_00E2
C - - - - - 0x018926 06:8916: 30 0E     BMI bra_8926
C - - - - - 0x018928 06:8918: 18        CLC
C - - - - - 0x018929 06:8919: BD 04 01  LDA ram_0104,X
C - - - - - 0x01892C 06:891C: 65 E4     ADC ram_00E4
C - - - - - 0x01892E 06:891E: 85 E4     STA ram_00E4
C - - - - - 0x018930 06:8920: 90 F2     BCC bra_8914_loop
C - - - - - 0x018932 06:8922: E6 E5     INC ram_00E5
C - - - - - 0x018934 06:8924: D0 EE     BNE bra_8914_loop
bra_8926:
C - - - - - 0x018936 06:8926: 0A        ASL
C - - - - - 0x018937 06:8927: 26 E5     ROL ram_00E5
C - - - - - 0x018939 06:8929: 0A        ASL
C - - - - - 0x01893A 06:892A: 26 E5     ROL ram_00E5
C - - - - - 0x01893C 06:892C: 0A        ASL
C - - - - - 0x01893D 06:892D: 26 E5     ROL ram_00E5
C - - - - - 0x01893F 06:892F: 0A        ASL
C - - - - - 0x018940 06:8930: 26 E5     ROL ram_00E5
C - - - - - 0x018942 06:8932: A5 E5     LDA ram_00E5
C - - - - - 0x018944 06:8934: 60        RTS



sub_8935:
C - - - - - 0x018945 06:8935: 48        PHA
C - - - - - 0x018946 06:8936: E0 00     CPX #$00
C - - - - - 0x018948 06:8938: F0 07     BEQ bra_8941
bra_893A:
C - - - - - 0x01894A 06:893A: 18        CLC
bra_893B:
C - - - - - 0x01894B 06:893B: BD 7B 81  LDA tbl_817B,X
C - - - - - 0x01894E 06:893E: AA        TAX
C - - - - - 0x01894F 06:893F: 68        PLA
C - - - - - 0x018950 06:8940: 60        RTS
bra_8941:
C - - - - - 0x018951 06:8941: AD 0E 01  LDA ram_010A + $04
C - - - - - 0x018954 06:8944: F0 F4     BEQ bra_893A
C - - - - - 0x018956 06:8946: 38        SEC
C - - - - - 0x018957 06:8947: D0 F2     BNE bra_893B    ; jmp



ofs_042_8949_C0:
C - - J - - 0x018959 06:8949: 20 BD 88  JSR sub_88BD
C - - - - - 0x01895C 06:894C: A9 00     LDA #$00
C - - - - - 0x01895E 06:894E: E0 02     CPX #$02
C - - - - - 0x018960 06:8950: D0 06     BNE bra_8958
C - - - - - 0x018962 06:8952: 20 61 8C  JSR sub_8C61
C - - - - - 0x018965 06:8955: 4C 65 89  JMP loc_8965
bra_8958:
C - - - - - 0x018968 06:8958: A9 30     LDA #$30
C - - - - - 0x01896A 06:895A: 20 35 89  JSR sub_8935
C - - - - - 0x01896D 06:895D: B0 06     BCS bra_8965
C - - - - - 0x01896F 06:895F: 9D 00 40  STA $4000,X
C - - - - - 0x018972 06:8962: 20 28 8D  JSR sub_8D28_10_NOPs
bra_8965:
loc_8965:
C D 0 - - - 0x018975 06:8965: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018978 06:8968: BD 16 01  LDA ram_0116,X
C - - - - - 0x01897B 06:896B: 09 40     ORA #$40
C - - - - - 0x01897D 06:896D: 9D 16 01  STA ram_0116,X
C - - - - - 0x018980 06:8970: 4C A7 8C  JMP loc_8CA7



ofs_042_8973_D0:
C - - J - - 0x018983 06:8973: 9D 10 01  STA ram_0110,X
C - - - - - 0x018986 06:8976: C8        INY
C - - - - - 0x018987 06:8977: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018989 06:8979: E0 02     CPX #$02
C - - - - - 0x01898B 06:897B: F0 55     BEQ bra_89D2
C - - - - - 0x01898D 06:897D: 29 F0     AND #$F0
C - - - - - 0x01898F 06:897F: 9D 6A 01  STA ram_016A,X
C - - - - - 0x018992 06:8982: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018994 06:8984: 29 0F     AND #$0F
C - - - - - 0x018996 06:8986: 9D 64 01  STA ram_0164,X
C - - - - - 0x018999 06:8989: C8        INY
C - - - - - 0x01899A 06:898A: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x01899C 06:898C: 29 40     AND #$40
C - - - - - 0x01899E 06:898E: D0 05     BNE bra_8995
C - - - - - 0x0189A0 06:8990: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0189A2 06:8992: 4C A1 89  JMP loc_89A1
bra_8995:
- - - - - - 0x0189A5 06:8995: BD 75 01  LDA ram_0175,X
- - - - - - 0x0189A8 06:8998: 09 80     ORA #$80
- - - - - - 0x0189AA 06:899A: 9D 75 01  STA ram_0175,X
- - - - - - 0x0189AD 06:899D: B1 E0     LDA (ram_00E0),Y
- - - - - - 0x0189AF 06:899F: 29 BF     AND #$BF
loc_89A1:
C D 0 - - - 0x0189B1 06:89A1: 9D 9A 01  STA ram_019A,X
C - - - - - 0x0189B4 06:89A4: 10 04     BPL bra_89AA
C - - - - - 0x0189B6 06:89A6: A9 00     LDA #$00
C - - - - - 0x0189B8 06:89A8: F0 03     BEQ bra_89AD    ; jmp
bra_89AA:
C - - - - - 0x0189BA 06:89AA: BD 64 01  LDA ram_0164,X
bra_89AD:
C - - - - - 0x0189BD 06:89AD: 9D 70 01  STA ram_0170,X
C - - - - - 0x0189C0 06:89B0: C8        INY
loc_89B1:
C D 0 - - - 0x0189C1 06:89B1: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0189C3 06:89B3: 29 0F     AND #$0F
C - - - - - 0x0189C5 06:89B5: 9D A6 01  STA ram_01A6,X
C - - - - - 0x0189C8 06:89B8: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x0189CA 06:89BA: 4A        LSR
C - - - - - 0x0189CB 06:89BB: 4A        LSR
C - - - - - 0x0189CC 06:89BC: 4A        LSR
C - - - - - 0x0189CD 06:89BD: 4A        LSR
C - - - - - 0x0189CE 06:89BE: 9D A8 01  STA ram_01A8,X
C - - - - - 0x0189D1 06:89C1: BD A8 01  LDA ram_01A8,X
C - - - - - 0x0189D4 06:89C4: D0 05     BNE bra_89CB
C - - - - - 0x0189D6 06:89C6: A9 01     LDA #$01
C - - - - - 0x0189D8 06:89C8: 9D A8 01  STA ram_01A8,X
bra_89CB:
C - - - - - 0x0189DB 06:89CB: 9D AA 01  STA ram_01AA,X
C - - - - - 0x0189DE 06:89CE: C8        INY
C - - - - - 0x0189DF 06:89CF: 4C B5 84  JMP loc_84B5
bra_89D2:
C - - - - - 0x0189E2 06:89D2: 8D 66 01  STA ram_0164 + $02
C - - - - - 0x0189E5 06:89D5: C8        INY
C - - - - - 0x0189E6 06:89D6: 4C B5 84  JMP loc_84B5



loc_89D9:
ofs_042_89D9_E0:
C - - J - - 0x0189E9 06:89D9: 85 E2     STA ram_00E2
C - - - - - 0x0189EB 06:89DB: BD 75 01  LDA ram_0175,X
C - - - - - 0x0189EE 06:89DE: 29 7F     AND #$7F
C - - - - - 0x0189F0 06:89E0: 9D 75 01  STA ram_0175,X
C - - - - - 0x0189F3 06:89E3: A5 E2     LDA ram_00E2
C - - - - - 0x0189F5 06:89E5: C9 06     CMP #$06
C - - - - - 0x0189F7 06:89E7: B0 07     BCS bra_89F0
C - - - - - 0x0189F9 06:89E9: 9D 8E 01  STA ram_018E,X
C - - - - - 0x0189FC 06:89EC: C8        INY
C - - - - - 0x0189FD 06:89ED: 4C B5 84  JMP loc_84B5
bra_89F0:
C - - - - - 0x018A00 06:89F0: 29 0F     AND #$0F
C - - - - - 0x018A02 06:89F2: 38        SEC
C - - - - - 0x018A03 06:89F3: E9 06     SBC #$06
C - - - - - 0x018A05 06:89F5: 0A        ASL
C - - - - - 0x018A06 06:89F6: AA        TAX
C - - - - - 0x018A07 06:89F7: BD 0F 8A  LDA tbl_8A0F,X
C - - - - - 0x018A0A 06:89FA: 85 E2     STA ram_00E2
C - - - - - 0x018A0C 06:89FC: BD 10 8A  LDA tbl_8A0F + $01,X
C - - - - - 0x018A0F 06:89FF: 85 E3     STA ram_00E3
C - - - - - 0x018A11 06:8A01: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018A14 06:8A04: 6C E2 00  JMP (ram_00E2)


; bzk garbage
- - - - - - 0x018A17 06:8A07: C8        INY
- - - - - - 0x018A18 06:8A08: B1 E0     LDA (ram_00E0),Y
- - - - - - 0x018A1A 06:8A0A: 29 0F     AND #$0F
- - - - - - 0x018A1C 06:8A0C: 4C D9 89  JMP loc_89D9



tbl_8A0F:
- D 0 - - - 0x018A1F 06:8A0F: 23 8A     .word ofs_039_8A23_06
- D 0 - - - 0x018A21 06:8A11: 3A 8A     .word ofs_039_8A3A_07
- D 0 - - - 0x018A23 06:8A13: 4C 8A     .word ofs_039_8A4C_08
- D 0 - - - 0x018A25 06:8A15: 50 8A     .word ofs_039_8A50_09
- D 0 - - - 0x018A27 06:8A17: 82 8A     .word ofs_039_8A82_0A
- D 0 - - - 0x018A29 06:8A19: 95 8A     .word ofs_039_8A95_0B
- D 0 - - - 0x018A2B 06:8A1B: E3 8A     .word ofs_039_8AE3_0C
- D 0 - - - 0x018A2D 06:8A1D: 13 8B     .word ofs_039_8B13_0D
- D 0 - - - 0x018A2F 06:8A1F: 20 8B     .word ofs_039_8B20_0E
- - - - - - 0x018A31 06:8A21: 13 8B     .word ofs_039_8B13_0F



ofs_039_8A23_06:
C - - J - - 0x018A33 06:8A23: C8        INY
C - - - - - 0x018A34 06:8A24: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018A36 06:8A26: 9D 10 01  STA ram_0110,X
C - - - - - 0x018A39 06:8A29: BD 75 01  LDA ram_0175,X
C - - - - - 0x018A3C 06:8A2C: 10 08     BPL bra_8A36
- - - - - - 0x018A3E 06:8A2E: BD 10 01  LDA ram_0110,X
- - - - - - 0x018A41 06:8A31: 29 0F     AND #$0F
- - - - - - 0x018A43 06:8A33: 9D 10 01  STA ram_0110,X
bra_8A36:
C - - - - - 0x018A46 06:8A36: C8        INY
C - - - - - 0x018A47 06:8A37: 4C B5 84  JMP loc_84B5



ofs_039_8A3A_07:
C - - J - - 0x018A4A 06:8A3A: C8        INY
C - - - - - 0x018A4B 06:8A3B: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018A4D 06:8A3D: 9D 9A 01  STA ram_019A,X
C - - - - - 0x018A50 06:8A40: BD 75 01  LDA ram_0175,X
C - - - - - 0x018A53 06:8A43: 29 7F     AND #$7F
C - - - - - 0x018A55 06:8A45: 9D 75 01  STA ram_0175,X
C - - - - - 0x018A58 06:8A48: C8        INY
C - - - - - 0x018A59 06:8A49: 4C B5 84  JMP loc_84B5



ofs_039_8A4C_08:
C - - J - - 0x018A5C 06:8A4C: C8        INY
C - - - - - 0x018A5D 06:8A4D: 4C B1 89  JMP loc_89B1



ofs_039_8A50_09:
C - - J - - 0x018A60 06:8A50: C8        INY
C - - - - - 0x018A61 06:8A51: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018A63 06:8A53: F0 15     BEQ bra_8A6A
C - - - - - 0x018A65 06:8A55: 29 0F     AND #$0F
C - - - - - 0x018A67 06:8A57: F0 21     BEQ bra_8A7A
C - - - - - 0x018A69 06:8A59: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018A6B 06:8A5B: 9D BC 01  STA ram_01BC,X
C - - - - - 0x018A6E 06:8A5E: BD 75 01  LDA ram_0175,X
C - - - - - 0x018A71 06:8A61: 09 20     ORA #$20
C - - - - - 0x018A73 06:8A63: 9D 75 01  STA ram_0175,X
loc_8A66:
C D 0 - - - 0x018A76 06:8A66: C8        INY
C - - - - - 0x018A77 06:8A67: 4C B5 84  JMP loc_84B5
bra_8A6A:
- - - - - - 0x018A7A 06:8A6A: BD 75 01  LDA ram_0175,X
- - - - - - 0x018A7D 06:8A6D: 29 DF     AND #$DF
- - - - - - 0x018A7F 06:8A6F: 9D 75 01  STA ram_0175,X
- - - - - - 0x018A82 06:8A72: A9 00     LDA #$00
- - - - - - 0x018A84 06:8A74: 9D BC 01  STA ram_01BC,X
- - - - - - 0x018A87 06:8A77: 4C 66 8A  JMP loc_8A66
bra_8A7A:
C - - - - - 0x018A8A 06:8A7A: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018A8C 06:8A7C: 9D 6A 01  STA ram_016A,X
C - - - - - 0x018A8F 06:8A7F: 4C 66 8A  JMP loc_8A66



ofs_039_8A82_0A:
C - - J - - 0x018A92 06:8A82: C8        INY
C - - - - - 0x018A93 06:8A83: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018A95 06:8A85: 30 08     BMI bra_8A8F
C - - - - - 0x018A97 06:8A87: 0A        ASL
loc_8A88:
C D 0 - - - 0x018A98 06:8A88: 9D 91 01  STA ram_0191,X
C - - - - - 0x018A9B 06:8A8B: C8        INY
C - - - - - 0x018A9C 06:8A8C: 4C B5 84  JMP loc_84B5
bra_8A8F:
C - - - - - 0x018A9F 06:8A8F: 0A        ASL
C - - - - - 0x018AA0 06:8A90: 09 80     ORA #$80
C - - - - - 0x018AA2 06:8A92: 4C 88 8A  JMP loc_8A88



ofs_039_8A95_0B:
C - - J - - 0x018AA5 06:8A95: C8        INY
C - - - - - 0x018AA6 06:8A96: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018AA8 06:8A98: F0 3E     BEQ bra_8AD8_00
C - - - - - 0x018AAA 06:8A9A: 38        SEC
C - - - - - 0x018AAB 06:8A9B: E9 50     SBC #$50
C - - - - - 0x018AAD 06:8A9D: 9D B4 01  STA ram_01B4,X
C - - - - - 0x018AB0 06:8AA0: BD 75 01  LDA ram_0175,X
C - - - - - 0x018AB3 06:8AA3: 09 10     ORA #$10
C - - - - - 0x018AB5 06:8AA5: 9D 75 01  STA ram_0175,X
C - - - - - 0x018AB8 06:8AA8: C8        INY
C - - - - - 0x018AB9 06:8AA9: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018ABB 06:8AAB: 29 F0     AND #$F0
C - - - - - 0x018ABD 06:8AAD: 4A        LSR
C - - - - - 0x018ABE 06:8AAE: 4A        LSR
C - - - - - 0x018ABF 06:8AAF: 4A        LSR
C - - - - - 0x018AC0 06:8AB0: 4A        LSR
C - - - - - 0x018AC1 06:8AB1: C9 00     CMP #$00
C - - - - - 0x018AC3 06:8AB3: F0 16     BEQ bra_8ACB
C - - - - - 0x018AC5 06:8AB5: 85 E2     STA ram_00E2
C - - - - - 0x018AC7 06:8AB7: C6 E2     DEC ram_00E2
C - - - - - 0x018AC9 06:8AB9: F0 0D     BEQ bra_8AC8
C - - - - - 0x018ACB 06:8ABB: BD 10 01  LDA ram_0110,X
; bzk bug? CLC is not inside the loop, like in 0x0188D4
C - - - - - 0x018ACE 06:8ABE: 18        CLC
bra_8ABF_loop:
C - - - - - 0x018ACF 06:8ABF: 7D 10 01  ADC ram_0110,X
C - - - - - 0x018AD2 06:8AC2: C6 E2     DEC ram_00E2
C - - - - - 0x018AD4 06:8AC4: D0 F9     BNE bra_8ABF_loop
C - - - - - 0x018AD6 06:8AC6: F0 03     BEQ bra_8ACB    ; jmp
bra_8AC8:
C - - - - - 0x018AD8 06:8AC8: BD 10 01  LDA ram_0110,X
bra_8ACB:
C - - - - - 0x018ADB 06:8ACB: 9D AE 01  STA ram_01AE,X
C - - - - - 0x018ADE 06:8ACE: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018AE0 06:8AD0: 29 0F     AND #$0F
C - - - - - 0x018AE2 06:8AD2: 9D B2 01  STA ram_01B2,X
C - - - - - 0x018AE5 06:8AD5: 4C 66 8A  JMP loc_8A66
bra_8AD8_00:
C - - - - - 0x018AE8 06:8AD8: BD 75 01  LDA ram_0175,X
C - - - - - 0x018AEB 06:8ADB: 29 EF     AND #$EF
C - - - - - 0x018AED 06:8ADD: 9D 75 01  STA ram_0175,X
C - - - - - 0x018AF0 06:8AE0: 4C 66 8A  JMP loc_8A66



ofs_039_8AE3_0C:
C - - J - - 0x018AF3 06:8AE3: C8        INY
C - - - - - 0x018AF4 06:8AE4: BD 75 01  LDA ram_0175,X
C - - - - - 0x018AF7 06:8AE7: 10 08     BPL bra_8AF1
- - - - - - 0x018AF9 06:8AE9: B1 E0     LDA (ram_00E0),Y
- - - - - - 0x018AFB 06:8AEB: 29 0F     AND #$0F
- - - - - - 0x018AFD 06:8AED: F0 1D     BEQ bra_8B0C
- - - - - - 0x018AFF 06:8AEF: D0 04     BNE bra_8AF5
bra_8AF1:
C - - - - - 0x018B01 06:8AF1: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018B03 06:8AF3: F0 17     BEQ bra_8B0C
bra_8AF5:
C - - - - - 0x018B05 06:8AF5: C9 04     CMP #$04
C - - - - - 0x018B07 06:8AF7: 90 05     BCC bra_8AFE
C - - - - - 0x018B09 06:8AF9: 38        SEC
C - - - - - 0x018B0A 06:8AFA: E9 03     SBC #$03
C - - - - - 0x018B0C 06:8AFC: 09 10     ORA #$10
bra_8AFE:
C - - - - - 0x018B0E 06:8AFE: 09 40     ORA #$40
C - - - - - 0x018B10 06:8B00: 9D BE 01  STA ram_01BE,X
C - - - - - 0x018B13 06:8B03: A9 00     LDA #$00
C - - - - - 0x018B15 06:8B05: 9D C0 01  STA ram_01C0,X
bra_8B08:
C - - - - - 0x018B18 06:8B08: C8        INY
C - - - - - 0x018B19 06:8B09: 4C B5 84  JMP loc_84B5
bra_8B0C:
C - - - - - 0x018B1C 06:8B0C: A9 80     LDA #$80
C - - - - - 0x018B1E 06:8B0E: 9D BE 01  STA ram_01BE,X
C - - - - - 0x018B21 06:8B11: D0 F5     BNE bra_8B08    ; jmp



ofs_039_8B13_0D:
ofs_039_8B13_0F:
C - - J - - 0x018B23 06:8B13: C8        INY
C - - - - - 0x018B24 06:8B14: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018B26 06:8B16: 9D 89 01  STA ram_0189,X
C - - - - - 0x018B29 06:8B19: BD 16 01  LDA ram_0116,X
C - - - - - 0x018B2C 06:8B1C: C8        INY
C - - - - - 0x018B2D 06:8B1D: 4C AF 84  JMP loc_84AF



ofs_039_8B20_0E:
C - - J - - 0x018B30 06:8B20: C8        INY
C - - - - - 0x018B31 06:8B21: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018B33 06:8B23: 8D 6D 01  STA ram_016A + $03
C - - - - - 0x018B36 06:8B26: A9 00     LDA #$00
C - - - - - 0x018B38 06:8B28: 8D 73 01  STA ram_0170 + $03
C - - - - - 0x018B3B 06:8B2B: C8        INY
C - - - - - 0x018B3C 06:8B2C: 4C B5 84  JMP loc_84B5
bra_8B2F:
C - - - - - 0x018B3F 06:8B2F: BD 34 01  LDA ram_0134,X
C - - - - - 0x018B42 06:8B32: 9D 28 01  STA ram_0128,X
C - - - - - 0x018B45 06:8B35: BD 3A 01  LDA ram_013A,X
C - - - - - 0x018B48 06:8B38: 9D 2E 01  STA ram_012E,X
C - - - - - 0x018B4B 06:8B3B: 4C 71 8B  JMP loc_8B71
bra_8B3E_FE:
C - - - - - 0x018B4E 06:8B3E: C8        INY
C - - - - - 0x018B4F 06:8B3F: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018B51 06:8B41: C9 FF     CMP #$FF
C - - - - - 0x018B53 06:8B43: D0 22     BNE bra_8B67
; FF
C - - - - - 0x018B55 06:8B45: C8        INY
C - - - - - 0x018B56 06:8B46: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018B58 06:8B48: 9D 28 01  STA ram_0128,X
C - - - - - 0x018B5B 06:8B4B: 85 E2     STA ram_00E2
C - - - - - 0x018B5D 06:8B4D: C8        INY
C - - - - - 0x018B5E 06:8B4E: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018B60 06:8B50: 9D 2E 01  STA ram_012E,X
C - - - - - 0x018B63 06:8B53: 85 E1     STA ram_00E1
C - - - - - 0x018B65 06:8B55: A5 E2     LDA ram_00E2
C - - - - - 0x018B67 06:8B57: 85 E0     STA ram_00E0
C - - - - - 0x018B69 06:8B59: A0 00     LDY #$00
bra_8B5B:
C - - - - - 0x018B6B 06:8B5B: BD 16 01  LDA ram_0116,X
C - - - - - 0x018B6E 06:8B5E: 4A        LSR
C - - - - - 0x018B6F 06:8B5F: B0 03     BCS bra_8B64
C - - - - - 0x018B71 06:8B61: 4C B5 84  JMP loc_84B5
bra_8B64:
C - - - - - 0x018B74 06:8B64: 4C AF 85  JMP loc_85AF
bra_8B67:
C - - - - - 0x018B77 06:8B67: FE 1C 01  INC ram_011C,X
C - - - - - 0x018B7A 06:8B6A: DD 1C 01  CMP ram_011C,X
C - - - - - 0x018B7D 06:8B6D: F0 10     BEQ bra_8B7F
C - - - - - 0x018B7F 06:8B6F: B0 BE     BCS bra_8B2F
loc_8B71:
C D 0 - - - 0x018B81 06:8B71: A0 00     LDY #$00
C - - - - - 0x018B83 06:8B73: BD 28 01  LDA ram_0128,X
C - - - - - 0x018B86 06:8B76: 85 E0     STA ram_00E0
C - - - - - 0x018B88 06:8B78: BD 2E 01  LDA ram_012E,X
C - - - - - 0x018B8B 06:8B7B: 85 E1     STA ram_00E1
C - - - - - 0x018B8D 06:8B7D: D0 DC     BNE bra_8B5B
bra_8B7F:
C - - - - - 0x018B8F 06:8B7F: A9 00     LDA #$00
C - - - - - 0x018B91 06:8B81: 9D 1C 01  STA ram_011C,X
C - - - - - 0x018B94 06:8B84: BD 16 01  LDA ram_0116,X
C - - - - - 0x018B97 06:8B87: 29 F7     AND #$F7
C - - - - - 0x018B99 06:8B89: 9D 16 01  STA ram_0116,X
C - - - - - 0x018B9C 06:8B8C: C8        INY
C - - - - - 0x018B9D 06:8B8D: 98        TYA
C - - - - - 0x018B9E 06:8B8E: 18        CLC
C - - - - - 0x018B9F 06:8B8F: 65 E0     ADC ram_00E0
C - - - - - 0x018BA1 06:8B91: 85 E0     STA ram_00E0
C - - - - - 0x018BA3 06:8B93: A9 00     LDA #$00
C - - - - - 0x018BA5 06:8B95: A8        TAY
C - - - - - 0x018BA6 06:8B96: 65 E1     ADC ram_00E1
C - - - - - 0x018BA8 06:8B98: 85 E1     STA ram_00E1
C - - - - - 0x018BAA 06:8B9A: BD 16 01  LDA ram_0116,X
C - - - - - 0x018BAD 06:8B9D: 4A        LSR
C - - - - - 0x018BAE 06:8B9E: B0 03     BCS bra_8BA3
C - - - - - 0x018BB0 06:8BA0: 4C B5 84  JMP loc_84B5
bra_8BA3:
C - - - - - 0x018BB3 06:8BA3: BD 16 01  LDA ram_0116,X
C - - - - - 0x018BB6 06:8BA6: 29 FB     AND #$FB
C - - - - - 0x018BB8 06:8BA8: 9D 16 01  STA ram_0116,X
C - - - - - 0x018BBB 06:8BAB: 4C AF 85  JMP loc_85AF



loc_8BAE_FB_FF:     ; A = 0B-0F
ofs_042_8BAE_F0:    ; A = 00-0F
C D 0 - - - 0x018BBE 06:8BAE: C9 0E     CMP #$0E
C - - - - - 0x018BC0 06:8BB0: F0 8C     BEQ bra_8B3E_FE
C - - - - - 0x018BC2 06:8BB2: 90 03     BCC bra_8BB7_F0_FD
C - - - - - 0x018BC4 06:8BB4: 4C 33 8C  JMP loc_8C33_FF
bra_8BB7_F0_FD:
C - - - - - 0x018BC7 06:8BB7: C9 0D     CMP #$0D
C - - - - - 0x018BC9 06:8BB9: F0 39     BEQ bra_8BF4_FD
C - - - - - 0x018BCB 06:8BBB: C9 0C     CMP #$0C
C - - - - - 0x018BCD 06:8BBD: F0 29     BEQ bra_8BE8_FC
C - - - - - 0x018BCF 06:8BBF: C9 0B     CMP #$0B
C - - - - - 0x018BD1 06:8BC1: F0 0B     BEQ bra_8BCE_FB
C - - - - - 0x018BD3 06:8BC3: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018BD5 06:8BC5: 29 0F     AND #$0F
C - - - - - 0x018BD7 06:8BC7: 9D 70 01  STA ram_0170,X
C - - - - - 0x018BDA 06:8BCA: C8        INY
C - - - - - 0x018BDB 06:8BCB: 4C B5 84  JMP loc_84B5
bra_8BCE_FB:
C - - - - - 0x018BDE 06:8BCE: C8        INY
C - - - - - 0x018BDF 06:8BCF: 98        TYA
C - - - - - 0x018BE0 06:8BD0: 18        CLC
C - - - - - 0x018BE1 06:8BD1: 65 E0     ADC ram_00E0
C - - - - - 0x018BE3 06:8BD3: 9D 34 01  STA ram_0134,X
C - - - - - 0x018BE6 06:8BD6: A9 00     LDA #$00
C - - - - - 0x018BE8 06:8BD8: 65 E1     ADC ram_00E1
C - - - - - 0x018BEA 06:8BDA: 9D 3A 01  STA ram_013A,X
C - - - - - 0x018BED 06:8BDD: BD 16 01  LDA ram_0116,X
C - - - - - 0x018BF0 06:8BE0: 09 08     ORA #$08
C - - - - - 0x018BF2 06:8BE2: 9D 16 01  STA ram_0116,X
C - - - - - 0x018BF5 06:8BE5: 4C AF 84  JMP loc_84AF
bra_8BE8_FC:
C - - - - - 0x018BF8 06:8BE8: C8        INY
C - - - - - 0x018BF9 06:8BE9: BD 16 01  LDA ram_0116,X
C - - - - - 0x018BFC 06:8BEC: 29 DF     AND #$DF
C - - - - - 0x018BFE 06:8BEE: 9D 16 01  STA ram_0116,X
C - - - - - 0x018C01 06:8BF1: 4C AF 84  JMP loc_84AF
bra_8BF4_FD:
C - - - - - 0x018C04 06:8BF4: BD 16 01  LDA ram_0116,X
C - - - - - 0x018C07 06:8BF7: 29 20     AND #$20
C - - - - - 0x018C09 06:8BF9: F0 03     BEQ bra_8BFE
C - - - - - 0x018C0B 06:8BFB: 4C 1C 8C  JMP loc_8C1C
bra_8BFE:
C - - - - - 0x018C0E 06:8BFE: 20 B7 8C  JSR sub_8CB7
C - - - - - 0x018C11 06:8C01: C8        INY
C - - - - - 0x018C12 06:8C02: 98        TYA
C - - - - - 0x018C13 06:8C03: 18        CLC
C - - - - - 0x018C14 06:8C04: 65 E0     ADC ram_00E0
C - - - - - 0x018C16 06:8C06: 9D 4C 01  STA ram_014C,X
C - - - - - 0x018C19 06:8C09: A9 00     LDA #$00
C - - - - - 0x018C1B 06:8C0B: A8        TAY
C - - - - - 0x018C1C 06:8C0C: 65 E1     ADC ram_00E1
C - - - - - 0x018C1E 06:8C0E: 9D 52 01  STA ram_0152,X
C - - - - - 0x018C21 06:8C11: BD 16 01  LDA ram_0116,X
C - - - - - 0x018C24 06:8C14: 09 20     ORA #$20
C - - - - - 0x018C26 06:8C16: 9D 16 01  STA ram_0116,X
C - - - - - 0x018C29 06:8C19: 4C 71 8B  JMP loc_8B71



loc_8C1C:
C D 0 - - - 0x018C2C 06:8C1C: BD 4C 01  LDA ram_014C,X
C - - - - - 0x018C2F 06:8C1F: 85 E0     STA ram_00E0
C - - - - - 0x018C31 06:8C21: BD 52 01  LDA ram_0152,X
C - - - - - 0x018C34 06:8C24: 85 E1     STA ram_00E1
C - - - - - 0x018C36 06:8C26: BD 16 01  LDA ram_0116,X
C - - - - - 0x018C39 06:8C29: 29 DF     AND #$DF
C - - - - - 0x018C3B 06:8C2B: 9D 16 01  STA ram_0116,X
C - - - - - 0x018C3E 06:8C2E: A0 00     LDY #$00
C - - - - - 0x018C40 06:8C30: 4C AF 84  JMP loc_84AF



loc_8C33_FF:
C D 0 - - - 0x018C43 06:8C33: BD 0A 01  LDA ram_010A,X
C - - - - - 0x018C46 06:8C36: 85 E4     STA ram_00E4
C - - - - - 0x018C48 06:8C38: A9 00     LDA #$00
C - - - - - 0x018C4A 06:8C3A: 9D 0A 01  STA ram_010A,X
C - - - - - 0x018C4D 06:8C3D: 8A        TXA
C - - - - - 0x018C4E 06:8C3E: 0A        ASL
C - - - - - 0x018C4F 06:8C3F: AA        TAX
C - - - - - 0x018C50 06:8C40: BD CC 8C  LDA tbl_8CCC,X
C - - - - - 0x018C53 06:8C43: 85 E2     STA ram_00E2
C - - - - - 0x018C55 06:8C45: BD CD 8C  LDA tbl_8CCC + $01,X
C - - - - - 0x018C58 06:8C48: 85 E3     STA ram_00E3
C - - - - - 0x018C5A 06:8C4A: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018C5D 06:8C4D: 6C E2 00  JMP (ram_00E2)



ofs_043_8C50_00:
ofs_043_8C50_01:
ofs_043_8C50_05:
C - - J - - 0x018C60 06:8C50: A9 30     LDA #$30
C - - - - - 0x018C62 06:8C52: 20 35 89  JSR sub_8935
C - - - - - 0x018C65 06:8C55: B0 06     BCS bra_8C5D
C - - - - - 0x018C67 06:8C57: 9D 00 40  STA $4000,X
C - - - - - 0x018C6A 06:8C5A: 20 28 8D  JSR sub_8D28_10_NOPs
bra_8C5D:
C - - - - - 0x018C6D 06:8C5D: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018C70 06:8C60: 60        RTS



sub_8C61:
ofs_043_8C61_02:
C - - - - - 0x018C71 06:8C61: A9 0B     LDA #$0B
C - - - - - 0x018C73 06:8C63: 8D 15 40  STA $4015
C - - - - - 0x018C76 06:8C66: A9 00     LDA #$00
C - - - - - 0x018C78 06:8C68: 8D 08 40  STA $4008
C - - - - - 0x018C7B 06:8C6B: A9 0F     LDA #$0F
C - - - - - 0x018C7D 06:8C6D: 8D 15 40  STA $4015
C - - - - - 0x018C80 06:8C70: 60        RTS



ofs_043_8C71_04:
C - - J - - 0x018C81 06:8C71: AE 60 01  LDX ram_0160
C - - - - - 0x018C84 06:8C74: A9 30     LDA #$30
C - - - - - 0x018C86 06:8C76: 9D 00 40  STA $4000,X
C - - - - - 0x018C89 06:8C79: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018C8C 06:8C7C: A9 7F     LDA #$7F
C - - - - - 0x018C8E 06:8C7E: 9D 01 40  STA $4001,X
C - - - - - 0x018C91 06:8C81: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018C94 06:8C84: AD 1A 01  LDA ram_0116 + $04
C - - - - - 0x018C97 06:8C87: 29 F9     AND #$F9
C - - - - - 0x018C99 06:8C89: 8D 1A 01  STA ram_0116 + $04
C - - - - - 0x018C9C 06:8C8C: 8E 8D 01  STX ram_0189 + $04
C - - - - - 0x018C9F 06:8C8F: BD 0A 01  LDA ram_010A,X
C - - - - - 0x018CA2 06:8C92: F0 06     BEQ bra_8C9A
C - - - - - 0x018CA4 06:8C94: AC 60 01  LDY ram_0160
C - - - - - 0x018CA7 06:8C97: 20 16 81  JSR sub_8116
bra_8C9A:
C - - - - - 0x018CAA 06:8C9A: AE 5B 01  LDX ram_0158 + $03
C - - - - - 0x018CAD 06:8C9D: 60        RTS



ofs_043_8C9E_03:
C - - J - - 0x018CAE 06:8C9E: A9 30     LDA #$30
C - - - - - 0x018CB0 06:8CA0: 8D 0C 40  STA $400C
C - - - - - 0x018CB3 06:8CA3: 20 28 8D  JSR sub_8D28_10_NOPs
C - - - - - 0x018CB6 06:8CA6: 60        RTS



loc_8CA7:
sub_8CA7:
C D 0 - - - 0x018CB7 06:8CA7: C8        INY
C - - - - - 0x018CB8 06:8CA8: 98        TYA
C - - - - - 0x018CB9 06:8CA9: 18        CLC
C - - - - - 0x018CBA 06:8CAA: 65 E0     ADC ram_00E0
C - - - - - 0x018CBC 06:8CAC: 9D 28 01  STA ram_0128,X
C - - - - - 0x018CBF 06:8CAF: A9 00     LDA #$00
C - - - - - 0x018CC1 06:8CB1: 65 E1     ADC ram_00E1
C - - - - - 0x018CC3 06:8CB3: 9D 2E 01  STA ram_012E,X
C - - - - - 0x018CC6 06:8CB6: 60        RTS



sub_8CB7:
C - - - - - 0x018CC7 06:8CB7: C8        INY
C - - - - - 0x018CC8 06:8CB8: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018CCA 06:8CBA: 9D 28 01  STA ram_0128,X
C - - - - - 0x018CCD 06:8CBD: C8        INY
C - - - - - 0x018CCE 06:8CBE: B1 E0     LDA (ram_00E0),Y
C - - - - - 0x018CD0 06:8CC0: 9D 2E 01  STA ram_012E,X
C - - - - - 0x018CD3 06:8CC3: 60        RTS



tbl_8CC4:
- D 0 - - - 0x018CD4 06:8CC4: 4C 82     .word ofs_041_824C_00
- D 0 - - - 0x018CD6 06:8CC6: F7 82     .word ofs_041_82F7_02
- D 0 - - - 0x018CD8 06:8CC8: 0B 83     .word ofs_041_830B_04
- D 0 - - - 0x018CDA 06:8CCA: 64 83     .word ofs_041_8364_06



tbl_8CCC:
- D 0 - - - 0x018CDC 06:8CCC: 50 8C     .word ofs_043_8C50_00
- D 0 - - - 0x018CDE 06:8CCE: 50 8C     .word ofs_043_8C50_01
- D 0 - - - 0x018CE0 06:8CD0: 61 8C     .word ofs_043_8C61_02
- D 0 - - - 0x018CE2 06:8CD2: 9E 8C     .word ofs_043_8C9E_03
- D 0 - - - 0x018CE4 06:8CD4: 71 8C     .word ofs_043_8C71_04
- D 0 - - - 0x018CE6 06:8CD6: 50 8C     .word ofs_043_8C50_05



tbl_8CD8:
- D 0 - - - 0x018CE8 06:8CD8: 49 89     .word ofs_042_8949_C0
- D 0 - - - 0x018CEA 06:8CDA: 73 89     .word ofs_042_8973_D0
- D 0 - - - 0x018CEC 06:8CDC: D9 89     .word ofs_042_89D9_E0
- D 0 - - - 0x018CEE 06:8CDE: AE 8B     .word ofs_042_8BAE_F0



tbl_8CE0:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 0 - - - 0x018CF0 06:8CE0: 5C        .byte $5C, $0D   ; 00 
- D 0 - - - 0x018CF2 06:8CE2: 9C        .byte $9C, $0C   ; 02 
- D 0 - - - 0x018CF4 06:8CE4: E8        .byte $E8, $0B   ; 04 
- D 0 - - - 0x018CF6 06:8CE6: 3C        .byte $3C, $0B   ; 06 
- D 0 - - - 0x018CF8 06:8CE8: 9C        .byte $9C, $0A   ; 08 
- D 0 - - - 0x018CFA 06:8CEA: 02        .byte $02, $0A   ; 0A 
- D 0 - - - 0x018CFC 06:8CEC: 72        .byte $72, $09   ; 0C 
- D 0 - - - 0x018CFE 06:8CEE: EC        .byte $EC, $08   ; 0E 
- D 0 - - - 0x018D00 06:8CF0: 6C        .byte $6C, $08   ; 10 
- D 0 - - - 0x018D02 06:8CF2: F2        .byte $F2, $07   ; 12 
- D 0 - - - 0x018D04 06:8CF4: 80        .byte $80, $07   ; 14 
- D 0 - - - 0x018D06 06:8CF6: 14        .byte $14, $07   ; 16 



tbl_8CF8:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 0 - - - 0x018D08 06:8CF8: AE        .byte $AE, $06   ; 00 
- D 0 - - - 0x018D0A 06:8CFA: 4E        .byte $4E, $06   ; 02 
- D 0 - - - 0x018D0C 06:8CFC: F4        .byte $F4, $05   ; 04 
- D 0 - - - 0x018D0E 06:8CFE: 9E        .byte $9E, $05   ; 06 
- D 0 - - - 0x018D10 06:8D00: 4E        .byte $4E, $05   ; 08 
- D 0 - - - 0x018D12 06:8D02: 01        .byte $01, $05   ; 0A 
- D 0 - - - 0x018D14 06:8D04: B9        .byte $B9, $04   ; 0C 
- D 0 - - - 0x018D16 06:8D06: 76        .byte $76, $04   ; 0E 
- D 0 - - - 0x018D18 06:8D08: 36        .byte $36, $04   ; 10 
- D 0 - - - 0x018D1A 06:8D0A: F9        .byte $F9, $03   ; 12 
- D 0 - - - 0x018D1C 06:8D0C: C0        .byte $C0, $03   ; 14 
- D 0 - - - 0x018D1E 06:8D0E: 8A        .byte $8A, $03   ; 16 
- D 0 - - - 0x018D20 06:8D10: 57        .byte $57, $03   ; 18 
- D 0 - - - 0x018D22 06:8D12: 27        .byte $27, $03   ; 1A 
- D 0 - - - 0x018D24 06:8D14: FA        .byte $FA, $02   ; 1C 
- D 0 - - - 0x018D26 06:8D16: CF        .byte $CF, $02   ; 1E 
- - - - - - 0x018D28 06:8D18: A7        .byte $A7, $02   ; 20 
- D 0 - - - 0x018D2A 06:8D1A: 81        .byte $81, $02   ; 22 
- - - - - - 0x018D2C 06:8D1C: 5D        .byte $5D, $02   ; 24 
- - - - - - 0x018D2E 06:8D1E: 3B        .byte $3B, $02   ; 26 
- - - - - - 0x018D30 06:8D20: 1B        .byte $1B, $02   ; 28 
- D 0 - - - 0x018D32 06:8D22: FD        .byte $FD, $01   ; 2A 
- D 0 - - - 0x018D34 06:8D24: E0        .byte $E0, $01   ; 2C 
- - - - - - 0x018D36 06:8D26: C5        .byte $C5, $01   ; 2E 



sub_8D28_10_NOPs:
loc_8D28_10_NOPs:
; bzk optimize, is this shit necessary?
C D 0 - - - 0x018D38 06:8D28: EA        NOP
C - - - - - 0x018D39 06:8D29: EA        NOP
C - - - - - 0x018D3A 06:8D2A: EA        NOP
C - - - - - 0x018D3B 06:8D2B: EA        NOP
C - - - - - 0x018D3C 06:8D2C: EA        NOP
C - - - - - 0x018D3D 06:8D2D: EA        NOP
C - - - - - 0x018D3E 06:8D2E: EA        NOP
C - - - - - 0x018D3F 06:8D2F: EA        NOP
C - - - - - 0x018D40 06:8D30: EA        NOP
C - - - - - 0x018D41 06:8D31: EA        NOP
C - - - - - 0x018D42 06:8D32: 60        RTS



tbl_8D33:
; bank selected at 0x01FDBB
- D 0 - - - 0x018D43 06:8D33: A9 8D     .word _off002_8DA9_01
- D 0 - - - 0x018D45 06:8D35: AD 8D     .word _off002_8DAD_02
- D 0 - - - 0x018D47 06:8D37: B1 8D     .word _off002_8DB1_03
- - - - - - 0x018D49 06:8D39: B5 8D     .word _off002_8DB5_04
- D 0 - - - 0x018D4B 06:8D3B: B9 8D     .word _off002_8DB9_05
- D 0 - - - 0x018D4D 06:8D3D: BD 8D     .word _off002_8DBD_06
- D 0 - - - 0x018D4F 06:8D3F: C4 8D     .word _off002_8DC4_07
- D 0 - - - 0x018D51 06:8D41: CB 8D     .word _off002_8DCB_08
- D 0 - - - 0x018D53 06:8D43: D2 8D     .word _off002_8DD2_09
- D 0 - - - 0x018D55 06:8D45: D9 8D     .word _off002_8DD9_0A
- D 0 - - - 0x018D57 06:8D47: E0 8D     .word _off002_8DE0_0B
- D 0 - - - 0x018D59 06:8D49: E7 8D     .word _off002_8DE7_0C
- D 0 - - - 0x018D5B 06:8D4B: EE 8D     .word _off002_8DEE_0D
- D 0 - - - 0x018D5D 06:8D4D: F5 8D     .word _off002_8DF5_0E
- D 0 - - - 0x018D5F 06:8D4F: FC 8D     .word _off002_8DFC_0F
- D 0 - - - 0x018D61 06:8D51: 03 8E     .word _off002_8E03_10
- D 0 - - - 0x018D63 06:8D53: 0A 8E     .word _off002_8E0A_11
- D 0 - - - 0x018D65 06:8D55: 11 8E     .word _off002_8E11_12
- D 0 - - - 0x018D67 06:8D57: 15 8E     .word _off002_8E15_13
- D 0 - - - 0x018D69 06:8D59: 1C 8E     .word _off002_8E1C_14
- D 0 - - - 0x018D6B 06:8D5B: 23 8E     .word _off002_8E23_15
- D 0 - - - 0x018D6D 06:8D5D: 2A 8E     .word _off002_8E2A_16
- D 0 - - - 0x018D6F 06:8D5F: 31 8E     .word _off002_8E31_17
- D 0 - - - 0x018D71 06:8D61: 35 8E     .word _off002_8E35_18
- D 0 - - - 0x018D73 06:8D63: 3C 8E     .word _off002_8E3C_19
- D 0 - - - 0x018D75 06:8D65: 40 8E     .word _off002_8E40_1A
- D 0 - - - 0x018D77 06:8D67: 47 8E     .word _off002_8E47_1B
- D 0 - - - 0x018D79 06:8D69: 4E 8E     .word _off002_8E4E_1C
- D 0 - - - 0x018D7B 06:8D6B: 55 8E     .word _off002_8E55_1D
- - - - - - 0x018D7D 06:8D6D: 59 8E     .word _off002_8E59_1E
- D 0 - - - 0x018D7F 06:8D6F: 60 8E     .word _off002_8E60_1F
- D 0 - - - 0x018D81 06:8D71: 67 8E     .word _off002_8E67_20
- D 0 - - - 0x018D83 06:8D73: 6B 8E     .word _off002_8E6B_21
- D 0 - - - 0x018D85 06:8D75: 6F 8E     .word _off002_8E6F_22
- D 0 - - - 0x018D87 06:8D77: 76 8E     .word _off002_8E76_23
- D 0 - - - 0x018D89 06:8D79: 7A 8E     .word _off002_8E7A_24
- D 0 - - - 0x018D8B 06:8D7B: 7E 8E     .word _off002_8E7E_25
- D 0 - - - 0x018D8D 06:8D7D: 85 8E     .word _off002_8E85_26
- D 0 - - - 0x018D8F 06:8D7F: 8F 8E     .word _off002_8E8F_27
- D 0 - - - 0x018D91 06:8D81: 93 8E     .word _off002_8E93_28
- D 0 - - - 0x018D93 06:8D83: A0 8E     .word _off002_8EA0_29
- D 0 - - - 0x018D95 06:8D85: AD 8E     .word _off002_8EAD_2A
- D 0 - - - 0x018D97 06:8D87: BA 8E     .word _off002_8EBA_2B
- D 0 - - - 0x018D99 06:8D89: C7 8E     .word _off002_8EC7_2C
- D 0 - - - 0x018D9B 06:8D8B: D4 8E     .word _off002_8ED4_2D
- D 0 - - - 0x018D9D 06:8D8D: E1 8E     .word _off002_8EE1_2E
- D 0 - - - 0x018D9F 06:8D8F: EE 8E     .word _off002_8EEE_2F
- D 0 - - - 0x018DA1 06:8D91: FB 8E     .word _off002_8EFB_30
- D 0 - - - 0x018DA3 06:8D93: 08 8F     .word _off002_8F08_31
- D 0 - - - 0x018DA5 06:8D95: 15 8F     .word _off002_8F15_32
- D 0 - - - 0x018DA7 06:8D97: 22 8F     .word _off002_8F22_33
- D 0 - - - 0x018DA9 06:8D99: 2F 8F     .word _off002_8F2F_34
- D 0 - - - 0x018DAB 06:8D9B: 3C 8F     .word _off002_8F3C_35
- D 0 - - - 0x018DAD 06:8D9D: 49 8F     .word _off002_8F49_36


; bzk garbage
- - - - - - 0x018DAF 06:8D9F: 56 8F     .word _off002_8F56_37
- - - - - - 0x018DB1 06:8DA1: 5A 8F     .word _off002_8F5A_38
- - - - - - 0x018DB3 06:8DA3: 5E 8F     .word _off002_8F5E_39
- - - - - - 0x018DB5 06:8DA5: 62 8F     .word _off002_8F62_3A
- - - - - - 0x018DB7 06:8DA7: 66 8F     .word _off002_8F66_3B



_off002_8DA9_01:
- D 0 - I - 0x018DB9 06:8DA9: 00        .byte $00   ; 
- D 0 - I - 0x018DBA 06:8DAA: 05        .byte $05   ; 
- D 0 - I - 0x018DBB 06:8DAB: A4 91     .word _off014_01_91A4_05



_off002_8DAD_02:
- D 0 - I - 0x018DBD 06:8DAD: 00        .byte $00   ; 
- D 0 - I - 0x018DBE 06:8DAE: 05        .byte $05   ; 
- D 0 - I - 0x018DBF 06:8DAF: A4 91     .word _off014_02_91A4_05



_off002_8DB1_03:
- D 0 - I - 0x018DC1 06:8DB1: 00        .byte $00   ; 
- D 0 - I - 0x018DC2 06:8DB2: 05        .byte $05   ; 
- D 0 - I - 0x018DC3 06:8DB3: AA 91     .word _off014_03_91AA_05



_off002_8DB5_04:
- - - - - - 0x018DC5 06:8DB5: 00        .byte $00   ; 
- - - - - - 0x018DC6 06:8DB6: 05        .byte $05   ; 
- - - - - - 0x018DC7 06:8DB7: B7 91     .word _off014_04_91B7_05



_off002_8DB9_05:
- D 0 - I - 0x018DC9 06:8DB9: 00        .byte $00   ; 
- D 0 - I - 0x018DCA 06:8DBA: 05        .byte $05   ; 
- D 0 - I - 0x018DCB 06:8DBB: B7 91     .word _off014_05_91B7_05



_off002_8DBD_06:
- D 0 - I - 0x018DCD 06:8DBD: 01        .byte $01   ; 
- D 0 - I - 0x018DCE 06:8DBE: 04        .byte $04   ; 
- D 0 - I - 0x018DCF 06:8DBF: C1 91     .word _off014_06_91C1_04
- D 0 - I - 0x018DD1 06:8DC1: 05        .byte $05   ; 
- D 0 - I - 0x018DD2 06:8DC2: D2 91     .word _off014_06_91D2_05



_off002_8DC4_07:
- D 0 - I - 0x018DD4 06:8DC4: 01        .byte $01   ; 
- D 0 - I - 0x018DD5 06:8DC5: 04        .byte $04   ; 
- D 0 - I - 0x018DD6 06:8DC6: D7 91     .word _off014_07_91D7_04
- D 0 - I - 0x018DD8 06:8DC8: 05        .byte $05   ; 
- D 0 - I - 0x018DD9 06:8DC9: D2 91     .word _off014_07_91D2_05



_off002_8DCB_08:
- D 0 - I - 0x018DDB 06:8DCB: 01        .byte $01   ; 
- D 0 - I - 0x018DDC 06:8DCC: 04        .byte $04   ; 
- D 0 - I - 0x018DDD 06:8DCD: C0 95     .word _off014_08_95C0_04
- D 0 - I - 0x018DDF 06:8DCF: 05        .byte $05   ; 
- D 0 - I - 0x018DE0 06:8DD0: C1 95     .word _off014_08_95C1_05



_off002_8DD2_09:
- D 0 - I - 0x018DE2 06:8DD2: 01        .byte $01   ; 
- D 0 - I - 0x018DE3 06:8DD3: 04        .byte $04   ; 
- D 0 - I - 0x018DE4 06:8DD4: D8 91     .word _off014_09_91D8_04
- D 0 - I - 0x018DE6 06:8DD6: 05        .byte $05   ; 
- D 0 - I - 0x018DE7 06:8DD7: E4 91     .word _off014_09_91E4_05



_off002_8DD9_0A:
- D 0 - I - 0x018DE9 06:8DD9: 01        .byte $01   ; 
- D 0 - I - 0x018DEA 06:8DDA: 04        .byte $04   ; 
- D 0 - I - 0x018DEB 06:8DDB: 13 95     .word _off014_0A_9513_04
- D 0 - I - 0x018DED 06:8DDD: 05        .byte $05   ; 
- D 0 - I - 0x018DEE 06:8DDE: 43 95     .word _off014_0A_9543_05



_off002_8DE0_0B:
- D 0 - I - 0x018DF0 06:8DE0: 01        .byte $01   ; 
- D 0 - I - 0x018DF1 06:8DE1: 04        .byte $04   ; 
- D 0 - I - 0x018DF2 06:8DE2: E8 91     .word _off014_0B_91E8_04
- D 0 - I - 0x018DF4 06:8DE4: 05        .byte $05   ; 
- D 0 - I - 0x018DF5 06:8DE5: 10 92     .word _off014_0B_9210_05



_off002_8DE7_0C:
- D 0 - I - 0x018DF7 06:8DE7: 01        .byte $01   ; 
- D 0 - I - 0x018DF8 06:8DE8: 04        .byte $04   ; 
- D 0 - I - 0x018DF9 06:8DE9: 22 92     .word _off014_0C_9222_04
- D 0 - I - 0x018DFB 06:8DEB: 05        .byte $05   ; 
- D 0 - I - 0x018DFC 06:8DEC: 4C 92     .word _off014_0C_924C_05



_off002_8DEE_0D:
- D 0 - I - 0x018DFE 06:8DEE: 01        .byte $01   ; 
- D 0 - I - 0x018DFF 06:8DEF: 04        .byte $04   ; 
- D 0 - I - 0x018E00 06:8DF0: 5E 92     .word _off014_0D_925E_04
- D 0 - I - 0x018E02 06:8DF2: 05        .byte $05   ; 
- D 0 - I - 0x018E03 06:8DF3: 94 92     .word _off014_0D_9294_05



_off002_8DF5_0E:
- D 0 - I - 0x018E05 06:8DF5: 01        .byte $01   ; 
- D 0 - I - 0x018E06 06:8DF6: 04        .byte $04   ; 
- D 0 - I - 0x018E07 06:8DF7: C6 92     .word _off014_0E_92C6_04
- D 0 - I - 0x018E09 06:8DF9: 05        .byte $05   ; 
- D 0 - I - 0x018E0A 06:8DFA: D2 92     .word _off014_0E_92D2_05



_off002_8DFC_0F:
- D 0 - I - 0x018E0C 06:8DFC: 01        .byte $01   ; 
- D 0 - I - 0x018E0D 06:8DFD: 04        .byte $04   ; 
- D 0 - I - 0x018E0E 06:8DFE: FB 92     .word _off014_0F_92FB_04
- D 0 - I - 0x018E10 06:8E00: 05        .byte $05   ; 
- D 0 - I - 0x018E11 06:8E01: 15 93     .word _off014_0F_9315_05



_off002_8E03_10:
- D 0 - I - 0x018E13 06:8E03: 01        .byte $01   ; 
- D 0 - I - 0x018E14 06:8E04: 04        .byte $04   ; 
- D 0 - I - 0x018E15 06:8E05: 20 93     .word _off014_10_9320_04
- D 0 - I - 0x018E17 06:8E07: 05        .byte $05   ; 
- D 0 - I - 0x018E18 06:8E08: 39 93     .word _off014_10_9339_05



_off002_8E0A_11:
- D 0 - I - 0x018E1A 06:8E0A: 01        .byte $01   ; 
- D 0 - I - 0x018E1B 06:8E0B: 04        .byte $04   ; 
- D 0 - I - 0x018E1C 06:8E0C: 4A 93     .word _off014_11_934A_04
- D 0 - I - 0x018E1E 06:8E0E: 05        .byte $05   ; 
- D 0 - I - 0x018E1F 06:8E0F: 67 93     .word _off014_11_9367_05



_off002_8E11_12:
- D 0 - I - 0x018E21 06:8E11: 00        .byte $00   ; 
- D 0 - I - 0x018E22 06:8E12: 05        .byte $05   ; 
- D 0 - I - 0x018E23 06:8E13: 78 93     .word _off014_12_9378_05



_off002_8E15_13:
- D 0 - I - 0x018E25 06:8E15: 01        .byte $01   ; 
- D 0 - I - 0x018E26 06:8E16: 04        .byte $04   ; 
- D 0 - I - 0x018E27 06:8E17: E4 93     .word _off014_13_93E4_04
- D 0 - I - 0x018E29 06:8E19: 05        .byte $05   ; 
- D 0 - I - 0x018E2A 06:8E1A: F7 93     .word _off014_13_93F7_05



_off002_8E1C_14:
- D 0 - I - 0x018E2C 06:8E1C: 01        .byte $01   ; 
- D 0 - I - 0x018E2D 06:8E1D: 04        .byte $04   ; 
- D 0 - I - 0x018E2E 06:8E1E: 99 93     .word _off014_14_9399_04
- D 0 - I - 0x018E30 06:8E20: 05        .byte $05   ; 
- D 0 - I - 0x018E31 06:8E21: A9 93     .word _off014_14_93A9_05



_off002_8E23_15:
- D 0 - I - 0x018E33 06:8E23: 01        .byte $01   ; 
- D 0 - I - 0x018E34 06:8E24: 04        .byte $04   ; 
- D 0 - I - 0x018E35 06:8E25: BA 93     .word _off014_15_93BA_04
- D 0 - I - 0x018E37 06:8E27: 05        .byte $05   ; 
- D 0 - I - 0x018E38 06:8E28: D2 93     .word _off014_15_93D2_05



_off002_8E2A_16:
- D 0 - I - 0x018E3A 06:8E2A: 01        .byte $01   ; 
- D 0 - I - 0x018E3B 06:8E2B: 04        .byte $04   ; 
- D 0 - I - 0x018E3C 06:8E2C: F8 93     .word _off014_16_93F8_04
- D 0 - I - 0x018E3E 06:8E2E: 05        .byte $05   ; 
- D 0 - I - 0x018E3F 06:8E2F: 0E 94     .word _off014_16_940E_05



_off002_8E31_17:
- D 0 - I - 0x018E41 06:8E31: 00        .byte $00   ; 
- D 0 - I - 0x018E42 06:8E32: 04        .byte $04   ; 
- D 0 - I - 0x018E43 06:8E33: 35 94     .word _off014_17_9435_04



_off002_8E35_18:
- D 0 - I - 0x018E45 06:8E35: 01        .byte $01   ; 
- D 0 - I - 0x018E46 06:8E36: 04        .byte $04   ; 
- D 0 - I - 0x018E47 06:8E37: 36 94     .word _off014_18_9436_04
- D 0 - I - 0x018E49 06:8E39: 05        .byte $05   ; 
- D 0 - I - 0x018E4A 06:8E3A: 5E 94     .word _off014_18_945E_05



_off002_8E3C_19:
- D 0 - I - 0x018E4C 06:8E3C: 00        .byte $00   ; 
- D 0 - I - 0x018E4D 06:8E3D: 04        .byte $04   ; 
- D 0 - I - 0x018E4E 06:8E3E: 71 94     .word _off014_19_9471_04



_off002_8E40_1A:
- D 0 - I - 0x018E50 06:8E40: 01        .byte $01   ; 
- D 0 - I - 0x018E51 06:8E41: 04        .byte $04   ; 
- D 0 - I - 0x018E52 06:8E42: 85 94     .word _off014_1A_9485_04
- D 0 - I - 0x018E54 06:8E44: 05        .byte $05   ; 
- D 0 - I - 0x018E55 06:8E45: 9E 94     .word _off014_1A_949E_05



_off002_8E47_1B:
- D 0 - I - 0x018E57 06:8E47: 01        .byte $01   ; 
- D 0 - I - 0x018E58 06:8E48: 04        .byte $04   ; 
- D 0 - I - 0x018E59 06:8E49: BE 94     .word _off014_1B_94BE_04
- D 0 - I - 0x018E5B 06:8E4B: 05        .byte $05   ; 
- D 0 - I - 0x018E5C 06:8E4C: D1 94     .word _off014_1B_94D1_05



_off002_8E4E_1C:
- D 0 - I - 0x018E5E 06:8E4E: 01        .byte $01   ; 
- D 0 - I - 0x018E5F 06:8E4F: 04        .byte $04   ; 
- D 0 - I - 0x018E60 06:8E50: ED 94     .word _off014_1C_94ED_04
- D 0 - I - 0x018E62 06:8E52: 05        .byte $05   ; 
- D 0 - I - 0x018E63 06:8E53: EE 94     .word _off014_1C_94EE_05



_off002_8E55_1D:
- D 0 - I - 0x018E65 06:8E55: 00        .byte $00   ; 
- D 0 - I - 0x018E66 06:8E56: 05        .byte $05   ; 
- D 0 - I - 0x018E67 06:8E57: 82 95     .word _off014_1D_9582_05



_off002_8E59_1E:
- - - - - - 0x018E69 06:8E59: 01        .byte $01   ; 
- - - - - - 0x018E6A 06:8E5A: 04        .byte $04   ; 
- - - - - - 0x018E6B 06:8E5B: 9D 95     .word _off014_1E_959D_04
- - - - - - 0x018E6D 06:8E5D: 05        .byte $05   ; 
- - - - - - 0x018E6E 06:8E5E: 9D 95     .word _off014_1E_959D_05



_off002_8E60_1F:
- D 0 - I - 0x018E70 06:8E60: 01        .byte $01   ; 
- D 0 - I - 0x018E71 06:8E61: 04        .byte $04   ; 
- D 0 - I - 0x018E72 06:8E62: 9E 95     .word _off014_1F_959E_04
- D 0 - I - 0x018E74 06:8E64: 05        .byte $05   ; 
- D 0 - I - 0x018E75 06:8E65: A9 95     .word _off014_1F_95A9_05



_off002_8E67_20:
- D 0 - I - 0x018E77 06:8E67: 00        .byte $00   ; 
- D 0 - I - 0x018E78 06:8E68: 05        .byte $05   ; 
- D 0 - I - 0x018E79 06:8E69: D3 95     .word _off014_20_95D3_05



_off002_8E6B_21:
- D 0 - I - 0x018E7B 06:8E6B: 00        .byte $00   ; 
- D 0 - I - 0x018E7C 06:8E6C: 04        .byte $04   ; 
- D 0 - I - 0x018E7D 06:8E6D: DF 95     .word _off014_21_95DF_04



_off002_8E6F_22:
- D 0 - I - 0x018E7F 06:8E6F: 01        .byte $01   ; 
- D 0 - I - 0x018E80 06:8E70: 04        .byte $04   ; 
- D 0 - I - 0x018E81 06:8E71: 15 96     .word _off014_22_9615_04
- D 0 - I - 0x018E83 06:8E73: 05        .byte $05   ; 
- D 0 - I - 0x018E84 06:8E74: 48 96     .word _off014_22_9648_05



_off002_8E76_23:
- D 0 - I - 0x018E86 06:8E76: 00        .byte $00   ; 
- D 0 - I - 0x018E87 06:8E77: 04        .byte $04   ; 
- D 0 - I - 0x018E88 06:8E78: 5D 96     .word _off014_23_965D_04



_off002_8E7A_24:
- D 0 - I - 0x018E8A 06:8E7A: 00        .byte $00   ; 
- D 0 - I - 0x018E8B 06:8E7B: 04        .byte $04   ; 
- D 0 - I - 0x018E8C 06:8E7C: E4 93     .word _off014_24_93E4_04



_off002_8E7E_25:
- D 0 - I - 0x018E8E 06:8E7E: 01        .byte $01   ; 
- D 0 - I - 0x018E8F 06:8E7F: 04        .byte $04   ; 
- D 0 - I - 0x018E90 06:8E80: 9A 96     .word _off014_25_969A_04
- D 0 - I - 0x018E92 06:8E82: 05        .byte $05   ; 
- D 0 - I - 0x018E93 06:8E83: EB 96     .word _off014_25_96EB_05



_off002_8E85_26:
- D 0 - I - 0x018E95 06:8E85: 02        .byte $02   ; 
- D 0 - I - 0x018E96 06:8E86: 01        .byte $01   ; 
- D 0 - I - 0x018E97 06:8E87: 01 97     .word _off014_26_9701_01
- D 0 - I - 0x018E99 06:8E89: 04        .byte $04   ; 
- D 0 - I - 0x018E9A 06:8E8A: 05 97     .word _off014_26_9705_04
- D 0 - I - 0x018E9C 06:8E8C: 05        .byte $05   ; 
- D 0 - I - 0x018E9D 06:8E8D: 36 97     .word _off014_26_9736_05



_off002_8E8F_27:
- D 0 - I - 0x018E9F 06:8E8F: 00        .byte $00   ; 
- D 0 - I - 0x018EA0 06:8E90: 04        .byte $04   ; 
- D 0 - I - 0x018EA1 06:8E91: 62 97     .word _off014_27_9762_04



_off002_8E93_28:
- D 0 - I - 0x018EA3 06:8E93: 03        .byte $03   ; 
- D 0 - I - 0x018EA4 06:8E94: 00        .byte $00   ; 
- D 0 - I - 0x018EA5 06:8E95: 7F 97     .word _off014_28_977F_00
- D 0 - I - 0x018EA7 06:8E97: 01        .byte $01   ; 
- D 0 - I - 0x018EA8 06:8E98: 41 99     .word _off014_28_9941_01
- D 0 - I - 0x018EAA 06:8E9A: 02        .byte $02   ; 
- D 0 - I - 0x018EAB 06:8E9B: CB 9A     .word _off014_28_9ACB_02
- D 0 - I - 0x018EAD 06:8E9D: 03        .byte $03   ; 
- D 0 - I - 0x018EAE 06:8E9E: 64 9C     .word _off014_28_9C64_03



_off002_8EA0_29:
- D 0 - I - 0x018EB0 06:8EA0: 03        .byte $03   ; 
- D 0 - I - 0x018EB1 06:8EA1: 00        .byte $00   ; 
- D 0 - I - 0x018EB2 06:8EA2: 86 9E     .word _off014_29_9E86_00
- D 0 - I - 0x018EB4 06:8EA4: 01        .byte $01   ; 
- D 0 - I - 0x018EB5 06:8EA5: DF 9F     .word _off014_29_9FDF_01
- D 0 - I - 0x018EB7 06:8EA7: 02        .byte $02   ; 
- D 0 - I - 0x018EB8 06:8EA8: D8 A0     .word _off014_29_A0D8_02
- D 0 - I - 0x018EBA 06:8EAA: 03        .byte $03   ; 
- D 0 - I - 0x018EBB 06:8EAB: 12 A2     .word _off014_29_A212_03



_off002_8EAD_2A:
- D 0 - I - 0x018EBD 06:8EAD: 03        .byte $03   ; 
- D 0 - I - 0x018EBE 06:8EAE: 00        .byte $00   ; 
- D 0 - I - 0x018EBF 06:8EAF: 94 A2     .word _off014_2A_A294_00
- D 0 - I - 0x018EC1 06:8EB1: 01        .byte $01   ; 
- D 0 - I - 0x018EC2 06:8EB2: A4 A3     .word _off014_2A_A3A4_01
- D 0 - I - 0x018EC4 06:8EB4: 02        .byte $02   ; 
- D 0 - I - 0x018EC5 06:8EB5: AD A4     .word _off014_2A_A4AD_02
- D 0 - I - 0x018EC7 06:8EB7: 03        .byte $03   ; 
- D 0 - I - 0x018EC8 06:8EB8: 83 A5     .word _off014_2A_A583_03



_off002_8EBA_2B:
- D 0 - I - 0x018ECA 06:8EBA: 03        .byte $03   ; 
- D 0 - I - 0x018ECB 06:8EBB: 00        .byte $00   ; 
- D 0 - I - 0x018ECC 06:8EBC: 79 A6     .word _off014_2B_A679_00
- D 0 - I - 0x018ECE 06:8EBE: 01        .byte $01   ; 
- D 0 - I - 0x018ECF 06:8EBF: A1 A7     .word _off014_2B_A7A1_01
- D 0 - I - 0x018ED1 06:8EC1: 02        .byte $02   ; 
- D 0 - I - 0x018ED2 06:8EC2: C9 A8     .word _off014_2B_A8C9_02
- D 0 - I - 0x018ED4 06:8EC4: 03        .byte $03   ; 
- D 0 - I - 0x018ED5 06:8EC5: CE A9     .word _off014_2B_A9CE_03



_off002_8EC7_2C:
- D 0 - I - 0x018ED7 06:8EC7: 03        .byte $03   ; 
- D 0 - I - 0x018ED8 06:8EC8: 00        .byte $00   ; 
- D 0 - I - 0x018ED9 06:8EC9: E6 AA     .word _off014_2C_AAE6_00
- D 0 - I - 0x018EDB 06:8ECB: 01        .byte $01   ; 
- D 0 - I - 0x018EDC 06:8ECC: D2 AB     .word _off014_2C_ABD2_01
- D 0 - I - 0x018EDE 06:8ECE: 02        .byte $02   ; 
- D 0 - I - 0x018EDF 06:8ECF: B8 AC     .word _off014_2C_ACB8_02
- D 0 - I - 0x018EE1 06:8ED1: 03        .byte $03   ; 
- D 0 - I - 0x018EE2 06:8ED2: 98 AD     .word _off014_2C_AD98_03



_off002_8ED4_2D:
- D 0 - I - 0x018EE4 06:8ED4: 03        .byte $03   ; 
- D 0 - I - 0x018EE5 06:8ED5: 00        .byte $00   ; 
- D 0 - I - 0x018EE6 06:8ED6: 9E AE     .word _off014_2D_AE9E_00
- D 0 - I - 0x018EE8 06:8ED8: 01        .byte $01   ; 
- D 0 - I - 0x018EE9 06:8ED9: 13 B0     .word _off014_2D_B013_01
- D 0 - I - 0x018EEB 06:8EDB: 02        .byte $02   ; 
- D 0 - I - 0x018EEC 06:8EDC: EE B1     .word _off014_2D_B1EE_02
- D 0 - I - 0x018EEE 06:8EDE: 03        .byte $03   ; 
- D 0 - I - 0x018EEF 06:8EDF: 08 B3     .word _off014_2D_B308_03



_off002_8EE1_2E:
- D 0 - I - 0x018EF1 06:8EE1: 03        .byte $03   ; 
- D 0 - I - 0x018EF2 06:8EE2: 00        .byte $00   ; 
- D 0 - I - 0x018EF3 06:8EE3: 86 9E     .word _off014_2E_9E86_00
- D 0 - I - 0x018EF5 06:8EE5: 01        .byte $01   ; 
- D 0 - I - 0x018EF6 06:8EE6: DF 9F     .word _off014_2E_9FDF_01
- D 0 - I - 0x018EF8 06:8EE8: 02        .byte $02   ; 
- D 0 - I - 0x018EF9 06:8EE9: D8 A0     .word _off014_2E_A0D8_02
- D 0 - I - 0x018EFB 06:8EEB: 03        .byte $03   ; 
- D 0 - I - 0x018EFC 06:8EEC: 12 A2     .word _off014_2E_A212_03



_off002_8EEE_2F:
- D 0 - I - 0x018EFE 06:8EEE: 03        .byte $03   ; 
- D 0 - I - 0x018EFF 06:8EEF: 00        .byte $00   ; 
- D 0 - I - 0x018F00 06:8EF0: 50 B3     .word _off014_2F_B350_00
- D 0 - I - 0x018F02 06:8EF2: 01        .byte $01   ; 
- D 0 - I - 0x018F03 06:8EF3: 92 B4     .word _off014_2F_B492_01
- D 0 - I - 0x018F05 06:8EF5: 02        .byte $02   ; 
- D 0 - I - 0x018F06 06:8EF6: 46 B5     .word _off014_2F_B546_02
- D 0 - I - 0x018F08 06:8EF8: 03        .byte $03   ; 
- D 0 - I - 0x018F09 06:8EF9: E4 B5     .word _off014_2F_B5E4_03



_off002_8EFB_30:
- D 0 - I - 0x018F0B 06:8EFB: 03        .byte $03   ; 
- D 0 - I - 0x018F0C 06:8EFC: 00        .byte $00   ; 
- D 0 - I - 0x018F0D 06:8EFD: 9D B6     .word _off014_30_B69D_00
- D 0 - I - 0x018F0F 06:8EFF: 01        .byte $01   ; 
- D 0 - I - 0x018F10 06:8F00: 62 B7     .word _off014_30_B762_01
- D 0 - I - 0x018F12 06:8F02: 02        .byte $02   ; 
- D 0 - I - 0x018F13 06:8F03: 19 B8     .word _off014_30_B819_02
- D 0 - I - 0x018F15 06:8F05: 03        .byte $03   ; 
- D 0 - I - 0x018F16 06:8F06: A0 B8     .word _off014_30_B8A0_03



_off002_8F08_31:
- D 0 - I - 0x018F18 06:8F08: 03        .byte $03   ; 
- D 0 - I - 0x018F19 06:8F09: 00        .byte $00   ; 
- D 0 - I - 0x018F1A 06:8F0A: D7 B9     .word _off014_31_B9D7_00
- D 0 - I - 0x018F1C 06:8F0C: 01        .byte $01   ; 
- D 0 - I - 0x018F1D 06:8F0D: B8 BA     .word _off014_31_BAB8_01
- D 0 - I - 0x018F1F 06:8F0F: 02        .byte $02   ; 
- D 0 - I - 0x018F20 06:8F10: 88 BB     .word _off014_31_BB88_02
- D 0 - I - 0x018F22 06:8F12: 03        .byte $03   ; 
- D 0 - I - 0x018F23 06:8F13: 44 BC     .word _off014_31_BC44_03



_off002_8F15_32:
- D 0 - I - 0x018F25 06:8F15: 03        .byte $03   ; 
- D 0 - I - 0x018F26 06:8F16: 00        .byte $00   ; 
- D 0 - I - 0x018F27 06:8F17: 2F A6     .word _off014_32_0x00263F_00
- D 0 - I - 0x018F29 06:8F19: 01        .byte $01   ; 
- D 0 - I - 0x018F2A 06:8F1A: 20 A7     .word _off014_32_0x002730_01
- D 0 - I - 0x018F2C 06:8F1C: 02        .byte $02   ; 
- D 0 - I - 0x018F2D 06:8F1D: CC A7     .word _off014_32_0x0027DC_02
- D 0 - I - 0x018F2F 06:8F1F: 03        .byte $03   ; 
- D 0 - I - 0x018F30 06:8F20: 44 A8     .word _off014_32_0x002854_03



_off002_8F22_33:
- D 0 - I - 0x018F32 06:8F22: 03        .byte $03   ; 
- D 0 - I - 0x018F33 06:8F23: 00        .byte $00   ; 
- D 0 - I - 0x018F34 06:8F24: 1F BD     .word _off014_33_BD1F_00
- D 0 - I - 0x018F36 06:8F26: 01        .byte $01   ; 
- D 0 - I - 0x018F37 06:8F27: 48 BD     .word _off014_33_BD48_01
- D 0 - I - 0x018F39 06:8F29: 02        .byte $02   ; 
- D 0 - I - 0x018F3A 06:8F2A: 72 BD     .word _off014_33_BD72_02
- D 0 - I - 0x018F3C 06:8F2C: 03        .byte $03   ; 
- D 0 - I - 0x018F3D 06:8F2D: 8F BD     .word _off014_33_BD8F_03



_off002_8F2F_34:
- D 0 - I - 0x018F3F 06:8F2F: 03        .byte $03   ; 
- D 0 - I - 0x018F40 06:8F30: 00        .byte $00   ; 
- D 0 - I - 0x018F41 06:8F31: AB BD     .word _off014_34_BDAB_00
- D 0 - I - 0x018F43 06:8F33: 01        .byte $01   ; 
- D 0 - I - 0x018F44 06:8F34: ED BD     .word _off014_34_BDED_01
- D 0 - I - 0x018F46 06:8F36: 02        .byte $02   ; 
- D 0 - I - 0x018F47 06:8F37: 33 BE     .word _off014_34_BE33_02
- D 0 - I - 0x018F49 06:8F39: 03        .byte $03   ; 
- D 0 - I - 0x018F4A 06:8F3A: 6B BE     .word _off014_34_BE6B_03



_off002_8F3C_35:
- D 0 - I - 0x018F4C 06:8F3C: 03        .byte $03   ; 
- D 0 - I - 0x018F4D 06:8F3D: 00        .byte $00   ; 
- D 0 - I - 0x018F4E 06:8F3E: AC BE     .word _off014_35_BEAC_00
- D 0 - I - 0x018F50 06:8F40: 01        .byte $01   ; 
- D 0 - I - 0x018F51 06:8F41: 1D BF     .word _off014_35_BF1D_01
- D 0 - I - 0x018F53 06:8F43: 02        .byte $02   ; 
- D 0 - I - 0x018F54 06:8F44: 49 BF     .word _off014_35_BF49_02
- D 0 - I - 0x018F56 06:8F46: 03        .byte $03   ; 
- D 0 - I - 0x018F57 06:8F47: 9A BF     .word _off014_35_BF9A_03



_off002_8F49_36:
- D 0 - I - 0x018F59 06:8F49: 03        .byte $03   ; 
- D 0 - I - 0x018F5A 06:8F4A: 00        .byte $00   ; 
- D 0 - I - 0x018F5B 06:8F4B: CE A8     .word _off014_36_0x0028DE_00
- D 0 - I - 0x018F5D 06:8F4D: 01        .byte $01   ; 
- D 0 - I - 0x018F5E 06:8F4E: 52 A9     .word _off014_36_0x002962_01
- D 0 - I - 0x018F60 06:8F50: 02        .byte $02   ; 
- D 0 - I - 0x018F61 06:8F51: D4 A9     .word _off014_36_0x0029E4_02
- D 0 - I - 0x018F63 06:8F53: 03        .byte $03   ; 
- D 0 - I - 0x018F64 06:8F54: 6D AA     .word _off014_36_0x002A7D_03



_off002_8F56_37:
- - - - - - 0x018F66 06:8F56: 00        .byte $00   ; 
- - - - - - 0x018F67 06:8F57: 06        .byte $06   ; 
- - - - - - 0x018F68 06:8F58: 3C 91     .word _off014_37_913C_06



_off002_8F5A_38:
- - - - - - 0x018F6A 06:8F5A: 00        .byte $00   ; 
- - - - - - 0x018F6B 06:8F5B: 06        .byte $06   ; 
- - - - - - 0x018F6C 06:8F5C: 40 91     .word _off014_38_9140_06



_off002_8F5E_39:
- - - - - - 0x018F6E 06:8F5E: 00        .byte $00   ; 
- - - - - - 0x018F6F 06:8F5F: 06        .byte $06   ; 
- - - - - - 0x018F70 06:8F60: 44 91     .word _off014_39_9144_06



_off002_8F62_3A:
- - - - - - 0x018F72 06:8F62: 00        .byte $00   ; 
- - - - - - 0x018F73 06:8F63: 06        .byte $06   ; 
- - - - - - 0x018F74 06:8F64: 48 91     .word _off014_3A_9148_06



_off002_8F66_3B:
- - - - - - 0x018F76 06:8F66: 00        .byte $00   ; 
- - - - - - 0x018F77 06:8F67: 06        .byte $06   ; 
- - - - - - 0x018F78 06:8F68: 4C 91     .word _off014_3B_914C_06



tbl_8F6A:
- D 0 - - - 0x018F7A 06:8F6A: CC 8F     .word _off026_8FCC_00
- D 0 - - - 0x018F7C 06:8F6C: D2 8F     .word _off026_8FD2_01
- D 0 - - - 0x018F7E 06:8F6E: D8 8F     .word _off026_8FD8_02
- D 0 - - - 0x018F80 06:8F70: DE 8F     .word _off026_8FDE_03
- D 0 - - - 0x018F82 06:8F72: E4 8F     .word _off026_8FE4_04
- D 0 - - - 0x018F84 06:8F74: EB 8F     .word _off026_8FEB_05
- D 0 - - - 0x018F86 06:8F76: F1 8F     .word _off026_8FF1_06
- D 0 - - - 0x018F88 06:8F78: F7 8F     .word _off026_8FF7_07
- D 0 - - - 0x018F8A 06:8F7A: FD 8F     .word _off026_8FFD_08
- D 0 - - - 0x018F8C 06:8F7C: 04 90     .word _off026_9004_09
- D 0 - - - 0x018F8E 06:8F7E: 08 90     .word _off026_9008_0A
- D 0 - - - 0x018F90 06:8F80: 0E 90     .word _off026_900E_0B
- D 0 - - - 0x018F92 06:8F82: 14 90     .word _off026_9014_0C
- D 0 - - - 0x018F94 06:8F84: 1E 90     .word _off026_901E_0D
- D 0 - - - 0x018F96 06:8F86: 24 90     .word _off026_9024_0E
- D 0 - - - 0x018F98 06:8F88: 2A 90     .word _off026_902A_0F
- D 0 - - - 0x018F9A 06:8F8A: 2F 90     .word _off026_902F_10
- D 0 - - - 0x018F9C 06:8F8C: 36 90     .word _off026_9036_11
- D 0 - - - 0x018F9E 06:8F8E: 3D 90     .word _off026_903D_12
- D 0 - - - 0x018FA0 06:8F90: 43 90     .word _off026_9043_13
- D 0 - - - 0x018FA2 06:8F92: 48 90     .word _off026_9048_14
- D 0 - - - 0x018FA4 06:8F94: 4E 90     .word _off026_904E_15
- D 0 - - - 0x018FA6 06:8F96: 55 90     .word _off026_9055_16
- D 0 - - - 0x018FA8 06:8F98: 5B 90     .word _off026_905B_17
- D 0 - - - 0x018FAA 06:8F9A: 62 90     .word _off026_9062_18
- D 0 - - - 0x018FAC 06:8F9C: 68 90     .word _off026_9068_19
- D 0 - - - 0x018FAE 06:8F9E: 71 90     .word _off026_9071_1A
- D 0 - - - 0x018FB0 06:8FA0: 76 90     .word _off026_9076_1B
- D 0 - - - 0x018FB2 06:8FA2: 7D 90     .word _off026_907D_1C
- D 0 - - - 0x018FB4 06:8FA4: 83 90     .word _off026_9083_1D
- D 0 - - - 0x018FB6 06:8FA6: 8A 90     .word _off026_908A_1E
- D 0 - - - 0x018FB8 06:8FA8: 90 90     .word _off026_9090_1F
- D 0 - - - 0x018FBA 06:8FAA: 96 90     .word _off026_9096_20
- D 0 - - - 0x018FBC 06:8FAC: 9F 90     .word _off026_909F_21
- D 0 - - - 0x018FBE 06:8FAE: A7 90     .word _off026_90A7_22
- D 0 - - - 0x018FC0 06:8FB0: AD 90     .word _off026_90AD_23
- D 0 - - - 0x018FC2 06:8FB2: B2 90     .word _off026_90B2_24
- D 0 - - - 0x018FC4 06:8FB4: B8 90     .word _off026_90B8_25
- D 0 - - - 0x018FC6 06:8FB6: BF 90     .word _off026_90BF_26
- D 0 - - - 0x018FC8 06:8FB8: C6 90     .word _off026_90C6_27
- D 0 - - - 0x018FCA 06:8FBA: CC 90     .word _off026_90CC_28



tbl_8FBC:
- D 0 - - - 0x018FCC 06:8FBC: D3 90     .word _off027_90D3_00
- D 0 - - - 0x018FCE 06:8FBE: E2 90     .word _off027_90E2_01
- D 0 - - - 0x018FD0 06:8FC0: F1 90     .word _off027_90F1_02
- D 0 - - - 0x018FD2 06:8FC2: 00 91     .word _off027_9100_03
- D 0 - - - 0x018FD4 06:8FC4: 0F 91     .word _off027_910F_04
- - - - - - 0x018FD6 06:8FC6: 14 91     .word _off027_9114_05
- D 0 - - - 0x018FD8 06:8FC8: 15 91     .word _off027_9115_06
- - - - - - 0x018FDA 06:8FCA: 25 91     .word _off027_9125_07



_off026_8FCC_00:
- D 0 - I - 0x018FDC 06:8FCC: 14        .byte $14   ; 
- D 0 - I - 0x018FDD 06:8FCD: 25        .byte $25   ; 
- D 0 - I - 0x018FDE 06:8FCE: 34        .byte $34   ; 
- D 0 - I - 0x018FDF 06:8FCF: 30        .byte $30   ; 
- D 0 - I - 0x018FE0 06:8FD0: 11        .byte $11   ; 
- D 0 - I - 0x018FE1 06:8FD1: FF        .byte $FF   ; end token



_off026_8FD2_01:
- D 0 - I - 0x018FE2 06:8FD2: 16        .byte $16   ; 
- D 0 - I - 0x018FE3 06:8FD3: 25        .byte $25   ; 
- D 0 - I - 0x018FE4 06:8FD4: 34        .byte $34   ; 
- D 0 - I - 0x018FE5 06:8FD5: 30        .byte $30   ; 
- D 0 - I - 0x018FE6 06:8FD6: 11        .byte $11   ; 
- D 0 - I - 0x018FE7 06:8FD7: FF        .byte $FF   ; end token



_off026_8FD8_02:
- D 0 - I - 0x018FE8 06:8FD8: 15        .byte $15   ; 
- D 0 - I - 0x018FE9 06:8FD9: 16        .byte $16   ; 
- D 0 - I - 0x018FEA 06:8FDA: 15        .byte $15   ; 
- D 0 - I - 0x018FEB 06:8FDB: 14        .byte $14   ; 
- D 0 - I - 0x018FEC 06:8FDC: 13        .byte $13   ; 
- D 0 - I - 0x018FED 06:8FDD: FF        .byte $FF   ; end token



_off026_8FDE_03:
- D 0 - I - 0x018FEE 06:8FDE: 14        .byte $14   ; 
- D 0 - I - 0x018FEF 06:8FDF: 25        .byte $25   ; 
- D 0 - I - 0x018FF0 06:8FE0: 34        .byte $34   ; 
- D 0 - I - 0x018FF1 06:8FE1: 43        .byte $43   ; 
- D 0 - I - 0x018FF2 06:8FE2: 52        .byte $52   ; 
- D 0 - I - 0x018FF3 06:8FE3: FF        .byte $FF   ; end token



_off026_8FE4_04:
- D 0 - I - 0x018FF4 06:8FE4: 18        .byte $18   ; 
- D 0 - I - 0x018FF5 06:8FE5: 17        .byte $17   ; 
- D 0 - I - 0x018FF6 06:8FE6: 16        .byte $16   ; 
- D 0 - I - 0x018FF7 06:8FE7: 15        .byte $15   ; 
- D 0 - I - 0x018FF8 06:8FE8: 14        .byte $14   ; 
- D 0 - I - 0x018FF9 06:8FE9: 13        .byte $13   ; 
- D 0 - I - 0x018FFA 06:8FEA: FF        .byte $FF   ; end token



_off026_8FEB_05:
- D 0 - I - 0x018FFB 06:8FEB: 14        .byte $14   ; 
- D 0 - I - 0x018FFC 06:8FEC: 25        .byte $25   ; 
- D 0 - I - 0x018FFD 06:8FED: 36        .byte $36   ; 
- D 0 - I - 0x018FFE 06:8FEE: 35        .byte $35   ; 
- D 0 - I - 0x018FFF 06:8FEF: 34        .byte $34   ; 
- D 0 - I - 0x019000 06:8FF0: FF        .byte $FF   ; end token



_off026_8FF1_06:
- D 0 - I - 0x019001 06:8FF1: 17        .byte $17   ; 
- D 0 - I - 0x019002 06:8FF2: 28        .byte $28   ; 
- D 0 - I - 0x019003 06:8FF3: 37        .byte $37   ; 
- D 0 - I - 0x019004 06:8FF4: 30        .byte $30   ; 
- D 0 - I - 0x019005 06:8FF5: 12        .byte $12   ; 
- D 0 - I - 0x019006 06:8FF6: FF        .byte $FF   ; end token



_off026_8FF7_07:
- D 0 - I - 0x019007 06:8FF7: 17        .byte $17   ; 
- D 0 - I - 0x019008 06:8FF8: 16        .byte $16   ; 
- D 0 - I - 0x019009 06:8FF9: 15        .byte $15   ; 
- D 0 - I - 0x01900A 06:8FFA: 14        .byte $14   ; 
- D 0 - I - 0x01900B 06:8FFB: 13        .byte $13   ; 
- D 0 - I - 0x01900C 06:8FFC: FF        .byte $FF   ; end token



_off026_8FFD_08:
- D 0 - I - 0x01900D 06:8FFD: 14        .byte $14   ; 
- D 0 - I - 0x01900E 06:8FFE: 15        .byte $15   ; 
- D 0 - I - 0x01900F 06:8FFF: 16        .byte $16   ; 
- D 0 - I - 0x019010 06:9000: 15        .byte $15   ; 
- D 0 - I - 0x019011 06:9001: 14        .byte $14   ; 
- D 0 - I - 0x019012 06:9002: 13        .byte $13   ; 
- D 0 - I - 0x019013 06:9003: FF        .byte $FF   ; end token



_off026_9004_09:
- D 0 - I - 0x019014 06:9004: 16        .byte $16   ; 
- D 0 - I - 0x019015 06:9005: 25        .byte $25   ; 
- D 0 - I - 0x019016 06:9006: 34        .byte $34   ; 
- D 0 - I - 0x019017 06:9007: FF        .byte $FF   ; end token



_off026_9008_0A:
- D 0 - I - 0x019018 06:9008: 16        .byte $16   ; 
- D 0 - I - 0x019019 06:9009: 15        .byte $15   ; 
- D 0 - I - 0x01901A 06:900A: 34        .byte $34   ; 
- D 0 - I - 0x01901B 06:900B: 43        .byte $43   ; 
- D 0 - I - 0x01901C 06:900C: 52        .byte $52   ; 
- D 0 - I - 0x01901D 06:900D: FF        .byte $FF   ; end token



_off026_900E_0B:
- D 0 - I - 0x01901E 06:900E: 14        .byte $14   ; 
- D 0 - I - 0x01901F 06:900F: 14        .byte $14   ; 
- D 0 - I - 0x019020 06:9010: 34        .byte $34   ; 
- D 0 - I - 0x019021 06:9011: 43        .byte $43   ; 
- D 0 - I - 0x019022 06:9012: 52        .byte $52   ; 
- D 0 - I - 0x019023 06:9013: FF        .byte $FF   ; end token



_off026_9014_0C:
- D 0 - I - 0x019024 06:9014: 17        .byte $17   ; 
- D 0 - I - 0x019025 06:9015: 16        .byte $16   ; 
- D 0 - I - 0x019026 06:9016: 25        .byte $25   ; 
- D 0 - I - 0x019027 06:9017: 44        .byte $44   ; 
- D 0 - I - 0x019028 06:9018: 63        .byte $63   ; 
- D 0 - I - 0x019029 06:9019: FB        .byte $FB   ; FB
- D 0 - I - 0x01902A 06:901A: 53        .byte $53   ; 
- D 0 - I - 0x01902B 06:901B: 52        .byte $52   ; 
- D 0 - I - 0x01902C 06:901C: FE        .byte $FE   ; FE
- D 0 - I - 0x01902D 06:901D: FF        .byte $FF   ; end token



_off026_901E_0D:
- D 0 - I - 0x01902E 06:901E: 16        .byte $16   ; 
- D 0 - I - 0x01902F 06:901F: 15        .byte $15   ; 
- D 0 - I - 0x019030 06:9020: 34        .byte $34   ; 
- D 0 - I - 0x019031 06:9021: 43        .byte $43   ; 
- D 0 - I - 0x019032 06:9022: 52        .byte $52   ; 
- D 0 - I - 0x019033 06:9023: FF        .byte $FF   ; end token



_off026_9024_0E:
- D 0 - I - 0x019034 06:9024: 1A        .byte $1A   ; 
- D 0 - I - 0x019035 06:9025: 24        .byte $24   ; 
- D 0 - I - 0x019036 06:9026: 23        .byte $23   ; 
- D 0 - I - 0x019037 06:9027: 12        .byte $12   ; 
- D 0 - I - 0x019038 06:9028: 11        .byte $11   ; 
- D 0 - I - 0x019039 06:9029: FF        .byte $FF   ; end token



_off026_902A_0F:
- D 0 - I - 0x01903A 06:902A: 19        .byte $19   ; 
- D 0 - I - 0x01903B 06:902B: 25        .byte $25   ; 
- D 0 - I - 0x01903C 06:902C: 34        .byte $34   ; 
- D 0 - I - 0x01903D 06:902D: 43        .byte $43   ; 
- D 0 - I - 0x01903E 06:902E: FF        .byte $FF   ; end token



_off026_902F_10:
- D 0 - I - 0x01903F 06:902F: 1A        .byte $1A   ; 
- D 0 - I - 0x019040 06:9030: 16        .byte $16   ; 
- D 0 - I - 0x019041 06:9031: 15        .byte $15   ; 
- D 0 - I - 0x019042 06:9032: 44        .byte $44   ; 
- D 0 - I - 0x019043 06:9033: 30        .byte $30   ; 
- D 0 - I - 0x019044 06:9034: 11        .byte $11   ; 
- D 0 - I - 0x019045 06:9035: FF        .byte $FF   ; end token



_off026_9036_11:
- D 0 - I - 0x019046 06:9036: 1F        .byte $1F   ; 
- D 0 - I - 0x019047 06:9037: 17        .byte $17   ; 
- D 0 - I - 0x019048 06:9038: 26        .byte $26   ; 
- D 0 - I - 0x019049 06:9039: 35        .byte $35   ; 
- D 0 - I - 0x01904A 06:903A: 44        .byte $44   ; 
- D 0 - I - 0x01904B 06:903B: 53        .byte $53   ; 
- D 0 - I - 0x01904C 06:903C: FF        .byte $FF   ; end token



_off026_903D_12:
- D 0 - I - 0x01904D 06:903D: 16        .byte $16   ; 
- D 0 - I - 0x01904E 06:903E: 15        .byte $15   ; 
- D 0 - I - 0x01904F 06:903F: 24        .byte $24   ; 
- D 0 - I - 0x019050 06:9040: 33        .byte $33   ; 
- D 0 - I - 0x019051 06:9041: 43        .byte $43   ; 
- D 0 - I - 0x019052 06:9042: FF        .byte $FF   ; end token



_off026_9043_13:
- D 0 - I - 0x019053 06:9043: 17        .byte $17   ; 
- D 0 - I - 0x019054 06:9044: 15        .byte $15   ; 
- D 0 - I - 0x019055 06:9045: 14        .byte $14   ; 
- D 0 - I - 0x019056 06:9046: 43        .byte $43   ; 
- D 0 - I - 0x019057 06:9047: FF        .byte $FF   ; end token



_off026_9048_14:
- D 0 - I - 0x019058 06:9048: 1B        .byte $1B   ; 
- D 0 - I - 0x019059 06:9049: 16        .byte $16   ; 
- D 0 - I - 0x01905A 06:904A: 25        .byte $25   ; 
- D 0 - I - 0x01905B 06:904B: 34        .byte $34   ; 
- D 0 - I - 0x01905C 06:904C: 43        .byte $43   ; 
- D 0 - I - 0x01905D 06:904D: FF        .byte $FF   ; end token



_off026_904E_15:
- D 0 - I - 0x01905E 06:904E: 1F        .byte $1F   ; 
- D 0 - I - 0x01905F 06:904F: 18        .byte $18   ; 
- D 0 - I - 0x019060 06:9050: 27        .byte $27   ; 
- D 0 - I - 0x019061 06:9051: 36        .byte $36   ; 
- D 0 - I - 0x019062 06:9052: 45        .byte $45   ; 
- - - - - - 0x019063 06:9053: 54        .byte $54   ; 
- - - - - - 0x019064 06:9054: FF        .byte $FF   ; end token



_off026_9055_16:
- D 0 - I - 0x019065 06:9055: 19        .byte $19   ; 
- D 0 - I - 0x019066 06:9056: 16        .byte $16   ; 
- D 0 - I - 0x019067 06:9057: 25        .byte $25   ; 
- D 0 - I - 0x019068 06:9058: 34        .byte $34   ; 
- D 0 - I - 0x019069 06:9059: 43        .byte $43   ; 
- D 0 - I - 0x01906A 06:905A: FF        .byte $FF   ; end token



_off026_905B_17:
- D 0 - I - 0x01906B 06:905B: 1B        .byte $1B   ; 
- D 0 - I - 0x01906C 06:905C: 17        .byte $17   ; 
- D 0 - I - 0x01906D 06:905D: 26        .byte $26   ; 
- D 0 - I - 0x01906E 06:905E: 35        .byte $35   ; 
- D 0 - I - 0x01906F 06:905F: 44        .byte $44   ; 
- - - - - - 0x019070 06:9060: 53        .byte $53   ; 
- - - - - - 0x019071 06:9061: FF        .byte $FF   ; end token



_off026_9062_18:
- D 0 - I - 0x019072 06:9062: 16        .byte $16   ; 
- D 0 - I - 0x019073 06:9063: 16        .byte $16   ; 
- D 0 - I - 0x019074 06:9064: 15        .byte $15   ; 
- D 0 - I - 0x019075 06:9065: 14        .byte $14   ; 
- D 0 - I - 0x019076 06:9066: 13        .byte $13   ; 
- D 0 - I - 0x019077 06:9067: FF        .byte $FF   ; end token



_off026_9068_19:
- D 0 - I - 0x019078 06:9068: 1F        .byte $1F   ; 
- D 0 - I - 0x019079 06:9069: 19        .byte $19   ; 
- D 0 - I - 0x01907A 06:906A: 28        .byte $28   ; 
- D 0 - I - 0x01907B 06:906B: 37        .byte $37   ; 
- D 0 - I - 0x01907C 06:906C: 46        .byte $46   ; 
- - - - - - 0x01907D 06:906D: 55        .byte $55   ; 
- - - - - - 0x01907E 06:906E: 64        .byte $64   ; 
- - - - - - 0x01907F 06:906F: 73        .byte $73   ; 
- - - - - - 0x019080 06:9070: FF        .byte $FF   ; end token



_off026_9071_1A:
- D 0 - I - 0x019081 06:9071: 18        .byte $18   ; 
- D 0 - I - 0x019082 06:9072: 35        .byte $35   ; 
- D 0 - I - 0x019083 06:9073: 24        .byte $24   ; 
- D 0 - I - 0x019084 06:9074: 13        .byte $13   ; 
- D 0 - I - 0x019085 06:9075: FF        .byte $FF   ; end token



_off026_9076_1B:
- D 0 - I - 0x019086 06:9076: 17        .byte $17   ; 
- D 0 - I - 0x019087 06:9077: 16        .byte $16   ; 
- D 0 - I - 0x019088 06:9078: 35        .byte $35   ; 
- D 0 - I - 0x019089 06:9079: 34        .byte $34   ; 
- D 0 - I - 0x01908A 06:907A: 33        .byte $33   ; 
- D 0 - I - 0x01908B 06:907B: 12        .byte $12   ; 
- D 0 - I - 0x01908C 06:907C: FF        .byte $FF   ; end token



_off026_907D_1C:
- D 0 - I - 0x01908D 06:907D: 15        .byte $15   ; 
- D 0 - I - 0x01908E 06:907E: 16        .byte $16   ; 
- D 0 - I - 0x01908F 06:907F: 15        .byte $15   ; 
- D 0 - I - 0x019090 06:9080: 14        .byte $14   ; 
- D 0 - I - 0x019091 06:9081: 13        .byte $13   ; 
- D 0 - I - 0x019092 06:9082: FF        .byte $FF   ; end token



_off026_9083_1D:
- D 0 - I - 0x019093 06:9083: 1B        .byte $1B   ; 
- D 0 - I - 0x019094 06:9084: 17        .byte $17   ; 
- D 0 - I - 0x019095 06:9085: 26        .byte $26   ; 
- D 0 - I - 0x019096 06:9086: 35        .byte $35   ; 
- D 0 - I - 0x019097 06:9087: 44        .byte $44   ; 
- D 0 - I - 0x019098 06:9088: 53        .byte $53   ; 
- D 0 - I - 0x019099 06:9089: FF        .byte $FF   ; end token



_off026_908A_1E:
- D 0 - I - 0x01909A 06:908A: 1A        .byte $1A   ; 
- D 0 - I - 0x01909B 06:908B: 18        .byte $18   ; 
- D 0 - I - 0x01909C 06:908C: 17        .byte $17   ; 
- D 0 - I - 0x01909D 06:908D: 16        .byte $16   ; 
- D 0 - I - 0x01909E 06:908E: 15        .byte $15   ; 
- D 0 - I - 0x01909F 06:908F: FF        .byte $FF   ; end token



_off026_9090_1F:
- D 0 - I - 0x0190A0 06:9090: 18        .byte $18   ; 
- D 0 - I - 0x0190A1 06:9091: 16        .byte $16   ; 
- D 0 - I - 0x0190A2 06:9092: 25        .byte $25   ; 
- D 0 - I - 0x0190A3 06:9093: 34        .byte $34   ; 
- - - - - - 0x0190A4 06:9094: 43        .byte $43   ; 
- - - - - - 0x0190A5 06:9095: FF        .byte $FF   ; end token



_off026_9096_20:
- D 0 - I - 0x0190A6 06:9096: 1F        .byte $1F   ; 
- D 0 - I - 0x0190A7 06:9097: 17        .byte $17   ; 
- D 0 - I - 0x0190A8 06:9098: 26        .byte $26   ; 
- D 0 - I - 0x0190A9 06:9099: 35        .byte $35   ; 
- D 0 - I - 0x0190AA 06:909A: 44        .byte $44   ; 
- D 0 - I - 0x0190AB 06:909B: 33        .byte $33   ; 
- D 0 - I - 0x0190AC 06:909C: 20        .byte $20   ; 
- D 0 - I - 0x0190AD 06:909D: 12        .byte $12   ; 
- D 0 - I - 0x0190AE 06:909E: FF        .byte $FF   ; end token



_off026_909F_21:
- D 0 - I - 0x0190AF 06:909F: 1B        .byte $1B   ; 
- D 0 - I - 0x0190B0 06:90A0: 18        .byte $18   ; 
- D 0 - I - 0x0190B1 06:90A1: 26        .byte $26   ; 
- D 0 - I - 0x0190B2 06:90A2: 35        .byte $35   ; 
- D 0 - I - 0x0190B3 06:90A3: 44        .byte $44   ; 
- D 0 - I - 0x0190B4 06:90A4: 53        .byte $53   ; 
- - - - - - 0x0190B5 06:90A5: 62        .byte $62   ; 
- - - - - - 0x0190B6 06:90A6: FF        .byte $FF   ; end token



_off026_90A7_22:
- D 0 - I - 0x0190B7 06:90A7: 16        .byte $16   ; 
- D 0 - I - 0x0190B8 06:90A8: 15        .byte $15   ; 
- D 0 - I - 0x0190B9 06:90A9: 24        .byte $24   ; 
- D 0 - I - 0x0190BA 06:90AA: 33        .byte $33   ; 
- D 0 - I - 0x0190BB 06:90AB: 42        .byte $42   ; 
- D 0 - I - 0x0190BC 06:90AC: FF        .byte $FF   ; end token



_off026_90AD_23:
- D 0 - I - 0x0190BD 06:90AD: 14        .byte $14   ; 
- D 0 - I - 0x0190BE 06:90AE: 25        .byte $25   ; 
- D 0 - I - 0x0190BF 06:90AF: 34        .byte $34   ; 
- D 0 - I - 0x0190C0 06:90B0: 43        .byte $43   ; 
- D 0 - I - 0x0190C1 06:90B1: FF        .byte $FF   ; end token



_off026_90B2_24:
- D 0 - I - 0x0190C2 06:90B2: 15        .byte $15   ; 
- D 0 - I - 0x0190C3 06:90B3: 27        .byte $27   ; 
- D 0 - I - 0x0190C4 06:90B4: 16        .byte $16   ; 
- D 0 - I - 0x0190C5 06:90B5: 15        .byte $15   ; 
- D 0 - I - 0x0190C6 06:90B6: 14        .byte $14   ; 
- D 0 - I - 0x0190C7 06:90B7: FF        .byte $FF   ; end token



_off026_90B8_25:
- D 0 - I - 0x0190C8 06:90B8: 1D        .byte $1D   ; 
- D 0 - I - 0x0190C9 06:90B9: 29        .byte $29   ; 
- D 0 - I - 0x0190CA 06:90BA: 28        .byte $28   ; 
- D 0 - I - 0x0190CB 06:90BB: 37        .byte $37   ; 
- - - - - - 0x0190CC 06:90BC: 46        .byte $46   ; 
- - - - - - 0x0190CD 06:90BD: 55        .byte $55   ; 
- - - - - - 0x0190CE 06:90BE: FF        .byte $FF   ; end token



_off026_90BF_26:
- D 0 - I - 0x0190CF 06:90BF: 1C        .byte $1C   ; 
- D 0 - I - 0x0190D0 06:90C0: 18        .byte $18   ; 
- D 0 - I - 0x0190D1 06:90C1: 17        .byte $17   ; 
- D 0 - I - 0x0190D2 06:90C2: 16        .byte $16   ; 
- D 0 - I - 0x0190D3 06:90C3: 15        .byte $15   ; 
- D 0 - I - 0x0190D4 06:90C4: 14        .byte $14   ; 
- D 0 - I - 0x0190D5 06:90C5: FF        .byte $FF   ; end token



_off026_90C6_27:
- D 0 - I - 0x0190D6 06:90C6: 14        .byte $14   ; 
- D 0 - I - 0x0190D7 06:90C7: 16        .byte $16   ; 
- D 0 - I - 0x0190D8 06:90C8: 15        .byte $15   ; 
- D 0 - I - 0x0190D9 06:90C9: 14        .byte $14   ; 
- D 0 - I - 0x0190DA 06:90CA: 13        .byte $13   ; 
- D 0 - I - 0x0190DB 06:90CB: FF        .byte $FF   ; end token



_off026_90CC_28:
- D 0 - I - 0x0190DC 06:90CC: 14        .byte $14   ; 
- D 0 - I - 0x0190DD 06:90CD: 14        .byte $14   ; 
- D 0 - I - 0x0190DE 06:90CE: 35        .byte $35   ; 
- D 0 - I - 0x0190DF 06:90CF: 44        .byte $44   ; 
- D 0 - I - 0x0190E0 06:90D0: 53        .byte $53   ; 
- D 0 - I - 0x0190E1 06:90D1: 42        .byte $42   ; 
- D 0 - I - 0x0190E2 06:90D2: FF        .byte $FF   ; end token



_off027_90D3_00:
- D 0 - I - 0x0190E3 06:90D3: FB        .byte $FB   ; FB
- D 0 - I - 0x0190E4 06:90D4: 11        .byte $11   ; 
- D 0 - I - 0x0190E5 06:90D5: 12        .byte $12   ; 
- D 0 - I - 0x0190E6 06:90D6: 13        .byte $13   ; 
- D 0 - I - 0x0190E7 06:90D7: 12        .byte $12   ; 
- D 0 - I - 0x0190E8 06:90D8: 11        .byte $11   ; 
- D 0 - I - 0x0190E9 06:90D9: 10        .byte $10   ; 
- D 0 - I - 0x0190EA 06:90DA: 1F        .byte $1F   ; 
- D 0 - I - 0x0190EB 06:90DB: 1E        .byte $1E   ; 
- D 0 - I - 0x0190EC 06:90DC: 1D        .byte $1D   ; 
- D 0 - I - 0x0190ED 06:90DD: 1E        .byte $1E   ; 
- D 0 - I - 0x0190EE 06:90DE: 1F        .byte $1F   ; 
- D 0 - I - 0x0190EF 06:90DF: 10        .byte $10   ; 
- D 0 - I - 0x0190F0 06:90E0: FE        .byte $FE, $FF   ; FE



_off027_90E2_01:
- D 0 - I - 0x0190F2 06:90E2: FB        .byte $FB   ; FB
- D 0 - I - 0x0190F3 06:90E3: 11        .byte $11   ; 
- D 0 - I - 0x0190F4 06:90E4: 12        .byte $12   ; 
- D 0 - I - 0x0190F5 06:90E5: 23        .byte $23   ; 
- D 0 - I - 0x0190F6 06:90E6: 12        .byte $12   ; 
- D 0 - I - 0x0190F7 06:90E7: 11        .byte $11   ; 
- D 0 - I - 0x0190F8 06:90E8: 20        .byte $20   ; 
- D 0 - I - 0x0190F9 06:90E9: 1F        .byte $1F   ; 
- D 0 - I - 0x0190FA 06:90EA: 1E        .byte $1E   ; 
- D 0 - I - 0x0190FB 06:90EB: 2D        .byte $2D   ; 
- D 0 - I - 0x0190FC 06:90EC: 1E        .byte $1E   ; 
- D 0 - I - 0x0190FD 06:90ED: 1F        .byte $1F   ; 
- D 0 - I - 0x0190FE 06:90EE: 10        .byte $10   ; 
- D 0 - I - 0x0190FF 06:90EF: FE        .byte $FE, $FF   ; FE



_off027_90F1_02:
- D 0 - I - 0x019101 06:90F1: FB        .byte $FB   ; FB
- D 0 - I - 0x019102 06:90F2: 11        .byte $11   ; 
- D 0 - I - 0x019103 06:90F3: 12        .byte $12   ; 
- D 0 - I - 0x019104 06:90F4: 13        .byte $13   ; 
- D 0 - I - 0x019105 06:90F5: 12        .byte $12   ; 
- D 0 - I - 0x019106 06:90F6: 11        .byte $11   ; 
- D 0 - I - 0x019107 06:90F7: 10        .byte $10   ; 
- D 0 - I - 0x019108 06:90F8: 1F        .byte $1F   ; 
- D 0 - I - 0x019109 06:90F9: 1E        .byte $1E   ; 
- D 0 - I - 0x01910A 06:90FA: 2D        .byte $2D   ; 
- D 0 - I - 0x01910B 06:90FB: 1E        .byte $1E   ; 
- D 0 - I - 0x01910C 06:90FC: 1F        .byte $1F   ; 
- D 0 - I - 0x01910D 06:90FD: 10        .byte $10   ; 
- D 0 - I - 0x01910E 06:90FE: FE        .byte $FE, $FF   ; FE



_off027_9100_03:
- D 0 - I - 0x019110 06:9100: FB        .byte $FB   ; FB
- D 0 - I - 0x019111 06:9101: 11        .byte $11   ; 
- D 0 - I - 0x019112 06:9102: 12        .byte $12   ; 
- D 0 - I - 0x019113 06:9103: 13        .byte $13   ; 
- D 0 - I - 0x019114 06:9104: 12        .byte $12   ; 
- D 0 - I - 0x019115 06:9105: 11        .byte $11   ; 
- D 0 - I - 0x019116 06:9106: 20        .byte $20   ; 
- D 0 - I - 0x019117 06:9107: 1F        .byte $1F   ; 
- D 0 - I - 0x019118 06:9108: 1E        .byte $1E   ; 
- D 0 - I - 0x019119 06:9109: 1D        .byte $1D   ; 
- D 0 - I - 0x01911A 06:910A: 1E        .byte $1E   ; 
- D 0 - I - 0x01911B 06:910B: 1F        .byte $1F   ; 
- D 0 - I - 0x01911C 06:910C: 20        .byte $20   ; 
- D 0 - I - 0x01911D 06:910D: FE        .byte $FE, $FF   ; FE



_off027_910F_04:
- D 0 - I - 0x01911F 06:910F: FB        .byte $FB   ; FB
- D 0 - I - 0x019120 06:9110: 10        .byte $10   ; 
- D 0 - I - 0x019121 06:9111: 17        .byte $17   ; 
- D 0 - I - 0x019122 06:9112: FE        .byte $FE, $FF   ; FE



_off027_9114_05:
- - - - - - 0x019124 06:9114: FF        .byte $FF   ; FF



_off027_9115_06:
- D 0 - I - 0x019125 06:9115: 50        .byte $50   ; 
- D 0 - I - 0x019126 06:9116: FB        .byte $FB   ; FB
- D 0 - I - 0x019127 06:9117: 11        .byte $11   ; 
- D 0 - I - 0x019128 06:9118: 12        .byte $12   ; 
- D 0 - I - 0x019129 06:9119: 13        .byte $13   ; 
- D 0 - I - 0x01912A 06:911A: 12        .byte $12   ; 
- D 0 - I - 0x01912B 06:911B: 11        .byte $11   ; 
- D 0 - I - 0x01912C 06:911C: 10        .byte $10   ; 
- D 0 - I - 0x01912D 06:911D: 1F        .byte $1F   ; 
- D 0 - I - 0x01912E 06:911E: 1E        .byte $1E   ; 
- D 0 - I - 0x01912F 06:911F: 1D        .byte $1D   ; 
- D 0 - I - 0x019130 06:9120: 1E        .byte $1E   ; 
- D 0 - I - 0x019131 06:9121: 1F        .byte $1F   ; 
- D 0 - I - 0x019132 06:9122: 10        .byte $10   ; 
- D 0 - I - 0x019133 06:9123: FE        .byte $FE, $FF   ; FE



_off027_9125_07:
- - - - - - 0x019135 06:9125: FB        .byte $FB   ; FB
- - - - - - 0x019136 06:9126: 11        .byte $11   ; 
- - - - - - 0x019137 06:9127: 12        .byte $12   ; 
- - - - - - 0x019138 06:9128: 14        .byte $14   ; 
- - - - - - 0x019139 06:9129: 12        .byte $12   ; 
- - - - - - 0x01913A 06:912A: 11        .byte $11   ; 
- - - - - - 0x01913B 06:912B: 10        .byte $10   ; 
- - - - - - 0x01913C 06:912C: 1F        .byte $1F   ; 
- - - - - - 0x01913D 06:912D: 1E        .byte $1E   ; 
- - - - - - 0x01913E 06:912E: 2D        .byte $2D   ; 
- - - - - - 0x01913F 06:912F: 1E        .byte $1E   ; 
- - - - - - 0x019140 06:9130: 1F        .byte $1F   ; 
- - - - - - 0x019141 06:9131: 10        .byte $10   ; 
- - - - - - 0x019142 06:9132: FE        .byte $FE, $FF   ; FE



tbl_9134:
; 00 
- - - - - - 0x019144 06:9134: 0F        .byte $0F   ; 4010
- - - - - - 0x019145 06:9135: 00        .byte $00   ; 4011
- - - - - - 0x019146 06:9136: 05        .byte $05   ; 4012
- - - - - - 0x019147 06:9137: 20        .byte $20   ; 4013
; 01 
- - - - - - 0x019148 06:9138: 0C        .byte $0C   ; 4010
- - - - - - 0x019149 06:9139: 00        .byte $00   ; 4011
- - - - - - 0x01914A 06:913A: 00        .byte $00   ; 4012
- - - - - - 0x01914B 06:913B: 14        .byte $14   ; 4013
_off014_37_913C_06: ; bzk garbage label
; 02 
- D 0 - - - 0x01914C 06:913C: 0D        .byte $0D   ; 4010
- D 0 - - - 0x01914D 06:913D: 00        .byte $00   ; 4011
- D 0 - - - 0x01914E 06:913E: 00        .byte $00   ; 4012
- D 0 - - - 0x01914F 06:913F: 14        .byte $14   ; 4013
_off014_38_9140_06: ; bzk garbage label
; 03 
- D 0 - - - 0x019150 06:9140: 0E        .byte $0E   ; 4010
- D 0 - - - 0x019151 06:9141: 00        .byte $00   ; 4011
- D 0 - - - 0x019152 06:9142: 00        .byte $00   ; 4012
- D 0 - - - 0x019153 06:9143: 14        .byte $14   ; 4013
_off014_39_9144_06: ; bzk garbage label
; 04 
- D 0 - - - 0x019154 06:9144: 0F        .byte $0F   ; 4010
- D 0 - - - 0x019155 06:9145: 00        .byte $00   ; 4011
- D 0 - - - 0x019156 06:9146: 00        .byte $00   ; 4012
- D 0 - - - 0x019157 06:9147: 14        .byte $14   ; 4013
_off014_3A_9148_06: ; bzk garbage label
; 05 
- D 0 - - - 0x019158 06:9148: 0F        .byte $0F   ; 4010
- D 0 - - - 0x019159 06:9149: 00        .byte $00   ; 4011
- D 0 - - - 0x01915A 06:914A: 05        .byte $05   ; 4012
- D 0 - - - 0x01915B 06:914B: 20        .byte $20   ; 4013
_off014_3B_914C_06: ; bzk garbage label
; 06 
- D 0 - - - 0x01915C 06:914C: 09        .byte $09   ; 4010
- D 0 - - - 0x01915D 06:914D: 00        .byte $00   ; 4011
- D 0 - - - 0x01915E 06:914E: 0D        .byte $0D   ; 4012
- D 0 - - - 0x01915F 06:914F: 01        .byte $01   ; 4013
; 07 
- - - - - - 0x019160 06:9150: 0D        .byte $0D   ; 4010
- - - - - - 0x019161 06:9151: 00        .byte $00   ; 4011
- - - - - - 0x019162 06:9152: 0E        .byte $0E   ; 4012
- - - - - - 0x019163 06:9153: 2C        .byte $2C   ; 4013
; 08 
- - - - - - 0x019164 06:9154: 0D        .byte $0D   ; 4010
- - - - - - 0x019165 06:9155: 00        .byte $00   ; 4011
- - - - - - 0x019166 06:9156: 0E        .byte $0E   ; 4012
- - - - - - 0x019167 06:9157: 2C        .byte $2C   ; 4013
; 09 
- - - - - - 0x019168 06:9158: 0D        .byte $0D   ; 4010
- - - - - - 0x019169 06:9159: 00        .byte $00   ; 4011
- - - - - - 0x01916A 06:915A: 0E        .byte $0E   ; 4012
- - - - - - 0x01916B 06:915B: 2C        .byte $2C   ; 4013
; 0A 
- - - - - - 0x01916C 06:915C: 0D        .byte $0D   ; 4010
- - - - - - 0x01916D 06:915D: 00        .byte $00   ; 4011
- - - - - - 0x01916E 06:915E: 0E        .byte $0E   ; 4012
- - - - - - 0x01916F 06:915F: 2C        .byte $2C   ; 4013
; 0B 
- - - - - - 0x019170 06:9160: 0D        .byte $0D   ; 4010
- - - - - - 0x019171 06:9161: 00        .byte $00   ; 4011
- - - - - - 0x019172 06:9162: 0E        .byte $0E   ; 4012
- - - - - - 0x019173 06:9163: 2C        .byte $2C   ; 4013
; 0C 
- - - - - - 0x019174 06:9164: 0D        .byte $0D   ; 4010
- - - - - - 0x019175 06:9165: 00        .byte $00   ; 4011
- - - - - - 0x019176 06:9166: 0E        .byte $0E   ; 4012
- - - - - - 0x019177 06:9167: 2C        .byte $2C   ; 4013
; 0D 
- - - - - - 0x019178 06:9168: 0D        .byte $0D   ; 4010
- - - - - - 0x019179 06:9169: 00        .byte $00   ; 4011
- - - - - - 0x01917A 06:916A: 0E        .byte $0E   ; 4012
- - - - - - 0x01917B 06:916B: 2C        .byte $2C   ; 4013
; 0E 
- - - - - - 0x01917C 06:916C: 0D        .byte $0D   ; 4010
- - - - - - 0x01917D 06:916D: 00        .byte $00   ; 4011
- - - - - - 0x01917E 06:916E: 0E        .byte $0E   ; 4012
- - - - - - 0x01917F 06:916F: 2C        .byte $2C   ; 4013
; 0F 
- - - - - - 0x019180 06:9170: 0D        .byte $0D   ; 4010
- - - - - - 0x019181 06:9171: 00        .byte $00   ; 4011
- - - - - - 0x019182 06:9172: 0E        .byte $0E   ; 4012
- - - - - - 0x019183 06:9173: 2C        .byte $2C   ; 4013
; 10 
- - - - - - 0x019184 06:9174: 0D        .byte $0D   ; 4010
- - - - - - 0x019185 06:9175: 00        .byte $00   ; 4011
- - - - - - 0x019186 06:9176: 0E        .byte $0E   ; 4012
- - - - - - 0x019187 06:9177: 2C        .byte $2C   ; 4013
; 11 
- D 0 - - - 0x019188 06:9178: 0D        .byte $0D   ; 4010
- D 0 - - - 0x019189 06:9179: 00        .byte $00   ; 4011
- D 0 - - - 0x01918A 06:917A: 0E        .byte $0E   ; 4012
- D 0 - - - 0x01918B 06:917B: 2C        .byte $2C   ; 4013
; 12 
- D 0 - - - 0x01918C 06:917C: 0D        .byte $0D   ; 4010
- D 0 - - - 0x01918D 06:917D: 00        .byte $00   ; 4011
- D 0 - - - 0x01918E 06:917E: 19        .byte $19   ; 4012
- D 0 - - - 0x01918F 06:917F: 2C        .byte $2C   ; 4013
; 13 
- D 0 - - - 0x019190 06:9180: 0D        .byte $0D   ; 4010
- D 0 - - - 0x019191 06:9181: 00        .byte $00   ; 4011
- D 0 - - - 0x019192 06:9182: 24        .byte $24   ; 4012
- D 0 - - - 0x019193 06:9183: 2C        .byte $2C   ; 4013
; 14 
- D 0 - - - 0x019194 06:9184: 0D        .byte $0D   ; 4010
- D 0 - - - 0x019195 06:9185: 00        .byte $00   ; 4011
- D 0 - - - 0x019196 06:9186: 2F        .byte $2F   ; 4012
- D 0 - - - 0x019197 06:9187: 2C        .byte $2C   ; 4013
; 15 
- D 0 - - - 0x019198 06:9188: 0D        .byte $0D   ; 4010
- D 0 - - - 0x019199 06:9189: 00        .byte $00   ; 4011
- D 0 - - - 0x01919A 06:918A: 3A        .byte $3A   ; 4012
- D 0 - - - 0x01919B 06:918B: 2C        .byte $2C   ; 4013
; 16 
- D 0 - - - 0x01919C 06:918C: 0D        .byte $0D   ; 4010
- D 0 - - - 0x01919D 06:918D: 00        .byte $00   ; 4011
- D 0 - - - 0x01919E 06:918E: 3A        .byte $3A   ; 4012
- D 0 - - - 0x01919F 06:918F: 2C        .byte $2C   ; 4013
; 17 
- D 0 - - - 0x0191A0 06:9190: 0D        .byte $0D   ; 4010
- D 0 - - - 0x0191A1 06:9191: 00        .byte $00   ; 4011
- D 0 - - - 0x0191A2 06:9192: 45        .byte $45   ; 4012
- D 0 - - - 0x0191A3 06:9193: 2C        .byte $2C   ; 4013
; 18 
- D 0 - - - 0x0191A4 06:9194: 0D        .byte $0D   ; 4010
- D 0 - - - 0x0191A5 06:9195: 00        .byte $00   ; 4011
- D 0 - - - 0x0191A6 06:9196: 50        .byte $50   ; 4012
- D 0 - - - 0x0191A7 06:9197: 2C        .byte $2C   ; 4013
; 19 
- D 0 - - - 0x0191A8 06:9198: 0D        .byte $0D   ; 4010
- D 0 - - - 0x0191A9 06:9199: 00        .byte $00   ; 4011
- D 0 - - - 0x0191AA 06:919A: 5B        .byte $5B   ; 4012
- D 0 - - - 0x0191AB 06:919B: 2C        .byte $2C   ; 4013
; 1A 
- D 0 - - - 0x0191AC 06:919C: 0D        .byte $0D   ; 4010
- D 0 - - - 0x0191AD 06:919D: 00        .byte $00   ; 4011
- D 0 - - - 0x0191AE 06:919E: 66        .byte $66   ; 4012
- D 0 - - - 0x0191AF 06:919F: 2C        .byte $2C   ; 4013
; 1B 
- D 0 - - - 0x0191B0 06:91A0: 0D        .byte $0D   ; 4010
- D 0 - - - 0x0191B1 06:91A1: 00        .byte $00   ; 4011
- D 0 - - - 0x0191B2 06:91A2: 71        .byte $71   ; 4012
- D 0 - - - 0x0191B3 06:91A3: 2C        .byte $2C   ; 4013



_off014_01_91A4_05:
_off014_02_91A4_05:
- D 0 - I - 0x0191B4 06:91A4: 01        .byte $01   ; 
- D 0 - I - 0x0191B5 06:91A5: 45        .byte $45   ; 
- D 0 - I - 0x0191B6 06:91A6: 24        .byte $24   ; 
- D 0 - I - 0x0191B7 06:91A7: 21        .byte $21   ; 
- D 0 - I - 0x0191B8 06:91A8: 11        .byte $11   ; 
- D 0 - I - 0x0191B9 06:91A9: FF        .byte $FF   ; 



_off014_03_91AA_05:
- D 0 - I - 0x0191BA 06:91AA: 01        .byte $01   ; 
- D 0 - I - 0x0191BB 06:91AB: A2        .byte $A2   ; 
- D 0 - I - 0x0191BC 06:91AC: A1        .byte $A1   ; 
- D 0 - I - 0x0191BD 06:91AD: 71        .byte $71   ; 
- D 0 - I - 0x0191BE 06:91AE: 61        .byte $61   ; 
- D 0 - I - 0x0191BF 06:91AF: 51        .byte $51   ; 
- D 0 - I - 0x0191C0 06:91B0: 50        .byte $50   ; 
- D 0 - I - 0x0191C1 06:91B1: 51        .byte $51   ; 
- D 0 - I - 0x0191C2 06:91B2: 50        .byte $50   ; 
- D 0 - I - 0x0191C3 06:91B3: 51        .byte $51   ; 
- D 0 - I - 0x0191C4 06:91B4: 50        .byte $50   ; 
- D 0 - I - 0x0191C5 06:91B5: 41        .byte $41   ; 
- D 0 - I - 0x0191C6 06:91B6: FF        .byte $FF   ; 



_off014_04_91B7_05:
_off014_05_91B7_05:
- D 0 - I - 0x0191C7 06:91B7: 01        .byte $01   ; 
- D 0 - I - 0x0191C8 06:91B8: EE        .byte $EE   ; 
- D 0 - I - 0x0191C9 06:91B9: 86        .byte $86   ; 
- D 0 - I - 0x0191CA 06:91BA: 34        .byte $34   ; 
- D 0 - I - 0x0191CB 06:91BB: 33        .byte $33   ; 
- D 0 - I - 0x0191CC 06:91BC: 24        .byte $24   ; 
- D 0 - I - 0x0191CD 06:91BD: 13        .byte $13   ; 
- D 0 - I - 0x0191CE 06:91BE: 12        .byte $12   ; 
- D 0 - I - 0x0191CF 06:91BF: 12        .byte $12   ; 
- D 0 - I - 0x0191D0 06:91C0: FF        .byte $FF   ; 



_off014_06_91C1_04:
- D 0 - I - 0x0191D1 06:91C1: 01        .byte $01   ; 
- D 0 - I - 0x0191D2 06:91C2: 30        .byte $30   ; 
- D 0 - I - 0x0191D3 06:91C3: 88        .byte $88   ; 
- D 0 - I - 0x0191D4 06:91C4: 40        .byte $40   ; 
- D 0 - I - 0x0191D5 06:91C5: F0        .byte $F0   ; 
- D 0 - I - 0x0191D6 06:91C6: 00        .byte $00   ; 
- D 0 - I - 0x0191D7 06:91C7: 00        .byte $00   ; 
- D 0 - I - 0x0191D8 06:91C8: 00        .byte $00   ; 
- D 0 - I - 0x0191D9 06:91C9: 00        .byte $00   ; 
- D 0 - I - 0x0191DA 06:91CA: 01        .byte $01   ; 
- D 0 - I - 0x0191DB 06:91CB: F0        .byte $F0   ; 
- D 0 - I - 0x0191DC 06:91CC: 88        .byte $88   ; 
- D 0 - I - 0x0191DD 06:91CD: 20        .byte $20   ; 
- D 0 - I - 0x0191DE 06:91CE: 0A        .byte $0A   ; 
- D 0 - I - 0x0191DF 06:91CF: 10        .byte $10   ; 
- D 0 - I - 0x0191E0 06:91D0: 0B        .byte $0B   ; 
- D 0 - I - 0x0191E1 06:91D1: FF        .byte $FF   ; 



_off014_06_91D2_05:
_off014_07_91D2_05:
- D 0 - I - 0x0191E2 06:91D2: 01        .byte $01   ; 
- D 0 - I - 0x0191E3 06:91D3: AC        .byte $AC   ; 
- D 0 - I - 0x0191E4 06:91D4: 00        .byte $00   ; 
- D 0 - I - 0x0191E5 06:91D5: 03        .byte $03   ; 
- D 0 - I - 0x0191E6 06:91D6: 32        .byte $32   ; 



_off014_07_91D7_04:
- D 0 - I - 0x0191E7 06:91D7: FF        .byte $FF   ; 



_off014_09_91D8_04:
- D 0 - I - 0x0191E8 06:91D8: 01        .byte $01   ; 
- D 0 - I - 0x0191E9 06:91D9: 70        .byte $70   ; 
- D 0 - I - 0x0191EA 06:91DA: A2        .byte $A2   ; 
- D 0 - I - 0x0191EB 06:91DB: F3        .byte $F3   ; 
- D 0 - I - 0x0191EC 06:91DC: BA        .byte $BA   ; 
- D 0 - I - 0x0191ED 06:91DD: 83        .byte $83   ; 
- D 0 - I - 0x0191EE 06:91DE: 97        .byte $97   ; 
- D 0 - I - 0x0191EF 06:91DF: 53        .byte $53   ; 
- D 0 - I - 0x0191F0 06:91E0: 37        .byte $37   ; 
- D 0 - I - 0x0191F1 06:91E1: 23        .byte $23   ; 
- D 0 - I - 0x0191F2 06:91E2: 17        .byte $17   ; 
- - - - - - 0x0191F3 06:91E3: FF        .byte $FF   ; 



_off014_09_91E4_05:
- D 0 - I - 0x0191F4 06:91E4: 02        .byte $02   ; 
- D 0 - I - 0x0191F5 06:91E5: 8E        .byte $8E   ; 
- D 0 - I - 0x0191F6 06:91E6: 7E        .byte $7E   ; 
- - - - - - 0x0191F7 06:91E7: FF        .byte $FF   ; 



_off014_0B_91E8_04:
- D 0 - I - 0x0191F8 06:91E8: 05        .byte $05   ; 
- D 0 - I - 0x0191F9 06:91E9: 70        .byte $70   ; 
- D 0 - I - 0x0191FA 06:91EA: 83        .byte $83   ; 
- D 0 - I - 0x0191FB 06:91EB: D2        .byte $D2   ; 
- D 0 - I - 0x0191FC 06:91EC: 86        .byte $86   ; 
- D 0 - I - 0x0191FD 06:91ED: B0        .byte $B0   ; 
- D 0 - I - 0x0191FE 06:91EE: C0        .byte $C0   ; 
- D 0 - I - 0x0191FF 06:91EF: 01        .byte $01   ; 
- D 0 - I - 0x019200 06:91F0: F0        .byte $F0   ; 
- D 0 - I - 0x019201 06:91F1: 83        .byte $83   ; 
- D 0 - I - 0x019202 06:91F2: A0        .byte $A0   ; 
- D 0 - I - 0x019203 06:91F3: 09        .byte $09   ; 
- D 0 - I - 0x019204 06:91F4: 05        .byte $05   ; 
- D 0 - I - 0x019205 06:91F5: 70        .byte $70   ; 
- D 0 - I - 0x019206 06:91F6: 83        .byte $83   ; 
- D 0 - I - 0x019207 06:91F7: 60        .byte $60   ; 
- D 0 - I - 0x019208 06:91F8: F2        .byte $F2   ; 
- D 0 - I - 0x019209 06:91F9: 01        .byte $01   ; 
- D 0 - I - 0x01920A 06:91FA: F0        .byte $F0   ; 
- D 0 - I - 0x01920B 06:91FB: 83        .byte $83   ; 
- D 0 - I - 0x01920C 06:91FC: A0        .byte $A0   ; 
- D 0 - I - 0x01920D 06:91FD: 0A        .byte $0A   ; 
- D 0 - I - 0x01920E 06:91FE: 05        .byte $05   ; 
- D 0 - I - 0x01920F 06:91FF: 70        .byte $70   ; 
- D 0 - I - 0x019210 06:9200: 83        .byte $83   ; 
- D 0 - I - 0x019211 06:9201: 51        .byte $51   ; 
- D 0 - I - 0x019212 06:9202: 2B        .byte $2B   ; 
- D 0 - I - 0x019213 06:9203: 41        .byte $41   ; 
- D 0 - I - 0x019214 06:9204: 76        .byte $76   ; 
- D 0 - I - 0x019215 06:9205: 31        .byte $31   ; 
- D 0 - I - 0x019216 06:9206: D3        .byte $D3   ; 
- D 0 - I - 0x019217 06:9207: 22        .byte $22   ; 
- D 0 - I - 0x019218 06:9208: 44        .byte $44   ; 
- D 0 - I - 0x019219 06:9209: 12        .byte $12   ; 
- D 0 - I - 0x01921A 06:920A: DD        .byte $DD   ; 
- D 0 - I - 0x01921B 06:920B: 13        .byte $13   ; 
- D 0 - I - 0x01921C 06:920C: 99        .byte $99   ; 
- D 0 - I - 0x01921D 06:920D: 14        .byte $14   ; 
- D 0 - I - 0x01921E 06:920E: 7E        .byte $7E   ; 
- D 0 - I - 0x01921F 06:920F: FF        .byte $FF   ; 



_off014_0B_9210_05:
- D 0 - I - 0x019220 06:9210: 01        .byte $01   ; 
- D 0 - I - 0x019221 06:9211: FB        .byte $FB   ; 
- D 0 - I - 0x019222 06:9212: F9        .byte $F9   ; 
- D 0 - I - 0x019223 06:9213: DE        .byte $DE   ; 
- D 0 - I - 0x019224 06:9214: 2A        .byte $2A   ; 
- D 0 - I - 0x019225 06:9215: 29        .byte $29   ; 
- D 0 - I - 0x019226 06:9216: 00        .byte $00   ; 
- D 0 - I - 0x019227 06:9217: FE        .byte $FE   ; 
- D 0 - I - 0x019228 06:9218: 02        .byte $02   ; 
- D 0 - I - 0x019229 06:9219: 03        .byte $03   ; 
- D 0 - I - 0x01922A 06:921A: 7B        .byte $7B   ; 
- D 0 - I - 0x01922B 06:921B: 2E        .byte $2E   ; 
- D 0 - I - 0x01922C 06:921C: 2B        .byte $2B   ; 
- D 0 - I - 0x01922D 06:921D: 00        .byte $00   ; 
- D 0 - I - 0x01922E 06:921E: 3A        .byte $3A   ; 
- D 0 - I - 0x01922F 06:921F: 2D        .byte $2D   ; 
- D 0 - I - 0x019230 06:9220: 1B        .byte $1B   ; 
- D 0 - I - 0x019231 06:9221: FF        .byte $FF   ; 



_off014_0C_9222_04:
- D 0 - I - 0x019232 06:9222: 01        .byte $01   ; 
- D 0 - I - 0x019233 06:9223: F0        .byte $F0   ; 
- D 0 - I - 0x019234 06:9224: 83        .byte $83   ; 
- D 0 - I - 0x019235 06:9225: FB        .byte $FB   ; 
- D 0 - I - 0x019236 06:9226: C2        .byte $C2   ; 
- D 0 - I - 0x019237 06:9227: 3B        .byte $3B   ; 
- D 0 - I - 0x019238 06:9228: 81        .byte $81   ; 
- D 0 - I - 0x019239 06:9229: 0D        .byte $0D   ; 
- D 0 - I - 0x01923A 06:922A: 71        .byte $71   ; 
- D 0 - I - 0x01923B 06:922B: C5        .byte $C5   ; 
- D 0 - I - 0x01923C 06:922C: C0        .byte $C0   ; 
- D 0 - I - 0x01923D 06:922D: 08        .byte $08   ; 
- D 0 - I - 0x01923E 06:922E: FE        .byte $FE   ; 
- D 0 - I - 0x01923F 06:922F: 02        .byte $02   ; 
- D 0 - I - 0x019240 06:9230: 05        .byte $05   ; 
- D 0 - I - 0x019241 06:9231: F0        .byte $F0   ; 
- D 0 - I - 0x019242 06:9232: 83        .byte $83   ; 
- D 0 - I - 0x019243 06:9233: 60        .byte $60   ; 
- D 0 - I - 0x019244 06:9234: F2        .byte $F2   ; 
- D 0 - I - 0x019245 06:9235: 01        .byte $01   ; 
- D 0 - I - 0x019246 06:9236: F0        .byte $F0   ; 
- D 0 - I - 0x019247 06:9237: 83        .byte $83   ; 
- D 0 - I - 0x019248 06:9238: B0        .byte $B0   ; 
- D 0 - I - 0x019249 06:9239: 08        .byte $08   ; 
- D 0 - I - 0x01924A 06:923A: 05        .byte $05   ; 
- D 0 - I - 0x01924B 06:923B: F0        .byte $F0   ; 
- D 0 - I - 0x01924C 06:923C: 83        .byte $83   ; 
- D 0 - I - 0x01924D 06:923D: 51        .byte $51   ; 
- D 0 - I - 0x01924E 06:923E: 2B        .byte $2B   ; 
- D 0 - I - 0x01924F 06:923F: 41        .byte $41   ; 
- D 0 - I - 0x019250 06:9240: 76        .byte $76   ; 
- D 0 - I - 0x019251 06:9241: 31        .byte $31   ; 
- D 0 - I - 0x019252 06:9242: D3        .byte $D3   ; 
- D 0 - I - 0x019253 06:9243: 22        .byte $22   ; 
- D 0 - I - 0x019254 06:9244: 44        .byte $44   ; 
- D 0 - I - 0x019255 06:9245: 12        .byte $12   ; 
- D 0 - I - 0x019256 06:9246: DD        .byte $DD   ; 
- D 0 - I - 0x019257 06:9247: 13        .byte $13   ; 
- D 0 - I - 0x019258 06:9248: 99        .byte $99   ; 
- D 0 - I - 0x019259 06:9249: 14        .byte $14   ; 
- D 0 - I - 0x01925A 06:924A: 7E        .byte $7E   ; 
- D 0 - I - 0x01925B 06:924B: FF        .byte $FF   ; 



_off014_0C_924C_05:
- D 0 - I - 0x01925C 06:924C: 01        .byte $01   ; 
- D 0 - I - 0x01925D 06:924D: FB        .byte $FB   ; 
- D 0 - I - 0x01925E 06:924E: F9        .byte $F9   ; 
- D 0 - I - 0x01925F 06:924F: DE        .byte $DE   ; 
- D 0 - I - 0x019260 06:9250: 2A        .byte $2A   ; 
- D 0 - I - 0x019261 06:9251: 19        .byte $19   ; 
- D 0 - I - 0x019262 06:9252: FE        .byte $FE   ; 
- D 0 - I - 0x019263 06:9253: 02        .byte $02   ; 
- D 0 - I - 0x019264 06:9254: 03        .byte $03   ; 
- D 0 - I - 0x019265 06:9255: 7B        .byte $7B   ; 
- D 0 - I - 0x019266 06:9256: 2E        .byte $2E   ; 
- D 0 - I - 0x019267 06:9257: 3E        .byte $3E   ; 
- D 0 - I - 0x019268 06:9258: 2B        .byte $2B   ; 
- D 0 - I - 0x019269 06:9259: 00        .byte $00   ; 
- D 0 - I - 0x01926A 06:925A: 3A        .byte $3A   ; 
- D 0 - I - 0x01926B 06:925B: 2D        .byte $2D   ; 
- D 0 - I - 0x01926C 06:925C: 1B        .byte $1B   ; 
- D 0 - I - 0x01926D 06:925D: FF        .byte $FF   ; 



_off014_0D_925E_04:
- D 0 - I - 0x01926E 06:925E: 02        .byte $02   ; 
- D 0 - I - 0x01926F 06:925F: 10        .byte $10   ; 
- D 0 - I - 0x019270 06:9260: 83        .byte $83   ; 
- D 0 - I - 0x019271 06:9261: 30        .byte $30   ; 
- D 0 - I - 0x019272 06:9262: 39        .byte $39   ; 
- D 0 - I - 0x019273 06:9263: 40        .byte $40   ; 
- D 0 - I - 0x019274 06:9264: 40        .byte $40   ; 
- D 0 - I - 0x019275 06:9265: 50        .byte $50   ; 
- D 0 - I - 0x019276 06:9266: 47        .byte $47   ; 
- D 0 - I - 0x019277 06:9267: 60        .byte $60   ; 
- D 0 - I - 0x019278 06:9268: 50        .byte $50   ; 
- D 0 - I - 0x019279 06:9269: 70        .byte $70   ; 
- D 0 - I - 0x01927A 06:926A: 5A        .byte $5A   ; 
- D 0 - I - 0x01927B 06:926B: 80        .byte $80   ; 
- D 0 - I - 0x01927C 06:926C: 65        .byte $65   ; 
- D 0 - I - 0x01927D 06:926D: 90        .byte $90   ; 
- D 0 - I - 0x01927E 06:926E: 71        .byte $71   ; 
- D 0 - I - 0x01927F 06:926F: A0        .byte $A0   ; 
- D 0 - I - 0x019280 06:9270: 7E        .byte $7E   ; 
- D 0 - I - 0x019281 06:9271: A0        .byte $A0   ; 
- D 0 - I - 0x019282 06:9272: 8F        .byte $8F   ; 
- D 0 - I - 0x019283 06:9273: 90        .byte $90   ; 
- D 0 - I - 0x019284 06:9274: A0        .byte $A0   ; 
- D 0 - I - 0x019285 06:9275: 90        .byte $90   ; 
- D 0 - I - 0x019286 06:9276: B4        .byte $B4   ; 
- D 0 - I - 0x019287 06:9277: 80        .byte $80   ; 
- D 0 - I - 0x019288 06:9278: CA        .byte $CA   ; 
- D 0 - I - 0x019289 06:9279: 80        .byte $80   ; 
- D 0 - I - 0x01928A 06:927A: F2        .byte $F2   ; 
- D 0 - I - 0x01928B 06:927B: 80        .byte $80   ; 
- D 0 - I - 0x01928C 06:927C: FE        .byte $FE   ; 
- D 0 - I - 0x01928D 06:927D: 81        .byte $81   ; 
- D 0 - I - 0x01928E 06:927E: 1D        .byte $1D   ; 
- D 0 - I - 0x01928F 06:927F: 71        .byte $71   ; 
- D 0 - I - 0x019290 06:9280: 40        .byte $40   ; 
- D 0 - I - 0x019291 06:9281: 71        .byte $71   ; 
- D 0 - I - 0x019292 06:9282: 68        .byte $68   ; 
- D 0 - I - 0x019293 06:9283: 61        .byte $61   ; 
- D 0 - I - 0x019294 06:9284: 94        .byte $94   ; 
- D 0 - I - 0x019295 06:9285: 61        .byte $61   ; 
- D 0 - I - 0x019296 06:9286: C5        .byte $C5   ; 
- D 0 - I - 0x019297 06:9287: 61        .byte $61   ; 
- D 0 - I - 0x019298 06:9288: FC        .byte $FC   ; 
- D 0 - I - 0x019299 06:9289: 62        .byte $62   ; 
- D 0 - I - 0x01929A 06:928A: 36        .byte $36   ; 
- D 0 - I - 0x01929B 06:928B: 62        .byte $62   ; 
- D 0 - I - 0x01929C 06:928C: 81        .byte $81   ; 
- D 0 - I - 0x01929D 06:928D: 52        .byte $52   ; 
- D 0 - I - 0x01929E 06:928E: CF        .byte $CF   ; 
- D 0 - I - 0x01929F 06:928F: 53        .byte $53   ; 
- D 0 - I - 0x0192A0 06:9290: 27        .byte $27   ; 
- D 0 - I - 0x0192A1 06:9291: 53        .byte $53   ; 
- D 0 - I - 0x0192A2 06:9292: 8A        .byte $8A   ; 
- D 0 - I - 0x0192A3 06:9293: FF        .byte $FF   ; 



_off014_0D_9294_05:
- D 0 - I - 0x0192A4 06:9294: 01        .byte $01   ; 
- D 0 - I - 0x0192A5 06:9295: 3B        .byte $3B   ; 
- D 0 - I - 0x0192A6 06:9296: 4A        .byte $4A   ; 
- D 0 - I - 0x0192A7 06:9297: 59        .byte $59   ; 
- D 0 - I - 0x0192A8 06:9298: 68        .byte $68   ; 
- D 0 - I - 0x0192A9 06:9299: 77        .byte $77   ; 
- D 0 - I - 0x0192AA 06:929A: 76        .byte $76   ; 
- D 0 - I - 0x0192AB 06:929B: 86        .byte $86   ; 
- D 0 - I - 0x0192AC 06:929C: 86        .byte $86   ; 
- D 0 - I - 0x0192AD 06:929D: 86        .byte $86   ; 
- D 0 - I - 0x0192AE 06:929E: 86        .byte $86   ; 
- D 0 - I - 0x0192AF 06:929F: 86        .byte $86   ; 
- D 0 - I - 0x0192B0 06:92A0: 86        .byte $86   ; 
- D 0 - I - 0x0192B1 06:92A1: 87        .byte $87   ; 
- D 0 - I - 0x0192B2 06:92A2: 86        .byte $86   ; 
- D 0 - I - 0x0192B3 06:92A3: 87        .byte $87   ; 
- D 0 - I - 0x0192B4 06:92A4: 87        .byte $87   ; 
- D 0 - I - 0x0192B5 06:92A5: 88        .byte $88   ; 
- D 0 - I - 0x0192B6 06:92A6: 87        .byte $87   ; 
- D 0 - I - 0x0192B7 06:92A7: 88        .byte $88   ; 
- D 0 - I - 0x0192B8 06:92A8: 88        .byte $88   ; 
- D 0 - I - 0x0192B9 06:92A9: 89        .byte $89   ; 
- D 0 - I - 0x0192BA 06:92AA: 88        .byte $88   ; 
- D 0 - I - 0x0192BB 06:92AB: 89        .byte $89   ; 
- D 0 - I - 0x0192BC 06:92AC: 89        .byte $89   ; 
- D 0 - I - 0x0192BD 06:92AD: 8A        .byte $8A   ; 
- D 0 - I - 0x0192BE 06:92AE: 79        .byte $79   ; 
- D 0 - I - 0x0192BF 06:92AF: 7A        .byte $7A   ; 
- D 0 - I - 0x0192C0 06:92B0: 7A        .byte $7A   ; 
- D 0 - I - 0x0192C1 06:92B1: 7B        .byte $7B   ; 
- D 0 - I - 0x0192C2 06:92B2: 7A        .byte $7A   ; 
- D 0 - I - 0x0192C3 06:92B3: 7B        .byte $7B   ; 
- D 0 - I - 0x0192C4 06:92B4: 7B        .byte $7B   ; 
- D 0 - I - 0x0192C5 06:92B5: 7C        .byte $7C   ; 
- D 0 - I - 0x0192C6 06:92B6: 7B        .byte $7B   ; 
- D 0 - I - 0x0192C7 06:92B7: 7C        .byte $7C   ; 
- D 0 - I - 0x0192C8 06:92B8: 7C        .byte $7C   ; 
- D 0 - I - 0x0192C9 06:92B9: 6D        .byte $6D   ; 
- D 0 - I - 0x0192CA 06:92BA: 6C        .byte $6C   ; 
- D 0 - I - 0x0192CB 06:92BB: 6D        .byte $6D   ; 
- D 0 - I - 0x0192CC 06:92BC: 6D        .byte $6D   ; 
- D 0 - I - 0x0192CD 06:92BD: 5E        .byte $5E   ; 
- D 0 - I - 0x0192CE 06:92BE: 5D        .byte $5D   ; 
- D 0 - I - 0x0192CF 06:92BF: 5E        .byte $5E   ; 
- D 0 - I - 0x0192D0 06:92C0: 5E        .byte $5E   ; 
- D 0 - I - 0x0192D1 06:92C1: 5E        .byte $5E   ; 
- D 0 - I - 0x0192D2 06:92C2: 5E        .byte $5E   ; 
- D 0 - I - 0x0192D3 06:92C3: 4E        .byte $4E   ; 
- D 0 - I - 0x0192D4 06:92C4: 4E        .byte $4E   ; 
- D 0 - I - 0x0192D5 06:92C5: FF        .byte $FF   ; 



_off014_0E_92C6_04:
- D 0 - I - 0x0192D6 06:92C6: 0A        .byte $0A   ; 
- D 0 - I - 0x0192D7 06:92C7: 30        .byte $30   ; 
- D 0 - I - 0x0192D8 06:92C8: 8B        .byte $8B   ; 
- D 0 - I - 0x0192D9 06:92C9: B2        .byte $B2   ; 
- D 0 - I - 0x0192DA 06:92CA: 66        .byte $66   ; 
- D 0 - I - 0x0192DB 06:92CB: 72        .byte $72   ; 
- D 0 - I - 0x0192DC 06:92CC: 66        .byte $66   ; 
- D 0 - I - 0x0192DD 06:92CD: 32        .byte $32   ; 
- D 0 - I - 0x0192DE 06:92CE: 66        .byte $66   ; 
- D 0 - I - 0x0192DF 06:92CF: 12        .byte $12   ; 
- D 0 - I - 0x0192E0 06:92D0: 66        .byte $66   ; 
- D 0 - I - 0x0192E1 06:92D1: FF        .byte $FF   ; 



_off014_0E_92D2_05:
- D 0 - I - 0x0192E2 06:92D2: 01        .byte $01   ; 
- D 0 - I - 0x0192E3 06:92D3: BE        .byte $BE   ; 
- D 0 - I - 0x0192E4 06:92D4: BD        .byte $BD   ; 
- D 0 - I - 0x0192E5 06:92D5: BC        .byte $BC   ; 
- D 0 - I - 0x0192E6 06:92D6: BB        .byte $BB   ; 
- D 0 - I - 0x0192E7 06:92D7: BA        .byte $BA   ; 
- D 0 - I - 0x0192E8 06:92D8: B9        .byte $B9   ; 
- D 0 - I - 0x0192E9 06:92D9: B8        .byte $B8   ; 
- D 0 - I - 0x0192EA 06:92DA: B7        .byte $B7   ; 
- D 0 - I - 0x0192EB 06:92DB: B6        .byte $B6   ; 
- D 0 - I - 0x0192EC 06:92DC: B5        .byte $B5   ; 
- D 0 - I - 0x0192ED 06:92DD: 7E        .byte $7E   ; 
- D 0 - I - 0x0192EE 06:92DE: 7D        .byte $7D   ; 
- D 0 - I - 0x0192EF 06:92DF: 7C        .byte $7C   ; 
- D 0 - I - 0x0192F0 06:92E0: 7B        .byte $7B   ; 
- D 0 - I - 0x0192F1 06:92E1: 7A        .byte $7A   ; 
- D 0 - I - 0x0192F2 06:92E2: 79        .byte $79   ; 
- D 0 - I - 0x0192F3 06:92E3: 78        .byte $78   ; 
- D 0 - I - 0x0192F4 06:92E4: 77        .byte $77   ; 
- D 0 - I - 0x0192F5 06:92E5: 76        .byte $76   ; 
- D 0 - I - 0x0192F6 06:92E6: 75        .byte $75   ; 
- D 0 - I - 0x0192F7 06:92E7: 3E        .byte $3E   ; 
- D 0 - I - 0x0192F8 06:92E8: 3D        .byte $3D   ; 
- D 0 - I - 0x0192F9 06:92E9: 3C        .byte $3C   ; 
- D 0 - I - 0x0192FA 06:92EA: 3B        .byte $3B   ; 
- D 0 - I - 0x0192FB 06:92EB: 3A        .byte $3A   ; 
- D 0 - I - 0x0192FC 06:92EC: 39        .byte $39   ; 
- D 0 - I - 0x0192FD 06:92ED: 38        .byte $38   ; 
- D 0 - I - 0x0192FE 06:92EE: 37        .byte $37   ; 
- D 0 - I - 0x0192FF 06:92EF: 36        .byte $36   ; 
- D 0 - I - 0x019300 06:92F0: 35        .byte $35   ; 
- D 0 - I - 0x019301 06:92F1: 1E        .byte $1E   ; 
- D 0 - I - 0x019302 06:92F2: 1D        .byte $1D   ; 
- D 0 - I - 0x019303 06:92F3: 1C        .byte $1C   ; 
- D 0 - I - 0x019304 06:92F4: 1B        .byte $1B   ; 
- D 0 - I - 0x019305 06:92F5: 1A        .byte $1A   ; 
- D 0 - I - 0x019306 06:92F6: 19        .byte $19   ; 
- D 0 - I - 0x019307 06:92F7: 18        .byte $18   ; 
- D 0 - I - 0x019308 06:92F8: 17        .byte $17   ; 
- D 0 - I - 0x019309 06:92F9: 16        .byte $16   ; 
- D 0 - I - 0x01930A 06:92FA: FF        .byte $FF   ; 



_off014_0F_92FB_04:
- D 0 - I - 0x01930B 06:92FB: 01        .byte $01   ; 
- D 0 - I - 0x01930C 06:92FC: B0        .byte $B0   ; 
- D 0 - I - 0x01930D 06:92FD: 82        .byte $82   ; 
- D 0 - I - 0x01930E 06:92FE: 00        .byte $00   ; 
- D 0 - I - 0x01930F 06:92FF: 70        .byte $70   ; 
- D 0 - I - 0x019310 06:9300: 35        .byte $35   ; 
- D 0 - I - 0x019311 06:9301: 50        .byte $50   ; 
- D 0 - I - 0x019312 06:9302: 50        .byte $50   ; 
- D 0 - I - 0x019313 06:9303: 30        .byte $30   ; 
- D 0 - I - 0x019314 06:9304: 78        .byte $78   ; 
- D 0 - I - 0x019315 06:9305: 03        .byte $03   ; 
- D 0 - I - 0x019316 06:9306: 70        .byte $70   ; 
- D 0 - I - 0x019317 06:9307: 82        .byte $82   ; 
- D 0 - I - 0x019318 06:9308: 50        .byte $50   ; 
- D 0 - I - 0x019319 06:9309: 35        .byte $35   ; 
- D 0 - I - 0x01931A 06:930A: 30        .byte $30   ; 
- D 0 - I - 0x01931B 06:930B: 50        .byte $50   ; 
- D 0 - I - 0x01931C 06:930C: 10        .byte $10   ; 
- D 0 - I - 0x01931D 06:930D: 78        .byte $78   ; 
- D 0 - I - 0x01931E 06:930E: 30        .byte $30   ; 
- D 0 - I - 0x01931F 06:930F: 35        .byte $35   ; 
- D 0 - I - 0x019320 06:9310: 20        .byte $20   ; 
- D 0 - I - 0x019321 06:9311: 50        .byte $50   ; 
- D 0 - I - 0x019322 06:9312: 10        .byte $10   ; 
- D 0 - I - 0x019323 06:9313: 78        .byte $78   ; 
- D 0 - I - 0x019324 06:9314: FF        .byte $FF   ; 



_off014_0F_9315_05:
- D 0 - I - 0x019325 06:9315: 03        .byte $03   ; 
- D 0 - I - 0x019326 06:9316: B7        .byte $B7   ; 
- D 0 - I - 0x019327 06:9317: 00        .byte $00   ; 
- D 0 - I - 0x019328 06:9318: B8        .byte $B8   ; 
- D 0 - I - 0x019329 06:9319: 7F        .byte $7F   ; 
- D 0 - I - 0x01932A 06:931A: 51        .byte $51   ; 
- D 0 - I - 0x01932B 06:931B: 4A        .byte $4A   ; 
- D 0 - I - 0x01932C 06:931C: 35        .byte $35   ; 
- D 0 - I - 0x01932D 06:931D: 28        .byte $28   ; 
- D 0 - I - 0x01932E 06:931E: 1B        .byte $1B   ; 
- D 0 - I - 0x01932F 06:931F: FF        .byte $FF   ; 



_off014_10_9320_04:
- D 0 - I - 0x019330 06:9320: 01        .byte $01   ; 
- D 0 - I - 0x019331 06:9321: 70        .byte $70   ; 
- D 0 - I - 0x019332 06:9322: F8        .byte $F8   ; 
- D 0 - I - 0x019333 06:9323: 70        .byte $70   ; 
- D 0 - I - 0x019334 06:9324: 28        .byte $28   ; 
- D 0 - I - 0x019335 06:9325: 02        .byte $02   ; 
- D 0 - I - 0x019336 06:9326: 70        .byte $70   ; 
- D 0 - I - 0x019337 06:9327: F8        .byte $F8   ; 
- D 0 - I - 0x019338 06:9328: 50        .byte $50   ; 
- D 0 - I - 0x019339 06:9329: 27        .byte $27   ; 
- D 0 - I - 0x01933A 06:932A: 03        .byte $03   ; 
- D 0 - I - 0x01933B 06:932B: 70        .byte $70   ; 
- D 0 - I - 0x01933C 06:932C: F8        .byte $F8   ; 
- D 0 - I - 0x01933D 06:932D: 50        .byte $50   ; 
- D 0 - I - 0x01933E 06:932E: 27        .byte $27   ; 
- D 0 - I - 0x01933F 06:932F: FB        .byte $FB   ; 
- D 0 - I - 0x019340 06:9330: 30        .byte $30   ; 
- D 0 - I - 0x019341 06:9331: 27        .byte $27   ; 
- D 0 - I - 0x019342 06:9332: FE        .byte $FE   ; 
- D 0 - I - 0x019343 06:9333: 04        .byte $04   ; 
- D 0 - I - 0x019344 06:9334: 00        .byte $00   ; 
- D 0 - I - 0x019345 06:9335: 00        .byte $00   ; 
- D 0 - I - 0x019346 06:9336: 10        .byte $10   ; 
- D 0 - I - 0x019347 06:9337: 27        .byte $27   ; 
- D 0 - I - 0x019348 06:9338: FF        .byte $FF   ; 



_off014_10_9339_05:
- D 0 - I - 0x019349 06:9339: 02        .byte $02   ; 
- D 0 - I - 0x01934A 06:933A: C8        .byte $C8   ; 
- D 0 - I - 0x01934B 06:933B: 8F        .byte $8F   ; 
- D 0 - I - 0x01934C 06:933C: C8        .byte $C8   ; 
- D 0 - I - 0x01934D 06:933D: 8F        .byte $8F   ; 
- D 0 - I - 0x01934E 06:933E: C9        .byte $C9   ; 
- D 0 - I - 0x01934F 06:933F: 01        .byte $01   ; 
- D 0 - I - 0x019350 06:9340: FB        .byte $FB   ; 
- D 0 - I - 0x019351 06:9341: 55        .byte $55   ; 
- D 0 - I - 0x019352 06:9342: FE        .byte $FE   ; 
- D 0 - I - 0x019353 06:9343: 0C        .byte $0C   ; 
- D 0 - I - 0x019354 06:9344: 55        .byte $55   ; 
- D 0 - I - 0x019355 06:9345: 45        .byte $45   ; 
- D 0 - I - 0x019356 06:9346: 35        .byte $35   ; 
- D 0 - I - 0x019357 06:9347: 25        .byte $25   ; 
- D 0 - I - 0x019358 06:9348: 15        .byte $15   ; 
- D 0 - I - 0x019359 06:9349: FF        .byte $FF   ; 



_off014_11_934A_04:
- D 0 - I - 0x01935A 06:934A: 03        .byte $03   ; 
- D 0 - I - 0x01935B 06:934B: F0        .byte $F0   ; 
- D 0 - I - 0x01935C 06:934C: 82        .byte $82   ; 
- D 0 - I - 0x01935D 06:934D: B0        .byte $B0   ; 
- D 0 - I - 0x01935E 06:934E: 33        .byte $33   ; 
- D 0 - I - 0x01935F 06:934F: 02        .byte $02   ; 
- D 0 - I - 0x019360 06:9350: 30        .byte $30   ; 
- D 0 - I - 0x019361 06:9351: 8E        .byte $8E   ; 
- D 0 - I - 0x019362 06:9352: B0        .byte $B0   ; 
- D 0 - I - 0x019363 06:9353: 66        .byte $66   ; 
- D 0 - I - 0x019364 06:9354: 70        .byte $70   ; 
- D 0 - I - 0x019365 06:9355: 5A        .byte $5A   ; 
- D 0 - I - 0x019366 06:9356: 50        .byte $50   ; 
- D 0 - I - 0x019367 06:9357: 50        .byte $50   ; 
- D 0 - I - 0x019368 06:9358: 40        .byte $40   ; 
- D 0 - I - 0x019369 06:9359: 48        .byte $48   ; 
- D 0 - I - 0x01936A 06:935A: 30        .byte $30   ; 
- D 0 - I - 0x01936B 06:935B: 40        .byte $40   ; 
- D 0 - I - 0x01936C 06:935C: 30        .byte $30   ; 
- D 0 - I - 0x01936D 06:935D: 3F        .byte $3F   ; 
- D 0 - I - 0x01936E 06:935E: 20        .byte $20   ; 
- D 0 - I - 0x01936F 06:935F: 3F        .byte $3F   ; 
- D 0 - I - 0x019370 06:9360: 20        .byte $20   ; 
- D 0 - I - 0x019371 06:9361: 3F        .byte $3F   ; 
- D 0 - I - 0x019372 06:9362: 10        .byte $10   ; 
- D 0 - I - 0x019373 06:9363: 3F        .byte $3F   ; 
- D 0 - I - 0x019374 06:9364: 10        .byte $10   ; 
- D 0 - I - 0x019375 06:9365: 3F        .byte $3F   ; 
- D 0 - I - 0x019376 06:9366: FF        .byte $FF   ; 



_off014_11_9367_05:
- D 0 - I - 0x019377 06:9367: 01        .byte $01   ; 
- D 0 - I - 0x019378 06:9368: DB        .byte $DB   ; 
- D 0 - I - 0x019379 06:9369: 5A        .byte $5A   ; 
- D 0 - I - 0x01937A 06:936A: 39        .byte $39   ; 
- D 0 - I - 0x01937B 06:936B: 7A        .byte $7A   ; 
- D 0 - I - 0x01937C 06:936C: 59        .byte $59   ; 
- D 0 - I - 0x01937D 06:936D: 59        .byte $59   ; 
- D 0 - I - 0x01937E 06:936E: 4A        .byte $4A   ; 
- D 0 - I - 0x01937F 06:936F: 4B        .byte $4B   ; 
- D 0 - I - 0x019380 06:9370: 3B        .byte $3B   ; 
- D 0 - I - 0x019381 06:9371: 4B        .byte $4B   ; 
- D 0 - I - 0x019382 06:9372: 3B        .byte $3B   ; 
- D 0 - I - 0x019383 06:9373: 2B        .byte $2B   ; 
- D 0 - I - 0x019384 06:9374: 2B        .byte $2B   ; 
- D 0 - I - 0x019385 06:9375: 18        .byte $18   ; 
- D 0 - I - 0x019386 06:9376: 1A        .byte $1A   ; 
- D 0 - I - 0x019387 06:9377: FF        .byte $FF   ; 



_off014_12_9378_05:
- D 0 - I - 0x019388 06:9378: 01        .byte $01   ; 
- D 0 - I - 0x019389 06:9379: FB        .byte $FB   ; 
- D 0 - I - 0x01938A 06:937A: EE        .byte $EE   ; 
- D 0 - I - 0x01938B 06:937B: EF        .byte $EF   ; 
- D 0 - I - 0x01938C 06:937C: FE        .byte $FE   ; 
- D 0 - I - 0x01938D 06:937D: 02        .byte $02   ; 
- D 0 - I - 0x01938E 06:937E: 01        .byte $01   ; 
- D 0 - I - 0x01938F 06:937F: EF        .byte $EF   ; 
- D 0 - I - 0x019390 06:9380: F8        .byte $F8   ; 
- D 0 - I - 0x019391 06:9381: EF        .byte $EF   ; 
- D 0 - I - 0x019392 06:9382: F8        .byte $F8   ; 
- D 0 - I - 0x019393 06:9383: EF        .byte $EF   ; 
- D 0 - I - 0x019394 06:9384: EC        .byte $EC   ; 
- D 0 - I - 0x019395 06:9385: EB        .byte $EB   ; 
- D 0 - I - 0x019396 06:9386: EB        .byte $EB   ; 
- D 0 - I - 0x019397 06:9387: EB        .byte $EB   ; 
- D 0 - I - 0x019398 06:9388: EB        .byte $EB   ; 
- D 0 - I - 0x019399 06:9389: 02        .byte $02   ; 
- D 0 - I - 0x01939A 06:938A: DB        .byte $DB   ; 
- D 0 - I - 0x01939B 06:938B: CD        .byte $CD   ; 
- D 0 - I - 0x01939C 06:938C: BC        .byte $BC   ; 
- D 0 - I - 0x01939D 06:938D: AB        .byte $AB   ; 
- D 0 - I - 0x01939E 06:938E: 9B        .byte $9B   ; 
- D 0 - I - 0x01939F 06:938F: BB        .byte $BB   ; 
- D 0 - I - 0x0193A0 06:9390: 7B        .byte $7B   ; 
- D 0 - I - 0x0193A1 06:9391: 6B        .byte $6B   ; 
- D 0 - I - 0x0193A2 06:9392: 03        .byte $03   ; 
- D 0 - I - 0x0193A3 06:9393: 5B        .byte $5B   ; 
- D 0 - I - 0x0193A4 06:9394: 4B        .byte $4B   ; 
- D 0 - I - 0x0193A5 06:9395: 3C        .byte $3C   ; 
- D 0 - I - 0x0193A6 06:9396: 2C        .byte $2C   ; 
- D 0 - I - 0x0193A7 06:9397: 1B        .byte $1B   ; 
- D 0 - I - 0x0193A8 06:9398: FF        .byte $FF   ; 



_off014_14_9399_04:
- D 0 - I - 0x0193A9 06:9399: 02        .byte $02   ; 
- D 0 - I - 0x0193AA 06:939A: 70        .byte $70   ; 
- D 0 - I - 0x0193AB 06:939B: 82        .byte $82   ; 
- D 0 - I - 0x0193AC 06:939C: 70        .byte $70   ; 
- D 0 - I - 0x0193AD 06:939D: 14        .byte $14   ; 
- D 0 - I - 0x0193AE 06:939E: 00        .byte $00   ; 
- D 0 - I - 0x0193AF 06:939F: 06        .byte $06   ; 
- D 0 - I - 0x0193B0 06:93A0: B0        .byte $B0   ; 
- D 0 - I - 0x0193B1 06:93A1: 82        .byte $82   ; 
- D 0 - I - 0x0193B2 06:93A2: 50        .byte $50   ; 
- D 0 - I - 0x0193B3 06:93A3: 10        .byte $10   ; 
- D 0 - I - 0x0193B4 06:93A4: 30        .byte $30   ; 
- D 0 - I - 0x0193B5 06:93A5: 14        .byte $14   ; 
- D 0 - I - 0x0193B6 06:93A6: 10        .byte $10   ; 
- D 0 - I - 0x0193B7 06:93A7: 18        .byte $18   ; 
- D 0 - I - 0x0193B8 06:93A8: FF        .byte $FF   ; 



_off014_14_93A9_05:
- D 0 - I - 0x0193B9 06:93A9: 01        .byte $01   ; 
- D 0 - I - 0x0193BA 06:93AA: F8        .byte $F8   ; 
- D 0 - I - 0x0193BB 06:93AB: 5F        .byte $5F   ; 
- D 0 - I - 0x0193BC 06:93AC: 58        .byte $58   ; 
- D 0 - I - 0x0193BD 06:93AD: 5F        .byte $5F   ; 
- D 0 - I - 0x0193BE 06:93AE: 59        .byte $59   ; 
- D 0 - I - 0x0193BF 06:93AF: FB        .byte $FB   ; 
- D 0 - I - 0x0193C0 06:93B0: 55        .byte $55   ; 
- D 0 - I - 0x0193C1 06:93B1: FE        .byte $FE   ; 
- D 0 - I - 0x0193C2 06:93B2: 04        .byte $04   ; 
- D 0 - I - 0x0193C3 06:93B3: 15        .byte $15   ; 
- D 0 - I - 0x0193C4 06:93B4: 25        .byte $25   ; 
- D 0 - I - 0x0193C5 06:93B5: 35        .byte $35   ; 
- D 0 - I - 0x0193C6 06:93B6: 45        .byte $45   ; 
- D 0 - I - 0x0193C7 06:93B7: 00        .byte $00   ; 
- D 0 - I - 0x0193C8 06:93B8: 15        .byte $15   ; 
- D 0 - I - 0x0193C9 06:93B9: FF        .byte $FF   ; 



_off014_15_93BA_04:
- D 0 - I - 0x0193CA 06:93BA: 01        .byte $01   ; 
- D 0 - I - 0x0193CB 06:93BB: 70        .byte $70   ; 
- D 0 - I - 0x0193CC 06:93BC: 89        .byte $89   ; 
- D 0 - I - 0x0193CD 06:93BD: 70        .byte $70   ; 
- D 0 - I - 0x0193CE 06:93BE: 70        .byte $70   ; 
- D 0 - I - 0x0193CF 06:93BF: 02        .byte $02   ; 
- D 0 - I - 0x0193D0 06:93C0: 30        .byte $30   ; 
- D 0 - I - 0x0193D1 06:93C1: 89        .byte $89   ; 
- D 0 - I - 0x0193D2 06:93C2: 31        .byte $31   ; 
- D 0 - I - 0x0193D3 06:93C3: 46        .byte $46   ; 
- D 0 - I - 0x0193D4 06:93C4: 51        .byte $51   ; 
- D 0 - I - 0x0193D5 06:93C5: 4F        .byte $4F   ; 
- D 0 - I - 0x0193D6 06:93C6: 71        .byte $71   ; 
- D 0 - I - 0x0193D7 06:93C7: 58        .byte $58   ; 
- D 0 - I - 0x0193D8 06:93C8: 91        .byte $91   ; 
- D 0 - I - 0x0193D9 06:93C9: 64        .byte $64   ; 
- D 0 - I - 0x0193DA 06:93CA: 09        .byte $09   ; 
- D 0 - I - 0x0193DB 06:93CB: 70        .byte $70   ; 
- D 0 - I - 0x0193DC 06:93CC: 8F        .byte $8F   ; 
- D 0 - I - 0x0193DD 06:93CD: 50        .byte $50   ; 
- D 0 - I - 0x0193DE 06:93CE: 4B        .byte $4B   ; 
- D 0 - I - 0x0193DF 06:93CF: 10        .byte $10   ; 
- D 0 - I - 0x0193E0 06:93D0: 4B        .byte $4B   ; 
- D 0 - I - 0x0193E1 06:93D1: FF        .byte $FF   ; 



_off014_15_93D2_05:
- D 0 - I - 0x0193E2 06:93D2: 01        .byte $01   ; 
- D 0 - I - 0x0193E3 06:93D3: F8        .byte $F8   ; 
- D 0 - I - 0x0193E4 06:93D4: 5F        .byte $5F   ; 
- D 0 - I - 0x0193E5 06:93D5: 58        .byte $58   ; 
- D 0 - I - 0x0193E6 06:93D6: 5F        .byte $5F   ; 
- D 0 - I - 0x0193E7 06:93D7: 59        .byte $59   ; 
- D 0 - I - 0x0193E8 06:93D8: FB        .byte $FB   ; 
- D 0 - I - 0x0193E9 06:93D9: 55        .byte $55   ; 
- D 0 - I - 0x0193EA 06:93DA: FE        .byte $FE   ; 
- D 0 - I - 0x0193EB 06:93DB: 10        .byte $10   ; 
- D 0 - I - 0x0193EC 06:93DC: 15        .byte $15   ; 
- D 0 - I - 0x0193ED 06:93DD: 25        .byte $25   ; 
- D 0 - I - 0x0193EE 06:93DE: 35        .byte $35   ; 
- D 0 - I - 0x0193EF 06:93DF: 45        .byte $45   ; 
- D 0 - I - 0x0193F0 06:93E0: 00        .byte $00   ; 
- D 0 - I - 0x0193F1 06:93E1: 15        .byte $15   ; 
- D 0 - I - 0x0193F2 06:93E2: FF        .byte $FF   ; 
- - - - - - 0x0193F3 06:93E3: FF        .byte $FF   ; 



_off014_13_93E4_04:
_off014_24_93E4_04:
- D 0 - I - 0x0193F4 06:93E4: 08        .byte $08   ; 
- D 0 - I - 0x0193F5 06:93E5: B0        .byte $B0   ; 
- D 0 - I - 0x0193F6 06:93E6: 83        .byte $83   ; 
- D 0 - I - 0x0193F7 06:93E7: F1        .byte $F1   ; 
- D 0 - I - 0x0193F8 06:93E8: 0D        .byte $0D   ; 
- D 0 - I - 0x0193F9 06:93E9: 08        .byte $08   ; 
- D 0 - I - 0x0193FA 06:93EA: F0        .byte $F0   ; 
- D 0 - I - 0x0193FB 06:93EB: 82        .byte $82   ; 
- D 0 - I - 0x0193FC 06:93EC: F0        .byte $F0   ; 
- D 0 - I - 0x0193FD 06:93ED: FE        .byte $FE   ; 
- D 0 - I - 0x0193FE 06:93EE: C0        .byte $C0   ; 
- D 0 - I - 0x0193FF 06:93EF: D5        .byte $D5   ; 
- D 0 - I - 0x019400 06:93F0: 50        .byte $50   ; 
- D 0 - I - 0x019401 06:93F1: B3        .byte $B3   ; 
- D 0 - I - 0x019402 06:93F2: 30        .byte $30   ; 
- D 0 - I - 0x019403 06:93F3: A0        .byte $A0   ; 
- D 0 - I - 0x019404 06:93F4: 10        .byte $10   ; 
- D 0 - I - 0x019405 06:93F5: A0        .byte $A0   ; 
- D 0 - I - 0x019406 06:93F6: FF        .byte $FF   ; 



_off014_13_93F7_05:
- D 0 - I - 0x019407 06:93F7: FF        .byte $FF   ; 



_off014_16_93F8_04:
- D 0 - I - 0x019408 06:93F8: 06        .byte $06   ; 
- D 0 - I - 0x019409 06:93F9: B0        .byte $B0   ; 
- D 0 - I - 0x01940A 06:93FA: 8C        .byte $8C   ; 
- D 0 - I - 0x01940B 06:93FB: 54        .byte $54   ; 
- D 0 - I - 0x01940C 06:93FC: 90        .byte $90   ; 
- D 0 - I - 0x01940D 06:93FD: 73        .byte $73   ; 
- D 0 - I - 0x01940E 06:93FE: F0        .byte $F0   ; 
- D 0 - I - 0x01940F 06:93FF: B3        .byte $B3   ; 
- D 0 - I - 0x019410 06:9400: 70        .byte $70   ; 
- D 0 - I - 0x019411 06:9401: D3        .byte $D3   ; 
- D 0 - I - 0x019412 06:9402: 00        .byte $00   ; 
- D 0 - I - 0x019413 06:9403: 73        .byte $73   ; 
- D 0 - I - 0x019414 06:9404: 00        .byte $00   ; 
- D 0 - I - 0x019415 06:9405: 53        .byte $53   ; 
- D 0 - I - 0x019416 06:9406: 00        .byte $00   ; 
- D 0 - I - 0x019417 06:9407: 33        .byte $33   ; 
- D 0 - I - 0x019418 06:9408: 00        .byte $00   ; 
- D 0 - I - 0x019419 06:9409: 23        .byte $23   ; 
- D 0 - I - 0x01941A 06:940A: 00        .byte $00   ; 
- D 0 - I - 0x01941B 06:940B: 13        .byte $13   ; 
- D 0 - I - 0x01941C 06:940C: 00        .byte $00   ; 
- D 0 - I - 0x01941D 06:940D: FF        .byte $FF   ; 



_off014_16_940E_05:
- D 0 - I - 0x01941E 06:940E: 01        .byte $01   ; 
- D 0 - I - 0x01941F 06:940F: 12        .byte $12   ; 
- D 0 - I - 0x019420 06:9410: 11        .byte $11   ; 
- D 0 - I - 0x019421 06:9411: 22        .byte $22   ; 
- D 0 - I - 0x019422 06:9412: 21        .byte $21   ; 
- D 0 - I - 0x019423 06:9413: 32        .byte $32   ; 
- D 0 - I - 0x019424 06:9414: 31        .byte $31   ; 
- D 0 - I - 0x019425 06:9415: 42        .byte $42   ; 
- D 0 - I - 0x019426 06:9416: 41        .byte $41   ; 
- D 0 - I - 0x019427 06:9417: 52        .byte $52   ; 
- D 0 - I - 0x019428 06:9418: 51        .byte $51   ; 
- D 0 - I - 0x019429 06:9419: 62        .byte $62   ; 
- D 0 - I - 0x01942A 06:941A: 61        .byte $61   ; 
- D 0 - I - 0x01942B 06:941B: 72        .byte $72   ; 
- D 0 - I - 0x01942C 06:941C: 71        .byte $71   ; 
- D 0 - I - 0x01942D 06:941D: 82        .byte $82   ; 
- D 0 - I - 0x01942E 06:941E: 81        .byte $81   ; 
- D 0 - I - 0x01942F 06:941F: 92        .byte $92   ; 
- D 0 - I - 0x019430 06:9420: 91        .byte $91   ; 
- D 0 - I - 0x019431 06:9421: 92        .byte $92   ; 
- D 0 - I - 0x019432 06:9422: 91        .byte $91   ; 
- D 0 - I - 0x019433 06:9423: 01        .byte $01   ; 
- D 0 - I - 0x019434 06:9424: 53        .byte $53   ; 
- D 0 - I - 0x019435 06:9425: 52        .byte $52   ; 
- D 0 - I - 0x019436 06:9426: 53        .byte $53   ; 
- D 0 - I - 0x019437 06:9427: 52        .byte $52   ; 
- D 0 - I - 0x019438 06:9428: 53        .byte $53   ; 
- D 0 - I - 0x019439 06:9429: 52        .byte $52   ; 
- D 0 - I - 0x01943A 06:942A: 54        .byte $54   ; 
- D 0 - I - 0x01943B 06:942B: 53        .byte $53   ; 
- D 0 - I - 0x01943C 06:942C: 45        .byte $45   ; 
- D 0 - I - 0x01943D 06:942D: 44        .byte $44   ; 
- D 0 - I - 0x01943E 06:942E: 36        .byte $36   ; 
- D 0 - I - 0x01943F 06:942F: 35        .byte $35   ; 
- D 0 - I - 0x019440 06:9430: 27        .byte $27   ; 
- D 0 - I - 0x019441 06:9431: 26        .byte $26   ; 
- D 0 - I - 0x019442 06:9432: 18        .byte $18   ; 
- D 0 - I - 0x019443 06:9433: 17        .byte $17   ; 
- D 0 - I - 0x019444 06:9434: FF        .byte $FF   ; 



_off014_17_9435_04:
- D 0 - I - 0x019445 06:9435: FF        .byte $FF   ; 



_off014_18_9436_04:
- D 0 - I - 0x019446 06:9436: 01        .byte $01   ; 
- D 0 - I - 0x019447 06:9437: B0        .byte $B0   ; 
- D 0 - I - 0x019448 06:9438: 88        .byte $88   ; 
- D 0 - I - 0x019449 06:9439: FB        .byte $FB   ; 
- D 0 - I - 0x01944A 06:943A: 30        .byte $30   ; 
- D 0 - I - 0x01944B 06:943B: 43        .byte $43   ; 
- D 0 - I - 0x01944C 06:943C: 50        .byte $50   ; 
- D 0 - I - 0x01944D 06:943D: 8E        .byte $8E   ; 
- D 0 - I - 0x01944E 06:943E: 71        .byte $71   ; 
- D 0 - I - 0x01944F 06:943F: 2E        .byte $2E   ; 
- D 0 - I - 0x019450 06:9440: B1        .byte $B1   ; 
- D 0 - I - 0x019451 06:9441: E0        .byte $E0   ; 
- D 0 - I - 0x019452 06:9442: B2        .byte $B2   ; 
- D 0 - I - 0x019453 06:9443: A7        .byte $A7   ; 
- D 0 - I - 0x019454 06:9444: B3        .byte $B3   ; 
- D 0 - I - 0x019455 06:9445: 57        .byte $57   ; 
- D 0 - I - 0x019456 06:9446: B3        .byte $B3   ; 
- D 0 - I - 0x019457 06:9447: FA        .byte $FA   ; 
- D 0 - I - 0x019458 06:9448: B3        .byte $B3   ; 
- D 0 - I - 0x019459 06:9449: FA        .byte $FA   ; 
- D 0 - I - 0x01945A 06:944A: FE        .byte $FE   ; 
- D 0 - I - 0x01945B 06:944B: 02        .byte $02   ; 
- D 0 - I - 0x01945C 06:944C: 00        .byte $00   ; 
- D 0 - I - 0x01945D 06:944D: 10        .byte $10   ; 
- D 0 - I - 0x01945E 06:944E: 43        .byte $43   ; 
- D 0 - I - 0x01945F 06:944F: 20        .byte $20   ; 
- D 0 - I - 0x019460 06:9450: 8E        .byte $8E   ; 
- D 0 - I - 0x019461 06:9451: 31        .byte $31   ; 
- D 0 - I - 0x019462 06:9452: 2E        .byte $2E   ; 
- D 0 - I - 0x019463 06:9453: 51        .byte $51   ; 
- D 0 - I - 0x019464 06:9454: E0        .byte $E0   ; 
- D 0 - I - 0x019465 06:9455: 52        .byte $52   ; 
- D 0 - I - 0x019466 06:9456: A7        .byte $A7   ; 
- D 0 - I - 0x019467 06:9457: 53        .byte $53   ; 
- D 0 - I - 0x019468 06:9458: 57        .byte $57   ; 
- D 0 - I - 0x019469 06:9459: 53        .byte $53   ; 
- D 0 - I - 0x01946A 06:945A: FA        .byte $FA   ; 
- D 0 - I - 0x01946B 06:945B: 53        .byte $53   ; 
- D 0 - I - 0x01946C 06:945C: FA        .byte $FA   ; 
- D 0 - I - 0x01946D 06:945D: FF        .byte $FF   ; 



_off014_18_945E_05:
- D 0 - I - 0x01946E 06:945E: 01        .byte $01   ; 
- D 0 - I - 0x01946F 06:945F: 00        .byte $00   ; 
- D 0 - I - 0x019470 06:9460: F6        .byte $F6   ; 
- D 0 - I - 0x019471 06:9461: 00        .byte $00   ; 
- D 0 - I - 0x019472 06:9462: D6        .byte $D6   ; 
- D 0 - I - 0x019473 06:9463: EA        .byte $EA   ; 
- D 0 - I - 0x019474 06:9464: 04        .byte $04   ; 
- D 0 - I - 0x019475 06:9465: 00        .byte $00   ; 
- D 0 - I - 0x019476 06:9466: 01        .byte $01   ; 
- D 0 - I - 0x019477 06:9467: EA        .byte $EA   ; 
- D 0 - I - 0x019478 06:9468: 05        .byte $05   ; 
- D 0 - I - 0x019479 06:9469: 00        .byte $00   ; 
- D 0 - I - 0x01947A 06:946A: 01        .byte $01   ; 
- D 0 - I - 0x01947B 06:946B: DA        .byte $DA   ; 
- D 0 - I - 0x01947C 06:946C: 0A        .byte $0A   ; 
- D 0 - I - 0x01947D 06:946D: 00        .byte $00   ; 
- D 0 - I - 0x01947E 06:946E: 01        .byte $01   ; 
- D 0 - I - 0x01947F 06:946F: BA        .byte $BA   ; 
- D 0 - I - 0x019480 06:9470: FF        .byte $FF   ; 



_off014_19_9471_04:
- D 0 - I - 0x019481 06:9471: 08        .byte $08   ; 
- D 0 - I - 0x019482 06:9472: B0        .byte $B0   ; 
- D 0 - I - 0x019483 06:9473: 8B        .byte $8B   ; 
- D 0 - I - 0x019484 06:9474: A3        .byte $A3   ; 
- D 0 - I - 0x019485 06:9475: FA        .byte $FA   ; 
- D 0 - I - 0x019486 06:9476: B1        .byte $B1   ; 
- D 0 - I - 0x019487 06:9477: 7D        .byte $7D   ; 
- D 0 - I - 0x019488 06:9478: 70        .byte $70   ; 
- D 0 - I - 0x019489 06:9479: 7F        .byte $7F   ; 
- D 0 - I - 0x01948A 06:947A: 50        .byte $50   ; 
- D 0 - I - 0x01948B 06:947B: 5F        .byte $5F   ; 
- D 0 - I - 0x01948C 06:947C: 40        .byte $40   ; 
- D 0 - I - 0x01948D 06:947D: 5F        .byte $5F   ; 
- D 0 - I - 0x01948E 06:947E: 30        .byte $30   ; 
- D 0 - I - 0x01948F 06:947F: 5F        .byte $5F   ; 
- D 0 - I - 0x019490 06:9480: 20        .byte $20   ; 
- D 0 - I - 0x019491 06:9481: 5F        .byte $5F   ; 
- D 0 - I - 0x019492 06:9482: 10        .byte $10   ; 
- D 0 - I - 0x019493 06:9483: 5F        .byte $5F   ; 
- D 0 - I - 0x019494 06:9484: FF        .byte $FF   ; 



_off014_1A_9485_04:
- D 0 - I - 0x019495 06:9485: 03        .byte $03   ; 
- D 0 - I - 0x019496 06:9486: B0        .byte $B0   ; 
- D 0 - I - 0x019497 06:9487: 83        .byte $83   ; 
- D 0 - I - 0x019498 06:9488: D2        .byte $D2   ; 
- D 0 - I - 0x019499 06:9489: 11        .byte $11   ; 
- D 0 - I - 0x01949A 06:948A: D2        .byte $D2   ; 
- D 0 - I - 0x01949B 06:948B: 11        .byte $11   ; 
- D 0 - I - 0x01949C 06:948C: 06        .byte $06   ; 
- D 0 - I - 0x01949D 06:948D: B0        .byte $B0   ; 
- D 0 - I - 0x01949E 06:948E: 83        .byte $83   ; 
- D 0 - I - 0x01949F 06:948F: C0        .byte $C0   ; 
- D 0 - I - 0x0194A0 06:9490: B8        .byte $B8   ; 
- D 0 - I - 0x0194A1 06:9491: B0        .byte $B0   ; 
- D 0 - I - 0x0194A2 06:9492: BC        .byte $BC   ; 
- D 0 - I - 0x0194A3 06:9493: A0        .byte $A0   ; 
- D 0 - I - 0x0194A4 06:9494: C0        .byte $C0   ; 
- D 0 - I - 0x0194A5 06:9495: 90        .byte $90   ; 
- D 0 - I - 0x0194A6 06:9496: C5        .byte $C5   ; 
- D 0 - I - 0x0194A7 06:9497: 70        .byte $70   ; 
- D 0 - I - 0x0194A8 06:9498: CA        .byte $CA   ; 
- D 0 - I - 0x0194A9 06:9499: 50        .byte $50   ; 
- D 0 - I - 0x0194AA 06:949A: CF        .byte $CF   ; 
- D 0 - I - 0x0194AB 06:949B: 30        .byte $30   ; 
- D 0 - I - 0x0194AC 06:949C: D4        .byte $D4   ; 
- D 0 - I - 0x0194AD 06:949D: FF        .byte $FF   ; 



_off014_1A_949E_05:
- D 0 - I - 0x0194AE 06:949E: 01        .byte $01   ; 
- D 0 - I - 0x0194AF 06:949F: FB        .byte $FB   ; 
- D 0 - I - 0x0194B0 06:94A0: EE        .byte $EE   ; 
- D 0 - I - 0x0194B1 06:94A1: EF        .byte $EF   ; 
- D 0 - I - 0x0194B2 06:94A2: FE        .byte $FE   ; 
- D 0 - I - 0x0194B3 06:94A3: 02        .byte $02   ; 
- D 0 - I - 0x0194B4 06:94A4: 05        .byte $05   ; 
- D 0 - I - 0x0194B5 06:94A5: EF        .byte $EF   ; 
- D 0 - I - 0x0194B6 06:94A6: EA        .byte $EA   ; 
- D 0 - I - 0x0194B7 06:94A7: EF        .byte $EF   ; 
- D 0 - I - 0x0194B8 06:94A8: EA        .byte $EA   ; 
- D 0 - I - 0x0194B9 06:94A9: EF        .byte $EF   ; 
- D 0 - I - 0x0194BA 06:94AA: EC        .byte $EC   ; 
- D 0 - I - 0x0194BB 06:94AB: EC        .byte $EC   ; 
- D 0 - I - 0x0194BC 06:94AC: EB        .byte $EB   ; 
- D 0 - I - 0x0194BD 06:94AD: EB        .byte $EB   ; 
- D 0 - I - 0x0194BE 06:94AE: DB        .byte $DB   ; 
- D 0 - I - 0x0194BF 06:94AF: CC        .byte $CC   ; 
- D 0 - I - 0x0194C0 06:94B0: BD        .byte $BD   ; 
- D 0 - I - 0x0194C1 06:94B1: AD        .byte $AD   ; 
- D 0 - I - 0x0194C2 06:94B2: 9C        .byte $9C   ; 
- D 0 - I - 0x0194C3 06:94B3: 8C        .byte $8C   ; 
- D 0 - I - 0x0194C4 06:94B4: AC        .byte $AC   ; 
- D 0 - I - 0x0194C5 06:94B5: 6C        .byte $6C   ; 
- D 0 - I - 0x0194C6 06:94B6: 5C        .byte $5C   ; 
- D 0 - I - 0x0194C7 06:94B7: 03        .byte $03   ; 
- D 0 - I - 0x0194C8 06:94B8: 4C        .byte $4C   ; 
- D 0 - I - 0x0194C9 06:94B9: 3C        .byte $3C   ; 
- D 0 - I - 0x0194CA 06:94BA: 2D        .byte $2D   ; 
- D 0 - I - 0x0194CB 06:94BB: 1D        .byte $1D   ; 
- D 0 - I - 0x0194CC 06:94BC: 1C        .byte $1C   ; 
- D 0 - I - 0x0194CD 06:94BD: FF        .byte $FF   ; 



_off014_1B_94BE_04:
- D 0 - I - 0x0194CE 06:94BE: 08        .byte $08   ; 
- D 0 - I - 0x0194CF 06:94BF: B0        .byte $B0   ; 
- D 0 - I - 0x0194D0 06:94C0: 83        .byte $83   ; 
- D 0 - I - 0x0194D1 06:94C1: F1        .byte $F1   ; 
- D 0 - I - 0x0194D2 06:94C2: 0D        .byte $0D   ; 
- D 0 - I - 0x0194D3 06:94C3: 08        .byte $08   ; 
- D 0 - I - 0x0194D4 06:94C4: F0        .byte $F0   ; 
- D 0 - I - 0x0194D5 06:94C5: 82        .byte $82   ; 
- D 0 - I - 0x0194D6 06:94C6: F0        .byte $F0   ; 
- D 0 - I - 0x0194D7 06:94C7: FE        .byte $FE   ; 
- D 0 - I - 0x0194D8 06:94C8: C0        .byte $C0   ; 
- D 0 - I - 0x0194D9 06:94C9: D5        .byte $D5   ; 
- D 0 - I - 0x0194DA 06:94CA: 50        .byte $50   ; 
- D 0 - I - 0x0194DB 06:94CB: B3        .byte $B3   ; 
- D 0 - I - 0x0194DC 06:94CC: 30        .byte $30   ; 
- D 0 - I - 0x0194DD 06:94CD: A0        .byte $A0   ; 
- D 0 - I - 0x0194DE 06:94CE: 10        .byte $10   ; 
- D 0 - I - 0x0194DF 06:94CF: A0        .byte $A0   ; 
- D 0 - I - 0x0194E0 06:94D0: FF        .byte $FF   ; 



_off014_1B_94D1_05:
- D 0 - I - 0x0194E1 06:94D1: 05        .byte $05   ; 
- D 0 - I - 0x0194E2 06:94D2: 1F        .byte $1F   ; 
- D 0 - I - 0x0194E3 06:94D3: 03        .byte $03   ; 
- D 0 - I - 0x0194E4 06:94D4: FB        .byte $FB   ; 
- D 0 - I - 0x0194E5 06:94D5: ED        .byte $ED   ; 
- D 0 - I - 0x0194E6 06:94D6: 78        .byte $78   ; 
- D 0 - I - 0x0194E7 06:94D7: FE        .byte $FE   ; 
- D 0 - I - 0x0194E8 06:94D8: 02        .byte $02   ; 
- D 0 - I - 0x0194E9 06:94D9: 02        .byte $02   ; 
- D 0 - I - 0x0194EA 06:94DA: B8        .byte $B8   ; 
- D 0 - I - 0x0194EB 06:94DB: AD        .byte $AD   ; 
- D 0 - I - 0x0194EC 06:94DC: 01        .byte $01   ; 
- D 0 - I - 0x0194ED 06:94DD: F6        .byte $F6   ; 
- D 0 - I - 0x0194EE 06:94DE: 6F        .byte $6F   ; 
- D 0 - I - 0x0194EF 06:94DF: E6        .byte $E6   ; 
- D 0 - I - 0x0194F0 06:94E0: EA        .byte $EA   ; 
- D 0 - I - 0x0194F1 06:94E1: 03        .byte $03   ; 
- D 0 - I - 0x0194F2 06:94E2: EE        .byte $EE   ; 
- D 0 - I - 0x0194F3 06:94E3: DE        .byte $DE   ; 
- D 0 - I - 0x0194F4 06:94E4: BE        .byte $BE   ; 
- D 0 - I - 0x0194F5 06:94E5: 9D        .byte $9D   ; 
- D 0 - I - 0x0194F6 06:94E6: 7E        .byte $7E   ; 
- D 0 - I - 0x0194F7 06:94E7: 5E        .byte $5E   ; 
- D 0 - I - 0x0194F8 06:94E8: 4D        .byte $4D   ; 
- D 0 - I - 0x0194F9 06:94E9: 3E        .byte $3E   ; 
- D 0 - I - 0x0194FA 06:94EA: 2E        .byte $2E   ; 
- D 0 - I - 0x0194FB 06:94EB: 1F        .byte $1F   ; 
- D 0 - I - 0x0194FC 06:94EC: FF        .byte $FF   ; 



_off014_1C_94ED_04:
- D 0 - I - 0x0194FD 06:94ED: FF        .byte $FF   ; 



_off014_1C_94EE_05:
- D 0 - I - 0x0194FE 06:94EE: 01        .byte $01   ; 
- D 0 - I - 0x0194FF 06:94EF: FB        .byte $FB   ; 
- D 0 - I - 0x019500 06:94F0: 10        .byte $10   ; 
- D 0 - I - 0x019501 06:94F1: FE        .byte $FE   ; 
- D 0 - I - 0x019502 06:94F2: 10        .byte $10   ; 
- D 0 - I - 0x019503 06:94F3: EF        .byte $EF   ; 
- D 0 - I - 0x019504 06:94F4: FE        .byte $FE   ; 
- D 0 - I - 0x019505 06:94F5: 04        .byte $04   ; 
- D 0 - I - 0x019506 06:94F6: 02        .byte $02   ; 
- D 0 - I - 0x019507 06:94F7: 10        .byte $10   ; 
- D 0 - I - 0x019508 06:94F8: EF        .byte $EF   ; 
- D 0 - I - 0x019509 06:94F9: 10        .byte $10   ; 
- D 0 - I - 0x01950A 06:94FA: F8        .byte $F8   ; 
- D 0 - I - 0x01950B 06:94FB: 10        .byte $10   ; 
- D 0 - I - 0x01950C 06:94FC: EF        .byte $EF   ; 
- D 0 - I - 0x01950D 06:94FD: 07        .byte $07   ; 
- D 0 - I - 0x01950E 06:94FE: 10        .byte $10   ; 
- D 0 - I - 0x01950F 06:94FF: FC        .byte $FC   ; 
- D 0 - I - 0x019510 06:9500: 10        .byte $10   ; 
- D 0 - I - 0x019511 06:9501: FB        .byte $FB   ; 
- D 0 - I - 0x019512 06:9502: 10        .byte $10   ; 
- D 0 - I - 0x019513 06:9503: FB        .byte $FB   ; 
- D 0 - I - 0x019514 06:9504: EB        .byte $EB   ; 
- D 0 - I - 0x019515 06:9505: DB        .byte $DB   ; 
- D 0 - I - 0x019516 06:9506: CD        .byte $CD   ; 
- D 0 - I - 0x019517 06:9507: BC        .byte $BC   ; 
- D 0 - I - 0x019518 06:9508: AB        .byte $AB   ; 
- D 0 - I - 0x019519 06:9509: 9B        .byte $9B   ; 
- D 0 - I - 0x01951A 06:950A: 8B        .byte $8B   ; 
- D 0 - I - 0x01951B 06:950B: 7B        .byte $7B   ; 
- D 0 - I - 0x01951C 06:950C: 6C        .byte $6C   ; 
- D 0 - I - 0x01951D 06:950D: 5B        .byte $5B   ; 
- D 0 - I - 0x01951E 06:950E: 4B        .byte $4B   ; 
- D 0 - I - 0x01951F 06:950F: 3C        .byte $3C   ; 
- D 0 - I - 0x019520 06:9510: 2C        .byte $2C   ; 
- D 0 - I - 0x019521 06:9511: 1B        .byte $1B   ; 
- D 0 - I - 0x019522 06:9512: FF        .byte $FF   ; 



_off014_0A_9513_04:
- D 0 - I - 0x019523 06:9513: 01        .byte $01   ; 
- D 0 - I - 0x019524 06:9514: 70        .byte $70   ; 
- D 0 - I - 0x019525 06:9515: A2        .byte $A2   ; 
- D 0 - I - 0x019526 06:9516: FB        .byte $FB   ; 
- D 0 - I - 0x019527 06:9517: F3        .byte $F3   ; 
- D 0 - I - 0x019528 06:9518: BA        .byte $BA   ; 
- D 0 - I - 0x019529 06:9519: 83        .byte $83   ; 
- D 0 - I - 0x01952A 06:951A: 97        .byte $97   ; 
- D 0 - I - 0x01952B 06:951B: 53        .byte $53   ; 
- D 0 - I - 0x01952C 06:951C: 37        .byte $37   ; 
- D 0 - I - 0x01952D 06:951D: 23        .byte $23   ; 
- D 0 - I - 0x01952E 06:951E: 17        .byte $17   ; 
- D 0 - I - 0x01952F 06:951F: FE        .byte $FE   ; 
- D 0 - I - 0x019530 06:9520: 18        .byte $18   ; 
- D 0 - I - 0x019531 06:9521: FB        .byte $FB   ; 
- D 0 - I - 0x019532 06:9522: B3        .byte $B3   ; 
- D 0 - I - 0x019533 06:9523: 8A        .byte $8A   ; 
- D 0 - I - 0x019534 06:9524: 33        .byte $33   ; 
- D 0 - I - 0x019535 06:9525: 37        .byte $37   ; 
- D 0 - I - 0x019536 06:9526: 23        .byte $23   ; 
- D 0 - I - 0x019537 06:9527: 27        .byte $27   ; 
- D 0 - I - 0x019538 06:9528: 13        .byte $13   ; 
- D 0 - I - 0x019539 06:9529: 27        .byte $27   ; 
- D 0 - I - 0x01953A 06:952A: FE        .byte $FE   ; 
- D 0 - I - 0x01953B 06:952B: 03        .byte $03   ; 
- D 0 - I - 0x01953C 06:952C: FB        .byte $FB   ; 
- D 0 - I - 0x01953D 06:952D: 73        .byte $73   ; 
- D 0 - I - 0x01953E 06:952E: 8A        .byte $8A   ; 
- D 0 - I - 0x01953F 06:952F: 33        .byte $33   ; 
- D 0 - I - 0x019540 06:9530: 37        .byte $37   ; 
- D 0 - I - 0x019541 06:9531: 23        .byte $23   ; 
- D 0 - I - 0x019542 06:9532: 27        .byte $27   ; 
- D 0 - I - 0x019543 06:9533: 13        .byte $13   ; 
- D 0 - I - 0x019544 06:9534: 27        .byte $27   ; 
- D 0 - I - 0x019545 06:9535: FE        .byte $FE   ; 
- D 0 - I - 0x019546 06:9536: 03        .byte $03   ; 
- D 0 - I - 0x019547 06:9537: FB        .byte $FB   ; 
- D 0 - I - 0x019548 06:9538: 43        .byte $43   ; 
- D 0 - I - 0x019549 06:9539: 8A        .byte $8A   ; 
- D 0 - I - 0x01954A 06:953A: 33        .byte $33   ; 
- D 0 - I - 0x01954B 06:953B: 37        .byte $37   ; 
- D 0 - I - 0x01954C 06:953C: 23        .byte $23   ; 
- D 0 - I - 0x01954D 06:953D: 27        .byte $27   ; 
- D 0 - I - 0x01954E 06:953E: 13        .byte $13   ; 
- D 0 - I - 0x01954F 06:953F: 27        .byte $27   ; 
- D 0 - I - 0x019550 06:9540: FE        .byte $FE   ; 
- D 0 - I - 0x019551 06:9541: 03        .byte $03   ; 
- D 0 - I - 0x019552 06:9542: FF        .byte $FF   ; 



_off014_0A_9543_05:
- D 0 - I - 0x019553 06:9543: 02        .byte $02   ; 
- D 0 - I - 0x019554 06:9544: FB        .byte $FB   ; 
- D 0 - I - 0x019555 06:9545: 6E        .byte $6E   ; 
- D 0 - I - 0x019556 06:9546: 5E        .byte $5E   ; 
- D 0 - I - 0x019557 06:9547: FE        .byte $FE   ; 
- D 0 - I - 0x019558 06:9548: 03        .byte $03   ; 
- D 0 - I - 0x019559 06:9549: 02        .byte $02   ; 
- D 0 - I - 0x01955A 06:954A: FB        .byte $FB   ; 
- D 0 - I - 0x01955B 06:954B: EA        .byte $EA   ; 
- D 0 - I - 0x01955C 06:954C: EF        .byte $EF   ; 
- D 0 - I - 0x01955D 06:954D: FE        .byte $FE   ; 
- D 0 - I - 0x01955E 06:954E: 02        .byte $02   ; 
- D 0 - I - 0x01955F 06:954F: 0A        .byte $0A   ; 
- D 0 - I - 0x019560 06:9550: EE        .byte $EE   ; 
- D 0 - I - 0x019561 06:9551: 01        .byte $01   ; 
- D 0 - I - 0x019562 06:9552: EF        .byte $EF   ; 
- D 0 - I - 0x019563 06:9553: 02        .byte $02   ; 
- D 0 - I - 0x019564 06:9554: FB        .byte $FB   ; 
- D 0 - I - 0x019565 06:9555: EA        .byte $EA   ; 
- D 0 - I - 0x019566 06:9556: EF        .byte $EF   ; 
- D 0 - I - 0x019567 06:9557: FE        .byte $FE   ; 
- D 0 - I - 0x019568 06:9558: 04        .byte $04   ; 
- D 0 - I - 0x019569 06:9559: 0A        .byte $0A   ; 
- D 0 - I - 0x01956A 06:955A: ED        .byte $ED   ; 
- D 0 - I - 0x01956B 06:955B: 01        .byte $01   ; 
- D 0 - I - 0x01956C 06:955C: EF        .byte $EF   ; 
- D 0 - I - 0x01956D 06:955D: 0A        .byte $0A   ; 
- D 0 - I - 0x01956E 06:955E: ED        .byte $ED   ; 
- D 0 - I - 0x01956F 06:955F: ED        .byte $ED   ; 
- D 0 - I - 0x019570 06:9560: 03        .byte $03   ; 
- D 0 - I - 0x019571 06:9561: FB        .byte $FB   ; 
- D 0 - I - 0x019572 06:9562: E9        .byte $E9   ; 
- D 0 - I - 0x019573 06:9563: EF        .byte $EF   ; 
- D 0 - I - 0x019574 06:9564: FE        .byte $FE   ; 
- D 0 - I - 0x019575 06:9565: 04        .byte $04   ; 
- D 0 - I - 0x019576 06:9566: 0A        .byte $0A   ; 
- D 0 - I - 0x019577 06:9567: ED        .byte $ED   ; 
- D 0 - I - 0x019578 06:9568: 01        .byte $01   ; 
- D 0 - I - 0x019579 06:9569: EF        .byte $EF   ; 
- D 0 - I - 0x01957A 06:956A: 03        .byte $03   ; 
- D 0 - I - 0x01957B 06:956B: EA        .byte $EA   ; 
- D 0 - I - 0x01957C 06:956C: EF        .byte $EF   ; 
- D 0 - I - 0x01957D 06:956D: 0A        .byte $0A   ; 
- D 0 - I - 0x01957E 06:956E: ED        .byte $ED   ; 
- D 0 - I - 0x01957F 06:956F: 01        .byte $01   ; 
- D 0 - I - 0x019580 06:9570: EF        .byte $EF   ; 
- D 0 - I - 0x019581 06:9571: 07        .byte $07   ; 
- D 0 - I - 0x019582 06:9572: EC        .byte $EC   ; 
- D 0 - I - 0x019583 06:9573: EB        .byte $EB   ; 
- D 0 - I - 0x019584 06:9574: DB        .byte $DB   ; 
- D 0 - I - 0x019585 06:9575: CB        .byte $CB   ; 
- D 0 - I - 0x019586 06:9576: BB        .byte $BB   ; 
- D 0 - I - 0x019587 06:9577: AB        .byte $AB   ; 
- D 0 - I - 0x019588 06:9578: 9B        .byte $9B   ; 
- D 0 - I - 0x019589 06:9579: 8B        .byte $8B   ; 
- D 0 - I - 0x01958A 06:957A: 7B        .byte $7B   ; 
- D 0 - I - 0x01958B 06:957B: 6B        .byte $6B   ; 
- D 0 - I - 0x01958C 06:957C: 5C        .byte $5C   ; 
- D 0 - I - 0x01958D 06:957D: 4B        .byte $4B   ; 
- D 0 - I - 0x01958E 06:957E: 3B        .byte $3B   ; 
- D 0 - I - 0x01958F 06:957F: 2C        .byte $2C   ; 
- D 0 - I - 0x019590 06:9580: 1C        .byte $1C   ; 
- D 0 - I - 0x019591 06:9581: FF        .byte $FF   ; 



_off014_1D_9582_05:
- D 0 - I - 0x019592 06:9582: 03        .byte $03   ; 
- D 0 - I - 0x019593 06:9583: EA        .byte $EA   ; 
- D 0 - I - 0x019594 06:9584: EF        .byte $EF   ; 
- D 0 - I - 0x019595 06:9585: 0A        .byte $0A   ; 
- D 0 - I - 0x019596 06:9586: ED        .byte $ED   ; 
- D 0 - I - 0x019597 06:9587: 01        .byte $01   ; 
- D 0 - I - 0x019598 06:9588: EF        .byte $EF   ; 
- D 0 - I - 0x019599 06:9589: 05        .byte $05   ; 
- D 0 - I - 0x01959A 06:958A: ED        .byte $ED   ; 
- D 0 - I - 0x01959B 06:958B: ED        .byte $ED   ; 
- D 0 - I - 0x01959C 06:958C: EE        .byte $EE   ; 
- D 0 - I - 0x01959D 06:958D: ED        .byte $ED   ; 
- D 0 - I - 0x01959E 06:958E: EE        .byte $EE   ; 
- D 0 - I - 0x01959F 06:958F: ED        .byte $ED   ; 
- D 0 - I - 0x0195A0 06:9590: EE        .byte $EE   ; 
- D 0 - I - 0x0195A1 06:9591: ED        .byte $ED   ; 
- D 0 - I - 0x0195A2 06:9592: 9E        .byte $9E   ; 
- D 0 - I - 0x0195A3 06:9593: 8D        .byte $8D   ; 
- D 0 - I - 0x0195A4 06:9594: 7E        .byte $7E   ; 
- D 0 - I - 0x0195A5 06:9595: 6D        .byte $6D   ; 
- D 0 - I - 0x0195A6 06:9596: 5E        .byte $5E   ; 
- D 0 - I - 0x0195A7 06:9597: 4D        .byte $4D   ; 
- D 0 - I - 0x0195A8 06:9598: 3E        .byte $3E   ; 
- D 0 - I - 0x0195A9 06:9599: 2D        .byte $2D   ; 
- D 0 - I - 0x0195AA 06:959A: 1E        .byte $1E   ; 
- D 0 - I - 0x0195AB 06:959B: 1D        .byte $1D   ; 
- D 0 - I - 0x0195AC 06:959C: FF        .byte $FF   ; 



_off014_1E_959D_04:
_off014_1E_959D_05:
- - - - - - 0x0195AD 06:959D: FF        .byte $FF   ; 



_off014_1F_959E_04:
- D 0 - I - 0x0195AE 06:959E: 02        .byte $02   ; 
- D 0 - I - 0x0195AF 06:959F: B0        .byte $B0   ; 
- D 0 - I - 0x0195B0 06:95A0: 84        .byte $84   ; 
- D 0 - I - 0x0195B1 06:95A1: 50        .byte $50   ; 
- D 0 - I - 0x0195B2 06:95A2: 0A        .byte $0A   ; 
- D 0 - I - 0x0195B3 06:95A3: 02        .byte $02   ; 
- D 0 - I - 0x0195B4 06:95A4: 30        .byte $30   ; 
- D 0 - I - 0x0195B5 06:95A5: 84        .byte $84   ; 
- D 0 - I - 0x0195B6 06:95A6: 50        .byte $50   ; 
- D 0 - I - 0x0195B7 06:95A7: 0B        .byte $0B   ; 
- D 0 - I - 0x0195B8 06:95A8: FF        .byte $FF   ; 



_off014_1F_95A9_05:
- D 0 - I - 0x0195B9 06:95A9: 01        .byte $01   ; 
- D 0 - I - 0x0195BA 06:95AA: EC        .byte $EC   ; 
- D 0 - I - 0x0195BB 06:95AB: 02        .byte $02   ; 
- D 0 - I - 0x0195BC 06:95AC: CF        .byte $CF   ; 
- D 0 - I - 0x0195BD 06:95AD: B9        .byte $B9   ; 
- D 0 - I - 0x0195BE 06:95AE: AF        .byte $AF   ; 
- D 0 - I - 0x0195BF 06:95AF: 01        .byte $01   ; 
- D 0 - I - 0x0195C0 06:95B0: 99        .byte $99   ; 
- D 0 - I - 0x0195C1 06:95B1: BF        .byte $BF   ; 
- D 0 - I - 0x0195C2 06:95B2: 02        .byte $02   ; 
- D 0 - I - 0x0195C3 06:95B3: 79        .byte $79   ; 
- D 0 - I - 0x0195C4 06:95B4: 6F        .byte $6F   ; 
- D 0 - I - 0x0195C5 06:95B5: 03        .byte $03   ; 
- D 0 - I - 0x0195C6 06:95B6: 59        .byte $59   ; 
- D 0 - I - 0x0195C7 06:95B7: 4F        .byte $4F   ; 
- D 0 - I - 0x0195C8 06:95B8: 39        .byte $39   ; 
- D 0 - I - 0x0195C9 06:95B9: 2F        .byte $2F   ; 
- D 0 - I - 0x0195CA 06:95BA: 03        .byte $03   ; 
- D 0 - I - 0x0195CB 06:95BB: 29        .byte $29   ; 
- D 0 - I - 0x0195CC 06:95BC: 1F        .byte $1F   ; 
- D 0 - I - 0x0195CD 06:95BD: 19        .byte $19   ; 
- D 0 - I - 0x0195CE 06:95BE: 1F        .byte $1F   ; 
- D 0 - I - 0x0195CF 06:95BF: FF        .byte $FF   ; 



_off014_08_95C0_04:
- D 0 - I - 0x0195D0 06:95C0: FF        .byte $FF   ; 



_off014_08_95C1_05:
- D 0 - I - 0x0195D1 06:95C1: 01        .byte $01   ; 
- D 0 - I - 0x0195D2 06:95C2: EC        .byte $EC   ; 
- D 0 - I - 0x0195D3 06:95C3: ED        .byte $ED   ; 
- D 0 - I - 0x0195D4 06:95C4: ED        .byte $ED   ; 
- D 0 - I - 0x0195D5 06:95C5: 7C        .byte $7C   ; 
- D 0 - I - 0x0195D6 06:95C6: EE        .byte $EE   ; 
- D 0 - I - 0x0195D7 06:95C7: EE        .byte $EE   ; 
- D 0 - I - 0x0195D8 06:95C8: EF        .byte $EF   ; 
- D 0 - I - 0x0195D9 06:95C9: EE        .byte $EE   ; 
- D 0 - I - 0x0195DA 06:95CA: BB        .byte $BB   ; 
- D 0 - I - 0x0195DB 06:95CB: BF        .byte $BF   ; 
- D 0 - I - 0x0195DC 06:95CC: BD        .byte $BD   ; 
- D 0 - I - 0x0195DD 06:95CD: BC        .byte $BC   ; 
- D 0 - I - 0x0195DE 06:95CE: EF        .byte $EF   ; 
- D 0 - I - 0x0195DF 06:95CF: EF        .byte $EF   ; 
- D 0 - I - 0x0195E0 06:95D0: EE        .byte $EE   ; 
- D 0 - I - 0x0195E1 06:95D1: EF        .byte $EF   ; 
- D 0 - I - 0x0195E2 06:95D2: FF        .byte $FF   ; 



_off014_20_95D3_05:
- D 0 - I - 0x0195E3 06:95D3: 01        .byte $01   ; 
- D 0 - I - 0x0195E4 06:95D4: ED        .byte $ED   ; 
- D 0 - I - 0x0195E5 06:95D5: EE        .byte $EE   ; 
- D 0 - I - 0x0195E6 06:95D6: EF        .byte $EF   ; 
- D 0 - I - 0x0195E7 06:95D7: EF        .byte $EF   ; 
- D 0 - I - 0x0195E8 06:95D8: 03        .byte $03   ; 
- D 0 - I - 0x0195E9 06:95D9: FB        .byte $FB   ; 
- D 0 - I - 0x0195EA 06:95DA: EF        .byte $EF   ; 
- D 0 - I - 0x0195EB 06:95DB: EC        .byte $EC   ; 
- D 0 - I - 0x0195EC 06:95DC: FE        .byte $FE   ; 
- D 0 - I - 0x0195ED 06:95DD: 04        .byte $04   ; 
- D 0 - I - 0x0195EE 06:95DE: FF        .byte $FF   ; 



_off014_21_95DF_04:
- D 0 - I - 0x0195EF 06:95DF: 01        .byte $01   ; 
- D 0 - I - 0x0195F0 06:95E0: 30        .byte $30   ; 
- D 0 - I - 0x0195F1 06:95E1: F8        .byte $F8   ; 
- D 0 - I - 0x0195F2 06:95E2: FB        .byte $FB   ; 
- D 0 - I - 0x0195F3 06:95E3: 53        .byte $53   ; 
- D 0 - I - 0x0195F4 06:95E4: C0        .byte $C0   ; 
- D 0 - I - 0x0195F5 06:95E5: 63        .byte $63   ; 
- D 0 - I - 0x0195F6 06:95E6: 8A        .byte $8A   ; 
- D 0 - I - 0x0195F7 06:95E7: 73        .byte $73   ; 
- D 0 - I - 0x0195F8 06:95E8: 57        .byte $57   ; 
- D 0 - I - 0x0195F9 06:95E9: 73        .byte $73   ; 
- D 0 - I - 0x0195FA 06:95EA: 27        .byte $27   ; 
- D 0 - I - 0x0195FB 06:95EB: 72        .byte $72   ; 
- D 0 - I - 0x0195FC 06:95EC: FA        .byte $FA   ; 
- D 0 - I - 0x0195FD 06:95ED: 72        .byte $72   ; 
- D 0 - I - 0x0195FE 06:95EE: CF        .byte $CF   ; 
- D 0 - I - 0x0195FF 06:95EF: 72        .byte $72   ; 
- D 0 - I - 0x019600 06:95F0: A7        .byte $A7   ; 
- D 0 - I - 0x019601 06:95F1: 72        .byte $72   ; 
- D 0 - I - 0x019602 06:95F2: 81        .byte $81   ; 
- D 0 - I - 0x019603 06:95F3: 72        .byte $72   ; 
- D 0 - I - 0x019604 06:95F4: 5D        .byte $5D   ; 
- D 0 - I - 0x019605 06:95F5: 72        .byte $72   ; 
- D 0 - I - 0x019606 06:95F6: 3B        .byte $3B   ; 
- D 0 - I - 0x019607 06:95F7: 72        .byte $72   ; 
- D 0 - I - 0x019608 06:95F8: 1B        .byte $1B   ; 
- D 0 - I - 0x019609 06:95F9: 71        .byte $71   ; 
- D 0 - I - 0x01960A 06:95FA: FD        .byte $FD   ; 
- D 0 - I - 0x01960B 06:95FB: 0F        .byte $0F   ; 
- D 0 - I - 0x01960C 06:95FC: 30        .byte $30   ; 
- D 0 - I - 0x01960D 06:95FD: 88        .byte $88   ; 
- D 0 - I - 0x01960E 06:95FE: 81        .byte $81   ; 
- D 0 - I - 0x01960F 06:95FF: E0        .byte $E0   ; 
- D 0 - I - 0x019610 06:9600: 81        .byte $81   ; 
- D 0 - I - 0x019611 06:9601: E0        .byte $E0   ; 
- D 0 - I - 0x019612 06:9602: 0A        .byte $0A   ; 
- D 0 - I - 0x019613 06:9603: 30        .byte $30   ; 
- D 0 - I - 0x019614 06:9604: 88        .byte $88   ; 
- D 0 - I - 0x019615 06:9605: 11        .byte $11   ; 
- D 0 - I - 0x019616 06:9606: E0        .byte $E0   ; 
- D 0 - I - 0x019617 06:9607: 21        .byte $21   ; 
- D 0 - I - 0x019618 06:9608: E0        .byte $E0   ; 
- D 0 - I - 0x019619 06:9609: 09        .byte $09   ; 
- D 0 - I - 0x01961A 06:960A: 30        .byte $30   ; 
- D 0 - I - 0x01961B 06:960B: 88        .byte $88   ; 
- D 0 - I - 0x01961C 06:960C: 00        .byte $00   ; 
- D 0 - I - 0x01961D 06:960D: 11        .byte $11   ; 
- D 0 - I - 0x01961E 06:960E: E0        .byte $E0   ; 
- D 0 - I - 0x01961F 06:960F: 01        .byte $01   ; 
- D 0 - I - 0x019620 06:9610: 30        .byte $30   ; 
- D 0 - I - 0x019621 06:9611: F8        .byte $F8   ; 
- D 0 - I - 0x019622 06:9612: FE        .byte $FE   ; 
- D 0 - I - 0x019623 06:9613: 04        .byte $04   ; 
- D 0 - I - 0x019624 06:9614: FF        .byte $FF   ; 



_off014_22_9615_04:
- D 0 - I - 0x019625 06:9615: 02        .byte $02   ; 
- D 0 - I - 0x019626 06:9616: B0        .byte $B0   ; 
- D 0 - I - 0x019627 06:9617: 82        .byte $82   ; 
- D 0 - I - 0x019628 06:9618: F2        .byte $F2   ; 
- D 0 - I - 0x019629 06:9619: 70        .byte $70   ; 
- D 0 - I - 0x01962A 06:961A: 03        .byte $03   ; 
- D 0 - I - 0x01962B 06:961B: B0        .byte $B0   ; 
- D 0 - I - 0x01962C 06:961C: 82        .byte $82   ; 
- D 0 - I - 0x01962D 06:961D: 00        .byte $00   ; 
- D 0 - I - 0x01962E 06:961E: 03        .byte $03   ; 
- D 0 - I - 0x01962F 06:961F: B0        .byte $B0   ; 
- D 0 - I - 0x019630 06:9620: 82        .byte $82   ; 
- D 0 - I - 0x019631 06:9621: 23        .byte $23   ; 
- D 0 - I - 0x019632 06:9622: B0        .byte $B0   ; 
- D 0 - I - 0x019633 06:9623: F1        .byte $F1   ; 
- D 0 - I - 0x019634 06:9624: AB        .byte $AB   ; 
- D 0 - I - 0x019635 06:9625: F1        .byte $F1   ; 
- D 0 - I - 0x019636 06:9626: 53        .byte $53   ; 
- D 0 - I - 0x019637 06:9627: F1        .byte $F1   ; 
- D 0 - I - 0x019638 06:9628: AB        .byte $AB   ; 
- D 0 - I - 0x019639 06:9629: F1        .byte $F1   ; 
- D 0 - I - 0x01963A 06:962A: 53        .byte $53   ; 
- D 0 - I - 0x01963B 06:962B: E1        .byte $E1   ; 
- D 0 - I - 0x01963C 06:962C: AB        .byte $AB   ; 
- D 0 - I - 0x01963D 06:962D: D1        .byte $D1   ; 
- D 0 - I - 0x01963E 06:962E: 53        .byte $53   ; 
- D 0 - I - 0x01963F 06:962F: C1        .byte $C1   ; 
- D 0 - I - 0x019640 06:9630: AB        .byte $AB   ; 
- D 0 - I - 0x019641 06:9631: B1        .byte $B1   ; 
- D 0 - I - 0x019642 06:9632: 53        .byte $53   ; 
- D 0 - I - 0x019643 06:9633: A1        .byte $A1   ; 
- D 0 - I - 0x019644 06:9634: AB        .byte $AB   ; 
- D 0 - I - 0x019645 06:9635: 91        .byte $91   ; 
- D 0 - I - 0x019646 06:9636: 53        .byte $53   ; 
- D 0 - I - 0x019647 06:9637: 81        .byte $81   ; 
- D 0 - I - 0x019648 06:9638: AB        .byte $AB   ; 
- D 0 - I - 0x019649 06:9639: 71        .byte $71   ; 
- D 0 - I - 0x01964A 06:963A: 53        .byte $53   ; 
- D 0 - I - 0x01964B 06:963B: 61        .byte $61   ; 
- D 0 - I - 0x01964C 06:963C: AB        .byte $AB   ; 
- D 0 - I - 0x01964D 06:963D: 51        .byte $51   ; 
- D 0 - I - 0x01964E 06:963E: 53        .byte $53   ; 
- D 0 - I - 0x01964F 06:963F: 41        .byte $41   ; 
- D 0 - I - 0x019650 06:9640: AB        .byte $AB   ; 
- D 0 - I - 0x019651 06:9641: 31        .byte $31   ; 
- D 0 - I - 0x019652 06:9642: 53        .byte $53   ; 
- D 0 - I - 0x019653 06:9643: 21        .byte $21   ; 
- D 0 - I - 0x019654 06:9644: AB        .byte $AB   ; 
- D 0 - I - 0x019655 06:9645: 11        .byte $11   ; 
- D 0 - I - 0x019656 06:9646: 53        .byte $53   ; 
- D 0 - I - 0x019657 06:9647: FF        .byte $FF   ; 



_off014_22_9648_05:
- D 0 - I - 0x019658 06:9648: 01        .byte $01   ; 
- D 0 - I - 0x019659 06:9649: EC        .byte $EC   ; 
- D 0 - I - 0x01965A 06:964A: 03        .byte $03   ; 
- D 0 - I - 0x01965B 06:964B: CF        .byte $CF   ; 
- D 0 - I - 0x01965C 06:964C: 00        .byte $00   ; 
- D 0 - I - 0x01965D 06:964D: B9        .byte $B9   ; 
- D 0 - I - 0x01965E 06:964E: AF        .byte $AF   ; 
- D 0 - I - 0x01965F 06:964F: 02        .byte $02   ; 
- D 0 - I - 0x019660 06:9650: 99        .byte $99   ; 
- D 0 - I - 0x019661 06:9651: BF        .byte $BF   ; 
- D 0 - I - 0x019662 06:9652: 79        .byte $79   ; 
- D 0 - I - 0x019663 06:9653: 6F        .byte $6F   ; 
- D 0 - I - 0x019664 06:9654: 59        .byte $59   ; 
- D 0 - I - 0x019665 06:9655: 4F        .byte $4F   ; 
- D 0 - I - 0x019666 06:9656: 39        .byte $39   ; 
- D 0 - I - 0x019667 06:9657: 2F        .byte $2F   ; 
- D 0 - I - 0x019668 06:9658: 29        .byte $29   ; 
- D 0 - I - 0x019669 06:9659: 1F        .byte $1F   ; 
- D 0 - I - 0x01966A 06:965A: 19        .byte $19   ; 
- D 0 - I - 0x01966B 06:965B: 1F        .byte $1F   ; 
- D 0 - I - 0x01966C 06:965C: FF        .byte $FF   ; 



_off014_23_965D_04:
- D 0 - I - 0x01966D 06:965D: 01        .byte $01   ; 
- D 0 - I - 0x01966E 06:965E: 70        .byte $70   ; 
- D 0 - I - 0x01966F 06:965F: 88        .byte $88   ; 
- D 0 - I - 0x019670 06:9660: B0        .byte $B0   ; 
- D 0 - I - 0x019671 06:9661: 64        .byte $64   ; 
- D 0 - I - 0x019672 06:9662: B0        .byte $B0   ; 
- D 0 - I - 0x019673 06:9663: 15        .byte $15   ; 
- D 0 - I - 0x019674 06:9664: B0        .byte $B0   ; 
- D 0 - I - 0x019675 06:9665: 59        .byte $59   ; 
- D 0 - I - 0x019676 06:9666: B0        .byte $B0   ; 
- D 0 - I - 0x019677 06:9667: 15        .byte $15   ; 
- D 0 - I - 0x019678 06:9668: FB        .byte $FB   ; 
- D 0 - I - 0x019679 06:9669: B0        .byte $B0   ; 
- D 0 - I - 0x01967A 06:966A: 50        .byte $50   ; 
- D 0 - I - 0x01967B 06:966B: FE        .byte $FE   ; 
- D 0 - I - 0x01967C 06:966C: 04        .byte $04   ; 
- D 0 - I - 0x01967D 06:966D: FB        .byte $FB   ; 
- D 0 - I - 0x01967E 06:966E: B0        .byte $B0   ; 
- D 0 - I - 0x01967F 06:966F: 15        .byte $15   ; 
- D 0 - I - 0x019680 06:9670: FE        .byte $FE   ; 
- D 0 - I - 0x019681 06:9671: 03        .byte $03   ; 
- D 0 - I - 0x019682 06:9672: FB        .byte $FB   ; 
- D 0 - I - 0x019683 06:9673: B0        .byte $B0   ; 
- D 0 - I - 0x019684 06:9674: 64        .byte $64   ; 
- D 0 - I - 0x019685 06:9675: FE        .byte $FE   ; 
- D 0 - I - 0x019686 06:9676: 04        .byte $04   ; 
- D 0 - I - 0x019687 06:9677: FB        .byte $FB   ; 
- D 0 - I - 0x019688 06:9678: B0        .byte $B0   ; 
- D 0 - I - 0x019689 06:9679: 15        .byte $15   ; 
- D 0 - I - 0x01968A 06:967A: FE        .byte $FE   ; 
- D 0 - I - 0x01968B 06:967B: 03        .byte $03   ; 
- D 0 - I - 0x01968C 06:967C: FB        .byte $FB   ; 
- D 0 - I - 0x01968D 06:967D: B0        .byte $B0   ; 
- D 0 - I - 0x01968E 06:967E: 59        .byte $59   ; 
- D 0 - I - 0x01968F 06:967F: FE        .byte $FE   ; 
- D 0 - I - 0x019690 06:9680: 04        .byte $04   ; 
- D 0 - I - 0x019691 06:9681: FB        .byte $FB   ; 
- D 0 - I - 0x019692 06:9682: B0        .byte $B0   ; 
- D 0 - I - 0x019693 06:9683: 15        .byte $15   ; 
- D 0 - I - 0x019694 06:9684: FE        .byte $FE   ; 
- D 0 - I - 0x019695 06:9685: 03        .byte $03   ; 
- D 0 - I - 0x019696 06:9686: 03        .byte $03   ; 
- D 0 - I - 0x019697 06:9687: 70        .byte $70   ; 
- D 0 - I - 0x019698 06:9688: 88        .byte $88   ; 
- D 0 - I - 0x019699 06:9689: B0        .byte $B0   ; 
- D 0 - I - 0x01969A 06:968A: 43        .byte $43   ; 
- D 0 - I - 0x01969B 06:968B: B0        .byte $B0   ; 
- D 0 - I - 0x01969C 06:968C: 15        .byte $15   ; 
- D 0 - I - 0x01969D 06:968D: 50        .byte $50   ; 
- D 0 - I - 0x01969E 06:968E: 43        .byte $43   ; 
- D 0 - I - 0x01969F 06:968F: 50        .byte $50   ; 
- D 0 - I - 0x0196A0 06:9690: 15        .byte $15   ; 
- D 0 - I - 0x0196A1 06:9691: 30        .byte $30   ; 
- D 0 - I - 0x0196A2 06:9692: 43        .byte $43   ; 
- D 0 - I - 0x0196A3 06:9693: 30        .byte $30   ; 
- D 0 - I - 0x0196A4 06:9694: 15        .byte $15   ; 
- D 0 - I - 0x0196A5 06:9695: 10        .byte $10   ; 
- D 0 - I - 0x0196A6 06:9696: 43        .byte $43   ; 
- D 0 - I - 0x0196A7 06:9697: 10        .byte $10   ; 
- D 0 - I - 0x0196A8 06:9698: 15        .byte $15   ; 
- D 0 - I - 0x0196A9 06:9699: FF        .byte $FF   ; 



_off014_25_969A_04:
- D 0 - I - 0x0196AA 06:969A: 03        .byte $03   ; 
- D 0 - I - 0x0196AB 06:969B: F0        .byte $F0   ; 
- D 0 - I - 0x0196AC 06:969C: 81        .byte $81   ; 
- D 0 - I - 0x0196AD 06:969D: F0        .byte $F0   ; 
- D 0 - I - 0x0196AE 06:969E: FE        .byte $FE   ; 
- D 0 - I - 0x0196AF 06:969F: 70        .byte $70   ; 
- D 0 - I - 0x0196B0 06:96A0: FE        .byte $FE   ; 
- D 0 - I - 0x0196B1 06:96A1: 30        .byte $30   ; 
- D 0 - I - 0x0196B2 06:96A2: 02        .byte $02   ; 
- D 0 - I - 0x0196B3 06:96A3: 30        .byte $30   ; 
- D 0 - I - 0x0196B4 06:96A4: 00        .byte $00   ; 
- D 0 - I - 0x0196B5 06:96A5: 02        .byte $02   ; 
- D 0 - I - 0x0196B6 06:96A6: 30        .byte $30   ; 
- D 0 - I - 0x0196B7 06:96A7: 83        .byte $83   ; 
- D 0 - I - 0x0196B8 06:96A8: F0        .byte $F0   ; 
- D 0 - I - 0x0196B9 06:96A9: 8E        .byte $8E   ; 
- D 0 - I - 0x0196BA 06:96AA: F0        .byte $F0   ; 
- D 0 - I - 0x0196BB 06:96AB: 97        .byte $97   ; 
- D 0 - I - 0x0196BC 06:96AC: F0        .byte $F0   ; 
- D 0 - I - 0x0196BD 06:96AD: 9B        .byte $9B   ; 
- D 0 - I - 0x0196BE 06:96AE: F0        .byte $F0   ; 
- D 0 - I - 0x0196BF 06:96AF: AD        .byte $AD   ; 
- D 0 - I - 0x0196C0 06:96B0: F0        .byte $F0   ; 
- D 0 - I - 0x0196C1 06:96B1: AD        .byte $AD   ; 
- D 0 - I - 0x0196C2 06:96B2: F0        .byte $F0   ; 
- D 0 - I - 0x0196C3 06:96B3: B7        .byte $B7   ; 
- D 0 - I - 0x0196C4 06:96B4: F0        .byte $F0   ; 
- D 0 - I - 0x0196C5 06:96B5: CD        .byte $CD   ; 
- D 0 - I - 0x0196C6 06:96B6: F0        .byte $F0   ; 
- D 0 - I - 0x0196C7 06:96B7: D9        .byte $D9   ; 
- D 0 - I - 0x0196C8 06:96B8: F0        .byte $F0   ; 
- D 0 - I - 0x0196C9 06:96B9: F4        .byte $F4   ; 
- D 0 - I - 0x0196CA 06:96BA: E1        .byte $E1   ; 
- D 0 - I - 0x0196CB 06:96BB: 02        .byte $02   ; 
- D 0 - I - 0x0196CC 06:96BC: E1        .byte $E1   ; 
- D 0 - I - 0x0196CD 06:96BD: 21        .byte $21   ; 
- D 0 - I - 0x0196CE 06:96BE: E1        .byte $E1   ; 
- D 0 - I - 0x0196CF 06:96BF: 32        .byte $32   ; 
- D 0 - I - 0x0196D0 06:96C0: E1        .byte $E1   ; 
- D 0 - I - 0x0196D1 06:96C1: 57        .byte $57   ; 
- D 0 - I - 0x0196D2 06:96C2: D1        .byte $D1   ; 
- D 0 - I - 0x0196D3 06:96C3: 68        .byte $68   ; 
- D 0 - I - 0x0196D4 06:96C4: D1        .byte $D1   ; 
- D 0 - I - 0x0196D5 06:96C5: 97        .byte $97   ; 
- D 0 - I - 0x0196D6 06:96C6: D1        .byte $D1   ; 
- D 0 - I - 0x0196D7 06:96C7: AF        .byte $AF   ; 
- D 0 - I - 0x0196D8 06:96C8: D1        .byte $D1   ; 
- D 0 - I - 0x0196D9 06:96C9: E4        .byte $E4   ; 
- D 0 - I - 0x0196DA 06:96CA: C2        .byte $C2   ; 
- D 0 - I - 0x0196DB 06:96CB: 01        .byte $01   ; 
- D 0 - I - 0x0196DC 06:96CC: C2        .byte $C2   ; 
- D 0 - I - 0x0196DD 06:96CD: 3F        .byte $3F   ; 
- D 0 - I - 0x0196DE 06:96CE: C2        .byte $C2   ; 
- D 0 - I - 0x0196DF 06:96CF: 61        .byte $61   ; 
- D 0 - I - 0x0196E0 06:96D0: C2        .byte $C2   ; 
- D 0 - I - 0x0196E1 06:96D1: AB        .byte $AB   ; 
- D 0 - I - 0x0196E2 06:96D2: B2        .byte $B2   ; 
- D 0 - I - 0x0196E3 06:96D3: D3        .byte $D3   ; 
- D 0 - I - 0x0196E4 06:96D4: B3        .byte $B3   ; 
- D 0 - I - 0x0196E5 06:96D5: 2B        .byte $2B   ; 
- D 0 - I - 0x0196E6 06:96D6: B3        .byte $B3   ; 
- D 0 - I - 0x0196E7 06:96D7: 5B        .byte $5B   ; 
- D 0 - I - 0x0196E8 06:96D8: B3        .byte $B3   ; 
- D 0 - I - 0x0196E9 06:96D9: C4        .byte $C4   ; 
- D 0 - I - 0x0196EA 06:96DA: B3        .byte $B3   ; 
- D 0 - I - 0x0196EB 06:96DB: FA        .byte $FA   ; 
- D 0 - I - 0x0196EC 06:96DC: B4        .byte $B4   ; 
- D 0 - I - 0x0196ED 06:96DD: 76        .byte $76   ; 
- D 0 - I - 0x0196EE 06:96DE: B4        .byte $B4   ; 
- D 0 - I - 0x0196EF 06:96DF: BA        .byte $BA   ; 
- D 0 - I - 0x0196F0 06:96E0: B5        .byte $B5   ; 
- D 0 - I - 0x0196F1 06:96E1: 4E        .byte $4E   ; 
- D 0 - I - 0x0196F2 06:96E2: B5        .byte $B5   ; 
- D 0 - I - 0x0196F3 06:96E3: 9E        .byte $9E   ; 
- D 0 - I - 0x0196F4 06:96E4: B6        .byte $B6   ; 
- D 0 - I - 0x0196F5 06:96E5: 4E        .byte $4E   ; 
- D 0 - I - 0x0196F6 06:96E6: B6        .byte $B6   ; 
- D 0 - I - 0x0196F7 06:96E7: AE        .byte $AE   ; 
- D 0 - I - 0x0196F8 06:96E8: B6        .byte $B6   ; 
- D 0 - I - 0x0196F9 06:96E9: AE        .byte $AE   ; 
- D 0 - I - 0x0196FA 06:96EA: FF        .byte $FF   ; 



_off014_25_96EB_05:
- D 0 - I - 0x0196FB 06:96EB: 03        .byte $03   ; 
- D 0 - I - 0x0196FC 06:96EC: 5C        .byte $5C   ; 
- D 0 - I - 0x0196FD 06:96ED: 46        .byte $46   ; 
- D 0 - I - 0x0196FE 06:96EE: 33        .byte $33   ; 
- D 0 - I - 0x0196FF 06:96EF: 02        .byte $02   ; 
- D 0 - I - 0x019700 06:96F0: 00        .byte $00   ; 
- D 0 - I - 0x019701 06:96F1: 04        .byte $04   ; 
- D 0 - I - 0x019702 06:96F2: 52        .byte $52   ; 
- D 0 - I - 0x019703 06:96F3: 53        .byte $53   ; 
- D 0 - I - 0x019704 06:96F4: 54        .byte $54   ; 
- D 0 - I - 0x019705 06:96F5: 55        .byte $55   ; 
- D 0 - I - 0x019706 06:96F6: 56        .byte $56   ; 
- D 0 - I - 0x019707 06:96F7: 57        .byte $57   ; 
- D 0 - I - 0x019708 06:96F8: 68        .byte $68   ; 
- D 0 - I - 0x019709 06:96F9: 69        .byte $69   ; 
- D 0 - I - 0x01970A 06:96FA: 6A        .byte $6A   ; 
- D 0 - I - 0x01970B 06:96FB: 6B        .byte $6B   ; 
- D 0 - I - 0x01970C 06:96FC: 7C        .byte $7C   ; 
- D 0 - I - 0x01970D 06:96FD: 7D        .byte $7D   ; 
- D 0 - I - 0x01970E 06:96FE: 7E        .byte $7E   ; 
- D 0 - I - 0x01970F 06:96FF: 7F        .byte $7F   ; 
- D 0 - I - 0x019710 06:9700: FF        .byte $FF   ; 



_off014_26_9701_01:
- D 0 - I - 0x019711 06:9701: 01        .byte $01   ; 
- D 0 - I - 0x019712 06:9702: B0        .byte $B0   ; 
- D 0 - I - 0x019713 06:9703: 83        .byte $83   ; 
- D 0 - I - 0x019714 06:9704: 00        .byte $00   ; 



_off014_26_9705_04:
- D 0 - I - 0x019715 06:9705: 03        .byte $03   ; 
- D 0 - I - 0x019716 06:9706: B0        .byte $B0   ; 
- D 0 - I - 0x019717 06:9707: 83        .byte $83   ; 
- D 0 - I - 0x019718 06:9708: F2        .byte $F2   ; 
- D 0 - I - 0x019719 06:9709: 11        .byte $11   ; 
- D 0 - I - 0x01971A 06:970A: F2        .byte $F2   ; 
- D 0 - I - 0x01971B 06:970B: 11        .byte $11   ; 
- D 0 - I - 0x01971C 06:970C: 08        .byte $08   ; 
- D 0 - I - 0x01971D 06:970D: B0        .byte $B0   ; 
- D 0 - I - 0x01971E 06:970E: 83        .byte $83   ; 
- D 0 - I - 0x01971F 06:970F: C0        .byte $C0   ; 
- D 0 - I - 0x019720 06:9710: B8        .byte $B8   ; 
- D 0 - I - 0x019721 06:9711: B0        .byte $B0   ; 
- D 0 - I - 0x019722 06:9712: BC        .byte $BC   ; 
- D 0 - I - 0x019723 06:9713: A0        .byte $A0   ; 
- D 0 - I - 0x019724 06:9714: C0        .byte $C0   ; 
- D 0 - I - 0x019725 06:9715: 05        .byte $05   ; 
- D 0 - I - 0x019726 06:9716: B0        .byte $B0   ; 
- D 0 - I - 0x019727 06:9717: 82        .byte $82   ; 
- D 0 - I - 0x019728 06:9718: F1        .byte $F1   ; 
- D 0 - I - 0x019729 06:9719: 66        .byte $66   ; 
- D 0 - I - 0x01972A 06:971A: F1        .byte $F1   ; 
- D 0 - I - 0x01972B 06:971B: 66        .byte $66   ; 
- D 0 - I - 0x01972C 06:971C: B0        .byte $B0   ; 
- D 0 - I - 0x01972D 06:971D: FC        .byte $FC   ; 
- D 0 - I - 0x01972E 06:971E: 0F        .byte $0F   ; 
- D 0 - I - 0x01972F 06:971F: 70        .byte $70   ; 
- D 0 - I - 0x019730 06:9720: 83        .byte $83   ; 
- D 0 - I - 0x019731 06:9721: F0        .byte $F0   ; 
- D 0 - I - 0x019732 06:9722: FB        .byte $FB   ; 
- D 0 - I - 0x019733 06:9723: D0        .byte $D0   ; 
- D 0 - I - 0x019734 06:9724: FB        .byte $FB   ; 
- D 0 - I - 0x019735 06:9725: B0        .byte $B0   ; 
- D 0 - I - 0x019736 06:9726: FB        .byte $FB   ; 
- D 0 - I - 0x019737 06:9727: 90        .byte $90   ; 
- D 0 - I - 0x019738 06:9728: FB        .byte $FB   ; 
- D 0 - I - 0x019739 06:9729: 70        .byte $70   ; 
- D 0 - I - 0x01973A 06:972A: FB        .byte $FB   ; 
- D 0 - I - 0x01973B 06:972B: 50        .byte $50   ; 
- D 0 - I - 0x01973C 06:972C: FB        .byte $FB   ; 
- D 0 - I - 0x01973D 06:972D: 40        .byte $40   ; 
- D 0 - I - 0x01973E 06:972E: FB        .byte $FB   ; 
- D 0 - I - 0x01973F 06:972F: 30        .byte $30   ; 
- D 0 - I - 0x019740 06:9730: FB        .byte $FB   ; 
- D 0 - I - 0x019741 06:9731: 20        .byte $20   ; 
- D 0 - I - 0x019742 06:9732: FB        .byte $FB   ; 
- D 0 - I - 0x019743 06:9733: 10        .byte $10   ; 
- D 0 - I - 0x019744 06:9734: FB        .byte $FB   ; 
- D 0 - I - 0x019745 06:9735: FF        .byte $FF   ; 



_off014_26_9736_05:
- D 0 - I - 0x019746 06:9736: 01        .byte $01   ; 
- D 0 - I - 0x019747 06:9737: FB        .byte $FB   ; 
- D 0 - I - 0x019748 06:9738: EE        .byte $EE   ; 
- D 0 - I - 0x019749 06:9739: EF        .byte $EF   ; 
- D 0 - I - 0x01974A 06:973A: FE        .byte $FE   ; 
- D 0 - I - 0x01974B 06:973B: 02        .byte $02   ; 
- D 0 - I - 0x01974C 06:973C: 03        .byte $03   ; 
- D 0 - I - 0x01974D 06:973D: FB        .byte $FB   ; 
- D 0 - I - 0x01974E 06:973E: EF        .byte $EF   ; 
- D 0 - I - 0x01974F 06:973F: EE        .byte $EE   ; 
- D 0 - I - 0x019750 06:9740: ED        .byte $ED   ; 
- D 0 - I - 0x019751 06:9741: EC        .byte $EC   ; 
- D 0 - I - 0x019752 06:9742: FE        .byte $FE   ; 
- D 0 - I - 0x019753 06:9743: 03        .byte $03   ; 
- D 0 - I - 0x019754 06:9744: 03        .byte $03   ; 
- D 0 - I - 0x019755 06:9745: FB        .byte $FB   ; 
- D 0 - I - 0x019756 06:9746: EE        .byte $EE   ; 
- D 0 - I - 0x019757 06:9747: EA        .byte $EA   ; 
- D 0 - I - 0x019758 06:9748: FE        .byte $FE   ; 
- D 0 - I - 0x019759 06:9749: 04        .byte $04   ; 
- D 0 - I - 0x01975A 06:974A: 06        .byte $06   ; 
- D 0 - I - 0x01975B 06:974B: EF        .byte $EF   ; 
- D 0 - I - 0x01975C 06:974C: EA        .byte $EA   ; 
- D 0 - I - 0x01975D 06:974D: BF        .byte $BF   ; 
- D 0 - I - 0x01975E 06:974E: BA        .byte $BA   ; 
- D 0 - I - 0x01975F 06:974F: BF        .byte $BF   ; 
- D 0 - I - 0x019760 06:9750: BA        .byte $BA   ; 
- D 0 - I - 0x019761 06:9751: BF        .byte $BF   ; 
- D 0 - I - 0x019762 06:9752: 08        .byte $08   ; 
- D 0 - I - 0x019763 06:9753: EB        .byte $EB   ; 
- D 0 - I - 0x019764 06:9754: DB        .byte $DB   ; 
- D 0 - I - 0x019765 06:9755: CB        .byte $CB   ; 
- D 0 - I - 0x019766 06:9756: BB        .byte $BB   ; 
- D 0 - I - 0x019767 06:9757: AC        .byte $AC   ; 
- D 0 - I - 0x019768 06:9758: 9B        .byte $9B   ; 
- D 0 - I - 0x019769 06:9759: 8B        .byte $8B   ; 
- D 0 - I - 0x01976A 06:975A: 7B        .byte $7B   ; 
- D 0 - I - 0x01976B 06:975B: 6B        .byte $6B   ; 
- D 0 - I - 0x01976C 06:975C: 5C        .byte $5C   ; 
- D 0 - I - 0x01976D 06:975D: 4B        .byte $4B   ; 
- D 0 - I - 0x01976E 06:975E: 3B        .byte $3B   ; 
- D 0 - I - 0x01976F 06:975F: 2C        .byte $2C   ; 
- D 0 - I - 0x019770 06:9760: 1C        .byte $1C   ; 
- D 0 - I - 0x019771 06:9761: FF        .byte $FF   ; 



_off014_27_9762_04:
- D 0 - I - 0x019772 06:9762: 05        .byte $05   ; 
- D 0 - I - 0x019773 06:9763: 82        .byte $82   ; 
- D 0 - I - 0x019774 06:9764: 88        .byte $88   ; 
- D 0 - I - 0x019775 06:9765: 10        .byte $10   ; 
- D 0 - I - 0x019776 06:9766: D5        .byte $D5   ; 
- D 0 - I - 0x019777 06:9767: 10        .byte $10   ; 
- D 0 - I - 0x019778 06:9768: 8E        .byte $8E   ; 
- D 0 - I - 0x019779 06:9769: 10        .byte $10   ; 
- D 0 - I - 0x01977A 06:976A: A9        .byte $A9   ; 
- D 0 - I - 0x01977B 06:976B: 02        .byte $02   ; 
- D 0 - I - 0x01977C 06:976C: B0        .byte $B0   ; 
- D 0 - I - 0x01977D 06:976D: 88        .byte $88   ; 
- D 0 - I - 0x01977E 06:976E: E0        .byte $E0   ; 
- D 0 - I - 0x01977F 06:976F: 6A        .byte $6A   ; 
- D 0 - I - 0x019780 06:9770: D0        .byte $D0   ; 
- D 0 - I - 0x019781 06:9771: 6A        .byte $6A   ; 
- D 0 - I - 0x019782 06:9772: B0        .byte $B0   ; 
- D 0 - I - 0x019783 06:9773: 6A        .byte $6A   ; 
- D 0 - I - 0x019784 06:9774: A0        .byte $A0   ; 
- D 0 - I - 0x019785 06:9775: 6A        .byte $6A   ; 
- D 0 - I - 0x019786 06:9776: 90        .byte $90   ; 
- D 0 - I - 0x019787 06:9777: 6A        .byte $6A   ; 
- D 0 - I - 0x019788 06:9778: 70        .byte $70   ; 
- D 0 - I - 0x019789 06:9779: 6A        .byte $6A   ; 
- D 0 - I - 0x01978A 06:977A: 50        .byte $50   ; 
- D 0 - I - 0x01978B 06:977B: 6A        .byte $6A   ; 
- D 0 - I - 0x01978C 06:977C: 40        .byte $40   ; 
- D 0 - I - 0x01978D 06:977D: 6A        .byte $6A   ; 
- D 0 - I - 0x01978E 06:977E: FF        .byte $FF   ; 



_off014_28_977F_00:
- D 0 - I - 0x01978F 06:977F: ED        .byte $ED   ; 
- D 0 - I - 0x019790 06:9780: 81        .byte $81   ; 
- D 0 - I - 0x019791 06:9781: E9        .byte $E9   ; 
- D 0 - I - 0x019792 06:9782: 71        .byte $71   ; 
- D 0 - I - 0x019793 06:9783: D6        .byte $D6   ; 
- D 0 - I - 0x019794 06:9784: 30        .byte $30   ; 
- D 0 - I - 0x019795 06:9785: 01        .byte $01   ; 
- D 0 - I - 0x019796 06:9786: 11        .byte $11   ; 
- D 0 - I - 0x019797 06:9787: E5        .byte $E5   ; 
- D 0 - I - 0x019798 06:9788: C6        .byte $C6   ; 
- D 0 - I - 0x019799 06:9789: 70        .byte $70   ; 
- D 0 - I - 0x01979A 06:978A: 90        .byte $90   ; 
- D 0 - I - 0x01979B 06:978B: B0        .byte $B0   ; 
- D 0 - I - 0x01979C 06:978C: E4        .byte $E4   ; 
- D 0 - I - 0x01979D 06:978D: 01        .byte $01   ; 
- D 0 - I - 0x01979E 06:978E: E5        .byte $E5   ; 
- D 0 - I - 0x01979F 06:978F: B1        .byte $B1   ; 
- D 0 - I - 0x0197A0 06:9790: E4        .byte $E4   ; 
- D 0 - I - 0x0197A1 06:9791: 41        .byte $41   ; 
- D 0 - I - 0x0197A2 06:9792: 21        .byte $21   ; 
- D 0 - I - 0x0197A3 06:9793: 70        .byte $70   ; 
- D 0 - I - 0x0197A4 06:9794: EB        .byte $EB   ; 
- D 0 - I - 0x0197A5 06:9795: 50        .byte $50   ; 
- D 0 - I - 0x0197A6 06:9796: 21        .byte $21   ; 
- D 0 - I - 0x0197A7 06:9797: E7        .byte $E7   ; 
- D 0 - I - 0x0197A8 06:9798: 03        .byte $03   ; 
- D 0 - I - 0x0197A9 06:9799: 82        .byte $82   ; 
- D 0 - I - 0x0197AA 06:979A: ED        .byte $ED   ; 
- D 0 - I - 0x0197AB 06:979B: 00        .byte $00   ; 
loc_FF_979C:
- D 0 - I - 0x0197AC 06:979C: FD        .byte $FD   ; 
- D 0 - I - 0x0197AD 06:979D: BE 98     .word sub_FD_98BE
- D 0 - I - 0x0197AF 06:979F: E4        .byte $E4   ; 
- D 0 - I - 0x0197B0 06:97A0: 42        .byte $42   ; 
- D 0 - I - 0x0197B1 06:97A1: 71        .byte $71   ; 
- D 0 - I - 0x0197B2 06:97A2: 81        .byte $81   ; 
- D 0 - I - 0x0197B3 06:97A3: FD        .byte $FD   ; 
- D 0 - I - 0x0197B4 06:97A4: BE 98     .word sub_FD_98BE
- D 0 - I - 0x0197B6 06:97A6: E3        .byte $E3   ; 
- D 0 - I - 0x0197B7 06:97A7: 02        .byte $02   ; 
- D 0 - I - 0x0197B8 06:97A8: E4        .byte $E4   ; 
- D 0 - I - 0x0197B9 06:97A9: B1        .byte $B1   ; 
- D 0 - I - 0x0197BA 06:97AA: A1        .byte $A1   ; 
- D 0 - I - 0x0197BB 06:97AB: E9        .byte $E9   ; 
- D 0 - I - 0x0197BC 06:97AC: 31        .byte $31   ; 
- D 0 - I - 0x0197BD 06:97AD: D6        .byte $D6   ; 
- D 0 - I - 0x0197BE 06:97AE: 70        .byte $70   ; 
- D 0 - I - 0x0197BF 06:97AF: 02        .byte $02   ; 
- D 0 - I - 0x0197C0 06:97B0: 13        .byte $13   ; 
- D 0 - I - 0x0197C1 06:97B1: F1        .byte $F1   ; 
- D 0 - I - 0x0197C2 06:97B2: EB        .byte $EB   ; 
- D 0 - I - 0x0197C3 06:97B3: 50        .byte $50   ; 
- D 0 - I - 0x0197C4 06:97B4: 42        .byte $42   ; 
- D 0 - I - 0x0197C5 06:97B5: E3        .byte $E3   ; 
- D 0 - I - 0x0197C6 06:97B6: 40        .byte $40   ; 
- D 0 - I - 0x0197C7 06:97B7: 40        .byte $40   ; 
- D 0 - I - 0x0197C8 06:97B8: 41        .byte $41   ; 
- D 0 - I - 0x0197C9 06:97B9: 40        .byte $40   ; 
- D 0 - I - 0x0197CA 06:97BA: 51        .byte $51   ; 
- D 0 - I - 0x0197CB 06:97BB: 50        .byte $50   ; 
- D 0 - I - 0x0197CC 06:97BC: 71        .byte $71   ; 
- D 0 - I - 0x0197CD 06:97BD: 51        .byte $51   ; 
- D 0 - I - 0x0197CE 06:97BE: 70        .byte $70   ; 
- D 0 - I - 0x0197CF 06:97BF: 91        .byte $91   ; 
- D 0 - I - 0x0197D0 06:97C0: C0        .byte $C0   ; 
- D 0 - I - 0x0197D1 06:97C1: F4        .byte $F4   ; 
- D 0 - I - 0x0197D2 06:97C2: 90        .byte $90   ; 
- D 0 - I - 0x0197D3 06:97C3: F1        .byte $F1   ; 
- D 0 - I - 0x0197D4 06:97C4: 70        .byte $70   ; 
- D 0 - I - 0x0197D5 06:97C5: 71        .byte $71   ; 
- D 0 - I - 0x0197D6 06:97C6: 70        .byte $70   ; 
- D 0 - I - 0x0197D7 06:97C7: 91        .byte $91   ; 
- D 0 - I - 0x0197D8 06:97C8: 90        .byte $90   ; 
- D 0 - I - 0x0197D9 06:97C9: B1        .byte $B1   ; 
- D 0 - I - 0x0197DA 06:97CA: 91        .byte $91   ; 
- D 0 - I - 0x0197DB 06:97CB: B0        .byte $B0   ; 
- D 0 - I - 0x0197DC 06:97CC: E2        .byte $E2   ; 
- D 0 - I - 0x0197DD 06:97CD: 22        .byte $22   ; 
- D 0 - I - 0x0197DE 06:97CE: F0        .byte $F0   ; 
- D 0 - I - 0x0197DF 06:97CF: E8        .byte $E8   ; 
- D 0 - I - 0x0197E0 06:97D0: 36        .byte $36   ; 
- D 0 - I - 0x0197E1 06:97D1: E9        .byte $E9   ; 
- D 0 - I - 0x0197E2 06:97D2: 31        .byte $31   ; 
- D 0 - I - 0x0197E3 06:97D3: E7        .byte $E7   ; 
- D 0 - I - 0x0197E4 06:97D4: 08        .byte $08   ; 
- D 0 - I - 0x0197E5 06:97D5: E3        .byte $E3   ; 
- D 0 - I - 0x0197E6 06:97D6: B5        .byte $B5   ; 
- D 0 - I - 0x0197E7 06:97D7: 40        .byte $40   ; 
- D 0 - I - 0x0197E8 06:97D8: 20        .byte $20   ; 
- D 0 - I - 0x0197E9 06:97D9: 45        .byte $45   ; 
- D 0 - I - 0x0197EA 06:97DA: B0        .byte $B0   ; 
- D 0 - I - 0x0197EB 06:97DB: 90        .byte $90   ; 
- D 0 - I - 0x0197EC 06:97DC: B7        .byte $B7   ; 
- D 0 - I - 0x0197ED 06:97DD: E7        .byte $E7   ; 
- D 0 - I - 0x0197EE 06:97DE: 02        .byte $02   ; 
- D 0 - I - 0x0197EF 06:97DF: F0        .byte $F0   ; 
- D 0 - I - 0x0197F0 06:97E0: E3        .byte $E3   ; 
- D 0 - I - 0x0197F1 06:97E1: 40        .byte $40   ; 
- D 0 - I - 0x0197F2 06:97E2: E3        .byte $E3   ; 
- D 0 - I - 0x0197F3 06:97E3: 40        .byte $40   ; 
- D 0 - I - 0x0197F4 06:97E4: E3        .byte $E3   ; 
- D 0 - I - 0x0197F5 06:97E5: 40        .byte $40   ; 
- D 0 - I - 0x0197F6 06:97E6: 70        .byte $70   ; 
- D 0 - I - 0x0197F7 06:97E7: E3        .byte $E3   ; 
- D 0 - I - 0x0197F8 06:97E8: 70        .byte $70   ; 
- D 0 - I - 0x0197F9 06:97E9: E3        .byte $E3   ; 
- D 0 - I - 0x0197FA 06:97EA: 70        .byte $70   ; 
- D 0 - I - 0x0197FB 06:97EB: 80        .byte $80   ; 
- D 0 - I - 0x0197FC 06:97EC: E3        .byte $E3   ; 
- D 0 - I - 0x0197FD 06:97ED: 80        .byte $80   ; 
- D 0 - I - 0x0197FE 06:97EE: F0        .byte $F0   ; 
- D 0 - I - 0x0197FF 06:97EF: FD        .byte $FD   ; 
- D 0 - I - 0x019800 06:97F0: 17 99     .word sub_FD_9917
- D 0 - I - 0x019802 06:97F2: E6        .byte $E6   ; 
- D 0 - I - 0x019803 06:97F3: 06        .byte $06   ; 
- D 0 - I - 0x019804 06:97F4: E2        .byte $E2   ; 
- D 0 - I - 0x019805 06:97F5: 41        .byte $41   ; 
- D 0 - I - 0x019806 06:97F6: 41        .byte $41   ; 
- D 0 - I - 0x019807 06:97F7: E9        .byte $E9   ; 
- D 0 - I - 0x019808 06:97F8: 71        .byte $71   ; 
- D 0 - I - 0x019809 06:97F9: E9        .byte $E9   ; 
- D 0 - I - 0x01980A 06:97FA: 30        .byte $30   ; 
- D 0 - I - 0x01980B 06:97FB: E4        .byte $E4   ; 
- D 0 - I - 0x01980C 06:97FC: 90        .byte $90   ; 
- D 0 - I - 0x01980D 06:97FD: E3        .byte $E3   ; 
- D 0 - I - 0x01980E 06:97FE: 02        .byte $02   ; 
- D 0 - I - 0x01980F 06:97FF: E4        .byte $E4   ; 
- D 0 - I - 0x019810 06:9800: B0        .byte $B0   ; 
- D 0 - I - 0x019811 06:9801: C0        .byte $C0   ; 
- D 0 - I - 0x019812 06:9802: F3        .byte $F3   ; 
- D 0 - I - 0x019813 06:9803: B0        .byte $B0   ; 
- D 0 - I - 0x019814 06:9804: F0        .byte $F0   ; 
- D 0 - I - 0x019815 06:9805: 70        .byte $70   ; 
- D 0 - I - 0x019816 06:9806: C0        .byte $C0   ; 
- D 0 - I - 0x019817 06:9807: F3        .byte $F3   ; 
- D 0 - I - 0x019818 06:9808: 70        .byte $70   ; 
- D 0 - I - 0x019819 06:9809: F0        .byte $F0   ; 
- D 0 - I - 0x01981A 06:980A: 63        .byte $63   ; 
- D 0 - I - 0x01981B 06:980B: E8        .byte $E8   ; 
- D 0 - I - 0x01981C 06:980C: 26        .byte $26   ; 
- D 0 - I - 0x01981D 06:980D: E9        .byte $E9   ; 
- D 0 - I - 0x01981E 06:980E: B1        .byte $B1   ; 
- D 0 - I - 0x01981F 06:980F: E3        .byte $E3   ; 
- D 0 - I - 0x019820 06:9810: 20        .byte $20   ; 
- D 0 - I - 0x019821 06:9811: 20        .byte $20   ; 
- D 0 - I - 0x019822 06:9812: E4        .byte $E4   ; 
- D 0 - I - 0x019823 06:9813: 93        .byte $93   ; 
- D 0 - I - 0x019824 06:9814: E3        .byte $E3   ; 
- D 0 - I - 0x019825 06:9815: 02        .byte $02   ; 
- D 0 - I - 0x019826 06:9816: 02        .byte $02   ; 
- D 0 - I - 0x019827 06:9817: E4        .byte $E4   ; 
- D 0 - I - 0x019828 06:9818: B1        .byte $B1   ; 
- D 0 - I - 0x019829 06:9819: FD        .byte $FD   ; 
- D 0 - I - 0x01982A 06:981A: 17 99     .word sub_FD_9917
- D 0 - I - 0x01982C 06:981C: E2        .byte $E2   ; 
- D 0 - I - 0x01982D 06:981D: 41        .byte $41   ; 
- D 0 - I - 0x01982E 06:981E: 41        .byte $41   ; 
- D 0 - I - 0x01982F 06:981F: E9        .byte $E9   ; 
- D 0 - I - 0x019830 06:9820: 71        .byte $71   ; 
- D 0 - I - 0x019831 06:9821: D6        .byte $D6   ; 
- D 0 - I - 0x019832 06:9822: 30        .byte $30   ; 
- D 0 - I - 0x019833 06:9823: 02        .byte $02   ; 
- D 0 - I - 0x019834 06:9824: 14        .byte $14   ; 
- D 0 - I - 0x019835 06:9825: E4        .byte $E4   ; 
- D 0 - I - 0x019836 06:9826: C0        .byte $C0   ; 
- D 0 - I - 0x019837 06:9827: 70        .byte $70   ; 
- D 0 - I - 0x019838 06:9828: 90        .byte $90   ; 
- D 0 - I - 0x019839 06:9829: B0        .byte $B0   ; 
- D 0 - I - 0x01983A 06:982A: E3        .byte $E3   ; 
- D 0 - I - 0x01983B 06:982B: 00        .byte $00   ; 
- D 0 - I - 0x01983C 06:982C: 00        .byte $00   ; 
- D 0 - I - 0x01983D 06:982D: C0        .byte $C0   ; 
- D 0 - I - 0x01983E 06:982E: 20        .byte $20   ; 
- D 0 - I - 0x01983F 06:982F: C0        .byte $C0   ; 
- D 0 - I - 0x019840 06:9830: F3        .byte $F3   ; 
- D 0 - I - 0x019841 06:9831: 20        .byte $20   ; 
- D 0 - I - 0x019842 06:9832: F0        .byte $F0   ; 
- D 0 - I - 0x019843 06:9833: 47        .byte $47   ; 
- D 0 - I - 0x019844 06:9834: E9        .byte $E9   ; 
- D 0 - I - 0x019845 06:9835: B1        .byte $B1   ; 
- D 0 - I - 0x019846 06:9836: E3        .byte $E3   ; 
- D 0 - I - 0x019847 06:9837: 40        .byte $40   ; 
- D 0 - I - 0x019848 06:9838: 70        .byte $70   ; 
- D 0 - I - 0x019849 06:9839: 87        .byte $87   ; 
- D 0 - I - 0x01984A 06:983A: E9        .byte $E9   ; 
- D 0 - I - 0x01984B 06:983B: 31        .byte $31   ; 
- D 0 - I - 0x01984C 06:983C: D6        .byte $D6   ; 
- D 0 - I - 0x01984D 06:983D: B8        .byte $B8   ; 
- D 0 - I - 0x01984E 06:983E: 85        .byte $85   ; 
- D 0 - I - 0x01984F 06:983F: 11        .byte $11   ; 
- D 0 - I - 0x019850 06:9840: EB        .byte $EB   ; 
- D 0 - I - 0x019851 06:9841: 50        .byte $50   ; 
- D 0 - I - 0x019852 06:9842: 11        .byte $11   ; 
- D 0 - I - 0x019853 06:9843: E3        .byte $E3   ; 
- D 0 - I - 0x019854 06:9844: 4B        .byte $4B   ; 
- D 0 - I - 0x019855 06:9845: 73        .byte $73   ; 
- D 0 - I - 0x019856 06:9846: 67        .byte $67   ; 
- D 0 - I - 0x019857 06:9847: E6        .byte $E6   ; 
- D 0 - I - 0x019858 06:9848: 04        .byte $04   ; 
- D 0 - I - 0x019859 06:9849: 73        .byte $73   ; 
- D 0 - I - 0x01985A 06:984A: 63        .byte $63   ; 
- D 0 - I - 0x01985B 06:984B: 23        .byte $23   ; 
- D 0 - I - 0x01985C 06:984C: E6        .byte $E6   ; 
- D 0 - I - 0x01985D 06:984D: 06        .byte $06   ; 
- D 0 - I - 0x01985E 06:984E: 4B        .byte $4B   ; 
- D 0 - I - 0x01985F 06:984F: 73        .byte $73   ; 
- D 0 - I - 0x019860 06:9850: 65        .byte $65   ; 
- D 0 - I - 0x019861 06:9851: 60        .byte $60   ; 
- D 0 - I - 0x019862 06:9852: 70        .byte $70   ; 
- D 0 - I - 0x019863 06:9853: 97        .byte $97   ; 
- D 0 - I - 0x019864 06:9854: 4B        .byte $4B   ; 
- D 0 - I - 0x019865 06:9855: 73        .byte $73   ; 
- D 0 - I - 0x019866 06:9856: 67        .byte $67   ; 
- D 0 - I - 0x019867 06:9857: E6        .byte $E6   ; 
- D 0 - I - 0x019868 06:9858: 04        .byte $04   ; 
- D 0 - I - 0x019869 06:9859: 73        .byte $73   ; 
- D 0 - I - 0x01986A 06:985A: 63        .byte $63   ; 
- D 0 - I - 0x01986B 06:985B: 23        .byte $23   ; 
- D 0 - I - 0x01986C 06:985C: E6        .byte $E6   ; 
- D 0 - I - 0x01986D 06:985D: 06        .byte $06   ; 
- D 0 - I - 0x01986E 06:985E: E3        .byte $E3   ; 
- D 0 - I - 0x01986F 06:985F: 4B        .byte $4B   ; 
- D 0 - I - 0x019870 06:9860: 73        .byte $73   ; 
- D 0 - I - 0x019871 06:9861: 67        .byte $67   ; 
- D 0 - I - 0x019872 06:9862: EB        .byte $EB   ; 
- D 0 - I - 0x019873 06:9863: 50        .byte $50   ; 
- D 0 - I - 0x019874 06:9864: 51        .byte $51   ; 
- D 0 - I - 0x019875 06:9865: E9        .byte $E9   ; 
- D 0 - I - 0x019876 06:9866: 31        .byte $31   ; 
- D 0 - I - 0x019877 06:9867: D4        .byte $D4   ; 
- D 0 - I - 0x019878 06:9868: 70        .byte $70   ; 
- D 0 - I - 0x019879 06:9869: 02        .byte $02   ; 
- D 0 - I - 0x01987A 06:986A: 14        .byte $14   ; 
- D 0 - I - 0x01987B 06:986B: E2        .byte $E2   ; 
- D 0 - I - 0x01987C 06:986C: 71        .byte $71   ; 
- D 0 - I - 0x01987D 06:986D: C0        .byte $C0   ; 
- D 0 - I - 0x01987E 06:986E: F4        .byte $F4   ; 
- D 0 - I - 0x01987F 06:986F: 70        .byte $70   ; 
- D 0 - I - 0x019880 06:9870: F0        .byte $F0   ; 
- D 0 - I - 0x019881 06:9871: 61        .byte $61   ; 
- D 0 - I - 0x019882 06:9872: C0        .byte $C0   ; 
- D 0 - I - 0x019883 06:9873: F4        .byte $F4   ; 
- D 0 - I - 0x019884 06:9874: 60        .byte $60   ; 
- D 0 - I - 0x019885 06:9875: F0        .byte $F0   ; 
- D 0 - I - 0x019886 06:9876: 21        .byte $21   ; 
- D 0 - I - 0x019887 06:9877: C0        .byte $C0   ; 
- D 0 - I - 0x019888 06:9878: F4        .byte $F4   ; 
- D 0 - I - 0x019889 06:9879: 20        .byte $20   ; 
- D 0 - I - 0x01988A 06:987A: F0        .byte $F0   ; 
- D 0 - I - 0x01988B 06:987B: E9        .byte $E9   ; 
- D 0 - I - 0x01988C 06:987C: 31        .byte $31   ; 
- D 0 - I - 0x01988D 06:987D: D6        .byte $D6   ; 
- D 0 - I - 0x01988E 06:987E: 70        .byte $70   ; 
- D 0 - I - 0x01988F 06:987F: 05        .byte $05   ; 
- D 0 - I - 0x019890 06:9880: 11        .byte $11   ; 
- D 0 - I - 0x019891 06:9881: F0        .byte $F0   ; 
- D 0 - I - 0x019892 06:9882: EB        .byte $EB   ; 
- D 0 - I - 0x019893 06:9883: 50        .byte $50   ; 
- D 0 - I - 0x019894 06:9884: 32        .byte $32   ; 
- D 0 - I - 0x019895 06:9885: E4        .byte $E4   ; 
- D 0 - I - 0x019896 06:9886: 9F        .byte $9F   ; 
- D 0 - I - 0x019897 06:9887: 8F        .byte $8F   ; 
- D 0 - I - 0x019898 06:9888: 7B        .byte $7B   ; 
- D 0 - I - 0x019899 06:9889: 93        .byte $93   ; 
- D 0 - I - 0x01989A 06:988A: D4        .byte $D4   ; 
- D 0 - I - 0x01989B 06:988B: 70        .byte $70   ; 
- D 0 - I - 0x01989C 06:988C: 07        .byte $07   ; 
- D 0 - I - 0x01989D 06:988D: 14        .byte $14   ; 
- D 0 - I - 0x01989E 06:988E: E3        .byte $E3   ; 
- D 0 - I - 0x01989F 06:988F: 03        .byte $03   ; 
- D 0 - I - 0x0198A0 06:9890: 23        .byte $23   ; 
- D 0 - I - 0x0198A1 06:9891: 43        .byte $43   ; 
- D 0 - I - 0x0198A2 06:9892: E4        .byte $E4   ; 
- D 0 - I - 0x0198A3 06:9893: 73        .byte $73   ; 
- D 0 - I - 0x0198A4 06:9894: 63        .byte $63   ; 
- D 0 - I - 0x0198A5 06:9895: 23        .byte $23   ; 
- D 0 - I - 0x0198A6 06:9896: F0        .byte $F0   ; 
- D 0 - I - 0x0198A7 06:9897: E6        .byte $E6   ; 
- D 0 - I - 0x0198A8 06:9898: 06        .byte $06   ; 
- D 0 - I - 0x0198A9 06:9899: E3        .byte $E3   ; 
- D 0 - I - 0x0198AA 06:989A: B0        .byte $B0   ; 
- D 0 - I - 0x0198AB 06:989B: B0        .byte $B0   ; 
- D 0 - I - 0x0198AC 06:989C: B0        .byte $B0   ; 
- D 0 - I - 0x0198AD 06:989D: B0        .byte $B0   ; 
- D 0 - I - 0x0198AE 06:989E: C0        .byte $C0   ; 
- D 0 - I - 0x0198AF 06:989F: F4        .byte $F4   ; 
- D 0 - I - 0x0198B0 06:98A0: B0        .byte $B0   ; 
- D 0 - I - 0x0198B1 06:98A1: F0        .byte $F0   ; 
- D 0 - I - 0x0198B2 06:98A2: B0        .byte $B0   ; 
- D 0 - I - 0x0198B3 06:98A3: B0        .byte $B0   ; 
- D 0 - I - 0x0198B4 06:98A4: B0        .byte $B0   ; 
- D 0 - I - 0x0198B5 06:98A5: B0        .byte $B0   ; 
- D 0 - I - 0x0198B6 06:98A6: C0        .byte $C0   ; 
- D 0 - I - 0x0198B7 06:98A7: F4        .byte $F4   ; 
- D 0 - I - 0x0198B8 06:98A8: B0        .byte $B0   ; 
- D 0 - I - 0x0198B9 06:98A9: F0        .byte $F0   ; 
- D 0 - I - 0x0198BA 06:98AA: B0        .byte $B0   ; 
- D 0 - I - 0x0198BB 06:98AB: B0        .byte $B0   ; 
- D 0 - I - 0x0198BC 06:98AC: C0        .byte $C0   ; 
- D 0 - I - 0x0198BD 06:98AD: F4        .byte $F4   ; 
- D 0 - I - 0x0198BE 06:98AE: B0        .byte $B0   ; 
- D 0 - I - 0x0198BF 06:98AF: F0        .byte $F0   ; 
- D 0 - I - 0x0198C0 06:98B0: E2        .byte $E2   ; 
- D 0 - I - 0x0198C1 06:98B1: 40        .byte $40   ; 
- D 0 - I - 0x0198C2 06:98B2: 40        .byte $40   ; 
- D 0 - I - 0x0198C3 06:98B3: 40        .byte $40   ; 
- D 0 - I - 0x0198C4 06:98B4: 40        .byte $40   ; 
- D 0 - I - 0x0198C5 06:98B5: C0        .byte $C0   ; 
- D 0 - I - 0x0198C6 06:98B6: 40        .byte $40   ; 
- D 0 - I - 0x0198C7 06:98B7: 40        .byte $40   ; 
- D 0 - I - 0x0198C8 06:98B8: 40        .byte $40   ; 
- D 0 - I - 0x0198C9 06:98B9: 47        .byte $47   ; 
- D 0 - I - 0x0198CA 06:98BA: FE        .byte $FE   ; 
- D 0 - I - 0x0198CB 06:98BB: FF        .byte $FF   ; 
- D 0 - I - 0x0198CC 06:98BC: 9C 97     .word loc_FF_979C



sub_FD_98BE:
- D 0 - I - 0x0198CE 06:98BE: E9        .byte $E9   ; 
- D 0 - I - 0x0198CF 06:98BF: 31        .byte $31   ; 
- D 0 - I - 0x0198D0 06:98C0: D6        .byte $D6   ; 
- D 0 - I - 0x0198D1 06:98C1: 70        .byte $70   ; 
- D 0 - I - 0x0198D2 06:98C2: 02        .byte $02   ; 
- D 0 - I - 0x0198D3 06:98C3: 12        .byte $12   ; 
- D 0 - I - 0x0198D4 06:98C4: EB        .byte $EB   ; 
- D 0 - I - 0x0198D5 06:98C5: 52        .byte $52   ; 
- D 0 - I - 0x0198D6 06:98C6: 51        .byte $51   ; 
- D 0 - I - 0x0198D7 06:98C7: E3        .byte $E3   ; 
- D 0 - I - 0x0198D8 06:98C8: 43        .byte $43   ; 
- D 0 - I - 0x0198D9 06:98C9: E7        .byte $E7   ; 
- D 0 - I - 0x0198DA 06:98CA: 04        .byte $04   ; 
- D 0 - I - 0x0198DB 06:98CB: E4        .byte $E4   ; 
- D 0 - I - 0x0198DC 06:98CC: 91        .byte $91   ; 
- D 0 - I - 0x0198DD 06:98CD: E5        .byte $E5   ; 
- D 0 - I - 0x0198DE 06:98CE: 70        .byte $70   ; 
- D 0 - I - 0x0198DF 06:98CF: 90        .byte $90   ; 
- D 0 - I - 0x0198E0 06:98D0: F5        .byte $F5   ; 
- D 0 - I - 0x0198E1 06:98D1: 90        .byte $90   ; 
- D 0 - I - 0x0198E2 06:98D2: F0        .byte $F0   ; 
- D 0 - I - 0x0198E3 06:98D3: 90        .byte $90   ; 
- D 0 - I - 0x0198E4 06:98D4: 91        .byte $91   ; 
- D 0 - I - 0x0198E5 06:98D5: E7        .byte $E7   ; 
- D 0 - I - 0x0198E6 06:98D6: 02        .byte $02   ; 
- D 0 - I - 0x0198E7 06:98D7: E3        .byte $E3   ; 
- D 0 - I - 0x0198E8 06:98D8: 40        .byte $40   ; 
- D 0 - I - 0x0198E9 06:98D9: 72        .byte $72   ; 
- D 0 - I - 0x0198EA 06:98DA: 5B        .byte $5B   ; 
- D 0 - I - 0x0198EB 06:98DB: E4        .byte $E4   ; 
- D 0 - I - 0x0198EC 06:98DC: B0        .byte $B0   ; 
- D 0 - I - 0x0198ED 06:98DD: E3        .byte $E3   ; 
- D 0 - I - 0x0198EE 06:98DE: 22        .byte $22   ; 
- D 0 - I - 0x0198EF 06:98DF: 43        .byte $43   ; 
- D 0 - I - 0x0198F0 06:98E0: E7        .byte $E7   ; 
- D 0 - I - 0x0198F1 06:98E1: 04        .byte $04   ; 
- D 0 - I - 0x0198F2 06:98E2: E4        .byte $E4   ; 
- D 0 - I - 0x0198F3 06:98E3: 91        .byte $91   ; 
- D 0 - I - 0x0198F4 06:98E4: E5        .byte $E5   ; 
- D 0 - I - 0x0198F5 06:98E5: 70        .byte $70   ; 
- D 0 - I - 0x0198F6 06:98E6: 90        .byte $90   ; 
- D 0 - I - 0x0198F7 06:98E7: F5        .byte $F5   ; 
- D 0 - I - 0x0198F8 06:98E8: 90        .byte $90   ; 
- D 0 - I - 0x0198F9 06:98E9: F0        .byte $F0   ; 
- D 0 - I - 0x0198FA 06:98EA: 90        .byte $90   ; 
- D 0 - I - 0x0198FB 06:98EB: 91        .byte $91   ; 
- D 0 - I - 0x0198FC 06:98EC: E5        .byte $E5   ; 
- D 0 - I - 0x0198FD 06:98ED: 40        .byte $40   ; 
- D 0 - I - 0x0198FE 06:98EE: 70        .byte $70   ; 
- D 0 - I - 0x0198FF 06:98EF: E9        .byte $E9   ; 
- D 0 - I - 0x019900 06:98F0: 31        .byte $31   ; 
- D 0 - I - 0x019901 06:98F1: E6        .byte $E6   ; 
- D 0 - I - 0x019902 06:98F2: 02        .byte $02   ; 
- D 0 - I - 0x019903 06:98F3: E4        .byte $E4   ; 
- D 0 - I - 0x019904 06:98F4: F6        .byte $F6   ; 
- D 0 - I - 0x019905 06:98F5: 40        .byte $40   ; 
- D 0 - I - 0x019906 06:98F6: F5        .byte $F5   ; 
- D 0 - I - 0x019907 06:98F7: 50        .byte $50   ; 
- D 0 - I - 0x019908 06:98F8: F4        .byte $F4   ; 
- D 0 - I - 0x019909 06:98F9: 60        .byte $60   ; 
- D 0 - I - 0x01990A 06:98FA: F3        .byte $F3   ; 
- D 0 - I - 0x01990B 06:98FB: 70        .byte $70   ; 
- D 0 - I - 0x01990C 06:98FC: F2        .byte $F2   ; 
- D 0 - I - 0x01990D 06:98FD: 80        .byte $80   ; 
- D 0 - I - 0x01990E 06:98FE: F1        .byte $F1   ; 
- D 0 - I - 0x01990F 06:98FF: 90        .byte $90   ; 
- D 0 - I - 0x019910 06:9900: E6        .byte $E6   ; 
- D 0 - I - 0x019911 06:9901: 01        .byte $01   ; 
- D 0 - I - 0x019912 06:9902: F0        .byte $F0   ; 
- D 0 - I - 0x019913 06:9903: A0        .byte $A0   ; 
- D 0 - I - 0x019914 06:9904: B0        .byte $B0   ; 
- D 0 - I - 0x019915 06:9905: E3        .byte $E3   ; 
- D 0 - I - 0x019916 06:9906: 00        .byte $00   ; 
- D 0 - I - 0x019917 06:9907: 10        .byte $10   ; 
- D 0 - I - 0x019918 06:9908: 20        .byte $20   ; 
- D 0 - I - 0x019919 06:9909: 30        .byte $30   ; 
- D 0 - I - 0x01991A 06:990A: E9        .byte $E9   ; 
- D 0 - I - 0x01991B 06:990B: B1        .byte $B1   ; 
- D 0 - I - 0x01991C 06:990C: E7        .byte $E7   ; 
- D 0 - I - 0x01991D 06:990D: 04        .byte $04   ; 
- D 0 - I - 0x01991E 06:990E: E6        .byte $E6   ; 
- D 0 - I - 0x01991F 06:990F: 06        .byte $06   ; 
- D 0 - I - 0x019920 06:9910: E5        .byte $E5   ; 
- D 0 - I - 0x019921 06:9911: 90        .byte $90   ; 
- D 0 - I - 0x019922 06:9912: 91        .byte $91   ; 
- D 0 - I - 0x019923 06:9913: 91        .byte $91   ; 
- D 0 - I - 0x019924 06:9914: 91        .byte $91   ; 
- D 0 - I - 0x019925 06:9915: 90        .byte $90   ; 
- D 0 - I - 0x019926 06:9916: FD        .byte $FD   ; 
sub_FD_9917:
- D 0 - I - 0x019927 06:9917: E9        .byte $E9   ; 
- D 0 - I - 0x019928 06:9918: 31        .byte $31   ; 
- D 0 - I - 0x019929 06:9919: D6        .byte $D6   ; 
- D 0 - I - 0x01992A 06:991A: 70        .byte $70   ; 
- D 0 - I - 0x01992B 06:991B: 02        .byte $02   ; 
- D 0 - I - 0x01992C 06:991C: 14        .byte $14   ; 
- D 0 - I - 0x01992D 06:991D: EB        .byte $EB   ; 
- D 0 - I - 0x01992E 06:991E: 50        .byte $50   ; 
- D 0 - I - 0x01992F 06:991F: 51        .byte $51   ; 
- D 0 - I - 0x019930 06:9920: E2        .byte $E2   ; 
- D 0 - I - 0x019931 06:9921: 41        .byte $41   ; 
- D 0 - I - 0x019932 06:9922: 41        .byte $41   ; 
- D 0 - I - 0x019933 06:9923: E9        .byte $E9   ; 
- D 0 - I - 0x019934 06:9924: 71        .byte $71   ; 
- D 0 - I - 0x019935 06:9925: E9        .byte $E9   ; 
- D 0 - I - 0x019936 06:9926: 30        .byte $30   ; 
- D 0 - I - 0x019937 06:9927: E4        .byte $E4   ; 
- D 0 - I - 0x019938 06:9928: 90        .byte $90   ; 
- D 0 - I - 0x019939 06:9929: E3        .byte $E3   ; 
- D 0 - I - 0x01993A 06:992A: 02        .byte $02   ; 
- D 0 - I - 0x01993B 06:992B: E4        .byte $E4   ; 
- D 0 - I - 0x01993C 06:992C: B0        .byte $B0   ; 
- D 0 - I - 0x01993D 06:992D: C0        .byte $C0   ; 
- D 0 - I - 0x01993E 06:992E: F3        .byte $F3   ; 
- D 0 - I - 0x01993F 06:992F: B0        .byte $B0   ; 
- D 0 - I - 0x019940 06:9930: F0        .byte $F0   ; 
- D 0 - I - 0x019941 06:9931: 70        .byte $70   ; 
- D 0 - I - 0x019942 06:9932: C0        .byte $C0   ; 
- D 0 - I - 0x019943 06:9933: F3        .byte $F3   ; 
- D 0 - I - 0x019944 06:9934: 70        .byte $70   ; 
- D 0 - I - 0x019945 06:9935: F0        .byte $F0   ; 
- D 0 - I - 0x019946 06:9936: 59        .byte $59   ; 
- D 0 - I - 0x019947 06:9937: E9        .byte $E9   ; 
- D 0 - I - 0x019948 06:9938: B1        .byte $B1   ; 
- D 0 - I - 0x019949 06:9939: 52        .byte $52   ; 
- D 0 - I - 0x01994A 06:993A: 52        .byte $52   ; 
- D 0 - I - 0x01994B 06:993B: 71        .byte $71   ; 
- D 0 - I - 0x01994C 06:993C: E9        .byte $E9   ; 
- D 0 - I - 0x01994D 06:993D: 31        .byte $31   ; 
- D 0 - I - 0x01994E 06:993E: E9        .byte $E9   ; 
- D 0 - I - 0x01994F 06:993F: 70        .byte $70   ; 
- D 0 - I - 0x019950 06:9940: FD        .byte $FD   ; 



_off014_28_9941_01:
- D 0 - I - 0x019951 06:9941: E9        .byte $E9   ; 
- D 0 - I - 0x019952 06:9942: 31        .byte $31   ; 
- D 0 - I - 0x019953 06:9943: D6        .byte $D6   ; 
- D 0 - I - 0x019954 06:9944: 70        .byte $70   ; 
- D 0 - I - 0x019955 06:9945: 00        .byte $00   ; 
- D 0 - I - 0x019956 06:9946: 11        .byte $11   ; 
- D 0 - I - 0x019957 06:9947: C6        .byte $C6   ; 
- D 0 - I - 0x019958 06:9948: E3        .byte $E3   ; 
- D 0 - I - 0x019959 06:9949: 70        .byte $70   ; 
- D 0 - I - 0x01995A 06:994A: 90        .byte $90   ; 
- D 0 - I - 0x01995B 06:994B: B0        .byte $B0   ; 
- D 0 - I - 0x01995C 06:994C: E2        .byte $E2   ; 
- D 0 - I - 0x01995D 06:994D: 01        .byte $01   ; 
- D 0 - I - 0x01995E 06:994E: E3        .byte $E3   ; 
- D 0 - I - 0x01995F 06:994F: B1        .byte $B1   ; 
- D 0 - I - 0x019960 06:9950: E2        .byte $E2   ; 
- D 0 - I - 0x019961 06:9951: 41        .byte $41   ; 
- D 0 - I - 0x019962 06:9952: 21        .byte $21   ; 
- D 0 - I - 0x019963 06:9953: 70        .byte $70   ; 
- D 0 - I - 0x019964 06:9954: EB        .byte $EB   ; 
- D 0 - I - 0x019965 06:9955: 50        .byte $50   ; 
- D 0 - I - 0x019966 06:9956: 21        .byte $21   ; 
- D 0 - I - 0x019967 06:9957: E7        .byte $E7   ; 
- D 0 - I - 0x019968 06:9958: 03        .byte $03   ; 
- D 0 - I - 0x019969 06:9959: 82        .byte $82   ; 
loc_FF_995A:
- D 0 - I - 0x01996A 06:995A: E9        .byte $E9   ; 
- D 0 - I - 0x01996B 06:995B: 31        .byte $31   ; 
- D 0 - I - 0x01996C 06:995C: D6        .byte $D6   ; 
- D 0 - I - 0x01996D 06:995D: 70        .byte $70   ; 
- D 0 - I - 0x01996E 06:995E: 02        .byte $02   ; 
- D 0 - I - 0x01996F 06:995F: 64        .byte $64   ; 
- D 0 - I - 0x019970 06:9960: EB        .byte $EB   ; 
- D 0 - I - 0x019971 06:9961: 50        .byte $50   ; 
- D 0 - I - 0x019972 06:9962: 52        .byte $52   ; 
- D 0 - I - 0x019973 06:9963: FD        .byte $FD   ; 
- D 0 - I - 0x019974 06:9964: 83 9A     .word sub_FD_9A83
- D 0 - I - 0x019976 06:9966: FD        .byte $FD   ; 
- D 0 - I - 0x019977 06:9967: 83 9A     .word sub_FD_9A83
- D 0 - I - 0x019979 06:9969: E9        .byte $E9   ; 
- D 0 - I - 0x01997A 06:996A: 71        .byte $71   ; 
- D 0 - I - 0x01997B 06:996B: D6        .byte $D6   ; 
- D 0 - I - 0x01997C 06:996C: 30        .byte $30   ; 
- D 0 - I - 0x01997D 06:996D: 02        .byte $02   ; 
- D 0 - I - 0x01997E 06:996E: 13        .byte $13   ; 
- D 0 - I - 0x01997F 06:996F: EB        .byte $EB   ; 
- D 0 - I - 0x019980 06:9970: 50        .byte $50   ; 
- D 0 - I - 0x019981 06:9971: 71        .byte $71   ; 
- D 0 - I - 0x019982 06:9972: E3        .byte $E3   ; 
- D 0 - I - 0x019983 06:9973: 90        .byte $90   ; 
- D 0 - I - 0x019984 06:9974: E3        .byte $E3   ; 
- D 0 - I - 0x019985 06:9975: 90        .byte $90   ; 
- D 0 - I - 0x019986 06:9976: 91        .byte $91   ; 
- D 0 - I - 0x019987 06:9977: 90        .byte $90   ; 
- D 0 - I - 0x019988 06:9978: B1        .byte $B1   ; 
- D 0 - I - 0x019989 06:9979: B0        .byte $B0   ; 
- D 0 - I - 0x01998A 06:997A: E2        .byte $E2   ; 
- D 0 - I - 0x01998B 06:997B: 01        .byte $01   ; 
- D 0 - I - 0x01998C 06:997C: E3        .byte $E3   ; 
- D 0 - I - 0x01998D 06:997D: B1        .byte $B1   ; 
- D 0 - I - 0x01998E 06:997E: E2        .byte $E2   ; 
- D 0 - I - 0x01998F 06:997F: 00        .byte $00   ; 
- D 0 - I - 0x019990 06:9980: 21        .byte $21   ; 
- D 0 - I - 0x019991 06:9981: C0        .byte $C0   ; 
- D 0 - I - 0x019992 06:9982: F3        .byte $F3   ; 
- D 0 - I - 0x019993 06:9983: 20        .byte $20   ; 
- D 0 - I - 0x019994 06:9984: F0        .byte $F0   ; 
- D 0 - I - 0x019995 06:9985: 00        .byte $00   ; 
- D 0 - I - 0x019996 06:9986: 01        .byte $01   ; 
- D 0 - I - 0x019997 06:9987: 00        .byte $00   ; 
- D 0 - I - 0x019998 06:9988: 21        .byte $21   ; 
- D 0 - I - 0x019999 06:9989: 20        .byte $20   ; 
- D 0 - I - 0x01999A 06:998A: 41        .byte $41   ; 
- D 0 - I - 0x01999B 06:998B: 21        .byte $21   ; 
- D 0 - I - 0x01999C 06:998C: 40        .byte $40   ; 
- D 0 - I - 0x01999D 06:998D: 72        .byte $72   ; 
- D 0 - I - 0x01999E 06:998E: E9        .byte $E9   ; 
- D 0 - I - 0x01999F 06:998F: 71        .byte $71   ; 
- D 0 - I - 0x0199A0 06:9990: E6        .byte $E6   ; 
- D 0 - I - 0x0199A1 06:9991: 0C        .byte $0C   ; 
- D 0 - I - 0x0199A2 06:9992: 4A        .byte $4A   ; 
- D 0 - I - 0x0199A3 06:9993: E6        .byte $E6   ; 
- D 0 - I - 0x0199A4 06:9994: 06        .byte $06   ; 
- D 0 - I - 0x0199A5 06:9995: 40        .byte $40   ; 
- D 0 - I - 0x0199A6 06:9996: 20        .byte $20   ; 
- D 0 - I - 0x0199A7 06:9997: 47        .byte $47   ; 
- D 0 - I - 0x0199A8 06:9998: E9        .byte $E9   ; 
- D 0 - I - 0x0199A9 06:9999: 31        .byte $31   ; 
- D 0 - I - 0x0199AA 06:999A: D6        .byte $D6   ; 
- D 0 - I - 0x0199AB 06:999B: 70        .byte $70   ; 
- D 0 - I - 0x0199AC 06:999C: 02        .byte $02   ; 
- D 0 - I - 0x0199AD 06:999D: 14        .byte $14   ; 
- D 0 - I - 0x0199AE 06:999E: EB        .byte $EB   ; 
- D 0 - I - 0x0199AF 06:999F: 50        .byte $50   ; 
- D 0 - I - 0x0199B0 06:99A0: 51        .byte $51   ; 
- D 0 - I - 0x0199B1 06:99A1: FD        .byte $FD   ; 
- D 0 - I - 0x0199B2 06:99A2: AC 9A     .word sub_FD_9AAC
- D 0 - I - 0x0199B4 06:99A4: B2        .byte $B2   ; 
- D 0 - I - 0x0199B5 06:99A5: 90        .byte $90   ; 
- D 0 - I - 0x0199B6 06:99A6: C0        .byte $C0   ; 
- D 0 - I - 0x0199B7 06:99A7: F3        .byte $F3   ; 
- D 0 - I - 0x0199B8 06:99A8: 90        .byte $90   ; 
- D 0 - I - 0x0199B9 06:99A9: F0        .byte $F0   ; 
- D 0 - I - 0x0199BA 06:99AA: 70        .byte $70   ; 
- D 0 - I - 0x0199BB 06:99AB: C0        .byte $C0   ; 
- D 0 - I - 0x0199BC 06:99AC: F3        .byte $F3   ; 
- D 0 - I - 0x0199BD 06:99AD: 70        .byte $70   ; 
- D 0 - I - 0x0199BE 06:99AE: F0        .byte $F0   ; 
- D 0 - I - 0x0199BF 06:99AF: E6        .byte $E6   ; 
- D 0 - I - 0x0199C0 06:99B0: 0C        .byte $0C   ; 
- D 0 - I - 0x0199C1 06:99B1: E1        .byte $E1   ; 
- D 0 - I - 0x0199C2 06:99B2: 28        .byte $28   ; 
- D 0 - I - 0x0199C3 06:99B3: E6        .byte $E6   ; 
- D 0 - I - 0x0199C4 06:99B4: 06        .byte $06   ; 
- D 0 - I - 0x0199C5 06:99B5: FD        .byte $FD   ; 
- D 0 - I - 0x0199C6 06:99B6: AC 9A     .word sub_FD_9AAC
- D 0 - I - 0x0199C8 06:99B8: B0        .byte $B0   ; 
- D 0 - I - 0x0199C9 06:99B9: E1        .byte $E1   ; 
- D 0 - I - 0x0199CA 06:99BA: 00        .byte $00   ; 
- D 0 - I - 0x0199CB 06:99BB: 20        .byte $20   ; 
- D 0 - I - 0x0199CC 06:99BC: 40        .byte $40   ; 
- D 0 - I - 0x0199CD 06:99BD: 40        .byte $40   ; 
- D 0 - I - 0x0199CE 06:99BE: C0        .byte $C0   ; 
- D 0 - I - 0x0199CF 06:99BF: 70        .byte $70   ; 
- D 0 - I - 0x0199D0 06:99C0: C0        .byte $C0   ; 
- D 0 - I - 0x0199D1 06:99C1: F3        .byte $F3   ; 
- D 0 - I - 0x0199D2 06:99C2: 70        .byte $70   ; 
- D 0 - I - 0x0199D3 06:99C3: F0        .byte $F0   ; 
- D 0 - I - 0x0199D4 06:99C4: E8        .byte $E8   ; 
- D 0 - I - 0x0199D5 06:99C5: 32        .byte $32   ; 
- D 0 - I - 0x0199D6 06:99C6: E6        .byte $E6   ; 
- D 0 - I - 0x0199D7 06:99C7: 0C        .byte $0C   ; 
- D 0 - I - 0x0199D8 06:99C8: 88        .byte $88   ; 
- D 0 - I - 0x0199D9 06:99C9: E9        .byte $E9   ; 
- D 0 - I - 0x0199DA 06:99CA: B1        .byte $B1   ; 
- D 0 - I - 0x0199DB 06:99CB: D6        .byte $D6   ; 
- D 0 - I - 0x0199DC 06:99CC: 70        .byte $70   ; 
- D 0 - I - 0x0199DD 06:99CD: 06        .byte $06   ; 
- D 0 - I - 0x0199DE 06:99CE: 18        .byte $18   ; 
- D 0 - I - 0x0199DF 06:99CF: FB        .byte $FB   ; 
- D 0 - I - 0x0199E0 06:99D0: E5        .byte $E5   ; 
- D 0 - I - 0x0199E1 06:99D1: 91        .byte $91   ; 
- D 0 - I - 0x0199E2 06:99D2: 91        .byte $91   ; 
- D 0 - I - 0x0199E3 06:99D3: F3        .byte $F3   ; 
- D 0 - I - 0x0199E4 06:99D4: E2        .byte $E2   ; 
- D 0 - I - 0x0199E5 06:99D5: 91        .byte $91   ; 
- D 0 - I - 0x0199E6 06:99D6: C0        .byte $C0   ; 
- D 0 - I - 0x0199E7 06:99D7: F5        .byte $F5   ; 
- D 0 - I - 0x0199E8 06:99D8: 90        .byte $90   ; 
- D 0 - I - 0x0199E9 06:99D9: F0        .byte $F0   ; 
- D 0 - I - 0x0199EA 06:99DA: E5        .byte $E5   ; 
- D 0 - I - 0x0199EB 06:99DB: 91        .byte $91   ; 
- D 0 - I - 0x0199EC 06:99DC: 91        .byte $91   ; 
- D 0 - I - 0x0199ED 06:99DD: F3        .byte $F3   ; 
- D 0 - I - 0x0199EE 06:99DE: E2        .byte $E2   ; 
- D 0 - I - 0x0199EF 06:99DF: 71        .byte $71   ; 
- D 0 - I - 0x0199F0 06:99E0: C0        .byte $C0   ; 
- D 0 - I - 0x0199F1 06:99E1: F5        .byte $F5   ; 
- D 0 - I - 0x0199F2 06:99E2: 70        .byte $70   ; 
- D 0 - I - 0x0199F3 06:99E3: F0        .byte $F0   ; 
- D 0 - I - 0x0199F4 06:99E4: E5        .byte $E5   ; 
- D 0 - I - 0x0199F5 06:99E5: 91        .byte $91   ; 
- D 0 - I - 0x0199F6 06:99E6: 91        .byte $91   ; 
- D 0 - I - 0x0199F7 06:99E7: F3        .byte $F3   ; 
- D 0 - I - 0x0199F8 06:99E8: E2        .byte $E2   ; 
- D 0 - I - 0x0199F9 06:99E9: 61        .byte $61   ; 
- D 0 - I - 0x0199FA 06:99EA: C0        .byte $C0   ; 
- D 0 - I - 0x0199FB 06:99EB: F5        .byte $F5   ; 
- D 0 - I - 0x0199FC 06:99EC: 60        .byte $60   ; 
- D 0 - I - 0x0199FD 06:99ED: F0        .byte $F0   ; 
- D 0 - I - 0x0199FE 06:99EE: E5        .byte $E5   ; 
- D 0 - I - 0x0199FF 06:99EF: 91        .byte $91   ; 
- D 0 - I - 0x019A00 06:99F0: 91        .byte $91   ; 
- D 0 - I - 0x019A01 06:99F1: F3        .byte $F3   ; 
- D 0 - I - 0x019A02 06:99F2: E2        .byte $E2   ; 
- D 0 - I - 0x019A03 06:99F3: 21        .byte $21   ; 
- D 0 - I - 0x019A04 06:99F4: C0        .byte $C0   ; 
- D 0 - I - 0x019A05 06:99F5: F5        .byte $F5   ; 
- D 0 - I - 0x019A06 06:99F6: 20        .byte $20   ; 
- D 0 - I - 0x019A07 06:99F7: F0        .byte $F0   ; 
- D 0 - I - 0x019A08 06:99F8: FE        .byte $FE   ; 
- D 0 - I - 0x019A09 06:99F9: 03        .byte $03   ; 
- D 0 - I - 0x019A0A 06:99FA: E5        .byte $E5   ; 
- D 0 - I - 0x019A0B 06:99FB: 91        .byte $91   ; 
- D 0 - I - 0x019A0C 06:99FC: 91        .byte $91   ; 
- D 0 - I - 0x019A0D 06:99FD: F3        .byte $F3   ; 
- D 0 - I - 0x019A0E 06:99FE: E2        .byte $E2   ; 
- D 0 - I - 0x019A0F 06:99FF: 91        .byte $91   ; 
- D 0 - I - 0x019A10 06:9A00: C0        .byte $C0   ; 
- D 0 - I - 0x019A11 06:9A01: F5        .byte $F5   ; 
- D 0 - I - 0x019A12 06:9A02: 90        .byte $90   ; 
- D 0 - I - 0x019A13 06:9A03: F0        .byte $F0   ; 
- D 0 - I - 0x019A14 06:9A04: E5        .byte $E5   ; 
- D 0 - I - 0x019A15 06:9A05: 91        .byte $91   ; 
- D 0 - I - 0x019A16 06:9A06: 91        .byte $91   ; 
- D 0 - I - 0x019A17 06:9A07: F3        .byte $F3   ; 
- D 0 - I - 0x019A18 06:9A08: E2        .byte $E2   ; 
- D 0 - I - 0x019A19 06:9A09: 71        .byte $71   ; 
- D 0 - I - 0x019A1A 06:9A0A: C0        .byte $C0   ; 
- D 0 - I - 0x019A1B 06:9A0B: F5        .byte $F5   ; 
- D 0 - I - 0x019A1C 06:9A0C: 70        .byte $70   ; 
- D 0 - I - 0x019A1D 06:9A0D: F0        .byte $F0   ; 
- D 0 - I - 0x019A1E 06:9A0E: E5        .byte $E5   ; 
- D 0 - I - 0x019A1F 06:9A0F: 91        .byte $91   ; 
- D 0 - I - 0x019A20 06:9A10: 91        .byte $91   ; 
- D 0 - I - 0x019A21 06:9A11: F3        .byte $F3   ; 
- D 0 - I - 0x019A22 06:9A12: E2        .byte $E2   ; 
- D 0 - I - 0x019A23 06:9A13: 61        .byte $61   ; 
- D 0 - I - 0x019A24 06:9A14: C0        .byte $C0   ; 
- D 0 - I - 0x019A25 06:9A15: F5        .byte $F5   ; 
- D 0 - I - 0x019A26 06:9A16: 70        .byte $70   ; 
- D 0 - I - 0x019A27 06:9A17: F0        .byte $F0   ; 
- D 0 - I - 0x019A28 06:9A18: E9        .byte $E9   ; 
- D 0 - I - 0x019A29 06:9A19: 31        .byte $31   ; 
- D 0 - I - 0x019A2A 06:9A1A: D4        .byte $D4   ; 
- D 0 - I - 0x019A2B 06:9A1B: 70        .byte $70   ; 
- D 0 - I - 0x019A2C 06:9A1C: 02        .byte $02   ; 
- D 0 - I - 0x019A2D 06:9A1D: 14        .byte $14   ; 
- D 0 - I - 0x019A2E 06:9A1E: ED        .byte $ED   ; 
- D 0 - I - 0x019A2F 06:9A1F: 81        .byte $81   ; 
- D 0 - I - 0x019A30 06:9A20: E3        .byte $E3   ; 
- D 0 - I - 0x019A31 06:9A21: 71        .byte $71   ; 
- D 0 - I - 0x019A32 06:9A22: C0        .byte $C0   ; 
- D 0 - I - 0x019A33 06:9A23: F4        .byte $F4   ; 
- D 0 - I - 0x019A34 06:9A24: 70        .byte $70   ; 
- D 0 - I - 0x019A35 06:9A25: F0        .byte $F0   ; 
- D 0 - I - 0x019A36 06:9A26: 61        .byte $61   ; 
- D 0 - I - 0x019A37 06:9A27: C0        .byte $C0   ; 
- D 0 - I - 0x019A38 06:9A28: F4        .byte $F4   ; 
- D 0 - I - 0x019A39 06:9A29: 60        .byte $60   ; 
- D 0 - I - 0x019A3A 06:9A2A: F0        .byte $F0   ; 
- D 0 - I - 0x019A3B 06:9A2B: 21        .byte $21   ; 
- D 0 - I - 0x019A3C 06:9A2C: C0        .byte $C0   ; 
- D 0 - I - 0x019A3D 06:9A2D: F4        .byte $F4   ; 
- D 0 - I - 0x019A3E 06:9A2E: 20        .byte $20   ; 
- D 0 - I - 0x019A3F 06:9A2F: ED        .byte $ED   ; 
- D 0 - I - 0x019A40 06:9A30: 00        .byte $00   ; 
- D 0 - I - 0x019A41 06:9A31: E9        .byte $E9   ; 
- D 0 - I - 0x019A42 06:9A32: 31        .byte $31   ; 
- D 0 - I - 0x019A43 06:9A33: D6        .byte $D6   ; 
- D 0 - I - 0x019A44 06:9A34: 70        .byte $70   ; 
- D 0 - I - 0x019A45 06:9A35: 07        .byte $07   ; 
- D 0 - I - 0x019A46 06:9A36: 34        .byte $34   ; 
- D 0 - I - 0x019A47 06:9A37: EB        .byte $EB   ; 
- D 0 - I - 0x019A48 06:9A38: 50        .byte $50   ; 
- D 0 - I - 0x019A49 06:9A39: 51        .byte $51   ; 
- D 0 - I - 0x019A4A 06:9A3A: E6        .byte $E6   ; 
- D 0 - I - 0x019A4B 06:9A3B: 04        .byte $04   ; 
- D 0 - I - 0x019A4C 06:9A3C: E3        .byte $E3   ; 
- D 0 - I - 0x019A4D 06:9A3D: 93        .byte $93   ; 
- D 0 - I - 0x019A4E 06:9A3E: B3        .byte $B3   ; 
- D 0 - I - 0x019A4F 06:9A3F: E2        .byte $E2   ; 
- D 0 - I - 0x019A50 06:9A40: 03        .byte $03   ; 
- D 0 - I - 0x019A51 06:9A41: 23        .byte $23   ; 
- D 0 - I - 0x019A52 06:9A42: 03        .byte $03   ; 
- D 0 - I - 0x019A53 06:9A43: 23        .byte $23   ; 
- D 0 - I - 0x019A54 06:9A44: E6        .byte $E6   ; 
- D 0 - I - 0x019A55 06:9A45: 06        .byte $06   ; 
- D 0 - I - 0x019A56 06:9A46: 4F        .byte $4F   ; 
- D 0 - I - 0x019A57 06:9A47: E6        .byte $E6   ; 
- D 0 - I - 0x019A58 06:9A48: 04        .byte $04   ; 
- D 0 - I - 0x019A59 06:9A49: E2        .byte $E2   ; 
- D 0 - I - 0x019A5A 06:9A4A: 03        .byte $03   ; 
- D 0 - I - 0x019A5B 06:9A4B: 23        .byte $23   ; 
- D 0 - I - 0x019A5C 06:9A4C: 43        .byte $43   ; 
- D 0 - I - 0x019A5D 06:9A4D: 73        .byte $73   ; 
- D 0 - I - 0x019A5E 06:9A4E: 43        .byte $43   ; 
- D 0 - I - 0x019A5F 06:9A4F: 73        .byte $73   ; 
- D 0 - I - 0x019A60 06:9A50: E6        .byte $E6   ; 
- D 0 - I - 0x019A61 06:9A51: 06        .byte $06   ; 
- D 0 - I - 0x019A62 06:9A52: 97        .byte $97   ; 
- D 0 - I - 0x019A63 06:9A53: E6        .byte $E6   ; 
- D 0 - I - 0x019A64 06:9A54: 04        .byte $04   ; 
- D 0 - I - 0x019A65 06:9A55: E2        .byte $E2   ; 
- D 0 - I - 0x019A66 06:9A56: 73        .byte $73   ; 
- D 0 - I - 0x019A67 06:9A57: 63        .byte $63   ; 
- D 0 - I - 0x019A68 06:9A58: 23        .byte $23   ; 
- D 0 - I - 0x019A69 06:9A59: E9        .byte $E9   ; 
- D 0 - I - 0x019A6A 06:9A5A: 31        .byte $31   ; 
- D 0 - I - 0x019A6B 06:9A5B: D6        .byte $D6   ; 
- D 0 - I - 0x019A6C 06:9A5C: 70        .byte $70   ; 
- D 0 - I - 0x019A6D 06:9A5D: 02        .byte $02   ; 
- D 0 - I - 0x019A6E 06:9A5E: 14        .byte $14   ; 
- D 0 - I - 0x019A6F 06:9A5F: E2        .byte $E2   ; 
- D 0 - I - 0x019A70 06:9A60: 40        .byte $40   ; 
- D 0 - I - 0x019A71 06:9A61: 40        .byte $40   ; 
- D 0 - I - 0x019A72 06:9A62: 40        .byte $40   ; 
- D 0 - I - 0x019A73 06:9A63: 40        .byte $40   ; 
- D 0 - I - 0x019A74 06:9A64: C0        .byte $C0   ; 
- D 0 - I - 0x019A75 06:9A65: F4        .byte $F4   ; 
- D 0 - I - 0x019A76 06:9A66: 40        .byte $40   ; 
- D 0 - I - 0x019A77 06:9A67: F0        .byte $F0   ; 
- D 0 - I - 0x019A78 06:9A68: 40        .byte $40   ; 
- D 0 - I - 0x019A79 06:9A69: 40        .byte $40   ; 
- D 0 - I - 0x019A7A 06:9A6A: 40        .byte $40   ; 
- D 0 - I - 0x019A7B 06:9A6B: 40        .byte $40   ; 
- D 0 - I - 0x019A7C 06:9A6C: C0        .byte $C0   ; 
- D 0 - I - 0x019A7D 06:9A6D: F4        .byte $F4   ; 
- D 0 - I - 0x019A7E 06:9A6E: 40        .byte $40   ; 
- D 0 - I - 0x019A7F 06:9A6F: F0        .byte $F0   ; 
- D 0 - I - 0x019A80 06:9A70: 40        .byte $40   ; 
- D 0 - I - 0x019A81 06:9A71: 40        .byte $40   ; 
- D 0 - I - 0x019A82 06:9A72: C0        .byte $C0   ; 
- D 0 - I - 0x019A83 06:9A73: F4        .byte $F4   ; 
- D 0 - I - 0x019A84 06:9A74: 40        .byte $40   ; 
- D 0 - I - 0x019A85 06:9A75: F0        .byte $F0   ; 
- D 0 - I - 0x019A86 06:9A76: 90        .byte $90   ; 
- D 0 - I - 0x019A87 06:9A77: 90        .byte $90   ; 
- D 0 - I - 0x019A88 06:9A78: 90        .byte $90   ; 
- D 0 - I - 0x019A89 06:9A79: 90        .byte $90   ; 
- D 0 - I - 0x019A8A 06:9A7A: C0        .byte $C0   ; 
- D 0 - I - 0x019A8B 06:9A7B: 90        .byte $90   ; 
- D 0 - I - 0x019A8C 06:9A7C: 90        .byte $90   ; 
- D 0 - I - 0x019A8D 06:9A7D: 90        .byte $90   ; 
- D 0 - I - 0x019A8E 06:9A7E: 87        .byte $87   ; 
- D 0 - I - 0x019A8F 06:9A7F: FE        .byte $FE   ; 
- D 0 - I - 0x019A90 06:9A80: FF        .byte $FF   ; 
- D 0 - I - 0x019A91 06:9A81: 5A 99     .word loc_FF_995A



sub_FD_9A83:
- D 0 - I - 0x019A93 06:9A83: E3        .byte $E3   ; 
- D 0 - I - 0x019A94 06:9A84: 9B        .byte $9B   ; 
- D 0 - I - 0x019A95 06:9A85: 90        .byte $90   ; 
- D 0 - I - 0x019A96 06:9A86: E2        .byte $E2   ; 
- D 0 - I - 0x019A97 06:9A87: 02        .byte $02   ; 
- D 0 - I - 0x019A98 06:9A88: E3        .byte $E3   ; 
- D 0 - I - 0x019A99 06:9A89: BB        .byte $BB   ; 
- D 0 - I - 0x019A9A 06:9A8A: 40        .byte $40   ; 
- D 0 - I - 0x019A9B 06:9A8B: 72        .byte $72   ; 
- D 0 - I - 0x019A9C 06:9A8C: 9B        .byte $9B   ; 
- D 0 - I - 0x019A9D 06:9A8D: 40        .byte $40   ; 
- D 0 - I - 0x019A9E 06:9A8E: 70        .byte $70   ; 
- D 0 - I - 0x019A9F 06:9A8F: E6        .byte $E6   ; 
- D 0 - I - 0x019AA0 06:9A90: 02        .byte $02   ; 
- D 0 - I - 0x019AA1 06:9A91: F6        .byte $F6   ; 
- D 0 - I - 0x019AA2 06:9A92: 90        .byte $90   ; 
- D 0 - I - 0x019AA3 06:9A93: F5        .byte $F5   ; 
- D 0 - I - 0x019AA4 06:9A94: A0        .byte $A0   ; 
- D 0 - I - 0x019AA5 06:9A95: F4        .byte $F4   ; 
- D 0 - I - 0x019AA6 06:9A96: B0        .byte $B0   ; 
- D 0 - I - 0x019AA7 06:9A97: E2        .byte $E2   ; 
- D 0 - I - 0x019AA8 06:9A98: F3        .byte $F3   ; 
- D 0 - I - 0x019AA9 06:9A99: 00        .byte $00   ; 
- D 0 - I - 0x019AAA 06:9A9A: F2        .byte $F2   ; 
- D 0 - I - 0x019AAB 06:9A9B: 10        .byte $10   ; 
- D 0 - I - 0x019AAC 06:9A9C: F1        .byte $F1   ; 
- D 0 - I - 0x019AAD 06:9A9D: 20        .byte $20   ; 
- D 0 - I - 0x019AAE 06:9A9E: E6        .byte $E6   ; 
- D 0 - I - 0x019AAF 06:9A9F: 01        .byte $01   ; 
- D 0 - I - 0x019AB0 06:9AA0: F0        .byte $F0   ; 
- D 0 - I - 0x019AB1 06:9AA1: 30        .byte $30   ; 
- D 0 - I - 0x019AB2 06:9AA2: 40        .byte $40   ; 
- D 0 - I - 0x019AB3 06:9AA3: 50        .byte $50   ; 
- D 0 - I - 0x019AB4 06:9AA4: 60        .byte $60   ; 
- D 0 - I - 0x019AB5 06:9AA5: 70        .byte $70   ; 
- D 0 - I - 0x019AB6 06:9AA6: 80        .byte $80   ; 
- D 0 - I - 0x019AB7 06:9AA7: E6        .byte $E6   ; 
- D 0 - I - 0x019AB8 06:9AA8: 06        .byte $06   ; 
- D 0 - I - 0x019AB9 06:9AA9: E2        .byte $E2   ; 
- D 0 - I - 0x019ABA 06:9AAA: 9E        .byte $9E   ; 
- D 0 - I - 0x019ABB 06:9AAB: FD        .byte $FD   ; 
sub_FD_9AAC:
- D 0 - I - 0x019ABC 06:9AAC: E1        .byte $E1   ; 
- D 0 - I - 0x019ABD 06:9AAD: 01        .byte $01   ; 
- D 0 - I - 0x019ABE 06:9AAE: 01        .byte $01   ; 
- D 0 - I - 0x019ABF 06:9AAF: F5        .byte $F5   ; 
- D 0 - I - 0x019AC0 06:9AB0: 00        .byte $00   ; 
- D 0 - I - 0x019AC1 06:9AB1: F0        .byte $F0   ; 
- D 0 - I - 0x019AC2 06:9AB2: E2        .byte $E2   ; 
- D 0 - I - 0x019AC3 06:9AB3: B2        .byte $B2   ; 
- D 0 - I - 0x019AC4 06:9AB4: 90        .byte $90   ; 
- D 0 - I - 0x019AC5 06:9AB5: C0        .byte $C0   ; 
- D 0 - I - 0x019AC6 06:9AB6: F3        .byte $F3   ; 
- D 0 - I - 0x019AC7 06:9AB7: 90        .byte $90   ; 
- D 0 - I - 0x019AC8 06:9AB8: F0        .byte $F0   ; 
- D 0 - I - 0x019AC9 06:9AB9: 70        .byte $70   ; 
- D 0 - I - 0x019ACA 06:9ABA: C0        .byte $C0   ; 
- D 0 - I - 0x019ACB 06:9ABB: F3        .byte $F3   ; 
- D 0 - I - 0x019ACC 06:9ABC: 70        .byte $70   ; 
- D 0 - I - 0x019ACD 06:9ABD: F0        .byte $F0   ; 
- D 0 - I - 0x019ACE 06:9ABE: E6        .byte $E6   ; 
- D 0 - I - 0x019ACF 06:9ABF: 0C        .byte $0C   ; 
- D 0 - I - 0x019AD0 06:9AC0: 98        .byte $98   ; 
- D 0 - I - 0x019AD1 06:9AC1: E6        .byte $E6   ; 
- D 0 - I - 0x019AD2 06:9AC2: 06        .byte $06   ; 
- D 0 - I - 0x019AD3 06:9AC3: E1        .byte $E1   ; 
- D 0 - I - 0x019AD4 06:9AC4: 01        .byte $01   ; 
- D 0 - I - 0x019AD5 06:9AC5: 01        .byte $01   ; 
- D 0 - I - 0x019AD6 06:9AC6: F5        .byte $F5   ; 
- D 0 - I - 0x019AD7 06:9AC7: 00        .byte $00   ; 
- D 0 - I - 0x019AD8 06:9AC8: F0        .byte $F0   ; 
- D 0 - I - 0x019AD9 06:9AC9: E2        .byte $E2   ; 
- D 0 - I - 0x019ADA 06:9ACA: FD        .byte $FD   ; 



_off014_28_9ACB_02:
- D 0 - I - 0x019ADB 06:9ACB: D6        .byte $D6   ; 
- D 0 - I - 0x019ADC 06:9ACC: 0D        .byte $0D   ; 
- D 0 - I - 0x019ADD 06:9ACD: E4        .byte $E4   ; 
- D 0 - I - 0x019ADE 06:9ACE: C6        .byte $C6   ; 
- D 0 - I - 0x019ADF 06:9ACF: 70        .byte $70   ; 
- D 0 - I - 0x019AE0 06:9AD0: 90        .byte $90   ; 
- D 0 - I - 0x019AE1 06:9AD1: B0        .byte $B0   ; 
- D 0 - I - 0x019AE2 06:9AD2: E3        .byte $E3   ; 
- D 0 - I - 0x019AE3 06:9AD3: 00        .byte $00   ; 
- D 0 - I - 0x019AE4 06:9AD4: E6        .byte $E6   ; 
- D 0 - I - 0x019AE5 06:9AD5: 03        .byte $03   ; 
- D 0 - I - 0x019AE6 06:9AD6: E2        .byte $E2   ; 
- D 0 - I - 0x019AE7 06:9AD7: 00        .byte $00   ; 
- D 0 - I - 0x019AE8 06:9AD8: C0        .byte $C0   ; 
- D 0 - I - 0x019AE9 06:9AD9: E6        .byte $E6   ; 
- D 0 - I - 0x019AEA 06:9ADA: 03        .byte $03   ; 
- D 0 - I - 0x019AEB 06:9ADB: E4        .byte $E4   ; 
- D 0 - I - 0x019AEC 06:9ADC: B2        .byte $B2   ; 
- D 0 - I - 0x019AED 06:9ADD: C0        .byte $C0   ; 
- D 0 - I - 0x019AEE 06:9ADE: E3        .byte $E3   ; 
- D 0 - I - 0x019AEF 06:9ADF: 41        .byte $41   ; 
- D 0 - I - 0x019AF0 06:9AE0: E2        .byte $E2   ; 
- D 0 - I - 0x019AF1 06:9AE1: 40        .byte $40   ; 
- D 0 - I - 0x019AF2 06:9AE2: C0        .byte $C0   ; 
- D 0 - I - 0x019AF3 06:9AE3: E3        .byte $E3   ; 
- D 0 - I - 0x019AF4 06:9AE4: 22        .byte $22   ; 
- D 0 - I - 0x019AF5 06:9AE5: C0        .byte $C0   ; 
- D 0 - I - 0x019AF6 06:9AE6: E6        .byte $E6   ; 
- D 0 - I - 0x019AF7 06:9AE7: 06        .byte $06   ; 
- D 0 - I - 0x019AF8 06:9AE8: E3        .byte $E3   ; 
- D 0 - I - 0x019AF9 06:9AE9: 70        .byte $70   ; 
- D 0 - I - 0x019AFA 06:9AEA: D9        .byte $D9   ; 
- D 0 - I - 0x019AFB 06:9AEB: 00        .byte $00   ; 
- D 0 - I - 0x019AFC 06:9AEC: 80        .byte $80   ; 
- D 0 - I - 0x019AFD 06:9AED: E6        .byte $E6   ; 
- D 0 - I - 0x019AFE 06:9AEE: 01        .byte $01   ; 
- D 0 - I - 0x019AFF 06:9AEF: 70        .byte $70   ; 
- D 0 - I - 0x019B00 06:9AF0: 60        .byte $60   ; 
- D 0 - I - 0x019B01 06:9AF1: 50        .byte $50   ; 
- D 0 - I - 0x019B02 06:9AF2: 40        .byte $40   ; 
- D 0 - I - 0x019B03 06:9AF3: 30        .byte $30   ; 
- D 0 - I - 0x019B04 06:9AF4: 20        .byte $20   ; 
- D 0 - I - 0x019B05 06:9AF5: 10        .byte $10   ; 
- D 0 - I - 0x019B06 06:9AF6: 00        .byte $00   ; 
- D 0 - I - 0x019B07 06:9AF7: E4        .byte $E4   ; 
- D 0 - I - 0x019B08 06:9AF8: B0        .byte $B0   ; 
loc_FF_9AF9:
- D 0 - I - 0x019B09 06:9AF9: D6        .byte $D6   ; 
- D 0 - I - 0x019B0A 06:9AFA: 0C        .byte $0C   ; 
- D 0 - I - 0x019B0B 06:9AFB: FD        .byte $FD   ; 
- D 0 - I - 0x019B0C 06:9AFC: 00 9C     .word sub_FD_9C00
- D 0 - I - 0x019B0E 06:9AFE: 42        .byte $42   ; 
- D 0 - I - 0x019B0F 06:9AFF: 71        .byte $71   ; 
- D 0 - I - 0x019B10 06:9B00: 81        .byte $81   ; 
- D 0 - I - 0x019B11 06:9B01: FD        .byte $FD   ; 
- D 0 - I - 0x019B12 06:9B02: 00 9C     .word sub_FD_9C00
- D 0 - I - 0x019B14 06:9B04: E3        .byte $E3   ; 
- D 0 - I - 0x019B15 06:9B05: 02        .byte $02   ; 
- D 0 - I - 0x019B16 06:9B06: E4        .byte $E4   ; 
- D 0 - I - 0x019B17 06:9B07: B1        .byte $B1   ; 
- D 0 - I - 0x019B18 06:9B08: A1        .byte $A1   ; 
- D 0 - I - 0x019B19 06:9B09: D6        .byte $D6   ; 
- D 0 - I - 0x019B1A 06:9B0A: 0D        .byte $0D   ; 
- D 0 - I - 0x019B1B 06:9B0B: E4        .byte $E4   ; 
- D 0 - I - 0x019B1C 06:9B0C: 90        .byte $90   ; 
- D 0 - I - 0x019B1D 06:9B0D: 90        .byte $90   ; 
- D 0 - I - 0x019B1E 06:9B0E: 91        .byte $91   ; 
- D 0 - I - 0x019B1F 06:9B0F: E4        .byte $E4   ; 
- D 0 - I - 0x019B20 06:9B10: 90        .byte $90   ; 
- D 0 - I - 0x019B21 06:9B11: B1        .byte $B1   ; 
- D 0 - I - 0x019B22 06:9B12: B0        .byte $B0   ; 
- D 0 - I - 0x019B23 06:9B13: E3        .byte $E3   ; 
- D 0 - I - 0x019B24 06:9B14: 01        .byte $01   ; 
- D 0 - I - 0x019B25 06:9B15: E4        .byte $E4   ; 
- D 0 - I - 0x019B26 06:9B16: B1        .byte $B1   ; 
- D 0 - I - 0x019B27 06:9B17: E3        .byte $E3   ; 
- D 0 - I - 0x019B28 06:9B18: 00        .byte $00   ; 
- D 0 - I - 0x019B29 06:9B19: 22        .byte $22   ; 
- D 0 - I - 0x019B2A 06:9B1A: C0        .byte $C0   ; 
- D 0 - I - 0x019B2B 06:9B1B: 00        .byte $00   ; 
- D 0 - I - 0x019B2C 06:9B1C: 01        .byte $01   ; 
- D 0 - I - 0x019B2D 06:9B1D: 00        .byte $00   ; 
- D 0 - I - 0x019B2E 06:9B1E: 21        .byte $21   ; 
- D 0 - I - 0x019B2F 06:9B1F: 20        .byte $20   ; 
- D 0 - I - 0x019B30 06:9B20: 41        .byte $41   ; 
- D 0 - I - 0x019B31 06:9B21: 21        .byte $21   ; 
- D 0 - I - 0x019B32 06:9B22: 40        .byte $40   ; 
- D 0 - I - 0x019B33 06:9B23: 72        .byte $72   ; 
- D 0 - I - 0x019B34 06:9B24: D6        .byte $D6   ; 
- D 0 - I - 0x019B35 06:9B25: 0D        .byte $0D   ; 
- D 0 - I - 0x019B36 06:9B26: E4        .byte $E4   ; 
- D 0 - I - 0x019B37 06:9B27: 40        .byte $40   ; 
- D 0 - I - 0x019B38 06:9B28: E3        .byte $E3   ; 
- D 0 - I - 0x019B39 06:9B29: 40        .byte $40   ; 
- D 0 - I - 0x019B3A 06:9B2A: E4        .byte $E4   ; 
- D 0 - I - 0x019B3B 06:9B2B: 41        .byte $41   ; 
- D 0 - I - 0x019B3C 06:9B2C: B1        .byte $B1   ; 
- D 0 - I - 0x019B3D 06:9B2D: 40        .byte $40   ; 
- D 0 - I - 0x019B3E 06:9B2E: 40        .byte $40   ; 
- D 0 - I - 0x019B3F 06:9B2F: E3        .byte $E3   ; 
- D 0 - I - 0x019B40 06:9B30: 42        .byte $42   ; 
- D 0 - I - 0x019B41 06:9B31: E4        .byte $E4   ; 
- D 0 - I - 0x019B42 06:9B32: 42        .byte $42   ; 
- D 0 - I - 0x019B43 06:9B33: B0        .byte $B0   ; 
- D 0 - I - 0x019B44 06:9B34: B0        .byte $B0   ; 
- D 0 - I - 0x019B45 06:9B35: 40        .byte $40   ; 
- D 0 - I - 0x019B46 06:9B36: E3        .byte $E3   ; 
- D 0 - I - 0x019B47 06:9B37: 40        .byte $40   ; 
- D 0 - I - 0x019B48 06:9B38: E4        .byte $E4   ; 
- D 0 - I - 0x019B49 06:9B39: 41        .byte $41   ; 
- D 0 - I - 0x019B4A 06:9B3A: B1        .byte $B1   ; 
- D 0 - I - 0x019B4B 06:9B3B: 40        .byte $40   ; 
- D 0 - I - 0x019B4C 06:9B3C: 40        .byte $40   ; 
- D 0 - I - 0x019B4D 06:9B3D: E3        .byte $E3   ; 
- D 0 - I - 0x019B4E 06:9B3E: 40        .byte $40   ; 
- D 0 - I - 0x019B4F 06:9B3F: 40        .byte $40   ; 
- D 0 - I - 0x019B50 06:9B40: E4        .byte $E4   ; 
- D 0 - I - 0x019B51 06:9B41: 40        .byte $40   ; 
- D 0 - I - 0x019B52 06:9B42: E3        .byte $E3   ; 
- D 0 - I - 0x019B53 06:9B43: 70        .byte $70   ; 
- D 0 - I - 0x019B54 06:9B44: 70        .byte $70   ; 
- D 0 - I - 0x019B55 06:9B45: E4        .byte $E4   ; 
- D 0 - I - 0x019B56 06:9B46: 70        .byte $70   ; 
- D 0 - I - 0x019B57 06:9B47: E3        .byte $E3   ; 
- D 0 - I - 0x019B58 06:9B48: 80        .byte $80   ; 
- D 0 - I - 0x019B59 06:9B49: E4        .byte $E4   ; 
- D 0 - I - 0x019B5A 06:9B4A: 80        .byte $80   ; 
- D 0 - I - 0x019B5B 06:9B4B: D6        .byte $D6   ; 
- D 0 - I - 0x019B5C 06:9B4C: 0F        .byte $0F   ; 
- D 0 - I - 0x019B5D 06:9B4D: FD        .byte $FD   ; 
- D 0 - I - 0x019B5E 06:9B4E: 35 9C     .word sub_FD_9C35
- D 0 - I - 0x019B60 06:9B50: E3        .byte $E3   ; 
- D 0 - I - 0x019B61 06:9B51: 02        .byte $02   ; 
- D 0 - I - 0x019B62 06:9B52: E4        .byte $E4   ; 
- D 0 - I - 0x019B63 06:9B53: B1        .byte $B1   ; 
- D 0 - I - 0x019B64 06:9B54: C0        .byte $C0   ; 
- D 0 - I - 0x019B65 06:9B55: 71        .byte $71   ; 
- D 0 - I - 0x019B66 06:9B56: C0        .byte $C0   ; 
- D 0 - I - 0x019B67 06:9B57: E3        .byte $E3   ; 
- D 0 - I - 0x019B68 06:9B58: 23        .byte $23   ; 
- D 0 - I - 0x019B69 06:9B59: 20        .byte $20   ; 
- D 0 - I - 0x019B6A 06:9B5A: 20        .byte $20   ; 
- D 0 - I - 0x019B6B 06:9B5B: E4        .byte $E4   ; 
- D 0 - I - 0x019B6C 06:9B5C: 93        .byte $93   ; 
- D 0 - I - 0x019B6D 06:9B5D: E3        .byte $E3   ; 
- D 0 - I - 0x019B6E 06:9B5E: 02        .byte $02   ; 
- D 0 - I - 0x019B6F 06:9B5F: 02        .byte $02   ; 
- D 0 - I - 0x019B70 06:9B60: E4        .byte $E4   ; 
- D 0 - I - 0x019B71 06:9B61: B1        .byte $B1   ; 
- D 0 - I - 0x019B72 06:9B62: FD        .byte $FD   ; 
- D 0 - I - 0x019B73 06:9B63: 35 9C     .word sub_FD_9C35
- D 0 - I - 0x019B75 06:9B65: 70        .byte $70   ; 
- D 0 - I - 0x019B76 06:9B66: 90        .byte $90   ; 
- D 0 - I - 0x019B77 06:9B67: B0        .byte $B0   ; 
- D 0 - I - 0x019B78 06:9B68: E3        .byte $E3   ; 
- D 0 - I - 0x019B79 06:9B69: 00        .byte $00   ; 
- D 0 - I - 0x019B7A 06:9B6A: 00        .byte $00   ; 
- D 0 - I - 0x019B7B 06:9B6B: C0        .byte $C0   ; 
- D 0 - I - 0x019B7C 06:9B6C: 20        .byte $20   ; 
- D 0 - I - 0x019B7D 06:9B6D: C1        .byte $C1   ; 
- D 0 - I - 0x019B7E 06:9B6E: 43        .byte $43   ; 
- D 0 - I - 0x019B7F 06:9B6F: D6        .byte $D6   ; 
- D 0 - I - 0x019B80 06:9B70: 0D        .byte $0D   ; 
- D 0 - I - 0x019B81 06:9B71: FB        .byte $FB   ; 
- D 0 - I - 0x019B82 06:9B72: E3        .byte $E3   ; 
- D 0 - I - 0x019B83 06:9B73: 40        .byte $40   ; 
- D 0 - I - 0x019B84 06:9B74: 40        .byte $40   ; 
- D 0 - I - 0x019B85 06:9B75: E4        .byte $E4   ; 
- D 0 - I - 0x019B86 06:9B76: 41        .byte $41   ; 
- D 0 - I - 0x019B87 06:9B77: FE        .byte $FE   ; 
- D 0 - I - 0x019B88 06:9B78: 03        .byte $03   ; 
- D 0 - I - 0x019B89 06:9B79: E3        .byte $E3   ; 
- D 0 - I - 0x019B8A 06:9B7A: 40        .byte $40   ; 
- D 0 - I - 0x019B8B 06:9B7B: 40        .byte $40   ; 
- D 0 - I - 0x019B8C 06:9B7C: D6        .byte $D6   ; 
- D 0 - I - 0x019B8D 06:9B7D: 00        .byte $00   ; 
- D 0 - I - 0x019B8E 06:9B7E: FD        .byte $FD   ; 
- D 0 - I - 0x019B8F 06:9B7F: 4B 9C     .word sub_FD_9C4B
- D 0 - I - 0x019B91 06:9B81: 27        .byte $27   ; 
- D 0 - I - 0x019B92 06:9B82: 27        .byte $27   ; 
- D 0 - I - 0x019B93 06:9B83: FD        .byte $FD   ; 
- D 0 - I - 0x019B94 06:9B84: 4B 9C     .word sub_FD_9C4B
- D 0 - I - 0x019B96 06:9B86: 25        .byte $25   ; 
- D 0 - I - 0x019B97 06:9B87: D2        .byte $D2   ; 
- D 0 - I - 0x019B98 06:9B88: 00        .byte $00   ; 
- D 0 - I - 0x019B99 06:9B89: 10        .byte $10   ; 
- D 0 - I - 0x019B9A 06:9B8A: 00        .byte $00   ; 
- D 0 - I - 0x019B9B 06:9B8B: E3        .byte $E3   ; 
- D 0 - I - 0x019B9C 06:9B8C: B0        .byte $B0   ; 
- D 0 - I - 0x019B9D 06:9B8D: A0        .byte $A0   ; 
- D 0 - I - 0x019B9E 06:9B8E: 90        .byte $90   ; 
- D 0 - I - 0x019B9F 06:9B8F: 80        .byte $80   ; 
- D 0 - I - 0x019BA0 06:9B90: D4        .byte $D4   ; 
- D 0 - I - 0x019BA1 06:9B91: 0D        .byte $0D   ; 
- D 0 - I - 0x019BA2 06:9B92: E4        .byte $E4   ; 
- D 0 - I - 0x019BA3 06:9B93: 71        .byte $71   ; 
- D 0 - I - 0x019BA4 06:9B94: E3        .byte $E3   ; 
- D 0 - I - 0x019BA5 06:9B95: 71        .byte $71   ; 
- D 0 - I - 0x019BA6 06:9B96: E4        .byte $E4   ; 
- D 0 - I - 0x019BA7 06:9B97: 61        .byte $61   ; 
- D 0 - I - 0x019BA8 06:9B98: E3        .byte $E3   ; 
- D 0 - I - 0x019BA9 06:9B99: 61        .byte $61   ; 
- D 0 - I - 0x019BAA 06:9B9A: E4        .byte $E4   ; 
- D 0 - I - 0x019BAB 06:9B9B: 21        .byte $21   ; 
- D 0 - I - 0x019BAC 06:9B9C: E3        .byte $E3   ; 
- D 0 - I - 0x019BAD 06:9B9D: 21        .byte $21   ; 
- D 0 - I - 0x019BAE 06:9B9E: D4        .byte $D4   ; 
- D 0 - I - 0x019BAF 06:9B9F: 09        .byte $09   ; 
- D 0 - I - 0x019BB0 06:9BA0: E4        .byte $E4   ; 
- D 0 - I - 0x019BB1 06:9BA1: 91        .byte $91   ; 
- D 0 - I - 0x019BB2 06:9BA2: 91        .byte $91   ; 
- D 0 - I - 0x019BB3 06:9BA3: 91        .byte $91   ; 
- D 0 - I - 0x019BB4 06:9BA4: E3        .byte $E3   ; 
- D 0 - I - 0x019BB5 06:9BA5: 91        .byte $91   ; 
- D 0 - I - 0x019BB6 06:9BA6: E4        .byte $E4   ; 
- D 0 - I - 0x019BB7 06:9BA7: FB        .byte $FB   ; 
- D 0 - I - 0x019BB8 06:9BA8: 91        .byte $91   ; 
- D 0 - I - 0x019BB9 06:9BA9: FE        .byte $FE   ; 
- D 0 - I - 0x019BBA 06:9BAA: 06        .byte $06   ; 
- D 0 - I - 0x019BBB 06:9BAB: E3        .byte $E3   ; 
- D 0 - I - 0x019BBC 06:9BAC: 93        .byte $93   ; 
- D 0 - I - 0x019BBD 06:9BAD: E4        .byte $E4   ; 
- D 0 - I - 0x019BBE 06:9BAE: 93        .byte $93   ; 
- D 0 - I - 0x019BBF 06:9BAF: B3        .byte $B3   ; 
- D 0 - I - 0x019BC0 06:9BB0: E3        .byte $E3   ; 
- D 0 - I - 0x019BC1 06:9BB1: 03        .byte $03   ; 
- D 0 - I - 0x019BC2 06:9BB2: 23        .byte $23   ; 
- D 0 - I - 0x019BC3 06:9BB3: 03        .byte $03   ; 
- D 0 - I - 0x019BC4 06:9BB4: 23        .byte $23   ; 
- D 0 - I - 0x019BC5 06:9BB5: E4        .byte $E4   ; 
- D 0 - I - 0x019BC6 06:9BB6: 71        .byte $71   ; 
- D 0 - I - 0x019BC7 06:9BB7: 71        .byte $71   ; 
- D 0 - I - 0x019BC8 06:9BB8: 71        .byte $71   ; 
- D 0 - I - 0x019BC9 06:9BB9: E3        .byte $E3   ; 
- D 0 - I - 0x019BCA 06:9BBA: 71        .byte $71   ; 
- D 0 - I - 0x019BCB 06:9BBB: E4        .byte $E4   ; 
- D 0 - I - 0x019BCC 06:9BBC: 71        .byte $71   ; 
- D 0 - I - 0x019BCD 06:9BBD: 71        .byte $71   ; 
- D 0 - I - 0x019BCE 06:9BBE: 71        .byte $71   ; 
- D 0 - I - 0x019BCF 06:9BBF: 71        .byte $71   ; 
- D 0 - I - 0x019BD0 06:9BC0: 71        .byte $71   ; 
- D 0 - I - 0x019BD1 06:9BC1: E3        .byte $E3   ; 
- D 0 - I - 0x019BD2 06:9BC2: 71        .byte $71   ; 
- D 0 - I - 0x019BD3 06:9BC3: E4        .byte $E4   ; 
- D 0 - I - 0x019BD4 06:9BC4: 73        .byte $73   ; 
- D 0 - I - 0x019BD5 06:9BC5: E4        .byte $E4   ; 
- D 0 - I - 0x019BD6 06:9BC6: 61        .byte $61   ; 
- D 0 - I - 0x019BD7 06:9BC7: 61        .byte $61   ; 
- D 0 - I - 0x019BD8 06:9BC8: E3        .byte $E3   ; 
- D 0 - I - 0x019BD9 06:9BC9: 61        .byte $61   ; 
- D 0 - I - 0x019BDA 06:9BCA: E4        .byte $E4   ; 
- D 0 - I - 0x019BDB 06:9BCB: 61        .byte $61   ; 
- D 0 - I - 0x019BDC 06:9BCC: 61        .byte $61   ; 
- D 0 - I - 0x019BDD 06:9BCD: E3        .byte $E3   ; 
- D 0 - I - 0x019BDE 06:9BCE: 61        .byte $61   ; 
- D 0 - I - 0x019BDF 06:9BCF: E4        .byte $E4   ; 
- D 0 - I - 0x019BE0 06:9BD0: 21        .byte $21   ; 
- D 0 - I - 0x019BE1 06:9BD1: 21        .byte $21   ; 
- D 0 - I - 0x019BE2 06:9BD2: E3        .byte $E3   ; 
- D 0 - I - 0x019BE3 06:9BD3: 21        .byte $21   ; 
- D 0 - I - 0x019BE4 06:9BD4: E4        .byte $E4   ; 
- D 0 - I - 0x019BE5 06:9BD5: 21        .byte $21   ; 
- D 0 - I - 0x019BE6 06:9BD6: 21        .byte $21   ; 
- D 0 - I - 0x019BE7 06:9BD7: E3        .byte $E3   ; 
- D 0 - I - 0x019BE8 06:9BD8: 21        .byte $21   ; 
- D 0 - I - 0x019BE9 06:9BD9: D6        .byte $D6   ; 
- D 0 - I - 0x019BEA 06:9BDA: 0D        .byte $0D   ; 
- D 0 - I - 0x019BEB 06:9BDB: 40        .byte $40   ; 
- D 0 - I - 0x019BEC 06:9BDC: 40        .byte $40   ; 
- D 0 - I - 0x019BED 06:9BDD: 40        .byte $40   ; 
- D 0 - I - 0x019BEE 06:9BDE: 40        .byte $40   ; 
- D 0 - I - 0x019BEF 06:9BDF: C1        .byte $C1   ; 
- D 0 - I - 0x019BF0 06:9BE0: 40        .byte $40   ; 
- D 0 - I - 0x019BF1 06:9BE1: 40        .byte $40   ; 
- D 0 - I - 0x019BF2 06:9BE2: 40        .byte $40   ; 
- D 0 - I - 0x019BF3 06:9BE3: 40        .byte $40   ; 
- D 0 - I - 0x019BF4 06:9BE4: C1        .byte $C1   ; 
- D 0 - I - 0x019BF5 06:9BE5: 40        .byte $40   ; 
- D 0 - I - 0x019BF6 06:9BE6: 40        .byte $40   ; 
- D 0 - I - 0x019BF7 06:9BE7: C1        .byte $C1   ; 
- D 0 - I - 0x019BF8 06:9BE8: 90        .byte $90   ; 
- D 0 - I - 0x019BF9 06:9BE9: 90        .byte $90   ; 
- D 0 - I - 0x019BFA 06:9BEA: 90        .byte $90   ; 
- D 0 - I - 0x019BFB 06:9BEB: 90        .byte $90   ; 
- D 0 - I - 0x019BFC 06:9BEC: C0        .byte $C0   ; 
- D 0 - I - 0x019BFD 06:9BED: 90        .byte $90   ; 
- D 0 - I - 0x019BFE 06:9BEE: 90        .byte $90   ; 
- D 0 - I - 0x019BFF 06:9BEF: 90        .byte $90   ; 
- D 0 - I - 0x019C00 06:9BF0: D6        .byte $D6   ; 
- D 0 - I - 0x019C01 06:9BF1: 00        .byte $00   ; 
- D 0 - I - 0x019C02 06:9BF2: 85        .byte $85   ; 
- D 0 - I - 0x019C03 06:9BF3: E6        .byte $E6   ; 
- D 0 - I - 0x019C04 06:9BF4: 02        .byte $02   ; 
- D 0 - I - 0x019C05 06:9BF5: 30        .byte $30   ; 
- D 0 - I - 0x019C06 06:9BF6: 20        .byte $20   ; 
- D 0 - I - 0x019C07 06:9BF7: 10        .byte $10   ; 
- D 0 - I - 0x019C08 06:9BF8: 00        .byte $00   ; 
- D 0 - I - 0x019C09 06:9BF9: E4        .byte $E4   ; 
- D 0 - I - 0x019C0A 06:9BFA: B0        .byte $B0   ; 
- D 0 - I - 0x019C0B 06:9BFB: A0        .byte $A0   ; 
- D 0 - I - 0x019C0C 06:9BFC: FE        .byte $FE   ; 
- D 0 - I - 0x019C0D 06:9BFD: FF        .byte $FF   ; 
- D 0 - I - 0x019C0E 06:9BFE: F9 9A     .word loc_FF_9AF9



sub_FD_9C00:
- D 0 - I - 0x019C10 06:9C00: E4        .byte $E4   ; 
- D 0 - I - 0x019C11 06:9C01: 90        .byte $90   ; 
- D 0 - I - 0x019C12 06:9C02: C0        .byte $C0   ; 
- D 0 - I - 0x019C13 06:9C03: 90        .byte $90   ; 
- D 0 - I - 0x019C14 06:9C04: C0        .byte $C0   ; 
- D 0 - I - 0x019C15 06:9C05: 91        .byte $91   ; 
- D 0 - I - 0x019C16 06:9C06: 70        .byte $70   ; 
- D 0 - I - 0x019C17 06:9C07: 90        .byte $90   ; 
- D 0 - I - 0x019C18 06:9C08: C0        .byte $C0   ; 
- D 0 - I - 0x019C19 06:9C09: 90        .byte $90   ; 
- D 0 - I - 0x019C1A 06:9C0A: 91        .byte $91   ; 
- D 0 - I - 0x019C1B 06:9C0B: 90        .byte $90   ; 
- D 0 - I - 0x019C1C 06:9C0C: E3        .byte $E3   ; 
- D 0 - I - 0x019C1D 06:9C0D: 02        .byte $02   ; 
- D 0 - I - 0x019C1E 06:9C0E: E4        .byte $E4   ; 
- D 0 - I - 0x019C1F 06:9C0F: 70        .byte $70   ; 
- D 0 - I - 0x019C20 06:9C10: C0        .byte $C0   ; 
- D 0 - I - 0x019C21 06:9C11: 70        .byte $70   ; 
- D 0 - I - 0x019C22 06:9C12: C0        .byte $C0   ; 
- D 0 - I - 0x019C23 06:9C13: E3        .byte $E3   ; 
- D 0 - I - 0x019C24 06:9C14: 71        .byte $71   ; 
- D 0 - I - 0x019C25 06:9C15: E4        .byte $E4   ; 
- D 0 - I - 0x019C26 06:9C16: 70        .byte $70   ; 
- D 0 - I - 0x019C27 06:9C17: 70        .byte $70   ; 
- D 0 - I - 0x019C28 06:9C18: C0        .byte $C0   ; 
- D 0 - I - 0x019C29 06:9C19: 70        .byte $70   ; 
- D 0 - I - 0x019C2A 06:9C1A: 90        .byte $90   ; 
- D 0 - I - 0x019C2B 06:9C1B: 70        .byte $70   ; 
- D 0 - I - 0x019C2C 06:9C1C: E3        .byte $E3   ; 
- D 0 - I - 0x019C2D 06:9C1D: 00        .byte $00   ; 
- D 0 - I - 0x019C2E 06:9C1E: E4        .byte $E4   ; 
- D 0 - I - 0x019C2F 06:9C1F: B1        .byte $B1   ; 
- D 0 - I - 0x019C30 06:9C20: 70        .byte $70   ; 
- D 0 - I - 0x019C31 06:9C21: 90        .byte $90   ; 
- D 0 - I - 0x019C32 06:9C22: C0        .byte $C0   ; 
- D 0 - I - 0x019C33 06:9C23: 90        .byte $90   ; 
- D 0 - I - 0x019C34 06:9C24: C0        .byte $C0   ; 
- D 0 - I - 0x019C35 06:9C25: 91        .byte $91   ; 
- D 0 - I - 0x019C36 06:9C26: 70        .byte $70   ; 
- D 0 - I - 0x019C37 06:9C27: 90        .byte $90   ; 
- D 0 - I - 0x019C38 06:9C28: C0        .byte $C0   ; 
- D 0 - I - 0x019C39 06:9C29: 90        .byte $90   ; 
- D 0 - I - 0x019C3A 06:9C2A: 91        .byte $91   ; 
- D 0 - I - 0x019C3B 06:9C2B: 40        .byte $40   ; 
- D 0 - I - 0x019C3C 06:9C2C: 71        .byte $71   ; 
- D 0 - I - 0x019C3D 06:9C2D: 80        .byte $80   ; 
- D 0 - I - 0x019C3E 06:9C2E: 90        .byte $90   ; 
- D 0 - I - 0x019C3F 06:9C2F: 90        .byte $90   ; 
- D 0 - I - 0x019C40 06:9C30: 91        .byte $91   ; 
- D 0 - I - 0x019C41 06:9C31: 91        .byte $91   ; 
- D 0 - I - 0x019C42 06:9C32: 91        .byte $91   ; 
- D 0 - I - 0x019C43 06:9C33: 90        .byte $90   ; 
- D 0 - I - 0x019C44 06:9C34: FD        .byte $FD   ; 
sub_FD_9C35:
- D 0 - I - 0x019C45 06:9C35: E4        .byte $E4   ; 
- D 0 - I - 0x019C46 06:9C36: 91        .byte $91   ; 
- D 0 - I - 0x019C47 06:9C37: 91        .byte $91   ; 
- D 0 - I - 0x019C48 06:9C38: 90        .byte $90   ; 
- D 0 - I - 0x019C49 06:9C39: E3        .byte $E3   ; 
- D 0 - I - 0x019C4A 06:9C3A: 02        .byte $02   ; 
- D 0 - I - 0x019C4B 06:9C3B: E4        .byte $E4   ; 
- D 0 - I - 0x019C4C 06:9C3C: B1        .byte $B1   ; 
- D 0 - I - 0x019C4D 06:9C3D: C0        .byte $C0   ; 
- D 0 - I - 0x019C4E 06:9C3E: 71        .byte $71   ; 
- D 0 - I - 0x019C4F 06:9C3F: C0        .byte $C0   ; 
- D 0 - I - 0x019C50 06:9C40: 53        .byte $53   ; 
- D 0 - I - 0x019C51 06:9C41: 00        .byte $00   ; 
- D 0 - I - 0x019C52 06:9C42: 20        .byte $20   ; 
- D 0 - I - 0x019C53 06:9C43: 53        .byte $53   ; 
- D 0 - I - 0x019C54 06:9C44: 52        .byte $52   ; 
- D 0 - I - 0x019C55 06:9C45: 52        .byte $52   ; 
- D 0 - I - 0x019C56 06:9C46: 71        .byte $71   ; 
- D 0 - I - 0x019C57 06:9C47: 91        .byte $91   ; 
- D 0 - I - 0x019C58 06:9C48: 91        .byte $91   ; 
- D 0 - I - 0x019C59 06:9C49: 90        .byte $90   ; 
- D 0 - I - 0x019C5A 06:9C4A: FD        .byte $FD   ; 
sub_FD_9C4B:
- D 0 - I - 0x019C5B 06:9C4B: E3        .byte $E3   ; 
- D 0 - I - 0x019C5C 06:9C4C: A0        .byte $A0   ; 
- D 0 - I - 0x019C5D 06:9C4D: BA        .byte $BA   ; 
- D 0 - I - 0x019C5E 06:9C4E: D3        .byte $D3   ; 
- D 0 - I - 0x019C5F 06:9C4F: 00        .byte $00   ; 
- D 0 - I - 0x019C60 06:9C50: E2        .byte $E2   ; 
- D 0 - I - 0x019C61 06:9C51: 30        .byte $30   ; 
- D 0 - I - 0x019C62 06:9C52: D7        .byte $D7   ; 
- D 0 - I - 0x019C63 06:9C53: 00        .byte $00   ; 
- D 0 - I - 0x019C64 06:9C54: 42        .byte $42   ; 
- D 0 - I - 0x019C65 06:9C55: D6        .byte $D6   ; 
- D 0 - I - 0x019C66 06:9C56: 00        .byte $00   ; 
- D 0 - I - 0x019C67 06:9C57: 27        .byte $27   ; 
- D 0 - I - 0x019C68 06:9C58: D4        .byte $D4   ; 
- D 0 - I - 0x019C69 06:9C59: 00        .byte $00   ; 
- D 0 - I - 0x019C6A 06:9C5A: 23        .byte $23   ; 
- D 0 - I - 0x019C6B 06:9C5B: 23        .byte $23   ; 
- D 0 - I - 0x019C6C 06:9C5C: E3        .byte $E3   ; 
- D 0 - I - 0x019C6D 06:9C5D: 93        .byte $93   ; 
- D 0 - I - 0x019C6E 06:9C5E: D6        .byte $D6   ; 
- D 0 - I - 0x019C6F 06:9C5F: 00        .byte $00   ; 
- D 0 - I - 0x019C70 06:9C60: BB        .byte $BB   ; 
- D 0 - I - 0x019C71 06:9C61: E2        .byte $E2   ; 
- D 0 - I - 0x019C72 06:9C62: 43        .byte $43   ; 
- D 0 - I - 0x019C73 06:9C63: FD        .byte $FD   ; 



_off014_28_9C64_03:
- D 0 - I - 0x019C74 06:9C64: D1        .byte $D1   ; 
- D 0 - I - 0x019C75 06:9C65: A0        .byte $A0   ; 
- D 0 - I - 0x019C76 06:9C66: 11        .byte $11   ; 
- D 0 - I - 0x019C77 06:9C67: A0        .byte $A0   ; 
- D 0 - I - 0x019C78 06:9C68: 21        .byte $21   ; 
- D 0 - I - 0x019C79 06:9C69: A0        .byte $A0   ; 
- D 0 - I - 0x019C7A 06:9C6A: 24        .byte $24   ; 
- D 0 - I - 0x019C7B 06:9C6B: 90        .byte $90   ; 
- D 0 - I - 0x019C7C 06:9C6C: 24        .byte $24   ; 
- D 0 - I - 0x019C7D 06:9C6D: 90        .byte $90   ; 
- D 0 - I - 0x019C7E 06:9C6E: 24        .byte $24   ; 
- D 0 - I - 0x019C7F 06:9C6F: 80        .byte $80   ; 
- D 0 - I - 0x019C80 06:9C70: 24        .byte $24   ; 
- D 0 - I - 0x019C81 06:9C71: 70        .byte $70   ; 
- D 0 - I - 0x019C82 06:9C72: 24        .byte $24   ; 
- D 0 - I - 0x019C83 06:9C73: B5        .byte $B5   ; 
- D 0 - I - 0x019C84 06:9C74: E3        .byte $E3   ; 
- D 0 - I - 0x019C85 06:9C75: 70        .byte $70   ; 
- D 0 - I - 0x019C86 06:9C76: D1        .byte $D1   ; 
- D 0 - I - 0x019C87 06:9C77: 24        .byte $24   ; 
- D 0 - I - 0x019C88 06:9C78: E3        .byte $E3   ; 
- D 0 - I - 0x019C89 06:9C79: 90        .byte $90   ; 
- D 0 - I - 0x019C8A 06:9C7A: D1        .byte $D1   ; 
- D 0 - I - 0x019C8B 06:9C7B: 24        .byte $24   ; 
- D 0 - I - 0x019C8C 06:9C7C: E3        .byte $E3   ; 
- D 0 - I - 0x019C8D 06:9C7D: B0        .byte $B0   ; 
- D 0 - I - 0x019C8E 06:9C7E: D1        .byte $D1   ; 
- D 0 - I - 0x019C8F 06:9C7F: 24        .byte $24   ; 
- D 0 - I - 0x019C90 06:9C80: E2        .byte $E2   ; 
- D 0 - I - 0x019C91 06:9C81: 00        .byte $00   ; 
- D 0 - I - 0x019C92 06:9C82: D1        .byte $D1   ; 
- D 0 - I - 0x019C93 06:9C83: 2A        .byte $2A   ; 
- D 0 - I - 0x019C94 06:9C84: E3        .byte $E3   ; 
- D 0 - I - 0x019C95 06:9C85: B0        .byte $B0   ; 
- D 0 - I - 0x019C96 06:9C86: D1        .byte $D1   ; 
- D 0 - I - 0x019C97 06:9C87: 24        .byte $24   ; 
- D 0 - I - 0x019C98 06:9C88: 15        .byte $15   ; 
- D 0 - I - 0x019C99 06:9C89: E3        .byte $E3   ; 
- D 0 - I - 0x019C9A 06:9C8A: 40        .byte $40   ; 
- D 0 - I - 0x019C9B 06:9C8B: D1        .byte $D1   ; 
- D 0 - I - 0x019C9C 06:9C8C: 24        .byte $24   ; 
- D 0 - I - 0x019C9D 06:9C8D: 15        .byte $15   ; 
- D 0 - I - 0x019C9E 06:9C8E: E3        .byte $E3   ; 
- D 0 - I - 0x019C9F 06:9C8F: 20        .byte $20   ; 
- D 0 - I - 0x019CA0 06:9C90: D1        .byte $D1   ; 
- D 0 - I - 0x019CA1 06:9C91: 24        .byte $24   ; 
- D 0 - I - 0x019CA2 06:9C92: 15        .byte $15   ; 
- D 0 - I - 0x019CA3 06:9C93: E3        .byte $E3   ; 
- D 0 - I - 0x019CA4 06:9C94: 70        .byte $70   ; 
- D 0 - I - 0x019CA5 06:9C95: D1        .byte $D1   ; 
- D 0 - I - 0x019CA6 06:9C96: 24        .byte $24   ; 
- D 0 - I - 0x019CA7 06:9C97: E3        .byte $E3   ; 
- D 0 - I - 0x019CA8 06:9C98: 80        .byte $80   ; 
- D 0 - I - 0x019CA9 06:9C99: D1        .byte $D1   ; 
- D 0 - I - 0x019CAA 06:9C9A: 24        .byte $24   ; 
- D 0 - I - 0x019CAB 06:9C9B: 15        .byte $15   ; 
- D 0 - I - 0x019CAC 06:9C9C: B0        .byte $B0   ; 
- D 0 - I - 0x019CAD 06:9C9D: 14        .byte $14   ; 
loc_FF_9C9E:
- D 0 - I - 0x019CAE 06:9C9E: FD        .byte $FD   ; 
- D 0 - I - 0x019CAF 06:9C9F: 13 9E     .word sub_FD_9E13
- D 0 - I - 0x019CB1 06:9CA1: E3        .byte $E3   ; 
- D 0 - I - 0x019CB2 06:9CA2: 40        .byte $40   ; 
- D 0 - I - 0x019CB3 06:9CA3: D1        .byte $D1   ; 
- D 0 - I - 0x019CB4 06:9CA4: 24        .byte $24   ; 
- D 0 - I - 0x019CB5 06:9CA5: 15        .byte $15   ; 
- D 0 - I - 0x019CB6 06:9CA6: 15        .byte $15   ; 
- D 0 - I - 0x019CB7 06:9CA7: E3        .byte $E3   ; 
- D 0 - I - 0x019CB8 06:9CA8: 70        .byte $70   ; 
- D 0 - I - 0x019CB9 06:9CA9: D1        .byte $D1   ; 
- D 0 - I - 0x019CBA 06:9CAA: 24        .byte $24   ; 
- D 0 - I - 0x019CBB 06:9CAB: 15        .byte $15   ; 
- D 0 - I - 0x019CBC 06:9CAC: E3        .byte $E3   ; 
- D 0 - I - 0x019CBD 06:9CAD: 80        .byte $80   ; 
- D 0 - I - 0x019CBE 06:9CAE: D1        .byte $D1   ; 
- D 0 - I - 0x019CBF 06:9CAF: 24        .byte $24   ; 
- D 0 - I - 0x019CC0 06:9CB0: 15        .byte $15   ; 
- D 0 - I - 0x019CC1 06:9CB1: FD        .byte $FD   ; 
- D 0 - I - 0x019CC2 06:9CB2: 13 9E     .word sub_FD_9E13
- D 0 - I - 0x019CC4 06:9CB4: E2        .byte $E2   ; 
- D 0 - I - 0x019CC5 06:9CB5: 00        .byte $00   ; 
- D 0 - I - 0x019CC6 06:9CB6: D1        .byte $D1   ; 
- D 0 - I - 0x019CC7 06:9CB7: 24        .byte $24   ; 
- D 0 - I - 0x019CC8 06:9CB8: 15        .byte $15   ; 
- D 0 - I - 0x019CC9 06:9CB9: 15        .byte $15   ; 
- D 0 - I - 0x019CCA 06:9CBA: E3        .byte $E3   ; 
- D 0 - I - 0x019CCB 06:9CBB: B0        .byte $B0   ; 
- D 0 - I - 0x019CCC 06:9CBC: D1        .byte $D1   ; 
- D 0 - I - 0x019CCD 06:9CBD: 24        .byte $24   ; 
- D 0 - I - 0x019CCE 06:9CBE: 15        .byte $15   ; 
- D 0 - I - 0x019CCF 06:9CBF: E3        .byte $E3   ; 
- D 0 - I - 0x019CD0 06:9CC0: A0        .byte $A0   ; 
- D 0 - I - 0x019CD1 06:9CC1: D1        .byte $D1   ; 
- D 0 - I - 0x019CD2 06:9CC2: 24        .byte $24   ; 
- D 0 - I - 0x019CD3 06:9CC3: A0        .byte $A0   ; 
- D 0 - I - 0x019CD4 06:9CC4: 24        .byte $24   ; 
- D 0 - I - 0x019CD5 06:9CC5: D1        .byte $D1   ; 
- D 0 - I - 0x019CD6 06:9CC6: A0        .byte $A0   ; 
- D 0 - I - 0x019CD7 06:9CC7: 24        .byte $24   ; 
- D 0 - I - 0x019CD8 06:9CC8: A0        .byte $A0   ; 
- D 0 - I - 0x019CD9 06:9CC9: 24        .byte $24   ; 
- D 0 - I - 0x019CDA 06:9CCA: A0        .byte $A0   ; 
- D 0 - I - 0x019CDB 06:9CCB: 2A        .byte $2A   ; 
- D 0 - I - 0x019CDC 06:9CCC: 15        .byte $15   ; 
- D 0 - I - 0x019CDD 06:9CCD: A0        .byte $A0   ; 
- D 0 - I - 0x019CDE 06:9CCE: 24        .byte $24   ; 
- D 0 - I - 0x019CDF 06:9CCF: 15        .byte $15   ; 
- D 0 - I - 0x019CE0 06:9CD0: A0        .byte $A0   ; 
- D 0 - I - 0x019CE1 06:9CD1: 24        .byte $24   ; 
- D 0 - I - 0x019CE2 06:9CD2: B5        .byte $B5   ; 
- D 0 - I - 0x019CE3 06:9CD3: 15        .byte $15   ; 
- D 0 - I - 0x019CE4 06:9CD4: A0        .byte $A0   ; 
- D 0 - I - 0x019CE5 06:9CD5: 24        .byte $24   ; 
- D 0 - I - 0x019CE6 06:9CD6: 15        .byte $15   ; 
- D 0 - I - 0x019CE7 06:9CD7: A0        .byte $A0   ; 
- D 0 - I - 0x019CE8 06:9CD8: 24        .byte $24   ; 
- D 0 - I - 0x019CE9 06:9CD9: A0        .byte $A0   ; 
- D 0 - I - 0x019CEA 06:9CDA: 2A        .byte $2A   ; 
- D 0 - I - 0x019CEB 06:9CDB: C5        .byte $C5   ; 
- D 0 - I - 0x019CEC 06:9CDC: B0        .byte $B0   ; 
- D 0 - I - 0x019CED 06:9CDD: 14        .byte $14   ; 
- D 0 - I - 0x019CEE 06:9CDE: B0        .byte $B0   ; 
- D 0 - I - 0x019CEF 06:9CDF: 14        .byte $14   ; 
- D 0 - I - 0x019CF0 06:9CE0: A0        .byte $A0   ; 
- D 0 - I - 0x019CF1 06:9CE1: 24        .byte $24   ; 
- D 0 - I - 0x019CF2 06:9CE2: 15        .byte $15   ; 
- D 0 - I - 0x019CF3 06:9CE3: B0        .byte $B0   ; 
- D 0 - I - 0x019CF4 06:9CE4: 14        .byte $14   ; 
- D 0 - I - 0x019CF5 06:9CE5: A0        .byte $A0   ; 
- D 0 - I - 0x019CF6 06:9CE6: 24        .byte $24   ; 
- D 0 - I - 0x019CF7 06:9CE7: 15        .byte $15   ; 
- D 0 - I - 0x019CF8 06:9CE8: A0        .byte $A0   ; 
- D 0 - I - 0x019CF9 06:9CE9: 24        .byte $24   ; 
- D 0 - I - 0x019CFA 06:9CEA: A0        .byte $A0   ; 
- D 0 - I - 0x019CFB 06:9CEB: 24        .byte $24   ; 
- D 0 - I - 0x019CFC 06:9CEC: 15        .byte $15   ; 
- D 0 - I - 0x019CFD 06:9CED: B0        .byte $B0   ; 
- D 0 - I - 0x019CFE 06:9CEE: 14        .byte $14   ; 
- D 0 - I - 0x019CFF 06:9CEF: 15        .byte $15   ; 
- D 0 - I - 0x019D00 06:9CF0: A0        .byte $A0   ; 
- D 0 - I - 0x019D01 06:9CF1: 24        .byte $24   ; 
- D 0 - I - 0x019D02 06:9CF2: A0        .byte $A0   ; 
- D 0 - I - 0x019D03 06:9CF3: 2A        .byte $2A   ; 
- D 0 - I - 0x019D04 06:9CF4: B0        .byte $B0   ; 
- D 0 - I - 0x019D05 06:9CF5: 14        .byte $14   ; 
- D 0 - I - 0x019D06 06:9CF6: B0        .byte $B0   ; 
- D 0 - I - 0x019D07 06:9CF7: 14        .byte $14   ; 
- D 0 - I - 0x019D08 06:9CF8: B0        .byte $B0   ; 
- D 0 - I - 0x019D09 06:9CF9: 14        .byte $14   ; 
- D 0 - I - 0x019D0A 06:9CFA: 2B        .byte $2B   ; 
- D 0 - I - 0x019D0B 06:9CFB: A0        .byte $A0   ; 
- D 0 - I - 0x019D0C 06:9CFC: 2A        .byte $2A   ; 
- D 0 - I - 0x019D0D 06:9CFD: B0        .byte $B0   ; 
- D 0 - I - 0x019D0E 06:9CFE: 14        .byte $14   ; 
- D 0 - I - 0x019D0F 06:9CFF: B0        .byte $B0   ; 
- D 0 - I - 0x019D10 06:9D00: 14        .byte $14   ; 
- D 0 - I - 0x019D11 06:9D01: B0        .byte $B0   ; 
- D 0 - I - 0x019D12 06:9D02: 1A        .byte $1A   ; 
- D 0 - I - 0x019D13 06:9D03: 2B        .byte $2B   ; 
- D 0 - I - 0x019D14 06:9D04: A0        .byte $A0   ; 
- D 0 - I - 0x019D15 06:9D05: 2A        .byte $2A   ; 
- D 0 - I - 0x019D16 06:9D06: 15        .byte $15   ; 
- D 0 - I - 0x019D17 06:9D07: 15        .byte $15   ; 
- D 0 - I - 0x019D18 06:9D08: B0        .byte $B0   ; 
- D 0 - I - 0x019D19 06:9D09: 14        .byte $14   ; 
- D 0 - I - 0x019D1A 06:9D0A: B0        .byte $B0   ; 
- D 0 - I - 0x019D1B 06:9D0B: 14        .byte $14   ; 
- D 0 - I - 0x019D1C 06:9D0C: 2B        .byte $2B   ; 
- D 0 - I - 0x019D1D 06:9D0D: A0        .byte $A0   ; 
- D 0 - I - 0x019D1E 06:9D0E: 2A        .byte $2A   ; 
- D 0 - I - 0x019D1F 06:9D0F: B0        .byte $B0   ; 
- D 0 - I - 0x019D20 06:9D10: 14        .byte $14   ; 
- D 0 - I - 0x019D21 06:9D11: B0        .byte $B0   ; 
- D 0 - I - 0x019D22 06:9D12: 14        .byte $14   ; 
- D 0 - I - 0x019D23 06:9D13: A0        .byte $A0   ; 
- D 0 - I - 0x019D24 06:9D14: 24        .byte $24   ; 
- D 0 - I - 0x019D25 06:9D15: B0        .byte $B0   ; 
- D 0 - I - 0x019D26 06:9D16: 14        .byte $14   ; 
- D 0 - I - 0x019D27 06:9D17: B0        .byte $B0   ; 
- D 0 - I - 0x019D28 06:9D18: 14        .byte $14   ; 
- D 0 - I - 0x019D29 06:9D19: A0        .byte $A0   ; 
- D 0 - I - 0x019D2A 06:9D1A: 24        .byte $24   ; 
- D 0 - I - 0x019D2B 06:9D1B: B0        .byte $B0   ; 
- D 0 - I - 0x019D2C 06:9D1C: 14        .byte $14   ; 
- D 0 - I - 0x019D2D 06:9D1D: B0        .byte $B0   ; 
- D 0 - I - 0x019D2E 06:9D1E: 14        .byte $14   ; 
- D 0 - I - 0x019D2F 06:9D1F: A0        .byte $A0   ; 
- D 0 - I - 0x019D30 06:9D20: 24        .byte $24   ; 
- D 0 - I - 0x019D31 06:9D21: A0        .byte $A0   ; 
- D 0 - I - 0x019D32 06:9D22: 24        .byte $24   ; 
- D 0 - I - 0x019D33 06:9D23: FD        .byte $FD   ; 
- D 0 - I - 0x019D34 06:9D24: 41 9E     .word sub_FD_9E41
- D 0 - I - 0x019D36 06:9D26: B0        .byte $B0   ; 
- D 0 - I - 0x019D37 06:9D27: 2A        .byte $2A   ; 
- D 0 - I - 0x019D38 06:9D28: B0        .byte $B0   ; 
- D 0 - I - 0x019D39 06:9D29: 2A        .byte $2A   ; 
- D 0 - I - 0x019D3A 06:9D2A: A0        .byte $A0   ; 
- D 0 - I - 0x019D3B 06:9D2B: 14        .byte $14   ; 
- D 0 - I - 0x019D3C 06:9D2C: A0        .byte $A0   ; 
- D 0 - I - 0x019D3D 06:9D2D: 14        .byte $14   ; 
- D 0 - I - 0x019D3E 06:9D2E: B0        .byte $B0   ; 
- D 0 - I - 0x019D3F 06:9D2F: 24        .byte $24   ; 
- D 0 - I - 0x019D40 06:9D30: 15        .byte $15   ; 
- D 0 - I - 0x019D41 06:9D31: B0        .byte $B0   ; 
- D 0 - I - 0x019D42 06:9D32: 2A        .byte $2A   ; 
- D 0 - I - 0x019D43 06:9D33: 05        .byte $05   ; 
- D 0 - I - 0x019D44 06:9D34: B0        .byte $B0   ; 
- D 0 - I - 0x019D45 06:9D35: 24        .byte $24   ; 
- D 0 - I - 0x019D46 06:9D36: A0        .byte $A0   ; 
- D 0 - I - 0x019D47 06:9D37: 2A        .byte $2A   ; 
- D 0 - I - 0x019D48 06:9D38: 15        .byte $15   ; 
- D 0 - I - 0x019D49 06:9D39: 25        .byte $25   ; 
- D 0 - I - 0x019D4A 06:9D3A: B0        .byte $B0   ; 
- D 0 - I - 0x019D4B 06:9D3B: 2A        .byte $2A   ; 
- D 0 - I - 0x019D4C 06:9D3C: B0        .byte $B0   ; 
- D 0 - I - 0x019D4D 06:9D3D: 24        .byte $24   ; 
- D 0 - I - 0x019D4E 06:9D3E: A0        .byte $A0   ; 
- D 0 - I - 0x019D4F 06:9D3F: 24        .byte $24   ; 
- D 0 - I - 0x019D50 06:9D40: A0        .byte $A0   ; 
- D 0 - I - 0x019D51 06:9D41: 2A        .byte $2A   ; 
- D 0 - I - 0x019D52 06:9D42: B0        .byte $B0   ; 
- D 0 - I - 0x019D53 06:9D43: 24        .byte $24   ; 
- D 0 - I - 0x019D54 06:9D44: B0        .byte $B0   ; 
- D 0 - I - 0x019D55 06:9D45: 24        .byte $24   ; 
- D 0 - I - 0x019D56 06:9D46: A0        .byte $A0   ; 
- D 0 - I - 0x019D57 06:9D47: 2A        .byte $2A   ; 
- D 0 - I - 0x019D58 06:9D48: C5        .byte $C5   ; 
- D 0 - I - 0x019D59 06:9D49: A0        .byte $A0   ; 
- D 0 - I - 0x019D5A 06:9D4A: 2A        .byte $2A   ; 
- D 0 - I - 0x019D5B 06:9D4B: C5        .byte $C5   ; 
- D 0 - I - 0x019D5C 06:9D4C: A0        .byte $A0   ; 
- D 0 - I - 0x019D5D 06:9D4D: 14        .byte $14   ; 
- D 0 - I - 0x019D5E 06:9D4E: A0        .byte $A0   ; 
- D 0 - I - 0x019D5F 06:9D4F: 14        .byte $14   ; 
- D 0 - I - 0x019D60 06:9D50: FD        .byte $FD   ; 
- D 0 - I - 0x019D61 06:9D51: 41 9E     .word sub_FD_9E41
- D 0 - I - 0x019D63 06:9D53: A0        .byte $A0   ; 
- D 0 - I - 0x019D64 06:9D54: 2A        .byte $2A   ; 
- D 0 - I - 0x019D65 06:9D55: A0        .byte $A0   ; 
- D 0 - I - 0x019D66 06:9D56: 2A        .byte $2A   ; 
- D 0 - I - 0x019D67 06:9D57: 15        .byte $15   ; 
- D 0 - I - 0x019D68 06:9D58: A0        .byte $A0   ; 
- D 0 - I - 0x019D69 06:9D59: 24        .byte $24   ; 
- D 0 - I - 0x019D6A 06:9D5A: A0        .byte $A0   ; 
- D 0 - I - 0x019D6B 06:9D5B: 24        .byte $24   ; 
- D 0 - I - 0x019D6C 06:9D5C: A0        .byte $A0   ; 
- D 0 - I - 0x019D6D 06:9D5D: 24        .byte $24   ; 
- D 0 - I - 0x019D6E 06:9D5E: A0        .byte $A0   ; 
- D 0 - I - 0x019D6F 06:9D5F: 24        .byte $24   ; 
- D 0 - I - 0x019D70 06:9D60: A0        .byte $A0   ; 
- D 0 - I - 0x019D71 06:9D61: 24        .byte $24   ; 
- D 0 - I - 0x019D72 06:9D62: 15        .byte $15   ; 
- D 0 - I - 0x019D73 06:9D63: A0        .byte $A0   ; 
- D 0 - I - 0x019D74 06:9D64: 24        .byte $24   ; 
- D 0 - I - 0x019D75 06:9D65: 15        .byte $15   ; 
- D 0 - I - 0x019D76 06:9D66: 25        .byte $25   ; 
- D 0 - I - 0x019D77 06:9D67: A0        .byte $A0   ; 
- D 0 - I - 0x019D78 06:9D68: 2A        .byte $2A   ; 
- D 0 - I - 0x019D79 06:9D69: A0        .byte $A0   ; 
- D 0 - I - 0x019D7A 06:9D6A: 21        .byte $21   ; 
- D 0 - I - 0x019D7B 06:9D6B: A2        .byte $A2   ; 
- D 0 - I - 0x019D7C 06:9D6C: A0        .byte $A0   ; 
- D 0 - I - 0x019D7D 06:9D6D: 24        .byte $24   ; 
- D 0 - I - 0x019D7E 06:9D6E: A0        .byte $A0   ; 
- D 0 - I - 0x019D7F 06:9D6F: 24        .byte $24   ; 
- D 0 - I - 0x019D80 06:9D70: A0        .byte $A0   ; 
- D 0 - I - 0x019D81 06:9D71: 24        .byte $24   ; 
- D 0 - I - 0x019D82 06:9D72: A0        .byte $A0   ; 
- D 0 - I - 0x019D83 06:9D73: 24        .byte $24   ; 
- D 0 - I - 0x019D84 06:9D74: A0        .byte $A0   ; 
- D 0 - I - 0x019D85 06:9D75: 24        .byte $24   ; 
- D 0 - I - 0x019D86 06:9D76: A0        .byte $A0   ; 
- D 0 - I - 0x019D87 06:9D77: 24        .byte $24   ; 
- D 0 - I - 0x019D88 06:9D78: A0        .byte $A0   ; 
- D 0 - I - 0x019D89 06:9D79: 24        .byte $24   ; 
- D 0 - I - 0x019D8A 06:9D7A: A0        .byte $A0   ; 
- D 0 - I - 0x019D8B 06:9D7B: 24        .byte $24   ; 
- D 0 - I - 0x019D8C 06:9D7C: A0        .byte $A0   ; 
- D 0 - I - 0x019D8D 06:9D7D: 24        .byte $24   ; 
- D 0 - I - 0x019D8E 06:9D7E: A0        .byte $A0   ; 
- D 0 - I - 0x019D8F 06:9D7F: 24        .byte $24   ; 
- D 0 - I - 0x019D90 06:9D80: A0        .byte $A0   ; 
- D 0 - I - 0x019D91 06:9D81: 24        .byte $24   ; 
- D 0 - I - 0x019D92 06:9D82: B0        .byte $B0   ; 
- D 0 - I - 0x019D93 06:9D83: 24        .byte $24   ; 
- D 0 - I - 0x019D94 06:9D84: B0        .byte $B0   ; 
- D 0 - I - 0x019D95 06:9D85: 24        .byte $24   ; 
- D 0 - I - 0x019D96 06:9D86: A0        .byte $A0   ; 
- D 0 - I - 0x019D97 06:9D87: 24        .byte $24   ; 
- D 0 - I - 0x019D98 06:9D88: A0        .byte $A0   ; 
- D 0 - I - 0x019D99 06:9D89: 24        .byte $24   ; 
- D 0 - I - 0x019D9A 06:9D8A: D1        .byte $D1   ; 
- D 0 - I - 0x019D9B 06:9D8B: FB        .byte $FB   ; 
- D 0 - I - 0x019D9C 06:9D8C: B0        .byte $B0   ; 
- D 0 - I - 0x019D9D 06:9D8D: 2A        .byte $2A   ; 
- D 0 - I - 0x019D9E 06:9D8E: 25        .byte $25   ; 
- D 0 - I - 0x019D9F 06:9D8F: 25        .byte $25   ; 
- D 0 - I - 0x019DA0 06:9D90: 4B        .byte $4B   ; 
- D 0 - I - 0x019DA1 06:9D91: 25        .byte $25   ; 
- D 0 - I - 0x019DA2 06:9D92: B0        .byte $B0   ; 
- D 0 - I - 0x019DA3 06:9D93: 24        .byte $24   ; 
- D 0 - I - 0x019DA4 06:9D94: B0        .byte $B0   ; 
- D 0 - I - 0x019DA5 06:9D95: 2A        .byte $2A   ; 
- D 0 - I - 0x019DA6 06:9D96: B0        .byte $B0   ; 
- D 0 - I - 0x019DA7 06:9D97: 24        .byte $24   ; 
- D 0 - I - 0x019DA8 06:9D98: 00        .byte $00   ; 
- D 0 - I - 0x019DA9 06:9D99: 24        .byte $24   ; 
- D 0 - I - 0x019DAA 06:9D9A: 4B        .byte $4B   ; 
- D 0 - I - 0x019DAB 06:9D9B: 25        .byte $25   ; 
- D 0 - I - 0x019DAC 06:9D9C: 25        .byte $25   ; 
- D 0 - I - 0x019DAD 06:9D9D: FE        .byte $FE   ; 
- D 0 - I - 0x019DAE 06:9D9E: 07        .byte $07   ; 
- D 0 - I - 0x019DAF 06:9D9F: B0        .byte $B0   ; 
- D 0 - I - 0x019DB0 06:9DA0: 2A        .byte $2A   ; 
- D 0 - I - 0x019DB1 06:9DA1: 25        .byte $25   ; 
- D 0 - I - 0x019DB2 06:9DA2: 25        .byte $25   ; 
- D 0 - I - 0x019DB3 06:9DA3: 4B        .byte $4B   ; 
- D 0 - I - 0x019DB4 06:9DA4: B0        .byte $B0   ; 
- D 0 - I - 0x019DB5 06:9DA5: 24        .byte $24   ; 
- D 0 - I - 0x019DB6 06:9DA6: B0        .byte $B0   ; 
- D 0 - I - 0x019DB7 06:9DA7: 24        .byte $24   ; 
- D 0 - I - 0x019DB8 06:9DA8: A0        .byte $A0   ; 
- D 0 - I - 0x019DB9 06:9DA9: 26        .byte $26   ; 
- D 0 - I - 0x019DBA 06:9DAA: 23        .byte $23   ; 
- D 0 - I - 0x019DBB 06:9DAB: 23        .byte $23   ; 
- D 0 - I - 0x019DBC 06:9DAC: A0        .byte $A0   ; 
- D 0 - I - 0x019DBD 06:9DAD: 26        .byte $26   ; 
- D 0 - I - 0x019DBE 06:9DAE: B0        .byte $B0   ; 
- D 0 - I - 0x019DBF 06:9DAF: 22        .byte $22   ; 
- D 0 - I - 0x019DC0 06:9DB0: 23        .byte $23   ; 
- D 0 - I - 0x019DC1 06:9DB1: A0        .byte $A0   ; 
- D 0 - I - 0x019DC2 06:9DB2: 26        .byte $26   ; 
- D 0 - I - 0x019DC3 06:9DB3: A0        .byte $A0   ; 
- D 0 - I - 0x019DC4 06:9DB4: 22        .byte $22   ; 
- D 0 - I - 0x019DC5 06:9DB5: 23        .byte $23   ; 
- D 0 - I - 0x019DC6 06:9DB6: D1        .byte $D1   ; 
- D 0 - I - 0x019DC7 06:9DB7: FD        .byte $FD   ; 
- D 0 - I - 0x019DC8 06:9DB8: 70 9E     .word sub_FD_9E70
- D 0 - I - 0x019DCA 06:9DBA: FB        .byte $FB   ; 
- D 0 - I - 0x019DCB 06:9DBB: B0        .byte $B0   ; 
- D 0 - I - 0x019DCC 06:9DBC: 26        .byte $26   ; 
- D 0 - I - 0x019DCD 06:9DBD: B0        .byte $B0   ; 
- D 0 - I - 0x019DCE 06:9DBE: 26        .byte $26   ; 
- D 0 - I - 0x019DCF 06:9DBF: B0        .byte $B0   ; 
- D 0 - I - 0x019DD0 06:9DC0: 26        .byte $26   ; 
- D 0 - I - 0x019DD1 06:9DC1: A0        .byte $A0   ; 
- D 0 - I - 0x019DD2 06:9DC2: 26        .byte $26   ; 
- D 0 - I - 0x019DD3 06:9DC3: A0        .byte $A0   ; 
- D 0 - I - 0x019DD4 06:9DC4: 26        .byte $26   ; 
- D 0 - I - 0x019DD5 06:9DC5: A0        .byte $A0   ; 
- D 0 - I - 0x019DD6 06:9DC6: 26        .byte $26   ; 
- D 0 - I - 0x019DD7 06:9DC7: FE        .byte $FE   ; 
- D 0 - I - 0x019DD8 06:9DC8: 02        .byte $02   ; 
- D 0 - I - 0x019DD9 06:9DC9: FD        .byte $FD   ; 
- D 0 - I - 0x019DDA 06:9DCA: 70 9E     .word sub_FD_9E70
- D 0 - I - 0x019DDC 06:9DCC: B0        .byte $B0   ; 
- D 0 - I - 0x019DDD 06:9DCD: 26        .byte $26   ; 
- D 0 - I - 0x019DDE 06:9DCE: B0        .byte $B0   ; 
- D 0 - I - 0x019DDF 06:9DCF: 26        .byte $26   ; 
- D 0 - I - 0x019DE0 06:9DD0: B0        .byte $B0   ; 
- D 0 - I - 0x019DE1 06:9DD1: 26        .byte $26   ; 
- D 0 - I - 0x019DE2 06:9DD2: FB        .byte $FB   ; 
- D 0 - I - 0x019DE3 06:9DD3: A0        .byte $A0   ; 
- D 0 - I - 0x019DE4 06:9DD4: 26        .byte $26   ; 
- D 0 - I - 0x019DE5 06:9DD5: FE        .byte $FE   ; 
- D 0 - I - 0x019DE6 06:9DD6: 09        .byte $09   ; 
- D 0 - I - 0x019DE7 06:9DD7: A0        .byte $A0   ; 
- D 0 - I - 0x019DE8 06:9DD8: 24        .byte $24   ; 
- D 0 - I - 0x019DE9 06:9DD9: A0        .byte $A0   ; 
- D 0 - I - 0x019DEA 06:9DDA: 24        .byte $24   ; 
- D 0 - I - 0x019DEB 06:9DDB: A0        .byte $A0   ; 
- D 0 - I - 0x019DEC 06:9DDC: 24        .byte $24   ; 
- D 0 - I - 0x019DED 06:9DDD: A0        .byte $A0   ; 
- D 0 - I - 0x019DEE 06:9DDE: 24        .byte $24   ; 
- D 0 - I - 0x019DEF 06:9DDF: C5        .byte $C5   ; 
- D 0 - I - 0x019DF0 06:9DE0: 15        .byte $15   ; 
- D 0 - I - 0x019DF1 06:9DE1: A0        .byte $A0   ; 
- D 0 - I - 0x019DF2 06:9DE2: 24        .byte $24   ; 
- D 0 - I - 0x019DF3 06:9DE3: A0        .byte $A0   ; 
- D 0 - I - 0x019DF4 06:9DE4: 24        .byte $24   ; 
- D 0 - I - 0x019DF5 06:9DE5: A0        .byte $A0   ; 
- D 0 - I - 0x019DF6 06:9DE6: 24        .byte $24   ; 
- D 0 - I - 0x019DF7 06:9DE7: A0        .byte $A0   ; 
- D 0 - I - 0x019DF8 06:9DE8: 24        .byte $24   ; 
- D 0 - I - 0x019DF9 06:9DE9: C5        .byte $C5   ; 
- D 0 - I - 0x019DFA 06:9DEA: 15        .byte $15   ; 
- D 0 - I - 0x019DFB 06:9DEB: A0        .byte $A0   ; 
- D 0 - I - 0x019DFC 06:9DEC: 24        .byte $24   ; 
- D 0 - I - 0x019DFD 06:9DED: A0        .byte $A0   ; 
- D 0 - I - 0x019DFE 06:9DEE: 24        .byte $24   ; 
- D 0 - I - 0x019DFF 06:9DEF: A0        .byte $A0   ; 
- D 0 - I - 0x019E00 06:9DF0: 24        .byte $24   ; 
- D 0 - I - 0x019E01 06:9DF1: B0        .byte $B0   ; 
- D 0 - I - 0x019E02 06:9DF2: 14        .byte $14   ; 
- D 0 - I - 0x019E03 06:9DF3: A0        .byte $A0   ; 
- D 0 - I - 0x019E04 06:9DF4: 24        .byte $24   ; 
- D 0 - I - 0x019E05 06:9DF5: A0        .byte $A0   ; 
- D 0 - I - 0x019E06 06:9DF6: 24        .byte $24   ; 
- D 0 - I - 0x019E07 06:9DF7: A0        .byte $A0   ; 
- D 0 - I - 0x019E08 06:9DF8: 24        .byte $24   ; 
- D 0 - I - 0x019E09 06:9DF9: A0        .byte $A0   ; 
- D 0 - I - 0x019E0A 06:9DFA: 24        .byte $24   ; 
- D 0 - I - 0x019E0B 06:9DFB: C5        .byte $C5   ; 
- D 0 - I - 0x019E0C 06:9DFC: A0        .byte $A0   ; 
- D 0 - I - 0x019E0D 06:9DFD: 24        .byte $24   ; 
- D 0 - I - 0x019E0E 06:9DFE: A0        .byte $A0   ; 
- D 0 - I - 0x019E0F 06:9DFF: 24        .byte $24   ; 
- D 0 - I - 0x019E10 06:9E00: A0        .byte $A0   ; 
- D 0 - I - 0x019E11 06:9E01: 24        .byte $24   ; 
- D 0 - I - 0x019E12 06:9E02: B0        .byte $B0   ; 
- D 0 - I - 0x019E13 06:9E03: 1A        .byte $1A   ; 
- D 0 - I - 0x019E14 06:9E04: A0        .byte $A0   ; 
- D 0 - I - 0x019E15 06:9E05: 22        .byte $22   ; 
- D 0 - I - 0x019E16 06:9E06: A0        .byte $A0   ; 
- D 0 - I - 0x019E17 06:9E07: 22        .byte $22   ; 
- D 0 - I - 0x019E18 06:9E08: A0        .byte $A0   ; 
- D 0 - I - 0x019E19 06:9E09: 22        .byte $22   ; 
- D 0 - I - 0x019E1A 06:9E0A: B0        .byte $B0   ; 
- D 0 - I - 0x019E1B 06:9E0B: 2A        .byte $2A   ; 
- D 0 - I - 0x019E1C 06:9E0C: 15        .byte $15   ; 
- D 0 - I - 0x019E1D 06:9E0D: B0        .byte $B0   ; 
- D 0 - I - 0x019E1E 06:9E0E: 24        .byte $24   ; 
- D 0 - I - 0x019E1F 06:9E0F: FE        .byte $FE   ; 
- D 0 - I - 0x019E20 06:9E10: FF        .byte $FF   ; 
- D 0 - I - 0x019E21 06:9E11: 9E 9C     .word loc_FF_9C9E



sub_FD_9E13:
- D 0 - I - 0x019E23 06:9E13: D1        .byte $D1   ; 
- D 0 - I - 0x019E24 06:9E14: FB        .byte $FB   ; 
- D 0 - I - 0x019E25 06:9E15: B0        .byte $B0   ; 
- D 0 - I - 0x019E26 06:9E16: C4        .byte $C4   ; 
- D 0 - I - 0x019E27 06:9E17: 15        .byte $15   ; 
- D 0 - I - 0x019E28 06:9E18: B0        .byte $B0   ; 
- D 0 - I - 0x019E29 06:9E19: C4        .byte $C4   ; 
- D 0 - I - 0x019E2A 06:9E1A: 15        .byte $15   ; 
- D 0 - I - 0x019E2B 06:9E1B: A0        .byte $A0   ; 
- D 0 - I - 0x019E2C 06:9E1C: 24        .byte $24   ; 
- D 0 - I - 0x019E2D 06:9E1D: 15        .byte $15   ; 
- D 0 - I - 0x019E2E 06:9E1E: B0        .byte $B0   ; 
- D 0 - I - 0x019E2F 06:9E1F: C4        .byte $C4   ; 
- D 0 - I - 0x019E30 06:9E20: B0        .byte $B0   ; 
- D 0 - I - 0x019E31 06:9E21: 14        .byte $14   ; 
- D 0 - I - 0x019E32 06:9E22: 15        .byte $15   ; 
- D 0 - I - 0x019E33 06:9E23: B0        .byte $B0   ; 
- D 0 - I - 0x019E34 06:9E24: 14        .byte $14   ; 
- D 0 - I - 0x019E35 06:9E25: 15        .byte $15   ; 
- D 0 - I - 0x019E36 06:9E26: B0        .byte $B0   ; 
- D 0 - I - 0x019E37 06:9E27: 14        .byte $14   ; 
- D 0 - I - 0x019E38 06:9E28: A0        .byte $A0   ; 
- D 0 - I - 0x019E39 06:9E29: 24        .byte $24   ; 
- D 0 - I - 0x019E3A 06:9E2A: B0        .byte $B0   ; 
- D 0 - I - 0x019E3B 06:9E2B: 14        .byte $14   ; 
- D 0 - I - 0x019E3C 06:9E2C: 15        .byte $15   ; 
- D 0 - I - 0x019E3D 06:9E2D: B0        .byte $B0   ; 
- D 0 - I - 0x019E3E 06:9E2E: C4        .byte $C4   ; 
- D 0 - I - 0x019E3F 06:9E2F: FE        .byte $FE   ; 
- D 0 - I - 0x019E40 06:9E30: 03        .byte $03   ; 
- D 0 - I - 0x019E41 06:9E31: B0        .byte $B0   ; 
- D 0 - I - 0x019E42 06:9E32: 14        .byte $14   ; 
- D 0 - I - 0x019E43 06:9E33: B0        .byte $B0   ; 
- D 0 - I - 0x019E44 06:9E34: 14        .byte $14   ; 
- D 0 - I - 0x019E45 06:9E35: B0        .byte $B0   ; 
- D 0 - I - 0x019E46 06:9E36: 14        .byte $14   ; 
- D 0 - I - 0x019E47 06:9E37: 15        .byte $15   ; 
- D 0 - I - 0x019E48 06:9E38: B0        .byte $B0   ; 
- D 0 - I - 0x019E49 06:9E39: 14        .byte $14   ; 
- D 0 - I - 0x019E4A 06:9E3A: 15        .byte $15   ; 
- D 0 - I - 0x019E4B 06:9E3B: B0        .byte $B0   ; 
- D 0 - I - 0x019E4C 06:9E3C: 14        .byte $14   ; 
- D 0 - I - 0x019E4D 06:9E3D: 15        .byte $15   ; 
- D 0 - I - 0x019E4E 06:9E3E: A0        .byte $A0   ; 
- D 0 - I - 0x019E4F 06:9E3F: 24        .byte $24   ; 
- D 0 - I - 0x019E50 06:9E40: FD        .byte $FD   ; 
sub_FD_9E41:
- D 0 - I - 0x019E51 06:9E41: D1        .byte $D1   ; 
- D 0 - I - 0x019E52 06:9E42: B0        .byte $B0   ; 
- D 0 - I - 0x019E53 06:9E43: 2A        .byte $2A   ; 
- D 0 - I - 0x019E54 06:9E44: B0        .byte $B0   ; 
- D 0 - I - 0x019E55 06:9E45: 2A        .byte $2A   ; 
- D 0 - I - 0x019E56 06:9E46: A0        .byte $A0   ; 
- D 0 - I - 0x019E57 06:9E47: 14        .byte $14   ; 
- D 0 - I - 0x019E58 06:9E48: A0        .byte $A0   ; 
- D 0 - I - 0x019E59 06:9E49: 14        .byte $14   ; 
- D 0 - I - 0x019E5A 06:9E4A: B0        .byte $B0   ; 
- D 0 - I - 0x019E5B 06:9E4B: 24        .byte $24   ; 
- D 0 - I - 0x019E5C 06:9E4C: 15        .byte $15   ; 
- D 0 - I - 0x019E5D 06:9E4D: B0        .byte $B0   ; 
- D 0 - I - 0x019E5E 06:9E4E: 2A        .byte $2A   ; 
- D 0 - I - 0x019E5F 06:9E4F: 05        .byte $05   ; 
- D 0 - I - 0x019E60 06:9E50: B0        .byte $B0   ; 
- D 0 - I - 0x019E61 06:9E51: 24        .byte $24   ; 
- D 0 - I - 0x019E62 06:9E52: A0        .byte $A0   ; 
- D 0 - I - 0x019E63 06:9E53: 2A        .byte $2A   ; 
- D 0 - I - 0x019E64 06:9E54: 15        .byte $15   ; 
- D 0 - I - 0x019E65 06:9E55: 25        .byte $25   ; 
- D 0 - I - 0x019E66 06:9E56: B0        .byte $B0   ; 
- D 0 - I - 0x019E67 06:9E57: 2A        .byte $2A   ; 
- D 0 - I - 0x019E68 06:9E58: B0        .byte $B0   ; 
- D 0 - I - 0x019E69 06:9E59: 24        .byte $24   ; 
- D 0 - I - 0x019E6A 06:9E5A: A0        .byte $A0   ; 
- D 0 - I - 0x019E6B 06:9E5B: 24        .byte $24   ; 
- D 0 - I - 0x019E6C 06:9E5C: A0        .byte $A0   ; 
- D 0 - I - 0x019E6D 06:9E5D: 2A        .byte $2A   ; 
- D 0 - I - 0x019E6E 06:9E5E: 15        .byte $15   ; 
- D 0 - I - 0x019E6F 06:9E5F: B0        .byte $B0   ; 
- D 0 - I - 0x019E70 06:9E60: 24        .byte $24   ; 
- D 0 - I - 0x019E71 06:9E61: E3        .byte $E3   ; 
- D 0 - I - 0x019E72 06:9E62: 50        .byte $50   ; 
- D 0 - I - 0x019E73 06:9E63: D1        .byte $D1   ; 
- D 0 - I - 0x019E74 06:9E64: 2A        .byte $2A   ; 
- D 0 - I - 0x019E75 06:9E65: C5        .byte $C5   ; 
- D 0 - I - 0x019E76 06:9E66: E3        .byte $E3   ; 
- D 0 - I - 0x019E77 06:9E67: 50        .byte $50   ; 
- D 0 - I - 0x019E78 06:9E68: D1        .byte $D1   ; 
- D 0 - I - 0x019E79 06:9E69: 2A        .byte $2A   ; 
- D 0 - I - 0x019E7A 06:9E6A: C5        .byte $C5   ; 
- D 0 - I - 0x019E7B 06:9E6B: E3        .byte $E3   ; 
- D 0 - I - 0x019E7C 06:9E6C: 70        .byte $70   ; 
- D 0 - I - 0x019E7D 06:9E6D: D1        .byte $D1   ; 
- D 0 - I - 0x019E7E 06:9E6E: 2A        .byte $2A   ; 
- D 0 - I - 0x019E7F 06:9E6F: FD        .byte $FD   ; 
sub_FD_9E70:
- D 0 - I - 0x019E80 06:9E70: B0        .byte $B0   ; 
- D 0 - I - 0x019E81 06:9E71: 26        .byte $26   ; 
- D 0 - I - 0x019E82 06:9E72: B0        .byte $B0   ; 
- D 0 - I - 0x019E83 06:9E73: 26        .byte $26   ; 
- D 0 - I - 0x019E84 06:9E74: B0        .byte $B0   ; 
- D 0 - I - 0x019E85 06:9E75: 26        .byte $26   ; 
- D 0 - I - 0x019E86 06:9E76: A0        .byte $A0   ; 
- D 0 - I - 0x019E87 06:9E77: 26        .byte $26   ; 
- D 0 - I - 0x019E88 06:9E78: A0        .byte $A0   ; 
- D 0 - I - 0x019E89 06:9E79: 26        .byte $26   ; 
- D 0 - I - 0x019E8A 06:9E7A: A0        .byte $A0   ; 
- D 0 - I - 0x019E8B 06:9E7B: 26        .byte $26   ; 
- D 0 - I - 0x019E8C 06:9E7C: B0        .byte $B0   ; 
- D 0 - I - 0x019E8D 06:9E7D: 26        .byte $26   ; 
- D 0 - I - 0x019E8E 06:9E7E: B0        .byte $B0   ; 
- D 0 - I - 0x019E8F 06:9E7F: 26        .byte $26   ; 
- D 0 - I - 0x019E90 06:9E80: B0        .byte $B0   ; 
- D 0 - I - 0x019E91 06:9E81: 26        .byte $26   ; 
- D 0 - I - 0x019E92 06:9E82: A0        .byte $A0   ; 
- D 0 - I - 0x019E93 06:9E83: 26        .byte $26   ; 
- D 0 - I - 0x019E94 06:9E84: 1F        .byte $1F   ; 
- D 0 - I - 0x019E95 06:9E85: FD        .byte $FD   ; 



_off014_29_9E86_00:
_off014_2E_9E86_00:
loc_FF_9E86:
- D 0 - I - 0x019E96 06:9E86: E9        .byte $E9   ; 
- D 0 - I - 0x019E97 06:9E87: B1        .byte $B1   ; 
- D 0 - I - 0x019E98 06:9E88: D7        .byte $D7   ; 
- D 0 - I - 0x019E99 06:9E89: 30        .byte $30   ; 
- D 0 - I - 0x019E9A 06:9E8A: 09        .byte $09   ; 
- D 0 - I - 0x019E9B 06:9E8B: 14        .byte $14   ; 
- D 0 - I - 0x019E9C 06:9E8C: E5        .byte $E5   ; 
- D 0 - I - 0x019E9D 06:9E8D: B0        .byte $B0   ; 
- D 0 - I - 0x019E9E 06:9E8E: B0        .byte $B0   ; 
- D 0 - I - 0x019E9F 06:9E8F: B0        .byte $B0   ; 
- D 0 - I - 0x019EA0 06:9E90: B0        .byte $B0   ; 
- D 0 - I - 0x019EA1 06:9E91: E4        .byte $E4   ; 
- D 0 - I - 0x019EA2 06:9E92: 90        .byte $90   ; 
- D 0 - I - 0x019EA3 06:9E93: B0        .byte $B0   ; 
- D 0 - I - 0x019EA4 06:9E94: F6        .byte $F6   ; 
- D 0 - I - 0x019EA5 06:9E95: E4        .byte $E4   ; 
- D 0 - I - 0x019EA6 06:9E96: 90        .byte $90   ; 
- D 0 - I - 0x019EA7 06:9E97: B0        .byte $B0   ; 
- D 0 - I - 0x019EA8 06:9E98: FB        .byte $FB   ; 
- D 0 - I - 0x019EA9 06:9E99: E9        .byte $E9   ; 
- D 0 - I - 0x019EAA 06:9E9A: B1        .byte $B1   ; 
- D 0 - I - 0x019EAB 06:9E9B: ED        .byte $ED   ; 
- D 0 - I - 0x019EAC 06:9E9C: 82        .byte $82   ; 
- D 0 - I - 0x019EAD 06:9E9D: D7        .byte $D7   ; 
- D 0 - I - 0x019EAE 06:9E9E: 74        .byte $74   ; 
- D 0 - I - 0x019EAF 06:9E9F: 82        .byte $82   ; 
- D 0 - I - 0x019EB0 06:9EA0: 14        .byte $14   ; 
- D 0 - I - 0x019EB1 06:9EA1: FD        .byte $FD   ; 
- D 0 - I - 0x019EB2 06:9EA2: C8 9F     .word sub_FD_9FC8
- D 0 - I - 0x019EB4 06:9EA4: 40        .byte $40   ; 
- D 0 - I - 0x019EB5 06:9EA5: F3        .byte $F3   ; 
- D 0 - I - 0x019EB6 06:9EA6: 40        .byte $40   ; 
- D 0 - I - 0x019EB7 06:9EA7: F0        .byte $F0   ; 
- D 0 - I - 0x019EB8 06:9EA8: FD        .byte $FD   ; 
- D 0 - I - 0x019EB9 06:9EA9: C8 9F     .word sub_FD_9FC8
- D 0 - I - 0x019EBB 06:9EAB: E6        .byte $E6   ; 
- D 0 - I - 0x019EBC 06:9EAC: 07        .byte $07   ; 
- D 0 - I - 0x019EBD 06:9EAD: EB        .byte $EB   ; 
- D 0 - I - 0x019EBE 06:9EAE: 50        .byte $50   ; 
- D 0 - I - 0x019EBF 06:9EAF: 71        .byte $71   ; 
- D 0 - I - 0x019EC0 06:9EB0: ED        .byte $ED   ; 
- D 0 - I - 0x019EC1 06:9EB1: 00        .byte $00   ; 
- D 0 - I - 0x019EC2 06:9EB2: E9        .byte $E9   ; 
- D 0 - I - 0x019EC3 06:9EB3: 71        .byte $71   ; 
- D 0 - I - 0x019EC4 06:9EB4: D1        .byte $D1   ; 
- D 0 - I - 0x019EC5 06:9EB5: 30        .byte $30   ; 
- D 0 - I - 0x019EC6 06:9EB6: 0B        .byte $0B   ; 
- D 0 - I - 0x019EC7 06:9EB7: 14        .byte $14   ; 
- D 0 - I - 0x019EC8 06:9EB8: E3        .byte $E3   ; 
- D 0 - I - 0x019EC9 06:9EB9: 23        .byte $23   ; 
- D 0 - I - 0x019ECA 06:9EBA: 74        .byte $74   ; 
- D 0 - I - 0x019ECB 06:9EBB: B4        .byte $B4   ; 
- D 0 - I - 0x019ECC 06:9EBC: E6        .byte $E6   ; 
- D 0 - I - 0x019ECD 06:9EBD: 07        .byte $07   ; 
- D 0 - I - 0x019ECE 06:9EBE: E2        .byte $E2   ; 
- D 0 - I - 0x019ECF 06:9EBF: 2B        .byte $2B   ; 
- D 0 - I - 0x019ED0 06:9EC0: E6        .byte $E6   ; 
- D 0 - I - 0x019ED1 06:9EC1: 01        .byte $01   ; 
- D 0 - I - 0x019ED2 06:9EC2: E3        .byte $E3   ; 
- D 0 - I - 0x019ED3 06:9EC3: 23        .byte $23   ; 
- D 0 - I - 0x019ED4 06:9EC4: 74        .byte $74   ; 
- D 0 - I - 0x019ED5 06:9EC5: B4        .byte $B4   ; 
- D 0 - I - 0x019ED6 06:9EC6: E6        .byte $E6   ; 
- D 0 - I - 0x019ED7 06:9EC7: 07        .byte $07   ; 
- D 0 - I - 0x019ED8 06:9EC8: E2        .byte $E2   ; 
- D 0 - I - 0x019ED9 06:9EC9: 1B        .byte $1B   ; 
- D 0 - I - 0x019EDA 06:9ECA: E6        .byte $E6   ; 
- D 0 - I - 0x019EDB 06:9ECB: 01        .byte $01   ; 
- D 0 - I - 0x019EDC 06:9ECC: E3        .byte $E3   ; 
- D 0 - I - 0x019EDD 06:9ECD: 23        .byte $23   ; 
- D 0 - I - 0x019EDE 06:9ECE: 74        .byte $74   ; 
- D 0 - I - 0x019EDF 06:9ECF: B4        .byte $B4   ; 
- D 0 - I - 0x019EE0 06:9ED0: E6        .byte $E6   ; 
- D 0 - I - 0x019EE1 06:9ED1: 07        .byte $07   ; 
- D 0 - I - 0x019EE2 06:9ED2: E2        .byte $E2   ; 
- D 0 - I - 0x019EE3 06:9ED3: 09        .byte $09   ; 
- D 0 - I - 0x019EE4 06:9ED4: E3        .byte $E3   ; 
- D 0 - I - 0x019EE5 06:9ED5: B0        .byte $B0   ; 
- D 0 - I - 0x019EE6 06:9ED6: E2        .byte $E2   ; 
- D 0 - I - 0x019EE7 06:9ED7: 00        .byte $00   ; 
- D 0 - I - 0x019EE8 06:9ED8: 10        .byte $10   ; 
- D 0 - I - 0x019EE9 06:9ED9: 20        .byte $20   ; 
- D 0 - I - 0x019EEA 06:9EDA: E3        .byte $E3   ; 
- D 0 - I - 0x019EEB 06:9EDB: BB        .byte $BB   ; 
- D 0 - I - 0x019EEC 06:9EDC: E6        .byte $E6   ; 
- D 0 - I - 0x019EED 06:9EDD: 01        .byte $01   ; 
- D 0 - I - 0x019EEE 06:9EDE: E3        .byte $E3   ; 
- D 0 - I - 0x019EEF 06:9EDF: 33        .byte $33   ; 
- D 0 - I - 0x019EF0 06:9EE0: 84        .byte $84   ; 
- D 0 - I - 0x019EF1 06:9EE1: E2        .byte $E2   ; 
- D 0 - I - 0x019EF2 06:9EE2: 04        .byte $04   ; 
- D 0 - I - 0x019EF3 06:9EE3: E6        .byte $E6   ; 
- D 0 - I - 0x019EF4 06:9EE4: 07        .byte $07   ; 
- D 0 - I - 0x019EF5 06:9EE5: 3B        .byte $3B   ; 
- D 0 - I - 0x019EF6 06:9EE6: E6        .byte $E6   ; 
- D 0 - I - 0x019EF7 06:9EE7: 01        .byte $01   ; 
- D 0 - I - 0x019EF8 06:9EE8: E3        .byte $E3   ; 
- D 0 - I - 0x019EF9 06:9EE9: 33        .byte $33   ; 
- D 0 - I - 0x019EFA 06:9EEA: 84        .byte $84   ; 
- D 0 - I - 0x019EFB 06:9EEB: E2        .byte $E2   ; 
- D 0 - I - 0x019EFC 06:9EEC: 04        .byte $04   ; 
- D 0 - I - 0x019EFD 06:9EED: E6        .byte $E6   ; 
- D 0 - I - 0x019EFE 06:9EEE: 07        .byte $07   ; 
- D 0 - I - 0x019EFF 06:9EEF: 2B        .byte $2B   ; 
- D 0 - I - 0x019F00 06:9EF0: E6        .byte $E6   ; 
- D 0 - I - 0x019F01 06:9EF1: 01        .byte $01   ; 
- D 0 - I - 0x019F02 06:9EF2: E3        .byte $E3   ; 
- D 0 - I - 0x019F03 06:9EF3: 33        .byte $33   ; 
- D 0 - I - 0x019F04 06:9EF4: 84        .byte $84   ; 
- D 0 - I - 0x019F05 06:9EF5: E2        .byte $E2   ; 
- D 0 - I - 0x019F06 06:9EF6: 04        .byte $04   ; 
- D 0 - I - 0x019F07 06:9EF7: E6        .byte $E6   ; 
- D 0 - I - 0x019F08 06:9EF8: 07        .byte $07   ; 
- D 0 - I - 0x019F09 06:9EF9: 19        .byte $19   ; 
- D 0 - I - 0x019F0A 06:9EFA: 00        .byte $00   ; 
- D 0 - I - 0x019F0B 06:9EFB: 10        .byte $10   ; 
- D 0 - I - 0x019F0C 06:9EFC: 20        .byte $20   ; 
- D 0 - I - 0x019F0D 06:9EFD: 30        .byte $30   ; 
- D 0 - I - 0x019F0E 06:9EFE: 09        .byte $09   ; 
- D 0 - I - 0x019F0F 06:9EFF: E3        .byte $E3   ; 
- D 0 - I - 0x019F10 06:9F00: 30        .byte $30   ; 
- D 0 - I - 0x019F11 06:9F01: 50        .byte $50   ; 
- D 0 - I - 0x019F12 06:9F02: F5        .byte $F5   ; 
- D 0 - I - 0x019F13 06:9F03: 30        .byte $30   ; 
- D 0 - I - 0x019F14 06:9F04: 50        .byte $50   ; 
- D 0 - I - 0x019F15 06:9F05: F0        .byte $F0   ; 
- D 0 - I - 0x019F16 06:9F06: FE        .byte $FE   ; 
- D 0 - I - 0x019F17 06:9F07: 02        .byte $02   ; 
- D 0 - I - 0x019F18 06:9F08: E9        .byte $E9   ; 
- D 0 - I - 0x019F19 06:9F09: B1        .byte $B1   ; 
- D 0 - I - 0x019F1A 06:9F0A: D7        .byte $D7   ; 
- D 0 - I - 0x019F1B 06:9F0B: 30        .byte $30   ; 
- D 0 - I - 0x019F1C 06:9F0C: 0A        .byte $0A   ; 
- D 0 - I - 0x019F1D 06:9F0D: 11        .byte $11   ; 
- D 0 - I - 0x019F1E 06:9F0E: EB        .byte $EB   ; 
- D 0 - I - 0x019F1F 06:9F0F: 50        .byte $50   ; 
- D 0 - I - 0x019F20 06:9F10: 22        .byte $22   ; 
- D 0 - I - 0x019F21 06:9F11: E6        .byte $E6   ; 
- D 0 - I - 0x019F22 06:9F12: 01        .byte $01   ; 
- D 0 - I - 0x019F23 06:9F13: E4        .byte $E4   ; 
- D 0 - I - 0x019F24 06:9F14: F3        .byte $F3   ; 
- D 0 - I - 0x019F25 06:9F15: 30        .byte $30   ; 
- D 0 - I - 0x019F26 06:9F16: F2        .byte $F2   ; 
- D 0 - I - 0x019F27 06:9F17: 40        .byte $40   ; 
- D 0 - I - 0x019F28 06:9F18: F1        .byte $F1   ; 
- D 0 - I - 0x019F29 06:9F19: 50        .byte $50   ; 
- D 0 - I - 0x019F2A 06:9F1A: F0        .byte $F0   ; 
- D 0 - I - 0x019F2B 06:9F1B: E6        .byte $E6   ; 
- D 0 - I - 0x019F2C 06:9F1C: 05        .byte $05   ; 
- D 0 - I - 0x019F2D 06:9F1D: E4        .byte $E4   ; 
- D 0 - I - 0x019F2E 06:9F1E: 64        .byte $64   ; 
- D 0 - I - 0x019F2F 06:9F1F: E6        .byte $E6   ; 
- D 0 - I - 0x019F30 06:9F20: 07        .byte $07   ; 
- D 0 - I - 0x019F31 06:9F21: E3        .byte $E3   ; 
- D 0 - I - 0x019F32 06:9F22: 01        .byte $01   ; 
- D 0 - I - 0x019F33 06:9F23: E4        .byte $E4   ; 
- D 0 - I - 0x019F34 06:9F24: B3        .byte $B3   ; 
- D 0 - I - 0x019F35 06:9F25: 51        .byte $51   ; 
- D 0 - I - 0x019F36 06:9F26: 63        .byte $63   ; 
- D 0 - I - 0x019F37 06:9F27: E3        .byte $E3   ; 
- D 0 - I - 0x019F38 06:9F28: 01        .byte $01   ; 
- D 0 - I - 0x019F39 06:9F29: 13        .byte $13   ; 
- D 0 - I - 0x019F3A 06:9F2A: E4        .byte $E4   ; 
- D 0 - I - 0x019F3B 06:9F2B: 81        .byte $81   ; 
- D 0 - I - 0x019F3C 06:9F2C: E9        .byte $E9   ; 
- D 0 - I - 0x019F3D 06:9F2D: 31        .byte $31   ; 
- D 0 - I - 0x019F3E 06:9F2E: E9        .byte $E9   ; 
- D 0 - I - 0x019F3F 06:9F2F: B0        .byte $B0   ; 
- D 0 - I - 0x019F40 06:9F30: E3        .byte $E3   ; 
- D 0 - I - 0x019F41 06:9F31: 60        .byte $60   ; 
- D 0 - I - 0x019F42 06:9F32: F2        .byte $F2   ; 
- D 0 - I - 0x019F43 06:9F33: 60        .byte $60   ; 
- D 0 - I - 0x019F44 06:9F34: F4        .byte $F4   ; 
- D 0 - I - 0x019F45 06:9F35: 60        .byte $60   ; 
- D 0 - I - 0x019F46 06:9F36: F6        .byte $F6   ; 
- D 0 - I - 0x019F47 06:9F37: 60        .byte $60   ; 
- D 0 - I - 0x019F48 06:9F38: F0        .byte $F0   ; 
- D 0 - I - 0x019F49 06:9F39: E2        .byte $E2   ; 
- D 0 - I - 0x019F4A 06:9F3A: 00        .byte $00   ; 
- D 0 - I - 0x019F4B 06:9F3B: F2        .byte $F2   ; 
- D 0 - I - 0x019F4C 06:9F3C: 00        .byte $00   ; 
- D 0 - I - 0x019F4D 06:9F3D: F0        .byte $F0   ; 
- D 0 - I - 0x019F4E 06:9F3E: E3        .byte $E3   ; 
- D 0 - I - 0x019F4F 06:9F3F: B0        .byte $B0   ; 
- D 0 - I - 0x019F50 06:9F40: F2        .byte $F2   ; 
- D 0 - I - 0x019F51 06:9F41: B0        .byte $B0   ; 
- D 0 - I - 0x019F52 06:9F42: F4        .byte $F4   ; 
- D 0 - I - 0x019F53 06:9F43: B0        .byte $B0   ; 
- D 0 - I - 0x019F54 06:9F44: F6        .byte $F6   ; 
- D 0 - I - 0x019F55 06:9F45: B0        .byte $B0   ; 
- D 0 - I - 0x019F56 06:9F46: F0        .byte $F0   ; 
- D 0 - I - 0x019F57 06:9F47: 50        .byte $50   ; 
- D 0 - I - 0x019F58 06:9F48: F2        .byte $F2   ; 
- D 0 - I - 0x019F59 06:9F49: 50        .byte $50   ; 
- D 0 - I - 0x019F5A 06:9F4A: F0        .byte $F0   ; 
- D 0 - I - 0x019F5B 06:9F4B: 60        .byte $60   ; 
- D 0 - I - 0x019F5C 06:9F4C: F2        .byte $F2   ; 
- D 0 - I - 0x019F5D 06:9F4D: 60        .byte $60   ; 
- D 0 - I - 0x019F5E 06:9F4E: F4        .byte $F4   ; 
- D 0 - I - 0x019F5F 06:9F4F: 60        .byte $60   ; 
- D 0 - I - 0x019F60 06:9F50: F6        .byte $F6   ; 
- D 0 - I - 0x019F61 06:9F51: 60        .byte $60   ; 
- D 0 - I - 0x019F62 06:9F52: F0        .byte $F0   ; 
- D 0 - I - 0x019F63 06:9F53: E2        .byte $E2   ; 
- D 0 - I - 0x019F64 06:9F54: 00        .byte $00   ; 
- D 0 - I - 0x019F65 06:9F55: F2        .byte $F2   ; 
- D 0 - I - 0x019F66 06:9F56: 00        .byte $00   ; 
- D 0 - I - 0x019F67 06:9F57: F0        .byte $F0   ; 
- D 0 - I - 0x019F68 06:9F58: 10        .byte $10   ; 
- D 0 - I - 0x019F69 06:9F59: F2        .byte $F2   ; 
- D 0 - I - 0x019F6A 06:9F5A: 10        .byte $10   ; 
- D 0 - I - 0x019F6B 06:9F5B: F4        .byte $F4   ; 
- D 0 - I - 0x019F6C 06:9F5C: 10        .byte $10   ; 
- D 0 - I - 0x019F6D 06:9F5D: F6        .byte $F6   ; 
- D 0 - I - 0x019F6E 06:9F5E: 10        .byte $10   ; 
- D 0 - I - 0x019F6F 06:9F5F: F0        .byte $F0   ; 
- D 0 - I - 0x019F70 06:9F60: E3        .byte $E3   ; 
- D 0 - I - 0x019F71 06:9F61: 80        .byte $80   ; 
- D 0 - I - 0x019F72 06:9F62: F2        .byte $F2   ; 
- D 0 - I - 0x019F73 06:9F63: 80        .byte $80   ; 
- D 0 - I - 0x019F74 06:9F64: F0        .byte $F0   ; 
- D 0 - I - 0x019F75 06:9F65: E9        .byte $E9   ; 
- D 0 - I - 0x019F76 06:9F66: 71        .byte $71   ; 
- D 0 - I - 0x019F77 06:9F67: D7        .byte $D7   ; 
- D 0 - I - 0x019F78 06:9F68: 30        .byte $30   ; 
- D 0 - I - 0x019F79 06:9F69: 0C        .byte $0C   ; 
- D 0 - I - 0x019F7A 06:9F6A: 34        .byte $34   ; 
- D 0 - I - 0x019F7B 06:9F6B: EB        .byte $EB   ; 
- D 0 - I - 0x019F7C 06:9F6C: 51        .byte $51   ; 
- D 0 - I - 0x019F7D 06:9F6D: 32        .byte $32   ; 
- D 0 - I - 0x019F7E 06:9F6E: E4        .byte $E4   ; 
- D 0 - I - 0x019F7F 06:9F6F: 91        .byte $91   ; 
- D 0 - I - 0x019F80 06:9F70: E5        .byte $E5   ; 
- D 0 - I - 0x019F81 06:9F71: 90        .byte $90   ; 
- D 0 - I - 0x019F82 06:9F72: E4        .byte $E4   ; 
- D 0 - I - 0x019F83 06:9F73: 20        .byte $20   ; 
- D 0 - I - 0x019F84 06:9F74: E5        .byte $E5   ; 
- D 0 - I - 0x019F85 06:9F75: 20        .byte $20   ; 
- D 0 - I - 0x019F86 06:9F76: E4        .byte $E4   ; 
- D 0 - I - 0x019F87 06:9F77: 40        .byte $40   ; 
- D 0 - I - 0x019F88 06:9F78: 70        .byte $70   ; 
- D 0 - I - 0x019F89 06:9F79: 90        .byte $90   ; 
- D 0 - I - 0x019F8A 06:9F7A: A0        .byte $A0   ; 
- D 0 - I - 0x019F8B 06:9F7B: E5        .byte $E5   ; 
- D 0 - I - 0x019F8C 06:9F7C: 30        .byte $30   ; 
- D 0 - I - 0x019F8D 06:9F7D: A0        .byte $A0   ; 
- D 0 - I - 0x019F8E 06:9F7E: E4        .byte $E4   ; 
- D 0 - I - 0x019F8F 06:9F7F: 30        .byte $30   ; 
- D 0 - I - 0x019F90 06:9F80: E4        .byte $E4   ; 
- D 0 - I - 0x019F91 06:9F81: 80        .byte $80   ; 
- D 0 - I - 0x019F92 06:9F82: E5        .byte $E5   ; 
- D 0 - I - 0x019F93 06:9F83: 10        .byte $10   ; 
- D 0 - I - 0x019F94 06:9F84: E4        .byte $E4   ; 
- D 0 - I - 0x019F95 06:9F85: 10        .byte $10   ; 
- D 0 - I - 0x019F96 06:9F86: E5        .byte $E5   ; 
- D 0 - I - 0x019F97 06:9F87: 10        .byte $10   ; 
- D 0 - I - 0x019F98 06:9F88: E4        .byte $E4   ; 
- D 0 - I - 0x019F99 06:9F89: 91        .byte $91   ; 
- D 0 - I - 0x019F9A 06:9F8A: E5        .byte $E5   ; 
- D 0 - I - 0x019F9B 06:9F8B: 90        .byte $90   ; 
- D 0 - I - 0x019F9C 06:9F8C: E4        .byte $E4   ; 
- D 0 - I - 0x019F9D 06:9F8D: 20        .byte $20   ; 
- D 0 - I - 0x019F9E 06:9F8E: E5        .byte $E5   ; 
- D 0 - I - 0x019F9F 06:9F8F: 20        .byte $20   ; 
- D 0 - I - 0x019FA0 06:9F90: E4        .byte $E4   ; 
- D 0 - I - 0x019FA1 06:9F91: 40        .byte $40   ; 
- D 0 - I - 0x019FA2 06:9F92: 70        .byte $70   ; 
- D 0 - I - 0x019FA3 06:9F93: 90        .byte $90   ; 
- D 0 - I - 0x019FA4 06:9F94: A0        .byte $A0   ; 
- D 0 - I - 0x019FA5 06:9F95: E5        .byte $E5   ; 
- D 0 - I - 0x019FA6 06:9F96: 30        .byte $30   ; 
- D 0 - I - 0x019FA7 06:9F97: A0        .byte $A0   ; 
- D 0 - I - 0x019FA8 06:9F98: E4        .byte $E4   ; 
- D 0 - I - 0x019FA9 06:9F99: 30        .byte $30   ; 
- D 0 - I - 0x019FAA 06:9F9A: E3        .byte $E3   ; 
- D 0 - I - 0x019FAB 06:9F9B: 00        .byte $00   ; 
- D 0 - I - 0x019FAC 06:9F9C: E5        .byte $E5   ; 
- D 0 - I - 0x019FAD 06:9F9D: 50        .byte $50   ; 
- D 0 - I - 0x019FAE 06:9F9E: E4        .byte $E4   ; 
- D 0 - I - 0x019FAF 06:9F9F: 00        .byte $00   ; 
- D 0 - I - 0x019FB0 06:9FA0: 50        .byte $50   ; 
- D 0 - I - 0x019FB1 06:9FA1: E9        .byte $E9   ; 
- D 0 - I - 0x019FB2 06:9FA2: 71        .byte $71   ; 
- D 0 - I - 0x019FB3 06:9FA3: E9        .byte $E9   ; 
- D 0 - I - 0x019FB4 06:9FA4: 30        .byte $30   ; 
- D 0 - I - 0x019FB5 06:9FA5: E3        .byte $E3   ; 
- D 0 - I - 0x019FB6 06:9FA6: 15        .byte $15   ; 
- D 0 - I - 0x019FB7 06:9FA7: E4        .byte $E4   ; 
- D 0 - I - 0x019FB8 06:9FA8: 90        .byte $90   ; 
- D 0 - I - 0x019FB9 06:9FA9: E3        .byte $E3   ; 
- D 0 - I - 0x019FBA 06:9FAA: 10        .byte $10   ; 
- D 0 - I - 0x019FBB 06:9FAB: 23        .byte $23   ; 
- D 0 - I - 0x019FBC 06:9FAC: 03        .byte $03   ; 
- D 0 - I - 0x019FBD 06:9FAD: 11        .byte $11   ; 
- D 0 - I - 0x019FBE 06:9FAE: E5        .byte $E5   ; 
- D 0 - I - 0x019FBF 06:9FAF: 90        .byte $90   ; 
- D 0 - I - 0x019FC0 06:9FB0: E4        .byte $E4   ; 
- D 0 - I - 0x019FC1 06:9FB1: 20        .byte $20   ; 
- D 0 - I - 0x019FC2 06:9FB2: E5        .byte $E5   ; 
- D 0 - I - 0x019FC3 06:9FB3: 20        .byte $20   ; 
- D 0 - I - 0x019FC4 06:9FB4: 90        .byte $90   ; 
- D 0 - I - 0x019FC5 06:9FB5: E4        .byte $E4   ; 
- D 0 - I - 0x019FC6 06:9FB6: 90        .byte $90   ; 
- D 0 - I - 0x019FC7 06:9FB7: E3        .byte $E3   ; 
- D 0 - I - 0x019FC8 06:9FB8: 10        .byte $10   ; 
- D 0 - I - 0x019FC9 06:9FB9: 20        .byte $20   ; 
- D 0 - I - 0x019FCA 06:9FBA: E5        .byte $E5   ; 
- D 0 - I - 0x019FCB 06:9FBB: 30        .byte $30   ; 
- D 0 - I - 0x019FCC 06:9FBC: A0        .byte $A0   ; 
- D 0 - I - 0x019FCD 06:9FBD: E4        .byte $E4   ; 
- D 0 - I - 0x019FCE 06:9FBE: 30        .byte $30   ; 
- D 0 - I - 0x019FCF 06:9FBF: E3        .byte $E3   ; 
- D 0 - I - 0x019FD0 06:9FC0: 40        .byte $40   ; 
- D 0 - I - 0x019FD1 06:9FC1: 40        .byte $40   ; 
- D 0 - I - 0x019FD2 06:9FC2: 40        .byte $40   ; 
- D 0 - I - 0x019FD3 06:9FC3: 40        .byte $40   ; 
- D 0 - I - 0x019FD4 06:9FC4: FE        .byte $FE   ; 
- D 0 - I - 0x019FD5 06:9FC5: FF        .byte $FF   ; 
- D 0 - I - 0x019FD6 06:9FC6: 86 9E     .word loc_FF_9E86



sub_FD_9FC8:
- D 0 - I - 0x019FD8 06:9FC8: E5        .byte $E5   ; 
- D 0 - I - 0x019FD9 06:9FC9: B0        .byte $B0   ; 
- D 0 - I - 0x019FDA 06:9FCA: B0        .byte $B0   ; 
- D 0 - I - 0x019FDB 06:9FCB: B0        .byte $B0   ; 
- D 0 - I - 0x019FDC 06:9FCC: B0        .byte $B0   ; 
- D 0 - I - 0x019FDD 06:9FCD: E4        .byte $E4   ; 
- D 0 - I - 0x019FDE 06:9FCE: 40        .byte $40   ; 
- D 0 - I - 0x019FDF 06:9FCF: F3        .byte $F3   ; 
- D 0 - I - 0x019FE0 06:9FD0: 40        .byte $40   ; 
- D 0 - I - 0x019FE1 06:9FD1: F0        .byte $F0   ; 
- D 0 - I - 0x019FE2 06:9FD2: E5        .byte $E5   ; 
- D 0 - I - 0x019FE3 06:9FD3: 40        .byte $40   ; 
- D 0 - I - 0x019FE4 06:9FD4: B0        .byte $B0   ; 
- D 0 - I - 0x019FE5 06:9FD5: F3        .byte $F3   ; 
- D 0 - I - 0x019FE6 06:9FD6: B0        .byte $B0   ; 
- D 0 - I - 0x019FE7 06:9FD7: F0        .byte $F0   ; 
- D 0 - I - 0x019FE8 06:9FD8: E4        .byte $E4   ; 
- D 0 - I - 0x019FE9 06:9FD9: 40        .byte $40   ; 
- D 0 - I - 0x019FEA 06:9FDA: F3        .byte $F3   ; 
- D 0 - I - 0x019FEB 06:9FDB: 40        .byte $40   ; 
- D 0 - I - 0x019FEC 06:9FDC: F0        .byte $F0   ; 
- D 0 - I - 0x019FED 06:9FDD: 20        .byte $20   ; 
- D 0 - I - 0x019FEE 06:9FDE: FD        .byte $FD   ; 



_off014_29_9FDF_01:
_off014_2E_9FDF_01:
loc_FF_9FDF:
- D 0 - I - 0x019FEF 06:9FDF: E9        .byte $E9   ; 
- D 0 - I - 0x019FF0 06:9FE0: 71        .byte $71   ; 
- D 0 - I - 0x019FF1 06:9FE1: D7        .byte $D7   ; 
- D 0 - I - 0x019FF2 06:9FE2: 30        .byte $30   ; 
- D 0 - I - 0x019FF3 06:9FE3: 09        .byte $09   ; 
- D 0 - I - 0x019FF4 06:9FE4: 14        .byte $14   ; 
- D 0 - I - 0x019FF5 06:9FE5: E4        .byte $E4   ; 
- D 0 - I - 0x019FF6 06:9FE6: 60        .byte $60   ; 
- D 0 - I - 0x019FF7 06:9FE7: 60        .byte $60   ; 
- D 0 - I - 0x019FF8 06:9FE8: 60        .byte $60   ; 
- D 0 - I - 0x019FF9 06:9FE9: 60        .byte $60   ; 
- D 0 - I - 0x019FFA 06:9FEA: E3        .byte $E3   ; 
- D 0 - I - 0x019FFB 06:9FEB: 90        .byte $90   ; 
- D 0 - I - 0x019FFC 06:9FEC: B0        .byte $B0   ; 
- D 0 - I - 0x019FFD 06:9FED: F6        .byte $F6   ; 
- D 0 - I - 0x019FFE 06:9FEE: 90        .byte $90   ; 
- D 0 - I - 0x019FFF 06:9FEF: B0        .byte $B0   ; 
- D 0 - I - 0x01A000 06:9FF0: F0        .byte $F0   ; 
- D 0 - I - 0x01A001 06:9FF1: FB        .byte $FB   ; 
- D 0 - I - 0x01A002 06:9FF2: E9        .byte $E9   ; 
- D 0 - I - 0x01A003 06:9FF3: B1        .byte $B1   ; 
- D 0 - I - 0x01A004 06:9FF4: D7        .byte $D7   ; 
- D 0 - I - 0x01A005 06:9FF5: 36        .byte $36   ; 
- D 0 - I - 0x01A006 06:9FF6: 83        .byte $83   ; 
- D 0 - I - 0x01A007 06:9FF7: 14        .byte $14   ; 
- D 0 - I - 0x01A008 06:9FF8: FD        .byte $FD   ; 
- D 0 - I - 0x01A009 06:9FF9: C1 A0     .word sub_FD_A0C1
- D 0 - I - 0x01A00B 06:9FFB: 40        .byte $40   ; 
- D 0 - I - 0x01A00C 06:9FFC: F5        .byte $F5   ; 
- D 0 - I - 0x01A00D 06:9FFD: 40        .byte $40   ; 
- D 0 - I - 0x01A00E 06:9FFE: F0        .byte $F0   ; 
- D 0 - I - 0x01A00F 06:9FFF: FD        .byte $FD   ; 
- D 1 - I - 0x01A010 06:A000: C1 A0     .word sub_FD_A0C1
- D 1 - I - 0x01A012 06:A002: E9        .byte $E9   ; 
- D 1 - I - 0x01A013 06:A003: 31        .byte $31   ; 
- D 1 - I - 0x01A014 06:A004: E6        .byte $E6   ; 
- D 1 - I - 0x01A015 06:A005: 07        .byte $07   ; 
- D 1 - I - 0x01A016 06:A006: EB        .byte $EB   ; 
- D 1 - I - 0x01A017 06:A007: 50        .byte $50   ; 
- D 1 - I - 0x01A018 06:A008: 41        .byte $41   ; 
- D 1 - I - 0x01A019 06:A009: D1        .byte $D1   ; 
- D 1 - I - 0x01A01A 06:A00A: 70        .byte $70   ; 
- D 1 - I - 0x01A01B 06:A00B: 0B        .byte $0B   ; 
- D 1 - I - 0x01A01C 06:A00C: 14        .byte $14   ; 
- D 1 - I - 0x01A01D 06:A00D: E3        .byte $E3   ; 
- D 1 - I - 0x01A01E 06:A00E: 93        .byte $93   ; 
- D 1 - I - 0x01A01F 06:A00F: E2        .byte $E2   ; 
- D 1 - I - 0x01A020 06:A010: 24        .byte $24   ; 
- D 1 - I - 0x01A021 06:A011: 64        .byte $64   ; 
- D 1 - I - 0x01A022 06:A012: E6        .byte $E6   ; 
- D 1 - I - 0x01A023 06:A013: 07        .byte $07   ; 
- D 1 - I - 0x01A024 06:A014: 9B        .byte $9B   ; 
- D 1 - I - 0x01A025 06:A015: E6        .byte $E6   ; 
- D 1 - I - 0x01A026 06:A016: 01        .byte $01   ; 
- D 1 - I - 0x01A027 06:A017: E3        .byte $E3   ; 
- D 1 - I - 0x01A028 06:A018: 93        .byte $93   ; 
- D 1 - I - 0x01A029 06:A019: E2        .byte $E2   ; 
- D 1 - I - 0x01A02A 06:A01A: 24        .byte $24   ; 
- D 1 - I - 0x01A02B 06:A01B: 64        .byte $64   ; 
- D 1 - I - 0x01A02C 06:A01C: E6        .byte $E6   ; 
- D 1 - I - 0x01A02D 06:A01D: 07        .byte $07   ; 
- D 1 - I - 0x01A02E 06:A01E: 8B        .byte $8B   ; 
- D 1 - I - 0x01A02F 06:A01F: E6        .byte $E6   ; 
- D 1 - I - 0x01A030 06:A020: 01        .byte $01   ; 
- D 1 - I - 0x01A031 06:A021: E3        .byte $E3   ; 
- D 1 - I - 0x01A032 06:A022: 93        .byte $93   ; 
- D 1 - I - 0x01A033 06:A023: E2        .byte $E2   ; 
- D 1 - I - 0x01A034 06:A024: 24        .byte $24   ; 
- D 1 - I - 0x01A035 06:A025: 64        .byte $64   ; 
- D 1 - I - 0x01A036 06:A026: E6        .byte $E6   ; 
- D 1 - I - 0x01A037 06:A027: 07        .byte $07   ; 
- D 1 - I - 0x01A038 06:A028: 79        .byte $79   ; 
- D 1 - I - 0x01A039 06:A029: 60        .byte $60   ; 
- D 1 - I - 0x01A03A 06:A02A: 70        .byte $70   ; 
- D 1 - I - 0x01A03B 06:A02B: 80        .byte $80   ; 
- D 1 - I - 0x01A03C 06:A02C: 90        .byte $90   ; 
- D 1 - I - 0x01A03D 06:A02D: 6B        .byte $6B   ; 
- D 1 - I - 0x01A03E 06:A02E: E6        .byte $E6   ; 
- D 1 - I - 0x01A03F 06:A02F: 01        .byte $01   ; 
- D 1 - I - 0x01A040 06:A030: E3        .byte $E3   ; 
- D 1 - I - 0x01A041 06:A031: A3        .byte $A3   ; 
- D 1 - I - 0x01A042 06:A032: E2        .byte $E2   ; 
- D 1 - I - 0x01A043 06:A033: 34        .byte $34   ; 
- D 1 - I - 0x01A044 06:A034: 74        .byte $74   ; 
- D 1 - I - 0x01A045 06:A035: E6        .byte $E6   ; 
- D 1 - I - 0x01A046 06:A036: 07        .byte $07   ; 
- D 1 - I - 0x01A047 06:A037: AB        .byte $AB   ; 
- D 1 - I - 0x01A048 06:A038: E6        .byte $E6   ; 
- D 1 - I - 0x01A049 06:A039: 01        .byte $01   ; 
- D 1 - I - 0x01A04A 06:A03A: E3        .byte $E3   ; 
- D 1 - I - 0x01A04B 06:A03B: A3        .byte $A3   ; 
- D 1 - I - 0x01A04C 06:A03C: E2        .byte $E2   ; 
- D 1 - I - 0x01A04D 06:A03D: 34        .byte $34   ; 
- D 1 - I - 0x01A04E 06:A03E: 74        .byte $74   ; 
- D 1 - I - 0x01A04F 06:A03F: E6        .byte $E6   ; 
- D 1 - I - 0x01A050 06:A040: 07        .byte $07   ; 
- D 1 - I - 0x01A051 06:A041: 9B        .byte $9B   ; 
- D 1 - I - 0x01A052 06:A042: E6        .byte $E6   ; 
- D 1 - I - 0x01A053 06:A043: 01        .byte $01   ; 
- D 1 - I - 0x01A054 06:A044: E3        .byte $E3   ; 
- D 1 - I - 0x01A055 06:A045: A3        .byte $A3   ; 
- D 1 - I - 0x01A056 06:A046: E2        .byte $E2   ; 
- D 1 - I - 0x01A057 06:A047: 34        .byte $34   ; 
- D 1 - I - 0x01A058 06:A048: 74        .byte $74   ; 
- D 1 - I - 0x01A059 06:A049: E6        .byte $E6   ; 
- D 1 - I - 0x01A05A 06:A04A: 07        .byte $07   ; 
- D 1 - I - 0x01A05B 06:A04B: 89        .byte $89   ; 
- D 1 - I - 0x01A05C 06:A04C: 70        .byte $70   ; 
- D 1 - I - 0x01A05D 06:A04D: 80        .byte $80   ; 
- D 1 - I - 0x01A05E 06:A04E: 90        .byte $90   ; 
- D 1 - I - 0x01A05F 06:A04F: A0        .byte $A0   ; 
- D 1 - I - 0x01A060 06:A050: 79        .byte $79   ; 
- D 1 - I - 0x01A061 06:A051: 30        .byte $30   ; 
- D 1 - I - 0x01A062 06:A052: 50        .byte $50   ; 
- D 1 - I - 0x01A063 06:A053: F4        .byte $F4   ; 
- D 1 - I - 0x01A064 06:A054: 30        .byte $30   ; 
- D 1 - I - 0x01A065 06:A055: 50        .byte $50   ; 
- D 1 - I - 0x01A066 06:A056: F0        .byte $F0   ; 
- D 1 - I - 0x01A067 06:A057: FE        .byte $FE   ; 
- D 1 - I - 0x01A068 06:A058: 02        .byte $02   ; 
- D 1 - I - 0x01A069 06:A059: E9        .byte $E9   ; 
- D 1 - I - 0x01A06A 06:A05A: 31        .byte $31   ; 
- D 1 - I - 0x01A06B 06:A05B: D7        .byte $D7   ; 
- D 1 - I - 0x01A06C 06:A05C: 30        .byte $30   ; 
- D 1 - I - 0x01A06D 06:A05D: 0A        .byte $0A   ; 
- D 1 - I - 0x01A06E 06:A05E: 11        .byte $11   ; 
- D 1 - I - 0x01A06F 06:A05F: EB        .byte $EB   ; 
- D 1 - I - 0x01A070 06:A060: 50        .byte $50   ; 
- D 1 - I - 0x01A071 06:A061: 32        .byte $32   ; 
- D 1 - I - 0x01A072 06:A062: E6        .byte $E6   ; 
- D 1 - I - 0x01A073 06:A063: 01        .byte $01   ; 
- D 1 - I - 0x01A074 06:A064: E4        .byte $E4   ; 
- D 1 - I - 0x01A075 06:A065: F5        .byte $F5   ; 
- D 1 - I - 0x01A076 06:A066: 80        .byte $80   ; 
- D 1 - I - 0x01A077 06:A067: F3        .byte $F3   ; 
- D 1 - I - 0x01A078 06:A068: 90        .byte $90   ; 
- D 1 - I - 0x01A079 06:A069: F1        .byte $F1   ; 
- D 1 - I - 0x01A07A 06:A06A: A0        .byte $A0   ; 
- D 1 - I - 0x01A07B 06:A06B: F0        .byte $F0   ; 
- D 1 - I - 0x01A07C 06:A06C: E6        .byte $E6   ; 
- D 1 - I - 0x01A07D 06:A06D: 05        .byte $05   ; 
- D 1 - I - 0x01A07E 06:A06E: E4        .byte $E4   ; 
- D 1 - I - 0x01A07F 06:A06F: B4        .byte $B4   ; 
- D 1 - I - 0x01A080 06:A070: E6        .byte $E6   ; 
- D 1 - I - 0x01A081 06:A071: 07        .byte $07   ; 
- D 1 - I - 0x01A082 06:A072: E3        .byte $E3   ; 
- D 1 - I - 0x01A083 06:A073: 51        .byte $51   ; 
- D 1 - I - 0x01A084 06:A074: 43        .byte $43   ; 
- D 1 - I - 0x01A085 06:A075: E4        .byte $E4   ; 
- D 1 - I - 0x01A086 06:A076: A1        .byte $A1   ; 
- D 1 - I - 0x01A087 06:A077: B3        .byte $B3   ; 
- D 1 - I - 0x01A088 06:A078: E3        .byte $E3   ; 
- D 1 - I - 0x01A089 06:A079: 51        .byte $51   ; 
- D 1 - I - 0x01A08A 06:A07A: 63        .byte $63   ; 
- D 1 - I - 0x01A08B 06:A07B: 11        .byte $11   ; 
- D 1 - I - 0x01A08C 06:A07C: E9        .byte $E9   ; 
- D 1 - I - 0x01A08D 06:A07D: 31        .byte $31   ; 
- D 1 - I - 0x01A08E 06:A07E: E9        .byte $E9   ; 
- D 1 - I - 0x01A08F 06:A07F: 70        .byte $70   ; 
- D 1 - I - 0x01A090 06:A080: E3        .byte $E3   ; 
- D 1 - I - 0x01A091 06:A081: B3        .byte $B3   ; 
- D 1 - I - 0x01A092 06:A082: E6        .byte $E6   ; 
- D 1 - I - 0x01A093 06:A083: 07        .byte $07   ; 
- D 1 - I - 0x01A094 06:A084: E2        .byte $E2   ; 
- D 1 - I - 0x01A095 06:A085: 51        .byte $51   ; 
- D 1 - I - 0x01A096 06:A086: 43        .byte $43   ; 
- D 1 - I - 0x01A097 06:A087: E3        .byte $E3   ; 
- D 1 - I - 0x01A098 06:A088: A1        .byte $A1   ; 
- D 1 - I - 0x01A099 06:A089: B3        .byte $B3   ; 
- D 1 - I - 0x01A09A 06:A08A: E2        .byte $E2   ; 
- D 1 - I - 0x01A09B 06:A08B: 51        .byte $51   ; 
- D 1 - I - 0x01A09C 06:A08C: 63        .byte $63   ; 
- D 1 - I - 0x01A09D 06:A08D: 11        .byte $11   ; 
- D 1 - I - 0x01A09E 06:A08E: E9        .byte $E9   ; 
- D 1 - I - 0x01A09F 06:A08F: B1        .byte $B1   ; 
- D 1 - I - 0x01A0A0 06:A090: D7        .byte $D7   ; 
- D 1 - I - 0x01A0A1 06:A091: 30        .byte $30   ; 
- D 1 - I - 0x01A0A2 06:A092: 0C        .byte $0C   ; 
- D 1 - I - 0x01A0A3 06:A093: 34        .byte $34   ; 
- D 1 - I - 0x01A0A4 06:A094: EB        .byte $EB   ; 
- D 1 - I - 0x01A0A5 06:A095: 51        .byte $51   ; 
- D 1 - I - 0x01A0A6 06:A096: 23        .byte $23   ; 
- D 1 - I - 0x01A0A7 06:A097: E3        .byte $E3   ; 
- D 1 - I - 0x01A0A8 06:A098: 24        .byte $24   ; 
- D 1 - I - 0x01A0A9 06:A099: E4        .byte $E4   ; 
- D 1 - I - 0x01A0AA 06:A09A: 90        .byte $90   ; 
- D 1 - I - 0x01A0AB 06:A09B: E3        .byte $E3   ; 
- D 1 - I - 0x01A0AC 06:A09C: 00        .byte $00   ; 
- D 1 - I - 0x01A0AD 06:A09D: 20        .byte $20   ; 
- D 1 - I - 0x01A0AE 06:A09E: 33        .byte $33   ; 
- D 1 - I - 0x01A0AF 06:A09F: 13        .byte $13   ; 
- D 1 - I - 0x01A0B0 06:A0A0: 24        .byte $24   ; 
- D 1 - I - 0x01A0B1 06:A0A1: E4        .byte $E4   ; 
- D 1 - I - 0x01A0B2 06:A0A2: 90        .byte $90   ; 
- D 1 - I - 0x01A0B3 06:A0A3: E3        .byte $E3   ; 
- D 1 - I - 0x01A0B4 06:A0A4: 00        .byte $00   ; 
- D 1 - I - 0x01A0B5 06:A0A5: 20        .byte $20   ; 
- D 1 - I - 0x01A0B6 06:A0A6: 33        .byte $33   ; 
- D 1 - I - 0x01A0B7 06:A0A7: 53        .byte $53   ; 
- D 1 - I - 0x01A0B8 06:A0A8: E9        .byte $E9   ; 
- D 1 - I - 0x01A0B9 06:A0A9: 71        .byte $71   ; 
- D 1 - I - 0x01A0BA 06:A0AA: E9        .byte $E9   ; 
- D 1 - I - 0x01A0BB 06:A0AB: 30        .byte $30   ; 
- D 1 - I - 0x01A0BC 06:A0AC: EB        .byte $EB   ; 
- D 1 - I - 0x01A0BD 06:A0AD: 51        .byte $51   ; 
- D 1 - I - 0x01A0BE 06:A0AE: 23        .byte $23   ; 
- D 1 - I - 0x01A0BF 06:A0AF: E3        .byte $E3   ; 
- D 1 - I - 0x01A0C0 06:A0B0: 65        .byte $65   ; 
- D 1 - I - 0x01A0C1 06:A0B1: 20        .byte $20   ; 
- D 1 - I - 0x01A0C2 06:A0B2: 60        .byte $60   ; 
- D 1 - I - 0x01A0C3 06:A0B3: 73        .byte $73   ; 
- D 1 - I - 0x01A0C4 06:A0B4: 53        .byte $53   ; 
- D 1 - I - 0x01A0C5 06:A0B5: 65        .byte $65   ; 
- D 1 - I - 0x01A0C6 06:A0B6: 20        .byte $20   ; 
- D 1 - I - 0x01A0C7 06:A0B7: 60        .byte $60   ; 
- D 1 - I - 0x01A0C8 06:A0B8: 73        .byte $73   ; 
- D 1 - I - 0x01A0C9 06:A0B9: 90        .byte $90   ; 
- D 1 - I - 0x01A0CA 06:A0BA: 90        .byte $90   ; 
- D 1 - I - 0x01A0CB 06:A0BB: 90        .byte $90   ; 
- D 1 - I - 0x01A0CC 06:A0BC: 90        .byte $90   ; 
- D 1 - I - 0x01A0CD 06:A0BD: FE        .byte $FE   ; 
- D 1 - I - 0x01A0CE 06:A0BE: FF        .byte $FF   ; 
- D 1 - I - 0x01A0CF 06:A0BF: DF 9F     .word loc_FF_9FDF



sub_FD_A0C1:
- D 1 - I - 0x01A0D1 06:A0C1: E5        .byte $E5   ; 
- D 1 - I - 0x01A0D2 06:A0C2: 40        .byte $40   ; 
- D 1 - I - 0x01A0D3 06:A0C3: 40        .byte $40   ; 
- D 1 - I - 0x01A0D4 06:A0C4: 40        .byte $40   ; 
- D 1 - I - 0x01A0D5 06:A0C5: 40        .byte $40   ; 
- D 1 - I - 0x01A0D6 06:A0C6: E4        .byte $E4   ; 
- D 1 - I - 0x01A0D7 06:A0C7: 40        .byte $40   ; 
- D 1 - I - 0x01A0D8 06:A0C8: F5        .byte $F5   ; 
- D 1 - I - 0x01A0D9 06:A0C9: 40        .byte $40   ; 
- D 1 - I - 0x01A0DA 06:A0CA: F0        .byte $F0   ; 
- D 1 - I - 0x01A0DB 06:A0CB: E5        .byte $E5   ; 
- D 1 - I - 0x01A0DC 06:A0CC: 40        .byte $40   ; 
- D 1 - I - 0x01A0DD 06:A0CD: B0        .byte $B0   ; 
- D 1 - I - 0x01A0DE 06:A0CE: F5        .byte $F5   ; 
- D 1 - I - 0x01A0DF 06:A0CF: B0        .byte $B0   ; 
- D 1 - I - 0x01A0E0 06:A0D0: F0        .byte $F0   ; 
- D 1 - I - 0x01A0E1 06:A0D1: E4        .byte $E4   ; 
- D 1 - I - 0x01A0E2 06:A0D2: 40        .byte $40   ; 
- D 1 - I - 0x01A0E3 06:A0D3: F5        .byte $F5   ; 
- D 1 - I - 0x01A0E4 06:A0D4: 40        .byte $40   ; 
- D 1 - I - 0x01A0E5 06:A0D5: F0        .byte $F0   ; 
- D 1 - I - 0x01A0E6 06:A0D6: 20        .byte $20   ; 
- D 1 - I - 0x01A0E7 06:A0D7: FD        .byte $FD   ; 



_off014_29_A0D8_02:
_off014_2E_A0D8_02:
loc_FF_A0D8:
- D 1 - I - 0x01A0E8 06:A0D8: D7        .byte $D7   ; 
- D 1 - I - 0x01A0E9 06:A0D9: 0C        .byte $0C   ; 
- D 1 - I - 0x01A0EA 06:A0DA: E4        .byte $E4   ; 
- D 1 - I - 0x01A0EB 06:A0DB: B0        .byte $B0   ; 
- D 1 - I - 0x01A0EC 06:A0DC: B0        .byte $B0   ; 
- D 1 - I - 0x01A0ED 06:A0DD: B0        .byte $B0   ; 
- D 1 - I - 0x01A0EE 06:A0DE: B0        .byte $B0   ; 
- D 1 - I - 0x01A0EF 06:A0DF: D7        .byte $D7   ; 
- D 1 - I - 0x01A0F0 06:A0E0: 10        .byte $10   ; 
- D 1 - I - 0x01A0F1 06:A0E1: E3        .byte $E3   ; 
- D 1 - I - 0x01A0F2 06:A0E2: 90        .byte $90   ; 
- D 1 - I - 0x01A0F3 06:A0E3: B1        .byte $B1   ; 
- D 1 - I - 0x01A0F4 06:A0E4: C0        .byte $C0   ; 
- D 1 - I - 0x01A0F5 06:A0E5: FD        .byte $FD   ; 
- D 1 - I - 0x01A0F6 06:A0E6: 96 A1     .word sub_FD_A196
- D 1 - I - 0x01A0F8 06:A0E8: FD        .byte $FD   ; 
- D 1 - I - 0x01A0F9 06:A0E9: 96 A1     .word sub_FD_A196
- D 1 - I - 0x01A0FB 06:A0EB: D1        .byte $D1   ; 
- D 1 - I - 0x01A0FC 06:A0EC: 12        .byte $12   ; 
- D 1 - I - 0x01A0FD 06:A0ED: E4        .byte $E4   ; 
- D 1 - I - 0x01A0FE 06:A0EE: 80        .byte $80   ; 
- D 1 - I - 0x01A0FF 06:A0EF: 90        .byte $90   ; 
- D 1 - I - 0x01A100 06:A0F0: A0        .byte $A0   ; 
- D 1 - I - 0x01A101 06:A0F1: D5        .byte $D5   ; 
- D 1 - I - 0x01A102 06:A0F2: 12        .byte $12   ; 
- D 1 - I - 0x01A103 06:A0F3: B4        .byte $B4   ; 
- D 1 - I - 0x01A104 06:A0F4: D1        .byte $D1   ; 
- D 1 - I - 0x01A105 06:A0F5: 20        .byte $20   ; 
- D 1 - I - 0x01A106 06:A0F6: E4        .byte $E4   ; 
- D 1 - I - 0x01A107 06:A0F7: 00        .byte $00   ; 
- D 1 - I - 0x01A108 06:A0F8: 10        .byte $10   ; 
- D 1 - I - 0x01A109 06:A0F9: 20        .byte $20   ; 
- D 1 - I - 0x01A10A 06:A0FA: 30        .byte $30   ; 
- D 1 - I - 0x01A10B 06:A0FB: 40        .byte $40   ; 
- D 1 - I - 0x01A10C 06:A0FC: 50        .byte $50   ; 
- D 1 - I - 0x01A10D 06:A0FD: 50        .byte $50   ; 
- D 1 - I - 0x01A10E 06:A0FE: D7        .byte $D7   ; 
- D 1 - I - 0x01A10F 06:A0FF: 20        .byte $20   ; 
- D 1 - I - 0x01A110 06:A100: E4        .byte $E4   ; 
- D 1 - I - 0x01A111 06:A101: 50        .byte $50   ; 
- D 1 - I - 0x01A112 06:A102: E4        .byte $E4   ; 
- D 1 - I - 0x01A113 06:A103: 40        .byte $40   ; 
- D 1 - I - 0x01A114 06:A104: 40        .byte $40   ; 
- D 1 - I - 0x01A115 06:A105: 40        .byte $40   ; 
- D 1 - I - 0x01A116 06:A106: 40        .byte $40   ; 
- D 1 - I - 0x01A117 06:A107: E4        .byte $E4   ; 
- D 1 - I - 0x01A118 06:A108: A0        .byte $A0   ; 
- D 1 - I - 0x01A119 06:A109: A0        .byte $A0   ; 
- D 1 - I - 0x01A11A 06:A10A: E4        .byte $E4   ; 
- D 1 - I - 0x01A11B 06:A10B: B0        .byte $B0   ; 
- D 1 - I - 0x01A11C 06:A10C: B0        .byte $B0   ; 
- D 1 - I - 0x01A11D 06:A10D: B0        .byte $B0   ; 
- D 1 - I - 0x01A11E 06:A10E: B0        .byte $B0   ; 
- D 1 - I - 0x01A11F 06:A10F: E3        .byte $E3   ; 
- D 1 - I - 0x01A120 06:A110: 50        .byte $50   ; 
- D 1 - I - 0x01A121 06:A111: 50        .byte $50   ; 
- D 1 - I - 0x01A122 06:A112: 60        .byte $60   ; 
- D 1 - I - 0x01A123 06:A113: 60        .byte $60   ; 
- D 1 - I - 0x01A124 06:A114: 60        .byte $60   ; 
- D 1 - I - 0x01A125 06:A115: 60        .byte $60   ; 
- D 1 - I - 0x01A126 06:A116: E6        .byte $E6   ; 
- D 1 - I - 0x01A127 06:A117: 01        .byte $01   ; 
- D 1 - I - 0x01A128 06:A118: E3        .byte $E3   ; 
- D 1 - I - 0x01A129 06:A119: 14        .byte $14   ; 
- D 1 - I - 0x01A12A 06:A11A: 20        .byte $20   ; 
- D 1 - I - 0x01A12B 06:A11B: 30        .byte $30   ; 
- D 1 - I - 0x01A12C 06:A11C: 40        .byte $40   ; 
- D 1 - I - 0x01A12D 06:A11D: 50        .byte $50   ; 
- D 1 - I - 0x01A12E 06:A11E: 60        .byte $60   ; 
- D 1 - I - 0x01A12F 06:A11F: 70        .byte $70   ; 
- D 1 - I - 0x01A130 06:A120: 80        .byte $80   ; 
- D 1 - I - 0x01A131 06:A121: 90        .byte $90   ; 
- D 1 - I - 0x01A132 06:A122: A0        .byte $A0   ; 
- D 1 - I - 0x01A133 06:A123: D7        .byte $D7   ; 
- D 1 - I - 0x01A134 06:A124: 00        .byte $00   ; 
- D 1 - I - 0x01A135 06:A125: E4        .byte $E4   ; 
- D 1 - I - 0x01A136 06:A126: B0        .byte $B0   ; 
- D 1 - I - 0x01A137 06:A127: E3        .byte $E3   ; 
- D 1 - I - 0x01A138 06:A128: B0        .byte $B0   ; 
- D 1 - I - 0x01A139 06:A129: E4        .byte $E4   ; 
- D 1 - I - 0x01A13A 06:A12A: B0        .byte $B0   ; 
- D 1 - I - 0x01A13B 06:A12B: E3        .byte $E3   ; 
- D 1 - I - 0x01A13C 06:A12C: B0        .byte $B0   ; 
- D 1 - I - 0x01A13D 06:A12D: E3        .byte $E3   ; 
- D 1 - I - 0x01A13E 06:A12E: 50        .byte $50   ; 
- D 1 - I - 0x01A13F 06:A12F: E2        .byte $E2   ; 
- D 1 - I - 0x01A140 06:A130: 50        .byte $50   ; 
- D 1 - I - 0x01A141 06:A131: E3        .byte $E3   ; 
- D 1 - I - 0x01A142 06:A132: 40        .byte $40   ; 
- D 1 - I - 0x01A143 06:A133: E2        .byte $E2   ; 
- D 1 - I - 0x01A144 06:A134: 40        .byte $40   ; 
- D 1 - I - 0x01A145 06:A135: E3        .byte $E3   ; 
- D 1 - I - 0x01A146 06:A136: 40        .byte $40   ; 
- D 1 - I - 0x01A147 06:A137: E2        .byte $E2   ; 
- D 1 - I - 0x01A148 06:A138: 40        .byte $40   ; 
- D 1 - I - 0x01A149 06:A139: E4        .byte $E4   ; 
- D 1 - I - 0x01A14A 06:A13A: A0        .byte $A0   ; 
- D 1 - I - 0x01A14B 06:A13B: E3        .byte $E3   ; 
- D 1 - I - 0x01A14C 06:A13C: A0        .byte $A0   ; 
- D 1 - I - 0x01A14D 06:A13D: E4        .byte $E4   ; 
- D 1 - I - 0x01A14E 06:A13E: B0        .byte $B0   ; 
- D 1 - I - 0x01A14F 06:A13F: E3        .byte $E3   ; 
- D 1 - I - 0x01A150 06:A140: B0        .byte $B0   ; 
- D 1 - I - 0x01A151 06:A141: E4        .byte $E4   ; 
- D 1 - I - 0x01A152 06:A142: B0        .byte $B0   ; 
- D 1 - I - 0x01A153 06:A143: E3        .byte $E3   ; 
- D 1 - I - 0x01A154 06:A144: B0        .byte $B0   ; 
- D 1 - I - 0x01A155 06:A145: E3        .byte $E3   ; 
- D 1 - I - 0x01A156 06:A146: 50        .byte $50   ; 
- D 1 - I - 0x01A157 06:A147: E2        .byte $E2   ; 
- D 1 - I - 0x01A158 06:A148: 50        .byte $50   ; 
- D 1 - I - 0x01A159 06:A149: E3        .byte $E3   ; 
- D 1 - I - 0x01A15A 06:A14A: 60        .byte $60   ; 
- D 1 - I - 0x01A15B 06:A14B: E2        .byte $E2   ; 
- D 1 - I - 0x01A15C 06:A14C: 60        .byte $60   ; 
- D 1 - I - 0x01A15D 06:A14D: E3        .byte $E3   ; 
- D 1 - I - 0x01A15E 06:A14E: 60        .byte $60   ; 
- D 1 - I - 0x01A15F 06:A14F: E2        .byte $E2   ; 
- D 1 - I - 0x01A160 06:A150: 60        .byte $60   ; 
- D 1 - I - 0x01A161 06:A151: E3        .byte $E3   ; 
- D 1 - I - 0x01A162 06:A152: 10        .byte $10   ; 
- D 1 - I - 0x01A163 06:A153: E2        .byte $E2   ; 
- D 1 - I - 0x01A164 06:A154: 10        .byte $10   ; 
- D 1 - I - 0x01A165 06:A155: D7        .byte $D7   ; 
- D 1 - I - 0x01A166 06:A156: 10        .byte $10   ; 
- D 1 - I - 0x01A167 06:A157: FD        .byte $FD   ; 
- D 1 - I - 0x01A168 06:A158: FA A1     .word sub_FD_A1FA
- D 1 - I - 0x01A16A 06:A15A: 10        .byte $10   ; 
- D 1 - I - 0x01A16B 06:A15B: E3        .byte $E3   ; 
- D 1 - I - 0x01A16C 06:A15C: 80        .byte $80   ; 
- D 1 - I - 0x01A16D 06:A15D: E2        .byte $E2   ; 
- D 1 - I - 0x01A16E 06:A15E: 10        .byte $10   ; 
- D 1 - I - 0x01A16F 06:A15F: E4        .byte $E4   ; 
- D 1 - I - 0x01A170 06:A160: 10        .byte $10   ; 
- D 1 - I - 0x01A171 06:A161: FD        .byte $FD   ; 
- D 1 - I - 0x01A172 06:A162: FA A1     .word sub_FD_A1FA
- D 1 - I - 0x01A174 06:A164: 50        .byte $50   ; 
- D 1 - I - 0x01A175 06:A165: E3        .byte $E3   ; 
- D 1 - I - 0x01A176 06:A166: 50        .byte $50   ; 
- D 1 - I - 0x01A177 06:A167: E2        .byte $E2   ; 
- D 1 - I - 0x01A178 06:A168: 00        .byte $00   ; 
- D 1 - I - 0x01A179 06:A169: 50        .byte $50   ; 
- D 1 - I - 0x01A17A 06:A16A: FD        .byte $FD   ; 
- D 1 - I - 0x01A17B 06:A16B: FA A1     .word sub_FD_A1FA
- D 1 - I - 0x01A17D 06:A16D: 10        .byte $10   ; 
- D 1 - I - 0x01A17E 06:A16E: E3        .byte $E3   ; 
- D 1 - I - 0x01A17F 06:A16F: 80        .byte $80   ; 
- D 1 - I - 0x01A180 06:A170: E2        .byte $E2   ; 
- D 1 - I - 0x01A181 06:A171: 10        .byte $10   ; 
- D 1 - I - 0x01A182 06:A172: E3        .byte $E3   ; 
- D 1 - I - 0x01A183 06:A173: 10        .byte $10   ; 
- D 1 - I - 0x01A184 06:A174: 20        .byte $20   ; 
- D 1 - I - 0x01A185 06:A175: E4        .byte $E4   ; 
- D 1 - I - 0x01A186 06:A176: 20        .byte $20   ; 
- D 1 - I - 0x01A187 06:A177: E3        .byte $E3   ; 
- D 1 - I - 0x01A188 06:A178: 90        .byte $90   ; 
- D 1 - I - 0x01A189 06:A179: E2        .byte $E2   ; 
- D 1 - I - 0x01A18A 06:A17A: 20        .byte $20   ; 
- D 1 - I - 0x01A18B 06:A17B: E3        .byte $E3   ; 
- D 1 - I - 0x01A18C 06:A17C: 20        .byte $20   ; 
- D 1 - I - 0x01A18D 06:A17D: 90        .byte $90   ; 
- D 1 - I - 0x01A18E 06:A17E: E2        .byte $E2   ; 
- D 1 - I - 0x01A18F 06:A17F: 20        .byte $20   ; 
- D 1 - I - 0x01A190 06:A180: E3        .byte $E3   ; 
- D 1 - I - 0x01A191 06:A181: 20        .byte $20   ; 
- D 1 - I - 0x01A192 06:A182: E4        .byte $E4   ; 
- D 1 - I - 0x01A193 06:A183: 30        .byte $30   ; 
- D 1 - I - 0x01A194 06:A184: E3        .byte $E3   ; 
- D 1 - I - 0x01A195 06:A185: 30        .byte $30   ; 
- D 1 - I - 0x01A196 06:A186: A0        .byte $A0   ; 
- D 1 - I - 0x01A197 06:A187: E2        .byte $E2   ; 
- D 1 - I - 0x01A198 06:A188: 30        .byte $30   ; 
- D 1 - I - 0x01A199 06:A189: D7        .byte $D7   ; 
- D 1 - I - 0x01A19A 06:A18A: 10        .byte $10   ; 
- D 1 - I - 0x01A19B 06:A18B: E4        .byte $E4   ; 
- D 1 - I - 0x01A19C 06:A18C: 50        .byte $50   ; 
- D 1 - I - 0x01A19D 06:A18D: E3        .byte $E3   ; 
- D 1 - I - 0x01A19E 06:A18E: 50        .byte $50   ; 
- D 1 - I - 0x01A19F 06:A18F: E2        .byte $E2   ; 
- D 1 - I - 0x01A1A0 06:A190: 00        .byte $00   ; 
- D 1 - I - 0x01A1A1 06:A191: 50        .byte $50   ; 
- D 1 - I - 0x01A1A2 06:A192: FE        .byte $FE   ; 
- D 1 - I - 0x01A1A3 06:A193: FF        .byte $FF   ; 
- D 1 - I - 0x01A1A4 06:A194: D8 A0     .word loc_FF_A0D8



sub_FD_A196:
- D 1 - I - 0x01A1A6 06:A196: D7        .byte $D7   ; 
- D 1 - I - 0x01A1A7 06:A197: 0C        .byte $0C   ; 
- D 1 - I - 0x01A1A8 06:A198: FB        .byte $FB   ; 
- D 1 - I - 0x01A1A9 06:A199: E4        .byte $E4   ; 
- D 1 - I - 0x01A1AA 06:A19A: E6        .byte $E6   ; 
- D 1 - I - 0x01A1AB 06:A19B: 01        .byte $01   ; 
- D 1 - I - 0x01A1AC 06:A19C: 32        .byte $32   ; 
- D 1 - I - 0x01A1AD 06:A19D: E6        .byte $E6   ; 
- D 1 - I - 0x01A1AE 06:A19E: 0B        .byte $0B   ; 
- D 1 - I - 0x01A1AF 06:A19F: 40        .byte $40   ; 
- D 1 - I - 0x01A1B0 06:A1A0: E6        .byte $E6   ; 
- D 1 - I - 0x01A1B1 06:A1A1: 07        .byte $07   ; 
- D 1 - I - 0x01A1B2 06:A1A2: B1        .byte $B1   ; 
- D 1 - I - 0x01A1B3 06:A1A3: E3        .byte $E3   ; 
- D 1 - I - 0x01A1B4 06:A1A4: 41        .byte $41   ; 
- D 1 - I - 0x01A1B5 06:A1A5: E4        .byte $E4   ; 
- D 1 - I - 0x01A1B6 06:A1A6: 40        .byte $40   ; 
- D 1 - I - 0x01A1B7 06:A1A7: B1        .byte $B1   ; 
- D 1 - I - 0x01A1B8 06:A1A8: E3        .byte $E3   ; 
- D 1 - I - 0x01A1B9 06:A1A9: 41        .byte $41   ; 
- D 1 - I - 0x01A1BA 06:A1AA: 20        .byte $20   ; 
- D 1 - I - 0x01A1BB 06:A1AB: 41        .byte $41   ; 
- D 1 - I - 0x01A1BC 06:A1AC: E4        .byte $E4   ; 
- D 1 - I - 0x01A1BD 06:A1AD: 41        .byte $41   ; 
- D 1 - I - 0x01A1BE 06:A1AE: B1        .byte $B1   ; 
- D 1 - I - 0x01A1BF 06:A1AF: E3        .byte $E3   ; 
- D 1 - I - 0x01A1C0 06:A1B0: 41        .byte $41   ; 
- D 1 - I - 0x01A1C1 06:A1B1: E4        .byte $E4   ; 
- D 1 - I - 0x01A1C2 06:A1B2: 40        .byte $40   ; 
- D 1 - I - 0x01A1C3 06:A1B3: B1        .byte $B1   ; 
- D 1 - I - 0x01A1C4 06:A1B4: E3        .byte $E3   ; 
- D 1 - I - 0x01A1C5 06:A1B5: 41        .byte $41   ; 
- D 1 - I - 0x01A1C6 06:A1B6: 20        .byte $20   ; 
- D 1 - I - 0x01A1C7 06:A1B7: 41        .byte $41   ; 
- D 1 - I - 0x01A1C8 06:A1B8: FE        .byte $FE   ; 
- D 1 - I - 0x01A1C9 06:A1B9: 03        .byte $03   ; 
- D 1 - I - 0x01A1CA 06:A1BA: E4        .byte $E4   ; 
- D 1 - I - 0x01A1CB 06:A1BB: E6        .byte $E6   ; 
- D 1 - I - 0x01A1CC 06:A1BC: 01        .byte $01   ; 
- D 1 - I - 0x01A1CD 06:A1BD: 42        .byte $42   ; 
- D 1 - I - 0x01A1CE 06:A1BE: E6        .byte $E6   ; 
- D 1 - I - 0x01A1CF 06:A1BF: 0B        .byte $0B   ; 
- D 1 - I - 0x01A1D0 06:A1C0: 50        .byte $50   ; 
- D 1 - I - 0x01A1D1 06:A1C1: E6        .byte $E6   ; 
- D 1 - I - 0x01A1D2 06:A1C2: 07        .byte $07   ; 
- D 1 - I - 0x01A1D3 06:A1C3: E3        .byte $E3   ; 
- D 1 - I - 0x01A1D4 06:A1C4: 01        .byte $01   ; 
- D 1 - I - 0x01A1D5 06:A1C5: 51        .byte $51   ; 
- D 1 - I - 0x01A1D6 06:A1C6: E4        .byte $E4   ; 
- D 1 - I - 0x01A1D7 06:A1C7: 50        .byte $50   ; 
- D 1 - I - 0x01A1D8 06:A1C8: E3        .byte $E3   ; 
- D 1 - I - 0x01A1D9 06:A1C9: 01        .byte $01   ; 
- D 1 - I - 0x01A1DA 06:A1CA: 51        .byte $51   ; 
- D 1 - I - 0x01A1DB 06:A1CB: 30        .byte $30   ; 
- D 1 - I - 0x01A1DC 06:A1CC: 51        .byte $51   ; 
- D 1 - I - 0x01A1DD 06:A1CD: E4        .byte $E4   ; 
- D 1 - I - 0x01A1DE 06:A1CE: 51        .byte $51   ; 
- D 1 - I - 0x01A1DF 06:A1CF: E3        .byte $E3   ; 
- D 1 - I - 0x01A1E0 06:A1D0: 01        .byte $01   ; 
- D 1 - I - 0x01A1E1 06:A1D1: 51        .byte $51   ; 
- D 1 - I - 0x01A1E2 06:A1D2: E4        .byte $E4   ; 
- D 1 - I - 0x01A1E3 06:A1D3: 50        .byte $50   ; 
- D 1 - I - 0x01A1E4 06:A1D4: E3        .byte $E3   ; 
- D 1 - I - 0x01A1E5 06:A1D5: 01        .byte $01   ; 
- D 1 - I - 0x01A1E6 06:A1D6: 51        .byte $51   ; 
- D 1 - I - 0x01A1E7 06:A1D7: 30        .byte $30   ; 
- D 1 - I - 0x01A1E8 06:A1D8: 51        .byte $51   ; 
- D 1 - I - 0x01A1E9 06:A1D9: E4        .byte $E4   ; 
- D 1 - I - 0x01A1EA 06:A1DA: E6        .byte $E6   ; 
- D 1 - I - 0x01A1EB 06:A1DB: 01        .byte $01   ; 
- D 1 - I - 0x01A1EC 06:A1DC: 42        .byte $42   ; 
- D 1 - I - 0x01A1ED 06:A1DD: E6        .byte $E6   ; 
- D 1 - I - 0x01A1EE 06:A1DE: 0B        .byte $0B   ; 
- D 1 - I - 0x01A1EF 06:A1DF: 50        .byte $50   ; 
- D 1 - I - 0x01A1F0 06:A1E0: E6        .byte $E6   ; 
- D 1 - I - 0x01A1F1 06:A1E1: 07        .byte $07   ; 
- D 1 - I - 0x01A1F2 06:A1E2: E3        .byte $E3   ; 
- D 1 - I - 0x01A1F3 06:A1E3: 01        .byte $01   ; 
- D 1 - I - 0x01A1F4 06:A1E4: 51        .byte $51   ; 
- D 1 - I - 0x01A1F5 06:A1E5: E4        .byte $E4   ; 
- D 1 - I - 0x01A1F6 06:A1E6: 50        .byte $50   ; 
- D 1 - I - 0x01A1F7 06:A1E7: E3        .byte $E3   ; 
- D 1 - I - 0x01A1F8 06:A1E8: 01        .byte $01   ; 
- D 1 - I - 0x01A1F9 06:A1E9: 51        .byte $51   ; 
- D 1 - I - 0x01A1FA 06:A1EA: 30        .byte $30   ; 
- D 1 - I - 0x01A1FB 06:A1EB: 51        .byte $51   ; 
- D 1 - I - 0x01A1FC 06:A1EC: E4        .byte $E4   ; 
- D 1 - I - 0x01A1FD 06:A1ED: 51        .byte $51   ; 
- D 1 - I - 0x01A1FE 06:A1EE: E3        .byte $E3   ; 
- D 1 - I - 0x01A1FF 06:A1EF: 01        .byte $01   ; 
- D 1 - I - 0x01A200 06:A1F0: 51        .byte $51   ; 
- D 1 - I - 0x01A201 06:A1F1: E4        .byte $E4   ; 
- D 1 - I - 0x01A202 06:A1F2: 50        .byte $50   ; 
- D 1 - I - 0x01A203 06:A1F3: E3        .byte $E3   ; 
- D 1 - I - 0x01A204 06:A1F4: 01        .byte $01   ; 
- D 1 - I - 0x01A205 06:A1F5: 50        .byte $50   ; 
- D 1 - I - 0x01A206 06:A1F6: 30        .byte $30   ; 
- D 1 - I - 0x01A207 06:A1F7: 51        .byte $51   ; 
- D 1 - I - 0x01A208 06:A1F8: C0        .byte $C0   ; 
- D 1 - I - 0x01A209 06:A1F9: FD        .byte $FD   ; 
sub_FD_A1FA:
- D 1 - I - 0x01A20A 06:A1FA: E4        .byte $E4   ; 
- D 1 - I - 0x01A20B 06:A1FB: 20        .byte $20   ; 
- D 1 - I - 0x01A20C 06:A1FC: E3        .byte $E3   ; 
- D 1 - I - 0x01A20D 06:A1FD: 20        .byte $20   ; 
- D 1 - I - 0x01A20E 06:A1FE: 90        .byte $90   ; 
- D 1 - I - 0x01A20F 06:A1FF: E2        .byte $E2   ; 
- D 1 - I - 0x01A210 06:A200: 20        .byte $20   ; 
- D 1 - I - 0x01A211 06:A201: E4        .byte $E4   ; 
- D 1 - I - 0x01A212 06:A202: 20        .byte $20   ; 
- D 1 - I - 0x01A213 06:A203: E3        .byte $E3   ; 
- D 1 - I - 0x01A214 06:A204: 90        .byte $90   ; 
- D 1 - I - 0x01A215 06:A205: E2        .byte $E2   ; 
- D 1 - I - 0x01A216 06:A206: 20        .byte $20   ; 
- D 1 - I - 0x01A217 06:A207: E3        .byte $E3   ; 
- D 1 - I - 0x01A218 06:A208: 20        .byte $20   ; 
- D 1 - I - 0x01A219 06:A209: E4        .byte $E4   ; 
- D 1 - I - 0x01A21A 06:A20A: 30        .byte $30   ; 
- D 1 - I - 0x01A21B 06:A20B: E3        .byte $E3   ; 
- D 1 - I - 0x01A21C 06:A20C: 30        .byte $30   ; 
- D 1 - I - 0x01A21D 06:A20D: A0        .byte $A0   ; 
- D 1 - I - 0x01A21E 06:A20E: E2        .byte $E2   ; 
- D 1 - I - 0x01A21F 06:A20F: 30        .byte $30   ; 
- D 1 - I - 0x01A220 06:A210: E4        .byte $E4   ; 
- D 1 - I - 0x01A221 06:A211: FD        .byte $FD   ; 



_off014_29_A212_03:
_off014_2E_A212_03:
loc_FF_A212:
- D 1 - I - 0x01A222 06:A212: D3        .byte $D3   ; 
- D 1 - I - 0x01A223 06:A213: A0        .byte $A0   ; 
- D 1 - I - 0x01A224 06:A214: D4        .byte $D4   ; 
- D 1 - I - 0x01A225 06:A215: A0        .byte $A0   ; 
- D 1 - I - 0x01A226 06:A216: D7        .byte $D7   ; 
- D 1 - I - 0x01A227 06:A217: A0        .byte $A0   ; 
- D 1 - I - 0x01A228 06:A218: A0        .byte $A0   ; 
- D 1 - I - 0x01A229 06:A219: A0        .byte $A0   ; 
- D 1 - I - 0x01A22A 06:A21A: E3        .byte $E3   ; 
- D 1 - I - 0x01A22B 06:A21B: 90        .byte $90   ; 
- D 1 - I - 0x01A22C 06:A21C: B0        .byte $B0   ; 
- D 1 - I - 0x01A22D 06:A21D: D7        .byte $D7   ; 
- D 1 - I - 0x01A22E 06:A21E: C0        .byte $C0   ; 
- D 1 - I - 0x01A22F 06:A21F: 10        .byte $10   ; 
- D 1 - I - 0x01A230 06:A220: FD        .byte $FD   ; 
- D 1 - I - 0x01A231 06:A221: 71 A2     .word sub_FD_A271
- D 1 - I - 0x01A233 06:A223: FD        .byte $FD   ; 
- D 1 - I - 0x01A234 06:A224: 71 A2     .word sub_FD_A271
- D 1 - I - 0x01A236 06:A226: D7        .byte $D7   ; 
- D 1 - I - 0x01A237 06:A227: FB        .byte $FB   ; 
- D 1 - I - 0x01A238 06:A228: A0        .byte $A0   ; 
- D 1 - I - 0x01A239 06:A229: B0        .byte $B0   ; 
- D 1 - I - 0x01A23A 06:A22A: A0        .byte $A0   ; 
- D 1 - I - 0x01A23B 06:A22B: B0        .byte $B0   ; 
- D 1 - I - 0x01A23C 06:A22C: A0        .byte $A0   ; 
- D 1 - I - 0x01A23D 06:A22D: 20        .byte $20   ; 
- D 1 - I - 0x01A23E 06:A22E: B0        .byte $B0   ; 
- D 1 - I - 0x01A23F 06:A22F: 10        .byte $10   ; 
- D 1 - I - 0x01A240 06:A230: A0        .byte $A0   ; 
- D 1 - I - 0x01A241 06:A231: B0        .byte $B0   ; 
- D 1 - I - 0x01A242 06:A232: A0        .byte $A0   ; 
- D 1 - I - 0x01A243 06:A233: B0        .byte $B0   ; 
- D 1 - I - 0x01A244 06:A234: FE        .byte $FE   ; 
- D 1 - I - 0x01A245 06:A235: 03        .byte $03   ; 
- D 1 - I - 0x01A246 06:A236: B0        .byte $B0   ; 
- D 1 - I - 0x01A247 06:A237: B0        .byte $B0   ; 
- D 1 - I - 0x01A248 06:A238: A0        .byte $A0   ; 
- D 1 - I - 0x01A249 06:A239: B0        .byte $B0   ; 
- D 1 - I - 0x01A24A 06:A23A: A0        .byte $A0   ; 
- D 1 - I - 0x01A24B 06:A23B: 20        .byte $20   ; 
- D 1 - I - 0x01A24C 06:A23C: A0        .byte $A0   ; 
- D 1 - I - 0x01A24D 06:A23D: 10        .byte $10   ; 
- D 1 - I - 0x01A24E 06:A23E: A0        .byte $A0   ; 
- D 1 - I - 0x01A24F 06:A23F: 10        .byte $10   ; 
- D 1 - I - 0x01A250 06:A240: A0        .byte $A0   ; 
- D 1 - I - 0x01A251 06:A241: A0        .byte $A0   ; 
- D 1 - I - 0x01A252 06:A242: D7        .byte $D7   ; 
- D 1 - I - 0x01A253 06:A243: FB        .byte $FB   ; 
- D 1 - I - 0x01A254 06:A244: A0        .byte $A0   ; 
- D 1 - I - 0x01A255 06:A245: 20        .byte $20   ; 
- D 1 - I - 0x01A256 06:A246: B0        .byte $B0   ; 
- D 1 - I - 0x01A257 06:A247: 20        .byte $20   ; 
- D 1 - I - 0x01A258 06:A248: A0        .byte $A0   ; 
- D 1 - I - 0x01A259 06:A249: A0        .byte $A0   ; 
- D 1 - I - 0x01A25A 06:A24A: B0        .byte $B0   ; 
- D 1 - I - 0x01A25B 06:A24B: 20        .byte $20   ; 
- D 1 - I - 0x01A25C 06:A24C: FE        .byte $FE   ; 
- D 1 - I - 0x01A25D 06:A24D: 03        .byte $03   ; 
- D 1 - I - 0x01A25E 06:A24E: A0        .byte $A0   ; 
- D 1 - I - 0x01A25F 06:A24F: 20        .byte $20   ; 
- D 1 - I - 0x01A260 06:A250: B0        .byte $B0   ; 
- D 1 - I - 0x01A261 06:A251: 20        .byte $20   ; 
- D 1 - I - 0x01A262 06:A252: D3        .byte $D3   ; 
- D 1 - I - 0x01A263 06:A253: A0        .byte $A0   ; 
- D 1 - I - 0x01A264 06:A254: D4        .byte $D4   ; 
- D 1 - I - 0x01A265 06:A255: A0        .byte $A0   ; 
- D 1 - I - 0x01A266 06:A256: D7        .byte $D7   ; 
- D 1 - I - 0x01A267 06:A257: A0        .byte $A0   ; 
- D 1 - I - 0x01A268 06:A258: A0        .byte $A0   ; 
- D 1 - I - 0x01A269 06:A259: A0        .byte $A0   ; 
- D 1 - I - 0x01A26A 06:A25A: FB        .byte $FB   ; 
- D 1 - I - 0x01A26B 06:A25B: A0        .byte $A0   ; 
- D 1 - I - 0x01A26C 06:A25C: 20        .byte $20   ; 
- D 1 - I - 0x01A26D 06:A25D: B0        .byte $B0   ; 
- D 1 - I - 0x01A26E 06:A25E: 20        .byte $20   ; 
- D 1 - I - 0x01A26F 06:A25F: A0        .byte $A0   ; 
- D 1 - I - 0x01A270 06:A260: A0        .byte $A0   ; 
- D 1 - I - 0x01A271 06:A261: B0        .byte $B0   ; 
- D 1 - I - 0x01A272 06:A262: 20        .byte $20   ; 
- D 1 - I - 0x01A273 06:A263: FE        .byte $FE   ; 
- D 1 - I - 0x01A274 06:A264: 03        .byte $03   ; 
- D 1 - I - 0x01A275 06:A265: A0        .byte $A0   ; 
- D 1 - I - 0x01A276 06:A266: 20        .byte $20   ; 
- D 1 - I - 0x01A277 06:A267: B0        .byte $B0   ; 
- D 1 - I - 0x01A278 06:A268: 20        .byte $20   ; 
- D 1 - I - 0x01A279 06:A269: A0        .byte $A0   ; 
- D 1 - I - 0x01A27A 06:A26A: A0        .byte $A0   ; 
- D 1 - I - 0x01A27B 06:A26B: A0        .byte $A0   ; 
- D 1 - I - 0x01A27C 06:A26C: A0        .byte $A0   ; 
- D 1 - I - 0x01A27D 06:A26D: FE        .byte $FE   ; 
- D 1 - I - 0x01A27E 06:A26E: FF        .byte $FF   ; 
- D 1 - I - 0x01A27F 06:A26F: 12 A2     .word loc_FF_A212



sub_FD_A271:
- D 1 - I - 0x01A281 06:A271: D7        .byte $D7   ; 
- D 1 - I - 0x01A282 06:A272: FB        .byte $FB   ; 
- D 1 - I - 0x01A283 06:A273: B0        .byte $B0   ; 
- D 1 - I - 0x01A284 06:A274: B0        .byte $B0   ; 
- D 1 - I - 0x01A285 06:A275: B0        .byte $B0   ; 
- D 1 - I - 0x01A286 06:A276: B0        .byte $B0   ; 
- D 1 - I - 0x01A287 06:A277: A0        .byte $A0   ; 
- D 1 - I - 0x01A288 06:A278: 10        .byte $10   ; 
- D 1 - I - 0x01A289 06:A279: B0        .byte $B0   ; 
- D 1 - I - 0x01A28A 06:A27A: A0        .byte $A0   ; 
- D 1 - I - 0x01A28B 06:A27B: 10        .byte $10   ; 
- D 1 - I - 0x01A28C 06:A27C: A0        .byte $A0   ; 
- D 1 - I - 0x01A28D 06:A27D: B0        .byte $B0   ; 
- D 1 - I - 0x01A28E 06:A27E: A0        .byte $A0   ; 
- D 1 - I - 0x01A28F 06:A27F: A0        .byte $A0   ; 
- D 1 - I - 0x01A290 06:A280: 10        .byte $10   ; 
- D 1 - I - 0x01A291 06:A281: FE        .byte $FE   ; 
- D 1 - I - 0x01A292 06:A282: 09        .byte $09   ; 
- D 1 - I - 0x01A293 06:A283: B0        .byte $B0   ; 
- D 1 - I - 0x01A294 06:A284: B0        .byte $B0   ; 
- D 1 - I - 0x01A295 06:A285: B0        .byte $B0   ; 
- D 1 - I - 0x01A296 06:A286: B0        .byte $B0   ; 
- D 1 - I - 0x01A297 06:A287: A0        .byte $A0   ; 
- D 1 - I - 0x01A298 06:A288: 10        .byte $10   ; 
- D 1 - I - 0x01A299 06:A289: B0        .byte $B0   ; 
- D 1 - I - 0x01A29A 06:A28A: A0        .byte $A0   ; 
- D 1 - I - 0x01A29B 06:A28B: 10        .byte $10   ; 
- D 1 - I - 0x01A29C 06:A28C: B0        .byte $B0   ; 
- D 1 - I - 0x01A29D 06:A28D: E3        .byte $E3   ; 
- D 1 - I - 0x01A29E 06:A28E: 30        .byte $30   ; 
- D 1 - I - 0x01A29F 06:A28F: 50        .byte $50   ; 
- D 1 - I - 0x01A2A0 06:A290: D7        .byte $D7   ; 
- D 1 - I - 0x01A2A1 06:A291: C0        .byte $C0   ; 
- D 1 - I - 0x01A2A2 06:A292: 10        .byte $10   ; 
- D 1 - I - 0x01A2A3 06:A293: FD        .byte $FD   ; 



_off014_2A_A294_00:
loc_FF_A294:
- D 1 - I - 0x01A2A4 06:A294: EA        .byte $EA   ; 
- D 1 - I - 0x01A2A5 06:A295: 8C        .byte $8C   ; 
- D 1 - I - 0x01A2A6 06:A296: ED        .byte $ED   ; 
- D 1 - I - 0x01A2A7 06:A297: 84        .byte $84   ; 
- D 1 - I - 0x01A2A8 06:A298: E9        .byte $E9   ; 
- D 1 - I - 0x01A2A9 06:A299: 31        .byte $31   ; 
- D 1 - I - 0x01A2AA 06:A29A: D6        .byte $D6   ; 
- D 1 - I - 0x01A2AB 06:A29B: B0        .byte $B0   ; 
- D 1 - I - 0x01A2AC 06:A29C: 0E        .byte $0E   ; 
- D 1 - I - 0x01A2AD 06:A29D: 12        .byte $12   ; 
- D 1 - I - 0x01A2AE 06:A29E: F1        .byte $F1   ; 
- D 1 - I - 0x01A2AF 06:A29F: FB        .byte $FB   ; 
- D 1 - I - 0x01A2B0 06:A2A0: E5        .byte $E5   ; 
- D 1 - I - 0x01A2B1 06:A2A1: 90        .byte $90   ; 
- D 1 - I - 0x01A2B2 06:A2A2: 90        .byte $90   ; 
- D 1 - I - 0x01A2B3 06:A2A3: C0        .byte $C0   ; 
- D 1 - I - 0x01A2B4 06:A2A4: 90        .byte $90   ; 
- D 1 - I - 0x01A2B5 06:A2A5: C0        .byte $C0   ; 
- D 1 - I - 0x01A2B6 06:A2A6: E4        .byte $E4   ; 
- D 1 - I - 0x01A2B7 06:A2A7: 20        .byte $20   ; 
- D 1 - I - 0x01A2B8 06:A2A8: 40        .byte $40   ; 
- D 1 - I - 0x01A2B9 06:A2A9: 90        .byte $90   ; 
- D 1 - I - 0x01A2BA 06:A2AA: 71        .byte $71   ; 
- D 1 - I - 0x01A2BB 06:A2AB: 61        .byte $61   ; 
- D 1 - I - 0x01A2BC 06:A2AC: 21        .byte $21   ; 
- D 1 - I - 0x01A2BD 06:A2AD: 41        .byte $41   ; 
- D 1 - I - 0x01A2BE 06:A2AE: FE        .byte $FE   ; 
- D 1 - I - 0x01A2BF 06:A2AF: 03        .byte $03   ; 
- D 1 - I - 0x01A2C0 06:A2B0: F0        .byte $F0   ; 
- D 1 - I - 0x01A2C1 06:A2B1: E5        .byte $E5   ; 
- D 1 - I - 0x01A2C2 06:A2B2: 90        .byte $90   ; 
- D 1 - I - 0x01A2C3 06:A2B3: 90        .byte $90   ; 
- D 1 - I - 0x01A2C4 06:A2B4: C0        .byte $C0   ; 
- D 1 - I - 0x01A2C5 06:A2B5: C0        .byte $C0   ; 
- D 1 - I - 0x01A2C6 06:A2B6: F2        .byte $F2   ; 
- D 1 - I - 0x01A2C7 06:A2B7: 90        .byte $90   ; 
- D 1 - I - 0x01A2C8 06:A2B8: 90        .byte $90   ; 
- D 1 - I - 0x01A2C9 06:A2B9: C0        .byte $C0   ; 
- D 1 - I - 0x01A2CA 06:A2BA: C0        .byte $C0   ; 
- D 1 - I - 0x01A2CB 06:A2BB: F4        .byte $F4   ; 
- D 1 - I - 0x01A2CC 06:A2BC: 90        .byte $90   ; 
- D 1 - I - 0x01A2CD 06:A2BD: 90        .byte $90   ; 
- D 1 - I - 0x01A2CE 06:A2BE: C0        .byte $C0   ; 
- D 1 - I - 0x01A2CF 06:A2BF: C0        .byte $C0   ; 
- D 1 - I - 0x01A2D0 06:A2C0: EA        .byte $EA   ; 
- D 1 - I - 0x01A2D1 06:A2C1: 00        .byte $00   ; 
- D 1 - I - 0x01A2D2 06:A2C2: ED        .byte $ED   ; 
- D 1 - I - 0x01A2D3 06:A2C3: 00        .byte $00   ; 
- D 1 - I - 0x01A2D4 06:A2C4: E9        .byte $E9   ; 
- D 1 - I - 0x01A2D5 06:A2C5: B1        .byte $B1   ; 
- D 1 - I - 0x01A2D6 06:A2C6: D6        .byte $D6   ; 
- D 1 - I - 0x01A2D7 06:A2C7: 30        .byte $30   ; 
- D 1 - I - 0x01A2D8 06:A2C8: 0B        .byte $0B   ; 
- D 1 - I - 0x01A2D9 06:A2C9: 16        .byte $16   ; 
- D 1 - I - 0x01A2DA 06:A2CA: E3        .byte $E3   ; 
- D 1 - I - 0x01A2DB 06:A2CB: 20        .byte $20   ; 
- D 1 - I - 0x01A2DC 06:A2CC: 20        .byte $20   ; 
- D 1 - I - 0x01A2DD 06:A2CD: C0        .byte $C0   ; 
- D 1 - I - 0x01A2DE 06:A2CE: F4        .byte $F4   ; 
- D 1 - I - 0x01A2DF 06:A2CF: 20        .byte $20   ; 
- D 1 - I - 0x01A2E0 06:A2D0: F0        .byte $F0   ; 
- D 1 - I - 0x01A2E1 06:A2D1: E9        .byte $E9   ; 
- D 1 - I - 0x01A2E2 06:A2D2: B1        .byte $B1   ; 
- D 1 - I - 0x01A2E3 06:A2D3: D6        .byte $D6   ; 
- D 1 - I - 0x01A2E4 06:A2D4: 30        .byte $30   ; 
- D 1 - I - 0x01A2E5 06:A2D5: 0D        .byte $0D   ; 
- D 1 - I - 0x01A2E6 06:A2D6: 34        .byte $34   ; 
- D 1 - I - 0x01A2E7 06:A2D7: EB        .byte $EB   ; 
- D 1 - I - 0x01A2E8 06:A2D8: 50        .byte $50   ; 
- D 1 - I - 0x01A2E9 06:A2D9: B1        .byte $B1   ; 
- D 1 - I - 0x01A2EA 06:A2DA: E2        .byte $E2   ; 
- D 1 - I - 0x01A2EB 06:A2DB: 0F        .byte $0F   ; 
- D 1 - I - 0x01A2EC 06:A2DC: E3        .byte $E3   ; 
- D 1 - I - 0x01A2ED 06:A2DD: BF        .byte $BF   ; 
- D 1 - I - 0x01A2EE 06:A2DE: AF        .byte $AF   ; 
- D 1 - I - 0x01A2EF 06:A2DF: 9B        .byte $9B   ; 
- D 1 - I - 0x01A2F0 06:A2E0: E3        .byte $E3   ; 
- D 1 - I - 0x01A2F1 06:A2E1: 90        .byte $90   ; 
- D 1 - I - 0x01A2F2 06:A2E2: E2        .byte $E2   ; 
- D 1 - I - 0x01A2F3 06:A2E3: 00        .byte $00   ; 
- D 1 - I - 0x01A2F4 06:A2E4: C0        .byte $C0   ; 
- D 1 - I - 0x01A2F5 06:A2E5: F3        .byte $F3   ; 
- D 1 - I - 0x01A2F6 06:A2E6: 00        .byte $00   ; 
- D 1 - I - 0x01A2F7 06:A2E7: F0        .byte $F0   ; 
- D 1 - I - 0x01A2F8 06:A2E8: E2        .byte $E2   ; 
- D 1 - I - 0x01A2F9 06:A2E9: 0F        .byte $0F   ; 
- D 1 - I - 0x01A2FA 06:A2EA: E3        .byte $E3   ; 
- D 1 - I - 0x01A2FB 06:A2EB: BF        .byte $BF   ; 
- D 1 - I - 0x01A2FC 06:A2EC: AF        .byte $AF   ; 
- D 1 - I - 0x01A2FD 06:A2ED: 9B        .byte $9B   ; 
- D 1 - I - 0x01A2FE 06:A2EE: E3        .byte $E3   ; 
- D 1 - I - 0x01A2FF 06:A2EF: 80        .byte $80   ; 
- D 1 - I - 0x01A300 06:A2F0: 90        .byte $90   ; 
- D 1 - I - 0x01A301 06:A2F1: E2        .byte $E2   ; 
- D 1 - I - 0x01A302 06:A2F2: 00        .byte $00   ; 
- D 1 - I - 0x01A303 06:A2F3: C0        .byte $C0   ; 
- D 1 - I - 0x01A304 06:A2F4: FB        .byte $FB   ; 
- D 1 - I - 0x01A305 06:A2F5: E9        .byte $E9   ; 
- D 1 - I - 0x01A306 06:A2F6: B1        .byte $B1   ; 
- D 1 - I - 0x01A307 06:A2F7: D6        .byte $D6   ; 
- D 1 - I - 0x01A308 06:A2F8: 37        .byte $37   ; 
- D 1 - I - 0x01A309 06:A2F9: 84        .byte $84   ; 
- D 1 - I - 0x01A30A 06:A2FA: 24        .byte $24   ; 
- D 1 - I - 0x01A30B 06:A2FB: E4        .byte $E4   ; 
- D 1 - I - 0x01A30C 06:A2FC: 42        .byte $42   ; 
- D 1 - I - 0x01A30D 06:A2FD: 42        .byte $42   ; 
- D 1 - I - 0x01A30E 06:A2FE: 79        .byte $79   ; 
- D 1 - I - 0x01A30F 06:A2FF: 42        .byte $42   ; 
- D 1 - I - 0x01A310 06:A300: 71        .byte $71   ; 
- D 1 - I - 0x01A311 06:A301: B0        .byte $B0   ; 
- D 1 - I - 0x01A312 06:A302: E3        .byte $E3   ; 
- D 1 - I - 0x01A313 06:A303: 20        .byte $20   ; 
- D 1 - I - 0x01A314 06:A304: 12        .byte $12   ; 
- D 1 - I - 0x01A315 06:A305: E3        .byte $E3   ; 
- D 1 - I - 0x01A316 06:A306: 70        .byte $70   ; 
- D 1 - I - 0x01A317 06:A307: 70        .byte $70   ; 
- D 1 - I - 0x01A318 06:A308: 90        .byte $90   ; 
- D 1 - I - 0x01A319 06:A309: 90        .byte $90   ; 
- D 1 - I - 0x01A31A 06:A30A: C0        .byte $C0   ; 
- D 1 - I - 0x01A31B 06:A30B: F4        .byte $F4   ; 
- D 1 - I - 0x01A31C 06:A30C: 90        .byte $90   ; 
- D 1 - I - 0x01A31D 06:A30D: F0        .byte $F0   ; 
- D 1 - I - 0x01A31E 06:A30E: E4        .byte $E4   ; 
- D 1 - I - 0x01A31F 06:A30F: 42        .byte $42   ; 
- D 1 - I - 0x01A320 06:A310: 42        .byte $42   ; 
- D 1 - I - 0x01A321 06:A311: 95        .byte $95   ; 
- D 1 - I - 0x01A322 06:A312: 72        .byte $72   ; 
- D 1 - I - 0x01A323 06:A313: 90        .byte $90   ; 
- D 1 - I - 0x01A324 06:A314: 71        .byte $71   ; 
- D 1 - I - 0x01A325 06:A315: 41        .byte $41   ; 
- D 1 - I - 0x01A326 06:A316: E9        .byte $E9   ; 
- D 1 - I - 0x01A327 06:A317: 31        .byte $31   ; 
- D 1 - I - 0x01A328 06:A318: E9        .byte $E9   ; 
- D 1 - I - 0x01A329 06:A319: 70        .byte $70   ; 
- D 1 - I - 0x01A32A 06:A31A: E4        .byte $E4   ; 
- D 1 - I - 0x01A32B 06:A31B: 20        .byte $20   ; 
- D 1 - I - 0x01A32C 06:A31C: 20        .byte $20   ; 
- D 1 - I - 0x01A32D 06:A31D: 41        .byte $41   ; 
- D 1 - I - 0x01A32E 06:A31E: 70        .byte $70   ; 
- D 1 - I - 0x01A32F 06:A31F: F6        .byte $F6   ; 
- D 1 - I - 0x01A330 06:A320: 70        .byte $70   ; 
- D 1 - I - 0x01A331 06:A321: F4        .byte $F4   ; 
- D 1 - I - 0x01A332 06:A322: 70        .byte $70   ; 
- D 1 - I - 0x01A333 06:A323: F0        .byte $F0   ; 
- D 1 - I - 0x01A334 06:A324: 70        .byte $70   ; 
- D 1 - I - 0x01A335 06:A325: F6        .byte $F6   ; 
- D 1 - I - 0x01A336 06:A326: 70        .byte $70   ; 
- D 1 - I - 0x01A337 06:A327: F4        .byte $F4   ; 
- D 1 - I - 0x01A338 06:A328: 70        .byte $70   ; 
- D 1 - I - 0x01A339 06:A329: F0        .byte $F0   ; 
- D 1 - I - 0x01A33A 06:A32A: 51        .byte $51   ; 
- D 1 - I - 0x01A33B 06:A32B: FE        .byte $FE   ; 
- D 1 - I - 0x01A33C 06:A32C: 02        .byte $02   ; 
- D 1 - I - 0x01A33D 06:A32D: ED        .byte $ED   ; 
- D 1 - I - 0x01A33E 06:A32E: 82        .byte $82   ; 
- D 1 - I - 0x01A33F 06:A32F: E9        .byte $E9   ; 
- D 1 - I - 0x01A340 06:A330: 31        .byte $31   ; 
- D 1 - I - 0x01A341 06:A331: D6        .byte $D6   ; 
- D 1 - I - 0x01A342 06:A332: 78        .byte $78   ; 
- D 1 - I - 0x01A343 06:A333: 85        .byte $85   ; 
- D 1 - I - 0x01A344 06:A334: 24        .byte $24   ; 
- D 1 - I - 0x01A345 06:A335: E3        .byte $E3   ; 
- D 1 - I - 0x01A346 06:A336: 41        .byte $41   ; 
- D 1 - I - 0x01A347 06:A337: C0        .byte $C0   ; 
- D 1 - I - 0x01A348 06:A338: F4        .byte $F4   ; 
- D 1 - I - 0x01A349 06:A339: 40        .byte $40   ; 
- D 1 - I - 0x01A34A 06:A33A: F0        .byte $F0   ; 
- D 1 - I - 0x01A34B 06:A33B: E4        .byte $E4   ; 
- D 1 - I - 0x01A34C 06:A33C: 08        .byte $08   ; 
- D 1 - I - 0x01A34D 06:A33D: E3        .byte $E3   ; 
- D 1 - I - 0x01A34E 06:A33E: 20        .byte $20   ; 
- D 1 - I - 0x01A34F 06:A33F: F6        .byte $F6   ; 
- D 1 - I - 0x01A350 06:A340: 20        .byte $20   ; 
- D 1 - I - 0x01A351 06:A341: F4        .byte $F4   ; 
- D 1 - I - 0x01A352 06:A342: 20        .byte $20   ; 
- D 1 - I - 0x01A353 06:A343: F0        .byte $F0   ; 
- D 1 - I - 0x01A354 06:A344: 41        .byte $41   ; 
- D 1 - I - 0x01A355 06:A345: C0        .byte $C0   ; 
- D 1 - I - 0x01A356 06:A346: F4        .byte $F4   ; 
- D 1 - I - 0x01A357 06:A347: 40        .byte $40   ; 
- D 1 - I - 0x01A358 06:A348: F0        .byte $F0   ; 
- D 1 - I - 0x01A359 06:A349: E4        .byte $E4   ; 
- D 1 - I - 0x01A35A 06:A34A: 2B        .byte $2B   ; 
- D 1 - I - 0x01A35B 06:A34B: ED        .byte $ED   ; 
- D 1 - I - 0x01A35C 06:A34C: 00        .byte $00   ; 
- D 1 - I - 0x01A35D 06:A34D: E4        .byte $E4   ; 
- D 1 - I - 0x01A35E 06:A34E: B2        .byte $B2   ; 
- D 1 - I - 0x01A35F 06:A34F: B2        .byte $B2   ; 
- D 1 - I - 0x01A360 06:A350: B1        .byte $B1   ; 
- D 1 - I - 0x01A361 06:A351: E3        .byte $E3   ; 
- D 1 - I - 0x01A362 06:A352: 02        .byte $02   ; 
- D 1 - I - 0x01A363 06:A353: 02        .byte $02   ; 
- D 1 - I - 0x01A364 06:A354: 01        .byte $01   ; 
- D 1 - I - 0x01A365 06:A355: 32        .byte $32   ; 
- D 1 - I - 0x01A366 06:A356: 32        .byte $32   ; 
- D 1 - I - 0x01A367 06:A357: 31        .byte $31   ; 
- D 1 - I - 0x01A368 06:A358: 52        .byte $52   ; 
- D 1 - I - 0x01A369 06:A359: 52        .byte $52   ; 
- D 1 - I - 0x01A36A 06:A35A: 51        .byte $51   ; 
- D 1 - I - 0x01A36B 06:A35B: E9        .byte $E9   ; 
- D 1 - I - 0x01A36C 06:A35C: B1        .byte $B1   ; 
- D 1 - I - 0x01A36D 06:A35D: E6        .byte $E6   ; 
- D 1 - I - 0x01A36E 06:A35E: 01        .byte $01   ; 
- D 1 - I - 0x01A36F 06:A35F: C0        .byte $C0   ; 
- D 1 - I - 0x01A370 06:A360: ED        .byte $ED   ; 
- D 1 - I - 0x01A371 06:A361: 83        .byte $83   ; 
- D 1 - I - 0x01A372 06:A362: D6        .byte $D6   ; 
- D 1 - I - 0x01A373 06:A363: 37        .byte $37   ; 
- D 1 - I - 0x01A374 06:A364: 85        .byte $85   ; 
- D 1 - I - 0x01A375 06:A365: 25        .byte $25   ; 
- D 1 - I - 0x01A376 06:A366: FD        .byte $FD   ; 
- D 1 - I - 0x01A377 06:A367: 8E A3     .word sub_FD_A38E
- D 1 - I - 0x01A379 06:A369: F5        .byte $F5   ; 
- D 1 - I - 0x01A37A 06:A36A: 70        .byte $70   ; 
- D 1 - I - 0x01A37B 06:A36B: 90        .byte $90   ; 
- D 1 - I - 0x01A37C 06:A36C: F0        .byte $F0   ; 
- D 1 - I - 0x01A37D 06:A36D: 90        .byte $90   ; 
- D 1 - I - 0x01A37E 06:A36E: 40        .byte $40   ; 
- D 1 - I - 0x01A37F 06:A36F: 71        .byte $71   ; 
- D 1 - I - 0x01A380 06:A370: E4        .byte $E4   ; 
- D 1 - I - 0x01A381 06:A371: 00        .byte $00   ; 
- D 1 - I - 0x01A382 06:A372: E5        .byte $E5   ; 
- D 1 - I - 0x01A383 06:A373: B2        .byte $B2   ; 
- D 1 - I - 0x01A384 06:A374: FD        .byte $FD   ; 
- D 1 - I - 0x01A385 06:A375: 8E A3     .word sub_FD_A38E
- D 1 - I - 0x01A387 06:A377: F2        .byte $F2   ; 
- D 1 - I - 0x01A388 06:A378: 70        .byte $70   ; 
- D 1 - I - 0x01A389 06:A379: 90        .byte $90   ; 
- D 1 - I - 0x01A38A 06:A37A: C1        .byte $C1   ; 
- D 1 - I - 0x01A38B 06:A37B: F4        .byte $F4   ; 
- D 1 - I - 0x01A38C 06:A37C: 70        .byte $70   ; 
- D 1 - I - 0x01A38D 06:A37D: 90        .byte $90   ; 
- D 1 - I - 0x01A38E 06:A37E: F0        .byte $F0   ; 
- D 1 - I - 0x01A38F 06:A37F: 70        .byte $70   ; 
- D 1 - I - 0x01A390 06:A380: E4        .byte $E4   ; 
- D 1 - I - 0x01A391 06:A381: 00        .byte $00   ; 
- D 1 - I - 0x01A392 06:A382: C0        .byte $C0   ; 
- D 1 - I - 0x01A393 06:A383: F4        .byte $F4   ; 
- D 1 - I - 0x01A394 06:A384: E6        .byte $E6   ; 
- D 1 - I - 0x01A395 06:A385: 05        .byte $05   ; 
- D 1 - I - 0x01A396 06:A386: 00        .byte $00   ; 
- D 1 - I - 0x01A397 06:A387: F0        .byte $F0   ; 
- D 1 - I - 0x01A398 06:A388: ED        .byte $ED   ; 
- D 1 - I - 0x01A399 06:A389: 00        .byte $00   ; 
- D 1 - I - 0x01A39A 06:A38A: FE        .byte $FE   ; 
- D 1 - I - 0x01A39B 06:A38B: FF        .byte $FF   ; 
- D 1 - I - 0x01A39C 06:A38C: 94 A2     .word loc_FF_A294



sub_FD_A38E:
- D 1 - I - 0x01A39E 06:A38E: E5        .byte $E5   ; 
- D 1 - I - 0x01A39F 06:A38F: 90        .byte $90   ; 
- D 1 - I - 0x01A3A0 06:A390: 90        .byte $90   ; 
- D 1 - I - 0x01A3A1 06:A391: 70        .byte $70   ; 
- D 1 - I - 0x01A3A2 06:A392: 70        .byte $70   ; 
- D 1 - I - 0x01A3A3 06:A393: 91        .byte $91   ; 
- D 1 - I - 0x01A3A4 06:A394: E4        .byte $E4   ; 
- D 1 - I - 0x01A3A5 06:A395: 90        .byte $90   ; 
- D 1 - I - 0x01A3A6 06:A396: E5        .byte $E5   ; 
- D 1 - I - 0x01A3A7 06:A397: 91        .byte $91   ; 
- D 1 - I - 0x01A3A8 06:A398: 80        .byte $80   ; 
- D 1 - I - 0x01A3A9 06:A399: 71        .byte $71   ; 
- D 1 - I - 0x01A3AA 06:A39A: 40        .byte $40   ; 
- D 1 - I - 0x01A3AB 06:A39B: 72        .byte $72   ; 
- D 1 - I - 0x01A3AC 06:A39C: E5        .byte $E5   ; 
- D 1 - I - 0x01A3AD 06:A39D: 90        .byte $90   ; 
- D 1 - I - 0x01A3AE 06:A39E: 90        .byte $90   ; 
- D 1 - I - 0x01A3AF 06:A39F: 70        .byte $70   ; 
- D 1 - I - 0x01A3B0 06:A3A0: 70        .byte $70   ; 
- D 1 - I - 0x01A3B1 06:A3A1: 90        .byte $90   ; 
- D 1 - I - 0x01A3B2 06:A3A2: C0        .byte $C0   ; 
- D 1 - I - 0x01A3B3 06:A3A3: FD        .byte $FD   ; 



_off014_2A_A3A4_01:
loc_FF_A3A4:
- D 1 - I - 0x01A3B4 06:A3A4: E9        .byte $E9   ; 
- D 1 - I - 0x01A3B5 06:A3A5: 31        .byte $31   ; 
- D 1 - I - 0x01A3B6 06:A3A6: D6        .byte $D6   ; 
- D 1 - I - 0x01A3B7 06:A3A7: B0        .byte $B0   ; 
- D 1 - I - 0x01A3B8 06:A3A8: 0E        .byte $0E   ; 
- D 1 - I - 0x01A3B9 06:A3A9: 12        .byte $12   ; 
- D 1 - I - 0x01A3BA 06:A3AA: FB        .byte $FB   ; 
- D 1 - I - 0x01A3BB 06:A3AB: E5        .byte $E5   ; 
- D 1 - I - 0x01A3BC 06:A3AC: 90        .byte $90   ; 
- D 1 - I - 0x01A3BD 06:A3AD: 90        .byte $90   ; 
- D 1 - I - 0x01A3BE 06:A3AE: C0        .byte $C0   ; 
- D 1 - I - 0x01A3BF 06:A3AF: 90        .byte $90   ; 
- D 1 - I - 0x01A3C0 06:A3B0: C0        .byte $C0   ; 
- D 1 - I - 0x01A3C1 06:A3B1: E4        .byte $E4   ; 
- D 1 - I - 0x01A3C2 06:A3B2: 20        .byte $20   ; 
- D 1 - I - 0x01A3C3 06:A3B3: 40        .byte $40   ; 
- D 1 - I - 0x01A3C4 06:A3B4: 90        .byte $90   ; 
- D 1 - I - 0x01A3C5 06:A3B5: 71        .byte $71   ; 
- D 1 - I - 0x01A3C6 06:A3B6: 61        .byte $61   ; 
- D 1 - I - 0x01A3C7 06:A3B7: 21        .byte $21   ; 
- D 1 - I - 0x01A3C8 06:A3B8: 41        .byte $41   ; 
- D 1 - I - 0x01A3C9 06:A3B9: FE        .byte $FE   ; 
- D 1 - I - 0x01A3CA 06:A3BA: 03        .byte $03   ; 
- D 1 - I - 0x01A3CB 06:A3BB: E5        .byte $E5   ; 
- D 1 - I - 0x01A3CC 06:A3BC: 90        .byte $90   ; 
- D 1 - I - 0x01A3CD 06:A3BD: 90        .byte $90   ; 
- D 1 - I - 0x01A3CE 06:A3BE: C0        .byte $C0   ; 
- D 1 - I - 0x01A3CF 06:A3BF: C0        .byte $C0   ; 
- D 1 - I - 0x01A3D0 06:A3C0: F2        .byte $F2   ; 
- D 1 - I - 0x01A3D1 06:A3C1: 90        .byte $90   ; 
- D 1 - I - 0x01A3D2 06:A3C2: 90        .byte $90   ; 
- D 1 - I - 0x01A3D3 06:A3C3: C0        .byte $C0   ; 
- D 1 - I - 0x01A3D4 06:A3C4: C0        .byte $C0   ; 
- D 1 - I - 0x01A3D5 06:A3C5: F4        .byte $F4   ; 
- D 1 - I - 0x01A3D6 06:A3C6: 90        .byte $90   ; 
- D 1 - I - 0x01A3D7 06:A3C7: 90        .byte $90   ; 
- D 1 - I - 0x01A3D8 06:A3C8: C0        .byte $C0   ; 
- D 1 - I - 0x01A3D9 06:A3C9: C0        .byte $C0   ; 
- D 1 - I - 0x01A3DA 06:A3CA: E9        .byte $E9   ; 
- D 1 - I - 0x01A3DB 06:A3CB: B1        .byte $B1   ; 
- D 1 - I - 0x01A3DC 06:A3CC: D6        .byte $D6   ; 
- D 1 - I - 0x01A3DD 06:A3CD: 70        .byte $70   ; 
- D 1 - I - 0x01A3DE 06:A3CE: 0B        .byte $0B   ; 
- D 1 - I - 0x01A3DF 06:A3CF: 16        .byte $16   ; 
- D 1 - I - 0x01A3E0 06:A3D0: E2        .byte $E2   ; 
- D 1 - I - 0x01A3E1 06:A3D1: 20        .byte $20   ; 
- D 1 - I - 0x01A3E2 06:A3D2: 20        .byte $20   ; 
- D 1 - I - 0x01A3E3 06:A3D3: C0        .byte $C0   ; 
- D 1 - I - 0x01A3E4 06:A3D4: F4        .byte $F4   ; 
- D 1 - I - 0x01A3E5 06:A3D5: 20        .byte $20   ; 
- D 1 - I - 0x01A3E6 06:A3D6: F0        .byte $F0   ; 
- D 1 - I - 0x01A3E7 06:A3D7: E9        .byte $E9   ; 
- D 1 - I - 0x01A3E8 06:A3D8: 71        .byte $71   ; 
- D 1 - I - 0x01A3E9 06:A3D9: D6        .byte $D6   ; 
- D 1 - I - 0x01A3EA 06:A3DA: 30        .byte $30   ; 
- D 1 - I - 0x01A3EB 06:A3DB: 0D        .byte $0D   ; 
- D 1 - I - 0x01A3EC 06:A3DC: 34        .byte $34   ; 
- D 1 - I - 0x01A3ED 06:A3DD: EB        .byte $EB   ; 
- D 1 - I - 0x01A3EE 06:A3DE: 50        .byte $50   ; 
- D 1 - I - 0x01A3EF 06:A3DF: B1        .byte $B1   ; 
- D 1 - I - 0x01A3F0 06:A3E0: E2        .byte $E2   ; 
- D 1 - I - 0x01A3F1 06:A3E1: 7F        .byte $7F   ; 
- D 1 - I - 0x01A3F2 06:A3E2: 6F        .byte $6F   ; 
- D 1 - I - 0x01A3F3 06:A3E3: 5B        .byte $5B   ; 
- D 1 - I - 0x01A3F4 06:A3E4: 73        .byte $73   ; 
- D 1 - I - 0x01A3F5 06:A3E5: 4B        .byte $4B   ; 
- D 1 - I - 0x01A3F6 06:A3E6: E2        .byte $E2   ; 
- D 1 - I - 0x01A3F7 06:A3E7: 90        .byte $90   ; 
- D 1 - I - 0x01A3F8 06:A3E8: E1        .byte $E1   ; 
- D 1 - I - 0x01A3F9 06:A3E9: 00        .byte $00   ; 
- D 1 - I - 0x01A3FA 06:A3EA: C0        .byte $C0   ; 
- D 1 - I - 0x01A3FB 06:A3EB: F3        .byte $F3   ; 
- D 1 - I - 0x01A3FC 06:A3EC: 00        .byte $00   ; 
- D 1 - I - 0x01A3FD 06:A3ED: F0        .byte $F0   ; 
- D 1 - I - 0x01A3FE 06:A3EE: E2        .byte $E2   ; 
- D 1 - I - 0x01A3FF 06:A3EF: 7F        .byte $7F   ; 
- D 1 - I - 0x01A400 06:A3F0: 6F        .byte $6F   ; 
- D 1 - I - 0x01A401 06:A3F1: 5B        .byte $5B   ; 
- D 1 - I - 0x01A402 06:A3F2: 73        .byte $73   ; 
- D 1 - I - 0x01A403 06:A3F3: 4B        .byte $4B   ; 
- D 1 - I - 0x01A404 06:A3F4: 80        .byte $80   ; 
- D 1 - I - 0x01A405 06:A3F5: 90        .byte $90   ; 
- D 1 - I - 0x01A406 06:A3F6: E1        .byte $E1   ; 
- D 1 - I - 0x01A407 06:A3F7: 00        .byte $00   ; 
- D 1 - I - 0x01A408 06:A3F8: C0        .byte $C0   ; 
- D 1 - I - 0x01A409 06:A3F9: EA        .byte $EA   ; 
- D 1 - I - 0x01A40A 06:A3FA: 8C        .byte $8C   ; 
- D 1 - I - 0x01A40B 06:A3FB: FB        .byte $FB   ; 
- D 1 - I - 0x01A40C 06:A3FC: F0        .byte $F0   ; 
- D 1 - I - 0x01A40D 06:A3FD: E9        .byte $E9   ; 
- D 1 - I - 0x01A40E 06:A3FE: 71        .byte $71   ; 
- D 1 - I - 0x01A40F 06:A3FF: D6        .byte $D6   ; 
- D 1 - I - 0x01A410 06:A400: 38        .byte $38   ; 
- D 1 - I - 0x01A411 06:A401: 85        .byte $85   ; 
- D 1 - I - 0x01A412 06:A402: 24        .byte $24   ; 
- D 1 - I - 0x01A413 06:A403: EB        .byte $EB   ; 
- D 1 - I - 0x01A414 06:A404: 50        .byte $50   ; 
- D 1 - I - 0x01A415 06:A405: 51        .byte $51   ; 
- D 1 - I - 0x01A416 06:A406: E4        .byte $E4   ; 
- D 1 - I - 0x01A417 06:A407: E6        .byte $E6   ; 
- D 1 - I - 0x01A418 06:A408: 01        .byte $01   ; 
- D 1 - I - 0x01A419 06:A409: 81        .byte $81   ; 
- D 1 - I - 0x01A41A 06:A40A: E6        .byte $E6   ; 
- D 1 - I - 0x01A41B 06:A40B: 08        .byte $08   ; 
- D 1 - I - 0x01A41C 06:A40C: 91        .byte $91   ; 
- D 1 - I - 0x01A41D 06:A40D: E6        .byte $E6   ; 
- D 1 - I - 0x01A41E 06:A40E: 06        .byte $06   ; 
- D 1 - I - 0x01A41F 06:A40F: 92        .byte $92   ; 
- D 1 - I - 0x01A420 06:A410: E3        .byte $E3   ; 
- D 1 - I - 0x01A421 06:A411: 09        .byte $09   ; 
- D 1 - I - 0x01A422 06:A412: E4        .byte $E4   ; 
- D 1 - I - 0x01A423 06:A413: 92        .byte $92   ; 
- D 1 - I - 0x01A424 06:A414: E3        .byte $E3   ; 
- D 1 - I - 0x01A425 06:A415: 01        .byte $01   ; 
- D 1 - I - 0x01A426 06:A416: 40        .byte $40   ; 
- D 1 - I - 0x01A427 06:A417: 70        .byte $70   ; 
- D 1 - I - 0x01A428 06:A418: 64        .byte $64   ; 
- D 1 - I - 0x01A429 06:A419: 23        .byte $23   ; 
- D 1 - I - 0x01A42A 06:A41A: E4        .byte $E4   ; 
- D 1 - I - 0x01A42B 06:A41B: 92        .byte $92   ; 
- D 1 - I - 0x01A42C 06:A41C: 92        .byte $92   ; 
- D 1 - I - 0x01A42D 06:A41D: E3        .byte $E3   ; 
- D 1 - I - 0x01A42E 06:A41E: 25        .byte $25   ; 
- D 1 - I - 0x01A42F 06:A41F: 02        .byte $02   ; 
- D 1 - I - 0x01A430 06:A420: 20        .byte $20   ; 
- D 1 - I - 0x01A431 06:A421: 01        .byte $01   ; 
- D 1 - I - 0x01A432 06:A422: E4        .byte $E4   ; 
- D 1 - I - 0x01A433 06:A423: 91        .byte $91   ; 
- D 1 - I - 0x01A434 06:A424: E9        .byte $E9   ; 
- D 1 - I - 0x01A435 06:A425: 31        .byte $31   ; 
- D 1 - I - 0x01A436 06:A426: D6        .byte $D6   ; 
- D 1 - I - 0x01A437 06:A427: 76        .byte $76   ; 
- D 1 - I - 0x01A438 06:A428: 83        .byte $83   ; 
- D 1 - I - 0x01A439 06:A429: 25        .byte $25   ; 
- D 1 - I - 0x01A43A 06:A42A: E2        .byte $E2   ; 
- D 1 - I - 0x01A43B 06:A42B: 70        .byte $70   ; 
- D 1 - I - 0x01A43C 06:A42C: 70        .byte $70   ; 
- D 1 - I - 0x01A43D 06:A42D: 91        .byte $91   ; 
- D 1 - I - 0x01A43E 06:A42E: E1        .byte $E1   ; 
- D 1 - I - 0x01A43F 06:A42F: 00        .byte $00   ; 
- D 1 - I - 0x01A440 06:A430: F6        .byte $F6   ; 
- D 1 - I - 0x01A441 06:A431: 00        .byte $00   ; 
- D 1 - I - 0x01A442 06:A432: F4        .byte $F4   ; 
- D 1 - I - 0x01A443 06:A433: 00        .byte $00   ; 
- D 1 - I - 0x01A444 06:A434: F0        .byte $F0   ; 
- D 1 - I - 0x01A445 06:A435: 00        .byte $00   ; 
- D 1 - I - 0x01A446 06:A436: F6        .byte $F6   ; 
- D 1 - I - 0x01A447 06:A437: 00        .byte $00   ; 
- D 1 - I - 0x01A448 06:A438: F4        .byte $F4   ; 
- D 1 - I - 0x01A449 06:A439: 00        .byte $00   ; 
- D 1 - I - 0x01A44A 06:A43A: F0        .byte $F0   ; 
- D 1 - I - 0x01A44B 06:A43B: E2        .byte $E2   ; 
- D 1 - I - 0x01A44C 06:A43C: B1        .byte $B1   ; 
- D 1 - I - 0x01A44D 06:A43D: FE        .byte $FE   ; 
- D 1 - I - 0x01A44E 06:A43E: 02        .byte $02   ; 
- D 1 - I - 0x01A44F 06:A43F: EA        .byte $EA   ; 
- D 1 - I - 0x01A450 06:A440: 00        .byte $00   ; 
- D 1 - I - 0x01A451 06:A441: E9        .byte $E9   ; 
- D 1 - I - 0x01A452 06:A442: B1        .byte $B1   ; 
- D 1 - I - 0x01A453 06:A443: D6        .byte $D6   ; 
- D 1 - I - 0x01A454 06:A444: 77        .byte $77   ; 
- D 1 - I - 0x01A455 06:A445: 84        .byte $84   ; 
- D 1 - I - 0x01A456 06:A446: 24        .byte $24   ; 
- D 1 - I - 0x01A457 06:A447: EB        .byte $EB   ; 
- D 1 - I - 0x01A458 06:A448: 00        .byte $00   ; 
- D 1 - I - 0x01A459 06:A449: E3        .byte $E3   ; 
- D 1 - I - 0x01A45A 06:A44A: 91        .byte $91   ; 
- D 1 - I - 0x01A45B 06:A44B: C0        .byte $C0   ; 
- D 1 - I - 0x01A45C 06:A44C: F4        .byte $F4   ; 
- D 1 - I - 0x01A45D 06:A44D: 90        .byte $90   ; 
- D 1 - I - 0x01A45E 06:A44E: F0        .byte $F0   ; 
- D 1 - I - 0x01A45F 06:A44F: E3        .byte $E3   ; 
- D 1 - I - 0x01A460 06:A450: 08        .byte $08   ; 
- D 1 - I - 0x01A461 06:A451: E3        .byte $E3   ; 
- D 1 - I - 0x01A462 06:A452: 70        .byte $70   ; 
- D 1 - I - 0x01A463 06:A453: C0        .byte $C0   ; 
- D 1 - I - 0x01A464 06:A454: F4        .byte $F4   ; 
- D 1 - I - 0x01A465 06:A455: 70        .byte $70   ; 
- D 1 - I - 0x01A466 06:A456: F0        .byte $F0   ; 
- D 1 - I - 0x01A467 06:A457: 91        .byte $91   ; 
- D 1 - I - 0x01A468 06:A458: C0        .byte $C0   ; 
- D 1 - I - 0x01A469 06:A459: F4        .byte $F4   ; 
- D 1 - I - 0x01A46A 06:A45A: 90        .byte $90   ; 
- D 1 - I - 0x01A46B 06:A45B: F0        .byte $F0   ; 
- D 1 - I - 0x01A46C 06:A45C: E3        .byte $E3   ; 
- D 1 - I - 0x01A46D 06:A45D: 2B        .byte $2B   ; 
- D 1 - I - 0x01A46E 06:A45E: E3        .byte $E3   ; 
- D 1 - I - 0x01A46F 06:A45F: 42        .byte $42   ; 
- D 1 - I - 0x01A470 06:A460: 42        .byte $42   ; 
- D 1 - I - 0x01A471 06:A461: 41        .byte $41   ; 
- D 1 - I - 0x01A472 06:A462: 52        .byte $52   ; 
- D 1 - I - 0x01A473 06:A463: 52        .byte $52   ; 
- D 1 - I - 0x01A474 06:A464: 51        .byte $51   ; 
- D 1 - I - 0x01A475 06:A465: 82        .byte $82   ; 
- D 1 - I - 0x01A476 06:A466: 82        .byte $82   ; 
- D 1 - I - 0x01A477 06:A467: 81        .byte $81   ; 
- D 1 - I - 0x01A478 06:A468: B2        .byte $B2   ; 
- D 1 - I - 0x01A479 06:A469: B2        .byte $B2   ; 
- D 1 - I - 0x01A47A 06:A46A: B1        .byte $B1   ; 
- D 1 - I - 0x01A47B 06:A46B: E9        .byte $E9   ; 
- D 1 - I - 0x01A47C 06:A46C: 31        .byte $31   ; 
- D 1 - I - 0x01A47D 06:A46D: D6        .byte $D6   ; 
- D 1 - I - 0x01A47E 06:A46E: B7        .byte $B7   ; 
- D 1 - I - 0x01A47F 06:A46F: 85        .byte $85   ; 
- D 1 - I - 0x01A480 06:A470: 25        .byte $25   ; 
- D 1 - I - 0x01A481 06:A471: FD        .byte $FD   ; 
- D 1 - I - 0x01A482 06:A472: 97 A4     .word sub_FD_A497
- D 1 - I - 0x01A484 06:A474: F5        .byte $F5   ; 
- D 1 - I - 0x01A485 06:A475: 20        .byte $20   ; 
- D 1 - I - 0x01A486 06:A476: 40        .byte $40   ; 
- D 1 - I - 0x01A487 06:A477: F0        .byte $F0   ; 
- D 1 - I - 0x01A488 06:A478: E5        .byte $E5   ; 
- D 1 - I - 0x01A489 06:A479: 90        .byte $90   ; 
- D 1 - I - 0x01A48A 06:A47A: 40        .byte $40   ; 
- D 1 - I - 0x01A48B 06:A47B: 71        .byte $71   ; 
- D 1 - I - 0x01A48C 06:A47C: E4        .byte $E4   ; 
- D 1 - I - 0x01A48D 06:A47D: 00        .byte $00   ; 
- D 1 - I - 0x01A48E 06:A47E: E5        .byte $E5   ; 
- D 1 - I - 0x01A48F 06:A47F: B2        .byte $B2   ; 
- D 1 - I - 0x01A490 06:A480: FD        .byte $FD   ; 
- D 1 - I - 0x01A491 06:A481: 97 A4     .word sub_FD_A497
- D 1 - I - 0x01A493 06:A483: F2        .byte $F2   ; 
- D 1 - I - 0x01A494 06:A484: 20        .byte $20   ; 
- D 1 - I - 0x01A495 06:A485: 40        .byte $40   ; 
- D 1 - I - 0x01A496 06:A486: C1        .byte $C1   ; 
- D 1 - I - 0x01A497 06:A487: F3        .byte $F3   ; 
- D 1 - I - 0x01A498 06:A488: 20        .byte $20   ; 
- D 1 - I - 0x01A499 06:A489: 40        .byte $40   ; 
- D 1 - I - 0x01A49A 06:A48A: F0        .byte $F0   ; 
- D 1 - I - 0x01A49B 06:A48B: E5        .byte $E5   ; 
- D 1 - I - 0x01A49C 06:A48C: 70        .byte $70   ; 
- D 1 - I - 0x01A49D 06:A48D: E4        .byte $E4   ; 
- D 1 - I - 0x01A49E 06:A48E: 00        .byte $00   ; 
- D 1 - I - 0x01A49F 06:A48F: C0        .byte $C0   ; 
- D 1 - I - 0x01A4A0 06:A490: F4        .byte $F4   ; 
- D 1 - I - 0x01A4A1 06:A491: 00        .byte $00   ; 
- D 1 - I - 0x01A4A2 06:A492: F0        .byte $F0   ; 
- D 1 - I - 0x01A4A3 06:A493: FE        .byte $FE   ; 
- D 1 - I - 0x01A4A4 06:A494: FF        .byte $FF   ; 
- D 1 - I - 0x01A4A5 06:A495: A4 A3     .word loc_FF_A3A4



sub_FD_A497:
- D 1 - I - 0x01A4A7 06:A497: E4        .byte $E4   ; 
- D 1 - I - 0x01A4A8 06:A498: 40        .byte $40   ; 
- D 1 - I - 0x01A4A9 06:A499: 40        .byte $40   ; 
- D 1 - I - 0x01A4AA 06:A49A: 20        .byte $20   ; 
- D 1 - I - 0x01A4AB 06:A49B: 20        .byte $20   ; 
- D 1 - I - 0x01A4AC 06:A49C: 41        .byte $41   ; 
- D 1 - I - 0x01A4AD 06:A49D: E4        .byte $E4   ; 
- D 1 - I - 0x01A4AE 06:A49E: 90        .byte $90   ; 
- D 1 - I - 0x01A4AF 06:A49F: E5        .byte $E5   ; 
- D 1 - I - 0x01A4B0 06:A4A0: 91        .byte $91   ; 
- D 1 - I - 0x01A4B1 06:A4A1: 80        .byte $80   ; 
- D 1 - I - 0x01A4B2 06:A4A2: 71        .byte $71   ; 
- D 1 - I - 0x01A4B3 06:A4A3: 40        .byte $40   ; 
- D 1 - I - 0x01A4B4 06:A4A4: 72        .byte $72   ; 
- D 1 - I - 0x01A4B5 06:A4A5: E4        .byte $E4   ; 
- D 1 - I - 0x01A4B6 06:A4A6: 40        .byte $40   ; 
- D 1 - I - 0x01A4B7 06:A4A7: 40        .byte $40   ; 
- D 1 - I - 0x01A4B8 06:A4A8: 20        .byte $20   ; 
- D 1 - I - 0x01A4B9 06:A4A9: 20        .byte $20   ; 
- D 1 - I - 0x01A4BA 06:A4AA: 40        .byte $40   ; 
- D 1 - I - 0x01A4BB 06:A4AB: C0        .byte $C0   ; 
- D 1 - I - 0x01A4BC 06:A4AC: FD        .byte $FD   ; 



_off014_2A_A4AD_02:
loc_FF_A4AD:
- D 1 - I - 0x01A4BD 06:A4AD: EA        .byte $EA   ; 
- D 1 - I - 0x01A4BE 06:A4AE: 8C        .byte $8C   ; 
- D 1 - I - 0x01A4BF 06:A4AF: D6        .byte $D6   ; 
- D 1 - I - 0x01A4C0 06:A4B0: 0D        .byte $0D   ; 
- D 1 - I - 0x01A4C1 06:A4B1: FB        .byte $FB   ; 
- D 1 - I - 0x01A4C2 06:A4B2: E4        .byte $E4   ; 
- D 1 - I - 0x01A4C3 06:A4B3: 90        .byte $90   ; 
- D 1 - I - 0x01A4C4 06:A4B4: 90        .byte $90   ; 
- D 1 - I - 0x01A4C5 06:A4B5: C0        .byte $C0   ; 
- D 1 - I - 0x01A4C6 06:A4B6: 90        .byte $90   ; 
- D 1 - I - 0x01A4C7 06:A4B7: C0        .byte $C0   ; 
- D 1 - I - 0x01A4C8 06:A4B8: E3        .byte $E3   ; 
- D 1 - I - 0x01A4C9 06:A4B9: 20        .byte $20   ; 
- D 1 - I - 0x01A4CA 06:A4BA: 40        .byte $40   ; 
- D 1 - I - 0x01A4CB 06:A4BB: 90        .byte $90   ; 
- D 1 - I - 0x01A4CC 06:A4BC: 71        .byte $71   ; 
- D 1 - I - 0x01A4CD 06:A4BD: 61        .byte $61   ; 
- D 1 - I - 0x01A4CE 06:A4BE: 21        .byte $21   ; 
- D 1 - I - 0x01A4CF 06:A4BF: 41        .byte $41   ; 
- D 1 - I - 0x01A4D0 06:A4C0: FE        .byte $FE   ; 
- D 1 - I - 0x01A4D1 06:A4C1: 03        .byte $03   ; 
- D 1 - I - 0x01A4D2 06:A4C2: E4        .byte $E4   ; 
- D 1 - I - 0x01A4D3 06:A4C3: 90        .byte $90   ; 
- D 1 - I - 0x01A4D4 06:A4C4: 90        .byte $90   ; 
- D 1 - I - 0x01A4D5 06:A4C5: C9        .byte $C9   ; 
- D 1 - I - 0x01A4D6 06:A4C6: E3        .byte $E3   ; 
- D 1 - I - 0x01A4D7 06:A4C7: 20        .byte $20   ; 
- D 1 - I - 0x01A4D8 06:A4C8: 20        .byte $20   ; 
- D 1 - I - 0x01A4D9 06:A4C9: C1        .byte $C1   ; 
- D 1 - I - 0x01A4DA 06:A4CA: EA        .byte $EA   ; 
- D 1 - I - 0x01A4DB 06:A4CB: 00        .byte $00   ; 
- D 1 - I - 0x01A4DC 06:A4CC: FD        .byte $FD   ; 
- D 1 - I - 0x01A4DD 06:A4CD: 45 A5     .word sub_FD_A545
- D 1 - I - 0x01A4DF 06:A4CF: 90        .byte $90   ; 
- D 1 - I - 0x01A4E0 06:A4D0: E2        .byte $E2   ; 
- D 1 - I - 0x01A4E1 06:A4D1: 00        .byte $00   ; 
- D 1 - I - 0x01A4E2 06:A4D2: C1        .byte $C1   ; 
- D 1 - I - 0x01A4E3 06:A4D3: FD        .byte $FD   ; 
- D 1 - I - 0x01A4E4 06:A4D4: 45 A5     .word sub_FD_A545
- D 1 - I - 0x01A4E6 06:A4D6: 80        .byte $80   ; 
- D 1 - I - 0x01A4E7 06:A4D7: 90        .byte $90   ; 
- D 1 - I - 0x01A4E8 06:A4D8: E2        .byte $E2   ; 
- D 1 - I - 0x01A4E9 06:A4D9: 00        .byte $00   ; 
- D 1 - I - 0x01A4EA 06:A4DA: C0        .byte $C0   ; 
- D 1 - I - 0x01A4EB 06:A4DB: FB        .byte $FB   ; 
- D 1 - I - 0x01A4EC 06:A4DC: D6        .byte $D6   ; 
- D 1 - I - 0x01A4ED 06:A4DD: 0F        .byte $0F   ; 
- D 1 - I - 0x01A4EE 06:A4DE: E4        .byte $E4   ; 
- D 1 - I - 0x01A4EF 06:A4DF: 92        .byte $92   ; 
- D 1 - I - 0x01A4F0 06:A4E0: 92        .byte $92   ; 
- D 1 - I - 0x01A4F1 06:A4E1: E3        .byte $E3   ; 
- D 1 - I - 0x01A4F2 06:A4E2: 01        .byte $01   ; 
- D 1 - I - 0x01A4F3 06:A4E3: E4        .byte $E4   ; 
- D 1 - I - 0x01A4F4 06:A4E4: 90        .byte $90   ; 
- D 1 - I - 0x01A4F5 06:A4E5: 90        .byte $90   ; 
- D 1 - I - 0x01A4F6 06:A4E6: C0        .byte $C0   ; 
- D 1 - I - 0x01A4F7 06:A4E7: 70        .byte $70   ; 
- D 1 - I - 0x01A4F8 06:A4E8: C0        .byte $C0   ; 
- D 1 - I - 0x01A4F9 06:A4E9: 40        .byte $40   ; 
- D 1 - I - 0x01A4FA 06:A4EA: 71        .byte $71   ; 
- D 1 - I - 0x01A4FB 06:A4EB: 92        .byte $92   ; 
- D 1 - I - 0x01A4FC 06:A4EC: E3        .byte $E3   ; 
- D 1 - I - 0x01A4FD 06:A4ED: 01        .byte $01   ; 
- D 1 - I - 0x01A4FE 06:A4EE: 40        .byte $40   ; 
- D 1 - I - 0x01A4FF 06:A4EF: 70        .byte $70   ; 
- D 1 - I - 0x01A500 06:A4F0: 62        .byte $62   ; 
- D 1 - I - 0x01A501 06:A4F1: E4        .byte $E4   ; 
- D 1 - I - 0x01A502 06:A4F2: 20        .byte $20   ; 
- D 1 - I - 0x01A503 06:A4F3: 20        .byte $20   ; 
- D 1 - I - 0x01A504 06:A4F4: 40        .byte $40   ; 
- D 1 - I - 0x01A505 06:A4F5: 41        .byte $41   ; 
- D 1 - I - 0x01A506 06:A4F6: C0        .byte $C0   ; 
- D 1 - I - 0x01A507 06:A4F7: E4        .byte $E4   ; 
- D 1 - I - 0x01A508 06:A4F8: 92        .byte $92   ; 
- D 1 - I - 0x01A509 06:A4F9: 92        .byte $92   ; 
- D 1 - I - 0x01A50A 06:A4FA: E3        .byte $E3   ; 
- D 1 - I - 0x01A50B 06:A4FB: 25        .byte $25   ; 
- D 1 - I - 0x01A50C 06:A4FC: 02        .byte $02   ; 
- D 1 - I - 0x01A50D 06:A4FD: 20        .byte $20   ; 
- D 1 - I - 0x01A50E 06:A4FE: 01        .byte $01   ; 
- D 1 - I - 0x01A50F 06:A4FF: E4        .byte $E4   ; 
- D 1 - I - 0x01A510 06:A500: 91        .byte $91   ; 
- D 1 - I - 0x01A511 06:A501: 70        .byte $70   ; 
- D 1 - I - 0x01A512 06:A502: 70        .byte $70   ; 
- D 1 - I - 0x01A513 06:A503: 91        .byte $91   ; 
- D 1 - I - 0x01A514 06:A504: D6        .byte $D6   ; 
- D 1 - I - 0x01A515 06:A505: 0D        .byte $0D   ; 
- D 1 - I - 0x01A516 06:A506: E3        .byte $E3   ; 
- D 1 - I - 0x01A517 06:A507: 02        .byte $02   ; 
- D 1 - I - 0x01A518 06:A508: 02        .byte $02   ; 
- D 1 - I - 0x01A519 06:A509: E4        .byte $E4   ; 
- D 1 - I - 0x01A51A 06:A50A: B1        .byte $B1   ; 
- D 1 - I - 0x01A51B 06:A50B: FE        .byte $FE   ; 
- D 1 - I - 0x01A51C 06:A50C: 02        .byte $02   ; 
- D 1 - I - 0x01A51D 06:A50D: D6        .byte $D6   ; 
- D 1 - I - 0x01A51E 06:A50E: 10        .byte $10   ; 
- D 1 - I - 0x01A51F 06:A50F: E4        .byte $E4   ; 
- D 1 - I - 0x01A520 06:A510: FB        .byte $FB   ; 
- D 1 - I - 0x01A521 06:A511: 90        .byte $90   ; 
- D 1 - I - 0x01A522 06:A512: FE        .byte $FE   ; 
- D 1 - I - 0x01A523 06:A513: 0D        .byte $0D   ; 
- D 1 - I - 0x01A524 06:A514: 70        .byte $70   ; 
- D 1 - I - 0x01A525 06:A515: 70        .byte $70   ; 
- D 1 - I - 0x01A526 06:A516: 70        .byte $70   ; 
- D 1 - I - 0x01A527 06:A517: FB        .byte $FB   ; 
- D 1 - I - 0x01A528 06:A518: 90        .byte $90   ; 
- D 1 - I - 0x01A529 06:A519: FE        .byte $FE   ; 
- D 1 - I - 0x01A52A 06:A51A: 10        .byte $10   ; 
- D 1 - I - 0x01A52B 06:A51B: E3        .byte $E3   ; 
- D 1 - I - 0x01A52C 06:A51C: FB        .byte $FB   ; 
- D 1 - I - 0x01A52D 06:A51D: 40        .byte $40   ; 
- D 1 - I - 0x01A52E 06:A51E: FE        .byte $FE   ; 
- D 1 - I - 0x01A52F 06:A51F: 08        .byte $08   ; 
- D 1 - I - 0x01A530 06:A520: FB        .byte $FB   ; 
- D 1 - I - 0x01A531 06:A521: 50        .byte $50   ; 
- D 1 - I - 0x01A532 06:A522: FE        .byte $FE   ; 
- D 1 - I - 0x01A533 06:A523: 08        .byte $08   ; 
- D 1 - I - 0x01A534 06:A524: FB        .byte $FB   ; 
- D 1 - I - 0x01A535 06:A525: 80        .byte $80   ; 
- D 1 - I - 0x01A536 06:A526: FE        .byte $FE   ; 
- D 1 - I - 0x01A537 06:A527: 08        .byte $08   ; 
- D 1 - I - 0x01A538 06:A528: FB        .byte $FB   ; 
- D 1 - I - 0x01A539 06:A529: B0        .byte $B0   ; 
- D 1 - I - 0x01A53A 06:A52A: FE        .byte $FE   ; 
- D 1 - I - 0x01A53B 06:A52B: 08        .byte $08   ; 
- D 1 - I - 0x01A53C 06:A52C: FD        .byte $FD   ; 
- D 1 - I - 0x01A53D 06:A52D: 68 A5     .word sub_FD_A568
- D 1 - I - 0x01A53F 06:A52F: C1        .byte $C1   ; 
- D 1 - I - 0x01A540 06:A530: 90        .byte $90   ; 
- D 1 - I - 0x01A541 06:A531: 40        .byte $40   ; 
- D 1 - I - 0x01A542 06:A532: 71        .byte $71   ; 
- D 1 - I - 0x01A543 06:A533: E3        .byte $E3   ; 
- D 1 - I - 0x01A544 06:A534: 00        .byte $00   ; 
- D 1 - I - 0x01A545 06:A535: D6        .byte $D6   ; 
- D 1 - I - 0x01A546 06:A536: 10        .byte $10   ; 
- D 1 - I - 0x01A547 06:A537: E4        .byte $E4   ; 
- D 1 - I - 0x01A548 06:A538: B2        .byte $B2   ; 
- D 1 - I - 0x01A549 06:A539: FD        .byte $FD   ; 
- D 1 - I - 0x01A54A 06:A53A: 68 A5     .word sub_FD_A568
- D 1 - I - 0x01A54C 06:A53C: C5        .byte $C5   ; 
- D 1 - I - 0x01A54D 06:A53D: 70        .byte $70   ; 
- D 1 - I - 0x01A54E 06:A53E: E3        .byte $E3   ; 
- D 1 - I - 0x01A54F 06:A53F: 01        .byte $01   ; 
- D 1 - I - 0x01A550 06:A540: C0        .byte $C0   ; 
- D 1 - I - 0x01A551 06:A541: FE        .byte $FE   ; 
- D 1 - I - 0x01A552 06:A542: FF        .byte $FF   ; 
- D 1 - I - 0x01A553 06:A543: AD A4     .word loc_FF_A4AD



sub_FD_A545:
- D 1 - I - 0x01A555 06:A545: D6        .byte $D6   ; 
- D 1 - I - 0x01A556 06:A546: 00        .byte $00   ; 
- D 1 - I - 0x01A557 06:A547: E4        .byte $E4   ; 
- D 1 - I - 0x01A558 06:A548: 80        .byte $80   ; 
- D 1 - I - 0x01A559 06:A549: D6        .byte $D6   ; 
- D 1 - I - 0x01A55A 06:A54A: 10        .byte $10   ; 
- D 1 - I - 0x01A55B 06:A54B: 90        .byte $90   ; 
- D 1 - I - 0x01A55C 06:A54C: 91        .byte $91   ; 
- D 1 - I - 0x01A55D 06:A54D: E3        .byte $E3   ; 
- D 1 - I - 0x01A55E 06:A54E: 92        .byte $92   ; 
- D 1 - I - 0x01A55F 06:A54F: 40        .byte $40   ; 
- D 1 - I - 0x01A560 06:A550: 72        .byte $72   ; 
- D 1 - I - 0x01A561 06:A551: 82        .byte $82   ; 
- D 1 - I - 0x01A562 06:A552: 91        .byte $91   ; 
- D 1 - I - 0x01A563 06:A553: FB        .byte $FB   ; 
- D 1 - I - 0x01A564 06:A554: E4        .byte $E4   ; 
- D 1 - I - 0x01A565 06:A555: 91        .byte $91   ; 
- D 1 - I - 0x01A566 06:A556: 91        .byte $91   ; 
- D 1 - I - 0x01A567 06:A557: E3        .byte $E3   ; 
- D 1 - I - 0x01A568 06:A558: 92        .byte $92   ; 
- D 1 - I - 0x01A569 06:A559: 40        .byte $40   ; 
- D 1 - I - 0x01A56A 06:A55A: 72        .byte $72   ; 
- D 1 - I - 0x01A56B 06:A55B: 82        .byte $82   ; 
- D 1 - I - 0x01A56C 06:A55C: 91        .byte $91   ; 
- D 1 - I - 0x01A56D 06:A55D: FE        .byte $FE   ; 
- D 1 - I - 0x01A56E 06:A55E: 02        .byte $02   ; 
- D 1 - I - 0x01A56F 06:A55F: E4        .byte $E4   ; 
- D 1 - I - 0x01A570 06:A560: 91        .byte $91   ; 
- D 1 - I - 0x01A571 06:A561: 91        .byte $91   ; 
- D 1 - I - 0x01A572 06:A562: E3        .byte $E3   ; 
- D 1 - I - 0x01A573 06:A563: 92        .byte $92   ; 
- D 1 - I - 0x01A574 06:A564: 40        .byte $40   ; 
- D 1 - I - 0x01A575 06:A565: 72        .byte $72   ; 
- D 1 - I - 0x01A576 06:A566: 80        .byte $80   ; 
- D 1 - I - 0x01A577 06:A567: FD        .byte $FD   ; 
sub_FD_A568:
- D 1 - I - 0x01A578 06:A568: D6        .byte $D6   ; 
- D 1 - I - 0x01A579 06:A569: 0D        .byte $0D   ; 
- D 1 - I - 0x01A57A 06:A56A: E4        .byte $E4   ; 
- D 1 - I - 0x01A57B 06:A56B: 90        .byte $90   ; 
- D 1 - I - 0x01A57C 06:A56C: 90        .byte $90   ; 
- D 1 - I - 0x01A57D 06:A56D: 70        .byte $70   ; 
- D 1 - I - 0x01A57E 06:A56E: 70        .byte $70   ; 
- D 1 - I - 0x01A57F 06:A56F: 91        .byte $91   ; 
- D 1 - I - 0x01A580 06:A570: E4        .byte $E4   ; 
- D 1 - I - 0x01A581 06:A571: 90        .byte $90   ; 
- D 1 - I - 0x01A582 06:A572: E5        .byte $E5   ; 
- D 1 - I - 0x01A583 06:A573: 91        .byte $91   ; 
- D 1 - I - 0x01A584 06:A574: 80        .byte $80   ; 
- D 1 - I - 0x01A585 06:A575: 71        .byte $71   ; 
- D 1 - I - 0x01A586 06:A576: 40        .byte $40   ; 
- D 1 - I - 0x01A587 06:A577: D6        .byte $D6   ; 
- D 1 - I - 0x01A588 06:A578: 10        .byte $10   ; 
- D 1 - I - 0x01A589 06:A579: 72        .byte $72   ; 
- D 1 - I - 0x01A58A 06:A57A: D6        .byte $D6   ; 
- D 1 - I - 0x01A58B 06:A57B: 0D        .byte $0D   ; 
- D 1 - I - 0x01A58C 06:A57C: E4        .byte $E4   ; 
- D 1 - I - 0x01A58D 06:A57D: 90        .byte $90   ; 
- D 1 - I - 0x01A58E 06:A57E: 90        .byte $90   ; 
- D 1 - I - 0x01A58F 06:A57F: 70        .byte $70   ; 
- D 1 - I - 0x01A590 06:A580: 70        .byte $70   ; 
- D 1 - I - 0x01A591 06:A581: 91        .byte $91   ; 
- D 1 - I - 0x01A592 06:A582: FD        .byte $FD   ; 



_off014_2A_A583_03:
loc_FF_A583:
- D 1 - I - 0x01A593 06:A583: D6        .byte $D6   ; 
- D 1 - I - 0x01A594 06:A584: FB        .byte $FB   ; 
- D 1 - I - 0x01A595 06:A585: B0        .byte $B0   ; 
- D 1 - I - 0x01A596 06:A586: B0        .byte $B0   ; 
- D 1 - I - 0x01A597 06:A587: C0        .byte $C0   ; 
- D 1 - I - 0x01A598 06:A588: C0        .byte $C0   ; 
- D 1 - I - 0x01A599 06:A589: B0        .byte $B0   ; 
- D 1 - I - 0x01A59A 06:A58A: B0        .byte $B0   ; 
- D 1 - I - 0x01A59B 06:A58B: C0        .byte $C0   ; 
- D 1 - I - 0x01A59C 06:A58C: C0        .byte $C0   ; 
- D 1 - I - 0x01A59D 06:A58D: B0        .byte $B0   ; 
- D 1 - I - 0x01A59E 06:A58E: C0        .byte $C0   ; 
- D 1 - I - 0x01A59F 06:A58F: C0        .byte $C0   ; 
- D 1 - I - 0x01A5A0 06:A590: B0        .byte $B0   ; 
- D 1 - I - 0x01A5A1 06:A591: C0        .byte $C0   ; 
- D 1 - I - 0x01A5A2 06:A592: C0        .byte $C0   ; 
- D 1 - I - 0x01A5A3 06:A593: B0        .byte $B0   ; 
- D 1 - I - 0x01A5A4 06:A594: B0        .byte $B0   ; 
- D 1 - I - 0x01A5A5 06:A595: FE        .byte $FE   ; 
- D 1 - I - 0x01A5A6 06:A596: 03        .byte $03   ; 
- D 1 - I - 0x01A5A7 06:A597: A0        .byte $A0   ; 
- D 1 - I - 0x01A5A8 06:A598: A0        .byte $A0   ; 
- D 1 - I - 0x01A5A9 06:A599: 23        .byte $23   ; 
- D 1 - I - 0x01A5AA 06:A59A: 11        .byte $11   ; 
- D 1 - I - 0x01A5AB 06:A59B: C1        .byte $C1   ; 
- D 1 - I - 0x01A5AC 06:A59C: 11        .byte $11   ; 
- D 1 - I - 0x01A5AD 06:A59D: A0        .byte $A0   ; 
- D 1 - I - 0x01A5AE 06:A59E: A0        .byte $A0   ; 
- D 1 - I - 0x01A5AF 06:A59F: C0        .byte $C0   ; 
- D 1 - I - 0x01A5B0 06:A5A0: B0        .byte $B0   ; 
- D 1 - I - 0x01A5B1 06:A5A1: D6        .byte $D6   ; 
- D 1 - I - 0x01A5B2 06:A5A2: FD        .byte $FD   ; 
- D 1 - I - 0x01A5B3 06:A5A3: 4D A6     .word sub_FD_A64D
- D 1 - I - 0x01A5B5 06:A5A5: 10        .byte $10   ; 
- D 1 - I - 0x01A5B6 06:A5A6: 10        .byte $10   ; 
- D 1 - I - 0x01A5B7 06:A5A7: FD        .byte $FD   ; 
- D 1 - I - 0x01A5B8 06:A5A8: 4D A6     .word sub_FD_A64D
- D 1 - I - 0x01A5BA 06:A5AA: A0        .byte $A0   ; 
- D 1 - I - 0x01A5BB 06:A5AB: 10        .byte $10   ; 
- D 1 - I - 0x01A5BC 06:A5AC: FB        .byte $FB   ; 
- D 1 - I - 0x01A5BD 06:A5AD: D1        .byte $D1   ; 
- D 1 - I - 0x01A5BE 06:A5AE: B1        .byte $B1   ; 
- D 1 - I - 0x01A5BF 06:A5AF: 2F        .byte $2F   ; 
- D 1 - I - 0x01A5C0 06:A5B0: B1        .byte $B1   ; 
- D 1 - I - 0x01A5C1 06:A5B1: 2F        .byte $2F   ; 
- D 1 - I - 0x01A5C2 06:A5B2: D6        .byte $D6   ; 
- D 1 - I - 0x01A5C3 06:A5B3: A1        .byte $A1   ; 
- D 1 - I - 0x01A5C4 06:A5B4: B1        .byte $B1   ; 
- D 1 - I - 0x01A5C5 06:A5B5: 01        .byte $01   ; 
- D 1 - I - 0x01A5C6 06:A5B6: B0        .byte $B0   ; 
- D 1 - I - 0x01A5C7 06:A5B7: A0        .byte $A0   ; 
- D 1 - I - 0x01A5C8 06:A5B8: A0        .byte $A0   ; 
- D 1 - I - 0x01A5C9 06:A5B9: 10        .byte $10   ; 
- D 1 - I - 0x01A5CA 06:A5BA: B2        .byte $B2   ; 
- D 1 - I - 0x01A5CB 06:A5BB: B1        .byte $B1   ; 
- D 1 - I - 0x01A5CC 06:A5BC: B0        .byte $B0   ; 
- D 1 - I - 0x01A5CD 06:A5BD: A1        .byte $A1   ; 
- D 1 - I - 0x01A5CE 06:A5BE: B1        .byte $B1   ; 
- D 1 - I - 0x01A5CF 06:A5BF: E3        .byte $E3   ; 
- D 1 - I - 0x01A5D0 06:A5C0: 70        .byte $70   ; 
- D 1 - I - 0x01A5D1 06:A5C1: 70        .byte $70   ; 
- D 1 - I - 0x01A5D2 06:A5C2: 90        .byte $90   ; 
- D 1 - I - 0x01A5D3 06:A5C3: 90        .byte $90   ; 
- D 1 - I - 0x01A5D4 06:A5C4: D6        .byte $D6   ; 
- D 1 - I - 0x01A5D5 06:A5C5: 10        .byte $10   ; 
- D 1 - I - 0x01A5D6 06:A5C6: B0        .byte $B0   ; 
- D 1 - I - 0x01A5D7 06:A5C7: D1        .byte $D1   ; 
- D 1 - I - 0x01A5D8 06:A5C8: B1        .byte $B1   ; 
- D 1 - I - 0x01A5D9 06:A5C9: 2F        .byte $2F   ; 
- D 1 - I - 0x01A5DA 06:A5CA: B1        .byte $B1   ; 
- D 1 - I - 0x01A5DB 06:A5CB: 2F        .byte $2F   ; 
- D 1 - I - 0x01A5DC 06:A5CC: D6        .byte $D6   ; 
- D 1 - I - 0x01A5DD 06:A5CD: A1        .byte $A1   ; 
- D 1 - I - 0x01A5DE 06:A5CE: B1        .byte $B1   ; 
- D 1 - I - 0x01A5DF 06:A5CF: 11        .byte $11   ; 
- D 1 - I - 0x01A5E0 06:A5D0: B2        .byte $B2   ; 
- D 1 - I - 0x01A5E1 06:A5D1: A0        .byte $A0   ; 
- D 1 - I - 0x01A5E2 06:A5D2: B1        .byte $B1   ; 
- D 1 - I - 0x01A5E3 06:A5D3: B1        .byte $B1   ; 
- D 1 - I - 0x01A5E4 06:A5D4: E3        .byte $E3   ; 
- D 1 - I - 0x01A5E5 06:A5D5: 70        .byte $70   ; 
- D 1 - I - 0x01A5E6 06:A5D6: 70        .byte $70   ; 
- D 1 - I - 0x01A5E7 06:A5D7: 91        .byte $91   ; 
- D 1 - I - 0x01A5E8 06:A5D8: E2        .byte $E2   ; 
- D 1 - I - 0x01A5E9 06:A5D9: 00        .byte $00   ; 
- D 1 - I - 0x01A5EA 06:A5DA: D6        .byte $D6   ; 
- D 1 - I - 0x01A5EB 06:A5DB: 10        .byte $10   ; 
- D 1 - I - 0x01A5EC 06:A5DC: 10        .byte $10   ; 
- D 1 - I - 0x01A5ED 06:A5DD: E2        .byte $E2   ; 
- D 1 - I - 0x01A5EE 06:A5DE: 00        .byte $00   ; 
- D 1 - I - 0x01A5EF 06:A5DF: D6        .byte $D6   ; 
- D 1 - I - 0x01A5F0 06:A5E0: 10        .byte $10   ; 
- D 1 - I - 0x01A5F1 06:A5E1: 10        .byte $10   ; 
- D 1 - I - 0x01A5F2 06:A5E2: E3        .byte $E3   ; 
- D 1 - I - 0x01A5F3 06:A5E3: B1        .byte $B1   ; 
- D 1 - I - 0x01A5F4 06:A5E4: FE        .byte $FE   ; 
- D 1 - I - 0x01A5F5 06:A5E5: 02        .byte $02   ; 
- D 1 - I - 0x01A5F6 06:A5E6: D6        .byte $D6   ; 
- D 1 - I - 0x01A5F7 06:A5E7: E3        .byte $E3   ; 
- D 1 - I - 0x01A5F8 06:A5E8: 91        .byte $91   ; 
- D 1 - I - 0x01A5F9 06:A5E9: D6        .byte $D6   ; 
- D 1 - I - 0x01A5FA 06:A5EA: 00        .byte $00   ; 
- D 1 - I - 0x01A5FB 06:A5EB: 10        .byte $10   ; 
- D 1 - I - 0x01A5FC 06:A5EC: A0        .byte $A0   ; 
- D 1 - I - 0x01A5FD 06:A5ED: A0        .byte $A0   ; 
- D 1 - I - 0x01A5FE 06:A5EE: 10        .byte $10   ; 
- D 1 - I - 0x01A5FF 06:A5EF: 10        .byte $10   ; 
- D 1 - I - 0x01A600 06:A5F0: A0        .byte $A0   ; 
- D 1 - I - 0x01A601 06:A5F1: A0        .byte $A0   ; 
- D 1 - I - 0x01A602 06:A5F2: 10        .byte $10   ; 
- D 1 - I - 0x01A603 06:A5F3: 10        .byte $10   ; 
- D 1 - I - 0x01A604 06:A5F4: A0        .byte $A0   ; 
- D 1 - I - 0x01A605 06:A5F5: E3        .byte $E3   ; 
- D 1 - I - 0x01A606 06:A5F6: 70        .byte $70   ; 
- D 1 - I - 0x01A607 06:A5F7: D6        .byte $D6   ; 
- D 1 - I - 0x01A608 06:A5F8: 10        .byte $10   ; 
- D 1 - I - 0x01A609 06:A5F9: 10        .byte $10   ; 
- D 1 - I - 0x01A60A 06:A5FA: E3        .byte $E3   ; 
- D 1 - I - 0x01A60B 06:A5FB: 91        .byte $91   ; 
- D 1 - I - 0x01A60C 06:A5FC: D6        .byte $D6   ; 
- D 1 - I - 0x01A60D 06:A5FD: 10        .byte $10   ; 
- D 1 - I - 0x01A60E 06:A5FE: 10        .byte $10   ; 
- D 1 - I - 0x01A60F 06:A5FF: A0        .byte $A0   ; 
- D 1 - I - 0x01A610 06:A600: A0        .byte $A0   ; 
- D 1 - I - 0x01A611 06:A601: 10        .byte $10   ; 
- D 1 - I - 0x01A612 06:A602: 10        .byte $10   ; 
- D 1 - I - 0x01A613 06:A603: A0        .byte $A0   ; 
- D 1 - I - 0x01A614 06:A604: A0        .byte $A0   ; 
- D 1 - I - 0x01A615 06:A605: 10        .byte $10   ; 
- D 1 - I - 0x01A616 06:A606: 10        .byte $10   ; 
- D 1 - I - 0x01A617 06:A607: D3        .byte $D3   ; 
- D 1 - I - 0x01A618 06:A608: A0        .byte $A0   ; 
- D 1 - I - 0x01A619 06:A609: A0        .byte $A0   ; 
- D 1 - I - 0x01A61A 06:A60A: D6        .byte $D6   ; 
- D 1 - I - 0x01A61B 06:A60B: A0        .byte $A0   ; 
- D 1 - I - 0x01A61C 06:A60C: A0        .byte $A0   ; 
- D 1 - I - 0x01A61D 06:A60D: A0        .byte $A0   ; 
- D 1 - I - 0x01A61E 06:A60E: A0        .byte $A0   ; 
- D 1 - I - 0x01A61F 06:A60F: B0        .byte $B0   ; 
- D 1 - I - 0x01A620 06:A610: B0        .byte $B0   ; 
- D 1 - I - 0x01A621 06:A611: A0        .byte $A0   ; 
- D 1 - I - 0x01A622 06:A612: B0        .byte $B0   ; 
- D 1 - I - 0x01A623 06:A613: B0        .byte $B0   ; 
- D 1 - I - 0x01A624 06:A614: A0        .byte $A0   ; 
- D 1 - I - 0x01A625 06:A615: A0        .byte $A0   ; 
- D 1 - I - 0x01A626 06:A616: A0        .byte $A0   ; 
- D 1 - I - 0x01A627 06:A617: B0        .byte $B0   ; 
- D 1 - I - 0x01A628 06:A618: B0        .byte $B0   ; 
- D 1 - I - 0x01A629 06:A619: A0        .byte $A0   ; 
- D 1 - I - 0x01A62A 06:A61A: B0        .byte $B0   ; 
- D 1 - I - 0x01A62B 06:A61B: B0        .byte $B0   ; 
- D 1 - I - 0x01A62C 06:A61C: A0        .byte $A0   ; 
- D 1 - I - 0x01A62D 06:A61D: A0        .byte $A0   ; 
- D 1 - I - 0x01A62E 06:A61E: A0        .byte $A0   ; 
- D 1 - I - 0x01A62F 06:A61F: B0        .byte $B0   ; 
- D 1 - I - 0x01A630 06:A620: B0        .byte $B0   ; 
- D 1 - I - 0x01A631 06:A621: A0        .byte $A0   ; 
- D 1 - I - 0x01A632 06:A622: B0        .byte $B0   ; 
- D 1 - I - 0x01A633 06:A623: B0        .byte $B0   ; 
- D 1 - I - 0x01A634 06:A624: A0        .byte $A0   ; 
- D 1 - I - 0x01A635 06:A625: A0        .byte $A0   ; 
- D 1 - I - 0x01A636 06:A626: D4        .byte $D4   ; 
- D 1 - I - 0x01A637 06:A627: 90        .byte $90   ; 
- D 1 - I - 0x01A638 06:A628: 90        .byte $90   ; 
- D 1 - I - 0x01A639 06:A629: 90        .byte $90   ; 
- D 1 - I - 0x01A63A 06:A62A: 80        .byte $80   ; 
- D 1 - I - 0x01A63B 06:A62B: 80        .byte $80   ; 
- D 1 - I - 0x01A63C 06:A62C: 80        .byte $80   ; 
- D 1 - I - 0x01A63D 06:A62D: 70        .byte $70   ; 
- D 1 - I - 0x01A63E 06:A62E: 70        .byte $70   ; 
- D 1 - I - 0x01A63F 06:A62F: 70        .byte $70   ; 
- D 1 - I - 0x01A640 06:A630: 60        .byte $60   ; 
- D 1 - I - 0x01A641 06:A631: 60        .byte $60   ; 
- D 1 - I - 0x01A642 06:A632: 60        .byte $60   ; 
- D 1 - I - 0x01A643 06:A633: D6        .byte $D6   ; 
- D 1 - I - 0x01A644 06:A634: FD        .byte $FD   ; 
- D 1 - I - 0x01A645 06:A635: 6C A6     .word sub_FD_A66C
- D 1 - I - 0x01A647 06:A637: C2        .byte $C2   ; 
- D 1 - I - 0x01A648 06:A638: 90        .byte $90   ; 
- D 1 - I - 0x01A649 06:A639: 40        .byte $40   ; 
- D 1 - I - 0x01A64A 06:A63A: 70        .byte $70   ; 
- D 1 - I - 0x01A64B 06:A63B: C0        .byte $C0   ; 
- D 1 - I - 0x01A64C 06:A63C: E2        .byte $E2   ; 
- D 1 - I - 0x01A64D 06:A63D: 00        .byte $00   ; 
- D 1 - I - 0x01A64E 06:A63E: E3        .byte $E3   ; 
- D 1 - I - 0x01A64F 06:A63F: B2        .byte $B2   ; 
- D 1 - I - 0x01A650 06:A640: FD        .byte $FD   ; 
- D 1 - I - 0x01A651 06:A641: 6C A6     .word sub_FD_A66C
- D 1 - I - 0x01A653 06:A643: C6        .byte $C6   ; 
- D 1 - I - 0x01A654 06:A644: E3        .byte $E3   ; 
- D 1 - I - 0x01A655 06:A645: 70        .byte $70   ; 
- D 1 - I - 0x01A656 06:A646: E2        .byte $E2   ; 
- D 1 - I - 0x01A657 06:A647: 00        .byte $00   ; 
- D 1 - I - 0x01A658 06:A648: C1        .byte $C1   ; 
- D 1 - I - 0x01A659 06:A649: FE        .byte $FE   ; 
- D 1 - I - 0x01A65A 06:A64A: FF        .byte $FF   ; 
- D 1 - I - 0x01A65B 06:A64B: 83 A5     .word loc_FF_A583



sub_FD_A64D:
- D 1 - I - 0x01A65D 06:A64D: FB        .byte $FB   ; 
- D 1 - I - 0x01A65E 06:A64E: B0        .byte $B0   ; 
- D 1 - I - 0x01A65F 06:A64F: B0        .byte $B0   ; 
- D 1 - I - 0x01A660 06:A650: 11        .byte $11   ; 
- D 1 - I - 0x01A661 06:A651: A0        .byte $A0   ; 
- D 1 - I - 0x01A662 06:A652: B1        .byte $B1   ; 
- D 1 - I - 0x01A663 06:A653: 10        .byte $10   ; 
- D 1 - I - 0x01A664 06:A654: B0        .byte $B0   ; 
- D 1 - I - 0x01A665 06:A655: 11        .byte $11   ; 
- D 1 - I - 0x01A666 06:A656: B0        .byte $B0   ; 
- D 1 - I - 0x01A667 06:A657: D4        .byte $D4   ; 
- D 1 - I - 0x01A668 06:A658: 10        .byte $10   ; 
- D 1 - I - 0x01A669 06:A659: 10        .byte $10   ; 
- D 1 - I - 0x01A66A 06:A65A: 10        .byte $10   ; 
- D 1 - I - 0x01A66B 06:A65B: D6        .byte $D6   ; 
- D 1 - I - 0x01A66C 06:A65C: A0        .byte $A0   ; 
- D 1 - I - 0x01A66D 06:A65D: A0        .byte $A0   ; 
- D 1 - I - 0x01A66E 06:A65E: FE        .byte $FE   ; 
- D 1 - I - 0x01A66F 06:A65F: 03        .byte $03   ; 
- D 1 - I - 0x01A670 06:A660: B0        .byte $B0   ; 
- D 1 - I - 0x01A671 06:A661: B0        .byte $B0   ; 
- D 1 - I - 0x01A672 06:A662: 11        .byte $11   ; 
- D 1 - I - 0x01A673 06:A663: A0        .byte $A0   ; 
- D 1 - I - 0x01A674 06:A664: B1        .byte $B1   ; 
- D 1 - I - 0x01A675 06:A665: 10        .byte $10   ; 
- D 1 - I - 0x01A676 06:A666: B0        .byte $B0   ; 
- D 1 - I - 0x01A677 06:A667: 11        .byte $11   ; 
- D 1 - I - 0x01A678 06:A668: B0        .byte $B0   ; 
- D 1 - I - 0x01A679 06:A669: A0        .byte $A0   ; 
- D 1 - I - 0x01A67A 06:A66A: A0        .byte $A0   ; 
- D 1 - I - 0x01A67B 06:A66B: FD        .byte $FD   ; 
sub_FD_A66C:
- D 1 - I - 0x01A67C 06:A66C: E3        .byte $E3   ; 
- D 1 - I - 0x01A67D 06:A66D: 90        .byte $90   ; 
- D 1 - I - 0x01A67E 06:A66E: 90        .byte $90   ; 
- D 1 - I - 0x01A67F 06:A66F: 70        .byte $70   ; 
- D 1 - I - 0x01A680 06:A670: 70        .byte $70   ; 
- D 1 - I - 0x01A681 06:A671: 90        .byte $90   ; 
- D 1 - I - 0x01A682 06:A672: CA        .byte $CA   ; 
- D 1 - I - 0x01A683 06:A673: 90        .byte $90   ; 
- D 1 - I - 0x01A684 06:A674: 90        .byte $90   ; 
- D 1 - I - 0x01A685 06:A675: 70        .byte $70   ; 
- D 1 - I - 0x01A686 06:A676: 70        .byte $70   ; 
- D 1 - I - 0x01A687 06:A677: 90        .byte $90   ; 
- D 1 - I - 0x01A688 06:A678: FD        .byte $FD   ; 



_off014_2B_A679_00:
- D 1 - I - 0x01A689 06:A679: E9        .byte $E9   ; 
- D 1 - I - 0x01A68A 06:A67A: B1        .byte $B1   ; 
- D 1 - I - 0x01A68B 06:A67B: D3        .byte $D3   ; 
- D 1 - I - 0x01A68C 06:A67C: 38        .byte $38   ; 
- D 1 - I - 0x01A68D 06:A67D: 85        .byte $85   ; 
- D 1 - I - 0x01A68E 06:A67E: 16        .byte $16   ; 
- D 1 - I - 0x01A68F 06:A67F: E5        .byte $E5   ; 
- D 1 - I - 0x01A690 06:A680: C1        .byte $C1   ; 
- D 1 - I - 0x01A691 06:A681: A2        .byte $A2   ; 
- D 1 - I - 0x01A692 06:A682: F5        .byte $F5   ; 
- D 1 - I - 0x01A693 06:A683: A0        .byte $A0   ; 
- D 1 - I - 0x01A694 06:A684: F0        .byte $F0   ; 
- D 1 - I - 0x01A695 06:A685: B2        .byte $B2   ; 
- D 1 - I - 0x01A696 06:A686: F5        .byte $F5   ; 
- D 1 - I - 0x01A697 06:A687: B0        .byte $B0   ; 
- D 1 - I - 0x01A698 06:A688: F0        .byte $F0   ; 
- D 1 - I - 0x01A699 06:A689: E4        .byte $E4   ; 
- D 1 - I - 0x01A69A 06:A68A: 02        .byte $02   ; 
- D 1 - I - 0x01A69B 06:A68B: F4        .byte $F4   ; 
- D 1 - I - 0x01A69C 06:A68C: 00        .byte $00   ; 
- D 1 - I - 0x01A69D 06:A68D: F0        .byte $F0   ; 
- D 1 - I - 0x01A69E 06:A68E: 12        .byte $12   ; 
- D 1 - I - 0x01A69F 06:A68F: F5        .byte $F5   ; 
- D 1 - I - 0x01A6A0 06:A690: 10        .byte $10   ; 
- D 1 - I - 0x01A6A1 06:A691: F0        .byte $F0   ; 
- D 1 - I - 0x01A6A2 06:A692: 22        .byte $22   ; 
- D 1 - I - 0x01A6A3 06:A693: F5        .byte $F5   ; 
- D 1 - I - 0x01A6A4 06:A694: 20        .byte $20   ; 
- D 1 - I - 0x01A6A5 06:A695: F0        .byte $F0   ; 
- D 1 - I - 0x01A6A6 06:A696: 32        .byte $32   ; 
- D 1 - I - 0x01A6A7 06:A697: F5        .byte $F5   ; 
- D 1 - I - 0x01A6A8 06:A698: 30        .byte $30   ; 
- D 1 - I - 0x01A6A9 06:A699: F0        .byte $F0   ; 
loc_FF_A69A:
- D 1 - I - 0x01A6AA 06:A69A: EA        .byte $EA   ; 
- D 1 - I - 0x01A6AB 06:A69B: 83        .byte $83   ; 
- D 1 - I - 0x01A6AC 06:A69C: FD        .byte $FD   ; 
- D 1 - I - 0x01A6AD 06:A69D: 43 A7     .word sub_FD_A743
- D 1 - I - 0x01A6AF 06:A69F: 03        .byte $03   ; 
- D 1 - I - 0x01A6B0 06:A6A0: 01        .byte $01   ; 
- D 1 - I - 0x01A6B1 06:A6A1: E7        .byte $E7   ; 
- D 1 - I - 0x01A6B2 06:A6A2: 1C        .byte $1C   ; 
- D 1 - I - 0x01A6B3 06:A6A3: F3        .byte $F3   ; 
- D 1 - I - 0x01A6B4 06:A6A4: E8        .byte $E8   ; 
- D 1 - I - 0x01A6B5 06:A6A5: 18        .byte $18   ; 
- D 1 - I - 0x01A6B6 06:A6A6: E2        .byte $E2   ; 
- D 1 - I - 0x01A6B7 06:A6A7: C1        .byte $C1   ; 
- D 1 - I - 0x01A6B8 06:A6A8: 71        .byte $71   ; 
- D 1 - I - 0x01A6B9 06:A6A9: 31        .byte $31   ; 
- D 1 - I - 0x01A6BA 06:A6AA: 01        .byte $01   ; 
- D 1 - I - 0x01A6BB 06:A6AB: 31        .byte $31   ; 
- D 1 - I - 0x01A6BC 06:A6AC: 01        .byte $01   ; 
- D 1 - I - 0x01A6BD 06:A6AD: E3        .byte $E3   ; 
- D 1 - I - 0x01A6BE 06:A6AE: 71        .byte $71   ; 
- D 1 - I - 0x01A6BF 06:A6AF: E2        .byte $E2   ; 
- D 1 - I - 0x01A6C0 06:A6B0: 01        .byte $01   ; 
- D 1 - I - 0x01A6C1 06:A6B1: E3        .byte $E3   ; 
- D 1 - I - 0x01A6C2 06:A6B2: 71        .byte $71   ; 
- D 1 - I - 0x01A6C3 06:A6B3: FD        .byte $FD   ; 
- D 1 - I - 0x01A6C4 06:A6B4: 43 A7     .word sub_FD_A743
- D 1 - I - 0x01A6C6 06:A6B6: E7        .byte $E7   ; 
- D 1 - I - 0x01A6C7 06:A6B7: 1C        .byte $1C   ; 
- D 1 - I - 0x01A6C8 06:A6B8: E6        .byte $E6   ; 
- D 1 - I - 0x01A6C9 06:A6B9: 06        .byte $06   ; 
- D 1 - I - 0x01A6CA 06:A6BA: E2        .byte $E2   ; 
- D 1 - I - 0x01A6CB 06:A6BB: 34        .byte $34   ; 
- D 1 - I - 0x01A6CC 06:A6BC: E3        .byte $E3   ; 
- D 1 - I - 0x01A6CD 06:A6BD: B6        .byte $B6   ; 
- D 1 - I - 0x01A6CE 06:A6BE: EC        .byte $EC   ; 
- D 1 - I - 0x01A6CF 06:A6BF: 00        .byte $00   ; 
- D 1 - I - 0x01A6D0 06:A6C0: E9        .byte $E9   ; 
- D 1 - I - 0x01A6D1 06:A6C1: B1        .byte $B1   ; 
- D 1 - I - 0x01A6D2 06:A6C2: D6        .byte $D6   ; 
- D 1 - I - 0x01A6D3 06:A6C3: 30        .byte $30   ; 
- D 1 - I - 0x01A6D4 06:A6C4: 18        .byte $18   ; 
- D 1 - I - 0x01A6D5 06:A6C5: 24        .byte $24   ; 
- D 1 - I - 0x01A6D6 06:A6C6: EB        .byte $EB   ; 
- D 1 - I - 0x01A6D7 06:A6C7: 50        .byte $50   ; 
- D 1 - I - 0x01A6D8 06:A6C8: 72        .byte $72   ; 
- D 1 - I - 0x01A6D9 06:A6C9: E3        .byte $E3   ; 
- D 1 - I - 0x01A6DA 06:A6CA: 48        .byte $48   ; 
- D 1 - I - 0x01A6DB 06:A6CB: E6        .byte $E6   ; 
- D 1 - I - 0x01A6DC 06:A6CC: 03        .byte $03   ; 
- D 1 - I - 0x01A6DD 06:A6CD: 53        .byte $53   ; 
- D 1 - I - 0x01A6DE 06:A6CE: 7D        .byte $7D   ; 
- D 1 - I - 0x01A6DF 06:A6CF: 0B        .byte $0B   ; 
- D 1 - I - 0x01A6E0 06:A6D0: E6        .byte $E6   ; 
- D 1 - I - 0x01A6E1 06:A6D1: 0C        .byte $0C   ; 
- D 1 - I - 0x01A6E2 06:A6D2: 25        .byte $25   ; 
- D 1 - I - 0x01A6E3 06:A6D3: 45        .byte $45   ; 
- D 1 - I - 0x01A6E4 06:A6D4: E9        .byte $E9   ; 
- D 1 - I - 0x01A6E5 06:A6D5: 31        .byte $31   ; 
- D 1 - I - 0x01A6E6 06:A6D6: E9        .byte $E9   ; 
- D 1 - I - 0x01A6E7 06:A6D7: B0        .byte $B0   ; 
- D 1 - I - 0x01A6E8 06:A6D8: F1        .byte $F1   ; 
- D 1 - I - 0x01A6E9 06:A6D9: E6        .byte $E6   ; 
- D 1 - I - 0x01A6EA 06:A6DA: 06        .byte $06   ; 
- D 1 - I - 0x01A6EB 06:A6DB: E2        .byte $E2   ; 
- D 1 - I - 0x01A6EC 06:A6DC: 48        .byte $48   ; 
- D 1 - I - 0x01A6ED 06:A6DD: E6        .byte $E6   ; 
- D 1 - I - 0x01A6EE 06:A6DE: 03        .byte $03   ; 
- D 1 - I - 0x01A6EF 06:A6DF: 53        .byte $53   ; 
- D 1 - I - 0x01A6F0 06:A6E0: 77        .byte $77   ; 
- D 1 - I - 0x01A6F1 06:A6E1: 71        .byte $71   ; 
- D 1 - I - 0x01A6F2 06:A6E2: E1        .byte $E1   ; 
- D 1 - I - 0x01A6F3 06:A6E3: 01        .byte $01   ; 
- D 1 - I - 0x01A6F4 06:A6E4: 21        .byte $21   ; 
- D 1 - I - 0x01A6F5 06:A6E5: 0B        .byte $0B   ; 
- D 1 - I - 0x01A6F6 06:A6E6: E2        .byte $E2   ; 
- D 1 - I - 0x01A6F7 06:A6E7: 9B        .byte $9B   ; 
- D 1 - I - 0x01A6F8 06:A6E8: 6B        .byte $6B   ; 
- D 1 - I - 0x01A6F9 06:A6E9: F0        .byte $F0   ; 
- D 1 - I - 0x01A6FA 06:A6EA: B7        .byte $B7   ; 
- D 1 - I - 0x01A6FB 06:A6EB: B1        .byte $B1   ; 
- D 1 - I - 0x01A6FC 06:A6EC: B1        .byte $B1   ; 
- D 1 - I - 0x01A6FD 06:A6ED: BB        .byte $BB   ; 
- D 1 - I - 0x01A6FE 06:A6EE: B7        .byte $B7   ; 
- D 1 - I - 0x01A6FF 06:A6EF: B1        .byte $B1   ; 
- D 1 - I - 0x01A700 06:A6F0: B1        .byte $B1   ; 
- D 1 - I - 0x01A701 06:A6F1: BB        .byte $BB   ; 
- D 1 - I - 0x01A702 06:A6F2: EB        .byte $EB   ; 
- D 1 - I - 0x01A703 06:A6F3: 00        .byte $00   ; 
- D 1 - I - 0x01A704 06:A6F4: F0        .byte $F0   ; 
- D 1 - I - 0x01A705 06:A6F5: E6        .byte $E6   ; 
- D 1 - I - 0x01A706 06:A6F6: 01        .byte $01   ; 
- D 1 - I - 0x01A707 06:A6F7: C0        .byte $C0   ; 
- D 1 - I - 0x01A708 06:A6F8: ED        .byte $ED   ; 
- D 1 - I - 0x01A709 06:A6F9: 82        .byte $82   ; 
- D 1 - I - 0x01A70A 06:A6FA: E9        .byte $E9   ; 
- D 1 - I - 0x01A70B 06:A6FB: B1        .byte $B1   ; 
- D 1 - I - 0x01A70C 06:A6FC: D3        .byte $D3   ; 
- D 1 - I - 0x01A70D 06:A6FD: 78        .byte $78   ; 
- D 1 - I - 0x01A70E 06:A6FE: 85        .byte $85   ; 
- D 1 - I - 0x01A70F 06:A6FF: 25        .byte $25   ; 
- D 1 - I - 0x01A710 06:A700: E6        .byte $E6   ; 
- D 1 - I - 0x01A711 06:A701: 05        .byte $05   ; 
- D 1 - I - 0x01A712 06:A702: E5        .byte $E5   ; 
- D 1 - I - 0x01A713 06:A703: B0        .byte $B0   ; 
- D 1 - I - 0x01A714 06:A704: E6        .byte $E6   ; 
- D 1 - I - 0x01A715 06:A705: 03        .byte $03   ; 
- D 1 - I - 0x01A716 06:A706: E4        .byte $E4   ; 
- D 1 - I - 0x01A717 06:A707: B1        .byte $B1   ; 
- D 1 - I - 0x01A718 06:A708: C0        .byte $C0   ; 
- D 1 - I - 0x01A719 06:A709: F4        .byte $F4   ; 
- D 1 - I - 0x01A71A 06:A70A: B0        .byte $B0   ; 
- D 1 - I - 0x01A71B 06:A70B: F0        .byte $F0   ; 
- D 1 - I - 0x01A71C 06:A70C: B1        .byte $B1   ; 
- D 1 - I - 0x01A71D 06:A70D: C0        .byte $C0   ; 
- D 1 - I - 0x01A71E 06:A70E: F4        .byte $F4   ; 
- D 1 - I - 0x01A71F 06:A70F: B0        .byte $B0   ; 
- D 1 - I - 0x01A720 06:A710: F0        .byte $F0   ; 
- D 1 - I - 0x01A721 06:A711: E5        .byte $E5   ; 
- D 1 - I - 0x01A722 06:A712: B1        .byte $B1   ; 
- D 1 - I - 0x01A723 06:A713: C0        .byte $C0   ; 
- D 1 - I - 0x01A724 06:A714: F4        .byte $F4   ; 
- D 1 - I - 0x01A725 06:A715: B0        .byte $B0   ; 
- D 1 - I - 0x01A726 06:A716: F0        .byte $F0   ; 
- D 1 - I - 0x01A727 06:A717: E4        .byte $E4   ; 
- D 1 - I - 0x01A728 06:A718: B1        .byte $B1   ; 
- D 1 - I - 0x01A729 06:A719: C0        .byte $C0   ; 
- D 1 - I - 0x01A72A 06:A71A: F4        .byte $F4   ; 
- D 1 - I - 0x01A72B 06:A71B: B0        .byte $B0   ; 
- D 1 - I - 0x01A72C 06:A71C: F0        .byte $F0   ; 
- D 1 - I - 0x01A72D 06:A71D: E5        .byte $E5   ; 
- D 1 - I - 0x01A72E 06:A71E: B1        .byte $B1   ; 
- D 1 - I - 0x01A72F 06:A71F: C0        .byte $C0   ; 
- D 1 - I - 0x01A730 06:A720: F4        .byte $F4   ; 
- D 1 - I - 0x01A731 06:A721: B0        .byte $B0   ; 
- D 1 - I - 0x01A732 06:A722: F0        .byte $F0   ; 
- D 1 - I - 0x01A733 06:A723: E4        .byte $E4   ; 
- D 1 - I - 0x01A734 06:A724: B1        .byte $B1   ; 
- D 1 - I - 0x01A735 06:A725: D3        .byte $D3   ; 
- D 1 - I - 0x01A736 06:A726: 79        .byte $79   ; 
- D 1 - I - 0x01A737 06:A727: 86        .byte $86   ; 
- D 1 - I - 0x01A738 06:A728: 25        .byte $25   ; 
- D 1 - I - 0x01A739 06:A729: E5        .byte $E5   ; 
- D 1 - I - 0x01A73A 06:A72A: 91        .byte $91   ; 
- D 1 - I - 0x01A73B 06:A72B: E4        .byte $E4   ; 
- D 1 - I - 0x01A73C 06:A72C: 91        .byte $91   ; 
- D 1 - I - 0x01A73D 06:A72D: E5        .byte $E5   ; 
- D 1 - I - 0x01A73E 06:A72E: 91        .byte $91   ; 
- D 1 - I - 0x01A73F 06:A72F: A1        .byte $A1   ; 
- D 1 - I - 0x01A740 06:A730: E4        .byte $E4   ; 
- D 1 - I - 0x01A741 06:A731: A1        .byte $A1   ; 
- D 1 - I - 0x01A742 06:A732: E5        .byte $E5   ; 
- D 1 - I - 0x01A743 06:A733: A1        .byte $A1   ; 
- D 1 - I - 0x01A744 06:A734: E4        .byte $E4   ; 
- D 1 - I - 0x01A745 06:A735: B1        .byte $B1   ; 
- D 1 - I - 0x01A746 06:A736: A1        .byte $A1   ; 
- D 1 - I - 0x01A747 06:A737: 91        .byte $91   ; 
- D 1 - I - 0x01A748 06:A738: 81        .byte $81   ; 
- D 1 - I - 0x01A749 06:A739: 71        .byte $71   ; 
- D 1 - I - 0x01A74A 06:A73A: 61        .byte $61   ; 
- D 1 - I - 0x01A74B 06:A73B: EA        .byte $EA   ; 
- D 1 - I - 0x01A74C 06:A73C: 00        .byte $00   ; 
- D 1 - I - 0x01A74D 06:A73D: ED        .byte $ED   ; 
- D 1 - I - 0x01A74E 06:A73E: 00        .byte $00   ; 
- D 1 - I - 0x01A74F 06:A73F: FE        .byte $FE   ; 
- D 1 - I - 0x01A750 06:A740: FF        .byte $FF   ; 
- D 1 - I - 0x01A751 06:A741: 9A A6     .word loc_FF_A69A



sub_FD_A743:
- D 1 - I - 0x01A753 06:A743: EC        .byte $EC   ; 
- D 1 - I - 0x01A754 06:A744: 05        .byte $05   ; 
- D 1 - I - 0x01A755 06:A745: E9        .byte $E9   ; 
- D 1 - I - 0x01A756 06:A746: 7D        .byte $7D   ; 
- D 1 - I - 0x01A757 06:A747: D3        .byte $D3   ; 
- D 1 - I - 0x01A758 06:A748: 30        .byte $30   ; 
- D 1 - I - 0x01A759 06:A749: 1C        .byte $1C   ; 
- D 1 - I - 0x01A75A 06:A74A: 12        .byte $12   ; 
- D 1 - I - 0x01A75B 06:A74B: E3        .byte $E3   ; 
- D 1 - I - 0x01A75C 06:A74C: 63        .byte $63   ; 
- D 1 - I - 0x01A75D 06:A74D: E6        .byte $E6   ; 
- D 1 - I - 0x01A75E 06:A74E: 06        .byte $06   ; 
- D 1 - I - 0x01A75F 06:A74F: 79        .byte $79   ; 
- D 1 - I - 0x01A760 06:A750: E6        .byte $E6   ; 
- D 1 - I - 0x01A761 06:A751: 03        .byte $03   ; 
- D 1 - I - 0x01A762 06:A752: E7        .byte $E7   ; 
- D 1 - I - 0x01A763 06:A753: 1E        .byte $1E   ; 
- D 1 - I - 0x01A764 06:A754: E5        .byte $E5   ; 
- D 1 - I - 0x01A765 06:A755: 43        .byte $43   ; 
- D 1 - I - 0x01A766 06:A756: 41        .byte $41   ; 
- D 1 - I - 0x01A767 06:A757: E4        .byte $E4   ; 
- D 1 - I - 0x01A768 06:A758: 41        .byte $41   ; 
- D 1 - I - 0x01A769 06:A759: E5        .byte $E5   ; 
- D 1 - I - 0x01A76A 06:A75A: 43        .byte $43   ; 
- D 1 - I - 0x01A76B 06:A75B: 41        .byte $41   ; 
- D 1 - I - 0x01A76C 06:A75C: E4        .byte $E4   ; 
- D 1 - I - 0x01A76D 06:A75D: 43        .byte $43   ; 
- D 1 - I - 0x01A76E 06:A75E: E5        .byte $E5   ; 
- D 1 - I - 0x01A76F 06:A75F: 21        .byte $21   ; 
- D 1 - I - 0x01A770 06:A760: E4        .byte $E4   ; 
- D 1 - I - 0x01A771 06:A761: 23        .byte $23   ; 
- D 1 - I - 0x01A772 06:A762: E7        .byte $E7   ; 
- D 1 - I - 0x01A773 06:A763: 1C        .byte $1C   ; 
- D 1 - I - 0x01A774 06:A764: E3        .byte $E3   ; 
- D 1 - I - 0x01A775 06:A765: 23        .byte $23   ; 
- D 1 - I - 0x01A776 06:A766: 33        .byte $33   ; 
- D 1 - I - 0x01A777 06:A767: E7        .byte $E7   ; 
- D 1 - I - 0x01A778 06:A768: 1E        .byte $1E   ; 
- D 1 - I - 0x01A779 06:A769: E5        .byte $E5   ; 
- D 1 - I - 0x01A77A 06:A76A: 03        .byte $03   ; 
- D 1 - I - 0x01A77B 06:A76B: 03        .byte $03   ; 
- D 1 - I - 0x01A77C 06:A76C: 03        .byte $03   ; 
- D 1 - I - 0x01A77D 06:A76D: 03        .byte $03   ; 
- D 1 - I - 0x01A77E 06:A76E: 03        .byte $03   ; 
- D 1 - I - 0x01A77F 06:A76F: 01        .byte $01   ; 
- D 1 - I - 0x01A780 06:A770: E4        .byte $E4   ; 
- D 1 - I - 0x01A781 06:A771: 01        .byte $01   ; 
- D 1 - I - 0x01A782 06:A772: E5        .byte $E5   ; 
- D 1 - I - 0x01A783 06:A773: 03        .byte $03   ; 
- D 1 - I - 0x01A784 06:A774: 01        .byte $01   ; 
- D 1 - I - 0x01A785 06:A775: E4        .byte $E4   ; 
- D 1 - I - 0x01A786 06:A776: 03        .byte $03   ; 
- D 1 - I - 0x01A787 06:A777: E5        .byte $E5   ; 
- D 1 - I - 0x01A788 06:A778: 21        .byte $21   ; 
- D 1 - I - 0x01A789 06:A779: E4        .byte $E4   ; 
- D 1 - I - 0x01A78A 06:A77A: 23        .byte $23   ; 
- D 1 - I - 0x01A78B 06:A77B: E7        .byte $E7   ; 
- D 1 - I - 0x01A78C 06:A77C: 1C        .byte $1C   ; 
- D 1 - I - 0x01A78D 06:A77D: E3        .byte $E3   ; 
- D 1 - I - 0x01A78E 06:A77E: 63        .byte $63   ; 
- D 1 - I - 0x01A78F 06:A77F: E6        .byte $E6   ; 
- D 1 - I - 0x01A790 06:A780: 06        .byte $06   ; 
- D 1 - I - 0x01A791 06:A781: 79        .byte $79   ; 
- D 1 - I - 0x01A792 06:A782: E6        .byte $E6   ; 
- D 1 - I - 0x01A793 06:A783: 03        .byte $03   ; 
- D 1 - I - 0x01A794 06:A784: E7        .byte $E7   ; 
- D 1 - I - 0x01A795 06:A785: 1E        .byte $1E   ; 
- D 1 - I - 0x01A796 06:A786: E5        .byte $E5   ; 
- D 1 - I - 0x01A797 06:A787: 43        .byte $43   ; 
- D 1 - I - 0x01A798 06:A788: 41        .byte $41   ; 
- D 1 - I - 0x01A799 06:A789: E4        .byte $E4   ; 
- D 1 - I - 0x01A79A 06:A78A: 41        .byte $41   ; 
- D 1 - I - 0x01A79B 06:A78B: E5        .byte $E5   ; 
- D 1 - I - 0x01A79C 06:A78C: 43        .byte $43   ; 
- D 1 - I - 0x01A79D 06:A78D: 41        .byte $41   ; 
- D 1 - I - 0x01A79E 06:A78E: E4        .byte $E4   ; 
- D 1 - I - 0x01A79F 06:A78F: 43        .byte $43   ; 
- D 1 - I - 0x01A7A0 06:A790: E5        .byte $E5   ; 
- D 1 - I - 0x01A7A1 06:A791: 21        .byte $21   ; 
- D 1 - I - 0x01A7A2 06:A792: E4        .byte $E4   ; 
- D 1 - I - 0x01A7A3 06:A793: 23        .byte $23   ; 
- D 1 - I - 0x01A7A4 06:A794: E7        .byte $E7   ; 
- D 1 - I - 0x01A7A5 06:A795: 1C        .byte $1C   ; 
- D 1 - I - 0x01A7A6 06:A796: E3        .byte $E3   ; 
- D 1 - I - 0x01A7A7 06:A797: B3        .byte $B3   ; 
- D 1 - I - 0x01A7A8 06:A798: EC        .byte $EC   ; 
- D 1 - I - 0x01A7A9 06:A799: 00        .byte $00   ; 
- D 1 - I - 0x01A7AA 06:A79A: E2        .byte $E2   ; 
- D 1 - I - 0x01A7AB 06:A79B: 0F        .byte $0F   ; 
- D 1 - I - 0x01A7AC 06:A79C: E7        .byte $E7   ; 
- D 1 - I - 0x01A7AD 06:A79D: 1E        .byte $1E   ; 
- D 1 - I - 0x01A7AE 06:A79E: E5        .byte $E5   ; 
- D 1 - I - 0x01A7AF 06:A79F: 03        .byte $03   ; 
- D 1 - I - 0x01A7B0 06:A7A0: FD        .byte $FD   ; 



_off014_2B_A7A1_01:
- D 1 - I - 0x01A7B1 06:A7A1: E9        .byte $E9   ; 
- D 1 - I - 0x01A7B2 06:A7A2: 31        .byte $31   ; 
- D 1 - I - 0x01A7B3 06:A7A3: D3        .byte $D3   ; 
- D 1 - I - 0x01A7B4 06:A7A4: 78        .byte $78   ; 
- D 1 - I - 0x01A7B5 06:A7A5: 85        .byte $85   ; 
- D 1 - I - 0x01A7B6 06:A7A6: 16        .byte $16   ; 
- D 1 - I - 0x01A7B7 06:A7A7: E3        .byte $E3   ; 
- D 1 - I - 0x01A7B8 06:A7A8: C1        .byte $C1   ; 
- D 1 - I - 0x01A7B9 06:A7A9: 72        .byte $72   ; 
- D 1 - I - 0x01A7BA 06:A7AA: F5        .byte $F5   ; 
- D 1 - I - 0x01A7BB 06:A7AB: 70        .byte $70   ; 
- D 1 - I - 0x01A7BC 06:A7AC: F0        .byte $F0   ; 
- D 1 - I - 0x01A7BD 06:A7AD: 82        .byte $82   ; 
- D 1 - I - 0x01A7BE 06:A7AE: F5        .byte $F5   ; 
- D 1 - I - 0x01A7BF 06:A7AF: 80        .byte $80   ; 
- D 1 - I - 0x01A7C0 06:A7B0: F0        .byte $F0   ; 
- D 1 - I - 0x01A7C1 06:A7B1: 92        .byte $92   ; 
- D 1 - I - 0x01A7C2 06:A7B2: F4        .byte $F4   ; 
- D 1 - I - 0x01A7C3 06:A7B3: 90        .byte $90   ; 
- D 1 - I - 0x01A7C4 06:A7B4: F0        .byte $F0   ; 
- D 1 - I - 0x01A7C5 06:A7B5: A2        .byte $A2   ; 
- D 1 - I - 0x01A7C6 06:A7B6: F5        .byte $F5   ; 
- D 1 - I - 0x01A7C7 06:A7B7: A0        .byte $A0   ; 
- D 1 - I - 0x01A7C8 06:A7B8: F0        .byte $F0   ; 
- D 1 - I - 0x01A7C9 06:A7B9: B2        .byte $B2   ; 
- D 1 - I - 0x01A7CA 06:A7BA: F5        .byte $F5   ; 
- D 1 - I - 0x01A7CB 06:A7BB: B0        .byte $B0   ; 
- D 1 - I - 0x01A7CC 06:A7BC: F0        .byte $F0   ; 
- D 1 - I - 0x01A7CD 06:A7BD: E2        .byte $E2   ; 
- D 1 - I - 0x01A7CE 06:A7BE: 02        .byte $02   ; 
- D 1 - I - 0x01A7CF 06:A7BF: F5        .byte $F5   ; 
- D 1 - I - 0x01A7D0 06:A7C0: 00        .byte $00   ; 
- D 1 - I - 0x01A7D1 06:A7C1: F0        .byte $F0   ; 
loc_FF_A7C2:
- D 1 - I - 0x01A7D2 06:A7C2: EA        .byte $EA   ; 
- D 1 - I - 0x01A7D3 06:A7C3: 83        .byte $83   ; 
- D 1 - I - 0x01A7D4 06:A7C4: FD        .byte $FD   ; 
- D 1 - I - 0x01A7D5 06:A7C5: 5A A8     .word sub_FD_A85A
- D 1 - I - 0x01A7D7 06:A7C7: 3C        .byte $3C   ; 
- D 1 - I - 0x01A7D8 06:A7C8: EC        .byte $EC   ; 
- D 1 - I - 0x01A7D9 06:A7C9: 02        .byte $02   ; 
- D 1 - I - 0x01A7DA 06:A7CA: E8        .byte $E8   ; 
- D 1 - I - 0x01A7DB 06:A7CB: 18        .byte $18   ; 
- D 1 - I - 0x01A7DC 06:A7CC: E6        .byte $E6   ; 
- D 1 - I - 0x01A7DD 06:A7CD: 03        .byte $03   ; 
- D 1 - I - 0x01A7DE 06:A7CE: E2        .byte $E2   ; 
- D 1 - I - 0x01A7DF 06:A7CF: 71        .byte $71   ; 
- D 1 - I - 0x01A7E0 06:A7D0: 31        .byte $31   ; 
- D 1 - I - 0x01A7E1 06:A7D1: 01        .byte $01   ; 
- D 1 - I - 0x01A7E2 06:A7D2: 31        .byte $31   ; 
- D 1 - I - 0x01A7E3 06:A7D3: 01        .byte $01   ; 
- D 1 - I - 0x01A7E4 06:A7D4: E3        .byte $E3   ; 
- D 1 - I - 0x01A7E5 06:A7D5: 71        .byte $71   ; 
- D 1 - I - 0x01A7E6 06:A7D6: E2        .byte $E2   ; 
- D 1 - I - 0x01A7E7 06:A7D7: 01        .byte $01   ; 
- D 1 - I - 0x01A7E8 06:A7D8: E3        .byte $E3   ; 
- D 1 - I - 0x01A7E9 06:A7D9: 71        .byte $71   ; 
- D 1 - I - 0x01A7EA 06:A7DA: 31        .byte $31   ; 
- D 1 - I - 0x01A7EB 06:A7DB: EC        .byte $EC   ; 
- D 1 - I - 0x01A7EC 06:A7DC: 00        .byte $00   ; 
- D 1 - I - 0x01A7ED 06:A7DD: FD        .byte $FD   ; 
- D 1 - I - 0x01A7EE 06:A7DE: 5A A8     .word sub_FD_A85A
- D 1 - I - 0x01A7F0 06:A7E0: 39        .byte $39   ; 
- D 1 - I - 0x01A7F1 06:A7E1: 74        .byte $74   ; 
- D 1 - I - 0x01A7F2 06:A7E2: 46        .byte $46   ; 
- D 1 - I - 0x01A7F3 06:A7E3: E9        .byte $E9   ; 
- D 1 - I - 0x01A7F4 06:A7E4: 31        .byte $31   ; 
- D 1 - I - 0x01A7F5 06:A7E5: D3        .byte $D3   ; 
- D 1 - I - 0x01A7F6 06:A7E6: 70        .byte $70   ; 
- D 1 - I - 0x01A7F7 06:A7E7: 18        .byte $18   ; 
- D 1 - I - 0x01A7F8 06:A7E8: 24        .byte $24   ; 
- D 1 - I - 0x01A7F9 06:A7E9: EB        .byte $EB   ; 
- D 1 - I - 0x01A7FA 06:A7EA: 50        .byte $50   ; 
- D 1 - I - 0x01A7FB 06:A7EB: 72        .byte $72   ; 
- D 1 - I - 0x01A7FC 06:A7EC: E3        .byte $E3   ; 
- D 1 - I - 0x01A7FD 06:A7ED: E6        .byte $E6   ; 
- D 1 - I - 0x01A7FE 06:A7EE: 06        .byte $06   ; 
- D 1 - I - 0x01A7FF 06:A7EF: 98        .byte $98   ; 
- D 1 - I - 0x01A800 06:A7F0: E6        .byte $E6   ; 
- D 1 - I - 0x01A801 06:A7F1: 03        .byte $03   ; 
- D 1 - I - 0x01A802 06:A7F2: B3        .byte $B3   ; 
- D 1 - I - 0x01A803 06:A7F3: E2        .byte $E2   ; 
- D 1 - I - 0x01A804 06:A7F4: 07        .byte $07   ; 
- D 1 - I - 0x01A805 06:A7F5: E3        .byte $E3   ; 
- D 1 - I - 0x01A806 06:A7F6: 71        .byte $71   ; 
- D 1 - I - 0x01A807 06:A7F7: E2        .byte $E2   ; 
- D 1 - I - 0x01A808 06:A7F8: 01        .byte $01   ; 
- D 1 - I - 0x01A809 06:A7F9: 21        .byte $21   ; 
- D 1 - I - 0x01A80A 06:A7FA: 4B        .byte $4B   ; 
- D 1 - I - 0x01A80B 06:A7FB: 2B        .byte $2B   ; 
- D 1 - I - 0x01A80C 06:A7FC: 6B        .byte $6B   ; 
- D 1 - I - 0x01A80D 06:A7FD: 95        .byte $95   ; 
- D 1 - I - 0x01A80E 06:A7FE: 91        .byte $91   ; 
- D 1 - I - 0x01A80F 06:A7FF: B1        .byte $B1   ; 
- D 1 - I - 0x01A810 06:A800: 91        .byte $91   ; 
- D 1 - I - 0x01A811 06:A801: 8B        .byte $8B   ; 
- D 1 - I - 0x01A812 06:A802: EB        .byte $EB   ; 
- D 1 - I - 0x01A813 06:A803: 50        .byte $50   ; 
- D 1 - I - 0x01A814 06:A804: 71        .byte $71   ; 
- D 1 - I - 0x01A815 06:A805: E9        .byte $E9   ; 
- D 1 - I - 0x01A816 06:A806: 31        .byte $31   ; 
- D 1 - I - 0x01A817 06:A807: E6        .byte $E6   ; 
- D 1 - I - 0x01A818 06:A808: 06        .byte $06   ; 
- D 1 - I - 0x01A819 06:A809: E2        .byte $E2   ; 
- D 1 - I - 0x01A81A 06:A80A: 98        .byte $98   ; 
- D 1 - I - 0x01A81B 06:A80B: E6        .byte $E6   ; 
- D 1 - I - 0x01A81C 06:A80C: 03        .byte $03   ; 
- D 1 - I - 0x01A81D 06:A80D: B3        .byte $B3   ; 
- D 1 - I - 0x01A81E 06:A80E: E1        .byte $E1   ; 
- D 1 - I - 0x01A81F 06:A80F: 0D        .byte $0D   ; 
- D 1 - I - 0x01A820 06:A810: 4B        .byte $4B   ; 
- D 1 - I - 0x01A821 06:A811: 2B        .byte $2B   ; 
- D 1 - I - 0x01A822 06:A812: E2        .byte $E2   ; 
- D 1 - I - 0x01A823 06:A813: 9B        .byte $9B   ; 
- D 1 - I - 0x01A824 06:A814: E1        .byte $E1   ; 
- D 1 - I - 0x01A825 06:A815: 37        .byte $37   ; 
- D 1 - I - 0x01A826 06:A816: 31        .byte $31   ; 
- D 1 - I - 0x01A827 06:A817: 41        .byte $41   ; 
- D 1 - I - 0x01A828 06:A818: 6B        .byte $6B   ; 
- D 1 - I - 0x01A829 06:A819: 67        .byte $67   ; 
- D 1 - I - 0x01A82A 06:A81A: 61        .byte $61   ; 
- D 1 - I - 0x01A82B 06:A81B: 71        .byte $71   ; 
- D 1 - I - 0x01A82C 06:A81C: 9B        .byte $9B   ; 
- D 1 - I - 0x01A82D 06:A81D: E9        .byte $E9   ; 
- D 1 - I - 0x01A82E 06:A81E: 31        .byte $31   ; 
- D 1 - I - 0x01A82F 06:A81F: D3        .byte $D3   ; 
- D 1 - I - 0x01A830 06:A820: 78        .byte $78   ; 
- D 1 - I - 0x01A831 06:A821: 85        .byte $85   ; 
- D 1 - I - 0x01A832 06:A822: 25        .byte $25   ; 
- D 1 - I - 0x01A833 06:A823: E4        .byte $E4   ; 
- D 1 - I - 0x01A834 06:A824: B1        .byte $B1   ; 
- D 1 - I - 0x01A835 06:A825: E3        .byte $E3   ; 
- D 1 - I - 0x01A836 06:A826: B1        .byte $B1   ; 
- D 1 - I - 0x01A837 06:A827: C0        .byte $C0   ; 
- D 1 - I - 0x01A838 06:A828: F4        .byte $F4   ; 
- D 1 - I - 0x01A839 06:A829: B0        .byte $B0   ; 
- D 1 - I - 0x01A83A 06:A82A: F0        .byte $F0   ; 
- D 1 - I - 0x01A83B 06:A82B: B1        .byte $B1   ; 
- D 1 - I - 0x01A83C 06:A82C: C0        .byte $C0   ; 
- D 1 - I - 0x01A83D 06:A82D: F4        .byte $F4   ; 
- D 1 - I - 0x01A83E 06:A82E: B0        .byte $B0   ; 
- D 1 - I - 0x01A83F 06:A82F: F0        .byte $F0   ; 
- D 1 - I - 0x01A840 06:A830: E4        .byte $E4   ; 
- D 1 - I - 0x01A841 06:A831: B1        .byte $B1   ; 
- D 1 - I - 0x01A842 06:A832: C0        .byte $C0   ; 
- D 1 - I - 0x01A843 06:A833: F4        .byte $F4   ; 
- D 1 - I - 0x01A844 06:A834: B0        .byte $B0   ; 
- D 1 - I - 0x01A845 06:A835: F0        .byte $F0   ; 
- D 1 - I - 0x01A846 06:A836: E3        .byte $E3   ; 
- D 1 - I - 0x01A847 06:A837: B1        .byte $B1   ; 
- D 1 - I - 0x01A848 06:A838: C0        .byte $C0   ; 
- D 1 - I - 0x01A849 06:A839: F4        .byte $F4   ; 
- D 1 - I - 0x01A84A 06:A83A: B0        .byte $B0   ; 
- D 1 - I - 0x01A84B 06:A83B: F0        .byte $F0   ; 
- D 1 - I - 0x01A84C 06:A83C: E4        .byte $E4   ; 
- D 1 - I - 0x01A84D 06:A83D: B1        .byte $B1   ; 
- D 1 - I - 0x01A84E 06:A83E: C0        .byte $C0   ; 
- D 1 - I - 0x01A84F 06:A83F: F4        .byte $F4   ; 
- D 1 - I - 0x01A850 06:A840: B0        .byte $B0   ; 
- D 1 - I - 0x01A851 06:A841: F0        .byte $F0   ; 
- D 1 - I - 0x01A852 06:A842: E3        .byte $E3   ; 
- D 1 - I - 0x01A853 06:A843: B1        .byte $B1   ; 
- D 1 - I - 0x01A854 06:A844: E4        .byte $E4   ; 
- D 1 - I - 0x01A855 06:A845: 91        .byte $91   ; 
- D 1 - I - 0x01A856 06:A846: E3        .byte $E3   ; 
- D 1 - I - 0x01A857 06:A847: 91        .byte $91   ; 
- D 1 - I - 0x01A858 06:A848: E4        .byte $E4   ; 
- D 1 - I - 0x01A859 06:A849: 91        .byte $91   ; 
- D 1 - I - 0x01A85A 06:A84A: A1        .byte $A1   ; 
- D 1 - I - 0x01A85B 06:A84B: E3        .byte $E3   ; 
- D 1 - I - 0x01A85C 06:A84C: A1        .byte $A1   ; 
- D 1 - I - 0x01A85D 06:A84D: E4        .byte $E4   ; 
- D 1 - I - 0x01A85E 06:A84E: A1        .byte $A1   ; 
- D 1 - I - 0x01A85F 06:A84F: E3        .byte $E3   ; 
- D 1 - I - 0x01A860 06:A850: B1        .byte $B1   ; 
- D 1 - I - 0x01A861 06:A851: A1        .byte $A1   ; 
- D 1 - I - 0x01A862 06:A852: 91        .byte $91   ; 
- D 1 - I - 0x01A863 06:A853: 81        .byte $81   ; 
- D 1 - I - 0x01A864 06:A854: 71        .byte $71   ; 
- D 1 - I - 0x01A865 06:A855: 61        .byte $61   ; 
- D 1 - I - 0x01A866 06:A856: FE        .byte $FE   ; 
- D 1 - I - 0x01A867 06:A857: FF        .byte $FF   ; 
- D 1 - I - 0x01A868 06:A858: C2 A7     .word loc_FF_A7C2



sub_FD_A85A:
- D 1 - I - 0x01A86A 06:A85A: E9        .byte $E9   ; 
- D 1 - I - 0x01A86B 06:A85B: 37        .byte $37   ; 
- D 1 - I - 0x01A86C 06:A85C: D3        .byte $D3   ; 
- D 1 - I - 0x01A86D 06:A85D: 77        .byte $77   ; 
- D 1 - I - 0x01A86E 06:A85E: 84        .byte $84   ; 
- D 1 - I - 0x01A86F 06:A85F: 12        .byte $12   ; 
- D 1 - I - 0x01A870 06:A860: EB        .byte $EB   ; 
- D 1 - I - 0x01A871 06:A861: 50        .byte $50   ; 
- D 1 - I - 0x01A872 06:A862: D5        .byte $D5   ; 
- D 1 - I - 0x01A873 06:A863: E6        .byte $E6   ; 
- D 1 - I - 0x01A874 06:A864: 01        .byte $01   ; 
- D 1 - I - 0x01A875 06:A865: E3        .byte $E3   ; 
- D 1 - I - 0x01A876 06:A866: 90        .byte $90   ; 
- D 1 - I - 0x01A877 06:A867: AA        .byte $AA   ; 
- D 1 - I - 0x01A878 06:A868: E6        .byte $E6   ; 
- D 1 - I - 0x01A879 06:A869: 06        .byte $06   ; 
- D 1 - I - 0x01A87A 06:A86A: BF        .byte $BF   ; 
- D 1 - I - 0x01A87B 06:A86B: E6        .byte $E6   ; 
- D 1 - I - 0x01A87C 06:A86C: 03        .byte $03   ; 
- D 1 - I - 0x01A87D 06:A86D: E9        .byte $E9   ; 
- D 1 - I - 0x01A87E 06:A86E: B1        .byte $B1   ; 
- D 1 - I - 0x01A87F 06:A86F: E9        .byte $E9   ; 
- D 1 - I - 0x01A880 06:A870: 30        .byte $30   ; 
- D 1 - I - 0x01A881 06:A871: EC        .byte $EC   ; 
- D 1 - I - 0x01A882 06:A872: 02        .byte $02   ; 
- D 1 - I - 0x01A883 06:A873: E8        .byte $E8   ; 
- D 1 - I - 0x01A884 06:A874: 17        .byte $17   ; 
- D 1 - I - 0x01A885 06:A875: F1        .byte $F1   ; 
- D 1 - I - 0x01A886 06:A876: E2        .byte $E2   ; 
- D 1 - I - 0x01A887 06:A877: 41        .byte $41   ; 
- D 1 - I - 0x01A888 06:A878: E1        .byte $E1   ; 
- D 1 - I - 0x01A889 06:A879: 41        .byte $41   ; 
- D 1 - I - 0x01A88A 06:A87A: E2        .byte $E2   ; 
- D 1 - I - 0x01A88B 06:A87B: 41        .byte $41   ; 
- D 1 - I - 0x01A88C 06:A87C: 21        .byte $21   ; 
- D 1 - I - 0x01A88D 06:A87D: E1        .byte $E1   ; 
- D 1 - I - 0x01A88E 06:A87E: 21        .byte $21   ; 
- D 1 - I - 0x01A88F 06:A87F: E2        .byte $E2   ; 
- D 1 - I - 0x01A890 06:A880: 21        .byte $21   ; 
- D 1 - I - 0x01A891 06:A881: F0        .byte $F0   ; 
- D 1 - I - 0x01A892 06:A882: EC        .byte $EC   ; 
- D 1 - I - 0x01A893 06:A883: 00        .byte $00   ; 
- D 1 - I - 0x01A894 06:A884: E8        .byte $E8   ; 
- D 1 - I - 0x01A895 06:A885: 12        .byte $12   ; 
- D 1 - I - 0x01A896 06:A886: E9        .byte $E9   ; 
- D 1 - I - 0x01A897 06:A887: 37        .byte $37   ; 
- D 1 - I - 0x01A898 06:A888: E9        .byte $E9   ; 
- D 1 - I - 0x01A899 06:A889: 70        .byte $70   ; 
- D 1 - I - 0x01A89A 06:A88A: E3        .byte $E3   ; 
- D 1 - I - 0x01A89B 06:A88B: 63        .byte $63   ; 
- D 1 - I - 0x01A89C 06:A88C: E6        .byte $E6   ; 
- D 1 - I - 0x01A89D 06:A88D: 0C        .byte $0C   ; 
- D 1 - I - 0x01A89E 06:A88E: 77        .byte $77   ; 
- D 1 - I - 0x01A89F 06:A88F: E9        .byte $E9   ; 
- D 1 - I - 0x01A8A0 06:A890: B1        .byte $B1   ; 
- D 1 - I - 0x01A8A1 06:A891: E9        .byte $E9   ; 
- D 1 - I - 0x01A8A2 06:A892: 30        .byte $30   ; 
- D 1 - I - 0x01A8A3 06:A893: E6        .byte $E6   ; 
- D 1 - I - 0x01A8A4 06:A894: 03        .byte $03   ; 
- D 1 - I - 0x01A8A5 06:A895: E3        .byte $E3   ; 
- D 1 - I - 0x01A8A6 06:A896: 01        .byte $01   ; 
- D 1 - I - 0x01A8A7 06:A897: 01        .byte $01   ; 
- D 1 - I - 0x01A8A8 06:A898: 01        .byte $01   ; 
- D 1 - I - 0x01A8A9 06:A899: 21        .byte $21   ; 
- D 1 - I - 0x01A8AA 06:A89A: 21        .byte $21   ; 
- D 1 - I - 0x01A8AB 06:A89B: 21        .byte $21   ; 
- D 1 - I - 0x01A8AC 06:A89C: E9        .byte $E9   ; 
- D 1 - I - 0x01A8AD 06:A89D: 37        .byte $37   ; 
- D 1 - I - 0x01A8AE 06:A89E: E9        .byte $E9   ; 
- D 1 - I - 0x01A8AF 06:A89F: 70        .byte $70   ; 
- D 1 - I - 0x01A8B0 06:A8A0: E6        .byte $E6   ; 
- D 1 - I - 0x01A8B1 06:A8A1: 01        .byte $01   ; 
- D 1 - I - 0x01A8B2 06:A8A2: E3        .byte $E3   ; 
- D 1 - I - 0x01A8B3 06:A8A3: 90        .byte $90   ; 
- D 1 - I - 0x01A8B4 06:A8A4: AA        .byte $AA   ; 
- D 1 - I - 0x01A8B5 06:A8A5: E6        .byte $E6   ; 
- D 1 - I - 0x01A8B6 06:A8A6: 0C        .byte $0C   ; 
- D 1 - I - 0x01A8B7 06:A8A7: B7        .byte $B7   ; 
- D 1 - I - 0x01A8B8 06:A8A8: E6        .byte $E6   ; 
- D 1 - I - 0x01A8B9 06:A8A9: 03        .byte $03   ; 
- D 1 - I - 0x01A8BA 06:A8AA: E9        .byte $E9   ; 
- D 1 - I - 0x01A8BB 06:A8AB: B1        .byte $B1   ; 
- D 1 - I - 0x01A8BC 06:A8AC: E9        .byte $E9   ; 
- D 1 - I - 0x01A8BD 06:A8AD: 30        .byte $30   ; 
- D 1 - I - 0x01A8BE 06:A8AE: EC        .byte $EC   ; 
- D 1 - I - 0x01A8BF 06:A8AF: 02        .byte $02   ; 
- D 1 - I - 0x01A8C0 06:A8B0: E8        .byte $E8   ; 
- D 1 - I - 0x01A8C1 06:A8B1: 17        .byte $17   ; 
- D 1 - I - 0x01A8C2 06:A8B2: F1        .byte $F1   ; 
- D 1 - I - 0x01A8C3 06:A8B3: E2        .byte $E2   ; 
- D 1 - I - 0x01A8C4 06:A8B4: 41        .byte $41   ; 
- D 1 - I - 0x01A8C5 06:A8B5: E1        .byte $E1   ; 
- D 1 - I - 0x01A8C6 06:A8B6: 41        .byte $41   ; 
- D 1 - I - 0x01A8C7 06:A8B7: E2        .byte $E2   ; 
- D 1 - I - 0x01A8C8 06:A8B8: 41        .byte $41   ; 
- D 1 - I - 0x01A8C9 06:A8B9: 21        .byte $21   ; 
- D 1 - I - 0x01A8CA 06:A8BA: E1        .byte $E1   ; 
- D 1 - I - 0x01A8CB 06:A8BB: 21        .byte $21   ; 
- D 1 - I - 0x01A8CC 06:A8BC: E2        .byte $E2   ; 
- D 1 - I - 0x01A8CD 06:A8BD: 21        .byte $21   ; 
- D 1 - I - 0x01A8CE 06:A8BE: F0        .byte $F0   ; 
- D 1 - I - 0x01A8CF 06:A8BF: E9        .byte $E9   ; 
- D 1 - I - 0x01A8D0 06:A8C0: 37        .byte $37   ; 
- D 1 - I - 0x01A8D1 06:A8C1: E9        .byte $E9   ; 
- D 1 - I - 0x01A8D2 06:A8C2: 70        .byte $70   ; 
- D 1 - I - 0x01A8D3 06:A8C3: E8        .byte $E8   ; 
- D 1 - I - 0x01A8D4 06:A8C4: 12        .byte $12   ; 
- D 1 - I - 0x01A8D5 06:A8C5: 23        .byte $23   ; 
- D 1 - I - 0x01A8D6 06:A8C6: E6        .byte $E6   ; 
- D 1 - I - 0x01A8D7 06:A8C7: 06        .byte $06   ; 
- D 1 - I - 0x01A8D8 06:A8C8: FD        .byte $FD   ; 



_off014_2B_A8C9_02:
- D 1 - I - 0x01A8D9 06:A8C9: D3        .byte $D3   ; 
- D 1 - I - 0x01A8DA 06:A8CA: 15        .byte $15   ; 
- D 1 - I - 0x01A8DB 06:A8CB: E4        .byte $E4   ; 
- D 1 - I - 0x01A8DC 06:A8CC: C1        .byte $C1   ; 
- D 1 - I - 0x01A8DD 06:A8CD: 71        .byte $71   ; 
- D 1 - I - 0x01A8DE 06:A8CE: D3        .byte $D3   ; 
- D 1 - I - 0x01A8DF 06:A8CF: 0A        .byte $0A   ; 
- D 1 - I - 0x01A8E0 06:A8D0: E3        .byte $E3   ; 
- D 1 - I - 0x01A8E1 06:A8D1: 71        .byte $71   ; 
- D 1 - I - 0x01A8E2 06:A8D2: D3        .byte $D3   ; 
- D 1 - I - 0x01A8E3 06:A8D3: 15        .byte $15   ; 
- D 1 - I - 0x01A8E4 06:A8D4: E4        .byte $E4   ; 
- D 1 - I - 0x01A8E5 06:A8D5: 81        .byte $81   ; 
- D 1 - I - 0x01A8E6 06:A8D6: D3        .byte $D3   ; 
- D 1 - I - 0x01A8E7 06:A8D7: 0A        .byte $0A   ; 
- D 1 - I - 0x01A8E8 06:A8D8: E3        .byte $E3   ; 
- D 1 - I - 0x01A8E9 06:A8D9: 81        .byte $81   ; 
- D 1 - I - 0x01A8EA 06:A8DA: D3        .byte $D3   ; 
- D 1 - I - 0x01A8EB 06:A8DB: 15        .byte $15   ; 
- D 1 - I - 0x01A8EC 06:A8DC: E4        .byte $E4   ; 
- D 1 - I - 0x01A8ED 06:A8DD: 91        .byte $91   ; 
- D 1 - I - 0x01A8EE 06:A8DE: D3        .byte $D3   ; 
- D 1 - I - 0x01A8EF 06:A8DF: 0A        .byte $0A   ; 
- D 1 - I - 0x01A8F0 06:A8E0: E3        .byte $E3   ; 
- D 1 - I - 0x01A8F1 06:A8E1: 91        .byte $91   ; 
- D 1 - I - 0x01A8F2 06:A8E2: D3        .byte $D3   ; 
- D 1 - I - 0x01A8F3 06:A8E3: 15        .byte $15   ; 
- D 1 - I - 0x01A8F4 06:A8E4: E4        .byte $E4   ; 
- D 1 - I - 0x01A8F5 06:A8E5: A1        .byte $A1   ; 
- D 1 - I - 0x01A8F6 06:A8E6: D3        .byte $D3   ; 
- D 1 - I - 0x01A8F7 06:A8E7: 0A        .byte $0A   ; 
- D 1 - I - 0x01A8F8 06:A8E8: E3        .byte $E3   ; 
- D 1 - I - 0x01A8F9 06:A8E9: A1        .byte $A1   ; 
- D 1 - I - 0x01A8FA 06:A8EA: D3        .byte $D3   ; 
- D 1 - I - 0x01A8FB 06:A8EB: 15        .byte $15   ; 
- D 1 - I - 0x01A8FC 06:A8EC: E4        .byte $E4   ; 
- D 1 - I - 0x01A8FD 06:A8ED: B1        .byte $B1   ; 
- D 1 - I - 0x01A8FE 06:A8EE: D3        .byte $D3   ; 
- D 1 - I - 0x01A8FF 06:A8EF: 0A        .byte $0A   ; 
- D 1 - I - 0x01A900 06:A8F0: E3        .byte $E3   ; 
- D 1 - I - 0x01A901 06:A8F1: B1        .byte $B1   ; 
- D 1 - I - 0x01A902 06:A8F2: D3        .byte $D3   ; 
- D 1 - I - 0x01A903 06:A8F3: 15        .byte $15   ; 
- D 1 - I - 0x01A904 06:A8F4: 01        .byte $01   ; 
- D 1 - I - 0x01A905 06:A8F5: D3        .byte $D3   ; 
- D 1 - I - 0x01A906 06:A8F6: 0A        .byte $0A   ; 
- D 1 - I - 0x01A907 06:A8F7: E2        .byte $E2   ; 
- D 1 - I - 0x01A908 06:A8F8: 01        .byte $01   ; 
loc_FF_A8F9:
- D 1 - I - 0x01A909 06:A8F9: EA        .byte $EA   ; 
- D 1 - I - 0x01A90A 06:A8FA: 83        .byte $83   ; 
- D 1 - I - 0x01A90B 06:A8FB: FD        .byte $FD   ; 
- D 1 - I - 0x01A90C 06:A8FC: 8D A9     .word sub_FD_A98D
- D 1 - I - 0x01A90E 06:A8FE: 03        .byte $03   ; 
- D 1 - I - 0x01A90F 06:A8FF: 01        .byte $01   ; 
- D 1 - I - 0x01A910 06:A900: D3        .byte $D3   ; 
- D 1 - I - 0x01A911 06:A901: 08        .byte $08   ; 
- D 1 - I - 0x01A912 06:A902: E2        .byte $E2   ; 
- D 1 - I - 0x01A913 06:A903: 71        .byte $71   ; 
- D 1 - I - 0x01A914 06:A904: 31        .byte $31   ; 
- D 1 - I - 0x01A915 06:A905: 01        .byte $01   ; 
- D 1 - I - 0x01A916 06:A906: 31        .byte $31   ; 
- D 1 - I - 0x01A917 06:A907: 01        .byte $01   ; 
- D 1 - I - 0x01A918 06:A908: E3        .byte $E3   ; 
- D 1 - I - 0x01A919 06:A909: 71        .byte $71   ; 
- D 1 - I - 0x01A91A 06:A90A: E2        .byte $E2   ; 
- D 1 - I - 0x01A91B 06:A90B: 01        .byte $01   ; 
- D 1 - I - 0x01A91C 06:A90C: E3        .byte $E3   ; 
- D 1 - I - 0x01A91D 06:A90D: 71        .byte $71   ; 
- D 1 - I - 0x01A91E 06:A90E: 31        .byte $31   ; 
- D 1 - I - 0x01A91F 06:A90F: FD        .byte $FD   ; 
- D 1 - I - 0x01A920 06:A910: 8D A9     .word sub_FD_A98D
- D 1 - I - 0x01A922 06:A912: D3        .byte $D3   ; 
- D 1 - I - 0x01A923 06:A913: 0A        .byte $0A   ; 
- D 1 - I - 0x01A924 06:A914: 03        .byte $03   ; 
- D 1 - I - 0x01A925 06:A915: 03        .byte $03   ; 
- D 1 - I - 0x01A926 06:A916: C1        .byte $C1   ; 
- D 1 - I - 0x01A927 06:A917: D6        .byte $D6   ; 
- D 1 - I - 0x01A928 06:A918: 00        .byte $00   ; 
- D 1 - I - 0x01A929 06:A919: 46        .byte $46   ; 
- D 1 - I - 0x01A92A 06:A91A: EA        .byte $EA   ; 
- D 1 - I - 0x01A92B 06:A91B: 83        .byte $83   ; 
- D 1 - I - 0x01A92C 06:A91C: D6        .byte $D6   ; 
- D 1 - I - 0x01A92D 06:A91D: 13        .byte $13   ; 
- D 1 - I - 0x01A92E 06:A91E: E4        .byte $E4   ; 
- D 1 - I - 0x01A92F 06:A91F: 80        .byte $80   ; 
- D 1 - I - 0x01A930 06:A920: 97        .byte $97   ; 
- D 1 - I - 0x01A931 06:A921: D3        .byte $D3   ; 
- D 1 - I - 0x01A932 06:A922: 10        .byte $10   ; 
- D 1 - I - 0x01A933 06:A923: B3        .byte $B3   ; 
- D 1 - I - 0x01A934 06:A924: E3        .byte $E3   ; 
- D 1 - I - 0x01A935 06:A925: 07        .byte $07   ; 
- D 1 - I - 0x01A936 06:A926: E4        .byte $E4   ; 
- D 1 - I - 0x01A937 06:A927: 71        .byte $71   ; 
- D 1 - I - 0x01A938 06:A928: E3        .byte $E3   ; 
- D 1 - I - 0x01A939 06:A929: 01        .byte $01   ; 
- D 1 - I - 0x01A93A 06:A92A: 21        .byte $21   ; 
- D 1 - I - 0x01A93B 06:A92B: 4B        .byte $4B   ; 
- D 1 - I - 0x01A93C 06:A92C: 2B        .byte $2B   ; 
- D 1 - I - 0x01A93D 06:A92D: 6B        .byte $6B   ; 
- D 1 - I - 0x01A93E 06:A92E: 95        .byte $95   ; 
- D 1 - I - 0x01A93F 06:A92F: 91        .byte $91   ; 
- D 1 - I - 0x01A940 06:A930: B1        .byte $B1   ; 
- D 1 - I - 0x01A941 06:A931: 91        .byte $91   ; 
- D 1 - I - 0x01A942 06:A932: 8B        .byte $8B   ; 
- D 1 - I - 0x01A943 06:A933: D6        .byte $D6   ; 
- D 1 - I - 0x01A944 06:A934: 13        .byte $13   ; 
- D 1 - I - 0x01A945 06:A935: E3        .byte $E3   ; 
- D 1 - I - 0x01A946 06:A936: 98        .byte $98   ; 
- D 1 - I - 0x01A947 06:A937: D3        .byte $D3   ; 
- D 1 - I - 0x01A948 06:A938: 10        .byte $10   ; 
- D 1 - I - 0x01A949 06:A939: B3        .byte $B3   ; 
- D 1 - I - 0x01A94A 06:A93A: E2        .byte $E2   ; 
- D 1 - I - 0x01A94B 06:A93B: 07        .byte $07   ; 
- D 1 - I - 0x01A94C 06:A93C: D3        .byte $D3   ; 
- D 1 - I - 0x01A94D 06:A93D: 10        .byte $10   ; 
- D 1 - I - 0x01A94E 06:A93E: E4        .byte $E4   ; 
- D 1 - I - 0x01A94F 06:A93F: 71        .byte $71   ; 
- D 1 - I - 0x01A950 06:A940: E3        .byte $E3   ; 
- D 1 - I - 0x01A951 06:A941: 01        .byte $01   ; 
- D 1 - I - 0x01A952 06:A942: 21        .byte $21   ; 
- D 1 - I - 0x01A953 06:A943: 4B        .byte $4B   ; 
- D 1 - I - 0x01A954 06:A944: 2B        .byte $2B   ; 
- D 1 - I - 0x01A955 06:A945: E3        .byte $E3   ; 
- D 1 - I - 0x01A956 06:A946: 9B        .byte $9B   ; 
- D 1 - I - 0x01A957 06:A947: D3        .byte $D3   ; 
- D 1 - I - 0x01A958 06:A948: 10        .byte $10   ; 
- D 1 - I - 0x01A959 06:A949: E2        .byte $E2   ; 
- D 1 - I - 0x01A95A 06:A94A: 37        .byte $37   ; 
- D 1 - I - 0x01A95B 06:A94B: 31        .byte $31   ; 
- D 1 - I - 0x01A95C 06:A94C: 41        .byte $41   ; 
- D 1 - I - 0x01A95D 06:A94D: 6B        .byte $6B   ; 
- D 1 - I - 0x01A95E 06:A94E: 67        .byte $67   ; 
- D 1 - I - 0x01A95F 06:A94F: 61        .byte $61   ; 
- D 1 - I - 0x01A960 06:A950: 71        .byte $71   ; 
- D 1 - I - 0x01A961 06:A951: 93        .byte $93   ; 
- D 1 - I - 0x01A962 06:A952: E6        .byte $E6   ; 
- D 1 - I - 0x01A963 06:A953: 02        .byte $02   ; 
- D 1 - I - 0x01A964 06:A954: 80        .byte $80   ; 
- D 1 - I - 0x01A965 06:A955: 70        .byte $70   ; 
- D 1 - I - 0x01A966 06:A956: 60        .byte $60   ; 
- D 1 - I - 0x01A967 06:A957: 50        .byte $50   ; 
- D 1 - I - 0x01A968 06:A958: 40        .byte $40   ; 
- D 1 - I - 0x01A969 06:A959: 30        .byte $30   ; 
- D 1 - I - 0x01A96A 06:A95A: 20        .byte $20   ; 
- D 1 - I - 0x01A96B 06:A95B: 10        .byte $10   ; 
- D 1 - I - 0x01A96C 06:A95C: 00        .byte $00   ; 
- D 1 - I - 0x01A96D 06:A95D: E3        .byte $E3   ; 
- D 1 - I - 0x01A96E 06:A95E: B0        .byte $B0   ; 
- D 1 - I - 0x01A96F 06:A95F: A0        .byte $A0   ; 
- D 1 - I - 0x01A970 06:A960: 90        .byte $90   ; 
- D 1 - I - 0x01A971 06:A961: EA        .byte $EA   ; 
- D 1 - I - 0x01A972 06:A962: 83        .byte $83   ; 
- D 1 - I - 0x01A973 06:A963: D6        .byte $D6   ; 
- D 1 - I - 0x01A974 06:A964: 10        .byte $10   ; 
- D 1 - I - 0x01A975 06:A965: E4        .byte $E4   ; 
- D 1 - I - 0x01A976 06:A966: B0        .byte $B0   ; 
- D 1 - I - 0x01A977 06:A967: E3        .byte $E3   ; 
- D 1 - I - 0x01A978 06:A968: B0        .byte $B0   ; 
- D 1 - I - 0x01A979 06:A969: C0        .byte $C0   ; 
- D 1 - I - 0x01A97A 06:A96A: B0        .byte $B0   ; 
- D 1 - I - 0x01A97B 06:A96B: C0        .byte $C0   ; 
- D 1 - I - 0x01A97C 06:A96C: E4        .byte $E4   ; 
- D 1 - I - 0x01A97D 06:A96D: B0        .byte $B0   ; 
- D 1 - I - 0x01A97E 06:A96E: C0        .byte $C0   ; 
- D 1 - I - 0x01A97F 06:A96F: E3        .byte $E3   ; 
- D 1 - I - 0x01A980 06:A970: B0        .byte $B0   ; 
- D 1 - I - 0x01A981 06:A971: C0        .byte $C0   ; 
- D 1 - I - 0x01A982 06:A972: E4        .byte $E4   ; 
- D 1 - I - 0x01A983 06:A973: B0        .byte $B0   ; 
- D 1 - I - 0x01A984 06:A974: C0        .byte $C0   ; 
- D 1 - I - 0x01A985 06:A975: E3        .byte $E3   ; 
- D 1 - I - 0x01A986 06:A976: B0        .byte $B0   ; 
- D 1 - I - 0x01A987 06:A977: E4        .byte $E4   ; 
- D 1 - I - 0x01A988 06:A978: 90        .byte $90   ; 
- D 1 - I - 0x01A989 06:A979: E3        .byte $E3   ; 
- D 1 - I - 0x01A98A 06:A97A: 90        .byte $90   ; 
- D 1 - I - 0x01A98B 06:A97B: E4        .byte $E4   ; 
- D 1 - I - 0x01A98C 06:A97C: 90        .byte $90   ; 
- D 1 - I - 0x01A98D 06:A97D: A0        .byte $A0   ; 
- D 1 - I - 0x01A98E 06:A97E: E3        .byte $E3   ; 
- D 1 - I - 0x01A98F 06:A97F: A0        .byte $A0   ; 
- D 1 - I - 0x01A990 06:A980: E4        .byte $E4   ; 
- D 1 - I - 0x01A991 06:A981: A0        .byte $A0   ; 
- D 1 - I - 0x01A992 06:A982: E3        .byte $E3   ; 
- D 1 - I - 0x01A993 06:A983: B0        .byte $B0   ; 
- D 1 - I - 0x01A994 06:A984: A0        .byte $A0   ; 
- D 1 - I - 0x01A995 06:A985: 90        .byte $90   ; 
- D 1 - I - 0x01A996 06:A986: 80        .byte $80   ; 
- D 1 - I - 0x01A997 06:A987: 70        .byte $70   ; 
- D 1 - I - 0x01A998 06:A988: 60        .byte $60   ; 
- D 1 - I - 0x01A999 06:A989: FE        .byte $FE   ; 
- D 1 - I - 0x01A99A 06:A98A: FF        .byte $FF   ; 
- D 1 - I - 0x01A99B 06:A98B: F9 A8     .word loc_FF_A8F9



sub_FD_A98D:
- D 1 - I - 0x01A99D 06:A98D: D3        .byte $D3   ; 
- D 1 - I - 0x01A99E 06:A98E: 07        .byte $07   ; 
- D 1 - I - 0x01A99F 06:A98F: E3        .byte $E3   ; 
- D 1 - I - 0x01A9A0 06:A990: 43        .byte $43   ; 
- D 1 - I - 0x01A9A1 06:A991: 43        .byte $43   ; 
- D 1 - I - 0x01A9A2 06:A992: 43        .byte $43   ; 
- D 1 - I - 0x01A9A3 06:A993: 43        .byte $43   ; 
- D 1 - I - 0x01A9A4 06:A994: 43        .byte $43   ; 
- D 1 - I - 0x01A9A5 06:A995: 43        .byte $43   ; 
- D 1 - I - 0x01A9A6 06:A996: 43        .byte $43   ; 
- D 1 - I - 0x01A9A7 06:A997: 43        .byte $43   ; 
- D 1 - I - 0x01A9A8 06:A998: 43        .byte $43   ; 
- D 1 - I - 0x01A9A9 06:A999: 41        .byte $41   ; 
- D 1 - I - 0x01A9AA 06:A99A: E2        .byte $E2   ; 
- D 1 - I - 0x01A9AB 06:A99B: 41        .byte $41   ; 
- D 1 - I - 0x01A9AC 06:A99C: E3        .byte $E3   ; 
- D 1 - I - 0x01A9AD 06:A99D: 41        .byte $41   ; 
- D 1 - I - 0x01A9AE 06:A99E: 21        .byte $21   ; 
- D 1 - I - 0x01A9AF 06:A99F: E2        .byte $E2   ; 
- D 1 - I - 0x01A9B0 06:A9A0: 21        .byte $21   ; 
- D 1 - I - 0x01A9B1 06:A9A1: E3        .byte $E3   ; 
- D 1 - I - 0x01A9B2 06:A9A2: 21        .byte $21   ; 
- D 1 - I - 0x01A9B3 06:A9A3: FB        .byte $FB   ; 
- D 1 - I - 0x01A9B4 06:A9A4: 03        .byte $03   ; 
- D 1 - I - 0x01A9B5 06:A9A5: 01        .byte $01   ; 
- D 1 - I - 0x01A9B6 06:A9A6: 01        .byte $01   ; 
- D 1 - I - 0x01A9B7 06:A9A7: 01        .byte $01   ; 
- D 1 - I - 0x01A9B8 06:A9A8: 01        .byte $01   ; 
- D 1 - I - 0x01A9B9 06:A9A9: FE        .byte $FE   ; 
- D 1 - I - 0x01A9BA 06:A9AA: 03        .byte $03   ; 
- D 1 - I - 0x01A9BB 06:A9AB: 01        .byte $01   ; 
- D 1 - I - 0x01A9BC 06:A9AC: 01        .byte $01   ; 
- D 1 - I - 0x01A9BD 06:A9AD: 01        .byte $01   ; 
- D 1 - I - 0x01A9BE 06:A9AE: 21        .byte $21   ; 
- D 1 - I - 0x01A9BF 06:A9AF: 21        .byte $21   ; 
- D 1 - I - 0x01A9C0 06:A9B0: 21        .byte $21   ; 
- D 1 - I - 0x01A9C1 06:A9B1: E3        .byte $E3   ; 
- D 1 - I - 0x01A9C2 06:A9B2: 43        .byte $43   ; 
- D 1 - I - 0x01A9C3 06:A9B3: 43        .byte $43   ; 
- D 1 - I - 0x01A9C4 06:A9B4: 43        .byte $43   ; 
- D 1 - I - 0x01A9C5 06:A9B5: 43        .byte $43   ; 
- D 1 - I - 0x01A9C6 06:A9B6: 43        .byte $43   ; 
- D 1 - I - 0x01A9C7 06:A9B7: 43        .byte $43   ; 
- D 1 - I - 0x01A9C8 06:A9B8: 43        .byte $43   ; 
- D 1 - I - 0x01A9C9 06:A9B9: 43        .byte $43   ; 
- D 1 - I - 0x01A9CA 06:A9BA: 43        .byte $43   ; 
- D 1 - I - 0x01A9CB 06:A9BB: 41        .byte $41   ; 
- D 1 - I - 0x01A9CC 06:A9BC: E2        .byte $E2   ; 
- D 1 - I - 0x01A9CD 06:A9BD: 41        .byte $41   ; 
- D 1 - I - 0x01A9CE 06:A9BE: E3        .byte $E3   ; 
- D 1 - I - 0x01A9CF 06:A9BF: 41        .byte $41   ; 
- D 1 - I - 0x01A9D0 06:A9C0: 21        .byte $21   ; 
- D 1 - I - 0x01A9D1 06:A9C1: E2        .byte $E2   ; 
- D 1 - I - 0x01A9D2 06:A9C2: 21        .byte $21   ; 
- D 1 - I - 0x01A9D3 06:A9C3: E3        .byte $E3   ; 
- D 1 - I - 0x01A9D4 06:A9C4: 21        .byte $21   ; 
- D 1 - I - 0x01A9D5 06:A9C5: FB        .byte $FB   ; 
- D 1 - I - 0x01A9D6 06:A9C6: 03        .byte $03   ; 
- D 1 - I - 0x01A9D7 06:A9C7: 01        .byte $01   ; 
- D 1 - I - 0x01A9D8 06:A9C8: 01        .byte $01   ; 
- D 1 - I - 0x01A9D9 06:A9C9: 01        .byte $01   ; 
- D 1 - I - 0x01A9DA 06:A9CA: 01        .byte $01   ; 
- D 1 - I - 0x01A9DB 06:A9CB: FE        .byte $FE   ; 
- D 1 - I - 0x01A9DC 06:A9CC: 02        .byte $02   ; 
- D 1 - I - 0x01A9DD 06:A9CD: FD        .byte $FD   ; 



_off014_2B_A9CE_03:
- D 1 - I - 0x01A9DE 06:A9CE: D1        .byte $D1   ; 
- D 1 - I - 0x01A9DF 06:A9CF: B0        .byte $B0   ; 
- D 1 - I - 0x01A9E0 06:A9D0: 21        .byte $21   ; 
- D 1 - I - 0x01A9E1 06:A9D1: A0        .byte $A0   ; 
- D 1 - I - 0x01A9E2 06:A9D2: 21        .byte $21   ; 
- D 1 - I - 0x01A9E3 06:A9D3: E3        .byte $E3   ; 
- D 1 - I - 0x01A9E4 06:A9D4: 70        .byte $70   ; 
- D 1 - I - 0x01A9E5 06:A9D5: D1        .byte $D1   ; 
- D 1 - I - 0x01A9E6 06:A9D6: 2A        .byte $2A   ; 
- D 1 - I - 0x01A9E7 06:A9D7: E3        .byte $E3   ; 
- D 1 - I - 0x01A9E8 06:A9D8: 80        .byte $80   ; 
- D 1 - I - 0x01A9E9 06:A9D9: D1        .byte $D1   ; 
- D 1 - I - 0x01A9EA 06:A9DA: 2A        .byte $2A   ; 
- D 1 - I - 0x01A9EB 06:A9DB: E3        .byte $E3   ; 
- D 1 - I - 0x01A9EC 06:A9DC: 90        .byte $90   ; 
- D 1 - I - 0x01A9ED 06:A9DD: D1        .byte $D1   ; 
- D 1 - I - 0x01A9EE 06:A9DE: 2A        .byte $2A   ; 
- D 1 - I - 0x01A9EF 06:A9DF: E3        .byte $E3   ; 
- D 1 - I - 0x01A9F0 06:A9E0: A0        .byte $A0   ; 
- D 1 - I - 0x01A9F1 06:A9E1: D1        .byte $D1   ; 
- D 1 - I - 0x01A9F2 06:A9E2: 2A        .byte $2A   ; 
- D 1 - I - 0x01A9F3 06:A9E3: E3        .byte $E3   ; 
- D 1 - I - 0x01A9F4 06:A9E4: B0        .byte $B0   ; 
- D 1 - I - 0x01A9F5 06:A9E5: D1        .byte $D1   ; 
- D 1 - I - 0x01A9F6 06:A9E6: 2A        .byte $2A   ; 
- D 1 - I - 0x01A9F7 06:A9E7: E2        .byte $E2   ; 
- D 1 - I - 0x01A9F8 06:A9E8: 00        .byte $00   ; 
- D 1 - I - 0x01A9F9 06:A9E9: D1        .byte $D1   ; 
- D 1 - I - 0x01A9FA 06:A9EA: 24        .byte $24   ; 
- D 1 - I - 0x01A9FB 06:A9EB: B0        .byte $B0   ; 
- D 1 - I - 0x01A9FC 06:A9EC: 24        .byte $24   ; 
loc_FF_A9ED:
- D 1 - I - 0x01A9FD 06:A9ED: FD        .byte $FD   ; 
- D 1 - I - 0x01A9FE 06:A9EE: 9E AA     .word sub_FD_AA9E
- D 1 - I - 0x01AA00 06:A9F0: FD        .byte $FD   ; 
- D 1 - I - 0x01AA01 06:A9F1: 9E AA     .word sub_FD_AA9E
- D 1 - I - 0x01AA03 06:A9F3: D1        .byte $D1   ; 
- D 1 - I - 0x01AA04 06:A9F4: A0        .byte $A0   ; 
- D 1 - I - 0x01AA05 06:A9F5: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA06 06:A9F6: A0        .byte $A0   ; 
- D 1 - I - 0x01AA07 06:A9F7: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA08 06:A9F8: A0        .byte $A0   ; 
- D 1 - I - 0x01AA09 06:A9F9: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA0A 06:A9FA: A0        .byte $A0   ; 
- D 1 - I - 0x01AA0B 06:A9FB: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA0C 06:A9FC: B0        .byte $B0   ; 
- D 1 - I - 0x01AA0D 06:A9FD: 24        .byte $24   ; 
- D 1 - I - 0x01AA0E 06:A9FE: A0        .byte $A0   ; 
- D 1 - I - 0x01AA0F 06:A9FF: 24        .byte $24   ; 
- D 1 - I - 0x01AA10 06:AA00: A0        .byte $A0   ; 
- D 1 - I - 0x01AA11 06:AA01: 24        .byte $24   ; 
- D 1 - I - 0x01AA12 06:AA02: A0        .byte $A0   ; 
- D 1 - I - 0x01AA13 06:AA03: 24        .byte $24   ; 
- D 1 - I - 0x01AA14 06:AA04: FB        .byte $FB   ; 
- D 1 - I - 0x01AA15 06:AA05: B0        .byte $B0   ; 
- D 1 - I - 0x01AA16 06:AA06: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA17 06:AA07: B0        .byte $B0   ; 
- D 1 - I - 0x01AA18 06:AA08: 24        .byte $24   ; 
- D 1 - I - 0x01AA19 06:AA09: A0        .byte $A0   ; 
- D 1 - I - 0x01AA1A 06:AA0A: 24        .byte $24   ; 
- D 1 - I - 0x01AA1B 06:AA0B: 25        .byte $25   ; 
- D 1 - I - 0x01AA1C 06:AA0C: 15        .byte $15   ; 
- D 1 - I - 0x01AA1D 06:AA0D: B0        .byte $B0   ; 
- D 1 - I - 0x01AA1E 06:AA0E: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA1F 06:AA0F: B0        .byte $B0   ; 
- D 1 - I - 0x01AA20 06:AA10: 24        .byte $24   ; 
- D 1 - I - 0x01AA21 06:AA11: A0        .byte $A0   ; 
- D 1 - I - 0x01AA22 06:AA12: 24        .byte $24   ; 
- D 1 - I - 0x01AA23 06:AA13: C5        .byte $C5   ; 
- D 1 - I - 0x01AA24 06:AA14: 15        .byte $15   ; 
- D 1 - I - 0x01AA25 06:AA15: FE        .byte $FE   ; 
- D 1 - I - 0x01AA26 06:AA16: 02        .byte $02   ; 
- D 1 - I - 0x01AA27 06:AA17: B0        .byte $B0   ; 
- D 1 - I - 0x01AA28 06:AA18: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA29 06:AA19: B0        .byte $B0   ; 
- D 1 - I - 0x01AA2A 06:AA1A: 24        .byte $24   ; 
- D 1 - I - 0x01AA2B 06:AA1B: A0        .byte $A0   ; 
- D 1 - I - 0x01AA2C 06:AA1C: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA2D 06:AA1D: B0        .byte $B0   ; 
- D 1 - I - 0x01AA2E 06:AA1E: 14        .byte $14   ; 
- D 1 - I - 0x01AA2F 06:AA1F: A0        .byte $A0   ; 
- D 1 - I - 0x01AA30 06:AA20: 24        .byte $24   ; 
- D 1 - I - 0x01AA31 06:AA21: A0        .byte $A0   ; 
- D 1 - I - 0x01AA32 06:AA22: 24        .byte $24   ; 
- D 1 - I - 0x01AA33 06:AA23: A0        .byte $A0   ; 
- D 1 - I - 0x01AA34 06:AA24: 24        .byte $24   ; 
- D 1 - I - 0x01AA35 06:AA25: A0        .byte $A0   ; 
- D 1 - I - 0x01AA36 06:AA26: 24        .byte $24   ; 
- D 1 - I - 0x01AA37 06:AA27: A0        .byte $A0   ; 
- D 1 - I - 0x01AA38 06:AA28: 24        .byte $24   ; 
- D 1 - I - 0x01AA39 06:AA29: A0        .byte $A0   ; 
- D 1 - I - 0x01AA3A 06:AA2A: 24        .byte $24   ; 
- D 1 - I - 0x01AA3B 06:AA2B: A0        .byte $A0   ; 
- D 1 - I - 0x01AA3C 06:AA2C: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA3D 06:AA2D: A0        .byte $A0   ; 
- D 1 - I - 0x01AA3E 06:AA2E: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA3F 06:AA2F: A0        .byte $A0   ; 
- D 1 - I - 0x01AA40 06:AA30: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA41 06:AA31: A0        .byte $A0   ; 
- D 1 - I - 0x01AA42 06:AA32: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA43 06:AA33: B0        .byte $B0   ; 
- D 1 - I - 0x01AA44 06:AA34: 24        .byte $24   ; 
- D 1 - I - 0x01AA45 06:AA35: A0        .byte $A0   ; 
- D 1 - I - 0x01AA46 06:AA36: 24        .byte $24   ; 
- D 1 - I - 0x01AA47 06:AA37: A0        .byte $A0   ; 
- D 1 - I - 0x01AA48 06:AA38: 24        .byte $24   ; 
- D 1 - I - 0x01AA49 06:AA39: A0        .byte $A0   ; 
- D 1 - I - 0x01AA4A 06:AA3A: 24        .byte $24   ; 
- D 1 - I - 0x01AA4B 06:AA3B: FB        .byte $FB   ; 
- D 1 - I - 0x01AA4C 06:AA3C: B0        .byte $B0   ; 
- D 1 - I - 0x01AA4D 06:AA3D: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA4E 06:AA3E: B0        .byte $B0   ; 
- D 1 - I - 0x01AA4F 06:AA3F: 24        .byte $24   ; 
- D 1 - I - 0x01AA50 06:AA40: A0        .byte $A0   ; 
- D 1 - I - 0x01AA51 06:AA41: 24        .byte $24   ; 
- D 1 - I - 0x01AA52 06:AA42: 25        .byte $25   ; 
- D 1 - I - 0x01AA53 06:AA43: 15        .byte $15   ; 
- D 1 - I - 0x01AA54 06:AA44: B0        .byte $B0   ; 
- D 1 - I - 0x01AA55 06:AA45: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA56 06:AA46: B0        .byte $B0   ; 
- D 1 - I - 0x01AA57 06:AA47: 24        .byte $24   ; 
- D 1 - I - 0x01AA58 06:AA48: A0        .byte $A0   ; 
- D 1 - I - 0x01AA59 06:AA49: 24        .byte $24   ; 
- D 1 - I - 0x01AA5A 06:AA4A: C5        .byte $C5   ; 
- D 1 - I - 0x01AA5B 06:AA4B: 15        .byte $15   ; 
- D 1 - I - 0x01AA5C 06:AA4C: FE        .byte $FE   ; 
- D 1 - I - 0x01AA5D 06:AA4D: 03        .byte $03   ; 
- D 1 - I - 0x01AA5E 06:AA4E: B0        .byte $B0   ; 
- D 1 - I - 0x01AA5F 06:AA4F: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA60 06:AA50: A0        .byte $A0   ; 
- D 1 - I - 0x01AA61 06:AA51: 24        .byte $24   ; 
- D 1 - I - 0x01AA62 06:AA52: A0        .byte $A0   ; 
- D 1 - I - 0x01AA63 06:AA53: 24        .byte $24   ; 
- D 1 - I - 0x01AA64 06:AA54: B5        .byte $B5   ; 
- D 1 - I - 0x01AA65 06:AA55: 25        .byte $25   ; 
- D 1 - I - 0x01AA66 06:AA56: B0        .byte $B0   ; 
- D 1 - I - 0x01AA67 06:AA57: 2A        .byte $2A   ; 
- D 1 - I - 0x01AA68 06:AA58: B0        .byte $B0   ; 
- D 1 - I - 0x01AA69 06:AA59: 24        .byte $24   ; 
- D 1 - I - 0x01AA6A 06:AA5A: A0        .byte $A0   ; 
- D 1 - I - 0x01AA6B 06:AA5B: 24        .byte $24   ; 
- D 1 - I - 0x01AA6C 06:AA5C: A0        .byte $A0   ; 
- D 1 - I - 0x01AA6D 06:AA5D: 24        .byte $24   ; 
- D 1 - I - 0x01AA6E 06:AA5E: A0        .byte $A0   ; 
- D 1 - I - 0x01AA6F 06:AA5F: 24        .byte $24   ; 
- D 1 - I - 0x01AA70 06:AA60: D1        .byte $D1   ; 
- D 1 - I - 0x01AA71 06:AA61: B0        .byte $B0   ; 
- D 1 - I - 0x01AA72 06:AA62: 24        .byte $24   ; 
- D 1 - I - 0x01AA73 06:AA63: E3        .byte $E3   ; 
- D 1 - I - 0x01AA74 06:AA64: 80        .byte $80   ; 
- D 1 - I - 0x01AA75 06:AA65: D1        .byte $D1   ; 
- D 1 - I - 0x01AA76 06:AA66: C7        .byte $C7   ; 
- D 1 - I - 0x01AA77 06:AA67: B2        .byte $B2   ; 
- D 1 - I - 0x01AA78 06:AA68: E3        .byte $E3   ; 
- D 1 - I - 0x01AA79 06:AA69: 80        .byte $80   ; 
- D 1 - I - 0x01AA7A 06:AA6A: D1        .byte $D1   ; 
- D 1 - I - 0x01AA7B 06:AA6B: C7        .byte $C7   ; 
- D 1 - I - 0x01AA7C 06:AA6C: B2        .byte $B2   ; 
- D 1 - I - 0x01AA7D 06:AA6D: B0        .byte $B0   ; 
- D 1 - I - 0x01AA7E 06:AA6E: C4        .byte $C4   ; 
- D 1 - I - 0x01AA7F 06:AA6F: C5        .byte $C5   ; 
- D 1 - I - 0x01AA80 06:AA70: E3        .byte $E3   ; 
- D 1 - I - 0x01AA81 06:AA71: 80        .byte $80   ; 
- D 1 - I - 0x01AA82 06:AA72: D1        .byte $D1   ; 
- D 1 - I - 0x01AA83 06:AA73: C7        .byte $C7   ; 
- D 1 - I - 0x01AA84 06:AA74: B2        .byte $B2   ; 
- D 1 - I - 0x01AA85 06:AA75: B0        .byte $B0   ; 
- D 1 - I - 0x01AA86 06:AA76: C4        .byte $C4   ; 
- D 1 - I - 0x01AA87 06:AA77: C5        .byte $C5   ; 
- D 1 - I - 0x01AA88 06:AA78: E3        .byte $E3   ; 
- D 1 - I - 0x01AA89 06:AA79: 80        .byte $80   ; 
- D 1 - I - 0x01AA8A 06:AA7A: D1        .byte $D1   ; 
- D 1 - I - 0x01AA8B 06:AA7B: C4        .byte $C4   ; 
- D 1 - I - 0x01AA8C 06:AA7C: E3        .byte $E3   ; 
- D 1 - I - 0x01AA8D 06:AA7D: 60        .byte $60   ; 
- D 1 - I - 0x01AA8E 06:AA7E: D1        .byte $D1   ; 
- D 1 - I - 0x01AA8F 06:AA7F: 24        .byte $24   ; 
- D 1 - I - 0x01AA90 06:AA80: A0        .byte $A0   ; 
- D 1 - I - 0x01AA91 06:AA81: C4        .byte $C4   ; 
- D 1 - I - 0x01AA92 06:AA82: B0        .byte $B0   ; 
- D 1 - I - 0x01AA93 06:AA83: C4        .byte $C4   ; 
- D 1 - I - 0x01AA94 06:AA84: E3        .byte $E3   ; 
- D 1 - I - 0x01AA95 06:AA85: 70        .byte $70   ; 
- D 1 - I - 0x01AA96 06:AA86: D1        .byte $D1   ; 
- D 1 - I - 0x01AA97 06:AA87: 24        .byte $24   ; 
- D 1 - I - 0x01AA98 06:AA88: A0        .byte $A0   ; 
- D 1 - I - 0x01AA99 06:AA89: C4        .byte $C4   ; 
- D 1 - I - 0x01AA9A 06:AA8A: B0        .byte $B0   ; 
- D 1 - I - 0x01AA9B 06:AA8B: 24        .byte $24   ; 
- D 1 - I - 0x01AA9C 06:AA8C: A0        .byte $A0   ; 
- D 1 - I - 0x01AA9D 06:AA8D: 21        .byte $21   ; 
- D 1 - I - 0x01AA9E 06:AA8E: A0        .byte $A0   ; 
- D 1 - I - 0x01AA9F 06:AA8F: 21        .byte $21   ; 
- D 1 - I - 0x01AAA0 06:AA90: A0        .byte $A0   ; 
- D 1 - I - 0x01AAA1 06:AA91: 24        .byte $24   ; 
- D 1 - I - 0x01AAA2 06:AA92: A0        .byte $A0   ; 
- D 1 - I - 0x01AAA3 06:AA93: 24        .byte $24   ; 
- D 1 - I - 0x01AAA4 06:AA94: A0        .byte $A0   ; 
- D 1 - I - 0x01AAA5 06:AA95: 24        .byte $24   ; 
- D 1 - I - 0x01AAA6 06:AA96: A0        .byte $A0   ; 
- D 1 - I - 0x01AAA7 06:AA97: 24        .byte $24   ; 
- D 1 - I - 0x01AAA8 06:AA98: A0        .byte $A0   ; 
- D 1 - I - 0x01AAA9 06:AA99: 24        .byte $24   ; 
- D 1 - I - 0x01AAAA 06:AA9A: FE        .byte $FE   ; 
- D 1 - I - 0x01AAAB 06:AA9B: FF        .byte $FF   ; 
- D 1 - I - 0x01AAAC 06:AA9C: ED A9     .word loc_FF_A9ED



sub_FD_AA9E:
- D 1 - I - 0x01AAAE 06:AA9E: D1        .byte $D1   ; 
- D 1 - I - 0x01AAAF 06:AA9F: FB        .byte $FB   ; 
- D 1 - I - 0x01AAB0 06:AAA0: B0        .byte $B0   ; 
- D 1 - I - 0x01AAB1 06:AAA1: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAB2 06:AAA2: B0        .byte $B0   ; 
- D 1 - I - 0x01AAB3 06:AAA3: 14        .byte $14   ; 
- D 1 - I - 0x01AAB4 06:AAA4: A0        .byte $A0   ; 
- D 1 - I - 0x01AAB5 06:AAA5: 24        .byte $24   ; 
- D 1 - I - 0x01AAB6 06:AAA6: B5        .byte $B5   ; 
- D 1 - I - 0x01AAB7 06:AAA7: 15        .byte $15   ; 
- D 1 - I - 0x01AAB8 06:AAA8: B0        .byte $B0   ; 
- D 1 - I - 0x01AAB9 06:AAA9: 2A        .byte $2A   ; 
- D 1 - I - 0x01AABA 06:AAAA: B0        .byte $B0   ; 
- D 1 - I - 0x01AABB 06:AAAB: 14        .byte $14   ; 
- D 1 - I - 0x01AABC 06:AAAC: A0        .byte $A0   ; 
- D 1 - I - 0x01AABD 06:AAAD: 2A        .byte $2A   ; 
- D 1 - I - 0x01AABE 06:AAAE: B0        .byte $B0   ; 
- D 1 - I - 0x01AABF 06:AAAF: 14        .byte $14   ; 
- D 1 - I - 0x01AAC0 06:AAB0: FE        .byte $FE   ; 
- D 1 - I - 0x01AAC1 06:AAB1: 03        .byte $03   ; 
- D 1 - I - 0x01AAC2 06:AAB2: B0        .byte $B0   ; 
- D 1 - I - 0x01AAC3 06:AAB3: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAC4 06:AAB4: B0        .byte $B0   ; 
- D 1 - I - 0x01AAC5 06:AAB5: 14        .byte $14   ; 
- D 1 - I - 0x01AAC6 06:AAB6: A0        .byte $A0   ; 
- D 1 - I - 0x01AAC7 06:AAB7: 24        .byte $24   ; 
- D 1 - I - 0x01AAC8 06:AAB8: B5        .byte $B5   ; 
- D 1 - I - 0x01AAC9 06:AAB9: B0        .byte $B0   ; 
- D 1 - I - 0x01AACA 06:AABA: 14        .byte $14   ; 
- D 1 - I - 0x01AACB 06:AABB: A0        .byte $A0   ; 
- D 1 - I - 0x01AACC 06:AABC: 24        .byte $24   ; 
- D 1 - I - 0x01AACD 06:AABD: A0        .byte $A0   ; 
- D 1 - I - 0x01AACE 06:AABE: 24        .byte $24   ; 
- D 1 - I - 0x01AACF 06:AABF: A0        .byte $A0   ; 
- D 1 - I - 0x01AAD0 06:AAC0: 24        .byte $24   ; 
- D 1 - I - 0x01AAD1 06:AAC1: A0        .byte $A0   ; 
- D 1 - I - 0x01AAD2 06:AAC2: 24        .byte $24   ; 
- D 1 - I - 0x01AAD3 06:AAC3: A0        .byte $A0   ; 
- D 1 - I - 0x01AAD4 06:AAC4: 24        .byte $24   ; 
- D 1 - I - 0x01AAD5 06:AAC5: A0        .byte $A0   ; 
- D 1 - I - 0x01AAD6 06:AAC6: 24        .byte $24   ; 
- D 1 - I - 0x01AAD7 06:AAC7: FB        .byte $FB   ; 
- D 1 - I - 0x01AAD8 06:AAC8: B0        .byte $B0   ; 
- D 1 - I - 0x01AAD9 06:AAC9: 2A        .byte $2A   ; 
- D 1 - I - 0x01AADA 06:AACA: B0        .byte $B0   ; 
- D 1 - I - 0x01AADB 06:AACB: 14        .byte $14   ; 
- D 1 - I - 0x01AADC 06:AACC: A0        .byte $A0   ; 
- D 1 - I - 0x01AADD 06:AACD: 24        .byte $24   ; 
- D 1 - I - 0x01AADE 06:AACE: B5        .byte $B5   ; 
- D 1 - I - 0x01AADF 06:AACF: 15        .byte $15   ; 
- D 1 - I - 0x01AAE0 06:AAD0: B0        .byte $B0   ; 
- D 1 - I - 0x01AAE1 06:AAD1: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAE2 06:AAD2: B0        .byte $B0   ; 
- D 1 - I - 0x01AAE3 06:AAD3: 14        .byte $14   ; 
- D 1 - I - 0x01AAE4 06:AAD4: A0        .byte $A0   ; 
- D 1 - I - 0x01AAE5 06:AAD5: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAE6 06:AAD6: B0        .byte $B0   ; 
- D 1 - I - 0x01AAE7 06:AAD7: 14        .byte $14   ; 
- D 1 - I - 0x01AAE8 06:AAD8: FE        .byte $FE   ; 
- D 1 - I - 0x01AAE9 06:AAD9: 03        .byte $03   ; 
- D 1 - I - 0x01AAEA 06:AADA: B0        .byte $B0   ; 
- D 1 - I - 0x01AAEB 06:AADB: 2A        .byte $2A   ; 
- D 1 - I - 0x01AAEC 06:AADC: B0        .byte $B0   ; 
- D 1 - I - 0x01AAED 06:AADD: 14        .byte $14   ; 
- D 1 - I - 0x01AAEE 06:AADE: A0        .byte $A0   ; 
- D 1 - I - 0x01AAEF 06:AADF: 24        .byte $24   ; 
- D 1 - I - 0x01AAF0 06:AAE0: FB        .byte $FB   ; 
- D 1 - I - 0x01AAF1 06:AAE1: A0        .byte $A0   ; 
- D 1 - I - 0x01AAF2 06:AAE2: 24        .byte $24   ; 
- D 1 - I - 0x01AAF3 06:AAE3: FE        .byte $FE   ; 
- D 1 - I - 0x01AAF4 06:AAE4: 08        .byte $08   ; 
- D 1 - I - 0x01AAF5 06:AAE5: FD        .byte $FD   ; 



_off014_2C_AAE6_00:
- D 1 - I - 0x01AAF6 06:AAE6: EA        .byte $EA   ; 
- D 1 - I - 0x01AAF7 06:AAE7: 03        .byte $03   ; 
- D 1 - I - 0x01AAF8 06:AAE8: E9        .byte $E9   ; 
- D 1 - I - 0x01AAF9 06:AAE9: 71        .byte $71   ; 
- D 1 - I - 0x01AAFA 06:AAEA: D7        .byte $D7   ; 
- D 1 - I - 0x01AAFB 06:AAEB: 30        .byte $30   ; 
- D 1 - I - 0x01AAFC 06:AAEC: 0F        .byte $0F   ; 
- D 1 - I - 0x01AAFD 06:AAED: 25        .byte $25   ; 
- D 1 - I - 0x01AAFE 06:AAEE: E5        .byte $E5   ; 
- D 1 - I - 0x01AAFF 06:AAEF: 40        .byte $40   ; 
- D 1 - I - 0x01AB00 06:AAF0: E3        .byte $E3   ; 
- D 1 - I - 0x01AB01 06:AAF1: 10        .byte $10   ; 
- D 1 - I - 0x01AB02 06:AAF2: 10        .byte $10   ; 
- D 1 - I - 0x01AB03 06:AAF3: F5        .byte $F5   ; 
- D 1 - I - 0x01AB04 06:AAF4: 10        .byte $10   ; 
- D 1 - I - 0x01AB05 06:AAF5: F0        .byte $F0   ; 
- D 1 - I - 0x01AB06 06:AAF6: 00        .byte $00   ; 
- D 1 - I - 0x01AB07 06:AAF7: 00        .byte $00   ; 
- D 1 - I - 0x01AB08 06:AAF8: F5        .byte $F5   ; 
- D 1 - I - 0x01AB09 06:AAF9: 00        .byte $00   ; 
- D 1 - I - 0x01AB0A 06:AAFA: F0        .byte $F0   ; 
- D 1 - I - 0x01AB0B 06:AAFB: E4        .byte $E4   ; 
- D 1 - I - 0x01AB0C 06:AAFC: B0        .byte $B0   ; 
- D 1 - I - 0x01AB0D 06:AAFD: B0        .byte $B0   ; 
- D 1 - I - 0x01AB0E 06:AAFE: E9        .byte $E9   ; 
- D 1 - I - 0x01AB0F 06:AAFF: B1        .byte $B1   ; 
- D 1 - I - 0x01AB10 06:AB00: E9        .byte $E9   ; 
- D 1 - I - 0x01AB11 06:AB01: 30        .byte $30   ; 
- D 1 - I - 0x01AB12 06:AB02: E8        .byte $E8   ; 
- D 1 - I - 0x01AB13 06:AB03: 18        .byte $18   ; 
- D 1 - I - 0x01AB14 06:AB04: E3        .byte $E3   ; 
- D 1 - I - 0x01AB15 06:AB05: 10        .byte $10   ; 
- D 1 - I - 0x01AB16 06:AB06: 10        .byte $10   ; 
- D 1 - I - 0x01AB17 06:AB07: 10        .byte $10   ; 
loc_FF_AB08:
- D 1 - I - 0x01AB18 06:AB08: EC        .byte $EC   ; 
- D 1 - I - 0x01AB19 06:AB09: 02        .byte $02   ; 
- D 1 - I - 0x01AB1A 06:AB0A: E9        .byte $E9   ; 
- D 1 - I - 0x01AB1B 06:AB0B: B9        .byte $B9   ; 
- D 1 - I - 0x01AB1C 06:AB0C: D7        .byte $D7   ; 
- D 1 - I - 0x01AB1D 06:AB0D: 30        .byte $30   ; 
- D 1 - I - 0x01AB1E 06:AB0E: 0F        .byte $0F   ; 
- D 1 - I - 0x01AB1F 06:AB0F: 16        .byte $16   ; 
- D 1 - I - 0x01AB20 06:AB10: E5        .byte $E5   ; 
- D 1 - I - 0x01AB21 06:AB11: 00        .byte $00   ; 
- D 1 - I - 0x01AB22 06:AB12: E4        .byte $E4   ; 
- D 1 - I - 0x01AB23 06:AB13: 50        .byte $50   ; 
- D 1 - I - 0x01AB24 06:AB14: 50        .byte $50   ; 
- D 1 - I - 0x01AB25 06:AB15: 51        .byte $51   ; 
- D 1 - I - 0x01AB26 06:AB16: FD        .byte $FD   ; 
- D 1 - I - 0x01AB27 06:AB17: 9C AB     .word sub_FD_AB9C
- D 1 - I - 0x01AB29 06:AB19: E5        .byte $E5   ; 
- D 1 - I - 0x01AB2A 06:AB1A: 00        .byte $00   ; 
- D 1 - I - 0x01AB2B 06:AB1B: E4        .byte $E4   ; 
- D 1 - I - 0x01AB2C 06:AB1C: 50        .byte $50   ; 
- D 1 - I - 0x01AB2D 06:AB1D: 50        .byte $50   ; 
- D 1 - I - 0x01AB2E 06:AB1E: 50        .byte $50   ; 
- D 1 - I - 0x01AB2F 06:AB1F: 50        .byte $50   ; 
- D 1 - I - 0x01AB30 06:AB20: FD        .byte $FD   ; 
- D 1 - I - 0x01AB31 06:AB21: 9C AB     .word sub_FD_AB9C
- D 1 - I - 0x01AB33 06:AB23: EC        .byte $EC   ; 
- D 1 - I - 0x01AB34 06:AB24: 02        .byte $02   ; 
- D 1 - I - 0x01AB35 06:AB25: E9        .byte $E9   ; 
- D 1 - I - 0x01AB36 06:AB26: 31        .byte $31   ; 
- D 1 - I - 0x01AB37 06:AB27: D7        .byte $D7   ; 
- D 1 - I - 0x01AB38 06:AB28: B0        .byte $B0   ; 
- D 1 - I - 0x01AB39 06:AB29: 0F        .byte $0F   ; 
- D 1 - I - 0x01AB3A 06:AB2A: 18        .byte $18   ; 
- D 1 - I - 0x01AB3B 06:AB2B: E3        .byte $E3   ; 
- D 1 - I - 0x01AB3C 06:AB2C: 01        .byte $01   ; 
- D 1 - I - 0x01AB3D 06:AB2D: 01        .byte $01   ; 
- D 1 - I - 0x01AB3E 06:AB2E: 01        .byte $01   ; 
- D 1 - I - 0x01AB3F 06:AB2F: 02        .byte $02   ; 
- D 1 - I - 0x01AB40 06:AB30: 01        .byte $01   ; 
- D 1 - I - 0x01AB41 06:AB31: 01        .byte $01   ; 
- D 1 - I - 0x01AB42 06:AB32: 01        .byte $01   ; 
- D 1 - I - 0x01AB43 06:AB33: 03        .byte $03   ; 
- D 1 - I - 0x01AB44 06:AB34: E4        .byte $E4   ; 
- D 1 - I - 0x01AB45 06:AB35: A4        .byte $A4   ; 
- D 1 - I - 0x01AB46 06:AB36: E3        .byte $E3   ; 
- D 1 - I - 0x01AB47 06:AB37: 01        .byte $01   ; 
- D 1 - I - 0x01AB48 06:AB38: 01        .byte $01   ; 
- D 1 - I - 0x01AB49 06:AB39: 01        .byte $01   ; 
- D 1 - I - 0x01AB4A 06:AB3A: 02        .byte $02   ; 
- D 1 - I - 0x01AB4B 06:AB3B: 01        .byte $01   ; 
- D 1 - I - 0x01AB4C 06:AB3C: 01        .byte $01   ; 
- D 1 - I - 0x01AB4D 06:AB3D: 01        .byte $01   ; 
- D 1 - I - 0x01AB4E 06:AB3E: 02        .byte $02   ; 
- D 1 - I - 0x01AB4F 06:AB3F: 15        .byte $15   ; 
- D 1 - I - 0x01AB50 06:AB40: E9        .byte $E9   ; 
- D 1 - I - 0x01AB51 06:AB41: 70        .byte $70   ; 
- D 1 - I - 0x01AB52 06:AB42: E2        .byte $E2   ; 
- D 1 - I - 0x01AB53 06:AB43: 01        .byte $01   ; 
- D 1 - I - 0x01AB54 06:AB44: E2        .byte $E2   ; 
- D 1 - I - 0x01AB55 06:AB45: 01        .byte $01   ; 
- D 1 - I - 0x01AB56 06:AB46: 01        .byte $01   ; 
- D 1 - I - 0x01AB57 06:AB47: 02        .byte $02   ; 
- D 1 - I - 0x01AB58 06:AB48: 01        .byte $01   ; 
- D 1 - I - 0x01AB59 06:AB49: 01        .byte $01   ; 
- D 1 - I - 0x01AB5A 06:AB4A: 01        .byte $01   ; 
- D 1 - I - 0x01AB5B 06:AB4B: 03        .byte $03   ; 
- D 1 - I - 0x01AB5C 06:AB4C: E4        .byte $E4   ; 
- D 1 - I - 0x01AB5D 06:AB4D: A4        .byte $A4   ; 
- D 1 - I - 0x01AB5E 06:AB4E: E2        .byte $E2   ; 
- D 1 - I - 0x01AB5F 06:AB4F: 01        .byte $01   ; 
- D 1 - I - 0x01AB60 06:AB50: 01        .byte $01   ; 
- D 1 - I - 0x01AB61 06:AB51: 01        .byte $01   ; 
- D 1 - I - 0x01AB62 06:AB52: 02        .byte $02   ; 
- D 1 - I - 0x01AB63 06:AB53: 01        .byte $01   ; 
- D 1 - I - 0x01AB64 06:AB54: 01        .byte $01   ; 
- D 1 - I - 0x01AB65 06:AB55: 01        .byte $01   ; 
- D 1 - I - 0x01AB66 06:AB56: 02        .byte $02   ; 
- D 1 - I - 0x01AB67 06:AB57: E3        .byte $E3   ; 
- D 1 - I - 0x01AB68 06:AB58: 05        .byte $05   ; 
- D 1 - I - 0x01AB69 06:AB59: E4        .byte $E4   ; 
- D 1 - I - 0x01AB6A 06:AB5A: B5        .byte $B5   ; 
- D 1 - I - 0x01AB6B 06:AB5B: 95        .byte $95   ; 
- D 1 - I - 0x01AB6C 06:AB5C: B5        .byte $B5   ; 
- D 1 - I - 0x01AB6D 06:AB5D: EC        .byte $EC   ; 
- D 1 - I - 0x01AB6E 06:AB5E: 00        .byte $00   ; 
- D 1 - I - 0x01AB6F 06:AB5F: E9        .byte $E9   ; 
- D 1 - I - 0x01AB70 06:AB60: 71        .byte $71   ; 
- D 1 - I - 0x01AB71 06:AB61: D7        .byte $D7   ; 
- D 1 - I - 0x01AB72 06:AB62: 30        .byte $30   ; 
- D 1 - I - 0x01AB73 06:AB63: 10        .byte $10   ; 
- D 1 - I - 0x01AB74 06:AB64: 34        .byte $34   ; 
- D 1 - I - 0x01AB75 06:AB65: EB        .byte $EB   ; 
- D 1 - I - 0x01AB76 06:AB66: 53        .byte $53   ; 
- D 1 - I - 0x01AB77 06:AB67: 32        .byte $32   ; 
- D 1 - I - 0x01AB78 06:AB68: E5        .byte $E5   ; 
- D 1 - I - 0x01AB79 06:AB69: A0        .byte $A0   ; 
- D 1 - I - 0x01AB7A 06:AB6A: E4        .byte $E4   ; 
- D 1 - I - 0x01AB7B 06:AB6B: A1        .byte $A1   ; 
- D 1 - I - 0x01AB7C 06:AB6C: A1        .byte $A1   ; 
- D 1 - I - 0x01AB7D 06:AB6D: A0        .byte $A0   ; 
- D 1 - I - 0x01AB7E 06:AB6E: E7        .byte $E7   ; 
- D 1 - I - 0x01AB7F 06:AB6F: 0F        .byte $0F   ; 
- D 1 - I - 0x01AB80 06:AB70: E3        .byte $E3   ; 
- D 1 - I - 0x01AB81 06:AB71: 15        .byte $15   ; 
- D 1 - I - 0x01AB82 06:AB72: E7        .byte $E7   ; 
- D 1 - I - 0x01AB83 06:AB73: 10        .byte $10   ; 
- D 1 - I - 0x01AB84 06:AB74: E5        .byte $E5   ; 
- D 1 - I - 0x01AB85 06:AB75: A0        .byte $A0   ; 
- D 1 - I - 0x01AB86 06:AB76: E4        .byte $E4   ; 
- D 1 - I - 0x01AB87 06:AB77: A1        .byte $A1   ; 
- D 1 - I - 0x01AB88 06:AB78: A1        .byte $A1   ; 
- D 1 - I - 0x01AB89 06:AB79: A0        .byte $A0   ; 
- D 1 - I - 0x01AB8A 06:AB7A: E7        .byte $E7   ; 
- D 1 - I - 0x01AB8B 06:AB7B: 0F        .byte $0F   ; 
- D 1 - I - 0x01AB8C 06:AB7C: E3        .byte $E3   ; 
- D 1 - I - 0x01AB8D 06:AB7D: 11        .byte $11   ; 
- D 1 - I - 0x01AB8E 06:AB7E: 33        .byte $33   ; 
- D 1 - I - 0x01AB8F 06:AB7F: E7        .byte $E7   ; 
- D 1 - I - 0x01AB90 06:AB80: 10        .byte $10   ; 
- D 1 - I - 0x01AB91 06:AB81: E5        .byte $E5   ; 
- D 1 - I - 0x01AB92 06:AB82: A0        .byte $A0   ; 
- D 1 - I - 0x01AB93 06:AB83: E4        .byte $E4   ; 
- D 1 - I - 0x01AB94 06:AB84: A1        .byte $A1   ; 
- D 1 - I - 0x01AB95 06:AB85: A1        .byte $A1   ; 
- D 1 - I - 0x01AB96 06:AB86: A0        .byte $A0   ; 
- D 1 - I - 0x01AB97 06:AB87: E7        .byte $E7   ; 
- D 1 - I - 0x01AB98 06:AB88: 0F        .byte $0F   ; 
- D 1 - I - 0x01AB99 06:AB89: E3        .byte $E3   ; 
- D 1 - I - 0x01AB9A 06:AB8A: 15        .byte $15   ; 
- D 1 - I - 0x01AB9B 06:AB8B: E7        .byte $E7   ; 
- D 1 - I - 0x01AB9C 06:AB8C: 10        .byte $10   ; 
- D 1 - I - 0x01AB9D 06:AB8D: E5        .byte $E5   ; 
- D 1 - I - 0x01AB9E 06:AB8E: A0        .byte $A0   ; 
- D 1 - I - 0x01AB9F 06:AB8F: E4        .byte $E4   ; 
- D 1 - I - 0x01ABA0 06:AB90: A1        .byte $A1   ; 
- D 1 - I - 0x01ABA1 06:AB91: A1        .byte $A1   ; 
- D 1 - I - 0x01ABA2 06:AB92: A0        .byte $A0   ; 
- D 1 - I - 0x01ABA3 06:AB93: E4        .byte $E4   ; 
- D 1 - I - 0x01ABA4 06:AB94: 11        .byte $11   ; 
- D 1 - I - 0x01ABA5 06:AB95: 01        .byte $01   ; 
- D 1 - I - 0x01ABA6 06:AB96: E5        .byte $E5   ; 
- D 1 - I - 0x01ABA7 06:AB97: B1        .byte $B1   ; 
- D 1 - I - 0x01ABA8 06:AB98: FE        .byte $FE   ; 
- D 1 - I - 0x01ABA9 06:AB99: FF        .byte $FF   ; 
- D 1 - I - 0x01ABAA 06:AB9A: 08 AB     .word loc_FF_AB08



sub_FD_AB9C:
- D 1 - I - 0x01ABAC 06:AB9C: 50        .byte $50   ; 
- D 1 - I - 0x01ABAD 06:AB9D: 51        .byte $51   ; 
- D 1 - I - 0x01ABAE 06:AB9E: 70        .byte $70   ; 
- D 1 - I - 0x01ABAF 06:AB9F: E5        .byte $E5   ; 
- D 1 - I - 0x01ABB0 06:ABA0: 00        .byte $00   ; 
- D 1 - I - 0x01ABB1 06:ABA1: 70        .byte $70   ; 
- D 1 - I - 0x01ABB2 06:ABA2: E4        .byte $E4   ; 
- D 1 - I - 0x01ABB3 06:ABA3: 00        .byte $00   ; 
- D 1 - I - 0x01ABB4 06:ABA4: E4        .byte $E4   ; 
- D 1 - I - 0x01ABB5 06:ABA5: 50        .byte $50   ; 
- D 1 - I - 0x01ABB6 06:ABA6: 50        .byte $50   ; 
- D 1 - I - 0x01ABB7 06:ABA7: 50        .byte $50   ; 
- D 1 - I - 0x01ABB8 06:ABA8: 51        .byte $51   ; 
- D 1 - I - 0x01ABB9 06:ABA9: 70        .byte $70   ; 
- D 1 - I - 0x01ABBA 06:ABAA: E5        .byte $E5   ; 
- D 1 - I - 0x01ABBB 06:ABAB: 00        .byte $00   ; 
- D 1 - I - 0x01ABBC 06:ABAC: 70        .byte $70   ; 
- D 1 - I - 0x01ABBD 06:ABAD: E4        .byte $E4   ; 
- D 1 - I - 0x01ABBE 06:ABAE: 00        .byte $00   ; 
- D 1 - I - 0x01ABBF 06:ABAF: E4        .byte $E4   ; 
- D 1 - I - 0x01ABC0 06:ABB0: 50        .byte $50   ; 
- D 1 - I - 0x01ABC1 06:ABB1: 70        .byte $70   ; 
- D 1 - I - 0x01ABC2 06:ABB2: E3        .byte $E3   ; 
- D 1 - I - 0x01ABC3 06:ABB3: 00        .byte $00   ; 
- D 1 - I - 0x01ABC4 06:ABB4: E8        .byte $E8   ; 
- D 1 - I - 0x01ABC5 06:ABB5: 12        .byte $12   ; 
- D 1 - I - 0x01ABC6 06:ABB6: E4        .byte $E4   ; 
- D 1 - I - 0x01ABC7 06:ABB7: A2        .byte $A2   ; 
- D 1 - I - 0x01ABC8 06:ABB8: E8        .byte $E8   ; 
- D 1 - I - 0x01ABC9 06:ABB9: 25        .byte $25   ; 
- D 1 - I - 0x01ABCA 06:ABBA: FB        .byte $FB   ; 
- D 1 - I - 0x01ABCB 06:ABBB: E5        .byte $E5   ; 
- D 1 - I - 0x01ABCC 06:ABBC: 10        .byte $10   ; 
- D 1 - I - 0x01ABCD 06:ABBD: 80        .byte $80   ; 
- D 1 - I - 0x01ABCE 06:ABBE: A0        .byte $A0   ; 
- D 1 - I - 0x01ABCF 06:ABBF: FE        .byte $FE   ; 
- D 1 - I - 0x01ABD0 06:ABC0: 03        .byte $03   ; 
- D 1 - I - 0x01ABD1 06:ABC1: E8        .byte $E8   ; 
- D 1 - I - 0x01ABD2 06:ABC2: 12        .byte $12   ; 
- D 1 - I - 0x01ABD3 06:ABC3: E3        .byte $E3   ; 
- D 1 - I - 0x01ABD4 06:ABC4: 14        .byte $14   ; 
- D 1 - I - 0x01ABD5 06:ABC5: E8        .byte $E8   ; 
- D 1 - I - 0x01ABD6 06:ABC6: 25        .byte $25   ; 
- D 1 - I - 0x01ABD7 06:ABC7: E4        .byte $E4   ; 
- D 1 - I - 0x01ABD8 06:ABC8: 10        .byte $10   ; 
- D 1 - I - 0x01ABD9 06:ABC9: FB        .byte $FB   ; 
- D 1 - I - 0x01ABDA 06:ABCA: E5        .byte $E5   ; 
- D 1 - I - 0x01ABDB 06:ABCB: 10        .byte $10   ; 
- D 1 - I - 0x01ABDC 06:ABCC: 80        .byte $80   ; 
- D 1 - I - 0x01ABDD 06:ABCD: E4        .byte $E4   ; 
- D 1 - I - 0x01ABDE 06:ABCE: 10        .byte $10   ; 
- D 1 - I - 0x01ABDF 06:ABCF: FE        .byte $FE   ; 
- D 1 - I - 0x01ABE0 06:ABD0: 02        .byte $02   ; 
- D 1 - I - 0x01ABE1 06:ABD1: FD        .byte $FD   ; 



_off014_2C_ABD2_01:
- D 1 - I - 0x01ABE2 06:ABD2: EA        .byte $EA   ; 
- D 1 - I - 0x01ABE3 06:ABD3: 03        .byte $03   ; 
- D 1 - I - 0x01ABE4 06:ABD4: E9        .byte $E9   ; 
- D 1 - I - 0x01ABE5 06:ABD5: 31        .byte $31   ; 
- D 1 - I - 0x01ABE6 06:ABD6: D7        .byte $D7   ; 
- D 1 - I - 0x01ABE7 06:ABD7: 70        .byte $70   ; 
- D 1 - I - 0x01ABE8 06:ABD8: 0F        .byte $0F   ; 
- D 1 - I - 0x01ABE9 06:ABD9: 25        .byte $25   ; 
- D 1 - I - 0x01ABEA 06:ABDA: E4        .byte $E4   ; 
- D 1 - I - 0x01ABEB 06:ABDB: 40        .byte $40   ; 
- D 1 - I - 0x01ABEC 06:ABDC: E3        .byte $E3   ; 
- D 1 - I - 0x01ABED 06:ABDD: 60        .byte $60   ; 
- D 1 - I - 0x01ABEE 06:ABDE: 60        .byte $60   ; 
- D 1 - I - 0x01ABEF 06:ABDF: F5        .byte $F5   ; 
- D 1 - I - 0x01ABF0 06:ABE0: 60        .byte $60   ; 
- D 1 - I - 0x01ABF1 06:ABE1: F0        .byte $F0   ; 
- D 1 - I - 0x01ABF2 06:ABE2: 50        .byte $50   ; 
- D 1 - I - 0x01ABF3 06:ABE3: 50        .byte $50   ; 
- D 1 - I - 0x01ABF4 06:ABE4: F5        .byte $F5   ; 
- D 1 - I - 0x01ABF5 06:ABE5: 50        .byte $50   ; 
- D 1 - I - 0x01ABF6 06:ABE6: F0        .byte $F0   ; 
- D 1 - I - 0x01ABF7 06:ABE7: 40        .byte $40   ; 
- D 1 - I - 0x01ABF8 06:ABE8: 40        .byte $40   ; 
- D 1 - I - 0x01ABF9 06:ABE9: E8        .byte $E8   ; 
- D 1 - I - 0x01ABFA 06:ABEA: 18        .byte $18   ; 
- D 1 - I - 0x01ABFB 06:ABEB: 60        .byte $60   ; 
- D 1 - I - 0x01ABFC 06:ABEC: 60        .byte $60   ; 
- D 1 - I - 0x01ABFD 06:ABED: 60        .byte $60   ; 
loc_FF_ABEE:
- D 1 - I - 0x01ABFE 06:ABEE: E9        .byte $E9   ; 
- D 1 - I - 0x01ABFF 06:ABEF: 71        .byte $71   ; 
- D 1 - I - 0x01AC00 06:ABF0: D7        .byte $D7   ; 
- D 1 - I - 0x01AC01 06:ABF1: 30        .byte $30   ; 
- D 1 - I - 0x01AC02 06:ABF2: 0F        .byte $0F   ; 
- D 1 - I - 0x01AC03 06:ABF3: 16        .byte $16   ; 
- D 1 - I - 0x01AC04 06:ABF4: EB        .byte $EB   ; 
- D 1 - I - 0x01AC05 06:ABF5: 53        .byte $53   ; 
- D 1 - I - 0x01AC06 06:ABF6: 31        .byte $31   ; 
- D 1 - I - 0x01AC07 06:ABF7: E4        .byte $E4   ; 
- D 1 - I - 0x01AC08 06:ABF8: 00        .byte $00   ; 
- D 1 - I - 0x01AC09 06:ABF9: A0        .byte $A0   ; 
- D 1 - I - 0x01AC0A 06:ABFA: A0        .byte $A0   ; 
- D 1 - I - 0x01AC0B 06:ABFB: A1        .byte $A1   ; 
- D 1 - I - 0x01AC0C 06:ABFC: FD        .byte $FD   ; 
- D 1 - I - 0x01AC0D 06:ABFD: 9C AC     .word sub_FD_AC9C
- D 1 - I - 0x01AC0F 06:ABFF: 5B        .byte $5B   ; 
- D 1 - I - 0x01AC10 06:AC00: E8        .byte $E8   ; 
- D 1 - I - 0x01AC11 06:AC01: 16        .byte $16   ; 
- D 1 - I - 0x01AC12 06:AC02: E4        .byte $E4   ; 
- D 1 - I - 0x01AC13 06:AC03: 00        .byte $00   ; 
- D 1 - I - 0x01AC14 06:AC04: A0        .byte $A0   ; 
- D 1 - I - 0x01AC15 06:AC05: A0        .byte $A0   ; 
- D 1 - I - 0x01AC16 06:AC06: A0        .byte $A0   ; 
- D 1 - I - 0x01AC17 06:AC07: A0        .byte $A0   ; 
- D 1 - I - 0x01AC18 06:AC08: FD        .byte $FD   ; 
- D 1 - I - 0x01AC19 06:AC09: 9C AC     .word sub_FD_AC9C
- D 1 - I - 0x01AC1B 06:AC0B: E6        .byte $E6   ; 
- D 1 - I - 0x01AC1C 06:AC0C: 01        .byte $01   ; 
- D 1 - I - 0x01AC1D 06:AC0D: F6        .byte $F6   ; 
- D 1 - I - 0x01AC1E 06:AC0E: 70        .byte $70   ; 
- D 1 - I - 0x01AC1F 06:AC0F: F0        .byte $F0   ; 
- D 1 - I - 0x01AC20 06:AC10: E6        .byte $E6   ; 
- D 1 - I - 0x01AC21 06:AC11: 53        .byte $53   ; 
- D 1 - I - 0x01AC22 06:AC12: 80        .byte $80   ; 
- D 1 - I - 0x01AC23 06:AC13: E9        .byte $E9   ; 
- D 1 - I - 0x01AC24 06:AC14: B1        .byte $B1   ; 
- D 1 - I - 0x01AC25 06:AC15: D7        .byte $D7   ; 
- D 1 - I - 0x01AC26 06:AC16: 70        .byte $70   ; 
- D 1 - I - 0x01AC27 06:AC17: 0F        .byte $0F   ; 
- D 1 - I - 0x01AC28 06:AC18: 25        .byte $25   ; 
- D 1 - I - 0x01AC29 06:AC19: EB        .byte $EB   ; 
- D 1 - I - 0x01AC2A 06:AC1A: 53        .byte $53   ; 
- D 1 - I - 0x01AC2B 06:AC1B: 32        .byte $32   ; 
- D 1 - I - 0x01AC2C 06:AC1C: E3        .byte $E3   ; 
- D 1 - I - 0x01AC2D 06:AC1D: 71        .byte $71   ; 
- D 1 - I - 0x01AC2E 06:AC1E: 61        .byte $61   ; 
- D 1 - I - 0x01AC2F 06:AC1F: 51        .byte $51   ; 
- D 1 - I - 0x01AC30 06:AC20: 32        .byte $32   ; 
- D 1 - I - 0x01AC31 06:AC21: 71        .byte $71   ; 
- D 1 - I - 0x01AC32 06:AC22: 61        .byte $61   ; 
- D 1 - I - 0x01AC33 06:AC23: 51        .byte $51   ; 
- D 1 - I - 0x01AC34 06:AC24: 38        .byte $38   ; 
- D 1 - I - 0x01AC35 06:AC25: 71        .byte $71   ; 
- D 1 - I - 0x01AC36 06:AC26: 61        .byte $61   ; 
- D 1 - I - 0x01AC37 06:AC27: 51        .byte $51   ; 
- D 1 - I - 0x01AC38 06:AC28: 32        .byte $32   ; 
- D 1 - I - 0x01AC39 06:AC29: 71        .byte $71   ; 
- D 1 - I - 0x01AC3A 06:AC2A: 61        .byte $61   ; 
- D 1 - I - 0x01AC3B 06:AC2B: 51        .byte $51   ; 
- D 1 - I - 0x01AC3C 06:AC2C: 32        .byte $32   ; 
- D 1 - I - 0x01AC3D 06:AC2D: 63        .byte $63   ; 
- D 1 - I - 0x01AC3E 06:AC2E: E9        .byte $E9   ; 
- D 1 - I - 0x01AC3F 06:AC2F: 31        .byte $31   ; 
- D 1 - I - 0x01AC40 06:AC30: E6        .byte $E6   ; 
- D 1 - I - 0x01AC41 06:AC31: 02        .byte $02   ; 
- D 1 - I - 0x01AC42 06:AC32: E3        .byte $E3   ; 
- D 1 - I - 0x01AC43 06:AC33: F2        .byte $F2   ; 
- D 1 - I - 0x01AC44 06:AC34: 00        .byte $00   ; 
- D 1 - I - 0x01AC45 06:AC35: 10        .byte $10   ; 
- D 1 - I - 0x01AC46 06:AC36: F1        .byte $F1   ; 
- D 1 - I - 0x01AC47 06:AC37: 20        .byte $20   ; 
- D 1 - I - 0x01AC48 06:AC38: 30        .byte $30   ; 
- D 1 - I - 0x01AC49 06:AC39: F0        .byte $F0   ; 
- D 1 - I - 0x01AC4A 06:AC3A: 40        .byte $40   ; 
- D 1 - I - 0x01AC4B 06:AC3B: 50        .byte $50   ; 
- D 1 - I - 0x01AC4C 06:AC3C: 60        .byte $60   ; 
- D 1 - I - 0x01AC4D 06:AC3D: E6        .byte $E6   ; 
- D 1 - I - 0x01AC4E 06:AC3E: 07        .byte $07   ; 
- D 1 - I - 0x01AC4F 06:AC3F: E3        .byte $E3   ; 
- D 1 - I - 0x01AC50 06:AC40: 71        .byte $71   ; 
- D 1 - I - 0x01AC51 06:AC41: 61        .byte $61   ; 
- D 1 - I - 0x01AC52 06:AC42: 51        .byte $51   ; 
- D 1 - I - 0x01AC53 06:AC43: 32        .byte $32   ; 
- D 1 - I - 0x01AC54 06:AC44: 71        .byte $71   ; 
- D 1 - I - 0x01AC55 06:AC45: 61        .byte $61   ; 
- D 1 - I - 0x01AC56 06:AC46: 51        .byte $51   ; 
- D 1 - I - 0x01AC57 06:AC47: 38        .byte $38   ; 
- D 1 - I - 0x01AC58 06:AC48: 71        .byte $71   ; 
- D 1 - I - 0x01AC59 06:AC49: 61        .byte $61   ; 
- D 1 - I - 0x01AC5A 06:AC4A: 51        .byte $51   ; 
- D 1 - I - 0x01AC5B 06:AC4B: 32        .byte $32   ; 
- D 1 - I - 0x01AC5C 06:AC4C: 71        .byte $71   ; 
- D 1 - I - 0x01AC5D 06:AC4D: 61        .byte $61   ; 
- D 1 - I - 0x01AC5E 06:AC4E: 51        .byte $51   ; 
- D 1 - I - 0x01AC5F 06:AC4F: 31        .byte $31   ; 
- D 1 - I - 0x01AC60 06:AC50: E6        .byte $E6   ; 
- D 1 - I - 0x01AC61 06:AC51: 02        .byte $02   ; 
- D 1 - I - 0x01AC62 06:AC52: F2        .byte $F2   ; 
- D 1 - I - 0x01AC63 06:AC53: 00        .byte $00   ; 
- D 1 - I - 0x01AC64 06:AC54: 10        .byte $10   ; 
- D 1 - I - 0x01AC65 06:AC55: F1        .byte $F1   ; 
- D 1 - I - 0x01AC66 06:AC56: 20        .byte $20   ; 
- D 1 - I - 0x01AC67 06:AC57: 30        .byte $30   ; 
- D 1 - I - 0x01AC68 06:AC58: F0        .byte $F0   ; 
- D 1 - I - 0x01AC69 06:AC59: 40        .byte $40   ; 
- D 1 - I - 0x01AC6A 06:AC5A: 50        .byte $50   ; 
- D 1 - I - 0x01AC6B 06:AC5B: 60        .byte $60   ; 
- D 1 - I - 0x01AC6C 06:AC5C: E6        .byte $E6   ; 
- D 1 - I - 0x01AC6D 06:AC5D: 07        .byte $07   ; 
- D 1 - I - 0x01AC6E 06:AC5E: 70        .byte $70   ; 
- D 1 - I - 0x01AC6F 06:AC5F: E8        .byte $E8   ; 
- D 1 - I - 0x01AC70 06:AC60: 72        .byte $72   ; 
- D 1 - I - 0x01AC71 06:AC61: E6        .byte $E6   ; 
- D 1 - I - 0x01AC72 06:AC62: 0E        .byte $0E   ; 
- D 1 - I - 0x01AC73 06:AC63: 7A        .byte $7A   ; 
- D 1 - I - 0x01AC74 06:AC64: E9        .byte $E9   ; 
- D 1 - I - 0x01AC75 06:AC65: 71        .byte $71   ; 
- D 1 - I - 0x01AC76 06:AC66: D7        .byte $D7   ; 
- D 1 - I - 0x01AC77 06:AC67: 30        .byte $30   ; 
- D 1 - I - 0x01AC78 06:AC68: 10        .byte $10   ; 
- D 1 - I - 0x01AC79 06:AC69: 34        .byte $34   ; 
- D 1 - I - 0x01AC7A 06:AC6A: EB        .byte $EB   ; 
- D 1 - I - 0x01AC7B 06:AC6B: 53        .byte $53   ; 
- D 1 - I - 0x01AC7C 06:AC6C: 32        .byte $32   ; 
- D 1 - I - 0x01AC7D 06:AC6D: E5        .byte $E5   ; 
- D 1 - I - 0x01AC7E 06:AC6E: 30        .byte $30   ; 
- D 1 - I - 0x01AC7F 06:AC6F: E3        .byte $E3   ; 
- D 1 - I - 0x01AC80 06:AC70: 31        .byte $31   ; 
- D 1 - I - 0x01AC81 06:AC71: 31        .byte $31   ; 
- D 1 - I - 0x01AC82 06:AC72: 30        .byte $30   ; 
- D 1 - I - 0x01AC83 06:AC73: E7        .byte $E7   ; 
- D 1 - I - 0x01AC84 06:AC74: 0F        .byte $0F   ; 
- D 1 - I - 0x01AC85 06:AC75: 65        .byte $65   ; 
- D 1 - I - 0x01AC86 06:AC76: E7        .byte $E7   ; 
- D 1 - I - 0x01AC87 06:AC77: 10        .byte $10   ; 
- D 1 - I - 0x01AC88 06:AC78: E5        .byte $E5   ; 
- D 1 - I - 0x01AC89 06:AC79: 30        .byte $30   ; 
- D 1 - I - 0x01AC8A 06:AC7A: E3        .byte $E3   ; 
- D 1 - I - 0x01AC8B 06:AC7B: 31        .byte $31   ; 
- D 1 - I - 0x01AC8C 06:AC7C: 31        .byte $31   ; 
- D 1 - I - 0x01AC8D 06:AC7D: 30        .byte $30   ; 
- D 1 - I - 0x01AC8E 06:AC7E: E7        .byte $E7   ; 
- D 1 - I - 0x01AC8F 06:AC7F: 0F        .byte $0F   ; 
- D 1 - I - 0x01AC90 06:AC80: 61        .byte $61   ; 
- D 1 - I - 0x01AC91 06:AC81: 83        .byte $83   ; 
- D 1 - I - 0x01AC92 06:AC82: E7        .byte $E7   ; 
- D 1 - I - 0x01AC93 06:AC83: 10        .byte $10   ; 
- D 1 - I - 0x01AC94 06:AC84: E5        .byte $E5   ; 
- D 1 - I - 0x01AC95 06:AC85: 30        .byte $30   ; 
- D 1 - I - 0x01AC96 06:AC86: E3        .byte $E3   ; 
- D 1 - I - 0x01AC97 06:AC87: 31        .byte $31   ; 
- D 1 - I - 0x01AC98 06:AC88: 31        .byte $31   ; 
- D 1 - I - 0x01AC99 06:AC89: 30        .byte $30   ; 
- D 1 - I - 0x01AC9A 06:AC8A: E7        .byte $E7   ; 
- D 1 - I - 0x01AC9B 06:AC8B: 0F        .byte $0F   ; 
- D 1 - I - 0x01AC9C 06:AC8C: 65        .byte $65   ; 
- D 1 - I - 0x01AC9D 06:AC8D: E7        .byte $E7   ; 
- D 1 - I - 0x01AC9E 06:AC8E: 10        .byte $10   ; 
- D 1 - I - 0x01AC9F 06:AC8F: E5        .byte $E5   ; 
- D 1 - I - 0x01ACA0 06:AC90: 30        .byte $30   ; 
- D 1 - I - 0x01ACA1 06:AC91: E3        .byte $E3   ; 
- D 1 - I - 0x01ACA2 06:AC92: 31        .byte $31   ; 
- D 1 - I - 0x01ACA3 06:AC93: 31        .byte $31   ; 
- D 1 - I - 0x01ACA4 06:AC94: 30        .byte $30   ; 
- D 1 - I - 0x01ACA5 06:AC95: 61        .byte $61   ; 
- D 1 - I - 0x01ACA6 06:AC96: 51        .byte $51   ; 
- D 1 - I - 0x01ACA7 06:AC97: 41        .byte $41   ; 
- D 1 - I - 0x01ACA8 06:AC98: FE        .byte $FE   ; 
- D 1 - I - 0x01ACA9 06:AC99: FF        .byte $FF   ; 
- D 1 - I - 0x01ACAA 06:AC9A: EE AB     .word loc_FF_ABEE



sub_FD_AC9C:
- D 1 - I - 0x01ACAC 06:AC9C: A0        .byte $A0   ; 
- D 1 - I - 0x01ACAD 06:AC9D: A1        .byte $A1   ; 
- D 1 - I - 0x01ACAE 06:AC9E: E3        .byte $E3   ; 
- D 1 - I - 0x01ACAF 06:AC9F: 01        .byte $01   ; 
- D 1 - I - 0x01ACB0 06:ACA0: C0        .byte $C0   ; 
- D 1 - I - 0x01ACB1 06:ACA1: F3        .byte $F3   ; 
- D 1 - I - 0x01ACB2 06:ACA2: 00        .byte $00   ; 
- D 1 - I - 0x01ACB3 06:ACA3: F0        .byte $F0   ; 
- D 1 - I - 0x01ACB4 06:ACA4: E4        .byte $E4   ; 
- D 1 - I - 0x01ACB5 06:ACA5: A0        .byte $A0   ; 
- D 1 - I - 0x01ACB6 06:ACA6: A0        .byte $A0   ; 
- D 1 - I - 0x01ACB7 06:ACA7: A0        .byte $A0   ; 
- D 1 - I - 0x01ACB8 06:ACA8: A1        .byte $A1   ; 
- D 1 - I - 0x01ACB9 06:ACA9: E3        .byte $E3   ; 
- D 1 - I - 0x01ACBA 06:ACAA: 01        .byte $01   ; 
- D 1 - I - 0x01ACBB 06:ACAB: C0        .byte $C0   ; 
- D 1 - I - 0x01ACBC 06:ACAC: F3        .byte $F3   ; 
- D 1 - I - 0x01ACBD 06:ACAD: 00        .byte $00   ; 
- D 1 - I - 0x01ACBE 06:ACAE: F0        .byte $F0   ; 
- D 1 - I - 0x01ACBF 06:ACAF: E4        .byte $E4   ; 
- D 1 - I - 0x01ACC0 06:ACB0: A0        .byte $A0   ; 
- D 1 - I - 0x01ACC1 06:ACB1: E3        .byte $E3   ; 
- D 1 - I - 0x01ACC2 06:ACB2: 00        .byte $00   ; 
- D 1 - I - 0x01ACC3 06:ACB3: 50        .byte $50   ; 
- D 1 - I - 0x01ACC4 06:ACB4: E8        .byte $E8   ; 
- D 1 - I - 0x01ACC5 06:ACB5: 34        .byte $34   ; 
- D 1 - I - 0x01ACC6 06:ACB6: 3B        .byte $3B   ; 
- D 1 - I - 0x01ACC7 06:ACB7: FD        .byte $FD   ; 



_off014_2C_ACB8_02:
- D 1 - I - 0x01ACC8 06:ACB8: EA        .byte $EA   ; 
- D 1 - I - 0x01ACC9 06:ACB9: 03        .byte $03   ; 
- D 1 - I - 0x01ACCA 06:ACBA: D7        .byte $D7   ; 
- D 1 - I - 0x01ACCB 06:ACBB: 10        .byte $10   ; 
- D 1 - I - 0x01ACCC 06:ACBC: E4        .byte $E4   ; 
- D 1 - I - 0x01ACCD 06:ACBD: 30        .byte $30   ; 
- D 1 - I - 0x01ACCE 06:ACBE: D7        .byte $D7   ; 
- D 1 - I - 0x01ACCF 06:ACBF: 0A        .byte $0A   ; 
- D 1 - I - 0x01ACD0 06:ACC0: E2        .byte $E2   ; 
- D 1 - I - 0x01ACD1 06:ACC1: 60        .byte $60   ; 
- D 1 - I - 0x01ACD2 06:ACC2: 60        .byte $60   ; 
- D 1 - I - 0x01ACD3 06:ACC3: D7        .byte $D7   ; 
- D 1 - I - 0x01ACD4 06:ACC4: 10        .byte $10   ; 
- D 1 - I - 0x01ACD5 06:ACC5: E4        .byte $E4   ; 
- D 1 - I - 0x01ACD6 06:ACC6: 20        .byte $20   ; 
- D 1 - I - 0x01ACD7 06:ACC7: D7        .byte $D7   ; 
- D 1 - I - 0x01ACD8 06:ACC8: 0A        .byte $0A   ; 
- D 1 - I - 0x01ACD9 06:ACC9: E2        .byte $E2   ; 
- D 1 - I - 0x01ACDA 06:ACCA: 50        .byte $50   ; 
- D 1 - I - 0x01ACDB 06:ACCB: 50        .byte $50   ; 
- D 1 - I - 0x01ACDC 06:ACCC: D7        .byte $D7   ; 
- D 1 - I - 0x01ACDD 06:ACCD: 10        .byte $10   ; 
- D 1 - I - 0x01ACDE 06:ACCE: E4        .byte $E4   ; 
- D 1 - I - 0x01ACDF 06:ACCF: 10        .byte $10   ; 
- D 1 - I - 0x01ACE0 06:ACD0: D7        .byte $D7   ; 
- D 1 - I - 0x01ACE1 06:ACD1: 0A        .byte $0A   ; 
- D 1 - I - 0x01ACE2 06:ACD2: E2        .byte $E2   ; 
- D 1 - I - 0x01ACE3 06:ACD3: 40        .byte $40   ; 
- D 1 - I - 0x01ACE4 06:ACD4: 40        .byte $40   ; 
- D 1 - I - 0x01ACE5 06:ACD5: D7        .byte $D7   ; 
- D 1 - I - 0x01ACE6 06:ACD6: 0A        .byte $0A   ; 
- D 1 - I - 0x01ACE7 06:ACD7: E3        .byte $E3   ; 
- D 1 - I - 0x01ACE8 06:ACD8: 60        .byte $60   ; 
- D 1 - I - 0x01ACE9 06:ACD9: E3        .byte $E3   ; 
- D 1 - I - 0x01ACEA 06:ACDA: 60        .byte $60   ; 
- D 1 - I - 0x01ACEB 06:ACDB: 60        .byte $60   ; 
loc_FF_ACDC:
- D 1 - I - 0x01ACEC 06:ACDC: D7        .byte $D7   ; 
- D 1 - I - 0x01ACED 06:ACDD: 12        .byte $12   ; 
- D 1 - I - 0x01ACEE 06:ACDE: FB        .byte $FB   ; 
- D 1 - I - 0x01ACEF 06:ACDF: E4        .byte $E4   ; 
- D 1 - I - 0x01ACF0 06:ACE0: 00        .byte $00   ; 
- D 1 - I - 0x01ACF1 06:ACE1: 70        .byte $70   ; 
- D 1 - I - 0x01ACF2 06:ACE2: E3        .byte $E3   ; 
- D 1 - I - 0x01ACF3 06:ACE3: 00        .byte $00   ; 
- D 1 - I - 0x01ACF4 06:ACE4: FE        .byte $FE   ; 
- D 1 - I - 0x01ACF5 06:ACE5: 08        .byte $08   ; 
- D 1 - I - 0x01ACF6 06:ACE6: FB        .byte $FB   ; 
- D 1 - I - 0x01ACF7 06:ACE7: E4        .byte $E4   ; 
- D 1 - I - 0x01ACF8 06:ACE8: 10        .byte $10   ; 
- D 1 - I - 0x01ACF9 06:ACE9: 80        .byte $80   ; 
- D 1 - I - 0x01ACFA 06:ACEA: E3        .byte $E3   ; 
- D 1 - I - 0x01ACFB 06:ACEB: 10        .byte $10   ; 
- D 1 - I - 0x01ACFC 06:ACEC: FE        .byte $FE   ; 
- D 1 - I - 0x01ACFD 06:ACED: 08        .byte $08   ; 
- D 1 - I - 0x01ACFE 06:ACEE: FB        .byte $FB   ; 
- D 1 - I - 0x01ACFF 06:ACEF: E4        .byte $E4   ; 
- D 1 - I - 0x01AD00 06:ACF0: 00        .byte $00   ; 
- D 1 - I - 0x01AD01 06:ACF1: 70        .byte $70   ; 
- D 1 - I - 0x01AD02 06:ACF2: E3        .byte $E3   ; 
- D 1 - I - 0x01AD03 06:ACF3: 00        .byte $00   ; 
- D 1 - I - 0x01AD04 06:ACF4: FE        .byte $FE   ; 
- D 1 - I - 0x01AD05 06:ACF5: 08        .byte $08   ; 
- D 1 - I - 0x01AD06 06:ACF6: FB        .byte $FB   ; 
- D 1 - I - 0x01AD07 06:ACF7: E4        .byte $E4   ; 
- D 1 - I - 0x01AD08 06:ACF8: 10        .byte $10   ; 
- D 1 - I - 0x01AD09 06:ACF9: 80        .byte $80   ; 
- D 1 - I - 0x01AD0A 06:ACFA: E3        .byte $E3   ; 
- D 1 - I - 0x01AD0B 06:ACFB: 10        .byte $10   ; 
- D 1 - I - 0x01AD0C 06:ACFC: FE        .byte $FE   ; 
- D 1 - I - 0x01AD0D 06:ACFD: 06        .byte $06   ; 
- D 1 - I - 0x01AD0E 06:ACFE: E4        .byte $E4   ; 
- D 1 - I - 0x01AD0F 06:ACFF: 10        .byte $10   ; 
- D 1 - I - 0x01AD10 06:AD00: E3        .byte $E3   ; 
- D 1 - I - 0x01AD11 06:AD01: 10        .byte $10   ; 
- D 1 - I - 0x01AD12 06:AD02: E4        .byte $E4   ; 
- D 1 - I - 0x01AD13 06:AD03: 20        .byte $20   ; 
- D 1 - I - 0x01AD14 06:AD04: E3        .byte $E3   ; 
- D 1 - I - 0x01AD15 06:AD05: 20        .byte $20   ; 
- D 1 - I - 0x01AD16 06:AD06: E4        .byte $E4   ; 
- D 1 - I - 0x01AD17 06:AD07: 30        .byte $30   ; 
- D 1 - I - 0x01AD18 06:AD08: E3        .byte $E3   ; 
- D 1 - I - 0x01AD19 06:AD09: 30        .byte $30   ; 
- D 1 - I - 0x01AD1A 06:AD0A: D7        .byte $D7   ; 
- D 1 - I - 0x01AD1B 06:AD0B: 10        .byte $10   ; 
- D 1 - I - 0x01AD1C 06:AD0C: FD        .byte $FD   ; 
- D 1 - I - 0x01AD1D 06:AD0D: 82 AD     .word sub_FD_AD82
- D 1 - I - 0x01AD1F 06:AD0F: FB        .byte $FB   ; 
- D 1 - I - 0x01AD20 06:AD10: E4        .byte $E4   ; 
- D 1 - I - 0x01AD21 06:AD11: 80        .byte $80   ; 
- D 1 - I - 0x01AD22 06:AD12: E3        .byte $E3   ; 
- D 1 - I - 0x01AD23 06:AD13: 80        .byte $80   ; 
- D 1 - I - 0x01AD24 06:AD14: FE        .byte $FE   ; 
- D 1 - I - 0x01AD25 06:AD15: 06        .byte $06   ; 
- D 1 - I - 0x01AD26 06:AD16: FD        .byte $FD   ; 
- D 1 - I - 0x01AD27 06:AD17: 82 AD     .word sub_FD_AD82
- D 1 - I - 0x01AD29 06:AD19: FB        .byte $FB   ; 
- D 1 - I - 0x01AD2A 06:AD1A: E4        .byte $E4   ; 
- D 1 - I - 0x01AD2B 06:AD1B: 80        .byte $80   ; 
- D 1 - I - 0x01AD2C 06:AD1C: E3        .byte $E3   ; 
- D 1 - I - 0x01AD2D 06:AD1D: 80        .byte $80   ; 
- D 1 - I - 0x01AD2E 06:AD1E: FE        .byte $FE   ; 
- D 1 - I - 0x01AD2F 06:AD1F: 03        .byte $03   ; 
- D 1 - I - 0x01AD30 06:AD20: FB        .byte $FB   ; 
- D 1 - I - 0x01AD31 06:AD21: E4        .byte $E4   ; 
- D 1 - I - 0x01AD32 06:AD22: 50        .byte $50   ; 
- D 1 - I - 0x01AD33 06:AD23: E3        .byte $E3   ; 
- D 1 - I - 0x01AD34 06:AD24: 50        .byte $50   ; 
- D 1 - I - 0x01AD35 06:AD25: FE        .byte $FE   ; 
- D 1 - I - 0x01AD36 06:AD26: 03        .byte $03   ; 
- D 1 - I - 0x01AD37 06:AD27: FB        .byte $FB   ; 
- D 1 - I - 0x01AD38 06:AD28: E4        .byte $E4   ; 
- D 1 - I - 0x01AD39 06:AD29: B0        .byte $B0   ; 
- D 1 - I - 0x01AD3A 06:AD2A: E3        .byte $E3   ; 
- D 1 - I - 0x01AD3B 06:AD2B: B0        .byte $B0   ; 
- D 1 - I - 0x01AD3C 06:AD2C: FE        .byte $FE   ; 
- D 1 - I - 0x01AD3D 06:AD2D: 03        .byte $03   ; 
- D 1 - I - 0x01AD3E 06:AD2E: FB        .byte $FB   ; 
- D 1 - I - 0x01AD3F 06:AD2F: E4        .byte $E4   ; 
- D 1 - I - 0x01AD40 06:AD30: 70        .byte $70   ; 
- D 1 - I - 0x01AD41 06:AD31: E3        .byte $E3   ; 
- D 1 - I - 0x01AD42 06:AD32: 70        .byte $70   ; 
- D 1 - I - 0x01AD43 06:AD33: 70        .byte $70   ; 
- D 1 - I - 0x01AD44 06:AD34: FE        .byte $FE   ; 
- D 1 - I - 0x01AD45 06:AD35: 02        .byte $02   ; 
- D 1 - I - 0x01AD46 06:AD36: E4        .byte $E4   ; 
- D 1 - I - 0x01AD47 06:AD37: B0        .byte $B0   ; 
- D 1 - I - 0x01AD48 06:AD38: E3        .byte $E3   ; 
- D 1 - I - 0x01AD49 06:AD39: B0        .byte $B0   ; 
- D 1 - I - 0x01AD4A 06:AD3A: B0        .byte $B0   ; 
- D 1 - I - 0x01AD4B 06:AD3B: E4        .byte $E4   ; 
- D 1 - I - 0x01AD4C 06:AD3C: B0        .byte $B0   ; 
- D 1 - I - 0x01AD4D 06:AD3D: E3        .byte $E3   ; 
- D 1 - I - 0x01AD4E 06:AD3E: B0        .byte $B0   ; 
- D 1 - I - 0x01AD4F 06:AD3F: B0        .byte $B0   ; 
- D 1 - I - 0x01AD50 06:AD40: D7        .byte $D7   ; 
- D 1 - I - 0x01AD51 06:AD41: 10        .byte $10   ; 
- D 1 - I - 0x01AD52 06:AD42: E4        .byte $E4   ; 
- D 1 - I - 0x01AD53 06:AD43: 30        .byte $30   ; 
- D 1 - I - 0x01AD54 06:AD44: E3        .byte $E3   ; 
- D 1 - I - 0x01AD55 06:AD45: 30        .byte $30   ; 
- D 1 - I - 0x01AD56 06:AD46: C0        .byte $C0   ; 
- D 1 - I - 0x01AD57 06:AD47: 30        .byte $30   ; 
- D 1 - I - 0x01AD58 06:AD48: C0        .byte $C0   ; 
- D 1 - I - 0x01AD59 06:AD49: 30        .byte $30   ; 
- D 1 - I - 0x01AD5A 06:AD4A: D7        .byte $D7   ; 
- D 1 - I - 0x01AD5B 06:AD4B: 20        .byte $20   ; 
- D 1 - I - 0x01AD5C 06:AD4C: 65        .byte $65   ; 
- D 1 - I - 0x01AD5D 06:AD4D: D7        .byte $D7   ; 
- D 1 - I - 0x01AD5E 06:AD4E: 10        .byte $10   ; 
- D 1 - I - 0x01AD5F 06:AD4F: E4        .byte $E4   ; 
- D 1 - I - 0x01AD60 06:AD50: 30        .byte $30   ; 
- D 1 - I - 0x01AD61 06:AD51: E3        .byte $E3   ; 
- D 1 - I - 0x01AD62 06:AD52: 30        .byte $30   ; 
- D 1 - I - 0x01AD63 06:AD53: C0        .byte $C0   ; 
- D 1 - I - 0x01AD64 06:AD54: 30        .byte $30   ; 
- D 1 - I - 0x01AD65 06:AD55: C0        .byte $C0   ; 
- D 1 - I - 0x01AD66 06:AD56: 30        .byte $30   ; 
- D 1 - I - 0x01AD67 06:AD57: D7        .byte $D7   ; 
- D 1 - I - 0x01AD68 06:AD58: 20        .byte $20   ; 
- D 1 - I - 0x01AD69 06:AD59: 61        .byte $61   ; 
- D 1 - I - 0x01AD6A 06:AD5A: 83        .byte $83   ; 
- D 1 - I - 0x01AD6B 06:AD5B: D7        .byte $D7   ; 
- D 1 - I - 0x01AD6C 06:AD5C: 10        .byte $10   ; 
- D 1 - I - 0x01AD6D 06:AD5D: E4        .byte $E4   ; 
- D 1 - I - 0x01AD6E 06:AD5E: 30        .byte $30   ; 
- D 1 - I - 0x01AD6F 06:AD5F: E3        .byte $E3   ; 
- D 1 - I - 0x01AD70 06:AD60: 30        .byte $30   ; 
- D 1 - I - 0x01AD71 06:AD61: C0        .byte $C0   ; 
- D 1 - I - 0x01AD72 06:AD62: 30        .byte $30   ; 
- D 1 - I - 0x01AD73 06:AD63: C0        .byte $C0   ; 
- D 1 - I - 0x01AD74 06:AD64: 30        .byte $30   ; 
- D 1 - I - 0x01AD75 06:AD65: D7        .byte $D7   ; 
- D 1 - I - 0x01AD76 06:AD66: 20        .byte $20   ; 
- D 1 - I - 0x01AD77 06:AD67: 65        .byte $65   ; 
- D 1 - I - 0x01AD78 06:AD68: D7        .byte $D7   ; 
- D 1 - I - 0x01AD79 06:AD69: 10        .byte $10   ; 
- D 1 - I - 0x01AD7A 06:AD6A: E4        .byte $E4   ; 
- D 1 - I - 0x01AD7B 06:AD6B: 30        .byte $30   ; 
- D 1 - I - 0x01AD7C 06:AD6C: E3        .byte $E3   ; 
- D 1 - I - 0x01AD7D 06:AD6D: 30        .byte $30   ; 
- D 1 - I - 0x01AD7E 06:AD6E: C0        .byte $C0   ; 
- D 1 - I - 0x01AD7F 06:AD6F: 30        .byte $30   ; 
- D 1 - I - 0x01AD80 06:AD70: C0        .byte $C0   ; 
- D 1 - I - 0x01AD81 06:AD71: 30        .byte $30   ; 
- D 1 - I - 0x01AD82 06:AD72: E4        .byte $E4   ; 
- D 1 - I - 0x01AD83 06:AD73: 60        .byte $60   ; 
- D 1 - I - 0x01AD84 06:AD74: E3        .byte $E3   ; 
- D 1 - I - 0x01AD85 06:AD75: 60        .byte $60   ; 
- D 1 - I - 0x01AD86 06:AD76: E4        .byte $E4   ; 
- D 1 - I - 0x01AD87 06:AD77: 50        .byte $50   ; 
- D 1 - I - 0x01AD88 06:AD78: E3        .byte $E3   ; 
- D 1 - I - 0x01AD89 06:AD79: 50        .byte $50   ; 
- D 1 - I - 0x01AD8A 06:AD7A: E4        .byte $E4   ; 
- D 1 - I - 0x01AD8B 06:AD7B: 40        .byte $40   ; 
- D 1 - I - 0x01AD8C 06:AD7C: E3        .byte $E3   ; 
- D 1 - I - 0x01AD8D 06:AD7D: 40        .byte $40   ; 
- D 1 - I - 0x01AD8E 06:AD7E: FE        .byte $FE   ; 
- D 1 - I - 0x01AD8F 06:AD7F: FF        .byte $FF   ; 
- D 1 - I - 0x01AD90 06:AD80: DC AC     .word loc_FF_ACDC



sub_FD_AD82:
- D 1 - I - 0x01AD92 06:AD82: FB        .byte $FB   ; 
- D 1 - I - 0x01AD93 06:AD83: E3        .byte $E3   ; 
- D 1 - I - 0x01AD94 06:AD84: 00        .byte $00   ; 
- D 1 - I - 0x01AD95 06:AD85: E2        .byte $E2   ; 
- D 1 - I - 0x01AD96 06:AD86: 00        .byte $00   ; 
- D 1 - I - 0x01AD97 06:AD87: FE        .byte $FE   ; 
- D 1 - I - 0x01AD98 06:AD88: 06        .byte $06   ; 
- D 1 - I - 0x01AD99 06:AD89: FB        .byte $FB   ; 
- D 1 - I - 0x01AD9A 06:AD8A: E4        .byte $E4   ; 
- D 1 - I - 0x01AD9B 06:AD8B: A0        .byte $A0   ; 
- D 1 - I - 0x01AD9C 06:AD8C: E3        .byte $E3   ; 
- D 1 - I - 0x01AD9D 06:AD8D: A0        .byte $A0   ; 
- D 1 - I - 0x01AD9E 06:AD8E: FE        .byte $FE   ; 
- D 1 - I - 0x01AD9F 06:AD8F: 06        .byte $06   ; 
- D 1 - I - 0x01ADA0 06:AD90: FB        .byte $FB   ; 
- D 1 - I - 0x01ADA1 06:AD91: E4        .byte $E4   ; 
- D 1 - I - 0x01ADA2 06:AD92: 90        .byte $90   ; 
- D 1 - I - 0x01ADA3 06:AD93: E3        .byte $E3   ; 
- D 1 - I - 0x01ADA4 06:AD94: 90        .byte $90   ; 
- D 1 - I - 0x01ADA5 06:AD95: FE        .byte $FE   ; 
- D 1 - I - 0x01ADA6 06:AD96: 06        .byte $06   ; 
- D 1 - I - 0x01ADA7 06:AD97: FD        .byte $FD   ; 



_off014_2C_AD98_03:
- D 1 - I - 0x01ADA8 06:AD98: D1        .byte $D1   ; 
- D 1 - I - 0x01ADA9 06:AD99: B0        .byte $B0   ; 
- D 1 - I - 0x01ADAA 06:AD9A: 15        .byte $15   ; 
- D 1 - I - 0x01ADAB 06:AD9B: A0        .byte $A0   ; 
- D 1 - I - 0x01ADAC 06:AD9C: 25        .byte $25   ; 
- D 1 - I - 0x01ADAD 06:AD9D: A0        .byte $A0   ; 
- D 1 - I - 0x01ADAE 06:AD9E: 25        .byte $25   ; 
- D 1 - I - 0x01ADAF 06:AD9F: B0        .byte $B0   ; 
- D 1 - I - 0x01ADB0 06:ADA0: 15        .byte $15   ; 
- D 1 - I - 0x01ADB1 06:ADA1: A0        .byte $A0   ; 
- D 1 - I - 0x01ADB2 06:ADA2: 25        .byte $25   ; 
- D 1 - I - 0x01ADB3 06:ADA3: A0        .byte $A0   ; 
- D 1 - I - 0x01ADB4 06:ADA4: 25        .byte $25   ; 
- D 1 - I - 0x01ADB5 06:ADA5: B0        .byte $B0   ; 
- D 1 - I - 0x01ADB6 06:ADA6: 15        .byte $15   ; 
- D 1 - I - 0x01ADB7 06:ADA7: A0        .byte $A0   ; 
- D 1 - I - 0x01ADB8 06:ADA8: 25        .byte $25   ; 
- D 1 - I - 0x01ADB9 06:ADA9: A0        .byte $A0   ; 
- D 1 - I - 0x01ADBA 06:ADAA: 21        .byte $21   ; 
- D 1 - I - 0x01ADBB 06:ADAB: A3        .byte $A3   ; 
- D 1 - I - 0x01ADBC 06:ADAC: A0        .byte $A0   ; 
- D 1 - I - 0x01ADBD 06:ADAD: 25        .byte $25   ; 
- D 1 - I - 0x01ADBE 06:ADAE: A0        .byte $A0   ; 
- D 1 - I - 0x01ADBF 06:ADAF: 25        .byte $25   ; 
- D 1 - I - 0x01ADC0 06:ADB0: A0        .byte $A0   ; 
- D 1 - I - 0x01ADC1 06:ADB1: 25        .byte $25   ; 
loc_FF_ADB2:
- D 1 - I - 0x01ADC2 06:ADB2: D1        .byte $D1   ; 
- D 1 - I - 0x01ADC3 06:ADB3: FB        .byte $FB   ; 
- D 1 - I - 0x01ADC4 06:ADB4: B0        .byte $B0   ; 
- D 1 - I - 0x01ADC5 06:ADB5: 15        .byte $15   ; 
- D 1 - I - 0x01ADC6 06:ADB6: B0        .byte $B0   ; 
- D 1 - I - 0x01ADC7 06:ADB7: 25        .byte $25   ; 
- D 1 - I - 0x01ADC8 06:ADB8: B0        .byte $B0   ; 
- D 1 - I - 0x01ADC9 06:ADB9: 25        .byte $25   ; 
- D 1 - I - 0x01ADCA 06:ADBA: A0        .byte $A0   ; 
- D 1 - I - 0x01ADCB 06:ADBB: 25        .byte $25   ; 
- D 1 - I - 0x01ADCC 06:ADBC: 16        .byte $16   ; 
- D 1 - I - 0x01ADCD 06:ADBD: 26        .byte $26   ; 
- D 1 - I - 0x01ADCE 06:ADBE: B0        .byte $B0   ; 
- D 1 - I - 0x01ADCF 06:ADBF: 15        .byte $15   ; 
- D 1 - I - 0x01ADD0 06:ADC0: 26        .byte $26   ; 
- D 1 - I - 0x01ADD1 06:ADC1: B0        .byte $B0   ; 
- D 1 - I - 0x01ADD2 06:ADC2: 25        .byte $25   ; 
- D 1 - I - 0x01ADD3 06:ADC3: A0        .byte $A0   ; 
- D 1 - I - 0x01ADD4 06:ADC4: 25        .byte $25   ; 
- D 1 - I - 0x01ADD5 06:ADC5: B0        .byte $B0   ; 
- D 1 - I - 0x01ADD6 06:ADC6: 25        .byte $25   ; 
- D 1 - I - 0x01ADD7 06:ADC7: 26        .byte $26   ; 
- D 1 - I - 0x01ADD8 06:ADC8: FE        .byte $FE   ; 
- D 1 - I - 0x01ADD9 06:ADC9: 03        .byte $03   ; 
- D 1 - I - 0x01ADDA 06:ADCA: B0        .byte $B0   ; 
- D 1 - I - 0x01ADDB 06:ADCB: 15        .byte $15   ; 
- D 1 - I - 0x01ADDC 06:ADCC: B0        .byte $B0   ; 
- D 1 - I - 0x01ADDD 06:ADCD: 25        .byte $25   ; 
- D 1 - I - 0x01ADDE 06:ADCE: B0        .byte $B0   ; 
- D 1 - I - 0x01ADDF 06:ADCF: 25        .byte $25   ; 
- D 1 - I - 0x01ADE0 06:ADD0: A0        .byte $A0   ; 
- D 1 - I - 0x01ADE1 06:ADD1: 25        .byte $25   ; 
- D 1 - I - 0x01ADE2 06:ADD2: 16        .byte $16   ; 
- D 1 - I - 0x01ADE3 06:ADD3: 26        .byte $26   ; 
- D 1 - I - 0x01ADE4 06:ADD4: B0        .byte $B0   ; 
- D 1 - I - 0x01ADE5 06:ADD5: 25        .byte $25   ; 
- D 1 - I - 0x01ADE6 06:ADD6: 26        .byte $26   ; 
- D 1 - I - 0x01ADE7 06:ADD7: B0        .byte $B0   ; 
- D 1 - I - 0x01ADE8 06:ADD8: 25        .byte $25   ; 
- D 1 - I - 0x01ADE9 06:ADD9: A0        .byte $A0   ; 
- D 1 - I - 0x01ADEA 06:ADDA: 21        .byte $21   ; 
- D 1 - I - 0x01ADEB 06:ADDB: A3        .byte $A3   ; 
- D 1 - I - 0x01ADEC 06:ADDC: A0        .byte $A0   ; 
- D 1 - I - 0x01ADED 06:ADDD: 25        .byte $25   ; 
- D 1 - I - 0x01ADEE 06:ADDE: A0        .byte $A0   ; 
- D 1 - I - 0x01ADEF 06:ADDF: 25        .byte $25   ; 
- D 1 - I - 0x01ADF0 06:ADE0: FB        .byte $FB   ; 
- D 1 - I - 0x01ADF1 06:ADE1: B0        .byte $B0   ; 
- D 1 - I - 0x01ADF2 06:ADE2: 15        .byte $15   ; 
- D 1 - I - 0x01ADF3 06:ADE3: B0        .byte $B0   ; 
- D 1 - I - 0x01ADF4 06:ADE4: 25        .byte $25   ; 
- D 1 - I - 0x01ADF5 06:ADE5: B0        .byte $B0   ; 
- D 1 - I - 0x01ADF6 06:ADE6: 25        .byte $25   ; 
- D 1 - I - 0x01ADF7 06:ADE7: A0        .byte $A0   ; 
- D 1 - I - 0x01ADF8 06:ADE8: 25        .byte $25   ; 
- D 1 - I - 0x01ADF9 06:ADE9: 16        .byte $16   ; 
- D 1 - I - 0x01ADFA 06:ADEA: 26        .byte $26   ; 
- D 1 - I - 0x01ADFB 06:ADEB: B0        .byte $B0   ; 
- D 1 - I - 0x01ADFC 06:ADEC: 15        .byte $15   ; 
- D 1 - I - 0x01ADFD 06:ADED: 26        .byte $26   ; 
- D 1 - I - 0x01ADFE 06:ADEE: B0        .byte $B0   ; 
- D 1 - I - 0x01ADFF 06:ADEF: 25        .byte $25   ; 
- D 1 - I - 0x01AE00 06:ADF0: A0        .byte $A0   ; 
- D 1 - I - 0x01AE01 06:ADF1: 25        .byte $25   ; 
- D 1 - I - 0x01AE02 06:ADF2: B0        .byte $B0   ; 
- D 1 - I - 0x01AE03 06:ADF3: 25        .byte $25   ; 
- D 1 - I - 0x01AE04 06:ADF4: 26        .byte $26   ; 
- D 1 - I - 0x01AE05 06:ADF5: FE        .byte $FE   ; 
- D 1 - I - 0x01AE06 06:ADF6: 03        .byte $03   ; 
- D 1 - I - 0x01AE07 06:ADF7: B0        .byte $B0   ; 
- D 1 - I - 0x01AE08 06:ADF8: 15        .byte $15   ; 
- D 1 - I - 0x01AE09 06:ADF9: B0        .byte $B0   ; 
- D 1 - I - 0x01AE0A 06:ADFA: 25        .byte $25   ; 
- D 1 - I - 0x01AE0B 06:ADFB: B0        .byte $B0   ; 
- D 1 - I - 0x01AE0C 06:ADFC: 25        .byte $25   ; 
- D 1 - I - 0x01AE0D 06:ADFD: A0        .byte $A0   ; 
- D 1 - I - 0x01AE0E 06:ADFE: 25        .byte $25   ; 
- D 1 - I - 0x01AE0F 06:ADFF: 16        .byte $16   ; 
- D 1 - I - 0x01AE10 06:AE00: 26        .byte $26   ; 
- D 1 - I - 0x01AE11 06:AE01: B0        .byte $B0   ; 
- D 1 - I - 0x01AE12 06:AE02: 25        .byte $25   ; 
- D 1 - I - 0x01AE13 06:AE03: 26        .byte $26   ; 
- D 1 - I - 0x01AE14 06:AE04: B0        .byte $B0   ; 
- D 1 - I - 0x01AE15 06:AE05: 25        .byte $25   ; 
- D 1 - I - 0x01AE16 06:AE06: A0        .byte $A0   ; 
- D 1 - I - 0x01AE17 06:AE07: 25        .byte $25   ; 
- D 1 - I - 0x01AE18 06:AE08: A0        .byte $A0   ; 
- D 1 - I - 0x01AE19 06:AE09: 25        .byte $25   ; 
- D 1 - I - 0x01AE1A 06:AE0A: A0        .byte $A0   ; 
- D 1 - I - 0x01AE1B 06:AE0B: 25        .byte $25   ; 
- D 1 - I - 0x01AE1C 06:AE0C: D1        .byte $D1   ; 
- D 1 - I - 0x01AE1D 06:AE0D: FB        .byte $FB   ; 
- D 1 - I - 0x01AE1E 06:AE0E: FD        .byte $FD   ; 
- D 1 - I - 0x01AE1F 06:AE0F: 7D AE     .word sub_FD_AE7D
- D 1 - I - 0x01AE21 06:AE11: 26        .byte $26   ; 
- D 1 - I - 0x01AE22 06:AE12: B0        .byte $B0   ; 
- D 1 - I - 0x01AE23 06:AE13: 25        .byte $25   ; 
- D 1 - I - 0x01AE24 06:AE14: A0        .byte $A0   ; 
- D 1 - I - 0x01AE25 06:AE15: 25        .byte $25   ; 
- D 1 - I - 0x01AE26 06:AE16: 26        .byte $26   ; 
- D 1 - I - 0x01AE27 06:AE17: 26        .byte $26   ; 
- D 1 - I - 0x01AE28 06:AE18: FD        .byte $FD   ; 
- D 1 - I - 0x01AE29 06:AE19: 7D AE     .word sub_FD_AE7D
- D 1 - I - 0x01AE2B 06:AE1B: A0        .byte $A0   ; 
- D 1 - I - 0x01AE2C 06:AE1C: 25        .byte $25   ; 
- D 1 - I - 0x01AE2D 06:AE1D: A0        .byte $A0   ; 
- D 1 - I - 0x01AE2E 06:AE1E: 25        .byte $25   ; 
- D 1 - I - 0x01AE2F 06:AE1F: A0        .byte $A0   ; 
- D 1 - I - 0x01AE30 06:AE20: 25        .byte $25   ; 
- D 1 - I - 0x01AE31 06:AE21: A0        .byte $A0   ; 
- D 1 - I - 0x01AE32 06:AE22: 25        .byte $25   ; 
- D 1 - I - 0x01AE33 06:AE23: A0        .byte $A0   ; 
- D 1 - I - 0x01AE34 06:AE24: 25        .byte $25   ; 
- D 1 - I - 0x01AE35 06:AE25: FE        .byte $FE   ; 
- D 1 - I - 0x01AE36 06:AE26: 02        .byte $02   ; 
- D 1 - I - 0x01AE37 06:AE27: B0        .byte $B0   ; 
- D 1 - I - 0x01AE38 06:AE28: 25        .byte $25   ; 
- D 1 - I - 0x01AE39 06:AE29: B0        .byte $B0   ; 
- D 1 - I - 0x01AE3A 06:AE2A: 25        .byte $25   ; 
- D 1 - I - 0x01AE3B 06:AE2B: B0        .byte $B0   ; 
- D 1 - I - 0x01AE3C 06:AE2C: 25        .byte $25   ; 
- D 1 - I - 0x01AE3D 06:AE2D: A0        .byte $A0   ; 
- D 1 - I - 0x01AE3E 06:AE2E: 25        .byte $25   ; 
- D 1 - I - 0x01AE3F 06:AE2F: A0        .byte $A0   ; 
- D 1 - I - 0x01AE40 06:AE30: 25        .byte $25   ; 
- D 1 - I - 0x01AE41 06:AE31: A0        .byte $A0   ; 
- D 1 - I - 0x01AE42 06:AE32: 25        .byte $25   ; 
- D 1 - I - 0x01AE43 06:AE33: FB        .byte $FB   ; 
- D 1 - I - 0x01AE44 06:AE34: B0        .byte $B0   ; 
- D 1 - I - 0x01AE45 06:AE35: 25        .byte $25   ; 
- D 1 - I - 0x01AE46 06:AE36: A0        .byte $A0   ; 
- D 1 - I - 0x01AE47 06:AE37: 21        .byte $21   ; 
- D 1 - I - 0x01AE48 06:AE38: A3        .byte $A3   ; 
- D 1 - I - 0x01AE49 06:AE39: A0        .byte $A0   ; 
- D 1 - I - 0x01AE4A 06:AE3A: 25        .byte $25   ; 
- D 1 - I - 0x01AE4B 06:AE3B: FE        .byte $FE   ; 
- D 1 - I - 0x01AE4C 06:AE3C: 02        .byte $02   ; 
- D 1 - I - 0x01AE4D 06:AE3D: B0        .byte $B0   ; 
- D 1 - I - 0x01AE4E 06:AE3E: 25        .byte $25   ; 
- D 1 - I - 0x01AE4F 06:AE3F: A0        .byte $A0   ; 
- D 1 - I - 0x01AE50 06:AE40: 21        .byte $21   ; 
- D 1 - I - 0x01AE51 06:AE41: A3        .byte $A3   ; 
- D 1 - I - 0x01AE52 06:AE42: A0        .byte $A0   ; 
- D 1 - I - 0x01AE53 06:AE43: 25        .byte $25   ; 
- D 1 - I - 0x01AE54 06:AE44: A0        .byte $A0   ; 
- D 1 - I - 0x01AE55 06:AE45: 25        .byte $25   ; 
- D 1 - I - 0x01AE56 06:AE46: A0        .byte $A0   ; 
- D 1 - I - 0x01AE57 06:AE47: 25        .byte $25   ; 
- D 1 - I - 0x01AE58 06:AE48: A0        .byte $A0   ; 
- D 1 - I - 0x01AE59 06:AE49: 25        .byte $25   ; 
- D 1 - I - 0x01AE5A 06:AE4A: D1        .byte $D1   ; 
- D 1 - I - 0x01AE5B 06:AE4B: FB        .byte $FB   ; 
- D 1 - I - 0x01AE5C 06:AE4C: B0        .byte $B0   ; 
- D 1 - I - 0x01AE5D 06:AE4D: 15        .byte $15   ; 
- D 1 - I - 0x01AE5E 06:AE4E: A0        .byte $A0   ; 
- D 1 - I - 0x01AE5F 06:AE4F: 25        .byte $25   ; 
- D 1 - I - 0x01AE60 06:AE50: 16        .byte $16   ; 
- D 1 - I - 0x01AE61 06:AE51: A0        .byte $A0   ; 
- D 1 - I - 0x01AE62 06:AE52: 25        .byte $25   ; 
- D 1 - I - 0x01AE63 06:AE53: 16        .byte $16   ; 
- D 1 - I - 0x01AE64 06:AE54: A0        .byte $A0   ; 
- D 1 - I - 0x01AE65 06:AE55: 25        .byte $25   ; 
- D 1 - I - 0x01AE66 06:AE56: A0        .byte $A0   ; 
- D 1 - I - 0x01AE67 06:AE57: 25        .byte $25   ; 
- D 1 - I - 0x01AE68 06:AE58: 16        .byte $16   ; 
- D 1 - I - 0x01AE69 06:AE59: B0        .byte $B0   ; 
- D 1 - I - 0x01AE6A 06:AE5A: 15        .byte $15   ; 
- D 1 - I - 0x01AE6B 06:AE5B: A0        .byte $A0   ; 
- D 1 - I - 0x01AE6C 06:AE5C: 25        .byte $25   ; 
- D 1 - I - 0x01AE6D 06:AE5D: A0        .byte $A0   ; 
- D 1 - I - 0x01AE6E 06:AE5E: 25        .byte $25   ; 
- D 1 - I - 0x01AE6F 06:AE5F: A0        .byte $A0   ; 
- D 1 - I - 0x01AE70 06:AE60: 25        .byte $25   ; 
- D 1 - I - 0x01AE71 06:AE61: FE        .byte $FE   ; 
- D 1 - I - 0x01AE72 06:AE62: 03        .byte $03   ; 
- D 1 - I - 0x01AE73 06:AE63: B0        .byte $B0   ; 
- D 1 - I - 0x01AE74 06:AE64: 25        .byte $25   ; 
- D 1 - I - 0x01AE75 06:AE65: A0        .byte $A0   ; 
- D 1 - I - 0x01AE76 06:AE66: 25        .byte $25   ; 
- D 1 - I - 0x01AE77 06:AE67: 16        .byte $16   ; 
- D 1 - I - 0x01AE78 06:AE68: A0        .byte $A0   ; 
- D 1 - I - 0x01AE79 06:AE69: 25        .byte $25   ; 
- D 1 - I - 0x01AE7A 06:AE6A: 16        .byte $16   ; 
- D 1 - I - 0x01AE7B 06:AE6B: A0        .byte $A0   ; 
- D 1 - I - 0x01AE7C 06:AE6C: 25        .byte $25   ; 
- D 1 - I - 0x01AE7D 06:AE6D: A0        .byte $A0   ; 
- D 1 - I - 0x01AE7E 06:AE6E: 25        .byte $25   ; 
- D 1 - I - 0x01AE7F 06:AE6F: B0        .byte $B0   ; 
- D 1 - I - 0x01AE80 06:AE70: 25        .byte $25   ; 
- D 1 - I - 0x01AE81 06:AE71: A0        .byte $A0   ; 
- D 1 - I - 0x01AE82 06:AE72: 25        .byte $25   ; 
- D 1 - I - 0x01AE83 06:AE73: A0        .byte $A0   ; 
- D 1 - I - 0x01AE84 06:AE74: 25        .byte $25   ; 
- D 1 - I - 0x01AE85 06:AE75: A0        .byte $A0   ; 
- D 1 - I - 0x01AE86 06:AE76: 25        .byte $25   ; 
- D 1 - I - 0x01AE87 06:AE77: A0        .byte $A0   ; 
- D 1 - I - 0x01AE88 06:AE78: 25        .byte $25   ; 
- D 1 - I - 0x01AE89 06:AE79: FE        .byte $FE   ; 
- D 1 - I - 0x01AE8A 06:AE7A: FF        .byte $FF   ; 
- D 1 - I - 0x01AE8B 06:AE7B: B2 AD     .word loc_FF_ADB2



sub_FD_AE7D:
- D 1 - I - 0x01AE8D 06:AE7D: B0        .byte $B0   ; 
- D 1 - I - 0x01AE8E 06:AE7E: 25        .byte $25   ; 
- D 1 - I - 0x01AE8F 06:AE7F: 26        .byte $26   ; 
- D 1 - I - 0x01AE90 06:AE80: B0        .byte $B0   ; 
- D 1 - I - 0x01AE91 06:AE81: 25        .byte $25   ; 
- D 1 - I - 0x01AE92 06:AE82: A0        .byte $A0   ; 
- D 1 - I - 0x01AE93 06:AE83: 25        .byte $25   ; 
- D 1 - I - 0x01AE94 06:AE84: 26        .byte $26   ; 
- D 1 - I - 0x01AE95 06:AE85: 26        .byte $26   ; 
- D 1 - I - 0x01AE96 06:AE86: A0        .byte $A0   ; 
- D 1 - I - 0x01AE97 06:AE87: 15        .byte $15   ; 
- D 1 - I - 0x01AE98 06:AE88: A0        .byte $A0   ; 
- D 1 - I - 0x01AE99 06:AE89: 25        .byte $25   ; 
- D 1 - I - 0x01AE9A 06:AE8A: A0        .byte $A0   ; 
- D 1 - I - 0x01AE9B 06:AE8B: 25        .byte $25   ; 
- D 1 - I - 0x01AE9C 06:AE8C: B0        .byte $B0   ; 
- D 1 - I - 0x01AE9D 06:AE8D: 25        .byte $25   ; 
- D 1 - I - 0x01AE9E 06:AE8E: 26        .byte $26   ; 
- D 1 - I - 0x01AE9F 06:AE8F: B0        .byte $B0   ; 
- D 1 - I - 0x01AEA0 06:AE90: 25        .byte $25   ; 
- D 1 - I - 0x01AEA1 06:AE91: A0        .byte $A0   ; 
- D 1 - I - 0x01AEA2 06:AE92: 25        .byte $25   ; 
- D 1 - I - 0x01AEA3 06:AE93: 26        .byte $26   ; 
- D 1 - I - 0x01AEA4 06:AE94: 26        .byte $26   ; 
- D 1 - I - 0x01AEA5 06:AE95: A0        .byte $A0   ; 
- D 1 - I - 0x01AEA6 06:AE96: 25        .byte $25   ; 
- D 1 - I - 0x01AEA7 06:AE97: A0        .byte $A0   ; 
- D 1 - I - 0x01AEA8 06:AE98: 25        .byte $25   ; 
- D 1 - I - 0x01AEA9 06:AE99: A0        .byte $A0   ; 
- D 1 - I - 0x01AEAA 06:AE9A: 25        .byte $25   ; 
- D 1 - I - 0x01AEAB 06:AE9B: B0        .byte $B0   ; 
- D 1 - I - 0x01AEAC 06:AE9C: 25        .byte $25   ; 
- D 1 - I - 0x01AEAD 06:AE9D: FD        .byte $FD   ; 



_off014_2D_AE9E_00:
loc_FF_AE9E:
- D 1 - I - 0x01AEAE 06:AE9E: ED        .byte $ED   ; 
- D 1 - I - 0x01AEAF 06:AE9F: 81        .byte $81   ; 
- D 1 - I - 0x01AEB0 06:AEA0: EA        .byte $EA   ; 
- D 1 - I - 0x01AEB1 06:AEA1: 8C        .byte $8C   ; 
- D 1 - I - 0x01AEB2 06:AEA2: E9        .byte $E9   ; 
- D 1 - I - 0x01AEB3 06:AEA3: 31        .byte $31   ; 
- D 1 - I - 0x01AEB4 06:AEA4: D9        .byte $D9   ; 
- D 1 - I - 0x01AEB5 06:AEA5: 70        .byte $70   ; 
- D 1 - I - 0x01AEB6 06:AEA6: 11        .byte $11   ; 
- D 1 - I - 0x01AEB7 06:AEA7: 12        .byte $12   ; 
- D 1 - I - 0x01AEB8 06:AEA8: E4        .byte $E4   ; 
- D 1 - I - 0x01AEB9 06:AEA9: 00        .byte $00   ; 
- D 1 - I - 0x01AEBA 06:AEAA: 00        .byte $00   ; 
- D 1 - I - 0x01AEBB 06:AEAB: E3        .byte $E3   ; 
- D 1 - I - 0x01AEBC 06:AEAC: 00        .byte $00   ; 
- D 1 - I - 0x01AEBD 06:AEAD: E4        .byte $E4   ; 
- D 1 - I - 0x01AEBE 06:AEAE: 00        .byte $00   ; 
- D 1 - I - 0x01AEBF 06:AEAF: E3        .byte $E3   ; 
- D 1 - I - 0x01AEC0 06:AEB0: F5        .byte $F5   ; 
- D 1 - I - 0x01AEC1 06:AEB1: 00        .byte $00   ; 
- D 1 - I - 0x01AEC2 06:AEB2: F0        .byte $F0   ; 
- D 1 - I - 0x01AEC3 06:AEB3: E4        .byte $E4   ; 
- D 1 - I - 0x01AEC4 06:AEB4: A0        .byte $A0   ; 
- D 1 - I - 0x01AEC5 06:AEB5: 00        .byte $00   ; 
- D 1 - I - 0x01AEC6 06:AEB6: F5        .byte $F5   ; 
- D 1 - I - 0x01AEC7 06:AEB7: A0        .byte $A0   ; 
- D 1 - I - 0x01AEC8 06:AEB8: F0        .byte $F0   ; 
- D 1 - I - 0x01AEC9 06:AEB9: 90        .byte $90   ; 
- D 1 - I - 0x01AECA 06:AEBA: 00        .byte $00   ; 
- D 1 - I - 0x01AECB 06:AEBB: F5        .byte $F5   ; 
- D 1 - I - 0x01AECC 06:AEBC: 90        .byte $90   ; 
- D 1 - I - 0x01AECD 06:AEBD: F0        .byte $F0   ; 
- D 1 - I - 0x01AECE 06:AEBE: A0        .byte $A0   ; 
- D 1 - I - 0x01AECF 06:AEBF: 00        .byte $00   ; 
- D 1 - I - 0x01AED0 06:AEC0: F5        .byte $F5   ; 
- D 1 - I - 0x01AED1 06:AEC1: A0        .byte $A0   ; 
- D 1 - I - 0x01AED2 06:AEC2: F0        .byte $F0   ; 
- D 1 - I - 0x01AED3 06:AEC3: E3        .byte $E3   ; 
- D 1 - I - 0x01AED4 06:AEC4: 00        .byte $00   ; 
- D 1 - I - 0x01AED5 06:AEC5: 00        .byte $00   ; 
- D 1 - I - 0x01AED6 06:AEC6: E4        .byte $E4   ; 
- D 1 - I - 0x01AED7 06:AEC7: 00        .byte $00   ; 
- D 1 - I - 0x01AED8 06:AEC8: 00        .byte $00   ; 
- D 1 - I - 0x01AED9 06:AEC9: E3        .byte $E3   ; 
- D 1 - I - 0x01AEDA 06:AECA: 00        .byte $00   ; 
- D 1 - I - 0x01AEDB 06:AECB: E4        .byte $E4   ; 
- D 1 - I - 0x01AEDC 06:AECC: 00        .byte $00   ; 
- D 1 - I - 0x01AEDD 06:AECD: E3        .byte $E3   ; 
- D 1 - I - 0x01AEDE 06:AECE: F5        .byte $F5   ; 
- D 1 - I - 0x01AEDF 06:AECF: 00        .byte $00   ; 
- D 1 - I - 0x01AEE0 06:AED0: F0        .byte $F0   ; 
- D 1 - I - 0x01AEE1 06:AED1: E3        .byte $E3   ; 
- D 1 - I - 0x01AEE2 06:AED2: 50        .byte $50   ; 
- D 1 - I - 0x01AEE3 06:AED3: E4        .byte $E4   ; 
- D 1 - I - 0x01AEE4 06:AED4: 00        .byte $00   ; 
- D 1 - I - 0x01AEE5 06:AED5: E3        .byte $E3   ; 
- D 1 - I - 0x01AEE6 06:AED6: F5        .byte $F5   ; 
- D 1 - I - 0x01AEE7 06:AED7: 30        .byte $30   ; 
- D 1 - I - 0x01AEE8 06:AED8: F0        .byte $F0   ; 
- D 1 - I - 0x01AEE9 06:AED9: E3        .byte $E3   ; 
- D 1 - I - 0x01AEEA 06:AEDA: 30        .byte $30   ; 
- D 1 - I - 0x01AEEB 06:AEDB: E4        .byte $E4   ; 
- D 1 - I - 0x01AEEC 06:AEDC: 00        .byte $00   ; 
- D 1 - I - 0x01AEED 06:AEDD: E3        .byte $E3   ; 
- D 1 - I - 0x01AEEE 06:AEDE: F5        .byte $F5   ; 
- D 1 - I - 0x01AEEF 06:AEDF: 30        .byte $30   ; 
- D 1 - I - 0x01AEF0 06:AEE0: E4        .byte $E4   ; 
- D 1 - I - 0x01AEF1 06:AEE1: F0        .byte $F0   ; 
- D 1 - I - 0x01AEF2 06:AEE2: A0        .byte $A0   ; 
- D 1 - I - 0x01AEF3 06:AEE3: 00        .byte $00   ; 
- D 1 - I - 0x01AEF4 06:AEE4: E3        .byte $E3   ; 
- D 1 - I - 0x01AEF5 06:AEE5: 12        .byte $12   ; 
- D 1 - I - 0x01AEF6 06:AEE6: EA        .byte $EA   ; 
- D 1 - I - 0x01AEF7 06:AEE7: 00        .byte $00   ; 
- D 1 - I - 0x01AEF8 06:AEE8: ED        .byte $ED   ; 
- D 1 - I - 0x01AEF9 06:AEE9: 00        .byte $00   ; 
- D 1 - I - 0x01AEFA 06:AEEA: FB        .byte $FB   ; 
- D 1 - I - 0x01AEFB 06:AEEB: E9        .byte $E9   ; 
- D 1 - I - 0x01AEFC 06:AEEC: B1        .byte $B1   ; 
- D 1 - I - 0x01AEFD 06:AEED: D9        .byte $D9   ; 
- D 1 - I - 0x01AEFE 06:AEEE: 70        .byte $70   ; 
- D 1 - I - 0x01AEFF 06:AEEF: 14        .byte $14   ; 
- D 1 - I - 0x01AF00 06:AEF0: 12        .byte $12   ; 
- D 1 - I - 0x01AF01 06:AEF1: E4        .byte $E4   ; 
- D 1 - I - 0x01AF02 06:AEF2: 00        .byte $00   ; 
- D 1 - I - 0x01AF03 06:AEF3: 00        .byte $00   ; 
- D 1 - I - 0x01AF04 06:AEF4: E3        .byte $E3   ; 
- D 1 - I - 0x01AF05 06:AEF5: 00        .byte $00   ; 
- D 1 - I - 0x01AF06 06:AEF6: E4        .byte $E4   ; 
- D 1 - I - 0x01AF07 06:AEF7: 00        .byte $00   ; 
- D 1 - I - 0x01AF08 06:AEF8: E3        .byte $E3   ; 
- D 1 - I - 0x01AF09 06:AEF9: F5        .byte $F5   ; 
- D 1 - I - 0x01AF0A 06:AEFA: 00        .byte $00   ; 
- D 1 - I - 0x01AF0B 06:AEFB: F0        .byte $F0   ; 
- D 1 - I - 0x01AF0C 06:AEFC: E4        .byte $E4   ; 
- D 1 - I - 0x01AF0D 06:AEFD: A0        .byte $A0   ; 
- D 1 - I - 0x01AF0E 06:AEFE: 00        .byte $00   ; 
- D 1 - I - 0x01AF0F 06:AEFF: F5        .byte $F5   ; 
- D 1 - I - 0x01AF10 06:AF00: A0        .byte $A0   ; 
- D 1 - I - 0x01AF11 06:AF01: F0        .byte $F0   ; 
- D 1 - I - 0x01AF12 06:AF02: 90        .byte $90   ; 
- D 1 - I - 0x01AF13 06:AF03: 00        .byte $00   ; 
- D 1 - I - 0x01AF14 06:AF04: F5        .byte $F5   ; 
- D 1 - I - 0x01AF15 06:AF05: 90        .byte $90   ; 
- D 1 - I - 0x01AF16 06:AF06: F0        .byte $F0   ; 
- D 1 - I - 0x01AF17 06:AF07: A0        .byte $A0   ; 
- D 1 - I - 0x01AF18 06:AF08: 00        .byte $00   ; 
- D 1 - I - 0x01AF19 06:AF09: F5        .byte $F5   ; 
- D 1 - I - 0x01AF1A 06:AF0A: A0        .byte $A0   ; 
- D 1 - I - 0x01AF1B 06:AF0B: F0        .byte $F0   ; 
- D 1 - I - 0x01AF1C 06:AF0C: E3        .byte $E3   ; 
- D 1 - I - 0x01AF1D 06:AF0D: 00        .byte $00   ; 
- D 1 - I - 0x01AF1E 06:AF0E: 00        .byte $00   ; 
- D 1 - I - 0x01AF1F 06:AF0F: E6        .byte $E6   ; 
- D 1 - I - 0x01AF20 06:AF10: 01        .byte $01   ; 
- D 1 - I - 0x01AF21 06:AF11: C0        .byte $C0   ; 
- D 1 - I - 0x01AF22 06:AF12: E6        .byte $E6   ; 
- D 1 - I - 0x01AF23 06:AF13: 09        .byte $09   ; 
- D 1 - I - 0x01AF24 06:AF14: E7        .byte $E7   ; 
- D 1 - I - 0x01AF25 06:AF15: 12        .byte $12   ; 
- D 1 - I - 0x01AF26 06:AF16: E4        .byte $E4   ; 
- D 1 - I - 0x01AF27 06:AF17: 00        .byte $00   ; 
- D 1 - I - 0x01AF28 06:AF18: 00        .byte $00   ; 
- D 1 - I - 0x01AF29 06:AF19: E3        .byte $E3   ; 
- D 1 - I - 0x01AF2A 06:AF1A: 00        .byte $00   ; 
- D 1 - I - 0x01AF2B 06:AF1B: E4        .byte $E4   ; 
- D 1 - I - 0x01AF2C 06:AF1C: 00        .byte $00   ; 
- D 1 - I - 0x01AF2D 06:AF1D: E3        .byte $E3   ; 
- D 1 - I - 0x01AF2E 06:AF1E: F5        .byte $F5   ; 
- D 1 - I - 0x01AF2F 06:AF1F: 00        .byte $00   ; 
- D 1 - I - 0x01AF30 06:AF20: F0        .byte $F0   ; 
- D 1 - I - 0x01AF31 06:AF21: E3        .byte $E3   ; 
- D 1 - I - 0x01AF32 06:AF22: 50        .byte $50   ; 
- D 1 - I - 0x01AF33 06:AF23: E4        .byte $E4   ; 
- D 1 - I - 0x01AF34 06:AF24: 00        .byte $00   ; 
- D 1 - I - 0x01AF35 06:AF25: E3        .byte $E3   ; 
- D 1 - I - 0x01AF36 06:AF26: F5        .byte $F5   ; 
- D 1 - I - 0x01AF37 06:AF27: 30        .byte $30   ; 
- D 1 - I - 0x01AF38 06:AF28: F0        .byte $F0   ; 
- D 1 - I - 0x01AF39 06:AF29: E3        .byte $E3   ; 
- D 1 - I - 0x01AF3A 06:AF2A: 30        .byte $30   ; 
- D 1 - I - 0x01AF3B 06:AF2B: E4        .byte $E4   ; 
- D 1 - I - 0x01AF3C 06:AF2C: 00        .byte $00   ; 
- D 1 - I - 0x01AF3D 06:AF2D: E3        .byte $E3   ; 
- D 1 - I - 0x01AF3E 06:AF2E: F5        .byte $F5   ; 
- D 1 - I - 0x01AF3F 06:AF2F: 30        .byte $30   ; 
- D 1 - I - 0x01AF40 06:AF30: E4        .byte $E4   ; 
- D 1 - I - 0x01AF41 06:AF31: F0        .byte $F0   ; 
- D 1 - I - 0x01AF42 06:AF32: A0        .byte $A0   ; 
- D 1 - I - 0x01AF43 06:AF33: E6        .byte $E6   ; 
- D 1 - I - 0x01AF44 06:AF34: 08        .byte $08   ; 
- D 1 - I - 0x01AF45 06:AF35: 00        .byte $00   ; 
- D 1 - I - 0x01AF46 06:AF36: E6        .byte $E6   ; 
- D 1 - I - 0x01AF47 06:AF37: 09        .byte $09   ; 
- D 1 - I - 0x01AF48 06:AF38: E3        .byte $E3   ; 
- D 1 - I - 0x01AF49 06:AF39: 12        .byte $12   ; 
- D 1 - I - 0x01AF4A 06:AF3A: FE        .byte $FE   ; 
- D 1 - I - 0x01AF4B 06:AF3B: 02        .byte $02   ; 
- D 1 - I - 0x01AF4C 06:AF3C: FD        .byte $FD   ; 
- D 1 - I - 0x01AF4D 06:AF3D: 80 AF     .word sub_FD_AF80
- D 1 - I - 0x01AF4F 06:AF3F: E5        .byte $E5   ; 
- D 1 - I - 0x01AF50 06:AF40: 20        .byte $20   ; 
- D 1 - I - 0x01AF51 06:AF41: E4        .byte $E4   ; 
- D 1 - I - 0x01AF52 06:AF42: 20        .byte $20   ; 
- D 1 - I - 0x01AF53 06:AF43: FD        .byte $FD   ; 
- D 1 - I - 0x01AF54 06:AF44: 80 AF     .word sub_FD_AF80
- D 1 - I - 0x01AF56 06:AF46: E5        .byte $E5   ; 
- D 1 - I - 0x01AF57 06:AF47: 40        .byte $40   ; 
- D 1 - I - 0x01AF58 06:AF48: E4        .byte $E4   ; 
- D 1 - I - 0x01AF59 06:AF49: 40        .byte $40   ; 
- D 1 - I - 0x01AF5A 06:AF4A: FD        .byte $FD   ; 
- D 1 - I - 0x01AF5B 06:AF4B: D7 AF     .word sub_FD_AFD7
- D 1 - I - 0x01AF5D 06:AF4D: FB        .byte $FB   ; 
- D 1 - I - 0x01AF5E 06:AF4E: E4        .byte $E4   ; 
- D 1 - I - 0x01AF5F 06:AF4F: 50        .byte $50   ; 
- D 1 - I - 0x01AF60 06:AF50: 70        .byte $70   ; 
- D 1 - I - 0x01AF61 06:AF51: F3        .byte $F3   ; 
- D 1 - I - 0x01AF62 06:AF52: 70        .byte $70   ; 
- D 1 - I - 0x01AF63 06:AF53: 70        .byte $70   ; 
- D 1 - I - 0x01AF64 06:AF54: F2        .byte $F2   ; 
- D 1 - I - 0x01AF65 06:AF55: 70        .byte $70   ; 
- D 1 - I - 0x01AF66 06:AF56: 70        .byte $70   ; 
- D 1 - I - 0x01AF67 06:AF57: F1        .byte $F1   ; 
- D 1 - I - 0x01AF68 06:AF58: 70        .byte $70   ; 
- D 1 - I - 0x01AF69 06:AF59: 70        .byte $70   ; 
- D 1 - I - 0x01AF6A 06:AF5A: F0        .byte $F0   ; 
- D 1 - I - 0x01AF6B 06:AF5B: F0        .byte $F0   ; 
- D 1 - I - 0x01AF6C 06:AF5C: FE        .byte $FE   ; 
- D 1 - I - 0x01AF6D 06:AF5D: 02        .byte $02   ; 
- D 1 - I - 0x01AF6E 06:AF5E: FD        .byte $FD   ; 
- D 1 - I - 0x01AF6F 06:AF5F: D7 AF     .word sub_FD_AFD7
- D 1 - I - 0x01AF71 06:AF61: E4        .byte $E4   ; 
- D 1 - I - 0x01AF72 06:AF62: 70        .byte $70   ; 
- D 1 - I - 0x01AF73 06:AF63: F1        .byte $F1   ; 
- D 1 - I - 0x01AF74 06:AF64: 70        .byte $70   ; 
- D 1 - I - 0x01AF75 06:AF65: F2        .byte $F2   ; 
- D 1 - I - 0x01AF76 06:AF66: 70        .byte $70   ; 
- D 1 - I - 0x01AF77 06:AF67: F0        .byte $F0   ; 
- D 1 - I - 0x01AF78 06:AF68: A0        .byte $A0   ; 
- D 1 - I - 0x01AF79 06:AF69: F1        .byte $F1   ; 
- D 1 - I - 0x01AF7A 06:AF6A: A0        .byte $A0   ; 
- D 1 - I - 0x01AF7B 06:AF6B: F2        .byte $F2   ; 
- D 1 - I - 0x01AF7C 06:AF6C: A0        .byte $A0   ; 
- D 1 - I - 0x01AF7D 06:AF6D: E3        .byte $E3   ; 
- D 1 - I - 0x01AF7E 06:AF6E: F0        .byte $F0   ; 
- D 1 - I - 0x01AF7F 06:AF6F: 10        .byte $10   ; 
- D 1 - I - 0x01AF80 06:AF70: F1        .byte $F1   ; 
- D 1 - I - 0x01AF81 06:AF71: 10        .byte $10   ; 
- D 1 - I - 0x01AF82 06:AF72: F2        .byte $F2   ; 
- D 1 - I - 0x01AF83 06:AF73: 10        .byte $10   ; 
- D 1 - I - 0x01AF84 06:AF74: F0        .byte $F0   ; 
- D 1 - I - 0x01AF85 06:AF75: 40        .byte $40   ; 
- D 1 - I - 0x01AF86 06:AF76: F1        .byte $F1   ; 
- D 1 - I - 0x01AF87 06:AF77: 40        .byte $40   ; 
- D 1 - I - 0x01AF88 06:AF78: F2        .byte $F2   ; 
- D 1 - I - 0x01AF89 06:AF79: 40        .byte $40   ; 
- D 1 - I - 0x01AF8A 06:AF7A: F0        .byte $F0   ; 
- D 1 - I - 0x01AF8B 06:AF7B: 73        .byte $73   ; 
- D 1 - I - 0x01AF8C 06:AF7C: FE        .byte $FE   ; 
- D 1 - I - 0x01AF8D 06:AF7D: FF        .byte $FF   ; 
- D 1 - I - 0x01AF8E 06:AF7E: 9E AE     .word loc_FF_AE9E



sub_FD_AF80:
- D 1 - I - 0x01AF90 06:AF80: E9        .byte $E9   ; 
- D 1 - I - 0x01AF91 06:AF81: B1        .byte $B1   ; 
- D 1 - I - 0x01AF92 06:AF82: D9        .byte $D9   ; 
- D 1 - I - 0x01AF93 06:AF83: 70        .byte $70   ; 
- D 1 - I - 0x01AF94 06:AF84: 14        .byte $14   ; 
- D 1 - I - 0x01AF95 06:AF85: 12        .byte $12   ; 
- D 1 - I - 0x01AF96 06:AF86: E4        .byte $E4   ; 
- D 1 - I - 0x01AF97 06:AF87: 30        .byte $30   ; 
- D 1 - I - 0x01AF98 06:AF88: 30        .byte $30   ; 
- D 1 - I - 0x01AF99 06:AF89: E3        .byte $E3   ; 
- D 1 - I - 0x01AF9A 06:AF8A: 30        .byte $30   ; 
- D 1 - I - 0x01AF9B 06:AF8B: E4        .byte $E4   ; 
- D 1 - I - 0x01AF9C 06:AF8C: 30        .byte $30   ; 
- D 1 - I - 0x01AF9D 06:AF8D: E3        .byte $E3   ; 
- D 1 - I - 0x01AF9E 06:AF8E: F5        .byte $F5   ; 
- D 1 - I - 0x01AF9F 06:AF8F: 30        .byte $30   ; 
- D 1 - I - 0x01AFA0 06:AF90: F0        .byte $F0   ; 
- D 1 - I - 0x01AFA1 06:AF91: 10        .byte $10   ; 
- D 1 - I - 0x01AFA2 06:AF92: E4        .byte $E4   ; 
- D 1 - I - 0x01AFA3 06:AF93: 30        .byte $30   ; 
- D 1 - I - 0x01AFA4 06:AF94: E3        .byte $E3   ; 
- D 1 - I - 0x01AFA5 06:AF95: F5        .byte $F5   ; 
- D 1 - I - 0x01AFA6 06:AF96: 10        .byte $10   ; 
- D 1 - I - 0x01AFA7 06:AF97: F0        .byte $F0   ; 
- D 1 - I - 0x01AFA8 06:AF98: 00        .byte $00   ; 
- D 1 - I - 0x01AFA9 06:AF99: E4        .byte $E4   ; 
- D 1 - I - 0x01AFAA 06:AF9A: 30        .byte $30   ; 
- D 1 - I - 0x01AFAB 06:AF9B: E3        .byte $E3   ; 
- D 1 - I - 0x01AFAC 06:AF9C: F5        .byte $F5   ; 
- D 1 - I - 0x01AFAD 06:AF9D: 00        .byte $00   ; 
- D 1 - I - 0x01AFAE 06:AF9E: F0        .byte $F0   ; 
- D 1 - I - 0x01AFAF 06:AF9F: 10        .byte $10   ; 
- D 1 - I - 0x01AFB0 06:AFA0: E4        .byte $E4   ; 
- D 1 - I - 0x01AFB1 06:AFA1: 30        .byte $30   ; 
- D 1 - I - 0x01AFB2 06:AFA2: E3        .byte $E3   ; 
- D 1 - I - 0x01AFB3 06:AFA3: F5        .byte $F5   ; 
- D 1 - I - 0x01AFB4 06:AFA4: 10        .byte $10   ; 
- D 1 - I - 0x01AFB5 06:AFA5: F0        .byte $F0   ; 
- D 1 - I - 0x01AFB6 06:AFA6: E3        .byte $E3   ; 
- D 1 - I - 0x01AFB7 06:AFA7: 30        .byte $30   ; 
- D 1 - I - 0x01AFB8 06:AFA8: E4        .byte $E4   ; 
- D 1 - I - 0x01AFB9 06:AFA9: 30        .byte $30   ; 
- D 1 - I - 0x01AFBA 06:AFAA: E6        .byte $E6   ; 
- D 1 - I - 0x01AFBB 06:AFAB: 01        .byte $01   ; 
- D 1 - I - 0x01AFBC 06:AFAC: C0        .byte $C0   ; 
- D 1 - I - 0x01AFBD 06:AFAD: E6        .byte $E6   ; 
- D 1 - I - 0x01AFBE 06:AFAE: 09        .byte $09   ; 
- D 1 - I - 0x01AFBF 06:AFAF: E7        .byte $E7   ; 
- D 1 - I - 0x01AFC0 06:AFB0: 12        .byte $12   ; 
- D 1 - I - 0x01AFC1 06:AFB1: E4        .byte $E4   ; 
- D 1 - I - 0x01AFC2 06:AFB2: 30        .byte $30   ; 
- D 1 - I - 0x01AFC3 06:AFB3: 30        .byte $30   ; 
- D 1 - I - 0x01AFC4 06:AFB4: E3        .byte $E3   ; 
- D 1 - I - 0x01AFC5 06:AFB5: 30        .byte $30   ; 
- D 1 - I - 0x01AFC6 06:AFB6: E4        .byte $E4   ; 
- D 1 - I - 0x01AFC7 06:AFB7: 30        .byte $30   ; 
- D 1 - I - 0x01AFC8 06:AFB8: E3        .byte $E3   ; 
- D 1 - I - 0x01AFC9 06:AFB9: F5        .byte $F5   ; 
- D 1 - I - 0x01AFCA 06:AFBA: 30        .byte $30   ; 
- D 1 - I - 0x01AFCB 06:AFBB: F0        .byte $F0   ; 
- D 1 - I - 0x01AFCC 06:AFBC: E3        .byte $E3   ; 
- D 1 - I - 0x01AFCD 06:AFBD: 80        .byte $80   ; 
- D 1 - I - 0x01AFCE 06:AFBE: E4        .byte $E4   ; 
- D 1 - I - 0x01AFCF 06:AFBF: 30        .byte $30   ; 
- D 1 - I - 0x01AFD0 06:AFC0: E3        .byte $E3   ; 
- D 1 - I - 0x01AFD1 06:AFC1: F5        .byte $F5   ; 
- D 1 - I - 0x01AFD2 06:AFC2: 80        .byte $80   ; 
- D 1 - I - 0x01AFD3 06:AFC3: F0        .byte $F0   ; 
- D 1 - I - 0x01AFD4 06:AFC4: E3        .byte $E3   ; 
- D 1 - I - 0x01AFD5 06:AFC5: 60        .byte $60   ; 
- D 1 - I - 0x01AFD6 06:AFC6: E4        .byte $E4   ; 
- D 1 - I - 0x01AFD7 06:AFC7: 30        .byte $30   ; 
- D 1 - I - 0x01AFD8 06:AFC8: E3        .byte $E3   ; 
- D 1 - I - 0x01AFD9 06:AFC9: F5        .byte $F5   ; 
- D 1 - I - 0x01AFDA 06:AFCA: 60        .byte $60   ; 
- D 1 - I - 0x01AFDB 06:AFCB: E6        .byte $E6   ; 
- D 1 - I - 0x01AFDC 06:AFCC: 08        .byte $08   ; 
- D 1 - I - 0x01AFDD 06:AFCD: E3        .byte $E3   ; 
- D 1 - I - 0x01AFDE 06:AFCE: F0        .byte $F0   ; 
- D 1 - I - 0x01AFDF 06:AFCF: 10        .byte $10   ; 
- D 1 - I - 0x01AFE0 06:AFD0: E6        .byte $E6   ; 
- D 1 - I - 0x01AFE1 06:AFD1: 09        .byte $09   ; 
- D 1 - I - 0x01AFE2 06:AFD2: E5        .byte $E5   ; 
- D 1 - I - 0x01AFE3 06:AFD3: 10        .byte $10   ; 
- D 1 - I - 0x01AFE4 06:AFD4: E4        .byte $E4   ; 
- D 1 - I - 0x01AFE5 06:AFD5: 10        .byte $10   ; 
- D 1 - I - 0x01AFE6 06:AFD6: FD        .byte $FD   ; 
sub_FD_AFD7:
- D 1 - I - 0x01AFE7 06:AFD7: ED        .byte $ED   ; 
- D 1 - I - 0x01AFE8 06:AFD8: 81        .byte $81   ; 
- D 1 - I - 0x01AFE9 06:AFD9: EA        .byte $EA   ; 
- D 1 - I - 0x01AFEA 06:AFDA: 8C        .byte $8C   ; 
- D 1 - I - 0x01AFEB 06:AFDB: E9        .byte $E9   ; 
- D 1 - I - 0x01AFEC 06:AFDC: B1        .byte $B1   ; 
- D 1 - I - 0x01AFED 06:AFDD: D1        .byte $D1   ; 
- D 1 - I - 0x01AFEE 06:AFDE: 36        .byte $36   ; 
- D 1 - I - 0x01AFEF 06:AFDF: 83        .byte $83   ; 
- D 1 - I - 0x01AFF0 06:AFE0: 25        .byte $25   ; 
- D 1 - I - 0x01AFF1 06:AFE1: C0        .byte $C0   ; 
- D 1 - I - 0x01AFF2 06:AFE2: E3        .byte $E3   ; 
- D 1 - I - 0x01AFF3 06:AFE3: 03        .byte $03   ; 
- D 1 - I - 0x01AFF4 06:AFE4: 64        .byte $64   ; 
- D 1 - I - 0x01AFF5 06:AFE5: 53        .byte $53   ; 
- D 1 - I - 0x01AFF6 06:AFE6: A4        .byte $A4   ; 
- D 1 - I - 0x01AFF7 06:AFE7: 93        .byte $93   ; 
- D 1 - I - 0x01AFF8 06:AFE8: 44        .byte $44   ; 
- D 1 - I - 0x01AFF9 06:AFE9: 33        .byte $33   ; 
- D 1 - I - 0x01AFFA 06:AFEA: 84        .byte $84   ; 
- D 1 - I - 0x01AFFB 06:AFEB: 73        .byte $73   ; 
- D 1 - I - 0x01AFFC 06:AFEC: 24        .byte $24   ; 
- D 1 - I - 0x01AFFD 06:AFED: 13        .byte $13   ; 
- D 1 - I - 0x01AFFE 06:AFEE: 64        .byte $64   ; 
- D 1 - I - 0x01AFFF 06:AFEF: 53        .byte $53   ; 
- D 1 - I - 0x01B000 06:AFF0: 04        .byte $04   ; 
- D 1 - I - 0x01B001 06:AFF1: E4        .byte $E4   ; 
- D 1 - I - 0x01B002 06:AFF2: B3        .byte $B3   ; 
- D 1 - I - 0x01B003 06:AFF3: E3        .byte $E3   ; 
- D 1 - I - 0x01B004 06:AFF4: 44        .byte $44   ; 
- D 1 - I - 0x01B005 06:AFF5: 33        .byte $33   ; 
- D 1 - I - 0x01B006 06:AFF6: E4        .byte $E4   ; 
- D 1 - I - 0x01B007 06:AFF7: A4        .byte $A4   ; 
- D 1 - I - 0x01B008 06:AFF8: 93        .byte $93   ; 
- D 1 - I - 0x01B009 06:AFF9: E3        .byte $E3   ; 
- D 1 - I - 0x01B00A 06:AFFA: 24        .byte $24   ; 
- D 1 - I - 0x01B00B 06:AFFB: 13        .byte $13   ; 
- D 1 - I - 0x01B00C 06:AFFC: E4        .byte $E4   ; 
- D 1 - I - 0x01B00D 06:AFFD: 84        .byte $84   ; 
- D 1 - I - 0x01B00E 06:AFFE: 73        .byte $73   ; 
- D 1 - I - 0x01B00F 06:AFFF: E3        .byte $E3   ; 
- D 1 - I - 0x01B010 06:B000: 04        .byte $04   ; 
- D 1 - I - 0x01B011 06:B001: E4        .byte $E4   ; 
- D 1 - I - 0x01B012 06:B002: B3        .byte $B3   ; 
- D 1 - I - 0x01B013 06:B003: 64        .byte $64   ; 
- D 1 - I - 0x01B014 06:B004: 53        .byte $53   ; 
- D 1 - I - 0x01B015 06:B005: A4        .byte $A4   ; 
- D 1 - I - 0x01B016 06:B006: 93        .byte $93   ; 
- D 1 - I - 0x01B017 06:B007: 44        .byte $44   ; 
- D 1 - I - 0x01B018 06:B008: 33        .byte $33   ; 
- D 1 - I - 0x01B019 06:B009: 73        .byte $73   ; 
- D 1 - I - 0x01B01A 06:B00A: EA        .byte $EA   ; 
- D 1 - I - 0x01B01B 06:B00B: 00        .byte $00   ; 
- D 1 - I - 0x01B01C 06:B00C: E9        .byte $E9   ; 
- D 1 - I - 0x01B01D 06:B00D: 71        .byte $71   ; 
- D 1 - I - 0x01B01E 06:B00E: E7        .byte $E7   ; 
- D 1 - I - 0x01B01F 06:B00F: 14        .byte $14   ; 
- D 1 - I - 0x01B020 06:B010: E6        .byte $E6   ; 
- D 1 - I - 0x01B021 06:B011: 09        .byte $09   ; 
- D 1 - I - 0x01B022 06:B012: FD        .byte $FD   ; 



_off014_2D_B013_01:
loc_FF_B013:
- D 1 - I - 0x01B023 06:B013: EA        .byte $EA   ; 
- D 1 - I - 0x01B024 06:B014: 0C        .byte $0C   ; 
- D 1 - I - 0x01B025 06:B015: E6        .byte $E6   ; 
- D 1 - I - 0x01B026 06:B016: 01        .byte $01   ; 
- D 1 - I - 0x01B027 06:B017: C0        .byte $C0   ; 
- D 1 - I - 0x01B028 06:B018: E9        .byte $E9   ; 
- D 1 - I - 0x01B029 06:B019: 31        .byte $31   ; 
- D 1 - I - 0x01B02A 06:B01A: D9        .byte $D9   ; 
- D 1 - I - 0x01B02B 06:B01B: 70        .byte $70   ; 
- D 1 - I - 0x01B02C 06:B01C: 12        .byte $12   ; 
- D 1 - I - 0x01B02D 06:B01D: 12        .byte $12   ; 
- D 1 - I - 0x01B02E 06:B01E: E4        .byte $E4   ; 
- D 1 - I - 0x01B02F 06:B01F: 00        .byte $00   ; 
- D 1 - I - 0x01B030 06:B020: 00        .byte $00   ; 
- D 1 - I - 0x01B031 06:B021: E3        .byte $E3   ; 
- D 1 - I - 0x01B032 06:B022: 00        .byte $00   ; 
- D 1 - I - 0x01B033 06:B023: E4        .byte $E4   ; 
- D 1 - I - 0x01B034 06:B024: 00        .byte $00   ; 
- D 1 - I - 0x01B035 06:B025: E3        .byte $E3   ; 
- D 1 - I - 0x01B036 06:B026: F5        .byte $F5   ; 
- D 1 - I - 0x01B037 06:B027: 00        .byte $00   ; 
- D 1 - I - 0x01B038 06:B028: F0        .byte $F0   ; 
- D 1 - I - 0x01B039 06:B029: E4        .byte $E4   ; 
- D 1 - I - 0x01B03A 06:B02A: A0        .byte $A0   ; 
- D 1 - I - 0x01B03B 06:B02B: 00        .byte $00   ; 
- D 1 - I - 0x01B03C 06:B02C: F5        .byte $F5   ; 
- D 1 - I - 0x01B03D 06:B02D: A0        .byte $A0   ; 
- D 1 - I - 0x01B03E 06:B02E: F0        .byte $F0   ; 
- D 1 - I - 0x01B03F 06:B02F: 90        .byte $90   ; 
- D 1 - I - 0x01B040 06:B030: 00        .byte $00   ; 
- D 1 - I - 0x01B041 06:B031: F5        .byte $F5   ; 
- D 1 - I - 0x01B042 06:B032: 90        .byte $90   ; 
- D 1 - I - 0x01B043 06:B033: F0        .byte $F0   ; 
- D 1 - I - 0x01B044 06:B034: A0        .byte $A0   ; 
- D 1 - I - 0x01B045 06:B035: 00        .byte $00   ; 
- D 1 - I - 0x01B046 06:B036: F5        .byte $F5   ; 
- D 1 - I - 0x01B047 06:B037: A0        .byte $A0   ; 
- D 1 - I - 0x01B048 06:B038: F0        .byte $F0   ; 
- D 1 - I - 0x01B049 06:B039: E3        .byte $E3   ; 
- D 1 - I - 0x01B04A 06:B03A: 00        .byte $00   ; 
- D 1 - I - 0x01B04B 06:B03B: 00        .byte $00   ; 
- D 1 - I - 0x01B04C 06:B03C: E4        .byte $E4   ; 
- D 1 - I - 0x01B04D 06:B03D: 00        .byte $00   ; 
- D 1 - I - 0x01B04E 06:B03E: 00        .byte $00   ; 
- D 1 - I - 0x01B04F 06:B03F: E3        .byte $E3   ; 
- D 1 - I - 0x01B050 06:B040: 00        .byte $00   ; 
- D 1 - I - 0x01B051 06:B041: E4        .byte $E4   ; 
- D 1 - I - 0x01B052 06:B042: 00        .byte $00   ; 
- D 1 - I - 0x01B053 06:B043: E3        .byte $E3   ; 
- D 1 - I - 0x01B054 06:B044: F5        .byte $F5   ; 
- D 1 - I - 0x01B055 06:B045: 00        .byte $00   ; 
- D 1 - I - 0x01B056 06:B046: F0        .byte $F0   ; 
- D 1 - I - 0x01B057 06:B047: E3        .byte $E3   ; 
- D 1 - I - 0x01B058 06:B048: 50        .byte $50   ; 
- D 1 - I - 0x01B059 06:B049: E4        .byte $E4   ; 
- D 1 - I - 0x01B05A 06:B04A: 00        .byte $00   ; 
- D 1 - I - 0x01B05B 06:B04B: E3        .byte $E3   ; 
- D 1 - I - 0x01B05C 06:B04C: F5        .byte $F5   ; 
- D 1 - I - 0x01B05D 06:B04D: 30        .byte $30   ; 
- D 1 - I - 0x01B05E 06:B04E: F0        .byte $F0   ; 
- D 1 - I - 0x01B05F 06:B04F: E3        .byte $E3   ; 
- D 1 - I - 0x01B060 06:B050: 30        .byte $30   ; 
- D 1 - I - 0x01B061 06:B051: E4        .byte $E4   ; 
- D 1 - I - 0x01B062 06:B052: 00        .byte $00   ; 
- D 1 - I - 0x01B063 06:B053: E3        .byte $E3   ; 
- D 1 - I - 0x01B064 06:B054: F5        .byte $F5   ; 
- D 1 - I - 0x01B065 06:B055: 30        .byte $30   ; 
- D 1 - I - 0x01B066 06:B056: E4        .byte $E4   ; 
- D 1 - I - 0x01B067 06:B057: F0        .byte $F0   ; 
- D 1 - I - 0x01B068 06:B058: A0        .byte $A0   ; 
- D 1 - I - 0x01B069 06:B059: E6        .byte $E6   ; 
- D 1 - I - 0x01B06A 06:B05A: 08        .byte $08   ; 
- D 1 - I - 0x01B06B 06:B05B: 00        .byte $00   ; 
- D 1 - I - 0x01B06C 06:B05C: E6        .byte $E6   ; 
- D 1 - I - 0x01B06D 06:B05D: 09        .byte $09   ; 
- D 1 - I - 0x01B06E 06:B05E: E3        .byte $E3   ; 
- D 1 - I - 0x01B06F 06:B05F: 12        .byte $12   ; 
- D 1 - I - 0x01B070 06:B060: EA        .byte $EA   ; 
- D 1 - I - 0x01B071 06:B061: 00        .byte $00   ; 
- D 1 - I - 0x01B072 06:B062: EC        .byte $EC   ; 
- D 1 - I - 0x01B073 06:B063: 02        .byte $02   ; 
- D 1 - I - 0x01B074 06:B064: E9        .byte $E9   ; 
- D 1 - I - 0x01B075 06:B065: B1        .byte $B1   ; 
- D 1 - I - 0x01B076 06:B066: D9        .byte $D9   ; 
- D 1 - I - 0x01B077 06:B067: 30        .byte $30   ; 
- D 1 - I - 0x01B078 06:B068: 13        .byte $13   ; 
- D 1 - I - 0x01B079 06:B069: 18        .byte $18   ; 
- D 1 - I - 0x01B07A 06:B06A: EB        .byte $EB   ; 
- D 1 - I - 0x01B07B 06:B06B: 50        .byte $50   ; 
- D 1 - I - 0x01B07C 06:B06C: 22        .byte $22   ; 
- D 1 - I - 0x01B07D 06:B06D: E3        .byte $E3   ; 
- D 1 - I - 0x01B07E 06:B06E: E6        .byte $E6   ; 
- D 1 - I - 0x01B07F 06:B06F: 02        .byte $02   ; 
- D 1 - I - 0x01B080 06:B070: 52        .byte $52   ; 
- D 1 - I - 0x01B081 06:B071: A2        .byte $A2   ; 
- D 1 - I - 0x01B082 06:B072: E2        .byte $E2   ; 
- D 1 - I - 0x01B083 06:B073: 32        .byte $32   ; 
- D 1 - I - 0x01B084 06:B074: E8        .byte $E8   ; 
- D 1 - I - 0x01B085 06:B075: 16        .byte $16   ; 
- D 1 - I - 0x01B086 06:B076: E6        .byte $E6   ; 
- D 1 - I - 0x01B087 06:B077: 09        .byte $09   ; 
- D 1 - I - 0x01B088 06:B078: 82        .byte $82   ; 
- D 1 - I - 0x01B089 06:B079: E8        .byte $E8   ; 
- D 1 - I - 0x01B08A 06:B07A: 17        .byte $17   ; 
- D 1 - I - 0x01B08B 06:B07B: 70        .byte $70   ; 
- D 1 - I - 0x01B08C 06:B07C: 10        .byte $10   ; 
- D 1 - I - 0x01B08D 06:B07D: 00        .byte $00   ; 
- D 1 - I - 0x01B08E 06:B07E: 60        .byte $60   ; 
- D 1 - I - 0x01B08F 06:B07F: 50        .byte $50   ; 
- D 1 - I - 0x01B090 06:B080: E3        .byte $E3   ; 
- D 1 - I - 0x01B091 06:B081: B0        .byte $B0   ; 
- D 1 - I - 0x01B092 06:B082: A0        .byte $A0   ; 
- D 1 - I - 0x01B093 06:B083: E2        .byte $E2   ; 
- D 1 - I - 0x01B094 06:B084: 40        .byte $40   ; 
- D 1 - I - 0x01B095 06:B085: 30        .byte $30   ; 
- D 1 - I - 0x01B096 06:B086: E3        .byte $E3   ; 
- D 1 - I - 0x01B097 06:B087: 90        .byte $90   ; 
- D 1 - I - 0x01B098 06:B088: 80        .byte $80   ; 
- D 1 - I - 0x01B099 06:B089: FD        .byte $FD   ; 
- D 1 - I - 0x01B09A 06:B08A: 91 B1     .word sub_FD_B191
- D 1 - I - 0x01B09C 06:B08C: EC        .byte $EC   ; 
- D 1 - I - 0x01B09D 06:B08D: 02        .byte $02   ; 
- D 1 - I - 0x01B09E 06:B08E: E9        .byte $E9   ; 
- D 1 - I - 0x01B09F 06:B08F: 71        .byte $71   ; 
- D 1 - I - 0x01B0A0 06:B090: D9        .byte $D9   ; 
- D 1 - I - 0x01B0A1 06:B091: 30        .byte $30   ; 
- D 1 - I - 0x01B0A2 06:B092: 13        .byte $13   ; 
- D 1 - I - 0x01B0A3 06:B093: 18        .byte $18   ; 
- D 1 - I - 0x01B0A4 06:B094: EB        .byte $EB   ; 
- D 1 - I - 0x01B0A5 06:B095: 50        .byte $50   ; 
- D 1 - I - 0x01B0A6 06:B096: 22        .byte $22   ; 
- D 1 - I - 0x01B0A7 06:B097: E3        .byte $E3   ; 
- D 1 - I - 0x01B0A8 06:B098: E6        .byte $E6   ; 
- D 1 - I - 0x01B0A9 06:B099: 02        .byte $02   ; 
- D 1 - I - 0x01B0AA 06:B09A: 52        .byte $52   ; 
- D 1 - I - 0x01B0AB 06:B09B: A2        .byte $A2   ; 
- D 1 - I - 0x01B0AC 06:B09C: E2        .byte $E2   ; 
- D 1 - I - 0x01B0AD 06:B09D: 32        .byte $32   ; 
- D 1 - I - 0x01B0AE 06:B09E: E6        .byte $E6   ; 
- D 1 - I - 0x01B0AF 06:B09F: 09        .byte $09   ; 
- D 1 - I - 0x01B0B0 06:B0A0: E8        .byte $E8   ; 
- D 1 - I - 0x01B0B1 06:B0A1: 17        .byte $17   ; 
- D 1 - I - 0x01B0B2 06:B0A2: 82        .byte $82   ; 
- D 1 - I - 0x01B0B3 06:B0A3: E8        .byte $E8   ; 
- D 1 - I - 0x01B0B4 06:B0A4: 18        .byte $18   ; 
- D 1 - I - 0x01B0B5 06:B0A5: E1        .byte $E1   ; 
- D 1 - I - 0x01B0B6 06:B0A6: 10        .byte $10   ; 
- D 1 - I - 0x01B0B7 06:B0A7: 00        .byte $00   ; 
- D 1 - I - 0x01B0B8 06:B0A8: E2        .byte $E2   ; 
- D 1 - I - 0x01B0B9 06:B0A9: 60        .byte $60   ; 
- D 1 - I - 0x01B0BA 06:B0AA: 50        .byte $50   ; 
- D 1 - I - 0x01B0BB 06:B0AB: B0        .byte $B0   ; 
- D 1 - I - 0x01B0BC 06:B0AC: A0        .byte $A0   ; 
- D 1 - I - 0x01B0BD 06:B0AD: 40        .byte $40   ; 
- D 1 - I - 0x01B0BE 06:B0AE: 30        .byte $30   ; 
- D 1 - I - 0x01B0BF 06:B0AF: 90        .byte $90   ; 
- D 1 - I - 0x01B0C0 06:B0B0: 80        .byte $80   ; 
- D 1 - I - 0x01B0C1 06:B0B1: 30        .byte $30   ; 
- D 1 - I - 0x01B0C2 06:B0B2: FD        .byte $FD   ; 
- D 1 - I - 0x01B0C3 06:B0B3: 91 B1     .word sub_FD_B191
- D 1 - I - 0x01B0C5 06:B0B5: EC        .byte $EC   ; 
- D 1 - I - 0x01B0C6 06:B0B6: 02        .byte $02   ; 
- D 1 - I - 0x01B0C7 06:B0B7: E9        .byte $E9   ; 
- D 1 - I - 0x01B0C8 06:B0B8: B1        .byte $B1   ; 
- D 1 - I - 0x01B0C9 06:B0B9: D9        .byte $D9   ; 
- D 1 - I - 0x01B0CA 06:B0BA: 30        .byte $30   ; 
- D 1 - I - 0x01B0CB 06:B0BB: 13        .byte $13   ; 
- D 1 - I - 0x01B0CC 06:B0BC: 18        .byte $18   ; 
- D 1 - I - 0x01B0CD 06:B0BD: EB        .byte $EB   ; 
- D 1 - I - 0x01B0CE 06:B0BE: 50        .byte $50   ; 
- D 1 - I - 0x01B0CF 06:B0BF: 22        .byte $22   ; 
- D 1 - I - 0x01B0D0 06:B0C0: E3        .byte $E3   ; 
- D 1 - I - 0x01B0D1 06:B0C1: A0        .byte $A0   ; 
- D 1 - I - 0x01B0D2 06:B0C2: E2        .byte $E2   ; 
- D 1 - I - 0x01B0D3 06:B0C3: 30        .byte $30   ; 
- D 1 - I - 0x01B0D4 06:B0C4: 80        .byte $80   ; 
- D 1 - I - 0x01B0D5 06:B0C5: 30        .byte $30   ; 
- D 1 - I - 0x01B0D6 06:B0C6: E1        .byte $E1   ; 
- D 1 - I - 0x01B0D7 06:B0C7: 30        .byte $30   ; 
- D 1 - I - 0x01B0D8 06:B0C8: 20        .byte $20   ; 
- D 1 - I - 0x01B0D9 06:B0C9: 10        .byte $10   ; 
- D 1 - I - 0x01B0DA 06:B0CA: E2        .byte $E2   ; 
- D 1 - I - 0x01B0DB 06:B0CB: 90        .byte $90   ; 
- D 1 - I - 0x01B0DC 06:B0CC: E1        .byte $E1   ; 
- D 1 - I - 0x01B0DD 06:B0CD: 00        .byte $00   ; 
- D 1 - I - 0x01B0DE 06:B0CE: E2        .byte $E2   ; 
- D 1 - I - 0x01B0DF 06:B0CF: B0        .byte $B0   ; 
- D 1 - I - 0x01B0E0 06:B0D0: 50        .byte $50   ; 
- D 1 - I - 0x01B0E1 06:B0D1: 40        .byte $40   ; 
- D 1 - I - 0x01B0E2 06:B0D2: A0        .byte $A0   ; 
- D 1 - I - 0x01B0E3 06:B0D3: 90        .byte $90   ; 
- D 1 - I - 0x01B0E4 06:B0D4: 30        .byte $30   ; 
- D 1 - I - 0x01B0E5 06:B0D5: 20        .byte $20   ; 
- D 1 - I - 0x01B0E6 06:B0D6: FD        .byte $FD   ; 
- D 1 - I - 0x01B0E7 06:B0D7: C0 B1     .word sub_FD_B1C0
- D 1 - I - 0x01B0E9 06:B0D9: E5        .byte $E5   ; 
- D 1 - I - 0x01B0EA 06:B0DA: 20        .byte $20   ; 
- D 1 - I - 0x01B0EB 06:B0DB: E3        .byte $E3   ; 
- D 1 - I - 0x01B0EC 06:B0DC: 30        .byte $30   ; 
- D 1 - I - 0x01B0ED 06:B0DD: ED        .byte $ED   ; 
- D 1 - I - 0x01B0EE 06:B0DE: 00        .byte $00   ; 
- D 1 - I - 0x01B0EF 06:B0DF: EC        .byte $EC   ; 
- D 1 - I - 0x01B0F0 06:B0E0: 02        .byte $02   ; 
- D 1 - I - 0x01B0F1 06:B0E1: E9        .byte $E9   ; 
- D 1 - I - 0x01B0F2 06:B0E2: 71        .byte $71   ; 
- D 1 - I - 0x01B0F3 06:B0E3: D9        .byte $D9   ; 
- D 1 - I - 0x01B0F4 06:B0E4: 30        .byte $30   ; 
- D 1 - I - 0x01B0F5 06:B0E5: 13        .byte $13   ; 
- D 1 - I - 0x01B0F6 06:B0E6: 18        .byte $18   ; 
- D 1 - I - 0x01B0F7 06:B0E7: EB        .byte $EB   ; 
- D 1 - I - 0x01B0F8 06:B0E8: 50        .byte $50   ; 
- D 1 - I - 0x01B0F9 06:B0E9: 22        .byte $22   ; 
- D 1 - I - 0x01B0FA 06:B0EA: E2        .byte $E2   ; 
- D 1 - I - 0x01B0FB 06:B0EB: 60        .byte $60   ; 
- D 1 - I - 0x01B0FC 06:B0EC: 30        .byte $30   ; 
- D 1 - I - 0x01B0FD 06:B0ED: 70        .byte $70   ; 
- D 1 - I - 0x01B0FE 06:B0EE: 30        .byte $30   ; 
- D 1 - I - 0x01B0FF 06:B0EF: 80        .byte $80   ; 
- D 1 - I - 0x01B100 06:B0F0: 30        .byte $30   ; 
- D 1 - I - 0x01B101 06:B0F1: 20        .byte $20   ; 
- D 1 - I - 0x01B102 06:B0F2: 10        .byte $10   ; 
- D 1 - I - 0x01B103 06:B0F3: E6        .byte $E6   ; 
- D 1 - I - 0x01B104 06:B0F4: 02        .byte $02   ; 
- D 1 - I - 0x01B105 06:B0F5: E3        .byte $E3   ; 
- D 1 - I - 0x01B106 06:B0F6: A2        .byte $A2   ; 
- D 1 - I - 0x01B107 06:B0F7: E2        .byte $E2   ; 
- D 1 - I - 0x01B108 06:B0F8: 32        .byte $32   ; 
- D 1 - I - 0x01B109 06:B0F9: 82        .byte $82   ; 
- D 1 - I - 0x01B10A 06:B0FA: 12        .byte $12   ; 
- D 1 - I - 0x01B10B 06:B0FB: 62        .byte $62   ; 
- D 1 - I - 0x01B10C 06:B0FC: B2        .byte $B2   ; 
- D 1 - I - 0x01B10D 06:B0FD: 42        .byte $42   ; 
- D 1 - I - 0x01B10E 06:B0FE: 92        .byte $92   ; 
- D 1 - I - 0x01B10F 06:B0FF: E1        .byte $E1   ; 
- D 1 - I - 0x01B110 06:B100: 22        .byte $22   ; 
- D 1 - I - 0x01B111 06:B101: E2        .byte $E2   ; 
- D 1 - I - 0x01B112 06:B102: 72        .byte $72   ; 
- D 1 - I - 0x01B113 06:B103: E1        .byte $E1   ; 
- D 1 - I - 0x01B114 06:B104: 02        .byte $02   ; 
- D 1 - I - 0x01B115 06:B105: 52        .byte $52   ; 
- D 1 - I - 0x01B116 06:B106: E6        .byte $E6   ; 
- D 1 - I - 0x01B117 06:B107: 09        .byte $09   ; 
- D 1 - I - 0x01B118 06:B108: FD        .byte $FD   ; 
- D 1 - I - 0x01B119 06:B109: C0 B1     .word sub_FD_B1C0
- D 1 - I - 0x01B11B 06:B10B: E5        .byte $E5   ; 
- D 1 - I - 0x01B11C 06:B10C: 40        .byte $40   ; 
- D 1 - I - 0x01B11D 06:B10D: E4        .byte $E4   ; 
- D 1 - I - 0x01B11E 06:B10E: 40        .byte $40   ; 
- D 1 - I - 0x01B11F 06:B10F: ED        .byte $ED   ; 
- D 1 - I - 0x01B120 06:B110: 00        .byte $00   ; 
- D 1 - I - 0x01B121 06:B111: E9        .byte $E9   ; 
- D 1 - I - 0x01B122 06:B112: 71        .byte $71   ; 
- D 1 - I - 0x01B123 06:B113: D1        .byte $D1   ; 
- D 1 - I - 0x01B124 06:B114: 36        .byte $36   ; 
- D 1 - I - 0x01B125 06:B115: 83        .byte $83   ; 
- D 1 - I - 0x01B126 06:B116: 25        .byte $25   ; 
- D 1 - I - 0x01B127 06:B117: E3        .byte $E3   ; 
- D 1 - I - 0x01B128 06:B118: 03        .byte $03   ; 
- D 1 - I - 0x01B129 06:B119: 64        .byte $64   ; 
- D 1 - I - 0x01B12A 06:B11A: 53        .byte $53   ; 
- D 1 - I - 0x01B12B 06:B11B: A4        .byte $A4   ; 
- D 1 - I - 0x01B12C 06:B11C: 93        .byte $93   ; 
- D 1 - I - 0x01B12D 06:B11D: 44        .byte $44   ; 
- D 1 - I - 0x01B12E 06:B11E: 33        .byte $33   ; 
- D 1 - I - 0x01B12F 06:B11F: 84        .byte $84   ; 
- D 1 - I - 0x01B130 06:B120: 73        .byte $73   ; 
- D 1 - I - 0x01B131 06:B121: 24        .byte $24   ; 
- D 1 - I - 0x01B132 06:B122: 13        .byte $13   ; 
- D 1 - I - 0x01B133 06:B123: 64        .byte $64   ; 
- D 1 - I - 0x01B134 06:B124: 53        .byte $53   ; 
- D 1 - I - 0x01B135 06:B125: 04        .byte $04   ; 
- D 1 - I - 0x01B136 06:B126: E4        .byte $E4   ; 
- D 1 - I - 0x01B137 06:B127: B3        .byte $B3   ; 
- D 1 - I - 0x01B138 06:B128: E3        .byte $E3   ; 
- D 1 - I - 0x01B139 06:B129: 44        .byte $44   ; 
- D 1 - I - 0x01B13A 06:B12A: 33        .byte $33   ; 
- D 1 - I - 0x01B13B 06:B12B: E4        .byte $E4   ; 
- D 1 - I - 0x01B13C 06:B12C: A4        .byte $A4   ; 
- D 1 - I - 0x01B13D 06:B12D: 93        .byte $93   ; 
- D 1 - I - 0x01B13E 06:B12E: E3        .byte $E3   ; 
- D 1 - I - 0x01B13F 06:B12F: 24        .byte $24   ; 
- D 1 - I - 0x01B140 06:B130: 13        .byte $13   ; 
- D 1 - I - 0x01B141 06:B131: E4        .byte $E4   ; 
- D 1 - I - 0x01B142 06:B132: 84        .byte $84   ; 
- D 1 - I - 0x01B143 06:B133: 73        .byte $73   ; 
- D 1 - I - 0x01B144 06:B134: E3        .byte $E3   ; 
- D 1 - I - 0x01B145 06:B135: 04        .byte $04   ; 
- D 1 - I - 0x01B146 06:B136: E4        .byte $E4   ; 
- D 1 - I - 0x01B147 06:B137: B3        .byte $B3   ; 
- D 1 - I - 0x01B148 06:B138: 64        .byte $64   ; 
- D 1 - I - 0x01B149 06:B139: 53        .byte $53   ; 
- D 1 - I - 0x01B14A 06:B13A: A4        .byte $A4   ; 
- D 1 - I - 0x01B14B 06:B13B: 93        .byte $93   ; 
- D 1 - I - 0x01B14C 06:B13C: 44        .byte $44   ; 
- D 1 - I - 0x01B14D 06:B13D: 33        .byte $33   ; 
- D 1 - I - 0x01B14E 06:B13E: 74        .byte $74   ; 
- D 1 - I - 0x01B14F 06:B13F: E7        .byte $E7   ; 
- D 1 - I - 0x01B150 06:B140: 14        .byte $14   ; 
- D 1 - I - 0x01B151 06:B141: E6        .byte $E6   ; 
- D 1 - I - 0x01B152 06:B142: 09        .byte $09   ; 
- D 1 - I - 0x01B153 06:B143: FB        .byte $FB   ; 
- D 1 - I - 0x01B154 06:B144: E5        .byte $E5   ; 
- D 1 - I - 0x01B155 06:B145: A0        .byte $A0   ; 
- D 1 - I - 0x01B156 06:B146: E4        .byte $E4   ; 
- D 1 - I - 0x01B157 06:B147: 00        .byte $00   ; 
- D 1 - I - 0x01B158 06:B148: F3        .byte $F3   ; 
- D 1 - I - 0x01B159 06:B149: 00        .byte $00   ; 
- D 1 - I - 0x01B15A 06:B14A: 00        .byte $00   ; 
- D 1 - I - 0x01B15B 06:B14B: F2        .byte $F2   ; 
- D 1 - I - 0x01B15C 06:B14C: 00        .byte $00   ; 
- D 1 - I - 0x01B15D 06:B14D: 00        .byte $00   ; 
- D 1 - I - 0x01B15E 06:B14E: F1        .byte $F1   ; 
- D 1 - I - 0x01B15F 06:B14F: 00        .byte $00   ; 
- D 1 - I - 0x01B160 06:B150: 00        .byte $00   ; 
- D 1 - I - 0x01B161 06:B151: F0        .byte $F0   ; 
- D 1 - I - 0x01B162 06:B152: FE        .byte $FE   ; 
- D 1 - I - 0x01B163 06:B153: 02        .byte $02   ; 
- D 1 - I - 0x01B164 06:B154: E9        .byte $E9   ; 
- D 1 - I - 0x01B165 06:B155: 71        .byte $71   ; 
- D 1 - I - 0x01B166 06:B156: D1        .byte $D1   ; 
- D 1 - I - 0x01B167 06:B157: 36        .byte $36   ; 
- D 1 - I - 0x01B168 06:B158: 83        .byte $83   ; 
- D 1 - I - 0x01B169 06:B159: 25        .byte $25   ; 
- D 1 - I - 0x01B16A 06:B15A: E3        .byte $E3   ; 
- D 1 - I - 0x01B16B 06:B15B: 03        .byte $03   ; 
- D 1 - I - 0x01B16C 06:B15C: 64        .byte $64   ; 
- D 1 - I - 0x01B16D 06:B15D: 53        .byte $53   ; 
- D 1 - I - 0x01B16E 06:B15E: A4        .byte $A4   ; 
- D 1 - I - 0x01B16F 06:B15F: 93        .byte $93   ; 
- D 1 - I - 0x01B170 06:B160: 44        .byte $44   ; 
- D 1 - I - 0x01B171 06:B161: 33        .byte $33   ; 
- D 1 - I - 0x01B172 06:B162: 84        .byte $84   ; 
- D 1 - I - 0x01B173 06:B163: 73        .byte $73   ; 
- D 1 - I - 0x01B174 06:B164: 24        .byte $24   ; 
- D 1 - I - 0x01B175 06:B165: 13        .byte $13   ; 
- D 1 - I - 0x01B176 06:B166: 64        .byte $64   ; 
- D 1 - I - 0x01B177 06:B167: 53        .byte $53   ; 
- D 1 - I - 0x01B178 06:B168: 04        .byte $04   ; 
- D 1 - I - 0x01B179 06:B169: E4        .byte $E4   ; 
- D 1 - I - 0x01B17A 06:B16A: B3        .byte $B3   ; 
- D 1 - I - 0x01B17B 06:B16B: E3        .byte $E3   ; 
- D 1 - I - 0x01B17C 06:B16C: 44        .byte $44   ; 
- D 1 - I - 0x01B17D 06:B16D: 33        .byte $33   ; 
- D 1 - I - 0x01B17E 06:B16E: E4        .byte $E4   ; 
- D 1 - I - 0x01B17F 06:B16F: A4        .byte $A4   ; 
- D 1 - I - 0x01B180 06:B170: 93        .byte $93   ; 
- D 1 - I - 0x01B181 06:B171: E3        .byte $E3   ; 
- D 1 - I - 0x01B182 06:B172: 24        .byte $24   ; 
- D 1 - I - 0x01B183 06:B173: 13        .byte $13   ; 
- D 1 - I - 0x01B184 06:B174: E4        .byte $E4   ; 
- D 1 - I - 0x01B185 06:B175: 84        .byte $84   ; 
- D 1 - I - 0x01B186 06:B176: 73        .byte $73   ; 
- D 1 - I - 0x01B187 06:B177: E3        .byte $E3   ; 
- D 1 - I - 0x01B188 06:B178: 04        .byte $04   ; 
- D 1 - I - 0x01B189 06:B179: E4        .byte $E4   ; 
- D 1 - I - 0x01B18A 06:B17A: B3        .byte $B3   ; 
- D 1 - I - 0x01B18B 06:B17B: 64        .byte $64   ; 
- D 1 - I - 0x01B18C 06:B17C: 53        .byte $53   ; 
- D 1 - I - 0x01B18D 06:B17D: A4        .byte $A4   ; 
- D 1 - I - 0x01B18E 06:B17E: 93        .byte $93   ; 
- D 1 - I - 0x01B18F 06:B17F: 44        .byte $44   ; 
- D 1 - I - 0x01B190 06:B180: 33        .byte $33   ; 
- D 1 - I - 0x01B191 06:B181: 74        .byte $74   ; 
- D 1 - I - 0x01B192 06:B182: E6        .byte $E6   ; 
- D 1 - I - 0x01B193 06:B183: 09        .byte $09   ; 
- D 1 - I - 0x01B194 06:B184: E7        .byte $E7   ; 
- D 1 - I - 0x01B195 06:B185: 14        .byte $14   ; 
- D 1 - I - 0x01B196 06:B186: E5        .byte $E5   ; 
- D 1 - I - 0x01B197 06:B187: 72        .byte $72   ; 
- D 1 - I - 0x01B198 06:B188: A2        .byte $A2   ; 
- D 1 - I - 0x01B199 06:B189: E4        .byte $E4   ; 
- D 1 - I - 0x01B19A 06:B18A: 12        .byte $12   ; 
- D 1 - I - 0x01B19B 06:B18B: 42        .byte $42   ; 
- D 1 - I - 0x01B19C 06:B18C: 73        .byte $73   ; 
- D 1 - I - 0x01B19D 06:B18D: FE        .byte $FE   ; 
- D 1 - I - 0x01B19E 06:B18E: FF        .byte $FF   ; 
- D 1 - I - 0x01B19F 06:B18F: 13 B0     .word loc_FF_B013



sub_FD_B191:
- D 1 - I - 0x01B1A1 06:B191: EC        .byte $EC   ; 
- D 1 - I - 0x01B1A2 06:B192: 00        .byte $00   ; 
- D 1 - I - 0x01B1A3 06:B193: ED        .byte $ED   ; 
- D 1 - I - 0x01B1A4 06:B194: 81        .byte $81   ; 
- D 1 - I - 0x01B1A5 06:B195: E9        .byte $E9   ; 
- D 1 - I - 0x01B1A6 06:B196: 71        .byte $71   ; 
- D 1 - I - 0x01B1A7 06:B197: E9        .byte $E9   ; 
- D 1 - I - 0x01B1A8 06:B198: 30        .byte $30   ; 
- D 1 - I - 0x01B1A9 06:B199: E7        .byte $E7   ; 
- D 1 - I - 0x01B1AA 06:B19A: 12        .byte $12   ; 
- D 1 - I - 0x01B1AB 06:B19B: E8        .byte $E8   ; 
- D 1 - I - 0x01B1AC 06:B19C: 14        .byte $14   ; 
- D 1 - I - 0x01B1AD 06:B19D: E4        .byte $E4   ; 
- D 1 - I - 0x01B1AE 06:B19E: 00        .byte $00   ; 
- D 1 - I - 0x01B1AF 06:B19F: 00        .byte $00   ; 
- D 1 - I - 0x01B1B0 06:B1A0: E3        .byte $E3   ; 
- D 1 - I - 0x01B1B1 06:B1A1: 00        .byte $00   ; 
- D 1 - I - 0x01B1B2 06:B1A2: E4        .byte $E4   ; 
- D 1 - I - 0x01B1B3 06:B1A3: 00        .byte $00   ; 
- D 1 - I - 0x01B1B4 06:B1A4: E3        .byte $E3   ; 
- D 1 - I - 0x01B1B5 06:B1A5: F5        .byte $F5   ; 
- D 1 - I - 0x01B1B6 06:B1A6: 00        .byte $00   ; 
- D 1 - I - 0x01B1B7 06:B1A7: F0        .byte $F0   ; 
- D 1 - I - 0x01B1B8 06:B1A8: E3        .byte $E3   ; 
- D 1 - I - 0x01B1B9 06:B1A9: 50        .byte $50   ; 
- D 1 - I - 0x01B1BA 06:B1AA: E4        .byte $E4   ; 
- D 1 - I - 0x01B1BB 06:B1AB: 00        .byte $00   ; 
- D 1 - I - 0x01B1BC 06:B1AC: E3        .byte $E3   ; 
- D 1 - I - 0x01B1BD 06:B1AD: F5        .byte $F5   ; 
- D 1 - I - 0x01B1BE 06:B1AE: 30        .byte $30   ; 
- D 1 - I - 0x01B1BF 06:B1AF: F0        .byte $F0   ; 
- D 1 - I - 0x01B1C0 06:B1B0: E3        .byte $E3   ; 
- D 1 - I - 0x01B1C1 06:B1B1: 30        .byte $30   ; 
- D 1 - I - 0x01B1C2 06:B1B2: E4        .byte $E4   ; 
- D 1 - I - 0x01B1C3 06:B1B3: 00        .byte $00   ; 
- D 1 - I - 0x01B1C4 06:B1B4: E3        .byte $E3   ; 
- D 1 - I - 0x01B1C5 06:B1B5: F5        .byte $F5   ; 
- D 1 - I - 0x01B1C6 06:B1B6: 30        .byte $30   ; 
- D 1 - I - 0x01B1C7 06:B1B7: E4        .byte $E4   ; 
- D 1 - I - 0x01B1C8 06:B1B8: F0        .byte $F0   ; 
- D 1 - I - 0x01B1C9 06:B1B9: A0        .byte $A0   ; 
- D 1 - I - 0x01B1CA 06:B1BA: 00        .byte $00   ; 
- D 1 - I - 0x01B1CB 06:B1BB: E3        .byte $E3   ; 
- D 1 - I - 0x01B1CC 06:B1BC: 12        .byte $12   ; 
- D 1 - I - 0x01B1CD 06:B1BD: ED        .byte $ED   ; 
- D 1 - I - 0x01B1CE 06:B1BE: 00        .byte $00   ; 
- D 1 - I - 0x01B1CF 06:B1BF: FD        .byte $FD   ; 
sub_FD_B1C0:
- D 1 - I - 0x01B1D0 06:B1C0: EC        .byte $EC   ; 
- D 1 - I - 0x01B1D1 06:B1C1: 00        .byte $00   ; 
- D 1 - I - 0x01B1D2 06:B1C2: ED        .byte $ED   ; 
- D 1 - I - 0x01B1D3 06:B1C3: 81        .byte $81   ; 
- D 1 - I - 0x01B1D4 06:B1C4: E9        .byte $E9   ; 
- D 1 - I - 0x01B1D5 06:B1C5: 71        .byte $71   ; 
- D 1 - I - 0x01B1D6 06:B1C6: E9        .byte $E9   ; 
- D 1 - I - 0x01B1D7 06:B1C7: 30        .byte $30   ; 
- D 1 - I - 0x01B1D8 06:B1C8: E7        .byte $E7   ; 
- D 1 - I - 0x01B1D9 06:B1C9: 12        .byte $12   ; 
- D 1 - I - 0x01B1DA 06:B1CA: E8        .byte $E8   ; 
- D 1 - I - 0x01B1DB 06:B1CB: 14        .byte $14   ; 
- D 1 - I - 0x01B1DC 06:B1CC: E4        .byte $E4   ; 
- D 1 - I - 0x01B1DD 06:B1CD: 30        .byte $30   ; 
- D 1 - I - 0x01B1DE 06:B1CE: 30        .byte $30   ; 
- D 1 - I - 0x01B1DF 06:B1CF: E3        .byte $E3   ; 
- D 1 - I - 0x01B1E0 06:B1D0: 30        .byte $30   ; 
- D 1 - I - 0x01B1E1 06:B1D1: E4        .byte $E4   ; 
- D 1 - I - 0x01B1E2 06:B1D2: 30        .byte $30   ; 
- D 1 - I - 0x01B1E3 06:B1D3: E3        .byte $E3   ; 
- D 1 - I - 0x01B1E4 06:B1D4: F5        .byte $F5   ; 
- D 1 - I - 0x01B1E5 06:B1D5: 30        .byte $30   ; 
- D 1 - I - 0x01B1E6 06:B1D6: F0        .byte $F0   ; 
- D 1 - I - 0x01B1E7 06:B1D7: E3        .byte $E3   ; 
- D 1 - I - 0x01B1E8 06:B1D8: 80        .byte $80   ; 
- D 1 - I - 0x01B1E9 06:B1D9: E4        .byte $E4   ; 
- D 1 - I - 0x01B1EA 06:B1DA: 30        .byte $30   ; 
- D 1 - I - 0x01B1EB 06:B1DB: E3        .byte $E3   ; 
- D 1 - I - 0x01B1EC 06:B1DC: F5        .byte $F5   ; 
- D 1 - I - 0x01B1ED 06:B1DD: 80        .byte $80   ; 
- D 1 - I - 0x01B1EE 06:B1DE: F0        .byte $F0   ; 
- D 1 - I - 0x01B1EF 06:B1DF: E3        .byte $E3   ; 
- D 1 - I - 0x01B1F0 06:B1E0: 60        .byte $60   ; 
- D 1 - I - 0x01B1F1 06:B1E1: E4        .byte $E4   ; 
- D 1 - I - 0x01B1F2 06:B1E2: 30        .byte $30   ; 
- D 1 - I - 0x01B1F3 06:B1E3: E3        .byte $E3   ; 
- D 1 - I - 0x01B1F4 06:B1E4: F5        .byte $F5   ; 
- D 1 - I - 0x01B1F5 06:B1E5: 60        .byte $60   ; 
- D 1 - I - 0x01B1F6 06:B1E6: E3        .byte $E3   ; 
- D 1 - I - 0x01B1F7 06:B1E7: F0        .byte $F0   ; 
- D 1 - I - 0x01B1F8 06:B1E8: 10        .byte $10   ; 
- D 1 - I - 0x01B1F9 06:B1E9: E5        .byte $E5   ; 
- D 1 - I - 0x01B1FA 06:B1EA: 10        .byte $10   ; 
- D 1 - I - 0x01B1FB 06:B1EB: E4        .byte $E4   ; 
- D 1 - I - 0x01B1FC 06:B1EC: 10        .byte $10   ; 
- D 1 - I - 0x01B1FD 06:B1ED: FD        .byte $FD   ; 



_off014_2D_B1EE_02:
loc_FF_B1EE:
- D 1 - I - 0x01B1FE 06:B1EE: EA        .byte $EA   ; 
- D 1 - I - 0x01B1FF 06:B1EF: 00        .byte $00   ; 
- D 1 - I - 0x01B200 06:B1F0: D9        .byte $D9   ; 
- D 1 - I - 0x01B201 06:B1F1: 00        .byte $00   ; 
- D 1 - I - 0x01B202 06:B1F2: E4        .byte $E4   ; 
- D 1 - I - 0x01B203 06:B1F3: B0        .byte $B0   ; 
- D 1 - I - 0x01B204 06:B1F4: E3        .byte $E3   ; 
- D 1 - I - 0x01B205 06:B1F5: 0D        .byte $0D   ; 
- D 1 - I - 0x01B206 06:B1F6: D9        .byte $D9   ; 
- D 1 - I - 0x01B207 06:B1F7: 20        .byte $20   ; 
- D 1 - I - 0x01B208 06:B1F8: 70        .byte $70   ; 
- D 1 - I - 0x01B209 06:B1F9: D9        .byte $D9   ; 
- D 1 - I - 0x01B20A 06:B1FA: 00        .byte $00   ; 
- D 1 - I - 0x01B20B 06:B1FB: E2        .byte $E2   ; 
- D 1 - I - 0x01B20C 06:B1FC: 03        .byte $03   ; 
- D 1 - I - 0x01B20D 06:B1FD: E3        .byte $E3   ; 
- D 1 - I - 0x01B20E 06:B1FE: 53        .byte $53   ; 
- D 1 - I - 0x01B20F 06:B1FF: 31        .byte $31   ; 
- D 1 - I - 0x01B210 06:B200: E6        .byte $E6   ; 
- D 1 - I - 0x01B211 06:B201: 01        .byte $01   ; 
- D 1 - I - 0x01B212 06:B202: 00        .byte $00   ; 
- D 1 - I - 0x01B213 06:B203: 00        .byte $00   ; 
- D 1 - I - 0x01B214 06:B204: 00        .byte $00   ; 
- D 1 - I - 0x01B215 06:B205: 00        .byte $00   ; 
- D 1 - I - 0x01B216 06:B206: 00        .byte $00   ; 
- D 1 - I - 0x01B217 06:B207: 00        .byte $00   ; 
- D 1 - I - 0x01B218 06:B208: E4        .byte $E4   ; 
- D 1 - I - 0x01B219 06:B209: B0        .byte $B0   ; 
- D 1 - I - 0x01B21A 06:B20A: A0        .byte $A0   ; 
- D 1 - I - 0x01B21B 06:B20B: 90        .byte $90   ; 
- D 1 - I - 0x01B21C 06:B20C: 80        .byte $80   ; 
- D 1 - I - 0x01B21D 06:B20D: 70        .byte $70   ; 
- D 1 - I - 0x01B21E 06:B20E: 60        .byte $60   ; 
- D 1 - I - 0x01B21F 06:B20F: 50        .byte $50   ; 
- D 1 - I - 0x01B220 06:B210: 40        .byte $40   ; 
- D 1 - I - 0x01B221 06:B211: 30        .byte $30   ; 
- D 1 - I - 0x01B222 06:B212: 20        .byte $20   ; 
- D 1 - I - 0x01B223 06:B213: 10        .byte $10   ; 
- D 1 - I - 0x01B224 06:B214: 00        .byte $00   ; 
- D 1 - I - 0x01B225 06:B215: D9        .byte $D9   ; 
- D 1 - I - 0x01B226 06:B216: 15        .byte $15   ; 
- D 1 - I - 0x01B227 06:B217: E5        .byte $E5   ; 
- D 1 - I - 0x01B228 06:B218: A0        .byte $A0   ; 
- D 1 - I - 0x01B229 06:B219: E4        .byte $E4   ; 
- D 1 - I - 0x01B22A 06:B21A: A0        .byte $A0   ; 
- D 1 - I - 0x01B22B 06:B21B: 10        .byte $10   ; 
- D 1 - I - 0x01B22C 06:B21C: E3        .byte $E3   ; 
- D 1 - I - 0x01B22D 06:B21D: 10        .byte $10   ; 
- D 1 - I - 0x01B22E 06:B21E: FD        .byte $FD   ; 
- D 1 - I - 0x01B22F 06:B21F: 7D B2     .word sub_FD_B27D
- D 1 - I - 0x01B231 06:B221: E4        .byte $E4   ; 
- D 1 - I - 0x01B232 06:B222: A0        .byte $A0   ; 
- D 1 - I - 0x01B233 06:B223: E5        .byte $E5   ; 
- D 1 - I - 0x01B234 06:B224: B0        .byte $B0   ; 
- D 1 - I - 0x01B235 06:B225: E4        .byte $E4   ; 
- D 1 - I - 0x01B236 06:B226: B0        .byte $B0   ; 
- D 1 - I - 0x01B237 06:B227: FD        .byte $FD   ; 
- D 1 - I - 0x01B238 06:B228: 7D B2     .word sub_FD_B27D
- D 1 - I - 0x01B23A 06:B22A: E3        .byte $E3   ; 
- D 1 - I - 0x01B23B 06:B22B: 10        .byte $10   ; 
- D 1 - I - 0x01B23C 06:B22C: E4        .byte $E4   ; 
- D 1 - I - 0x01B23D 06:B22D: 10        .byte $10   ; 
- D 1 - I - 0x01B23E 06:B22E: E3        .byte $E3   ; 
- D 1 - I - 0x01B23F 06:B22F: 10        .byte $10   ; 
- D 1 - I - 0x01B240 06:B230: FD        .byte $FD   ; 
- D 1 - I - 0x01B241 06:B231: A9 B2     .word sub_FD_B2A9
- D 1 - I - 0x01B243 06:B233: 10        .byte $10   ; 
- D 1 - I - 0x01B244 06:B234: E4        .byte $E4   ; 
- D 1 - I - 0x01B245 06:B235: 20        .byte $20   ; 
- D 1 - I - 0x01B246 06:B236: E3        .byte $E3   ; 
- D 1 - I - 0x01B247 06:B237: 20        .byte $20   ; 
- D 1 - I - 0x01B248 06:B238: FD        .byte $FD   ; 
- D 1 - I - 0x01B249 06:B239: A9 B2     .word sub_FD_B2A9
- D 1 - I - 0x01B24B 06:B23B: 40        .byte $40   ; 
- D 1 - I - 0x01B24C 06:B23C: E4        .byte $E4   ; 
- D 1 - I - 0x01B24D 06:B23D: 40        .byte $40   ; 
- D 1 - I - 0x01B24E 06:B23E: E3        .byte $E3   ; 
- D 1 - I - 0x01B24F 06:B23F: 40        .byte $40   ; 
- D 1 - I - 0x01B250 06:B240: FD        .byte $FD   ; 
- D 1 - I - 0x01B251 06:B241: DD B2     .word sub_FD_B2DD
- D 1 - I - 0x01B253 06:B243: A8        .byte $A8   ; 
- D 1 - I - 0x01B254 06:B244: E3        .byte $E3   ; 
- D 1 - I - 0x01B255 06:B245: 08        .byte $08   ; 
- D 1 - I - 0x01B256 06:B246: 08        .byte $08   ; 
- D 1 - I - 0x01B257 06:B247: 08        .byte $08   ; 
- D 1 - I - 0x01B258 06:B248: 08        .byte $08   ; 
- D 1 - I - 0x01B259 06:B249: 08        .byte $08   ; 
- D 1 - I - 0x01B25A 06:B24A: 08        .byte $08   ; 
- D 1 - I - 0x01B25B 06:B24B: 08        .byte $08   ; 
- D 1 - I - 0x01B25C 06:B24C: E4        .byte $E4   ; 
- D 1 - I - 0x01B25D 06:B24D: A8        .byte $A8   ; 
- D 1 - I - 0x01B25E 06:B24E: E3        .byte $E3   ; 
- D 1 - I - 0x01B25F 06:B24F: 08        .byte $08   ; 
- D 1 - I - 0x01B260 06:B250: 08        .byte $08   ; 
- D 1 - I - 0x01B261 06:B251: 08        .byte $08   ; 
- D 1 - I - 0x01B262 06:B252: E4        .byte $E4   ; 
- D 1 - I - 0x01B263 06:B253: A8        .byte $A8   ; 
- D 1 - I - 0x01B264 06:B254: E3        .byte $E3   ; 
- D 1 - I - 0x01B265 06:B255: A8        .byte $A8   ; 
- D 1 - I - 0x01B266 06:B256: E4        .byte $E4   ; 
- D 1 - I - 0x01B267 06:B257: B8        .byte $B8   ; 
- D 1 - I - 0x01B268 06:B258: E3        .byte $E3   ; 
- D 1 - I - 0x01B269 06:B259: B8        .byte $B8   ; 
- D 1 - I - 0x01B26A 06:B25A: FD        .byte $FD   ; 
- D 1 - I - 0x01B26B 06:B25B: DD B2     .word sub_FD_B2DD
- D 1 - I - 0x01B26D 06:B25D: 78        .byte $78   ; 
- D 1 - I - 0x01B26E 06:B25E: E3        .byte $E3   ; 
- D 1 - I - 0x01B26F 06:B25F: 78        .byte $78   ; 
- D 1 - I - 0x01B270 06:B260: E4        .byte $E4   ; 
- D 1 - I - 0x01B271 06:B261: 78        .byte $78   ; 
- D 1 - I - 0x01B272 06:B262: A8        .byte $A8   ; 
- D 1 - I - 0x01B273 06:B263: E3        .byte $E3   ; 
- D 1 - I - 0x01B274 06:B264: A8        .byte $A8   ; 
- D 1 - I - 0x01B275 06:B265: E4        .byte $E4   ; 
- D 1 - I - 0x01B276 06:B266: A8        .byte $A8   ; 
- D 1 - I - 0x01B277 06:B267: E3        .byte $E3   ; 
- D 1 - I - 0x01B278 06:B268: 18        .byte $18   ; 
- D 1 - I - 0x01B279 06:B269: E2        .byte $E2   ; 
- D 1 - I - 0x01B27A 06:B26A: 18        .byte $18   ; 
- D 1 - I - 0x01B27B 06:B26B: E3        .byte $E3   ; 
- D 1 - I - 0x01B27C 06:B26C: 18        .byte $18   ; 
- D 1 - I - 0x01B27D 06:B26D: 48        .byte $48   ; 
- D 1 - I - 0x01B27E 06:B26E: E2        .byte $E2   ; 
- D 1 - I - 0x01B27F 06:B26F: 48        .byte $48   ; 
- D 1 - I - 0x01B280 06:B270: E3        .byte $E3   ; 
- D 1 - I - 0x01B281 06:B271: 48        .byte $48   ; 
- D 1 - I - 0x01B282 06:B272: 78        .byte $78   ; 
- D 1 - I - 0x01B283 06:B273: E2        .byte $E2   ; 
- D 1 - I - 0x01B284 06:B274: 78        .byte $78   ; 
- D 1 - I - 0x01B285 06:B275: E3        .byte $E3   ; 
- D 1 - I - 0x01B286 06:B276: 78        .byte $78   ; 
- D 1 - I - 0x01B287 06:B277: E2        .byte $E2   ; 
- D 1 - I - 0x01B288 06:B278: 78        .byte $78   ; 
- D 1 - I - 0x01B289 06:B279: FE        .byte $FE   ; 
- D 1 - I - 0x01B28A 06:B27A: FF        .byte $FF   ; 
- D 1 - I - 0x01B28B 06:B27B: EE B1     .word loc_FF_B1EE



sub_FD_B27D:
- D 1 - I - 0x01B28D 06:B27D: D9        .byte $D9   ; 
- D 1 - I - 0x01B28E 06:B27E: 15        .byte $15   ; 
- D 1 - I - 0x01B28F 06:B27F: E4        .byte $E4   ; 
- D 1 - I - 0x01B290 06:B280: 00        .byte $00   ; 
- D 1 - I - 0x01B291 06:B281: 00        .byte $00   ; 
- D 1 - I - 0x01B292 06:B282: E3        .byte $E3   ; 
- D 1 - I - 0x01B293 06:B283: 00        .byte $00   ; 
- D 1 - I - 0x01B294 06:B284: E4        .byte $E4   ; 
- D 1 - I - 0x01B295 06:B285: 00        .byte $00   ; 
- D 1 - I - 0x01B296 06:B286: 00        .byte $00   ; 
- D 1 - I - 0x01B297 06:B287: A0        .byte $A0   ; 
- D 1 - I - 0x01B298 06:B288: 00        .byte $00   ; 
- D 1 - I - 0x01B299 06:B289: 00        .byte $00   ; 
- D 1 - I - 0x01B29A 06:B28A: 90        .byte $90   ; 
- D 1 - I - 0x01B29B 06:B28B: 00        .byte $00   ; 
- D 1 - I - 0x01B29C 06:B28C: 00        .byte $00   ; 
- D 1 - I - 0x01B29D 06:B28D: A0        .byte $A0   ; 
- D 1 - I - 0x01B29E 06:B28E: 00        .byte $00   ; 
- D 1 - I - 0x01B29F 06:B28F: 00        .byte $00   ; 
- D 1 - I - 0x01B2A0 06:B290: E3        .byte $E3   ; 
- D 1 - I - 0x01B2A1 06:B291: 00        .byte $00   ; 
- D 1 - I - 0x01B2A2 06:B292: E4        .byte $E4   ; 
- D 1 - I - 0x01B2A3 06:B293: 00        .byte $00   ; 
- D 1 - I - 0x01B2A4 06:B294: 00        .byte $00   ; 
- D 1 - I - 0x01B2A5 06:B295: 00        .byte $00   ; 
- D 1 - I - 0x01B2A6 06:B296: E3        .byte $E3   ; 
- D 1 - I - 0x01B2A7 06:B297: 00        .byte $00   ; 
- D 1 - I - 0x01B2A8 06:B298: E4        .byte $E4   ; 
- D 1 - I - 0x01B2A9 06:B299: 00        .byte $00   ; 
- D 1 - I - 0x01B2AA 06:B29A: 00        .byte $00   ; 
- D 1 - I - 0x01B2AB 06:B29B: E3        .byte $E3   ; 
- D 1 - I - 0x01B2AC 06:B29C: 50        .byte $50   ; 
- D 1 - I - 0x01B2AD 06:B29D: E4        .byte $E4   ; 
- D 1 - I - 0x01B2AE 06:B29E: 00        .byte $00   ; 
- D 1 - I - 0x01B2AF 06:B29F: 00        .byte $00   ; 
- D 1 - I - 0x01B2B0 06:B2A0: E3        .byte $E3   ; 
- D 1 - I - 0x01B2B1 06:B2A1: 30        .byte $30   ; 
- D 1 - I - 0x01B2B2 06:B2A2: E4        .byte $E4   ; 
- D 1 - I - 0x01B2B3 06:B2A3: 00        .byte $00   ; 
- D 1 - I - 0x01B2B4 06:B2A4: 00        .byte $00   ; 
- D 1 - I - 0x01B2B5 06:B2A5: A0        .byte $A0   ; 
- D 1 - I - 0x01B2B6 06:B2A6: E5        .byte $E5   ; 
- D 1 - I - 0x01B2B7 06:B2A7: A0        .byte $A0   ; 
- D 1 - I - 0x01B2B8 06:B2A8: FD        .byte $FD   ; 
sub_FD_B2A9:
- D 1 - I - 0x01B2B9 06:B2A9: D9        .byte $D9   ; 
- D 1 - I - 0x01B2BA 06:B2AA: 15        .byte $15   ; 
- D 1 - I - 0x01B2BB 06:B2AB: E4        .byte $E4   ; 
- D 1 - I - 0x01B2BC 06:B2AC: 30        .byte $30   ; 
- D 1 - I - 0x01B2BD 06:B2AD: 30        .byte $30   ; 
- D 1 - I - 0x01B2BE 06:B2AE: E3        .byte $E3   ; 
- D 1 - I - 0x01B2BF 06:B2AF: 30        .byte $30   ; 
- D 1 - I - 0x01B2C0 06:B2B0: E4        .byte $E4   ; 
- D 1 - I - 0x01B2C1 06:B2B1: 30        .byte $30   ; 
- D 1 - I - 0x01B2C2 06:B2B2: 30        .byte $30   ; 
- D 1 - I - 0x01B2C3 06:B2B3: E3        .byte $E3   ; 
- D 1 - I - 0x01B2C4 06:B2B4: 10        .byte $10   ; 
- D 1 - I - 0x01B2C5 06:B2B5: E4        .byte $E4   ; 
- D 1 - I - 0x01B2C6 06:B2B6: 30        .byte $30   ; 
- D 1 - I - 0x01B2C7 06:B2B7: 30        .byte $30   ; 
- D 1 - I - 0x01B2C8 06:B2B8: E3        .byte $E3   ; 
- D 1 - I - 0x01B2C9 06:B2B9: 00        .byte $00   ; 
- D 1 - I - 0x01B2CA 06:B2BA: E4        .byte $E4   ; 
- D 1 - I - 0x01B2CB 06:B2BB: 30        .byte $30   ; 
- D 1 - I - 0x01B2CC 06:B2BC: 30        .byte $30   ; 
- D 1 - I - 0x01B2CD 06:B2BD: E3        .byte $E3   ; 
- D 1 - I - 0x01B2CE 06:B2BE: 10        .byte $10   ; 
- D 1 - I - 0x01B2CF 06:B2BF: E4        .byte $E4   ; 
- D 1 - I - 0x01B2D0 06:B2C0: 30        .byte $30   ; 
- D 1 - I - 0x01B2D1 06:B2C1: 30        .byte $30   ; 
- D 1 - I - 0x01B2D2 06:B2C2: E3        .byte $E3   ; 
- D 1 - I - 0x01B2D3 06:B2C3: 30        .byte $30   ; 
- D 1 - I - 0x01B2D4 06:B2C4: E4        .byte $E4   ; 
- D 1 - I - 0x01B2D5 06:B2C5: 30        .byte $30   ; 
- D 1 - I - 0x01B2D6 06:B2C6: 30        .byte $30   ; 
- D 1 - I - 0x01B2D7 06:B2C7: 30        .byte $30   ; 
- D 1 - I - 0x01B2D8 06:B2C8: E3        .byte $E3   ; 
- D 1 - I - 0x01B2D9 06:B2C9: 30        .byte $30   ; 
- D 1 - I - 0x01B2DA 06:B2CA: E4        .byte $E4   ; 
- D 1 - I - 0x01B2DB 06:B2CB: 30        .byte $30   ; 
- D 1 - I - 0x01B2DC 06:B2CC: 30        .byte $30   ; 
- D 1 - I - 0x01B2DD 06:B2CD: E3        .byte $E3   ; 
- D 1 - I - 0x01B2DE 06:B2CE: 80        .byte $80   ; 
- D 1 - I - 0x01B2DF 06:B2CF: E4        .byte $E4   ; 
- D 1 - I - 0x01B2E0 06:B2D0: 30        .byte $30   ; 
- D 1 - I - 0x01B2E1 06:B2D1: 30        .byte $30   ; 
- D 1 - I - 0x01B2E2 06:B2D2: E3        .byte $E3   ; 
- D 1 - I - 0x01B2E3 06:B2D3: 60        .byte $60   ; 
- D 1 - I - 0x01B2E4 06:B2D4: E4        .byte $E4   ; 
- D 1 - I - 0x01B2E5 06:B2D5: 30        .byte $30   ; 
- D 1 - I - 0x01B2E6 06:B2D6: 30        .byte $30   ; 
- D 1 - I - 0x01B2E7 06:B2D7: E3        .byte $E3   ; 
- D 1 - I - 0x01B2E8 06:B2D8: 10        .byte $10   ; 
- D 1 - I - 0x01B2E9 06:B2D9: E4        .byte $E4   ; 
- D 1 - I - 0x01B2EA 06:B2DA: 10        .byte $10   ; 
- D 1 - I - 0x01B2EB 06:B2DB: E3        .byte $E3   ; 
- D 1 - I - 0x01B2EC 06:B2DC: FD        .byte $FD   ; 
sub_FD_B2DD:
- D 1 - I - 0x01B2ED 06:B2DD: D1        .byte $D1   ; 
- D 1 - I - 0x01B2EE 06:B2DE: 02        .byte $02   ; 
- D 1 - I - 0x01B2EF 06:B2DF: E3        .byte $E3   ; 
- D 1 - I - 0x01B2F0 06:B2E0: 03        .byte $03   ; 
- D 1 - I - 0x01B2F1 06:B2E1: 64        .byte $64   ; 
- D 1 - I - 0x01B2F2 06:B2E2: 53        .byte $53   ; 
- D 1 - I - 0x01B2F3 06:B2E3: A4        .byte $A4   ; 
- D 1 - I - 0x01B2F4 06:B2E4: 93        .byte $93   ; 
- D 1 - I - 0x01B2F5 06:B2E5: 44        .byte $44   ; 
- D 1 - I - 0x01B2F6 06:B2E6: 33        .byte $33   ; 
- D 1 - I - 0x01B2F7 06:B2E7: 84        .byte $84   ; 
- D 1 - I - 0x01B2F8 06:B2E8: 73        .byte $73   ; 
- D 1 - I - 0x01B2F9 06:B2E9: 24        .byte $24   ; 
- D 1 - I - 0x01B2FA 06:B2EA: 13        .byte $13   ; 
- D 1 - I - 0x01B2FB 06:B2EB: 64        .byte $64   ; 
- D 1 - I - 0x01B2FC 06:B2EC: 53        .byte $53   ; 
- D 1 - I - 0x01B2FD 06:B2ED: 04        .byte $04   ; 
- D 1 - I - 0x01B2FE 06:B2EE: E4        .byte $E4   ; 
- D 1 - I - 0x01B2FF 06:B2EF: B3        .byte $B3   ; 
- D 1 - I - 0x01B300 06:B2F0: E3        .byte $E3   ; 
- D 1 - I - 0x01B301 06:B2F1: 44        .byte $44   ; 
- D 1 - I - 0x01B302 06:B2F2: 33        .byte $33   ; 
- D 1 - I - 0x01B303 06:B2F3: E4        .byte $E4   ; 
- D 1 - I - 0x01B304 06:B2F4: A4        .byte $A4   ; 
- D 1 - I - 0x01B305 06:B2F5: 93        .byte $93   ; 
- D 1 - I - 0x01B306 06:B2F6: E3        .byte $E3   ; 
- D 1 - I - 0x01B307 06:B2F7: 24        .byte $24   ; 
- D 1 - I - 0x01B308 06:B2F8: 13        .byte $13   ; 
- D 1 - I - 0x01B309 06:B2F9: E4        .byte $E4   ; 
- D 1 - I - 0x01B30A 06:B2FA: 84        .byte $84   ; 
- D 1 - I - 0x01B30B 06:B2FB: 73        .byte $73   ; 
- D 1 - I - 0x01B30C 06:B2FC: E3        .byte $E3   ; 
- D 1 - I - 0x01B30D 06:B2FD: 04        .byte $04   ; 
- D 1 - I - 0x01B30E 06:B2FE: E4        .byte $E4   ; 
- D 1 - I - 0x01B30F 06:B2FF: B3        .byte $B3   ; 
- D 1 - I - 0x01B310 06:B300: 64        .byte $64   ; 
- D 1 - I - 0x01B311 06:B301: 53        .byte $53   ; 
- D 1 - I - 0x01B312 06:B302: A4        .byte $A4   ; 
- D 1 - I - 0x01B313 06:B303: 93        .byte $93   ; 
- D 1 - I - 0x01B314 06:B304: 44        .byte $44   ; 
- D 1 - I - 0x01B315 06:B305: 33        .byte $33   ; 
- D 1 - I - 0x01B316 06:B306: 74        .byte $74   ; 
- D 1 - I - 0x01B317 06:B307: FD        .byte $FD   ; 



_off014_2D_B308_03:
loc_FF_B308:
- D 1 - I - 0x01B318 06:B308: D1        .byte $D1   ; 
- D 1 - I - 0x01B319 06:B309: FB        .byte $FB   ; 
- D 1 - I - 0x01B31A 06:B30A: B0        .byte $B0   ; 
- D 1 - I - 0x01B31B 06:B30B: 2F        .byte $2F   ; 
- D 1 - I - 0x01B31C 06:B30C: C0        .byte $C0   ; 
- D 1 - I - 0x01B31D 06:B30D: A0        .byte $A0   ; 
- D 1 - I - 0x01B31E 06:B30E: 2F        .byte $2F   ; 
- D 1 - I - 0x01B31F 06:B30F: C0        .byte $C0   ; 
- D 1 - I - 0x01B320 06:B310: FE        .byte $FE   ; 
- D 1 - I - 0x01B321 06:B311: 07        .byte $07   ; 
- D 1 - I - 0x01B322 06:B312: D1        .byte $D1   ; 
- D 1 - I - 0x01B323 06:B313: A3        .byte $A3   ; 
- D 1 - I - 0x01B324 06:B314: A4        .byte $A4   ; 
- D 1 - I - 0x01B325 06:B315: A3        .byte $A3   ; 
- D 1 - I - 0x01B326 06:B316: A4        .byte $A4   ; 
- D 1 - I - 0x01B327 06:B317: D9        .byte $D9   ; 
- D 1 - I - 0x01B328 06:B318: A0        .byte $A0   ; 
- D 1 - I - 0x01B329 06:B319: B0        .byte $B0   ; 
- D 1 - I - 0x01B32A 06:B31A: FD        .byte $FD   ; 
- D 1 - I - 0x01B32B 06:B31B: 30 B3     .word sub_FD_B330
- D 1 - I - 0x01B32D 06:B31D: FD        .byte $FD   ; 
- D 1 - I - 0x01B32E 06:B31E: 30 B3     .word sub_FD_B330
- D 1 - I - 0x01B330 06:B320: FD        .byte $FD   ; 
- D 1 - I - 0x01B331 06:B321: 30 B3     .word sub_FD_B330
- D 1 - I - 0x01B333 06:B323: FD        .byte $FD   ; 
- D 1 - I - 0x01B334 06:B324: 30 B3     .word sub_FD_B330
- D 1 - I - 0x01B336 06:B326: FD        .byte $FD   ; 
- D 1 - I - 0x01B337 06:B327: 30 B3     .word sub_FD_B330
- D 1 - I - 0x01B339 06:B329: FD        .byte $FD   ; 
- D 1 - I - 0x01B33A 06:B32A: 30 B3     .word sub_FD_B330
- D 1 - I - 0x01B33C 06:B32C: FE        .byte $FE   ; 
- D 1 - I - 0x01B33D 06:B32D: FF        .byte $FF   ; 
- D 1 - I - 0x01B33E 06:B32E: 08 B3     .word loc_FF_B308



sub_FD_B330:
- D 1 - I - 0x01B340 06:B330: D1        .byte $D1   ; 
- D 1 - I - 0x01B341 06:B331: FB        .byte $FB   ; 
- D 1 - I - 0x01B342 06:B332: B0        .byte $B0   ; 
- D 1 - I - 0x01B343 06:B333: 2F        .byte $2F   ; 
- D 1 - I - 0x01B344 06:B334: C0        .byte $C0   ; 
- D 1 - I - 0x01B345 06:B335: A0        .byte $A0   ; 
- D 1 - I - 0x01B346 06:B336: 2F        .byte $2F   ; 
- D 1 - I - 0x01B347 06:B337: C0        .byte $C0   ; 
- D 1 - I - 0x01B348 06:B338: B0        .byte $B0   ; 
- D 1 - I - 0x01B349 06:B339: 27        .byte $27   ; 
- D 1 - I - 0x01B34A 06:B33A: B0        .byte $B0   ; 
- D 1 - I - 0x01B34B 06:B33B: C7        .byte $C7   ; 
- D 1 - I - 0x01B34C 06:B33C: A0        .byte $A0   ; 
- D 1 - I - 0x01B34D 06:B33D: 2F        .byte $2F   ; 
- D 1 - I - 0x01B34E 06:B33E: C0        .byte $C0   ; 
- D 1 - I - 0x01B34F 06:B33F: FE        .byte $FE   ; 
- D 1 - I - 0x01B350 06:B340: 03        .byte $03   ; 
- D 1 - I - 0x01B351 06:B341: B0        .byte $B0   ; 
- D 1 - I - 0x01B352 06:B342: 2F        .byte $2F   ; 
- D 1 - I - 0x01B353 06:B343: C0        .byte $C0   ; 
- D 1 - I - 0x01B354 06:B344: A0        .byte $A0   ; 
- D 1 - I - 0x01B355 06:B345: 2F        .byte $2F   ; 
- D 1 - I - 0x01B356 06:B346: C0        .byte $C0   ; 
- D 1 - I - 0x01B357 06:B347: B0        .byte $B0   ; 
- D 1 - I - 0x01B358 06:B348: 27        .byte $27   ; 
- D 1 - I - 0x01B359 06:B349: B0        .byte $B0   ; 
- D 1 - I - 0x01B35A 06:B34A: C7        .byte $C7   ; 
- D 1 - I - 0x01B35B 06:B34B: A0        .byte $A0   ; 
- D 1 - I - 0x01B35C 06:B34C: 27        .byte $27   ; 
- D 1 - I - 0x01B35D 06:B34D: A0        .byte $A0   ; 
- D 1 - I - 0x01B35E 06:B34E: C7        .byte $C7   ; 
- D 1 - I - 0x01B35F 06:B34F: FD        .byte $FD   ; 



_off014_2F_B350_00:
loc_FF_B350:
- D 1 - I - 0x01B360 06:B350: E9        .byte $E9   ; 
- D 1 - I - 0x01B361 06:B351: 31        .byte $31   ; 
- D 1 - I - 0x01B362 06:B352: D7        .byte $D7   ; 
- D 1 - I - 0x01B363 06:B353: 70        .byte $70   ; 
- D 1 - I - 0x01B364 06:B354: 1F        .byte $1F   ; 
- D 1 - I - 0x01B365 06:B355: 25        .byte $25   ; 
- D 1 - I - 0x01B366 06:B356: FB        .byte $FB   ; 
- D 1 - I - 0x01B367 06:B357: E5        .byte $E5   ; 
- D 1 - I - 0x01B368 06:B358: 70        .byte $70   ; 
- D 1 - I - 0x01B369 06:B359: E4        .byte $E4   ; 
- D 1 - I - 0x01B36A 06:B35A: 00        .byte $00   ; 
- D 1 - I - 0x01B36B 06:B35B: C0        .byte $C0   ; 
- D 1 - I - 0x01B36C 06:B35C: F4        .byte $F4   ; 
- D 1 - I - 0x01B36D 06:B35D: E5        .byte $E5   ; 
- D 1 - I - 0x01B36E 06:B35E: 70        .byte $70   ; 
- D 1 - I - 0x01B36F 06:B35F: E4        .byte $E4   ; 
- D 1 - I - 0x01B370 06:B360: 00        .byte $00   ; 
- D 1 - I - 0x01B371 06:B361: C0        .byte $C0   ; 
- D 1 - I - 0x01B372 06:B362: F6        .byte $F6   ; 
- D 1 - I - 0x01B373 06:B363: E5        .byte $E5   ; 
- D 1 - I - 0x01B374 06:B364: 70        .byte $70   ; 
- D 1 - I - 0x01B375 06:B365: E4        .byte $E4   ; 
- D 1 - I - 0x01B376 06:B366: 00        .byte $00   ; 
- D 1 - I - 0x01B377 06:B367: F0        .byte $F0   ; 
- D 1 - I - 0x01B378 06:B368: 00        .byte $00   ; 
- D 1 - I - 0x01B379 06:B369: E5        .byte $E5   ; 
- D 1 - I - 0x01B37A 06:B36A: 70        .byte $70   ; 
- D 1 - I - 0x01B37B 06:B36B: C0        .byte $C0   ; 
- D 1 - I - 0x01B37C 06:B36C: F4        .byte $F4   ; 
- D 1 - I - 0x01B37D 06:B36D: E4        .byte $E4   ; 
- D 1 - I - 0x01B37E 06:B36E: 00        .byte $00   ; 
- D 1 - I - 0x01B37F 06:B36F: E5        .byte $E5   ; 
- D 1 - I - 0x01B380 06:B370: 70        .byte $70   ; 
- D 1 - I - 0x01B381 06:B371: C0        .byte $C0   ; 
- D 1 - I - 0x01B382 06:B372: F0        .byte $F0   ; 
- D 1 - I - 0x01B383 06:B373: E4        .byte $E4   ; 
- D 1 - I - 0x01B384 06:B374: 00        .byte $00   ; 
- D 1 - I - 0x01B385 06:B375: 20        .byte $20   ; 
- D 1 - I - 0x01B386 06:B376: 20        .byte $20   ; 
- D 1 - I - 0x01B387 06:B377: 00        .byte $00   ; 
- D 1 - I - 0x01B388 06:B378: F3        .byte $F3   ; 
- D 1 - I - 0x01B389 06:B379: 00        .byte $00   ; 
- D 1 - I - 0x01B38A 06:B37A: 20        .byte $20   ; 
- D 1 - I - 0x01B38B 06:B37B: 20        .byte $20   ; 
- D 1 - I - 0x01B38C 06:B37C: 00        .byte $00   ; 
- D 1 - I - 0x01B38D 06:B37D: F4        .byte $F4   ; 
- D 1 - I - 0x01B38E 06:B37E: 00        .byte $00   ; 
- D 1 - I - 0x01B38F 06:B37F: 20        .byte $20   ; 
- D 1 - I - 0x01B390 06:B380: 20        .byte $20   ; 
- D 1 - I - 0x01B391 06:B381: 00        .byte $00   ; 
- D 1 - I - 0x01B392 06:B382: F5        .byte $F5   ; 
- D 1 - I - 0x01B393 06:B383: 00        .byte $00   ; 
- D 1 - I - 0x01B394 06:B384: 20        .byte $20   ; 
- D 1 - I - 0x01B395 06:B385: 20        .byte $20   ; 
- D 1 - I - 0x01B396 06:B386: 00        .byte $00   ; 
- D 1 - I - 0x01B397 06:B387: F6        .byte $F6   ; 
- D 1 - I - 0x01B398 06:B388: 00        .byte $00   ; 
- D 1 - I - 0x01B399 06:B389: 20        .byte $20   ; 
- D 1 - I - 0x01B39A 06:B38A: F0        .byte $F0   ; 
- D 1 - I - 0x01B39B 06:B38B: FE        .byte $FE   ; 
- D 1 - I - 0x01B39C 06:B38C: 02        .byte $02   ; 
- D 1 - I - 0x01B39D 06:B38D: E9        .byte $E9   ; 
- D 1 - I - 0x01B39E 06:B38E: 31        .byte $31   ; 
- D 1 - I - 0x01B39F 06:B38F: D7        .byte $D7   ; 
- D 1 - I - 0x01B3A0 06:B390: 70        .byte $70   ; 
- D 1 - I - 0x01B3A1 06:B391: 1F        .byte $1F   ; 
- D 1 - I - 0x01B3A2 06:B392: 25        .byte $25   ; 
- D 1 - I - 0x01B3A3 06:B393: E5        .byte $E5   ; 
- D 1 - I - 0x01B3A4 06:B394: A0        .byte $A0   ; 
- D 1 - I - 0x01B3A5 06:B395: E4        .byte $E4   ; 
- D 1 - I - 0x01B3A6 06:B396: 30        .byte $30   ; 
- D 1 - I - 0x01B3A7 06:B397: C0        .byte $C0   ; 
- D 1 - I - 0x01B3A8 06:B398: F4        .byte $F4   ; 
- D 1 - I - 0x01B3A9 06:B399: E5        .byte $E5   ; 
- D 1 - I - 0x01B3AA 06:B39A: A0        .byte $A0   ; 
- D 1 - I - 0x01B3AB 06:B39B: E4        .byte $E4   ; 
- D 1 - I - 0x01B3AC 06:B39C: 30        .byte $30   ; 
- D 1 - I - 0x01B3AD 06:B39D: C0        .byte $C0   ; 
- D 1 - I - 0x01B3AE 06:B39E: F6        .byte $F6   ; 
- D 1 - I - 0x01B3AF 06:B39F: E5        .byte $E5   ; 
- D 1 - I - 0x01B3B0 06:B3A0: A0        .byte $A0   ; 
- D 1 - I - 0x01B3B1 06:B3A1: E4        .byte $E4   ; 
- D 1 - I - 0x01B3B2 06:B3A2: 30        .byte $30   ; 
- D 1 - I - 0x01B3B3 06:B3A3: F0        .byte $F0   ; 
- D 1 - I - 0x01B3B4 06:B3A4: 30        .byte $30   ; 
- D 1 - I - 0x01B3B5 06:B3A5: E5        .byte $E5   ; 
- D 1 - I - 0x01B3B6 06:B3A6: A0        .byte $A0   ; 
- D 1 - I - 0x01B3B7 06:B3A7: C0        .byte $C0   ; 
- D 1 - I - 0x01B3B8 06:B3A8: F4        .byte $F4   ; 
- D 1 - I - 0x01B3B9 06:B3A9: E4        .byte $E4   ; 
- D 1 - I - 0x01B3BA 06:B3AA: 30        .byte $30   ; 
- D 1 - I - 0x01B3BB 06:B3AB: E5        .byte $E5   ; 
- D 1 - I - 0x01B3BC 06:B3AC: A0        .byte $A0   ; 
- D 1 - I - 0x01B3BD 06:B3AD: C0        .byte $C0   ; 
- D 1 - I - 0x01B3BE 06:B3AE: F0        .byte $F0   ; 
- D 1 - I - 0x01B3BF 06:B3AF: E4        .byte $E4   ; 
- D 1 - I - 0x01B3C0 06:B3B0: 30        .byte $30   ; 
- D 1 - I - 0x01B3C1 06:B3B1: 50        .byte $50   ; 
- D 1 - I - 0x01B3C2 06:B3B2: 50        .byte $50   ; 
- D 1 - I - 0x01B3C3 06:B3B3: 30        .byte $30   ; 
- D 1 - I - 0x01B3C4 06:B3B4: F3        .byte $F3   ; 
- D 1 - I - 0x01B3C5 06:B3B5: 30        .byte $30   ; 
- D 1 - I - 0x01B3C6 06:B3B6: 50        .byte $50   ; 
- D 1 - I - 0x01B3C7 06:B3B7: 50        .byte $50   ; 
- D 1 - I - 0x01B3C8 06:B3B8: 30        .byte $30   ; 
- D 1 - I - 0x01B3C9 06:B3B9: F4        .byte $F4   ; 
- D 1 - I - 0x01B3CA 06:B3BA: 30        .byte $30   ; 
- D 1 - I - 0x01B3CB 06:B3BB: 50        .byte $50   ; 
- D 1 - I - 0x01B3CC 06:B3BC: 50        .byte $50   ; 
- D 1 - I - 0x01B3CD 06:B3BD: 30        .byte $30   ; 
- D 1 - I - 0x01B3CE 06:B3BE: F5        .byte $F5   ; 
- D 1 - I - 0x01B3CF 06:B3BF: 30        .byte $30   ; 
- D 1 - I - 0x01B3D0 06:B3C0: 50        .byte $50   ; 
- D 1 - I - 0x01B3D1 06:B3C1: 50        .byte $50   ; 
- D 1 - I - 0x01B3D2 06:B3C2: 30        .byte $30   ; 
- D 1 - I - 0x01B3D3 06:B3C3: F6        .byte $F6   ; 
- D 1 - I - 0x01B3D4 06:B3C4: 30        .byte $30   ; 
- D 1 - I - 0x01B3D5 06:B3C5: 50        .byte $50   ; 
- D 1 - I - 0x01B3D6 06:B3C6: F0        .byte $F0   ; 
- D 1 - I - 0x01B3D7 06:B3C7: E5        .byte $E5   ; 
- D 1 - I - 0x01B3D8 06:B3C8: A0        .byte $A0   ; 
- D 1 - I - 0x01B3D9 06:B3C9: E4        .byte $E4   ; 
- D 1 - I - 0x01B3DA 06:B3CA: 30        .byte $30   ; 
- D 1 - I - 0x01B3DB 06:B3CB: C0        .byte $C0   ; 
- D 1 - I - 0x01B3DC 06:B3CC: F4        .byte $F4   ; 
- D 1 - I - 0x01B3DD 06:B3CD: E5        .byte $E5   ; 
- D 1 - I - 0x01B3DE 06:B3CE: A0        .byte $A0   ; 
- D 1 - I - 0x01B3DF 06:B3CF: E4        .byte $E4   ; 
- D 1 - I - 0x01B3E0 06:B3D0: 30        .byte $30   ; 
- D 1 - I - 0x01B3E1 06:B3D1: C0        .byte $C0   ; 
- D 1 - I - 0x01B3E2 06:B3D2: F6        .byte $F6   ; 
- D 1 - I - 0x01B3E3 06:B3D3: E5        .byte $E5   ; 
- D 1 - I - 0x01B3E4 06:B3D4: A0        .byte $A0   ; 
- D 1 - I - 0x01B3E5 06:B3D5: E4        .byte $E4   ; 
- D 1 - I - 0x01B3E6 06:B3D6: 30        .byte $30   ; 
- D 1 - I - 0x01B3E7 06:B3D7: F0        .byte $F0   ; 
- D 1 - I - 0x01B3E8 06:B3D8: 30        .byte $30   ; 
- D 1 - I - 0x01B3E9 06:B3D9: E5        .byte $E5   ; 
- D 1 - I - 0x01B3EA 06:B3DA: A0        .byte $A0   ; 
- D 1 - I - 0x01B3EB 06:B3DB: C0        .byte $C0   ; 
- D 1 - I - 0x01B3EC 06:B3DC: F4        .byte $F4   ; 
- D 1 - I - 0x01B3ED 06:B3DD: E4        .byte $E4   ; 
- D 1 - I - 0x01B3EE 06:B3DE: 30        .byte $30   ; 
- D 1 - I - 0x01B3EF 06:B3DF: E5        .byte $E5   ; 
- D 1 - I - 0x01B3F0 06:B3E0: A0        .byte $A0   ; 
- D 1 - I - 0x01B3F1 06:B3E1: C0        .byte $C0   ; 
- D 1 - I - 0x01B3F2 06:B3E2: F0        .byte $F0   ; 
- D 1 - I - 0x01B3F3 06:B3E3: E4        .byte $E4   ; 
- D 1 - I - 0x01B3F4 06:B3E4: 30        .byte $30   ; 
- D 1 - I - 0x01B3F5 06:B3E5: 50        .byte $50   ; 
- D 1 - I - 0x01B3F6 06:B3E6: E7        .byte $E7   ; 
- D 1 - I - 0x01B3F7 06:B3E7: 23        .byte $23   ; 
- D 1 - I - 0x01B3F8 06:B3E8: E9        .byte $E9   ; 
- D 1 - I - 0x01B3F9 06:B3E9: B1        .byte $B1   ; 
- D 1 - I - 0x01B3FA 06:B3EA: E9        .byte $E9   ; 
- D 1 - I - 0x01B3FB 06:B3EB: 30        .byte $30   ; 
- D 1 - I - 0x01B3FC 06:B3EC: E4        .byte $E4   ; 
- D 1 - I - 0x01B3FD 06:B3ED: 67        .byte $67   ; 
- D 1 - I - 0x01B3FE 06:B3EE: 57        .byte $57   ; 
- D 1 - I - 0x01B3FF 06:B3EF: E9        .byte $E9   ; 
- D 1 - I - 0x01B400 06:B3F0: 31        .byte $31   ; 
- D 1 - I - 0x01B401 06:B3F1: D7        .byte $D7   ; 
- D 1 - I - 0x01B402 06:B3F2: 76        .byte $76   ; 
- D 1 - I - 0x01B403 06:B3F3: 83        .byte $83   ; 
- D 1 - I - 0x01B404 06:B3F4: 24        .byte $24   ; 
- D 1 - I - 0x01B405 06:B3F5: FB        .byte $FB   ; 
- D 1 - I - 0x01B406 06:B3F6: E4        .byte $E4   ; 
- D 1 - I - 0x01B407 06:B3F7: A2        .byte $A2   ; 
- D 1 - I - 0x01B408 06:B3F8: A0        .byte $A0   ; 
- D 1 - I - 0x01B409 06:B3F9: C0        .byte $C0   ; 
- D 1 - I - 0x01B40A 06:B3FA: F3        .byte $F3   ; 
- D 1 - I - 0x01B40B 06:B3FB: A0        .byte $A0   ; 
- D 1 - I - 0x01B40C 06:B3FC: F0        .byte $F0   ; 
- D 1 - I - 0x01B40D 06:B3FD: E3        .byte $E3   ; 
- D 1 - I - 0x01B40E 06:B3FE: 21        .byte $21   ; 
- D 1 - I - 0x01B40F 06:B3FF: E4        .byte $E4   ; 
- D 1 - I - 0x01B410 06:B400: A3        .byte $A3   ; 
- D 1 - I - 0x01B411 06:B401: E1        .byte $E1   ; 
- D 1 - I - 0x01B412 06:B402: 00        .byte $00   ; 
- D 1 - I - 0x01B413 06:B403: 00        .byte $00   ; 
- D 1 - I - 0x01B414 06:B404: E3        .byte $E3   ; 
- D 1 - I - 0x01B415 06:B405: 00        .byte $00   ; 
- D 1 - I - 0x01B416 06:B406: E1        .byte $E1   ; 
- D 1 - I - 0x01B417 06:B407: F4        .byte $F4   ; 
- D 1 - I - 0x01B418 06:B408: 00        .byte $00   ; 
- D 1 - I - 0x01B419 06:B409: F0        .byte $F0   ; 
- D 1 - I - 0x01B41A 06:B40A: E4        .byte $E4   ; 
- D 1 - I - 0x01B41B 06:B40B: A2        .byte $A2   ; 
- D 1 - I - 0x01B41C 06:B40C: A0        .byte $A0   ; 
- D 1 - I - 0x01B41D 06:B40D: C0        .byte $C0   ; 
- D 1 - I - 0x01B41E 06:B40E: F3        .byte $F3   ; 
- D 1 - I - 0x01B41F 06:B40F: A0        .byte $A0   ; 
- D 1 - I - 0x01B420 06:B410: F0        .byte $F0   ; 
- D 1 - I - 0x01B421 06:B411: E3        .byte $E3   ; 
- D 1 - I - 0x01B422 06:B412: 21        .byte $21   ; 
- D 1 - I - 0x01B423 06:B413: E4        .byte $E4   ; 
- D 1 - I - 0x01B424 06:B414: A3        .byte $A3   ; 
- D 1 - I - 0x01B425 06:B415: E3        .byte $E3   ; 
- D 1 - I - 0x01B426 06:B416: 03        .byte $03   ; 
- D 1 - I - 0x01B427 06:B417: FE        .byte $FE   ; 
- D 1 - I - 0x01B428 06:B418: 02        .byte $02   ; 
- D 1 - I - 0x01B429 06:B419: E9        .byte $E9   ; 
- D 1 - I - 0x01B42A 06:B41A: 31        .byte $31   ; 
- D 1 - I - 0x01B42B 06:B41B: D7        .byte $D7   ; 
- D 1 - I - 0x01B42C 06:B41C: 76        .byte $76   ; 
- D 1 - I - 0x01B42D 06:B41D: 83        .byte $83   ; 
- D 1 - I - 0x01B42E 06:B41E: 24        .byte $24   ; 
- D 1 - I - 0x01B42F 06:B41F: FB        .byte $FB   ; 
- D 1 - I - 0x01B430 06:B420: E3        .byte $E3   ; 
- D 1 - I - 0x01B431 06:B421: 12        .byte $12   ; 
- D 1 - I - 0x01B432 06:B422: 10        .byte $10   ; 
- D 1 - I - 0x01B433 06:B423: C0        .byte $C0   ; 
- D 1 - I - 0x01B434 06:B424: F3        .byte $F3   ; 
- D 1 - I - 0x01B435 06:B425: 10        .byte $10   ; 
- D 1 - I - 0x01B436 06:B426: F0        .byte $F0   ; 
- D 1 - I - 0x01B437 06:B427: 51        .byte $51   ; 
- D 1 - I - 0x01B438 06:B428: 13        .byte $13   ; 
- D 1 - I - 0x01B439 06:B429: E1        .byte $E1   ; 
- D 1 - I - 0x01B43A 06:B42A: 30        .byte $30   ; 
- D 1 - I - 0x01B43B 06:B42B: 30        .byte $30   ; 
- D 1 - I - 0x01B43C 06:B42C: E3        .byte $E3   ; 
- D 1 - I - 0x01B43D 06:B42D: 30        .byte $30   ; 
- D 1 - I - 0x01B43E 06:B42E: E1        .byte $E1   ; 
- D 1 - I - 0x01B43F 06:B42F: F4        .byte $F4   ; 
- D 1 - I - 0x01B440 06:B430: 30        .byte $30   ; 
- D 1 - I - 0x01B441 06:B431: F0        .byte $F0   ; 
- D 1 - I - 0x01B442 06:B432: E3        .byte $E3   ; 
- D 1 - I - 0x01B443 06:B433: 12        .byte $12   ; 
- D 1 - I - 0x01B444 06:B434: 10        .byte $10   ; 
- D 1 - I - 0x01B445 06:B435: C0        .byte $C0   ; 
- D 1 - I - 0x01B446 06:B436: F3        .byte $F3   ; 
- D 1 - I - 0x01B447 06:B437: 10        .byte $10   ; 
- D 1 - I - 0x01B448 06:B438: F0        .byte $F0   ; 
- D 1 - I - 0x01B449 06:B439: 51        .byte $51   ; 
- D 1 - I - 0x01B44A 06:B43A: 13        .byte $13   ; 
- D 1 - I - 0x01B44B 06:B43B: 33        .byte $33   ; 
- D 1 - I - 0x01B44C 06:B43C: FE        .byte $FE   ; 
- D 1 - I - 0x01B44D 06:B43D: 02        .byte $02   ; 
- D 1 - I - 0x01B44E 06:B43E: E9        .byte $E9   ; 
- D 1 - I - 0x01B44F 06:B43F: B1        .byte $B1   ; 
- D 1 - I - 0x01B450 06:B440: D7        .byte $D7   ; 
- D 1 - I - 0x01B451 06:B441: 37        .byte $37   ; 
- D 1 - I - 0x01B452 06:B442: 84        .byte $84   ; 
- D 1 - I - 0x01B453 06:B443: 24        .byte $24   ; 
- D 1 - I - 0x01B454 06:B444: EB        .byte $EB   ; 
- D 1 - I - 0x01B455 06:B445: 50        .byte $50   ; 
- D 1 - I - 0x01B456 06:B446: 25        .byte $25   ; 
- D 1 - I - 0x01B457 06:B447: E4        .byte $E4   ; 
- D 1 - I - 0x01B458 06:B448: 73        .byte $73   ; 
- D 1 - I - 0x01B459 06:B449: E3        .byte $E3   ; 
- D 1 - I - 0x01B45A 06:B44A: 73        .byte $73   ; 
- D 1 - I - 0x01B45B 06:B44B: E4        .byte $E4   ; 
- D 1 - I - 0x01B45C 06:B44C: 83        .byte $83   ; 
- D 1 - I - 0x01B45D 06:B44D: E3        .byte $E3   ; 
- D 1 - I - 0x01B45E 06:B44E: 83        .byte $83   ; 
- D 1 - I - 0x01B45F 06:B44F: E4        .byte $E4   ; 
- D 1 - I - 0x01B460 06:B450: 73        .byte $73   ; 
- D 1 - I - 0x01B461 06:B451: E3        .byte $E3   ; 
- D 1 - I - 0x01B462 06:B452: 73        .byte $73   ; 
- D 1 - I - 0x01B463 06:B453: E4        .byte $E4   ; 
- D 1 - I - 0x01B464 06:B454: 83        .byte $83   ; 
- D 1 - I - 0x01B465 06:B455: E3        .byte $E3   ; 
- D 1 - I - 0x01B466 06:B456: 81        .byte $81   ; 
- D 1 - I - 0x01B467 06:B457: E9        .byte $E9   ; 
- D 1 - I - 0x01B468 06:B458: 31        .byte $31   ; 
- D 1 - I - 0x01B469 06:B459: E9        .byte $E9   ; 
- D 1 - I - 0x01B46A 06:B45A: 70        .byte $70   ; 
- D 1 - I - 0x01B46B 06:B45B: E6        .byte $E6   ; 
- D 1 - I - 0x01B46C 06:B45C: 02        .byte $02   ; 
- D 1 - I - 0x01B46D 06:B45D: E4        .byte $E4   ; 
- D 1 - I - 0x01B46E 06:B45E: 00        .byte $00   ; 
- D 1 - I - 0x01B46F 06:B45F: 10        .byte $10   ; 
- D 1 - I - 0x01B470 06:B460: 20        .byte $20   ; 
- D 1 - I - 0x01B471 06:B461: 30        .byte $30   ; 
- D 1 - I - 0x01B472 06:B462: 40        .byte $40   ; 
- D 1 - I - 0x01B473 06:B463: 50        .byte $50   ; 
- D 1 - I - 0x01B474 06:B464: 60        .byte $60   ; 
- D 1 - I - 0x01B475 06:B465: E6        .byte $E6   ; 
- D 1 - I - 0x01B476 06:B466: 07        .byte $07   ; 
- D 1 - I - 0x01B477 06:B467: E3        .byte $E3   ; 
- D 1 - I - 0x01B478 06:B468: 73        .byte $73   ; 
- D 1 - I - 0x01B479 06:B469: E2        .byte $E2   ; 
- D 1 - I - 0x01B47A 06:B46A: 70        .byte $70   ; 
- D 1 - I - 0x01B47B 06:B46B: F1        .byte $F1   ; 
- D 1 - I - 0x01B47C 06:B46C: 70        .byte $70   ; 
- D 1 - I - 0x01B47D 06:B46D: F2        .byte $F2   ; 
- D 1 - I - 0x01B47E 06:B46E: 70        .byte $70   ; 
- D 1 - I - 0x01B47F 06:B46F: F3        .byte $F3   ; 
- D 1 - I - 0x01B480 06:B470: 70        .byte $70   ; 
- D 1 - I - 0x01B481 06:B471: F0        .byte $F0   ; 
- D 1 - I - 0x01B482 06:B472: E3        .byte $E3   ; 
- D 1 - I - 0x01B483 06:B473: 83        .byte $83   ; 
- D 1 - I - 0x01B484 06:B474: E2        .byte $E2   ; 
- D 1 - I - 0x01B485 06:B475: 80        .byte $80   ; 
- D 1 - I - 0x01B486 06:B476: F1        .byte $F1   ; 
- D 1 - I - 0x01B487 06:B477: 80        .byte $80   ; 
- D 1 - I - 0x01B488 06:B478: F2        .byte $F2   ; 
- D 1 - I - 0x01B489 06:B479: 80        .byte $80   ; 
- D 1 - I - 0x01B48A 06:B47A: F3        .byte $F3   ; 
- D 1 - I - 0x01B48B 06:B47B: 80        .byte $80   ; 
- D 1 - I - 0x01B48C 06:B47C: F0        .byte $F0   ; 
- D 1 - I - 0x01B48D 06:B47D: E3        .byte $E3   ; 
- D 1 - I - 0x01B48E 06:B47E: 73        .byte $73   ; 
- D 1 - I - 0x01B48F 06:B47F: E2        .byte $E2   ; 
- D 1 - I - 0x01B490 06:B480: 70        .byte $70   ; 
- D 1 - I - 0x01B491 06:B481: F1        .byte $F1   ; 
- D 1 - I - 0x01B492 06:B482: 70        .byte $70   ; 
- D 1 - I - 0x01B493 06:B483: F2        .byte $F2   ; 
- D 1 - I - 0x01B494 06:B484: 70        .byte $70   ; 
- D 1 - I - 0x01B495 06:B485: F3        .byte $F3   ; 
- D 1 - I - 0x01B496 06:B486: 70        .byte $70   ; 
- D 1 - I - 0x01B497 06:B487: F0        .byte $F0   ; 
- D 1 - I - 0x01B498 06:B488: E3        .byte $E3   ; 
- D 1 - I - 0x01B499 06:B489: 81        .byte $81   ; 
- D 1 - I - 0x01B49A 06:B48A: 81        .byte $81   ; 
- D 1 - I - 0x01B49B 06:B48B: E2        .byte $E2   ; 
- D 1 - I - 0x01B49C 06:B48C: 81        .byte $81   ; 
- D 1 - I - 0x01B49D 06:B48D: 81        .byte $81   ; 
- D 1 - I - 0x01B49E 06:B48E: FE        .byte $FE   ; 
- D 1 - I - 0x01B49F 06:B48F: FF        .byte $FF   ; 
- D 1 - I - 0x01B4A0 06:B490: 50 B3     .word loc_FF_B350



_off014_2F_B492_01:
loc_FF_B492:
- D 1 - I - 0x01B4A2 06:B492: E9        .byte $E9   ; 
- D 1 - I - 0x01B4A3 06:B493: 31        .byte $31   ; 
- D 1 - I - 0x01B4A4 06:B494: D7        .byte $D7   ; 
- D 1 - I - 0x01B4A5 06:B495: 70        .byte $70   ; 
- D 1 - I - 0x01B4A6 06:B496: 1F        .byte $1F   ; 
- D 1 - I - 0x01B4A7 06:B497: 25        .byte $25   ; 
- D 1 - I - 0x01B4A8 06:B498: FB        .byte $FB   ; 
- D 1 - I - 0x01B4A9 06:B499: E2        .byte $E2   ; 
- D 1 - I - 0x01B4AA 06:B49A: 70        .byte $70   ; 
- D 1 - I - 0x01B4AB 06:B49B: 00        .byte $00   ; 
- D 1 - I - 0x01B4AC 06:B49C: C0        .byte $C0   ; 
- D 1 - I - 0x01B4AD 06:B49D: F4        .byte $F4   ; 
- D 1 - I - 0x01B4AE 06:B49E: 70        .byte $70   ; 
- D 1 - I - 0x01B4AF 06:B49F: 00        .byte $00   ; 
- D 1 - I - 0x01B4B0 06:B4A0: C0        .byte $C0   ; 
- D 1 - I - 0x01B4B1 06:B4A1: F6        .byte $F6   ; 
- D 1 - I - 0x01B4B2 06:B4A2: 70        .byte $70   ; 
- D 1 - I - 0x01B4B3 06:B4A3: 00        .byte $00   ; 
- D 1 - I - 0x01B4B4 06:B4A4: F0        .byte $F0   ; 
- D 1 - I - 0x01B4B5 06:B4A5: 00        .byte $00   ; 
- D 1 - I - 0x01B4B6 06:B4A6: E3        .byte $E3   ; 
- D 1 - I - 0x01B4B7 06:B4A7: 70        .byte $70   ; 
- D 1 - I - 0x01B4B8 06:B4A8: C0        .byte $C0   ; 
- D 1 - I - 0x01B4B9 06:B4A9: F4        .byte $F4   ; 
- D 1 - I - 0x01B4BA 06:B4AA: E2        .byte $E2   ; 
- D 1 - I - 0x01B4BB 06:B4AB: 00        .byte $00   ; 
- D 1 - I - 0x01B4BC 06:B4AC: E3        .byte $E3   ; 
- D 1 - I - 0x01B4BD 06:B4AD: 70        .byte $70   ; 
- D 1 - I - 0x01B4BE 06:B4AE: C0        .byte $C0   ; 
- D 1 - I - 0x01B4BF 06:B4AF: F0        .byte $F0   ; 
- D 1 - I - 0x01B4C0 06:B4B0: 50        .byte $50   ; 
- D 1 - I - 0x01B4C1 06:B4B1: 70        .byte $70   ; 
- D 1 - I - 0x01B4C2 06:B4B2: 70        .byte $70   ; 
- D 1 - I - 0x01B4C3 06:B4B3: 00        .byte $00   ; 
- D 1 - I - 0x01B4C4 06:B4B4: F3        .byte $F3   ; 
- D 1 - I - 0x01B4C5 06:B4B5: 50        .byte $50   ; 
- D 1 - I - 0x01B4C6 06:B4B6: 70        .byte $70   ; 
- D 1 - I - 0x01B4C7 06:B4B7: 70        .byte $70   ; 
- D 1 - I - 0x01B4C8 06:B4B8: 00        .byte $00   ; 
- D 1 - I - 0x01B4C9 06:B4B9: F4        .byte $F4   ; 
- D 1 - I - 0x01B4CA 06:B4BA: 50        .byte $50   ; 
- D 1 - I - 0x01B4CB 06:B4BB: 70        .byte $70   ; 
- D 1 - I - 0x01B4CC 06:B4BC: 70        .byte $70   ; 
- D 1 - I - 0x01B4CD 06:B4BD: 00        .byte $00   ; 
- D 1 - I - 0x01B4CE 06:B4BE: F5        .byte $F5   ; 
- D 1 - I - 0x01B4CF 06:B4BF: 50        .byte $50   ; 
- D 1 - I - 0x01B4D0 06:B4C0: 70        .byte $70   ; 
- D 1 - I - 0x01B4D1 06:B4C1: 70        .byte $70   ; 
- D 1 - I - 0x01B4D2 06:B4C2: 00        .byte $00   ; 
- D 1 - I - 0x01B4D3 06:B4C3: F6        .byte $F6   ; 
- D 1 - I - 0x01B4D4 06:B4C4: 50        .byte $50   ; 
- D 1 - I - 0x01B4D5 06:B4C5: 70        .byte $70   ; 
- D 1 - I - 0x01B4D6 06:B4C6: F0        .byte $F0   ; 
- D 1 - I - 0x01B4D7 06:B4C7: FE        .byte $FE   ; 
- D 1 - I - 0x01B4D8 06:B4C8: 02        .byte $02   ; 
- D 1 - I - 0x01B4D9 06:B4C9: E9        .byte $E9   ; 
- D 1 - I - 0x01B4DA 06:B4CA: 31        .byte $31   ; 
- D 1 - I - 0x01B4DB 06:B4CB: D7        .byte $D7   ; 
- D 1 - I - 0x01B4DC 06:B4CC: 70        .byte $70   ; 
- D 1 - I - 0x01B4DD 06:B4CD: 1F        .byte $1F   ; 
- D 1 - I - 0x01B4DE 06:B4CE: 25        .byte $25   ; 
- D 1 - I - 0x01B4DF 06:B4CF: FB        .byte $FB   ; 
- D 1 - I - 0x01B4E0 06:B4D0: E2        .byte $E2   ; 
- D 1 - I - 0x01B4E1 06:B4D1: A0        .byte $A0   ; 
- D 1 - I - 0x01B4E2 06:B4D2: 30        .byte $30   ; 
- D 1 - I - 0x01B4E3 06:B4D3: C0        .byte $C0   ; 
- D 1 - I - 0x01B4E4 06:B4D4: F4        .byte $F4   ; 
- D 1 - I - 0x01B4E5 06:B4D5: A0        .byte $A0   ; 
- D 1 - I - 0x01B4E6 06:B4D6: 30        .byte $30   ; 
- D 1 - I - 0x01B4E7 06:B4D7: C0        .byte $C0   ; 
- D 1 - I - 0x01B4E8 06:B4D8: F6        .byte $F6   ; 
- D 1 - I - 0x01B4E9 06:B4D9: A0        .byte $A0   ; 
- D 1 - I - 0x01B4EA 06:B4DA: 30        .byte $30   ; 
- D 1 - I - 0x01B4EB 06:B4DB: F0        .byte $F0   ; 
- D 1 - I - 0x01B4EC 06:B4DC: 30        .byte $30   ; 
- D 1 - I - 0x01B4ED 06:B4DD: E3        .byte $E3   ; 
- D 1 - I - 0x01B4EE 06:B4DE: A0        .byte $A0   ; 
- D 1 - I - 0x01B4EF 06:B4DF: C0        .byte $C0   ; 
- D 1 - I - 0x01B4F0 06:B4E0: F4        .byte $F4   ; 
- D 1 - I - 0x01B4F1 06:B4E1: E2        .byte $E2   ; 
- D 1 - I - 0x01B4F2 06:B4E2: 30        .byte $30   ; 
- D 1 - I - 0x01B4F3 06:B4E3: E3        .byte $E3   ; 
- D 1 - I - 0x01B4F4 06:B4E4: A0        .byte $A0   ; 
- D 1 - I - 0x01B4F5 06:B4E5: C0        .byte $C0   ; 
- D 1 - I - 0x01B4F6 06:B4E6: F0        .byte $F0   ; 
- D 1 - I - 0x01B4F7 06:B4E7: 80        .byte $80   ; 
- D 1 - I - 0x01B4F8 06:B4E8: A0        .byte $A0   ; 
- D 1 - I - 0x01B4F9 06:B4E9: A0        .byte $A0   ; 
- D 1 - I - 0x01B4FA 06:B4EA: 30        .byte $30   ; 
- D 1 - I - 0x01B4FB 06:B4EB: F3        .byte $F3   ; 
- D 1 - I - 0x01B4FC 06:B4EC: 80        .byte $80   ; 
- D 1 - I - 0x01B4FD 06:B4ED: A0        .byte $A0   ; 
- D 1 - I - 0x01B4FE 06:B4EE: A0        .byte $A0   ; 
- D 1 - I - 0x01B4FF 06:B4EF: 30        .byte $30   ; 
- D 1 - I - 0x01B500 06:B4F0: F4        .byte $F4   ; 
- D 1 - I - 0x01B501 06:B4F1: 80        .byte $80   ; 
- D 1 - I - 0x01B502 06:B4F2: A0        .byte $A0   ; 
- D 1 - I - 0x01B503 06:B4F3: A0        .byte $A0   ; 
- D 1 - I - 0x01B504 06:B4F4: 30        .byte $30   ; 
- D 1 - I - 0x01B505 06:B4F5: F5        .byte $F5   ; 
- D 1 - I - 0x01B506 06:B4F6: 80        .byte $80   ; 
- D 1 - I - 0x01B507 06:B4F7: A0        .byte $A0   ; 
- D 1 - I - 0x01B508 06:B4F8: A0        .byte $A0   ; 
- D 1 - I - 0x01B509 06:B4F9: 30        .byte $30   ; 
- D 1 - I - 0x01B50A 06:B4FA: F6        .byte $F6   ; 
- D 1 - I - 0x01B50B 06:B4FB: 80        .byte $80   ; 
- D 1 - I - 0x01B50C 06:B4FC: A0        .byte $A0   ; 
- D 1 - I - 0x01B50D 06:B4FD: F0        .byte $F0   ; 
- D 1 - I - 0x01B50E 06:B4FE: FE        .byte $FE   ; 
- D 1 - I - 0x01B50F 06:B4FF: 02        .byte $02   ; 
- D 1 - I - 0x01B510 06:B500: E9        .byte $E9   ; 
- D 1 - I - 0x01B511 06:B501: 31        .byte $31   ; 
- D 1 - I - 0x01B512 06:B502: D7        .byte $D7   ; 
- D 1 - I - 0x01B513 06:B503: 76        .byte $76   ; 
- D 1 - I - 0x01B514 06:B504: 83        .byte $83   ; 
- D 1 - I - 0x01B515 06:B505: 24        .byte $24   ; 
- D 1 - I - 0x01B516 06:B506: EB        .byte $EB   ; 
- D 1 - I - 0x01B517 06:B507: 50        .byte $50   ; 
- D 1 - I - 0x01B518 06:B508: 21        .byte $21   ; 
- D 1 - I - 0x01B519 06:B509: FB        .byte $FB   ; 
- D 1 - I - 0x01B51A 06:B50A: E3        .byte $E3   ; 
- D 1 - I - 0x01B51B 06:B50B: 32        .byte $32   ; 
- D 1 - I - 0x01B51C 06:B50C: 30        .byte $30   ; 
- D 1 - I - 0x01B51D 06:B50D: C0        .byte $C0   ; 
- D 1 - I - 0x01B51E 06:B50E: F3        .byte $F3   ; 
- D 1 - I - 0x01B51F 06:B50F: 30        .byte $30   ; 
- D 1 - I - 0x01B520 06:B510: F0        .byte $F0   ; 
- D 1 - I - 0x01B521 06:B511: 71        .byte $71   ; 
- D 1 - I - 0x01B522 06:B512: 33        .byte $33   ; 
- D 1 - I - 0x01B523 06:B513: 53        .byte $53   ; 
- D 1 - I - 0x01B524 06:B514: FE        .byte $FE   ; 
- D 1 - I - 0x01B525 06:B515: 04        .byte $04   ; 
- D 1 - I - 0x01B526 06:B516: E9        .byte $E9   ; 
- D 1 - I - 0x01B527 06:B517: 31        .byte $31   ; 
- D 1 - I - 0x01B528 06:B518: D7        .byte $D7   ; 
- D 1 - I - 0x01B529 06:B519: 76        .byte $76   ; 
- D 1 - I - 0x01B52A 06:B51A: 83        .byte $83   ; 
- D 1 - I - 0x01B52B 06:B51B: 24        .byte $24   ; 
- D 1 - I - 0x01B52C 06:B51C: EB        .byte $EB   ; 
- D 1 - I - 0x01B52D 06:B51D: 50        .byte $50   ; 
- D 1 - I - 0x01B52E 06:B51E: 21        .byte $21   ; 
- D 1 - I - 0x01B52F 06:B51F: FB        .byte $FB   ; 
- D 1 - I - 0x01B530 06:B520: E3        .byte $E3   ; 
- D 1 - I - 0x01B531 06:B521: 62        .byte $62   ; 
- D 1 - I - 0x01B532 06:B522: 60        .byte $60   ; 
- D 1 - I - 0x01B533 06:B523: C0        .byte $C0   ; 
- D 1 - I - 0x01B534 06:B524: F3        .byte $F3   ; 
- D 1 - I - 0x01B535 06:B525: 60        .byte $60   ; 
- D 1 - I - 0x01B536 06:B526: F0        .byte $F0   ; 
- D 1 - I - 0x01B537 06:B527: A1        .byte $A1   ; 
- D 1 - I - 0x01B538 06:B528: 63        .byte $63   ; 
- D 1 - I - 0x01B539 06:B529: 83        .byte $83   ; 
- D 1 - I - 0x01B53A 06:B52A: FE        .byte $FE   ; 
- D 1 - I - 0x01B53B 06:B52B: 04        .byte $04   ; 
- D 1 - I - 0x01B53C 06:B52C: E9        .byte $E9   ; 
- D 1 - I - 0x01B53D 06:B52D: 71        .byte $71   ; 
- D 1 - I - 0x01B53E 06:B52E: D7        .byte $D7   ; 
- D 1 - I - 0x01B53F 06:B52F: 37        .byte $37   ; 
- D 1 - I - 0x01B540 06:B530: 84        .byte $84   ; 
- D 1 - I - 0x01B541 06:B531: 24        .byte $24   ; 
- D 1 - I - 0x01B542 06:B532: EB        .byte $EB   ; 
- D 1 - I - 0x01B543 06:B533: 50        .byte $50   ; 
- D 1 - I - 0x01B544 06:B534: 33        .byte $33   ; 
- D 1 - I - 0x01B545 06:B535: FB        .byte $FB   ; 
- D 1 - I - 0x01B546 06:B536: E2        .byte $E2   ; 
- D 1 - I - 0x01B547 06:B537: 03        .byte $03   ; 
- D 1 - I - 0x01B548 06:B538: E1        .byte $E1   ; 
- D 1 - I - 0x01B549 06:B539: 03        .byte $03   ; 
- D 1 - I - 0x01B54A 06:B53A: E2        .byte $E2   ; 
- D 1 - I - 0x01B54B 06:B53B: 13        .byte $13   ; 
- D 1 - I - 0x01B54C 06:B53C: E1        .byte $E1   ; 
- D 1 - I - 0x01B54D 06:B53D: 13        .byte $13   ; 
- D 1 - I - 0x01B54E 06:B53E: FE        .byte $FE   ; 
- D 1 - I - 0x01B54F 06:B53F: 04        .byte $04   ; 
- D 1 - I - 0x01B550 06:B540: EB        .byte $EB   ; 
- D 1 - I - 0x01B551 06:B541: 00        .byte $00   ; 
- D 1 - I - 0x01B552 06:B542: FE        .byte $FE   ; 
- D 1 - I - 0x01B553 06:B543: FF        .byte $FF   ; 
- D 1 - I - 0x01B554 06:B544: 92 B4     .word loc_FF_B492



_off014_2F_B546_02:
loc_FF_B546:
- D 1 - I - 0x01B556 06:B546: D7        .byte $D7   ; 
- D 1 - I - 0x01B557 06:B547: 00        .byte $00   ; 
- D 1 - I - 0x01B558 06:B548: E4        .byte $E4   ; 
- D 1 - I - 0x01B559 06:B549: 0F        .byte $0F   ; 
- D 1 - I - 0x01B55A 06:B54A: 0F        .byte $0F   ; 
- D 1 - I - 0x01B55B 06:B54B: 0F        .byte $0F   ; 
- D 1 - I - 0x01B55C 06:B54C: 0F        .byte $0F   ; 
- D 1 - I - 0x01B55D 06:B54D: D7        .byte $D7   ; 
- D 1 - I - 0x01B55E 06:B54E: 00        .byte $00   ; 
- D 1 - I - 0x01B55F 06:B54F: E4        .byte $E4   ; 
- D 1 - I - 0x01B560 06:B550: 3D        .byte $3D   ; 
- D 1 - I - 0x01B561 06:B551: D1        .byte $D1   ; 
- D 1 - I - 0x01B562 06:B552: 00        .byte $00   ; 
- D 1 - I - 0x01B563 06:B553: 30        .byte $30   ; 
- D 1 - I - 0x01B564 06:B554: 30        .byte $30   ; 
- D 1 - I - 0x01B565 06:B555: 30        .byte $30   ; 
- D 1 - I - 0x01B566 06:B556: 40        .byte $40   ; 
- D 1 - I - 0x01B567 06:B557: 50        .byte $50   ; 
- D 1 - I - 0x01B568 06:B558: 60        .byte $60   ; 
- D 1 - I - 0x01B569 06:B559: 70        .byte $70   ; 
- D 1 - I - 0x01B56A 06:B55A: 80        .byte $80   ; 
- D 1 - I - 0x01B56B 06:B55B: 90        .byte $90   ; 
- D 1 - I - 0x01B56C 06:B55C: A0        .byte $A0   ; 
- D 1 - I - 0x01B56D 06:B55D: B0        .byte $B0   ; 
- D 1 - I - 0x01B56E 06:B55E: E3        .byte $E3   ; 
- D 1 - I - 0x01B56F 06:B55F: 00        .byte $00   ; 
- D 1 - I - 0x01B570 06:B560: 10        .byte $10   ; 
- D 1 - I - 0x01B571 06:B561: 20        .byte $20   ; 
- D 1 - I - 0x01B572 06:B562: D7        .byte $D7   ; 
- D 1 - I - 0x01B573 06:B563: 00        .byte $00   ; 
- D 1 - I - 0x01B574 06:B564: E3        .byte $E3   ; 
- D 1 - I - 0x01B575 06:B565: 3F        .byte $3F   ; 
- D 1 - I - 0x01B576 06:B566: E4        .byte $E4   ; 
- D 1 - I - 0x01B577 06:B567: 3D        .byte $3D   ; 
- D 1 - I - 0x01B578 06:B568: D1        .byte $D1   ; 
- D 1 - I - 0x01B579 06:B569: 00        .byte $00   ; 
- D 1 - I - 0x01B57A 06:B56A: E4        .byte $E4   ; 
- D 1 - I - 0x01B57B 06:B56B: 30        .byte $30   ; 
- D 1 - I - 0x01B57C 06:B56C: 30        .byte $30   ; 
- D 1 - I - 0x01B57D 06:B56D: 30        .byte $30   ; 
- D 1 - I - 0x01B57E 06:B56E: 40        .byte $40   ; 
- D 1 - I - 0x01B57F 06:B56F: 50        .byte $50   ; 
- D 1 - I - 0x01B580 06:B570: 60        .byte $60   ; 
- D 1 - I - 0x01B581 06:B571: 70        .byte $70   ; 
- D 1 - I - 0x01B582 06:B572: 80        .byte $80   ; 
- D 1 - I - 0x01B583 06:B573: 90        .byte $90   ; 
- D 1 - I - 0x01B584 06:B574: A0        .byte $A0   ; 
- D 1 - I - 0x01B585 06:B575: B0        .byte $B0   ; 
- D 1 - I - 0x01B586 06:B576: E3        .byte $E3   ; 
- D 1 - I - 0x01B587 06:B577: 00        .byte $00   ; 
- D 1 - I - 0x01B588 06:B578: 10        .byte $10   ; 
- D 1 - I - 0x01B589 06:B579: 20        .byte $20   ; 
- D 1 - I - 0x01B58A 06:B57A: D7        .byte $D7   ; 
- D 1 - I - 0x01B58B 06:B57B: 00        .byte $00   ; 
- D 1 - I - 0x01B58C 06:B57C: 37        .byte $37   ; 
- D 1 - I - 0x01B58D 06:B57D: 17        .byte $17   ; 
- D 1 - I - 0x01B58E 06:B57E: D7        .byte $D7   ; 
- D 1 - I - 0x01B58F 06:B57F: 10        .byte $10   ; 
- D 1 - I - 0x01B590 06:B580: FB        .byte $FB   ; 
- D 1 - I - 0x01B591 06:B581: E4        .byte $E4   ; 
- D 1 - I - 0x01B592 06:B582: 02        .byte $02   ; 
- D 1 - I - 0x01B593 06:B583: 00        .byte $00   ; 
- D 1 - I - 0x01B594 06:B584: 60        .byte $60   ; 
- D 1 - I - 0x01B595 06:B585: 00        .byte $00   ; 
- D 1 - I - 0x01B596 06:B586: 75        .byte $75   ; 
- D 1 - I - 0x01B597 06:B587: E4        .byte $E4   ; 
- D 1 - I - 0x01B598 06:B588: 71        .byte $71   ; 
- D 1 - I - 0x01B599 06:B589: B1        .byte $B1   ; 
- D 1 - I - 0x01B59A 06:B58A: E3        .byte $E3   ; 
- D 1 - I - 0x01B59B 06:B58B: 02        .byte $02   ; 
- D 1 - I - 0x01B59C 06:B58C: 00        .byte $00   ; 
- D 1 - I - 0x01B59D 06:B58D: 60        .byte $60   ; 
- D 1 - I - 0x01B59E 06:B58E: 00        .byte $00   ; 
- D 1 - I - 0x01B59F 06:B58F: 70        .byte $70   ; 
- D 1 - I - 0x01B5A0 06:B590: E4        .byte $E4   ; 
- D 1 - I - 0x01B5A1 06:B591: 82        .byte $82   ; 
- D 1 - I - 0x01B5A2 06:B592: A2        .byte $A2   ; 
- D 1 - I - 0x01B5A3 06:B593: B2        .byte $B2   ; 
- D 1 - I - 0x01B5A4 06:B594: FE        .byte $FE   ; 
- D 1 - I - 0x01B5A5 06:B595: 02        .byte $02   ; 
- D 1 - I - 0x01B5A6 06:B596: D7        .byte $D7   ; 
- D 1 - I - 0x01B5A7 06:B597: 10        .byte $10   ; 
- D 1 - I - 0x01B5A8 06:B598: FB        .byte $FB   ; 
- D 1 - I - 0x01B5A9 06:B599: E4        .byte $E4   ; 
- D 1 - I - 0x01B5AA 06:B59A: 32        .byte $32   ; 
- D 1 - I - 0x01B5AB 06:B59B: 30        .byte $30   ; 
- D 1 - I - 0x01B5AC 06:B59C: 90        .byte $90   ; 
- D 1 - I - 0x01B5AD 06:B59D: 30        .byte $30   ; 
- D 1 - I - 0x01B5AE 06:B59E: A5        .byte $A5   ; 
- D 1 - I - 0x01B5AF 06:B59F: E4        .byte $E4   ; 
- D 1 - I - 0x01B5B0 06:B5A0: A0        .byte $A0   ; 
- D 1 - I - 0x01B5B1 06:B5A1: 21        .byte $21   ; 
- D 1 - I - 0x01B5B2 06:B5A2: C0        .byte $C0   ; 
- D 1 - I - 0x01B5B3 06:B5A3: E4        .byte $E4   ; 
- D 1 - I - 0x01B5B4 06:B5A4: 32        .byte $32   ; 
- D 1 - I - 0x01B5B5 06:B5A5: 30        .byte $30   ; 
- D 1 - I - 0x01B5B6 06:B5A6: 90        .byte $90   ; 
- D 1 - I - 0x01B5B7 06:B5A7: E3        .byte $E3   ; 
- D 1 - I - 0x01B5B8 06:B5A8: 30        .byte $30   ; 
- D 1 - I - 0x01B5B9 06:B5A9: A0        .byte $A0   ; 
- D 1 - I - 0x01B5BA 06:B5AA: 02        .byte $02   ; 
- D 1 - I - 0x01B5BB 06:B5AB: 12        .byte $12   ; 
- D 1 - I - 0x01B5BC 06:B5AC: 22        .byte $22   ; 
- D 1 - I - 0x01B5BD 06:B5AD: FE        .byte $FE   ; 
- D 1 - I - 0x01B5BE 06:B5AE: 02        .byte $02   ; 
- D 1 - I - 0x01B5BF 06:B5AF: D7        .byte $D7   ; 
- D 1 - I - 0x01B5C0 06:B5B0: 14        .byte $14   ; 
- D 1 - I - 0x01B5C1 06:B5B1: E4        .byte $E4   ; 
- D 1 - I - 0x01B5C2 06:B5B2: 03        .byte $03   ; 
- D 1 - I - 0x01B5C3 06:B5B3: E3        .byte $E3   ; 
- D 1 - I - 0x01B5C4 06:B5B4: 03        .byte $03   ; 
- D 1 - I - 0x01B5C5 06:B5B5: E4        .byte $E4   ; 
- D 1 - I - 0x01B5C6 06:B5B6: 11        .byte $11   ; 
- D 1 - I - 0x01B5C7 06:B5B7: 11        .byte $11   ; 
- D 1 - I - 0x01B5C8 06:B5B8: E3        .byte $E3   ; 
- D 1 - I - 0x01B5C9 06:B5B9: 13        .byte $13   ; 
- D 1 - I - 0x01B5CA 06:B5BA: E4        .byte $E4   ; 
- D 1 - I - 0x01B5CB 06:B5BB: 03        .byte $03   ; 
- D 1 - I - 0x01B5CC 06:B5BC: E3        .byte $E3   ; 
- D 1 - I - 0x01B5CD 06:B5BD: 03        .byte $03   ; 
- D 1 - I - 0x01B5CE 06:B5BE: E4        .byte $E4   ; 
- D 1 - I - 0x01B5CF 06:B5BF: 11        .byte $11   ; 
- D 1 - I - 0x01B5D0 06:B5C0: 11        .byte $11   ; 
- D 1 - I - 0x01B5D1 06:B5C1: E3        .byte $E3   ; 
- D 1 - I - 0x01B5D2 06:B5C2: 11        .byte $11   ; 
- D 1 - I - 0x01B5D3 06:B5C3: 11        .byte $11   ; 
- D 1 - I - 0x01B5D4 06:B5C4: E3        .byte $E3   ; 
- D 1 - I - 0x01B5D5 06:B5C5: 01        .byte $01   ; 
- D 1 - I - 0x01B5D6 06:B5C6: 01        .byte $01   ; 
- D 1 - I - 0x01B5D7 06:B5C7: E2        .byte $E2   ; 
- D 1 - I - 0x01B5D8 06:B5C8: 01        .byte $01   ; 
- D 1 - I - 0x01B5D9 06:B5C9: 01        .byte $01   ; 
- D 1 - I - 0x01B5DA 06:B5CA: E3        .byte $E3   ; 
- D 1 - I - 0x01B5DB 06:B5CB: 11        .byte $11   ; 
- D 1 - I - 0x01B5DC 06:B5CC: 11        .byte $11   ; 
- D 1 - I - 0x01B5DD 06:B5CD: E2        .byte $E2   ; 
- D 1 - I - 0x01B5DE 06:B5CE: 11        .byte $11   ; 
- D 1 - I - 0x01B5DF 06:B5CF: 11        .byte $11   ; 
- D 1 - I - 0x01B5E0 06:B5D0: E3        .byte $E3   ; 
- D 1 - I - 0x01B5E1 06:B5D1: 01        .byte $01   ; 
- D 1 - I - 0x01B5E2 06:B5D2: 01        .byte $01   ; 
- D 1 - I - 0x01B5E3 06:B5D3: E2        .byte $E2   ; 
- D 1 - I - 0x01B5E4 06:B5D4: 01        .byte $01   ; 
- D 1 - I - 0x01B5E5 06:B5D5: 01        .byte $01   ; 
- D 1 - I - 0x01B5E6 06:B5D6: E3        .byte $E3   ; 
- D 1 - I - 0x01B5E7 06:B5D7: 11        .byte $11   ; 
- D 1 - I - 0x01B5E8 06:B5D8: 11        .byte $11   ; 
- D 1 - I - 0x01B5E9 06:B5D9: FB        .byte $FB   ; 
- D 1 - I - 0x01B5EA 06:B5DA: E3        .byte $E3   ; 
- D 1 - I - 0x01B5EB 06:B5DB: 10        .byte $10   ; 
- D 1 - I - 0x01B5EC 06:B5DC: E2        .byte $E2   ; 
- D 1 - I - 0x01B5ED 06:B5DD: 10        .byte $10   ; 
- D 1 - I - 0x01B5EE 06:B5DE: FE        .byte $FE   ; 
- D 1 - I - 0x01B5EF 06:B5DF: 02        .byte $02   ; 
- D 1 - I - 0x01B5F0 06:B5E0: FE        .byte $FE   ; 
- D 1 - I - 0x01B5F1 06:B5E1: FF        .byte $FF   ; 
- D 1 - I - 0x01B5F2 06:B5E2: 46 B5     .word loc_FF_B546



_off014_2F_B5E4_03:
loc_FF_B5E4:
- D 1 - I - 0x01B5F4 06:B5E4: FB        .byte $FB   ; 
- D 1 - I - 0x01B5F5 06:B5E5: FD        .byte $FD   ; 
- D 1 - I - 0x01B5F6 06:B5E6: 49 B6     .word sub_FD_B649
- D 1 - I - 0x01B5F8 06:B5E8: CD        .byte $CD   ; 
- D 1 - I - 0x01B5F9 06:B5E9: FE        .byte $FE   ; 
- D 1 - I - 0x01B5FA 06:B5EA: 03        .byte $03   ; 
- D 1 - I - 0x01B5FB 06:B5EB: FD        .byte $FD   ; 
- D 1 - I - 0x01B5FC 06:B5EC: 49 B6     .word sub_FD_B649
- D 1 - I - 0x01B5FE 06:B5EE: A0        .byte $A0   ; 
- D 1 - I - 0x01B5FF 06:B5EF: 25        .byte $25   ; 
- D 1 - I - 0x01B600 06:B5F0: A0        .byte $A0   ; 
- D 1 - I - 0x01B601 06:B5F1: 25        .byte $25   ; 
- D 1 - I - 0x01B602 06:B5F2: D1        .byte $D1   ; 
- D 1 - I - 0x01B603 06:B5F3: FB        .byte $FB   ; 
- D 1 - I - 0x01B604 06:B5F4: FD        .byte $FD   ; 
- D 1 - I - 0x01B605 06:B5F5: 6D B6     .word sub_FD_B66D
- D 1 - I - 0x01B607 06:B5F7: E2        .byte $E2   ; 
- D 1 - I - 0x01B608 06:B5F8: 00        .byte $00   ; 
- D 1 - I - 0x01B609 06:B5F9: D1        .byte $D1   ; 
- D 1 - I - 0x01B60A 06:B5FA: 25        .byte $25   ; 
- D 1 - I - 0x01B60B 06:B5FB: E2        .byte $E2   ; 
- D 1 - I - 0x01B60C 06:B5FC: 00        .byte $00   ; 
- D 1 - I - 0x01B60D 06:B5FD: FD        .byte $FD   ; 
- D 1 - I - 0x01B60E 06:B5FE: 7E B6     .word sub_FD_B67E
- D 1 - I - 0x01B610 06:B600: FE        .byte $FE   ; 
- D 1 - I - 0x01B611 06:B601: 02        .byte $02   ; 
- D 1 - I - 0x01B612 06:B602: D1        .byte $D1   ; 
- D 1 - I - 0x01B613 06:B603: FB        .byte $FB   ; 
- D 1 - I - 0x01B614 06:B604: FD        .byte $FD   ; 
- D 1 - I - 0x01B615 06:B605: 6D B6     .word sub_FD_B66D
- D 1 - I - 0x01B617 06:B607: E3        .byte $E3   ; 
- D 1 - I - 0x01B618 06:B608: 30        .byte $30   ; 
- D 1 - I - 0x01B619 06:B609: D1        .byte $D1   ; 
- D 1 - I - 0x01B61A 06:B60A: 25        .byte $25   ; 
- D 1 - I - 0x01B61B 06:B60B: E3        .byte $E3   ; 
- D 1 - I - 0x01B61C 06:B60C: 30        .byte $30   ; 
- D 1 - I - 0x01B61D 06:B60D: FD        .byte $FD   ; 
- D 1 - I - 0x01B61E 06:B60E: 7E B6     .word sub_FD_B67E
- D 1 - I - 0x01B620 06:B610: FE        .byte $FE   ; 
- D 1 - I - 0x01B621 06:B611: 02        .byte $02   ; 
- D 1 - I - 0x01B622 06:B612: D1        .byte $D1   ; 
- D 1 - I - 0x01B623 06:B613: FB        .byte $FB   ; 
- D 1 - I - 0x01B624 06:B614: A0        .byte $A0   ; 
- D 1 - I - 0x01B625 06:B615: 2C        .byte $2C   ; 
- D 1 - I - 0x01B626 06:B616: B0        .byte $B0   ; 
- D 1 - I - 0x01B627 06:B617: 2C        .byte $2C   ; 
- D 1 - I - 0x01B628 06:B618: A0        .byte $A0   ; 
- D 1 - I - 0x01B629 06:B619: 2C        .byte $2C   ; 
- D 1 - I - 0x01B62A 06:B61A: B0        .byte $B0   ; 
- D 1 - I - 0x01B62B 06:B61B: 2C        .byte $2C   ; 
- D 1 - I - 0x01B62C 06:B61C: A0        .byte $A0   ; 
- D 1 - I - 0x01B62D 06:B61D: 25        .byte $25   ; 
- D 1 - I - 0x01B62E 06:B61E: B0        .byte $B0   ; 
- D 1 - I - 0x01B62F 06:B61F: 25        .byte $25   ; 
- D 1 - I - 0x01B630 06:B620: A0        .byte $A0   ; 
- D 1 - I - 0x01B631 06:B621: 2C        .byte $2C   ; 
- D 1 - I - 0x01B632 06:B622: A0        .byte $A0   ; 
- D 1 - I - 0x01B633 06:B623: 25        .byte $25   ; 
- D 1 - I - 0x01B634 06:B624: A0        .byte $A0   ; 
- D 1 - I - 0x01B635 06:B625: 25        .byte $25   ; 
- D 1 - I - 0x01B636 06:B626: B0        .byte $B0   ; 
- D 1 - I - 0x01B637 06:B627: 2C        .byte $2C   ; 
- D 1 - I - 0x01B638 06:B628: FE        .byte $FE   ; 
- D 1 - I - 0x01B639 06:B629: 03        .byte $03   ; 
- D 1 - I - 0x01B63A 06:B62A: A0        .byte $A0   ; 
- D 1 - I - 0x01B63B 06:B62B: 2C        .byte $2C   ; 
- D 1 - I - 0x01B63C 06:B62C: B0        .byte $B0   ; 
- D 1 - I - 0x01B63D 06:B62D: 2C        .byte $2C   ; 
- D 1 - I - 0x01B63E 06:B62E: A0        .byte $A0   ; 
- D 1 - I - 0x01B63F 06:B62F: 2C        .byte $2C   ; 
- D 1 - I - 0x01B640 06:B630: B0        .byte $B0   ; 
- D 1 - I - 0x01B641 06:B631: 2C        .byte $2C   ; 
- D 1 - I - 0x01B642 06:B632: A0        .byte $A0   ; 
- D 1 - I - 0x01B643 06:B633: 2C        .byte $2C   ; 
- D 1 - I - 0x01B644 06:B634: A0        .byte $A0   ; 
- D 1 - I - 0x01B645 06:B635: 25        .byte $25   ; 
- D 1 - I - 0x01B646 06:B636: A0        .byte $A0   ; 
- D 1 - I - 0x01B647 06:B637: 25        .byte $25   ; 
- D 1 - I - 0x01B648 06:B638: D1        .byte $D1   ; 
- D 1 - I - 0x01B649 06:B639: 90        .byte $90   ; 
- D 1 - I - 0x01B64A 06:B63A: 22        .byte $22   ; 
- D 1 - I - 0x01B64B 06:B63B: 90        .byte $90   ; 
- D 1 - I - 0x01B64C 06:B63C: 23        .byte $23   ; 
- D 1 - I - 0x01B64D 06:B63D: 90        .byte $90   ; 
- D 1 - I - 0x01B64E 06:B63E: 23        .byte $23   ; 
- D 1 - I - 0x01B64F 06:B63F: 80        .byte $80   ; 
- D 1 - I - 0x01B650 06:B640: 22        .byte $22   ; 
- D 1 - I - 0x01B651 06:B641: 70        .byte $70   ; 
- D 1 - I - 0x01B652 06:B642: 23        .byte $23   ; 
- D 1 - I - 0x01B653 06:B643: 60        .byte $60   ; 
- D 1 - I - 0x01B654 06:B644: 23        .byte $23   ; 
- D 1 - I - 0x01B655 06:B645: FE        .byte $FE   ; 
- D 1 - I - 0x01B656 06:B646: FF        .byte $FF   ; 
- D 1 - I - 0x01B657 06:B647: E4 B5     .word loc_FF_B5E4



sub_FD_B649:
- D 1 - I - 0x01B659 06:B649: D1        .byte $D1   ; 
- D 1 - I - 0x01B65A 06:B64A: B0        .byte $B0   ; 
- D 1 - I - 0x01B65B 06:B64B: 2F        .byte $2F   ; 
- D 1 - I - 0x01B65C 06:B64C: C3        .byte $C3   ; 
- D 1 - I - 0x01B65D 06:B64D: B0        .byte $B0   ; 
- D 1 - I - 0x01B65E 06:B64E: 2F        .byte $2F   ; 
- D 1 - I - 0x01B65F 06:B64F: C3        .byte $C3   ; 
- D 1 - I - 0x01B660 06:B650: B0        .byte $B0   ; 
- D 1 - I - 0x01B661 06:B651: 2C        .byte $2C   ; 
- D 1 - I - 0x01B662 06:B652: B0        .byte $B0   ; 
- D 1 - I - 0x01B663 06:B653: 25        .byte $25   ; 
- D 1 - I - 0x01B664 06:B654: C0        .byte $C0   ; 
- D 1 - I - 0x01B665 06:B655: C5        .byte $C5   ; 
- D 1 - I - 0x01B666 06:B656: CD        .byte $CD   ; 
- D 1 - I - 0x01B667 06:B657: D7        .byte $D7   ; 
- D 1 - I - 0x01B668 06:B658: C3        .byte $C3   ; 
- D 1 - I - 0x01B669 06:B659: D1        .byte $D1   ; 
- D 1 - I - 0x01B66A 06:B65A: B0        .byte $B0   ; 
- D 1 - I - 0x01B66B 06:B65B: 2F        .byte $2F   ; 
- D 1 - I - 0x01B66C 06:B65C: C3        .byte $C3   ; 
- D 1 - I - 0x01B66D 06:B65D: B0        .byte $B0   ; 
- D 1 - I - 0x01B66E 06:B65E: 2F        .byte $2F   ; 
- D 1 - I - 0x01B66F 06:B65F: C3        .byte $C3   ; 
- D 1 - I - 0x01B670 06:B660: B0        .byte $B0   ; 
- D 1 - I - 0x01B671 06:B661: 2C        .byte $2C   ; 
- D 1 - I - 0x01B672 06:B662: B0        .byte $B0   ; 
- D 1 - I - 0x01B673 06:B663: 2C        .byte $2C   ; 
- D 1 - I - 0x01B674 06:B664: B0        .byte $B0   ; 
- D 1 - I - 0x01B675 06:B665: 25        .byte $25   ; 
- D 1 - I - 0x01B676 06:B666: B0        .byte $B0   ; 
- D 1 - I - 0x01B677 06:B667: 25        .byte $25   ; 
- D 1 - I - 0x01B678 06:B668: A0        .byte $A0   ; 
- D 1 - I - 0x01B679 06:B669: 25        .byte $25   ; 
- D 1 - I - 0x01B67A 06:B66A: A0        .byte $A0   ; 
- D 1 - I - 0x01B67B 06:B66B: 25        .byte $25   ; 
- D 1 - I - 0x01B67C 06:B66C: FD        .byte $FD   ; 
sub_FD_B66D:
- D 1 - I - 0x01B67D 06:B66D: A0        .byte $A0   ; 
- D 1 - I - 0x01B67E 06:B66E: 2F        .byte $2F   ; 
- D 1 - I - 0x01B67F 06:B66F: C3        .byte $C3   ; 
- D 1 - I - 0x01B680 06:B670: A0        .byte $A0   ; 
- D 1 - I - 0x01B681 06:B671: 2F        .byte $2F   ; 
- D 1 - I - 0x01B682 06:B672: C3        .byte $C3   ; 
- D 1 - I - 0x01B683 06:B673: A0        .byte $A0   ; 
- D 1 - I - 0x01B684 06:B674: 25        .byte $25   ; 
- D 1 - I - 0x01B685 06:B675: A0        .byte $A0   ; 
- D 1 - I - 0x01B686 06:B676: 25        .byte $25   ; 
- D 1 - I - 0x01B687 06:B677: A0        .byte $A0   ; 
- D 1 - I - 0x01B688 06:B678: 2C        .byte $2C   ; 
- D 1 - I - 0x01B689 06:B679: A0        .byte $A0   ; 
- D 1 - I - 0x01B68A 06:B67A: 25        .byte $25   ; 
- D 1 - I - 0x01B68B 06:B67B: A0        .byte $A0   ; 
- D 1 - I - 0x01B68C 06:B67C: 25        .byte $25   ; 
- D 1 - I - 0x01B68D 06:B67D: FD        .byte $FD   ; 
sub_FD_B67E:
- D 1 - I - 0x01B68E 06:B67E: D1        .byte $D1   ; 
- D 1 - I - 0x01B68F 06:B67F: 25        .byte $25   ; 
- D 1 - I - 0x01B690 06:B680: CD        .byte $CD   ; 
- D 1 - I - 0x01B691 06:B681: A0        .byte $A0   ; 
- D 1 - I - 0x01B692 06:B682: 2F        .byte $2F   ; 
- D 1 - I - 0x01B693 06:B683: C3        .byte $C3   ; 
- D 1 - I - 0x01B694 06:B684: A0        .byte $A0   ; 
- D 1 - I - 0x01B695 06:B685: 2F        .byte $2F   ; 
- D 1 - I - 0x01B696 06:B686: C3        .byte $C3   ; 
- D 1 - I - 0x01B697 06:B687: A0        .byte $A0   ; 
- D 1 - I - 0x01B698 06:B688: 25        .byte $25   ; 
- D 1 - I - 0x01B699 06:B689: A0        .byte $A0   ; 
- D 1 - I - 0x01B69A 06:B68A: 25        .byte $25   ; 
- D 1 - I - 0x01B69B 06:B68B: A0        .byte $A0   ; 
- D 1 - I - 0x01B69C 06:B68C: 2C        .byte $2C   ; 
- D 1 - I - 0x01B69D 06:B68D: A0        .byte $A0   ; 
- D 1 - I - 0x01B69E 06:B68E: 25        .byte $25   ; 
- D 1 - I - 0x01B69F 06:B68F: A0        .byte $A0   ; 
- D 1 - I - 0x01B6A0 06:B690: 25        .byte $25   ; 
- D 1 - I - 0x01B6A1 06:B691: D1        .byte $D1   ; 
- D 1 - I - 0x01B6A2 06:B692: A0        .byte $A0   ; 
- D 1 - I - 0x01B6A3 06:B693: 21        .byte $21   ; 
- D 1 - I - 0x01B6A4 06:B694: A0        .byte $A0   ; 
- D 1 - I - 0x01B6A5 06:B695: 22        .byte $22   ; 
- D 1 - I - 0x01B6A6 06:B696: A0        .byte $A0   ; 
- D 1 - I - 0x01B6A7 06:B697: 25        .byte $25   ; 
- D 1 - I - 0x01B6A8 06:B698: A0        .byte $A0   ; 
- D 1 - I - 0x01B6A9 06:B699: 25        .byte $25   ; 
- D 1 - I - 0x01B6AA 06:B69A: A0        .byte $A0   ; 
- D 1 - I - 0x01B6AB 06:B69B: 25        .byte $25   ; 
- D 1 - I - 0x01B6AC 06:B69C: FD        .byte $FD   ; 



_off014_30_B69D_00:
- D 1 - I - 0x01B6AD 06:B69D: EA        .byte $EA   ; 
- D 1 - I - 0x01B6AE 06:B69E: 00        .byte $00   ; 
- D 1 - I - 0x01B6AF 06:B69F: EC        .byte $EC   ; 
- D 1 - I - 0x01B6B0 06:B6A0: 03        .byte $03   ; 
- D 1 - I - 0x01B6B1 06:B6A1: E9        .byte $E9   ; 
- D 1 - I - 0x01B6B2 06:B6A2: 71        .byte $71   ; 
- D 1 - I - 0x01B6B3 06:B6A3: D9        .byte $D9   ; 
- D 1 - I - 0x01B6B4 06:B6A4: 30        .byte $30   ; 
- D 1 - I - 0x01B6B5 06:B6A5: 1D        .byte $1D   ; 
- D 1 - I - 0x01B6B6 06:B6A6: 33        .byte $33   ; 
- D 1 - I - 0x01B6B7 06:B6A7: EB        .byte $EB   ; 
- D 1 - I - 0x01B6B8 06:B6A8: 50        .byte $50   ; 
- D 1 - I - 0x01B6B9 06:B6A9: 31        .byte $31   ; 
- D 1 - I - 0x01B6BA 06:B6AA: E4        .byte $E4   ; 
- D 1 - I - 0x01B6BB 06:B6AB: 57        .byte $57   ; 
- D 1 - I - 0x01B6BC 06:B6AC: 67        .byte $67   ; 
- D 1 - I - 0x01B6BD 06:B6AD: 77        .byte $77   ; 
- D 1 - I - 0x01B6BE 06:B6AE: 87        .byte $87   ; 
- D 1 - I - 0x01B6BF 06:B6AF: 53        .byte $53   ; 
- D 1 - I - 0x01B6C0 06:B6B0: 63        .byte $63   ; 
- D 1 - I - 0x01B6C1 06:B6B1: 73        .byte $73   ; 
- D 1 - I - 0x01B6C2 06:B6B2: 83        .byte $83   ; 
- D 1 - I - 0x01B6C3 06:B6B3: E8        .byte $E8   ; 
- D 1 - I - 0x01B6C4 06:B6B4: 17        .byte $17   ; 
- D 1 - I - 0x01B6C5 06:B6B5: E9        .byte $E9   ; 
- D 1 - I - 0x01B6C6 06:B6B6: 75        .byte $75   ; 
- D 1 - I - 0x01B6C7 06:B6B7: E3        .byte $E3   ; 
- D 1 - I - 0x01B6C8 06:B6B8: 51        .byte $51   ; 
- D 1 - I - 0x01B6C9 06:B6B9: 61        .byte $61   ; 
- D 1 - I - 0x01B6CA 06:B6BA: 71        .byte $71   ; 
- D 1 - I - 0x01B6CB 06:B6BB: 81        .byte $81   ; 
- D 1 - I - 0x01B6CC 06:B6BC: E2        .byte $E2   ; 
- D 1 - I - 0x01B6CD 06:B6BD: 51        .byte $51   ; 
- D 1 - I - 0x01B6CE 06:B6BE: 61        .byte $61   ; 
- D 1 - I - 0x01B6CF 06:B6BF: 71        .byte $71   ; 
- D 1 - I - 0x01B6D0 06:B6C0: 81        .byte $81   ; 
- D 1 - I - 0x01B6D1 06:B6C1: FB        .byte $FB   ; 
- D 1 - I - 0x01B6D2 06:B6C2: E9        .byte $E9   ; 
- D 1 - I - 0x01B6D3 06:B6C3: 31        .byte $31   ; 
- D 1 - I - 0x01B6D4 06:B6C4: EC        .byte $EC   ; 
- D 1 - I - 0x01B6D5 06:B6C5: 02        .byte $02   ; 
- D 1 - I - 0x01B6D6 06:B6C6: D9        .byte $D9   ; 
- D 1 - I - 0x01B6D7 06:B6C7: 78        .byte $78   ; 
- D 1 - I - 0x01B6D8 06:B6C8: 85        .byte $85   ; 
- D 1 - I - 0x01B6D9 06:B6C9: 18        .byte $18   ; 
- D 1 - I - 0x01B6DA 06:B6CA: EB        .byte $EB   ; 
- D 1 - I - 0x01B6DB 06:B6CB: 50        .byte $50   ; 
- D 1 - I - 0x01B6DC 06:B6CC: 32        .byte $32   ; 
- D 1 - I - 0x01B6DD 06:B6CD: E3        .byte $E3   ; 
- D 1 - I - 0x01B6DE 06:B6CE: 61        .byte $61   ; 
- D 1 - I - 0x01B6DF 06:B6CF: E4        .byte $E4   ; 
- D 1 - I - 0x01B6E0 06:B6D0: 00        .byte $00   ; 
- D 1 - I - 0x01B6E1 06:B6D1: E3        .byte $E3   ; 
- D 1 - I - 0x01B6E2 06:B6D2: 51        .byte $51   ; 
- D 1 - I - 0x01B6E3 06:B6D3: EC        .byte $EC   ; 
- D 1 - I - 0x01B6E4 06:B6D4: 01        .byte $01   ; 
- D 1 - I - 0x01B6E5 06:B6D5: E9        .byte $E9   ; 
- D 1 - I - 0x01B6E6 06:B6D6: B1        .byte $B1   ; 
- D 1 - I - 0x01B6E7 06:B6D7: D9        .byte $D9   ; 
- D 1 - I - 0x01B6E8 06:B6D8: 70        .byte $70   ; 
- D 1 - I - 0x01B6E9 06:B6D9: 19        .byte $19   ; 
- D 1 - I - 0x01B6EA 06:B6DA: 18        .byte $18   ; 
- D 1 - I - 0x01B6EB 06:B6DB: F1        .byte $F1   ; 
- D 1 - I - 0x01B6EC 06:B6DC: E5        .byte $E5   ; 
- D 1 - I - 0x01B6ED 06:B6DD: 00        .byte $00   ; 
- D 1 - I - 0x01B6EE 06:B6DE: 00        .byte $00   ; 
- D 1 - I - 0x01B6EF 06:B6DF: 00        .byte $00   ; 
- D 1 - I - 0x01B6F0 06:B6E0: F0        .byte $F0   ; 
- D 1 - I - 0x01B6F1 06:B6E1: E4        .byte $E4   ; 
- D 1 - I - 0x01B6F2 06:B6E2: 00        .byte $00   ; 
- D 1 - I - 0x01B6F3 06:B6E3: 00        .byte $00   ; 
- D 1 - I - 0x01B6F4 06:B6E4: 30        .byte $30   ; 
- D 1 - I - 0x01B6F5 06:B6E5: 00        .byte $00   ; 
- D 1 - I - 0x01B6F6 06:B6E6: 70        .byte $70   ; 
- D 1 - I - 0x01B6F7 06:B6E7: 60        .byte $60   ; 
- D 1 - I - 0x01B6F8 06:B6E8: 50        .byte $50   ; 
- D 1 - I - 0x01B6F9 06:B6E9: 30        .byte $30   ; 
- D 1 - I - 0x01B6FA 06:B6EA: EC        .byte $EC   ; 
- D 1 - I - 0x01B6FB 06:B6EB: 02        .byte $02   ; 
- D 1 - I - 0x01B6FC 06:B6EC: E9        .byte $E9   ; 
- D 1 - I - 0x01B6FD 06:B6ED: 31        .byte $31   ; 
- D 1 - I - 0x01B6FE 06:B6EE: D9        .byte $D9   ; 
- D 1 - I - 0x01B6FF 06:B6EF: 78        .byte $78   ; 
- D 1 - I - 0x01B700 06:B6F0: 85        .byte $85   ; 
- D 1 - I - 0x01B701 06:B6F1: 18        .byte $18   ; 
- D 1 - I - 0x01B702 06:B6F2: E3        .byte $E3   ; 
- D 1 - I - 0x01B703 06:B6F3: 31        .byte $31   ; 
- D 1 - I - 0x01B704 06:B6F4: E4        .byte $E4   ; 
- D 1 - I - 0x01B705 06:B6F5: 00        .byte $00   ; 
- D 1 - I - 0x01B706 06:B6F6: E3        .byte $E3   ; 
- D 1 - I - 0x01B707 06:B6F7: 31        .byte $31   ; 
- D 1 - I - 0x01B708 06:B6F8: EC        .byte $EC   ; 
- D 1 - I - 0x01B709 06:B6F9: 01        .byte $01   ; 
- D 1 - I - 0x01B70A 06:B6FA: E9        .byte $E9   ; 
- D 1 - I - 0x01B70B 06:B6FB: B1        .byte $B1   ; 
- D 1 - I - 0x01B70C 06:B6FC: D9        .byte $D9   ; 
- D 1 - I - 0x01B70D 06:B6FD: 70        .byte $70   ; 
- D 1 - I - 0x01B70E 06:B6FE: 19        .byte $19   ; 
- D 1 - I - 0x01B70F 06:B6FF: 18        .byte $18   ; 
- D 1 - I - 0x01B710 06:B700: F1        .byte $F1   ; 
- D 1 - I - 0x01B711 06:B701: E5        .byte $E5   ; 
- D 1 - I - 0x01B712 06:B702: 00        .byte $00   ; 
- D 1 - I - 0x01B713 06:B703: 00        .byte $00   ; 
- D 1 - I - 0x01B714 06:B704: 00        .byte $00   ; 
- D 1 - I - 0x01B715 06:B705: F0        .byte $F0   ; 
- D 1 - I - 0x01B716 06:B706: E4        .byte $E4   ; 
- D 1 - I - 0x01B717 06:B707: 00        .byte $00   ; 
- D 1 - I - 0x01B718 06:B708: 00        .byte $00   ; 
- D 1 - I - 0x01B719 06:B709: 30        .byte $30   ; 
- D 1 - I - 0x01B71A 06:B70A: 00        .byte $00   ; 
- D 1 - I - 0x01B71B 06:B70B: 70        .byte $70   ; 
- D 1 - I - 0x01B71C 06:B70C: 60        .byte $60   ; 
- D 1 - I - 0x01B71D 06:B70D: 50        .byte $50   ; 
- D 1 - I - 0x01B71E 06:B70E: 30        .byte $30   ; 
- D 1 - I - 0x01B71F 06:B70F: FE        .byte $FE   ; 
- D 1 - I - 0x01B720 06:B710: 02        .byte $02   ; 
- D 1 - I - 0x01B721 06:B711: E9        .byte $E9   ; 
- D 1 - I - 0x01B722 06:B712: 71        .byte $71   ; 
- D 1 - I - 0x01B723 06:B713: D9        .byte $D9   ; 
- D 1 - I - 0x01B724 06:B714: 30        .byte $30   ; 
- D 1 - I - 0x01B725 06:B715: 1B        .byte $1B   ; 
- D 1 - I - 0x01B726 06:B716: 18        .byte $18   ; 
- D 1 - I - 0x01B727 06:B717: EB        .byte $EB   ; 
- D 1 - I - 0x01B728 06:B718: 56        .byte $56   ; 
- D 1 - I - 0x01B729 06:B719: 34        .byte $34   ; 
- D 1 - I - 0x01B72A 06:B71A: E4        .byte $E4   ; 
- D 1 - I - 0x01B72B 06:B71B: C0        .byte $C0   ; 
- D 1 - I - 0x01B72C 06:B71C: E3        .byte $E3   ; 
- D 1 - I - 0x01B72D 06:B71D: 80        .byte $80   ; 
- D 1 - I - 0x01B72E 06:B71E: 81        .byte $81   ; 
- D 1 - I - 0x01B72F 06:B71F: 80        .byte $80   ; 
- D 1 - I - 0x01B730 06:B720: 81        .byte $81   ; 
- D 1 - I - 0x01B731 06:B721: E8        .byte $E8   ; 
- D 1 - I - 0x01B732 06:B722: 34        .byte $34   ; 
- D 1 - I - 0x01B733 06:B723: A4        .byte $A4   ; 
- D 1 - I - 0x01B734 06:B724: A3        .byte $A3   ; 
- D 1 - I - 0x01B735 06:B725: E8        .byte $E8   ; 
- D 1 - I - 0x01B736 06:B726: 18        .byte $18   ; 
- D 1 - I - 0x01B737 06:B727: C0        .byte $C0   ; 
- D 1 - I - 0x01B738 06:B728: A0        .byte $A0   ; 
- D 1 - I - 0x01B739 06:B729: A1        .byte $A1   ; 
- D 1 - I - 0x01B73A 06:B72A: A0        .byte $A0   ; 
- D 1 - I - 0x01B73B 06:B72B: A1        .byte $A1   ; 
- D 1 - I - 0x01B73C 06:B72C: E8        .byte $E8   ; 
- D 1 - I - 0x01B73D 06:B72D: 34        .byte $34   ; 
- D 1 - I - 0x01B73E 06:B72E: E2        .byte $E2   ; 
- D 1 - I - 0x01B73F 06:B72F: 04        .byte $04   ; 
- D 1 - I - 0x01B740 06:B730: E3        .byte $E3   ; 
- D 1 - I - 0x01B741 06:B731: 53        .byte $53   ; 
- D 1 - I - 0x01B742 06:B732: E8        .byte $E8   ; 
- D 1 - I - 0x01B743 06:B733: 18        .byte $18   ; 
- D 1 - I - 0x01B744 06:B734: C0        .byte $C0   ; 
- D 1 - I - 0x01B745 06:B735: E3        .byte $E3   ; 
- D 1 - I - 0x01B746 06:B736: 80        .byte $80   ; 
- D 1 - I - 0x01B747 06:B737: 81        .byte $81   ; 
- D 1 - I - 0x01B748 06:B738: 80        .byte $80   ; 
- D 1 - I - 0x01B749 06:B739: 81        .byte $81   ; 
- D 1 - I - 0x01B74A 06:B73A: E8        .byte $E8   ; 
- D 1 - I - 0x01B74B 06:B73B: 34        .byte $34   ; 
- D 1 - I - 0x01B74C 06:B73C: A4        .byte $A4   ; 
- D 1 - I - 0x01B74D 06:B73D: A3        .byte $A3   ; 
- D 1 - I - 0x01B74E 06:B73E: E8        .byte $E8   ; 
- D 1 - I - 0x01B74F 06:B73F: 18        .byte $18   ; 
- D 1 - I - 0x01B750 06:B740: C0        .byte $C0   ; 
- D 1 - I - 0x01B751 06:B741: A0        .byte $A0   ; 
- D 1 - I - 0x01B752 06:B742: A1        .byte $A1   ; 
- D 1 - I - 0x01B753 06:B743: A0        .byte $A0   ; 
- D 1 - I - 0x01B754 06:B744: A1        .byte $A1   ; 
- D 1 - I - 0x01B755 06:B745: E2        .byte $E2   ; 
- D 1 - I - 0x01B756 06:B746: 00        .byte $00   ; 
- D 1 - I - 0x01B757 06:B747: EC        .byte $EC   ; 
- D 1 - I - 0x01B758 06:B748: 00        .byte $00   ; 
- D 1 - I - 0x01B759 06:B749: E9        .byte $E9   ; 
- D 1 - I - 0x01B75A 06:B74A: B1        .byte $B1   ; 
- D 1 - I - 0x01B75B 06:B74B: D9        .byte $D9   ; 
- D 1 - I - 0x01B75C 06:B74C: 70        .byte $70   ; 
- D 1 - I - 0x01B75D 06:B74D: 1B        .byte $1B   ; 
- D 1 - I - 0x01B75E 06:B74E: 24        .byte $24   ; 
- D 1 - I - 0x01B75F 06:B74F: EB        .byte $EB   ; 
- D 1 - I - 0x01B760 06:B750: 50        .byte $50   ; 
- D 1 - I - 0x01B761 06:B751: 32        .byte $32   ; 
- D 1 - I - 0x01B762 06:B752: E2        .byte $E2   ; 
- D 1 - I - 0x01B763 06:B753: 02        .byte $02   ; 
- D 1 - I - 0x01B764 06:B754: E3        .byte $E3   ; 
- D 1 - I - 0x01B765 06:B755: B2        .byte $B2   ; 
- D 1 - I - 0x01B766 06:B756: A2        .byte $A2   ; 
- D 1 - I - 0x01B767 06:B757: B6        .byte $B6   ; 
- D 1 - I - 0x01B768 06:B758: E2        .byte $E2   ; 
- D 1 - I - 0x01B769 06:B759: 02        .byte $02   ; 
- D 1 - I - 0x01B76A 06:B75A: E3        .byte $E3   ; 
- D 1 - I - 0x01B76B 06:B75B: B2        .byte $B2   ; 
- D 1 - I - 0x01B76C 06:B75C: A2        .byte $A2   ; 
- D 1 - I - 0x01B76D 06:B75D: B6        .byte $B6   ; 
- D 1 - I - 0x01B76E 06:B75E: FD        .byte $FD   ; 
- D 1 - I - 0x01B76F 06:B75F: DD B9     .word sub_FD_B9DD
- - - - - - 0x01B771 06:B761: FF        .byte $FF   ; 



_off014_30_B762_01:
- D 1 - I - 0x01B772 06:B762: EA        .byte $EA   ; 
- D 1 - I - 0x01B773 06:B763: 00        .byte $00   ; 
- D 1 - I - 0x01B774 06:B764: E9        .byte $E9   ; 
- D 1 - I - 0x01B775 06:B765: 71        .byte $71   ; 
- D 1 - I - 0x01B776 06:B766: D9        .byte $D9   ; 
- D 1 - I - 0x01B777 06:B767: 30        .byte $30   ; 
- D 1 - I - 0x01B778 06:B768: 1D        .byte $1D   ; 
- D 1 - I - 0x01B779 06:B769: 33        .byte $33   ; 
- D 1 - I - 0x01B77A 06:B76A: EB        .byte $EB   ; 
- D 1 - I - 0x01B77B 06:B76B: 50        .byte $50   ; 
- D 1 - I - 0x01B77C 06:B76C: 31        .byte $31   ; 
- D 1 - I - 0x01B77D 06:B76D: E4        .byte $E4   ; 
- D 1 - I - 0x01B77E 06:B76E: A7        .byte $A7   ; 
- D 1 - I - 0x01B77F 06:B76F: B7        .byte $B7   ; 
- D 1 - I - 0x01B780 06:B770: E3        .byte $E3   ; 
- D 1 - I - 0x01B781 06:B771: 07        .byte $07   ; 
- D 1 - I - 0x01B782 06:B772: 17        .byte $17   ; 
- D 1 - I - 0x01B783 06:B773: E4        .byte $E4   ; 
- D 1 - I - 0x01B784 06:B774: A3        .byte $A3   ; 
- D 1 - I - 0x01B785 06:B775: B3        .byte $B3   ; 
- D 1 - I - 0x01B786 06:B776: E3        .byte $E3   ; 
- D 1 - I - 0x01B787 06:B777: 03        .byte $03   ; 
- D 1 - I - 0x01B788 06:B778: 13        .byte $13   ; 
- D 1 - I - 0x01B789 06:B779: F1        .byte $F1   ; 
- D 1 - I - 0x01B78A 06:B77A: A1        .byte $A1   ; 
- D 1 - I - 0x01B78B 06:B77B: B1        .byte $B1   ; 
- D 1 - I - 0x01B78C 06:B77C: E2        .byte $E2   ; 
- D 1 - I - 0x01B78D 06:B77D: 01        .byte $01   ; 
- D 1 - I - 0x01B78E 06:B77E: 11        .byte $11   ; 
- D 1 - I - 0x01B78F 06:B77F: A1        .byte $A1   ; 
- D 1 - I - 0x01B790 06:B780: B1        .byte $B1   ; 
- D 1 - I - 0x01B791 06:B781: E1        .byte $E1   ; 
- D 1 - I - 0x01B792 06:B782: 01        .byte $01   ; 
- D 1 - I - 0x01B793 06:B783: 11        .byte $11   ; 
- D 1 - I - 0x01B794 06:B784: F0        .byte $F0   ; 
- D 1 - I - 0x01B795 06:B785: E9        .byte $E9   ; 
- D 1 - I - 0x01B796 06:B786: 71        .byte $71   ; 
- D 1 - I - 0x01B797 06:B787: D9        .byte $D9   ; 
- D 1 - I - 0x01B798 06:B788: 30        .byte $30   ; 
- D 1 - I - 0x01B799 06:B789: 1A        .byte $1A   ; 
- D 1 - I - 0x01B79A 06:B78A: 12        .byte $12   ; 
- D 1 - I - 0x01B79B 06:B78B: EB        .byte $EB   ; 
- D 1 - I - 0x01B79C 06:B78C: 50        .byte $50   ; 
- D 1 - I - 0x01B79D 06:B78D: 33        .byte $33   ; 
- D 1 - I - 0x01B79E 06:B78E: FB        .byte $FB   ; 
- D 1 - I - 0x01B79F 06:B78F: E3        .byte $E3   ; 
- D 1 - I - 0x01B7A0 06:B790: A1        .byte $A1   ; 
- D 1 - I - 0x01B7A1 06:B791: E6        .byte $E6   ; 
- D 1 - I - 0x01B7A2 06:B792: 01        .byte $01   ; 
- D 1 - I - 0x01B7A3 06:B793: C4        .byte $C4   ; 
- D 1 - I - 0x01B7A4 06:B794: F4        .byte $F4   ; 
- D 1 - I - 0x01B7A5 06:B795: A3        .byte $A3   ; 
- D 1 - I - 0x01B7A6 06:B796: E6        .byte $E6   ; 
- D 1 - I - 0x01B7A7 06:B797: 09        .byte $09   ; 
- D 1 - I - 0x01B7A8 06:B798: F0        .byte $F0   ; 
- D 1 - I - 0x01B7A9 06:B799: 9C        .byte $9C   ; 
- D 1 - I - 0x01B7AA 06:B79A: 81        .byte $81   ; 
- D 1 - I - 0x01B7AB 06:B79B: E6        .byte $E6   ; 
- D 1 - I - 0x01B7AC 06:B79C: 01        .byte $01   ; 
- D 1 - I - 0x01B7AD 06:B79D: C4        .byte $C4   ; 
- D 1 - I - 0x01B7AE 06:B79E: F4        .byte $F4   ; 
- D 1 - I - 0x01B7AF 06:B79F: 83        .byte $83   ; 
- D 1 - I - 0x01B7B0 06:B7A0: E6        .byte $E6   ; 
- D 1 - I - 0x01B7B1 06:B7A1: 09        .byte $09   ; 
- D 1 - I - 0x01B7B2 06:B7A2: F0        .byte $F0   ; 
- D 1 - I - 0x01B7B3 06:B7A3: 7C        .byte $7C   ; 
- D 1 - I - 0x01B7B4 06:B7A4: FE        .byte $FE   ; 
- D 1 - I - 0x01B7B5 06:B7A5: 02        .byte $02   ; 
- D 1 - I - 0x01B7B6 06:B7A6: EC        .byte $EC   ; 
- D 1 - I - 0x01B7B7 06:B7A7: 00        .byte $00   ; 
- D 1 - I - 0x01B7B8 06:B7A8: E9        .byte $E9   ; 
- D 1 - I - 0x01B7B9 06:B7A9: 71        .byte $71   ; 
- D 1 - I - 0x01B7BA 06:B7AA: D9        .byte $D9   ; 
- D 1 - I - 0x01B7BB 06:B7AB: 30        .byte $30   ; 
- D 1 - I - 0x01B7BC 06:B7AC: 1B        .byte $1B   ; 
- D 1 - I - 0x01B7BD 06:B7AD: 18        .byte $18   ; 
- D 1 - I - 0x01B7BE 06:B7AE: EB        .byte $EB   ; 
- D 1 - I - 0x01B7BF 06:B7AF: 56        .byte $56   ; 
- D 1 - I - 0x01B7C0 06:B7B0: 24        .byte $24   ; 
- D 1 - I - 0x01B7C1 06:B7B1: FD        .byte $FD   ; 
- D 1 - I - 0x01B7C2 06:B7B2: FA B7     .word sub_FD_B7FA
- D 1 - I - 0x01B7C4 06:B7B4: E8        .byte $E8   ; 
- D 1 - I - 0x01B7C5 06:B7B5: 34        .byte $34   ; 
- D 1 - I - 0x01B7C6 06:B7B6: 54        .byte $54   ; 
- D 1 - I - 0x01B7C7 06:B7B7: EC        .byte $EC   ; 
- D 1 - I - 0x01B7C8 06:B7B8: 02        .byte $02   ; 
- D 1 - I - 0x01B7C9 06:B7B9: E8        .byte $E8   ; 
- D 1 - I - 0x01B7CA 06:B7BA: 18        .byte $18   ; 
- D 1 - I - 0x01B7CB 06:B7BB: E9        .byte $E9   ; 
- D 1 - I - 0x01B7CC 06:B7BC: B1        .byte $B1   ; 
- D 1 - I - 0x01B7CD 06:B7BD: E8        .byte $E8   ; 
- D 1 - I - 0x01B7CE 06:B7BE: 18        .byte $18   ; 
- D 1 - I - 0x01B7CF 06:B7BF: 00        .byte $00   ; 
- D 1 - I - 0x01B7D0 06:B7C0: 20        .byte $20   ; 
- D 1 - I - 0x01B7D1 06:B7C1: 30        .byte $30   ; 
- D 1 - I - 0x01B7D2 06:B7C2: 00        .byte $00   ; 
- D 1 - I - 0x01B7D3 06:B7C3: EC        .byte $EC   ; 
- D 1 - I - 0x01B7D4 06:B7C4: 00        .byte $00   ; 
- D 1 - I - 0x01B7D5 06:B7C5: E8        .byte $E8   ; 
- D 1 - I - 0x01B7D6 06:B7C6: 18        .byte $18   ; 
- D 1 - I - 0x01B7D7 06:B7C7: E9        .byte $E9   ; 
- D 1 - I - 0x01B7D8 06:B7C8: 71        .byte $71   ; 
- D 1 - I - 0x01B7D9 06:B7C9: FD        .byte $FD   ; 
- D 1 - I - 0x01B7DA 06:B7CA: FA B7     .word sub_FD_B7FA
- D 1 - I - 0x01B7DC 06:B7CC: 50        .byte $50   ; 
- D 1 - I - 0x01B7DD 06:B7CD: E9        .byte $E9   ; 
- D 1 - I - 0x01B7DE 06:B7CE: 71        .byte $71   ; 
- D 1 - I - 0x01B7DF 06:B7CF: D9        .byte $D9   ; 
- D 1 - I - 0x01B7E0 06:B7D0: 30        .byte $30   ; 
- D 1 - I - 0x01B7E1 06:B7D1: 1B        .byte $1B   ; 
- D 1 - I - 0x01B7E2 06:B7D2: 24        .byte $24   ; 
- D 1 - I - 0x01B7E3 06:B7D3: EB        .byte $EB   ; 
- D 1 - I - 0x01B7E4 06:B7D4: 56        .byte $56   ; 
- D 1 - I - 0x01B7E5 06:B7D5: 32        .byte $32   ; 
- D 1 - I - 0x01B7E6 06:B7D6: E2        .byte $E2   ; 
- D 1 - I - 0x01B7E7 06:B7D7: 52        .byte $52   ; 
- D 1 - I - 0x01B7E8 06:B7D8: 52        .byte $52   ; 
- D 1 - I - 0x01B7E9 06:B7D9: 52        .byte $52   ; 
- D 1 - I - 0x01B7EA 06:B7DA: 55        .byte $55   ; 
- D 1 - I - 0x01B7EB 06:B7DB: E9        .byte $E9   ; 
- D 1 - I - 0x01B7EC 06:B7DC: 31        .byte $31   ; 
- D 1 - I - 0x01B7ED 06:B7DD: E6        .byte $E6   ; 
- D 1 - I - 0x01B7EE 06:B7DE: 01        .byte $01   ; 
- D 1 - I - 0x01B7EF 06:B7DF: E3        .byte $E3   ; 
- D 1 - I - 0x01B7F0 06:B7E0: F3        .byte $F3   ; 
- D 1 - I - 0x01B7F1 06:B7E1: 80        .byte $80   ; 
- D 1 - I - 0x01B7F2 06:B7E2: F2        .byte $F2   ; 
- D 1 - I - 0x01B7F3 06:B7E3: 90        .byte $90   ; 
- D 1 - I - 0x01B7F4 06:B7E4: A0        .byte $A0   ; 
- D 1 - I - 0x01B7F5 06:B7E5: F1        .byte $F1   ; 
- D 1 - I - 0x01B7F6 06:B7E6: B0        .byte $B0   ; 
- D 1 - I - 0x01B7F7 06:B7E7: E2        .byte $E2   ; 
- D 1 - I - 0x01B7F8 06:B7E8: 00        .byte $00   ; 
- D 1 - I - 0x01B7F9 06:B7E9: F0        .byte $F0   ; 
- D 1 - I - 0x01B7FA 06:B7EA: 10        .byte $10   ; 
- D 1 - I - 0x01B7FB 06:B7EB: 20        .byte $20   ; 
- D 1 - I - 0x01B7FC 06:B7EC: 30        .byte $30   ; 
- D 1 - I - 0x01B7FD 06:B7ED: 40        .byte $40   ; 
- D 1 - I - 0x01B7FE 06:B7EE: E9        .byte $E9   ; 
- D 1 - I - 0x01B7FF 06:B7EF: 71        .byte $71   ; 
- D 1 - I - 0x01B800 06:B7F0: E6        .byte $E6   ; 
- D 1 - I - 0x01B801 06:B7F1: 09        .byte $09   ; 
- D 1 - I - 0x01B802 06:B7F2: 52        .byte $52   ; 
- D 1 - I - 0x01B803 06:B7F3: 52        .byte $52   ; 
- D 1 - I - 0x01B804 06:B7F4: 52        .byte $52   ; 
- D 1 - I - 0x01B805 06:B7F5: 56        .byte $56   ; 
- D 1 - I - 0x01B806 06:B7F6: FD        .byte $FD   ; 
- D 1 - I - 0x01B807 06:B7F7: BE BA     .word sub_FD_BABE
- - - - - - 0x01B809 06:B7F9: FF        .byte $FF   ; 
sub_FD_B7FA:
- D 1 - I - 0x01B80A 06:B7FA: E5        .byte $E5   ; 
- D 1 - I - 0x01B80B 06:B7FB: 10        .byte $10   ; 
- D 1 - I - 0x01B80C 06:B7FC: E2        .byte $E2   ; 
- D 1 - I - 0x01B80D 06:B7FD: 10        .byte $10   ; 
- D 1 - I - 0x01B80E 06:B7FE: 11        .byte $11   ; 
- D 1 - I - 0x01B80F 06:B7FF: 10        .byte $10   ; 
- D 1 - I - 0x01B810 06:B800: 11        .byte $11   ; 
- D 1 - I - 0x01B811 06:B801: E8        .byte $E8   ; 
- D 1 - I - 0x01B812 06:B802: 34        .byte $34   ; 
- D 1 - I - 0x01B813 06:B803: 34        .byte $34   ; 
- D 1 - I - 0x01B814 06:B804: EC        .byte $EC   ; 
- D 1 - I - 0x01B815 06:B805: 02        .byte $02   ; 
- D 1 - I - 0x01B816 06:B806: E8        .byte $E8   ; 
- D 1 - I - 0x01B817 06:B807: 18        .byte $18   ; 
- D 1 - I - 0x01B818 06:B808: E9        .byte $E9   ; 
- D 1 - I - 0x01B819 06:B809: B1        .byte $B1   ; 
- D 1 - I - 0x01B81A 06:B80A: 30        .byte $30   ; 
- D 1 - I - 0x01B81B 06:B80B: 50        .byte $50   ; 
- D 1 - I - 0x01B81C 06:B80C: 70        .byte $70   ; 
- D 1 - I - 0x01B81D 06:B80D: 31        .byte $31   ; 
- D 1 - I - 0x01B81E 06:B80E: EC        .byte $EC   ; 
- D 1 - I - 0x01B81F 06:B80F: 00        .byte $00   ; 
- D 1 - I - 0x01B820 06:B810: E8        .byte $E8   ; 
- D 1 - I - 0x01B821 06:B811: 18        .byte $18   ; 
- D 1 - I - 0x01B822 06:B812: E9        .byte $E9   ; 
- D 1 - I - 0x01B823 06:B813: 71        .byte $71   ; 
- D 1 - I - 0x01B824 06:B814: 30        .byte $30   ; 
- D 1 - I - 0x01B825 06:B815: 31        .byte $31   ; 
- D 1 - I - 0x01B826 06:B816: 30        .byte $30   ; 
- D 1 - I - 0x01B827 06:B817: 31        .byte $31   ; 
- D 1 - I - 0x01B828 06:B818: FD        .byte $FD   ; 



_off014_30_B819_02:
- D 1 - I - 0x01B829 06:B819: EA        .byte $EA   ; 
- D 1 - I - 0x01B82A 06:B81A: 00        .byte $00   ; 
- D 1 - I - 0x01B82B 06:B81B: D9        .byte $D9   ; 
- D 1 - I - 0x01B82C 06:B81C: 00        .byte $00   ; 
- D 1 - I - 0x01B82D 06:B81D: E4        .byte $E4   ; 
- D 1 - I - 0x01B82E 06:B81E: 07        .byte $07   ; 
- D 1 - I - 0x01B82F 06:B81F: 17        .byte $17   ; 
- D 1 - I - 0x01B830 06:B820: 27        .byte $27   ; 
- D 1 - I - 0x01B831 06:B821: 37        .byte $37   ; 
- D 1 - I - 0x01B832 06:B822: 03        .byte $03   ; 
- D 1 - I - 0x01B833 06:B823: 13        .byte $13   ; 
- D 1 - I - 0x01B834 06:B824: 23        .byte $23   ; 
- D 1 - I - 0x01B835 06:B825: 33        .byte $33   ; 
- D 1 - I - 0x01B836 06:B826: 01        .byte $01   ; 
- D 1 - I - 0x01B837 06:B827: 11        .byte $11   ; 
- D 1 - I - 0x01B838 06:B828: 21        .byte $21   ; 
- D 1 - I - 0x01B839 06:B829: 31        .byte $31   ; 
- D 1 - I - 0x01B83A 06:B82A: E3        .byte $E3   ; 
- D 1 - I - 0x01B83B 06:B82B: 01        .byte $01   ; 
- D 1 - I - 0x01B83C 06:B82C: 11        .byte $11   ; 
- D 1 - I - 0x01B83D 06:B82D: 21        .byte $21   ; 
- D 1 - I - 0x01B83E 06:B82E: 31        .byte $31   ; 
- D 1 - I - 0x01B83F 06:B82F: D9        .byte $D9   ; 
- D 1 - I - 0x01B840 06:B830: 10        .byte $10   ; 
- D 1 - I - 0x01B841 06:B831: FB        .byte $FB   ; 
- D 1 - I - 0x01B842 06:B832: E4        .byte $E4   ; 
- D 1 - I - 0x01B843 06:B833: 00        .byte $00   ; 
- D 1 - I - 0x01B844 06:B834: E3        .byte $E3   ; 
- D 1 - I - 0x01B845 06:B835: 00        .byte $00   ; 
- D 1 - I - 0x01B846 06:B836: 00        .byte $00   ; 
- D 1 - I - 0x01B847 06:B837: 00        .byte $00   ; 
- D 1 - I - 0x01B848 06:B838: 00        .byte $00   ; 
- D 1 - I - 0x01B849 06:B839: 00        .byte $00   ; 
- D 1 - I - 0x01B84A 06:B83A: 00        .byte $00   ; 
- D 1 - I - 0x01B84B 06:B83B: 00        .byte $00   ; 
- D 1 - I - 0x01B84C 06:B83C: E4        .byte $E4   ; 
- D 1 - I - 0x01B84D 06:B83D: 00        .byte $00   ; 
- D 1 - I - 0x01B84E 06:B83E: 00        .byte $00   ; 
- D 1 - I - 0x01B84F 06:B83F: 30        .byte $30   ; 
- D 1 - I - 0x01B850 06:B840: 00        .byte $00   ; 
- D 1 - I - 0x01B851 06:B841: 70        .byte $70   ; 
- D 1 - I - 0x01B852 06:B842: 60        .byte $60   ; 
- D 1 - I - 0x01B853 06:B843: 50        .byte $50   ; 
- D 1 - I - 0x01B854 06:B844: 30        .byte $30   ; 
- D 1 - I - 0x01B855 06:B845: FE        .byte $FE   ; 
- D 1 - I - 0x01B856 06:B846: 04        .byte $04   ; 
- D 1 - I - 0x01B857 06:B847: D9        .byte $D9   ; 
- D 1 - I - 0x01B858 06:B848: 16        .byte $16   ; 
- D 1 - I - 0x01B859 06:B849: E3        .byte $E3   ; 
- D 1 - I - 0x01B85A 06:B84A: C0        .byte $C0   ; 
- D 1 - I - 0x01B85B 06:B84B: 50        .byte $50   ; 
- D 1 - I - 0x01B85C 06:B84C: 51        .byte $51   ; 
- D 1 - I - 0x01B85D 06:B84D: 50        .byte $50   ; 
- D 1 - I - 0x01B85E 06:B84E: 51        .byte $51   ; 
- D 1 - I - 0x01B85F 06:B84F: D9        .byte $D9   ; 
- D 1 - I - 0x01B860 06:B850: 1A        .byte $1A   ; 
- D 1 - I - 0x01B861 06:B851: 74        .byte $74   ; 
- D 1 - I - 0x01B862 06:B852: D9        .byte $D9   ; 
- D 1 - I - 0x01B863 06:B853: 16        .byte $16   ; 
- D 1 - I - 0x01B864 06:B854: 70        .byte $70   ; 
- D 1 - I - 0x01B865 06:B855: 80        .byte $80   ; 
- D 1 - I - 0x01B866 06:B856: A0        .byte $A0   ; 
- D 1 - I - 0x01B867 06:B857: 70        .byte $70   ; 
- D 1 - I - 0x01B868 06:B858: C0        .byte $C0   ; 
- D 1 - I - 0x01B869 06:B859: 30        .byte $30   ; 
- D 1 - I - 0x01B86A 06:B85A: 31        .byte $31   ; 
- D 1 - I - 0x01B86B 06:B85B: 30        .byte $30   ; 
- D 1 - I - 0x01B86C 06:B85C: 31        .byte $31   ; 
- D 1 - I - 0x01B86D 06:B85D: D9        .byte $D9   ; 
- D 1 - I - 0x01B86E 06:B85E: 1A        .byte $1A   ; 
- D 1 - I - 0x01B86F 06:B85F: 54        .byte $54   ; 
- D 1 - I - 0x01B870 06:B860: D9        .byte $D9   ; 
- D 1 - I - 0x01B871 06:B861: 16        .byte $16   ; 
- D 1 - I - 0x01B872 06:B862: 50        .byte $50   ; 
- D 1 - I - 0x01B873 06:B863: 70        .byte $70   ; 
- D 1 - I - 0x01B874 06:B864: 80        .byte $80   ; 
- D 1 - I - 0x01B875 06:B865: 50        .byte $50   ; 
- D 1 - I - 0x01B876 06:B866: C0        .byte $C0   ; 
- D 1 - I - 0x01B877 06:B867: 50        .byte $50   ; 
- D 1 - I - 0x01B878 06:B868: 51        .byte $51   ; 
- D 1 - I - 0x01B879 06:B869: 50        .byte $50   ; 
- D 1 - I - 0x01B87A 06:B86A: 51        .byte $51   ; 
- D 1 - I - 0x01B87B 06:B86B: D9        .byte $D9   ; 
- D 1 - I - 0x01B87C 06:B86C: 1A        .byte $1A   ; 
- D 1 - I - 0x01B87D 06:B86D: 74        .byte $74   ; 
- D 1 - I - 0x01B87E 06:B86E: D9        .byte $D9   ; 
- D 1 - I - 0x01B87F 06:B86F: 16        .byte $16   ; 
- D 1 - I - 0x01B880 06:B870: 70        .byte $70   ; 
- D 1 - I - 0x01B881 06:B871: 80        .byte $80   ; 
- D 1 - I - 0x01B882 06:B872: A0        .byte $A0   ; 
- D 1 - I - 0x01B883 06:B873: 70        .byte $70   ; 
- D 1 - I - 0x01B884 06:B874: C0        .byte $C0   ; 
- D 1 - I - 0x01B885 06:B875: 30        .byte $30   ; 
- D 1 - I - 0x01B886 06:B876: 31        .byte $31   ; 
- D 1 - I - 0x01B887 06:B877: 30        .byte $30   ; 
- D 1 - I - 0x01B888 06:B878: 31        .byte $31   ; 
- D 1 - I - 0x01B889 06:B879: 50        .byte $50   ; 
- D 1 - I - 0x01B88A 06:B87A: FB        .byte $FB   ; 
- D 1 - I - 0x01B88B 06:B87B: D9        .byte $D9   ; 
- D 1 - I - 0x01B88C 06:B87C: 13        .byte $13   ; 
- D 1 - I - 0x01B88D 06:B87D: E3        .byte $E3   ; 
- D 1 - I - 0x01B88E 06:B87E: 70        .byte $70   ; 
- D 1 - I - 0x01B88F 06:B87F: 50        .byte $50   ; 
- D 1 - I - 0x01B890 06:B880: 60        .byte $60   ; 
- D 1 - I - 0x01B891 06:B881: 70        .byte $70   ; 
- D 1 - I - 0x01B892 06:B882: 50        .byte $50   ; 
- D 1 - I - 0x01B893 06:B883: 60        .byte $60   ; 
- D 1 - I - 0x01B894 06:B884: 70        .byte $70   ; 
- D 1 - I - 0x01B895 06:B885: 50        .byte $50   ; 
- D 1 - I - 0x01B896 06:B886: 60        .byte $60   ; 
- D 1 - I - 0x01B897 06:B887: 70        .byte $70   ; 
- D 1 - I - 0x01B898 06:B888: D1        .byte $D1   ; 
- D 1 - I - 0x01B899 06:B889: 02        .byte $02   ; 
- D 1 - I - 0x01B89A 06:B88A: E3        .byte $E3   ; 
- D 1 - I - 0x01B89B 06:B88B: 73        .byte $73   ; 
- D 1 - I - 0x01B89C 06:B88C: 74        .byte $74   ; 
- D 1 - I - 0x01B89D 06:B88D: E4        .byte $E4   ; 
- D 1 - I - 0x01B89E 06:B88E: 78        .byte $78   ; 
- D 1 - I - 0x01B89F 06:B88F: E3        .byte $E3   ; 
- D 1 - I - 0x01B8A0 06:B890: 73        .byte $73   ; 
- D 1 - I - 0x01B8A1 06:B891: 74        .byte $74   ; 
- D 1 - I - 0x01B8A2 06:B892: E4        .byte $E4   ; 
- D 1 - I - 0x01B8A3 06:B893: 73        .byte $73   ; 
- D 1 - I - 0x01B8A4 06:B894: 74        .byte $74   ; 
- D 1 - I - 0x01B8A5 06:B895: E3        .byte $E3   ; 
- D 1 - I - 0x01B8A6 06:B896: 73        .byte $73   ; 
- D 1 - I - 0x01B8A7 06:B897: 74        .byte $74   ; 
- D 1 - I - 0x01B8A8 06:B898: E4        .byte $E4   ; 
- D 1 - I - 0x01B8A9 06:B899: 78        .byte $78   ; 
- D 1 - I - 0x01B8AA 06:B89A: FE        .byte $FE   ; 
- D 1 - I - 0x01B8AB 06:B89B: 02        .byte $02   ; 
- D 1 - I - 0x01B8AC 06:B89C: FD        .byte $FD   ; 
- D 1 - I - 0x01B8AD 06:B89D: 8C BB     .word sub_FD_BB8C
- - - - - - 0x01B8AF 06:B89F: FF        .byte $FF   ; 



_off014_30_B8A0_03:
- D 1 - I - 0x01B8B0 06:B8A0: D1        .byte $D1   ; 
- D 1 - I - 0x01B8B1 06:B8A1: FB        .byte $FB   ; 
- D 1 - I - 0x01B8B2 06:B8A2: B0        .byte $B0   ; 
- D 1 - I - 0x01B8B3 06:B8A3: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8B4 06:B8A4: C0        .byte $C0   ; 
- D 1 - I - 0x01B8B5 06:B8A5: A0        .byte $A0   ; 
- D 1 - I - 0x01B8B6 06:B8A6: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8B7 06:B8A7: C0        .byte $C0   ; 
- D 1 - I - 0x01B8B8 06:B8A8: B0        .byte $B0   ; 
- D 1 - I - 0x01B8B9 06:B8A9: 27        .byte $27   ; 
- D 1 - I - 0x01B8BA 06:B8AA: B0        .byte $B0   ; 
- D 1 - I - 0x01B8BB 06:B8AB: C7        .byte $C7   ; 
- D 1 - I - 0x01B8BC 06:B8AC: A0        .byte $A0   ; 
- D 1 - I - 0x01B8BD 06:B8AD: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8BE 06:B8AE: C0        .byte $C0   ; 
- D 1 - I - 0x01B8BF 06:B8AF: FE        .byte $FE   ; 
- D 1 - I - 0x01B8C0 06:B8B0: 05        .byte $05   ; 
- D 1 - I - 0x01B8C1 06:B8B1: B0        .byte $B0   ; 
- D 1 - I - 0x01B8C2 06:B8B2: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8C3 06:B8B3: C0        .byte $C0   ; 
- D 1 - I - 0x01B8C4 06:B8B4: A0        .byte $A0   ; 
- D 1 - I - 0x01B8C5 06:B8B5: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8C6 06:B8B6: C0        .byte $C0   ; 
- D 1 - I - 0x01B8C7 06:B8B7: B0        .byte $B0   ; 
- D 1 - I - 0x01B8C8 06:B8B8: 27        .byte $27   ; 
- D 1 - I - 0x01B8C9 06:B8B9: B0        .byte $B0   ; 
- D 1 - I - 0x01B8CA 06:B8BA: 27        .byte $27   ; 
- D 1 - I - 0x01B8CB 06:B8BB: A0        .byte $A0   ; 
- D 1 - I - 0x01B8CC 06:B8BC: 27        .byte $27   ; 
- D 1 - I - 0x01B8CD 06:B8BD: A0        .byte $A0   ; 
- D 1 - I - 0x01B8CE 06:B8BE: 27        .byte $27   ; 
- D 1 - I - 0x01B8CF 06:B8BF: A0        .byte $A0   ; 
- D 1 - I - 0x01B8D0 06:B8C0: 27        .byte $27   ; 
- D 1 - I - 0x01B8D1 06:B8C1: B0        .byte $B0   ; 
- D 1 - I - 0x01B8D2 06:B8C2: 27        .byte $27   ; 
- D 1 - I - 0x01B8D3 06:B8C3: A0        .byte $A0   ; 
- D 1 - I - 0x01B8D4 06:B8C4: 27        .byte $27   ; 
- D 1 - I - 0x01B8D5 06:B8C5: B0        .byte $B0   ; 
- D 1 - I - 0x01B8D6 06:B8C6: 27        .byte $27   ; 
- D 1 - I - 0x01B8D7 06:B8C7: A0        .byte $A0   ; 
- D 1 - I - 0x01B8D8 06:B8C8: 27        .byte $27   ; 
- D 1 - I - 0x01B8D9 06:B8C9: B0        .byte $B0   ; 
- D 1 - I - 0x01B8DA 06:B8CA: 27        .byte $27   ; 
- D 1 - I - 0x01B8DB 06:B8CB: A0        .byte $A0   ; 
- D 1 - I - 0x01B8DC 06:B8CC: 27        .byte $27   ; 
- D 1 - I - 0x01B8DD 06:B8CD: B0        .byte $B0   ; 
- D 1 - I - 0x01B8DE 06:B8CE: 27        .byte $27   ; 
- D 1 - I - 0x01B8DF 06:B8CF: A0        .byte $A0   ; 
- D 1 - I - 0x01B8E0 06:B8D0: 27        .byte $27   ; 
- D 1 - I - 0x01B8E1 06:B8D1: B0        .byte $B0   ; 
- D 1 - I - 0x01B8E2 06:B8D2: 27        .byte $27   ; 
- D 1 - I - 0x01B8E3 06:B8D3: A0        .byte $A0   ; 
- D 1 - I - 0x01B8E4 06:B8D4: 27        .byte $27   ; 
- D 1 - I - 0x01B8E5 06:B8D5: B0        .byte $B0   ; 
- D 1 - I - 0x01B8E6 06:B8D6: 27        .byte $27   ; 
- D 1 - I - 0x01B8E7 06:B8D7: A0        .byte $A0   ; 
- D 1 - I - 0x01B8E8 06:B8D8: 22        .byte $22   ; 
- D 1 - I - 0x01B8E9 06:B8D9: A0        .byte $A0   ; 
- D 1 - I - 0x01B8EA 06:B8DA: 23        .byte $23   ; 
- D 1 - I - 0x01B8EB 06:B8DB: A0        .byte $A0   ; 
- D 1 - I - 0x01B8EC 06:B8DC: 27        .byte $27   ; 
- D 1 - I - 0x01B8ED 06:B8DD: A0        .byte $A0   ; 
- D 1 - I - 0x01B8EE 06:B8DE: 27        .byte $27   ; 
- D 1 - I - 0x01B8EF 06:B8DF: A0        .byte $A0   ; 
- D 1 - I - 0x01B8F0 06:B8E0: 27        .byte $27   ; 
- D 1 - I - 0x01B8F1 06:B8E1: D1        .byte $D1   ; 
- D 1 - I - 0x01B8F2 06:B8E2: FB        .byte $FB   ; 
- D 1 - I - 0x01B8F3 06:B8E3: B0        .byte $B0   ; 
- D 1 - I - 0x01B8F4 06:B8E4: 27        .byte $27   ; 
- D 1 - I - 0x01B8F5 06:B8E5: B0        .byte $B0   ; 
- D 1 - I - 0x01B8F6 06:B8E6: 27        .byte $27   ; 
- D 1 - I - 0x01B8F7 06:B8E7: A0        .byte $A0   ; 
- D 1 - I - 0x01B8F8 06:B8E8: 27        .byte $27   ; 
- D 1 - I - 0x01B8F9 06:B8E9: B0        .byte $B0   ; 
- D 1 - I - 0x01B8FA 06:B8EA: 27        .byte $27   ; 
- D 1 - I - 0x01B8FB 06:B8EB: B0        .byte $B0   ; 
- D 1 - I - 0x01B8FC 06:B8EC: 2F        .byte $2F   ; 
- D 1 - I - 0x01B8FD 06:B8ED: C0        .byte $C0   ; 
- D 1 - I - 0x01B8FE 06:B8EE: A0        .byte $A0   ; 
- D 1 - I - 0x01B8FF 06:B8EF: 27        .byte $27   ; 
- D 1 - I - 0x01B900 06:B8F0: B0        .byte $B0   ; 
- D 1 - I - 0x01B901 06:B8F1: 27        .byte $27   ; 
- D 1 - I - 0x01B902 06:B8F2: FE        .byte $FE   ; 
- D 1 - I - 0x01B903 06:B8F3: 03        .byte $03   ; 
- D 1 - I - 0x01B904 06:B8F4: B0        .byte $B0   ; 
- D 1 - I - 0x01B905 06:B8F5: 27        .byte $27   ; 
- D 1 - I - 0x01B906 06:B8F6: B0        .byte $B0   ; 
- D 1 - I - 0x01B907 06:B8F7: 27        .byte $27   ; 
- D 1 - I - 0x01B908 06:B8F8: A0        .byte $A0   ; 
- D 1 - I - 0x01B909 06:B8F9: 27        .byte $27   ; 
- D 1 - I - 0x01B90A 06:B8FA: B0        .byte $B0   ; 
- D 1 - I - 0x01B90B 06:B8FB: 27        .byte $27   ; 
- D 1 - I - 0x01B90C 06:B8FC: A0        .byte $A0   ; 
- D 1 - I - 0x01B90D 06:B8FD: 27        .byte $27   ; 
- D 1 - I - 0x01B90E 06:B8FE: A0        .byte $A0   ; 
- D 1 - I - 0x01B90F 06:B8FF: 27        .byte $27   ; 
- D 1 - I - 0x01B910 06:B900: A0        .byte $A0   ; 
- D 1 - I - 0x01B911 06:B901: 27        .byte $27   ; 
- D 1 - I - 0x01B912 06:B902: A0        .byte $A0   ; 
- D 1 - I - 0x01B913 06:B903: 27        .byte $27   ; 
- D 1 - I - 0x01B914 06:B904: FB        .byte $FB   ; 
- D 1 - I - 0x01B915 06:B905: B0        .byte $B0   ; 
- D 1 - I - 0x01B916 06:B906: 27        .byte $27   ; 
- D 1 - I - 0x01B917 06:B907: B0        .byte $B0   ; 
- D 1 - I - 0x01B918 06:B908: 27        .byte $27   ; 
- D 1 - I - 0x01B919 06:B909: A0        .byte $A0   ; 
- D 1 - I - 0x01B91A 06:B90A: 27        .byte $27   ; 
- D 1 - I - 0x01B91B 06:B90B: B0        .byte $B0   ; 
- D 1 - I - 0x01B91C 06:B90C: 27        .byte $27   ; 
- D 1 - I - 0x01B91D 06:B90D: B0        .byte $B0   ; 
- D 1 - I - 0x01B91E 06:B90E: 2F        .byte $2F   ; 
- D 1 - I - 0x01B91F 06:B90F: C0        .byte $C0   ; 
- D 1 - I - 0x01B920 06:B910: A0        .byte $A0   ; 
- D 1 - I - 0x01B921 06:B911: 27        .byte $27   ; 
- D 1 - I - 0x01B922 06:B912: B0        .byte $B0   ; 
- D 1 - I - 0x01B923 06:B913: 27        .byte $27   ; 
- D 1 - I - 0x01B924 06:B914: FE        .byte $FE   ; 
- D 1 - I - 0x01B925 06:B915: 03        .byte $03   ; 
- D 1 - I - 0x01B926 06:B916: B0        .byte $B0   ; 
- D 1 - I - 0x01B927 06:B917: 27        .byte $27   ; 
- D 1 - I - 0x01B928 06:B918: B0        .byte $B0   ; 
- D 1 - I - 0x01B929 06:B919: 27        .byte $27   ; 
- D 1 - I - 0x01B92A 06:B91A: A0        .byte $A0   ; 
- D 1 - I - 0x01B92B 06:B91B: 27        .byte $27   ; 
- D 1 - I - 0x01B92C 06:B91C: B0        .byte $B0   ; 
- D 1 - I - 0x01B92D 06:B91D: 27        .byte $27   ; 
- D 1 - I - 0x01B92E 06:B91E: FB        .byte $FB   ; 
- D 1 - I - 0x01B92F 06:B91F: A0        .byte $A0   ; 
- D 1 - I - 0x01B930 06:B920: 22        .byte $22   ; 
- D 1 - I - 0x01B931 06:B921: A0        .byte $A0   ; 
- D 1 - I - 0x01B932 06:B922: 23        .byte $23   ; 
- D 1 - I - 0x01B933 06:B923: B0        .byte $B0   ; 
- D 1 - I - 0x01B934 06:B924: 27        .byte $27   ; 
- D 1 - I - 0x01B935 06:B925: FE        .byte $FE   ; 
- D 1 - I - 0x01B936 06:B926: 02        .byte $02   ; 
- D 1 - I - 0x01B937 06:B927: D1        .byte $D1   ; 
- D 1 - I - 0x01B938 06:B928: B0        .byte $B0   ; 
- D 1 - I - 0x01B939 06:B929: 27        .byte $27   ; 
- D 1 - I - 0x01B93A 06:B92A: A0        .byte $A0   ; 
- D 1 - I - 0x01B93B 06:B92B: 27        .byte $27   ; 
- D 1 - I - 0x01B93C 06:B92C: A0        .byte $A0   ; 
- D 1 - I - 0x01B93D 06:B92D: 27        .byte $27   ; 
- D 1 - I - 0x01B93E 06:B92E: B0        .byte $B0   ; 
- D 1 - I - 0x01B93F 06:B92F: 27        .byte $27   ; 
- D 1 - I - 0x01B940 06:B930: A0        .byte $A0   ; 
- D 1 - I - 0x01B941 06:B931: 27        .byte $27   ; 
- D 1 - I - 0x01B942 06:B932: A0        .byte $A0   ; 
- D 1 - I - 0x01B943 06:B933: 27        .byte $27   ; 
- D 1 - I - 0x01B944 06:B934: B0        .byte $B0   ; 
- D 1 - I - 0x01B945 06:B935: 27        .byte $27   ; 
- D 1 - I - 0x01B946 06:B936: A0        .byte $A0   ; 
- D 1 - I - 0x01B947 06:B937: 27        .byte $27   ; 
- D 1 - I - 0x01B948 06:B938: B0        .byte $B0   ; 
- D 1 - I - 0x01B949 06:B939: 27        .byte $27   ; 
- D 1 - I - 0x01B94A 06:B93A: C8        .byte $C8   ; 
- D 1 - I - 0x01B94B 06:B93B: FB        .byte $FB   ; 
- D 1 - I - 0x01B94C 06:B93C: A0        .byte $A0   ; 
- D 1 - I - 0x01B94D 06:B93D: 24        .byte $24   ; 
- D 1 - I - 0x01B94E 06:B93E: FE        .byte $FE   ; 
- D 1 - I - 0x01B94F 06:B93F: 07        .byte $07   ; 
- D 1 - I - 0x01B950 06:B940: B0        .byte $B0   ; 
- D 1 - I - 0x01B951 06:B941: 24        .byte $24   ; 
- D 1 - I - 0x01B952 06:B942: B0        .byte $B0   ; 
- D 1 - I - 0x01B953 06:B943: 24        .byte $24   ; 
- D 1 - I - 0x01B954 06:B944: B0        .byte $B0   ; 
- D 1 - I - 0x01B955 06:B945: 27        .byte $27   ; 
- D 1 - I - 0x01B956 06:B946: A0        .byte $A0   ; 
- D 1 - I - 0x01B957 06:B947: 27        .byte $27   ; 
- D 1 - I - 0x01B958 06:B948: A0        .byte $A0   ; 
- D 1 - I - 0x01B959 06:B949: 27        .byte $27   ; 
- D 1 - I - 0x01B95A 06:B94A: B0        .byte $B0   ; 
- D 1 - I - 0x01B95B 06:B94B: 27        .byte $27   ; 
- D 1 - I - 0x01B95C 06:B94C: A0        .byte $A0   ; 
- D 1 - I - 0x01B95D 06:B94D: 27        .byte $27   ; 
- D 1 - I - 0x01B95E 06:B94E: A0        .byte $A0   ; 
- D 1 - I - 0x01B95F 06:B94F: 27        .byte $27   ; 
- D 1 - I - 0x01B960 06:B950: B0        .byte $B0   ; 
- D 1 - I - 0x01B961 06:B951: 27        .byte $27   ; 
- D 1 - I - 0x01B962 06:B952: A0        .byte $A0   ; 
- D 1 - I - 0x01B963 06:B953: 27        .byte $27   ; 
- D 1 - I - 0x01B964 06:B954: B0        .byte $B0   ; 
- D 1 - I - 0x01B965 06:B955: 27        .byte $27   ; 
- D 1 - I - 0x01B966 06:B956: C8        .byte $C8   ; 
- D 1 - I - 0x01B967 06:B957: A0        .byte $A0   ; 
- D 1 - I - 0x01B968 06:B958: 24        .byte $24   ; 
- D 1 - I - 0x01B969 06:B959: A0        .byte $A0   ; 
- D 1 - I - 0x01B96A 06:B95A: 24        .byte $24   ; 
- D 1 - I - 0x01B96B 06:B95B: A0        .byte $A0   ; 
- D 1 - I - 0x01B96C 06:B95C: 24        .byte $24   ; 
- D 1 - I - 0x01B96D 06:B95D: A0        .byte $A0   ; 
- D 1 - I - 0x01B96E 06:B95E: 22        .byte $22   ; 
- D 1 - I - 0x01B96F 06:B95F: A0        .byte $A0   ; 
- D 1 - I - 0x01B970 06:B960: 23        .byte $23   ; 
- D 1 - I - 0x01B971 06:B961: A0        .byte $A0   ; 
- D 1 - I - 0x01B972 06:B962: 22        .byte $22   ; 
- D 1 - I - 0x01B973 06:B963: A0        .byte $A0   ; 
- D 1 - I - 0x01B974 06:B964: 23        .byte $23   ; 
- D 1 - I - 0x01B975 06:B965: B0        .byte $B0   ; 
- D 1 - I - 0x01B976 06:B966: 27        .byte $27   ; 
- D 1 - I - 0x01B977 06:B967: 28        .byte $28   ; 
- D 1 - I - 0x01B978 06:B968: B0        .byte $B0   ; 
- D 1 - I - 0x01B979 06:B969: 27        .byte $27   ; 
- D 1 - I - 0x01B97A 06:B96A: A0        .byte $A0   ; 
- D 1 - I - 0x01B97B 06:B96B: 27        .byte $27   ; 
- D 1 - I - 0x01B97C 06:B96C: A0        .byte $A0   ; 
- D 1 - I - 0x01B97D 06:B96D: 27        .byte $27   ; 
- D 1 - I - 0x01B97E 06:B96E: B0        .byte $B0   ; 
- D 1 - I - 0x01B97F 06:B96F: 27        .byte $27   ; 
- D 1 - I - 0x01B980 06:B970: A0        .byte $A0   ; 
- D 1 - I - 0x01B981 06:B971: 27        .byte $27   ; 
- D 1 - I - 0x01B982 06:B972: A0        .byte $A0   ; 
- D 1 - I - 0x01B983 06:B973: 27        .byte $27   ; 
- D 1 - I - 0x01B984 06:B974: B0        .byte $B0   ; 
- D 1 - I - 0x01B985 06:B975: 27        .byte $27   ; 
- D 1 - I - 0x01B986 06:B976: A0        .byte $A0   ; 
- D 1 - I - 0x01B987 06:B977: 27        .byte $27   ; 
- D 1 - I - 0x01B988 06:B978: B0        .byte $B0   ; 
- D 1 - I - 0x01B989 06:B979: 27        .byte $27   ; 
- D 1 - I - 0x01B98A 06:B97A: C8        .byte $C8   ; 
- D 1 - I - 0x01B98B 06:B97B: FB        .byte $FB   ; 
- D 1 - I - 0x01B98C 06:B97C: A0        .byte $A0   ; 
- D 1 - I - 0x01B98D 06:B97D: 24        .byte $24   ; 
- D 1 - I - 0x01B98E 06:B97E: FE        .byte $FE   ; 
- D 1 - I - 0x01B98F 06:B97F: 08        .byte $08   ; 
- D 1 - I - 0x01B990 06:B980: B0        .byte $B0   ; 
- D 1 - I - 0x01B991 06:B981: 24        .byte $24   ; 
- D 1 - I - 0x01B992 06:B982: B0        .byte $B0   ; 
- D 1 - I - 0x01B993 06:B983: 27        .byte $27   ; 
- D 1 - I - 0x01B994 06:B984: A0        .byte $A0   ; 
- D 1 - I - 0x01B995 06:B985: 27        .byte $27   ; 
- D 1 - I - 0x01B996 06:B986: A0        .byte $A0   ; 
- D 1 - I - 0x01B997 06:B987: 27        .byte $27   ; 
- D 1 - I - 0x01B998 06:B988: B0        .byte $B0   ; 
- D 1 - I - 0x01B999 06:B989: 27        .byte $27   ; 
- D 1 - I - 0x01B99A 06:B98A: A0        .byte $A0   ; 
- D 1 - I - 0x01B99B 06:B98B: 27        .byte $27   ; 
- D 1 - I - 0x01B99C 06:B98C: A0        .byte $A0   ; 
- D 1 - I - 0x01B99D 06:B98D: 27        .byte $27   ; 
- D 1 - I - 0x01B99E 06:B98E: B0        .byte $B0   ; 
- D 1 - I - 0x01B99F 06:B98F: 27        .byte $27   ; 
- D 1 - I - 0x01B9A0 06:B990: A0        .byte $A0   ; 
- D 1 - I - 0x01B9A1 06:B991: 27        .byte $27   ; 
- D 1 - I - 0x01B9A2 06:B992: D1        .byte $D1   ; 
- D 1 - I - 0x01B9A3 06:B993: B0        .byte $B0   ; 
- D 1 - I - 0x01B9A4 06:B994: 27        .byte $27   ; 
- D 1 - I - 0x01B9A5 06:B995: B0        .byte $B0   ; 
- D 1 - I - 0x01B9A6 06:B996: 27        .byte $27   ; 
- D 1 - I - 0x01B9A7 06:B997: A0        .byte $A0   ; 
- D 1 - I - 0x01B9A8 06:B998: 27        .byte $27   ; 
- D 1 - I - 0x01B9A9 06:B999: B0        .byte $B0   ; 
- D 1 - I - 0x01B9AA 06:B99A: 27        .byte $27   ; 
- D 1 - I - 0x01B9AB 06:B99B: B0        .byte $B0   ; 
- D 1 - I - 0x01B9AC 06:B99C: 27        .byte $27   ; 
- D 1 - I - 0x01B9AD 06:B99D: 28        .byte $28   ; 
- D 1 - I - 0x01B9AE 06:B99E: A0        .byte $A0   ; 
- D 1 - I - 0x01B9AF 06:B99F: 27        .byte $27   ; 
- D 1 - I - 0x01B9B0 06:B9A0: B0        .byte $B0   ; 
- D 1 - I - 0x01B9B1 06:B9A1: 27        .byte $27   ; 
- D 1 - I - 0x01B9B2 06:B9A2: B0        .byte $B0   ; 
- D 1 - I - 0x01B9B3 06:B9A3: 27        .byte $27   ; 
- D 1 - I - 0x01B9B4 06:B9A4: B0        .byte $B0   ; 
- D 1 - I - 0x01B9B5 06:B9A5: 27        .byte $27   ; 
- D 1 - I - 0x01B9B6 06:B9A6: A0        .byte $A0   ; 
- D 1 - I - 0x01B9B7 06:B9A7: 27        .byte $27   ; 
- D 1 - I - 0x01B9B8 06:B9A8: B0        .byte $B0   ; 
- D 1 - I - 0x01B9B9 06:B9A9: 27        .byte $27   ; 
- D 1 - I - 0x01B9BA 06:B9AA: B0        .byte $B0   ; 
- D 1 - I - 0x01B9BB 06:B9AB: 27        .byte $27   ; 
- D 1 - I - 0x01B9BC 06:B9AC: 28        .byte $28   ; 
- D 1 - I - 0x01B9BD 06:B9AD: A0        .byte $A0   ; 
- D 1 - I - 0x01B9BE 06:B9AE: 27        .byte $27   ; 
- D 1 - I - 0x01B9BF 06:B9AF: A0        .byte $A0   ; 
- D 1 - I - 0x01B9C0 06:B9B0: 27        .byte $27   ; 
- D 1 - I - 0x01B9C1 06:B9B1: B0        .byte $B0   ; 
- D 1 - I - 0x01B9C2 06:B9B2: 27        .byte $27   ; 
- D 1 - I - 0x01B9C3 06:B9B3: B0        .byte $B0   ; 
- D 1 - I - 0x01B9C4 06:B9B4: 27        .byte $27   ; 
- D 1 - I - 0x01B9C5 06:B9B5: A0        .byte $A0   ; 
- D 1 - I - 0x01B9C6 06:B9B6: 27        .byte $27   ; 
- D 1 - I - 0x01B9C7 06:B9B7: B0        .byte $B0   ; 
- D 1 - I - 0x01B9C8 06:B9B8: 27        .byte $27   ; 
- D 1 - I - 0x01B9C9 06:B9B9: B0        .byte $B0   ; 
- D 1 - I - 0x01B9CA 06:B9BA: 27        .byte $27   ; 
- D 1 - I - 0x01B9CB 06:B9BB: 28        .byte $28   ; 
- D 1 - I - 0x01B9CC 06:B9BC: A0        .byte $A0   ; 
- D 1 - I - 0x01B9CD 06:B9BD: 27        .byte $27   ; 
- D 1 - I - 0x01B9CE 06:B9BE: B0        .byte $B0   ; 
- D 1 - I - 0x01B9CF 06:B9BF: 27        .byte $27   ; 
- D 1 - I - 0x01B9D0 06:B9C0: B0        .byte $B0   ; 
- D 1 - I - 0x01B9D1 06:B9C1: 27        .byte $27   ; 
- D 1 - I - 0x01B9D2 06:B9C2: B0        .byte $B0   ; 
- D 1 - I - 0x01B9D3 06:B9C3: 27        .byte $27   ; 
- D 1 - I - 0x01B9D4 06:B9C4: A0        .byte $A0   ; 
- D 1 - I - 0x01B9D5 06:B9C5: 27        .byte $27   ; 
- D 1 - I - 0x01B9D6 06:B9C6: B0        .byte $B0   ; 
- D 1 - I - 0x01B9D7 06:B9C7: 27        .byte $27   ; 
- D 1 - I - 0x01B9D8 06:B9C8: FB        .byte $FB   ; 
- D 1 - I - 0x01B9D9 06:B9C9: A0        .byte $A0   ; 
- D 1 - I - 0x01B9DA 06:B9CA: 22        .byte $22   ; 
- D 1 - I - 0x01B9DB 06:B9CB: A0        .byte $A0   ; 
- D 1 - I - 0x01B9DC 06:B9CC: 23        .byte $23   ; 
- D 1 - I - 0x01B9DD 06:B9CD: A0        .byte $A0   ; 
- D 1 - I - 0x01B9DE 06:B9CE: 22        .byte $22   ; 
- D 1 - I - 0x01B9DF 06:B9CF: B0        .byte $B0   ; 
- D 1 - I - 0x01B9E0 06:B9D0: 23        .byte $23   ; 
- D 1 - I - 0x01B9E1 06:B9D1: FE        .byte $FE   ; 
- D 1 - I - 0x01B9E2 06:B9D2: 02        .byte $02   ; 
- D 1 - I - 0x01B9E3 06:B9D3: FD        .byte $FD   ; 
- D 1 - I - 0x01B9E4 06:B9D4: 5A BC     .word sub_FD_BC5A
- - - - - - 0x01B9E6 06:B9D6: FF        .byte $FF   ; 



_off014_31_B9D7_00:
- D 1 - I - 0x01B9E7 06:B9D7: D9        .byte $D9   ; 
- D 1 - I - 0x01B9E8 06:B9D8: 38        .byte $38   ; 
- D 1 - I - 0x01B9E9 06:B9D9: 85        .byte $85   ; 
- D 1 - I - 0x01B9EA 06:B9DA: 00        .byte $00   ; 
- D 1 - I - 0x01B9EB 06:B9DB: E3        .byte $E3   ; 
- D 1 - I - 0x01B9EC 06:B9DC: C8        .byte $C8   ; 
loc_FF_B9DD:
sub_FD_B9DD:
- D 1 - I - 0x01B9ED 06:B9DD: FC        .byte $FC   ; 
- D 1 - I - 0x01B9EE 06:B9DE: FD        .byte $FD   ; 
- D 1 - I - 0x01B9EF 06:B9DF: 14 BB     .word sub_FD_BB14
- D 1 - I - 0x01B9F1 06:B9E1: FD        .byte $FD   ; 
- D 1 - I - 0x01B9F2 06:B9E2: 8A BA     .word sub_FD_BA8A
- D 1 - I - 0x01B9F4 06:B9E4: F0        .byte $F0   ; 
- D 1 - I - 0x01B9F5 06:B9E5: 50        .byte $50   ; 
- D 1 - I - 0x01B9F6 06:B9E6: 60        .byte $60   ; 
- D 1 - I - 0x01B9F7 06:B9E7: FD        .byte $FD   ; 
- D 1 - I - 0x01B9F8 06:B9E8: 14 BB     .word sub_FD_BB14
- D 1 - I - 0x01B9FA 06:B9EA: FD        .byte $FD   ; 
- D 1 - I - 0x01B9FB 06:B9EB: 8A BA     .word sub_FD_BA8A
- D 1 - I - 0x01B9FD 06:B9ED: E9        .byte $E9   ; 
- D 1 - I - 0x01B9FE 06:B9EE: 71        .byte $71   ; 
- D 1 - I - 0x01B9FF 06:B9EF: E9        .byte $E9   ; 
- D 1 - I - 0x01BA00 06:B9F0: 30        .byte $30   ; 
- D 1 - I - 0x01BA01 06:B9F1: F1        .byte $F1   ; 
- D 1 - I - 0x01BA02 06:B9F2: E2        .byte $E2   ; 
- D 1 - I - 0x01BA03 06:B9F3: 60        .byte $60   ; 
- D 1 - I - 0x01BA04 06:B9F4: 86        .byte $86   ; 
- D 1 - I - 0x01BA05 06:B9F5: 60        .byte $60   ; 
- D 1 - I - 0x01BA06 06:B9F6: E6        .byte $E6   ; 
- D 1 - I - 0x01BA07 06:B9F7: 0F        .byte $0F   ; 
- D 1 - I - 0x01BA08 06:B9F8: 80        .byte $80   ; 
- D 1 - I - 0x01BA09 06:B9F9: E6        .byte $E6   ; 
- D 1 - I - 0x01BA0A 06:B9FA: 06        .byte $06   ; 
- D 1 - I - 0x01BA0B 06:B9FB: C0        .byte $C0   ; 
- D 1 - I - 0x01BA0C 06:B9FC: E6        .byte $E6   ; 
- D 1 - I - 0x01BA0D 06:B9FD: 06        .byte $06   ; 
- D 1 - I - 0x01BA0E 06:B9FE: F4        .byte $F4   ; 
- D 1 - I - 0x01BA0F 06:B9FF: 80        .byte $80   ; 
- D 1 - I - 0x01BA10 06:BA00: E6        .byte $E6   ; 
- D 1 - I - 0x01BA11 06:BA01: 09        .byte $09   ; 
- D 1 - I - 0x01BA12 06:BA02: F1        .byte $F1   ; 
- D 1 - I - 0x01BA13 06:BA03: 60        .byte $60   ; 
- D 1 - I - 0x01BA14 06:BA04: E6        .byte $E6   ; 
- D 1 - I - 0x01BA15 06:BA05: 0F        .byte $0F   ; 
- D 1 - I - 0x01BA16 06:BA06: 80        .byte $80   ; 
- D 1 - I - 0x01BA17 06:BA07: E6        .byte $E6   ; 
- D 1 - I - 0x01BA18 06:BA08: 06        .byte $06   ; 
- D 1 - I - 0x01BA19 06:BA09: C0        .byte $C0   ; 
- D 1 - I - 0x01BA1A 06:BA0A: E6        .byte $E6   ; 
- D 1 - I - 0x01BA1B 06:BA0B: 06        .byte $06   ; 
- D 1 - I - 0x01BA1C 06:BA0C: F4        .byte $F4   ; 
- D 1 - I - 0x01BA1D 06:BA0D: 80        .byte $80   ; 
- D 1 - I - 0x01BA1E 06:BA0E: E6        .byte $E6   ; 
- D 1 - I - 0x01BA1F 06:BA0F: 09        .byte $09   ; 
- D 1 - I - 0x01BA20 06:BA10: F1        .byte $F1   ; 
- D 1 - I - 0x01BA21 06:BA11: 60        .byte $60   ; 
- D 1 - I - 0x01BA22 06:BA12: 80        .byte $80   ; 
- D 1 - I - 0x01BA23 06:BA13: F0        .byte $F0   ; 
- D 1 - I - 0x01BA24 06:BA14: E9        .byte $E9   ; 
- D 1 - I - 0x01BA25 06:BA15: 31        .byte $31   ; 
- D 1 - I - 0x01BA26 06:BA16: E9        .byte $E9   ; 
- D 1 - I - 0x01BA27 06:BA17: 70        .byte $70   ; 
- D 1 - I - 0x01BA28 06:BA18: E6        .byte $E6   ; 
- D 1 - I - 0x01BA29 06:BA19: 01        .byte $01   ; 
- D 1 - I - 0x01BA2A 06:BA1A: C0        .byte $C0   ; 
- D 1 - I - 0x01BA2B 06:BA1B: E6        .byte $E6   ; 
- D 1 - I - 0x01BA2C 06:BA1C: 09        .byte $09   ; 
- D 1 - I - 0x01BA2D 06:BA1D: E3        .byte $E3   ; 
- D 1 - I - 0x01BA2E 06:BA1E: 20        .byte $20   ; 
- D 1 - I - 0x01BA2F 06:BA1F: 10        .byte $10   ; 
- D 1 - I - 0x01BA30 06:BA20: 00        .byte $00   ; 
- D 1 - I - 0x01BA31 06:BA21: E2        .byte $E2   ; 
- D 1 - I - 0x01BA32 06:BA22: 21        .byte $21   ; 
- D 1 - I - 0x01BA33 06:BA23: 10        .byte $10   ; 
- D 1 - I - 0x01BA34 06:BA24: 00        .byte $00   ; 
- D 1 - I - 0x01BA35 06:BA25: 21        .byte $21   ; 
- D 1 - I - 0x01BA36 06:BA26: 10        .byte $10   ; 
- D 1 - I - 0x01BA37 06:BA27: 00        .byte $00   ; 
- D 1 - I - 0x01BA38 06:BA28: 20        .byte $20   ; 
- D 1 - I - 0x01BA39 06:BA29: E6        .byte $E6   ; 
- D 1 - I - 0x01BA3A 06:BA2A: 01        .byte $01   ; 
- D 1 - I - 0x01BA3B 06:BA2B: C2        .byte $C2   ; 
- D 1 - I - 0x01BA3C 06:BA2C: F5        .byte $F5   ; 
- D 1 - I - 0x01BA3D 06:BA2D: 24        .byte $24   ; 
- D 1 - I - 0x01BA3E 06:BA2E: E6        .byte $E6   ; 
- D 1 - I - 0x01BA3F 06:BA2F: 09        .byte $09   ; 
- D 1 - I - 0x01BA40 06:BA30: F0        .byte $F0   ; 
- D 1 - I - 0x01BA41 06:BA31: 10        .byte $10   ; 
- D 1 - I - 0x01BA42 06:BA32: 10        .byte $10   ; 
- D 1 - I - 0x01BA43 06:BA33: E6        .byte $E6   ; 
- D 1 - I - 0x01BA44 06:BA34: 01        .byte $01   ; 
- D 1 - I - 0x01BA45 06:BA35: C3        .byte $C3   ; 
- D 1 - I - 0x01BA46 06:BA36: F5        .byte $F5   ; 
- D 1 - I - 0x01BA47 06:BA37: 14        .byte $14   ; 
- D 1 - I - 0x01BA48 06:BA38: F0        .byte $F0   ; 
- D 1 - I - 0x01BA49 06:BA39: FE        .byte $FE   ; 
- D 1 - I - 0x01BA4A 06:BA3A: FF        .byte $FF   ; 
- D 1 - I - 0x01BA4B 06:BA3B: DD B9     .word loc_FF_B9DD



sub_FD_BA3D:
- D 1 - I - 0x01BA4D 06:BA3D: EA        .byte $EA   ; 
- D 1 - I - 0x01BA4E 06:BA3E: 00        .byte $00   ; 
- D 1 - I - 0x01BA4F 06:BA3F: E6        .byte $E6   ; 
- D 1 - I - 0x01BA50 06:BA40: 01        .byte $01   ; 
- D 1 - I - 0x01BA51 06:BA41: C0        .byte $C0   ; 
- D 1 - I - 0x01BA52 06:BA42: E9        .byte $E9   ; 
- D 1 - I - 0x01BA53 06:BA43: 31        .byte $31   ; 
- D 1 - I - 0x01BA54 06:BA44: D9        .byte $D9   ; 
- D 1 - I - 0x01BA55 06:BA45: 70        .byte $70   ; 
- D 1 - I - 0x01BA56 06:BA46: 15        .byte $15   ; 
- D 1 - I - 0x01BA57 06:BA47: 12        .byte $12   ; 
- D 1 - I - 0x01BA58 06:BA48: E3        .byte $E3   ; 
- D 1 - I - 0x01BA59 06:BA49: 00        .byte $00   ; 
- D 1 - I - 0x01BA5A 06:BA4A: 00        .byte $00   ; 
- D 1 - I - 0x01BA5B 06:BA4B: E7        .byte $E7   ; 
- D 1 - I - 0x01BA5C 06:BA4C: 17        .byte $17   ; 
- D 1 - I - 0x01BA5D 06:BA4D: 30        .byte $30   ; 
- D 1 - I - 0x01BA5E 06:BA4E: F3        .byte $F3   ; 
- D 1 - I - 0x01BA5F 06:BA4F: 00        .byte $00   ; 
- D 1 - I - 0x01BA60 06:BA50: F0        .byte $F0   ; 
- D 1 - I - 0x01BA61 06:BA51: 50        .byte $50   ; 
- D 1 - I - 0x01BA62 06:BA52: F3        .byte $F3   ; 
- D 1 - I - 0x01BA63 06:BA53: 00        .byte $00   ; 
- D 1 - I - 0x01BA64 06:BA54: F0        .byte $F0   ; 
- D 1 - I - 0x01BA65 06:BA55: 60        .byte $60   ; 
- D 1 - I - 0x01BA66 06:BA56: F3        .byte $F3   ; 
- D 1 - I - 0x01BA67 06:BA57: 00        .byte $00   ; 
- D 1 - I - 0x01BA68 06:BA58: F0        .byte $F0   ; 
- D 1 - I - 0x01BA69 06:BA59: 70        .byte $70   ; 
- D 1 - I - 0x01BA6A 06:BA5A: F3        .byte $F3   ; 
- D 1 - I - 0x01BA6B 06:BA5B: 00        .byte $00   ; 
- D 1 - I - 0x01BA6C 06:BA5C: F0        .byte $F0   ; 
- D 1 - I - 0x01BA6D 06:BA5D: 60        .byte $60   ; 
- D 1 - I - 0x01BA6E 06:BA5E: F3        .byte $F3   ; 
- D 1 - I - 0x01BA6F 06:BA5F: 00        .byte $00   ; 
- D 1 - I - 0x01BA70 06:BA60: F0        .byte $F0   ; 
- D 1 - I - 0x01BA71 06:BA61: 50        .byte $50   ; 
- D 1 - I - 0x01BA72 06:BA62: F3        .byte $F3   ; 
- D 1 - I - 0x01BA73 06:BA63: 00        .byte $00   ; 
- D 1 - I - 0x01BA74 06:BA64: F0        .byte $F0   ; 
- D 1 - I - 0x01BA75 06:BA65: 30        .byte $30   ; 
- D 1 - I - 0x01BA76 06:BA66: E7        .byte $E7   ; 
- D 1 - I - 0x01BA77 06:BA67: 15        .byte $15   ; 
- D 1 - I - 0x01BA78 06:BA68: F0        .byte $F0   ; 
- D 1 - I - 0x01BA79 06:BA69: E4        .byte $E4   ; 
- D 1 - I - 0x01BA7A 06:BA6A: 30        .byte $30   ; 
- D 1 - I - 0x01BA7B 06:BA6B: E3        .byte $E3   ; 
- D 1 - I - 0x01BA7C 06:BA6C: 00        .byte $00   ; 
- D 1 - I - 0x01BA7D 06:BA6D: 00        .byte $00   ; 
- D 1 - I - 0x01BA7E 06:BA6E: E7        .byte $E7   ; 
- D 1 - I - 0x01BA7F 06:BA6F: 17        .byte $17   ; 
- D 1 - I - 0x01BA80 06:BA70: 30        .byte $30   ; 
- D 1 - I - 0x01BA81 06:BA71: F3        .byte $F3   ; 
- D 1 - I - 0x01BA82 06:BA72: 00        .byte $00   ; 
- D 1 - I - 0x01BA83 06:BA73: F0        .byte $F0   ; 
- D 1 - I - 0x01BA84 06:BA74: 50        .byte $50   ; 
- D 1 - I - 0x01BA85 06:BA75: F3        .byte $F3   ; 
- D 1 - I - 0x01BA86 06:BA76: 00        .byte $00   ; 
- D 1 - I - 0x01BA87 06:BA77: F0        .byte $F0   ; 
- D 1 - I - 0x01BA88 06:BA78: 60        .byte $60   ; 
- D 1 - I - 0x01BA89 06:BA79: F3        .byte $F3   ; 
- D 1 - I - 0x01BA8A 06:BA7A: 00        .byte $00   ; 
- D 1 - I - 0x01BA8B 06:BA7B: F0        .byte $F0   ; 
- D 1 - I - 0x01BA8C 06:BA7C: 70        .byte $70   ; 
- D 1 - I - 0x01BA8D 06:BA7D: F3        .byte $F3   ; 
- D 1 - I - 0x01BA8E 06:BA7E: 00        .byte $00   ; 
- D 1 - I - 0x01BA8F 06:BA7F: F0        .byte $F0   ; 
- D 1 - I - 0x01BA90 06:BA80: 60        .byte $60   ; 
- D 1 - I - 0x01BA91 06:BA81: F3        .byte $F3   ; 
- D 1 - I - 0x01BA92 06:BA82: 00        .byte $00   ; 
- D 1 - I - 0x01BA93 06:BA83: F0        .byte $F0   ; 
- D 1 - I - 0x01BA94 06:BA84: 50        .byte $50   ; 
- D 1 - I - 0x01BA95 06:BA85: E6        .byte $E6   ; 
- D 1 - I - 0x01BA96 06:BA86: 08        .byte $08   ; 
- D 1 - I - 0x01BA97 06:BA87: F3        .byte $F3   ; 
- D 1 - I - 0x01BA98 06:BA88: 00        .byte $00   ; 
- D 1 - I - 0x01BA99 06:BA89: FD        .byte $FD   ; 
sub_FD_BA8A:
- D 1 - I - 0x01BA9A 06:BA8A: E9        .byte $E9   ; 
- D 1 - I - 0x01BA9B 06:BA8B: 71        .byte $71   ; 
- D 1 - I - 0x01BA9C 06:BA8C: D9        .byte $D9   ; 
- D 1 - I - 0x01BA9D 06:BA8D: 30        .byte $30   ; 
- D 1 - I - 0x01BA9E 06:BA8E: 16        .byte $16   ; 
- D 1 - I - 0x01BA9F 06:BA8F: 14        .byte $14   ; 
- D 1 - I - 0x01BAA0 06:BA90: EB        .byte $EB   ; 
- D 1 - I - 0x01BAA1 06:BA91: 50        .byte $50   ; 
- D 1 - I - 0x01BAA2 06:BA92: 35        .byte $35   ; 
- D 1 - I - 0x01BAA3 06:BA93: E6        .byte $E6   ; 
- D 1 - I - 0x01BAA4 06:BA94: 01        .byte $01   ; 
- D 1 - I - 0x01BAA5 06:BA95: E3        .byte $E3   ; 
- D 1 - I - 0x01BAA6 06:BA96: 30        .byte $30   ; 
- D 1 - I - 0x01BAA7 06:BA97: 41        .byte $41   ; 
- D 1 - I - 0x01BAA8 06:BA98: 55        .byte $55   ; 
- D 1 - I - 0x01BAA9 06:BA99: E6        .byte $E6   ; 
- D 1 - I - 0x01BAAA 06:BA9A: 09        .byte $09   ; 
- D 1 - I - 0x01BAAB 06:BA9B: 66        .byte $66   ; 
- D 1 - I - 0x01BAAC 06:BA9C: 50        .byte $50   ; 
- D 1 - I - 0x01BAAD 06:BA9D: E6        .byte $E6   ; 
- D 1 - I - 0x01BAAE 06:BA9E: 0F        .byte $0F   ; 
- D 1 - I - 0x01BAAF 06:BA9F: 60        .byte $60   ; 
- D 1 - I - 0x01BAB0 06:BAA0: E6        .byte $E6   ; 
- D 1 - I - 0x01BAB1 06:BAA1: 06        .byte $06   ; 
- D 1 - I - 0x01BAB2 06:BAA2: C0        .byte $C0   ; 
- D 1 - I - 0x01BAB3 06:BAA3: E6        .byte $E6   ; 
- D 1 - I - 0x01BAB4 06:BAA4: 06        .byte $06   ; 
- D 1 - I - 0x01BAB5 06:BAA5: F3        .byte $F3   ; 
- D 1 - I - 0x01BAB6 06:BAA6: 60        .byte $60   ; 
- D 1 - I - 0x01BAB7 06:BAA7: E6        .byte $E6   ; 
- D 1 - I - 0x01BAB8 06:BAA8: 09        .byte $09   ; 
- D 1 - I - 0x01BAB9 06:BAA9: F0        .byte $F0   ; 
- D 1 - I - 0x01BABA 06:BAAA: 50        .byte $50   ; 
- D 1 - I - 0x01BABB 06:BAAB: E6        .byte $E6   ; 
- D 1 - I - 0x01BABC 06:BAAC: 0F        .byte $0F   ; 
- D 1 - I - 0x01BABD 06:BAAD: 60        .byte $60   ; 
- D 1 - I - 0x01BABE 06:BAAE: E6        .byte $E6   ; 
- D 1 - I - 0x01BABF 06:BAAF: 06        .byte $06   ; 
- D 1 - I - 0x01BAC0 06:BAB0: C0        .byte $C0   ; 
- D 1 - I - 0x01BAC1 06:BAB1: E6        .byte $E6   ; 
- D 1 - I - 0x01BAC2 06:BAB2: 06        .byte $06   ; 
- D 1 - I - 0x01BAC3 06:BAB3: F3        .byte $F3   ; 
- D 1 - I - 0x01BAC4 06:BAB4: 60        .byte $60   ; 
- D 1 - I - 0x01BAC5 06:BAB5: E6        .byte $E6   ; 
- D 1 - I - 0x01BAC6 06:BAB6: 09        .byte $09   ; 
- D 1 - I - 0x01BAC7 06:BAB7: FD        .byte $FD   ; 



_off014_31_BAB8_01:
- D 1 - I - 0x01BAC8 06:BAB8: D9        .byte $D9   ; 
- D 1 - I - 0x01BAC9 06:BAB9: 38        .byte $38   ; 
- D 1 - I - 0x01BACA 06:BABA: 85        .byte $85   ; 
- D 1 - I - 0x01BACB 06:BABB: 00        .byte $00   ; 
- D 1 - I - 0x01BACC 06:BABC: E3        .byte $E3   ; 
- D 1 - I - 0x01BACD 06:BABD: C8        .byte $C8   ; 
loc_FF_BABE:
sub_FD_BABE:
- D 1 - I - 0x01BACE 06:BABE: FC        .byte $FC   ; 
- D 1 - I - 0x01BACF 06:BABF: FD        .byte $FD   ; 
- D 1 - I - 0x01BAD0 06:BAC0: 3D BA     .word sub_FD_BA3D
- D 1 - I - 0x01BAD2 06:BAC2: FD        .byte $FD   ; 
- D 1 - I - 0x01BAD3 06:BAC3: 58 BB     .word sub_FD_BB58
- D 1 - I - 0x01BAD5 06:BAC5: 00        .byte $00   ; 
- D 1 - I - 0x01BAD6 06:BAC6: 10        .byte $10   ; 
- D 1 - I - 0x01BAD7 06:BAC7: FD        .byte $FD   ; 
- D 1 - I - 0x01BAD8 06:BAC8: 3D BA     .word sub_FD_BA3D
- D 1 - I - 0x01BADA 06:BACA: FD        .byte $FD   ; 
- D 1 - I - 0x01BADB 06:BACB: 58 BB     .word sub_FD_BB58
- D 1 - I - 0x01BADD 06:BACD: EB        .byte $EB   ; 
- D 1 - I - 0x01BADE 06:BACE: 50        .byte $50   ; 
- D 1 - I - 0x01BADF 06:BACF: 31        .byte $31   ; 
- D 1 - I - 0x01BAE0 06:BAD0: 10        .byte $10   ; 
- D 1 - I - 0x01BAE1 06:BAD1: 36        .byte $36   ; 
- D 1 - I - 0x01BAE2 06:BAD2: 10        .byte $10   ; 
- D 1 - I - 0x01BAE3 06:BAD3: E6        .byte $E6   ; 
- D 1 - I - 0x01BAE4 06:BAD4: 0F        .byte $0F   ; 
- D 1 - I - 0x01BAE5 06:BAD5: 30        .byte $30   ; 
- D 1 - I - 0x01BAE6 06:BAD6: E6        .byte $E6   ; 
- D 1 - I - 0x01BAE7 06:BAD7: 06        .byte $06   ; 
- D 1 - I - 0x01BAE8 06:BAD8: C0        .byte $C0   ; 
- D 1 - I - 0x01BAE9 06:BAD9: E6        .byte $E6   ; 
- D 1 - I - 0x01BAEA 06:BADA: 06        .byte $06   ; 
- D 1 - I - 0x01BAEB 06:BADB: F3        .byte $F3   ; 
- D 1 - I - 0x01BAEC 06:BADC: 30        .byte $30   ; 
- D 1 - I - 0x01BAED 06:BADD: E6        .byte $E6   ; 
- D 1 - I - 0x01BAEE 06:BADE: 09        .byte $09   ; 
- D 1 - I - 0x01BAEF 06:BADF: F0        .byte $F0   ; 
- D 1 - I - 0x01BAF0 06:BAE0: 10        .byte $10   ; 
- D 1 - I - 0x01BAF1 06:BAE1: E6        .byte $E6   ; 
- D 1 - I - 0x01BAF2 06:BAE2: 0F        .byte $0F   ; 
- D 1 - I - 0x01BAF3 06:BAE3: 30        .byte $30   ; 
- D 1 - I - 0x01BAF4 06:BAE4: E6        .byte $E6   ; 
- D 1 - I - 0x01BAF5 06:BAE5: 06        .byte $06   ; 
- D 1 - I - 0x01BAF6 06:BAE6: C0        .byte $C0   ; 
- D 1 - I - 0x01BAF7 06:BAE7: E6        .byte $E6   ; 
- D 1 - I - 0x01BAF8 06:BAE8: 06        .byte $06   ; 
- D 1 - I - 0x01BAF9 06:BAE9: F3        .byte $F3   ; 
- D 1 - I - 0x01BAFA 06:BAEA: 30        .byte $30   ; 
- D 1 - I - 0x01BAFB 06:BAEB: E6        .byte $E6   ; 
- D 1 - I - 0x01BAFC 06:BAEC: 09        .byte $09   ; 
- D 1 - I - 0x01BAFD 06:BAED: F0        .byte $F0   ; 
- D 1 - I - 0x01BAFE 06:BAEE: 10        .byte $10   ; 
- D 1 - I - 0x01BAFF 06:BAEF: 30        .byte $30   ; 
- D 1 - I - 0x01BB00 06:BAF0: E9        .byte $E9   ; 
- D 1 - I - 0x01BB01 06:BAF1: B1        .byte $B1   ; 
- D 1 - I - 0x01BB02 06:BAF2: E9        .byte $E9   ; 
- D 1 - I - 0x01BB03 06:BAF3: 30        .byte $30   ; 
- D 1 - I - 0x01BB04 06:BAF4: E3        .byte $E3   ; 
- D 1 - I - 0x01BB05 06:BAF5: 70        .byte $70   ; 
- D 1 - I - 0x01BB06 06:BAF6: 60        .byte $60   ; 
- D 1 - I - 0x01BB07 06:BAF7: 50        .byte $50   ; 
- D 1 - I - 0x01BB08 06:BAF8: E2        .byte $E2   ; 
- D 1 - I - 0x01BB09 06:BAF9: 71        .byte $71   ; 
- D 1 - I - 0x01BB0A 06:BAFA: 60        .byte $60   ; 
- D 1 - I - 0x01BB0B 06:BAFB: 50        .byte $50   ; 
- D 1 - I - 0x01BB0C 06:BAFC: 71        .byte $71   ; 
- D 1 - I - 0x01BB0D 06:BAFD: 60        .byte $60   ; 
- D 1 - I - 0x01BB0E 06:BAFE: 50        .byte $50   ; 
- D 1 - I - 0x01BB0F 06:BAFF: 70        .byte $70   ; 
- D 1 - I - 0x01BB10 06:BB00: E6        .byte $E6   ; 
- D 1 - I - 0x01BB11 06:BB01: 01        .byte $01   ; 
- D 1 - I - 0x01BB12 06:BB02: C3        .byte $C3   ; 
- D 1 - I - 0x01BB13 06:BB03: F5        .byte $F5   ; 
- D 1 - I - 0x01BB14 06:BB04: 74        .byte $74   ; 
- D 1 - I - 0x01BB15 06:BB05: E6        .byte $E6   ; 
- D 1 - I - 0x01BB16 06:BB06: 09        .byte $09   ; 
- D 1 - I - 0x01BB17 06:BB07: F0        .byte $F0   ; 
- D 1 - I - 0x01BB18 06:BB08: 50        .byte $50   ; 
- D 1 - I - 0x01BB19 06:BB09: 50        .byte $50   ; 
- D 1 - I - 0x01BB1A 06:BB0A: E6        .byte $E6   ; 
- D 1 - I - 0x01BB1B 06:BB0B: 01        .byte $01   ; 
- D 1 - I - 0x01BB1C 06:BB0C: C3        .byte $C3   ; 
- D 1 - I - 0x01BB1D 06:BB0D: F5        .byte $F5   ; 
- D 1 - I - 0x01BB1E 06:BB0E: 54        .byte $54   ; 
- D 1 - I - 0x01BB1F 06:BB0F: F0        .byte $F0   ; 
- D 1 - I - 0x01BB20 06:BB10: FE        .byte $FE   ; 
- D 1 - I - 0x01BB21 06:BB11: FF        .byte $FF   ; 
- D 1 - I - 0x01BB22 06:BB12: BE BA     .word loc_FF_BABE



sub_FD_BB14:
- D 1 - I - 0x01BB24 06:BB14: EA        .byte $EA   ; 
- D 1 - I - 0x01BB25 06:BB15: 00        .byte $00   ; 
- D 1 - I - 0x01BB26 06:BB16: EB        .byte $EB   ; 
- D 1 - I - 0x01BB27 06:BB17: 54        .byte $54   ; 
- D 1 - I - 0x01BB28 06:BB18: 05        .byte $05   ; 
- D 1 - I - 0x01BB29 06:BB19: E9        .byte $E9   ; 
- D 1 - I - 0x01BB2A 06:BB1A: 31        .byte $31   ; 
- D 1 - I - 0x01BB2B 06:BB1B: D9        .byte $D9   ; 
- D 1 - I - 0x01BB2C 06:BB1C: 70        .byte $70   ; 
- D 1 - I - 0x01BB2D 06:BB1D: 15        .byte $15   ; 
- D 1 - I - 0x01BB2E 06:BB1E: 12        .byte $12   ; 
- D 1 - I - 0x01BB2F 06:BB1F: E5        .byte $E5   ; 
- D 1 - I - 0x01BB30 06:BB20: 00        .byte $00   ; 
- D 1 - I - 0x01BB31 06:BB21: 00        .byte $00   ; 
- D 1 - I - 0x01BB32 06:BB22: 30        .byte $30   ; 
- D 1 - I - 0x01BB33 06:BB23: F5        .byte $F5   ; 
- D 1 - I - 0x01BB34 06:BB24: 30        .byte $30   ; 
- D 1 - I - 0x01BB35 06:BB25: F0        .byte $F0   ; 
- D 1 - I - 0x01BB36 06:BB26: 50        .byte $50   ; 
- D 1 - I - 0x01BB37 06:BB27: F5        .byte $F5   ; 
- D 1 - I - 0x01BB38 06:BB28: 50        .byte $50   ; 
- D 1 - I - 0x01BB39 06:BB29: F0        .byte $F0   ; 
- D 1 - I - 0x01BB3A 06:BB2A: 60        .byte $60   ; 
- D 1 - I - 0x01BB3B 06:BB2B: F5        .byte $F5   ; 
- D 1 - I - 0x01BB3C 06:BB2C: 60        .byte $60   ; 
- D 1 - I - 0x01BB3D 06:BB2D: F0        .byte $F0   ; 
- D 1 - I - 0x01BB3E 06:BB2E: 70        .byte $70   ; 
- D 1 - I - 0x01BB3F 06:BB2F: F5        .byte $F5   ; 
- D 1 - I - 0x01BB40 06:BB30: 70        .byte $70   ; 
- D 1 - I - 0x01BB41 06:BB31: F0        .byte $F0   ; 
- D 1 - I - 0x01BB42 06:BB32: 60        .byte $60   ; 
- D 1 - I - 0x01BB43 06:BB33: F5        .byte $F5   ; 
- D 1 - I - 0x01BB44 06:BB34: 60        .byte $60   ; 
- D 1 - I - 0x01BB45 06:BB35: F0        .byte $F0   ; 
- D 1 - I - 0x01BB46 06:BB36: 50        .byte $50   ; 
- D 1 - I - 0x01BB47 06:BB37: F5        .byte $F5   ; 
- D 1 - I - 0x01BB48 06:BB38: 50        .byte $50   ; 
- D 1 - I - 0x01BB49 06:BB39: F0        .byte $F0   ; 
- D 1 - I - 0x01BB4A 06:BB3A: 30        .byte $30   ; 
- D 1 - I - 0x01BB4B 06:BB3B: 30        .byte $30   ; 
- D 1 - I - 0x01BB4C 06:BB3C: 00        .byte $00   ; 
- D 1 - I - 0x01BB4D 06:BB3D: 00        .byte $00   ; 
- D 1 - I - 0x01BB4E 06:BB3E: 30        .byte $30   ; 
- D 1 - I - 0x01BB4F 06:BB3F: F5        .byte $F5   ; 
- D 1 - I - 0x01BB50 06:BB40: 30        .byte $30   ; 
- D 1 - I - 0x01BB51 06:BB41: F0        .byte $F0   ; 
- D 1 - I - 0x01BB52 06:BB42: 50        .byte $50   ; 
- D 1 - I - 0x01BB53 06:BB43: F5        .byte $F5   ; 
- D 1 - I - 0x01BB54 06:BB44: 50        .byte $50   ; 
- D 1 - I - 0x01BB55 06:BB45: F0        .byte $F0   ; 
- D 1 - I - 0x01BB56 06:BB46: 60        .byte $60   ; 
- D 1 - I - 0x01BB57 06:BB47: F5        .byte $F5   ; 
- D 1 - I - 0x01BB58 06:BB48: 60        .byte $60   ; 
- D 1 - I - 0x01BB59 06:BB49: F0        .byte $F0   ; 
- D 1 - I - 0x01BB5A 06:BB4A: 70        .byte $70   ; 
- D 1 - I - 0x01BB5B 06:BB4B: F5        .byte $F5   ; 
- D 1 - I - 0x01BB5C 06:BB4C: 70        .byte $70   ; 
- D 1 - I - 0x01BB5D 06:BB4D: F0        .byte $F0   ; 
- D 1 - I - 0x01BB5E 06:BB4E: 60        .byte $60   ; 
- D 1 - I - 0x01BB5F 06:BB4F: F5        .byte $F5   ; 
- D 1 - I - 0x01BB60 06:BB50: 60        .byte $60   ; 
- D 1 - I - 0x01BB61 06:BB51: F0        .byte $F0   ; 
- D 1 - I - 0x01BB62 06:BB52: 50        .byte $50   ; 
- D 1 - I - 0x01BB63 06:BB53: F5        .byte $F5   ; 
- D 1 - I - 0x01BB64 06:BB54: 50        .byte $50   ; 
- D 1 - I - 0x01BB65 06:BB55: EB        .byte $EB   ; 
- D 1 - I - 0x01BB66 06:BB56: 00        .byte $00   ; 
- D 1 - I - 0x01BB67 06:BB57: FD        .byte $FD   ; 
sub_FD_BB58:
- D 1 - I - 0x01BB68 06:BB58: E9        .byte $E9   ; 
- D 1 - I - 0x01BB69 06:BB59: 71        .byte $71   ; 
- D 1 - I - 0x01BB6A 06:BB5A: D9        .byte $D9   ; 
- D 1 - I - 0x01BB6B 06:BB5B: 30        .byte $30   ; 
- D 1 - I - 0x01BB6C 06:BB5C: 16        .byte $16   ; 
- D 1 - I - 0x01BB6D 06:BB5D: 14        .byte $14   ; 
- D 1 - I - 0x01BB6E 06:BB5E: EB        .byte $EB   ; 
- D 1 - I - 0x01BB6F 06:BB5F: 50        .byte $50   ; 
- D 1 - I - 0x01BB70 06:BB60: 32        .byte $32   ; 
- D 1 - I - 0x01BB71 06:BB61: E6        .byte $E6   ; 
- D 1 - I - 0x01BB72 06:BB62: 01        .byte $01   ; 
- D 1 - I - 0x01BB73 06:BB63: E3        .byte $E3   ; 
- D 1 - I - 0x01BB74 06:BB64: A0        .byte $A0   ; 
- D 1 - I - 0x01BB75 06:BB65: B1        .byte $B1   ; 
- D 1 - I - 0x01BB76 06:BB66: E2        .byte $E2   ; 
- D 1 - I - 0x01BB77 06:BB67: 05        .byte $05   ; 
- D 1 - I - 0x01BB78 06:BB68: E6        .byte $E6   ; 
- D 1 - I - 0x01BB79 06:BB69: 09        .byte $09   ; 
- D 1 - I - 0x01BB7A 06:BB6A: 16        .byte $16   ; 
- D 1 - I - 0x01BB7B 06:BB6B: 00        .byte $00   ; 
- D 1 - I - 0x01BB7C 06:BB6C: E6        .byte $E6   ; 
- D 1 - I - 0x01BB7D 06:BB6D: 0F        .byte $0F   ; 
- D 1 - I - 0x01BB7E 06:BB6E: 10        .byte $10   ; 
- D 1 - I - 0x01BB7F 06:BB6F: E6        .byte $E6   ; 
- D 1 - I - 0x01BB80 06:BB70: 06        .byte $06   ; 
- D 1 - I - 0x01BB81 06:BB71: C0        .byte $C0   ; 
- D 1 - I - 0x01BB82 06:BB72: E6        .byte $E6   ; 
- D 1 - I - 0x01BB83 06:BB73: 06        .byte $06   ; 
- D 1 - I - 0x01BB84 06:BB74: F3        .byte $F3   ; 
- D 1 - I - 0x01BB85 06:BB75: 10        .byte $10   ; 
- D 1 - I - 0x01BB86 06:BB76: E6        .byte $E6   ; 
- D 1 - I - 0x01BB87 06:BB77: 09        .byte $09   ; 
- D 1 - I - 0x01BB88 06:BB78: F0        .byte $F0   ; 
- D 1 - I - 0x01BB89 06:BB79: 00        .byte $00   ; 
- D 1 - I - 0x01BB8A 06:BB7A: E6        .byte $E6   ; 
- D 1 - I - 0x01BB8B 06:BB7B: 0F        .byte $0F   ; 
- D 1 - I - 0x01BB8C 06:BB7C: 10        .byte $10   ; 
- D 1 - I - 0x01BB8D 06:BB7D: E6        .byte $E6   ; 
- D 1 - I - 0x01BB8E 06:BB7E: 06        .byte $06   ; 
- D 1 - I - 0x01BB8F 06:BB7F: C0        .byte $C0   ; 
- D 1 - I - 0x01BB90 06:BB80: E6        .byte $E6   ; 
- D 1 - I - 0x01BB91 06:BB81: 06        .byte $06   ; 
- D 1 - I - 0x01BB92 06:BB82: F3        .byte $F3   ; 
- D 1 - I - 0x01BB93 06:BB83: 10        .byte $10   ; 
- D 1 - I - 0x01BB94 06:BB84: E6        .byte $E6   ; 
- D 1 - I - 0x01BB95 06:BB85: 09        .byte $09   ; 
- D 1 - I - 0x01BB96 06:BB86: F0        .byte $F0   ; 
- D 1 - I - 0x01BB97 06:BB87: FD        .byte $FD   ; 



_off014_31_BB88_02:
- D 1 - I - 0x01BB98 06:BB88: D9        .byte $D9   ; 
- D 1 - I - 0x01BB99 06:BB89: 00        .byte $00   ; 
- D 1 - I - 0x01BB9A 06:BB8A: E3        .byte $E3   ; 
- D 1 - I - 0x01BB9B 06:BB8B: C8        .byte $C8   ; 
loc_FF_BB8C:
sub_FD_BB8C:
- D 1 - I - 0x01BB9C 06:BB8C: FC        .byte $FC   ; 
- D 1 - I - 0x01BB9D 06:BB8D: FD        .byte $FD   ; 
- D 1 - I - 0x01BB9E 06:BB8E: 1D BC     .word sub_FD_BC1D
- D 1 - I - 0x01BBA0 06:BB90: D9        .byte $D9   ; 
- D 1 - I - 0x01BBA1 06:BB91: 15        .byte $15   ; 
- D 1 - I - 0x01BBA2 06:BB92: E3        .byte $E3   ; 
- D 1 - I - 0x01BBA3 06:BB93: 00        .byte $00   ; 
- D 1 - I - 0x01BBA4 06:BB94: 11        .byte $11   ; 
- D 1 - I - 0x01BBA5 06:BB95: D1        .byte $D1   ; 
- D 1 - I - 0x01BBA6 06:BB96: 01        .byte $01   ; 
- D 1 - I - 0x01BBA7 06:BB97: 13        .byte $13   ; 
- D 1 - I - 0x01BBA8 06:BB98: 14        .byte $14   ; 
- D 1 - I - 0x01BBA9 06:BB99: D1        .byte $D1   ; 
- D 1 - I - 0x01BBAA 06:BB9A: 02        .byte $02   ; 
- D 1 - I - 0x01BBAB 06:BB9B: 18        .byte $18   ; 
- D 1 - I - 0x01BBAC 06:BB9C: D1        .byte $D1   ; 
- D 1 - I - 0x01BBAD 06:BB9D: 01        .byte $01   ; 
- D 1 - I - 0x01BBAE 06:BB9E: 13        .byte $13   ; 
- D 1 - I - 0x01BBAF 06:BB9F: 14        .byte $14   ; 
- D 1 - I - 0x01BBB0 06:BBA0: D1        .byte $D1   ; 
- D 1 - I - 0x01BBB1 06:BBA1: 02        .byte $02   ; 
- D 1 - I - 0x01BBB2 06:BBA2: 18        .byte $18   ; 
- D 1 - I - 0x01BBB3 06:BBA3: D1        .byte $D1   ; 
- D 1 - I - 0x01BBB4 06:BBA4: 01        .byte $01   ; 
- D 1 - I - 0x01BBB5 06:BBA5: 13        .byte $13   ; 
- D 1 - I - 0x01BBB6 06:BBA6: 14        .byte $14   ; 
- D 1 - I - 0x01BBB7 06:BBA7: D9        .byte $D9   ; 
- D 1 - I - 0x01BBB8 06:BBA8: 15        .byte $15   ; 
- D 1 - I - 0x01BBB9 06:BBA9: E3        .byte $E3   ; 
- D 1 - I - 0x01BBBA 06:BBAA: 00        .byte $00   ; 
- D 1 - I - 0x01BBBB 06:BBAB: 11        .byte $11   ; 
- D 1 - I - 0x01BBBC 06:BBAC: D1        .byte $D1   ; 
- D 1 - I - 0x01BBBD 06:BBAD: 01        .byte $01   ; 
- D 1 - I - 0x01BBBE 06:BBAE: E3        .byte $E3   ; 
- D 1 - I - 0x01BBBF 06:BBAF: 13        .byte $13   ; 
- D 1 - I - 0x01BBC0 06:BBB0: 14        .byte $14   ; 
- D 1 - I - 0x01BBC1 06:BBB1: D9        .byte $D9   ; 
- D 1 - I - 0x01BBC2 06:BBB2: 15        .byte $15   ; 
- D 1 - I - 0x01BBC3 06:BBB3: E3        .byte $E3   ; 
- D 1 - I - 0x01BBC4 06:BBB4: 00        .byte $00   ; 
- D 1 - I - 0x01BBC5 06:BBB5: 11        .byte $11   ; 
- D 1 - I - 0x01BBC6 06:BBB6: D1        .byte $D1   ; 
- D 1 - I - 0x01BBC7 06:BBB7: 01        .byte $01   ; 
- D 1 - I - 0x01BBC8 06:BBB8: E3        .byte $E3   ; 
- D 1 - I - 0x01BBC9 06:BBB9: 13        .byte $13   ; 
- D 1 - I - 0x01BBCA 06:BBBA: 14        .byte $14   ; 
- D 1 - I - 0x01BBCB 06:BBBB: D9        .byte $D9   ; 
- D 1 - I - 0x01BBCC 06:BBBC: 15        .byte $15   ; 
- D 1 - I - 0x01BBCD 06:BBBD: E3        .byte $E3   ; 
- D 1 - I - 0x01BBCE 06:BBBE: 00        .byte $00   ; 
- D 1 - I - 0x01BBCF 06:BBBF: 10        .byte $10   ; 
- D 1 - I - 0x01BBD0 06:BBC0: FD        .byte $FD   ; 
- D 1 - I - 0x01BBD1 06:BBC1: 1D BC     .word sub_FD_BC1D
- D 1 - I - 0x01BBD3 06:BBC3: D9        .byte $D9   ; 
- D 1 - I - 0x01BBD4 06:BBC4: 15        .byte $15   ; 
- D 1 - I - 0x01BBD5 06:BBC5: E3        .byte $E3   ; 
- D 1 - I - 0x01BBD6 06:BBC6: 00        .byte $00   ; 
- D 1 - I - 0x01BBD7 06:BBC7: 11        .byte $11   ; 
- D 1 - I - 0x01BBD8 06:BBC8: D1        .byte $D1   ; 
- D 1 - I - 0x01BBD9 06:BBC9: 02        .byte $02   ; 
- D 1 - I - 0x01BBDA 06:BBCA: 13        .byte $13   ; 
- D 1 - I - 0x01BBDB 06:BBCB: 14        .byte $14   ; 
- D 1 - I - 0x01BBDC 06:BBCC: 18        .byte $18   ; 
- D 1 - I - 0x01BBDD 06:BBCD: 13        .byte $13   ; 
- D 1 - I - 0x01BBDE 06:BBCE: 14        .byte $14   ; 
- D 1 - I - 0x01BBDF 06:BBCF: 18        .byte $18   ; 
- D 1 - I - 0x01BBE0 06:BBD0: 13        .byte $13   ; 
- D 1 - I - 0x01BBE1 06:BBD1: 14        .byte $14   ; 
- D 1 - I - 0x01BBE2 06:BBD2: D9        .byte $D9   ; 
- D 1 - I - 0x01BBE3 06:BBD3: 15        .byte $15   ; 
- D 1 - I - 0x01BBE4 06:BBD4: 00        .byte $00   ; 
- D 1 - I - 0x01BBE5 06:BBD5: 11        .byte $11   ; 
- D 1 - I - 0x01BBE6 06:BBD6: D1        .byte $D1   ; 
- D 1 - I - 0x01BBE7 06:BBD7: 02        .byte $02   ; 
- D 1 - I - 0x01BBE8 06:BBD8: 13        .byte $13   ; 
- D 1 - I - 0x01BBE9 06:BBD9: 14        .byte $14   ; 
- D 1 - I - 0x01BBEA 06:BBDA: D9        .byte $D9   ; 
- D 1 - I - 0x01BBEB 06:BBDB: 15        .byte $15   ; 
- D 1 - I - 0x01BBEC 06:BBDC: 00        .byte $00   ; 
- D 1 - I - 0x01BBED 06:BBDD: 11        .byte $11   ; 
- D 1 - I - 0x01BBEE 06:BBDE: D1        .byte $D1   ; 
- D 1 - I - 0x01BBEF 06:BBDF: 02        .byte $02   ; 
- D 1 - I - 0x01BBF0 06:BBE0: E3        .byte $E3   ; 
- D 1 - I - 0x01BBF1 06:BBE1: 13        .byte $13   ; 
- D 1 - I - 0x01BBF2 06:BBE2: 14        .byte $14   ; 
- D 1 - I - 0x01BBF3 06:BBE3: D9        .byte $D9   ; 
- D 1 - I - 0x01BBF4 06:BBE4: 15        .byte $15   ; 
- D 1 - I - 0x01BBF5 06:BBE5: 10        .byte $10   ; 
- D 1 - I - 0x01BBF6 06:BBE6: 31        .byte $31   ; 
- D 1 - I - 0x01BBF7 06:BBE7: D1        .byte $D1   ; 
- D 1 - I - 0x01BBF8 06:BBE8: 02        .byte $02   ; 
- D 1 - I - 0x01BBF9 06:BBE9: 33        .byte $33   ; 
- D 1 - I - 0x01BBFA 06:BBEA: 34        .byte $34   ; 
- D 1 - I - 0x01BBFB 06:BBEB: 38        .byte $38   ; 
- D 1 - I - 0x01BBFC 06:BBEC: 33        .byte $33   ; 
- D 1 - I - 0x01BBFD 06:BBED: 34        .byte $34   ; 
- D 1 - I - 0x01BBFE 06:BBEE: 38        .byte $38   ; 
- D 1 - I - 0x01BBFF 06:BBEF: 33        .byte $33   ; 
- D 1 - I - 0x01BC00 06:BBF0: 34        .byte $34   ; 
- D 1 - I - 0x01BC01 06:BBF1: D9        .byte $D9   ; 
- D 1 - I - 0x01BC02 06:BBF2: 15        .byte $15   ; 
- D 1 - I - 0x01BC03 06:BBF3: 10        .byte $10   ; 
- D 1 - I - 0x01BC04 06:BBF4: 31        .byte $31   ; 
- D 1 - I - 0x01BC05 06:BBF5: D1        .byte $D1   ; 
- D 1 - I - 0x01BC06 06:BBF6: 02        .byte $02   ; 
- D 1 - I - 0x01BC07 06:BBF7: 33        .byte $33   ; 
- D 1 - I - 0x01BC08 06:BBF8: 34        .byte $34   ; 
- D 1 - I - 0x01BC09 06:BBF9: D9        .byte $D9   ; 
- D 1 - I - 0x01BC0A 06:BBFA: 15        .byte $15   ; 
- D 1 - I - 0x01BC0B 06:BBFB: 10        .byte $10   ; 
- D 1 - I - 0x01BC0C 06:BBFC: 31        .byte $31   ; 
- D 1 - I - 0x01BC0D 06:BBFD: D1        .byte $D1   ; 
- D 1 - I - 0x01BC0E 06:BBFE: 02        .byte $02   ; 
- D 1 - I - 0x01BC0F 06:BBFF: 33        .byte $33   ; 
- D 1 - I - 0x01BC10 06:BC00: 34        .byte $34   ; 
- D 1 - I - 0x01BC11 06:BC01: D9        .byte $D9   ; 
- D 1 - I - 0x01BC12 06:BC02: 15        .byte $15   ; 
- D 1 - I - 0x01BC13 06:BC03: 10        .byte $10   ; 
- D 1 - I - 0x01BC14 06:BC04: 30        .byte $30   ; 
- D 1 - I - 0x01BC15 06:BC05: D9        .byte $D9   ; 
- D 1 - I - 0x01BC16 06:BC06: 1A        .byte $1A   ; 
- D 1 - I - 0x01BC17 06:BC07: E3        .byte $E3   ; 
- D 1 - I - 0x01BC18 06:BC08: 70        .byte $70   ; 
- D 1 - I - 0x01BC19 06:BC09: 60        .byte $60   ; 
- D 1 - I - 0x01BC1A 06:BC0A: 50        .byte $50   ; 
- D 1 - I - 0x01BC1B 06:BC0B: 71        .byte $71   ; 
- D 1 - I - 0x01BC1C 06:BC0C: 60        .byte $60   ; 
- D 1 - I - 0x01BC1D 06:BC0D: 50        .byte $50   ; 
- D 1 - I - 0x01BC1E 06:BC0E: 71        .byte $71   ; 
- D 1 - I - 0x01BC1F 06:BC0F: 60        .byte $60   ; 
- D 1 - I - 0x01BC20 06:BC10: 50        .byte $50   ; 
- D 1 - I - 0x01BC21 06:BC11: 70        .byte $70   ; 
- D 1 - I - 0x01BC22 06:BC12: C0        .byte $C0   ; 
- D 1 - I - 0x01BC23 06:BC13: D9        .byte $D9   ; 
- D 1 - I - 0x01BC24 06:BC14: 12        .byte $12   ; 
- D 1 - I - 0x01BC25 06:BC15: E3        .byte $E3   ; 
- D 1 - I - 0x01BC26 06:BC16: 70        .byte $70   ; 
- D 1 - I - 0x01BC27 06:BC17: 70        .byte $70   ; 
- D 1 - I - 0x01BC28 06:BC18: C0        .byte $C0   ; 
- D 1 - I - 0x01BC29 06:BC19: FE        .byte $FE   ; 
- D 1 - I - 0x01BC2A 06:BC1A: FF        .byte $FF   ; 
- D 1 - I - 0x01BC2B 06:BC1B: 8C BB     .word loc_FF_BB8C



sub_FD_BC1D:
- D 1 - I - 0x01BC2D 06:BC1D: EA        .byte $EA   ; 
- D 1 - I - 0x01BC2E 06:BC1E: 00        .byte $00   ; 
- D 1 - I - 0x01BC2F 06:BC1F: D9        .byte $D9   ; 
- D 1 - I - 0x01BC30 06:BC20: 00        .byte $00   ; 
- D 1 - I - 0x01BC31 06:BC21: E4        .byte $E4   ; 
- D 1 - I - 0x01BC32 06:BC22: 00        .byte $00   ; 
- D 1 - I - 0x01BC33 06:BC23: 00        .byte $00   ; 
- D 1 - I - 0x01BC34 06:BC24: E3        .byte $E3   ; 
- D 1 - I - 0x01BC35 06:BC25: 30        .byte $30   ; 
- D 1 - I - 0x01BC36 06:BC26: 00        .byte $00   ; 
- D 1 - I - 0x01BC37 06:BC27: 50        .byte $50   ; 
- D 1 - I - 0x01BC38 06:BC28: 00        .byte $00   ; 
- D 1 - I - 0x01BC39 06:BC29: 60        .byte $60   ; 
- D 1 - I - 0x01BC3A 06:BC2A: 00        .byte $00   ; 
- D 1 - I - 0x01BC3B 06:BC2B: 70        .byte $70   ; 
- D 1 - I - 0x01BC3C 06:BC2C: 00        .byte $00   ; 
- D 1 - I - 0x01BC3D 06:BC2D: 60        .byte $60   ; 
- D 1 - I - 0x01BC3E 06:BC2E: 00        .byte $00   ; 
- D 1 - I - 0x01BC3F 06:BC2F: 50        .byte $50   ; 
- D 1 - I - 0x01BC40 06:BC30: 00        .byte $00   ; 
- D 1 - I - 0x01BC41 06:BC31: 30        .byte $30   ; 
- D 1 - I - 0x01BC42 06:BC32: 30        .byte $30   ; 
- D 1 - I - 0x01BC43 06:BC33: E4        .byte $E4   ; 
- D 1 - I - 0x01BC44 06:BC34: 00        .byte $00   ; 
- D 1 - I - 0x01BC45 06:BC35: 00        .byte $00   ; 
- D 1 - I - 0x01BC46 06:BC36: E3        .byte $E3   ; 
- D 1 - I - 0x01BC47 06:BC37: 30        .byte $30   ; 
- D 1 - I - 0x01BC48 06:BC38: 00        .byte $00   ; 
- D 1 - I - 0x01BC49 06:BC39: 50        .byte $50   ; 
- D 1 - I - 0x01BC4A 06:BC3A: 00        .byte $00   ; 
- D 1 - I - 0x01BC4B 06:BC3B: 60        .byte $60   ; 
- D 1 - I - 0x01BC4C 06:BC3C: 00        .byte $00   ; 
- D 1 - I - 0x01BC4D 06:BC3D: 70        .byte $70   ; 
- D 1 - I - 0x01BC4E 06:BC3E: 00        .byte $00   ; 
- D 1 - I - 0x01BC4F 06:BC3F: 60        .byte $60   ; 
- D 1 - I - 0x01BC50 06:BC40: 00        .byte $00   ; 
- D 1 - I - 0x01BC51 06:BC41: 50        .byte $50   ; 
- D 1 - I - 0x01BC52 06:BC42: 00        .byte $00   ; 
- D 1 - I - 0x01BC53 06:BC43: FD        .byte $FD   ; 



_off014_31_BC44_03:
- D 1 - I - 0x01BC54 06:BC44: D1        .byte $D1   ; 
- D 1 - I - 0x01BC55 06:BC45: B0        .byte $B0   ; 
- D 1 - I - 0x01BC56 06:BC46: 22        .byte $22   ; 
- D 1 - I - 0x01BC57 06:BC47: B0        .byte $B0   ; 
- D 1 - I - 0x01BC58 06:BC48: 23        .byte $23   ; 
- D 1 - I - 0x01BC59 06:BC49: FB        .byte $FB   ; 
- D 1 - I - 0x01BC5A 06:BC4A: A0        .byte $A0   ; 
- D 1 - I - 0x01BC5B 06:BC4B: 27        .byte $27   ; 
- D 1 - I - 0x01BC5C 06:BC4C: B0        .byte $B0   ; 
- D 1 - I - 0x01BC5D 06:BC4D: 27        .byte $27   ; 
- D 1 - I - 0x01BC5E 06:BC4E: FE        .byte $FE   ; 
- D 1 - I - 0x01BC5F 06:BC4F: 02        .byte $02   ; 
- D 1 - I - 0x01BC60 06:BC50: A0        .byte $A0   ; 
- D 1 - I - 0x01BC61 06:BC51: 27        .byte $27   ; 
- D 1 - I - 0x01BC62 06:BC52: B0        .byte $B0   ; 
- D 1 - I - 0x01BC63 06:BC53: 22        .byte $22   ; 
- D 1 - I - 0x01BC64 06:BC54: B0        .byte $B0   ; 
- D 1 - I - 0x01BC65 06:BC55: 23        .byte $23   ; 
- D 1 - I - 0x01BC66 06:BC56: A0        .byte $A0   ; 
- D 1 - I - 0x01BC67 06:BC57: 27        .byte $27   ; 
- D 1 - I - 0x01BC68 06:BC58: A0        .byte $A0   ; 
- D 1 - I - 0x01BC69 06:BC59: 27        .byte $27   ; 
loc_FF_BC5A:
sub_FD_BC5A:
- D 1 - I - 0x01BC6A 06:BC5A: FC        .byte $FC   ; 
- D 1 - I - 0x01BC6B 06:BC5B: FD        .byte $FD   ; 
- D 1 - I - 0x01BC6C 06:BC5C: B1 BC     .word sub_FD_BCB1
- D 1 - I - 0x01BC6E 06:BC5E: FD        .byte $FD   ; 
- D 1 - I - 0x01BC6F 06:BC5F: F1 BC     .word sub_FD_BCF1
- D 1 - I - 0x01BC71 06:BC61: FD        .byte $FD   ; 
- D 1 - I - 0x01BC72 06:BC62: B1 BC     .word sub_FD_BCB1
- D 1 - I - 0x01BC74 06:BC64: FD        .byte $FD   ; 
- D 1 - I - 0x01BC75 06:BC65: F1 BC     .word sub_FD_BCF1
- D 1 - I - 0x01BC77 06:BC67: C0        .byte $C0   ; 
- D 1 - I - 0x01BC78 06:BC68: 27        .byte $27   ; 
- D 1 - I - 0x01BC79 06:BC69: B0        .byte $B0   ; 
- D 1 - I - 0x01BC7A 06:BC6A: C7        .byte $C7   ; 
- D 1 - I - 0x01BC7B 06:BC6B: A0        .byte $A0   ; 
- D 1 - I - 0x01BC7C 06:BC6C: 27        .byte $27   ; 
- D 1 - I - 0x01BC7D 06:BC6D: B0        .byte $B0   ; 
- D 1 - I - 0x01BC7E 06:BC6E: C7        .byte $C7   ; 
- D 1 - I - 0x01BC7F 06:BC6F: A0        .byte $A0   ; 
- D 1 - I - 0x01BC80 06:BC70: 27        .byte $27   ; 
- D 1 - I - 0x01BC81 06:BC71: B3        .byte $B3   ; 
- D 1 - I - 0x01BC82 06:BC72: B4        .byte $B4   ; 
- D 1 - I - 0x01BC83 06:BC73: A0        .byte $A0   ; 
- D 1 - I - 0x01BC84 06:BC74: D1        .byte $D1   ; 
- D 1 - I - 0x01BC85 06:BC75: 27        .byte $27   ; 
- D 1 - I - 0x01BC86 06:BC76: A0        .byte $A0   ; 
- D 1 - I - 0x01BC87 06:BC77: D1        .byte $D1   ; 
- D 1 - I - 0x01BC88 06:BC78: 27        .byte $27   ; 
- D 1 - I - 0x01BC89 06:BC79: B0        .byte $B0   ; 
- D 1 - I - 0x01BC8A 06:BC7A: 27        .byte $27   ; 
- D 1 - I - 0x01BC8B 06:BC7B: B0        .byte $B0   ; 
- D 1 - I - 0x01BC8C 06:BC7C: 27        .byte $27   ; 
- D 1 - I - 0x01BC8D 06:BC7D: A0        .byte $A0   ; 
- D 1 - I - 0x01BC8E 06:BC7E: D1        .byte $D1   ; 
- D 1 - I - 0x01BC8F 06:BC7F: 27        .byte $27   ; 
- D 1 - I - 0x01BC90 06:BC80: A0        .byte $A0   ; 
- D 1 - I - 0x01BC91 06:BC81: D1        .byte $D1   ; 
- D 1 - I - 0x01BC92 06:BC82: 27        .byte $27   ; 
- D 1 - I - 0x01BC93 06:BC83: B0        .byte $B0   ; 
- D 1 - I - 0x01BC94 06:BC84: 27        .byte $27   ; 
- D 1 - I - 0x01BC95 06:BC85: B3        .byte $B3   ; 
- D 1 - I - 0x01BC96 06:BC86: B4        .byte $B4   ; 
- D 1 - I - 0x01BC97 06:BC87: A0        .byte $A0   ; 
- D 1 - I - 0x01BC98 06:BC88: D1        .byte $D1   ; 
- D 1 - I - 0x01BC99 06:BC89: 27        .byte $27   ; 
- D 1 - I - 0x01BC9A 06:BC8A: A0        .byte $A0   ; 
- D 1 - I - 0x01BC9B 06:BC8B: D1        .byte $D1   ; 
- D 1 - I - 0x01BC9C 06:BC8C: 27        .byte $27   ; 
- D 1 - I - 0x01BC9D 06:BC8D: A0        .byte $A0   ; 
- D 1 - I - 0x01BC9E 06:BC8E: 27        .byte $27   ; 
- D 1 - I - 0x01BC9F 06:BC8F: B0        .byte $B0   ; 
- D 1 - I - 0x01BCA0 06:BC90: 27        .byte $27   ; 
- D 1 - I - 0x01BCA1 06:BC91: A0        .byte $A0   ; 
- D 1 - I - 0x01BCA2 06:BC92: 27        .byte $27   ; 
- D 1 - I - 0x01BCA3 06:BC93: A0        .byte $A0   ; 
- D 1 - I - 0x01BCA4 06:BC94: 27        .byte $27   ; 
- D 1 - I - 0x01BCA5 06:BC95: B0        .byte $B0   ; 
- D 1 - I - 0x01BCA6 06:BC96: C7        .byte $C7   ; 
- D 1 - I - 0x01BCA7 06:BC97: B3        .byte $B3   ; 
- D 1 - I - 0x01BCA8 06:BC98: B4        .byte $B4   ; 
- D 1 - I - 0x01BCA9 06:BC99: A0        .byte $A0   ; 
- D 1 - I - 0x01BCAA 06:BC9A: 27        .byte $27   ; 
- D 1 - I - 0x01BCAB 06:BC9B: A0        .byte $A0   ; 
- D 1 - I - 0x01BCAC 06:BC9C: 27        .byte $27   ; 
- D 1 - I - 0x01BCAD 06:BC9D: C0        .byte $C0   ; 
- D 1 - I - 0x01BCAE 06:BC9E: 27        .byte $27   ; 
- D 1 - I - 0x01BCAF 06:BC9F: B0        .byte $B0   ; 
- D 1 - I - 0x01BCB0 06:BCA0: 27        .byte $27   ; 
- D 1 - I - 0x01BCB1 06:BCA1: A0        .byte $A0   ; 
- D 1 - I - 0x01BCB2 06:BCA2: 27        .byte $27   ; 
- D 1 - I - 0x01BCB3 06:BCA3: B0        .byte $B0   ; 
- D 1 - I - 0x01BCB4 06:BCA4: 27        .byte $27   ; 
- D 1 - I - 0x01BCB5 06:BCA5: B0        .byte $B0   ; 
- D 1 - I - 0x01BCB6 06:BCA6: 27        .byte $27   ; 
- D 1 - I - 0x01BCB7 06:BCA7: A0        .byte $A0   ; 
- D 1 - I - 0x01BCB8 06:BCA8: 27        .byte $27   ; 
- D 1 - I - 0x01BCB9 06:BCA9: A0        .byte $A0   ; 
- D 1 - I - 0x01BCBA 06:BCAA: 27        .byte $27   ; 
- D 1 - I - 0x01BCBB 06:BCAB: B0        .byte $B0   ; 
- D 1 - I - 0x01BCBC 06:BCAC: 27        .byte $27   ; 
- D 1 - I - 0x01BCBD 06:BCAD: FE        .byte $FE   ; 
- D 1 - I - 0x01BCBE 06:BCAE: FF        .byte $FF   ; 
- D 1 - I - 0x01BCBF 06:BCAF: 5A BC     .word loc_FF_BC5A



sub_FD_BCB1:
- D 1 - I - 0x01BCC1 06:BCB1: D1        .byte $D1   ; 
- D 1 - I - 0x01BCC2 06:BCB2: A0        .byte $A0   ; 
- D 1 - I - 0x01BCC3 06:BCB3: D1        .byte $D1   ; 
- D 1 - I - 0x01BCC4 06:BCB4: 27        .byte $27   ; 
- D 1 - I - 0x01BCC5 06:BCB5: A0        .byte $A0   ; 
- D 1 - I - 0x01BCC6 06:BCB6: D1        .byte $D1   ; 
- D 1 - I - 0x01BCC7 06:BCB7: 27        .byte $27   ; 
- D 1 - I - 0x01BCC8 06:BCB8: A0        .byte $A0   ; 
- D 1 - I - 0x01BCC9 06:BCB9: 27        .byte $27   ; 
- D 1 - I - 0x01BCCA 06:BCBA: B0        .byte $B0   ; 
- D 1 - I - 0x01BCCB 06:BCBB: C7        .byte $C7   ; 
- D 1 - I - 0x01BCCC 06:BCBC: A0        .byte $A0   ; 
- D 1 - I - 0x01BCCD 06:BCBD: 27        .byte $27   ; 
- D 1 - I - 0x01BCCE 06:BCBE: B0        .byte $B0   ; 
- D 1 - I - 0x01BCCF 06:BCBF: C7        .byte $C7   ; 
- D 1 - I - 0x01BCD0 06:BCC0: A0        .byte $A0   ; 
- D 1 - I - 0x01BCD1 06:BCC1: 27        .byte $27   ; 
- D 1 - I - 0x01BCD2 06:BCC2: B0        .byte $B0   ; 
- D 1 - I - 0x01BCD3 06:BCC3: C7        .byte $C7   ; 
- D 1 - I - 0x01BCD4 06:BCC4: A0        .byte $A0   ; 
- D 1 - I - 0x01BCD5 06:BCC5: 27        .byte $27   ; 
- D 1 - I - 0x01BCD6 06:BCC6: B0        .byte $B0   ; 
- D 1 - I - 0x01BCD7 06:BCC7: C7        .byte $C7   ; 
- D 1 - I - 0x01BCD8 06:BCC8: A0        .byte $A0   ; 
- D 1 - I - 0x01BCD9 06:BCC9: 27        .byte $27   ; 
- D 1 - I - 0x01BCDA 06:BCCA: B0        .byte $B0   ; 
- D 1 - I - 0x01BCDB 06:BCCB: C7        .byte $C7   ; 
- D 1 - I - 0x01BCDC 06:BCCC: A0        .byte $A0   ; 
- D 1 - I - 0x01BCDD 06:BCCD: 27        .byte $27   ; 
- D 1 - I - 0x01BCDE 06:BCCE: B3        .byte $B3   ; 
- D 1 - I - 0x01BCDF 06:BCCF: B4        .byte $B4   ; 
- D 1 - I - 0x01BCE0 06:BCD0: A0        .byte $A0   ; 
- D 1 - I - 0x01BCE1 06:BCD1: 27        .byte $27   ; 
- D 1 - I - 0x01BCE2 06:BCD2: B0        .byte $B0   ; 
- D 1 - I - 0x01BCE3 06:BCD3: 27        .byte $27   ; 
- D 1 - I - 0x01BCE4 06:BCD4: A0        .byte $A0   ; 
- D 1 - I - 0x01BCE5 06:BCD5: 27        .byte $27   ; 
- D 1 - I - 0x01BCE6 06:BCD6: A0        .byte $A0   ; 
- D 1 - I - 0x01BCE7 06:BCD7: 27        .byte $27   ; 
- D 1 - I - 0x01BCE8 06:BCD8: A0        .byte $A0   ; 
- D 1 - I - 0x01BCE9 06:BCD9: 27        .byte $27   ; 
- D 1 - I - 0x01BCEA 06:BCDA: B0        .byte $B0   ; 
- D 1 - I - 0x01BCEB 06:BCDB: C7        .byte $C7   ; 
- D 1 - I - 0x01BCEC 06:BCDC: A0        .byte $A0   ; 
- D 1 - I - 0x01BCED 06:BCDD: 27        .byte $27   ; 
- D 1 - I - 0x01BCEE 06:BCDE: B0        .byte $B0   ; 
- D 1 - I - 0x01BCEF 06:BCDF: C7        .byte $C7   ; 
- D 1 - I - 0x01BCF0 06:BCE0: A0        .byte $A0   ; 
- D 1 - I - 0x01BCF1 06:BCE1: 27        .byte $27   ; 
- D 1 - I - 0x01BCF2 06:BCE2: B0        .byte $B0   ; 
- D 1 - I - 0x01BCF3 06:BCE3: C7        .byte $C7   ; 
- D 1 - I - 0x01BCF4 06:BCE4: A0        .byte $A0   ; 
- D 1 - I - 0x01BCF5 06:BCE5: 27        .byte $27   ; 
- D 1 - I - 0x01BCF6 06:BCE6: B0        .byte $B0   ; 
- D 1 - I - 0x01BCF7 06:BCE7: C7        .byte $C7   ; 
- D 1 - I - 0x01BCF8 06:BCE8: A0        .byte $A0   ; 
- D 1 - I - 0x01BCF9 06:BCE9: 27        .byte $27   ; 
- D 1 - I - 0x01BCFA 06:BCEA: B0        .byte $B0   ; 
- D 1 - I - 0x01BCFB 06:BCEB: C7        .byte $C7   ; 
- D 1 - I - 0x01BCFC 06:BCEC: A0        .byte $A0   ; 
- D 1 - I - 0x01BCFD 06:BCED: 27        .byte $27   ; 
- D 1 - I - 0x01BCFE 06:BCEE: A3        .byte $A3   ; 
- D 1 - I - 0x01BCFF 06:BCEF: A4        .byte $A4   ; 
- D 1 - I - 0x01BD00 06:BCF0: FD        .byte $FD   ; 
sub_FD_BCF1:
- D 1 - I - 0x01BD01 06:BCF1: D1        .byte $D1   ; 
- D 1 - I - 0x01BD02 06:BCF2: A0        .byte $A0   ; 
- D 1 - I - 0x01BD03 06:BCF3: D1        .byte $D1   ; 
- D 1 - I - 0x01BD04 06:BCF4: 27        .byte $27   ; 
- D 1 - I - 0x01BD05 06:BCF5: A0        .byte $A0   ; 
- D 1 - I - 0x01BD06 06:BCF6: D1        .byte $D1   ; 
- D 1 - I - 0x01BD07 06:BCF7: 27        .byte $27   ; 
- D 1 - I - 0x01BD08 06:BCF8: C0        .byte $C0   ; 
- D 1 - I - 0x01BD09 06:BCF9: 27        .byte $27   ; 
- D 1 - I - 0x01BD0A 06:BCFA: B0        .byte $B0   ; 
- D 1 - I - 0x01BD0B 06:BCFB: C7        .byte $C7   ; 
- D 1 - I - 0x01BD0C 06:BCFC: A0        .byte $A0   ; 
- D 1 - I - 0x01BD0D 06:BCFD: 27        .byte $27   ; 
- D 1 - I - 0x01BD0E 06:BCFE: B0        .byte $B0   ; 
- D 1 - I - 0x01BD0F 06:BCFF: C7        .byte $C7   ; 
- D 1 - I - 0x01BD10 06:BD00: A0        .byte $A0   ; 
- D 1 - I - 0x01BD11 06:BD01: 27        .byte $27   ; 
- D 1 - I - 0x01BD12 06:BD02: B3        .byte $B3   ; 
- D 1 - I - 0x01BD13 06:BD03: B4        .byte $B4   ; 
- D 1 - I - 0x01BD14 06:BD04: A0        .byte $A0   ; 
- D 1 - I - 0x01BD15 06:BD05: D1        .byte $D1   ; 
- D 1 - I - 0x01BD16 06:BD06: 27        .byte $27   ; 
- D 1 - I - 0x01BD17 06:BD07: A0        .byte $A0   ; 
- D 1 - I - 0x01BD18 06:BD08: D1        .byte $D1   ; 
- D 1 - I - 0x01BD19 06:BD09: 27        .byte $27   ; 
- D 1 - I - 0x01BD1A 06:BD0A: B0        .byte $B0   ; 
- D 1 - I - 0x01BD1B 06:BD0B: 27        .byte $27   ; 
- D 1 - I - 0x01BD1C 06:BD0C: B0        .byte $B0   ; 
- D 1 - I - 0x01BD1D 06:BD0D: 27        .byte $27   ; 
- D 1 - I - 0x01BD1E 06:BD0E: A0        .byte $A0   ; 
- D 1 - I - 0x01BD1F 06:BD0F: D1        .byte $D1   ; 
- D 1 - I - 0x01BD20 06:BD10: 27        .byte $27   ; 
- D 1 - I - 0x01BD21 06:BD11: A0        .byte $A0   ; 
- D 1 - I - 0x01BD22 06:BD12: D1        .byte $D1   ; 
- D 1 - I - 0x01BD23 06:BD13: 27        .byte $27   ; 
- D 1 - I - 0x01BD24 06:BD14: B0        .byte $B0   ; 
- D 1 - I - 0x01BD25 06:BD15: 27        .byte $27   ; 
- D 1 - I - 0x01BD26 06:BD16: B3        .byte $B3   ; 
- D 1 - I - 0x01BD27 06:BD17: B4        .byte $B4   ; 
- D 1 - I - 0x01BD28 06:BD18: A0        .byte $A0   ; 
- D 1 - I - 0x01BD29 06:BD19: D1        .byte $D1   ; 
- D 1 - I - 0x01BD2A 06:BD1A: 27        .byte $27   ; 
- D 1 - I - 0x01BD2B 06:BD1B: A0        .byte $A0   ; 
- D 1 - I - 0x01BD2C 06:BD1C: D1        .byte $D1   ; 
- D 1 - I - 0x01BD2D 06:BD1D: 27        .byte $27   ; 
- D 1 - I - 0x01BD2E 06:BD1E: FD        .byte $FD   ; 



_off014_33_BD1F_00:
- D 1 - I - 0x01BD2F 06:BD1F: EA        .byte $EA   ; 
- D 1 - I - 0x01BD30 06:BD20: 01        .byte $01   ; 
- D 1 - I - 0x01BD31 06:BD21: E9        .byte $E9   ; 
- D 1 - I - 0x01BD32 06:BD22: 31        .byte $31   ; 
- D 1 - I - 0x01BD33 06:BD23: D7        .byte $D7   ; 
- D 1 - I - 0x01BD34 06:BD24: 75        .byte $75   ; 
- D 1 - I - 0x01BD35 06:BD25: 83        .byte $83   ; 
- D 1 - I - 0x01BD36 06:BD26: 16        .byte $16   ; 
- D 1 - I - 0x01BD37 06:BD27: E3        .byte $E3   ; 
- D 1 - I - 0x01BD38 06:BD28: C0        .byte $C0   ; 
- D 1 - I - 0x01BD39 06:BD29: 90        .byte $90   ; 
- D 1 - I - 0x01BD3A 06:BD2A: 90        .byte $90   ; 
- D 1 - I - 0x01BD3B 06:BD2B: 90        .byte $90   ; 
- D 1 - I - 0x01BD3C 06:BD2C: 90        .byte $90   ; 
- D 1 - I - 0x01BD3D 06:BD2D: C0        .byte $C0   ; 
- D 1 - I - 0x01BD3E 06:BD2E: F3        .byte $F3   ; 
- D 1 - I - 0x01BD3F 06:BD2F: 90        .byte $90   ; 
- D 1 - I - 0x01BD40 06:BD30: F0        .byte $F0   ; 
- D 1 - I - 0x01BD41 06:BD31: B0        .byte $B0   ; 
- D 1 - I - 0x01BD42 06:BD32: B0        .byte $B0   ; 
- D 1 - I - 0x01BD43 06:BD33: B0        .byte $B0   ; 
- D 1 - I - 0x01BD44 06:BD34: B0        .byte $B0   ; 
- D 1 - I - 0x01BD45 06:BD35: 70        .byte $70   ; 
- D 1 - I - 0x01BD46 06:BD36: 70        .byte $70   ; 
- D 1 - I - 0x01BD47 06:BD37: 70        .byte $70   ; 
- D 1 - I - 0x01BD48 06:BD38: 70        .byte $70   ; 
- D 1 - I - 0x01BD49 06:BD39: C0        .byte $C0   ; 
- D 1 - I - 0x01BD4A 06:BD3A: E9        .byte $E9   ; 
- D 1 - I - 0x01BD4B 06:BD3B: 31        .byte $31   ; 
- D 1 - I - 0x01BD4C 06:BD3C: D7        .byte $D7   ; 
- D 1 - I - 0x01BD4D 06:BD3D: 76        .byte $76   ; 
- D 1 - I - 0x01BD4E 06:BD3E: 83        .byte $83   ; 
- D 1 - I - 0x01BD4F 06:BD3F: 24        .byte $24   ; 
- D 1 - I - 0x01BD50 06:BD40: E3        .byte $E3   ; 
- D 1 - I - 0x01BD51 06:BD41: 40        .byte $40   ; 
- D 1 - I - 0x01BD52 06:BD42: 50        .byte $50   ; 
- D 1 - I - 0x01BD53 06:BD43: 90        .byte $90   ; 
- D 1 - I - 0x01BD54 06:BD44: E8        .byte $E8   ; 
- D 1 - I - 0x01BD55 06:BD45: 11        .byte $11   ; 
- D 1 - I - 0x01BD56 06:BD46: BD        .byte $BD   ; 
- D 1 - I - 0x01BD57 06:BD47: FF        .byte $FF   ; 



_off014_33_BD48_01:
- D 1 - I - 0x01BD58 06:BD48: EA        .byte $EA   ; 
- D 1 - I - 0x01BD59 06:BD49: 01        .byte $01   ; 
- D 1 - I - 0x01BD5A 06:BD4A: E9        .byte $E9   ; 
- D 1 - I - 0x01BD5B 06:BD4B: 31        .byte $31   ; 
- D 1 - I - 0x01BD5C 06:BD4C: D7        .byte $D7   ; 
- D 1 - I - 0x01BD5D 06:BD4D: 75        .byte $75   ; 
- D 1 - I - 0x01BD5E 06:BD4E: 83        .byte $83   ; 
- D 1 - I - 0x01BD5F 06:BD4F: 16        .byte $16   ; 
- D 1 - I - 0x01BD60 06:BD50: E2        .byte $E2   ; 
- D 1 - I - 0x01BD61 06:BD51: C0        .byte $C0   ; 
- D 1 - I - 0x01BD62 06:BD52: 40        .byte $40   ; 
- D 1 - I - 0x01BD63 06:BD53: 40        .byte $40   ; 
- D 1 - I - 0x01BD64 06:BD54: 40        .byte $40   ; 
- D 1 - I - 0x01BD65 06:BD55: 40        .byte $40   ; 
- D 1 - I - 0x01BD66 06:BD56: C0        .byte $C0   ; 
- D 1 - I - 0x01BD67 06:BD57: F3        .byte $F3   ; 
- D 1 - I - 0x01BD68 06:BD58: 40        .byte $40   ; 
- D 1 - I - 0x01BD69 06:BD59: F0        .byte $F0   ; 
- D 1 - I - 0x01BD6A 06:BD5A: 60        .byte $60   ; 
- D 1 - I - 0x01BD6B 06:BD5B: 60        .byte $60   ; 
- D 1 - I - 0x01BD6C 06:BD5C: 60        .byte $60   ; 
- D 1 - I - 0x01BD6D 06:BD5D: 60        .byte $60   ; 
- D 1 - I - 0x01BD6E 06:BD5E: 20        .byte $20   ; 
- D 1 - I - 0x01BD6F 06:BD5F: 20        .byte $20   ; 
- D 1 - I - 0x01BD70 06:BD60: 20        .byte $20   ; 
- D 1 - I - 0x01BD71 06:BD61: 20        .byte $20   ; 
- D 1 - I - 0x01BD72 06:BD62: C0        .byte $C0   ; 
- D 1 - I - 0x01BD73 06:BD63: E9        .byte $E9   ; 
- D 1 - I - 0x01BD74 06:BD64: 71        .byte $71   ; 
- D 1 - I - 0x01BD75 06:BD65: D7        .byte $D7   ; 
- D 1 - I - 0x01BD76 06:BD66: 36        .byte $36   ; 
- D 1 - I - 0x01BD77 06:BD67: 83        .byte $83   ; 
- D 1 - I - 0x01BD78 06:BD68: 24        .byte $24   ; 
- D 1 - I - 0x01BD79 06:BD69: E3        .byte $E3   ; 
- D 1 - I - 0x01BD7A 06:BD6A: 90        .byte $90   ; 
- D 1 - I - 0x01BD7B 06:BD6B: B0        .byte $B0   ; 
- D 1 - I - 0x01BD7C 06:BD6C: E2        .byte $E2   ; 
- D 1 - I - 0x01BD7D 06:BD6D: 20        .byte $20   ; 
- D 1 - I - 0x01BD7E 06:BD6E: E8        .byte $E8   ; 
- D 1 - I - 0x01BD7F 06:BD6F: 11        .byte $11   ; 
- D 1 - I - 0x01BD80 06:BD70: 4D        .byte $4D   ; 
- D 1 - I - 0x01BD81 06:BD71: FF        .byte $FF   ; 



_off014_33_BD72_02:
- D 1 - I - 0x01BD82 06:BD72: EA        .byte $EA   ; 
- D 1 - I - 0x01BD83 06:BD73: 01        .byte $01   ; 
- D 1 - I - 0x01BD84 06:BD74: D7        .byte $D7   ; 
- D 1 - I - 0x01BD85 06:BD75: 8C        .byte $8C   ; 
- D 1 - I - 0x01BD86 06:BD76: E4        .byte $E4   ; 
- D 1 - I - 0x01BD87 06:BD77: C0        .byte $C0   ; 
- D 1 - I - 0x01BD88 06:BD78: 40        .byte $40   ; 
- D 1 - I - 0x01BD89 06:BD79: 40        .byte $40   ; 
- D 1 - I - 0x01BD8A 06:BD7A: 40        .byte $40   ; 
- D 1 - I - 0x01BD8B 06:BD7B: 42        .byte $42   ; 
- D 1 - I - 0x01BD8C 06:BD7C: 60        .byte $60   ; 
- D 1 - I - 0x01BD8D 06:BD7D: 60        .byte $60   ; 
- D 1 - I - 0x01BD8E 06:BD7E: 60        .byte $60   ; 
- D 1 - I - 0x01BD8F 06:BD7F: 60        .byte $60   ; 
- D 1 - I - 0x01BD90 06:BD80: 20        .byte $20   ; 
- D 1 - I - 0x01BD91 06:BD81: 20        .byte $20   ; 
- D 1 - I - 0x01BD92 06:BD82: 20        .byte $20   ; 
- D 1 - I - 0x01BD93 06:BD83: 21        .byte $21   ; 
- D 1 - I - 0x01BD94 06:BD84: D7        .byte $D7   ; 
- D 1 - I - 0x01BD95 06:BD85: 10        .byte $10   ; 
- D 1 - I - 0x01BD96 06:BD86: E4        .byte $E4   ; 
- D 1 - I - 0x01BD97 06:BD87: 70        .byte $70   ; 
- D 1 - I - 0x01BD98 06:BD88: 90        .byte $90   ; 
- D 1 - I - 0x01BD99 06:BD89: E3        .byte $E3   ; 
- D 1 - I - 0x01BD9A 06:BD8A: 00        .byte $00   ; 
- D 1 - I - 0x01BD9B 06:BD8B: D7        .byte $D7   ; 
- D 1 - I - 0x01BD9C 06:BD8C: 00        .byte $00   ; 
- D 1 - I - 0x01BD9D 06:BD8D: 4D        .byte $4D   ; 
- D 1 - I - 0x01BD9E 06:BD8E: FF        .byte $FF   ; 



_off014_33_BD8F_03:
- D 1 - I - 0x01BD9F 06:BD8F: D1        .byte $D1   ; 
- D 1 - I - 0x01BDA0 06:BD90: C6        .byte $C6   ; 
- D 1 - I - 0x01BDA1 06:BD91: E3        .byte $E3   ; 
- D 1 - I - 0x01BDA2 06:BD92: 56        .byte $56   ; 
- D 1 - I - 0x01BDA3 06:BD93: 56        .byte $56   ; 
- D 1 - I - 0x01BDA4 06:BD94: 56        .byte $56   ; 
- D 1 - I - 0x01BDA5 06:BD95: 56        .byte $56   ; 
- D 1 - I - 0x01BDA6 06:BD96: C6        .byte $C6   ; 
- D 1 - I - 0x01BDA7 06:BD97: C6        .byte $C6   ; 
- D 1 - I - 0x01BDA8 06:BD98: 76        .byte $76   ; 
- D 1 - I - 0x01BDA9 06:BD99: 76        .byte $76   ; 
- D 1 - I - 0x01BDAA 06:BD9A: 76        .byte $76   ; 
- D 1 - I - 0x01BDAB 06:BD9B: 76        .byte $76   ; 
- D 1 - I - 0x01BDAC 06:BD9C: 36        .byte $36   ; 
- D 1 - I - 0x01BDAD 06:BD9D: 36        .byte $36   ; 
- D 1 - I - 0x01BDAE 06:BD9E: 36        .byte $36   ; 
- D 1 - I - 0x01BDAF 06:BD9F: 36        .byte $36   ; 
- D 1 - I - 0x01BDB0 06:BDA0: C6        .byte $C6   ; 
- D 1 - I - 0x01BDB1 06:BDA1: D1        .byte $D1   ; 
- D 1 - I - 0x01BDB2 06:BDA2: A2        .byte $A2   ; 
- D 1 - I - 0x01BDB3 06:BDA3: A3        .byte $A3   ; 
- D 1 - I - 0x01BDB4 06:BDA4: A0        .byte $A0   ; 
- D 1 - I - 0x01BDB5 06:BDA5: 25        .byte $25   ; 
- D 1 - I - 0x01BDB6 06:BDA6: A0        .byte $A0   ; 
- D 1 - I - 0x01BDB7 06:BDA7: 25        .byte $25   ; 
- D 1 - I - 0x01BDB8 06:BDA8: A0        .byte $A0   ; 
- D 1 - I - 0x01BDB9 06:BDA9: 25        .byte $25   ; 
- D 1 - I - 0x01BDBA 06:BDAA: FF        .byte $FF   ; 



_off014_34_BDAB_00:
- D 1 - I - 0x01BDBB 06:BDAB: EA        .byte $EA   ; 
- D 1 - I - 0x01BDBC 06:BDAC: 02        .byte $02   ; 
- D 1 - I - 0x01BDBD 06:BDAD: EC        .byte $EC   ; 
- D 1 - I - 0x01BDBE 06:BDAE: 01        .byte $01   ; 
- D 1 - I - 0x01BDBF 06:BDAF: E9        .byte $E9   ; 
- D 1 - I - 0x01BDC0 06:BDB0: B5        .byte $B5   ; 
- D 1 - I - 0x01BDC1 06:BDB1: D9        .byte $D9   ; 
- D 1 - I - 0x01BDC2 06:BDB2: 76        .byte $76   ; 
- D 1 - I - 0x01BDC3 06:BDB3: 83        .byte $83   ; 
- D 1 - I - 0x01BDC4 06:BDB4: 16        .byte $16   ; 
- D 1 - I - 0x01BDC5 06:BDB5: E4        .byte $E4   ; 
- D 1 - I - 0x01BDC6 06:BDB6: 70        .byte $70   ; 
- D 1 - I - 0x01BDC7 06:BDB7: E3        .byte $E3   ; 
- D 1 - I - 0x01BDC8 06:BDB8: 80        .byte $80   ; 
- D 1 - I - 0x01BDC9 06:BDB9: 80        .byte $80   ; 
- D 1 - I - 0x01BDCA 06:BDBA: E4        .byte $E4   ; 
- D 1 - I - 0x01BDCB 06:BDBB: 00        .byte $00   ; 
- D 1 - I - 0x01BDCC 06:BDBC: E3        .byte $E3   ; 
- D 1 - I - 0x01BDCD 06:BDBD: A0        .byte $A0   ; 
- D 1 - I - 0x01BDCE 06:BDBE: A0        .byte $A0   ; 
- D 1 - I - 0x01BDCF 06:BDBF: E4        .byte $E4   ; 
- D 1 - I - 0x01BDD0 06:BDC0: 70        .byte $70   ; 
- D 1 - I - 0x01BDD1 06:BDC1: E3        .byte $E3   ; 
- D 1 - I - 0x01BDD2 06:BDC2: 80        .byte $80   ; 
- D 1 - I - 0x01BDD3 06:BDC3: 80        .byte $80   ; 
- D 1 - I - 0x01BDD4 06:BDC4: E4        .byte $E4   ; 
- D 1 - I - 0x01BDD5 06:BDC5: 00        .byte $00   ; 
- D 1 - I - 0x01BDD6 06:BDC6: E3        .byte $E3   ; 
- D 1 - I - 0x01BDD7 06:BDC7: A0        .byte $A0   ; 
- D 1 - I - 0x01BDD8 06:BDC8: A0        .byte $A0   ; 
- D 1 - I - 0x01BDD9 06:BDC9: E4        .byte $E4   ; 
- D 1 - I - 0x01BDDA 06:BDCA: 70        .byte $70   ; 
- D 1 - I - 0x01BDDB 06:BDCB: E3        .byte $E3   ; 
- D 1 - I - 0x01BDDC 06:BDCC: 80        .byte $80   ; 
- D 1 - I - 0x01BDDD 06:BDCD: 80        .byte $80   ; 
- D 1 - I - 0x01BDDE 06:BDCE: E4        .byte $E4   ; 
- D 1 - I - 0x01BDDF 06:BDCF: 00        .byte $00   ; 
- D 1 - I - 0x01BDE0 06:BDD0: EC        .byte $EC   ; 
- D 1 - I - 0x01BDE1 06:BDD1: 00        .byte $00   ; 
- D 1 - I - 0x01BDE2 06:BDD2: E9        .byte $E9   ; 
- D 1 - I - 0x01BDE3 06:BDD3: 31        .byte $31   ; 
- D 1 - I - 0x01BDE4 06:BDD4: ED        .byte $ED   ; 
- D 1 - I - 0x01BDE5 06:BDD5: 81        .byte $81   ; 
- D 1 - I - 0x01BDE6 06:BDD6: E6        .byte $E6   ; 
- D 1 - I - 0x01BDE7 06:BDD7: 0A        .byte $0A   ; 
- D 1 - I - 0x01BDE8 06:BDD8: E8        .byte $E8   ; 
- D 1 - I - 0x01BDE9 06:BDD9: 18        .byte $18   ; 
- D 1 - I - 0x01BDEA 06:BDDA: E3        .byte $E3   ; 
- D 1 - I - 0x01BDEB 06:BDDB: 41        .byte $41   ; 
- D 1 - I - 0x01BDEC 06:BDDC: E4        .byte $E4   ; 
- D 1 - I - 0x01BDED 06:BDDD: 01        .byte $01   ; 
- D 1 - I - 0x01BDEE 06:BDDE: E6        .byte $E6   ; 
- D 1 - I - 0x01BDEF 06:BDDF: 0B        .byte $0B   ; 
- D 1 - I - 0x01BDF0 06:BDE0: E3        .byte $E3   ; 
- D 1 - I - 0x01BDF1 06:BDE1: 41        .byte $41   ; 
- D 1 - I - 0x01BDF2 06:BDE2: E6        .byte $E6   ; 
- D 1 - I - 0x01BDF3 06:BDE3: 0C        .byte $0C   ; 
- D 1 - I - 0x01BDF4 06:BDE4: E4        .byte $E4   ; 
- D 1 - I - 0x01BDF5 06:BDE5: 01        .byte $01   ; 
- D 1 - I - 0x01BDF6 06:BDE6: DD        .byte $DD   ; 
- D 1 - I - 0x01BDF7 06:BDE7: 79        .byte $79   ; 
- D 1 - I - 0x01BDF8 06:BDE8: 86        .byte $86   ; 
- D 1 - I - 0x01BDF9 06:BDE9: 11        .byte $11   ; 
- D 1 - I - 0x01BDFA 06:BDEA: E3        .byte $E3   ; 
- D 1 - I - 0x01BDFB 06:BDEB: 47        .byte $47   ; 
- D 1 - I - 0x01BDFC 06:BDEC: FF        .byte $FF   ; 



_off014_34_BDED_01:
- D 1 - I - 0x01BDFD 06:BDED: EA        .byte $EA   ; 
- D 1 - I - 0x01BDFE 06:BDEE: 02        .byte $02   ; 
- D 1 - I - 0x01BDFF 06:BDEF: EC        .byte $EC   ; 
- D 1 - I - 0x01BE00 06:BDF0: 01        .byte $01   ; 
- D 1 - I - 0x01BE01 06:BDF1: E9        .byte $E9   ; 
- D 1 - I - 0x01BE02 06:BDF2: 75        .byte $75   ; 
- D 1 - I - 0x01BE03 06:BDF3: D9        .byte $D9   ; 
- D 1 - I - 0x01BE04 06:BDF4: 36        .byte $36   ; 
- D 1 - I - 0x01BE05 06:BDF5: 83        .byte $83   ; 
- D 1 - I - 0x01BE06 06:BDF6: 16        .byte $16   ; 
- D 1 - I - 0x01BE07 06:BDF7: E3        .byte $E3   ; 
- D 1 - I - 0x01BE08 06:BDF8: 00        .byte $00   ; 
- D 1 - I - 0x01BE09 06:BDF9: E2        .byte $E2   ; 
- D 1 - I - 0x01BE0A 06:BDFA: 10        .byte $10   ; 
- D 1 - I - 0x01BE0B 06:BDFB: 10        .byte $10   ; 
- D 1 - I - 0x01BE0C 06:BDFC: E3        .byte $E3   ; 
- D 1 - I - 0x01BE0D 06:BDFD: 00        .byte $00   ; 
- D 1 - I - 0x01BE0E 06:BDFE: E2        .byte $E2   ; 
- D 1 - I - 0x01BE0F 06:BDFF: 30        .byte $30   ; 
- D 1 - I - 0x01BE10 06:BE00: 30        .byte $30   ; 
- D 1 - I - 0x01BE11 06:BE01: E3        .byte $E3   ; 
- D 1 - I - 0x01BE12 06:BE02: 00        .byte $00   ; 
- D 1 - I - 0x01BE13 06:BE03: E2        .byte $E2   ; 
- D 1 - I - 0x01BE14 06:BE04: 10        .byte $10   ; 
- D 1 - I - 0x01BE15 06:BE05: 10        .byte $10   ; 
- D 1 - I - 0x01BE16 06:BE06: E3        .byte $E3   ; 
- D 1 - I - 0x01BE17 06:BE07: 00        .byte $00   ; 
- D 1 - I - 0x01BE18 06:BE08: E2        .byte $E2   ; 
- D 1 - I - 0x01BE19 06:BE09: 30        .byte $30   ; 
- D 1 - I - 0x01BE1A 06:BE0A: 30        .byte $30   ; 
- D 1 - I - 0x01BE1B 06:BE0B: E3        .byte $E3   ; 
- D 1 - I - 0x01BE1C 06:BE0C: 00        .byte $00   ; 
- D 1 - I - 0x01BE1D 06:BE0D: E2        .byte $E2   ; 
- D 1 - I - 0x01BE1E 06:BE0E: 10        .byte $10   ; 
- D 1 - I - 0x01BE1F 06:BE0F: 10        .byte $10   ; 
- D 1 - I - 0x01BE20 06:BE10: E3        .byte $E3   ; 
- D 1 - I - 0x01BE21 06:BE11: 00        .byte $00   ; 
- D 1 - I - 0x01BE22 06:BE12: EC        .byte $EC   ; 
- D 1 - I - 0x01BE23 06:BE13: 00        .byte $00   ; 
- D 1 - I - 0x01BE24 06:BE14: E6        .byte $E6   ; 
- D 1 - I - 0x01BE25 06:BE15: 0A        .byte $0A   ; 
- D 1 - I - 0x01BE26 06:BE16: E2        .byte $E2   ; 
- D 1 - I - 0x01BE27 06:BE17: 01        .byte $01   ; 
- D 1 - I - 0x01BE28 06:BE18: E3        .byte $E3   ; 
- D 1 - I - 0x01BE29 06:BE19: 71        .byte $71   ; 
- D 1 - I - 0x01BE2A 06:BE1A: E6        .byte $E6   ; 
- D 1 - I - 0x01BE2B 06:BE1B: 0B        .byte $0B   ; 
- D 1 - I - 0x01BE2C 06:BE1C: E2        .byte $E2   ; 
- D 1 - I - 0x01BE2D 06:BE1D: 01        .byte $01   ; 
- D 1 - I - 0x01BE2E 06:BE1E: E6        .byte $E6   ; 
- D 1 - I - 0x01BE2F 06:BE1F: 0C        .byte $0C   ; 
- D 1 - I - 0x01BE30 06:BE20: E3        .byte $E3   ; 
- D 1 - I - 0x01BE31 06:BE21: 71        .byte $71   ; 
- D 1 - I - 0x01BE32 06:BE22: E6        .byte $E6   ; 
- D 1 - I - 0x01BE33 06:BE23: 02        .byte $02   ; 
- D 1 - I - 0x01BE34 06:BE24: F3        .byte $F3   ; 
- D 1 - I - 0x01BE35 06:BE25: 80        .byte $80   ; 
- D 1 - I - 0x01BE36 06:BE26: F2        .byte $F2   ; 
- D 1 - I - 0x01BE37 06:BE27: 90        .byte $90   ; 
- D 1 - I - 0x01BE38 06:BE28: F1        .byte $F1   ; 
- D 1 - I - 0x01BE39 06:BE29: A0        .byte $A0   ; 
- D 1 - I - 0x01BE3A 06:BE2A: F0        .byte $F0   ; 
- D 1 - I - 0x01BE3B 06:BE2B: B0        .byte $B0   ; 
- D 1 - I - 0x01BE3C 06:BE2C: D6        .byte $D6   ; 
- D 1 - I - 0x01BE3D 06:BE2D: 37        .byte $37   ; 
- D 1 - I - 0x01BE3E 06:BE2E: 84        .byte $84   ; 
- D 1 - I - 0x01BE3F 06:BE2F: 11        .byte $11   ; 
- D 1 - I - 0x01BE40 06:BE30: E2        .byte $E2   ; 
- D 1 - I - 0x01BE41 06:BE31: 0F        .byte $0F   ; 
- D 1 - I - 0x01BE42 06:BE32: FF        .byte $FF   ; 



_off014_34_BE33_02:
- D 1 - I - 0x01BE43 06:BE33: EA        .byte $EA   ; 
- D 1 - I - 0x01BE44 06:BE34: 02        .byte $02   ; 
- D 1 - I - 0x01BE45 06:BE35: D9        .byte $D9   ; 
- D 1 - I - 0x01BE46 06:BE36: 0A        .byte $0A   ; 
- D 1 - I - 0x01BE47 06:BE37: E4        .byte $E4   ; 
- D 1 - I - 0x01BE48 06:BE38: 00        .byte $00   ; 
- D 1 - I - 0x01BE49 06:BE39: E3        .byte $E3   ; 
- D 1 - I - 0x01BE4A 06:BE3A: 10        .byte $10   ; 
- D 1 - I - 0x01BE4B 06:BE3B: 10        .byte $10   ; 
- D 1 - I - 0x01BE4C 06:BE3C: E4        .byte $E4   ; 
- D 1 - I - 0x01BE4D 06:BE3D: 00        .byte $00   ; 
- D 1 - I - 0x01BE4E 06:BE3E: E3        .byte $E3   ; 
- D 1 - I - 0x01BE4F 06:BE3F: 30        .byte $30   ; 
- D 1 - I - 0x01BE50 06:BE40: 30        .byte $30   ; 
- D 1 - I - 0x01BE51 06:BE41: E4        .byte $E4   ; 
- D 1 - I - 0x01BE52 06:BE42: 00        .byte $00   ; 
- D 1 - I - 0x01BE53 06:BE43: E3        .byte $E3   ; 
- D 1 - I - 0x01BE54 06:BE44: 10        .byte $10   ; 
- D 1 - I - 0x01BE55 06:BE45: 10        .byte $10   ; 
- D 1 - I - 0x01BE56 06:BE46: E4        .byte $E4   ; 
- D 1 - I - 0x01BE57 06:BE47: 00        .byte $00   ; 
- D 1 - I - 0x01BE58 06:BE48: E3        .byte $E3   ; 
- D 1 - I - 0x01BE59 06:BE49: 30        .byte $30   ; 
- D 1 - I - 0x01BE5A 06:BE4A: 30        .byte $30   ; 
- D 1 - I - 0x01BE5B 06:BE4B: E4        .byte $E4   ; 
- D 1 - I - 0x01BE5C 06:BE4C: 00        .byte $00   ; 
- D 1 - I - 0x01BE5D 06:BE4D: E3        .byte $E3   ; 
- D 1 - I - 0x01BE5E 06:BE4E: 10        .byte $10   ; 
- D 1 - I - 0x01BE5F 06:BE4F: 10        .byte $10   ; 
- D 1 - I - 0x01BE60 06:BE50: E4        .byte $E4   ; 
- D 1 - I - 0x01BE61 06:BE51: 00        .byte $00   ; 
- D 1 - I - 0x01BE62 06:BE52: DA        .byte $DA   ; 
- D 1 - I - 0x01BE63 06:BE53: 10        .byte $10   ; 
- D 1 - I - 0x01BE64 06:BE54: E3        .byte $E3   ; 
- D 1 - I - 0x01BE65 06:BE55: 01        .byte $01   ; 
- D 1 - I - 0x01BE66 06:BE56: E4        .byte $E4   ; 
- D 1 - I - 0x01BE67 06:BE57: 71        .byte $71   ; 
- D 1 - I - 0x01BE68 06:BE58: DB        .byte $DB   ; 
- D 1 - I - 0x01BE69 06:BE59: 10        .byte $10   ; 
- D 1 - I - 0x01BE6A 06:BE5A: E3        .byte $E3   ; 
- D 1 - I - 0x01BE6B 06:BE5B: 01        .byte $01   ; 
- D 1 - I - 0x01BE6C 06:BE5C: DC        .byte $DC   ; 
- D 1 - I - 0x01BE6D 06:BE5D: 10        .byte $10   ; 
- D 1 - I - 0x01BE6E 06:BE5E: E4        .byte $E4   ; 
- D 1 - I - 0x01BE6F 06:BE5F: 71        .byte $71   ; 
- D 1 - I - 0x01BE70 06:BE60: D2        .byte $D2   ; 
- D 1 - I - 0x01BE71 06:BE61: 00        .byte $00   ; 
- D 1 - I - 0x01BE72 06:BE62: 80        .byte $80   ; 
- D 1 - I - 0x01BE73 06:BE63: 90        .byte $90   ; 
- D 1 - I - 0x01BE74 06:BE64: A0        .byte $A0   ; 
- D 1 - I - 0x01BE75 06:BE65: B0        .byte $B0   ; 
- D 1 - I - 0x01BE76 06:BE66: D6        .byte $D6   ; 
- D 1 - I - 0x01BE77 06:BE67: 00        .byte $00   ; 
- D 1 - I - 0x01BE78 06:BE68: E3        .byte $E3   ; 
- D 1 - I - 0x01BE79 06:BE69: 0F        .byte $0F   ; 
- D 1 - I - 0x01BE7A 06:BE6A: FF        .byte $FF   ; 



_off014_34_BE6B_03:
- D 1 - I - 0x01BE7B 06:BE6B: D1        .byte $D1   ; 
- D 1 - I - 0x01BE7C 06:BE6C: FB        .byte $FB   ; 
- D 1 - I - 0x01BE7D 06:BE6D: A0        .byte $A0   ; 
- D 1 - I - 0x01BE7E 06:BE6E: 17        .byte $17   ; 
- D 1 - I - 0x01BE7F 06:BE6F: E3        .byte $E3   ; 
- D 1 - I - 0x01BE80 06:BE70: 30        .byte $30   ; 
- D 1 - I - 0x01BE81 06:BE71: D1        .byte $D1   ; 
- D 1 - I - 0x01BE82 06:BE72: 27        .byte $27   ; 
- D 1 - I - 0x01BE83 06:BE73: E3        .byte $E3   ; 
- D 1 - I - 0x01BE84 06:BE74: 30        .byte $30   ; 
- D 1 - I - 0x01BE85 06:BE75: D1        .byte $D1   ; 
- D 1 - I - 0x01BE86 06:BE76: 27        .byte $27   ; 
- D 1 - I - 0x01BE87 06:BE77: A0        .byte $A0   ; 
- D 1 - I - 0x01BE88 06:BE78: 17        .byte $17   ; 
- D 1 - I - 0x01BE89 06:BE79: E3        .byte $E3   ; 
- D 1 - I - 0x01BE8A 06:BE7A: 50        .byte $50   ; 
- D 1 - I - 0x01BE8B 06:BE7B: D1        .byte $D1   ; 
- D 1 - I - 0x01BE8C 06:BE7C: 27        .byte $27   ; 
- D 1 - I - 0x01BE8D 06:BE7D: E3        .byte $E3   ; 
- D 1 - I - 0x01BE8E 06:BE7E: 50        .byte $50   ; 
- D 1 - I - 0x01BE8F 06:BE7F: D1        .byte $D1   ; 
- D 1 - I - 0x01BE90 06:BE80: 27        .byte $27   ; 
- D 1 - I - 0x01BE91 06:BE81: FE        .byte $FE   ; 
- D 1 - I - 0x01BE92 06:BE82: 02        .byte $02   ; 
- D 1 - I - 0x01BE93 06:BE83: A0        .byte $A0   ; 
- D 1 - I - 0x01BE94 06:BE84: 17        .byte $17   ; 
- D 1 - I - 0x01BE95 06:BE85: E3        .byte $E3   ; 
- D 1 - I - 0x01BE96 06:BE86: 30        .byte $30   ; 
- D 1 - I - 0x01BE97 06:BE87: D1        .byte $D1   ; 
- D 1 - I - 0x01BE98 06:BE88: 27        .byte $27   ; 
- D 1 - I - 0x01BE99 06:BE89: E3        .byte $E3   ; 
- D 1 - I - 0x01BE9A 06:BE8A: 30        .byte $30   ; 
- D 1 - I - 0x01BE9B 06:BE8B: D1        .byte $D1   ; 
- D 1 - I - 0x01BE9C 06:BE8C: 27        .byte $27   ; 
- D 1 - I - 0x01BE9D 06:BE8D: A0        .byte $A0   ; 
- D 1 - I - 0x01BE9E 06:BE8E: 27        .byte $27   ; 
- D 1 - I - 0x01BE9F 06:BE8F: E3        .byte $E3   ; 
- D 1 - I - 0x01BEA0 06:BE90: 20        .byte $20   ; 
- D 1 - I - 0x01BEA1 06:BE91: D1        .byte $D1   ; 
- D 1 - I - 0x01BEA2 06:BE92: 4F        .byte $4F   ; 
- D 1 - I - 0x01BEA3 06:BE93: C2        .byte $C2   ; 
- D 1 - I - 0x01BEA4 06:BE94: E3        .byte $E3   ; 
- D 1 - I - 0x01BEA5 06:BE95: 90        .byte $90   ; 
- D 1 - I - 0x01BEA6 06:BE96: D1        .byte $D1   ; 
- D 1 - I - 0x01BEA7 06:BE97: 4F        .byte $4F   ; 
- D 1 - I - 0x01BEA8 06:BE98: C2        .byte $C2   ; 
- D 1 - I - 0x01BEA9 06:BE99: E3        .byte $E3   ; 
- D 1 - I - 0x01BEAA 06:BE9A: 20        .byte $20   ; 
- D 1 - I - 0x01BEAB 06:BE9B: D1        .byte $D1   ; 
- D 1 - I - 0x01BEAC 06:BE9C: 4F        .byte $4F   ; 
- D 1 - I - 0x01BEAD 06:BE9D: C4        .byte $C4   ; 
- D 1 - I - 0x01BEAE 06:BE9E: E3        .byte $E3   ; 
- D 1 - I - 0x01BEAF 06:BE9F: 90        .byte $90   ; 
- D 1 - I - 0x01BEB0 06:BEA0: D1        .byte $D1   ; 
- D 1 - I - 0x01BEB1 06:BEA1: 4F        .byte $4F   ; 
- D 1 - I - 0x01BEB2 06:BEA2: C6        .byte $C6   ; 
- D 1 - I - 0x01BEB3 06:BEA3: E3        .byte $E3   ; 
- D 1 - I - 0x01BEB4 06:BEA4: 20        .byte $20   ; 
- D 1 - I - 0x01BEB5 06:BEA5: D1        .byte $D1   ; 
- D 1 - I - 0x01BEB6 06:BEA6: 41        .byte $41   ; 
- D 1 - I - 0x01BEB7 06:BEA7: FB        .byte $FB   ; 
- D 1 - I - 0x01BEB8 06:BEA8: 22        .byte $22   ; 
- D 1 - I - 0x01BEB9 06:BEA9: FE        .byte $FE   ; 
- D 1 - I - 0x01BEBA 06:BEAA: 20        .byte $20   ; 
- D 1 - I - 0x01BEBB 06:BEAB: FF        .byte $FF   ; 



_off014_35_BEAC_00:
- D 1 - I - 0x01BEBC 06:BEAC: EA        .byte $EA   ; 
- D 1 - I - 0x01BEBD 06:BEAD: 00        .byte $00   ; 
- D 1 - I - 0x01BEBE 06:BEAE: E9        .byte $E9   ; 
- D 1 - I - 0x01BEBF 06:BEAF: 31        .byte $31   ; 
- D 1 - I - 0x01BEC0 06:BEB0: D7        .byte $D7   ; 
- D 1 - I - 0x01BEC1 06:BEB1: 70        .byte $70   ; 
- D 1 - I - 0x01BEC2 06:BEB2: 21        .byte $21   ; 
- D 1 - I - 0x01BEC3 06:BEB3: 00        .byte $00   ; 
- D 1 - I - 0x01BEC4 06:BEB4: E6        .byte $E6   ; 
- D 1 - I - 0x01BEC5 06:BEB5: 02        .byte $02   ; 
- D 1 - I - 0x01BEC6 06:BEB6: E4        .byte $E4   ; 
- D 1 - I - 0x01BEC7 06:BEB7: F3        .byte $F3   ; 
- D 1 - I - 0x01BEC8 06:BEB8: 50        .byte $50   ; 
- D 1 - I - 0x01BEC9 06:BEB9: 60        .byte $60   ; 
- D 1 - I - 0x01BECA 06:BEBA: F2        .byte $F2   ; 
- D 1 - I - 0x01BECB 06:BEBB: 70        .byte $70   ; 
- D 1 - I - 0x01BECC 06:BEBC: 80        .byte $80   ; 
- D 1 - I - 0x01BECD 06:BEBD: F1        .byte $F1   ; 
- D 1 - I - 0x01BECE 06:BEBE: 90        .byte $90   ; 
- D 1 - I - 0x01BECF 06:BEBF: A0        .byte $A0   ; 
- D 1 - I - 0x01BED0 06:BEC0: B0        .byte $B0   ; 
- D 1 - I - 0x01BED1 06:BEC1: F0        .byte $F0   ; 
- D 1 - I - 0x01BED2 06:BEC2: E7        .byte $E7   ; 
- D 1 - I - 0x01BED3 06:BEC3: 22        .byte $22   ; 
- D 1 - I - 0x01BED4 06:BEC4: E6        .byte $E6   ; 
- D 1 - I - 0x01BED5 06:BEC5: 07        .byte $07   ; 
- D 1 - I - 0x01BED6 06:BEC6: E3        .byte $E3   ; 
- D 1 - I - 0x01BED7 06:BEC7: 00        .byte $00   ; 
- D 1 - I - 0x01BED8 06:BEC8: 00        .byte $00   ; 
- D 1 - I - 0x01BED9 06:BEC9: 00        .byte $00   ; 
- D 1 - I - 0x01BEDA 06:BECA: E4        .byte $E4   ; 
- D 1 - I - 0x01BEDB 06:BECB: A0        .byte $A0   ; 
- D 1 - I - 0x01BEDC 06:BECC: A0        .byte $A0   ; 
- D 1 - I - 0x01BEDD 06:BECD: A0        .byte $A0   ; 
- D 1 - I - 0x01BEDE 06:BECE: E4        .byte $E4   ; 
- D 1 - I - 0x01BEDF 06:BECF: E6        .byte $E6   ; 
- D 1 - I - 0x01BEE0 06:BED0: 03        .byte $03   ; 
- D 1 - I - 0x01BEE1 06:BED1: 75        .byte $75   ; 
- D 1 - I - 0x01BEE2 06:BED2: C0        .byte $C0   ; 
- D 1 - I - 0x01BEE3 06:BED3: E6        .byte $E6   ; 
- D 1 - I - 0x01BEE4 06:BED4: 07        .byte $07   ; 
- D 1 - I - 0x01BEE5 06:BED5: F4        .byte $F4   ; 
- D 1 - I - 0x01BEE6 06:BED6: 70        .byte $70   ; 
- D 1 - I - 0x01BEE7 06:BED7: F0        .byte $F0   ; 
- D 1 - I - 0x01BEE8 06:BED8: A3        .byte $A3   ; 
- D 1 - I - 0x01BEE9 06:BED9: E9        .byte $E9   ; 
- D 1 - I - 0x01BEEA 06:BEDA: 71        .byte $71   ; 
- D 1 - I - 0x01BEEB 06:BEDB: E9        .byte $E9   ; 
- D 1 - I - 0x01BEEC 06:BEDC: 30        .byte $30   ; 
- D 1 - I - 0x01BEED 06:BEDD: E7        .byte $E7   ; 
- D 1 - I - 0x01BEEE 06:BEDE: 20        .byte $20   ; 
- D 1 - I - 0x01BEEF 06:BEDF: E6        .byte $E6   ; 
- D 1 - I - 0x01BEF0 06:BEE0: 02        .byte $02   ; 
- D 1 - I - 0x01BEF1 06:BEE1: F3        .byte $F3   ; 
- D 1 - I - 0x01BEF2 06:BEE2: 50        .byte $50   ; 
- D 1 - I - 0x01BEF3 06:BEE3: 60        .byte $60   ; 
- D 1 - I - 0x01BEF4 06:BEE4: 70        .byte $70   ; 
- D 1 - I - 0x01BEF5 06:BEE5: 80        .byte $80   ; 
- D 1 - I - 0x01BEF6 06:BEE6: 90        .byte $90   ; 
- D 1 - I - 0x01BEF7 06:BEE7: A0        .byte $A0   ; 
- D 1 - I - 0x01BEF8 06:BEE8: B0        .byte $B0   ; 
- D 1 - I - 0x01BEF9 06:BEE9: E6        .byte $E6   ; 
- D 1 - I - 0x01BEFA 06:BEEA: 07        .byte $07   ; 
- D 1 - I - 0x01BEFB 06:BEEB: F0        .byte $F0   ; 
- D 1 - I - 0x01BEFC 06:BEEC: E3        .byte $E3   ; 
- D 1 - I - 0x01BEFD 06:BEED: 72        .byte $72   ; 
- D 1 - I - 0x01BEFE 06:BEEE: 52        .byte $52   ; 
- D 1 - I - 0x01BEFF 06:BEEF: E7        .byte $E7   ; 
- D 1 - I - 0x01BF00 06:BEF0: 21        .byte $21   ; 
- D 1 - I - 0x01BF01 06:BEF1: 70        .byte $70   ; 
- D 1 - I - 0x01BF02 06:BEF2: E6        .byte $E6   ; 
- D 1 - I - 0x01BF03 06:BEF3: 01        .byte $01   ; 
- D 1 - I - 0x01BF04 06:BEF4: E3        .byte $E3   ; 
- D 1 - I - 0x01BF05 06:BEF5: 00        .byte $00   ; 
- D 1 - I - 0x01BF06 06:BEF6: E4        .byte $E4   ; 
- D 1 - I - 0x01BF07 06:BEF7: B0        .byte $B0   ; 
- D 1 - I - 0x01BF08 06:BEF8: A0        .byte $A0   ; 
- D 1 - I - 0x01BF09 06:BEF9: F1        .byte $F1   ; 
- D 1 - I - 0x01BF0A 06:BEFA: 90        .byte $90   ; 
- D 1 - I - 0x01BF0B 06:BEFB: 80        .byte $80   ; 
- D 1 - I - 0x01BF0C 06:BEFC: 70        .byte $70   ; 
- D 1 - I - 0x01BF0D 06:BEFD: F2        .byte $F2   ; 
- D 1 - I - 0x01BF0E 06:BEFE: 60        .byte $60   ; 
- D 1 - I - 0x01BF0F 06:BEFF: 50        .byte $50   ; 
- D 1 - I - 0x01BF10 06:BF00: 40        .byte $40   ; 
- D 1 - I - 0x01BF11 06:BF01: F3        .byte $F3   ; 
- D 1 - I - 0x01BF12 06:BF02: 30        .byte $30   ; 
- D 1 - I - 0x01BF13 06:BF03: 20        .byte $20   ; 
- D 1 - I - 0x01BF14 06:BF04: F4        .byte $F4   ; 
- D 1 - I - 0x01BF15 06:BF05: 10        .byte $10   ; 
- D 1 - I - 0x01BF16 06:BF06: 00        .byte $00   ; 
- D 1 - I - 0x01BF17 06:BF07: C0        .byte $C0   ; 
- D 1 - I - 0x01BF18 06:BF08: F5        .byte $F5   ; 
- D 1 - I - 0x01BF19 06:BF09: E3        .byte $E3   ; 
- D 1 - I - 0x01BF1A 06:BF0A: 00        .byte $00   ; 
- D 1 - I - 0x01BF1B 06:BF0B: E4        .byte $E4   ; 
- D 1 - I - 0x01BF1C 06:BF0C: B0        .byte $B0   ; 
- D 1 - I - 0x01BF1D 06:BF0D: A0        .byte $A0   ; 
- D 1 - I - 0x01BF1E 06:BF0E: F6        .byte $F6   ; 
- D 1 - I - 0x01BF1F 06:BF0F: 90        .byte $90   ; 
- D 1 - I - 0x01BF20 06:BF10: 80        .byte $80   ; 
- D 1 - I - 0x01BF21 06:BF11: 70        .byte $70   ; 
- D 1 - I - 0x01BF22 06:BF12: F7        .byte $F7   ; 
- D 1 - I - 0x01BF23 06:BF13: 60        .byte $60   ; 
- D 1 - I - 0x01BF24 06:BF14: 50        .byte $50   ; 
- D 1 - I - 0x01BF25 06:BF15: 40        .byte $40   ; 
- D 1 - I - 0x01BF26 06:BF16: F8        .byte $F8   ; 
- D 1 - I - 0x01BF27 06:BF17: 30        .byte $30   ; 
- D 1 - I - 0x01BF28 06:BF18: 20        .byte $20   ; 
- D 1 - I - 0x01BF29 06:BF19: F9        .byte $F9   ; 
- D 1 - I - 0x01BF2A 06:BF1A: 10        .byte $10   ; 
- D 1 - I - 0x01BF2B 06:BF1B: 00        .byte $00   ; 
- D 1 - I - 0x01BF2C 06:BF1C: FF        .byte $FF   ; 



_off014_35_BF1D_01:
- D 1 - I - 0x01BF2D 06:BF1D: EA        .byte $EA   ; 
- D 1 - I - 0x01BF2E 06:BF1E: 0C        .byte $0C   ; 
- D 1 - I - 0x01BF2F 06:BF1F: E9        .byte $E9   ; 
- D 1 - I - 0x01BF30 06:BF20: 31        .byte $31   ; 
- D 1 - I - 0x01BF31 06:BF21: D7        .byte $D7   ; 
- D 1 - I - 0x01BF32 06:BF22: 70        .byte $70   ; 
- D 1 - I - 0x01BF33 06:BF23: 22        .byte $22   ; 
- D 1 - I - 0x01BF34 06:BF24: 00        .byte $00   ; 
- D 1 - I - 0x01BF35 06:BF25: C1        .byte $C1   ; 
- D 1 - I - 0x01BF36 06:BF26: E3        .byte $E3   ; 
- D 1 - I - 0x01BF37 06:BF27: 30        .byte $30   ; 
- D 1 - I - 0x01BF38 06:BF28: 30        .byte $30   ; 
- D 1 - I - 0x01BF39 06:BF29: 30        .byte $30   ; 
- D 1 - I - 0x01BF3A 06:BF2A: 20        .byte $20   ; 
- D 1 - I - 0x01BF3B 06:BF2B: 20        .byte $20   ; 
- D 1 - I - 0x01BF3C 06:BF2C: 20        .byte $20   ; 
- D 1 - I - 0x01BF3D 06:BF2D: E6        .byte $E6   ; 
- D 1 - I - 0x01BF3E 06:BF2E: 03        .byte $03   ; 
- D 1 - I - 0x01BF3F 06:BF2F: 05        .byte $05   ; 
- D 1 - I - 0x01BF40 06:BF30: C0        .byte $C0   ; 
- D 1 - I - 0x01BF41 06:BF31: E6        .byte $E6   ; 
- D 1 - I - 0x01BF42 06:BF32: 07        .byte $07   ; 
- D 1 - I - 0x01BF43 06:BF33: F4        .byte $F4   ; 
- D 1 - I - 0x01BF44 06:BF34: 00        .byte $00   ; 
- D 1 - I - 0x01BF45 06:BF35: F0        .byte $F0   ; 
- D 1 - I - 0x01BF46 06:BF36: 25        .byte $25   ; 
- D 1 - I - 0x01BF47 06:BF37: E7        .byte $E7   ; 
- D 1 - I - 0x01BF48 06:BF38: 20        .byte $20   ; 
- D 1 - I - 0x01BF49 06:BF39: 02        .byte $02   ; 
- D 1 - I - 0x01BF4A 06:BF3A: E4        .byte $E4   ; 
- D 1 - I - 0x01BF4B 06:BF3B: A2        .byte $A2   ; 
- D 1 - I - 0x01BF4C 06:BF3C: E7        .byte $E7   ; 
- D 1 - I - 0x01BF4D 06:BF3D: 21        .byte $21   ; 
- D 1 - I - 0x01BF4E 06:BF3E: E8        .byte $E8   ; 
- D 1 - I - 0x01BF4F 06:BF3F: 18        .byte $18   ; 
- D 1 - I - 0x01BF50 06:BF40: E3        .byte $E3   ; 
- D 1 - I - 0x01BF51 06:BF41: 01        .byte $01   ; 
- D 1 - I - 0x01BF52 06:BF42: F7        .byte $F7   ; 
- D 1 - I - 0x01BF53 06:BF43: E3        .byte $E3   ; 
- D 1 - I - 0x01BF54 06:BF44: 00        .byte $00   ; 
- D 1 - I - 0x01BF55 06:BF45: F9        .byte $F9   ; 
- D 1 - I - 0x01BF56 06:BF46: E2        .byte $E2   ; 
- D 1 - I - 0x01BF57 06:BF47: 00        .byte $00   ; 
- D 1 - I - 0x01BF58 06:BF48: FF        .byte $FF   ; 



_off014_35_BF49_02:
- D 1 - I - 0x01BF59 06:BF49: EA        .byte $EA   ; 
- D 1 - I - 0x01BF5A 06:BF4A: 00        .byte $00   ; 
- D 1 - I - 0x01BF5B 06:BF4B: D1        .byte $D1   ; 
- D 1 - I - 0x01BF5C 06:BF4C: 00        .byte $00   ; 
- D 1 - I - 0x01BF5D 06:BF4D: E5        .byte $E5   ; 
- D 1 - I - 0x01BF5E 06:BF4E: A0        .byte $A0   ; 
- D 1 - I - 0x01BF5F 06:BF4F: B0        .byte $B0   ; 
- D 1 - I - 0x01BF60 06:BF50: E4        .byte $E4   ; 
- D 1 - I - 0x01BF61 06:BF51: 00        .byte $00   ; 
- D 1 - I - 0x01BF62 06:BF52: 10        .byte $10   ; 
- D 1 - I - 0x01BF63 06:BF53: 20        .byte $20   ; 
- D 1 - I - 0x01BF64 06:BF54: 30        .byte $30   ; 
- D 1 - I - 0x01BF65 06:BF55: 40        .byte $40   ; 
- D 1 - I - 0x01BF66 06:BF56: 50        .byte $50   ; 
- D 1 - I - 0x01BF67 06:BF57: 60        .byte $60   ; 
- D 1 - I - 0x01BF68 06:BF58: 70        .byte $70   ; 
- D 1 - I - 0x01BF69 06:BF59: 80        .byte $80   ; 
- D 1 - I - 0x01BF6A 06:BF5A: 90        .byte $90   ; 
- D 1 - I - 0x01BF6B 06:BF5B: A0        .byte $A0   ; 
- D 1 - I - 0x01BF6C 06:BF5C: B0        .byte $B0   ; 
- D 1 - I - 0x01BF6D 06:BF5D: D7        .byte $D7   ; 
- D 1 - I - 0x01BF6E 06:BF5E: 0F        .byte $0F   ; 
- D 1 - I - 0x01BF6F 06:BF5F: E3        .byte $E3   ; 
- D 1 - I - 0x01BF70 06:BF60: 01        .byte $01   ; 
- D 1 - I - 0x01BF71 06:BF61: E2        .byte $E2   ; 
- D 1 - I - 0x01BF72 06:BF62: 00        .byte $00   ; 
- D 1 - I - 0x01BF73 06:BF63: E4        .byte $E4   ; 
- D 1 - I - 0x01BF74 06:BF64: A1        .byte $A1   ; 
- D 1 - I - 0x01BF75 06:BF65: E3        .byte $E3   ; 
- D 1 - I - 0x01BF76 06:BF66: A0        .byte $A0   ; 
- D 1 - I - 0x01BF77 06:BF67: E4        .byte $E4   ; 
- D 1 - I - 0x01BF78 06:BF68: 72        .byte $72   ; 
- D 1 - I - 0x01BF79 06:BF69: C0        .byte $C0   ; 
- D 1 - I - 0x01BF7A 06:BF6A: D7        .byte $D7   ; 
- D 1 - I - 0x01BF7B 06:BF6B: 12        .byte $12   ; 
- D 1 - I - 0x01BF7C 06:BF6C: A3        .byte $A3   ; 
- D 1 - I - 0x01BF7D 06:BF6D: D1        .byte $D1   ; 
- D 1 - I - 0x01BF7E 06:BF6E: 00        .byte $00   ; 
- D 1 - I - 0x01BF7F 06:BF6F: E5        .byte $E5   ; 
- D 1 - I - 0x01BF80 06:BF70: A0        .byte $A0   ; 
- D 1 - I - 0x01BF81 06:BF71: B0        .byte $B0   ; 
- D 1 - I - 0x01BF82 06:BF72: E4        .byte $E4   ; 
- D 1 - I - 0x01BF83 06:BF73: 00        .byte $00   ; 
- D 1 - I - 0x01BF84 06:BF74: 10        .byte $10   ; 
- D 1 - I - 0x01BF85 06:BF75: 20        .byte $20   ; 
- D 1 - I - 0x01BF86 06:BF76: 30        .byte $30   ; 
- D 1 - I - 0x01BF87 06:BF77: 40        .byte $40   ; 
- D 1 - I - 0x01BF88 06:BF78: 50        .byte $50   ; 
- D 1 - I - 0x01BF89 06:BF79: 60        .byte $60   ; 
- D 1 - I - 0x01BF8A 06:BF7A: 70        .byte $70   ; 
- D 1 - I - 0x01BF8B 06:BF7B: 80        .byte $80   ; 
- D 1 - I - 0x01BF8C 06:BF7C: 90        .byte $90   ; 
- D 1 - I - 0x01BF8D 06:BF7D: A0        .byte $A0   ; 
- D 1 - I - 0x01BF8E 06:BF7E: B0        .byte $B0   ; 
- D 1 - I - 0x01BF8F 06:BF7F: D7        .byte $D7   ; 
- D 1 - I - 0x01BF90 06:BF80: 10        .byte $10   ; 
- D 1 - I - 0x01BF91 06:BF81: E3        .byte $E3   ; 
- D 1 - I - 0x01BF92 06:BF82: 02        .byte $02   ; 
- D 1 - I - 0x01BF93 06:BF83: E4        .byte $E4   ; 
- D 1 - I - 0x01BF94 06:BF84: A2        .byte $A2   ; 
- D 1 - I - 0x01BF95 06:BF85: D7        .byte $D7   ; 
- D 1 - I - 0x01BF96 06:BF86: 00        .byte $00   ; 
- D 1 - I - 0x01BF97 06:BF87: E3        .byte $E3   ; 
- D 1 - I - 0x01BF98 06:BF88: 00        .byte $00   ; 
- D 1 - I - 0x01BF99 06:BF89: D1        .byte $D1   ; 
- D 1 - I - 0x01BF9A 06:BF8A: 00        .byte $00   ; 
- D 1 - I - 0x01BF9B 06:BF8B: 00        .byte $00   ; 
- D 1 - I - 0x01BF9C 06:BF8C: E4        .byte $E4   ; 
- D 1 - I - 0x01BF9D 06:BF8D: B0        .byte $B0   ; 
- D 1 - I - 0x01BF9E 06:BF8E: A0        .byte $A0   ; 
- D 1 - I - 0x01BF9F 06:BF8F: 90        .byte $90   ; 
- D 1 - I - 0x01BFA0 06:BF90: 80        .byte $80   ; 
- D 1 - I - 0x01BFA1 06:BF91: 70        .byte $70   ; 
- D 1 - I - 0x01BFA2 06:BF92: 60        .byte $60   ; 
- D 1 - I - 0x01BFA3 06:BF93: 50        .byte $50   ; 
- D 1 - I - 0x01BFA4 06:BF94: 40        .byte $40   ; 
- D 1 - I - 0x01BFA5 06:BF95: 30        .byte $30   ; 
- D 1 - I - 0x01BFA6 06:BF96: 20        .byte $20   ; 
- D 1 - I - 0x01BFA7 06:BF97: 10        .byte $10   ; 
- D 1 - I - 0x01BFA8 06:BF98: 00        .byte $00   ; 
- D 1 - I - 0x01BFA9 06:BF99: FF        .byte $FF   ; 



_off014_35_BF9A_03:
- D 1 - I - 0x01BFAA 06:BF9A: D1        .byte $D1   ; 
- D 1 - I - 0x01BFAB 06:BF9B: 26        .byte $26   ; 
- D 1 - I - 0x01BFAC 06:BF9C: 22        .byte $22   ; 
- D 1 - I - 0x01BFAD 06:BF9D: 23        .byte $23   ; 
- D 1 - I - 0x01BFAE 06:BF9E: D1        .byte $D1   ; 
- D 1 - I - 0x01BFAF 06:BF9F: E2        .byte $E2   ; 
- D 1 - I - 0x01BFB0 06:BFA0: 00        .byte $00   ; 
- D 1 - I - 0x01BFB1 06:BFA1: D1        .byte $D1   ; 
- D 1 - I - 0x01BFB2 06:BFA2: 21        .byte $21   ; 
- D 1 - I - 0x01BFB3 06:BFA3: 23        .byte $23   ; 
- D 1 - I - 0x01BFB4 06:BFA4: FB        .byte $FB   ; 
- D 1 - I - 0x01BFB5 06:BFA5: E3        .byte $E3   ; 
- D 1 - I - 0x01BFB6 06:BFA6: 30        .byte $30   ; 
- D 1 - I - 0x01BFB7 06:BFA7: D1        .byte $D1   ; 
- D 1 - I - 0x01BFB8 06:BFA8: 25        .byte $25   ; 
- D 1 - I - 0x01BFB9 06:BFA9: FE        .byte $FE   ; 
- D 1 - I - 0x01BFBA 06:BFAA: 02        .byte $02   ; 
- D 1 - I - 0x01BFBB 06:BFAB: FB        .byte $FB   ; 
- D 1 - I - 0x01BFBC 06:BFAC: E3        .byte $E3   ; 
- D 1 - I - 0x01BFBD 06:BFAD: 20        .byte $20   ; 
- D 1 - I - 0x01BFBE 06:BFAE: D1        .byte $D1   ; 
- D 1 - I - 0x01BFBF 06:BFAF: 25        .byte $25   ; 
- D 1 - I - 0x01BFC0 06:BFB0: FE        .byte $FE   ; 
- D 1 - I - 0x01BFC1 06:BFB1: 03        .byte $03   ; 
- D 1 - I - 0x01BFC2 06:BFB2: E2        .byte $E2   ; 
- D 1 - I - 0x01BFC3 06:BFB3: 00        .byte $00   ; 
- D 1 - I - 0x01BFC4 06:BFB4: D1        .byte $D1   ; 
- D 1 - I - 0x01BFC5 06:BFB5: 25        .byte $25   ; 
- D 1 - I - 0x01BFC6 06:BFB6: C6        .byte $C6   ; 
- D 1 - I - 0x01BFC7 06:BFB7: C6        .byte $C6   ; 
- D 1 - I - 0x01BFC8 06:BFB8: B0        .byte $B0   ; 
- D 1 - I - 0x01BFC9 06:BFB9: 21        .byte $21   ; 
- D 1 - I - 0x01BFCA 06:BFBA: B0        .byte $B0   ; 
- D 1 - I - 0x01BFCB 06:BFBB: 22        .byte $22   ; 
- D 1 - I - 0x01BFCC 06:BFBC: E3        .byte $E3   ; 
- D 1 - I - 0x01BFCD 06:BFBD: 20        .byte $20   ; 
- D 1 - I - 0x01BFCE 06:BFBE: D1        .byte $D1   ; 
- D 1 - I - 0x01BFCF 06:BFBF: 25        .byte $25   ; 
- D 1 - I - 0x01BFD0 06:BFC0: C0        .byte $C0   ; 
- D 1 - I - 0x01BFD1 06:BFC1: 21        .byte $21   ; 
- D 1 - I - 0x01BFD2 06:BFC2: C0        .byte $C0   ; 
- D 1 - I - 0x01BFD3 06:BFC3: 22        .byte $22   ; 
- D 1 - I - 0x01BFD4 06:BFC4: A0        .byte $A0   ; 
- D 1 - I - 0x01BFD5 06:BFC5: 25        .byte $25   ; 
- D 1 - I - 0x01BFD6 06:BFC6: FB        .byte $FB   ; 
- D 1 - I - 0x01BFD7 06:BFC7: A0        .byte $A0   ; 
- D 1 - I - 0x01BFD8 06:BFC8: 25        .byte $25   ; 
- D 1 - I - 0x01BFD9 06:BFC9: FE        .byte $FE   ; 
- D 1 - I - 0x01BFDA 06:BFCA: 03        .byte $03   ; 
- D 1 - I - 0x01BFDB 06:BFCB: E2        .byte $E2   ; 
- D 1 - I - 0x01BFDC 06:BFCC: 00        .byte $00   ; 
- D 1 - I - 0x01BFDD 06:BFCD: D1        .byte $D1   ; 
- D 1 - I - 0x01BFDE 06:BFCE: 45        .byte $45   ; 
- D 1 - I - 0x01BFDF 06:BFCF: 26        .byte $26   ; 
- D 1 - I - 0x01BFE0 06:BFD0: C0        .byte $C0   ; 
- D 1 - I - 0x01BFE1 06:BFD1: 25        .byte $25   ; 
- D 1 - I - 0x01BFE2 06:BFD2: E3        .byte $E3   ; 
- D 1 - I - 0x01BFE3 06:BFD3: A0        .byte $A0   ; 
- D 1 - I - 0x01BFE4 06:BFD4: D1        .byte $D1   ; 
- D 1 - I - 0x01BFE5 06:BFD5: 45        .byte $45   ; 
- D 1 - I - 0x01BFE6 06:BFD6: 26        .byte $26   ; 
- D 1 - I - 0x01BFE7 06:BFD7: C0        .byte $C0   ; 
- D 1 - I - 0x01BFE8 06:BFD8: 25        .byte $25   ; 
- D 1 - I - 0x01BFE9 06:BFD9: E2        .byte $E2   ; 
- D 1 - I - 0x01BFEA 06:BFDA: 00        .byte $00   ; 
- D 1 - I - 0x01BFEB 06:BFDB: D1        .byte $D1   ; 
- D 1 - I - 0x01BFEC 06:BFDC: 45        .byte $45   ; 
- D 1 - I - 0x01BFED 06:BFDD: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x01BFEE 06:BFDE: FF        .byte $FF, $FF   ; 
- - - - - - 0x01BFF0 06:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01C000 06:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 3C: %Xh [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_3Cb"
- D 1 - - - 0x01C00F 06:BFFF: 3D        .byte con_prg_bank + $3D   ; 



