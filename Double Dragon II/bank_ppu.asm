.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"

; additional split.lua script handles data from this file



.export _off031_0x03D010_4E
.export _off031_0x03D049_4F
.export _off031_0x03D1A5_41
.export _off031_0x03D2FD_43
.export _off031_0x03D403_35
.export _off031_0x03D53C_39
.export _off031_0x03D660_38
.export _off031_0x03D743_31
.export _off031_0x03D8B2_36
.export _off031_0x03D909_37
.export _off031_0x03D95A_3A
.export _off031_0x03D983_32
.export _off031_0x03D983_33
.export _off031_0x03DAE4_34
.export _off031_0x03DBE9_44
.export _off031_0x03DC87_52
.export _off031_0x03DD8C_53
.export _off031_0x03E010_2B
.export _off031_0x03E190_42
.export _off031_0x03E313_50
.export _off031_0x03E3AD_51
.export _off031_0x03E46C_46
.export _off031_0x03E58D_47
.export _off031_0x03E66A_48
.export _off031_0x03E74E_3D
.export _off031_0x03E74E_3E
.export _off031_0x03E74E_3F
.export _off031_0x03E74E_40
.export _off031_0x03E8F5_4B
.export _off031_0x03E93A_4C
.export _off031_0x03E9B9_4D
.export _off031_0x03EA90_49
.export _off031_0x03EA90_4A
.export _off031_0x03EB53_3B
.export _off031_0x03EC3A_3C
.export _off031_0x03F010_00
.export _off031_0x03F180_15
.export _off031_0x03F46B_24
.export _off031_0x03F78E_25
.export _off031_0x03F92F_26
.export _off031_0x03FC07_27
.export _off031_0x03FECC_45



con_00                                  = $00 ; write single tile ?? times
con_40                                  = $40 ; write several tiles ?? times
con_80                                  = $80 ; same as con_00, but with 16-bit counter instead of 8-bit
                                              ; for example, 01 + $06A = 006A times, 026A = 016A times
                                              ; however, only 01 is always used originally, so basically it's the same as con_00, only 1 byte longer
con_C0                                  = $C0 ; same as con_40, but additional byte for specifying how many times to repeat bytes sequence






.segment "BANK_PPU_1"
.org $1000 ; for listing file
; 0x03D010-0x03E00F
; CHR banks 74-77



_off031_0x03D010_4E:
- D 0 - - - 0x03D010 0F:1000: 00        .byte $00   ; 
- D 0 - - - 0x03D011 0F:1001: 20 00     .dbyt $2000

- D 0 - - - 0x03D013 0F:1003: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D015 0F:1005: 00        .byte $00   ; 

- D 0 - - - 0x03D016 0F:1006: 81        .byte con_80 + $01, $6A   ; 
- D 0 - - - 0x03D018 0F:1008: 00        .byte $00   ; 

- D 0 - - - 0x03D019 0F:1009: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D01A 0F:100A: C2        .byte $C2   ; 

- D 0 - - - 0x03D01B 0F:100B: 1F        .byte con_00 + $1F   ; 
- D 0 - - - 0x03D01C 0F:100C: 00        .byte $00   ; 

- D 0 - - - 0x03D01D 0F:100D: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D01E 0F:100E: 9A        .byte $9A, $A7, $B2   ; 

- D 0 - - - 0x03D021 0F:1011: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D022 0F:1012: CF        .byte $CF   ; 

- D 0 - - - 0x03D023 0F:1013: 3A        .byte con_00 + $3A   ; 
- D 0 - - - 0x03D024 0F:1014: 00        .byte $00   ; 

- D 0 - - - 0x03D025 0F:1015: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D026 0F:1016: D9        .byte $D9   ; 

- D 0 - - - 0x03D027 0F:1017: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D028 0F:1018: D5        .byte $D5, $F6, $DA, $D6, $E9, $00, $D6, $D8, $FD   ; 

- D 0 - - - 0x03D031 0F:1021: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D032 0F:1022: CF        .byte $CF   ; 

- D 0 - - - 0x03D033 0F:1023: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D035 0F:1025: 00        .byte $00   ; 

- D 0 - - - 0x03D036 0F:1026: 81        .byte con_80 + $01, $FC   ; 
- D 0 - - - 0x03D038 0F:1028: 00        .byte $00   ; 

- D 0 - - - 0x03D039 0F:1029: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D03A 0F:102A: FC        .byte $FC   ; 

- D 0 - - - 0x03D03B 0F:102B: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D03C 0F:102C: 00        .byte $00   ; 

- D 0 - - - 0x03D03D 0F:102D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D03E 0F:102E: FF        .byte $FF   ; 

- D 0 - - - 0x03D03F 0F:102F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D040 0F:1030: F0        .byte $F0   ; 

- D 0 - - - 0x03D041 0F:1031: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D042 0F:1032: 00        .byte $00   ; 

- D 0 - - - 0x03D043 0F:1033: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D044 0F:1034: 03        .byte $03   ; 

- D 0 - - - 0x03D045 0F:1035: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D046 0F:1036: 00        .byte $00   ; 

- D 0 - - - 0x03D047 0F:1037: 00        .byte $00, $00   ; end token



_off031_0x03D049_4F:
- D 0 - - - 0x03D049 0F:1039: 00        .byte $00   ; 
- D 0 - - - 0x03D04A 0F:103A: 20 00     .dbyt $2000

- D 0 - - - 0x03D04C 0F:103C: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03D04D 0F:103D: 00        .byte $00   ; 

- D 0 - - - 0x03D04E 0F:103E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D04F 0F:103F: 34        .byte $34   ; 

- D 0 - - - 0x03D050 0F:1040: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D051 0F:1041: 03        .byte $03   ; 

- D 0 - - - 0x03D052 0F:1042: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D053 0F:1043: 14        .byte $14   ; 

- D 0 - - - 0x03D054 0F:1044: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03D055 0F:1045: 00        .byte $00   ; 

- D 0 - - - 0x03D056 0F:1046: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D057 0F:1047: 34        .byte $34   ; 

- D 0 - - - 0x03D058 0F:1048: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D059 0F:1049: 03        .byte $03   ; 

- D 0 - - - 0x03D05A 0F:104A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D05B 0F:104B: 14        .byte $14   ; 

- D 0 - - - 0x03D05C 0F:104C: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03D05D 0F:104D: 00        .byte $00   ; 

- D 0 - - - 0x03D05E 0F:104E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D05F 0F:104F: 34        .byte $34   ; 

- D 0 - - - 0x03D060 0F:1050: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D061 0F:1051: 03        .byte $03   ; 

- D 0 - - - 0x03D062 0F:1052: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D063 0F:1053: 14        .byte $14   ; 

- D 0 - - - 0x03D064 0F:1054: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03D065 0F:1055: 00        .byte $00   ; 

- D 0 - - - 0x03D066 0F:1056: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D067 0F:1057: 34        .byte $34   ; 

- D 0 - - - 0x03D068 0F:1058: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D069 0F:1059: 03        .byte $03   ; 

- D 0 - - - 0x03D06A 0F:105A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D06B 0F:105B: 14        .byte $14   ; 

- D 0 - - - 0x03D06C 0F:105C: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D06D 0F:105D: 00        .byte $00   ; 

- D 0 - - - 0x03D06E 0F:105E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D06F 0F:105F: 3E        .byte $3E   ; 

- D 0 - - - 0x03D070 0F:1060: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D071 0F:1061: 24        .byte $24   ; 

- D 0 - - - 0x03D072 0F:1062: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D073 0F:1063: 02        .byte $02   ; 

- D 0 - - - 0x03D074 0F:1064: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03D075 0F:1065: 14        .byte $14, $3E, $15, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F   ; 

- D 0 - - - 0x03D082 0F:1072: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D083 0F:1073: 00        .byte $00   ; 

- D 0 - - - 0x03D084 0F:1074: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D085 0F:1075: 3E        .byte $3E   ; 

- D 0 - - - 0x03D086 0F:1076: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03D087 0F:1077: 10        .byte $10, $11, $12, $13, $15, $06, $16, $17, $18, $19, $1A, $1B, $1C, $1D, $1E, $1F   ; 

- D 0 - - - 0x03D097 0F:1087: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D098 0F:1088: 00        .byte $00   ; 

- D 0 - - - 0x03D099 0F:1089: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D09A 0F:108A: 3E        .byte $3E   ; 

- D 0 - - - 0x03D09B 0F:108B: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03D09C 0F:108C: 20        .byte $20, $21, $22, $23, $06, $16, $26, $27, $28, $49, $2A, $2B, $2C, $2D, $2E, $2F   ; 

- D 0 - - - 0x03D0AC 0F:109C: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D0AD 0F:109D: 00        .byte $00   ; 

- D 0 - - - 0x03D0AE 0F:109E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0AF 0F:109F: 3E        .byte $3E   ; 

- D 0 - - - 0x03D0B0 0F:10A0: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D0B1 0F:10A1: 30        .byte $30, $31, $32, $33, $16, $26, $36, $37, $38   ; 

- D 0 - - - 0x03D0BA 0F:10AA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0BB 0F:10AB: 49        .byte $49   ; 

- D 0 - - - 0x03D0BC 0F:10AC: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D0BD 0F:10AD: 3B        .byte $3B, $3C, $3D   ; 

- D 0 - - - 0x03D0C0 0F:10B0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0C1 0F:10B1: 03        .byte $03   ; 

- D 0 - - - 0x03D0C2 0F:10B2: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D0C3 0F:10B3: 00        .byte $00   ; 

- D 0 - - - 0x03D0C4 0F:10B4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0C5 0F:10B5: 3E        .byte $3E   ; 

- D 0 - - - 0x03D0C6 0F:10B6: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D0C7 0F:10B7: 40        .byte $40, $41, $42, $43, $44, $45, $46, $47   ; 

- D 0 - - - 0x03D0CF 0F:10BF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0D0 0F:10C0: 49        .byte $49   ; 

- D 0 - - - 0x03D0D1 0F:10C1: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D0D2 0F:10C2: 4A        .byte $4A, $4B, $4C, $4D, $4E, $03   ; 

- D 0 - - - 0x03D0D8 0F:10C8: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D0D9 0F:10C9: 00        .byte $00   ; 

- D 0 - - - 0x03D0DA 0F:10CA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0DB 0F:10CB: 3E        .byte $3E   ; 

- D 0 - - - 0x03D0DC 0F:10CC: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03D0DD 0F:10CD: 50        .byte $50, $51, $52, $53, $54, $55, $56, $57, $49, $59, $5A, $5B, $5C, $5D, $5E, $03   ; 

- D 0 - - - 0x03D0ED 0F:10DD: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D0EE 0F:10DE: 00        .byte $00   ; 

- D 0 - - - 0x03D0EF 0F:10DF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D0F0 0F:10E0: 3E        .byte $3E   ; 

- D 0 - - - 0x03D0F1 0F:10E1: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03D0F2 0F:10E2: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67, $68, $49, $6A, $6B, $6C, $6D   ; 

- D 0 - - - 0x03D100 0F:10F0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D101 0F:10F1: 03        .byte $03   ; 

- D 0 - - - 0x03D102 0F:10F2: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03D103 0F:10F3: 00        .byte $00   ; 

- D 0 - - - 0x03D104 0F:10F4: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D105 0F:10F5: 70        .byte $70, $71, $72, $73   ; 

- D 0 - - - 0x03D109 0F:10F9: 1E        .byte con_00 + $1E   ; 
- D 0 - - - 0x03D10A 0F:10FA: 00        .byte $00   ; 

- D 0 - - - 0x03D10B 0F:10FB: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D10C 0F:10FC: 04        .byte $04, $05   ; 

- D 0 - - - 0x03D10E 0F:10FE: 37        .byte con_00 + $37   ; 
- D 0 - - - 0x03D10F 0F:10FF: 00        .byte $00   ; 

- D 0 - - - 0x03D110 0F:1100: 53        .byte con_40 + $13   ; 
- D 0 - - - 0x03D111 0F:1101: B0        .byte $B0, $00, $D1, $EE, $E8, $E9, $00, $9E, $CF, $9E, $A7, $80, $AD, $E8, $D9, $D3   ; 
- D 0 - - - 0x03D121 0F:1111: CD        .byte $CD, $CE, $B1   ; 

- D 0 - - - 0x03D124 0F:1114: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D125 0F:1115: 00        .byte $00   ; 

- D 0 - - - 0x03D126 0F:1116: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D127 0F:1117: C2        .byte $C2   ; 

- D 0 - - - 0x03D128 0F:1118: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D129 0F:1119: 00        .byte $00   ; 

- D 0 - - - 0x03D12A 0F:111A: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03D12B 0F:111B: B0        .byte $B0, $00, $D1, $F3, $00, $DE, $FD, $E4, $E9, $DC, $E9, $E4, $D1   ; 

- D 0 - - - 0x03D138 0F:1128: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D139 0F:1129: CF        .byte $CF   ; 

- D 0 - - - 0x03D13A 0F:112A: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03D13B 0F:112B: 00        .byte $00   ; 

- D 0 - - - 0x03D13C 0F:112C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D13D 0F:112D: C2        .byte $C2   ; 

- D 0 - - - 0x03D13E 0F:112E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D13F 0F:112F: 00        .byte $00   ; 

- D 0 - - - 0x03D140 0F:1130: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D141 0F:1131: C2        .byte $C2   ; 

- D 0 - - - 0x03D142 0F:1132: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D143 0F:1133: 00        .byte $00   ; 

- D 0 - - - 0x03D144 0F:1134: 56        .byte con_40 + $16   ; 
- D 0 - - - 0x03D145 0F:1135: DB        .byte $DB, $D5, $DB, $00, $E4, $E5, $D5, $00, $D1, $F3, $E4, $F5, $D5, $FD, $D5, $DC   ; 
- D 0 - - - 0x03D155 0F:1145: F8        .byte $F8, $DD, $FE, $C3, $00, $B1   ; 

- D 0 - - - 0x03D15B 0F:114B: 81        .byte con_80 + $01, $A9   ; 
- D 0 - - - 0x03D15D 0F:114D: 00        .byte $00   ; 

- D 0 - - - 0x03D15E 0F:114E: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D15F 0F:114F: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $CA   ; 

- D 0 - - - 0x03D168 0F:1158: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D169 0F:1159: 00        .byte $00   ; 

- D 0 - - - 0x03D16A 0F:115A: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D16B 0F:115B: B2        .byte $B2, $00, $FB, $E4, $00, $E8, $00, $EC, $F3, $00, $B2   ; 

- D 0 - - - 0x03D176 0F:1166: 81        .byte con_80 + $01, $AF   ; 
- D 0 - - - 0x03D178 0F:1168: 00        .byte $00   ; 

- D 0 - - - 0x03D179 0F:1169: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D17A 0F:116A: 44        .byte $44, $50   ; 

- D 0 - - - 0x03D17C 0F:116C: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D17D 0F:116D: 55        .byte $55   ; 

- D 0 - - - 0x03D17E 0F:116E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D17F 0F:116F: 10        .byte $10   ; 

- D 0 - - - 0x03D180 0F:1170: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D181 0F:1171: 00        .byte $00   ; 

- D 0 - - - 0x03D182 0F:1172: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D183 0F:1173: 44        .byte $44   ; 

- D 0 - - - 0x03D184 0F:1174: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D185 0F:1175: 55        .byte $55   ; 

- D 0 - - - 0x03D186 0F:1176: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D187 0F:1177: 11        .byte $11, $00, $C0, $FC, $F4   ; 

- D 0 - - - 0x03D18C 0F:117C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D18D 0F:117D: FF        .byte $FF   ; 

- D 0 - - - 0x03D18E 0F:117E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D18F 0F:117F: 3F        .byte $3F   ; 

- D 0 - - - 0x03D190 0F:1180: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D191 0F:1181: 00        .byte $00, $0C   ; 

- D 0 - - - 0x03D193 0F:1183: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D194 0F:1184: FF        .byte $FF   ; 

- D 0 - - - 0x03D195 0F:1185: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D196 0F:1186: F3        .byte $F3   ; 

- D 0 - - - 0x03D197 0F:1187: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D198 0F:1188: 00        .byte $00   ; 

- D 0 - - - 0x03D199 0F:1189: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D19A 0F:118A: 0C        .byte $0C   ; 

- D 0 - - - 0x03D19B 0F:118B: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D19C 0F:118C: 0F        .byte $0F   ; 

- D 0 - - - 0x03D19D 0F:118D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D19E 0F:118E: 00        .byte $00   ; 

- D 0 - - - 0x03D19F 0F:118F: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D1A0 0F:1190: 0F        .byte $0F   ; 

- D 0 - - - 0x03D1A1 0F:1191: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D1A2 0F:1192: 00        .byte $00   ; 

- D 0 - - - 0x03D1A3 0F:1193: 00        .byte $00, $00   ; end token



_off031_0x03D1A5_41:
- D 0 - - - 0x03D1A5 0F:1195: 00        .byte $00   ; 
- D 0 - - - 0x03D1A6 0F:1196: 20 00     .dbyt $2000

- D 0 - - - 0x03D1A8 0F:1198: 81        .byte con_80 + $01, $A3   ; 
- D 0 - - - 0x03D1AA 0F:119A: 00        .byte $00   ; 

- D 0 - - - 0x03D1AB 0F:119B: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D1AC 0F:119C: 01        .byte $01, $02, $03, $04, $05, $06   ; 

- D 0 - - - 0x03D1B2 0F:11A2: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D1B3 0F:11A3: 3D        .byte $3D   ; 

- D 0 - - - 0x03D1B4 0F:11A4: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03D1B5 0F:11A5: 00        .byte $00   ; 

- D 0 - - - 0x03D1B6 0F:11A6: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D1B7 0F:11A7: 11        .byte $11, $12, $13, $14, $15   ; 

- D 0 - - - 0x03D1BC 0F:11AC: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D1BD 0F:11AD: 3D        .byte $3D   ; 

- D 0 - - - 0x03D1BE 0F:11AE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D1BF 0F:11AF: 00        .byte $00   ; 

- D 0 - - - 0x03D1C0 0F:11B0: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D1C1 0F:11B1: B0        .byte $B0, $00, $D4, $D1, $CD, $00, $D4, $EE, $D3, $F6, $E8   ; 

- D 0 - - - 0x03D1CC 0F:11BC: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03D1CD 0F:11BD: 00        .byte $00   ; 

- D 0 - - - 0x03D1CE 0F:11BE: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D1CF 0F:11BF: 21        .byte $21, $22, $23, $24   ; 

- D 0 - - - 0x03D1D3 0F:11C3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D1D4 0F:11C4: 0E        .byte $0E   ; 

- D 0 - - - 0x03D1D5 0F:11C5: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D1D6 0F:11C6: 0F        .byte $0F, $4D   ; 

- D 0 - - - 0x03D1D8 0F:11C8: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D1D9 0F:11C9: 3D        .byte $3D   ; 

- D 0 - - - 0x03D1DA 0F:11CA: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D1DB 0F:11CB: 00        .byte $00   ; 

- D 0 - - - 0x03D1DC 0F:11CC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D1DD 0F:11CD: C2        .byte $C2   ; 

- D 0 - - - 0x03D1DE 0F:11CE: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D1DF 0F:11CF: 00        .byte $00   ; 

- D 0 - - - 0x03D1E0 0F:11D0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D1E1 0F:11D1: C2        .byte $C2   ; 

- D 0 - - - 0x03D1E2 0F:11D2: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03D1E3 0F:11D3: 00        .byte $00   ; 

- D 0 - - - 0x03D1E4 0F:11D4: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D1E5 0F:11D5: 31        .byte $31, $32, $33   ; 

- D 0 - - - 0x03D1E8 0F:11D8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D1E9 0F:11D9: 3D        .byte $3D   ; 

- D 0 - - - 0x03D1EA 0F:11DA: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D1EB 0F:11DB: 1E        .byte $1E, $1F, $3E, $3F   ; 

- D 0 - - - 0x03D1EF 0F:11DF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D1F0 0F:11E0: 3D        .byte $3D   ; 

- D 0 - - - 0x03D1F1 0F:11E1: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D1F2 0F:11E2: 00        .byte $00   ; 

- D 0 - - - 0x03D1F3 0F:11E3: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D1F4 0F:11E4: 9D        .byte $9D, $8C, $E9, $00, $E3, $D9, $E5, $D1, $F8   ; 

- D 0 - - - 0x03D1FD 0F:11ED: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D1FE 0F:11EE: CD        .byte $CD   ; 

- D 0 - - - 0x03D1FF 0F:11EF: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D200 0F:11F0: B1        .byte $B1   ; 

- D 0 - - - 0x03D201 0F:11F1: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D202 0F:11F2: 00        .byte $00   ; 

- D 0 - - - 0x03D203 0F:11F3: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D204 0F:11F4: 41        .byte $41, $42, $43   ; 

- D 0 - - - 0x03D207 0F:11F7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D208 0F:11F8: 3D        .byte $3D   ; 

- D 0 - - - 0x03D209 0F:11F9: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D20A 0F:11FA: 2E        .byte $2E, $2F, $4E, $4F   ; 

- D 0 - - - 0x03D20E 0F:11FE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D20F 0F:11FF: 3D        .byte $3D   ; 

- D 0 - - - 0x03D210 0F:1200: 81        .byte con_80 + $01, $81   ; 
- D 0 - - - 0x03D212 0F:1202: 00        .byte $00   ; 

- D 0 - - - 0x03D213 0F:1203: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D214 0F:1204: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03D217 0F:1207: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03D218 0F:1208: 00        .byte $00   ; 

- D 0 - - - 0x03D219 0F:1209: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D21A 0F:120A: B0        .byte $B0, $00   ; 

- D 0 - - - 0x03D21C 0F:120C: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03D21E 0F:120E: EB        .byte $EB, $FE   ; 

- D 0 - - - 0x03D220 0F:1210: 54        .byte con_40 + $14   ; 
- D 0 - - - 0x03D221 0F:1211: C3        .byte $C3, $00, $D4, $EE, $D3, $F6, $D5, $00, $9D, $8C, $E5, $D5, $E4, $D2, $FB, $D8   ; 
- D 0 - - - 0x03D231 0F:1221: E9        .byte $E9, $E4, $D1, $C3   ; 

- D 0 - - - 0x03D235 0F:1225: 26        .byte con_00 + $26   ; 
- D 0 - - - 0x03D236 0F:1226: 00        .byte $00   ; 

- D 0 - - - 0x03D237 0F:1227: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D238 0F:1228: DE        .byte $DE, $E8, $EE, $D3, $E5, $00, $D4, $EE, $D3, $F6, $E9   ; 

- D 0 - - - 0x03D243 0F:1233: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D244 0F:1234: 00        .byte $00   ; 

- D 0 - - - 0x03D245 0F:1235: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D246 0F:1236: 3D        .byte $3D   ; 

- D 0 - - - 0x03D247 0F:1237: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D248 0F:1238: 07        .byte $07, $08, $09, $0A, $0B, $0C, $0D   ; 

- D 0 - - - 0x03D24F 0F:123F: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D250 0F:1240: 00        .byte $00   ; 

- D 0 - - - 0x03D251 0F:1241: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D252 0F:1242: C2        .byte $C2   ; 

- D 0 - - - 0x03D253 0F:1243: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D254 0F:1244: 00        .byte $00, $C2   ; 

- D 0 - - - 0x03D256 0F:1246: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D257 0F:1247: 00        .byte $00   ; 

- D 0 - - - 0x03D258 0F:1248: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D259 0F:1249: 3D        .byte $3D   ; 

- D 0 - - - 0x03D25A 0F:124A: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D25B 0F:124B: 17        .byte $17, $18, $19, $1A, $1B, $1C, $1D   ; 

- D 0 - - - 0x03D262 0F:1252: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D263 0F:1253: 00        .byte $00   ; 

- D 0 - - - 0x03D264 0F:1254: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D265 0F:1255: DB        .byte $DB, $EB, $FD   ; 

- D 0 - - - 0x03D268 0F:1258: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D269 0F:1259: DB        .byte $DB   ; 

- D 0 - - - 0x03D26A 0F:125A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D26B 0F:125B: FD        .byte $FD, $E5   ; 

- D 0 - - - 0x03D26D 0F:125D: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D26E 0F:125E: 00        .byte $00   ; 

- D 0 - - - 0x03D26F 0F:125F: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D270 0F:1260: 3D        .byte $3D   ; 

- D 0 - - - 0x03D271 0F:1261: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D272 0F:1262: 27        .byte $27, $28, $29, $2A, $2B, $2C, $2D   ; 

- D 0 - - - 0x03D279 0F:1269: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03D27A 0F:126A: 00        .byte $00   ; 

- D 0 - - - 0x03D27B 0F:126B: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D27C 0F:126C: 3D        .byte $3D   ; 

- D 0 - - - 0x03D27D 0F:126D: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D27E 0F:126E: 37        .byte $37, $38, $39, $3A, $3B, $3C, $3D   ; 

- D 0 - - - 0x03D285 0F:1275: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D286 0F:1276: 00        .byte $00   ; 

- D 0 - - - 0x03D287 0F:1277: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03D288 0F:1278: D9        .byte $D9, $FA, $DA, $F9, $F8, $E8, $DA, $C3, $00, $B1   ; 

- D 0 - - - 0x03D292 0F:1282: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D293 0F:1283: 00        .byte $00   ; 

- D 0 - - - 0x03D294 0F:1284: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D295 0F:1285: 3D        .byte $3D   ; 

- D 0 - - - 0x03D296 0F:1286: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D297 0F:1287: 47        .byte $47, $48, $49, $4A, $4B, $4C, $3D   ; 

- D 0 - - - 0x03D29E 0F:128E: 81        .byte con_80 + $01, $55   ; 
- D 0 - - - 0x03D2A0 0F:1290: 00        .byte $00   ; 

- D 0 - - - 0x03D2A1 0F:1291: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2A2 0F:1292: C2        .byte $C2   ; 

- D 0 - - - 0x03D2A3 0F:1293: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03D2A4 0F:1294: 00        .byte $00   ; 

- D 0 - - - 0x03D2A5 0F:1295: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D2A6 0F:1296: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $CB   ; 

- D 0 - - - 0x03D2AF 0F:129F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D2B0 0F:12A0: 00        .byte $00   ; 

- D 0 - - - 0x03D2B1 0F:12A1: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D2B2 0F:12A2: B2        .byte $B2, $00, $D8, $00, $FD, $00, $D3, $00, $D1, $00, $B2   ; 

- D 0 - - - 0x03D2BD 0F:12AD: 81        .byte con_80 + $01, $A5   ; 
- D 0 - - - 0x03D2BF 0F:12AF: 00        .byte $00   ; 

- D 0 - - - 0x03D2C0 0F:12B0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2C1 0F:12B1: 80        .byte $80   ; 

- D 0 - - - 0x03D2C2 0F:12B2: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2C3 0F:12B3: A0        .byte $A0   ; 

- D 0 - - - 0x03D2C4 0F:12B4: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2C5 0F:12B5: F0        .byte $F0   ; 

- D 0 - - - 0x03D2C6 0F:12B6: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D2C7 0F:12B7: 00        .byte $00, $80   ; 

- D 0 - - - 0x03D2C9 0F:12B9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D2CA 0F:12BA: 5A        .byte $5A   ; 

- D 0 - - - 0x03D2CB 0F:12BB: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2CC 0F:12BC: 1A        .byte $1A   ; 

- D 0 - - - 0x03D2CD 0F:12BD: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2CE 0F:12BE: FF        .byte $FF   ; 

- D 0 - - - 0x03D2CF 0F:12BF: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D2D0 0F:12C0: FC        .byte $FC, $CF   ; 

- D 0 - - - 0x03D2D2 0F:12C2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D2D3 0F:12C3: F5        .byte $F5   ; 

- D 0 - - - 0x03D2D4 0F:12C4: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2D5 0F:12C5: 31        .byte $31   ; 

- D 0 - - - 0x03D2D6 0F:12C6: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D2D7 0F:12C7: 0F        .byte $0F   ; 

- D 0 - - - 0x03D2D8 0F:12C8: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2D9 0F:12C9: F0        .byte $F0   ; 

- D 0 - - - 0x03D2DA 0F:12CA: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2DB 0F:12CB: FF        .byte $FF   ; 

- D 0 - - - 0x03D2DC 0F:12CC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2DD 0F:12CD: F3        .byte $F3   ; 

- D 0 - - - 0x03D2DE 0F:12CE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D2DF 0F:12CF: F0        .byte $F0   ; 

- D 0 - - - 0x03D2E0 0F:12D0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D2E1 0F:12D1: 30        .byte $30   ; 

- D 0 - - - 0x03D2E2 0F:12D2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D2E3 0F:12D3: FF        .byte $FF   ; 

- D 0 - - - 0x03D2E4 0F:12D4: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D2E5 0F:12D5: 3F        .byte $3F, $8B   ; 

- D 0 - - - 0x03D2E7 0F:12D7: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2E8 0F:12D8: 55        .byte $55   ; 

- D 0 - - - 0x03D2E9 0F:12D9: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D2EA 0F:12DA: 12        .byte $12, $CF, $FF, $0F, $FB   ; 

- D 0 - - - 0x03D2EF 0F:12DF: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2F0 0F:12E0: F5        .byte $F5   ; 

- D 0 - - - 0x03D2F1 0F:12E1: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D2F2 0F:12E2: 0D        .byte $0D, $00, $CF, $FF, $F3   ; 

- D 0 - - - 0x03D2F7 0F:12E7: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D2F8 0F:12E8: FF        .byte $FF   ; 

- D 0 - - - 0x03D2F9 0F:12E9: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D2FA 0F:12EA: 00        .byte $00   ; 

- D 0 - - - 0x03D2FB 0F:12EB: 00        .byte $00, $00   ; end token



_off031_0x03D2FD_43:
- D 0 - - - 0x03D2FD 0F:12ED: 00        .byte $00   ; 
- D 0 - - - 0x03D2FE 0F:12EE: 20 00     .dbyt $2000

- D 0 - - - 0x03D300 0F:12F0: 81        .byte con_80 + $01, $AA   ; 
- D 0 - - - 0x03D302 0F:12F2: 00        .byte $00   ; 

- D 0 - - - 0x03D303 0F:12F3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D304 0F:12F4: 73        .byte $73   ; 

- D 0 - - - 0x03D305 0F:12F5: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D306 0F:12F6: 77        .byte $77   ; 

- D 0 - - - 0x03D307 0F:12F7: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D308 0F:12F8: 51        .byte $51, $52, $53, $54, $55, $56   ; 

- D 0 - - - 0x03D30E 0F:12FE: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D30F 0F:12FF: 00        .byte $00   ; 

- D 0 - - - 0x03D310 0F:1300: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D311 0F:1301: 5A        .byte $5A   ; 

- D 0 - - - 0x03D312 0F:1302: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D313 0F:1303: 77        .byte $77   ; 

- D 0 - - - 0x03D314 0F:1304: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D315 0F:1305: 61        .byte $61, $62, $63, $64, $65, $66   ; 

- D 0 - - - 0x03D31B 0F:130B: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D31C 0F:130C: 00        .byte $00   ; 

- D 0 - - - 0x03D31D 0F:130D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D31E 0F:130E: 77        .byte $77   ; 

- D 0 - - - 0x03D31F 0F:130F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D320 0F:1310: 71        .byte $71   ; 

- D 0 - - - 0x03D321 0F:1311: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D322 0F:1312: 77        .byte $77   ; 

- D 0 - - - 0x03D323 0F:1313: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D324 0F:1314: 74        .byte $74, $75, $76   ; 

- D 0 - - - 0x03D327 0F:1317: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D328 0F:1318: 00        .byte $00   ; 

- D 0 - - - 0x03D329 0F:1319: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D32A 0F:131A: 77        .byte $77   ; 

- D 0 - - - 0x03D32B 0F:131B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D32C 0F:131C: 72        .byte $72   ; 

- D 0 - - - 0x03D32D 0F:131D: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D32E 0F:131E: 00        .byte $00   ; 

- D 0 - - - 0x03D32F 0F:131F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D330 0F:1320: 57        .byte $57   ; 

- D 0 - - - 0x03D331 0F:1321: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D332 0F:1322: 77        .byte $77   ; 

- D 0 - - - 0x03D333 0F:1323: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D334 0F:1324: 00        .byte $00   ; 

- D 0 - - - 0x03D335 0F:1325: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D336 0F:1326: 67        .byte $67   ; 

- D 0 - - - 0x03D337 0F:1327: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D338 0F:1328: 50        .byte $50   ; 

- D 0 - - - 0x03D339 0F:1329: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D33A 0F:132A: 57        .byte $57   ; 

- D 0 - - - 0x03D33B 0F:132B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D33C 0F:132C: 77        .byte $77   ; 

- D 0 - - - 0x03D33D 0F:132D: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D33E 0F:132E: 58        .byte $58, $50, $59, $78   ; 

- D 0 - - - 0x03D342 0F:1332: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D343 0F:1333: 00        .byte $00   ; 

- D 0 - - - 0x03D344 0F:1334: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D345 0F:1335: 70        .byte $70   ; 

- D 0 - - - 0x03D346 0F:1336: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D347 0F:1337: 60        .byte $60   ; 

- D 0 - - - 0x03D348 0F:1338: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D349 0F:1339: 67        .byte $67, $69, $77, $68, $52   ; 

- D 0 - - - 0x03D34E 0F:133E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D34F 0F:133F: 60        .byte $60   ; 

- D 0 - - - 0x03D350 0F:1340: 37        .byte con_00 + $37   ; 
- D 0 - - - 0x03D351 0F:1341: 00        .byte $00   ; 

- D 0 - - - 0x03D352 0F:1342: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D353 0F:1343: C2        .byte $C2   ; 

- D 0 - - - 0x03D354 0F:1344: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D355 0F:1345: 00        .byte $00   ; 

- D 0 - - - 0x03D356 0F:1346: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D357 0F:1347: C2        .byte $C2   ; 

- D 0 - - - 0x03D358 0F:1348: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D359 0F:1349: 00        .byte $00   ; 

- D 0 - - - 0x03D35A 0F:134A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D35B 0F:134B: C2        .byte $C2   ; 

- D 0 - - - 0x03D35C 0F:134C: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03D35D 0F:134D: 00        .byte $00   ; 

- D 0 - - - 0x03D35E 0F:134E: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D35F 0F:134F: B0        .byte $B0, $00, $D9, $E8, $EF, $E0, $E9, $00, $E3, $D9, $EC   ; 

- D 0 - - - 0x03D36A 0F:135A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D36B 0F:135B: E1        .byte $E1   ; 

- D 0 - - - 0x03D36C 0F:135C: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D36D 0F:135D: D1        .byte $D1, $E2, $D1, $F8, $FD, $DF   ; 

- D 0 - - - 0x03D373 0F:1363: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D374 0F:1364: CF        .byte $CF   ; 

- D 0 - - - 0x03D375 0F:1365: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D376 0F:1366: CE        .byte $CE, $00, $B1   ; 

- D 0 - - - 0x03D379 0F:1369: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03D37A 0F:136A: 00        .byte $00   ; 

- D 0 - - - 0x03D37B 0F:136B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D37C 0F:136C: C2        .byte $C2   ; 

- D 0 - - - 0x03D37D 0F:136D: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03D37E 0F:136E: 00        .byte $00   ; 

- D 0 - - - 0x03D37F 0F:136F: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D380 0F:1370: B0        .byte $B0, $00, $E3, $E5, $D5, $D7, $00   ; 

- D 0 - - - 0x03D387 0F:1377: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D388 0F:1378: DC        .byte $DC   ; 

- D 0 - - - 0x03D389 0F:1379: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D38A 0F:137A: F0        .byte $F0, $DB, $D5, $E4, $D1, $F5, $D2, $DF, $E4   ; 

- D 0 - - - 0x03D393 0F:1383: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D394 0F:1384: 00        .byte $00   ; 

- D 0 - - - 0x03D395 0F:1385: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D396 0F:1386: C2        .byte $C2   ; 

- D 0 - - - 0x03D397 0F:1387: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D398 0F:1388: 00        .byte $00   ; 

- D 0 - - - 0x03D399 0F:1389: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D39A 0F:138A: C2        .byte $C2   ; 

- D 0 - - - 0x03D39B 0F:138B: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03D39C 0F:138C: 00        .byte $00   ; 

- D 0 - - - 0x03D39D 0F:138D: 4F        .byte con_40 + $0F   ; 
- D 0 - - - 0x03D39E 0F:138E: DF        .byte $DF, $E3, $D3, $D9, $E8, $EF, $E0, $D5, $00, $DB, $E8, $EF, $E0, $E2, $F2   ; 

- D 0 - - - 0x03D3AD 0F:139D: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D3AE 0F:139E: CF        .byte $CF   ; 

- D 0 - - - 0x03D3AF 0F:139F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D3B0 0F:13A0: 00        .byte $00, $B1   ; 

- D 0 - - - 0x03D3B2 0F:13A2: 81        .byte con_80 + $01, $77   ; 
- D 0 - - - 0x03D3B4 0F:13A4: 00        .byte $00   ; 

- D 0 - - - 0x03D3B5 0F:13A5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D3B6 0F:13A6: C2        .byte $C2   ; 

- D 0 - - - 0x03D3B7 0F:13A7: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03D3B8 0F:13A8: 00        .byte $00   ; 

- D 0 - - - 0x03D3B9 0F:13A9: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D3BA 0F:13AA: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C8   ; 

- D 0 - - - 0x03D3C3 0F:13B3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D3C4 0F:13B4: 00        .byte $00   ; 

- D 0 - - - 0x03D3C5 0F:13B5: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03D3C6 0F:13B6: B2        .byte $B2, $00, $DB, $E5, $D5, $EF, $00, $E8, $00, $F2, $F7, $00, $B2   ; 

- D 0 - - - 0x03D3D3 0F:13C3: 81        .byte con_80 + $01, $CC   ; 
- D 0 - - - 0x03D3D5 0F:13C5: 00        .byte $00   ; 

- D 0 - - - 0x03D3D6 0F:13C6: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D3D7 0F:13C7: 04        .byte $04, $09, $86, $9A, $AA   ; 

- D 0 - - - 0x03D3DC 0F:13CC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D3DD 0F:13CD: FF        .byte $FF   ; 

- D 0 - - - 0x03D3DE 0F:13CE: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D3DF 0F:13CF: 00        .byte $00   ; 

- D 0 - - - 0x03D3E0 0F:13D0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D3E1 0F:13D1: 05        .byte $05   ; 

- D 0 - - - 0x03D3E2 0F:13D2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D3E3 0F:13D3: FF        .byte $FF   ; 

- D 0 - - - 0x03D3E4 0F:13D4: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D3E5 0F:13D5: 00        .byte $00, $C0, $F0, $FC   ; 

- D 0 - - - 0x03D3E9 0F:13D9: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D3EA 0F:13DA: FF        .byte $FF   ; 

- D 0 - - - 0x03D3EB 0F:13DB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D3EC 0F:13DC: 00        .byte $00, $CC, $0F   ; 

- D 0 - - - 0x03D3EF 0F:13DF: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D3F0 0F:13E0: FF        .byte $FF   ; 

- D 0 - - - 0x03D3F1 0F:13E1: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D3F2 0F:13E2: FC        .byte $FC, $33, $C0   ; 

- D 0 - - - 0x03D3F5 0F:13E5: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D3F6 0F:13E6: F0        .byte $F0   ; 

- D 0 - - - 0x03D3F7 0F:13E7: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D3F8 0F:13E8: FC        .byte $FC   ; 

- D 0 - - - 0x03D3F9 0F:13E9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D3FA 0F:13EA: F0        .byte $F0   ; 

- D 0 - - - 0x03D3FB 0F:13EB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D3FC 0F:13EC: 00        .byte $00   ; 

- D 0 - - - 0x03D3FD 0F:13ED: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D3FE 0F:13EE: 0F        .byte $0F   ; 

- D 0 - - - 0x03D3FF 0F:13EF: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D400 0F:13F0: 00        .byte $00   ; 

- D 0 - - - 0x03D401 0F:13F1: 00        .byte $00, $00   ; end token



_off031_0x03D403_35:
- D 0 - - - 0x03D403 0F:13F3: 00        .byte $00   ; 
- D 0 - - - 0x03D404 0F:13F4: 20 00     .dbyt $2000

- D 0 - - - 0x03D406 0F:13F6: 81        .byte con_80 + $01, $C2   ; 
- D 0 - - - 0x03D408 0F:13F8: 00        .byte $00   ; 

- D 0 - - - 0x03D409 0F:13F9: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D40A 0F:13FA: 01        .byte $01, $02, $03, $04, $05, $06, $07   ; 

- D 0 - - - 0x03D411 0F:1401: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D412 0F:1402: 00        .byte $00   ; 

- D 0 - - - 0x03D413 0F:1403: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D414 0F:1404: 11        .byte $11, $12, $13, $14, $15, $16, $17   ; 

- D 0 - - - 0x03D41B 0F:140B: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D41C 0F:140C: 00        .byte $00   ; 

- D 0 - - - 0x03D41D 0F:140D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D41E 0F:140E: C2        .byte $C2   ; 

- D 0 - - - 0x03D41F 0F:140F: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D420 0F:1410: 00        .byte $00   ; 

- D 0 - - - 0x03D421 0F:1411: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D422 0F:1412: 21        .byte $21, $22, $23, $24, $25, $26, $27   ; 

- D 0 - - - 0x03D429 0F:1419: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D42A 0F:141A: 00        .byte $00   ; 

- D 0 - - - 0x03D42B 0F:141B: 4F        .byte con_40 + $0F   ; 
- D 0 - - - 0x03D42C 0F:141C: B0        .byte $B0, $00, $C5, $EA, $D6, $E8, $00, $F7, $C0, $D2, $D5, $00, $E2, $FD, $FC   ; 

- D 0 - - - 0x03D43B 0F:142B: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03D43C 0F:142C: 00        .byte $00   ; 

- D 0 - - - 0x03D43D 0F:142D: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D43E 0F:142E: 31        .byte $31, $32, $33, $34, $35, $36, $37   ; 

- D 0 - - - 0x03D445 0F:1435: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D446 0F:1436: 00        .byte $00   ; 

- D 0 - - - 0x03D447 0F:1437: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D448 0F:1438: 41        .byte $41, $42, $43, $44, $45, $46, $47   ; 

- D 0 - - - 0x03D44F 0F:143F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D450 0F:1440: 00        .byte $00   ; 

- D 0 - - - 0x03D451 0F:1441: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03D452 0F:1442: D5        .byte $D5, $D8, $F8, $E3, $D6, $00, $E2, $FD, $DB, $E9, $00, $EE, $D1, $D4   ; 

- D 0 - - - 0x03D460 0F:1450: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03D461 0F:1451: 00        .byte $00   ; 

- D 0 - - - 0x03D462 0F:1452: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D463 0F:1453: 51        .byte $51, $52, $53, $54, $55, $56, $57   ; 

- D 0 - - - 0x03D46A 0F:145A: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D46B 0F:145B: 00        .byte $00   ; 

- D 0 - - - 0x03D46C 0F:145C: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D46D 0F:145D: 61        .byte $61, $62, $63, $64, $65, $66, $67   ; 

- D 0 - - - 0x03D474 0F:1464: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D475 0F:1465: 00        .byte $00   ; 

- D 0 - - - 0x03D476 0F:1466: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D477 0F:1467: F7        .byte $F7, $F8   ; 

- D 0 - - - 0x03D479 0F:1469: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D47A 0F:146A: CF        .byte $CF   ; 

- D 0 - - - 0x03D47B 0F:146B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D47C 0F:146C: B1        .byte $B1   ; 

- D 0 - - - 0x03D47D 0F:146D: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03D47E 0F:146E: 00        .byte $00   ; 

- D 0 - - - 0x03D47F 0F:146F: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D480 0F:1470: 68        .byte $68   ; 

- D 0 - - - 0x03D481 0F:1471: 81        .byte con_80 + $01, $AE   ; 
- D 0 - - - 0x03D483 0F:1473: 00        .byte $00   ; 

- D 0 - - - 0x03D484 0F:1474: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D485 0F:1475: 08        .byte $08   ; 

- D 0 - - - 0x03D486 0F:1476: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D487 0F:1477: 0F        .byte $0F   ; 

- D 0 - - - 0x03D488 0F:1478: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D489 0F:1479: 0B        .byte $0B, $0C, $0D   ; 

- D 0 - - - 0x03D48C 0F:147C: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D48D 0F:147D: 00        .byte $00   ; 

- D 0 - - - 0x03D48E 0F:147E: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03D48F 0F:147F: DE        .byte $DE, $E8, $F5, $00, $DB, $C0, $D7, $F1, $D1, $E8, $00, $DF, $D1, $D8, $E1, $E5   ; 

- D 0 - - - 0x03D49F 0F:148F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D4A0 0F:1490: 00        .byte $00   ; 

- D 0 - - - 0x03D4A1 0F:1491: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D4A2 0F:1492: 18        .byte $18, $19, $1A, $1B, $1C, $1D   ; 

- D 0 - - - 0x03D4A8 0F:1498: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03D4A9 0F:1499: 00        .byte $00   ; 

- D 0 - - - 0x03D4AA 0F:149A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D4AB 0F:149B: C2        .byte $C2   ; 

- D 0 - - - 0x03D4AC 0F:149C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D4AD 0F:149D: 00        .byte $00   ; 

- D 0 - - - 0x03D4AE 0F:149E: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D4AF 0F:149F: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03D4B2 0F:14A2: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D4B3 0F:14A3: 00        .byte $00   ; 

- D 0 - - - 0x03D4B4 0F:14A4: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D4B5 0F:14A5: 28        .byte $28, $29, $2A, $2B, $2C, $2D   ; 

- D 0 - - - 0x03D4BB 0F:14AB: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D4BC 0F:14AC: 00        .byte $00   ; 

- D 0 - - - 0x03D4BD 0F:14AD: 51        .byte con_40 + $11   ; 
- D 0 - - - 0x03D4BE 0F:14AE: D5        .byte $D5, $FE, $DF, $00, $8F, $9B, $A8, $CF, $93, $A6, $89, $AD, $E8, $00, $F2, $E3   ; 
- D 0 - - - 0x03D4CE 0F:14BE: E5        .byte $E5   ; 

- D 0 - - - 0x03D4CF 0F:14BF: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D4D0 0F:14C0: 00        .byte $00   ; 

- D 0 - - - 0x03D4D1 0F:14C1: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D4D2 0F:14C2: 38        .byte $38, $39, $3A, $3B, $3C, $3D   ; 

- D 0 - - - 0x03D4D8 0F:14C8: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D4D9 0F:14C9: 00        .byte $00   ; 

- D 0 - - - 0x03D4DA 0F:14CA: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D4DB 0F:14CB: 48        .byte $48, $49, $4A, $4B, $4C, $4D   ; 

- D 0 - - - 0x03D4E1 0F:14D1: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D4E2 0F:14D2: 00        .byte $00   ; 

- D 0 - - - 0x03D4E3 0F:14D3: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D4E4 0F:14D4: E2        .byte $E2, $FD, $DB, $E9, $00, $EE, $D1, $D4, $F7, $DF, $C3   ; 

- D 0 - - - 0x03D4EF 0F:14DF: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D4F0 0F:14E0: 00        .byte $00   ; 

- D 0 - - - 0x03D4F1 0F:14E1: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D4F2 0F:14E2: 58        .byte $58, $59, $5A, $5B, $5C, $5D   ; 

- D 0 - - - 0x03D4F8 0F:14E8: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D4F9 0F:14E9: 00        .byte $00   ; 

- D 0 - - - 0x03D4FA 0F:14EA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D4FB 0F:14EB: 58        .byte $58   ; 

- D 0 - - - 0x03D4FC 0F:14EC: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D4FD 0F:14ED: 6F        .byte $6F   ; 

- D 0 - - - 0x03D4FE 0F:14EE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D4FF 0F:14EF: 5D        .byte $5D   ; 

- D 0 - - - 0x03D500 0F:14F0: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D501 0F:14F1: 00        .byte $00   ; 

- D 0 - - - 0x03D502 0F:14F2: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D503 0F:14F3: 6A        .byte $6A, $6D, $69, $6B, $6E, $6C   ; 

- D 0 - - - 0x03D509 0F:14F9: 81        .byte con_80 + $01, $8C   ; 
- D 0 - - - 0x03D50B 0F:14FB: 00        .byte $00   ; 

- D 0 - - - 0x03D50C 0F:14FC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D50D 0F:14FD: A0        .byte $A0   ; 

- D 0 - - - 0x03D50E 0F:14FE: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D50F 0F:14FF: 00        .byte $00   ; 

- D 0 - - - 0x03D510 0F:1500: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D511 0F:1501: 10        .byte $10   ; 

- D 0 - - - 0x03D512 0F:1502: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D513 0F:1503: 00        .byte $00   ; 

- D 0 - - - 0x03D514 0F:1504: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D515 0F:1505: 0A        .byte $0A, $04   ; 

- D 0 - - - 0x03D517 0F:1507: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D518 0F:1508: 55        .byte $55   ; 

- D 0 - - - 0x03D519 0F:1509: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D51A 0F:150A: 11        .byte $11   ; 

- D 0 - - - 0x03D51B 0F:150B: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D51C 0F:150C: 00        .byte $00   ; 

- D 0 - - - 0x03D51D 0F:150D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D51E 0F:150E: 05        .byte $05, $01   ; 

- D 0 - - - 0x03D520 0F:1510: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D521 0F:1511: 00        .byte $00   ; 

- D 0 - - - 0x03D522 0F:1512: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D523 0F:1513: 44        .byte $44   ; 

- D 0 - - - 0x03D524 0F:1514: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D525 0F:1515: 55        .byte $55   ; 

- D 0 - - - 0x03D526 0F:1516: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D527 0F:1517: 50        .byte $50, $10, $44   ; 

- D 0 - - - 0x03D52A 0F:151A: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D52B 0F:151B: 55        .byte $55   ; 

- D 0 - - - 0x03D52C 0F:151C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D52D 0F:151D: 9D        .byte $9D, $00, $23, $04   ; 

- D 0 - - - 0x03D531 0F:1521: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D532 0F:1522: 05        .byte $05   ; 

- D 0 - - - 0x03D533 0F:1523: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D534 0F:1524: 55        .byte $55, $59, $0A, $02   ; 

- D 0 - - - 0x03D538 0F:1528: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03D539 0F:1529: 00        .byte $00   ; 

- D 0 - - - 0x03D53A 0F:152A: 00        .byte $00, $00   ; end token



_off031_0x03D53C_39:
- D 0 - - - 0x03D53C 0F:152C: 00        .byte $00   ; 
- D 0 - - - 0x03D53D 0F:152D: 20 00     .dbyt $2000

- D 0 - - - 0x03D53F 0F:152F: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D540 0F:1530: 00        .byte $00   ; 

- D 0 - - - 0x03D541 0F:1531: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D542 0F:1532: 29        .byte $29   ; 

- D 0 - - - 0x03D543 0F:1533: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D544 0F:1534: 80        .byte $80   ; 

- D 0 - - - 0x03D545 0F:1535: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D546 0F:1536: 2F        .byte $2F   ; 

- D 0 - - - 0x03D547 0F:1537: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D548 0F:1538: 00        .byte $00   ; 

- D 0 - - - 0x03D549 0F:1539: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D54A 0F:153A: 29        .byte $29   ; 

- D 0 - - - 0x03D54B 0F:153B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D54C 0F:153C: 80        .byte $80   ; 

- D 0 - - - 0x03D54D 0F:153D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D54E 0F:153E: 2F        .byte $2F   ; 

- D 0 - - - 0x03D54F 0F:153F: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D550 0F:1540: 00        .byte $00   ; 

- D 0 - - - 0x03D551 0F:1541: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D552 0F:1542: 29        .byte $29   ; 

- D 0 - - - 0x03D553 0F:1543: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D554 0F:1544: 80        .byte $80   ; 

- D 0 - - - 0x03D555 0F:1545: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D556 0F:1546: 2F        .byte $2F   ; 

- D 0 - - - 0x03D557 0F:1547: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D558 0F:1548: 00        .byte $00   ; 

- D 0 - - - 0x03D559 0F:1549: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D55A 0F:154A: 29        .byte $29   ; 

- D 0 - - - 0x03D55B 0F:154B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D55C 0F:154C: 80        .byte $80   ; 

- D 0 - - - 0x03D55D 0F:154D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D55E 0F:154E: 2F        .byte $2F   ; 

- D 0 - - - 0x03D55F 0F:154F: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D560 0F:1550: 00        .byte $00   ; 

- D 0 - - - 0x03D561 0F:1551: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D562 0F:1552: 29        .byte $29   ; 

- D 0 - - - 0x03D563 0F:1553: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D564 0F:1554: 80        .byte $80   ; 

- D 0 - - - 0x03D565 0F:1555: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D566 0F:1556: 2F        .byte $2F   ; 

- D 0 - - - 0x03D567 0F:1557: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D568 0F:1558: 00        .byte $00   ; 

- D 0 - - - 0x03D569 0F:1559: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D56A 0F:155A: 29        .byte $29   ; 

- D 0 - - - 0x03D56B 0F:155B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D56C 0F:155C: 80        .byte $80   ; 

- D 0 - - - 0x03D56D 0F:155D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D56E 0F:155E: 2F        .byte $2F   ; 

- D 0 - - - 0x03D56F 0F:155F: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D570 0F:1560: 00        .byte $00   ; 

- D 0 - - - 0x03D571 0F:1561: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D572 0F:1562: 29        .byte $29   ; 

- D 0 - - - 0x03D573 0F:1563: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D574 0F:1564: 80        .byte $80   ; 

- D 0 - - - 0x03D575 0F:1565: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D576 0F:1566: 2F        .byte $2F   ; 

- D 0 - - - 0x03D577 0F:1567: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D578 0F:1568: 00        .byte $00   ; 

- D 0 - - - 0x03D579 0F:1569: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D57A 0F:156A: 29        .byte $29   ; 

- D 0 - - - 0x03D57B 0F:156B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D57C 0F:156C: 80        .byte $80   ; 

- D 0 - - - 0x03D57D 0F:156D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D57E 0F:156E: 2F        .byte $2F   ; 

- D 0 - - - 0x03D57F 0F:156F: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D580 0F:1570: 00        .byte $00   ; 

- D 0 - - - 0x03D581 0F:1571: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D582 0F:1572: 29        .byte $29, $80   ; 

- D 0 - - - 0x03D584 0F:1574: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D585 0F:1575: 2A        .byte $2A   ; 

- D 0 - - - 0x03D586 0F:1576: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D587 0F:1577: 0F        .byte $0F   ; 

- D 0 - - - 0x03D588 0F:1578: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D589 0F:1579: 00        .byte $00   ; 

- D 0 - - - 0x03D58A 0F:157A: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D58B 0F:157B: 29        .byte $29, $80, $1D, $1E, $1F   ; 

- D 0 - - - 0x03D590 0F:1580: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D591 0F:1581: 00        .byte $00   ; 

- D 0 - - - 0x03D592 0F:1582: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D593 0F:1583: 29        .byte $29, $80, $2B, $2C, $2D, $2E   ; 

- D 0 - - - 0x03D599 0F:1589: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D59A 0F:158A: 00        .byte $00   ; 

- D 0 - - - 0x03D59B 0F:158B: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D59C 0F:158C: 39        .byte $39, $3A, $3B, $3C, $3D, $3E, $3F   ; 

- D 0 - - - 0x03D5A3 0F:1593: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D5A4 0F:1594: 00        .byte $00   ; 

- D 0 - - - 0x03D5A5 0F:1595: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D5A6 0F:1596: 48        .byte $48, $49, $4A, $4B, $4C, $4D, $4E   ; 

- D 0 - - - 0x03D5AD 0F:159D: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D5AE 0F:159E: 00        .byte $00   ; 

- D 0 - - - 0x03D5AF 0F:159F: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D5B0 0F:15A0: 58        .byte $58, $59, $5A, $5B, $5C, $5D   ; 

- D 0 - - - 0x03D5B6 0F:15A6: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D5B7 0F:15A7: 00        .byte $00   ; 

- D 0 - - - 0x03D5B8 0F:15A8: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D5B9 0F:15A9: 67        .byte $67, $68, $69, $6A, $6B, $6C, $6D, $6E   ; 

- D 0 - - - 0x03D5C1 0F:15B1: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D5C2 0F:15B2: 00        .byte $00   ; 

- D 0 - - - 0x03D5C3 0F:15B3: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D5C4 0F:15B4: 77        .byte $77, $78, $79, $7A, $7B, $7C, $7D, $7E, $7F   ; 

- D 0 - - - 0x03D5CD 0F:15BD: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03D5CE 0F:15BE: 00        .byte $00   ; 

- D 0 - - - 0x03D5CF 0F:15BF: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D5D0 0F:15C0: 87        .byte $87, $88, $89, $8A, $8B, $8C, $8D, $8E, $8F   ; 

- D 0 - - - 0x03D5D9 0F:15C9: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03D5DA 0F:15CA: 00        .byte $00   ; 

- D 0 - - - 0x03D5DB 0F:15CB: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D5DC 0F:15CC: 97        .byte $97, $98, $99, $9A, $9B, $9C, $9D, $9E, $9F   ; 

- D 0 - - - 0x03D5E5 0F:15D5: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D5E6 0F:15D6: 00        .byte $00   ; 

- D 0 - - - 0x03D5E7 0F:15D7: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03D5E8 0F:15D8: C7        .byte $C7, $A7, $A8, $A9, $AA, $AB, $AC, $AD, $AE, $AF   ; 

- D 0 - - - 0x03D5F2 0F:15E2: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03D5F3 0F:15E3: 00        .byte $00   ; 

- D 0 - - - 0x03D5F4 0F:15E4: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D5F5 0F:15E5: B7        .byte $B7, $B8, $B9, $BA, $BB, $BC, $BD, $BE, $BF   ; 

- D 0 - - - 0x03D5FE 0F:15EE: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03D5FF 0F:15EF: 00        .byte $00   ; 

- D 0 - - - 0x03D600 0F:15F0: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D601 0F:15F1: C7        .byte $C7, $C8, $C9, $CA, $CB, $CC, $CD, $CE, $CF   ; 

- D 0 - - - 0x03D60A 0F:15FA: 39        .byte con_00 + $39   ; 
- D 0 - - - 0x03D60B 0F:15FB: 00        .byte $00   ; 

- D 0 - - - 0x03D60C 0F:15FC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D60D 0F:15FD: 29        .byte $29   ; 

- D 0 - - - 0x03D60E 0F:15FE: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D60F 0F:15FF: 80        .byte $80   ; 

- D 0 - - - 0x03D610 0F:1600: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D611 0F:1601: 2F        .byte $2F   ; 

- D 0 - - - 0x03D612 0F:1602: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D613 0F:1603: 00        .byte $00   ; 

- D 0 - - - 0x03D614 0F:1604: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D615 0F:1605: 29        .byte $29   ; 

- D 0 - - - 0x03D616 0F:1606: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D617 0F:1607: 80        .byte $80   ; 

- D 0 - - - 0x03D618 0F:1608: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D619 0F:1609: 2F        .byte $2F   ; 

- D 0 - - - 0x03D61A 0F:160A: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D61B 0F:160B: 00        .byte $00   ; 

- D 0 - - - 0x03D61C 0F:160C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D61D 0F:160D: 29        .byte $29   ; 

- D 0 - - - 0x03D61E 0F:160E: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D61F 0F:160F: 80        .byte $80   ; 

- D 0 - - - 0x03D620 0F:1610: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D621 0F:1611: 2F        .byte $2F   ; 

- D 0 - - - 0x03D622 0F:1612: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D623 0F:1613: 00        .byte $00   ; 

- D 0 - - - 0x03D624 0F:1614: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D625 0F:1615: 29        .byte $29   ; 

- D 0 - - - 0x03D626 0F:1616: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D627 0F:1617: 80        .byte $80   ; 

- D 0 - - - 0x03D628 0F:1618: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D629 0F:1619: 2F        .byte $2F   ; 

- D 0 - - - 0x03D62A 0F:161A: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D62B 0F:161B: 00        .byte $00   ; 

- D 0 - - - 0x03D62C 0F:161C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D62D 0F:161D: 29        .byte $29   ; 

- D 0 - - - 0x03D62E 0F:161E: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D62F 0F:161F: 80        .byte $80   ; 

- D 0 - - - 0x03D630 0F:1620: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D631 0F:1621: 2F        .byte $2F   ; 

- D 0 - - - 0x03D632 0F:1622: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D633 0F:1623: 00        .byte $00   ; 

- D 0 - - - 0x03D634 0F:1624: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D635 0F:1625: 29        .byte $29   ; 

- D 0 - - - 0x03D636 0F:1626: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D637 0F:1627: 80        .byte $80   ; 

- D 0 - - - 0x03D638 0F:1628: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D639 0F:1629: 2F        .byte $2F   ; 

- D 0 - - - 0x03D63A 0F:162A: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D63B 0F:162B: 00        .byte $00   ; 

- D 0 - - - 0x03D63C 0F:162C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D63D 0F:162D: 29        .byte $29   ; 

- D 0 - - - 0x03D63E 0F:162E: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D63F 0F:162F: 80        .byte $80   ; 

- D 0 - - - 0x03D640 0F:1630: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D641 0F:1631: 2F        .byte $2F   ; 

- D 0 - - - 0x03D642 0F:1632: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03D643 0F:1633: 00        .byte $00   ; 

- D 0 - - - 0x03D644 0F:1634: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D645 0F:1635: 29        .byte $29   ; 

- D 0 - - - 0x03D646 0F:1636: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D647 0F:1637: 80        .byte $80   ; 

- D 0 - - - 0x03D648 0F:1638: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D649 0F:1639: 2F        .byte $2F   ; 

- D 0 - - - 0x03D64A 0F:163A: 21        .byte con_00 + $21   ; 
- D 0 - - - 0x03D64B 0F:163B: 00        .byte $00   ; 

- D 0 - - - 0x03D64C 0F:163C: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D64D 0F:163D: 55        .byte $55, $10   ; 

- D 0 - - - 0x03D64F 0F:163F: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D650 0F:1640: 00        .byte $00   ; 

- D 0 - - - 0x03D651 0F:1641: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D652 0F:1642: 80        .byte $80   ; 

- D 0 - - - 0x03D653 0F:1643: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D654 0F:1644: 00        .byte $00   ; 

- D 0 - - - 0x03D655 0F:1645: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D656 0F:1646: 20        .byte $20   ; 

- D 0 - - - 0x03D657 0F:1647: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D658 0F:1648: 00        .byte $00   ; 

- D 0 - - - 0x03D659 0F:1649: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D65A 0F:164A: 0A        .byte $0A, $0F   ; 

- D 0 - - - 0x03D65C 0F:164C: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03D65D 0F:164D: 00        .byte $00   ; 

- D 0 - - - 0x03D65E 0F:164E: 00        .byte $00, $00   ; end token



_off031_0x03D660_38:
- D 0 - - - 0x03D660 0F:1650: 00        .byte $00   ; 
- D 0 - - - 0x03D661 0F:1651: 20 00     .dbyt $2000

- D 0 - - - 0x03D663 0F:1653: 81        .byte con_80 + $01, $A4   ; 
- D 0 - - - 0x03D665 0F:1655: 00        .byte $00   ; 

- D 0 - - - 0x03D666 0F:1656: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D667 0F:1657: 01        .byte $01, $02, $03, $04, $05, $06, $07, $08   ; 

- D 0 - - - 0x03D66F 0F:165F: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D670 0F:1660: 00        .byte $00   ; 

- D 0 - - - 0x03D671 0F:1661: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D672 0F:1662: 11        .byte $11, $12, $13, $14, $15, $16, $17, $18   ; 

- D 0 - - - 0x03D67A 0F:166A: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D67B 0F:166B: 00        .byte $00   ; 

- D 0 - - - 0x03D67C 0F:166C: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D67D 0F:166D: 21        .byte $21, $22, $23, $24, $25, $26, $27, $37   ; 

- D 0 - - - 0x03D685 0F:1675: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D686 0F:1676: 00        .byte $00   ; 

- D 0 - - - 0x03D687 0F:1677: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D688 0F:1678: 31        .byte $31, $32, $33, $34, $35, $36   ; 

- D 0 - - - 0x03D68E 0F:167E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D68F 0F:167F: 37        .byte $37   ; 

- D 0 - - - 0x03D690 0F:1680: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D691 0F:1681: 00        .byte $00   ; 

- D 0 - - - 0x03D692 0F:1682: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D693 0F:1683: 41        .byte $41, $42, $43, $44, $45, $46   ; 

- D 0 - - - 0x03D699 0F:1689: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D69A 0F:168A: 37        .byte $37   ; 

- D 0 - - - 0x03D69B 0F:168B: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D69C 0F:168C: 00        .byte $00   ; 

- D 0 - - - 0x03D69D 0F:168D: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D69E 0F:168E: 51        .byte $51, $52, $53, $54, $55, $56   ; 

- D 0 - - - 0x03D6A4 0F:1694: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6A5 0F:1695: 37        .byte $37   ; 

- D 0 - - - 0x03D6A6 0F:1696: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6A7 0F:1697: 00        .byte $00   ; 

- D 0 - - - 0x03D6A8 0F:1698: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D6A9 0F:1699: 09        .byte $09, $0A, $0B, $0C, $0D, $0E   ; 

- D 0 - - - 0x03D6AF 0F:169F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6B0 0F:16A0: 37        .byte $37   ; 

- D 0 - - - 0x03D6B1 0F:16A1: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6B2 0F:16A2: 00        .byte $00   ; 

- D 0 - - - 0x03D6B3 0F:16A3: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D6B4 0F:16A4: 19        .byte $19, $1A, $1B, $1C   ; 

- D 0 - - - 0x03D6B8 0F:16A8: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D6B9 0F:16A9: 37        .byte $37   ; 

- D 0 - - - 0x03D6BA 0F:16AA: 81        .byte con_80 + $01, $A7   ; 
- D 0 - - - 0x03D6BC 0F:16AC: 00        .byte $00   ; 

- D 0 - - - 0x03D6BD 0F:16AD: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D6BE 0F:16AE: 80        .byte $80   ; 

- D 0 - - - 0x03D6BF 0F:16AF: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D6C0 0F:16B0: 62        .byte $62, $63, $64, $65, $71   ; 

- D 0 - - - 0x03D6C5 0F:16B5: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6C6 0F:16B6: 00        .byte $00   ; 

- D 0 - - - 0x03D6C7 0F:16B7: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D6C8 0F:16B8: 80        .byte $80   ; 

- D 0 - - - 0x03D6C9 0F:16B9: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D6CA 0F:16BA: 72        .byte $72, $73, $74, $75, $66   ; 

- D 0 - - - 0x03D6CF 0F:16BF: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6D0 0F:16C0: 00        .byte $00   ; 

- D 0 - - - 0x03D6D1 0F:16C1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6D2 0F:16C2: 80        .byte $80   ; 

- D 0 - - - 0x03D6D3 0F:16C3: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D6D4 0F:16C4: 81        .byte $81, $82, $83, $84, $85, $76   ; 

- D 0 - - - 0x03D6DA 0F:16CA: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6DB 0F:16CB: 00        .byte $00   ; 

- D 0 - - - 0x03D6DC 0F:16CC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6DD 0F:16CD: 80        .byte $80   ; 

- D 0 - - - 0x03D6DE 0F:16CE: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D6DF 0F:16CF: 91        .byte $91, $92, $93, $94, $95, $86   ; 

- D 0 - - - 0x03D6E5 0F:16D5: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6E6 0F:16D6: 00        .byte $00   ; 

- D 0 - - - 0x03D6E7 0F:16D7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6E8 0F:16D8: 80        .byte $80   ; 

- D 0 - - - 0x03D6E9 0F:16D9: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D6EA 0F:16DA: A1        .byte $A1, $A2, $A3, $A4, $A5, $96   ; 

- D 0 - - - 0x03D6F0 0F:16E0: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6F1 0F:16E1: 00        .byte $00   ; 

- D 0 - - - 0x03D6F2 0F:16E2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6F3 0F:16E3: 80        .byte $80   ; 

- D 0 - - - 0x03D6F4 0F:16E4: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D6F5 0F:16E5: B1        .byte $B1, $B2, $B3, $B4, $B5, $A6   ; 

- D 0 - - - 0x03D6FB 0F:16EB: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D6FC 0F:16EC: 00        .byte $00   ; 

- D 0 - - - 0x03D6FD 0F:16ED: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D6FE 0F:16EE: 80        .byte $80   ; 

- D 0 - - - 0x03D6FF 0F:16EF: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D700 0F:16F0: C1        .byte $C1, $C2, $C3, $C4, $C5, $B6   ; 

- D 0 - - - 0x03D706 0F:16F6: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D707 0F:16F7: 00        .byte $00   ; 

- D 0 - - - 0x03D708 0F:16F8: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D709 0F:16F9: 80        .byte $80   ; 

- D 0 - - - 0x03D70A 0F:16FA: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D70B 0F:16FB: 60        .byte $60, $61, $70, $C6   ; 

- D 0 - - - 0x03D70F 0F:16FF: 81        .byte con_80 + $01, $AD   ; 
- D 0 - - - 0x03D711 0F:1701: 00        .byte $00   ; 

- D 0 - - - 0x03D712 0F:1702: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D713 0F:1703: 04        .byte $04, $15, $CF   ; 

- D 0 - - - 0x03D716 0F:1706: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D717 0F:1707: 55        .byte $55   ; 

- D 0 - - - 0x03D718 0F:1708: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D719 0F:1709: 51        .byte $51, $00, $21, $88   ; 

- D 0 - - - 0x03D71D 0F:170D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D71E 0F:170E: 55        .byte $55   ; 

- D 0 - - - 0x03D71F 0F:170F: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03D720 0F:1710: 15        .byte $15, $00, $02, $0A   ; 

- D 0 - - - 0x03D724 0F:1714: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D725 0F:1715: 55        .byte $55   ; 

- D 0 - - - 0x03D726 0F:1716: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D727 0F:1717: 11        .byte $11, $44   ; 

- D 0 - - - 0x03D729 0F:1719: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D72A 0F:171A: 55        .byte $55   ; 

- D 0 - - - 0x03D72B 0F:171B: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D72C 0F:171C: 11        .byte $11, $00, $FF, $00, $44   ; 

- D 0 - - - 0x03D731 0F:1721: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D732 0F:1722: 55        .byte $55   ; 

- D 0 - - - 0x03D733 0F:1723: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D734 0F:1724: 11        .byte $11, $00, $FF, $00, $44   ; 

- D 0 - - - 0x03D739 0F:1729: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D73A 0F:172A: 55        .byte $55   ; 

- D 0 - - - 0x03D73B 0F:172B: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03D73C 0F:172C: 11        .byte $11, $00, $0F   ; 

- D 0 - - - 0x03D73F 0F:172F: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03D740 0F:1730: 00        .byte $00   ; 

- D 0 - - - 0x03D741 0F:1731: 00        .byte $00, $00   ; end token



_off031_0x03D743_31:
- D 0 - - - 0x03D743 0F:1733: 00        .byte $00   ; 
- D 0 - - - 0x03D744 0F:1734: 20 00     .dbyt $2000

- D 0 - - - 0x03D746 0F:1736: 81        .byte con_80 + $01, $C6   ; 
- D 0 - - - 0x03D748 0F:1738: 00        .byte $00   ; 

- D 0 - - - 0x03D749 0F:1739: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D74A 0F:173A: 0A        .byte $0A   ; 

- D 0 - - - 0x03D74B 0F:173B: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D74C 0F:173C: 01        .byte $01, $02, $03, $04, $05, $06, $07, $08, $09   ; 

- D 0 - - - 0x03D755 0F:1745: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D756 0F:1746: 0A        .byte $0A   ; 

- D 0 - - - 0x03D757 0F:1747: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D758 0F:1748: 00        .byte $00   ; 

- D 0 - - - 0x03D759 0F:1749: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D75A 0F:174A: 0A        .byte $0A   ; 

- D 0 - - - 0x03D75B 0F:174B: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D75C 0F:174C: 10        .byte $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1A   ; 

- D 0 - - - 0x03D767 0F:1757: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D768 0F:1758: 0A        .byte $0A   ; 

- D 0 - - - 0x03D769 0F:1759: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D76A 0F:175A: 00        .byte $00   ; 

- D 0 - - - 0x03D76B 0F:175B: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D76C 0F:175C: 0A        .byte $0A   ; 

- D 0 - - - 0x03D76D 0F:175D: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D76E 0F:175E: 20        .byte $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2A   ; 

- D 0 - - - 0x03D779 0F:1769: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D77A 0F:176A: 0A        .byte $0A   ; 

- D 0 - - - 0x03D77B 0F:176B: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D77C 0F:176C: 00        .byte $00   ; 

- D 0 - - - 0x03D77D 0F:176D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D77E 0F:176E: 0A        .byte $0A   ; 

- D 0 - - - 0x03D77F 0F:176F: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D780 0F:1770: 30        .byte $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3A   ; 

- D 0 - - - 0x03D78B 0F:177B: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D78C 0F:177C: 0A        .byte $0A   ; 

- D 0 - - - 0x03D78D 0F:177D: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D78E 0F:177E: 00        .byte $00   ; 

- D 0 - - - 0x03D78F 0F:177F: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D790 0F:1780: 0A        .byte $0A   ; 

- D 0 - - - 0x03D791 0F:1781: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D792 0F:1782: 40        .byte $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4A   ; 

- D 0 - - - 0x03D79D 0F:178D: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D79E 0F:178E: 0A        .byte $0A   ; 

- D 0 - - - 0x03D79F 0F:178F: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03D7A0 0F:1790: 00        .byte $00   ; 

- D 0 - - - 0x03D7A1 0F:1791: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D7A2 0F:1792: 0A        .byte $0A   ; 

- D 0 - - - 0x03D7A3 0F:1793: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03D7A4 0F:1794: 50        .byte $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5A   ; 

- D 0 - - - 0x03D7AF 0F:179F: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D7B0 0F:17A0: 0A        .byte $0A   ; 

- D 0 - - - 0x03D7B1 0F:17A1: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03D7B2 0F:17A2: 00        .byte $00   ; 

- D 0 - - - 0x03D7B3 0F:17A3: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D7B4 0F:17A4: 5C        .byte $5C, $0B, $0C, $0D, $0E   ; 

- D 0 - - - 0x03D7B9 0F:17A9: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D7BA 0F:17AA: 00        .byte $00   ; 

- D 0 - - - 0x03D7BB 0F:17AB: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D7BC 0F:17AC: 5B        .byte $5B, $6C, $1B, $1C, $1D, $1E, $1F   ; 

- D 0 - - - 0x03D7C3 0F:17B3: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D7C4 0F:17B4: 00        .byte $00   ; 

- D 0 - - - 0x03D7C5 0F:17B5: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D7C6 0F:17B6: 6B        .byte $6B, $7C, $2B, $2C, $2D, $2E, $2F   ; 

- D 0 - - - 0x03D7CD 0F:17BD: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D7CE 0F:17BE: 00        .byte $00   ; 

- D 0 - - - 0x03D7CF 0F:17BF: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D7D0 0F:17C0: 7B        .byte $7B, $5E, $3B, $3C, $3D, $3E, $3F   ; 

- D 0 - - - 0x03D7D7 0F:17C7: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03D7D8 0F:17C8: 00        .byte $00   ; 

- D 0 - - - 0x03D7D9 0F:17C9: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D7DA 0F:17CA: 5D        .byte $5D, $6E, $4B, $4C, $4D, $4E, $4F   ; 

- D 0 - - - 0x03D7E1 0F:17D1: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03D7E2 0F:17D2: 00        .byte $00   ; 

- D 0 - - - 0x03D7E3 0F:17D3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D7E4 0F:17D4: BF        .byte $BF   ; 

- D 0 - - - 0x03D7E5 0F:17D5: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03D7E6 0F:17D6: 00        .byte $00   ; 

- D 0 - - - 0x03D7E7 0F:17D7: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D7E8 0F:17D8: BF        .byte $BF   ; 

- D 0 - - - 0x03D7E9 0F:17D9: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D7EA 0F:17DA: 00        .byte $00   ; 

- D 0 - - - 0x03D7EB 0F:17DB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D7EC 0F:17DC: C2        .byte $C2   ; 

- D 0 - - - 0x03D7ED 0F:17DD: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D7EE 0F:17DE: 00        .byte $00   ; 

- D 0 - - - 0x03D7EF 0F:17DF: 5D        .byte con_40 + $1D   ; 
- D 0 - - - 0x03D7F0 0F:17E0: B0        .byte $B0, $00, $D4, $F9, $E8, $00, $D8, $FD, $ED, $D2, $E3, $00, $D4, $EE, $D3, $F6   ; 
- D 0 - - - 0x03D800 0F:17F0: E8        .byte $E8, $00, $D8, $FD, $ED, $D2, $E3, $E8, $00, $D0, $D1, $DF, $E2   ; 

- D 0 - - - 0x03D80D 0F:17FD: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03D80E 0F:17FE: 00        .byte $00   ; 

- D 0 - - - 0x03D80F 0F:17FF: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D810 0F:1800: C2        .byte $C2   ; 

- D 0 - - - 0x03D811 0F:1801: 14        .byte con_00 + $14   ; 
- D 0 - - - 0x03D812 0F:1802: 00        .byte $00   ; 

- D 0 - - - 0x03D813 0F:1803: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03D814 0F:1804: D7        .byte $D7, $F7, $D5, $D3, $DA, $F9, $E2, $D6, $DF, $00, $E4, $D5, $D1   ; 

- D 0 - - - 0x03D821 0F:1811: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D822 0F:1812: DF        .byte $DF   ; 

- D 0 - - - 0x03D823 0F:1813: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03D824 0F:1814: D5        .byte $D5, $D1, $E5, $00, $D8, $FE, $E0, $FF, $D7, $FC, $E1, $D8, $F8   ; 

- D 0 - - - 0x03D831 0F:1821: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D832 0F:1822: 00        .byte $00   ; 

- D 0 - - - 0x03D833 0F:1823: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D834 0F:1824: C2        .byte $C2   ; 

- D 0 - - - 0x03D835 0F:1825: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D836 0F:1826: 00        .byte $00   ; 

- D 0 - - - 0x03D837 0F:1827: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D838 0F:1828: C2        .byte $C2   ; 

- D 0 - - - 0x03D839 0F:1829: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D83A 0F:182A: 00        .byte $00   ; 

- D 0 - - - 0x03D83B 0F:182B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D83C 0F:182C: C2        .byte $C2   ; 

- D 0 - - - 0x03D83D 0F:182D: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D83E 0F:182E: 00        .byte $00   ; 

- D 0 - - - 0x03D83F 0F:182F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D840 0F:1830: C2        .byte $C2   ; 

- D 0 - - - 0x03D841 0F:1831: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D842 0F:1832: 00        .byte $00   ; 

- D 0 - - - 0x03D843 0F:1833: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D844 0F:1834: C2        .byte $C2   ; 

- D 0 - - - 0x03D845 0F:1835: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D846 0F:1836: 00        .byte $00   ; 

- D 0 - - - 0x03D847 0F:1837: 59        .byte con_40 + $19   ; 
- D 0 - - - 0x03D848 0F:1838: E3        .byte $E3, $D6, $D5, $D6, $DF, $E8, $DF, $C3, $00, $D4, $F9, $E8, $00, $D8, $FD, $D3   ; 
- D 0 - - - 0x03D858 0F:1848: D1        .byte $D1, $FC, $F3, $EB, $F6, $E4, $D8, $F9, $E9   ; 

- D 0 - - - 0x03D861 0F:1851: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03D862 0F:1852: 00        .byte $00   ; 

- D 0 - - - 0x03D863 0F:1853: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D864 0F:1854: C2        .byte $C2   ; 

- D 0 - - - 0x03D865 0F:1855: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03D866 0F:1856: 00        .byte $00   ; 

- D 0 - - - 0x03D867 0F:1857: 52        .byte con_40 + $12   ; 
- D 0 - - - 0x03D868 0F:1858: D4        .byte $D4, $EE, $D3, $F6, $E5, $00, $D5, $E0, $F1, $E9, $E4, $D1, $DE, $C3, $00, $DA   ; 
- D 0 - - - 0x03D878 0F:1868: D0        .byte $D0, $00   ; 

- D 0 - - - 0x03D87A 0F:186A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D87B 0F:186B: D5        .byte $D5   ; 

- D 0 - - - 0x03D87C 0F:186C: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D87D 0F:186D: FE        .byte $FE, $E2, $D9, $D1, $CD, $B1   ; 

- D 0 - - - 0x03D883 0F:1873: 81        .byte con_80 + $01, $AD   ; 
- D 0 - - - 0x03D885 0F:1875: 00        .byte $00   ; 

- D 0 - - - 0x03D886 0F:1876: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D887 0F:1877: C0        .byte $C0   ; 

- D 0 - - - 0x03D888 0F:1878: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D889 0F:1879: F0        .byte $F0   ; 

- D 0 - - - 0x03D88A 0F:187A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D88B 0F:187B: 30        .byte $30   ; 

- D 0 - - - 0x03D88C 0F:187C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D88D 0F:187D: 00        .byte $00   ; 

- D 0 - - - 0x03D88E 0F:187E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D88F 0F:187F: CC        .byte $CC   ; 

- D 0 - - - 0x03D890 0F:1880: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D891 0F:1881: FF        .byte $FF   ; 

- D 0 - - - 0x03D892 0F:1882: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D893 0F:1883: 33        .byte $33   ; 

- D 0 - - - 0x03D894 0F:1884: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D895 0F:1885: 00        .byte $00   ; 

- D 0 - - - 0x03D896 0F:1886: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D897 0F:1887: 8C        .byte $8C, $FC   ; 

- D 0 - - - 0x03D899 0F:1889: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D89A 0F:188A: 00        .byte $00   ; 

- D 0 - - - 0x03D89B 0F:188B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D89C 0F:188C: A0        .byte $A0   ; 

- D 0 - - - 0x03D89D 0F:188D: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03D89E 0F:188E: AE        .byte $AE, $A8, $AE, $A2, $A0, $22, $88   ; 

- D 0 - - - 0x03D8A5 0F:1895: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D8A6 0F:1896: AA        .byte $AA   ; 

- D 0 - - - 0x03D8A7 0F:1897: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D8A8 0F:1898: 46        .byte $46, $08   ; 

- D 0 - - - 0x03D8AA 0F:189A: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D8AB 0F:189B: 0A        .byte $0A   ; 

- D 0 - - - 0x03D8AC 0F:189C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D8AD 0F:189D: 04        .byte $04   ; 

- D 0 - - - 0x03D8AE 0F:189E: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03D8AF 0F:189F: 00        .byte $00   ; 

- D 0 - - - 0x03D8B0 0F:18A0: 00        .byte $00, $00   ; end token



_off031_0x03D8B2_36:
- D 0 - - - 0x03D8B2 0F:18A2: 00        .byte $00   ; 
- D 0 - - - 0x03D8B3 0F:18A3: 20 00     .dbyt $2000

- D 0 - - - 0x03D8B5 0F:18A5: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D8B7 0F:18A7: 00        .byte $00   ; 

- D 0 - - - 0x03D8B8 0F:18A8: 81        .byte con_80 + $01, $4D   ; 
- D 0 - - - 0x03D8BA 0F:18AA: 00        .byte $00   ; 

- D 0 - - - 0x03D8BB 0F:18AB: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03D8BC 0F:18AC: 59        .byte $59   ; 

- D 0 - - - 0x03D8BD 0F:18AD: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D8BE 0F:18AE: 5C        .byte $5C, $5D   ; 

- D 0 - - - 0x03D8C0 0F:18B0: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D8C1 0F:18B1: 00        .byte $00   ; 

- D 0 - - - 0x03D8C2 0F:18B2: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D8C3 0F:18B3: 59        .byte $59   ; 

- D 0 - - - 0x03D8C4 0F:18B4: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D8C5 0F:18B5: 69        .byte $69, $6A, $6B, $6C, $6D   ; 

- D 0 - - - 0x03D8CA 0F:18BA: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D8CB 0F:18BB: 00        .byte $00   ; 

- D 0 - - - 0x03D8CC 0F:18BC: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D8CD 0F:18BD: 59        .byte $59, $40, $78, $79, $7A, $7B, $7C, $7D   ; 

- D 0 - - - 0x03D8D5 0F:18C5: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D8D6 0F:18C6: 00        .byte $00   ; 

- D 0 - - - 0x03D8D7 0F:18C7: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D8D8 0F:18C8: 50        .byte $50, $51, $52, $53, $54, $55, $56, $57   ; 

- D 0 - - - 0x03D8E0 0F:18D0: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D8E1 0F:18D1: 00        .byte $00   ; 

- D 0 - - - 0x03D8E2 0F:18D2: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D8E3 0F:18D3: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67   ; 

- D 0 - - - 0x03D8EB 0F:18DB: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03D8EC 0F:18DC: 00        .byte $00   ; 

- D 0 - - - 0x03D8ED 0F:18DD: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03D8EE 0F:18DE: 70        .byte $70, $71, $72, $73, $74, $75, $76, $77   ; 

- D 0 - - - 0x03D8F6 0F:18E6: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D8F8 0F:18E8: 00        .byte $00   ; 

- D 0 - - - 0x03D8F9 0F:18E9: 81        .byte con_80 + $01, $D6   ; 
- D 0 - - - 0x03D8FB 0F:18EB: 00        .byte $00   ; 

- D 0 - - - 0x03D8FC 0F:18EC: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D8FD 0F:18ED: 50        .byte $50   ; 

- D 0 - - - 0x03D8FE 0F:18EE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D8FF 0F:18EF: 10        .byte $10   ; 

- D 0 - - - 0x03D900 0F:18F0: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03D901 0F:18F1: 00        .byte $00   ; 

- D 0 - - - 0x03D902 0F:18F2: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03D903 0F:18F3: C0        .byte $C0, $FC   ; 

- D 0 - - - 0x03D905 0F:18F5: 23        .byte con_00 + $23   ; 
- D 0 - - - 0x03D906 0F:18F6: 00        .byte $00   ; 

- D 0 - - - 0x03D907 0F:18F7: 00        .byte $00, $00   ; end token


; bzk garbage, unfinished screen data
_off031_0x03D909_37:
- - - - - - 0x03D909 0F:18F9: 00        .byte $00   ; 
- - - - - - 0x03D90A 0F:18FA: 20 00     .dbyt $2000

- - - - - - 0x03D90C 0F:18FC: 81        .byte con_80 + $01, $FF   ; 
- - - - - - 0x03D90E 0F:18FE: 00        .byte $00   ; 

- - - - - - 0x03D90F 0F:18FF: 81        .byte con_80 + $01, $4D   ; 
- - - - - - 0x03D911 0F:1901: 00        .byte $00   ; 

- - - - - - 0x03D912 0F:1902: 06        .byte con_00 + $06   ; 
- - - - - - 0x03D913 0F:1903: 59        .byte $59   ; 

- - - - - - 0x03D914 0F:1904: 42        .byte con_40 + $02   ; 
- - - - - - 0x03D915 0F:1905: 5C        .byte $5C, $5D   ; 

- - - - - - 0x03D917 0F:1907: 18        .byte con_00 + $18   ; 
- - - - - - 0x03D918 0F:1908: 00        .byte $00   ; 

- - - - - - 0x03D919 0F:1909: 03        .byte con_00 + $03   ; 
- - - - - - 0x03D91A 0F:190A: 59        .byte $59   ; 

- - - - - - 0x03D91B 0F:190B: 45        .byte con_40 + $05   ; 
- - - - - - 0x03D91C 0F:190C: 69        .byte $69, $6A, $6E, $6C, $6D   ; 

- - - - - - 0x03D921 0F:1911: 18        .byte con_00 + $18   ; 
- - - - - - 0x03D922 0F:1912: 00        .byte $00   ; 

- - - - - - 0x03D923 0F:1913: 48        .byte con_40 + $08   ; 
- - - - - - 0x03D924 0F:1914: 59        .byte $59, $40, $78, $79, $7A, $7E, $7C, $7D   ; 

- - - - - - 0x03D92C 0F:191C: 18        .byte con_00 + $18   ; 
- - - - - - 0x03D92D 0F:191D: 00        .byte $00   ; 

- - - - - - 0x03D92E 0F:191E: 48        .byte con_40 + $08   ; 
- - - - - - 0x03D92F 0F:191F: 50        .byte $50, $51, $52, $53, $54, $55, $56, $57   ; 

- - - - - - 0x03D937 0F:1927: 18        .byte con_00 + $18   ; 
- - - - - - 0x03D938 0F:1928: 00        .byte $00, $48, $60, $61, $62, $63, $64, $65   ; 

- - - - - - 0x03D940 0F:1930: 66        .byte con_40 + $26   ; 
- - - - - - 0x03D941 0F:1931: 67        .byte $67, $18, $00, $48, $70, $71, $72, $73, $74, $75, $76, $77, $81, $FF, $00, $81   ; 
- - - - - - 0x03D951 0F:1941: E8        .byte $E8, $00, $42, $C0, $FC, $23, $00, $00, $00   ; 



_off031_0x03D95A_3A:
- D 0 - - - 0x03D95A 0F:194A: 00        .byte $00   ; 
- D 0 - - - 0x03D95B 0F:194B: 20 00     .dbyt $2000

- D 0 - - - 0x03D95D 0F:194D: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D95F 0F:194F: 00        .byte $00   ; 

- D 0 - - - 0x03D960 0F:1950: 81        .byte con_80 + $01, $CD   ; 
- D 0 - - - 0x03D962 0F:1952: 00        .byte $00   ; 

- D 0 - - - 0x03D963 0F:1953: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D964 0F:1954: 10        .byte $10, $30, $50, $00, $A0, $C0, $38, $57, $5F   ; 

- D 0 - - - 0x03D96D 0F:195D: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03D96E 0F:195E: 00        .byte $00   ; 

- D 0 - - - 0x03D96F 0F:195F: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03D970 0F:1960: 20        .byte $20, $40, $90, $5E, $B0, $28, $47, $4F, $6F   ; 

- D 0 - - - 0x03D979 0F:1969: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D97B 0F:196B: 00        .byte $00   ; 

- D 0 - - - 0x03D97C 0F:196C: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D97E 0F:196E: 00        .byte $00   ; 

- D 0 - - - 0x03D97F 0F:196F: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03D980 0F:1970: 00        .byte $00   ; 

- D 0 - - - 0x03D981 0F:1971: 00        .byte $00, $00   ; end token



_off031_0x03D983_32:
_off031_0x03D983_33:
- D 0 - - - 0x03D983 0F:1973: 00        .byte $00   ; 
- D 0 - - - 0x03D984 0F:1974: 20 00     .dbyt $2000

- D 0 - - - 0x03D986 0F:1976: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03D988 0F:1978: 00        .byte $00   ; 

- D 0 - - - 0x03D989 0F:1979: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D98A 0F:197A: 00        .byte $00   ; 

- D 0 - - - 0x03D98B 0F:197B: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D98C 0F:197C: 01        .byte $01, $02, $03, $04, $05, $0F   ; 

- D 0 - - - 0x03D992 0F:1982: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D993 0F:1983: 00        .byte $00   ; 

- D 0 - - - 0x03D994 0F:1984: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D995 0F:1985: C2        .byte $C2   ; 

- D 0 - - - 0x03D996 0F:1986: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03D997 0F:1987: 00        .byte $00   ; 

- D 0 - - - 0x03D998 0F:1988: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D999 0F:1989: C2        .byte $C2   ; 

- D 0 - - - 0x03D99A 0F:198A: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D99B 0F:198B: 00        .byte $00   ; 

- D 0 - - - 0x03D99C 0F:198C: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03D99D 0F:198D: 11        .byte $11, $12, $13, $14, $15, $0F, $00, $B0, $00, $E1, $D1, $E5, $E4, $D5, $D1, $00   ; 

- D 0 - - - 0x03D9AD 0F:199D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D9AE 0F:199E: DF        .byte $DF   ; 

- D 0 - - - 0x03D9AF 0F:199F: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03D9B0 0F:19A0: D5        .byte $D5, $D1, $F2, $00, $D4, $FB, $F8, $E3, $D6, $D5   ; 

- D 0 - - - 0x03D9BA 0F:19AA: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D9BB 0F:19AB: 00        .byte $00   ; 

- D 0 - - - 0x03D9BC 0F:19AC: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D9BD 0F:19AD: 21        .byte $21, $22, $23, $24, $25, $0F   ; 

- D 0 - - - 0x03D9C3 0F:19B3: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D9C4 0F:19B4: 00        .byte $00   ; 

- D 0 - - - 0x03D9C5 0F:19B5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D9C6 0F:19B6: C2        .byte $C2   ; 

- D 0 - - - 0x03D9C7 0F:19B7: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03D9C8 0F:19B8: 00        .byte $00   ; 

- D 0 - - - 0x03D9C9 0F:19B9: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D9CA 0F:19BA: C2        .byte $C2   ; 

- D 0 - - - 0x03D9CB 0F:19BB: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D9CC 0F:19BC: 00        .byte $00   ; 

- D 0 - - - 0x03D9CD 0F:19BD: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D9CE 0F:19BE: C2        .byte $C2   ; 

- D 0 - - - 0x03D9CF 0F:19BF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D9D0 0F:19C0: 00        .byte $00   ; 

- D 0 - - - 0x03D9D1 0F:19C1: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03D9D2 0F:19C2: BF        .byte $BF   ; 

- D 0 - - - 0x03D9D3 0F:19C3: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03D9D4 0F:19C4: 00        .byte $00   ; 

- D 0 - - - 0x03D9D5 0F:19C5: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D9D6 0F:19C6: 31        .byte $31, $32, $33, $34, $35, $36   ; 

- D 0 - - - 0x03D9DC 0F:19CC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03D9DD 0F:19CD: 00        .byte $00   ; 

- D 0 - - - 0x03D9DE 0F:19CE: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03D9DF 0F:19CF: D6        .byte $D6, $DF, $E8, $DF, $E4   ; 

- D 0 - - - 0x03D9E4 0F:19D4: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03D9E5 0F:19D5: CF        .byte $CF   ; 

- D 0 - - - 0x03D9E6 0F:19D6: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03D9E7 0F:19D7: 00        .byte $00, $DA, $D1, $D9, $E5, $00, $FB, $D5, $D8, $FD, $ED, $D2   ; 

- D 0 - - - 0x03D9F3 0F:19E3: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03D9F4 0F:19E4: 00        .byte $00   ; 

- D 0 - - - 0x03D9F5 0F:19E5: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D9F6 0F:19E6: 41        .byte $41, $42, $43, $44, $45, $46   ; 

- D 0 - - - 0x03D9FC 0F:19EC: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03D9FD 0F:19ED: 00        .byte $00   ; 

- D 0 - - - 0x03D9FE 0F:19EE: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03D9FF 0F:19EF: 51        .byte $51, $52, $53, $54, $55, $56   ; 

- D 0 - - - 0x03DA05 0F:19F5: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DA06 0F:19F6: 00        .byte $00   ; 

- D 0 - - - 0x03DA07 0F:19F7: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03DA08 0F:19F8: E5        .byte $E5, $E8, $D9, $F8, $00, $EB, $F8, $D1, $00   ; 

- D 0 - - - 0x03DA11 0F:1A01: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DA12 0F:1A02: D1        .byte $D1   ; 

- D 0 - - - 0x03DA13 0F:1A03: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03DA14 0F:1A04: E1        .byte $E1, $DF, $D3, $FC, $00, $D4, $DB, $D3, $E2   ; 

- D 0 - - - 0x03DA1D 0F:1A0D: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03DA1E 0F:1A0E: 00        .byte $00   ; 

- D 0 - - - 0x03DA1F 0F:1A0F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DA20 0F:1A10: C2        .byte $C2   ; 

- D 0 - - - 0x03DA21 0F:1A11: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DA22 0F:1A12: 00        .byte $00   ; 

- D 0 - - - 0x03DA23 0F:1A13: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DA24 0F:1A14: C2        .byte $C2   ; 

- D 0 - - - 0x03DA25 0F:1A15: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DA26 0F:1A16: 00        .byte $00   ; 

- D 0 - - - 0x03DA27 0F:1A17: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DA28 0F:1A18: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03DA2B 0F:1A1B: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03DA2C 0F:1A1C: 00        .byte $00   ; 

- D 0 - - - 0x03DA2D 0F:1A1D: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DA2E 0F:1A1E: F3        .byte $F3, $FA, $D2   ; 

- D 0 - - - 0x03DA31 0F:1A21: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DA32 0F:1A22: CF        .byte $CF   ; 

- D 0 - - - 0x03DA33 0F:1A23: 51        .byte con_40 + $11   ; 
- D 0 - - - 0x03DA34 0F:1A24: 00        .byte $00, $D8, $FD, $D3, $D1, $D5, $00, $EA, $FA, $D5, $F9, $E9, $00, $D0, $D7, $EE   ; 
- D 0 - - - 0x03DA44 0F:1A34: E9        .byte $E9   ; 

- D 0 - - - 0x03DA45 0F:1A35: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DA46 0F:1A36: 00        .byte $00   ; 

- D 0 - - - 0x03DA47 0F:1A37: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DA48 0F:1A38: C2        .byte $C2   ; 

- D 0 - - - 0x03DA49 0F:1A39: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03DA4A 0F:1A3A: 00        .byte $00   ; 

- D 0 - - - 0x03DA4B 0F:1A3B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DA4C 0F:1A3C: C2        .byte $C2   ; 

- D 0 - - - 0x03DA4D 0F:1A3D: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03DA4E 0F:1A3E: 00        .byte $00   ; 

- D 0 - - - 0x03DA4F 0F:1A3F: 5C        .byte con_40 + $1C   ; 
- D 0 - - - 0x03DA50 0F:1A40: F5        .byte $F5, $EF, $D5, $D3, $F7, $00, $C5, $EA, $D6, $E8, $00, $F7, $C0, $D2, $D5, $00   ; 
- D 0 - - - 0x03DA60 0F:1A50: E2        .byte $E2, $FD, $FC, $D5, $D8, $F8, $E3, $D6, $00, $E2, $FD, $DB   ; 

- D 0 - - - 0x03DA6C 0F:1A5C: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03DA6D 0F:1A5D: 00        .byte $00   ; 

- D 0 - - - 0x03DA6E 0F:1A5E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DA6F 0F:1A5F: C2        .byte $C2   ; 

- D 0 - - - 0x03DA70 0F:1A60: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03DA71 0F:1A61: 00        .byte $00   ; 

- D 0 - - - 0x03DA72 0F:1A62: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DA73 0F:1A63: E9        .byte $E9, $EE, $D1, $D4, $F7, $F8   ; 

- D 0 - - - 0x03DA79 0F:1A69: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DA7A 0F:1A6A: CF        .byte $CF   ; 

- D 0 - - - 0x03DA7B 0F:1A6B: 53        .byte con_40 + $13   ; 
- D 0 - - - 0x03DA7C 0F:1A6C: 00        .byte $00, $ED, $D2, $F7, $C1, $D7, $E3, $D1, $D2, $00, $D0, $D7, $EE, $E9, $00, $FB   ; 
- D 0 - - - 0x03DA8C 0F:1A7C: DF        .byte $DF, $DB, $E3   ; 

- D 0 - - - 0x03DA8F 0F:1A7F: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03DA90 0F:1A80: 00        .byte $00   ; 

- D 0 - - - 0x03DA91 0F:1A81: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DA92 0F:1A82: C2        .byte $C2   ; 

- D 0 - - - 0x03DA93 0F:1A83: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DA94 0F:1A84: 00        .byte $00   ; 

- D 0 - - - 0x03DA95 0F:1A85: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DA96 0F:1A86: C2        .byte $C2   ; 

- D 0 - - - 0x03DA97 0F:1A87: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DA98 0F:1A88: 00        .byte $00   ; 

- D 0 - - - 0x03DA99 0F:1A89: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DA9A 0F:1A8A: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03DA9D 0F:1A8D: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03DA9E 0F:1A8E: 00        .byte $00   ; 

- D 0 - - - 0x03DA9F 0F:1A8F: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03DAA0 0F:1A90: E3        .byte $E3, $F2, $E5, $00, $D6, $D3, $F8   ; 

- D 0 - - - 0x03DAA7 0F:1A97: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DAA8 0F:1A98: CF        .byte $CF   ; 

- D 0 - - - 0x03DAA9 0F:1A99: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03DAAA 0F:1A9A: 00        .byte $00, $DA, $F6, $E9, $DF, $00, $8F, $9B, $A8, $CF, $93, $A6, $89, $AD   ; 

- D 0 - - - 0x03DAB8 0F:1AA8: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DAB9 0F:1AA9: CF        .byte $CF   ; 

- D 0 - - - 0x03DABA 0F:1AAA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DABB 0F:1AAB: B1        .byte $B1   ; 

- D 0 - - - 0x03DABC 0F:1AAC: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03DABE 0F:1AAE: 00        .byte $00   ; 

- D 0 - - - 0x03DABF 0F:1AAF: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03DAC0 0F:1AB0: 00        .byte $00   ; 

- D 0 - - - 0x03DAC1 0F:1AB1: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DAC2 0F:1AB2: 40        .byte $40, $CC, $00   ; 

- D 0 - - - 0x03DAC5 0F:1AB5: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DAC6 0F:1AB6: 55        .byte $55   ; 

- D 0 - - - 0x03DAC7 0F:1AB7: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DAC8 0F:1AB8: 5C        .byte $5C, $50   ; 

- D 0 - - - 0x03DACA 0F:1ABA: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03DACB 0F:1ABB: 55        .byte $55   ; 

- D 0 - - - 0x03DACC 0F:1ABC: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DACD 0F:1ABD: 11        .byte $11, $44   ; 

- D 0 - - - 0x03DACF 0F:1ABF: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DAD0 0F:1AC0: 55        .byte $55   ; 

- D 0 - - - 0x03DAD1 0F:1AC1: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DAD2 0F:1AC2: 51        .byte $51, $44   ; 

- D 0 - - - 0x03DAD4 0F:1AC4: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DAD5 0F:1AC5: 55        .byte $55   ; 

- D 0 - - - 0x03DAD6 0F:1AC6: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DAD7 0F:1AC7: 11        .byte $11, $44   ; 

- D 0 - - - 0x03DAD9 0F:1AC9: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DADA 0F:1ACA: 55        .byte $55   ; 

- D 0 - - - 0x03DADB 0F:1ACB: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DADC 0F:1ACC: 11        .byte $11, $04   ; 

- D 0 - - - 0x03DADE 0F:1ACE: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DADF 0F:1ACF: 05        .byte $05   ; 

- D 0 - - - 0x03DAE0 0F:1AD0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DAE1 0F:1AD1: 01        .byte $01   ; 

- D 0 - - - 0x03DAE2 0F:1AD2: 00        .byte $00, $00   ; end token



_off031_0x03DAE4_34:
- D 0 - - - 0x03DAE4 0F:1AD4: 00        .byte $00   ; 
- D 0 - - - 0x03DAE5 0F:1AD5: 20 00     .dbyt $2000

- D 0 - - - 0x03DAE7 0F:1AD7: 81        .byte con_80 + $01, $D4   ; 
- D 0 - - - 0x03DAE9 0F:1AD9: 00        .byte $00   ; 

- D 0 - - - 0x03DAEA 0F:1ADA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DAEB 0F:1ADB: 0F        .byte $0F   ; 

- D 0 - - - 0x03DAEC 0F:1ADC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DAED 0F:1ADD: 07        .byte $07   ; 

- D 0 - - - 0x03DAEE 0F:1ADE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DAEF 0F:1ADF: 0F        .byte $0F   ; 

- D 0 - - - 0x03DAF0 0F:1AE0: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DAF1 0F:1AE1: 0A        .byte $0A, $0B, $0C   ; 

- D 0 - - - 0x03DAF4 0F:1AE4: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DAF5 0F:1AE5: 00        .byte $00   ; 

- D 0 - - - 0x03DAF6 0F:1AE6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DAF7 0F:1AE7: 0F        .byte $0F   ; 

- D 0 - - - 0x03DAF8 0F:1AE8: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DAF9 0F:1AE9: 17        .byte $17, $18, $19, $1A, $1B, $1C   ; 

- D 0 - - - 0x03DAFF 0F:1AEF: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03DB00 0F:1AF0: 00        .byte $00   ; 

- D 0 - - - 0x03DB01 0F:1AF1: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DB02 0F:1AF2: B0        .byte $B0, $00   ; 

- D 0 - - - 0x03DB04 0F:1AF4: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03DB05 0F:1AF5: CF        .byte $CF   ; 

- D 0 - - - 0x03DB06 0F:1AF6: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DB07 0F:1AF7: 00        .byte $00, $B1   ; 

- D 0 - - - 0x03DB09 0F:1AF9: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03DB0A 0F:1AFA: 00        .byte $00   ; 

- D 0 - - - 0x03DB0B 0F:1AFB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DB0C 0F:1AFC: 0F        .byte $0F   ; 

- D 0 - - - 0x03DB0D 0F:1AFD: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DB0E 0F:1AFE: 27        .byte $27, $28, $29, $2A, $2B, $2C   ; 

- D 0 - - - 0x03DB14 0F:1B04: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DB15 0F:1B05: 00        .byte $00   ; 

- D 0 - - - 0x03DB16 0F:1B06: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DB17 0F:1B07: 0F        .byte $0F   ; 

- D 0 - - - 0x03DB18 0F:1B08: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DB19 0F:1B09: 37        .byte $37, $38, $39, $3A, $3B, $3C   ; 

- D 0 - - - 0x03DB1F 0F:1B0F: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DB20 0F:1B10: 00        .byte $00   ; 

- D 0 - - - 0x03DB21 0F:1B11: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DB22 0F:1B12: 0F        .byte $0F   ; 

- D 0 - - - 0x03DB23 0F:1B13: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03DB24 0F:1B14: 48        .byte $48, $49, $4A, $4B, $4C   ; 

- D 0 - - - 0x03DB29 0F:1B19: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DB2A 0F:1B1A: 00        .byte $00   ; 

- D 0 - - - 0x03DB2B 0F:1B1B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DB2C 0F:1B1C: 0F        .byte $0F   ; 

- D 0 - - - 0x03DB2D 0F:1B1D: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03DB2E 0F:1B1E: 58        .byte $58, $59, $5A, $5B, $5C   ; 

- D 0 - - - 0x03DB33 0F:1B23: 81        .byte con_80 + $01, $48   ; 
- D 0 - - - 0x03DB35 0F:1B25: 00        .byte $00   ; 

- D 0 - - - 0x03DB36 0F:1B26: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB37 0F:1B27: C2        .byte $C2   ; 

- D 0 - - - 0x03DB38 0F:1B28: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03DB39 0F:1B29: 00        .byte $00   ; 

- D 0 - - - 0x03DB3A 0F:1B2A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB3B 0F:1B2B: C2        .byte $C2   ; 

- D 0 - - - 0x03DB3C 0F:1B2C: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03DB3D 0F:1B2D: 00        .byte $00   ; 

- D 0 - - - 0x03DB3E 0F:1B2E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB3F 0F:1B2F: C2        .byte $C2   ; 

- D 0 - - - 0x03DB40 0F:1B30: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03DB41 0F:1B31: 00        .byte $00   ; 

- D 0 - - - 0x03DB42 0F:1B32: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03DB43 0F:1B33: E4        .byte $E4, $DE, $E8, $00, $D5, $D7, $E3, $D2, $D5, $00, $E9, $00, $DB, $FD, $DF, $C3   ; 

- D 0 - - - 0x03DB53 0F:1B43: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DB54 0F:1B44: 00        .byte $00   ; 

- D 0 - - - 0x03DB55 0F:1B45: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03DB56 0F:1B46: D5        .byte $D5, $D7, $E3, $D2, $D5, $00, $D5   ; 

- D 0 - - - 0x03DB5D 0F:1B4D: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03DB5E 0F:1B4E: 00        .byte $00   ; 

- D 0 - - - 0x03DB5F 0F:1B4F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB60 0F:1B50: C2        .byte $C2   ; 

- D 0 - - - 0x03DB61 0F:1B51: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03DB62 0F:1B52: 00        .byte $00   ; 

- D 0 - - - 0x03DB63 0F:1B53: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB64 0F:1B54: C2        .byte $C2   ; 

- D 0 - - - 0x03DB65 0F:1B55: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03DB66 0F:1B56: 00        .byte $00   ; 

- D 0 - - - 0x03DB67 0F:1B57: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB68 0F:1B58: C2        .byte $C2   ; 

- D 0 - - - 0x03DB69 0F:1B59: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03DB6A 0F:1B5A: 00        .byte $00   ; 

- D 0 - - - 0x03DB6B 0F:1B5B: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03DB6C 0F:1B5C: DA        .byte $DA, $D1, $D9, $E5, $00, $D1, $FE, $DF, $D9, $E3   ; 

- D 0 - - - 0x03DB76 0F:1B66: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DB77 0F:1B67: E9        .byte $E9   ; 

- D 0 - - - 0x03DB78 0F:1B68: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03DB79 0F:1B69: 00        .byte $00, $E4, $E5, $FC, $00, $D1, $EF, $DC, $F8, $F2, $E8, $DF, $FE, $DF   ; 

- D 0 - - - 0x03DB87 0F:1B77: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03DB88 0F:1B78: 00        .byte $00   ; 

- D 0 - - - 0x03DB89 0F:1B79: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB8A 0F:1B7A: C2        .byte $C2   ; 

- D 0 - - - 0x03DB8B 0F:1B7B: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03DB8C 0F:1B7C: 00        .byte $00   ; 

- D 0 - - - 0x03DB8D 0F:1B7D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB8E 0F:1B7E: C2        .byte $C2   ; 

- D 0 - - - 0x03DB8F 0F:1B7F: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03DB90 0F:1B80: 00        .byte $00   ; 

- D 0 - - - 0x03DB91 0F:1B81: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DB92 0F:1B82: C2        .byte $C2   ; 

- D 0 - - - 0x03DB93 0F:1B83: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03DB94 0F:1B84: 00        .byte $00   ; 

- D 0 - - - 0x03DB95 0F:1B85: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03DB96 0F:1B86: E8        .byte $E8, $DF, $FA, $D2, $D5   ; 

- D 0 - - - 0x03DB9B 0F:1B8B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DB9C 0F:1B8C: CF        .byte $CF   ; 

- D 0 - - - 0x03DB9D 0F:1B8D: 52        .byte con_40 + $12   ; 
- D 0 - - - 0x03DB9E 0F:1B8E: CE        .byte $CE, $00, $E3, $E5, $D5, $D7, $00, $9A, $A7, $B2, $00, $E3, $00, $8B, $9F, $B2   ; 
- D 0 - - - 0x03DBAE 0F:1B9E: 00        .byte $00, $E8   ; 

- D 0 - - - 0x03DBB0 0F:1BA0: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03DBB1 0F:1BA1: 00        .byte $00   ; 

- D 0 - - - 0x03DBB2 0F:1BA2: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DBB3 0F:1BA3: C2        .byte $C2   ; 

- D 0 - - - 0x03DBB4 0F:1BA4: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03DBB5 0F:1BA5: 00        .byte $00   ; 

- D 0 - - - 0x03DBB6 0F:1BA6: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03DBB7 0F:1BA7: EB        .byte $EB, $D7, $DB, $C0, $D2, $E9, $00, $D4, $FB, $FE, $DF, $E8, $DF, $C3   ; 

- D 0 - - - 0x03DBC5 0F:1BB5: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03DBC7 0F:1BB7: 00        .byte $00   ; 

- D 0 - - - 0x03DBC8 0F:1BB8: 1E        .byte con_00 + $1E   ; 
- D 0 - - - 0x03DBC9 0F:1BB9: 00        .byte $00   ; 

- D 0 - - - 0x03DBCA 0F:1BBA: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DBCB 0F:1BBB: C0        .byte $C0, $F0   ; 

- D 0 - - - 0x03DBCD 0F:1BBD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DBCE 0F:1BBE: 00        .byte $00   ; 

- D 0 - - - 0x03DBCF 0F:1BBF: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DBD0 0F:1BC0: 05        .byte $05   ; 

- D 0 - - - 0x03DBD1 0F:1BC1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DBD2 0F:1BC2: 00        .byte $00   ; 

- D 0 - - - 0x03DBD3 0F:1BC3: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DBD4 0F:1BC4: 8C        .byte $8C, $00, $44   ; 

- D 0 - - - 0x03DBD7 0F:1BC7: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DBD8 0F:1BC8: 55        .byte $55   ; 

- D 0 - - - 0x03DBD9 0F:1BC9: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DBDA 0F:1BCA: 11        .byte $11, $44   ; 

- D 0 - - - 0x03DBDC 0F:1BCC: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DBDD 0F:1BCD: 55        .byte $55   ; 

- D 0 - - - 0x03DBDE 0F:1BCE: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DBDF 0F:1BCF: 51        .byte $51, $44   ; 

- D 0 - - - 0x03DBE1 0F:1BD1: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DBE2 0F:1BD2: 55        .byte $55   ; 

- D 0 - - - 0x03DBE3 0F:1BD3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DBE4 0F:1BD4: 11        .byte $11   ; 

- D 0 - - - 0x03DBE5 0F:1BD5: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03DBE6 0F:1BD6: 00        .byte $00   ; 

- D 0 - - - 0x03DBE7 0F:1BD7: 00        .byte $00, $00   ; end token



_off031_0x03DBE9_44:
- D 0 - - - 0x03DBE9 0F:1BD9: 00        .byte $00   ; 
- D 0 - - - 0x03DBEA 0F:1BDA: 20 00     .dbyt $2000

- D 0 - - - 0x03DBEC 0F:1BDC: 81        .byte con_80 + $01, $CA   ; 
- D 0 - - - 0x03DBEE 0F:1BDE: 00        .byte $00   ; 

- D 0 - - - 0x03DBEF 0F:1BDF: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03DBF0 0F:1BE0: 77        .byte $77   ; 

- D 0 - - - 0x03DBF1 0F:1BE1: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DBF2 0F:1BE2: 00        .byte $00   ; 

- D 0 - - - 0x03DBF3 0F:1BE3: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03DBF4 0F:1BE4: 77        .byte $77   ; 

- D 0 - - - 0x03DBF5 0F:1BE5: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DBF6 0F:1BE6: 00        .byte $00   ; 

- D 0 - - - 0x03DBF7 0F:1BE7: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03DBF8 0F:1BE8: 7F        .byte $7F   ; 

- D 0 - - - 0x03DBF9 0F:1BE9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DBFA 0F:1BEA: 49        .byte $49   ; 

- D 0 - - - 0x03DBFB 0F:1BEB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DBFC 0F:1BEC: 69        .byte $69, $59, $69   ; 

- D 0 - - - 0x03DBFF 0F:1BEF: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DC00 0F:1BF0: 00        .byte $00   ; 

- D 0 - - - 0x03DC01 0F:1BF1: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DC02 0F:1BF2: 7B        .byte $7B   ; 

- D 0 - - - 0x03DC03 0F:1BF3: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DC04 0F:1BF4: 73        .byte $73, $60, $10   ; 

- D 0 - - - 0x03DC07 0F:1BF7: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DC08 0F:1BF8: 00        .byte $00   ; 

- D 0 - - - 0x03DC09 0F:1BF9: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03DC0A 0F:1BFA: 5F        .byte $5F   ; 

- D 0 - - - 0x03DC0B 0F:1BFB: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DC0C 0F:1BFC: 29        .byte $29, $74, $70, $20   ; 

- D 0 - - - 0x03DC10 0F:1C00: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DC11 0F:1C01: 00        .byte $00   ; 

- D 0 - - - 0x03DC12 0F:1C02: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DC13 0F:1C03: 48        .byte $48   ; 

- D 0 - - - 0x03DC14 0F:1C04: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DC15 0F:1C05: 75        .byte $75, $61, $30   ; 

- D 0 - - - 0x03DC18 0F:1C08: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DC19 0F:1C09: 00        .byte $00   ; 

- D 0 - - - 0x03DC1A 0F:1C0A: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DC1B 0F:1C0B: 40        .byte $40, $09, $19   ; 

- D 0 - - - 0x03DC1E 0F:1C0E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DC1F 0F:1C0F: 40        .byte $40   ; 

- D 0 - - - 0x03DC20 0F:1C10: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03DC21 0F:1C11: 00        .byte $00   ; 

- D 0 - - - 0x03DC22 0F:1C12: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03DC23 0F:1C13: 5F        .byte $5F   ; 

- D 0 - - - 0x03DC24 0F:1C14: 35        .byte con_00 + $35   ; 
- D 0 - - - 0x03DC25 0F:1C15: 00        .byte $00   ; 

- D 0 - - - 0x03DC26 0F:1C16: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DC27 0F:1C17: BF        .byte $BF   ; 

- D 0 - - - 0x03DC28 0F:1C18: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03DC29 0F:1C19: 00        .byte $00   ; 

- D 0 - - - 0x03DC2A 0F:1C1A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DC2B 0F:1C1B: C2        .byte $C2   ; 

- D 0 - - - 0x03DC2C 0F:1C1C: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03DC2D 0F:1C1D: 00        .byte $00   ; 

- D 0 - - - 0x03DC2E 0F:1C1E: 56        .byte con_40 + $16   ; 
- D 0 - - - 0x03DC2F 0F:1C1F: 9C        .byte $9C, $A7, $89, $9B, $8F, $B2, $E9, $00, $E4, $DE, $E8, $00, $DB, $EE, $EC, $E3   ; 
- D 0 - - - 0x03DC3F 0F:1C2F: D4        .byte $D4, $F7, $E2, $D1, $D7, $C3   ; 

- D 0 - - - 0x03DC45 0F:1C35: 81        .byte con_80 + $01, $AA   ; 
- D 0 - - - 0x03DC47 0F:1C37: 00        .byte $00   ; 

- D 0 - - - 0x03DC48 0F:1C38: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03DC49 0F:1C39: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C7   ; 

- D 0 - - - 0x03DC52 0F:1C42: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DC53 0F:1C43: 00        .byte $00   ; 

- D 0 - - - 0x03DC54 0F:1C44: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03DC55 0F:1C45: B2        .byte $B2, $00, $D5, $D1, $E2, $D1, $00, $D6, $E0, $00, $B2   ; 

- D 0 - - - 0x03DC60 0F:1C50: 81        .byte con_80 + $01, $EF   ; 
- D 0 - - - 0x03DC62 0F:1C52: 00        .byte $00   ; 

- D 0 - - - 0x03DC63 0F:1C53: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DC64 0F:1C54: 80        .byte $80   ; 

- D 0 - - - 0x03DC65 0F:1C55: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DC66 0F:1C56: A0        .byte $A0   ; 

- D 0 - - - 0x03DC67 0F:1C57: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03DC68 0F:1C58: 00        .byte $00   ; 

- D 0 - - - 0x03DC69 0F:1C59: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DC6A 0F:1C5A: 88        .byte $88, $AA, $50   ; 

- D 0 - - - 0x03DC6D 0F:1C5D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03DC6E 0F:1C5E: 00        .byte $00   ; 

- D 0 - - - 0x03DC6F 0F:1C5F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DC70 0F:1C60: F0        .byte $F0, $FC   ; 

- D 0 - - - 0x03DC72 0F:1C62: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DC73 0F:1C63: FF        .byte $FF   ; 

- D 0 - - - 0x03DC74 0F:1C64: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DC75 0F:1C65: F0        .byte $F0   ; 

- D 0 - - - 0x03DC76 0F:1C66: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DC77 0F:1C67: 00        .byte $00   ; 

- D 0 - - - 0x03DC78 0F:1C68: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DC79 0F:1C69: FF        .byte $FF   ; 

- D 0 - - - 0x03DC7A 0F:1C6A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DC7B 0F:1C6B: 03        .byte $03, $00   ; 

- D 0 - - - 0x03DC7D 0F:1C6D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DC7E 0F:1C6E: F0        .byte $F0   ; 

- D 0 - - - 0x03DC7F 0F:1C6F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DC80 0F:1C70: 30        .byte $30   ; 

- D 0 - - - 0x03DC81 0F:1C71: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DC82 0F:1C72: F0        .byte $F0   ; 

- D 0 - - - 0x03DC83 0F:1C73: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03DC84 0F:1C74: 00        .byte $00   ; 

- D 0 - - - 0x03DC85 0F:1C75: 00        .byte $00, $00   ; end token



_off031_0x03DC87_52:
- D 0 - - - 0x03DC87 0F:1C77: 00        .byte $00   ; 
- D 0 - - - 0x03DC88 0F:1C78: 20 00     .dbyt $2000

- D 0 - - - 0x03DC8A 0F:1C7A: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03DC8B 0F:1C7B: 00        .byte $00   ; 

- D 0 - - - 0x03DC8C 0F:1C7C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DC8D 0F:1C7D: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DC91 0F:1C81: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DC92 0F:1C82: 00        .byte $00   ; 

- D 0 - - - 0x03DC93 0F:1C83: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DC94 0F:1C84: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DC98 0F:1C88: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DC99 0F:1C89: 00        .byte $00   ; 

- D 0 - - - 0x03DC9A 0F:1C8A: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DC9B 0F:1C8B: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DC9F 0F:1C8F: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCA0 0F:1C90: 00        .byte $00   ; 

- D 0 - - - 0x03DCA1 0F:1C91: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCA2 0F:1C92: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCA6 0F:1C96: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCA7 0F:1C97: 00        .byte $00   ; 

- D 0 - - - 0x03DCA8 0F:1C98: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCA9 0F:1C99: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCAD 0F:1C9D: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCAE 0F:1C9E: 00        .byte $00   ; 

- D 0 - - - 0x03DCAF 0F:1C9F: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCB0 0F:1CA0: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCB4 0F:1CA4: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCB5 0F:1CA5: 00        .byte $00   ; 

- D 0 - - - 0x03DCB6 0F:1CA6: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCB7 0F:1CA7: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCBB 0F:1CAB: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCBC 0F:1CAC: 00        .byte $00   ; 

- D 0 - - - 0x03DCBD 0F:1CAD: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCBE 0F:1CAE: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCC2 0F:1CB2: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCC3 0F:1CB3: 00        .byte $00   ; 

- D 0 - - - 0x03DCC4 0F:1CB4: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCC5 0F:1CB5: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCC9 0F:1CB9: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCCA 0F:1CBA: 00        .byte $00   ; 

- D 0 - - - 0x03DCCB 0F:1CBB: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCCC 0F:1CBC: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCD0 0F:1CC0: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCD1 0F:1CC1: 00        .byte $00   ; 

- D 0 - - - 0x03DCD2 0F:1CC2: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCD3 0F:1CC3: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCD7 0F:1CC7: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCD8 0F:1CC8: 00        .byte $00   ; 

- D 0 - - - 0x03DCD9 0F:1CC9: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCDA 0F:1CCA: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCDE 0F:1CCE: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCDF 0F:1CCF: 00        .byte $00   ; 

- D 0 - - - 0x03DCE0 0F:1CD0: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCE1 0F:1CD1: 6B        .byte $6B, $6C, $69, $6A   ; 

- D 0 - - - 0x03DCE5 0F:1CD5: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03DCE6 0F:1CD6: 00        .byte $00   ; 

- D 0 - - - 0x03DCE7 0F:1CD7: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03DCE8 0F:1CD8: 56        .byte $56, $57, $58, $59   ; 

- D 0 - - - 0x03DCEC 0F:1CDC: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03DCED 0F:1CDD: 00        .byte $00   ; 

- D 0 - - - 0x03DCEE 0F:1CDE: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DCEF 0F:1CDF: 66        .byte $66, $01, $02, $03, $04, $05   ; 

- D 0 - - - 0x03DCF5 0F:1CE5: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03DCF6 0F:1CE6: 00        .byte $00   ; 

- D 0 - - - 0x03DCF7 0F:1CE7: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DCF8 0F:1CE8: 10        .byte $10, $11, $12, $13, $14, $15   ; 

- D 0 - - - 0x03DCFE 0F:1CEE: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03DCFF 0F:1CEF: 00        .byte $00   ; 

- D 0 - - - 0x03DD00 0F:1CF0: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03DD01 0F:1CF1: 20        .byte $20, $21, $22, $23, $24, $25, $0F   ; 

- D 0 - - - 0x03DD08 0F:1CF8: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DD09 0F:1CF9: 00        .byte $00   ; 

- D 0 - - - 0x03DD0A 0F:1CFA: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03DD0B 0F:1CFB: 0E        .byte $0E, $30, $31, $32, $33, $34, $35, $1F   ; 

- D 0 - - - 0x03DD13 0F:1D03: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DD14 0F:1D04: 00        .byte $00   ; 

- D 0 - - - 0x03DD15 0F:1D05: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03DD16 0F:1D06: 1E        .byte $1E, $40, $41, $42, $43, $44, $45   ; 

- D 0 - - - 0x03DD1D 0F:1D0D: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03DD1E 0F:1D0E: 00        .byte $00   ; 

- D 0 - - - 0x03DD1F 0F:1D0F: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03DD20 0F:1D10: 2E        .byte $2E, $50, $51, $52, $53, $54, $55   ; 

- D 0 - - - 0x03DD27 0F:1D17: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03DD28 0F:1D18: 00        .byte $00   ; 

- D 0 - - - 0x03DD29 0F:1D19: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03DD2A 0F:1D1A: 60        .byte $60, $61, $62, $63, $64, $65   ; 

- D 0 - - - 0x03DD30 0F:1D20: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03DD31 0F:1D21: 00        .byte $00   ; 

- D 0 - - - 0x03DD32 0F:1D22: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03DD33 0F:1D23: 06        .byte $06, $07, $08, $09, $0A, $0B, $0C   ; 

- D 0 - - - 0x03DD3A 0F:1D2A: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03DD3B 0F:1D2B: 00        .byte $00   ; 

- D 0 - - - 0x03DD3C 0F:1D2C: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03DD3D 0F:1D2D: 16        .byte $16, $17, $18, $19, $1A, $1B, $1C, $1D   ; 

- D 0 - - - 0x03DD45 0F:1D35: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DD46 0F:1D36: 00        .byte $00   ; 

- D 0 - - - 0x03DD47 0F:1D37: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03DD48 0F:1D38: 26        .byte $26, $27, $28, $29, $2A, $2B, $2C, $2D   ; 

- D 0 - - - 0x03DD50 0F:1D40: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DD51 0F:1D41: 00        .byte $00   ; 

- D 0 - - - 0x03DD52 0F:1D42: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DD53 0F:1D43: 36        .byte $36, $37, $38   ; 

- D 0 - - - 0x03DD56 0F:1D46: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DD57 0F:1D47: 39        .byte $39   ; 

- D 0 - - - 0x03DD58 0F:1D48: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03DD59 0F:1D49: 3B        .byte $3B, $3C, $3D   ; 

- D 0 - - - 0x03DD5C 0F:1D4C: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03DD5D 0F:1D4D: 00        .byte $00   ; 

- D 0 - - - 0x03DD5E 0F:1D4E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03DD5F 0F:1D4F: 46        .byte $46   ; 

- D 0 - - - 0x03DD60 0F:1D50: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DD61 0F:1D51: 48        .byte $48   ; 

- D 0 - - - 0x03DD62 0F:1D52: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03DD63 0F:1D53: 49        .byte $49   ; 

- D 0 - - - 0x03DD64 0F:1D54: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DD65 0F:1D55: 4C        .byte $4C, $4D   ; 

- D 0 - - - 0x03DD67 0F:1D57: 81        .byte con_80 + $01, $8F   ; 
- D 0 - - - 0x03DD69 0F:1D59: 00        .byte $00   ; 

- D 0 - - - 0x03DD6A 0F:1D5A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DD6B 0F:1D5B: 44        .byte $44, $11   ; 

- D 0 - - - 0x03DD6D 0F:1D5D: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DD6E 0F:1D5E: 00        .byte $00   ; 

- D 0 - - - 0x03DD6F 0F:1D5F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DD70 0F:1D60: 44        .byte $44, $51   ; 

- D 0 - - - 0x03DD72 0F:1D62: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DD73 0F:1D63: 00        .byte $00   ; 

- D 0 - - - 0x03DD74 0F:1D64: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DD75 0F:1D65: 44        .byte $44, $55   ; 

- D 0 - - - 0x03DD77 0F:1D67: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DD78 0F:1D68: 00        .byte $00   ; 

- D 0 - - - 0x03DD79 0F:1D69: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03DD7A 0F:1D6A: 54        .byte $54, $55   ; 

- D 0 - - - 0x03DD7C 0F:1D6C: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DD7D 0F:1D6D: 00        .byte $00   ; 

- D 0 - - - 0x03DD7E 0F:1D6E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DD7F 0F:1D6F: 55        .byte $55   ; 

- D 0 - - - 0x03DD80 0F:1D70: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DD81 0F:1D71: 00        .byte $00   ; 

- D 0 - - - 0x03DD82 0F:1D72: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DD83 0F:1D73: 55        .byte $55   ; 

- D 0 - - - 0x03DD84 0F:1D74: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03DD85 0F:1D75: 00        .byte $00   ; 

- D 0 - - - 0x03DD86 0F:1D76: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03DD87 0F:1D77: 05        .byte $05   ; 

- D 0 - - - 0x03DD88 0F:1D78: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03DD89 0F:1D79: 00        .byte $00   ; 

- D 0 - - - 0x03DD8A 0F:1D7A: 00        .byte $00, $00   ; end token



_off031_0x03DD8C_53:
- D 0 - - - 0x03DD8C 0F:1D7C: 00        .byte $00   ; 
- D 0 - - - 0x03DD8D 0F:1D7D: 20 00     .dbyt $2000

- D 0 - - - 0x03DD8F 0F:1D7F: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03DD91 0F:1D81: F0        .byte $F0   ; 

- D 0 - - - 0x03DD92 0F:1D82: 81        .byte con_80 + $01, $C5   ; 
- D 0 - - - 0x03DD94 0F:1D84: F0        .byte $F0   ; 

- D 0 - - - 0x03DD95 0F:1D85: 58        .byte con_40 + $18   ; 
- D 0 - - - 0x03DD96 0F:1D86: 70        .byte $70, $71, $72, $73, $74, $75, $76, $77, $78, $90, $91, $F0, $70, $92, $93, $94   ; 
- D 0 - - - 0x03DDA6 0F:1D96: 95        .byte $95, $93, $96, $97, $98, $B0, $B1, $B2   ; 

- D 0 - - - 0x03DDAE 0F:1D9E: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03DDAF 0F:1D9F: F0        .byte $F0   ; 

- D 0 - - - 0x03DDB0 0F:1DA0: 58        .byte con_40 + $18   ; 
- D 0 - - - 0x03DDB1 0F:1DA1: 80        .byte $80, $81, $82, $83, $84, $85, $86, $87, $88, $A0, $A1, $F0, $A2, $80, $A3, $A4   ; 
- D 0 - - - 0x03DDC1 0F:1DB1: A5        .byte $A5, $A3, $A6, $A7, $A8, $C0, $C1, $C2   ; 

- D 0 - - - 0x03DDC9 0F:1DB9: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03DDCB 0F:1DBB: F0        .byte $F0   ; 

- D 0 - - - 0x03DDCC 0F:1DBC: 81        .byte con_80 + $01, $C5   ; 
- D 0 - - - 0x03DDCE 0F:1DBE: F0        .byte $F0   ; 

- D 0 - - - 0x03DDCF 0F:1DBF: 81        .byte con_80 + $01, $40   ; 
- D 0 - - - 0x03DDD1 0F:1DC1: 00        .byte $00   ; 

- D 0 - - - 0x03DDD2 0F:1DC2: 00        .byte $00, $00   ; end token


; bzk garbage
- - - - - - 0x03DDD4 0F:1DC4: 00        .byte $00   ; 
- - - - - - 0x03DDD5 0F:1DC5: 00        .byte $00   ; 
- - - - - - 0x03DDD6 0F:1DC6: 06        .byte $06   ; 
- - - - - - 0x03DDD7 0F:1DC7: FF        .byte $FF   ; 
- - - - - - 0x03DDD8 0F:1DC8: 42        .byte $42   ; 
- - - - - - 0x03DDD9 0F:1DC9: 03        .byte $03   ; 
- - - - - - 0x03DDDA 0F:1DCA: 00        .byte $00   ; 
- - - - - - 0x03DDDB 0F:1DCB: 06        .byte $06   ; 
- - - - - - 0x03DDDC 0F:1DCC: F0        .byte $F0   ; 
- - - - - - 0x03DDDD 0F:1DCD: 01        .byte $01   ; 
- - - - - - 0x03DDDE 0F:1DCE: 30        .byte $30   ; 
- - - - - - 0x03DDDF 0F:1DCF: 10        .byte $10   ; 
- - - - - - 0x03DDE0 0F:1DD0: 00        .byte $00   ; 
- - - - - - 0x03DDE1 0F:1DD1: 00        .byte $00   ; 
- - - - - - 0x03DDE2 0F:1DD2: 00        .byte $00   ; 


; gak garbage, unused screen data
- - - - - - 0x03DDE3 0F:1DD3: 00        .byte $00   ; 
- - - - - - 0x03DDE4 0F:1DD4: 20 00     .dbyt $2000

- - - - - - 0x03DDE6 0F:1DD6: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03DDE7 0F:1DD7: 00        .byte $00   ; 

- - - - - - 0x03DDE8 0F:1DD8: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DDE9 0F:1DD9: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DDED 0F:1DDD: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DDEE 0F:1DDE: 00        .byte $00   ; 

- - - - - - 0x03DDEF 0F:1DDF: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DDF0 0F:1DE0: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DDF4 0F:1DE4: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DDF5 0F:1DE5: 00        .byte $00   ; 

- - - - - - 0x03DDF6 0F:1DE6: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DDF7 0F:1DE7: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DDFB 0F:1DEB: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DDFC 0F:1DEC: 00        .byte $00   ; 

- - - - - - 0x03DDFD 0F:1DED: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DDFE 0F:1DEE: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE02 0F:1DF2: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE03 0F:1DF3: 00        .byte $00   ; 

- - - - - - 0x03DE04 0F:1DF4: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE05 0F:1DF5: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE09 0F:1DF9: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE0A 0F:1DFA: 00        .byte $00   ; 

- - - - - - 0x03DE0B 0F:1DFB: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE0C 0F:1DFC: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE10 0F:1E00: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE11 0F:1E01: 00        .byte $00   ; 

- - - - - - 0x03DE12 0F:1E02: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE13 0F:1E03: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE17 0F:1E07: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE18 0F:1E08: 00        .byte $00   ; 

- - - - - - 0x03DE19 0F:1E09: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE1A 0F:1E0A: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE1E 0F:1E0E: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE1F 0F:1E0F: 00        .byte $00   ; 

- - - - - - 0x03DE20 0F:1E10: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE21 0F:1E11: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE25 0F:1E15: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE26 0F:1E16: 00        .byte $00   ; 

- - - - - - 0x03DE27 0F:1E17: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE28 0F:1E18: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE2C 0F:1E1C: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE2D 0F:1E1D: 00        .byte $00   ; 

- - - - - - 0x03DE2E 0F:1E1E: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE2F 0F:1E1F: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE33 0F:1E23: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE34 0F:1E24: 00        .byte $00   ; 

- - - - - - 0x03DE35 0F:1E25: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE36 0F:1E26: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE3A 0F:1E2A: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE3B 0F:1E2B: 00        .byte $00   ; 

- - - - - - 0x03DE3C 0F:1E2C: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE3D 0F:1E2D: 6B        .byte $6B, $6C, $69, $6A   ; 

- - - - - - 0x03DE41 0F:1E31: 1C        .byte con_00 + $1C   ; 
- - - - - - 0x03DE42 0F:1E32: 00        .byte $00   ; 

- - - - - - 0x03DE43 0F:1E33: 44        .byte con_40 + $04   ; 
- - - - - - 0x03DE44 0F:1E34: 56        .byte $56, $57, $58, $59   ; 

- - - - - - 0x03DE48 0F:1E38: 1B        .byte con_00 + $1B   ; 
- - - - - - 0x03DE49 0F:1E39: 00        .byte $00   ; 

- - - - - - 0x03DE4A 0F:1E3A: 46        .byte con_40 + $06   ; 
- - - - - - 0x03DE4B 0F:1E3B: 66        .byte $66, $01, $02, $03, $04, $05   ; 

- - - - - - 0x03DE51 0F:1E41: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03DE52 0F:1E42: 00        .byte $00   ; 

- - - - - - 0x03DE53 0F:1E43: 46        .byte con_40 + $06   ; 
- - - - - - 0x03DE54 0F:1E44: 10        .byte $10, $11, $12, $13, $14, $15   ; 

- - - - - - 0x03DE5A 0F:1E4A: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03DE5B 0F:1E4B: 00        .byte $00   ; 

- - - - - - 0x03DE5C 0F:1E4C: 47        .byte con_40 + $07   ; 
- - - - - - 0x03DE5D 0F:1E4D: 20        .byte $20, $21, $22, $23, $24, $25, $0F   ; 

- - - - - - 0x03DE64 0F:1E54: 18        .byte con_00 + $18   ; 
- - - - - - 0x03DE65 0F:1E55: 00        .byte $00   ; 

- - - - - - 0x03DE66 0F:1E56: 48        .byte con_40 + $08   ; 
- - - - - - 0x03DE67 0F:1E57: 0E        .byte $0E, $30, $31, $32, $33, $34, $35, $1F   ; 

- - - - - - 0x03DE6F 0F:1E5F: 18        .byte con_00 + $18   ; 
- - - - - - 0x03DE70 0F:1E60: 00        .byte $00   ; 

- - - - - - 0x03DE71 0F:1E61: 47        .byte con_40 + $07   ; 
- - - - - - 0x03DE72 0F:1E62: 1E        .byte $1E, $40, $41, $42, $43, $44, $45   ; 

- - - - - - 0x03DE79 0F:1E69: 19        .byte con_00 + $19   ; 
- - - - - - 0x03DE7A 0F:1E6A: 00        .byte $00   ; 

- - - - - - 0x03DE7B 0F:1E6B: 47        .byte con_40 + $07   ; 
- - - - - - 0x03DE7C 0F:1E6C: 2E        .byte $2E, $50, $51, $52, $53, $54, $55   ; 

- - - - - - 0x03DE83 0F:1E73: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03DE84 0F:1E74: 00        .byte $00   ; 

- - - - - - 0x03DE85 0F:1E75: 46        .byte con_40 + $06   ; 
- - - - - - 0x03DE86 0F:1E76: 60        .byte $60, $61, $62, $63, $64, $65   ; 

- - - - - - 0x03DE8C 0F:1E7C: 19        .byte con_00 + $19   ; 
- - - - - - 0x03DE8D 0F:1E7D: 00        .byte $00   ; 

- - - - - - 0x03DE8E 0F:1E7E: 47        .byte con_40 + $07   ; 
- - - - - - 0x03DE8F 0F:1E7F: 06        .byte $06, $07, $08, $09, $0A, $0B, $0C   ; 

- - - - - - 0x03DE96 0F:1E86: 19        .byte con_00 + $19   ; 
- - - - - - 0x03DE97 0F:1E87: 00        .byte $00   ; 

- - - - - - 0x03DE98 0F:1E88: 48        .byte con_40 + $08   ; 
- - - - - - 0x03DE99 0F:1E89: 16        .byte $16, $17, $18, $19, $1A, $1B, $1C, $1D   ; 

- - - - - - 0x03DEA1 0F:1E91: 18        .byte con_00 + $18   ; 
- - - - - - 0x03DEA2 0F:1E92: 00        .byte $00   ; 

- - - - - - 0x03DEA3 0F:1E93: 48        .byte con_40 + $08   ; 
- - - - - - 0x03DEA4 0F:1E94: 26        .byte $26, $27, $28, $29, $2A, $2B, $2C, $2D   ; 

- - - - - - 0x03DEAC 0F:1E9C: 18        .byte con_00 + $18   ; 
- - - - - - 0x03DEAD 0F:1E9D: 00        .byte $00   ; 

- - - - - - 0x03DEAE 0F:1E9E: 43        .byte con_40 + $03   ; 
- - - - - - 0x03DEAF 0F:1E9F: 36        .byte $36, $37, $38   ; 

- - - - - - 0x03DEB2 0F:1EA2: 02        .byte con_00 + $02   ; 
- - - - - - 0x03DEB3 0F:1EA3: 39        .byte $39   ; 

- - - - - - 0x03DEB4 0F:1EA4: 43        .byte con_40 + $03   ; 
- - - - - - 0x03DEB5 0F:1EA5: 3B        .byte $3B, $3C, $3D   ; 

- - - - - - 0x03DEB8 0F:1EA8: 18        .byte con_00 + $18   ; 
- - - - - - 0x03DEB9 0F:1EA9: 00        .byte $00   ; 

- - - - - - 0x03DEBA 0F:1EAA: 01        .byte con_00 + $01   ; 
- - - - - - 0x03DEBB 0F:1EAB: 46        .byte $46   ; 

- - - - - - 0x03DEBC 0F:1EAC: 02        .byte con_00 + $02   ; 
- - - - - - 0x03DEBD 0F:1EAD: 48        .byte $48   ; 

- - - - - - 0x03DEBE 0F:1EAE: 03        .byte con_00 + $03   ; 
- - - - - - 0x03DEBF 0F:1EAF: 49        .byte $49   ; 

- - - - - - 0x03DEC0 0F:1EB0: 42        .byte con_40 + $02   ; 
- - - - - - 0x03DEC1 0F:1EB1: 4C        .byte $4C, $4D   ; 

- - - - - - 0x03DEC3 0F:1EB3: 81        .byte con_80 + $01, $8F   ; 
- - - - - - 0x03DEC5 0F:1EB5: 00        .byte $00   ; 

- - - - - - 0x03DEC6 0F:1EB6: 42        .byte con_40 + $02   ; 
- - - - - - 0x03DEC7 0F:1EB7: 44        .byte $44, $11   ; 

- - - - - - 0x03DEC9 0F:1EB9: 06        .byte con_00 + $06   ; 
- - - - - - 0x03DECA 0F:1EBA: 00        .byte $00   ; 

- - - - - - 0x03DECB 0F:1EBB: 42        .byte con_40 + $02   ; 
- - - - - - 0x03DECC 0F:1EBC: 44        .byte $44, $51   ; 

- - - - - - 0x03DECE 0F:1EBE: 06        .byte con_00 + $06   ; 
- - - - - - 0x03DECF 0F:1EBF: 00        .byte $00   ; 

- - - - - - 0x03DED0 0F:1EC0: 42        .byte con_40 + $02   ; 
- - - - - - 0x03DED1 0F:1EC1: 44        .byte $44, $55   ; 

- - - - - - 0x03DED3 0F:1EC3: 06        .byte con_00 + $06   ; 
- - - - - - 0x03DED4 0F:1EC4: 00        .byte $00   ; 

- - - - - - 0x03DED5 0F:1EC5: 42        .byte con_40 + $02   ; 
- - - - - - 0x03DED6 0F:1EC6: 54        .byte $54, $55   ; 

- - - - - - 0x03DED8 0F:1EC8: 06        .byte con_00 + $06   ; 
- - - - - - 0x03DED9 0F:1EC9: 00        .byte $00   ; 

- - - - - - 0x03DEDA 0F:1ECA: 02        .byte con_00 + $02   ; 
- - - - - - 0x03DEDB 0F:1ECB: 55        .byte $55   ; 

- - - - - - 0x03DEDC 0F:1ECC: 06        .byte con_00 + $06   ; 
- - - - - - 0x03DEDD 0F:1ECD: 00        .byte $00   ; 

- - - - - - 0x03DEDE 0F:1ECE: 02        .byte con_00 + $02   ; 
- - - - - - 0x03DEDF 0F:1ECF: 55        .byte $55   ; 

- - - - - - 0x03DEE0 0F:1ED0: 06        .byte con_00 + $06   ; 
- - - - - - 0x03DEE1 0F:1ED1: 00        .byte $00   ; 

- - - - - - 0x03DEE2 0F:1ED2: 02        .byte con_00 + $02   ; 
- - - - - - 0x03DEE3 0F:1ED3: 05        .byte $05   ; 

- - - - - - 0x03DEE4 0F:1ED4: 0B        .byte con_00 + $0B   ; 
- - - - - - 0x03DEE5 0F:1ED5: 00        .byte $00   ; 

- - - - - - 0x03DEE6 0F:1ED6: 00        .byte $00, $00   ; end token


; bzk garbage, unfinished screen data
- - - - - - 0x03DEE8 0F:1ED8: 00        .byte $00   ; 
- - - - - - 0x03DEE9 0F:1ED9: 20 00     .dbyt $2000

- - - - - - 0x03DEEB 0F:1EDB: 81        .byte con_80 + $01, $FF   ; 
- - - - - - 0x03DEED 0F:1EDD: F0        .byte $F0   ; 

- - - - - - 0x03DEEE 0F:1EDE: 81        .byte con_80 + $01, $C5   ; 
- - - - - - 0x03DEF0 0F:1EE0: F0        .byte $F0   ; 

- - - - - - 0x03DEF1 0F:1EE1: 58        .byte con_40 + $18   ; 
- - - - - - 0x03DEF2 0F:1EE2: 70        .byte $70, $71, $72, $73, $74, $75, $76, $77, $78, $90, $91, $F0, $70, $92, $93, $94   ; 
- - - - - - 0x03DF02 0F:1EF2: 95        .byte $95, $93, $96, $97, $98, $B0, $B1, $B2   ; 

- - - - - - 0x03DF0A 0F:1EFA: 08        .byte con_00 + $08   ; 
- - - - - - 0x03DF0B 0F:1EFB: F0        .byte $F0   ; 

- - - - - - 0x03DF0C 0F:1EFC: 58        .byte con_40 + $18   ; 
- - - - - - 0x03DF0D 0F:1EFD: 80        .byte $80, $81, $82, $83, $84, $85, $86, $87, $88, $A0, $A1, $F0, $A2, $80, $A3, $A4   ; 
- - - - - - 0x03DF1D 0F:1F0D: A5        .byte $A5, $A3, $A6, $A7, $A8, $C0, $C1, $C2   ; 

- - - - - - 0x03DF25 0F:1F15: 81        .byte con_80 + $01, $FF   ; 
- - - - - - 0x03DF27 0F:1F17: F0        .byte $F0   ; 

- - - - - - 0x03DF28 0F:1F18: 81        .byte con_80 + $01, $C5   ; 
- - - - - - 0x03DF2A 0F:1F1A: F0        .byte $F0   ; 

- - - - - - 0x03DF2B 0F:1F1B: 81        .byte con_80 + $01, $40   ; 
- - - - - - 0x03DF2D 0F:1F1D: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x03DF2E 0F:1F1E: 00        .byte $00   ; 
- - - - - - 0x03DF2F 0F:1F1F: 00        .byte $00   ; 
- - - - - - 0x03DF30 0F:1F20: C2        .byte $C2   ; 


; bzk garbage, unfinished screen data
- - - - - - 0x03DF31 0F:1F21: 81        .byte con_80 + $01, $FF   ; 
- - - - - - 0x03DF33 0F:1F23: F0        .byte $F0   ; 

- - - - - - 0x03DF34 0F:1F24: 81        .byte con_80 + $01, $C5   ; 
- - - - - - 0x03DF36 0F:1F26: F0        .byte $F0   ; 

- - - - - - 0x03DF37 0F:1F27: 81        .byte con_80 + $01, $40   ; 
- - - - - - 0x03DF39 0F:1F29: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x03DF3A 0F:1F2A: 00        .byte $00   ; 
- - - - - - 0x03DF3B 0F:1F2B: 00        .byte $00   ; 
- - - - - - 0x03DF3C 0F:1F2C: 00        .byte $00   ; 
- - - - - - 0x03DF3D 0F:1F2D: 00        .byte $00   ; 
- - - - - - 0x03DF3E 0F:1F2E: 44        .byte $44   ; 
- - - - - - 0x03DF3F 0F:1F2F: 11        .byte $11   ; 
- - - - - - 0x03DF40 0F:1F30: 06        .byte $06   ; 
- - - - - - 0x03DF41 0F:1F31: 00        .byte $00   ; 
- - - - - - 0x03DF42 0F:1F32: 42        .byte $42   ; 
- - - - - - 0x03DF43 0F:1F33: 44        .byte $44   ; 
- - - - - - 0x03DF44 0F:1F34: 51        .byte $51   ; 
- - - - - - 0x03DF45 0F:1F35: 06        .byte $06   ; 
- - - - - - 0x03DF46 0F:1F36: 00        .byte $00   ; 
- - - - - - 0x03DF47 0F:1F37: 42        .byte $42   ; 
- - - - - - 0x03DF48 0F:1F38: 44        .byte $44   ; 
- - - - - - 0x03DF49 0F:1F39: 55        .byte $55   ; 
- - - - - - 0x03DF4A 0F:1F3A: 06        .byte $06   ; 
- - - - - - 0x03DF4B 0F:1F3B: 00        .byte $00   ; 
- - - - - - 0x03DF4C 0F:1F3C: 42        .byte $42   ; 
- - - - - - 0x03DF4D 0F:1F3D: 54        .byte $54   ; 
- - - - - - 0x03DF4E 0F:1F3E: 55        .byte $55   ; 
- - - - - - 0x03DF4F 0F:1F3F: 06        .byte $06   ; 
- - - - - - 0x03DF50 0F:1F40: 00        .byte $00   ; 
- - - - - - 0x03DF51 0F:1F41: 02        .byte $02   ; 
- - - - - - 0x03DF52 0F:1F42: 55        .byte $55   ; 
- - - - - - 0x03DF53 0F:1F43: 06        .byte $06   ; 
- - - - - - 0x03DF54 0F:1F44: 00        .byte $00   ; 
- - - - - - 0x03DF55 0F:1F45: 02        .byte $02   ; 
- - - - - - 0x03DF56 0F:1F46: 55        .byte $55   ; 
- - - - - - 0x03DF57 0F:1F47: 06        .byte $06   ; 
- - - - - - 0x03DF58 0F:1F48: 00        .byte $00   ; 
- - - - - - 0x03DF59 0F:1F49: 02        .byte $02   ; 
- - - - - - 0x03DF5A 0F:1F4A: 05        .byte $05   ; 
- - - - - - 0x03DF5B 0F:1F4B: 0B        .byte $0B   ; 
- - - - - - 0x03DF5C 0F:1F4C: 00        .byte $00   ; 
- - - - - - 0x03DF5D 0F:1F4D: 00        .byte $00   ; 
- - - - - - 0x03DF5E 0F:1F4E: 00        .byte $00   ; 
- - - - - - 0x03DF5F 0F:1F4F: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x03DF60 0F:1F50: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DF70 0F:1F60: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DF80 0F:1F70: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DF90 0F:1F80: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DFA0 0F:1F90: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DFB0 0F:1FA0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DFC0 0F:1FB0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DFD0 0F:1FC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DFE0 0F:1FD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03DFF0 0F:1FE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x03E000 0F:1FF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank ppu 1: %Xh [%d]", ($2000 - *), ($2000 - *))






.segment "BANK_PPU_2"
.org $1000 ; for listing file
; 0x03E010-0x03F00F
; CHR banks 78-7B



_off031_0x03E010_2B:
- D 0 - - - 0x03E010 0F:1000: 00        .byte $00   ; 
- D 0 - - - 0x03E011 0F:1001: 20 00     .dbyt $2000

- D 0 - - - 0x03E013 0F:1003: 81        .byte con_80 + $01, $A4   ; 
- D 0 - - - 0x03E015 0F:1005: 00        .byte $00   ; 

- D 0 - - - 0x03E016 0F:1006: 59        .byte con_40 + $19   ; 
- D 0 - - - 0x03E017 0F:1007: 07        .byte $07, $08, $06, $10, $44, $60, $B0, $30, $44, $00, $B0, $49, $00, $07, $08, $B0   ; 
- D 0 - - - 0x03E027 0F:1017: 73        .byte $73, $B9, $BA, $06, $74, $06, $10, $BB, $BC   ; 

- D 0 - - - 0x03E030 0F:1020: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E031 0F:1021: 00        .byte $00   ; 

- D 0 - - - 0x03E032 0F:1022: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E033 0F:1023: 17        .byte $17, $18   ; 

- D 0 - - - 0x03E035 0F:1025: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03E037 0F:1027: 20        .byte $20, $21   ; 

- D 0 - - - 0x03E039 0F:1029: 53        .byte con_40 + $13   ; 
- D 0 - - - 0x03E03A 0F:102A: C0        .byte $C0, $40, $17, $28, $C0, $59, $00, $17, $18, $70, $C8, $C9, $CA, $20, $84, $20   ; 
- D 0 - - - 0x03E04A 0F:103A: 21        .byte $21, $CB, $CC   ; 

- D 0 - - - 0x03E04D 0F:103D: 81        .byte con_80 + $01, $67   ; 
- D 0 - - - 0x03E04F 0F:103F: 00        .byte $00   ; 

- D 0 - - - 0x03E050 0F:1040: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E051 0F:1041: 01        .byte $01, $02, $03, $04   ; 

- D 0 - - - 0x03E055 0F:1045: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E056 0F:1046: 00        .byte $00   ; 

- D 0 - - - 0x03E057 0F:1047: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E058 0F:1048: 09        .byte $09, $0A, $0B, $0C, $0D, $0E, $0F   ; 

- D 0 - - - 0x03E05F 0F:104F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E060 0F:1050: 00        .byte $00   ; 

- D 0 - - - 0x03E061 0F:1051: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E062 0F:1052: 71        .byte $71, $72, $00, $94, $95, $96   ; 

- D 0 - - - 0x03E068 0F:1058: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E069 0F:1059: 00        .byte $00   ; 

- D 0 - - - 0x03E06A 0F:105A: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E06B 0F:105B: 11        .byte $11, $12, $13, $14, $15, $16   ; 

- D 0 - - - 0x03E071 0F:1061: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E072 0F:1062: 00        .byte $00   ; 

- D 0 - - - 0x03E073 0F:1063: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03E074 0F:1064: 19        .byte $19, $1A, $1B, $1C, $1D, $1E, $1F, $00, $80, $81, $82, $83, $A4, $A5, $A6, $A7   ; 

- D 0 - - - 0x03E084 0F:1074: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E085 0F:1075: 00        .byte $00   ; 

- D 0 - - - 0x03E086 0F:1076: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E087 0F:1077: 22        .byte $22, $23, $24, $25, $26, $27   ; 

- D 0 - - - 0x03E08D 0F:107D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E08E 0F:107E: 00        .byte $00   ; 

- D 0 - - - 0x03E08F 0F:107F: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E090 0F:1080: 29        .byte $29, $2A, $2B, $2C, $2D, $2E   ; 

- D 0 - - - 0x03E096 0F:1086: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E097 0F:1087: 00        .byte $00   ; 

- D 0 - - - 0x03E098 0F:1088: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E099 0F:1089: 91        .byte $91, $92, $93, $B4, $B5, $B6, $B7   ; 

- D 0 - - - 0x03E0A0 0F:1090: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E0A1 0F:1091: 00        .byte $00   ; 

- D 0 - - - 0x03E0A2 0F:1092: 59        .byte con_40 + $19   ; 
- D 0 - - - 0x03E0A3 0F:1093: 31        .byte $31, $32, $33, $34, $35, $36, $37, $38, $00, $39, $3A, $3B, $3C, $3D, $3E, $3F   ; 
- D 0 - - - 0x03E0B3 0F:10A3: 00        .byte $00, $A0, $A1, $A2, $A3, $C4, $C5, $C6, $C7   ; 

- D 0 - - - 0x03E0BC 0F:10AC: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E0BD 0F:10AD: 00        .byte $00   ; 

- D 0 - - - 0x03E0BE 0F:10AE: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E0BF 0F:10AF: 41        .byte $41, $42, $43, $00, $45, $46, $47, $48   ; 

- D 0 - - - 0x03E0C7 0F:10B7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E0C8 0F:10B8: 00        .byte $00   ; 

- D 0 - - - 0x03E0C9 0F:10B9: 4F        .byte con_40 + $0F   ; 
- D 0 - - - 0x03E0CA 0F:10BA: 4A        .byte $4A, $4B, $4C, $4D, $4E, $4F, $8C, $00, $B1, $B2, $B3, $78, $79, $7A, $7B   ; 

- D 0 - - - 0x03E0D9 0F:10C9: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E0DA 0F:10CA: 00        .byte $00   ; 

- D 0 - - - 0x03E0DB 0F:10CB: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E0DC 0F:10CC: 51        .byte $51, $52, $53, $54, $55, $56, $57, $58   ; 

- D 0 - - - 0x03E0E4 0F:10D4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E0E5 0F:10D5: 00        .byte $00   ; 

- D 0 - - - 0x03E0E6 0F:10D6: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03E0E7 0F:10D7: 5A        .byte $5A, $5B, $5C, $5D, $5E, $5F, $6D, $00, $C1, $C2, $C3, $88, $89, $8A, $8B, $8C   ; 

- D 0 - - - 0x03E0F7 0F:10E7: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E0F8 0F:10E8: 00        .byte $00   ; 

- D 0 - - - 0x03E0F9 0F:10E9: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x03E0FA 0F:10EA: 61        .byte $61, $62, $63, $64, $65, $66, $67, $68, $00, $69, $6A, $6B, $6C, $6D, $6E, $6F   ; 
- D 0 - - - 0x03E10A 0F:10FA: 6D        .byte $6D, $00, $75, $76, $77, $98, $99, $9A, $9B, $6D   ; 

- D 0 - - - 0x03E114 0F:1104: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03E115 0F:1105: 00        .byte $00   ; 

- D 0 - - - 0x03E116 0F:1106: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E117 0F:1107: BF        .byte $BF, $CF   ; 

- D 0 - - - 0x03E119 0F:1109: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E11A 0F:110A: 00        .byte $00   ; 

- D 0 - - - 0x03E11B 0F:110B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E11C 0F:110C: 05        .byte $05   ; 

- D 0 - - - 0x03E11D 0F:110D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E11E 0F:110E: 00        .byte $00   ; 

- D 0 - - - 0x03E11F 0F:110F: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E120 0F:1110: 85        .byte $85, $86, $87, $00, $A9, $AA, $AB, $9E   ; 

- D 0 - - - 0x03E128 0F:1118: 81        .byte con_80 + $01, $4B   ; 
- D 0 - - - 0x03E12A 0F:111A: 00        .byte $00   ; 

- D 0 - - - 0x03E12B 0F:111B: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03E12C 0F:111C: 90        .byte $90, $7D, $7E, $7F, $00, $9C, $9D, $00, $9F, $BD, $BE, $A8, $7C, $97   ; 

- D 0 - - - 0x03E13A 0F:112A: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03E13B 0F:112B: 00        .byte $00   ; 

- D 0 - - - 0x03E13C 0F:112C: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03E13D 0F:112D: 8D        .byte $8D, $8E, $8F, $00, $AC, $AD, $AE, $AF, $CD, $CE, $B8, $2F   ; 

- D 0 - - - 0x03E149 0F:1139: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E14A 0F:113A: 00        .byte $00   ; 

- D 0 - - - 0x03E14B 0F:113B: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E14C 0F:113C: FD        .byte $FD, $FE   ; 

- D 0 - - - 0x03E14E 0F:113E: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03E14F 0F:113F: 00        .byte $00   ; 

- D 0 - - - 0x03E150 0F:1140: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E151 0F:1141: 50        .byte $50   ; 

- D 0 - - - 0x03E152 0F:1142: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E153 0F:1143: 00        .byte $00   ; 

- D 0 - - - 0x03E154 0F:1144: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E155 0F:1145: 50        .byte $50   ; 

- D 0 - - - 0x03E156 0F:1146: 81        .byte con_80 + $01, $74   ; 
- D 0 - - - 0x03E158 0F:1148: 00        .byte $00   ; 

- D 0 - - - 0x03E159 0F:1149: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E15A 0F:114A: FA        .byte $FA, $00, $EB, $F3, $F2, $F3   ; 

- D 0 - - - 0x03E160 0F:1150: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E161 0F:1151: 00        .byte $00   ; 

- D 0 - - - 0x03E162 0F:1152: 53        .byte con_40 + $13   ; 
- D 0 - - - 0x03E163 0F:1153: E3        .byte $E3, $D4, $D2, $D7, $DD, $DE, $E2, $00, $D9, $D0, $DF, $D0, $DD, $00, $D2, $DE   ; 
- D 0 - - - 0x03E173 0F:1163: E1        .byte $E1, $DF, $F6   ; 

- D 0 - - - 0x03E176 0F:1166: 81        .byte con_80 + $01, $62   ; 
- D 0 - - - 0x03E178 0F:1168: 00        .byte $00   ; 

- D 0 - - - 0x03E179 0F:1169: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03E17A 0F:116A: AA        .byte $AA   ; 

- D 0 - - - 0x03E17B 0F:116B: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03E17C 0F:116C: 55        .byte $55   ; 

- D 0 - - - 0x03E17D 0F:116D: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E17E 0F:116E: A5        .byte $A5   ; 

- D 0 - - - 0x03E17F 0F:116F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E180 0F:1170: 95        .byte $95   ; 

- D 0 - - - 0x03E181 0F:1171: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E182 0F:1172: A5        .byte $A5   ; 

- D 0 - - - 0x03E183 0F:1173: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E184 0F:1174: AA        .byte $AA   ; 

- D 0 - - - 0x03E185 0F:1175: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E186 0F:1176: 00        .byte $00   ; 

- D 0 - - - 0x03E187 0F:1177: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E188 0F:1178: 8B        .byte $8B, $AA   ; 

- D 0 - - - 0x03E18A 0F:117A: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E18B 0F:117B: FA        .byte $FA   ; 

- D 0 - - - 0x03E18C 0F:117C: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E18D 0F:117D: 0A        .byte $0A   ; 

- D 0 - - - 0x03E18E 0F:117E: 00        .byte $00, $00   ; end token



_off031_0x03E190_42:
- D 0 - - - 0x03E190 0F:1180: 00        .byte $00   ; 
- D 0 - - - 0x03E191 0F:1181: 20 00     .dbyt $2000

- D 0 - - - 0x03E193 0F:1183: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03E194 0F:1184: 00        .byte $00   ; 

- D 0 - - - 0x03E195 0F:1185: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E196 0F:1186: 07        .byte $07   ; 

- D 0 - - - 0x03E197 0F:1187: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E198 0F:1188: 00        .byte $00   ; 

- D 0 - - - 0x03E199 0F:1189: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E19A 0F:118A: 07        .byte $07   ; 

- D 0 - - - 0x03E19B 0F:118B: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E19C 0F:118C: 00        .byte $00   ; 

- D 0 - - - 0x03E19D 0F:118D: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E19E 0F:118E: 07        .byte $07   ; 

- D 0 - - - 0x03E19F 0F:118F: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E1A0 0F:1190: 00        .byte $00   ; 

- D 0 - - - 0x03E1A1 0F:1191: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E1A2 0F:1192: 07        .byte $07   ; 

- D 0 - - - 0x03E1A3 0F:1193: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E1A4 0F:1194: 00        .byte $00   ; 

- D 0 - - - 0x03E1A5 0F:1195: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E1A6 0F:1196: 07        .byte $07   ; 

- D 0 - - - 0x03E1A7 0F:1197: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E1A8 0F:1198: 00        .byte $00   ; 

- D 0 - - - 0x03E1A9 0F:1199: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E1AA 0F:119A: 07        .byte $07   ; 

- D 0 - - - 0x03E1AB 0F:119B: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E1AC 0F:119C: 00        .byte $00   ; 

- D 0 - - - 0x03E1AD 0F:119D: 4F        .byte con_40 + $0F   ; 
- D 0 - - - 0x03E1AE 0F:119E: B0        .byte $B0, $00, $D9, $CF, $D9, $F9, $E9, $00, $D1, $FE, $DF, $D1, $CD, $CE, $B1   ; 

- D 0 - - - 0x03E1BD 0F:11AD: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E1BE 0F:11AE: 00        .byte $00   ; 

- D 0 - - - 0x03E1BF 0F:11AF: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E1C0 0F:11B0: 07        .byte $07   ; 

- D 0 - - - 0x03E1C1 0F:11B1: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E1C2 0F:11B2: 00        .byte $00   ; 

- D 0 - - - 0x03E1C3 0F:11B3: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E1C4 0F:11B4: 07        .byte $07   ; 

- D 0 - - - 0x03E1C5 0F:11B5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E1C6 0F:11B6: 06        .byte $06   ; 

- D 0 - - - 0x03E1C7 0F:11B7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E1C8 0F:11B8: 07        .byte $07   ; 

- D 0 - - - 0x03E1C9 0F:11B9: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E1CA 0F:11BA: 00        .byte $00   ; 

- D 0 - - - 0x03E1CB 0F:11BB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E1CC 0F:11BC: 07        .byte $07   ; 

- D 0 - - - 0x03E1CD 0F:11BD: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E1CE 0F:11BE: 14        .byte $14, $15, $16, $21, $72   ; 

- D 0 - - - 0x03E1D3 0F:11C3: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03E1D4 0F:11C4: 00        .byte $00   ; 

- D 0 - - - 0x03E1D5 0F:11C5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E1D6 0F:11C6: C2        .byte $C2   ; 

- D 0 - - - 0x03E1D7 0F:11C7: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03E1D8 0F:11C8: 00        .byte $00   ; 

- D 0 - - - 0x03E1D9 0F:11C9: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E1DA 0F:11CA: 22        .byte $22, $07, $24, $25, $26, $31, $73   ; 

- D 0 - - - 0x03E1E1 0F:11D1: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E1E2 0F:11D2: 00        .byte $00   ; 

- D 0 - - - 0x03E1E3 0F:11D3: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03E1E4 0F:11D4: D0        .byte $D0, $DF, $F7, $E5, $E9, $00, $DB, $FF, $D0, $D7, $E4   ; 

- D 0 - - - 0x03E1EF 0F:11DF: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E1F0 0F:11E0: 00        .byte $00   ; 

- D 0 - - - 0x03E1F1 0F:11E1: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E1F2 0F:11E2: 32        .byte $32, $33, $34, $35, $36, $41, $74   ; 

- D 0 - - - 0x03E1F9 0F:11E9: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03E1FA 0F:11EA: 00        .byte $00   ; 

- D 0 - - - 0x03E1FB 0F:11EB: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E1FC 0F:11EC: C2        .byte $C2   ; 

- D 0 - - - 0x03E1FD 0F:11ED: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03E1FE 0F:11EE: 00        .byte $00   ; 

- D 0 - - - 0x03E1FF 0F:11EF: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E200 0F:11F0: 42        .byte $42, $43, $44, $45, $46, $51, $75   ; 

- D 0 - - - 0x03E207 0F:11F7: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E208 0F:11F8: 00        .byte $00   ; 

- D 0 - - - 0x03E209 0F:11F9: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03E20A 0F:11FA: D7        .byte $D7, $D2, $D6, $D5, $00, $EF, $E0, $E2, $D1, $F8, $C3   ; 

- D 0 - - - 0x03E215 0F:1205: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E216 0F:1206: 00        .byte $00   ; 

- D 0 - - - 0x03E217 0F:1207: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E218 0F:1208: 52        .byte $52, $53, $54, $55, $56, $61   ; 

- D 0 - - - 0x03E21E 0F:120E: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E21F 0F:120F: 00        .byte $00   ; 

- D 0 - - - 0x03E220 0F:1210: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E221 0F:1211: 62        .byte $62, $63, $64, $65, $66, $71   ; 

- D 0 - - - 0x03E227 0F:1217: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E228 0F:1218: 00        .byte $00   ; 

- D 0 - - - 0x03E229 0F:1219: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E22A 0F:121A: 5B        .byte $5B, $5C, $5D, $5E, $5F, $5B, $7B   ; 

- D 0 - - - 0x03E231 0F:1221: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E232 0F:1222: 00        .byte $00   ; 

- D 0 - - - 0x03E233 0F:1223: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E234 0F:1224: 6B        .byte $6B, $6C, $6D, $6E, $6B, $6C, $6D   ; 

- D 0 - - - 0x03E23B 0F:122B: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E23C 0F:122C: 00        .byte $00   ; 

- D 0 - - - 0x03E23D 0F:122D: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E23E 0F:122E: 20        .byte $20, $17, $18, $19, $05, $10, $11, $12, $13   ; 

- D 0 - - - 0x03E247 0F:1237: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E248 0F:1238: 00        .byte $00   ; 

- D 0 - - - 0x03E249 0F:1239: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E24A 0F:123A: 0C        .byte $0C, $0D, $0E, $0F, $0E, $0A, $76   ; 

- D 0 - - - 0x03E251 0F:1241: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E252 0F:1242: 00        .byte $00   ; 

- D 0 - - - 0x03E253 0F:1243: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E254 0F:1244: 30        .byte $30, $27, $28, $29, $05, $10, $11, $12, $13   ; 

- D 0 - - - 0x03E25D 0F:124D: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E25E 0F:124E: 00        .byte $00   ; 

- D 0 - - - 0x03E25F 0F:124F: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E260 0F:1250: 1C        .byte $1C, $1D, $1E, $1F, $09, $1A, $77   ; 

- D 0 - - - 0x03E267 0F:1257: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E268 0F:1258: 00        .byte $00   ; 

- D 0 - - - 0x03E269 0F:1259: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E26A 0F:125A: 40        .byte $40, $37, $38, $39, $3A, $10, $11, $12, $13   ; 

- D 0 - - - 0x03E273 0F:1263: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E274 0F:1264: 00        .byte $00   ; 

- D 0 - - - 0x03E275 0F:1265: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E276 0F:1266: 2C        .byte $2C   ; 

- D 0 - - - 0x03E277 0F:1267: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E278 0F:1268: 2D        .byte $2D   ; 

- D 0 - - - 0x03E279 0F:1269: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E27A 0F:126A: 2E        .byte $2E, $2F, $2A, $78   ; 

- D 0 - - - 0x03E27E 0F:126E: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E27F 0F:126F: 00        .byte $00   ; 

- D 0 - - - 0x03E280 0F:1270: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E281 0F:1271: 50        .byte $50, $47, $48, $49, $4A, $10, $11, $12, $13   ; 

- D 0 - - - 0x03E28A 0F:127A: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E28B 0F:127B: 00        .byte $00   ; 

- D 0 - - - 0x03E28C 0F:127C: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E28D 0F:127D: 0B        .byte $0B   ; 

- D 0 - - - 0x03E28E 0F:127E: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E28F 0F:127F: 00        .byte $00   ; 

- D 0 - - - 0x03E290 0F:1280: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E291 0F:1281: 60        .byte $60, $57, $58, $59, $5A, $01, $02, $03, $04   ; 

- D 0 - - - 0x03E29A 0F:128A: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E29B 0F:128B: 00        .byte $00   ; 

- D 0 - - - 0x03E29C 0F:128C: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E29D 0F:128D: 3B        .byte $3B, $3C, $3D, $3E, $3F, $1B, $79   ; 

- D 0 - - - 0x03E2A4 0F:1294: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E2A5 0F:1295: 00        .byte $00   ; 

- D 0 - - - 0x03E2A6 0F:1296: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E2A7 0F:1297: 70        .byte $70, $67, $68, $69, $6A, $10, $11, $12, $13   ; 

- D 0 - - - 0x03E2B0 0F:12A0: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E2B1 0F:12A1: 00        .byte $00   ; 

- D 0 - - - 0x03E2B2 0F:12A2: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E2B3 0F:12A3: 4B        .byte $4B, $4C, $4D, $4E, $4F, $2B, $7A   ; 

- D 0 - - - 0x03E2BA 0F:12AA: 81        .byte con_80 + $01, $48   ; 
- D 0 - - - 0x03E2BC 0F:12AC: 00        .byte $00   ; 

- D 0 - - - 0x03E2BD 0F:12AD: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E2BE 0F:12AE: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C9   ; 

- D 0 - - - 0x03E2C7 0F:12B7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E2C8 0F:12B8: 00        .byte $00   ; 

- D 0 - - - 0x03E2C9 0F:12B9: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03E2CA 0F:12BA: B2        .byte $B2, $00, $D0, $D7, $EE, $00, $E8, $00, $F3, $D5, $DF, $00, $B2   ; 

- D 0 - - - 0x03E2D7 0F:12C7: 81        .byte con_80 + $01, $A8   ; 
- D 0 - - - 0x03E2D9 0F:12C9: 00        .byte $00   ; 

- D 0 - - - 0x03E2DA 0F:12CA: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E2DB 0F:12CB: 85        .byte $85, $65, $55, $00, $C0   ; 

- D 0 - - - 0x03E2E0 0F:12D0: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E2E1 0F:12D1: F0        .byte $F0   ; 

- D 0 - - - 0x03E2E2 0F:12D2: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E2E3 0F:12D3: B8        .byte $B8, $66, $55   ; 

- D 0 - - - 0x03E2E6 0F:12D6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E2E7 0F:12D7: 00        .byte $00   ; 

- D 0 - - - 0x03E2E8 0F:12D8: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E2E9 0F:12D9: F3        .byte $F3, $FC, $F0, $BB, $66, $55   ; 

- D 0 - - - 0x03E2EF 0F:12DF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E2F0 0F:12E0: 00        .byte $00   ; 

- D 0 - - - 0x03E2F1 0F:12E1: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E2F2 0F:12E2: 0F        .byte $0F   ; 

- D 0 - - - 0x03E2F3 0F:12E3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E2F4 0F:12E4: C0        .byte $C0   ; 

- D 0 - - - 0x03E2F5 0F:12E5: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E2F6 0F:12E6: 0A        .byte $0A   ; 

- D 0 - - - 0x03E2F7 0F:12E7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E2F8 0F:12E8: 00        .byte $00   ; 

- D 0 - - - 0x03E2F9 0F:12E9: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E2FA 0F:12EA: 15        .byte $15   ; 

- D 0 - - - 0x03E2FB 0F:12EB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E2FC 0F:12EC: 00        .byte $00   ; 

- D 0 - - - 0x03E2FD 0F:12ED: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E2FE 0F:12EE: 0C        .byte $0C   ; 

- D 0 - - - 0x03E2FF 0F:12EF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E300 0F:12F0: FF        .byte $FF   ; 

- D 0 - - - 0x03E301 0F:12F1: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E302 0F:12F2: 00        .byte $00, $CC, $F1, $F0, $FC, $FF   ; 

- D 0 - - - 0x03E308 0F:12F8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E309 0F:12F9: F0        .byte $F0   ; 

- D 0 - - - 0x03E30A 0F:12FA: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E30B 0F:12FB: 33        .byte $33, $00   ; 

- D 0 - - - 0x03E30D 0F:12FD: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E30E 0F:12FE: 0F        .byte $0F   ; 

- D 0 - - - 0x03E30F 0F:12FF: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03E310 0F:1300: 00        .byte $00   ; 

- D 0 - - - 0x03E311 0F:1301: 00        .byte $00, $00   ; end token



_off031_0x03E313_50:
- D 0 - - - 0x03E313 0F:1303: 00        .byte $00   ; 
- D 0 - - - 0x03E314 0F:1304: 20 00     .dbyt $2000

- D 0 - - - 0x03E316 0F:1306: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03E318 0F:1308: 00        .byte $00   ; 

- D 0 - - - 0x03E319 0F:1309: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E31A 0F:130A: 00        .byte $00   ; 

- D 0 - - - 0x03E31B 0F:130B: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E31C 0F:130C: 27        .byte $27   ; 

- D 0 - - - 0x03E31D 0F:130D: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E31E 0F:130E: 00        .byte $00   ; 

- D 0 - - - 0x03E31F 0F:130F: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E320 0F:1310: 5B        .byte $5B, $39, $3A   ; 

- D 0 - - - 0x03E323 0F:1313: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E324 0F:1314: 3B        .byte $3B   ; 

- D 0 - - - 0x03E325 0F:1315: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E326 0F:1316: 00        .byte $00   ; 

- D 0 - - - 0x03E327 0F:1317: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E328 0F:1318: 6B        .byte $6B, $0B, $0C, $0D, $0E, $0F   ; 

- D 0 - - - 0x03E32E 0F:131E: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E32F 0F:131F: 00        .byte $00   ; 

- D 0 - - - 0x03E330 0F:1320: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E331 0F:1321: 7B        .byte $7B, $1B, $1C, $1D, $1E, $1F   ; 

- D 0 - - - 0x03E337 0F:1327: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03E338 0F:1328: 00        .byte $00   ; 

- D 0 - - - 0x03E339 0F:1329: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E33A 0F:132A: 2B        .byte $2B, $2C, $2D, $2E, $2F   ; 

- D 0 - - - 0x03E33F 0F:132F: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03E340 0F:1330: 00        .byte $00   ; 

- D 0 - - - 0x03E341 0F:1331: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E342 0F:1332: 3C        .byte $3C, $3D, $3E, $3F   ; 

- D 0 - - - 0x03E346 0F:1336: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E347 0F:1337: 00        .byte $00   ; 

- D 0 - - - 0x03E348 0F:1338: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E349 0F:1339: B0        .byte $B0, $00, $EE, $CF, $EE, $DA, $D5   ; 

- D 0 - - - 0x03E350 0F:1340: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E351 0F:1341: CF        .byte $CF   ; 

- D 0 - - - 0x03E352 0F:1342: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03E353 0F:1343: 00        .byte $00   ; 

- D 0 - - - 0x03E354 0F:1344: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E355 0F:1345: 4B        .byte $4B, $4C, $4D, $4E, $4F   ; 

- D 0 - - - 0x03E35A 0F:134A: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03E35B 0F:134B: 00        .byte $00   ; 

- D 0 - - - 0x03E35C 0F:134C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E35D 0F:134D: C2        .byte $C2   ; 

- D 0 - - - 0x03E35E 0F:134E: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03E35F 0F:134F: 00        .byte $00   ; 

- D 0 - - - 0x03E360 0F:1350: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E361 0F:1351: 5C        .byte $5C, $5D, $5E, $5F   ; 

- D 0 - - - 0x03E365 0F:1355: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E366 0F:1356: 00        .byte $00   ; 

- D 0 - - - 0x03E367 0F:1357: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E368 0F:1358: DE        .byte $DE, $FD, $E4, $00, $E9, $D5, $E4   ; 

- D 0 - - - 0x03E36F 0F:135F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E370 0F:1360: CF        .byte $CF   ; 

- D 0 - - - 0x03E371 0F:1361: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E372 0F:1362: B1        .byte $B1   ; 

- D 0 - - - 0x03E373 0F:1363: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03E374 0F:1364: 00        .byte $00   ; 

- D 0 - - - 0x03E375 0F:1365: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E376 0F:1366: 6C        .byte $6C, $6D, $6E, $6F   ; 

- D 0 - - - 0x03E37A 0F:136A: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03E37B 0F:136B: 00        .byte $00   ; 

- D 0 - - - 0x03E37C 0F:136C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E37D 0F:136D: 7C        .byte $7C, $7D, $7E, $7F   ; 

- D 0 - - - 0x03E381 0F:1371: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03E382 0F:1372: 00        .byte $00   ; 

- D 0 - - - 0x03E383 0F:1373: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E384 0F:1374: 76        .byte $76, $77, $78, $79, $7A   ; 

- D 0 - - - 0x03E389 0F:1379: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E38A 0F:137A: 00        .byte $00   ; 

- D 0 - - - 0x03E38B 0F:137B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E38C 0F:137C: 04        .byte $04   ; 

- D 0 - - - 0x03E38D 0F:137D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E38E 0F:137E: 05        .byte $05, $06   ; 

- D 0 - - - 0x03E390 0F:1380: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E391 0F:1381: 17        .byte $17   ; 

- D 0 - - - 0x03E392 0F:1382: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03E394 0F:1384: 00        .byte $00   ; 

- D 0 - - - 0x03E395 0F:1385: 81        .byte con_80 + $01, $61   ; 
- D 0 - - - 0x03E397 0F:1387: 00        .byte $00   ; 

- D 0 - - - 0x03E398 0F:1388: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E399 0F:1389: F0        .byte $F0, $C0   ; 

- D 0 - - - 0x03E39B 0F:138B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E39C 0F:138C: F0        .byte $F0   ; 

- D 0 - - - 0x03E39D 0F:138D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E39E 0F:138E: 00        .byte $00   ; 

- D 0 - - - 0x03E39F 0F:138F: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E3A0 0F:1390: FF        .byte $FF   ; 

- D 0 - - - 0x03E3A1 0F:1391: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E3A2 0F:1392: 00        .byte $00   ; 

- D 0 - - - 0x03E3A3 0F:1393: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E3A4 0F:1394: FF        .byte $FF   ; 

- D 0 - - - 0x03E3A5 0F:1395: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E3A6 0F:1396: 00        .byte $00   ; 

- D 0 - - - 0x03E3A7 0F:1397: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E3A8 0F:1398: 0F        .byte $0F   ; 

- D 0 - - - 0x03E3A9 0F:1399: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E3AA 0F:139A: 00        .byte $00   ; 

- D 0 - - - 0x03E3AB 0F:139B: 00        .byte $00, $00   ; end token



_off031_0x03E3AD_51:
- D 0 - - - 0x03E3AD 0F:139D: 00        .byte $00   ; 
- D 0 - - - 0x03E3AE 0F:139E: 20 00     .dbyt $2000

- D 0 - - - 0x03E3B0 0F:13A0: 81        .byte con_80 + $01, $E9   ; 
- D 0 - - - 0x03E3B2 0F:13A2: 00        .byte $00   ; 

- D 0 - - - 0x03E3B3 0F:13A3: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E3B4 0F:13A4: 53        .byte $53, $54, $55, $56, $57, $58, $59, $5A   ; 

- D 0 - - - 0x03E3BC 0F:13AC: 14        .byte con_00 + $14   ; 
- D 0 - - - 0x03E3BD 0F:13AD: 00        .byte $00   ; 

- D 0 - - - 0x03E3BE 0F:13AE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E3BF 0F:13AF: 07        .byte $07   ; 

- D 0 - - - 0x03E3C0 0F:13B0: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03E3C1 0F:13B1: 33        .byte $33, $34, $63, $64, $65, $66, $67, $68, $69, $6A   ; 

- D 0 - - - 0x03E3CB 0F:13BB: 14        .byte con_00 + $14   ; 
- D 0 - - - 0x03E3CC 0F:13BC: 00        .byte $00   ; 

- D 0 - - - 0x03E3CD 0F:13BD: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E3CE 0F:13BE: 07        .byte $07, $31   ; 

- D 0 - - - 0x03E3D0 0F:13C0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E3D1 0F:13C1: 00        .byte $00   ; 

- D 0 - - - 0x03E3D2 0F:13C2: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E3D3 0F:13C3: 32        .byte $32   ; 

- D 0 - - - 0x03E3D4 0F:13C4: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E3D5 0F:13C5: 07        .byte $07   ; 

- D 0 - - - 0x03E3D6 0F:13C6: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E3D7 0F:13C7: 00        .byte $00   ; 

- D 0 - - - 0x03E3D8 0F:13C8: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E3D9 0F:13C9: 07        .byte $07, $41   ; 

- D 0 - - - 0x03E3DB 0F:13CB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E3DC 0F:13CC: 00        .byte $00   ; 

- D 0 - - - 0x03E3DD 0F:13CD: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E3DE 0F:13CE: 42        .byte $42   ; 

- D 0 - - - 0x03E3DF 0F:13CF: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E3E0 0F:13D0: 07        .byte $07   ; 

- D 0 - - - 0x03E3E1 0F:13D1: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E3E2 0F:13D2: 00        .byte $00   ; 

- D 0 - - - 0x03E3E3 0F:13D3: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E3E4 0F:13D4: 07        .byte $07, $51   ; 

- D 0 - - - 0x03E3E6 0F:13D6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E3E7 0F:13D7: 00        .byte $00   ; 

- D 0 - - - 0x03E3E8 0F:13D8: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E3E9 0F:13D9: 52        .byte $52   ; 

- D 0 - - - 0x03E3EA 0F:13DA: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E3EB 0F:13DB: 07        .byte $07   ; 

- D 0 - - - 0x03E3EC 0F:13DC: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E3ED 0F:13DD: 00        .byte $00   ; 

- D 0 - - - 0x03E3EE 0F:13DE: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E3EF 0F:13DF: 07        .byte $07, $61   ; 

- D 0 - - - 0x03E3F1 0F:13E1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E3F2 0F:13E2: 00        .byte $00   ; 

- D 0 - - - 0x03E3F3 0F:13E3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E3F4 0F:13E4: 62        .byte $62   ; 

- D 0 - - - 0x03E3F5 0F:13E5: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E3F6 0F:13E6: 07        .byte $07   ; 

- D 0 - - - 0x03E3F7 0F:13E7: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E3F8 0F:13E8: 00        .byte $00, $B0, $00, $9E, $CF, $9E, $A7, $80, $AD   ; 

- D 0 - - - 0x03E401 0F:13F1: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E402 0F:13F2: CF        .byte $CF   ; 

- D 0 - - - 0x03E403 0F:13F3: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E404 0F:13F4: 00        .byte $00, $B1   ; 

- D 0 - - - 0x03E406 0F:13F6: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E407 0F:13F7: 00        .byte $00   ; 

- D 0 - - - 0x03E408 0F:13F8: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E409 0F:13F9: 60        .byte $60, $70, $00, $71, $72   ; 

- D 0 - - - 0x03E40E 0F:13FE: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E40F 0F:13FF: 07        .byte $07   ; 

- D 0 - - - 0x03E410 0F:1400: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E411 0F:1401: 09        .byte $09, $0A   ; 

- D 0 - - - 0x03E413 0F:1403: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03E414 0F:1404: 00        .byte $00   ; 

- D 0 - - - 0x03E415 0F:1405: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03E416 0F:1406: 10        .byte $10, $11, $12, $13, $14, $15, $16, $29, $08, $18, $07, $19, $1A   ; 

- D 0 - - - 0x03E423 0F:1413: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03E424 0F:1414: 00        .byte $00   ; 

- D 0 - - - 0x03E425 0F:1415: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E426 0F:1416: 20        .byte $20, $21, $22, $23, $24, $25, $26, $2A   ; 

- D 0 - - - 0x03E42E 0F:141E: 81        .byte con_80 + $01, $DA   ; 
- D 0 - - - 0x03E430 0F:1420: 00        .byte $00   ; 

- D 0 - - - 0x03E431 0F:1421: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E432 0F:1422: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $CC   ; 

- D 0 - - - 0x03E43B 0F:142B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E43C 0F:142C: 00        .byte $00   ; 

- D 0 - - - 0x03E43D 0F:142D: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03E43E 0F:142E: B2        .byte $B2, $00, $DF, $00, $D1, $00, $D8, $00, $E1, $00, $B2   ; 

- D 0 - - - 0x03E449 0F:1439: 81        .byte con_80 + $01, $F0   ; 
- D 0 - - - 0x03E44B 0F:143B: 00        .byte $00   ; 

- D 0 - - - 0x03E44C 0F:143C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E44D 0F:143D: 50        .byte $50   ; 

- D 0 - - - 0x03E44E 0F:143E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E44F 0F:143F: 10        .byte $10   ; 

- D 0 - - - 0x03E450 0F:1440: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E451 0F:1441: 00        .byte $00   ; 

- D 0 - - - 0x03E452 0F:1442: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E453 0F:1443: 55        .byte $55   ; 

- D 0 - - - 0x03E454 0F:1444: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E455 0F:1445: 01        .byte $01   ; 

- D 0 - - - 0x03E456 0F:1446: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E457 0F:1447: 00        .byte $00   ; 

- D 0 - - - 0x03E458 0F:1448: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E459 0F:1449: 80        .byte $80   ; 

- D 0 - - - 0x03E45A 0F:144A: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E45B 0F:144B: 55        .byte $55   ; 

- D 0 - - - 0x03E45C 0F:144C: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E45D 0F:144D: FF        .byte $FF   ; 

- D 0 - - - 0x03E45E 0F:144E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E45F 0F:144F: F3        .byte $F3   ; 

- D 0 - - - 0x03E460 0F:1450: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E461 0F:1451: 00        .byte $00   ; 

- D 0 - - - 0x03E462 0F:1452: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E463 0F:1453: C0        .byte $C0   ; 

- D 0 - - - 0x03E464 0F:1454: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E465 0F:1455: F0        .byte $F0   ; 

- D 0 - - - 0x03E466 0F:1456: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E467 0F:1457: 30        .byte $30   ; 

- D 0 - - - 0x03E468 0F:1458: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03E469 0F:1459: 00        .byte $00   ; 

- D 0 - - - 0x03E46A 0F:145A: 00        .byte $00, $00   ; end token



_off031_0x03E46C_46:
- - - - - - 0x03E46C 0F:145C: 00        .byte $00   ; 
- - - - - - 0x03E46D 0F:145D: 20 00     .dbyt $2000

- - - - - - 0x03E46F 0F:145F: 81        .byte con_80 + $01, $C7   ; 
- - - - - - 0x03E471 0F:1461: 00        .byte $00   ; 

- - - - - - 0x03E472 0F:1462: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E473 0F:1463: 02        .byte $02, $03, $04, $05, $06   ; 

- - - - - - 0x03E478 0F:1468: 08        .byte con_00 + $08   ; 
- - - - - - 0x03E479 0F:1469: 07        .byte $07   ; 

- - - - - - 0x03E47A 0F:146A: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E47B 0F:146B: 0B        .byte $0B, $0C, $0D, $0E, $0F   ; 

- - - - - - 0x03E480 0F:1470: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03E481 0F:1471: 00        .byte $00   ; 

- - - - - - 0x03E482 0F:1472: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E483 0F:1473: 12        .byte $12, $13, $14, $15, $16   ; 

- - - - - - 0x03E488 0F:1478: 08        .byte con_00 + $08   ; 
- - - - - - 0x03E489 0F:1479: 07        .byte $07   ; 

- - - - - - 0x03E48A 0F:147A: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E48B 0F:147B: 1B        .byte $1B, $1C, $1D, $1E, $1F   ; 

- - - - - - 0x03E490 0F:1480: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03E491 0F:1481: 00        .byte $00   ; 

- - - - - - 0x03E492 0F:1482: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E493 0F:1483: 22        .byte $22, $23, $24, $25, $26   ; 

- - - - - - 0x03E498 0F:1488: 08        .byte con_00 + $08   ; 
- - - - - - 0x03E499 0F:1489: 07        .byte $07   ; 

- - - - - - 0x03E49A 0F:148A: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E49B 0F:148B: 2B        .byte $2B, $2C, $2D, $2E, $2F   ; 

- - - - - - 0x03E4A0 0F:1490: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03E4A1 0F:1491: 00        .byte $00   ; 

- - - - - - 0x03E4A2 0F:1492: 48        .byte con_40 + $08   ; 
- - - - - - 0x03E4A3 0F:1493: 32        .byte $32, $33, $34, $35, $36, $37, $38, $01   ; 

- - - - - - 0x03E4AB 0F:149B: 05        .byte con_00 + $05   ; 
- - - - - - 0x03E4AC 0F:149C: 07        .byte $07   ; 

- - - - - - 0x03E4AD 0F:149D: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E4AE 0F:149E: 3B        .byte $3B, $3C, $3D, $3E, $3F   ; 

- - - - - - 0x03E4B3 0F:14A3: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03E4B4 0F:14A4: 00        .byte $00   ; 

- - - - - - 0x03E4B5 0F:14A5: 4A        .byte con_40 + $0A   ; 
- - - - - - 0x03E4B6 0F:14A6: 42        .byte $42, $43, $44, $45, $46, $47, $48, $49, $4A, $77   ; 

- - - - - - 0x03E4C0 0F:14B0: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E4C1 0F:14B1: 07        .byte $07   ; 

- - - - - - 0x03E4C2 0F:14B2: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E4C3 0F:14B3: 4B        .byte $4B, $4C, $4D, $4E, $4F   ; 

- - - - - - 0x03E4C8 0F:14B8: 0F        .byte con_00 + $0F   ; 
- - - - - - 0x03E4C9 0F:14B9: 00        .byte $00   ; 

- - - - - - 0x03E4CA 0F:14BA: 43        .byte con_40 + $03   ; 
- - - - - - 0x03E4CB 0F:14BB: 53        .byte $53, $54, $55   ; 

- - - - - - 0x03E4CE 0F:14BE: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E4CF 0F:14BF: 56        .byte $56   ; 

- - - - - - 0x03E4D0 0F:14C0: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E4D1 0F:14C1: 57        .byte $57, $58, $59, $5A, $52   ; 

- - - - - - 0x03E4D6 0F:14C6: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E4D7 0F:14C7: 07        .byte $07   ; 

- - - - - - 0x03E4D8 0F:14C8: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E4D9 0F:14C9: 5B        .byte $5B, $5C, $5D, $5E, $5F   ; 

- - - - - - 0x03E4DE 0F:14CE: 10        .byte con_00 + $10   ; 
- - - - - - 0x03E4DF 0F:14CF: 00        .byte $00   ; 

- - - - - - 0x03E4E0 0F:14D0: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E4E1 0F:14D1: 53        .byte $53   ; 

- - - - - - 0x03E4E2 0F:14D2: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E4E3 0F:14D3: 67        .byte $67   ; 

- - - - - - 0x03E4E4 0F:14D4: 4C        .byte con_40 + $0C   ; 
- - - - - - 0x03E4E5 0F:14D5: 63        .byte $63, $64, $65, $07, $66, $69, $6A, $6B, $6C, $6D, $6E, $6F   ; 

- - - - - - 0x03E4F1 0F:14E1: 11        .byte con_00 + $11   ; 
- - - - - - 0x03E4F2 0F:14E2: 00        .byte $00   ; 

- - - - - - 0x03E4F3 0F:14E3: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E4F4 0F:14E4: 53        .byte $53   ; 

- - - - - - 0x03E4F5 0F:14E5: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E4F6 0F:14E6: 67        .byte $67   ; 

- - - - - - 0x03E4F7 0F:14E7: 4C        .byte con_40 + $0C   ; 
- - - - - - 0x03E4F8 0F:14E8: 73        .byte $73, $74, $75, $76, $78, $79, $7A, $7B, $7C, $7D, $7E, $7F   ; 

- - - - - - 0x03E504 0F:14F4: 30        .byte con_00 + $30   ; 
- - - - - - 0x03E505 0F:14F5: 00        .byte $00   ; 

- - - - - - 0x03E506 0F:14F6: 43        .byte con_40 + $03   ; 
- - - - - - 0x03E507 0F:14F7: C2        .byte $C2, $00, $C2   ; 

- - - - - - 0x03E50A 0F:14FA: 19        .byte con_00 + $19   ; 
- - - - - - 0x03E50B 0F:14FB: 00        .byte $00   ; 

- - - - - - 0x03E50C 0F:14FC: 49        .byte con_40 + $09   ; 
- - - - - - 0x03E50D 0F:14FD: B0        .byte $B0, $00, $D1, $D7, $DE, $00, $9A, $A7, $B2   ; 

- - - - - - 0x03E516 0F:1506: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E517 0F:1507: CD        .byte $CD   ; 

- - - - - - 0x03E518 0F:1508: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E519 0F:1509: B1        .byte $B1   ; 

- - - - - - 0x03E51A 0F:150A: 34        .byte con_00 + $34   ; 
- - - - - - 0x03E51B 0F:150B: 00        .byte $00   ; 

- - - - - - 0x03E51C 0F:150C: 54        .byte con_40 + $14   ; 
- - - - - - 0x03E51D 0F:150D: B0        .byte $B0, $00, $D4, $F9, $DF, $E0, $E8, $00, $E0, $D5, $F6, $FC, $00, $D4, $F2, $D1   ; 
- - - - - - 0x03E52D 0F:151D: DB        .byte $DB, $F6, $DD, $E2   ; 

- - - - - - 0x03E531 0F:1521: 2D        .byte con_00 + $2D   ; 
- - - - - - 0x03E532 0F:1522: 00        .byte $00   ; 

- - - - - - 0x03E533 0F:1523: 43        .byte con_40 + $03   ; 
- - - - - - 0x03E534 0F:1524: F3        .byte $F3, $FA, $D2   ; 

- - - - - - 0x03E537 0F:1527: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E538 0F:1528: CD        .byte $CD   ; 

- - - - - - 0x03E539 0F:1529: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E53A 0F:152A: B1        .byte $B1   ; 

- - - - - - 0x03E53B 0F:152B: 81        .byte con_80 + $01, $42   ; 
- - - - - - 0x03E53D 0F:152D: 00        .byte $00   ; 

- - - - - - 0x03E53E 0F:152E: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E53F 0F:152F: C2        .byte $C2   ; 

- - - - - - 0x03E540 0F:1530: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E541 0F:1531: 00        .byte $00   ; 

- - - - - - 0x03E542 0F:1532: 43        .byte con_40 + $03   ; 
- - - - - - 0x03E543 0F:1533: C2        .byte $C2, $00, $C2   ; 

- - - - - - 0x03E546 0F:1536: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E547 0F:1537: 00        .byte $00   ; 

- - - - - - 0x03E548 0F:1538: 4C        .byte con_40 + $0C   ; 
- - - - - - 0x03E549 0F:1539: F4        .byte $F4, $D8, $CD, $00, $8F, $9B, $A8, $CF, $93, $A6, $89, $AD   ; 

- - - - - - 0x03E555 0F:1545: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E556 0F:1546: CD        .byte $CD   ; 

- - - - - - 0x03E557 0F:1547: 81        .byte con_80 + $01, $D2   ; 
- - - - - - 0x03E559 0F:1549: 00        .byte $00   ; 

- - - - - - 0x03E55A 0F:154A: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E55B 0F:154B: 40        .byte $40   ; 

- - - - - - 0x03E55C 0F:154C: 04        .byte con_00 + $04   ; 
- - - - - - 0x03E55D 0F:154D: 50        .byte $50   ; 

- - - - - - 0x03E55E 0F:154E: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E55F 0F:154F: 10        .byte $10   ; 

- - - - - - 0x03E560 0F:1550: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E561 0F:1551: 00        .byte $00   ; 

- - - - - - 0x03E562 0F:1552: 43        .byte con_40 + $03   ; 
- - - - - - 0x03E563 0F:1553: F4        .byte $F4, $F5, $75   ; 

- - - - - - 0x03E566 0F:1556: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E567 0F:1557: 55        .byte $55   ; 

- - - - - - 0x03E568 0F:1558: 4B        .byte con_40 + $0B   ; 
- - - - - - 0x03E569 0F:1559: 11        .byte $11, $00, $C0, $0C, $FF, $F7, $05, $F6, $FD, $FF, $CC   ; 

- - - - - - 0x03E574 0F:1564: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E575 0F:1565: FF        .byte $FF   ; 

- - - - - - 0x03E576 0F:1566: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E577 0F:1567: F3        .byte $F3   ; 

- - - - - - 0x03E578 0F:1568: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E579 0F:1569: FF        .byte $FF   ; 

- - - - - - 0x03E57A 0F:156A: 44        .byte con_40 + $04   ; 
- - - - - - 0x03E57B 0F:156B: 0C        .byte $0C, $CC, $FF, $FC   ; 

- - - - - - 0x03E57F 0F:156F: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E580 0F:1570: FF        .byte $FF   ; 

- - - - - - 0x03E581 0F:1571: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E582 0F:1572: 33        .byte $33   ; 

- - - - - - 0x03E583 0F:1573: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E584 0F:1574: 00        .byte $00   ; 

- - - - - - 0x03E585 0F:1575: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E586 0F:1576: 0C        .byte $0C   ; 

- - - - - - 0x03E587 0F:1577: 05        .byte con_00 + $05   ; 
- - - - - - 0x03E588 0F:1578: 0F        .byte $0F   ; 

- - - - - - 0x03E589 0F:1579: 08        .byte con_00 + $08   ; 
- - - - - - 0x03E58A 0F:157A: 00        .byte $00   ; 

- - - - - - 0x03E58B 0F:157B: 00        .byte $00, $00   ; end token



_off031_0x03E58D_47:
- D 0 - - - 0x03E58D 0F:157D: 00        .byte $00   ; 
- D 0 - - - 0x03E58E 0F:157E: 20 00     .dbyt $2000

- D 0 - - - 0x03E590 0F:1580: 81        .byte con_80 + $01, $C9   ; 
- D 0 - - - 0x03E592 0F:1582: 00        .byte $00   ; 

- D 0 - - - 0x03E593 0F:1583: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E594 0F:1584: 02        .byte $02, $03, $04, $05, $06   ; 

- D 0 - - - 0x03E599 0F:1589: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E59A 0F:158A: 07        .byte $07   ; 

- D 0 - - - 0x03E59B 0F:158B: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03E59C 0F:158C: 00        .byte $00   ; 

- D 0 - - - 0x03E59D 0F:158D: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E59E 0F:158E: 12        .byte $12, $13, $14, $15, $16   ; 

- D 0 - - - 0x03E5A3 0F:1593: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E5A4 0F:1594: 07        .byte $07   ; 

- D 0 - - - 0x03E5A5 0F:1595: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03E5A6 0F:1596: 00        .byte $00   ; 

- D 0 - - - 0x03E5A7 0F:1597: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E5A8 0F:1598: 22        .byte $22, $23, $24, $25, $26   ; 

- D 0 - - - 0x03E5AD 0F:159D: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E5AE 0F:159E: 07        .byte $07   ; 

- D 0 - - - 0x03E5AF 0F:159F: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03E5B0 0F:15A0: 00        .byte $00   ; 

- D 0 - - - 0x03E5B1 0F:15A1: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E5B2 0F:15A2: 32        .byte $32, $33, $34, $35, $36, $37, $38, $01   ; 

- D 0 - - - 0x03E5BA 0F:15AA: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E5BB 0F:15AB: 07        .byte $07   ; 

- D 0 - - - 0x03E5BC 0F:15AC: 15        .byte con_00 + $15   ; 
- D 0 - - - 0x03E5BD 0F:15AD: 00        .byte $00   ; 

- D 0 - - - 0x03E5BE 0F:15AE: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03E5BF 0F:15AF: 42        .byte $42, $43, $44, $45, $46, $47, $48, $49, $4A, $77, $07   ; 

- D 0 - - - 0x03E5CA 0F:15BA: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E5CB 0F:15BB: 00        .byte $00   ; 

- D 0 - - - 0x03E5CC 0F:15BC: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E5CD 0F:15BD: 53        .byte $53, $54, $55   ; 

- D 0 - - - 0x03E5D0 0F:15C0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E5D1 0F:15C1: 56        .byte $56   ; 

- D 0 - - - 0x03E5D2 0F:15C2: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E5D3 0F:15C3: 57        .byte $57, $58, $59, $5A, $52   ; 

- D 0 - - - 0x03E5D8 0F:15C8: 17        .byte con_00 + $17   ; 
- D 0 - - - 0x03E5D9 0F:15C9: 00        .byte $00   ; 

- D 0 - - - 0x03E5DA 0F:15CA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E5DB 0F:15CB: 53        .byte $53   ; 

- D 0 - - - 0x03E5DC 0F:15CC: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E5DD 0F:15CD: 67        .byte $67   ; 

- D 0 - - - 0x03E5DE 0F:15CE: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E5DF 0F:15CF: 63        .byte $63, $64, $65, $07, $62   ; 

- D 0 - - - 0x03E5E4 0F:15D4: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03E5E5 0F:15D5: 00        .byte $00   ; 

- D 0 - - - 0x03E5E6 0F:15D6: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E5E7 0F:15D7: 53        .byte $53   ; 

- D 0 - - - 0x03E5E8 0F:15D8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E5E9 0F:15D9: 67        .byte $67   ; 

- D 0 - - - 0x03E5EA 0F:15DA: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E5EB 0F:15DB: 73        .byte $73, $74, $75, $76, $72   ; 

- D 0 - - - 0x03E5F0 0F:15E0: 81        .byte con_80 + $01, $44   ; 
- D 0 - - - 0x03E5F2 0F:15E2: 00        .byte $00   ; 

- D 0 - - - 0x03E5F3 0F:15E3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E5F4 0F:15E4: C2        .byte $C2   ; 

- D 0 - - - 0x03E5F5 0F:15E5: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03E5F6 0F:15E6: 00        .byte $00   ; 

- D 0 - - - 0x03E5F7 0F:15E7: 55        .byte con_40 + $15   ; 
- D 0 - - - 0x03E5F8 0F:15E8: B0        .byte $B0, $00, $D4, $F9, $E9, $00, $EE, $D8, $F8, $FB, $D8, $E5, $E9, $00, $D1, $D5   ; 
- D 0 - - - 0x03E608 0F:15F8: E4        .byte $E4, $D1, $FD, $DF, $CD   ; 

- D 0 - - - 0x03E60D 0F:15FD: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03E60E 0F:15FE: 00        .byte $00   ; 

- D 0 - - - 0x03E60F 0F:15FF: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E610 0F:1600: C2        .byte $C2   ; 

- D 0 - - - 0x03E611 0F:1601: 1D        .byte con_00 + $1D   ; 
- D 0 - - - 0x03E612 0F:1602: 00        .byte $00   ; 

- D 0 - - - 0x03E613 0F:1603: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03E614 0F:1604: D5        .byte $D5, $D7, $D9, $DB, $FA, $00, $D5, $D7, $E3, $D2, $D5   ; 

- D 0 - - - 0x03E61F 0F:160F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E620 0F:1610: CD        .byte $CD   ; 

- D 0 - - - 0x03E621 0F:1611: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E622 0F:1612: B1        .byte $B1   ; 

- D 0 - - - 0x03E623 0F:1613: 81        .byte con_80 + $01, $79   ; 
- D 0 - - - 0x03E625 0F:1615: 00        .byte $00   ; 

- D 0 - - - 0x03E626 0F:1616: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E627 0F:1617: C2        .byte $C2   ; 

- D 0 - - - 0x03E628 0F:1618: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03E629 0F:1619: 00        .byte $00   ; 

- D 0 - - - 0x03E62A 0F:161A: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03E62B 0F:161B: F4        .byte $F4, $D8, $CD, $00, $9A, $A7, $B2, $CF, $A7, $B2   ; 

- D 0 - - - 0x03E635 0F:1625: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E636 0F:1626: CD        .byte $CD   ; 

- D 0 - - - 0x03E637 0F:1627: 81        .byte con_80 + $01, $D4   ; 
- D 0 - - - 0x03E639 0F:1629: 00        .byte $00   ; 

- D 0 - - - 0x03E63A 0F:162A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E63B 0F:162B: 44        .byte $44, $51   ; 

- D 0 - - - 0x03E63D 0F:162D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E63E 0F:162E: 50        .byte $50   ; 

- D 0 - - - 0x03E63F 0F:162F: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E640 0F:1630: 00        .byte $00   ; 

- D 0 - - - 0x03E641 0F:1631: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E642 0F:1632: CC        .byte $CC   ; 

- D 0 - - - 0x03E643 0F:1633: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E644 0F:1634: F5        .byte $F5   ; 

- D 0 - - - 0x03E645 0F:1635: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E646 0F:1636: 55        .byte $55   ; 

- D 0 - - - 0x03E647 0F:1637: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E648 0F:1638: 00        .byte $00   ; 

- D 0 - - - 0x03E649 0F:1639: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E64A 0F:163A: CC        .byte $CC, $3F, $05, $C0, $F0, $30, $00, $CF   ; 

- D 0 - - - 0x03E652 0F:1642: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E653 0F:1643: FF        .byte $FF   ; 

- D 0 - - - 0x03E654 0F:1644: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E655 0F:1645: 0F        .byte $0F, $03, $30   ; 

- D 0 - - - 0x03E658 0F:1648: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E659 0F:1649: 00        .byte $00   ; 

- D 0 - - - 0x03E65A 0F:164A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E65B 0F:164B: F1        .byte $F1   ; 

- D 0 - - - 0x03E65C 0F:164C: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E65D 0F:164D: F0        .byte $F0   ; 

- D 0 - - - 0x03E65E 0F:164E: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E65F 0F:164F: 30        .byte $30, $00, $0C   ; 

- D 0 - - - 0x03E662 0F:1652: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03E663 0F:1653: 0F        .byte $0F   ; 

- D 0 - - - 0x03E664 0F:1654: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E665 0F:1655: 03        .byte $03   ; 

- D 0 - - - 0x03E666 0F:1656: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E667 0F:1657: 00        .byte $00   ; 

- D 0 - - - 0x03E668 0F:1658: 00        .byte $00, $00   ; end token



_off031_0x03E66A_48:
- - - - - - 0x03E66A 0F:165A: 00        .byte $00   ; 
- - - - - - 0x03E66B 0F:165B: 20 00     .dbyt $2000

- - - - - - 0x03E66D 0F:165D: 81        .byte con_80 + $01, $CA   ; 
- - - - - - 0x03E66F 0F:165F: 00        .byte $00   ; 

- - - - - - 0x03E670 0F:1660: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E671 0F:1661: 07        .byte $07   ; 

- - - - - - 0x03E672 0F:1662: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E673 0F:1663: 0B        .byte $0B, $0C, $0D, $0E, $0F   ; 

- - - - - - 0x03E678 0F:1668: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E679 0F:1669: 00        .byte $00   ; 

- - - - - - 0x03E67A 0F:166A: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E67B 0F:166B: 07        .byte $07   ; 

- - - - - - 0x03E67C 0F:166C: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E67D 0F:166D: 1B        .byte $1B, $1C, $1D, $1E, $1F   ; 

- - - - - - 0x03E682 0F:1672: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E683 0F:1673: 00        .byte $00   ; 

- - - - - - 0x03E684 0F:1674: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E685 0F:1675: 07        .byte $07   ; 

- - - - - - 0x03E686 0F:1676: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E687 0F:1677: 2B        .byte $2B, $2C, $2D, $2E, $2F   ; 

- - - - - - 0x03E68C 0F:167C: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E68D 0F:167D: 00        .byte $00   ; 

- - - - - - 0x03E68E 0F:167E: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E68F 0F:167F: 07        .byte $07   ; 

- - - - - - 0x03E690 0F:1680: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E691 0F:1681: 3B        .byte $3B, $3C, $3D, $3E, $3F   ; 

- - - - - - 0x03E696 0F:1686: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E697 0F:1687: 00        .byte $00   ; 

- - - - - - 0x03E698 0F:1688: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E699 0F:1689: 07        .byte $07   ; 

- - - - - - 0x03E69A 0F:168A: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E69B 0F:168B: 4B        .byte $4B, $4C, $4D, $4E, $4F   ; 

- - - - - - 0x03E6A0 0F:1690: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E6A1 0F:1691: 00        .byte $00   ; 

- - - - - - 0x03E6A2 0F:1692: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E6A3 0F:1693: 07        .byte $07   ; 

- - - - - - 0x03E6A4 0F:1694: 45        .byte con_40 + $05   ; 
- - - - - - 0x03E6A5 0F:1695: 5B        .byte $5B, $5C, $5D, $5E, $5F   ; 

- - - - - - 0x03E6AA 0F:169A: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E6AB 0F:169B: 00        .byte $00   ; 

- - - - - - 0x03E6AC 0F:169C: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E6AD 0F:169D: 07        .byte $07   ; 

- - - - - - 0x03E6AE 0F:169E: 48        .byte con_40 + $08   ; 
- - - - - - 0x03E6AF 0F:169F: 68        .byte $68, $69, $6A, $6B, $6C, $6D, $6E, $6F   ; 

- - - - - - 0x03E6B7 0F:16A7: 15        .byte con_00 + $15   ; 
- - - - - - 0x03E6B8 0F:16A8: 00        .byte $00   ; 

- - - - - - 0x03E6B9 0F:16A9: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E6BA 0F:16AA: 07        .byte $07   ; 

- - - - - - 0x03E6BB 0F:16AB: 48        .byte con_40 + $08   ; 
- - - - - - 0x03E6BC 0F:16AC: 78        .byte $78, $79, $7A, $7B, $7C, $7D, $7E, $7F   ; 

- - - - - - 0x03E6C4 0F:16B4: 32        .byte con_00 + $32   ; 
- - - - - - 0x03E6C5 0F:16B5: 00        .byte $00   ; 

- - - - - - 0x03E6C6 0F:16B6: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E6C7 0F:16B7: C2        .byte $C2   ; 

- - - - - - 0x03E6C8 0F:16B8: 07        .byte con_00 + $07   ; 
- - - - - - 0x03E6C9 0F:16B9: 00        .byte $00   ; 

- - - - - - 0x03E6CA 0F:16BA: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E6CB 0F:16BB: BF        .byte $BF   ; 

- - - - - - 0x03E6CC 0F:16BC: 06        .byte con_00 + $06   ; 
- - - - - - 0x03E6CD 0F:16BD: 00        .byte $00   ; 

- - - - - - 0x03E6CE 0F:16BE: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E6CF 0F:16BF: C2        .byte $C2   ; 

- - - - - - 0x03E6D0 0F:16C0: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03E6D1 0F:16C1: 00        .byte $00   ; 

- - - - - - 0x03E6D2 0F:16C2: 54        .byte con_40 + $14   ; 
- - - - - - 0x03E6D3 0F:16C3: B0        .byte $B0, $00, $DB, $FF, $D0, $D7, $E4, $00, $D8, $FD, $ED, $D2, $FC, $00, $D2, $E0   ; 
- - - - - - 0x03E6E3 0F:16D3: F3        .byte $F3, $EB, $FE, $E2   ; 

- - - - - - 0x03E6E7 0F:16D7: 0F        .byte con_00 + $0F   ; 
- - - - - - 0x03E6E8 0F:16D8: 00        .byte $00   ; 

- - - - - - 0x03E6E9 0F:16D9: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E6EA 0F:16DA: C2        .byte $C2   ; 

- - - - - - 0x03E6EB 0F:16DB: 04        .byte con_00 + $04   ; 
- - - - - - 0x03E6EC 0F:16DC: 00        .byte $00   ; 

- - - - - - 0x03E6ED 0F:16DD: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E6EE 0F:16DE: C2        .byte $C2   ; 

- - - - - - 0x03E6EF 0F:16DF: 18        .byte con_00 + $18   ; 
- - - - - - 0x03E6F0 0F:16E0: 00        .byte $00   ; 

- - - - - - 0x03E6F1 0F:16E1: 50        .byte con_40 + $10   ; 
- - - - - - 0x03E6F2 0F:16E2: F3        .byte $F3, $F8, $DD, $CD, $00, $D5, $D7, $D9, $DB, $FA, $00, $D5, $D7, $E3, $D2, $D5   ; 

- - - - - - 0x03E702 0F:16F2: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E703 0F:16F3: CD        .byte $CD   ; 

- - - - - - 0x03E704 0F:16F4: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E705 0F:16F5: B1        .byte $B1   ; 

- - - - - - 0x03E706 0F:16F6: 81        .byte con_80 + $01, $74   ; 
- - - - - - 0x03E708 0F:16F8: 00        .byte $00   ; 

- - - - - - 0x03E709 0F:16F9: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E70A 0F:16FA: C2        .byte $C2   ; 

- - - - - - 0x03E70B 0F:16FB: 1B        .byte con_00 + $1B   ; 
- - - - - - 0x03E70C 0F:16FC: 00        .byte $00   ; 

- - - - - - 0x03E70D 0F:16FD: 4A        .byte con_40 + $0A   ; 
- - - - - - 0x03E70E 0F:16FE: F4        .byte $F4, $D8, $CD, $00, $8B, $9F, $B2, $CF, $A7, $B2   ; 

- - - - - - 0x03E718 0F:1708: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E719 0F:1709: CD        .byte $CD   ; 

- - - - - - 0x03E71A 0F:170A: 81        .byte con_80 + $01, $D5   ; 
- - - - - - 0x03E71C 0F:170C: 00        .byte $00   ; 

- - - - - - 0x03E71D 0F:170D: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E71E 0F:170E: 40        .byte $40   ; 

- - - - - - 0x03E71F 0F:170F: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E720 0F:1710: 50        .byte $50   ; 

- - - - - - 0x03E721 0F:1711: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E722 0F:1712: 10        .byte $10   ; 

- - - - - - 0x03E723 0F:1713: 04        .byte con_00 + $04   ; 
- - - - - - 0x03E724 0F:1714: 00        .byte $00   ; 

- - - - - - 0x03E725 0F:1715: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E726 0F:1716: 44        .byte $44   ; 

- - - - - - 0x03E727 0F:1717: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E728 0F:1718: 55        .byte $55   ; 

- - - - - - 0x03E729 0F:1719: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E72A 0F:171A: 11        .byte $11   ; 

- - - - - - 0x03E72B 0F:171B: 03        .byte con_00 + $03   ; 
- - - - - - 0x03E72C 0F:171C: 00        .byte $00   ; 

- - - - - - 0x03E72D 0F:171D: 49        .byte con_40 + $09   ; 
- - - - - - 0x03E72E 0F:171E: C0        .byte $C0, $C7, $F5, $06, $C1, $C0, $30, $00, $CF   ; 

- - - - - - 0x03E737 0F:1727: 04        .byte con_00 + $04   ; 
- - - - - - 0x03E738 0F:1728: FF        .byte $FF   ; 

- - - - - - 0x03E739 0F:1729: 42        .byte con_40 + $02   ; 
- - - - - - 0x03E73A 0F:172A: 33        .byte $33, $30   ; 

- - - - - - 0x03E73C 0F:172C: 02        .byte con_00 + $02   ; 
- - - - - - 0x03E73D 0F:172D: 00        .byte $00   ; 

- - - - - - 0x03E73E 0F:172E: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E73F 0F:172F: F1        .byte $F1   ; 

- - - - - - 0x03E740 0F:1730: 04        .byte con_00 + $04   ; 
- - - - - - 0x03E741 0F:1731: F0        .byte $F0   ; 

- - - - - - 0x03E742 0F:1732: 43        .byte con_40 + $03   ; 
- - - - - - 0x03E743 0F:1733: 30        .byte $30, $00, $0C   ; 

- - - - - - 0x03E746 0F:1736: 05        .byte con_00 + $05   ; 
- - - - - - 0x03E747 0F:1737: 0F        .byte $0F   ; 

- - - - - - 0x03E748 0F:1738: 01        .byte con_00 + $01   ; 
- - - - - - 0x03E749 0F:1739: 03        .byte $03   ; 

- - - - - - 0x03E74A 0F:173A: 08        .byte con_00 + $08   ; 
- - - - - - 0x03E74B 0F:173B: 00        .byte $00   ; 

- - - - - - 0x03E74C 0F:173C: 00        .byte $00, $00   ; end token



_off031_0x03E74E_3D:
_off031_0x03E74E_3E:
_off031_0x03E74E_3F:
_off031_0x03E74E_40:
- D 0 - - - 0x03E74E 0F:173E: 00        .byte $00   ; 
- D 0 - - - 0x03E74F 0F:173F: 20 00     .dbyt $2000

- D 0 - - - 0x03E751 0F:1741: 81        .byte con_80 + $01, $74   ; 
- D 0 - - - 0x03E753 0F:1743: 00        .byte $00   ; 

- D 0 - - - 0x03E754 0F:1744: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E755 0F:1745: C2        .byte $C2   ; 

- D 0 - - - 0x03E756 0F:1746: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03E757 0F:1747: 00        .byte $00   ; 

- D 0 - - - 0x03E758 0F:1748: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E759 0F:1749: C4        .byte $C4, $CC   ; 

- D 0 - - - 0x03E75B 0F:174B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E75C 0F:174C: B3        .byte $B3   ; 

- D 0 - - - 0x03E75D 0F:174D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E75E 0F:174E: E7        .byte $E7, $FD   ; 

- D 0 - - - 0x03E760 0F:1750: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E761 0F:1751: CF        .byte $CF   ; 

- D 0 - - - 0x03E762 0F:1752: 52        .byte con_40 + $12   ; 
- D 0 - - - 0x03E763 0F:1753: C3        .byte $C3, $00, $D5, $D7, $DD, $FD, $DE, $D2, $D9, $00, $E8, $00, $95, $BD, $B2, $A5   ; 
- D 0 - - - 0x03E773 0F:1763: B2        .byte $B2, $87   ; 

- D 0 - - - 0x03E775 0F:1765: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E776 0F:1766: 00        .byte $00   ; 

- D 0 - - - 0x03E777 0F:1767: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E778 0F:1768: C2        .byte $C2   ; 

- D 0 - - - 0x03E779 0F:1769: 1D        .byte con_00 + $1D   ; 
- D 0 - - - 0x03E77A 0F:176A: 00        .byte $00   ; 

- D 0 - - - 0x03E77B 0F:176B: 59        .byte con_40 + $19   ; 
- D 0 - - - 0x03E77C 0F:176C: E9        .byte $E9, $00, $ED, $D2, $F7, $C1, $D7, $E5, $F5, $FE, $E2, $DB, $E9, $D1, $DA, $F9   ; 
- D 0 - - - 0x03E78C 0F:177C: E2        .byte $E2, $D1, $DF, $C3, $00, $E7, $FD, $E7, $FD   ; 

- D 0 - - - 0x03E795 0F:1785: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03E796 0F:1786: 00        .byte $00   ; 

- D 0 - - - 0x03E797 0F:1787: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E798 0F:1788: C2        .byte $C2   ; 

- D 0 - - - 0x03E799 0F:1789: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E79A 0F:178A: 00        .byte $00   ; 

- D 0 - - - 0x03E79B 0F:178B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E79C 0F:178C: C2        .byte $C2   ; 

- D 0 - - - 0x03E79D 0F:178D: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E79E 0F:178E: 00        .byte $00   ; 

- D 0 - - - 0x03E79F 0F:178F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E7A0 0F:1790: C2        .byte $C2   ; 

- D 0 - - - 0x03E7A1 0F:1791: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E7A2 0F:1792: 00        .byte $00   ; 

- D 0 - - - 0x03E7A3 0F:1793: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E7A4 0F:1794: C2        .byte $C2   ; 

- D 0 - - - 0x03E7A5 0F:1795: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E7A6 0F:1796: 00        .byte $00   ; 

- D 0 - - - 0x03E7A7 0F:1797: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x03E7A8 0F:1798: D6        .byte $D6, $C1, $DF, $D1, $E5, $E4, $FE, $E2, $D1, $D7, $00, $ED, $D2, $F7, $C1, $D7   ; 
- D 0 - - - 0x03E7B8 0F:17A8: DE        .byte $DE, $DB, $D6, $00, $E2, $00, $D0, $FE, $DF, $D5   ; 

- D 0 - - - 0x03E7C2 0F:17B2: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03E7C3 0F:17B3: 00        .byte $00   ; 

- D 0 - - - 0x03E7C4 0F:17B4: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E7C5 0F:17B5: C2        .byte $C2   ; 

- D 0 - - - 0x03E7C6 0F:17B6: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E7C7 0F:17B7: 00        .byte $00   ; 

- D 0 - - - 0x03E7C8 0F:17B8: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E7C9 0F:17B9: C2        .byte $C2   ; 

- D 0 - - - 0x03E7CA 0F:17BA: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03E7CB 0F:17BB: 00        .byte $00   ; 

- D 0 - - - 0x03E7CC 0F:17BC: 5D        .byte con_40 + $1D   ; 
- D 0 - - - 0x03E7CD 0F:17BD: EB        .byte $EB, $DF, $F7, $E8, $FB, $D5, $F2, $E8, $E5, $F5, $FE, $E2, $F2, $FA, $D7, $F2   ; 
- D 0 - - - 0x03E7DD 0F:17CD: 00        .byte $00, $D7, $DC, $DA, $F9, $E2, $00, $D1, $FE, $DF, $E8, $DF, $C3   ; 

- D 0 - - - 0x03E7EA 0F:17DA: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03E7EB 0F:17DB: 00        .byte $00   ; 

- D 0 - - - 0x03E7EC 0F:17DC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E7ED 0F:17DD: C2        .byte $C2   ; 

- D 0 - - - 0x03E7EE 0F:17DE: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03E7EF 0F:17DF: 00        .byte $00   ; 

- D 0 - - - 0x03E7F0 0F:17E0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E7F1 0F:17E1: C2        .byte $C2   ; 

- D 0 - - - 0x03E7F2 0F:17E2: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03E7F3 0F:17E3: 00        .byte $00   ; 

- D 0 - - - 0x03E7F4 0F:17E4: 5B        .byte con_40 + $1B   ; 
- D 0 - - - 0x03E7F5 0F:17E5: EB        .byte $EB, $DF, $F7, $E8, $00, $E4, $E9, $00, $B0, $9A, $A7, $B2, $CF, $A7, $B2, $B1   ; 
- D 0 - - - 0x03E805 0F:17F5: 00        .byte $00, $E3, $00, $B0, $8B, $9F, $B2, $CF, $A7, $B2, $B1   ; 

- D 0 - - - 0x03E810 0F:1800: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03E811 0F:1801: 00        .byte $00   ; 

- D 0 - - - 0x03E812 0F:1802: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E813 0F:1803: C2        .byte $C2   ; 

- D 0 - - - 0x03E814 0F:1804: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E815 0F:1805: 00        .byte $00   ; 

- D 0 - - - 0x03E816 0F:1806: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E817 0F:1807: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03E81A 0F:180A: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03E81B 0F:180B: 00        .byte $00   ; 

- D 0 - - - 0x03E81C 0F:180C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E81D 0F:180D: C2        .byte $C2   ; 

- D 0 - - - 0x03E81E 0F:180E: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E81F 0F:180F: 00        .byte $00   ; 

- D 0 - - - 0x03E820 0F:1810: 59        .byte con_40 + $19   ; 
- D 0 - - - 0x03E821 0F:1811: EA        .byte $EA, $E3, $E9, $D5, $F9, $F6, $FC, $00, $B0, $8F, $9B, $A8, $00, $93, $A6, $89   ; 
- D 0 - - - 0x03E831 0F:1821: AD        .byte $AD, $B1, $00, $E3, $00, $F5, $FD, $DF, $C3   ; 

- D 0 - - - 0x03E83A 0F:182A: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E83B 0F:182B: 00        .byte $00   ; 

- D 0 - - - 0x03E83C 0F:182C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E83D 0F:182D: C2        .byte $C2   ; 

- D 0 - - - 0x03E83E 0F:182E: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03E83F 0F:182F: 00        .byte $00   ; 

- D 0 - - - 0x03E840 0F:1830: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E841 0F:1831: C2        .byte $C2   ; 

- D 0 - - - 0x03E842 0F:1832: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E843 0F:1833: 00        .byte $00   ; 

- D 0 - - - 0x03E844 0F:1834: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E845 0F:1835: C2        .byte $C2   ; 

- D 0 - - - 0x03E846 0F:1836: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03E847 0F:1837: 00        .byte $00   ; 

- D 0 - - - 0x03E848 0F:1838: 5B        .byte con_40 + $1B   ; 
- D 0 - - - 0x03E849 0F:1839: DF        .byte $DF, $D5, $00, $D5, $F9, $F6, $E5, $F2, $00, $DB, $C0, $D7, $E2, $D6, $D5, $D1   ; 
- D 0 - - - 0x03E859 0F:1849: DF        .byte $DF, $E8, $DF, $C3, $00, $DE, $E8, $00, $DB, $C0, $D7   ; 

- D 0 - - - 0x03E864 0F:1854: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03E865 0F:1855: 00        .byte $00   ; 

- D 0 - - - 0x03E866 0F:1856: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E867 0F:1857: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03E86A 0F:185A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E86B 0F:185B: 00        .byte $00   ; 

- D 0 - - - 0x03E86C 0F:185C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E86D 0F:185D: C2        .byte $C2   ; 

- D 0 - - - 0x03E86E 0F:185E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E86F 0F:185F: 00        .byte $00   ; 

- D 0 - - - 0x03E870 0F:1860: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E871 0F:1861: C2        .byte $C2   ; 

- D 0 - - - 0x03E872 0F:1862: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03E873 0F:1863: 00        .byte $00   ; 

- D 0 - - - 0x03E874 0F:1864: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E875 0F:1865: E2        .byte $E2, $D6, $E3, $E8   ; 

- D 0 - - - 0x03E879 0F:1869: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E87A 0F:186A: DF        .byte $DF   ; 

- D 0 - - - 0x03E87B 0F:186B: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E87C 0F:186C: D5        .byte $D5, $D1, $E9, $00, $DF, $D1, $DF, $D1   ; 

- D 0 - - - 0x03E884 0F:1874: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E885 0F:1875: E1        .byte $E1   ; 

- D 0 - - - 0x03E886 0F:1876: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03E887 0F:1877: D1        .byte $D1, $E2, $D6, $DF, $D9, $E3, $E2, $D0, $F7, $00   ; 

- D 0 - - - 0x03E891 0F:1881: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E892 0F:1882: DF        .byte $DF   ; 

- D 0 - - - 0x03E893 0F:1883: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03E894 0F:1884: 00        .byte $00   ; 

- D 0 - - - 0x03E895 0F:1885: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E896 0F:1886: C2        .byte $C2   ; 

- D 0 - - - 0x03E897 0F:1887: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03E898 0F:1888: 00        .byte $00   ; 

- D 0 - - - 0x03E899 0F:1889: 51        .byte con_40 + $11   ; 
- D 0 - - - 0x03E89A 0F:188A: D5        .byte $D5, $D1, $D0, $D2, $D9, $E3, $E9, $00, $D2, $FD, $F1, $D1, $00, $E4, $E8, $DF   ; 
- D 0 - - - 0x03E8AA 0F:189A: C3        .byte $C3   ; 

- D 0 - - - 0x03E8AB 0F:189B: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E8AC 0F:189C: 00        .byte $00   ; 

- D 0 - - - 0x03E8AD 0F:189D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E8AE 0F:189E: C2        .byte $C2   ; 

- D 0 - - - 0x03E8AF 0F:189F: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E8B0 0F:18A0: 00        .byte $00   ; 

- D 0 - - - 0x03E8B1 0F:18A1: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E8B2 0F:18A2: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03E8B5 0F:18A5: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03E8B6 0F:18A6: 00        .byte $00   ; 

- D 0 - - - 0x03E8B7 0F:18A7: 57        .byte con_40 + $17   ; 
- D 0 - - - 0x03E8B8 0F:18A8: DE        .byte $DE, $DB, $E2, $00, $D0, $F8, $EA, $00, $B0, $9A, $A7, $B2, $B1, $00, $E8, $00   ; 
- D 0 - - - 0x03E8C8 0F:18B8: D9        .byte $D9, $D1, $EA, $E3, $E2, $D0, $F8   ; 

- D 0 - - - 0x03E8CF 0F:18BF: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03E8D0 0F:18C0: 00        .byte $00   ; 

- D 0 - - - 0x03E8D1 0F:18C1: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E8D2 0F:18C2: C2        .byte $C2   ; 

- D 0 - - - 0x03E8D3 0F:18C3: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03E8D4 0F:18C4: 00        .byte $00   ; 

- D 0 - - - 0x03E8D5 0F:18C5: 52        .byte con_40 + $12   ; 
- D 0 - - - 0x03E8D6 0F:18C6: B0        .byte $B0, $9E, $A7, $80, $AD, $B1, $00, $D5, $00, $F3, $E1, $E5, $00, $D9, $FA, $DA   ; 
- D 0 - - - 0x03E8E6 0F:18D6: F9        .byte $F9, $DF   ; 

- D 0 - - - 0x03E8E8 0F:18D8: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E8E9 0F:18D9: CF        .byte $CF   ; 

- D 0 - - - 0x03E8EA 0F:18DA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E8EB 0F:18DB: C3        .byte $C3   ; 

- D 0 - - - 0x03E8EC 0F:18DC: 81        .byte con_80 + $01, $A8   ; 
- D 0 - - - 0x03E8EE 0F:18DE: 00        .byte $00   ; 

- D 0 - - - 0x03E8EF 0F:18DF: 38        .byte con_00 + $38   ; 
- D 0 - - - 0x03E8F0 0F:18E0: FF        .byte $FF   ; 

- D 0 - - - 0x03E8F1 0F:18E1: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E8F2 0F:18E2: 0F        .byte $0F   ; 

- D 0 - - - 0x03E8F3 0F:18E3: 00        .byte $00, $00   ; end token



_off031_0x03E8F5_4B:
- D 0 - - - 0x03E8F5 0F:18E5: 00        .byte $00   ; 
- D 0 - - - 0x03E8F6 0F:18E6: 20 00     .dbyt $2000

- D 0 - - - 0x03E8F8 0F:18E8: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03E8FA 0F:18EA: 00        .byte $00   ; 

- D 0 - - - 0x03E8FB 0F:18EB: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03E8FD 0F:18ED: 00        .byte $00   ; 

- D 0 - - - 0x03E8FE 0F:18EE: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03E8FF 0F:18EF: 00        .byte $00   ; 

- D 0 - - - 0x03E900 0F:18F0: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E901 0F:18F1: 01        .byte $01, $02   ; 

- D 0 - - - 0x03E903 0F:18F3: 1D        .byte con_00 + $1D   ; 
- D 0 - - - 0x03E904 0F:18F4: 00        .byte $00   ; 

- D 0 - - - 0x03E905 0F:18F5: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E906 0F:18F6: 10        .byte $10, $11, $12, $13, $14   ; 

- D 0 - - - 0x03E90B 0F:18FB: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03E90C 0F:18FC: 00        .byte $00   ; 

- D 0 - - - 0x03E90D 0F:18FD: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03E90E 0F:18FE: 20        .byte $20, $21, $22, $23, $24   ; 

- D 0 - - - 0x03E913 0F:1903: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03E914 0F:1904: 00        .byte $00   ; 

- D 0 - - - 0x03E915 0F:1905: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E916 0F:1906: 30        .byte $30, $31, $32, $33   ; 

- D 0 - - - 0x03E91A 0F:190A: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03E91B 0F:190B: 00        .byte $00   ; 

- D 0 - - - 0x03E91C 0F:190C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E91D 0F:190D: 40        .byte $40, $41, $42, $43   ; 

- D 0 - - - 0x03E921 0F:1911: 1C        .byte con_00 + $1C   ; 
- D 0 - - - 0x03E922 0F:1912: 00        .byte $00   ; 

- D 0 - - - 0x03E923 0F:1913: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E924 0F:1914: 50        .byte $50, $51, $52, $53   ; 

- D 0 - - - 0x03E928 0F:1918: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03E929 0F:1919: 00        .byte $00   ; 

- D 0 - - - 0x03E92A 0F:191A: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E92B 0F:191B: 03        .byte $03, $60, $61, $62, $63, $04   ; 

- D 0 - - - 0x03E931 0F:1921: 81        .byte con_80 + $01, $EE   ; 
- D 0 - - - 0x03E933 0F:1923: 00        .byte $00   ; 

- D 0 - - - 0x03E934 0F:1924: 38        .byte con_00 + $38   ; 
- D 0 - - - 0x03E935 0F:1925: AA        .byte $AA   ; 

- D 0 - - - 0x03E936 0F:1926: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E937 0F:1927: 0A        .byte $0A   ; 

- D 0 - - - 0x03E938 0F:1928: 00        .byte $00, $00   ; end token



_off031_0x03E93A_4C:
- D 0 - - - 0x03E93A 0F:192A: 00        .byte $00   ; 
- D 0 - - - 0x03E93B 0F:192B: 20 00     .dbyt $2000

- D 0 - - - 0x03E93D 0F:192D: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03E93F 0F:192F: 00        .byte $00   ; 

- D 0 - - - 0x03E940 0F:1930: 81        .byte con_80 + $01, $4C   ; 
- D 0 - - - 0x03E942 0F:1932: 00        .byte $00   ; 

- D 0 - - - 0x03E943 0F:1933: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E944 0F:1934: 05        .byte $05, $06, $07, $08, $09, $0A, $0B   ; 

- D 0 - - - 0x03E94B 0F:193B: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E94C 0F:193C: 00        .byte $00   ; 

- D 0 - - - 0x03E94D 0F:193D: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E94E 0F:193E: 15        .byte $15, $16, $17, $18, $19, $1A, $1B   ; 

- D 0 - - - 0x03E955 0F:1945: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E956 0F:1946: 00        .byte $00   ; 

- D 0 - - - 0x03E957 0F:1947: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03E958 0F:1948: 26        .byte $26, $27, $28, $29, $2A, $2B, $2C   ; 

- D 0 - - - 0x03E95F 0F:194F: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E960 0F:1950: 00        .byte $00   ; 

- D 0 - - - 0x03E961 0F:1951: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03E962 0F:1952: 1C        .byte $1C, $0D, $35, $36, $37, $38, $39, $3A, $3B, $3C   ; 

- D 0 - - - 0x03E96C 0F:195C: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E96D 0F:195D: 00        .byte $00   ; 

- D 0 - - - 0x03E96E 0F:195E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E96F 0F:195F: 0C        .byte $0C   ; 

- D 0 - - - 0x03E970 0F:1960: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E971 0F:1961: 45        .byte $45, $46, $47, $48, $49, $4A, $4B, $4C   ; 

- D 0 - - - 0x03E979 0F:1969: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03E97A 0F:196A: 00        .byte $00   ; 

- D 0 - - - 0x03E97B 0F:196B: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03E97C 0F:196C: 0B        .byte $0B, $0C, $45, $56, $57, $58, $59, $5A, $5B   ; 

- D 0 - - - 0x03E985 0F:1975: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03E986 0F:1976: 00        .byte $00   ; 

- D 0 - - - 0x03E987 0F:1977: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03E988 0F:1978: 0B        .byte $0B, $65, $66, $67, $68, $69, $6A, $6B   ; 

- D 0 - - - 0x03E990 0F:1980: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03E991 0F:1981: 00        .byte $00   ; 

- D 0 - - - 0x03E992 0F:1982: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03E993 0F:1983: 0B        .byte $0B, $2D, $1F   ; 

- D 0 - - - 0x03E996 0F:1986: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03E997 0F:1987: 2E        .byte $2E   ; 

- D 0 - - - 0x03E998 0F:1988: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03E999 0F:1989: 2F        .byte $2F   ; 

- D 0 - - - 0x03E99A 0F:198A: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03E99C 0F:198C: 00        .byte $00   ; 

- D 0 - - - 0x03E99D 0F:198D: 81        .byte con_80 + $01, $90   ; 
- D 0 - - - 0x03E99F 0F:198F: 00        .byte $00   ; 

- D 0 - - - 0x03E9A0 0F:1990: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03E9A1 0F:1991: AA        .byte $AA   ; 

- D 0 - - - 0x03E9A2 0F:1992: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E9A3 0F:1993: 0A        .byte $0A   ; 

- D 0 - - - 0x03E9A4 0F:1994: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E9A5 0F:1995: CA        .byte $CA, $BA   ; 

- D 0 - - - 0x03E9A7 0F:1997: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03E9A8 0F:1998: AA        .byte $AA   ; 

- D 0 - - - 0x03E9A9 0F:1999: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03E9AA 0F:199A: A2        .byte $A2, $AA, $75, $55   ; 

- D 0 - - - 0x03E9AE 0F:199E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03E9AF 0F:199F: AA        .byte $AA   ; 

- D 0 - - - 0x03E9B0 0F:19A0: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03E9B1 0F:19A1: A7        .byte $A7, $A9   ; 

- D 0 - - - 0x03E9B3 0F:19A3: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03E9B4 0F:19A4: AA        .byte $AA   ; 

- D 0 - - - 0x03E9B5 0F:19A5: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03E9B6 0F:19A6: 0A        .byte $0A   ; 

- D 0 - - - 0x03E9B7 0F:19A7: 00        .byte $00, $00   ; end token



_off031_0x03E9B9_4D:
- D 0 - - - 0x03E9B9 0F:19A9: 00        .byte $00   ; 
- D 0 - - - 0x03E9BA 0F:19AA: 20 00     .dbyt $2000

- D 0 - - - 0x03E9BC 0F:19AC: 81        .byte con_80 + $01, $96   ; 
- D 0 - - - 0x03E9BE 0F:19AE: 00        .byte $00   ; 

- D 0 - - - 0x03E9BF 0F:19AF: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9C0 0F:19B0: 70        .byte $70, $71, $72, $73, $74, $75   ; 

- D 0 - - - 0x03E9C6 0F:19B6: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9C7 0F:19B7: 00        .byte $00   ; 

- D 0 - - - 0x03E9C8 0F:19B8: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9C9 0F:19B9: 80        .byte $80, $81, $82, $83, $84, $85   ; 

- D 0 - - - 0x03E9CF 0F:19BF: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9D0 0F:19C0: 00        .byte $00   ; 

- D 0 - - - 0x03E9D1 0F:19C1: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9D2 0F:19C2: 90        .byte $90, $91, $92, $93, $94, $95   ; 

- D 0 - - - 0x03E9D8 0F:19C8: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9D9 0F:19C9: 00        .byte $00   ; 

- D 0 - - - 0x03E9DA 0F:19CA: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9DB 0F:19CB: A0        .byte $A0, $64, $A2, $A3, $A4, $A5   ; 

- D 0 - - - 0x03E9E1 0F:19D1: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9E2 0F:19D2: 00        .byte $00   ; 

- D 0 - - - 0x03E9E3 0F:19D3: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9E4 0F:19D4: B0        .byte $B0, $B1, $B2, $B3, $B4, $B5   ; 

- D 0 - - - 0x03E9EA 0F:19DA: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9EB 0F:19DB: 00        .byte $00   ; 

- D 0 - - - 0x03E9EC 0F:19DC: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9ED 0F:19DD: C0        .byte $C0, $C1, $C2, $C3, $C4, $C5   ; 

- D 0 - - - 0x03E9F3 0F:19E3: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9F4 0F:19E4: 00        .byte $00   ; 

- D 0 - - - 0x03E9F5 0F:19E5: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9F6 0F:19E6: 77        .byte $77, $78, $79, $7A, $7B, $7C   ; 

- D 0 - - - 0x03E9FC 0F:19EC: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03E9FD 0F:19ED: 00        .byte $00   ; 

- D 0 - - - 0x03E9FE 0F:19EE: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03E9FF 0F:19EF: 64        .byte $64, $88, $89, $8A, $8B, $8C   ; 

- D 0 - - - 0x03EA05 0F:19F5: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA06 0F:19F6: 00        .byte $00   ; 

- D 0 - - - 0x03EA07 0F:19F7: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA08 0F:19F8: 64        .byte $64, $97, $99, $9A, $9B, $9C   ; 

- D 0 - - - 0x03EA0E 0F:19FE: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA0F 0F:19FF: 00        .byte $00   ; 

- D 0 - - - 0x03EA10 0F:1A00: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA11 0F:1A01: A7        .byte $A7, $A8, $A9, $AA, $AB, $AC   ; 

- D 0 - - - 0x03EA17 0F:1A07: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA18 0F:1A08: 00        .byte $00   ; 

- D 0 - - - 0x03EA19 0F:1A09: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA1A 0F:1A0A: B7        .byte $B7, $B8, $B9, $BA, $BB, $BC   ; 

- D 0 - - - 0x03EA20 0F:1A10: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA21 0F:1A11: 00        .byte $00   ; 

- D 0 - - - 0x03EA22 0F:1A12: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA23 0F:1A13: C7        .byte $C7, $C8, $C9, $CA, $CB, $CC   ; 

- D 0 - - - 0x03EA29 0F:1A19: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA2A 0F:1A1A: 00        .byte $00   ; 

- D 0 - - - 0x03EA2B 0F:1A1B: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA2C 0F:1A1C: 7E        .byte $7E, $64, $BE, $BF, $6E, $6F   ; 

- D 0 - - - 0x03EA32 0F:1A22: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA33 0F:1A23: 00        .byte $00   ; 

- D 0 - - - 0x03EA34 0F:1A24: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA35 0F:1A25: 8E        .byte $8E, $8F, $CE, $CF, $6C, $6D   ; 

- D 0 - - - 0x03EA3B 0F:1A2B: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA3C 0F:1A2C: 00        .byte $00   ; 

- D 0 - - - 0x03EA3D 0F:1A2D: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA3E 0F:1A2E: 9E        .byte $9E, $9F, $4E, $4F, $4D, $5C   ; 

- D 0 - - - 0x03EA44 0F:1A34: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA45 0F:1A35: 00        .byte $00   ; 

- D 0 - - - 0x03EA46 0F:1A36: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA47 0F:1A37: AE        .byte $AE, $AF, $5E, $5F, $5D, $44   ; 

- D 0 - - - 0x03EA4D 0F:1A3D: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA4E 0F:1A3E: 00        .byte $00   ; 

- D 0 - - - 0x03EA4F 0F:1A3F: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA50 0F:1A40: 7D        .byte $7D, $8D, $9D, $AD, $BD, $55   ; 

- D 0 - - - 0x03EA56 0F:1A46: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA57 0F:1A47: 00        .byte $00   ; 

- D 0 - - - 0x03EA58 0F:1A48: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA59 0F:1A49: 54        .byte $54, $76, $86, $96, $87, $CD   ; 

- D 0 - - - 0x03EA5F 0F:1A4F: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EA60 0F:1A50: 00        .byte $00   ; 

- D 0 - - - 0x03EA61 0F:1A51: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EA62 0F:1A52: A6        .byte $A6, $B6, $64, $A1, $98, $C6   ; 

- D 0 - - - 0x03EA68 0F:1A58: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03EA69 0F:1A59: 00        .byte $00   ; 

- D 0 - - - 0x03EA6A 0F:1A5A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EA6B 0F:1A5B: A6        .byte $A6   ; 

- D 0 - - - 0x03EA6C 0F:1A5C: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03EA6D 0F:1A5D: 64        .byte $64   ; 

- D 0 - - - 0x03EA6E 0F:1A5E: 81        .byte con_80 + $01, $C4   ; 
- D 0 - - - 0x03EA70 0F:1A60: 00        .byte $00   ; 

- D 0 - - - 0x03EA71 0F:1A61: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03EA72 0F:1A62: AA        .byte $AA   ; 

- D 0 - - - 0x03EA73 0F:1A63: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EA74 0F:1A64: 66        .byte $66, $55   ; 

- D 0 - - - 0x03EA76 0F:1A66: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03EA77 0F:1A67: AA        .byte $AA   ; 

- D 0 - - - 0x03EA78 0F:1A68: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EA79 0F:1A69: 66        .byte $66, $55   ; 

- D 0 - - - 0x03EA7B 0F:1A6B: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03EA7C 0F:1A6C: AA        .byte $AA   ; 

- D 0 - - - 0x03EA7D 0F:1A6D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EA7E 0F:1A6E: A6        .byte $A6, $A5   ; 

- D 0 - - - 0x03EA80 0F:1A70: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03EA81 0F:1A71: AA        .byte $AA   ; 

- D 0 - - - 0x03EA82 0F:1A72: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EA83 0F:1A73: 6A        .byte $6A, $5A   ; 

- D 0 - - - 0x03EA85 0F:1A75: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03EA86 0F:1A76: AA        .byte $AA   ; 

- D 0 - - - 0x03EA87 0F:1A77: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EA88 0F:1A78: 22        .byte $22, $00   ; 

- D 0 - - - 0x03EA8A 0F:1A7A: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03EA8B 0F:1A7B: AA        .byte $AA   ; 

- D 0 - - - 0x03EA8C 0F:1A7C: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03EA8D 0F:1A7D: 0A        .byte $0A   ; 

- D 0 - - - 0x03EA8E 0F:1A7E: 00        .byte $00, $00   ; end token



_off031_0x03EA90_49:
_off031_0x03EA90_4A:
- D 0 - - - 0x03EA90 0F:1A80: 00        .byte $00   ; 
- D 0 - - - 0x03EA91 0F:1A81: 20 00     .dbyt $2000

- D 0 - - - 0x03EA93 0F:1A83: 81        .byte con_80 + $01, $E5   ; 
- D 0 - - - 0x03EA95 0F:1A85: 00        .byte $00   ; 

- D 0 - - - 0x03EA96 0F:1A86: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EA97 0F:1A87: 48        .byte $48   ; 

- D 0 - - - 0x03EA98 0F:1A88: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EA99 0F:1A89: 08        .byte $08, $0A, $0B, $0C, $0D, $0E, $0F, $07   ; 

- D 0 - - - 0x03EAA1 0F:1A91: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EAA2 0F:1A92: 48        .byte $48   ; 

- D 0 - - - 0x03EAA3 0F:1A93: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03EAA4 0F:1A94: 00        .byte $00   ; 

- D 0 - - - 0x03EAA5 0F:1A95: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EAA6 0F:1A96: 48        .byte $48   ; 

- D 0 - - - 0x03EAA7 0F:1A97: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EAA8 0F:1A98: 18        .byte $18, $1A, $1B, $1C, $1D, $1E, $1F, $17   ; 

- D 0 - - - 0x03EAB0 0F:1AA0: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EAB1 0F:1AA1: 48        .byte $48   ; 

- D 0 - - - 0x03EAB2 0F:1AA2: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03EAB3 0F:1AA3: 00        .byte $00   ; 

- D 0 - - - 0x03EAB4 0F:1AA4: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EAB5 0F:1AA5: 48        .byte $48   ; 

- D 0 - - - 0x03EAB6 0F:1AA6: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EAB7 0F:1AA7: 28        .byte $28, $2A, $2B, $2C, $2D, $2E, $2F, $27   ; 

- D 0 - - - 0x03EABF 0F:1AAF: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EAC0 0F:1AB0: 48        .byte $48   ; 

- D 0 - - - 0x03EAC1 0F:1AB1: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03EAC2 0F:1AB2: 00        .byte $00   ; 

- D 0 - - - 0x03EAC3 0F:1AB3: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EAC4 0F:1AB4: 48        .byte $48   ; 

- D 0 - - - 0x03EAC5 0F:1AB5: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EAC6 0F:1AB6: 38        .byte $38, $3A, $3B, $3C, $3D, $3E, $3F, $37   ; 

- D 0 - - - 0x03EACE 0F:1ABE: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EACF 0F:1ABF: 48        .byte $48   ; 

- D 0 - - - 0x03EAD0 0F:1AC0: 81        .byte con_80 + $01, $4B   ; 
- D 0 - - - 0x03EAD2 0F:1AC2: 00        .byte $00   ; 

- D 0 - - - 0x03EAD3 0F:1AC3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EAD4 0F:1AC4: C2        .byte $C2   ; 

- D 0 - - - 0x03EAD5 0F:1AC5: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EAD6 0F:1AC6: 00        .byte $00   ; 

- D 0 - - - 0x03EAD7 0F:1AC7: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03EAD8 0F:1AC8: C2        .byte $C2, $00, $C2   ; 

- D 0 - - - 0x03EADB 0F:1ACB: 19        .byte con_00 + $19   ; 
- D 0 - - - 0x03EADC 0F:1ACC: 00        .byte $00   ; 

- D 0 - - - 0x03EADD 0F:1ACD: 55        .byte con_40 + $15   ; 
- D 0 - - - 0x03EADE 0F:1ACE: 8F        .byte $8F, $9B, $A8, $CF, $93, $A6, $89, $AD, $00, $E8, $00, $D1, $D5, $F7, $E9, $00   ; 
- D 0 - - - 0x03EAEE 0F:1ADE: DB        .byte $DB, $C0, $D7, $E2, $D6   ; 

- D 0 - - - 0x03EAF3 0F:1AE3: 2B        .byte con_00 + $2B   ; 
- D 0 - - - 0x03EAF4 0F:1AE4: 00        .byte $00   ; 

- D 0 - - - 0x03EAF5 0F:1AE5: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03EAF6 0F:1AE6: E5        .byte $E5, $F0, $D8, $F6, $F9, $DF, $C3   ; 

- D 0 - - - 0x03EAFD 0F:1AED: 81        .byte con_80 + $01, $C9   ; 
- D 0 - - - 0x03EAFF 0F:1AEF: 00        .byte $00   ; 

- D 0 - - - 0x03EB00 0F:1AF0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EB01 0F:1AF1: C2        .byte $C2   ; 

- D 0 - - - 0x03EB02 0F:1AF2: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03EB03 0F:1AF3: 00        .byte $00   ; 

- D 0 - - - 0x03EB04 0F:1AF4: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03EB05 0F:1AF5: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C4   ; 

- D 0 - - - 0x03EB0E 0F:1AFE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB0F 0F:1AFF: 00        .byte $00   ; 

- D 0 - - - 0x03EB10 0F:1B00: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03EB11 0F:1B01: B2        .byte $B2, $00, $E2, $D6, $E8, $00, $80, $8B, $93, $EC, $00, $B2   ; 

- D 0 - - - 0x03EB1D 0F:1B0D: 81        .byte con_80 + $01, $C5   ; 
- D 0 - - - 0x03EB1F 0F:1B0F: 00        .byte $00   ; 

- D 0 - - - 0x03EB20 0F:1B10: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03EB21 0F:1B11: AA        .byte $AA   ; 

- D 0 - - - 0x03EB22 0F:1B12: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB23 0F:1B13: FA        .byte $FA   ; 

- D 0 - - - 0x03EB24 0F:1B14: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EB25 0F:1B15: F2        .byte $F2   ; 

- D 0 - - - 0x03EB26 0F:1B16: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB27 0F:1B17: 00        .byte $00   ; 

- D 0 - - - 0x03EB28 0F:1B18: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EB29 0F:1B19: F8        .byte $F8, $FA, $BA, $AA, $33, $00, $44, $11   ; 

- D 0 - - - 0x03EB31 0F:1B21: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB32 0F:1B22: 00        .byte $00   ; 

- D 0 - - - 0x03EB33 0F:1B23: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB34 0F:1B24: AA        .byte $AA   ; 

- D 0 - - - 0x03EB35 0F:1B25: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03EB36 0F:1B26: EE        .byte $EE, $FF, $F3, $F0   ; 

- D 0 - - - 0x03EB3A 0F:1B2A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB3B 0F:1B2B: FF        .byte $FF   ; 

- D 0 - - - 0x03EB3C 0F:1B2C: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03EB3D 0F:1B2D: FA        .byte $FA, $AA, $FE, $FF, $FB, $FA, $FF, $AF, $BB, $AA, $FF, $F3   ; 

- D 0 - - - 0x03EB49 0F:1B39: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03EB4A 0F:1B3A: FF        .byte $FF   ; 

- D 0 - - - 0x03EB4B 0F:1B3B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EB4C 0F:1B3C: AB        .byte $AB   ; 

- D 0 - - - 0x03EB4D 0F:1B3D: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03EB4E 0F:1B3E: AA        .byte $AA   ; 

- D 0 - - - 0x03EB4F 0F:1B3F: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03EB50 0F:1B40: 0A        .byte $0A   ; 

- D 0 - - - 0x03EB51 0F:1B41: 00        .byte $00, $00   ; end token



_off031_0x03EB53_3B:
- D 0 - - - 0x03EB53 0F:1B43: 00        .byte $00   ; 
- D 0 - - - 0x03EB54 0F:1B44: 20 00     .dbyt $2000

- D 0 - - - 0x03EB56 0F:1B46: 81        .byte con_80 + $01, $84   ; 
- D 0 - - - 0x03EB58 0F:1B48: 00        .byte $00   ; 

- D 0 - - - 0x03EB59 0F:1B49: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03EB5A 0F:1B4A: 4A        .byte $4A, $4B, $4C, $4D, $4E   ; 

- D 0 - - - 0x03EB5F 0F:1B4F: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03EB60 0F:1B50: 00        .byte $00   ; 

- D 0 - - - 0x03EB61 0F:1B51: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03EB62 0F:1B52: 5A        .byte $5A, $5B, $5C, $5D, $5E   ; 

- D 0 - - - 0x03EB67 0F:1B57: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03EB68 0F:1B58: 00        .byte $00   ; 

- D 0 - - - 0x03EB69 0F:1B59: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03EB6A 0F:1B5A: 6A        .byte $6A, $6B, $6C, $6D, $6E   ; 

- D 0 - - - 0x03EB6F 0F:1B5F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EB70 0F:1B60: 00        .byte $00   ; 

- D 0 - - - 0x03EB71 0F:1B61: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EB72 0F:1B62: B0        .byte $B0, $00, $DB, $EE, $FE, $DF   ; 

- D 0 - - - 0x03EB78 0F:1B68: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EB79 0F:1B69: CD        .byte $CD   ; 

- D 0 - - - 0x03EB7A 0F:1B6A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EB7B 0F:1B6B: 00        .byte $00, $B1   ; 

- D 0 - - - 0x03EB7D 0F:1B6D: 10        .byte con_00 + $10   ; 
- D 0 - - - 0x03EB7E 0F:1B6E: 00        .byte $00   ; 

- D 0 - - - 0x03EB7F 0F:1B6F: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03EB80 0F:1B70: 7C        .byte $7C, $7D, $7E   ; 

- D 0 - - - 0x03EB83 0F:1B73: 1F        .byte con_00 + $1F   ; 
- D 0 - - - 0x03EB84 0F:1B74: 00        .byte $00   ; 

- D 0 - - - 0x03EB85 0F:1B75: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EB86 0F:1B76: 4F        .byte $4F   ; 

- D 0 - - - 0x03EB87 0F:1B77: 81        .byte con_80 + $01, $81   ; 
- D 0 - - - 0x03EB89 0F:1B79: 00        .byte $00   ; 

- D 0 - - - 0x03EB8A 0F:1B7A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EB8B 0F:1B7B: C2        .byte $C2   ; 

- D 0 - - - 0x03EB8C 0F:1B7C: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03EB8D 0F:1B7D: 00        .byte $00   ; 

- D 0 - - - 0x03EB8E 0F:1B7E: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03EB8F 0F:1B7F: 41        .byte $41, $51, $23   ; 

- D 0 - - - 0x03EB92 0F:1B82: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EB93 0F:1B83: 48        .byte $48   ; 

- D 0 - - - 0x03EB94 0F:1B84: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03EB95 0F:1B85: 00        .byte $00   ; 

- D 0 - - - 0x03EB96 0F:1B86: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EB97 0F:1B87: B0        .byte $B0, $00, $D4, $EE, $D3, $F6, $DF, $D8   ; 

- D 0 - - - 0x03EB9F 0F:1B8F: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03EBA0 0F:1B90: 00        .byte $00   ; 

- D 0 - - - 0x03EBA1 0F:1B91: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03EBA2 0F:1B92: 33        .byte $33, $42, $43, $44   ; 

- D 0 - - - 0x03EBA6 0F:1B96: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBA7 0F:1B97: 48        .byte $48   ; 

- D 0 - - - 0x03EBA8 0F:1B98: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EBA9 0F:1B99: 00        .byte $00   ; 

- D 0 - - - 0x03EBAA 0F:1B9A: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03EBAB 0F:1B9B: 48        .byte $48, $52, $53, $54   ; 

- D 0 - - - 0x03EBAF 0F:1B9F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBB0 0F:1BA0: 48        .byte $48   ; 

- D 0 - - - 0x03EBB1 0F:1BA1: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03EBB2 0F:1BA2: 00        .byte $00   ; 

- D 0 - - - 0x03EBB3 0F:1BA3: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EBB4 0F:1BA4: D1        .byte $D1, $D5, $DD, $F8, $D5, $FE   ; 

- D 0 - - - 0x03EBBA 0F:1BAA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBBB 0F:1BAB: CD        .byte $CD   ; 

- D 0 - - - 0x03EBBC 0F:1BAC: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03EBBD 0F:1BAD: 00        .byte $00, $B1, $00, $48, $62, $63, $64, $66, $48   ; 

- D 0 - - - 0x03EBC6 0F:1BB6: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EBC7 0F:1BB7: 00        .byte $00   ; 

- D 0 - - - 0x03EBC8 0F:1BB8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBC9 0F:1BB9: 48        .byte $48   ; 

- D 0 - - - 0x03EBCA 0F:1BBA: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03EBCB 0F:1BBB: 56        .byte $56, $57, $58, $48   ; 

- D 0 - - - 0x03EBCF 0F:1BBF: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EBD0 0F:1BC0: 00        .byte $00   ; 

- D 0 - - - 0x03EBD1 0F:1BC1: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EBD2 0F:1BC2: 48        .byte $48   ; 

- D 0 - - - 0x03EBD3 0F:1BC3: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03EBD4 0F:1BC4: 67        .byte $67, $68, $65   ; 

- D 0 - - - 0x03EBD7 0F:1BC7: 81        .byte con_80 + $01, $6A   ; 
- D 0 - - - 0x03EBD9 0F:1BC9: 00        .byte $00   ; 

- D 0 - - - 0x03EBDA 0F:1BCA: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EBDB 0F:1BCB: 02        .byte $02, $03, $04, $05, $06, $22   ; 

- D 0 - - - 0x03EBE1 0F:1BD1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03EBE2 0F:1BD2: 00        .byte $00   ; 

- D 0 - - - 0x03EBE3 0F:1BD3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBE4 0F:1BD4: C2        .byte $C2   ; 

- D 0 - - - 0x03EBE5 0F:1BD5: 14        .byte con_00 + $14   ; 
- D 0 - - - 0x03EBE6 0F:1BD6: 00        .byte $00   ; 

- D 0 - - - 0x03EBE7 0F:1BD7: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EBE8 0F:1BD8: 12        .byte $12, $13, $14, $15, $16, $32   ; 

- D 0 - - - 0x03EBEE 0F:1BDE: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03EBEF 0F:1BDF: 00        .byte $00   ; 

- D 0 - - - 0x03EBF0 0F:1BE0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBF1 0F:1BE1: 85        .byte $85   ; 

- D 0 - - - 0x03EBF2 0F:1BE2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBF3 0F:1BE3: 8B        .byte $8B   ; 

- D 0 - - - 0x03EBF4 0F:1BE4: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EBF5 0F:1BE5: BB        .byte $BB   ; 

- D 0 - - - 0x03EBF6 0F:1BE6: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EBF7 0F:1BE7: CD        .byte $CD   ; 

- D 0 - - - 0x03EBF8 0F:1BE8: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03EBF9 0F:1BE9: 00        .byte $00   ; 

- D 0 - - - 0x03EBFA 0F:1BEA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EBFB 0F:1BEB: 48        .byte $48   ; 

- D 0 - - - 0x03EBFC 0F:1BEC: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EBFD 0F:1BED: 24        .byte $24, $25   ; 

- D 0 - - - 0x03EBFF 0F:1BEF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC00 0F:1BF0: 48        .byte $48   ; 

- D 0 - - - 0x03EC01 0F:1BF1: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03EC02 0F:1BF2: 00        .byte $00   ; 

- D 0 - - - 0x03EC03 0F:1BF3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC04 0F:1BF4: 48        .byte $48   ; 

- D 0 - - - 0x03EC05 0F:1BF5: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EC06 0F:1BF6: 34        .byte $34, $35   ; 

- D 0 - - - 0x03EC08 0F:1BF8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC09 0F:1BF9: 48        .byte $48   ; 

- D 0 - - - 0x03EC0A 0F:1BFA: 81        .byte con_80 + $01, $BF   ; 
- D 0 - - - 0x03EC0C 0F:1BFC: 00        .byte $00   ; 

- D 0 - - - 0x03EC0D 0F:1BFD: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EC0E 0F:1BFE: 54        .byte $54, $D0   ; 

- D 0 - - - 0x03EC10 0F:1C00: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC11 0F:1C01: F0        .byte $F0   ; 

- D 0 - - - 0x03EC12 0F:1C02: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EC13 0F:1C03: 30        .byte $30   ; 

- D 0 - - - 0x03EC14 0F:1C04: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC15 0F:1C05: 00        .byte $00   ; 

- D 0 - - - 0x03EC16 0F:1C06: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03EC17 0F:1C07: C0        .byte $C0, $F0, $31   ; 

- D 0 - - - 0x03EC1A 0F:1C0A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC1B 0F:1C0B: F0        .byte $F0   ; 

- D 0 - - - 0x03EC1C 0F:1C0C: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EC1D 0F:1C0D: 00        .byte $00   ; 

- D 0 - - - 0x03EC1E 0F:1C0E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EC1F 0F:1C0F: CC        .byte $CC   ; 

- D 0 - - - 0x03EC20 0F:1C10: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03EC21 0F:1C11: FF        .byte $FF   ; 

- D 0 - - - 0x03EC22 0F:1C12: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EC23 0F:1C13: 55        .byte $55   ; 

- D 0 - - - 0x03EC24 0F:1C14: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EC25 0F:1C15: 00        .byte $00   ; 

- D 0 - - - 0x03EC26 0F:1C16: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EC27 0F:1C17: CF        .byte $CF, $C0, $00, $F0, $FC, $33   ; 

- D 0 - - - 0x03EC2D 0F:1C1D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC2E 0F:1C1E: 00        .byte $00   ; 

- D 0 - - - 0x03EC2F 0F:1C1F: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03EC30 0F:1C20: 73        .byte $73, $03, $CC, $F0, $30, $03   ; 

- D 0 - - - 0x03EC36 0F:1C26: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03EC37 0F:1C27: 00        .byte $00   ; 

- D 0 - - - 0x03EC38 0F:1C28: 00        .byte $00, $00   ; end token



_off031_0x03EC3A_3C:
- D 0 - - - 0x03EC3A 0F:1C2A: 00        .byte $00   ; 
- D 0 - - - 0x03EC3B 0F:1C2B: 20 00     .dbyt $2000

- D 0 - - - 0x03EC3D 0F:1C2D: 81        .byte con_80 + $01, $CD   ; 
- D 0 - - - 0x03EC3F 0F:1C2F: 00        .byte $00   ; 

- D 0 - - - 0x03EC40 0F:1C30: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03EC41 0F:1C31: 77        .byte $77   ; 

- D 0 - - - 0x03EC42 0F:1C32: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03EC43 0F:1C33: 00        .byte $00   ; 

- D 0 - - - 0x03EC44 0F:1C34: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03EC45 0F:1C35: 76        .byte $76   ; 

- D 0 - - - 0x03EC46 0F:1C36: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC47 0F:1C37: 00        .byte $00   ; 

- D 0 - - - 0x03EC48 0F:1C38: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03EC49 0F:1C39: 9C        .byte $9C, $A7, $E9, $00, $97, $84, $AD, $E5   ; 

- D 0 - - - 0x03EC51 0F:1C41: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EC52 0F:1C42: 00        .byte $00   ; 

- D 0 - - - 0x03EC53 0F:1C43: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03EC54 0F:1C44: 5F        .byte $5F   ; 

- D 0 - - - 0x03EC55 0F:1C45: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03EC56 0F:1C46: 00        .byte $00   ; 

- D 0 - - - 0x03EC57 0F:1C47: 13        .byte con_00 + $13   ; 
- D 0 - - - 0x03EC58 0F:1C48: 78        .byte $78   ; 

- D 0 - - - 0x03EC59 0F:1C49: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC5A 0F:1C4A: 00        .byte $00   ; 

- D 0 - - - 0x03EC5B 0F:1C4B: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03EC5C 0F:1C4C: E2        .byte $E2, $F6, $DA, $F9, $F8   ; 

- D 0 - - - 0x03EC61 0F:1C51: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03EC62 0F:1C52: 00        .byte $00   ; 

- D 0 - - - 0x03EC63 0F:1C53: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03EC64 0F:1C54: 48        .byte $48   ; 

- D 0 - - - 0x03EC65 0F:1C55: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03EC66 0F:1C56: 79        .byte $79, $7A   ; 

- D 0 - - - 0x03EC68 0F:1C58: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03EC69 0F:1C59: 48        .byte $48   ; 

- D 0 - - - 0x03EC6A 0F:1C5A: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EC6B 0F:1C5B: 00        .byte $00   ; 

- D 0 - - - 0x03EC6C 0F:1C5C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EC6D 0F:1C5D: C2        .byte $C2   ; 

- D 0 - - - 0x03EC6E 0F:1C5E: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03EC6F 0F:1C5F: 00        .byte $00   ; 

- D 0 - - - 0x03EC70 0F:1C60: 0B        .byte con_00 + $0B   ; 
- D 0 - - - 0x03EC71 0F:1C61: 48        .byte $48   ; 

- D 0 - - - 0x03EC72 0F:1C62: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EC73 0F:1C63: 11        .byte $11   ; 

- D 0 - - - 0x03EC74 0F:1C64: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03EC75 0F:1C65: 48        .byte $48   ; 

- D 0 - - - 0x03EC76 0F:1C66: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC77 0F:1C67: 00        .byte $00   ; 

- D 0 - - - 0x03EC78 0F:1C68: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03EC79 0F:1C69: F5        .byte $F5, $DE, $F6, $EC, $E3   ; 

- D 0 - - - 0x03EC7E 0F:1C6E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03EC7F 0F:1C6F: 00        .byte $00   ; 

- D 0 - - - 0x03EC80 0F:1C70: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03EC81 0F:1C71: 26        .byte $26, $11, $26, $11   ; 

- D 0 - - - 0x03EC85 0F:1C75: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC86 0F:1C76: 48        .byte $48   ; 

- D 0 - - - 0x03EC87 0F:1C77: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03EC88 0F:1C78: 11        .byte $11, $48, $26, $11, $48, $21, $11   ; 

- D 0 - - - 0x03EC8F 0F:1C7F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03EC90 0F:1C80: 26        .byte $26   ; 

- D 0 - - - 0x03EC91 0F:1C81: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03EC92 0F:1C82: 11        .byte $11, $48, $26, $11   ; 

- D 0 - - - 0x03EC96 0F:1C86: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03EC97 0F:1C87: 00        .byte $00   ; 

- D 0 - - - 0x03EC98 0F:1C88: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03EC99 0F:1C89: C2        .byte $C2   ; 

- D 0 - - - 0x03EC9A 0F:1C8A: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03EC9B 0F:1C8B: 00        .byte $00   ; 

- D 0 - - - 0x03EC9C 0F:1C8C: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03EC9E 0F:1C8E: 36        .byte $36, $21   ; 

- D 0 - - - 0x03ECA0 0F:1C90: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03ECA1 0F:1C91: 26        .byte $26, $11, $36, $48, $36, $21, $26, $36, $21   ; 

- D 0 - - - 0x03ECAA 0F:1C9A: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03ECAB 0F:1C9B: 36        .byte $36   ; 

- D 0 - - - 0x03ECAC 0F:1C9C: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03ECAD 0F:1C9D: 48        .byte $48, $36, $21   ; 

- D 0 - - - 0x03ECB0 0F:1CA0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03ECB1 0F:1CA1: 00        .byte $00   ; 

- D 0 - - - 0x03ECB2 0F:1CA2: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03ECB3 0F:1CA3: E3        .byte $E3, $EA, $DF, $FE, $DF, $C3   ; 

- D 0 - - - 0x03ECB9 0F:1CA9: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03ECBA 0F:1CAA: 00        .byte $00   ; 

- D 0 - - - 0x03ECBB 0F:1CAB: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03ECBD 0F:1CAD: 46        .byte $46, $31   ; 

- D 0 - - - 0x03ECBF 0F:1CAF: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03ECC0 0F:1CB0: 36        .byte $36, $21, $46, $26, $46, $31, $36, $46, $31   ; 

- D 0 - - - 0x03ECC9 0F:1CB9: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03ECCA 0F:1CBA: 46        .byte $46   ; 

- D 0 - - - 0x03ECCB 0F:1CBB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03ECCC 0F:1CBC: 26        .byte $26, $46, $31   ; 

- D 0 - - - 0x03ECCF 0F:1CBF: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03ECD0 0F:1CC0: 00        .byte $00   ; 

- D 0 - - - 0x03ECD1 0F:1CC1: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03ECD3 0F:1CC3: 47        .byte $47, $6F   ; 

- D 0 - - - 0x03ECD5 0F:1CC5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03ECD6 0F:1CC6: 47        .byte $47   ; 

- D 0 - - - 0x03ECD7 0F:1CC7: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03ECD8 0F:1CC8: 6F        .byte $6F   ; 

- D 0 - - - 0x03ECD9 0F:1CC9: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03ECDA 0F:1CCA: 47        .byte $47, $6F, $47   ; 

- D 0 - - - 0x03ECDD 0F:1CCD: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03ECDE 0F:1CCE: 6F        .byte $6F   ; 

- D 0 - - - 0x03ECDF 0F:1CCF: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03ECE0 0F:1CD0: 47        .byte $47   ; 

- D 0 - - - 0x03ECE1 0F:1CD1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03ECE2 0F:1CD2: 6F        .byte $6F   ; 

- D 0 - - - 0x03ECE3 0F:1CD3: 81        .byte con_80 + $01, $D4   ; 
- D 0 - - - 0x03ECE5 0F:1CD5: 00        .byte $00   ; 

- D 0 - - - 0x03ECE6 0F:1CD6: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03ECE7 0F:1CD7: C2        .byte $C2   ; 

- D 0 - - - 0x03ECE8 0F:1CD8: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03ECE9 0F:1CD9: 00        .byte $00   ; 

- D 0 - - - 0x03ECEA 0F:1CDA: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03ECEB 0F:1CDB: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C6   ; 

- D 0 - - - 0x03ECF4 0F:1CE4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03ECF5 0F:1CE5: 00        .byte $00   ; 

- D 0 - - - 0x03ECF6 0F:1CE6: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03ECF7 0F:1CE7: B2        .byte $B2, $00, $9C, $A7, $E4, $D1, $E2, $E8, $00   ; 

- D 0 - - - 0x03ED00 0F:1CF0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03ED01 0F:1CF1: DF        .byte $DF   ; 

- D 0 - - - 0x03ED02 0F:1CF2: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03ED03 0F:1CF3: D5        .byte $D5, $D1, $00, $B2   ; 

- D 0 - - - 0x03ED07 0F:1CF7: 81        .byte con_80 + $01, $C5   ; 
- D 0 - - - 0x03ED09 0F:1CF9: 00        .byte $00   ; 

- D 0 - - - 0x03ED0A 0F:1CFA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03ED0B 0F:1CFB: 80        .byte $80   ; 

- D 0 - - - 0x03ED0C 0F:1CFC: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03ED0D 0F:1CFD: 00        .byte $00   ; 

- D 0 - - - 0x03ED0E 0F:1CFE: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03ED0F 0F:1CFF: 30        .byte $30, $00, $08   ; 

- D 0 - - - 0x03ED12 0F:1D02: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03ED13 0F:1D03: A0        .byte $A0   ; 

- D 0 - - - 0x03ED14 0F:1D04: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03ED15 0F:1D05: FF        .byte $FF   ; 

- D 0 - - - 0x03ED16 0F:1D06: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03ED17 0F:1D07: CF        .byte $CF   ; 

- D 0 - - - 0x03ED18 0F:1D08: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03ED19 0F:1D09: FA        .byte $FA   ; 

- D 0 - - - 0x03ED1A 0F:1D0A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03ED1B 0F:1D0B: DA        .byte $DA, $FA   ; 

- D 0 - - - 0x03ED1D 0F:1D0D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03ED1E 0F:1D0E: FF        .byte $FF   ; 

- D 0 - - - 0x03ED1F 0F:1D0F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03ED20 0F:1D10: CF        .byte $CF, $16   ; 

- D 0 - - - 0x03ED22 0F:1D12: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03ED24 0F:1D14: 05        .byte $05, $15   ; 

- D 0 - - - 0x03ED26 0F:1D16: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03ED27 0F:1D17: 03        .byte $03, $0C   ; 

- D 0 - - - 0x03ED29 0F:1D19: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03ED2A 0F:1D1A: 00        .byte $00   ; 

- D 0 - - - 0x03ED2B 0F:1D1B: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03ED2C 0F:1D1C: F0        .byte $F0   ; 

- D 0 - - - 0x03ED2D 0F:1D1D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03ED2E 0F:1D1E: 0F        .byte $0F   ; 

- D 0 - - - 0x03ED2F 0F:1D1F: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03ED30 0F:1D20: 00        .byte $00   ; 

- D 0 - - - 0x03ED31 0F:1D21: 00        .byte $00, $00   ; end token


; bzk garbage
- - - - - - 0x03ED33 0F:1D23: 33        .byte $33   ; 
- - - - - - 0x03ED34 0F:1D24: 00        .byte $00   ; 
- - - - - - 0x03ED35 0F:1D25: 44        .byte $44   ; 
- - - - - - 0x03ED36 0F:1D26: 11        .byte $11   ; 
- - - - - - 0x03ED37 0F:1D27: 02        .byte $02   ; 
- - - - - - 0x03ED38 0F:1D28: 00        .byte $00   ; 
- - - - - - 0x03ED39 0F:1D29: 02        .byte $02   ; 
- - - - - - 0x03ED3A 0F:1D2A: AA        .byte $AA   ; 
- - - - - - 0x03ED3B 0F:1D2B: 44        .byte $44   ; 
- - - - - - 0x03ED3C 0F:1D2C: EE        .byte $EE   ; 
- - - - - - 0x03ED3D 0F:1D2D: FF        .byte $FF   ; 
- - - - - - 0x03ED3E 0F:1D2E: F3        .byte $F3   ; 
- - - - - - 0x03ED3F 0F:1D2F: F0        .byte $F0   ; 
- - - - - - 0x03ED40 0F:1D30: 02        .byte $02   ; 
- - - - - - 0x03ED41 0F:1D31: FF        .byte $FF   ; 
- - - - - - 0x03ED42 0F:1D32: 4C        .byte $4C   ; 
- - - - - - 0x03ED43 0F:1D33: FA        .byte $FA   ; 
- - - - - - 0x03ED44 0F:1D34: AA        .byte $AA   ; 
- - - - - - 0x03ED45 0F:1D35: FE        .byte $FE   ; 
- - - - - - 0x03ED46 0F:1D36: FF        .byte $FF   ; 
- - - - - - 0x03ED47 0F:1D37: FB        .byte $FB   ; 
- - - - - - 0x03ED48 0F:1D38: FA        .byte $FA   ; 
- - - - - - 0x03ED49 0F:1D39: FF        .byte $FF   ; 
- - - - - - 0x03ED4A 0F:1D3A: AF        .byte $AF   ; 
- - - - - - 0x03ED4B 0F:1D3B: BB        .byte $BB   ; 
- - - - - - 0x03ED4C 0F:1D3C: AA        .byte $AA   ; 
- - - - - - 0x03ED4D 0F:1D3D: FF        .byte $FF   ; 
- - - - - - 0x03ED4E 0F:1D3E: F3        .byte $F3   ; 
- - - - - - 0x03ED4F 0F:1D3F: 04        .byte $04   ; 
- - - - - - 0x03ED50 0F:1D40: FF        .byte $FF   ; 
- - - - - - 0x03ED51 0F:1D41: 01        .byte $01   ; 
- - - - - - 0x03ED52 0F:1D42: AB        .byte $AB   ; 
- - - - - - 0x03ED53 0F:1D43: 08        .byte $08   ; 
- - - - - - 0x03ED54 0F:1D44: AA        .byte $AA   ; 
- - - - - - 0x03ED55 0F:1D45: 08        .byte $08   ; 
- - - - - - 0x03ED56 0F:1D46: 0A        .byte $0A   ; 
- - - - - - 0x03ED57 0F:1D47: 00        .byte $00   ; 
- - - - - - 0x03ED58 0F:1D48: 00        .byte $00   ; 


; bzk garbage, unused screen data
- - - - - - 0x03ED59 0F:1D49: 00        .byte $00   ; 
- - - - - - 0x03ED5A 0F:1D4A: 20 00     .dbyt $2000

- - - - - - 0x03ED5C 0F:1D4C: 81        .byte con_80 + $01, $84   ; 
- - - - - - 0x03ED5E 0F:1D4E: 00        .byte $00   ; 

- - - - - - 0x03ED5F 0F:1D4F: 45        .byte con_40 + $05   ; 
- - - - - - 0x03ED60 0F:1D50: 4A        .byte $4A, $4B, $4C, $4D, $4E   ; 

- - - - - - 0x03ED65 0F:1D55: 1B        .byte con_00 + $1B   ; 
- - - - - - 0x03ED66 0F:1D56: 00        .byte $00   ; 

- - - - - - 0x03ED67 0F:1D57: 45        .byte con_40 + $05   ; 
- - - - - - 0x03ED68 0F:1D58: 5A        .byte $5A, $5B, $5C, $5D, $5E   ; 

- - - - - - 0x03ED6D 0F:1D5D: 1B        .byte con_00 + $1B   ; 
- - - - - - 0x03ED6E 0F:1D5E: 00        .byte $00   ; 

- - - - - - 0x03ED6F 0F:1D5F: 45        .byte con_40 + $05   ; 
- - - - - - 0x03ED70 0F:1D60: 6A        .byte $6A, $6B, $6C, $6D, $6E   ; 

- - - - - - 0x03ED75 0F:1D65: 03        .byte con_00 + $03   ; 
- - - - - - 0x03ED76 0F:1D66: 00        .byte $00   ; 

- - - - - - 0x03ED77 0F:1D67: 46        .byte con_40 + $06   ; 
- - - - - - 0x03ED78 0F:1D68: B0        .byte $B0, $00, $DB, $EE, $FE, $DF   ; 

- - - - - - 0x03ED7E 0F:1D6E: 02        .byte con_00 + $02   ; 
- - - - - - 0x03ED7F 0F:1D6F: CD        .byte $CD   ; 

- - - - - - 0x03ED80 0F:1D70: 42        .byte con_40 + $02   ; 
- - - - - - 0x03ED81 0F:1D71: 00        .byte $00, $B1   ; 

- - - - - - 0x03ED83 0F:1D73: 10        .byte con_00 + $10   ; 
- - - - - - 0x03ED84 0F:1D74: 00        .byte $00   ; 

- - - - - - 0x03ED85 0F:1D75: 43        .byte con_40 + $03   ; 
- - - - - - 0x03ED86 0F:1D76: 7C        .byte $7C, $7D, $7E   ; 

- - - - - - 0x03ED89 0F:1D79: 1F        .byte con_00 + $1F   ; 
- - - - - - 0x03ED8A 0F:1D7A: 00        .byte $00   ; 

- - - - - - 0x03ED8B 0F:1D7B: 01        .byte con_00 + $01   ; 
- - - - - - 0x03ED8C 0F:1D7C: 4F        .byte $4F   ; 

- - - - - - 0x03ED8D 0F:1D7D: 81        .byte con_80 + $01, $81   ; 
- - - - - - 0x03ED8F 0F:1D7F: 00        .byte $00   ; 

- - - - - - 0x03ED90 0F:1D80: 01        .byte con_00 + $01   ; 
- - - - - - 0x03ED91 0F:1D81: C2        .byte $C2   ; 

- - - - - - 0x03ED92 0F:1D82: 09        .byte con_00 + $09   ; 
- - - - - - 0x03ED93 0F:1D83: 00        .byte $00   ; 

- - - - - - 0x03ED94 0F:1D84: 43        .byte con_40 + $03   ; 
- - - - - - 0x03ED95 0F:1D85: 41        .byte $41, $51, $23   ; 

- - - - - - 0x03ED98 0F:1D88: 03        .byte con_00 + $03   ; 
- - - - - - 0x03ED99 0F:1D89: 48        .byte $48   ; 

- - - - - - 0x03ED9A 0F:1D8A: 0A        .byte con_00 + $0A   ; 
- - - - - - 0x03ED9B 0F:1D8B: 00        .byte $00   ; 

- - - - - - 0x03ED9C 0F:1D8C: 48        .byte con_40 + $08   ; 
- - - - - - 0x03ED9D 0F:1D8D: B0        .byte $B0, $00, $D4, $EE, $D3, $F6, $DF, $D8   ; 

- - - - - - 0x03EDA5 0F:1D95: 08        .byte con_00 + $08   ; 
- - - - - - 0x03EDA6 0F:1D96: 00        .byte $00   ; 

- - - - - - 0x03EDA7 0F:1D97: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EDA8 0F:1D98: 33        .byte $33, $42, $43, $44   ; 

- - - - - - 0x03EDAC 0F:1D9C: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDAD 0F:1D9D: 48        .byte $48   ; 

- - - - - - 0x03EDAE 0F:1D9E: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03EDAF 0F:1D9F: 00        .byte $00   ; 

- - - - - - 0x03EDB0 0F:1DA0: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EDB1 0F:1DA1: 48        .byte $48, $52, $53, $54   ; 

- - - - - - 0x03EDB5 0F:1DA5: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDB6 0F:1DA6: 48        .byte $48   ; 

- - - - - - 0x03EDB7 0F:1DA7: 0F        .byte con_00 + $0F   ; 
- - - - - - 0x03EDB8 0F:1DA8: 00        .byte $00   ; 

- - - - - - 0x03EDB9 0F:1DA9: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EDBA 0F:1DAA: D1        .byte $D1, $D5, $DD, $F8, $D5, $FE   ; 

- - - - - - 0x03EDC0 0F:1DB0: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDC1 0F:1DB1: CD        .byte $CD   ; 

- - - - - - 0x03EDC2 0F:1DB2: 49        .byte con_40 + $09   ; 
- - - - - - 0x03EDC3 0F:1DB3: 00        .byte $00, $B1, $00, $48, $62, $63, $64, $66, $48   ; 

- - - - - - 0x03EDCC 0F:1DBC: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03EDCD 0F:1DBD: 00        .byte $00   ; 

- - - - - - 0x03EDCE 0F:1DBE: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDCF 0F:1DBF: 48        .byte $48   ; 

- - - - - - 0x03EDD0 0F:1DC0: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EDD1 0F:1DC1: 56        .byte $56, $57, $58, $48   ; 

- - - - - - 0x03EDD5 0F:1DC5: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03EDD6 0F:1DC6: 00        .byte $00   ; 

- - - - - - 0x03EDD7 0F:1DC7: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EDD8 0F:1DC8: 48        .byte $48   ; 

- - - - - - 0x03EDD9 0F:1DC9: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EDDA 0F:1DCA: 67        .byte $67, $68, $65   ; 

- - - - - - 0x03EDDD 0F:1DCD: 81        .byte con_80 + $01, $6A   ; 
- - - - - - 0x03EDDF 0F:1DCF: 00        .byte $00   ; 

- - - - - - 0x03EDE0 0F:1DD0: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EDE1 0F:1DD1: 02        .byte $02, $03, $04, $05, $06, $22   ; 

- - - - - - 0x03EDE7 0F:1DD7: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EDE8 0F:1DD8: 00        .byte $00   ; 

- - - - - - 0x03EDE9 0F:1DD9: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDEA 0F:1DDA: C2        .byte $C2   ; 

- - - - - - 0x03EDEB 0F:1DDB: 14        .byte con_00 + $14   ; 
- - - - - - 0x03EDEC 0F:1DDC: 00        .byte $00   ; 

- - - - - - 0x03EDED 0F:1DDD: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EDEE 0F:1DDE: 12        .byte $12, $13, $14, $15, $16, $32   ; 

- - - - - - 0x03EDF4 0F:1DE4: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EDF5 0F:1DE5: 00        .byte $00   ; 

- - - - - - 0x03EDF6 0F:1DE6: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDF7 0F:1DE7: 85        .byte $85   ; 

- - - - - - 0x03EDF8 0F:1DE8: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EDF9 0F:1DE9: 8B        .byte $8B   ; 

- - - - - - 0x03EDFA 0F:1DEA: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EDFB 0F:1DEB: BB        .byte $BB   ; 

- - - - - - 0x03EDFC 0F:1DEC: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EDFD 0F:1DED: CD        .byte $CD   ; 

- - - - - - 0x03EDFE 0F:1DEE: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03EDFF 0F:1DEF: 00        .byte $00   ; 

- - - - - - 0x03EE00 0F:1DF0: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE01 0F:1DF1: 48        .byte $48   ; 

- - - - - - 0x03EE02 0F:1DF2: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EE03 0F:1DF3: 24        .byte $24, $25   ; 

- - - - - - 0x03EE05 0F:1DF5: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE06 0F:1DF6: 48        .byte $48   ; 

- - - - - - 0x03EE07 0F:1DF7: 1A        .byte con_00 + $1A   ; 
- - - - - - 0x03EE08 0F:1DF8: 00        .byte $00   ; 

- - - - - - 0x03EE09 0F:1DF9: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE0A 0F:1DFA: 48        .byte $48   ; 

- - - - - - 0x03EE0B 0F:1DFB: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EE0C 0F:1DFC: 34        .byte $34, $35   ; 

- - - - - - 0x03EE0E 0F:1DFE: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE0F 0F:1DFF: 48        .byte $48   ; 

- - - - - - 0x03EE10 0F:1E00: 81        .byte con_80 + $01, $BF   ; 
- - - - - - 0x03EE12 0F:1E02: 00        .byte $00   ; 

- - - - - - 0x03EE13 0F:1E03: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EE14 0F:1E04: 54        .byte $54, $D0   ; 

- - - - - - 0x03EE16 0F:1E06: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE17 0F:1E07: F0        .byte $F0   ; 

- - - - - - 0x03EE18 0F:1E08: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EE19 0F:1E09: 30        .byte $30   ; 

- - - - - - 0x03EE1A 0F:1E0A: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE1B 0F:1E0B: 00        .byte $00   ; 

- - - - - - 0x03EE1C 0F:1E0C: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EE1D 0F:1E0D: C0        .byte $C0, $F0, $31   ; 

- - - - - - 0x03EE20 0F:1E10: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE21 0F:1E11: F0        .byte $F0   ; 

- - - - - - 0x03EE22 0F:1E12: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EE23 0F:1E13: 00        .byte $00   ; 

- - - - - - 0x03EE24 0F:1E14: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EE25 0F:1E15: CC        .byte $CC   ; 

- - - - - - 0x03EE26 0F:1E16: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EE27 0F:1E17: FF        .byte $FF   ; 

- - - - - - 0x03EE28 0F:1E18: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EE29 0F:1E19: 55        .byte $55   ; 

- - - - - - 0x03EE2A 0F:1E1A: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EE2B 0F:1E1B: 00        .byte $00   ; 

- - - - - - 0x03EE2C 0F:1E1C: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EE2D 0F:1E1D: CF        .byte $CF, $C0, $00, $F0, $FC, $33   ; 

- - - - - - 0x03EE33 0F:1E23: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE34 0F:1E24: 00        .byte $00   ; 

- - - - - - 0x03EE35 0F:1E25: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EE36 0F:1E26: 73        .byte $73, $03, $CC, $F0, $30, $03   ; 

- - - - - - 0x03EE3C 0F:1E2C: 11        .byte con_00 + $11   ; 
- - - - - - 0x03EE3D 0F:1E2D: 00        .byte $00   ; 

- - - - - - 0x03EE3E 0F:1E2E: 00        .byte $00, $00   ; end token


; bzk garbage, unused screen data
- - - - - - 0x03EE40 0F:1E30: 00        .byte $00   ; 
- - - - - - 0x03EE41 0F:1E31: 20 00     .dbyt $2000

- - - - - - 0x03EE43 0F:1E33: 81        .byte con_80 + $01, $CD   ; 
- - - - - - 0x03EE45 0F:1E35: 00        .byte $00   ; 

- - - - - - 0x03EE46 0F:1E36: 13        .byte con_00 + $13   ; 
- - - - - - 0x03EE47 0F:1E37: 77        .byte $77   ; 

- - - - - - 0x03EE48 0F:1E38: 0D        .byte con_00 + $0D   ; 
- - - - - - 0x03EE49 0F:1E39: 00        .byte $00   ; 

- - - - - - 0x03EE4A 0F:1E3A: 13        .byte con_00 + $13   ; 
- - - - - - 0x03EE4B 0F:1E3B: 76        .byte $76   ; 

- - - - - - 0x03EE4C 0F:1E3C: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE4D 0F:1E3D: 00        .byte $00   ; 

- - - - - - 0x03EE4E 0F:1E3E: 48        .byte con_40 + $08   ; 
- - - - - - 0x03EE4F 0F:1E3F: 9C        .byte $9C, $A7, $E9, $00, $97, $84, $AD, $E5   ; 

- - - - - - 0x03EE57 0F:1E47: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EE58 0F:1E48: 00        .byte $00   ; 

- - - - - - 0x03EE59 0F:1E49: 13        .byte con_00 + $13   ; 
- - - - - - 0x03EE5A 0F:1E4A: 5F        .byte $5F   ; 

- - - - - - 0x03EE5B 0F:1E4B: 0D        .byte con_00 + $0D   ; 
- - - - - - 0x03EE5C 0F:1E4C: 00        .byte $00   ; 

- - - - - - 0x03EE5D 0F:1E4D: 13        .byte con_00 + $13   ; 
- - - - - - 0x03EE5E 0F:1E4E: 78        .byte $78   ; 

- - - - - - 0x03EE5F 0F:1E4F: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE60 0F:1E50: 00        .byte $00   ; 

- - - - - - 0x03EE61 0F:1E51: 45        .byte con_40 + $05   ; 
- - - - - - 0x03EE62 0F:1E52: E2        .byte $E2, $F6, $DA, $F9, $F8   ; 

- - - - - - 0x03EE67 0F:1E57: 06        .byte con_00 + $06   ; 
- - - - - - 0x03EE68 0F:1E58: 00        .byte $00   ; 

- - - - - - 0x03EE69 0F:1E59: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EE6A 0F:1E5A: 48        .byte $48   ; 

- - - - - - 0x03EE6B 0F:1E5B: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EE6C 0F:1E5C: 79        .byte $79, $7A   ; 

- - - - - - 0x03EE6E 0F:1E5E: 0C        .byte con_00 + $0C   ; 
- - - - - - 0x03EE6F 0F:1E5F: 48        .byte $48   ; 

- - - - - - 0x03EE70 0F:1E60: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EE71 0F:1E61: 00        .byte $00   ; 

- - - - - - 0x03EE72 0F:1E62: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EE73 0F:1E63: C2        .byte $C2   ; 

- - - - - - 0x03EE74 0F:1E64: 09        .byte con_00 + $09   ; 
- - - - - - 0x03EE75 0F:1E65: 00        .byte $00   ; 

- - - - - - 0x03EE76 0F:1E66: 0B        .byte con_00 + $0B   ; 
- - - - - - 0x03EE77 0F:1E67: 48        .byte $48   ; 

- - - - - - 0x03EE78 0F:1E68: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EE79 0F:1E69: 11        .byte $11   ; 

- - - - - - 0x03EE7A 0F:1E6A: 07        .byte con_00 + $07   ; 
- - - - - - 0x03EE7B 0F:1E6B: 48        .byte $48   ; 

- - - - - - 0x03EE7C 0F:1E6C: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE7D 0F:1E6D: 00        .byte $00   ; 

- - - - - - 0x03EE7E 0F:1E6E: 45        .byte con_40 + $05   ; 
- - - - - - 0x03EE7F 0F:1E6F: F5        .byte $F5, $DE, $F6, $EC, $E3   ; 

- - - - - - 0x03EE84 0F:1E74: 06        .byte con_00 + $06   ; 
- - - - - - 0x03EE85 0F:1E75: 00        .byte $00   ; 

- - - - - - 0x03EE86 0F:1E76: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EE87 0F:1E77: 26        .byte $26, $11, $26, $11   ; 

- - - - - - 0x03EE8B 0F:1E7B: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE8C 0F:1E7C: 48        .byte $48   ; 

- - - - - - 0x03EE8D 0F:1E7D: 47        .byte con_40 + $07   ; 
- - - - - - 0x03EE8E 0F:1E7E: 11        .byte $11, $48, $26, $11, $48, $21, $11   ; 

- - - - - - 0x03EE95 0F:1E85: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EE96 0F:1E86: 26        .byte $26   ; 

- - - - - - 0x03EE97 0F:1E87: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EE98 0F:1E88: 11        .byte $11, $48, $26, $11   ; 

- - - - - - 0x03EE9C 0F:1E8C: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EE9D 0F:1E8D: 00        .byte $00   ; 

- - - - - - 0x03EE9E 0F:1E8E: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EE9F 0F:1E8F: C2        .byte $C2   ; 

- - - - - - 0x03EEA0 0F:1E90: 09        .byte con_00 + $09   ; 
- - - - - - 0x03EEA1 0F:1E91: 00        .byte $00   ; 

- - - - - - 0x03EEA2 0F:1E92: C2        .byte con_C0 + $02, $02   ; 
- - - - - - 0x03EEA4 0F:1E94: 36        .byte $36, $21   ; 

- - - - - - 0x03EEA6 0F:1E96: 49        .byte con_40 + $09   ; 
- - - - - - 0x03EEA7 0F:1E97: 26        .byte $26, $11, $36, $48, $36, $21, $26, $36, $21   ; 

- - - - - - 0x03EEB0 0F:1EA0: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EEB1 0F:1EA1: 36        .byte $36   ; 

- - - - - - 0x03EEB2 0F:1EA2: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EEB3 0F:1EA3: 48        .byte $48, $36, $21   ; 

- - - - - - 0x03EEB6 0F:1EA6: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EEB7 0F:1EA7: 00        .byte $00   ; 

- - - - - - 0x03EEB8 0F:1EA8: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EEB9 0F:1EA9: E3        .byte $E3, $EA, $DF, $FE, $DF, $C3   ; 

- - - - - - 0x03EEBF 0F:1EAF: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EEC0 0F:1EB0: 00        .byte $00   ; 

- - - - - - 0x03EEC1 0F:1EB1: C2        .byte con_C0 + $02, $02   ; 
- - - - - - 0x03EEC3 0F:1EB3: 46        .byte $46, $31   ; 

- - - - - - 0x03EEC5 0F:1EB5: 49        .byte con_40 + $09   ; 
- - - - - - 0x03EEC6 0F:1EB6: 36        .byte $36, $21, $46, $26, $46, $31, $36, $46, $31   ; 

- - - - - - 0x03EECF 0F:1EBF: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EED0 0F:1EC0: 46        .byte $46   ; 

- - - - - - 0x03EED1 0F:1EC1: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EED2 0F:1EC2: 26        .byte $26, $46, $31   ; 

- - - - - - 0x03EED5 0F:1EC5: 0D        .byte con_00 + $0D   ; 
- - - - - - 0x03EED6 0F:1EC6: 00        .byte $00   ; 

- - - - - - 0x03EED7 0F:1EC7: C2        .byte con_C0 + $02, $02   ; 
- - - - - - 0x03EED9 0F:1EC9: 47        .byte $47, $6F   ; 

- - - - - - 0x03EEDB 0F:1ECB: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EEDC 0F:1ECC: 47        .byte $47   ; 

- - - - - - 0x03EEDD 0F:1ECD: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EEDE 0F:1ECE: 6F        .byte $6F   ; 

- - - - - - 0x03EEDF 0F:1ECF: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EEE0 0F:1ED0: 47        .byte $47, $6F, $47   ; 

- - - - - - 0x03EEE3 0F:1ED3: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EEE4 0F:1ED4: 6F        .byte $6F   ; 

- - - - - - 0x03EEE5 0F:1ED5: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EEE6 0F:1ED6: 47        .byte $47   ; 

- - - - - - 0x03EEE7 0F:1ED7: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EEE8 0F:1ED8: 6F        .byte $6F   ; 

- - - - - - 0x03EEE9 0F:1ED9: 81        .byte con_80 + $01, $D4   ; 
- - - - - - 0x03EEEB 0F:1EDB: 00        .byte $00   ; 

- - - - - - 0x03EEEC 0F:1EDC: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EEED 0F:1EDD: C2        .byte $C2   ; 

- - - - - - 0x03EEEE 0F:1EDE: 0E        .byte con_00 + $0E   ; 
- - - - - - 0x03EEEF 0F:1EDF: 00        .byte $00   ; 

- - - - - - 0x03EEF0 0F:1EE0: 49        .byte con_40 + $09   ; 
- - - - - - 0x03EEF1 0F:1EE1: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C6   ; 

- - - - - - 0x03EEFA 0F:1EEA: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EEFB 0F:1EEB: 00        .byte $00   ; 

- - - - - - 0x03EEFC 0F:1EEC: 49        .byte con_40 + $09   ; 
- - - - - - 0x03EEFD 0F:1EED: B2        .byte $B2, $00, $9C, $A7, $E4, $D1, $E2, $E8, $00   ; 

- - - - - - 0x03EF06 0F:1EF6: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EF07 0F:1EF7: DF        .byte $DF   ; 

- - - - - - 0x03EF08 0F:1EF8: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EF09 0F:1EF9: D5        .byte $D5, $D1, $00, $B2   ; 

- - - - - - 0x03EF0D 0F:1EFD: 81        .byte con_80 + $01, $C5   ; 
- - - - - - 0x03EF0F 0F:1EFF: 00        .byte $00   ; 

- - - - - - 0x03EF10 0F:1F00: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EF11 0F:1F01: 80        .byte $80   ; 

- - - - - - 0x03EF12 0F:1F02: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EF13 0F:1F03: 00        .byte $00   ; 

- - - - - - 0x03EF14 0F:1F04: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EF15 0F:1F05: 30        .byte $30, $00, $08   ; 

- - - - - - 0x03EF18 0F:1F08: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EF19 0F:1F09: A0        .byte $A0   ; 

- - - - - - 0x03EF1A 0F:1F0A: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EF1B 0F:1F0B: FF        .byte $FF   ; 

- - - - - - 0x03EF1C 0F:1F0C: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EF1D 0F:1F0D: CF        .byte $CF   ; 

- - - - - - 0x03EF1E 0F:1F0E: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EF1F 0F:1F0F: FA        .byte $FA   ; 

- - - - - - 0x03EF20 0F:1F10: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EF21 0F:1F11: DA        .byte $DA, $FA   ; 

- - - - - - 0x03EF23 0F:1F13: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EF24 0F:1F14: FF        .byte $FF   ; 

- - - - - - 0x03EF25 0F:1F15: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EF26 0F:1F16: CF        .byte $CF, $16   ; 

- - - - - - 0x03EF28 0F:1F18: C2        .byte con_C0 + $02, $02   ; 
- - - - - - 0x03EF2A 0F:1F1A: 05        .byte $05, $15   ; 

- - - - - - 0x03EF2C 0F:1F1C: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EF2D 0F:1F1D: 03        .byte $03, $0C   ; 

- - - - - - 0x03EF2F 0F:1F1F: 06        .byte con_00 + $06   ; 
- - - - - - 0x03EF30 0F:1F20: 00        .byte $00   ; 

- - - - - - 0x03EF31 0F:1F21: 08        .byte con_00 + $08   ; 
- - - - - - 0x03EF32 0F:1F22: F0        .byte $F0   ; 

- - - - - - 0x03EF33 0F:1F23: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EF34 0F:1F24: 0F        .byte $0F   ; 

- - - - - - 0x03EF35 0F:1F25: 0F        .byte con_00 + $0F   ; 
- - - - - - 0x03EF36 0F:1F26: 00        .byte $00   ; 

- - - - - - 0x03EF37 0F:1F27: 00        .byte $00, $00   ; end token


; bzk garbage, unfinished screen data
- - - - - - 0x03EF39 0F:1F29: D4        .byte $D4   ; 
- - - - - - 0x03EF3A 0F:1F2A: E1        .byte $E1   ; 
- - - - - - 0x03EF3B 0F:1F2B: 00        .byte $00   ; 

- - - - - - 0x03EF3C 0F:1F2C: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EF3D 0F:1F2D: 76        .byte $76   ; 

- - - - - - 0x03EF3E 0F:1F2E: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EF3F 0F:1F2F: 00        .byte $00   ; 

- - - - - - 0x03EF40 0F:1F30: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EF41 0F:1F31: BA        .byte $BA   ; 

- - - - - - 0x03EF42 0F:1F32: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EF43 0F:1F33: 00        .byte $00   ; 

- - - - - - 0x03EF44 0F:1F34: 47        .byte con_40 + $07   ; 
- - - - - - 0x03EF45 0F:1F35: D4        .byte $D4, $E2, $D2, $D0, $DF, $D4, $D3   ; 

- - - - - - 0x03EF4C 0F:1F3C: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EF4D 0F:1F3D: 00        .byte $00   ; 

- - - - - - 0x03EF4E 0F:1F3E: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EF4F 0F:1F3F: 78        .byte $78   ; 

- - - - - - 0x03EF50 0F:1F40: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EF51 0F:1F41: 00        .byte $00   ; 

- - - - - - 0x03EF52 0F:1F42: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EF53 0F:1F43: CA        .byte $CA   ; 

- - - - - - 0x03EF54 0F:1F44: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EF55 0F:1F45: 79        .byte $79, $7A   ; 

- - - - - - 0x03EF57 0F:1F47: 0A        .byte con_00 + $0A   ; 
- - - - - - 0x03EF58 0F:1F48: CA        .byte $CA   ; 

- - - - - - 0x03EF59 0F:1F49: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EF5A 0F:1F4A: 00        .byte $00   ; 

- - - - - - 0x03EF5B 0F:1F4B: 48        .byte con_40 + $08   ; 
- - - - - - 0x03EF5C 0F:1F4C: D8        .byte $D8, $DD, $E3, $DE, $00, $E3, $D7, $D4   ; 

- - - - - - 0x03EF64 0F:1F54: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EF65 0F:1F55: 00        .byte $00   ; 

- - - - - - 0x03EF66 0F:1F56: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EF67 0F:1F57: CA        .byte $CA   ; 

- - - - - - 0x03EF68 0F:1F58: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EF69 0F:1F59: 88        .byte $88   ; 

- - - - - - 0x03EF6A 0F:1F5A: 06        .byte con_00 + $06   ; 
- - - - - - 0x03EF6B 0F:1F5B: CA        .byte $CA   ; 

- - - - - - 0x03EF6C 0F:1F5C: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EF6D 0F:1F5D: 89        .byte $89   ; 

- - - - - - 0x03EF6E 0F:1F5E: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EF6F 0F:1F5F: CA        .byte $CA   ; 

- - - - - - 0x03EF70 0F:1F60: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EF71 0F:1F61: 00        .byte $00   ; 

- - - - - - 0x03EF72 0F:1F62: 47        .byte con_40 + $07   ; 
- - - - - - 0x03EF73 0F:1F63: CA        .byte $CA, $96, $97, $CA, $99, $96, $97   ; 

- - - - - - 0x03EF7A 0F:1F6A: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EF7B 0F:1F6B: 96        .byte $96   ; 

- - - - - - 0x03EF7C 0F:1F6C: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EF7D 0F:1F6D: 97        .byte $97   ; 

- - - - - - 0x03EF7E 0F:1F6E: 45        .byte con_40 + $05   ; 
- - - - - - 0x03EF7F 0F:1F6F: 96        .byte $96, $99, $96, $97, $96   ; 

- - - - - - 0x03EF84 0F:1F74: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EF85 0F:1F75: 00        .byte $00   ; 

- - - - - - 0x03EF86 0F:1F76: 47        .byte con_40 + $07   ; 
- - - - - - 0x03EF87 0F:1F77: DD        .byte $DD, $D4, $DE, $DD, $F4, $D5, $D8   ; 

- - - - - - 0x03EF8E 0F:1F7E: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EF8F 0F:1F7F: DB        .byte $DB   ; 

- - - - - - 0x03EF90 0F:1F80: 44        .byte con_40 + $04   ; 
- - - - - - 0x03EF91 0F:1F81: D4        .byte $D4, $D3, $00, $97   ; 

- - - - - - 0x03EF95 0F:1F85: C4        .byte con_C0 + $04, $03   ; 
- - - - - - 0x03EF97 0F:1F87: A6        .byte $A6, $A7, $A8, $A9   ; 

- - - - - - 0x03EF9B 0F:1F8B: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EF9C 0F:1F8C: A6        .byte $A6, $A7, $A8   ; 

- - - - - - 0x03EF9F 0F:1F8F: 10        .byte con_00 + $10   ; 
- - - - - - 0x03EFA0 0F:1F90: 00        .byte $00   ; 

- - - - - - 0x03EFA1 0F:1F91: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EFA2 0F:1F92: B8        .byte $B8   ; 

- - - - - - 0x03EFA3 0F:1F93: C4        .byte con_C0 + $04, $03   ; 
- - - - - - 0x03EFA5 0F:1F95: B6        .byte $B6, $B7, $B8, $B9   ; 

- - - - - - 0x03EFA9 0F:1F99: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EFAA 0F:1F9A: B6        .byte $B6, $B7, $B8   ; 

- - - - - - 0x03EFAD 0F:1F9D: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EFAE 0F:1F9E: 00        .byte $00   ; 

- - - - - - 0x03EFAF 0F:1F9F: 46        .byte con_40 + $06   ; 
- - - - - - 0x03EFB0 0F:1FA0: DD        .byte $DD, $D8, $D6, $D7, $E3, $F6   ; 

- - - - - - 0x03EFB6 0F:1FA6: 06        .byte con_00 + $06   ; 
- - - - - - 0x03EFB7 0F:1FA7: 00        .byte $00   ; 

- - - - - - 0x03EFB8 0F:1FA8: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EFB9 0F:1FA9: C8        .byte $C8   ; 

- - - - - - 0x03EFBA 0F:1FAA: C4        .byte con_C0 + $04, $03   ; 
- - - - - - 0x03EFBC 0F:1FAC: C6        .byte $C6, $C7, $C8, $C9   ; 

- - - - - - 0x03EFC0 0F:1FB0: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EFC1 0F:1FB1: C6        .byte $C6, $C7, $C8   ; 

- - - - - - 0x03EFC4 0F:1FB4: 81        .byte con_80 + $01, $C6   ; 
- - - - - - 0x03EFC6 0F:1FB6: 00        .byte $00   ; 

- - - - - - 0x03EFC7 0F:1FB7: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EFC8 0F:1FB8: DC        .byte $DC, $D8   ; 

- - - - - - 0x03EFCA 0F:1FBA: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EFCB 0F:1FBB: E2        .byte $E2   ; 

- - - - - - 0x03EFCC 0F:1FBC: 49        .byte con_40 + $09   ; 
- - - - - - 0x03EFCD 0F:1FBD: D8        .byte $D8, $DE, $DD, $00, $ED, $F4, $00, $D1, $D0   ; 

- - - - - - 0x03EFD6 0F:1FC6: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EFD7 0F:1FC7: E3        .byte $E3   ; 

- - - - - - 0x03EFD8 0F:1FC8: 45        .byte con_40 + $05   ; 
- - - - - - 0x03EFD9 0F:1FC9: DB        .byte $DB, $D4, $00, $D8, $DD   ; 

- - - - - - 0x03EFDE 0F:1FCE: 39        .byte con_00 + $39   ; 
- - - - - - 0x03EFDF 0F:1FCF: 00        .byte $00   ; 

- - - - - - 0x03EFE0 0F:1FD0: 47        .byte con_40 + $07   ; 
- - - - - - 0x03EFE1 0F:1FD1: E3        .byte $E3, $D7, $D4, $00, $D2, $D7, $DE   ; 

- - - - - - 0x03EFE8 0F:1FD8: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EFE9 0F:1FD9: DF        .byte $DF   ; 

- - - - - - 0x03EFEA 0F:1FDA: 43        .byte con_40 + $03   ; 
- - - - - - 0x03EFEB 0F:1FDB: D4        .byte $D4, $E1, $F6   ; 

- - - - - - 0x03EFEE 0F:1FDE: 81        .byte con_80 + $01, $A5   ; 
- - - - - - 0x03EFF0 0F:1FE0: 00        .byte $00   ; 

- - - - - - 0x03EFF1 0F:1FE1: 01        .byte con_00 + $01   ; 
- - - - - - 0x03EFF2 0F:1FE2: 80        .byte $80   ; 

- - - - - - 0x03EFF3 0F:1FE3: 05        .byte con_00 + $05   ; 
- - - - - - 0x03EFF4 0F:1FE4: 00        .byte $00   ; 

- - - - - - 0x03EFF5 0F:1FE5: 02        .byte con_00 + $02   ; 
- - - - - - 0x03EFF6 0F:1FE6: F0        .byte $F0   ; 

- - - - - - 0x03EFF7 0F:1FE7: 42        .byte con_40 + $02   ; 
- - - - - - 0x03EFF8 0F:1FE8: F8        .byte $F8, $B0   ; 

- - - - - - 0x03EFFA 0F:1FEA: 04        .byte con_00 + $04   ; 
- - - - - - 0x03EFFB 0F:1FEB: A0        .byte $A0   ; 

- - - - - - 0x03EFFC 0F:1FEC: 03        .byte con_00 + $03   ; 
- - - - - - 0x03EFFD 0F:1FED: FF        .byte $FF   ; 

- - - - - - 0x03EFFE 0F:1FEE: 45        .byte con_40 + $05   ; 
- - - - - - 0x03EFFF 0F:1FEF: FB        .byte $FB, $FA, $AA, $BA, $AA   ; 

- - - - - - 0x03F004 0F:1FF4: 03        .byte con_00 + $03   ; 
- - - - - - 0x03F005 0F:1FF5: FF        .byte $FF   ; 

- - - - - - 0x03F006 0F:1FF6: 01        .byte con_00 + $01   ; 
- - - - - - 0x03F007 0F:1FF7: 77        .byte $77   ; 

- - - - - - 0x03F008 0F:1FF8: 03        .byte con_00 + $03   ; 
- - - - - - 0x03F009 0F:1FF9: 55        .byte $55   ; 

- - - - - - 0x03F00A 0F:1FFA: 01        .byte con_00 + $01   ; 
- - - - - - 0x03F00B 0F:1FFB: 99        .byte $99   ; 

- - - - - - 0x03F00C 0F:1FFC: 03        .byte con_00 + $03   ; 
- - - - - - 0x03F00D 0F:1FFD: 0F        .byte $0F   ; 

- - - - - - 0x03F00E 0F:1FFE: 01        .byte con_00 + $01   ; 
- - - - - - 0x03F00F 0F:1FFF: 03        .byte $03   ; 



.out .sprintf("Free bytes in bank ppu 2: %Xh [%d]", ($2000 - *), ($2000 - *))






.segment "BANK_PPU_3"
.org $1000 ; for listing file
; 0x03F010-0x04000F
; CHR banks 7C-7F



_off031_0x03F010_00:
- D 0 - - - 0x03F010 0F:1000: 00        .byte $00   ; 
- D 0 - - - 0x03F011 0F:1001: 28 00     .dbyt $2800

- D 0 - - - 0x03F013 0F:1003: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03F015 0F:1005: 00        .byte $00   ; 

- D 0 - - - 0x03F016 0F:1006: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F017 0F:1007: 00        .byte $00   ; 

- D 0 - - - 0x03F018 0F:1008: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F019 0F:1009: FF        .byte $FF, $69, $FF, $BD, $BF, $8E   ; 

- D 0 - - - 0x03F01F 0F:100F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F020 0F:1010: 7E        .byte $7E   ; 

- D 0 - - - 0x03F021 0F:1011: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F022 0F:1012: 8F        .byte $8F, $BF, $8E   ; 

- D 0 - - - 0x03F025 0F:1015: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F026 0F:1016: 7E        .byte $7E   ; 

- D 0 - - - 0x03F027 0F:1017: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F028 0F:1018: 8F        .byte $8F, $BF, $2B, $CC   ; 

- D 0 - - - 0x03F02C 0F:101C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F02D 0F:101D: 1C        .byte $1C   ; 

- D 0 - - - 0x03F02E 0F:101E: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F02F 0F:101F: CC        .byte $CC, $2B, $BF   ; 

- D 0 - - - 0x03F032 0F:1022: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F033 0F:1023: 00        .byte $00   ; 

- D 0 - - - 0x03F034 0F:1024: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F035 0F:1025: FF        .byte $FF, $79, $3A, $4A, $2C   ; 

- D 0 - - - 0x03F03A 0F:102A: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F03B 0F:102B: 4D        .byte $4D   ; 

- D 0 - - - 0x03F03C 0F:102C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F03D 0F:102D: 2C        .byte $2C   ; 

- D 0 - - - 0x03F03E 0F:102E: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F03F 0F:102F: 4D        .byte $4D   ; 

- D 0 - - - 0x03F040 0F:1030: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F041 0F:1031: AE        .byte $AE, $2B, $0E   ; 

- D 0 - - - 0x03F044 0F:1034: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F045 0F:1035: 3E        .byte $3E   ; 

- D 0 - - - 0x03F046 0F:1036: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F047 0F:1037: 0F        .byte $0F, $2B, $AE   ; 

- D 0 - - - 0x03F04A 0F:103A: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F04B 0F:103B: 00        .byte $00   ; 

- D 0 - - - 0x03F04C 0F:103C: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F04D 0F:103D: FF        .byte $FF, $0A, $0B, $4A, $AE, $AF, $8C, $8D   ; 

- D 0 - - - 0x03F055 0F:1045: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F056 0F:1046: 1D        .byte $1D   ; 

- D 0 - - - 0x03F057 0F:1047: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F058 0F:1048: AE        .byte $AE, $AF, $8C, $8D   ; 

- D 0 - - - 0x03F05C 0F:104C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F05D 0F:104D: 1D        .byte $1D   ; 

- D 0 - - - 0x03F05E 0F:104E: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F05F 0F:104F: AE        .byte $AE, $2B, $1E, $08, $09, $1F, $2B, $AE   ; 

- D 0 - - - 0x03F067 0F:1057: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F068 0F:1058: 00        .byte $00   ; 

- D 0 - - - 0x03F069 0F:1059: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F06A 0F:105A: 4A        .byte $4A, $1A, $1B, $4A, $AE, $AF, $9C, $9D   ; 

- D 0 - - - 0x03F072 0F:1062: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F073 0F:1063: 1D        .byte $1D   ; 

- D 0 - - - 0x03F074 0F:1064: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F075 0F:1065: AE        .byte $AE, $AF, $9C, $9D   ; 

- D 0 - - - 0x03F079 0F:1069: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F07A 0F:106A: 1D        .byte $1D   ; 

- D 0 - - - 0x03F07B 0F:106B: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F07C 0F:106C: AE        .byte $AE, $2B, $1E, $18, $19, $1F, $2B, $AE   ; 

- D 0 - - - 0x03F084 0F:1074: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F085 0F:1075: 00        .byte $00   ; 

- D 0 - - - 0x03F086 0F:1076: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F087 0F:1077: 4A        .byte $4A, $FF, $1B, $4A, $2C   ; 

- D 0 - - - 0x03F08C 0F:107C: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F08D 0F:107D: 4D        .byte $4D   ; 

- D 0 - - - 0x03F08E 0F:107E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F08F 0F:107F: 3B        .byte $3B   ; 

- D 0 - - - 0x03F090 0F:1080: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F091 0F:1081: 2C        .byte $2C, $4D, $7B   ; 

- D 0 - - - 0x03F094 0F:1084: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F095 0F:1085: 4D        .byte $4D   ; 

- D 0 - - - 0x03F096 0F:1086: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F097 0F:1087: 3B        .byte $3B, $AE, $2B, $1E, $38, $CE, $9F, $2B, $AE   ; 

- D 0 - - - 0x03F0A0 0F:1090: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F0A1 0F:1091: 00        .byte $00   ; 

- D 0 - - - 0x03F0A2 0F:1092: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F0A3 0F:1093: 4A        .byte $4A, $FF, $1B, $4A, $AE, $AF   ; 

- D 0 - - - 0x03F0A9 0F:1099: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0AA 0F:109A: 1D        .byte $1D   ; 

- D 0 - - - 0x03F0AB 0F:109B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0AC 0F:109C: 4B        .byte $4B   ; 

- D 0 - - - 0x03F0AD 0F:109D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F0AE 0F:109E: AE        .byte $AE, $AF   ; 

- D 0 - - - 0x03F0B0 0F:10A0: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F0B1 0F:10A1: 1D        .byte $1D   ; 

- D 0 - - - 0x03F0B2 0F:10A2: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F0B3 0F:10A3: 4B        .byte $4B, $AE, $2B, $1E   ; 

- D 0 - - - 0x03F0B7 0F:10A7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0B8 0F:10A8: CE        .byte $CE   ; 

- D 0 - - - 0x03F0B9 0F:10A9: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F0BA 0F:10AA: 1F        .byte $1F, $2B, $AE   ; 

- D 0 - - - 0x03F0BD 0F:10AD: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F0BE 0F:10AE: 00        .byte $00   ; 

- D 0 - - - 0x03F0BF 0F:10AF: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F0C0 0F:10B0: 4A        .byte $4A, $FF, $1B, $4A, $2C, $7B   ; 

- D 0 - - - 0x03F0C6 0F:10B6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0C7 0F:10B7: 4D        .byte $4D   ; 

- D 0 - - - 0x03F0C8 0F:10B8: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F0C9 0F:10B9: A8        .byte $A8, $A9, $2C   ; 

- D 0 - - - 0x03F0CC 0F:10BC: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F0CD 0F:10BD: 4D        .byte $4D   ; 

- D 0 - - - 0x03F0CE 0F:10BE: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F0CF 0F:10BF: A9        .byte $A9, $AE, $2B, $1E   ; 

- D 0 - - - 0x03F0D3 0F:10C3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0D4 0F:10C4: CE        .byte $CE   ; 

- D 0 - - - 0x03F0D5 0F:10C5: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F0D6 0F:10C6: 1F        .byte $1F, $2B, $AE   ; 

- D 0 - - - 0x03F0D9 0F:10C9: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F0DA 0F:10CA: 00        .byte $00   ; 

- D 0 - - - 0x03F0DB 0F:10CB: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F0DC 0F:10CC: 4A        .byte $4A, $FF, $1B, $4A, $3C   ; 

- D 0 - - - 0x03F0E1 0F:10D1: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F0E2 0F:10D2: 3D        .byte $3D   ; 

- D 0 - - - 0x03F0E3 0F:10D3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0E4 0F:10D4: 4B        .byte $4B   ; 

- D 0 - - - 0x03F0E5 0F:10D5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F0E6 0F:10D6: 3C        .byte $3C   ; 

- D 0 - - - 0x03F0E7 0F:10D7: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F0E8 0F:10D8: 3D        .byte $3D   ; 

- D 0 - - - 0x03F0E9 0F:10D9: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F0EA 0F:10DA: 4B        .byte $4B, $AE, $2B, $2E   ; 

- D 0 - - - 0x03F0EE 0F:10DE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F0EF 0F:10DF: 3F        .byte $3F   ; 

- D 0 - - - 0x03F0F0 0F:10E0: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F0F1 0F:10E1: 2F        .byte $2F, $2B, $AE   ; 

- D 0 - - - 0x03F0F4 0F:10E4: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F0F5 0F:10E5: 00        .byte $00   ; 

- D 0 - - - 0x03F0F6 0F:10E6: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F0F7 0F:10E7: 4A        .byte $4A, $5A, $5B, $6C, $0C   ; 

- D 0 - - - 0x03F0FC 0F:10EC: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F0FD 0F:10ED: 6E        .byte $6E   ; 

- D 0 - - - 0x03F0FE 0F:10EE: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F0FF 0F:10EF: 58        .byte $58, $59, $6E, $BA   ; 

- D 0 - - - 0x03F103 0F:10F3: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F104 0F:10F4: AA        .byte $AA   ; 

- D 0 - - - 0x03F105 0F:10F5: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F106 0F:10F6: 77        .byte $77, $6E   ; 

- D 0 - - - 0x03F108 0F:10F8: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F109 0F:10F9: 00        .byte $00   ; 

- D 0 - - - 0x03F10A 0F:10FA: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F10B 0F:10FB: 4A        .byte $4A, $6A, $6B, $6D   ; 

- D 0 - - - 0x03F10F 0F:10FF: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F110 0F:1100: 38        .byte $38   ; 

- D 0 - - - 0x03F111 0F:1101: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F112 0F:1102: 29        .byte $29, $39, $CE, $89   ; 

- D 0 - - - 0x03F116 0F:1106: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F117 0F:1107: AA        .byte $AA   ; 

- D 0 - - - 0x03F118 0F:1108: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F119 0F:1109: BB        .byte $BB, $CE, $49   ; 

- D 0 - - - 0x03F11C 0F:110C: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F11D 0F:110D: 00        .byte $00   ; 

- D 0 - - - 0x03F11E 0F:110E: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F11F 0F:110F: 4A        .byte $4A, $6B, $6D, $CE, $29, $AB   ; 

- D 0 - - - 0x03F125 0F:1115: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F126 0F:1116: 48        .byte $48   ; 

- D 0 - - - 0x03F127 0F:1117: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F128 0F:1118: AC        .byte $AC, $AD, $29, $39   ; 

- D 0 - - - 0x03F12C 0F:111C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F12D 0F:111D: CE        .byte $CE   ; 

- D 0 - - - 0x03F12E 0F:111E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F12F 0F:111F: 38        .byte $38   ; 

- D 0 - - - 0x03F130 0F:1120: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F131 0F:1121: CE        .byte $CE, $49, $BC   ; 

- D 0 - - - 0x03F134 0F:1124: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F135 0F:1125: 00        .byte $00   ; 

- D 0 - - - 0x03F136 0F:1126: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F137 0F:1127: 6C        .byte $6C, $6D, $CE, $29, $39   ; 

- D 0 - - - 0x03F13C 0F:112C: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F13D 0F:112D: CE        .byte $CE   ; 

- D 0 - - - 0x03F13E 0F:112E: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F13F 0F:112F: 49        .byte $49, $BC, $29, $39, $CE, $29, $AB   ; 

- D 0 - - - 0x03F146 0F:1136: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F147 0F:1137: 48        .byte $48   ; 

- D 0 - - - 0x03F148 0F:1138: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F149 0F:1139: AC        .byte $AC, $AD   ; 

- D 0 - - - 0x03F14B 0F:113B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F14C 0F:113C: CE        .byte $CE   ; 

- D 0 - - - 0x03F14D 0F:113D: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F14E 0F:113E: 49        .byte $49, $BC, $CE   ; 

- D 0 - - - 0x03F151 0F:1141: 81        .byte con_80 + $01, $FF   ; 
- D 0 - - - 0x03F153 0F:1143: 00        .byte $00   ; 

- D 0 - - - 0x03F154 0F:1144: 81        .byte con_80 + $01, $45   ; 
- D 0 - - - 0x03F156 0F:1146: 00        .byte $00   ; 

- D 0 - - - 0x03F157 0F:1147: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F158 0F:1148: AA        .byte $AA   ; 

- D 0 - - - 0x03F159 0F:1149: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F15A 0F:114A: EA        .byte $EA   ; 

- D 0 - - - 0x03F15B 0F:114B: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F15C 0F:114C: AA        .byte $AA   ; 

- D 0 - - - 0x03F15D 0F:114D: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F15E 0F:114E: EA        .byte $EA, $AA, $BA, $EE, $BB   ; 

- D 0 - - - 0x03F163 0F:1153: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F164 0F:1154: AA        .byte $AA   ; 

- D 0 - - - 0x03F165 0F:1155: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F166 0F:1156: 99        .byte $99, $AA, $EE, $BB   ; 

- D 0 - - - 0x03F16A 0F:115A: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03F16B 0F:115B: AA        .byte $AA   ; 

- D 0 - - - 0x03F16C 0F:115C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F16D 0F:115D: 26        .byte $26   ; 

- D 0 - - - 0x03F16E 0F:115E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F16F 0F:115F: 50        .byte $50   ; 

- D 0 - - - 0x03F170 0F:1160: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F171 0F:1161: 55        .byte $55   ; 

- D 0 - - - 0x03F172 0F:1162: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F173 0F:1163: 90        .byte $90, $50, $98   ; 

- D 0 - - - 0x03F176 0F:1166: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F177 0F:1167: 0A        .byte $0A   ; 

- D 0 - - - 0x03F178 0F:1168: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F179 0F:1169: 0B        .byte $0B, $0A, $06   ; 

- D 0 - - - 0x03F17C 0F:116C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F17D 0F:116D: 0A        .byte $0A   ; 

- D 0 - - - 0x03F17E 0F:116E: 00        .byte $00, $00   ; end token



_off031_0x03F180_15:
- D 0 - - - 0x03F180 0F:1170: 00        .byte $00   ; 
- D 0 - - - 0x03F181 0F:1171: 28 00     .dbyt $2800

- D 0 - - - 0x03F183 0F:1173: C2        .byte con_C0 + $02, $06   ; 
- D 0 - - - 0x03F185 0F:1175: 3B        .byte $3B, $3C   ; 

- D 0 - - - 0x03F187 0F:1177: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F188 0F:1178: 3B        .byte $3B, $5D, $3B, $4D, $5D   ; 

- D 0 - - - 0x03F18D 0F:117D: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F18F 0F:117F: 3B        .byte $3B, $3C   ; 

- D 0 - - - 0x03F191 0F:1181: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F192 0F:1182: 5D        .byte $5D   ; 

- D 0 - - - 0x03F193 0F:1183: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F195 0F:1185: 4B        .byte $4B, $4C   ; 

- D 0 - - - 0x03F197 0F:1187: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F198 0F:1188: 3B        .byte $3B, $3C, $4B, $4C, $58   ; 

- D 0 - - - 0x03F19D 0F:118D: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F19E 0F:118E: 59        .byte $59   ; 

- D 0 - - - 0x03F19F 0F:118F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F1A0 0F:1190: 5A        .byte $5A, $4D   ; 

- D 0 - - - 0x03F1A2 0F:1192: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1A3 0F:1193: 6E        .byte $6E   ; 

- D 0 - - - 0x03F1A4 0F:1194: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F1A5 0F:1195: 6D        .byte $6D, $4B   ; 

- D 0 - - - 0x03F1A7 0F:1197: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1A8 0F:1198: 5D        .byte $5D   ; 

- D 0 - - - 0x03F1A9 0F:1199: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F1AB 0F:119B: 4B        .byte $4B, $4C   ; 

- D 0 - - - 0x03F1AD 0F:119D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F1AE 0F:119E: 5D        .byte $5D, $58   ; 

- D 0 - - - 0x03F1B0 0F:11A0: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F1B1 0F:11A1: 59        .byte $59   ; 

- D 0 - - - 0x03F1B2 0F:11A2: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F1B3 0F:11A3: 5A        .byte $5A   ; 

- D 0 - - - 0x03F1B4 0F:11A4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1B5 0F:11A5: 89        .byte $89   ; 

- D 0 - - - 0x03F1B6 0F:11A6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1B7 0F:11A7: 6E        .byte $6E   ; 

- D 0 - - - 0x03F1B8 0F:11A8: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F1B9 0F:11A9: 68        .byte $68, $A6   ; 

- D 0 - - - 0x03F1BB 0F:11AB: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F1BC 0F:11AC: 00        .byte $00   ; 

- D 0 - - - 0x03F1BD 0F:11AD: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F1BE 0F:11AE: A8        .byte $A8, $6A, $5D, $3C, $3B, $3C, $3B   ; 

- D 0 - - - 0x03F1C5 0F:11B5: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1C6 0F:11B6: 5D        .byte $5D   ; 

- D 0 - - - 0x03F1C7 0F:11B7: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F1C8 0F:11B8: 6E        .byte $6E   ; 

- D 0 - - - 0x03F1C9 0F:11B9: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F1CA 0F:11BA: 5D        .byte $5D, $68, $A6   ; 

- D 0 - - - 0x03F1CD 0F:11BD: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F1CE 0F:11BE: 00        .byte $00   ; 

- D 0 - - - 0x03F1CF 0F:11BF: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F1D0 0F:11C0: A8        .byte $A8, $6A, $3B, $3C, $3B, $5D, $68, $A6, $76   ; 

- D 0 - - - 0x03F1D9 0F:11C9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1DA 0F:11CA: 88        .byte $88   ; 

- D 0 - - - 0x03F1DB 0F:11CB: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F1DC 0F:11CC: 77        .byte $77, $A8, $6A, $5D   ; 

- D 0 - - - 0x03F1E0 0F:11D0: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F1E2 0F:11D2: 4C        .byte $4C, $4B   ; 

- D 0 - - - 0x03F1E4 0F:11D4: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F1E5 0F:11D5: 4D        .byte $4D, $6D   ; 

- D 0 - - - 0x03F1E7 0F:11D7: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F1E9 0F:11D9: 4B        .byte $4B, $4C   ; 

- D 0 - - - 0x03F1EB 0F:11DB: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F1EC 0F:11DC: 5D        .byte $5D, $68, $A6, $76   ; 

- D 0 - - - 0x03F1F0 0F:11E0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1F1 0F:11E1: 88        .byte $88   ; 

- D 0 - - - 0x03F1F2 0F:11E2: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F1F3 0F:11E3: 77        .byte $77, $A8, $6A, $4B, $4C, $4B, $5D, $68, $A6, $86   ; 

- D 0 - - - 0x03F1FD 0F:11ED: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F1FE 0F:11EE: CE        .byte $CE   ; 

- D 0 - - - 0x03F1FF 0F:11EF: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F200 0F:11F0: 87        .byte $87, $A8, $6A, $5D, $6E, $3E   ; 

- D 0 - - - 0x03F206 0F:11F6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F207 0F:11F7: 6E        .byte $6E   ; 

- D 0 - - - 0x03F208 0F:11F8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F209 0F:11F9: 5D        .byte $5D   ; 

- D 0 - - - 0x03F20A 0F:11FA: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F20C 0F:11FC: 3B        .byte $3B, $3C   ; 

- D 0 - - - 0x03F20E 0F:11FE: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F20F 0F:11FF: 5D        .byte $5D, $68, $A6, $86   ; 

- D 0 - - - 0x03F213 0F:1203: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F214 0F:1204: CE        .byte $CE   ; 

- D 0 - - - 0x03F215 0F:1205: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F216 0F:1206: 87        .byte $87, $A8, $6A   ; 

- D 0 - - - 0x03F219 0F:1209: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F21A 0F:120A: 6E        .byte $6E   ; 

- D 0 - - - 0x03F21B 0F:120B: 4F        .byte con_40 + $0F   ; 
- D 0 - - - 0x03F21C 0F:120C: 3B        .byte $3B, $5D, $68, $A6, $86, $CE, $85, $87, $A8, $6A, $5D, $3C, $3B, $3C, $3B   ; 

- D 0 - - - 0x03F22B 0F:121B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F22C 0F:121C: 5D        .byte $5D   ; 

- D 0 - - - 0x03F22D 0F:121D: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F22F 0F:121F: 4B        .byte $4B, $4C   ; 

- D 0 - - - 0x03F231 0F:1221: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03F232 0F:1222: 5D        .byte $5D, $68, $A6, $86, $CE, $85, $87, $A8, $6A, $3B, $3C, $4D, $6E, $68, $A6, $86   ; 

- D 0 - - - 0x03F242 0F:1232: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F243 0F:1233: CE        .byte $CE   ; 

- D 0 - - - 0x03F244 0F:1234: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F245 0F:1235: 87        .byte $87, $A8, $6A, $5D, $4C, $4B, $4C, $4B   ; 

- D 0 - - - 0x03F24D 0F:123D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F24E 0F:123E: 5D        .byte $5D   ; 

- D 0 - - - 0x03F24F 0F:123F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F250 0F:1240: 6E        .byte $6E   ; 

- D 0 - - - 0x03F251 0F:1241: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F252 0F:1242: 3E        .byte $3E, $6E, $6D, $68, $A6, $86   ; 

- D 0 - - - 0x03F258 0F:1248: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F259 0F:1249: CE        .byte $CE   ; 

- D 0 - - - 0x03F25A 0F:124A: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F25B 0F:124B: 87        .byte $87, $A8, $6A, $4B, $4C   ; 

- D 0 - - - 0x03F260 0F:1250: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F261 0F:1251: 5D        .byte $5D   ; 

- D 0 - - - 0x03F262 0F:1252: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F263 0F:1253: 68        .byte $68, $A6, $86   ; 

- D 0 - - - 0x03F266 0F:1256: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F267 0F:1257: CE        .byte $CE   ; 

- D 0 - - - 0x03F268 0F:1258: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F269 0F:1259: 87        .byte $87, $A8, $6A, $6D, $3C, $3B, $3C, $3B   ; 

- D 0 - - - 0x03F271 0F:1261: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F272 0F:1262: 5D        .byte $5D   ; 

- D 0 - - - 0x03F273 0F:1263: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F275 0F:1265: 3B        .byte $3B, $3C   ; 

- D 0 - - - 0x03F277 0F:1267: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F278 0F:1268: 3B        .byte $3B, $68, $A6, $86   ; 

- D 0 - - - 0x03F27C 0F:126C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F27D 0F:126D: CE        .byte $CE   ; 

- D 0 - - - 0x03F27E 0F:126E: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F27F 0F:126F: 87        .byte $87, $A8, $6A, $3B, $3C   ; 

- D 0 - - - 0x03F284 0F:1274: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F285 0F:1275: 5D        .byte $5D   ; 

- D 0 - - - 0x03F286 0F:1276: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F287 0F:1277: 68        .byte $68, $A6, $86   ; 

- D 0 - - - 0x03F28A 0F:127A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F28B 0F:127B: CE        .byte $CE   ; 

- D 0 - - - 0x03F28C 0F:127C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F28D 0F:127D: 87        .byte $87, $A8, $6A, $3E   ; 

- D 0 - - - 0x03F291 0F:1281: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F292 0F:1282: 6E        .byte $6E   ; 

- D 0 - - - 0x03F293 0F:1283: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F294 0F:1284: 5D        .byte $5D, $6D   ; 

- D 0 - - - 0x03F296 0F:1286: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F298 0F:1288: 4B        .byte $4B, $4C   ; 

- D 0 - - - 0x03F29A 0F:128A: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F29B 0F:128B: 4B        .byte $4B, $68, $A6, $86   ; 

- D 0 - - - 0x03F29F 0F:128F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2A0 0F:1290: CE        .byte $CE   ; 

- D 0 - - - 0x03F2A1 0F:1291: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F2A2 0F:1292: 87        .byte $87, $A8, $6A, $4B, $4C   ; 

- D 0 - - - 0x03F2A7 0F:1297: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2A8 0F:1298: 5D        .byte $5D   ; 

- D 0 - - - 0x03F2A9 0F:1299: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F2AA 0F:129A: 68        .byte $68, $A6, $96   ; 

- D 0 - - - 0x03F2AD 0F:129D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2AE 0F:129E: 98        .byte $98   ; 

- D 0 - - - 0x03F2AF 0F:129F: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F2B0 0F:12A0: 97        .byte $97, $A8, $6A, $4D   ; 

- D 0 - - - 0x03F2B4 0F:12A4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2B5 0F:12A5: 6E        .byte $6E   ; 

- D 0 - - - 0x03F2B6 0F:12A6: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F2B7 0F:12A7: 3E        .byte $3E, $6E, $6D, $4D   ; 

- D 0 - - - 0x03F2BB 0F:12AB: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F2BC 0F:12AC: 6E        .byte $6E   ; 

- D 0 - - - 0x03F2BD 0F:12AD: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F2BE 0F:12AE: 68        .byte $68, $A6, $96   ; 

- D 0 - - - 0x03F2C1 0F:12B1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2C2 0F:12B2: 98        .byte $98   ; 

- D 0 - - - 0x03F2C3 0F:12B3: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F2C4 0F:12B4: 97        .byte $97, $A8, $6A, $4D, $6E   ; 

- D 0 - - - 0x03F2C9 0F:12B9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2CA 0F:12BA: 5D        .byte $5D   ; 

- D 0 - - - 0x03F2CB 0F:12BB: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F2CC 0F:12BC: 6E        .byte $6E, $3F   ; 

- D 0 - - - 0x03F2CE 0F:12BE: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F2CF 0F:12BF: BB        .byte $BB   ; 

- D 0 - - - 0x03F2D0 0F:12C0: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F2D1 0F:12C1: 2F        .byte $2F, $6E, $5D, $00   ; 

- D 0 - - - 0x03F2D5 0F:12C5: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F2D6 0F:12C6: BA        .byte $BA   ; 

- D 0 - - - 0x03F2D7 0F:12C7: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F2D8 0F:12C8: 2F        .byte $2F, $6E, $5D   ; 

- D 0 - - - 0x03F2DB 0F:12CB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F2DC 0F:12CC: 6E        .byte $6E   ; 

- D 0 - - - 0x03F2DD 0F:12CD: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F2DE 0F:12CE: 6D        .byte $6D, $4D, $3F   ; 

- D 0 - - - 0x03F2E1 0F:12D1: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F2E2 0F:12D2: BD        .byte $BD   ; 

- D 0 - - - 0x03F2E3 0F:12D3: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F2E4 0F:12D4: 00        .byte $00, $0E, $5D, $00   ; 

- D 0 - - - 0x03F2E8 0F:12D8: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F2E9 0F:12D9: BC        .byte $BC   ; 

- D 0 - - - 0x03F2EA 0F:12DA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F2EB 0F:12DB: 2F        .byte $2F   ; 

- D 0 - - - 0x03F2EC 0F:12DC: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F2EE 0F:12DE: 6E        .byte $6E, $5D   ; 

- D 0 - - - 0x03F2F0 0F:12E0: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F2F1 0F:12E1: 0E        .byte $0E, $5D, $00   ; 

- D 0 - - - 0x03F2F4 0F:12E4: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F2F5 0F:12E5: BA        .byte $BA   ; 

- D 0 - - - 0x03F2F6 0F:12E6: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F2F7 0F:12E7: 2F        .byte $2F, $6E, $6D, $00   ; 

- D 0 - - - 0x03F2FB 0F:12EB: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F2FC 0F:12EC: BB        .byte $BB   ; 

- D 0 - - - 0x03F2FD 0F:12ED: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F2FE 0F:12EE: 00        .byte $00, $1F, $5D, $0E, $5D, $1F, $5D, $00   ; 

- D 0 - - - 0x03F306 0F:12F6: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F307 0F:12F7: BC        .byte $BC   ; 

- D 0 - - - 0x03F308 0F:12F8: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F309 0F:12F9: 00        .byte $00, $1F, $1E, $00   ; 

- D 0 - - - 0x03F30D 0F:12FD: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03F30E 0F:12FE: BD        .byte $BD   ; 

- D 0 - - - 0x03F30F 0F:12FF: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F310 0F:1300: 2F        .byte $2F, $6E, $6D, $1F, $6D, $4D, $6D, $00, $C7   ; 

- D 0 - - - 0x03F319 0F:1309: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03F31A 0F:130A: 9D        .byte $9D   ; 

- D 0 - - - 0x03F31B 0F:130B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F31C 0F:130C: 2F        .byte $2F   ; 

- D 0 - - - 0x03F31D 0F:130D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F31E 0F:130E: 6E        .byte $6E   ; 

- D 0 - - - 0x03F31F 0F:130F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F320 0F:1310: 3F        .byte $3F   ; 

- D 0 - - - 0x03F321 0F:1311: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03F322 0F:1312: 9D        .byte $9D   ; 

- D 0 - - - 0x03F323 0F:1313: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F324 0F:1314: 9B        .byte $9B, $00, $4D   ; 

- D 0 - - - 0x03F327 0F:1317: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F328 0F:1318: 6E        .byte $6E   ; 

- D 0 - - - 0x03F329 0F:1319: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F32A 0F:131A: 5D        .byte $5D, $6E, $3F, $65   ; 

- D 0 - - - 0x03F32E 0F:131E: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03F32F 0F:131F: CF        .byte $CF   ; 

- D 0 - - - 0x03F330 0F:1320: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F331 0F:1321: 00        .byte $00, $4D, $6E, $3F   ; 

- D 0 - - - 0x03F335 0F:1325: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03F336 0F:1326: CF        .byte $CF   ; 

- D 0 - - - 0x03F337 0F:1327: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F338 0F:1328: AC        .byte $AC, $00, $5D, $1E, $1F, $6E, $6D, $0D, $00, $65   ; 

- D 0 - - - 0x03F342 0F:1332: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F343 0F:1333: CF        .byte $CF   ; 

- D 0 - - - 0x03F344 0F:1334: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F345 0F:1335: 8A        .byte $8A, $00, $5D, $0D, $00, $2A   ; 

- D 0 - - - 0x03F34B 0F:133B: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F34C 0F:133C: CF        .byte $CF   ; 

- D 0 - - - 0x03F34D 0F:133D: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F34E 0F:133E: AC        .byte $AC, $00, $5D, $0D, $0E, $1E, $4D, $6E, $3F, $65   ; 

- D 0 - - - 0x03F358 0F:1348: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F359 0F:1349: CF        .byte $CF   ; 

- D 0 - - - 0x03F35A 0F:134A: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F35B 0F:134B: 18        .byte $18, $B7, $00, $C3, $1E, $00, $B8, $2A   ; 

- D 0 - - - 0x03F363 0F:1353: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F364 0F:1354: CF        .byte $CF   ; 

- D 0 - - - 0x03F365 0F:1355: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F366 0F:1356: AC        .byte $AC, $00, $C3, $1E, $1F, $0D, $5D, $0D, $00, $65   ; 

- D 0 - - - 0x03F370 0F:1360: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F371 0F:1361: CF        .byte $CF   ; 

- D 0 - - - 0x03F372 0F:1362: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F373 0F:1363: 18        .byte $18, $B7, $CE, $00, $A5, $0D, $00, $CE, $B8, $2A   ; 

- D 0 - - - 0x03F37D 0F:136D: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F37E 0F:136E: CF        .byte $CF   ; 

- D 0 - - - 0x03F37F 0F:136F: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F380 0F:1370: AC        .byte $AC, $00, $A5, $0D, $0E, $1E, $C3, $1E, $00, $AA   ; 

- D 0 - - - 0x03F38A 0F:137A: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F38B 0F:137B: CF        .byte $CF   ; 

- D 0 - - - 0x03F38C 0F:137C: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F38D 0F:137D: 8A        .byte $8A, $B7   ; 

- D 0 - - - 0x03F38F 0F:137F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F390 0F:1380: CE        .byte $CE   ; 

- D 0 - - - 0x03F391 0F:1381: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F392 0F:1382: 00        .byte $00, $A5, $1E, $00   ; 

- D 0 - - - 0x03F396 0F:1386: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F397 0F:1387: CE        .byte $CE   ; 

- D 0 - - - 0x03F398 0F:1388: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F399 0F:1389: B8        .byte $B8, $6B   ; 

- D 0 - - - 0x03F39B 0F:138B: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F39C 0F:138C: CF        .byte $CF   ; 

- D 0 - - - 0x03F39D 0F:138D: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F39E 0F:138E: 5B        .byte $5B, $00, $B5, $1E, $1F, $0D, $A5, $0D, $00, $80   ; 

- D 0 - - - 0x03F3A8 0F:1398: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F3A9 0F:1399: 81        .byte $81   ; 

- D 0 - - - 0x03F3AA 0F:139A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F3AB 0F:139B: AB        .byte $AB, $B7   ; 

- D 0 - - - 0x03F3AD 0F:139D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3AE 0F:139E: CE        .byte $CE   ; 

- D 0 - - - 0x03F3AF 0F:139F: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F3B0 0F:13A0: B7        .byte $B7, $00, $B5, $0D, $00, $B8   ; 

- D 0 - - - 0x03F3B6 0F:13A6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3B7 0F:13A7: CE        .byte $CE   ; 

- D 0 - - - 0x03F3B8 0F:13A8: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F3B9 0F:13A9: B8        .byte $B8, $80   ; 

- D 0 - - - 0x03F3BB 0F:13AB: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F3BC 0F:13AC: 81        .byte $81   ; 

- D 0 - - - 0x03F3BD 0F:13AD: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F3BE 0F:13AE: AB        .byte $AB, $00, $0E, $0D, $0E, $1E, $A5, $1E, $00, $80   ; 

- D 0 - - - 0x03F3C8 0F:13B8: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F3C9 0F:13B9: 81        .byte $81   ; 

- D 0 - - - 0x03F3CA 0F:13BA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F3CB 0F:13BB: AB        .byte $AB   ; 

- D 0 - - - 0x03F3CC 0F:13BC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3CD 0F:13BD: CE        .byte $CE   ; 

- D 0 - - - 0x03F3CE 0F:13BE: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F3CF 0F:13BF: B7        .byte $B7, $CE, $00, $1F, $1E, $00, $CE, $B8   ; 

- D 0 - - - 0x03F3D7 0F:13C7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3D8 0F:13C8: CE        .byte $CE   ; 

- D 0 - - - 0x03F3D9 0F:13C9: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F3DA 0F:13CA: 80        .byte $80   ; 

- D 0 - - - 0x03F3DB 0F:13CB: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F3DC 0F:13CC: 81        .byte $81   ; 

- D 0 - - - 0x03F3DD 0F:13CD: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03F3DE 0F:13CE: AB        .byte $AB, $00, $1F, $1E, $1F, $0D, $A5, $0D, $00, $90, $FF, $80   ; 

- D 0 - - - 0x03F3EA 0F:13DA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3EB 0F:13DB: 81        .byte $81   ; 

- D 0 - - - 0x03F3EC 0F:13DC: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F3ED 0F:13DD: AB        .byte $AB, $CE, $B7   ; 

- D 0 - - - 0x03F3F0 0F:13E0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3F1 0F:13E1: CE        .byte $CE   ; 

- D 0 - - - 0x03F3F2 0F:13E2: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F3F3 0F:13E3: 00        .byte $00, $0E, $0D, $00   ; 

- D 0 - - - 0x03F3F7 0F:13E7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F3F8 0F:13E8: CE        .byte $CE   ; 

- D 0 - - - 0x03F3F9 0F:13E9: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F3FA 0F:13EA: B8        .byte $B8, $CE, $90, $FF, $80   ; 

- D 0 - - - 0x03F3FF 0F:13EF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F400 0F:13F0: 81        .byte $81   ; 

- D 0 - - - 0x03F401 0F:13F1: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F402 0F:13F2: AB        .byte $AB, $00, $0E, $0D, $0E, $00, $A5   ; 

- D 0 - - - 0x03F409 0F:13F9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F40A 0F:13FA: 00        .byte $00   ; 

- D 0 - - - 0x03F40B 0F:13FB: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F40D 0F:13FD: 90        .byte $90, $FF   ; 

- D 0 - - - 0x03F40F 0F:13FF: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F410 0F:1400: 44        .byte $44, $CB, $B7   ; 

- D 0 - - - 0x03F413 0F:1403: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F414 0F:1404: CE        .byte $CE   ; 

- D 0 - - - 0x03F415 0F:1405: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F416 0F:1406: A4        .byte $A4   ; 

- D 0 - - - 0x03F417 0F:1407: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F418 0F:1408: 00        .byte $00   ; 

- D 0 - - - 0x03F419 0F:1409: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F41A 0F:140A: A3        .byte $A3   ; 

- D 0 - - - 0x03F41B 0F:140B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F41C 0F:140C: CE        .byte $CE   ; 

- D 0 - - - 0x03F41D 0F:140D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F41E 0F:140E: B8        .byte $B8   ; 

- D 0 - - - 0x03F41F 0F:140F: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F421 0F:1411: 90        .byte $90, $FF   ; 

- D 0 - - - 0x03F423 0F:1413: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F424 0F:1414: B1        .byte $B1, $CB   ; 

- D 0 - - - 0x03F426 0F:1416: 81        .byte con_80 + $01, $C5   ; 
- D 0 - - - 0x03F428 0F:1418: 00        .byte $00   ; 

- D 0 - - - 0x03F429 0F:1419: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F42A 0F:141A: 50        .byte $50   ; 

- D 0 - - - 0x03F42B 0F:141B: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F42C 0F:141C: 00        .byte $00   ; 

- D 0 - - - 0x03F42D 0F:141D: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F42E 0F:141E: 50        .byte $50   ; 

- D 0 - - - 0x03F42F 0F:141F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F430 0F:1420: 00        .byte $00   ; 

- D 0 - - - 0x03F431 0F:1421: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F432 0F:1422: 55        .byte $55   ; 

- D 0 - - - 0x03F433 0F:1423: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F434 0F:1424: 00        .byte $00   ; 

- D 0 - - - 0x03F435 0F:1425: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F436 0F:1426: 55        .byte $55   ; 

- D 0 - - - 0x03F437 0F:1427: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F438 0F:1428: 00        .byte $00   ; 

- D 0 - - - 0x03F439 0F:1429: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F43A 0F:142A: F5        .byte $F5, $F0, $30, $C0, $F0, $F5   ; 

- D 0 - - - 0x03F440 0F:1430: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F441 0F:1431: 00        .byte $00   ; 

- D 0 - - - 0x03F442 0F:1432: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F443 0F:1433: AF        .byte $AF   ; 

- D 0 - - - 0x03F444 0F:1434: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F445 0F:1435: 23        .byte $23, $8C   ; 

- D 0 - - - 0x03F447 0F:1437: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F448 0F:1438: AF        .byte $AF   ; 

- D 0 - - - 0x03F449 0F:1439: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F44A 0F:143A: 00        .byte $00   ; 

- D 0 - - - 0x03F44B 0F:143B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F44C 0F:143C: AA        .byte $AA   ; 

- D 0 - - - 0x03F44D 0F:143D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F44E 0F:143E: 22        .byte $22, $88   ; 

- D 0 - - - 0x03F450 0F:1440: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F451 0F:1441: AA        .byte $AA   ; 

- D 0 - - - 0x03F452 0F:1442: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F453 0F:1443: 00        .byte $00   ; 

- D 0 - - - 0x03F454 0F:1444: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F455 0F:1445: AA        .byte $AA   ; 

- D 0 - - - 0x03F456 0F:1446: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F457 0F:1447: 22        .byte $22, $88   ; 

- D 0 - - - 0x03F459 0F:1449: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F45A 0F:144A: AA        .byte $AA   ; 

- D 0 - - - 0x03F45B 0F:144B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F45C 0F:144C: 00        .byte $00   ; 

- D 0 - - - 0x03F45D 0F:144D: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F45E 0F:144E: AA        .byte $AA   ; 

- D 0 - - - 0x03F45F 0F:144F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F460 0F:1450: 55        .byte $55   ; 

- D 0 - - - 0x03F461 0F:1451: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F462 0F:1452: AA        .byte $AA   ; 

- D 0 - - - 0x03F463 0F:1453: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F464 0F:1454: 0A        .byte $0A   ; 

- D 0 - - - 0x03F465 0F:1455: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F466 0F:1456: 05        .byte $05   ; 

- D 0 - - - 0x03F467 0F:1457: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F468 0F:1458: 0A        .byte $0A   ; 

- D 0 - - - 0x03F469 0F:1459: 00        .byte $00, $00   ; end token



_off031_0x03F46B_24:
- D 0 - - - 0x03F46B 0F:145B: 00        .byte $00   ; 
- D 0 - - - 0x03F46C 0F:145C: 28 00     .dbyt $2800

- D 0 - - - 0x03F46E 0F:145E: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F46F 0F:145F: 00        .byte $00   ; 

- D 0 - - - 0x03F470 0F:1460: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F471 0F:1461: 49        .byte $49   ; 

- D 0 - - - 0x03F472 0F:1462: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F473 0F:1463: 4A        .byte $4A   ; 

- D 0 - - - 0x03F474 0F:1464: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F475 0F:1465: 48        .byte $48   ; 

- D 0 - - - 0x03F476 0F:1466: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03F477 0F:1467: 00        .byte $00   ; 

- D 0 - - - 0x03F478 0F:1468: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F479 0F:1469: 59        .byte $59   ; 

- D 0 - - - 0x03F47A 0F:146A: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F47B 0F:146B: 00        .byte $00   ; 

- D 0 - - - 0x03F47C 0F:146C: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F47D 0F:146D: 59        .byte $59, $00, $2A   ; 

- D 0 - - - 0x03F480 0F:1470: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F481 0F:1471: 2B        .byte $2B   ; 

- D 0 - - - 0x03F482 0F:1472: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F483 0F:1473: 0C        .byte $0C, $6E   ; 

- D 0 - - - 0x03F485 0F:1475: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F486 0F:1476: 2B        .byte $2B   ; 

- D 0 - - - 0x03F487 0F:1477: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F488 0F:1478: 0C        .byte $0C   ; 

- D 0 - - - 0x03F489 0F:1479: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F48A 0F:147A: 6E        .byte $6E   ; 

- D 0 - - - 0x03F48B 0F:147B: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F48C 0F:147C: 2A        .byte $2A, $0C, $6E, $2B, $0C   ; 

- D 0 - - - 0x03F491 0F:1481: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F492 0F:1482: 6E        .byte $6E   ; 

- D 0 - - - 0x03F493 0F:1483: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F494 0F:1484: 2B        .byte $2B   ; 

- D 0 - - - 0x03F495 0F:1485: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F496 0F:1486: 2A        .byte $2A, $2B, $2C, $2D, $2E, $2F, $59   ; 

- D 0 - - - 0x03F49D 0F:148D: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F49E 0F:148E: 00        .byte $00   ; 

- D 0 - - - 0x03F49F 0F:148F: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F4A0 0F:1490: 59        .byte $59, $00, $3A   ; 

- D 0 - - - 0x03F4A3 0F:1493: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4A4 0F:1494: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4A5 0F:1495: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F4A6 0F:1496: 1C        .byte $1C, $6E   ; 

- D 0 - - - 0x03F4A8 0F:1498: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F4A9 0F:1499: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4AA 0F:149A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F4AB 0F:149B: 1C        .byte $1C   ; 

- D 0 - - - 0x03F4AC 0F:149C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4AD 0F:149D: 6E        .byte $6E   ; 

- D 0 - - - 0x03F4AE 0F:149E: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F4AF 0F:149F: 3A        .byte $3A, $1C, $6E, $3B, $1C   ; 

- D 0 - - - 0x03F4B4 0F:14A4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4B5 0F:14A5: 6E        .byte $6E   ; 

- D 0 - - - 0x03F4B6 0F:14A6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4B7 0F:14A7: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4B8 0F:14A8: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F4B9 0F:14A9: 3A        .byte $3A   ; 

- D 0 - - - 0x03F4BA 0F:14AA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4BB 0F:14AB: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4BC 0F:14AC: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F4BD 0F:14AD: 3D        .byte $3D, $3E, $3F, $59   ; 

- D 0 - - - 0x03F4C1 0F:14B1: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F4C2 0F:14B2: 00        .byte $00   ; 

- D 0 - - - 0x03F4C3 0F:14B3: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F4C4 0F:14B4: 59        .byte $59, $00, $2A   ; 

- D 0 - - - 0x03F4C7 0F:14B7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4C8 0F:14B8: 2B        .byte $2B   ; 

- D 0 - - - 0x03F4C9 0F:14B9: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F4CA 0F:14BA: 0C        .byte $0C, $6E   ; 

- D 0 - - - 0x03F4CC 0F:14BC: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F4CD 0F:14BD: 2B        .byte $2B   ; 

- D 0 - - - 0x03F4CE 0F:14BE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F4CF 0F:14BF: 0C        .byte $0C   ; 

- D 0 - - - 0x03F4D0 0F:14C0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4D1 0F:14C1: 6E        .byte $6E   ; 

- D 0 - - - 0x03F4D2 0F:14C2: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F4D3 0F:14C3: 2A        .byte $2A, $0C, $6E, $2B, $0C   ; 

- D 0 - - - 0x03F4D8 0F:14C8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4D9 0F:14C9: 6E        .byte $6E   ; 

- D 0 - - - 0x03F4DA 0F:14CA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4DB 0F:14CB: 2B        .byte $2B   ; 

- D 0 - - - 0x03F4DC 0F:14CC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F4DD 0F:14CD: 2A        .byte $2A   ; 

- D 0 - - - 0x03F4DE 0F:14CE: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F4DF 0F:14CF: 2B        .byte $2B   ; 

- D 0 - - - 0x03F4E0 0F:14D0: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F4E1 0F:14D1: 2C        .byte $2C, $2D, $59   ; 

- D 0 - - - 0x03F4E4 0F:14D4: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F4E5 0F:14D5: 00        .byte $00   ; 

- D 0 - - - 0x03F4E6 0F:14D6: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F4E7 0F:14D7: 59        .byte $59, $00, $3A   ; 

- D 0 - - - 0x03F4EA 0F:14DA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4EB 0F:14DB: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4EC 0F:14DC: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F4ED 0F:14DD: 1C        .byte $1C, $6E   ; 

- D 0 - - - 0x03F4EF 0F:14DF: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F4F0 0F:14E0: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4F1 0F:14E1: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F4F2 0F:14E2: 1C        .byte $1C   ; 

- D 0 - - - 0x03F4F3 0F:14E3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4F4 0F:14E4: 6E        .byte $6E   ; 

- D 0 - - - 0x03F4F5 0F:14E5: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F4F6 0F:14E6: 3A        .byte $3A, $1C, $6E, $3B, $1C   ; 

- D 0 - - - 0x03F4FB 0F:14EB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4FC 0F:14EC: 6E        .byte $6E   ; 

- D 0 - - - 0x03F4FD 0F:14ED: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F4FE 0F:14EE: 3B        .byte $3B   ; 

- D 0 - - - 0x03F4FF 0F:14EF: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F500 0F:14F0: 3A        .byte $3A   ; 

- D 0 - - - 0x03F501 0F:14F1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F502 0F:14F2: 3B        .byte $3B   ; 

- D 0 - - - 0x03F503 0F:14F3: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F504 0F:14F4: 3D        .byte $3D, $59   ; 

- D 0 - - - 0x03F506 0F:14F6: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F507 0F:14F7: 00        .byte $00   ; 

- D 0 - - - 0x03F508 0F:14F8: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F509 0F:14F9: 59        .byte $59   ; 

- D 0 - - - 0x03F50A 0F:14FA: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F50B 0F:14FB: 00        .byte $00   ; 

- D 0 - - - 0x03F50C 0F:14FC: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F50D 0F:14FD: 05        .byte $05, $9F, $5E, $9F, $05, $06, $9E   ; 

- D 0 - - - 0x03F514 0F:1504: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F515 0F:1505: 6E        .byte $6E   ; 

- D 0 - - - 0x03F516 0F:1506: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F517 0F:1507: 9F        .byte $9F, $9E, $6E, $9E, $9F   ; 

- D 0 - - - 0x03F51C 0F:150C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F51D 0F:150D: 6E        .byte $6E   ; 

- D 0 - - - 0x03F51E 0F:150E: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F51F 0F:150F: 05        .byte $05, $06   ; 

- D 0 - - - 0x03F521 0F:1511: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F523 0F:1513: 8C        .byte $8C, $8D   ; 

- D 0 - - - 0x03F525 0F:1515: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F526 0F:1516: 59        .byte $59   ; 

- D 0 - - - 0x03F527 0F:1517: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F528 0F:1518: 00        .byte $00   ; 

- D 0 - - - 0x03F529 0F:1519: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F52A 0F:151A: 59        .byte $59   ; 

- D 0 - - - 0x03F52B 0F:151B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F52C 0F:151C: 00        .byte $00   ; 

- D 0 - - - 0x03F52D 0F:151D: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03F52E 0F:151E: 2E        .byte $2E, $AF, $6E, $AF, $3E, $3F, $00, $5E, $6E, $AF, $00, $6F, $00, $AF   ; 

- D 0 - - - 0x03F53C 0F:152C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F53D 0F:152D: 6E        .byte $6E   ; 

- D 0 - - - 0x03F53E 0F:152E: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F53F 0F:152F: 2E        .byte $2E, $2F   ; 

- D 0 - - - 0x03F541 0F:1531: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F543 0F:1533: 7C        .byte $7C, $7D   ; 

- D 0 - - - 0x03F545 0F:1535: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F546 0F:1536: 0F        .byte $0F   ; 

- D 0 - - - 0x03F547 0F:1537: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F548 0F:1538: 2E        .byte $2E, $9F, $6E, $9F, $2E, $2F, $9E   ; 

- D 0 - - - 0x03F54F 0F:153F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F550 0F:1540: 6E        .byte $6E   ; 

- D 0 - - - 0x03F551 0F:1541: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F552 0F:1542: 9F        .byte $9F, $9E, $5E, $9E, $9F   ; 

- D 0 - - - 0x03F557 0F:1547: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F558 0F:1548: 6E        .byte $6E   ; 

- D 0 - - - 0x03F559 0F:1549: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F55A 0F:154A: 2E        .byte $2E, $2F   ; 

- D 0 - - - 0x03F55C 0F:154C: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F55E 0F:154E: 8C        .byte $8C, $8D   ; 

- D 0 - - - 0x03F560 0F:1550: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F561 0F:1551: CB        .byte $CB   ; 

- D 0 - - - 0x03F562 0F:1552: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F563 0F:1553: 2E        .byte $2E, $AF, $6E, $AF, $4E, $4F, $00   ; 

- D 0 - - - 0x03F56A 0F:155A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F56B 0F:155B: 6E        .byte $6E   ; 

- D 0 - - - 0x03F56C 0F:155C: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F56D 0F:155D: AF        .byte $AF, $00, $6E, $00, $AF   ; 

- D 0 - - - 0x03F572 0F:1562: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F573 0F:1563: 6E        .byte $6E   ; 

- D 0 - - - 0x03F574 0F:1564: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F575 0F:1565: 2E        .byte $2E, $2F   ; 

- D 0 - - - 0x03F577 0F:1567: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F579 0F:1569: 7C        .byte $7C, $7D   ; 

- D 0 - - - 0x03F57B 0F:156B: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F57D 0F:156D: 8D        .byte $8D, $6E   ; 

- D 0 - - - 0x03F57F 0F:156F: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F580 0F:1570: 8D        .byte $8D, $00, $2E, $9F, $5B   ; 

- D 0 - - - 0x03F585 0F:1575: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F586 0F:1576: 5C        .byte $5C   ; 

- D 0 - - - 0x03F587 0F:1577: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F588 0F:1578: 5D        .byte $5D, $6E, $9F, $9E, $6E, $9E, $9F   ; 

- D 0 - - - 0x03F58F 0F:157F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F590 0F:1580: 6E        .byte $6E   ; 

- D 0 - - - 0x03F591 0F:1581: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F592 0F:1582: 2E        .byte $2E, $2F   ; 

- D 0 - - - 0x03F594 0F:1584: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F596 0F:1586: 8C        .byte $8C, $8D   ; 

- D 0 - - - 0x03F598 0F:1588: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F59A 0F:158A: 7D        .byte $7D, $5E   ; 

- D 0 - - - 0x03F59C 0F:158C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F59D 0F:158D: 7D        .byte $7D, $00, $2E, $AF   ; 

- D 0 - - - 0x03F5A1 0F:1591: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F5A2 0F:1592: 00        .byte $00   ; 

- D 0 - - - 0x03F5A3 0F:1593: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F5A4 0F:1594: 6E        .byte $6E, $AF, $00, $6E, $00, $AF   ; 

- D 0 - - - 0x03F5AA 0F:159A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5AB 0F:159B: 6F        .byte $6F   ; 

- D 0 - - - 0x03F5AC 0F:159C: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F5AD 0F:159D: 3E        .byte $3E, $3F, $7C, $49   ; 

- D 0 - - - 0x03F5B1 0F:15A1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F5B2 0F:15A2: 4A        .byte $4A   ; 

- D 0 - - - 0x03F5B3 0F:15A3: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F5B5 0F:15A5: 8D        .byte $8D, $6E   ; 

- D 0 - - - 0x03F5B7 0F:15A7: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F5B8 0F:15A8: 8D        .byte $8D, $00, $2B, $0C, $6E   ; 

- D 0 - - - 0x03F5BD 0F:15AD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5BE 0F:15AE: 2B        .byte $2B   ; 

- D 0 - - - 0x03F5BF 0F:15AF: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F5C0 0F:15B0: 2A        .byte $2A, $0C   ; 

- D 0 - - - 0x03F5C2 0F:15B2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5C3 0F:15B3: 6E        .byte $6E   ; 

- D 0 - - - 0x03F5C4 0F:15B4: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F5C5 0F:15B5: 2B        .byte $2B, $0C, $6E, $2B, $0C   ; 

- D 0 - - - 0x03F5CA 0F:15BA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5CB 0F:15BB: 5E        .byte $5E   ; 

- D 0 - - - 0x03F5CC 0F:15BC: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F5CD 0F:15BD: 2C        .byte $2C, $2D, $00, $59   ; 

- D 0 - - - 0x03F5D1 0F:15C1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F5D2 0F:15C2: 00        .byte $00   ; 

- D 0 - - - 0x03F5D3 0F:15C3: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F5D5 0F:15C5: 7D        .byte $7D, $6E   ; 

- D 0 - - - 0x03F5D7 0F:15C7: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F5D8 0F:15C8: 7D        .byte $7D, $00, $3B, $1C, $6E   ; 

- D 0 - - - 0x03F5DD 0F:15CD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5DE 0F:15CE: 3B        .byte $3B   ; 

- D 0 - - - 0x03F5DF 0F:15CF: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F5E0 0F:15D0: 3A        .byte $3A, $1C   ; 

- D 0 - - - 0x03F5E2 0F:15D2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5E3 0F:15D3: 6E        .byte $6E   ; 

- D 0 - - - 0x03F5E4 0F:15D4: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F5E5 0F:15D5: 3B        .byte $3B, $1C, $6E, $3B, $1C   ; 

- D 0 - - - 0x03F5EA 0F:15DA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F5EB 0F:15DB: 6E        .byte $6E   ; 

- D 0 - - - 0x03F5EC 0F:15DC: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F5ED 0F:15DD: 3B        .byte $3B, $3D, $00, $59   ; 

- D 0 - - - 0x03F5F1 0F:15E1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F5F2 0F:15E2: 00        .byte $00   ; 

- D 0 - - - 0x03F5F3 0F:15E3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F5F4 0F:15E4: 4C        .byte $4C   ; 

- D 0 - - - 0x03F5F5 0F:15E5: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F5F7 0F:15E7: 6E        .byte $6E, $8D   ; 

- D 0 - - - 0x03F5F9 0F:15E9: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F5FA 0F:15EA: 00        .byte $00, $05, $9F, $6E, $9F, $05, $06, $9E   ; 

- D 0 - - - 0x03F602 0F:15F2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F603 0F:15F3: 6E        .byte $6E   ; 

- D 0 - - - 0x03F604 0F:15F4: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F605 0F:15F5: 9F        .byte $9F, $9E, $6E, $9E, $9F   ; 

- D 0 - - - 0x03F60A 0F:15FA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F60B 0F:15FB: 6E        .byte $6E   ; 

- D 0 - - - 0x03F60C 0F:15FC: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F60D 0F:15FD: 9E        .byte $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03F611 0F:1601: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F612 0F:1602: 00        .byte $00   ; 

- D 0 - - - 0x03F613 0F:1603: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F614 0F:1604: 4C        .byte $4C, $5F   ; 

- D 0 - - - 0x03F616 0F:1606: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F618 0F:1608: 7D        .byte $7D, $6E   ; 

- D 0 - - - 0x03F61A 0F:160A: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F61B 0F:160B: 7D        .byte $7D, $00, $2E, $AF, $6E, $AF, $2E, $2F, $00   ; 

- D 0 - - - 0x03F624 0F:1614: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F625 0F:1615: 6E        .byte $6E   ; 

- D 0 - - - 0x03F626 0F:1616: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F627 0F:1617: AF        .byte $AF, $00, $6E, $00, $AF   ; 

- D 0 - - - 0x03F62C 0F:161C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F62D 0F:161D: 6E        .byte $6E   ; 

- D 0 - - - 0x03F62E 0F:161E: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F62F 0F:161F: 00        .byte $00, $AF, $00, $59   ; 

- D 0 - - - 0x03F633 0F:1623: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F634 0F:1624: 00        .byte $00   ; 

- D 0 - - - 0x03F635 0F:1625: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F636 0F:1626: 4C        .byte $4C   ; 

- D 0 - - - 0x03F637 0F:1627: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03F638 0F:1628: 5F        .byte $5F, $8D, $6E, $8D, $00, $2E, $9F, $6E, $9F, $2E, $2F, $9E, $6E, $5B   ; 

- D 0 - - - 0x03F646 0F:1636: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F647 0F:1637: 5C        .byte $5C   ; 

- D 0 - - - 0x03F648 0F:1638: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F649 0F:1639: 5D        .byte $5D, $9E, $9F, $5B, $5D, $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03F652 0F:1642: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F653 0F:1643: 00        .byte $00   ; 

- D 0 - - - 0x03F654 0F:1644: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F656 0F:1646: 7D        .byte $7D, $7C   ; 

- D 0 - - - 0x03F658 0F:1648: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03F659 0F:1649: 7D        .byte $7D, $6F, $7D, $00, $2E, $AF, $6E, $AF, $2E, $2F, $00, $5E   ; 

- D 0 - - - 0x03F665 0F:1655: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F666 0F:1656: 00        .byte $00   ; 

- D 0 - - - 0x03F667 0F:1657: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F668 0F:1658: AF        .byte $AF   ; 

- D 0 - - - 0x03F669 0F:1659: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F66A 0F:165A: 00        .byte $00   ; 

- D 0 - - - 0x03F66B 0F:165B: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F66C 0F:165C: AF        .byte $AF, $00, $59   ; 

- D 0 - - - 0x03F66F 0F:165F: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F670 0F:1660: 00        .byte $00   ; 

- D 0 - - - 0x03F671 0F:1661: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F673 0F:1663: 8D        .byte $8D, $8C   ; 

- D 0 - - - 0x03F675 0F:1665: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03F676 0F:1666: 8D        .byte $8D, $5E, $8D, $00, $2E, $9F, $6E, $9F, $3E, $3F, $9E   ; 

- D 0 - - - 0x03F681 0F:1671: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F682 0F:1672: 6E        .byte $6E   ; 

- D 0 - - - 0x03F683 0F:1673: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F684 0F:1674: 9F        .byte $9F, $9E, $6E, $9E, $9F   ; 

- D 0 - - - 0x03F689 0F:1679: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F68A 0F:167A: 6E        .byte $6E   ; 

- D 0 - - - 0x03F68B 0F:167B: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F68C 0F:167C: 9E        .byte $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03F690 0F:1680: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F691 0F:1681: 00        .byte $00   ; 

- D 0 - - - 0x03F692 0F:1682: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F694 0F:1684: 7D        .byte $7D, $7C   ; 

- D 0 - - - 0x03F696 0F:1686: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03F697 0F:1687: 7D        .byte $7D, $6E, $7D, $00, $2E, $AF, $6F, $AF, $2E, $2F, $00   ; 

- D 0 - - - 0x03F6A2 0F:1692: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6A3 0F:1693: 6E        .byte $6E   ; 

- D 0 - - - 0x03F6A4 0F:1694: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F6A5 0F:1695: AF        .byte $AF, $00, $6E, $00, $AF   ; 

- D 0 - - - 0x03F6AA 0F:169A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6AB 0F:169B: 6E        .byte $6E   ; 

- D 0 - - - 0x03F6AC 0F:169C: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F6AD 0F:169D: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03F6AF 0F:169F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6B0 0F:16A0: 00        .byte $00   ; 

- D 0 - - - 0x03F6B1 0F:16A1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F6B2 0F:16A2: 0F        .byte $0F   ; 

- D 0 - - - 0x03F6B3 0F:16A3: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F6B5 0F:16A5: 8D        .byte $8D, $8C   ; 

- D 0 - - - 0x03F6B7 0F:16A7: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03F6B8 0F:16A8: 8D        .byte $8D, $6E, $8D, $00, $2E, $9F, $5E, $9F, $2E, $2F, $9E   ; 

- D 0 - - - 0x03F6C3 0F:16B3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6C4 0F:16B4: 6E        .byte $6E   ; 

- D 0 - - - 0x03F6C5 0F:16B5: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F6C6 0F:16B6: 9F        .byte $9F, $9E, $6E, $9E, $9F   ; 

- D 0 - - - 0x03F6CB 0F:16BB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6CC 0F:16BC: 6E        .byte $6E   ; 

- D 0 - - - 0x03F6CD 0F:16BD: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F6CE 0F:16BE: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03F6D0 0F:16C0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6D1 0F:16C1: 00        .byte $00   ; 

- D 0 - - - 0x03F6D2 0F:16C2: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F6D3 0F:16C3: CB        .byte $CB   ; 

- D 0 - - - 0x03F6D4 0F:16C4: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F6D5 0F:16C5: 00        .byte $00   ; 

- D 0 - - - 0x03F6D6 0F:16C6: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F6D7 0F:16C7: 7E        .byte $7E   ; 

- D 0 - - - 0x03F6D8 0F:16C8: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F6D9 0F:16C9: 00        .byte $00   ; 

- D 0 - - - 0x03F6DA 0F:16CA: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F6DB 0F:16CB: 7E        .byte $7E, $00, $4E, $4F, $00   ; 

- D 0 - - - 0x03F6E0 0F:16D0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6E1 0F:16D1: 7E        .byte $7E   ; 

- D 0 - - - 0x03F6E2 0F:16D2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6E3 0F:16D3: 00        .byte $00   ; 

- D 0 - - - 0x03F6E4 0F:16D4: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F6E5 0F:16D5: 7E        .byte $7E   ; 

- D 0 - - - 0x03F6E6 0F:16D6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6E7 0F:16D7: 00        .byte $00   ; 

- D 0 - - - 0x03F6E8 0F:16D8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F6E9 0F:16D9: 7E        .byte $7E   ; 

- D 0 - - - 0x03F6EA 0F:16DA: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F6EB 0F:16DB: 00        .byte $00   ; 

- D 0 - - - 0x03F6EC 0F:16DC: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F6ED 0F:16DD: 0D        .byte $0D   ; 

- D 0 - - - 0x03F6EE 0F:16DE: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F6EF 0F:16DF: 1D        .byte $1D   ; 

- D 0 - - - 0x03F6F0 0F:16E0: 22        .byte con_00 + $22   ; 
- D 0 - - - 0x03F6F1 0F:16E1: 00        .byte $00   ; 

- D 0 - - - 0x03F6F2 0F:16E2: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F6F3 0F:16E3: D2        .byte $D2, $D0   ; 

- D 0 - - - 0x03F6F5 0F:16E5: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F6F6 0F:16E6: 00        .byte $00   ; 

- D 0 - - - 0x03F6F7 0F:16E7: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F6F8 0F:16E8: D8        .byte $D8   ; 

- D 0 - - - 0x03F6F9 0F:16E9: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F6FA 0F:16EA: D9        .byte $D9   ; 

- D 0 - - - 0x03F6FB 0F:16EB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F6FC 0F:16EC: DA        .byte $DA, $D2, $D1   ; 

- D 0 - - - 0x03F6FF 0F:16EF: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03F700 0F:16F0: 00        .byte $00   ; 

- D 0 - - - 0x03F701 0F:16F1: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F702 0F:16F2: E2        .byte $E2, $E0   ; 

- D 0 - - - 0x03F704 0F:16F4: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F705 0F:16F5: FD        .byte $FD   ; 

- D 0 - - - 0x03F706 0F:16F6: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F707 0F:16F7: F5        .byte $F5, $F6, $F7, $F8, $F9, $FA, $FB, $FC, $E2, $E1   ; 

- D 0 - - - 0x03F711 0F:1701: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F712 0F:1702: FD        .byte $FD   ; 

- D 0 - - - 0x03F713 0F:1703: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03F714 0F:1704: 00        .byte $00   ; 

- D 0 - - - 0x03F715 0F:1705: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F716 0F:1706: D8        .byte $D8   ; 

- D 0 - - - 0x03F717 0F:1707: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F718 0F:1708: D9        .byte $D9   ; 

- D 0 - - - 0x03F719 0F:1709: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F71A 0F:170A: DA        .byte $DA   ; 

- D 0 - - - 0x03F71B 0F:170B: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03F71C 0F:170C: 00        .byte $00   ; 

- D 0 - - - 0x03F71D 0F:170D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F71E 0F:170E: F2        .byte $F2, $DF   ; 

- D 0 - - - 0x03F720 0F:1710: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F721 0F:1711: 00        .byte $00   ; 

- D 0 - - - 0x03F722 0F:1712: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03F723 0F:1713: DB        .byte $DB, $DC, $DD, $DE, $DF, $EB, $00, $EB, $EC, $ED, $EE, $EF, $DB, $00, $F2, $DF   ; 

- D 0 - - - 0x03F733 0F:1723: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F734 0F:1724: 00        .byte $00   ; 

- D 0 - - - 0x03F735 0F:1725: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F736 0F:1726: DB        .byte $DB, $DC, $DD, $DE, $DF, $EB   ; 

- D 0 - - - 0x03F73C 0F:172C: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03F73D 0F:172D: 00        .byte $00   ; 

- D 0 - - - 0x03F73E 0F:172E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F73F 0F:172F: E9        .byte $E9   ; 

- D 0 - - - 0x03F740 0F:1730: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03F741 0F:1731: 00        .byte $00   ; 

- D 0 - - - 0x03F742 0F:1732: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F743 0F:1733: 55        .byte $55, $D5   ; 

- D 0 - - - 0x03F745 0F:1735: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F746 0F:1736: F0        .byte $F0   ; 

- D 0 - - - 0x03F747 0F:1737: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F748 0F:1738: 70        .byte $70   ; 

- D 0 - - - 0x03F749 0F:1739: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F74A 0F:173A: F0        .byte $F0   ; 

- D 0 - - - 0x03F74B 0F:173B: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F74C 0F:173C: 55        .byte $55, $1D, $FF, $DF, $FF, $77, $7F, $5F   ; 

- D 0 - - - 0x03F754 0F:1744: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F755 0F:1745: 5A        .byte $5A   ; 

- D 0 - - - 0x03F756 0F:1746: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F757 0F:1747: BF        .byte $BF, $AD, $FF   ; 

- D 0 - - - 0x03F75A 0F:174A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F75B 0F:174B: 77        .byte $77   ; 

- D 0 - - - 0x03F75C 0F:174C: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F75D 0F:174D: 55        .byte $55   ; 

- D 0 - - - 0x03F75E 0F:174E: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F75F 0F:174F: FF        .byte $FF, $DF, $FF   ; 

- D 0 - - - 0x03F762 0F:1752: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F763 0F:1753: 77        .byte $77   ; 

- D 0 - - - 0x03F764 0F:1754: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F765 0F:1755: 2A        .byte $2A   ; 

- D 0 - - - 0x03F766 0F:1756: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F767 0F:1757: 55        .byte $55   ; 

- D 0 - - - 0x03F768 0F:1758: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F769 0F:1759: FF        .byte $FF, $DD, $FA, $7B, $77, $A2   ; 

- D 0 - - - 0x03F76F 0F:175F: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F770 0F:1760: A5        .byte $A5   ; 

- D 0 - - - 0x03F771 0F:1761: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F772 0F:1762: AF        .byte $AF, $AD, $AF   ; 

- D 0 - - - 0x03F775 0F:1765: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F776 0F:1766: A7        .byte $A7   ; 

- D 0 - - - 0x03F777 0F:1767: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F778 0F:1768: AA        .byte $AA, $44, $00, $0C   ; 

- D 0 - - - 0x03F77C 0F:176C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F77D 0F:176D: AA        .byte $AA   ; 

- D 0 - - - 0x03F77E 0F:176E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F77F 0F:176F: 11        .byte $11   ; 

- D 0 - - - 0x03F780 0F:1770: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F781 0F:1771: 00        .byte $00   ; 

- D 0 - - - 0x03F782 0F:1772: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F783 0F:1773: 04        .byte $04   ; 

- D 0 - - - 0x03F784 0F:1774: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F785 0F:1775: 05        .byte $05   ; 

- D 0 - - - 0x03F786 0F:1776: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F787 0F:1777: 0A        .byte $0A   ; 

- D 0 - - - 0x03F788 0F:1778: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F789 0F:1779: 01        .byte $01, $05, $01   ; 

- D 0 - - - 0x03F78C 0F:177C: 00        .byte $00, $00   ; end token



_off031_0x03F78E_25:
- D 0 - - - 0x03F78E 0F:177E: 00        .byte $00   ; 
- D 0 - - - 0x03F78F 0F:177F: 28 00     .dbyt $2800

- D 0 - - - 0x03F791 0F:1781: 81        .byte con_80 + $01, $40   ; 
- D 0 - - - 0x03F793 0F:1783: 00        .byte $00   ; 

- D 0 - - - 0x03F794 0F:1784: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F795 0F:1785: 3A        .byte $3A   ; 

- D 0 - - - 0x03F796 0F:1786: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F797 0F:1787: 3B        .byte $3B   ; 

- D 0 - - - 0x03F798 0F:1788: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F799 0F:1789: 3A        .byte $3A   ; 

- D 0 - - - 0x03F79A 0F:178A: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F79B 0F:178B: 3B        .byte $3B   ; 

- D 0 - - - 0x03F79C 0F:178C: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F79D 0F:178D: 3A        .byte $3A   ; 

- D 0 - - - 0x03F79E 0F:178E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F79F 0F:178F: 3B        .byte $3B   ; 

- D 0 - - - 0x03F7A0 0F:1790: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7A1 0F:1791: 3A        .byte $3A   ; 

- D 0 - - - 0x03F7A2 0F:1792: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F7A3 0F:1793: 3B        .byte $3B   ; 

- D 0 - - - 0x03F7A4 0F:1794: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F7A5 0F:1795: 3D        .byte $3D, $3E, $3F   ; 

- D 0 - - - 0x03F7A8 0F:1798: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7A9 0F:1799: 2A        .byte $2A   ; 

- D 0 - - - 0x03F7AA 0F:179A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7AB 0F:179B: 2B        .byte $2B   ; 

- D 0 - - - 0x03F7AC 0F:179C: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F7AD 0F:179D: 2A        .byte $2A   ; 

- D 0 - - - 0x03F7AE 0F:179E: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F7AF 0F:179F: 2B        .byte $2B   ; 

- D 0 - - - 0x03F7B0 0F:17A0: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F7B1 0F:17A1: 2A        .byte $2A   ; 

- D 0 - - - 0x03F7B2 0F:17A2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7B3 0F:17A3: 2B        .byte $2B   ; 

- D 0 - - - 0x03F7B4 0F:17A4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7B5 0F:17A5: 2A        .byte $2A   ; 

- D 0 - - - 0x03F7B6 0F:17A6: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F7B7 0F:17A7: 2B        .byte $2B   ; 

- D 0 - - - 0x03F7B8 0F:17A8: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F7B9 0F:17A9: 2C        .byte $2C, $2D   ; 

- D 0 - - - 0x03F7BB 0F:17AB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7BC 0F:17AC: 3A        .byte $3A   ; 

- D 0 - - - 0x03F7BD 0F:17AD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7BE 0F:17AE: 3B        .byte $3B   ; 

- D 0 - - - 0x03F7BF 0F:17AF: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F7C0 0F:17B0: 3A        .byte $3A   ; 

- D 0 - - - 0x03F7C1 0F:17B1: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F7C2 0F:17B2: 3B        .byte $3B   ; 

- D 0 - - - 0x03F7C3 0F:17B3: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F7C4 0F:17B4: 3A        .byte $3A   ; 

- D 0 - - - 0x03F7C5 0F:17B5: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7C6 0F:17B6: 3B        .byte $3B   ; 

- D 0 - - - 0x03F7C7 0F:17B7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7C8 0F:17B8: 3A        .byte $3A   ; 

- D 0 - - - 0x03F7C9 0F:17B9: 07        .byte con_00 + $07   ; 
- D 0 - - - 0x03F7CA 0F:17BA: 3B        .byte $3B   ; 

- D 0 - - - 0x03F7CB 0F:17BB: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F7CC 0F:17BC: 3D        .byte $3D   ; 

- D 0 - - - 0x03F7CD 0F:17BD: C2        .byte con_C0 + $02, $10   ; 
- D 0 - - - 0x03F7CF 0F:17BF: 09        .byte $09, $0A   ; 

- D 0 - - - 0x03F7D1 0F:17C1: C2        .byte con_C0 + $02, $10   ; 
- D 0 - - - 0x03F7D3 0F:17C3: 28        .byte $28, $29   ; 

- D 0 - - - 0x03F7D5 0F:17C5: C2        .byte con_C0 + $02, $10   ; 
- D 0 - - - 0x03F7D7 0F:17C7: C0        .byte $C0, $C1   ; 

- D 0 - - - 0x03F7D9 0F:17C9: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F7DA 0F:17CA: B0        .byte $B0, $B1, $8C, $8D   ; 

- D 0 - - - 0x03F7DE 0F:17CE: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F7DF 0F:17CF: 4D        .byte $4D   ; 

- D 0 - - - 0x03F7E0 0F:17D0: C4        .byte con_C0 + $04, $04   ; 
- D 0 - - - 0x03F7E2 0F:17D2: B0        .byte $B0, $B1, $8C, $8D   ; 

- D 0 - - - 0x03F7E6 0F:17D6: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F7E7 0F:17D7: 4D        .byte $4D   ; 

- D 0 - - - 0x03F7E8 0F:17D8: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F7E9 0F:17D9: B0        .byte $B0, $B1, $8C, $8D, $C0, $C1, $7C, $7D, $99   ; 

- D 0 - - - 0x03F7F2 0F:17E2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7F3 0F:17E3: 9A        .byte $9A   ; 

- D 0 - - - 0x03F7F4 0F:17E4: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F7F5 0F:17E5: 9B        .byte $9B   ; 

- D 0 - - - 0x03F7F6 0F:17E6: C4        .byte con_C0 + $04, $04   ; 
- D 0 - - - 0x03F7F8 0F:17E8: C0        .byte $C0, $C1, $7C, $7D   ; 

- D 0 - - - 0x03F7FC 0F:17EC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F7FD 0F:17ED: 99        .byte $99   ; 

- D 0 - - - 0x03F7FE 0F:17EE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F7FF 0F:17EF: 9A        .byte $9A   ; 

- D 0 - - - 0x03F800 0F:17F0: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F801 0F:17F1: 9B        .byte $9B, $C0, $C1, $7C, $7D, $8C, $8D, $B0, $B1, $A9   ; 

- D 0 - - - 0x03F80B 0F:17FB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F80C 0F:17FC: AA        .byte $AA   ; 

- D 0 - - - 0x03F80D 0F:17FD: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F80E 0F:17FE: AB        .byte $AB   ; 

- D 0 - - - 0x03F80F 0F:17FF: C4        .byte con_C0 + $04, $04   ; 
- D 0 - - - 0x03F811 0F:1801: 8C        .byte $8C, $8D, $B0, $B1   ; 

- D 0 - - - 0x03F815 0F:1805: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F816 0F:1806: A9        .byte $A9   ; 

- D 0 - - - 0x03F817 0F:1807: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F818 0F:1808: AA        .byte $AA   ; 

- D 0 - - - 0x03F819 0F:1809: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F81A 0F:180A: AB        .byte $AB, $8C, $8D, $B0, $B1, $7C, $7D, $C0, $C1, $A9   ; 

- D 0 - - - 0x03F824 0F:1814: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F825 0F:1815: AA        .byte $AA   ; 

- D 0 - - - 0x03F826 0F:1816: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F827 0F:1817: AB        .byte $AB   ; 

- D 0 - - - 0x03F828 0F:1818: C4        .byte con_C0 + $04, $04   ; 
- D 0 - - - 0x03F82A 0F:181A: 7C        .byte $7C, $7D, $C0, $C1   ; 

- D 0 - - - 0x03F82E 0F:181E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F82F 0F:181F: A9        .byte $A9   ; 

- D 0 - - - 0x03F830 0F:1820: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F831 0F:1821: AA        .byte $AA   ; 

- D 0 - - - 0x03F832 0F:1822: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F833 0F:1823: AB        .byte $AB, $7C, $7D, $C0, $C1, $B0, $B1, $8C, $8D, $A9   ; 

- D 0 - - - 0x03F83D 0F:182D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F83E 0F:182E: AA        .byte $AA   ; 

- D 0 - - - 0x03F83F 0F:182F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F840 0F:1830: AB        .byte $AB   ; 

- D 0 - - - 0x03F841 0F:1831: C4        .byte con_C0 + $04, $04   ; 
- D 0 - - - 0x03F843 0F:1833: B0        .byte $B0, $B1, $8C, $8D   ; 

- D 0 - - - 0x03F847 0F:1837: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F848 0F:1838: A9        .byte $A9   ; 

- D 0 - - - 0x03F849 0F:1839: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F84A 0F:183A: AA        .byte $AA   ; 

- D 0 - - - 0x03F84B 0F:183B: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F84C 0F:183C: AB        .byte $AB, $B0, $B1, $8C, $8D, $C0, $C1, $7C, $7D, $A9   ; 

- D 0 - - - 0x03F856 0F:1846: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F857 0F:1847: AA        .byte $AA   ; 

- D 0 - - - 0x03F858 0F:1848: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F859 0F:1849: AB        .byte $AB   ; 

- D 0 - - - 0x03F85A 0F:184A: C4        .byte con_C0 + $04, $04   ; 
- D 0 - - - 0x03F85C 0F:184C: C0        .byte $C0, $C1, $7C, $7D   ; 

- D 0 - - - 0x03F860 0F:1850: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F861 0F:1851: A9        .byte $A9   ; 

- D 0 - - - 0x03F862 0F:1852: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F863 0F:1853: AA        .byte $AA   ; 

- D 0 - - - 0x03F864 0F:1854: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F865 0F:1855: AB        .byte $AB, $C0, $C1, $7C, $7D   ; 

- D 0 - - - 0x03F86A 0F:185A: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F86C 0F:185C: B0        .byte $B0, $B1   ; 

- D 0 - - - 0x03F86E 0F:185E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F86F 0F:185F: A9        .byte $A9   ; 

- D 0 - - - 0x03F870 0F:1860: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F871 0F:1861: AA        .byte $AA   ; 

- D 0 - - - 0x03F872 0F:1862: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F873 0F:1863: AB        .byte $AB   ; 

- D 0 - - - 0x03F874 0F:1864: C2        .byte con_C0 + $02, $08   ; 
- D 0 - - - 0x03F876 0F:1866: B0        .byte $B0, $B1   ; 

- D 0 - - - 0x03F878 0F:1868: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F879 0F:1869: A9        .byte $A9   ; 

- D 0 - - - 0x03F87A 0F:186A: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F87B 0F:186B: AA        .byte $AA   ; 

- D 0 - - - 0x03F87C 0F:186C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F87D 0F:186D: AB        .byte $AB   ; 

- D 0 - - - 0x03F87E 0F:186E: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F880 0F:1870: B0        .byte $B0, $B1   ; 

- D 0 - - - 0x03F882 0F:1872: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F884 0F:1874: 19        .byte $19, $1A   ; 

- D 0 - - - 0x03F886 0F:1876: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F887 0F:1877: B9        .byte $B9   ; 

- D 0 - - - 0x03F888 0F:1878: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F889 0F:1879: BA        .byte $BA   ; 

- D 0 - - - 0x03F88A 0F:187A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F88B 0F:187B: BB        .byte $BB   ; 

- D 0 - - - 0x03F88C 0F:187C: C2        .byte con_C0 + $02, $08   ; 
- D 0 - - - 0x03F88E 0F:187E: 19        .byte $19, $1A   ; 

- D 0 - - - 0x03F890 0F:1880: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F891 0F:1881: B9        .byte $B9   ; 

- D 0 - - - 0x03F892 0F:1882: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F893 0F:1883: BA        .byte $BA   ; 

- D 0 - - - 0x03F894 0F:1884: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F895 0F:1885: BB        .byte $BB, $19, $1A, $19, $1A   ; 

- D 0 - - - 0x03F89A 0F:188A: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F89B 0F:188B: 0F        .byte $0F   ; 

- D 0 - - - 0x03F89C 0F:188C: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F89D 0F:188D: CB        .byte $CB   ; 

- D 0 - - - 0x03F89E 0F:188E: C2        .byte con_C0 + $02, $10   ; 
- D 0 - - - 0x03F8A0 0F:1890: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03F8A2 0F:1892: C2        .byte con_C0 + $02, $10   ; 
- D 0 - - - 0x03F8A4 0F:1894: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03F8A6 0F:1896: C2        .byte con_C0 + $02, $10   ; 
- D 0 - - - 0x03F8A8 0F:1898: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03F8AA 0F:189A: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F8AB 0F:189B: 00        .byte $00   ; 

- D 0 - - - 0x03F8AC 0F:189C: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F8AD 0F:189D: 0D        .byte $0D   ; 

- D 0 - - - 0x03F8AE 0F:189E: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03F8AF 0F:189F: 1D        .byte $1D   ; 

- D 0 - - - 0x03F8B0 0F:18A0: 22        .byte con_00 + $22   ; 
- D 0 - - - 0x03F8B1 0F:18A1: 00        .byte $00   ; 

- D 0 - - - 0x03F8B2 0F:18A2: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F8B3 0F:18A3: D2        .byte $D2, $D0   ; 

- D 0 - - - 0x03F8B5 0F:18A5: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F8B6 0F:18A6: 00        .byte $00   ; 

- D 0 - - - 0x03F8B7 0F:18A7: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F8B8 0F:18A8: D8        .byte $D8   ; 

- D 0 - - - 0x03F8B9 0F:18A9: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F8BA 0F:18AA: D9        .byte $D9   ; 

- D 0 - - - 0x03F8BB 0F:18AB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F8BC 0F:18AC: DA        .byte $DA, $D2, $D1   ; 

- D 0 - - - 0x03F8BF 0F:18AF: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03F8C0 0F:18B0: 00        .byte $00   ; 

- D 0 - - - 0x03F8C1 0F:18B1: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F8C2 0F:18B2: E2        .byte $E2, $E0   ; 

- D 0 - - - 0x03F8C4 0F:18B4: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F8C5 0F:18B5: FD        .byte $FD   ; 

- D 0 - - - 0x03F8C6 0F:18B6: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03F8C7 0F:18B7: F5        .byte $F5, $F6, $F7, $F8, $F9, $FA, $FB, $FC, $E2, $E1   ; 

- D 0 - - - 0x03F8D1 0F:18C1: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F8D2 0F:18C2: FD        .byte $FD   ; 

- D 0 - - - 0x03F8D3 0F:18C3: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03F8D4 0F:18C4: 00        .byte $00   ; 

- D 0 - - - 0x03F8D5 0F:18C5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F8D6 0F:18C6: D8        .byte $D8   ; 

- D 0 - - - 0x03F8D7 0F:18C7: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F8D8 0F:18C8: D9        .byte $D9   ; 

- D 0 - - - 0x03F8D9 0F:18C9: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F8DA 0F:18CA: DA        .byte $DA   ; 

- D 0 - - - 0x03F8DB 0F:18CB: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03F8DC 0F:18CC: 00        .byte $00   ; 

- D 0 - - - 0x03F8DD 0F:18CD: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F8DE 0F:18CE: F2        .byte $F2, $DF   ; 

- D 0 - - - 0x03F8E0 0F:18D0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F8E1 0F:18D1: 00        .byte $00   ; 

- D 0 - - - 0x03F8E2 0F:18D2: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03F8E3 0F:18D3: DB        .byte $DB, $DC, $DD, $DE, $DF, $EB, $00, $EB, $EC, $ED, $EE, $EF, $DB, $00, $F2, $DF   ; 

- D 0 - - - 0x03F8F3 0F:18E3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F8F4 0F:18E4: 00        .byte $00   ; 

- D 0 - - - 0x03F8F5 0F:18E5: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F8F6 0F:18E6: DB        .byte $DB, $DC, $DD, $DE, $DF, $EB   ; 

- D 0 - - - 0x03F8FC 0F:18EC: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03F8FD 0F:18ED: 00        .byte $00   ; 

- D 0 - - - 0x03F8FE 0F:18EE: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03F8FF 0F:18EF: E9        .byte $E9   ; 

- D 0 - - - 0x03F900 0F:18F0: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03F901 0F:18F1: 00        .byte $00   ; 

- D 0 - - - 0x03F902 0F:18F2: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F903 0F:18F3: F0        .byte $F0   ; 

- D 0 - - - 0x03F904 0F:18F4: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03F905 0F:18F5: FF        .byte $FF   ; 

- D 0 - - - 0x03F906 0F:18F6: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F907 0F:18F7: 55        .byte $55   ; 

- D 0 - - - 0x03F908 0F:18F8: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F909 0F:18F9: FF        .byte $FF   ; 

- D 0 - - - 0x03F90A 0F:18FA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F90B 0F:18FB: 55        .byte $55   ; 

- D 0 - - - 0x03F90C 0F:18FC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F90D 0F:18FD: FF        .byte $FF   ; 

- D 0 - - - 0x03F90E 0F:18FE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F90F 0F:18FF: 55        .byte $55   ; 

- D 0 - - - 0x03F910 0F:1900: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F911 0F:1901: FF        .byte $FF   ; 

- D 0 - - - 0x03F912 0F:1902: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F913 0F:1903: 55        .byte $55, $FF   ; 

- D 0 - - - 0x03F915 0F:1905: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F916 0F:1906: 5A        .byte $5A   ; 

- D 0 - - - 0x03F917 0F:1907: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03F918 0F:1908: 55        .byte $55   ; 

- D 0 - - - 0x03F919 0F:1909: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F91A 0F:190A: 44        .byte $44, $00, $0C   ; 

- D 0 - - - 0x03F91D 0F:190D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F91E 0F:190E: AA        .byte $AA   ; 

- D 0 - - - 0x03F91F 0F:190F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F920 0F:1910: 11        .byte $11   ; 

- D 0 - - - 0x03F921 0F:1911: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F922 0F:1912: 00        .byte $00   ; 

- D 0 - - - 0x03F923 0F:1913: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F924 0F:1914: 04        .byte $04   ; 

- D 0 - - - 0x03F925 0F:1915: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F926 0F:1916: 05        .byte $05   ; 

- D 0 - - - 0x03F927 0F:1917: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F928 0F:1918: 0A        .byte $0A   ; 

- D 0 - - - 0x03F929 0F:1919: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F92A 0F:191A: 01        .byte $01, $05, $01   ; 

- D 0 - - - 0x03F92D 0F:191D: 00        .byte $00, $00   ; end token



_off031_0x03F92F_26:
- D 0 - - - 0x03F92F 0F:191F: 00        .byte $00   ; 
- D 0 - - - 0x03F930 0F:1920: 28 00     .dbyt $2800

- D 0 - - - 0x03F932 0F:1922: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03F933 0F:1923: 9E        .byte $9E, $49   ; 

- D 0 - - - 0x03F935 0F:1925: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F936 0F:1926: 4A        .byte $4A   ; 

- D 0 - - - 0x03F937 0F:1927: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03F938 0F:1928: 48        .byte $48, $9F, $A7, $9F, $B5, $B6, $B7, $9F, $9E, $A7, $9E, $9F, $9E, $9F   ; 

- D 0 - - - 0x03F946 0F:1936: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F947 0F:1937: A7        .byte $A7   ; 

- D 0 - - - 0x03F948 0F:1938: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F94A 0F:193A: 9F        .byte $9F, $9E   ; 

- D 0 - - - 0x03F94C 0F:193C: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F94D 0F:193D: A7        .byte $A7, $00, $59   ; 

- D 0 - - - 0x03F950 0F:1940: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F951 0F:1941: 00        .byte $00   ; 

- D 0 - - - 0x03F952 0F:1942: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F953 0F:1943: 59        .byte $59, $AF, $32, $AF, $A7   ; 

- D 0 - - - 0x03F958 0F:1948: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F959 0F:1949: 00        .byte $00   ; 

- D 0 - - - 0x03F95A 0F:194A: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03F95B 0F:194B: AF        .byte $AF, $00, $A7, $00, $AF, $00, $AF   ; 

- D 0 - - - 0x03F962 0F:1952: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F963 0F:1953: 32        .byte $32   ; 

- D 0 - - - 0x03F964 0F:1954: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03F966 0F:1956: AF        .byte $AF, $00   ; 

- D 0 - - - 0x03F968 0F:1958: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F969 0F:1959: AF        .byte $AF, $E9, $32, $9E, $59   ; 

- D 0 - - - 0x03F96E 0F:195E: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F96F 0F:195F: 00        .byte $00   ; 

- D 0 - - - 0x03F970 0F:1960: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F971 0F:1961: 59        .byte $59   ; 

- D 0 - - - 0x03F972 0F:1962: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F974 0F:1964: 9F        .byte $9F, $A7   ; 

- D 0 - - - 0x03F976 0F:1966: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F977 0F:1967: B5        .byte $B5   ; 

- D 0 - - - 0x03F978 0F:1968: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F979 0F:1969: B6        .byte $B6   ; 

- D 0 - - - 0x03F97A 0F:196A: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03F97B 0F:196B: B7        .byte $B7, $9E, $9F, $9E, $9F   ; 

- D 0 - - - 0x03F980 0F:1970: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F981 0F:1971: A7        .byte $A7   ; 

- D 0 - - - 0x03F982 0F:1972: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F984 0F:1974: 9F        .byte $9F, $9E   ; 

- D 0 - - - 0x03F986 0F:1976: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F987 0F:1977: A7        .byte $A7, $00, $59   ; 

- D 0 - - - 0x03F98A 0F:197A: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F98B 0F:197B: 00        .byte $00   ; 

- D 0 - - - 0x03F98C 0F:197C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F98D 0F:197D: 59        .byte $59   ; 

- D 0 - - - 0x03F98E 0F:197E: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F990 0F:1980: AF        .byte $AF, $A7   ; 

- D 0 - - - 0x03F992 0F:1982: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F993 0F:1983: 25        .byte $25   ; 

- D 0 - - - 0x03F994 0F:1984: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F996 0F:1986: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03F998 0F:1988: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F999 0F:1989: 25        .byte $25   ; 

- D 0 - - - 0x03F99A 0F:198A: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F99C 0F:198C: AF        .byte $AF, $00   ; 

- D 0 - - - 0x03F99E 0F:198E: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F99F 0F:198F: A7        .byte $A7, $9E, $59   ; 

- D 0 - - - 0x03F9A2 0F:1992: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F9A3 0F:1993: 00        .byte $00   ; 

- D 0 - - - 0x03F9A4 0F:1994: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03F9A5 0F:1995: 59        .byte $59, $9F, $A7, $9F, $25, $A7   ; 

- D 0 - - - 0x03F9AB 0F:199B: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F9AD 0F:199D: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03F9AF 0F:199F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F9B0 0F:19A0: A7        .byte $A7   ; 

- D 0 - - - 0x03F9B1 0F:19A1: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03F9B2 0F:19A2: 9F        .byte $9F, $9E, $9F, $B5, $31, $26, $B6, $31, $B7, $00, $59   ; 

- D 0 - - - 0x03F9BD 0F:19AD: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F9BE 0F:19AE: 00        .byte $00   ; 

- D 0 - - - 0x03F9BF 0F:19AF: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F9C0 0F:19B0: 59        .byte $59, $AF, $25, $AF   ; 

- D 0 - - - 0x03F9C4 0F:19B4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F9C5 0F:19B5: A7        .byte $A7   ; 

- D 0 - - - 0x03F9C6 0F:19B6: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03F9C8 0F:19B8: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03F9CA 0F:19BA: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03F9CB 0F:19BB: A7        .byte $A7   ; 

- D 0 - - - 0x03F9CC 0F:19BC: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F9CD 0F:19BD: AF        .byte $AF, $00, $AF, $A7   ; 

- D 0 - - - 0x03F9D1 0F:19C1: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03F9D3 0F:19C3: AF        .byte $AF, $00   ; 

- D 0 - - - 0x03F9D5 0F:19C5: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F9D6 0F:19C6: AF        .byte $AF, $9E, $59   ; 

- D 0 - - - 0x03F9D9 0F:19C9: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F9DA 0F:19CA: 00        .byte $00   ; 

- D 0 - - - 0x03F9DB 0F:19CB: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03F9DC 0F:19CC: 59        .byte $59, $9F, $10, $11, $12, $13, $9E, $B5, $26   ; 

- D 0 - - - 0x03F9E5 0F:19D5: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03F9E6 0F:19D6: B6        .byte $B6   ; 

- D 0 - - - 0x03F9E7 0F:19D7: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03F9E8 0F:19D8: B7        .byte $B7   ; 

- D 0 - - - 0x03F9E9 0F:19D9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03F9EA 0F:19DA: A7        .byte $A7   ; 

- D 0 - - - 0x03F9EB 0F:19DB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03F9EC 0F:19DC: 9F        .byte $9F, $9E, $9F   ; 

- D 0 - - - 0x03F9EF 0F:19DF: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F9F0 0F:19E0: 00        .byte $00   ; 

- D 0 - - - 0x03F9F1 0F:19E1: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03F9F2 0F:19E2: 9E        .byte $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03F9F6 0F:19E6: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03F9F7 0F:19E7: 00        .byte $00   ; 

- D 0 - - - 0x03F9F8 0F:19E8: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03F9F9 0F:19E9: 59        .byte $59, $AF, $20, $55, $56, $23, $00, $32   ; 

- D 0 - - - 0x03FA01 0F:19F1: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FA03 0F:19F3: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03FA05 0F:19F5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FA06 0F:19F6: 00        .byte $00   ; 

- D 0 - - - 0x03FA07 0F:19F7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA08 0F:19F8: 32        .byte $32   ; 

- D 0 - - - 0x03FA09 0F:19F9: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FA0A 0F:19FA: AF        .byte $AF, $00, $AF   ; 

- D 0 - - - 0x03FA0D 0F:19FD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA0E 0F:19FE: 0F        .byte $0F   ; 

- D 0 - - - 0x03FA0F 0F:19FF: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FA10 0F:1A00: 60        .byte $60, $61, $00, $AF   ; 

- D 0 - - - 0x03FA14 0F:1A04: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FA15 0F:1A05: 0F        .byte $0F   ; 

- D 0 - - - 0x03FA16 0F:1A06: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FA17 0F:1A07: 30        .byte $30, $65, $66, $33, $9E, $A7   ; 

- D 0 - - - 0x03FA1D 0F:1A0D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA1E 0F:1A0E: 0F        .byte $0F   ; 

- D 0 - - - 0x03FA1F 0F:1A0F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FA20 0F:1A10: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03FA22 0F:1A12: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA23 0F:1A13: 0F        .byte $0F   ; 

- D 0 - - - 0x03FA24 0F:1A14: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FA25 0F:1A15: 9E        .byte $9E, $A7, $14, $15, $16, $17   ; 

- D 0 - - - 0x03FA2B 0F:1A1B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA2C 0F:1A1C: C8        .byte $C8   ; 

- D 0 - - - 0x03FA2D 0F:1A1D: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FA2E 0F:1A1E: 60        .byte $60, $61, $9E, $9F   ; 

- D 0 - - - 0x03FA32 0F:1A22: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FA33 0F:1A23: C8        .byte $C8   ; 

- D 0 - - - 0x03FA34 0F:1A24: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FA35 0F:1A25: 40        .byte $40, $41, $42, $43, $00, $A7   ; 

- D 0 - - - 0x03FA3B 0F:1A2B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA3C 0F:1A2C: C8        .byte $C8   ; 

- D 0 - - - 0x03FA3D 0F:1A2D: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FA3E 0F:1A2E: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03FA40 0F:1A30: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA41 0F:1A31: C8        .byte $C8   ; 

- D 0 - - - 0x03FA42 0F:1A32: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FA43 0F:1A33: 00        .byte $00, $A7, $24, $57, $58, $27   ; 

- D 0 - - - 0x03FA49 0F:1A39: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA4A 0F:1A3A: 00        .byte $00   ; 

- D 0 - - - 0x03FA4B 0F:1A3B: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FA4C 0F:1A3C: 60        .byte $60, $61, $00, $AF   ; 

- D 0 - - - 0x03FA50 0F:1A40: C2        .byte con_C0 + $02, $04   ; 
- D 0 - - - 0x03FA52 0F:1A42: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03FA54 0F:1A44: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FA55 0F:1A45: 32        .byte $32, $9F   ; 

- D 0 - - - 0x03FA57 0F:1A47: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA58 0F:1A48: A7        .byte $A7   ; 

- D 0 - - - 0x03FA59 0F:1A49: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FA5A 0F:1A4A: 9E        .byte $9E, $A7   ; 

- D 0 - - - 0x03FA5C 0F:1A4C: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FA5E 0F:1A4E: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03FA60 0F:1A50: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03FA61 0F:1A51: 9E        .byte $9E, $A7, $34, $67, $68, $37, $32, $9F, $60, $61, $9E, $9F, $B6, $26, $31, $26   ; 

- D 0 - - - 0x03FA71 0F:1A61: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA72 0F:1A62: B6        .byte $B6   ; 

- D 0 - - - 0x03FA73 0F:1A63: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FA74 0F:1A64: 31        .byte $31, $B6, $B7, $AF   ; 

- D 0 - - - 0x03FA78 0F:1A68: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA79 0F:1A69: A7        .byte $A7   ; 

- D 0 - - - 0x03FA7A 0F:1A6A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FA7B 0F:1A6B: 00        .byte $00, $A7   ; 

- D 0 - - - 0x03FA7D 0F:1A6D: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FA7F 0F:1A6F: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03FA81 0F:1A71: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03FA82 0F:1A72: 00        .byte $00, $A7, $44, $45, $46, $47, $A7, $AF, $60, $61, $00, $AF, $9E, $49   ; 

- D 0 - - - 0x03FA90 0F:1A80: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FA91 0F:1A81: 4A        .byte $4A   ; 

- D 0 - - - 0x03FA92 0F:1A82: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FA93 0F:1A83: 48        .byte $48, $9F, $9E, $9F   ; 

- D 0 - - - 0x03FA97 0F:1A87: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FA98 0F:1A88: 32        .byte $32   ; 

- D 0 - - - 0x03FA99 0F:1A89: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FA9A 0F:1A8A: 9E        .byte $9E, $32   ; 

- D 0 - - - 0x03FA9C 0F:1A8C: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FA9E 0F:1A8E: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03FAA0 0F:1A90: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03FAA1 0F:1A91: 9E        .byte $9E, $25, $A7, $9F, $9E, $9F, $A7, $9F, $60, $61, $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03FAAF 0F:1A9F: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FAB0 0F:1AA0: 00        .byte $00   ; 

- D 0 - - - 0x03FAB1 0F:1AA1: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FAB2 0F:1AA2: 59        .byte $59, $AF, $00, $AF   ; 

- D 0 - - - 0x03FAB6 0F:1AA6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FAB7 0F:1AA7: A7        .byte $A7   ; 

- D 0 - - - 0x03FAB8 0F:1AA8: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FAB9 0F:1AA9: 00        .byte $00, $A7   ; 

- D 0 - - - 0x03FABB 0F:1AAB: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FABD 0F:1AAD: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03FABF 0F:1AAF: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FAC0 0F:1AB0: 00        .byte $00   ; 

- D 0 - - - 0x03FAC1 0F:1AB1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FAC2 0F:1AB2: A7        .byte $A7   ; 

- D 0 - - - 0x03FAC3 0F:1AB3: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03FAC4 0F:1AB4: AF        .byte $AF, $00, $AF, $A7, $AF, $60, $61, $00, $AF, $9E, $59   ; 

- D 0 - - - 0x03FACF 0F:1ABF: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FAD0 0F:1AC0: 00        .byte $00   ; 

- D 0 - - - 0x03FAD1 0F:1AC1: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FAD2 0F:1AC2: 59        .byte $59, $B5   ; 

- D 0 - - - 0x03FAD4 0F:1AC4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FAD5 0F:1AC5: B6        .byte $B6   ; 

- D 0 - - - 0x03FAD6 0F:1AC6: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FAD7 0F:1AC7: B7        .byte $B7, $A7, $9E, $22   ; 

- D 0 - - - 0x03FADB 0F:1ACB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FADC 0F:1ACC: B6        .byte $B6   ; 

- D 0 - - - 0x03FADD 0F:1ACD: 52        .byte con_40 + $12   ; 
- D 0 - - - 0x03FADE 0F:1ACE: 31        .byte $31, $B6, $10, $11, $12, $13, $35, $31, $B6, $36, $25, $9F, $60, $61, $9E, $9F   ; 
- D 0 - - - 0x03FAEE 0F:1ADE: 00        .byte $00, $59   ; 

- D 0 - - - 0x03FAF0 0F:1AE0: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FAF1 0F:1AE1: 00        .byte $00   ; 

- D 0 - - - 0x03FAF2 0F:1AE2: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FAF3 0F:1AE3: 59        .byte $59, $A7, $00, $AF, $00, $25, $00, $A7   ; 

- D 0 - - - 0x03FAFB 0F:1AEB: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03FAFD 0F:1AED: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03FAFF 0F:1AEF: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FB00 0F:1AF0: 20        .byte $20, $55, $56, $23, $E9, $EA, $E9   ; 

- D 0 - - - 0x03FB07 0F:1AF7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FB08 0F:1AF8: A7        .byte $A7   ; 

- D 0 - - - 0x03FB09 0F:1AF9: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FB0A 0F:1AFA: AF        .byte $AF, $60, $61, $00, $AF, $9E, $59   ; 

- D 0 - - - 0x03FB11 0F:1B01: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB12 0F:1B02: 00        .byte $00   ; 

- D 0 - - - 0x03FB13 0F:1B03: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FB14 0F:1B04: 59        .byte $59, $32, $9E, $9F, $9E, $A7, $9E, $A7   ; 

- D 0 - - - 0x03FB1C 0F:1B0C: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB1D 0F:1B0D: 00        .byte $00   ; 

- D 0 - - - 0x03FB1E 0F:1B0E: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FB1F 0F:1B0F: 30        .byte $30, $65, $66, $33, $9E, $9F, $9E   ; 

- D 0 - - - 0x03FB26 0F:1B16: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FB27 0F:1B17: 32        .byte $32   ; 

- D 0 - - - 0x03FB28 0F:1B18: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FB29 0F:1B19: 9F        .byte $9F, $60, $61, $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03FB30 0F:1B20: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB31 0F:1B21: 00        .byte $00   ; 

- D 0 - - - 0x03FB32 0F:1B22: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FB33 0F:1B23: 59        .byte $59, $A7, $00, $AF, $00, $A7, $00, $A7   ; 

- D 0 - - - 0x03FB3B 0F:1B2B: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB3C 0F:1B2C: 0F        .byte $0F   ; 

- D 0 - - - 0x03FB3D 0F:1B2D: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FB3E 0F:1B2E: 40        .byte $40, $41, $42, $43, $00, $AF, $00   ; 

- D 0 - - - 0x03FB45 0F:1B35: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FB46 0F:1B36: A7        .byte $A7   ; 

- D 0 - - - 0x03FB47 0F:1B37: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FB48 0F:1B38: AF        .byte $AF, $60, $61, $00, $AF, $9E, $59   ; 

- D 0 - - - 0x03FB4F 0F:1B3F: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB50 0F:1B40: 00        .byte $00   ; 

- D 0 - - - 0x03FB51 0F:1B41: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FB52 0F:1B42: 59        .byte $59, $A7, $14, $15, $16, $17, $9E, $A7   ; 

- D 0 - - - 0x03FB5A 0F:1B4A: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB5B 0F:1B4B: C8        .byte $C8   ; 

- D 0 - - - 0x03FB5C 0F:1B4C: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03FB5D 0F:1B4D: 9E        .byte $9E, $9F, $9E, $A7, $14, $15, $16, $17, $A7, $9F, $60, $61, $9E, $9F, $00, $59   ; 

- D 0 - - - 0x03FB6D 0F:1B5D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FB6E 0F:1B5E: 00        .byte $00   ; 

- D 0 - - - 0x03FB6F 0F:1B5F: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FB70 0F:1B60: 59        .byte $59, $A7, $24, $75, $76, $27, $00, $32   ; 

- D 0 - - - 0x03FB78 0F:1B68: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03FB79 0F:1B69: 00        .byte $00   ; 

- D 0 - - - 0x03FB7A 0F:1B6A: 4D        .byte con_40 + $0D   ; 
- D 0 - - - 0x03FB7B 0F:1B6B: AF        .byte $AF, $00, $32, $24, $77, $78, $27, $A7, $AF, $60, $61, $00, $AF   ; 

- D 0 - - - 0x03FB88 0F:1B78: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FB89 0F:1B79: 0F        .byte $0F   ; 

- D 0 - - - 0x03FB8A 0F:1B7A: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FB8B 0F:1B7B: 34        .byte $34, $85, $86, $37, $9E, $A7   ; 

- D 0 - - - 0x03FB91 0F:1B81: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FB93 0F:1B83: 9E        .byte $9E, $9F   ; 

- D 0 - - - 0x03FB95 0F:1B85: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03FB96 0F:1B86: 9E        .byte $9E, $A7, $34, $87, $88, $37, $A7, $9F, $60, $61, $9E, $9F   ; 

- D 0 - - - 0x03FBA2 0F:1B92: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FBA3 0F:1B93: C8        .byte $C8   ; 

- D 0 - - - 0x03FBA4 0F:1B94: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FBA5 0F:1B95: 44        .byte $44, $45, $46, $47, $00, $A7   ; 

- D 0 - - - 0x03FBAB 0F:1B9B: C2        .byte con_C0 + $02, $03   ; 
- D 0 - - - 0x03FBAD 0F:1B9D: 00        .byte $00, $AF   ; 

- D 0 - - - 0x03FBAF 0F:1B9F: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03FBB0 0F:1BA0: 00        .byte $00, $A7, $44, $45, $46, $47, $A7, $AF, $60, $61, $00, $AF   ; 

- D 0 - - - 0x03FBBC 0F:1BAC: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FBBD 0F:1BAD: 0D        .byte $0D   ; 

- D 0 - - - 0x03FBBE 0F:1BAE: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FBBF 0F:1BAF: 0F        .byte $0F   ; 

- D 0 - - - 0x03FBC0 0F:1BB0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBC1 0F:1BB1: 00        .byte $00   ; 

- D 0 - - - 0x03FBC2 0F:1BB2: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FBC3 0F:1BB3: 1D        .byte $1D   ; 

- D 0 - - - 0x03FBC4 0F:1BB4: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FBC5 0F:1BB5: C8        .byte $C8   ; 

- D 0 - - - 0x03FBC6 0F:1BB6: 81        .byte con_80 + $01, $C2   ; 
- D 0 - - - 0x03FBC8 0F:1BB8: 00        .byte $00   ; 

- D 0 - - - 0x03FBC9 0F:1BB9: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03FBCA 0F:1BBA: 55        .byte $55   ; 

- D 0 - - - 0x03FBCB 0F:1BBB: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FBCC 0F:1BBC: A5        .byte $A5   ; 

- D 0 - - - 0x03FBCD 0F:1BBD: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FBCE 0F:1BBE: 55        .byte $55   ; 

- D 0 - - - 0x03FBCF 0F:1BBF: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FBD0 0F:1BC0: 15        .byte $15, $75   ; 

- D 0 - - - 0x03FBD2 0F:1BC2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBD3 0F:1BC3: 50        .byte $50   ; 

- D 0 - - - 0x03FBD4 0F:1BC4: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FBD5 0F:1BC5: 5A        .byte $5A   ; 

- D 0 - - - 0x03FBD6 0F:1BC6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBD7 0F:1BC7: 51        .byte $51   ; 

- D 0 - - - 0x03FBD8 0F:1BC8: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FBD9 0F:1BC9: 99        .byte $99, $62, $77   ; 

- D 0 - - - 0x03FBDC 0F:1BCC: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FBDD 0F:1BCD: 55        .byte $55   ; 

- D 0 - - - 0x03FBDE 0F:1BCE: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FBDF 0F:1BCF: 95        .byte $95, $65, $55, $77   ; 

- D 0 - - - 0x03FBE3 0F:1BD3: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBE4 0F:1BD4: 55        .byte $55   ; 

- D 0 - - - 0x03FBE5 0F:1BD5: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FBE6 0F:1BD6: A5        .byte $A5, $11, $48, $96, $65, $77   ; 

- D 0 - - - 0x03FBEC 0F:1BDC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBED 0F:1BDD: F0        .byte $F0   ; 

- D 0 - - - 0x03FBEE 0F:1BDE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FBEF 0F:1BDF: FA        .byte $FA   ; 

- D 0 - - - 0x03FBF0 0F:1BE0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBF1 0F:1BE1: F5        .byte $F5   ; 

- D 0 - - - 0x03FBF2 0F:1BE2: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FBF3 0F:1BE3: F9        .byte $F9, $36, $47, $04   ; 

- D 0 - - - 0x03FBF7 0F:1BE7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBF8 0F:1BE8: 50        .byte $50   ; 

- D 0 - - - 0x03FBF9 0F:1BE9: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FBFA 0F:1BEA: 55        .byte $55   ; 

- D 0 - - - 0x03FBFB 0F:1BEB: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FBFC 0F:1BEC: 41        .byte $41, $50, $10   ; 

- D 0 - - - 0x03FBFF 0F:1BEF: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FC00 0F:1BF0: 00        .byte $00   ; 

- D 0 - - - 0x03FC01 0F:1BF1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC02 0F:1BF2: 05        .byte $05   ; 

- D 0 - - - 0x03FC03 0F:1BF3: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FC04 0F:1BF4: 00        .byte $00   ; 

- D 0 - - - 0x03FC05 0F:1BF5: 00        .byte $00, $00   ; end token



_off031_0x03FC07_27:
- D 0 - - - 0x03FC07 0F:1BF7: 00        .byte $00   ; 
- D 0 - - - 0x03FC08 0F:1BF8: 28 00     .dbyt $2800

- D 0 - - - 0x03FC0A 0F:1BFA: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FC0B 0F:1BFB: BD        .byte $BD   ; 

- D 0 - - - 0x03FC0C 0F:1BFC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC0D 0F:1BFD: A7        .byte $A7   ; 

- D 0 - - - 0x03FC0E 0F:1BFE: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC0F 0F:1BFF: B1        .byte $B1, $59   ; 

- D 0 - - - 0x03FC11 0F:1C01: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC12 0F:1C02: 00        .byte $00   ; 

- D 0 - - - 0x03FC13 0F:1C03: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FC14 0F:1C04: 59        .byte $59, $B0, $A7   ; 

- D 0 - - - 0x03FC17 0F:1C07: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC18 0F:1C08: 00        .byte $00   ; 

- D 0 - - - 0x03FC19 0F:1C09: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC1A 0F:1C0A: 6E        .byte $6E, $5E   ; 

- D 0 - - - 0x03FC1C 0F:1C0C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC1D 0F:1C0D: 6E        .byte $6E   ; 

- D 0 - - - 0x03FC1E 0F:1C0E: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FC1F 0F:1C0F: A7        .byte $A7   ; 

- D 0 - - - 0x03FC20 0F:1C10: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC21 0F:1C11: BC        .byte $BC   ; 

- D 0 - - - 0x03FC22 0F:1C12: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC23 0F:1C13: 00        .byte $00, $02   ; 

- D 0 - - - 0x03FC25 0F:1C15: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FC26 0F:1C16: BD        .byte $BD   ; 

- D 0 - - - 0x03FC27 0F:1C17: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC28 0F:1C18: A7        .byte $A7   ; 

- D 0 - - - 0x03FC29 0F:1C19: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC2A 0F:1C1A: C1        .byte $C1, $59   ; 

- D 0 - - - 0x03FC2C 0F:1C1C: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC2D 0F:1C1D: 00        .byte $00   ; 

- D 0 - - - 0x03FC2E 0F:1C1E: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FC2F 0F:1C1F: 59        .byte $59, $C0, $A7, $96   ; 

- D 0 - - - 0x03FC33 0F:1C23: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FC34 0F:1C24: 4C        .byte $4C   ; 

- D 0 - - - 0x03FC35 0F:1C25: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC36 0F:1C26: 5F        .byte $5F, $5E   ; 

- D 0 - - - 0x03FC38 0F:1C28: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC39 0F:1C29: 6E        .byte $6E   ; 

- D 0 - - - 0x03FC3A 0F:1C2A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FC3B 0F:1C2B: A7        .byte $A7   ; 

- D 0 - - - 0x03FC3C 0F:1C2C: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC3D 0F:1C2D: BC        .byte $BC   ; 

- D 0 - - - 0x03FC3E 0F:1C2E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC3F 0F:1C2F: 00        .byte $00   ; 

- D 0 - - - 0x03FC40 0F:1C30: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03FC41 0F:1C31: BD        .byte $BD   ; 

- D 0 - - - 0x03FC42 0F:1C32: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FC43 0F:1C33: AD        .byte $AD   ; 

- D 0 - - - 0x03FC44 0F:1C34: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC45 0F:1C35: A7        .byte $A7   ; 

- D 0 - - - 0x03FC46 0F:1C36: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC47 0F:1C37: B1        .byte $B1, $59   ; 

- D 0 - - - 0x03FC49 0F:1C39: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC4A 0F:1C3A: 00        .byte $00   ; 

- D 0 - - - 0x03FC4B 0F:1C3B: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FC4C 0F:1C3C: 59        .byte $59, $B0, $A7, $5E, $96   ; 

- D 0 - - - 0x03FC51 0F:1C41: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FC52 0F:1C42: 4C        .byte $4C   ; 

- D 0 - - - 0x03FC53 0F:1C43: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FC54 0F:1C44: 5F        .byte $5F, $6E, $5E, $A7   ; 

- D 0 - - - 0x03FC58 0F:1C48: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC59 0F:1C49: BC        .byte $BC   ; 

- D 0 - - - 0x03FC5A 0F:1C4A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC5B 0F:1C4B: 00        .byte $00, $02   ; 

- D 0 - - - 0x03FC5D 0F:1C4D: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC5E 0F:1C4E: BD        .byte $BD   ; 

- D 0 - - - 0x03FC5F 0F:1C4F: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FC60 0F:1C50: AD        .byte $AD, $84, $A7, $5E, $C1, $59   ; 

- D 0 - - - 0x03FC66 0F:1C56: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC67 0F:1C57: 00        .byte $00   ; 

- D 0 - - - 0x03FC68 0F:1C58: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FC69 0F:1C59: 59        .byte $59, $C0, $6F, $6E, $5E   ; 

- D 0 - - - 0x03FC6E 0F:1C5E: C2        .byte con_C0 + $02, $02   ; 
- D 0 - - - 0x03FC70 0F:1C60: C1        .byte $C1, $C0   ; 

- D 0 - - - 0x03FC72 0F:1C62: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FC73 0F:1C63: 5E        .byte $5E, $6E, $A7, $AC   ; 

- D 0 - - - 0x03FC77 0F:1C67: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FC78 0F:1C68: BC        .byte $BC   ; 

- D 0 - - - 0x03FC79 0F:1C69: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC7A 0F:1C6A: 00        .byte $00   ; 

- D 0 - - - 0x03FC7B 0F:1C6B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FC7C 0F:1C6C: BD        .byte $BD   ; 

- D 0 - - - 0x03FC7D 0F:1C6D: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FC7E 0F:1C6E: AD        .byte $AD, $84, $94, $A7, $6F, $B1, $59   ; 

- D 0 - - - 0x03FC85 0F:1C75: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FC86 0F:1C76: 00        .byte $00   ; 

- D 0 - - - 0x03FC87 0F:1C77: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FC88 0F:1C78: 59        .byte $59, $B0, $A7   ; 

- D 0 - - - 0x03FC8B 0F:1C7B: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC8C 0F:1C7C: 6E        .byte $6E   ; 

- D 0 - - - 0x03FC8D 0F:1C7D: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FC8E 0F:1C7E: B1        .byte $B1, $8C, $8D, $B0, $6E, $5E, $A7, $83, $AC   ; 

- D 0 - - - 0x03FC97 0F:1C87: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC98 0F:1C88: BC        .byte $BC   ; 

- D 0 - - - 0x03FC99 0F:1C89: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FC9A 0F:1C8A: 00        .byte $00, $02   ; 

- D 0 - - - 0x03FC9C 0F:1C8C: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FC9D 0F:1C8D: BD        .byte $BD   ; 

- D 0 - - - 0x03FC9E 0F:1C8E: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FC9F 0F:1C8F: AD        .byte $AD, $84, $94, $CD   ; 

- D 0 - - - 0x03FCA3 0F:1C93: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCA4 0F:1C94: A7        .byte $A7   ; 

- D 0 - - - 0x03FCA5 0F:1C95: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FCA6 0F:1C96: C1        .byte $C1, $59   ; 

- D 0 - - - 0x03FCA8 0F:1C98: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FCA9 0F:1C99: 00        .byte $00   ; 

- D 0 - - - 0x03FCAA 0F:1C9A: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FCAB 0F:1C9B: 59        .byte $59, $C0, $A7   ; 

- D 0 - - - 0x03FCAE 0F:1C9E: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCAF 0F:1C9F: 6E        .byte $6E   ; 

- D 0 - - - 0x03FCB0 0F:1CA0: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FCB1 0F:1CA1: C1        .byte $C1, $7C, $7D, $C0   ; 

- D 0 - - - 0x03FCB5 0F:1CA5: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCB6 0F:1CA6: 6E        .byte $6E   ; 

- D 0 - - - 0x03FCB7 0F:1CA7: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FCB8 0F:1CA8: A7        .byte $A7, $93, $83, $AC, $BC   ; 

- D 0 - - - 0x03FCBD 0F:1CAD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCBE 0F:1CAE: 00        .byte $00   ; 

- D 0 - - - 0x03FCBF 0F:1CAF: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FCC0 0F:1CB0: BD        .byte $BD, $AD, $84, $94   ; 

- D 0 - - - 0x03FCC4 0F:1CB4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCC5 0F:1CB5: CD        .byte $CD   ; 

- D 0 - - - 0x03FCC6 0F:1CB6: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FCC7 0F:1CB7: A7        .byte $A7, $5E, $C5, $59, $91   ; 

- D 0 - - - 0x03FCCC 0F:1CBC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCCD 0F:1CBD: A4        .byte $A4   ; 

- D 0 - - - 0x03FCCE 0F:1CBE: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FCCF 0F:1CBF: 70        .byte $70, $59, $C5   ; 

- D 0 - - - 0x03FCD2 0F:1CC2: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FCD3 0F:1CC3: 5E        .byte $5E   ; 

- D 0 - - - 0x03FCD4 0F:1CC4: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FCD5 0F:1CC5: C5        .byte $C5   ; 

- D 0 - - - 0x03FCD6 0F:1CC6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCD7 0F:1CC7: 5E        .byte $5E   ; 

- D 0 - - - 0x03FCD8 0F:1CC8: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03FCD9 0F:1CC9: A7        .byte $A7, $CD, $93, $83, $AC, $00, $02, $AD, $84, $94   ; 

- D 0 - - - 0x03FCE3 0F:1CD3: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FCE4 0F:1CD4: CD        .byte $CD   ; 

- D 0 - - - 0x03FCE5 0F:1CD5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FCE6 0F:1CD6: A0        .byte $A0   ; 

- D 0 - - - 0x03FCE7 0F:1CD7: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03FCE8 0F:1CD8: A1        .byte $A1   ; 

- D 0 - - - 0x03FCE9 0F:1CD9: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FCEA 0F:1CDA: A2        .byte $A2   ; 

- D 0 - - - 0x03FCEB 0F:1CDB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCEC 0F:1CDC: CD        .byte $CD   ; 

- D 0 - - - 0x03FCED 0F:1CDD: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FCEE 0F:1CDE: 93        .byte $93, $83   ; 

- D 0 - - - 0x03FCF0 0F:1CE0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCF1 0F:1CE1: 00        .byte $00   ; 

- D 0 - - - 0x03FCF2 0F:1CE2: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FCF3 0F:1CE3: 84        .byte $84, $94   ; 

- D 0 - - - 0x03FCF5 0F:1CE5: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FCF6 0F:1CE6: CD        .byte $CD   ; 

- D 0 - - - 0x03FCF7 0F:1CE7: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FCF8 0F:1CE8: A8        .byte $A8   ; 

- D 0 - - - 0x03FCF9 0F:1CE9: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FCFA 0F:1CEA: 60        .byte $60, $61   ; 

- D 0 - - - 0x03FCFC 0F:1CEC: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03FCFD 0F:1CED: A8        .byte $A8   ; 

- D 0 - - - 0x03FCFE 0F:1CEE: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FCFF 0F:1CEF: 60        .byte $60, $61   ; 

- D 0 - - - 0x03FD01 0F:1CF1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD02 0F:1CF2: A8        .byte $A8   ; 

- D 0 - - - 0x03FD03 0F:1CF3: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FD04 0F:1CF4: CD        .byte $CD   ; 

- D 0 - - - 0x03FD05 0F:1CF5: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FD06 0F:1CF6: 93        .byte $93, $00, $02, $94   ; 

- D 0 - - - 0x03FD0A 0F:1CFA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD0B 0F:1CFB: CD        .byte $CD   ; 

- D 0 - - - 0x03FD0C 0F:1CFC: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FD0D 0F:1CFD: 82        .byte $82, $54, $CD, $BC, $B0, $60, $61   ; 

- D 0 - - - 0x03FD14 0F:1D04: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD15 0F:1D05: B8        .byte $B8   ; 

- D 0 - - - 0x03FD16 0F:1D06: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FD17 0F:1D07: 5E        .byte $5E, $59   ; 

- D 0 - - - 0x03FD19 0F:1D09: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD1A 0F:1D0A: 00        .byte $00   ; 

- D 0 - - - 0x03FD1B 0F:1D0B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FD1C 0F:1D0C: 59        .byte $59   ; 

- D 0 - - - 0x03FD1D 0F:1D0D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD1E 0F:1D0E: 4D        .byte $4D   ; 

- D 0 - - - 0x03FD1F 0F:1D0F: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FD20 0F:1D10: 5E        .byte $5E, $60, $61, $B1, $BC   ; 

- D 0 - - - 0x03FD25 0F:1D15: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD26 0F:1D16: CD        .byte $CD   ; 

- D 0 - - - 0x03FD27 0F:1D17: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD28 0F:1D18: 00        .byte $00   ; 

- D 0 - - - 0x03FD29 0F:1D19: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD2A 0F:1D1A: CD        .byte $CD   ; 

- D 0 - - - 0x03FD2B 0F:1D1B: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FD2C 0F:1D1C: 82        .byte $82, $62, $64, $CD, $BC, $C0, $60, $61   ; 

- D 0 - - - 0x03FD34 0F:1D24: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD35 0F:1D25: 4D        .byte $4D   ; 

- D 0 - - - 0x03FD36 0F:1D26: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FD37 0F:1D27: 6E        .byte $6E, $59   ; 

- D 0 - - - 0x03FD39 0F:1D29: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD3A 0F:1D2A: 00        .byte $00   ; 

- D 0 - - - 0x03FD3B 0F:1D2B: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x03FD3C 0F:1D2C: 59        .byte $59, $96, $4C, $5F, $60, $61, $C1, $BC   ; 

- D 0 - - - 0x03FD44 0F:1D34: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD45 0F:1D35: CD        .byte $CD   ; 

- D 0 - - - 0x03FD46 0F:1D36: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD47 0F:1D37: 4D        .byte $4D   ; 

- D 0 - - - 0x03FD48 0F:1D38: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03FD49 0F:1D39: CD        .byte $CD, $53, $71, $72, $64, $CD, $BC, $B0, $60, $61, $96, $4C, $5F, $59   ; 

- D 0 - - - 0x03FD57 0F:1D47: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD58 0F:1D48: 00        .byte $00   ; 

- D 0 - - - 0x03FD59 0F:1D49: 4B        .byte con_40 + $0B   ; 
- D 0 - - - 0x03FD5A 0F:1D4A: 59        .byte $59, $5E, $B1, $A7, $60, $61, $B1, $BC, $CD, $00, $B2   ; 

- D 0 - - - 0x03FD65 0F:1D55: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FD66 0F:1D56: FF        .byte $FF   ; 

- D 0 - - - 0x03FD67 0F:1D57: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03FD68 0F:1D58: CD        .byte $CD, $63, $80, $81, $64, $CD, $BC, $C0, $60, $61, $5E, $A7, $C1, $59   ; 

- D 0 - - - 0x03FD76 0F:1D66: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD77 0F:1D67: 00        .byte $00   ; 

- D 0 - - - 0x03FD78 0F:1D68: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03FD79 0F:1D69: 59        .byte $59, $6E, $C1, $6F, $60, $61, $C1, $BC, $CD, $00, $CD, $B2   ; 

- D 0 - - - 0x03FD85 0F:1D75: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FD86 0F:1D76: FF        .byte $FF   ; 

- D 0 - - - 0x03FD87 0F:1D77: 4E        .byte con_40 + $0E   ; 
- D 0 - - - 0x03FD88 0F:1D78: CD        .byte $CD, $63, $80, $81, $64, $82, $BC, $B0, $60, $61, $5E, $6F, $B1, $59   ; 

- D 0 - - - 0x03FD96 0F:1D86: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FD97 0F:1D87: 00        .byte $00   ; 

- D 0 - - - 0x03FD98 0F:1D88: 5C        .byte con_40 + $1C   ; 
- D 0 - - - 0x03FD99 0F:1D89: 59        .byte $59, $6E, $B1, $A7, $60, $61, $B1, $BC, $95, $00, $C3, $CD, $B2, $4D, $CD, $63   ; 
- D 0 - - - 0x03FDA9 0F:1D99: 80        .byte $80, $81, $52, $92, $BC, $C0, $60, $61, $6E, $A7, $C1, $59   ; 

- D 0 - - - 0x03FDB5 0F:1DA5: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FDB6 0F:1DA6: 00        .byte $00   ; 

- D 0 - - - 0x03FDB7 0F:1DA7: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FDB8 0F:1DA8: 59        .byte $59, $6E, $C1, $A7, $60, $61, $C1, $BC, $A5   ; 

- D 0 - - - 0x03FDC1 0F:1DB1: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FDC2 0F:1DB2: 00        .byte $00   ; 

- D 0 - - - 0x03FDC3 0F:1DB3: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FDC4 0F:1DB4: C3        .byte $C3, $CD, $00, $CD, $63, $80, $81, $74, $00   ; 

- D 0 - - - 0x03FDCD 0F:1DBD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FDCE 0F:1DBE: C5        .byte $C5   ; 

- D 0 - - - 0x03FDCF 0F:1DBF: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FDD0 0F:1DC0: 60        .byte $60, $61   ; 

- D 0 - - - 0x03FDD2 0F:1DC2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FDD3 0F:1DC3: 5E        .byte $5E   ; 

- D 0 - - - 0x03FDD4 0F:1DC4: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FDD5 0F:1DC5: C5        .byte $C5, $59, $91   ; 

- D 0 - - - 0x03FDD8 0F:1DC8: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FDD9 0F:1DC9: A4        .byte $A4   ; 

- D 0 - - - 0x03FDDA 0F:1DCA: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FDDB 0F:1DCB: 70        .byte $70, $59, $5E, $C5, $5E, $60, $61   ; 

- D 0 - - - 0x03FDE2 0F:1DD2: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FDE3 0F:1DD3: C5        .byte $C5   ; 

- D 0 - - - 0x03FDE4 0F:1DD4: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FDE5 0F:1DD5: 00        .byte $00   ; 

- D 0 - - - 0x03FDE6 0F:1DD6: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FDE7 0F:1DD7: C3        .byte $C3, $00, $CD, $63, $80, $81, $00, $91, $A4   ; 

- D 0 - - - 0x03FDF0 0F:1DE0: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03FDF1 0F:1DE1: AE        .byte $AE   ; 

- D 0 - - - 0x03FDF2 0F:1DE2: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FDF3 0F:1DE3: A4        .byte $A4, $70   ; 

- D 0 - - - 0x03FDF5 0F:1DE5: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03FDF6 0F:1DE6: 00        .byte $00   ; 

- D 0 - - - 0x03FDF7 0F:1DE7: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FDF8 0F:1DE8: CD        .byte $CD, $51, $80, $81, $C9, $CD, $CE   ; 

- D 0 - - - 0x03FDFF 0F:1DEF: 12        .byte con_00 + $12   ; 
- D 0 - - - 0x03FE00 0F:1DF0: FF        .byte $FF   ; 

- D 0 - - - 0x03FE01 0F:1DF1: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FE02 0F:1DF2: CF        .byte $CF, $CD, $CA   ; 

- D 0 - - - 0x03FE05 0F:1DF5: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FE06 0F:1DF6: 00        .byte $00   ; 

- D 0 - - - 0x03FE07 0F:1DF7: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FE08 0F:1DF8: 82        .byte $82, $92, $90, $A3, $CD, $CE   ; 

- D 0 - - - 0x03FE0E 0F:1DFE: 14        .byte con_00 + $14   ; 
- D 0 - - - 0x03FE0F 0F:1DFF: FF        .byte $FF   ; 

- D 0 - - - 0x03FE10 0F:1E00: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FE11 0F:1E01: CF        .byte $CF, $CD, $CA   ; 

- D 0 - - - 0x03FE14 0F:1E04: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FE15 0F:1E05: 00        .byte $00   ; 

- D 0 - - - 0x03FE16 0F:1E06: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FE17 0F:1E07: 92        .byte $92, $00   ; 

- D 0 - - - 0x03FE19 0F:1E09: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FE1A 0F:1E0A: CD        .byte $CD   ; 

- D 0 - - - 0x03FE1B 0F:1E0B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FE1C 0F:1E0C: CE        .byte $CE   ; 

- D 0 - - - 0x03FE1D 0F:1E0D: 16        .byte con_00 + $16   ; 
- D 0 - - - 0x03FE1E 0F:1E0E: FF        .byte $FF   ; 

- D 0 - - - 0x03FE1F 0F:1E0F: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FE20 0F:1E10: CF        .byte $CF, $CD, $CA   ; 

- D 0 - - - 0x03FE23 0F:1E13: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FE24 0F:1E14: 00        .byte $00   ; 

- D 0 - - - 0x03FE25 0F:1E15: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FE26 0F:1E16: C9        .byte $C9, $CD, $CE   ; 

- D 0 - - - 0x03FE29 0F:1E19: 18        .byte con_00 + $18   ; 
- D 0 - - - 0x03FE2A 0F:1E1A: FF        .byte $FF   ; 

- D 0 - - - 0x03FE2B 0F:1E1B: 47        .byte con_40 + $07   ; 
- D 0 - - - 0x03FE2C 0F:1E1C: CF        .byte $CF, $CD, $CA, $00, $C9, $CD, $8E   ; 

- D 0 - - - 0x03FE33 0F:1E23: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FE34 0F:1E24: CC        .byte $CC   ; 

- D 0 - - - 0x03FE35 0F:1E25: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FE36 0F:1E26: 7F        .byte $7F, $CD, $CA   ; 

- D 0 - - - 0x03FE39 0F:1E29: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03FE3A 0F:1E2A: 0F        .byte $0F   ; 

- D 0 - - - 0x03FE3B 0F:1E2B: 20        .byte con_00 + $20   ; 
- D 0 - - - 0x03FE3C 0F:1E2C: CB        .byte $CB   ; 

- D 0 - - - 0x03FE3D 0F:1E2D: 22        .byte con_00 + $22   ; 
- D 0 - - - 0x03FE3E 0F:1E2E: 00        .byte $00   ; 

- D 0 - - - 0x03FE3F 0F:1E2F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FE40 0F:1E30: D2        .byte $D2, $D0   ; 

- D 0 - - - 0x03FE42 0F:1E32: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FE43 0F:1E33: 00        .byte $00   ; 

- D 0 - - - 0x03FE44 0F:1E34: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FE45 0F:1E35: D8        .byte $D8   ; 

- D 0 - - - 0x03FE46 0F:1E36: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FE47 0F:1E37: D9        .byte $D9   ; 

- D 0 - - - 0x03FE48 0F:1E38: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FE49 0F:1E39: DA        .byte $DA, $D2, $D1   ; 

- D 0 - - - 0x03FE4C 0F:1E3C: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x03FE4D 0F:1E3D: 00        .byte $00   ; 

- D 0 - - - 0x03FE4E 0F:1E3E: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FE4F 0F:1E3F: E2        .byte $E2, $E0   ; 

- D 0 - - - 0x03FE51 0F:1E41: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FE52 0F:1E42: FD        .byte $FD   ; 

- D 0 - - - 0x03FE53 0F:1E43: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03FE54 0F:1E44: F5        .byte $F5, $F6, $F7, $F8, $F9, $FA, $FB, $FC, $E2, $E1   ; 

- D 0 - - - 0x03FE5E 0F:1E4E: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FE5F 0F:1E4F: FD        .byte $FD   ; 

- D 0 - - - 0x03FE60 0F:1E50: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03FE61 0F:1E51: 00        .byte $00   ; 

- D 0 - - - 0x03FE62 0F:1E52: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FE63 0F:1E53: D8        .byte $D8   ; 

- D 0 - - - 0x03FE64 0F:1E54: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FE65 0F:1E55: D9        .byte $D9   ; 

- D 0 - - - 0x03FE66 0F:1E56: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FE67 0F:1E57: DA        .byte $DA   ; 

- D 0 - - - 0x03FE68 0F:1E58: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03FE69 0F:1E59: 00        .byte $00   ; 

- D 0 - - - 0x03FE6A 0F:1E5A: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FE6B 0F:1E5B: F2        .byte $F2, $DF   ; 

- D 0 - - - 0x03FE6D 0F:1E5D: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FE6E 0F:1E5E: 00        .byte $00   ; 

- D 0 - - - 0x03FE6F 0F:1E5F: 50        .byte con_40 + $10   ; 
- D 0 - - - 0x03FE70 0F:1E60: DB        .byte $DB, $DC, $DD, $DE, $DF, $EB, $00, $EB, $EC, $ED, $EE, $EF, $DB, $00, $F2, $DF   ; 

- D 0 - - - 0x03FE80 0F:1E70: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FE81 0F:1E71: 00        .byte $00   ; 

- D 0 - - - 0x03FE82 0F:1E72: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FE83 0F:1E73: DB        .byte $DB, $DC, $DD, $DE, $DF, $EB   ; 

- D 0 - - - 0x03FE89 0F:1E79: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03FE8A 0F:1E7A: 00        .byte $00   ; 

- D 0 - - - 0x03FE8B 0F:1E7B: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FE8C 0F:1E7C: E9        .byte $E9   ; 

- D 0 - - - 0x03FE8D 0F:1E7D: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x03FE8E 0F:1E7E: 00        .byte $00   ; 

- D 0 - - - 0x03FE8F 0F:1E7F: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FE90 0F:1E80: FF        .byte $FF, $77   ; 

- D 0 - - - 0x03FE92 0F:1E82: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FE93 0F:1E83: 55        .byte $55   ; 

- D 0 - - - 0x03FE94 0F:1E84: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FE95 0F:1E85: DD        .byte $DD, $33, $FF, $77, $5D   ; 

- D 0 - - - 0x03FE9A 0F:1E8A: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FE9B 0F:1E8B: 55        .byte $55   ; 

- D 0 - - - 0x03FE9C 0F:1E8C: 53        .byte con_40 + $13   ; 
- D 0 - - - 0x03FE9D 0F:1E8D: DD        .byte $DD, $33, $FF, $77, $44, $15, $55, $11, $DD, $A3, $FF, $77, $44, $D1, $75, $11   ; 
- D 0 - - - 0x03FEAD 0F:1E9D: DD        .byte $DD, $AA, $BF   ; 

- D 0 - - - 0x03FEB0 0F:1EA0: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FEB1 0F:1EA1: AA        .byte $AA   ; 

- D 0 - - - 0x03FEB2 0F:1EA2: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FEB3 0F:1EA3: 22        .byte $22   ; 

- D 0 - - - 0x03FEB4 0F:1EA4: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x03FEB5 0F:1EA5: 0A        .byte $0A   ; 

- D 0 - - - 0x03FEB6 0F:1EA6: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FEB7 0F:1EA7: 44        .byte $44, $00, $0C   ; 

- D 0 - - - 0x03FEBA 0F:1EAA: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FEBB 0F:1EAB: AA        .byte $AA   ; 

- D 0 - - - 0x03FEBC 0F:1EAC: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FEBD 0F:1EAD: 11        .byte $11   ; 

- D 0 - - - 0x03FEBE 0F:1EAE: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FEBF 0F:1EAF: 00        .byte $00   ; 

- D 0 - - - 0x03FEC0 0F:1EB0: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FEC1 0F:1EB1: 04        .byte $04   ; 

- D 0 - - - 0x03FEC2 0F:1EB2: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FEC3 0F:1EB3: 05        .byte $05   ; 

- D 0 - - - 0x03FEC4 0F:1EB4: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FEC5 0F:1EB5: 0A        .byte $0A   ; 

- D 0 - - - 0x03FEC6 0F:1EB6: 43        .byte con_40 + $03   ; 
- D 0 - - - 0x03FEC7 0F:1EB7: 01        .byte $01, $05, $01   ; 

- D 0 - - - 0x03FECA 0F:1EBA: 00        .byte $00, $00   ; end token



_off031_0x03FECC_45:
- D 0 - - - 0x03FECC 0F:1EBC: 00        .byte $00   ; 
- D 0 - - - 0x03FECD 0F:1EBD: 20 00     .dbyt $2000

- D 0 - - - 0x03FECF 0F:1EBF: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03FED0 0F:1EC0: 00        .byte $00   ; 

- D 0 - - - 0x03FED1 0F:1EC1: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FED2 0F:1EC2: 34        .byte $34   ; 

- D 0 - - - 0x03FED3 0F:1EC3: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FED4 0F:1EC4: 00        .byte $00   ; 

- D 0 - - - 0x03FED5 0F:1EC5: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FED6 0F:1EC6: 34        .byte $34   ; 

- D 0 - - - 0x03FED7 0F:1EC7: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FED8 0F:1EC8: 00        .byte $00   ; 

- D 0 - - - 0x03FED9 0F:1EC9: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FEDA 0F:1ECA: 24        .byte $24   ; 

- D 0 - - - 0x03FEDB 0F:1ECB: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FEDC 0F:1ECC: 00        .byte $00   ; 

- D 0 - - - 0x03FEDD 0F:1ECD: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FEDE 0F:1ECE: 05        .byte $05, $06, $07, $08, $09, $0A   ; 

- D 0 - - - 0x03FEE4 0F:1ED4: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FEE5 0F:1ED5: 00        .byte $00   ; 

- D 0 - - - 0x03FEE6 0F:1ED6: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FEE7 0F:1ED7: 15        .byte $15, $16, $17, $18, $19, $1A   ; 

- D 0 - - - 0x03FEED 0F:1EDD: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FEEE 0F:1EDE: 00        .byte $00   ; 

- D 0 - - - 0x03FEEF 0F:1EDF: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FEF0 0F:1EE0: 25        .byte $25, $26, $27, $28, $29, $2A   ; 

- D 0 - - - 0x03FEF6 0F:1EE6: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FEF7 0F:1EE7: 00        .byte $00   ; 

- D 0 - - - 0x03FEF8 0F:1EE8: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FEF9 0F:1EE9: 35        .byte $35, $36, $37, $38, $39, $3A   ; 

- D 0 - - - 0x03FEFF 0F:1EEF: 1B        .byte con_00 + $1B   ; 
- D 0 - - - 0x03FF00 0F:1EF0: 00        .byte $00   ; 

- D 0 - - - 0x03FF01 0F:1EF1: 45        .byte con_40 + $05   ; 
- D 0 - - - 0x03FF02 0F:1EF2: 46        .byte $46, $47, $48, $49, $4A   ; 

- D 0 - - - 0x03FF07 0F:1EF7: 2B        .byte con_00 + $2B   ; 
- D 0 - - - 0x03FF08 0F:1EF8: 00        .byte $00   ; 

- D 0 - - - 0x03FF09 0F:1EF9: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FF0A 0F:1EFA: C2        .byte $C2   ; 

- D 0 - - - 0x03FF0B 0F:1EFB: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03FF0C 0F:1EFC: 00        .byte $00   ; 

- D 0 - - - 0x03FF0D 0F:1EFD: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF0E 0F:1EFE: 41        .byte $41   ; 

- D 0 - - - 0x03FF0F 0F:1EFF: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FF10 0F:1F00: 42        .byte $42, $43   ; 

- D 0 - - - 0x03FF12 0F:1F02: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF13 0F:1F03: 45        .byte $45   ; 

- D 0 - - - 0x03FF14 0F:1F04: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x03FF15 0F:1F05: 00        .byte $00, $B0, $00, $F3, $E1, $F6, $00, $D0, $E8, $9C, $A7, $E2   ; 

- D 0 - - - 0x03FF21 0F:1F11: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03FF22 0F:1F12: 00        .byte $00   ; 

- D 0 - - - 0x03FF23 0F:1F13: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF24 0F:1F14: 40        .byte $40   ; 

- D 0 - - - 0x03FF25 0F:1F15: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FF26 0F:1F16: 44        .byte $44, $0B   ; 

- D 0 - - - 0x03FF28 0F:1F18: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF29 0F:1F19: 40        .byte $40   ; 

- D 0 - - - 0x03FF2A 0F:1F1A: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FF2B 0F:1F1B: 00        .byte $00   ; 

- D 0 - - - 0x03FF2C 0F:1F1C: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FF2D 0F:1F1D: C2        .byte $C2   ; 

- D 0 - - - 0x03FF2E 0F:1F1E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FF2F 0F:1F1F: 00        .byte $00   ; 

- D 0 - - - 0x03FF30 0F:1F20: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FF31 0F:1F21: C2        .byte $C2   ; 

- D 0 - - - 0x03FF32 0F:1F22: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x03FF33 0F:1F23: 00        .byte $00   ; 

- D 0 - - - 0x03FF34 0F:1F24: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF35 0F:1F25: 40        .byte $40   ; 

- D 0 - - - 0x03FF36 0F:1F26: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FF37 0F:1F27: 44        .byte $44, $1B   ; 

- D 0 - - - 0x03FF39 0F:1F29: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF3A 0F:1F2A: 40        .byte $40   ; 

- D 0 - - - 0x03FF3B 0F:1F2B: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FF3C 0F:1F2C: 00        .byte $00   ; 

- D 0 - - - 0x03FF3D 0F:1F2D: 4A        .byte con_40 + $0A   ; 
- D 0 - - - 0x03FF3E 0F:1F2E: E5        .byte $E5, $D8, $F5, $D2, $FE, $E2, $FB, $D8, $DF, $E4   ; 

- D 0 - - - 0x03FF48 0F:1F38: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FF49 0F:1F39: CF        .byte $CF   ; 

- D 0 - - - 0x03FF4A 0F:1F3A: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x03FF4B 0F:1F3B: 00        .byte $00   ; 

- D 0 - - - 0x03FF4C 0F:1F3C: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FF4D 0F:1F3D: 01        .byte $01, $04   ; 

- D 0 - - - 0x03FF4F 0F:1F3F: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FF50 0F:1F40: 01        .byte $01   ; 

- D 0 - - - 0x03FF51 0F:1F41: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FF52 0F:1F42: 04        .byte $04   ; 

- D 0 - - - 0x03FF53 0F:1F43: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FF54 0F:1F44: 00        .byte $00   ; 

- D 0 - - - 0x03FF55 0F:1F45: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FF56 0F:1F46: 34        .byte $34, $14, $34, $02, $03, $14   ; 

- D 0 - - - 0x03FF5C 0F:1F4C: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03FF5D 0F:1F4D: 00        .byte $00   ; 

- D 0 - - - 0x03FF5E 0F:1F4E: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FF5F 0F:1F4F: DE        .byte $DE, $D2, $E9, $00, $DA, $DD, $F8, $D5, $FE   ; 

- D 0 - - - 0x03FF68 0F:1F58: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FF69 0F:1F59: CD        .byte $CD   ; 

- D 0 - - - 0x03FF6A 0F:1F5A: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FF6B 0F:1F5B: B1        .byte $B1   ; 

- D 0 - - - 0x03FF6C 0F:1F5C: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03FF6D 0F:1F5D: 00        .byte $00   ; 

- D 0 - - - 0x03FF6E 0F:1F5E: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FF6F 0F:1F5F: 34        .byte $34, $14, $34, $12, $13, $14   ; 

- D 0 - - - 0x03FF75 0F:1F65: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FF76 0F:1F66: 00        .byte $00   ; 

- D 0 - - - 0x03FF77 0F:1F67: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FF78 0F:1F68: 34        .byte $34, $14, $10, $11, $34, $14   ; 

- D 0 - - - 0x03FF7E 0F:1F6E: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FF7F 0F:1F6F: 00        .byte $00   ; 

- D 0 - - - 0x03FF80 0F:1F70: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FF81 0F:1F71: 03        .byte $03, $14, $20, $21, $22, $23   ; 

- D 0 - - - 0x03FF87 0F:1F77: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x03FF88 0F:1F78: 00        .byte $00   ; 

- D 0 - - - 0x03FF89 0F:1F79: 46        .byte con_40 + $06   ; 
- D 0 - - - 0x03FF8A 0F:1F7A: 13        .byte $13, $14, $30, $31, $32, $33   ; 

- D 0 - - - 0x03FF90 0F:1F80: 81        .byte con_80 + $01, $8A   ; 
- D 0 - - - 0x03FF92 0F:1F82: 00        .byte $00   ; 

- D 0 - - - 0x03FF93 0F:1F83: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FF94 0F:1F84: BF        .byte $BF   ; 

- D 0 - - - 0x03FF95 0F:1F85: 0F        .byte con_00 + $0F   ; 
- D 0 - - - 0x03FF96 0F:1F86: 00        .byte $00   ; 

- D 0 - - - 0x03FF97 0F:1F87: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FF98 0F:1F88: B4        .byte $B4, $B5, $B6, $B7, $B8, $B9, $BA, $00, $C5   ; 

- D 0 - - - 0x03FFA1 0F:1F91: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FFA2 0F:1F92: 00        .byte $00   ; 

- D 0 - - - 0x03FFA3 0F:1F93: 49        .byte con_40 + $09   ; 
- D 0 - - - 0x03FFA4 0F:1F94: B2        .byte $B2, $00, $9C, $A7, $9D, $B2, $93, $00, $B2   ; 

- D 0 - - - 0x03FFAD 0F:1F9D: 81        .byte con_80 + $01, $E7   ; 
- D 0 - - - 0x03FFAF 0F:1F9F: 00        .byte $00   ; 

- D 0 - - - 0x03FFB0 0F:1FA0: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FFB1 0F:1FA1: 0E        .byte $0E, $0F   ; 

- D 0 - - - 0x03FFB3 0F:1FA3: 09        .byte con_00 + $09   ; 
- D 0 - - - 0x03FFB4 0F:1FA4: 00        .byte $00   ; 

- D 0 - - - 0x03FFB5 0F:1FA5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FFB6 0F:1FA6: 33        .byte $33   ; 

- D 0 - - - 0x03FFB7 0F:1FA7: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x03FFB8 0F:1FA8: 00        .byte $00   ; 

- D 0 - - - 0x03FFB9 0F:1FA9: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x03FFBA 0F:1FAA: FF        .byte $FF   ; 

- D 0 - - - 0x03FFBB 0F:1FAB: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FFBC 0F:1FAC: F0        .byte $F0   ; 

- D 0 - - - 0x03FFBD 0F:1FAD: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FFBE 0F:1FAE: 00        .byte $00   ; 

- D 0 - - - 0x03FFBF 0F:1FAF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FFC0 0F:1FB0: AA        .byte $AA   ; 

- D 0 - - - 0x03FFC1 0F:1FB1: 04        .byte con_00 + $04   ; 
- D 0 - - - 0x03FFC2 0F:1FB2: FF        .byte $FF   ; 

- D 0 - - - 0x03FFC3 0F:1FB3: 42        .byte con_40 + $02   ; 
- D 0 - - - 0x03FFC4 0F:1FB4: 33        .byte $33, $00   ; 

- D 0 - - - 0x03FFC6 0F:1FB6: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FFC7 0F:1FB7: 0A        .byte $0A   ; 

- D 0 - - - 0x03FFC8 0F:1FB8: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x03FFC9 0F:1FB9: 00        .byte $00   ; 

- D 0 - - - 0x03FFCA 0F:1FBA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x03FFCB 0F:1FBB: C0        .byte $C0   ; 

- D 0 - - - 0x03FFCC 0F:1FBC: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x03FFCD 0F:1FBD: F0        .byte $F0   ; 

- D 0 - - - 0x03FFCE 0F:1FBE: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x03FFCF 0F:1FBF: 30        .byte $30, $F0, $F3, $30   ; 

- D 0 - - - 0x03FFD3 0F:1FC3: 11        .byte con_00 + $11   ; 
- D 0 - - - 0x03FFD4 0F:1FC4: 00        .byte $00   ; 

- D 0 - - - 0x03FFD5 0F:1FC5: 00        .byte $00, $00   ; end token


; bzk garbage, unfinished screen data
- - - - - - 0x03FFD7 0F:1FC7: 00        .byte $00   ; 
- - - - - - 0x03FFD8 0F:1FC8: 00        .byte $00   ; 
- - - - - - 0x03FFD9 0F:1FC9: 4B        .byte $4B   ; 
- - - - - - 0x03FFDA 0F:1FCA: 4C        .byte $4C   ; 
- - - - - - 0x03FFDB 0F:1FCB: 4D        .byte $4D   ; 
- - - - - - 0x03FFDC 0F:1FCC: 4E        .byte $4E   ; 
- - - - - - 0x03FFDD 0F:1FCD: 4F        .byte $4F   ; 
- - - - - - 0x03FFDE 0F:1FCE: 8C        .byte $8C   ; 
- - - - - - 0x03FFDF 0F:1FCF: 00        .byte $00   ; 
- - - - - - 0x03FFE0 0F:1FD0: B1        .byte $B1   ; 
- - - - - - 0x03FFE1 0F:1FD1: B2        .byte $B2   ; 
- - - - - - 0x03FFE2 0F:1FD2: B3        .byte $B3   ; 
- - - - - - 0x03FFE3 0F:1FD3: 78        .byte $78   ; 
- - - - - - 0x03FFE4 0F:1FD4: 79        .byte $79   ; 
- - - - - - 0x03FFE5 0F:1FD5: 7A        .byte $7A   ; 
- - - - - - 0x03FFE6 0F:1FD6: 7B        .byte $7B   ; 

- - - - - - 0x03FFE7 0F:1FD7: 07        .byte con_00 + $07   ; 
- - - - - - 0x03FFE8 0F:1FD8: 00        .byte $00   ; 

- - - - - - 0x03FFE9 0F:1FD9: 48        .byte con_40 + $08   ; 
- - - - - - 0x03FFEA 0F:1FDA: 51        .byte $51, $52, $53, $54, $55, $56, $57, $58   ; 

- - - - - - 0x03FFF2 0F:1FE2: 02        .byte con_00 + $02   ; 
- - - - - - 0x03FFF3 0F:1FE3: 00        .byte $00   ; 

- - - - - - 0x03FFF4 0F:1FE4: 50        .byte con_40 + $10   ; 
- - - - - - 0x03FFF5 0F:1FE5: 5A        .byte $5A, $5B, $5C, $5D, $5E, $5F, $6D, $00, $C1, $C2, $C3, $88, $89, $8A, $8B, $8C   ; 

- - - - - - 0x040005 0F:1FF5: 06        .byte con_00 + $06   ; 
- - - - - - 0x040006 0F:1FF6: 00        .byte $00   ; 

- - - - - - 0x040007 0F:1FF7: 5A        .byte con_40 + $1A   ; 
- - - - - - 0x040008 0F:1FF8: 61        .byte $61, $62, $63, $64, $65, $66, $67, $68   ; 



.out .sprintf("Free bytes in bank ppu 3: %Xh [%d]", ($2000 - *), ($2000 - *))



