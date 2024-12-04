; common identical code/data for banks 88, 8A and 98.
; file was copied from bank 88 output.
; I've also combined cdl flags from all 3 banks

; there is some difference in cdl log usage between banks.
; most of the code was used by banks 88 and 8A.
; bank 98 doesn't use about half of code/data,
; however some code was used by bank 98 only

; labels with _inc_ in their names are used outside of this file



loc_8001_read_next_byte:
; !! bzk warning, this code must be located starting at 8001 because of 0x03E1DB
C D 0 - - - 0x010011 04:8001: E0 05     CPX #$05
C - - - - - 0x010013 04:8003: F0 32     BEQ bra_8037_channel_05
C - - - - - 0x010015 04:8005: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010017 04:8007: C9 FF     CMP #$FF
; bzk optimize, branch to 0x01002E
C - - - - - 0x010019 04:8009: F0 08     BEQ bra_8013
C - - - - - 0x01001B 04:800B: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x01001E 04:800E: 10 03     BPL bra_8013
- - - - - - 0x010020 04:8010: 4C 08 84  JMP loc_8408
bra_8013:
C - - - - - 0x010023 04:8013: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010025 04:8015: 29 F0     AND #$F0
C - - - - - 0x010027 04:8017: C9 C0     CMP #$C0
C - - - - - 0x010029 04:8019: B0 03     BCS bra_801E_it_is_control_byte
C - - - - - 0x01002B 04:801B: 4C 2C 81  JMP loc_812C
bra_801E_it_is_control_byte:
C - - - - - 0x01002E 04:801E: 29 30     AND #$30
; / 08
C - - - - - 0x010030 04:8020: 4A        LSR
C - - - - - 0x010031 04:8021: 4A        LSR
C - - - - - 0x010032 04:8022: 4A        LSR
C - - - - - 0x010033 04:8023: AA        TAX
C - - - - - 0x010034 04:8024: BD 03 87  LDA tbl_8703,X
C - - - - - 0x010037 04:8027: 85 E2     STA ram_00E2_se_t006_jmp
C - - - - - 0x010039 04:8029: BD 04 87  LDA tbl_8703 + $01,X
C - - - - - 0x01003C 04:802C: 85 E3     STA ram_00E2_se_t006_jmp + $01
C - - - - - 0x01003E 04:802E: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010040 04:8030: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010042 04:8032: 29 0F     AND #$0F
C - - - - - 0x010044 04:8034: 6C E2 00  JMP (ram_00E2_se_t006_jmp)
bra_8037_channel_05:
loc_8037_loop:
C D 0 - - - 0x010047 04:8037: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010049 04:8039: 29 F0     AND #$F0
C - - - - - 0x01004B 04:803B: C9 F0     CMP #$F0
C - - - - - 0x01004D 04:803D: D0 07     BNE bra_8046_00_EF
; F0-FF
C - - - - - 0x01004F 04:803F: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010051 04:8041: 29 0F     AND #$0F
C - - - - - 0x010053 04:8043: 4C A3 85  JMP loc_85A3_F0_FF
bra_8046_00_EF:
C - - - - - 0x010056 04:8046: C9 D0     CMP #$D0
C - - - - - 0x010058 04:8048: F0 03     BEQ bra_804D_D0_DF
; 00-CF, E0-EF
C - - - - - 0x01005A 04:804A: 4C 9B 82  JMP loc_829B
bra_804D_D0_DF:
C - - - - - 0x01005D 04:804D: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01005F 04:804F: 29 0F     AND #$0F
C - - - - - 0x010061 04:8051: 9D 0E 01  STA ram_010E_se,X
C - - - - - 0x010064 04:8054: C8        INY
C - - - - - 0x010065 04:8055: 4C 37 80  JMP loc_8037_loop



loc_8058:
C D 0 - - - 0x010068 04:8058: B1 E0     LDA (ram_00E0_se_t000_data),Y
; / 10
C - - - - - 0x01006A 04:805A: 4A        LSR
C - - - - - 0x01006B 04:805B: 4A        LSR
C - - - - - 0x01006C 04:805C: 4A        LSR
C - - - - - 0x01006D 04:805D: 4A        LSR
C - - - - - 0x01006E 04:805E: C9 0C     CMP #$0C
C - - - - - 0x010070 04:8060: D0 03     BNE bra_8065
C - - - - - 0x010072 04:8062: 4C A6 E1  JMP loc_0x03E1B6
bra_8065:
C - - - - - 0x010075 04:8065: AA        TAX
C - - - - - 0x010076 04:8066: BD 78 80  LDA tbl_8078_sounds,X
C - - - - - 0x010079 04:8069: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x01007B 04:806B: C9 6D     CMP #$6D
C - - - - - 0x01007D 04:806D: 90 03     BCC bra_8072_not_dmc
C - - - - - 0x01007F 04:806F: 4C AB E1  JMP loc_0x03E1BB_play_dmc
bra_8072_not_dmc:
C - - - - - 0x010082 04:8072: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x010085 04:8075: 4C A6 E1  JMP loc_0x03E1B6



tbl_8078_sounds:
- - - - - - 0x010088 04:8078: 01        .byte con_sound_01   ; 00 
- D 0 - - - 0x010089 04:8079: 02        .byte con_sound_02   ; 01 
- D 0 - - - 0x01008A 04:807A: 03        .byte con_sound_03   ; 02 
- - - - - - 0x01008B 04:807B: 04        .byte con_sound_04   ; 03 
- D 0 - - - 0x01008C 04:807C: 05        .byte con_sound_05   ; 04 
- - - - - - 0x01008D 04:807D: 70        .byte con_dmc_70     ; 05 
- D 0 - - - 0x01008E 04:807E: 79        .byte con_dmc_79     ; 06 
- D 0 - - - 0x01008F 04:807F: 6D        .byte con_dmc_6D     ; 07 
- D 0 - - - 0x010090 04:8080: 6E        .byte con_dmc_6E     ; 08 
- D 0 - - - 0x010091 04:8081: 6F        .byte con_dmc_6F     ; 09 
- D 0 - - - 0x010092 04:8082: 70        .byte con_dmc_70     ; 0A 
- D 0 - - - 0x010093 04:8083: 71        .byte con_dmc_71     ; 0B 



loc_8084:
C D 0 - - - 0x010094 04:8084: A9 01     LDA #$01
C - - - - - 0x010096 04:8086: 9D C0 03  STA ram_03C0_se,X
C - - - - - 0x010099 04:8089: BD 5B 01  LDA ram_015B_se,X
C - - - - - 0x01009C 04:808C: 20 CE E1  JSR sub_0x03E1DE
C - - - - - 0x01009F 04:808F: BD 89 01  LDA ram_0189_se,X
C - - - - - 0x0100A2 04:8092: 29 0F     AND #$0F
C - - - - - 0x0100A4 04:8094: 9D C3 03  STA ram_03C3_se,X
C - - - - - 0x0100A7 04:8097: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x0100AA 04:809A: 29 BB     AND #$BB
C - - - - - 0x0100AC 04:809C: 09 02     ORA #$02
C - - - - - 0x0100AE 04:809E: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x0100B1 04:80A1: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0100B4 04:80A4: 29 DF     AND #$DF
C - - - - - 0x0100B6 04:80A6: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0100B9 04:80A9: 4C 66 81  JMP loc_8166



sub_80AC:
C - - - - - 0x0100BC 04:80AC: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0100BF 04:80AF: 29 DF     AND #$DF
C - - - - - 0x0100C1 04:80B1: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0100C4 04:80B4: BD D8 03  LDA ram_03D8_se,X
C - - - - - 0x0100C7 04:80B7: 4A        LSR
C - - - - - 0x0100C8 04:80B8: 90 08     BCC bra_80C2_RTS
C - - - - - 0x0100CA 04:80BA: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0100CD 04:80BD: 09 20     ORA #$20
C - - - - - 0x0100CF 04:80BF: 9D 6E 01  STA ram_016E_se,X
bra_80C2_RTS:
C - - - - - 0x0100D2 04:80C2: 60        RTS



loc_80C3:
C D 0 - - - 0x0100D3 04:80C3: 29 7F     AND #$7F
C - - - - - 0x0100D5 04:80C5: 85 E4     STA ram_00E4_se_t003
C - - - - - 0x0100D7 04:80C7: 8A        TXA
C - - - - - 0x0100D8 04:80C8: 38        SEC
C - - - - - 0x0100D9 04:80C9: E5 E4     SBC ram_00E4_se_t003
C - - - - - 0x0100DB 04:80CB: B0 11     BCS bra_80DE
C - - - - - 0x0100DD 04:80CD: 38        SEC
C - - - - - 0x0100DE 04:80CE: E9 E8     SBC #$E8
C - - - - - 0x0100E0 04:80D0: AA        TAX
C - - - - - 0x0100E1 04:80D1: BD 0B 87  LDA tbl_870B,X
C - - - - - 0x0100E4 04:80D4: 85 EC     STA ram_00EC_se
C - - - - - 0x0100E6 04:80D6: BD 0C 87  LDA tbl_870B + $01,X
C - - - - - 0x0100E9 04:80D9: 85 ED     STA ram_00ED_se
C - - - - - 0x0100EB 04:80DB: 4C 89 81  JMP loc_8189
bra_80DE:
- - - - - - 0x0100EE 04:80DE: 4C 7E 81  JMP loc_817E



