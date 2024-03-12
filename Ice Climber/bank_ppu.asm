.include "bank_ram.inc"
.include "bank_val.inc"
.org $0000  ; for listing file



.segment "PPU_1"
.incbin "CHR_ROM_1.chr"




.segment "PPU_bg"
; 0x0050B0-0x00530F



; !!! bzk notes 0x0051FC 0x005295 0x0052F3
; don't move any data here unless you deal with them

; my suggestion is not to store bg data inside chr
; better expand the rom and store bg data there
; use a simple cnrom mapper to get additional 8000-BFFF space



.export _off000_0x0050B0_05_00
.export _off000_0x005214_05_01



con_00                                  = $00 ; horisontally write ?? tiles
con_40                                  = $40 ; horisontally write a tile ?? times
con_80                                  = $80 ; vertically write ?? tiles
con_C0                                  = $C0 ; vertically write a tile ?? times



_off000_0x0050B0_05_00:
- D 0 - - - 0x0050B0 01:10A0: 23 E0     .dbyt $23E0
- D 0 - - - 0x0050B2 01:10A2: 60        .byte con_40 + $20   ; 
- D 0 - - - 0x0050B3 01:10A3: AA        .byte $AA   ; 

- D 0 - - - 0x0050B4 01:10A4: 23 E8     .dbyt $23E8
- D 0 - - - 0x0050B6 01:10A6: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x0050B7 01:10A7: 50        .byte $50   ; 

- D 0 - - - 0x0050B8 01:10A8: 23 F0     .dbyt $23F0
- D 0 - - - 0x0050BA 01:10AA: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x0050BB 01:10AB: AF        .byte $AF   ; 

- D 0 - - - 0x0050BC 01:10AC: 20 62     .dbyt $2062
- D 0 - - - 0x0050BE 01:10AE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0050BF 01:10AF: 77        .byte $77   ; 

- D 0 - - - 0x0050C0 01:10B0: 20 63     .dbyt $2063
- D 0 - - - 0x0050C2 01:10B2: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050C3 01:10B3: 7A        .byte $7A   ; 

- D 0 - - - 0x0050C4 01:10B4: 20 7D     .dbyt $207D
- D 0 - - - 0x0050C6 01:10B6: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0050C7 01:10B7: 7C        .byte $7C   ; 

- D 0 - - - 0x0050C8 01:10B8: 20 82     .dbyt $2082
- D 0 - - - 0x0050CA 01:10BA: C9        .byte con_C0 + $09   ; 
- D 0 - - - 0x0050CB 01:10BB: 78        .byte $78   ; 

- D 0 - - - 0x0050CC 01:10BC: 21 A2     .dbyt $21A2
- D 0 - - - 0x0050CE 01:10BE: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0050CF 01:10BF: 79        .byte $79   ; 

- D 0 - - - 0x0050D0 01:10C0: 21 A3     .dbyt $21A3
- D 0 - - - 0x0050D2 01:10C2: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050D3 01:10C3: 7B        .byte $7B   ; 

- D 0 - - - 0x0050D4 01:10C4: 20 9D     .dbyt $209D
- D 0 - - - 0x0050D6 01:10C6: C9        .byte con_C0 + $09   ; 
- D 0 - - - 0x0050D7 01:10C7: 7D        .byte $7D   ; 

- D 0 - - - 0x0050D8 01:10C8: 21 BD     .dbyt $21BD
- D 0 - - - 0x0050DA 01:10CA: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0050DB 01:10CB: 7E        .byte $7E   ; 

- D 0 - - - 0x0050DC 01:10CC: 20 83     .dbyt $2083
- D 0 - - - 0x0050DE 01:10CE: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050DF 01:10CF: FD        .byte $FD   ; 

- D 0 - - - 0x0050E0 01:10D0: 20 A3     .dbyt $20A3
- D 0 - - - 0x0050E2 01:10D2: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050E3 01:10D3: FD        .byte $FD   ; 

