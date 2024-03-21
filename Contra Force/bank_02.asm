.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x004010-0x00600F



.export _off032_0x004011_01
.export _off032_0x004607_02
.export _off032_0x004DEE_0B
.export _off032_0x00520B_08
.export _off032_0x00594E_0C
.export ofs_016_0x005BA7_13
.export sub_0x005D43
.export loc_0x005D77
.export ofs_016_0x005D8D_0C
.export ofs_016_0x005E85_12
.export ofs_016_0x005F2D_1D
.export ofs_016_0x005F95_0E



; bzk garbage, unused bank id
- D 1 - - - 0x004010 01:A000: 02        .byte con_prg_bank + $02   ; 



_off032_0x004011_01:
- - - - - - 0x004011 01:A001: 1B A1     .word off_01_A11B_00
- D 1 - I - 0x004013 01:A003: 1B A1     .word off_01_A11B_01
- D 1 - I - 0x004015 01:A005: 2B A1     .word off_01_A12B_02
- D 1 - I - 0x004017 01:A007: 38 A1     .word off_01_A138_03
- D 1 - I - 0x004019 01:A009: 48 A1     .word off_01_A148_04
- D 1 - I - 0x00401B 01:A00B: 55 A1     .word off_01_A155_05
- D 1 - I - 0x00401D 01:A00D: 65 A1     .word off_01_A165_06
- D 1 - I - 0x00401F 01:A00F: 72 A1     .word off_01_A172_07
- D 1 - I - 0x004021 01:A011: 82 A1     .word off_01_A182_08
- - - - - - 0x004023 01:A013: 85 A1     .word off_01_A185_09
- - - - - - 0x004025 01:A015: 88 A1     .word off_01_A188_0A
- D 1 - I - 0x004027 01:A017: 8B A1     .word off_01_A18B_0B
- D 1 - I - 0x004029 01:A019: 9B A1     .word off_01_A19B_0C
- D 1 - I - 0x00402B 01:A01B: A8 A1     .word off_01_A1A8_0D
- - - - - - 0x00402D 01:A01D: B8 A1     .word off_01_A1B8_0E
- D 1 - I - 0x00402F 01:A01F: C5 A1     .word off_01_A1C5_0F
- D 1 - I - 0x004031 01:A021: C8 A1     .word off_01_A1C8_10
- D 1 - I - 0x004033 01:A023: CB A1     .word off_01_A1CB_11
- D 1 - I - 0x004035 01:A025: CE A1     .word off_01_A1CE_12
- D 1 - I - 0x004037 01:A027: D1 A1     .word off_01_A1D1_13
- D 1 - I - 0x004039 01:A029: E1 A1     .word off_01_A1E1_14
- D 1 - I - 0x00403B 01:A02B: EE A1     .word off_01_A1EE_15
- - - - - - 0x00403D 01:A02D: FB A1     .word off_01_A1FB_16
- D 1 - I - 0x00403F 01:A02F: 08 A2     .word off_01_A208_17
- D 1 - I - 0x004041 01:A031: 0B A2     .word off_01_A20B_18
- D 1 - I - 0x004043 01:A033: 0E A2     .word off_01_A20E_19
- - - - - - 0x004045 01:A035: 11 A2     .word off_01_A211_1A
- D 1 - I - 0x004047 01:A037: 14 A2     .word off_01_A214_1B
- - - - - - 0x004049 01:A039: 26 A2     .word off_01_A226_1C
- - - - - - 0x00404B 01:A03B: 38 A2     .word off_01_A238_1D
- - - - - - 0x00404D 01:A03D: 48 A2     .word off_01_A248_1E
- D 1 - I - 0x00404F 01:A03F: 5A A2     .word off_01_A25A_1F
- D 1 - I - 0x004051 01:A041: 6A A2     .word off_01_A26A_20
- - - - - - 0x004053 01:A043: 7A A2     .word off_01_A27A_21
- - - - - - 0x004055 01:A045: 8A A2     .word off_01_A28A_22
- - - - - - 0x004057 01:A047: 9A A2     .word off_01_A29A_23
- D 1 - I - 0x004059 01:A049: 9D A2     .word off_01_A29D_24
- D 1 - I - 0x00405B 01:A04B: A0 A2     .word off_01_A2A0_25
- - - - - - 0x00405D 01:A04D: B0 A2     .word off_01_A2B0_26
- D 1 - I - 0x00405F 01:A04F: C0 A2     .word off_01_A2C0_27
- - - - - - 0x004061 01:A051: C3 A2     .word off_01_A2C3_28
- - - - - - 0x004063 01:A053: C6 A2     .word off_01_A2C6_29
- - - - - - 0x004065 01:A055: D6 A2     .word off_01_A2D6_2A
- D 1 - I - 0x004067 01:A057: E6 A2     .word off_01_A2E6_2B
- D 1 - I - 0x004069 01:A059: E9 A2     .word off_01_A2E9_2C
- D 1 - I - 0x00406B 01:A05B: EC A2     .word off_01_A2EC_2D
- - - - - - 0x00406D 01:A05D: FC A2     .word off_01_A2FC_2E
- - - - - - 0x00406F 01:A05F: 0C A3     .word off_01_A30C_2F
- - - - - - 0x004071 01:A061: 0C A3     .word off_01_A30C_30
- - - - - - 0x004073 01:A063: 0C A3     .word off_01_A30C_31
- - - - - - 0x004075 01:A065: 0C A3     .word off_01_A30C_32
- - - - - - 0x004077 01:A067: 0C A3     .word off_01_A30C_33
- - - - - - 0x004079 01:A069: 0C A3     .word off_01_A30C_34
- - - - - - 0x00407B 01:A06B: 0C A3     .word off_01_A30C_35
- - - - - - 0x00407D 01:A06D: 0C A3     .word off_01_A30C_36
- - - - - - 0x00407F 01:A06F: 0C A3     .word off_01_A30C_37
- - - - - - 0x004081 01:A071: 0C A3     .word off_01_A30C_38
- - - - - - 0x004083 01:A073: 0C A3     .word off_01_A30C_39
- - - - - - 0x004085 01:A075: 0C A3     .word off_01_A30C_3A
- D 1 - I - 0x004087 01:A077: 0C A3     .word off_01_A30C_3B
- - - - - - 0x004089 01:A079: 19 A3     .word off_01_A319_3C
- - - - - - 0x00408B 01:A07B: 1C A3     .word off_01_A31C_3D
- - - - - - 0x00408D 01:A07D: 2E A3     .word off_01_A32E_3E
- - - - - - 0x00408F 01:A07F: 40 A3     .word off_01_A340_3F
- - - - - - 0x004091 01:A081: 50 A3     .word off_01_A350_40
- D 1 - I - 0x004093 01:A083: 60 A3     .word off_01_A360_41
- D 1 - I - 0x004095 01:A085: 72 A3     .word off_01_A372_42
- D 1 - I - 0x004097 01:A087: 7C A3     .word off_01_A37C_43
- D 1 - I - 0x004099 01:A089: 86 A3     .word off_01_A386_44
- D 1 - I - 0x00409B 01:A08B: 90 A3     .word off_01_A390_45
- - - - - - 0x00409D 01:A08D: 9A A3     .word off_01_A39A_46
- - - - - - 0x00409F 01:A08F: 9A A3     .word off_01_A39A_47
- D 1 - I - 0x0040A1 01:A091: 9A A3     .word off_01_A39A_48
- D 1 - I - 0x0040A3 01:A093: A8 A3     .word off_01_A3A8_49
- D 1 - I - 0x0040A5 01:A095: B3 A3     .word off_01_A3B3_4A
- D 1 - I - 0x0040A7 01:A097: C3 A3     .word off_01_A3C3_4B
- D 1 - I - 0x0040A9 01:A099: D0 A3     .word off_01_A3D0_4C
- D 1 - I - 0x0040AB 01:A09B: DE A3     .word off_01_A3DE_4D
- D 1 - I - 0x0040AD 01:A09D: E9 A3     .word off_01_A3E9_4E
- D 1 - I - 0x0040AF 01:A09F: F7 A3     .word off_01_A3F7_4F
- D 1 - I - 0x0040B1 01:A0A1: FA A3     .word off_01_A3FA_50
- D 1 - I - 0x0040B3 01:A0A3: FD A3     .word off_01_A3FD_51
- D 1 - I - 0x0040B5 01:A0A5: 00 A4     .word off_01_A400_52
- D 1 - I - 0x0040B7 01:A0A7: 11 A4     .word off_01_A411_53
- D 1 - I - 0x0040B9 01:A0A9: 1F A4     .word off_01_A41F_54
- D 1 - I - 0x0040BB 01:A0AB: 30 A4     .word off_01_A430_55
- D 1 - I - 0x0040BD 01:A0AD: 33 A4     .word off_01_A433_56
- D 1 - I - 0x0040BF 01:A0AF: 36 A4     .word off_01_A436_57
- D 1 - I - 0x0040C1 01:A0B1: 39 A4     .word off_01_A439_58
- D 1 - I - 0x0040C3 01:A0B3: 47 A4     .word off_01_A447_59
- D 1 - I - 0x0040C5 01:A0B5: 52 A4     .word off_01_A452_5A
- D 1 - I - 0x0040C7 01:A0B7: 5D A4     .word off_01_A45D_5B
- D 1 - I - 0x0040C9 01:A0B9: 68 A4     .word off_01_A468_5C
- D 1 - I - 0x0040CB 01:A0BB: 6B A4     .word off_01_A46B_5D
- D 1 - I - 0x0040CD 01:A0BD: 6E A4     .word off_01_A46E_5E
- D 1 - I - 0x0040CF 01:A0BF: 71 A4     .word off_01_A471_5F
- D 1 - I - 0x0040D1 01:A0C1: 74 A4     .word off_01_A474_60
- D 1 - I - 0x0040D3 01:A0C3: 82 A4     .word off_01_A482_61
- D 1 - I - 0x0040D5 01:A0C5: 94 A4     .word off_01_A494_62
- D 1 - I - 0x0040D7 01:A0C7: A4 A4     .word off_01_A4A4_63
- D 1 - I - 0x0040D9 01:A0C9: B6 A4     .word off_01_A4B6_64
- D 1 - I - 0x0040DB 01:A0CB: C4 A4     .word off_01_A4C4_65
- D 1 - I - 0x0040DD 01:A0CD: D2 A4     .word off_01_A4D2_66
- D 1 - I - 0x0040DF 01:A0CF: E2 A4     .word off_01_A4E2_67
- D 1 - I - 0x0040E1 01:A0D1: F2 A4     .word off_01_A4F2_68
- D 1 - I - 0x0040E3 01:A0D3: F5 A4     .word off_01_A4F5_69
- D 1 - I - 0x0040E5 01:A0D5: F8 A4     .word off_01_A4F8_6A
- D 1 - I - 0x0040E7 01:A0D7: 0B A5     .word off_01_A50B_6B
- D 1 - I - 0x0040E9 01:A0D9: 1E A5     .word off_01_A51E_6C
- D 1 - I - 0x0040EB 01:A0DB: 21 A5     .word off_01_A521_6D
- D 1 - I - 0x0040ED 01:A0DD: 24 A5     .word off_01_A524_6E
- - - - - - 0x0040EF 01:A0DF: 32 A5     .word off_01_A532_6F
- D 1 - I - 0x0040F1 01:A0E1: 40 A5     .word off_01_A540_70
- D 1 - I - 0x0040F3 01:A0E3: 43 A5     .word off_01_A543_71
- D 1 - I - 0x0040F5 01:A0E5: 46 A5     .word off_01_A546_72
- D 1 - I - 0x0040F7 01:A0E7: 54 A5     .word off_01_A554_73
- - - - - - 0x0040F9 01:A0E9: 62 A5     .word off_01_A562_74
- - - - - - 0x0040FB 01:A0EB: 62 A5     .word off_01_A562_75
- - - - - - 0x0040FD 01:A0ED: 62 A5     .word off_01_A562_76
- - - - - - 0x0040FF 01:A0EF: 62 A5     .word off_01_A562_77
- - - - - - 0x004101 01:A0F1: 62 A5     .word off_01_A562_78
- - - - - - 0x004103 01:A0F3: 62 A5     .word off_01_A562_79
- - - - - - 0x004105 01:A0F5: 62 A5     .word off_01_A562_7A
- - - - - - 0x004107 01:A0F7: 62 A5     .word off_01_A562_7B
- - - - - - 0x004109 01:A0F9: 62 A5     .word off_01_A562_7C
- - - - - - 0x00410B 01:A0FB: 62 A5     .word off_01_A562_7D
- - - - - - 0x00410D 01:A0FD: 62 A5     .word off_01_A562_7E
- - - - - - 0x00410F 01:A0FF: 62 A5     .word off_01_A562_7F
- D 1 - I - 0x004111 01:A101: 62 A5     .word off_01_A562_80
- D 1 - I - 0x004113 01:A103: 70 A5     .word off_01_A570_81
- D 1 - I - 0x004115 01:A105: 73 A5     .word off_01_A573_82
- D 1 - I - 0x004117 01:A107: 7E A5     .word off_01_A57E_83
- D 1 - I - 0x004119 01:A109: 81 A5     .word off_01_A581_84
- - - - - - 0x00411B 01:A10B: 93 A5     .word off_01_A593_85
- D 1 - I - 0x00411D 01:A10D: A5 A5     .word off_01_A5A5_86
- - - - - - 0x00411F 01:A10F: B3 A5     .word off_01_A5B3_87
- D 1 - I - 0x004121 01:A111: C1 A5     .word off_01_A5C1_88
- D 1 - I - 0x004123 01:A113: D1 A5     .word off_01_A5D1_89
- - - - - - 0x004125 01:A115: D9 A5     .word off_01_A5D9_8A
- - - - - - 0x004127 01:A117: E3 A5     .word off_01_A5E3_8B
- - - - - - 0x004129 01:A119: ED A5     .word off_01_A5ED_8C



off_01_A11B_00:
off_01_A11B_01:
- D 1 - I - 0x00412B 01:A11B: 82        .byte $82   ; counter
- D 1 - I - 0x00412C 01:A11C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00412D 01:A11D: F7        .byte $F7, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004130 01:A120: FF        .byte $FF, $03, $00   ; 

- D 1 - I - 0x004133 01:A123: 02        .byte $02   ; 
- D 1 - I - 0x004134 01:A124: 01        .byte $01   ; 
- D 1 - I - 0x004135 01:A125: F7        .byte $F7, $43, $F0   ; 
- D 1 - I - 0x004138 01:A128: FF        .byte $FF, $45, $F0   ; 



off_01_A12B_02:
- D 1 - I - 0x00413B 01:A12B: 81        .byte $81   ; counter
- D 1 - I - 0x00413C 01:A12C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00413D 01:A12D: FA        .byte $FA, $05, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004140 01:A130: 02        .byte $02   ; 
- D 1 - I - 0x004141 01:A131: 01        .byte $01   ; 
- D 1 - I - 0x004142 01:A132: F7        .byte $F7, $43, $F2   ; 
- D 1 - I - 0x004145 01:A135: FF        .byte $FF, $45, $F2   ; 



off_01_A138_03:
- D 1 - I - 0x004148 01:A138: 82        .byte $82   ; counter
- D 1 - I - 0x004149 01:A139: 40        .byte $40   ; spr_A
- D 1 - I - 0x00414A 01:A13A: FF        .byte $FF, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00414D 01:A13D: F7        .byte $F7, $03, $00   ; 

- D 1 - I - 0x004150 01:A140: 02        .byte $02   ; 
- D 1 - I - 0x004151 01:A141: 01        .byte $01   ; 
- D 1 - I - 0x004152 01:A142: F9        .byte $F9, $43, $F0   ; 
- D 1 - I - 0x004155 01:A145: 01        .byte $01, $45, $F0   ; 



off_01_A148_04:
- D 1 - I - 0x004158 01:A148: 81        .byte $81   ; counter
- D 1 - I - 0x004159 01:A149: 40        .byte $40   ; spr_A
- D 1 - I - 0x00415A 01:A14A: FC        .byte $FC, $05, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00415D 01:A14D: 02        .byte $02   ; 
- D 1 - I - 0x00415E 01:A14E: 01        .byte $01   ; 
- D 1 - I - 0x00415F 01:A14F: F9        .byte $F9, $43, $F2   ; 
- D 1 - I - 0x004162 01:A152: 01        .byte $01, $45, $F2   ; 



off_01_A155_05:
off_FF_A155:
- D 1 - I - 0x004165 01:A155: 82        .byte $82   ; counter
- D 1 - I - 0x004166 01:A156: 00        .byte $00   ; spr_A
- D 1 - I - 0x004167 01:A157: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00416A 01:A15A: 02        .byte $02, $09, $FF   ; 

- D 1 - I - 0x00416D 01:A15D: 02        .byte $02   ; 
- D 1 - I - 0x00416E 01:A15E: 01        .byte $01   ; 
- D 1 - I - 0x00416F 01:A15F: FA        .byte $FA, $47, $EF   ; 
- D 1 - I - 0x004172 01:A162: 02        .byte $02, $49, $EF   ; 



off_01_A165_06:
off_FF_A165:
- D 1 - I - 0x004175 01:A165: 82        .byte $82   ; counter
- D 1 - I - 0x004176 01:A166: 01        .byte $01   ; spr_A
- D 1 - I - 0x004177 01:A167: F9        .byte $F9, $47, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00417A 01:A16A: 01        .byte $01, $49, $F1   ; 

- D 1 - I - 0x00417D 01:A16D: 01        .byte $01   ; 
- D 1 - I - 0x00417E 01:A16E: 00        .byte $00   ; 
- D 1 - I - 0x00417F 01:A16F: FD        .byte $FD, $0B, $00   ; 



off_01_A172_07:
off_FF_A172:
- D 1 - I - 0x004182 01:A172: 82        .byte $82   ; counter
- D 1 - I - 0x004183 01:A173: 00        .byte $00   ; spr_A
- D 1 - I - 0x004184 01:A174: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004187 01:A177: 00        .byte $00, $0F, $FF   ; 

- D 1 - I - 0x00418A 01:A17A: 02        .byte $02   ; 
- D 1 - I - 0x00418B 01:A17B: 01        .byte $01   ; 
- D 1 - I - 0x00418C 01:A17C: F6        .byte $F6, $47, $EF   ; 
- D 1 - I - 0x00418F 01:A17F: FE        .byte $FE, $49, $EF   ; 

off_01_A182_08:
- D 1 - I - 0x004192 01:A182: FF        .byte $FF   ; 
- D 1 - I - 0x004193 01:A183: 55 A1     .word off_FF_A155



off_01_A185_09:
- - - - - - 0x004195 01:A185: FF        .byte $FF   ; 
- - - - - - 0x004196 01:A186: 65 A1     .word off_FF_A165



off_01_A188_0A:
- - - - - - 0x004198 01:A188: FF        .byte $FF   ; 
- - - - - - 0x004199 01:A189: 72 A1     .word off_FF_A172



off_01_A18B_0B:
off_FF_A18B:
- D 1 - I - 0x00419B 01:A18B: 82        .byte $82   ; counter
- D 1 - I - 0x00419C 01:A18C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00419D 01:A18D: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041A0 01:A190: FE        .byte $FE, $13, $00   ; 

- D 1 - I - 0x0041A3 01:A193: 02        .byte $02   ; 
- D 1 - I - 0x0041A4 01:A194: 01        .byte $01   ; 
- D 1 - I - 0x0041A5 01:A195: F3        .byte $F3, $4B, $F0   ; 
- D 1 - I - 0x0041A8 01:A198: FB        .byte $FB, $4D, $F0   ; 



off_01_A19B_0C:
off_FF_A19B:
- D 1 - I - 0x0041AB 01:A19B: 81        .byte $81   ; counter
- D 1 - I - 0x0041AC 01:A19C: 00        .byte $00   ; spr_A
- D 1 - I - 0x0041AD 01:A19D: FB        .byte $FB, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0041B0 01:A1A0: 02        .byte $02   ; 
- D 1 - I - 0x0041B1 01:A1A1: 01        .byte $01   ; 
- D 1 - I - 0x0041B2 01:A1A2: F2        .byte $F2, $4B, $F2   ; 
- D 1 - I - 0x0041B5 01:A1A5: FA        .byte $FA, $4D, $F2   ; 



off_01_A1A8_0D:
off_FF_A1A8:
- D 1 - I - 0x0041B8 01:A1A8: 82        .byte $82   ; counter
- D 1 - I - 0x0041B9 01:A1A9: 00        .byte $00   ; spr_A
- D 1 - I - 0x0041BA 01:A1AA: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041BD 01:A1AD: FE        .byte $FE, $19, $00   ; 

- D 1 - I - 0x0041C0 01:A1B0: 02        .byte $02   ; 
- D 1 - I - 0x0041C1 01:A1B1: 01        .byte $01   ; 
- D 1 - I - 0x0041C2 01:A1B2: F1        .byte $F1, $4B, $F0   ; 
- D 1 - I - 0x0041C5 01:A1B5: F9        .byte $F9, $4D, $F0   ; 



off_01_A1B8_0E:
off_FF_A1B8:
- D 1 - I - 0x0041C8 01:A1B8: 81        .byte $81   ; counter
- D 1 - I - 0x0041C9 01:A1B9: 00        .byte $00   ; spr_A
- D 1 - I - 0x0041CA 01:A1BA: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0041CD 01:A1BD: 02        .byte $02   ; 
- D 1 - I - 0x0041CE 01:A1BE: 01        .byte $01   ; 
- D 1 - I - 0x0041CF 01:A1BF: F2        .byte $F2, $4B, $F2   ; 
- D 1 - I - 0x0041D2 01:A1C2: FA        .byte $FA, $4D, $F2   ; 



off_01_A1C5_0F:
- D 1 - I - 0x0041D5 01:A1C5: FF        .byte $FF   ; 
- D 1 - I - 0x0041D6 01:A1C6: 8B A1     .word off_FF_A18B



off_01_A1C8_10:
- D 1 - I - 0x0041D8 01:A1C8: FF        .byte $FF   ; 
- D 1 - I - 0x0041D9 01:A1C9: 9B A1     .word off_FF_A19B



off_01_A1CB_11:
- D 1 - I - 0x0041DB 01:A1CB: FF        .byte $FF   ; 
- D 1 - I - 0x0041DC 01:A1CC: A8 A1     .word off_FF_A1A8



off_01_A1CE_12:
- D 1 - I - 0x0041DE 01:A1CE: FF        .byte $FF   ; 
- D 1 - I - 0x0041DF 01:A1CF: B8 A1     .word off_FF_A1B8



off_01_A1D1_13:
off_FF_A1D1:
- D 1 - I - 0x0041E1 01:A1D1: 82        .byte $82   ; counter
- D 1 - I - 0x0041E2 01:A1D2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0041E3 01:A1D3: FA        .byte $FA, $4F, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041E6 01:A1D6: 02        .byte $02, $51, $F0   ; 

- D 1 - I - 0x0041E9 01:A1D9: 02        .byte $02   ; 
- D 1 - I - 0x0041EA 01:A1DA: 00        .byte $00   ; 
- D 1 - I - 0x0041EB 01:A1DB: FB        .byte $FB, $1B, $00   ; 
- D 1 - I - 0x0041EE 01:A1DE: 03        .byte $03, $1D, $00   ; 



off_01_A1E1_14:
off_FF_A1E1:
- D 1 - I - 0x0041F1 01:A1E1: 82        .byte $82   ; counter
- D 1 - I - 0x0041F2 01:A1E2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0041F3 01:A1E3: FA        .byte $FA, $4F, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0041F6 01:A1E6: 02        .byte $02, $51, $F2   ; 

- D 1 - I - 0x0041F9 01:A1E9: 01        .byte $01   ; 
- D 1 - I - 0x0041FA 01:A1EA: 00        .byte $00   ; 
- D 1 - I - 0x0041FB 01:A1EB: FF        .byte $FF, $1F, $01   ; 



off_01_A1EE_15:
off_FF_A1EE:
- D 1 - I - 0x0041FE 01:A1EE: 82        .byte $82   ; counter
- D 1 - I - 0x0041FF 01:A1EF: 01        .byte $01   ; spr_A
- D 1 - I - 0x004200 01:A1F0: FC        .byte $FC, $4F, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004203 01:A1F3: 04        .byte $04, $51, $F0   ; 

- D 1 - I - 0x004206 01:A1F6: 01        .byte $01   ; 
- D 1 - I - 0x004207 01:A1F7: 00        .byte $00   ; 
- D 1 - I - 0x004208 01:A1F8: 00        .byte $00, $21, $00   ; 



off_01_A1FB_16:
off_FF_A1FB:
- - - - - - 0x00420B 01:A1FB: 82        .byte $82   ; counter
- - - - - - 0x00420C 01:A1FC: 01        .byte $01   ; spr_A
- - - - - - 0x00420D 01:A1FD: FC        .byte $FC, $4F, $F2   ; spr_X, spr_T, spr_Y
- - - - - - 0x004210 01:A200: 04        .byte $04, $51, $F2   ; 

- - - - - - 0x004213 01:A203: 01        .byte $01   ; 
- - - - - - 0x004214 01:A204: 00        .byte $00   ; 
- - - - - - 0x004215 01:A205: 00        .byte $00, $1F, $01   ; 



off_01_A208_17:
- D 1 - I - 0x004218 01:A208: FF        .byte $FF   ; 
- D 1 - I - 0x004219 01:A209: D1 A1     .word off_FF_A1D1



off_01_A20B_18:
- D 1 - I - 0x00421B 01:A20B: FF        .byte $FF   ; 
- D 1 - I - 0x00421C 01:A20C: E1 A1     .word off_FF_A1E1



off_01_A20E_19:
- D 1 - I - 0x00421E 01:A20E: FF        .byte $FF   ; 
- D 1 - I - 0x00421F 01:A20F: EE A1     .word off_FF_A1EE



off_01_A211_1A:
- - - - - - 0x004221 01:A211: FF        .byte $FF   ; 
- - - - - - 0x004222 01:A212: FB A1     .word off_FF_A1FB



off_01_A214_1B:
- D 1 - I - 0x004224 01:A214: 81        .byte $81   ; counter
- D 1 - I - 0x004225 01:A215: 01        .byte $01   ; spr_A
- D 1 - I - 0x004226 01:A216: 02        .byte $02, $55, $F0   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004229 01:A219: 82        .byte $82   ; 
- D 1 - I - 0x00422A 01:A21A: 00        .byte $00   ; 
- D 1 - I - 0x00422B 01:A21B: FB        .byte $FB, $23, $00   ; 
- D 1 - I - 0x00422E 01:A21E: 03        .byte $03, $25, $00   ; 

- D 1 - I - 0x004231 01:A221: 01        .byte $01   ; 
- D 1 - I - 0x004232 01:A222: 01        .byte $01   ; 
- D 1 - I - 0x004233 01:A223: FA        .byte $FA, $53, $F0   ; 



off_01_A226_1C:
- - - - - - 0x004236 01:A226: 81        .byte $81   ; counter
- - - - - - 0x004237 01:A227: 00        .byte $00   ; spr_A
- - - - - - 0x004238 01:A228: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00423B 01:A22B: 81        .byte $81   ; 
- - - - - - 0x00423C 01:A22C: 40        .byte $40   ; 
- - - - - - 0x00423D 01:A22D: 03        .byte $03, $23, $00   ; 

- - - - - - 0x004240 01:A230: 02        .byte $02   ; 
- - - - - - 0x004241 01:A231: 01        .byte $01   ; 
- - - - - - 0x004242 01:A232: 03        .byte $03, $55, $F2   ; 
- - - - - - 0x004245 01:A235: FB        .byte $FB, $53, $F2   ; 



off_01_A238_1D:
- - - - - - 0x004248 01:A238: 82        .byte $82   ; counter
- - - - - - 0x004249 01:A239: 01        .byte $01   ; spr_A
- - - - - - 0x00424A 01:A23A: FC        .byte $FC, $53, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x00424D 01:A23D: 04        .byte $04, $55, $F0   ; 

- - - - - - 0x004250 01:A240: 02        .byte $02   ; 
- - - - - - 0x004251 01:A241: 40        .byte $40   ; 
- - - - - - 0x004252 01:A242: 03        .byte $03, $23, $00   ; 
- - - - - - 0x004255 01:A245: FB        .byte $FB, $25, $00   ; 



off_01_A248_1E:
- - - - - - 0x004258 01:A248: 81        .byte $81   ; counter
- - - - - - 0x004259 01:A249: 40        .byte $40   ; spr_A
- - - - - - 0x00425A 01:A24A: 03        .byte $03, $27, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00425D 01:A24D: 81        .byte $81   ; 
- - - - - - 0x00425E 01:A24E: 00        .byte $00   ; 
- - - - - - 0x00425F 01:A24F: FB        .byte $FB, $23, $00   ; 

- - - - - - 0x004262 01:A252: 02        .byte $02   ; 
- - - - - - 0x004263 01:A253: 01        .byte $01   ; 
- - - - - - 0x004264 01:A254: FB        .byte $FB, $53, $F2   ; 
- - - - - - 0x004267 01:A257: 03        .byte $03, $55, $F2   ; 



off_01_A25A_1F:
- D 1 - I - 0x00426A 01:A25A: 82        .byte $82   ; counter
- D 1 - I - 0x00426B 01:A25B: 00        .byte $00   ; spr_A
- D 1 - I - 0x00426C 01:A25C: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00426F 01:A25F: 03        .byte $03, $2B, $FF   ; 

- D 1 - I - 0x004272 01:A262: 02        .byte $02   ; 
- D 1 - I - 0x004273 01:A263: 01        .byte $01   ; 
- D 1 - I - 0x004274 01:A264: FB        .byte $FB, $43, $EF   ; 
- D 1 - I - 0x004277 01:A267: 03        .byte $03, $45, $EF   ; 



off_01_A26A_20:
- D 1 - I - 0x00427A 01:A26A: 82        .byte $82   ; counter
- D 1 - I - 0x00427B 01:A26B: 00        .byte $00   ; spr_A
- D 1 - I - 0x00427C 01:A26C: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00427F 01:A26F: 03        .byte $03, $2B, $FF   ; 

- D 1 - I - 0x004282 01:A272: 02        .byte $02   ; 
- D 1 - I - 0x004283 01:A273: 01        .byte $01   ; 
- D 1 - I - 0x004284 01:A274: FA        .byte $FA, $43, $F0   ; 
- D 1 - I - 0x004287 01:A277: 02        .byte $02, $45, $F0   ; 



off_01_A27A_21:
off_FF_A27A:
- - - - - - 0x00428A 01:A27A: 82        .byte $82   ; counter
- - - - - - 0x00428B 01:A27B: 40        .byte $40   ; spr_A
- - - - - - 0x00428C 01:A27C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x00428F 01:A27F: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004292 01:A282: 02        .byte $02   ; 
- - - - - - 0x004293 01:A283: 01        .byte $01   ; 
- - - - - - 0x004294 01:A284: F6        .byte $F6, $47, $EF   ; 
- - - - - - 0x004297 01:A287: FE        .byte $FE, $49, $EF   ; 



off_01_A28A_22:
off_FF_A28A:
- D 1 - I - 0x00429A 01:A28A: 82        .byte $82   ; counter
- D 1 - I - 0x00429B 01:A28B: 40        .byte $40   ; spr_A
- D 1 - I - 0x00429C 01:A28C: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00429F 01:A28F: F6        .byte $F6, $2B, $FF   ; 

- D 1 - I - 0x0042A2 01:A292: 02        .byte $02   ; 
- D 1 - I - 0x0042A3 01:A293: 01        .byte $01   ; 
- D 1 - I - 0x0042A4 01:A294: F7        .byte $F7, $47, $F0   ; 
- D 1 - I - 0x0042A7 01:A297: FF        .byte $FF, $49, $F0   ; 



off_01_A29A_23:
- - - - - - 0x0042AA 01:A29A: FF        .byte $FF   ; 
- - - - - - 0x0042AB 01:A29B: 7A A2     .word off_FF_A27A



off_01_A29D_24:
- D 1 - I - 0x0042AD 01:A29D: FF        .byte $FF   ; 
- D 1 - I - 0x0042AE 01:A29E: 8A A2     .word off_FF_A28A



off_01_A2A0_25:
off_FF_A2A0:
- D 1 - I - 0x0042B0 01:A2A0: 82        .byte $82   ; counter
- D 1 - I - 0x0042B1 01:A2A1: 40        .byte $40   ; spr_A
- D 1 - I - 0x0042B2 01:A2A2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0042B5 01:A2A5: F6        .byte $F6, $2B, $FF   ; 

- D 1 - I - 0x0042B8 01:A2A8: 02        .byte $02   ; 
- D 1 - I - 0x0042B9 01:A2A9: 01        .byte $01   ; 
- D 1 - I - 0x0042BA 01:A2AA: F4        .byte $F4, $4B, $F0   ; 
- D 1 - I - 0x0042BD 01:A2AD: FC        .byte $FC, $4D, $F0   ; 



off_01_A2B0_26:
off_FF_A2B0:
- - - - - - 0x0042C0 01:A2B0: 82        .byte $82   ; counter
- - - - - - 0x0042C1 01:A2B1: 40        .byte $40   ; spr_A
- - - - - - 0x0042C2 01:A2B2: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0042C5 01:A2B5: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x0042C8 01:A2B8: 02        .byte $02   ; 
- - - - - - 0x0042C9 01:A2B9: 01        .byte $01   ; 
- - - - - - 0x0042CA 01:A2BA: F6        .byte $F6, $4B, $F0   ; 
- - - - - - 0x0042CD 01:A2BD: FE        .byte $FE, $4D, $F0   ; 



off_01_A2C0_27:
- D 1 - I - 0x0042D0 01:A2C0: FF        .byte $FF   ; 
- D 1 - I - 0x0042D1 01:A2C1: A0 A2     .word off_FF_A2A0



off_01_A2C3_28:
- - - - - - 0x0042D3 01:A2C3: FF        .byte $FF   ; 
- - - - - - 0x0042D4 01:A2C4: B0 A2     .word off_FF_A2B0



off_01_A2C6_29:
off_FF_A2C6:
- D 1 - I - 0x0042D6 01:A2C6: 82        .byte $82   ; counter
- D 1 - I - 0x0042D7 01:A2C7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0042D8 01:A2C8: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0042DB 01:A2CB: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x0042DE 01:A2CE: 02        .byte $02   ; 
- D 1 - I - 0x0042DF 01:A2CF: 01        .byte $01   ; 
- D 1 - I - 0x0042E0 01:A2D0: F8        .byte $F8, $4F, $F0   ; 
- D 1 - I - 0x0042E3 01:A2D3: 00        .byte $00, $51, $F0   ; 



off_01_A2D6_2A:
off_FF_A2D6:
- D 1 - I - 0x0042E6 01:A2D6: 82        .byte $82   ; counter
- D 1 - I - 0x0042E7 01:A2D7: 00        .byte $00   ; spr_A
- D 1 - I - 0x0042E8 01:A2D8: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0042EB 01:A2DB: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x0042EE 01:A2DE: 02        .byte $02   ; 
- D 1 - I - 0x0042EF 01:A2DF: 01        .byte $01   ; 
- D 1 - I - 0x0042F0 01:A2E0: FA        .byte $FA, $4F, $EE   ; 
- D 1 - I - 0x0042F3 01:A2E3: 02        .byte $02, $51, $EE   ; 



off_01_A2E6_2B:
- D 1 - I - 0x0042F6 01:A2E6: FF        .byte $FF   ; 
- D 1 - I - 0x0042F7 01:A2E7: C6 A2     .word off_FF_A2C6



off_01_A2E9_2C:
- D 1 - I - 0x0042F9 01:A2E9: FF        .byte $FF   ; 
- D 1 - I - 0x0042FA 01:A2EA: D6 A2     .word off_FF_A2D6



off_01_A2EC_2D:
- D 1 - I - 0x0042FC 01:A2EC: 82        .byte $82   ; counter
- D 1 - I - 0x0042FD 01:A2ED: 00        .byte $00   ; spr_A
- D 1 - I - 0x0042FE 01:A2EE: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004301 01:A2F1: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x004304 01:A2F4: 02        .byte $02   ; 
- D 1 - I - 0x004305 01:A2F5: 01        .byte $01   ; 
- D 1 - I - 0x004306 01:A2F6: FA        .byte $FA, $53, $EE   ; 
- D 1 - I - 0x004309 01:A2F9: 02        .byte $02, $55, $EE   ; 



off_01_A2FC_2E:
- - - - - - 0x00430C 01:A2FC: 82        .byte $82   ; counter
- - - - - - 0x00430D 01:A2FD: 00        .byte $00   ; spr_A
- - - - - - 0x00430E 01:A2FE: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x004311 01:A301: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x004314 01:A304: 02        .byte $02   ; 
- - - - - - 0x004315 01:A305: 01        .byte $01   ; 
- - - - - - 0x004316 01:A306: F9        .byte $F9, $53, $F0   ; 
- - - - - - 0x004319 01:A309: 01        .byte $01, $55, $F0   ; 



off_01_A30C_2F:
off_01_A30C_30:
off_01_A30C_31:
off_01_A30C_32:
off_01_A30C_33:
off_01_A30C_34:
off_01_A30C_35:
off_01_A30C_36:
off_01_A30C_37:
off_01_A30C_38:
off_01_A30C_39:
off_01_A30C_3A:
off_01_A30C_3B:
off_FF_A30C:
- D 1 - I - 0x00431C 01:A30C: 82        .byte $82   ; counter
- D 1 - I - 0x00431D 01:A30D: 01        .byte $01   ; spr_A
- D 1 - I - 0x00431E 01:A30E: F6        .byte $F6, $47, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004321 01:A311: FE        .byte $FE, $49, $F1   ; 

- D 1 - I - 0x004324 01:A314: 01        .byte $01   ; 
- D 1 - I - 0x004325 01:A315: 00        .byte $00   ; 
- D 1 - I - 0x004326 01:A316: FA        .byte $FA, $0B, $00   ; 



off_01_A319_3C:
- - - - - - 0x004329 01:A319: FF        .byte $FF   ; 
- - - - - - 0x00432A 01:A31A: 0C A3     .word off_FF_A30C



off_01_A31C_3D:
- - - - - - 0x00432C 01:A31C: 82        .byte $82   ; counter
- - - - - - 0x00432D 01:A31D: 01        .byte $01   ; spr_A
- - - - - - 0x00432E 01:A31E: F9        .byte $F9, $3B, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x004331 01:A321: 01        .byte $01, $3D, $F0   ; 

- - - - - - 0x004334 01:A324: 81        .byte $81   ; 
- - - - - - 0x004335 01:A325: 00        .byte $00   ; 
- - - - - - 0x004336 01:A326: F9        .byte $F9, $31, $00   ; 

- - - - - - 0x004339 01:A329: 01        .byte $01   ; 
- - - - - - 0x00433A 01:A32A: 40        .byte $40   ; 
- - - - - - 0x00433B 01:A32B: 01        .byte $01, $31, $00   ; 



off_01_A32E_3E:
- - - - - - 0x00433E 01:A32E: 82        .byte $82   ; counter
- - - - - - 0x00433F 01:A32F: 81        .byte $81   ; spr_A
- - - - - - 0x004340 01:A330: F9        .byte $F9, $3B, $01   ; spr_X, spr_T, spr_Y
- - - - - - 0x004343 01:A333: 01        .byte $01, $3D, $01   ; 

- - - - - - 0x004346 01:A336: 81        .byte $81   ; 
- - - - - - 0x004347 01:A337: 80        .byte $80   ; 
- - - - - - 0x004348 01:A338: F9        .byte $F9, $31, $F1   ; 

- - - - - - 0x00434B 01:A33B: 01        .byte $01   ; 
- - - - - - 0x00434C 01:A33C: C0        .byte $C0   ; 
- - - - - - 0x00434D 01:A33D: 01        .byte $01, $31, $F1   ; 



off_01_A340_3F:
- - - - - - 0x004350 01:A340: 82        .byte $82   ; counter
- - - - - - 0x004351 01:A341: 01        .byte $01   ; spr_A
- - - - - - 0x004352 01:A342: F9        .byte $F9, $3F, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004355 01:A345: 01        .byte $01, $41, $EF   ; 

- - - - - - 0x004358 01:A348: 02        .byte $02   ; 
- - - - - - 0x004359 01:A349: 00        .byte $00   ; 
- - - - - - 0x00435A 01:A34A: F9        .byte $F9, $33, $FF   ; 
- - - - - - 0x00435D 01:A34D: 01        .byte $01, $35, $FF   ; 



off_01_A350_40:
- - - - - - 0x004360 01:A350: 82        .byte $82   ; counter
- - - - - - 0x004361 01:A351: 81        .byte $81   ; spr_A
- - - - - - 0x004362 01:A352: F9        .byte $F9, $3F, $02   ; spr_X, spr_T, spr_Y
- - - - - - 0x004365 01:A355: 01        .byte $01, $41, $02   ; 

- - - - - - 0x004368 01:A358: 02        .byte $02   ; 
- - - - - - 0x004369 01:A359: 80        .byte $80   ; 
- - - - - - 0x00436A 01:A35A: F9        .byte $F9, $33, $F2   ; 
- - - - - - 0x00436D 01:A35D: 01        .byte $01, $35, $F2   ; 



off_01_A360_41:
- D 1 - I - 0x004370 01:A360: 81        .byte $81   ; counter
- D 1 - I - 0x004371 01:A361: 00        .byte $00   ; spr_A
- D 1 - I - 0x004372 01:A362: F8        .byte $F8, $31, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004375 01:A365: 81        .byte $81   ; 
- D 1 - I - 0x004376 01:A366: 40        .byte $40   ; 
- D 1 - I - 0x004377 01:A367: 00        .byte $00, $31, $00   ; 

- D 1 - I - 0x00437A 01:A36A: 02        .byte $02   ; 
- D 1 - I - 0x00437B 01:A36B: 01        .byte $01   ; 
- D 1 - I - 0x00437C 01:A36C: F8        .byte $F8, $53, $F1   ; 
- D 1 - I - 0x00437F 01:A36F: 00        .byte $00, $55, $F1   ; 



off_01_A372_42:
- D 1 - I - 0x004382 01:A372: 81        .byte $81   ; counter
- D 1 - I - 0x004383 01:A373: 01        .byte $01   ; spr_A
- D 1 - I - 0x004384 01:A374: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004387 01:A377: 01        .byte $01   ; 
- D 1 - I - 0x004388 01:A378: 00        .byte $00   ; 
- D 1 - I - 0x004389 01:A379: 01        .byte $01, $39, $FA   ; 



off_01_A37C_43:
- D 1 - I - 0x00438C 01:A37C: 81        .byte $81   ; counter
- D 1 - I - 0x00438D 01:A37D: 00        .byte $00   ; spr_A
- D 1 - I - 0x00438E 01:A37E: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004391 01:A381: 01        .byte $01   ; 
- D 1 - I - 0x004392 01:A382: 40        .byte $40   ; 
- D 1 - I - 0x004393 01:A383: 01        .byte $01, $C3, $00   ; 



off_01_A386_44:
- D 1 - I - 0x004396 01:A386: 81        .byte $81   ; counter
- D 1 - I - 0x004397 01:A387: 00        .byte $00   ; spr_A
- D 1 - I - 0x004398 01:A388: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00439B 01:A38B: 01        .byte $01   ; 
- D 1 - I - 0x00439C 01:A38C: 40        .byte $40   ; 
- D 1 - I - 0x00439D 01:A38D: 01        .byte $01, $C5, $00   ; 



off_01_A390_45:
- D 1 - I - 0x0043A0 01:A390: 81        .byte $81   ; counter
- D 1 - I - 0x0043A1 01:A391: 00        .byte $00   ; spr_A
- D 1 - I - 0x0043A2 01:A392: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0043A5 01:A395: 01        .byte $01   ; 
- D 1 - I - 0x0043A6 01:A396: 40        .byte $40   ; 
- D 1 - I - 0x0043A7 01:A397: 04        .byte $04, $C5, $00   ; 



off_01_A39A_46:
off_01_A39A_47:
off_01_A39A_48:
- D 1 - I - 0x0043AA 01:A39A: 04        .byte $04   ; counter
- D 1 - I - 0x0043AB 01:A39B: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043AC 01:A39C: F7        .byte $F7, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043AF 01:A39F: FF        .byte $FF, $03, $00   ; 
- D 1 - I - 0x0043B2 01:A3A2: F8        .byte $F8, $63, $F0   ; 
- D 1 - I - 0x0043B5 01:A3A5: 00        .byte $00, $65, $F0   ; 



off_01_A3A8_49:
- D 1 - I - 0x0043B8 01:A3A8: 03        .byte $03   ; counter
- D 1 - I - 0x0043B9 01:A3A9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043BA 01:A3AA: F8        .byte $F8, $63, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043BD 01:A3AD: 00        .byte $00, $65, $F2   ; 
- D 1 - I - 0x0043C0 01:A3B0: FA        .byte $FA, $05, $01   ; 



off_01_A3B3_4A:
- D 1 - I - 0x0043C3 01:A3B3: 82        .byte $82   ; counter
- D 1 - I - 0x0043C4 01:A3B4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043C5 01:A3B5: FA        .byte $FA, $63, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043C8 01:A3B8: 02        .byte $02, $65, $F0   ; 

- D 1 - I - 0x0043CB 01:A3BB: 02        .byte $02   ; 
- D 1 - I - 0x0043CC 01:A3BC: 41        .byte $41   ; 
- D 1 - I - 0x0043CD 01:A3BD: FF        .byte $FF, $01, $00   ; 
- D 1 - I - 0x0043D0 01:A3C0: F7        .byte $F7, $03, $00   ; 



off_01_A3C3_4B:
- D 1 - I - 0x0043D3 01:A3C3: 82        .byte $82   ; counter
- D 1 - I - 0x0043D4 01:A3C4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043D5 01:A3C5: FA        .byte $FA, $63, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043D8 01:A3C8: 02        .byte $02, $65, $F2   ; 

- D 1 - I - 0x0043DB 01:A3CB: 01        .byte $01   ; 
- D 1 - I - 0x0043DC 01:A3CC: 41        .byte $41   ; 
- D 1 - I - 0x0043DD 01:A3CD: FC        .byte $FC, $05, $01   ; 



off_01_A3D0_4C:
off_FF_A3D0:
- D 1 - I - 0x0043E0 01:A3D0: 04        .byte $04   ; counter
- D 1 - I - 0x0043E1 01:A3D1: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043E2 01:A3D2: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043E5 01:A3D5: 02        .byte $02, $09, $FF   ; 
- D 1 - I - 0x0043E8 01:A3D8: FA        .byte $FA, $67, $EF   ; 
- D 1 - I - 0x0043EB 01:A3DB: 02        .byte $02, $69, $EF   ; 



off_01_A3DE_4D:
off_FF_A3DE:
- D 1 - I - 0x0043EE 01:A3DE: 03        .byte $03   ; counter
- D 1 - I - 0x0043EF 01:A3DF: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043F0 01:A3E0: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043F3 01:A3E3: F8        .byte $F8, $67, $F1   ; 
- D 1 - I - 0x0043F6 01:A3E6: 00        .byte $00, $69, $F1   ; 



off_01_A3E9_4E:
off_FF_A3E9:
- D 1 - I - 0x0043F9 01:A3E9: 04        .byte $04   ; counter
- D 1 - I - 0x0043FA 01:A3EA: 01        .byte $01   ; spr_A
- D 1 - I - 0x0043FB 01:A3EB: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0043FE 01:A3EE: 00        .byte $00, $0F, $FF   ; 
- D 1 - I - 0x004401 01:A3F1: F7        .byte $F7, $67, $EF   ; 
- D 1 - I - 0x004404 01:A3F4: FF        .byte $FF, $69, $EF   ; 



off_01_A3F7_4F:
- D 1 - I - 0x004407 01:A3F7: FF        .byte $FF   ; 
- D 1 - I - 0x004408 01:A3F8: D0 A3     .word off_FF_A3D0



off_01_A3FA_50:
- D 1 - I - 0x00440A 01:A3FA: FF        .byte $FF   ; 
- D 1 - I - 0x00440B 01:A3FB: DE A3     .word off_FF_A3DE



off_01_A3FD_51:
- D 1 - I - 0x00440D 01:A3FD: FF        .byte $FF   ; 
- D 1 - I - 0x00440E 01:A3FE: E9 A3     .word off_FF_A3E9



off_01_A400_52:
off_FF_A400:
- D 1 - I - 0x004410 01:A400: 05        .byte $05   ; counter
- D 1 - I - 0x004411 01:A401: 01        .byte $01   ; spr_A
- D 1 - I - 0x004412 01:A402: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004415 01:A405: FE        .byte $FE, $13, $00   ; 
- D 1 - I - 0x004418 01:A408: EC        .byte $EC, $6B, $F0   ; 
- D 1 - I - 0x00441B 01:A40B: F4        .byte $F4, $6D, $F0   ; 
- D 1 - I - 0x00441E 01:A40E: FC        .byte $FC, $6F, $F0   ; 



off_01_A411_53:
off_FF_A411:
- D 1 - I - 0x004421 01:A411: 04        .byte $04   ; counter
- D 1 - I - 0x004422 01:A412: 01        .byte $01   ; spr_A
- D 1 - I - 0x004423 01:A413: FC        .byte $FC, $15, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004426 01:A416: EC        .byte $EC, $6B, $F2   ; 
- D 1 - I - 0x004429 01:A419: F4        .byte $F4, $6D, $F2   ; 
- D 1 - I - 0x00442C 01:A41C: FC        .byte $FC, $6F, $F2   ; 



off_01_A41F_54:
off_FF_A41F:
- D 1 - I - 0x00442F 01:A41F: 05        .byte $05   ; counter
- D 1 - I - 0x004430 01:A420: 01        .byte $01   ; spr_A
- D 1 - I - 0x004431 01:A421: EA        .byte $EA, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004434 01:A424: F2        .byte $F2, $6D, $F0   ; 
- D 1 - I - 0x004437 01:A427: FA        .byte $FA, $6F, $F0   ; 
- D 1 - I - 0x00443A 01:A42A: F6        .byte $F6, $17, $00   ; 
- D 1 - I - 0x00443D 01:A42D: FE        .byte $FE, $19, $00   ; 



off_01_A430_55:
- D 1 - I - 0x004440 01:A430: FF        .byte $FF   ; 
- D 1 - I - 0x004441 01:A431: 00 A4     .word off_FF_A400



off_01_A433_56:
- D 1 - I - 0x004443 01:A433: FF        .byte $FF   ; 
- D 1 - I - 0x004444 01:A434: 11 A4     .word off_FF_A411



off_01_A436_57:
- D 1 - I - 0x004446 01:A436: FF        .byte $FF   ; 
- D 1 - I - 0x004447 01:A437: 1F A4     .word off_FF_A41F



off_01_A439_58:
off_FF_A439:
- D 1 - I - 0x004449 01:A439: 04        .byte $04   ; counter
- D 1 - I - 0x00444A 01:A43A: 01        .byte $01   ; spr_A
- D 1 - I - 0x00444B 01:A43B: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00444E 01:A43E: 03        .byte $03, $1D, $00   ; 
- D 1 - I - 0x004451 01:A441: F9        .byte $F9, $71, $F0   ; 
- D 1 - I - 0x004454 01:A444: 01        .byte $01, $73, $F0   ; 



off_01_A447_59:
off_FF_A447:
- D 1 - I - 0x004457 01:A447: 03        .byte $03   ; counter
- D 1 - I - 0x004458 01:A448: 01        .byte $01   ; spr_A
- D 1 - I - 0x004459 01:A449: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00445C 01:A44C: F9        .byte $F9, $71, $F2   ; 
- D 1 - I - 0x00445F 01:A44F: 01        .byte $01, $73, $F2   ; 



off_01_A452_5A:
off_FF_A452:
- D 1 - I - 0x004462 01:A452: 03        .byte $03   ; counter
- D 1 - I - 0x004463 01:A453: 01        .byte $01   ; spr_A
- D 1 - I - 0x004464 01:A454: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004467 01:A457: FB        .byte $FB, $71, $F0   ; 
- D 1 - I - 0x00446A 01:A45A: 03        .byte $03, $73, $F0   ; 



off_01_A45D_5B:
off_FF_A45D:
- D 1 - I - 0x00446D 01:A45D: 03        .byte $03   ; counter
- D 1 - I - 0x00446E 01:A45E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00446F 01:A45F: 00        .byte $00, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004472 01:A462: FB        .byte $FB, $71, $F2   ; 
- D 1 - I - 0x004475 01:A465: 03        .byte $03, $73, $F2   ; 



off_01_A468_5C:
- D 1 - I - 0x004478 01:A468: FF        .byte $FF   ; 
- D 1 - I - 0x004479 01:A469: 39 A4     .word off_FF_A439



off_01_A46B_5D:
- D 1 - I - 0x00447B 01:A46B: FF        .byte $FF   ; 
- D 1 - I - 0x00447C 01:A46C: 47 A4     .word off_FF_A447



off_01_A46E_5E:
- D 1 - I - 0x00447E 01:A46E: FF        .byte $FF   ; 
- D 1 - I - 0x00447F 01:A46F: 52 A4     .word off_FF_A452



off_01_A471_5F:
- D 1 - I - 0x004481 01:A471: FF        .byte $FF   ; 
- D 1 - I - 0x004482 01:A472: 5D A4     .word off_FF_A45D



off_01_A474_60:
- D 1 - I - 0x004484 01:A474: 04        .byte $04   ; counter
- D 1 - I - 0x004485 01:A475: 01        .byte $01   ; spr_A
- D 1 - I - 0x004486 01:A476: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004489 01:A479: 03        .byte $03, $25, $00   ; 
- D 1 - I - 0x00448C 01:A47C: FA        .byte $FA, $75, $F0   ; 
- D 1 - I - 0x00448F 01:A47F: 02        .byte $02, $77, $F0   ; 



off_01_A482_61:
- D 1 - I - 0x004492 01:A482: 81        .byte $81   ; counter
- D 1 - I - 0x004493 01:A483: 01        .byte $01   ; spr_A
- D 1 - I - 0x004494 01:A484: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004497 01:A487: 81        .byte $81   ; 
- D 1 - I - 0x004498 01:A488: 41        .byte $41   ; 
- D 1 - I - 0x004499 01:A489: 03        .byte $03, $23, $00   ; 

- D 1 - I - 0x00449C 01:A48C: 02        .byte $02   ; 
- D 1 - I - 0x00449D 01:A48D: 01        .byte $01   ; 
- D 1 - I - 0x00449E 01:A48E: FA        .byte $FA, $75, $F2   ; 
- D 1 - I - 0x0044A1 01:A491: 02        .byte $02, $77, $F2   ; 



off_01_A494_62:
- D 1 - I - 0x0044A4 01:A494: 82        .byte $82   ; counter
- D 1 - I - 0x0044A5 01:A495: 41        .byte $41   ; spr_A
- D 1 - I - 0x0044A6 01:A496: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044A9 01:A499: FB        .byte $FB, $25, $00   ; 

- D 1 - I - 0x0044AC 01:A49C: 02        .byte $02   ; 
- D 1 - I - 0x0044AD 01:A49D: 01        .byte $01   ; 
- D 1 - I - 0x0044AE 01:A49E: FC        .byte $FC, $75, $F0   ; 
- D 1 - I - 0x0044B1 01:A4A1: 04        .byte $04, $77, $F0   ; 



off_01_A4A4_63:
- D 1 - I - 0x0044B4 01:A4A4: 81        .byte $81   ; counter
- D 1 - I - 0x0044B5 01:A4A5: 01        .byte $01   ; spr_A
- D 1 - I - 0x0044B6 01:A4A6: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0044B9 01:A4A9: 81        .byte $81   ; 
- D 1 - I - 0x0044BA 01:A4AA: 41        .byte $41   ; 
- D 1 - I - 0x0044BB 01:A4AB: 03        .byte $03, $27, $00   ; 

- D 1 - I - 0x0044BE 01:A4AE: 02        .byte $02   ; 
- D 1 - I - 0x0044BF 01:A4AF: 01        .byte $01   ; 
- D 1 - I - 0x0044C0 01:A4B0: FC        .byte $FC, $75, $F2   ; 
- D 1 - I - 0x0044C3 01:A4B3: 04        .byte $04, $77, $F2   ; 



off_01_A4B6_64:
- D 1 - I - 0x0044C6 01:A4B6: 04        .byte $04   ; counter
- D 1 - I - 0x0044C7 01:A4B7: 01        .byte $01   ; spr_A
- D 1 - I - 0x0044C8 01:A4B8: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044CB 01:A4BB: 03        .byte $03, $2B, $FF   ; 
- D 1 - I - 0x0044CE 01:A4BE: FC        .byte $FC, $63, $EF   ; 
- D 1 - I - 0x0044D1 01:A4C1: 04        .byte $04, $65, $EF   ; 



off_01_A4C4_65:
- D 1 - I - 0x0044D4 01:A4C4: 04        .byte $04   ; counter
- D 1 - I - 0x0044D5 01:A4C5: 01        .byte $01   ; spr_A
- D 1 - I - 0x0044D6 01:A4C6: FB        .byte $FB, $63, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044D9 01:A4C9: 03        .byte $03, $65, $F0   ; 
- D 1 - I - 0x0044DC 01:A4CC: FB        .byte $FB, $29, $FF   ; 
- D 1 - I - 0x0044DF 01:A4CF: 03        .byte $03, $2B, $FF   ; 



off_01_A4D2_66:
off_FF_A4D2:
- D 1 - I - 0x0044E2 01:A4D2: 82        .byte $82   ; counter
- D 1 - I - 0x0044E3 01:A4D3: 41        .byte $41   ; spr_A
- D 1 - I - 0x0044E4 01:A4D4: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044E7 01:A4D7: FE        .byte $FE, $29, $FF   ; 

- D 1 - I - 0x0044EA 01:A4DA: 02        .byte $02   ; 
- D 1 - I - 0x0044EB 01:A4DB: 01        .byte $01   ; 
- D 1 - I - 0x0044EC 01:A4DC: F7        .byte $F7, $67, $EF   ; 
- D 1 - I - 0x0044EF 01:A4DF: FF        .byte $FF, $69, $EF   ; 



off_01_A4E2_67:
off_FF_A4E2:
- D 1 - I - 0x0044F2 01:A4E2: 82        .byte $82   ; counter
- D 1 - I - 0x0044F3 01:A4E3: 41        .byte $41   ; spr_A
- D 1 - I - 0x0044F4 01:A4E4: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0044F7 01:A4E7: FE        .byte $FE, $29, $FF   ; 

- D 1 - I - 0x0044FA 01:A4EA: 02        .byte $02   ; 
- D 1 - I - 0x0044FB 01:A4EB: 01        .byte $01   ; 
- D 1 - I - 0x0044FC 01:A4EC: F8        .byte $F8, $67, $F0   ; 
- D 1 - I - 0x0044FF 01:A4EF: 00        .byte $00, $69, $F0   ; 



off_01_A4F2_68:
- D 1 - I - 0x004502 01:A4F2: FF        .byte $FF   ; 
- D 1 - I - 0x004503 01:A4F3: D2 A4     .word off_FF_A4D2



off_01_A4F5_69:
- D 1 - I - 0x004505 01:A4F5: FF        .byte $FF   ; 
- D 1 - I - 0x004506 01:A4F6: E2 A4     .word off_FF_A4E2



off_01_A4F8_6A:
off_FF_A4F8:
- D 1 - I - 0x004508 01:A4F8: 83        .byte $83   ; counter
- D 1 - I - 0x004509 01:A4F9: 01        .byte $01   ; spr_A
- D 1 - I - 0x00450A 01:A4FA: EB        .byte $EB, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00450D 01:A4FD: F3        .byte $F3, $6D, $F0   ; 
- D 1 - I - 0x004510 01:A500: FB        .byte $FB, $6F, $F0   ; 

- D 1 - I - 0x004513 01:A503: 02        .byte $02   ; 
- D 1 - I - 0x004514 01:A504: 41        .byte $41   ; 
- D 1 - I - 0x004515 01:A505: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x004518 01:A508: FE        .byte $FE, $29, $FF   ; 



off_01_A50B_6B:
off_FF_A50B:
- D 1 - I - 0x00451B 01:A50B: 83        .byte $83   ; counter
- D 1 - I - 0x00451C 01:A50C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00451D 01:A50D: ED        .byte $ED, $6B, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004520 01:A510: F5        .byte $F5, $6D, $F0   ; 
- D 1 - I - 0x004523 01:A513: FD        .byte $FD, $6F, $F0   ; 

- D 1 - I - 0x004526 01:A516: 02        .byte $02   ; 
- D 1 - I - 0x004527 01:A517: 41        .byte $41   ; 
- D 1 - I - 0x004528 01:A518: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x00452B 01:A51B: FE        .byte $FE, $29, $FF   ; 



off_01_A51E_6C:
- D 1 - I - 0x00452E 01:A51E: FF        .byte $FF   ; 
- D 1 - I - 0x00452F 01:A51F: F8 A4     .word off_FF_A4F8



off_01_A521_6D:
- D 1 - I - 0x004531 01:A521: FF        .byte $FF   ; 
- D 1 - I - 0x004532 01:A522: 0B A5     .word off_FF_A50B



off_01_A524_6E:
off_FF_A524:
- D 1 - I - 0x004534 01:A524: 04        .byte $04   ; counter
- D 1 - I - 0x004535 01:A525: 01        .byte $01   ; spr_A
- D 1 - I - 0x004536 01:A526: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004539 01:A529: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00453C 01:A52C: FA        .byte $FA, $71, $EE   ; 
- D 1 - I - 0x00453F 01:A52F: 02        .byte $02, $73, $EE   ; 



off_01_A532_6F:
off_FF_A532:
- D 1 - I - 0x004542 01:A532: 04        .byte $04   ; counter
- D 1 - I - 0x004543 01:A533: 01        .byte $01   ; spr_A
- D 1 - I - 0x004544 01:A534: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004547 01:A537: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00454A 01:A53A: F8        .byte $F8, $71, $F0   ; 
- D 1 - I - 0x00454D 01:A53D: 00        .byte $00, $73, $F0   ; 



off_01_A540_70:
- D 1 - I - 0x004550 01:A540: FF        .byte $FF   ; 
- D 1 - I - 0x004551 01:A541: 24 A5     .word off_FF_A524



off_01_A543_71:
- D 1 - I - 0x004553 01:A543: FF        .byte $FF   ; 
- D 1 - I - 0x004554 01:A544: 32 A5     .word off_FF_A532
off_01_A546_72:



- D 1 - I - 0x004556 01:A546: 04        .byte $04   ; counter
- D 1 - I - 0x004557 01:A547: 01        .byte $01   ; spr_A
- D 1 - I - 0x004558 01:A548: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00455B 01:A54B: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00455E 01:A54E: FA        .byte $FA, $75, $EE   ; 
- D 1 - I - 0x004561 01:A551: 02        .byte $02, $77, $EE   ; 



off_01_A554_73:
- D 1 - I - 0x004564 01:A554: 04        .byte $04   ; counter
- D 1 - I - 0x004565 01:A555: 01        .byte $01   ; spr_A
- D 1 - I - 0x004566 01:A556: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004569 01:A559: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x00456C 01:A55C: F9        .byte $F9, $75, $F0   ; 
- D 1 - I - 0x00456F 01:A55F: 01        .byte $01, $77, $F0   ; 



off_01_A562_74:
off_01_A562_75:
off_01_A562_76:
off_01_A562_77:
off_01_A562_78:
off_01_A562_79:
off_01_A562_7A:
off_01_A562_7B:
off_01_A562_7C:
off_01_A562_7D:
off_01_A562_7E:
off_01_A562_7F:
off_01_A562_80:
off_FF_A562:
- D 1 - I - 0x004572 01:A562: 04        .byte $04   ; counter
- D 1 - I - 0x004573 01:A563: 01        .byte $01   ; spr_A
- D 1 - I - 0x004574 01:A564: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004577 01:A567: EA        .byte $EA, $6B, $F2   ; 
- D 1 - I - 0x00457A 01:A56A: F2        .byte $F2, $6D, $F2   ; 
- D 1 - I - 0x00457D 01:A56D: FA        .byte $FA, $6F, $F2   ; 



off_01_A570_81:
- D 1 - I - 0x004580 01:A570: FF        .byte $FF   ; 
- D 1 - I - 0x004581 01:A571: 62 A5     .word off_FF_A562



off_01_A573_82:
off_FF_A573:
- D 1 - I - 0x004583 01:A573: 03        .byte $03   ; counter
- D 1 - I - 0x004584 01:A574: 01        .byte $01   ; spr_A
- D 1 - I - 0x004585 01:A575: FB        .byte $FB, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004588 01:A578: F6        .byte $F6, $67, $F1   ; 
- D 1 - I - 0x00458B 01:A57B: FE        .byte $FE, $69, $F1   ; 



off_01_A57E_83:
- D 1 - I - 0x00458E 01:A57E: FF        .byte $FF   ; 
- D 1 - I - 0x00458F 01:A57F: 73 A5     .word off_FF_A573



off_01_A581_84:
- D 1 - I - 0x004591 01:A581: 81        .byte $81   ; counter
- D 1 - I - 0x004592 01:A582: 01        .byte $01   ; spr_A
- D 1 - I - 0x004593 01:A583: F9        .byte $F9, $31, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004596 01:A586: 81        .byte $81   ; 
- D 1 - I - 0x004597 01:A587: 41        .byte $41   ; 
- D 1 - I - 0x004598 01:A588: 01        .byte $01, $31, $00   ; 

- D 1 - I - 0x00459B 01:A58B: 02        .byte $02   ; 
- D 1 - I - 0x00459C 01:A58C: 01        .byte $01   ; 
- D 1 - I - 0x00459D 01:A58D: F9        .byte $F9, $79, $F0   ; 
- D 1 - I - 0x0045A0 01:A590: 01        .byte $01, $7B, $F0   ; 



off_01_A593_85:
- - - - - - 0x0045A3 01:A593: 81        .byte $81   ; counter
- - - - - - 0x0045A4 01:A594: 81        .byte $81   ; spr_A
- - - - - - 0x0045A5 01:A595: F9        .byte $F9, $31, $F1   ; spr_X, spr_T, spr_Y

- - - - - - 0x0045A8 01:A598: 81        .byte $81   ; 
- - - - - - 0x0045A9 01:A599: C1        .byte $C1   ; 
- - - - - - 0x0045AA 01:A59A: 01        .byte $01, $31, $F1   ; 

- - - - - - 0x0045AD 01:A59D: 02        .byte $02   ; 
- - - - - - 0x0045AE 01:A59E: 81        .byte $81   ; 
- - - - - - 0x0045AF 01:A59F: F9        .byte $F9, $79, $01   ; 
- - - - - - 0x0045B2 01:A5A2: 01        .byte $01, $7B, $01   ; 



off_01_A5A5_86:
- D 1 - I - 0x0045B5 01:A5A5: 04        .byte $04   ; counter
- D 1 - I - 0x0045B6 01:A5A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0045B7 01:A5A7: F9        .byte $F9, $7D, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0045BA 01:A5AA: 01        .byte $01, $7F, $EF   ; 
- D 1 - I - 0x0045BD 01:A5AD: F9        .byte $F9, $33, $FF   ; 
- D 1 - I - 0x0045C0 01:A5B0: 01        .byte $01, $35, $FF   ; 



off_01_A5B3_87:
- - - - - - 0x0045C3 01:A5B3: 04        .byte $04   ; counter
- - - - - - 0x0045C4 01:A5B4: 81        .byte $81   ; spr_A
- - - - - - 0x0045C5 01:A5B5: F9        .byte $F9, $7D, $02   ; spr_X, spr_T, spr_Y
- - - - - - 0x0045C8 01:A5B8: 01        .byte $01, $7F, $02   ; 
- - - - - - 0x0045CB 01:A5BB: F9        .byte $F9, $33, $F2   ; 
- - - - - - 0x0045CE 01:A5BE: 01        .byte $01, $35, $F2   ; 



off_01_A5C1_88:
- D 1 - I - 0x0045D1 01:A5C1: 81        .byte $81   ; counter
- D 1 - I - 0x0045D2 01:A5C2: 41        .byte $41   ; spr_A
- D 1 - I - 0x0045D3 01:A5C3: 01        .byte $01, $31, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0045D6 01:A5C6: 03        .byte $03   ; 
- D 1 - I - 0x0045D7 01:A5C7: 01        .byte $01   ; 
- D 1 - I - 0x0045D8 01:A5C8: F9        .byte $F9, $31, $00   ; 
- D 1 - I - 0x0045DB 01:A5CB: F9        .byte $F9, $71, $F1   ; 
- D 1 - I - 0x0045DE 01:A5CE: 01        .byte $01, $73, $F1   ; 



off_01_A5D1_89:
- D 1 - I - 0x0045E1 01:A5D1: 02        .byte $02   ; counter
- D 1 - I - 0x0045E2 01:A5D2: 01        .byte $01   ; spr_A
- D 1 - I - 0x0045E3 01:A5D3: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0045E6 01:A5D6: 01        .byte $01, $39, $FA   ; 



off_01_A5D9_8A:
- - - - - - 0x0045E9 01:A5D9: 81        .byte $81   ; counter
- - - - - - 0x0045EA 01:A5DA: 00        .byte $00   ; spr_A
- - - - - - 0x0045EB 01:A5DB: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0045EE 01:A5DE: 01        .byte $01   ; 
- - - - - - 0x0045EF 01:A5DF: 40        .byte $40   ; 
- - - - - - 0x0045F0 01:A5E0: 01        .byte $01, $C3, $00   ; 



off_01_A5E3_8B:
- - - - - - 0x0045F3 01:A5E3: 81        .byte $81   ; counter
- - - - - - 0x0045F4 01:A5E4: 00        .byte $00   ; spr_A
- - - - - - 0x0045F5 01:A5E5: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x0045F8 01:A5E8: 01        .byte $01   ; 
- - - - - - 0x0045F9 01:A5E9: 40        .byte $40   ; 
- - - - - - 0x0045FA 01:A5EA: 01        .byte $01, $C5, $00   ; 



off_01_A5ED_8C:
- - - - - - 0x0045FD 01:A5ED: 81        .byte $81   ; counter
- - - - - - 0x0045FE 01:A5EE: 00        .byte $00   ; spr_A
- - - - - - 0x0045FF 01:A5EF: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004602 01:A5F2: 01        .byte $01   ; 
- - - - - - 0x004603 01:A5F3: 40        .byte $40   ; 
- - - - - - 0x004604 01:A5F4: 04        .byte $04, $C5, $00   ; 



_off032_0x004607_02:
- - - - - - 0x004607 01:A5F7: 37 A7     .word off_02_A737_00
- D 1 - I - 0x004609 01:A5F9: 37 A7     .word off_02_A737_01
- D 1 - I - 0x00460B 01:A5FB: 47 A7     .word off_02_A747_02
- D 1 - I - 0x00460D 01:A5FD: 54 A7     .word off_02_A754_03
- D 1 - I - 0x00460F 01:A5FF: 64 A7     .word off_02_A764_04
- D 1 - I - 0x004611 01:A601: 71 A7     .word off_02_A771_05
- D 1 - I - 0x004613 01:A603: 81 A7     .word off_02_A781_06
- D 1 - I - 0x004615 01:A605: 8E A7     .word off_02_A78E_07
- D 1 - I - 0x004617 01:A607: 9E A7     .word off_02_A79E_08
- - - - - - 0x004619 01:A609: AB A7     .word off_02_A7AB_09
- - - - - - 0x00461B 01:A60B: AE A7     .word off_02_A7AE_0A
- - - - - - 0x00461D 01:A60D: B1 A7     .word off_02_A7B1_0B
- - - - - - 0x00461F 01:A60F: B4 A7     .word off_02_A7B4_0C
- D 1 - I - 0x004621 01:A611: B7 A7     .word off_02_A7B7_0D
- D 1 - I - 0x004623 01:A613: CA A7     .word off_02_A7CA_0E
- - - - - - 0x004625 01:A615: DA A7     .word off_02_A7DA_0F
- - - - - - 0x004627 01:A617: ED A7     .word off_02_A7ED_10
- - - - - - 0x004629 01:A619: FD A7     .word off_02_A7FD_11
- - - - - - 0x00462B 01:A61B: 00 A8     .word off_02_A800_12
- - - - - - 0x00462D 01:A61D: 03 A8     .word off_02_A803_13
- - - - - - 0x00462F 01:A61F: 06 A8     .word off_02_A806_14
- - - - - - 0x004631 01:A621: 09 A8     .word off_02_A809_15
- - - - - - 0x004633 01:A623: 19 A8     .word off_02_A819_16
- - - - - - 0x004635 01:A625: 26 A8     .word off_02_A826_17
- - - - - - 0x004637 01:A627: 33 A8     .word off_02_A833_18
- - - - - - 0x004639 01:A629: 40 A8     .word off_02_A840_19
- - - - - - 0x00463B 01:A62B: 43 A8     .word off_02_A843_1A
- - - - - - 0x00463D 01:A62D: 46 A8     .word off_02_A846_1B
- - - - - - 0x00463F 01:A62F: 49 A8     .word off_02_A849_1C
- - - - - - 0x004641 01:A631: 4C A8     .word off_02_A84C_1D
- - - - - - 0x004643 01:A633: 5E A8     .word off_02_A85E_1E
- - - - - - 0x004645 01:A635: 70 A8     .word off_02_A870_1F
- - - - - - 0x004647 01:A637: 80 A8     .word off_02_A880_20
- D 1 - I - 0x004649 01:A639: 92 A8     .word off_02_A892_21
- - - - - - 0x00464B 01:A63B: A2 A8     .word off_02_A8A2_22
- - - - - - 0x00464D 01:A63D: B2 A8     .word off_02_A8B2_23
- - - - - - 0x00464F 01:A63F: B5 A8     .word off_02_A8B5_24
- - - - - - 0x004651 01:A641: C8 A8     .word off_02_A8C8_25
- - - - - - 0x004653 01:A643: CB A8     .word off_02_A8CB_26
- - - - - - 0x004655 01:A645: DB A8     .word off_02_A8DB_27
- - - - - - 0x004657 01:A647: DE A8     .word off_02_A8DE_28
- - - - - - 0x004659 01:A649: EE A8     .word off_02_A8EE_29
- - - - - - 0x00465B 01:A64B: FE A8     .word off_02_A8FE_2A
- - - - - - 0x00465D 01:A64D: 0E A9     .word off_02_A90E_2B
- - - - - - 0x00465F 01:A64F: 11 A9     .word off_02_A911_2C
- - - - - - 0x004661 01:A651: 24 A9     .word off_02_A924_2D
- - - - - - 0x004663 01:A653: 27 A9     .word off_02_A927_2E
- - - - - - 0x004665 01:A655: 37 A9     .word off_02_A937_2F
- - - - - - 0x004667 01:A657: 3A A9     .word off_02_A93A_30
- - - - - - 0x004669 01:A659: 4A A9     .word off_02_A94A_31
- - - - - - 0x00466B 01:A65B: 5C A9     .word off_02_A95C_32
- - - - - - 0x00466D 01:A65D: 66 A9     .word off_02_A966_33
- - - - - - 0x00466F 01:A65F: 70 A9     .word off_02_A970_34
- - - - - - 0x004671 01:A661: 7A A9     .word off_02_A97A_35
- - - - - - 0x004673 01:A663: 84 A9     .word off_02_A984_36
- - - - - - 0x004675 01:A665: 98 A9     .word off_02_A998_37
- - - - - - 0x004677 01:A667: AA A9     .word off_02_A9AA_38
- - - - - - 0x004679 01:A669: BA A9     .word off_02_A9BA_39
- - - - - - 0x00467B 01:A66B: CC A9     .word off_02_A9CC_3A
- - - - - - 0x00467D 01:A66D: DC A9     .word off_02_A9DC_3B
- - - - - - 0x00467F 01:A66F: DC A9     .word off_02_A9DC_3C
- - - - - - 0x004681 01:A671: DC A9     .word off_02_A9DC_3D
- D 1 - I - 0x004683 01:A673: DC A9     .word off_02_A9DC_3E
- D 1 - I - 0x004685 01:A675: EA A9     .word off_02_A9EA_3F
- D 1 - I - 0x004687 01:A677: F5 A9     .word off_02_A9F5_40
- D 1 - I - 0x004689 01:A679: 05 AA     .word off_02_AA05_41
- D 1 - I - 0x00468B 01:A67B: 12 AA     .word off_02_AA12_42
- D 1 - I - 0x00468D 01:A67D: 20 AA     .word off_02_AA20_43
- D 1 - I - 0x00468F 01:A67F: 2B AA     .word off_02_AA2B_44
- D 1 - I - 0x004691 01:A681: 39 AA     .word off_02_AA39_45
- D 1 - I - 0x004693 01:A683: 44 AA     .word off_02_AA44_46
- D 1 - I - 0x004695 01:A685: 47 AA     .word off_02_AA47_47
- D 1 - I - 0x004697 01:A687: 4A AA     .word off_02_AA4A_48
- D 1 - I - 0x004699 01:A689: 4D AA     .word off_02_AA4D_49
- D 1 - I - 0x00469B 01:A68B: 50 AA     .word off_02_AA50_4A
- D 1 - I - 0x00469D 01:A68D: 61 AA     .word off_02_AA61_4B
- D 1 - I - 0x00469F 01:A68F: 6F AA     .word off_02_AA6F_4C
- D 1 - I - 0x0046A1 01:A691: 80 AA     .word off_02_AA80_4D
- D 1 - I - 0x0046A3 01:A693: 8E AA     .word off_02_AA8E_4E
- D 1 - I - 0x0046A5 01:A695: 91 AA     .word off_02_AA91_4F
- D 1 - I - 0x0046A7 01:A697: 94 AA     .word off_02_AA94_50
- D 1 - I - 0x0046A9 01:A699: 97 AA     .word off_02_AA97_51
- D 1 - I - 0x0046AB 01:A69B: 9A AA     .word off_02_AA9A_52
- D 1 - I - 0x0046AD 01:A69D: A8 AA     .word off_02_AAA8_53
- - - - - - 0x0046AF 01:A69F: B3 AA     .word off_02_AAB3_54
- - - - - - 0x0046B1 01:A6A1: BE AA     .word off_02_AABE_55
- D 1 - I - 0x0046B3 01:A6A3: C9 AA     .word off_02_AAC9_56
- D 1 - I - 0x0046B5 01:A6A5: CC AA     .word off_02_AACC_57
- D 1 - I - 0x0046B7 01:A6A7: CF AA     .word off_02_AACF_58
- D 1 - I - 0x0046B9 01:A6A9: D2 AA     .word off_02_AAD2_59
- D 1 - I - 0x0046BB 01:A6AB: D5 AA     .word off_02_AAD5_5A
- D 1 - I - 0x0046BD 01:A6AD: E3 AA     .word off_02_AAE3_5B
- D 1 - I - 0x0046BF 01:A6AF: F5 AA     .word off_02_AAF5_5C
- D 1 - I - 0x0046C1 01:A6B1: 05 AB     .word off_02_AB05_5D
- D 1 - I - 0x0046C3 01:A6B3: 15 AB     .word off_02_AB15_5E
- D 1 - I - 0x0046C5 01:A6B5: 23 AB     .word off_02_AB23_5F
- - - - - - 0x0046C7 01:A6B7: 31 AB     .word off_02_AB31_60
- - - - - - 0x0046C9 01:A6B9: 41 AB     .word off_02_AB41_61
- - - - - - 0x0046CB 01:A6BB: 53 AB     .word off_02_AB53_62
- - - - - - 0x0046CD 01:A6BD: 56 AB     .word off_02_AB56_63
- D 1 - I - 0x0046CF 01:A6BF: 59 AB     .word off_02_AB59_64
- D 1 - I - 0x0046D1 01:A6C1: 6C AB     .word off_02_AB6C_65
- D 1 - I - 0x0046D3 01:A6C3: 81 AB     .word off_02_AB81_66
- D 1 - I - 0x0046D5 01:A6C5: 84 AB     .word off_02_AB84_67
- - - - - - 0x0046D7 01:A6C7: 87 AB     .word off_02_AB87_68
- - - - - - 0x0046D9 01:A6C9: 95 AB     .word off_02_AB95_69
- - - - - - 0x0046DB 01:A6CB: A3 AB     .word off_02_ABA3_6A
- - - - - - 0x0046DD 01:A6CD: A6 AB     .word off_02_ABA6_6B
- D 1 - I - 0x0046DF 01:A6CF: A9 AB     .word off_02_ABA9_6C
- D 1 - I - 0x0046E1 01:A6D1: B7 AB     .word off_02_ABB7_6D
- - - - - - 0x0046E3 01:A6D3: C5 AB     .word off_02_ABC5_6E
- D 1 - I - 0x0046E5 01:A6D5: D7 AB     .word off_02_ABD7_6F
- - - - - - 0x0046E7 01:A6D7: E9 AB     .word off_02_ABE9_70
- D 1 - I - 0x0046E9 01:A6D9: F7 AB     .word off_02_ABF7_71
- - - - - - 0x0046EB 01:A6DB: 05 AC     .word off_02_AC05_72
- - - - - - 0x0046ED 01:A6DD: 17 AC     .word off_02_AC17_73
- - - - - - 0x0046EF 01:A6DF: 1F AC     .word off_02_AC1F_74
- - - - - - 0x0046F1 01:A6E1: 29 AC     .word off_02_AC29_75
- - - - - - 0x0046F3 01:A6E3: 33 AC     .word off_02_AC33_76
- - - - - - 0x0046F5 01:A6E5: 3D AC     .word off_02_AC3D_77
- D 1 - I - 0x0046F7 01:A6E7: 51 AC     .word off_02_AC51_78
- D 1 - I - 0x0046F9 01:A6E9: 5F AC     .word off_02_AC5F_79
- D 1 - I - 0x0046FB 01:A6EB: 6A AC     .word off_02_AC6A_7A
- D 1 - I - 0x0046FD 01:A6ED: 7A AC     .word off_02_AC7A_7B
- D 1 - I - 0x0046FF 01:A6EF: 87 AC     .word off_02_AC87_7C
- D 1 - I - 0x004701 01:A6F1: 97 AC     .word off_02_AC97_7D
- D 1 - I - 0x004703 01:A6F3: A4 AC     .word off_02_ACA4_7E
- - - - - - 0x004705 01:A6F5: B4 AC     .word off_02_ACB4_7F
- D 1 - I - 0x004707 01:A6F7: C1 AC     .word off_02_ACC1_80
- D 1 - I - 0x004709 01:A6F9: C4 AC     .word off_02_ACC4_81
- - - - - - 0x00470B 01:A6FB: C7 AC     .word off_02_ACC7_82
- - - - - - 0x00470D 01:A6FD: CA AC     .word off_02_ACCA_83
- D 1 - I - 0x00470F 01:A6FF: CD AC     .word off_02_ACCD_84
- D 1 - I - 0x004711 01:A701: DD AC     .word off_02_ACDD_85
- D 1 - I - 0x004713 01:A703: EA AC     .word off_02_ACEA_86
- D 1 - I - 0x004715 01:A705: FA AC     .word off_02_ACFA_87
- D 1 - I - 0x004717 01:A707: 07 AD     .word off_02_AD07_88
- D 1 - I - 0x004719 01:A709: 0A AD     .word off_02_AD0A_89
- D 1 - I - 0x00471B 01:A70B: 0D AD     .word off_02_AD0D_8A
- D 1 - I - 0x00471D 01:A70D: 10 AD     .word off_02_AD10_8B
- D 1 - I - 0x00471F 01:A70F: 13 AD     .word off_02_AD13_8C
- D 1 - I - 0x004721 01:A711: 23 AD     .word off_02_AD23_8D
- - - - - - 0x004723 01:A713: 30 AD     .word off_02_AD30_8E
- - - - - - 0x004725 01:A715: 3D AD     .word off_02_AD3D_8F
- D 1 - I - 0x004727 01:A717: 4A AD     .word off_02_AD4A_90
- D 1 - I - 0x004729 01:A719: 4D AD     .word off_02_AD4D_91
- D 1 - I - 0x00472B 01:A71B: 50 AD     .word off_02_AD50_92
- D 1 - I - 0x00472D 01:A71D: 53 AD     .word off_02_AD53_93
- D 1 - I - 0x00472F 01:A71F: 56 AD     .word off_02_AD56_94
- D 1 - I - 0x004731 01:A721: 64 AD     .word off_02_AD64_95
- D 1 - I - 0x004733 01:A723: 76 AD     .word off_02_AD76_96
- D 1 - I - 0x004735 01:A725: 86 AD     .word off_02_AD86_97
- - - - - - 0x004737 01:A727: 96 AD     .word off_02_AD96_98
- D 1 - I - 0x004739 01:A729: A4 AD     .word off_02_ADA4_99
- D 1 - I - 0x00473B 01:A72B: A7 AD     .word off_02_ADA7_9A
- - - - - - 0x00473D 01:A72D: B7 AD     .word off_02_ADB7_9B
- D 1 - I - 0x00473F 01:A72F: BA AD     .word off_02_ADBA_9C
- D 1 - I - 0x004741 01:A731: C8 AD     .word off_02_ADC8_9D
- D 1 - I - 0x004743 01:A733: CB AD     .word off_02_ADCB_9E
- D 1 - I - 0x004745 01:A735: DB AD     .word off_02_ADDB_9F



off_02_A737_00:
off_02_A737_01:
- D 1 - I - 0x004747 01:A737: 82        .byte $82   ; counter
- D 1 - I - 0x004748 01:A738: 01        .byte $01   ; spr_A
- D 1 - I - 0x004749 01:A739: FC        .byte $FC, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00474C 01:A73C: 04        .byte $04, $03, $00   ; 

- D 1 - I - 0x00474F 01:A73F: 02        .byte $02   ; 
- D 1 - I - 0x004750 01:A740: 00        .byte $00   ; 
- D 1 - I - 0x004751 01:A741: FA        .byte $FA, $63, $F0   ; 
- D 1 - I - 0x004754 01:A744: 02        .byte $02, $65, $F0   ; 



off_02_A747_02:
- D 1 - I - 0x004757 01:A747: 81        .byte $81   ; counter
- D 1 - I - 0x004758 01:A748: 01        .byte $01   ; spr_A
- D 1 - I - 0x004759 01:A749: FF        .byte $FF, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00475C 01:A74C: 02        .byte $02   ; 
- D 1 - I - 0x00475D 01:A74D: 00        .byte $00   ; 
- D 1 - I - 0x00475E 01:A74E: FA        .byte $FA, $63, $F1   ; 
- D 1 - I - 0x004761 01:A751: 02        .byte $02, $65, $F1   ; 



off_02_A754_03:
- D 1 - I - 0x004764 01:A754: 82        .byte $82   ; counter
- D 1 - I - 0x004765 01:A755: 41        .byte $41   ; spr_A
- D 1 - I - 0x004766 01:A756: 04        .byte $04, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004769 01:A759: FC        .byte $FC, $03, $00   ; 

- D 1 - I - 0x00476C 01:A75C: 02        .byte $02   ; 
- D 1 - I - 0x00476D 01:A75D: 00        .byte $00   ; 
- D 1 - I - 0x00476E 01:A75E: FC        .byte $FC, $63, $F0   ; 
- D 1 - I - 0x004771 01:A761: 04        .byte $04, $65, $F0   ; 



off_02_A764_04:
- D 1 - I - 0x004774 01:A764: 81        .byte $81   ; counter
- D 1 - I - 0x004775 01:A765: 41        .byte $41   ; spr_A
- D 1 - I - 0x004776 01:A766: 01        .byte $01, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004779 01:A769: 02        .byte $02   ; 
- D 1 - I - 0x00477A 01:A76A: 00        .byte $00   ; 
- D 1 - I - 0x00477B 01:A76B: FC        .byte $FC, $63, $F1   ; 
- D 1 - I - 0x00477E 01:A76E: 04        .byte $04, $65, $F1   ; 



off_02_A771_05:
off_FF_A771:
- D 1 - I - 0x004781 01:A771: 82        .byte $82   ; counter
- D 1 - I - 0x004782 01:A772: 01        .byte $01   ; spr_A
- D 1 - I - 0x004783 01:A773: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004786 01:A776: 02        .byte $02, $09, $FF   ; 

- D 1 - I - 0x004789 01:A779: 02        .byte $02   ; 
- D 1 - I - 0x00478A 01:A77A: 00        .byte $00   ; 
- D 1 - I - 0x00478B 01:A77B: F9        .byte $F9, $67, $EF   ; 
- D 1 - I - 0x00478E 01:A77E: 01        .byte $01, $69, $EF   ; 



off_02_A781_06:
off_FF_A781:
- D 1 - I - 0x004791 01:A781: 82        .byte $82   ; counter
- D 1 - I - 0x004792 01:A782: 00        .byte $00   ; spr_A
- D 1 - I - 0x004793 01:A783: F8        .byte $F8, $67, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004796 01:A786: 00        .byte $00, $69, $F1   ; 

- D 1 - I - 0x004799 01:A789: 01        .byte $01   ; 
- D 1 - I - 0x00479A 01:A78A: 01        .byte $01   ; 
- D 1 - I - 0x00479B 01:A78B: FD        .byte $FD, $0B, $00   ; 



off_02_A78E_07:
off_FF_A78E:
- D 1 - I - 0x00479E 01:A78E: 82        .byte $82   ; counter
- D 1 - I - 0x00479F 01:A78F: 01        .byte $01   ; spr_A
- D 1 - I - 0x0047A0 01:A790: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0047A3 01:A793: 00        .byte $00, $0F, $FF   ; 

- D 1 - I - 0x0047A6 01:A796: 02        .byte $02   ; 
- D 1 - I - 0x0047A7 01:A797: 00        .byte $00   ; 
- D 1 - I - 0x0047A8 01:A798: F4        .byte $F4, $67, $EF   ; 
- D 1 - I - 0x0047AB 01:A79B: FC        .byte $FC, $69, $EF   ; 



off_02_A79E_08:
off_FF_A79E:
- D 1 - I - 0x0047AE 01:A79E: 82        .byte $82   ; counter
- D 1 - I - 0x0047AF 01:A79F: 00        .byte $00   ; spr_A
- D 1 - I - 0x0047B0 01:A7A0: F6        .byte $F6, $67, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0047B3 01:A7A3: FE        .byte $FE, $69, $F1   ; 

- D 1 - I - 0x0047B6 01:A7A6: 01        .byte $01   ; 
- D 1 - I - 0x0047B7 01:A7A7: 01        .byte $01   ; 
- D 1 - I - 0x0047B8 01:A7A8: FB        .byte $FB, $0B, $00   ; 



off_02_A7AB_09:
- - - - - - 0x0047BB 01:A7AB: FF        .byte $FF   ; 
- - - - - - 0x0047BC 01:A7AC: 71 A7     .word off_FF_A771



off_02_A7AE_0A:
- - - - - - 0x0047BE 01:A7AE: FF        .byte $FF   ; 
- - - - - - 0x0047BF 01:A7AF: 81 A7     .word off_FF_A781



off_02_A7B1_0B:
- - - - - - 0x0047C1 01:A7B1: FF        .byte $FF   ; 
- - - - - - 0x0047C2 01:A7B2: 8E A7     .word off_FF_A78E



off_02_A7B4_0C:
- - - - - - 0x0047C4 01:A7B4: FF        .byte $FF   ; 
- - - - - - 0x0047C5 01:A7B5: 9E A7     .word off_FF_A79E



off_02_A7B7_0D:
off_FF_A7B7:
- D 1 - I - 0x0047C7 01:A7B7: 82        .byte $82   ; counter
- D 1 - I - 0x0047C8 01:A7B8: 01        .byte $01   ; spr_A
- D 1 - I - 0x0047C9 01:A7B9: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0047CC 01:A7BC: FE        .byte $FE, $13, $00   ; 

- D 1 - I - 0x0047CF 01:A7BF: 03        .byte $03   ; 
- D 1 - I - 0x0047D0 01:A7C0: 00        .byte $00   ; 
- D 1 - I - 0x0047D1 01:A7C1: F0        .byte $F0, $6B, $F0   ; 
- D 1 - I - 0x0047D4 01:A7C4: F8        .byte $F8, $6D, $F0   ; 
- D 1 - I - 0x0047D7 01:A7C7: 00        .byte $00, $6F, $F0   ; 



off_02_A7CA_0E:
off_FF_A7CA:
- D 1 - I - 0x0047DA 01:A7CA: 81        .byte $81   ; counter
- D 1 - I - 0x0047DB 01:A7CB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0047DC 01:A7CC: FC        .byte $FC, $15, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0047DF 01:A7CF: 03        .byte $03   ; 
- D 1 - I - 0x0047E0 01:A7D0: 00        .byte $00   ; 
- D 1 - I - 0x0047E1 01:A7D1: F0        .byte $F0, $6B, $F2   ; 
- D 1 - I - 0x0047E4 01:A7D4: F8        .byte $F8, $6D, $F2   ; 
- D 1 - I - 0x0047E7 01:A7D7: 00        .byte $00, $6F, $F2   ; 



off_02_A7DA_0F:
off_FF_A7DA:
- - - - - - 0x0047EA 01:A7DA: 82        .byte $82   ; counter
- - - - - - 0x0047EB 01:A7DB: 01        .byte $01   ; spr_A
- - - - - - 0x0047EC 01:A7DC: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- - - - - - 0x0047EF 01:A7DF: FE        .byte $FE, $19, $00   ; 

- - - - - - 0x0047F2 01:A7E2: 03        .byte $03   ; 
- - - - - - 0x0047F3 01:A7E3: 00        .byte $00   ; 
- - - - - - 0x0047F4 01:A7E4: EE        .byte $EE, $6B, $F0   ; 
- - - - - - 0x0047F7 01:A7E7: F6        .byte $F6, $6D, $F0   ; 
- - - - - - 0x0047FA 01:A7EA: FE        .byte $FE, $6F, $F0   ; 



off_02_A7ED_10:
off_FF_A7ED:
- - - - - - 0x0047FD 01:A7ED: 81        .byte $81   ; counter
- - - - - - 0x0047FE 01:A7EE: 01        .byte $01   ; spr_A
- - - - - - 0x0047FF 01:A7EF: FA        .byte $FA, $15, $01   ; spr_X, spr_T, spr_Y

- - - - - - 0x004802 01:A7F2: 03        .byte $03   ; 
- - - - - - 0x004803 01:A7F3: 00        .byte $00   ; 
- - - - - - 0x004804 01:A7F4: EE        .byte $EE, $6B, $F2   ; 
- - - - - - 0x004807 01:A7F7: F6        .byte $F6, $6D, $F2   ; 
- - - - - - 0x00480A 01:A7FA: FE        .byte $FE, $6F, $F2   ; 



off_02_A7FD_11:
- - - - - - 0x00480D 01:A7FD: FF        .byte $FF   ; 
- - - - - - 0x00480E 01:A7FE: B7 A7     .word off_FF_A7B7



off_02_A800_12:
- - - - - - 0x004810 01:A800: FF        .byte $FF   ; 
- - - - - - 0x004811 01:A801: CA A7     .word off_FF_A7CA



off_02_A803_13:
- - - - - - 0x004813 01:A803: FF        .byte $FF   ; 
- - - - - - 0x004814 01:A804: DA A7     .word off_FF_A7DA



off_02_A806_14:
- - - - - - 0x004816 01:A806: FF        .byte $FF   ; 
- - - - - - 0x004817 01:A807: ED A7     .word off_FF_A7ED



off_02_A809_15:
off_FF_A809:
- - - - - - 0x004819 01:A809: 82        .byte $82   ; counter
- - - - - - 0x00481A 01:A80A: 01        .byte $01   ; spr_A
- - - - - - 0x00481B 01:A80B: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- - - - - - 0x00481E 01:A80E: 03        .byte $03, $1D, $00   ; 

- - - - - - 0x004821 01:A811: 02        .byte $02   ; 
- - - - - - 0x004822 01:A812: 00        .byte $00   ; 
- - - - - - 0x004823 01:A813: F9        .byte $F9, $71, $F0   ; 
- - - - - - 0x004826 01:A816: 01        .byte $01, $73, $F0   ; 



off_02_A819_16:
off_FF_A819:
- - - - - - 0x004829 01:A819: 81        .byte $81   ; counter
- - - - - - 0x00482A 01:A81A: 01        .byte $01   ; spr_A
- - - - - - 0x00482B 01:A81B: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y

- - - - - - 0x00482E 01:A81E: 02        .byte $02   ; 
- - - - - - 0x00482F 01:A81F: 00        .byte $00   ; 
- - - - - - 0x004830 01:A820: F9        .byte $F9, $71, $F2   ; 
- - - - - - 0x004833 01:A823: 01        .byte $01, $73, $F2   ; 



off_02_A826_17:
off_FF_A826:
- - - - - - 0x004836 01:A826: 81        .byte $81   ; counter
- - - - - - 0x004837 01:A827: 01        .byte $01   ; spr_A
- - - - - - 0x004838 01:A828: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00483B 01:A82B: 02        .byte $02   ; 
- - - - - - 0x00483C 01:A82C: 00        .byte $00   ; 
- - - - - - 0x00483D 01:A82D: FB        .byte $FB, $71, $F0   ; 
- - - - - - 0x004840 01:A830: 03        .byte $03, $73, $F0   ; 



off_02_A833_18:
off_FF_A833:
- - - - - - 0x004843 01:A833: 82        .byte $82   ; counter
- - - - - - 0x004844 01:A834: 00        .byte $00   ; spr_A
- - - - - - 0x004845 01:A835: FB        .byte $FB, $71, $F2   ; spr_X, spr_T, spr_Y
- - - - - - 0x004848 01:A838: 03        .byte $03, $73, $F2   ; 

- - - - - - 0x00484B 01:A83B: 01        .byte $01   ; 
- - - - - - 0x00484C 01:A83C: 01        .byte $01   ; 
- - - - - - 0x00484D 01:A83D: 00        .byte $00, $1F, $01   ; 



off_02_A840_19:
- - - - - - 0x004850 01:A840: FF        .byte $FF   ; 
- - - - - - 0x004851 01:A841: 09 A8     .word off_FF_A809



off_02_A843_1A:
- - - - - - 0x004853 01:A843: FF        .byte $FF   ; 
- - - - - - 0x004854 01:A844: 19 A8     .word off_FF_A819



off_02_A846_1B:
- - - - - - 0x004856 01:A846: FF        .byte $FF   ; 
- - - - - - 0x004857 01:A847: 26 A8     .word off_FF_A826



off_02_A849_1C:
- - - - - - 0x004859 01:A849: FF        .byte $FF   ; 
- - - - - - 0x00485A 01:A84A: 33 A8     .word off_FF_A833



off_02_A84C_1D:
- - - - - - 0x00485C 01:A84C: 81        .byte $81   ; counter
- - - - - - 0x00485D 01:A84D: 01        .byte $01   ; spr_A
- - - - - - 0x00485E 01:A84E: 03        .byte $03, $25, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004861 01:A851: 82        .byte $82   ; 
- - - - - - 0x004862 01:A852: 00        .byte $00   ; 
- - - - - - 0x004863 01:A853: FA        .byte $FA, $75, $F0   ; 
- - - - - - 0x004866 01:A856: 02        .byte $02, $77, $F0   ; 

- - - - - - 0x004869 01:A859: 01        .byte $01   ; 
- - - - - - 0x00486A 01:A85A: 01        .byte $01   ; 
- - - - - - 0x00486B 01:A85B: FB        .byte $FB, $23, $00   ; 



off_02_A85E_1E:
- - - - - - 0x00486E 01:A85E: 81        .byte $81   ; counter
- - - - - - 0x00486F 01:A85F: 41        .byte $41   ; spr_A
- - - - - - 0x004870 01:A860: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004873 01:A863: 82        .byte $82   ; 
- - - - - - 0x004874 01:A864: 00        .byte $00   ; 
- - - - - - 0x004875 01:A865: FA        .byte $FA, $75, $F2   ; 
- - - - - - 0x004878 01:A868: 02        .byte $02, $77, $F2   ; 

- - - - - - 0x00487B 01:A86B: 01        .byte $01   ; 
- - - - - - 0x00487C 01:A86C: 01        .byte $01   ; 
- - - - - - 0x00487D 01:A86D: FB        .byte $FB, $27, $00   ; 



off_02_A870_1F:
- - - - - - 0x004880 01:A870: 82        .byte $82   ; counter
- - - - - - 0x004881 01:A871: 41        .byte $41   ; spr_A
- - - - - - 0x004882 01:A872: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- - - - - - 0x004885 01:A875: FB        .byte $FB, $25, $00   ; 

- - - - - - 0x004888 01:A878: 02        .byte $02   ; 
- - - - - - 0x004889 01:A879: 00        .byte $00   ; 
- - - - - - 0x00488A 01:A87A: FC        .byte $FC, $75, $F0   ; 
- - - - - - 0x00488D 01:A87D: 04        .byte $04, $77, $F0   ; 



off_02_A880_20:
- - - - - - 0x004890 01:A880: 81        .byte $81   ; counter
- - - - - - 0x004891 01:A881: 01        .byte $01   ; spr_A
- - - - - - 0x004892 01:A882: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004895 01:A885: 82        .byte $82   ; 
- - - - - - 0x004896 01:A886: 00        .byte $00   ; 
- - - - - - 0x004897 01:A887: FC        .byte $FC, $75, $F2   ; 
- - - - - - 0x00489A 01:A88A: 04        .byte $04, $77, $F2   ; 

- - - - - - 0x00489D 01:A88D: 01        .byte $01   ; 
- - - - - - 0x00489E 01:A88E: 41        .byte $41   ; 
- - - - - - 0x00489F 01:A88F: 03        .byte $03, $27, $00   ; 



off_02_A892_21:
- D 1 - I - 0x0048A2 01:A892: 82        .byte $82   ; counter
- D 1 - I - 0x0048A3 01:A893: 00        .byte $00   ; spr_A
- D 1 - I - 0x0048A4 01:A894: F9        .byte $F9, $63, $EF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0048A7 01:A897: 01        .byte $01, $65, $EF   ; 

- D 1 - I - 0x0048AA 01:A89A: 02        .byte $02   ; 
- D 1 - I - 0x0048AB 01:A89B: 01        .byte $01   ; 
- D 1 - I - 0x0048AC 01:A89C: FB        .byte $FB, $29, $FF   ; 
- D 1 - I - 0x0048AF 01:A89F: 03        .byte $03, $2B, $FF   ; 



off_02_A8A2_22:
off_FF_A8A2:
- - - - - - 0x0048B2 01:A8A2: 82        .byte $82   ; counter
- - - - - - 0x0048B3 01:A8A3: 41        .byte $41   ; spr_A
- - - - - - 0x0048B4 01:A8A4: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048B7 01:A8A7: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x0048BA 01:A8AA: 02        .byte $02   ; 
- - - - - - 0x0048BB 01:A8AB: 00        .byte $00   ; 
- - - - - - 0x0048BC 01:A8AC: F6        .byte $F6, $67, $EF   ; 
- - - - - - 0x0048BF 01:A8AF: FE        .byte $FE, $69, $EF   ; 



off_02_A8B2_23:
- - - - - - 0x0048C2 01:A8B2: FF        .byte $FF   ; 
- - - - - - 0x0048C3 01:A8B3: A2 A8     .word off_FF_A8A2



off_02_A8B5_24:
off_FF_A8B5:
- - - - - - 0x0048C5 01:A8B5: 82        .byte $82   ; counter
- - - - - - 0x0048C6 01:A8B6: 41        .byte $41   ; spr_A
- - - - - - 0x0048C7 01:A8B7: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048CA 01:A8BA: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x0048CD 01:A8BD: 03        .byte $03   ; 
- - - - - - 0x0048CE 01:A8BE: 00        .byte $00   ; 
- - - - - - 0x0048CF 01:A8BF: EE        .byte $EE, $6B, $F0   ; 
- - - - - - 0x0048D2 01:A8C2: F6        .byte $F6, $6D, $F0   ; 
- - - - - - 0x0048D5 01:A8C5: FE        .byte $FE, $6F, $F0   ; 



off_02_A8C8_25:
- - - - - - 0x0048D8 01:A8C8: FF        .byte $FF   ; 
- - - - - - 0x0048D9 01:A8C9: B5 A8     .word off_FF_A8B5



off_02_A8CB_26:
off_FF_A8CB:
- - - - - - 0x0048DB 01:A8CB: 82        .byte $82   ; counter
- - - - - - 0x0048DC 01:A8CC: 01        .byte $01   ; spr_A
- - - - - - 0x0048DD 01:A8CD: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048E0 01:A8D0: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x0048E3 01:A8D3: 02        .byte $02   ; 
- - - - - - 0x0048E4 01:A8D4: 00        .byte $00   ; 
- - - - - - 0x0048E5 01:A8D5: F9        .byte $F9, $71, $EF   ; 
- - - - - - 0x0048E8 01:A8D8: 01        .byte $01, $73, $EF   ; 



off_02_A8DB_27:
- - - - - - 0x0048EB 01:A8DB: FF        .byte $FF   ; 
- - - - - - 0x0048EC 01:A8DC: CB A8     .word off_FF_A8CB



off_02_A8DE_28:
- - - - - - 0x0048EE 01:A8DE: 82        .byte $82   ; counter
- - - - - - 0x0048EF 01:A8DF: 01        .byte $01   ; spr_A
- - - - - - 0x0048F0 01:A8E0: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x0048F3 01:A8E3: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x0048F6 01:A8E6: 02        .byte $02   ; 
- - - - - - 0x0048F7 01:A8E7: 00        .byte $00   ; 
- - - - - - 0x0048F8 01:A8E8: FA        .byte $FA, $75, $EE   ; 
- - - - - - 0x0048FB 01:A8EB: 02        .byte $02, $77, $EE   ; 



off_02_A8EE_29:
- - - - - - 0x0048FE 01:A8EE: 82        .byte $82   ; counter
- - - - - - 0x0048FF 01:A8EF: 00        .byte $00   ; spr_A
- - - - - - 0x004900 01:A8F0: F8        .byte $F8, $63, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x004903 01:A8F3: 00        .byte $00, $65, $F0   ; 

- - - - - - 0x004906 01:A8F6: 02        .byte $02   ; 
- - - - - - 0x004907 01:A8F7: 01        .byte $01   ; 
- - - - - - 0x004908 01:A8F8: FB        .byte $FB, $29, $FF   ; 
- - - - - - 0x00490B 01:A8FB: 03        .byte $03, $2B, $FF   ; 



off_02_A8FE_2A:
off_FF_A8FE:
- - - - - - 0x00490E 01:A8FE: 82        .byte $82   ; counter
- - - - - - 0x00490F 01:A8FF: 41        .byte $41   ; spr_A
- - - - - - 0x004910 01:A900: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004913 01:A903: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004916 01:A906: 02        .byte $02   ; 
- - - - - - 0x004917 01:A907: 00        .byte $00   ; 
- - - - - - 0x004918 01:A908: F8        .byte $F8, $67, $F1   ; 
- - - - - - 0x00491B 01:A90B: 00        .byte $00, $69, $F1   ; 



off_02_A90E_2B:
- - - - - - 0x00491E 01:A90E: FF        .byte $FF   ; 
- - - - - - 0x00491F 01:A90F: FE A8     .word off_FF_A8FE



off_02_A911_2C:
off_FF_A911:
- - - - - - 0x004921 01:A911: 82        .byte $82   ; counter
- - - - - - 0x004922 01:A912: 41        .byte $41   ; spr_A
- - - - - - 0x004923 01:A913: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004926 01:A916: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004929 01:A919: 03        .byte $03   ; 
- - - - - - 0x00492A 01:A91A: 00        .byte $00   ; 
- - - - - - 0x00492B 01:A91B: F1        .byte $F1, $6B, $F0   ; 
- - - - - - 0x00492E 01:A91E: F9        .byte $F9, $6D, $F0   ; 
- - - - - - 0x004931 01:A921: 01        .byte $01, $6F, $F0   ; 



off_02_A924_2D:
- - - - - - 0x004934 01:A924: FF        .byte $FF   ; 
- - - - - - 0x004935 01:A925: 11 A9     .word off_FF_A911



off_02_A927_2E:
off_FF_A927:
- - - - - - 0x004937 01:A927: 82        .byte $82   ; counter
- - - - - - 0x004938 01:A928: 01        .byte $01   ; spr_A
- - - - - - 0x004939 01:A929: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x00493C 01:A92C: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x00493F 01:A92F: 02        .byte $02   ; 
- - - - - - 0x004940 01:A930: 00        .byte $00   ; 
- - - - - - 0x004941 01:A931: F9        .byte $F9, $71, $EF   ; 
- - - - - - 0x004944 01:A934: 01        .byte $01, $73, $EF   ; 



off_02_A937_2F:
- - - - - - 0x004947 01:A937: FF        .byte $FF   ; 
- - - - - - 0x004948 01:A938: 27 A9     .word off_FF_A927



off_02_A93A_30:
- - - - - - 0x00494A 01:A93A: 82        .byte $82   ; counter
- - - - - - 0x00494B 01:A93B: 01        .byte $01   ; spr_A
- - - - - - 0x00494C 01:A93C: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x00494F 01:A93F: 02        .byte $02, $2F, $FE   ; 

- - - - - - 0x004952 01:A942: 02        .byte $02   ; 
- - - - - - 0x004953 01:A943: 00        .byte $00   ; 
- - - - - - 0x004954 01:A944: FB        .byte $FB, $75, $F0   ; 
- - - - - - 0x004957 01:A947: 03        .byte $03, $77, $F0   ; 



off_02_A94A_31:
- - - - - - 0x00495A 01:A94A: 82        .byte $82   ; counter
- - - - - - 0x00495B 01:A94B: 00        .byte $00   ; spr_A
- - - - - - 0x00495C 01:A94C: F9        .byte $F9, $71, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x00495F 01:A94F: 01        .byte $01, $73, $F0   ; 

- - - - - - 0x004962 01:A952: 81        .byte $81   ; 
- - - - - - 0x004963 01:A953: 01        .byte $01   ; 
- - - - - - 0x004964 01:A954: F9        .byte $F9, $31, $00   ; 

- - - - - - 0x004967 01:A957: 01        .byte $01   ; 
- - - - - - 0x004968 01:A958: 41        .byte $41   ; 
- - - - - - 0x004969 01:A959: 01        .byte $01, $31, $00   ; 



off_02_A95C_32:
- - - - - - 0x00496C 01:A95C: 81        .byte $81   ; counter
- - - - - - 0x00496D 01:A95D: 00        .byte $00   ; spr_A
- - - - - - 0x00496E 01:A95E: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y

- - - - - - 0x004971 01:A961: 01        .byte $01   ; 
- - - - - - 0x004972 01:A962: 01        .byte $01   ; 
- - - - - - 0x004973 01:A963: 01        .byte $01, $39, $FA   ; 



off_02_A966_33:
- - - - - - 0x004976 01:A966: 81        .byte $81   ; counter
- - - - - - 0x004977 01:A967: 00        .byte $00   ; spr_A
- - - - - - 0x004978 01:A968: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00497B 01:A96B: 01        .byte $01   ; 
- - - - - - 0x00497C 01:A96C: 40        .byte $40   ; 
- - - - - - 0x00497D 01:A96D: 01        .byte $01, $C3, $00   ; 



off_02_A970_34:
- - - - - - 0x004980 01:A970: 81        .byte $81   ; counter
- - - - - - 0x004981 01:A971: 00        .byte $00   ; spr_A
- - - - - - 0x004982 01:A972: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004985 01:A975: 01        .byte $01   ; 
- - - - - - 0x004986 01:A976: 40        .byte $40   ; 
- - - - - - 0x004987 01:A977: 01        .byte $01, $C5, $00   ; 



off_02_A97A_35:
- - - - - - 0x00498A 01:A97A: 81        .byte $81   ; counter
- - - - - - 0x00498B 01:A97B: 00        .byte $00   ; spr_A
- - - - - - 0x00498C 01:A97C: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x00498F 01:A97F: 01        .byte $01   ; 
- - - - - - 0x004990 01:A980: 40        .byte $40   ; 
- - - - - - 0x004991 01:A981: 04        .byte $04, $C5, $00   ; 



off_02_A984_36:
- - - - - - 0x004994 01:A984: 81        .byte $81   ; counter
- - - - - - 0x004995 01:A985: 00        .byte $00   ; spr_A
- - - - - - 0x004996 01:A986: F5        .byte $F5, $C9, $F8   ; spr_X, spr_T, spr_Y

- - - - - - 0x004999 01:A989: 81        .byte $81   ; 
- - - - - - 0x00499A 01:A98A: 80        .byte $80   ; 
- - - - - - 0x00499B 01:A98B: F5        .byte $F5, $C9, $08   ; 

- - - - - - 0x00499E 01:A98E: 81        .byte $81   ; 
- - - - - - 0x00499F 01:A98F: 40        .byte $40   ; 
- - - - - - 0x0049A0 01:A990: 05        .byte $05, $C9, $F8   ; 

- - - - - - 0x0049A3 01:A993: 01        .byte $01   ; 
- - - - - - 0x0049A4 01:A994: C0        .byte $C0   ; 
- - - - - - 0x0049A5 01:A995: 05        .byte $05, $C9, $08   ; 



off_02_A998_37:
- - - - - - 0x0049A8 01:A998: 82        .byte $82   ; counter
- - - - - - 0x0049A9 01:A999: 00        .byte $00   ; spr_A
- - - - - - 0x0049AA 01:A99A: F9        .byte $F9, $79, $F0   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049AD 01:A99D: 01        .byte $01, $7B, $F0   ; 

- - - - - - 0x0049B0 01:A9A0: 81        .byte $81   ; 
- - - - - - 0x0049B1 01:A9A1: 01        .byte $01   ; 
- - - - - - 0x0049B2 01:A9A2: F9        .byte $F9, $31, $00   ; 



- - - - - - 0x0049B5 01:A9A5: 01        .byte $01   ; 
- - - - - - 0x0049B6 01:A9A6: 41        .byte $41   ; 
- - - - - - 0x0049B7 01:A9A7: 01        .byte $01, $31, $00   ; 



off_02_A9AA_38:
- - - - - - 0x0049BA 01:A9AA: 82        .byte $82   ; counter
- - - - - - 0x0049BB 01:A9AB: 00        .byte $00   ; spr_A
- - - - - - 0x0049BC 01:A9AC: F9        .byte $F9, $7D, $EF   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049BF 01:A9AF: 01        .byte $01, $7F, $EF   ; 

- - - - - - 0x0049C2 01:A9B2: 02        .byte $02   ; 
- - - - - - 0x0049C3 01:A9B3: 01        .byte $01   ; 
- - - - - - 0x0049C4 01:A9B4: F9        .byte $F9, $33, $FF   ; 
- - - - - - 0x0049C7 01:A9B7: 01        .byte $01, $35, $FF   ; 



off_02_A9BA_39:
- - - - - - 0x0049CA 01:A9BA: 82        .byte $82   ; counter
- - - - - - 0x0049CB 01:A9BB: 80        .byte $80   ; spr_A
- - - - - - 0x0049CC 01:A9BC: F9        .byte $F9, $79, $01   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049CF 01:A9BF: 01        .byte $01, $7B, $01   ; 

- - - - - - 0x0049D2 01:A9C2: 81        .byte $81   ; 
- - - - - - 0x0049D3 01:A9C3: 81        .byte $81   ; 
- - - - - - 0x0049D4 01:A9C4: F9        .byte $F9, $31, $F1   ; 



- - - - - - 0x0049D7 01:A9C7: 01        .byte $01   ; 
- - - - - - 0x0049D8 01:A9C8: C1        .byte $C1   ; 
- - - - - - 0x0049D9 01:A9C9: 01        .byte $01, $31, $F1   ; 



off_02_A9CC_3A:
- - - - - - 0x0049DC 01:A9CC: 82        .byte $82   ; counter
- - - - - - 0x0049DD 01:A9CD: 80        .byte $80   ; spr_A
- - - - - - 0x0049DE 01:A9CE: F9        .byte $F9, $7D, $02   ; spr_X, spr_T, spr_Y
- - - - - - 0x0049E1 01:A9D1: 01        .byte $01, $7F, $02   ; 

- - - - - - 0x0049E4 01:A9D4: 02        .byte $02   ; 
- - - - - - 0x0049E5 01:A9D5: 81        .byte $81   ; 
- - - - - - 0x0049E6 01:A9D6: F9        .byte $F9, $33, $F2   ; 
- - - - - - 0x0049E9 01:A9D9: 01        .byte $01, $35, $F2   ; 



off_02_A9DC_3B:
off_02_A9DC_3C:
off_02_A9DC_3D:
off_02_A9DC_3E:
- D 1 - I - 0x0049EC 01:A9DC: 04        .byte $04   ; counter
- D 1 - I - 0x0049ED 01:A9DD: 00        .byte $00   ; spr_A
- D 1 - I - 0x0049EE 01:A9DE: 04        .byte $04, $03, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0049F1 01:A9E1: FC        .byte $FC, $59, $F0   ; 
- D 1 - I - 0x0049F4 01:A9E4: 04        .byte $04, $5B, $F0   ; 
- D 1 - I - 0x0049F7 01:A9E7: FC        .byte $FC, $01, $00   ; 



off_02_A9EA_3F:
- D 1 - I - 0x0049FA 01:A9EA: 03        .byte $03   ; counter
- D 1 - I - 0x0049FB 01:A9EB: 00        .byte $00   ; spr_A
- D 1 - I - 0x0049FC 01:A9EC: FF        .byte $FF, $05, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0049FF 01:A9EF: FC        .byte $FC, $59, $F2   ; 
- D 1 - I - 0x004A02 01:A9F2: 04        .byte $04, $5B, $F2   ; 



off_02_A9F5_40:
- D 1 - I - 0x004A05 01:A9F5: 82        .byte $82   ; counter
- D 1 - I - 0x004A06 01:A9F6: 40        .byte $40   ; spr_A
- D 1 - I - 0x004A07 01:A9F7: 04        .byte $04, $01, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004A0A 01:A9FA: FC        .byte $FC, $03, $00   ; 
- D 1 - I - 0x004A0D 01:A9FD: 02        .byte $02   ; 
- D 1 - I - 0x004A0E 01:A9FE: 00        .byte $00   ; 
- D 1 - I - 0x004A0F 01:A9FF: FE        .byte $FE, $59, $F0   ; 
- D 1 - I - 0x004A12 01:AA02: 06        .byte $06, $5B, $F0   ; 



off_02_AA05_41:
- D 1 - I - 0x004A15 01:AA05: 81        .byte $81   ; counter
- D 1 - I - 0x004A16 01:AA06: 40        .byte $40   ; spr_A
- D 1 - I - 0x004A17 01:AA07: 01        .byte $01, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004A1A 01:AA0A: 02        .byte $02   ; 
- D 1 - I - 0x004A1B 01:AA0B: 00        .byte $00   ; 
- D 1 - I - 0x004A1C 01:AA0C: FE        .byte $FE, $59, $F2   ; 
- D 1 - I - 0x004A1F 01:AA0F: 06        .byte $06, $5B, $F2   ; 



off_02_AA12_42:
off_FF_AA12:
- D 1 - I - 0x004A22 01:AA12: 04        .byte $04   ; counter
- D 1 - I - 0x004A23 01:AA13: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A24 01:AA14: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A27 01:AA17: 02        .byte $02, $09, $FF   ; 
- D 1 - I - 0x004A2A 01:AA1A: F7        .byte $F7, $5D, $EF   ; 
- D 1 - I - 0x004A2D 01:AA1D: FF        .byte $FF, $5F, $EF   ; 



off_02_AA20_43:
off_FF_AA20:
- D 1 - I - 0x004A30 01:AA20: 03        .byte $03   ; counter
- D 1 - I - 0x004A31 01:AA21: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A32 01:AA22: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A35 01:AA25: F6        .byte $F6, $5D, $F1   ; 
- D 1 - I - 0x004A38 01:AA28: FE        .byte $FE, $5F, $F1   ; 



off_02_AA2B_44:
off_FF_AA2B:
- D 1 - I - 0x004A3B 01:AA2B: 04        .byte $04   ; counter
- D 1 - I - 0x004A3C 01:AA2C: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A3D 01:AA2D: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A40 01:AA30: 00        .byte $00, $0F, $FF   ; 
- D 1 - I - 0x004A43 01:AA33: F3        .byte $F3, $5D, $EF   ; 
- D 1 - I - 0x004A46 01:AA36: FB        .byte $FB, $5F, $EF   ; 



off_02_AA39_45:
off_FF_AA39:
- D 1 - I - 0x004A49 01:AA39: 03        .byte $03   ; counter
- D 1 - I - 0x004A4A 01:AA3A: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A4B 01:AA3B: FA        .byte $FA, $0B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A4E 01:AA3E: F3        .byte $F3, $5D, $F1   ; 
- D 1 - I - 0x004A51 01:AA41: FB        .byte $FB, $5F, $F1   ; 



off_02_AA44_46:
- D 1 - I - 0x004A54 01:AA44: FF        .byte $FF   ; 
- D 1 - I - 0x004A55 01:AA45: 12 AA     .word off_FF_AA12



off_02_AA47_47:
- D 1 - I - 0x004A57 01:AA47: FF        .byte $FF   ; 
- D 1 - I - 0x004A58 01:AA48: 20 AA     .word off_FF_AA20



off_02_AA4A_48:
- D 1 - I - 0x004A5A 01:AA4A: FF        .byte $FF   ; 
- D 1 - I - 0x004A5B 01:AA4B: 2B AA     .word off_FF_AA2B



off_02_AA4D_49:
- D 1 - I - 0x004A5D 01:AA4D: FF        .byte $FF   ; 
- D 1 - I - 0x004A5E 01:AA4E: 39 AA     .word off_FF_AA39



off_02_AA50_4A:
off_FF_AA50:
- D 1 - I - 0x004A60 01:AA50: 05        .byte $05   ; counter
- D 1 - I - 0x004A61 01:AA51: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A62 01:AA52: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A65 01:AA55: FE        .byte $FE, $13, $00   ; 
- D 1 - I - 0x004A68 01:AA58: EC        .byte $EC, $61, $F0   ; 
- D 1 - I - 0x004A6B 01:AA5B: F4        .byte $F4, $63, $F0   ; 
- D 1 - I - 0x004A6E 01:AA5E: FC        .byte $FC, $65, $F0   ; 



off_02_AA61_4B:
off_FF_AA61:
- D 1 - I - 0x004A71 01:AA61: 04        .byte $04   ; counter
- D 1 - I - 0x004A72 01:AA62: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A73 01:AA63: FC        .byte $FC, $65, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A76 01:AA66: F4        .byte $F4, $63, $F2   ; 
- D 1 - I - 0x004A79 01:AA69: EC        .byte $EC, $61, $F1   ; 
- D 1 - I - 0x004A7C 01:AA6C: FC        .byte $FC, $15, $00   ; 



off_02_AA6F_4C:
off_FF_AA6F:
- D 1 - I - 0x004A7F 01:AA6F: 05        .byte $05   ; counter
- D 1 - I - 0x004A80 01:AA70: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A81 01:AA71: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A84 01:AA74: FE        .byte $FE, $19, $00   ; 
- D 1 - I - 0x004A87 01:AA77: F3        .byte $F3, $63, $F0   ; 
- D 1 - I - 0x004A8A 01:AA7A: EB        .byte $EB, $61, $F0   ; 
- D 1 - I - 0x004A8D 01:AA7D: FB        .byte $FB, $65, $F0   ; 



off_02_AA80_4D:
off_FF_AA80:
- D 1 - I - 0x004A90 01:AA80: 04        .byte $04   ; counter
- D 1 - I - 0x004A91 01:AA81: 00        .byte $00   ; spr_A
- D 1 - I - 0x004A92 01:AA82: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004A95 01:AA85: F2        .byte $F2, $63, $F2   ; 
- D 1 - I - 0x004A98 01:AA88: FA        .byte $FA, $65, $F2   ; 
- D 1 - I - 0x004A9B 01:AA8B: EA        .byte $EA, $61, $F1   ; 



off_02_AA8E_4E:
- D 1 - I - 0x004A9E 01:AA8E: FF        .byte $FF   ; 
- D 1 - I - 0x004A9F 01:AA8F: 50 AA     .word off_FF_AA50



off_02_AA91_4F:
- D 1 - I - 0x004AA1 01:AA91: FF        .byte $FF   ; 
- D 1 - I - 0x004AA2 01:AA92: 61 AA     .word off_FF_AA61



off_02_AA94_50:
- D 1 - I - 0x004AA4 01:AA94: FF        .byte $FF   ; 
- D 1 - I - 0x004AA5 01:AA95: 6F AA     .word off_FF_AA6F



off_02_AA97_51:
- D 1 - I - 0x004AA7 01:AA97: FF        .byte $FF   ; 
- D 1 - I - 0x004AA8 01:AA98: 80 AA     .word off_FF_AA80



off_02_AA9A_52:
off_FF_AA9A:
- D 1 - I - 0x004AAA 01:AA9A: 04        .byte $04   ; counter
- D 1 - I - 0x004AAB 01:AA9B: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AAC 01:AA9C: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AAF 01:AA9F: 03        .byte $03, $1D, $00   ; 
- D 1 - I - 0x004AB2 01:AAA2: F9        .byte $F9, $67, $F0   ; 
- D 1 - I - 0x004AB5 01:AAA5: 01        .byte $01, $69, $F0   ; 



off_02_AAA8_53:
off_FF_AAA8:
- D 1 - I - 0x004AB8 01:AAA8: 03        .byte $03   ; counter
- D 1 - I - 0x004AB9 01:AAA9: 00        .byte $00   ; spr_A
- D 1 - I - 0x004ABA 01:AAAA: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004ABD 01:AAAD: FA        .byte $FA, $67, $F2   ; 
- D 1 - I - 0x004AC0 01:AAB0: 02        .byte $02, $69, $F2   ; 



off_02_AAB3_54:
off_FF_AAB3:
- D 1 - I - 0x004AC3 01:AAB3: 03        .byte $03   ; counter
- D 1 - I - 0x004AC4 01:AAB4: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AC5 01:AAB5: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AC8 01:AAB8: FC        .byte $FC, $67, $F0   ; 
- D 1 - I - 0x004ACB 01:AABB: 04        .byte $04, $69, $F0   ; 



off_02_AABE_55:
off_FF_AABE:
- D 1 - I - 0x004ACE 01:AABE: 03        .byte $03   ; counter
- D 1 - I - 0x004ACF 01:AABF: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AD0 01:AAC0: 00        .byte $00, $1F, $01   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AD3 01:AAC3: FC        .byte $FC, $67, $F2   ; 
- D 1 - I - 0x004AD6 01:AAC6: 04        .byte $04, $69, $F2   ; 



off_02_AAC9_56:
- D 1 - I - 0x004AD9 01:AAC9: FF        .byte $FF   ; 
- D 1 - I - 0x004ADA 01:AACA: 9A AA     .word off_FF_AA9A



off_02_AACC_57:
- D 1 - I - 0x004ADC 01:AACC: FF        .byte $FF   ; 
- D 1 - I - 0x004ADD 01:AACD: A8 AA     .word off_FF_AAA8



off_02_AACF_58:
- D 1 - I - 0x004ADF 01:AACF: FF        .byte $FF   ; 
- D 1 - I - 0x004AE0 01:AAD0: B3 AA     .word off_FF_AAB3



off_02_AAD2_59:
- D 1 - I - 0x004AE2 01:AAD2: FF        .byte $FF   ; 
- D 1 - I - 0x004AE3 01:AAD3: BE AA     .word off_FF_AABE



off_02_AAD5_5A:
- D 1 - I - 0x004AE5 01:AAD5: 04        .byte $04   ; counter
- D 1 - I - 0x004AE6 01:AAD6: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AE7 01:AAD7: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004AEA 01:AADA: 03        .byte $03, $25, $00   ; 
- D 1 - I - 0x004AED 01:AADD: FA        .byte $FA, $6B, $F0   ; 
- D 1 - I - 0x004AF0 01:AAE0: 02        .byte $02, $6D, $F0   ; 



off_02_AAE3_5B:
- D 1 - I - 0x004AF3 01:AAE3: 81        .byte $81   ; counter
- D 1 - I - 0x004AF4 01:AAE4: 00        .byte $00   ; spr_A
- D 1 - I - 0x004AF5 01:AAE5: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004AF8 01:AAE8: 81        .byte $81   ; 
- D 1 - I - 0x004AF9 01:AAE9: 40        .byte $40   ; 
- D 1 - I - 0x004AFA 01:AAEA: 03        .byte $03, $23, $00   ; 

- D 1 - I - 0x004AFD 01:AAED: 02        .byte $02   ; 
- D 1 - I - 0x004AFE 01:AAEE: 00        .byte $00   ; 
- D 1 - I - 0x004AFF 01:AAEF: FB        .byte $FB, $6B, $F2   ; 
- D 1 - I - 0x004B02 01:AAF2: 03        .byte $03, $6D, $F2   ; 



off_02_AAF5_5C:
- D 1 - I - 0x004B05 01:AAF5: 82        .byte $82   ; counter
- D 1 - I - 0x004B06 01:AAF6: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B07 01:AAF7: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B0A 01:AAFA: FB        .byte $FB, $25, $00   ; 

- D 1 - I - 0x004B0D 01:AAFD: 02        .byte $02   ; 
- D 1 - I - 0x004B0E 01:AAFE: 00        .byte $00   ; 
- D 1 - I - 0x004B0F 01:AAFF: FC        .byte $FC, $6B, $F0   ; 
- D 1 - I - 0x004B12 01:AB02: 04        .byte $04, $6D, $F0   ; 



off_02_AB05_5D:
- D 1 - I - 0x004B15 01:AB05: 81        .byte $81   ; counter
- D 1 - I - 0x004B16 01:AB06: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B17 01:AB07: 03        .byte $03, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004B1A 01:AB0A: 03        .byte $03   ; 
- D 1 - I - 0x004B1B 01:AB0B: 00        .byte $00   ; 
- D 1 - I - 0x004B1C 01:AB0C: FB        .byte $FB, $23, $00   ; 
- D 1 - I - 0x004B1F 01:AB0F: FB        .byte $FB, $6B, $F2   ; 
- D 1 - I - 0x004B22 01:AB12: 03        .byte $03, $6D, $F2   ; 



off_02_AB15_5E:
- D 1 - I - 0x004B25 01:AB15: 04        .byte $04   ; counter
- D 1 - I - 0x004B26 01:AB16: 00        .byte $00   ; spr_A
- D 1 - I - 0x004B27 01:AB17: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B2A 01:AB1A: 03        .byte $03, $2B, $FF   ; 
- D 1 - I - 0x004B2D 01:AB1D: FB        .byte $FB, $59, $EF   ; 
- D 1 - I - 0x004B30 01:AB20: 03        .byte $03, $5B, $EF   ; 



off_02_AB23_5F:
- D 1 - I - 0x004B33 01:AB23: 04        .byte $04   ; counter
- D 1 - I - 0x004B34 01:AB24: 00        .byte $00   ; spr_A
- D 1 - I - 0x004B35 01:AB25: FB        .byte $FB, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B38 01:AB28: 03        .byte $03, $2B, $FF   ; 
- D 1 - I - 0x004B3B 01:AB2B: FA        .byte $FA, $59, $F1   ; 
- D 1 - I - 0x004B3E 01:AB2E: 02        .byte $02, $5B, $F1   ; 



off_02_AB31_60:
off_FF_AB31:
- - - - - - 0x004B41 01:AB31: 82        .byte $82   ; counter
- - - - - - 0x004B42 01:AB32: 40        .byte $40   ; spr_A
- - - - - - 0x004B43 01:AB33: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004B46 01:AB36: F6        .byte $F6, $2B, $FF   ; 

- - - - - - 0x004B49 01:AB39: 02        .byte $02   ; 
- - - - - - 0x004B4A 01:AB3A: 00        .byte $00   ; 
- - - - - - 0x004B4B 01:AB3B: F4        .byte $F4, $5D, $EF   ; 
- - - - - - 0x004B4E 01:AB3E: FC        .byte $FC, $5F, $EF   ; 



off_02_AB41_61:
off_FF_AB41:
- - - - - - 0x004B51 01:AB41: 81        .byte $81   ; counter
- - - - - - 0x004B52 01:AB42: 40        .byte $40   ; spr_A
- - - - - - 0x004B53 01:AB43: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y

- - - - - - 0x004B56 01:AB46: 82        .byte $82   ; 
- - - - - - 0x004B57 01:AB47: 00        .byte $00   ; 
- - - - - - 0x004B58 01:AB48: F5        .byte $F5, $5D, $F0   ; 
- - - - - - 0x004B5B 01:AB4B: FD        .byte $FD, $5F, $F0   ; 

- - - - - - 0x004B5E 01:AB4E: 01        .byte $01   ; 
- - - - - - 0x004B5F 01:AB4F: 40        .byte $40   ; 
- - - - - - 0x004B60 01:AB50: FE        .byte $FE, $29, $FF   ; 



off_02_AB53_62:
- - - - - - 0x004B63 01:AB53: FF        .byte $FF   ; 
- - - - - - 0x004B64 01:AB54: 31 AB     .word off_FF_AB31



off_02_AB56_63:
- - - - - - 0x004B66 01:AB56: FF        .byte $FF   ; 
- - - - - - 0x004B67 01:AB57: 41 AB     .word off_FF_AB41



off_02_AB59_64:
off_FF_AB59:
- D 1 - I - 0x004B69 01:AB59: 82        .byte $82   ; counter
- D 1 - I - 0x004B6A 01:AB5A: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B6B 01:AB5B: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004B6E 01:AB5E: F6        .byte $F6, $2B, $FF   ; 

- D 1 - I - 0x004B71 01:AB61: 03        .byte $03   ; 
- D 1 - I - 0x004B72 01:AB62: 00        .byte $00   ; 
- D 1 - I - 0x004B73 01:AB63: EC        .byte $EC, $61, $F0   ; 
- D 1 - I - 0x004B76 01:AB66: F4        .byte $F4, $63, $F0   ; 
- D 1 - I - 0x004B79 01:AB69: FC        .byte $FC, $65, $F0   ; 



off_02_AB6C_65:
off_FF_AB6C:
- D 1 - I - 0x004B7C 01:AB6C: 81        .byte $81   ; counter
- D 1 - I - 0x004B7D 01:AB6D: 40        .byte $40   ; spr_A
- D 1 - I - 0x004B7E 01:AB6E: F6        .byte $F6, $2B, $FF   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004B81 01:AB71: 83        .byte $83   ; 
- D 1 - I - 0x004B82 01:AB72: 00        .byte $00   ; 
- D 1 - I - 0x004B83 01:AB73: EE        .byte $EE, $61, $F0   ; 
- D 1 - I - 0x004B86 01:AB76: F6        .byte $F6, $63, $F1   ; 
- D 1 - I - 0x004B89 01:AB79: FE        .byte $FE, $65, $F1   ; 

- D 1 - I - 0x004B8C 01:AB7C: 01        .byte $01   ; 
- D 1 - I - 0x004B8D 01:AB7D: 40        .byte $40   ; 
- D 1 - I - 0x004B8E 01:AB7E: FE        .byte $FE, $29, $FF   ; 



off_02_AB81_66:
- D 1 - I - 0x004B91 01:AB81: FF        .byte $FF   ; 
- D 1 - I - 0x004B92 01:AB82: 59 AB     .word off_FF_AB59



off_02_AB84_67:
- D 1 - I - 0x004B94 01:AB84: FF        .byte $FF   ; 
- D 1 - I - 0x004B95 01:AB85: 6C AB     .word off_FF_AB6C



off_02_AB87_68:
off_FF_AB87:
- - - - - - 0x004B97 01:AB87: 04        .byte $04   ; counter
- - - - - - 0x004B98 01:AB88: 00        .byte $00   ; spr_A
- - - - - - 0x004B99 01:AB89: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x004B9C 01:AB8C: 02        .byte $02, $2F, $FE   ; 
- - - - - - 0x004B9F 01:AB8F: FA        .byte $FA, $67, $EE   ; 
- - - - - - 0x004BA2 01:AB92: 02        .byte $02, $69, $EE   ; 



off_02_AB95_69:
off_FF_AB95:
- - - - - - 0x004BA5 01:AB95: 04        .byte $04   ; counter
- - - - - - 0x004BA6 01:AB96: 00        .byte $00   ; spr_A
- - - - - - 0x004BA7 01:AB97: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- - - - - - 0x004BAA 01:AB9A: 02        .byte $02, $2F, $FE   ; 
- - - - - - 0x004BAD 01:AB9D: F9        .byte $F9, $67, $EF   ; 
- - - - - - 0x004BB0 01:ABA0: 01        .byte $01, $69, $EF   ; 



off_02_ABA3_6A:
- - - - - - 0x004BB3 01:ABA3: FF        .byte $FF   ; 
- - - - - - 0x004BB4 01:ABA4: 87 AB     .word off_FF_AB87



off_02_ABA6_6B:
- - - - - - 0x004BB6 01:ABA6: FF        .byte $FF   ; 
- - - - - - 0x004BB7 01:ABA7: 95 AB     .word off_FF_AB95



off_02_ABA9_6C:
- D 1 - I - 0x004BB9 01:ABA9: 04        .byte $04   ; counter
- D 1 - I - 0x004BBA 01:ABAA: 00        .byte $00   ; spr_A
- D 1 - I - 0x004BBB 01:ABAB: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004BBE 01:ABAE: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x004BC1 01:ABB1: FA        .byte $FA, $6B, $EE   ; 
- D 1 - I - 0x004BC4 01:ABB4: 02        .byte $02, $6D, $EE   ; 



off_02_ABB7_6D:
- D 1 - I - 0x004BC7 01:ABB7: 04        .byte $04   ; counter
- D 1 - I - 0x004BC8 01:ABB8: 00        .byte $00   ; spr_A
- D 1 - I - 0x004BC9 01:ABB9: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004BCC 01:ABBC: 02        .byte $02, $2F, $FE   ; 
- D 1 - I - 0x004BCF 01:ABBF: F9        .byte $F9, $6B, $EF   ; 
- D 1 - I - 0x004BD2 01:ABC2: 01        .byte $01, $6D, $EF   ; 



off_02_ABC5_6E:
- - - - - - 0x004BD5 01:ABC5: 81        .byte $81   ; counter
- - - - - - 0x004BD6 01:ABC6: 00        .byte $00   ; spr_A
- - - - - - 0x004BD7 01:ABC7: F9        .byte $F9, $31, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004BDA 01:ABCA: 81        .byte $81   ; 
- - - - - - 0x004BDB 01:ABCB: 40        .byte $40   ; 
- - - - - - 0x004BDC 01:ABCC: 01        .byte $01, $31, $00   ; 



- - - - - - 0x004BDF 01:ABCF: 02        .byte $02   ; 
- - - - - - 0x004BE0 01:ABD0: 00        .byte $00   ; 
- - - - - - 0x004BE1 01:ABD1: F9        .byte $F9, $79, $F0   ; 
- - - - - - 0x004BE4 01:ABD4: 01        .byte $01, $7B, $F0   ; 



off_02_ABD7_6F:
- D 1 - I - 0x004BE7 01:ABD7: 81        .byte $81   ; counter
- D 1 - I - 0x004BE8 01:ABD8: 80        .byte $80   ; spr_A
- D 1 - I - 0x004BE9 01:ABD9: F9        .byte $F9, $31, $F1   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004BEC 01:ABDC: 81        .byte $81   ; 
- D 1 - I - 0x004BED 01:ABDD: C0        .byte $C0   ; 
- D 1 - I - 0x004BEE 01:ABDE: 01        .byte $01, $31, $F1   ; 

- D 1 - I - 0x004BF1 01:ABE1: 02        .byte $02   ; 
- D 1 - I - 0x004BF2 01:ABE2: 80        .byte $80   ; 
- D 1 - I - 0x004BF3 01:ABE3: F9        .byte $F9, $79, $01   ; 
- D 1 - I - 0x004BF6 01:ABE6: 01        .byte $01, $7B, $01   ; 



off_02_ABE9_70:
- - - - - - 0x004BF9 01:ABE9: 04        .byte $04   ; counter
- - - - - - 0x004BFA 01:ABEA: 00        .byte $00   ; spr_A
- - - - - - 0x004BFB 01:ABEB: F9        .byte $F9, $33, $FF   ; spr_X, spr_T, spr_Y
- - - - - - 0x004BFE 01:ABEE: 01        .byte $01, $35, $FF   ; 
- - - - - - 0x004C01 01:ABF1: F9        .byte $F9, $7D, $EF   ; 
- - - - - - 0x004C04 01:ABF4: 01        .byte $01, $7F, $EF   ; 



off_02_ABF7_71:
- D 1 - I - 0x004C07 01:ABF7: 04        .byte $04   ; 
- D 1 - I - 0x004C08 01:ABF8: 80        .byte $80   ; 
- D 1 - I - 0x004C09 01:ABF9: F9        .byte $F9, $33, $F2   ; 
- D 1 - I - 0x004C0C 01:ABFC: 01        .byte $01, $35, $F2   ; 
- D 1 - I - 0x004C0F 01:ABFF: F9        .byte $F9, $7D, $02   ; 
- D 1 - I - 0x004C12 01:AC02: 01        .byte $01, $7F, $02   ; 



off_02_AC05_72:
- - - - - - 0x004C15 01:AC05: 81        .byte $81   ; counter
- - - - - - 0x004C16 01:AC06: 00        .byte $00   ; spr_A
- - - - - - 0x004C17 01:AC07: F9        .byte $F9, $31, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C1A 01:AC0A: 81        .byte $81   ; 
- - - - - - 0x004C1B 01:AC0B: 40        .byte $40   ; 
- - - - - - 0x004C1C 01:AC0C: 01        .byte $01, $31, $00   ; 

- - - - - - 0x004C1F 01:AC0F: 02        .byte $02   ; 
- - - - - - 0x004C20 01:AC10: 00        .byte $00   ; 
- - - - - - 0x004C21 01:AC11: F9        .byte $F9, $6B, $F0   ; 
- - - - - - 0x004C24 01:AC14: 01        .byte $01, $6D, $F0   ; 



off_02_AC17_73:
- - - - - - 0x004C27 01:AC17: 02        .byte $02   ; counter
- - - - - - 0x004C28 01:AC18: 00        .byte $00   ; spr_A
- - - - - - 0x004C29 01:AC19: F9        .byte $F9, $37, $FA   ; spr_X, spr_T, spr_Y
- - - - - - 0x004C2C 01:AC1C: 01        .byte $01, $39, $FA   ; 



off_02_AC1F_74:
- - - - - - 0x004C2F 01:AC1F: 81        .byte $81   ; counter
- - - - - - 0x004C30 01:AC20: 00        .byte $00   ; spr_A
- - - - - - 0x004C31 01:AC21: F9        .byte $F9, $C3, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C34 01:AC24: 01        .byte $01   ; 
- - - - - - 0x004C35 01:AC25: 40        .byte $40   ; 
- - - - - - 0x004C36 01:AC26: 01        .byte $01, $C3, $00   ; 



off_02_AC29_75:
- - - - - - 0x004C39 01:AC29: 81        .byte $81   ; counter
- - - - - - 0x004C3A 01:AC2A: 00        .byte $00   ; spr_A
- - - - - - 0x004C3B 01:AC2B: F9        .byte $F9, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C3E 01:AC2E: 01        .byte $01   ; 
- - - - - - 0x004C3F 01:AC2F: 40        .byte $40   ; 
- - - - - - 0x004C40 01:AC30: 01        .byte $01, $C5, $00   ; 



off_02_AC33_76:
- - - - - - 0x004C43 01:AC33: 81        .byte $81   ; counter
- - - - - - 0x004C44 01:AC34: 00        .byte $00   ; spr_A
- - - - - - 0x004C45 01:AC35: F6        .byte $F6, $C5, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C48 01:AC38: 01        .byte $01   ; 
- - - - - - 0x004C49 01:AC39: 40        .byte $40   ; 
- - - - - - 0x004C4A 01:AC3A: 04        .byte $04, $C5, $00   ; 



off_02_AC3D_77:
- - - - - - 0x004C4D 01:AC3D: 81        .byte $81   ; counter
- - - - - - 0x004C4E 01:AC3E: 00        .byte $00   ; spr_A
- - - - - - 0x004C4F 01:AC3F: F5        .byte $F5, $C9, $F8   ; spr_X, spr_T, spr_Y

- - - - - - 0x004C52 01:AC42: 81        .byte $81   ; 
- - - - - - 0x004C53 01:AC43: 80        .byte $80   ; 
- - - - - - 0x004C54 01:AC44: F5        .byte $F5, $C9, $08   ; 

- - - - - - 0x004C57 01:AC47: 81        .byte $81   ; 
- - - - - - 0x004C58 01:AC48: 40        .byte $40   ; 
- - - - - - 0x004C59 01:AC49: 05        .byte $05, $C9, $F8   ; 

- - - - - - 0x004C5C 01:AC4C: 01        .byte $01   ; 
- - - - - - 0x004C5D 01:AC4D: C0        .byte $C0   ; 
- - - - - - 0x004C5E 01:AC4E: 05        .byte $05, $C9, $08   ; 



off_02_AC51_78:
- D 1 - I - 0x004C61 01:AC51: 04        .byte $04   ; counter
- D 1 - I - 0x004C62 01:AC52: 00        .byte $00   ; spr_A
- D 1 - I - 0x004C63 01:AC53: 04        .byte $04, $03, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C66 01:AC56: FC        .byte $FC, $01, $00   ; 
- D 1 - I - 0x004C69 01:AC59: FD        .byte $FD, $6F, $F0   ; 
- D 1 - I - 0x004C6C 01:AC5C: 05        .byte $05, $71, $F0   ; 



off_02_AC5F_79:
- D 1 - I - 0x004C6F 01:AC5F: 03        .byte $03   ; counter
- D 1 - I - 0x004C70 01:AC60: 00        .byte $00   ; spr_A
- D 1 - I - 0x004C71 01:AC61: FF        .byte $FF, $05, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C74 01:AC64: FD        .byte $FD, $6F, $F2   ; 
- D 1 - I - 0x004C77 01:AC67: 05        .byte $05, $71, $F2   ; 



off_02_AC6A_7A:
- D 1 - I - 0x004C7A 01:AC6A: 82        .byte $82   ; counter
- D 1 - I - 0x004C7B 01:AC6B: 40        .byte $40   ; spr_A
- D 1 - I - 0x004C7C 01:AC6C: 04        .byte $04, $01, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C7F 01:AC6F: FC        .byte $FC, $03, $00   ; 

- D 1 - I - 0x004C82 01:AC72: 02        .byte $02   ; 
- D 1 - I - 0x004C83 01:AC73: 00        .byte $00   ; 
- D 1 - I - 0x004C84 01:AC74: 07        .byte $07, $71, $F0   ; 
- D 1 - I - 0x004C87 01:AC77: FF        .byte $FF, $77, $F0   ; 



off_02_AC7A_7B:
- D 1 - I - 0x004C8A 01:AC7A: 81        .byte $81   ; counter
- D 1 - I - 0x004C8B 01:AC7B: 40        .byte $40   ; spr_A
- D 1 - I - 0x004C8C 01:AC7C: 01        .byte $01, $05, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004C8F 01:AC7F: 02        .byte $02   ; 
- D 1 - I - 0x004C90 01:AC80: 00        .byte $00   ; 
- D 1 - I - 0x004C91 01:AC81: 07        .byte $07, $71, $F2   ; 
- D 1 - I - 0x004C94 01:AC84: FF        .byte $FF, $77, $F2   ; 



off_02_AC87_7C:
off_FF_AC87:
- D 1 - I - 0x004C97 01:AC87: 82        .byte $82   ; counter
- D 1 - I - 0x004C98 01:AC88: 00        .byte $00   ; spr_A
- D 1 - I - 0x004C99 01:AC89: FA        .byte $FA, $07, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004C9C 01:AC8C: 02        .byte $02, $09, $FF   ; 

- D 1 - I - 0x004C9F 01:AC8F: 02        .byte $02   ; 
- D 1 - I - 0x004CA0 01:AC90: 40        .byte $40   ; 
- D 1 - I - 0x004CA1 01:AC91: F7        .byte $F7, $71, $F0   ; 
- D 1 - I - 0x004CA4 01:AC94: FF        .byte $FF, $6F, $F0   ; 



off_02_AC97_7D:
off_FF_AC97:
- D 1 - I - 0x004CA7 01:AC97: 81        .byte $81   ; counter
- D 1 - I - 0x004CA8 01:AC98: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CA9 01:AC99: FD        .byte $FD, $0B, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004CAC 01:AC9C: 02        .byte $02   ; 
- D 1 - I - 0x004CAD 01:AC9D: 40        .byte $40   ; 
- D 1 - I - 0x004CAE 01:AC9E: F6        .byte $F6, $71, $F3   ; 
- D 1 - I - 0x004CB1 01:ACA1: FE        .byte $FE, $6F, $F3   ; 



off_02_ACA4_7E:
off_FF_ACA4:
- D 1 - I - 0x004CB4 01:ACA4: 82        .byte $82   ; counter
- D 1 - I - 0x004CB5 01:ACA5: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CB6 01:ACA6: F8        .byte $F8, $0D, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004CB9 01:ACA9: 00        .byte $00, $0F, $FF   ; 

- D 1 - I - 0x004CBC 01:ACAC: 02        .byte $02   ; 
- D 1 - I - 0x004CBD 01:ACAD: 40        .byte $40   ; 
- D 1 - I - 0x004CBE 01:ACAE: FB        .byte $FB, $77, $EF   ; 
- D 1 - I - 0x004CC1 01:ACB1: F3        .byte $F3, $71, $EF   ; 



off_02_ACB4_7F:
off_FF_ACB4:
- - - - - - 0x004CC4 01:ACB4: 81        .byte $81   ; counter
- - - - - - 0x004CC5 01:ACB5: 00        .byte $00   ; spr_A
- - - - - - 0x004CC6 01:ACB6: FB        .byte $FB, $0B, $00   ; spr_X, spr_T, spr_Y

- - - - - - 0x004CC9 01:ACB9: 02        .byte $02   ; 
- - - - - - 0x004CCA 01:ACBA: 40        .byte $40   ; 
- - - - - - 0x004CCB 01:ACBB: FD        .byte $FD, $77, $F3   ; 
- - - - - - 0x004CCE 01:ACBE: F5        .byte $F5, $71, $F3   ; 



off_02_ACC1_80:
- D 1 - I - 0x004CD1 01:ACC1: FF        .byte $FF   ; 
- D 1 - I - 0x004CD2 01:ACC2: 87 AC     .word off_FF_AC87



off_02_ACC4_81:
- D 1 - I - 0x004CD4 01:ACC4: FF        .byte $FF   ; 
- D 1 - I - 0x004CD5 01:ACC5: 97 AC     .word off_FF_AC97



off_02_ACC7_82:
- - - - - - 0x004CD7 01:ACC7: FF        .byte $FF   ; 
- - - - - - 0x004CD8 01:ACC8: A4 AC     .word off_FF_ACA4



off_02_ACCA_83:
- - - - - - 0x004CDA 01:ACCA: FF        .byte $FF   ; 
- - - - - - 0x004CDB 01:ACCB: B4 AC     .word off_FF_ACB4



off_02_ACCD_84:
off_FF_ACCD:
- D 1 - I - 0x004CDD 01:ACCD: 82        .byte $82   ; counter
- D 1 - I - 0x004CDE 01:ACCE: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CDF 01:ACCF: F6        .byte $F6, $11, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004CE2 01:ACD2: FE        .byte $FE, $13, $00   ; 

- D 1 - I - 0x004CE5 01:ACD5: 02        .byte $02   ; 
- D 1 - I - 0x004CE6 01:ACD6: 40        .byte $40   ; 
- D 1 - I - 0x004CE7 01:ACD7: FD        .byte $FD, $6F, $F0   ; 
- D 1 - I - 0x004CEA 01:ACDA: F5        .byte $F5, $71, $F0   ; 



off_02_ACDD_85:
off_FF_ACDD:
- D 1 - I - 0x004CED 01:ACDD: 81        .byte $81   ; counter
- D 1 - I - 0x004CEE 01:ACDE: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CEF 01:ACDF: FC        .byte $FC, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004CF2 01:ACE2: 02        .byte $02   ; 
- D 1 - I - 0x004CF3 01:ACE3: 40        .byte $40   ; 
- D 1 - I - 0x004CF4 01:ACE4: FE        .byte $FE, $6F, $F1   ; 
- D 1 - I - 0x004CF7 01:ACE7: F6        .byte $F6, $71, $F1   ; 



off_02_ACEA_86:
off_FF_ACEA:
- D 1 - I - 0x004CFA 01:ACEA: 82        .byte $82   ; counter
- D 1 - I - 0x004CFB 01:ACEB: 00        .byte $00   ; spr_A
- D 1 - I - 0x004CFC 01:ACEC: F6        .byte $F6, $17, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004CFF 01:ACEF: FE        .byte $FE, $19, $00   ; 

- D 1 - I - 0x004D02 01:ACF2: 02        .byte $02   ; 
- D 1 - I - 0x004D03 01:ACF3: 40        .byte $40   ; 
- D 1 - I - 0x004D04 01:ACF4: FC        .byte $FC, $6F, $F0   ; 
- D 1 - I - 0x004D07 01:ACF7: F4        .byte $F4, $71, $F0   ; 



off_02_ACFA_87:
off_FF_ACFA:
- D 1 - I - 0x004D0A 01:ACFA: 81        .byte $81   ; counter
- D 1 - I - 0x004D0B 01:ACFB: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D0C 01:ACFC: FA        .byte $FA, $15, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D0F 01:ACFF: 02        .byte $02   ; 
- D 1 - I - 0x004D10 01:AD00: 40        .byte $40   ; 
- D 1 - I - 0x004D11 01:AD01: FE        .byte $FE, $6F, $F1   ; 
- D 1 - I - 0x004D14 01:AD04: F6        .byte $F6, $71, $F1   ; 



off_02_AD07_88:
- D 1 - I - 0x004D17 01:AD07: FF        .byte $FF   ; 
- D 1 - I - 0x004D18 01:AD08: CD AC     .word off_FF_ACCD



off_02_AD0A_89:
- D 1 - I - 0x004D1A 01:AD0A: FF        .byte $FF   ; 
- D 1 - I - 0x004D1B 01:AD0B: DD AC     .word off_FF_ACDD



off_02_AD0D_8A:
- D 1 - I - 0x004D1D 01:AD0D: FF        .byte $FF   ; 
- D 1 - I - 0x004D1E 01:AD0E: EA AC     .word off_FF_ACEA



off_02_AD10_8B:
- D 1 - I - 0x004D20 01:AD10: FF        .byte $FF   ; 
- D 1 - I - 0x004D21 01:AD11: FA AC     .word off_FF_ACFA



off_02_AD13_8C:
off_FF_AD13:
- D 1 - I - 0x004D23 01:AD13: 82        .byte $82   ; counter
- D 1 - I - 0x004D24 01:AD14: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D25 01:AD15: FB        .byte $FB, $1B, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D28 01:AD18: 03        .byte $03, $1D, $00   ; 

- D 1 - I - 0x004D2B 01:AD1B: 02        .byte $02   ; 
- D 1 - I - 0x004D2C 01:AD1C: 40        .byte $40   ; 
- D 1 - I - 0x004D2D 01:AD1D: 00        .byte $00, $6F, $F0   ; 
- D 1 - I - 0x004D30 01:AD20: F8        .byte $F8, $71, $F0   ; 



off_02_AD23_8D:
off_FF_AD23:
- D 1 - I - 0x004D33 01:AD23: 81        .byte $81   ; counter
- D 1 - I - 0x004D34 01:AD24: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D35 01:AD25: FF        .byte $FF, $1F, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D38 01:AD28: 02        .byte $02   ; 
- D 1 - I - 0x004D39 01:AD29: 40        .byte $40   ; 
- D 1 - I - 0x004D3A 01:AD2A: 01        .byte $01, $6F, $F2   ; 
- D 1 - I - 0x004D3D 01:AD2D: F9        .byte $F9, $71, $F2   ; 



off_02_AD30_8E:
off_FF_AD30:
- D 1 - I - 0x004D40 01:AD30: 81        .byte $81   ; counter
- D 1 - I - 0x004D41 01:AD31: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D42 01:AD32: 00        .byte $00, $21, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D45 01:AD35: 02        .byte $02   ; 
- D 1 - I - 0x004D46 01:AD36: 40        .byte $40   ; 
- D 1 - I - 0x004D47 01:AD37: 02        .byte $02, $6F, $F1   ; 
- D 1 - I - 0x004D4A 01:AD3A: FA        .byte $FA, $71, $F1   ; 



off_02_AD3D_8F:
off_FF_AD3D:
- D 1 - I - 0x004D4D 01:AD3D: 81        .byte $81   ; counter
- D 1 - I - 0x004D4E 01:AD3E: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D4F 01:AD3F: 00        .byte $00, $1F, $01   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D52 01:AD42: 02        .byte $02   ; 
- D 1 - I - 0x004D53 01:AD43: 40        .byte $40   ; 
- D 1 - I - 0x004D54 01:AD44: 02        .byte $02, $6F, $F2   ; 
- D 1 - I - 0x004D57 01:AD47: FA        .byte $FA, $71, $F2   ; 



off_02_AD4A_90:
- D 1 - I - 0x004D5A 01:AD4A: FF        .byte $FF   ; 
- D 1 - I - 0x004D5B 01:AD4B: 13 AD     .word off_FF_AD13



off_02_AD4D_91:
- D 1 - I - 0x004D5D 01:AD4D: FF        .byte $FF   ; 
- D 1 - I - 0x004D5E 01:AD4E: 23 AD     .word off_FF_AD23



off_02_AD50_92:
- D 1 - I - 0x004D60 01:AD50: FF        .byte $FF   ; 
- D 1 - I - 0x004D61 01:AD51: 30 AD     .word off_FF_AD30



off_02_AD53_93:
- D 1 - I - 0x004D63 01:AD53: FF        .byte $FF   ; 
- D 1 - I - 0x004D64 01:AD54: 3D AD     .word off_FF_AD3D



off_02_AD56_94:
- D 1 - I - 0x004D66 01:AD56: 04        .byte $04   ; counter
- D 1 - I - 0x004D67 01:AD57: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D68 01:AD58: FB        .byte $FB, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D6B 01:AD5B: 03        .byte $03, $25, $00   ; 
- D 1 - I - 0x004D6E 01:AD5E: FA        .byte $FA, $73, $F0   ; 
- D 1 - I - 0x004D71 01:AD61: 02        .byte $02, $75, $F0   ; 



off_02_AD64_95:
- D 1 - I - 0x004D74 01:AD64: 81        .byte $81   ; counter
- D 1 - I - 0x004D75 01:AD65: 00        .byte $00   ; spr_A
- D 1 - I - 0x004D76 01:AD66: FB        .byte $FB, $27, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x004D79 01:AD69: 81        .byte $81   ; 
- D 1 - I - 0x004D7A 01:AD6A: 40        .byte $40   ; 
- D 1 - I - 0x004D7B 01:AD6B: 03        .byte $03, $23, $00   ; 

- D 1 - I - 0x004D7E 01:AD6E: 02        .byte $02   ; 
- D 1 - I - 0x004D7F 01:AD6F: 00        .byte $00   ; 
- D 1 - I - 0x004D80 01:AD70: FA        .byte $FA, $73, $F2   ; 
- D 1 - I - 0x004D83 01:AD73: 02        .byte $02, $75, $F2   ; 



off_02_AD76_96:
- D 1 - I - 0x004D86 01:AD76: 82        .byte $82   ; counter
- D 1 - I - 0x004D87 01:AD77: 40        .byte $40   ; spr_A
- D 1 - I - 0x004D88 01:AD78: 03        .byte $03, $23, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D8B 01:AD7B: FB        .byte $FB, $25, $00   ; 

- D 1 - I - 0x004D8E 01:AD7E: 02        .byte $02   ; 
- D 1 - I - 0x004D8F 01:AD7F: 00        .byte $00   ; 
- D 1 - I - 0x004D90 01:AD80: FC        .byte $FC, $73, $F0   ; 
- D 1 - I - 0x004D93 01:AD83: 04        .byte $04, $75, $F0   ; 



off_02_AD86_97:
- D 1 - I - 0x004D96 01:AD86: 81        .byte $81   ; counter
- D 1 - I - 0x004D97 01:AD87: 40        .byte $40   ; spr_A
- D 1 - I - 0x004D98 01:AD88: 03        .byte $03, $27, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004D9B 01:AD8B: 03        .byte $03   ; 
- D 1 - I - 0x004D9C 01:AD8C: 00        .byte $00   ; 
- D 1 - I - 0x004D9D 01:AD8D: FB        .byte $FB, $23, $00   ; 
- D 1 - I - 0x004DA0 01:AD90: FC        .byte $FC, $73, $F2   ; 
- D 1 - I - 0x004DA3 01:AD93: 04        .byte $04, $75, $F2   ; 



off_02_AD96_98:
off_FF_AD96:
- D 1 - I - 0x004DA6 01:AD96: 04        .byte $04   ; counter
- D 1 - I - 0x004DA7 01:AD97: 40        .byte $40   ; spr_A
- D 1 - I - 0x004DA8 01:AD98: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DAB 01:AD9B: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x004DAE 01:AD9E: FE        .byte $FE, $77, $F0   ; 
- D 1 - I - 0x004DB1 01:ADA1: F6        .byte $F6, $71, $F0   ; 



off_02_ADA4_99:
- D 1 - I - 0x004DB4 01:ADA4: FF        .byte $FF   ; 
- D 1 - I - 0x004DB5 01:ADA5: 96 AD     .word off_FF_AD96



off_02_ADA7_9A:
off_FF_ADA7:
- D 1 - I - 0x004DB7 01:ADA7: 82        .byte $82   ; counter
- D 1 - I - 0x004DB8 01:ADA8: 00        .byte $00   ; spr_A
- D 1 - I - 0x004DB9 01:ADA9: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DBC 01:ADAC: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x004DBF 01:ADAF: 02        .byte $02   ; 
- D 1 - I - 0x004DC0 01:ADB0: 40        .byte $40   ; 
- D 1 - I - 0x004DC1 01:ADB1: 00        .byte $00, $77, $EE   ; 
- D 1 - I - 0x004DC4 01:ADB4: F8        .byte $F8, $71, $EE   ; 



off_02_ADB7_9B:
- - - - - - 0x004DC7 01:ADB7: FF        .byte $FF   ; 
- - - - - - 0x004DC8 01:ADB8: A7 AD     .word off_FF_ADA7



off_02_ADBA_9C:
off_FF_ADBA:
- D 1 - I - 0x004DCA 01:ADBA: 04        .byte $04   ; counter
- D 1 - I - 0x004DCB 01:ADBB: 40        .byte $40   ; spr_A
- D 1 - I - 0x004DCC 01:ADBC: FE        .byte $FE, $29, $FF   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DCF 01:ADBF: F6        .byte $F6, $2B, $FF   ; 
- D 1 - I - 0x004DD2 01:ADC2: FE        .byte $FE, $6F, $F2   ; 
- D 1 - I - 0x004DD5 01:ADC5: F6        .byte $F6, $71, $F2   ; 



off_02_ADC8_9D:
- D 1 - I - 0x004DD8 01:ADC8: FF        .byte $FF   ; 
- D 1 - I - 0x004DD9 01:ADC9: BA AD     .word off_FF_ADBA



off_02_ADCB_9E:
off_FF_ADCB:
- D 1 - I - 0x004DDB 01:ADCB: 82        .byte $82   ; counter
- D 1 - I - 0x004DDC 01:ADCC: 00        .byte $00   ; spr_A
- D 1 - I - 0x004DDD 01:ADCD: FA        .byte $FA, $2D, $FE   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004DE0 01:ADD0: 02        .byte $02, $2F, $FE   ; 

- D 1 - I - 0x004DE3 01:ADD3: 02        .byte $02   ; 
- D 1 - I - 0x004DE4 01:ADD4: 40        .byte $40   ; 
- D 1 - I - 0x004DE5 01:ADD5: 00        .byte $00, $6F, $F0   ; 
- D 1 - I - 0x004DE8 01:ADD8: F8        .byte $F8, $71, $F0   ; 



off_02_ADDB_9F:
- D 1 - I - 0x004DEB 01:ADDB: FF        .byte $FF   ; 
- D 1 - I - 0x004DEC 01:ADDC: CB AD     .word off_FF_ADCB



_off032_0x004DEE_0B:
- - - - - - 0x004DEE 01:ADDE: 24 AE     .word off_0B_AE24_00
- D 1 - I - 0x004DF0 01:ADE0: 9E AE     .word off_0B_AE9E_01
- D 1 - I - 0x004DF2 01:ADE2: C5 AE     .word off_0B_AEC5_02
- D 1 - I - 0x004DF4 01:ADE4: E5 AE     .word off_0B_AEE5_03
- D 1 - I - 0x004DF6 01:ADE6: 05 AF     .word off_0B_AF05_04
- D 1 - I - 0x004DF8 01:ADE8: 25 AF     .word off_0B_AF25_05
- D 1 - I - 0x004DFA 01:ADEA: 4F AF     .word off_0B_AF4F_06
- D 1 - I - 0x004DFC 01:ADEC: 77 AF     .word off_0B_AF77_07
- D 1 - I - 0x004DFE 01:ADEE: A1 AF     .word off_0B_AFA1_08
- D 1 - I - 0x004E00 01:ADF0: D0 AF     .word off_0B_AFD0_09
- D 1 - I - 0x004E02 01:ADF2: 02 B0     .word off_0B_B002_0A
- D 1 - I - 0x004E04 01:ADF4: 40 B0     .word off_0B_B040_0B
- D 1 - I - 0x004E06 01:ADF6: 72 B0     .word off_0B_B072_0C
- D 1 - I - 0x004E08 01:ADF8: 24 AE     .word off_0B_AE24_0D
- D 1 - I - 0x004E0A 01:ADFA: 42 AE     .word off_0B_AE42_0E
- D 1 - I - 0x004E0C 01:ADFC: 60 AE     .word off_0B_AE60_0F
- D 1 - I - 0x004E0E 01:ADFE: 7E AE     .word off_0B_AE7E_10
- D 1 - I - 0x004E10 01:AE00: 94 B0     .word off_0B_B094_11
- D 1 - I - 0x004E12 01:AE02: BA B0     .word off_0B_B0BA_12
- D 1 - I - 0x004E14 01:AE04: DA B0     .word off_0B_B0DA_13
- D 1 - I - 0x004E16 01:AE06: 02 B1     .word off_0B_B102_14
- D 1 - I - 0x004E18 01:AE08: 27 B1     .word off_0B_B127_15
- - - - - - 0x004E1A 01:AE0A: 2A B1     .word off_0B_B12A_16
- - - - - - 0x004E1C 01:AE0C: 2D B1     .word off_0B_B12D_17
- - - - - - 0x004E1E 01:AE0E: 30 B1     .word off_0B_B130_18
- D 1 - I - 0x004E20 01:AE10: 33 B1     .word off_0B_B133_19
- D 1 - I - 0x004E22 01:AE12: 5B B1     .word off_0B_B15B_1A
- D 1 - I - 0x004E24 01:AE14: 7D B1     .word off_0B_B17D_1B
- D 1 - I - 0x004E26 01:AE16: 9F B1     .word off_0B_B19F_1C
- D 1 - I - 0x004E28 01:AE18: C8 B1     .word off_0B_B1C8_1D
- D 1 - I - 0x004E2A 01:AE1A: EC B1     .word off_0B_B1EC_1E
- D 1 - I - 0x004E2C 01:AE1C: EF B1     .word off_0B_B1EF_1F
- D 1 - I - 0x004E2E 01:AE1E: F2 B1     .word off_0B_B1F2_20
- D 1 - I - 0x004E30 01:AE20: F5 B1     .word off_0B_B1F5_21
- D 1 - I - 0x004E32 01:AE22: F8 B1     .word off_0B_B1F8_22



off_0B_AE24_00:
off_0B_AE24_0D:
- D 1 - I - 0x004E34 01:AE24: 82        .byte $82   ; counter
- D 1 - I - 0x004E35 01:AE25: 01        .byte $01   ; spr_A
- D 1 - I - 0x004E36 01:AE26: F9        .byte $F9, $91, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E39 01:AE29: 01        .byte $01, $93, $E9   ; 

- D 1 - I - 0x004E3C 01:AE2C: 83        .byte $83   ; 
- D 1 - I - 0x004E3D 01:AE2D: 02        .byte $02   ; 
- D 1 - I - 0x004E3E 01:AE2E: F9        .byte $F9, $A7, $F9   ; 
- D 1 - I - 0x004E41 01:AE31: 01        .byte $01, $9B, $F9   ; 
- D 1 - I - 0x004E44 01:AE34: 01        .byte $01, $BF, $09   ; 

- D 1 - I - 0x004E47 01:AE37: 03        .byte $03   ; 
- D 1 - I - 0x004E48 01:AE38: 00        .byte $00   ; 
- D 1 - I - 0x004E49 01:AE39: F9        .byte $F9, $BD, $09   ; 
- D 1 - I - 0x004E4C 01:AE3C: F1        .byte $F1, $BB, $09   ; 
- D 1 - I - 0x004E4F 01:AE3F: F1        .byte $F1, $B9, $F9   ; 



off_0B_AE42_0E:
- D 1 - I - 0x004E52 01:AE42: 82        .byte $82   ; counter
- D 1 - I - 0x004E53 01:AE43: 41        .byte $41   ; spr_A
- D 1 - I - 0x004E54 01:AE44: FC        .byte $FC, $91, $E9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E57 01:AE47: F4        .byte $F4, $93, $E9   ; 

- D 1 - I - 0x004E5A 01:AE4A: 83        .byte $83   ; 
- D 1 - I - 0x004E5B 01:AE4B: 42        .byte $42   ; 
- D 1 - I - 0x004E5C 01:AE4C: FC        .byte $FC, $A7, $F9   ; 
- D 1 - I - 0x004E5F 01:AE4F: F4        .byte $F4, $9B, $F9   ; 
- D 1 - I - 0x004E62 01:AE52: F4        .byte $F4, $BF, $09   ; 

- D 1 - I - 0x004E65 01:AE55: 03        .byte $03   ; 
- D 1 - I - 0x004E66 01:AE56: 40        .byte $40   ; 
- D 1 - I - 0x004E67 01:AE57: FC        .byte $FC, $BD, $09   ; 
- D 1 - I - 0x004E6A 01:AE5A: 04        .byte $04, $BB, $09   ; 
- D 1 - I - 0x004E6D 01:AE5D: 04        .byte $04, $B9, $F9   ; 



off_0B_AE60_0F:
- D 1 - I - 0x004E70 01:AE60: 82        .byte $82   ; counter
- D 1 - I - 0x004E71 01:AE61: C1        .byte $C1   ; spr_A
- D 1 - I - 0x004E72 01:AE62: FE        .byte $FE, $91, $0C   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E75 01:AE65: F6        .byte $F6, $93, $0C   ; 

- D 1 - I - 0x004E78 01:AE68: 83        .byte $83   ; 
- D 1 - I - 0x004E79 01:AE69: C2        .byte $C2   ; 
- D 1 - I - 0x004E7A 01:AE6A: FE        .byte $FE, $99, $FC   ; 
- D 1 - I - 0x004E7D 01:AE6D: F6        .byte $F6, $9B, $FC   ; 
- D 1 - I - 0x004E80 01:AE70: F6        .byte $F6, $BF, $EC   ; 

- D 1 - I - 0x004E83 01:AE73: 03        .byte $03   ; 
- D 1 - I - 0x004E84 01:AE74: C0        .byte $C0   ; 
- D 1 - I - 0x004E85 01:AE75: FE        .byte $FE, $BD, $EC   ; 
- D 1 - I - 0x004E88 01:AE78: 06        .byte $06, $BB, $EC   ; 
- D 1 - I - 0x004E8B 01:AE7B: 06        .byte $06, $B9, $FC   ; 



off_0B_AE7E_10:
- D 1 - I - 0x004E8E 01:AE7E: 82        .byte $82   ; counter
- D 1 - I - 0x004E8F 01:AE7F: 81        .byte $81   ; spr_A
- D 1 - I - 0x004E90 01:AE80: F9        .byte $F9, $91, $09   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004E93 01:AE83: 01        .byte $01, $93, $09   ; 

- D 1 - I - 0x004E96 01:AE86: 82        .byte $82   ; 
- D 1 - I - 0x004E97 01:AE87: 82        .byte $82   ; 
- D 1 - I - 0x004E98 01:AE88: F9        .byte $F9, $99, $F9   ; 
- D 1 - I - 0x004E9B 01:AE8B: 01        .byte $01, $9B, $F9   ; 

- D 1 - I - 0x004E9E 01:AE8E: 83        .byte $83   ; 
- D 1 - I - 0x004E9F 01:AE8F: 80        .byte $80   ; 
- D 1 - I - 0x004EA0 01:AE90: F1        .byte $F1, $B9, $F9   ; 
- D 1 - I - 0x004EA3 01:AE93: F1        .byte $F1, $BB, $E9   ; 
- D 1 - I - 0x004EA6 01:AE96: F9        .byte $F9, $BD, $E9   ; 

- D 1 - I - 0x004EA9 01:AE99: 01        .byte $01   ; 
- D 1 - I - 0x004EAA 01:AE9A: 82        .byte $82   ; 
- D 1 - I - 0x004EAB 01:AE9B: 01        .byte $01, $BF, $E9   ; 



off_0B_AE9E_01:
- D 1 - I - 0x004EAE 01:AE9E: 82        .byte $82   ; counter
- D 1 - I - 0x004EAF 01:AE9F: 01        .byte $01   ; spr_A
- D 1 - I - 0x004EB0 01:AEA0: FB        .byte $FB, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004EB3 01:AEA3: 03        .byte $03, $93, $E0   ; 

- D 1 - I - 0x004EB6 01:AEA6: 81        .byte $81   ; 
- D 1 - I - 0x004EB7 01:AEA7: 02        .byte $02   ; 
- D 1 - I - 0x004EB8 01:AEA8: 03        .byte $03, $9B, $F0   ; 

- D 1 - I - 0x004EBB 01:AEAB: 83        .byte $83   ; 
- D 1 - I - 0x004EBC 01:AEAC: 00        .byte $00   ; 
- D 1 - I - 0x004EBD 01:AEAD: F9        .byte $F9, $9D, $00   ; 
- D 1 - I - 0x004EC0 01:AEB0: 01        .byte $01, $9F, $00   ; 
- D 1 - I - 0x004EC3 01:AEB3: 01        .byte $01, $A1, $10   ; 

- D 1 - I - 0x004EC6 01:AEB6: 81        .byte $81   ; 
- D 1 - I - 0x004EC7 01:AEB7: 02        .byte $02   ; 
- D 1 - I - 0x004EC8 01:AEB8: FB        .byte $FB, $A7, $F0   ; 

- D 1 - I - 0x004ECB 01:AEBB: 81        .byte $81   ; 
- D 1 - I - 0x004ECC 01:AEBC: 01        .byte $01   ; 
- D 1 - I - 0x004ECD 01:AEBD: F3        .byte $F3, $A5, $F0   ; 

- D 1 - I - 0x004ED0 01:AEC0: 01        .byte $01   ; 
- D 1 - I - 0x004ED1 01:AEC1: 00        .byte $00   ; 
- D 1 - I - 0x004ED2 01:AEC2: F3        .byte $F3, $A3, $E0   ; 



off_0B_AEC5_02:
- D 1 - I - 0x004ED5 01:AEC5: 83        .byte $83   ; counter
- D 1 - I - 0x004ED6 01:AEC6: 00        .byte $00   ; spr_A
- D 1 - I - 0x004ED7 01:AEC7: F9        .byte $F9, $81, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004EDA 01:AECA: 01        .byte $01, $83, $00   ; 
- D 1 - I - 0x004EDD 01:AECD: 01        .byte $01, $85, $10   ; 

- D 1 - I - 0x004EE0 01:AED0: 81        .byte $81   ; 
- D 1 - I - 0x004EE1 01:AED1: 01        .byte $01   ; 
- D 1 - I - 0x004EE2 01:AED2: F1        .byte $F1, $87, $F0   ; 

- D 1 - I - 0x004EE5 01:AED5: 81        .byte $81   ; 
- D 1 - I - 0x004EE6 01:AED6: 00        .byte $00   ; 
- D 1 - I - 0x004EE7 01:AED7: F1        .byte $F1, $8F, $00   ; 

- D 1 - I - 0x004EEA 01:AEDA: 03        .byte $03   ; 
- D 1 - I - 0x004EEB 01:AEDB: 02        .byte $02   ; 
- D 1 - I - 0x004EEC 01:AEDC: F9        .byte $F9, $91, $00   ; 
- D 1 - I - 0x004EEF 01:AEDF: F9        .byte $F9, $8B, $F0   ; 
- D 1 - I - 0x004EF2 01:AEE2: 01        .byte $01, $8D, $F0   ; 



off_0B_AEE5_03:
- D 1 - I - 0x004EF5 01:AEE5: 83        .byte $83   ; counter
- D 1 - I - 0x004EF6 01:AEE6: 00        .byte $00   ; spr_A
- D 1 - I - 0x004EF7 01:AEE7: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004EFA 01:AEEA: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004EFD 01:AEED: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F00 01:AEF0: 83        .byte $83   ; 
- D 1 - I - 0x004F01 01:AEF1: 02        .byte $02   ; 
- D 1 - I - 0x004F02 01:AEF2: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F05 01:AEF5: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F08 01:AEF8: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F0B 01:AEFB: 81        .byte $81   ; 
- D 1 - I - 0x004F0C 01:AEFC: 01        .byte $01   ; 
- D 1 - I - 0x004F0D 01:AEFD: E8        .byte $E8, $93, $F9   ; 

- D 1 - I - 0x004F10 01:AF00: 01        .byte $01   ; 
- D 1 - I - 0x004F11 01:AF01: 00        .byte $00   ; 
- D 1 - I - 0x004F12 01:AF02: E8        .byte $E8, $9B, $09   ; 



off_0B_AF05_04:
- D 1 - I - 0x004F15 01:AF05: 83        .byte $83   ; counter
- D 1 - I - 0x004F16 01:AF06: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F17 01:AF07: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F1A 01:AF0A: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F1D 01:AF0D: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F20 01:AF10: 83        .byte $83   ; 
- D 1 - I - 0x004F21 01:AF11: 02        .byte $02   ; 
- D 1 - I - 0x004F22 01:AF12: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F25 01:AF15: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F28 01:AF18: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F2B 01:AF1B: 81        .byte $81   ; 
- D 1 - I - 0x004F2C 01:AF1C: 01        .byte $01   ; 
- D 1 - I - 0x004F2D 01:AF1D: E8        .byte $E8, $87, $F9   ; 

- D 1 - I - 0x004F30 01:AF20: 01        .byte $01   ; 
- D 1 - I - 0x004F31 01:AF21: 00        .byte $00   ; 
- D 1 - I - 0x004F32 01:AF22: E8        .byte $E8, $89, $09   ; 



off_0B_AF25_05:
- D 1 - I - 0x004F35 01:AF25: 83        .byte $83   ; counter
- D 1 - I - 0x004F36 01:AF26: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F37 01:AF27: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F3A 01:AF2A: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F3D 01:AF2D: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F40 01:AF30: 83        .byte $83   ; 
- D 1 - I - 0x004F41 01:AF31: 02        .byte $02   ; 
- D 1 - I - 0x004F42 01:AF32: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F45 01:AF35: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F48 01:AF38: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F4B 01:AF3B: 81        .byte $81   ; 
- D 1 - I - 0x004F4C 01:AF3C: 03        .byte $03   ; 
- D 1 - I - 0x004F4D 01:AF3D: E1        .byte $E1, $C1, $F8   ; 

- D 1 - I - 0x004F50 01:AF40: 81        .byte $81   ; 
- D 1 - I - 0x004F51 01:AF41: 43        .byte $43   ; 
- D 1 - I - 0x004F52 01:AF42: E9        .byte $E9, $C1, $F8   ; 

- D 1 - I - 0x004F55 01:AF45: 81        .byte $81   ; 
- D 1 - I - 0x004F56 01:AF46: 01        .byte $01   ; 
- D 1 - I - 0x004F57 01:AF47: E8        .byte $E8, $93, $F9   ; 

- D 1 - I - 0x004F5A 01:AF4A: 01        .byte $01   ; 
- D 1 - I - 0x004F5B 01:AF4B: 00        .byte $00   ; 
- D 1 - I - 0x004F5C 01:AF4C: E8        .byte $E8, $9B, $09   ; 



off_0B_AF4F_06:
- D 1 - I - 0x004F5F 01:AF4F: 83        .byte $83   ; counter
- D 1 - I - 0x004F60 01:AF50: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F61 01:AF51: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F64 01:AF54: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F67 01:AF57: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F6A 01:AF5A: 83        .byte $83   ; 
- D 1 - I - 0x004F6B 01:AF5B: 02        .byte $02   ; 
- D 1 - I - 0x004F6C 01:AF5C: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F6F 01:AF5F: F0        .byte $F0, $95, $F9   ; 
- D 1 - I - 0x004F72 01:AF62: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F75 01:AF65: 81        .byte $81   ; 
- D 1 - I - 0x004F76 01:AF66: 01        .byte $01   ; 
- D 1 - I - 0x004F77 01:AF67: E8        .byte $E8, $93, $F9   ; 

- D 1 - I - 0x004F7A 01:AF6A: 82        .byte $82   ; 
- D 1 - I - 0x004F7B 01:AF6B: 00        .byte $00   ; 
- D 1 - I - 0x004F7C 01:AF6C: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004F7F 01:AF6F: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x004F82 01:AF72: 01        .byte $01   ; 
- D 1 - I - 0x004F83 01:AF73: 02        .byte $02   ; 
- D 1 - I - 0x004F84 01:AF74: F0        .byte $F0, $A5, $E9   ; 



off_0B_AF77_07:
- D 1 - I - 0x004F87 01:AF77: 83        .byte $83   ; counter
- D 1 - I - 0x004F88 01:AF78: 00        .byte $00   ; spr_A
- D 1 - I - 0x004F89 01:AF79: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004F8C 01:AF7C: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004F8F 01:AF7F: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004F92 01:AF82: 82        .byte $82   ; 
- D 1 - I - 0x004F93 01:AF83: 02        .byte $02   ; 
- D 1 - I - 0x004F94 01:AF84: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004F97 01:AF87: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004F9A 01:AF8A: 82        .byte $82   ; 
- D 1 - I - 0x004F9B 01:AF8B: 00        .byte $00   ; 
- D 1 - I - 0x004F9C 01:AF8C: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004F9F 01:AF8F: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x004FA2 01:AF92: 81        .byte $81   ; 
- D 1 - I - 0x004FA3 01:AF93: 02        .byte $02   ; 
- D 1 - I - 0x004FA4 01:AF94: F0        .byte $F0, $A5, $E9   ; 

- D 1 - I - 0x004FA7 01:AF97: 81        .byte $81   ; 
- D 1 - I - 0x004FA8 01:AF98: 01        .byte $01   ; 
- D 1 - I - 0x004FA9 01:AF99: E8        .byte $E8, $AB, $F9   ; 

- D 1 - I - 0x004FAC 01:AF9C: 01        .byte $01   ; 
- D 1 - I - 0x004FAD 01:AF9D: 02        .byte $02   ; 
- D 1 - I - 0x004FAE 01:AF9E: F0        .byte $F0, $A9, $F9   ; 



off_0B_AFA1_08:
- D 1 - I - 0x004FB1 01:AFA1: 83        .byte $83   ; counter
- D 1 - I - 0x004FB2 01:AFA2: 00        .byte $00   ; spr_A
- D 1 - I - 0x004FB3 01:AFA3: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004FB6 01:AFA6: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004FB9 01:AFA9: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004FBC 01:AFAC: 82        .byte $82   ; 
- D 1 - I - 0x004FBD 01:AFAD: 02        .byte $02   ; 
- D 1 - I - 0x004FBE 01:AFAE: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004FC1 01:AFB1: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004FC4 01:AFB4: 82        .byte $82   ; 
- D 1 - I - 0x004FC5 01:AFB5: 00        .byte $00   ; 
- D 1 - I - 0x004FC6 01:AFB6: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004FC9 01:AFB9: E9        .byte $E9, $A3, $EA   ; 

- D 1 - I - 0x004FCC 01:AFBC: 81        .byte $81   ; 
- D 1 - I - 0x004FCD 01:AFBD: 02        .byte $02   ; 
- D 1 - I - 0x004FCE 01:AFBE: F1        .byte $F1, $A5, $EA   ; 

- D 1 - I - 0x004FD1 01:AFC1: 81        .byte $81   ; 
- D 1 - I - 0x004FD2 01:AFC2: 01        .byte $01   ; 
- D 1 - I - 0x004FD3 01:AFC3: E8        .byte $E8, $AB, $F8   ; 

- D 1 - I - 0x004FD6 01:AFC6: 81        .byte $81   ; 
- D 1 - I - 0x004FD7 01:AFC7: 02        .byte $02   ; 
- D 1 - I - 0x004FD8 01:AFC8: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x004FDB 01:AFCB: 01        .byte $01   ; 
- D 1 - I - 0x004FDC 01:AFCC: 03        .byte $03   ; 
- D 1 - I - 0x004FDD 01:AFCD: E8        .byte $E8, $B7, $D9   ; 



off_0B_AFD0_09:
- D 1 - I - 0x004FE0 01:AFD0: 83        .byte $83   ; counter
- D 1 - I - 0x004FE1 01:AFD1: 00        .byte $00   ; spr_A
- D 1 - I - 0x004FE2 01:AFD2: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x004FE5 01:AFD5: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x004FE8 01:AFD8: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x004FEB 01:AFDB: 82        .byte $82   ; 
- D 1 - I - 0x004FEC 01:AFDC: 02        .byte $02   ; 
- D 1 - I - 0x004FED 01:AFDD: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x004FF0 01:AFE0: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x004FF3 01:AFE3: 82        .byte $82   ; 
- D 1 - I - 0x004FF4 01:AFE4: 00        .byte $00   ; 
- D 1 - I - 0x004FF5 01:AFE5: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x004FF8 01:AFE8: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x004FFB 01:AFEB: 82        .byte $82   ; 
- D 1 - I - 0x004FFC 01:AFEC: 02        .byte $02   ; 
- D 1 - I - 0x004FFD 01:AFED: F0        .byte $F0, $A5, $E9   ; 
- D 1 - I - 0x005000 01:AFF0: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x005003 01:AFF3: 81        .byte $81   ; 
- D 1 - I - 0x005004 01:AFF4: 01        .byte $01   ; 
- D 1 - I - 0x005005 01:AFF5: E8        .byte $E8, $A7, $F9   ; 

- D 1 - I - 0x005008 01:AFF8: 81        .byte $81   ; 
- D 1 - I - 0x005009 01:AFF9: 03        .byte $03   ; 
- D 1 - I - 0x00500A 01:AFFA: E4        .byte $E4, $BB, $D7   ; 

- D 1 - I - 0x00500D 01:AFFD: 01        .byte $01   ; 
- D 1 - I - 0x00500E 01:AFFE: 43        .byte $43   ; 
- D 1 - I - 0x00500F 01:AFFF: EC        .byte $EC, $BB, $D7   ; 



off_0B_B002_0A:
- D 1 - I - 0x005012 01:B002: 83        .byte $83   ; counter
- D 1 - I - 0x005013 01:B003: 00        .byte $00   ; spr_A
- D 1 - I - 0x005014 01:B004: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005017 01:B007: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x00501A 01:B00A: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x00501D 01:B00D: 82        .byte $82   ; 
- D 1 - I - 0x00501E 01:B00E: 02        .byte $02   ; 
- D 1 - I - 0x00501F 01:B00F: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x005022 01:B012: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x005025 01:B015: 82        .byte $82   ; 
- D 1 - I - 0x005026 01:B016: 00        .byte $00   ; 
- D 1 - I - 0x005027 01:B017: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x00502A 01:B01A: E9        .byte $E9, $A3, $E9   ; 

- D 1 - I - 0x00502D 01:B01D: 81        .byte $81   ; 
- D 1 - I - 0x00502E 01:B01E: 02        .byte $02   ; 
- D 1 - I - 0x00502F 01:B01F: F1        .byte $F1, $A5, $E9   ; 

- D 1 - I - 0x005032 01:B022: 81        .byte $81   ; 
- D 1 - I - 0x005033 01:B023: 01        .byte $01   ; 
- D 1 - I - 0x005034 01:B024: E8        .byte $E8, $AB, $F9   ; 

- D 1 - I - 0x005037 01:B027: 81        .byte $81   ; 
- D 1 - I - 0x005038 01:B028: 02        .byte $02   ; 
- D 1 - I - 0x005039 01:B029: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x00503C 01:B02C: 81        .byte $81   ; 
- D 1 - I - 0x00503D 01:B02D: 03        .byte $03   ; 
- D 1 - I - 0x00503E 01:B02E: E4        .byte $E4, $BB, $C9   ; 

- D 1 - I - 0x005041 01:B031: 81        .byte $81   ; 
- D 1 - I - 0x005042 01:B032: 43        .byte $43   ; 
- D 1 - I - 0x005043 01:B033: EC        .byte $EC, $BB, $C9   ; 

- D 1 - I - 0x005046 01:B036: 81        .byte $81   ; 
- D 1 - I - 0x005047 01:B037: 03        .byte $03   ; 
- D 1 - I - 0x005048 01:B038: E4        .byte $E4, $BD, $D9   ; 

- D 1 - I - 0x00504B 01:B03B: 01        .byte $01   ; 
- D 1 - I - 0x00504C 01:B03C: 43        .byte $43   ; 
- D 1 - I - 0x00504D 01:B03D: EC        .byte $EC, $BD, $D9   ; 



off_0B_B040_0B:
- D 1 - I - 0x005050 01:B040: 83        .byte $83   ; counter
- D 1 - I - 0x005051 01:B041: 00        .byte $00   ; spr_A
- D 1 - I - 0x005052 01:B042: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005055 01:B045: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x005058 01:B048: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x00505B 01:B04B: 82        .byte $82   ; 
- D 1 - I - 0x00505C 01:B04C: 02        .byte $02   ; 
- D 1 - I - 0x00505D 01:B04D: F8        .byte $F8, $97, $F9   ; 
- D 1 - I - 0x005060 01:B050: F0        .byte $F0, $9D, $09   ; 

- D 1 - I - 0x005063 01:B053: 82        .byte $82   ; 
- D 1 - I - 0x005064 01:B054: 00        .byte $00   ; 
- D 1 - I - 0x005065 01:B055: E8        .byte $E8, $9B, $09   ; 
- D 1 - I - 0x005068 01:B058: E8        .byte $E8, $A3, $E9   ; 

- D 1 - I - 0x00506B 01:B05B: 82        .byte $82   ; 
- D 1 - I - 0x00506C 01:B05C: 02        .byte $02   ; 
- D 1 - I - 0x00506D 01:B05D: F0        .byte $F0, $A5, $E9   ; 
- D 1 - I - 0x005070 01:B060: F0        .byte $F0, $A9, $F9   ; 

- D 1 - I - 0x005073 01:B063: 81        .byte $81   ; 
- D 1 - I - 0x005074 01:B064: 03        .byte $03   ; 
- D 1 - I - 0x005075 01:B065: E4        .byte $E4, $BF, $C8   ; 

- D 1 - I - 0x005078 01:B068: 81        .byte $81   ; 
- D 1 - I - 0x005079 01:B069: 43        .byte $43   ; 
- D 1 - I - 0x00507A 01:B06A: EC        .byte $EC, $BF, $C8   ; 

- D 1 - I - 0x00507D 01:B06D: 01        .byte $01   ; 
- D 1 - I - 0x00507E 01:B06E: 01        .byte $01   ; 
- D 1 - I - 0x00507F 01:B06F: E8        .byte $E8, $A7, $F8   ; 



off_0B_B072_0C:
- D 1 - I - 0x005082 01:B072: 83        .byte $83   ; counter
- D 1 - I - 0x005083 01:B073: 00        .byte $00   ; spr_A
- D 1 - I - 0x005084 01:B074: 00        .byte $00, $99, $F9   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005087 01:B077: F8        .byte $F8, $9F, $09   ; 
- D 1 - I - 0x00508A 01:B07A: 00        .byte $00, $A1, $09   ; 

- D 1 - I - 0x00508D 01:B07D: 81        .byte $81   ; 
- D 1 - I - 0x00508E 01:B07E: 01        .byte $01   ; 
- D 1 - I - 0x00508F 01:B07F: E8        .byte $E8, $AD, $F9   ; 

- D 1 - I - 0x005092 01:B082: 82        .byte $82   ; 
- D 1 - I - 0x005093 01:B083: 02        .byte $02   ; 
- D 1 - I - 0x005094 01:B084: F0        .byte $F0, $AF, $F9   ; 
- D 1 - I - 0x005097 01:B087: F8        .byte $F8, $B1, $F9   ; 

- D 1 - I - 0x00509A 01:B08A: 81        .byte $81   ; 
- D 1 - I - 0x00509B 01:B08B: 01        .byte $01   ; 
- D 1 - I - 0x00509C 01:B08C: E8        .byte $E8, $B3, $09   ; 

- D 1 - I - 0x00509F 01:B08F: 01        .byte $01   ; 
- D 1 - I - 0x0050A0 01:B090: 02        .byte $02   ; 
- D 1 - I - 0x0050A1 01:B091: F0        .byte $F0, $B5, $09   ; 



off_0B_B094_11:
off_FF_B094:
- D 1 - I - 0x0050A4 01:B094: 84        .byte $84   ; counter
- D 1 - I - 0x0050A5 01:B095: 01        .byte $01   ; spr_A
- D 1 - I - 0x0050A6 01:B096: F1        .byte $F1, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0050A9 01:B099: F9        .byte $F9, $83, $F1   ; 
- D 1 - I - 0x0050AC 01:B09C: 01        .byte $01, $85, $F1   ; 
- D 1 - I - 0x0050AF 01:B09F: 09        .byte $09, $87, $F9   ; 

- D 1 - I - 0x0050B2 01:B0A2: 82        .byte $82   ; 
- D 1 - I - 0x0050B3 01:B0A3: 02        .byte $02   ; 
- D 1 - I - 0x0050B4 01:B0A4: F1        .byte $F1, $89, $01   ; 
- D 1 - I - 0x0050B7 01:B0A7: F9        .byte $F9, $8B, $01   ; 

- D 1 - I - 0x0050BA 01:B0AA: 81        .byte $81   ; 
- D 1 - I - 0x0050BB 01:B0AB: 01        .byte $01   ; 
- D 1 - I - 0x0050BC 01:B0AC: 01        .byte $01, $8D, $01   ; 

- D 1 - I - 0x0050BF 01:B0AF: 03        .byte $03   ; 
- D 1 - I - 0x0050C0 01:B0B0: 02        .byte $02   ; 
- D 1 - I - 0x0050C1 01:B0B1: F1        .byte $F1, $8F, $11   ; 
- D 1 - I - 0x0050C4 01:B0B4: F9        .byte $F9, $91, $11   ; 
- D 1 - I - 0x0050C7 01:B0B7: 01        .byte $01, $93, $11   ; 



off_0B_B0BA_12:
off_FF_B0BA:
- D 1 - I - 0x0050CA 01:B0BA: 82        .byte $82   ; counter
- D 1 - I - 0x0050CB 01:B0BB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0050CC 01:B0BC: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0050CF 01:B0BF: 01        .byte $01, $97, $F1   ; 

- D 1 - I - 0x0050D2 01:B0C2: 82        .byte $82   ; 
- D 1 - I - 0x0050D3 01:B0C3: 02        .byte $02   ; 
- D 1 - I - 0x0050D4 01:B0C4: F1        .byte $F1, $99, $01   ; 
- D 1 - I - 0x0050D7 01:B0C7: F9        .byte $F9, $9B, $01   ; 

- D 1 - I - 0x0050DA 01:B0CA: 82        .byte $82   ; 
- D 1 - I - 0x0050DB 01:B0CB: 01        .byte $01   ; 
- D 1 - I - 0x0050DC 01:B0CC: 01        .byte $01, $9D, $01   ; 
- D 1 - I - 0x0050DF 01:B0CF: 09        .byte $09, $9F, $01   ; 

- D 1 - I - 0x0050E2 01:B0D2: 02        .byte $02   ; 
- D 1 - I - 0x0050E3 01:B0D3: 02        .byte $02   ; 
- D 1 - I - 0x0050E4 01:B0D4: F1        .byte $F1, $A1, $11   ; 
- D 1 - I - 0x0050E7 01:B0D7: F9        .byte $F9, $A3, $11   ; 



off_0B_B0DA_13:
off_FF_B0DA:
- D 1 - I - 0x0050EA 01:B0DA: 83        .byte $83   ; counter
- D 1 - I - 0x0050EB 01:B0DB: 01        .byte $01   ; spr_A
- D 1 - I - 0x0050EC 01:B0DC: F9        .byte $F9, $A5, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0050EF 01:B0DF: 01        .byte $01, $A7, $F1   ; 
- D 1 - I - 0x0050F2 01:B0E2: 09        .byte $09, $A9, $F1   ; 

- D 1 - I - 0x0050F5 01:B0E5: 82        .byte $82   ; 
- D 1 - I - 0x0050F6 01:B0E6: 02        .byte $02   ; 
- D 1 - I - 0x0050F7 01:B0E7: F9        .byte $F9, $AB, $01   ; 
- D 1 - I - 0x0050FA 01:B0EA: 01        .byte $01, $AD, $01   ; 

- D 1 - I - 0x0050FD 01:B0ED: 81        .byte $81   ; 
- D 1 - I - 0x0050FE 01:B0EE: 01        .byte $01   ; 
- D 1 - I - 0x0050FF 01:B0EF: 09        .byte $09, $AF, $01   ; 

- D 1 - I - 0x005102 01:B0F2: 83        .byte $83   ; 
- D 1 - I - 0x005103 01:B0F3: 02        .byte $02   ; 
- D 1 - I - 0x005104 01:B0F4: F1        .byte $F1, $B1, $11   ; 
- D 1 - I - 0x005107 01:B0F7: F9        .byte $F9, $B3, $11   ; 
- D 1 - I - 0x00510A 01:B0FA: 01        .byte $01, $B5, $11   ; 

- D 1 - I - 0x00510D 01:B0FD: 01        .byte $01   ; 
- D 1 - I - 0x00510E 01:B0FE: 01        .byte $01   ; 
- D 1 - I - 0x00510F 01:B0FF: 11        .byte $11, $9F, $FB   ; 



off_0B_B102_14:
off_FF_B102:
- D 1 - I - 0x005112 01:B102: 82        .byte $82   ; counter
- D 1 - I - 0x005113 01:B103: 01        .byte $01   ; spr_A
- D 1 - I - 0x005114 01:B104: F9        .byte $F9, $95, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005117 01:B107: 01        .byte $01, $97, $F1   ; 

- D 1 - I - 0x00511A 01:B10A: 82        .byte $82   ; 
- D 1 - I - 0x00511B 01:B10B: 02        .byte $02   ; 
- D 1 - I - 0x00511C 01:B10C: F1        .byte $F1, $99, $01   ; 
- D 1 - I - 0x00511F 01:B10F: F9        .byte $F9, $B7, $01   ; 

- D 1 - I - 0x005122 01:B112: 81        .byte $81   ; 
- D 1 - I - 0x005123 01:B113: 01        .byte $01   ; 
- D 1 - I - 0x005124 01:B114: 01        .byte $01, $B9, $01   ; 

- D 1 - I - 0x005127 01:B117: 83        .byte $83   ; 
- D 1 - I - 0x005128 01:B118: 02        .byte $02   ; 
- D 1 - I - 0x005129 01:B119: F1        .byte $F1, $BB, $11   ; 
- D 1 - I - 0x00512C 01:B11C: F9        .byte $F9, $BD, $11   ; 
- D 1 - I - 0x00512F 01:B11F: 01        .byte $01, $BF, $11   ; 

- D 1 - I - 0x005132 01:B122: 01        .byte $01   ; 
- D 1 - I - 0x005133 01:B123: 01        .byte $01   ; 
- D 1 - I - 0x005134 01:B124: 09        .byte $09, $9F, $01   ; 



off_0B_B127_15:
- D 1 - I - 0x005137 01:B127: FF        .byte $FF   ; 
- D 1 - I - 0x005138 01:B128: 94 B0     .word off_FF_B094



off_0B_B12A_16:
- - - - - - 0x00513A 01:B12A: FF        .byte $FF   ; 
- - - - - - 0x00513B 01:B12B: BA B0     .word off_FF_B0BA



off_0B_B12D_17:
- - - - - - 0x00513D 01:B12D: FF        .byte $FF   ; 
- - - - - - 0x00513E 01:B12E: DA B0     .word off_FF_B0DA



off_0B_B130_18:
- - - - - - 0x005140 01:B130: FF        .byte $FF   ; 
- - - - - - 0x005141 01:B131: 02 B1     .word off_FF_B102



off_0B_B133_19:
off_FF_B133:
- D 1 - I - 0x005143 01:B133: 85        .byte $85   ; counter
- D 1 - I - 0x005144 01:B134: 01        .byte $01   ; spr_A
- D 1 - I - 0x005145 01:B135: F8        .byte $F8, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005148 01:B138: 00        .byte $00, $83, $F1   ; 
- D 1 - I - 0x00514B 01:B13B: 08        .byte $08, $85, $F1   ; 
- D 1 - I - 0x00514E 01:B13E: E8        .byte $E8, $87, $01   ; 
- D 1 - I - 0x005151 01:B141: F0        .byte $F0, $89, $01   ; 

- D 1 - I - 0x005154 01:B144: 07        .byte $07   ; 
- D 1 - I - 0x005155 01:B145: 02        .byte $02   ; 
- D 1 - I - 0x005156 01:B146: F8        .byte $F8, $8B, $01   ; 
- D 1 - I - 0x005159 01:B149: 00        .byte $00, $8D, $01   ; 
- D 1 - I - 0x00515C 01:B14C: 08        .byte $08, $8F, $01   ; 
- D 1 - I - 0x00515F 01:B14F: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x005162 01:B152: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x005165 01:B155: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x005168 01:B158: 08        .byte $08, $97, $11   ; 



off_0B_B15B_1A:
off_FF_B15B:
- D 1 - I - 0x00516B 01:B15B: 84        .byte $84   ; counter
- D 1 - I - 0x00516C 01:B15C: 01        .byte $01   ; spr_A
- D 1 - I - 0x00516D 01:B15D: F0        .byte $F0, $99, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005170 01:B160: F8        .byte $F8, $9B, $F1   ; 
- D 1 - I - 0x005173 01:B163: 00        .byte $00, $9D, $F1   ; 
- D 1 - I - 0x005176 01:B166: 08        .byte $08, $9F, $F1   ; 

- D 1 - I - 0x005179 01:B169: 06        .byte $06   ; 
- D 1 - I - 0x00517A 01:B16A: 02        .byte $02   ; 
- D 1 - I - 0x00517B 01:B16B: F8        .byte $F8, $A1, $01   ; 
- D 1 - I - 0x00517E 01:B16E: 00        .byte $00, $A3, $01   ; 
- D 1 - I - 0x005181 01:B171: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x005184 01:B174: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x005187 01:B177: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x00518A 01:B17A: 08        .byte $08, $97, $11   ; 



off_0B_B17D_1B:
off_FF_B17D:
- D 1 - I - 0x00518D 01:B17D: 84        .byte $84   ; counter
- D 1 - I - 0x00518E 01:B17E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00518F 01:B17F: FD        .byte $FD, $A5, $E1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005192 01:B182: F8        .byte $F8, $A7, $F1   ; 
- D 1 - I - 0x005195 01:B185: 00        .byte $00, $A9, $F1   ; 
- D 1 - I - 0x005198 01:B188: F0        .byte $F0, $AB, $01   ; 

- D 1 - I - 0x00519B 01:B18B: 06        .byte $06   ; 
- D 1 - I - 0x00519C 01:B18C: 02        .byte $02   ; 
- D 1 - I - 0x00519D 01:B18D: F8        .byte $F8, $AD, $01   ; 
- D 1 - I - 0x0051A0 01:B190: 00        .byte $00, $AF, $01   ; 
- D 1 - I - 0x0051A3 01:B193: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x0051A6 01:B196: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x0051A9 01:B199: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x0051AC 01:B19C: 08        .byte $08, $97, $11   ; 



off_0B_B19F_1C:
off_FF_B19F:
- D 1 - I - 0x0051AF 01:B19F: 83        .byte $83   ; counter
- D 1 - I - 0x0051B0 01:B1A0: 01        .byte $01   ; spr_A
- D 1 - I - 0x0051B1 01:B1A1: F0        .byte $F0, $B1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0051B4 01:B1A4: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x0051B7 01:B1A7: 00        .byte $00, $B5, $F1   ; 

- D 1 - I - 0x0051BA 01:B1AA: 81        .byte $81   ; 
- D 1 - I - 0x0051BB 01:B1AB: 02        .byte $02   ; 
- D 1 - I - 0x0051BC 01:B1AC: E8        .byte $E8, $B7, $01   ; 

- D 1 - I - 0x0051BF 01:B1AF: 82        .byte $82   ; 
- D 1 - I - 0x0051C0 01:B1B0: 01        .byte $01   ; 
- D 1 - I - 0x0051C1 01:B1B1: F0        .byte $F0, $B9, $01   ; 
- D 1 - I - 0x0051C4 01:B1B4: F8        .byte $F8, $BB, $01   ; 

- D 1 - I - 0x0051C7 01:B1B7: 05        .byte $05   ; 
- D 1 - I - 0x0051C8 01:B1B8: 02        .byte $02   ; 
- D 1 - I - 0x0051C9 01:B1B9: 00        .byte $00, $BD, $01   ; 
- D 1 - I - 0x0051CC 01:B1BC: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x0051CF 01:B1BF: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x0051D2 01:B1C2: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x0051D5 01:B1C5: 08        .byte $08, $97, $11   ; 



off_0B_B1C8_1D:
off_FF_B1C8:
- D 1 - I - 0x0051D8 01:B1C8: 84        .byte $84   ; counter
- D 1 - I - 0x0051D9 01:B1C9: 01        .byte $01   ; spr_A
- D 1 - I - 0x0051DA 01:B1CA: F0        .byte $F0, $B1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0051DD 01:B1CD: F8        .byte $F8, $B3, $F1   ; 
- D 1 - I - 0x0051E0 01:B1D0: 00        .byte $00, $B5, $F1   ; 
- D 1 - I - 0x0051E3 01:B1D3: F8        .byte $F8, $BB, $01   ; 

- D 1 - I - 0x0051E6 01:B1D6: 85        .byte $85   ; 
- D 1 - I - 0x0051E7 01:B1D7: 02        .byte $02   ; 
- D 1 - I - 0x0051E8 01:B1D8: 00        .byte $00, $BD, $01   ; 
- D 1 - I - 0x0051EB 01:B1DB: F0        .byte $F0, $91, $11   ; 
- D 1 - I - 0x0051EE 01:B1DE: F8        .byte $F8, $93, $11   ; 
- D 1 - I - 0x0051F1 01:B1E1: 00        .byte $00, $95, $11   ; 
- D 1 - I - 0x0051F4 01:B1E4: 08        .byte $08, $97, $11   ; 

- D 1 - I - 0x0051F7 01:B1E7: 01        .byte $01   ; 
- D 1 - I - 0x0051F8 01:B1E8: 01        .byte $01   ; 
- D 1 - I - 0x0051F9 01:B1E9: F0        .byte $F0, $BF, $01   ; 



off_0B_B1EC_1E:
- D 1 - I - 0x0051FC 01:B1EC: FF        .byte $FF   ; 
- D 1 - I - 0x0051FD 01:B1ED: 33 B1     .word off_FF_B133



off_0B_B1EF_1F:
- D 1 - I - 0x0051FF 01:B1EF: FF        .byte $FF   ; 
- D 1 - I - 0x005200 01:B1F0: 5B B1     .word off_FF_B15B



off_0B_B1F2_20:
- D 1 - I - 0x005202 01:B1F2: FF        .byte $FF   ; 
- D 1 - I - 0x005203 01:B1F3: 7D B1     .word off_FF_B17D



off_0B_B1F5_21:
- D 1 - I - 0x005205 01:B1F5: FF        .byte $FF   ; 
- D 1 - I - 0x005206 01:B1F6: 9F B1     .word off_FF_B19F



off_0B_B1F8_22:
- D 1 - I - 0x005208 01:B1F8: FF        .byte $FF   ; 
- D 1 - I - 0x005209 01:B1F9: C8 B1     .word off_FF_B1C8



_off032_0x00520B_08:
- - - - - - 0x00520B 01:B1FB: 83 B2     .word off_08_B283_00
- - - - - - 0x00520D 01:B1FD: 83 B2     .word off_08_B283_01
- - - - - - 0x00520F 01:B1FF: 83 B2     .word off_08_B283_02
- - - - - - 0x005211 01:B201: 83 B2     .word off_08_B283_03
- - - - - - 0x005213 01:B203: 83 B2     .word off_08_B283_04
- D 1 - I - 0x005215 01:B205: 83 B2     .word off_08_B283_05
- D 1 - I - 0x005217 01:B207: DF B2     .word off_08_B2DF_06
- D 1 - I - 0x005219 01:B209: 3B B3     .word off_08_B33B_07
- D 1 - I - 0x00521B 01:B20B: 97 B3     .word off_08_B397_08
- D 1 - I - 0x00521D 01:B20D: F3 B3     .word off_08_B3F3_09
- D 1 - I - 0x00521F 01:B20F: FD B3     .word off_08_B3FD_0A
- D 1 - I - 0x005221 01:B211: 05 B4     .word off_08_B405_0B
- D 1 - I - 0x005223 01:B213: 0D B4     .word off_08_B40D_0C
- D 1 - I - 0x005225 01:B215: 15 B4     .word off_08_B415_0D
- D 1 - I - 0x005227 01:B217: 1F B4     .word off_08_B41F_0E
- D 1 - I - 0x005229 01:B219: 22 B4     .word off_08_B422_0F
- D 1 - I - 0x00522B 01:B21B: 25 B4     .word off_08_B425_10
- - - - - - 0x00522D 01:B21D: 83 B2     .word off_08_B283_11
- - - - - - 0x00522F 01:B21F: 83 B2     .word off_08_B283_12
- - - - - - 0x005231 01:B221: 83 B2     .word off_08_B283_13
- - - - - - 0x005233 01:B223: 83 B2     .word off_08_B283_14
- - - - - - 0x005235 01:B225: 83 B2     .word off_08_B283_15
- - - - - - 0x005237 01:B227: 83 B2     .word off_08_B283_16
- - - - - - 0x005239 01:B229: 83 B2     .word off_08_B283_17
- - - - - - 0x00523B 01:B22B: 83 B2     .word off_08_B283_18
- D 1 - I - 0x00523D 01:B22D: 28 B4     .word off_08_B428_19
- D 1 - I - 0x00523F 01:B22F: 43 B4     .word off_08_B443_1A
- D 1 - I - 0x005241 01:B231: 6C B4     .word off_08_B46C_1B
- D 1 - I - 0x005243 01:B233: 98 B4     .word off_08_B498_1C
- D 1 - I - 0x005245 01:B235: C1 B4     .word off_08_B4C1_1D
- D 1 - I - 0x005247 01:B237: DF B4     .word off_08_B4DF_1E
- D 1 - I - 0x005249 01:B239: FD B4     .word off_08_B4FD_1F
- D 1 - I - 0x00524B 01:B23B: 1B B5     .word off_08_B51B_20
- D 1 - I - 0x00524D 01:B23D: 39 B5     .word off_08_B539_21
- - - - - - 0x00524F 01:B23F: 5A B5     .word off_08_B55A_22
- D 1 - I - 0x005251 01:B241: 7B B5     .word off_08_B57B_23
- D 1 - I - 0x005253 01:B243: 7E B5     .word off_08_B57E_24
- D 1 - I - 0x005255 01:B245: 81 B5     .word off_08_B581_25
- D 1 - I - 0x005257 01:B247: 84 B5     .word off_08_B584_26
- D 1 - I - 0x005259 01:B249: 87 B5     .word off_08_B587_27
- D 1 - I - 0x00525B 01:B24B: A5 B5     .word off_08_B5A5_28
- D 1 - I - 0x00525D 01:B24D: C3 B5     .word off_08_B5C3_29
- D 1 - I - 0x00525F 01:B24F: E3 B5     .word off_08_B5E3_2A
- - - - - - 0x005261 01:B251: 03 B6     .word off_08_B603_2B
- - - - - - 0x005263 01:B253: 06 B6     .word off_08_B606_2C
- - - - - - 0x005265 01:B255: 09 B6     .word off_08_B609_2D
- - - - - - 0x005267 01:B257: 09 B6     .word off_08_B609_2E
- - - - - - 0x005269 01:B259: 27 B6     .word off_08_B627_2F
- - - - - - 0x00526B 01:B25B: 47 B6     .word off_08_B647_30
- D 1 - I - 0x00526D 01:B25D: 47 B6     .word off_08_B647_31
- D 1 - I - 0x00526F 01:B25F: 9D B6     .word off_08_B69D_32
- D 1 - I - 0x005271 01:B261: FD B6     .word off_08_B6FD_33
- D 1 - I - 0x005273 01:B263: 67 B7     .word off_08_B767_34
- D 1 - I - 0x005275 01:B265: C7 B7     .word off_08_B7C7_35
- D 1 - I - 0x005277 01:B267: 1D B8     .word off_08_B81D_36
- D 1 - I - 0x005279 01:B269: 40 B8     .word off_08_B840_37
- D 1 - I - 0x00527B 01:B26B: 74 B8     .word off_08_B874_38
- D 1 - I - 0x00527D 01:B26D: 88 B8     .word off_08_B888_39
- D 1 - I - 0x00527F 01:B26F: A2 B8     .word off_08_B8A2_3A
- D 1 - I - 0x005281 01:B271: C6 B8     .word off_08_B8C6_3B
- D 1 - I - 0x005283 01:B273: D4 B8     .word off_08_B8D4_3C
- - - - - - 0x005285 01:B275: EE B8     .word off_08_B8EE_3D
- D 1 - I - 0x005287 01:B277: F3 B8     .word off_08_B8F3_3E
- D 1 - I - 0x005289 01:B279: F8 B8     .word off_08_B8F8_3F
- - - - - - 0x00528B 01:B27B: FB B8     .word off_08_B8FB_40
- - - - - - 0x00528D 01:B27D: 19 B9     .word off_08_B919_41
- D 1 - I - 0x00528F 01:B27F: 38 B9     .word off_08_B938_42
- D 1 - I - 0x005291 01:B281: 3B B9     .word off_08_B93B_43



off_08_B283_00:
off_08_B283_01:
off_08_B283_02:
off_08_B283_03:
off_08_B283_04:
off_08_B283_05:
off_08_B283_11:
off_08_B283_12:
off_08_B283_13:
off_08_B283_14:
off_08_B283_15:
off_08_B283_16:
off_08_B283_17:
off_08_B283_18:
- D 1 - I - 0x005293 01:B283: 88        .byte $88   ; counter
- D 1 - I - 0x005294 01:B284: 43        .byte $43   ; spr_A
- D 1 - I - 0x005295 01:B285: 19        .byte $19, $81, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005298 01:B288: 11        .byte $11, $81, $F0   ; 
- D 1 - I - 0x00529B 01:B28B: 09        .byte $09, $81, $F0   ; 
- D 1 - I - 0x00529E 01:B28E: 01        .byte $01, $81, $F0   ; 
- D 1 - I - 0x0052A1 01:B291: 19        .byte $19, $83, $00   ; 
- D 1 - I - 0x0052A4 01:B294: 11        .byte $11, $83, $00   ; 
- D 1 - I - 0x0052A7 01:B297: 09        .byte $09, $83, $00   ; 
- D 1 - I - 0x0052AA 01:B29A: 01        .byte $01, $83, $00   ; 

- D 1 - I - 0x0052AD 01:B29D: 85        .byte $85   ; 
- D 1 - I - 0x0052AE 01:B29E: 42        .byte $42   ; 
- D 1 - I - 0x0052AF 01:B29F: F9        .byte $F9, $85, $F0   ; 
- D 1 - I - 0x0052B2 01:B2A2: F1        .byte $F1, $87, $F0   ; 
- D 1 - I - 0x0052B5 01:B2A5: E9        .byte $E9, $89, $F0   ; 
- D 1 - I - 0x0052B8 01:B2A8: E1        .byte $E1, $8B, $F0   ; 
- D 1 - I - 0x0052BB 01:B2AB: F9        .byte $F9, $8D, $00   ; 

- D 1 - I - 0x0052BE 01:B2AE: 82        .byte $82   ; 
- D 1 - I - 0x0052BF 01:B2AF: 43        .byte $43   ; 
- D 1 - I - 0x0052C0 01:B2B0: F1        .byte $F1, $8F, $00   ; 
- D 1 - I - 0x0052C3 01:B2B3: E9        .byte $E9, $91, $00   ; 

- D 1 - I - 0x0052C6 01:B2B6: 82        .byte $82   ; 
- D 1 - I - 0x0052C7 01:B2B7: 42        .byte $42   ; 
- D 1 - I - 0x0052C8 01:B2B8: E1        .byte $E1, $93, $00   ; 
- D 1 - I - 0x0052CB 01:B2BB: 19        .byte $19, $95, $10   ; 

- D 1 - I - 0x0052CE 01:B2BE: 81        .byte $81   ; 
- D 1 - I - 0x0052CF 01:B2BF: 02        .byte $02   ; 
- D 1 - I - 0x0052D0 01:B2C0: 11        .byte $11, $95, $10   ; 

- D 1 - I - 0x0052D3 01:B2C3: 81        .byte $81   ; 
- D 1 - I - 0x0052D4 01:B2C4: 42        .byte $42   ; 
- D 1 - I - 0x0052D5 01:B2C5: 09        .byte $09, $95, $10   ; 

- D 1 - I - 0x0052D8 01:B2C8: 81        .byte $81   ; 
- D 1 - I - 0x0052D9 01:B2C9: 02        .byte $02   ; 
- D 1 - I - 0x0052DA 01:B2CA: 01        .byte $01, $95, $10   ; 

- D 1 - I - 0x0052DD 01:B2CD: 82        .byte $82   ; 
- D 1 - I - 0x0052DE 01:B2CE: 42        .byte $42   ; 
- D 1 - I - 0x0052DF 01:B2CF: F9        .byte $F9, $97, $10   ; 
- D 1 - I - 0x0052E2 01:B2D2: F1        .byte $F1, $95, $10   ; 

- D 1 - I - 0x0052E5 01:B2D5: 81        .byte $81   ; 
- D 1 - I - 0x0052E6 01:B2D6: 02        .byte $02   ; 
- D 1 - I - 0x0052E7 01:B2D7: E9        .byte $E9, $95, $10   ; 

- D 1 - I - 0x0052EA 01:B2DA: 01        .byte $01   ; 
- D 1 - I - 0x0052EB 01:B2DB: 42        .byte $42   ; 
- D 1 - I - 0x0052EC 01:B2DC: E1        .byte $E1, $99, $10   ; 



off_08_B2DF_06:
- D 1 - I - 0x0052EF 01:B2DF: 88        .byte $88   ; counter
- D 1 - I - 0x0052F0 01:B2E0: 43        .byte $43   ; spr_A
- D 1 - I - 0x0052F1 01:B2E1: 19        .byte $19, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0052F4 01:B2E4: 11        .byte $11, $81, $F1   ; 
- D 1 - I - 0x0052F7 01:B2E7: 09        .byte $09, $81, $F1   ; 
- D 1 - I - 0x0052FA 01:B2EA: 01        .byte $01, $81, $F1   ; 
- D 1 - I - 0x0052FD 01:B2ED: 19        .byte $19, $83, $01   ; 
- D 1 - I - 0x005300 01:B2F0: 11        .byte $11, $83, $01   ; 
- D 1 - I - 0x005303 01:B2F3: 09        .byte $09, $83, $01   ; 
- D 1 - I - 0x005306 01:B2F6: 01        .byte $01, $83, $01   ; 

- D 1 - I - 0x005309 01:B2F9: 85        .byte $85   ; 
- D 1 - I - 0x00530A 01:B2FA: 42        .byte $42   ; 
- D 1 - I - 0x00530B 01:B2FB: F9        .byte $F9, $85, $F1   ; 
- D 1 - I - 0x00530E 01:B2FE: F1        .byte $F1, $87, $F1   ; 
- D 1 - I - 0x005311 01:B301: E9        .byte $E9, $89, $F1   ; 
- D 1 - I - 0x005314 01:B304: E1        .byte $E1, $8B, $F1   ; 
- D 1 - I - 0x005317 01:B307: F9        .byte $F9, $8D, $01   ; 

- D 1 - I - 0x00531A 01:B30A: 82        .byte $82   ; 
- D 1 - I - 0x00531B 01:B30B: 43        .byte $43   ; 
- D 1 - I - 0x00531C 01:B30C: F1        .byte $F1, $8F, $01   ; 
- D 1 - I - 0x00531F 01:B30F: E9        .byte $E9, $91, $01   ; 

- D 1 - I - 0x005322 01:B312: 82        .byte $82   ; 
- D 1 - I - 0x005323 01:B313: 42        .byte $42   ; 
- D 1 - I - 0x005324 01:B314: E1        .byte $E1, $93, $01   ; 
- D 1 - I - 0x005327 01:B317: 19        .byte $19, $95, $12   ; 

- D 1 - I - 0x00532A 01:B31A: 81        .byte $81   ; 
- D 1 - I - 0x00532B 01:B31B: 02        .byte $02   ; 
- D 1 - I - 0x00532C 01:B31C: 11        .byte $11, $95, $12   ; 

- D 1 - I - 0x00532F 01:B31F: 81        .byte $81   ; 
- D 1 - I - 0x005330 01:B320: 42        .byte $42   ; 
- D 1 - I - 0x005331 01:B321: 09        .byte $09, $95, $11   ; 

- D 1 - I - 0x005334 01:B324: 81        .byte $81   ; 
- D 1 - I - 0x005335 01:B325: 02        .byte $02   ; 
- D 1 - I - 0x005336 01:B326: 01        .byte $01, $95, $11   ; 

- D 1 - I - 0x005339 01:B329: 82        .byte $82   ; 
- D 1 - I - 0x00533A 01:B32A: 42        .byte $42   ; 
- D 1 - I - 0x00533B 01:B32B: F9        .byte $F9, $97, $11   ; 
- D 1 - I - 0x00533E 01:B32E: F1        .byte $F1, $95, $11   ; 

- D 1 - I - 0x005341 01:B331: 81        .byte $81   ; 
- D 1 - I - 0x005342 01:B332: 02        .byte $02   ; 
- D 1 - I - 0x005343 01:B333: E9        .byte $E9, $95, $11   ; 

- D 1 - I - 0x005346 01:B336: 01        .byte $01   ; 
- D 1 - I - 0x005347 01:B337: 42        .byte $42   ; 
- D 1 - I - 0x005348 01:B338: E1        .byte $E1, $99, $11   ; 



off_08_B33B_07:
- D 1 - I - 0x00534B 01:B33B: 88        .byte $88   ; counter
- D 1 - I - 0x00534C 01:B33C: 43        .byte $43   ; spr_A
- D 1 - I - 0x00534D 01:B33D: 19        .byte $19, $81, $F0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005350 01:B340: 11        .byte $11, $81, $F0   ; 
- D 1 - I - 0x005353 01:B343: 09        .byte $09, $81, $F0   ; 
- D 1 - I - 0x005356 01:B346: 01        .byte $01, $81, $F0   ; 
- D 1 - I - 0x005359 01:B349: 19        .byte $19, $83, $00   ; 
- D 1 - I - 0x00535C 01:B34C: 11        .byte $11, $83, $00   ; 
- D 1 - I - 0x00535F 01:B34F: 09        .byte $09, $83, $00   ; 
- D 1 - I - 0x005362 01:B352: 01        .byte $01, $83, $00   ; 

- D 1 - I - 0x005365 01:B355: 85        .byte $85   ; 
- D 1 - I - 0x005366 01:B356: 42        .byte $42   ; 
- D 1 - I - 0x005367 01:B357: F9        .byte $F9, $85, $F0   ; 
- D 1 - I - 0x00536A 01:B35A: F1        .byte $F1, $87, $F0   ; 
- D 1 - I - 0x00536D 01:B35D: E9        .byte $E9, $89, $F0   ; 
- D 1 - I - 0x005370 01:B360: E1        .byte $E1, $8B, $F0   ; 
- D 1 - I - 0x005373 01:B363: F9        .byte $F9, $8D, $00   ; 

- D 1 - I - 0x005376 01:B366: 82        .byte $82   ; 
- D 1 - I - 0x005377 01:B367: 43        .byte $43   ; 
- D 1 - I - 0x005378 01:B368: F1        .byte $F1, $8F, $00   ; 
- D 1 - I - 0x00537B 01:B36B: E9        .byte $E9, $91, $00   ; 

- D 1 - I - 0x00537E 01:B36E: 82        .byte $82   ; 
- D 1 - I - 0x00537F 01:B36F: 42        .byte $42   ; 
- D 1 - I - 0x005380 01:B370: E1        .byte $E1, $93, $00   ; 
- D 1 - I - 0x005383 01:B373: 19        .byte $19, $95, $10   ; 

- D 1 - I - 0x005386 01:B376: 81        .byte $81   ; 
- D 1 - I - 0x005387 01:B377: 02        .byte $02   ; 
- D 1 - I - 0x005388 01:B378: 11        .byte $11, $95, $10   ; 

- D 1 - I - 0x00538B 01:B37B: 81        .byte $81   ; 
- D 1 - I - 0x00538C 01:B37C: 42        .byte $42   ; 
- D 1 - I - 0x00538D 01:B37D: 09        .byte $09, $95, $12   ; 

- D 1 - I - 0x005390 01:B380: 81        .byte $81   ; 
- D 1 - I - 0x005391 01:B381: 02        .byte $02   ; 
- D 1 - I - 0x005392 01:B382: 01        .byte $01, $95, $12   ; 

- D 1 - I - 0x005395 01:B385: 82        .byte $82   ; 
- D 1 - I - 0x005396 01:B386: 42        .byte $42   ; 
- D 1 - I - 0x005397 01:B387: F9        .byte $F9, $97, $10   ; 
- D 1 - I - 0x00539A 01:B38A: F1        .byte $F1, $95, $10   ; 

- D 1 - I - 0x00539D 01:B38D: 81        .byte $81   ; 
- D 1 - I - 0x00539E 01:B38E: 02        .byte $02   ; 
- D 1 - I - 0x00539F 01:B38F: E9        .byte $E9, $95, $10   ; 

- D 1 - I - 0x0053A2 01:B392: 01        .byte $01   ; 
- D 1 - I - 0x0053A3 01:B393: 42        .byte $42   ; 
- D 1 - I - 0x0053A4 01:B394: E1        .byte $E1, $99, $10   ; 



off_08_B397_08:
- D 1 - I - 0x0053A7 01:B397: 88        .byte $88   ; counter
- D 1 - I - 0x0053A8 01:B398: 43        .byte $43   ; spr_A
- D 1 - I - 0x0053A9 01:B399: 19        .byte $19, $81, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0053AC 01:B39C: 11        .byte $11, $81, $F1   ; 
- D 1 - I - 0x0053AF 01:B39F: 09        .byte $09, $81, $F1   ; 
- D 1 - I - 0x0053B2 01:B3A2: 01        .byte $01, $81, $F1   ; 
- D 1 - I - 0x0053B5 01:B3A5: 19        .byte $19, $83, $01   ; 
- D 1 - I - 0x0053B8 01:B3A8: 11        .byte $11, $83, $01   ; 
- D 1 - I - 0x0053BB 01:B3AB: 09        .byte $09, $83, $01   ; 
- D 1 - I - 0x0053BE 01:B3AE: 01        .byte $01, $83, $01   ; 

- D 1 - I - 0x0053C1 01:B3B1: 85        .byte $85   ; 
- D 1 - I - 0x0053C2 01:B3B2: 42        .byte $42   ; 
- D 1 - I - 0x0053C3 01:B3B3: F9        .byte $F9, $85, $F1   ; 
- D 1 - I - 0x0053C6 01:B3B6: F1        .byte $F1, $87, $F1   ; 
- D 1 - I - 0x0053C9 01:B3B9: E9        .byte $E9, $89, $F1   ; 
- D 1 - I - 0x0053CC 01:B3BC: E1        .byte $E1, $8B, $F1   ; 
- D 1 - I - 0x0053CF 01:B3BF: F9        .byte $F9, $8D, $01   ; 

- D 1 - I - 0x0053D2 01:B3C2: 82        .byte $82   ; 
- D 1 - I - 0x0053D3 01:B3C3: 43        .byte $43   ; 
- D 1 - I - 0x0053D4 01:B3C4: F1        .byte $F1, $8F, $01   ; 
- D 1 - I - 0x0053D7 01:B3C7: E9        .byte $E9, $91, $01   ; 

- D 1 - I - 0x0053DA 01:B3CA: 82        .byte $82   ; 
- D 1 - I - 0x0053DB 01:B3CB: 42        .byte $42   ; 
- D 1 - I - 0x0053DC 01:B3CC: E1        .byte $E1, $93, $01   ; 
- D 1 - I - 0x0053DF 01:B3CF: 19        .byte $19, $95, $12   ; 

- D 1 - I - 0x0053E2 01:B3D2: 81        .byte $81   ; 
- D 1 - I - 0x0053E3 01:B3D3: 02        .byte $02   ; 
- D 1 - I - 0x0053E4 01:B3D4: 11        .byte $11, $95, $12   ; 

- D 1 - I - 0x0053E7 01:B3D7: 81        .byte $81   ; 
- D 1 - I - 0x0053E8 01:B3D8: 42        .byte $42   ; 
- D 1 - I - 0x0053E9 01:B3D9: 09        .byte $09, $95, $11   ; 

- D 1 - I - 0x0053EC 01:B3DC: 81        .byte $81   ; 
- D 1 - I - 0x0053ED 01:B3DD: 02        .byte $02   ; 
- D 1 - I - 0x0053EE 01:B3DE: 01        .byte $01, $95, $11   ; 

- D 1 - I - 0x0053F1 01:B3E1: 82        .byte $82   ; 
- D 1 - I - 0x0053F2 01:B3E2: 42        .byte $42   ; 
- D 1 - I - 0x0053F3 01:B3E3: F9        .byte $F9, $97, $11   ; 
- D 1 - I - 0x0053F6 01:B3E6: F1        .byte $F1, $95, $13   ; 

- D 1 - I - 0x0053F9 01:B3E9: 81        .byte $81   ; 
- D 1 - I - 0x0053FA 01:B3EA: 02        .byte $02   ; 
- D 1 - I - 0x0053FB 01:B3EB: E9        .byte $E9, $95, $13   ; 

- D 1 - I - 0x0053FE 01:B3EE: 01        .byte $01   ; 
- D 1 - I - 0x0053FF 01:B3EF: 42        .byte $42   ; 
- D 1 - I - 0x005400 01:B3F0: E1        .byte $E1, $99, $11   ; 



off_08_B3F3_09:
- D 1 - I - 0x005403 01:B3F3: 81        .byte $81   ; counter
- D 1 - I - 0x005404 01:B3F4: 01        .byte $01   ; spr_A
- D 1 - I - 0x005405 01:B3F5: F8        .byte $F8, $9B, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005408 01:B3F8: 01        .byte $01   ; 
- D 1 - I - 0x005409 01:B3F9: 41        .byte $41   ; 
- D 1 - I - 0x00540A 01:B3FA: 00        .byte $00, $9B, $F8   ; 



off_08_B3FD_0A:
off_FF_B3FD:
- D 1 - I - 0x00540D 01:B3FD: 02        .byte $02   ; counter
- D 1 - I - 0x00540E 01:B3FE: 01        .byte $01   ; spr_A
- D 1 - I - 0x00540F 01:B3FF: F8        .byte $F8, $9D, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005412 01:B402: 00        .byte $00, $9F, $F8   ; 



off_08_B405_0B:
off_FF_B405:
- D 1 - I - 0x005415 01:B405: 02        .byte $02   ; counter
- D 1 - I - 0x005416 01:B406: 01        .byte $01   ; spr_A
- D 1 - I - 0x005417 01:B407: F8        .byte $F8, $A1, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00541A 01:B40A: 00        .byte $00, $A3, $F8   ; 



off_08_B40D_0C:
off_FF_B40D:
- D 1 - I - 0x00541D 01:B40D: 02        .byte $02   ; counter
- D 1 - I - 0x00541E 01:B40E: 01        .byte $01   ; spr_A
- D 1 - I - 0x00541F 01:B40F: F8        .byte $F8, $A5, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005422 01:B412: 00        .byte $00, $A7, $F8   ; 



off_08_B415_0D:
- D 1 - I - 0x005425 01:B415: 81        .byte $81   ; counter
- D 1 - I - 0x005426 01:B416: 01        .byte $01   ; spr_A
- D 1 - I - 0x005427 01:B417: F8        .byte $F8, $A9, $F8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00542A 01:B41A: 01        .byte $01   ; 
- D 1 - I - 0x00542B 01:B41B: 41        .byte $41   ; 
- D 1 - I - 0x00542C 01:B41C: 00        .byte $00, $A9, $F8   ; 



off_08_B41F_0E:
- D 1 - I - 0x00542F 01:B41F: FF        .byte $FF   ; 
- D 1 - I - 0x005430 01:B420: 0D B4     .word off_FF_B40D



off_08_B422_0F:
- D 1 - I - 0x005432 01:B422: FF        .byte $FF   ; 
- D 1 - I - 0x005433 01:B423: 05 B4     .word off_FF_B405



off_08_B425_10:
- D 1 - I - 0x005435 01:B425: FF        .byte $FF   ; 
- D 1 - I - 0x005436 01:B426: FD B3     .word off_FF_B3FD



off_08_B428_19:
- D 1 - I - 0x005438 01:B428: 82        .byte $82   ; counter
- D 1 - I - 0x005439 01:B429: 03        .byte $03   ; spr_A
- D 1 - I - 0x00543A 01:B42A: FE        .byte $FE, $87, $CA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00543D 01:B42D: FE        .byte $FE, $87, $DA   ; 

- D 1 - I - 0x005440 01:B430: 81        .byte $81   ; 
- D 1 - I - 0x005441 01:B431: 43        .byte $43   ; 
- D 1 - I - 0x005442 01:B432: FE        .byte $FE, $89, $0A   ; 

- D 1 - I - 0x005445 01:B435: 04        .byte $04   ; 
- D 1 - I - 0x005446 01:B436: 03        .byte $03   ; 
- D 1 - I - 0x005447 01:B437: FE        .byte $FE, $87, $1A   ; 
- D 1 - I - 0x00544A 01:B43A: FE        .byte $FE, $87, $2A   ; 
- D 1 - I - 0x00544D 01:B43D: FE        .byte $FE, $87, $3A   ; 
- D 1 - I - 0x005450 01:B440: FE        .byte $FE, $89, $EA   ; 



off_08_B443_1A:
- D 1 - I - 0x005453 01:B443: 81        .byte $81   ; counter
- D 1 - I - 0x005454 01:B444: 43        .byte $43   ; spr_A
- D 1 - I - 0x005455 01:B445: 06        .byte $06, $85, $F2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005458 01:B448: 81        .byte $81   ; 
- D 1 - I - 0x005459 01:B449: 83        .byte $83   ; 
- D 1 - I - 0x00545A 01:B44A: F6        .byte $F6, $85, $02   ; 

- D 1 - I - 0x00545D 01:B44D: 84        .byte $84   ; 
- D 1 - I - 0x00545E 01:B44E: 43        .byte $43   ; 
- D 1 - I - 0x00545F 01:B44F: 26        .byte $26, $85, $D2   ; 
- D 1 - I - 0x005462 01:B452: 1E        .byte $1E, $85, $DA   ; 
- D 1 - I - 0x005465 01:B455: 16        .byte $16, $85, $E2   ; 
- D 1 - I - 0x005468 01:B458: 0E        .byte $0E, $85, $EA   ; 

- D 1 - I - 0x00546B 01:B45B: 05        .byte $05   ; 
- D 1 - I - 0x00546C 01:B45C: 83        .byte $83   ; 
- D 1 - I - 0x00546D 01:B45D: EE        .byte $EE, $85, $0A   ; 
- D 1 - I - 0x005470 01:B460: E6        .byte $E6, $85, $12   ; 
- D 1 - I - 0x005473 01:B463: DE        .byte $DE, $85, $1A   ; 
- D 1 - I - 0x005476 01:B466: D6        .byte $D6, $85, $22   ; 
- D 1 - I - 0x005479 01:B469: CE        .byte $CE, $85, $2A   ; 



off_08_B46C_1B:
- D 1 - I - 0x00547C 01:B46C: 86        .byte $86   ; counter
- D 1 - I - 0x00547D 01:B46D: 03        .byte $03   ; spr_A
- D 1 - I - 0x00547E 01:B46E: 36        .byte $36, $8D, $FA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005481 01:B471: 2E        .byte $2E, $8D, $FA   ; 
- D 1 - I - 0x005484 01:B474: 26        .byte $26, $8D, $FA   ; 
- D 1 - I - 0x005487 01:B477: 1E        .byte $1E, $8D, $FA   ; 
- D 1 - I - 0x00548A 01:B47A: 16        .byte $16, $8B, $FA   ; 
- D 1 - I - 0x00548D 01:B47D: 0E        .byte $0E, $8B, $FA   ; 
- D 1 - I - 0x005490 01:B480: 81        .byte $81   ; 
- D 1 - I - 0x005491 01:B481: 83        .byte $83   ; 
- D 1 - I - 0x005492 01:B482: EE        .byte $EE, $8B, $F2   ; 

- D 1 - I - 0x005495 01:B485: 84        .byte $84   ; 
- D 1 - I - 0x005496 01:B486: 03        .byte $03   ; 
- D 1 - I - 0x005497 01:B487: DE        .byte $DE, $8D, $FA   ; 
- D 1 - I - 0x00549A 01:B48A: D6        .byte $D6, $8D, $FA   ; 
- D 1 - I - 0x00549D 01:B48D: CE        .byte $CE, $8D, $FA   ; 
- D 1 - I - 0x0054A0 01:B490: C6        .byte $C6, $8D, $FA   ; 

- D 1 - I - 0x0054A3 01:B493: 01        .byte $01   ; 
- D 1 - I - 0x0054A4 01:B494: 83        .byte $83   ; 
- D 1 - I - 0x0054A5 01:B495: E6        .byte $E6, $8B, $F2   ; 



off_08_B498_1C:
- D 1 - I - 0x0054A8 01:B498: 81        .byte $81   ; counter
- D 1 - I - 0x0054A9 01:B499: C3        .byte $C3   ; spr_A
- D 1 - I - 0x0054AA 01:B49A: 06        .byte $06, $85, $02   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0054AD 01:B49D: 81        .byte $81   ; 
- D 1 - I - 0x0054AE 01:B49E: 03        .byte $03   ; 
- D 1 - I - 0x0054AF 01:B49F: F6        .byte $F6, $85, $F2   ; 

- D 1 - I - 0x0054B2 01:B4A2: 85        .byte $85   ; 
- D 1 - I - 0x0054B3 01:B4A3: C3        .byte $C3   ; 
- D 1 - I - 0x0054B4 01:B4A4: 0E        .byte $0E, $85, $0A   ; 
- D 1 - I - 0x0054B7 01:B4A7: 16        .byte $16, $85, $12   ; 
- D 1 - I - 0x0054BA 01:B4AA: 1E        .byte $1E, $85, $1A   ; 
- D 1 - I - 0x0054BD 01:B4AD: 26        .byte $26, $85, $22   ; 
- D 1 - I - 0x0054C0 01:B4B0: 2E        .byte $2E, $85, $2A   ; 

- D 1 - I - 0x0054C3 01:B4B3: 04        .byte $04   ; 
- D 1 - I - 0x0054C4 01:B4B4: 03        .byte $03   ; 
- D 1 - I - 0x0054C5 01:B4B5: EE        .byte $EE, $85, $EA   ; 
- D 1 - I - 0x0054C8 01:B4B8: E6        .byte $E6, $85, $E2   ; 
- D 1 - I - 0x0054CB 01:B4BB: DE        .byte $DE, $85, $DA   ; 
- D 1 - I - 0x0054CE 01:B4BE: D6        .byte $D6, $85, $D2   ; 



off_08_B4C1_1D:
off_FF_B4C1:
- D 1 - I - 0x0054D1 01:B4C1: 82        .byte $82   ; counter
- D 1 - I - 0x0054D2 01:B4C2: 00        .byte $00   ; spr_A
- D 1 - I - 0x0054D3 01:B4C3: 05        .byte $05, $9D, $EA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0054D6 01:B4C6: 0D        .byte $0D, $9F, $EA   ; 

- D 1 - I - 0x0054D9 01:B4C9: 82        .byte $82   ; 
- D 1 - I - 0x0054DA 01:B4CA: 42        .byte $42   ; 
- D 1 - I - 0x0054DB 01:B4CB: 10        .byte $10, $29, $FA   ; 
- D 1 - I - 0x0054DE 01:B4CE: 08        .byte $08, $2B, $FA   ; 

- D 1 - I - 0x0054E1 01:B4D1: 04        .byte $04   ; 
- D 1 - I - 0x0054E2 01:B4D2: 01        .byte $01   ; 
- D 1 - I - 0x0054E3 01:B4D3: F6        .byte $F6, $81, $E8   ; 
- D 1 - I - 0x0054E6 01:B4D6: FE        .byte $FE, $83, $E8   ; 
- D 1 - I - 0x0054E9 01:B4D9: F8        .byte $F8, $85, $F8   ; 
- D 1 - I - 0x0054EC 01:B4DC: 00        .byte $00, $87, $F8   ; 



off_08_B4DF_1E:
off_FF_B4DF:
- D 1 - I - 0x0054EF 01:B4DF: 82        .byte $82   ; counter
- D 1 - I - 0x0054F0 01:B4E0: 00        .byte $00   ; spr_A
- D 1 - I - 0x0054F1 01:B4E1: 07        .byte $07, $9D, $EA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0054F4 01:B4E4: 0F        .byte $0F, $9F, $EA   ; 

- D 1 - I - 0x0054F7 01:B4E7: 82        .byte $82   ; 
- D 1 - I - 0x0054F8 01:B4E8: 42        .byte $42   ; 
- D 1 - I - 0x0054F9 01:B4E9: 10        .byte $10, $29, $FA   ; 
- D 1 - I - 0x0054FC 01:B4EC: 08        .byte $08, $2B, $FA   ; 

- D 1 - I - 0x0054FF 01:B4EF: 04        .byte $04   ; 
- D 1 - I - 0x005500 01:B4F0: 01        .byte $01   ; 
- D 1 - I - 0x005501 01:B4F1: F8        .byte $F8, $81, $E8   ; 
- D 1 - I - 0x005504 01:B4F4: 00        .byte $00, $83, $E8   ; 
- D 1 - I - 0x005507 01:B4F7: F8        .byte $F8, $85, $F8   ; 
- D 1 - I - 0x00550A 01:B4FA: 00        .byte $00, $87, $F8   ; 



off_08_B4FD_1F:
off_FF_B4FD:
- D 1 - I - 0x00550D 01:B4FD: 82        .byte $82   ; counter
- D 1 - I - 0x00550E 01:B4FE: 00        .byte $00   ; spr_A
- D 1 - I - 0x00550F 01:B4FF: 06        .byte $06, $B1, $E5   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005512 01:B502: 0E        .byte $0E, $B3, $E5   ; 

- D 1 - I - 0x005515 01:B505: 82        .byte $82   ; 
- D 1 - I - 0x005516 01:B506: 02        .byte $02   ; 
- D 1 - I - 0x005517 01:B507: 07        .byte $07, $2D, $F5   ; 
- D 1 - I - 0x00551A 01:B50A: 0F        .byte $0F, $2F, $F5   ; 

- D 1 - I - 0x00551D 01:B50D: 04        .byte $04   ; 
- D 1 - I - 0x00551E 01:B50E: 01        .byte $01   ; 
- D 1 - I - 0x00551F 01:B50F: F8        .byte $F8, $89, $E8   ; 
- D 1 - I - 0x005522 01:B512: 00        .byte $00, $8B, $E8   ; 
- D 1 - I - 0x005525 01:B515: F8        .byte $F8, $8D, $F8   ; 
- D 1 - I - 0x005528 01:B518: 00        .byte $00, $8F, $F8   ; 



off_08_B51B_20:
off_FF_B51B:
- D 1 - I - 0x00552B 01:B51B: 82        .byte $82   ; counter
- D 1 - I - 0x00552C 01:B51C: 00        .byte $00   ; spr_A
- D 1 - I - 0x00552D 01:B51D: 04        .byte $04, $B1, $E7   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005530 01:B520: 0C        .byte $0C, $B3, $E7   ; 

- D 1 - I - 0x005533 01:B523: 82        .byte $82   ; 
- D 1 - I - 0x005534 01:B524: 02        .byte $02   ; 
- D 1 - I - 0x005535 01:B525: 07        .byte $07, $2D, $F5   ; 
- D 1 - I - 0x005538 01:B528: 0F        .byte $0F, $2F, $F5   ; 

- D 1 - I - 0x00553B 01:B52B: 04        .byte $04   ; 
- D 1 - I - 0x00553C 01:B52C: 01        .byte $01   ; 
- D 1 - I - 0x00553D 01:B52D: F9        .byte $F9, $89, $E8   ; 
- D 1 - I - 0x005540 01:B530: 01        .byte $01, $8B, $E8   ; 
- D 1 - I - 0x005543 01:B533: F8        .byte $F8, $8D, $F8   ; 
- D 1 - I - 0x005546 01:B536: 00        .byte $00, $8F, $F8   ; 



off_08_B539_21:
- D 1 - I - 0x005549 01:B539: 82        .byte $82   ; counter
- D 1 - I - 0x00554A 01:B53A: 00        .byte $00   ; spr_A
- D 1 - I - 0x00554B 01:B53B: FA        .byte $FA, $B5, $E3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00554E 01:B53E: 02        .byte $02, $B7, $E3   ; 

- D 1 - I - 0x005551 01:B541: 81        .byte $81   ; 
- D 1 - I - 0x005552 01:B542: 02        .byte $02   ; 
- D 1 - I - 0x005553 01:B543: 02        .byte $02, $2F, $F2   ; 

- D 1 - I - 0x005556 01:B546: 81        .byte $81   ; 
- D 1 - I - 0x005557 01:B547: 01        .byte $01   ; 
- D 1 - I - 0x005558 01:B548: F8        .byte $F8, $91, $E8   ; 

- D 1 - I - 0x00555B 01:B54B: 81        .byte $81   ; 
- D 1 - I - 0x00555C 01:B54C: 41        .byte $41   ; 
- D 1 - I - 0x00555D 01:B54D: 00        .byte $00, $91, $E8   ; 

- D 1 - I - 0x005560 01:B550: 81        .byte $81   ; 
- D 1 - I - 0x005561 01:B551: 01        .byte $01   ; 
- D 1 - I - 0x005562 01:B552: F8        .byte $F8, $93, $F8   ; 

- D 1 - I - 0x005565 01:B555: 01        .byte $01   ; 
- D 1 - I - 0x005566 01:B556: 41        .byte $41   ; 
- D 1 - I - 0x005567 01:B557: 00        .byte $00, $93, $F8   ; 



off_08_B55A_22:
- - - - - - 0x00556A 01:B55A: 82        .byte $82   ; counter
- - - - - - 0x00556B 01:B55B: 00        .byte $00   ; spr_A
- - - - - - 0x00556C 01:B55C: F9        .byte $F9, $B5, $E5   ; spr_X, spr_T, spr_Y
- - - - - - 0x00556F 01:B55F: 01        .byte $01, $B7, $E5   ; 

- - - - - - 0x005572 01:B562: 81        .byte $81   ; 
- - - - - - 0x005573 01:B563: 02        .byte $02   ; 
- - - - - - 0x005574 01:B564: 02        .byte $02, $2F, $F2   ; 

- - - - - - 0x005577 01:B567: 81        .byte $81   ; 
- - - - - - 0x005578 01:B568: 01        .byte $01   ; 
- - - - - - 0x005579 01:B569: F8        .byte $F8, $91, $E8   ; 

- - - - - - 0x00557C 01:B56C: 81        .byte $81   ; 
- - - - - - 0x00557D 01:B56D: 41        .byte $41   ; 
- - - - - - 0x00557E 01:B56E: 00        .byte $00, $91, $E8   ; 

- - - - - - 0x005581 01:B571: 81        .byte $81   ; 
- - - - - - 0x005582 01:B572: 01        .byte $01   ; 
- - - - - - 0x005583 01:B573: F8        .byte $F8, $93, $F8   ; 

- - - - - - 0x005586 01:B576: 01        .byte $01   ; 
- - - - - - 0x005587 01:B577: 41        .byte $41   ; 
- - - - - - 0x005588 01:B578: 00        .byte $00, $93, $F8   ; 



off_08_B57B_23:
- D 1 - I - 0x00558B 01:B57B: FF        .byte $FF   ; 
- D 1 - I - 0x00558C 01:B57C: FD B4     .word off_FF_B4FD



off_08_B57E_24:
- D 1 - I - 0x00558E 01:B57E: FF        .byte $FF   ; 
- D 1 - I - 0x00558F 01:B57F: 1B B5     .word off_FF_B51B



off_08_B581_25:
- D 1 - I - 0x005591 01:B581: FF        .byte $FF   ; 
- D 1 - I - 0x005592 01:B582: C1 B4     .word off_FF_B4C1



off_08_B584_26:
- D 1 - I - 0x005594 01:B584: FF        .byte $FF   ; 
- D 1 - I - 0x005595 01:B585: DF B4     .word off_FF_B4DF



off_08_B587_27:
off_FF_B587:
- D 1 - I - 0x005597 01:B587: 84        .byte $84   ; counter
- D 1 - I - 0x005598 01:B588: 01        .byte $01   ; spr_A
- D 1 - I - 0x005599 01:B589: 00        .byte $00, $97, $E8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00559C 01:B58C: F8        .byte $F8, $99, $F8   ; 
- D 1 - I - 0x00559F 01:B58F: 00        .byte $00, $9B, $F8   ; 
- D 1 - I - 0x0055A2 01:B592: F8        .byte $F8, $95, $E8   ; 

- D 1 - I - 0x0055A5 01:B595: 82        .byte $82   ; 
- D 1 - I - 0x0055A6 01:B596: 40        .byte $40   ; 
- D 1 - I - 0x0055A7 01:B597: F5        .byte $F5, $A7, $EF   ; 
- D 1 - I - 0x0055AA 01:B59A: ED        .byte $ED, $A9, $EF   ; 

- D 1 - I - 0x0055AD 01:B59D: 02        .byte $02   ; 
- D 1 - I - 0x0055AE 01:B59E: 02        .byte $02   ; 
- D 1 - I - 0x0055AF 01:B59F: EB        .byte $EB, $29, $FF   ; 
- D 1 - I - 0x0055B2 01:B5A2: F3        .byte $F3, $2B, $FF   ; 



off_08_B5A5_28:
off_FF_B5A5:
- D 1 - I - 0x0055B5 01:B5A5: 84        .byte $84   ; counter
- D 1 - I - 0x0055B6 01:B5A6: 01        .byte $01   ; spr_A
- D 1 - I - 0x0055B7 01:B5A7: FF        .byte $FF, $97, $E8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0055BA 01:B5AA: F8        .byte $F8, $99, $F8   ; 
- D 1 - I - 0x0055BD 01:B5AD: 00        .byte $00, $9B, $F8   ; 
- D 1 - I - 0x0055C0 01:B5B0: F7        .byte $F7, $95, $E8   ; 

- D 1 - I - 0x0055C3 01:B5B3: 82        .byte $82   ; 
- D 1 - I - 0x0055C4 01:B5B4: 40        .byte $40   ; 
- D 1 - I - 0x0055C5 01:B5B5: F4        .byte $F4, $A7, $F0   ; 
- D 1 - I - 0x0055C8 01:B5B8: EC        .byte $EC, $A9, $F0   ; 

- D 1 - I - 0x0055CB 01:B5BB: 02        .byte $02   ; 
- D 1 - I - 0x0055CC 01:B5BC: 02        .byte $02   ; 
- D 1 - I - 0x0055CD 01:B5BD: EB        .byte $EB, $29, $FF   ; 
- D 1 - I - 0x0055D0 01:B5C0: F3        .byte $F3, $2B, $FF   ; 



off_08_B5C3_29:
- D 1 - I - 0x0055D3 01:B5C3: 82        .byte $82   ; counter
- D 1 - I - 0x0055D4 01:B5C4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0055D5 01:B5C5: F8        .byte $F8, $91, $E8   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0055D8 01:B5C8: F8        .byte $F8, $93, $F8   ; 

- D 1 - I - 0x0055DB 01:B5CB: 82        .byte $82   ; 
- D 1 - I - 0x0055DC 01:B5CC: 41        .byte $41   ; 
- D 1 - I - 0x0055DD 01:B5CD: 00        .byte $00, $91, $E8   ; 
- D 1 - I - 0x0055E0 01:B5D0: 00        .byte $00, $93, $F8   ; 

- D 1 - I - 0x0055E3 01:B5D3: 82        .byte $82   ; 
- D 1 - I - 0x0055E4 01:B5D4: 00        .byte $00   ; 
- D 1 - I - 0x0055E5 01:B5D5: F8        .byte $F8, $A3, $F5   ; 
- D 1 - I - 0x0055E8 01:B5D8: 00        .byte $00, $A5, $F5   ; 

- D 1 - I - 0x0055EB 01:B5DB: 02        .byte $02   ; 
- D 1 - I - 0x0055EC 01:B5DC: 02        .byte $02   ; 
- D 1 - I - 0x0055ED 01:B5DD: F8        .byte $F8, $29, $05   ; 
- D 1 - I - 0x0055F0 01:B5E0: 00        .byte $00, $2B, $05   ; 



off_08_B5E3_2A:
- D 1 - I - 0x0055F3 01:B5E3: 82        .byte $82   ; counter
- D 1 - I - 0x0055F4 01:B5E4: 01        .byte $01   ; spr_A
- D 1 - I - 0x0055F5 01:B5E5: F8        .byte $F8, $91, $EA   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0055F8 01:B5E8: F8        .byte $F8, $93, $F8   ; 

- D 1 - I - 0x0055FB 01:B5EB: 82        .byte $82   ; 
- D 1 - I - 0x0055FC 01:B5EC: 41        .byte $41   ; 
- D 1 - I - 0x0055FD 01:B5ED: 00        .byte $00, $91, $EA   ; 
- D 1 - I - 0x005600 01:B5F0: 00        .byte $00, $93, $F8   ; 

- D 1 - I - 0x005603 01:B5F3: 82        .byte $82   ; 
- D 1 - I - 0x005604 01:B5F4: 00        .byte $00   ; 
- D 1 - I - 0x005605 01:B5F5: F7        .byte $F7, $A3, $F6   ; 
- D 1 - I - 0x005608 01:B5F8: FF        .byte $FF, $A5, $F6   ; 

- D 1 - I - 0x00560B 01:B5FB: 02        .byte $02   ; 
- D 1 - I - 0x00560C 01:B5FC: 02        .byte $02   ; 
- D 1 - I - 0x00560D 01:B5FD: F8        .byte $F8, $29, $05   ; 
- D 1 - I - 0x005610 01:B600: 00        .byte $00, $2B, $05   ; 



off_08_B603_2B:
- - - - - - 0x005613 01:B603: FF        .byte $FF   ; 
- - - - - - 0x005614 01:B604: 87 B5     .word off_FF_B587



off_08_B606_2C:
- - - - - - 0x005616 01:B606: FF        .byte $FF   ; 
- - - - - - 0x005617 01:B607: A5 B5     .word off_FF_B5A5



off_08_B609_2D:
off_08_B609_2E:
- - - - - - 0x005619 01:B609: 84        .byte $84   ; counter
- - - - - - 0x00561A 01:B60A: 41        .byte $41   ; spr_A
- - - - - - 0x00561B 01:B60B: 3A        .byte $3A, $81, $30   ; spr_X, spr_T, spr_Y
- - - - - - 0x00561E 01:B60E: 32        .byte $32, $83, $30   ; 
- - - - - - 0x005621 01:B611: 38        .byte $38, $85, $40   ; 
- - - - - - 0x005624 01:B614: 30        .byte $30, $87, $40   ; 

- - - - - - 0x005627 01:B617: 82        .byte $82   ; 
- - - - - - 0x005628 01:B618: 40        .byte $40   ; 
- - - - - - 0x005629 01:B619: 29        .byte $29, $9D, $32   ; 
- - - - - - 0x00562C 01:B61C: 21        .byte $21, $9F, $32   ; 

- - - - - - 0x00562F 01:B61F: 02        .byte $02   ; 
- - - - - - 0x005630 01:B620: 02        .byte $02   ; 
- - - - - - 0x005631 01:B621: 20        .byte $20, $29, $42   ; 
- - - - - - 0x005634 01:B624: 28        .byte $28, $2B, $42   ; 



off_08_B627_2F:
- - - - - - 0x005637 01:B627: 82        .byte $82   ; counter
- - - - - - 0x005638 01:B628: 01        .byte $01   ; spr_A
- - - - - - 0x005639 01:B629: 30        .byte $30, $91, $30   ; spr_X, spr_T, spr_Y
- - - - - - 0x00563C 01:B62C: 30        .byte $30, $93, $40   ; 

- - - - - - 0x00563F 01:B62F: 82        .byte $82   ; 
- - - - - - 0x005640 01:B630: 41        .byte $41   ; 
- - - - - - 0x005641 01:B631: 38        .byte $38, $91, $30   ; 
- - - - - - 0x005644 01:B634: 38        .byte $38, $93, $40   ; 

- - - - - - 0x005647 01:B637: 82        .byte $82   ; 
- - - - - - 0x005648 01:B638: 00        .byte $00   ; 
- - - - - - 0x005649 01:B639: 30        .byte $30, $A3, $3D   ; 
- - - - - - 0x00564C 01:B63C: 38        .byte $38, $A5, $3D   ; 

- - - - - - 0x00564F 01:B63F: 02        .byte $02   ; 
- - - - - - 0x005650 01:B640: 02        .byte $02   ; 
- - - - - - 0x005651 01:B641: 30        .byte $30, $29, $4D   ; 
- - - - - - 0x005654 01:B644: 38        .byte $38, $2B, $4D   ; 



off_08_B647_30:
off_08_B647_31:
- D 1 - I - 0x005657 01:B647: 8C        .byte $8C   ; counter
- D 1 - I - 0x005658 01:B648: 02        .byte $02   ; spr_A
- D 1 - I - 0x005659 01:B649: 01        .byte $01, $81, $D1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00565C 01:B64C: 09        .byte $09, $83, $D1   ; 
- D 1 - I - 0x00565F 01:B64F: 01        .byte $01, $85, $E1   ; 
- D 1 - I - 0x005662 01:B652: 09        .byte $09, $87, $E1   ; 
- D 1 - I - 0x005665 01:B655: 01        .byte $01, $89, $F1   ; 
- D 1 - I - 0x005668 01:B658: 09        .byte $09, $8B, $F1   ; 
- D 1 - I - 0x00566B 01:B65B: 01        .byte $01, $89, $01   ; 
- D 1 - I - 0x00566E 01:B65E: 09        .byte $09, $8B, $01   ; 
- D 1 - I - 0x005671 01:B661: 09        .byte $09, $8D, $11   ; 
- D 1 - I - 0x005674 01:B664: 09        .byte $09, $91, $21   ; 
- D 1 - I - 0x005677 01:B667: 01        .byte $01, $89, $11   ; 
- D 1 - I - 0x00567A 01:B66A: 01        .byte $01, $8F, $21   ; 

- D 1 - I - 0x00567D 01:B66D: 8C        .byte $8C   ; 
- D 1 - I - 0x00567E 01:B66E: 42        .byte $42   ; 
- D 1 - I - 0x00567F 01:B66F: F9        .byte $F9, $81, $D1   ; 
- D 1 - I - 0x005682 01:B672: F1        .byte $F1, $83, $D1   ; 
- D 1 - I - 0x005685 01:B675: F9        .byte $F9, $85, $E1   ; 
- D 1 - I - 0x005688 01:B678: F1        .byte $F1, $87, $E1   ; 
- D 1 - I - 0x00568B 01:B67B: F9        .byte $F9, $89, $F1   ; 
- D 1 - I - 0x00568E 01:B67E: F1        .byte $F1, $8B, $F1   ; 
- D 1 - I - 0x005691 01:B681: F9        .byte $F9, $89, $01   ; 
- D 1 - I - 0x005694 01:B684: F1        .byte $F1, $8B, $01   ; 
- D 1 - I - 0x005697 01:B687: F1        .byte $F1, $8D, $11   ; 
- D 1 - I - 0x00569A 01:B68A: F9        .byte $F9, $89, $11   ; 
- D 1 - I - 0x00569D 01:B68D: F1        .byte $F1, $91, $21   ; 
- D 1 - I - 0x0056A0 01:B690: F9        .byte $F9, $8F, $21   ; 

- D 1 - I - 0x0056A3 01:B693: 81        .byte $81   ; 
- D 1 - I - 0x0056A4 01:B694: 02        .byte $02   ; 
- D 1 - I - 0x0056A5 01:B695: F9        .byte $F9, $93, $31   ; 



- D 1 - I - 0x0056A8 01:B698: 01        .byte $01   ; 
- D 1 - I - 0x0056A9 01:B699: 42        .byte $42   ; 
- D 1 - I - 0x0056AA 01:B69A: 01        .byte $01, $93, $31   ; 



off_08_B69D_32:
- D 1 - I - 0x0056AD 01:B69D: 8C        .byte $8C   ; counter
- D 1 - I - 0x0056AE 01:B69E: 02        .byte $02   ; spr_A
- D 1 - I - 0x0056AF 01:B69F: 00        .byte $00, $81, $D2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0056B2 01:B6A2: 08        .byte $08, $83, $D2   ; 
- D 1 - I - 0x0056B5 01:B6A5: 00        .byte $00, $85, $E2   ; 
- D 1 - I - 0x0056B8 01:B6A8: 08        .byte $08, $87, $E2   ; 
- D 1 - I - 0x0056BB 01:B6AB: 00        .byte $00, $89, $F2   ; 
- D 1 - I - 0x0056BE 01:B6AE: 08        .byte $08, $8B, $F2   ; 
- D 1 - I - 0x0056C1 01:B6B1: 00        .byte $00, $89, $02   ; 
- D 1 - I - 0x0056C4 01:B6B4: 08        .byte $08, $8B, $02   ; 
- D 1 - I - 0x0056C7 01:B6B7: 08        .byte $08, $8D, $12   ; 
- D 1 - I - 0x0056CA 01:B6BA: 08        .byte $08, $91, $22   ; 
- D 1 - I - 0x0056CD 01:B6BD: 00        .byte $00, $89, $12   ; 
- D 1 - I - 0x0056D0 01:B6C0: 00        .byte $00, $8F, $22   ; 

- D 1 - I - 0x0056D3 01:B6C3: 8C        .byte $8C   ; 
- D 1 - I - 0x0056D4 01:B6C4: 42        .byte $42   ; 
- D 1 - I - 0x0056D5 01:B6C5: F8        .byte $F8, $81, $D2   ; 
- D 1 - I - 0x0056D8 01:B6C8: F0        .byte $F0, $83, $D2   ; 
- D 1 - I - 0x0056DB 01:B6CB: F8        .byte $F8, $85, $E2   ; 
- D 1 - I - 0x0056DE 01:B6CE: F0        .byte $F0, $87, $E2   ; 
- D 1 - I - 0x0056E1 01:B6D1: F8        .byte $F8, $89, $F2   ; 
- D 1 - I - 0x0056E4 01:B6D4: F0        .byte $F0, $8B, $F2   ; 
- D 1 - I - 0x0056E7 01:B6D7: F8        .byte $F8, $89, $02   ; 
- D 1 - I - 0x0056EA 01:B6DA: F0        .byte $F0, $8B, $02   ; 
- D 1 - I - 0x0056ED 01:B6DD: F0        .byte $F0, $8D, $12   ; 
- D 1 - I - 0x0056F0 01:B6E0: F8        .byte $F8, $89, $12   ; 
- D 1 - I - 0x0056F3 01:B6E3: F0        .byte $F0, $91, $22   ; 
- D 1 - I - 0x0056F6 01:B6E6: F8        .byte $F8, $8F, $22   ; 

- D 1 - I - 0x0056F9 01:B6E9: 81        .byte $81   ; 
- D 1 - I - 0x0056FA 01:B6EA: 02        .byte $02   ; 
- D 1 - I - 0x0056FB 01:B6EB: F9        .byte $F9, $95, $31   ; 

- D 1 - I - 0x0056FE 01:B6EE: 81        .byte $81   ; 
- D 1 - I - 0x0056FF 01:B6EF: 42        .byte $42   ; 
- D 1 - I - 0x005700 01:B6F0: 01        .byte $01, $95, $31   ; 

- D 1 - I - 0x005703 01:B6F3: 81        .byte $81   ; 
- D 1 - I - 0x005704 01:B6F4: 02        .byte $02   ; 
- D 1 - I - 0x005705 01:B6F5: F9        .byte $F9, $93, $41   ; 

- D 1 - I - 0x005708 01:B6F8: 01        .byte $01   ; 
- D 1 - I - 0x005709 01:B6F9: 42        .byte $42   ; 
- D 1 - I - 0x00570A 01:B6FA: 01        .byte $01, $93, $41   ; 



off_08_B6FD_33:
- D 1 - I - 0x00570D 01:B6FD: 8C        .byte $8C   ; counter
- D 1 - I - 0x00570E 01:B6FE: 02        .byte $02   ; spr_A
- D 1 - I - 0x00570F 01:B6FF: 01        .byte $01, $81, $D1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005712 01:B702: 09        .byte $09, $83, $D1   ; 
- D 1 - I - 0x005715 01:B705: 01        .byte $01, $85, $E1   ; 
- D 1 - I - 0x005718 01:B708: 09        .byte $09, $87, $E1   ; 
- D 1 - I - 0x00571B 01:B70B: 01        .byte $01, $89, $F1   ; 
- D 1 - I - 0x00571E 01:B70E: 09        .byte $09, $8B, $F1   ; 
- D 1 - I - 0x005721 01:B711: 01        .byte $01, $89, $01   ; 
- D 1 - I - 0x005724 01:B714: 09        .byte $09, $8B, $01   ; 
- D 1 - I - 0x005727 01:B717: 09        .byte $09, $8D, $11   ; 
- D 1 - I - 0x00572A 01:B71A: 09        .byte $09, $91, $21   ; 
- D 1 - I - 0x00572D 01:B71D: 01        .byte $01, $89, $11   ; 
- D 1 - I - 0x005730 01:B720: 01        .byte $01, $8F, $21   ; 

- D 1 - I - 0x005733 01:B723: 8C        .byte $8C   ; 
- D 1 - I - 0x005734 01:B724: 42        .byte $42   ; 
- D 1 - I - 0x005735 01:B725: F9        .byte $F9, $81, $D1   ; 
- D 1 - I - 0x005738 01:B728: F1        .byte $F1, $83, $D1   ; 
- D 1 - I - 0x00573B 01:B72B: F9        .byte $F9, $85, $E1   ; 
- D 1 - I - 0x00573E 01:B72E: F1        .byte $F1, $87, $E1   ; 
- D 1 - I - 0x005741 01:B731: F9        .byte $F9, $89, $F1   ; 
- D 1 - I - 0x005744 01:B734: F1        .byte $F1, $8B, $F1   ; 
- D 1 - I - 0x005747 01:B737: F9        .byte $F9, $89, $01   ; 
- D 1 - I - 0x00574A 01:B73A: F1        .byte $F1, $8B, $01   ; 
- D 1 - I - 0x00574D 01:B73D: F1        .byte $F1, $8D, $11   ; 
- D 1 - I - 0x005750 01:B740: F9        .byte $F9, $89, $11   ; 
- D 1 - I - 0x005753 01:B743: F1        .byte $F1, $91, $21   ; 
- D 1 - I - 0x005756 01:B746: F9        .byte $F9, $8F, $21   ; 

- D 1 - I - 0x005759 01:B749: 81        .byte $81   ; 
- D 1 - I - 0x00575A 01:B74A: 02        .byte $02   ; 
- D 1 - I - 0x00575B 01:B74B: F9        .byte $F9, $97, $31   ; 

- D 1 - I - 0x00575E 01:B74E: 81        .byte $81   ; 
- D 1 - I - 0x00575F 01:B74F: 42        .byte $42   ; 
- D 1 - I - 0x005760 01:B750: 01        .byte $01, $97, $31   ; 

- D 1 - I - 0x005763 01:B753: 81        .byte $81   ; 
- D 1 - I - 0x005764 01:B754: 02        .byte $02   ; 
- D 1 - I - 0x005765 01:B755: F9        .byte $F9, $99, $41   ; 

- D 1 - I - 0x005768 01:B758: 81        .byte $81   ; 
- D 1 - I - 0x005769 01:B759: 42        .byte $42   ; 
- D 1 - I - 0x00576A 01:B75A: 01        .byte $01, $99, $41   ; 

- D 1 - I - 0x00576D 01:B75D: 81        .byte $81   ; 
- D 1 - I - 0x00576E 01:B75E: 02        .byte $02   ; 
- D 1 - I - 0x00576F 01:B75F: F1        .byte $F1, $97, $41   ; 

- D 1 - I - 0x005772 01:B762: 01        .byte $01   ; 
- D 1 - I - 0x005773 01:B763: 42        .byte $42   ; 
- D 1 - I - 0x005774 01:B764: 09        .byte $09, $97, $41   ; 



off_08_B767_34:
- D 1 - I - 0x005777 01:B767: 8C        .byte $8C   ; counter
- D 1 - I - 0x005778 01:B768: 02        .byte $02   ; spr_A
- D 1 - I - 0x005779 01:B769: 02        .byte $02, $81, $D2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00577C 01:B76C: 0A        .byte $0A, $83, $D2   ; 
- D 1 - I - 0x00577F 01:B76F: 02        .byte $02, $85, $E2   ; 
- D 1 - I - 0x005782 01:B772: 0A        .byte $0A, $87, $E2   ; 
- D 1 - I - 0x005785 01:B775: 02        .byte $02, $89, $F2   ; 
- D 1 - I - 0x005788 01:B778: 0A        .byte $0A, $8B, $F2   ; 
- D 1 - I - 0x00578B 01:B77B: 02        .byte $02, $89, $02   ; 
- D 1 - I - 0x00578E 01:B77E: 0A        .byte $0A, $8B, $02   ; 
- D 1 - I - 0x005791 01:B781: 0A        .byte $0A, $8D, $12   ; 
- D 1 - I - 0x005794 01:B784: 0A        .byte $0A, $91, $22   ; 
- D 1 - I - 0x005797 01:B787: 02        .byte $02, $89, $12   ; 
- D 1 - I - 0x00579A 01:B78A: 02        .byte $02, $8F, $22   ; 

- D 1 - I - 0x00579D 01:B78D: 8C        .byte $8C   ; 
- D 1 - I - 0x00579E 01:B78E: 42        .byte $42   ; 
- D 1 - I - 0x00579F 01:B78F: FA        .byte $FA, $81, $D2   ; 
- D 1 - I - 0x0057A2 01:B792: F2        .byte $F2, $83, $D2   ; 
- D 1 - I - 0x0057A5 01:B795: FA        .byte $FA, $85, $E2   ; 
- D 1 - I - 0x0057A8 01:B798: F2        .byte $F2, $87, $E2   ; 
- D 1 - I - 0x0057AB 01:B79B: FA        .byte $FA, $89, $F2   ; 
- D 1 - I - 0x0057AE 01:B79E: F2        .byte $F2, $8B, $F2   ; 
- D 1 - I - 0x0057B1 01:B7A1: FA        .byte $FA, $89, $02   ; 
- D 1 - I - 0x0057B4 01:B7A4: F2        .byte $F2, $8B, $02   ; 
- D 1 - I - 0x0057B7 01:B7A7: F2        .byte $F2, $8D, $12   ; 
- D 1 - I - 0x0057BA 01:B7AA: FA        .byte $FA, $89, $12   ; 
- D 1 - I - 0x0057BD 01:B7AD: F2        .byte $F2, $91, $22   ; 
- D 1 - I - 0x0057C0 01:B7B0: FA        .byte $FA, $8F, $22   ; 

- D 1 - I - 0x0057C3 01:B7B3: 81        .byte $81   ; 
- D 1 - I - 0x0057C4 01:B7B4: 02        .byte $02   ; 
- D 1 - I - 0x0057C5 01:B7B5: F9        .byte $F9, $97, $39   ; 

- D 1 - I - 0x0057C8 01:B7B8: 81        .byte $81   ; 
- D 1 - I - 0x0057C9 01:B7B9: 42        .byte $42   ; 
- D 1 - I - 0x0057CA 01:B7BA: 01        .byte $01, $97, $39   ; 

- D 1 - I - 0x0057CD 01:B7BD: 81        .byte $81   ; 
- D 1 - I - 0x0057CE 01:B7BE: 02        .byte $02   ; 
- D 1 - I - 0x0057CF 01:B7BF: F1        .byte $F1, $97, $41   ; 

- D 1 - I - 0x0057D2 01:B7C2: 01        .byte $01   ; 
- D 1 - I - 0x0057D3 01:B7C3: 42        .byte $42   ; 
- D 1 - I - 0x0057D4 01:B7C4: 09        .byte $09, $97, $41   ; 



off_08_B7C7_35:
- D 1 - I - 0x0057D7 01:B7C7: 8C        .byte $8C   ; counter
- D 1 - I - 0x0057D8 01:B7C8: 02        .byte $02   ; spr_A
- D 1 - I - 0x0057D9 01:B7C9: 00        .byte $00, $81, $D2   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0057DC 01:B7CC: 08        .byte $08, $83, $D2   ; 
- D 1 - I - 0x0057DF 01:B7CF: 00        .byte $00, $85, $E2   ; 
- D 1 - I - 0x0057E2 01:B7D2: 08        .byte $08, $87, $E2   ; 
- D 1 - I - 0x0057E5 01:B7D5: 00        .byte $00, $89, $F2   ; 
- D 1 - I - 0x0057E8 01:B7D8: 08        .byte $08, $8B, $F2   ; 
- D 1 - I - 0x0057EB 01:B7DB: 00        .byte $00, $89, $02   ; 
- D 1 - I - 0x0057EE 01:B7DE: 08        .byte $08, $8B, $02   ; 
- D 1 - I - 0x0057F1 01:B7E1: 08        .byte $08, $8D, $12   ; 
- D 1 - I - 0x0057F4 01:B7E4: 08        .byte $08, $91, $22   ; 
- D 1 - I - 0x0057F7 01:B7E7: 00        .byte $00, $89, $12   ; 
- D 1 - I - 0x0057FA 01:B7EA: 00        .byte $00, $8F, $22   ; 

- D 1 - I - 0x0057FD 01:B7ED: 8C        .byte $8C   ; 
- D 1 - I - 0x0057FE 01:B7EE: 42        .byte $42   ; 
- D 1 - I - 0x0057FF 01:B7EF: F8        .byte $F8, $81, $D2   ; 
- D 1 - I - 0x005802 01:B7F2: F0        .byte $F0, $83, $D2   ; 
- D 1 - I - 0x005805 01:B7F5: F8        .byte $F8, $85, $E2   ; 
- D 1 - I - 0x005808 01:B7F8: F0        .byte $F0, $87, $E2   ; 
- D 1 - I - 0x00580B 01:B7FB: F8        .byte $F8, $89, $F2   ; 
- D 1 - I - 0x00580E 01:B7FE: F0        .byte $F0, $8B, $F2   ; 
- D 1 - I - 0x005811 01:B801: F8        .byte $F8, $89, $02   ; 
- D 1 - I - 0x005814 01:B804: F0        .byte $F0, $8B, $02   ; 
- D 1 - I - 0x005817 01:B807: F0        .byte $F0, $8D, $12   ; 
- D 1 - I - 0x00581A 01:B80A: F8        .byte $F8, $89, $12   ; 
- D 1 - I - 0x00581D 01:B80D: F0        .byte $F0, $91, $22   ; 
- D 1 - I - 0x005820 01:B810: F8        .byte $F8, $8F, $22   ; 

- D 1 - I - 0x005823 01:B813: 81        .byte $81   ; 
- D 1 - I - 0x005824 01:B814: 02        .byte $02   ; 
- D 1 - I - 0x005825 01:B815: F9        .byte $F9, $97, $41   ; 

- D 1 - I - 0x005828 01:B818: 01        .byte $01   ; 
- D 1 - I - 0x005829 01:B819: 42        .byte $42   ; 
- D 1 - I - 0x00582A 01:B81A: 01        .byte $01, $97, $41   ; 



off_08_B81D_36:
- D 1 - I - 0x00582D 01:B81D: 82        .byte $82   ; counter
- D 1 - I - 0x00582E 01:B81E: 03        .byte $03   ; spr_A
- D 1 - I - 0x00582F 01:B81F: F1        .byte $F1, $9B, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005832 01:B822: F9        .byte $F9, $9D, $F1   ; 

- D 1 - I - 0x005835 01:B825: 82        .byte $82   ; 
- D 1 - I - 0x005836 01:B826: 43        .byte $43   ; 
- D 1 - I - 0x005837 01:B827: 09        .byte $09, $9B, $F1   ; 
- D 1 - I - 0x00583A 01:B82A: 01        .byte $01, $9D, $F1   ; 

- D 1 - I - 0x00583D 01:B82D: 82        .byte $82   ; 
- D 1 - I - 0x00583E 01:B82E: 83        .byte $83   ; 
- D 1 - I - 0x00583F 01:B82F: F1        .byte $F1, $9B, $01   ; 
- D 1 - I - 0x005842 01:B832: F9        .byte $F9, $9D, $01   ; 

- D 1 - I - 0x005845 01:B835: 03        .byte $03   ; 
- D 1 - I - 0x005846 01:B836: C3        .byte $C3   ; 
- D 1 - I - 0x005847 01:B837: F9        .byte $F9, $9D, $01   ; 
- D 1 - I - 0x00584A 01:B83A: 09        .byte $09, $9B, $01   ; 
- D 1 - I - 0x00584D 01:B83D: 01        .byte $01, $9D, $01   ; 



off_08_B840_37:
- D 1 - I - 0x005850 01:B840: 81        .byte $81   ; counter
- D 1 - I - 0x005851 01:B841: 03        .byte $03   ; spr_A
- D 1 - I - 0x005852 01:B842: F9        .byte $F9, $9F, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005855 01:B845: 81        .byte $81   ; 
- D 1 - I - 0x005856 01:B846: 43        .byte $43   ; 
- D 1 - I - 0x005857 01:B847: 01        .byte $01, $9F, $F1   ; 

- D 1 - I - 0x00585A 01:B84A: 81        .byte $81   ; 
- D 1 - I - 0x00585B 01:B84B: 83        .byte $83   ; 
- D 1 - I - 0x00585C 01:B84C: F9        .byte $F9, $9F, $01   ; 

- D 1 - I - 0x00585F 01:B84F: 81        .byte $81   ; 
- D 1 - I - 0x005860 01:B850: C3        .byte $C3   ; 
- D 1 - I - 0x005861 01:B851: 01        .byte $01, $9F, $01   ; 

- D 1 - I - 0x005864 01:B854: 82        .byte $82   ; 
- D 1 - I - 0x005865 01:B855: 03        .byte $03   ; 
- D 1 - I - 0x005866 01:B856: E9        .byte $E9, $9B, $F1   ; 
- D 1 - I - 0x005869 01:B859: F1        .byte $F1, $9D, $F1   ; 

- D 1 - I - 0x00586C 01:B85C: 82        .byte $82   ; 
- D 1 - I - 0x00586D 01:B85D: 43        .byte $43   ; 
- D 1 - I - 0x00586E 01:B85E: 09        .byte $09, $9D, $F1   ; 
- D 1 - I - 0x005871 01:B861: 11        .byte $11, $9B, $F1   ; 

- D 1 - I - 0x005874 01:B864: 82        .byte $82   ; 
- D 1 - I - 0x005875 01:B865: 83        .byte $83   ; 
- D 1 - I - 0x005876 01:B866: E9        .byte $E9, $9B, $01   ; 
- D 1 - I - 0x005879 01:B869: F1        .byte $F1, $9D, $01   ; 

- D 1 - I - 0x00587C 01:B86C: 02        .byte $02   ; 
- D 1 - I - 0x00587D 01:B86D: C3        .byte $C3   ; 
- D 1 - I - 0x00587E 01:B86E: 11        .byte $11, $9B, $01   ; 
- D 1 - I - 0x005881 01:B871: 09        .byte $09, $9D, $01   ; 



off_08_B874_38:
- D 1 - I - 0x005884 01:B874: 81        .byte $81   ; counter
- D 1 - I - 0x005885 01:B875: 03        .byte $03   ; spr_A
- D 1 - I - 0x005886 01:B876: F9        .byte $F9, $A1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005889 01:B879: 81        .byte $81   ; 
- D 1 - I - 0x00588A 01:B87A: 43        .byte $43   ; 
- D 1 - I - 0x00588B 01:B87B: 01        .byte $01, $A1, $F1   ; 

- D 1 - I - 0x00588E 01:B87E: 81        .byte $81   ; 
- D 1 - I - 0x00588F 01:B87F: 03        .byte $03   ; 
- D 1 - I - 0x005890 01:B880: F9        .byte $F9, $A5, $01   ; 

- D 1 - I - 0x005893 01:B883: 01        .byte $01   ; 
- D 1 - I - 0x005894 01:B884: 43        .byte $43   ; 
- D 1 - I - 0x005895 01:B885: 01        .byte $01, $A5, $01   ; 



off_08_B888_39:
- D 1 - I - 0x005898 01:B888: 81        .byte $81   ; counter
- D 1 - I - 0x005899 01:B889: 03        .byte $03   ; spr_A
- D 1 - I - 0x00589A 01:B88A: F9        .byte $F9, $A1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x00589D 01:B88D: 81        .byte $81   ; 
- D 1 - I - 0x00589E 01:B88E: 43        .byte $43   ; 
- D 1 - I - 0x00589F 01:B88F: 01        .byte $01, $A1, $F1   ; 

- D 1 - I - 0x0058A2 01:B892: 82        .byte $82   ; 
- D 1 - I - 0x0058A3 01:B893: 03        .byte $03   ; 
- D 1 - I - 0x0058A4 01:B894: F9        .byte $F9, $A3, $01   ; 
- D 1 - I - 0x0058A7 01:B897: F9        .byte $F9, $A5, $11   ; 

- D 1 - I - 0x0058AA 01:B89A: 02        .byte $02   ; 
- D 1 - I - 0x0058AB 01:B89B: 43        .byte $43   ; 
- D 1 - I - 0x0058AC 01:B89C: 01        .byte $01, $A3, $01   ; 
- D 1 - I - 0x0058AF 01:B89F: 01        .byte $01, $A5, $11   ; 



off_08_B8A2_3A:
- D 1 - I - 0x0058B2 01:B8A2: 81        .byte $81   ; counter
- D 1 - I - 0x0058B3 01:B8A3: 03        .byte $03   ; spr_A
- D 1 - I - 0x0058B4 01:B8A4: F9        .byte $F9, $A1, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0058B7 01:B8A7: 81        .byte $81   ; 
- D 1 - I - 0x0058B8 01:B8A8: 43        .byte $43   ; 
- D 1 - I - 0x0058B9 01:B8A9: 01        .byte $01, $A1, $F1   ; 

- D 1 - I - 0x0058BC 01:B8AC: 82        .byte $82   ; 
- D 1 - I - 0x0058BD 01:B8AD: 03        .byte $03   ; 
- D 1 - I - 0x0058BE 01:B8AE: F9        .byte $F9, $A3, $01   ; 
- D 1 - I - 0x0058C1 01:B8B1: F9        .byte $F9, $A3, $11   ; 

- D 1 - I - 0x0058C4 01:B8B4: 82        .byte $82   ; 
- D 1 - I - 0x0058C5 01:B8B5: 43        .byte $43   ; 
- D 1 - I - 0x0058C6 01:B8B6: 01        .byte $01, $A3, $01   ; 
- D 1 - I - 0x0058C9 01:B8B9: 01        .byte $01, $A3, $11   ; 

- D 1 - I - 0x0058CC 01:B8BC: 81        .byte $81   ; 
- D 1 - I - 0x0058CD 01:B8BD: 03        .byte $03   ; 
- D 1 - I - 0x0058CE 01:B8BE: F9        .byte $F9, $A5, $21   ; 

- D 1 - I - 0x0058D1 01:B8C1: 01        .byte $01   ; 
- D 1 - I - 0x0058D2 01:B8C2: 43        .byte $43   ; 
- D 1 - I - 0x0058D3 01:B8C3: 01        .byte $01, $A5, $21   ; 



off_08_B8C6_3B:
- D 1 - I - 0x0058D6 01:B8C6: 04        .byte $04   ; counter
- D 1 - I - 0x0058D7 01:B8C7: 03        .byte $03   ; spr_A
- D 1 - I - 0x0058D8 01:B8C8: FD        .byte $FD, $A7, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0058DB 01:B8CB: FD        .byte $FD, $A7, $01   ; 
- D 1 - I - 0x0058DE 01:B8CE: FD        .byte $FD, $A9, $11   ; 
- D 1 - I - 0x0058E1 01:B8D1: FD        .byte $FD, $AB, $21   ; 



off_08_B8D4_3C:
- D 1 - I - 0x0058E4 01:B8D4: 08        .byte $08   ; counter
- D 1 - I - 0x0058E5 01:B8D5: 02        .byte $02   ; spr_A
- D 1 - I - 0x0058E6 01:B8D6: 08        .byte $08, $85, $F1   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0058E9 01:B8D9: 10        .byte $10, $87, $F1   ; 
- D 1 - I - 0x0058EC 01:B8DC: F8        .byte $F8, $89, $01   ; 
- D 1 - I - 0x0058EF 01:B8DF: 00        .byte $00, $8B, $01   ; 
- D 1 - I - 0x0058F2 01:B8E2: 08        .byte $08, $8D, $01   ; 
- D 1 - I - 0x0058F5 01:B8E5: 10        .byte $10, $8F, $01   ; 
- D 1 - I - 0x0058F8 01:B8E8: F8        .byte $F8, $99, $F1   ; 
- D 1 - I - 0x0058FB 01:B8EB: 00        .byte $00, $9B, $F1   ; 



off_08_B8EE_3D:
off_FF_B8EE:
- D 1 - I - 0x0058FE 01:B8EE: 01        .byte $01   ; counter
- D 1 - I - 0x0058FF 01:B8EF: 01        .byte $01   ; spr_A
- D 1 - I - 0x005900 01:B8F0: FC        .byte $FC, $81, $F9   ; spr_X, spr_T, spr_Y



off_08_B8F3_3E:
- D 1 - I - 0x005903 01:B8F3: 01        .byte $01   ; counter
- D 1 - I - 0x005904 01:B8F4: 01        .byte $01   ; spr_A
- D 1 - I - 0x005905 01:B8F5: FC        .byte $FC, $83, $F9   ; spr_X, spr_T, spr_Y



off_08_B8F8_3F:
- D 1 - I - 0x005908 01:B8F8: FF        .byte $FF   ; 
- D 1 - I - 0x005909 01:B8F9: EE B8     .word off_FF_B8EE



off_08_B8FB_40:
off_FF_B8FB:
- D 1 - I - 0x00590B 01:B8FB: 81        .byte $81   ; counter
- D 1 - I - 0x00590C 01:B8FC: 00        .byte $00   ; spr_A
- D 1 - I - 0x00590D 01:B8FD: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005910 01:B900: 81        .byte $81   ; 
- D 1 - I - 0x005911 01:B901: 01        .byte $01   ; 
- D 1 - I - 0x005912 01:B902: 00        .byte $00, $9D, $F9   ; 

- D 1 - I - 0x005915 01:B905: 81        .byte $81   ; 
- D 1 - I - 0x005916 01:B906: 00        .byte $00   ; 
- D 1 - I - 0x005917 01:B907: 08        .byte $08, $A1, $F9   ; 

- D 1 - I - 0x00591A 01:B90A: 81        .byte $81   ; 
- D 1 - I - 0x00591B 01:B90B: 01        .byte $01   ; 
- D 1 - I - 0x00591C 01:B90C: F0        .byte $F0, $9D, $F9   ; 

- D 1 - I - 0x00591F 01:B90F: 81        .byte $81   ; 
- D 1 - I - 0x005920 01:B910: 03        .byte $03   ; 
- D 1 - I - 0x005921 01:B911: E0        .byte $E0, $93, $F9   ; 

- D 1 - I - 0x005924 01:B914: 01        .byte $01   ; 
- D 1 - I - 0x005925 01:B915: 43        .byte $43   ; 
- D 1 - I - 0x005926 01:B916: E8        .byte $E8, $93, $F9   ; 



off_08_B919_41:
off_FF_B919:
- D 1 - I - 0x005929 01:B919: 81        .byte $81   ; counter
- D 1 - I - 0x00592A 01:B91A: 00        .byte $00   ; spr_A
- D 1 - I - 0x00592B 01:B91B: F8        .byte $F8, $9F, $F9   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x00592E 01:B91E: 81        .byte $81   ; 
- D 1 - I - 0x00592F 01:B91F: 01        .byte $01   ; 
- D 1 - I - 0x005930 01:B920: 00        .byte $00, $9D, $F9   ; 

- D 1 - I - 0x005933 01:B923: 81        .byte $81   ; 
- D 1 - I - 0x005934 01:B924: 00        .byte $00   ; 
- D 1 - I - 0x005935 01:B925: 08        .byte $08, $A1, $F9   ; 

- D 1 - I - 0x005938 01:B928: 83        .byte $83   ; 
- D 1 - I - 0x005939 01:B929: 03        .byte $03   ; 
- D 1 - I - 0x00593A 01:B92A: F0        .byte $F0, $9D, $F9   ; 
- D 1 - I - 0x00593D 01:B92D: E0        .byte $E0, $95, $F9   ; 
- D 1 - I - 0x005940 01:B930: D8        .byte $D8, $97, $F9   ; 

- D 1 - I - 0x005943 01:B933: 01        .byte $01   ; 
- D 1 - I - 0x005944 01:B934: 43        .byte $43   ; 
- D 1 - I - 0x005945 01:B935: E8        .byte $E8, $95, $F9   ; 



off_08_B938_42:
- D 1 - I - 0x005948 01:B938: FF        .byte $FF   ; 
- D 1 - I - 0x005949 01:B939: FB B8     .word off_FF_B8FB



off_08_B93B_43:
- D 1 - I - 0x00594B 01:B93B: FF        .byte $FF   ; 
- D 1 - I - 0x00594C 01:B93C: 19 B9     .word off_FF_B919



_off032_0x00594E_0C:
- - - - - - 0x00594E 01:B93E: 70 B9     .word off_0C_B970_00
- D 1 - I - 0x005950 01:B940: 70 B9     .word off_0C_B970_01
- D 1 - I - 0x005952 01:B942: A4 B9     .word off_0C_B9A4_02
- - - - - - 0x005954 01:B944: 70 B9     .word off_0C_B970_03
- - - - - - 0x005956 01:B946: 70 B9     .word off_0C_B970_04
- D 1 - I - 0x005958 01:B948: D2 B9     .word off_0C_B9D2_05
- D 1 - I - 0x00595A 01:B94A: F7 B9     .word off_0C_B9F7_06
- D 1 - I - 0x00595C 01:B94C: 1E BA     .word off_0C_BA1E_07
- D 1 - I - 0x00595E 01:B94E: 21 BA     .word off_0C_BA21_08
- D 1 - I - 0x005960 01:B950: 24 BA     .word off_0C_BA24_09
- D 1 - I - 0x005962 01:B952: 47 BA     .word off_0C_BA47_0A
- D 1 - I - 0x005964 01:B954: 67 BA     .word off_0C_BA67_0B
- D 1 - I - 0x005966 01:B956: 8A BA     .word off_0C_BA8A_0C
- D 1 - I - 0x005968 01:B958: AA BA     .word off_0C_BAAA_0D
- D 1 - I - 0x00596A 01:B95A: AD BA     .word off_0C_BAAD_0E
- D 1 - I - 0x00596C 01:B95C: B0 BA     .word off_0C_BAB0_0F
- D 1 - I - 0x00596E 01:B95E: B3 BA     .word off_0C_BAB3_10
- D 1 - I - 0x005970 01:B960: B6 BA     .word off_0C_BAB6_11
- D 1 - I - 0x005972 01:B962: E5 BA     .word off_0C_BAE5_12
- D 1 - I - 0x005974 01:B964: 0B BB     .word off_0C_BB0B_13
- D 1 - I - 0x005976 01:B966: 3A BB     .word off_0C_BB3A_14
- D 1 - I - 0x005978 01:B968: 6C BB     .word off_0C_BB6C_15
- D 1 - I - 0x00597A 01:B96A: 6F BB     .word off_0C_BB6F_16
- D 1 - I - 0x00597C 01:B96C: 72 BB     .word off_0C_BB72_17
- D 1 - I - 0x00597E 01:B96E: 75 BB     .word off_0C_BB75_18



off_0C_B970_00:
off_0C_B970_01:
off_0C_B970_03:
off_0C_B970_04:
- D 1 - I - 0x005980 01:B970: 81        .byte $81   ; counter
- D 1 - I - 0x005981 01:B971: 01        .byte $01   ; spr_A
- D 1 - I - 0x005982 01:B972: F9        .byte $F9, $81, $E2   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005985 01:B975: 81        .byte $81   ; 
- D 1 - I - 0x005986 01:B976: 41        .byte $41   ; 
- D 1 - I - 0x005987 01:B977: 01        .byte $01, $81, $E2   ; 

- D 1 - I - 0x00598A 01:B97A: 82        .byte $82   ; 
- D 1 - I - 0x00598B 01:B97B: 02        .byte $02   ; 
- D 1 - I - 0x00598C 01:B97C: F1        .byte $F1, $83, $F2   ; 
- D 1 - I - 0x00598F 01:B97F: F9        .byte $F9, $85, $F2   ; 

- D 1 - I - 0x005992 01:B982: 82        .byte $82   ; 
- D 1 - I - 0x005993 01:B983: 42        .byte $42   ; 
- D 1 - I - 0x005994 01:B984: 09        .byte $09, $83, $F2   ; 
- D 1 - I - 0x005997 01:B987: 01        .byte $01, $85, $F2   ; 

- D 1 - I - 0x00599A 01:B98A: 82        .byte $82   ; 
- D 1 - I - 0x00599B 01:B98B: 00        .byte $00   ; 
- D 1 - I - 0x00599C 01:B98C: F1        .byte $F1, $89, $00   ; 
- D 1 - I - 0x00599F 01:B98F: F9        .byte $F9, $8B, $00   ; 

- D 1 - I - 0x0059A2 01:B992: 82        .byte $82   ; 
- D 1 - I - 0x0059A3 01:B993: 40        .byte $40   ; 
- D 1 - I - 0x0059A4 01:B994: 09        .byte $09, $89, $00   ; 
- D 1 - I - 0x0059A7 01:B997: 01        .byte $01, $8B, $00   ; 

- D 1 - I - 0x0059AA 01:B99A: 81        .byte $81   ; 
- D 1 - I - 0x0059AB 01:B99B: 00        .byte $00   ; 
- D 1 - I - 0x0059AC 01:B99C: F9        .byte $F9, $87, $00   ; 

- D 1 - I - 0x0059AF 01:B99F: 01        .byte $01   ; 
- D 1 - I - 0x0059B0 01:B9A0: 40        .byte $40   ; 
- D 1 - I - 0x0059B1 01:B9A1: 01        .byte $01, $87, $00   ; 



off_0C_B9A4_02:
- D 1 - I - 0x0059B4 01:B9A4: 81        .byte $81   ; counter
- D 1 - I - 0x0059B5 01:B9A5: 01        .byte $01   ; spr_A
- D 1 - I - 0x0059B6 01:B9A6: F9        .byte $F9, $8D, $E0   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x0059B9 01:B9A9: 81        .byte $81   ; 
- D 1 - I - 0x0059BA 01:B9AA: 02        .byte $02   ; 
- D 1 - I - 0x0059BB 01:B9AB: F9        .byte $F9, $8F, $F0   ; 

- D 1 - I - 0x0059BE 01:B9AE: 81        .byte $81   ; 
- D 1 - I - 0x0059BF 01:B9AF: 41        .byte $41   ; 
- D 1 - I - 0x0059C0 01:B9B0: 01        .byte $01, $8D, $E0   ; 

- D 1 - I - 0x0059C3 01:B9B3: 81        .byte $81   ; 
- D 1 - I - 0x0059C4 01:B9B4: 42        .byte $42   ; 
- D 1 - I - 0x0059C5 01:B9B5: 01        .byte $01, $8F, $F0   ; 

- D 1 - I - 0x0059C8 01:B9B8: 81        .byte $81   ; 
- D 1 - I - 0x0059C9 01:B9B9: 02        .byte $02   ; 
- D 1 - I - 0x0059CA 01:B9BA: F1        .byte $F1, $83, $F0   ; 

- D 1 - I - 0x0059CD 01:B9BD: 81        .byte $81   ; 
- D 1 - I - 0x0059CE 01:B9BE: 42        .byte $42   ; 
- D 1 - I - 0x0059CF 01:B9BF: 09        .byte $09, $83, $F0   ; 

- D 1 - I - 0x0059D2 01:B9C2: 82        .byte $82   ; 
- D 1 - I - 0x0059D3 01:B9C3: 00        .byte $00   ; 
- D 1 - I - 0x0059D4 01:B9C4: F1        .byte $F1, $89, $00   ; 
- D 1 - I - 0x0059D7 01:B9C7: F9        .byte $F9, $8B, $00   ; 

- D 1 - I - 0x0059DA 01:B9CA: 02        .byte $02   ; 
- D 1 - I - 0x0059DB 01:B9CB: 40        .byte $40   ; 
- D 1 - I - 0x0059DC 01:B9CC: 09        .byte $09, $89, $00   ; 
- D 1 - I - 0x0059DF 01:B9CF: 01        .byte $01, $8B, $00   ; 



off_0C_B9D2_05:
off_FF_B9D2:
- D 1 - I - 0x0059E2 01:B9D2: 82        .byte $82   ; counter
- D 1 - I - 0x0059E3 01:B9D3: 01        .byte $01   ; spr_A
- D 1 - I - 0x0059E4 01:B9D4: F9        .byte $F9, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x0059E7 01:B9D7: 01        .byte $01, $93, $E0   ; 

- D 1 - I - 0x0059EA 01:B9DA: 81        .byte $81   ; 
- D 1 - I - 0x0059EB 01:B9DB: 00        .byte $00   ; 
- D 1 - I - 0x0059EC 01:B9DC: E9        .byte $E9, $95, $F0   ; 

- D 1 - I - 0x0059EF 01:B9DF: 81        .byte $81   ; 
- D 1 - I - 0x0059F0 01:B9E0: 01        .byte $01   ; 
- D 1 - I - 0x0059F1 01:B9E1: F1        .byte $F1, $97, $F0   ; 

- D 1 - I - 0x0059F4 01:B9E4: 82        .byte $82   ; 
- D 1 - I - 0x0059F5 01:B9E5: 02        .byte $02   ; 
- D 1 - I - 0x0059F6 01:B9E6: F9        .byte $F9, $99, $F0   ; 
- D 1 - I - 0x0059F9 01:B9E9: 01        .byte $01, $9B, $F0   ; 

- D 1 - I - 0x0059FC 01:B9EC: 03        .byte $03   ; 
- D 1 - I - 0x0059FD 01:B9ED: 00        .byte $00   ; 
- D 1 - I - 0x0059FE 01:B9EE: F9        .byte $F9, $9D, $00   ; 
- D 1 - I - 0x005A01 01:B9F1: 01        .byte $01, $9F, $00   ; 
- D 1 - I - 0x005A04 01:B9F4: 01        .byte $01, $A1, $10   ; 



off_0C_B9F7_06:
off_FF_B9F7:
- D 1 - I - 0x005A07 01:B9F7: 82        .byte $82   ; counter
- D 1 - I - 0x005A08 01:B9F8: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A09 01:B9F9: FB        .byte $FB, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A0C 01:B9FC: 03        .byte $03, $93, $E0   ; 

- D 1 - I - 0x005A0F 01:B9FF: 81        .byte $81   ; 
- D 1 - I - 0x005A10 01:BA00: 02        .byte $02   ; 
- D 1 - I - 0x005A11 01:BA01: 03        .byte $03, $9B, $F0   ; 

- D 1 - I - 0x005A14 01:BA04: 83        .byte $83   ; 
- D 1 - I - 0x005A15 01:BA05: 00        .byte $00   ; 
- D 1 - I - 0x005A16 01:BA06: F9        .byte $F9, $9D, $00   ; 
- D 1 - I - 0x005A19 01:BA09: 01        .byte $01, $9F, $00   ; 
- D 1 - I - 0x005A1C 01:BA0C: 01        .byte $01, $A1, $10   ; 

- D 1 - I - 0x005A1F 01:BA0F: 81        .byte $81   ; 
- D 1 - I - 0x005A20 01:BA10: 02        .byte $02   ; 
- D 1 - I - 0x005A21 01:BA11: FB        .byte $FB, $A7, $F0   ; 

- D 1 - I - 0x005A24 01:BA14: 81        .byte $81   ; 
- D 1 - I - 0x005A25 01:BA15: 01        .byte $01   ; 
- D 1 - I - 0x005A26 01:BA16: F3        .byte $F3, $A5, $F0   ; 

- D 1 - I - 0x005A29 01:BA19: 01        .byte $01   ; 
- D 1 - I - 0x005A2A 01:BA1A: 00        .byte $00   ; 
- D 1 - I - 0x005A2B 01:BA1B: F3        .byte $F3, $A3, $E0   ; 



off_0C_BA1E_07:
- D 1 - I - 0x005A2E 01:BA1E: FF        .byte $FF   ; 
- D 1 - I - 0x005A2F 01:BA1F: D2 B9     .word off_FF_B9D2



off_0C_BA21_08:
- D 1 - I - 0x005A31 01:BA21: FF        .byte $FF   ; 
- D 1 - I - 0x005A32 01:BA22: F7 B9     .word off_FF_B9F7



off_0C_BA24_09:
off_FF_BA24:
- D 1 - I - 0x005A34 01:BA24: 82        .byte $82   ; counter
- D 1 - I - 0x005A35 01:BA25: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A36 01:BA26: F6        .byte $F6, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A39 01:BA29: FE        .byte $FE, $93, $E0   ; 

- D 1 - I - 0x005A3C 01:BA2C: 82        .byte $82   ; 
- D 1 - I - 0x005A3D 01:BA2D: 02        .byte $02   ; 
- D 1 - I - 0x005A3E 01:BA2E: FE        .byte $FE, $9B, $F0   ; 
- D 1 - I - 0x005A41 01:BA31: F6        .byte $F6, $A7, $F0   ; 

- D 1 - I - 0x005A44 01:BA34: 81        .byte $81   ; 
- D 1 - I - 0x005A45 01:BA35: 01        .byte $01   ; 
- D 1 - I - 0x005A46 01:BA36: EE        .byte $EE, $A5, $F0   ; 

- D 1 - I - 0x005A49 01:BA39: 04        .byte $04   ; 
- D 1 - I - 0x005A4A 01:BA3A: 00        .byte $00   ; 
- D 1 - I - 0x005A4B 01:BA3B: EE        .byte $EE, $A3, $E0   ; 
- D 1 - I - 0x005A4E 01:BA3E: F1        .byte $F1, $A9, $00   ; 
- D 1 - I - 0x005A51 01:BA41: F9        .byte $F9, $AB, $00   ; 
- D 1 - I - 0x005A54 01:BA44: 01        .byte $01, $AD, $00   ; 



off_0C_BA47_0A:
off_FF_BA47:
- D 1 - I - 0x005A57 01:BA47: 82        .byte $82   ; counter
- D 1 - I - 0x005A58 01:BA48: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A59 01:BA49: F6        .byte $F6, $91, $E3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A5C 01:BA4C: FE        .byte $FE, $93, $E3   ; 

- D 1 - I - 0x005A5F 01:BA4F: 82        .byte $82   ; 
- D 1 - I - 0x005A60 01:BA50: 02        .byte $02   ; 
- D 1 - I - 0x005A61 01:BA51: FE        .byte $FE, $9B, $F3   ; 
- D 1 - I - 0x005A64 01:BA54: F6        .byte $F6, $A7, $F3   ; 

- D 1 - I - 0x005A67 01:BA57: 81        .byte $81   ; 
- D 1 - I - 0x005A68 01:BA58: 01        .byte $01   ; 
- D 1 - I - 0x005A69 01:BA59: EE        .byte $EE, $A5, $F3   ; 

- D 1 - I - 0x005A6C 01:BA5C: 03        .byte $03   ; 
- D 1 - I - 0x005A6D 01:BA5D: 00        .byte $00   ; 
- D 1 - I - 0x005A6E 01:BA5E: EE        .byte $EE, $A3, $E3   ; 
- D 1 - I - 0x005A71 01:BA61: F9        .byte $F9, $AF, $00   ; 
- D 1 - I - 0x005A74 01:BA64: 01        .byte $01, $B1, $00   ; 



off_0C_BA67_0B:
off_FF_BA67:
- D 1 - I - 0x005A77 01:BA67: 82        .byte $82   ; counter
- D 1 - I - 0x005A78 01:BA68: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A79 01:BA69: F4        .byte $F4, $91, $E0   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A7C 01:BA6C: FC        .byte $FC, $93, $E0   ; 

- D 1 - I - 0x005A7F 01:BA6F: 82        .byte $82   ; 
- D 1 - I - 0x005A80 01:BA70: 02        .byte $02   ; 
- D 1 - I - 0x005A81 01:BA71: FC        .byte $FC, $9B, $F0   ; 
- D 1 - I - 0x005A84 01:BA74: F4        .byte $F4, $A7, $F0   ; 

- D 1 - I - 0x005A87 01:BA77: 81        .byte $81   ; 
- D 1 - I - 0x005A88 01:BA78: 01        .byte $01   ; 
- D 1 - I - 0x005A89 01:BA79: EC        .byte $EC, $A5, $F0   ; 

- D 1 - I - 0x005A8C 01:BA7C: 04        .byte $04   ; 
- D 1 - I - 0x005A8D 01:BA7D: 00        .byte $00   ; 
- D 1 - I - 0x005A8E 01:BA7E: EC        .byte $EC, $A3, $E0   ; 
- D 1 - I - 0x005A91 01:BA81: F4        .byte $F4, $B3, $00   ; 
- D 1 - I - 0x005A94 01:BA84: FC        .byte $FC, $B5, $00   ; 
- D 1 - I - 0x005A97 01:BA87: 04        .byte $04, $B7, $00   ; 



off_0C_BA8A_0C:
off_FF_BA8A:
- D 1 - I - 0x005A9A 01:BA8A: 82        .byte $82   ; counter
- D 1 - I - 0x005A9B 01:BA8B: 01        .byte $01   ; spr_A
- D 1 - I - 0x005A9C 01:BA8C: F6        .byte $F6, $91, $E3   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005A9F 01:BA8F: FE        .byte $FE, $93, $E3   ; 

- D 1 - I - 0x005AA2 01:BA92: 82        .byte $82   ; 
- D 1 - I - 0x005AA3 01:BA93: 02        .byte $02   ; 
- D 1 - I - 0x005AA4 01:BA94: FE        .byte $FE, $9B, $F3   ; 
- D 1 - I - 0x005AA7 01:BA97: F6        .byte $F6, $A7, $F3   ; 

- D 1 - I - 0x005AAA 01:BA9A: 81        .byte $81   ; 
- D 1 - I - 0x005AAB 01:BA9B: 01        .byte $01   ; 
- D 1 - I - 0x005AAC 01:BA9C: EE        .byte $EE, $A5, $F3   ; 

- D 1 - I - 0x005AAF 01:BA9F: 03        .byte $03   ; 
- D 1 - I - 0x005AB0 01:BAA0: 00        .byte $00   ; 
- D 1 - I - 0x005AB1 01:BAA1: EE        .byte $EE, $A3, $E3   ; 
- D 1 - I - 0x005AB4 01:BAA4: F9        .byte $F9, $AF, $00   ; 
- D 1 - I - 0x005AB7 01:BAA7: 01        .byte $01, $B1, $00   ; 



off_0C_BAAA_0D:
- D 1 - I - 0x005ABA 01:BAAA: FF        .byte $FF   ; 
- D 1 - I - 0x005ABB 01:BAAB: 24 BA     .word off_FF_BA24



off_0C_BAAD_0E:
- D 1 - I - 0x005ABD 01:BAAD: FF        .byte $FF   ; 
- D 1 - I - 0x005ABE 01:BAAE: 47 BA     .word off_FF_BA47



off_0C_BAB0_0F:
- D 1 - I - 0x005AC0 01:BAB0: FF        .byte $FF   ; 
- D 1 - I - 0x005AC1 01:BAB1: 67 BA     .word off_FF_BA67



off_0C_BAB3_10:
- D 1 - I - 0x005AC3 01:BAB3: FF        .byte $FF   ; 
- D 1 - I - 0x005AC4 01:BAB4: 8A BA     .word off_FF_BA8A



off_0C_BAB6_11:
off_FF_BAB6:
- D 1 - I - 0x005AC6 01:BAB6: 83        .byte $83   ; counter
- D 1 - I - 0x005AC7 01:BAB7: 00        .byte $00   ; spr_A
- D 1 - I - 0x005AC8 01:BAB8: F1        .byte $F1, $A9, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005ACB 01:BABB: F9        .byte $F9, $AB, $00   ; 
- D 1 - I - 0x005ACE 01:BABE: 01        .byte $01, $AD, $00   ; 

- D 1 - I - 0x005AD1 01:BAC1: 81        .byte $81   ; 
- D 1 - I - 0x005AD2 01:BAC2: 01        .byte $01   ; 
- D 1 - I - 0x005AD3 01:BAC3: F7        .byte $F7, $81, $E0   ; 

- D 1 - I - 0x005AD6 01:BAC6: 82        .byte $82   ; 
- D 1 - I - 0x005AD7 01:BAC7: 02        .byte $02   ; 
- D 1 - I - 0x005AD8 01:BAC8: EF        .byte $EF, $83, $F0   ; 
- D 1 - I - 0x005ADB 01:BACB: F7        .byte $F7, $85, $F0   ; 

- D 1 - I - 0x005ADE 01:BACE: 81        .byte $81   ; 
- D 1 - I - 0x005ADF 01:BACF: 00        .byte $00   ; 
- D 1 - I - 0x005AE0 01:BAD0: F7        .byte $F7, $87, $00   ; 

- D 1 - I - 0x005AE3 01:BAD3: 81        .byte $81   ; 
- D 1 - I - 0x005AE4 01:BAD4: 41        .byte $41   ; 
- D 1 - I - 0x005AE5 01:BAD5: FF        .byte $FF, $81, $E0   ; 

- D 1 - I - 0x005AE8 01:BAD8: 82        .byte $82   ; 
- D 1 - I - 0x005AE9 01:BAD9: 42        .byte $42   ; 
- D 1 - I - 0x005AEA 01:BADA: 07        .byte $07, $83, $F0   ; 
- D 1 - I - 0x005AED 01:BADD: FF        .byte $FF, $85, $F0   ; 

- D 1 - I - 0x005AF0 01:BAE0: 01        .byte $01   ; 
- D 1 - I - 0x005AF1 01:BAE1: 40        .byte $40   ; 
- D 1 - I - 0x005AF2 01:BAE2: FF        .byte $FF, $87, $00   ; 



off_0C_BAE5_12:
off_FF_BAE5:
- D 1 - I - 0x005AF5 01:BAE5: 81        .byte $81   ; counter
- D 1 - I - 0x005AF6 01:BAE6: 00        .byte $00   ; spr_A
- D 1 - I - 0x005AF7 01:BAE7: 01        .byte $01, $B1, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005AFA 01:BAEA: 81        .byte $81   ; 
- D 1 - I - 0x005AFB 01:BAEB: 02        .byte $02   ; 
- D 1 - I - 0x005AFC 01:BAEC: EE        .byte $EE, $83, $F2   ; 

- D 1 - I - 0x005AFF 01:BAEF: 81        .byte $81   ; 
- D 1 - I - 0x005B00 01:BAF0: 01        .byte $01   ; 
- D 1 - I - 0x005B01 01:BAF1: F6        .byte $F6, $8D, $E2   ; 

- D 1 - I - 0x005B04 01:BAF4: 81        .byte $81   ; 
- D 1 - I - 0x005B05 01:BAF5: 02        .byte $02   ; 
- D 1 - I - 0x005B06 01:BAF6: F6        .byte $F6, $8F, $F2   ; 

- D 1 - I - 0x005B09 01:BAF9: 81        .byte $81   ; 
- D 1 - I - 0x005B0A 01:BAFA: 41        .byte $41   ; 
- D 1 - I - 0x005B0B 01:BAFB: FE        .byte $FE, $8D, $E2   ; 

- D 1 - I - 0x005B0E 01:BAFE: 82        .byte $82   ; 
- D 1 - I - 0x005B0F 01:BAFF: 42        .byte $42   ; 
- D 1 - I - 0x005B10 01:BB00: FE        .byte $FE, $8F, $F2   ; 
- D 1 - I - 0x005B13 01:BB03: 06        .byte $06, $83, $F2   ; 

- D 1 - I - 0x005B16 01:BB06: 01        .byte $01   ; 
- D 1 - I - 0x005B17 01:BB07: 00        .byte $00   ; 
- D 1 - I - 0x005B18 01:BB08: F9        .byte $F9, $AF, $00   ; 



off_0C_BB0B_13:
off_FF_BB0B:
- D 1 - I - 0x005B1B 01:BB0B: 83        .byte $83   ; counter
- D 1 - I - 0x005B1C 01:BB0C: 00        .byte $00   ; spr_A
- D 1 - I - 0x005B1D 01:BB0D: F1        .byte $F1, $B3, $00   ; spr_X, spr_T, spr_Y
- D 1 - I - 0x005B20 01:BB10: F9        .byte $F9, $B5, $00   ; 
- D 1 - I - 0x005B23 01:BB13: 01        .byte $01, $B7, $00   ; 

- D 1 - I - 0x005B26 01:BB16: 81        .byte $81   ; 
- D 1 - I - 0x005B27 01:BB17: 01        .byte $01   ; 
- D 1 - I - 0x005B28 01:BB18: F4        .byte $F4, $81, $E0   ; 

- D 1 - I - 0x005B2B 01:BB1B: 82        .byte $82   ; 
- D 1 - I - 0x005B2C 01:BB1C: 02        .byte $02   ; 
- D 1 - I - 0x005B2D 01:BB1D: EC        .byte $EC, $83, $F0   ; 
- D 1 - I - 0x005B30 01:BB20: F4        .byte $F4, $85, $F0   ; 

- D 1 - I - 0x005B33 01:BB23: 81        .byte $81   ; 
- D 1 - I - 0x005B34 01:BB24: 00        .byte $00   ; 
- D 1 - I - 0x005B35 01:BB25: F4        .byte $F4, $87, $00   ; 

- D 1 - I - 0x005B38 01:BB28: 81        .byte $81   ; 
- D 1 - I - 0x005B39 01:BB29: 41        .byte $41   ; 
- D 1 - I - 0x005B3A 01:BB2A: FC        .byte $FC, $81, $E0   ; 

- D 1 - I - 0x005B3D 01:BB2D: 82        .byte $82   ; 
- D 1 - I - 0x005B3E 01:BB2E: 42        .byte $42   ; 
- D 1 - I - 0x005B3F 01:BB2F: 04        .byte $04, $83, $F0   ; 
- D 1 - I - 0x005B42 01:BB32: FC        .byte $FC, $85, $F0   ; 

- D 1 - I - 0x005B45 01:BB35: 01        .byte $01   ; 
- D 1 - I - 0x005B46 01:BB36: 40        .byte $40   ; 
- D 1 - I - 0x005B47 01:BB37: FC        .byte $FC, $87, $00   ; 



off_0C_BB3A_14:
off_FF_BB3A:
- D 1 - I - 0x005B4A 01:BB3A: 81        .byte $81   ; counter
- D 1 - I - 0x005B4B 01:BB3B: 00        .byte $00   ; spr_A
- D 1 - I - 0x005B4C 01:BB3C: 01        .byte $01, $B1, $00   ; spr_X, spr_T, spr_Y

- D 1 - I - 0x005B4F 01:BB3F: 81        .byte $81   ; 
- D 1 - I - 0x005B50 01:BB40: 02        .byte $02   ; 
- D 1 - I - 0x005B51 01:BB41: EE        .byte $EE, $83, $F2   ; 

- D 1 - I - 0x005B54 01:BB44: 81        .byte $81   ; 
- D 1 - I - 0x005B55 01:BB45: 42        .byte $42   ; 
- D 1 - I - 0x005B56 01:BB46: 06        .byte $06, $83, $F2   ; 

- D 1 - I - 0x005B59 01:BB49: 81        .byte $81   ; 
- D 1 - I - 0x005B5A 01:BB4A: 00        .byte $00   ; 
- D 1 - I - 0x005B5B 01:BB4B: F9        .byte $F9, $AF, $00   ; 

- D 1 - I - 0x005B5E 01:BB4E: 81        .byte $81   ; 
- D 1 - I - 0x005B5F 01:BB4F: 01        .byte $01   ; 
- D 1 - I - 0x005B60 01:BB50: F6        .byte $F6, $81, $E2   ; 

- D 1 - I - 0x005B63 01:BB53: 81        .byte $81   ; 
- D 1 - I - 0x005B64 01:BB54: 02        .byte $02   ; 
- D 1 - I - 0x005B65 01:BB55: F6        .byte $F6, $85, $F2   ; 

- D 1 - I - 0x005B68 01:BB58: 81        .byte $81   ; 
- D 1 - I - 0x005B69 01:BB59: 41        .byte $41   ; 
- D 1 - I - 0x005B6A 01:BB5A: FE        .byte $FE, $81, $E2   ; 

- D 1 - I - 0x005B6D 01:BB5D: 81        .byte $81   ; 
- D 1 - I - 0x005B6E 01:BB5E: 42        .byte $42   ; 
- D 1 - I - 0x005B6F 01:BB5F: FE        .byte $FE, $85, $F2   ; 

- D 1 - I - 0x005B72 01:BB62: 81        .byte $81   ; 
- D 1 - I - 0x005B73 01:BB63: 00        .byte $00   ; 
- D 1 - I - 0x005B74 01:BB64: F6        .byte $F6, $87, $02   ; 

- D 1 - I - 0x005B77 01:BB67: 01        .byte $01   ; 
- D 1 - I - 0x005B78 01:BB68: 40        .byte $40   ; 
- D 1 - I - 0x005B79 01:BB69: FE        .byte $FE, $87, $02   ; 



off_0C_BB6C_15:
- D 1 - I - 0x005B7C 01:BB6C: FF        .byte $FF   ; 
- D 1 - I - 0x005B7D 01:BB6D: B6 BA     .word off_FF_BAB6



off_0C_BB6F_16:
- D 1 - I - 0x005B7F 01:BB6F: FF        .byte $FF   ; 
- D 1 - I - 0x005B80 01:BB70: E5 BA     .word off_FF_BAE5



off_0C_BB72_17:
- D 1 - I - 0x005B82 01:BB72: FF        .byte $FF   ; 
- D 1 - I - 0x005B83 01:BB73: 0B BB     .word off_FF_BB0B



off_0C_BB75_18:
- D 1 - I - 0x005B85 01:BB75: FF        .byte $FF   ; 
- D 1 - I - 0x005B86 01:BB76: 3A BB     .word off_FF_BB3A



bra_BB78:
- - - - - - 0x005B88 01:BB78: A2 02     LDX #$02
bra_BB7A_loop:
- - - - - - 0x005B8A 01:BB7A: 20 83 91  JSR sub_0x009193_0782x_AND_7F
- - - - - - 0x005B8D 01:BB7D: C9 30     CMP #$30
- - - - - - 0x005B8F 01:BB7F: D0 06     BNE bra_BB87
- - - - - - 0x005B91 01:BB81: 20 22 BC  JSR sub_BC22
- - - - - - 0x005B94 01:BB84: 20 8F BB  JSR sub_BB8F
bra_BB87:
- - - - - - 0x005B97 01:BB87: E8        INX
- - - - - - 0x005B98 01:BB88: E0 0A     CPX #$0A
- - - - - - 0x005B9A 01:BB8A: 90 EE     BCC bra_BB7A_loop
- - - - - - 0x005B9C 01:BB8C: A6 53     LDX ram_0053
- - - - - - 0x005B9E 01:BB8E: 60        RTS



sub_BB8F:
C - - - - - 0x005B9F 01:BB8F: A9 01     LDA #$01
C - - - - - 0x005BA1 01:BB91: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005BA4 01:BB94: 85 95     STA ram_0095
C - - - - - 0x005BA6 01:BB96: 60        RTS



ofs_016_0x005BA7_13:
C - - J - - 0x005BA7 01:BB97: 20 9D BB  JSR sub_BB9D
C - - - - - 0x005BAA 01:BB9A: 4C 10 8E  JMP loc_0x008E20



sub_BB9D:
C - - - - - 0x005BAD 01:BB9D: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005BB0 01:BBA0: D0 16     BNE bra_BBB8
C - - - - - 0x005BB2 01:BBA2: 20 8F BB  JSR sub_BB8F
C - - - - - 0x005BB5 01:BBA5: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x005BB8 01:BBA8: A9 07     LDA #$07
C - - - - - 0x005BBA 01:BBAA: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x005BBD 01:BBAD: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x005BC0 01:BBB0: 20 CA BC  JSR sub_BCCA
C - - - - - 0x005BC3 01:BBB3: F0 3D     BEQ bra_BBF2_RTS
bra_BBB5:
C - - - - - 0x005BC5 01:BBB5: 4C 17 9A  JMP loc_0x009A27
bra_BBB8:
C - - - - - 0x005BC8 01:BBB8: A5 95     LDA ram_0095
C - - - - - 0x005BCA 01:BBBA: F0 BC     BEQ bra_BB78
C - - - - - 0x005BCC 01:BBBC: 20 CA BC  JSR sub_BCCA
C - - - - - 0x005BCF 01:BBBF: F0 32     BEQ bra_BBF3
C - - - - - 0x005BD1 01:BBC1: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005BD4 01:BBC4: D0 EF     BNE bra_BBB5
C - - - - - 0x005BD6 01:BBC6: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x005BD9 01:BBC9: F0 14     BEQ bra_BBDF
C - - - - - 0x005BDB 01:BBCB: 20 6B BC  JSR sub_BC6B
C - - - - - 0x005BDE 01:BBCE: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005BE1 01:BBD1: 18        CLC
C - - - - - 0x005BE2 01:BBD2: 69 09     ADC #$09
C - - - - - 0x005BE4 01:BBD4: 20 8D BC  JSR sub_BC8D
C - - - - - 0x005BE7 01:BBD7: 90 19     BCC bra_BBF2_RTS
C - - - - - 0x005BE9 01:BBD9: DE D2 07  DEC ram_07D2_unk,X
C - - - - - 0x005BEC 01:BBDC: F0 D7     BEQ bra_BBB5
C - - - - - 0x005BEE 01:BBDE: 60        RTS
bra_BBDF:
C - - - - - 0x005BEF 01:BBDF: A9 01     LDA #$01
C - - - - - 0x005BF1 01:BBE1: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x005BF4 01:BBE4: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x005BF7 01:BBE7: F0 06     BEQ bra_BBEF
C - - - - - 0x005BF9 01:BBE9: C0 10     CPY #$10
C - - - - - 0x005BFB 01:BBEB: B0 02     BCS bra_BBEF
C - - - - - 0x005BFD 01:BBED: A9 02     LDA #$02
bra_BBEF:
C - - - - - 0x005BFF 01:BBEF: 9D D2 07  STA ram_07D2_unk,X
bra_BBF2_RTS:
C - - - - - 0x005C02 01:BBF2: 60        RTS
bra_BBF3:
C - - - - - 0x005C03 01:BBF3: A5 26     LDA ram_buffer_index
C - - - - - 0x005C05 01:BBF5: D0 FB     BNE bra_BBF2_RTS
C - - - - - 0x005C07 01:BBF7: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005C0A 01:BBFA: F0 2C     BEQ bra_BC28
C - - - - - 0x005C0C 01:BBFC: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x005C0F 01:BBFF: 18        CLC
C - - - - - 0x005C10 01:BC00: 69 20     ADC #$20
C - - - - - 0x005C12 01:BC02: C9 40     CMP #$40
C - - - - - 0x005C14 01:BC04: 90 22     BCC bra_BC28
- - - - - - 0x005C16 01:BC06: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x005C19 01:BC09: F0 E7     BEQ bra_BBF2_RTS
- - - - - - 0x005C1B 01:BC0B: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005C1E 01:BC0E: 29 01     AND #$01
- - - - - - 0x005C20 01:BC10: 18        CLC
- - - - - - 0x005C21 01:BC11: 69 0B     ADC #$0B
- - - - - - 0x005C23 01:BC13: 20 8D BC  JSR sub_BC8D
- - - - - - 0x005C26 01:BC16: 90 DA     BCC bra_BBF2_RTS
- - - - - - 0x005C28 01:BC18: FE D2 07  INC ram_07D2_unk,X
- - - - - - 0x005C2B 01:BC1B: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005C2E 01:BC1E: C9 02     CMP #$02
- - - - - - 0x005C30 01:BC20: 90 D0     BCC bra_BBF2_RTS
bra_BC22:
sub_BC22:
C - - - - - 0x005C32 01:BC22: A9 00     LDA #$00
C - - - - - 0x005C34 01:BC24: 9D AA 07  STA ram_07AA_unk,X
bra_BC27_RTS:
C - - - - - 0x005C37 01:BC27: 60        RTS
bra_BC28:
C - - - - - 0x005C38 01:BC28: A9 00     LDA #$00
C - - - - - 0x005C3A 01:BC2A: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x005C3D 01:BC2D: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x005C40 01:BC30: D0 F5     BNE bra_BC27_RTS
C - - - - - 0x005C42 01:BC32: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005C45 01:BC35: A8        TAY
C - - - - - 0x005C46 01:BC36: B9 D3 BC  LDA tbl_BCD3,Y
C - - - - - 0x005C49 01:BC39: A8        TAY
C - - - - - 0x005C4A 01:BC3A: A9 08     LDA #$08
C - - - - - 0x005C4C 01:BC3C: C0 80     CPY #$80
C - - - - - 0x005C4E 01:BC3E: B0 02     BCS bra_BC42
C - - - - - 0x005C50 01:BC40: A9 01     LDA #$01
bra_BC42:
C - - - - - 0x005C52 01:BC42: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x005C55 01:BC45: 98        TYA
C - - - - - 0x005C56 01:BC46: 29 7F     AND #$7F
C - - - - - 0x005C58 01:BC48: A8        TAY
C - - - - - 0x005C59 01:BC49: 0A        ASL
C - - - - - 0x005C5A 01:BC4A: 0A        ASL
C - - - - - 0x005C5B 01:BC4B: 0A        ASL
C - - - - - 0x005C5C 01:BC4C: 18        CLC
C - - - - - 0x005C5D 01:BC4D: 69 38     ADC #$38
C - - - - - 0x005C5F 01:BC4F: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x005C62 01:BC52: 98        TYA
C - - - - - 0x005C63 01:BC53: 20 8D BC  JSR sub_BC8D
C - - - - - 0x005C66 01:BC56: 90 33     BCC bra_BC8B
C - - - - - 0x005C68 01:BC58: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x005C6B 01:BC5B: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005C6E 01:BC5E: C9 12     CMP #$12
C - - - - - 0x005C70 01:BC60: B0 C0     BCS bra_BC22
C - - - - - 0x005C72 01:BC62: C9 09     CMP #$09
C - - - - - 0x005C74 01:BC64: D0 C1     BNE bra_BC27_RTS
C - - - - - 0x005C76 01:BC66: A9 28     LDA #con_music_28
C - - - - - 0x005C78 01:BC68: 4C D8 95  JMP loc_0x0095E8_play_music



sub_BC6B:
C - - - - - 0x005C7B 01:BC6B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005C7E 01:BC6E: 85 91     STA ram_0091
C - - - - - 0x005C80 01:BC70: BC D2 07  LDY ram_07D2_unk,X
C - - - - - 0x005C83 01:BC73: B9 F0 BC  LDA tbl_BCF1 - $01,Y
C - - - - - 0x005C86 01:BC76: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x005C89 01:BC79: A9 51     LDA #$51
C - - - - - 0x005C8B 01:BC7B: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x005C8E 01:BC7E: 20 94 84  JSR sub_0x0084A4
C - - - - - 0x005C91 01:BC81: A9 00     LDA #$00
C - - - - - 0x005C93 01:BC83: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x005C96 01:BC86: A5 91     LDA ram_0091
C - - - - - 0x005C98 01:BC88: 9D 68 06  STA ram_obj_pos_Y,X
bra_BC8B:
C - - - - - 0x005C9B 01:BC8B: 18        CLC
C - - - - - 0x005C9C 01:BC8C: 60        RTS



sub_BC8D:
C - - - - - 0x005C9D 01:BC8D: 48        PHA
C - - - - - 0x005C9E 01:BC8E: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CA1 01:BC91: 68        PLA
C - - - - - 0x005CA2 01:BC92: C0 00     CPY #$00
C - - - - - 0x005CA4 01:BC94: D0 08     BNE bra_BC9E
C - - - - - 0x005CA6 01:BC96: C9 0C     CMP #$0C
C - - - - - 0x005CA8 01:BC98: B0 04     BCS bra_BC9E
; 00-0B
C - - - - - 0x005CAA 01:BC9A: A8        TAY
C - - - - - 0x005CAB 01:BC9B: B9 E5 BC  LDA tbl_BCE5_index,Y
bra_BC9E:
C - - - - - 0x005CAE 01:BC9E: 0A        ASL
C - - - - - 0x005CAF 01:BC9F: 0A        ASL
C - - - - - 0x005CB0 01:BCA0: A8        TAY
C - - - - - 0x005CB1 01:BCA1: B9 F3 BC  LDA tbl_BCF3,Y
C - - - - - 0x005CB4 01:BCA4: 85 02     STA ram_0002
C - - - - - 0x005CB6 01:BCA6: B9 F4 BC  LDA tbl_BCF3 + $01,Y
C - - - - - 0x005CB9 01:BCA9: 85 03     STA ram_0003
C - - - - - 0x005CBB 01:BCAB: B9 F5 BC  LDA tbl_BCF3 + $02,Y
C - - - - - 0x005CBE 01:BCAE: 85 06     STA ram_0006
C - - - - - 0x005CC0 01:BCB0: B9 F6 BC  LDA tbl_BCF3 + $03,Y
C - - - - - 0x005CC3 01:BCB3: 85 07     STA ram_0007
C - - - - - 0x005CC5 01:BCB5: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CC8 01:BCB8: 0A        ASL
C - - - - - 0x005CC9 01:BCB9: 0A        ASL
C - - - - - 0x005CCA 01:BCBA: 18        CLC
C - - - - - 0x005CCB 01:BCBB: 65 06     ADC ram_0006
C - - - - - 0x005CCD 01:BCBD: 85 06     STA ram_0006
C - - - - - 0x005CCF 01:BCBF: 90 02     BCC bra_BCC3
- - - - - - 0x005CD1 01:BCC1: E6 07     INC ram_0007
bra_BCC3:
C - - - - - 0x005CD3 01:BCC3: A5 26     LDA ram_buffer_index
C - - - - - 0x005CD5 01:BCC5: D0 C4     BNE bra_BC8B
C - - - - - 0x005CD7 01:BCC7: 4C 92 87  JMP loc_0x0087A2



sub_BCCA:
C - - - - - 0x005CDA 01:BCCA: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x005CDD 01:BCCD: B9 14 04  LDA ram_0414,Y
C - - - - - 0x005CE0 01:BCD0: C9 7C     CMP #$7C
C - - - - - 0x005CE2 01:BCD2: 60        RTS



tbl_BCD3:
- D 1 - - - 0x005CE3 01:BCD3: 01        .byte $01   ; 00
- D 1 - - - 0x005CE4 01:BCD4: 02        .byte $02   ; 01
- D 1 - - - 0x005CE5 01:BCD5: 03        .byte $03   ; 02
- D 1 - - - 0x005CE6 01:BCD6: 04        .byte $04   ; 03
- D 1 - - - 0x005CE7 01:BCD7: 05        .byte $05   ; 04
- D 1 - - - 0x005CE8 01:BCD8: 06        .byte $06   ; 05
- D 1 - - - 0x005CE9 01:BCD9: 07        .byte $07   ; 06
- D 1 - - - 0x005CEA 01:BCDA: 08        .byte $08   ; 07
- D 1 - - - 0x005CEB 01:BCDB: 09        .byte $09   ; 08
- D 1 - - - 0x005CEC 01:BCDC: 88        .byte $88   ; 09
- D 1 - - - 0x005CED 01:BCDD: 87        .byte $87   ; 0A
- D 1 - - - 0x005CEE 01:BCDE: 86        .byte $86   ; 0B
- D 1 - - - 0x005CEF 01:BCDF: 85        .byte $85   ; 0C
- D 1 - - - 0x005CF0 01:BCE0: 84        .byte $84   ; 0D
- D 1 - - - 0x005CF1 01:BCE1: 83        .byte $83   ; 0E
- D 1 - - - 0x005CF2 01:BCE2: 82        .byte $82   ; 0F
- D 1 - - - 0x005CF3 01:BCE3: 81        .byte $81   ; 10
- D 1 - - - 0x005CF4 01:BCE4: 80        .byte $80   ; 11



tbl_BCE5_index:
- D 1 - - - 0x005CF5 01:BCE5: 00        .byte $00   ; 00
- D 1 - - - 0x005CF6 01:BCE6: 01        .byte $01   ; 01
- D 1 - - - 0x005CF7 01:BCE7: 02        .byte $02   ; 02
- D 1 - - - 0x005CF8 01:BCE8: 03        .byte $03   ; 03
- D 1 - - - 0x005CF9 01:BCE9: 04        .byte $04   ; 04
- D 1 - - - 0x005CFA 01:BCEA: 05        .byte $05   ; 05
- D 1 - - - 0x005CFB 01:BCEB: 06        .byte $06   ; 06
- D 1 - - - 0x005CFC 01:BCEC: 0D        .byte $0D   ; 07
- D 1 - - - 0x005CFD 01:BCED: 0E        .byte $0E   ; 08
- D 1 - - - 0x005CFE 01:BCEE: 09        .byte $09   ; 09
- D 1 - - - 0x005CFF 01:BCEF: 0A        .byte $0A   ; 0A
- D 1 - - - 0x005D00 01:BCF0: 0F        .byte $0F   ; 0B



tbl_BCF1:
- D 1 - - - 0x005D01 01:BCF1: 40        .byte $40   ; 01
- D 1 - - - 0x005D02 01:BCF2: 70        .byte $70   ; 02



tbl_BCF3:
; 00
- D 1 - - - 0x005D03 01:BCF3: CC A9     .word _off031_0x016CF2_00
- D 1 - - - 0x005D05 01:BCF5: D0 20     .word $20D0 ; 
; 01
- D 1 - - - 0x005D07 01:BCF7: DE A9     .word _off031_0x0169EE_01
- D 1 - - - 0x005D09 01:BCF9: D0 20     .word $20D0 ; 
; 02
- D 1 - - - 0x005D0B 01:BCFB: F4 A9     .word _off031_0x016A04_02
- D 1 - - - 0x005D0D 01:BCFD: F0 20     .word $20F0 ; 
; 03
- D 1 - - - 0x005D0F 01:BCFF: F4 A9     .word _off031_0x016A04_03
- D 1 - - - 0x005D11 01:BD01: 10 21     .word $2110 ; 
; 04
- D 1 - - - 0x005D13 01:BD03: F4 A9     .word _off031_0x016A04_04
- D 1 - - - 0x005D15 01:BD05: 30 21     .word $2130 ; 
; 05
- D 1 - - - 0x005D17 01:BD07: F4 A9     .word _off031_0x016A04_05
- D 1 - - - 0x005D19 01:BD09: 50 21     .word $2150 ; 
; 06
- D 1 - - - 0x005D1B 01:BD0B: F4 A9     .word _off031_0x016A04_06
- D 1 - - - 0x005D1D 01:BD0D: 70 21     .word $2170 ; 
; 07
- D 1 - - - 0x005D1F 01:BD0F: 0A AA     .word _off031_0x016A1A_07
- D 1 - - - 0x005D21 01:BD11: 90 21     .word $2190 ; 
; 08
- D 1 - - - 0x005D23 01:BD13: 20 AA     .word _off031_0x016A30_08
- D 1 - - - 0x005D25 01:BD15: B0 21     .word $21B0 ; 
; 09
- D 1 - - - 0x005D27 01:BD17: 32 AA     .word _off031_0x016A42_09
- D 1 - - - 0x005D29 01:BD19: D0 21     .word $21D0 ; 
; 0A
- D 1 - - - 0x005D2B 01:BD1B: 40 AA     .word _off031_0x016A50_0A
- D 1 - - - 0x005D2D 01:BD1D: D0 20     .word $20D0 ; 
; 0B
- - - - - - 0x005D2F 01:BD1F: 56 AA     .word _off031_0x016A66_0B
- - - - - - 0x005D31 01:BD21: 70 21     .word $2170 ; 
; 0C
- - - - - - 0x005D33 01:BD23: 70 AA     .word _off031_0x016A80_0C
- - - - - - 0x005D35 01:BD25: D0 20     .word $20D0 ; 
; 0D
- D 1 - - - 0x005D37 01:BD27: 86 AA     .word _off031_0x016A96_0D
- D 1 - - - 0x005D39 01:BD29: 90 21     .word $2190 ; 
; 0E
- D 1 - - - 0x005D3B 01:BD2B: 9C AA     .word _off031_0x016AAC_0E
- D 1 - - - 0x005D3D 01:BD2D: B0 21     .word $21B0 ; 
; 0F
- D 1 - - - 0x005D3F 01:BD2F: AE AA     .word _off031_0x016ABE_0F
- D 1 - - - 0x005D41 01:BD31: 70 21     .word $2170 ; 



sub_0x005D43:
C - - - - - 0x005D43 01:BD33: 20 58 97  JSR sub_0x009768
C - - - - - 0x005D46 01:BD36: 90 26     BCC bra_BD5E
- - - - - - 0x005D48 01:BD38: A0 00     LDY #$00
- - - - - - 0x005D4A 01:BD3A: AD 4E 06  LDA ram_obj_pos_X
- - - - - - 0x005D4D 01:BD3D: CD 4F 06  CMP ram_obj_pos_X + $01
- - - - - - 0x005D50 01:BD40: B0 01     BCS bra_BD43
bra_BD42:
- - - - - - 0x005D52 01:BD42: C8        INY
bra_BD43:
C - - - - - 0x005D53 01:BD43: 98        TYA
C - - - - - 0x005D54 01:BD44: AA        TAX
C - - - - - 0x005D55 01:BD45: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x005D58 01:BD48: A6 53     LDX ram_0053
C - - - - - 0x005D5A 01:BD4A: A0 00     LDY #$00
C - - - - - 0x005D5C 01:BD4C: A5 01     LDA ram_0001
C - - - - - 0x005D5E 01:BD4E: C9 0D     CMP #$0D
C - - - - - 0x005D60 01:BD50: F0 04     BEQ bra_BD56
C - - - - - 0x005D62 01:BD52: 90 01     BCC bra_BD55_RTS
- - - - - - 0x005D64 01:BD54: C8        INY
bra_BD55_RTS:
C - - - - - 0x005D65 01:BD55: 60        RTS
bra_BD56:
C - - - - - 0x005D66 01:BD56: A5 00     LDA ram_0000
C - - - - - 0x005D68 01:BD58: C9 8B     CMP #$8B
C - - - - - 0x005D6A 01:BD5A: 90 F9     BCC bra_BD55_RTS
C - - - - - 0x005D6C 01:BD5C: C8        INY
C - - - - - 0x005D6D 01:BD5D: 60        RTS
bra_BD5E:
C - - - - - 0x005D6E 01:BD5E: A0 00     LDY #$00
C - - - - - 0x005D70 01:BD60: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x005D73 01:BD63: D0 DE     BNE bra_BD43
- - - - - - 0x005D75 01:BD65: F0 DB     BEQ bra_BD42    ; jmp



loc_0x005D77:
C D 1 - - - 0x005D77 01:BD67: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x005D7A 01:BD6A: D0 0E     BNE bra_BD7A
C - - - - - 0x005D7C 01:BD6C: A9 81     LDA #$81
C - - - - - 0x005D7E 01:BD6E: A0 08     LDY #$08
C - - - - - 0x005D80 01:BD70: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x005D83 01:BD73: B0 05     BCS bra_BD7A
C - - - - - 0x005D85 01:BD75: A9 00     LDA #$00
C - - - - - 0x005D87 01:BD77: 99 B2 06  STA ram_06B2_obj,Y
bra_BD7A:
C - - - - - 0x005D8A 01:BD7A: 4C 10 8E  JMP loc_0x008E20



ofs_016_0x005D8D_0C:
C - - J - - 0x005D8D 01:BD7D: 20 83 BD  JSR sub_BD83
C - - - - - 0x005D90 01:BD80: 4C 10 8E  JMP loc_0x008E20



sub_BD83:
C - - - - - 0x005D93 01:BD83: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005D96 01:BD86: F0 03     BEQ bra_BD8B
C - - - - - 0x005D98 01:BD88: 4C 18 BE  JMP loc_BE18
bra_BD8B:
C - - - - - 0x005D9B 01:BD8B: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x005D9E 01:BD8E: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x005DA1 01:BD91: A5 9F     LDA ram_009F
C - - - - - 0x005DA3 01:BD93: 38        SEC
C - - - - - 0x005DA4 01:BD94: E9 E4     SBC #$E4
C - - - - - 0x005DA6 01:BD96: A8        TAY
C - - - - - 0x005DA7 01:BD97: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x005DAA 01:BD9A: 18        CLC
C - - - - - 0x005DAB 01:BD9B: 79 CD BE  ADC tbl_BECD,Y
C - - - - - 0x005DAE 01:BD9E: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x005DB1 01:BDA1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x005DB4 01:BDA4: 18        CLC
C - - - - - 0x005DB5 01:BDA5: 79 D7 BE  ADC tbl_BED7,Y
C - - - - - 0x005DB8 01:BDA8: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x005DBB 01:BDAB: 6A        ROR
C - - - - - 0x005DBC 01:BDAC: 59 D7 BE  EOR tbl_BED7,Y
C - - - - - 0x005DBF 01:BDAF: 2A        ROL
C - - - - - 0x005DC0 01:BDB0: 90 08     BCC bra_BDBA
- - - - - - 0x005DC2 01:BDB2: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005DC5 01:BDB5: 09 02     ORA #$02
- - - - - - 0x005DC7 01:BDB7: 9D D2 07  STA ram_07D2_unk,X
bra_BDBA:
C - - - - - 0x005DCA 01:BDBA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005DCD 01:BDBD: 18        CLC
C - - - - - 0x005DCE 01:BDBE: 69 40     ADC #$40
C - - - - - 0x005DD0 01:BDC0: C9 60     CMP #$60
C - - - - - 0x005DD2 01:BDC2: B0 09     BCS bra_BDCD
C - - - - - 0x005DD4 01:BDC4: A5 61     LDA ram_0061
C - - - - - 0x005DD6 01:BDC6: 29 1F     AND #$1F
C - - - - - 0x005DD8 01:BDC8: F0 03     BEQ bra_BDCD
C - - - - - 0x005DDA 01:BDCA: 4C 68 BE  JMP loc_BE68
bra_BDCD:
C - - - - - 0x005DDD 01:BDCD: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005DE0 01:BDD0: 18        CLC
C - - - - - 0x005DE1 01:BDD1: 79 E1 BE  ADC tbl_BEE1,Y
C - - - - - 0x005DE4 01:BDD4: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x005DE7 01:BDD7: B0 0D     BCS bra_BDE6
C - - - - - 0x005DE9 01:BDD9: B9 E1 BE  LDA tbl_BEE1,Y
C - - - - - 0x005DEC 01:BDDC: F0 08     BEQ bra_BDE6
C - - - - - 0x005DEE 01:BDDE: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005DF1 01:BDE1: 09 01     ORA #$01
C - - - - - 0x005DF3 01:BDE3: 9D D2 07  STA ram_07D2_unk,X
bra_BDE6:
C - - - - - 0x005DF6 01:BDE6: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x005DF9 01:BDE9: C9 20     CMP #$20
C - - - - - 0x005DFB 01:BDEB: 90 03     BCC bra_BDF0
C - - - - - 0x005DFD 01:BDED: 4C 68 BE  JMP loc_BE68
bra_BDF0:
C - - - - - 0x005E00 01:BDF0: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x005E03 01:BDF3: 29 03     AND #$03
C - - - - - 0x005E05 01:BDF5: F0 03     BEQ bra_BDFA
- - - - - - 0x005E07 01:BDF7: 4C 68 BE  JMP loc_BE68
bra_BDFA:
C - - - - - 0x005E0A 01:BDFA: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x005E0D 01:BDFD: 20 0A 96  JSR sub_0x00961A
C - - - - - 0x005E10 01:BE00: A9 03     LDA #$03
C - - - - - 0x005E12 01:BE02: 20 00 97  JSR sub_0x009710
C - - - - - 0x005E15 01:BE05: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x005E18 01:BE08: 29 E0     AND #$E0
C - - - - - 0x005E1A 01:BE0A: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x005E1D 01:BE0D: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x005E20 01:BE10: 29 E0     AND #$E0
C - - - - - 0x005E22 01:BE12: 69 20     ADC #$20
C - - - - - 0x005E24 01:BE14: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x005E27 01:BE17: 60        RTS



loc_BE18:
C D 1 - - - 0x005E28 01:BE18: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x005E2B 01:BE1B: 90 01     BCC bra_BE1E
bra_BE1D_RTS:
C - - - - - 0x005E2D 01:BE1D: 60        RTS
bra_BE1E:
C - - - - - 0x005E2E 01:BE1E: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x005E31 01:BE21: B9 F5 BE  LDA tbl_BEF5,Y
C - - - - - 0x005E34 01:BE24: 85 1F     STA ram_001F
C - - - - - 0x005E36 01:BE26: B9 09 BF  LDA tbl_BF09,Y
C - - - - - 0x005E39 01:BE29: 18        CLC
C - - - - - 0x005E3A 01:BE2A: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x005E3D 01:BE2D: 85 00     STA ram_0000
C - - - - - 0x005E3F 01:BE2F: 6A        ROR
C - - - - - 0x005E40 01:BE30: 59 09 BF  EOR tbl_BF09,Y
C - - - - - 0x005E43 01:BE33: 2A        ROL
C - - - - - 0x005E44 01:BE34: 2A        ROL
C - - - - - 0x005E45 01:BE35: 2A        ROL
C - - - - - 0x005E46 01:BE36: 5D D2 07  EOR ram_07D2_unk,X
C - - - - - 0x005E49 01:BE39: 29 02     AND #$02
C - - - - - 0x005E4B 01:BE3B: F0 0F     BEQ bra_BE4C
- - - - - - 0x005E4D 01:BE3D: A5 00     LDA ram_0000
- - - - - - 0x005E4F 01:BE3F: 29 1F     AND #$1F
- - - - - - 0x005E51 01:BE41: F0 28     BEQ bra_BE6B
- - - - - - 0x005E53 01:BE43: A5 00     LDA ram_0000
- - - - - - 0x005E55 01:BE45: 18        CLC
- - - - - - 0x005E56 01:BE46: 69 18     ADC #$18
- - - - - - 0x005E58 01:BE48: C9 30     CMP #$30
- - - - - - 0x005E5A 01:BE4A: B0 1F     BCS bra_BE6B
bra_BE4C:
C - - - - - 0x005E5C 01:BE4C: B9 FF BE  LDA tbl_BEFF,Y
C - - - - - 0x005E5F 01:BE4F: 18        CLC
C - - - - - 0x005E60 01:BE50: 7D BE 07  ADC ram_07BE_unk,X
C - - - - - 0x005E63 01:BE53: A8        TAY
C - - - - - 0x005E64 01:BE54: 84 02     STY ram_0002
C - - - - - 0x005E66 01:BE56: A5 1F     LDA ram_001F
C - - - - - 0x005E68 01:BE58: 20 0E FC  JSR sub_0x01FC1E
loc_BE5B:
C - - - - - 0x005E6B 01:BE5B: 20 4C 9A  JSR sub_0x009A5C
C - - - - - 0x005E6E 01:BE5E: FE C8 07  INC ram_07C8_unk,X
C - - - - - 0x005E71 01:BE61: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x005E74 01:BE64: C9 0A     CMP #$0A
C - - - - - 0x005E76 01:BE66: 90 B5     BCC bra_BE1D_RTS
bra_BE68:
loc_BE68:
C D 1 - - - 0x005E78 01:BE68: 4C 17 9A  JMP loc_0x009A27
bra_BE6B:
- - - - - - 0x005E7B 01:BE6B: 84 02     STY ram_0002
- - - - - - 0x005E7D 01:BE6D: A5 1F     LDA ram_001F
- - - - - - 0x005E7F 01:BE6F: 99 00 04  STA ram_0400,Y
- - - - - - 0x005E82 01:BE72: 4C 5B BE  JMP loc_BE5B



ofs_016_0x005E85_12:
C - - J - - 0x005E85 01:BE75: 20 7B BE  JSR sub_BE7B
C - - - - - 0x005E88 01:BE78: 4C B6 81  JMP loc_0x0081C6



sub_BE7B:
C - - - - - 0x005E8B 01:BE7B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005E8E 01:BE7E: C9 E0     CMP #$E0
C - - - - - 0x005E90 01:BE80: 90 08     BCC bra_BE8A
C - - - - - 0x005E92 01:BE82: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x005E95 01:BE85: A9 01     LDA #$01
C - - - - - 0x005E97 01:BE87: 9D 78 07  STA ram_0778_unk,X
bra_BE8A:
C - - - - - 0x005E9A 01:BE8A: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005E9D 01:BE8D: 29 7F     AND #$7F
C - - - - - 0x005E9F 01:BE8F: C9 03     CMP #$03
C - - - - - 0x005EA1 01:BE91: 90 1C     BCC bra_BEAF
C - - - - - 0x005EA3 01:BE93: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x005EA6 01:BE96: B0 D0     BCS bra_BE68
C - - - - - 0x005EA8 01:BE98: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x005EAB 01:BE9B: C9 10     CMP #$10
C - - - - - 0x005EAD 01:BE9D: 90 10     BCC bra_BEAF
C - - - - - 0x005EAF 01:BE9F: A9 00     LDA #$00
C - - - - - 0x005EB1 01:BEA1: A0 F0     LDY #$F0
C - - - - - 0x005EB3 01:BEA3: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x005EB6 01:BEA6: A5 00     LDA ram_0000
C - - - - - 0x005EB8 01:BEA8: 38        SEC
C - - - - - 0x005EB9 01:BEA9: E9 EC     SBC #$EC
C - - - - - 0x005EBB 01:BEAB: C9 02     CMP #$02
C - - - - - 0x005EBD 01:BEAD: B0 B9     BCS bra_BE68
bra_BEAF:
C - - - - - 0x005EBF 01:BEAF: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x005EC2 01:BEB2: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x005EC5 01:BEB5: A9 40     LDA #$40
C - - - - - 0x005EC7 01:BEB7: A0 40     LDY #$40
C - - - - - 0x005EC9 01:BEB9: 20 0D 95  JSR sub_0x00951D
C - - - - - 0x005ECC 01:BEBC: B0 0E     BCS bra_BECC_RTS
C - - - - - 0x005ECE 01:BEBE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005ED1 01:BEC1: 29 7F     AND #$7F
C - - - - - 0x005ED3 01:BEC3: C9 01     CMP #$01
C - - - - - 0x005ED5 01:BEC5: D0 05     BNE bra_BECC_RTS
C - - - - - 0x005ED7 01:BEC7: A9 03     LDA #$03
C - - - - - 0x005ED9 01:BEC9: 9D 78 07  STA ram_0778_unk,X
bra_BECC_RTS:
C - - - - - 0x005EDC 01:BECC: 60        RTS



tbl_BECD:
- D 1 - - - 0x005EDD 01:BECD: 00        .byte $00   ; E4
- - - - - - 0x005EDE 01:BECE: FF        .byte $FF   ; E5
- - - - - - 0x005EDF 01:BECF: F0        .byte $F0   ; E6
- D 1 - - - 0x005EE0 01:BED0: E0        .byte $E0   ; E7
- - - - - - 0x005EE1 01:BED1: EF        .byte $EF   ; E8
- D 1 - - - 0x005EE2 01:BED2: DF        .byte $DF   ; E9
- D 1 - - - 0x005EE3 01:BED3: D0        .byte $D0   ; EA
- D 1 - - - 0x005EE4 01:BED4: CF        .byte $CF   ; EB
- - - - - - 0x005EE5 01:BED5: C0        .byte $C0   ; EC
- - - - - - 0x005EE6 01:BED6: BF        .byte $BF   ; ED



tbl_BED7:
- D 1 - - - 0x005EE7 01:BED7: 00        .byte $00   ; E4
- - - - - - 0x005EE8 01:BED8: E0        .byte $E0   ; E5
- - - - - - 0x005EE9 01:BED9: 00        .byte $00   ; E6
- D 1 - - - 0x005EEA 01:BEDA: 00        .byte $00   ; E7
- - - - - - 0x005EEB 01:BEDB: E0        .byte $E0   ; E8
- D 1 - - - 0x005EEC 01:BEDC: E0        .byte $E0   ; E9
- D 1 - - - 0x005EED 01:BEDD: 00        .byte $00   ; EA
- D 1 - - - 0x005EEE 01:BEDE: E0        .byte $E0   ; EB
- - - - - - 0x005EEF 01:BEDF: 00        .byte $00   ; EC
- - - - - - 0x005EF0 01:BEE0: E0        .byte $E0   ; ED



tbl_BEE1:
- - - - - - 0x005EF1 01:BEE1: 00        .byte $00   ; E4
- - - - - - 0x005EF2 01:BEE2: 00        .byte $00   ; E5
- - - - - - 0x005EF3 01:BEE3: E0        .byte $E0   ; E6
- D 1 - - - 0x005EF4 01:BEE4: C0        .byte $C0   ; E7
- - - - - - 0x005EF5 01:BEE5: E0        .byte $E0   ; E8
- D 1 - - - 0x005EF6 01:BEE6: C0        .byte $C0   ; E9
- - - - - - 0x005EF7 01:BEE7: A0        .byte $A0   ; EA
- D 1 - - - 0x005EF8 01:BEE8: A0        .byte $A0   ; EB
- - - - - - 0x005EF9 01:BEE9: 80        .byte $80   ; EC
- - - - - - 0x005EFA 01:BEEA: 80        .byte $80   ; ED


; bzk garbage
- - - - - - 0x005EFB 01:BEEB: E9        .byte $E9   ; 
- - - - - - 0x005EFC 01:BEEC: EA        .byte $EA   ; 
- - - - - - 0x005EFD 01:BEED: E6        .byte $E6   ; 
- - - - - - 0x005EFE 01:BEEE: EB        .byte $EB   ; 
- - - - - - 0x005EFF 01:BEEF: E7        .byte $E7   ; 
- - - - - - 0x005F00 01:BEF0: E5        .byte $E5   ; 
- - - - - - 0x005F01 01:BEF1: ED        .byte $ED   ; 
- - - - - - 0x005F02 01:BEF2: E8        .byte $E8   ; 
- - - - - - 0x005F03 01:BEF3: EC        .byte $EC   ; 
- - - - - - 0x005F04 01:BEF4: E4        .byte $E4   ; 



tbl_BEF5:
- D 1 - - - 0x005F05 01:BEF5: FA        .byte $FA   ; 00
- D 1 - - - 0x005F06 01:BEF6: FB        .byte $FB   ; 01
- D 1 - - - 0x005F07 01:BEF7: F9        .byte $F9   ; 02
- D 1 - - - 0x005F08 01:BEF8: FC        .byte $FC   ; 03
- D 1 - - - 0x005F09 01:BEF9: F9        .byte $F9   ; 04
- D 1 - - - 0x005F0A 01:BEFA: F8        .byte $F8   ; 05
- D 1 - - - 0x005F0B 01:BEFB: FE        .byte $FE   ; 06
- D 1 - - - 0x005F0C 01:BEFC: FA        .byte $FA   ; 07
- D 1 - - - 0x005F0D 01:BEFD: FD        .byte $FD   ; 08
- D 1 - - - 0x005F0E 01:BEFE: F7        .byte $F7   ; 09



tbl_BEFF:
- D 1 - - - 0x005F0F 01:BEFF: 21        .byte $21   ; 00
- D 1 - - - 0x005F10 01:BF00: 30        .byte $30   ; 01
- D 1 - - - 0x005F11 01:BF01: 10        .byte $10   ; 02
- D 1 - - - 0x005F12 01:BF02: 31        .byte $31   ; 03
- D 1 - - - 0x005F13 01:BF03: 20        .byte $20   ; 04
- D 1 - - - 0x005F14 01:BF04: 01        .byte $01   ; 05
- D 1 - - - 0x005F15 01:BF05: 41        .byte $41   ; 06
- D 1 - - - 0x005F16 01:BF06: 11        .byte $11   ; 07
- D 1 - - - 0x005F17 01:BF07: 40        .byte $40   ; 08
- D 1 - - - 0x005F18 01:BF08: 00        .byte $00   ; 09



tbl_BF09:
- D 1 - - - 0x005F19 01:BF09: 20        .byte $20   ; 00
- D 1 - - - 0x005F1A 01:BF0A: 00        .byte $00   ; 01
- D 1 - - - 0x005F1B 01:BF0B: 00        .byte $00   ; 02
- D 1 - - - 0x005F1C 01:BF0C: 20        .byte $20   ; 03
- D 1 - - - 0x005F1D 01:BF0D: 00        .byte $00   ; 04
- D 1 - - - 0x005F1E 01:BF0E: 20        .byte $20   ; 05
- D 1 - - - 0x005F1F 01:BF0F: 20        .byte $20   ; 06
- D 1 - - - 0x005F20 01:BF10: 20        .byte $20   ; 07
- D 1 - - - 0x005F21 01:BF11: 00        .byte $00   ; 08
- D 1 - - - 0x005F22 01:BF12: 00        .byte $00   ; 09


; bzk garbage
- - - - - - 0x005F23 01:BF13: 40        .byte $40   ; 
- - - - - - 0x005F24 01:BF14: 60        .byte $60   ; 
- - - - - - 0x005F25 01:BF15: 20        .byte $20   ; 
- - - - - - 0x005F26 01:BF16: 60        .byte $60   ; 
- - - - - - 0x005F27 01:BF17: 40        .byte $40   ; 
- - - - - - 0x005F28 01:BF18: 00        .byte $00   ; 
- - - - - - 0x005F29 01:BF19: 80        .byte $80   ; 
- - - - - - 0x005F2A 01:BF1A: 20        .byte $20   ; 
- - - - - - 0x005F2B 01:BF1B: 80        .byte $80   ; 
- - - - - - 0x005F2C 01:BF1C: 00        .byte $00   ; 



ofs_016_0x005F2D_1D:
C - - J - - 0x005F2D 01:BF1D: 20 23 BF  JSR sub_BF23
C - - - - - 0x005F30 01:BF20: 4C 10 8E  JMP loc_0x008E20



sub_BF23:
C - - - - - 0x005F33 01:BF23: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x005F36 01:BF26: D0 1C     BNE bra_BF44
C - - - - - 0x005F38 01:BF28: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x005F3B 01:BF2B: 29 7F     AND #$7F
C - - - - - 0x005F3D 01:BF2D: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x005F40 01:BF30: A9 0A     LDA #$0A
C - - - - - 0x005F42 01:BF32: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x005F45 01:BF35: A9 80     LDA #$80
C - - - - - 0x005F47 01:BF37: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x005F4A 01:BF3A: A0 08     LDY #$08
C - - - - - 0x005F4C 01:BF3C: A9 02     LDA #$02
C - - - - - 0x005F4E 01:BF3E: 20 62 97  JSR sub_0x009772
C - - - - - 0x005F51 01:BF41: FE 78 07  INC ram_0778_unk,X
bra_BF44:
C - - - - - 0x005F54 01:BF44: 20 E3 8F  JSR sub_0x008FF3
C - - - - - 0x005F57 01:BF47: B0 33     BCS bra_BF7C
C - - - - - 0x005F59 01:BF49: 20 82 D1  JSR sub_0x01D192
C - - - - - 0x005F5C 01:BF4C: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x005F5F 01:BF4F: 29 C0     AND #$C0
C - - - - - 0x005F61 01:BF51: D0 26     BNE bra_BF79
C - - - - - 0x005F63 01:BF53: A9 10     LDA #$10
C - - - - - 0x005F65 01:BF55: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x005F68 01:BF58: 30 02     BMI bra_BF5C
C - - - - - 0x005F6A 01:BF5A: A9 F0     LDA #$F0
bra_BF5C:
C - - - - - 0x005F6C 01:BF5C: DD 4E 06  CMP ram_obj_pos_X,X
C - - - - - 0x005F6F 01:BF5F: 6A        ROR
C - - - - - 0x005F70 01:BF60: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x005F73 01:BF63: 2A        ROL
C - - - - - 0x005F74 01:BF64: 90 10     BCC bra_BF76
C - - - - - 0x005F76 01:BF66: A9 D8     LDA #$D8
C - - - - - 0x005F78 01:BF68: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x005F7B 01:BF6B: 30 02     BMI bra_BF6F
C - - - - - 0x005F7D 01:BF6D: A9 28     LDA #$28
bra_BF6F:
C - - - - - 0x005F7F 01:BF6F: A0 00     LDY #$00
C - - - - - 0x005F81 01:BF71: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x005F84 01:BF74: B0 0E     BCS bra_BF84_RTS
bra_BF76:
C - - - - - 0x005F86 01:BF76: 4C E9 95  JMP loc_0x0095F9_06B2x_EOR_80
bra_BF79:
C - - - - - 0x005F89 01:BF79: 4C 17 9A  JMP loc_0x009A27
bra_BF7C:
C - - - - - 0x005F8C 01:BF7C: 20 F3 8F  JSR sub_0x009003
C - - - - - 0x005F8F 01:BF7F: A0 06     LDY #$06
C - - - - - 0x005F91 01:BF81: 4C 37 97  JMP loc_0x009747
bra_BF84_RTS:
C - - - - - 0x005F94 01:BF84: 60        RTS



ofs_016_0x005F95_0E:
C - - J - - 0x005F95 01:BF85: A9 00     LDA #$00
C - - - - - 0x005F97 01:BF87: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x005F9A 01:BF8A: A5 23     LDA ram_0023
C - - - - - 0x005F9C 01:BF8C: 29 3F     AND #$3F
C - - - - - 0x005F9E 01:BF8E: D0 55     BNE bra_BFE5
- - - - - - 0x005FA0 01:BF90: BD D2 07  LDA ram_07D2_unk,X
- - - - - - 0x005FA3 01:BF93: FE D2 07  INC ram_07D2_unk,X
- - - - - - 0x005FA6 01:BF96: 29 03     AND #$03
- - - - - - 0x005FA8 01:BF98: A8        TAY
- - - - - - 0x005FA9 01:BF99: B9 F6 BF  LDA tbl_BFF6_index,Y
- - - - - - 0x005FAC 01:BF9C: 30 47     BMI bra_BFE5
- - - - - - 0x005FAE 01:BF9E: A8        TAY
- - - - - - 0x005FAF 01:BF9F: B9 F0 BF  LDA tbl_BFF0,Y
- - - - - - 0x005FB2 01:BFA2: 85 00     STA ram_0000
- - - - - - 0x005FB4 01:BFA4: B9 F3 BF  LDA tbl_BFF3,Y
- - - - - - 0x005FB7 01:BFA7: 85 01     STA ram_0001
- - - - - - 0x005FB9 01:BFA9: A0 12     LDY #$12
- - - - - - 0x005FBB 01:BFAB: B9 82 06  LDA ram_0682_obj,Y
- - - - - - 0x005FBE 01:BFAE: D0 35     BNE bra_BFE5
- - - - - - 0x005FC0 01:BFB0: A9 A1     LDA #$A1
- - - - - - 0x005FC2 01:BFB2: 9D A0 07  STA ram_07A0_unk,X
- - - - - - 0x005FC5 01:BFB5: 20 A1 84  JSR sub_0x0084B1
- - - - - - 0x005FC8 01:BFB8: A9 40     LDA #$40
- - - - - - 0x005FCA 01:BFBA: 99 B2 06  STA ram_06B2_obj,Y
- - - - - - 0x005FCD 01:BFBD: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x005FD0 01:BFC0: 18        CLC
- - - - - - 0x005FD1 01:BFC1: 65 00     ADC ram_0000
- - - - - - 0x005FD3 01:BFC3: 99 4E 06  STA ram_obj_pos_X,Y
- - - - - - 0x005FD6 01:BFC6: 6A        ROR
- - - - - - 0x005FD7 01:BFC7: 45 00     EOR ram_0000
- - - - - - 0x005FD9 01:BFC9: 2A        ROL
- - - - - - 0x005FDA 01:BFCA: B0 1C     BCS bra_BFE8
- - - - - - 0x005FDC 01:BFCC: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x005FDF 01:BFCF: 18        CLC
- - - - - - 0x005FE0 01:BFD0: 65 01     ADC ram_0001
- - - - - - 0x005FE2 01:BFD2: 99 68 06  STA ram_obj_pos_Y,Y
- - - - - - 0x005FE5 01:BFD5: 6A        ROR
- - - - - - 0x005FE6 01:BFD6: 45 01     EOR ram_0001
- - - - - - 0x005FE8 01:BFD8: 2A        ROL
- - - - - - 0x005FE9 01:BFD9: B0 0D     BCS bra_BFE8
- - - - - - 0x005FEB 01:BFDB: A9 06     LDA #$06
- - - - - - 0x005FED 01:BFDD: 99 20 07  STA ram_0720_obj,Y
- - - - - - 0x005FF0 01:BFE0: A9 32     LDA #con_music_32
- - - - - - 0x005FF2 01:BFE2: 20 D8 95  JSR sub_0x0095E8_play_music
bra_BFE5:
C - - - - - 0x005FF5 01:BFE5: 4C 10 8E  JMP loc_0x008E20
bra_BFE8:
- - - - - - 0x005FF8 01:BFE8: 98        TYA
- - - - - - 0x005FF9 01:BFE9: AA        TAX
- - - - - - 0x005FFA 01:BFEA: 20 52 9A  JSR sub_0x009A62
- - - - - - 0x005FFD 01:BFED: A6 53     LDX ram_0053
- - - - - - 0x005FFF 01:BFEF: 60        RTS



tbl_BFF0:
- - - - - - 0x006000 01:BFF0: ED        .byte $ED   ; 00
- - - - - - 0x006001 01:BFF1: ED        .byte $ED   ; 01
- - - - - - 0x006002 01:BFF2: 0D        .byte $0D   ; 02



tbl_BFF3:
- - - - - - 0x006003 01:BFF3: FB        .byte $FB   ; 00
- - - - - - 0x006004 01:BFF4: 1A        .byte $1A   ; 01
- - - - - - 0x006005 01:BFF5: 1A        .byte $1A   ; 02



tbl_BFF6_index:
- - - - - - 0x006006 01:BFF6: 00        .byte $00   ; 00
- - - - - - 0x006007 01:BFF7: 01        .byte $01   ; 01
- - - - - - 0x006008 01:BFF8: 02        .byte $02   ; 02
- - - - - - 0x006009 01:BFF9: FF        .byte $FF   ; 03


; bzk garbage
- - - - - - 0x00600A 01:BFFA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($C000 - *), ($C000 - *))