bra_80E1:
C - - - - - 0x0100F1 04:80E1: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0100F3 04:80E3: 29 0F     AND #$0F
sub_80E5:
C - - - - - 0x0100F5 04:80E5: AA        TAX
C - - - - - 0x0100F6 04:80E6: E8        INX
C - - - - - 0x0100F7 04:80E7: A9 00     LDA #$00
C - - - - - 0x0100F9 04:80E9: 8D 93 01  STA ram_0193_se
C - - - - - 0x0100FC 04:80EC: AD 5D 01  LDA ram_015B_se + $02
C - - - - - 0x0100FF 04:80EF: 85 E2     STA ram_00E2_se_t008_useless_01
C - - - - - 0x010101 04:80F1: F0 17     BEQ bra_810A
C - - - - - 0x010103 04:80F3: C9 80     CMP #$80
C - - - - - 0x010105 04:80F5: B0 29     BCS bra_8120
; bzk optimize, always 01 if goes here
C - - - - - 0x010107 04:80F7: E6 E2     INC ram_00E2_se_t008_useless_01    ; -> 01
C - - - - - 0x010109 04:80F9: A5 E2     LDA ram_00E2_se_t008_useless_01
loc_80FB_loop:
C D 0 - - - 0x01010B 04:80FB: CA        DEX
C - - - - - 0x01010C 04:80FC: F0 08     BEQ bra_8106
C - - - - - 0x01010E 04:80FE: 18        CLC
C - - - - - 0x01010F 04:80FF: 65 E2     ADC ram_00E2_se_t008_useless_01
C - - - - - 0x010111 04:8101: B0 07     BCS bra_810A
C - - - - - 0x010113 04:8103: 4C FB 80  JMP loc_80FB_loop
bra_8106:
C - - - - - 0x010116 04:8106: C9 80     CMP #$80
C - - - - - 0x010118 04:8108: 90 02     BCC bra_810C
bra_810A:
C - - - - - 0x01011A 04:810A: A9 90     LDA #$90
bra_810C:
loc_810C:
C - - - - - 0x01011C 04:810C: 8D 08 40  STA $4008
C - - - - - 0x01011F 04:810F: 20 53 87  JSR sub_8753_garbage_code
C - - - - - 0x010122 04:8112: 8D 94 01  STA ram_0194_se
C - - - - - 0x010125 04:8115: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010127 04:8117: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x01012A 04:811A: 10 01     BPL bra_811D
C - - - - - 0x01012C 04:811C: 60        RTS
bra_811D:
C - - - - - 0x01012D 04:811D: 4C 66 81  JMP loc_8166
bra_8120:
C - - - - - 0x010130 04:8120: 38        SEC
C - - - - - 0x010131 04:8121: E9 80     SBC #$80
C - - - - - 0x010133 04:8123: 4C 0C 81  JMP loc_810C



bra_8126:
C - - - - - 0x010136 04:8126: 4C C3 80  JMP loc_80C3



bra_8129_80_FF:
C - - - - - 0x010139 04:8129: 4C 84 80  JMP loc_8084



loc_812C:
C D 0 - - - 0x01013C 04:812C: 20 9B 82  JSR sub_829B
C - - - - - 0x01013F 04:812F: E0 02     CPX #$02
C - - - - - 0x010141 04:8131: F0 AE     BEQ bra_80E1
C - - - - - 0x010143 04:8133: 20 AC 80  JSR sub_80AC
C - - - - - 0x010146 04:8136: BD 89 01  LDA ram_0189_se,X
C - - - - - 0x010149 04:8139: 30 EE     BMI bra_8129_80_FF
; 00-7F
C - - - - - 0x01014B 04:813B: A9 00     LDA #$00
C - - - - - 0x01014D 04:813D: 9D B2 06  STA ram_06B2_se,X
C - - - - - 0x010150 04:8140: 9D C3 03  STA ram_03C3_se,X
C - - - - - 0x010153 04:8143: 9D C9 03  STA ram_03C9_se,X
C - - - - - 0x010156 04:8146: 9D C6 03  STA ram_03C6_se,X
C - - - - - 0x010159 04:8149: 9D C0 03  STA ram_03C0_se,X
C - - - - - 0x01015C 04:814C: FE C0 03  INC ram_03C0_se,X
C - - - - - 0x01015F 04:814F: 84 E4     STY ram_00E4_se_t004_save_Y
C - - - - - 0x010161 04:8151: 20 DE E1  JSR sub_0x03E1EE
C - - - - - 0x010164 04:8154: A4 E4     LDY ram_00E4_se_t004_save_Y
C - - - - - 0x010166 04:8156: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x010169 04:8159: 29 B9     AND #$B9
C - - - - - 0x01016B 04:815B: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x01016E 04:815E: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x010171 04:8161: 29 DF     AND #$DF
C - - - - - 0x010173 04:8163: 9D 6E 01  STA ram_016E_se,X
loc_8166:
C D 0 - - - 0x010176 04:8166: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010178 04:8168: 29 F0     AND #$F0
; / 08
C - - - - - 0x01017A 04:816A: 4A        LSR
C - - - - - 0x01017B 04:816B: 4A        LSR
C - - - - - 0x01017C 04:816C: 4A        LSR
C - - - - - 0x01017D 04:816D: AA        TAX
C - - - - - 0x01017E 04:816E: 84 E2     STY ram_00E2_se_t009
C - - - - - 0x010180 04:8170: A4 EE     LDY ram_00EE_se_channel_index
C - - - - - 0x010182 04:8172: B9 80 01  LDA ram_0180_se,Y
C - - - - - 0x010185 04:8175: F0 08     BEQ bra_817F
C - - - - - 0x010187 04:8177: 30 AD     BMI bra_8126
C - - - - - 0x010189 04:8179: 8A        TXA
C - - - - - 0x01018A 04:817A: 18        CLC
C - - - - - 0x01018B 04:817B: 79 80 01  ADC ram_0180_se,Y
loc_817E:
C - - - - - 0x01018E 04:817E: AA        TAX
bra_817F:
C - - - - - 0x01018F 04:817F: BD 23 87  LDA tbl_8723,X
C - - - - - 0x010192 04:8182: 85 EC     STA ram_00EC_se
C - - - - - 0x010194 04:8184: BD 24 87  LDA tbl_8723 + $01,X
C - - - - - 0x010197 04:8187: 85 ED     STA ram_00ED_se
loc_8189:
C D 0 - - - 0x010199 04:8189: A4 E2     LDY ram_00E2_se_t009
C - - - - - 0x01019B 04:818B: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x01019D 04:818D: BD 7D 01  LDA ram_017D_se,X
C - - - - - 0x0101A0 04:8190: AA        TAX
bra_8191_loop:
C - - - - - 0x0101A1 04:8191: E0 05     CPX #$05
C - - - - - 0x0101A3 04:8193: F0 07     BEQ bra_819C
C - - - - - 0x0101A5 04:8195: 46 ED     LSR ram_00ED_se
C - - - - - 0x0101A7 04:8197: 66 EC     ROR ram_00EC_se
C - - - - - 0x0101A9 04:8199: E8        INX
C - - - - - 0x0101AA 04:819A: D0 F5     BNE bra_8191_loop    ; jmp
bra_819C:
C - - - - - 0x0101AC 04:819C: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x0101AE 04:819E: A5 EC     LDA ram_00EC_se
C - - - - - 0x0101B0 04:81A0: 9D 83 01  STA ram_0183_se,X
C - - - - - 0x0101B3 04:81A3: A5 ED     LDA ram_00ED_se
C - - - - - 0x0101B5 04:81A5: 9D 86 01  STA ram_0186_se,X
C - - - - - 0x0101B8 04:81A8: E0 02     CPX #$02
C - - - - - 0x0101BA 04:81AA: F0 1B     BEQ bra_81C7
C - - - - - 0x0101BC 04:81AC: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x0101BF 04:81AF: 30 03     BMI bra_81B4
C - - - - - 0x0101C1 04:81B1: 20 29 82  JSR sub_8229
bra_81B4:
C - - - - - 0x0101C4 04:81B4: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0101C7 04:81B7: 29 10     AND #$10
C - - - - - 0x0101C9 04:81B9: F0 0C     BEQ bra_81C7
C - - - - - 0x0101CB 04:81BB: BD DB 03  LDA ram_03DB_se,X
C - - - - - 0x0101CE 04:81BE: D0 07     BNE bra_81C7
C - - - - - 0x0101D0 04:81C0: 98        TYA
C - - - - - 0x0101D1 04:81C1: 48        PHA
C - - - - - 0x0101D2 04:81C2: 20 EC E1  JSR sub_0x03E1FC
C - - - - - 0x0101D5 04:81C5: 68        PLA
C - - - - - 0x0101D6 04:81C6: A8        TAY
bra_81C7:
C - - - - - 0x0101D7 04:81C7: 20 CD 81  JSR sub_81CD
C - - - - - 0x0101DA 04:81CA: 4C D6 86  JMP loc_86D6