- D 0 - - - 0x0050E4 01:10D4: 20 C3     .dbyt $20C3
- D 0 - - - 0x0050E6 01:10D6: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050E7 01:10D7: FD        .byte $FD   ; 

- D 0 - - - 0x0050E8 01:10D8: 20 E3     .dbyt $20E3
- D 0 - - - 0x0050EA 01:10DA: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050EB 01:10DB: FD        .byte $FD   ; 

- D 0 - - - 0x0050EC 01:10DC: 21 03     .dbyt $2103
- D 0 - - - 0x0050EE 01:10DE: 5A        .byte con_40 + $1A   ; 
- D 0 - - - 0x0050EF 01:10DF: FD        .byte $FD   ; 

- D 0 - - - 0x0050F0 01:10E0: 20 8B     .dbyt $208B
- D 0 - - - 0x0050F2 01:10E2: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x0050F3 01:10E3: 5E        .byte $5E, $FD, $FD, $60, $61, $61, $FD, $60, $61, $61   ; 

- D 0 - - - 0x0050FD 01:10ED: 20 AB     .dbyt $20AB
- D 0 - - - 0x0050FF 01:10EF: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x005100 01:10F0: 5F        .byte $5F, $FD, $FD, $5F, $62, $FD, $FD, $5F, $66, $68   ; 

- D 0 - - - 0x00510A 01:10FA: 20 CB     .dbyt $20CB
- D 0 - - - 0x00510C 01:10FC: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x00510D 01:10FD: 5F        .byte $5F, $FD, $FD, $5F, $63, $FD, $FD, $5F, $67, $69   ; 

- D 0 - - - 0x005117 01:1107: 20 EB     .dbyt $20EB
- D 0 - - - 0x005119 01:1109: 0A        .byte con_00 + $0A   ; 
- D 0 - - - 0x00511A 01:110A: 5F        .byte $5F, $FD, $FD, $64, $65, $61, $FD, $64, $65, $61   ; 

- D 0 - - - 0x005124 01:1114: 21 23     .dbyt $2123
- D 0 - - - 0x005126 01:1116: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x005127 01:1117: 60        .byte $60, $61, $61, $FD, $5E, $FD, $FD, $FD, $5E, $FD, $60, $6A, $60, $6A, $FD, $60   ; 
- D 0 - - - 0x005137 01:1127: 61        .byte $61, $6A, $FD, $60, $61, $61, $FD, $60, $61, $6A   ; 

- D 0 - - - 0x005141 01:1131: 21 43     .dbyt $2143
- D 0 - - - 0x005143 01:1133: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x005144 01:1134: 5F        .byte $5F, $62, $FD, $FD, $5F, $FD, $FD, $FD, $5F, $FD, $5F, $6B, $6C, $6D, $FD, $5F   ; 
- D 0 - - - 0x005154 01:1144: 6E        .byte $6E, $71, $FD, $5F, $66, $68, $FD, $5F, $6E, $71   ; 

- D 0 - - - 0x00515E 01:114E: 21 63     .dbyt $2163
- D 0 - - - 0x005160 01:1150: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x005161 01:1151: 5F        .byte $5F, $63, $FD, $FD, $5F, $63, $FD, $FD, $5F, $FD, $5F, $74, $75, $5F, $FD, $5F   ; 
- D 0 - - - 0x005171 01:1161: 6F        .byte $6F, $72, $FD, $5F, $67, $69, $FD, $5F, $76, $72   ; 

- D 0 - - - 0x00517B 01:116B: 21 83     .dbyt $2183
- D 0 - - - 0x00517D 01:116D: 1A        .byte con_00 + $1A   ; 
- D 0 - - - 0x00517E 01:116E: 64        .byte $64, $65, $61, $FD, $64, $65, $61, $FD, $5F, $FD, $5F, $FD, $FD, $5F, $FD, $5F   ; 
- D 0 - - - 0x00518E 01:117E: 70        .byte $70, $73, $FD, $64, $65, $61, $FD, $5F, $FD, $5F   ; 

