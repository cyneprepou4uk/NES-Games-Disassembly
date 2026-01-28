.segment "BANK_00"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000 ; for listing file
; 0x000010-0x00400F



.export sub_0x0000AF_prepare_config_for_area
.export sub_0x000581_turn_off_music_and_sfx
.export sub_0x0005EE_play_sound
.export sub_0x000628_update_sound_engine



loc_8000:
C D 0 - - - 0x000010 00:8000: A9 00     LDA #$00
C - - - - - 0x000012 00:8002: 8D 0C 04  STA ram_040C
C - - - - - 0x000015 00:8005: AD 12 04  LDA ram_0412
C - - - - - 0x000018 00:8008: 09 80     ORA #$80
C - - - - - 0x00001A 00:800A: 38        SEC
C - - - - - 0x00001B 00:800B: 65 BB     ADC ram_00BB
C - - - - - 0x00001D 00:800D: 8D 12 04  STA ram_0412
C - - - - - 0x000020 00:8010: 29 7F     AND #$7F
C - - - - - 0x000022 00:8012: 20 AC 80  JSR sub_80AC
C - - - - - 0x000025 00:8015: A9 00     LDA #$00
C - - - - - 0x000027 00:8017: 85 BD     STA ram_00BD
C - - - - - 0x000029 00:8019: A6 33     LDX ram_round
C - - - - - 0x00002B 00:801B: BD 09 E5  LDA tbl_0x01E519_round_data,X
C - - - - - 0x00002E 00:801E: 29 0F     AND #$0F
C - - - - - 0x000030 00:8020: 85 00     STA ram_0000_t33
C - - - - - 0x000032 00:8022: AD 11 04  LDA ram_0411
C - - - - - 0x000035 00:8025: F0 02     BEQ bra_8029
C - - - - - 0x000037 00:8027: A9 09     LDA #$09
bra_8029:
C - - - - - 0x000039 00:8029: 18        CLC
C - - - - - 0x00003A 00:802A: 65 00     ADC ram_0000_t33
C - - - - - 0x00003C 00:802C: AA        TAX
C - - - - - 0x00003D 00:802D: BD 53 80  LDA tbl_8053,X
C - - - - - 0x000040 00:8030: 85 BB     STA ram_00BB
C - - - - - 0x000042 00:8032: AD 11 04  LDA ram_0411
C - - - - - 0x000045 00:8035: D0 1B     BNE bra_8052_RTS
C - - - - - 0x000047 00:8037: A9 36     LDA #con_chr_bank + $36
C - - - - - 0x000049 00:8039: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x00004B 00:803B: A6 33     LDX ram_round
C - - - - - 0x00004D 00:803D: BD 09 E5  LDA tbl_0x01E519_round_data,X
C - - - - - 0x000050 00:8040: 29 0F     AND #$0F
C - - - - - 0x000052 00:8042: C9 03     CMP #$03
C - - - - - 0x000054 00:8044: 90 0C     BCC bra_8052_RTS
C - - - - - 0x000056 00:8046: A2 3A     LDX #con_chr_bank + $3A
C - - - - - 0x000058 00:8048: 86 1E     STX ram_chr_bank_spr_2
C - - - - - 0x00005A 00:804A: C9 06     CMP #$06
C - - - - - 0x00005C 00:804C: 90 04     BCC bra_8052_RTS
C - - - - - 0x00005E 00:804E: A2 3E     LDX #con_chr_bank + $3E
C - - - - - 0x000060 00:8050: 86 1E     STX ram_chr_bank_spr_2
bra_8052_RTS:
C - - - - - 0x000062 00:8052: 60        RTS



tbl_8053:
; 00 
- D 0 - - - 0x000063 00:8053: 00        .byte $00   ; 00 
- D 0 - - - 0x000064 00:8054: 00        .byte $00   ; 01 
- D 0 - - - 0x000065 00:8055: 00        .byte $00   ; 02 
- D 0 - - - 0x000066 00:8056: 00        .byte $00   ; 03 
- D 0 - - - 0x000067 00:8057: 00        .byte $00   ; 04 
- D 0 - - - 0x000068 00:8058: 00        .byte $00   ; 05 
- D 0 - - - 0x000069 00:8059: 00        .byte $00   ; 06 
- - - - - - 0x00006A 00:805A: 00        .byte $00   ; 07 
; 09 
- D 0 - - - 0x00006B 00:805B: 02        .byte $02   ; 00 
- D 0 - - - 0x00006C 00:805C: 00        .byte $00   ; 01 
- D 0 - - - 0x00006D 00:805D: 00        .byte $00   ; 02 
- D 0 - - - 0x00006E 00:805E: 00        .byte $00   ; 03 
- D 0 - - - 0x00006F 00:805F: 00        .byte $00   ; 04 
- D 0 - - - 0x000070 00:8060: 00        .byte $00   ; 05 
- D 0 - - - 0x000071 00:8061: 00        .byte $00   ; 06 
- D 0 - - - 0x000072 00:8062: 00        .byte $00   ; 07 
- - - - - - 0x000073 00:8063: 00        .byte $00   ; 08 
- D 0 - - - 0x000074 00:8064: 00        .byte $00   ; 09 



loc_8065:
C D 0 - - - 0x000075 00:8065: A5 33     LDA ram_round
C - - - - - 0x000077 00:8067: C9 16     CMP #$16
C - - - - - 0x000079 00:8069: D0 09     BNE bra_8074
C - - - - - 0x00007B 00:806B: AD 0E 04  LDA ram_040E
C - - - - - 0x00007E 00:806E: 38        SEC
C - - - - - 0x00007F 00:806F: E9 01     SBC #$01
C - - - - - 0x000081 00:8071: 4C 82 80  JMP loc_8082
bra_8074:
; * 04
C - - - - - 0x000084 00:8074: 0A        ASL
C - - - - - 0x000085 00:8075: 0A        ASL
C - - - - - 0x000086 00:8076: A8        TAY
C - - - - - 0x000087 00:8077: B9 68 DD  LDA tbl_0x01DD77 + $01,Y
C - - - - - 0x00008A 00:807A: 29 80     AND #$80
C - - - - - 0x00008C 00:807C: 49 80     EOR #$80
C - - - - - 0x00008E 00:807E: 85 01     STA ram_0001_t12
C - - - - - 0x000090 00:8080: A5 33     LDA ram_round
loc_8082:
C D 0 - - - 0x000092 00:8082: 29 03     AND #$03
; * 20
C - - - - - 0x000094 00:8084: 0A        ASL
C - - - - - 0x000095 00:8085: 0A        ASL
C - - - - - 0x000096 00:8086: 0A        ASL
C - - - - - 0x000097 00:8087: 0A        ASL
C - - - - - 0x000098 00:8088: 0A        ASL
C - - - - - 0x000099 00:8089: 05 01     ORA ram_0001_t12
C - - - - - 0x00009B 00:808B: 85 E2     STA ram_00E2
C - - - - - 0x00009D 00:808D: A9 00     LDA #$00
C - - - - - 0x00009F 00:808F: 85 E3     STA ram_00E3
C - - - - - 0x0000A1 00:8091: 85 01     STA ram_0000_t20_round_data + $01
C - - - - - 0x0000A3 00:8093: A9 17     LDA #$17
C - - - - - 0x0000A5 00:8095: 20 CB 80  JSR sub_80CB
C - - - - - 0x0000A8 00:8098: A9 00     LDA #$00
C - - - - - 0x0000AA 00:809A: 85 BD     STA ram_00BD
C - - - - - 0x0000AC 00:809C: 85 BB     STA ram_00BB
C - - - - - 0x0000AE 00:809E: 60        RTS



sub_0x0000AF_prepare_config_for_area:
C - - - - - 0x0000AF 00:809F: AD 0C 04  LDA ram_040C
C - - - - - 0x0000B2 00:80A2: C9 03     CMP #$03
C - - - - - 0x0000B4 00:80A4: D0 03     BNE bra_80A9
C - - - - - 0x0000B6 00:80A6: 4C 00 80  JMP loc_8000
bra_80A9:
C - - - - - 0x0000B9 00:80A9: AD CE 03  LDA ram_03CE
sub_80AC:
C - - - - - 0x0000BC 00:80AC: A0 00     LDY #$00
C - - - - - 0x0000BE 00:80AE: 84 E2     STY ram_00E2
; / 08
C - - - - - 0x0000C0 00:80B0: 4A        LSR
C - - - - - 0x0000C1 00:80B1: 66 E2     ROR ram_00E2
C - - - - - 0x0000C3 00:80B3: 4A        LSR
C - - - - - 0x0000C4 00:80B4: 66 E2     ROR ram_00E2
C - - - - - 0x0000C6 00:80B6: 4A        LSR
C - - - - - 0x0000C7 00:80B7: 66 E2     ROR ram_00E2
C - - - - - 0x0000C9 00:80B9: 85 E3     STA ram_00E3
C - - - - - 0x0000CB 00:80BB: A9 00     LDA #$00
C - - - - - 0x0000CD 00:80BD: 85 01     STA ram_0001_t12
C - - - - - 0x0000CF 00:80BF: AD 0D 04  LDA ram_040D
C - - - - - 0x0000D2 00:80C2: C9 01     CMP #$01
C - - - - - 0x0000D4 00:80C4: D0 03     BNE bra_80C9
C - - - - - 0x0000D6 00:80C6: 4C 65 80  JMP loc_8065
bra_80C9:
C - - - - - 0x0000D9 00:80C9: A5 33     LDA ram_round
sub_80CB:   ; A = 17
; * 20
C - - - - - 0x0000DB 00:80CB: 0A        ASL
C - - - - - 0x0000DC 00:80CC: 26 01     ROL ram_0001_t12
C - - - - - 0x0000DE 00:80CE: 0A        ASL
C - - - - - 0x0000DF 00:80CF: 26 01     ROL ram_0001_t12
C - - - - - 0x0000E1 00:80D1: 0A        ASL
C - - - - - 0x0000E2 00:80D2: 26 01     ROL ram_0001_t12
C - - - - - 0x0000E4 00:80D4: 0A        ASL
C - - - - - 0x0000E5 00:80D5: 26 01     ROL ram_0001_t12
C - - - - - 0x0000E7 00:80D7: 0A        ASL
C - - - - - 0x0000E8 00:80D8: 26 01     ROL ram_0001_t12
C - - - - - 0x0000EA 00:80DA: 18        CLC
C - - - - - 0x0000EB 00:80DB: 69 68     ADC #< tbl_8268_round_data
C - - - - - 0x0000ED 00:80DD: 85 00     STA ram_0000_t20_round_data
C - - - - - 0x0000EF 00:80DF: A9 82     LDA #> tbl_8268_round_data
C - - - - - 0x0000F1 00:80E1: 65 01     ADC ram_0001_t12
C - - - - - 0x0000F3 00:80E3: 85 01     STA ram_0000_t20_round_data + $01
C - - - - - 0x0000F5 00:80E5: A0 00     LDY #$00
C - - - - - 0x0000F7 00:80E7: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0000F9 00:80E9: C8        INY ; 01
C - - - - - 0x0000FA 00:80EA: 85 1C     STA ram_chr_bank_spr_1
C - - - - - 0x0000FC 00:80EC: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0000FE 00:80EE: C8        INY ; 02
C - - - - - 0x0000FF 00:80EF: 85 1E     STA ram_chr_bank_spr_2
C - - - - - 0x000101 00:80F1: 38        SEC
C - - - - - 0x000102 00:80F2: E9 12     SBC #$12
; / 04
C - - - - - 0x000104 00:80F4: 4A        LSR
C - - - - - 0x000105 00:80F5: 4A        LSR
C - - - - - 0x000106 00:80F6: AA        TAX
C - - - - - 0x000107 00:80F7: BD 3B 82  LDA tbl_823B_spr_A,X
C - - - - - 0x00010A 00:80FA: 8D D6 03  STA ram_03D6_obj_spr_A
C - - - - - 0x00010D 00:80FD: BD 44 82  LDA tbl_8244_spr_A,X
C - - - - - 0x000110 00:8100: 8D D7 03  STA ram_03D6_obj_spr_A + $01
C - - - - - 0x000113 00:8103: BD 4D 82  LDA tbl_824D_spr_A,X
C - - - - - 0x000116 00:8106: 8D D8 03  STA ram_03D6_obj_spr_A + $02
C - - - - - 0x000119 00:8109: BD 56 82  LDA tbl_8256_spr_A,X
C - - - - - 0x00011C 00:810C: 8D DD 03  STA ram_03D6_obj_spr_A + $07
C - - - - - 0x00011F 00:810F: BD 5F 82  LDA tbl_825F_spr_A,X
C - - - - - 0x000122 00:8112: 8D ED 03  STA ram_03D6_obj_spr_A + $17
C - - - - - 0x000125 00:8115: 8D EE 03  STA ram_03D6_obj_spr_A + $18
C - - - - - 0x000128 00:8118: A9 0C     LDA #$0C
C - - - - - 0x00012A 00:811A: 85 B1     STA ram_offset_chr_bank_bg_4
C - - - - - 0x00012C 00:811C: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x00012E 00:811E: C8        INY ; 03
C - - - - - 0x00012F 00:811F: 85 20     STA ram_chr_bank_bg_1
C - - - - - 0x000131 00:8121: 29 80     AND #$80
C - - - - - 0x000133 00:8123: F0 1D     BEQ bra_8142
C - - - - - 0x000135 00:8125: A9 7C     LDA #$7C
C - - - - - 0x000137 00:8127: 85 B1     STA ram_offset_chr_bank_bg_4
C - - - - - 0x000139 00:8129: A5 20     LDA ram_chr_bank_bg_1
C - - - - - 0x00013B 00:812B: 29 7F     AND #$7F
C - - - - - 0x00013D 00:812D: 85 20     STA ram_chr_bank_bg_1
C - - - - - 0x00013F 00:812F: A6 33     LDX ram_round
C - - - - - 0x000141 00:8131: BD 09 E5  LDA tbl_0x01E519_round_data,X
C - - - - - 0x000144 00:8134: 29 0F     AND #$0F
C - - - - - 0x000146 00:8136: C9 03     CMP #$03
C - - - - - 0x000148 00:8138: F0 04     BEQ bra_813E
C - - - - - 0x00014A 00:813A: C9 08     CMP #$08
C - - - - - 0x00014C 00:813C: D0 04     BNE bra_8142
bra_813E:
C - - - - - 0x00014E 00:813E: A9 04     LDA #$04
C - - - - - 0x000150 00:8140: 85 B1     STA ram_offset_chr_bank_bg_4
bra_8142:
C - - - - - 0x000152 00:8142: A5 20     LDA ram_chr_bank_bg_1
C - - - - - 0x000154 00:8144: 18        CLC
C - - - - - 0x000155 00:8145: 69 01     ADC #$01
C - - - - - 0x000157 00:8147: 85 22     STA ram_chr_bank_bg_2
C - - - - - 0x000159 00:8149: 69 01     ADC #$01
C - - - - - 0x00015B 00:814B: 85 24     STA ram_chr_bank_bg_3
C - - - - - 0x00015D 00:814D: 69 01     ADC #$01
C - - - - - 0x00015F 00:814F: 85 26     STA ram_chr_bank_bg_4
C - - - - - 0x000161 00:8151: 85 B2     STA ram_copy_chr_bank_bg_4
C - - - - - 0x000163 00:8153: A9 08     LDA #con_chr_bank + $08
C - - - - - 0x000165 00:8155: 85 21     STA ram_chr_bank_bg_1 + $01
C - - - - - 0x000167 00:8157: 18        CLC
C - - - - - 0x000168 00:8158: 69 01     ADC #$01    ; con_chr_bank + $09
C - - - - - 0x00016A 00:815A: 85 23     STA ram_chr_bank_bg_2 + $01
C - - - - - 0x00016C 00:815C: 69 01     ADC #$01    ; con_chr_bank + $0A
C - - - - - 0x00016E 00:815E: 85 25     STA ram_chr_bank_bg_3 + $01
C - - - - - 0x000170 00:8160: 69 01     ADC #$01    ; con_chr_bank + $0B
C - - - - - 0x000172 00:8162: 85 27     STA ram_chr_bank_bg_4 + $01
C - - - - - 0x000174 00:8164: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x000176 00:8166: C8        INY ; 04
C - - - - - 0x000177 00:8167: 85 3A     STA ram_003A
C - - - - - 0x000179 00:8169: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x00017B 00:816B: C8        INY ; 05
C - - - - - 0x00017C 00:816C: 18        CLC
C - - - - - 0x00017D 00:816D: 65 E2     ADC ram_00E2
C - - - - - 0x00017F 00:816F: 85 E2     STA ram_00E2
C - - - - - 0x000181 00:8171: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x000183 00:8173: 65 E3     ADC ram_00E3
C - - - - - 0x000185 00:8175: 85 E3     STA ram_00E3
C - - - - - 0x000187 00:8177: C8        INY ; 06
C - - - - - 0x000188 00:8178: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x00018A 00:817A: C8        INY ; 07
C - - - - - 0x00018B 00:817B: 18        CLC
C - - - - - 0x00018C 00:817C: 65 E2     ADC ram_00E2
C - - - - - 0x00018E 00:817E: 8D 04 03  STA ram_0304_round_data
C - - - - - 0x000191 00:8181: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x000193 00:8183: 65 E3     ADC ram_00E3
C - - - - - 0x000195 00:8185: 8D 05 03  STA ram_0304_round_data + $01
C - - - - - 0x000198 00:8188: C8        INY ; 08
C - - - - - 0x000199 00:8189: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x00019B 00:818B: C8        INY ; 09
C - - - - - 0x00019C 00:818C: 85 CE     STA ram_00CE_t01_data
C - - - - - 0x00019E 00:818E: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001A0 00:8190: C8        INY ; 0A
C - - - - - 0x0001A1 00:8191: 85 CF     STA ram_00CE_t01_data + $01
C - - - - - 0x0001A3 00:8193: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001A5 00:8195: C8        INY ; 0B
; bzk optimize, useless STA
C - - - - - 0x0001A6 00:8196: 85 02     STA ram_0002_tFF_useless
C - - - - - 0x0001A8 00:8198: 85 C8     STA ram_00C8_t01_data
C - - - - - 0x0001AA 00:819A: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001AC 00:819C: C8        INY ; 0C
; bzk optimize, useless STA
C - - - - - 0x0001AD 00:819D: 85 03     STA ram_0003_tFF_useless
C - - - - - 0x0001AF 00:819F: 85 C9     STA ram_00C8_t01_data + $01
C - - - - - 0x0001B1 00:81A1: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001B3 00:81A3: C8        INY ; 0D
C - - - - - 0x0001B4 00:81A4: 85 DC     STA ram_00DC
C - - - - - 0x0001B6 00:81A6: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001B8 00:81A8: C8        INY ; 0E
C - - - - - 0x0001B9 00:81A9: 85 DD     STA ram_00DD
C - - - - - 0x0001BB 00:81AB: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001BD 00:81AD: C8        INY ; 0F
C - - - - - 0x0001BE 00:81AE: 85 DE     STA ram_00DE
C - - - - - 0x0001C0 00:81B0: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001C2 00:81B2: C8        INY ; 10
C - - - - - 0x0001C3 00:81B3: 85 DF     STA ram_00DF
C - - - - - 0x0001C5 00:81B5: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001C7 00:81B7: C8        INY ; 11
C - - - - - 0x0001C8 00:81B8: 85 E0     STA ram_00E0
C - - - - - 0x0001CA 00:81BA: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001CC 00:81BC: C8        INY ; 12
C - - - - - 0x0001CD 00:81BD: 85 E1     STA ram_00E1
C - - - - - 0x0001CF 00:81BF: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001D1 00:81C1: C8        INY ; 13
C - - - - - 0x0001D2 00:81C2: 85 BD     STA ram_00BD
C - - - - - 0x0001D4 00:81C4: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001D6 00:81C6: C8        INY ; 14
C - - - - - 0x0001D7 00:81C7: 18        CLC
C - - - - - 0x0001D8 00:81C8: ED CE 03  SBC ram_03CE
C - - - - - 0x0001DB 00:81CB: 85 BB     STA ram_00BB
C - - - - - 0x0001DD 00:81CD: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001DF 00:81CF: C8        INY ; 15
C - - - - - 0x0001E0 00:81D0: 85 BE     STA ram_00BE
C - - - - - 0x0001E2 00:81D2: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001E4 00:81D4: C8        INY ; 16
C - - - - - 0x0001E5 00:81D5: 85 BC     STA ram_00BC
C - - - - - 0x0001E7 00:81D7: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001E9 00:81D9: C8        INY ; 17
C - - - - - 0x0001EA 00:81DA: 8D 72 03  STA ram_0372
C - - - - - 0x0001ED 00:81DD: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001EF 00:81DF: C8        INY ; 18
C - - - - - 0x0001F0 00:81E0: 8D 73 03  STA ram_0373
C - - - - - 0x0001F3 00:81E3: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001F5 00:81E5: C8        INY ; 19
C - - - - - 0x0001F6 00:81E6: 8D 74 03  STA ram_0374
C - - - - - 0x0001F9 00:81E9: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x0001FB 00:81EB: C8        INY ; 1A
C - - - - - 0x0001FC 00:81EC: 8D 82 03  STA ram_0382
C - - - - - 0x0001FF 00:81EF: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x000201 00:81F1: C8        INY ; 1B
C - - - - - 0x000202 00:81F2: 8D 83 03  STA ram_0383
C - - - - - 0x000205 00:81F5: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x000207 00:81F7: C8        INY ; 1C
C - - - - - 0x000208 00:81F8: 8D 19 06  STA ram_0616_obj + $03
C - - - - - 0x00020B 00:81FB: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x00020D 00:81FD: C8        INY ; 1D
; bzk optimize, always 00
C - - - - - 0x00020E 00:81FE: 85 40     STA ram_0040_palette
C - - - - - 0x000210 00:8200: B1 00     LDA (ram_0000_t20_round_data),Y
C - - - - - 0x000212 00:8202: C8        INY ; 1E
C - - - - - 0x000213 00:8203: 85 41     STA ram_0041_palette
C - - - - - 0x000215 00:8205: AD 0D 04  LDA ram_040D
C - - - - - 0x000218 00:8208: C9 01     CMP #$01
C - - - - - 0x00021A 00:820A: F0 01     BEQ bra_820D
C - - - - - 0x00021C 00:820C: 60        RTS
bra_820D:
C - - - - - 0x00021D 00:820D: A5 33     LDA ram_round
C - - - - - 0x00021F 00:820F: 4A        LSR
C - - - - - 0x000220 00:8210: C9 02     CMP #$02
C - - - - - 0x000222 00:8212: F0 24     BEQ bra_8238
; bzk optimize, is it necessary to calculate pointers again?
; or maybe it's because of 0x0000A5 case?
C - - - - - 0x000224 00:8214: A9 00     LDA #$00
C - - - - - 0x000226 00:8216: 85 01     STA ram_0001_t14
C - - - - - 0x000228 00:8218: A5 33     LDA ram_round
; * 20
C - - - - - 0x00022A 00:821A: 0A        ASL
C - - - - - 0x00022B 00:821B: 26 01     ROL ram_0001_t14
C - - - - - 0x00022D 00:821D: 0A        ASL
C - - - - - 0x00022E 00:821E: 26 01     ROL ram_0001_t14
C - - - - - 0x000230 00:8220: 0A        ASL
C - - - - - 0x000231 00:8221: 26 01     ROL ram_0001_t14
C - - - - - 0x000233 00:8223: 0A        ASL
C - - - - - 0x000234 00:8224: 26 01     ROL ram_0001_t14
C - - - - - 0x000236 00:8226: 0A        ASL
C - - - - - 0x000237 00:8227: 26 01     ROL ram_0001_t14
C - - - - - 0x000239 00:8229: 18        CLC
C - - - - - 0x00023A 00:822A: 69 68     ADC #< tbl_8268_round_data
C - - - - - 0x00023C 00:822C: 85 00     STA ram_0000_t21_round_data
C - - - - - 0x00023E 00:822E: A9 82     LDA #> tbl_8268_round_data
C - - - - - 0x000240 00:8230: 65 01     ADC ram_0001_t14
C - - - - - 0x000242 00:8232: 85 01     STA ram_0000_t21_round_data + $01
C - - - - - 0x000244 00:8234: A0 1D     LDY #$1D
C - - - - - 0x000246 00:8236: B1 00     LDA (ram_0000_t21_round_data),Y
bra_8238:   ; A = con_0041_pal_02
C - - - - - 0x000248 00:8238: 85 41     STA ram_0041_palette
C - - - - - 0x00024A 00:823A: 60        RTS



tbl_823B_spr_A:
- D 0 - - - 0x00024B 00:823B: 01        .byte con_0776_spr_A + $01   ; 12 
- D 0 - - - 0x00024C 00:823C: 01        .byte con_0776_spr_A + $01   ; 16 
- D 0 - - - 0x00024D 00:823D: 01        .byte con_0776_spr_A + $01   ; 1A 
- D 0 - - - 0x00024E 00:823E: 01        .byte con_0776_spr_A + $01   ; 1E 
- D 0 - - - 0x00024F 00:823F: 01        .byte con_0776_spr_A + $01   ; 22 
- D 0 - - - 0x000250 00:8240: 01        .byte con_0776_spr_A + $01   ; 26 
- D 0 - - - 0x000251 00:8241: 01        .byte con_0776_spr_A + $01   ; 2A 
- D 0 - - - 0x000252 00:8242: 00        .byte con_0776_spr_A + $00   ; 2E 
- D 0 - - - 0x000253 00:8243: 02        .byte con_0776_spr_A + $02   ; 32 



tbl_8244_spr_A:
- D 0 - - - 0x000254 00:8244: 02        .byte con_0776_spr_A + $02   ; 12 
- D 0 - - - 0x000255 00:8245: 01        .byte con_0776_spr_A + $01   ; 16 
- D 0 - - - 0x000256 00:8246: 03        .byte con_0776_spr_A + $03   ; 1A 
- D 0 - - - 0x000257 00:8247: 01        .byte con_0776_spr_A + $01   ; 1E 
- D 0 - - - 0x000258 00:8248: 02        .byte con_0776_spr_A + $02   ; 22 
- D 0 - - - 0x000259 00:8249: 02        .byte con_0776_spr_A + $02   ; 26 
- D 0 - - - 0x00025A 00:824A: 02        .byte con_0776_spr_A + $02   ; 2A 
- D 0 - - - 0x00025B 00:824B: 00        .byte con_0776_spr_A + $00   ; 2E 
- D 0 - - - 0x00025C 00:824C: 01        .byte con_0776_spr_A + $01   ; 32 



tbl_824D_spr_A:
- D 0 - - - 0x00025D 00:824D: 01        .byte con_0776_spr_A + $01   ; 12 
- D 0 - - - 0x00025E 00:824E: 01        .byte con_0776_spr_A + $01   ; 16 
- D 0 - - - 0x00025F 00:824F: 03        .byte con_0776_spr_A + $03   ; 1A 
- D 0 - - - 0x000260 00:8250: 01        .byte con_0776_spr_A + $01   ; 1E 
- D 0 - - - 0x000261 00:8251: 03        .byte con_0776_spr_A + $03   ; 22 
- D 0 - - - 0x000262 00:8252: 01        .byte con_0776_spr_A + $01   ; 26 
- D 0 - - - 0x000263 00:8253: 01        .byte con_0776_spr_A + $01   ; 2A 
- D 0 - - - 0x000264 00:8254: 00        .byte con_0776_spr_A + $00   ; 2E 
- D 0 - - - 0x000265 00:8255: 03        .byte con_0776_spr_A + $03   ; 32 



tbl_8256_spr_A:
- D 0 - - - 0x000266 00:8256: 01        .byte con_0776_spr_A + $01   ; 12 
- D 0 - - - 0x000267 00:8257: 02        .byte con_0776_spr_A + $02   ; 16 
- D 0 - - - 0x000268 00:8258: 01        .byte con_0776_spr_A + $01   ; 1A 
- D 0 - - - 0x000269 00:8259: 03        .byte con_0776_spr_A + $03   ; 1E 
- D 0 - - - 0x00026A 00:825A: 02        .byte con_0776_spr_A + $02   ; 22 
- D 0 - - - 0x00026B 00:825B: 03        .byte con_0776_spr_A + $03   ; 26 
- D 0 - - - 0x00026C 00:825C: 02        .byte con_0776_spr_A + $02   ; 2A 
- D 0 - - - 0x00026D 00:825D: 00        .byte con_0776_spr_A + $00   ; 2E 
- D 0 - - - 0x00026E 00:825E: 03        .byte con_0776_spr_A + $03   ; 32 



tbl_825F_spr_A:
- D 0 - - - 0x00026F 00:825F: 01        .byte con_0776_spr_A + $01   ; 12 
- D 0 - - - 0x000270 00:8260: 01        .byte con_0776_spr_A + $01   ; 16 
- D 0 - - - 0x000271 00:8261: 01        .byte con_0776_spr_A + $01   ; 1A 
- D 0 - - - 0x000272 00:8262: 03        .byte con_0776_spr_A + $03   ; 1E 
- D 0 - - - 0x000273 00:8263: 01        .byte con_0776_spr_A + $01   ; 22 
- D 0 - - - 0x000274 00:8264: 02        .byte con_0776_spr_A + $02   ; 26 
- D 0 - - - 0x000275 00:8265: 01        .byte con_0776_spr_A + $01   ; 2A 
- D 0 - - - 0x000276 00:8266: 00        .byte con_0776_spr_A + $00   ; 2E 
- D 0 - - - 0x000277 00:8267: 03        .byte con_0776_spr_A + $03   ; 32 



tbl_8268_round_data:
; 00 round 1-1
- D 0 - I - 0x000278 00:8268: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000279 00:8269: 12        .byte con_chr_bank + $12   ; 01 sprites
- D 0 - I - 0x00027A 00:826A: 48        .byte con_chr_bank + $48   ; 02 background + flag
- D 0 - I - 0x00027B 00:826B: 0C        .byte con_prg_bank + $0C   ; 03 bank for most of the data?
- D 0 - I - 0x00027C 00:826C: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x00027E 00:826E: 2F B9     .word _off010_0x01B93F_00 ; 06 07 blocks data?
- D 0 - I - 0x000280 00:8270: 89 B7     .word _off011_0x01B8E4_00 ; 08 09 
- D 0 - I - 0x000282 00:8272: 1A BD     .word _off012_0x017D2A_00 ; 0A 0B 
- D 0 - I - 0x000284 00:8274: 2D B8     .word _off013_0x01B83D_00 ; 0C 0D 
- D 0 - I - 0x000286 00:8276: D4 B8     .word _off014_0x01B8E4_00 ; 0E 0F 
- D 0 - I - 0x000288 00:8278: 31 BF     .word _off015_0x01BD2A_00 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00028A 00:827A: 08        .byte $08   ; 12 
- D 0 - I - 0x00028B 00:827B: 10        .byte $10   ; 13 
- D 0 - I - 0x00028C 00:827C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00028D 00:827D: 00        .byte $00   ; 15 
- D 0 - I - 0x00028E 00:827E: 02        .byte $02   ; 16 
- D 0 - I - 0x00028F 00:827F: 32        .byte $32   ; 17 
- D 0 - I - 0x000290 00:8280: 32        .byte $32   ; 18 
- D 0 - I - 0x000291 00:8281: 00        .byte $00   ; 19 
- D 0 - I - 0x000292 00:8282: 52        .byte $52   ; 1A 
- D 0 - I - 0x000293 00:8283: 00        .byte $00   ; 1B 
- D 0 - I - 0x000294 00:8284: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000295 00:8285: 01        .byte con_0041_pal_01   ; 1D for ram_0041_palette
- - - - - - 0x000296 00:8286: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000297 00:8287: 00        .byte $00   ; 1F placeholder



; 01 round 1-2
- D 0 - I - 0x000298 00:8288: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000299 00:8289: 12        .byte con_chr_bank + $12   ; 01 sprites
- D 0 - I - 0x00029A 00:828A: 48        .byte con_chr_bank + $48   ; 02 background + flag
- D 0 - I - 0x00029B 00:828B: 0C        .byte con_prg_bank + $0C   ; 03 bank for most of the data?
- D 0 - I - 0x00029C 00:828C: 00 02     .word $0200 ; 04 05 offset for next round data?
- D 0 - I - 0x00029E 00:828E: 2F B9     .word _off010_0x01B93F_01 ; 06 07 blocks data?
- D 0 - I - 0x0002A0 00:8290: 89 B7     .word _off011_0x01B8E4_01 ; 08 09
- D 0 - I - 0x0002A2 00:8292: 1A BD     .word _off012_0x017D2A_01 ; 0A 0B 
- D 0 - I - 0x0002A4 00:8294: 2D B8     .word _off013_0x01B83D_01 ; 0C 0D 
- D 0 - I - 0x0002A6 00:8296: D4 B8     .word _off014_0x01B8E4_01 ; 0E 0F 
- D 0 - I - 0x0002A8 00:8298: 31 BF     .word _off015_0x01BD2A_01 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0002AA 00:829A: 08        .byte $08   ; 12 
- D 0 - I - 0x0002AB 00:829B: 10        .byte $10   ; 13 
- D 0 - I - 0x0002AC 00:829C: C0        .byte $C0   ; 14 
- D 0 - I - 0x0002AD 00:829D: 00        .byte $00   ; 15 
- D 0 - I - 0x0002AE 00:829E: 02        .byte $02   ; 16 
- D 0 - I - 0x0002AF 00:829F: 32        .byte $32   ; 17 
- D 0 - I - 0x0002B0 00:82A0: 32        .byte $32   ; 18 
- D 0 - I - 0x0002B1 00:82A1: 00        .byte $00   ; 19 
- D 0 - I - 0x0002B2 00:82A2: 52        .byte $52   ; 1A 
- D 0 - I - 0x0002B3 00:82A3: 00        .byte $00   ; 1B 
- D 0 - I - 0x0002B4 00:82A4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0002B5 00:82A5: 01        .byte con_0041_pal_01   ; 1D for ram_0041_palette
- - - - - - 0x0002B6 00:82A6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0002B7 00:82A7: 00        .byte $00   ; 1F placeholder



; 02 round 1-3
- D 0 - I - 0x0002B8 00:82A8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0002B9 00:82A9: 12        .byte con_chr_bank + $12   ; 01 sprites
- D 0 - I - 0x0002BA 00:82AA: 48        .byte con_chr_bank + $48   ; 02 background + flag
- D 0 - I - 0x0002BB 00:82AB: 0C        .byte con_prg_bank + $0C   ; 03 bank for most of the data?
- D 0 - I - 0x0002BC 00:82AC: 00 04     .word $0400 ; 04 05 offset for next round data?
- D 0 - I - 0x0002BE 00:82AE: 2F B9     .word _off010_0x01B93F_02 ; 06 07 blocks data?
- D 0 - I - 0x0002C0 00:82B0: 89 B7     .word _off011_0x01B8E4_02 ; 08 09
- D 0 - I - 0x0002C2 00:82B2: 1A BD     .word _off012_0x017D2A_02 ; 0A 0B 
- D 0 - I - 0x0002C4 00:82B4: 2D B8     .word _off013_0x01B83D_02 ; 0C 0D 
- D 0 - I - 0x0002C6 00:82B6: D4 B8     .word _off014_0x01B8E4_02 ; 0E 0F 
- D 0 - I - 0x0002C8 00:82B8: 31 BF     .word _off015_0x01BD2A_02 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0002CA 00:82BA: 08        .byte $08   ; 12 
- D 0 - I - 0x0002CB 00:82BB: 0E        .byte $0E   ; 13 
- D 0 - I - 0x0002CC 00:82BC: C0        .byte $C0   ; 14 
- D 0 - I - 0x0002CD 00:82BD: 00        .byte $00   ; 15 
- D 0 - I - 0x0002CE 00:82BE: 02        .byte $02   ; 16 
- D 0 - I - 0x0002CF 00:82BF: 32        .byte $32   ; 17 
- D 0 - I - 0x0002D0 00:82C0: 32        .byte $32   ; 18 
- D 0 - I - 0x0002D1 00:82C1: 00        .byte $00   ; 19 
- D 0 - I - 0x0002D2 00:82C2: 52        .byte $52   ; 1A 
- D 0 - I - 0x0002D3 00:82C3: 00        .byte $00   ; 1B 
- D 0 - I - 0x0002D4 00:82C4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0002D5 00:82C5: 01        .byte con_0041_pal_01   ; 1D for ram_0041_palette
- - - - - - 0x0002D6 00:82C6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0002D7 00:82C7: 00        .byte $00   ; 1F placeholder



; 03 round 2-1
- D 0 - I - 0x0002D8 00:82C8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0002D9 00:82C9: 16        .byte con_chr_bank + $16   ; 01 sprites
- D 0 - I - 0x0002DA 00:82CA: 4C        .byte con_chr_bank + $4C   ; 02 background + flag
- D 0 - I - 0x0002DB 00:82CB: 0A        .byte con_prg_bank + $0A   ; 03 bank for most of the data?
- D 0 - I - 0x0002DC 00:82CC: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x0002DE 00:82CE: E2 A6     .word _off010_0x0166F2_03 ; 06 07 blocks data?
- D 0 - I - 0x0002E0 00:82D0: 49 A5     .word _off011_0x016559_03 ; 08 09
- D 0 - I - 0x0002E2 00:82D2: EB AD     .word _off012_0x016DFB_03 ; 0A 0B 
- D 0 - I - 0x0002E4 00:82D4: 77 A6     .word _off013_0x016687_03 ; 0C 0D 
- D 0 - I - 0x0002E6 00:82D6: E2 A6     .word _off014_0x0166F2_03 ; 0E 0F 
- D 0 - I - 0x0002E8 00:82D8: E4 AC     .word _off015_0x016CF4_03 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0002EA 00:82DA: 08        .byte $08   ; 12 
- D 0 - I - 0x0002EB 00:82DB: 10        .byte $10   ; 13 
- D 0 - I - 0x0002EC 00:82DC: C0        .byte $C0   ; 14 
- D 0 - I - 0x0002ED 00:82DD: 00        .byte $00   ; 15 
- D 0 - I - 0x0002EE 00:82DE: 02        .byte $02   ; 16 
- D 0 - I - 0x0002EF 00:82DF: 38        .byte $38   ; 17 
- D 0 - I - 0x0002F0 00:82E0: 32        .byte $32   ; 18 
- D 0 - I - 0x0002F1 00:82E1: 00        .byte $00   ; 19 
- D 0 - I - 0x0002F2 00:82E2: 0F        .byte $0F   ; 1A 
- D 0 - I - 0x0002F3 00:82E3: 00        .byte $00   ; 1B 
- D 0 - I - 0x0002F4 00:82E4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0002F5 00:82E5: 02        .byte con_0041_pal_02   ; 1D for ram_0041_palette
- - - - - - 0x0002F6 00:82E6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0002F7 00:82E7: 00        .byte $00   ; 1F placeholder



; 04 round 2-2
- D 0 - I - 0x0002F8 00:82E8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0002F9 00:82E9: 16        .byte con_chr_bank + $16   ; 01 sprites
- D 0 - I - 0x0002FA 00:82EA: 4C        .byte con_chr_bank + $4C   ; 02 background + flag
- D 0 - I - 0x0002FB 00:82EB: 0A        .byte con_prg_bank + $0A   ; 03 bank for most of the data?
- D 0 - I - 0x0002FC 00:82EC: 00 02     .word $0200 ; 04 05 offset for next round data?
- D 0 - I - 0x0002FE 00:82EE: E2 A6     .word _off010_0x0166F2_04 ; 06 07 blocks data?
- D 0 - I - 0x000300 00:82F0: 49 A5     .word _off011_0x016559_04 ; 08 09
- D 0 - I - 0x000302 00:82F2: EB AD     .word _off012_0x016DFB_04 ; 0A 0B 
- D 0 - I - 0x000304 00:82F4: 77 A6     .word _off013_0x016687_04 ; 0C 0D 
- D 0 - I - 0x000306 00:82F6: E2 A6     .word _off014_0x0166F2_04 ; 0E 0F 
- D 0 - I - 0x000308 00:82F8: E4 AC     .word _off015_0x016CF4_04 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00030A 00:82FA: 08        .byte $08   ; 12 
- D 0 - I - 0x00030B 00:82FB: 10        .byte $10   ; 13 
- D 0 - I - 0x00030C 00:82FC: C0        .byte $C0   ; 14 
- D 0 - I - 0x00030D 00:82FD: 00        .byte $00   ; 15 
- D 0 - I - 0x00030E 00:82FE: 02        .byte $02   ; 16 
- D 0 - I - 0x00030F 00:82FF: 38        .byte $38   ; 17 
- D 0 - I - 0x000310 00:8300: 32        .byte $32   ; 18 
- D 0 - I - 0x000311 00:8301: 00        .byte $00   ; 19 
- D 0 - I - 0x000312 00:8302: 0F        .byte $0F   ; 1A 
- D 0 - I - 0x000313 00:8303: 00        .byte $00   ; 1B 
- D 0 - I - 0x000314 00:8304: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000315 00:8305: 10        .byte con_0041_pal_10   ; 1D for ram_0041_palette
- - - - - - 0x000316 00:8306: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000317 00:8307: 00        .byte $00   ; 1F placeholder



; 05 round 2-3
- D 0 - I - 0x000318 00:8308: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000319 00:8309: 16        .byte con_chr_bank + $16   ; 01 sprites
- D 0 - I - 0x00031A 00:830A: 4C        .byte con_chr_bank + $4C   ; 02 background + flag
- D 0 - I - 0x00031B 00:830B: 0A        .byte con_prg_bank + $0A   ; 03 bank for most of the data?
- D 0 - I - 0x00031C 00:830C: 00 04     .word $0400 ; 04 05 offset for next round data?
- D 0 - I - 0x00031E 00:830E: E2 A6     .word _off010_0x0166F2_05 ; 06 07 blocks data?
- D 0 - I - 0x000320 00:8310: 49 A5     .word _off011_0x016559_05 ; 08 09
- D 0 - I - 0x000322 00:8312: EB AD     .word _off012_0x016DFB_05 ; 0A 0B 
- D 0 - I - 0x000324 00:8314: 77 A6     .word _off013_0x016687_05 ; 0C 0D 
- D 0 - I - 0x000326 00:8316: E2 A6     .word _off014_0x0166F2_05 ; 0E 0F 
- D 0 - I - 0x000328 00:8318: E4 AC     .word _off015_0x016CF4_05 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00032A 00:831A: 08        .byte $08   ; 12 
- D 0 - I - 0x00032B 00:831B: 0E        .byte $0E   ; 13 
- D 0 - I - 0x00032C 00:831C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00032D 00:831D: 00        .byte $00   ; 15 
- D 0 - I - 0x00032E 00:831E: 02        .byte $02   ; 16 
- D 0 - I - 0x00032F 00:831F: 38        .byte $38   ; 17 
- D 0 - I - 0x000330 00:8320: 32        .byte $32   ; 18 
- D 0 - I - 0x000331 00:8321: 00        .byte $00   ; 19 
- D 0 - I - 0x000332 00:8322: 0F        .byte $0F   ; 1A 
- D 0 - I - 0x000333 00:8323: 00        .byte $00   ; 1B 
- D 0 - I - 0x000334 00:8324: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000335 00:8325: 10        .byte con_0041_pal_10   ; 1D for ram_0041_palette
- - - - - - 0x000336 00:8326: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000337 00:8327: 00        .byte $00   ; 1F placeholder



; 06 round 3-1
- D 0 - I - 0x000338 00:8328: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000339 00:8329: 1A        .byte con_chr_bank + $1A   ; 01 sprites
- D 0 - I - 0x00033A 00:832A: 50        .byte con_chr_bank + $50   ; 02 background + flag
- D 0 - I - 0x00033B 00:832B: 08        .byte con_prg_bank + $08   ; 03 bank for most of the data?
- D 0 - I - 0x00033C 00:832C: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x00033E 00:832E: 0F A0     .word _off010_0x01201F_06 ; 06 07 blocks data?
- D 0 - I - 0x000340 00:8330: 3B 9F     .word _off011_0x011F4B_06 ; 08 09
- D 0 - I - 0x000342 00:8332: 58 8A     .word _off012_0x014A68_06 ; 0A 0B 
- D 0 - I - 0x000344 00:8334: 95 9F     .word _off013_0x011FA5_06 ; 0C 0D 
- D 0 - I - 0x000346 00:8336: 0F A0     .word _off014_0x01201F_06 ; 0E 0F 
- D 0 - I - 0x000348 00:8338: 11 A7     .word _off015_0x012721_06 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00034A 00:833A: 08        .byte $08   ; 12 
- D 0 - I - 0x00034B 00:833B: 10        .byte $10   ; 13 
- D 0 - I - 0x00034C 00:833C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00034D 00:833D: 00        .byte $00   ; 15 
- D 0 - I - 0x00034E 00:833E: 02        .byte $02   ; 16 
- D 0 - I - 0x00034F 00:833F: 42        .byte $42   ; 17 
- D 0 - I - 0x000350 00:8340: 32        .byte $32   ; 18 
- D 0 - I - 0x000351 00:8341: 00        .byte $00   ; 19 
- D 0 - I - 0x000352 00:8342: 03        .byte $03   ; 1A 
- D 0 - I - 0x000353 00:8343: 00        .byte $00   ; 1B 
- D 0 - I - 0x000354 00:8344: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000355 00:8345: 03        .byte con_0041_pal_03   ; 1D for ram_0041_palette
- - - - - - 0x000356 00:8346: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000357 00:8347: 00        .byte $00   ; 1F placeholder



; 07 round 3-2
- D 0 - I - 0x000358 00:8348: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000359 00:8349: 1A        .byte con_chr_bank + $1A   ; 01 sprites
- D 0 - I - 0x00035A 00:834A: 50        .byte con_chr_bank + $50   ; 02 background + flag
- D 0 - I - 0x00035B 00:834B: 08        .byte con_prg_bank + $08   ; 03 bank for most of the data?
- D 0 - I - 0x00035C 00:834C: 00 02     .word $0200 ; 04 05 offset for next round data?
- D 0 - I - 0x00035E 00:834E: 0F A0     .word _off010_0x01201F_07 ; 06 07 blocks data?
- D 0 - I - 0x000360 00:8350: 3B 9F     .word _off011_0x011F4B_07 ; 08 09
- D 0 - I - 0x000362 00:8352: 58 8A     .word _off012_0x014A68_07 ; 0A 0B 
- D 0 - I - 0x000364 00:8354: 95 9F     .word _off013_0x011FA5_07 ; 0C 0D 
- D 0 - I - 0x000366 00:8356: 0F A0     .word _off014_0x01201F_07 ; 0E 0F 
- D 0 - I - 0x000368 00:8358: 11 A7     .word _off015_0x012721_07 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00036A 00:835A: 08        .byte $08   ; 12 
- D 0 - I - 0x00036B 00:835B: 10        .byte $10   ; 13 
- D 0 - I - 0x00036C 00:835C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00036D 00:835D: 00        .byte $00   ; 15 
- D 0 - I - 0x00036E 00:835E: 02        .byte $02   ; 16 
- D 0 - I - 0x00036F 00:835F: 42        .byte $42   ; 17 
- D 0 - I - 0x000370 00:8360: 32        .byte $32   ; 18 
- D 0 - I - 0x000371 00:8361: 00        .byte $00   ; 19 
- D 0 - I - 0x000372 00:8362: 03        .byte $03   ; 1A 
- D 0 - I - 0x000373 00:8363: 00        .byte $00   ; 1B 
- D 0 - I - 0x000374 00:8364: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000375 00:8365: 03        .byte con_0041_pal_03   ; 1D for ram_0041_palette
- - - - - - 0x000376 00:8366: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000377 00:8367: 00        .byte $00   ; 1F placeholder



; 08 round 3-3
- D 0 - I - 0x000378 00:8368: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000379 00:8369: 1A        .byte con_chr_bank + $1A   ; 01 sprites
- D 0 - I - 0x00037A 00:836A: 50        .byte con_chr_bank + $50   ; 02 background + flag
- D 0 - I - 0x00037B 00:836B: 08        .byte con_prg_bank + $08   ; 03 bank for most of the data?
- D 0 - I - 0x00037C 00:836C: 00 04     .word $0400 ; 04 05 offset for next round data?
- D 0 - I - 0x00037E 00:836E: 0F A0     .word _off010_0x01201F_08 ; 06 07 blocks data?
- D 0 - I - 0x000380 00:8370: 3B 9F     .word _off011_0x011F4B_08 ; 08 09
- D 0 - I - 0x000382 00:8372: 58 8A     .word _off012_0x014A68_08 ; 0A 0B 
- D 0 - I - 0x000384 00:8374: 95 9F     .word _off013_0x011FA5_08 ; 0C 0D 
- D 0 - I - 0x000386 00:8376: 0F A0     .word _off014_0x01201F_08 ; 0E 0F 
- D 0 - I - 0x000388 00:8378: 11 A7     .word _off015_0x012721_08 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00038A 00:837A: 08        .byte $08   ; 12 
- D 0 - I - 0x00038B 00:837B: 16        .byte $16   ; 13 
- D 0 - I - 0x00038C 00:837C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00038D 00:837D: 00        .byte $00   ; 15 
- D 0 - I - 0x00038E 00:837E: 02        .byte $02   ; 16 
- D 0 - I - 0x00038F 00:837F: 42        .byte $42   ; 17 
- D 0 - I - 0x000390 00:8380: 32        .byte $32   ; 18 
- D 0 - I - 0x000391 00:8381: 00        .byte $00   ; 19 
- D 0 - I - 0x000392 00:8382: 03        .byte $03   ; 1A 
- D 0 - I - 0x000393 00:8383: 00        .byte $00   ; 1B 
- D 0 - I - 0x000394 00:8384: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000395 00:8385: 03        .byte con_0041_pal_03   ; 1D for ram_0041_palette
- - - - - - 0x000396 00:8386: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000397 00:8387: 00        .byte $00   ; 1F placeholder



; 09 round 4-1
- D 0 - I - 0x000398 00:8388: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000399 00:8389: 1E        .byte con_chr_bank + $1E   ; 01 sprites
- D 0 - I - 0x00039A 00:838A: D4        .byte con_chr_bank + $54 + $80   ; 02 background + flag
- D 0 - I - 0x00039B 00:838B: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x00039C 00:838C: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x00039E 00:838E: CD 95     .word _off010_0x0095DD_09 ; 06 07 blocks data?
- D 0 - I - 0x0003A0 00:8390: B2 94     .word _off011_0x0094C2_09 ; 08 09
- D 0 - I - 0x0003A2 00:8392: 58 80     .word _off012_0x014068_09 ; 0A 0B 
- D 0 - I - 0x0003A4 00:8394: 48 95     .word _off013_0x009558_09 ; 0C 0D 
- D 0 - I - 0x0003A6 00:8396: CD 95     .word _off014_0x0095DD_09 ; 0E 0F 
- D 0 - I - 0x0003A8 00:8398: CF 9D     .word _off015_0x009DDF_09 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0003AA 00:839A: 08        .byte $08   ; 12 
- D 0 - I - 0x0003AB 00:839B: 10        .byte $10   ; 13 
- D 0 - I - 0x0003AC 00:839C: C0        .byte $C0   ; 14 
- D 0 - I - 0x0003AD 00:839D: 00        .byte $00   ; 15 
- D 0 - I - 0x0003AE 00:839E: 02        .byte $02   ; 16 
- D 0 - I - 0x0003AF 00:839F: 52        .byte $52   ; 17 
- D 0 - I - 0x0003B0 00:83A0: 32        .byte $32   ; 18 
- D 0 - I - 0x0003B1 00:83A1: 00        .byte $00   ; 19 
- D 0 - I - 0x0003B2 00:83A2: 13        .byte $13   ; 1A 
- D 0 - I - 0x0003B3 00:83A3: 00        .byte $00   ; 1B 
- D 0 - I - 0x0003B4 00:83A4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0003B5 00:83A5: 04        .byte con_0041_pal_04   ; 1D for ram_0041_palette
- - - - - - 0x0003B6 00:83A6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0003B7 00:83A7: 00        .byte $00   ; 1F placeholder



; 0A round 4-2
- D 0 - I - 0x0003B8 00:83A8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0003B9 00:83A9: 1E        .byte con_chr_bank + $1E   ; 01 sprites
- D 0 - I - 0x0003BA 00:83AA: D4        .byte con_chr_bank + $54 + $80   ; 02 background + flag
- D 0 - I - 0x0003BB 00:83AB: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x0003BC 00:83AC: 00 02     .word $0200 ; 04 05 offset for next round data?
- D 0 - I - 0x0003BE 00:83AE: CD 95     .word _off010_0x0095DD_0A ; 06 07 blocks data?
- D 0 - I - 0x0003C0 00:83B0: B2 94     .word _off011_0x0094C2_0A ; 08 09
- D 0 - I - 0x0003C2 00:83B2: 58 80     .word _off012_0x014068_0A ; 0A 0B 
- D 0 - I - 0x0003C4 00:83B4: 48 95     .word _off013_0x009558_0A ; 0C 0D 
- D 0 - I - 0x0003C6 00:83B6: CD 95     .word _off014_0x0095DD_0A ; 0E 0F 
- D 0 - I - 0x0003C8 00:83B8: CF 9D     .word _off015_0x009DDF_0A ; 10 11 objects' id's and their flags
- D 0 - I - 0x0003CA 00:83BA: 08        .byte $08   ; 12 
- D 0 - I - 0x0003CB 00:83BB: 20        .byte $20   ; 13 
- D 0 - I - 0x0003CC 00:83BC: C0        .byte $C0   ; 14 
- D 0 - I - 0x0003CD 00:83BD: 00        .byte $00   ; 15 
- D 0 - I - 0x0003CE 00:83BE: 02        .byte $02   ; 16 
- D 0 - I - 0x0003CF 00:83BF: 2D        .byte $2D   ; 17 
- D 0 - I - 0x0003D0 00:83C0: 32        .byte $32   ; 18 
- D 0 - I - 0x0003D1 00:83C1: 00        .byte $00   ; 19 
- D 0 - I - 0x0003D2 00:83C2: 01        .byte $01   ; 1A 
- D 0 - I - 0x0003D3 00:83C3: 01        .byte $01   ; 1B 
- D 0 - I - 0x0003D4 00:83C4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0003D5 00:83C5: 04        .byte con_0041_pal_04   ; 1D for ram_0041_palette
- - - - - - 0x0003D6 00:83C6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0003D7 00:83C7: 00        .byte $00   ; 1F placeholder



; 0B round 4-3
- D 0 - I - 0x0003D8 00:83C8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0003D9 00:83C9: 1E        .byte con_chr_bank + $1E   ; 01 sprites
- D 0 - I - 0x0003DA 00:83CA: D4        .byte con_chr_bank + $54 + $80   ; 02 background + flag
- D 0 - I - 0x0003DB 00:83CB: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x0003DC 00:83CC: 00 06     .word $0600 ; 04 05 offset for next round data?
- D 0 - I - 0x0003DE 00:83CE: CD 95     .word _off010_0x0095DD_0B ; 06 07 blocks data?
- D 0 - I - 0x0003E0 00:83D0: B2 94     .word _off011_0x0094C2_0B ; 08 09
- D 0 - I - 0x0003E2 00:83D2: 58 80     .word _off012_0x014068_0B ; 0A 0B 
- D 0 - I - 0x0003E4 00:83D4: 48 95     .word _off013_0x009558_0B ; 0C 0D 
- D 0 - I - 0x0003E6 00:83D6: CD 95     .word _off014_0x0095DD_0B ; 0E 0F 
- D 0 - I - 0x0003E8 00:83D8: CF 9D     .word _off015_0x009DDF_0B ; 10 11 objects' id's and their flags
- D 0 - I - 0x0003EA 00:83DA: 08        .byte $08   ; 12 
- D 0 - I - 0x0003EB 00:83DB: 0E        .byte $0E   ; 13 
- D 0 - I - 0x0003EC 00:83DC: C0        .byte $C0   ; 14 
- D 0 - I - 0x0003ED 00:83DD: 00        .byte $00   ; 15 
- D 0 - I - 0x0003EE 00:83DE: 02        .byte $02   ; 16 
- D 0 - I - 0x0003EF 00:83DF: 2D        .byte $2D   ; 17 
- D 0 - I - 0x0003F0 00:83E0: 32        .byte $32   ; 18 
- D 0 - I - 0x0003F1 00:83E1: 00        .byte $00   ; 19 
- D 0 - I - 0x0003F2 00:83E2: 01        .byte $01   ; 1A 
- D 0 - I - 0x0003F3 00:83E3: 00        .byte $00   ; 1B 
- D 0 - I - 0x0003F4 00:83E4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0003F5 00:83E5: 0B        .byte con_0041_pal_0B   ; 1D for ram_0041_palette
- - - - - - 0x0003F6 00:83E6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0003F7 00:83E7: 00        .byte $00   ; 1F placeholder



; 0C round 5-1
- D 0 - I - 0x0003F8 00:83E8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0003F9 00:83E9: 22        .byte con_chr_bank + $22   ; 01 sprites
- D 0 - I - 0x0003FA 00:83EA: 58        .byte con_chr_bank + $58   ; 02 background + flag
- D 0 - I - 0x0003FB 00:83EB: 06        .byte con_prg_bank + $06   ; 03 bank for most of the data?
- D 0 - I - 0x0003FC 00:83EC: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x0003FE 00:83EE: C0 95     .word _off010_0x00D5D0_0C ; 06 07 blocks data?
- D 0 - I - 0x000400 00:83F0: 5C 94     .word _off011_0x00D46C_0C ; 08 09
- D 0 - I - 0x000402 00:83F2: 58 85     .word _off012_0x014568_0C ; 0A 0B 
- D 0 - I - 0x000404 00:83F4: 3C 95     .word _off013_0x00D54C_0C ; 0C 0D 
- D 0 - I - 0x000406 00:83F6: C0 95     .word _off014_0x00D5D0_0C ; 0E 0F 
- D 0 - I - 0x000408 00:83F8: C2 9D     .word _off015_0x00DDD2_0C ; 10 11 objects' id's and their flags
- D 0 - I - 0x00040A 00:83FA: 08        .byte $08   ; 12 
- D 0 - I - 0x00040B 00:83FB: 10        .byte $10   ; 13 
- D 0 - I - 0x00040C 00:83FC: C0        .byte $C0   ; 14 
- D 0 - I - 0x00040D 00:83FD: 00        .byte $00   ; 15 
- D 0 - I - 0x00040E 00:83FE: 02        .byte $02   ; 16 
- D 0 - I - 0x00040F 00:83FF: 2D        .byte $2D   ; 17 
- D 0 - I - 0x000410 00:8400: 32        .byte $32   ; 18 
- D 0 - I - 0x000411 00:8401: 00        .byte $00   ; 19 
- D 0 - I - 0x000412 00:8402: 01        .byte $01   ; 1A 
- D 0 - I - 0x000413 00:8403: 00        .byte $00   ; 1B 
- D 0 - I - 0x000414 00:8404: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000415 00:8405: 05        .byte con_0041_pal_05   ; 1D for ram_0041_palette
- - - - - - 0x000416 00:8406: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000417 00:8407: 00        .byte $00   ; 1F placeholder



; 0D round 5-2
- D 0 - I - 0x000418 00:8408: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000419 00:8409: 22        .byte con_chr_bank + $22   ; 01 sprites
- D 0 - I - 0x00041A 00:840A: 58        .byte con_chr_bank + $58   ; 02 background + flag
- D 0 - I - 0x00041B 00:840B: 06        .byte con_prg_bank + $06   ; 03 bank for most of the data?
- D 0 - I - 0x00041C 00:840C: 00 02     .word $0200 ; 04 05 offset for next round data?
- D 0 - I - 0x00041E 00:840E: C0 95     .word _off010_0x00D5D0_0D ; 06 07 blocks data?
- D 0 - I - 0x000420 00:8410: 5C 94     .word _off011_0x00D46C_0D ; 08 09
- D 0 - I - 0x000422 00:8412: 58 85     .word _off012_0x014568_0D ; 0A 0B 
- D 0 - I - 0x000424 00:8414: 3C 95     .word _off013_0x00D54C_0D ; 0C 0D 
- D 0 - I - 0x000426 00:8416: C0 95     .word _off014_0x00D5D0_0D ; 0E 0F 
- D 0 - I - 0x000428 00:8418: C2 9D     .word _off015_0x00DDD2_0D ; 10 11 objects' id's and their flags
- D 0 - I - 0x00042A 00:841A: 08        .byte $08   ; 12 
- D 0 - I - 0x00042B 00:841B: 20        .byte $20   ; 13 
- D 0 - I - 0x00042C 00:841C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00042D 00:841D: 00        .byte $00   ; 15 
- D 0 - I - 0x00042E 00:841E: 02        .byte $02   ; 16 
- D 0 - I - 0x00042F 00:841F: 2D        .byte $2D   ; 17 
- D 0 - I - 0x000430 00:8420: 32        .byte $32   ; 18 
- D 0 - I - 0x000431 00:8421: 00        .byte $00   ; 19 
- D 0 - I - 0x000432 00:8422: 01        .byte $01   ; 1A 
- D 0 - I - 0x000433 00:8423: 00        .byte $00   ; 1B 
- D 0 - I - 0x000434 00:8424: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000435 00:8425: 05        .byte con_0041_pal_05   ; 1D for ram_0041_palette
- - - - - - 0x000436 00:8426: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000437 00:8427: 00        .byte $00   ; 1F placeholder



; 0E round 5-3
- D 0 - I - 0x000438 00:8428: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000439 00:8429: 22        .byte con_chr_bank + $22   ; 01 sprites
- D 0 - I - 0x00043A 00:842A: 58        .byte con_chr_bank + $58   ; 02 background + flag
- D 0 - I - 0x00043B 00:842B: 06        .byte con_prg_bank + $06   ; 03 bank for most of the data?
- D 0 - I - 0x00043C 00:842C: 00 06     .word $0600 ; 04 05 offset for next round data?
- D 0 - I - 0x00043E 00:842E: C0 95     .word _off010_0x00D5D0_0E ; 06 07 blocks data?
- D 0 - I - 0x000440 00:8430: 5C 94     .word _off011_0x00D46C_0E ; 08 09
- D 0 - I - 0x000442 00:8432: 58 85     .word _off012_0x014568_0E ; 0A 0B 
- D 0 - I - 0x000444 00:8434: 3C 95     .word _off013_0x00D54C_0E ; 0C 0D 
- D 0 - I - 0x000446 00:8436: C0 95     .word _off014_0x00D5D0_0E ; 0E 0F 
- D 0 - I - 0x000448 00:8438: C2 9D     .word _off015_0x00DDD2_0E ; 10 11 objects' id's and their flags
- D 0 - I - 0x00044A 00:843A: 08        .byte $08   ; 12 
- D 0 - I - 0x00044B 00:843B: 0E        .byte $0E   ; 13 
- D 0 - I - 0x00044C 00:843C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00044D 00:843D: 00        .byte $00   ; 15 
- D 0 - I - 0x00044E 00:843E: 02        .byte $02   ; 16 
- D 0 - I - 0x00044F 00:843F: 2D        .byte $2D   ; 17 
- D 0 - I - 0x000450 00:8440: 32        .byte $32   ; 18 
- D 0 - I - 0x000451 00:8441: 00        .byte $00   ; 19 
- D 0 - I - 0x000452 00:8442: 01        .byte $01   ; 1A 
- D 0 - I - 0x000453 00:8443: 00        .byte $00   ; 1B 
- D 0 - I - 0x000454 00:8444: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000455 00:8445: 05        .byte con_0041_pal_05   ; 1D for ram_0041_palette
- - - - - - 0x000456 00:8446: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000457 00:8447: 00        .byte $00   ; 1F placeholder



; 0F round 6-1
- D 0 - I - 0x000458 00:8448: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000459 00:8449: 26        .byte con_chr_bank + $26   ; 01 sprites
- D 0 - I - 0x00045A 00:844A: DC        .byte con_chr_bank + $5C + $80   ; 02 background + flag
- D 0 - I - 0x00045B 00:844B: 08        .byte con_prg_bank + $08   ; 03 bank for most of the data?
- D 0 - I - 0x00045C 00:844C: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x00045E 00:844E: FA B8     .word _off010_0x01390A_0F ; 06 07 blocks data?
- D 0 - I - 0x000460 00:8450: 04 B8     .word _off011_0x013814_0F ; 08 09
- D 0 - I - 0x000462 00:8452: D8 8C     .word _off012_0x014CE8_0F ; 0A 0B 
- D 0 - I - 0x000464 00:8454: 8E B8     .word _off013_0x01389E_0F ; 0C 0D 
- D 0 - I - 0x000466 00:8456: FA B8     .word _off014_0x01390A_0F ; 0E 0F 
- D 0 - I - 0x000468 00:8458: FC BE     .word _off015_0x013F0C_0F ; 10 11 objects' id's and their flags
- D 0 - I - 0x00046A 00:845A: 08        .byte $08   ; 12 
- D 0 - I - 0x00046B 00:845B: 20        .byte $20   ; 13 
- D 0 - I - 0x00046C 00:845C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00046D 00:845D: 00        .byte $00   ; 15 
- D 0 - I - 0x00046E 00:845E: 02        .byte $02   ; 16 
- D 0 - I - 0x00046F 00:845F: 2D        .byte $2D   ; 17 
- D 0 - I - 0x000470 00:8460: 32        .byte $32   ; 18 
- D 0 - I - 0x000471 00:8461: 00        .byte $00   ; 19 
- D 0 - I - 0x000472 00:8462: 01        .byte $01   ; 1A 
- D 0 - I - 0x000473 00:8463: 01        .byte $01   ; 1B 
- D 0 - I - 0x000474 00:8464: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000475 00:8465: 06        .byte con_0041_pal_06   ; 1D for ram_0041_palette
- - - - - - 0x000476 00:8466: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000477 00:8467: 00        .byte $00   ; 1F placeholder



; 10 round 6-2
- D 0 - I - 0x000478 00:8468: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000479 00:8469: 26        .byte con_chr_bank + $26   ; 01 sprites
- D 0 - I - 0x00047A 00:846A: DC        .byte con_chr_bank + $5C + $80   ; 02 background + flag
- D 0 - I - 0x00047B 00:846B: 08        .byte con_prg_bank + $08   ; 03 bank for most of the data?
- D 0 - I - 0x00047C 00:846C: 00 04     .word $0400 ; 04 05 offset for next round data?
- D 0 - I - 0x00047E 00:846E: FA B8     .word _off010_0x01390A_10 ; 06 07 blocks data?
- D 0 - I - 0x000480 00:8470: 04 B8     .word _off011_0x013814_10 ; 08 09
- D 0 - I - 0x000482 00:8472: D8 8C     .word _off012_0x014CE8_10 ; 0A 0B 
- D 0 - I - 0x000484 00:8474: 8E B8     .word _off013_0x01389E_10 ; 0C 0D 
- D 0 - I - 0x000486 00:8476: FA B8     .word _off014_0x01390A_10 ; 0E 0F 
- D 0 - I - 0x000488 00:8478: FC BE     .word _off015_0x013F0C_10 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00048A 00:847A: 08        .byte $08   ; 12 
- D 0 - I - 0x00048B 00:847B: 0E        .byte $0E   ; 13 
- D 0 - I - 0x00048C 00:847C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00048D 00:847D: 00        .byte $00   ; 15 
- D 0 - I - 0x00048E 00:847E: 02        .byte $02   ; 16 
- D 0 - I - 0x00048F 00:847F: 2D        .byte $2D   ; 17 
- D 0 - I - 0x000490 00:8480: 32        .byte $32   ; 18 
- D 0 - I - 0x000491 00:8481: 00        .byte $00   ; 19 
- D 0 - I - 0x000492 00:8482: 01        .byte $01   ; 1A 
- D 0 - I - 0x000493 00:8483: 00        .byte $00   ; 1B 
- D 0 - I - 0x000494 00:8484: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000495 00:8485: 06        .byte con_0041_pal_06   ; 1D for ram_0041_palette
- - - - - - 0x000496 00:8486: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000497 00:8487: 00        .byte $00   ; 1F placeholder



; 11 round 7-1
- D 0 - I - 0x000498 00:8488: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000499 00:8489: 2A        .byte con_chr_bank + $2A   ; 01 sprites
- D 0 - I - 0x00049A 00:848A: E0        .byte con_chr_bank + $60 + $80   ; 02 background + flag
- D 0 - I - 0x00049B 00:848B: 06        .byte con_prg_bank + $06   ; 03 bank for most of the data?
- D 0 - I - 0x00049C 00:848C: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x00049E 00:848E: 06 B9     .word _off010_0x00F916_11 ; 06 07 blocks data?
- D 0 - I - 0x0004A0 00:8490: 36 B8     .word _off011_0x00F846_11 ; 08 09
- D 0 - I - 0x0004A2 00:8492: D8 87     .word _off012_0x0147E8_11 ; 0A 0B 
- D 0 - I - 0x0004A4 00:8494: A8 B8     .word _off013_0x00F8B8_11 ; 0C 0D 
- D 0 - I - 0x0004A6 00:8496: 06 B9     .word _off014_0x00F916_11 ; 0E 0F 
- D 0 - I - 0x0004A8 00:8498: 08 BF     .word _off015_0x00FF18_11 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0004AA 00:849A: 08        .byte $08   ; 12 
- D 0 - I - 0x0004AB 00:849B: 20        .byte $20   ; 13 
- D 0 - I - 0x0004AC 00:849C: C0        .byte $C0   ; 14 
- D 0 - I - 0x0004AD 00:849D: 00        .byte $00   ; 15 
- D 0 - I - 0x0004AE 00:849E: 02        .byte $02   ; 16 
- D 0 - I - 0x0004AF 00:849F: 11        .byte $11   ; 17 
- D 0 - I - 0x0004B0 00:84A0: 32        .byte $32   ; 18 
- D 0 - I - 0x0004B1 00:84A1: 00        .byte $00   ; 19 
- D 0 - I - 0x0004B2 00:84A2: 04        .byte $04   ; 1A 
- D 0 - I - 0x0004B3 00:84A3: 02        .byte $02   ; 1B 
- D 0 - I - 0x0004B4 00:84A4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0004B5 00:84A5: 07        .byte con_0041_pal_07   ; 1D for ram_0041_palette
- - - - - - 0x0004B6 00:84A6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0004B7 00:84A7: 00        .byte $00   ; 1F placeholder



; 12 round 7-2
- D 0 - I - 0x0004B8 00:84A8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0004B9 00:84A9: 2A        .byte con_chr_bank + $2A   ; 01 sprites
- D 0 - I - 0x0004BA 00:84AA: E0        .byte con_chr_bank + $60 + $80   ; 02 background + flag
- D 0 - I - 0x0004BB 00:84AB: 06        .byte con_prg_bank + $06   ; 03 bank for most of the data?
- D 0 - I - 0x0004BC 00:84AC: 00 04     .word $0400 ; 04 05 offset for next round data?
- D 0 - I - 0x0004BE 00:84AE: 06 B9     .word _off010_0x00F916_12 ; 06 07 blocks data?
- D 0 - I - 0x0004C0 00:84B0: 36 B8     .word _off011_0x00F846_12 ; 08 09
- D 0 - I - 0x0004C2 00:84B2: D8 87     .word _off012_0x0147E8_12 ; 0A 0B 
- D 0 - I - 0x0004C4 00:84B4: A8 B8     .word _off013_0x00F8B8_12 ; 0C 0D 
- D 0 - I - 0x0004C6 00:84B6: 06 B9     .word _off014_0x00F916_12 ; 0E 0F 
- D 0 - I - 0x0004C8 00:84B8: 08 BF     .word _off015_0x00FF18_12 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0004CA 00:84BA: 08        .byte $08   ; 12 
- D 0 - I - 0x0004CB 00:84BB: 0E        .byte $0E   ; 13 
- D 0 - I - 0x0004CC 00:84BC: C0        .byte $C0   ; 14 
- D 0 - I - 0x0004CD 00:84BD: 00        .byte $00   ; 15 
- D 0 - I - 0x0004CE 00:84BE: 02        .byte $02   ; 16 
- D 0 - I - 0x0004CF 00:84BF: 11        .byte $11   ; 17 
- D 0 - I - 0x0004D0 00:84C0: 32        .byte $32   ; 18 
- D 0 - I - 0x0004D1 00:84C1: 70        .byte $70   ; 19 
- D 0 - I - 0x0004D2 00:84C2: 04        .byte $04   ; 1A 
- D 0 - I - 0x0004D3 00:84C3: 02        .byte $02   ; 1B 
- D 0 - I - 0x0004D4 00:84C4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0004D5 00:84C5: 0C        .byte con_0041_pal_0C   ; 1D for ram_0041_palette
- - - - - - 0x0004D6 00:84C6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0004D7 00:84C7: 00        .byte $00   ; 1F placeholder



; 13 round 8-1
- D 0 - I - 0x0004D8 00:84C8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0004D9 00:84C9: 2E        .byte con_chr_bank + $2E   ; 01 sprites
- D 0 - I - 0x0004DA 00:84CA: E4        .byte con_chr_bank + $64 + $80   ; 02 background + flag
- D 0 - I - 0x0004DB 00:84CB: 0A        .byte con_prg_bank + $0A   ; 03 bank for most of the data?
- D 0 - I - 0x0004DC 00:84CC: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x0004DE 00:84CE: B7 B6     .word _off010_0x0176C7_13 ; 06 07 blocks data?
- D 0 - I - 0x0004E0 00:84D0: 5A B6     .word _off011_0x01766A_13 ; 08 09
- D 0 - I - 0x0004E2 00:84D2: 9A BA     .word _off012_0x017AAA_13 ; 0A 0B 
- D 0 - I - 0x0004E4 00:84D4: 8E B6     .word _off013_0x01769E_13 ; 0C 0D 
- D 0 - I - 0x0004E6 00:84D6: B7 B6     .word _off014_0x0176C7_13 ; 0E 0F 
- D 0 - I - 0x0004E8 00:84D8: F9 B9     .word _off015_0x017A09_13 ; 10 11 objects' id's and their flags
- D 0 - I - 0x0004EA 00:84DA: 08        .byte $08   ; 12 
- D 0 - I - 0x0004EB 00:84DB: 18        .byte $18   ; 13 
- D 0 - I - 0x0004EC 00:84DC: C0        .byte $C0   ; 14 
- D 0 - I - 0x0004ED 00:84DD: 00        .byte $00   ; 15 
- D 0 - I - 0x0004EE 00:84DE: 2D        .byte $2D   ; 16 
- D 0 - I - 0x0004EF 00:84DF: 2D        .byte $2D   ; 17 
- D 0 - I - 0x0004F0 00:84E0: 32        .byte $32   ; 18 
- D 0 - I - 0x0004F1 00:84E1: 00        .byte $00   ; 19 
- D 0 - I - 0x0004F2 00:84E2: 00        .byte $00   ; 1A 
- D 0 - I - 0x0004F3 00:84E3: 00        .byte $00   ; 1B 
- D 0 - I - 0x0004F4 00:84E4: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x0004F5 00:84E5: 08        .byte con_0041_pal_08   ; 1D for ram_0041_palette
- - - - - - 0x0004F6 00:84E6: 00        .byte $00   ; 1E placeholder
- - - - - - 0x0004F7 00:84E7: 00        .byte $00   ; 1F placeholder



; 14 round 9-1
- D 0 - I - 0x0004F8 00:84E8: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x0004F9 00:84E9: 32        .byte con_chr_bank + $32   ; 01 sprites
- D 0 - I - 0x0004FA 00:84EA: E8        .byte con_chr_bank + $68 + $80   ; 02 background + flag
- D 0 - I - 0x0004FB 00:84EB: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x0004FC 00:84EC: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x0004FE 00:84EE: E9 B5     .word _off010_0x00B5F9_14 ; 06 07 blocks data?
- D 0 - I - 0x000500 00:84F0: FB B4     .word _off011_0x00B50B_14 ; 08 09
- D 0 - I - 0x000502 00:84F2: D8 82     .word _off012_0x0142E8_14 ; 0A 0B 
- D 0 - I - 0x000504 00:84F4: A1 B5     .word _off013_0x00B5B1_14 ; 0C 0D 
- D 0 - I - 0x000506 00:84F6: E9 B5     .word _off014_0x00B5F9_14 ; 0E 0F 
- D 0 - I - 0x000508 00:84F8: EB BB     .word _off015_0x00BBFB_14 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00050A 00:84FA: 08        .byte $08   ; 12 
- D 0 - I - 0x00050B 00:84FB: 10        .byte $10   ; 13 
- D 0 - I - 0x00050C 00:84FC: C0        .byte $C0   ; 14 
- D 0 - I - 0x00050D 00:84FD: 00        .byte $00   ; 15 
- D 0 - I - 0x00050E 00:84FE: 02        .byte $02   ; 16 
- D 0 - I - 0x00050F 00:84FF: 0A        .byte $0A   ; 17 
- D 0 - I - 0x000510 00:8500: 32        .byte $32   ; 18 
- D 0 - I - 0x000511 00:8501: 00        .byte $00   ; 19 
- D 0 - I - 0x000512 00:8502: 0F        .byte $0F   ; 1A 
- D 0 - I - 0x000513 00:8503: 00        .byte $00   ; 1B 
- D 0 - I - 0x000514 00:8504: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000515 00:8505: 09        .byte con_0041_pal_09   ; 1D for ram_0041_palette
- - - - - - 0x000516 00:8506: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000517 00:8507: 00        .byte $00   ; 1F placeholder



; 15 round 9-2
- D 0 - I - 0x000518 00:8508: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000519 00:8509: 32        .byte con_chr_bank + $32   ; 01 sprites
- D 0 - I - 0x00051A 00:850A: E8        .byte con_chr_bank + $68 + $80   ; 02 background + flag
- D 0 - I - 0x00051B 00:850B: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x00051C 00:850C: 00 02     .word $0200 ; 04 05 offset for next round data?
- D 0 - I - 0x00051E 00:850E: E9 B5     .word _off010_0x00B5F9_15 ; 06 07 blocks data?
- D 0 - I - 0x000520 00:8510: FB B4     .word _off011_0x00B50B_15 ; 08 09
- D 0 - I - 0x000522 00:8512: D8 82     .word _off012_0x0142E8_15 ; 0A 0B 
- D 0 - I - 0x000524 00:8514: A1 B5     .word _off013_0x00B5B1_15 ; 0C 0D 
- D 0 - I - 0x000526 00:8516: E9 B5     .word _off014_0x00B5F9_15 ; 0E 0F 
- D 0 - I - 0x000528 00:8518: EB BB     .word _off015_0x00BBFB_15 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00052A 00:851A: 08        .byte $08   ; 12 
- D 0 - I - 0x00052B 00:851B: 10        .byte $10   ; 13 
- D 0 - I - 0x00052C 00:851C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00052D 00:851D: 00        .byte $00   ; 15 
- D 0 - I - 0x00052E 00:851E: 02        .byte $02   ; 16 
- D 0 - I - 0x00052F 00:851F: 0A        .byte $0A   ; 17 
- D 0 - I - 0x000530 00:8520: 32        .byte $32   ; 18 
- D 0 - I - 0x000531 00:8521: 00        .byte $00   ; 19 
- D 0 - I - 0x000532 00:8522: 0F        .byte $0F   ; 1A 
- D 0 - I - 0x000533 00:8523: 00        .byte $00   ; 1B 
- D 0 - I - 0x000534 00:8524: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000535 00:8525: 09        .byte con_0041_pal_09   ; 1D for ram_0041_palette
- - - - - - 0x000536 00:8526: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000537 00:8527: 00        .byte $00   ; 1F placeholder



; 16 round 9-3
- D 0 - I - 0x000538 00:8528: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000539 00:8529: 32        .byte con_chr_bank + $32   ; 01 sprites
- D 0 - I - 0x00053A 00:852A: E8        .byte con_chr_bank + $68 + $80   ; 02 background + flag
- D 0 - I - 0x00053B 00:852B: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x00053C 00:852C: 00 04     .word $0400 ; 04 05 offset for next round data?
- D 0 - I - 0x00053E 00:852E: E9 B5     .word _off010_0x00B5F9_16 ; 06 07 blocks data?
- D 0 - I - 0x000540 00:8530: FB B4     .word _off011_0x00B50B_16 ; 08 09
- D 0 - I - 0x000542 00:8532: D8 82     .word _off012_0x0142E8_16 ; 0A 0B 
- D 0 - I - 0x000544 00:8534: A1 B5     .word _off013_0x00B5B1_16 ; 0C 0D 
- D 0 - I - 0x000546 00:8536: E9 B5     .word _off014_0x00B5F9_16 ; 0E 0F 
- D 0 - I - 0x000548 00:8538: EB BB     .word _off015_0x00BBFB_16 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00054A 00:853A: 08        .byte $08   ; 12 
- D 0 - I - 0x00054B 00:853B: 0C        .byte $0C   ; 13 
- D 0 - I - 0x00054C 00:853C: C0        .byte $C0   ; 14 
- D 0 - I - 0x00054D 00:853D: 00        .byte $00   ; 15 
- D 0 - I - 0x00054E 00:853E: 02        .byte $02   ; 16 
- D 0 - I - 0x00054F 00:853F: 0A        .byte $0A   ; 17 
- D 0 - I - 0x000550 00:8540: 32        .byte $32   ; 18 
- D 0 - I - 0x000551 00:8541: 00        .byte $00   ; 19 
- D 0 - I - 0x000552 00:8542: 32        .byte $32   ; 1A 
- D 0 - I - 0x000553 00:8543: 00        .byte $00   ; 1B 
- D 0 - I - 0x000554 00:8544: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000555 00:8545: 09        .byte con_0041_pal_09   ; 1D for ram_0041_palette
- - - - - - 0x000556 00:8546: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000557 00:8547: 00        .byte $00   ; 1F placeholder



; 17 the end
- D 0 - I - 0x000558 00:8548: 10        .byte con_chr_bank + $10   ; 00 sprites
- D 0 - I - 0x000559 00:8549: 12        .byte con_chr_bank + $12   ; 01 sprites
- D 0 - I - 0x00055A 00:854A: 48        .byte con_chr_bank + $48   ; 02 background + flag
- D 0 - I - 0x00055B 00:854B: 04        .byte con_prg_bank + $04   ; 03 bank for most of the data?
- D 0 - I - 0x00055C 00:854C: 00 00     .word $0000 ; 04 05 offset for next round data?
- D 0 - I - 0x00055E 00:854E: 95 BD     .word _off010_0x00BDA5_17 ; 06 07 blocks data?
- D 0 - I - 0x000560 00:8550: 7D BD     .word _off011_0x00BD8D_17 ; 08 09
- D 0 - I - 0x000562 00:8552: 1A BD     .word _off012_0x017D2A_17 ; 0A 0B 
- D 0 - I - 0x000564 00:8554: 95 BD     .word _off013_0x00BDA5_17 ; 0C 0D 
- D 0 - I - 0x000566 00:8556: 95 BD     .word _off014_0x00BDA5_17 ; 0E 0F 
- D 0 - I - 0x000568 00:8558: 97 BE     .word _off015_0x00BEA7_17 ; 10 11 objects' id's and their flags
- D 0 - I - 0x00056A 00:855A: 00        .byte $00   ; 12 
- D 0 - I - 0x00056B 00:855B: 01        .byte $01   ; 13 
- D 0 - I - 0x00056C 00:855C: 00        .byte $00   ; 14 
- D 0 - I - 0x00056D 00:855D: 00        .byte $00   ; 15 
- D 0 - I - 0x00056E 00:855E: 02        .byte $02   ; 16 
- D 0 - I - 0x00056F 00:855F: 2D        .byte $2D   ; 17 
- D 0 - I - 0x000570 00:8560: 32        .byte $32   ; 18 
- D 0 - I - 0x000571 00:8561: 00        .byte $00   ; 19 
- D 0 - I - 0x000572 00:8562: 01        .byte $01   ; 1A 
- D 0 - I - 0x000573 00:8563: 00        .byte $00   ; 1B 
- D 0 - I - 0x000574 00:8564: 00        .byte $00   ; 1C for ram_0040_palette
- D 0 - I - 0x000575 00:8565: 01        .byte con_0041_pal_01   ; 1D for ram_0041_palette
- - - - - - 0x000576 00:8566: 00        .byte $00   ; 1E placeholder
- - - - - - 0x000577 00:8567: 00        .byte $00   ; 1F placeholder


; bzk garbage
- - - - - - 0x000578 00:8568: 4C 71 85  JMP loc_8571_turn_off_music_and_sfx


; bzk garbage
- - - - - - 0x00057B 00:856B: 4C DE 85  JMP loc_85DE_play_sound


; bzk garbage
- - - - - - 0x00057E 00:856E: 4C 18 86  JMP loc_8618



loc_8571_turn_off_music_and_sfx:
sub_0x000581_turn_off_music_and_sfx:
C - - - - - 0x000581 00:8571: A9 0F     LDA #$0F
C - - - - - 0x000583 00:8573: 8D 15 40  STA $4015
C - - - - - 0x000586 00:8576: 8D 86 05  STA ram_for_4015
C - - - - - 0x000589 00:8579: A9 30     LDA #$30
C - - - - - 0x00058B 00:857B: 8D 00 40  STA $4000
C - - - - - 0x00058E 00:857E: 8D 04 40  STA $4004
C - - - - - 0x000591 00:8581: 8D 0C 40  STA $400C
C - - - - - 0x000594 00:8584: A9 00     LDA #$00
C - - - - - 0x000596 00:8586: 8D 08 40  STA $4008
C - - - - - 0x000599 00:8589: 8D 01 40  STA $4001
C - - - - - 0x00059C 00:858C: 8D 05 40  STA $4005
C - - - - - 0x00059F 00:858F: A2 13     LDX #$13
C - - - - - 0x0005A1 00:8591: A9 00     LDA #$00
bra_8593_loop:
C - - - - - 0x0005A3 00:8593: 9D 62 05  STA ram_0562,X
C - - - - - 0x0005A6 00:8596: CA        DEX
C - - - - - 0x0005A7 00:8597: 10 FA     BPL bra_8593_loop
; A = 00
C - - - - - 0x0005A9 00:8599: A2 04     LDX #$04
bra_859B_loop:
C - - - - - 0x0005AB 00:859B: 9D 76 05  STA ram_0576,X
C - - - - - 0x0005AE 00:859E: 9D 7B 05  STA ram_057B,X
C - - - - - 0x0005B1 00:85A1: CA        DEX
C - - - - - 0x0005B2 00:85A2: 10 F7     BPL bra_859B_loop
; A = 00
C - - - - - 0x0005B4 00:85A4: 8D 39 04  STA ram_0439_sfx
C - - - - - 0x0005B7 00:85A7: 8D 3C 04  STA ram_043C_music_config
C - - - - - 0x0005BA 00:85AA: 8D 3E 04  STA ram_043E
C - - - - - 0x0005BD 00:85AD: 8D 3D 04  STA ram_043D
C - - - - - 0x0005C0 00:85B0: 8D 44 04  STA ram_0444
C - - - - - 0x0005C3 00:85B3: 8D 45 04  STA ram_0445
C - - - - - 0x0005C6 00:85B6: 8D 46 04  STA ram_0446
C - - - - - 0x0005C9 00:85B9: 8D 41 04  STA ram_0441
C - - - - - 0x0005CC 00:85BC: 8D 42 04  STA ram_0442
C - - - - - 0x0005CF 00:85BF: 8D 43 04  STA ram_0443
C - - - - - 0x0005D2 00:85C2: 8D 8D 05  STA ram_058D
C - - - - - 0x0005D5 00:85C5: 8D 8E 05  STA ram_058E
C - - - - - 0x0005D8 00:85C8: 8D 40 04  STA ram_0440
C - - - - - 0x0005DB 00:85CB: 8D 8A 05  STA ram_058A
C - - - - - 0x0005DE 00:85CE: A9 10     LDA #$10
C - - - - - 0x0005E0 00:85D0: 8D 85 05  STA ram_0585
C - - - - - 0x0005E3 00:85D3: 8D 8B 05  STA ram_058B
C - - - - - 0x0005E6 00:85D6: A9 20     LDA #con_music_disable
C - - - - - 0x0005E8 00:85D8: 8D 3A 04  STA ram_music
C - - - - - 0x0005EB 00:85DB: 4C A5 92  JMP loc_92A5



loc_85DE_play_sound:
sub_0x0005EE_play_sound:
C - - - - - 0x0005EE 00:85DE: C9 80     CMP #$80
C - - - - - 0x0005F0 00:85E0: B0 30     BCS bra_8612_80_FF
C - - - - - 0x0005F2 00:85E2: C9 30     CMP #$30
C - - - - - 0x0005F4 00:85E4: B0 08     BCS bra_85EE_30_7F
C - - - - - 0x0005F6 00:85E6: C9 20     CMP #$20
C - - - - - 0x0005F8 00:85E8: 90 08     BCC bra_85F2_00_1F
; 20-2F
C - - - - - 0x0005FA 00:85EA: 8D 3A 04  STA ram_music
C - - - - - 0x0005FD 00:85ED: 60        RTS
bra_85EE_30_7F:
- - - - - - 0x0005FE 00:85EE: 8D 3B 04  STA ram_043B_sound
- - - - - - 0x000601 00:85F1: 60        RTS
bra_85F2_00_1F:
C - - - - - 0x000602 00:85F2: 85 FC     STA ram_sfx
C - - - - - 0x000604 00:85F4: 8A        TXA
C - - - - - 0x000605 00:85F5: 48        PHA
C - - - - - 0x000606 00:85F6: A6 FC     LDX ram_sfx
C - - - - - 0x000608 00:85F8: BD 86 92  LDA tbl_9286,X
C - - - - - 0x00060B 00:85FB: 85 FB     STA ram_00FB
C - - - - - 0x00060D 00:85FD: AD 39 04  LDA ram_0439_sfx
C - - - - - 0x000610 00:8600: 29 7F     AND #$7F
C - - - - - 0x000612 00:8602: AA        TAX
C - - - - - 0x000613 00:8603: BD 86 92  LDA tbl_9286,X
C - - - - - 0x000616 00:8606: C5 FB     CMP ram_00FB
C - - - - - 0x000618 00:8608: 90 05     BCC bra_860F
C - - - - - 0x00061A 00:860A: A5 FC     LDA ram_sfx
C - - - - - 0x00061C 00:860C: 8D 39 04  STA ram_0439_sfx
bra_860F:
C - - - - - 0x00061F 00:860F: 68        PLA
C - - - - - 0x000620 00:8610: AA        TAX
C - - - - - 0x000621 00:8611: 60        RTS
bra_8612_80_FF:
C - - - - - 0x000622 00:8612: 8D 3C 04  STA ram_043C_music_config
C - - - - - 0x000625 00:8615: 4C 78 8C  JMP loc_8C78_music_config



loc_8618:
sub_0x000628_update_sound_engine:
C - - - - - 0x000628 00:8618: AD 8D 05  LDA ram_058D
C - - - - - 0x00062B 00:861B: D0 15     BNE bra_8632_RTS
C - - - - - 0x00062D 00:861D: EE 8D 05  INC ram_058D
C - - - - - 0x000630 00:8620: EE 8E 05  INC ram_058E
C - - - - - 0x000633 00:8623: 20 33 86  JSR sub_8633_prepare_music_data
C - - - - - 0x000636 00:8626: 20 B8 92  JSR sub_92B8
C - - - - - 0x000639 00:8629: 20 8E 89  JSR sub_898E
C - - - - - 0x00063C 00:862C: 20 92 8B  JSR sub_8B92
C - - - - - 0x00063F 00:862F: CE 8D 05  DEC ram_058D
bra_8632_RTS:
C - - - - - 0x000642 00:8632: 60        RTS



sub_8633_prepare_music_data:
C - - - - - 0x000643 00:8633: AD 3A 04  LDA ram_music
C - - - - - 0x000646 00:8636: 10 03     BPL bra_863B
; bzk optimize, JMP to 0x0006E4
C - - - - - 0x000648 00:8638: 4C CF 86  JMP loc_86CF_music_config
bra_863B:
C - - - - - 0x00064B 00:863B: 38        SEC
C - - - - - 0x00064C 00:863C: E9 20     SBC #$20
C - - - - - 0x00064E 00:863E: 85 F0     STA ram_00F0
; * 03
C - - - - - 0x000650 00:8640: 0A        ASL
C - - - - - 0x000651 00:8641: 18        CLC
C - - - - - 0x000652 00:8642: 65 F0     ADC ram_00F0
C - - - - - 0x000654 00:8644: AA        TAX
C - - - - - 0x000655 00:8645: BD 16 A0  LDA tbl_A016_music_data,X
C - - - - - 0x000658 00:8648: 8D 38 04  STA ram_0438
C - - - - - 0x00065B 00:864B: BD 17 A0  LDA tbl_A016_music_data + $01,X
C - - - - - 0x00065E 00:864E: 85 F0     STA ram_00F0
C - - - - - 0x000660 00:8650: BD 18 A0  LDA tbl_A016_music_data + $02,X
C - - - - - 0x000663 00:8653: 85 F1     STA ram_00F1
C - - - - - 0x000665 00:8655: A0 00     LDY #$00
C - - - - - 0x000667 00:8657: A2 00     LDX #$00
bra_8659_loop:
C - - - - - 0x000669 00:8659: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x00066B 00:865B: 9D 47 04  STA ram_0447,X
C - - - - - 0x00066E 00:865E: C8        INY
C - - - - - 0x00066F 00:865F: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000671 00:8661: 9D 48 04  STA ram_0448,X
C - - - - - 0x000674 00:8664: C8        INY
C - - - - - 0x000675 00:8665: 1D 47 04  ORA ram_0447,X
C - - - - - 0x000678 00:8668: D0 0A     BNE bra_8674_skip
; if 0000 pointer
C - - - - - 0x00067A 00:866A: A9 50     LDA #< tbl_A050_channel_04
C - - - - - 0x00067C 00:866C: 9D 47 04  STA ram_0447,X
C - - - - - 0x00067F 00:866F: A9 A0     LDA #> tbl_A050_channel_04
C - - - - - 0x000681 00:8671: 9D 48 04  STA ram_0448,X
bra_8674_skip:
C - - - - - 0x000684 00:8674: E8        INX
C - - - - - 0x000685 00:8675: E8        INX
C - - - - - 0x000686 00:8676: E0 0A     CPX #$0A
C - - - - - 0x000688 00:8678: 90 DF     BCC bra_8659_loop
C - - - - - 0x00068A 00:867A: A2 00     LDX #$00
C - - - - - 0x00068C 00:867C: A0 00     LDY #$00
bra_867E_loop:
C - - - - - 0x00068E 00:867E: BD 47 04  LDA ram_0447,X
C - - - - - 0x000691 00:8681: 99 26 05  STA ram_0526,Y
C - - - - - 0x000694 00:8684: BD 48 04  LDA ram_0448,X
C - - - - - 0x000697 00:8687: 99 2B 05  STA ram_052B,Y
C - - - - - 0x00069A 00:868A: E8        INX
C - - - - - 0x00069B 00:868B: E8        INX
C - - - - - 0x00069C 00:868C: C8        INY
C - - - - - 0x00069D 00:868D: C0 05     CPY #$05
C - - - - - 0x00069F 00:868F: 90 ED     BCC bra_867E_loop
C - - - - - 0x0006A1 00:8691: AD 3A 04  LDA ram_music
C - - - - - 0x0006A4 00:8694: 8D 3E 04  STA ram_043E
C - - - - - 0x0006A7 00:8697: AD 8B 05  LDA ram_058B
C - - - - - 0x0006AA 00:869A: 8D 85 05  STA ram_0585
C - - - - - 0x0006AD 00:869D: A9 00     LDA #$00
C - - - - - 0x0006AF 00:869F: 8D 8A 05  STA ram_058A
C - - - - - 0x0006B2 00:86A2: A0 04     LDY #$04
bra_86A4_loop:
C - - - - - 0x0006B4 00:86A4: A9 00     LDA #$00
C - - - - - 0x0006B6 00:86A6: 99 60 04  STA ram_0460,Y
C - - - - - 0x0006B9 00:86A9: 99 83 04  STA ram_0483,Y
C - - - - - 0x0006BC 00:86AC: 99 74 04  STA ram_0474,Y
C - - - - - 0x0006BF 00:86AF: 99 C9 04  STA ram_04C9,Y
C - - - - - 0x0006C2 00:86B2: 99 CE 04  STA ram_04CE,Y
C - - - - - 0x0006C5 00:86B5: 99 88 04  STA ram_0488,Y
C - - - - - 0x0006C8 00:86B8: 99 00 05  STA ram_0500,Y
C - - - - - 0x0006CB 00:86BB: 99 6A 04  STA ram_046A,Y
C - - - - - 0x0006CE 00:86BE: 99 1B 05  STA ram_051B,Y
C - - - - - 0x0006D1 00:86C1: 99 05 05  STA ram_0505,Y
C - - - - - 0x0006D4 00:86C4: 99 16 05  STA ram_0516,Y
C - - - - - 0x0006D7 00:86C7: A9 08     LDA #$08
C - - - - - 0x0006D9 00:86C9: 99 FB 04  STA ram_04FB,Y
C - - - - - 0x0006DC 00:86CC: 88        DEY
C - - - - - 0x0006DD 00:86CD: 10 D5     BPL bra_86A4_loop
loc_86CF_music_config:
C D 0 - - - 0x0006DF 00:86CF: AD 3A 04  LDA ram_music
C - - - - - 0x0006E2 00:86D2: 10 07     BPL bra_86DB
C - - - - - 0x0006E4 00:86D4: 29 7F     AND #$7F
C - - - - - 0x0006E6 00:86D6: C9 20     CMP #con_music_disable
C - - - - - 0x0006E8 00:86D8: D0 09     BNE bra_86E3
C - - - - - 0x0006EA 00:86DA: 60        RTS
bra_86DB:
C - - - - - 0x0006EB 00:86DB: AD 3A 04  LDA ram_music
C - - - - - 0x0006EE 00:86DE: 09 80     ORA #$80
C - - - - - 0x0006F0 00:86E0: 8D 3A 04  STA ram_music
bra_86E3:
C - - - - - 0x0006F3 00:86E3: A2 00     LDX #$00
C - - - - - 0x0006F5 00:86E5: 8E 8C 05  STX ram_058C
bra_86E8_loop:
C - - - - - 0x0006F8 00:86E8: BD 47 04  LDA ram_0447,X
C - - - - - 0x0006FB 00:86EB: 85 EC     STA ram_00EC
C - - - - - 0x0006FD 00:86ED: BD 48 04  LDA ram_0448,X
C - - - - - 0x000700 00:86F0: F0 1A     BEQ bra_870C
C - - - - - 0x000702 00:86F2: 85 ED     STA ram_00ED
C - - - - - 0x000704 00:86F4: 8A        TXA
C - - - - - 0x000705 00:86F5: 48        PHA
C - - - - - 0x000706 00:86F6: 4A        LSR
C - - - - - 0x000707 00:86F7: 8D 36 04  STA ram_0436
C - - - - - 0x00070A 00:86FA: 20 69 8D  JSR sub_8D69
C - - - - - 0x00070D 00:86FD: 68        PLA
C - - - - - 0x00070E 00:86FE: AA        TAX
C - - - - - 0x00070F 00:86FF: A5 EC     LDA ram_00EC
C - - - - - 0x000711 00:8701: 9D 47 04  STA ram_0447,X
C - - - - - 0x000714 00:8704: A5 ED     LDA ram_00ED
C - - - - - 0x000716 00:8706: 9D 48 04  STA ram_0448,X
C - - - - - 0x000719 00:8709: EE 8C 05  INC ram_058C
bra_870C:
C - - - - - 0x00071C 00:870C: E8        INX
C - - - - - 0x00071D 00:870D: E8        INX
C - - - - - 0x00071E 00:870E: E0 0A     CPX #$0A
C - - - - - 0x000720 00:8710: 90 D6     BCC bra_86E8_loop
C - - - - - 0x000722 00:8712: AD 8C 05  LDA ram_058C
C - - - - - 0x000725 00:8715: F0 1C     BEQ bra_8733
C - - - - - 0x000727 00:8717: AD 8A 05  LDA ram_058A
C - - - - - 0x00072A 00:871A: F0 1C     BEQ bra_8738_RTS
- - - - - - 0x00072C 00:871C: AD 89 05  LDA ram_0589
- - - - - - 0x00072F 00:871F: 18        CLC
- - - - - - 0x000730 00:8720: 6D 8A 05  ADC ram_058A
- - - - - - 0x000733 00:8723: 8D 89 05  STA ram_0589
- - - - - - 0x000736 00:8726: 90 10     BCC bra_8738_RTS
- - - - - - 0x000738 00:8728: CE 85 05  DEC ram_0585
- - - - - - 0x00073B 00:872B: 10 0B     BPL bra_8738_RTS
- - - - - - 0x00073D 00:872D: AD 8B 05  LDA ram_058B
- - - - - - 0x000740 00:8730: 8D 85 05  STA ram_0585
bra_8733:
C - - - - - 0x000743 00:8733: A9 20     LDA #con_music_disable
C - - - - - 0x000745 00:8735: 8D 3A 04  STA ram_music
bra_8738_RTS:
C - - - - - 0x000748 00:8738: 60        RTS



sub_8739:
C - - - - - 0x000749 00:8739: BD C9 04  LDA ram_04C9,X
C - - - - - 0x00074C 00:873C: D0 2A     BNE bra_8768
C - - - - - 0x00074E 00:873E: BD 74 04  LDA ram_0474,X
C - - - - - 0x000751 00:8741: 0A        ASL
C - - - - - 0x000752 00:8742: A8        TAY
C - - - - - 0x000753 00:8743: B9 85 9B  LDA tbl_9B85,Y
C - - - - - 0x000756 00:8746: 9D 53 05  STA ram_0553,X
C - - - - - 0x000759 00:8749: B9 86 9B  LDA tbl_9B85 + $01,Y
C - - - - - 0x00075C 00:874C: 9D 58 05  STA ram_0558,X
C - - - - - 0x00075F 00:874F: A9 FF     LDA #$FF
C - - - - - 0x000761 00:8751: 9D 5D 05  STA ram_055D,X
C - - - - - 0x000764 00:8754: A9 00     LDA #$00
C - - - - - 0x000766 00:8756: 9D 3A 05  STA ram_053A,X
C - - - - - 0x000769 00:8759: 9D 3F 05  STA ram_053F,X
C - - - - - 0x00076C 00:875C: 9D 4E 05  STA ram_054E,X
C - - - - - 0x00076F 00:875F: 9D 30 05  STA ram_0530,X
C - - - - - 0x000772 00:8762: 9D 35 05  STA ram_0535,X
C - - - - - 0x000775 00:8765: 20 AC 88  JSR sub_88AC
bra_8768:
sub_8768:
C - - - - - 0x000778 00:8768: E0 04     CPX #$04
C - - - - - 0x00077A 00:876A: F0 07     BEQ bra_8773_RTS
C - - - - - 0x00077C 00:876C: BD 51 04  LDA ram_0451,X
C - - - - - 0x00077F 00:876F: 29 F0     AND #$F0
C - - - - - 0x000781 00:8771: D0 01     BNE bra_8774
bra_8773_RTS:
C - - - - - 0x000783 00:8773: 60        RTS
bra_8774:
C - - - - - 0x000784 00:8774: E0 03     CPX #$03
C - - - - - 0x000786 00:8776: D0 05     BNE bra_877D
C - - - - - 0x000788 00:8778: AD 40 04  LDA ram_0440
C - - - - - 0x00078B 00:877B: D0 F6     BNE bra_8773_RTS
bra_877D:
C - - - - - 0x00078D 00:877D: BD 00 05  LDA ram_0500,X
; * 04
C - - - - - 0x000790 00:8780: 0A        ASL
C - - - - - 0x000791 00:8781: 0A        ASL
C - - - - - 0x000792 00:8782: 85 F8     STA ram_00F8
C - - - - - 0x000794 00:8784: BD 49 05  LDA ram_0549,X
C - - - - - 0x000797 00:8787: 38        SEC
C - - - - - 0x000798 00:8788: E5 F8     SBC ram_00F8
C - - - - - 0x00079A 00:878A: B0 02     BCS bra_878E
C - - - - - 0x00079C 00:878C: A9 00     LDA #$00
bra_878E:
; / 08
C - - - - - 0x00079E 00:878E: 4A        LSR
C - - - - - 0x00079F 00:878F: 4A        LSR
C - - - - - 0x0007A0 00:8790: 4A        LSR
C - - - - - 0x0007A1 00:8791: 29 0F     AND #$0F
C - - - - - 0x0007A3 00:8793: 85 F8     STA ram_00F8
C - - - - - 0x0007A5 00:8795: AD 85 05  LDA ram_0585
C - - - - - 0x0007A8 00:8798: C9 10     CMP #$10
C - - - - - 0x0007AA 00:879A: B0 2E     BCS bra_87CA
; * 10
C - - - - - 0x0007AC 00:879C: 0A        ASL
C - - - - - 0x0007AD 00:879D: 0A        ASL
C - - - - - 0x0007AE 00:879E: 0A        ASL
C - - - - - 0x0007AF 00:879F: 0A        ASL
C - - - - - 0x0007B0 00:87A0: 85 F9     STA ram_00F9
C - - - - - 0x0007B2 00:87A2: A5 F8     LDA ram_00F8
C - - - - - 0x0007B4 00:87A4: 85 F1     STA ram_00F1
C - - - - - 0x0007B6 00:87A6: A9 00     LDA #$00
C - - - - - 0x0007B8 00:87A8: 85 F0     STA ram_00F0
C - - - - - 0x0007BA 00:87AA: 85 F2     STA ram_00F2
C - - - - - 0x0007BC 00:87AC: 85 F3     STA ram_00F3
C - - - - - 0x0007BE 00:87AE: A0 04     LDY #$04
bra_87B0_loop:
C - - - - - 0x0007C0 00:87B0: 46 F1     LSR ram_00F1
C - - - - - 0x0007C2 00:87B2: 66 F0     ROR ram_00F0
C - - - - - 0x0007C4 00:87B4: 06 F9     ASL ram_00F9
C - - - - - 0x0007C6 00:87B6: 90 0D     BCC bra_87C5
C - - - - - 0x0007C8 00:87B8: A5 F2     LDA ram_00F2
C - - - - - 0x0007CA 00:87BA: 18        CLC
C - - - - - 0x0007CB 00:87BB: 65 F0     ADC ram_00F0
C - - - - - 0x0007CD 00:87BD: 85 F2     STA ram_00F2
C - - - - - 0x0007CF 00:87BF: A5 F3     LDA ram_00F3
C - - - - - 0x0007D1 00:87C1: 65 F1     ADC ram_00F1
C - - - - - 0x0007D3 00:87C3: 85 F3     STA ram_00F3
bra_87C5:
C - - - - - 0x0007D5 00:87C5: 88        DEY
C - - - - - 0x0007D6 00:87C6: D0 E8     BNE bra_87B0_loop
C - - - - - 0x0007D8 00:87C8: 85 F8     STA ram_00F8
bra_87CA:
C - - - - - 0x0007DA 00:87CA: BC 5D 05  LDY ram_055D,X
C - - - - - 0x0007DD 00:87CD: 30 08     BMI bra_87D7
- - - - - - 0x0007DF 00:87CF: A5 F8     LDA ram_00F8
- - - - - - 0x0007E1 00:87D1: 19 5B 88  ORA tbl_885B,Y
- - - - - - 0x0007E4 00:87D4: 4C DC 87  JMP loc_87DC
bra_87D7:
C - - - - - 0x0007E7 00:87D7: A5 F8     LDA ram_00F8
C - - - - - 0x0007E9 00:87D9: 1D 6A 04  ORA ram_046A,X
loc_87DC:
C - - - - - 0x0007EC 00:87DC: 48        PHA
C - - - - - 0x0007ED 00:87DD: 8A        TXA
; * 04
C - - - - - 0x0007EE 00:87DE: 0A        ASL
C - - - - - 0x0007EF 00:87DF: 0A        ASL
C - - - - - 0x0007F0 00:87E0: A8        TAY
C - - - - - 0x0007F1 00:87E1: 68        PLA
C - - - - - 0x0007F2 00:87E2: E0 02     CPX #$02
C - - - - - 0x0007F4 00:87E4: F0 15     BEQ bra_87FB
C - - - - - 0x0007F6 00:87E6: 09 30     ORA #$30
C - - - - - 0x0007F8 00:87E8: D9 62 05  CMP ram_0562,Y
C - - - - - 0x0007FB 00:87EB: F0 2F     BEQ bra_881C
C - - - - - 0x0007FD 00:87ED: 99 62 05  STA ram_0562,Y
C - - - - - 0x000800 00:87F0: BD 76 05  LDA ram_0576,X
C - - - - - 0x000803 00:87F3: 09 01     ORA #$01
C - - - - - 0x000805 00:87F5: 9D 76 05  STA ram_0576,X
C - - - - - 0x000808 00:87F8: 4C 1C 88  JMP loc_881C
bra_87FB:
C - - - - - 0x00080B 00:87FB: BD 76 05  LDA ram_0576,X
C - - - - - 0x00080E 00:87FE: 09 01     ORA #$01
C - - - - - 0x000810 00:8800: 9D 76 05  STA ram_0576,X
C - - - - - 0x000813 00:8803: AD 85 05  LDA ram_0585
C - - - - - 0x000816 00:8806: C9 06     CMP #$06
C - - - - - 0x000818 00:8808: 90 05     BCC bra_880F
C - - - - - 0x00081A 00:880A: BD 49 05  LDA ram_0549,X
C - - - - - 0x00081D 00:880D: D0 08     BNE bra_8817
bra_880F:
C - - - - - 0x00081F 00:880F: A9 00     LDA #$00
C - - - - - 0x000821 00:8811: 99 62 05  STA ram_0562,Y
C - - - - - 0x000824 00:8814: 4C 1C 88  JMP loc_881C
bra_8817:
C - - - - - 0x000827 00:8817: A9 FF     LDA #$FF
C - - - - - 0x000829 00:8819: 99 62 05  STA ram_0562,Y
bra_881C:
loc_881C:
C D 0 - - - 0x00082C 00:881C: BD 65 04  LDA ram_0465,X
C - - - - - 0x00082F 00:881F: D0 1F     BNE bra_8840
C - - - - - 0x000831 00:8821: E0 02     CPX #$02
C - - - - - 0x000833 00:8823: F0 10     BEQ bra_8835
C - - - - - 0x000835 00:8825: BD 30 05  LDA ram_0530,X
C - - - - - 0x000838 00:8828: 85 F8     STA ram_00F8
C - - - - - 0x00083A 00:882A: BD 35 05  LDA ram_0535,X
C - - - - - 0x00083D 00:882D: 85 F9     STA ram_00F9
C - - - - - 0x00083F 00:882F: 20 5F 88  JSR sub_885F
C - - - - - 0x000842 00:8832: 4C 4D 88  JMP loc_884D
bra_8835:
C - - - - - 0x000845 00:8835: A9 00     LDA #$00
C - - - - - 0x000847 00:8837: 9D 44 05  STA ram_0544,X
C - - - - - 0x00084A 00:883A: 9D 49 05  STA ram_0549,X
C - - - - - 0x00084D 00:883D: 4C 4D 88  JMP loc_884D
bra_8840:
C - - - - - 0x000850 00:8840: BD 3A 05  LDA ram_053A,X
C - - - - - 0x000853 00:8843: 85 F8     STA ram_00F8
C - - - - - 0x000855 00:8845: BD 3F 05  LDA ram_053F,X
C - - - - - 0x000858 00:8848: 85 F9     STA ram_00F9
C - - - - - 0x00085A 00:884A: 20 5F 88  JSR sub_885F
loc_884D:
C D 0 - - - 0x00085D 00:884D: BD 4E 05  LDA ram_054E,X
C - - - - - 0x000860 00:8850: F0 08     BEQ bra_885A_RTS
C - - - - - 0x000862 00:8852: DE 4E 05  DEC ram_054E,X
C - - - - - 0x000865 00:8855: D0 03     BNE bra_885A_RTS
; bzk optimize, JMP
C - - - - - 0x000867 00:8857: 20 AC 88  JSR sub_88AC
bra_885A_RTS:
C - - - - - 0x00086A 00:885A: 60        RTS



tbl_885B:
- - - - - - 0x00086B 00:885B: 00        .byte $00   ; 00 
- - - - - - 0x00086C 00:885C: 40        .byte $40   ; 01 
- - - - - - 0x00086D 00:885D: 80        .byte $80   ; 02 
- - - - - - 0x00086E 00:885E: C0        .byte $C0   ; 03 



sub_885F:
C - - - - - 0x00086F 00:885F: A5 F9     LDA ram_00F9
C - - - - - 0x000871 00:8861: 30 1F     BMI bra_8882
C - - - - - 0x000873 00:8863: BD 44 05  LDA ram_0544,X
C - - - - - 0x000876 00:8866: 18        CLC
C - - - - - 0x000877 00:8867: 65 F8     ADC ram_00F8
C - - - - - 0x000879 00:8869: 9D 44 05  STA ram_0544,X
C - - - - - 0x00087C 00:886C: BD 49 05  LDA ram_0549,X
C - - - - - 0x00087F 00:886F: 65 F9     ADC ram_00F9
C - - - - - 0x000881 00:8871: 9D 49 05  STA ram_0549,X
C - - - - - 0x000884 00:8874: 90 0A     BCC bra_8880
- - - - - - 0x000886 00:8876: A9 00     LDA #$00
- - - - - - 0x000888 00:8878: 9D 44 05  STA ram_0544,X
- - - - - - 0x00088B 00:887B: A9 FC     LDA #$FC
- - - - - - 0x00088D 00:887D: 9D 49 05  STA ram_0549,X
bra_8880:
C - - - - - 0x000890 00:8880: 18        CLC
C - - - - - 0x000891 00:8881: 60        RTS
bra_8882:
C - - - - - 0x000892 00:8882: A9 00     LDA #$00
C - - - - - 0x000894 00:8884: 38        SEC
C - - - - - 0x000895 00:8885: E5 F8     SBC ram_00F8
C - - - - - 0x000897 00:8887: 85 F8     STA ram_00F8
C - - - - - 0x000899 00:8889: A9 00     LDA #$00
C - - - - - 0x00089B 00:888B: E5 F9     SBC ram_00F9
C - - - - - 0x00089D 00:888D: 85 F9     STA ram_00F9
C - - - - - 0x00089F 00:888F: BD 44 05  LDA ram_0544,X
C - - - - - 0x0008A2 00:8892: 38        SEC
C - - - - - 0x0008A3 00:8893: E5 F8     SBC ram_00F8
C - - - - - 0x0008A5 00:8895: 9D 44 05  STA ram_0544,X
C - - - - - 0x0008A8 00:8898: BD 49 05  LDA ram_0549,X
C - - - - - 0x0008AB 00:889B: E5 F9     SBC ram_00F9
C - - - - - 0x0008AD 00:889D: 9D 49 05  STA ram_0549,X
C - - - - - 0x0008B0 00:88A0: B0 DE     BCS bra_8880
- - - - - - 0x0008B2 00:88A2: A9 00     LDA #$00
- - - - - - 0x0008B4 00:88A4: 9D 44 05  STA ram_0544,X
- - - - - - 0x0008B7 00:88A7: 9D 49 05  STA ram_0549,X
- - - - - - 0x0008BA 00:88AA: 38        SEC
- - - - - - 0x0008BB 00:88AB: 60        RTS



sub_88AC:
C - - - - - 0x0008BC 00:88AC: BD 53 05  LDA ram_0553,X
C - - - - - 0x0008BF 00:88AF: 85 F4     STA ram_00F4
C - - - - - 0x0008C1 00:88B1: BD 58 05  LDA ram_0558,X
C - - - - - 0x0008C4 00:88B4: 85 F5     STA ram_00F5
loc_88B6:
C D 0 - - - 0x0008C6 00:88B6: A0 00     LDY #$00
C - - - - - 0x0008C8 00:88B8: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0008CA 00:88BA: 48        PHA
C - - - - - 0x0008CB 00:88BB: E6 F4     INC ram_00F4
C - - - - - 0x0008CD 00:88BD: D0 02     BNE bra_88C1_not_overflow
- - - - - - 0x0008CF 00:88BF: E6 F5     INC ram_00F5
bra_88C1_not_overflow:
C - - - - - 0x0008D1 00:88C1: 68        PLA
C - - - - - 0x0008D2 00:88C2: C9 F0     CMP #$F0
C - - - - - 0x0008D4 00:88C4: 90 18     BCC bra_88DE
; FC-FF
C - - - - - 0x0008D6 00:88C6: C9 FF     CMP #$FF
C - - - - - 0x0008D8 00:88C8: F0 32     BEQ bra_88FC_FF
; FC-FE
C - - - - - 0x0008DA 00:88CA: 49 FF     EOR #$FF
C - - - - - 0x0008DC 00:88CC: 0A        ASL
C - - - - - 0x0008DD 00:88CD: A8        TAY
C - - - - - 0x0008DE 00:88CE: B9 0A 89  LDA tbl_890A,Y
C - - - - - 0x0008E1 00:88D1: 85 F0     STA ram_00F0
C - - - - - 0x0008E3 00:88D3: B9 0B 89  LDA tbl_890A + $01,Y
C - - - - - 0x0008E6 00:88D6: 85 F1     STA ram_00F1
C - - - - - 0x0008E8 00:88D8: 20 C0 91  JSR sub_91C0_indirect_jump_00F0
C - - - - - 0x0008EB 00:88DB: 4C B6 88  JMP loc_88B6
bra_88DE:
C - - - - - 0x0008EE 00:88DE: 9D 4E 05  STA ram_054E,X
C - - - - - 0x0008F1 00:88E1: A0 00     LDY #$00
C - - - - - 0x0008F3 00:88E3: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0008F5 00:88E5: 9D 3A 05  STA ram_053A,X
C - - - - - 0x0008F8 00:88E8: C8        INY
C - - - - - 0x0008F9 00:88E9: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x0008FB 00:88EB: 9D 3F 05  STA ram_053F,X
C - - - - - 0x0008FE 00:88EE: 20 1F 89  JSR sub_891F
loc_88F1:
C - - - - - 0x000901 00:88F1: A5 F4     LDA ram_00F4
C - - - - - 0x000903 00:88F3: 9D 53 05  STA ram_0553,X
C - - - - - 0x000906 00:88F6: A5 F5     LDA ram_00F5
C - - - - - 0x000908 00:88F8: 9D 58 05  STA ram_0558,X
C - - - - - 0x00090B 00:88FB: 60        RTS
bra_88FC_FF:
ofs_000_88FC_FF:
- - - - - - 0x00090C 00:88FC: 38        SEC
- - - - - - 0x00090D 00:88FD: A5 F4     LDA ram_00F4
- - - - - - 0x00090F 00:88FF: E9 01     SBC #$01
- - - - - - 0x000911 00:8901: 85 F4     STA ram_00F4
- - - - - - 0x000913 00:8903: B0 02     BCS bra_8907
- - - - - - 0x000915 00:8905: C6 F5     DEC ram_00F5
bra_8907:
- - - - - - 0x000917 00:8907: 4C F1 88  JMP loc_88F1



tbl_890A:
- - - - - - 0x00091A 00:890A: FC 88     .word ofs_000_88FC_FF ; never used 0x0008D6
- D 0 - - - 0x00091C 00:890C: 2D 89     .word ofs_000_892D_FE
- D 0 - - - 0x00091E 00:890E: 12 89     .word ofs_000_8912_FD
- - - - - - 0x000920 00:8910: 3D 89     .word ofs_000_893D_FC



ofs_000_8912_FD:
C - - J - - 0x000922 00:8912: A0 00     LDY #$00
C - - - - - 0x000924 00:8914: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x000926 00:8916: 9D 30 05  STA ram_0530,X
C - - - - - 0x000929 00:8919: C8        INY
C - - - - - 0x00092A 00:891A: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x00092C 00:891C: 9D 35 05  STA ram_0535,X
sub_891F:
loc_891F:
C D 0 - - - 0x00092F 00:891F: A5 F4     LDA ram_00F4
C - - - - - 0x000931 00:8921: 18        CLC
C - - - - - 0x000932 00:8922: 69 02     ADC #< $0002
C - - - - - 0x000934 00:8924: 85 F4     STA ram_00F4
C - - - - - 0x000936 00:8926: A5 F5     LDA ram_00F5
C - - - - - 0x000938 00:8928: 69 00     ADC #> $0002
C - - - - - 0x00093A 00:892A: 85 F5     STA ram_00F5
C - - - - - 0x00093C 00:892C: 60        RTS



ofs_000_892D_FE:
C - - J - - 0x00093D 00:892D: A0 00     LDY #$00
C - - - - - 0x00093F 00:892F: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x000941 00:8931: 9D 44 05  STA ram_0544,X
C - - - - - 0x000944 00:8934: C8        INY
C - - - - - 0x000945 00:8935: B1 F4     LDA (ram_00F4),Y
C - - - - - 0x000947 00:8937: 9D 49 05  STA ram_0549,X
C - - - - - 0x00094A 00:893A: 4C 1F 89  JMP loc_891F



ofs_000_893D_FC:
- - - - - - 0x00094D 00:893D: A0 00     LDY #$00
- - - - - - 0x00094F 00:893F: B1 F4     LDA (ram_00F4),Y
- - - - - - 0x000951 00:8941: 9D 5D 05  STA ram_055D,X
- - - - - - 0x000954 00:8944: E6 F4     INC ram_00F4
- - - - - - 0x000956 00:8946: D0 02     BNE bra_894A_RTS
- - - - - - 0x000958 00:8948: E6 F5     INC ram_00F5
bra_894A_RTS:
- - - - - - 0x00095A 00:894A: 60        RTS



sub_894B:
C - - - - - 0x00095B 00:894B: AD 81 04  LDA ram_047E + $03
C - - - - - 0x00095E 00:894E: C9 04     CMP #$04
C - - - - - 0x000960 00:8950: 90 1C     BCC bra_896E
- - - - - - 0x000962 00:8952: AD 37 04  LDA ram_0437
; / 10
- - - - - - 0x000965 00:8955: 4A        LSR
- - - - - - 0x000966 00:8956: 4A        LSR
- - - - - - 0x000967 00:8957: 4A        LSR
- - - - - - 0x000968 00:8958: 4A        LSR
- - - - - - 0x000969 00:8959: 38        SEC
- - - - - - 0x00096A 00:895A: E9 01     SBC #$01
- - - - - - 0x00096C 00:895C: 18        CLC
- - - - - - 0x00096D 00:895D: 6D 86 04  ADC ram_0486
- - - - - - 0x000970 00:8960: 29 0F     AND #$0F
- - - - - - 0x000972 00:8962: 8D 80 05  STA ram_0580
- - - - - - 0x000975 00:8965: A9 00     LDA #$00
- - - - - - 0x000977 00:8967: 8D 81 05  STA ram_0581
- - - - - - 0x00097A 00:896A: 8D 40 04  STA ram_0440
- - - - - - 0x00097D 00:896D: 60        RTS
bra_896E:
C - - - - - 0x00097E 00:896E: A9 01     LDA #$01
C - - - - - 0x000980 00:8970: 8D 40 04  STA ram_0440
C - - - - - 0x000983 00:8973: AD 37 04  LDA ram_0437
; / 08
C - - - - - 0x000986 00:8976: 4A        LSR
C - - - - - 0x000987 00:8977: 4A        LSR
C - - - - - 0x000988 00:8978: 4A        LSR
C - - - - - 0x000989 00:8979: 29 1E     AND #$1E
C - - - - - 0x00098B 00:897B: A8        TAY
C - - - - - 0x00098C 00:897C: B9 4B 9F  LDA tbl_9F4B,Y
C - - - - - 0x00098F 00:897F: 8D 41 04  STA ram_0441
C - - - - - 0x000992 00:8982: B9 4C 9F  LDA tbl_9F4B + $01,Y
C - - - - - 0x000995 00:8985: 8D 42 04  STA ram_0442
C - - - - - 0x000998 00:8988: A9 00     LDA #$00
C - - - - - 0x00099A 00:898A: 8D 43 04  STA ram_0443
C - - - - - 0x00099D 00:898D: 60        RTS



sub_898E:
C - - - - - 0x00099E 00:898E: AD 40 04  LDA ram_0440
C - - - - - 0x0009A1 00:8991: D0 01     BNE bra_8994
C - - - - - 0x0009A3 00:8993: 60        RTS
bra_8994:
C - - - - - 0x0009A4 00:8994: AD 41 04  LDA ram_0441
C - - - - - 0x0009A7 00:8997: 85 F0     STA ram_00F0
C - - - - - 0x0009A9 00:8999: AD 42 04  LDA ram_0442
C - - - - - 0x0009AC 00:899C: 85 F1     STA ram_00F1
C - - - - - 0x0009AE 00:899E: 05 F0     ORA ram_00F0
C - - - - - 0x0009B0 00:89A0: F0 4C     BEQ bra_89EE_RTS
C - - - - - 0x0009B2 00:89A2: AD 43 04  LDA ram_0443
C - - - - - 0x0009B5 00:89A5: F0 04     BEQ bra_89AB
C - - - - - 0x0009B7 00:89A7: CE 43 04  DEC ram_0443
C - - - - - 0x0009BA 00:89AA: 60        RTS
bra_89AB:
C - - - - - 0x0009BB 00:89AB: A0 00     LDY #$00
C - - - - - 0x0009BD 00:89AD: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0009BF 00:89AF: F0 3E     BEQ bra_89EF
C - - - - - 0x0009C1 00:89B1: 8D 43 04  STA ram_0443
C - - - - - 0x0009C4 00:89B4: C8        INY
C - - - - - 0x0009C5 00:89B5: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0009C7 00:89B7: 8D 6E 05  STA ram_056E
C - - - - - 0x0009CA 00:89BA: C8        INY
C - - - - - 0x0009CB 00:89BB: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0009CD 00:89BD: 8D 70 05  STA ram_0570
C - - - - - 0x0009D0 00:89C0: C8        INY
C - - - - - 0x0009D1 00:89C1: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x0009D3 00:89C3: 8D 71 05  STA ram_0571
C - - - - - 0x0009D6 00:89C6: AD 85 05  LDA ram_0585
C - - - - - 0x0009D9 00:89C9: C9 08     CMP #$08
C - - - - - 0x0009DB 00:89CB: B0 0D     BCS bra_89DA
C - - - - - 0x0009DD 00:89CD: A9 10     LDA #$10
C - - - - - 0x0009DF 00:89CF: 8D 6E 05  STA ram_056E
C - - - - - 0x0009E2 00:89D2: A9 00     LDA #$00
C - - - - - 0x0009E4 00:89D4: 8D 70 05  STA ram_0570
C - - - - - 0x0009E7 00:89D7: 8D 71 05  STA ram_0571
bra_89DA:
C - - - - - 0x0009EA 00:89DA: A9 0D     LDA #$0D
C - - - - - 0x0009EC 00:89DC: 8D 79 05  STA ram_0576 + $03
C - - - - - 0x0009EF 00:89DF: A5 F0     LDA ram_00F0
C - - - - - 0x0009F1 00:89E1: 18        CLC
C - - - - - 0x0009F2 00:89E2: 69 04     ADC #< $0004
C - - - - - 0x0009F4 00:89E4: 8D 41 04  STA ram_0441
C - - - - - 0x0009F7 00:89E7: A5 F1     LDA ram_00F1
C - - - - - 0x0009F9 00:89E9: 69 00     ADC #> $0004
C - - - - - 0x0009FB 00:89EB: 8D 42 04  STA ram_0442
bra_89EE_RTS:
C - - - - - 0x0009FE 00:89EE: 60        RTS
bra_89EF:
C - - - - - 0x0009FF 00:89EF: A9 10     LDA #$10
C - - - - - 0x000A01 00:89F1: 8D 6E 05  STA ram_056E
C - - - - - 0x000A04 00:89F4: A9 00     LDA #$00
C - - - - - 0x000A06 00:89F6: 8D 70 05  STA ram_0570
C - - - - - 0x000A09 00:89F9: 8D 71 05  STA ram_0571
C - - - - - 0x000A0C 00:89FC: 8D 41 04  STA ram_0441
C - - - - - 0x000A0F 00:89FF: 8D 42 04  STA ram_0442
C - - - - - 0x000A12 00:8A02: A9 0D     LDA #$0D
C - - - - - 0x000A14 00:8A04: 8D 79 05  STA ram_0576 + $03
C - - - - - 0x000A17 00:8A07: 60        RTS



loc_8A08:
C D 0 - - - 0x000A18 00:8A08: E0 03     CPX #$03
C - - - - - 0x000A1A 00:8A0A: B0 05     BCS bra_8A11_RTS
C - - - - - 0x000A1C 00:8A0C: BD 05 05  LDA ram_0505,X
C - - - - - 0x000A1F 00:8A0F: D0 01     BNE bra_8A12
bra_8A11_RTS:
C - - - - - 0x000A21 00:8A11: 60        RTS
bra_8A12:
C - - - - - 0x000A22 00:8A12: BD C9 04  LDA ram_04C9,X
C - - - - - 0x000A25 00:8A15: D0 1B     BNE bra_8A32
C - - - - - 0x000A27 00:8A17: BD 05 05  LDA ram_0505,X
C - - - - - 0x000A2A 00:8A1A: 9D 13 05  STA ram_0513,X
C - - - - - 0x000A2D 00:8A1D: DE 13 05  DEC ram_0513,X
bra_8A20:
C - - - - - 0x000A30 00:8A20: BD 0A 05  LDA ram_050A,X
C - - - - - 0x000A33 00:8A23: 0A        ASL
C - - - - - 0x000A34 00:8A24: A8        TAY
C - - - - - 0x000A35 00:8A25: B9 0E 9D  LDA tbl_9D0E,Y
C - - - - - 0x000A38 00:8A28: 9D 0D 05  STA ram_050D,X
C - - - - - 0x000A3B 00:8A2B: B9 0F 9D  LDA tbl_9D0E + $01,Y
C - - - - - 0x000A3E 00:8A2E: 9D 10 05  STA ram_0510,X
C - - - - - 0x000A41 00:8A31: 60        RTS
bra_8A32:
sub_8A32:
C - - - - - 0x000A42 00:8A32: BD 05 05  LDA ram_0505,X
C - - - - - 0x000A45 00:8A35: F0 DA     BEQ bra_8A11_RTS
C - - - - - 0x000A47 00:8A37: BD 13 05  LDA ram_0513,X
C - - - - - 0x000A4A 00:8A3A: F0 04     BEQ bra_8A40
C - - - - - 0x000A4C 00:8A3C: DE 13 05  DEC ram_0513,X
C - - - - - 0x000A4F 00:8A3F: 60        RTS
bra_8A40:
C - - - - - 0x000A50 00:8A40: BD 0D 05  LDA ram_050D,X
C - - - - - 0x000A53 00:8A43: 85 F0     STA ram_00F0
C - - - - - 0x000A55 00:8A45: BD 10 05  LDA ram_0510,X
C - - - - - 0x000A58 00:8A48: 85 F1     STA ram_00F1
C - - - - - 0x000A5A 00:8A4A: A0 00     LDY #$00
C - - - - - 0x000A5C 00:8A4C: 8C 83 05  STY ram_0583
C - - - - - 0x000A5F 00:8A4F: B1 F0     LDA (ram_00F0),Y
C - - - - - 0x000A61 00:8A51: C9 80     CMP #$80
C - - - - - 0x000A63 00:8A53: F0 CB     BEQ bra_8A20
C - - - - - 0x000A65 00:8A55: 90 03     BCC bra_8A5A
C - - - - - 0x000A67 00:8A57: CE 83 05  DEC ram_0583
bra_8A5A:
C - - - - - 0x000A6A 00:8A5A: 8D 82 05  STA ram_0582
C - - - - - 0x000A6D 00:8A5D: EE 84 05  INC ram_0584
C - - - - - 0x000A70 00:8A60: BD 0D 05  LDA ram_050D,X
C - - - - - 0x000A73 00:8A63: 18        CLC
C - - - - - 0x000A74 00:8A64: 69 01     ADC #< $0001
C - - - - - 0x000A76 00:8A66: 9D 0D 05  STA ram_050D,X
C - - - - - 0x000A79 00:8A69: BD 10 05  LDA ram_0510,X
C - - - - - 0x000A7C 00:8A6C: 69 00     ADC #> $0001
C - - - - - 0x000A7E 00:8A6E: 9D 10 05  STA ram_0510,X
C - - - - - 0x000A81 00:8A71: 60        RTS



sub_8A72:
C - - - - - 0x000A82 00:8A72: E0 03     CPX #$03
C - - - - - 0x000A84 00:8A74: 90 01     BCC bra_8A77
bra_8A76_RTS:
C - - - - - 0x000A86 00:8A76: 60        RTS
bra_8A77:
C - - - - - 0x000A87 00:8A77: BD 1B 05  LDA ram_051B,X
C - - - - - 0x000A8A 00:8A7A: F0 FA     BEQ bra_8A76_RTS
- - - - - - 0x000A8C 00:8A7C: BC C9 04  LDY ram_04C9,X
- - - - - - 0x000A8F 00:8A7F: D0 0F     BNE bra_8A90
- - - - - - 0x000A91 00:8A81: 0A        ASL
- - - - - - 0x000A92 00:8A82: A8        TAY
- - - - - - 0x000A93 00:8A83: B9 D7 9D  LDA tbl_9DD7,Y
- - - - - - 0x000A96 00:8A86: 9D 20 05  STA ram_0520,X
- - - - - - 0x000A99 00:8A89: B9 D8 9D  LDA tbl_9DD7 + $01,Y
- - - - - - 0x000A9C 00:8A8C: 9D 23 05  STA ram_0523,X
- - - - - - 0x000A9F 00:8A8F: 60        RTS
sub_8A90:
bra_8A90:
C - - - - - 0x000AA0 00:8A90: BD 1B 05  LDA ram_051B,X
C - - - - - 0x000AA3 00:8A93: F0 3F     BEQ bra_8AD4_RTS
- - - - - - 0x000AA5 00:8A95: BD 20 05  LDA ram_0520,X
- - - - - - 0x000AA8 00:8A98: 85 F0     STA ram_00F0
- - - - - - 0x000AAA 00:8A9A: BD 23 05  LDA ram_0523,X
- - - - - - 0x000AAD 00:8A9D: 85 F1     STA ram_00F1
- - - - - - 0x000AAF 00:8A9F: A0 00     LDY #$00
- - - - - - 0x000AB1 00:8AA1: 84 F3     STY ram_00F3
- - - - - - 0x000AB3 00:8AA3: B1 F0     LDA (ram_00F0),Y
- - - - - - 0x000AB5 00:8AA5: 85 F2     STA ram_00F2
- - - - - - 0x000AB7 00:8AA7: C9 80     CMP #$80
- - - - - - 0x000AB9 00:8AA9: F0 29     BEQ bra_8AD4_RTS
- - - - - - 0x000ABB 00:8AAB: 90 02     BCC bra_8AAF
- - - - - - 0x000ABD 00:8AAD: C6 F3     DEC ram_00F3
bra_8AAF:
- - - - - - 0x000ABF 00:8AAF: AD 82 05  LDA ram_0582
- - - - - - 0x000AC2 00:8AB2: 18        CLC
- - - - - - 0x000AC3 00:8AB3: 65 F2     ADC ram_00F2
- - - - - - 0x000AC5 00:8AB5: 8D 82 05  STA ram_0582
- - - - - - 0x000AC8 00:8AB8: AD 83 05  LDA ram_0583
- - - - - - 0x000ACB 00:8ABB: 65 F3     ADC ram_00F3
- - - - - - 0x000ACD 00:8ABD: 8D 83 05  STA ram_0583
- - - - - - 0x000AD0 00:8AC0: EE 84 05  INC ram_0584
- - - - - - 0x000AD3 00:8AC3: BD 20 05  LDA ram_0520,X
- - - - - - 0x000AD6 00:8AC6: 18        CLC
- - - - - - 0x000AD7 00:8AC7: 69 01     ADC #< $0001
- - - - - - 0x000AD9 00:8AC9: 9D 20 05  STA ram_0520,X
- - - - - - 0x000ADC 00:8ACC: BD 23 05  LDA ram_0523,X
- - - - - - 0x000ADF 00:8ACF: 69 00     ADC #> $0001
- - - - - - 0x000AE1 00:8AD1: 9D 23 05  STA ram_0523,X
bra_8AD4_RTS:
C - - - - - 0x000AE4 00:8AD4: 60        RTS



sub_8AD5:
C - - - - - 0x000AE5 00:8AD5: E0 03     CPX #$03
C - - - - - 0x000AE7 00:8AD7: B0 49     BCS bra_8B22_RTS
C - - - - - 0x000AE9 00:8AD9: A9 00     LDA #$00
C - - - - - 0x000AEB 00:8ADB: 8D 84 05  STA ram_0584
C - - - - - 0x000AEE 00:8ADE: 8D 82 05  STA ram_0582
C - - - - - 0x000AF1 00:8AE1: 8D 83 05  STA ram_0583
C - - - - - 0x000AF4 00:8AE4: 20 32 8A  JSR sub_8A32
C - - - - - 0x000AF7 00:8AE7: 20 90 8A  JSR sub_8A90
C - - - - - 0x000AFA 00:8AEA: AD 84 05  LDA ram_0584
C - - - - - 0x000AFD 00:8AED: F0 33     BEQ bra_8B22_RTS
C - - - - - 0x000AFF 00:8AEF: 8A        TXA
; * 04
C - - - - - 0x000B00 00:8AF0: 0A        ASL
C - - - - - 0x000B01 00:8AF1: 0A        ASL
C - - - - - 0x000B02 00:8AF2: A8        TAY
C - - - - - 0x000B03 00:8AF3: B9 65 05  LDA ram_0565,Y
C - - - - - 0x000B06 00:8AF6: 85 F8     STA ram_00F8
C - - - - - 0x000B08 00:8AF8: BD 56 04  LDA ram_0456,X
C - - - - - 0x000B0B 00:8AFB: 18        CLC
C - - - - - 0x000B0C 00:8AFC: 6D 82 05  ADC ram_0582
C - - - - - 0x000B0F 00:8AFF: 99 64 05  STA ram_0564,Y
C - - - - - 0x000B12 00:8B02: BD 5B 04  LDA ram_045B,X
C - - - - - 0x000B15 00:8B05: 6D 83 05  ADC ram_0583
C - - - - - 0x000B18 00:8B08: 99 65 05  STA ram_0565,Y
C - - - - - 0x000B1B 00:8B0B: BD 76 05  LDA ram_0576,X
C - - - - - 0x000B1E 00:8B0E: 09 04     ORA #$04
C - - - - - 0x000B20 00:8B10: 9D 76 05  STA ram_0576,X
C - - - - - 0x000B23 00:8B13: B9 65 05  LDA ram_0565,Y
C - - - - - 0x000B26 00:8B16: C5 F8     CMP ram_00F8
C - - - - - 0x000B28 00:8B18: F0 08     BEQ bra_8B22_RTS
C - - - - - 0x000B2A 00:8B1A: BD 76 05  LDA ram_0576,X
C - - - - - 0x000B2D 00:8B1D: 09 08     ORA #$08
C - - - - - 0x000B2F 00:8B1F: 9D 76 05  STA ram_0576,X
bra_8B22_RTS:
C - - - - - 0x000B32 00:8B22: 60        RTS



sub_8B23:
C - - - - - 0x000B33 00:8B23: E0 04     CPX #$04
C - - - - - 0x000B35 00:8B25: F0 FB     BEQ bra_8B22_RTS
C - - - - - 0x000B37 00:8B27: E0 03     CPX #$03
C - - - - - 0x000B39 00:8B29: D0 05     BNE bra_8B30
C - - - - - 0x000B3B 00:8B2B: AD 40 04  LDA ram_0440
C - - - - - 0x000B3E 00:8B2E: D0 A4     BNE bra_8AD4_RTS
bra_8B30:
C - - - - - 0x000B40 00:8B30: 20 39 87  JSR sub_8739
C - - - - - 0x000B43 00:8B33: AD 36 04  LDA ram_0436
C - - - - - 0x000B46 00:8B36: C9 02     CMP #$02
C - - - - - 0x000B48 00:8B38: B0 0E     BCS bra_8B48
C - - - - - 0x000B4A 00:8B3A: BD FB 04  LDA ram_04FB,X
C - - - - - 0x000B4D 00:8B3D: 99 63 05  STA ram_0563,Y
C - - - - - 0x000B50 00:8B40: BD 76 05  LDA ram_0576,X
C - - - - - 0x000B53 00:8B43: 09 02     ORA #$02
C - - - - - 0x000B55 00:8B45: 9D 76 05  STA ram_0576,X
bra_8B48:
C - - - - - 0x000B58 00:8B48: AD 80 05  LDA ram_0580
C - - - - - 0x000B5B 00:8B4B: 99 64 05  STA ram_0564,Y
C - - - - - 0x000B5E 00:8B4E: AD 81 05  LDA ram_0581
C - - - - - 0x000B61 00:8B51: 99 65 05  STA ram_0565,Y
C - - - - - 0x000B64 00:8B54: BD 76 05  LDA ram_0576,X
C - - - - - 0x000B67 00:8B57: 09 0C     ORA #$0C
C - - - - - 0x000B69 00:8B59: 9D 76 05  STA ram_0576,X
C - - - - - 0x000B6C 00:8B5C: E0 03     CPX #$03
C - - - - - 0x000B6E 00:8B5E: B0 20     BCS bra_8B80
C - - - - - 0x000B70 00:8B60: A9 00     LDA #$00
C - - - - - 0x000B72 00:8B62: 85 F1     STA ram_00F1
C - - - - - 0x000B74 00:8B64: BD 16 05  LDA ram_0516,X
C - - - - - 0x000B77 00:8B67: F0 17     BEQ bra_8B80
C - - - - - 0x000B79 00:8B69: 85 F0     STA ram_00F0
C - - - - - 0x000B7B 00:8B6B: 10 02     BPL bra_8B6F
- - - - - - 0x000B7D 00:8B6D: C6 F1     DEC ram_00F1
bra_8B6F:
C - - - - - 0x000B7F 00:8B6F: B9 64 05  LDA ram_0564,Y
C - - - - - 0x000B82 00:8B72: 18        CLC
C - - - - - 0x000B83 00:8B73: 65 F0     ADC ram_00F0
C - - - - - 0x000B85 00:8B75: 99 64 05  STA ram_0564,Y
C - - - - - 0x000B88 00:8B78: B9 65 05  LDA ram_0565,Y
C - - - - - 0x000B8B 00:8B7B: 65 F1     ADC ram_00F1
C - - - - - 0x000B8D 00:8B7D: 99 65 05  STA ram_0565,Y
bra_8B80:
C - - - - - 0x000B90 00:8B80: B9 64 05  LDA ram_0564,Y
C - - - - - 0x000B93 00:8B83: 9D 56 04  STA ram_0456,X
C - - - - - 0x000B96 00:8B86: B9 65 05  LDA ram_0565,Y
C - - - - - 0x000B99 00:8B89: 9D 5B 04  STA ram_045B,X
C - - - - - 0x000B9C 00:8B8C: 20 72 8A  JSR sub_8A72
C - - - - - 0x000B9F 00:8B8F: 4C 08 8A  JMP loc_8A08



sub_8B92:
C - - - - - 0x000BA2 00:8B92: A2 00     LDX #$00
C - - - - - 0x000BA4 00:8B94: A0 00     LDY #$00
bra_8B96_loop:
C - - - - - 0x000BA6 00:8B96: BD 7B 05  LDA ram_057B,X
C - - - - - 0x000BA9 00:8B99: D0 06     BNE bra_8BA1
C - - - - - 0x000BAB 00:8B9B: 20 06 8C  JSR sub_8C06
C - - - - - 0x000BAE 00:8B9E: 4C A4 8B  JMP loc_8BA4
bra_8BA1:
C - - - - - 0x000BB1 00:8BA1: 20 3F 8C  JSR sub_8C3F
loc_8BA4:
C D 0 - - - 0x000BB4 00:8BA4: C8        INY
C - - - - - 0x000BB5 00:8BA5: C8        INY
C - - - - - 0x000BB6 00:8BA6: C8        INY
C - - - - - 0x000BB7 00:8BA7: C8        INY
C - - - - - 0x000BB8 00:8BA8: E8        INX
C - - - - - 0x000BB9 00:8BA9: E0 04     CPX #$04
C - - - - - 0x000BBB 00:8BAB: 90 E9     BCC bra_8B96_loop
C - - - - - 0x000BBD 00:8BAD: AD 7F 05  LDA ram_useless_address_057F
C - - - - - 0x000BC0 00:8BB0: D0 1A     BNE bra_8BCC
C - - - - - 0x000BC2 00:8BB2: AD 7A 05  LDA ram_useless_address_057A
C - - - - - 0x000BC5 00:8BB5: F0 3E     BEQ bra_8BF5
; bzk garbage
- - - - - - 0x000BC7 00:8BB7: AD 86 05  LDA ram_for_4015
- - - - - - 0x000BCA 00:8BBA: A0 00     LDY #$00
bra_8BBC_loop:
- - - - - - 0x000BCC 00:8BBC: B9 72 05  LDA ram_0572,Y
- - - - - - 0x000BCF 00:8BBF: C8        INY
- - - - - - 0x000BD0 00:8BC0: C0 04     CPY #$04
- - - - - - 0x000BD2 00:8BC2: 90 F8     BCC bra_8BBC_loop
- - - - - - 0x000BD4 00:8BC4: AD 86 05  LDA ram_for_4015
- - - - - - 0x000BD7 00:8BC7: 09 10     ORA #$10
- - - - - - 0x000BD9 00:8BC9: 4C EC 8B  JMP loc_8BEC
bra_8BCC:
; bzk garbage
- - - - - - 0x000BDC 00:8BCC: AD A7 05  LDA ram_05A7
- - - - - - 0x000BDF 00:8BCF: F0 24     BEQ bra_8BF5
- - - - - - 0x000BE1 00:8BD1: AD 86 05  LDA ram_for_4015
- - - - - - 0x000BE4 00:8BD4: AD 3B 04  LDA ram_043B_sound
- - - - - - 0x000BE7 00:8BD7: 29 7F     AND #$7F
- - - - - - 0x000BE9 00:8BD9: C9 30     CMP #$30
- - - - - - 0x000BEB 00:8BDB: F0 0F     BEQ bra_8BEC
- - - - - - 0x000BED 00:8BDD: A0 00     LDY #$00
bra_8BDF_loop:
- - - - - - 0x000BEF 00:8BDF: B9 9F 05  LDA ram_059F,Y
- - - - - - 0x000BF2 00:8BE2: C8        INY
- - - - - - 0x000BF3 00:8BE3: C0 04     CPY #$04
- - - - - - 0x000BF5 00:8BE5: 90 F8     BCC bra_8BDF_loop
- - - - - - 0x000BF7 00:8BE7: AD 86 05  LDA ram_for_4015
- - - - - - 0x000BFA 00:8BEA: 09 10     ORA #$10
bra_8BEC:
loc_8BEC:
- - - - - - 0x000BFC 00:8BEC: A9 00     LDA #$00
- - - - - - 0x000BFE 00:8BEE: 8D 7A 05  STA ram_useless_address_057A
- - - - - - 0x000C01 00:8BF1: 8D A7 05  STA ram_05A7
- - - - - - 0x000C04 00:8BF4: 60        RTS
bra_8BF5:
C - - - - - 0x000C05 00:8BF5: AD 15 40  LDA $4015
C - - - - - 0x000C08 00:8BF8: 29 10     AND #$10
C - - - - - 0x000C0A 00:8BFA: 0D 86 05  ORA ram_for_4015
C - - - - - 0x000C0D 00:8BFD: 8D 15 40  STA $4015
C - - - - - 0x000C10 00:8C00: A9 00     LDA #$00
C - - - - - 0x000C12 00:8C02: 8D 7A 05  STA ram_useless_address_057A
C - - - - - 0x000C15 00:8C05: 60        RTS



sub_8C06:
C - - - - - 0x000C16 00:8C06: BD 76 05  LDA ram_0576,X
C - - - - - 0x000C19 00:8C09: 29 0F     AND #$0F
C - - - - - 0x000C1B 00:8C0B: F0 31     BEQ bra_8C3E_RTS
C - - - - - 0x000C1D 00:8C0D: 5E 76 05  LSR ram_0576,X
C - - - - - 0x000C20 00:8C10: 90 06     BCC bra_8C18
C - - - - - 0x000C22 00:8C12: B9 62 05  LDA ram_0562,Y
C - - - - - 0x000C25 00:8C15: 99 00 40  STA $4000,Y ; 4000 4004 4008 400C 
bra_8C18:
C - - - - - 0x000C28 00:8C18: 5E 76 05  LSR ram_0576,X
C - - - - - 0x000C2B 00:8C1B: 90 06     BCC bra_8C23
C - - - - - 0x000C2D 00:8C1D: B9 63 05  LDA ram_0563,Y
C - - - - - 0x000C30 00:8C20: 99 01 40  STA $4001,Y ; 4001 4005 400D 
bra_8C23:
C - - - - - 0x000C33 00:8C23: 5E 76 05  LSR ram_0576,X
C - - - - - 0x000C36 00:8C26: 90 06     BCC bra_8C2E
C - - - - - 0x000C38 00:8C28: B9 64 05  LDA ram_0564,Y
C - - - - - 0x000C3B 00:8C2B: 99 02 40  STA $4002,Y ; 4002 4006 400A 400E 
bra_8C2E:
C - - - - - 0x000C3E 00:8C2E: 5E 76 05  LSR ram_0576,X
C - - - - - 0x000C41 00:8C31: 90 06     BCC bra_8C39
C - - - - - 0x000C43 00:8C33: B9 65 05  LDA ram_0565,Y
C - - - - - 0x000C46 00:8C36: 99 03 40  STA $4003,Y ; 4003 4007 400B 400F 
bra_8C39:
C - - - - - 0x000C49 00:8C39: A9 00     LDA #$00
C - - - - - 0x000C4B 00:8C3B: 9D 76 05  STA ram_0576,X
bra_8C3E_RTS:
C - - - - - 0x000C4E 00:8C3E: 60        RTS



sub_8C3F:
C - - - - - 0x000C4F 00:8C3F: BD A3 05  LDA ram_05A3,X
C - - - - - 0x000C52 00:8C42: 29 0F     AND #$0F
C - - - - - 0x000C54 00:8C44: F0 31     BEQ bra_8C77_RTS
C - - - - - 0x000C56 00:8C46: 5E A3 05  LSR ram_05A3,X
C - - - - - 0x000C59 00:8C49: 90 06     BCC bra_8C51
C - - - - - 0x000C5B 00:8C4B: B9 8F 05  LDA ram_058F,Y
C - - - - - 0x000C5E 00:8C4E: 99 00 40  STA $4000,Y ; 4004 400C 
bra_8C51:
C - - - - - 0x000C61 00:8C51: 5E A3 05  LSR ram_05A3,X
C - - - - - 0x000C64 00:8C54: 90 06     BCC bra_8C5C
C - - - - - 0x000C66 00:8C56: B9 90 05  LDA ram_0590,Y
C - - - - - 0x000C69 00:8C59: 99 01 40  STA $4001,Y ; 4005 400D 
bra_8C5C:
C - - - - - 0x000C6C 00:8C5C: 5E A3 05  LSR ram_05A3,X
C - - - - - 0x000C6F 00:8C5F: 90 06     BCC bra_8C67
C - - - - - 0x000C71 00:8C61: B9 91 05  LDA ram_0591,Y
C - - - - - 0x000C74 00:8C64: 99 02 40  STA $4002,Y ; 4006 400E 
bra_8C67:
C - - - - - 0x000C77 00:8C67: 5E A3 05  LSR ram_05A3,X
C - - - - - 0x000C7A 00:8C6A: 90 06     BCC bra_8C72
C - - - - - 0x000C7C 00:8C6C: B9 92 05  LDA ram_0592,Y
C - - - - - 0x000C7F 00:8C6F: 99 03 40  STA $4003,Y ; 4007 400F 
bra_8C72:
C - - - - - 0x000C82 00:8C72: A9 00     LDA #$00
C - - - - - 0x000C84 00:8C74: 9D A3 05  STA ram_05A3,X
bra_8C77_RTS:
C - - - - - 0x000C87 00:8C77: 60        RTS



loc_8C78_music_config:
C D 0 - - - 0x000C88 00:8C78: 8E 87 05  STX ram_0587
C - - - - - 0x000C8B 00:8C7B: 8C 88 05  STY ram_0588
C - - - - - 0x000C8E 00:8C7E: AD 3C 04  LDA ram_043C_music_config
; bzk optimize, useless check, ram_043C_music_config is always >= 80
C - - - - - 0x000C91 00:8C81: 30 01     BMI bra_8C84
bra_8C83_RTS:
- - - - - - 0x000C93 00:8C83: 60        RTS
bra_8C84:
; bzk optimize, useless check, ram_043C_music_config is never >= 8D
C - - - - - 0x000C94 00:8C84: C9 8D     CMP #$8D
C - - - - - 0x000C96 00:8C86: B0 FB     BCS bra_8C83_RTS
; 80-8C
C - - - - - 0x000C98 00:8C88: 29 7F     AND #$7F
C - - - - - 0x000C9A 00:8C8A: 0A        ASL
C - - - - - 0x000C9B 00:8C8B: A8        TAY
C - - - - - 0x000C9C 00:8C8C: B9 A5 8C  LDA tbl_8CA5_music_config,Y
C - - - - - 0x000C9F 00:8C8F: 85 F6     STA ram_00F6
C - - - - - 0x000CA1 00:8C91: B9 A6 8C  LDA tbl_8CA5_music_config + $01,Y
C - - - - - 0x000CA4 00:8C94: 85 F7     STA ram_00F7
C - - - - - 0x000CA6 00:8C96: 20 C3 91  JSR sub_91C3_indirect_jump_00F6
C - - - - - 0x000CA9 00:8C99: A9 00     LDA #$00
C - - - - - 0x000CAB 00:8C9B: 8D 3C 04  STA ram_043C_music_config
C - - - - - 0x000CAE 00:8C9E: AE 87 05  LDX ram_0587
C - - - - - 0x000CB1 00:8CA1: AC 88 05  LDY ram_0588
C - - - - - 0x000CB4 00:8CA4: 60        RTS



tbl_8CA5_music_config:
; see con_mcb
- D 0 - - - 0x000CB5 00:8CA5: C5 8C     .word ofs_001_8CC5_80
- - - - - - 0x000CB7 00:8CA7: BF 8C     .word ofs_001_8CBF_81_disable_music
- - - - - - 0x000CB9 00:8CA9: CB 8C     .word ofs_001_8CCB_82
- D 0 - - - 0x000CBB 00:8CAB: D7 8C     .word ofs_001_8CD7_83_volume
- - - - - - 0x000CBD 00:8CAD: F6 8C     .word ofs_001_8CF6_84
- - - - - - 0x000CBF 00:8CAF: 07 8D     .word ofs_001_8D07_85
- D 0 - - - 0x000CC1 00:8CB1: 2C 8D     .word ofs_001_8D2C_86
- D 0 - - - 0x000CC3 00:8CB3: 35 8D     .word ofs_001_8D35_87
- - - - - - 0x000CC5 00:8CB5: 47 8D     .word ofs_001_8D47_88
- - - - - - 0x000CC7 00:8CB7: 52 8D     .word ofs_001_8D52_89
- - - - - - 0x000CC9 00:8CB9: 5D 8D     .word ofs_001_8D5D_8A
- - - - - - 0x000CCB 00:8CBB: 3E 8D     .word ofs_001_8D3E_8B
- - - - - - 0x000CCD 00:8CBD: D1 8C     .word ofs_001_8CD1_8C



sub_8CBF_disable_music:
ofs_001_8CBF_81_disable_music:
C - - - - - 0x000CCF 00:8CBF: A9 20     LDA #con_music_disable
C - - - - - 0x000CD1 00:8CC1: 8D 3A 04  STA ram_music
C - - - - - 0x000CD4 00:8CC4: 60        RTS



ofs_001_8CC5_80:
C - - J - - 0x000CD5 00:8CC5: 20 BF 8C  JSR sub_8CBF_disable_music
C - - - - - 0x000CD8 00:8CC8: 20 D1 8C  JSR sub_8CD1
ofs_001_8CCB_82:
C - - - - - 0x000CDB 00:8CCB: A9 00     LDA #$00
C - - - - - 0x000CDD 00:8CCD: 8D 39 04  STA ram_0439_sfx
C - - - - - 0x000CE0 00:8CD0: 60        RTS



sub_8CD1:
ofs_001_8CD1_8C:
C - - - - - 0x000CE1 00:8CD1: A9 30     LDA #$30
C - - - - - 0x000CE3 00:8CD3: 8D 3B 04  STA ram_043B_sound
C - - - - - 0x000CE6 00:8CD6: 60        RTS



ofs_001_8CD7_83_volume:
C - - J - - 0x000CE7 00:8CD7: AD 87 05  LDA ram_0587
C - - - - - 0x000CEA 00:8CDA: 30 13     BMI bra_8CEF
C - - - - - 0x000CEC 00:8CDC: C9 11     CMP #$11
C - - - - - 0x000CEE 00:8CDE: 90 02     BCC bra_8CE2
- - - - - - 0x000CF0 00:8CE0: A9 10     LDA #$10
bra_8CE2:
C - - - - - 0x000CF2 00:8CE2: AE 85 05  LDX ram_0585
C - - - - - 0x000CF5 00:8CE5: 8D 85 05  STA ram_0585
C - - - - - 0x000CF8 00:8CE8: 8D 8B 05  STA ram_058B
C - - - - - 0x000CFB 00:8CEB: 8E 87 05  STX ram_0587
C - - - - - 0x000CFE 00:8CEE: 60        RTS
bra_8CEF:
- - - - - - 0x000CFF 00:8CEF: AD 85 05  LDA ram_0585
- - - - - - 0x000D02 00:8CF2: 8D 87 05  STA ram_0587
- - - - - - 0x000D05 00:8CF5: 60        RTS



ofs_001_8CF6_84:
- - - - - - 0x000D06 00:8CF6: AD 87 05  LDA ram_0587
- - - - - - 0x000D09 00:8CF9: 30 05     BMI bra_8D00
- - - - - - 0x000D0B 00:8CFB: 29 0F     AND #$0F
- - - - - - 0x000D0D 00:8CFD: 8D 86 05  STA ram_for_4015
bra_8D00:
- - - - - - 0x000D10 00:8D00: AD 86 05  LDA ram_for_4015
- - - - - - 0x000D13 00:8D03: 8D 87 05  STA ram_0587
- - - - - - 0x000D16 00:8D06: 60        RTS



ofs_001_8D07_85:
- - - - - - 0x000D17 00:8D07: AD 3A 04  LDA ram_music
- - - - - - 0x000D1A 00:8D0A: 29 7F     AND #$7F
- - - - - - 0x000D1C 00:8D0C: C9 20     CMP #con_music_disable
- - - - - - 0x000D1E 00:8D0E: F0 16     BEQ bra_8D26
- - - - - - 0x000D20 00:8D10: AA        TAX
- - - - - - 0x000D21 00:8D11: AD 87 05  LDA ram_0587
- - - - - - 0x000D24 00:8D14: 8D 8A 05  STA ram_058A
- - - - - - 0x000D27 00:8D17: A9 00     LDA #$00
- - - - - - 0x000D29 00:8D19: 8D 89 05  STA ram_0589
- - - - - - 0x000D2C 00:8D1C: AD 85 05  LDA ram_0585
- - - - - - 0x000D2F 00:8D1F: 8D 8B 05  STA ram_058B
- - - - - - 0x000D32 00:8D22: 8E 87 05  STX ram_0587
- - - - - - 0x000D35 00:8D25: 60        RTS
bra_8D26:
- - - - - - 0x000D36 00:8D26: A5 FF     LDA ram_00FF
- - - - - - 0x000D38 00:8D28: 8D 87 05  STA ram_0587
- - - - - - 0x000D3B 00:8D2B: 60        RTS



ofs_001_8D2C_86:
C - - J - - 0x000D3C 00:8D2C: AD 3A 04  LDA ram_music
C - - - - - 0x000D3F 00:8D2F: 29 7F     AND #$7F
C - - - - - 0x000D41 00:8D31: 8D 87 05  STA ram_0587
C - - - - - 0x000D44 00:8D34: 60        RTS



ofs_001_8D35_87:
C - - J - - 0x000D45 00:8D35: AD 39 04  LDA ram_0439_sfx
C - - - - - 0x000D48 00:8D38: 29 7F     AND #$7F
C - - - - - 0x000D4A 00:8D3A: 8D 87 05  STA ram_0587
C - - - - - 0x000D4D 00:8D3D: 60        RTS



ofs_001_8D3E_8B:
- - - - - - 0x000D4E 00:8D3E: AD 3B 04  LDA ram_043B_sound
- - - - - - 0x000D51 00:8D41: 29 7F     AND #$7F
- - - - - - 0x000D53 00:8D43: 8D 87 05  STA ram_0587
- - - - - - 0x000D56 00:8D46: 60        RTS



ofs_001_8D47_88:
- - - - - - 0x000D57 00:8D47: A9 20     LDA #$20
- - - - - - 0x000D59 00:8D49: 8D 87 05  STA ram_0587
- - - - - - 0x000D5C 00:8D4C: A9 2F     LDA #$2F
- - - - - - 0x000D5E 00:8D4E: 8D 88 05  STA ram_0588
- - - - - - 0x000D61 00:8D51: 60        RTS



ofs_001_8D52_89:
- - - - - - 0x000D62 00:8D52: A9 00     LDA #$00
- - - - - - 0x000D64 00:8D54: 8D 87 05  STA ram_0587
- - - - - - 0x000D67 00:8D57: A9 1F     LDA #$1F
- - - - - - 0x000D69 00:8D59: 8D 88 05  STA ram_0588
- - - - - - 0x000D6C 00:8D5C: 60        RTS



ofs_001_8D5D_8A:
- - - - - - 0x000D6D 00:8D5D: A9 30     LDA #$30
- - - - - - 0x000D6F 00:8D5F: 8D 87 05  STA ram_0587
- - - - - - 0x000D72 00:8D62: A9 30     LDA #$30
- - - - - - 0x000D74 00:8D64: 8D 88 05  STA ram_0588
- - - - - - 0x000D77 00:8D67: 60        RTS



bra_8D68_RTS:
C - - - - - 0x000D78 00:8D68: 60        RTS



sub_8D69:
C - - - - - 0x000D79 00:8D69: A2 0D     LDX #$0D
C - - - - - 0x000D7B 00:8D6B: AE 36 04  LDX ram_0436
C - - - - - 0x000D7E 00:8D6E: 20 77 8D  JSR sub_8D77
C - - - - - 0x000D81 00:8D71: A2 0D     LDX #$0D
C - - - - - 0x000D83 00:8D73: AE 36 04  LDX ram_0436
C - - - - - 0x000D86 00:8D76: 60        RTS



sub_8D77:
C - - - - - 0x000D87 00:8D77: AE 36 04  LDX ram_0436
C - - - - - 0x000D8A 00:8D7A: BD 60 04  LDA ram_0460,X
C - - - - - 0x000D8D 00:8D7D: F0 03     BEQ bra_8D82
C - - - - - 0x000D8F 00:8D7F: 4C 2B 8E  JMP loc_8E2B
bra_8D82:
C - - - - - 0x000D92 00:8D82: A9 00     LDA #$00
C - - - - - 0x000D94 00:8D84: 9D C9 04  STA ram_04C9,X
C - - - - - 0x000D97 00:8D87: 8A        TXA
C - - - - - 0x000D98 00:8D88: 20 4A 8E  JSR sub_8E4A
loc_8D8B:
C D 0 - - - 0x000D9B 00:8D8B: A5 EC     LDA ram_00EC
C - - - - - 0x000D9D 00:8D8D: 05 ED     ORA ram_00ED
C - - - - - 0x000D9F 00:8D8F: F0 D7     BEQ bra_8D68_RTS
C - - - - - 0x000DA1 00:8D91: A0 00     LDY #$00
C - - - - - 0x000DA3 00:8D93: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000DA5 00:8D95: 8D 37 04  STA ram_0437
C - - - - - 0x000DA8 00:8D98: 20 E4 8E  JSR sub_8EE4_increase_pointer
C - - - - - 0x000DAB 00:8D9B: C9 D0     CMP #$D0
C - - - - - 0x000DAD 00:8D9D: 90 03     BCC bra_8DA2
C - - - - - 0x000DAF 00:8D9F: 4C 7B 8E  JMP loc_8E7B_control_bytes
bra_8DA2:
C - - - - - 0x000DB2 00:8DA2: AD 37 04  LDA ram_0437
C - - - - - 0x000DB5 00:8DA5: 9D 51 04  STA ram_0451,X
C - - - - - 0x000DB8 00:8DA8: 20 A9 90  JSR sub_90A9
C - - - - - 0x000DBB 00:8DAB: AD 37 04  LDA ram_0437
C - - - - - 0x000DBE 00:8DAE: 29 F0     AND #$F0
C - - - - - 0x000DC0 00:8DB0: D0 03     BNE bra_8DB5
C - - - - - 0x000DC2 00:8DB2: 4C 27 8E  JMP loc_8E27
bra_8DB5:
C - - - - - 0x000DC5 00:8DB5: E0 03     CPX #$03
C - - - - - 0x000DC7 00:8DB7: F0 4C     BEQ bra_8E05
C - - - - - 0x000DC9 00:8DB9: E0 04     CPX #$04
C - - - - - 0x000DCB 00:8DBB: F0 12     BEQ bra_8DCF
C - - - - - 0x000DCD 00:8DBD: 20 9D 91  JSR sub_919D
C - - - - - 0x000DD0 00:8DC0: B9 C6 91  LDA tbl_91C6,Y
C - - - - - 0x000DD3 00:8DC3: 8D 80 05  STA ram_0580
C - - - - - 0x000DD6 00:8DC6: B9 26 92  LDA tbl_9226,Y
C - - - - - 0x000DD9 00:8DC9: 8D 81 05  STA ram_0581
C - - - - - 0x000DDC 00:8DCC: 4C 12 8E  JMP loc_8E12
bra_8DCF:
- - - - - - 0x000DDF 00:8DCF: AD 85 05  LDA ram_0585
- - - - - - 0x000DE2 00:8DD2: C9 08     CMP #$08
- - - - - - 0x000DE4 00:8DD4: 90 3C     BCC bra_8E12
- - - - - - 0x000DE6 00:8DD6: A2 0D     LDX #$0D
- - - - - - 0x000DE8 00:8DD8: AE 36 04  LDX ram_0436
- - - - - - 0x000DEB 00:8DDB: AD 37 04  LDA ram_0437
; / 08
- - - - - - 0x000DEE 00:8DDE: 4A        LSR
- - - - - - 0x000DEF 00:8DDF: 4A        LSR
- - - - - - 0x000DF0 00:8DE0: 4A        LSR
- - - - - - 0x000DF1 00:8DE1: 29 1E     AND #$1E
- - - - - - 0x000DF3 00:8DE3: A8        TAY
- - - - - - 0x000DF4 00:8DE4: B9 3C 9F  LDA tbl_9F3C,Y
- - - - - - 0x000DF7 00:8DE7: 85 F0     STA ram_00F0
- - - - - - 0x000DF9 00:8DE9: B9 3D 9F  LDA tbl_9F3C + $01,Y
- - - - - - 0x000DFC 00:8DEC: 85 F1     STA ram_00F1
- - - - - - 0x000DFE 00:8DEE: A0 03     LDY #$03
bra_8DF0_loop:
- - - - - - 0x000E00 00:8DF0: B1 F0     LDA (ram_00F0),Y
- - - - - - 0x000E02 00:8DF2: 99 72 05  STA ram_0572,Y
- - - - - - 0x000E05 00:8DF5: 88        DEY
- - - - - - 0x000E06 00:8DF6: 10 F8     BPL bra_8DF0_loop
- - - - - - 0x000E08 00:8DF8: A2 0D     LDX #$0D
- - - - - - 0x000E0A 00:8DFA: AE 36 04  LDX ram_0436
- - - - - - 0x000E0D 00:8DFD: A9 01     LDA #$01
- - - - - - 0x000E0F 00:8DFF: 9D 76 05  STA ram_0576,X
- - - - - - 0x000E12 00:8E02: 4C 12 8E  JMP loc_8E12
bra_8E05:
C - - - - - 0x000E15 00:8E05: A2 0D     LDX #$0D
C - - - - - 0x000E17 00:8E07: AE 36 04  LDX ram_0436
C - - - - - 0x000E1A 00:8E0A: 20 4B 89  JSR sub_894B
C - - - - - 0x000E1D 00:8E0D: A2 0D     LDX #$0D
C - - - - - 0x000E1F 00:8E0F: AE 36 04  LDX ram_0436
bra_8E12:
loc_8E12:
C D 0 - - - 0x000E22 00:8E12: A2 0D     LDX #$0D
C - - - - - 0x000E24 00:8E14: AE 36 04  LDX ram_0436
C - - - - - 0x000E27 00:8E17: 20 23 8B  JSR sub_8B23
C - - - - - 0x000E2A 00:8E1A: A2 0D     LDX #$0D
C - - - - - 0x000E2C 00:8E1C: AE 36 04  LDX ram_0436
C - - - - - 0x000E2F 00:8E1F: A9 00     LDA #$00
C - - - - - 0x000E31 00:8E21: 9D C9 04  STA ram_04C9,X
C - - - - - 0x000E34 00:8E24: 4C 2B 8E  JMP loc_8E2B



loc_8E27:
C D 0 - - - 0x000E37 00:8E27: 8A        TXA
C - - - - - 0x000E38 00:8E28: 20 4A 8E  JSR sub_8E4A
loc_8E2B:
C D 0 - - - 0x000E3B 00:8E2B: AE 36 04  LDX ram_0436
C - - - - - 0x000E3E 00:8E2E: BD 65 04  LDA ram_0465,X
C - - - - - 0x000E41 00:8E31: F0 03     BEQ bra_8E36
C - - - - - 0x000E43 00:8E33: DE 65 04  DEC ram_0465,X
bra_8E36:
C - - - - - 0x000E46 00:8E36: A2 0D     LDX #$0D
C - - - - - 0x000E48 00:8E38: AE 36 04  LDX ram_0436
C - - - - - 0x000E4B 00:8E3B: 20 68 87  JSR sub_8768
C - - - - - 0x000E4E 00:8E3E: 20 D5 8A  JSR sub_8AD5
C - - - - - 0x000E51 00:8E41: A2 0D     LDX #$0D
C - - - - - 0x000E53 00:8E43: AE 36 04  LDX ram_0436
C - - - - - 0x000E56 00:8E46: DE 60 04  DEC ram_0460,X
C - - - - - 0x000E59 00:8E49: 60        RTS



sub_8E4A:
; * 04
C - - - - - 0x000E5A 00:8E4A: 0A        ASL
C - - - - - 0x000E5B 00:8E4B: 0A        ASL
C - - - - - 0x000E5C 00:8E4C: A8        TAY
C - - - - - 0x000E5D 00:8E4D: C0 08     CPY #$08
C - - - - - 0x000E5F 00:8E4F: F0 1C     BEQ bra_8E6D
C - - - - - 0x000E61 00:8E51: C0 10     CPY #$10
C - - - - - 0x000E63 00:8E53: F0 17     BEQ bra_8E6C_RTS
C - - - - - 0x000E65 00:8E55: A9 30     LDA #$30
C - - - - - 0x000E67 00:8E57: 99 62 05  STA ram_0562,Y
C - - - - - 0x000E6A 00:8E5A: A9 01     LDA #$01
C - - - - - 0x000E6C 00:8E5C: 99 64 05  STA ram_0564,Y
C - - - - - 0x000E6F 00:8E5F: A9 00     LDA #$00
C - - - - - 0x000E71 00:8E61: 99 65 05  STA ram_0565,Y
C - - - - - 0x000E74 00:8E64: BD 76 05  LDA ram_0576,X
C - - - - - 0x000E77 00:8E67: 09 0D     ORA #$0D
C - - - - - 0x000E79 00:8E69: 9D 76 05  STA ram_0576,X
bra_8E6C_RTS:
C - - - - - 0x000E7C 00:8E6C: 60        RTS
bra_8E6D:
C - - - - - 0x000E7D 00:8E6D: A9 80     LDA #$80
C - - - - - 0x000E7F 00:8E6F: 99 62 05  STA ram_0562,Y
C - - - - - 0x000E82 00:8E72: BD 76 05  LDA ram_0576,X
C - - - - - 0x000E85 00:8E75: 09 01     ORA #$01
C - - - - - 0x000E87 00:8E77: 9D 76 05  STA ram_0576,X
C - - - - - 0x000E8A 00:8E7A: 60        RTS



loc_8E7B_control_bytes:
C D 0 - - - 0x000E8B 00:8E7B: AD 37 04  LDA ram_0437
C - - - - - 0x000E8E 00:8E7E: 38        SEC
C - - - - - 0x000E8F 00:8E7F: E9 D0     SBC #$D0
C - - - - - 0x000E91 00:8E81: 0A        ASL
C - - - - - 0x000E92 00:8E82: A8        TAY
C - - - - - 0x000E93 00:8E83: B9 93 8E  LDA tbl_8E93_control_bytes,Y
C - - - - - 0x000E96 00:8E86: 85 F0     STA ram_00F0
C - - - - - 0x000E98 00:8E88: B9 94 8E  LDA tbl_8E93_control_bytes + $01,Y
C - - - - - 0x000E9B 00:8E8B: 85 F1     STA ram_00F1
C - - - - - 0x000E9D 00:8E8D: 20 C0 91  JSR sub_91C0_indirect_jump_00F0
C - - - - - 0x000EA0 00:8E90: 4C 8B 8D  JMP loc_8D8B



tbl_8E93_control_bytes:
- D 0 - - - 0x000EA3 00:8E93: CB 8E     .word ofs_002_8ECB_D0_stop
- D 0 - - - 0x000EA5 00:8E95: D5 8E     .word ofs_002_8ED5_D1
- D 0 - - - 0x000EA7 00:8E97: D9 8E     .word ofs_002_8ED9_D2
- D 0 - - - 0x000EA9 00:8E99: DD 8E     .word ofs_002_8EDD_D3
- D 0 - - - 0x000EAB 00:8E9B: EB 8E     .word ofs_002_8EEB_D4
- - - - - - 0x000EAD 00:8E9D: F5 8E     .word ofs_002_8EF5_D5
- D 0 - - - 0x000EAF 00:8E9F: FF 8E     .word ofs_002_8EFF_D6
- D 0 - - - 0x000EB1 00:8EA1: 05 8F     .word ofs_002_8F05_D7
- D 0 - - - 0x000EB3 00:8EA3: 2E 8F     .word ofs_002_8F2E_D8
- - - - - - 0x000EB5 00:8EA5: 5F 8F     .word ofs_002_8F5F_D9
- D 0 - - - 0x000EB7 00:8EA7: 83 8F     .word ofs_002_8F83_DA
- D 0 - - - 0x000EB9 00:8EA9: 8D 8F     .word ofs_002_8F8D_DB
- D 0 - - - 0x000EBB 00:8EAB: 97 8F     .word ofs_002_8F97_DC
- - - - - - 0x000EBD 00:8EAD: A1 8F     .word ofs_002_8FA1_DD
- - - - - - 0x000EBF 00:8EAF: AB 8F     .word ofs_002_8FAB_DE
- D 0 - - - 0x000EC1 00:8EB1: B9 8F     .word ofs_002_8FB9_DF_jsr
- D 0 - - - 0x000EC3 00:8EB3: F0 8F     .word ofs_002_8FF0_E0_rts
- - - - - - 0x000EC5 00:8EB5: 10 90     .word ofs_002_9010_E1
- - - - - - 0x000EC7 00:8EB7: 1A 90     .word ofs_002_901A_E2
- D 0 - - - 0x000EC9 00:8EB9: 24 90     .word ofs_002_9024_E3
- D 0 - - - 0x000ECB 00:8EBB: 2E 90     .word ofs_002_902E_E4
- D 0 - - - 0x000ECD 00:8EBD: 3C 90     .word ofs_002_903C_E5
- D 0 - - - 0x000ECF 00:8EBF: 4A 90     .word ofs_002_904A_E6
- - - - - - 0x000ED1 00:8EC1: 58 90     .word ofs_002_9058_E7
- D 0 - - - 0x000ED3 00:8EC3: 66 90     .word ofs_002_9066_E8
- D 0 - - - 0x000ED5 00:8EC5: 85 90     .word ofs_002_9085_E9_set_loop_address
- D 0 - - - 0x000ED7 00:8EC7: 90 90     .word ofs_002_9090_EA_repeat_from_loop_address
- - - - - - 0x000ED9 00:8EC9: 9B 90     .word ofs_002_909B_EB



ofs_002_8ECB_D0_stop:
C - - J - - 0x000EDB 00:8ECB: 8A        TXA
C - - - - - 0x000EDC 00:8ECC: 0A        ASL
C - - - - - 0x000EDD 00:8ECD: A8        TAY
C - - - - - 0x000EDE 00:8ECE: A9 00     LDA #$00
C - - - - - 0x000EE0 00:8ED0: 85 EC     STA ram_00EC
C - - - - - 0x000EE2 00:8ED2: 85 ED     STA ram_00ED
C - - - - - 0x000EE4 00:8ED4: 60        RTS



ofs_002_8ED5_D1:
C - - J - - 0x000EE5 00:8ED5: FE 7E 04  INC ram_047E,X
C - - - - - 0x000EE8 00:8ED8: 60        RTS



ofs_002_8ED9_D2:
C - - J - - 0x000EE9 00:8ED9: DE 7E 04  DEC ram_047E,X
C - - - - - 0x000EEC 00:8EDC: 60        RTS



ofs_002_8EDD_D3:
C - - J - - 0x000EED 00:8EDD: A0 00     LDY #$00
C - - - - - 0x000EEF 00:8EDF: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000EF1 00:8EE1: 9D 7E 04  STA ram_047E,X
sub_8EE4_increase_pointer:
loc_8EE4_increase_pointer:
C D 0 - - - 0x000EF4 00:8EE4: E6 EC     INC ram_00EC
C - - - - - 0x000EF6 00:8EE6: D0 02     BNE bra_8EEA_RTS    ; if not overflow
C - - - - - 0x000EF8 00:8EE8: E6 ED     INC ram_00ED
bra_8EEA_RTS:
C - - - - - 0x000EFA 00:8EEA: 60        RTS



ofs_002_8EEB_D4:
C - - J - - 0x000EFB 00:8EEB: A0 00     LDY #$00
C - - - - - 0x000EFD 00:8EED: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000EFF 00:8EEF: 9D 79 04  STA ram_0479,X
C - - - - - 0x000F02 00:8EF2: 4C E4 8E  JMP loc_8EE4_increase_pointer


; bzk garbage
ofs_002_8EF5_D5:
- - - - - - 0x000F05 00:8EF5: A0 00     LDY #$00
- - - - - - 0x000F07 00:8EF7: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x000F09 00:8EF9: 9D 83 04  STA ram_0483,X
- - - - - - 0x000F0C 00:8EFC: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_8EFF_D6:
C - - J - - 0x000F0F 00:8EFF: A9 01     LDA #$01
C - - - - - 0x000F11 00:8F01: 9D C9 04  STA ram_04C9,X
C - - - - - 0x000F14 00:8F04: 60        RTS



ofs_002_8F05_D7:
C - - J - - 0x000F15 00:8F05: A0 00     LDY #$00
C - - - - - 0x000F17 00:8F07: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000F19 00:8F09: 48        PHA
C - - - - - 0x000F1A 00:8F0A: 8A        TXA
; * 04
C - - - - - 0x000F1B 00:8F0B: 0A        ASL
C - - - - - 0x000F1C 00:8F0C: 0A        ASL
C - - - - - 0x000F1D 00:8F0D: 18        CLC
C - - - - - 0x000F1E 00:8F0E: 7D 88 04  ADC ram_0488,X
C - - - - - 0x000F21 00:8F11: A8        TAY
C - - - - - 0x000F22 00:8F12: 68        PLA
C - - - - - 0x000F23 00:8F13: 99 B5 04  STA ram_04B5,Y
C - - - - - 0x000F26 00:8F16: 20 E4 8E  JSR sub_8EE4_increase_pointer
C - - - - - 0x000F29 00:8F19: A5 EC     LDA ram_00EC
C - - - - - 0x000F2B 00:8F1B: 99 8D 04  STA ram_048D,Y
C - - - - - 0x000F2E 00:8F1E: A5 ED     LDA ram_00ED
C - - - - - 0x000F30 00:8F20: 99 A1 04  STA ram_04A1,Y
C - - - - - 0x000F33 00:8F23: BC 88 04  LDY ram_0488,X
C - - - - - 0x000F36 00:8F26: C8        INY
C - - - - - 0x000F37 00:8F27: 98        TYA
C - - - - - 0x000F38 00:8F28: 29 03     AND #$03
C - - - - - 0x000F3A 00:8F2A: 9D 88 04  STA ram_0488,X
C - - - - - 0x000F3D 00:8F2D: 60        RTS



ofs_002_8F2E_D8:
C - - J - - 0x000F3E 00:8F2E: BC 88 04  LDY ram_0488,X
C - - - - - 0x000F41 00:8F31: 88        DEY
C - - - - - 0x000F42 00:8F32: 98        TYA
C - - - - - 0x000F43 00:8F33: 29 03     AND #$03
C - - - - - 0x000F45 00:8F35: 85 F8     STA ram_00F8
C - - - - - 0x000F47 00:8F37: 8A        TXA
; * 04
C - - - - - 0x000F48 00:8F38: 0A        ASL
C - - - - - 0x000F49 00:8F39: 0A        ASL
C - - - - - 0x000F4A 00:8F3A: 18        CLC
C - - - - - 0x000F4B 00:8F3B: 65 F8     ADC ram_00F8
C - - - - - 0x000F4D 00:8F3D: A8        TAY
C - - - - - 0x000F4E 00:8F3E: BE B5 04  LDX ram_04B5,Y
C - - - - - 0x000F51 00:8F41: CA        DEX
C - - - - - 0x000F52 00:8F42: 8A        TXA
C - - - - - 0x000F53 00:8F43: 99 B5 04  STA ram_04B5,Y
C - - - - - 0x000F56 00:8F46: F0 0E     BEQ bra_8F56
C - - - - - 0x000F58 00:8F48: B9 8D 04  LDA ram_048D,Y
C - - - - - 0x000F5B 00:8F4B: 85 EC     STA ram_00EC
C - - - - - 0x000F5D 00:8F4D: B9 A1 04  LDA ram_04A1,Y
C - - - - - 0x000F60 00:8F50: 85 ED     STA ram_00ED
C - - - - - 0x000F62 00:8F52: AE 36 04  LDX ram_0436
C - - - - - 0x000F65 00:8F55: 60        RTS
bra_8F56:
C - - - - - 0x000F66 00:8F56: AE 36 04  LDX ram_0436
C - - - - - 0x000F69 00:8F59: A5 F8     LDA ram_00F8
C - - - - - 0x000F6B 00:8F5B: 9D 88 04  STA ram_0488,X
C - - - - - 0x000F6E 00:8F5E: 60        RTS


; bzk garbage
ofs_002_8F5F_D9:
- - - - - - 0x000F6F 00:8F5F: AD 3E 04  LDA ram_043E
- - - - - - 0x000F72 00:8F62: 38        SEC
- - - - - - 0x000F73 00:8F63: E9 20     SBC #$20
- - - - - - 0x000F75 00:8F65: 85 F0     STA ram_00F0
- - - - - - 0x000F77 00:8F67: 0A        ASL
- - - - - - 0x000F78 00:8F68: 18        CLC
- - - - - - 0x000F79 00:8F69: 65 F0     ADC ram_00F0
- - - - - - 0x000F7B 00:8F6B: A8        TAY
- - - - - - 0x000F7C 00:8F6C: B9 17 A0  LDA tbl_A016_music_data + $01,Y
- - - - - - 0x000F7F 00:8F6F: 85 F0     STA ram_00F0
- - - - - - 0x000F81 00:8F71: B9 18 A0  LDA tbl_A016_music_data + $02,Y
- - - - - - 0x000F84 00:8F74: 85 F1     STA ram_00F1
- - - - - - 0x000F86 00:8F76: 8A        TXA
- - - - - - 0x000F87 00:8F77: 0A        ASL
- - - - - - 0x000F88 00:8F78: A8        TAY
- - - - - - 0x000F89 00:8F79: B1 F0     LDA (ram_00F0),Y
- - - - - - 0x000F8B 00:8F7B: 85 EC     STA ram_00EC
- - - - - - 0x000F8D 00:8F7D: C8        INY
- - - - - - 0x000F8E 00:8F7E: B1 F0     LDA (ram_00F0),Y
- - - - - - 0x000F90 00:8F80: 85 ED     STA ram_00ED
- - - - - - 0x000F92 00:8F82: 60        RTS



ofs_002_8F83_DA:
C - - J - - 0x000F93 00:8F83: A0 00     LDY #$00
C - - - - - 0x000F95 00:8F85: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000F97 00:8F87: 9D 6A 04  STA ram_046A,X
C - - - - - 0x000F9A 00:8F8A: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_8F8D_DB:
C - - J - - 0x000F9D 00:8F8D: A0 00     LDY #$00
C - - - - - 0x000F9F 00:8F8F: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000FA1 00:8F91: 9D 74 04  STA ram_0474,X
C - - - - - 0x000FA4 00:8F94: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_8F97_DC:
C - - J - - 0x000FA7 00:8F97: A0 00     LDY #$00
C - - - - - 0x000FA9 00:8F99: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000FAB 00:8F9B: 9D 6F 04  STA ram_046F,X
C - - - - - 0x000FAE 00:8F9E: 4C E4 8E  JMP loc_8EE4_increase_pointer


; bzk garbage
ofs_002_8FA1_DD:
- - - - - - 0x000FB1 00:8FA1: A0 00     LDY #$00
- - - - - - 0x000FB3 00:8FA3: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x000FB5 00:8FA5: 8D 3F 04  STA ram_043F
- - - - - - 0x000FB8 00:8FA8: 4C E4 8E  JMP loc_8EE4_increase_pointer


; bzk garbage
ofs_002_8FAB_DE:
- - - - - - 0x000FBB 00:8FAB: A0 00     LDY #$00
- - - - - - 0x000FBD 00:8FAD: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x000FBF 00:8FAF: 48        PHA
- - - - - - 0x000FC0 00:8FB0: C8        INY ; 01
- - - - - - 0x000FC1 00:8FB1: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x000FC3 00:8FB3: 85 ED     STA ram_00ED
- - - - - - 0x000FC5 00:8FB5: 68        PLA
- - - - - - 0x000FC6 00:8FB6: 85 EC     STA ram_00EC
- - - - - - 0x000FC8 00:8FB8: 60        RTS



ofs_002_8FB9_DF_jsr:
C - - J - - 0x000FC9 00:8FB9: A0 00     LDY #$00
C - - - - - 0x000FCB 00:8FBB: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000FCD 00:8FBD: 48        PHA
C - - - - - 0x000FCE 00:8FBE: C8        INY ; 01
C - - - - - 0x000FCF 00:8FBF: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x000FD1 00:8FC1: 48        PHA
C - - - - - 0x000FD2 00:8FC2: 8A        TXA
; * 08
C - - - - - 0x000FD3 00:8FC3: 0A        ASL
C - - - - - 0x000FD4 00:8FC4: 0A        ASL
C - - - - - 0x000FD5 00:8FC5: 0A        ASL
C - - - - - 0x000FD6 00:8FC6: 85 F8     STA ram_00F8
C - - - - - 0x000FD8 00:8FC8: BD CE 04  LDA ram_04CE,X
C - - - - - 0x000FDB 00:8FCB: 0A        ASL
C - - - - - 0x000FDC 00:8FCC: 18        CLC
C - - - - - 0x000FDD 00:8FCD: 65 F8     ADC ram_00F8
C - - - - - 0x000FDF 00:8FCF: A8        TAY
C - - - - - 0x000FE0 00:8FD0: A5 EC     LDA ram_00EC
C - - - - - 0x000FE2 00:8FD2: 18        CLC
C - - - - - 0x000FE3 00:8FD3: 69 02     ADC #< $0002
C - - - - - 0x000FE5 00:8FD5: 99 D3 04  STA ram_04D3,Y
C - - - - - 0x000FE8 00:8FD8: A5 ED     LDA ram_00ED
C - - - - - 0x000FEA 00:8FDA: 69 00     ADC #> $0002
C - - - - - 0x000FEC 00:8FDC: 99 D4 04  STA ram_04D4,Y
C - - - - - 0x000FEF 00:8FDF: BC CE 04  LDY ram_04CE,X
C - - - - - 0x000FF2 00:8FE2: C8        INY
C - - - - - 0x000FF3 00:8FE3: 98        TYA
C - - - - - 0x000FF4 00:8FE4: 29 03     AND #$03
C - - - - - 0x000FF6 00:8FE6: 9D CE 04  STA ram_04CE,X
C - - - - - 0x000FF9 00:8FE9: 68        PLA
C - - - - - 0x000FFA 00:8FEA: 85 ED     STA ram_00ED
C - - - - - 0x000FFC 00:8FEC: 68        PLA
C - - - - - 0x000FFD 00:8FED: 85 EC     STA ram_00EC
C - - - - - 0x000FFF 00:8FEF: 60        RTS



ofs_002_8FF0_E0_rts:
C - - J - - 0x001000 00:8FF0: BC CE 04  LDY ram_04CE,X
C - - - - - 0x001003 00:8FF3: 88        DEY
C - - - - - 0x001004 00:8FF4: 98        TYA
C - - - - - 0x001005 00:8FF5: 29 03     AND #$03
C - - - - - 0x001007 00:8FF7: 9D CE 04  STA ram_04CE,X
C - - - - - 0x00100A 00:8FFA: 0A        ASL
C - - - - - 0x00100B 00:8FFB: 85 F8     STA ram_00F8
C - - - - - 0x00100D 00:8FFD: 8A        TXA
; * 08
C - - - - - 0x00100E 00:8FFE: 0A        ASL
C - - - - - 0x00100F 00:8FFF: 0A        ASL
C - - - - - 0x001010 00:9000: 0A        ASL
C - - - - - 0x001011 00:9001: 18        CLC
C - - - - - 0x001012 00:9002: 65 F8     ADC ram_00F8
C - - - - - 0x001014 00:9004: A8        TAY
C - - - - - 0x001015 00:9005: B9 D3 04  LDA ram_04D3,Y
C - - - - - 0x001018 00:9008: 85 EC     STA ram_00EC
C - - - - - 0x00101A 00:900A: B9 D4 04  LDA ram_04D4,Y
C - - - - - 0x00101D 00:900D: 85 ED     STA ram_00ED
C - - - - - 0x00101F 00:900F: 60        RTS


; bzk garbage
ofs_002_9010_E1:
- - - - - - 0x001020 00:9010: A0 00     LDY #$00
- - - - - - 0x001022 00:9012: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x001024 00:9014: 8D 44 04  STA ram_0444
- - - - - - 0x001027 00:9017: 4C E4 8E  JMP loc_8EE4_increase_pointer


; bzk garbage
ofs_002_901A_E2:
- - - - - - 0x00102A 00:901A: A0 00     LDY #$00
- - - - - - 0x00102C 00:901C: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x00102E 00:901E: 9D FB 04  STA ram_04FB,X
- - - - - - 0x001031 00:9021: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_9024_E3:
C - - J - - 0x001034 00:9024: A0 00     LDY #$00
C - - - - - 0x001036 00:9026: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x001038 00:9028: 9D 00 05  STA ram_0500,X
C - - - - - 0x00103B 00:902B: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_902E_E4:
C - - J - - 0x00103E 00:902E: E0 03     CPX #$03
; bzk optimize, useless check
C - - - - - 0x001040 00:9030: B0 07     BCS bra_9039
C - - - - - 0x001042 00:9032: A0 00     LDY #$00
C - - - - - 0x001044 00:9034: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x001046 00:9036: 9D 0A 05  STA ram_050A,X
bra_9039:
C - - - - - 0x001049 00:9039: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_903C_E5:
C - - J - - 0x00104C 00:903C: E0 03     CPX #$03
; bzk optimize, useless check
C - - - - - 0x00104E 00:903E: B0 F9     BCS bra_9039
C - - - - - 0x001050 00:9040: A0 00     LDY #$00
C - - - - - 0x001052 00:9042: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x001054 00:9044: 9D 05 05  STA ram_0505,X
C - - - - - 0x001057 00:9047: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_904A_E6:
C - - J - - 0x00105A 00:904A: E0 03     CPX #$03
; bzk optimize, useless check
C - - - - - 0x00105C 00:904C: B0 07     BCS bra_9055
C - - - - - 0x00105E 00:904E: A0 00     LDY #$00
C - - - - - 0x001060 00:9050: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x001062 00:9052: 9D 16 05  STA ram_0516,X
bra_9055:
C - - - - - 0x001065 00:9055: 4C E4 8E  JMP loc_8EE4_increase_pointer


; bzk garbage
ofs_002_9058_E7:
- - - - - - 0x001068 00:9058: E0 03     CPX #$03
; bzk optimize, useless check?
- - - - - - 0x00106A 00:905A: B0 07     BCS bra_9063
- - - - - - 0x00106C 00:905C: A0 00     LDY #$00
- - - - - - 0x00106E 00:905E: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x001070 00:9060: 9D 1B 05  STA ram_051B,X
bra_9063:
- - - - - - 0x001073 00:9063: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_9066_E8:
C - - J - - 0x001076 00:9066: A0 00     LDY #$00
; bzk optimize, prepare proper values by default without a need for EOR FF
C - - - - - 0x001078 00:9068: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x00107A 00:906A: 49 FF     EOR #$FF
C - - - - - 0x00107C 00:906C: A8        TAY
C - - - - - 0x00107D 00:906D: C8        INY
C - - - - - 0x00107E 00:906E: 98        TYA
C - - - - - 0x00107F 00:906F: 18        CLC
C - - - - - 0x001080 00:9070: 7D 00 05  ADC ram_0500,X
C - - - - - 0x001083 00:9073: 30 08     BMI bra_907D
C - - - - - 0x001085 00:9075: C9 20     CMP #$20
C - - - - - 0x001087 00:9077: 90 06     BCC bra_907F
- - - - - - 0x001089 00:9079: A9 1F     LDA #$1F
- - - - - - 0x00108B 00:907B: D0 02     BNE bra_907F    ; jmp
bra_907D:
- - - - - - 0x00108D 00:907D: A9 00     LDA #$00
bra_907F:
C - - - - - 0x00108F 00:907F: 9D 00 05  STA ram_0500,X
C - - - - - 0x001092 00:9082: 4C E4 8E  JMP loc_8EE4_increase_pointer



ofs_002_9085_E9_set_loop_address:
C - - J - - 0x001095 00:9085: A5 EC     LDA ram_00EC
C - - - - - 0x001097 00:9087: 9D 26 05  STA ram_0526,X
C - - - - - 0x00109A 00:908A: A5 ED     LDA ram_00ED
C - - - - - 0x00109C 00:908C: 9D 2B 05  STA ram_052B,X
C - - - - - 0x00109F 00:908F: 60        RTS



ofs_002_9090_EA_repeat_from_loop_address:
C - - J - - 0x0010A0 00:9090: BD 26 05  LDA ram_0526,X
C - - - - - 0x0010A3 00:9093: 85 EC     STA ram_00EC
C - - - - - 0x0010A5 00:9095: BD 2B 05  LDA ram_052B,X
C - - - - - 0x0010A8 00:9098: 85 ED     STA ram_00ED
C - - - - - 0x0010AA 00:909A: 60        RTS


; bzk garbage
ofs_002_909B_EB:
- - - - - - 0x0010AB 00:909B: A0 00     LDY #$00
- - - - - - 0x0010AD 00:909D: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x0010AF 00:909F: 18        CLC
- - - - - - 0x0010B0 00:90A0: 7D 83 04  ADC ram_0483,X
- - - - - - 0x0010B3 00:90A3: 9D 83 04  STA ram_0483,X
- - - - - - 0x0010B6 00:90A6: 4C E4 8E  JMP loc_8EE4_increase_pointer



sub_90A9:
C - - - - - 0x0010B9 00:90A9: BD 79 04  LDA ram_0479,X
C - - - - - 0x0010BC 00:90AC: F0 0B     BEQ bra_90B9
C - - - - - 0x0010BE 00:90AE: AD 37 04  LDA ram_0437
C - - - - - 0x0010C1 00:90B1: 29 0F     AND #$0F
C - - - - - 0x0010C3 00:90B3: 20 7B 91  JSR sub_917B
C - - - - - 0x0010C6 00:90B6: 4C C0 90  JMP loc_90C0
bra_90B9:
- - - - - - 0x0010C9 00:90B9: A0 00     LDY #$00
- - - - - - 0x0010CB 00:90BB: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x0010CD 00:90BD: 20 E4 8E  JSR sub_8EE4_increase_pointer
loc_90C0:
C D 0 - - - 0x0010D0 00:90C0: 9D 60 04  STA ram_0460,X
C - - - - - 0x0010D3 00:90C3: 9D 65 04  STA ram_0465,X
C - - - - - 0x0010D6 00:90C6: A0 00     LDY #$00
C - - - - - 0x0010D8 00:90C8: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x0010DA 00:90CA: C9 D6     CMP #$D6
C - - - - - 0x0010DC 00:90CC: F0 47     BEQ bra_9115_D6
C - - - - - 0x0010DE 00:90CE: BD 60 04  LDA ram_0460,X
C - - - - - 0x0010E1 00:90D1: 9D 65 04  STA ram_0465,X
C - - - - - 0x0010E4 00:90D4: BD 6F 04  LDA ram_046F,X
C - - - - - 0x0010E7 00:90D7: F0 3B     BEQ bra_9114_RTS
C - - - - - 0x0010E9 00:90D9: BD 60 04  LDA ram_0460,X
sub_90DC:
C - - - - - 0x0010EC 00:90DC: 85 F1     STA ram_00F1
C - - - - - 0x0010EE 00:90DE: A9 00     LDA #$00
C - - - - - 0x0010F0 00:90E0: 85 F2     STA ram_00F2
C - - - - - 0x0010F2 00:90E2: 85 F3     STA ram_00F3
C - - - - - 0x0010F4 00:90E4: 85 F0     STA ram_00F0
C - - - - - 0x0010F6 00:90E6: BD 6F 04  LDA ram_046F,X
; * 20
C - - - - - 0x0010F9 00:90E9: 0A        ASL
C - - - - - 0x0010FA 00:90EA: 0A        ASL
C - - - - - 0x0010FB 00:90EB: 0A        ASL
C - - - - - 0x0010FC 00:90EC: 0A        ASL
C - - - - - 0x0010FD 00:90ED: 0A        ASL
C - - - - - 0x0010FE 00:90EE: 85 F8     STA ram_00F8
C - - - - - 0x001100 00:90F0: A0 02     LDY #$02
bra_90F2_loop:
C - - - - - 0x001102 00:90F2: 46 F0     LSR ram_00F0
C - - - - - 0x001104 00:90F4: 66 F1     ROR ram_00F1
C - - - - - 0x001106 00:90F6: 06 F8     ASL ram_00F8
C - - - - - 0x001108 00:90F8: 90 0D     BCC bra_9107
C - - - - - 0x00110A 00:90FA: A5 F2     LDA ram_00F2
C - - - - - 0x00110C 00:90FC: 18        CLC
C - - - - - 0x00110D 00:90FD: 65 F0     ADC ram_00F0
C - - - - - 0x00110F 00:90FF: 85 F2     STA ram_00F2
C - - - - - 0x001111 00:9101: A5 F3     LDA ram_00F3
C - - - - - 0x001113 00:9103: 65 F1     ADC ram_00F1
C - - - - - 0x001115 00:9105: 85 F3     STA ram_00F3
bra_9107:
C - - - - - 0x001117 00:9107: 88        DEY
C - - - - - 0x001118 00:9108: 10 E8     BPL bra_90F2_loop
C - - - - - 0x00111A 00:910A: 9D 65 04  STA ram_0465,X
C - - - - - 0x00111D 00:910D: D0 05     BNE bra_9114_RTS
- - - - - - 0x00111F 00:910F: A9 01     LDA #$01
- - - - - - 0x001121 00:9111: 9D 65 04  STA ram_0465,X
bra_9114_RTS:
C - - - - - 0x001124 00:9114: 60        RTS
bra_9115_D6:
C - - - - - 0x001125 00:9115: A9 00     LDA #$00
C - - - - - 0x001127 00:9117: 85 F8     STA ram_00F8
C - - - - - 0x001129 00:9119: 85 F1     STA ram_00F1
C - - - - - 0x00112B 00:911B: A8        TAY
bra_911C_loop:
C - - - - - 0x00112C 00:911C: 98        TYA
C - - - - - 0x00112D 00:911D: 48        PHA
C - - - - - 0x00112E 00:911E: B1 EC     LDA (ram_00EC),Y
C - - - - - 0x001130 00:9120: C9 D0     CMP #$D0
C - - - - - 0x001132 00:9122: 90 0C     BCC bra_9130
C - - - - - 0x001134 00:9124: C9 D6     CMP #$D6
C - - - - - 0x001136 00:9126: D0 02     BNE bra_912A
C - - - - - 0x001138 00:9128: E6 F8     INC ram_00F8
bra_912A:
loc_912A:
C D 0 - - - 0x00113A 00:912A: 68        PLA
C - - - - - 0x00113B 00:912B: A8        TAY
C - - - - - 0x00113C 00:912C: C8        INY
C - - - - - 0x00113D 00:912D: D0 ED     BNE bra_911C_loop
- - - - - - 0x00113F 00:912F: 60        RTS
bra_9130:
C - - - - - 0x001140 00:9130: A5 F8     LDA ram_00F8
C - - - - - 0x001142 00:9132: F0 28     BEQ bra_915C
C - - - - - 0x001144 00:9134: BD 79 04  LDA ram_0479,X
C - - - - - 0x001147 00:9137: F0 0A     BEQ bra_9143
C - - - - - 0x001149 00:9139: A5 F8     LDA ram_00F8
C - - - - - 0x00114B 00:913B: 29 0F     AND #$0F
C - - - - - 0x00114D 00:913D: 20 7B 91  JSR sub_917B
C - - - - - 0x001150 00:9140: 4C 4E 91  JMP loc_914E
bra_9143:
- - - - - - 0x001153 00:9143: 68        PLA
- - - - - - 0x001154 00:9144: A8        TAY
- - - - - - 0x001155 00:9145: C8        INY
- - - - - - 0x001156 00:9146: B1 EC     LDA (ram_00EC),Y
- - - - - - 0x001158 00:9148: 85 F9     STA ram_00F9
- - - - - - 0x00115A 00:914A: 98        TYA
- - - - - - 0x00115B 00:914B: 48        PHA
- - - - - - 0x00115C 00:914C: A5 F9     LDA ram_00F9
loc_914E:
C D 0 - - - 0x00115E 00:914E: 85 F0     STA ram_00F0
C - - - - - 0x001160 00:9150: 18        CLC
C - - - - - 0x001161 00:9151: 65 F1     ADC ram_00F1
C - - - - - 0x001163 00:9153: 85 F1     STA ram_00F1
C - - - - - 0x001165 00:9155: A9 00     LDA #$00
C - - - - - 0x001167 00:9157: 85 F8     STA ram_00F8
C - - - - - 0x001169 00:9159: 4C 2A 91  JMP loc_912A
bra_915C:
C - - - - - 0x00116C 00:915C: 68        PLA
C - - - - - 0x00116D 00:915D: A5 F1     LDA ram_00F1
C - - - - - 0x00116F 00:915F: 18        CLC
C - - - - - 0x001170 00:9160: 7D 60 04  ADC ram_0460,X
C - - - - - 0x001173 00:9163: 48        PHA
C - - - - - 0x001174 00:9164: A5 F0     LDA ram_00F0
C - - - - - 0x001176 00:9166: 48        PHA
C - - - - - 0x001177 00:9167: 20 DC 90  JSR sub_90DC
C - - - - - 0x00117A 00:916A: 68        PLA
C - - - - - 0x00117B 00:916B: 38        SEC
C - - - - - 0x00117C 00:916C: FD 65 04  SBC ram_0465,X
C - - - - - 0x00117F 00:916F: 85 F8     STA ram_00F8
C - - - - - 0x001181 00:9171: 68        PLA
C - - - - - 0x001182 00:9172: 85 F1     STA ram_00F1
C - - - - - 0x001184 00:9174: 38        SEC
C - - - - - 0x001185 00:9175: E5 F8     SBC ram_00F8
C - - - - - 0x001187 00:9177: 9D 65 04  STA ram_0465,X
C - - - - - 0x00118A 00:917A: 60        RTS



sub_917B:
C - - - - - 0x00118B 00:917B: 85 F8     STA ram_00F8
C - - - - - 0x00118D 00:917D: E6 F8     INC ram_00F8
C - - - - - 0x00118F 00:917F: BD 79 04  LDA ram_0479,X
C - - - - - 0x001192 00:9182: 85 FA     STA ram_00FA
C - - - - - 0x001194 00:9184: A9 00     LDA #$00
C - - - - - 0x001196 00:9186: 85 F9     STA ram_00F9
C - - - - - 0x001198 00:9188: A0 05     LDY #$05
bra_918A_loop:
C - - - - - 0x00119A 00:918A: 46 F8     LSR ram_00F8
C - - - - - 0x00119C 00:918C: 90 07     BCC bra_9195
C - - - - - 0x00119E 00:918E: A5 F9     LDA ram_00F9
C - - - - - 0x0011A0 00:9190: 18        CLC
C - - - - - 0x0011A1 00:9191: 65 FA     ADC ram_00FA
C - - - - - 0x0011A3 00:9193: 85 F9     STA ram_00F9
bra_9195:
C - - - - - 0x0011A5 00:9195: 06 FA     ASL ram_00FA
C - - - - - 0x0011A7 00:9197: 88        DEY
C - - - - - 0x0011A8 00:9198: D0 F0     BNE bra_918A_loop
C - - - - - 0x0011AA 00:919A: A5 F9     LDA ram_00F9
C - - - - - 0x0011AC 00:919C: 60        RTS



sub_919D:
C - - - - - 0x0011AD 00:919D: AD 37 04  LDA ram_0437
; / 10
C - - - - - 0x0011B0 00:91A0: 4A        LSR
C - - - - - 0x0011B1 00:91A1: 4A        LSR
C - - - - - 0x0011B2 00:91A2: 4A        LSR
C - - - - - 0x0011B3 00:91A3: 4A        LSR
C - - - - - 0x0011B4 00:91A4: 85 F8     STA ram_00F8
C - - - - - 0x0011B6 00:91A6: C6 F8     DEC ram_00F8
C - - - - - 0x0011B8 00:91A8: BC 7E 04  LDY ram_047E,X
C - - - - - 0x0011BB 00:91AB: 88        DEY
C - - - - - 0x0011BC 00:91AC: B9 B8 91  LDA tbl_91B8,Y
C - - - - - 0x0011BF 00:91AF: 18        CLC
C - - - - - 0x0011C0 00:91B0: 65 F8     ADC ram_00F8
C - - - - - 0x0011C2 00:91B2: 18        CLC
C - - - - - 0x0011C3 00:91B3: 7D 83 04  ADC ram_0483,X
C - - - - - 0x0011C6 00:91B6: A8        TAY
C - - - - - 0x0011C7 00:91B7: 60        RTS



tbl_91B8:
- - - - - - 0x0011C8 00:91B8: 00        .byte $00   ; 01 
- - - - - - 0x0011C9 00:91B9: 0C        .byte $0C   ; 02 
- D 0 - - - 0x0011CA 00:91BA: 18        .byte $18   ; 03 
- D 0 - - - 0x0011CB 00:91BB: 24        .byte $24   ; 04 
- D 0 - - - 0x0011CC 00:91BC: 30        .byte $30   ; 05 
- D 0 - - - 0x0011CD 00:91BD: 3C        .byte $3C   ; 06 
- D 0 - - - 0x0011CE 00:91BE: 48        .byte $48   ; 07 
- - - - - - 0x0011CF 00:91BF: 54        .byte $54   ; 08 



sub_91C0_indirect_jump_00F0:
C - - - - - 0x0011D0 00:91C0: 6C F0 00  JMP (ram_00F0)



sub_91C3_indirect_jump_00F6:
C - - - - - 0x0011D3 00:91C3: 6C F6 00  JMP (ram_00F6)



tbl_91C6:
- - - - - - 0x0011D6 00:91C6: F0        .byte $F0   ; 00 
- - - - - - 0x0011D7 00:91C7: F0        .byte $F0   ; 01 
- - - - - - 0x0011D8 00:91C8: F0        .byte $F0   ; 02 
- - - - - - 0x0011D9 00:91C9: F0        .byte $F0   ; 03 
- - - - - - 0x0011DA 00:91CA: F0        .byte $F0   ; 04 
- - - - - - 0x0011DB 00:91CB: F0        .byte $F0   ; 05 
- - - - - - 0x0011DC 00:91CC: F0        .byte $F0   ; 06 
- - - - - - 0x0011DD 00:91CD: F0        .byte $F0   ; 07 
- - - - - - 0x0011DE 00:91CE: F0        .byte $F0   ; 08 
- - - - - - 0x0011DF 00:91CF: F0        .byte $F0   ; 09 
- - - - - - 0x0011E0 00:91D0: 7E        .byte $7E   ; 0A 
- - - - - - 0x0011E1 00:91D1: 12        .byte $12   ; 0B 
- - - - - - 0x0011E2 00:91D2: AE        .byte $AE   ; 0C 
- - - - - - 0x0011E3 00:91D3: 4E        .byte $4E   ; 0D 
- - - - - - 0x0011E4 00:91D4: F3        .byte $F3   ; 0E 
- - - - - - 0x0011E5 00:91D5: 9F        .byte $9F   ; 0F 
- - - - - - 0x0011E6 00:91D6: 4D        .byte $4D   ; 10 
- - - - - - 0x0011E7 00:91D7: 01        .byte $01   ; 11 
- - - - - - 0x0011E8 00:91D8: B9        .byte $B9   ; 12 
- - - - - - 0x0011E9 00:91D9: 75        .byte $75   ; 13 
- - - - - - 0x0011EA 00:91DA: 35        .byte $35   ; 14 
- - - - - - 0x0011EB 00:91DB: F8        .byte $F8   ; 15 
- - - - - - 0x0011EC 00:91DC: BF        .byte $BF   ; 16 
- - - - - - 0x0011ED 00:91DD: 89        .byte $89   ; 17 
- D 0 - - - 0x0011EE 00:91DE: 57        .byte $57   ; 18 
- - - - - - 0x0011EF 00:91DF: 27        .byte $27   ; 19 
- D 0 - - - 0x0011F0 00:91E0: F9        .byte $F9   ; 1A 
- - - - - - 0x0011F1 00:91E1: CF        .byte $CF   ; 1B 
- D 0 - - - 0x0011F2 00:91E2: A6        .byte $A6   ; 1C 
- D 0 - - - 0x0011F3 00:91E3: 80        .byte $80   ; 1D 
- D 0 - - - 0x0011F4 00:91E4: 5C        .byte $5C   ; 1E 
- D 0 - - - 0x0011F5 00:91E5: 3A        .byte $3A   ; 1F 
- D 0 - - - 0x0011F6 00:91E6: 1A        .byte $1A   ; 20 
- D 0 - - - 0x0011F7 00:91E7: FC        .byte $FC   ; 21 
- D 0 - - - 0x0011F8 00:91E8: DF        .byte $DF   ; 22 
- D 0 - - - 0x0011F9 00:91E9: C4        .byte $C4   ; 23 
- D 0 - - - 0x0011FA 00:91EA: AB        .byte $AB   ; 24 
- D 0 - - - 0x0011FB 00:91EB: 93        .byte $93   ; 25 
- D 0 - - - 0x0011FC 00:91EC: 7C        .byte $7C   ; 26 
- D 0 - - - 0x0011FD 00:91ED: 67        .byte $67   ; 27 
- D 0 - - - 0x0011FE 00:91EE: 53        .byte $53   ; 28 
- D 0 - - - 0x0011FF 00:91EF: 40        .byte $40   ; 29 
- D 0 - - - 0x001200 00:91F0: 2E        .byte $2E   ; 2A 
- D 0 - - - 0x001201 00:91F1: 1D        .byte $1D   ; 2B 
- D 0 - - - 0x001202 00:91F2: 0D        .byte $0D   ; 2C 
- D 0 - - - 0x001203 00:91F3: FE        .byte $FE   ; 2D 
- D 0 - - - 0x001204 00:91F4: EF        .byte $EF   ; 2E 
- D 0 - - - 0x001205 00:91F5: E2        .byte $E2   ; 2F 
- D 0 - - - 0x001206 00:91F6: D5        .byte $D5   ; 30 
- D 0 - - - 0x001207 00:91F7: C9        .byte $C9   ; 31 
- D 0 - - - 0x001208 00:91F8: BE        .byte $BE   ; 32 
- D 0 - - - 0x001209 00:91F9: B3        .byte $B3   ; 33 
- D 0 - - - 0x00120A 00:91FA: A9        .byte $A9   ; 34 
- D 0 - - - 0x00120B 00:91FB: A0        .byte $A0   ; 35 
- D 0 - - - 0x00120C 00:91FC: 97        .byte $97   ; 36 
- D 0 - - - 0x00120D 00:91FD: 8E        .byte $8E   ; 37 
- D 0 - - - 0x00120E 00:91FE: 86        .byte $86   ; 38 
- D 0 - - - 0x00120F 00:91FF: 7F        .byte $7F   ; 39 
- D 0 - - - 0x001210 00:9200: 77        .byte $77   ; 3A 
- D 0 - - - 0x001211 00:9201: 71        .byte $71   ; 3B 
- D 0 - - - 0x001212 00:9202: 6A        .byte $6A   ; 3C 
- D 0 - - - 0x001213 00:9203: 64        .byte $64   ; 3D 
- D 0 - - - 0x001214 00:9204: 5F        .byte $5F   ; 3E 
- D 0 - - - 0x001215 00:9205: 59        .byte $59   ; 3F 
- D 0 - - - 0x001216 00:9206: 54        .byte $54   ; 40 
- D 0 - - - 0x001217 00:9207: 50        .byte $50   ; 41 
- D 0 - - - 0x001218 00:9208: 4B        .byte $4B   ; 42 
- D 0 - - - 0x001219 00:9209: 47        .byte $47   ; 43 
- D 0 - - - 0x00121A 00:920A: 43        .byte $43   ; 44 
- D 0 - - - 0x00121B 00:920B: 3F        .byte $3F   ; 45 
- - - - - - 0x00121C 00:920C: 3B        .byte $3B   ; 46 
- D 0 - - - 0x00121D 00:920D: 38        .byte $38   ; 47 
- D 0 - - - 0x00121E 00:920E: 35        .byte $35   ; 48 
- - - - - - 0x00121F 00:920F: 32        .byte $32   ; 49 
- D 0 - - - 0x001220 00:9210: 2F        .byte $2F   ; 4A 
- - - - - - 0x001221 00:9211: 2D        .byte $2D   ; 4B 
- - - - - - 0x001222 00:9212: 2A        .byte $2A   ; 4C 
- - - - - - 0x001223 00:9213: 28        .byte $28   ; 4D 
- - - - - - 0x001224 00:9214: 25        .byte $25   ; 4E 
- - - - - - 0x001225 00:9215: 23        .byte $23   ; 4F 
- - - - - - 0x001226 00:9216: 21        .byte $21   ; 50 
- - - - - - 0x001227 00:9217: 1F        .byte $1F   ; 51 
- - - - - - 0x001228 00:9218: 1D        .byte $1D   ; 52 
- - - - - - 0x001229 00:9219: 1C        .byte $1C   ; 53 
- - - - - - 0x00122A 00:921A: 1B        .byte $1B   ; 54 
- - - - - - 0x00122B 00:921B: 19        .byte $19   ; 55 
- - - - - - 0x00122C 00:921C: 18        .byte $18   ; 56 
- - - - - - 0x00122D 00:921D: 16        .byte $16   ; 57 
- - - - - - 0x00122E 00:921E: 15        .byte $15   ; 58 
- - - - - - 0x00122F 00:921F: 14        .byte $14   ; 59 
- - - - - - 0x001230 00:9220: 13        .byte $13   ; 5A 
- - - - - - 0x001231 00:9221: 12        .byte $12   ; 5B 
- - - - - - 0x001232 00:9222: 11        .byte $11   ; 5C 
- - - - - - 0x001233 00:9223: 10        .byte $10   ; 5D 
- - - - - - 0x001234 00:9224: 0F        .byte $0F   ; 5E 
- - - - - - 0x001235 00:9225: 0E        .byte $0E   ; 5F 



tbl_9226:
- - - - - - 0x001236 00:9226: 07        .byte $07   ; 00 
- - - - - - 0x001237 00:9227: 07        .byte $07   ; 01 
- - - - - - 0x001238 00:9228: 07        .byte $07   ; 02 
- - - - - - 0x001239 00:9229: 07        .byte $07   ; 03 
- - - - - - 0x00123A 00:922A: 07        .byte $07   ; 04 
- - - - - - 0x00123B 00:922B: 07        .byte $07   ; 05 
- - - - - - 0x00123C 00:922C: 07        .byte $07   ; 06 
- - - - - - 0x00123D 00:922D: 07        .byte $07   ; 07 
- - - - - - 0x00123E 00:922E: 07        .byte $07   ; 08 
- - - - - - 0x00123F 00:922F: 07        .byte $07   ; 09 
- - - - - - 0x001240 00:9230: 07        .byte $07   ; 0A 
- - - - - - 0x001241 00:9231: 07        .byte $07   ; 0B 
- - - - - - 0x001242 00:9232: 06        .byte $06   ; 0C 
- - - - - - 0x001243 00:9233: 06        .byte $06   ; 0D 
- - - - - - 0x001244 00:9234: 05        .byte $05   ; 0E 
- - - - - - 0x001245 00:9235: 05        .byte $05   ; 0F 
- - - - - - 0x001246 00:9236: 05        .byte $05   ; 10 
- - - - - - 0x001247 00:9237: 05        .byte $05   ; 11 
- - - - - - 0x001248 00:9238: 04        .byte $04   ; 12 
- - - - - - 0x001249 00:9239: 04        .byte $04   ; 13 
- - - - - - 0x00124A 00:923A: 04        .byte $04   ; 14 
- - - - - - 0x00124B 00:923B: 03        .byte $03   ; 15 
- - - - - - 0x00124C 00:923C: 03        .byte $03   ; 16 
- - - - - - 0x00124D 00:923D: 03        .byte $03   ; 17 
- D 0 - - - 0x00124E 00:923E: 03        .byte $03   ; 18 
- - - - - - 0x00124F 00:923F: 03        .byte $03   ; 19 
- D 0 - - - 0x001250 00:9240: 02        .byte $02   ; 1A 
- - - - - - 0x001251 00:9241: 02        .byte $02   ; 1B 
- D 0 - - - 0x001252 00:9242: 02        .byte $02   ; 1C 
- D 0 - - - 0x001253 00:9243: 02        .byte $02   ; 1D 
- D 0 - - - 0x001254 00:9244: 02        .byte $02   ; 1E 
- D 0 - - - 0x001255 00:9245: 02        .byte $02   ; 1F 
- D 0 - - - 0x001256 00:9246: 02        .byte $02   ; 20 
- D 0 - - - 0x001257 00:9247: 01        .byte $01   ; 21 
- D 0 - - - 0x001258 00:9248: 01        .byte $01   ; 22 
- D 0 - - - 0x001259 00:9249: 01        .byte $01   ; 23 
- D 0 - - - 0x00125A 00:924A: 01        .byte $01   ; 24 
- D 0 - - - 0x00125B 00:924B: 01        .byte $01   ; 25 
- D 0 - - - 0x00125C 00:924C: 01        .byte $01   ; 26 
- D 0 - - - 0x00125D 00:924D: 01        .byte $01   ; 27 
- D 0 - - - 0x00125E 00:924E: 01        .byte $01   ; 28 
- D 0 - - - 0x00125F 00:924F: 01        .byte $01   ; 29 
- D 0 - - - 0x001260 00:9250: 01        .byte $01   ; 2A 
- D 0 - - - 0x001261 00:9251: 01        .byte $01   ; 2B 
- D 0 - - - 0x001262 00:9252: 01        .byte $01   ; 2C 
- D 0 - - - 0x001263 00:9253: 00        .byte $00   ; 2D 
- D 0 - - - 0x001264 00:9254: 00        .byte $00   ; 2E 
- D 0 - - - 0x001265 00:9255: 00        .byte $00   ; 2F 
- D 0 - - - 0x001266 00:9256: 00        .byte $00   ; 30 
- D 0 - - - 0x001267 00:9257: 00        .byte $00   ; 31 
- D 0 - - - 0x001268 00:9258: 00        .byte $00   ; 32 
- D 0 - - - 0x001269 00:9259: 00        .byte $00   ; 33 
- D 0 - - - 0x00126A 00:925A: 00        .byte $00   ; 34 
- D 0 - - - 0x00126B 00:925B: 00        .byte $00   ; 35 
- D 0 - - - 0x00126C 00:925C: 00        .byte $00   ; 36 
- D 0 - - - 0x00126D 00:925D: 00        .byte $00   ; 37 
- D 0 - - - 0x00126E 00:925E: 00        .byte $00   ; 38 
- D 0 - - - 0x00126F 00:925F: 00        .byte $00   ; 39 
- D 0 - - - 0x001270 00:9260: 00        .byte $00   ; 3A 
- D 0 - - - 0x001271 00:9261: 00        .byte $00   ; 3B 
- D 0 - - - 0x001272 00:9262: 00        .byte $00   ; 3C 
- D 0 - - - 0x001273 00:9263: 00        .byte $00   ; 3D 
- D 0 - - - 0x001274 00:9264: 00        .byte $00   ; 3E 
- D 0 - - - 0x001275 00:9265: 00        .byte $00   ; 3F 
- D 0 - - - 0x001276 00:9266: 00        .byte $00   ; 40 
- D 0 - - - 0x001277 00:9267: 00        .byte $00   ; 41 
- D 0 - - - 0x001278 00:9268: 00        .byte $00   ; 42 
- D 0 - - - 0x001279 00:9269: 00        .byte $00   ; 43 
- D 0 - - - 0x00127A 00:926A: 00        .byte $00   ; 44 
- D 0 - - - 0x00127B 00:926B: 00        .byte $00   ; 45 
- - - - - - 0x00127C 00:926C: 00        .byte $00   ; 46 
- D 0 - - - 0x00127D 00:926D: 00        .byte $00   ; 47 
- D 0 - - - 0x00127E 00:926E: 00        .byte $00   ; 48 
- - - - - - 0x00127F 00:926F: 00        .byte $00   ; 49 
- D 0 - - - 0x001280 00:9270: 00        .byte $00   ; 4A 
- - - - - - 0x001281 00:9271: 00        .byte $00   ; 4B 
- - - - - - 0x001282 00:9272: 00        .byte $00   ; 4C 
- - - - - - 0x001283 00:9273: 00        .byte $00   ; 4D 
- - - - - - 0x001284 00:9274: 00        .byte $00   ; 4E 
- - - - - - 0x001285 00:9275: 00        .byte $00   ; 4F 
- - - - - - 0x001286 00:9276: 00        .byte $00   ; 50 
- - - - - - 0x001287 00:9277: 00        .byte $00   ; 51 
- - - - - - 0x001288 00:9278: 00        .byte $00   ; 52 
- - - - - - 0x001289 00:9279: 00        .byte $00   ; 53 
- - - - - - 0x00128A 00:927A: 00        .byte $00   ; 54 
- - - - - - 0x00128B 00:927B: 00        .byte $00   ; 55 
- - - - - - 0x00128C 00:927C: 00        .byte $00   ; 56 
- - - - - - 0x00128D 00:927D: 00        .byte $00   ; 57 
- - - - - - 0x00128E 00:927E: 00        .byte $00   ; 58 
- - - - - - 0x00128F 00:927F: 00        .byte $00   ; 59 
- - - - - - 0x001290 00:9280: 00        .byte $00   ; 5A 
- - - - - - 0x001291 00:9281: 00        .byte $00   ; 5B 
- - - - - - 0x001292 00:9282: 00        .byte $00   ; 5C 
- - - - - - 0x001293 00:9283: 00        .byte $00   ; 5D 
- - - - - - 0x001294 00:9284: 00        .byte $00   ; 5E 
- - - - - - 0x001295 00:9285: 00        .byte $00   ; 5F 



tbl_9286:
- D 0 - - - 0x001296 00:9286: FF        .byte $FF   ; 00 
- D 0 - - - 0x001297 00:9287: 12        .byte $12   ; 01 
- D 0 - - - 0x001298 00:9288: 20        .byte $20   ; 02 
- D 0 - - - 0x001299 00:9289: 20        .byte $20   ; 03 
- - - - - - 0x00129A 00:928A: 20        .byte $20   ; 04 
- D 0 - - - 0x00129B 00:928B: 20        .byte $20   ; 05 
- D 0 - - - 0x00129C 00:928C: 20        .byte $20   ; 06 
- D 0 - - - 0x00129D 00:928D: 20        .byte $20   ; 07 
- D 0 - - - 0x00129E 00:928E: 20        .byte $20   ; 08 
- D 0 - - - 0x00129F 00:928F: 20        .byte $20   ; 09 
- D 0 - - - 0x0012A0 00:9290: 20        .byte $20   ; 0A 
- D 0 - - - 0x0012A1 00:9291: 20        .byte $20   ; 0B 
- D 0 - - - 0x0012A2 00:9292: 10        .byte $10   ; 0C 
- D 0 - - - 0x0012A3 00:9293: 20        .byte $20   ; 0D 
- - - - - - 0x0012A4 00:9294: 20        .byte $20   ; 0E 
- D 0 - - - 0x0012A5 00:9295: 20        .byte $20   ; 0F 
- D 0 - - - 0x0012A6 00:9296: 20        .byte $20   ; 10 
- D 0 - - - 0x0012A7 00:9297: 20        .byte $20   ; 11 
- D 0 - - - 0x0012A8 00:9298: 20        .byte $20   ; 12 
- D 0 - - - 0x0012A9 00:9299: 20        .byte $20   ; 13 
- D 0 - - - 0x0012AA 00:929A: 20        .byte $20   ; 14 
- D 0 - - - 0x0012AB 00:929B: 08        .byte $08   ; 15 
- D 0 - - - 0x0012AC 00:929C: 20        .byte $20   ; 16 
- D 0 - - - 0x0012AD 00:929D: 20        .byte $20   ; 17 
- D 0 - - - 0x0012AE 00:929E: 20        .byte $20   ; 18 
- D 0 - - - 0x0012AF 00:929F: 0C        .byte $0C   ; 19 
- D 0 - - - 0x0012B0 00:92A0: 20        .byte $20   ; 1A 
- D 0 - - - 0x0012B1 00:92A1: 0E        .byte $0E   ; 1B 
- D 0 - - - 0x0012B2 00:92A2: 0A        .byte $0A   ; 1C 
- D 0 - - - 0x0012B3 00:92A3: 10        .byte $10   ; 1D 
- D 0 - - - 0x0012B4 00:92A4: 20        .byte $20   ; 1E 



loc_92A5:
C D 0 - - - 0x0012B5 00:92A5: A9 00     LDA #$00
C - - - - - 0x0012B7 00:92A7: A2 13     LDX #$13
bra_92A9_loop:
C - - - - - 0x0012B9 00:92A9: 9D 8F 05  STA ram_058F,X
C - - - - - 0x0012BC 00:92AC: CA        DEX
C - - - - - 0x0012BD 00:92AD: 10 FA     BPL bra_92A9_loop
C - - - - - 0x0012BF 00:92AF: A2 04     LDX #$04
bra_92B1_loop:
C - - - - - 0x0012C1 00:92B1: 9D A3 05  STA ram_05A3,X
C - - - - - 0x0012C4 00:92B4: CA        DEX
C - - - - - 0x0012C5 00:92B5: 10 FA     BPL bra_92B1_loop
C - - - - - 0x0012C7 00:92B7: 60        RTS



sub_92B8:
C - - - - - 0x0012C8 00:92B8: AD 39 04  LDA ram_0439_sfx
C - - - - - 0x0012CB 00:92BB: 30 03     BMI bra_92C0
C - - - - - 0x0012CD 00:92BD: 20 53 9B  JSR sub_9B53
bra_92C0:
C - - - - - 0x0012D0 00:92C0: AD 39 04  LDA ram_0439_sfx
C - - - - - 0x0012D3 00:92C3: 29 7F     AND #$7F
C - - - - - 0x0012D5 00:92C5: 0A        ASL
C - - - - - 0x0012D6 00:92C6: A8        TAY
C - - - - - 0x0012D7 00:92C7: B9 EF 92  LDA tbl_92EF_sound_data,Y
C - - - - - 0x0012DA 00:92CA: 85 F2     STA ram_00F2
C - - - - - 0x0012DC 00:92CC: B9 F0 92  LDA tbl_92EF_sound_data + $01,Y
C - - - - - 0x0012DF 00:92CF: 85 F3     STA ram_00F3
C - - - - - 0x0012E1 00:92D1: AD 39 04  LDA ram_0439_sfx
; C = 0
C - - - - - 0x0012E4 00:92D4: 2A        ROL
C - - - - - 0x0012E5 00:92D5: 2A        ROL
C - - - - - 0x0012E6 00:92D6: 2A        ROL
C - - - - - 0x0012E7 00:92D7: 29 02     AND #$02
C - - - - - 0x0012E9 00:92D9: A8        TAY ; 00/02
C - - - - - 0x0012EA 00:92DA: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x0012EC 00:92DC: 85 F0     STA ram_00F0
C - - - - - 0x0012EE 00:92DE: C8        INY ; 01/03
C - - - - - 0x0012EF 00:92DF: B1 F2     LDA (ram_00F2),Y
C - - - - - 0x0012F1 00:92E1: 85 F1     STA ram_00F1
C - - - - - 0x0012F3 00:92E3: 20 C0 91  JSR sub_91C0_indirect_jump_00F0
C - - - - - 0x0012F6 00:92E6: AD 39 04  LDA ram_0439_sfx
C - - - - - 0x0012F9 00:92E9: 09 80     ORA #$80
C - - - - - 0x0012FB 00:92EB: 8D 39 04  STA ram_0439_sfx
C - - - - - 0x0012FE 00:92EE: 60        RTS



tbl_92EF_sound_data:
- D 0 - - - 0x0012FF 00:92EF: 2D 93     .word _off000_932D_00
- D 0 - - - 0x001301 00:92F1: 47 93     .word _off000_9347_01
- D 0 - - - 0x001303 00:92F3: 74 93     .word _off000_9374_02
- D 0 - - - 0x001305 00:92F5: E8 93     .word _off000_93E8_03
- - - - - - 0x001307 00:92F7: 55 94     .word _off000_9455_04
- D 0 - - - 0x001309 00:92F9: 8A 94     .word _off000_948A_05
- D 0 - - - 0x00130B 00:92FB: C2 94     .word _off000_94C2_06
- D 0 - - - 0x00130D 00:92FD: E8 94     .word _off000_94E8_07
- D 0 - - - 0x00130F 00:92FF: 19 95     .word _off000_9519_08
- D 0 - - - 0x001311 00:9301: 4B 95     .word _off000_954B_09
- D 0 - - - 0x001313 00:9303: 71 95     .word _off000_9571_0A
- D 0 - - - 0x001315 00:9305: 84 95     .word _off000_9584_0B
- D 0 - - - 0x001317 00:9307: B6 95     .word _off000_95B6_0C
- D 0 - - - 0x001319 00:9309: EF 95     .word _off000_95EF_0D
- - - - - - 0x00131B 00:930B: 02 96     .word _off000_9602_0E
- D 0 - - - 0x00131D 00:930D: 15 96     .word _off000_9615_0F
- D 0 - - - 0x00131F 00:930F: 59 96     .word _off000_9659_10
- D 0 - - - 0x001321 00:9311: BD 96     .word _off000_96BD_11
- D 0 - - - 0x001323 00:9313: EE 96     .word _off000_96EE_12
- D 0 - - - 0x001325 00:9315: 32 97     .word _off000_9732_13
- D 0 - - - 0x001327 00:9317: 76 97     .word _off000_9776_14
- D 0 - - - 0x001329 00:9319: AE 97     .word _off000_97AE_15
- D 0 - - - 0x00132B 00:931B: 14 98     .word _off000_9814_16
- D 0 - - - 0x00132D 00:931D: 58 98     .word _off000_9858_17
- D 0 - - - 0x00132F 00:931F: 91 98     .word _off000_9891_18
- D 0 - - - 0x001331 00:9321: D9 98     .word _off000_98D9_19
- D 0 - - - 0x001333 00:9323: EC 98     .word _off000_98EC_1A
- D 0 - - - 0x001335 00:9325: FF 98     .word _off000_98FF_1B
- D 0 - - - 0x001337 00:9327: 12 99     .word _off000_9912_1C
- D 0 - - - 0x001339 00:9329: 4B 95     .word _off000_954B_1D
- D 0 - - - 0x00133B 00:932B: 35 99     .word _off000_9935_1E



_off000_932D_00:
- D 0 - I - 0x00133D 00:932D: 31 93     .word ofs_003_00_9331_00
- D 0 - I - 0x00133F 00:932F: 31 93     .word ofs_003_00_9331_01



ofs_003_00_9331_00:
ofs_003_00_9331_01:
; bzk optimize
C - - J - - 0x001341 00:9331: 4C 35 93  JMP loc_9335_disable_sound


; bzk garbage
- - - - - - 0x001344 00:9334: 60        RTS



loc_9335_disable_sound:
C D 0 - - - 0x001345 00:9335: A9 00     LDA #$00
C - - - - - 0x001347 00:9337: 8D 39 04  STA ram_0439_sfx
C - - - - - 0x00134A 00:933A: 8D 7B 05  STA ram_057B
C - - - - - 0x00134D 00:933D: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001350 00:9340: 8D 7D 05  STA ram_057B + $02
C - - - - - 0x001353 00:9343: 8D 7E 05  STA ram_057B + $03
C - - - - - 0x001356 00:9346: 60        RTS



_off000_9347_01:
- D 0 - I - 0x001357 00:9347: 4B 93     .word ofs_003_01_934B_00
- D 0 - I - 0x001359 00:9349: 55 93     .word ofs_003_01_9355_01



ofs_003_01_934B_00:
C - - J - - 0x00135B 00:934B: A9 25     LDA #$25
C - - - - - 0x00135D 00:934D: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001360 00:9350: A9 26     LDA #$26
C - - - - - 0x001362 00:9352: 8D AA 05  STA ram_05AA
ofs_003_01_9355_01:
C - - - - - 0x001365 00:9355: CE AA 05  DEC ram_05AA
C - - - - - 0x001368 00:9358: AD AA 05  LDA ram_05AA
C - - - - - 0x00136B 00:935B: C9 25     CMP #$25
C - - - - - 0x00136D 00:935D: F0 0E     BEQ bra_936D
C - - - - - 0x00136F 00:935F: C9 1C     CMP #$1C
C - - - - - 0x001371 00:9361: F0 03     BEQ bra_9366
C - - - - - 0x001373 00:9363: 4C B8 99  JMP loc_99B8
bra_9366:
C - - - - - 0x001376 00:9366: A9 01     LDA #$01
C - - - - - 0x001378 00:9368: A2 04     LDX #$04
C - - - - - 0x00137A 00:936A: 4C B5 99  JMP loc_99B5
bra_936D:
C - - - - - 0x00137D 00:936D: A9 0F     LDA #$0F
C - - - - - 0x00137F 00:936F: A2 04     LDX #$04
C - - - - - 0x001381 00:9371: 4C B5 99  JMP loc_99B5



_off000_9374_02:
- D 0 - I - 0x001384 00:9374: 78 93     .word ofs_003_02_9378_00
- D 0 - I - 0x001386 00:9376: 82 93     .word ofs_003_02_9382_01



ofs_003_02_9378_00:
C - - J - - 0x001388 00:9378: A9 3F     LDA #$3F
C - - - - - 0x00138A 00:937A: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00138D 00:937D: A9 40     LDA #$40
C - - - - - 0x00138F 00:937F: 8D AA 05  STA ram_05AA
ofs_003_02_9382_01:
C - - - - - 0x001392 00:9382: CE AA 05  DEC ram_05AA
C - - - - - 0x001395 00:9385: AD AA 05  LDA ram_05AA
C - - - - - 0x001398 00:9388: C9 3F     CMP #$3F
C - - - - - 0x00139A 00:938A: F0 2B     BEQ bra_93B7_3F
C - - - - - 0x00139C 00:938C: C9 38     CMP #$38
C - - - - - 0x00139E 00:938E: F0 51     BEQ bra_93E1_0B_16_21_2C_38
C - - - - - 0x0013A0 00:9390: C9 36     CMP #$36
C - - - - - 0x0013A2 00:9392: F0 2A     BEQ bra_93BE_36
C - - - - - 0x0013A4 00:9394: C9 2C     CMP #$2C
C - - - - - 0x0013A6 00:9396: F0 49     BEQ bra_93E1_0B_16_21_2C_38
C - - - - - 0x0013A8 00:9398: C9 2A     CMP #$2A
C - - - - - 0x0013AA 00:939A: F0 29     BEQ bra_93C5_2A
C - - - - - 0x0013AC 00:939C: C9 21     CMP #$21
C - - - - - 0x0013AE 00:939E: F0 41     BEQ bra_93E1_0B_16_21_2C_38
C - - - - - 0x0013B0 00:93A0: C9 1F     CMP #$1F
C - - - - - 0x0013B2 00:93A2: F0 28     BEQ bra_93CC_1F
C - - - - - 0x0013B4 00:93A4: C9 16     CMP #$16
C - - - - - 0x0013B6 00:93A6: F0 39     BEQ bra_93E1_0B_16_21_2C_38
C - - - - - 0x0013B8 00:93A8: C9 14     CMP #$14
C - - - - - 0x0013BA 00:93AA: F0 27     BEQ bra_93D3_14
C - - - - - 0x0013BC 00:93AC: C9 0B     CMP #$0B
C - - - - - 0x0013BE 00:93AE: F0 31     BEQ bra_93E1_0B_16_21_2C_38
C - - - - - 0x0013C0 00:93B0: C9 09     CMP #$09
C - - - - - 0x0013C2 00:93B2: F0 26     BEQ bra_93DA_09
C - - - - - 0x0013C4 00:93B4: 4C B8 99  JMP loc_99B8
bra_93B7_3F:
C - - - - - 0x0013C7 00:93B7: A9 00     LDA #$00
C - - - - - 0x0013C9 00:93B9: A2 04     LDX #$04
C - - - - - 0x0013CB 00:93BB: 4C B5 99  JMP loc_99B5
bra_93BE_36:
C - - - - - 0x0013CE 00:93BE: A9 09     LDA #$09
C - - - - - 0x0013D0 00:93C0: A2 04     LDX #$04
C - - - - - 0x0013D2 00:93C2: 4C B5 99  JMP loc_99B5
bra_93C5_2A:
C - - - - - 0x0013D5 00:93C5: A9 0B     LDA #$0B
C - - - - - 0x0013D7 00:93C7: A2 04     LDX #$04
C - - - - - 0x0013D9 00:93C9: 4C B5 99  JMP loc_99B5
bra_93CC_1F:
C - - - - - 0x0013DC 00:93CC: A9 0C     LDA #$0C
C - - - - - 0x0013DE 00:93CE: A2 04     LDX #$04
C - - - - - 0x0013E0 00:93D0: 4C B5 99  JMP loc_99B5
bra_93D3_14:
C - - - - - 0x0013E3 00:93D3: A9 0D     LDA #$0D
C - - - - - 0x0013E5 00:93D5: A2 04     LDX #$04
C - - - - - 0x0013E7 00:93D7: 4C B5 99  JMP loc_99B5
bra_93DA_09:
C - - - - - 0x0013EA 00:93DA: A9 0E     LDA #$0E
C - - - - - 0x0013EC 00:93DC: A2 04     LDX #$04
C - - - - - 0x0013EE 00:93DE: 4C B5 99  JMP loc_99B5
bra_93E1_0B_16_21_2C_38:
C - - - - - 0x0013F1 00:93E1: A9 0A     LDA #$0A
C - - - - - 0x0013F3 00:93E3: A2 04     LDX #$04
C - - - - - 0x0013F5 00:93E5: 4C B5 99  JMP loc_99B5



_off000_93E8_03:
- D 0 - I - 0x0013F8 00:93E8: EC 93     .word ofs_003_03_93EC_00
- D 0 - I - 0x0013FA 00:93EA: F6 93     .word ofs_003_03_93F6_01



ofs_003_03_93EC_00:
C - - J - - 0x0013FC 00:93EC: A9 2D     LDA #$2D
C - - - - - 0x0013FE 00:93EE: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001401 00:93F1: A9 2E     LDA #$2E
C - - - - - 0x001403 00:93F3: 8D AA 05  STA ram_05AA
ofs_003_03_93F6_01:
C - - - - - 0x001406 00:93F6: CE AA 05  DEC ram_05AA
C - - - - - 0x001409 00:93F9: AD AA 05  LDA ram_05AA
C - - - - - 0x00140C 00:93FC: C9 2D     CMP #$2D
C - - - - - 0x00140E 00:93FE: F0 47     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001410 00:9400: C9 29     CMP #$29
C - - - - - 0x001412 00:9402: F0 4A     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x001414 00:9404: C9 28     CMP #$28
C - - - - - 0x001416 00:9406: F0 3F     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001418 00:9408: C9 24     CMP #$24
C - - - - - 0x00141A 00:940A: F0 42     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x00141C 00:940C: C9 23     CMP #$23
C - - - - - 0x00141E 00:940E: F0 37     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001420 00:9410: C9 1F     CMP #$1F
C - - - - - 0x001422 00:9412: F0 3A     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x001424 00:9414: C9 1E     CMP #$1E
C - - - - - 0x001426 00:9416: F0 2F     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001428 00:9418: C9 1A     CMP #$1A
C - - - - - 0x00142A 00:941A: F0 32     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x00142C 00:941C: C9 19     CMP #$19
C - - - - - 0x00142E 00:941E: F0 27     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001430 00:9420: C9 15     CMP #$15
C - - - - - 0x001432 00:9422: F0 2A     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x001434 00:9424: C9 14     CMP #$14
C - - - - - 0x001436 00:9426: F0 1F     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001438 00:9428: C9 10     CMP #$10
C - - - - - 0x00143A 00:942A: F0 22     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x00143C 00:942C: C9 0F     CMP #$0F
C - - - - - 0x00143E 00:942E: F0 17     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001440 00:9430: C9 0B     CMP #$0B
C - - - - - 0x001442 00:9432: F0 1A     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x001444 00:9434: C9 0A     CMP #$0A
C - - - - - 0x001446 00:9436: F0 0F     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001448 00:9438: C9 06     CMP #$06
C - - - - - 0x00144A 00:943A: F0 12     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x00144C 00:943C: C9 05     CMP #$05
C - - - - - 0x00144E 00:943E: F0 07     BEQ bra_9447_05_0A_0F_14_19_1E_23_28_2D
C - - - - - 0x001450 00:9440: C9 01     CMP #$01
C - - - - - 0x001452 00:9442: F0 0A     BEQ bra_944E_01_06_0B_10_15_1A_1F_24_29
C - - - - - 0x001454 00:9444: 4C B8 99  JMP loc_99B8
bra_9447_05_0A_0F_14_19_1E_23_28_2D:
C - - - - - 0x001457 00:9447: A9 02     LDA #$02
C - - - - - 0x001459 00:9449: A2 04     LDX #$04
C - - - - - 0x00145B 00:944B: 4C B5 99  JMP loc_99B5
bra_944E_01_06_0B_10_15_1A_1F_24_29:
C - - - - - 0x00145E 00:944E: A9 0A     LDA #$0A
C - - - - - 0x001460 00:9450: A2 04     LDX #$04
C - - - - - 0x001462 00:9452: 4C B5 99  JMP loc_99B5



_off000_9455_04:
- - - - - - 0x001465 00:9455: 59 94     .word ofs_003_04_9459_00
- - - - - - 0x001467 00:9457: 63 94     .word ofs_003_04_9463_01



ofs_003_04_9459_00:
- - - - - - 0x001469 00:9459: A9 1E     LDA #$1E
- - - - - - 0x00146B 00:945B: 8D 7E 05  STA ram_057B + $03
- - - - - - 0x00146E 00:945E: A9 1F     LDA #$1F
- - - - - - 0x001470 00:9460: 8D AE 05  STA ram_05AE
ofs_003_04_9463_01:
- - - - - - 0x001473 00:9463: CE AE 05  DEC ram_05AE
- - - - - - 0x001476 00:9466: AD AE 05  LDA ram_05AE
- - - - - - 0x001479 00:9469: C9 1E     CMP #$1E
- - - - - - 0x00147B 00:946B: F0 0F     BEQ bra_947C_14_1E
- - - - - - 0x00147D 00:946D: C9 19     CMP #$19
- - - - - - 0x00147F 00:946F: F0 12     BEQ bra_9483_05_19
- - - - - - 0x001481 00:9471: C9 14     CMP #$14
- - - - - - 0x001483 00:9473: F0 07     BEQ bra_947C_14_1E
- - - - - - 0x001485 00:9475: C9 05     CMP #$05
- - - - - - 0x001487 00:9477: F0 0A     BEQ bra_9483_05_19
- - - - - - 0x001489 00:9479: 4C A7 99  JMP loc_99A7
bra_947C_14_1E:
- - - - - - 0x00148C 00:947C: A9 05     LDA #$05
- - - - - - 0x00148E 00:947E: A2 0C     LDX #$0C
- - - - - - 0x001490 00:9480: 4C A4 99  JMP loc_99A4
bra_9483_05_19:
- - - - - - 0x001493 00:9483: A9 06     LDA #$06
- - - - - - 0x001495 00:9485: A2 0C     LDX #$0C
- - - - - - 0x001497 00:9487: 4C A4 99  JMP loc_99A4



_off000_948A_05:
- D 0 - I - 0x00149A 00:948A: 8E 94     .word ofs_003_05_948E_00
- D 0 - I - 0x00149C 00:948C: 98 94     .word ofs_003_05_9498_01



ofs_003_05_948E_00:
C - - J - - 0x00149E 00:948E: A9 0E     LDA #$0E
C - - - - - 0x0014A0 00:9490: 8D 7E 05  STA ram_057B + $03
C - - - - - 0x0014A3 00:9493: A9 0F     LDA #$0F
C - - - - - 0x0014A5 00:9495: 8D AE 05  STA ram_05AE
ofs_003_05_9498_01:
C - - - - - 0x0014A8 00:9498: CE AE 05  DEC ram_05AE
C - - - - - 0x0014AB 00:949B: AD AE 05  LDA ram_05AE
C - - - - - 0x0014AE 00:949E: C9 0E     CMP #$0E
C - - - - - 0x0014B0 00:94A0: F0 0B     BEQ bra_94AD_0E
C - - - - - 0x0014B2 00:94A2: C9 0A     CMP #$0A
C - - - - - 0x0014B4 00:94A4: F0 15     BEQ bra_94BB_0A
C - - - - - 0x0014B6 00:94A6: C9 07     CMP #$07
C - - - - - 0x0014B8 00:94A8: F0 0A     BEQ bra_94B4_07
C - - - - - 0x0014BA 00:94AA: 4C A7 99  JMP loc_99A7
bra_94AD_0E:
C - - - - - 0x0014BD 00:94AD: A9 14     LDA #$14
C - - - - - 0x0014BF 00:94AF: A2 0C     LDX #$0C
C - - - - - 0x0014C1 00:94B1: 4C A4 99  JMP loc_99A4
bra_94B4_07:
C - - - - - 0x0014C4 00:94B4: A9 15     LDA #$15
C - - - - - 0x0014C6 00:94B6: A2 0C     LDX #$0C
C - - - - - 0x0014C8 00:94B8: 4C A4 99  JMP loc_99A4
bra_94BB_0A:
C - - - - - 0x0014CB 00:94BB: A9 16     LDA #$16
C - - - - - 0x0014CD 00:94BD: A2 0C     LDX #$0C
C - - - - - 0x0014CF 00:94BF: 4C A4 99  JMP loc_99A4



_off000_94C2_06:
- D 0 - I - 0x0014D2 00:94C2: C6 94     .word ofs_003_06_94C6_00
- D 0 - I - 0x0014D4 00:94C4: D0 94     .word ofs_003_06_94D0_01



ofs_003_06_94C6_00:
C - - J - - 0x0014D6 00:94C6: A9 23     LDA #$23
C - - - - - 0x0014D8 00:94C8: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x0014DB 00:94CB: A9 24     LDA #$24
C - - - - - 0x0014DD 00:94CD: 8D AA 05  STA ram_05AA
ofs_003_06_94D0_01:
C - - - - - 0x0014E0 00:94D0: CE AA 05  DEC ram_05AA
C - - - - - 0x0014E3 00:94D3: AD AA 05  LDA ram_05AA
C - - - - - 0x0014E6 00:94D6: C9 23     CMP #$23
C - - - - - 0x0014E8 00:94D8: F0 07     BEQ bra_94E1_0F_23
C - - - - - 0x0014EA 00:94DA: C9 0F     CMP #$0F
C - - - - - 0x0014EC 00:94DC: F0 03     BEQ bra_94E1_0F_23
C - - - - - 0x0014EE 00:94DE: 4C B8 99  JMP loc_99B8
bra_94E1_0F_23:
C - - - - - 0x0014F1 00:94E1: A9 10     LDA #$10
C - - - - - 0x0014F3 00:94E3: A2 04     LDX #$04
C - - - - - 0x0014F5 00:94E5: 4C B5 99  JMP loc_99B5



_off000_94E8_07:
- D 0 - I - 0x0014F8 00:94E8: EC 94     .word ofs_003_07_94EC_00
- D 0 - I - 0x0014FA 00:94EA: F6 94     .word ofs_003_07_94F6_01



ofs_003_07_94EC_00:
C - - J - - 0x0014FC 00:94EC: A9 21     LDA #$21
C - - - - - 0x0014FE 00:94EE: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001501 00:94F1: A9 22     LDA #$22
C - - - - - 0x001503 00:94F3: 8D AA 05  STA ram_05AA
ofs_003_07_94F6_01:
C - - - - - 0x001506 00:94F6: CE AA 05  DEC ram_05AA
C - - - - - 0x001509 00:94F9: AD AA 05  LDA ram_05AA
C - - - - - 0x00150C 00:94FC: C9 21     CMP #$21
C - - - - - 0x00150E 00:94FE: F0 0B     BEQ bra_950B_19_21
C - - - - - 0x001510 00:9500: C9 1C     CMP #$1C
C - - - - - 0x001512 00:9502: F0 0E     BEQ bra_9512_1C
C - - - - - 0x001514 00:9504: C9 19     CMP #$19
C - - - - - 0x001516 00:9506: F0 03     BEQ bra_950B_19_21
C - - - - - 0x001518 00:9508: 4C B8 99  JMP loc_99B8
bra_950B_19_21:
C - - - - - 0x00151B 00:950B: A9 11     LDA #$11
C - - - - - 0x00151D 00:950D: A2 04     LDX #$04
C - - - - - 0x00151F 00:950F: 4C B5 99  JMP loc_99B5
bra_9512_1C:
C - - - - - 0x001522 00:9512: A9 0A     LDA #$0A
C - - - - - 0x001524 00:9514: A2 04     LDX #$04
C - - - - - 0x001526 00:9516: 4C B5 99  JMP loc_99B5



_off000_9519_08:
- D 0 - I - 0x001529 00:9519: 1D 95     .word ofs_003_08_951D_00
- D 0 - I - 0x00152B 00:951B: 27 95     .word ofs_003_08_9527_01



ofs_003_08_951D_00:
C - - J - - 0x00152D 00:951D: A9 46     LDA #$46
C - - - - - 0x00152F 00:951F: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001532 00:9522: A9 47     LDA #$47
C - - - - - 0x001534 00:9524: 8D AA 05  STA ram_05AA
ofs_003_08_9527_01:
C - - - - - 0x001537 00:9527: CE AA 05  DEC ram_05AA
C - - - - - 0x00153A 00:952A: AD AA 05  LDA ram_05AA
C - - - - - 0x00153D 00:952D: C9 46     CMP #$46
C - - - - - 0x00153F 00:952F: F0 13     BEQ bra_9544_28_37_3C_41_46
C - - - - - 0x001541 00:9531: C9 41     CMP #$41
C - - - - - 0x001543 00:9533: F0 0F     BEQ bra_9544_28_37_3C_41_46
C - - - - - 0x001545 00:9535: C9 3C     CMP #$3C
C - - - - - 0x001547 00:9537: F0 0B     BEQ bra_9544_28_37_3C_41_46
C - - - - - 0x001549 00:9539: C9 37     CMP #$37
C - - - - - 0x00154B 00:953B: F0 07     BEQ bra_9544_28_37_3C_41_46
C - - - - - 0x00154D 00:953D: C9 28     CMP #$28
C - - - - - 0x00154F 00:953F: F0 03     BEQ bra_9544_28_37_3C_41_46
C - - - - - 0x001551 00:9541: 4C B8 99  JMP loc_99B8
bra_9544_28_37_3C_41_46:
C - - - - - 0x001554 00:9544: A9 12     LDA #$12
C - - - - - 0x001556 00:9546: A2 04     LDX #$04
C - - - - - 0x001558 00:9548: 4C B5 99  JMP loc_99B5



_off000_954B_09:
_off000_954B_1D:
- D 0 - I - 0x00155B 00:954B: 4F 95     .word ofs_003_09_0D_954F_00
- D 0 - I - 0x00155D 00:954D: 59 95     .word ofs_003_09_0D_9559_01



ofs_003_09_0D_954F_00:
C - - J - - 0x00155F 00:954F: A9 15     LDA #$15
C - - - - - 0x001561 00:9551: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001564 00:9554: A9 16     LDA #$16
C - - - - - 0x001566 00:9556: 8D AA 05  STA ram_05AA
ofs_003_09_0D_9559_01:
C - - - - - 0x001569 00:9559: CE AA 05  DEC ram_05AA
C - - - - - 0x00156C 00:955C: AD AA 05  LDA ram_05AA
C - - - - - 0x00156F 00:955F: C9 15     CMP #$15
C - - - - - 0x001571 00:9561: F0 07     BEQ bra_956A_12_15
C - - - - - 0x001573 00:9563: C9 12     CMP #$12
C - - - - - 0x001575 00:9565: F0 03     BEQ bra_956A_12_15
C - - - - - 0x001577 00:9567: 4C B8 99  JMP loc_99B8
bra_956A_12_15:
C - - - - - 0x00157A 00:956A: A9 32     LDA #$32
C - - - - - 0x00157C 00:956C: A2 04     LDX #$04
C - - - - - 0x00157E 00:956E: 4C B5 99  JMP loc_99B5



_off000_9571_0A:
- D 0 - I - 0x001581 00:9571: 75 95     .word ofs_003_0A_9575_00
- D 0 - I - 0x001583 00:9573: 81 95     .word ofs_003_0A_9581_01



ofs_003_0A_9575_00:
C - - J - - 0x001585 00:9575: A9 0F     LDA #$0F
C - - - - - 0x001587 00:9577: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00158A 00:957A: A9 17     LDA #$17
C - - - - - 0x00158C 00:957C: A2 04     LDX #$04
C - - - - - 0x00158E 00:957E: 20 C6 99  JSR sub_99C6
ofs_003_0A_9581_01:
C - - - - - 0x001591 00:9581: 4C B8 99  JMP loc_99B8



_off000_9584_0B:
- D 0 - I - 0x001594 00:9584: 88 95     .word ofs_003_0B_9588_00
- D 0 - I - 0x001596 00:9586: 92 95     .word ofs_003_0B_9592_01



ofs_003_0B_9588_00:
C - - J - - 0x001598 00:9588: A9 28     LDA #$28
C - - - - - 0x00159A 00:958A: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00159D 00:958D: A9 29     LDA #$29
C - - - - - 0x00159F 00:958F: 8D AA 05  STA ram_05AA
ofs_003_0B_9592_01:
C - - - - - 0x0015A2 00:9592: CE AA 05  DEC ram_05AA
C - - - - - 0x0015A5 00:9595: AD AA 05  LDA ram_05AA
C - - - - - 0x0015A8 00:9598: C9 28     CMP #$28
C - - - - - 0x0015AA 00:959A: F0 13     BEQ bra_95AF_14_19_1E_23_28
C - - - - - 0x0015AC 00:959C: C9 23     CMP #$23
C - - - - - 0x0015AE 00:959E: F0 0F     BEQ bra_95AF_14_19_1E_23_28
C - - - - - 0x0015B0 00:95A0: C9 1E     CMP #$1E
C - - - - - 0x0015B2 00:95A2: F0 0B     BEQ bra_95AF_14_19_1E_23_28
C - - - - - 0x0015B4 00:95A4: C9 19     CMP #$19
C - - - - - 0x0015B6 00:95A6: F0 07     BEQ bra_95AF_14_19_1E_23_28
C - - - - - 0x0015B8 00:95A8: C9 14     CMP #$14
C - - - - - 0x0015BA 00:95AA: F0 03     BEQ bra_95AF_14_19_1E_23_28
C - - - - - 0x0015BC 00:95AC: 4C B8 99  JMP loc_99B8
bra_95AF_14_19_1E_23_28:
C - - - - - 0x0015BF 00:95AF: A9 31     LDA #$31
C - - - - - 0x0015C1 00:95B1: A2 04     LDX #$04
C - - - - - 0x0015C3 00:95B3: 4C B5 99  JMP loc_99B5
_off000_95B6_0C:
- D 0 - I - 0x0015C6 00:95B6: BA 95     .word ofs_003_0C_95BA_00
- D 0 - I - 0x0015C8 00:95B8: C4 95     .word ofs_003_0C_95C4_01



ofs_003_0C_95BA_00:
C - - J - - 0x0015CA 00:95BA: A9 29     LDA #$29
C - - - - - 0x0015CC 00:95BC: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x0015CF 00:95BF: A9 2A     LDA #$2A
C - - - - - 0x0015D1 00:95C1: 8D AA 05  STA ram_05AA
ofs_003_0C_95C4_01:
C - - - - - 0x0015D4 00:95C4: CE AA 05  DEC ram_05AA
C - - - - - 0x0015D7 00:95C7: AD AA 05  LDA ram_05AA
C - - - - - 0x0015DA 00:95CA: C9 29     CMP #$29
C - - - - - 0x0015DC 00:95CC: F0 13     BEQ bra_95E1_1D_21_25_29
C - - - - - 0x0015DE 00:95CE: C9 25     CMP #$25
C - - - - - 0x0015E0 00:95D0: F0 0F     BEQ bra_95E1_1D_21_25_29
C - - - - - 0x0015E2 00:95D2: C9 21     CMP #$21
C - - - - - 0x0015E4 00:95D4: F0 0B     BEQ bra_95E1_1D_21_25_29
C - - - - - 0x0015E6 00:95D6: C9 1D     CMP #$1D
C - - - - - 0x0015E8 00:95D8: F0 07     BEQ bra_95E1_1D_21_25_29
C - - - - - 0x0015EA 00:95DA: C9 19     CMP #$19
C - - - - - 0x0015EC 00:95DC: F0 0A     BEQ bra_95E8_19
C - - - - - 0x0015EE 00:95DE: 4C B8 99  JMP loc_99B8
bra_95E1_1D_21_25_29:
C - - - - - 0x0015F1 00:95E1: A9 19     LDA #$19
C - - - - - 0x0015F3 00:95E3: A2 04     LDX #$04
C - - - - - 0x0015F5 00:95E5: 4C B5 99  JMP loc_99B5
bra_95E8_19:
C - - - - - 0x0015F8 00:95E8: A9 1A     LDA #$1A
C - - - - - 0x0015FA 00:95EA: A2 04     LDX #$04
C - - - - - 0x0015FC 00:95EC: 4C B5 99  JMP loc_99B5



_off000_95EF_0D:
- D 0 - I - 0x0015FF 00:95EF: F3 95     .word ofs_003_0D_95F3_00
- D 0 - I - 0x001601 00:95F1: FF 95     .word ofs_003_0D_95FF_01



ofs_003_0D_95F3_00:
C - - J - - 0x001603 00:95F3: A9 19     LDA #$19
C - - - - - 0x001605 00:95F5: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001608 00:95F8: A9 33     LDA #$33
C - - - - - 0x00160A 00:95FA: A2 04     LDX #$04
C - - - - - 0x00160C 00:95FC: 20 C6 99  JSR sub_99C6
ofs_003_0D_95FF_01:
C - - - - - 0x00160F 00:95FF: 4C B8 99  JMP loc_99B8



_off000_9602_0E:
- - - - - - 0x001612 00:9602: 06 96     .word ofs_003_0E_9606_00
- - - - - - 0x001614 00:9604: 12 96     .word ofs_003_0E_9612_01



ofs_003_0E_9606_00:
- - - - - - 0x001616 00:9606: A9 64     LDA #$64
- - - - - - 0x001618 00:9608: 8D 7C 05  STA ram_057B + $01
- - - - - - 0x00161B 00:960B: A9 1C     LDA #$1C
- - - - - - 0x00161D 00:960D: A2 04     LDX #$04
- - - - - - 0x00161F 00:960F: 20 C6 99  JSR sub_99C6
ofs_003_0E_9612_01:
- - - - - - 0x001622 00:9612: 4C B8 99  JMP loc_99B8



_off000_9615_0F:
- D 0 - I - 0x001625 00:9615: 19 96     .word ofs_003_0F_9619_00
- D 0 - I - 0x001627 00:9617: 23 96     .word ofs_003_0F_9623_01



ofs_003_0F_9619_00:
C - - J - - 0x001629 00:9619: A9 3E     LDA #$3E
C - - - - - 0x00162B 00:961B: 8D 7E 05  STA ram_057B + $03
C - - - - - 0x00162E 00:961E: A9 3F     LDA #$3F
C - - - - - 0x001630 00:9620: 8D AE 05  STA ram_05AE
ofs_003_0F_9623_01:
C - - - - - 0x001633 00:9623: CE AE 05  DEC ram_05AE
C - - - - - 0x001636 00:9626: AD AE 05  LDA ram_05AE
C - - - - - 0x001639 00:9629: C9 3E     CMP #$3E
C - - - - - 0x00163B 00:962B: F0 17     BEQ bra_9644_32_35_3B_3E
C - - - - - 0x00163D 00:962D: C9 3B     CMP #$3B
C - - - - - 0x00163F 00:962F: F0 13     BEQ bra_9644_32_35_3B_3E
C - - - - - 0x001641 00:9631: C9 35     CMP #$35
C - - - - - 0x001643 00:9633: F0 0F     BEQ bra_9644_32_35_3B_3E
C - - - - - 0x001645 00:9635: C9 32     CMP #$32
C - - - - - 0x001647 00:9637: F0 0B     BEQ bra_9644_32_35_3B_3E
C - - - - - 0x001649 00:9639: C9 2D     CMP #$2D
C - - - - - 0x00164B 00:963B: F0 0E     BEQ bra_964B_23_2D
C - - - - - 0x00164D 00:963D: C9 23     CMP #$23
C - - - - - 0x00164F 00:963F: F0 0A     BEQ bra_964B_23_2D
C - - - - - 0x001651 00:9641: 4C A7 99  JMP loc_99A7
bra_9644_32_35_3B_3E:
C - - - - - 0x001654 00:9644: A9 14     LDA #$14
C - - - - - 0x001656 00:9646: A2 0C     LDX #$0C
C - - - - - 0x001658 00:9648: 4C A4 99  JMP loc_99A4
bra_964B_23_2D:
C - - - - - 0x00165B 00:964B: A9 1D     LDA #$1D
C - - - - - 0x00165D 00:964D: A2 0C     LDX #$0C
C - - - - - 0x00165F 00:964F: 4C A4 99  JMP loc_99A4


; bzk garbage
- - - - - - 0x001662 00:9652: A9 0A     LDA #$0A
- - - - - - 0x001664 00:9654: A2 0C     LDX #$0C
- - - - - - 0x001666 00:9656: 4C A4 99  JMP loc_99A4



_off000_9659_10:
- D 0 - I - 0x001669 00:9659: 5D 96     .word ofs_003_10_965D_00
- D 0 - I - 0x00166B 00:965B: 67 96     .word ofs_003_10_9667_01



ofs_003_10_965D_00:
C - - J - - 0x00166D 00:965D: A9 53     LDA #$53
C - - - - - 0x00166F 00:965F: 8D 7E 05  STA ram_057B + $03
C - - - - - 0x001672 00:9662: A9 54     LDA #$54
C - - - - - 0x001674 00:9664: 8D AE 05  STA ram_05AE
ofs_003_10_9667_01:
C - - - - - 0x001677 00:9667: CE AE 05  DEC ram_05AE
C - - - - - 0x00167A 00:966A: AD AE 05  LDA ram_05AE
C - - - - - 0x00167D 00:966D: C9 53     CMP #$53
C - - - - - 0x00167F 00:966F: F0 1B     BEQ bra_968C_53
C - - - - - 0x001681 00:9671: C9 4E     CMP #$4E
C - - - - - 0x001683 00:9673: F0 1E     BEQ bra_9693_4E
C - - - - - 0x001685 00:9675: C9 49     CMP #$49
C - - - - - 0x001687 00:9677: F0 36     BEQ bra_96AF_49
C - - - - - 0x001689 00:9679: C9 44     CMP #$44
C - - - - - 0x00168B 00:967B: F0 2B     BEQ bra_96A8_44
C - - - - - 0x00168D 00:967D: C9 41     CMP #$41
C - - - - - 0x00168F 00:967F: F0 19     BEQ bra_969A_41
C - - - - - 0x001691 00:9681: C9 32     CMP #$32
C - - - - - 0x001693 00:9683: F0 1C     BEQ bra_96A1_32
C - - - - - 0x001695 00:9685: C9 28     CMP #$28
C - - - - - 0x001697 00:9687: F0 2D     BEQ bra_96B6_28
C - - - - - 0x001699 00:9689: 4C A7 99  JMP loc_99A7
bra_968C_53:
C - - - - - 0x00169C 00:968C: A9 14     LDA #$14
C - - - - - 0x00169E 00:968E: A2 0C     LDX #$0C
C - - - - - 0x0016A0 00:9690: 4C A4 99  JMP loc_99A4
bra_9693_4E:
C - - - - - 0x0016A3 00:9693: A9 15     LDA #$15
C - - - - - 0x0016A5 00:9695: A2 0C     LDX #$0C
C - - - - - 0x0016A7 00:9697: 4C A4 99  JMP loc_99A4
bra_969A_41:
C - - - - - 0x0016AA 00:969A: A9 16     LDA #$16
C - - - - - 0x0016AC 00:969C: A2 0C     LDX #$0C
C - - - - - 0x0016AE 00:969E: 4C A4 99  JMP loc_99A4
bra_96A1_32:
C - - - - - 0x0016B1 00:96A1: A9 07     LDA #$07
C - - - - - 0x0016B3 00:96A3: A2 0C     LDX #$0C
C - - - - - 0x0016B5 00:96A5: 4C A4 99  JMP loc_99A4
bra_96A8_44:
C - - - - - 0x0016B8 00:96A8: A9 0A     LDA #$0A
C - - - - - 0x0016BA 00:96AA: A2 0C     LDX #$0C
C - - - - - 0x0016BC 00:96AC: 4C A4 99  JMP loc_99A4
bra_96AF_49:
C - - - - - 0x0016BF 00:96AF: A9 1E     LDA #$1E
C - - - - - 0x0016C1 00:96B1: A2 0C     LDX #$0C
C - - - - - 0x0016C3 00:96B3: 4C A4 99  JMP loc_99A4
bra_96B6_28:
C - - - - - 0x0016C6 00:96B6: A9 1F     LDA #$1F
C - - - - - 0x0016C8 00:96B8: A2 0C     LDX #$0C
C - - - - - 0x0016CA 00:96BA: 4C A4 99  JMP loc_99A4



_off000_96BD_11:
- D 0 - I - 0x0016CD 00:96BD: C1 96     .word ofs_003_11_96C1_00
- D 0 - I - 0x0016CF 00:96BF: CB 96     .word ofs_003_11_96CB_01



ofs_003_11_96C1_00:
C - - J - - 0x0016D1 00:96C1: A9 0B     LDA #$0B
C - - - - - 0x0016D3 00:96C3: 8D 7E 05  STA ram_057B + $03
C - - - - - 0x0016D6 00:96C6: A9 0C     LDA #$0C
C - - - - - 0x0016D8 00:96C8: 8D AE 05  STA ram_05AE
ofs_003_11_96CB_01:
C - - - - - 0x0016DB 00:96CB: CE AE 05  DEC ram_05AE
C - - - - - 0x0016DE 00:96CE: AD AE 05  LDA ram_05AE
C - - - - - 0x0016E1 00:96D1: C9 0B     CMP #$0B
C - - - - - 0x0016E3 00:96D3: F0 0B     BEQ bra_96E0_03_0B
C - - - - - 0x0016E5 00:96D5: C9 06     CMP #$06
C - - - - - 0x0016E7 00:96D7: F0 0E     BEQ bra_96E7_06
C - - - - - 0x0016E9 00:96D9: C9 03     CMP #$03
C - - - - - 0x0016EB 00:96DB: F0 03     BEQ bra_96E0_03_0B
C - - - - - 0x0016ED 00:96DD: 4C A7 99  JMP loc_99A7
bra_96E0_03_0B:
C - - - - - 0x0016F0 00:96E0: A9 14     LDA #$14
C - - - - - 0x0016F2 00:96E2: A2 0C     LDX #$0C
C - - - - - 0x0016F4 00:96E4: 4C A4 99  JMP loc_99A4
bra_96E7_06:
C - - - - - 0x0016F7 00:96E7: A9 0A     LDA #$0A
C - - - - - 0x0016F9 00:96E9: A2 0C     LDX #$0C
C - - - - - 0x0016FB 00:96EB: 4C A4 99  JMP loc_99A4



_off000_96EE_12:
- D 0 - I - 0x0016FE 00:96EE: F2 96     .word ofs_003_12_96F2_00
- D 0 - I - 0x001700 00:96F0: FC 96     .word ofs_003_12_96FC_01



ofs_003_12_96F2_00:
C - - J - - 0x001702 00:96F2: A9 23     LDA #$23
C - - - - - 0x001704 00:96F4: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001707 00:96F7: A9 24     LDA #$24
C - - - - - 0x001709 00:96F9: 8D AA 05  STA ram_05AA
ofs_003_12_96FC_01:
C - - - - - 0x00170C 00:96FC: CE AA 05  DEC ram_05AA
C - - - - - 0x00170F 00:96FF: AD AA 05  LDA ram_05AA
C - - - - - 0x001712 00:9702: C9 23     CMP #$23
C - - - - - 0x001714 00:9704: F0 17     BEQ bra_971D_19_1E_23
C - - - - - 0x001716 00:9706: C9 20     CMP #$20
C - - - - - 0x001718 00:9708: F0 1A     BEQ bra_9724_1B_20
C - - - - - 0x00171A 00:970A: C9 1E     CMP #$1E
C - - - - - 0x00171C 00:970C: F0 0F     BEQ bra_971D_19_1E_23
C - - - - - 0x00171E 00:970E: C9 1B     CMP #$1B
C - - - - - 0x001720 00:9710: F0 12     BEQ bra_9724_1B_20
C - - - - - 0x001722 00:9712: C9 19     CMP #$19
C - - - - - 0x001724 00:9714: F0 07     BEQ bra_971D_19_1E_23
C - - - - - 0x001726 00:9716: C9 0A     CMP #$0A
C - - - - - 0x001728 00:9718: F0 11     BEQ bra_972B_0A
C - - - - - 0x00172A 00:971A: 4C B8 99  JMP loc_99B8
bra_971D_19_1E_23:
C - - - - - 0x00172D 00:971D: A9 20     LDA #$20
C - - - - - 0x00172F 00:971F: A2 04     LDX #$04
C - - - - - 0x001731 00:9721: 4C B5 99  JMP loc_99B5
bra_9724_1B_20:
C - - - - - 0x001734 00:9724: A9 0A     LDA #$0A
C - - - - - 0x001736 00:9726: A2 04     LDX #$04
C - - - - - 0x001738 00:9728: 4C B5 99  JMP loc_99B5
bra_972B_0A:
C - - - - - 0x00173B 00:972B: A9 21     LDA #$21
C - - - - - 0x00173D 00:972D: A2 04     LDX #$04
C - - - - - 0x00173F 00:972F: 4C B5 99  JMP loc_99B5



_off000_9732_13:
- D 0 - I - 0x001742 00:9732: 36 97     .word ofs_003_13_9736_00
- D 0 - I - 0x001744 00:9734: 40 97     .word ofs_003_13_9740_01



ofs_003_13_9736_00:
C - - J - - 0x001746 00:9736: A9 23     LDA #$23
C - - - - - 0x001748 00:9738: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00174B 00:973B: A9 24     LDA #$24
C - - - - - 0x00174D 00:973D: 8D AA 05  STA ram_05AA
ofs_003_13_9740_01:
C - - - - - 0x001750 00:9740: CE AA 05  DEC ram_05AA
C - - - - - 0x001753 00:9743: AD AA 05  LDA ram_05AA
C - - - - - 0x001756 00:9746: C9 23     CMP #$23
C - - - - - 0x001758 00:9748: F0 17     BEQ bra_9761_19_1E_23
C - - - - - 0x00175A 00:974A: C9 20     CMP #$20
C - - - - - 0x00175C 00:974C: F0 1A     BEQ bra_9768_1B_20
C - - - - - 0x00175E 00:974E: C9 1E     CMP #$1E
C - - - - - 0x001760 00:9750: F0 0F     BEQ bra_9761_19_1E_23
C - - - - - 0x001762 00:9752: C9 1B     CMP #$1B
C - - - - - 0x001764 00:9754: F0 12     BEQ bra_9768_1B_20
C - - - - - 0x001766 00:9756: C9 19     CMP #$19
C - - - - - 0x001768 00:9758: F0 07     BEQ bra_9761_19_1E_23
C - - - - - 0x00176A 00:975A: C9 0A     CMP #$0A
C - - - - - 0x00176C 00:975C: F0 11     BEQ bra_976F_0A
C - - - - - 0x00176E 00:975E: 4C B8 99  JMP loc_99B8
bra_9761_19_1E_23:
C - - - - - 0x001771 00:9761: A9 22     LDA #$22
C - - - - - 0x001773 00:9763: A2 04     LDX #$04
C - - - - - 0x001775 00:9765: 4C B5 99  JMP loc_99B5
bra_9768_1B_20:
C - - - - - 0x001778 00:9768: A9 0A     LDA #$0A
C - - - - - 0x00177A 00:976A: A2 04     LDX #$04
C - - - - - 0x00177C 00:976C: 4C B5 99  JMP loc_99B5
bra_976F_0A:
C - - - - - 0x00177F 00:976F: A9 23     LDA #$23
C - - - - - 0x001781 00:9771: A2 04     LDX #$04
C - - - - - 0x001783 00:9773: 4C B5 99  JMP loc_99B5



_off000_9776_14:
- D 0 - I - 0x001786 00:9776: 7A 97     .word ofs_003_14_977A_00
- D 0 - I - 0x001788 00:9778: 84 97     .word ofs_003_14_9784_01



ofs_003_14_977A_00:
C - - J - - 0x00178A 00:977A: A9 19     LDA #$19
C - - - - - 0x00178C 00:977C: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00178F 00:977F: A9 1A     LDA #$1A
C - - - - - 0x001791 00:9781: 8D AA 05  STA ram_05AA
ofs_003_14_9784_01:
C - - - - - 0x001794 00:9784: CE AA 05  DEC ram_05AA
C - - - - - 0x001797 00:9787: AD AA 05  LDA ram_05AA
C - - - - - 0x00179A 00:978A: C9 19     CMP #$19
C - - - - - 0x00179C 00:978C: F0 12     BEQ bra_97A0_19
C - - - - - 0x00179E 00:978E: C9 14     CMP #$14
C - - - - - 0x0017A0 00:9790: F0 07     BEQ bra_9799_14
C - - - - - 0x0017A2 00:9792: C9 0A     CMP #$0A
C - - - - - 0x0017A4 00:9794: F0 11     BEQ bra_97A7_0A
C - - - - - 0x0017A6 00:9796: 4C B8 99  JMP loc_99B8
bra_9799_14:
C - - - - - 0x0017A9 00:9799: A9 24     LDA #$24
C - - - - - 0x0017AB 00:979B: A2 04     LDX #$04
C - - - - - 0x0017AD 00:979D: 4C B5 99  JMP loc_99B5
bra_97A0_19:
C - - - - - 0x0017B0 00:97A0: A9 25     LDA #$25
C - - - - - 0x0017B2 00:97A2: A2 04     LDX #$04
C - - - - - 0x0017B4 00:97A4: 4C B5 99  JMP loc_99B5
bra_97A7_0A:
C - - - - - 0x0017B7 00:97A7: A9 26     LDA #$26
C - - - - - 0x0017B9 00:97A9: A2 04     LDX #$04
C - - - - - 0x0017BB 00:97AB: 4C B5 99  JMP loc_99B5



_off000_97AE_15:
- D 0 - I - 0x0017BE 00:97AE: B2 97     .word ofs_003_15_97B2_00
- D 0 - I - 0x0017C0 00:97B0: BC 97     .word ofs_003_15_97BC_01



ofs_003_15_97B2_00:
C - - J - - 0x0017C2 00:97B2: A9 2E     LDA #$2E
C - - - - - 0x0017C4 00:97B4: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x0017C7 00:97B7: A9 2F     LDA #$2F
C - - - - - 0x0017C9 00:97B9: 8D AA 05  STA ram_05AA
ofs_003_15_97BC_01:
C - - - - - 0x0017CC 00:97BC: CE AA 05  DEC ram_05AA
C - - - - - 0x0017CF 00:97BF: AD AA 05  LDA ram_05AA
C - - - - - 0x0017D2 00:97C2: C9 2E     CMP #$2E
C - - - - - 0x0017D4 00:97C4: F0 2B     BEQ bra_97F1_22_29_2E
C - - - - - 0x0017D6 00:97C6: C9 2B     CMP #$2B
C - - - - - 0x0017D8 00:97C8: F0 35     BEQ bra_97FF_19_1B_26_2B
C - - - - - 0x0017DA 00:97CA: C9 29     CMP #$29
C - - - - - 0x0017DC 00:97CC: F0 23     BEQ bra_97F1_22_29_2E
C - - - - - 0x0017DE 00:97CE: C9 26     CMP #$26
C - - - - - 0x0017E0 00:97D0: F0 2D     BEQ bra_97FF_19_1B_26_2B
C - - - - - 0x0017E2 00:97D2: C9 22     CMP #$22
C - - - - - 0x0017E4 00:97D4: F0 1B     BEQ bra_97F1_22_29_2E
C - - - - - 0x0017E6 00:97D6: C9 1E     CMP #$1E
C - - - - - 0x0017E8 00:97D8: F0 2C     BEQ bra_9806_14_19_1E
C - - - - - 0x0017EA 00:97DA: C9 1B     CMP #$1B
C - - - - - 0x0017EC 00:97DC: F0 21     BEQ bra_97FF_19_1B_26_2B
C - - - - - 0x0017EE 00:97DE: C9 19     CMP #$19
C - - - - - 0x0017F0 00:97E0: F0 24     BEQ bra_9806_14_19_1E
C - - - - - 0x0017F2 00:97E2: C9 16     CMP #$16
C - - - - - 0x0017F4 00:97E4: F0 19     BEQ bra_97FF_19_1B_26_2B
C - - - - - 0x0017F6 00:97E6: C9 14     CMP #$14
C - - - - - 0x0017F8 00:97E8: F0 1C     BEQ bra_9806_14_19_1E
C - - - - - 0x0017FA 00:97EA: C9 0C     CMP #$0C
C - - - - - 0x0017FC 00:97EC: F0 1F     BEQ bra_980D_0C
C - - - - - 0x0017FE 00:97EE: 4C B8 99  JMP loc_99B8
bra_97F1_22_29_2E:
C - - - - - 0x001801 00:97F1: A9 27     LDA #$27
C - - - - - 0x001803 00:97F3: A2 04     LDX #$04
C - - - - - 0x001805 00:97F5: 4C B5 99  JMP loc_99B5


; bzk garbage
- - - - - - 0x001808 00:97F8: A9 28     LDA #$28
- - - - - - 0x00180A 00:97FA: A2 04     LDX #$04
- - - - - - 0x00180C 00:97FC: 4C B5 99  JMP loc_99B5



bra_97FF_19_1B_26_2B:
C - - - - - 0x00180F 00:97FF: A9 0A     LDA #$0A
C - - - - - 0x001811 00:9801: A2 04     LDX #$04
C - - - - - 0x001813 00:9803: 4C B5 99  JMP loc_99B5
bra_9806_14_19_1E:
C - - - - - 0x001816 00:9806: A9 29     LDA #$29
C - - - - - 0x001818 00:9808: A2 04     LDX #$04
C - - - - - 0x00181A 00:980A: 4C B5 99  JMP loc_99B5
bra_980D_0C:
C - - - - - 0x00181D 00:980D: A9 2A     LDA #$2A
C - - - - - 0x00181F 00:980F: A2 04     LDX #$04
C - - - - - 0x001821 00:9811: 4C B5 99  JMP loc_99B5



_off000_9814_16:
- D 0 - I - 0x001824 00:9814: 18 98     .word ofs_003_16_9818_00
- D 0 - I - 0x001826 00:9816: 22 98     .word ofs_003_16_9822_01



ofs_003_16_9818_00:
C - - J - - 0x001828 00:9818: A9 19     LDA #$19
C - - - - - 0x00182A 00:981A: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00182D 00:981D: A9 1A     LDA #$1A
C - - - - - 0x00182F 00:981F: 8D AA 05  STA ram_05AA
ofs_003_16_9822_01:
C - - - - - 0x001832 00:9822: CE AA 05  DEC ram_05AA
C - - - - - 0x001835 00:9825: AD AA 05  LDA ram_05AA
C - - - - - 0x001838 00:9828: C9 19     CMP #$19
C - - - - - 0x00183A 00:982A: F0 17     BEQ bra_9843
C - - - - - 0x00183C 00:982C: C9 15     CMP #$15
C - - - - - 0x00183E 00:982E: F0 21     BEQ bra_9851
C - - - - - 0x001840 00:9830: C9 13     CMP #$13
C - - - - - 0x001842 00:9832: F0 0F     BEQ bra_9843
C - - - - - 0x001844 00:9834: C9 0F     CMP #$0F
C - - - - - 0x001846 00:9836: F0 19     BEQ bra_9851
C - - - - - 0x001848 00:9838: C9 0D     CMP #$0D
C - - - - - 0x00184A 00:983A: F0 07     BEQ bra_9843
C - - - - - 0x00184C 00:983C: C9 08     CMP #$08
C - - - - - 0x00184E 00:983E: F0 0A     BEQ bra_984A
C - - - - - 0x001850 00:9840: 4C B8 99  JMP loc_99B8
bra_9843:
C - - - - - 0x001853 00:9843: A9 2B     LDA #$2B
C - - - - - 0x001855 00:9845: A2 04     LDX #$04
C - - - - - 0x001857 00:9847: 4C B5 99  JMP loc_99B5
bra_984A:
C - - - - - 0x00185A 00:984A: A9 2C     LDA #$2C
C - - - - - 0x00185C 00:984C: A2 04     LDX #$04
C - - - - - 0x00185E 00:984E: 4C B5 99  JMP loc_99B5
bra_9851:
C - - - - - 0x001861 00:9851: A9 0A     LDA #$0A
C - - - - - 0x001863 00:9853: A2 04     LDX #$04
C - - - - - 0x001865 00:9855: 4C B5 99  JMP loc_99B5



_off000_9858_17:
- D 0 - I - 0x001868 00:9858: 5C 98     .word ofs_003_17_985C_00
- D 0 - I - 0x00186A 00:985A: 66 98     .word ofs_003_17_9866_01



ofs_003_17_985C_00:
C - - J - - 0x00186C 00:985C: A9 10     LDA #$10
C - - - - - 0x00186E 00:985E: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001871 00:9861: A9 11     LDA #$11
C - - - - - 0x001873 00:9863: 8D AA 05  STA ram_05AA
ofs_003_17_9866_01:
C - - - - - 0x001876 00:9866: CE AA 05  DEC ram_05AA
C - - - - - 0x001879 00:9869: AD AA 05  LDA ram_05AA
C - - - - - 0x00187C 00:986C: C9 10     CMP #$10
C - - - - - 0x00187E 00:986E: F0 13     BEQ bra_9883_04_0A_10
C - - - - - 0x001880 00:9870: C9 0C     CMP #$0C
C - - - - - 0x001882 00:9872: F0 16     BEQ bra_988A_06_0C
C - - - - - 0x001884 00:9874: C9 0A     CMP #$0A
C - - - - - 0x001886 00:9876: F0 0B     BEQ bra_9883_04_0A_10
C - - - - - 0x001888 00:9878: C9 06     CMP #$06
C - - - - - 0x00188A 00:987A: F0 0E     BEQ bra_988A_06_0C
C - - - - - 0x00188C 00:987C: C9 04     CMP #$04
C - - - - - 0x00188E 00:987E: F0 03     BEQ bra_9883_04_0A_10
C - - - - - 0x001890 00:9880: 4C B8 99  JMP loc_99B8
bra_9883_04_0A_10:
C - - - - - 0x001893 00:9883: A9 2D     LDA #$2D
C - - - - - 0x001895 00:9885: A2 04     LDX #$04
C - - - - - 0x001897 00:9887: 4C B5 99  JMP loc_99B5
bra_988A_06_0C:
C - - - - - 0x00189A 00:988A: A9 0A     LDA #$0A
C - - - - - 0x00189C 00:988C: A2 04     LDX #$04
C - - - - - 0x00189E 00:988E: 4C B5 99  JMP loc_99B5



_off000_9891_18:
- D 0 - I - 0x0018A1 00:9891: 95 98     .word ofs_003_18_9895_00
- D 0 - I - 0x0018A3 00:9893: 9F 98     .word ofs_003_18_989F_01



ofs_003_18_9895_00:
C - - J - - 0x0018A5 00:9895: A9 1F     LDA #$1F
C - - - - - 0x0018A7 00:9897: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x0018AA 00:989A: A9 20     LDA #$20
C - - - - - 0x0018AC 00:989C: 8D AA 05  STA ram_05AA
ofs_003_18_989F_01:
C - - - - - 0x0018AF 00:989F: CE AA 05  DEC ram_05AA
C - - - - - 0x0018B2 00:98A2: AD AA 05  LDA ram_05AA
C - - - - - 0x0018B5 00:98A5: C9 1F     CMP #$1F
C - - - - - 0x0018B7 00:98A7: F0 1B     BEQ bra_98C4_0F_17_1F
C - - - - - 0x0018B9 00:98A9: C9 1A     CMP #$1A
C - - - - - 0x0018BB 00:98AB: F0 1E     BEQ bra_98CB_09_12_1A
C - - - - - 0x0018BD 00:98AD: C9 17     CMP #$17
C - - - - - 0x0018BF 00:98AF: F0 13     BEQ bra_98C4_0F_17_1F
C - - - - - 0x0018C1 00:98B1: C9 12     CMP #$12
C - - - - - 0x0018C3 00:98B3: F0 16     BEQ bra_98CB_09_12_1A
C - - - - - 0x0018C5 00:98B5: C9 0F     CMP #$0F
C - - - - - 0x0018C7 00:98B7: F0 0B     BEQ bra_98C4_0F_17_1F
C - - - - - 0x0018C9 00:98B9: C9 09     CMP #$09
C - - - - - 0x0018CB 00:98BB: F0 0E     BEQ bra_98CB_09_12_1A
C - - - - - 0x0018CD 00:98BD: C9 06     CMP #$06
C - - - - - 0x0018CF 00:98BF: F0 11     BEQ bra_98D2
C - - - - - 0x0018D1 00:98C1: 4C B8 99  JMP loc_99B8
bra_98C4_0F_17_1F:
C - - - - - 0x0018D4 00:98C4: A9 2E     LDA #$2E
C - - - - - 0x0018D6 00:98C6: A2 04     LDX #$04
C - - - - - 0x0018D8 00:98C8: 4C B5 99  JMP loc_99B5
bra_98CB_09_12_1A:
C - - - - - 0x0018DB 00:98CB: A9 0A     LDA #$0A
C - - - - - 0x0018DD 00:98CD: A2 04     LDX #$04
C - - - - - 0x0018DF 00:98CF: 4C B5 99  JMP loc_99B5
bra_98D2:
C - - - - - 0x0018E2 00:98D2: A9 2F     LDA #$2F
C - - - - - 0x0018E4 00:98D4: A2 04     LDX #$04
C - - - - - 0x0018E6 00:98D6: 4C B5 99  JMP loc_99B5



_off000_98D9_19:
- D 0 - I - 0x0018E9 00:98D9: DD 98     .word ofs_003_19_98DD_00
- D 0 - I - 0x0018EB 00:98DB: E9 98     .word ofs_003_19_98E9_01



ofs_003_19_98DD_00:
C - - J - - 0x0018ED 00:98DD: A9 28     LDA #$28
C - - - - - 0x0018EF 00:98DF: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x0018F2 00:98E2: A9 00     LDA #$00
C - - - - - 0x0018F4 00:98E4: A2 04     LDX #$04
C - - - - - 0x0018F6 00:98E6: 20 C6 99  JSR sub_99C6
ofs_003_19_98E9_01:
C - - - - - 0x0018F9 00:98E9: 4C B8 99  JMP loc_99B8



_off000_98EC_1A:
- D 0 - I - 0x0018FC 00:98EC: F0 98     .word ofs_003_1A_98F0_00
- D 0 - I - 0x0018FE 00:98EE: FC 98     .word ofs_003_1A_98FC_01



ofs_003_1A_98F0_00:
C - - J - - 0x001900 00:98F0: A9 28     LDA #$28
C - - - - - 0x001902 00:98F2: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001905 00:98F5: A9 17     LDA #$17
C - - - - - 0x001907 00:98F7: A2 04     LDX #$04
C - - - - - 0x001909 00:98F9: 20 C6 99  JSR sub_99C6
ofs_003_1A_98FC_01:
C - - - - - 0x00190C 00:98FC: 4C B8 99  JMP loc_99B8



_off000_98FF_1B:
- D 0 - I - 0x00190F 00:98FF: 03 99     .word ofs_003_1B_9903_00
- D 0 - I - 0x001911 00:9901: 0F 99     .word ofs_003_1B_990F_01



ofs_003_1B_9903_00:
C - - J - - 0x001913 00:9903: A9 28     LDA #$28
C - - - - - 0x001915 00:9905: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001918 00:9908: A9 30     LDA #$30
C - - - - - 0x00191A 00:990A: A2 04     LDX #$04
C - - - - - 0x00191C 00:990C: 20 C6 99  JSR sub_99C6
ofs_003_1B_990F_01:
C - - - - - 0x00191F 00:990F: 4C B8 99  JMP loc_99B8



_off000_9912_1C:
- D 0 - I - 0x001922 00:9912: 16 99     .word ofs_003_1C_9916_00
- D 0 - I - 0x001924 00:9914: 20 99     .word ofs_003_1C_9920_01



ofs_003_1C_9916_00:
C - - J - - 0x001926 00:9916: A9 1E     LDA #$1E
C - - - - - 0x001928 00:9918: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00192B 00:991B: A9 1F     LDA #$1F
C - - - - - 0x00192D 00:991D: 8D AA 05  STA ram_05AA
ofs_003_1C_9920_01:
C - - - - - 0x001930 00:9920: CE AA 05  DEC ram_05AA
C - - - - - 0x001933 00:9923: AD AA 05  LDA ram_05AA
C - - - - - 0x001936 00:9926: C9 1E     CMP #$1E
C - - - - - 0x001938 00:9928: F0 9A     BEQ bra_98C4_0F_17_1F
C - - - - - 0x00193A 00:992A: C9 19     CMP #$19
C - - - - - 0x00193C 00:992C: F0 96     BEQ bra_98C4_0F_17_1F
C - - - - - 0x00193E 00:992E: C9 05     CMP #$05
C - - - - - 0x001940 00:9930: F0 92     BEQ bra_98C4_0F_17_1F
C - - - - - 0x001942 00:9932: 4C B8 99  JMP loc_99B8



_off000_9935_1E:
- D 0 - I - 0x001945 00:9935: 39 99     .word ofs_003_1E_9939_00
- D 0 - I - 0x001947 00:9937: 43 99     .word ofs_003_1E_9943_01



ofs_003_1E_9939_00:
C - - J - - 0x001949 00:9939: A9 1F     LDA #$1F
C - - - - - 0x00194B 00:993B: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x00194E 00:993E: A9 20     LDA #$20
C - - - - - 0x001950 00:9940: 8D AA 05  STA ram_05AA
ofs_003_1E_9943_01:
C - - - - - 0x001953 00:9943: CE AA 05  DEC ram_05AA
C - - - - - 0x001956 00:9946: AD AA 05  LDA ram_05AA
C - - - - - 0x001959 00:9949: C9 1F     CMP #$1F
C - - - - - 0x00195B 00:994B: F0 20     BEQ bra_996D_1F
C - - - - - 0x00195D 00:994D: C9 1A     CMP #$1A
C - - - - - 0x00195F 00:994F: F0 23     BEQ bra_9974_1A
C - - - - - 0x001961 00:9951: C9 17     CMP #$17
C - - - - - 0x001963 00:9953: F0 3B     BEQ bra_9990_17
C - - - - - 0x001965 00:9955: 90 03     BCC bra_995A_01_16
C - - - - - 0x001967 00:9957: 4C B8 99  JMP loc_99B8
bra_995A_01_16:
C - - - - - 0x00196A 00:995A: C9 12     CMP #$12
C - - - - - 0x00196C 00:995C: F0 24     BEQ bra_9982_09_12
C - - - - - 0x00196E 00:995E: C9 0F     CMP #$0F
C - - - - - 0x001970 00:9960: F0 27     BEQ bra_9989_0F
C - - - - - 0x001972 00:9962: C9 09     CMP #$09
C - - - - - 0x001974 00:9964: F0 1C     BEQ bra_9982_09_12
C - - - - - 0x001976 00:9966: C9 06     CMP #$06
C - - - - - 0x001978 00:9968: F0 11     BEQ bra_997B_06
C - - - - - 0x00197A 00:996A: 4C A7 99  JMP loc_99A7
bra_996D_1F:
C - - - - - 0x00197D 00:996D: A9 2E     LDA #$2E
C - - - - - 0x00197F 00:996F: A2 04     LDX #$04
C - - - - - 0x001981 00:9971: 4C B5 99  JMP loc_99B5
bra_9974_1A:
C - - - - - 0x001984 00:9974: A9 0A     LDA #$0A
C - - - - - 0x001986 00:9976: A2 04     LDX #$04
C - - - - - 0x001988 00:9978: 4C B5 99  JMP loc_99B5
bra_997B_06:
C - - - - - 0x00198B 00:997B: A9 0A     LDA #$0A
C - - - - - 0x00198D 00:997D: A2 0C     LDX #$0C
C - - - - - 0x00198F 00:997F: 4C A4 99  JMP loc_99A4
bra_9982_09_12:
C - - - - - 0x001992 00:9982: A9 05     LDA #$05
C - - - - - 0x001994 00:9984: A2 0C     LDX #$0C
C - - - - - 0x001996 00:9986: 4C A4 99  JMP loc_99A4
bra_9989_0F:
C - - - - - 0x001999 00:9989: A9 15     LDA #$15
C - - - - - 0x00199B 00:998B: A2 0C     LDX #$0C
C - - - - - 0x00199D 00:998D: 4C A4 99  JMP loc_99A4
bra_9990_17:
C - - - - - 0x0019A0 00:9990: CE 7C 05  DEC ram_057B + $01
C - - - - - 0x0019A3 00:9993: AE 7C 05  LDX ram_057B + $01
C - - - - - 0x0019A6 00:9996: A9 00     LDA #$00
C - - - - - 0x0019A8 00:9998: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x0019AB 00:999B: 8E 7E 05  STX ram_057B + $03
C - - - - - 0x0019AE 00:999E: A2 01     LDX #$01
; bzk optimize, JMP
C - - - - - 0x0019B0 00:99A0: 20 49 9B  JSR sub_9B49
C - - - - - 0x0019B3 00:99A3: 60        RTS



loc_99A4:
C D 0 - - - 0x0019B4 00:99A4: 20 C6 99  JSR sub_99C6
loc_99A7:
C D 0 - - - 0x0019B7 00:99A7: CE 7E 05  DEC ram_057B + $03
C - - - - - 0x0019BA 00:99AA: D0 08     BNE bra_99B4_RTS
C - - - - - 0x0019BC 00:99AC: A2 03     LDX #$03
C - - - - - 0x0019BE 00:99AE: 20 49 9B  JSR sub_9B49
C - - - - - 0x0019C1 00:99B1: 4C E4 9A  JMP loc_9AE4_disable_sound
bra_99B4_RTS:
C - - - - - 0x0019C4 00:99B4: 60        RTS



loc_99B5:
C D 0 - - - 0x0019C5 00:99B5: 20 C6 99  JSR sub_99C6
loc_99B8:
C D 0 - - - 0x0019C8 00:99B8: CE 7C 05  DEC ram_057B + $01
C - - - - - 0x0019CB 00:99BB: D0 08     BNE bra_99C5_RTS
C - - - - - 0x0019CD 00:99BD: A2 01     LDX #$01
C - - - - - 0x0019CF 00:99BF: 20 49 9B  JSR sub_9B49
C - - - - - 0x0019D2 00:99C2: 4C 35 93  JMP loc_9335_disable_sound
bra_99C5_RTS:
C - - - - - 0x0019D5 00:99C5: 60        RTS



sub_99C6:
C - - - - - 0x0019D6 00:99C6: 8D B0 05  STA ram_05B0
C - - - - - 0x0019D9 00:99C9: 38        SEC
C - - - - - 0x0019DA 00:99CA: E9 3F     SBC #$3F
C - - - - - 0x0019DC 00:99CC: F0 02     BEQ bra_99D0
C - - - - - 0x0019DE 00:99CE: B0 23     BCS bra_99F3
bra_99D0:
C - - - - - 0x0019E0 00:99D0: AD B0 05  LDA ram_05B0
; * 04
C - - - - - 0x0019E3 00:99D3: 0A        ASL
C - - - - - 0x0019E4 00:99D4: 0A        ASL
C - - - - - 0x0019E5 00:99D5: A8        TAY
C - - - - - 0x0019E6 00:99D6: A9 03     LDA #$03
C - - - - - 0x0019E8 00:99D8: 85 F8     STA ram_00F8
bra_99DA_loop:
C - - - - - 0x0019EA 00:99DA: B9 0C 9A  LDA tbl_9A0C,Y
C - - - - - 0x0019ED 00:99DD: 9D 8F 05  STA ram_058F,X
C - - - - - 0x0019F0 00:99E0: E8        INX
C - - - - - 0x0019F1 00:99E1: C8        INY
C - - - - - 0x0019F2 00:99E2: C6 F8     DEC ram_00F8
C - - - - - 0x0019F4 00:99E4: 10 F4     BPL bra_99DA_loop
loc_99E6:
C - - - - - 0x0019F6 00:99E6: CA        DEX
C - - - - - 0x0019F7 00:99E7: 8A        TXA
; / 04
C - - - - - 0x0019F8 00:99E8: 4A        LSR
C - - - - - 0x0019F9 00:99E9: 4A        LSR
C - - - - - 0x0019FA 00:99EA: AA        TAX
C - - - - - 0x0019FB 00:99EB: A9 0F     LDA #$0F
C - - - - - 0x0019FD 00:99ED: 9D A3 05  STA ram_05A3,X
C - - - - - 0x001A00 00:99F0: 4C F6 9A  JMP loc_9AF6
bra_99F3:
- - - - - - 0x001A03 00:99F3: AD B0 05  LDA ram_05B0
; * 04
- - - - - - 0x001A06 00:99F6: 0A        ASL
- - - - - - 0x001A07 00:99F7: 0A        ASL
- - - - - - 0x001A08 00:99F8: A8        TAY
- - - - - - 0x001A09 00:99F9: A9 03     LDA #$03
- - - - - - 0x001A0B 00:99FB: 85 F8     STA ram_00F8
bra_99FD_loop:
- - - - - - 0x001A0D 00:99FD: B9 81 9B  LDA tbl_9B81,Y
- - - - - - 0x001A10 00:9A00: 9D 8F 05  STA ram_058F,X
- - - - - - 0x001A13 00:9A03: E8        INX
- - - - - - 0x001A14 00:9A04: C8        INY
- - - - - - 0x001A15 00:9A05: C6 F8     DEC ram_00F8
- - - - - - 0x001A17 00:9A07: 10 F4     BPL bra_99FD_loop
- - - - - - 0x001A19 00:9A09: 4C E6 99  JMP loc_99E6



tbl_9A0C:
- D 0 - - - 0x001A1C 00:9A0C: 7E        .byte $7E, $9C, $6A, $00   ; 00 
- D 0 - - - 0x001A20 00:9A10: BF        .byte $BF, $93, $AA, $00   ; 01 
- D 0 - - - 0x001A24 00:9A14: 7F        .byte $7F, $00, $3F, $00   ; 02 
- - - - - - 0x001A28 00:9A18: BF        .byte $BF, $00, $47, $00   ; 03 
- - - - - - 0x001A2C 00:9A1C: BA        .byte $BA, $00, $47, $00   ; 04 
- D 0 - - - 0x001A30 00:9A20: 1A        .byte $1A, $04, $04, $08   ; 05 
- - - - - - 0x001A34 00:9A24: 3F        .byte $3F, $0A, $0A, $08   ; 06 
- D 0 - - - 0x001A38 00:9A28: 22        .byte $22, $00, $07, $00   ; 07 
- - - - - - 0x001A3C 00:9A2C: 0C        .byte $0C, $00, $08, $F8   ; 08 
- D 0 - - - 0x001A40 00:9A30: 7E        .byte $7E, $9C, $8E, $00   ; 09 
- D 0 - - - 0x001A44 00:9A34: 00        .byte $00, $00, $00, $00   ; 0A 
- D 0 - - - 0x001A48 00:9A38: 7E        .byte $7E, $9C, $A0, $00   ; 0B 
- D 0 - - - 0x001A4C 00:9A3C: 7E        .byte $7E, $9C, $B3, $00   ; 0C 
- D 0 - - - 0x001A50 00:9A40: 7E        .byte $7E, $9C, $C9, $00   ; 0D 
- D 0 - - - 0x001A54 00:9A44: 7E        .byte $7E, $9C, $E2, $00   ; 0E 
- D 0 - - - 0x001A58 00:9A48: BF        .byte $BF, $93, $D5, $00   ; 0F 
- D 0 - - - 0x001A5C 00:9A4C: FE        .byte $FE, $9C, $6A, $00   ; 10 
- D 0 - - - 0x001A60 00:9A50: 7F        .byte $7F, $00, $AB, $01   ; 11 
- D 0 - - - 0x001A64 00:9A54: 3C        .byte $3C, $CB, $1D, $F1   ; 12 
- - - - - - 0x001A68 00:9A58: BC        .byte $BC, $CB, $4B, $00   ; 13 
- D 0 - - - 0x001A6C 00:9A5C: 07        .byte $07, $00, $09, $F8   ; 14 
- D 0 - - - 0x001A70 00:9A60: 04        .byte $04, $00, $09, $F8   ; 15 
- D 0 - - - 0x001A74 00:9A64: BF        .byte $BF, $A3, $1D, $01   ; 16 
- D 0 - - - 0x001A78 00:9A68: 3F        .byte $3F, $A3, $7F, $00   ; 17 
- - - - - - 0x001A7C 00:9A6C: 3F        .byte $3F, $91, $7F, $00   ; 18 
- D 0 - - - 0x001A80 00:9A70: BF        .byte $BF, $B3, $7F, $00   ; 19 
- D 0 - - - 0x001A84 00:9A74: BF        .byte $BF, $B3, $FC, $01   ; 1A 
- - - - - - 0x001A88 00:9A78: 7F        .byte $7F, $91, $43, $00   ; 1B 
- - - - - - 0x001A8C 00:9A7C: 3F        .byte $3F, $F6, $27, $03   ; 1C 
- D 0 - - - 0x001A90 00:9A80: 08        .byte $08, $00, $03, $F8   ; 1D 
- D 0 - - - 0x001A94 00:9A84: BF        .byte $BF, $A3, $13, $01   ; 1E 
- D 0 - - - 0x001A98 00:9A88: 37        .byte $37, $00, $0D, $01   ; 1F 
- D 0 - - - 0x001A9C 00:9A8C: BE        .byte $BE, $AB, $D5, $00   ; 20 
- D 0 - - - 0x001AA0 00:9A90: B6        .byte $B6, $AB, $D5, $00   ; 21 
- D 0 - - - 0x001AA4 00:9A94: BE        .byte $BE, $A3, $75, $00   ; 22 
- D 0 - - - 0x001AA8 00:9A98: B6        .byte $B6, $A3, $71, $00   ; 23 
- D 0 - - - 0x001AAC 00:9A9C: FE        .byte $FE, $00, $7F, $00   ; 24 
- D 0 - - - 0x001AB0 00:9AA0: FE        .byte $FE, $00, $FE, $00   ; 25 
- D 0 - - - 0x001AB4 00:9AA4: F3        .byte $F3, $00, $7F, $00   ; 26 
- D 0 - - - 0x001AB8 00:9AA8: FF        .byte $FF, $00, $FE, $00   ; 27 
- - - - - - 0x001ABC 00:9AAC: F7        .byte $F7, $00, $FE, $00   ; 28 
- D 0 - - - 0x001AC0 00:9AB0: FF        .byte $FF, $00, $A9, $00   ; 29 
- D 0 - - - 0x001AC4 00:9AB4: F7        .byte $F7, $00, $A9, $00   ; 2A 
- D 0 - - - 0x001AC8 00:9AB8: FF        .byte $FF, $00, $3F, $00   ; 2B 
- D 0 - - - 0x001ACC 00:9ABC: F6        .byte $F6, $00, $3F, $00   ; 2C 
- D 0 - - - 0x001AD0 00:9AC0: 7F        .byte $7F, $AA, $3F, $00   ; 2D 
- D 0 - - - 0x001AD4 00:9AC4: BF        .byte $BF, $9B, $B9, $04   ; 2E 
- D 0 - - - 0x001AD8 00:9AC8: B8        .byte $B8, $9B, $89, $03   ; 2F 
- D 0 - - - 0x001ADC 00:9ACC: BE        .byte $BE, $94, $35, $00   ; 30 
- D 0 - - - 0x001AE0 00:9AD0: FF        .byte $FF, $A2, $7F, $00   ; 31 
- D 0 - - - 0x001AE4 00:9AD4: BF        .byte $BF, $A2, $E2, $00   ; 32 
- D 0 - - - 0x001AE8 00:9AD8: 7F        .byte $7F, $B3, $E2, $00   ; 33 
- - - - - - 0x001AEC 00:9ADC: E0        .byte $E0, $9A, $E0, $9A   ; 34 


; bzk garbage
- - - - - - 0x001AF0 00:9AE0: 4C 35 93  JMP loc_9335_disable_sound


; bzk garbage
- - - - - - 0x001AF3 00:9AE3: 60        RTS



loc_9AE4_disable_sound:
; bzk optimize, same code as 0x001345
C D 0 - - - 0x001AF4 00:9AE4: A9 00     LDA #$00
C - - - - - 0x001AF6 00:9AE6: 8D 39 04  STA ram_0439_sfx
C - - - - - 0x001AF9 00:9AE9: 8D 7B 05  STA ram_057B
C - - - - - 0x001AFC 00:9AEC: 8D 7C 05  STA ram_057B + $01
C - - - - - 0x001AFF 00:9AEF: 8D 7D 05  STA ram_057B + $02
C - - - - - 0x001B02 00:9AF2: 8D 7E 05  STA ram_057B + $03
C - - - - - 0x001B05 00:9AF5: 60        RTS



loc_9AF6:
C D 0 - - - 0x001B06 00:9AF6: F0 3C     BEQ bra_9B34_RTS
C - - - - - 0x001B08 00:9AF8: 8A        TXA
; * 04
C - - - - - 0x001B09 00:9AF9: 0A        ASL
C - - - - - 0x001B0A 00:9AFA: 0A        ASL
C - - - - - 0x001B0B 00:9AFB: A8        TAY
C - - - - - 0x001B0C 00:9AFC: B9 8F 05  LDA ram_058F,Y
C - - - - - 0x001B0F 00:9AFF: 29 10     AND #$10
C - - - - - 0x001B11 00:9B01: D0 31     BNE bra_9B34_RTS
C - - - - - 0x001B13 00:9B03: 98        TYA
C - - - - - 0x001B14 00:9B04: 48        PHA
C - - - - - 0x001B15 00:9B05: B9 8F 05  LDA ram_058F,Y
C - - - - - 0x001B18 00:9B08: 29 0F     AND #$0F
C - - - - - 0x001B1A 00:9B0A: A8        TAY
C - - - - - 0x001B1B 00:9B0B: B9 35 9B  LDA tbl_9B35,Y
C - - - - - 0x001B1E 00:9B0E: 9D C1 05  STA ram_05C1,X
C - - - - - 0x001B21 00:9B11: 68        PLA
C - - - - - 0x001B22 00:9B12: A8        TAY
C - - - - - 0x001B23 00:9B13: A9 00     LDA #$00
C - - - - - 0x001B25 00:9B15: 9D BD 05  STA ram_05BD,X
C - - - - - 0x001B28 00:9B18: AD 45 9B  LDA tbl_9B45
C - - - - - 0x001B2B 00:9B1B: 9D B1 05  STA ram_05B1,X
C - - - - - 0x001B2E 00:9B1E: AD 46 9B  LDA tbl_9B46
C - - - - - 0x001B31 00:9B21: 9D B5 05  STA ram_05B5,X
C - - - - - 0x001B34 00:9B24: B9 8F 05  LDA ram_058F,Y
C - - - - - 0x001B37 00:9B27: 29 F0     AND #$F0
C - - - - - 0x001B39 00:9B29: 0D 46 9B  ORA tbl_9B46
C - - - - - 0x001B3C 00:9B2C: 09 10     ORA #$10
C - - - - - 0x001B3E 00:9B2E: 99 8F 05  STA ram_058F,Y
C - - - - - 0x001B41 00:9B31: 9D B9 05  STA ram_05B9,X
bra_9B34_RTS:
C - - - - - 0x001B44 00:9B34: 60        RTS



tbl_9B35:
- D 0 - - - 0x001B45 00:9B35: 00        .byte $00   ; 00 
- - - - - - 0x001B46 00:9B36: 00        .byte $00   ; 01 
- D 0 - - - 0x001B47 00:9B37: AA        .byte $AA   ; 02 
- - - - - - 0x001B48 00:9B38: 80        .byte $80   ; 03 
- D 0 - - - 0x001B49 00:9B39: 66        .byte $66   ; 04 
- - - - - - 0x001B4A 00:9B3A: 55        .byte $55   ; 05 
- - - - - - 0x001B4B 00:9B3B: 49        .byte $49   ; 06 
- D 0 - - - 0x001B4C 00:9B3C: 40        .byte $40   ; 07 
- D 0 - - - 0x001B4D 00:9B3D: 38        .byte $38   ; 08 
- - - - - - 0x001B4E 00:9B3E: 33        .byte $33   ; 09 
- - - - - - 0x001B4F 00:9B3F: 2F        .byte $2F   ; 0A 
- - - - - - 0x001B50 00:9B40: 2B        .byte $2B   ; 0B 
- - - - - - 0x001B51 00:9B41: 27        .byte $27   ; 0C 
- - - - - - 0x001B52 00:9B42: 25        .byte $25   ; 0D 
- - - - - - 0x001B53 00:9B43: 22        .byte $22   ; 0E 
- - - - - - 0x001B54 00:9B44: 20        .byte $20   ; 0F 



tbl_9B45:   ; bzk optimize
- D 0 - - - 0x001B55 00:9B45: 00        .byte $00   ; 



tbl_9B46:   ; bzk optimize
- D 0 - - - 0x001B56 00:9B46: 0A        .byte $0A   ; 


; bzk garbage
- - - - - - 0x001B57 00:9B47: C0        .byte $C0   ; 
- - - - - - 0x001B58 00:9B48: 00        .byte $00   ; 



sub_9B49:
C - - - - - 0x001B59 00:9B49: E0 04     CPX #$04
C - - - - - 0x001B5B 00:9B4B: B0 05     BCS bra_9B52_RTS
C - - - - - 0x001B5D 00:9B4D: A9 0F     LDA #$0F
C - - - - - 0x001B5F 00:9B4F: 9D 76 05  STA ram_0576,X
bra_9B52_RTS:
C - - - - - 0x001B62 00:9B52: 60        RTS



sub_9B53:
C - - - - - 0x001B63 00:9B53: A2 00     LDX #$00
bra_9B55_loop:
C - - - - - 0x001B65 00:9B55: BD 7B 05  LDA ram_057B,X
C - - - - - 0x001B68 00:9B58: F0 08     BEQ bra_9B62
C - - - - - 0x001B6A 00:9B5A: 20 68 9B  JSR sub_9B68
C - - - - - 0x001B6D 00:9B5D: A9 00     LDA #$00
C - - - - - 0x001B6F 00:9B5F: 9D 7B 05  STA ram_057B,X
bra_9B62:
C - - - - - 0x001B72 00:9B62: E8        INX
C - - - - - 0x001B73 00:9B63: E0 04     CPX #$04
C - - - - - 0x001B75 00:9B65: 90 EE     BCC bra_9B55_loop
C - - - - - 0x001B77 00:9B67: 60        RTS



sub_9B68:
C - - - - - 0x001B78 00:9B68: 8A        TXA
C - - - - - 0x001B79 00:9B69: 48        PHA
; * 04
C - - - - - 0x001B7A 00:9B6A: 0A        ASL
C - - - - - 0x001B7B 00:9B6B: 0A        ASL
C - - - - - 0x001B7C 00:9B6C: AA        TAX
C - - - - - 0x001B7D 00:9B6D: E0 08     CPX #$08
C - - - - - 0x001B7F 00:9B6F: F0 08     BEQ bra_9B79
C - - - - - 0x001B81 00:9B71: A9 10     LDA #$10
C - - - - - 0x001B83 00:9B73: 9D 00 40  STA $4000,X ; 4004 400C 
loc_9B76:
C - - - - - 0x001B86 00:9B76: 68        PLA
C - - - - - 0x001B87 00:9B77: AA        TAX
C - - - - - 0x001B88 00:9B78: 60        RTS
bra_9B79:
- - - - - - 0x001B89 00:9B79: A9 00     LDA #$00
- - - - - - 0x001B8B 00:9B7B: 8D 08 40  STA $4008
- - - - - - 0x001B8E 00:9B7E: 4C 76 9B  JMP loc_9B76



tbl_9B81:
- - - - - - 0x001B91 00:9B81: BF        .byte $BF, $9F, $57, $01   ; 



tbl_9B85:
- D 0 - - - 0x001B95 00:9B85: BD 9B     .word _off001_9BBD_00
- D 0 - - - 0x001B97 00:9B87: C4 9B     .word _off001_9BC4_01
- - - - - - 0x001B99 00:9B89: CE 9B     .word _off001_9BCE_02
- - - - - - 0x001B9B 00:9B8B: D5 9B     .word _off001_9BD5_03
- D 0 - - - 0x001B9D 00:9B8D: E8 9B     .word _off001_9BE8_04
- - - - - - 0x001B9F 00:9B8F: FB 9B     .word _off001_9BFB_05
- D 0 - - - 0x001BA1 00:9B91: 08 9C     .word _off001_9C08_06
- D 0 - - - 0x001BA3 00:9B93: 15 9C     .word _off001_9C15_07
- D 0 - - - 0x001BA5 00:9B95: 1F 9C     .word _off001_9C1F_08
- - - - - - 0x001BA7 00:9B97: 32 9C     .word _off001_9C32_09
- - - - - - 0x001BA9 00:9B99: 45 9C     .word _off001_9C45_0A
- D 0 - - - 0x001BAB 00:9B9B: 52 9C     .word _off001_9C52_0B
- - - - - - 0x001BAD 00:9B9D: 65 9C     .word _off001_9C65_0C
- D 0 - - - 0x001BAF 00:9B9F: 6C 9C     .word _off001_9C6C_0D
- - - - - - 0x001BB1 00:9BA1: 79 9C     .word _off001_9C79_0E
- D 0 - - - 0x001BB3 00:9BA3: 89 9C     .word _off001_9C89_0F
- - - - - - 0x001BB5 00:9BA5: 96 9C     .word _off001_9C96_10
- - - - - - 0x001BB7 00:9BA7: A0 9C     .word _off001_9CA0_11
- - - - - - 0x001BB9 00:9BA9: AD 9C     .word _off001_9CAD_12
- - - - - - 0x001BBB 00:9BAB: B7 9C     .word _off001_9CB7_13
- - - - - - 0x001BBD 00:9BAD: C1 9C     .word _off001_9CC1_14
- - - - - - 0x001BBF 00:9BAF: CB 9C     .word _off001_9CCB_15
- - - - - - 0x001BC1 00:9BB1: D2 9C     .word _off001_9CD2_16
- - - - - - 0x001BC3 00:9BB3: DC 9C     .word _off001_9CDC_17
- D 0 - - - 0x001BC5 00:9BB5: E9 9C     .word _off001_9CE9_18
- - - - - - 0x001BC7 00:9BB7: F3 9C     .word _off001_9CF3_19
- - - - - - 0x001BC9 00:9BB9: FD 9C     .word _off001_9CFD_1A
- - - - - - 0x001BCB 00:9BBB: 07 9D     .word _off001_9D07_1B



_off001_9BBD_00:
- D 0 - I - 0x001BCD 00:9BBD: FE        .byte $FE   ; 
- D 0 - I - 0x001BCE 00:9BBE: 00        .byte $00   ; 
- D 0 - I - 0x001BCF 00:9BBF: 7C        .byte $7C   ; 
- D 0 - I - 0x001BD0 00:9BC0: 00        .byte $00   ; 
- D 0 - I - 0x001BD1 00:9BC1: 00        .byte $00   ; 
- D 0 - I - 0x001BD2 00:9BC2: 00        .byte $00   ; 
- - - - - - 0x001BD3 00:9BC3: FF        .byte $FF   ; 



_off001_9BC4_01:
- D 0 - I - 0x001BD4 00:9BC4: FE        .byte $FE   ; 
- D 0 - I - 0x001BD5 00:9BC5: 00        .byte $00   ; 
- D 0 - I - 0x001BD6 00:9BC6: 7C        .byte $7C   ; 
- D 0 - I - 0x001BD7 00:9BC7: 05        .byte $05   ; 
- D 0 - I - 0x001BD8 00:9BC8: 00        .byte $00   ; 
- D 0 - I - 0x001BD9 00:9BC9: 00        .byte $00   ; 
- D 0 - I - 0x001BDA 00:9BCA: 00        .byte $00   ; 
- D 0 - I - 0x001BDB 00:9BCB: 80        .byte $80   ; 
- D 0 - I - 0x001BDC 00:9BCC: FE        .byte $FE   ; 
- - - - - - 0x001BDD 00:9BCD: FF        .byte $FF   ; 



_off001_9BCE_02:
- - - - - - 0x001BDE 00:9BCE: FE        .byte $FE   ; 
- - - - - - 0x001BDF 00:9BCF: 00        .byte $00   ; 
- - - - - - 0x001BE0 00:9BD0: 7C        .byte $7C   ; 
- - - - - - 0x001BE1 00:9BD1: 00        .byte $00   ; 
- - - - - - 0x001BE2 00:9BD2: E0        .byte con_mcb_rts   ; 


; bzk garbage
- - - - - - 0x001BE3 00:9BD3: FF        .byte $FF, $FF   ; 



_off001_9BD5_03:
- - - - - - 0x001BE5 00:9BD5: FD        .byte $FD   ; 
- - - - - - 0x001BE6 00:9BD6: 00        .byte $00   ; 
- - - - - - 0x001BE7 00:9BD7: 00        .byte $00   ; 
- - - - - - 0x001BE8 00:9BD8: FE        .byte $FE   ; 
- - - - - - 0x001BE9 00:9BD9: 00        .byte $00   ; 
- - - - - - 0x001BEA 00:9BDA: 78        .byte $78   ; 
- - - - - - 0x001BEB 00:9BDB: 04        .byte $04   ; 
- - - - - - 0x001BEC 00:9BDC: 00        .byte $00   ; 
- - - - - - 0x001BED 00:9BDD: 00        .byte $00   ; 
- - - - - - 0x001BEE 00:9BDE: FE        .byte $FE   ; 
- - - - - - 0x001BEF 00:9BDF: 00        .byte $00   ; 
- - - - - - 0x001BF0 00:9BE0: 7C        .byte $7C   ; 
- - - - - - 0x001BF1 00:9BE1: 03        .byte $03   ; 
- - - - - - 0x001BF2 00:9BE2: 00        .byte $00   ; 
- - - - - - 0x001BF3 00:9BE3: FE        .byte $FE   ; 
- - - - - - 0x001BF4 00:9BE4: 00        .byte $00   ; 
- - - - - - 0x001BF5 00:9BE5: 00        .byte $00   ; 
- - - - - - 0x001BF6 00:9BE6: 00        .byte $00   ; 
- - - - - - 0x001BF7 00:9BE7: FF        .byte $FF   ; 



_off001_9BE8_04:
- D 0 - I - 0x001BF8 00:9BE8: FD        .byte $FD   ; 
- D 0 - I - 0x001BF9 00:9BE9: 00        .byte $00   ; 
- D 0 - I - 0x001BFA 00:9BEA: 00        .byte $00   ; 
- D 0 - I - 0x001BFB 00:9BEB: FE        .byte $FE   ; 
- D 0 - I - 0x001BFC 00:9BEC: 00        .byte $00   ; 
- D 0 - I - 0x001BFD 00:9BED: 78        .byte $78   ; 
- D 0 - I - 0x001BFE 00:9BEE: 04        .byte $04   ; 
- D 0 - I - 0x001BFF 00:9BEF: 00        .byte $00   ; 
- D 0 - I - 0x001C00 00:9BF0: 00        .byte $00   ; 
- D 0 - I - 0x001C01 00:9BF1: FE        .byte $FE   ; 
- D 0 - I - 0x001C02 00:9BF2: 00        .byte $00   ; 
- D 0 - I - 0x001C03 00:9BF3: 7C        .byte $7C   ; 
- D 0 - I - 0x001C04 00:9BF4: 03        .byte $03   ; 
- D 0 - I - 0x001C05 00:9BF5: 80        .byte $80   ; 
- D 0 - I - 0x001C06 00:9BF6: FF        .byte $FF   ; 
- D 0 - I - 0x001C07 00:9BF7: 00        .byte $00   ; 
- D 0 - I - 0x001C08 00:9BF8: 00        .byte $00   ; 
- D 0 - I - 0x001C09 00:9BF9: 00        .byte $00   ; 
- - - - - - 0x001C0A 00:9BFA: FF        .byte $FF   ; 



_off001_9BFB_05:
- - - - - - 0x001C0B 00:9BFB: FD        .byte $FD   ; 
- - - - - - 0x001C0C 00:9BFC: 00        .byte $00   ; 
- - - - - - 0x001C0D 00:9BFD: 00        .byte $00   ; 
- - - - - - 0x001C0E 00:9BFE: FE        .byte $FE   ; 
- - - - - - 0x001C0F 00:9BFF: 00        .byte $00   ; 
- - - - - - 0x001C10 00:9C00: 7C        .byte $7C   ; 
- - - - - - 0x001C11 00:9C01: 03        .byte $03   ; 
- - - - - - 0x001C12 00:9C02: 00        .byte $00   ; 
- - - - - - 0x001C13 00:9C03: F4        .byte $F4   ; 
- - - - - - 0x001C14 00:9C04: 00        .byte $00   ; 
- - - - - - 0x001C15 00:9C05: 00        .byte $00   ; 
- - - - - - 0x001C16 00:9C06: FF        .byte $FF   ; 
- - - - - - 0x001C17 00:9C07: FF        .byte $FF   ; 



_off001_9C08_06:
- D 0 - I - 0x001C18 00:9C08: FE        .byte $FE   ; 
- D 0 - I - 0x001C19 00:9C09: 00        .byte $00   ; 
- D 0 - I - 0x001C1A 00:9C0A: 60        .byte $60   ; 
- D 0 - I - 0x001C1B 00:9C0B: 05        .byte $05   ; 
- D 0 - I - 0x001C1C 00:9C0C: 00        .byte $00   ; 
- D 0 - I - 0x001C1D 00:9C0D: 04        .byte $04   ; 
- D 0 - I - 0x001C1E 00:9C0E: 08        .byte $08   ; 
- D 0 - I - 0x001C1F 00:9C0F: 00        .byte $00   ; 
- D 0 - I - 0x001C20 00:9C10: FF        .byte $FF   ; 
- D 0 - I - 0x001C21 00:9C11: 00        .byte $00   ; 
- D 0 - I - 0x001C22 00:9C12: 00        .byte $00   ; 
- D 0 - I - 0x001C23 00:9C13: 00        .byte $00   ; 
- - - - - - 0x001C24 00:9C14: FF        .byte $FF   ; 



_off001_9C15_07:
- D 0 - I - 0x001C25 00:9C15: FE        .byte $FE   ; 
- D 0 - I - 0x001C26 00:9C16: 00        .byte $00   ; 
- D 0 - I - 0x001C27 00:9C17: 70        .byte $70   ; 
- D 0 - I - 0x001C28 00:9C18: 04        .byte $04   ; 
- D 0 - I - 0x001C29 00:9C19: 00        .byte $00   ; 
- D 0 - I - 0x001C2A 00:9C1A: 0B        .byte $0B   ; 
- D 0 - I - 0x001C2B 00:9C1B: 00        .byte $00   ; 
- D 0 - I - 0x001C2C 00:9C1C: C0        .byte $C0   ; 
- D 0 - I - 0x001C2D 00:9C1D: FD        .byte $FD   ; 
- - - - - - 0x001C2E 00:9C1E: FF        .byte $FF   ; 



_off001_9C1F_08:
- D 0 - I - 0x001C2F 00:9C1F: FD        .byte $FD   ; 
- D 0 - I - 0x001C30 00:9C20: 00        .byte $00   ; 
- D 0 - I - 0x001C31 00:9C21: 00        .byte $00   ; 
- D 0 - I - 0x001C32 00:9C22: FE        .byte $FE   ; 
- D 0 - I - 0x001C33 00:9C23: 00        .byte $00   ; 
- D 0 - I - 0x001C34 00:9C24: 64        .byte $64   ; 
- D 0 - I - 0x001C35 00:9C25: 03        .byte $03   ; 
- D 0 - I - 0x001C36 00:9C26: 00        .byte $00   ; 
- D 0 - I - 0x001C37 00:9C27: 0B        .byte $0B   ; 
- D 0 - I - 0x001C38 00:9C28: FE        .byte $FE   ; 
- D 0 - I - 0x001C39 00:9C29: 00        .byte $00   ; 
- D 0 - I - 0x001C3A 00:9C2A: 7C        .byte $7C   ; 
- D 0 - I - 0x001C3B 00:9C2B: 03        .byte $03   ; 
- D 0 - I - 0x001C3C 00:9C2C: 00        .byte $00   ; 
- D 0 - I - 0x001C3D 00:9C2D: FF        .byte $FF   ; 
- D 0 - I - 0x001C3E 00:9C2E: 00        .byte $00   ; 
- D 0 - I - 0x001C3F 00:9C2F: 00        .byte $00   ; 
- D 0 - I - 0x001C40 00:9C30: 00        .byte $00   ; 
- - - - - - 0x001C41 00:9C31: FF        .byte $FF   ; 



_off001_9C32_09:
- - - - - - 0x001C42 00:9C32: FD        .byte $FD   ; 
- - - - - - 0x001C43 00:9C33: 00        .byte $00   ; 
- - - - - - 0x001C44 00:9C34: 00        .byte $00   ; 
- - - - - - 0x001C45 00:9C35: FE        .byte $FE   ; 
- - - - - - 0x001C46 00:9C36: 00        .byte $00   ; 
- - - - - - 0x001C47 00:9C37: 7C        .byte $7C   ; 
- - - - - - 0x001C48 00:9C38: 05        .byte $05   ; 
- - - - - - 0x001C49 00:9C39: 00        .byte $00   ; 
- - - - - - 0x001C4A 00:9C3A: 00        .byte $00   ; 
- - - - - - 0x001C4B 00:9C3B: FE        .byte $FE   ; 
- - - - - - 0x001C4C 00:9C3C: 00        .byte $00   ; 
- - - - - - 0x001C4D 00:9C3D: 7C        .byte $7C   ; 
- - - - - - 0x001C4E 00:9C3E: 03        .byte $03   ; 
- - - - - - 0x001C4F 00:9C3F: 00        .byte $00   ; 
- - - - - - 0x001C50 00:9C40: FF        .byte $FF   ; 
- - - - - - 0x001C51 00:9C41: 00        .byte $00   ; 
- - - - - - 0x001C52 00:9C42: 00        .byte $00   ; 
- - - - - - 0x001C53 00:9C43: 00        .byte $00   ; 
- - - - - - 0x001C54 00:9C44: FF        .byte $FF   ; 



_off001_9C45_0A:
- - - - - - 0x001C55 00:9C45: FD        .byte $FD   ; 
- - - - - - 0x001C56 00:9C46: 00        .byte $00   ; 
- - - - - - 0x001C57 00:9C47: 00        .byte $00   ; 
- - - - - - 0x001C58 00:9C48: FE        .byte $FE   ; 
- - - - - - 0x001C59 00:9C49: 00        .byte $00   ; 
- - - - - - 0x001C5A 00:9C4A: 7C        .byte $7C   ; 
- - - - - - 0x001C5B 00:9C4B: 03        .byte $03   ; 
- - - - - - 0x001C5C 00:9C4C: 00        .byte $00   ; 
- - - - - - 0x001C5D 00:9C4D: F8        .byte $F8   ; 
- - - - - - 0x001C5E 00:9C4E: 00        .byte $00   ; 
- - - - - - 0x001C5F 00:9C4F: 00        .byte $00   ; 
- - - - - - 0x001C60 00:9C50: FC        .byte $FC   ; 
- - - - - - 0x001C61 00:9C51: FF        .byte $FF   ; 



_off001_9C52_0B:
- D 0 - I - 0x001C62 00:9C52: FD        .byte $FD   ; 
- D 0 - I - 0x001C63 00:9C53: 00        .byte $00   ; 
- D 0 - I - 0x001C64 00:9C54: 00        .byte $00   ; 
- D 0 - I - 0x001C65 00:9C55: FE        .byte $FE   ; 
- D 0 - I - 0x001C66 00:9C56: 00        .byte $00   ; 
- D 0 - I - 0x001C67 00:9C57: 7C        .byte $7C   ; 
- D 0 - I - 0x001C68 00:9C58: 02        .byte $02   ; 
- D 0 - I - 0x001C69 00:9C59: 00        .byte $00   ; 
- D 0 - I - 0x001C6A 00:9C5A: 00        .byte $00   ; 
- D 0 - I - 0x001C6B 00:9C5B: 08        .byte $08   ; 
- D 0 - I - 0x001C6C 00:9C5C: 00        .byte $00   ; 
- D 0 - I - 0x001C6D 00:9C5D: FE        .byte $FE   ; 
- D 0 - I - 0x001C6E 00:9C5E: 10        .byte $10   ; 
- D 0 - I - 0x001C6F 00:9C5F: 00        .byte $00   ; 
- D 0 - I - 0x001C70 00:9C60: FF        .byte $FF   ; 
- D 0 - I - 0x001C71 00:9C61: 00        .byte $00   ; 
- D 0 - I - 0x001C72 00:9C62: 80        .byte $80   ; 
- D 0 - I - 0x001C73 00:9C63: FF        .byte $FF   ; 
- - - - - - 0x001C74 00:9C64: FF        .byte $FF   ; 



_off001_9C65_0C:
- - - - - - 0x001C75 00:9C65: FE        .byte $FE   ; 
- - - - - - 0x001C76 00:9C66: 00        .byte $00   ; 
- - - - - - 0x001C77 00:9C67: 7C        .byte $7C   ; 
- - - - - - 0x001C78 00:9C68: 00        .byte $00   ; 
- - - - - - 0x001C79 00:9C69: 60        .byte $60   ; 
- - - - - - 0x001C7A 00:9C6A: FE        .byte $FE   ; 
- - - - - - 0x001C7B 00:9C6B: FF        .byte $FF   ; 



_off001_9C6C_0D:
- D 0 - I - 0x001C7C 00:9C6C: FD        .byte $FD   ; 
- D 0 - I - 0x001C7D 00:9C6D: 00        .byte $00   ; 
- D 0 - I - 0x001C7E 00:9C6E: 00        .byte $00   ; 
- D 0 - I - 0x001C7F 00:9C6F: FE        .byte $FE   ; 
- D 0 - I - 0x001C80 00:9C70: 00        .byte $00   ; 
- D 0 - I - 0x001C81 00:9C71: 7C        .byte $7C   ; 
- D 0 - I - 0x001C82 00:9C72: 08        .byte $08   ; 
- D 0 - I - 0x001C83 00:9C73: 00        .byte $00   ; 
- D 0 - I - 0x001C84 00:9C74: 04        .byte $04   ; 
- D 0 - I - 0x001C85 00:9C75: 00        .byte $00   ; 
- D 0 - I - 0x001C86 00:9C76: C0        .byte $C0   ; 
- D 0 - I - 0x001C87 00:9C77: FF        .byte $FF   ; 
- - - - - - 0x001C88 00:9C78: FF        .byte $FF   ; 



_off001_9C79_0E:
- - - - - - 0x001C89 00:9C79: FD        .byte $FD   ; 
- - - - - - 0x001C8A 00:9C7A: 00        .byte $00   ; 
- - - - - - 0x001C8B 00:9C7B: FC        .byte $FC   ; 
- - - - - - 0x001C8C 00:9C7C: FE        .byte $FE   ; 
- - - - - - 0x001C8D 00:9C7D: 00        .byte $00   ; 
- - - - - - 0x001C8E 00:9C7E: 7C        .byte $7C   ; 
- - - - - - 0x001C8F 00:9C7F: 01        .byte $01   ; 
- - - - - - 0x001C90 00:9C80: 00        .byte $00   ; 
- - - - - - 0x001C91 00:9C81: EC        .byte $EC   ; 
- - - - - - 0x001C92 00:9C82: FE        .byte $FE   ; 
- - - - - - 0x001C93 00:9C83: 00        .byte $00   ; 
- - - - - - 0x001C94 00:9C84: 70        .byte $70   ; 
- - - - - - 0x001C95 00:9C85: 00        .byte $00   ; 
- - - - - - 0x001C96 00:9C86: 00        .byte $00   ; 
- - - - - - 0x001C97 00:9C87: F8        .byte $F8   ; 
- - - - - - 0x001C98 00:9C88: FF        .byte $FF   ; 



_off001_9C89_0F:
- D 0 - I - 0x001C99 00:9C89: FD        .byte $FD   ; 
- D 0 - I - 0x001C9A 00:9C8A: 00        .byte $00   ; 
- D 0 - I - 0x001C9B 00:9C8B: FB        .byte $FB   ; 
- D 0 - I - 0x001C9C 00:9C8C: FE        .byte $FE   ; 
- D 0 - I - 0x001C9D 00:9C8D: 00        .byte $00   ; 
- D 0 - I - 0x001C9E 00:9C8E: 74        .byte $74   ; 
- D 0 - I - 0x001C9F 00:9C8F: 02        .byte $02   ; 
- D 0 - I - 0x001CA0 00:9C90: 00        .byte $00   ; 
- D 0 - I - 0x001CA1 00:9C91: 04        .byte $04   ; 
- D 0 - I - 0x001CA2 00:9C92: 00        .byte $00   ; 
- D 0 - I - 0x001CA3 00:9C93: C0        .byte $C0   ; 
- D 0 - I - 0x001CA4 00:9C94: FF        .byte $FF   ; 
- - - - - - 0x001CA5 00:9C95: FF        .byte $FF   ; 



_off001_9C96_10:
- - - - - - 0x001CA6 00:9C96: FD        .byte $FD   ; 
- - - - - - 0x001CA7 00:9C97: 00        .byte $00   ; 
- - - - - - 0x001CA8 00:9C98: 00        .byte $00   ; 
- - - - - - 0x001CA9 00:9C99: FE        .byte $FE   ; 
- - - - - - 0x001CAA 00:9C9A: 00        .byte $00   ; 
- - - - - - 0x001CAB 00:9C9B: 7C        .byte $7C   ; 
- - - - - - 0x001CAC 00:9C9C: 00        .byte $00   ; 
- - - - - - 0x001CAD 00:9C9D: 00        .byte $00   ; 
- - - - - - 0x001CAE 00:9C9E: FA        .byte $FA   ; 
- - - - - - 0x001CAF 00:9C9F: FF        .byte $FF   ; 



_off001_9CA0_11:
- - - - - - 0x001CB0 00:9CA0: FD        .byte $FD   ; 
- - - - - - 0x001CB1 00:9CA1: 00        .byte $00   ; 
- - - - - - 0x001CB2 00:9CA2: 00        .byte $00   ; 
- - - - - - 0x001CB3 00:9CA3: FE        .byte $FE   ; 
- - - - - - 0x001CB4 00:9CA4: 00        .byte $00   ; 
- - - - - - 0x001CB5 00:9CA5: 7C        .byte $7C   ; 
- - - - - - 0x001CB6 00:9CA6: 04        .byte $04   ; 
- - - - - - 0x001CB7 00:9CA7: 00        .byte $00   ; 
- - - - - - 0x001CB8 00:9CA8: FE        .byte $FE   ; 
- - - - - - 0x001CB9 00:9CA9: 00        .byte $00   ; 
- - - - - - 0x001CBA 00:9CAA: 70        .byte $70   ; 
- - - - - - 0x001CBB 00:9CAB: FF        .byte $FF   ; 
- - - - - - 0x001CBC 00:9CAC: FF        .byte $FF   ; 



_off001_9CAD_12:
- - - - - - 0x001CBD 00:9CAD: FE        .byte $FE   ; 
- - - - - - 0x001CBE 00:9CAE: 00        .byte $00   ; 
- - - - - - 0x001CBF 00:9CAF: 7C        .byte $7C   ; 
- - - - - - 0x001CC0 00:9CB0: 04        .byte $04   ; 
- - - - - - 0x001CC1 00:9CB1: 00        .byte $00   ; 
- - - - - - 0x001CC2 00:9CB2: 00        .byte $00   ; 
- - - - - - 0x001CC3 00:9CB3: 00        .byte $00   ; 
- - - - - - 0x001CC4 00:9CB4: 00        .byte $00   ; 
- - - - - - 0x001CC5 00:9CB5: F1        .byte $F1   ; 
- - - - - - 0x001CC6 00:9CB6: FF        .byte $FF   ; 



_off001_9CB7_13:
- - - - - - 0x001CC7 00:9CB7: FE        .byte $FE   ; 
- - - - - - 0x001CC8 00:9CB8: 00        .byte $00   ; 
- - - - - - 0x001CC9 00:9CB9: 7C        .byte $7C   ; 
- - - - - - 0x001CCA 00:9CBA: 04        .byte $04   ; 
- - - - - - 0x001CCB 00:9CBB: 00        .byte $00   ; 
- - - - - - 0x001CCC 00:9CBC: FF        .byte $FF   ; 
- - - - - - 0x001CCD 00:9CBD: 00        .byte $00   ; 
- - - - - - 0x001CCE 00:9CBE: F0        .byte $F0   ; 
- - - - - - 0x001CCF 00:9CBF: FF        .byte $FF   ; 
- - - - - - 0x001CD0 00:9CC0: FF        .byte $FF   ; 



_off001_9CC1_14:
- - - - - - 0x001CD1 00:9CC1: FE        .byte $FE   ; 
- - - - - - 0x001CD2 00:9CC2: 00        .byte $00   ; 
- - - - - - 0x001CD3 00:9CC3: 7C        .byte $7C   ; 
- - - - - - 0x001CD4 00:9CC4: 04        .byte $04   ; 
- - - - - - 0x001CD5 00:9CC5: 00        .byte $00   ; 
- - - - - - 0x001CD6 00:9CC6: FF        .byte $FF   ; 
- - - - - - 0x001CD7 00:9CC7: 00        .byte $00   ; 
- - - - - - 0x001CD8 00:9CC8: 40        .byte $40   ; 
- - - - - - 0x001CD9 00:9CC9: FF        .byte $FF   ; 
- - - - - - 0x001CDA 00:9CCA: FF        .byte $FF   ; 



_off001_9CCB_15:
- - - - - - 0x001CDB 00:9CCB: FE        .byte $FE   ; 
- - - - - - 0x001CDC 00:9CCC: 00        .byte $00   ; 
- - - - - - 0x001CDD 00:9CCD: 7C        .byte $7C   ; 
- - - - - - 0x001CDE 00:9CCE: 00        .byte $00   ; 
- - - - - - 0x001CDF 00:9CCF: 80        .byte $80   ; 
- - - - - - 0x001CE0 00:9CD0: FD        .byte $FD   ; 
- - - - - - 0x001CE1 00:9CD1: FF        .byte $FF   ; 



_off001_9CD2_16:
- - - - - - 0x001CE2 00:9CD2: FE        .byte $FE   ; 
- - - - - - 0x001CE3 00:9CD3: 00        .byte $00   ; 
- - - - - - 0x001CE4 00:9CD4: 7C        .byte $7C   ; 
- - - - - - 0x001CE5 00:9CD5: 05        .byte $05   ; 
- - - - - - 0x001CE6 00:9CD6: 00        .byte $00   ; 
- - - - - - 0x001CE7 00:9CD7: 00        .byte $00   ; 
- - - - - - 0x001CE8 00:9CD8: 00        .byte $00   ; 
- - - - - - 0x001CE9 00:9CD9: 80        .byte $80   ; 
- - - - - - 0x001CEA 00:9CDA: FE        .byte $FE   ; 
- - - - - - 0x001CEB 00:9CDB: FF        .byte $FF   ; 



_off001_9CDC_17:
- - - - - - 0x001CEC 00:9CDC: FD        .byte $FD   ; 
- - - - - - 0x001CED 00:9CDD: 00        .byte $00   ; 
- - - - - - 0x001CEE 00:9CDE: 00        .byte $00   ; 
- - - - - - 0x001CEF 00:9CDF: FE        .byte $FE   ; 
- - - - - - 0x001CF0 00:9CE0: 00        .byte $00   ; 
- - - - - - 0x001CF1 00:9CE1: 7C        .byte $7C   ; 
- - - - - - 0x001CF2 00:9CE2: 02        .byte $02   ; 
- - - - - - 0x001CF3 00:9CE3: 00        .byte $00   ; 
- - - - - - 0x001CF4 00:9CE4: FC        .byte $FC   ; 
- - - - - - 0x001CF5 00:9CE5: 00        .byte $00   ; 
- - - - - - 0x001CF6 00:9CE6: 00        .byte $00   ; 
- - - - - - 0x001CF7 00:9CE7: FA        .byte $FA   ; 
- - - - - - 0x001CF8 00:9CE8: FF        .byte $FF   ; 



_off001_9CE9_18:
- D 0 - I - 0x001CF9 00:9CE9: FE        .byte $FE   ; 
- D 0 - I - 0x001CFA 00:9CEA: 00        .byte $00   ; 
- D 0 - I - 0x001CFB 00:9CEB: 7C        .byte $7C   ; 
- D 0 - I - 0x001CFC 00:9CEC: 02        .byte $02   ; 
- D 0 - I - 0x001CFD 00:9CED: 00        .byte $00   ; 
- D 0 - I - 0x001CFE 00:9CEE: 00        .byte $00   ; 
- D 0 - I - 0x001CFF 00:9CEF: 00        .byte $00   ; 
- D 0 - I - 0x001D00 00:9CF0: 00        .byte $00   ; 
- D 0 - I - 0x001D01 00:9CF1: F1        .byte $F1   ; 
- - - - - - 0x001D02 00:9CF2: FF        .byte $FF   ; 



_off001_9CF3_19:
- - - - - - 0x001D03 00:9CF3: FE        .byte $FE   ; 
- - - - - - 0x001D04 00:9CF4: 00        .byte $00   ; 
- - - - - - 0x001D05 00:9CF5: 58        .byte $58   ; 
- - - - - - 0x001D06 00:9CF6: 04        .byte $04   ; 
- - - - - - 0x001D07 00:9CF7: 00        .byte $00   ; 
- - - - - - 0x001D08 00:9CF8: 0B        .byte $0B   ; 
- - - - - - 0x001D09 00:9CF9: 00        .byte $00   ; 
- - - - - - 0x001D0A 00:9CFA: F0        .byte $F0   ; 
- - - - - - 0x001D0B 00:9CFB: FF        .byte $FF   ; 
- - - - - - 0x001D0C 00:9CFC: FF        .byte $FF   ; 



_off001_9CFD_1A:
- - - - - - 0x001D0D 00:9CFD: FE        .byte $FE   ; 
- - - - - - 0x001D0E 00:9CFE: 00        .byte $00   ; 
- - - - - - 0x001D0F 00:9CFF: 7C        .byte $7C   ; 
- - - - - - 0x001D10 00:9D00: 04        .byte $04   ; 
- - - - - - 0x001D11 00:9D01: 00        .byte $00   ; 
- - - - - - 0x001D12 00:9D02: 00        .byte $00   ; 
- - - - - - 0x001D13 00:9D03: 00        .byte $00   ; 
- - - - - - 0x001D14 00:9D04: 00        .byte $00   ; 
- - - - - - 0x001D15 00:9D05: F1        .byte $F1   ; 
- - - - - - 0x001D16 00:9D06: FF        .byte $FF   ; 



_off001_9D07_1B:
- - - - - - 0x001D17 00:9D07: FE        .byte $FE   ; 
- - - - - - 0x001D18 00:9D08: 00        .byte $00   ; 
- - - - - - 0x001D19 00:9D09: 7C        .byte $7C   ; 
- - - - - - 0x001D1A 00:9D0A: 00        .byte $00   ; 
- - - - - - 0x001D1B 00:9D0B: 80        .byte $80   ; 
- - - - - - 0x001D1C 00:9D0C: FD        .byte $FD   ; 
- - - - - - 0x001D1D 00:9D0D: FF        .byte $FF   ; 



tbl_9D0E:
- - - - - - 0x001D1E 00:9D0E: 16 9D     .word _off002_9D16_00
- - - - - - 0x001D20 00:9D10: 18 9D     .word _off002_9D18_01
- D 0 - - - 0x001D22 00:9D12: 24 9D     .word _off002_9D24_02
- - - - - - 0x001D24 00:9D14: 76 9D     .word _off002_9D76_03



_off002_9D16_00:
- - - - - - 0x001D26 00:9D16: 00        .byte $00   ; 
- - - - - - 0x001D27 00:9D17: 80        .byte $80   ; 



_off002_9D18_01:
- - - - - - 0x001D28 00:9D18: 00        .byte $00   ; 
- - - - - - 0x001D29 00:9D19: 00        .byte $00   ; 
- - - - - - 0x001D2A 00:9D1A: 00        .byte $00   ; 
- - - - - - 0x001D2B 00:9D1B: 01        .byte $01   ; 
- - - - - - 0x001D2C 00:9D1C: 01        .byte $01   ; 
- - - - - - 0x001D2D 00:9D1D: 01        .byte $01   ; 
- - - - - - 0x001D2E 00:9D1E: 00        .byte $00   ; 
- - - - - - 0x001D2F 00:9D1F: 00        .byte $00   ; 
- - - - - - 0x001D30 00:9D20: 00        .byte $00   ; 
- - - - - - 0x001D31 00:9D21: FE        .byte $FE   ; 
- - - - - - 0x001D32 00:9D22: FF        .byte $FF   ; 
- - - - - - 0x001D33 00:9D23: 80        .byte $80   ; 



_off002_9D24_02:
- D 0 - I - 0x001D34 00:9D24: 00        .byte $00   ; 
- D 0 - I - 0x001D35 00:9D25: 00        .byte $00   ; 
- D 0 - I - 0x001D36 00:9D26: 00        .byte $00   ; 
- D 0 - I - 0x001D37 00:9D27: 01        .byte $01   ; 
- D 0 - I - 0x001D38 00:9D28: 01        .byte $01   ; 
- D 0 - I - 0x001D39 00:9D29: 01        .byte $01   ; 
- D 0 - I - 0x001D3A 00:9D2A: 00        .byte $00   ; 
- D 0 - I - 0x001D3B 00:9D2B: 00        .byte $00   ; 
- D 0 - I - 0x001D3C 00:9D2C: 00        .byte $00   ; 
- D 0 - I - 0x001D3D 00:9D2D: FF        .byte $FF   ; 
- D 0 - I - 0x001D3E 00:9D2E: FF        .byte $FF   ; 
- D 0 - I - 0x001D3F 00:9D2F: 00        .byte $00   ; 
- D 0 - I - 0x001D40 00:9D30: 00        .byte $00   ; 
- D 0 - I - 0x001D41 00:9D31: 01        .byte $01   ; 
- D 0 - I - 0x001D42 00:9D32: 01        .byte $01   ; 
- D 0 - I - 0x001D43 00:9D33: 02        .byte $02   ; 
- D 0 - I - 0x001D44 00:9D34: 01        .byte $01   ; 
- D 0 - I - 0x001D45 00:9D35: 00        .byte $00   ; 
- D 0 - I - 0x001D46 00:9D36: 00        .byte $00   ; 
- D 0 - I - 0x001D47 00:9D37: FF        .byte $FF   ; 
- D 0 - I - 0x001D48 00:9D38: FF        .byte $FF   ; 
- D 0 - I - 0x001D49 00:9D39: 00        .byte $00   ; 
- D 0 - I - 0x001D4A 00:9D3A: 00        .byte $00   ; 
- D 0 - I - 0x001D4B 00:9D3B: 01        .byte $01   ; 
- D 0 - I - 0x001D4C 00:9D3C: 01        .byte $01   ; 
- D 0 - I - 0x001D4D 00:9D3D: 02        .byte $02   ; 
- D 0 - I - 0x001D4E 00:9D3E: 01        .byte $01   ; 
- D 0 - I - 0x001D4F 00:9D3F: 00        .byte $00   ; 
- D 0 - I - 0x001D50 00:9D40: 00        .byte $00   ; 
- D 0 - I - 0x001D51 00:9D41: FF        .byte $FF   ; 
- D 0 - I - 0x001D52 00:9D42: FF        .byte $FF   ; 
- D 0 - I - 0x001D53 00:9D43: 00        .byte $00   ; 
- D 0 - I - 0x001D54 00:9D44: 00        .byte $00   ; 
- D 0 - I - 0x001D55 00:9D45: 01        .byte $01   ; 
- D 0 - I - 0x001D56 00:9D46: 01        .byte $01   ; 
- D 0 - I - 0x001D57 00:9D47: 02        .byte $02   ; 
- D 0 - I - 0x001D58 00:9D48: 01        .byte $01   ; 
- D 0 - I - 0x001D59 00:9D49: 00        .byte $00   ; 
- D 0 - I - 0x001D5A 00:9D4A: 00        .byte $00   ; 
- D 0 - I - 0x001D5B 00:9D4B: FF        .byte $FF   ; 
- D 0 - I - 0x001D5C 00:9D4C: FF        .byte $FF   ; 
- D 0 - I - 0x001D5D 00:9D4D: 00        .byte $00   ; 
- D 0 - I - 0x001D5E 00:9D4E: 00        .byte $00   ; 
- D 0 - I - 0x001D5F 00:9D4F: 01        .byte $01   ; 
- D 0 - I - 0x001D60 00:9D50: 01        .byte $01   ; 
- D 0 - I - 0x001D61 00:9D51: 02        .byte $02   ; 
- D 0 - I - 0x001D62 00:9D52: 01        .byte $01   ; 
- D 0 - I - 0x001D63 00:9D53: 00        .byte $00   ; 
- D 0 - I - 0x001D64 00:9D54: 00        .byte $00   ; 
- D 0 - I - 0x001D65 00:9D55: FF        .byte $FF   ; 
- D 0 - I - 0x001D66 00:9D56: FF        .byte $FF   ; 
- D 0 - I - 0x001D67 00:9D57: 00        .byte $00   ; 
- D 0 - I - 0x001D68 00:9D58: 00        .byte $00   ; 
- D 0 - I - 0x001D69 00:9D59: 01        .byte $01   ; 
- D 0 - I - 0x001D6A 00:9D5A: 01        .byte $01   ; 
- D 0 - I - 0x001D6B 00:9D5B: 02        .byte $02   ; 
- D 0 - I - 0x001D6C 00:9D5C: 01        .byte $01   ; 
- D 0 - I - 0x001D6D 00:9D5D: 00        .byte $00   ; 
- D 0 - I - 0x001D6E 00:9D5E: 00        .byte $00   ; 
- D 0 - I - 0x001D6F 00:9D5F: FF        .byte $FF   ; 
- D 0 - I - 0x001D70 00:9D60: FF        .byte $FF   ; 
- D 0 - I - 0x001D71 00:9D61: 00        .byte $00   ; 
- D 0 - I - 0x001D72 00:9D62: 00        .byte $00   ; 
- D 0 - I - 0x001D73 00:9D63: 01        .byte $01   ; 
- D 0 - I - 0x001D74 00:9D64: 01        .byte $01   ; 
- D 0 - I - 0x001D75 00:9D65: 02        .byte $02   ; 
- D 0 - I - 0x001D76 00:9D66: 01        .byte $01   ; 
- D 0 - I - 0x001D77 00:9D67: 00        .byte $00   ; 
- D 0 - I - 0x001D78 00:9D68: 00        .byte $00   ; 
- D 0 - I - 0x001D79 00:9D69: FF        .byte $FF   ; 
- D 0 - I - 0x001D7A 00:9D6A: FF        .byte $FF   ; 
- D 0 - I - 0x001D7B 00:9D6B: 00        .byte $00   ; 
- D 0 - I - 0x001D7C 00:9D6C: 00        .byte $00   ; 
- D 0 - I - 0x001D7D 00:9D6D: 01        .byte $01   ; 
- D 0 - I - 0x001D7E 00:9D6E: 01        .byte $01   ; 
- D 0 - I - 0x001D7F 00:9D6F: 02        .byte $02   ; 
- D 0 - I - 0x001D80 00:9D70: 01        .byte $01   ; 
- D 0 - I - 0x001D81 00:9D71: 00        .byte $00   ; 
- D 0 - I - 0x001D82 00:9D72: 00        .byte $00   ; 
- D 0 - I - 0x001D83 00:9D73: FF        .byte $FF   ; 
- D 0 - I - 0x001D84 00:9D74: FF        .byte $FF   ; 
- D 0 - I - 0x001D85 00:9D75: 80        .byte $80   ; 



_off002_9D76_03:
- - - - - - 0x001D86 00:9D76: FF        .byte $FF   ; 
- - - - - - 0x001D87 00:9D77: FF        .byte $FF   ; 
- - - - - - 0x001D88 00:9D78: FF        .byte $FF   ; 
- - - - - - 0x001D89 00:9D79: FF        .byte $FF   ; 
- - - - - - 0x001D8A 00:9D7A: FF        .byte $FF   ; 
- - - - - - 0x001D8B 00:9D7B: FF        .byte $FF   ; 
- - - - - - 0x001D8C 00:9D7C: FF        .byte $FF   ; 
- - - - - - 0x001D8D 00:9D7D: FF        .byte $FF   ; 
- - - - - - 0x001D8E 00:9D7E: FF        .byte $FF   ; 
- - - - - - 0x001D8F 00:9D7F: FF        .byte $FF   ; 
- - - - - - 0x001D90 00:9D80: FF        .byte $FF   ; 
- - - - - - 0x001D91 00:9D81: FF        .byte $FF   ; 
- - - - - - 0x001D92 00:9D82: 00        .byte $00   ; 
- - - - - - 0x001D93 00:9D83: 00        .byte $00   ; 
- - - - - - 0x001D94 00:9D84: 00        .byte $00   ; 
- - - - - - 0x001D95 00:9D85: 00        .byte $00   ; 
- - - - - - 0x001D96 00:9D86: 00        .byte $00   ; 
- - - - - - 0x001D97 00:9D87: 00        .byte $00   ; 
- - - - - - 0x001D98 00:9D88: 00        .byte $00   ; 
- - - - - - 0x001D99 00:9D89: 00        .byte $00   ; 
- - - - - - 0x001D9A 00:9D8A: 00        .byte $00   ; 
- - - - - - 0x001D9B 00:9D8B: 00        .byte $00   ; 
- - - - - - 0x001D9C 00:9D8C: 00        .byte $00   ; 
- - - - - - 0x001D9D 00:9D8D: 00        .byte $00   ; 
- - - - - - 0x001D9E 00:9D8E: 01        .byte $01   ; 
- - - - - - 0x001D9F 00:9D8F: 01        .byte $01   ; 
- - - - - - 0x001DA0 00:9D90: 01        .byte $01   ; 
- - - - - - 0x001DA1 00:9D91: 01        .byte $01   ; 
- - - - - - 0x001DA2 00:9D92: 01        .byte $01   ; 
- - - - - - 0x001DA3 00:9D93: 01        .byte $01   ; 
- - - - - - 0x001DA4 00:9D94: 01        .byte $01   ; 
- - - - - - 0x001DA5 00:9D95: 01        .byte $01   ; 
- - - - - - 0x001DA6 00:9D96: 01        .byte $01   ; 
- - - - - - 0x001DA7 00:9D97: 01        .byte $01   ; 
- - - - - - 0x001DA8 00:9D98: 01        .byte $01   ; 
- - - - - - 0x001DA9 00:9D99: 01        .byte $01   ; 
- - - - - - 0x001DAA 00:9D9A: FF        .byte $FF   ; 
- - - - - - 0x001DAB 00:9D9B: FF        .byte $FF   ; 
- - - - - - 0x001DAC 00:9D9C: FF        .byte $FF   ; 
- - - - - - 0x001DAD 00:9D9D: FF        .byte $FF   ; 
- - - - - - 0x001DAE 00:9D9E: FF        .byte $FF   ; 
- - - - - - 0x001DAF 00:9D9F: FF        .byte $FF   ; 
- - - - - - 0x001DB0 00:9DA0: FF        .byte $FF   ; 
- - - - - - 0x001DB1 00:9DA1: FF        .byte $FF   ; 
- - - - - - 0x001DB2 00:9DA2: FF        .byte $FF   ; 
- - - - - - 0x001DB3 00:9DA3: FF        .byte $FF   ; 
- - - - - - 0x001DB4 00:9DA4: FF        .byte $FF   ; 
- - - - - - 0x001DB5 00:9DA5: FF        .byte $FF   ; 
- - - - - - 0x001DB6 00:9DA6: FF        .byte $FF   ; 
- - - - - - 0x001DB7 00:9DA7: FF        .byte $FF   ; 
- - - - - - 0x001DB8 00:9DA8: FF        .byte $FF   ; 
- - - - - - 0x001DB9 00:9DA9: FF        .byte $FF   ; 
- - - - - - 0x001DBA 00:9DAA: FF        .byte $FF   ; 
- - - - - - 0x001DBB 00:9DAB: FF        .byte $FF   ; 
- - - - - - 0x001DBC 00:9DAC: FF        .byte $FF   ; 
- - - - - - 0x001DBD 00:9DAD: FF        .byte $FF   ; 
- - - - - - 0x001DBE 00:9DAE: 00        .byte $00   ; 
- - - - - - 0x001DBF 00:9DAF: 00        .byte $00   ; 
- - - - - - 0x001DC0 00:9DB0: 00        .byte $00   ; 
- - - - - - 0x001DC1 00:9DB1: 00        .byte $00   ; 
- - - - - - 0x001DC2 00:9DB2: 00        .byte $00   ; 
- - - - - - 0x001DC3 00:9DB3: 00        .byte $00   ; 
- - - - - - 0x001DC4 00:9DB4: 00        .byte $00   ; 
- - - - - - 0x001DC5 00:9DB5: 00        .byte $00   ; 
- - - - - - 0x001DC6 00:9DB6: 00        .byte $00   ; 
- - - - - - 0x001DC7 00:9DB7: 00        .byte $00   ; 
- - - - - - 0x001DC8 00:9DB8: 00        .byte $00   ; 
- - - - - - 0x001DC9 00:9DB9: 00        .byte $00   ; 
- - - - - - 0x001DCA 00:9DBA: 00        .byte $00   ; 
- - - - - - 0x001DCB 00:9DBB: 00        .byte $00   ; 
- - - - - - 0x001DCC 00:9DBC: 00        .byte $00   ; 
- - - - - - 0x001DCD 00:9DBD: 00        .byte $00   ; 
- - - - - - 0x001DCE 00:9DBE: 00        .byte $00   ; 
- - - - - - 0x001DCF 00:9DBF: 00        .byte $00   ; 
- - - - - - 0x001DD0 00:9DC0: 00        .byte $00   ; 
- - - - - - 0x001DD1 00:9DC1: 00        .byte $00   ; 
- - - - - - 0x001DD2 00:9DC2: 01        .byte $01   ; 
- - - - - - 0x001DD3 00:9DC3: 01        .byte $01   ; 
- - - - - - 0x001DD4 00:9DC4: 01        .byte $01   ; 
- - - - - - 0x001DD5 00:9DC5: 01        .byte $01   ; 
- - - - - - 0x001DD6 00:9DC6: 01        .byte $01   ; 
- - - - - - 0x001DD7 00:9DC7: 01        .byte $01   ; 
- - - - - - 0x001DD8 00:9DC8: 01        .byte $01   ; 
- - - - - - 0x001DD9 00:9DC9: 01        .byte $01   ; 
- - - - - - 0x001DDA 00:9DCA: 01        .byte $01   ; 
- - - - - - 0x001DDB 00:9DCB: 01        .byte $01   ; 
- - - - - - 0x001DDC 00:9DCC: 01        .byte $01   ; 
- - - - - - 0x001DDD 00:9DCD: 01        .byte $01   ; 
- - - - - - 0x001DDE 00:9DCE: 01        .byte $01   ; 
- - - - - - 0x001DDF 00:9DCF: 01        .byte $01   ; 
- - - - - - 0x001DE0 00:9DD0: 01        .byte $01   ; 
- - - - - - 0x001DE1 00:9DD1: 01        .byte $01   ; 
- - - - - - 0x001DE2 00:9DD2: 01        .byte $01   ; 
- - - - - - 0x001DE3 00:9DD3: 01        .byte $01   ; 
- - - - - - 0x001DE4 00:9DD4: 01        .byte $01   ; 
- - - - - - 0x001DE5 00:9DD5: 01        .byte $01   ; 
- - - - - - 0x001DE6 00:9DD6: 80        .byte $80   ; 



tbl_9DD7:
- - - - - - 0x001DE7 00:9DD7: E3 9D     .word _off003_9DE3_00 ; never used 0x000A8A
- - - - - - 0x001DE9 00:9DD9: E4 9D     .word _off003_9DE4_01
- - - - - - 0x001DEB 00:9DDB: E8 9D     .word _off003_9DE8_02
- - - - - - 0x001DED 00:9DDD: F4 9D     .word _off003_9DF4_03
- - - - - - 0x001DEF 00:9DDF: 19 9E     .word _off003_9E19_04
- - - - - - 0x001DF1 00:9DE1: 58 9E     .word _off003_9E58_05



_off003_9DE3_00:
- - - - - - 0x001DF3 00:9DE3: 80        .byte $80   ; 



_off003_9DE4_01:
- - - - - - 0x001DF4 00:9DE4: 02        .byte $02   ; 
- - - - - - 0x001DF5 00:9DE5: 01        .byte $01   ; 
- - - - - - 0x001DF6 00:9DE6: 00        .byte $00   ; 
- - - - - - 0x001DF7 00:9DE7: 80        .byte $80   ; 



_off003_9DE8_02:
- - - - - - 0x001DF8 00:9DE8: 0A        .byte $0A   ; 
- - - - - - 0x001DF9 00:9DE9: 0F        .byte $0F   ; 
- - - - - - 0x001DFA 00:9DEA: 14        .byte $14   ; 
- - - - - - 0x001DFB 00:9DEB: 32        .byte $32   ; 
- - - - - - 0x001DFC 00:9DEC: 3C        .byte $3C   ; 
- - - - - - 0x001DFD 00:9DED: 46        .byte $46   ; 
- - - - - - 0x001DFE 00:9DEE: 50        .byte $50   ; 
- - - - - - 0x001DFF 00:9DEF: 5A        .byte $5A   ; 
- - - - - - 0x001E00 00:9DF0: 64        .byte $64   ; 
- - - - - - 0x001E01 00:9DF1: 78        .byte $78   ; 
- - - - - - 0x001E02 00:9DF2: 80        .byte $80   ; 
- - - - - - 0x001E03 00:9DF3: 80        .byte $80   ; 



_off003_9DF4_03:
- - - - - - 0x001E04 00:9DF4: 7D        .byte $7D   ; 
- - - - - - 0x001E05 00:9DF5: 78        .byte $78   ; 
- - - - - - 0x001E06 00:9DF6: 73        .byte $73   ; 
- - - - - - 0x001E07 00:9DF7: 6E        .byte $6E   ; 
- - - - - - 0x001E08 00:9DF8: 69        .byte $69   ; 
- - - - - - 0x001E09 00:9DF9: 65        .byte $65   ; 
- - - - - - 0x001E0A 00:9DFA: 64        .byte $64   ; 
- - - - - - 0x001E0B 00:9DFB: 62        .byte $62   ; 
- - - - - - 0x001E0C 00:9DFC: 5E        .byte $5E   ; 
- - - - - - 0x001E0D 00:9DFD: 5A        .byte $5A   ; 
- - - - - - 0x001E0E 00:9DFE: 58        .byte $58   ; 
- - - - - - 0x001E0F 00:9DFF: 54        .byte $54   ; 
- - - - - - 0x001E10 00:9E00: 50        .byte $50   ; 
- - - - - - 0x001E11 00:9E01: 4E        .byte $4E   ; 
- - - - - - 0x001E12 00:9E02: 4A        .byte $4A   ; 
- - - - - - 0x001E13 00:9E03: 46        .byte $46   ; 
- - - - - - 0x001E14 00:9E04: 44        .byte $44   ; 
- - - - - - 0x001E15 00:9E05: 40        .byte $40   ; 
- - - - - - 0x001E16 00:9E06: 3C        .byte $3C   ; 
- - - - - - 0x001E17 00:9E07: 3A        .byte $3A   ; 
- - - - - - 0x001E18 00:9E08: 36        .byte $36   ; 
- - - - - - 0x001E19 00:9E09: 32        .byte $32   ; 
- - - - - - 0x001E1A 00:9E0A: 30        .byte $30   ; 
- - - - - - 0x001E1B 00:9E0B: 2C        .byte $2C   ; 
- - - - - - 0x001E1C 00:9E0C: 28        .byte $28   ; 
- - - - - - 0x001E1D 00:9E0D: 26        .byte $26   ; 
- - - - - - 0x001E1E 00:9E0E: 22        .byte $22   ; 
- - - - - - 0x001E1F 00:9E0F: 1E        .byte $1E   ; 
- - - - - - 0x001E20 00:9E10: 1C        .byte $1C   ; 
- - - - - - 0x001E21 00:9E11: 18        .byte $18   ; 
- - - - - - 0x001E22 00:9E12: 14        .byte $14   ; 
- - - - - - 0x001E23 00:9E13: 12        .byte $12   ; 
- - - - - - 0x001E24 00:9E14: 0E        .byte $0E   ; 
- - - - - - 0x001E25 00:9E15: 0A        .byte $0A   ; 
- - - - - - 0x001E26 00:9E16: 08        .byte $08   ; 
- - - - - - 0x001E27 00:9E17: 04        .byte $04   ; 
- - - - - - 0x001E28 00:9E18: 80        .byte $80   ; 



_off003_9E19_04:
- - - - - - 0x001E29 00:9E19: 01        .byte $01   ; 
- - - - - - 0x001E2A 00:9E1A: 02        .byte $02   ; 
- - - - - - 0x001E2B 00:9E1B: 04        .byte $04   ; 
- - - - - - 0x001E2C 00:9E1C: 08        .byte $08   ; 
- - - - - - 0x001E2D 00:9E1D: 0A        .byte $0A   ; 
- - - - - - 0x001E2E 00:9E1E: 0C        .byte $0C   ; 
- - - - - - 0x001E2F 00:9E1F: 0E        .byte $0E   ; 
- - - - - - 0x001E30 00:9E20: 10        .byte $10   ; 
- - - - - - 0x001E31 00:9E21: 12        .byte $12   ; 
- - - - - - 0x001E32 00:9E22: 14        .byte $14   ; 
- - - - - - 0x001E33 00:9E23: 16        .byte $16   ; 
- - - - - - 0x001E34 00:9E24: 18        .byte $18   ; 
- - - - - - 0x001E35 00:9E25: 1A        .byte $1A   ; 
- - - - - - 0x001E36 00:9E26: 1C        .byte $1C   ; 
- - - - - - 0x001E37 00:9E27: 1E        .byte $1E   ; 
- - - - - - 0x001E38 00:9E28: 20        .byte $20   ; 
- - - - - - 0x001E39 00:9E29: 24        .byte $24   ; 
- - - - - - 0x001E3A 00:9E2A: 26        .byte $26   ; 
- - - - - - 0x001E3B 00:9E2B: 28        .byte $28   ; 
- - - - - - 0x001E3C 00:9E2C: 2A        .byte $2A   ; 
- - - - - - 0x001E3D 00:9E2D: 2C        .byte $2C   ; 
- - - - - - 0x001E3E 00:9E2E: 2E        .byte $2E   ; 
- - - - - - 0x001E3F 00:9E2F: 30        .byte $30   ; 
- - - - - - 0x001E40 00:9E30: 32        .byte $32   ; 
- - - - - - 0x001E41 00:9E31: 34        .byte $34   ; 
- - - - - - 0x001E42 00:9E32: 36        .byte $36   ; 
- - - - - - 0x001E43 00:9E33: 38        .byte $38   ; 
- - - - - - 0x001E44 00:9E34: 3A        .byte $3A   ; 
- - - - - - 0x001E45 00:9E35: 3C        .byte $3C   ; 
- - - - - - 0x001E46 00:9E36: 3E        .byte $3E   ; 
- - - - - - 0x001E47 00:9E37: 40        .byte $40   ; 
- - - - - - 0x001E48 00:9E38: 44        .byte $44   ; 
- - - - - - 0x001E49 00:9E39: 46        .byte $46   ; 
- - - - - - 0x001E4A 00:9E3A: 48        .byte $48   ; 
- - - - - - 0x001E4B 00:9E3B: 4A        .byte $4A   ; 
- - - - - - 0x001E4C 00:9E3C: 4C        .byte $4C   ; 
- - - - - - 0x001E4D 00:9E3D: 4E        .byte $4E   ; 
- - - - - - 0x001E4E 00:9E3E: 50        .byte $50   ; 
- - - - - - 0x001E4F 00:9E3F: 52        .byte $52   ; 
- - - - - - 0x001E50 00:9E40: 54        .byte $54   ; 
- - - - - - 0x001E51 00:9E41: 56        .byte $56   ; 
- - - - - - 0x001E52 00:9E42: 58        .byte $58   ; 
- - - - - - 0x001E53 00:9E43: 5A        .byte $5A   ; 
- - - - - - 0x001E54 00:9E44: 5C        .byte $5C   ; 
- - - - - - 0x001E55 00:9E45: 5E        .byte $5E   ; 
- - - - - - 0x001E56 00:9E46: 60        .byte $60   ; 
- - - - - - 0x001E57 00:9E47: 62        .byte $62   ; 
- - - - - - 0x001E58 00:9E48: 64        .byte $64   ; 
- - - - - - 0x001E59 00:9E49: 66        .byte $66   ; 
- - - - - - 0x001E5A 00:9E4A: 68        .byte $68   ; 
- - - - - - 0x001E5B 00:9E4B: 6A        .byte $6A   ; 
- - - - - - 0x001E5C 00:9E4C: 6C        .byte $6C   ; 
- - - - - - 0x001E5D 00:9E4D: 6E        .byte $6E   ; 
- - - - - - 0x001E5E 00:9E4E: 70        .byte $70   ; 
- - - - - - 0x001E5F 00:9E4F: 72        .byte $72   ; 
- - - - - - 0x001E60 00:9E50: 74        .byte $74   ; 
- - - - - - 0x001E61 00:9E51: 76        .byte $76   ; 
- - - - - - 0x001E62 00:9E52: 78        .byte $78   ; 
- - - - - - 0x001E63 00:9E53: 7A        .byte $7A   ; 
- - - - - - 0x001E64 00:9E54: 7C        .byte $7C   ; 
- - - - - - 0x001E65 00:9E55: 7E        .byte $7E   ; 
- - - - - - 0x001E66 00:9E56: 80        .byte $80   ; 
- - - - - - 0x001E67 00:9E57: 80        .byte $80   ; 



_off003_9E58_05:
- - - - - - 0x001E68 00:9E58: 00        .byte $00   ; 
- - - - - - 0x001E69 00:9E59: 00        .byte $00   ; 
- - - - - - 0x001E6A 00:9E5A: 00        .byte $00   ; 
- - - - - - 0x001E6B 00:9E5B: 00        .byte $00   ; 
- - - - - - 0x001E6C 00:9E5C: 02        .byte $02   ; 
- - - - - - 0x001E6D 00:9E5D: 02        .byte $02   ; 
- - - - - - 0x001E6E 00:9E5E: 02        .byte $02   ; 
- - - - - - 0x001E6F 00:9E5F: 02        .byte $02   ; 
- - - - - - 0x001E70 00:9E60: 00        .byte $00   ; 
- - - - - - 0x001E71 00:9E61: 00        .byte $00   ; 
- - - - - - 0x001E72 00:9E62: 00        .byte $00   ; 
- - - - - - 0x001E73 00:9E63: 00        .byte $00   ; 
- - - - - - 0x001E74 00:9E64: 02        .byte $02   ; 
- - - - - - 0x001E75 00:9E65: 02        .byte $02   ; 
- - - - - - 0x001E76 00:9E66: 02        .byte $02   ; 
- - - - - - 0x001E77 00:9E67: 02        .byte $02   ; 
- - - - - - 0x001E78 00:9E68: 00        .byte $00   ; 
- - - - - - 0x001E79 00:9E69: 00        .byte $00   ; 
- - - - - - 0x001E7A 00:9E6A: 03        .byte $03   ; 
- - - - - - 0x001E7B 00:9E6B: 03        .byte $03   ; 
- - - - - - 0x001E7C 00:9E6C: 00        .byte $00   ; 
- - - - - - 0x001E7D 00:9E6D: 00        .byte $00   ; 
- - - - - - 0x001E7E 00:9E6E: 03        .byte $03   ; 
- - - - - - 0x001E7F 00:9E6F: 03        .byte $03   ; 
- - - - - - 0x001E80 00:9E70: 00        .byte $00   ; 
- - - - - - 0x001E81 00:9E71: 00        .byte $00   ; 
- - - - - - 0x001E82 00:9E72: 03        .byte $03   ; 
- - - - - - 0x001E83 00:9E73: 03        .byte $03   ; 
- - - - - - 0x001E84 00:9E74: 00        .byte $00   ; 
- - - - - - 0x001E85 00:9E75: 00        .byte $00   ; 
- - - - - - 0x001E86 00:9E76: 03        .byte $03   ; 
- - - - - - 0x001E87 00:9E77: 03        .byte $03   ; 
- - - - - - 0x001E88 00:9E78: 00        .byte $00   ; 
- - - - - - 0x001E89 00:9E79: 00        .byte $00   ; 
- - - - - - 0x001E8A 00:9E7A: 00        .byte $00   ; 
- - - - - - 0x001E8B 00:9E7B: 00        .byte $00   ; 
- - - - - - 0x001E8C 00:9E7C: 00        .byte $00   ; 
- - - - - - 0x001E8D 00:9E7D: 02        .byte $02   ; 
- - - - - - 0x001E8E 00:9E7E: 02        .byte $02   ; 
- - - - - - 0x001E8F 00:9E7F: 02        .byte $02   ; 
- - - - - - 0x001E90 00:9E80: 02        .byte $02   ; 
- - - - - - 0x001E91 00:9E81: 02        .byte $02   ; 
- - - - - - 0x001E92 00:9E82: 00        .byte $00   ; 
- - - - - - 0x001E93 00:9E83: 00        .byte $00   ; 
- - - - - - 0x001E94 00:9E84: 00        .byte $00   ; 
- - - - - - 0x001E95 00:9E85: 00        .byte $00   ; 
- - - - - - 0x001E96 00:9E86: 00        .byte $00   ; 
- - - - - - 0x001E97 00:9E87: FE        .byte $FE   ; 
- - - - - - 0x001E98 00:9E88: FE        .byte $FE   ; 
- - - - - - 0x001E99 00:9E89: FE        .byte $FE   ; 
- - - - - - 0x001E9A 00:9E8A: FE        .byte $FE   ; 
- - - - - - 0x001E9B 00:9E8B: FE        .byte $FE   ; 
- - - - - - 0x001E9C 00:9E8C: 00        .byte $00   ; 
- - - - - - 0x001E9D 00:9E8D: 00        .byte $00   ; 
- - - - - - 0x001E9E 00:9E8E: 00        .byte $00   ; 
- - - - - - 0x001E9F 00:9E8F: 00        .byte $00   ; 
- - - - - - 0x001EA0 00:9E90: 00        .byte $00   ; 
- - - - - - 0x001EA1 00:9E91: 00        .byte $00   ; 
- - - - - - 0x001EA2 00:9E92: 00        .byte $00   ; 
- - - - - - 0x001EA3 00:9E93: 00        .byte $00   ; 
- - - - - - 0x001EA4 00:9E94: 00        .byte $00   ; 
- - - - - - 0x001EA5 00:9E95: 00        .byte $00   ; 
- - - - - - 0x001EA6 00:9E96: 02        .byte $02   ; 
- - - - - - 0x001EA7 00:9E97: 02        .byte $02   ; 
- - - - - - 0x001EA8 00:9E98: 02        .byte $02   ; 
- - - - - - 0x001EA9 00:9E99: 02        .byte $02   ; 
- - - - - - 0x001EAA 00:9E9A: 02        .byte $02   ; 
- - - - - - 0x001EAB 00:9E9B: 00        .byte $00   ; 
- - - - - - 0x001EAC 00:9E9C: 00        .byte $00   ; 
- - - - - - 0x001EAD 00:9E9D: 00        .byte $00   ; 
- - - - - - 0x001EAE 00:9E9E: 00        .byte $00   ; 
- - - - - - 0x001EAF 00:9E9F: 00        .byte $00   ; 
- - - - - - 0x001EB0 00:9EA0: FE        .byte $FE   ; 
- - - - - - 0x001EB1 00:9EA1: FE        .byte $FE   ; 
- - - - - - 0x001EB2 00:9EA2: FE        .byte $FE   ; 
- - - - - - 0x001EB3 00:9EA3: FE        .byte $FE   ; 
- - - - - - 0x001EB4 00:9EA4: FE        .byte $FE   ; 
- - - - - - 0x001EB5 00:9EA5: 00        .byte $00   ; 
- - - - - - 0x001EB6 00:9EA6: 00        .byte $00   ; 
- - - - - - 0x001EB7 00:9EA7: 00        .byte $00   ; 
- - - - - - 0x001EB8 00:9EA8: 00        .byte $00   ; 
- - - - - - 0x001EB9 00:9EA9: 00        .byte $00   ; 
- - - - - - 0x001EBA 00:9EAA: 00        .byte $00   ; 
- - - - - - 0x001EBB 00:9EAB: 00        .byte $00   ; 
- - - - - - 0x001EBC 00:9EAC: 00        .byte $00   ; 
- - - - - - 0x001EBD 00:9EAD: 00        .byte $00   ; 
- - - - - - 0x001EBE 00:9EAE: 00        .byte $00   ; 
- - - - - - 0x001EBF 00:9EAF: 02        .byte $02   ; 
- - - - - - 0x001EC0 00:9EB0: 02        .byte $02   ; 
- - - - - - 0x001EC1 00:9EB1: 02        .byte $02   ; 
- - - - - - 0x001EC2 00:9EB2: 02        .byte $02   ; 
- - - - - - 0x001EC3 00:9EB3: 02        .byte $02   ; 
- - - - - - 0x001EC4 00:9EB4: 00        .byte $00   ; 
- - - - - - 0x001EC5 00:9EB5: 00        .byte $00   ; 
- - - - - - 0x001EC6 00:9EB6: 00        .byte $00   ; 
- - - - - - 0x001EC7 00:9EB7: 00        .byte $00   ; 
- - - - - - 0x001EC8 00:9EB8: 00        .byte $00   ; 
- - - - - - 0x001EC9 00:9EB9: FE        .byte $FE   ; 
- - - - - - 0x001ECA 00:9EBA: FE        .byte $FE   ; 
- - - - - - 0x001ECB 00:9EBB: FE        .byte $FE   ; 
- - - - - - 0x001ECC 00:9EBC: FE        .byte $FE   ; 
- - - - - - 0x001ECD 00:9EBD: FE        .byte $FE   ; 
- - - - - - 0x001ECE 00:9EBE: 00        .byte $00   ; 
- - - - - - 0x001ECF 00:9EBF: 00        .byte $00   ; 
- - - - - - 0x001ED0 00:9EC0: 00        .byte $00   ; 
- - - - - - 0x001ED1 00:9EC1: 00        .byte $00   ; 
- - - - - - 0x001ED2 00:9EC2: 00        .byte $00   ; 
- - - - - - 0x001ED3 00:9EC3: 00        .byte $00   ; 
- - - - - - 0x001ED4 00:9EC4: 00        .byte $00   ; 
- - - - - - 0x001ED5 00:9EC5: 00        .byte $00   ; 
- - - - - - 0x001ED6 00:9EC6: 00        .byte $00   ; 
- - - - - - 0x001ED7 00:9EC7: 00        .byte $00   ; 
- - - - - - 0x001ED8 00:9EC8: 02        .byte $02   ; 
- - - - - - 0x001ED9 00:9EC9: 02        .byte $02   ; 
- - - - - - 0x001EDA 00:9ECA: 02        .byte $02   ; 
- - - - - - 0x001EDB 00:9ECB: 02        .byte $02   ; 
- - - - - - 0x001EDC 00:9ECC: 02        .byte $02   ; 
- - - - - - 0x001EDD 00:9ECD: 00        .byte $00   ; 
- - - - - - 0x001EDE 00:9ECE: 00        .byte $00   ; 
- - - - - - 0x001EDF 00:9ECF: 00        .byte $00   ; 
- - - - - - 0x001EE0 00:9ED0: 00        .byte $00   ; 
- - - - - - 0x001EE1 00:9ED1: 00        .byte $00   ; 
- - - - - - 0x001EE2 00:9ED2: FE        .byte $FE   ; 
- - - - - - 0x001EE3 00:9ED3: FE        .byte $FE   ; 
- - - - - - 0x001EE4 00:9ED4: FE        .byte $FE   ; 
- - - - - - 0x001EE5 00:9ED5: FE        .byte $FE   ; 
- - - - - - 0x001EE6 00:9ED6: FE        .byte $FE   ; 
- - - - - - 0x001EE7 00:9ED7: 00        .byte $00   ; 
- - - - - - 0x001EE8 00:9ED8: 00        .byte $00   ; 
- - - - - - 0x001EE9 00:9ED9: 00        .byte $00   ; 
- - - - - - 0x001EEA 00:9EDA: 00        .byte $00   ; 
- - - - - - 0x001EEB 00:9EDB: 00        .byte $00   ; 
- - - - - - 0x001EEC 00:9EDC: 00        .byte $00   ; 
- - - - - - 0x001EED 00:9EDD: 00        .byte $00   ; 
- - - - - - 0x001EEE 00:9EDE: 00        .byte $00   ; 
- - - - - - 0x001EEF 00:9EDF: 00        .byte $00   ; 
- - - - - - 0x001EF0 00:9EE0: 00        .byte $00   ; 
- - - - - - 0x001EF1 00:9EE1: 02        .byte $02   ; 
- - - - - - 0x001EF2 00:9EE2: 02        .byte $02   ; 
- - - - - - 0x001EF3 00:9EE3: 02        .byte $02   ; 
- - - - - - 0x001EF4 00:9EE4: 02        .byte $02   ; 
- - - - - - 0x001EF5 00:9EE5: 02        .byte $02   ; 
- - - - - - 0x001EF6 00:9EE6: 00        .byte $00   ; 
- - - - - - 0x001EF7 00:9EE7: 00        .byte $00   ; 
- - - - - - 0x001EF8 00:9EE8: 00        .byte $00   ; 
- - - - - - 0x001EF9 00:9EE9: 00        .byte $00   ; 
- - - - - - 0x001EFA 00:9EEA: 00        .byte $00   ; 
- - - - - - 0x001EFB 00:9EEB: FE        .byte $FE   ; 
- - - - - - 0x001EFC 00:9EEC: FE        .byte $FE   ; 
- - - - - - 0x001EFD 00:9EED: FE        .byte $FE   ; 
- - - - - - 0x001EFE 00:9EEE: FE        .byte $FE   ; 
- - - - - - 0x001EFF 00:9EEF: FE        .byte $FE   ; 
- - - - - - 0x001F00 00:9EF0: 00        .byte $00   ; 
- - - - - - 0x001F01 00:9EF1: 00        .byte $00   ; 
- - - - - - 0x001F02 00:9EF2: 00        .byte $00   ; 
- - - - - - 0x001F03 00:9EF3: 00        .byte $00   ; 
- - - - - - 0x001F04 00:9EF4: 00        .byte $00   ; 
- - - - - - 0x001F05 00:9EF5: 00        .byte $00   ; 
- - - - - - 0x001F06 00:9EF6: 00        .byte $00   ; 
- - - - - - 0x001F07 00:9EF7: 00        .byte $00   ; 
- - - - - - 0x001F08 00:9EF8: 00        .byte $00   ; 
- - - - - - 0x001F09 00:9EF9: 00        .byte $00   ; 
- - - - - - 0x001F0A 00:9EFA: 02        .byte $02   ; 
- - - - - - 0x001F0B 00:9EFB: 02        .byte $02   ; 
- - - - - - 0x001F0C 00:9EFC: 02        .byte $02   ; 
- - - - - - 0x001F0D 00:9EFD: 02        .byte $02   ; 
- - - - - - 0x001F0E 00:9EFE: 02        .byte $02   ; 
- - - - - - 0x001F0F 00:9EFF: 00        .byte $00   ; 
- - - - - - 0x001F10 00:9F00: 00        .byte $00   ; 
- - - - - - 0x001F11 00:9F01: 00        .byte $00   ; 
- - - - - - 0x001F12 00:9F02: 00        .byte $00   ; 
- - - - - - 0x001F13 00:9F03: 00        .byte $00   ; 
- - - - - - 0x001F14 00:9F04: FE        .byte $FE   ; 
- - - - - - 0x001F15 00:9F05: FE        .byte $FE   ; 
- - - - - - 0x001F16 00:9F06: FE        .byte $FE   ; 
- - - - - - 0x001F17 00:9F07: FE        .byte $FE   ; 
- - - - - - 0x001F18 00:9F08: FE        .byte $FE   ; 
- - - - - - 0x001F19 00:9F09: 00        .byte $00   ; 
- - - - - - 0x001F1A 00:9F0A: 00        .byte $00   ; 
- - - - - - 0x001F1B 00:9F0B: 00        .byte $00   ; 
- - - - - - 0x001F1C 00:9F0C: 00        .byte $00   ; 
- - - - - - 0x001F1D 00:9F0D: 00        .byte $00   ; 
- - - - - - 0x001F1E 00:9F0E: 00        .byte $00   ; 
- - - - - - 0x001F1F 00:9F0F: 00        .byte $00   ; 
- - - - - - 0x001F20 00:9F10: 00        .byte $00   ; 
- - - - - - 0x001F21 00:9F11: 00        .byte $00   ; 
- - - - - - 0x001F22 00:9F12: 00        .byte $00   ; 
- - - - - - 0x001F23 00:9F13: 02        .byte $02   ; 
- - - - - - 0x001F24 00:9F14: 02        .byte $02   ; 
- - - - - - 0x001F25 00:9F15: 02        .byte $02   ; 
- - - - - - 0x001F26 00:9F16: 02        .byte $02   ; 
- - - - - - 0x001F27 00:9F17: 02        .byte $02   ; 
- - - - - - 0x001F28 00:9F18: 00        .byte $00   ; 
- - - - - - 0x001F29 00:9F19: 00        .byte $00   ; 
- - - - - - 0x001F2A 00:9F1A: 00        .byte $00   ; 
- - - - - - 0x001F2B 00:9F1B: 00        .byte $00   ; 
- - - - - - 0x001F2C 00:9F1C: 00        .byte $00   ; 
- - - - - - 0x001F2D 00:9F1D: FE        .byte $FE   ; 
- - - - - - 0x001F2E 00:9F1E: FE        .byte $FE   ; 
- - - - - - 0x001F2F 00:9F1F: FE        .byte $FE   ; 
- - - - - - 0x001F30 00:9F20: FE        .byte $FE   ; 
- - - - - - 0x001F31 00:9F21: FE        .byte $FE   ; 
- - - - - - 0x001F32 00:9F22: 00        .byte $00   ; 
- - - - - - 0x001F33 00:9F23: 00        .byte $00   ; 
- - - - - - 0x001F34 00:9F24: 00        .byte $00   ; 
- - - - - - 0x001F35 00:9F25: 00        .byte $00   ; 
- - - - - - 0x001F36 00:9F26: 00        .byte $00   ; 
- - - - - - 0x001F37 00:9F27: 00        .byte $00   ; 
- - - - - - 0x001F38 00:9F28: 00        .byte $00   ; 
- - - - - - 0x001F39 00:9F29: 00        .byte $00   ; 
- - - - - - 0x001F3A 00:9F2A: 00        .byte $00   ; 
- - - - - - 0x001F3B 00:9F2B: 00        .byte $00   ; 
- - - - - - 0x001F3C 00:9F2C: 02        .byte $02   ; 
- - - - - - 0x001F3D 00:9F2D: 02        .byte $02   ; 
- - - - - - 0x001F3E 00:9F2E: 02        .byte $02   ; 
- - - - - - 0x001F3F 00:9F2F: 02        .byte $02   ; 
- - - - - - 0x001F40 00:9F30: 02        .byte $02   ; 
- - - - - - 0x001F41 00:9F31: 00        .byte $00   ; 
- - - - - - 0x001F42 00:9F32: 00        .byte $00   ; 
- - - - - - 0x001F43 00:9F33: 00        .byte $00   ; 
- - - - - - 0x001F44 00:9F34: 00        .byte $00   ; 
- - - - - - 0x001F45 00:9F35: 00        .byte $00   ; 
- - - - - - 0x001F46 00:9F36: FE        .byte $FE   ; 
- - - - - - 0x001F47 00:9F37: FE        .byte $FE   ; 
- - - - - - 0x001F48 00:9F38: FE        .byte $FE   ; 
- - - - - - 0x001F49 00:9F39: FE        .byte $FE   ; 
- - - - - - 0x001F4A 00:9F3A: FE        .byte $FE   ; 
- - - - - - 0x001F4B 00:9F3B: 80        .byte $80   ; 



tbl_9F3C:
- - - - - - 0x001F4C 00:9F3C: 3E 9F     .word off_9F3E



off_9F3E:
- - - - - - 0x001F4E 00:9F3E: 00        .byte $00   ; 
- - - - - - 0x001F4F 00:9F3F: 00        .byte $00   ; 
- - - - - - 0x001F50 00:9F40: 7D        .byte $7D   ; 
- - - - - - 0x001F51 00:9F41: 00        .byte $00   ; 
- - - - - - 0x001F52 00:9F42: 00        .byte $00   ; 
- - - - - - 0x001F53 00:9F43: 00        .byte $00   ; 
- - - - - - 0x001F54 00:9F44: 00        .byte $00   ; 
- - - - - - 0x001F55 00:9F45: 00        .byte $00   ; 
- - - - - - 0x001F56 00:9F46: 00        .byte $00   ; 
- - - - - - 0x001F57 00:9F47: 00        .byte $00   ; 
- - - - - - 0x001F58 00:9F48: 00        .byte $00   ; 
- - - - - - 0x001F59 00:9F49: 00        .byte $00   ; 
- - - - - - 0x001F5A 00:9F4A: 00        .byte $00   ; 



tbl_9F4B:
- - - - - - 0x001F5B 00:9F4B: 65 9F     .word _off004_9F65_00
- D 0 - - - 0x001F5D 00:9F4D: 6A 9F     .word _off004_9F6A_01
- D 0 - - - 0x001F5F 00:9F4F: 6F 9F     .word _off004_9F6F_02
- D 0 - - - 0x001F61 00:9F51: 85 9F     .word _off004_9F85_03
- - - - - - 0x001F63 00:9F53: 74 9F     .word _off004_9F74_04
- - - - - - 0x001F65 00:9F55: 96 9F     .word _off004_9F96_05
- - - - - - 0x001F67 00:9F57: 96 9F     .word _off004_9F96_06
- - - - - - 0x001F69 00:9F59: 96 9F     .word _off004_9F96_07
- D 0 - - - 0x001F6B 00:9F5B: A7 9F     .word _off004_9FA7_08
- - - - - - 0x001F6D 00:9F5D: D4 9F     .word _off004_9FD4_09
- - - - - - 0x001F6F 00:9F5F: 96 9F     .word _off004_9F96_0A
- - - - - - 0x001F71 00:9F61: 96 9F     .word _off004_9F96_0B
- - - - - - 0x001F73 00:9F63: 01 A0     .word _off004_A001_0C



_off004_9F65_00:
- - - - - - 0x001F75 00:9F65: 00        .byte $00   ; 
- - - - - - 0x001F76 00:9F66: 30        .byte $30   ; 
- - - - - - 0x001F77 00:9F67: 00        .byte $00   ; 
- - - - - - 0x001F78 00:9F68: 08        .byte $08   ; 
- - - - - - 0x001F79 00:9F69: 00        .byte $00   ; 



_off004_9F6A_01:
- D 0 - I - 0x001F7A 00:9F6A: 01        .byte $01   ; 
- D 0 - I - 0x001F7B 00:9F6B: 25        .byte $25   ; 
- D 0 - I - 0x001F7C 00:9F6C: 0F        .byte $0F   ; 
- D 0 - I - 0x001F7D 00:9F6D: 08        .byte $08   ; 
- D 0 - I - 0x001F7E 00:9F6E: 00        .byte $00   ; 



_off004_9F6F_02:
- D 0 - I - 0x001F7F 00:9F6F: 01        .byte $01   ; 
- D 0 - I - 0x001F80 00:9F70: 29        .byte $29   ; 
- D 0 - I - 0x001F81 00:9F71: 00        .byte $00   ; 
- D 0 - I - 0x001F82 00:9F72: 08        .byte $08   ; 
- D 0 - I - 0x001F83 00:9F73: 00        .byte $00   ; 



_off004_9F74_04:
- - - - - - 0x001F84 00:9F74: 01        .byte $01   ; 
- - - - - - 0x001F85 00:9F75: 1A        .byte $1A   ; 
- - - - - - 0x001F86 00:9F76: 02        .byte $02   ; 
- - - - - - 0x001F87 00:9F77: 08        .byte $08   ; 
- - - - - - 0x001F88 00:9F78: 01        .byte $01   ; 
- - - - - - 0x001F89 00:9F79: 17        .byte $17   ; 
- - - - - - 0x001F8A 00:9F7A: 01        .byte $01   ; 
- - - - - - 0x001F8B 00:9F7B: 08        .byte $08   ; 
- - - - - - 0x001F8C 00:9F7C: 02        .byte $02   ; 
- - - - - - 0x001F8D 00:9F7D: 15        .byte $15   ; 
- - - - - - 0x001F8E 00:9F7E: 00        .byte $00   ; 
- - - - - - 0x001F8F 00:9F7F: 08        .byte $08   ; 
- - - - - - 0x001F90 00:9F80: 02        .byte $02   ; 
- - - - - - 0x001F91 00:9F81: 12        .byte $12   ; 
- - - - - - 0x001F92 00:9F82: 00        .byte $00   ; 
- - - - - - 0x001F93 00:9F83: 08        .byte $08   ; 
- - - - - - 0x001F94 00:9F84: 00        .byte $00   ; 



_off004_9F85_03:
- D 0 - I - 0x001F95 00:9F85: 01        .byte $01   ; 
- D 0 - I - 0x001F96 00:9F86: 19        .byte $19   ; 
- D 0 - I - 0x001F97 00:9F87: 07        .byte $07   ; 
- D 0 - I - 0x001F98 00:9F88: 08        .byte $08   ; 
- D 0 - I - 0x001F99 00:9F89: 01        .byte $01   ; 
- D 0 - I - 0x001F9A 00:9F8A: 15        .byte $15   ; 
- D 0 - I - 0x001F9B 00:9F8B: 06        .byte $06   ; 
- D 0 - I - 0x001F9C 00:9F8C: 08        .byte $08   ; 
- D 0 - I - 0x001F9D 00:9F8D: 02        .byte $02   ; 
- D 0 - I - 0x001F9E 00:9F8E: 13        .byte $13   ; 
- D 0 - I - 0x001F9F 00:9F8F: 06        .byte $06   ; 
- D 0 - I - 0x001FA0 00:9F90: 08        .byte $08   ; 
- D 0 - I - 0x001FA1 00:9F91: 01        .byte $01   ; 
- D 0 - I - 0x001FA2 00:9F92: 12        .byte $12   ; 
- D 0 - I - 0x001FA3 00:9F93: 06        .byte $06   ; 
- D 0 - I - 0x001FA4 00:9F94: 08        .byte $08   ; 
- D 0 - I - 0x001FA5 00:9F95: 00        .byte $00   ; 



_off004_9F96_05:
_off004_9F96_06:
_off004_9F96_07:
_off004_9F96_0A:
_off004_9F96_0B:
- - - - - - 0x001FA6 00:9F96: 01        .byte $01   ; 
- - - - - - 0x001FA7 00:9F97: 12        .byte $12   ; 
- - - - - - 0x001FA8 00:9F98: 07        .byte $07   ; 
- - - - - - 0x001FA9 00:9F99: 08        .byte $08   ; 
- - - - - - 0x001FAA 00:9F9A: 01        .byte $01   ; 
- - - - - - 0x001FAB 00:9F9B: 11        .byte $11   ; 
- - - - - - 0x001FAC 00:9F9C: 06        .byte $06   ; 
- - - - - - 0x001FAD 00:9F9D: 08        .byte $08   ; 
- - - - - - 0x001FAE 00:9F9E: 02        .byte $02   ; 
- - - - - - 0x001FAF 00:9F9F: 11        .byte $11   ; 
- - - - - - 0x001FB0 00:9FA0: 06        .byte $06   ; 
- - - - - - 0x001FB1 00:9FA1: 08        .byte $08   ; 
- - - - - - 0x001FB2 00:9FA2: 03        .byte $03   ; 
- - - - - - 0x001FB3 00:9FA3: 11        .byte $11   ; 
- - - - - - 0x001FB4 00:9FA4: 06        .byte $06   ; 
- - - - - - 0x001FB5 00:9FA5: 08        .byte $08   ; 
- - - - - - 0x001FB6 00:9FA6: 00        .byte $00   ; 



_off004_9FA7_08:
- D 0 - I - 0x001FB7 00:9FA7: 02        .byte $02   ; 
- D 0 - I - 0x001FB8 00:9FA8: 1B        .byte $1B   ; 
- D 0 - I - 0x001FB9 00:9FA9: 09        .byte $09   ; 
- D 0 - I - 0x001FBA 00:9FAA: 08        .byte $08   ; 
- D 0 - I - 0x001FBB 00:9FAB: 02        .byte $02   ; 
- D 0 - I - 0x001FBC 00:9FAC: 1C        .byte $1C   ; 
- D 0 - I - 0x001FBD 00:9FAD: 07        .byte $07   ; 
- D 0 - I - 0x001FBE 00:9FAE: 08        .byte $08   ; 
- D 0 - I - 0x001FBF 00:9FAF: 02        .byte $02   ; 
- D 0 - I - 0x001FC0 00:9FB0: 1A        .byte $1A   ; 
- D 0 - I - 0x001FC1 00:9FB1: 06        .byte $06   ; 
- D 0 - I - 0x001FC2 00:9FB2: 08        .byte $08   ; 
- D 0 - I - 0x001FC3 00:9FB3: 01        .byte $01   ; 
- D 0 - I - 0x001FC4 00:9FB4: 19        .byte $19   ; 
- D 0 - I - 0x001FC5 00:9FB5: 04        .byte $04   ; 
- D 0 - I - 0x001FC6 00:9FB6: 08        .byte $08   ; 
- D 0 - I - 0x001FC7 00:9FB7: 01        .byte $01   ; 
- D 0 - I - 0x001FC8 00:9FB8: 17        .byte $17   ; 
- D 0 - I - 0x001FC9 00:9FB9: 04        .byte $04   ; 
- D 0 - I - 0x001FCA 00:9FBA: 08        .byte $08   ; 
- D 0 - I - 0x001FCB 00:9FBB: 01        .byte $01   ; 
- D 0 - I - 0x001FCC 00:9FBC: 16        .byte $16   ; 
- D 0 - I - 0x001FCD 00:9FBD: 04        .byte $04   ; 
- D 0 - I - 0x001FCE 00:9FBE: 08        .byte $08   ; 
- D 0 - I - 0x001FCF 00:9FBF: 01        .byte $01   ; 
- D 0 - I - 0x001FD0 00:9FC0: 15        .byte $15   ; 
- D 0 - I - 0x001FD1 00:9FC1: 04        .byte $04   ; 
- D 0 - I - 0x001FD2 00:9FC2: 08        .byte $08   ; 
- D 0 - I - 0x001FD3 00:9FC3: 01        .byte $01   ; 
- D 0 - I - 0x001FD4 00:9FC4: 14        .byte $14   ; 
- D 0 - I - 0x001FD5 00:9FC5: 04        .byte $04   ; 
- D 0 - I - 0x001FD6 00:9FC6: 08        .byte $08   ; 
- D 0 - I - 0x001FD7 00:9FC7: 01        .byte $01   ; 
- D 0 - I - 0x001FD8 00:9FC8: 13        .byte $13   ; 
- D 0 - I - 0x001FD9 00:9FC9: 04        .byte $04   ; 
- D 0 - I - 0x001FDA 00:9FCA: 08        .byte $08   ; 
- D 0 - I - 0x001FDB 00:9FCB: 01        .byte $01   ; 
- D 0 - I - 0x001FDC 00:9FCC: 12        .byte $12   ; 
- D 0 - I - 0x001FDD 00:9FCD: 04        .byte $04   ; 
- D 0 - I - 0x001FDE 00:9FCE: 08        .byte $08   ; 
- D 0 - I - 0x001FDF 00:9FCF: 04        .byte $04   ; 
- D 0 - I - 0x001FE0 00:9FD0: 11        .byte $11   ; 
- D 0 - I - 0x001FE1 00:9FD1: 04        .byte $04   ; 
- D 0 - I - 0x001FE2 00:9FD2: 08        .byte $08   ; 
- D 0 - I - 0x001FE3 00:9FD3: 00        .byte $00   ; 



_off004_9FD4_09:
- - - - - - 0x001FE4 00:9FD4: 01        .byte $01   ; 
- - - - - - 0x001FE5 00:9FD5: 1B        .byte $1B   ; 
- - - - - - 0x001FE6 00:9FD6: 08        .byte $08   ; 
- - - - - - 0x001FE7 00:9FD7: 08        .byte $08   ; 
- - - - - - 0x001FE8 00:9FD8: 01        .byte $01   ; 
- - - - - - 0x001FE9 00:9FD9: 1C        .byte $1C   ; 
- - - - - - 0x001FEA 00:9FDA: 03        .byte $03   ; 
- - - - - - 0x001FEB 00:9FDB: 08        .byte $08   ; 
- - - - - - 0x001FEC 00:9FDC: 02        .byte $02   ; 
- - - - - - 0x001FED 00:9FDD: 1A        .byte $1A   ; 
- - - - - - 0x001FEE 00:9FDE: 04        .byte $04   ; 
- - - - - - 0x001FEF 00:9FDF: 08        .byte $08   ; 
- - - - - - 0x001FF0 00:9FE0: 01        .byte $01   ; 
- - - - - - 0x001FF1 00:9FE1: 19        .byte $19   ; 
- - - - - - 0x001FF2 00:9FE2: 03        .byte $03   ; 
- - - - - - 0x001FF3 00:9FE3: 08        .byte $08   ; 
- - - - - - 0x001FF4 00:9FE4: 01        .byte $01   ; 
- - - - - - 0x001FF5 00:9FE5: 17        .byte $17   ; 
- - - - - - 0x001FF6 00:9FE6: 02        .byte $02   ; 
- - - - - - 0x001FF7 00:9FE7: 08        .byte $08   ; 
- - - - - - 0x001FF8 00:9FE8: 01        .byte $01   ; 
- - - - - - 0x001FF9 00:9FE9: 16        .byte $16   ; 
- - - - - - 0x001FFA 00:9FEA: 02        .byte $02   ; 
- - - - - - 0x001FFB 00:9FEB: 08        .byte $08   ; 
- - - - - - 0x001FFC 00:9FEC: 01        .byte $01   ; 
- - - - - - 0x001FFD 00:9FED: 15        .byte $15   ; 
- - - - - - 0x001FFE 00:9FEE: 02        .byte $02   ; 
- - - - - - 0x001FFF 00:9FEF: 08        .byte $08   ; 
- - - - - - 0x002000 00:9FF0: 01        .byte $01   ; 
- - - - - - 0x002001 00:9FF1: 14        .byte $14   ; 
- - - - - - 0x002002 00:9FF2: 02        .byte $02   ; 
- - - - - - 0x002003 00:9FF3: 08        .byte $08   ; 
- - - - - - 0x002004 00:9FF4: 01        .byte $01   ; 
- - - - - - 0x002005 00:9FF5: 13        .byte $13   ; 
- - - - - - 0x002006 00:9FF6: 02        .byte $02   ; 
- - - - - - 0x002007 00:9FF7: 08        .byte $08   ; 
- - - - - - 0x002008 00:9FF8: 02        .byte $02   ; 
- - - - - - 0x002009 00:9FF9: 12        .byte $12   ; 
- - - - - - 0x00200A 00:9FFA: 02        .byte $02   ; 
- - - - - - 0x00200B 00:9FFB: 08        .byte $08   ; 
- - - - - - 0x00200C 00:9FFC: 04        .byte $04   ; 
- - - - - - 0x00200D 00:9FFD: 11        .byte $11   ; 
- - - - - - 0x00200E 00:9FFE: 02        .byte $02   ; 
- - - - - - 0x00200F 00:9FFF: 08        .byte $08   ; 
- D 1 - - - 0x002010 00:A000: 00        .byte $00   ; 



_off004_A001_0C:
- D 1 - - - 0x002011 00:A001: 01        .byte $01   ; 
- - - - - - 0x002012 00:A002: 1A        .byte $1A   ; 
- - - - - - 0x002013 00:A003: 05        .byte $05   ; 
- - - - - - 0x002014 00:A004: 08        .byte $08   ; 
- - - - - - 0x002015 00:A005: 01        .byte $01   ; 
- - - - - - 0x002016 00:A006: 18        .byte $18   ; 
- - - - - - 0x002017 00:A007: 09        .byte $09   ; 
- - - - - - 0x002018 00:A008: 08        .byte $08   ; 
- - - - - - 0x002019 00:A009: 01        .byte $01   ; 
- - - - - - 0x00201A 00:A00A: 14        .byte $14   ; 
- - - - - - 0x00201B 00:A00B: 06        .byte $06   ; 
- - - - - - 0x00201C 00:A00C: 08        .byte $08   ; 
- - - - - - 0x00201D 00:A00D: 01        .byte $01   ; 
- - - - - - 0x00201E 00:A00E: 12        .byte $12   ; 
- - - - - - 0x00201F 00:A00F: 03        .byte $03   ; 
- - - - - - 0x002020 00:A010: 08        .byte $08   ; 
- - - - - - 0x002021 00:A011: 01        .byte $01   ; 
- - - - - - 0x002022 00:A012: 11        .byte $11   ; 
- - - - - - 0x002023 00:A013: 02        .byte $02   ; 
- - - - - - 0x002024 00:A014: 08        .byte $08   ; 
- - - - - - 0x002025 00:A015: 00        .byte $00   ; 



tbl_A016_music_data:
; bzk optimize, 1st byte is always 0D
; bzk optimize, 04th channel is always 0000
- D 1 - - - 0x002026 00:A016: 0D        .byte $0D   ; 
- D 1 - - - 0x002027 00:A017: 46 A0     .word _off005_A046_20_disable

- D 1 - - - 0x002029 00:A019: 0D        .byte $0D   ; 
- D 1 - - - 0x00202A 00:A01A: 56 A0     .word _off005_A056_21_title_screen

- D 1 - - - 0x00202C 00:A01C: 0D        .byte $0D   ; 
- D 1 - - - 0x00202D 00:A01D: A0 A3     .word _off005_A3A0_22_ost_1

- D 1 - - - 0x00202F 00:A01F: 0D        .byte $0D   ; 
- D 1 - - - 0x002030 00:A020: 0E A6     .word _off005_A60E_23_ost_8

- D 1 - - - 0x002032 00:A022: 0D        .byte $0D   ; 
- D 1 - - - 0x002033 00:A023: 96 A8     .word _off005_A896_24_ost_5

- D 1 - - - 0x002035 00:A025: 0D        .byte $0D   ; 
- D 1 - - - 0x002036 00:A026: AF AA     .word _off005_AAAF_25_ost_4

- D 1 - - - 0x002038 00:A028: 0D        .byte $0D   ; 
- D 1 - - - 0x002039 00:A029: A9 AD     .word _off005_ADA9_26_ost_7

- D 1 - - - 0x00203B 00:A02B: 0D        .byte $0D   ; 
- D 1 - - - 0x00203C 00:A02C: AB B0     .word _off005_B0AB_27_phone_call

- D 1 - - - 0x00203E 00:A02E: 0D        .byte $0D   ; 
- D 1 - - - 0x00203F 00:A02F: 7B B2     .word _off005_B27B_28_ost_3

- D 1 - - - 0x002041 00:A031: 0D        .byte $0D   ; 
- D 1 - - - 0x002042 00:A032: 92 B5     .word _off005_B592_29_ost_6

- D 1 - - - 0x002044 00:A034: 0D        .byte $0D   ; 
- D 1 - - - 0x002045 00:A035: 66 B7     .word _off005_B766_2A_the_end

- - - - - - 0x002047 00:A037: 0D        .byte $0D   ; 
- - - - - - 0x002048 00:A038: 56 A0     .word _off005_A056_2B

- D 1 - - - 0x00204A 00:A03A: 0D        .byte $0D   ; 
- D 1 - - - 0x00204B 00:A03B: 4B BA     .word _off005_BA4B_2C_ost_2

- D 1 - - - 0x00204D 00:A03D: 0D        .byte $0D   ; 
- D 1 - - - 0x00204E 00:A03E: 9D BC     .word _off005_BC9D_2D_game_over

- D 1 - - - 0x002050 00:A040: 0D        .byte $0D   ; 
- D 1 - - - 0x002051 00:A041: 5F BD     .word _off005_BD5F_2E_round_complete

- D 1 - - - 0x002053 00:A043: 0D        .byte $0D   ; 
- D 1 - - - 0x002054 00:A044: F8 BD     .word _off005_BDF8_2F_boss_fight



_off005_A046_20_disable:
; all channels are disabled
- D 1 - I - 0x002056 00:A046: 00 00     .word $0000 ; 00 
- D 1 - I - 0x002058 00:A048: 00 00     .word $0000 ; 01 
- D 1 - I - 0x00205A 00:A04A: 00 00     .word $0000 ; 02 
- D 1 - I - 0x00205C 00:A04C: 00 00     .word $0000 ; 03 
- D 1 - I - 0x00205E 00:A04E: 00 00     .word $0000 ; 04 



tbl_A050_channel_04:
; if channel has 0000 pointer, use this data instead
; except for 20, every music replaces channel 04 with this data
- D 1 - I - 0x002060 00:A050: D4        .byte con_mcb_D4, $04   ; 
- D 1 - I - 0x002062 00:A052: DC        .byte con_mcb_DC, $01   ; 
- D 1 - I - 0x002064 00:A054: 00        .byte $00   ; 
- D 1 - I - 0x002065 00:A055: D0        .byte con_mcb_stop   ; 



_off005_A056_21_title_screen:
_off005_A056_2B:
- D 1 - I - 0x002066 00:A056: 60 A0     .word ch_21_A060_00
- D 1 - I - 0x002068 00:A058: 4A A1     .word ch_21_A14A_01
- D 1 - I - 0x00206A 00:A05A: 6F A2     .word ch_21_A26F_02
- D 1 - I - 0x00206C 00:A05C: FF A2     .word ch_21_A2FF_03
- D 1 - I - 0x00206E 00:A05E: 00 00     .word $0000 ;    04



ch_21_A060_00:
- D 1 - I - 0x002070 00:A060: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x002072 00:A062: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x002074 00:A064: E5        .byte con_mcb_E5, $11   ; 
- D 1 - I - 0x002076 00:A066: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x002078 00:A068: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x00207A 00:A06A: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x00207C 00:A06C: E3        .byte con_mcb_E3, $10   ; 
- D 1 - I - 0x00207E 00:A06E: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002080 00:A070: 83        .byte $83   ; 
- D 1 - I - 0x002081 00:A071: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002083 00:A073: 1C        .byte $1C   ; 
- D 1 - I - 0x002084 00:A074: A6        .byte $A6   ; 
- D 1 - I - 0x002085 00:A075: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002087 00:A077: 87        .byte $87   ; 
- D 1 - I - 0x002088 00:A078: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002089 00:A079: 13        .byte $13   ; 
- D 1 - I - 0x00208A 00:A07A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00208B 00:A07B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00208D 00:A07D: 86        .byte $86   ; 
- D 1 - I - 0x00208E 00:A07E: 05        .byte $05   ; 
- D 1 - I - 0x00208F 00:A07F: A6        .byte $A6   ; 
- D 1 - I - 0x002090 00:A080: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002091 00:A081: 16        .byte $16   ; 
- D 1 - I - 0x002092 00:A082: 05        .byte $05   ; 
- D 1 - I - 0x002093 00:A083: 56        .byte $56   ; 
- D 1 - I - 0x002094 00:A084: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002095 00:A085: 56        .byte $56   ; 
- D 1 - I - 0x002096 00:A086: 05        .byte $05   ; 
- D 1 - I - 0x002097 00:A087: 16        .byte $16   ; 
- D 1 - I - 0x002098 00:A088: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002099 00:A089: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00209B 00:A08B: 17        .byte $17   ; 
- D 1 - I - 0x00209C 00:A08C: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x00209E 00:A08E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0020A0 00:A090: 0C        .byte $0C   ; 
- D 1 - I - 0x0020A1 00:A091: 05        .byte $05   ; 
- D 1 - I - 0x0020A2 00:A092: 86        .byte $86   ; 
- D 1 - I - 0x0020A3 00:A093: AC        .byte $AC   ; 
- D 1 - I - 0x0020A4 00:A094: 80        .byte $80   ; 
- D 1 - I - 0x0020A5 00:A095: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x0020A7 00:A097: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0020A9 00:A099: 13        .byte $13   ; 
- D 1 - I - 0x0020AA 00:A09A: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0020AC 00:A09C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0020AD 00:A09D: 86        .byte $86   ; 
- D 1 - I - 0x0020AE 00:A09E: 05        .byte $05   ; 
- D 1 - I - 0x0020AF 00:A09F: A6        .byte $A6   ; 
- D 1 - I - 0x0020B0 00:A0A0: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0020B1 00:A0A1: 16        .byte $16   ; 
- D 1 - I - 0x0020B2 00:A0A2: 05        .byte $05   ; 
- D 1 - I - 0x0020B3 00:A0A3: 56        .byte $56   ; 
- D 1 - I - 0x0020B4 00:A0A4: 0C        .byte $0C   ; 
- D 1 - I - 0x0020B5 00:A0A5: 86        .byte $86   ; 
- D 1 - I - 0x0020B6 00:A0A6: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0020B7 00:A0A7: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0020B9 00:A0A9: 83        .byte $83   ; 
- D 1 - I - 0x0020BA 00:A0AA: B3        .byte $B3   ; 
- D 1 - I - 0x0020BB 00:A0AB: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0020BD 00:A0AD: 86        .byte $86   ; 
- D 1 - I - 0x0020BE 00:A0AE: 05        .byte $05   ; 
- D 1 - I - 0x0020BF 00:A0AF: A6        .byte $A6   ; 
- D 1 - I - 0x0020C0 00:A0B0: 8C        .byte $8C   ; 
- D 1 - I - 0x0020C1 00:A0B1: 06        .byte $06   ; 
- D 1 - I - 0x0020C2 00:A0B2: 66        .byte $66   ; 
- D 1 - I - 0x0020C3 00:A0B3: 05        .byte $05   ; 
- D 1 - I - 0x0020C4 00:A0B4: 56        .byte $56   ; 
- D 1 - I - 0x0020C5 00:A0B5: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0020C7 00:A0B7: 13        .byte $13   ; 
- D 1 - I - 0x0020C8 00:A0B8: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0020C9 00:A0B9: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0020CB 00:A0BB: 16        .byte $16   ; 
- D 1 - I - 0x0020CC 00:A0BC: 05        .byte $05   ; 
- D 1 - I - 0x0020CD 00:A0BD: 36        .byte $36   ; 
- D 1 - I - 0x0020CE 00:A0BE: 5C        .byte $5C   ; 
- D 1 - I - 0x0020CF 00:A0BF: 06        .byte $06   ; 
- D 1 - I - 0x0020D0 00:A0C0: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0020D2 00:A0C2: 63        .byte $63   ; 
- D 1 - I - 0x0020D3 00:A0C3: 13        .byte $13   ; 
- D 1 - I - 0x0020D4 00:A0C4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0020D6 00:A0C6: 66        .byte $66   ; 
- D 1 - I - 0x0020D7 00:A0C7: 05        .byte $05   ; 
- D 1 - I - 0x0020D8 00:A0C8: 56        .byte $56   ; 
- D 1 - I - 0x0020D9 00:A0C9: 3C        .byte $3C   ; 
- D 1 - I - 0x0020DA 00:A0CA: 06        .byte $06   ; 
- D 1 - I - 0x0020DB 00:A0CB: 56        .byte $56   ; 
- D 1 - I - 0x0020DC 00:A0CC: 55        .byte $55   ; 
- D 1 - I - 0x0020DD 00:A0CD: 56        .byte $56   ; 
- D 1 - I - 0x0020DE 00:A0CE: 36        .byte $36   ; 
- D 1 - I - 0x0020DF 00:A0CF: 35        .byte $35   ; 
- D 1 - I - 0x0020E0 00:A0D0: 16        .byte $16   ; 
- D 1 - I - 0x0020E1 00:A0D1: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0020E3 00:A0D3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0020E4 00:A0D4: C3        .byte $C3   ; 
- D 1 - I - 0x0020E5 00:A0D5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0020E6 00:A0D6: 33        .byte $33   ; 
- D 1 - I - 0x0020E7 00:A0D7: 13        .byte $13   ; 
- D 1 - I - 0x0020E8 00:A0D8: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0020EA 00:A0DA: 13        .byte $13   ; 
- D 1 - I - 0x0020EB 00:A0DB: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0020ED 00:A0DD: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0020EE 00:A0DE: 07 A1     .word sub_DF_A107
- D 1 - I - 0x0020F0 00:A0E0: 17        .byte $17   ; 
- D 1 - I - 0x0020F1 00:A0E1: 87        .byte $87   ; 
- D 1 - I - 0x0020F2 00:A0E2: 57        .byte $57   ; 
- D 1 - I - 0x0020F3 00:A0E3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0020F4 00:A0E4: 07 A1     .word sub_DF_A107
- D 1 - I - 0x0020F6 00:A0E6: 87        .byte $87   ; 
- D 1 - I - 0x0020F7 00:A0E7: 57        .byte $57   ; 
- D 1 - I - 0x0020F8 00:A0E8: 37        .byte $37   ; 
- D 1 - I - 0x0020F9 00:A0E9: C7        .byte $C7   ; 
- D 1 - I - 0x0020FA 00:A0EA: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0020FB 00:A0EB: 28 A1     .word sub_DF_A128
- D 1 - I - 0x0020FD 00:A0ED: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0020FF 00:A0EF: 66        .byte $66   ; 
- D 1 - I - 0x002100 00:A0F0: 05        .byte $05   ; 
- D 1 - I - 0x002101 00:A0F1: 66        .byte $66   ; 
- D 1 - I - 0x002102 00:A0F2: 66        .byte $66   ; 
- D 1 - I - 0x002103 00:A0F3: 55        .byte $55   ; 
- D 1 - I - 0x002104 00:A0F4: 66        .byte $66   ; 
- D 1 - I - 0x002105 00:A0F5: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002107 00:A0F7: 87        .byte $87   ; 
- D 1 - I - 0x002108 00:A0F8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002109 00:A0F9: 28 A1     .word sub_DF_A128
- D 1 - I - 0x00210B 00:A0FB: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00210D 00:A0FD: 66        .byte $66   ; 
- D 1 - I - 0x00210E 00:A0FE: 65        .byte $65   ; 
- D 1 - I - 0x00210F 00:A0FF: 66        .byte $66   ; 
- D 1 - I - 0x002110 00:A100: 66        .byte $66   ; 
- D 1 - I - 0x002111 00:A101: 55        .byte $55   ; 
- D 1 - I - 0x002112 00:A102: 36        .byte $36   ; 
- D 1 - I - 0x002113 00:A103: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002115 00:A105: 17        .byte $17   ; 
- D 1 - I - 0x002116 00:A106: EA        .byte con_mcb_EA   ; 



sub_DF_A107:
- D 1 - I - 0x002117 00:A107: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002119 00:A109: 0C        .byte $0C   ; 
- D 1 - I - 0x00211A 00:A10A: 16        .byte $16   ; 
- D 1 - I - 0x00211B 00:A10B: 3C        .byte $3C   ; 
- D 1 - I - 0x00211C 00:A10C: 46        .byte $46   ; 
- D 1 - I - 0x00211D 00:A10D: 56        .byte $56   ; 
- D 1 - I - 0x00211E 00:A10E: 55        .byte $55   ; 
- D 1 - I - 0x00211F 00:A10F: 56        .byte $56   ; 
- D 1 - I - 0x002120 00:A110: 36        .byte $36   ; 
- D 1 - I - 0x002121 00:A111: 35        .byte $35   ; 
- D 1 - I - 0x002122 00:A112: 36        .byte $36   ; 
- D 1 - I - 0x002123 00:A113: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002125 00:A115: 55        .byte $55   ; 
- D 1 - I - 0x002126 00:A116: E8        .byte con_mcb_E8, $F7   ; 
- D 1 - I - 0x002128 00:A118: 51        .byte $51   ; 
- D 1 - I - 0x002129 00:A119: E8        .byte con_mcb_E8, $09   ; 
- D 1 - I - 0x00212B 00:A11B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00212D 00:A11D: 56        .byte $56   ; 
- D 1 - I - 0x00212E 00:A11E: 55        .byte $55   ; 
- D 1 - I - 0x00212F 00:A11F: 56        .byte $56   ; 
- D 1 - I - 0x002130 00:A120: 56        .byte $56   ; 
- D 1 - I - 0x002131 00:A121: 55        .byte $55   ; 
- D 1 - I - 0x002132 00:A122: 56        .byte $56   ; 
- D 1 - I - 0x002133 00:A123: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002135 00:A125: 53        .byte $53   ; 
- D 1 - I - 0x002136 00:A126: 33        .byte $33   ; 
- D 1 - I - 0x002137 00:A127: E0        .byte con_mcb_rts   ; 



sub_DF_A128:
- D 1 - I - 0x002138 00:A128: 83        .byte $83   ; 
- D 1 - I - 0x002139 00:A129: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00213B 00:A12B: 1C        .byte $1C   ; 
- D 1 - I - 0x00213C 00:A12C: A6        .byte $A6   ; 
- D 1 - I - 0x00213D 00:A12D: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00213F 00:A12F: 87        .byte $87   ; 
- D 1 - I - 0x002140 00:A130: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002142 00:A132: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002143 00:A133: 16        .byte $16   ; 
- D 1 - I - 0x002144 00:A134: 15        .byte $15   ; 
- D 1 - I - 0x002145 00:A135: 16        .byte $16   ; 
- D 1 - I - 0x002146 00:A136: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002147 00:A137: CC        .byte $CC   ; 
- D 1 - I - 0x002148 00:A138: A6        .byte $A6   ; 
- D 1 - I - 0x002149 00:A139: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00214B 00:A13B: 87        .byte $87   ; 
- D 1 - I - 0x00214C 00:A13C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00214E 00:A13E: 66        .byte $66   ; 
- D 1 - I - 0x00214F 00:A13F: 05        .byte $05   ; 
- D 1 - I - 0x002150 00:A140: 66        .byte $66   ; 
- D 1 - I - 0x002151 00:A141: 66        .byte $66   ; 
- D 1 - I - 0x002152 00:A142: 55        .byte $55   ; 
- D 1 - I - 0x002153 00:A143: 36        .byte $36   ; 
- D 1 - I - 0x002154 00:A144: 56        .byte $56   ; 
- D 1 - I - 0x002155 00:A145: 6C        .byte $6C   ; 
- D 1 - I - 0x002156 00:A146: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002158 00:A148: 83        .byte $83   ; 
- D 1 - I - 0x002159 00:A149: E0        .byte con_mcb_rts   ; 



ch_21_A14A_01:
- D 1 - I - 0x00215A 00:A14A: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x00215C 00:A14C: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x00215E 00:A14E: E5        .byte con_mcb_E5, $11   ; 
- D 1 - I - 0x002160 00:A150: DB        .byte con_mcb_DB, $08   ; 
- D 1 - I - 0x002162 00:A152: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x002164 00:A154: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002166 00:A156: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x002168 00:A158: E3        .byte con_mcb_E3, $14   ; 
- D 1 - I - 0x00216A 00:A15A: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00216C 00:A15C: 53        .byte $53   ; 
- D 1 - I - 0x00216D 00:A15D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00216F 00:A15F: 5C        .byte $5C   ; 
- D 1 - I - 0x002170 00:A160: 66        .byte $66   ; 
- D 1 - I - 0x002171 00:A161: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002173 00:A163: 53        .byte $53   ; 
- D 1 - I - 0x002174 00:A164: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002176 00:A166: 11        .byte $11   ; 
- D 1 - I - 0x002177 00:A167: 32        .byte $32   ; 
- D 1 - I - 0x002178 00:A168: 51        .byte $51   ; 
- D 1 - I - 0x002179 00:A169: 62        .byte $62   ; 
- D 1 - I - 0x00217A 00:A16A: 81        .byte $81   ; 
- D 1 - I - 0x00217B 00:A16B: A2        .byte $A2   ; 
- D 1 - I - 0x00217C 00:A16C: C1        .byte $C1   ; 
- D 1 - I - 0x00217D 00:A16D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00217E 00:A16E: 12        .byte $12   ; 
- D 1 - I - 0x00217F 00:A16F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002180 00:A170: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002181 00:A171: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002183 00:A173: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002185 00:A175: 01        .byte $01   ; 
- D 1 - I - 0x002186 00:A176: 13        .byte $13   ; 
- D 1 - I - 0x002187 00:A177: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002188 00:A178: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00218A 00:A17A: 86        .byte $86   ; 
- D 1 - I - 0x00218B 00:A17B: 05        .byte $05   ; 
- D 1 - I - 0x00218C 00:A17C: A6        .byte $A6   ; 
- D 1 - I - 0x00218D 00:A17D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00218E 00:A17E: 16        .byte $16   ; 
- D 1 - I - 0x00218F 00:A17F: 05        .byte $05   ; 
- D 1 - I - 0x002190 00:A180: 56        .byte $56   ; 
- D 1 - I - 0x002191 00:A181: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002192 00:A182: 56        .byte $56   ; 
- D 1 - I - 0x002193 00:A183: 05        .byte $05   ; 
- D 1 - I - 0x002194 00:A184: 16        .byte $16   ; 
- D 1 - I - 0x002195 00:A185: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002196 00:A186: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002198 00:A188: 15        .byte $15   ; 
- D 1 - I - 0x002199 00:A189: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x00219B 00:A18B: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x00219D 00:A18D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00219F 00:A18F: 0C        .byte $0C   ; 
- D 1 - I - 0x0021A0 00:A190: 86        .byte $86   ; 
- D 1 - I - 0x0021A1 00:A191: AC        .byte $AC   ; 
- D 1 - I - 0x0021A2 00:A192: 86        .byte $86   ; 
- D 1 - I - 0x0021A3 00:A193: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0021A5 00:A195: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0021A7 00:A197: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0021A9 00:A199: 01        .byte $01   ; 
- D 1 - I - 0x0021AA 00:A19A: 13        .byte $13   ; 
- D 1 - I - 0x0021AB 00:A19B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0021AD 00:A19D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0021AE 00:A19E: 86        .byte $86   ; 
- D 1 - I - 0x0021AF 00:A19F: 05        .byte $05   ; 
- D 1 - I - 0x0021B0 00:A1A0: A6        .byte $A6   ; 
- D 1 - I - 0x0021B1 00:A1A1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0021B2 00:A1A2: 16        .byte $16   ; 
- D 1 - I - 0x0021B3 00:A1A3: 05        .byte $05   ; 
- D 1 - I - 0x0021B4 00:A1A4: 56        .byte $56   ; 
- D 1 - I - 0x0021B5 00:A1A5: 0C        .byte $0C   ; 
- D 1 - I - 0x0021B6 00:A1A6: 86        .byte $86   ; 
- D 1 - I - 0x0021B7 00:A1A7: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0021B8 00:A1A8: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0021BA 00:A1AA: 83        .byte $83   ; 
- D 1 - I - 0x0021BB 00:A1AB: B1        .byte $B1   ; 
- D 1 - I - 0x0021BC 00:A1AC: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0021BE 00:A1AE: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0021C0 00:A1B0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0021C2 00:A1B2: 0C        .byte $0C   ; 
- D 1 - I - 0x0021C3 00:A1B3: 86        .byte $86   ; 
- D 1 - I - 0x0021C4 00:A1B4: 06        .byte $06   ; 
- D 1 - I - 0x0021C5 00:A1B5: 8C        .byte $8C   ; 
- D 1 - I - 0x0021C6 00:A1B6: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0021C8 00:A1B8: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0021CA 00:A1BA: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x0021CC 00:A1BC: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0021CE 00:A1BE: 51        .byte $51   ; 
- D 1 - I - 0x0021CF 00:A1BF: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0021D1 00:A1C1: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0021D2 00:A1C2: E8        .byte con_mcb_E8, $08   ; 
- D 1 - I - 0x0021D4 00:A1C4: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0021D6 00:A1C6: 11        .byte $11   ; 
- D 1 - I - 0x0021D7 00:A1C7: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0021D9 00:A1C9: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0021DA 00:A1CA: E8        .byte con_mcb_E8, $08   ; 
- D 1 - I - 0x0021DC 00:A1CC: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0021DE 00:A1CE: 61        .byte $61   ; 
- D 1 - I - 0x0021DF 00:A1CF: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0021E1 00:A1D1: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0021E2 00:A1D2: E8        .byte con_mcb_E8, $08   ; 
- D 1 - I - 0x0021E4 00:A1D4: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0021E6 00:A1D6: A1        .byte $A1   ; 
- D 1 - I - 0x0021E7 00:A1D7: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0021E9 00:A1D9: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0021EA 00:A1DA: E8        .byte con_mcb_E8, $08   ; 
- D 1 - I - 0x0021EC 00:A1DC: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0021EE 00:A1DE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0021F0 00:A1E0: 16        .byte $16   ; 
- D 1 - I - 0x0021F1 00:A1E1: 15        .byte $15   ; 
- D 1 - I - 0x0021F2 00:A1E2: 16        .byte $16   ; 
- D 1 - I - 0x0021F3 00:A1E3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0021F4 00:A1E4: C6        .byte $C6   ; 
- D 1 - I - 0x0021F5 00:A1E5: C5        .byte $C5   ; 
- D 1 - I - 0x0021F6 00:A1E6: A6        .byte $A6   ; 
- D 1 - I - 0x0021F7 00:A1E7: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0021F9 00:A1E9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0021FA 00:A1EA: 33        .byte $33   ; 
- D 1 - I - 0x0021FB 00:A1EB: 63        .byte $63   ; 
- D 1 - I - 0x0021FC 00:A1EC: 13        .byte $13   ; 
- D 1 - I - 0x0021FD 00:A1ED: 03        .byte $03   ; 
- D 1 - I - 0x0021FE 00:A1EE: D4        .byte con_mcb_D4, $02   ; 
- D 1 - I - 0x002200 00:A1F0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002201 00:A1F1: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002203 00:A1F3: 10        .byte $10   ; 
- D 1 - I - 0x002204 00:A1F4: 30        .byte $30   ; 
- D 1 - I - 0x002205 00:A1F5: 50        .byte $50   ; 
- D 1 - I - 0x002206 00:A1F6: 60        .byte $60   ; 
- D 1 - I - 0x002207 00:A1F7: 80        .byte $80   ; 
- D 1 - I - 0x002208 00:A1F8: A0        .byte $A0   ; 
- D 1 - I - 0x002209 00:A1F9: C0        .byte $C0   ; 
- D 1 - I - 0x00220A 00:A1FA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00220B 00:A1FB: 10        .byte $10   ; 
- D 1 - I - 0x00220C 00:A1FC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00220D 00:A1FD: 10        .byte $10   ; 
- D 1 - I - 0x00220E 00:A1FE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00220F 00:A1FF: C0        .byte $C0   ; 
- D 1 - I - 0x002210 00:A200: A0        .byte $A0   ; 
- D 1 - I - 0x002211 00:A201: 80        .byte $80   ; 
- D 1 - I - 0x002212 00:A202: 60        .byte $60   ; 
- D 1 - I - 0x002213 00:A203: 50        .byte $50   ; 
- D 1 - I - 0x002214 00:A204: 50        .byte $50   ; 
- D 1 - I - 0x002215 00:A205: 60        .byte $60   ; 
- D 1 - I - 0x002216 00:A206: 80        .byte $80   ; 
- D 1 - I - 0x002217 00:A207: A0        .byte $A0   ; 
- D 1 - I - 0x002218 00:A208: C0        .byte $C0   ; 
- D 1 - I - 0x002219 00:A209: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00221A 00:A20A: 10        .byte $10   ; 
- D 1 - I - 0x00221B 00:A20B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00221C 00:A20C: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x00221E 00:A20E: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002220 00:A210: DB        .byte con_mcb_DB, $0D   ; 
- D 1 - I - 0x002222 00:A212: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002223 00:A213: 45 A2     .word sub_DF_A245
- D 1 - I - 0x002225 00:A215: DB        .byte con_mcb_DB, $08   ; 
- D 1 - I - 0x002227 00:A217: 17        .byte $17   ; 
- D 1 - I - 0x002228 00:A218: 87        .byte $87   ; 
- D 1 - I - 0x002229 00:A219: 57        .byte $57   ; 
- D 1 - I - 0x00222A 00:A21A: 17        .byte $17   ; 
- D 1 - I - 0x00222B 00:A21B: DB        .byte con_mcb_DB, $0D   ; 
- D 1 - I - 0x00222D 00:A21D: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00222E 00:A21E: 45 A2     .word sub_DF_A245
- D 1 - I - 0x002230 00:A220: DB        .byte con_mcb_DB, $08   ; 
- D 1 - I - 0x002232 00:A222: 87        .byte $87   ; 
- D 1 - I - 0x002233 00:A223: 57        .byte $57   ; 
- D 1 - I - 0x002234 00:A224: 37        .byte $37   ; 
- D 1 - I - 0x002235 00:A225: C7        .byte $C7   ; 
- D 1 - I - 0x002236 00:A226: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002238 00:A228: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002239 00:A229: 52 A2     .word sub_DF_A252
- D 1 - I - 0x00223B 00:A22B: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x00223D 00:A22D: 37        .byte $37   ; 
- D 1 - I - 0x00223E 00:A22E: 87        .byte $87   ; 
- D 1 - I - 0x00223F 00:A22F: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002240 00:A230: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002241 00:A231: 52 A2     .word sub_DF_A252
- D 1 - I - 0x002243 00:A233: 37        .byte $37   ; 
- D 1 - I - 0x002244 00:A234: 87        .byte $87   ; 
- D 1 - I - 0x002245 00:A235: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002247 00:A237: 16        .byte $16   ; 
- D 1 - I - 0x002248 00:A238: 15        .byte $15   ; 
- D 1 - I - 0x002249 00:A239: 16        .byte $16   ; 
- D 1 - I - 0x00224A 00:A23A: 16        .byte $16   ; 
- D 1 - I - 0x00224B 00:A23B: 15        .byte $15   ; 
- D 1 - I - 0x00224C 00:A23C: 66        .byte $66   ; 
- D 1 - I - 0x00224D 00:A23D: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00224F 00:A23F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002250 00:A240: 17        .byte $17   ; 
- D 1 - I - 0x002251 00:A241: D2        .byte con_mcb_D2   ; 
- - - - - - 0x002252 00:A242: E8        .byte con_mcb_E8, $FF   ; 
- - - - - - 0x002254 00:A244: EA        .byte con_mcb_EA   ; 



sub_DF_A245:
- D 1 - I - 0x002255 00:A245: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002257 00:A247: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x002259 00:A249: 66        .byte $66   ; 
- D 1 - I - 0x00225A 00:A24A: 15        .byte $15   ; 
- D 1 - I - 0x00225B 00:A24B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00225C 00:A24C: A6        .byte $A6   ; 
- D 1 - I - 0x00225D 00:A24D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00225E 00:A24E: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00225F 00:A24F: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002261 00:A251: E0        .byte con_mcb_rts   ; 



sub_DF_A252:
- D 1 - I - 0x002262 00:A252: 53        .byte $53   ; 
- D 1 - I - 0x002263 00:A253: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002265 00:A255: 5C        .byte $5C   ; 
- D 1 - I - 0x002266 00:A256: 66        .byte $66   ; 
- D 1 - I - 0x002267 00:A257: 0C        .byte $0C   ; 
- D 1 - I - 0x002268 00:A258: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x00226A 00:A25A: 86        .byte $86   ; 
- D 1 - I - 0x00226B 00:A25B: AC        .byte $AC   ; 
- D 1 - I - 0x00226C 00:A25C: C6        .byte $C6   ; 
- D 1 - I - 0x00226D 00:A25D: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x00226F 00:A25F: 56        .byte $56   ; 
- D 1 - I - 0x002270 00:A260: 55        .byte $55   ; 
- D 1 - I - 0x002271 00:A261: 56        .byte $56   ; 
- D 1 - I - 0x002272 00:A262: 3C        .byte $3C   ; 
- D 1 - I - 0x002273 00:A263: 56        .byte $56   ; 
- D 1 - I - 0x002274 00:A264: 0C        .byte $0C   ; 
- D 1 - I - 0x002275 00:A265: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x002277 00:A267: 86        .byte $86   ; 
- D 1 - I - 0x002278 00:A268: 6C        .byte $6C   ; 
- D 1 - I - 0x002279 00:A269: 56        .byte $56   ; 
- D 1 - I - 0x00227A 00:A26A: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x00227C 00:A26C: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00227E 00:A26E: E0        .byte con_mcb_rts   ; 



ch_21_A26F_02:
- D 1 - I - 0x00227F 00:A26F: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x002281 00:A271: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002283 00:A273: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002285 00:A275: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002286 00:A276: 07        .byte $07   ; 
- D 1 - I - 0x002287 00:A277: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002289 00:A279: 0C        .byte $0C   ; 
- D 1 - I - 0x00228A 00:A27A: 86        .byte $86   ; 
- D 1 - I - 0x00228B 00:A27B: AC        .byte $AC   ; 
- D 1 - I - 0x00228C 00:A27C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00228D 00:A27D: 16        .byte $16   ; 
- D 1 - I - 0x00228E 00:A27E: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002290 00:A280: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002291 00:A281: 13        .byte $13   ; 
- D 1 - I - 0x002292 00:A282: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002293 00:A283: A3        .byte $A3   ; 
- D 1 - I - 0x002294 00:A284: C3        .byte $C3   ; 
- D 1 - I - 0x002295 00:A285: 83        .byte $83   ; 
- D 1 - I - 0x002296 00:A286: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002297 00:A287: 13        .byte $13   ; 
- D 1 - I - 0x002298 00:A288: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002299 00:A289: A3        .byte $A3   ; 
- D 1 - I - 0x00229A 00:A28A: C3        .byte $C3   ; 
- D 1 - I - 0x00229B 00:A28B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00229D 00:A28D: 8C        .byte $8C   ; 
- D 1 - I - 0x00229E 00:A28E: A6        .byte $A6   ; 
- D 1 - I - 0x00229F 00:A28F: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0022A1 00:A291: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022A2 00:A292: 13        .byte $13   ; 
- D 1 - I - 0x0022A3 00:A293: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022A4 00:A294: A3        .byte $A3   ; 
- D 1 - I - 0x0022A5 00:A295: C3        .byte $C3   ; 
- D 1 - I - 0x0022A6 00:A296: 83        .byte $83   ; 
- D 1 - I - 0x0022A7 00:A297: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022A8 00:A298: 33        .byte $33   ; 
- D 1 - I - 0x0022A9 00:A299: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022AA 00:A29A: C3        .byte $C3   ; 
- D 1 - I - 0x0022AB 00:A29B: 83        .byte $83   ; 
- D 1 - I - 0x0022AC 00:A29C: A3        .byte $A3   ; 
- D 1 - I - 0x0022AD 00:A29D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022AE 00:A29E: 13        .byte $13   ; 
- D 1 - I - 0x0022AF 00:A29F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022B0 00:A2A0: A3        .byte $A3   ; 
- D 1 - I - 0x0022B1 00:A2A1: C3        .byte $C3   ; 
- D 1 - I - 0x0022B2 00:A2A2: 83        .byte $83   ; 
- D 1 - I - 0x0022B3 00:A2A3: 63        .byte $63   ; 
- D 1 - I - 0x0022B4 00:A2A4: 83        .byte $83   ; 
- D 1 - I - 0x0022B5 00:A2A5: A3        .byte $A3   ; 
- D 1 - I - 0x0022B6 00:A2A6: C3        .byte $C3   ; 
- D 1 - I - 0x0022B7 00:A2A7: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022B8 00:A2A8: 13        .byte $13   ; 
- D 1 - I - 0x0022B9 00:A2A9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022BA 00:A2AA: C3        .byte $C3   ; 
- D 1 - I - 0x0022BB 00:A2AB: A3        .byte $A3   ; 
- D 1 - I - 0x0022BC 00:A2AC: C3        .byte $C3   ; 
- D 1 - I - 0x0022BD 00:A2AD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022BE 00:A2AE: 13        .byte $13   ; 
- D 1 - I - 0x0022BF 00:A2AF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022C0 00:A2B0: 83        .byte $83   ; 
- D 1 - I - 0x0022C1 00:A2B1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022C2 00:A2B2: 17        .byte $17   ; 
- D 1 - I - 0x0022C3 00:A2B3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0022C4 00:A2B4: E2 A2     .word sub_DF_A2E2
- D 1 - I - 0x0022C6 00:A2B6: 13        .byte $13   ; 
- D 1 - I - 0x0022C7 00:A2B7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022C8 00:A2B8: A3        .byte $A3   ; 
- D 1 - I - 0x0022C9 00:A2B9: C3        .byte $C3   ; 
- D 1 - I - 0x0022CA 00:A2BA: 83        .byte $83   ; 
- D 1 - I - 0x0022CB 00:A2BB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022CC 00:A2BC: 13        .byte $13   ; 
- D 1 - I - 0x0022CD 00:A2BD: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022CE 00:A2BE: 83        .byte $83   ; 
- D 1 - I - 0x0022CF 00:A2BF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022D0 00:A2C0: 13        .byte $13   ; 
- D 1 - I - 0x0022D1 00:A2C1: 53        .byte $53   ; 
- D 1 - I - 0x0022D2 00:A2C2: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0022D3 00:A2C3: E2 A2     .word sub_DF_A2E2
- D 1 - I - 0x0022D5 00:A2C5: 33        .byte $33   ; 
- D 1 - I - 0x0022D6 00:A2C6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022D7 00:A2C7: C3        .byte $C3   ; 
- D 1 - I - 0x0022D8 00:A2C8: 83        .byte $83   ; 
- D 1 - I - 0x0022D9 00:A2C9: C3        .byte $C3   ; 
- D 1 - I - 0x0022DA 00:A2CA: 83        .byte $83   ; 
- D 1 - I - 0x0022DB 00:A2CB: C3        .byte $C3   ; 
- D 1 - I - 0x0022DC 00:A2CC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022DD 00:A2CD: 33        .byte $33   ; 
- D 1 - I - 0x0022DE 00:A2CE: 83        .byte $83   ; 
- D 1 - I - 0x0022DF 00:A2CF: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0022E0 00:A2D0: E8 A2     .word sub_DF_A2E8
- D 1 - I - 0x0022E2 00:A2D2: 33        .byte $33   ; 
- D 1 - I - 0x0022E3 00:A2D3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022E4 00:A2D4: 83        .byte $83   ; 
- D 1 - I - 0x0022E5 00:A2D5: A3        .byte $A3   ; 
- D 1 - I - 0x0022E6 00:A2D6: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022E7 00:A2D7: 13        .byte $13   ; 
- D 1 - I - 0x0022E8 00:A2D8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0022E9 00:A2D9: E8 A2     .word sub_DF_A2E8
- D 1 - I - 0x0022EB 00:A2DB: 33        .byte $33   ; 
- D 1 - I - 0x0022EC 00:A2DC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0022ED 00:A2DD: 83        .byte $83   ; 
- D 1 - I - 0x0022EE 00:A2DE: A3        .byte $A3   ; 
- D 1 - I - 0x0022EF 00:A2DF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0022F0 00:A2E0: 13        .byte $13   ; 
- D 1 - I - 0x0022F1 00:A2E1: EA        .byte con_mcb_EA   ; 



sub_DF_A2E2:
- D 1 - I - 0x0022F2 00:A2E2: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0022F4 00:A2E4: 63        .byte $63   ; 
- D 1 - I - 0x0022F5 00:A2E5: 13        .byte $13   ; 
- D 1 - I - 0x0022F6 00:A2E6: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0022F7 00:A2E7: E0        .byte con_mcb_rts   ; 



sub_DF_A2E8:
- D 1 - I - 0x0022F8 00:A2E8: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0022FA 00:A2EA: 13        .byte $13   ; 
- D 1 - I - 0x0022FB 00:A2EB: 33        .byte $33   ; 
- D 1 - I - 0x0022FC 00:A2EC: 53        .byte $53   ; 
- D 1 - I - 0x0022FD 00:A2ED: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0022FF 00:A2EF: 66        .byte $66   ; 
- D 1 - I - 0x002300 00:A2F0: 55        .byte $55   ; 
- D 1 - I - 0x002301 00:A2F1: 36        .byte $36   ; 
- D 1 - I - 0x002302 00:A2F2: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002304 00:A2F4: 13        .byte $13   ; 
- D 1 - I - 0x002305 00:A2F5: 83        .byte $83   ; 
- D 1 - I - 0x002306 00:A2F6: 13        .byte $13   ; 
- D 1 - I - 0x002307 00:A2F7: 83        .byte $83   ; 
- D 1 - I - 0x002308 00:A2F8: 63        .byte $63   ; 
- D 1 - I - 0x002309 00:A2F9: 33        .byte $33   ; 
- D 1 - I - 0x00230A 00:A2FA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00230B 00:A2FB: C3        .byte $C3   ; 
- D 1 - I - 0x00230C 00:A2FC: A3        .byte $A3   ; 
- D 1 - I - 0x00230D 00:A2FD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00230E 00:A2FE: E0        .byte con_mcb_rts   ; 



ch_21_A2FF_03:
- D 1 - I - 0x00230F 00:A2FF: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x002311 00:A301: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x002313 00:A303: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002315 00:A305: 07        .byte $07   ; 
- D 1 - I - 0x002316 00:A306: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002318 00:A308: 0C        .byte $0C   ; 
- D 1 - I - 0x002319 00:A309: 36        .byte $36   ; 
- D 1 - I - 0x00231A 00:A30A: 36        .byte $36   ; 
- D 1 - I - 0x00231B 00:A30B: 06        .byte $06   ; 
- D 1 - I - 0x00231C 00:A30C: 36        .byte $36   ; 
- D 1 - I - 0x00231D 00:A30D: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00231F 00:A30F: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002320 00:A310: D7        .byte con_mcb_D7, $05   ; 
- D 1 - I - 0x002322 00:A312: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002323 00:A313: 5B A3     .word sub_DF_A35B
- D 1 - I - 0x002325 00:A315: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002326 00:A316: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002328 00:A318: 26        .byte $26   ; 
- D 1 - I - 0x002329 00:A319: 05        .byte $05   ; 
- D 1 - I - 0x00232A 00:A31A: 26        .byte $26   ; 
- D 1 - I - 0x00232B 00:A31B: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00232D 00:A31D: 33        .byte $33   ; 
- D 1 - I - 0x00232E 00:A31E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002330 00:A320: 26        .byte $26   ; 
- D 1 - I - 0x002331 00:A321: 25        .byte $25   ; 
- D 1 - I - 0x002332 00:A322: 26        .byte $26   ; 
- D 1 - I - 0x002333 00:A323: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002335 00:A325: 33        .byte $33   ; 
- D 1 - I - 0x002336 00:A326: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002338 00:A328: 26        .byte $26   ; 
- D 1 - I - 0x002339 00:A329: 05        .byte $05   ; 
- D 1 - I - 0x00233A 00:A32A: 26        .byte $26   ; 
- D 1 - I - 0x00233B 00:A32B: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00233D 00:A32D: 33        .byte $33   ; 
- D 1 - I - 0x00233E 00:A32E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002340 00:A330: 26        .byte $26   ; 
- D 1 - I - 0x002341 00:A331: 25        .byte $25   ; 
- D 1 - I - 0x002342 00:A332: 26        .byte $26   ; 
- D 1 - I - 0x002343 00:A333: 36        .byte $36   ; 
- D 1 - I - 0x002344 00:A334: 35        .byte $35   ; 
- D 1 - I - 0x002345 00:A335: 36        .byte $36   ; 
- D 1 - I - 0x002346 00:A336: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002348 00:A338: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00234A 00:A33A: 26        .byte $26   ; 
- D 1 - I - 0x00234B 00:A33B: 05        .byte $05   ; 
- D 1 - I - 0x00234C 00:A33C: 26        .byte $26   ; 
- D 1 - I - 0x00234D 00:A33D: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00234F 00:A33F: 33        .byte $33   ; 
- D 1 - I - 0x002350 00:A340: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002352 00:A342: 26        .byte $26   ; 
- D 1 - I - 0x002353 00:A343: 25        .byte $25   ; 
- D 1 - I - 0x002354 00:A344: 26        .byte $26   ; 
- D 1 - I - 0x002355 00:A345: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002357 00:A347: 33        .byte $33   ; 
- D 1 - I - 0x002358 00:A348: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00235A 00:A34A: 26        .byte $26   ; 
- D 1 - I - 0x00235B 00:A34B: 05        .byte $05   ; 
- D 1 - I - 0x00235C 00:A34C: 26        .byte $26   ; 
- D 1 - I - 0x00235D 00:A34D: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00235F 00:A34F: 33        .byte $33   ; 
- D 1 - I - 0x002360 00:A350: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002362 00:A352: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002364 00:A354: 36        .byte $36   ; 
- D 1 - I - 0x002365 00:A355: 35        .byte $35   ; 
- D 1 - I - 0x002366 00:A356: 36        .byte $36   ; 
- D 1 - I - 0x002367 00:A357: D8        .byte con_mcb_D8   ; 
- - - - - - 0x002368 00:A358: D4        .byte con_mcb_D4, $05   ; 
- - - - - - 0x00236A 00:A35A: EA        .byte con_mcb_EA   ; 



sub_DF_A35B:
- D 1 - I - 0x00236B 00:A35B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00236D 00:A35D: 26        .byte $26   ; 
- D 1 - I - 0x00236E 00:A35E: 05        .byte $05   ; 
- D 1 - I - 0x00236F 00:A35F: 26        .byte $26   ; 
- D 1 - I - 0x002370 00:A360: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002372 00:A362: 33        .byte $33   ; 
- D 1 - I - 0x002373 00:A363: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002375 00:A365: 26        .byte $26   ; 
- D 1 - I - 0x002376 00:A366: 25        .byte $25   ; 
- D 1 - I - 0x002377 00:A367: 26        .byte $26   ; 
- D 1 - I - 0x002378 00:A368: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00237A 00:A36A: 33        .byte $33   ; 
- D 1 - I - 0x00237B 00:A36B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00237D 00:A36D: 26        .byte $26   ; 
- D 1 - I - 0x00237E 00:A36E: 05        .byte $05   ; 
- D 1 - I - 0x00237F 00:A36F: 26        .byte $26   ; 
- D 1 - I - 0x002380 00:A370: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002382 00:A372: 33        .byte $33   ; 
- D 1 - I - 0x002383 00:A373: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002385 00:A375: 26        .byte $26   ; 
- D 1 - I - 0x002386 00:A376: 25        .byte $25   ; 
- D 1 - I - 0x002387 00:A377: 26        .byte $26   ; 
- D 1 - I - 0x002388 00:A378: 36        .byte $36   ; 
- D 1 - I - 0x002389 00:A379: 35        .byte $35   ; 
- D 1 - I - 0x00238A 00:A37A: 36        .byte $36   ; 
- D 1 - I - 0x00238B 00:A37B: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00238D 00:A37D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00238F 00:A37F: 26        .byte $26   ; 
- D 1 - I - 0x002390 00:A380: 05        .byte $05   ; 
- D 1 - I - 0x002391 00:A381: 26        .byte $26   ; 
- D 1 - I - 0x002392 00:A382: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002394 00:A384: 33        .byte $33   ; 
- D 1 - I - 0x002395 00:A385: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002397 00:A387: 26        .byte $26   ; 
- D 1 - I - 0x002398 00:A388: 25        .byte $25   ; 
- D 1 - I - 0x002399 00:A389: 26        .byte $26   ; 
- D 1 - I - 0x00239A 00:A38A: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x00239C 00:A38C: 33        .byte $33   ; 
- D 1 - I - 0x00239D 00:A38D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00239F 00:A38F: 26        .byte $26   ; 
- D 1 - I - 0x0023A0 00:A390: 05        .byte $05   ; 
- D 1 - I - 0x0023A1 00:A391: 26        .byte $26   ; 
- D 1 - I - 0x0023A2 00:A392: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0023A4 00:A394: 33        .byte $33   ; 
- D 1 - I - 0x0023A5 00:A395: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0023A7 00:A397: 26        .byte $26   ; 
- D 1 - I - 0x0023A8 00:A398: 05        .byte $05   ; 
- D 1 - I - 0x0023A9 00:A399: 26        .byte $26   ; 
- D 1 - I - 0x0023AA 00:A39A: 36        .byte $36   ; 
- D 1 - I - 0x0023AB 00:A39B: 35        .byte $35   ; 
- D 1 - I - 0x0023AC 00:A39C: 36        .byte $36   ; 
- D 1 - I - 0x0023AD 00:A39D: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x0023AF 00:A39F: E0        .byte con_mcb_rts   ; 



_off005_A3A0_22_ost_1:
- D 1 - I - 0x0023B0 00:A3A0: AA A3     .word ch_22_A3AA_00
- D 1 - I - 0x0023B2 00:A3A2: 6A A4     .word ch_22_A46A_01
- D 1 - I - 0x0023B4 00:A3A4: 64 A5     .word ch_22_A564_02
- D 1 - I - 0x0023B6 00:A3A6: B1 A5     .word ch_22_A5B1_03
- D 1 - I - 0x0023B8 00:A3A8: 00 00     .word $0000 ;    04



ch_22_A3AA_00:
- D 1 - I - 0x0023BA 00:A3AA: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x0023BC 00:A3AC: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x0023BE 00:A3AE: E5        .byte con_mcb_E5, $0F   ; 
- D 1 - I - 0x0023C0 00:A3B0: DB        .byte con_mcb_DB, $01   ; 
- D 1 - I - 0x0023C2 00:A3B2: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x0023C4 00:A3B4: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0023C6 00:A3B6: E3        .byte con_mcb_E3, $14   ; 
- D 1 - I - 0x0023C8 00:A3B8: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0023CA 00:A3BA: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0023CB 00:A3BB: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023CC 00:A3BC: 39 A4     .word sub_DF_A439
- D 1 - I - 0x0023CE 00:A3BE: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023CF 00:A3BF: 50 A4     .word sub_DF_A450
- D 1 - I - 0x0023D1 00:A3C1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0023D2 00:A3C2: C1        .byte $C1   ; 
- D 1 - I - 0x0023D3 00:A3C3: 81        .byte $81   ; 
- D 1 - I - 0x0023D4 00:A3C4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0023D5 00:A3C5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023D6 00:A3C6: 39 A4     .word sub_DF_A439
- D 1 - I - 0x0023D8 00:A3C8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023D9 00:A3C9: 50 A4     .word sub_DF_A450
- D 1 - I - 0x0023DB 00:A3CB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0023DC 00:A3CC: C1        .byte $C1   ; 
- D 1 - I - 0x0023DD 00:A3CD: C1        .byte $C1   ; 
- D 1 - I - 0x0023DE 00:A3CE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0023DF 00:A3CF: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023E0 00:A3D0: 39 A4     .word sub_DF_A439
- D 1 - I - 0x0023E2 00:A3D2: 61        .byte $61   ; 
- D 1 - I - 0x0023E3 00:A3D3: B1        .byte $B1   ; 
- D 1 - I - 0x0023E4 00:A3D4: A0        .byte $A0   ; 
- D 1 - I - 0x0023E5 00:A3D5: A0        .byte $A0   ; 
- D 1 - I - 0x0023E6 00:A3D6: B0        .byte $B0   ; 
- D 1 - I - 0x0023E7 00:A3D7: B0        .byte $B0   ; 
- D 1 - I - 0x0023E8 00:A3D8: 67        .byte $67   ; 
- D 1 - I - 0x0023E9 00:A3D9: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023EA 00:A3DA: 39 A4     .word sub_DF_A439
- D 1 - I - 0x0023EC 00:A3DC: 61        .byte $61   ; 
- D 1 - I - 0x0023ED 00:A3DD: B1        .byte $B1   ; 
- D 1 - I - 0x0023EE 00:A3DE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0023F0 00:A3E0: B8        .byte $B8   ; 
- D 1 - I - 0x0023F1 00:A3E1: A9        .byte $A9   ; 
- D 1 - I - 0x0023F2 00:A3E2: B8        .byte $B8   ; 
- D 1 - I - 0x0023F3 00:A3E3: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0023F5 00:A3E5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0023F6 00:A3E6: 13        .byte $13   ; 
- D 1 - I - 0x0023F7 00:A3E7: 63        .byte $63   ; 
- D 1 - I - 0x0023F8 00:A3E8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0023F9 00:A3E9: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0023FA 00:A3EA: 54 A4     .word sub_DF_A454
- D 1 - I - 0x0023FC 00:A3EC: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0023FE 00:A3EE: 78        .byte $78   ; 
- D 1 - I - 0x0023FF 00:A3EF: 79        .byte $79   ; 
- D 1 - I - 0x002400 00:A3F0: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002401 00:A3F1: 78        .byte $78   ; 
- D 1 - I - 0x002402 00:A3F2: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002404 00:A3F4: 83        .byte $83   ; 
- D 1 - I - 0x002405 00:A3F5: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002407 00:A3F7: 83        .byte $83   ; 
- D 1 - I - 0x002408 00:A3F8: 72        .byte $72   ; 
- D 1 - I - 0x002409 00:A3F9: 53        .byte $53   ; 
- D 1 - I - 0x00240A 00:A3FA: 32        .byte $32   ; 
- D 1 - I - 0x00240B 00:A3FB: 13        .byte $13   ; 
- D 1 - I - 0x00240C 00:A3FC: 32        .byte $32   ; 
- D 1 - I - 0x00240D 00:A3FD: 53        .byte $53   ; 
- D 1 - I - 0x00240E 00:A3FE: 72        .byte $72   ; 
- D 1 - I - 0x00240F 00:A3FF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002410 00:A400: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002412 00:A402: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002413 00:A403: 54 A4     .word sub_DF_A454
- D 1 - I - 0x002415 00:A405: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002417 00:A407: 78        .byte $78   ; 
- D 1 - I - 0x002418 00:A408: 79        .byte $79   ; 
- D 1 - I - 0x002419 00:A409: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00241A 00:A40A: 78        .byte $78   ; 
- D 1 - I - 0x00241B 00:A40B: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00241D 00:A40D: C3        .byte $C3   ; 
- D 1 - I - 0x00241E 00:A40E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00241F 00:A40F: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002421 00:A411: A3        .byte $A3   ; 
- D 1 - I - 0x002422 00:A412: C2        .byte $C2   ; 
- D 1 - I - 0x002423 00:A413: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002424 00:A414: 13        .byte $13   ; 
- D 1 - I - 0x002425 00:A415: 32        .byte $32   ; 
- D 1 - I - 0x002426 00:A416: 53        .byte $53   ; 
- D 1 - I - 0x002427 00:A417: 72        .byte $72   ; 
- D 1 - I - 0x002428 00:A418: 83        .byte $83   ; 
- D 1 - I - 0x002429 00:A419: A2        .byte $A2   ; 
- D 1 - I - 0x00242A 00:A41A: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00242C 00:A41C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00242D 00:A41D: 11        .byte $11   ; 
- D 1 - I - 0x00242E 00:A41E: 11        .byte $11   ; 
- D 1 - I - 0x00242F 00:A41F: 10        .byte $10   ; 
- D 1 - I - 0x002430 00:A420: 12        .byte $12   ; 
- D 1 - I - 0x002431 00:A421: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002432 00:A422: C3        .byte $C3   ; 
- D 1 - I - 0x002433 00:A423: C3        .byte $C3   ; 
- D 1 - I - 0x002434 00:A424: A1        .byte $A1   ; 
- D 1 - I - 0x002435 00:A425: 81        .byte $81   ; 
- D 1 - I - 0x002436 00:A426: A3        .byte $A3   ; 
- D 1 - I - 0x002437 00:A427: 87        .byte $87   ; 
- D 1 - I - 0x002438 00:A428: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002439 00:A429: 11        .byte $11   ; 
- D 1 - I - 0x00243A 00:A42A: 11        .byte $11   ; 
- D 1 - I - 0x00243B 00:A42B: 10        .byte $10   ; 
- D 1 - I - 0x00243C 00:A42C: 12        .byte $12   ; 
- D 1 - I - 0x00243D 00:A42D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00243E 00:A42E: C3        .byte $C3   ; 
- D 1 - I - 0x00243F 00:A42F: C3        .byte $C3   ; 
- D 1 - I - 0x002440 00:A430: A1        .byte $A1   ; 
- D 1 - I - 0x002441 00:A431: C1        .byte $C1   ; 
- D 1 - I - 0x002442 00:A432: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002443 00:A433: 11        .byte $11   ; 
- D 1 - I - 0x002444 00:A434: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002445 00:A435: A1        .byte $A1   ; 
- D 1 - I - 0x002446 00:A436: 87        .byte $87   ; 
- D 1 - I - 0x002447 00:A437: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002448 00:A438: EA        .byte con_mcb_EA   ; 



sub_DF_A439:
- D 1 - I - 0x002449 00:A439: 81        .byte $81   ; 
- D 1 - I - 0x00244A 00:A43A: 81        .byte $81   ; 
- D 1 - I - 0x00244B 00:A43B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00244D 00:A43D: C8        .byte $C8   ; 
- D 1 - I - 0x00244E 00:A43E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00244F 00:A43F: 39        .byte $39   ; 
- D 1 - I - 0x002450 00:A440: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002451 00:A441: 38        .byte $38   ; 
- D 1 - I - 0x002452 00:A442: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002454 00:A444: 81        .byte $81   ; 
- D 1 - I - 0x002455 00:A445: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002457 00:A447: 38        .byte $38   ; 
- D 1 - I - 0x002458 00:A448: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002459 00:A449: C9        .byte $C9   ; 
- D 1 - I - 0x00245A 00:A44A: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00245B 00:A44B: C8        .byte $C8   ; 
- D 1 - I - 0x00245C 00:A44C: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00245E 00:A44E: 81        .byte $81   ; 
- D 1 - I - 0x00245F 00:A44F: E0        .byte con_mcb_rts   ; 



sub_DF_A450:
- D 1 - I - 0x002460 00:A450: 61        .byte $61   ; 
- D 1 - I - 0x002461 00:A451: 63        .byte $63   ; 
- D 1 - I - 0x002462 00:A452: 85        .byte $85   ; 
- D 1 - I - 0x002463 00:A453: E0        .byte con_mcb_rts   ; 



sub_DF_A454:
- D 1 - I - 0x002464 00:A454: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002465 00:A455: 71        .byte $71   ; 
- D 1 - I - 0x002466 00:A456: 71        .byte $71   ; 
- D 1 - I - 0x002467 00:A457: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002469 00:A459: 78        .byte $78   ; 
- D 1 - I - 0x00246A 00:A45A: 79        .byte $79   ; 
- D 1 - I - 0x00246B 00:A45B: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00246C 00:A45C: 78        .byte $78   ; 
- D 1 - I - 0x00246D 00:A45D: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00246F 00:A45F: 73        .byte $73   ; 
- D 1 - I - 0x002470 00:A460: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002472 00:A462: 48        .byte $48   ; 
- D 1 - I - 0x002473 00:A463: 59        .byte $59   ; 
- D 1 - I - 0x002474 00:A464: 78        .byte $78   ; 
- D 1 - I - 0x002475 00:A465: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002477 00:A467: 81        .byte $81   ; 
- D 1 - I - 0x002478 00:A468: 81        .byte $81   ; 
- D 1 - I - 0x002479 00:A469: E0        .byte con_mcb_rts   ; 



ch_22_A46A_01:
- D 1 - I - 0x00247A 00:A46A: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x00247C 00:A46C: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x00247E 00:A46E: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x002480 00:A470: DB        .byte con_mcb_DB, $01   ; 
- D 1 - I - 0x002482 00:A472: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002484 00:A474: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x002486 00:A476: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002488 00:A478: E3        .byte con_mcb_E3, $15   ; 
- D 1 - I - 0x00248A 00:A47A: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00248C 00:A47C: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00248D 00:A47D: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00248E 00:A47E: 13 A5     .word sub_DF_A513
- D 1 - I - 0x002490 00:A480: C5        .byte $C5   ; 
- D 1 - I - 0x002491 00:A481: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002492 00:A482: C1        .byte $C1   ; 
- D 1 - I - 0x002493 00:A483: C1        .byte $C1   ; 
- D 1 - I - 0x002494 00:A484: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002495 00:A485: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002496 00:A486: 13 A5     .word sub_DF_A513
- D 1 - I - 0x002498 00:A488: 85        .byte $85   ; 
- D 1 - I - 0x002499 00:A489: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x00249B 00:A48B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00249D 00:A48D: 83        .byte $83   ; 
- D 1 - I - 0x00249E 00:A48E: A2        .byte $A2   ; 
- D 1 - I - 0x00249F 00:A48F: C3        .byte $C3   ; 
- D 1 - I - 0x0024A0 00:A490: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024A1 00:A491: 12        .byte $12   ; 
- D 1 - I - 0x0024A2 00:A492: 33        .byte $33   ; 
- D 1 - I - 0x0024A3 00:A493: 52        .byte $52   ; 
- D 1 - I - 0x0024A4 00:A494: 63        .byte $63   ; 
- D 1 - I - 0x0024A5 00:A495: 82        .byte $82   ; 
- D 1 - I - 0x0024A6 00:A496: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024A7 00:A497: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0024A9 00:A499: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0024AB 00:A49B: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0024AC 00:A49C: 2C A5     .word sub_DF_A52C
- D 1 - I - 0x0024AE 00:A49E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024AF 00:A49F: 30        .byte $30   ; 
- D 1 - I - 0x0024B0 00:A4A0: 10        .byte $10   ; 
- D 1 - I - 0x0024B1 00:A4A1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024B2 00:A4A2: C0        .byte $C0   ; 
- D 1 - I - 0x0024B3 00:A4A3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024B4 00:A4A4: 10        .byte $10   ; 
- D 1 - I - 0x0024B5 00:A4A5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024B6 00:A4A6: A0        .byte $A0   ; 
- D 1 - I - 0x0024B7 00:A4A7: C0        .byte $C0   ; 
- D 1 - I - 0x0024B8 00:A4A8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024B9 00:A4A9: 10        .byte $10   ; 
- D 1 - I - 0x0024BA 00:A4AA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024BB 00:A4AB: A0        .byte $A0   ; 
- D 1 - I - 0x0024BC 00:A4AC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024BD 00:A4AD: 13        .byte $13   ; 
- D 1 - I - 0x0024BE 00:A4AE: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x0024C0 00:A4B0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0024C2 00:A4B2: C8        .byte $C8   ; 
- D 1 - I - 0x0024C3 00:A4B3: C9        .byte $C9   ; 
- D 1 - I - 0x0024C4 00:A4B4: C8        .byte $C8   ; 
- D 1 - I - 0x0024C5 00:A4B5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024C6 00:A4B6: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0024C8 00:A4B8: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0024CA 00:A4BA: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0024CB 00:A4BB: 2C A5     .word sub_DF_A52C
- D 1 - I - 0x0024CD 00:A4BD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024CE 00:A4BE: 11        .byte $11   ; 
- D 1 - I - 0x0024CF 00:A4BF: 61        .byte $61   ; 
- D 1 - I - 0x0024D0 00:A4C0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0024D2 00:A4C2: 68        .byte $68   ; 
- D 1 - I - 0x0024D3 00:A4C3: 59        .byte $59   ; 
- D 1 - I - 0x0024D4 00:A4C4: 68        .byte $68   ; 
- D 1 - I - 0x0024D5 00:A4C5: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0024D7 00:A4C7: 83        .byte $83   ; 
- D 1 - I - 0x0024D8 00:A4C8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024D9 00:A4C9: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x0024DB 00:A4CB: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0024DD 00:A4CD: 13        .byte $13   ; 
- D 1 - I - 0x0024DE 00:A4CE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024DF 00:A4CF: C2        .byte $C2   ; 
- D 1 - I - 0x0024E0 00:A4D0: A3        .byte $A3   ; 
- D 1 - I - 0x0024E1 00:A4D1: 82        .byte $82   ; 
- D 1 - I - 0x0024E2 00:A4D2: 63        .byte $63   ; 
- D 1 - I - 0x0024E3 00:A4D3: 52        .byte $52   ; 
- D 1 - I - 0x0024E4 00:A4D4: 33        .byte $33   ; 
- D 1 - I - 0x0024E5 00:A4D5: 12        .byte $12   ; 
- D 1 - I - 0x0024E6 00:A4D6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024E7 00:A4D7: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0024E9 00:A4D9: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x0024EB 00:A4DB: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0024EC 00:A4DC: 41 A5     .word sub_DF_A541
- D 1 - I - 0x0024EE 00:A4DE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0024F0 00:A4E0: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024F1 00:A4E1: 88        .byte $88   ; 
- D 1 - I - 0x0024F2 00:A4E2: 79        .byte $79   ; 
- D 1 - I - 0x0024F3 00:A4E3: 58        .byte $58   ; 
- D 1 - I - 0x0024F4 00:A4E4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0024F5 00:A4E5: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0024F7 00:A4E7: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0024F8 00:A4E8: 41 A5     .word sub_DF_A541
- D 1 - I - 0x0024FA 00:A4EA: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0024FC 00:A4EC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0024FD 00:A4ED: 88        .byte $88   ; 
- D 1 - I - 0x0024FE 00:A4EE: A9        .byte $A9   ; 
- D 1 - I - 0x0024FF 00:A4EF: C8        .byte $C8   ; 
- D 1 - I - 0x002500 00:A4F0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002501 00:A4F1: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002503 00:A4F3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002504 00:A4F4: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002505 00:A4F5: 5B A5     .word sub_DF_A55B
- D 1 - I - 0x002507 00:A4F7: A1        .byte $A1   ; 
- D 1 - I - 0x002508 00:A4F8: A1        .byte $A1   ; 
- D 1 - I - 0x002509 00:A4F9: 81        .byte $81   ; 
- D 1 - I - 0x00250A 00:A4FA: 71        .byte $71   ; 
- D 1 - I - 0x00250B 00:A4FB: 81        .byte $81   ; 
- D 1 - I - 0x00250C 00:A4FC: 81        .byte $81   ; 
- D 1 - I - 0x00250D 00:A4FD: A1        .byte $A1   ; 
- D 1 - I - 0x00250E 00:A4FE: C1        .byte $C1   ; 
- D 1 - I - 0x00250F 00:A4FF: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002510 00:A500: 5B A5     .word sub_DF_A55B
- D 1 - I - 0x002512 00:A502: A1        .byte $A1   ; 
- D 1 - I - 0x002513 00:A503: A1        .byte $A1   ; 
- D 1 - I - 0x002514 00:A504: 81        .byte $81   ; 
- D 1 - I - 0x002515 00:A505: 71        .byte $71   ; 
- D 1 - I - 0x002516 00:A506: 81        .byte $81   ; 
- D 1 - I - 0x002517 00:A507: 31        .byte $31   ; 
- D 1 - I - 0x002518 00:A508: 51        .byte $51   ; 
- D 1 - I - 0x002519 00:A509: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00251B 00:A50B: 83        .byte $83   ; 
- D 1 - I - 0x00251C 00:A50C: A2        .byte $A2   ; 
- D 1 - I - 0x00251D 00:A50D: C3        .byte $C3   ; 
- D 1 - I - 0x00251E 00:A50E: 82        .byte $82   ; 
- D 1 - I - 0x00251F 00:A50F: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002521 00:A511: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002522 00:A512: EA        .byte con_mcb_EA   ; 



sub_DF_A513:
- D 1 - I - 0x002523 00:A513: 30        .byte $30   ; 
- D 1 - I - 0x002524 00:A514: 50        .byte $50   ; 
- D 1 - I - 0x002525 00:A515: 80        .byte $80   ; 
- D 1 - I - 0x002526 00:A516: 00        .byte $00   ; 
- D 1 - I - 0x002527 00:A517: A0        .byte $A0   ; 
- D 1 - I - 0x002528 00:A518: 00        .byte $00   ; 
- D 1 - I - 0x002529 00:A519: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00252A 00:A51A: 31        .byte $31   ; 
- D 1 - I - 0x00252B 00:A51B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00252C 00:A51C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00252E 00:A51E: C8        .byte $C8   ; 
- D 1 - I - 0x00252F 00:A51F: 89        .byte $89   ; 
- D 1 - I - 0x002530 00:A520: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002531 00:A521: 88        .byte $88   ; 
- D 1 - I - 0x002532 00:A522: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002534 00:A524: 53        .byte $53   ; 
- D 1 - I - 0x002535 00:A525: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x002537 00:A527: A1        .byte $A1   ; 
- D 1 - I - 0x002538 00:A528: A3        .byte $A3   ; 
- D 1 - I - 0x002539 00:A529: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x00253B 00:A52B: E0        .byte con_mcb_rts   ; 



sub_DF_A52C:
- D 1 - I - 0x00253C 00:A52C: 30        .byte $30   ; 
- D 1 - I - 0x00253D 00:A52D: 50        .byte $50   ; 
- D 1 - I - 0x00253E 00:A52E: 80        .byte $80   ; 
- D 1 - I - 0x00253F 00:A52F: 00        .byte $00   ; 
- D 1 - I - 0x002540 00:A530: A0        .byte $A0   ; 
- D 1 - I - 0x002541 00:A531: 00        .byte $00   ; 
- D 1 - I - 0x002542 00:A532: C0        .byte $C0   ; 
- D 1 - I - 0x002543 00:A533: 00        .byte $00   ; 
- D 1 - I - 0x002544 00:A534: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002545 00:A535: 31        .byte $31   ; 
- D 1 - I - 0x002546 00:A536: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002547 00:A537: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002549 00:A539: C8        .byte $C8   ; 
- D 1 - I - 0x00254A 00:A53A: 89        .byte $89   ; 
- D 1 - I - 0x00254B 00:A53B: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00254C 00:A53C: 88        .byte $88   ; 
- D 1 - I - 0x00254D 00:A53D: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00254F 00:A53F: 51        .byte $51   ; 
- D 1 - I - 0x002550 00:A540: E0        .byte con_mcb_rts   ; 



sub_DF_A541:
- D 1 - I - 0x002551 00:A541: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002552 00:A542: A1        .byte $A1   ; 
- D 1 - I - 0x002553 00:A543: A1        .byte $A1   ; 
- D 1 - I - 0x002554 00:A544: 31        .byte $31   ; 
- D 1 - I - 0x002555 00:A545: A1        .byte $A1   ; 
- D 1 - I - 0x002556 00:A546: A1        .byte $A1   ; 
- D 1 - I - 0x002557 00:A547: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002558 00:A548: 71        .byte $71   ; 
- D 1 - I - 0x002559 00:A549: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00255B 00:A54B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00255C 00:A54C: 78        .byte $78   ; 
- D 1 - I - 0x00255D 00:A54D: 59        .byte $59   ; 
- D 1 - I - 0x00255E 00:A54E: 38        .byte $38   ; 
- D 1 - I - 0x00255F 00:A54F: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x002561 00:A551: C1        .byte $C1   ; 
- D 1 - I - 0x002562 00:A552: C1        .byte $C1   ; 
- D 1 - I - 0x002563 00:A553: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002564 00:A554: 81        .byte $81   ; 
- D 1 - I - 0x002565 00:A555: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002566 00:A556: C1        .byte $C1   ; 
- D 1 - I - 0x002567 00:A557: C1        .byte $C1   ; 
- D 1 - I - 0x002568 00:A558: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002569 00:A559: C1        .byte $C1   ; 
- D 1 - I - 0x00256A 00:A55A: E0        .byte con_mcb_rts   ; 



sub_DF_A55B:
- D 1 - I - 0x00256B 00:A55B: 51        .byte $51   ; 
- D 1 - I - 0x00256C 00:A55C: 51        .byte $51   ; 
- D 1 - I - 0x00256D 00:A55D: 50        .byte $50   ; 
- D 1 - I - 0x00256E 00:A55E: 52        .byte $52   ; 
- D 1 - I - 0x00256F 00:A55F: 51        .byte $51   ; 
- D 1 - I - 0x002570 00:A560: 51        .byte $51   ; 
- D 1 - I - 0x002571 00:A561: 81        .byte $81   ; 
- D 1 - I - 0x002572 00:A562: 81        .byte $81   ; 
- D 1 - I - 0x002573 00:A563: E0        .byte con_mcb_rts   ; 



ch_22_A564_02:
- D 1 - I - 0x002574 00:A564: DC        .byte con_mcb_DC, $04   ; 
- D 1 - I - 0x002576 00:A566: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002578 00:A568: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00257A 00:A56A: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00257B 00:A56B: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x00257D 00:A56D: 81        .byte $81   ; 
- D 1 - I - 0x00257E 00:A56E: 81        .byte $81   ; 
- D 1 - I - 0x00257F 00:A56F: 50        .byte $50   ; 
- D 1 - I - 0x002580 00:A570: 61        .byte $61   ; 
- D 1 - I - 0x002581 00:A571: 50        .byte $50   ; 
- D 1 - I - 0x002582 00:A572: 81        .byte $81   ; 
- D 1 - I - 0x002583 00:A573: 50        .byte $50   ; 
- D 1 - I - 0x002584 00:A574: 81        .byte $81   ; 
- D 1 - I - 0x002585 00:A575: 50        .byte $50   ; 
- D 1 - I - 0x002586 00:A576: 91        .byte $91   ; 
- D 1 - I - 0x002587 00:A577: 81        .byte $81   ; 
- D 1 - I - 0x002588 00:A578: 81        .byte $81   ; 
- D 1 - I - 0x002589 00:A579: 50        .byte $50   ; 
- D 1 - I - 0x00258A 00:A57A: 61        .byte $61   ; 
- D 1 - I - 0x00258B 00:A57B: 50        .byte $50   ; 
- D 1 - I - 0x00258C 00:A57C: 81        .byte $81   ; 
- D 1 - I - 0x00258D 00:A57D: 50        .byte $50   ; 
- D 1 - I - 0x00258E 00:A57E: 81        .byte $81   ; 
- D 1 - I - 0x00258F 00:A57F: 50        .byte $50   ; 
- D 1 - I - 0x002590 00:A580: 71        .byte $71   ; 
- D 1 - I - 0x002591 00:A581: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002592 00:A582: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002593 00:A583: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002595 00:A585: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002596 00:A586: 31        .byte $31   ; 
- D 1 - I - 0x002597 00:A587: 31        .byte $31   ; 
- D 1 - I - 0x002598 00:A588: 11        .byte $11   ; 
- D 1 - I - 0x002599 00:A589: 11        .byte $11   ; 
- D 1 - I - 0x00259A 00:A58A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00259B 00:A58B: C1        .byte $C1   ; 
- D 1 - I - 0x00259C 00:A58C: C1        .byte $C1   ; 
- D 1 - I - 0x00259D 00:A58D: A1        .byte $A1   ; 
- D 1 - I - 0x00259E 00:A58E: A1        .byte $A1   ; 
- D 1 - I - 0x00259F 00:A58F: 81        .byte $81   ; 
- D 1 - I - 0x0025A0 00:A590: 81        .byte $81   ; 
- D 1 - I - 0x0025A1 00:A591: 71        .byte $71   ; 
- D 1 - I - 0x0025A2 00:A592: 71        .byte $71   ; 
- D 1 - I - 0x0025A3 00:A593: 51        .byte $51   ; 
- D 1 - I - 0x0025A4 00:A594: 51        .byte $51   ; 
- D 1 - I - 0x0025A5 00:A595: 71        .byte $71   ; 
- D 1 - I - 0x0025A6 00:A596: 71        .byte $71   ; 
- D 1 - I - 0x0025A7 00:A597: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0025A8 00:A598: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0025AA 00:A59A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0025AB 00:A59B: 11        .byte $11   ; 
- D 1 - I - 0x0025AC 00:A59C: 11        .byte $11   ; 
- D 1 - I - 0x0025AD 00:A59D: 31        .byte $31   ; 
- D 1 - I - 0x0025AE 00:A59E: 51        .byte $51   ; 
- D 1 - I - 0x0025AF 00:A59F: 31        .byte $31   ; 
- D 1 - I - 0x0025B0 00:A5A0: 31        .byte $31   ; 
- D 1 - I - 0x0025B1 00:A5A1: 11        .byte $11   ; 
- D 1 - I - 0x0025B2 00:A5A2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0025B3 00:A5A3: C1        .byte $C1   ; 
- D 1 - I - 0x0025B4 00:A5A4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0025B5 00:A5A5: 31        .byte $31   ; 
- D 1 - I - 0x0025B6 00:A5A6: 31        .byte $31   ; 
- D 1 - I - 0x0025B7 00:A5A7: 11        .byte $11   ; 
- D 1 - I - 0x0025B8 00:A5A8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0025B9 00:A5A9: C1        .byte $C1   ; 
- D 1 - I - 0x0025BA 00:A5AA: 81        .byte $81   ; 
- D 1 - I - 0x0025BB 00:A5AB: 81        .byte $81   ; 
- D 1 - I - 0x0025BC 00:A5AC: A1        .byte $A1   ; 
- D 1 - I - 0x0025BD 00:A5AD: C1        .byte $C1   ; 
- D 1 - I - 0x0025BE 00:A5AE: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0025BF 00:A5AF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0025C0 00:A5B0: EA        .byte con_mcb_EA   ; 



ch_22_A5B1_03:
- D 1 - I - 0x0025C1 00:A5B1: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x0025C3 00:A5B3: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x0025C5 00:A5B5: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0025C7 00:A5B7: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0025C8 00:A5B8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0025C9 00:A5B9: 03 A6     .word sub_DF_A603
- D 1 - I - 0x0025CB 00:A5BB: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0025CD 00:A5BD: 11        .byte $11   ; 
- D 1 - I - 0x0025CE 00:A5BE: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0025D0 00:A5C0: 31        .byte $31   ; 
- D 1 - I - 0x0025D1 00:A5C1: 30        .byte $30   ; 
- D 1 - I - 0x0025D2 00:A5C2: 30        .byte $30   ; 
- D 1 - I - 0x0025D3 00:A5C3: 31        .byte $31   ; 
- D 1 - I - 0x0025D4 00:A5C4: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0025D5 00:A5C5: 03 A6     .word sub_DF_A603
- D 1 - I - 0x0025D7 00:A5C7: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0025D9 00:A5C9: 11        .byte $11   ; 
- D 1 - I - 0x0025DA 00:A5CA: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0025DC 00:A5CC: 31        .byte $31   ; 
- D 1 - I - 0x0025DD 00:A5CD: 30        .byte $30   ; 
- D 1 - I - 0x0025DE 00:A5CE: 30        .byte $30   ; 
- D 1 - I - 0x0025DF 00:A5CF: 31        .byte $31   ; 
- D 1 - I - 0x0025E0 00:A5D0: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x0025E2 00:A5D2: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0025E4 00:A5D4: 13        .byte $13   ; 
- D 1 - I - 0x0025E5 00:A5D5: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0025E7 00:A5D7: 33        .byte $33   ; 
- D 1 - I - 0x0025E8 00:A5D8: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0025EA 00:A5DA: 11        .byte $11   ; 
- D 1 - I - 0x0025EB 00:A5DB: 11        .byte $11   ; 
- D 1 - I - 0x0025EC 00:A5DC: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0025EE 00:A5DE: 33        .byte $33   ; 
- D 1 - I - 0x0025EF 00:A5DF: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0025F0 00:A5E0: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0025F2 00:A5E2: 13        .byte $13   ; 
- D 1 - I - 0x0025F3 00:A5E3: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0025F5 00:A5E5: 33        .byte $33   ; 
- D 1 - I - 0x0025F6 00:A5E6: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0025F8 00:A5E8: 11        .byte $11   ; 
- D 1 - I - 0x0025F9 00:A5E9: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0025FB 00:A5EB: 31        .byte $31   ; 
- D 1 - I - 0x0025FC 00:A5EC: 30        .byte $30   ; 
- D 1 - I - 0x0025FD 00:A5ED: 30        .byte $30   ; 
- D 1 - I - 0x0025FE 00:A5EE: 31        .byte $31   ; 
- D 1 - I - 0x0025FF 00:A5EF: D7        .byte con_mcb_D7, $0C   ; 
- D 1 - I - 0x002601 00:A5F1: 31        .byte $31   ; 
- D 1 - I - 0x002602 00:A5F2: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x002604 00:A5F4: 11        .byte $11   ; 
- D 1 - I - 0x002605 00:A5F5: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x002607 00:A5F7: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002608 00:A5F8: 31        .byte $31   ; 
- D 1 - I - 0x002609 00:A5F9: 21        .byte $21   ; 
- D 1 - I - 0x00260A 00:A5FA: 31        .byte $31   ; 
- D 1 - I - 0x00260B 00:A5FB: 21        .byte $21   ; 
- D 1 - I - 0x00260C 00:A5FC: 31        .byte $31   ; 
- D 1 - I - 0x00260D 00:A5FD: 31        .byte $31   ; 
- D 1 - I - 0x00260E 00:A5FE: 30        .byte $30   ; 
- D 1 - I - 0x00260F 00:A5FF: 30        .byte $30   ; 
- D 1 - I - 0x002610 00:A600: 30        .byte $30   ; 
- D 1 - I - 0x002611 00:A601: 30        .byte $30   ; 
- D 1 - I - 0x002612 00:A602: EA        .byte con_mcb_EA   ; 



sub_DF_A603:
- D 1 - I - 0x002613 00:A603: D7        .byte con_mcb_D7, $07   ; 
- D 1 - I - 0x002615 00:A605: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x002617 00:A607: 11        .byte $11   ; 
- D 1 - I - 0x002618 00:A608: 11        .byte $11   ; 
- D 1 - I - 0x002619 00:A609: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x00261B 00:A60B: 33        .byte $33   ; 
- D 1 - I - 0x00261C 00:A60C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00261D 00:A60D: E0        .byte con_mcb_rts   ; 



_off005_A60E_23_ost_8:
- D 1 - I - 0x00261E 00:A60E: 18 A6     .word ch_23_A618_00
- D 1 - I - 0x002620 00:A610: D3 A6     .word ch_23_A6D3_01
- D 1 - I - 0x002622 00:A612: C7 A7     .word ch_23_A7C7_02
- D 1 - I - 0x002624 00:A614: 53 A8     .word ch_23_A853_03
- D 1 - I - 0x002626 00:A616: 00 00     .word $0000 ;    04



ch_23_A618_00:
- D 1 - I - 0x002628 00:A618: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x00262A 00:A61A: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x00262C 00:A61C: E5        .byte con_mcb_E5, $0C   ; 
- D 1 - I - 0x00262E 00:A61E: DB        .byte con_mcb_DB, $08   ; 
- D 1 - I - 0x002630 00:A620: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002632 00:A622: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x002634 00:A624: E3        .byte con_mcb_E3, $11   ; 
- D 1 - I - 0x002636 00:A626: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002638 00:A628: 5A        .byte $5A   ; 
- D 1 - I - 0x002639 00:A629: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00263A 00:A62A: 59        .byte $59   ; 
- D 1 - I - 0x00263B 00:A62B: 6A        .byte $6A   ; 
- D 1 - I - 0x00263C 00:A62C: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00263D 00:A62D: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00263E 00:A62E: 7F A6     .word sub_DF_A67F
- D 1 - I - 0x002640 00:A630: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002641 00:A631: 7F A6     .word sub_DF_A67F
- D 1 - I - 0x002643 00:A633: BB        .byte $BB   ; 
- D 1 - I - 0x002644 00:A634: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002646 00:A636: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002647 00:A637: 1A        .byte $1A   ; 
- D 1 - I - 0x002648 00:A638: 19        .byte $19   ; 
- D 1 - I - 0x002649 00:A639: 1A        .byte $1A   ; 
- D 1 - I - 0x00264A 00:A63A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00264B 00:A63B: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00264D 00:A63D: AB        .byte $AB   ; 
- D 1 - I - 0x00264E 00:A63E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002650 00:A640: 5A        .byte $5A   ; 
- D 1 - I - 0x002651 00:A641: 59        .byte $59   ; 
- D 1 - I - 0x002652 00:A642: 6A        .byte $6A   ; 
- D 1 - I - 0x002653 00:A643: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002655 00:A645: BB        .byte $BB   ; 
- D 1 - I - 0x002656 00:A646: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002658 00:A648: AA        .byte $AA   ; 
- D 1 - I - 0x002659 00:A649: 89        .byte $89   ; 
- D 1 - I - 0x00265A 00:A64A: 6A        .byte $6A   ; 
- D 1 - I - 0x00265B 00:A64B: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00265D 00:A64D: 8B        .byte $8B   ; 
- D 1 - I - 0x00265E 00:A64E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002660 00:A650: 5A        .byte $5A   ; 
- D 1 - I - 0x002661 00:A651: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002662 00:A652: 59        .byte $59   ; 
- D 1 - I - 0x002663 00:A653: 6A        .byte $6A   ; 
- D 1 - I - 0x002664 00:A654: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002666 00:A656: BB        .byte $BB   ; 
- D 1 - I - 0x002667 00:A657: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002669 00:A659: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00266A 00:A65A: 1A        .byte $1A   ; 
- D 1 - I - 0x00266B 00:A65B: 19        .byte $19   ; 
- D 1 - I - 0x00266C 00:A65C: 1A        .byte $1A   ; 
- D 1 - I - 0x00266D 00:A65D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00266E 00:A65E: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002670 00:A660: AB        .byte $AB   ; 
- D 1 - I - 0x002671 00:A661: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002673 00:A663: 5A        .byte $5A   ; 
- D 1 - I - 0x002674 00:A664: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002675 00:A665: 59        .byte $59   ; 
- D 1 - I - 0x002676 00:A666: 6A        .byte $6A   ; 
- D 1 - I - 0x002677 00:A667: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002679 00:A669: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00267A 00:A66A: 1B        .byte $1B   ; 
- D 1 - I - 0x00267B 00:A66B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00267C 00:A66C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00267E 00:A66E: AA        .byte $AA   ; 
- D 1 - I - 0x00267F 00:A66F: C9        .byte $C9   ; 
- D 1 - I - 0x002680 00:A670: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002681 00:A671: 1A        .byte $1A   ; 
- D 1 - I - 0x002682 00:A672: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002684 00:A674: 3B        .byte $3B   ; 
- D 1 - I - 0x002685 00:A675: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002686 00:A676: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002688 00:A678: 5A        .byte $5A   ; 
- D 1 - I - 0x002689 00:A679: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00268A 00:A67A: 59        .byte $59   ; 
- D 1 - I - 0x00268B 00:A67B: 6A        .byte $6A   ; 
- D 1 - I - 0x00268C 00:A67C: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00268E 00:A67E: EA        .byte con_mcb_EA   ; 



sub_DF_A67F:
- D 1 - I - 0x00268F 00:A67F: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002691 00:A681: 83        .byte $83   ; 
- D 1 - I - 0x002692 00:A682: B7        .byte $B7   ; 
- D 1 - I - 0x002693 00:A683: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002695 00:A685: AA        .byte $AA   ; 
- D 1 - I - 0x002696 00:A686: 89        .byte $89   ; 
- D 1 - I - 0x002697 00:A687: 6A        .byte $6A   ; 
- D 1 - I - 0x002698 00:A688: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00269A 00:A68A: 83        .byte $83   ; 
- D 1 - I - 0x00269B 00:A68B: 57        .byte $57   ; 
- D 1 - I - 0x00269C 00:A68C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00269E 00:A68E: 5A        .byte $5A   ; 
- D 1 - I - 0x00269F 00:A68F: 59        .byte $59   ; 
- D 1 - I - 0x0026A0 00:A690: 6A        .byte $6A   ; 
- D 1 - I - 0x0026A1 00:A691: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026A3 00:A693: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026A5 00:A695: 83        .byte $83   ; 
- D 1 - I - 0x0026A6 00:A696: B7        .byte $B7   ; 
- D 1 - I - 0x0026A7 00:A697: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026A9 00:A699: AA        .byte $AA   ; 
- D 1 - I - 0x0026AA 00:A69A: 89        .byte $89   ; 
- D 1 - I - 0x0026AB 00:A69B: 6A        .byte $6A   ; 
- D 1 - I - 0x0026AC 00:A69C: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026AE 00:A69E: 8B        .byte $8B   ; 
- D 1 - I - 0x0026AF 00:A69F: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026B1 00:A6A1: 5A        .byte $5A   ; 
- D 1 - I - 0x0026B2 00:A6A2: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0026B3 00:A6A3: 59        .byte $59   ; 
- D 1 - I - 0x0026B4 00:A6A4: 6A        .byte $6A   ; 
- D 1 - I - 0x0026B5 00:A6A5: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026B7 00:A6A7: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026B9 00:A6A9: 83        .byte $83   ; 
- D 1 - I - 0x0026BA 00:A6AA: B7        .byte $B7   ; 
- D 1 - I - 0x0026BB 00:A6AB: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026BD 00:A6AD: AA        .byte $AA   ; 
- D 1 - I - 0x0026BE 00:A6AE: 89        .byte $89   ; 
- D 1 - I - 0x0026BF 00:A6AF: 6A        .byte $6A   ; 
- D 1 - I - 0x0026C0 00:A6B0: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026C2 00:A6B2: 83        .byte $83   ; 
- D 1 - I - 0x0026C3 00:A6B3: 57        .byte $57   ; 
- D 1 - I - 0x0026C4 00:A6B4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026C6 00:A6B6: 5A        .byte $5A   ; 
- D 1 - I - 0x0026C7 00:A6B7: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0026C8 00:A6B8: 59        .byte $59   ; 
- D 1 - I - 0x0026C9 00:A6B9: 6A        .byte $6A   ; 
- D 1 - I - 0x0026CA 00:A6BA: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026CC 00:A6BC: 83        .byte $83   ; 
- D 1 - I - 0x0026CD 00:A6BD: 53        .byte $53   ; 
- D 1 - I - 0x0026CE 00:A6BE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026D0 00:A6C0: 5A        .byte $5A   ; 
- D 1 - I - 0x0026D1 00:A6C1: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0026D2 00:A6C2: 59        .byte $59   ; 
- D 1 - I - 0x0026D3 00:A6C3: 5A        .byte $5A   ; 
- D 1 - I - 0x0026D4 00:A6C4: 6A        .byte $6A   ; 
- D 1 - I - 0x0026D5 00:A6C5: 59        .byte $59   ; 
- D 1 - I - 0x0026D6 00:A6C6: 3A        .byte $3A   ; 
- D 1 - I - 0x0026D7 00:A6C7: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026D9 00:A6C9: 1B        .byte $1B   ; 
- D 1 - I - 0x0026DA 00:A6CA: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026DC 00:A6CC: 5A        .byte $5A   ; 
- D 1 - I - 0x0026DD 00:A6CD: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0026DE 00:A6CE: 59        .byte $59   ; 
- D 1 - I - 0x0026DF 00:A6CF: 6A        .byte $6A   ; 
- D 1 - I - 0x0026E0 00:A6D0: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026E2 00:A6D2: E0        .byte con_mcb_rts   ; 



ch_23_A6D3_01:
- D 1 - I - 0x0026E3 00:A6D3: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x0026E5 00:A6D5: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x0026E7 00:A6D7: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x0026E9 00:A6D9: DB        .byte con_mcb_DB, $08   ; 
- D 1 - I - 0x0026EB 00:A6DB: DA        .byte con_mcb_DA, $80   ; 
- D 1 - I - 0x0026ED 00:A6DD: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x0026EF 00:A6DF: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0026F1 00:A6E1: E3        .byte con_mcb_E3, $15   ; 
- D 1 - I - 0x0026F3 00:A6E3: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0026F5 00:A6E5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0026F6 00:A6E6: 1A        .byte $1A   ; 
- D 1 - I - 0x0026F7 00:A6E7: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0026F8 00:A6E8: 19        .byte $19   ; 
- D 1 - I - 0x0026F9 00:A6E9: 3A        .byte $3A   ; 
- D 1 - I - 0x0026FA 00:A6EA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0026FB 00:A6EB: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0026FD 00:A6ED: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0026FE 00:A6EE: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002700 00:A6F0: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002701 00:A6F1: 6F A7     .word sub_DF_A76F
- D 1 - I - 0x002703 00:A6F3: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002704 00:A6F4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002705 00:A6F5: 33        .byte $33   ; 
- D 1 - I - 0x002706 00:A6F6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002707 00:A6F7: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002709 00:A6F9: BA        .byte $BA   ; 
- D 1 - I - 0x00270A 00:A6FA: B9        .byte $B9   ; 
- D 1 - I - 0x00270B 00:A6FB: AA        .byte $AA   ; 
- D 1 - I - 0x00270C 00:A6FC: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00270E 00:A6FE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00270F 00:A6FF: 37        .byte $37   ; 
- D 1 - I - 0x002710 00:A700: 13        .byte $13   ; 
- D 1 - I - 0x002711 00:A701: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002712 00:A702: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002714 00:A704: AA        .byte $AA   ; 
- D 1 - I - 0x002715 00:A705: A9        .byte $A9   ; 
- D 1 - I - 0x002716 00:A706: AA        .byte $AA   ; 
- D 1 - I - 0x002717 00:A707: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002719 00:A709: A7        .byte $A7   ; 
- D 1 - I - 0x00271A 00:A70A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00271B 00:A70B: 33        .byte $33   ; 
- D 1 - I - 0x00271C 00:A70C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00271D 00:A70D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00271F 00:A70F: BA        .byte $BA   ; 
- D 1 - I - 0x002720 00:A710: B9        .byte $B9   ; 
- D 1 - I - 0x002721 00:A711: AA        .byte $AA   ; 
- D 1 - I - 0x002722 00:A712: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002724 00:A714: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002725 00:A715: 37        .byte $37   ; 
- D 1 - I - 0x002726 00:A716: 51        .byte $51   ; 
- D 1 - I - 0x002727 00:A717: 31        .byte $31   ; 
- D 1 - I - 0x002728 00:A718: 11        .byte $11   ; 
- D 1 - I - 0x002729 00:A719: 31        .byte $31   ; 
- D 1 - I - 0x00272A 00:A71A: 53        .byte $53   ; 
- D 1 - I - 0x00272B 00:A71B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00272D 00:A71D: 1A        .byte $1A   ; 
- D 1 - I - 0x00272E 00:A71E: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00272F 00:A71F: 19        .byte $19   ; 
- D 1 - I - 0x002730 00:A720: 6A        .byte $6A   ; 
- D 1 - I - 0x002731 00:A721: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002733 00:A723: 33        .byte $33   ; 
- D 1 - I - 0x002734 00:A724: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002735 00:A725: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002737 00:A727: BA        .byte $BA   ; 
- D 1 - I - 0x002738 00:A728: B9        .byte $B9   ; 
- D 1 - I - 0x002739 00:A729: AA        .byte $AA   ; 
- D 1 - I - 0x00273A 00:A72A: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00273C 00:A72C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00273D 00:A72D: 37        .byte $37   ; 
- D 1 - I - 0x00273E 00:A72E: 13        .byte $13   ; 
- D 1 - I - 0x00273F 00:A72F: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002741 00:A731: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002742 00:A732: AA        .byte $AA   ; 
- D 1 - I - 0x002743 00:A733: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002744 00:A734: 19        .byte $19   ; 
- D 1 - I - 0x002745 00:A735: 5A        .byte $5A   ; 
- D 1 - I - 0x002746 00:A736: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002748 00:A738: A7        .byte $A7   ; 
- D 1 - I - 0x002749 00:A739: 53        .byte $53   ; 
- D 1 - I - 0x00274A 00:A73A: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00274C 00:A73C: 5A        .byte $5A   ; 
- D 1 - I - 0x00274D 00:A73D: 69        .byte $69   ; 
- D 1 - I - 0x00274E 00:A73E: 7A        .byte $7A   ; 
- D 1 - I - 0x00274F 00:A73F: 8A        .byte $8A   ; 
- D 1 - I - 0x002750 00:A740: 69        .byte $69   ; 
- D 1 - I - 0x002751 00:A741: 8A        .byte $8A   ; 
- D 1 - I - 0x002752 00:A742: 5A        .byte $5A   ; 
- D 1 - I - 0x002753 00:A743: 69        .byte $69   ; 
- D 1 - I - 0x002754 00:A744: 8A        .byte $8A   ; 
- D 1 - I - 0x002755 00:A745: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002757 00:A747: 73        .byte $73   ; 
- D 1 - I - 0x002758 00:A748: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00275A 00:A74A: 7A        .byte $7A   ; 
- D 1 - I - 0x00275B 00:A74B: 79        .byte $79   ; 
- D 1 - I - 0x00275C 00:A74C: 7A        .byte $7A   ; 
- D 1 - I - 0x00275D 00:A74D: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00275F 00:A74F: A3        .byte $A3   ; 
- D 1 - I - 0x002760 00:A750: 11        .byte $11   ; 
- D 1 - I - 0x002761 00:A751: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002762 00:A752: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002764 00:A754: DB        .byte con_mcb_DB, $18   ; 
- D 1 - I - 0x002766 00:A756: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002768 00:A758: 11        .byte $11   ; 
- D 1 - I - 0x002769 00:A759: 50        .byte $50   ; 
- D 1 - I - 0x00276A 00:A75A: 80        .byte $80   ; 
- D 1 - I - 0x00276B 00:A75B: A1        .byte $A1   ; 
- D 1 - I - 0x00276C 00:A75C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00276D 00:A75D: 10        .byte $10   ; 
- D 1 - I - 0x00276E 00:A75E: 50        .byte $50   ; 
- D 1 - I - 0x00276F 00:A75F: 81        .byte $81   ; 
- D 1 - I - 0x002770 00:A760: 60        .byte $60   ; 
- D 1 - I - 0x002771 00:A761: 80        .byte $80   ; 
- D 1 - I - 0x002772 00:A762: A1        .byte $A1   ; 
- D 1 - I - 0x002773 00:A763: C0        .byte $C0   ; 
- D 1 - I - 0x002774 00:A764: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002775 00:A765: 10        .byte $10   ; 
- D 1 - I - 0x002776 00:A766: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002777 00:A767: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002778 00:A768: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x00277A 00:A76A: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00277C 00:A76C: DB        .byte con_mcb_DB, $08   ; 
- D 1 - I - 0x00277E 00:A76E: EA        .byte con_mcb_EA   ; 



sub_DF_A76F:
- D 1 - I - 0x00277F 00:A76F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002780 00:A770: 13        .byte $13   ; 
- D 1 - I - 0x002781 00:A771: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002782 00:A772: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002784 00:A774: BA        .byte $BA   ; 
- D 1 - I - 0x002785 00:A775: B9        .byte $B9   ; 
- D 1 - I - 0x002786 00:A776: BA        .byte $BA   ; 
- D 1 - I - 0x002787 00:A777: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002789 00:A779: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00278A 00:A77A: 37        .byte $37   ; 
- D 1 - I - 0x00278B 00:A77B: 53        .byte $53   ; 
- D 1 - I - 0x00278C 00:A77C: 17        .byte $17   ; 
- D 1 - I - 0x00278D 00:A77D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00278F 00:A77F: 1A        .byte $1A   ; 
- D 1 - I - 0x002790 00:A780: 19        .byte $19   ; 
- D 1 - I - 0x002791 00:A781: 3A        .byte $3A   ; 
- D 1 - I - 0x002792 00:A782: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002794 00:A784: 53        .byte $53   ; 
- D 1 - I - 0x002795 00:A785: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002797 00:A787: 5A        .byte $5A   ; 
- D 1 - I - 0x002798 00:A788: 59        .byte $59   ; 
- D 1 - I - 0x002799 00:A789: 5A        .byte $5A   ; 
- D 1 - I - 0x00279A 00:A78A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00279B 00:A78B: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00279D 00:A78D: B7        .byte $B7   ; 
- D 1 - I - 0x00279E 00:A78E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00279F 00:A78F: 13        .byte $13   ; 
- D 1 - I - 0x0027A0 00:A790: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0027A1 00:A791: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027A3 00:A793: 8A        .byte $8A   ; 
- D 1 - I - 0x0027A4 00:A794: 89        .byte $89   ; 
- D 1 - I - 0x0027A5 00:A795: 8A        .byte $8A   ; 
- D 1 - I - 0x0027A6 00:A796: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027A8 00:A798: 83        .byte $83   ; 
- D 1 - I - 0x0027A9 00:A799: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027AB 00:A79B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0027AC 00:A79C: 1A        .byte $1A   ; 
- D 1 - I - 0x0027AD 00:A79D: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0027AE 00:A79E: 19        .byte $19   ; 
- D 1 - I - 0x0027AF 00:A79F: 3A        .byte $3A   ; 
- D 1 - I - 0x0027B0 00:A7A0: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027B2 00:A7A2: 53        .byte $53   ; 
- D 1 - I - 0x0027B3 00:A7A3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0027B4 00:A7A4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027B6 00:A7A6: BA        .byte $BA   ; 
- D 1 - I - 0x0027B7 00:A7A7: B9        .byte $B9   ; 
- D 1 - I - 0x0027B8 00:A7A8: BA        .byte $BA   ; 
- D 1 - I - 0x0027B9 00:A7A9: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027BB 00:A7AB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0027BC 00:A7AC: 37        .byte $37   ; 
- D 1 - I - 0x0027BD 00:A7AD: 53        .byte $53   ; 
- D 1 - I - 0x0027BE 00:A7AE: 17        .byte $17   ; 
- D 1 - I - 0x0027BF 00:A7AF: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027C1 00:A7B1: 1A        .byte $1A   ; 
- D 1 - I - 0x0027C2 00:A7B2: 19        .byte $19   ; 
- D 1 - I - 0x0027C3 00:A7B3: 3A        .byte $3A   ; 
- D 1 - I - 0x0027C4 00:A7B4: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027C6 00:A7B6: 57        .byte $57   ; 
- D 1 - I - 0x0027C7 00:A7B7: 17        .byte $17   ; 
- D 1 - I - 0x0027C8 00:A7B8: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027CA 00:A7BA: 1A        .byte $1A   ; 
- D 1 - I - 0x0027CB 00:A7BB: 59        .byte $59   ; 
- D 1 - I - 0x0027CC 00:A7BC: 8A        .byte $8A   ; 
- D 1 - I - 0x0027CD 00:A7BD: 8A        .byte $8A   ; 
- D 1 - I - 0x0027CE 00:A7BE: 59        .byte $59   ; 
- D 1 - I - 0x0027CF 00:A7BF: 1A        .byte $1A   ; 
- D 1 - I - 0x0027D0 00:A7C0: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027D2 00:A7C2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0027D3 00:A7C3: 17        .byte $17   ; 
- D 1 - I - 0x0027D4 00:A7C4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0027D5 00:A7C5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0027D6 00:A7C6: E0        .byte con_mcb_rts   ; 



ch_23_A7C7_02:
- D 1 - I - 0x0027D7 00:A7C7: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x0027D9 00:A7C9: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x0027DB 00:A7CB: E5        .byte con_mcb_E5, $05   ; 
- D 1 - I - 0x0027DD 00:A7CD: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0027DF 00:A7CF: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027E1 00:A7D1: 03        .byte $03   ; 
- D 1 - I - 0x0027E2 00:A7D2: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0027E3 00:A7D3: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0027E5 00:A7D5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0027E6 00:A7D6: 45 A8     .word sub_DF_A845
- D 1 - I - 0x0027E8 00:A7D8: 13        .byte $13   ; 
- D 1 - I - 0x0027E9 00:A7D9: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027EB 00:A7DB: 1A        .byte $1A   ; 
- D 1 - I - 0x0027EC 00:A7DC: 19        .byte $19   ; 
- D 1 - I - 0x0027ED 00:A7DD: 1A        .byte $1A   ; 
- D 1 - I - 0x0027EE 00:A7DE: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027F0 00:A7E0: 83        .byte $83   ; 
- D 1 - I - 0x0027F1 00:A7E1: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027F3 00:A7E3: 5A        .byte $5A   ; 
- D 1 - I - 0x0027F4 00:A7E4: 59        .byte $59   ; 
- D 1 - I - 0x0027F5 00:A7E5: 5A        .byte $5A   ; 
- D 1 - I - 0x0027F6 00:A7E6: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0027F8 00:A7E8: 13        .byte $13   ; 
- D 1 - I - 0x0027F9 00:A7E9: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0027FB 00:A7EB: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x0027FD 00:A7ED: 1A        .byte $1A   ; 
- D 1 - I - 0x0027FE 00:A7EE: 19        .byte $19   ; 
- D 1 - I - 0x0027FF 00:A7EF: 1A        .byte $1A   ; 
- D 1 - I - 0x002800 00:A7F0: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002801 00:A7F1: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002803 00:A7F3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002804 00:A7F4: 45 A8     .word sub_DF_A845
- D 1 - I - 0x002806 00:A7F6: 83        .byte $83   ; 
- D 1 - I - 0x002807 00:A7F7: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002809 00:A7F9: 8A        .byte $8A   ; 
- D 1 - I - 0x00280A 00:A7FA: 89        .byte $89   ; 
- D 1 - I - 0x00280B 00:A7FB: 8A        .byte $8A   ; 
- D 1 - I - 0x00280C 00:A7FC: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00280E 00:A7FE: 53        .byte $53   ; 
- D 1 - I - 0x00280F 00:A7FF: 33        .byte $33   ; 
- D 1 - I - 0x002810 00:A800: 13        .byte $13   ; 
- D 1 - I - 0x002811 00:A801: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002813 00:A803: 1A        .byte $1A   ; 
- D 1 - I - 0x002814 00:A804: 19        .byte $19   ; 
- D 1 - I - 0x002815 00:A805: 1A        .byte $1A   ; 
- D 1 - I - 0x002816 00:A806: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002818 00:A808: 13        .byte $13   ; 
- D 1 - I - 0x002819 00:A809: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00281B 00:A80B: 1A        .byte $1A   ; 
- D 1 - I - 0x00281C 00:A80C: 39        .byte $39   ; 
- D 1 - I - 0x00281D 00:A80D: 5A        .byte $5A   ; 
- D 1 - I - 0x00281E 00:A80E: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002820 00:A810: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002821 00:A811: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x002823 00:A813: 13        .byte $13   ; 
- D 1 - I - 0x002824 00:A814: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002826 00:A816: 1A        .byte $1A   ; 
- D 1 - I - 0x002827 00:A817: 19        .byte $19   ; 
- D 1 - I - 0x002828 00:A818: 1A        .byte $1A   ; 
- D 1 - I - 0x002829 00:A819: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00282B 00:A81B: 13        .byte $13   ; 
- D 1 - I - 0x00282C 00:A81C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00282E 00:A81E: 6A        .byte $6A   ; 
- D 1 - I - 0x00282F 00:A81F: 59        .byte $59   ; 
- D 1 - I - 0x002830 00:A820: 3A        .byte $3A   ; 
- D 1 - I - 0x002831 00:A821: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002833 00:A823: 13        .byte $13   ; 
- D 1 - I - 0x002834 00:A824: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002836 00:A826: 1A        .byte $1A   ; 
- D 1 - I - 0x002837 00:A827: 19        .byte $19   ; 
- D 1 - I - 0x002838 00:A828: 1A        .byte $1A   ; 
- D 1 - I - 0x002839 00:A829: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00283B 00:A82B: 13        .byte $13   ; 
- D 1 - I - 0x00283C 00:A82C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00283E 00:A82E: 5A        .byte $5A   ; 
- D 1 - I - 0x00283F 00:A82F: 59        .byte $59   ; 
- D 1 - I - 0x002840 00:A830: 5A        .byte $5A   ; 
- D 1 - I - 0x002841 00:A831: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002843 00:A833: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002844 00:A834: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002846 00:A836: 13        .byte $13   ; 
- D 1 - I - 0x002847 00:A837: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002848 00:A838: 33        .byte $33   ; 
- D 1 - I - 0x002849 00:A839: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00284B 00:A83B: 3A        .byte $3A   ; 
- D 1 - I - 0x00284C 00:A83C: 39        .byte $39   ; 
- D 1 - I - 0x00284D 00:A83D: 3A        .byte $3A   ; 
- D 1 - I - 0x00284E 00:A83E: 3A        .byte $3A   ; 
- D 1 - I - 0x00284F 00:A83F: 29        .byte $29   ; 
- D 1 - I - 0x002850 00:A840: 1A        .byte $1A   ; 
- D 1 - I - 0x002851 00:A841: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002853 00:A843: 13        .byte $13   ; 
- D 1 - I - 0x002854 00:A844: EA        .byte con_mcb_EA   ; 



sub_DF_A845:
- D 1 - I - 0x002855 00:A845: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x002857 00:A847: 13        .byte $13   ; 
- D 1 - I - 0x002858 00:A848: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00285A 00:A84A: 1A        .byte $1A   ; 
- D 1 - I - 0x00285B 00:A84B: 19        .byte $19   ; 
- D 1 - I - 0x00285C 00:A84C: 1A        .byte $1A   ; 
- D 1 - I - 0x00285D 00:A84D: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00285F 00:A84F: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002860 00:A850: 83        .byte $83   ; 
- D 1 - I - 0x002861 00:A851: 53        .byte $53   ; 
- D 1 - I - 0x002862 00:A852: E0        .byte con_mcb_rts   ; 



ch_23_A853_03:
- D 1 - I - 0x002863 00:A853: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x002865 00:A855: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x002867 00:A857: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002869 00:A859: 03        .byte $03   ; 
- D 1 - I - 0x00286A 00:A85A: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00286B 00:A85B: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x00286D 00:A85D: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00286E 00:A85E: 62 A8     .word sub_DF_A862
- D 1 - I - 0x002870 00:A860: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002871 00:A861: EA        .byte con_mcb_EA   ; 



sub_DF_A862:
- D 1 - I - 0x002872 00:A862: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002874 00:A864: 33        .byte $33   ; 
- D 1 - I - 0x002875 00:A865: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002877 00:A867: 3A        .byte $3A   ; 
- D 1 - I - 0x002878 00:A868: 39        .byte $39   ; 
- D 1 - I - 0x002879 00:A869: 3A        .byte $3A   ; 
- D 1 - I - 0x00287A 00:A86A: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00287C 00:A86C: 31        .byte $31   ; 
- D 1 - I - 0x00287D 00:A86D: 31        .byte $31   ; 
- D 1 - I - 0x00287E 00:A86E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002880 00:A870: 3A        .byte $3A   ; 
- D 1 - I - 0x002881 00:A871: 39        .byte $39   ; 
- D 1 - I - 0x002882 00:A872: 3A        .byte $3A   ; 
- D 1 - I - 0x002883 00:A873: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x002885 00:A875: 33        .byte $33   ; 
- D 1 - I - 0x002886 00:A876: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002888 00:A878: 3A        .byte $3A   ; 
- D 1 - I - 0x002889 00:A879: 39        .byte $39   ; 
- D 1 - I - 0x00288A 00:A87A: 3A        .byte $3A   ; 
- D 1 - I - 0x00288B 00:A87B: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00288D 00:A87D: 31        .byte $31   ; 
- D 1 - I - 0x00288E 00:A87E: 31        .byte $31   ; 
- D 1 - I - 0x00288F 00:A87F: 01        .byte $01   ; 
- D 1 - I - 0x002890 00:A880: 30        .byte $30   ; 
- D 1 - I - 0x002891 00:A881: 30        .byte $30   ; 
- D 1 - I - 0x002892 00:A882: 31        .byte $31   ; 
- D 1 - I - 0x002893 00:A883: 31        .byte $31   ; 
- D 1 - I - 0x002894 00:A884: 01        .byte $01   ; 
- D 1 - I - 0x002895 00:A885: 30        .byte $30   ; 
- D 1 - I - 0x002896 00:A886: 30        .byte $30   ; 
- D 1 - I - 0x002897 00:A887: 31        .byte $31   ; 
- D 1 - I - 0x002898 00:A888: 31        .byte $31   ; 
- D 1 - I - 0x002899 00:A889: 01        .byte $01   ; 
- D 1 - I - 0x00289A 00:A88A: 30        .byte $30   ; 
- D 1 - I - 0x00289B 00:A88B: 30        .byte $30   ; 
- D 1 - I - 0x00289C 00:A88C: 31        .byte $31   ; 
- D 1 - I - 0x00289D 00:A88D: 31        .byte $31   ; 
- D 1 - I - 0x00289E 00:A88E: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0028A0 00:A890: 30        .byte $30   ; 
- D 1 - I - 0x0028A1 00:A891: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0028A2 00:A892: 31        .byte $31   ; 
- D 1 - I - 0x0028A3 00:A893: 31        .byte $31   ; 
- D 1 - I - 0x0028A4 00:A894: 33        .byte $33   ; 
- D 1 - I - 0x0028A5 00:A895: E0        .byte con_mcb_rts   ; 



_off005_A896_24_ost_5:
- D 1 - I - 0x0028A6 00:A896: A0 A8     .word ch_24_A8A0_00
- D 1 - I - 0x0028A8 00:A898: 58 A9     .word ch_24_A958_01
- D 1 - I - 0x0028AA 00:A89A: CB A9     .word ch_24_A9CB_02
- D 1 - I - 0x0028AC 00:A89C: 30 AA     .word ch_24_AA30_03
- D 1 - I - 0x0028AE 00:A89E: 00 00     .word $0000 ;    04



ch_24_A8A0_00:
- D 1 - I - 0x0028B0 00:A8A0: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x0028B2 00:A8A2: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x0028B4 00:A8A4: E5        .byte con_mcb_E5, $06   ; 
- D 1 - I - 0x0028B6 00:A8A6: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x0028B8 00:A8A8: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x0028BA 00:A8AA: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0028BC 00:A8AC: E3        .byte con_mcb_E3, $13   ; 
- D 1 - I - 0x0028BE 00:A8AE: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0028C0 00:A8B0: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0028C1 00:A8B1: 01        .byte $01   ; 
- D 1 - I - 0x0028C2 00:A8B2: 93        .byte $93   ; 
- D 1 - I - 0x0028C3 00:A8B3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0028C4 00:A8B4: 93        .byte $93   ; 
- D 1 - I - 0x0028C5 00:A8B5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0028C6 00:A8B6: 93        .byte $93   ; 
- D 1 - I - 0x0028C7 00:A8B7: 91        .byte $91   ; 
- D 1 - I - 0x0028C8 00:A8B8: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0028C9 00:A8B9: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0028CB 00:A8BB: 91        .byte $91   ; 
- D 1 - I - 0x0028CC 00:A8BC: 93        .byte $93   ; 
- D 1 - I - 0x0028CD 00:A8BD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0028CE 00:A8BE: 93        .byte $93   ; 
- D 1 - I - 0x0028CF 00:A8BF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0028D0 00:A8C0: 93        .byte $93   ; 
- D 1 - I - 0x0028D1 00:A8C1: 91        .byte $91   ; 
- D 1 - I - 0x0028D2 00:A8C2: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0028D3 00:A8C3: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0028D4 00:A8C4: 91        .byte $91   ; 
- D 1 - I - 0x0028D5 00:A8C5: 93        .byte $93   ; 
- D 1 - I - 0x0028D6 00:A8C6: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0028D7 00:A8C7: 93        .byte $93   ; 
- D 1 - I - 0x0028D8 00:A8C8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0028D9 00:A8C9: 93        .byte $93   ; 
- D 1 - I - 0x0028DA 00:A8CA: 91        .byte $91   ; 
- D 1 - I - 0x0028DB 00:A8CB: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0028DD 00:A8CD: DB        .byte con_mcb_DB, $06   ; 
- D 1 - I - 0x0028DF 00:A8CF: C3        .byte $C3   ; 
- D 1 - I - 0x0028E0 00:A8D0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0028E2 00:A8D2: 5B        .byte $5B   ; 
- D 1 - I - 0x0028E3 00:A8D3: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0028E4 00:A8D4: 5B        .byte $5B   ; 
- D 1 - I - 0x0028E5 00:A8D5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0028E6 00:A8D6: 4B        .byte $4B   ; 
- D 1 - I - 0x0028E7 00:A8D7: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0028E9 00:A8D9: 37        .byte $37   ; 
- D 1 - I - 0x0028EA 00:A8DA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0028EB 00:A8DB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0028EC 00:A8DC: C3        .byte $C3   ; 
- D 1 - I - 0x0028ED 00:A8DD: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0028EF 00:A8DF: 5B        .byte $5B   ; 
- D 1 - I - 0x0028F0 00:A8E0: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0028F1 00:A8E1: 5B        .byte $5B   ; 
- D 1 - I - 0x0028F2 00:A8E2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0028F3 00:A8E3: 4B        .byte $4B   ; 
- D 1 - I - 0x0028F4 00:A8E4: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0028F6 00:A8E6: 37        .byte $37   ; 
- D 1 - I - 0x0028F7 00:A8E7: C3        .byte $C3   ; 
- D 1 - I - 0x0028F8 00:A8E8: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0028FA 00:A8EA: 5B        .byte $5B   ; 
- D 1 - I - 0x0028FB 00:A8EB: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0028FC 00:A8EC: 5B        .byte $5B   ; 
- D 1 - I - 0x0028FD 00:A8ED: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0028FE 00:A8EE: 4B        .byte $4B   ; 
- D 1 - I - 0x0028FF 00:A8EF: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002901 00:A8F1: 37        .byte $37   ; 
- D 1 - I - 0x002902 00:A8F2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002903 00:A8F3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002904 00:A8F4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002906 00:A8F6: CB        .byte $CB   ; 
- D 1 - I - 0x002907 00:A8F7: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002908 00:A8F8: CB        .byte $CB   ; 
- D 1 - I - 0x002909 00:A8F9: CB        .byte $CB   ; 
- D 1 - I - 0x00290A 00:A8FA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00290B 00:A8FB: 3B        .byte $3B   ; 
- D 1 - I - 0x00290C 00:A8FC: 2B        .byte $2B   ; 
- D 1 - I - 0x00290D 00:A8FD: 1B        .byte $1B   ; 
- D 1 - I - 0x00290E 00:A8FE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00290F 00:A8FF: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002911 00:A901: C7        .byte $C7   ; 
- D 1 - I - 0x002912 00:A902: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002913 00:A903: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x002915 00:A905: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002917 00:A907: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002919 00:A909: 01        .byte $01   ; 
- D 1 - I - 0x00291A 00:A90A: 93        .byte $93   ; 
- D 1 - I - 0x00291B 00:A90B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00291C 00:A90C: 93        .byte $93   ; 
- D 1 - I - 0x00291D 00:A90D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00291E 00:A90E: 93        .byte $93   ; 
- D 1 - I - 0x00291F 00:A90F: 91        .byte $91   ; 
- D 1 - I - 0x002920 00:A910: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002921 00:A911: 91        .byte $91   ; 
- D 1 - I - 0x002922 00:A912: 93        .byte $93   ; 
- D 1 - I - 0x002923 00:A913: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002924 00:A914: 93        .byte $93   ; 
- D 1 - I - 0x002925 00:A915: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002926 00:A916: 93        .byte $93   ; 
- D 1 - I - 0x002927 00:A917: 91        .byte $91   ; 
- D 1 - I - 0x002928 00:A918: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002929 00:A919: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x00292B 00:A91B: DB        .byte con_mcb_DB, $06   ; 
- D 1 - I - 0x00292D 00:A91D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00292E 00:A91E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00292F 00:A91F: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002931 00:A921: 35        .byte $35   ; 
- D 1 - I - 0x002932 00:A922: 25        .byte $25   ; 
- D 1 - I - 0x002933 00:A923: 15        .byte $15   ; 
- D 1 - I - 0x002934 00:A924: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002936 00:A926: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002937 00:A927: C1        .byte $C1   ; 
- D 1 - I - 0x002938 00:A928: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x00293A 00:A92A: 03        .byte $03   ; 
- D 1 - I - 0x00293B 00:A92B: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x00293D 00:A92D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00293F 00:A92F: 85        .byte $85   ; 
- D 1 - I - 0x002940 00:A930: 95        .byte $95   ; 
- D 1 - I - 0x002941 00:A931: 85        .byte $85   ; 
- D 1 - I - 0x002942 00:A932: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002944 00:A934: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002946 00:A936: 02        .byte $02   ; 
- D 1 - I - 0x002947 00:A937: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002949 00:A939: 02        .byte $02   ; 
- D 1 - I - 0x00294A 00:A93A: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00294C 00:A93C: 03        .byte $03   ; 
- D 1 - I - 0x00294D 00:A93D: 14        .byte $14   ; 
- D 1 - I - 0x00294E 00:A93E: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002950 00:A940: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002951 00:A941: C0        .byte $C0   ; 
- D 1 - I - 0x002952 00:A942: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002954 00:A944: 02        .byte $02   ; 
- D 1 - I - 0x002955 00:A945: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002957 00:A947: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002958 00:A948: 03        .byte $03   ; 
- D 1 - I - 0x002959 00:A949: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00295A 00:A94A: 80        .byte $80   ; 
- D 1 - I - 0x00295B 00:A94B: 93        .byte $93   ; 
- D 1 - I - 0x00295C 00:A94C: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x00295E 00:A94E: 91        .byte $91   ; 
- D 1 - I - 0x00295F 00:A94F: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x002961 00:A951: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002962 00:A952: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002963 00:A953: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002965 00:A955: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x002967 00:A957: EA        .byte con_mcb_EA   ; 



ch_24_A958_01:
- D 1 - I - 0x002968 00:A958: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x00296A 00:A95A: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x00296C 00:A95C: E5        .byte con_mcb_E5, $08   ; 
- D 1 - I - 0x00296E 00:A95E: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x002970 00:A960: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002972 00:A962: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x002974 00:A964: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002976 00:A966: E3        .byte con_mcb_E3, $15   ; 
- D 1 - I - 0x002978 00:A968: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x00297A 00:A96A: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00297B 00:A96B: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x00297D 00:A96D: 63        .byte $63   ; 
- D 1 - I - 0x00297E 00:A96E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00297F 00:A96F: 33        .byte $33   ; 
- D 1 - I - 0x002980 00:A970: 33        .byte $33   ; 
- D 1 - I - 0x002981 00:A971: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002982 00:A972: 63        .byte $63   ; 
- D 1 - I - 0x002983 00:A973: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002984 00:A974: E8        .byte con_mcb_E8, $FF   ; 
- D 1 - I - 0x002986 00:A976: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002988 00:A978: 61        .byte $61   ; 
- D 1 - I - 0x002989 00:A979: 91        .byte $91   ; 
- D 1 - I - 0x00298A 00:A97A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00298B 00:A97B: 31        .byte $31   ; 
- D 1 - I - 0x00298C 00:A97C: 91        .byte $91   ; 
- D 1 - I - 0x00298D 00:A97D: 31        .byte $31   ; 
- D 1 - I - 0x00298E 00:A97E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00298F 00:A97F: 91        .byte $91   ; 
- D 1 - I - 0x002990 00:A980: 61        .byte $61   ; 
- D 1 - I - 0x002991 00:A981: 91        .byte $91   ; 
- D 1 - I - 0x002992 00:A982: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002993 00:A983: E8        .byte con_mcb_E8, $01   ; 
- D 1 - I - 0x002995 00:A985: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002997 00:A987: 63        .byte $63   ; 
- D 1 - I - 0x002998 00:A988: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002999 00:A989: 33        .byte $33   ; 
- D 1 - I - 0x00299A 00:A98A: 33        .byte $33   ; 
- D 1 - I - 0x00299B 00:A98B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00299C 00:A98C: 63        .byte $63   ; 
- D 1 - I - 0x00299D 00:A98D: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00299E 00:A98E: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0029A0 00:A990: DB        .byte con_mcb_DB, $06   ; 
- D 1 - I - 0x0029A2 00:A992: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029A3 00:A993: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0029A5 00:A995: 95        .byte $95   ; 
- D 1 - I - 0x0029A6 00:A996: 85        .byte $85   ; 
- D 1 - I - 0x0029A7 00:A997: 75        .byte $75   ; 
- D 1 - I - 0x0029A8 00:A998: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0029AA 00:A99A: 61        .byte $61   ; 
- D 1 - I - 0x0029AB 00:A99B: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0029AD 00:A99D: 03        .byte $03   ; 
- D 1 - I - 0x0029AE 00:A99E: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0029B0 00:A9A0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0029B2 00:A9A2: 15        .byte $15   ; 
- D 1 - I - 0x0029B3 00:A9A3: 35        .byte $35   ; 
- D 1 - I - 0x0029B4 00:A9A4: 15        .byte $15   ; 
- D 1 - I - 0x0029B5 00:A9A5: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0029B7 00:A9A7: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0029B9 00:A9A9: 02        .byte $02   ; 
- D 1 - I - 0x0029BA 00:A9AA: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0029BC 00:A9AC: 02        .byte $02   ; 
- D 1 - I - 0x0029BD 00:A9AD: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029BE 00:A9AE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0029C0 00:A9B0: 03        .byte $03   ; 
- D 1 - I - 0x0029C1 00:A9B1: A4        .byte $A4   ; 
- D 1 - I - 0x0029C2 00:A9B2: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0029C4 00:A9B4: 90        .byte $90   ; 
- D 1 - I - 0x0029C5 00:A9B5: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0029C7 00:A9B7: 02        .byte $02   ; 
- D 1 - I - 0x0029C8 00:A9B8: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x0029CA 00:A9BA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029CB 00:A9BB: 03        .byte $03   ; 
- D 1 - I - 0x0029CC 00:A9BC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029CD 00:A9BD: 20        .byte $20   ; 
- D 1 - I - 0x0029CE 00:A9BE: 33        .byte $33   ; 
- D 1 - I - 0x0029CF 00:A9BF: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x0029D1 00:A9C1: 31        .byte $31   ; 
- D 1 - I - 0x0029D2 00:A9C2: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x0029D4 00:A9C4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029D5 00:A9C5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029D6 00:A9C6: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x0029D8 00:A9C8: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0029DA 00:A9CA: EA        .byte con_mcb_EA   ; 



ch_24_A9CB_02:
- D 1 - I - 0x0029DB 00:A9CB: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x0029DD 00:A9CD: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x0029DF 00:A9CF: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0029E1 00:A9D1: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0029E2 00:A9D2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029E3 00:A9D3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029E4 00:A9D4: 6F        .byte $6F   ; 
- D 1 - I - 0x0029E5 00:A9D5: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0029E6 00:A9D6: 6F        .byte $6F   ; 
- D 1 - I - 0x0029E7 00:A9D7: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029E8 00:A9D8: 51        .byte $51   ; 
- D 1 - I - 0x0029E9 00:A9D9: 61        .byte $61   ; 
- D 1 - I - 0x0029EA 00:A9DA: 07        .byte $07   ; 
- D 1 - I - 0x0029EB 00:A9DB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029EC 00:A9DC: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0029EE 00:A9DE: 95        .byte $95   ; 
- D 1 - I - 0x0029EF 00:A9DF: 65        .byte $65   ; 
- D 1 - I - 0x0029F0 00:A9E0: 35        .byte $35   ; 
- D 1 - I - 0x0029F1 00:A9E1: 65        .byte $65   ; 
- D 1 - I - 0x0029F2 00:A9E2: 95        .byte $95   ; 
- D 1 - I - 0x0029F3 00:A9E3: C5        .byte $C5   ; 
- D 1 - I - 0x0029F4 00:A9E4: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x0029F6 00:A9E6: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029F7 00:A9E7: 37        .byte $37   ; 
- D 1 - I - 0x0029F8 00:A9E8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029F9 00:A9E9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0029FA 00:A9EA: 07        .byte $07   ; 
- D 1 - I - 0x0029FB 00:A9EB: 51        .byte $51   ; 
- D 1 - I - 0x0029FC 00:A9EC: 61        .byte $61   ; 
- D 1 - I - 0x0029FD 00:A9ED: 03        .byte $03   ; 
- D 1 - I - 0x0029FE 00:A9EE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0029FF 00:A9EF: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002A01 00:A9F1: 53        .byte $53   ; 
- D 1 - I - 0x002A02 00:A9F2: 64        .byte $64   ; 
- D 1 - I - 0x002A03 00:A9F3: 93        .byte $93   ; 
- D 1 - I - 0x002A04 00:A9F4: C4        .byte $C4   ; 
- D 1 - I - 0x002A05 00:A9F5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002A06 00:A9F6: 33        .byte $33   ; 
- D 1 - I - 0x002A07 00:A9F7: 64        .byte $64   ; 
- D 1 - I - 0x002A08 00:A9F8: 93        .byte $93   ; 
- D 1 - I - 0x002A09 00:A9F9: C4        .byte $C4   ; 
- D 1 - I - 0x002A0A 00:A9FA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002A0B 00:A9FB: 33        .byte $33   ; 
- D 1 - I - 0x002A0C 00:A9FC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002A0D 00:A9FD: C4        .byte $C4   ; 
- D 1 - I - 0x002A0E 00:A9FE: 93        .byte $93   ; 
- D 1 - I - 0x002A0F 00:A9FF: 64        .byte $64   ; 
- D 1 - I - 0x002A10 00:AA00: 33        .byte $33   ; 
- D 1 - I - 0x002A11 00:AA01: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002A12 00:AA02: C4        .byte $C4   ; 
- D 1 - I - 0x002A13 00:AA03: 93        .byte $93   ; 
- D 1 - I - 0x002A14 00:AA04: 64        .byte $64   ; 
- D 1 - I - 0x002A15 00:AA05: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A17 00:AA07: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002A18 00:AA08: 67        .byte $67   ; 
- D 1 - I - 0x002A19 00:AA09: 03        .byte $03   ; 
- D 1 - I - 0x002A1A 00:AA0A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002A1B 00:AA0B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002A1C 00:AA0C: 51        .byte $51   ; 
- D 1 - I - 0x002A1D 00:AA0D: 01        .byte $01   ; 
- D 1 - I - 0x002A1E 00:AA0E: D7        .byte con_mcb_D7, $20   ; 
- D 1 - I - 0x002A20 00:AA10: 51        .byte $51   ; 
- D 1 - I - 0x002A21 00:AA11: 61        .byte $61   ; 
- D 1 - I - 0x002A22 00:AA12: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A23 00:AA13: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002A25 00:AA15: C5        .byte $C5   ; 
- D 1 - I - 0x002A26 00:AA16: B5        .byte $B5   ; 
- D 1 - I - 0x002A27 00:AA17: A5        .byte $A5   ; 
- D 1 - I - 0x002A28 00:AA18: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A2A 00:AA1A: 91        .byte $91   ; 
- D 1 - I - 0x002A2B 00:AA1B: 03        .byte $03   ; 
- D 1 - I - 0x002A2C 00:AA1C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002A2E 00:AA1E: 55        .byte $55   ; 
- D 1 - I - 0x002A2F 00:AA1F: 65        .byte $65   ; 
- D 1 - I - 0x002A30 00:AA20: 55        .byte $55   ; 
- D 1 - I - 0x002A31 00:AA21: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A33 00:AA23: 05        .byte $05   ; 
- D 1 - I - 0x002A34 00:AA24: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002A36 00:AA26: 03        .byte $03   ; 
- D 1 - I - 0x002A37 00:AA27: 74        .byte $74   ; 
- D 1 - I - 0x002A38 00:AA28: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A3A 00:AA2A: 60        .byte $60   ; 
- D 1 - I - 0x002A3B 00:AA2B: 06        .byte $06   ; 
- D 1 - I - 0x002A3C 00:AA2C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002A3D 00:AA2D: 50        .byte $50   ; 
- D 1 - I - 0x002A3E 00:AA2E: 65        .byte $65   ; 
- D 1 - I - 0x002A3F 00:AA2F: EA        .byte con_mcb_EA   ; 



ch_24_AA30_03:
- D 1 - I - 0x002A40 00:AA30: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x002A42 00:AA32: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x002A44 00:AA34: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A46 00:AA36: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002A47 00:AA37: 0F        .byte $0F   ; 
- D 1 - I - 0x002A48 00:AA38: 0F        .byte $0F   ; 
- D 1 - I - 0x002A49 00:AA39: 01        .byte $01   ; 
- D 1 - I - 0x002A4A 00:AA3A: 31        .byte $31   ; 
- D 1 - I - 0x002A4B 00:AA3B: 07        .byte $07   ; 
- D 1 - I - 0x002A4C 00:AA3C: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A4E 00:AA3E: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x002A50 00:AA40: 30        .byte $30   ; 
- D 1 - I - 0x002A51 00:AA41: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A52 00:AA42: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A54 00:AA44: 0B        .byte $0B   ; 
- D 1 - I - 0x002A55 00:AA45: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A57 00:AA47: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x002A59 00:AA49: 30        .byte $30   ; 
- D 1 - I - 0x002A5A 00:AA4A: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A5B 00:AA4B: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A5D 00:AA4D: 0B        .byte $0B   ; 
- D 1 - I - 0x002A5E 00:AA4E: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A60 00:AA50: 00        .byte $00   ; 
- D 1 - I - 0x002A61 00:AA51: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002A63 00:AA53: 30        .byte $30   ; 
- D 1 - I - 0x002A64 00:AA54: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A65 00:AA55: 00        .byte $00   ; 
- D 1 - I - 0x002A66 00:AA56: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A68 00:AA58: 30        .byte $30   ; 
- D 1 - I - 0x002A69 00:AA59: 30        .byte $30   ; 
- D 1 - I - 0x002A6A 00:AA5A: 30        .byte $30   ; 
- D 1 - I - 0x002A6B 00:AA5B: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A6D 00:AA5D: 03        .byte $03   ; 
- D 1 - I - 0x002A6E 00:AA5E: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A70 00:AA60: 00        .byte $00   ; 
- D 1 - I - 0x002A71 00:AA61: 30        .byte $30   ; 
- D 1 - I - 0x002A72 00:AA62: 30        .byte $30   ; 
- D 1 - I - 0x002A73 00:AA63: 30        .byte $30   ; 
- D 1 - I - 0x002A74 00:AA64: 30        .byte $30   ; 
- D 1 - I - 0x002A75 00:AA65: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A77 00:AA67: 31        .byte $31   ; 
- D 1 - I - 0x002A78 00:AA68: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A7A 00:AA6A: 30        .byte $30   ; 
- D 1 - I - 0x002A7B 00:AA6B: 30        .byte $30   ; 
- D 1 - I - 0x002A7C 00:AA6C: 30        .byte $30   ; 
- D 1 - I - 0x002A7D 00:AA6D: 30        .byte $30   ; 
- D 1 - I - 0x002A7E 00:AA6E: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A80 00:AA70: 31        .byte $31   ; 
- D 1 - I - 0x002A81 00:AA71: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002A83 00:AA73: 0F        .byte $0F   ; 
- D 1 - I - 0x002A84 00:AA74: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A85 00:AA75: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x002A87 00:AA77: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002A89 00:AA79: 11        .byte $11   ; 
- D 1 - I - 0x002A8A 00:AA7A: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002A8C 00:AA7C: 31        .byte $31   ; 
- D 1 - I - 0x002A8D 00:AA7D: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A8E 00:AA7E: D7        .byte con_mcb_D7, $0E   ; 
- D 1 - I - 0x002A90 00:AA80: 31        .byte $31   ; 
- D 1 - I - 0x002A91 00:AA81: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002A92 00:AA82: 83        .byte $83   ; 
- D 1 - I - 0x002A93 00:AA83: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002A95 00:AA85: 30        .byte $30   ; 
- D 1 - I - 0x002A96 00:AA86: 30        .byte $30   ; 
- D 1 - I - 0x002A97 00:AA87: 30        .byte $30   ; 
- D 1 - I - 0x002A98 00:AA88: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002A9A 00:AA8A: 31        .byte $31   ; 
- D 1 - I - 0x002A9B 00:AA8B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002A9D 00:AA8D: 33        .byte $33   ; 
- D 1 - I - 0x002A9E 00:AA8E: 34        .byte $34   ; 
- D 1 - I - 0x002A9F 00:AA8F: 33        .byte $33   ; 
- D 1 - I - 0x002AA0 00:AA90: 34        .byte $34   ; 
- D 1 - I - 0x002AA1 00:AA91: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002AA3 00:AA93: 01        .byte $01   ; 
- D 1 - I - 0x002AA4 00:AA94: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002AA6 00:AA96: 30        .byte $30   ; 
- D 1 - I - 0x002AA7 00:AA97: 30        .byte $30   ; 
- D 1 - I - 0x002AA8 00:AA98: 30        .byte $30   ; 
- D 1 - I - 0x002AA9 00:AA99: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002AAB 00:AA9B: 01        .byte $01   ; 
- D 1 - I - 0x002AAC 00:AA9C: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002AAE 00:AA9E: 30        .byte $30   ; 
- D 1 - I - 0x002AAF 00:AA9F: 30        .byte $30   ; 
- D 1 - I - 0x002AB0 00:AAA0: 30        .byte $30   ; 
- D 1 - I - 0x002AB1 00:AAA1: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002AB3 00:AAA3: 31        .byte $31   ; 
- D 1 - I - 0x002AB4 00:AAA4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002AB6 00:AAA6: 03        .byte $03   ; 
- D 1 - I - 0x002AB7 00:AAA7: 34        .byte $34   ; 
- D 1 - I - 0x002AB8 00:AAA8: D4        .byte con_mcb_D4, $09   ; 
- D 1 - I - 0x002ABA 00:AAAA: 30        .byte $30   ; 
- D 1 - I - 0x002ABB 00:AAAB: 06        .byte $06   ; 
- D 1 - I - 0x002ABC 00:AAAC: 84        .byte $84   ; 
- D 1 - I - 0x002ABD 00:AAAD: 01        .byte $01   ; 
- D 1 - I - 0x002ABE 00:AAAE: EA        .byte con_mcb_EA   ; 



_off005_AAAF_25_ost_4:
- D 1 - I - 0x002ABF 00:AAAF: B9 AA     .word ch_25_AAB9_00
- D 1 - I - 0x002AC1 00:AAB1: 7F AB     .word ch_25_AB7F_01
- D 1 - I - 0x002AC3 00:AAB3: E2 AC     .word ch_25_ACE2_02
- D 1 - I - 0x002AC5 00:AAB5: 5E AD     .word ch_25_AD5E_03
- D 1 - I - 0x002AC7 00:AAB7: 00 00     .word $0000 ;    04



ch_25_AAB9_00:
- D 1 - I - 0x002AC9 00:AAB9: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x002ACB 00:AABB: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x002ACD 00:AABD: E5        .byte con_mcb_E5, $0C   ; 
- D 1 - I - 0x002ACF 00:AABF: DB        .byte con_mcb_DB, $07   ; 
- D 1 - I - 0x002AD1 00:AAC1: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002AD3 00:AAC3: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002AD5 00:AAC5: E3        .byte con_mcb_E3, $16   ; 
- D 1 - I - 0x002AD7 00:AAC7: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002AD9 00:AAC9: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002ADA 00:AACA: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002ADC 00:AACC: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002ADD 00:AACD: 45 AB     .word sub_DF_AB45
- D 1 - I - 0x002ADF 00:AACF: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002AE1 00:AAD1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002AE2 00:AAD2: 36        .byte $36   ; 
- D 1 - I - 0x002AE3 00:AAD3: 25        .byte $25   ; 
- D 1 - I - 0x002AE4 00:AAD4: 56        .byte $56   ; 
- D 1 - I - 0x002AE5 00:AAD5: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002AE7 00:AAD7: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002AE9 00:AAD9: 31        .byte $31   ; 
- D 1 - I - 0x002AEA 00:AADA: E8        .byte con_mcb_E8, $FF   ; 
- D 1 - I - 0x002AEC 00:AADC: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002AED 00:AADD: E8        .byte con_mcb_E8, $04   ; 
- D 1 - I - 0x002AEF 00:AADF: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002AF1 00:AAE1: 71        .byte $71   ; 
- D 1 - I - 0x002AF2 00:AAE2: E8        .byte con_mcb_E8, $FF   ; 
- D 1 - I - 0x002AF4 00:AAE4: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002AF5 00:AAE5: E8        .byte con_mcb_E8, $04   ; 
- D 1 - I - 0x002AF7 00:AAE7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002AF8 00:AAE8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002AF9 00:AAE9: 45 AB     .word sub_DF_AB45
- D 1 - I - 0x002AFB 00:AAEB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002AFC 00:AAEC: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002AFE 00:AAEE: 36        .byte $36   ; 
- D 1 - I - 0x002AFF 00:AAEF: 35        .byte $35   ; 
- D 1 - I - 0x002B00 00:AAF0: 86        .byte $86   ; 
- D 1 - I - 0x002B01 00:AAF1: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002B03 00:AAF3: AF        .byte $AF   ; 
- D 1 - I - 0x002B04 00:AAF4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B05 00:AAF5: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002B06 00:AAF6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002B07 00:AAF7: 65 AB     .word sub_DF_AB65
- D 1 - I - 0x002B09 00:AAF9: E8        .byte con_mcb_E8, $FC   ; 
- D 1 - I - 0x002B0B 00:AAFB: 81        .byte $81   ; 
- D 1 - I - 0x002B0C 00:AAFC: E8        .byte con_mcb_E8, $04   ; 
- D 1 - I - 0x002B0E 00:AAFE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B0F 00:AAFF: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002B10 00:AB00: 65 AB     .word sub_DF_AB65
- D 1 - I - 0x002B12 00:AB02: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002B13 00:AB03: 81        .byte $81   ; 
- D 1 - I - 0x002B14 00:AB04: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B15 00:AB05: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x002B17 00:AB07: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002B19 00:AB09: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002B1A 00:AB0A: BD AC     .word sub_DF_ACBD
- D 1 - I - 0x002B1C 00:AB0C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002B1D 00:AB0D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002B1F 00:AB0F: C6        .byte $C6   ; 
- D 1 - I - 0x002B20 00:AB10: C5        .byte $C5   ; 
- D 1 - I - 0x002B21 00:AB11: C6        .byte $C6   ; 
- D 1 - I - 0x002B22 00:AB12: 86        .byte $86   ; 
- D 1 - I - 0x002B23 00:AB13: 55        .byte $55   ; 
- D 1 - I - 0x002B24 00:AB14: 86        .byte $86   ; 
- D 1 - I - 0x002B25 00:AB15: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002B27 00:AB17: 76        .byte $76   ; 
- D 1 - I - 0x002B28 00:AB18: 75        .byte $75   ; 
- D 1 - I - 0x002B29 00:AB19: 76        .byte $76   ; 
- D 1 - I - 0x002B2A 00:AB1A: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002B2C 00:AB1C: C3        .byte $C3   ; 
- D 1 - I - 0x002B2D 00:AB1D: 77        .byte $77   ; 
- D 1 - I - 0x002B2E 00:AB1E: C7        .byte $C7   ; 
- D 1 - I - 0x002B2F 00:AB1F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B30 00:AB20: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002B32 00:AB22: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002B34 00:AB24: 71        .byte $71   ; 
- D 1 - I - 0x002B35 00:AB25: 92        .byte $92   ; 
- D 1 - I - 0x002B36 00:AB26: B1        .byte $B1   ; 
- D 1 - I - 0x002B37 00:AB27: C2        .byte $C2   ; 
- D 1 - I - 0x002B38 00:AB28: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002B39 00:AB29: 11        .byte $11   ; 
- D 1 - I - 0x002B3A 00:AB2A: 42        .byte $42   ; 
- D 1 - I - 0x002B3B 00:AB2B: 51        .byte $51   ; 
- D 1 - I - 0x002B3C 00:AB2C: 72        .byte $72   ; 
- D 1 - I - 0x002B3D 00:AB2D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B3E 00:AB2E: C1        .byte $C1   ; 
- D 1 - I - 0x002B3F 00:AB2F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002B40 00:AB30: 12        .byte $12   ; 
- D 1 - I - 0x002B41 00:AB31: 41        .byte $41   ; 
- D 1 - I - 0x002B42 00:AB32: 52        .byte $52   ; 
- D 1 - I - 0x002B43 00:AB33: 71        .byte $71   ; 
- D 1 - I - 0x002B44 00:AB34: 92        .byte $92   ; 
- D 1 - I - 0x002B45 00:AB35: B1        .byte $B1   ; 
- D 1 - I - 0x002B46 00:AB36: C2        .byte $C2   ; 
- D 1 - I - 0x002B47 00:AB37: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002B49 00:AB39: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002B4B 00:AB3B: 41        .byte $41   ; 
- D 1 - I - 0x002B4C 00:AB3C: 71        .byte $71   ; 
- D 1 - I - 0x002B4D 00:AB3D: 41        .byte $41   ; 
- D 1 - I - 0x002B4E 00:AB3E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B4F 00:AB3F: C1        .byte $C1   ; 
- D 1 - I - 0x002B50 00:AB40: E8        .byte con_mcb_E8, $FF   ; 
- D 1 - I - 0x002B52 00:AB42: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002B54 00:AB44: EA        .byte con_mcb_EA   ; 



sub_DF_AB45:
- D 1 - I - 0x002B55 00:AB45: C1        .byte $C1   ; 
- D 1 - I - 0x002B56 00:AB46: C1        .byte $C1   ; 
- D 1 - I - 0x002B57 00:AB47: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002B58 00:AB48: 41        .byte $41   ; 
- D 1 - I - 0x002B59 00:AB49: 71        .byte $71   ; 
- D 1 - I - 0x002B5A 00:AB4A: A1        .byte $A1   ; 
- D 1 - I - 0x002B5B 00:AB4B: 91        .byte $91   ; 
- D 1 - I - 0x002B5C 00:AB4C: 71        .byte $71   ; 
- D 1 - I - 0x002B5D 00:AB4D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B5E 00:AB4E: C1        .byte $C1   ; 
- D 1 - I - 0x002B5F 00:AB4F: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002B60 00:AB50: C1        .byte $C1   ; 
- D 1 - I - 0x002B61 00:AB51: C1        .byte $C1   ; 
- D 1 - I - 0x002B62 00:AB52: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002B63 00:AB53: 41        .byte $41   ; 
- D 1 - I - 0x002B64 00:AB54: 71        .byte $71   ; 
- D 1 - I - 0x002B65 00:AB55: A1        .byte $A1   ; 
- D 1 - I - 0x002B66 00:AB56: 91        .byte $91   ; 
- D 1 - I - 0x002B67 00:AB57: 73        .byte $73   ; 
- D 1 - I - 0x002B68 00:AB58: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002B69 00:AB59: 81        .byte $81   ; 
- D 1 - I - 0x002B6A 00:AB5A: 81        .byte $81   ; 
- D 1 - I - 0x002B6B 00:AB5B: 71        .byte $71   ; 
- D 1 - I - 0x002B6C 00:AB5C: 81        .byte $81   ; 
- D 1 - I - 0x002B6D 00:AB5D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002B6F 00:AB5F: C6        .byte $C6   ; 
- D 1 - I - 0x002B70 00:AB60: C5        .byte $C5   ; 
- D 1 - I - 0x002B71 00:AB61: C6        .byte $C6   ; 
- D 1 - I - 0x002B72 00:AB62: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002B74 00:AB64: E0        .byte con_mcb_rts   ; 



sub_DF_AB65:
- D 1 - I - 0x002B75 00:AB65: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002B76 00:AB66: 53        .byte $53   ; 
- D 1 - I - 0x002B77 00:AB67: 51        .byte $51   ; 
- D 1 - I - 0x002B78 00:AB68: 51        .byte $51   ; 
- D 1 - I - 0x002B79 00:AB69: 83        .byte $83   ; 
- D 1 - I - 0x002B7A 00:AB6A: 81        .byte $81   ; 
- D 1 - I - 0x002B7B 00:AB6B: 81        .byte $81   ; 
- D 1 - I - 0x002B7C 00:AB6C: A1        .byte $A1   ; 
- D 1 - I - 0x002B7D 00:AB6D: 93        .byte $93   ; 
- D 1 - I - 0x002B7E 00:AB6E: 87        .byte $87   ; 
- D 1 - I - 0x002B7F 00:AB6F: E8        .byte con_mcb_E8, $FC   ; 
- D 1 - I - 0x002B81 00:AB71: 81        .byte $81   ; 
- D 1 - I - 0x002B82 00:AB72: E8        .byte con_mcb_E8, $04   ; 
- D 1 - I - 0x002B84 00:AB74: 53        .byte $53   ; 
- D 1 - I - 0x002B85 00:AB75: 51        .byte $51   ; 
- D 1 - I - 0x002B86 00:AB76: 51        .byte $51   ; 
- D 1 - I - 0x002B87 00:AB77: 83        .byte $83   ; 
- D 1 - I - 0x002B88 00:AB78: 81        .byte $81   ; 
- D 1 - I - 0x002B89 00:AB79: 81        .byte $81   ; 
- D 1 - I - 0x002B8A 00:AB7A: 51        .byte $51   ; 
- D 1 - I - 0x002B8B 00:AB7B: 61        .byte $61   ; 
- D 1 - I - 0x002B8C 00:AB7C: 71        .byte $71   ; 
- D 1 - I - 0x002B8D 00:AB7D: 87        .byte $87   ; 
- D 1 - I - 0x002B8E 00:AB7E: E0        .byte con_mcb_rts   ; 



ch_25_AB7F_01:
- D 1 - I - 0x002B8F 00:AB7F: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x002B91 00:AB81: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x002B93 00:AB83: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x002B95 00:AB85: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x002B97 00:AB87: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002B99 00:AB89: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x002B9B 00:AB8B: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002B9D 00:AB8D: E3        .byte con_mcb_E3, $13   ; 
- D 1 - I - 0x002B9F 00:AB8F: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002BA1 00:AB91: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002BA2 00:AB92: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002BA3 00:AB93: 80 AC     .word sub_DF_AC80
- D 1 - I - 0x002BA5 00:AB95: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BA6 00:AB96: 53        .byte $53   ; 
- D 1 - I - 0x002BA7 00:AB97: 33        .byte $33   ; 
- D 1 - I - 0x002BA8 00:AB98: 77        .byte $77   ; 
- D 1 - I - 0x002BA9 00:AB99: C1        .byte $C1   ; 
- D 1 - I - 0x002BAA 00:AB9A: C1        .byte $C1   ; 
- D 1 - I - 0x002BAB 00:AB9B: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002BAD 00:AB9D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002BAF 00:AB9F: 31        .byte $31   ; 
- D 1 - I - 0x002BB0 00:ABA0: 42        .byte $42   ; 
- D 1 - I - 0x002BB1 00:ABA1: 51        .byte $51   ; 
- D 1 - I - 0x002BB2 00:ABA2: 62        .byte $62   ; 
- D 1 - I - 0x002BB3 00:ABA3: 71        .byte $71   ; 
- D 1 - I - 0x002BB4 00:ABA4: 82        .byte $82   ; 
- D 1 - I - 0x002BB5 00:ABA5: 91        .byte $91   ; 
- D 1 - I - 0x002BB6 00:ABA6: A2        .byte $A2   ; 
- D 1 - I - 0x002BB7 00:ABA7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002BB8 00:ABA8: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002BBA 00:ABAA: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002BBC 00:ABAC: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002BBD 00:ABAD: 80 AC     .word sub_DF_AC80
- D 1 - I - 0x002BBF 00:ABAF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BC0 00:ABB0: 33        .byte $33   ; 
- D 1 - I - 0x002BC1 00:ABB1: 53        .byte $53   ; 
- D 1 - I - 0x002BC2 00:ABB2: 33        .byte $33   ; 
- D 1 - I - 0x002BC3 00:ABB3: 21        .byte $21   ; 
- D 1 - I - 0x002BC4 00:ABB4: 71        .byte $71   ; 
- D 1 - I - 0x002BC5 00:ABB5: C1        .byte $C1   ; 
- D 1 - I - 0x002BC6 00:ABB6: E8        .byte con_mcb_E8, $03   ; 
- D 1 - I - 0x002BC8 00:ABB8: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002BCA 00:ABBA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002BCB 00:ABBB: C1        .byte $C1   ; 
- D 1 - I - 0x002BCC 00:ABBC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BCD 00:ABBD: 12        .byte $12   ; 
- D 1 - I - 0x002BCE 00:ABBE: 21        .byte $21   ; 
- D 1 - I - 0x002BCF 00:ABBF: 32        .byte $32   ; 
- D 1 - I - 0x002BD0 00:ABC0: 41        .byte $41   ; 
- D 1 - I - 0x002BD1 00:ABC1: 52        .byte $52   ; 
- D 1 - I - 0x002BD2 00:ABC2: 61        .byte $61   ; 
- D 1 - I - 0x002BD3 00:ABC3: 72        .byte $72   ; 
- D 1 - I - 0x002BD4 00:ABC4: 81        .byte $81   ; 
- D 1 - I - 0x002BD5 00:ABC5: 92        .byte $92   ; 
- D 1 - I - 0x002BD6 00:ABC6: A1        .byte $A1   ; 
- D 1 - I - 0x002BD7 00:ABC7: B2        .byte $B2   ; 
- D 1 - I - 0x002BD8 00:ABC8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002BD9 00:ABC9: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002BDB 00:ABCB: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x002BDD 00:ABCD: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002BDE 00:ABCE: 98 AC     .word sub_DF_AC98
- D 1 - I - 0x002BE0 00:ABD0: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BE1 00:ABD1: 31        .byte $31   ; 
- D 1 - I - 0x002BE2 00:ABD2: 31        .byte $31   ; 
- D 1 - I - 0x002BE3 00:ABD3: 71        .byte $71   ; 
- D 1 - I - 0x002BE4 00:ABD4: 71        .byte $71   ; 
- D 1 - I - 0x002BE5 00:ABD5: C1        .byte $C1   ; 
- D 1 - I - 0x002BE6 00:ABD6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002BE7 00:ABD7: A1        .byte $A1   ; 
- D 1 - I - 0x002BE8 00:ABD8: C1        .byte $C1   ; 
- D 1 - I - 0x002BE9 00:ABD9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BEA 00:ABDA: 31        .byte $31   ; 
- D 1 - I - 0x002BEB 00:ABDB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002BEC 00:ABDC: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002BED 00:ABDD: 98 AC     .word sub_DF_AC98
- D 1 - I - 0x002BEF 00:ABDF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BF0 00:ABE0: 71        .byte $71   ; 
- D 1 - I - 0x002BF1 00:ABE1: 31        .byte $31   ; 
- D 1 - I - 0x002BF2 00:ABE2: 51        .byte $51   ; 
- D 1 - I - 0x002BF3 00:ABE3: 71        .byte $71   ; 
- D 1 - I - 0x002BF4 00:ABE4: 31        .byte $31   ; 
- D 1 - I - 0x002BF5 00:ABE5: 51        .byte $51   ; 
- D 1 - I - 0x002BF6 00:ABE6: 71        .byte $71   ; 
- D 1 - I - 0x002BF7 00:ABE7: 31        .byte $31   ; 
- D 1 - I - 0x002BF8 00:ABE8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002BF9 00:ABE9: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002BFA 00:ABEA: B2 AC     .word sub_DF_ACB2
- D 1 - I - 0x002BFC 00:ABEC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002BFD 00:ABED: 51        .byte $51   ; 
- D 1 - I - 0x002BFE 00:ABEE: 61        .byte $61   ; 
- D 1 - I - 0x002BFF 00:ABEF: 71        .byte $71   ; 
- D 1 - I - 0x002C00 00:ABF0: 83        .byte $83   ; 
- D 1 - I - 0x002C01 00:ABF1: C1        .byte $C1   ; 
- D 1 - I - 0x002C02 00:ABF2: 51        .byte $51   ; 
- D 1 - I - 0x002C03 00:ABF3: 71        .byte $71   ; 
- D 1 - I - 0x002C04 00:ABF4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C05 00:ABF5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002C06 00:ABF6: B2 AC     .word sub_DF_ACB2
- D 1 - I - 0x002C08 00:ABF8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C09 00:ABF9: 51        .byte $51   ; 
- D 1 - I - 0x002C0A 00:ABFA: 61        .byte $61   ; 
- D 1 - I - 0x002C0B 00:ABFB: 71        .byte $71   ; 
- D 1 - I - 0x002C0C 00:ABFC: 81        .byte $81   ; 
- D 1 - I - 0x002C0D 00:ABFD: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x002C0F 00:ABFF: D4        .byte con_mcb_D4, $02   ; 
- D 1 - I - 0x002C11 00:AC01: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C12 00:AC02: 10        .byte $10   ; 
- D 1 - I - 0x002C13 00:AC03: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C14 00:AC04: C0        .byte $C0   ; 
- D 1 - I - 0x002C15 00:AC05: B0        .byte $B0   ; 
- D 1 - I - 0x002C16 00:AC06: A0        .byte $A0   ; 
- D 1 - I - 0x002C17 00:AC07: 90        .byte $90   ; 
- D 1 - I - 0x002C18 00:AC08: 80        .byte $80   ; 
- D 1 - I - 0x002C19 00:AC09: 70        .byte $70   ; 
- D 1 - I - 0x002C1A 00:AC0A: 60        .byte $60   ; 
- D 1 - I - 0x002C1B 00:AC0B: 50        .byte $50   ; 
- D 1 - I - 0x002C1C 00:AC0C: 40        .byte $40   ; 
- D 1 - I - 0x002C1D 00:AC0D: 30        .byte $30   ; 
- D 1 - I - 0x002C1E 00:AC0E: 20        .byte $20   ; 
- D 1 - I - 0x002C1F 00:AC0F: 10        .byte $10   ; 
- D 1 - I - 0x002C20 00:AC10: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C21 00:AC11: C0        .byte $C0   ; 
- D 1 - I - 0x002C22 00:AC12: B0        .byte $B0   ; 
- D 1 - I - 0x002C23 00:AC13: A0        .byte $A0   ; 
- D 1 - I - 0x002C24 00:AC14: 90        .byte $90   ; 
- D 1 - I - 0x002C25 00:AC15: 80        .byte $80   ; 
- D 1 - I - 0x002C26 00:AC16: 70        .byte $70   ; 
- D 1 - I - 0x002C27 00:AC17: 60        .byte $60   ; 
- D 1 - I - 0x002C28 00:AC18: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002C2A 00:AC1A: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x002C2C 00:AC1C: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002C2D 00:AC1D: B2 AC     .word sub_DF_ACB2
- D 1 - I - 0x002C2F 00:AC1F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C30 00:AC20: 51        .byte $51   ; 
- D 1 - I - 0x002C31 00:AC21: 61        .byte $61   ; 
- D 1 - I - 0x002C32 00:AC22: 71        .byte $71   ; 
- D 1 - I - 0x002C33 00:AC23: 83        .byte $83   ; 
- D 1 - I - 0x002C34 00:AC24: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C35 00:AC25: 11        .byte $11   ; 
- D 1 - I - 0x002C36 00:AC26: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C37 00:AC27: C1        .byte $C1   ; 
- D 1 - I - 0x002C38 00:AC28: C1        .byte $C1   ; 
- D 1 - I - 0x002C39 00:AC29: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C3A 00:AC2A: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002C3B 00:AC2B: B2 AC     .word sub_DF_ACB2
- D 1 - I - 0x002C3D 00:AC2D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C3E 00:AC2E: 51        .byte $51   ; 
- D 1 - I - 0x002C3F 00:AC2F: 71        .byte $71   ; 
- D 1 - I - 0x002C40 00:AC30: 71        .byte $71   ; 
- D 1 - I - 0x002C41 00:AC31: 81        .byte $81   ; 
- D 1 - I - 0x002C42 00:AC32: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x002C44 00:AC34: D4        .byte con_mcb_D4, $02   ; 
- D 1 - I - 0x002C46 00:AC36: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C47 00:AC37: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C48 00:AC38: C0        .byte $C0   ; 
- D 1 - I - 0x002C49 00:AC39: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C4A 00:AC3A: 10        .byte $10   ; 
- D 1 - I - 0x002C4B 00:AC3B: 20        .byte $20   ; 
- D 1 - I - 0x002C4C 00:AC3C: 30        .byte $30   ; 
- D 1 - I - 0x002C4D 00:AC3D: 40        .byte $40   ; 
- D 1 - I - 0x002C4E 00:AC3E: 50        .byte $50   ; 
- D 1 - I - 0x002C4F 00:AC3F: 60        .byte $60   ; 
- D 1 - I - 0x002C50 00:AC40: 70        .byte $70   ; 
- D 1 - I - 0x002C51 00:AC41: 80        .byte $80   ; 
- D 1 - I - 0x002C52 00:AC42: 90        .byte $90   ; 
- D 1 - I - 0x002C53 00:AC43: A0        .byte $A0   ; 
- D 1 - I - 0x002C54 00:AC44: B0        .byte $B0   ; 
- D 1 - I - 0x002C55 00:AC45: C0        .byte $C0   ; 
- D 1 - I - 0x002C56 00:AC46: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C57 00:AC47: 10        .byte $10   ; 
- D 1 - I - 0x002C58 00:AC48: 20        .byte $20   ; 
- D 1 - I - 0x002C59 00:AC49: 30        .byte $30   ; 
- D 1 - I - 0x002C5A 00:AC4A: 40        .byte $40   ; 
- D 1 - I - 0x002C5B 00:AC4B: 50        .byte $50   ; 
- D 1 - I - 0x002C5C 00:AC4C: 60        .byte $60   ; 
- D 1 - I - 0x002C5D 00:AC4D: 70        .byte $70   ; 
- D 1 - I - 0x002C5E 00:AC4E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C5F 00:AC4F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C60 00:AC50: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x002C62 00:AC52: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002C63 00:AC53: BD AC     .word sub_DF_ACBD
- D 1 - I - 0x002C65 00:AC55: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C66 00:AC56: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002C68 00:AC58: C6        .byte $C6   ; 
- D 1 - I - 0x002C69 00:AC59: C5        .byte $C5   ; 
- D 1 - I - 0x002C6A 00:AC5A: C6        .byte $C6   ; 
- D 1 - I - 0x002C6B 00:AC5B: 86        .byte $86   ; 
- D 1 - I - 0x002C6C 00:AC5C: 55        .byte $55   ; 
- D 1 - I - 0x002C6D 00:AC5D: 86        .byte $86   ; 
- D 1 - I - 0x002C6E 00:AC5E: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002C70 00:AC60: C7        .byte $C7   ; 
- D 1 - I - 0x002C71 00:AC61: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C72 00:AC62: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002C73 00:AC63: BD AC     .word sub_DF_ACBD
- D 1 - I - 0x002C75 00:AC65: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002C77 00:AC67: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C78 00:AC68: C6        .byte $C6   ; 
- D 1 - I - 0x002C79 00:AC69: C5        .byte $C5   ; 
- D 1 - I - 0x002C7A 00:AC6A: C6        .byte $C6   ; 
- D 1 - I - 0x002C7B 00:AC6B: 86        .byte $86   ; 
- D 1 - I - 0x002C7C 00:AC6C: 55        .byte $55   ; 
- D 1 - I - 0x002C7D 00:AC6D: 86        .byte $86   ; 
- D 1 - I - 0x002C7E 00:AC6E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002C80 00:AC70: C1        .byte $C1   ; 
- D 1 - I - 0x002C81 00:AC71: B2        .byte $B2   ; 
- D 1 - I - 0x002C82 00:AC72: A1        .byte $A1   ; 
- D 1 - I - 0x002C83 00:AC73: 92        .byte $92   ; 
- D 1 - I - 0x002C84 00:AC74: 81        .byte $81   ; 
- D 1 - I - 0x002C85 00:AC75: 72        .byte $72   ; 
- D 1 - I - 0x002C86 00:AC76: 61        .byte $61   ; 
- D 1 - I - 0x002C87 00:AC77: 42        .byte $42   ; 
- D 1 - I - 0x002C88 00:AC78: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002C89 00:AC79: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002C8B 00:AC7B: C1        .byte $C1   ; 
- D 1 - I - 0x002C8C 00:AC7C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C8D 00:AC7D: 71        .byte $71   ; 
- D 1 - I - 0x002C8E 00:AC7E: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002C8F 00:AC7F: EA        .byte con_mcb_EA   ; 



sub_DF_AC80:
- D 1 - I - 0x002C90 00:AC80: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002C91 00:AC81: 77        .byte $77   ; 
- D 1 - I - 0x002C92 00:AC82: 71        .byte $71   ; 
- D 1 - I - 0x002C93 00:AC83: C1        .byte $C1   ; 
- D 1 - I - 0x002C94 00:AC84: E8        .byte con_mcb_E8, $FC   ; 
- D 1 - I - 0x002C96 00:AC86: C1        .byte $C1   ; 
- D 1 - I - 0x002C97 00:AC87: E8        .byte con_mcb_E8, $04   ; 
- D 1 - I - 0x002C99 00:AC89: 01        .byte $01   ; 
- D 1 - I - 0x002C9A 00:AC8A: C1        .byte $C1   ; 
- D 1 - I - 0x002C9B 00:AC8B: C5        .byte $C5   ; 
- D 1 - I - 0x002C9C 00:AC8C: C1        .byte $C1   ; 
- D 1 - I - 0x002C9D 00:AC8D: 71        .byte $71   ; 
- D 1 - I - 0x002C9E 00:AC8E: E8        .byte con_mcb_E8, $FC   ; 
- D 1 - I - 0x002CA0 00:AC90: 71        .byte $71   ; 
- D 1 - I - 0x002CA1 00:AC91: E8        .byte con_mcb_E8, $04   ; 
- D 1 - I - 0x002CA3 00:AC93: 01        .byte $01   ; 
- D 1 - I - 0x002CA4 00:AC94: 83        .byte $83   ; 
- D 1 - I - 0x002CA5 00:AC95: 73        .byte $73   ; 
- D 1 - I - 0x002CA6 00:AC96: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CA7 00:AC97: E0        .byte con_mcb_rts   ; 



sub_DF_AC98:
- D 1 - I - 0x002CA8 00:AC98: E8        .byte con_mcb_E8, $FF   ; 
- D 1 - I - 0x002CAA 00:AC9A: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002CAC 00:AC9C: C1        .byte $C1   ; 
- D 1 - I - 0x002CAD 00:AC9D: C1        .byte $C1   ; 
- D 1 - I - 0x002CAE 00:AC9E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002CAF 00:AC9F: 41        .byte $41   ; 
- D 1 - I - 0x002CB0 00:ACA0: 71        .byte $71   ; 
- D 1 - I - 0x002CB1 00:ACA1: A1        .byte $A1   ; 
- D 1 - I - 0x002CB2 00:ACA2: A1        .byte $A1   ; 
- D 1 - I - 0x002CB3 00:ACA3: 91        .byte $91   ; 
- D 1 - I - 0x002CB4 00:ACA4: 71        .byte $71   ; 
- D 1 - I - 0x002CB5 00:ACA5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CB6 00:ACA6: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002CB7 00:ACA7: E8        .byte con_mcb_E8, $01   ; 
- D 1 - I - 0x002CB9 00:ACA9: 81        .byte $81   ; 
- D 1 - I - 0x002CBA 00:ACAA: 81        .byte $81   ; 
- D 1 - I - 0x002CBB 00:ACAB: C1        .byte $C1   ; 
- D 1 - I - 0x002CBC 00:ACAC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002CBD 00:ACAD: 31        .byte $31   ; 
- D 1 - I - 0x002CBE 00:ACAE: 63        .byte $63   ; 
- D 1 - I - 0x002CBF 00:ACAF: 53        .byte $53   ; 
- D 1 - I - 0x002CC0 00:ACB0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CC1 00:ACB1: E0        .byte con_mcb_rts   ; 



sub_DF_ACB2:
- D 1 - I - 0x002CC2 00:ACB2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002CC3 00:ACB3: 51        .byte $51   ; 
- D 1 - I - 0x002CC4 00:ACB4: 53        .byte $53   ; 
- D 1 - I - 0x002CC5 00:ACB5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CC6 00:ACB6: C1        .byte $C1   ; 
- D 1 - I - 0x002CC7 00:ACB7: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002CC8 00:ACB8: 81        .byte $81   ; 
- D 1 - I - 0x002CC9 00:ACB9: 83        .byte $83   ; 
- D 1 - I - 0x002CCA 00:ACBA: 31        .byte $31   ; 
- D 1 - I - 0x002CCB 00:ACBB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CCC 00:ACBC: E0        .byte con_mcb_rts   ; 



sub_DF_ACBD:
- D 1 - I - 0x002CCD 00:ACBD: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x002CCF 00:ACBF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002CD0 00:ACC0: C6        .byte $C6   ; 
- D 1 - I - 0x002CD1 00:ACC1: C5        .byte $C5   ; 
- D 1 - I - 0x002CD2 00:ACC2: C6        .byte $C6   ; 
- D 1 - I - 0x002CD3 00:ACC3: 86        .byte $86   ; 
- D 1 - I - 0x002CD4 00:ACC4: 55        .byte $55   ; 
- D 1 - I - 0x002CD5 00:ACC5: 86        .byte $86   ; 
- D 1 - I - 0x002CD6 00:ACC6: D4        .byte con_mcb_D4, $02   ; 
- D 1 - I - 0x002CD8 00:ACC8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002CD9 00:ACC9: 10        .byte $10   ; 
- D 1 - I - 0x002CDA 00:ACCA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CDB 00:ACCB: C0        .byte $C0   ; 
- D 1 - I - 0x002CDC 00:ACCC: B0        .byte $B0   ; 
- D 1 - I - 0x002CDD 00:ACCD: A0        .byte $A0   ; 
- D 1 - I - 0x002CDE 00:ACCE: 90        .byte $90   ; 
- D 1 - I - 0x002CDF 00:ACCF: 80        .byte $80   ; 
- D 1 - I - 0x002CE0 00:ACD0: 70        .byte $70   ; 
- D 1 - I - 0x002CE1 00:ACD1: 60        .byte $60   ; 
- D 1 - I - 0x002CE2 00:ACD2: 50        .byte $50   ; 
- D 1 - I - 0x002CE3 00:ACD3: 40        .byte $40   ; 
- D 1 - I - 0x002CE4 00:ACD4: 30        .byte $30   ; 
- D 1 - I - 0x002CE5 00:ACD5: 20        .byte $20   ; 
- D 1 - I - 0x002CE6 00:ACD6: 10        .byte $10   ; 
- D 1 - I - 0x002CE7 00:ACD7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002CE8 00:ACD8: C0        .byte $C0   ; 
- D 1 - I - 0x002CE9 00:ACD9: B0        .byte $B0   ; 
- D 1 - I - 0x002CEA 00:ACDA: A0        .byte $A0   ; 
- D 1 - I - 0x002CEB 00:ACDB: 90        .byte $90   ; 
- D 1 - I - 0x002CEC 00:ACDC: 80        .byte $80   ; 
- D 1 - I - 0x002CED 00:ACDD: 70        .byte $70   ; 
- D 1 - I - 0x002CEE 00:ACDE: 60        .byte $60   ; 
- D 1 - I - 0x002CEF 00:ACDF: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002CF1 00:ACE1: E0        .byte con_mcb_rts   ; 



ch_25_ACE2_02:
- D 1 - I - 0x002CF2 00:ACE2: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x002CF4 00:ACE4: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002CF6 00:ACE6: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002CF8 00:ACE8: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002CF9 00:ACE9: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002CFB 00:ACEB: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002CFC 00:ACEC: 44 AD     .word sub_DF_AD44
- D 1 - I - 0x002CFE 00:ACEE: 31        .byte $31   ; 
- D 1 - I - 0x002CFF 00:ACEF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D00 00:ACF0: A1        .byte $A1   ; 
- D 1 - I - 0x002D01 00:ACF1: C1        .byte $C1   ; 
- D 1 - I - 0x002D02 00:ACF2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D03 00:ACF3: 11        .byte $11   ; 
- D 1 - I - 0x002D04 00:ACF4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D05 00:ACF5: A3        .byte $A3   ; 
- D 1 - I - 0x002D06 00:ACF6: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D07 00:ACF7: 31        .byte $31   ; 
- D 1 - I - 0x002D08 00:ACF8: 11        .byte $11   ; 
- D 1 - I - 0x002D09 00:ACF9: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002D0A 00:ACFA: 44 AD     .word sub_DF_AD44
- D 1 - I - 0x002D0C 00:ACFC: 31        .byte $31   ; 
- D 1 - I - 0x002D0D 00:ACFD: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D0E 00:ACFE: A1        .byte $A1   ; 
- D 1 - I - 0x002D0F 00:ACFF: C1        .byte $C1   ; 
- D 1 - I - 0x002D10 00:AD00: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D11 00:AD01: 11        .byte $11   ; 
- D 1 - I - 0x002D12 00:AD02: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D13 00:AD03: A3        .byte $A3   ; 
- D 1 - I - 0x002D14 00:AD04: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D15 00:AD05: 31        .byte $31   ; 
- D 1 - I - 0x002D16 00:AD06: 31        .byte $31   ; 
- D 1 - I - 0x002D17 00:AD07: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D18 00:AD08: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002D1A 00:AD0A: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002D1C 00:AD0C: 51        .byte $51   ; 
- D 1 - I - 0x002D1D 00:AD0D: 91        .byte $91   ; 
- D 1 - I - 0x002D1E 00:AD0E: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D1F 00:AD0F: 81        .byte $81   ; 
- D 1 - I - 0x002D20 00:AD10: 71        .byte $71   ; 
- D 1 - I - 0x002D21 00:AD11: 61        .byte $61   ; 
- D 1 - I - 0x002D22 00:AD12: 53        .byte $53   ; 
- D 1 - I - 0x002D23 00:AD13: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D24 00:AD14: A1        .byte $A1   ; 
- D 1 - I - 0x002D25 00:AD15: B1        .byte $B1   ; 
- D 1 - I - 0x002D26 00:AD16: C1        .byte $C1   ; 
- D 1 - I - 0x002D27 00:AD17: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D28 00:AD18: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002D2A 00:AD1A: 51        .byte $51   ; 
- D 1 - I - 0x002D2B 00:AD1B: 91        .byte $91   ; 
- D 1 - I - 0x002D2C 00:AD1C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D2D 00:AD1D: 61        .byte $61   ; 
- D 1 - I - 0x002D2E 00:AD1E: 61        .byte $61   ; 
- D 1 - I - 0x002D2F 00:AD1F: 61        .byte $61   ; 
- D 1 - I - 0x002D30 00:AD20: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D31 00:AD21: A1        .byte $A1   ; 
- D 1 - I - 0x002D32 00:AD22: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D33 00:AD23: 31        .byte $31   ; 
- D 1 - I - 0x002D34 00:AD24: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D35 00:AD25: A1        .byte $A1   ; 
- D 1 - I - 0x002D36 00:AD26: B1        .byte $B1   ; 
- D 1 - I - 0x002D37 00:AD27: C1        .byte $C1   ; 
- D 1 - I - 0x002D38 00:AD28: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D39 00:AD29: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D3A 00:AD2A: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002D3C 00:AD2C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D3D 00:AD2D: C1        .byte $C1   ; 
- D 1 - I - 0x002D3E 00:AD2E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D3F 00:AD2F: 41        .byte $41   ; 
- D 1 - I - 0x002D40 00:AD30: 71        .byte $71   ; 
- D 1 - I - 0x002D41 00:AD31: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D42 00:AD32: C1        .byte $C1   ; 
- D 1 - I - 0x002D43 00:AD33: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D44 00:AD34: 41        .byte $41   ; 
- D 1 - I - 0x002D45 00:AD35: 71        .byte $71   ; 
- D 1 - I - 0x002D46 00:AD36: 41        .byte $41   ; 
- D 1 - I - 0x002D47 00:AD37: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D48 00:AD38: C1        .byte $C1   ; 
- D 1 - I - 0x002D49 00:AD39: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D4A 00:AD3A: 71        .byte $71   ; 
- D 1 - I - 0x002D4B 00:AD3B: 71        .byte $71   ; 
- D 1 - I - 0x002D4C 00:AD3C: 51        .byte $51   ; 
- D 1 - I - 0x002D4D 00:AD3D: 51        .byte $51   ; 
- D 1 - I - 0x002D4E 00:AD3E: 41        .byte $41   ; 
- D 1 - I - 0x002D4F 00:AD3F: 41        .byte $41   ; 
- D 1 - I - 0x002D50 00:AD40: 21        .byte $21   ; 
- D 1 - I - 0x002D51 00:AD41: 21        .byte $21   ; 
- D 1 - I - 0x002D52 00:AD42: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D53 00:AD43: EA        .byte con_mcb_EA   ; 



sub_DF_AD44:
- D 1 - I - 0x002D54 00:AD44: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D55 00:AD45: C3        .byte $C3   ; 
- D 1 - I - 0x002D56 00:AD46: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D57 00:AD47: A3        .byte $A3   ; 
- D 1 - I - 0x002D58 00:AD48: 21        .byte $21   ; 
- D 1 - I - 0x002D59 00:AD49: 13        .byte $13   ; 
- D 1 - I - 0x002D5A 00:AD4A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D5B 00:AD4B: C1        .byte $C1   ; 
- D 1 - I - 0x002D5C 00:AD4C: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x002D5D 00:AD4D: C1        .byte $C1   ; 
- D 1 - I - 0x002D5E 00:AD4E: C1        .byte $C1   ; 
- D 1 - I - 0x002D5F 00:AD4F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D60 00:AD50: A3        .byte $A3   ; 
- D 1 - I - 0x002D61 00:AD51: 21        .byte $21   ; 
- D 1 - I - 0x002D62 00:AD52: 13        .byte $13   ; 
- D 1 - I - 0x002D63 00:AD53: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002D64 00:AD54: C1        .byte $C1   ; 
- D 1 - I - 0x002D65 00:AD55: D7        .byte con_mcb_D7, $05   ; 
- D 1 - I - 0x002D67 00:AD57: 81        .byte $81   ; 
- D 1 - I - 0x002D68 00:AD58: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D69 00:AD59: A1        .byte $A1   ; 
- D 1 - I - 0x002D6A 00:AD5A: C1        .byte $C1   ; 
- D 1 - I - 0x002D6B 00:AD5B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002D6C 00:AD5C: 11        .byte $11   ; 
- D 1 - I - 0x002D6D 00:AD5D: E0        .byte con_mcb_rts   ; 



ch_25_AD5E_03:
- D 1 - I - 0x002D6E 00:AD5E: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x002D70 00:AD60: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x002D72 00:AD62: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x002D74 00:AD64: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002D75 00:AD65: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002D77 00:AD67: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002D78 00:AD68: 80 AD     .word sub_DF_AD80
- D 1 - I - 0x002D7A 00:AD6A: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002D7B 00:AD6B: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002D7C 00:AD6C: 99 AD     .word sub_DF_AD99
- D 1 - I - 0x002D7E 00:AD6E: 13        .byte $13   ; 
- D 1 - I - 0x002D7F 00:AD6F: 33        .byte $33   ; 
- D 1 - I - 0x002D80 00:AD70: 11        .byte $11   ; 
- D 1 - I - 0x002D81 00:AD71: 11        .byte $11   ; 
- D 1 - I - 0x002D82 00:AD72: 83        .byte $83   ; 
- D 1 - I - 0x002D83 00:AD73: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002D84 00:AD74: 99 AD     .word sub_DF_AD99
- D 1 - I - 0x002D86 00:AD76: 13        .byte $13   ; 
- D 1 - I - 0x002D87 00:AD77: 33        .byte $33   ; 
- D 1 - I - 0x002D88 00:AD78: 11        .byte $11   ; 
- D 1 - I - 0x002D89 00:AD79: 11        .byte $11   ; 
- D 1 - I - 0x002D8A 00:AD7A: 81        .byte $81   ; 
- D 1 - I - 0x002D8B 00:AD7B: 81        .byte $81   ; 
- D 1 - I - 0x002D8C 00:AD7C: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002D8D 00:AD7D: 80 AD     .word sub_DF_AD80
- D 1 - I - 0x002D8F 00:AD7F: EA        .byte con_mcb_EA   ; 



sub_DF_AD80:
- D 1 - I - 0x002D90 00:AD80: 13        .byte $13   ; 
- D 1 - I - 0x002D91 00:AD81: 33        .byte $33   ; 
- D 1 - I - 0x002D92 00:AD82: 11        .byte $11   ; 
- D 1 - I - 0x002D93 00:AD83: 11        .byte $11   ; 
- D 1 - I - 0x002D94 00:AD84: 33        .byte $33   ; 
- D 1 - I - 0x002D95 00:AD85: 13        .byte $13   ; 
- D 1 - I - 0x002D96 00:AD86: 33        .byte $33   ; 
- D 1 - I - 0x002D97 00:AD87: 11        .byte $11   ; 
- D 1 - I - 0x002D98 00:AD88: 11        .byte $11   ; 
- D 1 - I - 0x002D99 00:AD89: 31        .byte $31   ; 
- D 1 - I - 0x002D9A 00:AD8A: 31        .byte $31   ; 
- D 1 - I - 0x002D9B 00:AD8B: 13        .byte $13   ; 
- D 1 - I - 0x002D9C 00:AD8C: 33        .byte $33   ; 
- D 1 - I - 0x002D9D 00:AD8D: 11        .byte $11   ; 
- D 1 - I - 0x002D9E 00:AD8E: 11        .byte $11   ; 
- D 1 - I - 0x002D9F 00:AD8F: 33        .byte $33   ; 
- D 1 - I - 0x002DA0 00:AD90: 13        .byte $13   ; 
- D 1 - I - 0x002DA1 00:AD91: 33        .byte $33   ; 
- D 1 - I - 0x002DA2 00:AD92: 11        .byte $11   ; 
- D 1 - I - 0x002DA3 00:AD93: 31        .byte $31   ; 
- D 1 - I - 0x002DA4 00:AD94: 30        .byte $30   ; 
- D 1 - I - 0x002DA5 00:AD95: 30        .byte $30   ; 
- D 1 - I - 0x002DA6 00:AD96: 30        .byte $30   ; 
- D 1 - I - 0x002DA7 00:AD97: 30        .byte $30   ; 
- D 1 - I - 0x002DA8 00:AD98: E0        .byte con_mcb_rts   ; 



sub_DF_AD99:
- D 1 - I - 0x002DA9 00:AD99: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002DAB 00:AD9B: 11        .byte $11   ; 
- D 1 - I - 0x002DAC 00:AD9C: 31        .byte $31   ; 
- D 1 - I - 0x002DAD 00:AD9D: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002DAE 00:AD9E: 13        .byte $13   ; 
- D 1 - I - 0x002DAF 00:AD9F: 33        .byte $33   ; 
- D 1 - I - 0x002DB0 00:ADA0: 11        .byte $11   ; 
- D 1 - I - 0x002DB1 00:ADA1: 11        .byte $11   ; 
- D 1 - I - 0x002DB2 00:ADA2: 33        .byte $33   ; 
- D 1 - I - 0x002DB3 00:ADA3: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x002DB5 00:ADA5: 11        .byte $11   ; 
- D 1 - I - 0x002DB6 00:ADA6: 31        .byte $31   ; 
- D 1 - I - 0x002DB7 00:ADA7: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002DB8 00:ADA8: E0        .byte con_mcb_rts   ; 



_off005_ADA9_26_ost_7:
- D 1 - I - 0x002DB9 00:ADA9: B3 AD     .word ch_26_ADB3_00
- D 1 - I - 0x002DBB 00:ADAB: 1C AE     .word ch_26_AE1C_01
- D 1 - I - 0x002DBD 00:ADAD: D8 AF     .word ch_26_AFD8_02
- D 1 - I - 0x002DBF 00:ADAF: 68 B0     .word ch_26_B068_03
- D 1 - I - 0x002DC1 00:ADB1: 00 00     .word $0000 ;    04



ch_26_ADB3_00:
- D 1 - I - 0x002DC3 00:ADB3: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x002DC5 00:ADB5: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x002DC7 00:ADB7: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x002DC9 00:ADB9: DB        .byte con_mcb_DB, $0D   ; 
- D 1 - I - 0x002DCB 00:ADBB: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x002DCD 00:ADBD: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002DCF 00:ADBF: E3        .byte con_mcb_E3, $12   ; 
- D 1 - I - 0x002DD1 00:ADC1: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002DD3 00:ADC3: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002DD4 00:ADC4: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002DD5 00:ADC5: 11 AE     .word sub_DF_AE11
- D 1 - I - 0x002DD7 00:ADC7: 83        .byte $83   ; 
- D 1 - I - 0x002DD8 00:ADC8: 61        .byte $61   ; 
- D 1 - I - 0x002DD9 00:ADC9: A1        .byte $A1   ; 
- D 1 - I - 0x002DDA 00:ADCA: 83        .byte $83   ; 
- D 1 - I - 0x002DDB 00:ADCB: 63        .byte $63   ; 
- D 1 - I - 0x002DDC 00:ADCC: 53        .byte $53   ; 
- D 1 - I - 0x002DDD 00:ADCD: 83        .byte $83   ; 
- D 1 - I - 0x002DDE 00:ADCE: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002DDF 00:ADCF: 11 AE     .word sub_DF_AE11
- D 1 - I - 0x002DE1 00:ADD1: 83        .byte $83   ; 
- D 1 - I - 0x002DE2 00:ADD2: A1        .byte $A1   ; 
- D 1 - I - 0x002DE3 00:ADD3: 81        .byte $81   ; 
- D 1 - I - 0x002DE4 00:ADD4: 61        .byte $61   ; 
- D 1 - I - 0x002DE5 00:ADD5: 51        .byte $51   ; 
- D 1 - I - 0x002DE6 00:ADD6: 6B        .byte $6B   ; 
- D 1 - I - 0x002DE7 00:ADD7: 53        .byte $53   ; 
- D 1 - I - 0x002DE8 00:ADD8: 53        .byte $53   ; 
- D 1 - I - 0x002DE9 00:ADD9: 83        .byte $83   ; 
- D 1 - I - 0x002DEA 00:ADDA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002DEB 00:ADDB: 11        .byte $11   ; 
- D 1 - I - 0x002DEC 00:ADDC: 31        .byte $31   ; 
- D 1 - I - 0x002DED 00:ADDD: 11        .byte $11   ; 
- D 1 - I - 0x002DEE 00:ADDE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002DEF 00:ADDF: C1        .byte $C1   ; 
- D 1 - I - 0x002DF0 00:ADE0: A3        .byte $A3   ; 
- D 1 - I - 0x002DF1 00:ADE1: 67        .byte $67   ; 
- D 1 - I - 0x002DF2 00:ADE2: A3        .byte $A3   ; 
- D 1 - I - 0x002DF3 00:ADE3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002DF4 00:ADE4: 1B        .byte $1B   ; 
- D 1 - I - 0x002DF5 00:ADE5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002DF6 00:ADE6: 57        .byte $57   ; 
- D 1 - I - 0x002DF7 00:ADE7: 83        .byte $83   ; 
- D 1 - I - 0x002DF8 00:ADE8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002DF9 00:ADE9: 11        .byte $11   ; 
- D 1 - I - 0x002DFA 00:ADEA: 31        .byte $31   ; 
- D 1 - I - 0x002DFB 00:ADEB: 11        .byte $11   ; 
- D 1 - I - 0x002DFC 00:ADEC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002DFD 00:ADED: C1        .byte $C1   ; 
- D 1 - I - 0x002DFE 00:ADEE: 83        .byte $83   ; 
- D 1 - I - 0x002DFF 00:ADEF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E00 00:ADF0: 37        .byte $37   ; 
- D 1 - I - 0x002E01 00:ADF1: 11        .byte $11   ; 
- D 1 - I - 0x002E02 00:ADF2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E03 00:ADF3: C1        .byte $C1   ; 
- D 1 - I - 0x002E04 00:ADF4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E05 00:ADF5: 1B        .byte $1B   ; 
- D 1 - I - 0x002E06 00:ADF6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E07 00:ADF7: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E08 00:ADF8: 61        .byte $61   ; 
- D 1 - I - 0x002E09 00:ADF9: 61        .byte $61   ; 
- D 1 - I - 0x002E0A 00:ADFA: 63        .byte $63   ; 
- D 1 - I - 0x002E0B 00:ADFB: 63        .byte $63   ; 
- D 1 - I - 0x002E0C 00:ADFC: 57        .byte $57   ; 
- D 1 - I - 0x002E0D 00:ADFD: 53        .byte $53   ; 
- D 1 - I - 0x002E0E 00:ADFE: 37        .byte $37   ; 
- D 1 - I - 0x002E0F 00:ADFF: 11        .byte $11   ; 
- D 1 - I - 0x002E10 00:AE00: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E11 00:AE01: C1        .byte $C1   ; 
- D 1 - I - 0x002E12 00:AE02: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E13 00:AE03: 1B        .byte $1B   ; 
- D 1 - I - 0x002E14 00:AE04: 63        .byte $63   ; 
- D 1 - I - 0x002E15 00:AE05: 63        .byte $63   ; 
- D 1 - I - 0x002E16 00:AE06: 63        .byte $63   ; 
- D 1 - I - 0x002E17 00:AE07: 57        .byte $57   ; 
- D 1 - I - 0x002E18 00:AE08: 53        .byte $53   ; 
- D 1 - I - 0x002E19 00:AE09: 37        .byte $37   ; 
- D 1 - I - 0x002E1A 00:AE0A: 11        .byte $11   ; 
- D 1 - I - 0x002E1B 00:AE0B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E1C 00:AE0C: C1        .byte $C1   ; 
- D 1 - I - 0x002E1D 00:AE0D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E1E 00:AE0E: 1B        .byte $1B   ; 
- D 1 - I - 0x002E1F 00:AE0F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E20 00:AE10: EA        .byte con_mcb_EA   ; 



sub_DF_AE11:
- D 1 - I - 0x002E21 00:AE11: A1        .byte $A1   ; 
- D 1 - I - 0x002E22 00:AE12: B1        .byte $B1   ; 
- D 1 - I - 0x002E23 00:AE13: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E24 00:AE14: 11        .byte $11   ; 
- D 1 - I - 0x002E25 00:AE15: 31        .byte $31   ; 
- D 1 - I - 0x002E26 00:AE16: 11        .byte $11   ; 
- D 1 - I - 0x002E27 00:AE17: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E28 00:AE18: B1        .byte $B1   ; 
- D 1 - I - 0x002E29 00:AE19: A3        .byte $A3   ; 
- D 1 - I - 0x002E2A 00:AE1A: 67        .byte $67   ; 
- D 1 - I - 0x002E2B 00:AE1B: E0        .byte con_mcb_rts   ; 



ch_26_AE1C_01:
- D 1 - I - 0x002E2C 00:AE1C: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x002E2E 00:AE1E: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x002E30 00:AE20: E5        .byte con_mcb_E5, $08   ; 
- D 1 - I - 0x002E32 00:AE22: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x002E34 00:AE24: DA        .byte con_mcb_DA, $80   ; 
- D 1 - I - 0x002E36 00:AE26: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x002E38 00:AE28: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002E3A 00:AE2A: E3        .byte con_mcb_E3, $13   ; 
- D 1 - I - 0x002E3C 00:AE2C: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002E3E 00:AE2E: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002E3F 00:AE2F: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002E40 00:AE30: 9A AE     .word sub_DF_AE9A
- D 1 - I - 0x002E42 00:AE32: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002E43 00:AE33: 9A AE     .word sub_DF_AE9A
- D 1 - I - 0x002E45 00:AE35: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002E46 00:AE36: 12 AF     .word sub_DF_AF12
- D 1 - I - 0x002E48 00:AE38: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002E49 00:AE39: 12 AF     .word sub_DF_AF12
- D 1 - I - 0x002E4B 00:AE3B: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002E4C 00:AE3C: 65 AF     .word sub_DF_AF65
- D 1 - I - 0x002E4E 00:AE3E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E4F 00:AE3F: 10        .byte $10   ; 
- D 1 - I - 0x002E50 00:AE40: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E52 00:AE42: 10        .byte $10   ; 
- D 1 - I - 0x002E53 00:AE43: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E55 00:AE45: 10        .byte $10   ; 
- D 1 - I - 0x002E56 00:AE46: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E58 00:AE48: 10        .byte $10   ; 
- D 1 - I - 0x002E59 00:AE49: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E5B 00:AE4B: 30        .byte $30   ; 
- D 1 - I - 0x002E5C 00:AE4C: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E5E 00:AE4E: 30        .byte $30   ; 
- D 1 - I - 0x002E5F 00:AE4F: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E61 00:AE51: 30        .byte $30   ; 
- D 1 - I - 0x002E62 00:AE52: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E64 00:AE54: 30        .byte $30   ; 
- D 1 - I - 0x002E65 00:AE55: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E67 00:AE57: 50        .byte $50   ; 
- D 1 - I - 0x002E68 00:AE58: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E6A 00:AE5A: 50        .byte $50   ; 
- D 1 - I - 0x002E6B 00:AE5B: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E6D 00:AE5D: 80        .byte $80   ; 
- D 1 - I - 0x002E6E 00:AE5E: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E70 00:AE60: 80        .byte $80   ; 
- D 1 - I - 0x002E71 00:AE61: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E73 00:AE63: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E74 00:AE64: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002E75 00:AE65: 65 AF     .word sub_DF_AF65
- D 1 - I - 0x002E77 00:AE67: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E78 00:AE68: 50        .byte $50   ; 
- D 1 - I - 0x002E79 00:AE69: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E7B 00:AE6B: 50        .byte $50   ; 
- D 1 - I - 0x002E7C 00:AE6C: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E7E 00:AE6E: 50        .byte $50   ; 
- D 1 - I - 0x002E7F 00:AE6F: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E81 00:AE71: 50        .byte $50   ; 
- D 1 - I - 0x002E82 00:AE72: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E84 00:AE74: 80        .byte $80   ; 
- D 1 - I - 0x002E85 00:AE75: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E87 00:AE77: 80        .byte $80   ; 
- D 1 - I - 0x002E88 00:AE78: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E8A 00:AE7A: 80        .byte $80   ; 
- D 1 - I - 0x002E8B 00:AE7B: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002E8D 00:AE7D: 80        .byte $80   ; 
- D 1 - I - 0x002E8E 00:AE7E: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002E90 00:AE80: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x002E92 00:AE82: DB        .byte con_mcb_DB, $07   ; 
- D 1 - I - 0x002E94 00:AE84: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x002E96 00:AE86: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002E97 00:AE87: 10        .byte $10   ; 
- D 1 - I - 0x002E98 00:AE88: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002E99 00:AE89: C0        .byte $C0   ; 
- D 1 - I - 0x002E9A 00:AE8A: A0        .byte $A0   ; 
- D 1 - I - 0x002E9B 00:AE8B: 80        .byte $80   ; 
- D 1 - I - 0x002E9C 00:AE8C: 80        .byte $80   ; 
- D 1 - I - 0x002E9D 00:AE8D: A0        .byte $A0   ; 
- D 1 - I - 0x002E9E 00:AE8E: C0        .byte $C0   ; 
- D 1 - I - 0x002E9F 00:AE8F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002EA0 00:AE90: 10        .byte $10   ; 
- D 1 - I - 0x002EA1 00:AE91: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002EA2 00:AE92: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002EA3 00:AE93: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002EA5 00:AE95: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x002EA7 00:AE97: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x002EA9 00:AE99: EA        .byte con_mcb_EA   ; 



sub_DF_AE9A:
- D 1 - I - 0x002EAA 00:AE9A: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002EAC 00:AE9C: 10        .byte $10   ; 
- D 1 - I - 0x002EAD 00:AE9D: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EAF 00:AE9F: 10        .byte $10   ; 
- D 1 - I - 0x002EB0 00:AEA0: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EB2 00:AEA2: 60        .byte $60   ; 
- D 1 - I - 0x002EB3 00:AEA3: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EB5 00:AEA5: 60        .byte $60   ; 
- D 1 - I - 0x002EB6 00:AEA6: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EB8 00:AEA8: A0        .byte $A0   ; 
- D 1 - I - 0x002EB9 00:AEA9: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EBB 00:AEAB: A0        .byte $A0   ; 
- D 1 - I - 0x002EBC 00:AEAC: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EBE 00:AEAE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002EBF 00:AEAF: 10        .byte $10   ; 
- D 1 - I - 0x002EC0 00:AEB0: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EC2 00:AEB2: 10        .byte $10   ; 
- D 1 - I - 0x002EC3 00:AEB3: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EC5 00:AEB5: 80        .byte $80   ; 
- D 1 - I - 0x002EC6 00:AEB6: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EC8 00:AEB8: 80        .byte $80   ; 
- D 1 - I - 0x002EC9 00:AEB9: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002ECB 00:AEBB: 10        .byte $10   ; 
- D 1 - I - 0x002ECC 00:AEBC: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002ECE 00:AEBE: 10        .byte $10   ; 
- D 1 - I - 0x002ECF 00:AEBF: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002ED1 00:AEC1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002ED2 00:AEC2: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002ED3 00:AEC3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002ED4 00:AEC4: C0        .byte $C0   ; 
- D 1 - I - 0x002ED5 00:AEC5: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002ED7 00:AEC7: C0        .byte $C0   ; 
- D 1 - I - 0x002ED8 00:AEC8: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EDA 00:AECA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002EDB 00:AECB: 30        .byte $30   ; 
- D 1 - I - 0x002EDC 00:AECC: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EDE 00:AECE: 30        .byte $30   ; 
- D 1 - I - 0x002EDF 00:AECF: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EE1 00:AED1: A0        .byte $A0   ; 
- D 1 - I - 0x002EE2 00:AED2: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EE4 00:AED4: A0        .byte $A0   ; 
- D 1 - I - 0x002EE5 00:AED5: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EE7 00:AED7: C0        .byte $C0   ; 
- D 1 - I - 0x002EE8 00:AED8: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EEA 00:AEDA: C0        .byte $C0   ; 
- D 1 - I - 0x002EEB 00:AEDB: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EED 00:AEDD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002EEE 00:AEDE: 80        .byte $80   ; 
- D 1 - I - 0x002EEF 00:AEDF: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EF1 00:AEE1: 80        .byte $80   ; 
- D 1 - I - 0x002EF2 00:AEE2: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EF4 00:AEE4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002EF5 00:AEE5: C0        .byte $C0   ; 
- D 1 - I - 0x002EF6 00:AEE6: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EF8 00:AEE8: C0        .byte $C0   ; 
- D 1 - I - 0x002EF9 00:AEE9: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002EFB 00:AEEB: 10        .byte $10   ; 
- D 1 - I - 0x002EFC 00:AEEC: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002EFE 00:AEEE: 10        .byte $10   ; 
- D 1 - I - 0x002EFF 00:AEEF: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F01 00:AEF1: 60        .byte $60   ; 
- D 1 - I - 0x002F02 00:AEF2: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F04 00:AEF4: 60        .byte $60   ; 
- D 1 - I - 0x002F05 00:AEF5: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F07 00:AEF7: A0        .byte $A0   ; 
- D 1 - I - 0x002F08 00:AEF8: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F0A 00:AEFA: A0        .byte $A0   ; 
- D 1 - I - 0x002F0B 00:AEFB: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F0D 00:AEFD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002F0E 00:AEFE: 10        .byte $10   ; 
- D 1 - I - 0x002F0F 00:AEFF: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F11 00:AF01: 10        .byte $10   ; 
- D 1 - I - 0x002F12 00:AF02: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F14 00:AF04: 80        .byte $80   ; 
- D 1 - I - 0x002F15 00:AF05: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F17 00:AF07: 80        .byte $80   ; 
- D 1 - I - 0x002F18 00:AF08: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F1A 00:AF0A: 10        .byte $10   ; 
- D 1 - I - 0x002F1B 00:AF0B: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F1D 00:AF0D: 10        .byte $10   ; 
- D 1 - I - 0x002F1E 00:AF0E: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F20 00:AF10: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002F21 00:AF11: E0        .byte con_mcb_rts   ; 



sub_DF_AF12:
- D 1 - I - 0x002F22 00:AF12: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002F24 00:AF14: 10        .byte $10   ; 
- D 1 - I - 0x002F25 00:AF15: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F27 00:AF17: 10        .byte $10   ; 
- D 1 - I - 0x002F28 00:AF18: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F2A 00:AF1A: 50        .byte $50   ; 
- D 1 - I - 0x002F2B 00:AF1B: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F2D 00:AF1D: 50        .byte $50   ; 
- D 1 - I - 0x002F2E 00:AF1E: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F30 00:AF20: 80        .byte $80   ; 
- D 1 - I - 0x002F31 00:AF21: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F33 00:AF23: 80        .byte $80   ; 
- D 1 - I - 0x002F34 00:AF24: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F36 00:AF26: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002F37 00:AF27: 10        .byte $10   ; 
- D 1 - I - 0x002F38 00:AF28: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F3A 00:AF2A: 10        .byte $10   ; 
- D 1 - I - 0x002F3B 00:AF2B: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F3D 00:AF2D: 50        .byte $50   ; 
- D 1 - I - 0x002F3E 00:AF2E: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F40 00:AF30: 50        .byte $50   ; 
- D 1 - I - 0x002F41 00:AF31: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F43 00:AF33: 10        .byte $10   ; 
- D 1 - I - 0x002F44 00:AF34: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F46 00:AF36: 10        .byte $10   ; 
- D 1 - I - 0x002F47 00:AF37: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F49 00:AF39: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002F4A 00:AF3A: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002F4B 00:AF3B: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x002F4D 00:AF3D: 10        .byte $10   ; 
- D 1 - I - 0x002F4E 00:AF3E: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F50 00:AF40: 10        .byte $10   ; 
- D 1 - I - 0x002F51 00:AF41: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F53 00:AF43: 50        .byte $50   ; 
- D 1 - I - 0x002F54 00:AF44: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F56 00:AF46: 50        .byte $50   ; 
- D 1 - I - 0x002F57 00:AF47: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F59 00:AF49: 80        .byte $80   ; 
- D 1 - I - 0x002F5A 00:AF4A: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F5C 00:AF4C: 80        .byte $80   ; 
- D 1 - I - 0x002F5D 00:AF4D: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F5F 00:AF4F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002F60 00:AF50: 10        .byte $10   ; 
- D 1 - I - 0x002F61 00:AF51: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F63 00:AF53: 10        .byte $10   ; 
- D 1 - I - 0x002F64 00:AF54: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F66 00:AF56: 60        .byte $60   ; 
- D 1 - I - 0x002F67 00:AF57: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F69 00:AF59: 60        .byte $60   ; 
- D 1 - I - 0x002F6A 00:AF5A: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F6C 00:AF5C: 10        .byte $10   ; 
- D 1 - I - 0x002F6D 00:AF5D: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F6F 00:AF5F: 10        .byte $10   ; 
- D 1 - I - 0x002F70 00:AF60: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F72 00:AF62: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002F73 00:AF63: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x002F74 00:AF64: E0        .byte con_mcb_rts   ; 



sub_DF_AF65:
- D 1 - I - 0x002F75 00:AF65: 60        .byte $60   ; 
- D 1 - I - 0x002F76 00:AF66: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F78 00:AF68: 60        .byte $60   ; 
- D 1 - I - 0x002F79 00:AF69: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F7B 00:AF6B: A0        .byte $A0   ; 
- D 1 - I - 0x002F7C 00:AF6C: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F7E 00:AF6E: A0        .byte $A0   ; 
- D 1 - I - 0x002F7F 00:AF6F: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F81 00:AF71: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002F82 00:AF72: 10        .byte $10   ; 
- D 1 - I - 0x002F83 00:AF73: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F85 00:AF75: 10        .byte $10   ; 
- D 1 - I - 0x002F86 00:AF76: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F88 00:AF78: 60        .byte $60   ; 
- D 1 - I - 0x002F89 00:AF79: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F8B 00:AF7B: 60        .byte $60   ; 
- D 1 - I - 0x002F8C 00:AF7C: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F8E 00:AF7E: 10        .byte $10   ; 
- D 1 - I - 0x002F8F 00:AF7F: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F91 00:AF81: 10        .byte $10   ; 
- D 1 - I - 0x002F92 00:AF82: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F94 00:AF84: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002F95 00:AF85: A0        .byte $A0   ; 
- D 1 - I - 0x002F96 00:AF86: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F98 00:AF88: A0        .byte $A0   ; 
- D 1 - I - 0x002F99 00:AF89: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002F9B 00:AF8B: 10        .byte $10   ; 
- D 1 - I - 0x002F9C 00:AF8C: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002F9E 00:AF8E: 10        .byte $10   ; 
- D 1 - I - 0x002F9F 00:AF8F: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FA1 00:AF91: 50        .byte $50   ; 
- D 1 - I - 0x002FA2 00:AF92: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FA4 00:AF94: 50        .byte $50   ; 
- D 1 - I - 0x002FA5 00:AF95: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FA7 00:AF97: 80        .byte $80   ; 
- D 1 - I - 0x002FA8 00:AF98: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FAA 00:AF9A: 80        .byte $80   ; 
- D 1 - I - 0x002FAB 00:AF9B: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FAD 00:AF9D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002FAE 00:AF9E: 10        .byte $10   ; 
- D 1 - I - 0x002FAF 00:AF9F: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FB1 00:AFA1: 10        .byte $10   ; 
- D 1 - I - 0x002FB2 00:AFA2: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FB4 00:AFA4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002FB5 00:AFA5: 80        .byte $80   ; 
- D 1 - I - 0x002FB6 00:AFA6: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FB8 00:AFA8: 80        .byte $80   ; 
- D 1 - I - 0x002FB9 00:AFA9: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FBB 00:AFAB: 50        .byte $50   ; 
- D 1 - I - 0x002FBC 00:AFAC: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FBE 00:AFAE: 50        .byte $50   ; 
- D 1 - I - 0x002FBF 00:AFAF: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FC1 00:AFB1: 30        .byte $30   ; 
- D 1 - I - 0x002FC2 00:AFB2: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FC4 00:AFB4: 30        .byte $30   ; 
- D 1 - I - 0x002FC5 00:AFB5: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FC7 00:AFB7: 80        .byte $80   ; 
- D 1 - I - 0x002FC8 00:AFB8: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FCA 00:AFBA: 80        .byte $80   ; 
- D 1 - I - 0x002FCB 00:AFBB: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FCD 00:AFBD: C0        .byte $C0   ; 
- D 1 - I - 0x002FCE 00:AFBE: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FD0 00:AFC0: C0        .byte $C0   ; 
- D 1 - I - 0x002FD1 00:AFC1: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FD3 00:AFC3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002FD4 00:AFC4: 60        .byte $60   ; 
- D 1 - I - 0x002FD5 00:AFC5: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FD7 00:AFC7: 60        .byte $60   ; 
- D 1 - I - 0x002FD8 00:AFC8: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FDA 00:AFCA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002FDB 00:AFCB: C0        .byte $C0   ; 
- D 1 - I - 0x002FDC 00:AFCC: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FDE 00:AFCE: C0        .byte $C0   ; 
- D 1 - I - 0x002FDF 00:AFCF: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FE1 00:AFD1: 80        .byte $80   ; 
- D 1 - I - 0x002FE2 00:AFD2: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x002FE4 00:AFD4: 80        .byte $80   ; 
- D 1 - I - 0x002FE5 00:AFD5: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x002FE7 00:AFD7: E0        .byte con_mcb_rts   ; 



ch_26_AFD8_02:
- D 1 - I - 0x002FE8 00:AFD8: DC        .byte con_mcb_DC, $04   ; 
- D 1 - I - 0x002FEA 00:AFDA: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x002FEC 00:AFDC: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x002FEE 00:AFDE: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x002FEF 00:AFDF: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x002FF0 00:AFE0: 2E B0     .word sub_DF_B02E
- D 1 - I - 0x002FF2 00:AFE2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x002FF3 00:AFE3: 83        .byte $83   ; 
- D 1 - I - 0x002FF4 00:AFE4: A1        .byte $A1   ; 
- D 1 - I - 0x002FF5 00:AFE5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002FF6 00:AFE6: 11        .byte $11   ; 
- D 1 - I - 0x002FF7 00:AFE7: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x002FF9 00:AFE9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002FFA 00:AFEA: 60        .byte $60   ; 
- D 1 - I - 0x002FFB 00:AFEB: 80        .byte $80   ; 
- D 1 - I - 0x002FFC 00:AFEC: A0        .byte $A0   ; 
- D 1 - I - 0x002FFD 00:AFED: C0        .byte $C0   ; 
- D 1 - I - 0x002FFE 00:AFEE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x002FFF 00:AFEF: 10        .byte $10   ; 
- D 1 - I - 0x003000 00:AFF0: 30        .byte $30   ; 
- D 1 - I - 0x003001 00:AFF1: 50        .byte $50   ; 
- D 1 - I - 0x003002 00:AFF2: 60        .byte $60   ; 
- D 1 - I - 0x003003 00:AFF3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003004 00:AFF4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003005 00:AFF5: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003007 00:AFF7: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003008 00:AFF8: 2E B0     .word sub_DF_B02E
- D 1 - I - 0x00300A 00:AFFA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00300B 00:AFFB: 63        .byte $63   ; 
- D 1 - I - 0x00300C 00:AFFC: A1        .byte $A1   ; 
- D 1 - I - 0x00300D 00:AFFD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00300E 00:AFFE: 11        .byte $11   ; 
- D 1 - I - 0x00300F 00:AFFF: 11        .byte $11   ; 
- D 1 - I - 0x003010 00:B000: 11        .byte $11   ; 
- D 1 - I - 0x003011 00:B001: 11        .byte $11   ; 
- D 1 - I - 0x003012 00:B002: 11        .byte $11   ; 
- D 1 - I - 0x003013 00:B003: 11        .byte $11   ; 
- D 1 - I - 0x003014 00:B004: 11        .byte $11   ; 
- D 1 - I - 0x003015 00:B005: 13        .byte $13   ; 
- D 1 - I - 0x003016 00:B006: 11        .byte $11   ; 
- D 1 - I - 0x003017 00:B007: 11        .byte $11   ; 
- D 1 - I - 0x003018 00:B008: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003019 00:B009: C1        .byte $C1   ; 
- D 1 - I - 0x00301A 00:B00A: B1        .byte $B1   ; 
- D 1 - I - 0x00301B 00:B00B: A1        .byte $A1   ; 
- D 1 - I - 0x00301C 00:B00C: 91        .byte $91   ; 
- D 1 - I - 0x00301D 00:B00D: 63        .byte $63   ; 
- D 1 - I - 0x00301E 00:B00E: 63        .byte $63   ; 
- D 1 - I - 0x00301F 00:B00F: 63        .byte $63   ; 
- D 1 - I - 0x003020 00:B010: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003021 00:B011: 13        .byte $13   ; 
- D 1 - I - 0x003022 00:B012: 11        .byte $11   ; 
- D 1 - I - 0x003023 00:B013: 11        .byte $11   ; 
- D 1 - I - 0x003024 00:B014: 13        .byte $13   ; 
- D 1 - I - 0x003025 00:B015: 11        .byte $11   ; 
- D 1 - I - 0x003026 00:B016: 11        .byte $11   ; 
- D 1 - I - 0x003027 00:B017: 13        .byte $13   ; 
- D 1 - I - 0x003028 00:B018: 13        .byte $13   ; 
- D 1 - I - 0x003029 00:B019: 11        .byte $11   ; 
- D 1 - I - 0x00302A 00:B01A: 11        .byte $11   ; 
- D 1 - I - 0x00302B 00:B01B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00302C 00:B01C: C1        .byte $C1   ; 
- D 1 - I - 0x00302D 00:B01D: B1        .byte $B1   ; 
- D 1 - I - 0x00302E 00:B01E: A1        .byte $A1   ; 
- D 1 - I - 0x00302F 00:B01F: 91        .byte $91   ; 
- D 1 - I - 0x003030 00:B020: 63        .byte $63   ; 
- D 1 - I - 0x003031 00:B021: 63        .byte $63   ; 
- D 1 - I - 0x003032 00:B022: 63        .byte $63   ; 
- D 1 - I - 0x003033 00:B023: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003034 00:B024: 13        .byte $13   ; 
- D 1 - I - 0x003035 00:B025: 33        .byte $33   ; 
- D 1 - I - 0x003036 00:B026: 53        .byte $53   ; 
- D 1 - I - 0x003037 00:B027: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003038 00:B028: 54 B0     .word sub_DF_B054
- D 1 - I - 0x00303A 00:B02A: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00303B 00:B02B: 54 B0     .word sub_DF_B054
- D 1 - I - 0x00303D 00:B02D: EA        .byte con_mcb_EA   ; 



sub_DF_B02E:
- D 1 - I - 0x00303E 00:B02E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00303F 00:B02F: 63        .byte $63   ; 
- D 1 - I - 0x003040 00:B030: A1        .byte $A1   ; 
- D 1 - I - 0x003041 00:B031: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003042 00:B032: 11        .byte $11   ; 
- D 1 - I - 0x003043 00:B033: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003044 00:B034: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003045 00:B035: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003046 00:B036: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x003048 00:B038: 10        .byte $10   ; 
- D 1 - I - 0x003049 00:B039: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00304A 00:B03A: C0        .byte $C0   ; 
- D 1 - I - 0x00304B 00:B03B: A0        .byte $A0   ; 
- D 1 - I - 0x00304C 00:B03C: 80        .byte $80   ; 
- D 1 - I - 0x00304D 00:B03D: 60        .byte $60   ; 
- D 1 - I - 0x00304E 00:B03E: 80        .byte $80   ; 
- D 1 - I - 0x00304F 00:B03F: A0        .byte $A0   ; 
- D 1 - I - 0x003050 00:B040: C0        .byte $C0   ; 
- D 1 - I - 0x003051 00:B041: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003052 00:B042: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003053 00:B043: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003055 00:B045: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003056 00:B046: 63        .byte $63   ; 
- D 1 - I - 0x003057 00:B047: A1        .byte $A1   ; 
- D 1 - I - 0x003058 00:B048: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003059 00:B049: 11        .byte $11   ; 
- D 1 - I - 0x00305A 00:B04A: 61        .byte $61   ; 
- D 1 - I - 0x00305B 00:B04B: 61        .byte $61   ; 
- D 1 - I - 0x00305C 00:B04C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00305D 00:B04D: 83        .byte $83   ; 
- D 1 - I - 0x00305E 00:B04E: C1        .byte $C1   ; 
- D 1 - I - 0x00305F 00:B04F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003060 00:B050: 31        .byte $31   ; 
- D 1 - I - 0x003061 00:B051: 81        .byte $81   ; 
- D 1 - I - 0x003062 00:B052: 31        .byte $31   ; 
- D 1 - I - 0x003063 00:B053: E0        .byte con_mcb_rts   ; 



sub_DF_B054:
- D 1 - I - 0x003064 00:B054: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003065 00:B055: 63        .byte $63   ; 
- D 1 - I - 0x003066 00:B056: 63        .byte $63   ; 
- D 1 - I - 0x003067 00:B057: 61        .byte $61   ; 
- D 1 - I - 0x003068 00:B058: 61        .byte $61   ; 
- D 1 - I - 0x003069 00:B059: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00306A 00:B05A: 13        .byte $13   ; 
- D 1 - I - 0x00306B 00:B05B: 13        .byte $13   ; 
- D 1 - I - 0x00306C 00:B05C: 11        .byte $11   ; 
- D 1 - I - 0x00306D 00:B05D: 11        .byte $11   ; 
- D 1 - I - 0x00306E 00:B05E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00306F 00:B05F: 83        .byte $83   ; 
- D 1 - I - 0x003070 00:B060: 83        .byte $83   ; 
- D 1 - I - 0x003071 00:B061: 81        .byte $81   ; 
- D 1 - I - 0x003072 00:B062: 81        .byte $81   ; 
- D 1 - I - 0x003073 00:B063: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003074 00:B064: 13        .byte $13   ; 
- D 1 - I - 0x003075 00:B065: 13        .byte $13   ; 
- D 1 - I - 0x003076 00:B066: 13        .byte $13   ; 
- D 1 - I - 0x003077 00:B067: E0        .byte con_mcb_rts   ; 



ch_26_B068_03:
- D 1 - I - 0x003078 00:B068: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x00307A 00:B06A: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x00307C 00:B06C: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00307E 00:B06E: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00307F 00:B06F: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003080 00:B070: 87 B0     .word sub_DF_B087
- D 1 - I - 0x003082 00:B072: 23        .byte $23   ; 
- D 1 - I - 0x003083 00:B073: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003085 00:B075: 31        .byte $31   ; 
- D 1 - I - 0x003086 00:B076: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003087 00:B077: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003088 00:B078: 87 B0     .word sub_DF_B087
- D 1 - I - 0x00308A 00:B07A: 23        .byte $23   ; 
- D 1 - I - 0x00308B 00:B07B: 31        .byte $31   ; 
- D 1 - I - 0x00308C 00:B07C: 31        .byte $31   ; 
- D 1 - I - 0x00308D 00:B07D: 31        .byte $31   ; 
- D 1 - I - 0x00308E 00:B07E: 30        .byte $30   ; 
- D 1 - I - 0x00308F 00:B07F: 30        .byte $30   ; 
- D 1 - I - 0x003090 00:B080: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003092 00:B082: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003093 00:B083: 95 B0     .word sub_DF_B095
- D 1 - I - 0x003095 00:B085: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003096 00:B086: EA        .byte con_mcb_EA   ; 



sub_DF_B087:
- D 1 - I - 0x003097 00:B087: 23        .byte $23   ; 
- D 1 - I - 0x003098 00:B088: 01        .byte $01   ; 
- D 1 - I - 0x003099 00:B089: 31        .byte $31   ; 
- D 1 - I - 0x00309A 00:B08A: 01        .byte $01   ; 
- D 1 - I - 0x00309B 00:B08B: 21        .byte $21   ; 
- D 1 - I - 0x00309C 00:B08C: 23        .byte $23   ; 
- D 1 - I - 0x00309D 00:B08D: 33        .byte $33   ; 
- D 1 - I - 0x00309E 00:B08E: 33        .byte $33   ; 
- D 1 - I - 0x00309F 00:B08F: 23        .byte $23   ; 
- D 1 - I - 0x0030A0 00:B090: 01        .byte $01   ; 
- D 1 - I - 0x0030A1 00:B091: 31        .byte $31   ; 
- D 1 - I - 0x0030A2 00:B092: 01        .byte $01   ; 
- D 1 - I - 0x0030A3 00:B093: 21        .byte $21   ; 
- D 1 - I - 0x0030A4 00:B094: E0        .byte con_mcb_rts   ; 



sub_DF_B095:
- D 1 - I - 0x0030A5 00:B095: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x0030A7 00:B097: 23        .byte $23   ; 
- D 1 - I - 0x0030A8 00:B098: 33        .byte $33   ; 
- D 1 - I - 0x0030A9 00:B099: 33        .byte $33   ; 
- D 1 - I - 0x0030AA 00:B09A: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0030AB 00:B09B: 23        .byte $23   ; 
- D 1 - I - 0x0030AC 00:B09C: 31        .byte $31   ; 
- D 1 - I - 0x0030AD 00:B09D: 31        .byte $31   ; 
- D 1 - I - 0x0030AE 00:B09E: 31        .byte $31   ; 
- D 1 - I - 0x0030AF 00:B09F: 30        .byte $30   ; 
- D 1 - I - 0x0030B0 00:B0A0: 30        .byte $30   ; 
- D 1 - I - 0x0030B1 00:B0A1: E0        .byte con_mcb_rts   ; 


; bzk garbage
- - - - - - 0x0030B2 00:B0A2: 11        .byte $11   ; 
- - - - - - 0x0030B3 00:B0A3: 61        .byte $61   ; 
- - - - - - 0x0030B4 00:B0A4: A1        .byte $A1   ; 
- - - - - - 0x0030B5 00:B0A5: D1        .byte con_mcb_D1   ; 
- - - - - - 0x0030B6 00:B0A6: 11        .byte $11   ; 
- - - - - - 0x0030B7 00:B0A7: 81        .byte $81   ; 
- - - - - - 0x0030B8 00:B0A8: 11        .byte $11   ; 
- - - - - - 0x0030B9 00:B0A9: D2        .byte con_mcb_D2   ; 
- - - - - - 0x0030BA 00:B0AA: D8        .byte con_mcb_D8   ; 



_off005_B0AB_27_phone_call:
- D 1 - I - 0x0030BB 00:B0AB: B5 B0     .word ch_27_B0B5_00
- D 1 - I - 0x0030BD 00:B0AD: 3D B1     .word ch_27_B13D_01
- D 1 - I - 0x0030BF 00:B0AF: A0 B1     .word ch_27_B1A0_02
- D 1 - I - 0x0030C1 00:B0B1: 15 B2     .word ch_27_B215_03
- D 1 - I - 0x0030C3 00:B0B3: 00 00     .word $0000 ;    04



ch_27_B0B5_00:
- D 1 - I - 0x0030C5 00:B0B5: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x0030C7 00:B0B7: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x0030C9 00:B0B9: E5        .byte con_mcb_E5, $0C   ; 
- D 1 - I - 0x0030CB 00:B0BB: DB        .byte con_mcb_DB, $0D   ; 
- D 1 - I - 0x0030CD 00:B0BD: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x0030CF 00:B0BF: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x0030D1 00:B0C1: E3        .byte con_mcb_E3, $13   ; 
- D 1 - I - 0x0030D3 00:B0C3: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0030D5 00:B0C5: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0030D6 00:B0C6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0030D7 00:B0C7: CD B0     .word sub_DF_B0CD
- D 1 - I - 0x0030D9 00:B0C9: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0030DA 00:B0CA: CD B0     .word sub_DF_B0CD
- - - - - - 0x0030DC 00:B0CC: EA        .byte con_mcb_EA   ; 



sub_DF_B0CD:
- D 1 - I - 0x0030DD 00:B0CD: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0030DF 00:B0CF: 11        .byte $11   ; 
- D 1 - I - 0x0030E0 00:B0D0: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0030E2 00:B0D2: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0030E3 00:B0D3: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x0030E5 00:B0D5: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0030E7 00:B0D7: 81        .byte $81   ; 
- D 1 - I - 0x0030E8 00:B0D8: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0030EA 00:B0DA: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0030EB 00:B0DB: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x0030ED 00:B0DD: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0030EE 00:B0DE: C1        .byte $C1   ; 
- D 1 - I - 0x0030EF 00:B0DF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0030F0 00:B0E0: 11        .byte $11   ; 
- D 1 - I - 0x0030F1 00:B0E1: 83        .byte $83   ; 
- D 1 - I - 0x0030F2 00:B0E2: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0030F4 00:B0E4: B1        .byte $B1   ; 
- D 1 - I - 0x0030F5 00:B0E5: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0030F7 00:B0E7: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0030F8 00:B0E8: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x0030FA 00:B0EA: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0030FC 00:B0EC: 11        .byte $11   ; 
- D 1 - I - 0x0030FD 00:B0ED: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x0030FF 00:B0EF: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003100 00:B0F0: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x003102 00:B0F2: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003104 00:B0F4: 81        .byte $81   ; 
- D 1 - I - 0x003105 00:B0F5: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x003107 00:B0F7: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003108 00:B0F8: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x00310A 00:B0FA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00310B 00:B0FB: C1        .byte $C1   ; 
- D 1 - I - 0x00310C 00:B0FC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00310D 00:B0FD: 11        .byte $11   ; 
- D 1 - I - 0x00310E 00:B0FE: 83        .byte $83   ; 
- D 1 - I - 0x00310F 00:B0FF: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003111 00:B101: 71        .byte $71   ; 
- D 1 - I - 0x003112 00:B102: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x003114 00:B104: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003115 00:B105: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x003117 00:B107: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003119 00:B109: 11        .byte $11   ; 
- D 1 - I - 0x00311A 00:B10A: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x00311C 00:B10C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00311D 00:B10D: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x00311F 00:B10F: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003121 00:B111: 81        .byte $81   ; 
- D 1 - I - 0x003122 00:B112: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x003124 00:B114: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003125 00:B115: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x003127 00:B117: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003128 00:B118: C1        .byte $C1   ; 
- D 1 - I - 0x003129 00:B119: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00312A 00:B11A: 11        .byte $11   ; 
- D 1 - I - 0x00312B 00:B11B: 83        .byte $83   ; 
- D 1 - I - 0x00312C 00:B11C: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x00312E 00:B11E: B1        .byte $B1   ; 
- D 1 - I - 0x00312F 00:B11F: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x003131 00:B121: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003132 00:B122: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x003134 00:B124: C1        .byte $C1   ; 
- D 1 - I - 0x003135 00:B125: A1        .byte $A1   ; 
- D 1 - I - 0x003136 00:B126: 81        .byte $81   ; 
- D 1 - I - 0x003137 00:B127: 61        .byte $61   ; 
- D 1 - I - 0x003138 00:B128: 41        .byte $41   ; 
- D 1 - I - 0x003139 00:B129: 21        .byte $21   ; 
- D 1 - I - 0x00313A 00:B12A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00313B 00:B12B: B1        .byte $B1   ; 
- D 1 - I - 0x00313C 00:B12C: 91        .byte $91   ; 
- D 1 - I - 0x00313D 00:B12D: 83        .byte $83   ; 
- D 1 - I - 0x00313E 00:B12E: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x003140 00:B130: 83        .byte $83   ; 
- D 1 - I - 0x003141 00:B131: E8        .byte con_mcb_E8, $07   ; 
- D 1 - I - 0x003143 00:B133: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003144 00:B134: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003146 00:B136: 81        .byte $81   ; 
- D 1 - I - 0x003147 00:B137: E8        .byte con_mcb_E8, $FD   ; 
- D 1 - I - 0x003149 00:B139: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00314A 00:B13A: E8        .byte con_mcb_E8, $0C   ; 
- D 1 - I - 0x00314C 00:B13C: E0        .byte con_mcb_rts   ; 



ch_27_B13D_01:
- D 1 - I - 0x00314D 00:B13D: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x00314F 00:B13F: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003151 00:B141: E5        .byte con_mcb_E5, $02   ; 
- D 1 - I - 0x003153 00:B143: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x003155 00:B145: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003157 00:B147: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x003159 00:B149: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x00315B 00:B14B: E3        .byte con_mcb_E3, $12   ; 
- D 1 - I - 0x00315D 00:B14D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00315F 00:B14F: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003160 00:B150: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003162 00:B152: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003163 00:B153: 57 B1     .word sub_DF_B157
- D 1 - I - 0x003165 00:B155: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003166 00:B156: EA        .byte con_mcb_EA   ; 



sub_DF_B157:
- D 1 - I - 0x003167 00:B157: A5        .byte $A5   ; 
- D 1 - I - 0x003168 00:B158: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x00316A 00:B15A: A2        .byte $A2   ; 
- D 1 - I - 0x00316B 00:B15B: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x00316D 00:B15D: 96        .byte $96   ; 
- D 1 - I - 0x00316E 00:B15E: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003170 00:B160: 92        .byte $92   ; 
- D 1 - I - 0x003171 00:B161: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003173 00:B163: 85        .byte $85   ; 
- D 1 - I - 0x003174 00:B164: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003176 00:B166: 82        .byte $82   ; 
- D 1 - I - 0x003177 00:B167: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003179 00:B169: 75        .byte $75   ; 
- D 1 - I - 0x00317A 00:B16A: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x00317C 00:B16C: 72        .byte $72   ; 
- D 1 - I - 0x00317D 00:B16D: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x00317F 00:B16F: 86        .byte $86   ; 
- D 1 - I - 0x003180 00:B170: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003182 00:B172: 82        .byte $82   ; 
- D 1 - I - 0x003183 00:B173: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003185 00:B175: 95        .byte $95   ; 
- D 1 - I - 0x003186 00:B176: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003188 00:B178: 92        .byte $92   ; 
- D 1 - I - 0x003189 00:B179: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x00318B 00:B17B: A5        .byte $A5   ; 
- D 1 - I - 0x00318C 00:B17C: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x00318E 00:B17E: A2        .byte $A2   ; 
- D 1 - I - 0x00318F 00:B17F: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003191 00:B181: 96        .byte $96   ; 
- D 1 - I - 0x003192 00:B182: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003194 00:B184: 92        .byte $92   ; 
- D 1 - I - 0x003195 00:B185: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003197 00:B187: 85        .byte $85   ; 
- D 1 - I - 0x003198 00:B188: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x00319A 00:B18A: 82        .byte $82   ; 
- D 1 - I - 0x00319B 00:B18B: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x00319D 00:B18D: 75        .byte $75   ; 
- D 1 - I - 0x00319E 00:B18E: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x0031A0 00:B190: 72        .byte $72   ; 
- D 1 - I - 0x0031A1 00:B191: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x0031A3 00:B193: 86        .byte $86   ; 
- D 1 - I - 0x0031A4 00:B194: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x0031A6 00:B196: 82        .byte $82   ; 
- D 1 - I - 0x0031A7 00:B197: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x0031A9 00:B199: 95        .byte $95   ; 
- D 1 - I - 0x0031AA 00:B19A: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x0031AC 00:B19C: 92        .byte $92   ; 
- D 1 - I - 0x0031AD 00:B19D: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x0031AF 00:B19F: E0        .byte con_mcb_rts   ; 



ch_27_B1A0_02:
- D 1 - I - 0x0031B0 00:B1A0: DC        .byte con_mcb_DC, $04   ; 
- D 1 - I - 0x0031B2 00:B1A2: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0031B4 00:B1A4: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0031B5 00:B1A5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0031B6 00:B1A6: A9 B1     .word sub_DF_B1A9
- D 1 - I - 0x0031B8 00:B1A8: EA        .byte con_mcb_EA   ; 



sub_DF_B1A9:
- D 1 - I - 0x0031B9 00:B1A9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031BA 00:B1AA: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0031BC 00:B1AC: 87        .byte $87   ; 
- D 1 - I - 0x0031BD 00:B1AD: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0031BF 00:B1AF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031C0 00:B1B0: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031C1 00:B1B1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031C2 00:B1B2: 83        .byte $83   ; 
- D 1 - I - 0x0031C3 00:B1B3: 62        .byte $62   ; 
- D 1 - I - 0x0031C4 00:B1B4: 53        .byte $53   ; 
- D 1 - I - 0x0031C5 00:B1B5: 32        .byte $32   ; 
- D 1 - I - 0x0031C6 00:B1B6: 13        .byte $13   ; 
- D 1 - I - 0x0031C7 00:B1B7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031C8 00:B1B8: C2        .byte $C2   ; 
- D 1 - I - 0x0031C9 00:B1B9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031CA 00:B1BA: 13        .byte $13   ; 
- D 1 - I - 0x0031CB 00:B1BB: 32        .byte $32   ; 
- D 1 - I - 0x0031CC 00:B1BC: 53        .byte $53   ; 
- D 1 - I - 0x0031CD 00:B1BD: 62        .byte $62   ; 
- D 1 - I - 0x0031CE 00:B1BE: 83        .byte $83   ; 
- D 1 - I - 0x0031CF 00:B1BF: A2        .byte $A2   ; 
- D 1 - I - 0x0031D0 00:B1C0: C3        .byte $C3   ; 
- D 1 - I - 0x0031D1 00:B1C1: A2        .byte $A2   ; 
- D 1 - I - 0x0031D2 00:B1C2: 83        .byte $83   ; 
- D 1 - I - 0x0031D3 00:B1C3: 82        .byte $82   ; 
- D 1 - I - 0x0031D4 00:B1C4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031D5 00:B1C5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031D6 00:B1C6: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0031D8 00:B1C8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031D9 00:B1C9: 87        .byte $87   ; 
- D 1 - I - 0x0031DA 00:B1CA: B7        .byte $B7   ; 
- D 1 - I - 0x0031DB 00:B1CB: 87        .byte $87   ; 
- D 1 - I - 0x0031DC 00:B1CC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031DD 00:B1CD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031DE 00:B1CE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0031E0 00:B1D0: 83        .byte $83   ; 
- D 1 - I - 0x0031E1 00:B1D1: A2        .byte $A2   ; 
- D 1 - I - 0x0031E2 00:B1D2: C3        .byte $C3   ; 
- D 1 - I - 0x0031E3 00:B1D3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031E4 00:B1D4: 12        .byte $12   ; 
- D 1 - I - 0x0031E5 00:B1D5: 33        .byte $33   ; 
- D 1 - I - 0x0031E6 00:B1D6: 52        .byte $52   ; 
- D 1 - I - 0x0031E7 00:B1D7: 63        .byte $63   ; 
- D 1 - I - 0x0031E8 00:B1D8: 82        .byte $82   ; 
- D 1 - I - 0x0031E9 00:B1D9: A3        .byte $A3   ; 
- D 1 - I - 0x0031EA 00:B1DA: C2        .byte $C2   ; 
- D 1 - I - 0x0031EB 00:B1DB: A3        .byte $A3   ; 
- D 1 - I - 0x0031EC 00:B1DC: 82        .byte $82   ; 
- D 1 - I - 0x0031ED 00:B1DD: 63        .byte $63   ; 
- D 1 - I - 0x0031EE 00:B1DE: 52        .byte $52   ; 
- D 1 - I - 0x0031EF 00:B1DF: 33        .byte $33   ; 
- D 1 - I - 0x0031F0 00:B1E0: 32        .byte $32   ; 
- D 1 - I - 0x0031F1 00:B1E1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031F2 00:B1E2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031F3 00:B1E3: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0031F5 00:B1E5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031F6 00:B1E6: 87        .byte $87   ; 
- D 1 - I - 0x0031F7 00:B1E7: 77        .byte $77   ; 
- D 1 - I - 0x0031F8 00:B1E8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0031F9 00:B1E9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0031FA 00:B1EA: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0031FC 00:B1EC: 87        .byte $87   ; 
- D 1 - I - 0x0031FD 00:B1ED: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0031FF 00:B1EF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003200 00:B1F0: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003201 00:B1F1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003202 00:B1F2: 83        .byte $83   ; 
- D 1 - I - 0x003203 00:B1F3: 62        .byte $62   ; 
- D 1 - I - 0x003204 00:B1F4: 53        .byte $53   ; 
- D 1 - I - 0x003205 00:B1F5: 32        .byte $32   ; 
- D 1 - I - 0x003206 00:B1F6: 13        .byte $13   ; 
- D 1 - I - 0x003207 00:B1F7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003208 00:B1F8: C2        .byte $C2   ; 
- D 1 - I - 0x003209 00:B1F9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00320A 00:B1FA: 13        .byte $13   ; 
- D 1 - I - 0x00320B 00:B1FB: 32        .byte $32   ; 
- D 1 - I - 0x00320C 00:B1FC: 53        .byte $53   ; 
- D 1 - I - 0x00320D 00:B1FD: 62        .byte $62   ; 
- D 1 - I - 0x00320E 00:B1FE: 83        .byte $83   ; 
- D 1 - I - 0x00320F 00:B1FF: A2        .byte $A2   ; 
- D 1 - I - 0x003210 00:B200: C3        .byte $C3   ; 
- D 1 - I - 0x003211 00:B201: A2        .byte $A2   ; 
- D 1 - I - 0x003212 00:B202: 83        .byte $83   ; 
- D 1 - I - 0x003213 00:B203: 82        .byte $82   ; 
- D 1 - I - 0x003214 00:B204: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003215 00:B205: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003216 00:B206: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003218 00:B208: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003219 00:B209: 87        .byte $87   ; 
- D 1 - I - 0x00321A 00:B20A: B7        .byte $B7   ; 
- D 1 - I - 0x00321B 00:B20B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00321C 00:B20C: 83        .byte $83   ; 
- D 1 - I - 0x00321D 00:B20D: 73        .byte $73   ; 
- D 1 - I - 0x00321E 00:B20E: 63        .byte $63   ; 
- D 1 - I - 0x00321F 00:B20F: 53        .byte $53   ; 
- D 1 - I - 0x003220 00:B210: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003221 00:B211: 87        .byte $87   ; 
- D 1 - I - 0x003222 00:B212: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003223 00:B213: 87        .byte $87   ; 
- D 1 - I - 0x003224 00:B214: E0        .byte con_mcb_rts   ; 



ch_27_B215_03:
- D 1 - I - 0x003225 00:B215: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x003227 00:B217: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x003229 00:B219: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00322B 00:B21B: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00322C 00:B21C: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00322D 00:B21D: 4C B2     .word sub_DF_B24C
- D 1 - I - 0x00322F 00:B21F: 33        .byte $33   ; 
- D 1 - I - 0x003230 00:B220: 07        .byte $07   ; 
- D 1 - I - 0x003231 00:B221: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003233 00:B223: 38        .byte $38   ; 
- D 1 - I - 0x003234 00:B224: 39        .byte $39   ; 
- D 1 - I - 0x003235 00:B225: 08        .byte $08   ; 
- D 1 - I - 0x003236 00:B226: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003238 00:B228: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003239 00:B229: 64 B2     .word sub_DF_B264
- D 1 - I - 0x00323B 00:B22B: 33        .byte $33   ; 
- D 1 - I - 0x00323C 00:B22C: 03        .byte $03   ; 
- D 1 - I - 0x00323D 00:B22D: 31        .byte $31   ; 
- D 1 - I - 0x00323E 00:B22E: 30        .byte $30   ; 
- D 1 - I - 0x00323F 00:B22F: 30        .byte $30   ; 
- D 1 - I - 0x003240 00:B230: 30        .byte $30   ; 
- D 1 - I - 0x003241 00:B231: 30        .byte $30   ; 
- D 1 - I - 0x003242 00:B232: 30        .byte $30   ; 
- D 1 - I - 0x003243 00:B233: 30        .byte $30   ; 
- D 1 - I - 0x003244 00:B234: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003245 00:B235: 4C B2     .word sub_DF_B24C
- - - - - - 0x003247 00:B237: 33        .byte $33   ; 
- - - - - - 0x003248 00:B238: 07        .byte $07   ; 
- - - - - - 0x003249 00:B239: D4        .byte con_mcb_D4, $01   ; 
- - - - - - 0x00324B 00:B23B: 38        .byte $38   ; 
- - - - - - 0x00324C 00:B23C: 39        .byte $39   ; 
- - - - - - 0x00324D 00:B23D: 38        .byte $38   ; 
- - - - - - 0x00324E 00:B23E: D4        .byte con_mcb_D4, $07   ; 
- - - - - - 0x003250 00:B240: DF        .byte con_mcb_jsr   ; 
- - - - - - 0x003251 00:B241: 64 B2     .word sub_DF_B264
- - - - - - 0x003253 00:B243: 33        .byte $33   ; 
- - - - - - 0x003254 00:B244: 03        .byte $03   ; 
- - - - - - 0x003255 00:B245: 31        .byte $31   ; 
- - - - - - 0x003256 00:B246: 30        .byte $30   ; 
- - - - - - 0x003257 00:B247: 30        .byte $30   ; 
- - - - - - 0x003258 00:B248: 30        .byte $30   ; 
- - - - - - 0x003259 00:B249: 30        .byte $30   ; 
- - - - - - 0x00325A 00:B24A: 31        .byte $31   ; 
- - - - - - 0x00325B 00:B24B: EA        .byte con_mcb_EA   ; 



sub_DF_B24C:
- D 1 - I - 0x00325C 00:B24C: 33        .byte $33   ; 
- D 1 - I - 0x00325D 00:B24D: 03        .byte $03   ; 
- D 1 - I - 0x00325E 00:B24E: 30        .byte $30   ; 
- D 1 - I - 0x00325F 00:B24F: 30        .byte $30   ; 
- D 1 - I - 0x003260 00:B250: 30        .byte $30   ; 
- D 1 - I - 0x003261 00:B251: 00        .byte $00   ; 
- D 1 - I - 0x003262 00:B252: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003264 00:B254: 38        .byte $38   ; 
- D 1 - I - 0x003265 00:B255: 39        .byte $39   ; 
- D 1 - I - 0x003266 00:B256: 08        .byte $08   ; 
- D 1 - I - 0x003267 00:B257: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003269 00:B259: 33        .byte $33   ; 
- D 1 - I - 0x00326A 00:B25A: 05        .byte $05   ; 
- D 1 - I - 0x00326B 00:B25B: 30        .byte $30   ; 
- D 1 - I - 0x00326C 00:B25C: 30        .byte $30   ; 
- D 1 - I - 0x00326D 00:B25D: 30        .byte $30   ; 
- D 1 - I - 0x00326E 00:B25E: 30        .byte $30   ; 
- D 1 - I - 0x00326F 00:B25F: 30        .byte $30   ; 
- D 1 - I - 0x003270 00:B260: 30        .byte $30   ; 
- D 1 - I - 0x003271 00:B261: 33        .byte $33   ; 
- D 1 - I - 0x003272 00:B262: 0B        .byte $0B   ; 
- D 1 - I - 0x003273 00:B263: E0        .byte con_mcb_rts   ; 



sub_DF_B264:
- D 1 - I - 0x003274 00:B264: 33        .byte $33   ; 
- D 1 - I - 0x003275 00:B265: 03        .byte $03   ; 
- D 1 - I - 0x003276 00:B266: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003278 00:B268: 30        .byte $30   ; 
- D 1 - I - 0x003279 00:B269: 30        .byte $30   ; 
- D 1 - I - 0x00327A 00:B26A: 30        .byte $30   ; 
- D 1 - I - 0x00327B 00:B26B: 00        .byte $00   ; 
- D 1 - I - 0x00327C 00:B26C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00327D 00:B26D: 33        .byte $33   ; 
- D 1 - I - 0x00327E 00:B26E: 05        .byte $05   ; 
- D 1 - I - 0x00327F 00:B26F: 30        .byte $30   ; 
- D 1 - I - 0x003280 00:B270: 30        .byte $30   ; 
- D 1 - I - 0x003281 00:B271: 30        .byte $30   ; 
- D 1 - I - 0x003282 00:B272: 30        .byte $30   ; 
- D 1 - I - 0x003283 00:B273: 30        .byte $30   ; 
- D 1 - I - 0x003284 00:B274: 30        .byte $30   ; 
- D 1 - I - 0x003285 00:B275: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003287 00:B277: 11        .byte $11   ; 
- D 1 - I - 0x003288 00:B278: 31        .byte $31   ; 
- D 1 - I - 0x003289 00:B279: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00328A 00:B27A: E0        .byte con_mcb_rts   ; 



_off005_B27B_28_ost_3:
- D 1 - I - 0x00328B 00:B27B: 85 B2     .word ch_28_B285_00
- D 1 - I - 0x00328D 00:B27D: 6A B3     .word ch_28_B36A_01
- D 1 - I - 0x00328F 00:B27F: 6F B4     .word ch_28_B46F_02
- D 1 - I - 0x003291 00:B281: 15 B5     .word ch_28_B515_03
- D 1 - I - 0x003293 00:B283: 00 00     .word $0000 ;    04



ch_28_B285_00:
- D 1 - I - 0x003295 00:B285: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003297 00:B287: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003299 00:B289: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x00329B 00:B28B: DB        .byte con_mcb_DB, $0F   ; 
- D 1 - I - 0x00329D 00:B28D: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x00329F 00:B28F: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0032A1 00:B291: E3        .byte con_mcb_E3, $10   ; 
- D 1 - I - 0x0032A3 00:B293: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032A5 00:B295: 10        .byte $10   ; 
- D 1 - I - 0x0032A6 00:B296: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0032A7 00:B297: 30        .byte $30   ; 
- D 1 - I - 0x0032A8 00:B298: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0032A9 00:B299: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0032AA 00:B29A: 19 B3     .word sub_DF_B319
- D 1 - I - 0x0032AC 00:B29C: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0032AE 00:B29E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0032AF 00:B29F: 10        .byte $10   ; 
- D 1 - I - 0x0032B0 00:B2A0: 30        .byte $30   ; 
- D 1 - I - 0x0032B1 00:B2A1: 50        .byte $50   ; 
- D 1 - I - 0x0032B2 00:B2A2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0032B3 00:B2A3: C1        .byte $C1   ; 
- D 1 - I - 0x0032B4 00:B2A4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0032B5 00:B2A5: 50        .byte $50   ; 
- D 1 - I - 0x0032B6 00:B2A6: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032B8 00:B2A8: 15        .byte $15   ; 
- D 1 - I - 0x0032B9 00:B2A9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0032BA 00:B2AA: 10        .byte $10   ; 
- D 1 - I - 0x0032BB 00:B2AB: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0032BC 00:B2AC: 30        .byte $30   ; 
- D 1 - I - 0x0032BD 00:B2AD: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0032BE 00:B2AE: 19 B3     .word sub_DF_B319
- D 1 - I - 0x0032C0 00:B2B0: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0032C2 00:B2B2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0032C3 00:B2B3: 10        .byte $10   ; 
- D 1 - I - 0x0032C4 00:B2B4: 30        .byte $30   ; 
- D 1 - I - 0x0032C5 00:B2B5: 10        .byte $10   ; 
- D 1 - I - 0x0032C6 00:B2B6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0032C7 00:B2B7: C1        .byte $C1   ; 
- D 1 - I - 0x0032C8 00:B2B8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0032C9 00:B2B9: 30        .byte $30   ; 
- D 1 - I - 0x0032CA 00:B2BA: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032CC 00:B2BC: 13        .byte $13   ; 
- D 1 - I - 0x0032CD 00:B2BD: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0032CF 00:B2BF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0032D0 00:B2C0: 10        .byte $10   ; 
- D 1 - I - 0x0032D1 00:B2C1: 30        .byte $30   ; 
- D 1 - I - 0x0032D2 00:B2C2: 50        .byte $50   ; 
- D 1 - I - 0x0032D3 00:B2C3: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032D5 00:B2C5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0032D6 00:B2C6: 35 B3     .word sub_DF_B335
- D 1 - I - 0x0032D8 00:B2C8: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0032DA 00:B2CA: 60        .byte $60   ; 
- D 1 - I - 0x0032DB 00:B2CB: 80        .byte $80   ; 
- D 1 - I - 0x0032DC 00:B2CC: 60        .byte $60   ; 
- D 1 - I - 0x0032DD 00:B2CD: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032DF 00:B2CF: 5F        .byte $5F   ; 
- D 1 - I - 0x0032E0 00:B2D0: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x0032E2 00:B2D2: 10        .byte $10   ; 
- D 1 - I - 0x0032E3 00:B2D3: 30        .byte $30   ; 
- D 1 - I - 0x0032E4 00:B2D4: 50        .byte $50   ; 
- D 1 - I - 0x0032E5 00:B2D5: 60        .byte $60   ; 
- D 1 - I - 0x0032E6 00:B2D6: 80        .byte $80   ; 
- D 1 - I - 0x0032E7 00:B2D7: A0        .byte $A0   ; 
- D 1 - I - 0x0032E8 00:B2D8: C0        .byte $C0   ; 
- D 1 - I - 0x0032E9 00:B2D9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0032EA 00:B2DA: 10        .byte $10   ; 
- D 1 - I - 0x0032EB 00:B2DB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0032EC 00:B2DC: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032EE 00:B2DE: 07        .byte $07   ; 
- D 1 - I - 0x0032EF 00:B2DF: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0032F1 00:B2E1: 10        .byte $10   ; 
- D 1 - I - 0x0032F2 00:B2E2: 30        .byte $30   ; 
- D 1 - I - 0x0032F3 00:B2E3: 50        .byte $50   ; 
- D 1 - I - 0x0032F4 00:B2E4: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0032F6 00:B2E6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0032F7 00:B2E7: 35 B3     .word sub_DF_B335
- D 1 - I - 0x0032F9 00:B2E9: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0032FB 00:B2EB: 60        .byte $60   ; 
- D 1 - I - 0x0032FC 00:B2EC: 50        .byte $50   ; 
- D 1 - I - 0x0032FD 00:B2ED: 60        .byte $60   ; 
- D 1 - I - 0x0032FE 00:B2EE: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003300 00:B2F0: 8F        .byte $8F   ; 
- D 1 - I - 0x003301 00:B2F1: 0D        .byte $0D   ; 
- D 1 - I - 0x003302 00:B2F2: 10        .byte $10   ; 
- D 1 - I - 0x003303 00:B2F3: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003304 00:B2F4: 30        .byte $30   ; 
- D 1 - I - 0x003305 00:B2F5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003306 00:B2F6: 48 B3     .word sub_DF_B348
- D 1 - I - 0x003308 00:B2F8: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00330A 00:B2FA: 61        .byte $61   ; 
- D 1 - I - 0x00330B 00:B2FB: 60        .byte $60   ; 
- D 1 - I - 0x00330C 00:B2FC: 51        .byte $51   ; 
- D 1 - I - 0x00330D 00:B2FD: 60        .byte $60   ; 
- D 1 - I - 0x00330E 00:B2FE: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003310 00:B300: 85        .byte $85   ; 
- D 1 - I - 0x003311 00:B301: 10        .byte $10   ; 
- D 1 - I - 0x003312 00:B302: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003313 00:B303: 30        .byte $30   ; 
- D 1 - I - 0x003314 00:B304: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003315 00:B305: 48 B3     .word sub_DF_B348
- D 1 - I - 0x003317 00:B307: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x003319 00:B309: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00331A 00:B30A: 10        .byte $10   ; 
- D 1 - I - 0x00331B 00:B30B: 30        .byte $30   ; 
- D 1 - I - 0x00331C 00:B30C: 10        .byte $10   ; 
- D 1 - I - 0x00331D 00:B30D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00331E 00:B30E: C1        .byte $C1   ; 
- D 1 - I - 0x00331F 00:B30F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003320 00:B310: 30        .byte $30   ; 
- D 1 - I - 0x003321 00:B311: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003323 00:B313: 15        .byte $15   ; 
- D 1 - I - 0x003324 00:B314: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003325 00:B315: 10        .byte $10   ; 
- D 1 - I - 0x003326 00:B316: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003327 00:B317: 30        .byte $30   ; 
- D 1 - I - 0x003328 00:B318: EA        .byte con_mcb_EA   ; 



sub_DF_B319:
- D 1 - I - 0x003329 00:B319: 55        .byte $55   ; 
- D 1 - I - 0x00332A 00:B31A: 11        .byte $11   ; 
- D 1 - I - 0x00332B 00:B31B: 31        .byte $31   ; 
- D 1 - I - 0x00332C 00:B31C: 81        .byte $81   ; 
- D 1 - I - 0x00332D 00:B31D: 83        .byte $83   ; 
- D 1 - I - 0x00332E 00:B31E: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x003330 00:B320: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003331 00:B321: 10        .byte $10   ; 
- D 1 - I - 0x003332 00:B322: 10        .byte $10   ; 
- D 1 - I - 0x003333 00:B323: 10        .byte $10   ; 
- D 1 - I - 0x003334 00:B324: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003335 00:B325: C0        .byte $C0   ; 
- D 1 - I - 0x003336 00:B326: A0        .byte $A0   ; 
- D 1 - I - 0x003337 00:B327: 80        .byte $80   ; 
- D 1 - I - 0x003338 00:B328: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00333A 00:B32A: 55        .byte $55   ; 
- D 1 - I - 0x00333B 00:B32B: 10        .byte $10   ; 
- D 1 - I - 0x00333C 00:B32C: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00333D 00:B32D: 30        .byte $30   ; 
- D 1 - I - 0x00333E 00:B32E: 55        .byte $55   ; 
- D 1 - I - 0x00333F 00:B32F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003340 00:B330: C1        .byte $C1   ; 
- D 1 - I - 0x003341 00:B331: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003342 00:B332: 31        .byte $31   ; 
- D 1 - I - 0x003343 00:B333: 85        .byte $85   ; 
- D 1 - I - 0x003344 00:B334: E0        .byte con_mcb_rts   ; 



sub_DF_B335:
- D 1 - I - 0x003345 00:B335: 6F        .byte $6F   ; 
- D 1 - I - 0x003346 00:B336: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x003348 00:B338: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003349 00:B339: 60        .byte $60   ; 
- D 1 - I - 0x00334A 00:B33A: 50        .byte $50   ; 
- D 1 - I - 0x00334B 00:B33B: 30        .byte $30   ; 
- D 1 - I - 0x00334C 00:B33C: 10        .byte $10   ; 
- D 1 - I - 0x00334D 00:B33D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00334E 00:B33E: C0        .byte $C0   ; 
- D 1 - I - 0x00334F 00:B33F: A0        .byte $A0   ; 
- D 1 - I - 0x003350 00:B340: C0        .byte $C0   ; 
- D 1 - I - 0x003351 00:B341: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003352 00:B342: 10        .byte $10   ; 
- D 1 - I - 0x003353 00:B343: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003354 00:B344: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003356 00:B346: 07        .byte $07   ; 
- D 1 - I - 0x003357 00:B347: E0        .byte con_mcb_rts   ; 



sub_DF_B348:
- D 1 - I - 0x003358 00:B348: 53        .byte $53   ; 
- D 1 - I - 0x003359 00:B349: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00335B 00:B34B: 11        .byte $11   ; 
- D 1 - I - 0x00335C 00:B34C: A0        .byte $A0   ; 
- D 1 - I - 0x00335D 00:B34D: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00335F 00:B34F: 87        .byte $87   ; 
- D 1 - I - 0x003360 00:B350: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x003362 00:B352: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003363 00:B353: 11        .byte $11   ; 
- D 1 - I - 0x003364 00:B354: 10        .byte $10   ; 
- D 1 - I - 0x003365 00:B355: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003366 00:B356: C0        .byte $C0   ; 
- D 1 - I - 0x003367 00:B357: C0        .byte $C0   ; 
- D 1 - I - 0x003368 00:B358: A0        .byte $A0   ; 
- D 1 - I - 0x003369 00:B359: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00336B 00:B35B: 85        .byte $85   ; 
- D 1 - I - 0x00336C 00:B35C: 30        .byte $30   ; 
- D 1 - I - 0x00336D 00:B35D: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00336E 00:B35E: 50        .byte $50   ; 
- D 1 - I - 0x00336F 00:B35F: 63        .byte $63   ; 
- D 1 - I - 0x003370 00:B360: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x003372 00:B362: 51        .byte $51   ; 
- D 1 - I - 0x003373 00:B363: 30        .byte $30   ; 
- D 1 - I - 0x003374 00:B364: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003376 00:B366: 51        .byte $51   ; 
- D 1 - I - 0x003377 00:B367: 61        .byte $61   ; 
- D 1 - I - 0x003378 00:B368: 83        .byte $83   ; 
- D 1 - I - 0x003379 00:B369: E0        .byte con_mcb_rts   ; 



ch_28_B36A_01:
- D 1 - I - 0x00337A 00:B36A: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x00337C 00:B36C: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x00337E 00:B36E: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003380 00:B370: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x003382 00:B372: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x003384 00:B374: E3        .byte con_mcb_E3, $16   ; 
- D 1 - I - 0x003386 00:B376: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003388 00:B378: 01        .byte $01   ; 
- D 1 - I - 0x003389 00:B379: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00338A 00:B37A: 11        .byte $11   ; 
- D 1 - I - 0x00338B 00:B37B: 51        .byte $51   ; 
- D 1 - I - 0x00338C 00:B37C: 81        .byte $81   ; 
- D 1 - I - 0x00338D 00:B37D: 50        .byte $50   ; 
- D 1 - I - 0x00338E 00:B37E: 11        .byte $11   ; 
- D 1 - I - 0x00338F 00:B37F: 51        .byte $51   ; 
- D 1 - I - 0x003390 00:B380: 81        .byte $81   ; 
- D 1 - I - 0x003391 00:B381: 51        .byte $51   ; 
- D 1 - I - 0x003392 00:B382: 50        .byte $50   ; 
- D 1 - I - 0x003393 00:B383: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003394 00:B384: 0A B4     .word sub_DF_B40A
- D 1 - I - 0x003396 00:B386: 11        .byte $11   ; 
- D 1 - I - 0x003397 00:B387: 51        .byte $51   ; 
- D 1 - I - 0x003398 00:B388: 80        .byte $80   ; 
- D 1 - I - 0x003399 00:B389: 80        .byte $80   ; 
- D 1 - I - 0x00339A 00:B38A: 50        .byte $50   ; 
- D 1 - I - 0x00339B 00:B38B: 13        .byte $13   ; 
- D 1 - I - 0x00339C 00:B38C: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00339D 00:B38D: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x00339F 00:B38F: 50        .byte $50   ; 
- D 1 - I - 0x0033A0 00:B390: 30        .byte $30   ; 
- D 1 - I - 0x0033A1 00:B391: 50        .byte $50   ; 
- D 1 - I - 0x0033A2 00:B392: 80        .byte $80   ; 
- D 1 - I - 0x0033A3 00:B393: 60        .byte $60   ; 
- D 1 - I - 0x0033A4 00:B394: 50        .byte $50   ; 
- D 1 - I - 0x0033A5 00:B395: 30        .byte $30   ; 
- D 1 - I - 0x0033A6 00:B396: 10        .byte $10   ; 
- D 1 - I - 0x0033A7 00:B397: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0033A8 00:B398: C0        .byte $C0   ; 
- D 1 - I - 0x0033A9 00:B399: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0033AA 00:B39A: 10        .byte $10   ; 
- D 1 - I - 0x0033AB 00:B39B: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0033AD 00:B39D: 11        .byte $11   ; 
- D 1 - I - 0x0033AE 00:B39E: 51        .byte $51   ; 
- D 1 - I - 0x0033AF 00:B39F: 81        .byte $81   ; 
- D 1 - I - 0x0033B0 00:B3A0: 50        .byte $50   ; 
- D 1 - I - 0x0033B1 00:B3A1: 11        .byte $11   ; 
- D 1 - I - 0x0033B2 00:B3A2: 51        .byte $51   ; 
- D 1 - I - 0x0033B3 00:B3A3: 81        .byte $81   ; 
- D 1 - I - 0x0033B4 00:B3A4: 51        .byte $51   ; 
- D 1 - I - 0x0033B5 00:B3A5: 30        .byte $30   ; 
- D 1 - I - 0x0033B6 00:B3A6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0033B7 00:B3A7: 0A B4     .word sub_DF_B40A
- D 1 - I - 0x0033B9 00:B3A9: 11        .byte $11   ; 
- D 1 - I - 0x0033BA 00:B3AA: 51        .byte $51   ; 
- D 1 - I - 0x0033BB 00:B3AB: 31        .byte $31   ; 
- D 1 - I - 0x0033BC 00:B3AC: 31        .byte $31   ; 
- D 1 - I - 0x0033BD 00:B3AD: 53        .byte $53   ; 
- D 1 - I - 0x0033BE 00:B3AE: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0033C0 00:B3B0: 60        .byte $60   ; 
- D 1 - I - 0x0033C1 00:B3B1: 60        .byte $60   ; 
- D 1 - I - 0x0033C2 00:B3B2: A0        .byte $A0   ; 
- D 1 - I - 0x0033C3 00:B3B3: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0033C5 00:B3B5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0033C6 00:B3B6: 1E B4     .word sub_DF_B41E
- D 1 - I - 0x0033C8 00:B3B8: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0033CA 00:B3BA: 11        .byte $11   ; 
- D 1 - I - 0x0033CB 00:B3BB: 51        .byte $51   ; 
- D 1 - I - 0x0033CC 00:B3BC: 81        .byte $81   ; 
- D 1 - I - 0x0033CD 00:B3BD: 50        .byte $50   ; 
- D 1 - I - 0x0033CE 00:B3BE: 11        .byte $11   ; 
- D 1 - I - 0x0033CF 00:B3BF: 51        .byte $51   ; 
- D 1 - I - 0x0033D0 00:B3C0: 81        .byte $81   ; 
- D 1 - I - 0x0033D1 00:B3C1: 51        .byte $51   ; 
- D 1 - I - 0x0033D2 00:B3C2: 50        .byte $50   ; 
- D 1 - I - 0x0033D3 00:B3C3: 11        .byte $11   ; 
- D 1 - I - 0x0033D4 00:B3C4: 51        .byte $51   ; 
- D 1 - I - 0x0033D5 00:B3C5: 80        .byte $80   ; 
- D 1 - I - 0x0033D6 00:B3C6: 80        .byte $80   ; 
- D 1 - I - 0x0033D7 00:B3C7: 50        .byte $50   ; 
- D 1 - I - 0x0033D8 00:B3C8: 11        .byte $11   ; 
- D 1 - I - 0x0033D9 00:B3C9: 51        .byte $51   ; 
- D 1 - I - 0x0033DA 00:B3CA: 81        .byte $81   ; 
- D 1 - I - 0x0033DB 00:B3CB: 51        .byte $51   ; 
- D 1 - I - 0x0033DC 00:B3CC: 30        .byte $30   ; 
- D 1 - I - 0x0033DD 00:B3CD: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0033DE 00:B3CE: 1E B4     .word sub_DF_B41E
- D 1 - I - 0x0033E0 00:B3D0: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0033E2 00:B3D2: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x0033E4 00:B3D4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0033E5 00:B3D5: C0        .byte $C0   ; 
- D 1 - I - 0x0033E6 00:B3D6: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0033E7 00:B3D7: 60        .byte $60   ; 
- D 1 - I - 0x0033E8 00:B3D8: 30        .byte $30   ; 
- D 1 - I - 0x0033E9 00:B3D9: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0033EA 00:B3DA: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0033EC 00:B3DC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0033ED 00:B3DD: 80        .byte $80   ; 
- D 1 - I - 0x0033EE 00:B3DE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0033EF 00:B3DF: 30        .byte $30   ; 
- D 1 - I - 0x0033F0 00:B3E0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0033F1 00:B3E1: C0        .byte $C0   ; 
- D 1 - I - 0x0033F2 00:B3E2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0033F3 00:B3E3: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0033F4 00:B3E4: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0033F6 00:B3E6: 63        .byte $63   ; 
- D 1 - I - 0x0033F7 00:B3E7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0033F8 00:B3E8: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x0033FA 00:B3EA: 80        .byte $80   ; 
- D 1 - I - 0x0033FB 00:B3EB: A0        .byte $A0   ; 
- D 1 - I - 0x0033FC 00:B3EC: C0        .byte $C0   ; 
- D 1 - I - 0x0033FD 00:B3ED: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0033FE 00:B3EE: 10        .byte $10   ; 
- D 1 - I - 0x0033FF 00:B3EF: 30        .byte $30   ; 
- D 1 - I - 0x003400 00:B3F0: 50        .byte $50   ; 
- D 1 - I - 0x003401 00:B3F1: 60        .byte $60   ; 
- D 1 - I - 0x003402 00:B3F2: 80        .byte $80   ; 
- D 1 - I - 0x003403 00:B3F3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003404 00:B3F4: 42 B4     .word sub_DF_B442
- D 1 - I - 0x003406 00:B3F6: 51        .byte $51   ; 
- D 1 - I - 0x003407 00:B3F7: 30        .byte $30   ; 
- D 1 - I - 0x003408 00:B3F8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003409 00:B3F9: 42 B4     .word sub_DF_B442
- D 1 - I - 0x00340B 00:B3FB: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x00340D 00:B3FD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00340E 00:B3FE: 10        .byte $10   ; 
- D 1 - I - 0x00340F 00:B3FF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003410 00:B400: 80        .byte $80   ; 
- D 1 - I - 0x003411 00:B401: 50        .byte $50   ; 
- D 1 - I - 0x003412 00:B402: 10        .byte $10   ; 
- D 1 - I - 0x003413 00:B403: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003414 00:B404: 80        .byte $80   ; 
- D 1 - I - 0x003415 00:B405: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003416 00:B406: 10        .byte $10   ; 
- D 1 - I - 0x003417 00:B407: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003419 00:B409: EA        .byte con_mcb_EA   ; 



sub_DF_B40A:
- D 1 - I - 0x00341A 00:B40A: 11        .byte $11   ; 
- D 1 - I - 0x00341B 00:B40B: 51        .byte $51   ; 
- D 1 - I - 0x00341C 00:B40C: 80        .byte $80   ; 
- D 1 - I - 0x00341D 00:B40D: 80        .byte $80   ; 
- D 1 - I - 0x00341E 00:B40E: 50        .byte $50   ; 
- D 1 - I - 0x00341F 00:B40F: 11        .byte $11   ; 
- D 1 - I - 0x003420 00:B410: 51        .byte $51   ; 
- D 1 - I - 0x003421 00:B411: 81        .byte $81   ; 
- D 1 - I - 0x003422 00:B412: 51        .byte $51   ; 
- D 1 - I - 0x003423 00:B413: 30        .byte $30   ; 
- D 1 - I - 0x003424 00:B414: 11        .byte $11   ; 
- D 1 - I - 0x003425 00:B415: 51        .byte $51   ; 
- D 1 - I - 0x003426 00:B416: 81        .byte $81   ; 
- D 1 - I - 0x003427 00:B417: 50        .byte $50   ; 
- D 1 - I - 0x003428 00:B418: 11        .byte $11   ; 
- D 1 - I - 0x003429 00:B419: 51        .byte $51   ; 
- D 1 - I - 0x00342A 00:B41A: 81        .byte $81   ; 
- D 1 - I - 0x00342B 00:B41B: 51        .byte $51   ; 
- D 1 - I - 0x00342C 00:B41C: 50        .byte $50   ; 
- D 1 - I - 0x00342D 00:B41D: E0        .byte con_mcb_rts   ; 



sub_DF_B41E:
- D 1 - I - 0x00342E 00:B41E: 61        .byte $61   ; 
- D 1 - I - 0x00342F 00:B41F: A1        .byte $A1   ; 
- D 1 - I - 0x003430 00:B420: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003431 00:B421: 11        .byte $11   ; 
- D 1 - I - 0x003432 00:B422: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003433 00:B423: A0        .byte $A0   ; 
- D 1 - I - 0x003434 00:B424: 61        .byte $61   ; 
- D 1 - I - 0x003435 00:B425: A1        .byte $A1   ; 
- D 1 - I - 0x003436 00:B426: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003437 00:B427: 11        .byte $11   ; 
- D 1 - I - 0x003438 00:B428: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003439 00:B429: A1        .byte $A1   ; 
- D 1 - I - 0x00343A 00:B42A: 80        .byte $80   ; 
- D 1 - I - 0x00343B 00:B42B: 61        .byte $61   ; 
- D 1 - I - 0x00343C 00:B42C: A1        .byte $A1   ; 
- D 1 - I - 0x00343D 00:B42D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00343E 00:B42E: 10        .byte $10   ; 
- D 1 - I - 0x00343F 00:B42F: 10        .byte $10   ; 
- D 1 - I - 0x003440 00:B430: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003441 00:B431: A0        .byte $A0   ; 
- D 1 - I - 0x003442 00:B432: 61        .byte $61   ; 
- D 1 - I - 0x003443 00:B433: A1        .byte $A1   ; 
- D 1 - I - 0x003444 00:B434: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003445 00:B435: 11        .byte $11   ; 
- D 1 - I - 0x003446 00:B436: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003447 00:B437: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x003449 00:B439: C0        .byte $C0   ; 
- D 1 - I - 0x00344A 00:B43A: A0        .byte $A0   ; 
- D 1 - I - 0x00344B 00:B43B: 80        .byte $80   ; 
- D 1 - I - 0x00344C 00:B43C: 60        .byte $60   ; 
- D 1 - I - 0x00344D 00:B43D: 50        .byte $50   ; 
- D 1 - I - 0x00344E 00:B43E: 60        .byte $60   ; 
- D 1 - I - 0x00344F 00:B43F: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003451 00:B441: E0        .byte con_mcb_rts   ; 



sub_DF_B442:
- D 1 - I - 0x003452 00:B442: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003454 00:B444: 11        .byte $11   ; 
- D 1 - I - 0x003455 00:B445: 51        .byte $51   ; 
- D 1 - I - 0x003456 00:B446: 81        .byte $81   ; 
- D 1 - I - 0x003457 00:B447: 50        .byte $50   ; 
- D 1 - I - 0x003458 00:B448: 11        .byte $11   ; 
- D 1 - I - 0x003459 00:B449: 51        .byte $51   ; 
- D 1 - I - 0x00345A 00:B44A: 81        .byte $81   ; 
- D 1 - I - 0x00345B 00:B44B: 51        .byte $51   ; 
- D 1 - I - 0x00345C 00:B44C: 50        .byte $50   ; 
- D 1 - I - 0x00345D 00:B44D: 11        .byte $11   ; 
- D 1 - I - 0x00345E 00:B44E: 51        .byte $51   ; 
- D 1 - I - 0x00345F 00:B44F: 80        .byte $80   ; 
- D 1 - I - 0x003460 00:B450: 80        .byte $80   ; 
- D 1 - I - 0x003461 00:B451: 50        .byte $50   ; 
- D 1 - I - 0x003462 00:B452: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003463 00:B453: C1        .byte $C1   ; 
- D 1 - I - 0x003464 00:B454: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003465 00:B455: 51        .byte $51   ; 
- D 1 - I - 0x003466 00:B456: 81        .byte $81   ; 
- D 1 - I - 0x003467 00:B457: 51        .byte $51   ; 
- D 1 - I - 0x003468 00:B458: 30        .byte $30   ; 
- D 1 - I - 0x003469 00:B459: 61        .byte $61   ; 
- D 1 - I - 0x00346A 00:B45A: A1        .byte $A1   ; 
- D 1 - I - 0x00346B 00:B45B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00346C 00:B45C: 11        .byte $11   ; 
- D 1 - I - 0x00346D 00:B45D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00346E 00:B45E: A0        .byte $A0   ; 
- D 1 - I - 0x00346F 00:B45F: 61        .byte $61   ; 
- D 1 - I - 0x003470 00:B460: A1        .byte $A1   ; 
- D 1 - I - 0x003471 00:B461: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003472 00:B462: 11        .byte $11   ; 
- D 1 - I - 0x003473 00:B463: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003474 00:B464: A1        .byte $A1   ; 
- D 1 - I - 0x003475 00:B465: 80        .byte $80   ; 
- D 1 - I - 0x003476 00:B466: 11        .byte $11   ; 
- D 1 - I - 0x003477 00:B467: 51        .byte $51   ; 
- D 1 - I - 0x003478 00:B468: 10        .byte $10   ; 
- D 1 - I - 0x003479 00:B469: 10        .byte $10   ; 
- D 1 - I - 0x00347A 00:B46A: 50        .byte $50   ; 
- D 1 - I - 0x00347B 00:B46B: 11        .byte $11   ; 
- D 1 - I - 0x00347C 00:B46C: 51        .byte $51   ; 
- D 1 - I - 0x00347D 00:B46D: 81        .byte $81   ; 
- D 1 - I - 0x00347E 00:B46E: E0        .byte con_mcb_rts   ; 



ch_28_B46F_02:
- D 1 - I - 0x00347F 00:B46F: DC        .byte con_mcb_DC, $04   ; 
- D 1 - I - 0x003481 00:B471: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003483 00:B473: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003485 00:B475: 01        .byte $01   ; 
- D 1 - I - 0x003486 00:B476: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003487 00:B477: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003488 00:B478: D3 B4     .word sub_DF_B4D3
- D 1 - I - 0x00348A 00:B47A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00348B 00:B47B: 11        .byte $11   ; 
- D 1 - I - 0x00348C 00:B47C: 00        .byte $00   ; 
- D 1 - I - 0x00348D 00:B47D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00348E 00:B47E: 12        .byte $12   ; 
- D 1 - I - 0x00348F 00:B47F: 80        .byte $80   ; 
- D 1 - I - 0x003490 00:B480: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003491 00:B481: 10        .byte $10   ; 
- D 1 - I - 0x003492 00:B482: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003493 00:B483: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003494 00:B484: D3 B4     .word sub_DF_B4D3
- D 1 - I - 0x003496 00:B486: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003497 00:B487: 13        .byte $13   ; 
- D 1 - I - 0x003498 00:B488: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003499 00:B489: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00349B 00:B48B: 10        .byte $10   ; 
- D 1 - I - 0x00349C 00:B48C: 30        .byte $30   ; 
- D 1 - I - 0x00349D 00:B48D: 60        .byte $60   ; 
- D 1 - I - 0x00349E 00:B48E: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0034A0 00:B490: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0034A1 00:B491: E6 B4     .word sub_DF_B4E6
- D 1 - I - 0x0034A3 00:B493: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0034A5 00:B495: 12        .byte $12   ; 
- D 1 - I - 0x0034A6 00:B496: 80        .byte $80   ; 
- D 1 - I - 0x0034A7 00:B497: 82        .byte $82   ; 
- D 1 - I - 0x0034A8 00:B498: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034A9 00:B499: 10        .byte $10   ; 
- D 1 - I - 0x0034AA 00:B49A: 12        .byte $12   ; 
- D 1 - I - 0x0034AB 00:B49B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034AC 00:B49C: 80        .byte $80   ; 
- D 1 - I - 0x0034AD 00:B49D: 81        .byte $81   ; 
- D 1 - I - 0x0034AE 00:B49E: 11        .byte $11   ; 
- D 1 - I - 0x0034AF 00:B49F: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0034B0 00:B4A0: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0034B1 00:B4A1: E6 B4     .word sub_DF_B4E6
- D 1 - I - 0x0034B3 00:B4A3: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x0034B5 00:B4A5: 82        .byte $82   ; 
- D 1 - I - 0x0034B6 00:B4A6: 80        .byte $80   ; 
- D 1 - I - 0x0034B7 00:B4A7: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0034B8 00:B4A8: C3        .byte $C3   ; 
- D 1 - I - 0x0034B9 00:B4A9: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x0034BB 00:B4AB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034BC 00:B4AC: 30        .byte $30   ; 
- D 1 - I - 0x0034BD 00:B4AD: 30        .byte $30   ; 
- D 1 - I - 0x0034BE 00:B4AE: 30        .byte $30   ; 
- D 1 - I - 0x0034BF 00:B4AF: 20        .byte $20   ; 
- D 1 - I - 0x0034C0 00:B4B0: 20        .byte $20   ; 
- D 1 - I - 0x0034C1 00:B4B1: 20        .byte $20   ; 
- D 1 - I - 0x0034C2 00:B4B2: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0034C4 00:B4B4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034C5 00:B4B5: 87        .byte $87   ; 
- D 1 - I - 0x0034C6 00:B4B6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0034C7 00:B4B7: F6 B4     .word sub_DF_B4F6
- D 1 - I - 0x0034C9 00:B4B9: 12        .byte $12   ; 
- D 1 - I - 0x0034CA 00:B4BA: 80        .byte $80   ; 
- D 1 - I - 0x0034CB 00:B4BB: 82        .byte $82   ; 
- D 1 - I - 0x0034CC 00:B4BC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034CD 00:B4BD: 10        .byte $10   ; 
- D 1 - I - 0x0034CE 00:B4BE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034CF 00:B4BF: 12        .byte $12   ; 
- D 1 - I - 0x0034D0 00:B4C0: 80        .byte $80   ; 
- D 1 - I - 0x0034D1 00:B4C1: 81        .byte $81   ; 
- D 1 - I - 0x0034D2 00:B4C2: 71        .byte $71   ; 
- D 1 - I - 0x0034D3 00:B4C3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0034D4 00:B4C4: F6 B4     .word sub_DF_B4F6
- D 1 - I - 0x0034D6 00:B4C6: 11        .byte $11   ; 
- D 1 - I - 0x0034D7 00:B4C7: 82        .byte $82   ; 
- D 1 - I - 0x0034D8 00:B4C8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034D9 00:B4C9: 31        .byte $31   ; 
- D 1 - I - 0x0034DA 00:B4CA: 12        .byte $12   ; 
- D 1 - I - 0x0034DB 00:B4CB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034DC 00:B4CC: 00        .byte $00   ; 
- D 1 - I - 0x0034DD 00:B4CD: 12        .byte $12   ; 
- D 1 - I - 0x0034DE 00:B4CE: 80        .byte $80   ; 
- D 1 - I - 0x0034DF 00:B4CF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034E0 00:B4D0: 10        .byte $10   ; 
- D 1 - I - 0x0034E1 00:B4D1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034E2 00:B4D2: EA        .byte con_mcb_EA   ; 



sub_DF_B4D3:
- D 1 - I - 0x0034E3 00:B4D3: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x0034E5 00:B4D5: 11        .byte $11   ; 
- D 1 - I - 0x0034E6 00:B4D6: 80        .byte $80   ; 
- D 1 - I - 0x0034E7 00:B4D7: 82        .byte $82   ; 
- D 1 - I - 0x0034E8 00:B4D8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034E9 00:B4D9: 10        .byte $10   ; 
- D 1 - I - 0x0034EA 00:B4DA: 12        .byte $12   ; 
- D 1 - I - 0x0034EB 00:B4DB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034EC 00:B4DC: 80        .byte $80   ; 
- D 1 - I - 0x0034ED 00:B4DD: 82        .byte $82   ; 
- D 1 - I - 0x0034EE 00:B4DE: 11        .byte $11   ; 
- D 1 - I - 0x0034EF 00:B4DF: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0034F0 00:B4E0: 12        .byte $12   ; 
- D 1 - I - 0x0034F1 00:B4E1: 82        .byte $82   ; 
- D 1 - I - 0x0034F2 00:B4E2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034F3 00:B4E3: 31        .byte $31   ; 
- D 1 - I - 0x0034F4 00:B4E4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034F5 00:B4E5: E0        .byte con_mcb_rts   ; 



sub_DF_B4E6:
- D 1 - I - 0x0034F6 00:B4E6: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0034F8 00:B4E8: 62        .byte $62   ; 
- D 1 - I - 0x0034F9 00:B4E9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0034FA 00:B4EA: 10        .byte $10   ; 
- D 1 - I - 0x0034FB 00:B4EB: 12        .byte $12   ; 
- D 1 - I - 0x0034FC 00:B4EC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0034FD 00:B4ED: 60        .byte $60   ; 
- D 1 - I - 0x0034FE 00:B4EE: 62        .byte $62   ; 
- D 1 - I - 0x0034FF 00:B4EF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003500 00:B4F0: 10        .byte $10   ; 
- D 1 - I - 0x003501 00:B4F1: 11        .byte $11   ; 
- D 1 - I - 0x003502 00:B4F2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003503 00:B4F3: 61        .byte $61   ; 
- D 1 - I - 0x003504 00:B4F4: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003505 00:B4F5: E0        .byte con_mcb_rts   ; 



sub_DF_B4F6:
- D 1 - I - 0x003506 00:B4F6: 12        .byte $12   ; 
- D 1 - I - 0x003507 00:B4F7: 80        .byte $80   ; 
- D 1 - I - 0x003508 00:B4F8: 82        .byte $82   ; 
- D 1 - I - 0x003509 00:B4F9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00350A 00:B4FA: 10        .byte $10   ; 
- D 1 - I - 0x00350B 00:B4FB: 12        .byte $12   ; 
- D 1 - I - 0x00350C 00:B4FC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00350D 00:B4FD: 80        .byte $80   ; 
- D 1 - I - 0x00350E 00:B4FE: 81        .byte $81   ; 
- D 1 - I - 0x00350F 00:B4FF: 11        .byte $11   ; 
- D 1 - I - 0x003510 00:B500: 12        .byte $12   ; 
- D 1 - I - 0x003511 00:B501: 80        .byte $80   ; 
- D 1 - I - 0x003512 00:B502: 82        .byte $82   ; 
- D 1 - I - 0x003513 00:B503: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003514 00:B504: 10        .byte $10   ; 
- D 1 - I - 0x003515 00:B505: 12        .byte $12   ; 
- D 1 - I - 0x003516 00:B506: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003517 00:B507: 80        .byte $80   ; 
- D 1 - I - 0x003518 00:B508: 81        .byte $81   ; 
- D 1 - I - 0x003519 00:B509: 71        .byte $71   ; 
- D 1 - I - 0x00351A 00:B50A: 62        .byte $62   ; 
- D 1 - I - 0x00351B 00:B50B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00351C 00:B50C: 12        .byte $12   ; 
- D 1 - I - 0x00351D 00:B50D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00351E 00:B50E: 81        .byte $81   ; 
- D 1 - I - 0x00351F 00:B50F: 62        .byte $62   ; 
- D 1 - I - 0x003520 00:B510: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003521 00:B511: 12        .byte $12   ; 
- D 1 - I - 0x003522 00:B512: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003523 00:B513: 21        .byte $21   ; 
- D 1 - I - 0x003524 00:B514: E0        .byte con_mcb_rts   ; 



ch_28_B515_03:
- D 1 - I - 0x003525 00:B515: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x003527 00:B517: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x003529 00:B519: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00352B 00:B51B: 01        .byte $01   ; 
- D 1 - I - 0x00352C 00:B51C: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00352D 00:B51D: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x00352F 00:B51F: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003530 00:B520: 87 B5     .word sub_DF_B587
- D 1 - I - 0x003532 00:B522: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003533 00:B523: 11        .byte $11   ; 
- D 1 - I - 0x003534 00:B524: 11        .byte $11   ; 
- D 1 - I - 0x003535 00:B525: 31        .byte $31   ; 
- D 1 - I - 0x003536 00:B526: 10        .byte $10   ; 
- D 1 - I - 0x003537 00:B527: 30        .byte $30   ; 
- D 1 - I - 0x003538 00:B528: 10        .byte $10   ; 
- D 1 - I - 0x003539 00:B529: 10        .byte $10   ; 
- D 1 - I - 0x00353A 00:B52A: 31        .byte $31   ; 
- D 1 - I - 0x00353B 00:B52B: 30        .byte $30   ; 
- D 1 - I - 0x00353C 00:B52C: 30        .byte $30   ; 
- D 1 - I - 0x00353D 00:B52D: 31        .byte $31   ; 
- D 1 - I - 0x00353E 00:B52E: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003540 00:B530: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003541 00:B531: 87 B5     .word sub_DF_B587
- D 1 - I - 0x003543 00:B533: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003544 00:B534: 11        .byte $11   ; 
- D 1 - I - 0x003545 00:B535: 11        .byte $11   ; 
- D 1 - I - 0x003546 00:B536: 31        .byte $31   ; 
- D 1 - I - 0x003547 00:B537: 10        .byte $10   ; 
- D 1 - I - 0x003548 00:B538: 30        .byte $30   ; 
- D 1 - I - 0x003549 00:B539: 10        .byte $10   ; 
- D 1 - I - 0x00354A 00:B53A: 30        .byte $30   ; 
- D 1 - I - 0x00354B 00:B53B: 10        .byte $10   ; 
- D 1 - I - 0x00354C 00:B53C: 30        .byte $30   ; 
- D 1 - I - 0x00354D 00:B53D: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00354F 00:B53F: 30        .byte $30   ; 
- D 1 - I - 0x003550 00:B540: 30        .byte $30   ; 
- D 1 - I - 0x003551 00:B541: 30        .byte $30   ; 
- D 1 - I - 0x003552 00:B542: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003554 00:B544: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x003556 00:B546: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003557 00:B547: 87 B5     .word sub_DF_B587
- D 1 - I - 0x003559 00:B549: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00355A 00:B54A: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x00355C 00:B54C: D4        .byte con_mcb_D4, $08   ; 
- D 1 - I - 0x00355E 00:B54E: 10        .byte $10   ; 
- D 1 - I - 0x00355F 00:B54F: 10        .byte $10   ; 
- D 1 - I - 0x003560 00:B550: 30        .byte $30   ; 
- D 1 - I - 0x003561 00:B551: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003562 00:B552: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003564 00:B554: 33        .byte $33   ; 
- D 1 - I - 0x003565 00:B555: D4        .byte con_mcb_D4, $04   ; 
- D 1 - I - 0x003567 00:B557: 31        .byte $31   ; 
- D 1 - I - 0x003568 00:B558: 30        .byte $30   ; 
- D 1 - I - 0x003569 00:B559: 31        .byte $31   ; 
- D 1 - I - 0x00356A 00:B55A: 30        .byte $30   ; 
- D 1 - I - 0x00356B 00:B55B: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00356D 00:B55D: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x00356F 00:B55F: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003570 00:B560: 87 B5     .word sub_DF_B587
- D 1 - I - 0x003572 00:B562: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003573 00:B563: 11        .byte $11   ; 
- D 1 - I - 0x003574 00:B564: 11        .byte $11   ; 
- D 1 - I - 0x003575 00:B565: 31        .byte $31   ; 
- D 1 - I - 0x003576 00:B566: 10        .byte $10   ; 
- D 1 - I - 0x003577 00:B567: 30        .byte $30   ; 
- D 1 - I - 0x003578 00:B568: 10        .byte $10   ; 
- D 1 - I - 0x003579 00:B569: 10        .byte $10   ; 
- D 1 - I - 0x00357A 00:B56A: 31        .byte $31   ; 
- D 1 - I - 0x00357B 00:B56B: 30        .byte $30   ; 
- D 1 - I - 0x00357C 00:B56C: 30        .byte $30   ; 
- D 1 - I - 0x00357D 00:B56D: 31        .byte $31   ; 
- D 1 - I - 0x00357E 00:B56E: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003580 00:B570: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003581 00:B571: 87 B5     .word sub_DF_B587
- D 1 - I - 0x003583 00:B573: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003584 00:B574: 11        .byte $11   ; 
- D 1 - I - 0x003585 00:B575: 11        .byte $11   ; 
- D 1 - I - 0x003586 00:B576: 31        .byte $31   ; 
- D 1 - I - 0x003587 00:B577: 10        .byte $10   ; 
- D 1 - I - 0x003588 00:B578: 30        .byte $30   ; 
- D 1 - I - 0x003589 00:B579: 10        .byte $10   ; 
- D 1 - I - 0x00358A 00:B57A: 10        .byte $10   ; 
- D 1 - I - 0x00358B 00:B57B: 30        .byte $30   ; 
- D 1 - I - 0x00358C 00:B57C: 30        .byte $30   ; 
- D 1 - I - 0x00358D 00:B57D: D4        .byte con_mcb_D4, $04   ; 
- D 1 - I - 0x00358F 00:B57F: 30        .byte $30   ; 
- D 1 - I - 0x003590 00:B580: 30        .byte $30   ; 
- D 1 - I - 0x003591 00:B581: 30        .byte $30   ; 
- D 1 - I - 0x003592 00:B582: 31        .byte $31   ; 
- D 1 - I - 0x003593 00:B583: 30        .byte $30   ; 
- D 1 - I - 0x003594 00:B584: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003596 00:B586: EA        .byte con_mcb_EA   ; 



sub_DF_B587:
- D 1 - I - 0x003597 00:B587: 11        .byte $11   ; 
- D 1 - I - 0x003598 00:B588: 11        .byte $11   ; 
- D 1 - I - 0x003599 00:B589: 31        .byte $31   ; 
- D 1 - I - 0x00359A 00:B58A: 10        .byte $10   ; 
- D 1 - I - 0x00359B 00:B58B: 30        .byte $30   ; 
- D 1 - I - 0x00359C 00:B58C: 10        .byte $10   ; 
- D 1 - I - 0x00359D 00:B58D: 30        .byte $30   ; 
- D 1 - I - 0x00359E 00:B58E: 10        .byte $10   ; 
- D 1 - I - 0x00359F 00:B58F: 30        .byte $30   ; 
- D 1 - I - 0x0035A0 00:B590: 33        .byte $33   ; 
- D 1 - I - 0x0035A1 00:B591: E0        .byte con_mcb_rts   ; 



_off005_B592_29_ost_6:
- D 1 - I - 0x0035A2 00:B592: 9C B5     .word ch_29_B59C_00
- D 1 - I - 0x0035A4 00:B594: FE B5     .word ch_29_B5FE_01
- D 1 - I - 0x0035A6 00:B596: AA B6     .word ch_29_B6AA_02
- D 1 - I - 0x0035A8 00:B598: 26 B7     .word ch_29_B726_03
- D 1 - I - 0x0035AA 00:B59A: 00 00     .word $0000 ;    04



ch_29_B59C_00:
- D 1 - I - 0x0035AC 00:B59C: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x0035AE 00:B59E: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x0035B0 00:B5A0: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x0035B2 00:B5A2: DB        .byte con_mcb_DB, $0F   ; 
- D 1 - I - 0x0035B4 00:B5A4: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x0035B6 00:B5A6: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x0035B8 00:B5A8: E3        .byte con_mcb_E3, $11   ; 
- D 1 - I - 0x0035BA 00:B5AA: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0035BC 00:B5AC: 31        .byte $31   ; 
- D 1 - I - 0x0035BD 00:B5AD: 51        .byte $51   ; 
- D 1 - I - 0x0035BE 00:B5AE: 61        .byte $61   ; 
- D 1 - I - 0x0035BF 00:B5AF: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0035C0 00:B5B0: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0035C1 00:B5B1: ED B5     .word sub_DF_B5ED
- D 1 - I - 0x0035C3 00:B5B3: 17        .byte $17   ; 
- D 1 - I - 0x0035C4 00:B5B4: 01        .byte $01   ; 
- D 1 - I - 0x0035C5 00:B5B5: 51        .byte $51   ; 
- D 1 - I - 0x0035C6 00:B5B6: 51        .byte $51   ; 
- D 1 - I - 0x0035C7 00:B5B7: 51        .byte $51   ; 
- D 1 - I - 0x0035C8 00:B5B8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0035C9 00:B5B9: ED B5     .word sub_DF_B5ED
- D 1 - I - 0x0035CB 00:B5BB: 51        .byte $51   ; 
- D 1 - I - 0x0035CC 00:B5BC: 83        .byte $83   ; 
- D 1 - I - 0x0035CD 00:B5BD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0035CE 00:B5BE: 15        .byte $15   ; 
- D 1 - I - 0x0035CF 00:B5BF: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0035D0 00:B5C0: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x0035D2 00:B5C2: 10        .byte $10   ; 
- D 1 - I - 0x0035D3 00:B5C3: 30        .byte $30   ; 
- D 1 - I - 0x0035D4 00:B5C4: 50        .byte $50   ; 
- D 1 - I - 0x0035D5 00:B5C5: 60        .byte $60   ; 
- D 1 - I - 0x0035D6 00:B5C6: 10        .byte $10   ; 
- D 1 - I - 0x0035D7 00:B5C7: 30        .byte $30   ; 
- D 1 - I - 0x0035D8 00:B5C8: 50        .byte $50   ; 
- D 1 - I - 0x0035D9 00:B5C9: 60        .byte $60   ; 
- D 1 - I - 0x0035DA 00:B5CA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0035DB 00:B5CB: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0035DD 00:B5CD: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0035DE 00:B5CE: F6 B5     .word sub_DF_B5F6
- D 1 - I - 0x0035E0 00:B5D0: 51        .byte $51   ; 
- D 1 - I - 0x0035E1 00:B5D1: 61        .byte $61   ; 
- D 1 - I - 0x0035E2 00:B5D2: 51        .byte $51   ; 
- D 1 - I - 0x0035E3 00:B5D3: 19        .byte $19   ; 
- D 1 - I - 0x0035E4 00:B5D4: 87        .byte $87   ; 
- D 1 - I - 0x0035E5 00:B5D5: 57        .byte $57   ; 
- D 1 - I - 0x0035E6 00:B5D6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0035E7 00:B5D7: F6 B5     .word sub_DF_B5F6
- D 1 - I - 0x0035E9 00:B5D9: 5F        .byte $5F   ; 
- D 1 - I - 0x0035EA 00:B5DA: 8F        .byte $8F   ; 
- D 1 - I - 0x0035EB 00:B5DB: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0035ED 00:B5DD: 51        .byte $51   ; 
- D 1 - I - 0x0035EE 00:B5DE: 1D        .byte $1D   ; 
- D 1 - I - 0x0035EF 00:B5DF: 65        .byte $65   ; 
- D 1 - I - 0x0035F0 00:B5E0: 85        .byte $85   ; 
- D 1 - I - 0x0035F1 00:B5E1: 63        .byte $63   ; 
- D 1 - I - 0x0035F2 00:B5E2: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0035F3 00:B5E3: 5F        .byte $5F   ; 
- D 1 - I - 0x0035F4 00:B5E4: 67        .byte $67   ; 
- D 1 - I - 0x0035F5 00:B5E5: 87        .byte $87   ; 
- D 1 - I - 0x0035F6 00:B5E6: 51        .byte $51   ; 
- D 1 - I - 0x0035F7 00:B5E7: 1D        .byte $1D   ; 
- D 1 - I - 0x0035F8 00:B5E8: 09        .byte $09   ; 
- D 1 - I - 0x0035F9 00:B5E9: 31        .byte $31   ; 
- D 1 - I - 0x0035FA 00:B5EA: 51        .byte $51   ; 
- D 1 - I - 0x0035FB 00:B5EB: 61        .byte $61   ; 
- D 1 - I - 0x0035FC 00:B5EC: EA        .byte con_mcb_EA   ; 



sub_DF_B5ED:
- D 1 - I - 0x0035FD 00:B5ED: 8F        .byte $8F   ; 
- D 1 - I - 0x0035FE 00:B5EE: 07        .byte $07   ; 
- D 1 - I - 0x0035FF 00:B5EF: 83        .byte $83   ; 
- D 1 - I - 0x003600 00:B5F0: A3        .byte $A3   ; 
- D 1 - I - 0x003601 00:B5F1: 85        .byte $85   ; 
- D 1 - I - 0x003602 00:B5F2: 61        .byte $61   ; 
- D 1 - I - 0x003603 00:B5F3: 55        .byte $55   ; 
- D 1 - I - 0x003604 00:B5F4: 31        .byte $31   ; 
- D 1 - I - 0x003605 00:B5F5: E0        .byte con_mcb_rts   ; 



sub_DF_B5F6:
- D 1 - I - 0x003606 00:B5F6: 61        .byte $61   ; 
- D 1 - I - 0x003607 00:B5F7: 61        .byte $61   ; 
- D 1 - I - 0x003608 00:B5F8: 61        .byte $61   ; 
- D 1 - I - 0x003609 00:B5F9: 69        .byte $69   ; 
- D 1 - I - 0x00360A 00:B5FA: 07        .byte $07   ; 
- D 1 - I - 0x00360B 00:B5FB: 83        .byte $83   ; 
- D 1 - I - 0x00360C 00:B5FC: 63        .byte $63   ; 
- D 1 - I - 0x00360D 00:B5FD: E0        .byte con_mcb_rts   ; 



ch_29_B5FE_01:
- D 1 - I - 0x00360E 00:B5FE: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x003610 00:B600: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003612 00:B602: E5        .byte con_mcb_E5, $10   ; 
- D 1 - I - 0x003614 00:B604: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x003616 00:B606: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003618 00:B608: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x00361A 00:B60A: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x00361C 00:B60C: E3        .byte con_mcb_E3, $15   ; 
- D 1 - I - 0x00361E 00:B60E: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003620 00:B610: 05        .byte $05   ; 
- D 1 - I - 0x003621 00:B611: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003622 00:B612: D7        .byte con_mcb_D7, $07   ; 
- D 1 - I - 0x003624 00:B614: 11        .byte $11   ; 
- D 1 - I - 0x003625 00:B615: 11        .byte $11   ; 
- D 1 - I - 0x003626 00:B616: 51        .byte $51   ; 
- D 1 - I - 0x003627 00:B617: 81        .byte $81   ; 
- D 1 - I - 0x003628 00:B618: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003629 00:B619: 61        .byte $61   ; 
- D 1 - I - 0x00362A 00:B61A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00362B 00:B61B: C1        .byte $C1   ; 
- D 1 - I - 0x00362C 00:B61C: 81        .byte $81   ; 
- D 1 - I - 0x00362D 00:B61D: 51        .byte $51   ; 
- D 1 - I - 0x00362E 00:B61E: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00362F 00:B61F: 11        .byte $11   ; 
- D 1 - I - 0x003630 00:B620: 11        .byte $11   ; 
- D 1 - I - 0x003631 00:B621: 51        .byte $51   ; 
- D 1 - I - 0x003632 00:B622: 81        .byte $81   ; 
- D 1 - I - 0x003633 00:B623: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003634 00:B624: 11        .byte $11   ; 
- D 1 - I - 0x003635 00:B625: 31        .byte $31   ; 
- D 1 - I - 0x003636 00:B626: 53        .byte $53   ; 
- D 1 - I - 0x003637 00:B627: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003638 00:B628: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003639 00:B629: 85 B6     .word sub_DF_B685
- D 1 - I - 0x00363B 00:B62B: 51        .byte $51   ; 
- D 1 - I - 0x00363C 00:B62C: 81        .byte $81   ; 
- D 1 - I - 0x00363D 00:B62D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00363E 00:B62E: 11        .byte $11   ; 
- D 1 - I - 0x00363F 00:B62F: 51        .byte $51   ; 
- D 1 - I - 0x003640 00:B630: 11        .byte $11   ; 
- D 1 - I - 0x003641 00:B631: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003642 00:B632: 81        .byte $81   ; 
- D 1 - I - 0x003643 00:B633: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003644 00:B634: 51        .byte $51   ; 
- D 1 - I - 0x003645 00:B635: 51        .byte $51   ; 
- D 1 - I - 0x003646 00:B636: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003647 00:B637: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003648 00:B638: 85 B6     .word sub_DF_B685
- D 1 - I - 0x00364A 00:B63A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00364B 00:B63B: 81        .byte $81   ; 
- D 1 - I - 0x00364C 00:B63C: 81        .byte $81   ; 
- D 1 - I - 0x00364D 00:B63D: 61        .byte $61   ; 
- D 1 - I - 0x00364E 00:B63E: 61        .byte $61   ; 
- D 1 - I - 0x00364F 00:B63F: 51        .byte $51   ; 
- D 1 - I - 0x003650 00:B640: 51        .byte $51   ; 
- D 1 - I - 0x003651 00:B641: 31        .byte $31   ; 
- D 1 - I - 0x003652 00:B642: 31        .byte $31   ; 
- D 1 - I - 0x003653 00:B643: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003654 00:B644: 11        .byte $11   ; 
- D 1 - I - 0x003655 00:B645: 83        .byte $83   ; 
- D 1 - I - 0x003656 00:B646: 51        .byte $51   ; 
- D 1 - I - 0x003657 00:B647: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003658 00:B648: 11        .byte $11   ; 
- D 1 - I - 0x003659 00:B649: 31        .byte $31   ; 
- D 1 - I - 0x00365A 00:B64A: 51        .byte $51   ; 
- D 1 - I - 0x00365B 00:B64B: 61        .byte $61   ; 
- D 1 - I - 0x00365C 00:B64C: 15        .byte $15   ; 
- D 1 - I - 0x00365D 00:B64D: 55        .byte $55   ; 
- D 1 - I - 0x00365E 00:B64E: 13        .byte $13   ; 
- D 1 - I - 0x00365F 00:B64F: 81        .byte $81   ; 
- D 1 - I - 0x003660 00:B650: 53        .byte $53   ; 
- D 1 - I - 0x003661 00:B651: 51        .byte $51   ; 
- D 1 - I - 0x003662 00:B652: 81        .byte $81   ; 
- D 1 - I - 0x003663 00:B653: 81        .byte $81   ; 
- D 1 - I - 0x003664 00:B654: 61        .byte $61   ; 
- D 1 - I - 0x003665 00:B655: 61        .byte $61   ; 
- D 1 - I - 0x003666 00:B656: 15        .byte $15   ; 
- D 1 - I - 0x003667 00:B657: 55        .byte $55   ; 
- D 1 - I - 0x003668 00:B658: 11        .byte $11   ; 
- D 1 - I - 0x003669 00:B659: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x00366B 00:B65B: 60        .byte $60   ; 
- D 1 - I - 0x00366C 00:B65C: 80        .byte $80   ; 
- D 1 - I - 0x00366D 00:B65D: A0        .byte $A0   ; 
- D 1 - I - 0x00366E 00:B65E: C0        .byte $C0   ; 
- D 1 - I - 0x00366F 00:B65F: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003671 00:B661: 87        .byte $87   ; 
- D 1 - I - 0x003672 00:B662: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003673 00:B663: 17        .byte $17   ; 
- D 1 - I - 0x003674 00:B664: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003675 00:B665: A7        .byte $A7   ; 
- D 1 - I - 0x003676 00:B666: C7        .byte $C7   ; 
- D 1 - I - 0x003677 00:B667: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003678 00:B668: 1F        .byte $1F   ; 
- D 1 - I - 0x003679 00:B669: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00367A 00:B66A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00367B 00:B66B: 80        .byte $80   ; 
- D 1 - I - 0x00367C 00:B66C: 80        .byte $80   ; 
- D 1 - I - 0x00367D 00:B66D: 81        .byte $81   ; 
- D 1 - I - 0x00367E 00:B66E: 60        .byte $60   ; 
- D 1 - I - 0x00367F 00:B66F: 60        .byte $60   ; 
- D 1 - I - 0x003680 00:B670: 61        .byte $61   ; 
- D 1 - I - 0x003681 00:B671: 50        .byte $50   ; 
- D 1 - I - 0x003682 00:B672: 50        .byte $50   ; 
- D 1 - I - 0x003683 00:B673: 51        .byte $51   ; 
- D 1 - I - 0x003684 00:B674: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x003686 00:B676: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003687 00:B677: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003688 00:B678: 10        .byte $10   ; 
- D 1 - I - 0x003689 00:B679: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00368A 00:B67A: C0        .byte $C0   ; 
- D 1 - I - 0x00368B 00:B67B: A0        .byte $A0   ; 
- D 1 - I - 0x00368C 00:B67C: 80        .byte $80   ; 
- D 1 - I - 0x00368D 00:B67D: 60        .byte $60   ; 
- D 1 - I - 0x00368E 00:B67E: 50        .byte $50   ; 
- D 1 - I - 0x00368F 00:B67F: 60        .byte $60   ; 
- D 1 - I - 0x003690 00:B680: 80        .byte $80   ; 
- D 1 - I - 0x003691 00:B681: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003692 00:B682: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003694 00:B684: EA        .byte con_mcb_EA   ; 



sub_DF_B685:
- D 1 - I - 0x003695 00:B685: 61        .byte $61   ; 
- D 1 - I - 0x003696 00:B686: A1        .byte $A1   ; 
- D 1 - I - 0x003697 00:B687: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003698 00:B688: 11        .byte $11   ; 
- D 1 - I - 0x003699 00:B689: 61        .byte $61   ; 
- D 1 - I - 0x00369A 00:B68A: 11        .byte $11   ; 
- D 1 - I - 0x00369B 00:B68B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00369C 00:B68C: A1        .byte $A1   ; 
- D 1 - I - 0x00369D 00:B68D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00369E 00:B68E: 61        .byte $61   ; 
- D 1 - I - 0x00369F 00:B68F: 11        .byte $11   ; 
- D 1 - I - 0x0036A0 00:B690: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036A1 00:B691: 61        .byte $61   ; 
- D 1 - I - 0x0036A2 00:B692: A1        .byte $A1   ; 
- D 1 - I - 0x0036A3 00:B693: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036A4 00:B694: 11        .byte $11   ; 
- D 1 - I - 0x0036A5 00:B695: 61        .byte $61   ; 
- D 1 - I - 0x0036A6 00:B696: 11        .byte $11   ; 
- D 1 - I - 0x0036A7 00:B697: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036A8 00:B698: A1        .byte $A1   ; 
- D 1 - I - 0x0036A9 00:B699: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036AA 00:B69A: 61        .byte $61   ; 
- D 1 - I - 0x0036AB 00:B69B: 61        .byte $61   ; 
- D 1 - I - 0x0036AC 00:B69C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036AD 00:B69D: 51        .byte $51   ; 
- D 1 - I - 0x0036AE 00:B69E: 81        .byte $81   ; 
- D 1 - I - 0x0036AF 00:B69F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036B0 00:B6A0: 11        .byte $11   ; 
- D 1 - I - 0x0036B1 00:B6A1: 51        .byte $51   ; 
- D 1 - I - 0x0036B2 00:B6A2: 11        .byte $11   ; 
- D 1 - I - 0x0036B3 00:B6A3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036B4 00:B6A4: 81        .byte $81   ; 
- D 1 - I - 0x0036B5 00:B6A5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036B6 00:B6A6: 51        .byte $51   ; 
- D 1 - I - 0x0036B7 00:B6A7: 11        .byte $11   ; 
- D 1 - I - 0x0036B8 00:B6A8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036B9 00:B6A9: E0        .byte con_mcb_rts   ; 



ch_29_B6AA_02:
- D 1 - I - 0x0036BA 00:B6AA: DC        .byte con_mcb_DC, $06   ; 
- D 1 - I - 0x0036BC 00:B6AC: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x0036BE 00:B6AE: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x0036C0 00:B6B0: 05        .byte $05   ; 
- D 1 - I - 0x0036C1 00:B6B1: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x0036C2 00:B6B2: D7        .byte con_mcb_D7, $07   ; 
- D 1 - I - 0x0036C4 00:B6B4: 13        .byte $13   ; 
- D 1 - I - 0x0036C5 00:B6B5: 11        .byte $11   ; 
- D 1 - I - 0x0036C6 00:B6B6: 11        .byte $11   ; 
- D 1 - I - 0x0036C7 00:B6B7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036C8 00:B6B8: 81        .byte $81   ; 
- D 1 - I - 0x0036C9 00:B6B9: 81        .byte $81   ; 
- D 1 - I - 0x0036CA 00:B6BA: A1        .byte $A1   ; 
- D 1 - I - 0x0036CB 00:B6BB: C1        .byte $C1   ; 
- D 1 - I - 0x0036CC 00:B6BC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036CD 00:B6BD: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0036CE 00:B6BE: 13        .byte $13   ; 
- D 1 - I - 0x0036CF 00:B6BF: 11        .byte $11   ; 
- D 1 - I - 0x0036D0 00:B6C0: 11        .byte $11   ; 
- D 1 - I - 0x0036D1 00:B6C1: 11        .byte $11   ; 
- D 1 - I - 0x0036D2 00:B6C2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036D3 00:B6C3: C1        .byte $C1   ; 
- D 1 - I - 0x0036D4 00:B6C4: A1        .byte $A1   ; 
- D 1 - I - 0x0036D5 00:B6C5: 81        .byte $81   ; 
- D 1 - I - 0x0036D6 00:B6C6: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036D7 00:B6C7: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0036D8 00:B6C8: 10 B7     .word sub_DF_B710
- D 1 - I - 0x0036DA 00:B6CA: 13        .byte $13   ; 
- D 1 - I - 0x0036DB 00:B6CB: 01        .byte $01   ; 
- D 1 - I - 0x0036DC 00:B6CC: 11        .byte $11   ; 
- D 1 - I - 0x0036DD 00:B6CD: 11        .byte $11   ; 
- D 1 - I - 0x0036DE 00:B6CE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036DF 00:B6CF: C1        .byte $C1   ; 
- D 1 - I - 0x0036E0 00:B6D0: A1        .byte $A1   ; 
- D 1 - I - 0x0036E1 00:B6D1: 81        .byte $81   ; 
- D 1 - I - 0x0036E2 00:B6D2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036E3 00:B6D3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0036E4 00:B6D4: 10 B7     .word sub_DF_B710
- D 1 - I - 0x0036E6 00:B6D6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036E7 00:B6D7: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x0036E9 00:B6D9: 81        .byte $81   ; 
- D 1 - I - 0x0036EA 00:B6DA: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0036EB 00:B6DB: A1        .byte $A1   ; 
- D 1 - I - 0x0036EC 00:B6DC: C1        .byte $C1   ; 
- D 1 - I - 0x0036ED 00:B6DD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036EE 00:B6DE: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x0036F0 00:B6E0: 11        .byte $11   ; 
- D 1 - I - 0x0036F1 00:B6E1: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0036F2 00:B6E2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036F3 00:B6E3: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x0036F5 00:B6E5: 61        .byte $61   ; 
- D 1 - I - 0x0036F6 00:B6E6: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0036F7 00:B6E7: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0036F8 00:B6E8: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x0036FA 00:B6EA: 11        .byte $11   ; 
- D 1 - I - 0x0036FB 00:B6EB: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0036FC 00:B6EC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0036FD 00:B6ED: D7        .byte con_mcb_D7, $05   ; 
- D 1 - I - 0x0036FF 00:B6EF: 61        .byte $61   ; 
- D 1 - I - 0x003700 00:B6F0: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003701 00:B6F1: 51        .byte $51   ; 
- D 1 - I - 0x003702 00:B6F2: 61        .byte $61   ; 
- D 1 - I - 0x003703 00:B6F3: 71        .byte $71   ; 
- D 1 - I - 0x003704 00:B6F4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003705 00:B6F5: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x003707 00:B6F7: 11        .byte $11   ; 
- D 1 - I - 0x003708 00:B6F8: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003709 00:B6F9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00370A 00:B6FA: D7        .byte con_mcb_D7, $05   ; 
- D 1 - I - 0x00370C 00:B6FC: 81        .byte $81   ; 
- D 1 - I - 0x00370D 00:B6FD: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00370E 00:B6FE: A1        .byte $A1   ; 
- D 1 - I - 0x00370F 00:B6FF: C1        .byte $C1   ; 
- D 1 - I - 0x003710 00:B700: C1        .byte $C1   ; 
- D 1 - I - 0x003711 00:B701: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003712 00:B702: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003714 00:B704: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003716 00:B706: 11        .byte $11   ; 
- D 1 - I - 0x003717 00:B707: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003718 00:B708: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003719 00:B709: 81        .byte $81   ; 
- D 1 - I - 0x00371A 00:B70A: 81        .byte $81   ; 
- D 1 - I - 0x00371B 00:B70B: A1        .byte $A1   ; 
- D 1 - I - 0x00371C 00:B70C: C1        .byte $C1   ; 
- D 1 - I - 0x00371D 00:B70D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00371E 00:B70E: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00371F 00:B70F: EA        .byte con_mcb_EA   ; 



sub_DF_B710:
- D 1 - I - 0x003720 00:B710: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003721 00:B711: 63        .byte $63   ; 
- D 1 - I - 0x003722 00:B712: 01        .byte $01   ; 
- D 1 - I - 0x003723 00:B713: 61        .byte $61   ; 
- D 1 - I - 0x003724 00:B714: 63        .byte $63   ; 
- D 1 - I - 0x003725 00:B715: 01        .byte $01   ; 
- D 1 - I - 0x003726 00:B716: 61        .byte $61   ; 
- D 1 - I - 0x003727 00:B717: 63        .byte $63   ; 
- D 1 - I - 0x003728 00:B718: 01        .byte $01   ; 
- D 1 - I - 0x003729 00:B719: 61        .byte $61   ; 
- D 1 - I - 0x00372A 00:B71A: 61        .byte $61   ; 
- D 1 - I - 0x00372B 00:B71B: 81        .byte $81   ; 
- D 1 - I - 0x00372C 00:B71C: A1        .byte $A1   ; 
- D 1 - I - 0x00372D 00:B71D: C1        .byte $C1   ; 
- D 1 - I - 0x00372E 00:B71E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00372F 00:B71F: 13        .byte $13   ; 
- D 1 - I - 0x003730 00:B720: 01        .byte $01   ; 
- D 1 - I - 0x003731 00:B721: 11        .byte $11   ; 
- D 1 - I - 0x003732 00:B722: 13        .byte $13   ; 
- D 1 - I - 0x003733 00:B723: 01        .byte $01   ; 
- D 1 - I - 0x003734 00:B724: 11        .byte $11   ; 
- D 1 - I - 0x003735 00:B725: E0        .byte con_mcb_rts   ; 



ch_29_B726_03:
- D 1 - I - 0x003736 00:B726: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x003738 00:B728: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x00373A 00:B72A: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x00373C 00:B72C: 05        .byte $05   ; 
- D 1 - I - 0x00373D 00:B72D: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x00373E 00:B72E: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00373F 00:B72F: 3E B7     .word sub_DF_B73E
- D 1 - I - 0x003741 00:B731: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003742 00:B732: 3E B7     .word sub_DF_B73E
- D 1 - I - 0x003744 00:B734: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003745 00:B735: 4E B7     .word sub_DF_B74E
- D 1 - I - 0x003747 00:B737: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003748 00:B738: 3E B7     .word sub_DF_B73E
- D 1 - I - 0x00374A 00:B73A: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00374B 00:B73B: 3E B7     .word sub_DF_B73E
- D 1 - I - 0x00374D 00:B73D: EA        .byte con_mcb_EA   ; 



sub_DF_B73E:
- D 1 - I - 0x00374E 00:B73E: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003750 00:B740: 13        .byte $13   ; 
- D 1 - I - 0x003751 00:B741: 33        .byte $33   ; 
- D 1 - I - 0x003752 00:B742: 11        .byte $11   ; 
- D 1 - I - 0x003753 00:B743: 11        .byte $11   ; 
- D 1 - I - 0x003754 00:B744: 31        .byte $31   ; 
- D 1 - I - 0x003755 00:B745: 11        .byte $11   ; 
- D 1 - I - 0x003756 00:B746: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003757 00:B747: 13        .byte $13   ; 
- D 1 - I - 0x003758 00:B748: 33        .byte $33   ; 
- D 1 - I - 0x003759 00:B749: 11        .byte $11   ; 
- D 1 - I - 0x00375A 00:B74A: 31        .byte $31   ; 
- D 1 - I - 0x00375B 00:B74B: 31        .byte $31   ; 
- D 1 - I - 0x00375C 00:B74C: 31        .byte $31   ; 
- D 1 - I - 0x00375D 00:B74D: E0        .byte con_mcb_rts   ; 



sub_DF_B74E:
- D 1 - I - 0x00375E 00:B74E: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x003760 00:B750: 13        .byte $13   ; 
- D 1 - I - 0x003761 00:B751: 31        .byte $31   ; 
- D 1 - I - 0x003762 00:B752: 11        .byte $11   ; 
- D 1 - I - 0x003763 00:B753: 11        .byte $11   ; 
- D 1 - I - 0x003764 00:B754: 30        .byte $30   ; 
- D 1 - I - 0x003765 00:B755: 30        .byte $30   ; 
- D 1 - I - 0x003766 00:B756: 31        .byte $31   ; 
- D 1 - I - 0x003767 00:B757: 01        .byte $01   ; 
- D 1 - I - 0x003768 00:B758: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003769 00:B759: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x00376B 00:B75B: 33        .byte $33   ; 
- D 1 - I - 0x00376C 00:B75C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x00376D 00:B75D: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x00376F 00:B75F: 31        .byte $31   ; 
- D 1 - I - 0x003770 00:B760: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003771 00:B761: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003773 00:B763: 30        .byte $30   ; 
- D 1 - I - 0x003774 00:B764: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003775 00:B765: E0        .byte con_mcb_rts   ; 



_off005_B766_2A_the_end:
- D 1 - I - 0x003776 00:B766: 70 B7     .word ch_2A_B770_00
- D 1 - I - 0x003778 00:B768: 1D B8     .word ch_2A_B81D_01
- D 1 - I - 0x00377A 00:B76A: 7D B9     .word ch_2A_B97D_02
- D 1 - I - 0x00377C 00:B76C: 28 BA     .word ch_2A_BA28_03
- D 1 - I - 0x00377E 00:B76E: 00 00     .word $0000 ;    04



ch_2A_B770_00:
- D 1 - I - 0x003780 00:B770: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003782 00:B772: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003784 00:B774: E5        .byte con_mcb_E5, $0F   ; 
- D 1 - I - 0x003786 00:B776: DB        .byte con_mcb_DB, $0F   ; 
- D 1 - I - 0x003788 00:B778: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x00378A 00:B77A: E6        .byte con_mcb_E6, $00   ; 
- D 1 - I - 0x00378C 00:B77C: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x00378E 00:B77E: E3        .byte con_mcb_E3, $12   ; 
- D 1 - I - 0x003790 00:B780: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003792 00:B782: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003793 00:B783: 83        .byte $83   ; 
- D 1 - I - 0x003794 00:B784: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003796 00:B786: 18        .byte $18   ; 
- D 1 - I - 0x003797 00:B787: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003798 00:B788: 19        .byte $19   ; 
- D 1 - I - 0x003799 00:B789: A8        .byte $A8   ; 
- D 1 - I - 0x00379A 00:B78A: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00379C 00:B78C: 87        .byte $87   ; 
- D 1 - I - 0x00379D 00:B78D: B3        .byte $B3   ; 
- D 1 - I - 0x00379E 00:B78E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0037A0 00:B790: 48        .byte $48   ; 
- D 1 - I - 0x0037A1 00:B791: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x0037A2 00:B792: 49        .byte $49   ; 
- D 1 - I - 0x0037A3 00:B793: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0037A4 00:B794: 18        .byte $18   ; 
- D 1 - I - 0x0037A5 00:B795: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0037A6 00:B796: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0037A8 00:B798: B7        .byte $B7   ; 
- D 1 - I - 0x0037A9 00:B799: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0037AA 00:B79A: 3F        .byte $3F   ; 
- D 1 - I - 0x0037AB 00:B79B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0037AC 00:B79C: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037AD 00:B79D: D6 B7     .word sub_DF_B7D6
- D 1 - I - 0x0037AF 00:B79F: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037B0 00:B7A0: E0 B7     .word sub_DF_B7E0
- D 1 - I - 0x0037B2 00:B7A2: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037B3 00:B7A3: D6 B7     .word sub_DF_B7D6
- D 1 - I - 0x0037B5 00:B7A5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037B6 00:B7A6: E0 B7     .word sub_DF_B7E0
- D 1 - I - 0x0037B8 00:B7A8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037B9 00:B7A9: EB B7     .word sub_DF_B7EB
- D 1 - I - 0x0037BB 00:B7AB: 8F        .byte $8F   ; 
- D 1 - I - 0x0037BC 00:B7AC: 87        .byte $87   ; 
- D 1 - I - 0x0037BD 00:B7AD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0037BE 00:B7AE: 17        .byte $17   ; 
- D 1 - I - 0x0037BF 00:B7AF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0037C0 00:B7B0: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037C1 00:B7B1: EB B7     .word sub_DF_B7EB
- D 1 - I - 0x0037C3 00:B7B3: 87        .byte $87   ; 
- D 1 - I - 0x0037C4 00:B7B4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0037C5 00:B7B5: 17        .byte $17   ; 
- D 1 - I - 0x0037C6 00:B7B6: 37        .byte $37   ; 
- D 1 - I - 0x0037C7 00:B7B7: 87        .byte $87   ; 
- D 1 - I - 0x0037C8 00:B7B8: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037C9 00:B7B9: F5 B7     .word sub_DF_B7F5
- D 1 - I - 0x0037CB 00:B7BB: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0037CD 00:B7BD: 68        .byte $68   ; 
- D 1 - I - 0x0037CE 00:B7BE: 69        .byte $69   ; 
- D 1 - I - 0x0037CF 00:B7BF: 68        .byte $68   ; 
- D 1 - I - 0x0037D0 00:B7C0: 68        .byte $68   ; 
- D 1 - I - 0x0037D1 00:B7C1: 59        .byte $59   ; 
- D 1 - I - 0x0037D2 00:B7C2: 68        .byte $68   ; 
- D 1 - I - 0x0037D3 00:B7C3: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0037D5 00:B7C5: 87        .byte $87   ; 
- D 1 - I - 0x0037D6 00:B7C6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0037D7 00:B7C7: F5 B7     .word sub_DF_B7F5
- D 1 - I - 0x0037D9 00:B7C9: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0037DB 00:B7CB: 68        .byte $68   ; 
- D 1 - I - 0x0037DC 00:B7CC: 69        .byte $69   ; 
- D 1 - I - 0x0037DD 00:B7CD: 68        .byte $68   ; 
- D 1 - I - 0x0037DE 00:B7CE: 68        .byte $68   ; 
- D 1 - I - 0x0037DF 00:B7CF: 59        .byte $59   ; 
- D 1 - I - 0x0037E0 00:B7D0: 38        .byte $38   ; 
- D 1 - I - 0x0037E1 00:B7D1: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0037E3 00:B7D3: 17        .byte $17   ; 
- D 1 - I - 0x0037E4 00:B7D4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0037E5 00:B7D5: EA        .byte con_mcb_EA   ; 



sub_DF_B7D6:
- D 1 - I - 0x0037E6 00:B7D6: 87        .byte $87   ; 
- D 1 - I - 0x0037E7 00:B7D7: 53        .byte $53   ; 
- D 1 - I - 0x0037E8 00:B7D8: 83        .byte $83   ; 
- D 1 - I - 0x0037E9 00:B7D9: 67        .byte $67   ; 
- D 1 - I - 0x0037EA 00:B7DA: 37        .byte $37   ; 
- D 1 - I - 0x0037EB 00:B7DB: 87        .byte $87   ; 
- D 1 - I - 0x0037EC 00:B7DC: B1        .byte $B1   ; 
- D 1 - I - 0x0037ED 00:B7DD: A5        .byte $A5   ; 
- D 1 - I - 0x0037EE 00:B7DE: 8F        .byte $8F   ; 
- D 1 - I - 0x0037EF 00:B7DF: E0        .byte con_mcb_rts   ; 



sub_DF_B7E0:
- D 1 - I - 0x0037F0 00:B7E0: 87        .byte $87   ; 
- D 1 - I - 0x0037F1 00:B7E1: 53        .byte $53   ; 
- D 1 - I - 0x0037F2 00:B7E2: 83        .byte $83   ; 
- D 1 - I - 0x0037F3 00:B7E3: 67        .byte $67   ; 
- D 1 - I - 0x0037F4 00:B7E4: 37        .byte $37   ; 
- D 1 - I - 0x0037F5 00:B7E5: 83        .byte $83   ; 
- D 1 - I - 0x0037F6 00:B7E6: 83        .byte $83   ; 
- D 1 - I - 0x0037F7 00:B7E7: 61        .byte $61   ; 
- D 1 - I - 0x0037F8 00:B7E8: 35        .byte $35   ; 
- D 1 - I - 0x0037F9 00:B7E9: 1F        .byte $1F   ; 
- D 1 - I - 0x0037FA 00:B7EA: E0        .byte con_mcb_rts   ; 



sub_DF_B7EB:
- D 1 - I - 0x0037FB 00:B7EB: 61        .byte $61   ; 
- D 1 - I - 0x0037FC 00:B7EC: 61        .byte $61   ; 
- D 1 - I - 0x0037FD 00:B7ED: A1        .byte $A1   ; 
- D 1 - I - 0x0037FE 00:B7EE: 81        .byte $81   ; 
- D 1 - I - 0x0037FF 00:B7EF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003800 00:B7F0: 17        .byte $17   ; 
- D 1 - I - 0x003801 00:B7F1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003802 00:B7F2: AB        .byte $AB   ; 
- D 1 - I - 0x003803 00:B7F3: A3        .byte $A3   ; 
- D 1 - I - 0x003804 00:B7F4: E0        .byte con_mcb_rts   ; 



sub_DF_B7F5:
- D 1 - I - 0x003805 00:B7F5: 83        .byte $83   ; 
- D 1 - I - 0x003806 00:B7F6: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003808 00:B7F8: 18        .byte $18   ; 
- D 1 - I - 0x003809 00:B7F9: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x00380A 00:B7FA: 19        .byte $19   ; 
- D 1 - I - 0x00380B 00:B7FB: A8        .byte $A8   ; 
- D 1 - I - 0x00380C 00:B7FC: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00380E 00:B7FE: 87        .byte $87   ; 
- D 1 - I - 0x00380F 00:B7FF: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003811 00:B801: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003812 00:B802: 18        .byte $18   ; 
- D 1 - I - 0x003813 00:B803: 19        .byte $19   ; 
- D 1 - I - 0x003814 00:B804: 18        .byte $18   ; 
- D 1 - I - 0x003815 00:B805: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003816 00:B806: C8        .byte $C8   ; 
- D 1 - I - 0x003817 00:B807: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003818 00:B808: C9        .byte $C9   ; 
- D 1 - I - 0x003819 00:B809: A8        .byte $A8   ; 
- D 1 - I - 0x00381A 00:B80A: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00381C 00:B80C: 87        .byte $87   ; 
- D 1 - I - 0x00381D 00:B80D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00381F 00:B80F: 68        .byte $68   ; 
- D 1 - I - 0x003820 00:B810: 09        .byte $09   ; 
- D 1 - I - 0x003821 00:B811: 68        .byte $68   ; 
- D 1 - I - 0x003822 00:B812: 68        .byte $68   ; 
- D 1 - I - 0x003823 00:B813: 59        .byte $59   ; 
- D 1 - I - 0x003824 00:B814: 38        .byte $38   ; 
- D 1 - I - 0x003825 00:B815: 58        .byte $58   ; 
- D 1 - I - 0x003826 00:B816: 69        .byte $69   ; 
- D 1 - I - 0x003827 00:B817: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003828 00:B818: 68        .byte $68   ; 
- D 1 - I - 0x003829 00:B819: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00382B 00:B81B: 83        .byte $83   ; 
- D 1 - I - 0x00382C 00:B81C: E0        .byte con_mcb_rts   ; 



ch_2A_B81D_01:
- D 1 - I - 0x00382D 00:B81D: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x00382F 00:B81F: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003831 00:B821: E5        .byte con_mcb_E5, $10   ; 
- D 1 - I - 0x003833 00:B823: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x003835 00:B825: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003837 00:B827: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x003839 00:B829: D3        .byte con_mcb_D3, $05   ; 
- D 1 - I - 0x00383B 00:B82B: E3        .byte con_mcb_E3, $12   ; 
- D 1 - I - 0x00383D 00:B82D: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00383F 00:B82F: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003840 00:B830: 53        .byte $53   ; 
- D 1 - I - 0x003841 00:B831: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003843 00:B833: 58        .byte $58   ; 
- D 1 - I - 0x003844 00:B834: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003845 00:B835: 59        .byte $59   ; 
- D 1 - I - 0x003846 00:B836: 68        .byte $68   ; 
- D 1 - I - 0x003847 00:B837: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003849 00:B839: 53        .byte $53   ; 
- D 1 - I - 0x00384A 00:B83A: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00384C 00:B83C: 88        .byte $88   ; 
- D 1 - I - 0x00384D 00:B83D: 89        .byte $89   ; 
- D 1 - I - 0x00384E 00:B83E: 88        .byte $88   ; 
- D 1 - I - 0x00384F 00:B83F: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003851 00:B841: 43        .byte $43   ; 
- D 1 - I - 0x003852 00:B842: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003854 00:B844: 48        .byte $48   ; 
- D 1 - I - 0x003855 00:B845: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003856 00:B846: 49        .byte $49   ; 
- D 1 - I - 0x003857 00:B847: 58        .byte $58   ; 
- D 1 - I - 0x003858 00:B848: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00385A 00:B84A: 43        .byte $43   ; 
- D 1 - I - 0x00385B 00:B84B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00385D 00:B84D: 42        .byte $42   ; 
- D 1 - I - 0x00385E 00:B84E: 53        .byte $53   ; 
- D 1 - I - 0x00385F 00:B84F: 62        .byte $62   ; 
- D 1 - I - 0x003860 00:B850: 83        .byte $83   ; 
- D 1 - I - 0x003861 00:B851: A2        .byte $A2   ; 
- D 1 - I - 0x003862 00:B852: B3        .byte $B3   ; 
- D 1 - I - 0x003863 00:B853: C2        .byte $C2   ; 
- D 1 - I - 0x003864 00:B854: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003865 00:B855: 13        .byte $13   ; 
- D 1 - I - 0x003866 00:B856: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003868 00:B858: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003869 00:B859: 89        .byte $89   ; 
- D 1 - I - 0x00386A 00:B85A: A0        .byte $A0   ; 
- D 1 - I - 0x00386B 00:B85B: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00386C 00:B85C: 10        .byte $10   ; 
- D 1 - I - 0x00386D 00:B85D: 30        .byte $30   ; 
- D 1 - I - 0x00386E 00:B85E: 50        .byte $50   ; 
- D 1 - I - 0x00386F 00:B85F: 60        .byte $60   ; 
- D 1 - I - 0x003870 00:B860: 80        .byte $80   ; 
- D 1 - I - 0x003871 00:B861: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003872 00:B862: 57        .byte $57   ; 
- D 1 - I - 0x003873 00:B863: 13        .byte $13   ; 
- D 1 - I - 0x003874 00:B864: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003876 00:B866: 88        .byte $88   ; 
- D 1 - I - 0x003877 00:B867: 89        .byte $89   ; 
- D 1 - I - 0x003878 00:B868: 88        .byte $88   ; 
- D 1 - I - 0x003879 00:B869: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00387B 00:B86B: 37        .byte $37   ; 
- D 1 - I - 0x00387C 00:B86C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00387D 00:B86D: C3        .byte $C3   ; 
- D 1 - I - 0x00387E 00:B86E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003880 00:B870: 82        .byte $82   ; 
- D 1 - I - 0x003881 00:B871: A3        .byte $A3   ; 
- D 1 - I - 0x003882 00:B872: C2        .byte $C2   ; 
- D 1 - I - 0x003883 00:B873: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003884 00:B874: 13        .byte $13   ; 
- D 1 - I - 0x003885 00:B875: 32        .byte $32   ; 
- D 1 - I - 0x003886 00:B876: 53        .byte $53   ; 
- D 1 - I - 0x003887 00:B877: 62        .byte $62   ; 
- D 1 - I - 0x003888 00:B878: 83        .byte $83   ; 
- D 1 - I - 0x003889 00:B879: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00388B 00:B87B: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x00388D 00:B87D: 88        .byte $88   ; 
- D 1 - I - 0x00388E 00:B87E: 09        .byte $09   ; 
- D 1 - I - 0x00388F 00:B87F: 88        .byte $88   ; 
- D 1 - I - 0x003890 00:B880: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003892 00:B882: 33        .byte $33   ; 
- D 1 - I - 0x003893 00:B883: 31        .byte $31   ; 
- D 1 - I - 0x003894 00:B884: 55        .byte $55   ; 
- D 1 - I - 0x003895 00:B885: 35        .byte $35   ; 
- D 1 - I - 0x003896 00:B886: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003898 00:B888: 82        .byte $82   ; 
- D 1 - I - 0x003899 00:B889: 63        .byte $63   ; 
- D 1 - I - 0x00389A 00:B88A: 52        .byte $52   ; 
- D 1 - I - 0x00389B 00:B88B: 33        .byte $33   ; 
- D 1 - I - 0x00389C 00:B88C: 52        .byte $52   ; 
- D 1 - I - 0x00389D 00:B88D: 63        .byte $63   ; 
- D 1 - I - 0x00389E 00:B88E: 82        .byte $82   ; 
- D 1 - I - 0x00389F 00:B88F: A3        .byte $A3   ; 
- D 1 - I - 0x0038A0 00:B890: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0038A2 00:B892: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0038A3 00:B893: A0        .byte $A0   ; 
- D 1 - I - 0x0038A4 00:B894: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0038A5 00:B895: 10        .byte $10   ; 
- D 1 - I - 0x0038A6 00:B896: 30        .byte $30   ; 
- D 1 - I - 0x0038A7 00:B897: 50        .byte $50   ; 
- D 1 - I - 0x0038A8 00:B898: 60        .byte $60   ; 
- D 1 - I - 0x0038A9 00:B899: 80        .byte $80   ; 
- D 1 - I - 0x0038AA 00:B89A: 57        .byte $57   ; 
- D 1 - I - 0x0038AB 00:B89B: 13        .byte $13   ; 
- D 1 - I - 0x0038AC 00:B89C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0038AD 00:B89D: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0038AF 00:B89F: 38        .byte $38   ; 
- D 1 - I - 0x0038B0 00:B8A0: 89        .byte $89   ; 
- D 1 - I - 0x0038B1 00:B8A1: C8        .byte $C8   ; 
- D 1 - I - 0x0038B2 00:B8A2: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0038B4 00:B8A4: A7        .byte $A7   ; 
- D 1 - I - 0x0038B5 00:B8A5: C7        .byte $C7   ; 
- D 1 - I - 0x0038B6 00:B8A6: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0038B8 00:B8A8: C8        .byte $C8   ; 
- D 1 - I - 0x0038B9 00:B8A9: C9        .byte $C9   ; 
- D 1 - I - 0x0038BA 00:B8AA: C8        .byte $C8   ; 
- D 1 - I - 0x0038BB 00:B8AB: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0038BD 00:B8AD: C3        .byte $C3   ; 
- D 1 - I - 0x0038BE 00:B8AE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0038BF 00:B8AF: 11        .byte $11   ; 
- D 1 - I - 0x0038C0 00:B8B0: 35        .byte $35   ; 
- D 1 - I - 0x0038C1 00:B8B1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0038C2 00:B8B2: 59        .byte $59   ; 
- D 1 - I - 0x0038C3 00:B8B3: A0        .byte $A0   ; 
- D 1 - I - 0x0038C4 00:B8B4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0038C5 00:B8B5: 10        .byte $10   ; 
- D 1 - I - 0x0038C6 00:B8B6: 30        .byte $30   ; 
- D 1 - I - 0x0038C7 00:B8B7: 50        .byte $50   ; 
- D 1 - I - 0x0038C8 00:B8B8: 60        .byte $60   ; 
- D 1 - I - 0x0038C9 00:B8B9: 80        .byte $80   ; 
- D 1 - I - 0x0038CA 00:B8BA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0038CB 00:B8BB: 57        .byte $57   ; 
- D 1 - I - 0x0038CC 00:B8BC: 83        .byte $83   ; 
- D 1 - I - 0x0038CD 00:B8BD: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0038CF 00:B8BF: 88        .byte $88   ; 
- D 1 - I - 0x0038D0 00:B8C0: C9        .byte $C9   ; 
- D 1 - I - 0x0038D1 00:B8C1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0038D2 00:B8C2: 38        .byte $38   ; 
- D 1 - I - 0x0038D3 00:B8C3: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0038D5 00:B8C5: 37        .byte $37   ; 
- D 1 - I - 0x0038D6 00:B8C6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0038D7 00:B8C7: C3        .byte $C3   ; 
- D 1 - I - 0x0038D8 00:B8C8: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0038DA 00:B8CA: 82        .byte $82   ; 
- D 1 - I - 0x0038DB 00:B8CB: A3        .byte $A3   ; 
- D 1 - I - 0x0038DC 00:B8CC: C2        .byte $C2   ; 
- D 1 - I - 0x0038DD 00:B8CD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0038DE 00:B8CE: 13        .byte $13   ; 
- D 1 - I - 0x0038DF 00:B8CF: 32        .byte $32   ; 
- D 1 - I - 0x0038E0 00:B8D0: 53        .byte $53   ; 
- D 1 - I - 0x0038E1 00:B8D1: 62        .byte $62   ; 
- D 1 - I - 0x0038E2 00:B8D2: 83        .byte $83   ; 
- D 1 - I - 0x0038E3 00:B8D3: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0038E5 00:B8D5: 58        .byte $58   ; 
- D 1 - I - 0x0038E6 00:B8D6: 09        .byte $09   ; 
- D 1 - I - 0x0038E7 00:B8D7: 58        .byte $58   ; 
- D 1 - I - 0x0038E8 00:B8D8: 38        .byte $38   ; 
- D 1 - I - 0x0038E9 00:B8D9: 39        .byte $39   ; 
- D 1 - I - 0x0038EA 00:B8DA: 38        .byte $38   ; 
- D 1 - I - 0x0038EB 00:B8DB: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0038ED 00:B8DD: 51        .byte $51   ; 
- D 1 - I - 0x0038EE 00:B8DE: 55        .byte $55   ; 
- D 1 - I - 0x0038EF 00:B8DF: 55        .byte $55   ; 
- D 1 - I - 0x0038F0 00:B8E0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0038F2 00:B8E2: 83        .byte $83   ; 
- D 1 - I - 0x0038F3 00:B8E3: 62        .byte $62   ; 
- D 1 - I - 0x0038F4 00:B8E4: 53        .byte $53   ; 
- D 1 - I - 0x0038F5 00:B8E5: 32        .byte $32   ; 
- D 1 - I - 0x0038F6 00:B8E6: 53        .byte $53   ; 
- D 1 - I - 0x0038F7 00:B8E7: 62        .byte $62   ; 
- D 1 - I - 0x0038F8 00:B8E8: 83        .byte $83   ; 
- D 1 - I - 0x0038F9 00:B8E9: A2        .byte $A2   ; 
- D 1 - I - 0x0038FA 00:B8EA: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0038FC 00:B8EC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0038FD 00:B8ED: A0        .byte $A0   ; 
- D 1 - I - 0x0038FE 00:B8EE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0038FF 00:B8EF: 10        .byte $10   ; 
- D 1 - I - 0x003900 00:B8F0: 30        .byte $30   ; 
- D 1 - I - 0x003901 00:B8F1: 50        .byte $50   ; 
- D 1 - I - 0x003902 00:B8F2: 60        .byte $60   ; 
- D 1 - I - 0x003903 00:B8F3: 80        .byte $80   ; 
- D 1 - I - 0x003904 00:B8F4: 57        .byte $57   ; 
- D 1 - I - 0x003905 00:B8F5: 13        .byte $13   ; 
- D 1 - I - 0x003906 00:B8F6: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003907 00:B8F7: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003909 00:B8F9: 38        .byte $38   ; 
- D 1 - I - 0x00390A 00:B8FA: 89        .byte $89   ; 
- D 1 - I - 0x00390B 00:B8FB: C8        .byte $C8   ; 
- D 1 - I - 0x00390C 00:B8FC: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00390E 00:B8FE: A7        .byte $A7   ; 
- D 1 - I - 0x00390F 00:B8FF: C7        .byte $C7   ; 
- D 1 - I - 0x003910 00:B900: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003912 00:B902: C8        .byte $C8   ; 
- D 1 - I - 0x003913 00:B903: C9        .byte $C9   ; 
- D 1 - I - 0x003914 00:B904: C8        .byte $C8   ; 
- D 1 - I - 0x003915 00:B905: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003917 00:B907: C3        .byte $C3   ; 
- D 1 - I - 0x003918 00:B908: A1        .byte $A1   ; 
- D 1 - I - 0x003919 00:B909: 85        .byte $85   ; 
- D 1 - I - 0x00391A 00:B90A: 57        .byte $57   ; 
- D 1 - I - 0x00391B 00:B90B: 87        .byte $87   ; 
- D 1 - I - 0x00391C 00:B90C: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00391D 00:B90D: 44 B9     .word sub_DF_B944
- D 1 - I - 0x00391F 00:B90F: 11        .byte $11   ; 
- D 1 - I - 0x003920 00:B910: 81        .byte $81   ; 
- D 1 - I - 0x003921 00:B911: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003922 00:B912: 11        .byte $11   ; 
- D 1 - I - 0x003923 00:B913: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003924 00:B914: 81        .byte $81   ; 
- D 1 - I - 0x003925 00:B915: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003926 00:B916: 51        .byte $51   ; 
- D 1 - I - 0x003927 00:B917: 11        .byte $11   ; 
- D 1 - I - 0x003928 00:B918: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003929 00:B919: 81        .byte $81   ; 
- D 1 - I - 0x00392A 00:B91A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00392B 00:B91B: 11        .byte $11   ; 
- D 1 - I - 0x00392C 00:B91C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00392D 00:B91D: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00392E 00:B91E: 44 B9     .word sub_DF_B944
- D 1 - I - 0x003930 00:B920: 31        .byte $31   ; 
- D 1 - I - 0x003931 00:B921: 81        .byte $81   ; 
- D 1 - I - 0x003932 00:B922: C1        .byte $C1   ; 
- D 1 - I - 0x003933 00:B923: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003934 00:B924: 31        .byte $31   ; 
- D 1 - I - 0x003935 00:B925: 81        .byte $81   ; 
- D 1 - I - 0x003936 00:B926: C1        .byte $C1   ; 
- D 1 - I - 0x003937 00:B927: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003939 00:B929: 88        .byte $88   ; 
- D 1 - I - 0x00393A 00:B92A: A9        .byte $A9   ; 
- D 1 - I - 0x00393B 00:B92B: C8        .byte $C8   ; 
- D 1 - I - 0x00393C 00:B92C: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00393E 00:B92E: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00393F 00:B92F: 62 B9     .word sub_DF_B962
- D 1 - I - 0x003941 00:B931: 37        .byte $37   ; 
- D 1 - I - 0x003942 00:B932: 87        .byte $87   ; 
- D 1 - I - 0x003943 00:B933: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003944 00:B934: 62 B9     .word sub_DF_B962
- D 1 - I - 0x003946 00:B936: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003948 00:B938: 18        .byte $18   ; 
- D 1 - I - 0x003949 00:B939: 19        .byte $19   ; 
- D 1 - I - 0x00394A 00:B93A: 18        .byte $18   ; 
- D 1 - I - 0x00394B 00:B93B: 18        .byte $18   ; 
- D 1 - I - 0x00394C 00:B93C: 19        .byte $19   ; 
- D 1 - I - 0x00394D 00:B93D: 68        .byte $68   ; 
- D 1 - I - 0x00394E 00:B93E: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003950 00:B940: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003951 00:B941: 17        .byte $17   ; 
- D 1 - I - 0x003952 00:B942: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003953 00:B943: EA        .byte con_mcb_EA   ; 



sub_DF_B944:
- D 1 - I - 0x003954 00:B944: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003956 00:B946: 11        .byte $11   ; 
- D 1 - I - 0x003957 00:B947: 11        .byte $11   ; 
- D 1 - I - 0x003958 00:B948: 61        .byte $61   ; 
- D 1 - I - 0x003959 00:B949: A1        .byte $A1   ; 
- D 1 - I - 0x00395A 00:B94A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00395B 00:B94B: 61        .byte $61   ; 
- D 1 - I - 0x00395C 00:B94C: 11        .byte $11   ; 
- D 1 - I - 0x00395D 00:B94D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00395E 00:B94E: A1        .byte $A1   ; 
- D 1 - I - 0x00395F 00:B94F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003960 00:B950: 11        .byte $11   ; 
- D 1 - I - 0x003961 00:B951: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003962 00:B952: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003963 00:B953: 11        .byte $11   ; 
- D 1 - I - 0x003964 00:B954: 81        .byte $81   ; 
- D 1 - I - 0x003965 00:B955: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003966 00:B956: 11        .byte $11   ; 
- D 1 - I - 0x003967 00:B957: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003968 00:B958: 81        .byte $81   ; 
- D 1 - I - 0x003969 00:B959: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00396A 00:B95A: 51        .byte $51   ; 
- D 1 - I - 0x00396B 00:B95B: 11        .byte $11   ; 
- D 1 - I - 0x00396C 00:B95C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x00396D 00:B95D: 81        .byte $81   ; 
- D 1 - I - 0x00396E 00:B95E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x00396F 00:B95F: 11        .byte $11   ; 
- D 1 - I - 0x003970 00:B960: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003971 00:B961: E0        .byte con_mcb_rts   ; 



sub_DF_B962:
- D 1 - I - 0x003972 00:B962: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003974 00:B964: 53        .byte $53   ; 
- D 1 - I - 0x003975 00:B965: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003977 00:B967: 58        .byte $58   ; 
- D 1 - I - 0x003978 00:B968: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003979 00:B969: 59        .byte $59   ; 
- D 1 - I - 0x00397A 00:B96A: 68        .byte $68   ; 
- D 1 - I - 0x00397B 00:B96B: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x00397D 00:B96D: 57        .byte $57   ; 
- D 1 - I - 0x00397E 00:B96E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003980 00:B970: 58        .byte $58   ; 
- D 1 - I - 0x003981 00:B971: 59        .byte $59   ; 
- D 1 - I - 0x003982 00:B972: 58        .byte $58   ; 
- D 1 - I - 0x003983 00:B973: 38        .byte $38   ; 
- D 1 - I - 0x003984 00:B974: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003985 00:B975: 39        .byte $39   ; 
- D 1 - I - 0x003986 00:B976: 58        .byte $58   ; 
- D 1 - I - 0x003987 00:B977: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003989 00:B979: 57        .byte $57   ; 
- D 1 - I - 0x00398A 00:B97A: 37        .byte $37   ; 
- D 1 - I - 0x00398B 00:B97B: 87        .byte $87   ; 
- D 1 - I - 0x00398C 00:B97C: E0        .byte con_mcb_rts   ; 



ch_2A_B97D_02:
- D 1 - I - 0x00398D 00:B97D: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x00398F 00:B97F: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003991 00:B981: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003993 00:B983: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003994 00:B984: 1F        .byte $1F   ; 
- D 1 - I - 0x003995 00:B985: 4F        .byte $4F   ; 
- D 1 - I - 0x003996 00:B986: 83        .byte $83   ; 
- D 1 - I - 0x003997 00:B987: 63        .byte $63   ; 
- D 1 - I - 0x003998 00:B988: 53        .byte $53   ; 
- D 1 - I - 0x003999 00:B989: 33        .byte $33   ; 
- D 1 - I - 0x00399A 00:B98A: 13        .byte $13   ; 
- D 1 - I - 0x00399B 00:B98B: 13        .byte $13   ; 
- D 1 - I - 0x00399C 00:B98C: 53        .byte $53   ; 
- D 1 - I - 0x00399D 00:B98D: 53        .byte $53   ; 
- D 1 - I - 0x00399E 00:B98E: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x00399F 00:B98F: 04 BA     .word sub_DF_BA04
- D 1 - I - 0x0039A1 00:B991: 33        .byte $33   ; 
- D 1 - I - 0x0039A2 00:B992: 33        .byte $33   ; 
- D 1 - I - 0x0039A3 00:B993: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039A4 00:B994: 83        .byte $83   ; 
- D 1 - I - 0x0039A5 00:B995: C3        .byte $C3   ; 
- D 1 - I - 0x0039A6 00:B996: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039A7 00:B997: 13        .byte $13   ; 
- D 1 - I - 0x0039A8 00:B998: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039A9 00:B999: C3        .byte $C3   ; 
- D 1 - I - 0x0039AA 00:B99A: B3        .byte $B3   ; 
- D 1 - I - 0x0039AB 00:B99B: A3        .byte $A3   ; 
- D 1 - I - 0x0039AC 00:B99C: 83        .byte $83   ; 
- D 1 - I - 0x0039AD 00:B99D: 83        .byte $83   ; 
- D 1 - I - 0x0039AE 00:B99E: A3        .byte $A3   ; 
- D 1 - I - 0x0039AF 00:B99F: C3        .byte $C3   ; 
- D 1 - I - 0x0039B0 00:B9A0: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039B1 00:B9A1: 13        .byte $13   ; 
- D 1 - I - 0x0039B2 00:B9A2: 13        .byte $13   ; 
- D 1 - I - 0x0039B3 00:B9A3: 53        .byte $53   ; 
- D 1 - I - 0x0039B4 00:B9A4: 53        .byte $53   ; 
- D 1 - I - 0x0039B5 00:B9A5: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0039B6 00:B9A6: 04 BA     .word sub_DF_BA04
- D 1 - I - 0x0039B8 00:B9A8: 33        .byte $33   ; 
- D 1 - I - 0x0039B9 00:B9A9: 33        .byte $33   ; 
- D 1 - I - 0x0039BA 00:B9AA: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039BB 00:B9AB: 83        .byte $83   ; 
- D 1 - I - 0x0039BC 00:B9AC: 83        .byte $83   ; 
- D 1 - I - 0x0039BD 00:B9AD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039BE 00:B9AE: 13        .byte $13   ; 
- D 1 - I - 0x0039BF 00:B9AF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039C0 00:B9B0: 83        .byte $83   ; 
- D 1 - I - 0x0039C1 00:B9B1: A3        .byte $A3   ; 
- D 1 - I - 0x0039C2 00:B9B2: C3        .byte $C3   ; 
- D 1 - I - 0x0039C3 00:B9B3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039C4 00:B9B4: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x0039C6 00:B9B6: 13        .byte $13   ; 
- D 1 - I - 0x0039C7 00:B9B7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039C8 00:B9B8: 83        .byte $83   ; 
- D 1 - I - 0x0039C9 00:B9B9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039CA 00:B9BA: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x0039CB 00:B9BB: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0039CC 00:B9BC: 19 BA     .word sub_DF_BA19
- D 1 - I - 0x0039CE 00:B9BE: 83        .byte $83   ; 
- D 1 - I - 0x0039CF 00:B9BF: 53        .byte $53   ; 
- D 1 - I - 0x0039D0 00:B9C0: 13        .byte $13   ; 
- D 1 - I - 0x0039D1 00:B9C1: 13        .byte $13   ; 
- D 1 - I - 0x0039D2 00:B9C2: 33        .byte $33   ; 
- D 1 - I - 0x0039D3 00:B9C3: 53        .byte $53   ; 
- D 1 - I - 0x0039D4 00:B9C4: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x0039D5 00:B9C5: 19 BA     .word sub_DF_BA19
- D 1 - I - 0x0039D7 00:B9C7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039D8 00:B9C8: C3        .byte $C3   ; 
- D 1 - I - 0x0039D9 00:B9C9: A3        .byte $A3   ; 
- D 1 - I - 0x0039DA 00:B9CA: 83        .byte $83   ; 
- D 1 - I - 0x0039DB 00:B9CB: 83        .byte $83   ; 
- D 1 - I - 0x0039DC 00:B9CC: C3        .byte $C3   ; 
- D 1 - I - 0x0039DD 00:B9CD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039DE 00:B9CE: 53        .byte $53   ; 
- D 1 - I - 0x0039DF 00:B9CF: 13        .byte $13   ; 
- D 1 - I - 0x0039E0 00:B9D0: 33        .byte $33   ; 
- D 1 - I - 0x0039E1 00:B9D1: 53        .byte $53   ; 
- D 1 - I - 0x0039E2 00:B9D2: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0039E4 00:B9D4: 68        .byte $68   ; 
- D 1 - I - 0x0039E5 00:B9D5: 59        .byte $59   ; 
- D 1 - I - 0x0039E6 00:B9D6: 38        .byte $38   ; 
- D 1 - I - 0x0039E7 00:B9D7: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x0039E9 00:B9D9: 13        .byte $13   ; 
- D 1 - I - 0x0039EA 00:B9DA: 83        .byte $83   ; 
- D 1 - I - 0x0039EB 00:B9DB: 13        .byte $13   ; 
- D 1 - I - 0x0039EC 00:B9DC: 83        .byte $83   ; 
- D 1 - I - 0x0039ED 00:B9DD: 63        .byte $63   ; 
- D 1 - I - 0x0039EE 00:B9DE: 53        .byte $53   ; 
- D 1 - I - 0x0039EF 00:B9DF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039F0 00:B9E0: C3        .byte $C3   ; 
- D 1 - I - 0x0039F1 00:B9E1: 83        .byte $83   ; 
- D 1 - I - 0x0039F2 00:B9E2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039F3 00:B9E3: 13        .byte $13   ; 
- D 1 - I - 0x0039F4 00:B9E4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x0039F5 00:B9E5: 83        .byte $83   ; 
- D 1 - I - 0x0039F6 00:B9E6: A3        .byte $A3   ; 
- D 1 - I - 0x0039F7 00:B9E7: C3        .byte $C3   ; 
- D 1 - I - 0x0039F8 00:B9E8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x0039F9 00:B9E9: 13        .byte $13   ; 
- D 1 - I - 0x0039FA 00:B9EA: 33        .byte $33   ; 
- D 1 - I - 0x0039FB 00:B9EB: 53        .byte $53   ; 
- D 1 - I - 0x0039FC 00:B9EC: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x0039FE 00:B9EE: 68        .byte $68   ; 
- D 1 - I - 0x0039FF 00:B9EF: 59        .byte $59   ; 
- D 1 - I - 0x003A00 00:B9F0: 38        .byte $38   ; 
- D 1 - I - 0x003A01 00:B9F1: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003A03 00:B9F3: 13        .byte $13   ; 
- D 1 - I - 0x003A04 00:B9F4: 83        .byte $83   ; 
- D 1 - I - 0x003A05 00:B9F5: 13        .byte $13   ; 
- D 1 - I - 0x003A06 00:B9F6: 83        .byte $83   ; 
- D 1 - I - 0x003A07 00:B9F7: 63        .byte $63   ; 
- D 1 - I - 0x003A08 00:B9F8: 33        .byte $33   ; 
- D 1 - I - 0x003A09 00:B9F9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A0A 00:B9FA: C3        .byte $C3   ; 
- D 1 - I - 0x003A0B 00:B9FB: 83        .byte $83   ; 
- D 1 - I - 0x003A0C 00:B9FC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A0D 00:B9FD: 13        .byte $13   ; 
- D 1 - I - 0x003A0E 00:B9FE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A0F 00:B9FF: 83        .byte $83   ; 
- D 1 - I - 0x003A10 00:BA00: A3        .byte $A3   ; 
- D 1 - I - 0x003A11 00:BA01: C3        .byte $C3   ; 
- D 1 - I - 0x003A12 00:BA02: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A13 00:BA03: EA        .byte con_mcb_EA   ; 



sub_DF_BA04:
- D 1 - I - 0x003A14 00:BA04: 33        .byte $33   ; 
- D 1 - I - 0x003A15 00:BA05: 33        .byte $33   ; 
- D 1 - I - 0x003A16 00:BA06: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A17 00:BA07: 83        .byte $83   ; 
- D 1 - I - 0x003A18 00:BA08: 83        .byte $83   ; 
- D 1 - I - 0x003A19 00:BA09: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A1A 00:BA0A: 13        .byte $13   ; 
- D 1 - I - 0x003A1B 00:BA0B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A1C 00:BA0C: C3        .byte $C3   ; 
- D 1 - I - 0x003A1D 00:BA0D: B3        .byte $B3   ; 
- D 1 - I - 0x003A1E 00:BA0E: A3        .byte $A3   ; 
- D 1 - I - 0x003A1F 00:BA0F: 83        .byte $83   ; 
- D 1 - I - 0x003A20 00:BA10: 83        .byte $83   ; 
- D 1 - I - 0x003A21 00:BA11: A3        .byte $A3   ; 
- D 1 - I - 0x003A22 00:BA12: C3        .byte $C3   ; 
- D 1 - I - 0x003A23 00:BA13: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A24 00:BA14: 13        .byte $13   ; 
- D 1 - I - 0x003A25 00:BA15: 33        .byte $33   ; 
- D 1 - I - 0x003A26 00:BA16: 53        .byte $53   ; 
- D 1 - I - 0x003A27 00:BA17: 53        .byte $53   ; 
- D 1 - I - 0x003A28 00:BA18: E0        .byte con_mcb_rts   ; 



sub_DF_BA19:
- D 1 - I - 0x003A29 00:BA19: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A2A 00:BA1A: 63        .byte $63   ; 
- D 1 - I - 0x003A2B 00:BA1B: 63        .byte $63   ; 
- D 1 - I - 0x003A2C 00:BA1C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A2D 00:BA1D: 13        .byte $13   ; 
- D 1 - I - 0x003A2E 00:BA1E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A2F 00:BA1F: A3        .byte $A3   ; 
- D 1 - I - 0x003A30 00:BA20: 63        .byte $63   ; 
- D 1 - I - 0x003A31 00:BA21: 63        .byte $63   ; 
- D 1 - I - 0x003A32 00:BA22: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A33 00:BA23: 63        .byte $63   ; 
- D 1 - I - 0x003A34 00:BA24: 53        .byte $53   ; 
- D 1 - I - 0x003A35 00:BA25: 13        .byte $13   ; 
- D 1 - I - 0x003A36 00:BA26: 13        .byte $13   ; 
- D 1 - I - 0x003A37 00:BA27: E0        .byte con_mcb_rts   ; 



ch_2A_BA28_03:
- D 1 - I - 0x003A38 00:BA28: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003A3A 00:BA2A: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x003A3C 00:BA2C: E3        .byte con_mcb_E3, $02   ; 
- D 1 - I - 0x003A3E 00:BA2E: D4        .byte con_mcb_D4, $07   ; 
- D 1 - I - 0x003A40 00:BA30: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003A41 00:BA31: 33        .byte $33   ; 
- D 1 - I - 0x003A42 00:BA32: 0B        .byte $0B   ; 
- D 1 - I - 0x003A43 00:BA33: 33        .byte $33   ; 
- D 1 - I - 0x003A44 00:BA34: 0B        .byte $0B   ; 
- D 1 - I - 0x003A45 00:BA35: 09        .byte $09   ; 
- D 1 - I - 0x003A46 00:BA36: 31        .byte $31   ; 
- D 1 - I - 0x003A47 00:BA37: 30        .byte $30   ; 
- D 1 - I - 0x003A48 00:BA38: 30        .byte $30   ; 
- D 1 - I - 0x003A49 00:BA39: 31        .byte $31   ; 
- D 1 - I - 0x003A4A 00:BA3A: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x003A4C 00:BA3C: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003A4D 00:BA3D: 41 BA     .word sub_DF_BA41
- D 1 - I - 0x003A4F 00:BA3F: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003A50 00:BA40: EA        .byte con_mcb_EA   ; 



sub_DF_BA41:
- D 1 - I - 0x003A51 00:BA41: D7        .byte con_mcb_D7, $07   ; 
- D 1 - I - 0x003A53 00:BA43: 13        .byte $13   ; 
- D 1 - I - 0x003A54 00:BA44: 33        .byte $33   ; 
- D 1 - I - 0x003A55 00:BA45: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003A56 00:BA46: 11        .byte $11   ; 
- D 1 - I - 0x003A57 00:BA47: 31        .byte $31   ; 
- D 1 - I - 0x003A58 00:BA48: 31        .byte $31   ; 
- D 1 - I - 0x003A59 00:BA49: 31        .byte $31   ; 
- D 1 - I - 0x003A5A 00:BA4A: E0        .byte con_mcb_rts   ; 



_off005_BA4B_2C_ost_2:
- D 1 - I - 0x003A5B 00:BA4B: 55 BA     .word ch_2C_BA55_00
- D 1 - I - 0x003A5D 00:BA4D: 05 BB     .word ch_2C_BB05_01
- D 1 - I - 0x003A5F 00:BA4F: EA BB     .word ch_2C_BBEA_02
- D 1 - I - 0x003A61 00:BA51: 5A BC     .word ch_2C_BC5A_03
- D 1 - I - 0x003A63 00:BA53: 00 00     .word $0000 ;    04



ch_2C_BA55_00:
- D 1 - I - 0x003A65 00:BA55: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x003A67 00:BA57: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003A69 00:BA59: E5        .byte con_mcb_E5, $08   ; 
- D 1 - I - 0x003A6B 00:BA5B: DB        .byte con_mcb_DB, $0F   ; 
- D 1 - I - 0x003A6D 00:BA5D: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x003A6F 00:BA5F: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003A71 00:BA61: E3        .byte con_mcb_E3, $11   ; 
- D 1 - I - 0x003A73 00:BA63: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003A75 00:BA65: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003A76 00:BA66: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003A78 00:BA68: 07        .byte $07   ; 
- D 1 - I - 0x003A79 00:BA69: 51        .byte $51   ; 
- D 1 - I - 0x003A7A 00:BA6A: 51        .byte $51   ; 
- D 1 - I - 0x003A7B 00:BA6B: 71        .byte $71   ; 
- D 1 - I - 0x003A7C 00:BA6C: 81        .byte $81   ; 
- D 1 - I - 0x003A7D 00:BA6D: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003A7E 00:BA6E: 81        .byte $81   ; 
- D 1 - I - 0x003A7F 00:BA6F: 51        .byte $51   ; 
- D 1 - I - 0x003A80 00:BA70: C1        .byte $C1   ; 
- D 1 - I - 0x003A81 00:BA71: 89        .byte $89   ; 
- D 1 - I - 0x003A82 00:BA72: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003A83 00:BA73: 81        .byte $81   ; 
- D 1 - I - 0x003A84 00:BA74: 03        .byte $03   ; 
- D 1 - I - 0x003A85 00:BA75: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A86 00:BA76: C1        .byte $C1   ; 
- D 1 - I - 0x003A87 00:BA77: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A88 00:BA78: 51        .byte $51   ; 
- D 1 - I - 0x003A89 00:BA79: 31        .byte $31   ; 
- D 1 - I - 0x003A8A 00:BA7A: 51        .byte $51   ; 
- D 1 - I - 0x003A8B 00:BA7B: 31        .byte $31   ; 
- D 1 - I - 0x003A8C 00:BA7C: C1        .byte $C1   ; 
- D 1 - I - 0x003A8D 00:BA7D: C1        .byte $C1   ; 
- D 1 - I - 0x003A8E 00:BA7E: 57        .byte $57   ; 
- D 1 - I - 0x003A8F 00:BA7F: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003A91 00:BA81: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003A92 00:BA82: 51        .byte $51   ; 
- D 1 - I - 0x003A93 00:BA83: 72        .byte $72   ; 
- D 1 - I - 0x003A94 00:BA84: 91        .byte $91   ; 
- D 1 - I - 0x003A95 00:BA85: A2        .byte $A2   ; 
- D 1 - I - 0x003A96 00:BA86: 91        .byte $91   ; 
- D 1 - I - 0x003A97 00:BA87: 72        .byte $72   ; 
- D 1 - I - 0x003A98 00:BA88: 51        .byte $51   ; 
- D 1 - I - 0x003A99 00:BA89: 42        .byte $42   ; 
- D 1 - I - 0x003A9A 00:BA8A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003A9B 00:BA8B: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003A9D 00:BA8D: 07        .byte $07   ; 
- D 1 - I - 0x003A9E 00:BA8E: C1        .byte $C1   ; 
- D 1 - I - 0x003A9F 00:BA8F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003AA0 00:BA90: 51        .byte $51   ; 
- D 1 - I - 0x003AA1 00:BA91: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AA2 00:BA92: A1        .byte $A1   ; 
- D 1 - I - 0x003AA3 00:BA93: A1        .byte $A1   ; 
- D 1 - I - 0x003AA4 00:BA94: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003AA5 00:BA95: 51        .byte $51   ; 
- D 1 - I - 0x003AA6 00:BA96: 01        .byte $01   ; 
- D 1 - I - 0x003AA7 00:BA97: 71        .byte $71   ; 
- D 1 - I - 0x003AA8 00:BA98: 59        .byte $59   ; 
- D 1 - I - 0x003AA9 00:BA99: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003AAA 00:BA9A: 51        .byte $51   ; 
- D 1 - I - 0x003AAB 00:BA9B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AAC 00:BA9C: 03        .byte $03   ; 
- D 1 - I - 0x003AAD 00:BA9D: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AAE 00:BA9E: C1        .byte $C1   ; 
- D 1 - I - 0x003AAF 00:BA9F: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003AB0 00:BAA0: 51        .byte $51   ; 
- D 1 - I - 0x003AB1 00:BAA1: 31        .byte $31   ; 
- D 1 - I - 0x003AB2 00:BAA2: 51        .byte $51   ; 
- D 1 - I - 0x003AB3 00:BAA3: 71        .byte $71   ; 
- D 1 - I - 0x003AB4 00:BAA4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003AB6 00:BAA6: 56        .byte $56   ; 
- D 1 - I - 0x003AB7 00:BAA7: 95        .byte $95   ; 
- D 1 - I - 0x003AB8 00:BAA8: 76        .byte $76   ; 
- D 1 - I - 0x003AB9 00:BAA9: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003ABB 00:BAAB: 57        .byte $57   ; 
- D 1 - I - 0x003ABC 00:BAAC: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003ABD 00:BAAD: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003ABF 00:BAAF: 51        .byte $51   ; 
- D 1 - I - 0x003AC0 00:BAB0: 42        .byte $42   ; 
- D 1 - I - 0x003AC1 00:BAB1: 21        .byte $21   ; 
- D 1 - I - 0x003AC2 00:BAB2: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AC3 00:BAB3: C2        .byte $C2   ; 
- D 1 - I - 0x003AC4 00:BAB4: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003AC5 00:BAB5: 21        .byte $21   ; 
- D 1 - I - 0x003AC6 00:BAB6: 42        .byte $42   ; 
- D 1 - I - 0x003AC7 00:BAB7: 51        .byte $51   ; 
- D 1 - I - 0x003AC8 00:BAB8: 72        .byte $72   ; 
- D 1 - I - 0x003AC9 00:BAB9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003ACA 00:BABA: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003ACC 00:BABC: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003ACD 00:BABD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003ACE 00:BABE: 09        .byte $09   ; 
- D 1 - I - 0x003ACF 00:BABF: 51        .byte $51   ; 
- D 1 - I - 0x003AD0 00:BAC0: 51        .byte $51   ; 
- D 1 - I - 0x003AD1 00:BAC1: 51        .byte $51   ; 
- D 1 - I - 0x003AD2 00:BAC2: 71        .byte $71   ; 
- D 1 - I - 0x003AD3 00:BAC3: 73        .byte $73   ; 
- D 1 - I - 0x003AD4 00:BAC4: 77        .byte $77   ; 
- D 1 - I - 0x003AD5 00:BAC5: 01        .byte $01   ; 
- D 1 - I - 0x003AD6 00:BAC6: 09        .byte $09   ; 
- D 1 - I - 0x003AD7 00:BAC7: 51        .byte $51   ; 
- D 1 - I - 0x003AD8 00:BAC8: 51        .byte $51   ; 
- D 1 - I - 0x003AD9 00:BAC9: 51        .byte $51   ; 
- D 1 - I - 0x003ADA 00:BACA: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003ADB 00:BACB: 11        .byte $11   ; 
- D 1 - I - 0x003ADC 00:BACC: 13        .byte $13   ; 
- D 1 - I - 0x003ADD 00:BACD: 17        .byte $17   ; 
- D 1 - I - 0x003ADE 00:BACE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003ADF 00:BACF: 01        .byte $01   ; 
- D 1 - I - 0x003AE0 00:BAD0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AE1 00:BAD1: C1        .byte $C1   ; 
- D 1 - I - 0x003AE2 00:BAD2: C3        .byte $C3   ; 
- D 1 - I - 0x003AE3 00:BAD3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003AE4 00:BAD4: 55        .byte $55   ; 
- D 1 - I - 0x003AE5 00:BAD5: 51        .byte $51   ; 
- D 1 - I - 0x003AE6 00:BAD6: 51        .byte $51   ; 
- D 1 - I - 0x003AE7 00:BAD7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AE8 00:BAD8: A3        .byte $A3   ; 
- D 1 - I - 0x003AE9 00:BAD9: A3        .byte $A3   ; 
- D 1 - I - 0x003AEA 00:BADA: A1        .byte $A1   ; 
- D 1 - I - 0x003AEB 00:BADB: 91        .byte $91   ; 
- D 1 - I - 0x003AEC 00:BADC: A1        .byte $A1   ; 
- D 1 - I - 0x003AED 00:BADD: B1        .byte $B1   ; 
- D 1 - I - 0x003AEE 00:BADE: C1        .byte $C1   ; 
- D 1 - I - 0x003AEF 00:BADF: C1        .byte $C1   ; 
- D 1 - I - 0x003AF0 00:BAE0: C3        .byte $C3   ; 
- D 1 - I - 0x003AF1 00:BAE1: C1        .byte $C1   ; 
- D 1 - I - 0x003AF2 00:BAE2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003AF3 00:BAE3: 21        .byte $21   ; 
- D 1 - I - 0x003AF4 00:BAE4: 31        .byte $31   ; 
- D 1 - I - 0x003AF5 00:BAE5: 41        .byte $41   ; 
- D 1 - I - 0x003AF6 00:BAE6: 91        .byte $91   ; 
- D 1 - I - 0x003AF7 00:BAE7: 71        .byte $71   ; 
- D 1 - I - 0x003AF8 00:BAE8: 51        .byte $51   ; 
- D 1 - I - 0x003AF9 00:BAE9: 41        .byte $41   ; 
- D 1 - I - 0x003AFA 00:BAEA: 21        .byte $21   ; 
- D 1 - I - 0x003AFB 00:BAEB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003AFC 00:BAEC: C1        .byte $C1   ; 
- D 1 - I - 0x003AFD 00:BAED: A1        .byte $A1   ; 
- D 1 - I - 0x003AFE 00:BAEE: B1        .byte $B1   ; 
- D 1 - I - 0x003AFF 00:BAEF: C1        .byte $C1   ; 
- D 1 - I - 0x003B00 00:BAF0: C3        .byte $C3   ; 
- D 1 - I - 0x003B01 00:BAF1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B02 00:BAF2: 55        .byte $55   ; 
- D 1 - I - 0x003B03 00:BAF3: 51        .byte $51   ; 
- D 1 - I - 0x003B04 00:BAF4: 51        .byte $51   ; 
- D 1 - I - 0x003B05 00:BAF5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B06 00:BAF6: A3        .byte $A3   ; 
- D 1 - I - 0x003B07 00:BAF7: A3        .byte $A3   ; 
- D 1 - I - 0x003B08 00:BAF8: A1        .byte $A1   ; 
- D 1 - I - 0x003B09 00:BAF9: 81        .byte $81   ; 
- D 1 - I - 0x003B0A 00:BAFA: A1        .byte $A1   ; 
- D 1 - I - 0x003B0B 00:BAFB: B1        .byte $B1   ; 
- D 1 - I - 0x003B0C 00:BAFC: C1        .byte $C1   ; 
- D 1 - I - 0x003B0D 00:BAFD: C1        .byte $C1   ; 
- D 1 - I - 0x003B0E 00:BAFE: C3        .byte $C3   ; 
- D 1 - I - 0x003B0F 00:BAFF: A1        .byte $A1   ; 
- D 1 - I - 0x003B10 00:BB00: 91        .byte $91   ; 
- D 1 - I - 0x003B11 00:BB01: 71        .byte $71   ; 
- D 1 - I - 0x003B12 00:BB02: 71        .byte $71   ; 
- D 1 - I - 0x003B13 00:BB03: 5F        .byte $5F   ; 
- D 1 - I - 0x003B14 00:BB04: EA        .byte con_mcb_EA   ; 



ch_2C_BB05_01:
- D 1 - I - 0x003B15 00:BB05: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003B17 00:BB07: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003B19 00:BB09: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x003B1B 00:BB0B: DB        .byte con_mcb_DB, $06   ; 
- D 1 - I - 0x003B1D 00:BB0D: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003B1F 00:BB0F: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x003B21 00:BB11: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003B23 00:BB13: E3        .byte con_mcb_E3, $12   ; 
- D 1 - I - 0x003B25 00:BB15: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003B27 00:BB17: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003B28 00:BB18: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003B2A 00:BB1A: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003B2B 00:BB1B: BE BB     .word sub_DF_BBBE
- D 1 - I - 0x003B2D 00:BB1D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B2E 00:BB1E: 51        .byte $51   ; 
- D 1 - I - 0x003B2F 00:BB1F: 51        .byte $51   ; 
- D 1 - I - 0x003B30 00:BB20: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B31 00:BB21: 91        .byte $91   ; 
- D 1 - I - 0x003B32 00:BB22: C1        .byte $C1   ; 
- D 1 - I - 0x003B33 00:BB23: 91        .byte $91   ; 
- D 1 - I - 0x003B34 00:BB24: C1        .byte $C1   ; 
- D 1 - I - 0x003B35 00:BB25: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B36 00:BB26: 51        .byte $51   ; 
- D 1 - I - 0x003B37 00:BB27: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B38 00:BB28: C1        .byte $C1   ; 
- D 1 - I - 0x003B39 00:BB29: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003B3A 00:BB2A: BE BB     .word sub_DF_BBBE
- D 1 - I - 0x003B3C 00:BB2C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B3D 00:BB2D: 51        .byte $51   ; 
- D 1 - I - 0x003B3E 00:BB2E: 51        .byte $51   ; 
- D 1 - I - 0x003B3F 00:BB2F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B40 00:BB30: 91        .byte $91   ; 
- D 1 - I - 0x003B41 00:BB31: C1        .byte $C1   ; 
- D 1 - I - 0x003B42 00:BB32: 91        .byte $91   ; 
- D 1 - I - 0x003B43 00:BB33: C1        .byte $C1   ; 
- D 1 - I - 0x003B44 00:BB34: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B45 00:BB35: 51        .byte $51   ; 
- D 1 - I - 0x003B46 00:BB36: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B47 00:BB37: C1        .byte $C1   ; 
- D 1 - I - 0x003B48 00:BB38: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003B49 00:BB39: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x003B4B 00:BB3B: DA        .byte con_mcb_DA, $80   ; 
- D 1 - I - 0x003B4D 00:BB3D: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003B4F 00:BB3F: E5        .byte con_mcb_E5, $05   ; 
- D 1 - I - 0x003B51 00:BB41: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B52 00:BB42: A1        .byte $A1   ; 
- D 1 - I - 0x003B53 00:BB43: A1        .byte $A1   ; 
- D 1 - I - 0x003B54 00:BB44: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B55 00:BB45: 21        .byte $21   ; 
- D 1 - I - 0x003B56 00:BB46: 55        .byte $55   ; 
- D 1 - I - 0x003B57 00:BB47: 21        .byte $21   ; 
- D 1 - I - 0x003B58 00:BB48: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B59 00:BB49: A1        .byte $A1   ; 
- D 1 - I - 0x003B5A 00:BB4A: C1        .byte $C1   ; 
- D 1 - I - 0x003B5B 00:BB4B: C1        .byte $C1   ; 
- D 1 - I - 0x003B5C 00:BB4C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B5D 00:BB4D: 41        .byte $41   ; 
- D 1 - I - 0x003B5E 00:BB4E: 75        .byte $75   ; 
- D 1 - I - 0x003B5F 00:BB4F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B60 00:BB50: C1        .byte $C1   ; 
- D 1 - I - 0x003B61 00:BB51: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B62 00:BB52: 41        .byte $41   ; 
- D 1 - I - 0x003B63 00:BB53: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B64 00:BB54: A1        .byte $A1   ; 
- D 1 - I - 0x003B65 00:BB55: A1        .byte $A1   ; 
- D 1 - I - 0x003B66 00:BB56: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B67 00:BB57: 21        .byte $21   ; 
- D 1 - I - 0x003B68 00:BB58: 55        .byte $55   ; 
- D 1 - I - 0x003B69 00:BB59: 21        .byte $21   ; 
- D 1 - I - 0x003B6A 00:BB5A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B6B 00:BB5B: A1        .byte $A1   ; 
- D 1 - I - 0x003B6C 00:BB5C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B6D 00:BB5D: 51        .byte $51   ; 
- D 1 - I - 0x003B6E 00:BB5E: 53        .byte $53   ; 
- D 1 - I - 0x003B6F 00:BB5F: 73        .byte $73   ; 
- D 1 - I - 0x003B70 00:BB60: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B71 00:BB61: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003B73 00:BB63: C1        .byte $C1   ; 
- D 1 - I - 0x003B74 00:BB64: A2        .byte $A2   ; 
- D 1 - I - 0x003B75 00:BB65: 91        .byte $91   ; 
- D 1 - I - 0x003B76 00:BB66: 72        .byte $72   ; 
- D 1 - I - 0x003B77 00:BB67: 51        .byte $51   ; 
- D 1 - I - 0x003B78 00:BB68: 42        .byte $42   ; 
- D 1 - I - 0x003B79 00:BB69: 21        .byte $21   ; 
- D 1 - I - 0x003B7A 00:BB6A: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003B7B 00:BB6B: C2        .byte $C2   ; 
- D 1 - I - 0x003B7C 00:BB6C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003B7D 00:BB6D: 21        .byte $21   ; 
- D 1 - I - 0x003B7E 00:BB6E: 42        .byte $42   ; 
- D 1 - I - 0x003B7F 00:BB6F: 51        .byte $51   ; 
- D 1 - I - 0x003B80 00:BB70: 72        .byte $72   ; 
- D 1 - I - 0x003B81 00:BB71: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003B83 00:BB73: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003B85 00:BB75: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x003B87 00:BB77: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003B89 00:BB79: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x003B8B 00:BB7B: 51        .byte $51   ; 
- D 1 - I - 0x003B8C 00:BB7C: 51        .byte $51   ; 
- D 1 - I - 0x003B8D 00:BB7D: 91        .byte $91   ; 
- D 1 - I - 0x003B8E 00:BB7E: C1        .byte $C1   ; 
- D 1 - I - 0x003B8F 00:BB7F: A1        .byte $A1   ; 
- D 1 - I - 0x003B90 00:BB80: A1        .byte $A1   ; 
- D 1 - I - 0x003B91 00:BB81: 91        .byte $91   ; 
- D 1 - I - 0x003B92 00:BB82: 91        .byte $91   ; 
- D 1 - I - 0x003B93 00:BB83: 21        .byte $21   ; 
- D 1 - I - 0x003B94 00:BB84: 21        .byte $21   ; 
- D 1 - I - 0x003B95 00:BB85: 51        .byte $51   ; 
- D 1 - I - 0x003B96 00:BB86: A1        .byte $A1   ; 
- D 1 - I - 0x003B97 00:BB87: 91        .byte $91   ; 
- D 1 - I - 0x003B98 00:BB88: 91        .byte $91   ; 
- D 1 - I - 0x003B99 00:BB89: 51        .byte $51   ; 
- D 1 - I - 0x003B9A 00:BB8A: 51        .byte $51   ; 
- D 1 - I - 0x003B9B 00:BB8B: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003B9D 00:BB8D: 41        .byte $41   ; 
- D 1 - I - 0x003B9E 00:BB8E: 41        .byte $41   ; 
- D 1 - I - 0x003B9F 00:BB8F: 71        .byte $71   ; 
- D 1 - I - 0x003BA0 00:BB90: C1        .byte $C1   ; 
- D 1 - I - 0x003BA1 00:BB91: A1        .byte $A1   ; 
- D 1 - I - 0x003BA2 00:BB92: A1        .byte $A1   ; 
- D 1 - I - 0x003BA3 00:BB93: 71        .byte $71   ; 
- D 1 - I - 0x003BA4 00:BB94: 71        .byte $71   ; 
- D 1 - I - 0x003BA5 00:BB95: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003BA6 00:BB96: 51        .byte $51   ; 
- D 1 - I - 0x003BA7 00:BB97: 51        .byte $51   ; 
- D 1 - I - 0x003BA8 00:BB98: 91        .byte $91   ; 
- D 1 - I - 0x003BA9 00:BB99: C1        .byte $C1   ; 
- D 1 - I - 0x003BAA 00:BB9A: A1        .byte $A1   ; 
- D 1 - I - 0x003BAB 00:BB9B: A1        .byte $A1   ; 
- D 1 - I - 0x003BAC 00:BB9C: 91        .byte $91   ; 
- D 1 - I - 0x003BAD 00:BB9D: 91        .byte $91   ; 
- D 1 - I - 0x003BAE 00:BB9E: 21        .byte $21   ; 
- D 1 - I - 0x003BAF 00:BB9F: 21        .byte $21   ; 
- D 1 - I - 0x003BB0 00:BBA0: 51        .byte $51   ; 
- D 1 - I - 0x003BB1 00:BBA1: A1        .byte $A1   ; 
- D 1 - I - 0x003BB2 00:BBA2: 91        .byte $91   ; 
- D 1 - I - 0x003BB3 00:BBA3: 91        .byte $91   ; 
- D 1 - I - 0x003BB4 00:BBA4: 51        .byte $51   ; 
- D 1 - I - 0x003BB5 00:BBA5: 51        .byte $51   ; 
- D 1 - I - 0x003BB6 00:BBA6: 41        .byte $41   ; 
- D 1 - I - 0x003BB7 00:BBA7: 41        .byte $41   ; 
- D 1 - I - 0x003BB8 00:BBA8: 43        .byte $43   ; 
- D 1 - I - 0x003BB9 00:BBA9: 21        .byte $21   ; 
- D 1 - I - 0x003BBA 00:BBAA: 21        .byte $21   ; 
- D 1 - I - 0x003BBB 00:BBAB: 21        .byte $21   ; 
- D 1 - I - 0x003BBC 00:BBAC: 21        .byte $21   ; 
- D 1 - I - 0x003BBD 00:BBAD: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BBE 00:BBAE: CB        .byte $CB   ; 
- D 1 - I - 0x003BBF 00:BBAF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BC0 00:BBB0: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003BC2 00:BBB2: C1        .byte $C1   ; 
- D 1 - I - 0x003BC3 00:BBB3: A2        .byte $A2   ; 
- D 1 - I - 0x003BC4 00:BBB4: 91        .byte $91   ; 
- D 1 - I - 0x003BC5 00:BBB5: 72        .byte $72   ; 
- D 1 - I - 0x003BC6 00:BBB6: 51        .byte $51   ; 
- D 1 - I - 0x003BC7 00:BBB7: 42        .byte $42   ; 
- D 1 - I - 0x003BC8 00:BBB8: 21        .byte $21   ; 
- D 1 - I - 0x003BC9 00:BBB9: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BCA 00:BBBA: C2        .byte $C2   ; 
- D 1 - I - 0x003BCB 00:BBBB: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003BCD 00:BBBD: EA        .byte con_mcb_EA   ; 



sub_DF_BBBE:
- D 1 - I - 0x003BCE 00:BBBE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003BD0 00:BBC0: 91        .byte $91   ; 
- D 1 - I - 0x003BD1 00:BBC1: A2        .byte $A2   ; 
- D 1 - I - 0x003BD2 00:BBC2: C1        .byte $C1   ; 
- D 1 - I - 0x003BD3 00:BBC3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BD4 00:BBC4: 22        .byte $22   ; 
- D 1 - I - 0x003BD5 00:BBC5: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003BD7 00:BBC7: 51        .byte $51   ; 
- D 1 - I - 0x003BD8 00:BBC8: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BD9 00:BBC9: 91        .byte $91   ; 
- D 1 - I - 0x003BDA 00:BBCA: C1        .byte $C1   ; 
- D 1 - I - 0x003BDB 00:BBCB: 91        .byte $91   ; 
- D 1 - I - 0x003BDC 00:BBCC: C1        .byte $C1   ; 
- D 1 - I - 0x003BDD 00:BBCD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BDE 00:BBCE: 51        .byte $51   ; 
- D 1 - I - 0x003BDF 00:BBCF: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BE0 00:BBD0: C1        .byte $C1   ; 
- D 1 - I - 0x003BE1 00:BBD1: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BE2 00:BBD2: 51        .byte $51   ; 
- D 1 - I - 0x003BE3 00:BBD3: 51        .byte $51   ; 
- D 1 - I - 0x003BE4 00:BBD4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BE5 00:BBD5: 91        .byte $91   ; 
- D 1 - I - 0x003BE6 00:BBD6: C1        .byte $C1   ; 
- D 1 - I - 0x003BE7 00:BBD7: 91        .byte $91   ; 
- D 1 - I - 0x003BE8 00:BBD8: C1        .byte $C1   ; 
- D 1 - I - 0x003BE9 00:BBD9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BEA 00:BBDA: 51        .byte $51   ; 
- D 1 - I - 0x003BEB 00:BBDB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BEC 00:BBDC: 51        .byte $51   ; 
- D 1 - I - 0x003BED 00:BBDD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BEE 00:BBDE: 51        .byte $51   ; 
- D 1 - I - 0x003BEF 00:BBDF: 51        .byte $51   ; 
- D 1 - I - 0x003BF0 00:BBE0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BF1 00:BBE1: 91        .byte $91   ; 
- D 1 - I - 0x003BF2 00:BBE2: C1        .byte $C1   ; 
- D 1 - I - 0x003BF3 00:BBE3: 91        .byte $91   ; 
- D 1 - I - 0x003BF4 00:BBE4: C1        .byte $C1   ; 
- D 1 - I - 0x003BF5 00:BBE5: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003BF6 00:BBE6: 51        .byte $51   ; 
- D 1 - I - 0x003BF7 00:BBE7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003BF8 00:BBE8: C1        .byte $C1   ; 
- D 1 - I - 0x003BF9 00:BBE9: E0        .byte con_mcb_rts   ; 



ch_2C_BBEA_02:
- D 1 - I - 0x003BFA 00:BBEA: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x003BFC 00:BBEC: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003BFE 00:BBEE: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003C00 00:BBF0: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003C01 00:BBF1: D7        .byte con_mcb_D7, $10   ; 
- D 1 - I - 0x003C03 00:BBF3: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003C04 00:BBF4: 50 BC     .word sub_DF_BC50
- D 1 - I - 0x003C06 00:BBF6: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003C07 00:BBF7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C08 00:BBF8: A3        .byte $A3   ; 
- D 1 - I - 0x003C09 00:BBF9: A1        .byte $A1   ; 
- D 1 - I - 0x003C0A 00:BBFA: A1        .byte $A1   ; 
- D 1 - I - 0x003C0B 00:BBFB: A1        .byte $A1   ; 
- D 1 - I - 0x003C0C 00:BBFC: 81        .byte $81   ; 
- D 1 - I - 0x003C0D 00:BBFD: A1        .byte $A1   ; 
- D 1 - I - 0x003C0E 00:BBFE: B1        .byte $B1   ; 
- D 1 - I - 0x003C0F 00:BBFF: C3        .byte $C3   ; 
- D 1 - I - 0x003C10 00:BC00: C1        .byte $C1   ; 
- D 1 - I - 0x003C11 00:BC01: C1        .byte $C1   ; 
- D 1 - I - 0x003C12 00:BC02: C3        .byte $C3   ; 
- D 1 - I - 0x003C13 00:BC03: C1        .byte $C1   ; 
- D 1 - I - 0x003C14 00:BC04: C1        .byte $C1   ; 
- D 1 - I - 0x003C15 00:BC05: A3        .byte $A3   ; 
- D 1 - I - 0x003C16 00:BC06: A1        .byte $A1   ; 
- D 1 - I - 0x003C17 00:BC07: A1        .byte $A1   ; 
- D 1 - I - 0x003C18 00:BC08: A1        .byte $A1   ; 
- D 1 - I - 0x003C19 00:BC09: 81        .byte $81   ; 
- D 1 - I - 0x003C1A 00:BC0A: A1        .byte $A1   ; 
- D 1 - I - 0x003C1B 00:BC0B: B1        .byte $B1   ; 
- D 1 - I - 0x003C1C 00:BC0C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C1D 00:BC0D: 11        .byte $11   ; 
- D 1 - I - 0x003C1E 00:BC0E: 11        .byte $11   ; 
- D 1 - I - 0x003C1F 00:BC0F: 11        .byte $11   ; 
- D 1 - I - 0x003C20 00:BC10: 11        .byte $11   ; 
- D 1 - I - 0x003C21 00:BC11: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C22 00:BC12: C3        .byte $C3   ; 
- D 1 - I - 0x003C23 00:BC13: C3        .byte $C3   ; 
- D 1 - I - 0x003C24 00:BC14: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C25 00:BC15: 51        .byte $51   ; 
- D 1 - I - 0x003C26 00:BC16: 51        .byte $51   ; 
- D 1 - I - 0x003C27 00:BC17: 51        .byte $51   ; 
- D 1 - I - 0x003C28 00:BC18: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C29 00:BC19: 55        .byte $55   ; 
- D 1 - I - 0x003C2A 00:BC1A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C2B 00:BC1B: 81        .byte $81   ; 
- D 1 - I - 0x003C2C 00:BC1C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C2D 00:BC1D: 51        .byte $51   ; 
- D 1 - I - 0x003C2E 00:BC1E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C2F 00:BC1F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C30 00:BC20: A3        .byte $A3   ; 
- D 1 - I - 0x003C31 00:BC21: A3        .byte $A3   ; 
- D 1 - I - 0x003C32 00:BC22: A1        .byte $A1   ; 
- D 1 - I - 0x003C33 00:BC23: 81        .byte $81   ; 
- D 1 - I - 0x003C34 00:BC24: A1        .byte $A1   ; 
- D 1 - I - 0x003C35 00:BC25: B1        .byte $B1   ; 
- D 1 - I - 0x003C36 00:BC26: D7        .byte con_mcb_D7, $0D   ; 
- D 1 - I - 0x003C38 00:BC28: C1        .byte $C1   ; 
- D 1 - I - 0x003C39 00:BC29: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003C3A 00:BC2A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C3B 00:BC2B: 21        .byte $21   ; 
- D 1 - I - 0x003C3C 00:BC2C: 31        .byte $31   ; 
- D 1 - I - 0x003C3D 00:BC2D: 41        .byte $41   ; 
- D 1 - I - 0x003C3E 00:BC2E: 51        .byte $51   ; 
- D 1 - I - 0x003C3F 00:BC2F: 51        .byte $51   ; 
- D 1 - I - 0x003C40 00:BC30: 51        .byte $51   ; 
- D 1 - I - 0x003C41 00:BC31: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C42 00:BC32: 55        .byte $55   ; 
- D 1 - I - 0x003C43 00:BC33: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C44 00:BC34: 51        .byte $51   ; 
- D 1 - I - 0x003C45 00:BC35: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C46 00:BC36: 51        .byte $51   ; 
- D 1 - I - 0x003C47 00:BC37: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C48 00:BC38: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C49 00:BC39: A3        .byte $A3   ; 
- D 1 - I - 0x003C4A 00:BC3A: A3        .byte $A3   ; 
- D 1 - I - 0x003C4B 00:BC3B: A1        .byte $A1   ; 
- D 1 - I - 0x003C4C 00:BC3C: 81        .byte $81   ; 
- D 1 - I - 0x003C4D 00:BC3D: A1        .byte $A1   ; 
- D 1 - I - 0x003C4E 00:BC3E: B1        .byte $B1   ; 
- D 1 - I - 0x003C4F 00:BC3F: C1        .byte $C1   ; 
- D 1 - I - 0x003C50 00:BC40: C1        .byte $C1   ; 
- D 1 - I - 0x003C51 00:BC41: C1        .byte $C1   ; 
- D 1 - I - 0x003C52 00:BC42: C1        .byte $C1   ; 
- D 1 - I - 0x003C53 00:BC43: A1        .byte $A1   ; 
- D 1 - I - 0x003C54 00:BC44: A1        .byte $A1   ; 
- D 1 - I - 0x003C55 00:BC45: A1        .byte $A1   ; 
- D 1 - I - 0x003C56 00:BC46: A1        .byte $A1   ; 
- D 1 - I - 0x003C57 00:BC47: 53        .byte $53   ; 
- D 1 - I - 0x003C58 00:BC48: B1        .byte $B1   ; 
- D 1 - I - 0x003C59 00:BC49: C1        .byte $C1   ; 
- D 1 - I - 0x003C5A 00:BC4A: 51        .byte $51   ; 
- D 1 - I - 0x003C5B 00:BC4B: 51        .byte $51   ; 
- D 1 - I - 0x003C5C 00:BC4C: A1        .byte $A1   ; 
- D 1 - I - 0x003C5D 00:BC4D: C1        .byte $C1   ; 
- D 1 - I - 0x003C5E 00:BC4E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C5F 00:BC4F: EA        .byte con_mcb_EA   ; 



sub_DF_BC50:
- D 1 - I - 0x003C60 00:BC50: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003C61 00:BC51: 33        .byte $33   ; 
- D 1 - I - 0x003C62 00:BC52: B1        .byte $B1   ; 
- D 1 - I - 0x003C63 00:BC53: C1        .byte $C1   ; 
- D 1 - I - 0x003C64 00:BC54: 51        .byte $51   ; 
- D 1 - I - 0x003C65 00:BC55: 51        .byte $51   ; 
- D 1 - I - 0x003C66 00:BC56: A1        .byte $A1   ; 
- D 1 - I - 0x003C67 00:BC57: C1        .byte $C1   ; 
- D 1 - I - 0x003C68 00:BC58: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003C69 00:BC59: E0        .byte con_mcb_rts   ; 



ch_2C_BC5A_03:
- D 1 - I - 0x003C6A 00:BC5A: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x003C6C 00:BC5C: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003C6E 00:BC5E: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003C6F 00:BC5F: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003C71 00:BC61: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003C72 00:BC62: 7E BC     .word sub_DF_BC7E
- D 1 - I - 0x003C74 00:BC64: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003C75 00:BC65: 8D BC     .word sub_DF_BC8D
- D 1 - I - 0x003C77 00:BC67: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003C78 00:BC68: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003C79 00:BC69: 7E BC     .word sub_DF_BC7E
- D 1 - I - 0x003C7B 00:BC6B: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003C7C 00:BC6C: 7E BC     .word sub_DF_BC7E
- D 1 - I - 0x003C7E 00:BC6E: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003C80 00:BC70: 23        .byte $23   ; 
- D 1 - I - 0x003C81 00:BC71: 33        .byte $33   ; 
- D 1 - I - 0x003C82 00:BC72: 21        .byte $21   ; 
- D 1 - I - 0x003C83 00:BC73: 21        .byte $21   ; 
- D 1 - I - 0x003C84 00:BC74: 33        .byte $33   ; 
- D 1 - I - 0x003C85 00:BC75: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003C86 00:BC76: 23        .byte $23   ; 
- D 1 - I - 0x003C87 00:BC77: 33        .byte $33   ; 
- D 1 - I - 0x003C88 00:BC78: 21        .byte $21   ; 
- D 1 - I - 0x003C89 00:BC79: 31        .byte $31   ; 
- D 1 - I - 0x003C8A 00:BC7A: 31        .byte $31   ; 
- D 1 - I - 0x003C8B 00:BC7B: 30        .byte $30   ; 
- D 1 - I - 0x003C8C 00:BC7C: 30        .byte $30   ; 
- D 1 - I - 0x003C8D 00:BC7D: EA        .byte con_mcb_EA   ; 



sub_DF_BC7E:
- D 1 - I - 0x003C8E 00:BC7E: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003C90 00:BC80: 23        .byte $23   ; 
- D 1 - I - 0x003C91 00:BC81: 33        .byte $33   ; 
- D 1 - I - 0x003C92 00:BC82: 21        .byte $21   ; 
- D 1 - I - 0x003C93 00:BC83: 21        .byte $21   ; 
- D 1 - I - 0x003C94 00:BC84: 33        .byte $33   ; 
- D 1 - I - 0x003C95 00:BC85: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003C96 00:BC86: 23        .byte $23   ; 
- D 1 - I - 0x003C97 00:BC87: 33        .byte $33   ; 
- D 1 - I - 0x003C98 00:BC88: 21        .byte $21   ; 
- D 1 - I - 0x003C99 00:BC89: 31        .byte $31   ; 
- D 1 - I - 0x003C9A 00:BC8A: 31        .byte $31   ; 
- D 1 - I - 0x003C9B 00:BC8B: 31        .byte $31   ; 
- D 1 - I - 0x003C9C 00:BC8C: E0        .byte con_mcb_rts   ; 



sub_DF_BC8D:
- D 1 - I - 0x003C9D 00:BC8D: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003C9F 00:BC8F: 23        .byte $23   ; 
- D 1 - I - 0x003CA0 00:BC90: 33        .byte $33   ; 
- D 1 - I - 0x003CA1 00:BC91: 21        .byte $21   ; 
- D 1 - I - 0x003CA2 00:BC92: 21        .byte $21   ; 
- D 1 - I - 0x003CA3 00:BC93: 33        .byte $33   ; 
- D 1 - I - 0x003CA4 00:BC94: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003CA5 00:BC95: 23        .byte $23   ; 
- D 1 - I - 0x003CA6 00:BC96: 33        .byte $33   ; 
- D 1 - I - 0x003CA7 00:BC97: 21        .byte $21   ; 
- D 1 - I - 0x003CA8 00:BC98: 31        .byte $31   ; 
- D 1 - I - 0x003CA9 00:BC99: 31        .byte $31   ; 
- D 1 - I - 0x003CAA 00:BC9A: 30        .byte $30   ; 
- D 1 - I - 0x003CAB 00:BC9B: 30        .byte $30   ; 
- D 1 - I - 0x003CAC 00:BC9C: E0        .byte con_mcb_rts   ; 



_off005_BC9D_2D_game_over:
- D 1 - I - 0x003CAD 00:BC9D: A7 BC     .word ch_2D_BCA7_00
- D 1 - I - 0x003CAF 00:BC9F: DD BC     .word ch_2D_BCDD_01
- D 1 - I - 0x003CB1 00:BCA1: 2B BD     .word ch_2D_BD2B_02
- D 1 - I - 0x003CB3 00:BCA3: 47 BD     .word ch_2D_BD47_03
- D 1 - I - 0x003CB5 00:BCA5: 00 00     .word $0000 ;    04



ch_2D_BCA7_00:
- D 1 - I - 0x003CB7 00:BCA7: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003CB9 00:BCA9: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003CBB 00:BCAB: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x003CBD 00:BCAD: DB        .byte con_mcb_DB, $0F   ; 
- D 1 - I - 0x003CBF 00:BCAF: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x003CC1 00:BCB1: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003CC3 00:BCB3: E3        .byte con_mcb_E3, $13   ; 
- D 1 - I - 0x003CC5 00:BCB5: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003CC7 00:BCB7: C1        .byte $C1   ; 
- D 1 - I - 0x003CC8 00:BCB8: 81        .byte $81   ; 
- D 1 - I - 0x003CC9 00:BCB9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003CCA 00:BCBA: 11        .byte $11   ; 
- D 1 - I - 0x003CCB 00:BCBB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003CCC 00:BCBC: 91        .byte $91   ; 
- D 1 - I - 0x003CCD 00:BCBD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003CCE 00:BCBE: 41        .byte $41   ; 
- D 1 - I - 0x003CCF 00:BCBF: 11        .byte $11   ; 
- D 1 - I - 0x003CD0 00:BCC0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003CD1 00:BCC1: 81        .byte $81   ; 
- D 1 - I - 0x003CD2 00:BCC2: 41        .byte $41   ; 
- D 1 - I - 0x003CD3 00:BCC3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003CD4 00:BCC4: 47        .byte $47   ; 
- D 1 - I - 0x003CD5 00:BCC5: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003CD7 00:BCC7: 41        .byte $41   ; 
- D 1 - I - 0x003CD8 00:BCC8: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003CDA 00:BCCA: 81        .byte $81   ; 
- D 1 - I - 0x003CDB 00:BCCB: A1        .byte $A1   ; 
- D 1 - I - 0x003CDC 00:BCCC: C1        .byte $C1   ; 
- D 1 - I - 0x003CDD 00:BCCD: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003CDE 00:BCCE: 11        .byte $11   ; 
- D 1 - I - 0x003CDF 00:BCCF: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003CE1 00:BCD1: 11        .byte $11   ; 
- D 1 - I - 0x003CE2 00:BCD2: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003CE4 00:BCD4: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003CE5 00:BCD5: 11        .byte $11   ; 
- D 1 - I - 0x003CE6 00:BCD6: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003CE8 00:BCD8: 11        .byte $11   ; 
- D 1 - I - 0x003CE9 00:BCD9: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003CEB 00:BCDB: 07        .byte $07   ; 
- D 1 - I - 0x003CEC 00:BCDC: D0        .byte con_mcb_stop   ; 



ch_2D_BCDD_01:
- D 1 - I - 0x003CED 00:BCDD: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x003CEF 00:BCDF: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003CF1 00:BCE1: E5        .byte con_mcb_E5, $05   ; 
- D 1 - I - 0x003CF3 00:BCE3: DB        .byte con_mcb_DB, $04   ; 
- D 1 - I - 0x003CF5 00:BCE5: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003CF7 00:BCE7: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x003CF9 00:BCE9: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003CFB 00:BCEB: E3        .byte con_mcb_E3, $14   ; 
- D 1 - I - 0x003CFD 00:BCED: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003CFF 00:BCEF: 31        .byte $31   ; 
- D 1 - I - 0x003D00 00:BCF0: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D01 00:BCF1: C1        .byte $C1   ; 
- D 1 - I - 0x003D02 00:BCF2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D03 00:BCF3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D04 00:BCF4: D4        .byte con_mcb_D4, $02   ; 
- D 1 - I - 0x003D06 00:BCF6: 90        .byte $90   ; 
- D 1 - I - 0x003D07 00:BCF7: 70        .byte $70   ; 
- D 1 - I - 0x003D08 00:BCF8: 60        .byte $60   ; 
- D 1 - I - 0x003D09 00:BCF9: 40        .byte $40   ; 
- D 1 - I - 0x003D0A 00:BCFA: 20        .byte $20   ; 
- D 1 - I - 0x003D0B 00:BCFB: 10        .byte $10   ; 
- D 1 - I - 0x003D0C 00:BCFC: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D0D 00:BCFD: B0        .byte $B0   ; 
- D 1 - I - 0x003D0E 00:BCFE: 90        .byte $90   ; 
- D 1 - I - 0x003D0F 00:BCFF: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003D10 00:BD00: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003D12 00:BD02: 91        .byte $91   ; 
- D 1 - I - 0x003D13 00:BD03: 41        .byte $41   ; 
- D 1 - I - 0x003D14 00:BD04: 11        .byte $11   ; 
- D 1 - I - 0x003D15 00:BD05: 81        .byte $81   ; 
- D 1 - I - 0x003D16 00:BD06: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D17 00:BD07: 17        .byte $17   ; 
- D 1 - I - 0x003D18 00:BD08: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003D1A 00:BD0A: 11        .byte $11   ; 
- D 1 - I - 0x003D1B 00:BD0B: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003D1D 00:BD0D: D4        .byte con_mcb_D4, $03   ; 
- D 1 - I - 0x003D1F 00:BD0F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D20 00:BD10: 80        .byte $80   ; 
- D 1 - I - 0x003D21 00:BD11: A0        .byte $A0   ; 
- D 1 - I - 0x003D22 00:BD12: C0        .byte $C0   ; 
- D 1 - I - 0x003D23 00:BD13: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D24 00:BD14: 10        .byte $10   ; 
- D 1 - I - 0x003D25 00:BD15: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D26 00:BD16: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003D28 00:BD18: C1        .byte $C1   ; 
- D 1 - I - 0x003D29 00:BD19: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D2A 00:BD1A: 11        .byte $11   ; 
- D 1 - I - 0x003D2B 00:BD1B: 31        .byte $31   ; 
- D 1 - I - 0x003D2C 00:BD1C: 51        .byte $51   ; 
- D 1 - I - 0x003D2D 00:BD1D: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003D2F 00:BD1F: 51        .byte $51   ; 
- D 1 - I - 0x003D30 00:BD20: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003D32 00:BD22: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D33 00:BD23: 51        .byte $51   ; 
- D 1 - I - 0x003D34 00:BD24: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003D36 00:BD26: 51        .byte $51   ; 
- D 1 - I - 0x003D37 00:BD27: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003D39 00:BD29: 07        .byte $07   ; 
- D 1 - I - 0x003D3A 00:BD2A: D0        .byte con_mcb_stop   ; 



ch_2D_BD2B_02:
- D 1 - I - 0x003D3B 00:BD2B: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x003D3D 00:BD2D: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003D3F 00:BD2F: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003D41 00:BD31: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D42 00:BD32: 81        .byte $81   ; 
- D 1 - I - 0x003D43 00:BD33: 81        .byte $81   ; 
- D 1 - I - 0x003D44 00:BD34: 01        .byte $01   ; 
- D 1 - I - 0x003D45 00:BD35: 81        .byte $81   ; 
- D 1 - I - 0x003D46 00:BD36: 91        .byte $91   ; 
- D 1 - I - 0x003D47 00:BD37: 71        .byte $71   ; 
- D 1 - I - 0x003D48 00:BD38: 01        .byte $01   ; 
- D 1 - I - 0x003D49 00:BD39: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D4A 00:BD3A: 41        .byte $41   ; 
- D 1 - I - 0x003D4B 00:BD3B: 97        .byte $97   ; 
- D 1 - I - 0x003D4C 00:BD3C: 01        .byte $01   ; 
- D 1 - I - 0x003D4D 00:BD3D: 61        .byte $61   ; 
- D 1 - I - 0x003D4E 00:BD3E: 51        .byte $51   ; 
- D 1 - I - 0x003D4F 00:BD3F: 31        .byte $31   ; 
- D 1 - I - 0x003D50 00:BD40: 11        .byte $11   ; 
- D 1 - I - 0x003D51 00:BD41: 01        .byte $01   ; 
- D 1 - I - 0x003D52 00:BD42: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003D53 00:BD43: 11        .byte $11   ; 
- D 1 - I - 0x003D54 00:BD44: 01        .byte $01   ; 
- D 1 - I - 0x003D55 00:BD45: 07        .byte $07   ; 
- D 1 - I - 0x003D56 00:BD46: D0        .byte con_mcb_stop   ; 



ch_2D_BD47_03:
- D 1 - I - 0x003D57 00:BD47: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x003D59 00:BD49: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x003D5B 00:BD4B: D4        .byte con_mcb_D4, $06   ; 
- D 1 - I - 0x003D5D 00:BD4D: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003D5F 00:BD4F: 11        .byte $11   ; 
- D 1 - I - 0x003D60 00:BD50: 11        .byte $11   ; 
- D 1 - I - 0x003D61 00:BD51: 31        .byte $31   ; 
- D 1 - I - 0x003D62 00:BD52: 11        .byte $11   ; 
- D 1 - I - 0x003D63 00:BD53: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003D64 00:BD54: 13        .byte $13   ; 
- D 1 - I - 0x003D65 00:BD55: 13        .byte $13   ; 
- D 1 - I - 0x003D66 00:BD56: 13        .byte $13   ; 
- D 1 - I - 0x003D67 00:BD57: 30        .byte $30   ; 
- D 1 - I - 0x003D68 00:BD58: 30        .byte $30   ; 
- D 1 - I - 0x003D69 00:BD59: 30        .byte $30   ; 
- D 1 - I - 0x003D6A 00:BD5A: 30        .byte $30   ; 
- D 1 - I - 0x003D6B 00:BD5B: 33        .byte $33   ; 
- D 1 - I - 0x003D6C 00:BD5C: 33        .byte $33   ; 
- D 1 - I - 0x003D6D 00:BD5D: 07        .byte $07   ; 
- D 1 - I - 0x003D6E 00:BD5E: D0        .byte con_mcb_stop   ; 



_off005_BD5F_2E_round_complete:
- D 1 - I - 0x003D6F 00:BD5F: 69 BD     .word ch_2E_BD69_00
- D 1 - I - 0x003D71 00:BD61: 9B BD     .word ch_2E_BD9B_01
- D 1 - I - 0x003D73 00:BD63: D0 BD     .word ch_2E_BDD0_02
- D 1 - I - 0x003D75 00:BD65: DF BD     .word ch_2E_BDDF_03
- D 1 - I - 0x003D77 00:BD67: 00 00     .word $0000 ;    04



ch_2E_BD69_00:
- D 1 - I - 0x003D79 00:BD69: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003D7B 00:BD6B: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003D7D 00:BD6D: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x003D7F 00:BD6F: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x003D81 00:BD71: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x003D83 00:BD73: E6        .byte con_mcb_E6, $01   ; 
- D 1 - I - 0x003D85 00:BD75: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003D87 00:BD77: E3        .byte con_mcb_E3, $0D   ; 
- D 1 - I - 0x003D89 00:BD79: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003D8B 00:BD7B: 83        .byte $83   ; 
- D 1 - I - 0x003D8C 00:BD7C: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003D8E 00:BD7E: 5C        .byte $5C   ; 
- D 1 - I - 0x003D8F 00:BD7F: A6        .byte $A6   ; 
- D 1 - I - 0x003D90 00:BD80: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003D92 00:BD82: 83        .byte $83   ; 
- D 1 - I - 0x003D93 00:BD83: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003D95 00:BD85: 86        .byte $86   ; 
- D 1 - I - 0x003D96 00:BD86: A5        .byte $A5   ; 
- D 1 - I - 0x003D97 00:BD87: C6        .byte $C6   ; 
- D 1 - I - 0x003D98 00:BD88: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003D9A 00:BD8A: C0        .byte $C0   ; 
- D 1 - I - 0x003D9B 00:BD8B: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003D9C 00:BD8C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003D9D 00:BD8D: 12        .byte $12   ; 
- D 1 - I - 0x003D9E 00:BD8E: 60        .byte $60   ; 
- D 1 - I - 0x003D9F 00:BD8F: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003DA0 00:BD90: 82        .byte $82   ; 
- D 1 - I - 0x003DA1 00:BD91: C0        .byte $C0   ; 
- D 1 - I - 0x003DA2 00:BD92: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003DA3 00:BD93: 12        .byte $12   ; 
- D 1 - I - 0x003DA4 00:BD94: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x003DA6 00:BD96: 11        .byte $11   ; 
- D 1 - I - 0x003DA7 00:BD97: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x003DA9 00:BD99: 11        .byte $11   ; 
- D 1 - I - 0x003DAA 00:BD9A: D0        .byte con_mcb_stop   ; 



ch_2E_BD9B_01:
- D 1 - I - 0x003DAB 00:BD9B: DC        .byte con_mcb_DC, $03   ; 
- D 1 - I - 0x003DAD 00:BD9D: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003DAF 00:BD9F: E5        .byte con_mcb_E5, $0A   ; 
- D 1 - I - 0x003DB1 00:BDA1: DB        .byte con_mcb_DB, $0B   ; 
- D 1 - I - 0x003DB3 00:BDA3: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x003DB5 00:BDA5: E6        .byte con_mcb_E6, $00   ; 
- D 1 - I - 0x003DB7 00:BDA7: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003DB9 00:BDA9: E3        .byte con_mcb_E3, $0D   ; 
- D 1 - I - 0x003DBB 00:BDAB: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003DBD 00:BDAD: 53        .byte $53   ; 
- D 1 - I - 0x003DBE 00:BDAE: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003DC0 00:BDB0: 1C        .byte $1C   ; 
- D 1 - I - 0x003DC1 00:BDB1: 66        .byte $66   ; 
- D 1 - I - 0x003DC2 00:BDB2: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003DC4 00:BDB4: 53        .byte $53   ; 
- D 1 - I - 0x003DC5 00:BDB5: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003DC7 00:BDB7: 56        .byte $56   ; 
- D 1 - I - 0x003DC8 00:BDB8: 35        .byte $35   ; 
- D 1 - I - 0x003DC9 00:BDB9: 66        .byte $66   ; 
- D 1 - I - 0x003DCA 00:BDBA: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003DCC 00:BDBC: 51        .byte $51   ; 
- D 1 - I - 0x003DCD 00:BDBD: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003DCF 00:BDBF: 51        .byte $51   ; 
- D 1 - I - 0x003DD0 00:BDC0: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003DD2 00:BDC2: 81        .byte $81   ; 
- D 1 - I - 0x003DD3 00:BDC3: E8        .byte con_mcb_E8, $FB   ; 
- D 1 - I - 0x003DD5 00:BDC5: 81        .byte $81   ; 
- D 1 - I - 0x003DD6 00:BDC6: E8        .byte con_mcb_E8, $05   ; 
- D 1 - I - 0x003DD8 00:BDC8: 13        .byte $13   ; 
- D 1 - I - 0x003DD9 00:BDC9: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x003DDB 00:BDCB: 11        .byte $11   ; 
- D 1 - I - 0x003DDC 00:BDCC: E8        .byte con_mcb_E8, $F9   ; 
- D 1 - I - 0x003DDE 00:BDCE: 11        .byte $11   ; 
- D 1 - I - 0x003DDF 00:BDCF: D0        .byte con_mcb_stop   ; 



ch_2E_BDD0_02:
- D 1 - I - 0x003DE0 00:BDD0: DC        .byte con_mcb_DC, $03   ; 
- D 1 - I - 0x003DE2 00:BDD2: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003DE4 00:BDD4: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003DE6 00:BDD6: 17        .byte $17   ; 
- D 1 - I - 0x003DE7 00:BDD7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003DE8 00:BDD8: 87        .byte $87   ; 
- D 1 - I - 0x003DE9 00:BDD9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003DEA 00:BDDA: 13        .byte $13   ; 
- D 1 - I - 0x003DEB 00:BDDB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003DEC 00:BDDC: 83        .byte $83   ; 
- D 1 - I - 0x003DED 00:BDDD: 17        .byte $17   ; 
- D 1 - I - 0x003DEE 00:BDDE: D0        .byte con_mcb_stop   ; 



ch_2E_BDDF_03:
- D 1 - I - 0x003DEF 00:BDDF: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003DF1 00:BDE1: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003DF3 00:BDE3: 13        .byte $13   ; 
- D 1 - I - 0x003DF4 00:BDE4: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003DF6 00:BDE6: 36        .byte $36   ; 
- D 1 - I - 0x003DF7 00:BDE7: 05        .byte $05   ; 
- D 1 - I - 0x003DF8 00:BDE8: 36        .byte $36   ; 
- D 1 - I - 0x003DF9 00:BDE9: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003DFB 00:BDEB: 13        .byte $13   ; 
- D 1 - I - 0x003DFC 00:BDEC: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003DFE 00:BDEE: 36        .byte $36   ; 
- D 1 - I - 0x003DFF 00:BDEF: 35        .byte $35   ; 
- D 1 - I - 0x003E00 00:BDF0: 36        .byte $36   ; 
- D 1 - I - 0x003E01 00:BDF1: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003E03 00:BDF3: 13        .byte $13   ; 
- D 1 - I - 0x003E04 00:BDF4: 33        .byte $33   ; 
- D 1 - I - 0x003E05 00:BDF5: 33        .byte $33   ; 
- D 1 - I - 0x003E06 00:BDF6: 03        .byte $03   ; 
- D 1 - I - 0x003E07 00:BDF7: D0        .byte con_mcb_stop   ; 



_off005_BDF8_2F_boss_fight:
- D 1 - I - 0x003E08 00:BDF8: 02 BE     .word ch_2F_BE02_00
- D 1 - I - 0x003E0A 00:BDFA: 97 BE     .word ch_2F_BE97_01
- D 1 - I - 0x003E0C 00:BDFC: 15 BF     .word ch_2F_BF15_02
- D 1 - I - 0x003E0E 00:BDFE: 5C BF     .word ch_2F_BF5C_03
- D 1 - I - 0x003E10 00:BE00: 00 00     .word $0000 ;    04



ch_2F_BE02_00:
- D 1 - I - 0x003E12 00:BE02: DC        .byte con_mcb_DC, $03   ; 
- D 1 - I - 0x003E14 00:BE04: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003E16 00:BE06: E5        .byte con_mcb_E5, $13   ; 
- D 1 - I - 0x003E18 00:BE08: DB        .byte con_mcb_DB, $0D   ; 
- D 1 - I - 0x003E1A 00:BE0A: DA        .byte con_mcb_DA, $00   ; 
- D 1 - I - 0x003E1C 00:BE0C: E6        .byte con_mcb_E6, $00   ; 
- D 1 - I - 0x003E1E 00:BE0E: D3        .byte con_mcb_D3, $03   ; 
- D 1 - I - 0x003E20 00:BE10: E3        .byte con_mcb_E3, $13   ; 
- D 1 - I - 0x003E22 00:BE12: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003E24 00:BE14: 0B        .byte $0B   ; 
- D 1 - I - 0x003E25 00:BE15: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003E27 00:BE17: 51        .byte $51   ; 
- D 1 - I - 0x003E28 00:BE18: 62        .byte $62   ; 
- D 1 - I - 0x003E29 00:BE19: 81        .byte $81   ; 
- D 1 - I - 0x003E2A 00:BE1A: A2        .byte $A2   ; 
- D 1 - I - 0x003E2B 00:BE1B: C1        .byte $C1   ; 
- D 1 - I - 0x003E2C 00:BE1C: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E2D 00:BE1D: 12        .byte $12   ; 
- D 1 - I - 0x003E2E 00:BE1E: 31        .byte $31   ; 
- D 1 - I - 0x003E2F 00:BE1F: 52        .byte $52   ; 
- D 1 - I - 0x003E30 00:BE20: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003E31 00:BE21: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003E33 00:BE23: 51        .byte $51   ; 
- D 1 - I - 0x003E34 00:BE24: A1        .byte $A1   ; 
- D 1 - I - 0x003E35 00:BE25: A3        .byte $A3   ; 
- D 1 - I - 0x003E36 00:BE26: A1        .byte $A1   ; 
- D 1 - I - 0x003E37 00:BE27: 51        .byte $51   ; 
- D 1 - I - 0x003E38 00:BE28: 71        .byte $71   ; 
- D 1 - I - 0x003E39 00:BE29: 51        .byte $51   ; 
- D 1 - I - 0x003E3A 00:BE2A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E3B 00:BE2B: 11        .byte $11   ; 
- D 1 - I - 0x003E3C 00:BE2C: 11        .byte $11   ; 
- D 1 - I - 0x003E3D 00:BE2D: 11        .byte $11   ; 
- D 1 - I - 0x003E3E 00:BE2E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003E3F 00:BE2F: A1        .byte $A1   ; 
- D 1 - I - 0x003E40 00:BE30: 81        .byte $81   ; 
- D 1 - I - 0x003E41 00:BE31: 51        .byte $51   ; 
- D 1 - I - 0x003E42 00:BE32: 31        .byte $31   ; 
- D 1 - I - 0x003E43 00:BE33: 11        .byte $11   ; 
- D 1 - I - 0x003E44 00:BE34: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003E45 00:BE35: A5        .byte $A5   ; 
- D 1 - I - 0x003E46 00:BE36: E8        .byte con_mcb_E8, $F5   ; 
- D 1 - I - 0x003E48 00:BE38: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003E49 00:BE39: A9        .byte $A9   ; 
- D 1 - I - 0x003E4A 00:BE3A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E4B 00:BE3B: E8        .byte con_mcb_E8, $0B   ; 
- D 1 - I - 0x003E4D 00:BE3D: 0B        .byte $0B   ; 
- D 1 - I - 0x003E4E 00:BE3E: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003E50 00:BE40: A1        .byte $A1   ; 
- D 1 - I - 0x003E51 00:BE41: C2        .byte $C2   ; 
- D 1 - I - 0x003E52 00:BE42: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E53 00:BE43: 11        .byte $11   ; 
- D 1 - I - 0x003E54 00:BE44: 32        .byte $32   ; 
- D 1 - I - 0x003E55 00:BE45: 51        .byte $51   ; 
- D 1 - I - 0x003E56 00:BE46: 62        .byte $62   ; 
- D 1 - I - 0x003E57 00:BE47: 81        .byte $81   ; 
- D 1 - I - 0x003E58 00:BE48: A2        .byte $A2   ; 
- D 1 - I - 0x003E59 00:BE49: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003E5A 00:BE4A: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003E5C 00:BE4C: 51        .byte $51   ; 
- D 1 - I - 0x003E5D 00:BE4D: A1        .byte $A1   ; 
- D 1 - I - 0x003E5E 00:BE4E: A3        .byte $A3   ; 
- D 1 - I - 0x003E5F 00:BE4F: A1        .byte $A1   ; 
- D 1 - I - 0x003E60 00:BE50: 51        .byte $51   ; 
- D 1 - I - 0x003E61 00:BE51: 71        .byte $71   ; 
- D 1 - I - 0x003E62 00:BE52: 51        .byte $51   ; 
- D 1 - I - 0x003E63 00:BE53: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E64 00:BE54: 13        .byte $13   ; 
- D 1 - I - 0x003E65 00:BE55: 11        .byte $11   ; 
- D 1 - I - 0x003E66 00:BE56: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003E67 00:BE57: A1        .byte $A1   ; 
- D 1 - I - 0x003E68 00:BE58: 81        .byte $81   ; 
- D 1 - I - 0x003E69 00:BE59: 51        .byte $51   ; 
- D 1 - I - 0x003E6A 00:BE5A: 31        .byte $31   ; 
- D 1 - I - 0x003E6B 00:BE5B: 11        .byte $11   ; 
- D 1 - I - 0x003E6C 00:BE5C: A3        .byte $A3   ; 
- D 1 - I - 0x003E6D 00:BE5D: E8        .byte con_mcb_E8, $F5   ; 
- D 1 - I - 0x003E6F 00:BE5F: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003E70 00:BE60: AB        .byte $AB   ; 
- D 1 - I - 0x003E71 00:BE61: E8        .byte con_mcb_E8, $0B   ; 
- D 1 - I - 0x003E73 00:BE63: 07        .byte $07   ; 
- D 1 - I - 0x003E74 00:BE64: 53        .byte $53   ; 
- D 1 - I - 0x003E75 00:BE65: A3        .byte $A3   ; 
- D 1 - I - 0x003E76 00:BE66: 83        .byte $83   ; 
- D 1 - I - 0x003E77 00:BE67: 81        .byte $81   ; 
- D 1 - I - 0x003E78 00:BE68: 81        .byte $81   ; 
- D 1 - I - 0x003E79 00:BE69: 81        .byte $81   ; 
- D 1 - I - 0x003E7A 00:BE6A: 31        .byte $31   ; 
- D 1 - I - 0x003E7B 00:BE6B: 61        .byte $61   ; 
- D 1 - I - 0x003E7C 00:BE6C: 31        .byte $31   ; 
- D 1 - I - 0x003E7D 00:BE6D: 81        .byte $81   ; 
- D 1 - I - 0x003E7E 00:BE6E: 83        .byte $83   ; 
- D 1 - I - 0x003E7F 00:BE6F: B9        .byte $B9   ; 
- D 1 - I - 0x003E80 00:BE70: 83        .byte $83   ; 
- D 1 - I - 0x003E81 00:BE71: 81        .byte $81   ; 
- D 1 - I - 0x003E82 00:BE72: 81        .byte $81   ; 
- D 1 - I - 0x003E83 00:BE73: 81        .byte $81   ; 
- D 1 - I - 0x003E84 00:BE74: 31        .byte $31   ; 
- D 1 - I - 0x003E85 00:BE75: 61        .byte $61   ; 
- D 1 - I - 0x003E86 00:BE76: 31        .byte $31   ; 
- D 1 - I - 0x003E87 00:BE77: B1        .byte $B1   ; 
- D 1 - I - 0x003E88 00:BE78: 81        .byte $81   ; 
- D 1 - I - 0x003E89 00:BE79: 61        .byte $61   ; 
- D 1 - I - 0x003E8A 00:BE7A: 31        .byte $31   ; 
- D 1 - I - 0x003E8B 00:BE7B: 11        .byte $11   ; 
- D 1 - I - 0x003E8C 00:BE7C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003E8D 00:BE7D: B1        .byte $B1   ; 
- D 1 - I - 0x003E8E 00:BE7E: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E8F 00:BE7F: 61        .byte $61   ; 
- D 1 - I - 0x003E90 00:BE80: 71        .byte $71   ; 
- D 1 - I - 0x003E91 00:BE81: 87        .byte $87   ; 
- D 1 - I - 0x003E92 00:BE82: C7        .byte $C7   ; 
- D 1 - I - 0x003E93 00:BE83: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003E94 00:BE84: 57        .byte $57   ; 
- D 1 - I - 0x003E95 00:BE85: A3        .byte $A3   ; 
- D 1 - I - 0x003E96 00:BE86: D6        .byte con_mcb_D6   ; 
- D 1 - I - 0x003E97 00:BE87: D4        .byte con_mcb_D4, $01   ; 
- D 1 - I - 0x003E99 00:BE89: A1        .byte $A1   ; 
- D 1 - I - 0x003E9A 00:BE8A: 82        .byte $82   ; 
- D 1 - I - 0x003E9B 00:BE8B: 61        .byte $61   ; 
- D 1 - I - 0x003E9C 00:BE8C: 52        .byte $52   ; 
- D 1 - I - 0x003E9D 00:BE8D: 31        .byte $31   ; 
- D 1 - I - 0x003E9E 00:BE8E: 12        .byte $12   ; 
- D 1 - I - 0x003E9F 00:BE8F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EA0 00:BE90: C1        .byte $C1   ; 
- D 1 - I - 0x003EA1 00:BE91: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003EA2 00:BE92: 12        .byte $12   ; 
- D 1 - I - 0x003EA3 00:BE93: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EA4 00:BE94: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003EA6 00:BE96: EA        .byte con_mcb_EA   ; 



ch_2F_BE97_01:
- D 1 - I - 0x003EA7 00:BE97: DC        .byte con_mcb_DC, $07   ; 
- D 1 - I - 0x003EA9 00:BE99: E4        .byte con_mcb_E4, $02   ; 
- D 1 - I - 0x003EAB 00:BE9B: E5        .byte con_mcb_E5, $05   ; 
- D 1 - I - 0x003EAD 00:BE9D: DB        .byte con_mcb_DB, $0F   ; 
- D 1 - I - 0x003EAF 00:BE9F: DA        .byte con_mcb_DA, $40   ; 
- D 1 - I - 0x003EB1 00:BEA1: E6        .byte con_mcb_E6, $00   ; 
- D 1 - I - 0x003EB3 00:BEA3: D3        .byte con_mcb_D3, $04   ; 
- D 1 - I - 0x003EB5 00:BEA5: E3        .byte con_mcb_E3, $14   ; 
- D 1 - I - 0x003EB7 00:BEA7: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003EB9 00:BEA9: 0F        .byte $0F   ; 
- D 1 - I - 0x003EBA 00:BEAA: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003EBB 00:BEAB: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003EBC 00:BEAC: F9 BE     .word sub_DF_BEF9
- D 1 - I - 0x003EBE 00:BEAE: 11        .byte $11   ; 
- D 1 - I - 0x003EBF 00:BEAF: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003EC0 00:BEB0: 13        .byte $13   ; 
- D 1 - I - 0x003EC1 00:BEB1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EC2 00:BEB2: A3        .byte $A3   ; 
- D 1 - I - 0x003EC3 00:BEB3: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EC4 00:BEB4: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x003EC6 00:BEB6: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003EC7 00:BEB7: F9 BE     .word sub_DF_BEF9
- D 1 - I - 0x003EC9 00:BEB9: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003ECA 00:BEBA: 01        .byte $01   ; 
- D 1 - I - 0x003ECB 00:BEBB: 11        .byte $11   ; 
- D 1 - I - 0x003ECC 00:BEBC: 11        .byte $11   ; 
- D 1 - I - 0x003ECD 00:BEBD: 33        .byte $33   ; 
- D 1 - I - 0x003ECE 00:BEBE: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003ECF 00:BEBF: E8        .byte con_mcb_E8, $FE   ; 
- D 1 - I - 0x003ED1 00:BEC1: 33        .byte $33   ; 
- D 1 - I - 0x003ED2 00:BEC2: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003ED4 00:BEC4: 31        .byte $31   ; 
- D 1 - I - 0x003ED5 00:BEC5: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003ED6 00:BEC6: 61        .byte $61   ; 
- D 1 - I - 0x003ED7 00:BEC7: 81        .byte $81   ; 
- D 1 - I - 0x003ED8 00:BEC8: B1        .byte $B1   ; 
- D 1 - I - 0x003ED9 00:BEC9: A3        .byte $A3   ; 
- D 1 - I - 0x003EDA 00:BECA: 83        .byte $83   ; 
- D 1 - I - 0x003EDB 00:BECB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EDC 00:BECC: B1        .byte $B1   ; 
- D 1 - I - 0x003EDD 00:BECD: C1        .byte $C1   ; 
- D 1 - I - 0x003EDE 00:BECE: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003EDF 00:BECF: 31        .byte $31   ; 
- D 1 - I - 0x003EE0 00:BED0: 33        .byte $33   ; 
- D 1 - I - 0x003EE1 00:BED1: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003EE3 00:BED3: 31        .byte $31   ; 
- D 1 - I - 0x003EE4 00:BED4: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003EE5 00:BED5: 61        .byte $61   ; 
- D 1 - I - 0x003EE6 00:BED6: 81        .byte $81   ; 
- D 1 - I - 0x003EE7 00:BED7: 81        .byte $81   ; 
- D 1 - I - 0x003EE8 00:BED8: 61        .byte $61   ; 
- D 1 - I - 0x003EE9 00:BED9: 31        .byte $31   ; 
- D 1 - I - 0x003EEA 00:BEDA: 11        .byte $11   ; 
- D 1 - I - 0x003EEB 00:BEDB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EEC 00:BEDC: B1        .byte $B1   ; 
- D 1 - I - 0x003EED 00:BEDD: 81        .byte $81   ; 
- D 1 - I - 0x003EEE 00:BEDE: 61        .byte $61   ; 
- D 1 - I - 0x003EEF 00:BEDF: 71        .byte $71   ; 
- D 1 - I - 0x003EF0 00:BEE0: 81        .byte $81   ; 
- D 1 - I - 0x003EF1 00:BEE1: B1        .byte $B1   ; 
- D 1 - I - 0x003EF2 00:BEE2: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003EF3 00:BEE3: 11        .byte $11   ; 
- D 1 - I - 0x003EF4 00:BEE4: 31        .byte $31   ; 
- D 1 - I - 0x003EF5 00:BEE5: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EF6 00:BEE6: 81        .byte $81   ; 
- D 1 - I - 0x003EF7 00:BEE7: A1        .byte $A1   ; 
- D 1 - I - 0x003EF8 00:BEE8: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003EF9 00:BEE9: 11        .byte $11   ; 
- D 1 - I - 0x003EFA 00:BEEA: 31        .byte $31   ; 
- D 1 - I - 0x003EFB 00:BEEB: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003EFC 00:BEEC: A1        .byte $A1   ; 
- D 1 - I - 0x003EFD 00:BEED: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003EFE 00:BEEE: 11        .byte $11   ; 
- D 1 - I - 0x003EFF 00:BEEF: 31        .byte $31   ; 
- D 1 - I - 0x003F00 00:BEF0: 51        .byte $51   ; 
- D 1 - I - 0x003F01 00:BEF1: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F02 00:BEF2: A1        .byte $A1   ; 
- D 1 - I - 0x003F03 00:BEF3: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F04 00:BEF4: 11        .byte $11   ; 
- D 1 - I - 0x003F05 00:BEF5: 31        .byte $31   ; 
- D 1 - I - 0x003F06 00:BEF6: 51        .byte $51   ; 
- D 1 - I - 0x003F07 00:BEF7: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F08 00:BEF8: EA        .byte con_mcb_EA   ; 



sub_DF_BEF9:
- D 1 - I - 0x003F09 00:BEF9: 01        .byte $01   ; 
- D 1 - I - 0x003F0A 00:BEFA: A3        .byte $A3   ; 
- D 1 - I - 0x003F0B 00:BEFB: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F0C 00:BEFC: 53        .byte $53   ; 
- D 1 - I - 0x003F0D 00:BEFD: 13        .byte $13   ; 
- D 1 - I - 0x003F0E 00:BEFE: 53        .byte $53   ; 
- D 1 - I - 0x003F0F 00:BEFF: A3        .byte $A3   ; 
- D 1 - I - 0x003F10 00:BF00: 53        .byte $53   ; 
- D 1 - I - 0x003F11 00:BF01: 13        .byte $13   ; 
- D 1 - I - 0x003F12 00:BF02: 51        .byte $51   ; 
- D 1 - I - 0x003F13 00:BF03: E8        .byte con_mcb_E8, $02   ; 
- D 1 - I - 0x003F15 00:BF05: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F16 00:BF06: A1        .byte $A1   ; 
- D 1 - I - 0x003F17 00:BF07: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F18 00:BF08: A1        .byte $A1   ; 
- D 1 - I - 0x003F19 00:BF09: 81        .byte $81   ; 
- D 1 - I - 0x003F1A 00:BF0A: 51        .byte $51   ; 
- D 1 - I - 0x003F1B 00:BF0B: 31        .byte $31   ; 
- D 1 - I - 0x003F1C 00:BF0C: 51        .byte $51   ; 
- D 1 - I - 0x003F1D 00:BF0D: 81        .byte $81   ; 
- D 1 - I - 0x003F1E 00:BF0E: A1        .byte $A1   ; 
- D 1 - I - 0x003F1F 00:BF0F: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F20 00:BF10: A1        .byte $A1   ; 
- D 1 - I - 0x003F21 00:BF11: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F22 00:BF12: 81        .byte $81   ; 
- D 1 - I - 0x003F23 00:BF13: 51        .byte $51   ; 
- D 1 - I - 0x003F24 00:BF14: E0        .byte con_mcb_rts   ; 



ch_2F_BF15_02:
- D 1 - I - 0x003F25 00:BF15: DC        .byte con_mcb_DC, $05   ; 
- D 1 - I - 0x003F27 00:BF17: D3        .byte con_mcb_D3, $03   ; 
- D 1 - I - 0x003F29 00:BF19: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003F2B 00:BF1B: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003F2D 00:BF1D: 91        .byte $91   ; 
- D 1 - I - 0x003F2E 00:BF1E: A1        .byte $A1   ; 
- D 1 - I - 0x003F2F 00:BF1F: A1        .byte $A1   ; 
- D 1 - I - 0x003F30 00:BF20: A1        .byte $A1   ; 
- D 1 - I - 0x003F31 00:BF21: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003F32 00:BF22: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003F33 00:BF23: D7        .byte con_mcb_D7, $08   ; 
- D 1 - I - 0x003F35 00:BF25: A1        .byte $A1   ; 
- D 1 - I - 0x003F36 00:BF26: A1        .byte $A1   ; 
- D 1 - I - 0x003F37 00:BF27: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F38 00:BF28: 11        .byte $11   ; 
- D 1 - I - 0x003F39 00:BF29: 21        .byte $21   ; 
- D 1 - I - 0x003F3A 00:BF2A: 31        .byte $31   ; 
- D 1 - I - 0x003F3B 00:BF2B: 31        .byte $31   ; 
- D 1 - I - 0x003F3C 00:BF2C: 41        .byte $41   ; 
- D 1 - I - 0x003F3D 00:BF2D: 41        .byte $41   ; 
- D 1 - I - 0x003F3E 00:BF2E: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F3F 00:BF2F: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003F40 00:BF30: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003F42 00:BF32: 81        .byte $81   ; 
- D 1 - I - 0x003F43 00:BF33: 81        .byte $81   ; 
- D 1 - I - 0x003F44 00:BF34: B1        .byte $B1   ; 
- D 1 - I - 0x003F45 00:BF35: C1        .byte $C1   ; 
- D 1 - I - 0x003F46 00:BF36: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F47 00:BF37: 11        .byte $11   ; 
- D 1 - I - 0x003F48 00:BF38: 11        .byte $11   ; 
- D 1 - I - 0x003F49 00:BF39: 31        .byte $31   ; 
- D 1 - I - 0x003F4A 00:BF3A: 11        .byte $11   ; 
- D 1 - I - 0x003F4B 00:BF3B: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F4C 00:BF3C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003F4D 00:BF3D: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F4E 00:BF3E: B1        .byte $B1   ; 
- D 1 - I - 0x003F4F 00:BF3F: 81        .byte $81   ; 
- D 1 - I - 0x003F50 00:BF40: 61        .byte $61   ; 
- D 1 - I - 0x003F51 00:BF41: 31        .byte $31   ; 
- D 1 - I - 0x003F52 00:BF42: 11        .byte $11   ; 
- D 1 - I - 0x003F53 00:BF43: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F54 00:BF44: B1        .byte $B1   ; 
- D 1 - I - 0x003F55 00:BF45: 61        .byte $61   ; 
- D 1 - I - 0x003F56 00:BF46: 71        .byte $71   ; 
- D 1 - I - 0x003F57 00:BF47: 81        .byte $81   ; 
- D 1 - I - 0x003F58 00:BF48: 81        .byte $81   ; 
- D 1 - I - 0x003F59 00:BF49: B1        .byte $B1   ; 
- D 1 - I - 0x003F5A 00:BF4A: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F5B 00:BF4B: 11        .byte $11   ; 
- D 1 - I - 0x003F5C 00:BF4C: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F5D 00:BF4D: 81        .byte $81   ; 
- D 1 - I - 0x003F5E 00:BF4E: 81        .byte $81   ; 
- D 1 - I - 0x003F5F 00:BF4F: C1        .byte $C1   ; 
- D 1 - I - 0x003F60 00:BF50: 91        .byte $91   ; 
- D 1 - I - 0x003F61 00:BF51: 91        .byte $91   ; 
- D 1 - I - 0x003F62 00:BF52: A1        .byte $A1   ; 
- D 1 - I - 0x003F63 00:BF53: A1        .byte $A1   ; 
- D 1 - I - 0x003F64 00:BF54: A1        .byte $A1   ; 
- D 1 - I - 0x003F65 00:BF55: A1        .byte $A1   ; 
- D 1 - I - 0x003F66 00:BF56: D1        .byte con_mcb_D1   ; 
- D 1 - I - 0x003F67 00:BF57: 11        .byte $11   ; 
- D 1 - I - 0x003F68 00:BF58: D2        .byte con_mcb_D2   ; 
- D 1 - I - 0x003F69 00:BF59: C1        .byte $C1   ; 
- D 1 - I - 0x003F6A 00:BF5A: A1        .byte $A1   ; 
- D 1 - I - 0x003F6B 00:BF5B: EA        .byte con_mcb_EA   ; 



ch_2F_BF5C_03:
- D 1 - I - 0x003F6C 00:BF5C: DC        .byte con_mcb_DC, $00   ; 
- D 1 - I - 0x003F6E 00:BF5E: D3        .byte con_mcb_D3, $01   ; 
- D 1 - I - 0x003F70 00:BF60: D4        .byte con_mcb_D4, $05   ; 
- D 1 - I - 0x003F72 00:BF62: 07        .byte $07   ; 
- D 1 - I - 0x003F73 00:BF63: 30        .byte $30   ; 
- D 1 - I - 0x003F74 00:BF64: 30        .byte $30   ; 
- D 1 - I - 0x003F75 00:BF65: 31        .byte $31   ; 
- D 1 - I - 0x003F76 00:BF66: 30        .byte $30   ; 
- D 1 - I - 0x003F77 00:BF67: 30        .byte $30   ; 
- D 1 - I - 0x003F78 00:BF68: 30        .byte $30   ; 
- D 1 - I - 0x003F79 00:BF69: 30        .byte $30   ; 
- D 1 - I - 0x003F7A 00:BF6A: E9        .byte con_mcb_E9   ; 
- D 1 - I - 0x003F7B 00:BF6B: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003F7C 00:BF6C: 9E BF     .word sub_DF_BF9E
- D 1 - I - 0x003F7E 00:BF6E: 13        .byte $13   ; 
- D 1 - I - 0x003F7F 00:BF6F: 31        .byte $31   ; 
- D 1 - I - 0x003F80 00:BF70: 30        .byte $30   ; 
- D 1 - I - 0x003F81 00:BF71: 30        .byte $30   ; 
- D 1 - I - 0x003F82 00:BF72: 31        .byte $31   ; 
- D 1 - I - 0x003F83 00:BF73: 30        .byte $30   ; 
- D 1 - I - 0x003F84 00:BF74: 30        .byte $30   ; 
- D 1 - I - 0x003F85 00:BF75: 30        .byte $30   ; 
- D 1 - I - 0x003F86 00:BF76: 30        .byte $30   ; 
- D 1 - I - 0x003F87 00:BF77: 31        .byte $31   ; 
- D 1 - I - 0x003F88 00:BF78: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003F89 00:BF79: 9E BF     .word sub_DF_BF9E
- D 1 - I - 0x003F8B 00:BF7B: 13        .byte $13   ; 
- D 1 - I - 0x003F8C 00:BF7C: 31        .byte $31   ; 
- D 1 - I - 0x003F8D 00:BF7D: 30        .byte $30   ; 
- D 1 - I - 0x003F8E 00:BF7E: 30        .byte $30   ; 
- D 1 - I - 0x003F8F 00:BF7F: 31        .byte $31   ; 
- D 1 - I - 0x003F90 00:BF80: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x003F92 00:BF82: 30        .byte $30   ; 
- D 1 - I - 0x003F93 00:BF83: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003F94 00:BF84: DF        .byte con_mcb_jsr   ; 
- D 1 - I - 0x003F95 00:BF85: 9E BF     .word sub_DF_BF9E
- D 1 - I - 0x003F97 00:BF87: D7        .byte con_mcb_D7, $06   ; 
- D 1 - I - 0x003F99 00:BF89: 31        .byte $31   ; 
- D 1 - I - 0x003F9A 00:BF8A: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003F9B 00:BF8B: 30        .byte $30   ; 
- D 1 - I - 0x003F9C 00:BF8C: 30        .byte $30   ; 
- D 1 - I - 0x003F9D 00:BF8D: 31        .byte $31   ; 
- D 1 - I - 0x003F9E 00:BF8E: 13        .byte $13   ; 
- D 1 - I - 0x003F9F 00:BF8F: 33        .byte $33   ; 
- D 1 - I - 0x003FA0 00:BF90: 11        .byte $11   ; 
- D 1 - I - 0x003FA1 00:BF91: 11        .byte $11   ; 
- D 1 - I - 0x003FA2 00:BF92: 33        .byte $33   ; 
- D 1 - I - 0x003FA3 00:BF93: D7        .byte con_mcb_D7, $04   ; 
- D 1 - I - 0x003FA5 00:BF95: 31        .byte $31   ; 
- D 1 - I - 0x003FA6 00:BF96: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003FA7 00:BF97: D7        .byte con_mcb_D7, $02   ; 
- D 1 - I - 0x003FA9 00:BF99: 30        .byte $30   ; 
- D 1 - I - 0x003FAA 00:BF9A: 30        .byte $30   ; 
- D 1 - I - 0x003FAB 00:BF9B: 31        .byte $31   ; 
- D 1 - I - 0x003FAC 00:BF9C: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003FAD 00:BF9D: EA        .byte con_mcb_EA   ; 



sub_DF_BF9E:
- D 1 - I - 0x003FAE 00:BF9E: D7        .byte con_mcb_D7, $03   ; 
- D 1 - I - 0x003FB0 00:BFA0: 13        .byte $13   ; 
- D 1 - I - 0x003FB1 00:BFA1: 33        .byte $33   ; 
- D 1 - I - 0x003FB2 00:BFA2: 11        .byte $11   ; 
- D 1 - I - 0x003FB3 00:BFA3: 11        .byte $11   ; 
- D 1 - I - 0x003FB4 00:BFA4: 33        .byte $33   ; 
- D 1 - I - 0x003FB5 00:BFA5: D8        .byte con_mcb_D8   ; 
- D 1 - I - 0x003FB6 00:BFA6: E0        .byte con_mcb_rts   ; 


; bzk garbage
- - - - - - 0x003FB7 00:BFA7: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x003FB8 00:BFA8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FC0 00:BFB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FD0 00:BFC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FE0 00:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FF0 00:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x004000 00:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($C000 - *), ($C000 - *))