sub_81CD:
sub_inc_81CD:
C - - - - - 0x0101DD 04:81CD: E0 06     CPX #$06
C - - - - - 0x0101DF 04:81CF: F0 2D     BEQ bra_81FE
C - - - - - 0x0101E1 04:81D1: 20 6F 82  JSR sub_826F
C - - - - - 0x0101E4 04:81D4: E0 02     CPX #$02
C - - - - - 0x0101E6 04:81D6: F0 26     BEQ bra_81FE
C - - - - - 0x0101E8 04:81D8: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0101EB 04:81DB: 29 10     AND #$10
C - - - - - 0x0101ED 04:81DD: F0 08     BEQ bra_81E7
C - - - - - 0x0101EF 04:81DF: BD DE 03  LDA ram_03DE_se,X
C - - - - - 0x0101F2 04:81E2: C9 FF     CMP #$FF
C - - - - - 0x0101F4 04:81E4: D0 01     BNE bra_81E7
- - - - - - 0x0101F6 04:81E6: 60        RTS
sub_inc_81E7:
bra_81E7:
C - - - - - 0x0101F7 04:81E7: A5 ED     LDA ram_00ED_se
C - - - - - 0x0101F9 04:81E9: DD 4D 01  CMP ram_014D_se,X
C - - - - - 0x0101FC 04:81EC: D0 12     BNE bra_8200
C - - - - - 0x0101FE 04:81EE: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x010201 04:81F1: 29 81     AND #$81
C - - - - - 0x010203 04:81F3: C9 81     CMP #$81
C - - - - - 0x010205 04:81F5: F0 07     BEQ bra_81FE
C - - - - - 0x010207 04:81F7: BD 62 01  LDA ram_0162_se,X
C - - - - - 0x01020A 04:81FA: 29 10     AND #$10
C - - - - - 0x01020C 04:81FC: D0 12     BNE bra_8210
sub_81FE:
bra_81FE:
C - - - - - 0x01020E 04:81FE: A5 ED     LDA ram_00ED_se
bra_8200:
C - - - - - 0x010210 04:8200: 9D 4D 01  STA ram_014D_se,X
C - - - - - 0x010213 04:8203: 09 08     ORA #$08
C - - - - - 0x010215 04:8205: 20 13 83  JSR sub_8313
C - - - - - 0x010218 04:8208: B0 06     BCS bra_8210
C - - - - - 0x01021A 04:820A: 9D 03 40  STA $4003,X ; 4003 4007 400B 400F
C - - - - - 0x01021D 04:820D: 20 53 87  JSR sub_8753_garbage_code
bra_8210:
C - - - - - 0x010220 04:8210: A5 EC     LDA ram_00EC_se
C - - - - - 0x010222 04:8212: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010224 04:8214: E0 03     CPX #$03
C - - - - - 0x010226 04:8216: B0 03     BCS bra_821B
C - - - - - 0x010228 04:8218: 9D 78 01  STA ram_0178_se,X
bra_821B:
C - - - - - 0x01022B 04:821B: 20 13 83  JSR sub_8313
C - - - - - 0x01022E 04:821E: B0 06     BCS bra_8226
C - - - - - 0x010230 04:8220: 9D 02 40  STA $4002,X ; 4002 4006 400A 400E
C - - - - - 0x010233 04:8223: 20 53 87  JSR sub_8753_garbage_code
bra_8226:
C - - - - - 0x010236 04:8226: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010238 04:8228: 60        RTS



sub_8229:
sub_inc_8229:
C - - - - - 0x010239 04:8229: 84 E2     STY ram_00E2_se_t00A_save_Y
C - - - - - 0x01023B 04:822B: BD AF 06  LDA ram_06AF_se,X
C - - - - - 0x01023E 04:822E: E0 00     CPX #$00
C - - - - - 0x010240 04:8230: F0 02     BEQ bra_8234
C - - - - - 0x010242 04:8232: 09 04     ORA #$04
bra_8234:
C - - - - - 0x010244 04:8234: A8        TAY
C - - - - - 0x010245 04:8235: A5 ED     LDA ram_00ED_se
C - - - - - 0x010247 04:8237: 99 BF 06  STA ram_06BF_se,Y
C - - - - - 0x01024A 04:823A: A5 EC     LDA ram_00EC_se
C - - - - - 0x01024C 04:823C: 99 B5 06  STA ram_06B5_se,Y
C - - - - - 0x01024F 04:823F: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x010252 04:8242: 29 40     AND #$40
C - - - - - 0x010254 04:8244: F0 1B     BEQ bra_8261
C - - - - - 0x010256 04:8246: BD AC 06  LDA ram_06AC_se,X
C - - - - - 0x010259 04:8249: 29 BF     AND #$BF
C - - - - - 0x01025B 04:824B: 9D AC 06  STA ram_06AC_se,X
C - - - - - 0x01025E 04:824E: A9 03     LDA #$03
C - - - - - 0x010260 04:8250: 85 E4     STA ram_00E4_se_t005_loop_counter
bra_8252_loop:
C - - - - - 0x010262 04:8252: C8        INY
C - - - - - 0x010263 04:8253: A5 ED     LDA ram_00ED_se
C - - - - - 0x010265 04:8255: 99 BF 06  STA ram_06BF_se,Y
C - - - - - 0x010268 04:8258: A5 EC     LDA ram_00EC_se
C - - - - - 0x01026A 04:825A: 99 B5 06  STA ram_06B5_se,Y
C - - - - - 0x01026D 04:825D: C6 E4     DEC ram_00E4_se_t005_loop_counter
C - - - - - 0x01026F 04:825F: D0 F1     BNE bra_8252_loop
bra_8261:
C - - - - - 0x010271 04:8261: A4 E2     LDY ram_00E2_se_t00A_save_Y
C - - - - - 0x010273 04:8263: FE AF 06  INC ram_06AF_se,X
C - - - - - 0x010276 04:8266: BD AF 06  LDA ram_06AF_se,X
C - - - - - 0x010279 04:8269: 29 03     AND #$03
C - - - - - 0x01027B 04:826B: 9D AF 06  STA ram_06AF_se,X
C - - - - - 0x01027E 04:826E: 60        RTS



sub_826F:
C - - - - - 0x01027F 04:826F: BD 73 01  LDA ram_0173_se,X
C - - - - - 0x010282 04:8272: 85 E2     STA ram_00E2_se_t00B
C - - - - - 0x010284 04:8274: F0 11     BEQ bra_8287_RTS
C - - - - - 0x010286 04:8276: 10 10     BPL bra_8288
- - - - - - 0x010288 04:8278: 29 7F     AND #$7F
- - - - - - 0x01028A 04:827A: 85 E2     STA ram_00E2_se_t00B
- - - - - - 0x01028C 04:827C: A5 EC     LDA ram_00EC_se
- - - - - - 0x01028E 04:827E: 18        CLC
- - - - - - 0x01028F 04:827F: 65 E2     ADC ram_00E2_se_t00B
- - - - - - 0x010291 04:8281: 85 EC     STA ram_00EC_se
- - - - - - 0x010293 04:8283: 90 02     BCC bra_8287_RTS
; if overflow
- - - - - - 0x010295 04:8285: E6 ED     INC ram_00ED_se
bra_8287_RTS:
C - - - - - 0x010297 04:8287: 60        RTS
bra_8288:
C - - - - - 0x010298 04:8288: A5 EC     LDA ram_00EC_se
C - - - - - 0x01029A 04:828A: 38        SEC
C - - - - - 0x01029B 04:828B: E5 E2     SBC ram_00E2_se_t00B
C - - - - - 0x01029D 04:828D: 85 EC     STA ram_00EC_se
C - - - - - 0x01029F 04:828F: B0 02     BCS bra_8293_RTS
; if underflow
C - - - - - 0x0102A1 04:8291: C6 ED     DEC ram_00ED_se
bra_8293_RTS:
C - - - - - 0x0102A3 04:8293: 60        RTS



bra_8294:
C - - - - - 0x0102A4 04:8294: 20 C6 86  JSR sub_86C6
C - - - - - 0x0102A7 04:8297: 88        DEY
C - - - - - 0x0102A8 04:8298: 4C 58 80  JMP loc_8058



loc_829B:
sub_829B:
C D 0 - - - 0x0102AB 04:829B: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0102AD 04:829D: 29 0F     AND #$0F
sub_829F:
; in
    ; A = 
C - - - - - 0x0102AF 04:829F: 85 E2     STA ram_00E2_se_t00C_loop_counter
C - - - - - 0x0102B1 04:82A1: F0 0D     BEQ bra_82B0
C - - - - - 0x0102B3 04:82A3: BD 0E 01  LDA ram_010E_se,X
bra_82A6_loop:
C - - - - - 0x0102B6 04:82A6: 18        CLC
C - - - - - 0x0102B7 04:82A7: 7D 0E 01  ADC ram_010E_se,X
C - - - - - 0x0102BA 04:82AA: C6 E2     DEC ram_00E2_se_t00C_loop_counter
C - - - - - 0x0102BC 04:82AC: D0 F8     BNE bra_82A6_loop
C - - - - - 0x0102BE 04:82AE: F0 03     BEQ bra_82B3    ; jmp
bra_82B0:
C - - - - - 0x0102C0 04:82B0: BD 0E 01  LDA ram_010E_se,X
bra_82B3:
C - - - - - 0x0102C3 04:82B3: 9D 00 01  STA ram_0100_se,X
C - - - - - 0x0102C6 04:82B6: E0 05     CPX #$05
C - - - - - 0x0102C8 04:82B8: F0 DA     BEQ bra_8294
C - - - - - 0x0102CA 04:82BA: E0 02     CPX #$02
C - - - - - 0x0102CC 04:82BC: F0 29     BEQ bra_82E7_RTS
C - - - - - 0x0102CE 04:82BE: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0102D1 04:82C1: 29 10     AND #$10
C - - - - - 0x0102D3 04:82C3: F0 14     BEQ bra_82D9
C - - - - - 0x0102D5 04:82C5: BD DB 03  LDA ram_03DB_se,X
C - - - - - 0x0102D8 04:82C8: 9D DE 03  STA ram_03DE_se,X
C - - - - - 0x0102DB 04:82CB: FE DE 03  INC ram_03DE_se,X
C - - - - - 0x0102DE 04:82CE: A9 00     LDA #$00
C - - - - - 0x0102E0 04:82D0: 9D A6 06  STA ram_06A6_se,X
C - - - - - 0x0102E3 04:82D3: 9D A9 06  STA ram_06A9_se,X
C - - - - - 0x0102E6 04:82D6: 9D A0 06  STA ram_06A0_se,X
bra_82D9:
C - - - - - 0x0102E9 04:82D9: BD CF 03  LDA ram_03CF_se,X
C - - - - - 0x0102EC 04:82DC: 20 E8 82  JSR sub_82E8
C - - - - - 0x0102EF 04:82DF: 9D CC 03  STA ram_03CC_se,X
C - - - - - 0x0102F2 04:82E2: A9 01     LDA #$01
C - - - - - 0x0102F4 04:82E4: 9D D5 03  STA ram_03D5_se,X
bra_82E7_RTS:
C - - - - - 0x0102F7 04:82E7: 60        RTS