- D 0 - - - 0x005198 01:1188: 22 0A     .dbyt $220A
- D 0 - - - 0x00519A 01:118A: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x00519B 01:118B: 01        .byte $01, $38, $8D, $37, $33, $A3, $3D, $8E, $38, $36, $33, $3C, $3D   ; 

- D 0 - - - 0x0051A8 01:1198: 22 4A     .dbyt $224A
- D 0 - - - 0x0051AA 01:119A: 0D        .byte con_00 + $0D   ; 
- D 0 - - - 0x0051AB 01:119B: 02        .byte $02, $38, $8D, $37, $33, $A3, $3D, $8E, $38, $36, $33, $3C, $3D   ; 

- D 0 - - - 0x0051B8 01:11A8: 22 8A     .dbyt $228A
- D 0 - - - 0x0051BA 01:11AA: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x0051BB 01:11AB: 3C        .byte $3C, $5B, $93, $5A, $3A, $33, $3B, $5A   ; 

- D 0 - - - 0x0051C3 01:11B3: 22 CA     .dbyt $22CA
- D 0 - - - 0x0051C5 01:11B5: 03        .byte con_00 + $03   ; 
- D 0 - - - 0x0051C6 01:11B6: 7F        .byte $7F, $80, $81   ; 

- D 0 - - - 0x0051C9 01:11B9: 22 D2     .dbyt $22D2
- D 0 - - - 0x0051CB 01:11BB: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x0051CC 01:11BC: 00        .byte $00, $3E, $3F, $40, $41   ; 

- D 0 - - - 0x0051D1 01:11C1: 23 05     .dbyt $2305
- D 0 - - - 0x0051D3 01:11C3: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0051D4 01:11C4: 83        .byte $83   ; 

- D 0 - - - 0x0051D5 01:11C5: 23 0B     .dbyt $230B
- D 0 - - - 0x0051D7 01:11C7: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x0051D8 01:11C8: 00        .byte $00, $3E, $3F, $40, $41   ; 

- D 0 - - - 0x0051DD 01:11CD: 23 12     .dbyt $2312
- D 0 - - - 0x0051DF 01:11CF: 02        .byte con_00 + $02   ; 
- D 0 - - - 0x0051E0 01:11D0: 82        .byte $82, $83   ; 

- D 0 - - - 0x0051E2 01:11D2: 23 19     .dbyt $2319
- D 0 - - - 0x0051E4 01:11D4: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x0051E5 01:11D5: 00        .byte $00, $3E, $3F, $40, $41   ; 

- D 0 - - - 0x0051EA 01:11DA: 23 69     .dbyt $2369
- D 0 - - - 0x0051EC 01:11DC: 0E        .byte con_00 + $0E   ; 
- D 0 - - - 0x0051ED 01:11DD: FC        .byte $FC, $01, $09, $08, $04, $38, $5A, $3B, $5A, $3A, $3D, $5A, $35, $5B   ; 

- D 0 - - - 0x0051FB 01:11EB: 00        .byte $00   ; end token



; !!! bzk this must be located starting at specific address, which is relative to 10A0
; pointer here is at 0x000011 (11EC - 10A0 + 400 = ram_054C)
- D 0 - - - 0x0051FC 01:11EC: 3F 00     .dbyt $3F00
- D 0 - - - 0x0051FE 01:11EE: 14        .byte con_00 + $14   ; 
- D 0 - - - 0x0051FF 01:11EF: 0F        .byte $0F, $31, $12, $30   ; 
- D 0 - - - 0x005203 01:11F3: 0F        .byte $0F, $25, $29, $0A   ; 
- D 0 - - - 0x005207 01:11F7: 0F        .byte $0F, $30, $21, $01   ; 
- D 0 - - - 0x00520B 01:11FB: 0F        .byte $0F, $27, $17, $07   ; 

- D 0 - - - 0x00520F 01:11FF: 0F        .byte $0F, $30, $12, $26   ; 