sub_82E8:
; out
    ; A = 
C - - - - - 0x0102F8 04:82E8: 29 0F     AND #$0F
C - - - - - 0x0102FA 04:82EA: 85 E2     STA ram_00E2_se_t00D_loop_counter
C - - - - - 0x0102FC 04:82EC: A9 00     LDA #$00
C - - - - - 0x0102FE 04:82EE: 85 E4     STA ram_00E4_se_t006_lo
C - - - - - 0x010300 04:82F0: 85 E5     STA ram_00E5_se_t001_hi
bra_82F2_loop:
C - - - - - 0x010302 04:82F2: C6 E2     DEC ram_00E2_se_t00D_loop_counter
C - - - - - 0x010304 04:82F4: 30 0E     BMI bra_8304
C - - - - - 0x010306 04:82F6: 18        CLC
C - - - - - 0x010307 04:82F7: BD 00 01  LDA ram_0100_se,X
C - - - - - 0x01030A 04:82FA: 65 E4     ADC ram_00E4_se_t006_lo
C - - - - - 0x01030C 04:82FC: 85 E4     STA ram_00E4_se_t006_lo
C - - - - - 0x01030E 04:82FE: 90 F2     BCC bra_82F2_loop
; if overflow
C - - - - - 0x010310 04:8300: E6 E5     INC ram_00E5_se_t001_hi
C - - - - - 0x010312 04:8302: D0 EE     BNE bra_82F2_loop   ; jmp
bra_8304:
; * 10
C - - - - - 0x010314 04:8304: 0A        ASL
C - - - - - 0x010315 04:8305: 26 E5     ROL ram_00E5_se_t001_hi
C - - - - - 0x010317 04:8307: 0A        ASL
C - - - - - 0x010318 04:8308: 26 E5     ROL ram_00E5_se_t001_hi
C - - - - - 0x01031A 04:830A: 0A        ASL
C - - - - - 0x01031B 04:830B: 26 E5     ROL ram_00E5_se_t001_hi
C - - - - - 0x01031D 04:830D: 0A        ASL
C - - - - - 0x01031E 04:830E: 26 E5     ROL ram_00E5_se_t001_hi
C - - - - - 0x010320 04:8310: A5 E5     LDA ram_00E5_se_t001_hi
C - - - - - 0x010322 04:8312: 60        RTS



sub_8313:
sub_inc_8313:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x010323 04:8313: 48        PHA
C - - - - - 0x010324 04:8314: E0 00     CPX #$00
C - - - - - 0x010326 04:8316: F0 12     BEQ bra_832A_channel_00
C - - - - - 0x010328 04:8318: E0 01     CPX #$01
C - - - - - 0x01032A 04:831A: F0 16     BEQ bra_8332_channel_01
bra_831C:
C - - - - - 0x01032C 04:831C: 18        CLC
bra_831D:
C - - - - - 0x01032D 04:831D: BD 23 83  LDA tbl_8323,X
C - - - - - 0x010330 04:8320: AA        TAX
C - - - - - 0x010331 04:8321: 68        PLA
C - - - - - 0x010332 04:8322: 60        RTS



tbl_8323:
- D 0 - - - 0x010333 04:8323: 00        .byte $00   ; 00 
- D 0 - - - 0x010334 04:8324: 04        .byte $04   ; 01 
- D 0 - - - 0x010335 04:8325: 08        .byte $08   ; 02 
- - - - - - 0x010336 04:8326: 00        .byte $00   ; 03 
- - - - - - 0x010337 04:8327: 04        .byte $04   ; 04 
- - - - - - 0x010338 04:8328: 0C        .byte $0C   ; 05 
- - - - - - 0x010339 04:8329: 0C        .byte $0C   ; 06 



bra_832A_channel_00:
C - - - - - 0x01033A 04:832A: AD 0A 01  LDA ram_0107_se + $03
C - - - - - 0x01033D 04:832D: F0 ED     BEQ bra_831C
C - - - - - 0x01033F 04:832F: 38        SEC
C - - - - - 0x010340 04:8330: D0 EB     BNE bra_831D    ; jmp



bra_8332_channel_01:
C - - - - - 0x010342 04:8332: AD 0B 01  LDA ram_0107_se + $04
C - - - - - 0x010345 04:8335: F0 E5     BEQ bra_831C
- - - - - - 0x010347 04:8337: 38        SEC
- - - - - - 0x010348 04:8338: D0 E3     BNE bra_831D    ; jmp



ofs_060_833A_00___C0_CF:
; con_se_cb_1_C0
C - - J - - 0x01034A 04:833A: 20 9F 82  JSR sub_829F
C - - - - - 0x01034D 04:833D: A9 00     LDA #$00
C - - - - - 0x01034F 04:833F: E0 02     CPX #$02
C - - - - - 0x010351 04:8341: D0 06     BNE bra_8349
C - - - - - 0x010353 04:8343: 20 7C 86  JSR sub_867C
C - - - - - 0x010356 04:8346: 4C 56 83  JMP loc_8356
bra_8349:
C - - - - - 0x010359 04:8349: A9 30     LDA #$30
C - - - - - 0x01035B 04:834B: 20 13 83  JSR sub_8313
C - - - - - 0x01035E 04:834E: B0 06     BCS bra_8356
C - - - - - 0x010360 04:8350: 9D 00 40  STA $4000,X ; 4000 4004
C - - - - - 0x010363 04:8353: 20 53 87  JSR sub_8753_garbage_code
bra_8356:
loc_8356:
C - - - - - 0x010366 04:8356: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010368 04:8358: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x01036B 04:835B: 09 40     ORA #$40
C - - - - - 0x01036D 04:835D: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x010370 04:8360: 4C D6 86  JMP loc_86D6



ofs_060_8363_01___D0_DF:
; con_se_cb_1_D0
C - - J - - 0x010373 04:8363: 9D 0E 01  STA ram_010E_se,X
C - - - - - 0x010376 04:8366: C8        INY
C - - - - - 0x010377 04:8367: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010379 04:8369: E0 02     CPX #$02
C - - - - - 0x01037B 04:836B: F0 33     BEQ bra_83A0_channel_02
C - - - - - 0x01037D 04:836D: 29 F0     AND #$F0
C - - - - - 0x01037F 04:836F: 9D 62 01  STA ram_0162_se,X
C - - - - - 0x010382 04:8372: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010384 04:8374: 29 0F     AND #$0F
C - - - - - 0x010386 04:8376: 9D 5B 01  STA ram_015B_se,X
C - - - - - 0x010389 04:8379: C8        INY
C - - - - - 0x01038A 04:837A: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01038C 04:837C: 9D 89 01  STA ram_0189_se,X
C - - - - - 0x01038F 04:837F: 10 04     BPL bra_8385
C - - - - - 0x010391 04:8381: A9 00     LDA #$00
C - - - - - 0x010393 04:8383: F0 03     BEQ bra_8388    ; jmp
bra_8385:
C - - - - - 0x010395 04:8385: BD 5B 01  LDA ram_015B_se,X
bra_8388:
C - - - - - 0x010398 04:8388: 9D 69 01  STA ram_0169_se,X
C - - - - - 0x01039B 04:838B: C8        INY
loc_838C:
C D 0 - - - 0x01039C 04:838C: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01039E 04:838E: 29 0F     AND #$0F
C - - - - - 0x0103A0 04:8390: 9D CF 03  STA ram_03CF_se,X
C - - - - - 0x0103A3 04:8393: B1 E0     LDA (ram_00E0_se_t000_data),Y
; / 10
C - - - - - 0x0103A5 04:8395: 4A        LSR
C - - - - - 0x0103A6 04:8396: 4A        LSR
C - - - - - 0x0103A7 04:8397: 4A        LSR
C - - - - - 0x0103A8 04:8398: 4A        LSR
C - - - - - 0x0103A9 04:8399: 9D D2 03  STA ram_03D2_se,X
C - - - - - 0x0103AC 04:839C: C8        INY
C - - - - - 0x0103AD 04:839D: 4C 01 80  JMP loc_8001_read_next_byte
bra_83A0_channel_02:
C - - - - - 0x0103B0 04:83A0: 8D 5D 01  STA ram_015B_se + $02
C - - - - - 0x0103B3 04:83A3: C8        INY
C - - - - - 0x0103B4 04:83A4: 4C 01 80  JMP loc_8001_read_next_byte



ofs_060_83A7_02___E0_EF:
; con_se_cb_1_E0
C - - J - - 0x0103B7 04:83A7: 85 E2     STA ram_00E2_se_t00E
C - - - - - 0x0103B9 04:83A9: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0103BC 04:83AC: 29 7F     AND #$7F
C - - - - - 0x0103BE 04:83AE: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0103C1 04:83B1: A5 E2     LDA ram_00E2_se_t00E
C - - - - - 0x0103C3 04:83B3: C9 06     CMP #$06
C - - - - - 0x0103C5 04:83B5: B0 07     BCS bra_83BE_E6_EF
; A = 00-05 (E0-E5)
C - - - - - 0x0103C7 04:83B7: 9D 7D 01  STA ram_017D_se,X
C - - - - - 0x0103CA 04:83BA: C8        INY
C - - - - - 0x0103CB 04:83BB: 4C 01 80  JMP loc_8001_read_next_byte
bra_83BE_E6_EF:
C - - - - - 0x0103CE 04:83BE: 29 0F     AND #$0F    ; bzk optimize, no need for AND 0F, 0x010042 already does it
C - - - - - 0x0103D0 04:83C0: 38        SEC
C - - - - - 0x0103D1 04:83C1: E9 06     SBC #$06
C - - - - - 0x0103D3 04:83C3: 0A        ASL
C - - - - - 0x0103D4 04:83C4: AA        TAX
C - - - - - 0x0103D5 04:83C5: BD D4 83  LDA tbl_83D4,X
C - - - - - 0x0103D8 04:83C8: 85 E2     STA ram_00E2_se_t007_jmp
C - - - - - 0x0103DA 04:83CA: BD D5 83  LDA tbl_83D4 + $01,X
C - - - - - 0x0103DD 04:83CD: 85 E3     STA ram_00E2_se_t007_jmp + $01
C - - - - - 0x0103DF 04:83CF: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x0103E1 04:83D1: 6C E2 00  JMP (ram_00E2_se_t007_jmp)



tbl_83D4:
; see con_se_cb_1
- D 0 - - - 0x0103E4 04:83D4: E8 83     .word ofs_058_83E8_E6
- D 0 - - - 0x0103E6 04:83D6: FF 83     .word ofs_058_83FF_E7
- D 0 - - - 0x0103E8 04:83D8: 46 84     .word ofs_058_8446_E8
- D 0 - - - 0x0103EA 04:83DA: 4A 84     .word ofs_058_844A_E9
- D 0 - - - 0x0103EC 04:83DC: 7C 84     .word ofs_058_847C_EA
- D 0 - - - 0x0103EE 04:83DE: 8F 84     .word ofs_058_848F_EB
- D 0 - - - 0x0103F0 04:83E0: DD 84     .word ofs_058_84DD_EC
- D 0 - - - 0x0103F2 04:83E2: 0D 85     .word ofs_058_850D_ED
- D 0 - - - 0x0103F4 04:83E4: 1A 85     .word ofs_058_851A_EE
- - - - - - 0x0103F6 04:83E6: 0D 85     .word ofs_058_850D_EF   ; unused, indes doesn't exist



ofs_058_83E8_E6:
; con_se_cb_1_E6
C - - J - - 0x0103F8 04:83E8: C8        INY
C - - - - - 0x0103F9 04:83E9: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0103FB 04:83EB: 9D 0E 01  STA ram_010E_se,X
C - - - - - 0x0103FE 04:83EE: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x010401 04:83F1: 10 08     BPL bra_83FB
- - - - - - 0x010403 04:83F3: BD 0E 01  LDA ram_010E_se,X
- - - - - - 0x010406 04:83F6: 29 0F     AND #$0F
- - - - - - 0x010408 04:83F8: 9D 0E 01  STA ram_010E_se,X
bra_83FB:
C - - - - - 0x01040B 04:83FB: C8        INY
C - - - - - 0x01040C 04:83FC: 4C 01 80  JMP loc_8001_read_next_byte



ofs_058_83FF_E7:
; con_se_cb_1_E7
C - - J - - 0x01040F 04:83FF: C8        INY
C - - - - - 0x010410 04:8400: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x010413 04:8403: 09 80     ORA #$80
C - - - - - 0x010415 04:8405: 9D 6E 01  STA ram_016E_se,X
loc_8408:
C - - - - - 0x010418 04:8408: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01041A 04:840A: 29 F0     AND #$F0
; / 10
C - - - - - 0x01041C 04:840C: 4A        LSR
C - - - - - 0x01041D 04:840D: 4A        LSR
C - - - - - 0x01041E 04:840E: 4A        LSR
C - - - - - 0x01041F 04:840F: AA        TAX
C - - - - - 0x010420 04:8410: 88        DEY
C - - - - - 0x010421 04:8411: BD 20 84  LDA tbl_8420,X
C - - - - - 0x010424 04:8414: 85 E2     STA ram_00E2_se_t002_jmp
C - - - - - 0x010426 04:8416: BD 21 84  LDA tbl_8420 + $01,X
C - - - - - 0x010429 04:8419: 85 E3     STA ram_00E2_se_t002_jmp + $01
C - - - - - 0x01042B 04:841B: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x01042D 04:841D: 6C E2 00  JMP (ram_00E2_se_t002_jmp)



tbl_8420:
; bzk optimize, same pointers
- D 0 - - - 0x010430 04:8420: 34 84     .word ofs_061_8434_00
- D 0 - - - 0x010432 04:8422: 34 84     .word ofs_061_8434_01
- D 0 - - - 0x010434 04:8424: 34 84     .word ofs_061_8434_02
- - - - - - 0x010436 04:8426: 34 84     .word ofs_061_8434_03
- - - - - - 0x010438 04:8428: 34 84     .word ofs_061_8434_04
- - - - - - 0x01043A 04:842A: 34 84     .word ofs_061_8434_05
- - - - - - 0x01043C 04:842C: 34 84     .word ofs_061_8434_06
- - - - - - 0x01043E 04:842E: 34 84     .word ofs_061_8434_07
- D 0 - - - 0x010440 04:8430: 34 84     .word ofs_061_8434_08
- - - - - - 0x010442 04:8432: 34 84     .word ofs_061_8434_09



ofs_061_8434_00:
ofs_061_8434_01:
ofs_061_8434_02:
ofs_061_8434_03:
ofs_061_8434_04:
ofs_061_8434_05:
ofs_061_8434_06:
ofs_061_8434_07:
ofs_061_8434_08:
ofs_061_8434_09:
C - - J - - 0x010444 04:8434: C8        INY
C - - - - - 0x010445 04:8435: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010447 04:8437: 9D 89 01  STA ram_0189_se,X
C - - - - - 0x01044A 04:843A: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x01044D 04:843D: 29 7F     AND #$7F
C - - - - - 0x01044F 04:843F: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x010452 04:8442: C8        INY
C - - - - - 0x010453 04:8443: 4C 01 80  JMP loc_8001_read_next_byte



ofs_058_8446_E8:
; con_se_cb_1_E8
C - - J - - 0x010456 04:8446: C8        INY
C - - - - - 0x010457 04:8447: 4C 8C 83  JMP loc_838C



ofs_058_844A_E9:
; con_se_cb_1_E9
C - - J - - 0x01045A 04:844A: C8        INY
C - - - - - 0x01045B 04:844B: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01045D 04:844D: F0 15     BEQ bra_8464_00
C - - - - - 0x01045F 04:844F: 29 0F     AND #$0F
C - - - - - 0x010461 04:8451: F0 21     BEQ bra_8474
C - - - - - 0x010463 04:8453: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010465 04:8455: 9D D8 03  STA ram_03D8_se,X
C - - - - - 0x010468 04:8458: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x01046B 04:845B: 09 20     ORA #$20
C - - - - - 0x01046D 04:845D: 9D 6E 01  STA ram_016E_se,X
loc_8460_INY_and_read_next_byte:
C D 0 - - - 0x010470 04:8460: C8        INY
C - - - - - 0x010471 04:8461: 4C 01 80  JMP loc_8001_read_next_byte
bra_8464_00:
C - - - - - 0x010474 04:8464: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x010477 04:8467: 29 DF     AND #$DF
C - - - - - 0x010479 04:8469: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x01047C 04:846C: A9 00     LDA #$00
C - - - - - 0x01047E 04:846E: 9D D8 03  STA ram_03D8_se,X
C - - - - - 0x010481 04:8471: 4C 60 84  JMP loc_8460_INY_and_read_next_byte
bra_8474:
C - - - - - 0x010484 04:8474: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010486 04:8476: 9D 62 01  STA ram_0162_se,X
C - - - - - 0x010489 04:8479: 4C 60 84  JMP loc_8460_INY_and_read_next_byte



ofs_058_847C_EA:
; con_se_cb_1_EA
C - - J - - 0x01048C 04:847C: C8        INY
C - - - - - 0x01048D 04:847D: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01048F 04:847F: 30 08     BMI bra_8489
C - - - - - 0x010491 04:8481: 0A        ASL
loc_8482:
C D 0 - - - 0x010492 04:8482: 9D 80 01  STA ram_0180_se,X
C - - - - - 0x010495 04:8485: C8        INY
C - - - - - 0x010496 04:8486: 4C 01 80  JMP loc_8001_read_next_byte
bra_8489:
C - - - - - 0x010499 04:8489: 0A        ASL
C - - - - - 0x01049A 04:848A: 09 80     ORA #$80
C - - - - - 0x01049C 04:848C: 4C 82 84  JMP loc_8482