- D 0 - - - 0x005213 01:1203: 00        .byte $00   ; end token



_off000_0x005214_05_01:
- D 0 - - - 0x005214 01:1204: 23 CC     .dbyt $23CC
- D 0 - - - 0x005216 01:1206: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x005217 01:1207: 55        .byte $55   ; 

- D 0 - - - 0x005218 01:1208: 23 D4     .dbyt $23D4
- D 0 - - - 0x00521A 01:120A: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x00521B 01:120B: 55        .byte $55   ; 

- D 0 - - - 0x00521C 01:120C: 23 DC     .dbyt $23DC
- D 0 - - - 0x00521E 01:120E: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x00521F 01:120F: 55        .byte $55   ; 

- D 0 - - - 0x005220 01:1210: 23 E4     .dbyt $23E4
- D 0 - - - 0x005222 01:1212: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x005223 01:1213: 55        .byte $55   ; 

- D 0 - - - 0x005224 01:1214: 23 EC     .dbyt $23EC
- D 0 - - - 0x005226 01:1216: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x005227 01:1217: 55        .byte $55   ; 

- D 0 - - - 0x005228 01:1218: 23 F4     .dbyt $23F4
- D 0 - - - 0x00522A 01:121A: 44        .byte con_40 + $04   ; 
- D 0 - - - 0x00522B 01:121B: 55        .byte $55   ; 

- D 0 - - - 0x00522C 01:121C: 21 08     .dbyt $2108
- D 0 - - - 0x00522E 01:121E: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x00522F 01:121F: 5A        .byte $5A, $5B, $38, $38, $38, $38   ; 

- D 0 - - - 0x005235 01:1225: 21 28     .dbyt $2128
- D 0 - - - 0x005237 01:1227: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x005238 01:1228: 34        .byte $34, $5B, $5A, $93, $91, $39   ; 

- D 0 - - - 0x00523E 01:122E: 20 6A     .dbyt $206A
- D 0 - - - 0x005240 01:1230: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x005241 01:1231: 3C        .byte $3C, $5B, $93, $5A, $3A, $33, $3B, $5A   ; 

- D 0 - - - 0x005249 01:1239: 20 82     .dbyt $2082
- D 0 - - - 0x00524B 01:123B: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x00524C 01:123C: 95        .byte $95   ; 

- D 0 - - - 0x00524D 01:123D: 20 A2     .dbyt $20A2
- D 0 - - - 0x00524F 01:123F: D6        .byte con_C0 + $16   ; 
- D 0 - - - 0x005250 01:1240: 96        .byte $96   ; 

- D 0 - - - 0x005251 01:1241: 23 62     .dbyt $2362
- D 0 - - - 0x005253 01:1243: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x005254 01:1244: 97        .byte $97   ; 

- D 0 - - - 0x005255 01:1245: 20 83     .dbyt $2083
- D 0 - - - 0x005257 01:1247: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x005258 01:1248: 98        .byte $98   ; 

- D 0 - - - 0x005259 01:1249: 23 63     .dbyt $2363
- D 0 - - - 0x00525B 01:124B: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x00525C 01:124C: 99        .byte $99   ; 

- D 0 - - - 0x00525D 01:124D: 20 8F     .dbyt $208F
- D 0 - - - 0x00525F 01:124F: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x005260 01:1250: 9A        .byte $9A   ; 

- D 0 - - - 0x005261 01:1251: 20 AF     .dbyt $20AF
- D 0 - - - 0x005263 01:1253: D6        .byte con_C0 + $16   ; 
- D 0 - - - 0x005264 01:1254: 9B        .byte $9B   ; 

- D 0 - - - 0x005265 01:1255: 23 6F     .dbyt $236F
- D 0 - - - 0x005267 01:1257: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x005268 01:1258: 9C        .byte $9C   ; 

- D 0 - - - 0x005269 01:1259: 20 C5     .dbyt $20C5
- D 0 - - - 0x00526B 01:125B: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x00526C 01:125C: 01        .byte $01, $38, $8D, $37, $33, $A3, $3D, $8E   ; 