ofs_058_848F_EB:
; con_se_cb_1_EB
C - - J - - 0x01049F 04:848F: C8        INY
C - - - - - 0x0104A0 04:8490: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0104A2 04:8492: F0 3E     BEQ bra_84D2_00
C - - - - - 0x0104A4 04:8494: 38        SEC
C - - - - - 0x0104A5 04:8495: E9 50     SBC #$50
C - - - - - 0x0104A7 04:8497: 9D A3 06  STA ram_06A3_se,X
C - - - - - 0x0104AA 04:849A: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0104AD 04:849D: 09 10     ORA #$10
C - - - - - 0x0104AF 04:849F: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0104B2 04:84A2: C8        INY
C - - - - - 0x0104B3 04:84A3: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0104B5 04:84A5: 29 F0     AND #$F0
; / 10
C - - - - - 0x0104B7 04:84A7: 4A        LSR
C - - - - - 0x0104B8 04:84A8: 4A        LSR
C - - - - - 0x0104B9 04:84A9: 4A        LSR
C - - - - - 0x0104BA 04:84AA: 4A        LSR
; bzk optimize, useless CMP
C - - - - - 0x0104BB 04:84AB: C9 00     CMP #$00
C - - - - - 0x0104BD 04:84AD: F0 16     BEQ bra_84C5
C - - - - - 0x0104BF 04:84AF: 85 E2     STA ram_00E2_se_t00F
C - - - - - 0x0104C1 04:84B1: C6 E2     DEC ram_00E2_se_t00F
C - - - - - 0x0104C3 04:84B3: F0 0D     BEQ bra_84C2
C - - - - - 0x0104C5 04:84B5: BD 0E 01  LDA ram_010E_se,X
C - - - - - 0x0104C8 04:84B8: 18        CLC
bra_84B9:
C - - - - - 0x0104C9 04:84B9: 7D 0E 01  ADC ram_010E_se,X
C - - - - - 0x0104CC 04:84BC: C6 E2     DEC ram_00E2_se_t00F
C - - - - - 0x0104CE 04:84BE: D0 F9     BNE bra_84B9
C - - - - - 0x0104D0 04:84C0: F0 03     BEQ bra_84C5    ; jmp
bra_84C2:
C - - - - - 0x0104D2 04:84C2: BD 0E 01  LDA ram_010E_se,X
bra_84C5:
C - - - - - 0x0104D5 04:84C5: 9D DB 03  STA ram_03DB_se,X
C - - - - - 0x0104D8 04:84C8: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0104DA 04:84CA: 29 0F     AND #$0F
C - - - - - 0x0104DC 04:84CC: 9D E1 03  STA ram_03E1_se,X
C - - - - - 0x0104DF 04:84CF: 4C 60 84  JMP loc_8460_INY_and_read_next_byte
bra_84D2_00:
C - - - - - 0x0104E2 04:84D2: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0104E5 04:84D5: 29 EF     AND #$EF
C - - - - - 0x0104E7 04:84D7: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0104EA 04:84DA: 4C 60 84  JMP loc_8460_INY_and_read_next_byte



ofs_058_84DD_EC:
; con_se_cb_1_EC
C - - J - - 0x0104ED 04:84DD: C8        INY
C - - - - - 0x0104EE 04:84DE: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0104F1 04:84E1: 10 08     BPL bra_84EB
- - - - - - 0x0104F3 04:84E3: B1 E0     LDA (ram_00E0_se_t000_data),Y
- - - - - - 0x0104F5 04:84E5: 29 0F     AND #$0F
- - - - - - 0x0104F7 04:84E7: F0 1D     BEQ bra_8506
- - - - - - 0x0104F9 04:84E9: D0 04     BNE bra_84EF    ; jmp
bra_84EB:
C - - - - - 0x0104FB 04:84EB: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0104FD 04:84ED: F0 17     BEQ bra_8506
bra_84EF:
C - - - - - 0x0104FF 04:84EF: C9 04     CMP #$04
C - - - - - 0x010501 04:84F1: 90 05     BCC bra_84F8
- - - - - - 0x010503 04:84F3: 38        SEC
- - - - - - 0x010504 04:84F4: E9 03     SBC #$03
- - - - - - 0x010506 04:84F6: 09 10     ORA #$10
bra_84F8:
C - - - - - 0x010508 04:84F8: 09 40     ORA #$40
C - - - - - 0x01050A 04:84FA: 9D AC 06  STA ram_06AC_se,X
C - - - - - 0x01050D 04:84FD: A9 00     LDA #$00
C - - - - - 0x01050F 04:84FF: 9D AF 06  STA ram_06AF_se,X
bra_8502:
C - - - - - 0x010512 04:8502: C8        INY
C - - - - - 0x010513 04:8503: 4C 01 80  JMP loc_8001_read_next_byte
bra_8506:
C - - - - - 0x010516 04:8506: A9 80     LDA #$80
C - - - - - 0x010518 04:8508: 9D AC 06  STA ram_06AC_se,X
C - - - - - 0x01051B 04:850B: D0 F5     BNE bra_8502    ; jmp



ofs_038_inc_850D_EB:
; con_se_cb_2_EB
ofs_038_inc_850D_EC:
; con_se_cb_2_EC
ofs_038_inc_850D_ED:
; con_se_cb_2_ED
ofs_038_inc_850D_EE:
; con_se_cb_2_EE
ofs_058_850D_ED:
; con_se_cb_1_ED
ofs_058_850D_EF:
; con_se_cb_1_EF
C - - J - - 0x01051D 04:850D: C8        INY
C - - - - - 0x01051E 04:850E: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010520 04:8510: 9D 73 01  STA ram_0173_se,X
C - - - - - 0x010523 04:8513: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x010526 04:8516: C8        INY
C - - - - - 0x010527 04:8517: 4C FA E1  JMP loc_0x03E20A



ofs_058_851A_EE:
; con_se_cb_1_EE
C - - J - - 0x01052A 04:851A: C8        INY
C - - - - - 0x01052B 04:851B: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01052D 04:851D: 8D 8E 01  STA ram_018E_se
C - - - - - 0x010530 04:8520: C8        INY
C - - - - - 0x010531 04:8521: 4C 01 80  JMP loc_8001_read_next_byte



bra_8524:
C - - - - - 0x010534 04:8524: BD 31 01  LDA ram_0131_se,X
C - - - - - 0x010537 04:8527: 9D 23 01  STA ram_0123_se_data_lo,X
C - - - - - 0x01053A 04:852A: BD 38 01  LDA ram_0138_se,X
C - - - - - 0x01053D 04:852D: 9D 2A 01  STA ram_012A_se_data_hi,X
C - - - - - 0x010540 04:8530: 4C 66 85  JMP loc_8566



bra_8533_FE:
; con_se_cb_1_FE
C - - - - - 0x010543 04:8533: C8        INY
C - - - - - 0x010544 04:8534: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010546 04:8536: C9 FF     CMP #$FF
C - - - - - 0x010548 04:8538: D0 22     BNE bra_855C_it_is_a_loop
; FF
C - - - - - 0x01054A 04:853A: C8        INY
C - - - - - 0x01054B 04:853B: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x01054D 04:853D: 9D 23 01  STA ram_0123_se_data_lo,X
C - - - - - 0x010550 04:8540: 85 E2     STA ram_00E2_se_t010
C - - - - - 0x010552 04:8542: C8        INY
C - - - - - 0x010553 04:8543: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010555 04:8545: 9D 2A 01  STA ram_012A_se_data_hi,X
C - - - - - 0x010558 04:8548: 85 E1     STA ram_00E0_se_t000_data + $01
C - - - - - 0x01055A 04:854A: A5 E2     LDA ram_00E2_se_t010
C - - - - - 0x01055C 04:854C: 85 E0     STA ram_00E0_se_t000_data
C - - - - - 0x01055E 04:854E: A0 00     LDY #$00
bra_8550:
C - - - - - 0x010560 04:8550: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x010563 04:8553: 4A        LSR
C - - - - - 0x010564 04:8554: B0 03     BCS bra_8559
C - - - - - 0x010566 04:8556: 4C 01 80  JMP loc_8001_read_next_byte
bra_8559:
C - - - - - 0x010569 04:8559: 4C 04 E2  JMP loc_0x03E214
bra_855C_it_is_a_loop:
C - - - - - 0x01056C 04:855C: FE 1C 01  INC ram_011C_se,X
C - - - - - 0x01056F 04:855F: DD 1C 01  CMP ram_011C_se,X
C - - - - - 0x010572 04:8562: F0 10     BEQ bra_8574
C - - - - - 0x010574 04:8564: B0 BE     BCS bra_8524    ; jmp



loc_8566:
C D 0 - - - 0x010576 04:8566: A0 00     LDY #$00
C - - - - - 0x010578 04:8568: BD 23 01  LDA ram_0123_se_data_lo,X
C - - - - - 0x01057B 04:856B: 85 E0     STA ram_00E0_se_t000_data
C - - - - - 0x01057D 04:856D: BD 2A 01  LDA ram_012A_se_data_hi,X
C - - - - - 0x010580 04:8570: 85 E1     STA ram_00E0_se_t000_data + $01
C - - - - - 0x010582 04:8572: D0 DC     BNE bra_8550    ; jmp



bra_8574:
C - - - - - 0x010584 04:8574: A9 00     LDA #$00
C - - - - - 0x010586 04:8576: 9D 1C 01  STA ram_011C_se,X
C - - - - - 0x010589 04:8579: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x01058C 04:857C: 29 F7     AND #$F7
C - - - - - 0x01058E 04:857E: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x010591 04:8581: C8        INY
C - - - - - 0x010592 04:8582: 98        TYA
C - - - - - 0x010593 04:8583: 18        CLC
C - - - - - 0x010594 04:8584: 65 E0     ADC ram_00E0_se_t000_data
C - - - - - 0x010596 04:8586: 85 E0     STA ram_00E0_se_t000_data
C - - - - - 0x010598 04:8588: A9 00     LDA #$00
C - - - - - 0x01059A 04:858A: A8        TAY
C - - - - - 0x01059B 04:858B: 65 E1     ADC ram_00E0_se_t000_data + $01
C - - - - - 0x01059D 04:858D: 85 E1     STA ram_00E0_se_t000_data + $01
C - - - - - 0x01059F 04:858F: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x0105A2 04:8592: 4A        LSR
C - - - - - 0x0105A3 04:8593: B0 03     BCS bra_8598
C - - - - - 0x0105A5 04:8595: 4C 01 80  JMP loc_8001_read_next_byte
bra_8598:
C - - - - - 0x0105A8 04:8598: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x0105AB 04:859B: 29 FB     AND #$FB
C - - - - - 0x0105AD 04:859D: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x0105B0 04:85A0: 4C 04 E2  JMP loc_0x03E214



loc_85A3_F0_FF:
loc_inc_85A3_F0_FF:
ofs_060_85A3_03___F0_FF:
; con_se_cb_1_F0
C D 0 - - - 0x0105B3 04:85A3: C9 0E     CMP #$0E
C - - - - - 0x0105B5 04:85A5: F0 8C     BEQ bra_8533_FE
C - - - - - 0x0105B7 04:85A7: 90 03     BCC bra_85AC_F0_FD
C - - - - - 0x0105B9 04:85A9: 4C 4E 86  JMP loc_864E_FF
bra_85AC_F0_FD:
C - - - - - 0x0105BC 04:85AC: C9 0D     CMP #$0D
C - - - - - 0x0105BE 04:85AE: F0 5F     BEQ bra_860F_FD
C - - - - - 0x0105C0 04:85B0: C9 0B     CMP #$0B
C - - - - - 0x0105C2 04:85B2: F0 0F     BEQ bra_85C3_FB
; F0-F7
; bzk optimize, A already holds ANDed byte
C - - - - - 0x0105C4 04:85B4: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0105C6 04:85B6: 29 0F     AND #$0F
C - - - - - 0x0105C8 04:85B8: 9D 69 01  STA ram_0169_se,X
C - - - - - 0x0105CB 04:85BB: E0 02     CPX #$02
C - - - - - 0x0105CD 04:85BD: F0 1E     BEQ bra_85DD_channel_02
C - - - - - 0x0105CF 04:85BF: C8        INY
C - - - - - 0x0105D0 04:85C0: 4C 01 80  JMP loc_8001_read_next_byte
bra_85C3_FB:
; con_se_cb_1_FB
C - - - - - 0x0105D3 04:85C3: C8        INY
C - - - - - 0x0105D4 04:85C4: 98        TYA
C - - - - - 0x0105D5 04:85C5: 18        CLC
C - - - - - 0x0105D6 04:85C6: 65 E0     ADC ram_00E0_se_t000_data
C - - - - - 0x0105D8 04:85C8: 9D 31 01  STA ram_0131_se,X
C - - - - - 0x0105DB 04:85CB: A9 00     LDA #$00
C - - - - - 0x0105DD 04:85CD: 65 E1     ADC ram_00E0_se_t000_data + $01
C - - - - - 0x0105DF 04:85CF: 9D 38 01  STA ram_0138_se,X
C - - - - - 0x0105E2 04:85D2: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x0105E5 04:85D5: 09 08     ORA #$08
C - - - - - 0x0105E7 04:85D7: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x0105EA 04:85DA: 4C FA E1  JMP loc_0x03E20A
bra_85DD_channel_02:
C - - - - - 0x0105ED 04:85DD: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x0105F0 04:85E0: 09 80     ORA #$80
C - - - - - 0x0105F2 04:85E2: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x0105F5 04:85E5: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0105F7 04:85E7: 29 0F     AND #$0F
C - - - - - 0x0105F9 04:85E9: 85 E4     STA ram_00E4_se_t002
C - - - - - 0x0105FB 04:85EB: 20 9F 82  JSR sub_829F
C - - - - - 0x0105FE 04:85EE: A5 E4     LDA ram_00E4_se_t002
C - - - - - 0x010600 04:85F0: 20 E5 80  JSR sub_80E5
C - - - - - 0x010603 04:85F3: BD 83 01  LDA ram_0183_se,X
C - - - - - 0x010606 04:85F6: 85 EC     STA ram_00EC_se
C - - - - - 0x010608 04:85F8: BD 86 01  LDA ram_0186_se,X
C - - - - - 0x01060B 04:85FB: 85 ED     STA ram_00ED_se
C - - - - - 0x01060D 04:85FD: 46 ED     LSR ram_00ED_se
C - - - - - 0x01060F 04:85FF: 66 EC     ROR ram_00EC_se
C - - - - - 0x010611 04:8601: 20 FE 81  JSR sub_81FE
C - - - - - 0x010614 04:8604: BD 6E 01  LDA ram_016E_se,X
C - - - - - 0x010617 04:8607: 29 7F     AND #$7F
C - - - - - 0x010619 04:8609: 9D 6E 01  STA ram_016E_se,X
C - - - - - 0x01061C 04:860C: 4C D6 86  JMP loc_86D6
bra_860F_FD:
; con_se_cb_1_FD
C - - - - - 0x01061F 04:860F: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x010622 04:8612: 29 20     AND #$20
C - - - - - 0x010624 04:8614: F0 03     BEQ bra_8619
C - - - - - 0x010626 04:8616: 4C 37 86  JMP loc_8637
bra_8619:
C - - - - - 0x010629 04:8619: 20 E8 86  JSR sub_86E8
C - - - - - 0x01062C 04:861C: C8        INY
C - - - - - 0x01062D 04:861D: 98        TYA
C - - - - - 0x01062E 04:861E: 18        CLC
C - - - - - 0x01062F 04:861F: 65 E0     ADC ram_00E0_se_t000_data
C - - - - - 0x010631 04:8621: 9D 3F 01  STA ram_013F_se,X
C - - - - - 0x010634 04:8624: A9 00     LDA #$00
; bzk optimize, LDY 00 is already at 0x010576
C - - - - - 0x010636 04:8626: A8        TAY ; 00
C - - - - - 0x010637 04:8627: 65 E1     ADC ram_00E0_se_t000_data + $01
C - - - - - 0x010639 04:8629: 9D 46 01  STA ram_0146_se,X
C - - - - - 0x01063C 04:862C: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x01063F 04:862F: 09 20     ORA #$20
C - - - - - 0x010641 04:8631: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x010644 04:8634: 4C 66 85  JMP loc_8566



loc_8637:
; bzk optimize, single JMP to here
C D 0 - - - 0x010647 04:8637: BD 3F 01  LDA ram_013F_se,X
C - - - - - 0x01064A 04:863A: 85 E0     STA ram_00E0_se_t000_data
C - - - - - 0x01064C 04:863C: BD 46 01  LDA ram_0146_se,X
C - - - - - 0x01064F 04:863F: 85 E1     STA ram_00E0_se_t000_data + $01
C - - - - - 0x010651 04:8641: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x010654 04:8644: 29 DF     AND #$DF
C - - - - - 0x010656 04:8646: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x010659 04:8649: A0 00     LDY #$00
C - - - - - 0x01065B 04:864B: 4C FA E1  JMP loc_0x03E20A



loc_864E_FF:
; con_se_cb_1_FF
C D 0 - - - 0x01065E 04:864E: BD 07 01  LDA ram_0107_se,X
C - - - - - 0x010661 04:8651: 85 E4     STA ram_00E4_se_temp    ; ???
C - - - - - 0x010663 04:8653: A9 00     LDA #$00
C - - - - - 0x010665 04:8655: 9D 07 01  STA ram_0107_se,X
C - - - - - 0x010668 04:8658: 8A        TXA
C - - - - - 0x010669 04:8659: 0A        ASL
C - - - - - 0x01066A 04:865A: AA        TAX
C - - - - - 0x01066B 04:865B: BD F5 86  LDA tbl_86F5,X
C - - - - - 0x01066E 04:865E: 85 E2     STA ram_00E2_se_t003_jmp
C - - - - - 0x010670 04:8660: BD F6 86  LDA tbl_86F5 + $01,X
C - - - - - 0x010673 04:8663: 85 E3     STA ram_00E2_se_t003_jmp + $01
C - - - - - 0x010675 04:8665: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010677 04:8667: 6C E2 00  JMP (ram_00E2_se_t003_jmp)



ofs_059_866A_00:
ofs_059_866A_01:
ofs_059_866A_06:
C - - J - - 0x01067A 04:866A: A9 30     LDA #$30
C - - - - - 0x01067C 04:866C: 20 13 83  JSR sub_8313
C - - - - - 0x01067F 04:866F: B0 06     BCS bra_8677
C - - - - - 0x010681 04:8671: 9D 00 40  STA $4000,X ; 4000 4004 400C
C - - - - - 0x010684 04:8674: 20 53 87  JSR sub_8753_garbage_code
bra_8677:
C - - - - - 0x010687 04:8677: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x010689 04:8679: 4C A6 E1  JMP loc_0x03E1B6



sub_867C:
ofs_059_867C_02:
C - - - - - 0x01068C 04:867C: A9 00     LDA #$00
C - - - - - 0x01068E 04:867E: 8D 08 40  STA $4008
C - - - - - 0x010691 04:8681: 4C A6 E1  JMP loc_0x03E1B6