- D 0 - - - 0x005274 01:1264: 22 C6     .dbyt $22C6
- D 0 - - - 0x005276 01:1266: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x005277 01:1267: 3A        .byte $3A, $5B, $3A, $33, $37   ; 

- D 0 - - - 0x00527C 01:126C: 22 E4     .dbyt $22E4
- D 0 - - - 0x00527E 01:126E: 83        .byte con_80 + $03   ; 
- D 0 - - - 0x00527F 01:126F: 84        .byte $84, $85, $86   ; 

- D 0 - - - 0x005282 01:1272: 22 E5     .dbyt $22E5
- D 0 - - - 0x005284 01:1274: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x005285 01:1275: 87        .byte $87   ; 

- D 0 - - - 0x005286 01:1276: 23 25     .dbyt $2325
- D 0 - - - 0x005288 01:1278: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x005289 01:1279: 88        .byte $88   ; 

- D 0 - - - 0x00528A 01:127A: 22 ED     .dbyt $22ED
- D 0 - - - 0x00528C 01:127C: 83        .byte con_80 + $03   ; 
- D 0 - - - 0x00528D 01:127D: 89        .byte $89, $8A, $8B   ; 

- D 0 - - - 0x005290 01:1280: 23 0B     .dbyt $230B
- D 0 - - - 0x005292 01:1282: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x005293 01:1283: 00        .byte $00   ; 

- D 0 - - - 0x005294 01:1284: 00        .byte $00   ; end token



; !!! bzk this must be located starting at specific address, which is relative to 1204
; pointer here is at 0x000018 (1285 - 1204 + 400 = ram_04DF)
- D 0 - - - 0x005295 01:1285: 21 16     .dbyt $2116
- D 0 - - - 0x005297 01:1287: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x005298 01:1288: 5A        .byte $5A, $5B, $38, $38, $38, $38   ; 

- D 0 - - - 0x00529E 01:128E: 21 36     .dbyt $2136
- D 0 - - - 0x0052A0 01:1290: 06        .byte con_00 + $06   ; 
- D 0 - - - 0x0052A1 01:1291: 34        .byte $34, $5B, $5A, $93, $91, $39   ; 

- D 0 - - - 0x0052A7 01:1297: 20 90     .dbyt $2090
- D 0 - - - 0x0052A9 01:1299: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0052AA 01:129A: 95        .byte $95   ; 

- D 0 - - - 0x0052AB 01:129B: 20 B0     .dbyt $20B0
- D 0 - - - 0x0052AD 01:129D: D6        .byte con_C0 + $16   ; 
- D 0 - - - 0x0052AE 01:129E: 96        .byte $96   ; 

- D 0 - - - 0x0052AF 01:129F: 23 70     .dbyt $2370
- D 0 - - - 0x0052B1 01:12A1: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0052B2 01:12A2: 97        .byte $97   ; 

- D 0 - - - 0x0052B3 01:12A3: 20 91     .dbyt $2091
- D 0 - - - 0x0052B5 01:12A5: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x0052B6 01:12A6: 98        .byte $98   ; 

- D 0 - - - 0x0052B7 01:12A7: 23 71     .dbyt $2371
- D 0 - - - 0x0052B9 01:12A9: 4C        .byte con_40 + $0C   ; 
- D 0 - - - 0x0052BA 01:12AA: 99        .byte $99   ; 

- D 0 - - - 0x0052BB 01:12AB: 20 9D     .dbyt $209D
- D 0 - - - 0x0052BD 01:12AD: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0052BE 01:12AE: 9A        .byte $9A   ; 

- D 0 - - - 0x0052BF 01:12AF: 20 BD     .dbyt $20BD
- D 0 - - - 0x0052C1 01:12B1: D6        .byte con_C0 + $16   ; 
- D 0 - - - 0x0052C2 01:12B2: 9B        .byte $9B   ; 