ofs_059_8684_03:
ofs_059_8684_04:
C - - J - - 0x010694 04:8684: AE 8C 01  LDX ram_018C_se
C - - - - - 0x010697 04:8687: A9 30     LDA #$30
C - - - - - 0x010699 04:8689: 9D 00 40  STA $4000,X ; 4000
C - - - - - 0x01069C 04:868C: 20 53 87  JSR sub_8753_garbage_code
C - - - - - 0x01069F 04:868F: A9 7F     LDA #$7F
C - - - - - 0x0106A1 04:8691: 9D 01 40  STA $4001,X ; 4001
C - - - - - 0x0106A4 04:8694: 20 53 87  JSR sub_8753_garbage_code
C - - - - - 0x0106A7 04:8697: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x0106A9 04:8699: BD 15 01  LDA ram_0115_se,X
C - - - - - 0x0106AC 04:869C: 29 F9     AND #$F9
C - - - - - 0x0106AE 04:869E: 9D 15 01  STA ram_0115_se,X
C - - - - - 0x0106B1 04:86A1: A9 00     LDA #$00
C - - - - - 0x0106B3 04:86A3: 9D 73 01  STA ram_0173_se,X
; bzk bug?
C - - - - - 0x0106B6 04:86A6: BD 04 01  LDA ram_0100_se + $04,X
C - - - - - 0x0106B9 04:86A9: F0 0B     BEQ bra_86B6
C - - - - - 0x0106BB 04:86AB: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x0106BD 04:86AD: CA        DEX
C - - - - - 0x0106BE 04:86AE: CA        DEX
C - - - - - 0x0106BF 04:86AF: CA        DEX
C - - - - - 0x0106C0 04:86B0: AC 8C 01  LDY ram_018C_se
C - - - - - 0x0106C3 04:86B3: 20 0C E2  JSR sub_0x03E21C
bra_86B6:
C - - - - - 0x0106C6 04:86B6: A6 EE     LDX ram_00EE_se_channel_index
C - - - - - 0x0106C8 04:86B8: 4C A6 E1  JMP loc_0x03E1B6



ofs_059_86BB_05:
C - - J - - 0x0106CB 04:86BB: A9 30     LDA #$30
C - - - - - 0x0106CD 04:86BD: 8D 0C 40  STA $400C
C - - - - - 0x0106D0 04:86C0: 20 53 87  JSR sub_8753_garbage_code
C - - - - - 0x0106D3 04:86C3: 4C A6 E1  JMP loc_0x03E1B6



sub_86C6:
C - - - - - 0x0106D6 04:86C6: C8        INY
C - - - - - 0x0106D7 04:86C7: 98        TYA
C - - - - - 0x0106D8 04:86C8: 18        CLC
C - - - - - 0x0106D9 04:86C9: 65 E0     ADC ram_00E0_se_t000_data
C - - - - - 0x0106DB 04:86CB: 9D 23 01  STA ram_0123_se_data_lo,X
C - - - - - 0x0106DE 04:86CE: A9 00     LDA #$00
C - - - - - 0x0106E0 04:86D0: 65 E1     ADC ram_00E0_se_t000_data + $01
C - - - - - 0x0106E2 04:86D2: 9D 2A 01  STA ram_012A_se_data_hi,X
C - - - - - 0x0106E5 04:86D5: 60        RTS



loc_86D6:
loc_inc_86D6:
C D 0 - - - 0x0106E6 04:86D6: C8        INY
C - - - - - 0x0106E7 04:86D7: 98        TYA
C - - - - - 0x0106E8 04:86D8: 18        CLC
C - - - - - 0x0106E9 04:86D9: 65 E0     ADC ram_00E0_se_t000_data
C - - - - - 0x0106EB 04:86DB: 9D 23 01  STA ram_0123_se_data_lo,X
C - - - - - 0x0106EE 04:86DE: A9 00     LDA #$00
C - - - - - 0x0106F0 04:86E0: 65 E1     ADC ram_00E0_se_t000_data + $01
C - - - - - 0x0106F2 04:86E2: 9D 2A 01  STA ram_012A_se_data_hi,X
C - - - - - 0x0106F5 04:86E5: 4C A6 E1  JMP loc_0x03E1B6



sub_86E8:
; bzk optimize, single JSR to here
C - - - - - 0x0106F8 04:86E8: C8        INY
C - - - - - 0x0106F9 04:86E9: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x0106FB 04:86EB: 9D 23 01  STA ram_0123_se_data_lo,X
C - - - - - 0x0106FE 04:86EE: C8        INY
C - - - - - 0x0106FF 04:86EF: B1 E0     LDA (ram_00E0_se_t000_data),Y
C - - - - - 0x010701 04:86F1: 9D 2A 01  STA ram_012A_se_data_hi,X
C - - - - - 0x010704 04:86F4: 60        RTS



tbl_86F5:
- D 0 - - - 0x010705 04:86F5: 6A 86     .word ofs_059_866A_00
- D 0 - - - 0x010707 04:86F7: 6A 86     .word ofs_059_866A_01
- D 0 - - - 0x010709 04:86F9: 7C 86     .word ofs_059_867C_02
- D 0 - - - 0x01070B 04:86FB: 84 86     .word ofs_059_8684_03
- - - - - - 0x01070D 04:86FD: 84 86     .word ofs_059_8684_04
- D 0 - - - 0x01070F 04:86FF: BB 86     .word ofs_059_86BB_05
- D 0 - - - 0x010711 04:8701: 6A 86     .word ofs_059_866A_06



tbl_8703:
; see con_se_cb_1
- D 0 - - - 0x010713 04:8703: 3A 83     .word ofs_060_833A_00___C0_CF
- D 0 - - - 0x010715 04:8705: 63 83     .word ofs_060_8363_01___D0_DF
- D 0 - - - 0x010717 04:8707: A7 83     .word ofs_060_83A7_02___E0_EF
- D 0 - - - 0x010719 04:8709: A3 85     .word ofs_060_85A3_03___F0_FF



tbl_870B:
- D 0 - - - 0x01071B 04:870B: 5C 0D     .word $0D5C ; E8 
- D 0 - - - 0x01071D 04:870D: 9C 0C     .word $0C9C ; E9 
- - - - - - 0x01071F 04:870F: E8 0B     .word $0BE8 ; EA 
- D 0 - - - 0x010721 04:8711: 3C 0B     .word $0B3C ; EB 
- D 0 - - - 0x010723 04:8713: 9C 0A     .word $0A9C ; EC 
- D 0 - - - 0x010725 04:8715: 02 0A     .word $0A02 ; ED 
- D 0 - - - 0x010727 04:8717: 72 09     .word $0972 ; EE 
- D 0 - - - 0x010729 04:8719: EC 08     .word $08EC ; EF 
- D 0 - - - 0x01072B 04:871B: 6C 08     .word $086C ; F0 
- D 0 - - - 0x01072D 04:871D: F2 07     .word $07F2 ; F1 
- D 0 - - - 0x01072F 04:871F: 80 07     .word $0780 ; F2 
- D 0 - - - 0x010731 04:8721: 14 07     .word $0714 ; F3 



tbl_8723:
- D 0 - - - 0x010733 04:8723: AE 06     .word $06AE ; 00 
- D 0 - - - 0x010735 04:8725: 4E 06     .word $064E ; 01 
- D 0 - - - 0x010737 04:8727: F4 05     .word $05F4 ; 02 
- D 0 - - - 0x010739 04:8729: 9E 05     .word $059E ; 03 
- D 0 - - - 0x01073B 04:872B: 4E 05     .word $054E ; 04 
- D 0 - - - 0x01073D 04:872D: 01 05     .word $0501 ; 05 
- D 0 - - - 0x01073F 04:872F: B9 04     .word $04B9 ; 06 
- D 0 - - - 0x010741 04:8731: 76 04     .word $0476 ; 07 
- D 0 - - - 0x010743 04:8733: 36 04     .word $0436 ; 08 
- D 0 - - - 0x010745 04:8735: F9 03     .word $03F9 ; 09 
- D 0 - - - 0x010747 04:8737: C0 03     .word $03C0 ; 0A 
- D 0 - - - 0x010749 04:8739: 8A 03     .word $038A ; 0B 
- D 0 - - - 0x01074B 04:873B: 57 03     .word $0357 ; 0C 
- - - - - - 0x01074D 04:873D: 27 03     .word $0327 ; 0D 
- - - - - - 0x01074F 04:873F: FA 02     .word $02FA ; 0E 
- - - - - - 0x010751 04:8741: CF 02     .word $02CF ; 0F 
- - - - - - 0x010753 04:8743: A7 02     .word $02A7 ; 10 
- - - - - - 0x010755 04:8745: 81 02     .word $0281 ; 11 
- - - - - - 0x010757 04:8747: 5D 02     .word $025D ; 12 
- - - - - - 0x010759 04:8749: 3B 02     .word $023B ; 13 
- - - - - - 0x01075B 04:874B: 1B 02     .word $021B ; 14 
- - - - - - 0x01075D 04:874D: FD 01     .word $01FD ; 15 
- - - - - - 0x01075F 04:874F: E0 01     .word $01E0 ; 16 
- - - - - - 0x010761 04:8751: C5 01     .word $01C5 ; 17 



sub_8753_garbage_code:
; bzk garbage, useless code
C - - - - - 0x010763 04:8753: EA        NOP
C - - - - - 0x010764 04:8754: EA        NOP
C - - - - - 0x010765 04:8755: EA        NOP
C - - - - - 0x010766 04:8756: EA        NOP
C - - - - - 0x010767 04:8757: EA        NOP
C - - - - - 0x010768 04:8758: EA        NOP
C - - - - - 0x010769 04:8759: EA        NOP
C - - - - - 0x01076A 04:875A: EA        NOP
C - - - - - 0x01076B 04:875B: EA        NOP
C - - - - - 0x01076C 04:875C: EA        NOP
C - - - - - 0x01076D 04:875D: 60        RTS