- D 0 - - - 0x0052C3 01:12B3: 23 7D     .dbyt $237D
- D 0 - - - 0x0052C5 01:12B5: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0052C6 01:12B6: 9C        .byte $9C   ; 

- D 0 - - - 0x0052C7 01:12B7: 20 D3     .dbyt $20D3
- D 0 - - - 0x0052C9 01:12B9: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x0052CA 01:12BA: 02        .byte $02, $38, $8D, $37, $33, $A3, $3D, $8E   ; 

- D 0 - - - 0x0052D2 01:12C2: 22 D4     .dbyt $22D4
- D 0 - - - 0x0052D4 01:12C4: 05        .byte con_00 + $05   ; 
- D 0 - - - 0x0052D5 01:12C5: 3A        .byte $3A, $5B, $3A, $33, $37   ; 

- D 0 - - - 0x0052DA 01:12CA: 22 F2     .dbyt $22F2
- D 0 - - - 0x0052DC 01:12CC: 83        .byte con_80 + $03   ; 
- D 0 - - - 0x0052DD 01:12CD: 84        .byte $84, $85, $86   ; 

- D 0 - - - 0x0052E0 01:12D0: 22 F3     .dbyt $22F3
- D 0 - - - 0x0052E2 01:12D2: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x0052E3 01:12D3: 87        .byte $87   ; 

- D 0 - - - 0x0052E4 01:12D4: 23 33     .dbyt $2333
- D 0 - - - 0x0052E6 01:12D6: 48        .byte con_40 + $08   ; 
- D 0 - - - 0x0052E7 01:12D7: 88        .byte $88   ; 

- D 0 - - - 0x0052E8 01:12D8: 22 FB     .dbyt $22FB
- D 0 - - - 0x0052EA 01:12DA: 83        .byte con_80 + $03   ; 
- D 0 - - - 0x0052EB 01:12DB: 89        .byte $89, $8A, $8B   ; 

- D 0 - - - 0x0052EE 01:12DE: 23 19     .dbyt $2319
- D 0 - - - 0x0052F0 01:12E0: 01        .byte con_00 + $01   ; 
- D 0 - - - 0x0052F1 01:12E1: 00        .byte $00   ; 

- D 0 - - - 0x0052F2 01:12E2: 00        .byte $00   ; end token



; !!! bzk this must be located starting at specific address, which is relative to 1204
; pointer here is at 0x000017 (12E3 - 1204 + 400 = ram_04DF)
- D 0 - - - 0x0052F3 01:12E3: 3F 00     .dbyt $3F00
- D 0 - - - 0x0052F5 01:12E5: 08        .byte con_00 + $08   ; 
- D 0 - - - 0x0052F6 01:12E6: 0F        .byte $0F, $30, $21, $11   ; 
- D 0 - - - 0x0052FA 01:12EA: 0F        .byte $0F, $30, $25, $15   ; 

- D 0 - - - 0x0052FE 01:12EE: 3F 10     .dbyt $3F10
- D 0 - - - 0x005300 01:12F0: 0C        .byte con_00 + $0C   ; 
- D 0 - - - 0x005301 01:12F1: 0F        .byte $0F, $30, $11, $26   ; 
- D 0 - - - 0x005305 01:12F5: 0F        .byte $0F, $30, $15, $26   ; 
- D 0 - - - 0x005309 01:12F9: 0F        .byte $0F, $30, $21, $12   ; 

- D 0 - - - 0x00530D 01:12FD: 00        .byte $00   ; end token


; bzk garbage, however it is currently needed as a placeholder before CHR_ROM_2
- D 0 - - - 0x00530E 01:12FE: FF        .byte $FF   ; 
- D 0 - - - 0x00530F 01:12FF: FF        .byte $FF   ; 



.out .sprintf("Free bytes in bank ppu bg: 0x%04X [%d]", ($1300 - *), ($1300 - *))






.segment "PPU_2"
.incbin "CHR_ROM_2.chr"



