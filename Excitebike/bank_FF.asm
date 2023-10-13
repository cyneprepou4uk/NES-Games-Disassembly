.segment "BANK_FF"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F

; остановился на 0x000144, разобрать таблицы и добавить пробелы между строками

tbl_C000:
- D 2 - - - 0x000010 00:C000: 46 C3     .word ofs_000_C346_00
- D 2 - - - 0x000012 00:C002: 95 C3     .word ofs_000_C395_01
- D 2 - - - 0x000014 00:C004: 9A C9     .word ofs_000_C99A_02
- D 2 - - - 0x000016 00:C006: 2C CB     .word ofs_000_CB2C_03
- D 2 - - - 0x000018 00:C008: 65 C4     .word ofs_000_C465_04
- D 2 - - - 0x00001A 00:C00A: 9A C9     .word ofs_000_C99A_05
- D 2 - - - 0x00001C 00:C00C: 2C CB     .word ofs_000_CB2C_06
- D 2 - - - 0x00001E 00:C00E: 65 C4     .word ofs_000_C465_07
- D 2 - - - 0x000020 00:C010: BD C3     .word ofs_000_C3BD_08
- D 2 - - - 0x000022 00:C012: 7C C9     .word ofs_000_C97C_09
- D 2 - - - 0x000024 00:C014: 9A C9     .word ofs_000_C99A_0A
- D 2 - - - 0x000026 00:C016: 2C CB     .word ofs_000_CB2C_0B
- D 2 - - - 0x000028 00:C018: 3D C4     .word ofs_000_C43D_0C
- D 2 - - - 0x00002A 00:C01A: 1C C4     .word ofs_000_C41C_0D



tbl_C01C:
- D 2 - - - 0x00002C 00:C01C: 00        .byte $00   ; 00 
- D 2 - - - 0x00002D 00:C01D: 01        .byte $01   ; 01 
- D 2 - - - 0x00002E 00:C01E: 02        .byte $02   ; 02 
- D 2 - - - 0x00002F 00:C01F: 03        .byte $03   ; 03 
- D 2 - - - 0x000030 00:C020: 04        .byte $04   ; 04 
- D 2 - - - 0x000031 00:C021: 02        .byte $02   ; 05 
- D 2 - - - 0x000032 00:C022: 03        .byte $03   ; 06 
- D 2 - - - 0x000033 00:C023: 04        .byte $04   ; 07 
- D 2 - - - 0x000034 00:C024: 06        .byte $06   ; 08 
- D 2 - - - 0x000035 00:C025: 05        .byte $05   ; 09 
- D 2 - - - 0x000036 00:C026: 02        .byte $02   ; 0A 
- D 2 - - - 0x000037 00:C027: 03        .byte $03   ; 0B 
- D 2 - - - 0x000038 00:C028: 07        .byte $07   ; 0C 
- D 2 - - - 0x000039 00:C029: 08        .byte $08   ; 0D 



tbl_C02A_lo:
- D 2 - - - 0x00003A 00:C02A: 3C        .byte < off_C03C_00   ; 
- D 2 - - - 0x00003B 00:C02B: 40        .byte < off_C040_01   ; 
- D 2 - - - 0x00003C 00:C02C: 46        .byte < off_C046_02   ; 
- D 2 - - - 0x00003D 00:C02D: 52        .byte < off_C052_03   ; 
- D 2 - - - 0x00003E 00:C02E: 5C        .byte < off_C05C_04   ; 
- D 2 - - - 0x00003F 00:C02F: 64        .byte < off_C064_05   ; 
- D 2 - - - 0x000040 00:C030: 70        .byte < off_C070_06   ; 
- D 2 - - - 0x000041 00:C031: 7A        .byte < off_C07A_07   ; 
- D 2 - - - 0x000042 00:C032: 76        .byte < off_C076_08   ; 



tbl_C033_hi:
- D 2 - - - 0x000043 00:C033: C0        .byte > off_C03C_00   ; 
- D 2 - - - 0x000044 00:C034: C0        .byte > off_C040_01   ; 
- D 2 - - - 0x000045 00:C035: C0        .byte > off_C046_02   ; 
- D 2 - - - 0x000046 00:C036: C0        .byte > off_C052_03   ; 
- D 2 - - - 0x000047 00:C037: C0        .byte > off_C05C_04   ; 
- D 2 - - - 0x000048 00:C038: C0        .byte > off_C064_05   ; 
- D 2 - - - 0x000049 00:C039: C0        .byte > off_C070_06   ; 
- D 2 - - - 0x00004A 00:C03A: C0        .byte > off_C07A_07   ; 
- D 2 - - - 0x00004B 00:C03B: C0        .byte > off_C076_08   ; 



off_C03C_00:
- D 2 - I - 0x00004C 00:C03C: BD C2     .word ofs_001_C2BD_00_01
- D 2 - I - 0x00004E 00:C03E: 14 C5     .word ofs_001_C514_00_02



off_C040_01:
- D 2 - I - 0x000050 00:C040: 5E C5     .word ofs_001_C55E_01_01
- D 2 - I - 0x000052 00:C042: F3 C3     .word ofs_001_C3F3_01_02
- D 2 - I - 0x000054 00:C044: 14 C5     .word ofs_001_C514_01_03



off_C046_02:
- D 2 - I - 0x000056 00:C046: 51 C5     .word ofs_001_C551_02_01
- D 2 - I - 0x000058 00:C048: 69 C8     .word ofs_001_C869_02_02
- D 2 - I - 0x00005A 00:C04A: 20 C8     .word ofs_001_C820_02_03
- D 2 - I - 0x00005C 00:C04C: A3 C5     .word ofs_001_C5A3_02_04
- D 2 - I - 0x00005E 00:C04E: 66 C5     .word ofs_001_C566_02_05
- D 2 - I - 0x000060 00:C050: 75 C8     .word ofs_001_C875_02_06



off_C052_03:
- D 2 - I - 0x000062 00:C052: 5E C5     .word ofs_001_C55E_03_01
- D 2 - I - 0x000064 00:C054: 6A C5     .word ofs_001_C56A_03_02
- D 2 - I - 0x000066 00:C056: 55 C4     .word ofs_001_C455_03_03
- D 2 - I - 0x000068 00:C058: A7 C5     .word ofs_001_C5A7_03_04
- D 2 - I - 0x00006A 00:C05A: 85 C4     .word ofs_001_C485_03_05



off_C05C_04:
- D 2 - I - 0x00006C 00:C05C: 5E C5     .word ofs_001_C55E_04_01
- D 2 - I - 0x00006E 00:C05E: 71 C5     .word ofs_001_C571_04_02
- D 2 - I - 0x000070 00:C060: AC C5     .word ofs_001_C5AC_04_03
- D 2 - I - 0x000072 00:C062: 14 C5     .word ofs_001_C514_04_04



off_C064_05:
- D 2 - I - 0x000074 00:C064: 51 C5     .word ofs_001_C551_05_01
- D 2 - I - 0x000076 00:C066: 69 C8     .word ofs_001_C869_05_02
- D 2 - I - 0x000078 00:C068: 20 C8     .word ofs_001_C820_05_03
- D 2 - I - 0x00007A 00:C06A: A3 C5     .word ofs_001_C5A3_05_04
- D 2 - I - 0x00007C 00:C06C: 62 C5     .word ofs_001_C562_05_05
- D 2 - I - 0x00007E 00:C06E: C2 C5     .word ofs_001_C5C2_05_06



off_C070_06:
- D 2 - I - 0x000080 00:C070: 5E C5     .word ofs_001_C55E_06_01
- D 2 - I - 0x000082 00:C072: 75 C5     .word ofs_001_C575_06_02
- D 2 - I - 0x000084 00:C074: 14 C5     .word ofs_001_C514_06_03



off_C076_08:
- D 2 - I - 0x000086 00:C076: 82 C5     .word ofs_001_C582_08_01
- D 2 - I - 0x000088 00:C078: 18 C5     .word ofs_001_C518_08_02



off_C07A_07:
- D 2 - I - 0x00008A 00:C07A: 69 C8     .word ofs_001_C869_07_01
- D 2 - I - 0x00008C 00:C07C: 86 C5     .word ofs_001_C586_07_02
- D 2 - I - 0x00008E 00:C07E: 18 C5     .word ofs_001_C518_07_03



tbl_C080:
- D 2 - - - 0x000090 00:C080: 80        .byte $80   ; 00 
- D 2 - - - 0x000091 00:C081: 90        .byte $90   ; 01 
- D 2 - - - 0x000092 00:C082: A0        .byte $A0   ; 02 



tbl_C083:
- D 2 - - - 0x000093 00:C083: 48        .byte $48   ; 00 
- D 2 - - - 0x000094 00:C084: 60        .byte $60   ; 01 
- D 2 - - - 0x000095 00:C085: 78        .byte $78   ; 02 
- D 2 - - - 0x000096 00:C086: 90        .byte $90   ; 03 
- D 2 - - - 0x000097 00:C087: A8        .byte $A8   ; 04 



tbl_C088:
- D 2 - - - 0x000098 00:C088: 50        .byte $50   ; 00 
- D 2 - - - 0x000099 00:C089: 48        .byte $48   ; 01 
- D 2 - - - 0x00009A 00:C08A: 4C        .byte $4C   ; 02 



tbl_C08B:
- D 2 - - - 0x00009B 00:C08B: 30        .byte $30   ; 00 
- D 2 - - - 0x00009C 00:C08C: 48        .byte $48   ; 01 
- D 2 - - - 0x00009D 00:C08D: 78        .byte $78   ; 02 
- D 2 - - - 0x00009E 00:C08E: 90        .byte $90   ; 03 
- D 2 - - - 0x00009F 00:C08F: A8        .byte $A8   ; 04 
- D 2 - - - 0x0000A0 00:C090: C0        .byte $C0   ; 05 



tbl_C091:
- D 2 - - - 0x0000A1 00:C091: 01        .byte $01, $10, $00   ; 00 
- D 2 - - - 0x0000A4 00:C094: 01        .byte $01, $10, $00   ; 01 
- D 2 - - - 0x0000A7 00:C097: 01        .byte $01, $10, $00   ; 02 
- D 2 - - - 0x0000AA 00:C09A: 01        .byte $01, $0C, $00   ; 03 
- D 2 - - - 0x0000AD 00:C09D: 01        .byte $01, $06, $00   ; 04 
- D 2 - - - 0x0000B0 00:C0A0: 00        .byte $00, $01, $18   ; 05 
- D 2 - - - 0x0000B3 00:C0A3: 00        .byte $00, $01, $16   ; 06 
- D 2 - - - 0x0000B6 00:C0A6: 00        .byte $00, $01, $0A   ; 07 
- D 2 - - - 0x0000B9 00:C0A9: 00        .byte $00, $01, $14   ; 08 
- D 2 - - - 0x0000BC 00:C0AC: 00        .byte $00, $01, $06   ; 09 
- D 2 - - - 0x0000BF 00:C0AF: 00        .byte $00   ; 0A
; bzk bug? sharing 2 bytes with 0x0000C0



tbl_C0B0:
- D 2 - - - 0x0000C0 00:C0B0: 09        .byte $09   ; 00 
- D 2 - - - 0x0000C1 00:C0B1: 0B        .byte $0B   ; 01 
- D 2 - - - 0x0000C2 00:C0B2: 0D        .byte $0D   ; 02 
- D 2 - - - 0x0000C3 00:C0B3: 0F        .byte $0F   ; 03 



tbl_C0B4:
- D 2 - - - 0x0000C4 00:C0B4: 0E        .byte $0E   ; 00 
- D 2 - - - 0x0000C5 00:C0B5: 1A        .byte $1A   ; 01 
- D 2 - - - 0x0000C6 00:C0B6: 26        .byte $26   ; 02 
- D 2 - - - 0x0000C7 00:C0B7: 32        .byte $32   ; 03 



tbl_C0B8:
- D 2 - - - 0x0000C8 00:C0B8: 38        .byte $38   ; 00 
- D 2 - - - 0x0000C9 00:C0B9: 48        .byte $48   ; 01 
- D 2 - - - 0x0000CA 00:C0BA: 58        .byte $58   ; 02 
- D 2 - - - 0x0000CB 00:C0BB: 68        .byte $68   ; 03 



tbl_C0BC:
- D 2 - - - 0x0000CC 00:C0BC: 18        .byte $18   ; 00 
- D 2 - - - 0x0000CD 00:C0BD: 3F        .byte $3F   ; 01 
- D 2 - - - 0x0000CE 00:C0BE: 28        .byte $28   ; 02 
- D 2 - - - 0x0000CF 00:C0BF: 20        .byte $20   ; 03 
- - - - - - 0x0000D0 00:C0C0: 28        .byte $28   ; 04 



tbl_C0C1:
- D 2 - - - 0x0000D1 00:C0C1: 38        .byte $38   ; 00 
- D 2 - - - 0x0000D2 00:C0C2: 0C        .byte $0C   ; 01 
- D 2 - - - 0x0000D3 00:C0C3: 00        .byte $00   ; 02 
- D 2 - - - 0x0000D4 00:C0C4: 3C        .byte $3C   ; 03 
- D 2 - - - 0x0000D5 00:C0C5: 1C        .byte $1C   ; 04 
- D 2 - - - 0x0000D6 00:C0C6: C0        .byte $C0   ; 05 
- D 2 - - - 0x0000D7 00:C0C7: 7F        .byte $7F   ; 06 



tbl_C0C8:
- D 2 - - - 0x0000D8 00:C0C8: 06        .byte $06   ; 00 
- D 2 - - - 0x0000D9 00:C0C9: 02        .byte $02   ; 02 



tbl_C0CA:
- D 2 - - - 0x0000DA 00:C0CA: 0A        .byte $0A   ; 00 
- D 2 - - - 0x0000DB 00:C0CB: 0B        .byte $0B   ; 02 



tbl_C0CC:
- D 2 - - - 0x0000DC 00:C0CC: 01        .byte $01   ; 00 
- D 2 - - - 0x0000DD 00:C0CD: B0        .byte $B0   ; 02 



tbl_C0CE:
- D 2 - - - 0x0000DE 00:C0CE: 20        .byte $20   ; 00 
- D 2 - - - 0x0000DF 00:C0CF: 40        .byte $40   ; 01 
- D 2 - - - 0x0000E0 00:C0D0: 7F        .byte $7F   ; 02 



tbl_C0D1:
- D 2 - - - 0x0000E1 00:C0D1: 03        .byte $03   ; 00 
- D 2 - - - 0x0000E2 00:C0D2: 03        .byte $03   ; 01 
- D 2 - - - 0x0000E3 00:C0D3: 01        .byte $01   ; 02 



tbl_C0D4:
- D 2 - - - 0x0000E4 00:C0D4: 06        .byte $06   ; 00 
- D 2 - - - 0x0000E5 00:C0D5: 04        .byte $04   ; 02 



tbl_C0D6:
; 00 
- D 2 - - - 0x0000E6 00:C0D6: 40        .byte $40   ; 
- D 2 - - - 0x0000E7 00:C0D7: 58        .byte $58   ; 
; 02 
- D 2 - - - 0x0000E8 00:C0D8: 48        .byte $48   ; 
- D 2 - - - 0x0000E9 00:C0D9: 48        .byte $48   ; 



tbl_C0DA:
- D 2 - - - 0x0000EA 00:C0DA: 78        .byte $78   ; 00 
- D 2 - - - 0x0000EB 00:C0DB: 70        .byte $70   ; 01 
- D 2 - - - 0x0000EC 00:C0DC: 80        .byte $80   ; 02 
- D 2 - - - 0x0000ED 00:C0DD: B0        .byte $B0   ; 03 



tbl_C0DE:
- D 2 - - - 0x0000EE 00:C0DE: 37        .byte $37   ; 00 
- D 2 - - - 0x0000EF 00:C0DF: 3F        .byte $3F   ; 01 
- D 2 - - - 0x0000F0 00:C0E0: 3F        .byte $3F   ; 02 
- D 2 - - - 0x0000F1 00:C0E1: 47        .byte $47   ; 03 



tbl_C0E2:
- D 2 - - - 0x0000F2 00:C0E2: B7        .byte $B7   ; 00 
- D 2 - - - 0x0000F3 00:C0E3: B9        .byte $B9   ; 01 
- D 2 - - - 0x0000F4 00:C0E4: B9        .byte $B9   ; 02 



tbl_C0E5:
- D 2 - - - 0x0000F5 00:C0E5: 01        .byte $01   ; 00 
- D 2 - - - 0x0000F6 00:C0E6: 01        .byte $01   ; 01 
- D 2 - - - 0x0000F7 00:C0E7: 41        .byte $41   ; 02 



tbl_C0E8:
- D 2 - - - 0x0000F8 00:C0E8: 04        .byte $04   ; 00 
- D 2 - - - 0x0000F9 00:C0E9: 0C        .byte $0C   ; 01 
- D 2 - - - 0x0000FA 00:C0EA: 14        .byte $14   ; 02 
- D 2 - - - 0x0000FB 00:C0EB: 1C        .byte $1C   ; 03 



tbl_C0EC:
- D 2 - - - 0x0000FC 00:C0EC: 21 F2     .dbyt $21F2 ; 00
- D 2 - - - 0x0000FE 00:C0EE: 23 43     .dbyt $2343 ; 02
- D 2 - - - 0x000100 00:C0F0: 22 32     .dbyt $2232 ; 04
- D 2 - - - 0x000102 00:C0F2: 22 8C     .dbyt $228C ; 06
- D 2 - - - 0x000104 00:C0F4: 24 CF     .dbyt $24CF ; 08



tbl_C0F6_lo:
- D 2 - - - 0x000106 00:C0F6: 01        .byte < ram_0301   ;  00
- D 2 - - - 0x000107 00:C0F7: 70        .byte < _off_000_D470_01   ; 
- D 2 - - - 0x000108 00:C0F8: 4B        .byte < _off_000_D64B_02   ; 
- D 2 - - - 0x000109 00:C0F9: D4        .byte < _off_000_D6D4_03   ; 
- D 2 - - - 0x00010A 00:C0FA: 17        .byte < _off_000_D717_04   ; 
- D 2 - - - 0x00010B 00:C0FB: 4A        .byte < _off_000_D84A_05   ; 
- D 2 - - - 0x00010C 00:C0FC: 3A        .byte < _off_000_D63A_06   ; 
- D 2 - - - 0x00010D 00:C0FD: 9E        .byte < _off_000_D59E_07   ; 
- D 2 - - - 0x00010E 00:C0FE: B4        .byte < _off_000_D5B4_08   ; 
- D 2 - - - 0x00010F 00:C0FF: 96        .byte < _off_000_D796_09   ; 
- D 2 - - - 0x000110 00:C100: C8        .byte < _off_000_D5C8_0A   ; 
- D 2 - - - 0x000111 00:C101: DE        .byte < _off_000_D5DE_0B   ; 
- D 2 - - - 0x000112 00:C102: EF        .byte < _off_000_D5EF_0C   ; 
- - - - - - 0x000113 00:C103: 05        .byte < _off_000_D605_0D   ; 
- D 2 - - - 0x000114 00:C104: 24        .byte < _off_000_D524_0E   ; 
- D 2 - - - 0x000115 00:C105: FA        .byte < _off_000_D7FA_0F   ; 
- D 2 - - - 0x000116 00:C106: 23        .byte < _off_000_D623_10   ; 
- D 2 - - - 0x000117 00:C107: 14        .byte < _off_000_D614_11   ; 
- D 2 - - - 0x000118 00:C108: D6        .byte < _off_000_D3D6_12   ; 
- D 2 - - - 0x000119 00:C109: E9        .byte < _off_000_D3E9_13   ; 
- D 2 - - - 0x00011A 00:C10A: FC        .byte < _off_000_D3FC_14   ; 
- D 2 - - - 0x00011B 00:C10B: 0F        .byte < _off_000_D40F_15   ; 
- D 2 - - - 0x00011C 00:C10C: 22        .byte < _off_000_D422_16   ; 
- D 2 - - - 0x00011D 00:C10D: 35        .byte < _off_000_D435_17   ; 
- D 2 - - - 0x00011E 00:C10E: 50        .byte < _off_000_D450_18   ; 
- - - - - - 0x00011F 00:C10F: 31        .byte < _off_000_D631_19   ; 
- - - - - - 0x000120 00:C110: A1        .byte < ram_00A1   ;  1A



tbl_C111_hi:
- D 2 - - - 0x000121 00:C111: 03        .byte > ram_0301   ;  00
- D 2 - - - 0x000122 00:C112: D4        .byte > _off_000_D470_01   ; 
- D 2 - - - 0x000123 00:C113: D6        .byte > _off_000_D64B_02   ; 
- D 2 - - - 0x000124 00:C114: D6        .byte > _off_000_D6D4_03   ; 
- D 2 - - - 0x000125 00:C115: D7        .byte > _off_000_D717_04   ; 
- D 2 - - - 0x000126 00:C116: D8        .byte > _off_000_D84A_05   ; 
- D 2 - - - 0x000127 00:C117: D6        .byte > _off_000_D63A_06   ; 
- D 2 - - - 0x000128 00:C118: D5        .byte > _off_000_D59E_07   ; 
- D 2 - - - 0x000129 00:C119: D5        .byte > _off_000_D5B4_08   ; 
- D 2 - - - 0x00012A 00:C11A: D7        .byte > _off_000_D796_09   ; 
- D 2 - - - 0x00012B 00:C11B: D5        .byte > _off_000_D5C8_0A   ; 
- D 2 - - - 0x00012C 00:C11C: D5        .byte > _off_000_D5DE_0B   ; 
- D 2 - - - 0x00012D 00:C11D: D5        .byte > _off_000_D5EF_0C   ; 
- - - - - - 0x00012E 00:C11E: D6        .byte > _off_000_D605_0D   ; 
- D 2 - - - 0x00012F 00:C11F: D5        .byte > _off_000_D524_0E   ; 
- D 2 - - - 0x000130 00:C120: D7        .byte > _off_000_D7FA_0F   ; 
- D 2 - - - 0x000131 00:C121: D6        .byte > _off_000_D623_10   ; 
- D 2 - - - 0x000132 00:C122: D6        .byte > _off_000_D614_11   ; 
- D 2 - - - 0x000133 00:C123: D3        .byte > _off_000_D3D6_12   ; 
- D 2 - - - 0x000134 00:C124: D3        .byte > _off_000_D3E9_13   ; 
- D 2 - - - 0x000135 00:C125: D3        .byte > _off_000_D3FC_14   ; 
- D 2 - - - 0x000136 00:C126: D4        .byte > _off_000_D40F_15   ; 
- D 2 - - - 0x000137 00:C127: D4        .byte > _off_000_D422_16   ; 
- D 2 - - - 0x000138 00:C128: D4        .byte > _off_000_D435_17   ; 
- D 2 - - - 0x000139 00:C129: D4        .byte > _off_000_D450_18   ; 
- - - - - - 0x00013A 00:C12A: D6        .byte > _off_000_D631_19   ; 
- - - - - - 0x00013B 00:C12B: 00        .byte > ram_00A1   ;  1A



tbl_C12C_lo:
- D 2 - - - 0x00013C 00:C12C: 3B        .byte < ofs_CB3B_00   ; 
- D 2 - - - 0x00013D 00:C12D: 77        .byte < ofs_CB77_01   ; 
- D 2 - - - 0x00013E 00:C12E: A4        .byte < ofs_CBA4_02   ; 
- D 2 - - - 0x00013F 00:C12F: 6B        .byte < ofs_CC6B_03   ; 



tbl_C130_hi:
- D 2 - - - 0x000140 00:C130: CB        .byte > ofs_CB3B_00   ; 
- D 2 - - - 0x000141 00:C131: CB        .byte > ofs_CB77_01   ; 
- D 2 - - - 0x000142 00:C132: CB        .byte > ofs_CBA4_02   ; 
- D 2 - - - 0x000143 00:C133: CC        .byte > ofs_CC6B_03   ; 



tbl_C134:
- D 2 - - - 0x000144 00:C134: 00        .byte $00   ; 
- D 2 - - - 0x000145 00:C135: FC        .byte $FC   ; 
- D 2 - - - 0x000146 00:C136: FC        .byte $FC   ; 
- D 2 - - - 0x000147 00:C137: FC        .byte $FC   ; 
- D 2 - - - 0x000148 00:C138: 79        .byte $79   ; 
- D 2 - - - 0x000149 00:C139: 04        .byte $04   ; 
- D 2 - - - 0x00014A 00:C13A: 72        .byte $72   ; 
- D 2 - - - 0x00014B 00:C13B: 22        .byte $22   ; 

tbl_C13C:
- D 2 - - - 0x00014C 00:C13C: 04        .byte $04   ; 
- D 2 - - - 0x00014D 00:C13D: 21        .byte $21   ; 
- D 2 - - - 0x00014E 00:C13E: 6F        .byte $6F   ; 
- D 2 - - - 0x00014F 00:C13F: 01        .byte $01   ; 
- D 2 - - - 0x000150 00:C140: 00        .byte $00   ; 
- D 2 - - - 0x000151 00:C141: 00        .byte $00   ; 
- - - - - - 0x000152 00:C142: 60        .byte $60   ; 
- - - - - - 0x000153 00:C143: 9F        .byte $9F   ; 
- - - - - - 0x000154 00:C144: 00        .byte $00   ; 
- - - - - - 0x000155 00:C145: 17        .byte $17   ; 
- - - - - - 0x000156 00:C146: 04        .byte $04   ; 

tbl_C147:
- D 2 - - - 0x000157 00:C147: DE        .byte $DE   ; 
- D 2 - - - 0x000158 00:C148: DC        .byte $DC   ; 
- D 2 - - - 0x000159 00:C149: E1        .byte $E1   ; 
- D 2 - - - 0x00015A 00:C14A: F8        .byte $F8   ; 
- D 2 - - - 0x00015B 00:C14B: FC        .byte $FC   ; 
- D 2 - - - 0x00015C 00:C14C: EF        .byte $EF   ; 
- D 2 - - - 0x00015D 00:C14D: E1        .byte $E1   ; 
- D 2 - - - 0x00015E 00:C14E: EE        .byte $EE   ; 
- D 2 - - - 0x00015F 00:C14F: C9        .byte $C9   ; 

tbl_C150:
- D 2 - - - 0x000160 00:C150: 44        .byte $44   ; 
- D 2 - - - 0x000161 00:C151: C9        .byte $C9   ; 
- D 2 - - - 0x000162 00:C152: 00        .byte $00   ; 
- D 2 - - - 0x000163 00:C153: 84        .byte $84   ; 
- D 2 - - - 0x000164 00:C154: 44        .byte $44   ; 
- D 2 - - - 0x000165 00:C155: F9        .byte $F9   ; 
- D 2 - - - 0x000166 00:C156: 00        .byte $00   ; 
- D 2 - - - 0x000167 00:C157: 74        .byte $74   ; 

tbl_C158:
- D 2 - - - 0x000168 00:C158: 07        .byte $07   ; 
- D 2 - - - 0x000169 00:C159: 23        .byte $23   ; 
- D 2 - - - 0x00016A 00:C15A: 78        .byte $78   ; 
- D 2 - - - 0x00016B 00:C15B: 04        .byte $04   ; 
- D 2 - - - 0x00016C 00:C15C: 1D        .byte $1D   ; 
- D 2 - - - 0x00016D 00:C15D: F8        .byte $F8   ; 
- D 2 - - - 0x00016E 00:C15E: FE        .byte $FE   ; 
- D 2 - - - 0x00016F 00:C15F: FE        .byte $FE   ; 

tbl_C160:
- D 2 - - - 0x000170 00:C160: 29        .byte $29   ; 
- D 2 - - - 0x000171 00:C161: 01        .byte $01   ; 
- D 2 - - - 0x000172 00:C162: 02        .byte $02   ; 
- D 2 - - - 0x000173 00:C163: 00        .byte $00   ; 
- D 2 - - - 0x000174 00:C164: 02        .byte $02   ; 
- D 2 - - - 0x000175 00:C165: 29        .byte $29   ; 

tbl_C166:
- D 2 - - - 0x000176 00:C166: 30        .byte $30   ; 
- D 2 - - - 0x000177 00:C167: 35        .byte $35   ; 
- D 2 - - - 0x000178 00:C168: 25        .byte $25   ; 
- D 2 - - - 0x000179 00:C169: 35        .byte $35   ; 

tbl_C16A:
- D 2 - - - 0x00017A 00:C16A: 22        .byte $22   ; 
- D 2 - - - 0x00017B 00:C16B: 26        .byte $26   ; 
- D 2 - - - 0x00017C 00:C16C: 1C        .byte $1C   ; 
- D 2 - - - 0x00017D 00:C16D: 22        .byte $22   ; 
- D 2 - - - 0x00017E 00:C16E: 22        .byte $22   ; 
- D 2 - - - 0x00017F 00:C16F: 22        .byte $22   ; 

tbl_C170:
- D 2 - - - 0x000180 00:C170: 26        .byte $26   ; 
- D 2 - - - 0x000181 00:C171: 06        .byte $06   ; 
- D 2 - - - 0x000182 00:C172: 36        .byte $36   ; 
- D 2 - - - 0x000183 00:C173: 26        .byte $26   ; 
- - - - - - 0x000184 00:C174: 01        .byte $01   ; 
- - - - - - 0x000185 00:C175: 40        .byte $40   ; 
- - - - - - 0x000186 00:C176: 7F        .byte $7F   ; 
- - - - - - 0x000187 00:C177: 09        .byte $09   ; 

tbl_C178:
- D 2 - - - 0x000188 00:C178: C7        .byte $C7   ; 
- D 2 - - - 0x000189 00:C179: DB        .byte $DB   ; 
- D 2 - - - 0x00018A 00:C17A: 00        .byte $00   ; 
- D 2 - - - 0x00018B 00:C17B: E0        .byte $E0   ; 
- D 2 - - - 0x00018C 00:C17C: C7        .byte $C7   ; 
- D 2 - - - 0x00018D 00:C17D: DD        .byte $DD   ; 
- D 2 - - - 0x00018E 00:C17E: 00        .byte $00   ; 
- D 2 - - - 0x00018F 00:C17F: E8        .byte $E8   ; 

tbl_C180:
- D 2 - - - 0x000190 00:C180: 17        .byte $17   ; 
- D 2 - - - 0x000191 00:C181: 01        .byte $01   ; 
- D 2 - - - 0x000192 00:C182: 00        .byte $00   ; 
- D 2 - - - 0x000193 00:C183: 01        .byte $01   ; 



vec_C184_RESET:
C - - - - - 0x000194 00:C184: 78        SEI
C - - - - - 0x000195 00:C185: D8        CLD
C - - - - - 0x000196 00:C186: A9 00     LDA #$00
C - - - - - 0x000198 00:C188: 8D 00 20  STA $2000
C - - - - - 0x00019B 00:C18B: A2 FF     LDX #$FF
C - - - - - 0x00019D 00:C18D: 9A        TXS
bra_C18E_infinite_loop:
C - - - - - 0x00019E 00:C18E: AD 02 20  LDA $2002
C - - - - - 0x0001A1 00:C191: 29 80     AND #$80
C - - - - - 0x0001A3 00:C193: F0 F9     BEQ bra_C18E_infinite_loop
bra_C195_infinite_loop:
C - - - - - 0x0001A5 00:C195: AD 02 20  LDA $2002
C - - - - - 0x0001A8 00:C198: 29 80     AND #$80
C - - - - - 0x0001AA 00:C19A: F0 F9     BEQ bra_C195_infinite_loop
C - - - - - 0x0001AC 00:C19C: A0 07     LDY #$07
C - - - - - 0x0001AE 00:C19E: AD CE 05  LDA ram_reset_check_1
C - - - - - 0x0001B1 00:C1A1: C9 A5     CMP #$A5
C - - - - - 0x0001B3 00:C1A3: D0 09     BNE bra_C1AE
C - - - - - 0x0001B5 00:C1A5: AD CF 05  LDA ram_reset_check_2
C - - - - - 0x0001B8 00:C1A8: C9 5A     CMP #$5A
C - - - - - 0x0001BA 00:C1AA: D0 02     BNE bra_C1AE
C - - - - - 0x0001BC 00:C1AC: A0 04     LDY #$04
bra_C1AE:
C - - - - - 0x0001BE 00:C1AE: 84 01     STY ram_0001
C - - - - - 0x0001C0 00:C1B0: A0 00     LDY #$00
C - - - - - 0x0001C2 00:C1B2: 84 00     STY ram_0000
C - - - - - 0x0001C4 00:C1B4: 98        TYA
bra_C1B5_loop:
C - - - - - 0x0001C5 00:C1B5: 91 00     STA (ram_0000),Y
C - - - - - 0x0001C7 00:C1B7: 88        DEY
C - - - - - 0x0001C8 00:C1B8: D0 FB     BNE bra_C1B5_loop
C - - - - - 0x0001CA 00:C1BA: C6 01     DEC ram_0001
C - - - - - 0x0001CC 00:C1BC: 10 F7     BPL bra_C1B5_loop
C - - - - - 0x0001CE 00:C1BE: AD CE 05  LDA ram_reset_check_1
C - - - - - 0x0001D1 00:C1C1: D0 03     BNE bra_C1C6
C - - - - - 0x0001D3 00:C1C3: 20 FD C1  JSR sub_C1FD
bra_C1C6:
C - - - - - 0x0001D6 00:C1C6: 8D 11 40  STA $4011
C - - - - - 0x0001D9 00:C1C9: A9 06     LDA #$06
C - - - - - 0x0001DB 00:C1CB: 8D 01 20  STA $2001
C - - - - - 0x0001DE 00:C1CE: 85 18     STA ram_0018
C - - - - - 0x0001E0 00:C1D0: 20 18 C3  JSR sub_C318
C - - - - - 0x0001E3 00:C1D3: A9 90     LDA #$90
C - - - - - 0x0001E5 00:C1D5: 20 33 C3  JSR sub_C333
loc_C1D8_loop:
bra_C1D8_loop:
C D 2 - - - 0x0001E8 00:C1D8: 20 26 D3  JSR sub_D326
C - - - - - 0x0001EB 00:C1DB: A5 48     LDA ram_0048
C - - - - - 0x0001ED 00:C1DD: 30 F9     BMI bra_C1D8_loop
C - - - - - 0x0001EF 00:C1DF: F0 F7     BEQ bra_C1D8_loop
C - - - - - 0x0001F1 00:C1E1: 20 2F C3  JSR sub_C32F
C - - - - - 0x0001F4 00:C1E4: A5 48     LDA ram_0048
C - - - - - 0x0001F6 00:C1E6: C9 01     CMP #$01
C - - - - - 0x0001F8 00:C1E8: D0 0D     BNE bra_C1F7
C - - - - - 0x0001FA 00:C1EA: 20 C8 C6  JSR sub_C6C8
loc_C1ED_loop:
C - - - - - 0x0001FD 00:C1ED: A9 FF     LDA #$FF
C - - - - - 0x0001FF 00:C1EF: 85 48     STA ram_0048
C - - - - - 0x000201 00:C1F1: 20 39 C3  JSR sub_C339
C - - - - - 0x000204 00:C1F4: 4C D8 C1  JMP loc_C1D8_loop
bra_C1F7:
C - - - - - 0x000207 00:C1F7: 20 39 C7  JSR sub_C739
- - - - - - 0x00020A 00:C1FA: 4C ED C1  JMP loc_C1ED_loop



sub_C1FD:
C - - - - - 0x00020D 00:C1FD: A2 1E     LDX #$1E
bra_C1FF_loop:
C - - - - - 0x00020F 00:C1FF: BD 91 C0  LDA tbl_C091,X
C - - - - - 0x000212 00:C202: 9D 80 05  STA ram_0580,X
C - - - - - 0x000215 00:C205: 9D A3 05  STA ram_05A3,X
C - - - - - 0x000218 00:C208: CA        DEX
C - - - - - 0x000219 00:C209: 10 F4     BPL bra_C1FF_loop
C - - - - - 0x00021B 00:C20B: A2 01     LDX #$01
C - - - - - 0x00021D 00:C20D: 8E E0 06  STX ram_06E0
bra_C210_loop:
C - - - - - 0x000220 00:C210: A9 40     LDA #$40
C - - - - - 0x000222 00:C212: 9D E0 06  STA ram_06E0,X
C - - - - - 0x000225 00:C215: E8        INX
C - - - - - 0x000226 00:C216: E0 CF     CPX #$CF
C - - - - - 0x000228 00:C218: 90 F6     BCC bra_C210_loop
C - - - - - 0x00022A 00:C21A: A9 09     LDA #$09
C - - - - - 0x00022C 00:C21C: 9D E0 06  STA ram_06E0,X
C - - - - - 0x00022F 00:C21F: A9 A5     LDA #$A5
C - - - - - 0x000231 00:C221: 8D CE 05  STA ram_reset_check_1
C - - - - - 0x000234 00:C224: A9 5A     LDA #$5A
C - - - - - 0x000236 00:C226: 8D CF 05  STA ram_reset_check_2
sub_C229:
C - - - - - 0x000239 00:C229: A2 00     LDX #$00
C - - - - - 0x00023B 00:C22B: A9 0A     LDA #$0A
bra_C22D_loop:
C - - - - - 0x00023D 00:C22D: 9D A0 05  STA ram_05A0,X
C - - - - - 0x000240 00:C230: 9D C3 05  STA ram_05C3,X
C - - - - - 0x000243 00:C233: A9 00     LDA #$00
C - - - - - 0x000245 00:C235: E8        INX
C - - - - - 0x000246 00:C236: E0 03     CPX #$03
C - - - - - 0x000248 00:C238: 90 F3     BCC bra_C22D_loop
C - - - - - 0x00024A 00:C23A: 60        RTS



vec_C23B_NMI:
C - - - - - 0x00024B 00:C23B: 20 2F C3  JSR sub_C32F
C - - - - - 0x00024E 00:C23E: A5 45     LDA ram_0045
C - - - - - 0x000250 00:C240: D0 09     BNE bra_C24B
C - - - - - 0x000252 00:C242: A5 11     LDA ram_0011
C - - - - - 0x000254 00:C244: 09 1A     ORA #$1A
C - - - - - 0x000256 00:C246: 8D 01 20  STA $2001
C - - - - - 0x000259 00:C249: 85 11     STA ram_0011
bra_C24B:
C - - - - - 0x00025B 00:C24B: A9 00     LDA #< ram_oam
C - - - - - 0x00025D 00:C24D: 8D 03 20  STA $2003
C - - - - - 0x000260 00:C250: A9 02     LDA #> ram_oam
C - - - - - 0x000262 00:C252: 8D 14 40  STA $4014
C - - - - - 0x000265 00:C255: 20 7F C2  JSR sub_C27F
C - - - - - 0x000268 00:C258: A5 47     LDA ram_0047
C - - - - - 0x00026A 00:C25A: F0 06     BEQ bra_C262
C - - - - - 0x00026C 00:C25C: 20 AB D0  JSR sub_D0AB
C - - - - - 0x00026F 00:C25F: 20 4E D1  JSR sub_D14E
bra_C262:
C - - - - - 0x000272 00:C262: AD B1 03  LDA ram_pause_flag
C - - - - - 0x000275 00:C265: 0D B2 03  ORA ram_pause_timer
C - - - - - 0x000278 00:C268: D0 05     BNE bra_C26F
C - - - - - 0x00027A 00:C26A: E6 3F     INC ram_003F
C - - - - - 0x00027C 00:C26C: 20 10 D3  JSR sub_D310
bra_C26F:
C - - - - - 0x00027F 00:C26F: 20 47 D3  JSR sub_D347_read_joy_regs
C - - - - - 0x000282 00:C272: 20 44 F8  JSR sub_F844
C - - - - - 0x000285 00:C275: 20 A9 C2  JSR sub_C2A9
C - - - - - 0x000288 00:C278: AD 02 20  LDA $2002
C - - - - - 0x00028B 00:C27B: 20 39 C3  JSR sub_C339
C - - - - - 0x00028E 00:C27E: 40        RTI



sub_C27F:
C - - - - - 0x00028F 00:C27F: A6 45     LDX ram_0045
C - - - - - 0x000291 00:C281: BD F6 C0  LDA tbl_C0F6_lo,X
C - - - - - 0x000294 00:C284: 85 00     STA ram_0000
C - - - - - 0x000296 00:C286: BD 11 C1  LDA tbl_C111_hi,X
loc_C289:
C D 2 - - - 0x000299 00:C289: 85 01     STA ram_0001
C - - - - - 0x00029B 00:C28B: 20 C1 D3  JSR sub_D3C1
C - - - - - 0x00029E 00:C28E: A9 00     LDA #$00
C - - - - - 0x0002A0 00:C290: 8D 00 03  STA ram_0300
C - - - - - 0x0002A3 00:C293: 8D 01 03  STA ram_0301
C - - - - - 0x0002A6 00:C296: 85 45     STA ram_0045
C - - - - - 0x0002A8 00:C298: A9 3F     LDA #> $3F00
C - - - - - 0x0002AA 00:C29A: 8D 06 20  STA $2006
C - - - - - 0x0002AD 00:C29D: A9 00     LDA #< $3F00
C - - - - - 0x0002AF 00:C29F: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x0002B2 00:C2A2: 8D 06 20  STA $2006
C - - - - - 0x0002B5 00:C2A5: 8D 06 20  STA $2006
C - - - - - 0x0002B8 00:C2A8: 60        RTS



sub_C2A9:
C - - - - - 0x0002B9 00:C2A9: A6 40     LDX ram_0040
C - - - - - 0x0002BB 00:C2AB: F0 40     BEQ bra_C2ED
C - - - - - 0x0002BD 00:C2AD: A5 41     LDA ram_0041
C - - - - - 0x0002BF 00:C2AF: 0A        ASL
C - - - - - 0x0002C0 00:C2B0: A8        TAY
C - - - - - 0x0002C1 00:C2B1: B9 00 C0  LDA tbl_C000,Y
C - - - - - 0x0002C4 00:C2B4: 85 00     STA ram_0000
C - - - - - 0x0002C6 00:C2B6: C8        INY
C - - - - - 0x0002C7 00:C2B7: B9 00 C0  LDA tbl_C000,Y
C - - - - - 0x0002CA 00:C2BA: 4C 36 CB  JMP loc_CB36



ofs_001_C2BD_00_01:
C - - J - - 0x0002CD 00:C2BD: A9 04     LDA #$04
C - - - - - 0x0002CF 00:C2BF: 8D F8 03  STA ram_03F8
C - - - - - 0x0002D2 00:C2C2: 4A        LSR ; con_C27F_02
C - - - - - 0x0002D3 00:C2C3: 85 45     STA ram_0045
C - - - - - 0x0002D5 00:C2C5: A0 00     LDY #$00
C - - - - - 0x0002D7 00:C2C7: 20 09 C4  JSR sub_C409
C - - - - - 0x0002DA 00:C2CA: AE F0 03  LDX ram_03F0
C - - - - - 0x0002DD 00:C2CD: D0 04     BNE bra_C2D3
C - - - - - 0x0002DF 00:C2CF: A9 01     LDA #$01
C - - - - - 0x0002E1 00:C2D1: 85 FB     STA ram_00FB
bra_C2D3:
C - - - - - 0x0002E3 00:C2D3: E0 02     CPX #$02
C - - - - - 0x0002E5 00:C2D5: 30 02     BMI bra_C2D9
- - - - - - 0x0002E7 00:C2D7: A2 FF     LDX #$FF
bra_C2D9:
C - - - - - 0x0002E9 00:C2D9: E8        INX
C - - - - - 0x0002EA 00:C2DA: 8E F0 03  STX ram_03F0
C - - - - - 0x0002ED 00:C2DD: A9 38     LDA #$38
C - - - - - 0x0002EF 00:C2DF: 85 31     STA ram_0031
C - - - - - 0x0002F1 00:C2E1: A9 0F     LDA #$0F
C - - - - - 0x0002F3 00:C2E3: 8D 15 40  STA $4015
C - - - - - 0x0002F6 00:C2E6: AD 80 C0  LDA tbl_C080
C - - - - - 0x0002F9 00:C2E9: 8D 00 02  STA ram_spr_Y
bra_C2EC_RTS:
C - - - - - 0x0002FC 00:C2EC: 60        RTS



bra_C2ED:
C - - - - - 0x0002FD 00:C2ED: 20 4F D2  JSR sub_D24F_disable_rendering
C - - - - - 0x000300 00:C2F0: A5 30     LDA ram_0030
C - - - - - 0x000302 00:C2F2: D0 F8     BNE bra_C2EC_RTS
C - - - - - 0x000304 00:C2F4: A6 41     LDX ram_0041
C - - - - - 0x000306 00:C2F6: BD 1C C0  LDA tbl_C01C,X
C - - - - - 0x000309 00:C2F9: AA        TAX
C - - - - - 0x00030A 00:C2FA: BD 2A C0  LDA tbl_C02A_lo,X
C - - - - - 0x00030D 00:C2FD: 85 02     STA ram_0002
C - - - - - 0x00030F 00:C2FF: BD 33 C0  LDA tbl_C033_hi,X
C - - - - - 0x000312 00:C302: 85 03     STA ram_0003
C - - - - - 0x000314 00:C304: A4 44     LDY ram_0044
C - - - - - 0x000316 00:C306: E6 44     INC ram_0044
C - - - - - 0x000318 00:C308: 88        DEY
C - - - - - 0x000319 00:C309: 30 0D     BMI bra_C318
C - - - - - 0x00031B 00:C30B: 98        TYA
C - - - - - 0x00031C 00:C30C: 0A        ASL
C - - - - - 0x00031D 00:C30D: A8        TAY
C - - - - - 0x00031E 00:C30E: B1 02     LDA (ram_0002),Y
C - - - - - 0x000320 00:C310: 85 00     STA ram_0000
C - - - - - 0x000322 00:C312: C8        INY
C - - - - - 0x000323 00:C313: B1 02     LDA (ram_0002),Y
C - - - - - 0x000325 00:C315: 4C 36 CB  JMP loc_CB36
bra_C318:
sub_C318:
C - - - - - 0x000328 00:C318: 20 55 D2  JSR sub_D255_hide_all_sprites
C - - - - - 0x00032B 00:C31B: 20 3B D2  JSR sub_D23B
C - - - - - 0x00032E 00:C31E: 20 A9 D1  JSR sub_D1A9
C - - - - - 0x000331 00:C321: 85 12     STA ram_scroll_X
C - - - - - 0x000333 00:C323: 85 50     STA ram_0050
C - - - - - 0x000335 00:C325: 85 13     STA ram_scroll_Y
C - - - - - 0x000337 00:C327: 85 51     STA ram_0051
C - - - - - 0x000339 00:C329: 85 FC     STA ram_00FC
C - - - - - 0x00033B 00:C32B: A9 10     LDA #$10
C - - - - - 0x00033D 00:C32D: D0 04     BNE bra_C333    ; jmp



sub_C32F:
C - - - - - 0x00033F 00:C32F: A5 10     LDA ram_0010
C - - - - - 0x000341 00:C331: 29 7F     AND #$7F
bra_C333:
sub_C333:
C - - - - - 0x000343 00:C333: 8D 00 20  STA $2000
C - - - - - 0x000346 00:C336: 85 10     STA ram_0010
C - - - - - 0x000348 00:C338: 60        RTS



sub_C339:
bra_C339_infinite_loop:
C - - - - - 0x000349 00:C339: AD 02 20  LDA $2002
C - - - - - 0x00034C 00:C33C: 29 80     AND #$80
C - - - - - 0x00034E 00:C33E: D0 F9     BNE bra_C339_infinite_loop
C - - - - - 0x000350 00:C340: A5 10     LDA ram_0010
C - - - - - 0x000352 00:C342: 09 80     ORA #$80
C - - - - - 0x000354 00:C344: D0 ED     BNE bra_C333    ; jmp



ofs_000_C346_00:
C - - J - - 0x000356 00:C346: A5 31     LDA ram_0031
C - - - - - 0x000358 00:C348: D0 0F     BNE bra_C359
- - - - - - 0x00035A 00:C34A: 85 43     STA ram_0043
- - - - - - 0x00035C 00:C34C: 85 4A     STA ram_004A
- - - - - - 0x00035E 00:C34E: A9 0F     LDA #$0F
- - - - - - 0x000360 00:C350: 8D F7 03  STA ram_03F7
- - - - - - 0x000363 00:C353: A9 02     LDA #$02
- - - - - - 0x000365 00:C355: 85 41     STA ram_0041
- - - - - - 0x000367 00:C357: D0 30     BNE bra_C389
bra_C359:
C - - - - - 0x000369 00:C359: A9 03     LDA #$03
C - - - - - 0x00036B 00:C35B: 20 DE C7  JSR sub_C7DE
C - - - - - 0x00036E 00:C35E: 8A        TXA
C - - - - - 0x00036F 00:C35F: D0 09     BNE bra_C36A
C - - - - - 0x000371 00:C361: 8D F2 03  STA ram_03F2
C - - - - - 0x000374 00:C364: B9 80 C0  LDA tbl_C080,Y
C - - - - - 0x000377 00:C367: 4C EF C3  JMP loc_C3EF
bra_C36A:
loc_C36A:
C - - - - - 0x00037A 00:C36A: A4 42     LDY ram_0042
C - - - - - 0x00037C 00:C36C: A2 00     LDX #$00
C - - - - - 0x00037E 00:C36E: 8E F7 03  STX ram_03F7
C - - - - - 0x000381 00:C371: 86 43     STX ram_0043
C - - - - - 0x000383 00:C373: 86 42     STX ram_0042
C - - - - - 0x000385 00:C375: E8        INX
C - - - - - 0x000386 00:C376: 8E F3 03  STX ram_03F3
C - - - - - 0x000389 00:C379: 86 4A     STX ram_004A
C - - - - - 0x00038B 00:C37B: 8E F0 03  STX ram_03F0
C - - - - - 0x00038E 00:C37E: C0 02     CPY #$02
C - - - - - 0x000390 00:C380: D0 02     BNE bra_C384
C - - - - - 0x000392 00:C382: A2 08     LDX #$08
bra_C384:
C - - - - - 0x000394 00:C384: 86 41     STX ram_0041
C - - - - - 0x000396 00:C386: 8C F2 03  STY ram_03F2
bra_C389:
C - - - - - 0x000399 00:C389: 20 B1 C3  JSR sub_C3B1
C - - - - - 0x00039C 00:C38C: AD F7 03  LDA ram_03F7
C - - - - - 0x00039F 00:C38F: 49 0F     EOR #$0F
C - - - - - 0x0003A1 00:C391: 8D 15 40  STA $4015
C - - - - - 0x0003A4 00:C394: 60        RTS



ofs_000_C395_01:
C - - J - - 0x0003A5 00:C395: A5 15     LDA ram_btn_press
C - - - - - 0x0003A7 00:C397: 29 F3     AND #con_btns_ABSS + con_btns_LR
C - - - - - 0x0003A9 00:C399: 85 15     STA ram_btn_press
C - - - - - 0x0003AB 00:C39B: 29 03     AND #con_btns_LR    ; bzk optimize, seems useless
C - - - - - 0x0003AD 00:C39D: 0A        ASL
C - - - - - 0x0003AE 00:C39E: 0A        ASL
C - - - - - 0x0003AF 00:C39F: 05 15     ORA ram_btn_press
C - - - - - 0x0003B1 00:C3A1: 85 15     STA ram_btn_press
C - - - - - 0x0003B3 00:C3A3: A9 05     LDA #$05
C - - - - - 0x0003B5 00:C3A5: 20 DE C7  JSR sub_C7DE
C - - - - - 0x0003B8 00:C3A8: 8A        TXA
C - - - - - 0x0003B9 00:C3A9: F0 0D     BEQ bra_C3B8
C - - - - - 0x0003BB 00:C3AB: A5 42     LDA ram_0042
C - - - - - 0x0003BD 00:C3AD: 85 43     STA ram_0043
loc_C3AF:
sub_C3AF:
C D 2 - - - 0x0003BF 00:C3AF: E6 41     INC ram_0041
bra_C3B1:
sub_C3B1:
C - - - - - 0x0003C1 00:C3B1: A9 00     LDA #$00
C - - - - - 0x0003C3 00:C3B3: 85 40     STA ram_0040
C - - - - - 0x0003C5 00:C3B5: 85 44     STA ram_0044
C - - - - - 0x0003C7 00:C3B7: 60        RTS
bra_C3B8:
C - - - - - 0x0003C8 00:C3B8: B9 83 C0  LDA tbl_C083,Y
C - - - - - 0x0003CB 00:C3BB: D0 54     BNE bra_C411    ; jmp



ofs_000_C3BD_08:
C - - J - - 0x0003CD 00:C3BD: A9 06     LDA #$06
C - - - - - 0x0003CF 00:C3BF: 20 DE C7  JSR sub_C7DE
C - - - - - 0x0003D2 00:C3C2: 8A        TXA
C - - - - - 0x0003D3 00:C3C3: F0 25     BEQ bra_C3EA
C - - - - - 0x0003D5 00:C3C5: A5 42     LDA ram_0042
C - - - - - 0x0003D7 00:C3C7: C9 02     CMP #$02
C - - - - - 0x0003D9 00:C3C9: F0 07     BEQ bra_C3D2
C - - - - - 0x0003DB 00:C3CB: B0 08     BCS bra_C3D5
C - - - - - 0x0003DD 00:C3CD: 8D F2 03  STA ram_03F2
C - - - - - 0x0003E0 00:C3D0: E6 41     INC ram_0041
bra_C3D2:
C - - - - - 0x0003E2 00:C3D2: 4C AF C3  JMP loc_C3AF
bra_C3D5:
C - - - - - 0x0003E5 00:C3D5: C9 05     CMP #$05
C - - - - - 0x0003E7 00:C3D7: F0 0B     BEQ bra_C3E4
C - - - - - 0x0003E9 00:C3D9: 18        CLC
C - - - - - 0x0003EA 00:C3DA: 69 09     ADC #$09
C - - - - - 0x0003EC 00:C3DC: 85 41     STA ram_0041
C - - - - - 0x0003EE 00:C3DE: A9 00     LDA #$00
C - - - - - 0x0003F0 00:C3E0: 85 42     STA ram_0042
C - - - - - 0x0003F2 00:C3E2: F0 CD     BEQ bra_C3B1    ; jmp
bra_C3E4:
C - - - - - 0x0003F4 00:C3E4: 4A        LSR
C - - - - - 0x0003F5 00:C3E5: 85 42     STA ram_0042
C - - - - - 0x0003F7 00:C3E7: 4C 85 CA  JMP loc_CA85
bra_C3EA:
C - - - - - 0x0003FA 00:C3EA: A4 42     LDY ram_0042
C - - - - - 0x0003FC 00:C3EC: B9 8B C0  LDA tbl_C08B,Y
bra_C3EF:
loc_C3EF:
C D 2 - - - 0x0003FF 00:C3EF: 8D 00 02  STA ram_spr_Y
C - - - - - 0x000402 00:C3F2: 60        RTS



ofs_001_C3F3_01_02:
C - - J - - 0x000403 00:C3F3: A2 04     LDX #$04
C - - - - - 0x000405 00:C3F5: 86 FB     STX ram_00FB
C - - - - - 0x000407 00:C3F7: CA        DEX ; con_C27F_03
C - - - - - 0x000408 00:C3F8: 86 45     STX ram_0045
C - - - - - 0x00040A 00:C3FA: A0 01     LDY #$01
C - - - - - 0x00040C 00:C3FC: 20 09 C4  JSR sub_C409
C - - - - - 0x00040F 00:C3FF: 85 42     STA ram_0042
C - - - - - 0x000411 00:C401: A9 2D     LDA #$2D
C - - - - - 0x000413 00:C403: 85 34     STA ram_0034
C - - - - - 0x000415 00:C405: A9 B0     LDA #$B0
C - - - - - 0x000417 00:C407: D0 E6     BNE bra_C3EF    ; jmp



sub_C409:
C - - - - - 0x000419 00:C409: A9 FA     LDA #$FA
C - - - - - 0x00041B 00:C40B: 8D 01 02  STA ram_spr_T
C - - - - - 0x00041E 00:C40E: B9 88 C0  LDA tbl_C088,Y
bra_C411:
C - - - - - 0x000421 00:C411: 8D 03 02  STA ram_spr_X
C - - - - - 0x000424 00:C414: A9 00     LDA #$00
C - - - - - 0x000426 00:C416: 8D 02 02  STA ram_spr_A
C - - - - - 0x000429 00:C419: 85 46     STA ram_0046
C - - - - - 0x00042B 00:C41B: 60        RTS



ofs_000_C41C_0D:
C - - J - - 0x00042C 00:C41C: A9 02     LDA #$02
C - - - - - 0x00042E 00:C41E: A6 44     LDX ram_0044
C - - - - - 0x000430 00:C420: F0 2E     BEQ bra_C450
- - - - - - 0x000432 00:C422: A5 48     LDA ram_0048
- - - - - - 0x000434 00:C424: C9 FF     CMP #$FF
- - - - - - 0x000436 00:C426: D0 2C     BNE bra_C454_RTS
- - - - - - 0x000438 00:C428: A2 02     LDX #$02
bra_C42A_loop:
- - - - - - 0x00043A 00:C42A: B5 65     LDA ram_0065,X
- - - - - - 0x00043C 00:C42C: 9D A0 05  STA ram_05A0,X
- - - - - - 0x00043F 00:C42F: B5 68     LDA ram_0068,X
- - - - - - 0x000441 00:C431: 9D C3 05  STA ram_05C3,X
- - - - - - 0x000444 00:C434: CA        DEX
- - - - - - 0x000445 00:C435: 10 F3     BPL bra_C42A_loop
- - - - - - 0x000447 00:C437: 20 3B EC  JSR sub_EC3B
- - - - - - 0x00044A 00:C43A: 4C 47 C4  JMP loc_C447



ofs_000_C43D_0C:
C - - J - - 0x00044D 00:C43D: A5 44     LDA ram_0044
C - - - - - 0x00044F 00:C43F: F0 0D     BEQ bra_C44E
C - - - - - 0x000451 00:C441: A5 48     LDA ram_0048
C - - - - - 0x000453 00:C443: C9 FF     CMP #$FF
C - - - - - 0x000455 00:C445: D0 0D     BNE bra_C454_RTS
loc_C447:
C - - - - - 0x000457 00:C447: A9 40     LDA #$40
C - - - - - 0x000459 00:C449: 85 FB     STA ram_00FB
C - - - - - 0x00045B 00:C44B: 4C 6B CC  JMP loc_CC6B
bra_C44E:
C - - - - - 0x00045E 00:C44E: A9 01     LDA #$01
bra_C450:
C - - - - - 0x000460 00:C450: 85 48     STA ram_0048
C - - - - - 0x000462 00:C452: 85 44     STA ram_0044
bra_C454_RTS:
C - - - - - 0x000464 00:C454: 60        RTS



ofs_001_C455_03_03:
C - - J - - 0x000465 00:C455: A0 08     LDY #con_C27F_08
C - - - - - 0x000467 00:C457: A5 41     LDA ram_0041
C - - - - - 0x000469 00:C459: C9 08     CMP #$08
C - - - - - 0x00046B 00:C45B: B0 05     BCS bra_C462
C - - - - - 0x00046D 00:C45D: A5 46     LDA ram_0046
C - - - - - 0x00046F 00:C45F: F0 03     BEQ bra_C464_RTS
C - - - - - 0x000471 00:C461: 88        DEY ; con_C27F_07
bra_C462:
C - - - - - 0x000472 00:C462: 84 45     STY ram_0045
bra_C464_RTS:
C - - - - - 0x000474 00:C464: 60        RTS



ofs_000_C465_04:
ofs_000_C465_07:
C - - J - - 0x000475 00:C465: A5 34     LDA ram_0034
C - - - - - 0x000477 00:C467: F0 0E     BEQ bra_C477
C - - - - - 0x000479 00:C469: A9 06     LDA #$06
C - - - - - 0x00047B 00:C46B: 20 2C C9  JSR sub_C92C
C - - - - - 0x00047E 00:C46E: A5 3F     LDA ram_003F
C - - - - - 0x000480 00:C470: 29 10     AND #$10
C - - - - - 0x000482 00:C472: D0 F0     BNE bra_C464_RTS
C - - - - - 0x000484 00:C474: 4C FA CA  JMP loc_CAFA
bra_C477:
C - - - - - 0x000487 00:C477: 20 AF C3  JSR sub_C3AF
C - - - - - 0x00048A 00:C47A: A5 41     LDA ram_0041
C - - - - - 0x00048C 00:C47C: C9 08     CMP #$08
C - - - - - 0x00048E 00:C47E: 90 02     BCC bra_C482
C - - - - - 0x000490 00:C480: A9 02     LDA #$02
bra_C482:
C - - - - - 0x000492 00:C482: 85 41     STA ram_0041
C - - - - - 0x000494 00:C484: 60        RTS



ofs_001_C485_03_05:
C - - J - - 0x000495 00:C485: 20 3A C5  JSR sub_C53A
C - - - - - 0x000498 00:C488: A5 05     LDA ram_0005
C - - - - - 0x00049A 00:C48A: C5 68     CMP ram_0068
C - - - - - 0x00049C 00:C48C: D0 0C     BNE bra_C49A
C - - - - - 0x00049E 00:C48E: A5 06     LDA ram_0006
C - - - - - 0x0004A0 00:C490: C5 69     CMP ram_0069
C - - - - - 0x0004A2 00:C492: D0 06     BNE bra_C49A
C - - - - - 0x0004A4 00:C494: A5 07     LDA ram_0007
C - - - - - 0x0004A6 00:C496: C5 6A     CMP ram_006A
C - - - - - 0x0004A8 00:C498: F0 0F     BEQ bra_C4A9
bra_C49A:
C - - - - - 0x0004AA 00:C49A: 90 11     BCC bra_C4AD
C - - - - - 0x0004AC 00:C49C: A2 00     LDX #$00
bra_C49E_loop:
C - - - - - 0x0004AE 00:C49E: B5 68     LDA ram_0068,X
C - - - - - 0x0004B0 00:C4A0: 99 80 05  STA ram_0580,Y
C - - - - - 0x0004B3 00:C4A3: E8        INX
C - - - - - 0x0004B4 00:C4A4: C8        INY
C - - - - - 0x0004B5 00:C4A5: E0 03     CPX #$03
C - - - - - 0x0004B7 00:C4A7: 30 F5     BMI bra_C49E_loop
bra_C4A9:
C - - - - - 0x0004B9 00:C4A9: A9 01     LDA #$01
C - - - - - 0x0004BB 00:C4AB: D0 65     BNE bra_C512    ; jmp
bra_C4AD:
C - - - - - 0x0004BD 00:C4AD: A5 41     LDA ram_0041
C - - - - - 0x0004BF 00:C4AF: C9 08     CMP #$08
C - - - - - 0x0004C1 00:C4B1: B0 19     BCS bra_C4CC
C - - - - - 0x0004C3 00:C4B3: 20 22 C5  JSR sub_C522
C - - - - - 0x0004C6 00:C4B6: A5 05     LDA ram_0005
C - - - - - 0x0004C8 00:C4B8: C5 68     CMP ram_0068
C - - - - - 0x0004CA 00:C4BA: D0 0A     BNE bra_C4C6
C - - - - - 0x0004CC 00:C4BC: A5 06     LDA ram_0006
C - - - - - 0x0004CE 00:C4BE: C5 69     CMP ram_0069
C - - - - - 0x0004D0 00:C4C0: D0 04     BNE bra_C4C6
C - - - - - 0x0004D2 00:C4C2: A5 07     LDA ram_0007
C - - - - - 0x0004D4 00:C4C4: C5 6A     CMP ram_006A
bra_C4C6:
C - - - - - 0x0004D6 00:C4C6: 90 04     BCC bra_C4CC
- - - - - - 0x0004D8 00:C4C8: A9 02     LDA #$02
- - - - - - 0x0004DA 00:C4CA: D0 46     BNE bra_C512    ; jmp
bra_C4CC:
C - - - - - 0x0004DC 00:C4CC: AD F8 03  LDA ram_03F8
C - - - - - 0x0004DF 00:C4CF: 85 0A     STA ram_000A
C - - - - - 0x0004E1 00:C4D1: 0A        ASL
C - - - - - 0x0004E2 00:C4D2: 85 09     STA ram_0009
C - - - - - 0x0004E4 00:C4D4: A5 68     LDA ram_0068
C - - - - - 0x0004E6 00:C4D6: 38        SEC
C - - - - - 0x0004E7 00:C4D7: E5 05     SBC ram_0005
C - - - - - 0x0004E9 00:C4D9: A8        TAY
C - - - - - 0x0004EA 00:C4DA: A9 00     LDA #$00
bra_C4DC_loop:
C - - - - - 0x0004EC 00:C4DC: 88        DEY
C - - - - - 0x0004ED 00:C4DD: 30 09     BMI bra_C4E8
C - - - - - 0x0004EF 00:C4DF: 18        CLC
C - - - - - 0x0004F0 00:C4E0: 69 3C     ADC #$3C
C - - - - - 0x0004F2 00:C4E2: 90 F8     BCC bra_C4DC_loop
bra_C4E4:
- - - - - - 0x0004F4 00:C4E4: A9 FF     LDA #$FF
- - - - - - 0x0004F6 00:C4E6: D0 23     BNE bra_C50B    ; jmp
bra_C4E8:
C - - - - - 0x0004F8 00:C4E8: 85 08     STA ram_0008
C - - - - - 0x0004FA 00:C4EA: A5 69     LDA ram_0069
C - - - - - 0x0004FC 00:C4EC: 38        SEC
C - - - - - 0x0004FD 00:C4ED: E5 06     SBC ram_0006
C - - - - - 0x0004FF 00:C4EF: B0 06     BCS bra_C4F7
C - - - - - 0x000501 00:C4F1: 18        CLC
C - - - - - 0x000502 00:C4F2: 65 08     ADC ram_0008
C - - - - - 0x000504 00:C4F4: 4C FC C4  JMP loc_C4FC
bra_C4F7:
C - - - - - 0x000507 00:C4F7: 18        CLC
C - - - - - 0x000508 00:C4F8: 65 08     ADC ram_0008
C - - - - - 0x00050A 00:C4FA: B0 E8     BCS bra_C4E4
loc_C4FC:
C D 2 - - - 0x00050C 00:C4FC: C5 09     CMP ram_0009
C - - - - - 0x00050E 00:C4FE: B0 0B     BCS bra_C50B
C - - - - - 0x000510 00:C500: 18        CLC
C - - - - - 0x000511 00:C501: 65 09     ADC ram_0009
loc_C503_loop:
C D 2 - - - 0x000513 00:C503: 46 0A     LSR ram_000A
C - - - - - 0x000515 00:C505: F0 0B     BEQ bra_C512
C - - - - - 0x000517 00:C507: 4A        LSR
C - - - - - 0x000518 00:C508: 4C 03 C5  JMP loc_C503_loop
bra_C50B:
C - - - - - 0x00051B 00:C50B: 38        SEC
C - - - - - 0x00051C 00:C50C: E5 09     SBC ram_0009
C - - - - - 0x00051E 00:C50E: 4A        LSR
C - - - - - 0x00051F 00:C50F: 18        CLC
C - - - - - 0x000520 00:C510: 69 04     ADC #$04
bra_C512:
C - - - - - 0x000522 00:C512: 85 53     STA ram_0053
ofs_001_C514_00_02:
ofs_001_C514_01_03:
ofs_001_C514_04_04:
ofs_001_C514_06_03:
C - - J - - 0x000524 00:C514: A9 18     LDA #con_C27F_18
C - - - - - 0x000526 00:C516: 85 45     STA ram_0045
ofs_001_C518_07_03:
ofs_001_C518_08_02:
C - - - - - 0x000528 00:C518: A9 01     LDA #$01
C - - - - - 0x00052A 00:C51A: 85 49     STA ram_0049
C - - - - - 0x00052C 00:C51C: 85 40     STA ram_0040
C - - - - - 0x00052E 00:C51E: 4A        LSR
C - - - - - 0x00052F 00:C51F: 85 44     STA ram_0044
C - - - - - 0x000531 00:C521: 60        RTS



sub_C522:
C - - - - - 0x000532 00:C522: A5 43     LDA ram_0043
C - - - - - 0x000534 00:C524: 85 02     STA ram_0002
C - - - - - 0x000536 00:C526: 20 13 CB  JSR sub_CB13
C - - - - - 0x000539 00:C529: A8        TAY
C - - - - - 0x00053A 00:C52A: B9 91 C0  LDA tbl_C091,Y
C - - - - - 0x00053D 00:C52D: 85 05     STA ram_0005
C - - - - - 0x00053F 00:C52F: B9 92 C0  LDA tbl_C091 + $01,Y
C - - - - - 0x000542 00:C532: 85 06     STA ram_0006
C - - - - - 0x000544 00:C534: B9 93 C0  LDA tbl_C091 + $02,Y
C - - - - - 0x000547 00:C537: 85 07     STA ram_0007
C - - - - - 0x000549 00:C539: 60        RTS



sub_C53A:
C - - - - - 0x00054A 00:C53A: A5 43     LDA ram_0043
C - - - - - 0x00054C 00:C53C: 85 02     STA ram_0002
sub_C53E:
C - - - - - 0x00054E 00:C53E: 20 06 CB  JSR sub_CB06
C - - - - - 0x000551 00:C541: B9 80 05  LDA ram_0580,Y
C - - - - - 0x000554 00:C544: 85 05     STA ram_0005
C - - - - - 0x000556 00:C546: B9 81 05  LDA ram_0581,Y
C - - - - - 0x000559 00:C549: 85 06     STA ram_0006
C - - - - - 0x00055B 00:C54B: B9 82 05  LDA ram_0582,Y
C - - - - - 0x00055E 00:C54E: 85 07     STA ram_0007
C - - - - - 0x000560 00:C550: 60        RTS



ofs_001_C551_02_01:
ofs_001_C551_05_01:
C - - J - - 0x000561 00:C551: A9 12     LDA #con_C27F_12
C - - - - - 0x000563 00:C553: A6 41     LDX ram_0041
C - - - - - 0x000565 00:C555: E0 08     CPX #$08
C - - - - - 0x000567 00:C557: B0 15     BCS bra_C56E
; bzk optimize, C = 0, no need for CLC
C - - - - - 0x000569 00:C559: 18        CLC
C - - - - - 0x00056A 00:C55A: 65 43     ADC ram_0043
; con_C27F_12
; con_C27F_13
; con_C27F_14
; con_C27F_15
; con_C27F_16
C - - - - - 0x00056C 00:C55C: D0 10     BNE bra_C56E    ; jmp



ofs_001_C55E_01_01:
ofs_001_C55E_03_01:
ofs_001_C55E_04_01:
ofs_001_C55E_06_01:
C - - J - - 0x00056E 00:C55E: A9 06     LDA #con_C27F_06
C - - - - - 0x000570 00:C560: D0 0C     BNE bra_C56E    ; jmp



ofs_001_C562_05_05:
C - - J - - 0x000572 00:C562: A9 05     LDA #con_C27F_05
C - - - - - 0x000574 00:C564: D0 08     BNE bra_C56E    ; jmp



ofs_001_C566_02_05:
C - - J - - 0x000576 00:C566: A9 0E     LDA #con_C27F_0E
C - - - - - 0x000578 00:C568: D0 04     BNE bra_C56E    ; jmp



ofs_001_C56A_03_02:
C - - J - - 0x00057A 00:C56A: A9 04     LDA #con_C27F_04
C - - - - - 0x00057C 00:C56C: 85 33     STA ram_0033
bra_C56E:
C - - - - - 0x00057E 00:C56E: 85 45     STA ram_0045
C - - - - - 0x000580 00:C570: 60        RTS



ofs_001_C571_04_02:
C - - J - - 0x000581 00:C571: A9 09     LDA #con_C27F_09
C - - - - - 0x000583 00:C573: D0 F9     BNE bra_C56E    ; jmp



ofs_001_C575_06_02:
C - - J - - 0x000585 00:C575: A9 05     LDA #$05
C - - - - - 0x000587 00:C577: 85 43     STA ram_0043
C - - - - - 0x000589 00:C579: A0 02     LDY #$02
C - - - - - 0x00058B 00:C57B: 20 09 C4  JSR sub_C409
C - - - - - 0x00058E 00:C57E: A9 0F     LDA #con_C27F_0F
C - - - - - 0x000590 00:C580: D0 EC     BNE bra_C56E    ; jmp



ofs_001_C582_08_01:
C - - J - - 0x000592 00:C582: A9 11     LDA #con_C27F_11
C - - - - - 0x000594 00:C584: D0 E8     BNE bra_C56E    ; jmp



ofs_001_C586_07_02:
C - - J - - 0x000596 00:C586: A2 03     LDX #$03
C - - - - - 0x000598 00:C588: D0 0A     BNE bra_C594    ; jmp



bra_C58A_loop:
C - - - - - 0x00059A 00:C58A: BD A0 05  LDA ram_05A0,X
C - - - - - 0x00059D 00:C58D: 95 65     STA ram_0065,X
C - - - - - 0x00059F 00:C58F: BD C3 05  LDA ram_05C3,X
C - - - - - 0x0005A2 00:C592: 95 68     STA ram_0068,X
bra_C594:
C - - - - - 0x0005A4 00:C594: BD 80 C1  LDA tbl_C180,X
C - - - - - 0x0005A7 00:C597: 95 61     STA ram_0061,X
C - - - - - 0x0005A9 00:C599: CA        DEX
C - - - - - 0x0005AA 00:C59A: 10 EE     BPL bra_C58A_loop
C - - - - - 0x0005AC 00:C59C: 20 21 C6  JSR sub_C621
C - - - - - 0x0005AF 00:C59F: A9 10     LDA #con_C27F_10
C - - - - - 0x0005B1 00:C5A1: D0 CB     BNE bra_C56E    ; jmp



ofs_001_C5A3_02_04:
ofs_001_C5A3_05_04:
C - - J - - 0x0005B3 00:C5A3: A9 17     LDA #con_C27F_17
C - - - - - 0x0005B5 00:C5A5: D0 C7     BNE bra_C56E    ; jmp



ofs_001_C5A7_03_04:
C - - J - - 0x0005B7 00:C5A7: A9 00     LDA #$00
C - - - - - 0x0005B9 00:C5A9: 4C 2C C9  JMP loc_C92C



ofs_001_C5AC_04_03:
C - - J - - 0x0005BC 00:C5AC: A9 12     LDA #$12
C - - - - - 0x0005BE 00:C5AE: 85 34     STA ram_0034
C - - - - - 0x0005C0 00:C5B0: A2 05     LDX #$05
bra_C5B2_loop:
C - - - - - 0x0005C2 00:C5B2: BD 3C C1  LDA tbl_C13C,X
C - - - - - 0x0005C5 00:C5B5: 9D 00 03  STA ram_0300,X
C - - - - - 0x0005C8 00:C5B8: CA        DEX
C - - - - - 0x0005C9 00:C5B9: 10 F7     BPL bra_C5B2_loop
C - - - - - 0x0005CB 00:C5BB: A6 43     LDX ram_0043
C - - - - - 0x0005CD 00:C5BD: E8        INX
C - - - - - 0x0005CE 00:C5BE: 8E 04 03  STX ram_0304
C - - - - - 0x0005D1 00:C5C1: 60        RTS



ofs_001_C5C2_05_06:
C - - J - - 0x0005D2 00:C5C2: A2 01     LDX #$01
C - - - - - 0x0005D4 00:C5C4: 86 B7     STX ram_00B7
C - - - - - 0x0005D6 00:C5C6: 20 21 C6  JSR sub_C621
C - - - - - 0x0005D9 00:C5C9: 86 BD     STX ram_00BD
C - - - - - 0x0005DB 00:C5CB: 86 BE     STX ram_00BE
C - - - - - 0x0005DD 00:C5CD: 86 C4     STX ram_00C4
C - - - - - 0x0005DF 00:C5CF: 86 C0     STX ram_00C0
C - - - - - 0x0005E1 00:C5D1: 86 49     STX ram_0049
C - - - - - 0x0005E3 00:C5D3: 86 C2     STX ram_00C2
C - - - - - 0x0005E5 00:C5D5: E8        INX
C - - - - - 0x0005E6 00:C5D6: 8E E0 05  STX ram_05E0
C - - - - - 0x0005E9 00:C5D9: A9 06     LDA #$06
C - - - - - 0x0005EB 00:C5DB: 85 AC     STA ram_00AC
C - - - - - 0x0005ED 00:C5DD: A9 A0     LDA #$A0
C - - - - - 0x0005EF 00:C5DF: 85 8C     STA ram_008C
C - - - - - 0x0005F1 00:C5E1: A9 10     LDA #$10
C - - - - - 0x0005F3 00:C5E3: 85 80     STA ram_0080
C - - - - - 0x0005F5 00:C5E5: A9 04     LDA #$04
C - - - - - 0x0005F7 00:C5E7: 85 04     STA ram_0004
C - - - - - 0x0005F9 00:C5E9: A2 00     LDX #$00
C - - - - - 0x0005FB 00:C5EB: 86 0B     STX ram_000B
C - - - - - 0x0005FD 00:C5ED: 20 A3 E1  JSR sub_E1A3
C - - - - - 0x000600 00:C5F0: A2 07     LDX #$07
bra_C5F2_loop:
C - - - - - 0x000602 00:C5F2: BD 78 C1  LDA tbl_C178,X
C - - - - - 0x000605 00:C5F5: 9D 28 02  STA ram_oam + $28,X
C - - - - - 0x000608 00:C5F8: CA        DEX
C - - - - - 0x000609 00:C5F9: 10 F7     BPL bra_C5F2_loop
C - - - - - 0x00060B 00:C5FB: A9 05     LDA #$05
C - - - - - 0x00060D 00:C5FD: 85 B1     STA ram_00B1
C - - - - - 0x00060F 00:C5FF: 85 B2     STA ram_00B2
C - - - - - 0x000611 00:C601: A9 21     LDA #$21
C - - - - - 0x000613 00:C603: 85 B0     STA ram_00B0
C - - - - - 0x000615 00:C605: A9 03     LDA #$03
C - - - - - 0x000617 00:C607: 85 B3     STA ram_00B3
C - - - - - 0x000619 00:C609: A9 08     LDA #$08
C - - - - - 0x00061B 00:C60B: 85 64     STA ram_0064
C - - - - - 0x00061D 00:C60D: 85 E0     STA ram_00E0
C - - - - - 0x00061F 00:C60F: E6 E0     INC ram_00E0
C - - - - - 0x000621 00:C611: A9 7A     LDA #$7A
C - - - - - 0x000623 00:C613: 85 B4     STA ram_00B4
C - - - - - 0x000625 00:C615: E6 40     INC ram_0040
C - - - - - 0x000627 00:C617: E6 47     INC ram_0047
C - - - - - 0x000629 00:C619: A9 D0     LDA #$D0
C - - - - - 0x00062B 00:C61B: 20 25 EC  JSR sub_EC25
C - - - - - 0x00062E 00:C61E: 4C 47 EC  JMP loc_EC47



sub_C621:
C - - - - - 0x000631 00:C621: A2 00     LDX #$00
bra_C623_loop:
C - - - - - 0x000633 00:C623: BD E0 06  LDA ram_06E0,X
C - - - - - 0x000636 00:C626: 9D E0 05  STA ram_05E0,X
C - - - - - 0x000639 00:C629: CA        DEX
C - - - - - 0x00063A 00:C62A: D0 F7     BNE bra_C623_loop
C - - - - - 0x00063C 00:C62C: 60        RTS



sub_C62D:
C - - - - - 0x00063D 00:C62D: A9 05     LDA #$05
C - - - - - 0x00063F 00:C62F: 8D 16 40  STA $4016
; bzk optimize, useless (probably) code up to C637
C - - - - - 0x000642 00:C632: 48        PHA
C - - - - - 0x000643 00:C633: 68        PLA
C - - - - - 0x000644 00:C634: 48        PHA
C - - - - - 0x000645 00:C635: 68        PLA
C - - - - - 0x000646 00:C636: 48        PHA
C - - - - - 0x000647 00:C637: 68        PLA
C - - - - - 0x000648 00:C638: 60        RTS



sub_C639:
bra_C639_loop:
C - - - - - 0x000649 00:C639: 20 2D C6  JSR sub_C62D
C - - - - - 0x00064C 00:C63C: AD 16 40  LDA $4016
C - - - - - 0x00064F 00:C63F: 29 02     AND #$02
C - - - - - 0x000651 00:C641: F0 F6     BEQ bra_C639_loop
bra_C643_loop:
- - - - - - 0x000653 00:C643: 20 2D C6  JSR sub_C62D
- - - - - - 0x000656 00:C646: AD 16 40  LDA $4016
- - - - - - 0x000659 00:C649: 29 02     AND #$02
- - - - - - 0x00065B 00:C64B: D0 F6     BNE bra_C643_loop
- - - - - - 0x00065D 00:C64D: 60        RTS



sub_C64E:
C - - - - - 0x00065E 00:C64E: 48        PHA
C - - - - - 0x00065F 00:C64F: A9 34     LDA #$34
C - - - - - 0x000661 00:C651: D0 03     BNE bra_C656    ; jmp



sub_C653:
loc_C653:
C D 2 - - - 0x000663 00:C653: 48        PHA
C - - - - - 0x000664 00:C654: A9 6A     LDA #$6A
bra_C656:
C - - - - - 0x000666 00:C656: 85 07     STA ram_0007
C - - - - - 0x000668 00:C658: 85 0C     STA ram_000C
C - - - - - 0x00066A 00:C65A: A9 04     LDA #$04
C - - - - - 0x00066C 00:C65C: 8D 16 40  STA $4016
bra_C65F_loop:
C - - - - - 0x00066F 00:C65F: C6 07     DEC ram_0007
C - - - - - 0x000671 00:C661: D0 FC     BNE bra_C65F_loop
C - - - - - 0x000673 00:C663: A9 FF     LDA #$FF
C - - - - - 0x000675 00:C665: 8D 16 40  STA $4016
bra_C668_loop:
C - - - - - 0x000678 00:C668: C6 0C     DEC ram_000C
C - - - - - 0x00067A 00:C66A: D0 FC     BNE bra_C668_loop
C - - - - - 0x00067C 00:C66C: 68        PLA
C - - - - - 0x00067D 00:C66D: 60        RTS



sub_C66E:
C - - - - - 0x00067E 00:C66E: 20 53 C6  JSR sub_C653
C - - - - - 0x000681 00:C671: A2 08     LDX #$08
bra_C673_loop:
C - - - - - 0x000683 00:C673: 85 00     STA ram_0000
C - - - - - 0x000685 00:C675: 18        CLC
C - - - - - 0x000686 00:C676: 65 00     ADC ram_0000
C - - - - - 0x000688 00:C678: B0 07     BCS bra_C681
C - - - - - 0x00068A 00:C67A: 20 4E C6  JSR sub_C64E
loc_C67D:
C D 2 - - - 0x00068D 00:C67D: CA        DEX
C - - - - - 0x00068E 00:C67E: D0 F3     BNE bra_C673_loop
C - - - - - 0x000690 00:C680: 60        RTS
bra_C681:
C - - - - - 0x000691 00:C681: 20 53 C6  JSR sub_C653
C - - - - - 0x000694 00:C684: 20 8A C6  JSR sub_C68A
C - - - - - 0x000697 00:C687: 4C 7D C6  JMP loc_C67D



sub_C68A:
C - - - - - 0x00069A 00:C68A: E6 08     INC ram_0008
C - - - - - 0x00069C 00:C68C: D0 02     BNE bra_C690_RTS
C - - - - - 0x00069E 00:C68E: E6 09     INC ram_0009
bra_C690_RTS:
C - - - - - 0x0006A0 00:C690: 60        RTS



sub_C691:
C - - - - - 0x0006A1 00:C691: 20 39 C6  JSR sub_C639
- - - - - - 0x0006A4 00:C694: A9 4E     LDA #$4E
- - - - - - 0x0006A6 00:C696: 85 01     STA ram_0001
bra_C698_garbage_loop:
- - - - - - 0x0006A8 00:C698: C6 01     DEC ram_0001
- - - - - - 0x0006AA 00:C69A: D0 FC     BNE bra_C698_garbage_loop
- - - - - - 0x0006AC 00:C69C: 20 2D C6  JSR sub_C62D
- - - - - - 0x0006AF 00:C69F: AD 16 40  LDA $4016
- - - - - - 0x0006B2 00:C6A2: 29 02     AND #$02
- - - - - - 0x0006B4 00:C6A4: 60        RTS



sub_C6A5:
- - - - - - 0x0006B5 00:C6A5: A9 08     LDA #$08
- - - - - - 0x0006B7 00:C6A7: 85 03     STA ram_0003
- - - - - - 0x0006B9 00:C6A9: A9 00     LDA #$00
- - - - - - 0x0006BB 00:C6AB: 85 04     STA ram_0004
bra_C6AD_loop:
- - - - - - 0x0006BD 00:C6AD: A5 04     LDA ram_0004
- - - - - - 0x0006BF 00:C6AF: 18        CLC
- - - - - - 0x0006C0 00:C6B0: 65 04     ADC ram_0004
- - - - - - 0x0006C2 00:C6B2: 85 04     STA ram_0004
- - - - - - 0x0006C4 00:C6B4: 20 91 C6  JSR sub_C691
- - - - - - 0x0006C7 00:C6B7: D0 05     BNE bra_C6BE
- - - - - - 0x0006C9 00:C6B9: 20 8A C6  JSR sub_C68A
- - - - - - 0x0006CC 00:C6BC: E6 04     INC ram_0004
bra_C6BE:
- - - - - - 0x0006CE 00:C6BE: C6 03     DEC ram_0003
- - - - - - 0x0006D0 00:C6C0: D0 EB     BNE bra_C6AD_loop
- - - - - - 0x0006D2 00:C6C2: 20 39 C6  JSR sub_C639
- - - - - - 0x0006D5 00:C6C5: A5 04     LDA ram_0004
- - - - - - 0x0006D7 00:C6C7: 60        RTS



sub_C6C8:
C - - - - - 0x0006D8 00:C6C8: 20 16 C7  JSR sub_C716
C - - - - - 0x0006DB 00:C6CB: 20 D1 C6  JSR sub_C6D1
C - - - - - 0x0006DE 00:C6CE: 20 26 C7  JSR sub_C726
sub_C6D1:
C - - - - - 0x0006E1 00:C6D1: A9 20     LDA #$20
C - - - - - 0x0006E3 00:C6D3: 85 0A     STA ram_000A
C - - - - - 0x0006E5 00:C6D5: A9 4E     LDA #$4E
C - - - - - 0x0006E7 00:C6D7: 85 0B     STA ram_000B
bra_C6D9_loop:
C - - - - - 0x0006E9 00:C6D9: 20 4E C6  JSR sub_C64E
C - - - - - 0x0006EC 00:C6DC: C6 0A     DEC ram_000A
C - - - - - 0x0006EE 00:C6DE: D0 F9     BNE bra_C6D9_loop
C - - - - - 0x0006F0 00:C6E0: C6 0B     DEC ram_000B
C - - - - - 0x0006F2 00:C6E2: D0 F5     BNE bra_C6D9_loop
bra_C6E4_loop:
C - - - - - 0x0006F4 00:C6E4: 20 53 C6  JSR sub_C653
C - - - - - 0x0006F7 00:C6E7: C6 05     DEC ram_0005
C - - - - - 0x0006F9 00:C6E9: D0 F9     BNE bra_C6E4_loop
bra_C6EB_loop:
C - - - - - 0x0006FB 00:C6EB: 20 4E C6  JSR sub_C64E
C - - - - - 0x0006FE 00:C6EE: C6 06     DEC ram_0006
C - - - - - 0x000700 00:C6F0: D0 F9     BNE bra_C6EB_loop
C - - - - - 0x000702 00:C6F2: 20 53 C6  JSR sub_C653
C - - - - - 0x000705 00:C6F5: A9 00     LDA #$00
C - - - - - 0x000707 00:C6F7: 85 08     STA ram_0008
C - - - - - 0x000709 00:C6F9: 85 09     STA ram_0009
C - - - - - 0x00070B 00:C6FB: A0 00     LDY #$00
bra_C6FD_loop:
C - - - - - 0x00070D 00:C6FD: B1 0E     LDA (ram_000E),Y
C - - - - - 0x00070F 00:C6FF: 20 6E C6  JSR sub_C66E
C - - - - - 0x000712 00:C702: C8        INY
C - - - - - 0x000713 00:C703: C4 0D     CPY ram_000D
C - - - - - 0x000715 00:C705: D0 F6     BNE bra_C6FD_loop
C - - - - - 0x000717 00:C707: A5 09     LDA ram_0009
C - - - - - 0x000719 00:C709: 48        PHA
C - - - - - 0x00071A 00:C70A: A5 08     LDA ram_0008
C - - - - - 0x00071C 00:C70C: 20 6E C6  JSR sub_C66E
C - - - - - 0x00071F 00:C70F: 68        PLA
C - - - - - 0x000720 00:C710: 20 6E C6  JSR sub_C66E
C - - - - - 0x000723 00:C713: 4C 53 C6  JMP loc_C653



sub_C716:
C - - - - - 0x000726 00:C716: A9 40     LDA #$40
C - - - - - 0x000728 00:C718: 85 0D     STA ram_000D
C - - - - - 0x00072A 00:C71A: A9 60     LDA #$60
C - - - - - 0x00072C 00:C71C: 85 0E     STA ram_000E
C - - - - - 0x00072E 00:C71E: A9 00     LDA #$00
C - - - - - 0x000730 00:C720: 85 0F     STA ram_000F
C - - - - - 0x000732 00:C722: A9 28     LDA #$28
C - - - - - 0x000734 00:C724: D0 0E     BNE bra_C734    ; jmp



sub_C726:
C - - - - - 0x000736 00:C726: A9 00     LDA #$00
C - - - - - 0x000738 00:C728: 85 0D     STA ram_000D
C - - - - - 0x00073A 00:C72A: A9 E0     LDA #$E0
C - - - - - 0x00073C 00:C72C: 85 0E     STA ram_000E
C - - - - - 0x00073E 00:C72E: A9 05     LDA #$05
C - - - - - 0x000740 00:C730: 85 0F     STA ram_000F
C - - - - - 0x000742 00:C732: A9 14     LDA #$14
bra_C734:
C - - - - - 0x000744 00:C734: 85 05     STA ram_0005
C - - - - - 0x000746 00:C736: 85 06     STA ram_0006
C - - - - - 0x000748 00:C738: 60        RTS



sub_C739:
bra_C739_loop:
C - - - - - 0x000749 00:C739: 20 2F C3  JSR sub_C32F
C - - - - - 0x00074C 00:C73C: 20 16 C7  JSR sub_C716
C - - - - - 0x00074F 00:C73F: 20 92 C7  JSR sub_C792
- - - - - - 0x000752 00:C742: 90 0D     BCC bra_C751
bra_C744_loop:
- - - - - - 0x000754 00:C744: A9 19     LDA #con_C27F_19
- - - - - - 0x000756 00:C746: 85 45     STA ram_0045
bra_C748:
- - - - - - 0x000758 00:C748: 20 39 C3  JSR sub_C339
bra_C74B_loop:
- - - - - - 0x00075B 00:C74B: A5 45     LDA ram_0045
- - - - - - 0x00075D 00:C74D: D0 FC     BNE bra_C74B_loop
- - - - - - 0x00075F 00:C74F: F0 E8     BEQ bra_C739_loop    ; jmp
bra_C751:
- - - - - - 0x000761 00:C751: A2 00     LDX #$00
- - - - - - 0x000763 00:C753: 86 A8     STX ram_00A8
- - - - - - 0x000765 00:C755: A0 01     LDY #$01
bra_C757_loop:
- - - - - - 0x000767 00:C757: B1 0E     LDA (ram_000E),Y
- - - - - - 0x000769 00:C759: 99 A3 00  STA ram_00A3,Y
- - - - - - 0x00076C 00:C75C: D9 7F C1  CMP tbl_C180 - $01,Y
- - - - - - 0x00076F 00:C75F: F0 01     BEQ bra_C762
- - - - - - 0x000771 00:C761: E8        INX
bra_C762:
- - - - - - 0x000772 00:C762: C8        INY
- - - - - - 0x000773 00:C763: C0 05     CPY #$05
- - - - - - 0x000775 00:C765: D0 F0     BNE bra_C757_loop
- - - - - - 0x000777 00:C767: A9 07     LDA #$07
- - - - - - 0x000779 00:C769: 85 A0     STA ram_00A0
- - - - - - 0x00077B 00:C76B: A9 22     LDA #$22
- - - - - - 0x00077D 00:C76D: 85 A1     STA ram_00A1
- - - - - - 0x00077F 00:C76F: A9 4F     LDA #$4F
- - - - - - 0x000781 00:C771: 85 A2     STA ram_00A2
- - - - - - 0x000783 00:C773: A9 04     LDA #$04
- - - - - - 0x000785 00:C775: 85 A3     STA ram_00A3
- - - - - - 0x000787 00:C777: A9 1A     LDA #con_C27F_1A
- - - - - - 0x000789 00:C779: 85 45     STA ram_0045
- - - - - - 0x00078B 00:C77B: E0 00     CPX #$00
- - - - - - 0x00078D 00:C77D: D0 C9     BNE bra_C748
- - - - - - 0x00078F 00:C77F: 20 39 C3  JSR sub_C339
bra_C782_infinite_loop:
- - - - - - 0x000792 00:C782: A5 45     LDA ram_0045
- - - - - - 0x000794 00:C784: D0 FC     BNE bra_C782_infinite_loop
- - - - - - 0x000796 00:C786: 20 2F C3  JSR sub_C32F
- - - - - - 0x000799 00:C789: 20 26 C7  JSR sub_C726
- - - - - - 0x00079C 00:C78C: 20 92 C7  JSR sub_C792
- - - - - - 0x00079F 00:C78F: B0 B3     BCS bra_C744_loop
- - - - - - 0x0007A1 00:C791: 60        RTS



sub_C792:
bra_C792_loop:
C - - - - - 0x0007A2 00:C792: A5 05     LDA ram_0005
C - - - - - 0x0007A4 00:C794: 85 00     STA ram_0000
bra_C796_loop:
C - - - - - 0x0007A6 00:C796: 20 91 C6  JSR sub_C691
- - - - - - 0x0007A9 00:C799: D0 F7     BNE bra_C792_loop
- - - - - - 0x0007AB 00:C79B: C6 00     DEC ram_0000
- - - - - - 0x0007AD 00:C79D: D0 F7     BNE bra_C796_loop
- - - - - - 0x0007AF 00:C79F: A5 06     LDA ram_0006
- - - - - - 0x0007B1 00:C7A1: 85 00     STA ram_0000
bra_C7A3_loop:
- - - - - - 0x0007B3 00:C7A3: 20 91 C6  JSR sub_C691
- - - - - - 0x0007B6 00:C7A6: F0 EA     BEQ bra_C792_loop
- - - - - - 0x0007B8 00:C7A8: C6 00     DEC ram_0000
- - - - - - 0x0007BA 00:C7AA: D0 F7     BNE bra_C7A3_loop
- - - - - - 0x0007BC 00:C7AC: A9 00     LDA #$00
- - - - - - 0x0007BE 00:C7AE: 85 08     STA ram_0008
- - - - - - 0x0007C0 00:C7B0: 85 09     STA ram_0009
- - - - - - 0x0007C2 00:C7B2: 20 39 C6  JSR sub_C639
- - - - - - 0x0007C5 00:C7B5: 20 39 C6  JSR sub_C639
- - - - - - 0x0007C8 00:C7B8: A0 00     LDY #$00
bra_C7BA_loop:
- - - - - - 0x0007CA 00:C7BA: 20 A5 C6  JSR sub_C6A5
- - - - - - 0x0007CD 00:C7BD: 91 0E     STA (ram_000E),Y
- - - - - - 0x0007CF 00:C7BF: C8        INY
- - - - - - 0x0007D0 00:C7C0: C4 0D     CPY ram_000D
- - - - - - 0x0007D2 00:C7C2: D0 F6     BNE bra_C7BA_loop
- - - - - - 0x0007D4 00:C7C4: A5 08     LDA ram_0008
- - - - - - 0x0007D6 00:C7C6: 85 0A     STA ram_000A
- - - - - - 0x0007D8 00:C7C8: A5 09     LDA ram_0009
- - - - - - 0x0007DA 00:C7CA: 85 0B     STA ram_000B
- - - - - - 0x0007DC 00:C7CC: 20 A5 C6  JSR sub_C6A5
- - - - - - 0x0007DF 00:C7CF: C5 0A     CMP ram_000A
- - - - - - 0x0007E1 00:C7D1: D0 07     BNE bra_C7DA
- - - - - - 0x0007E3 00:C7D3: 20 A5 C6  JSR sub_C6A5
- - - - - - 0x0007E6 00:C7D6: C5 0B     CMP ram_000B
- - - - - - 0x0007E8 00:C7D8: F0 02     BEQ bra_C7DC
bra_C7DA:
- - - - - - 0x0007EA 00:C7DA: 38        SEC
- - - - - - 0x0007EB 00:C7DB: 60        RTS
bra_C7DC:
- - - - - - 0x0007EC 00:C7DC: 18        CLC
- - - - - - 0x0007ED 00:C7DD: 60        RTS



sub_C7DE:
C - - - - - 0x0007EE 00:C7DE: 85 00     STA ram_0000
C - - - - - 0x0007F0 00:C7E0: A4 42     LDY ram_0042
C - - - - - 0x0007F2 00:C7E2: A2 00     LDX #$00
C - - - - - 0x0007F4 00:C7E4: A5 15     LDA ram_btn_press
C - - - - - 0x0007F6 00:C7E6: 29 3C     AND #con_btns_SS + con_btns_UD
C - - - - - 0x0007F8 00:C7E8: D0 03     BNE bra_C7ED
C - - - - - 0x0007FA 00:C7EA: 85 49     STA ram_0049
bra_C7EC_RTS:
C - - - - - 0x0007FC 00:C7EC: 60        RTS
bra_C7ED:
C - - - - - 0x0007FD 00:C7ED: A9 5D     LDA #$5D
C - - - - - 0x0007FF 00:C7EF: 85 31     STA ram_0031
C - - - - - 0x000801 00:C7F1: A5 49     LDA ram_0049
C - - - - - 0x000803 00:C7F3: D0 F7     BNE bra_C7EC_RTS
C - - - - - 0x000805 00:C7F5: A5 15     LDA ram_btn_press
C - - - - - 0x000807 00:C7F7: 2C CE C0  BIT tbl_C0CE
C - - - - - 0x00080A 00:C7FA: D0 0E     BNE bra_C80A
C - - - - - 0x00080C 00:C7FC: 4A        LSR
C - - - - - 0x00080D 00:C7FD: 4A        LSR
C - - - - - 0x00080E 00:C7FE: 4A        LSR
C - - - - - 0x00080F 00:C7FF: B0 09     BCS bra_C80A
C - - - - - 0x000811 00:C801: 4A        LSR
C - - - - - 0x000812 00:C802: B0 0D     BCS bra_C811
C - - - - - 0x000814 00:C804: A2 04     LDX #$04
C - - - - - 0x000816 00:C806: 86 30     STX ram_0030
C - - - - - 0x000818 00:C808: D0 11     BNE bra_C81B
bra_C80A:
C - - - - - 0x00081A 00:C80A: C8        INY
C - - - - - 0x00081B 00:C80B: C4 00     CPY ram_0000
C - - - - - 0x00081D 00:C80D: 90 08     BCC bra_C817
C - - - - - 0x00081F 00:C80F: A0 01     LDY #$01
bra_C811:
C - - - - - 0x000821 00:C811: 88        DEY
C - - - - - 0x000822 00:C812: 10 03     BPL bra_C817
C - - - - - 0x000824 00:C814: A4 00     LDY ram_0000
C - - - - - 0x000826 00:C816: 88        DEY
bra_C817:
C - - - - - 0x000827 00:C817: A9 01     LDA #$01
C - - - - - 0x000829 00:C819: 85 FF     STA ram_00FF
bra_C81B:
C - - - - - 0x00082B 00:C81B: 84 42     STY ram_0042
C - - - - - 0x00082D 00:C81D: E6 49     INC ram_0049
C - - - - - 0x00082F 00:C81F: 60        RTS



ofs_001_C820_02_03:
ofs_001_C820_05_03:
C - - J - - 0x000830 00:C820: 20 3F D1  JSR sub_D13F
C - - - - - 0x000833 00:C823: A9 03     LDA #$03
C - - - - - 0x000835 00:C825: 85 01     STA ram_0001
C - - - - - 0x000837 00:C827: 4A        LSR ; con_C27F_01
C - - - - - 0x000838 00:C828: 85 45     STA ram_0045
C - - - - - 0x00083A 00:C82A: 4A        LSR ; 00
C - - - - - 0x00083B 00:C82B: 85 00     STA ram_0000
C - - - - - 0x00083D 00:C82D: 85 4B     STA ram_004B
C - - - - - 0x00083F 00:C82F: A0 EF     LDY #$EF
bra_C831_loop:
C - - - - - 0x000841 00:C831: 91 00     STA (ram_0000),Y
C - - - - - 0x000843 00:C833: 88        DEY
C - - - - - 0x000844 00:C834: C0 40     CPY #$40
C - - - - - 0x000846 00:C836: B0 F9     BCS bra_C831_loop
C - - - - - 0x000848 00:C838: A2 7F     LDX #$7F
bra_C83A_loop:
C - - - - - 0x00084A 00:C83A: A9 3B     LDA #$3B
C - - - - - 0x00084C 00:C83C: 9D 00 04  STA ram_0400,X
C - - - - - 0x00084F 00:C83F: A9 3D     LDA #$3D
C - - - - - 0x000851 00:C841: 9D 80 04  STA ram_0480,X
C - - - - - 0x000854 00:C844: 9D 00 05  STA ram_0500,X
C - - - - - 0x000857 00:C847: CA        DEX
C - - - - - 0x000858 00:C848: 10 F0     BPL bra_C83A_loop
C - - - - - 0x00085A 00:C84A: A9 BF     LDA #$BF
C - - - - - 0x00085C 00:C84C: 8D 00 02  STA ram_spr_Y
C - - - - - 0x00085F 00:C84F: A9 F7     LDA #$F7
C - - - - - 0x000861 00:C851: 8D 03 02  STA ram_spr_X
C - - - - - 0x000864 00:C854: A9 FF     LDA #$FF
C - - - - - 0x000866 00:C856: 8D 01 02  STA ram_spr_T
C - - - - - 0x000869 00:C859: A9 3F     LDA #$3F
C - - - - - 0x00086B 00:C85B: 85 E8     STA ram_00E8
C - - - - - 0x00086D 00:C85D: 4A        LSR
C - - - - - 0x00086E 00:C85E: 85 E9     STA ram_00E9
C - - - - - 0x000870 00:C860: A9 0A     LDA #$0A
C - - - - - 0x000872 00:C862: 85 EB     STA ram_00EB
C - - - - - 0x000874 00:C864: A9 25     LDA #$25
C - - - - - 0x000876 00:C866: 85 EA     STA ram_00EA
C - - - - - 0x000878 00:C868: 60        RTS



ofs_001_C869_02_02:
ofs_001_C869_07_01:
ofs_001_C869_05_02:
; clear 004D-00EF
; bzk optimize
C - - J - - 0x000879 00:C869: A9 00     LDA #$00
C - - - - - 0x00087B 00:C86B: A2 EF     LDX #$EF
bra_C86D_loop:
C - - - - - 0x00087D 00:C86D: 95 00     STA ram_0000,X
C - - - - - 0x00087F 00:C86F: CA        DEX
C - - - - - 0x000880 00:C870: E0 4C     CPX #$4C
C - - - - - 0x000882 00:C872: D0 F9     BNE bra_C86D_loop
C - - - - - 0x000884 00:C874: 60        RTS



ofs_001_C875_02_06:
C - - J - - 0x000885 00:C875: E6 47     INC ram_0047
C - - - - - 0x000887 00:C877: E6 40     INC ram_0040
C - - - - - 0x000889 00:C879: A5 34     LDA ram_0034
C - - - - - 0x00088B 00:C87B: D0 02     BNE bra_C87F
C - - - - - 0x00088D 00:C87D: A9 05     LDA #$05
bra_C87F:
C - - - - - 0x00088F 00:C87F: 85 34     STA ram_0034
C - - - - - 0x000891 00:C881: A9 34     LDA #$34
C - - - - - 0x000893 00:C883: 85 E8     STA ram_00E8
C - - - - - 0x000895 00:C885: A9 14     LDA #$14
C - - - - - 0x000897 00:C887: 85 E9     STA ram_00E9
C - - - - - 0x000899 00:C889: A9 A0     LDA #$A0
C - - - - - 0x00089B 00:C88B: 8D F1 03  STA ram_03F1
C - - - - - 0x00089E 00:C88E: A9 80     LDA #$80
C - - - - - 0x0008A0 00:C890: 8D B4 03  STA ram_03B4
C - - - - - 0x0008A3 00:C893: 8D B0 03  STA ram_03B0
C - - - - - 0x0008A6 00:C896: A9 FF     LDA #$FF
C - - - - - 0x0008A8 00:C898: 8D BD 03  STA ram_03BD
C - - - - - 0x0008AB 00:C89B: A2 01     LDX #$01
C - - - - - 0x0008AD 00:C89D: 8E 70 03  STX ram_0370
C - - - - - 0x0008B0 00:C8A0: E8        INX ; 02
C - - - - - 0x0008B1 00:C8A1: 8E BE 03  STX ram_03BE
C - - - - - 0x0008B4 00:C8A4: E8        INX ; 03
C - - - - - 0x0008B5 00:C8A5: AD F2 03  LDA ram_03F2
C - - - - - 0x0008B8 00:C8A8: D0 02     BNE bra_C8AC
C - - - - - 0x0008BA 00:C8AA: A2 00     LDX #$00
bra_C8AC:
bra_C8AC_loop:
C - - - - - 0x0008BC 00:C8AC: BD B4 C0  LDA tbl_C0B4,X
C - - - - - 0x0008BF 00:C8AF: 95 B8     STA ram_00B8,X
C - - - - - 0x0008C1 00:C8B1: A9 08     LDA #$08
C - - - - - 0x0008C3 00:C8B3: 95 64     STA ram_0064,X
C - - - - - 0x0008C5 00:C8B5: BD B0 C0  LDA tbl_C0B0,X
C - - - - - 0x0008C8 00:C8B8: 95 E0     STA ram_00E0,X
C - - - - - 0x0008CA 00:C8BA: BD B8 C0  LDA tbl_C0B8,X
C - - - - - 0x0008CD 00:C8BD: 95 80     STA ram_0080,X
C - - - - - 0x0008CF 00:C8BF: A9 06     LDA #$06
C - - - - - 0x0008D1 00:C8C1: 95 AC     STA ram_00AC,X
C - - - - - 0x0008D3 00:C8C3: 95 78     STA ram_0078,X
C - - - - - 0x0008D5 00:C8C5: A9 01     LDA #$01
C - - - - - 0x0008D7 00:C8C7: 95 84     STA ram_0084,X
C - - - - - 0x0008D9 00:C8C9: 95 A8     STA ram_00A8,X
C - - - - - 0x0008DB 00:C8CB: B5 19     LDA ram_0019,X
C - - - - - 0x0008DD 00:C8CD: 4A        LSR
C - - - - - 0x0008DE 00:C8CE: 95 74     STA ram_0074,X
C - - - - - 0x0008E0 00:C8D0: CA        DEX
C - - - - - 0x0008E1 00:C8D1: 10 D9     BPL bra_C8AC_loop
C - - - - - 0x0008E3 00:C8D3: B5 19     LDA ram_0019,X
C - - - - - 0x0008E5 00:C8D5: 29 03     AND #$03
C - - - - - 0x0008E7 00:C8D7: D0 02     BNE bra_C8DB
C - - - - - 0x0008E9 00:C8D9: A9 02     LDA #$02
bra_C8DB:
C - - - - - 0x0008EB 00:C8DB: AA        TAX
C - - - - - 0x0008EC 00:C8DC: 56 78     LSR ram_0078,X
C - - - - - 0x0008EE 00:C8DE: A5 46     LDA ram_0046
C - - - - - 0x0008F0 00:C8E0: F0 20     BEQ bra_C902
C - - - - - 0x0008F2 00:C8E2: A5 43     LDA ram_0043
C - - - - - 0x0008F4 00:C8E4: C9 04     CMP #$04
C - - - - - 0x0008F6 00:C8E6: D0 1A     BNE bra_C902
C - - - - - 0x0008F8 00:C8E8: A2 07     LDX #$07
bra_C8EA_loop:
C - - - - - 0x0008FA 00:C8EA: BD 58 C1  LDA tbl_C158,X
C - - - - - 0x0008FD 00:C8ED: 9D 00 03  STA ram_0300,X
C - - - - - 0x000900 00:C8F0: CA        DEX
C - - - - - 0x000901 00:C8F1: 10 F7     BPL bra_C8EA_loop
C - - - - - 0x000903 00:C8F3: AD F3 03  LDA ram_03F3
C - - - - - 0x000906 00:C8F6: 20 A2 DF  JSR sub_DFA2
C - - - - - 0x000909 00:C8F9: 8D 07 03  STA ram_0307
C - - - - - 0x00090C 00:C8FC: 8A        TXA
C - - - - - 0x00090D 00:C8FD: F0 03     BEQ bra_C902
- - - - - - 0x00090F 00:C8FF: 8D 06 03  STA ram_0306
bra_C902:
C - - - - - 0x000912 00:C902: 20 22 C5  JSR sub_C522
C - - - - - 0x000915 00:C905: A5 41     LDA ram_0041
C - - - - - 0x000917 00:C907: C9 08     CMP #$08
C - - - - - 0x000919 00:C909: 90 03     BCC bra_C90E
C - - - - - 0x00091B 00:C90B: 20 3A C5  JSR sub_C53A
bra_C90E:
C - - - - - 0x00091E 00:C90E: AD F8 03  LDA ram_03F8
C - - - - - 0x000921 00:C911: 0A        ASL
C - - - - - 0x000922 00:C912: 18        CLC
C - - - - - 0x000923 00:C913: 65 06     ADC ram_0006
C - - - - - 0x000925 00:C915: C9 3C     CMP #$3C
C - - - - - 0x000927 00:C917: 90 04     BCC bra_C91D
- - - - - - 0x000929 00:C919: E9 3C     SBC #$3C
- - - - - - 0x00092B 00:C91B: E6 05     INC ram_0005
bra_C91D:
C - - - - - 0x00092D 00:C91D: 85 06     STA ram_0006
C - - - - - 0x00092F 00:C91F: A9 00     LDA #$00
C - - - - - 0x000931 00:C921: 85 07     STA ram_0007
C - - - - - 0x000933 00:C923: A9 02     LDA #$02
C - - - - - 0x000935 00:C925: 85 03     STA ram_0003
C - - - - - 0x000937 00:C927: 20 35 C9  JSR sub_C935
C - - - - - 0x00093A 00:C92A: A9 08     LDA #$08
sub_C92C:
loc_C92C:
C D 2 - - - 0x00093C 00:C92C: A4 43     LDY ram_0043
C - - - - - 0x00093E 00:C92E: 84 02     STY ram_0002
C - - - - - 0x000940 00:C930: 85 03     STA ram_0003
C - - - - - 0x000942 00:C932: 20 3E C5  JSR sub_C53E
sub_C935:
C - - - - - 0x000945 00:C935: A2 05     LDX #$05
C - - - - - 0x000947 00:C937: 20 7F DF  JSR sub_DF7F
C - - - - - 0x00094A 00:C93A: AE 00 03  LDX ram_0300
C - - - - - 0x00094D 00:C93D: A0 00     LDY #$00
bra_C93F_loop:
C - - - - - 0x00094F 00:C93F: B9 D1 03  LDA ram_03D1,Y
C - - - - - 0x000952 00:C942: 9D 04 03  STA ram_0304,X
C - - - - - 0x000955 00:C945: E8        INX
C - - - - - 0x000956 00:C946: C8        INY
C - - - - - 0x000957 00:C947: C0 07     CPY #$07
C - - - - - 0x000959 00:C949: 90 F4     BCC bra_C93F_loop
sub_C94B:
C - - - - - 0x00095B 00:C94B: A9 0A     LDA #$0A
C - - - - - 0x00095D 00:C94D: 20 71 C9  JSR sub_C971
C - - - - - 0x000960 00:C950: A4 03     LDY ram_0003
C - - - - - 0x000962 00:C952: B9 EC C0  LDA tbl_C0EC,Y
C - - - - - 0x000965 00:C955: 9D 01 03  STA ram_0301,X
C - - - - - 0x000968 00:C958: B9 ED C0  LDA tbl_C0EC + $01,Y
C - - - - - 0x00096B 00:C95B: 9D 02 03  STA ram_0302,X
C - - - - - 0x00096E 00:C95E: A9 FB     LDA #$FB
C - - - - - 0x000970 00:C960: 9D 05 03  STA ram_0305,X
C - - - - - 0x000973 00:C963: 9D 08 03  STA ram_0308,X
C - - - - - 0x000976 00:C966: A9 07     LDA #$07
C - - - - - 0x000978 00:C968: 9D 03 03  STA ram_0303,X
C - - - - - 0x00097B 00:C96B: A9 00     LDA #$00
C - - - - - 0x00097D 00:C96D: 9D 0B 03  STA ram_030B,X
C - - - - - 0x000980 00:C970: 60        RTS



sub_C971:
C - - - - - 0x000981 00:C971: AE 00 03  LDX ram_0300
C - - - - - 0x000984 00:C974: 18        CLC
C - - - - - 0x000985 00:C975: 6D 00 03  ADC ram_0300
C - - - - - 0x000988 00:C978: 8D 00 03  STA ram_0300
C - - - - - 0x00098B 00:C97B: 60        RTS



ofs_000_C97C_09:
C - - J - - 0x00098C 00:C97C: 20 1B CA  JSR sub_CA1B
C - - - - - 0x00098F 00:C97F: 20 17 EB  JSR sub_EB17
C - - - - - 0x000992 00:C982: 20 6A DA  JSR sub_DA6A
C - - - - - 0x000995 00:C985: 20 FE DB  JSR sub_DBFE
C - - - - - 0x000998 00:C988: 20 0B E7  JSR sub_E70B
C - - - - - 0x00099B 00:C98B: 20 FF F4  JSR sub_F4FF
C - - - - - 0x00099E 00:C98E: 20 8D F6  JSR sub_F68D
C - - - - - 0x0009A1 00:C991: 20 55 F7  JSR sub_F755
C - - - - - 0x0009A4 00:C994: 20 29 C2  JSR sub_C229
bra_C997:
C - - - - - 0x0009A7 00:C997: 4C 9B D1  JMP loc_D19B



ofs_000_C99A_02:
ofs_000_C99A_05:
ofs_000_C99A_0A:
C - - J - - 0x0009AA 00:C99A: 20 08 CA  JSR sub_CA08
C - - - - - 0x0009AD 00:C99D: AD B1 03  LDA ram_pause_flag
C - - - - - 0x0009B0 00:C9A0: 0D B2 03  ORA ram_pause_timer
C - - - - - 0x0009B3 00:C9A3: D0 F2     BNE bra_C997
C - - - - - 0x0009B5 00:C9A5: 20 18 D9  JSR sub_D918
C - - - - - 0x0009B8 00:C9A8: 20 8D DD  JSR sub_DD8D
C - - - - - 0x0009BB 00:C9AB: 20 33 E7  JSR sub_E733
C - - - - - 0x0009BE 00:C9AE: 20 27 E9  JSR sub_E927
C - - - - - 0x0009C1 00:C9B1: A5 52     LDA ram_0052
C - - - - - 0x0009C3 00:C9B3: F0 06     BEQ bra_C9BB
C - - - - - 0x0009C5 00:C9B5: 20 9B CA  JSR sub_CA9B
C - - - - - 0x0009C8 00:C9B8: 4C D5 C9  JMP loc_C9D5
bra_C9BB:
C - - - - - 0x0009CB 00:C9BB: AD F2 03  LDA ram_03F2
C - - - - - 0x0009CE 00:C9BE: F0 09     BEQ bra_C9C9
C - - - - - 0x0009D0 00:C9C0: 20 9F DA  JSR sub_DA9F
C - - - - - 0x0009D3 00:C9C3: 20 C4 DB  JSR sub_DBC4
C - - - - - 0x0009D6 00:C9C6: 20 BB DE  JSR sub_DEBB
bra_C9C9:
C - - - - - 0x0009D9 00:C9C9: 20 30 DF  JSR sub_DF30
C - - - - - 0x0009DC 00:C9CC: 20 C5 EA  JSR sub_EAC5
C - - - - - 0x0009DF 00:C9CF: 20 D5 DF  JSR sub_DFD5
C - - - - - 0x0009E2 00:C9D2: 20 9F E0  JSR sub_E09F
loc_C9D5:
C D 2 - - - 0x0009E5 00:C9D5: 20 D1 DD  JSR sub_DDD1
C - - - - - 0x0009E8 00:C9D8: 20 1F CD  JSR sub_CD1F
C - - - - - 0x0009EB 00:C9DB: 20 6C E9  JSR sub_E96C
C - - - - - 0x0009EE 00:C9DE: 20 31 DE  JSR sub_DE31
C - - - - - 0x0009F1 00:C9E1: 20 36 E8  JSR sub_E836
C - - - - - 0x0009F4 00:C9E4: 20 44 EA  JSR sub_EA44
C - - - - - 0x0009F7 00:C9E7: 20 FF F4  JSR sub_F4FF
C - - - - - 0x0009FA 00:C9EA: 20 C8 E4  JSR sub_E4C8
C - - - - - 0x0009FD 00:C9ED: 20 E2 DE  JSR sub_DEE2
C - - - - - 0x000A00 00:C9F0: 20 59 E3  JSR sub_E359
C - - - - - 0x000A03 00:C9F3: 20 7F E1  JSR sub_E17F
C - - - - - 0x000A06 00:C9F6: 20 56 E4  JSR sub_E456
C - - - - - 0x000A09 00:C9F9: 20 26 DA  JSR sub_DA26
C - - - - - 0x000A0C 00:C9FC: 20 0B E7  JSR sub_E70B
C - - - - - 0x000A0F 00:C9FF: 20 9B D1  JSR sub_D19B
C - - - - - 0x000A12 00:CA02: 20 D0 CE  JSR sub_CED0
C - - - - - 0x000A15 00:CA05: 4C 2B E4  JMP loc_E42B



sub_CA08:
C - - - - - 0x000A18 00:CA08: A2 03     LDX #$03
bra_CA0A_loop:
C - - - - - 0x000A1A 00:CA0A: 20 A0 DC  JSR sub_DCA0
C - - - - - 0x000A1D 00:CA0D: 20 B2 DF  JSR sub_DFB2
C - - - - - 0x000A20 00:CA10: CA        DEX
C - - - - - 0x000A21 00:CA11: 10 F7     BPL bra_CA0A_loop
C - - - - - 0x000A23 00:CA13: AD F7 03  LDA ram_03F7
C - - - - - 0x000A26 00:CA16: D0 08     BNE bra_CA20
C - - - - - 0x000A28 00:CA18: 20 38 CA  JSR sub_CA38_pause_and_unpause
sub_CA1B:
C - - - - - 0x000A2B 00:CA1B: A5 14     LDA ram_btn_hold
C - - - - - 0x000A2D 00:CA1D: 85 5C     STA ram_005C
C - - - - - 0x000A2F 00:CA1F: 60        RTS
bra_CA20:
- - - - - - 0x000A30 00:CA20: AD F7 03  LDA ram_03F7
- - - - - - 0x000A33 00:CA23: F0 5F     BEQ bra_CA84_RTS
- - - - - - 0x000A35 00:CA25: A5 15     LDA ram_btn_press
- - - - - - 0x000A37 00:CA27: 0A        ASL
- - - - - - 0x000A38 00:CA28: 0A        ASL
- - - - - - 0x000A39 00:CA29: 0A        ASL
- - - - - - 0x000A3A 00:CA2A: B0 59     BCS bra_CA85
- - - - - - 0x000A3C 00:CA2C: 0A        ASL
- - - - - - 0x000A3D 00:CA2D: 90 55     BCC bra_CA84_RTS
- - - - - - 0x000A3F 00:CA2F: A9 00     LDA #$00
- - - - - - 0x000A41 00:CA31: 85 42     STA ram_0042
- - - - - - 0x000A43 00:CA33: 85 47     STA ram_0047
- - - - - - 0x000A45 00:CA35: 4C 6A C3  JMP loc_C36A



sub_CA38_pause_and_unpause:
C - - - - - 0x000A48 00:CA38: AD B2 03  LDA ram_pause_timer
C - - - - - 0x000A4B 00:CA3B: D0 26     BNE bra_CA63
C - - - - - 0x000A4D 00:CA3D: A5 15     LDA ram_btn_press
C - - - - - 0x000A4F 00:CA3F: 29 10     AND #con_btn_Start
C - - - - - 0x000A51 00:CA41: F0 24     BEQ bra_CA67
- - - - - - 0x000A53 00:CA43: AD B0 03  LDA ram_03B0
- - - - - - 0x000A56 00:CA46: D0 1F     BNE bra_CA67
- - - - - - 0x000A58 00:CA48: A9 80     LDA #$80
- - - - - - 0x000A5A 00:CA4A: 85 FB     STA ram_00FB
- - - - - - 0x000A5C 00:CA4C: 8D B0 03  STA ram_03B0
- - - - - - 0x000A5F 00:CA4F: 0A        ASL
- - - - - - 0x000A60 00:CA50: 85 FC     STA ram_00FC
- - - - - - 0x000A62 00:CA52: AD B1 03  LDA ram_pause_flag
- - - - - - 0x000A65 00:CA55: 49 01     EOR #$01
- - - - - - 0x000A67 00:CA57: 8D B1 03  STA ram_pause_flag
- - - - - - 0x000A6A 00:CA5A: D0 23     BNE bra_CA7F
- - - - - - 0x000A6C 00:CA5C: A9 0F     LDA #$0F
- - - - - - 0x000A6E 00:CA5E: 8D 15 40  STA $4015
- - - - - - 0x000A71 00:CA61: D0 1C     BNE bra_CA7F    ; jmp
bra_CA63:
- - - - - - 0x000A73 00:CA63: CE B2 03  DEC ram_pause_timer
- - - - - - 0x000A76 00:CA66: 60        RTS
bra_CA67:
C - - - - - 0x000A77 00:CA67: 8D B0 03  STA ram_03B0
C - - - - - 0x000A7A 00:CA6A: AD B1 03  LDA ram_pause_flag
C - - - - - 0x000A7D 00:CA6D: F0 15     BEQ bra_CA84_RTS
- - - - - - 0x000A7F 00:CA6F: A9 00     LDA #$00
- - - - - - 0x000A81 00:CA71: 8D 15 40  STA $4015
- - - - - - 0x000A84 00:CA74: A5 15     LDA ram_btn_press
- - - - - - 0x000A86 00:CA76: 29 0F     AND #con_btns_Dpad
- - - - - - 0x000A88 00:CA78: F0 0A     BEQ bra_CA84_RTS
- - - - - - 0x000A8A 00:CA7A: AD B2 03  LDA ram_pause_timer
- - - - - - 0x000A8D 00:CA7D: D0 05     BNE bra_CA84_RTS
bra_CA7F:
- - - - - - 0x000A8F 00:CA7F: A9 28     LDA #$28
- - - - - - 0x000A91 00:CA81: 8D B2 03  STA ram_pause_timer
bra_CA84_RTS:
C - - - - - 0x000A94 00:CA84: 60        RTS



bra_CA85:
loc_CA85:
C D 2 - - - 0x000A95 00:CA85: A5 42     LDA ram_0042
C - - - - - 0x000A97 00:CA87: 48        PHA
C - - - - - 0x000A98 00:CA88: A2 FF     LDX #$FF
C - - - - - 0x000A9A 00:CA8A: A9 00     LDA #$00
bra_CA8C_loop:
C - - - - - 0x000A9C 00:CA8C: 95 00     STA ram_0000,X
C - - - - - 0x000A9E 00:CA8E: CA        DEX
C - - - - - 0x000A9F 00:CA8F: E0 20     CPX #$20
C - - - - - 0x000AA1 00:CA91: D0 F9     BNE bra_CA8C_loop
C - - - - - 0x000AA3 00:CA93: 85 FC     STA ram_00FC
C - - - - - 0x000AA5 00:CA95: E6 49     INC ram_0049
C - - - - - 0x000AA7 00:CA97: 68        PLA
C - - - - - 0x000AA8 00:CA98: 85 42     STA ram_0042
C - - - - - 0x000AAA 00:CA9A: 60        RTS



sub_CA9B:
C - - - - - 0x000AAB 00:CA9B: A5 32     LDA ram_0032
C - - - - - 0x000AAD 00:CA9D: D0 0B     BNE bra_CAAA
C - - - - - 0x000AAF 00:CA9F: 20 AF C3  JSR sub_C3AF
C - - - - - 0x000AB2 00:CAA2: AD F7 03  LDA ram_03F7
C - - - - - 0x000AB5 00:CAA5: D0 DE     BNE bra_CA85
C - - - - - 0x000AB7 00:CAA7: 85 47     STA ram_0047
bra_CAA9_RTS:
C - - - - - 0x000AB9 00:CAA9: 60        RTS
bra_CAAA:
C - - - - - 0x000ABA 00:CAAA: A9 00     LDA #$00
C - - - - - 0x000ABC 00:CAAC: 85 FC     STA ram_00FC
C - - - - - 0x000ABE 00:CAAE: 8D A9 03  STA ram_03A9
C - - - - - 0x000AC1 00:CAB1: 8D E0 03  STA ram_03E0
C - - - - - 0x000AC4 00:CAB4: 85 3C     STA ram_003C
C - - - - - 0x000AC6 00:CAB6: A6 52     LDX ram_0052
C - - - - - 0x000AC8 00:CAB8: CA        DEX
C - - - - - 0x000AC9 00:CAB9: D0 EE     BNE bra_CAA9_RTS
C - - - - - 0x000ACB 00:CABB: A5 3F     LDA ram_003F
C - - - - - 0x000ACD 00:CABD: 4A        LSR
C - - - - - 0x000ACE 00:CABE: B0 33     BCS bra_CAF3
C - - - - - 0x000AD0 00:CAC0: 4A        LSR
C - - - - - 0x000AD1 00:CAC1: B0 30     BCS bra_CAF3
C - - - - - 0x000AD3 00:CAC3: 29 03     AND #$03
C - - - - - 0x000AD5 00:CAC5: A8        TAY
C - - - - - 0x000AD6 00:CAC6: A9 3F     LDA #$3F
C - - - - - 0x000AD8 00:CAC8: 8D 12 03  STA ram_0312
C - - - - - 0x000ADB 00:CACB: A9 00     LDA #$00
C - - - - - 0x000ADD 00:CACD: 8D 13 03  STA ram_0313
C - - - - - 0x000AE0 00:CAD0: 8D 19 03  STA ram_0319
C - - - - - 0x000AE3 00:CAD3: A9 04     LDA #$04
C - - - - - 0x000AE5 00:CAD5: 8D 14 03  STA ram_0314
C - - - - - 0x000AE8 00:CAD8: B9 66 C1  LDA tbl_C166,Y
C - - - - - 0x000AEB 00:CADB: 8D 16 03  STA ram_0316
C - - - - - 0x000AEE 00:CADE: B9 70 C1  LDA tbl_C170,Y
C - - - - - 0x000AF1 00:CAE1: 8D 18 03  STA ram_0318
C - - - - - 0x000AF4 00:CAE4: A4 43     LDY ram_0043
C - - - - - 0x000AF6 00:CAE6: B9 60 C1  LDA tbl_C160,Y
C - - - - - 0x000AF9 00:CAE9: 8D 15 03  STA ram_0315
C - - - - - 0x000AFC 00:CAEC: B9 6A C1  LDA tbl_C16A,Y
C - - - - - 0x000AFF 00:CAEF: 8D 17 03  STA ram_0317
C - - - - - 0x000B02 00:CAF2: 60        RTS
bra_CAF3:
C - - - - - 0x000B03 00:CAF3: A2 11     LDX #$11
C - - - - - 0x000B05 00:CAF5: A5 32     LDA ram_0032
C - - - - - 0x000B07 00:CAF7: 4A        LSR
C - - - - - 0x000B08 00:CAF8: B0 0B     BCS bra_CB05_RTS
loc_CAFA:
C D 2 - - - 0x000B0A 00:CAFA: A0 06     LDY #$06
C - - - - - 0x000B0C 00:CAFC: A9 FE     LDA #$FE
bra_CAFE_loop:
C - - - - - 0x000B0E 00:CAFE: 9D 04 03  STA ram_0304,X
C - - - - - 0x000B11 00:CB01: E8        INX
C - - - - - 0x000B12 00:CB02: 88        DEY
C - - - - - 0x000B13 00:CB03: 10 F9     BPL bra_CAFE_loop
bra_CB05_RTS:
C - - - - - 0x000B15 00:CB05: 60        RTS



sub_CB06:
C - - - - - 0x000B16 00:CB06: 20 13 CB  JSR sub_CB13
C - - - - - 0x000B19 00:CB09: AC F2 03  LDY ram_03F2
C - - - - - 0x000B1C 00:CB0C: F0 03     BEQ bra_CB11
C - - - - - 0x000B1E 00:CB0E: 18        CLC
C - - - - - 0x000B1F 00:CB0F: 69 23     ADC #$23
bra_CB11:
C - - - - - 0x000B21 00:CB11: A8        TAY
C - - - - - 0x000B22 00:CB12: 60        RTS



sub_CB13:
C - - - - - 0x000B23 00:CB13: A9 20     LDA #$20
C - - - - - 0x000B25 00:CB15: A4 02     LDY ram_0002
C - - - - - 0x000B27 00:CB17: C0 05     CPY #$05
C - - - - - 0x000B29 00:CB19: F0 10     BEQ bra_CB2B_RTS
C - - - - - 0x000B2B 00:CB1B: A9 00     LDA #$00
bra_CB1D_loop:
C - - - - - 0x000B2D 00:CB1D: 88        DEY
C - - - - - 0x000B2E 00:CB1E: 30 05     BMI bra_CB25
C - - - - - 0x000B30 00:CB20: 18        CLC
C - - - - - 0x000B31 00:CB21: 69 03     ADC #$03
C - - - - - 0x000B33 00:CB23: D0 F8     BNE bra_CB1D_loop
bra_CB25:
C - - - - - 0x000B35 00:CB25: A4 46     LDY ram_0046
C - - - - - 0x000B37 00:CB27: F0 02     BEQ bra_CB2B_RTS
C - - - - - 0x000B39 00:CB29: 09 10     ORA #$10
bra_CB2B_RTS:
C - - - - - 0x000B3B 00:CB2B: 60        RTS



ofs_000_CB2C_03:
ofs_000_CB2C_06:
ofs_000_CB2C_0B:
C - - J - - 0x000B3C 00:CB2C: A4 44     LDY ram_0044
C - - - - - 0x000B3E 00:CB2E: B9 2C C1  LDA tbl_C12C_lo,Y
C - - - - - 0x000B41 00:CB31: 85 00     STA ram_0000
C - - - - - 0x000B43 00:CB33: B9 30 C1  LDA tbl_C130_hi,Y
loc_CB36:
C D 2 - - - 0x000B46 00:CB36: 85 01     STA ram_0001
C - - - - - 0x000B48 00:CB38: 6C 00 00  JMP (ram_0000)



ofs_CB3B_00:
C - - J - - 0x000B4B 00:CB3B: A5 41     LDA ram_0041
C - - - - - 0x000B4D 00:CB3D: C9 08     CMP #$08
C - - - - - 0x000B4F 00:CB3F: B0 32     BCS bra_CB73
C - - - - - 0x000B51 00:CB41: AD F2 03  LDA ram_03F2
C - - - - - 0x000B54 00:CB44: 85 42     STA ram_0042
C - - - - - 0x000B56 00:CB46: A5 53     LDA ram_0053
C - - - - - 0x000B58 00:CB48: C9 04     CMP #$04
C - - - - - 0x000B5A 00:CB4A: B0 27     BCS bra_CB73
C - - - - - 0x000B5C 00:CB4C: A5 46     LDA ram_0046
C - - - - - 0x000B5E 00:CB4E: F0 1D     BEQ bra_CB6D
C - - - - - 0x000B60 00:CB50: A5 43     LDA ram_0043
C - - - - - 0x000B62 00:CB52: C9 04     CMP #$04
C - - - - - 0x000B64 00:CB54: D0 13     BNE bra_CB69
C - - - - - 0x000B66 00:CB56: EE F3 03  INC ram_03F3
C - - - - - 0x000B69 00:CB59: AD F3 03  LDA ram_03F3
C - - - - - 0x000B6C 00:CB5C: 4A        LSR
C - - - - - 0x000B6D 00:CB5D: B0 0E     BCS bra_CB6D
C - - - - - 0x000B6F 00:CB5F: AD F8 03  LDA ram_03F8
C - - - - - 0x000B72 00:CB62: 4A        LSR
C - - - - - 0x000B73 00:CB63: F0 08     BEQ bra_CB6D
C - - - - - 0x000B75 00:CB65: 8D F8 03  STA ram_03F8
C - - - - - 0x000B78 00:CB68: 38        SEC
bra_CB69:
C - - - - - 0x000B79 00:CB69: B0 02     BCS bra_CB6D
C - - - - - 0x000B7B 00:CB6B: E6 43     INC ram_0043
bra_CB6D:
C - - - - - 0x000B7D 00:CB6D: A9 01     LDA #$01
C - - - - - 0x000B7F 00:CB6F: 85 46     STA ram_0046
C - - - - - 0x000B81 00:CB71: 85 4B     STA ram_004B
bra_CB73:
C - - - - - 0x000B83 00:CB73: A9 04     LDA #$04
C - - - - - 0x000B85 00:CB75: D0 28     BNE bra_CB9F    ; jmp



ofs_CB77_01:
C - - J - - 0x000B87 00:CB77: A4 33     LDY ram_0033
C - - - - - 0x000B89 00:CB79: D0 28     BNE bra_CBA3_RTS
C - - - - - 0x000B8B 00:CB7B: A9 04     LDA #$04
C - - - - - 0x000B8D 00:CB7D: 85 03     STA ram_0003
C - - - - - 0x000B8F 00:CB7F: AE 00 03  LDX ram_0300
bra_CB82_loop:
C - - - - - 0x000B92 00:CB82: B9 D9 03  LDA ram_03D9,Y
C - - - - - 0x000B95 00:CB85: 9D 04 03  STA ram_0304,X
C - - - - - 0x000B98 00:CB88: E8        INX
C - - - - - 0x000B99 00:CB89: C8        INY
C - - - - - 0x000B9A 00:CB8A: C0 07     CPY #$07
C - - - - - 0x000B9C 00:CB8C: D0 F4     BNE bra_CB82_loop
C - - - - - 0x000B9E 00:CB8E: 20 4B C9  JSR sub_C94B
C - - - - - 0x000BA1 00:CB91: A9 20     LDA #$20
C - - - - - 0x000BA3 00:CB93: A6 4B     LDX ram_004B
C - - - - - 0x000BA5 00:CB95: D0 02     BNE bra_CB99
C - - - - - 0x000BA7 00:CB97: A9 31     LDA #$31
bra_CB99:
C - - - - - 0x000BA9 00:CB99: 8D AD 03  STA ram_03AD
C - - - - - 0x000BAC 00:CB9C: 18        CLC
C - - - - - 0x000BAD 00:CB9D: 69 03     ADC #$03
bra_CB9F:
C - - - - - 0x000BAF 00:CB9F: 85 33     STA ram_0033
C - - - - - 0x000BB1 00:CBA1: E6 44     INC ram_0044
bra_CBA3_RTS:
C - - - - - 0x000BB3 00:CBA3: 60        RTS



ofs_CBA4_02:
C - - J - - 0x000BB4 00:CBA4: A5 33     LDA ram_0033
; bzk optimize, branch to 0x000BB1
C - - - - - 0x000BB6 00:CBA6: F0 F7     BEQ bra_CB9F
C - - - - - 0x000BB8 00:CBA8: CD AD 03  CMP ram_03AD
C - - - - - 0x000BBB 00:CBAB: F0 1C     BEQ bra_CBC9
C - - - - - 0x000BBD 00:CBAD: B0 F4     BCS bra_CBA3_RTS
C - - - - - 0x000BBF 00:CBAF: A5 4B     LDA ram_004B
C - - - - - 0x000BC1 00:CBB1: D0 06     BNE bra_CBB9
C - - - - - 0x000BC3 00:CBB3: A5 14     LDA ram_btn_hold
C - - - - - 0x000BC5 00:CBB5: 29 F0     AND #con_btns_ABSS
C - - - - - 0x000BC7 00:CBB7: D0 06     BNE bra_CBBF
bra_CBB9:
C - - - - - 0x000BC9 00:CBB9: 20 15 CC  JSR sub_CC15
C - - - - - 0x000BCC 00:CBBC: 4C 7D CC  JMP loc_CC7D
bra_CBBF:
C - - - - - 0x000BCF 00:CBBF: 20 6B CC  JSR sub_CC6B
C - - - - - 0x000BD2 00:CBC2: A5 41     LDA ram_0041
C - - - - - 0x000BD4 00:CBC4: D0 DD     BNE bra_CBA3_RTS
C - - - - - 0x000BD6 00:CBC6: 4C AF C3  JMP loc_C3AF
bra_CBC9:
C - - - - - 0x000BD9 00:CBC9: A5 20     LDA ram_0020
C - - - - - 0x000BDB 00:CBCB: D0 D6     BNE bra_CBA3_RTS
C - - - - - 0x000BDD 00:CBCD: A2 03     LDX #$03
C - - - - - 0x000BDF 00:CBCF: 86 2F     STX ram_002F
C - - - - - 0x000BE1 00:CBD1: 86 0D     STX ram_000D
C - - - - - 0x000BE3 00:CBD3: CA        DEX
bra_CBD4_loop:
C - - - - - 0x000BE4 00:CBD4: BD DE C0  LDA tbl_C0DE,X
C - - - - - 0x000BE7 00:CBD7: 85 01     STA ram_0001
C - - - - - 0x000BE9 00:CBD9: BD E2 C0  LDA tbl_C0E2,X
C - - - - - 0x000BEC 00:CBDC: 85 02     STA ram_0002
C - - - - - 0x000BEE 00:CBDE: BD E5 C0  LDA tbl_C0E5,X
C - - - - - 0x000BF1 00:CBE1: 85 0B     STA ram_000B
C - - - - - 0x000BF3 00:CBE3: 20 CA CC  JSR sub_CCCA
C - - - - - 0x000BF6 00:CBE6: CA        DEX
C - - - - - 0x000BF7 00:CBE7: 10 EB     BPL bra_CBD4_loop
C - - - - - 0x000BF9 00:CBE9: A9 01     LDA #$01
C - - - - - 0x000BFB 00:CBEB: A6 53     LDX ram_0053
C - - - - - 0x000BFD 00:CBED: CA        DEX
C - - - - - 0x000BFE 00:CBEE: 86 00     STX ram_0000
C - - - - - 0x000C00 00:CBF0: E0 03     CPX #$03
C - - - - - 0x000C02 00:CBF2: B0 04     BCS bra_CBF8
C - - - - - 0x000C04 00:CBF4: 86 0D     STX ram_000D
C - - - - - 0x000C06 00:CBF6: A9 02     LDA #$02
bra_CBF8:
C - - - - - 0x000C08 00:CBF8: 85 FB     STA ram_00FB
C - - - - - 0x000C0A 00:CBFA: 49 02     EOR #$02
C - - - - - 0x000C0C 00:CBFC: 85 56     STA ram_0056
C - - - - - 0x000C0E 00:CBFE: A6 0D     LDX ram_000D
C - - - - - 0x000C10 00:CC00: BD DA C0  LDA tbl_C0DA,X
C - - - - - 0x000C13 00:CC03: 85 54     STA ram_0054
C - - - - - 0x000C15 00:CC05: BD DE C0  LDA tbl_C0DE,X
C - - - - - 0x000C18 00:CC08: 85 55     STA ram_0055
C - - - - - 0x000C1A 00:CC0A: 8D F1 03  STA ram_03F1
C - - - - - 0x000C1D 00:CC0D: A5 00     LDA ram_0000
C - - - - - 0x000C1F 00:CC0F: D0 59     BNE bra_CC6A_RTS
C - - - - - 0x000C21 00:CC11: A9 0A     LDA #con_C27F_0A
C - - - - - 0x000C23 00:CC13: D0 1A     BNE bra_CC2F    ; jmp



sub_CC15:
C - - - - - 0x000C25 00:CC15: AD AD 03  LDA ram_03AD
C - - - - - 0x000C28 00:CC18: 38        SEC
C - - - - - 0x000C29 00:CC19: E9 10     SBC #$10
C - - - - - 0x000C2B 00:CC1B: C5 33     CMP ram_0033
C - - - - - 0x000C2D 00:CC1D: D0 13     BNE bra_CC32
C - - - - - 0x000C2F 00:CC1F: A5 20     LDA ram_0020
C - - - - - 0x000C31 00:CC21: D0 0F     BNE bra_CC32
C - - - - - 0x000C33 00:CC23: A9 0D     LDA #con_C27F_0D
C - - - - - 0x000C35 00:CC25: A4 52     LDY ram_0052
C - - - - - 0x000C37 00:CC27: 88        DEY
C - - - - - 0x000C38 00:CC28: D0 05     BNE bra_CC2F
C - - - - - 0x000C3A 00:CC2A: A5 4B     LDA ram_004B
C - - - - - 0x000C3C 00:CC2C: 18        CLC
; con_C27F_0B
; con_C27F_0C
C - - - - - 0x000C3D 00:CC2D: 69 0B     ADC #$0B
bra_CC2F:
C - - - - - 0x000C3F 00:CC2F: 85 45     STA ram_0045
C - - - - - 0x000C41 00:CC31: 60        RTS
bra_CC32:
C - - - - - 0x000C42 00:CC32: A9 07     LDA #$07
C - - - - - 0x000C44 00:CC34: A8        TAY
C - - - - - 0x000C45 00:CC35: 20 71 C9  JSR sub_C971
C - - - - - 0x000C48 00:CC38: 86 05     STX ram_0005
bra_CC3A_loop:
C - - - - - 0x000C4A 00:CC3A: B9 34 C1  LDA tbl_C134,Y
C - - - - - 0x000C4D 00:CC3D: 9D 01 03  STA ram_0301,X
C - - - - - 0x000C50 00:CC40: E8        INX
C - - - - - 0x000C51 00:CC41: 88        DEY
C - - - - - 0x000C52 00:CC42: 10 F6     BPL bra_CC3A_loop
C - - - - - 0x000C54 00:CC44: A5 3F     LDA ram_003F
C - - - - - 0x000C56 00:CC46: 29 10     AND #$10
C - - - - - 0x000C58 00:CC48: D0 20     BNE bra_CC6A_RTS
C - - - - - 0x000C5A 00:CC4A: A4 05     LDY ram_0005
C - - - - - 0x000C5C 00:CC4C: A5 53     LDA ram_0053
C - - - - - 0x000C5E 00:CC4E: 20 A2 DF  JSR sub_DFA2
C - - - - - 0x000C61 00:CC51: 99 07 03  STA ram_0307,Y
C - - - - - 0x000C64 00:CC54: 8A        TXA
C - - - - - 0x000C65 00:CC55: 20 A2 DF  JSR sub_DFA2
C - - - - - 0x000C68 00:CC58: 85 00     STA ram_0000
C - - - - - 0x000C6A 00:CC5A: 8A        TXA
C - - - - - 0x000C6B 00:CC5B: D0 05     BNE bra_CC62
C - - - - - 0x000C6D 00:CC5D: A5 00     LDA ram_0000
C - - - - - 0x000C6F 00:CC5F: D0 04     BNE bra_CC65
C - - - - - 0x000C71 00:CC61: 60        RTS
bra_CC62:
- - - - - - 0x000C72 00:CC62: 99 05 03  STA ram_0305,Y
bra_CC65:
C - - - - - 0x000C75 00:CC65: A5 00     LDA ram_0000
C - - - - - 0x000C77 00:CC67: 99 06 03  STA ram_0306,Y
bra_CC6A_RTS:
C - - - - - 0x000C7A 00:CC6A: 60        RTS



loc_CC6B:
sub_CC6B:
ofs_CC6B_03:
C D 2 J - - 0x000C7B 00:CC6B: 20 AF C3  JSR sub_C3AF
C - - - - - 0x000C7E 00:CC6E: A5 4B     LDA ram_004B
C - - - - - 0x000C80 00:CC70: D0 0A     BNE bra_CC7C_RTS
C - - - - - 0x000C82 00:CC72: A4 41     LDY ram_0041
C - - - - - 0x000C84 00:CC74: C0 09     CPY #$09
C - - - - - 0x000C86 00:CC76: 90 02     BCC bra_CC7A
C - - - - - 0x000C88 00:CC78: A9 08     LDA #$08
bra_CC7A:
C - - - - - 0x000C8A 00:CC7A: 85 41     STA ram_0041
bra_CC7C_RTS:
C - - - - - 0x000C8C 00:CC7C: 60        RTS



loc_CC7D:
C D 2 - - - 0x000C8D 00:CC7D: A5 55     LDA ram_0055
C - - - - - 0x000C8F 00:CC7F: 85 01     STA ram_0001
C - - - - - 0x000C91 00:CC81: A5 56     LDA ram_0056
C - - - - - 0x000C93 00:CC83: D0 34     BNE bra_CCB9
C - - - - - 0x000C95 00:CC85: A5 2F     LDA ram_002F
C - - - - - 0x000C97 00:CC87: F0 1A     BEQ bra_CCA3
C - - - - - 0x000C99 00:CC89: A9 1F     LDA #$1F
C - - - - - 0x000C9B 00:CC8B: 8D 80 03  STA ram_0380
C - - - - - 0x000C9E 00:CC8E: 8D 8C 03  STA ram_038C
C - - - - - 0x000CA1 00:CC91: A9 AF     LDA #$AF
C - - - - - 0x000CA3 00:CC93: 8D 78 03  STA ram_0378
C - - - - - 0x000CA6 00:CC96: A9 01     LDA #$01
C - - - - - 0x000CA8 00:CC98: 8D 7C 03  STA ram_037C
C - - - - - 0x000CAB 00:CC9B: 4A        LSR
C - - - - - 0x000CAC 00:CC9C: 8D 84 03  STA ram_0384
C - - - - - 0x000CAF 00:CC9F: A0 BD     LDY #$BD
C - - - - - 0x000CB1 00:CCA1: D0 18     BNE bra_CCBB
bra_CCA3:
C - - - - - 0x000CB3 00:CCA3: A2 00     LDX #$00
C - - - - - 0x000CB5 00:CCA5: 20 6F DD  JSR sub_DD6F
C - - - - - 0x000CB8 00:CCA8: 85 55     STA ram_0055
C - - - - - 0x000CBA 00:CCAA: 85 01     STA ram_0001
C - - - - - 0x000CBC 00:CCAC: AD F1 03  LDA ram_03F1
C - - - - - 0x000CBF 00:CCAF: C5 55     CMP ram_0055
C - - - - - 0x000CC1 00:CCB1: B0 06     BCS bra_CCB9
C - - - - - 0x000CC3 00:CCB3: 85 55     STA ram_0055
C - - - - - 0x000CC5 00:CCB5: A9 0A     LDA #$0A
C - - - - - 0x000CC7 00:CCB7: 85 2F     STA ram_002F
bra_CCB9:
C - - - - - 0x000CC9 00:CCB9: A0 BB     LDY #$BB
bra_CCBB:
C - - - - - 0x000CCB 00:CCBB: 84 02     STY ram_0002
C - - - - - 0x000CCD 00:CCBD: A6 53     LDX ram_0053
C - - - - - 0x000CCF 00:CCBF: CA        DEX
C - - - - - 0x000CD0 00:CCC0: E0 03     CPX #$03
C - - - - - 0x000CD2 00:CCC2: 90 02     BCC bra_CCC6
C - - - - - 0x000CD4 00:CCC4: A2 03     LDX #$03
bra_CCC6:
C - - - - - 0x000CD6 00:CCC6: A9 02     LDA #$02
C - - - - - 0x000CD8 00:CCC8: 85 0B     STA ram_000B
sub_CCCA:
C - - - - - 0x000CDA 00:CCCA: BD DA C0  LDA tbl_C0DA,X
C - - - - - 0x000CDD 00:CCCD: 85 00     STA ram_0000
C - - - - - 0x000CDF 00:CCCF: A9 21     LDA #$21
C - - - - - 0x000CE1 00:CCD1: 85 03     STA ram_0003
C - - - - - 0x000CE3 00:CCD3: BD E8 C0  LDA tbl_C0E8,X
C - - - - - 0x000CE6 00:CCD6: 85 04     STA ram_0004
C - - - - - 0x000CE8 00:CCD8: A9 00     LDA #$00
C - - - - - 0x000CEA 00:CCDA: 4C C7 D1  JMP loc_D1C7



loc_CCDD:
C D 2 - - - 0x000CED 00:CCDD: A5 3C     LDA ram_003C
C - - - - - 0x000CEF 00:CCDF: 4A        LSR
C - - - - - 0x000CF0 00:CCE0: 90 30     BCC bra_CD12_RTS
C - - - - - 0x000CF2 00:CCE2: A9 40     LDA #$40
C - - - - - 0x000CF4 00:CCE4: 85 FB     STA ram_00FB
C - - - - - 0x000CF6 00:CCE6: A9 58     LDA #$58
C - - - - - 0x000CF8 00:CCE8: 85 00     STA ram_0000
C - - - - - 0x000CFA 00:CCEA: A2 08     LDX #$08
bra_CCEC_loop:
C - - - - - 0x000CFC 00:CCEC: 8A        TXA
C - - - - - 0x000CFD 00:CCED: 0A        ASL
C - - - - - 0x000CFE 00:CCEE: 0A        ASL
C - - - - - 0x000CFF 00:CCEF: A8        TAY
C - - - - - 0x000D00 00:CCF0: A9 44     LDA #$44
C - - - - - 0x000D02 00:CCF2: 99 C0 02  STA ram_spr_Y + $C0,Y
C - - - - - 0x000D05 00:CCF5: BD 47 C1  LDA tbl_C147,X
C - - - - - 0x000D08 00:CCF8: 99 C1 02  STA ram_spr_T + $C0,Y
C - - - - - 0x000D0B 00:CCFB: A9 00     LDA #$00
C - - - - - 0x000D0D 00:CCFD: 99 C2 02  STA ram_spr_A + $C0,Y
C - - - - - 0x000D10 00:CD00: A5 00     LDA ram_0000
C - - - - - 0x000D12 00:CD02: 99 C3 02  STA ram_spr_X + $C0,Y
C - - - - - 0x000D15 00:CD05: 18        CLC
C - - - - - 0x000D16 00:CD06: 69 0A     ADC #$0A
C - - - - - 0x000D18 00:CD08: 85 00     STA ram_0000
C - - - - - 0x000D1A 00:CD0A: CA        DEX
C - - - - - 0x000D1B 00:CD0B: 10 DF     BPL bra_CCEC_loop
C - - - - - 0x000D1D 00:CD0D: A9 F8     LDA #$F8
C - - - - - 0x000D1F 00:CD0F: 8D D0 02  STA ram_spr_Y + $D0
bra_CD12_RTS:
C - - - - - 0x000D22 00:CD12: 60        RTS



loc_CD13:
C D 2 - - - 0x000D23 00:CD13: A2 07     LDX #$07
bra_CD15_loop:
C - - - - - 0x000D25 00:CD15: BD 50 C1  LDA tbl_C150,X
C - - - - - 0x000D28 00:CD18: 9D C0 02  STA ram_oam + $C0,X
C - - - - - 0x000D2B 00:CD1B: CA        DEX
C - - - - - 0x000D2C 00:CD1C: 10 F7     BPL bra_CD15_loop
C - - - - - 0x000D2E 00:CD1E: 60        RTS



sub_CD1F:
C - - - - - 0x000D2F 00:CD1F: A5 4F     LDA ram_004F
C - - - - - 0x000D31 00:CD21: F0 1D     BEQ bra_CD40
C - - - - - 0x000D33 00:CD23: A2 03     LDX #$03
bra_CD25_loop:
C - - - - - 0x000D35 00:CD25: B5 A8     LDA ram_00A8,X
C - - - - - 0x000D37 00:CD27: F0 14     BEQ bra_CD3D
C - - - - - 0x000D39 00:CD29: B5 9C     LDA ram_009C,X
C - - - - - 0x000D3B 00:CD2B: C9 05     CMP #$05
C - - - - - 0x000D3D 00:CD2D: F0 0B     BEQ bra_CD3A
C - - - - - 0x000D3F 00:CD2F: 15 98     ORA ram_0098,X
C - - - - - 0x000D41 00:CD31: 1D E0 03  ORA ram_03E0,X
C - - - - - 0x000D44 00:CD34: F0 04     BEQ bra_CD3A
C - - - - - 0x000D46 00:CD36: A9 00     LDA #$00
C - - - - - 0x000D48 00:CD38: 95 5C     STA ram_005C,X
bra_CD3A:
C - - - - - 0x000D4A 00:CD3A: 20 59 CD  JSR sub_CD59
bra_CD3D:
C - - - - - 0x000D4D 00:CD3D: CA        DEX
C - - - - - 0x000D4E 00:CD3E: 10 E5     BPL bra_CD25_loop
bra_CD40:
C - - - - - 0x000D50 00:CD40: A5 34     LDA ram_0034
C - - - - - 0x000D52 00:CD42: D0 14     BNE bra_CD58_RTS
C - - - - - 0x000D54 00:CD44: A5 5C     LDA ram_005C
C - - - - - 0x000D56 00:CD46: 29 C0     AND #$C0
C - - - - - 0x000D58 00:CD48: F0 0E     BEQ bra_CD58_RTS
C - - - - - 0x000D5A 00:CD4A: AD A9 03  LDA ram_03A9
C - - - - - 0x000D5D 00:CD4D: 05 52     ORA ram_0052
C - - - - - 0x000D5F 00:CD4F: D0 07     BNE bra_CD58_RTS
C - - - - - 0x000D61 00:CD51: A9 01     LDA #$01
C - - - - - 0x000D63 00:CD53: 8D A9 03  STA ram_03A9
C - - - - - 0x000D66 00:CD56: 85 FE     STA ram_00FE
bra_CD58_RTS:
C - - - - - 0x000D68 00:CD58: 60        RTS



sub_CD59:
C - - - - - 0x000D69 00:CD59: B5 5C     LDA ram_005C,X
C - - - - - 0x000D6B 00:CD5B: 29 03     AND #$03
C - - - - - 0x000D6D 00:CD5D: 85 0A     STA ram_000A
C - - - - - 0x000D6F 00:CD5F: A0 00     LDY #$00
C - - - - - 0x000D71 00:CD61: BD 74 03  LDA ram_0374,X
C - - - - - 0x000D74 00:CD64: 15 98     ORA ram_0098,X
C - - - - - 0x000D76 00:CD66: D0 52     BNE bra_CDBA
C - - - - - 0x000D78 00:CD68: B5 9C     LDA ram_009C,X
C - - - - - 0x000D7A 00:CD6A: F0 04     BEQ bra_CD70
C - - - - - 0x000D7C 00:CD6C: C9 05     CMP #$05
C - - - - - 0x000D7E 00:CD6E: D0 4A     BNE bra_CDBA
bra_CD70:
C - - - - - 0x000D80 00:CD70: 8A        TXA
C - - - - - 0x000D81 00:CD71: D0 08     BNE bra_CD7B
C - - - - - 0x000D83 00:CD73: A0 02     LDY #$02
C - - - - - 0x000D85 00:CD75: A5 52     LDA ram_0052
C - - - - - 0x000D87 00:CD77: D0 21     BNE bra_CD9A
C - - - - - 0x000D89 00:CD79: A0 00     LDY #$00
bra_CD7B:
C - - - - - 0x000D8B 00:CD7B: B5 B0     LDA ram_00B0,X
C - - - - - 0x000D8D 00:CD7D: D0 33     BNE bra_CDB2
C - - - - - 0x000D8F 00:CD7F: B5 5C     LDA ram_005C,X
C - - - - - 0x000D91 00:CD81: 29 C0     AND #$C0
C - - - - - 0x000D93 00:CD83: F0 35     BEQ bra_CDBA
C - - - - - 0x000D95 00:CD85: 86 00     STX ram_0000
C - - - - - 0x000D97 00:CD87: 0A        ASL
C - - - - - 0x000D98 00:CD88: B0 02     BCS bra_CD8C
C - - - - - 0x000D9A 00:CD8A: E6 00     INC ram_0000
bra_CD8C:
C - - - - - 0x000D9C 00:CD8C: 20 EE CD  JSR sub_CDEE
C - - - - - 0x000D9F 00:CD8F: F0 04     BEQ bra_CD95
C - - - - - 0x000DA1 00:CD91: B5 94     LDA ram_0094,X
C - - - - - 0x000DA3 00:CD93: D0 25     BNE bra_CDBA
bra_CD95:
C - - - - - 0x000DA5 00:CD95: A4 00     LDY ram_0000
C - - - - - 0x000DA7 00:CD97: 8A        TXA
C - - - - - 0x000DA8 00:CD98: D0 12     BNE bra_CDAC
bra_CD9A:
C - - - - - 0x000DAA 00:CD9A: B5 94     LDA ram_0094,X
C - - - - - 0x000DAC 00:CD9C: D9 D1 C0  CMP tbl_C0D1,Y
C - - - - - 0x000DAF 00:CD9F: 90 0B     BCC bra_CDAC
C - - - - - 0x000DB1 00:CDA1: D0 16     BNE bra_CDB9
C - - - - - 0x000DB3 00:CDA3: B5 90     LDA ram_0090,X
C - - - - - 0x000DB5 00:CDA5: D9 CE C0  CMP tbl_C0CE,Y
C - - - - - 0x000DB8 00:CDA8: F0 13     BEQ bra_CDBD
C - - - - - 0x000DBA 00:CDAA: B0 0D     BCS bra_CDB9
bra_CDAC:
C - - - - - 0x000DBC 00:CDAC: 20 29 CE  JSR sub_CE29
C - - - - - 0x000DBF 00:CDAF: 4C BD CD  JMP loc_CDBD
bra_CDB2:
C - - - - - 0x000DC2 00:CDB2: A0 04     LDY #$04
C - - - - - 0x000DC4 00:CDB4: A5 0A     LDA ram_000A
C - - - - - 0x000DC6 00:CDB6: F0 02     BEQ bra_CDBA
C - - - - - 0x000DC8 00:CDB8: A8        TAY
bra_CDB9:
C - - - - - 0x000DC9 00:CDB9: C8        INY
bra_CDBA:
C - - - - - 0x000DCA 00:CDBA: 20 58 CE  JSR sub_CE58
bra_CDBD:
loc_CDBD:
C D 2 - - - 0x000DCD 00:CDBD: B5 98     LDA ram_0098,X
C - - - - - 0x000DCF 00:CDBF: D0 5B     BNE bra_CE1C_RTS
C - - - - - 0x000DD1 00:CDC1: B5 B0     LDA ram_00B0,X
C - - - - - 0x000DD3 00:CDC3: D0 10     BNE bra_CDD5
C - - - - - 0x000DD5 00:CDC5: B5 58     LDA ram_0058,X
C - - - - - 0x000DD7 00:CDC7: 05 52     ORA ram_0052
C - - - - - 0x000DD9 00:CDC9: D0 13     BNE bra_CDDE
C - - - - - 0x000DDB 00:CDCB: B5 94     LDA ram_0094,X
C - - - - - 0x000DDD 00:CDCD: D0 06     BNE bra_CDD5
C - - - - - 0x000DDF 00:CDCF: B5 90     LDA ram_0090,X
C - - - - - 0x000DE1 00:CDD1: C9 A0     CMP #$A0
C - - - - - 0x000DE3 00:CDD3: 90 09     BCC bra_CDDE
bra_CDD5:
C - - - - - 0x000DE5 00:CDD5: A5 0A     LDA ram_000A
C - - - - - 0x000DE7 00:CDD7: F0 05     BEQ bra_CDDE
C - - - - - 0x000DE9 00:CDD9: 85 00     STA ram_0000
C - - - - - 0x000DEB 00:CDDB: 4C 83 CE  JMP loc_CE83
bra_CDDE:
C - - - - - 0x000DEE 00:CDDE: B5 B0     LDA ram_00B0,X
C - - - - - 0x000DF0 00:CDE0: D0 3A     BNE bra_CE1C_RTS
C - - - - - 0x000DF2 00:CDE2: BD 68 03  LDA ram_0368,X
C - - - - - 0x000DF5 00:CDE5: D5 AC     CMP ram_00AC,X
C - - - - - 0x000DF7 00:CDE7: F0 33     BEQ bra_CE1C_RTS
C - - - - - 0x000DF9 00:CDE9: A0 05     LDY #$05
C - - - - - 0x000DFB 00:CDEB: 4C C7 DC  JMP loc_DCC7



sub_CDEE:
C - - - - - 0x000DFE 00:CDEE: B5 C0     LDA ram_00C0,X
C - - - - - 0x000E00 00:CDF0: C9 E4     CMP #$E4
C - - - - - 0x000E02 00:CDF2: F0 16     BEQ bra_CE0A
C - - - - - 0x000E04 00:CDF4: A9 03     LDA #$03
C - - - - - 0x000E06 00:CDF6: D5 A4     CMP ram_00A4,X
C - - - - - 0x000E08 00:CDF8: D0 06     BNE bra_CE00
C - - - - - 0x000E0A 00:CDFA: B5 70     LDA ram_0070,X
C - - - - - 0x000E0C 00:CDFC: C9 03     CMP #$03
C - - - - - 0x000E0E 00:CDFE: B0 0A     BCS bra_CE0A
bra_CE00:
C - - - - - 0x000E10 00:CE00: B5 B8     LDA ram_00B8,X
C - - - - - 0x000E12 00:CE02: C9 38     CMP #$38
C - - - - - 0x000E14 00:CE04: B0 04     BCS bra_CE0A
C - - - - - 0x000E16 00:CE06: C9 08     CMP #$08
C - - - - - 0x000E18 00:CE08: B0 13     BCS bra_CE1D
bra_CE0A:
C - - - - - 0x000E1A 00:CE0A: A9 01     LDA #$01
C - - - - - 0x000E1C 00:CE0C: DD 6C 03  CMP ram_036C,X
C - - - - - 0x000E1F 00:CE0F: F0 04     BEQ bra_CE15
C - - - - - 0x000E21 00:CE11: 0A        ASL
C - - - - - 0x000E22 00:CE12: 9D 6C 03  STA ram_036C,X
bra_CE15:
C - - - - - 0x000E25 00:CE15: 8A        TXA
C - - - - - 0x000E26 00:CE16: D0 10     BNE bra_CE28_RTS
C - - - - - 0x000E28 00:CE18: A9 04     LDA #$04
C - - - - - 0x000E2A 00:CE1A: 85 FD     STA ram_00FD
bra_CE1C_RTS:
C - - - - - 0x000E2C 00:CE1C: 60        RTS
bra_CE1D:
C - - - - - 0x000E2D 00:CE1D: A9 01     LDA #$01
C - - - - - 0x000E2F 00:CE1F: DD 6C 03  CMP ram_036C,X
C - - - - - 0x000E32 00:CE22: F0 04     BEQ bra_CE28_RTS
C - - - - - 0x000E34 00:CE24: 4A        LSR
C - - - - - 0x000E35 00:CE25: 9D 6C 03  STA ram_036C,X
bra_CE28_RTS:
C - - - - - 0x000E38 00:CE28: 60        RTS



sub_CE29:
C - - - - - 0x000E39 00:CE29: E4 4C     CPX ram_004C
C - - - - - 0x000E3B 00:CE2B: D0 18     BNE bra_CE45_RTS
C - - - - - 0x000E3D 00:CE2D: B9 BC C0  LDA tbl_C0BC,Y
C - - - - - 0x000E40 00:CE30: 18        CLC
C - - - - - 0x000E41 00:CE31: 75 90     ADC ram_0090,X
C - - - - - 0x000E43 00:CE33: 95 90     STA ram_0090,X
C - - - - - 0x000E45 00:CE35: 90 02     BCC bra_CE39
C - - - - - 0x000E47 00:CE37: F6 94     INC ram_0094,X
bra_CE39:
C - - - - - 0x000E49 00:CE39: 8A        TXA
C - - - - - 0x000E4A 00:CE3A: D0 09     BNE bra_CE45_RTS
C - - - - - 0x000E4C 00:CE3C: B5 94     LDA ram_0094,X
C - - - - - 0x000E4E 00:CE3E: D9 D1 C0  CMP tbl_C0D1,Y
C - - - - - 0x000E51 00:CE41: F0 03     BEQ bra_CE46
C - - - - - 0x000E53 00:CE43: B0 08     BCS bra_CE4D
bra_CE45_RTS:
C - - - - - 0x000E55 00:CE45: 60        RTS
bra_CE46:
C - - - - - 0x000E56 00:CE46: B5 90     LDA ram_0090,X
C - - - - - 0x000E58 00:CE48: D9 CE C0  CMP tbl_C0CE,Y
C - - - - - 0x000E5B 00:CE4B: 90 F8     BCC bra_CE45_RTS
bra_CE4D:
C - - - - - 0x000E5D 00:CE4D: B9 CE C0  LDA tbl_C0CE,Y
C - - - - - 0x000E60 00:CE50: 95 90     STA ram_0090,X
C - - - - - 0x000E62 00:CE52: B9 D1 C0  LDA tbl_C0D1,Y
C - - - - - 0x000E65 00:CE55: 95 94     STA ram_0094,X
C - - - - - 0x000E67 00:CE57: 60        RTS



sub_CE58:
C - - - - - 0x000E68 00:CE58: E4 4C     CPX ram_004C
C - - - - - 0x000E6A 00:CE5A: D0 26     BNE bra_CE82_RTS
sub_CE5C:
C - - - - - 0x000E6C 00:CE5C: 84 00     STY ram_0000
C - - - - - 0x000E6E 00:CE5E: B5 94     LDA ram_0094,X
C - - - - - 0x000E70 00:CE60: D0 0B     BNE bra_CE6D
C - - - - - 0x000E72 00:CE62: B5 B0     LDA ram_00B0,X
C - - - - - 0x000E74 00:CE64: 4A        LSR
C - - - - - 0x000E75 00:CE65: A8        TAY
C - - - - - 0x000E76 00:CE66: B5 90     LDA ram_0090,X
C - - - - - 0x000E78 00:CE68: D9 CC C0  CMP tbl_C0CC,Y
C - - - - - 0x000E7B 00:CE6B: 90 15     BCC bra_CE82_RTS
bra_CE6D:
C - - - - - 0x000E7D 00:CE6D: A4 00     LDY ram_0000
C - - - - - 0x000E7F 00:CE6F: B5 90     LDA ram_0090,X
C - - - - - 0x000E81 00:CE71: 38        SEC
C - - - - - 0x000E82 00:CE72: F9 C1 C0  SBC tbl_C0C1,Y
C - - - - - 0x000E85 00:CE75: 95 90     STA ram_0090,X
C - - - - - 0x000E87 00:CE77: B0 09     BCS bra_CE82_RTS
C - - - - - 0x000E89 00:CE79: B5 94     LDA ram_0094,X
C - - - - - 0x000E8B 00:CE7B: F0 03     BEQ bra_CE80
C - - - - - 0x000E8D 00:CE7D: D6 94     DEC ram_0094,X
C - - - - - 0x000E8F 00:CE7F: 60        RTS
bra_CE80:
C - - - - - 0x000E90 00:CE80: 95 90     STA ram_0090,X
bra_CE82_RTS:
C - - - - - 0x000E92 00:CE82: 60        RTS



loc_CE83:
C D 2 - - - 0x000E93 00:CE83: B5 26     LDA ram_0026,X
C - - - - - 0x000E95 00:CE85: D0 18     BNE bra_CE9F_RTS
C - - - - - 0x000E97 00:CE87: B5 B0     LDA ram_00B0,X
C - - - - - 0x000E99 00:CE89: 4A        LSR
C - - - - - 0x000E9A 00:CE8A: A8        TAY
C - - - - - 0x000E9B 00:CE8B: B9 D4 C0  LDA tbl_C0D4,Y
C - - - - - 0x000E9E 00:CE8E: 95 26     STA ram_0026,X
C - - - - - 0x000EA0 00:CE90: 46 00     LSR ram_0000
C - - - - - 0x000EA2 00:CE92: 90 0C     BCC bra_CEA0
C - - - - - 0x000EA4 00:CE94: B5 AC     LDA ram_00AC,X
C - - - - - 0x000EA6 00:CE96: D9 C8 C0  CMP tbl_C0C8,Y
C - - - - - 0x000EA9 00:CE99: F0 04     BEQ bra_CE9F_RTS
C - - - - - 0x000EAB 00:CE9B: 90 12     BCC bra_CEAF
C - - - - - 0x000EAD 00:CE9D: D6 AC     DEC ram_00AC,X
bra_CE9F_RTS:
C - - - - - 0x000EAF 00:CE9F: 60        RTS
bra_CEA0:
C - - - - - 0x000EB0 00:CEA0: BD 88 03  LDA ram_0388,X
C - - - - - 0x000EB3 00:CEA3: 29 02     AND #$02
C - - - - - 0x000EB5 00:CEA5: 9D 88 03  STA ram_0388,X
C - - - - - 0x000EB8 00:CEA8: B5 AC     LDA ram_00AC,X
C - - - - - 0x000EBA 00:CEAA: D9 CA C0  CMP tbl_C0CA,Y
C - - - - - 0x000EBD 00:CEAD: B0 03     BCS bra_CEB2
bra_CEAF:
C - - - - - 0x000EBF 00:CEAF: F6 AC     INC ram_00AC,X
C - - - - - 0x000EC1 00:CEB1: 60        RTS
bra_CEB2:
C - - - - - 0x000EC2 00:CEB2: B5 5C     LDA ram_005C,X
C - - - - - 0x000EC4 00:CEB4: 29 C0     AND #$C0
C - - - - - 0x000EC6 00:CEB6: F0 17     BEQ bra_CECF_RTS
C - - - - - 0x000EC8 00:CEB8: B5 B0     LDA ram_00B0,X
C - - - - - 0x000ECA 00:CEBA: D0 13     BNE bra_CECF_RTS
C - - - - - 0x000ECC 00:CEBC: F6 AC     INC ram_00AC,X
C - - - - - 0x000ECE 00:CEBE: A9 0D     LDA #$0D
C - - - - - 0x000ED0 00:CEC0: 95 26     STA ram_0026,X
C - - - - - 0x000ED2 00:CEC2: B5 AC     LDA ram_00AC,X
C - - - - - 0x000ED4 00:CEC4: C9 0D     CMP #$0D
C - - - - - 0x000ED6 00:CEC6: 90 07     BCC bra_CECF_RTS
C - - - - - 0x000ED8 00:CEC8: A9 01     LDA #$01
C - - - - - 0x000EDA 00:CECA: 95 98     STA ram_0098,X
C - - - - - 0x000EDC 00:CECC: 0A        ASL
C - - - - - 0x000EDD 00:CECD: 95 26     STA ram_0026,X
bra_CECF_RTS:
C - - - - - 0x000EDF 00:CECF: 60        RTS



sub_CED0:
C - - - - - 0x000EE0 00:CED0: A6 4A     LDX ram_004A
bra_CED2_loop:
C - - - - - 0x000EE2 00:CED2: 86 0F     STX ram_000F
C - - - - - 0x000EE4 00:CED4: B5 A8     LDA ram_00A8,X
C - - - - - 0x000EE6 00:CED6: F0 2C     BEQ bra_CF04
C - - - - - 0x000EE8 00:CED8: B5 98     LDA ram_0098,X
C - - - - - 0x000EEA 00:CEDA: 15 9C     ORA ram_009C,X
C - - - - - 0x000EEC 00:CEDC: D0 26     BNE bra_CF04
C - - - - - 0x000EEE 00:CEDE: 20 EA CF  JSR sub_CFEA
C - - - - - 0x000EF1 00:CEE1: B5 B0     LDA ram_00B0,X
C - - - - - 0x000EF3 00:CEE3: D0 1A     BNE bra_CEFF
C - - - - - 0x000EF5 00:CEE5: 20 CB CF  JSR sub_CFCB
C - - - - - 0x000EF8 00:CEE8: 20 18 D0  JSR sub_D018
C - - - - - 0x000EFB 00:CEEB: D0 17     BNE bra_CF04
C - - - - - 0x000EFD 00:CEED: AD A6 03  LDA ram_03A6
C - - - - - 0x000F00 00:CEF0: F0 12     BEQ bra_CF04
C - - - - - 0x000F02 00:CEF2: 20 00 D0  JSR sub_D000
C - - - - - 0x000F05 00:CEF5: A5 52     LDA ram_0052
C - - - - - 0x000F07 00:CEF7: D0 0B     BNE bra_CF04
C - - - - - 0x000F09 00:CEF9: 20 0C CF  JSR sub_CF0C
C - - - - - 0x000F0C 00:CEFC: 4C 04 CF  JMP loc_CF04
bra_CEFF:
C - - - - - 0x000F0F 00:CEFF: BD 68 03  LDA ram_0368,X
C - - - - - 0x000F12 00:CF02: 95 7C     STA ram_007C,X
bra_CF04:
loc_CF04:
C D 2 - - - 0x000F14 00:CF04: A6 0F     LDX ram_000F
C - - - - - 0x000F16 00:CF06: E8        INX
C - - - - - 0x000F17 00:CF07: E0 04     CPX #$04
C - - - - - 0x000F19 00:CF09: 90 C7     BCC bra_CED2_loop
bra_CF0B_RTS:
C - - - - - 0x000F1B 00:CF0B: 60        RTS



sub_CF0C:
C - - - - - 0x000F1C 00:CF0C: B5 84     LDA ram_0084,X
C - - - - - 0x000F1E 00:CF0E: 4A        LSR
C - - - - - 0x000F1F 00:CF0F: 90 FA     BCC bra_CF0B_RTS
C - - - - - 0x000F21 00:CF11: B5 70     LDA ram_0070,X
C - - - - - 0x000F23 00:CF13: 85 02     STA ram_0002
C - - - - - 0x000F25 00:CF15: A0 02     LDY #$02
C - - - - - 0x000F27 00:CF17: 20 96 CF  JSR sub_CF96
C - - - - - 0x000F2A 00:CF1A: 90 0F     BCC bra_CF2B
C - - - - - 0x000F2C 00:CF1C: 20 DB CF  JSR sub_CFDB
C - - - - - 0x000F2F 00:CF1F: B5 80     LDA ram_0080,X
C - - - - - 0x000F31 00:CF21: 0A        ASL
C - - - - - 0x000F32 00:CF22: 90 E7     BCC bra_CF0B_RTS
C - - - - - 0x000F34 00:CF24: B5 18     LDA ram_0018,X
C - - - - - 0x000F36 00:CF26: 4A        LSR
C - - - - - 0x000F37 00:CF27: B0 3B     BCS bra_CF64
C - - - - - 0x000F39 00:CF29: 90 1C     BCC bra_CF47_loop    ; jmp
bra_CF2B:
C - - - - - 0x000F3B 00:CF2B: B5 DC     LDA ram_00DC,X
C - - - - - 0x000F3D 00:CF2D: D0 58     BNE bra_CF87_RTS
C - - - - - 0x000F3F 00:CF2F: B5 84     LDA ram_0084,X
C - - - - - 0x000F41 00:CF31: 4A        LSR
C - - - - - 0x000F42 00:CF32: 90 53     BCC bra_CF87_RTS
C - - - - - 0x000F44 00:CF34: B5 80     LDA ram_0080,X
C - - - - - 0x000F46 00:CF36: C9 F0     CMP #$F0
C - - - - - 0x000F48 00:CF38: B0 4D     BCS bra_CF87_RTS
C - - - - - 0x000F4A 00:CF3A: 0A        ASL
C - - - - - 0x000F4B 00:CF3B: 90 4A     BCC bra_CF87_RTS
C - - - - - 0x000F4D 00:CF3D: B5 19     LDA ram_0019,X
C - - - - - 0x000F4F 00:CF3F: C9 E0     CMP #$E0
C - - - - - 0x000F51 00:CF41: 90 44     BCC bra_CF87_RTS
C - - - - - 0x000F53 00:CF43: C9 F8     CMP #$F8
C - - - - - 0x000F55 00:CF45: 90 1D     BCC bra_CF64
bra_CF47_loop:
sub_CF47:
C - - - - - 0x000F57 00:CF47: BC 60 03  LDY ram_0360,X
C - - - - - 0x000F5A 00:CF4A: 88        DEY
C - - - - - 0x000F5B 00:CF4B: C0 01     CPY #$01
C - - - - - 0x000F5D 00:CF4D: 30 1B     BMI bra_CF6A
C - - - - - 0x000F5F 00:CF4F: 20 88 CF  JSR sub_CF88
C - - - - - 0x000F62 00:CF52: B0 33     BCS bra_CF87_RTS
C - - - - - 0x000F64 00:CF54: B4 70     LDY ram_0070,X
C - - - - - 0x000F66 00:CF56: C8        INY
C - - - - - 0x000F67 00:CF57: 84 02     STY ram_0002
C - - - - - 0x000F69 00:CF59: A0 00     LDY #$00
C - - - - - 0x000F6B 00:CF5B: 20 96 CF  JSR sub_CF96
C - - - - - 0x000F6E 00:CF5E: B0 27     BCS bra_CF87_RTS
C - - - - - 0x000F70 00:CF60: A9 01     LDA #$01
C - - - - - 0x000F72 00:CF62: D0 21     BNE bra_CF85    ; jmp
bra_CF64:
C - - - - - 0x000F74 00:CF64: B5 C0     LDA ram_00C0,X
C - - - - - 0x000F76 00:CF66: C9 E6     CMP #$E6
C - - - - - 0x000F78 00:CF68: F0 DD     BEQ bra_CF47_loop
bra_CF6A:
sub_CF6A:
C - - - - - 0x000F7A 00:CF6A: BC 60 03  LDY ram_0360,X
C - - - - - 0x000F7D 00:CF6D: C8        INY
C - - - - - 0x000F7E 00:CF6E: C0 05     CPY #$05
C - - - - - 0x000F80 00:CF70: 10 D5     BPL bra_CF47_loop
C - - - - - 0x000F82 00:CF72: 20 88 CF  JSR sub_CF88
C - - - - - 0x000F85 00:CF75: B0 10     BCS bra_CF87_RTS
C - - - - - 0x000F87 00:CF77: B4 70     LDY ram_0070,X
C - - - - - 0x000F89 00:CF79: 88        DEY
C - - - - - 0x000F8A 00:CF7A: 84 02     STY ram_0002
C - - - - - 0x000F8C 00:CF7C: A0 00     LDY #$00
C - - - - - 0x000F8E 00:CF7E: 20 96 CF  JSR sub_CF96
C - - - - - 0x000F91 00:CF81: B0 04     BCS bra_CF87_RTS
C - - - - - 0x000F93 00:CF83: A9 FF     LDA #$FF
bra_CF85:
C - - - - - 0x000F95 00:CF85: 95 DC     STA ram_00DC,X
bra_CF87_RTS:
C - - - - - 0x000F97 00:CF87: 60        RTS



sub_CF88:
C - - - - - 0x000F98 00:CF88: 20 FF E7  JSR sub_E7FF
sub_CF8B:
C - - - - - 0x000F9B 00:CF8B: C9 3B     CMP #$3B
C - - - - - 0x000F9D 00:CF8D: 90 05     BCC bra_CF94
C - - - - - 0x000F9F 00:CF8F: C9 3E     CMP #$3E
C - - - - - 0x000FA1 00:CF91: B0 01     BCS bra_CF94
C - - - - - 0x000FA3 00:CF93: 60        RTS
bra_CF94:
C - - - - - 0x000FA4 00:CF94: 38        SEC
C - - - - - 0x000FA5 00:CF95: 60        RTS



sub_CF96:
C - - - - - 0x000FA6 00:CF96: B5 80     LDA ram_0080,X
C - - - - - 0x000FA8 00:CF98: 18        CLC
C - - - - - 0x000FA9 00:CF99: 79 D6 C0  ADC tbl_C0D6,Y
C - - - - - 0x000FAC 00:CF9C: 85 00     STA ram_0000
C - - - - - 0x000FAE 00:CF9E: 38        SEC
C - - - - - 0x000FAF 00:CF9F: F9 D7 C0  SBC tbl_C0D6 + $01,Y
C - - - - - 0x000FB2 00:CFA2: 85 01     STA ram_0001
C - - - - - 0x000FB4 00:CFA4: A4 4A     LDY ram_004A
bra_CFA6_loop:
C - - - - - 0x000FB6 00:CFA6: C4 0F     CPY ram_000F
C - - - - - 0x000FB8 00:CFA8: F0 1A     BEQ bra_CFC4
C - - - - - 0x000FBA 00:CFAA: B9 84 00  LDA ram_0084,Y
C - - - - - 0x000FBD 00:CFAD: 4A        LSR
C - - - - - 0x000FBE 00:CFAE: 90 14     BCC bra_CFC4
C - - - - - 0x000FC0 00:CFB0: B9 70 00  LDA ram_0070,Y
C - - - - - 0x000FC3 00:CFB3: F0 0F     BEQ bra_CFC4
C - - - - - 0x000FC5 00:CFB5: C5 02     CMP ram_0002
C - - - - - 0x000FC7 00:CFB7: D0 0B     BNE bra_CFC4
C - - - - - 0x000FC9 00:CFB9: B9 80 00  LDA ram_0080,Y
C - - - - - 0x000FCC 00:CFBC: C5 00     CMP ram_0000
C - - - - - 0x000FCE 00:CFBE: B0 04     BCS bra_CFC4
C - - - - - 0x000FD0 00:CFC0: C5 01     CMP ram_0001
C - - - - - 0x000FD2 00:CFC2: B0 06     BCS bra_CFCA_RTS
bra_CFC4:
C - - - - - 0x000FD4 00:CFC4: C8        INY
C - - - - - 0x000FD5 00:CFC5: C0 04     CPY #$04
C - - - - - 0x000FD7 00:CFC7: 90 DD     BCC bra_CFA6_loop
C - - - - - 0x000FD9 00:CFC9: 18        CLC
bra_CFCA_RTS:
C - - - - - 0x000FDA 00:CFCA: 60        RTS



sub_CFCB:
C - - - - - 0x000FDB 00:CFCB: A0 80     LDY #$80
C - - - - - 0x000FDD 00:CFCD: B5 94     LDA ram_0094,X
C - - - - - 0x000FDF 00:CFCF: D5 78     CMP ram_0078,X
C - - - - - 0x000FE1 00:CFD1: 90 27     BCC bra_CFFA
C - - - - - 0x000FE3 00:CFD3: D0 06     BNE bra_CFDB
C - - - - - 0x000FE5 00:CFD5: B5 90     LDA ram_0090,X
C - - - - - 0x000FE7 00:CFD7: D5 74     CMP ram_0074,X
C - - - - - 0x000FE9 00:CFD9: 90 1F     BCC bra_CFFA
bra_CFDB:
sub_CFDB:
C - - - - - 0x000FEB 00:CFDB: B5 94     LDA ram_0094,X
C - - - - - 0x000FED 00:CFDD: F0 0A     BEQ bra_CFE9_RTS
C - - - - - 0x000FEF 00:CFDF: A9 0F     LDA #$0F
C - - - - - 0x000FF1 00:CFE1: D0 02     BNE bra_CFE5    ; jmp



sub_CFE3:
C - - - - - 0x000FF3 00:CFE3: A9 F0     LDA #$F0
bra_CFE5:
C - - - - - 0x000FF5 00:CFE5: 35 5C     AND ram_005C,X
C - - - - - 0x000FF7 00:CFE7: 95 5C     STA ram_005C,X
bra_CFE9_RTS:
C - - - - - 0x000FF9 00:CFE9: 60        RTS



sub_CFEA:
C - - - - - 0x000FFA 00:CFEA: 20 E3 CF  JSR sub_CFE3
C - - - - - 0x000FFD 00:CFED: A0 01     LDY #$01
C - - - - - 0x000FFF 00:CFEF: B5 7C     LDA ram_007C,X
C - - - - - 0x001001 00:CFF1: F0 0C     BEQ bra_CFFF_RTS
C - - - - - 0x001003 00:CFF3: D5 AC     CMP ram_00AC,X
C - - - - - 0x001005 00:CFF5: F0 08     BEQ bra_CFFF_RTS
C - - - - - 0x001007 00:CFF7: 90 01     BCC bra_CFFA
C - - - - - 0x001009 00:CFF9: C8        INY
bra_CFFA:
C - - - - - 0x00100A 00:CFFA: 98        TYA
C - - - - - 0x00100B 00:CFFB: 15 5C     ORA ram_005C,X
C - - - - - 0x00100D 00:CFFD: 95 5C     STA ram_005C,X
bra_CFFF_RTS:
C - - - - - 0x00100F 00:CFFF: 60        RTS



sub_D000:
C - - - - - 0x001010 00:D000: A0 00     LDY #$00
C - - - - - 0x001012 00:D002: E0 03     CPX #$03
C - - - - - 0x001014 00:D004: F0 0F     BEQ bra_D015
C - - - - - 0x001016 00:D006: B5 80     LDA ram_0080,X
C - - - - - 0x001018 00:D008: 29 10     AND #$10
C - - - - - 0x00101A 00:D00A: F0 F3     BEQ bra_CFFF_RTS
C - - - - - 0x00101C 00:D00C: B5 1A     LDA ram_001A,X
C - - - - - 0x00101E 00:D00E: C9 C0     CMP #$C0
C - - - - - 0x001020 00:D010: 90 ED     BCC bra_CFFF_RTS
C - - - - - 0x001022 00:D012: D0 01     BNE bra_D015
C - - - - - 0x001024 00:D014: C8        INY
bra_D015:
C - - - - - 0x001025 00:D015: 4C 50 DB  JMP loc_DB50



sub_D018:
C - - - - - 0x001028 00:D018: A9 00     LDA #$00
C - - - - - 0x00102A 00:D01A: 85 09     STA ram_0009
C - - - - - 0x00102C 00:D01C: 85 0D     STA ram_000D
C - - - - - 0x00102E 00:D01E: 8A        TXA
C - - - - - 0x00102F 00:D01F: 0A        ASL
C - - - - - 0x001030 00:D020: 0A        ASL
C - - - - - 0x001031 00:D021: 85 0A     STA ram_000A
C - - - - - 0x001033 00:D023: A0 03     LDY #$03
bra_D025_loop:
C - - - - - 0x001035 00:D025: 84 0B     STY ram_000B
C - - - - - 0x001037 00:D027: A4 0A     LDY ram_000A
C - - - - - 0x001039 00:D029: B9 C0 03  LDA ram_03C0,Y
C - - - - - 0x00103C 00:D02C: C9 C0     CMP #$C0
C - - - - - 0x00103E 00:D02E: F0 28     BEQ bra_D058
C - - - - - 0x001040 00:D030: C9 C1     CMP #$C1
C - - - - - 0x001042 00:D032: F0 24     BEQ bra_D058
C - - - - - 0x001044 00:D034: C9 70     CMP #$70
C - - - - - 0x001046 00:D036: 90 04     BCC bra_D03C
C - - - - - 0x001048 00:D038: C9 74     CMP #$74
C - - - - - 0x00104A 00:D03A: 90 1C     BCC bra_D058
bra_D03C:
C - - - - - 0x00104C 00:D03C: C9 48     CMP #$48
C - - - - - 0x00104E 00:D03E: 90 04     BCC bra_D044
C - - - - - 0x001050 00:D040: C9 4B     CMP #$4B
C - - - - - 0x001052 00:D042: 90 60     BCC bra_D0A4
bra_D044:
C - - - - - 0x001054 00:D044: E6 0A     INC ram_000A
C - - - - - 0x001056 00:D046: A4 0B     LDY ram_000B
C - - - - - 0x001058 00:D048: 88        DEY
C - - - - - 0x001059 00:D049: 10 DA     BPL bra_D025_loop
bra_D04B:
loc_D04B:
C D 2 - - - 0x00105B 00:D04B: A0 00     LDY #$00
C - - - - - 0x00105D 00:D04D: B5 58     LDA ram_0058,X
C - - - - - 0x00105F 00:D04F: D0 03     BNE bra_D054
C - - - - - 0x001061 00:D051: BC 68 03  LDY ram_0368,X
bra_D054:
C - - - - - 0x001064 00:D054: 98        TYA
C - - - - - 0x001065 00:D055: 4C A6 D0  JMP loc_D0A6
bra_D058:
C - - - - - 0x001068 00:D058: E6 0D     INC ram_000D
C - - - - - 0x00106A 00:D05A: A5 0A     LDA ram_000A
C - - - - - 0x00106C 00:D05C: 29 03     AND #$03
C - - - - - 0x00106E 00:D05E: A8        TAY
C - - - - - 0x00106F 00:D05F: C8        INY
C - - - - - 0x001070 00:D060: 98        TYA
C - - - - - 0x001071 00:D061: 18        CLC
C - - - - - 0x001072 00:D062: 75 E0     ADC ram_00E0,X
C - - - - - 0x001074 00:D064: 29 3F     AND #$3F
C - - - - - 0x001076 00:D066: 85 08     STA ram_0008
C - - - - - 0x001078 00:D068: A9 40     LDA #$40
C - - - - - 0x00107A 00:D06A: 85 09     STA ram_0009
C - - - - - 0x00107C 00:D06C: BC 60 03  LDY ram_0360,X
bra_D06F_loop:
C - - - - - 0x00107F 00:D06F: 88        DEY
C - - - - - 0x001080 00:D070: C0 01     CPY #$01
C - - - - - 0x001082 00:D072: 30 14     BMI bra_D088
C - - - - - 0x001084 00:D074: 20 03 E8  JSR sub_E803
C - - - - - 0x001087 00:D077: A4 07     LDY ram_0007
C - - - - - 0x001089 00:D079: C9 FA     CMP #$FA
C - - - - - 0x00108B 00:D07B: F0 0B     BEQ bra_D088
C - - - - - 0x00108D 00:D07D: 20 8B CF  JSR sub_CF8B
C - - - - - 0x001090 00:D080: B0 ED     BCS bra_D06F_loop
C - - - - - 0x001092 00:D082: 20 47 CF  JSR sub_CF47
C - - - - - 0x001095 00:D085: 4C 4B D0  JMP loc_D04B
bra_D088:
C - - - - - 0x001098 00:D088: BC 60 03  LDY ram_0360,X
bra_D08B_loop:
C - - - - - 0x00109B 00:D08B: C8        INY
C - - - - - 0x00109C 00:D08C: C0 06     CPY #$06
C - - - - - 0x00109E 00:D08E: 10 BB     BPL bra_D04B
C - - - - - 0x0010A0 00:D090: 20 03 E8  JSR sub_E803
C - - - - - 0x0010A3 00:D093: A4 07     LDY ram_0007
C - - - - - 0x0010A5 00:D095: C9 E4     CMP #$E4
C - - - - - 0x0010A7 00:D097: F0 B2     BEQ bra_D04B
C - - - - - 0x0010A9 00:D099: 20 8B CF  JSR sub_CF8B
C - - - - - 0x0010AC 00:D09C: B0 ED     BCS bra_D08B_loop
C - - - - - 0x0010AE 00:D09E: 20 6A CF  JSR sub_CF6A
C - - - - - 0x0010B1 00:D0A1: 4C 4B D0  JMP loc_D04B
bra_D0A4:
C - - - - - 0x0010B4 00:D0A4: A9 09     LDA #$09
loc_D0A6:
C D 2 - - - 0x0010B6 00:D0A6: 95 7C     STA ram_007C,X
C - - - - - 0x0010B8 00:D0A8: A5 0D     LDA ram_000D
C - - - - - 0x0010BA 00:D0AA: 60        RTS



sub_D0AB:
C - - - - - 0x0010BB 00:D0AB: A2 03     LDX #$03
bra_D0AD_loop:
C - - - - - 0x0010BD 00:D0AD: A0 05     LDY #$05
C - - - - - 0x0010BF 00:D0AF: B5 B8     LDA ram_00B8,X
C - - - - - 0x0010C1 00:D0B1: 38        SEC
C - - - - - 0x0010C2 00:D0B2: E9 10     SBC #$10
C - - - - - 0x0010C4 00:D0B4: 30 08     BMI bra_D0BE
bra_D0B6_loop:
C - - - - - 0x0010C6 00:D0B6: 88        DEY
C - - - - - 0x0010C7 00:D0B7: F0 05     BEQ bra_D0BE
C - - - - - 0x0010C9 00:D0B9: 38        SEC
C - - - - - 0x0010CA 00:D0BA: E9 08     SBC #$08
C - - - - - 0x0010CC 00:D0BC: 10 F8     BPL bra_D0B6_loop
bra_D0BE:
C - - - - - 0x0010CE 00:D0BE: 98        TYA
C - - - - - 0x0010CF 00:D0BF: 9D 60 03  STA ram_0360,X
C - - - - - 0x0010D2 00:D0C2: CA        DEX
C - - - - - 0x0010D3 00:D0C3: 10 E8     BPL bra_D0AD_loop
C - - - - - 0x0010D5 00:D0C5: 60        RTS



sub_D0C6:
C - - - - - 0x0010D6 00:D0C6: A2 03     LDX #$03
bra_D0C8_loop:
C - - - - - 0x0010D8 00:D0C8: 8A        TXA
C - - - - - 0x0010D9 00:D0C9: 0A        ASL
C - - - - - 0x0010DA 00:D0CA: 0A        ASL
C - - - - - 0x0010DB 00:D0CB: 85 0C     STA ram_000C
C - - - - - 0x0010DD 00:D0CD: A9 04     LDA #$04
C - - - - - 0x0010DF 00:D0CF: 85 0B     STA ram_000B
C - - - - - 0x0010E1 00:D0D1: 20 FC E7  JSR sub_E7FC
C - - - - - 0x0010E4 00:D0D4: 95 C0     STA ram_00C0,X
C - - - - - 0x0010E6 00:D0D6: 4C DD D0  JMP loc_D0DD
bra_D0D9_loop:
C - - - - - 0x0010E9 00:D0D9: A4 08     LDY ram_0008
C - - - - - 0x0010EB 00:D0DB: B1 03     LDA (ram_0003),Y
loc_D0DD:
C D 2 - - - 0x0010ED 00:D0DD: 48        PHA
C - - - - - 0x0010EE 00:D0DE: C8        INY
C - - - - - 0x0010EF 00:D0DF: 98        TYA
C - - - - - 0x0010F0 00:D0E0: 29 3F     AND #$3F
C - - - - - 0x0010F2 00:D0E2: 85 08     STA ram_0008
C - - - - - 0x0010F4 00:D0E4: A4 0C     LDY ram_000C
C - - - - - 0x0010F6 00:D0E6: 68        PLA
C - - - - - 0x0010F7 00:D0E7: 99 C0 03  STA ram_03C0,Y
C - - - - - 0x0010FA 00:D0EA: E6 0C     INC ram_000C
C - - - - - 0x0010FC 00:D0EC: C6 0B     DEC ram_000B
C - - - - - 0x0010FE 00:D0EE: D0 E9     BNE bra_D0D9_loop
C - - - - - 0x001100 00:D0F0: CA        DEX
C - - - - - 0x001101 00:D0F1: 10 D5     BPL bra_D0C8_loop
C - - - - - 0x001103 00:D0F3: 60        RTS



sub_D0F4:
C - - - - - 0x001104 00:D0F4: A2 06     LDX #$06
bra_D0F6_loop:
C - - - - - 0x001106 00:D0F6: BD D9 03  LDA ram_03D9,X
C - - - - - 0x001109 00:D0F9: 9D D1 03  STA ram_03D1,X
C - - - - - 0x00110C 00:D0FC: CA        DEX
C - - - - - 0x00110D 00:D0FD: 10 F7     BPL bra_D0F6_loop
C - - - - - 0x00110F 00:D0FF: A9 56     LDA #$56
C - - - - - 0x001111 00:D101: 85 00     STA ram_0000
C - - - - - 0x001113 00:D103: A9 23     LDA #$23
C - - - - - 0x001115 00:D105: 85 01     STA ram_0001
C - - - - - 0x001117 00:D107: A9 17     LDA #$17
C - - - - - 0x001119 00:D109: 8D D0 03  STA ram_03D0
C - - - - - 0x00111C 00:D10C: A9 D0     LDA #$D0
C - - - - - 0x00111E 00:D10E: 85 02     STA ram_0002
C - - - - - 0x001120 00:D110: A9 03     LDA #$03
C - - - - - 0x001122 00:D112: 85 03     STA ram_0003
C - - - - - 0x001124 00:D114: A9 FB     LDA #$FB
C - - - - - 0x001126 00:D116: 8D D2 03  STA ram_03D2
C - - - - - 0x001129 00:D119: 8D D5 03  STA ram_03D5
C - - - - - 0x00112C 00:D11C: 4C A3 D2  JMP loc_D2A3



sub_D11F:
C - - - - - 0x00112F 00:D11F: A9 11     LDA #$11
C - - - - - 0x001131 00:D121: 8D 00 03  STA ram_0300
C - - - - - 0x001134 00:D124: A9 23     LDA #$23
C - - - - - 0x001136 00:D126: 8D 01 03  STA ram_0301
C - - - - - 0x001139 00:D129: A9 A0     LDA #$A0
C - - - - - 0x00113B 00:D12B: 8D 02 03  STA ram_0302
C - - - - - 0x00113E 00:D12E: A2 0E     LDX #$0E
C - - - - - 0x001140 00:D130: 8E 03 03  STX ram_0303
C - - - - - 0x001143 00:D133: A9 FE     LDA #$FE
bra_D135_loop:
C - - - - - 0x001145 00:D135: 9D 03 03  STA ram_0303,X
C - - - - - 0x001148 00:D138: CA        DEX
C - - - - - 0x001149 00:D139: D0 FA     BNE bra_D135_loop
C - - - - - 0x00114B 00:D13B: 8E 12 03  STX ram_0312
C - - - - - 0x00114E 00:D13E: 60        RTS



sub_D13F:
C - - - - - 0x00114F 00:D13F: A2 00     LDX #$00
C - - - - - 0x001151 00:D141: 20 E4 EC  JSR sub_ECE4
C - - - - - 0x001154 00:D144: A2 04     LDX #$04
C - - - - - 0x001156 00:D146: 20 E4 EC  JSR sub_ECE4
C - - - - - 0x001159 00:D149: A2 08     LDX #$08
C - - - - - 0x00115B 00:D14B: 4C E4 EC  JMP loc_ECE4



sub_D14E:
bra_D14E_infinite_loop:
C - - - - - 0x00115E 00:D14E: AD 02 20  LDA $2002
C - - - - - 0x001161 00:D151: 29 40     AND #$40
C - - - - - 0x001163 00:D153: D0 F9     BNE bra_D14E_infinite_loop
C - - - - - 0x001165 00:D155: 20 B3 D1  JSR sub_D1B3
C - - - - - 0x001168 00:D158: A5 3F     LDA ram_003F
C - - - - - 0x00116A 00:D15A: 29 03     AND #$03
C - - - - - 0x00116C 00:D15C: 85 4C     STA ram_004C
C - - - - - 0x00116E 00:D15E: 20 1F D1  JSR sub_D11F
C - - - - - 0x001171 00:D161: A2 43     LDX #$43
C - - - - - 0x001173 00:D163: A5 41     LDA ram_0041
C - - - - - 0x001175 00:D165: C9 09     CMP #$09
C - - - - - 0x001177 00:D167: F0 15     BEQ bra_D17E
C - - - - - 0x001179 00:D169: A9 F8     LDA #$F8
C - - - - - 0x00117B 00:D16B: A0 EC     LDY #$EC
bra_D16D_loop:
C - - - - - 0x00117D 00:D16D: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x001180 00:D170: 88        DEY
C - - - - - 0x001181 00:D171: 88        DEY
C - - - - - 0x001182 00:D172: 88        DEY
C - - - - - 0x001183 00:D173: 88        DEY
C - - - - - 0x001184 00:D174: D0 F7     BNE bra_D16D_loop
C - - - - - 0x001186 00:D176: 20 C6 D0  JSR sub_D0C6
C - - - - - 0x001189 00:D179: 20 F4 D0  JSR sub_D0F4
C - - - - - 0x00118C 00:D17C: A2 28     LDX #$28
bra_D17E:
bra_D17E_garbage_loop:
C - - - - - 0x00118E 00:D17E: A0 12     LDY #$12
bra_D180_garbage_loop:
C - - - - - 0x001190 00:D180: 88        DEY
C - - - - - 0x001191 00:D181: D0 FD     BNE bra_D180_garbage_loop
C - - - - - 0x001193 00:D183: CA        DEX
C - - - - - 0x001194 00:D184: D0 F8     BNE bra_D17E_garbage_loop
C - - - - - 0x001196 00:D186: A5 10     LDA ram_0010
C - - - - - 0x001198 00:D188: 05 4D     ORA ram_004D
C - - - - - 0x00119A 00:D18A: 8D 00 20  STA $2000
C - - - - - 0x00119D 00:D18D: AD 02 20  LDA $2002
C - - - - - 0x0011A0 00:D190: A5 12     LDA ram_scroll_X
C - - - - - 0x0011A2 00:D192: 8D 05 20  STA $2005
C - - - - - 0x0011A5 00:D195: A5 13     LDA ram_scroll_Y
bra_D197:
loc_D197:
C D 2 - - - 0x0011A7 00:D197: 8D 05 20  STA $2005
C - - - - - 0x0011AA 00:D19A: 60        RTS



loc_D19B:
sub_D19B:
bra_D19B_infinite_loop:
C D 2 - - - 0x0011AB 00:D19B: AD 02 20  LDA $2002
C - - - - - 0x0011AE 00:D19E: 29 40     AND #$40
C - - - - - 0x0011B0 00:D1A0: F0 F9     BEQ bra_D19B_infinite_loop
C - - - - - 0x0011B2 00:D1A2: A5 10     LDA ram_0010
C - - - - - 0x0011B4 00:D1A4: 29 F0     AND #$F0
C - - - - - 0x0011B6 00:D1A6: 20 33 C3  JSR sub_C333
sub_D1A9:
C - - - - - 0x0011B9 00:D1A9: AD 02 20  LDA $2002
C - - - - - 0x0011BC 00:D1AC: A9 00     LDA #$00
C - - - - - 0x0011BE 00:D1AE: 8D 05 20  STA $2005
C - - - - - 0x0011C1 00:D1B1: F0 E4     BEQ bra_D197    ; jmp



sub_D1B3:
C - - - - - 0x0011C3 00:D1B3: A5 10     LDA ram_0010
C - - - - - 0x0011C5 00:D1B5: 05 4E     ORA ram_004E
C - - - - - 0x0011C7 00:D1B7: 8D 00 20  STA $2000
C - - - - - 0x0011CA 00:D1BA: AD 02 20  LDA $2002
C - - - - - 0x0011CD 00:D1BD: A5 50     LDA ram_0050
C - - - - - 0x0011CF 00:D1BF: 8D 05 20  STA $2005
C - - - - - 0x0011D2 00:D1C2: A5 51     LDA ram_0051
C - - - - - 0x0011D4 00:D1C4: 4C 97 D1  JMP loc_D197



loc_D1C7:
sub_D1C7:
C D 2 - - - 0x0011D7 00:D1C7: 85 0A     STA ram_000A
C - - - - - 0x0011D9 00:D1C9: 8A        TXA
C - - - - - 0x0011DA 00:D1CA: 48        PHA
C - - - - - 0x0011DB 00:D1CB: 98        TYA
C - - - - - 0x0011DC 00:D1CC: 48        PHA
C - - - - - 0x0011DD 00:D1CD: A9 02     LDA #$02
C - - - - - 0x0011DF 00:D1CF: 85 05     STA ram_0005
C - - - - - 0x0011E1 00:D1D1: A9 0F     LDA #$0F
C - - - - - 0x0011E3 00:D1D3: 25 03     AND ram_0003
C - - - - - 0x0011E5 00:D1D5: 85 07     STA ram_0007
C - - - - - 0x0011E7 00:D1D7: A5 03     LDA ram_0003
C - - - - - 0x0011E9 00:D1D9: 4A        LSR
C - - - - - 0x0011EA 00:D1DA: 4A        LSR
C - - - - - 0x0011EB 00:D1DB: 4A        LSR
C - - - - - 0x0011EC 00:D1DC: 4A        LSR
C - - - - - 0x0011ED 00:D1DD: 85 06     STA ram_0006
C - - - - - 0x0011EF 00:D1DF: AA        TAX
C - - - - - 0x0011F0 00:D1E0: A9 00     LDA #$00
C - - - - - 0x0011F2 00:D1E2: 18        CLC
bra_D1E3_loop:
C - - - - - 0x0011F3 00:D1E3: 65 07     ADC ram_0007
C - - - - - 0x0011F5 00:D1E5: CA        DEX
C - - - - - 0x0011F6 00:D1E6: D0 FB     BNE bra_D1E3_loop
C - - - - - 0x0011F8 00:D1E8: 85 08     STA ram_0008
C - - - - - 0x0011FA 00:D1EA: A5 02     LDA ram_0002
C - - - - - 0x0011FC 00:D1EC: A0 01     LDY #$01
bra_D1EE_loop:
C - - - - - 0x0011FE 00:D1EE: 8A        TXA
C - - - - - 0x0011FF 00:D1EF: 4A        LSR
C - - - - - 0x001200 00:D1F0: B0 0A     BCS bra_D1FC
C - - - - - 0x001202 00:D1F2: 46 0A     LSR ram_000A
C - - - - - 0x001204 00:D1F4: 90 06     BCC bra_D1FC
C - - - - - 0x001206 00:D1F6: A9 FC     LDA #$FC
C - - - - - 0x001208 00:D1F8: 91 04     STA (ram_0004),Y
C - - - - - 0x00120A 00:D1FA: D0 06     BNE bra_D202    ; jmp
bra_D1FC:
C - - - - - 0x00120C 00:D1FC: A5 02     LDA ram_0002
C - - - - - 0x00120E 00:D1FE: 91 04     STA (ram_0004),Y
C - - - - - 0x001210 00:D200: E6 02     INC ram_0002
bra_D202:
C - - - - - 0x001212 00:D202: C8        INY
C - - - - - 0x001213 00:D203: A5 0B     LDA ram_000B
C - - - - - 0x001215 00:D205: 91 04     STA (ram_0004),Y
C - - - - - 0x001217 00:D207: C8        INY
C - - - - - 0x001218 00:D208: C8        INY
C - - - - - 0x001219 00:D209: C8        INY
C - - - - - 0x00121A 00:D20A: E8        INX
C - - - - - 0x00121B 00:D20B: E4 08     CPX ram_0008
C - - - - - 0x00121D 00:D20D: D0 DF     BNE bra_D1EE_loop
C - - - - - 0x00121F 00:D20F: A0 00     LDY #$00
bra_D211_loop:
C - - - - - 0x001221 00:D211: A6 06     LDX ram_0006
C - - - - - 0x001223 00:D213: A5 01     LDA ram_0001
C - - - - - 0x001225 00:D215: 85 09     STA ram_0009
bra_D217_loop:
C - - - - - 0x001227 00:D217: A5 09     LDA ram_0009
C - - - - - 0x001229 00:D219: 91 04     STA (ram_0004),Y
C - - - - - 0x00122B 00:D21B: 18        CLC
C - - - - - 0x00122C 00:D21C: 69 08     ADC #$08
C - - - - - 0x00122E 00:D21E: 85 09     STA ram_0009
C - - - - - 0x001230 00:D220: C8        INY
C - - - - - 0x001231 00:D221: C8        INY
C - - - - - 0x001232 00:D222: C8        INY
C - - - - - 0x001233 00:D223: A5 00     LDA ram_0000
C - - - - - 0x001235 00:D225: 91 04     STA (ram_0004),Y
C - - - - - 0x001237 00:D227: C8        INY
C - - - - - 0x001238 00:D228: CA        DEX
C - - - - - 0x001239 00:D229: D0 EC     BNE bra_D217_loop
C - - - - - 0x00123B 00:D22B: A5 00     LDA ram_0000
C - - - - - 0x00123D 00:D22D: 18        CLC
C - - - - - 0x00123E 00:D22E: 69 08     ADC #$08
C - - - - - 0x001240 00:D230: 85 00     STA ram_0000
C - - - - - 0x001242 00:D232: C6 07     DEC ram_0007
C - - - - - 0x001244 00:D234: D0 DB     BNE bra_D211_loop
C - - - - - 0x001246 00:D236: 68        PLA
C - - - - - 0x001247 00:D237: A8        TAY
C - - - - - 0x001248 00:D238: 68        PLA
C - - - - - 0x001249 00:D239: AA        TAX
C - - - - - 0x00124A 00:D23A: 60        RTS



sub_D23B:
C - - - - - 0x00124B 00:D23B: A2 01     LDX #$01
bra_D23D_loop:
C - - - - - 0x00124D 00:D23D: 8A        TXA
C - - - - - 0x00124E 00:D23E: 48        PHA
C - - - - - 0x00124F 00:D23F: 85 01     STA ram_0001
C - - - - - 0x001251 00:D241: 20 4F D2  JSR sub_D24F_disable_rendering
C - - - - - 0x001254 00:D244: 20 60 D2  JSR sub_D260
C - - - - - 0x001257 00:D247: 68        PLA
C - - - - - 0x001258 00:D248: AA        TAX
C - - - - - 0x001259 00:D249: E8        INX
C - - - - - 0x00125A 00:D24A: E0 03     CPX #$03
C - - - - - 0x00125C 00:D24C: 90 EF     BCC bra_D23D_loop
C - - - - - 0x00125E 00:D24E: 60        RTS



sub_D24F_disable_rendering:
C - - - - - 0x00125F 00:D24F: A9 00     LDA #$00
C - - - - - 0x001261 00:D251: 8D 01 20  STA $2001
C - - - - - 0x001264 00:D254: 60        RTS



sub_D255_hide_all_sprites:
C - - - - - 0x001265 00:D255: A9 F8     LDA #$F8
C - - - - - 0x001267 00:D257: A0 00     LDY #$00
bra_D259_loop:
C - - - - - 0x001269 00:D259: 99 00 02  STA ram_oam,Y
C - - - - - 0x00126C 00:D25C: 88        DEY
C - - - - - 0x00126D 00:D25D: D0 FA     BNE bra_D259_loop
C - - - - - 0x00126F 00:D25F: 60        RTS



sub_D260:
C - - - - - 0x001270 00:D260: AD 02 20  LDA $2002
C - - - - - 0x001273 00:D263: A5 10     LDA ram_0010
C - - - - - 0x001275 00:D265: 29 FB     AND #$FB
C - - - - - 0x001277 00:D267: 20 33 C3  JSR sub_C333
C - - - - - 0x00127A 00:D26A: A9 1C     LDA #$1C
C - - - - - 0x00127C 00:D26C: 18        CLC
bra_D26D_loop:
C - - - - - 0x00127D 00:D26D: 69 04     ADC #$04
C - - - - - 0x00127F 00:D26F: C6 01     DEC ram_0001
C - - - - - 0x001281 00:D271: D0 FA     BNE bra_D26D_loop
C - - - - - 0x001283 00:D273: 85 02     STA ram_0002
C - - - - - 0x001285 00:D275: 8D 06 20  STA $2006
C - - - - - 0x001288 00:D278: A9 00     LDA #$00
C - - - - - 0x00128A 00:D27A: 8D 06 20  STA $2006
C - - - - - 0x00128D 00:D27D: A2 04     LDX #$04
C - - - - - 0x00128F 00:D27F: A0 00     LDY #$00
C - - - - - 0x001291 00:D281: A9 FC     LDA #$FC
bra_D283_loop:
C - - - - - 0x001293 00:D283: 8D 07 20  STA $2007
C - - - - - 0x001296 00:D286: 88        DEY
C - - - - - 0x001297 00:D287: D0 FA     BNE bra_D283_loop
C - - - - - 0x001299 00:D289: CA        DEX
C - - - - - 0x00129A 00:D28A: D0 F7     BNE bra_D283_loop
C - - - - - 0x00129C 00:D28C: A5 02     LDA ram_0002
C - - - - - 0x00129E 00:D28E: 69 03     ADC #$03
C - - - - - 0x0012A0 00:D290: 8D 06 20  STA $2006
C - - - - - 0x0012A3 00:D293: A9 C0     LDA #$C0
C - - - - - 0x0012A5 00:D295: 8D 06 20  STA $2006
C - - - - - 0x0012A8 00:D298: A0 40     LDY #$40
C - - - - - 0x0012AA 00:D29A: A9 00     LDA #$00
bra_D29C_loop:
C - - - - - 0x0012AC 00:D29C: 8D 07 20  STA $2007
C - - - - - 0x0012AF 00:D29F: 88        DEY
C - - - - - 0x0012B0 00:D2A0: D0 FA     BNE bra_D29C_loop
C - - - - - 0x0012B2 00:D2A2: 60        RTS



loc_D2A3:
C D 2 - - - 0x0012B3 00:D2A3: 8A        TXA
C - - - - - 0x0012B4 00:D2A4: 48        PHA
C - - - - - 0x0012B5 00:D2A5: 98        TYA
C - - - - - 0x0012B6 00:D2A6: 48        PHA
C - - - - - 0x0012B7 00:D2A7: A0 00     LDY #$00
C - - - - - 0x0012B9 00:D2A9: B1 02     LDA (ram_0002),Y
C - - - - - 0x0012BB 00:D2AB: 29 0F     AND #$0F
C - - - - - 0x0012BD 00:D2AD: 85 05     STA ram_0005
C - - - - - 0x0012BF 00:D2AF: B1 02     LDA (ram_0002),Y
C - - - - - 0x0012C1 00:D2B1: 4A        LSR
C - - - - - 0x0012C2 00:D2B2: 4A        LSR
C - - - - - 0x0012C3 00:D2B3: 4A        LSR
C - - - - - 0x0012C4 00:D2B4: 4A        LSR
C - - - - - 0x0012C5 00:D2B5: 85 04     STA ram_0004
C - - - - - 0x0012C7 00:D2B7: AE 00 03  LDX ram_0300
bra_D2BA_loop:
C - - - - - 0x0012CA 00:D2BA: A5 01     LDA ram_0001
C - - - - - 0x0012CC 00:D2BC: 9D 01 03  STA ram_0301,X
C - - - - - 0x0012CF 00:D2BF: 20 FF D2  JSR sub_D2FF
C - - - - - 0x0012D2 00:D2C2: A5 00     LDA ram_0000
C - - - - - 0x0012D4 00:D2C4: 9D 01 03  STA ram_0301,X
C - - - - - 0x0012D7 00:D2C7: 20 FF D2  JSR sub_D2FF
C - - - - - 0x0012DA 00:D2CA: A5 05     LDA ram_0005
C - - - - - 0x0012DC 00:D2CC: 85 06     STA ram_0006
C - - - - - 0x0012DE 00:D2CE: 9D 01 03  STA ram_0301,X
bra_D2D1_loop:
C - - - - - 0x0012E1 00:D2D1: 20 FF D2  JSR sub_D2FF
C - - - - - 0x0012E4 00:D2D4: C8        INY
C - - - - - 0x0012E5 00:D2D5: B1 02     LDA (ram_0002),Y
C - - - - - 0x0012E7 00:D2D7: 9D 01 03  STA ram_0301,X
C - - - - - 0x0012EA 00:D2DA: C6 06     DEC ram_0006
C - - - - - 0x0012EC 00:D2DC: D0 F3     BNE bra_D2D1_loop
C - - - - - 0x0012EE 00:D2DE: 20 FF D2  JSR sub_D2FF
C - - - - - 0x0012F1 00:D2E1: 8E 00 03  STX ram_0300
C - - - - - 0x0012F4 00:D2E4: 18        CLC
C - - - - - 0x0012F5 00:D2E5: A9 20     LDA #$20
C - - - - - 0x0012F7 00:D2E7: 65 00     ADC ram_0000
C - - - - - 0x0012F9 00:D2E9: 85 00     STA ram_0000
C - - - - - 0x0012FB 00:D2EB: A9 00     LDA #$00
C - - - - - 0x0012FD 00:D2ED: 65 01     ADC ram_0001
C - - - - - 0x0012FF 00:D2EF: 85 01     STA ram_0001
C - - - - - 0x001301 00:D2F1: C6 04     DEC ram_0004
C - - - - - 0x001303 00:D2F3: D0 C5     BNE bra_D2BA_loop
C - - - - - 0x001305 00:D2F5: A9 00     LDA #$00
C - - - - - 0x001307 00:D2F7: 9D 01 03  STA ram_0301,X
C - - - - - 0x00130A 00:D2FA: 68        PLA
C - - - - - 0x00130B 00:D2FB: A8        TAY
C - - - - - 0x00130C 00:D2FC: 68        PLA
C - - - - - 0x00130D 00:D2FD: AA        TAX
C - - - - - 0x00130E 00:D2FE: 60        RTS



sub_D2FF:
C - - - - - 0x00130F 00:D2FF: E8        INX
C - - - - - 0x001310 00:D300: 8A        TXA
C - - - - - 0x001311 00:D301: C9 3F     CMP #$3F
C - - - - - 0x001313 00:D303: 90 0A     BCC bra_D30F_RTS
- - - - - - 0x001315 00:D305: AE 00 03  LDX ram_0300
- - - - - - 0x001318 00:D308: A9 00     LDA #$00
- - - - - - 0x00131A 00:D30A: 9D 01 03  STA ram_0301,X
- - - - - - 0x00131D 00:D30D: 68        PLA
- - - - - - 0x00131E 00:D30E: 68        PLA
bra_D30F_RTS:
C - - - - - 0x00131F 00:D30F: 60        RTS



sub_D310:
C - - - - - 0x001320 00:D310: A2 0E     LDX #$0E
C - - - - - 0x001322 00:D312: C6 20     DEC ram_0020
C - - - - - 0x001324 00:D314: 10 06     BPL bra_D31C
C - - - - - 0x001326 00:D316: A9 0A     LDA #$0A
C - - - - - 0x001328 00:D318: 85 20     STA ram_0020
C - - - - - 0x00132A 00:D31A: A2 1C     LDX #$1C
bra_D31C:
bra_D31C_loop:
C - - - - - 0x00132C 00:D31C: B5 21     LDA ram_0021,X
C - - - - - 0x00132E 00:D31E: F0 02     BEQ bra_D322
C - - - - - 0x001330 00:D320: D6 21     DEC ram_0021,X
bra_D322:
C - - - - - 0x001332 00:D322: CA        DEX
C - - - - - 0x001333 00:D323: 10 F7     BPL bra_D31C_loop
C - - - - - 0x001335 00:D325: 60        RTS



sub_D326:
C - - - - - 0x001336 00:D326: A5 18     LDA ram_0018
C - - - - - 0x001338 00:D328: 29 02     AND #$02
C - - - - - 0x00133A 00:D32A: 85 00     STA ram_0000
C - - - - - 0x00133C 00:D32C: A5 19     LDA ram_0019
C - - - - - 0x00133E 00:D32E: 29 02     AND #$02
C - - - - - 0x001340 00:D330: 45 00     EOR ram_0000
C - - - - - 0x001342 00:D332: 18        CLC
C - - - - - 0x001343 00:D333: F0 01     BEQ bra_D336
C - - - - - 0x001345 00:D335: 38        SEC
bra_D336:
C - - - - - 0x001346 00:D336: 66 18     ROR ram_0018
C - - - - - 0x001348 00:D338: 66 19     ROR ram_0019
C - - - - - 0x00134A 00:D33A: 66 1A     ROR ram_001A
C - - - - - 0x00134C 00:D33C: 66 1B     ROR ram_001B
C - - - - - 0x00134E 00:D33E: 66 1C     ROR ram_001C
C - - - - - 0x001350 00:D340: 66 1D     ROR ram_001D
C - - - - - 0x001352 00:D342: 66 1E     ROR ram_001E
C - - - - - 0x001354 00:D344: 66 1F     ROR ram_001F
C - - - - - 0x001356 00:D346: 60        RTS



sub_D347_read_joy_regs:
C - - - - - 0x001357 00:D347: A9 01     LDA #$01
C - - - - - 0x001359 00:D349: 8D 16 40  STA $4016
C - - - - - 0x00135C 00:D34C: A2 00     LDX #$00
C - - - - - 0x00135E 00:D34E: A9 00     LDA #$00
C - - - - - 0x001360 00:D350: 8D 16 40  STA $4016
C - - - - - 0x001363 00:D353: 20 5B D3  JSR sub_D35B
C - - - - - 0x001366 00:D356: E8        INX
C - - - - - 0x001367 00:D357: 20 5B D3  JSR sub_D35B
C - - - - - 0x00136A 00:D35A: 60        RTS



sub_D35B:
C - - - - - 0x00136B 00:D35B: A0 08     LDY #$08
bra_D35D_loop:
C - - - - - 0x00136D 00:D35D: 48        PHA
C - - - - - 0x00136E 00:D35E: BD 16 40  LDA $4016,X
C - - - - - 0x001371 00:D361: 85 00     STA ram_0000
C - - - - - 0x001373 00:D363: 4A        LSR
C - - - - - 0x001374 00:D364: 05 00     ORA ram_0000
C - - - - - 0x001376 00:D366: 4A        LSR
C - - - - - 0x001377 00:D367: 68        PLA
C - - - - - 0x001378 00:D368: 2A        ROL
C - - - - - 0x001379 00:D369: 88        DEY
C - - - - - 0x00137A 00:D36A: D0 F1     BNE bra_D35D_loop
C - - - - - 0x00137C 00:D36C: 86 00     STX ram_0000
C - - - - - 0x00137E 00:D36E: 06 00     ASL ram_0000
C - - - - - 0x001380 00:D370: A6 00     LDX ram_0000
C - - - - - 0x001382 00:D372: B4 14     LDY ram_btn_hold,X
C - - - - - 0x001384 00:D374: 84 00     STY ram_0000
C - - - - - 0x001386 00:D376: 95 14     STA ram_btn_hold,X
C - - - - - 0x001388 00:D378: 95 15     STA ram_btn_press,X
C - - - - - 0x00138A 00:D37A: 29 FF     AND #$FF
C - - - - - 0x00138C 00:D37C: 10 08     BPL bra_D386_RTS
C - - - - - 0x00138E 00:D37E: 24 00     BIT ram_0000
C - - - - - 0x001390 00:D380: 10 04     BPL bra_D386_RTS
C - - - - - 0x001392 00:D382: 29 7F     AND #con_btn_A ^ $FF
C - - - - - 0x001394 00:D384: 95 15     STA ram_btn_press,X
bra_D386_RTS:
C - - - - - 0x001396 00:D386: 60        RTS



bra_D387_loop:
C - - - - - 0x001397 00:D387: 8D 06 20  STA $2006
C - - - - - 0x00139A 00:D38A: C8        INY
C - - - - - 0x00139B 00:D38B: B1 00     LDA (ram_0000),Y
C - - - - - 0x00139D 00:D38D: 8D 06 20  STA $2006
C - - - - - 0x0013A0 00:D390: C8        INY
C - - - - - 0x0013A1 00:D391: B1 00     LDA (ram_0000),Y
C - - - - - 0x0013A3 00:D393: 0A        ASL
C - - - - - 0x0013A4 00:D394: 48        PHA
C - - - - - 0x0013A5 00:D395: A5 10     LDA ram_0010
C - - - - - 0x0013A7 00:D397: 09 04     ORA #$04
C - - - - - 0x0013A9 00:D399: B0 02     BCS bra_D39D
C - - - - - 0x0013AB 00:D39B: 29 FB     AND #$FB
bra_D39D:
C - - - - - 0x0013AD 00:D39D: 20 33 C3  JSR sub_C333
C - - - - - 0x0013B0 00:D3A0: 68        PLA
C - - - - - 0x0013B1 00:D3A1: 0A        ASL
C - - - - - 0x0013B2 00:D3A2: 90 03     BCC bra_D3A7
C - - - - - 0x0013B4 00:D3A4: 09 02     ORA #$02
C - - - - - 0x0013B6 00:D3A6: C8        INY
bra_D3A7:
C - - - - - 0x0013B7 00:D3A7: 4A        LSR
C - - - - - 0x0013B8 00:D3A8: 4A        LSR
C - - - - - 0x0013B9 00:D3A9: AA        TAX
bra_D3AA_loop:
C - - - - - 0x0013BA 00:D3AA: B0 01     BCS bra_D3AD
C - - - - - 0x0013BC 00:D3AC: C8        INY
bra_D3AD:
C - - - - - 0x0013BD 00:D3AD: B1 00     LDA (ram_0000),Y
C - - - - - 0x0013BF 00:D3AF: 8D 07 20  STA $2007
C - - - - - 0x0013C2 00:D3B2: CA        DEX
C - - - - - 0x0013C3 00:D3B3: D0 F5     BNE bra_D3AA_loop
C - - - - - 0x0013C5 00:D3B5: 38        SEC
C - - - - - 0x0013C6 00:D3B6: 98        TYA
C - - - - - 0x0013C7 00:D3B7: 65 00     ADC ram_0000
C - - - - - 0x0013C9 00:D3B9: 85 00     STA ram_0000
C - - - - - 0x0013CB 00:D3BB: A9 00     LDA #$00
C - - - - - 0x0013CD 00:D3BD: 65 01     ADC ram_0001
C - - - - - 0x0013CF 00:D3BF: 85 01     STA ram_0001
sub_D3C1:
C - - - - - 0x0013D1 00:D3C1: AE 02 20  LDX $2002
C - - - - - 0x0013D4 00:D3C4: A0 00     LDY #$00
C - - - - - 0x0013D6 00:D3C6: B1 00     LDA (ram_0000),Y
C - - - - - 0x0013D8 00:D3C8: D0 BD     BNE bra_D387_loop
C - - - - - 0x0013DA 00:D3CA: AD 02 20  LDA $2002
C - - - - - 0x0013DD 00:D3CD: A9 00     LDA #$00
C - - - - - 0x0013DF 00:D3CF: 8D 05 20  STA $2005
C - - - - - 0x0013E2 00:D3D2: 8D 05 20  STA $2005
C - - - - - 0x0013E5 00:D3D5: 60        RTS



con_40                                  = $40 ; 
con_80                                  = $80 ; 
con_C0                                  = $C0 ; 



_off_000_D3D6_12:
- D 2 - I - 0x0013E6 00:D3D6: 3F 00     .dbyt $3F00
- D 2 - I - 0x0013E8 00:D3D8: 08        .byte $08   ; 
- D 2 - I - 0x0013E9 00:D3D9: 29        .byte $29, $27, $22, $30   ; 
- D 2 - I - 0x0013ED 00:D3DD: 29        .byte $29, $27, $18, $36   ; 

- D 2 - I - 0x0013F1 00:D3E1: 3F 10     .dbyt $3F10
- D 2 - I - 0x0013F3 00:D3E3: 04        .byte $04   ; 
- D 2 - I - 0x0013F4 00:D3E4: 29        .byte $29, $20, $16, $0F   ; 

- D 2 - I - 0x0013F8 00:D3E8: 00        .byte $00   ; end token



_off_000_D3E9_13:
- D 2 - I - 0x0013F9 00:D3E9: 3F 00     .dbyt $3F00
- D 2 - I - 0x0013FB 00:D3EB: 08        .byte $08   ; 
- D 2 - I - 0x0013FC 00:D3EC: 01        .byte $01, $1A, $26, $33   ; 
- D 2 - I - 0x001400 00:D3F0: 01        .byte $01, $11, $0C, $2C   ; 

- D 2 - I - 0x001404 00:D3F4: 3F 10     .dbyt $3F10
- D 2 - I - 0x001406 00:D3F6: 04        .byte $04   ; 
- D 2 - I - 0x001407 00:D3F7: 01        .byte $01, $20, $16, $0F   ; 

- D 2 - I - 0x00140B 00:D3FB: 00        .byte $00   ; end token



_off_000_D3FC_14:
- D 2 - I - 0x00140C 00:D3FC: 3F 00     .dbyt $3F00
- D 2 - I - 0x00140E 00:D3FE: 08        .byte $08   ; 
- D 2 - I - 0x00140F 00:D3FF: 02        .byte $02, $26, $1C, $30   ; 
- D 2 - I - 0x001413 00:D403: 02        .byte $02, $29, $19, $39   ; 

- D 2 - I - 0x001417 00:D407: 3F 10     .dbyt $3F10
- D 2 - I - 0x001419 00:D409: 04        .byte $04   ; 
- D 2 - I - 0x00141A 00:D40A: 02        .byte $02, $20, $16, $0F   ; 

- D 2 - I - 0x00141E 00:D40E: 00        .byte $00   ; end token



_off_000_D40F_15:
- D 2 - I - 0x00141F 00:D40F: 3F 00     .dbyt $3F00
- D 2 - I - 0x001421 00:D411: 08        .byte $08   ; 
- D 2 - I - 0x001422 00:D412: 00        .byte $00, $26, $22, $30   ; 
- D 2 - I - 0x001426 00:D416: 00        .byte $00, $27, $18, $37   ; 

- D 2 - I - 0x00142A 00:D41A: 3F 10     .dbyt $3F10
- D 2 - I - 0x00142C 00:D41C: 04        .byte $04   ; 
- D 2 - I - 0x00142D 00:D41D: 00        .byte $00, $20, $16, $0F   ; 

- D 2 - I - 0x001431 00:D421: 00        .byte $00   ; end token


_off_000_D422_16:
- D 2 - I - 0x001432 00:D422: 3F 00     .dbyt $3F00
- D 2 - I - 0x001434 00:D424: 08        .byte $08   ; 
- D 2 - I - 0x001435 00:D425: 02        .byte $02, $19, $22, $30   ; 
- D 2 - I - 0x001439 00:D429: 02        .byte $02, $00, $2D, $10   ; 

- D 2 - I - 0x00143D 00:D42D: 3F 10     .dbyt $3F10
- D 2 - I - 0x00143F 00:D42F: 04        .byte $04   ; 
- D 2 - I - 0x001440 00:D430: 02        .byte $02, $20, $16, $0F   ; 

- D 2 - I - 0x001444 00:D434: 00        .byte $00   ; end token



_off_000_D435_17:
- D 2 - I - 0x001445 00:D435: 3F 08     .dbyt $3F08
- D 2 - I - 0x001447 00:D437: 08        .byte $08   ; 
- D 2 - I - 0x001448 00:D438: 29        .byte $29, $22, $0F, $20   ; 
- D 2 - I - 0x00144C 00:D43C: 29        .byte $29, $22, $0F, $16   ; 

- D 2 - I - 0x001450 00:D440: 3F 14     .dbyt $3F14
- D 2 - I - 0x001452 00:D442: 0C        .byte $0C   ; 
- D 2 - I - 0x001453 00:D443: 29        .byte $29, $13, $20, $0F   ; 
- D 2 - I - 0x001457 00:D447: 29        .byte $29, $31, $1C, $0F   ; 
- D 2 - I - 0x00145B 00:D44B: 29        .byte $29, $20, $19, $0F   ; 

- D 2 - I - 0x00145F 00:D44F: 00        .byte $00   ; end token



_off_000_D450_18:
- D 2 - I - 0x001460 00:D450: 3F 00     .dbyt $3F00
- D 2 - I - 0x001462 00:D452: 1C        .byte $1C   ; 
- D 2 - I - 0x001463 00:D453: 02        .byte $02, $0F, $30, $21   ; 
- D 2 - I - 0x001467 00:D457: 02        .byte $02, $15, $02, $2A   ; 
- D 2 - I - 0x00146B 00:D45B: 02        .byte $02, $3C, $02, $30   ; 
- D 2 - I - 0x00146F 00:D45F: 02        .byte $02, $30, $02, $27   ; 

- D 2 - I - 0x001473 00:D463: 02        .byte $02, $20, $16, $0F   ; 
- D 2 - I - 0x001477 00:D467: 02        .byte $02, $27, $13, $3C   ; 
- D 2 - I - 0x00147B 00:D46B: 02        .byte $02, $27, $16, $30   ; 

- D 2 - I - 0x00147F 00:D46F: 00        .byte $00   ; end token



_off_000_D470_01:
- D 2 - I - 0x001480 00:D470: 23 D0     .dbyt $23D0
- D 2 - I - 0x001482 00:D472: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001483 00:D473: 55        .byte $55   ; 

- D 2 - I - 0x001484 00:D474: 23 F0     .dbyt $23F0
- D 2 - I - 0x001486 00:D476: 50        .byte $10 + con_40   ; 
- D 2 - I - 0x001487 00:D477: AA        .byte $AA   ; 

- D 2 - I - 0x001488 00:D478: 27 D0     .dbyt $27D0
- D 2 - I - 0x00148A 00:D47A: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00148B 00:D47B: 55        .byte $55   ; 

- D 2 - I - 0x00148C 00:D47C: 27 F0     .dbyt $27F0
- D 2 - I - 0x00148E 00:D47E: 50        .byte $10 + con_40   ; 
- D 2 - I - 0x00148F 00:D47F: AA        .byte $AA   ; 

- D 2 - I - 0x001490 00:D480: 20 00     .dbyt $2000
- D 2 - I - 0x001492 00:D482: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001493 00:D483: 3F        .byte $3F   ; 

- D 2 - I - 0x001494 00:D484: 20 20     .dbyt $2020
- D 2 - I - 0x001496 00:D486: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001497 00:D487: 3E        .byte $3E   ; 

- D 2 - I - 0x001498 00:D488: 20 40     .dbyt $2040
- D 2 - I - 0x00149A 00:D48A: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00149B 00:D48B: 3F        .byte $3F   ; 

- D 2 - I - 0x00149C 00:D48C: 20 60     .dbyt $2060
- D 2 - I - 0x00149E 00:D48E: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00149F 00:D48F: 3E        .byte $3E   ; 

- D 2 - I - 0x0014A0 00:D490: 20 80     .dbyt $2080
- D 2 - I - 0x0014A2 00:D492: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014A3 00:D493: 3F        .byte $3F   ; 

- D 2 - I - 0x0014A4 00:D494: 24 00     .dbyt $2400
- D 2 - I - 0x0014A6 00:D496: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014A7 00:D497: 3F        .byte $3F   ; 

- D 2 - I - 0x0014A8 00:D498: 24 20     .dbyt $2420
- D 2 - I - 0x0014AA 00:D49A: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014AB 00:D49B: 3E        .byte $3E   ; 

- D 2 - I - 0x0014AC 00:D49C: 24 40     .dbyt $2440
- D 2 - I - 0x0014AE 00:D49E: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014AF 00:D49F: 3F        .byte $3F   ; 

- D 2 - I - 0x0014B0 00:D4A0: 24 60     .dbyt $2460
- D 2 - I - 0x0014B2 00:D4A2: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014B3 00:D4A3: 3E        .byte $3E   ; 

- D 2 - I - 0x0014B4 00:D4A4: 24 80     .dbyt $2480
- D 2 - I - 0x0014B6 00:D4A6: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014B7 00:D4A7: 3F        .byte $3F   ; 

- D 2 - I - 0x0014B8 00:D4A8: 20 A0     .dbyt $20A0
- D 2 - I - 0x0014BA 00:D4AA: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014BB 00:D4AB: 30        .byte $30   ; 

- D 2 - I - 0x0014BC 00:D4AC: 20 C0     .dbyt $20C0
- D 2 - I - 0x0014BE 00:D4AE: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014BF 00:D4AF: FE        .byte $FE   ; 

- D 2 - I - 0x0014C0 00:D4B0: 20 E0     .dbyt $20E0
- D 2 - I - 0x0014C2 00:D4B2: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014C3 00:D4B3: FE        .byte $FE   ; 

- D 2 - I - 0x0014C4 00:D4B4: 24 A0     .dbyt $24A0
- D 2 - I - 0x0014C6 00:D4B6: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014C7 00:D4B7: 30        .byte $30   ; 

- D 2 - I - 0x0014C8 00:D4B8: 24 C0     .dbyt $24C0
- D 2 - I - 0x0014CA 00:D4BA: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014CB 00:D4BB: FE        .byte $FE   ; 

- D 2 - I - 0x0014CC 00:D4BC: 24 E0     .dbyt $24E0
- D 2 - I - 0x0014CE 00:D4BE: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014CF 00:D4BF: FE        .byte $FE   ; 

- D 2 - I - 0x0014D0 00:D4C0: 20 AB     .dbyt $20AB
- D 2 - I - 0x0014D2 00:D4C2: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x0014D3 00:D4C3: 31        .byte $31, $34, $37   ; 

- D 2 - I - 0x0014D6 00:D4C6: 20 B4     .dbyt $20B4
- D 2 - I - 0x0014D8 00:D4C8: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x0014D9 00:D4C9: 33        .byte $33, $36, $39   ; 

- D 2 - I - 0x0014DC 00:D4CC: 20 AC     .dbyt $20AC
- D 2 - I - 0x0014DE 00:D4CE: 48        .byte $08 + con_40   ; 
- D 2 - I - 0x0014DF 00:D4CF: 32        .byte $32   ; 

- D 2 - I - 0x0014E0 00:D4D0: 20 EC     .dbyt $20EC
- D 2 - I - 0x0014E2 00:D4D2: 48        .byte $08 + con_40   ; 
- D 2 - I - 0x0014E3 00:D4D3: 38        .byte $38   ; 

- D 2 - I - 0x0014E4 00:D4D4: 20 CC     .dbyt $20CC
- D 2 - I - 0x0014E6 00:D4D6: 08        .byte $08   ; 
- D 2 - I - 0x0014E7 00:D4D7: 17        .byte $17, $12, $17, $1D, $0E, $17, $0D, $18   ; 

- D 2 - I - 0x0014EF 00:D4DF: 22 00     .dbyt $2200
- D 2 - I - 0x0014F1 00:D4E1: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014F2 00:D4E2: 3B        .byte $3B   ; 

- D 2 - I - 0x0014F3 00:D4E3: 22 20     .dbyt $2220
- D 2 - I - 0x0014F5 00:D4E5: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014F6 00:D4E6: 3C        .byte $3C   ; 

- D 2 - I - 0x0014F7 00:D4E7: 22 40     .dbyt $2240
- D 2 - I - 0x0014F9 00:D4E9: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014FA 00:D4EA: 3D        .byte $3D   ; 

- D 2 - I - 0x0014FB 00:D4EB: 22 60     .dbyt $2260
- D 2 - I - 0x0014FD 00:D4ED: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x0014FE 00:D4EE: 3B        .byte $3B   ; 

- D 2 - I - 0x0014FF 00:D4EF: 22 80     .dbyt $2280
- D 2 - I - 0x001501 00:D4F1: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001502 00:D4F2: 3C        .byte $3C   ; 

- D 2 - I - 0x001503 00:D4F3: 22 A0     .dbyt $22A0
- D 2 - I - 0x001505 00:D4F5: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001506 00:D4F6: 3D        .byte $3D   ; 

- D 2 - I - 0x001507 00:D4F7: 26 00     .dbyt $2600
- D 2 - I - 0x001509 00:D4F9: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00150A 00:D4FA: 3B        .byte $3B   ; 

- D 2 - I - 0x00150B 00:D4FB: 26 20     .dbyt $2620
- D 2 - I - 0x00150D 00:D4FD: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00150E 00:D4FE: 3C        .byte $3C   ; 

- D 2 - I - 0x00150F 00:D4FF: 26 40     .dbyt $2640
- D 2 - I - 0x001511 00:D501: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001512 00:D502: 3D        .byte $3D   ; 

- D 2 - I - 0x001513 00:D503: 26 60     .dbyt $2660
- D 2 - I - 0x001515 00:D505: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x001516 00:D506: 3B        .byte $3B   ; 

- D 2 - I - 0x001517 00:D507: 26 80     .dbyt $2680
- D 2 - I - 0x001519 00:D509: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00151A 00:D50A: 3C        .byte $3C   ; 

- D 2 - I - 0x00151B 00:D50B: 26 A0     .dbyt $26A0
- D 2 - I - 0x00151D 00:D50D: 60        .byte $20 + con_40   ; 
- D 2 - I - 0x00151E 00:D50E: 3D        .byte $3D   ; 

- D 2 - I - 0x00151F 00:D50F: 23 00     .dbyt $2300
- D 2 - I - 0x001521 00:D511: 7F        .byte $3F + con_40   ; 
- D 2 - I - 0x001522 00:D512: FE        .byte $FE   ; 

- D 2 - I - 0x001523 00:D513: 23 3F     .dbyt $233F
- D 2 - I - 0x001525 00:D515: 7F        .byte $3F + con_40   ; 
- D 2 - I - 0x001526 00:D516: FE        .byte $FE   ; 

- D 2 - I - 0x001527 00:D517: 23 7E     .dbyt $237E
- D 2 - I - 0x001529 00:D519: 7F        .byte $3F + con_40   ; 
- D 2 - I - 0x00152A 00:D51A: FE        .byte $FE   ; 

- D 2 - I - 0x00152B 00:D51B: 23 9D     .dbyt $239D
- D 2 - I - 0x00152D 00:D51D: 63        .byte $23 + con_40   ; 
- D 2 - I - 0x00152E 00:D51E: FE        .byte $FE   ; 

- D 2 - I - 0x00152F 00:D51F: 27 00     .dbyt $2700
- D 2 - I - 0x001531 00:D521: 7F        .byte $3F + con_40   ; 
- D 2 - I - 0x001532 00:D522: FE        .byte $FE   ; 

- D 2 - I - 0x001533 00:D523: 00        .byte $00   ; end token



_off_000_D524_0E:
- D 2 - I - 0x001534 00:D524: 24 AB     .dbyt $24AB
- D 2 - I - 0x001536 00:D526: 4A        .byte $0A + con_40   ; 
- D 2 - I - 0x001537 00:D527: F2        .byte $F2   ; 

- D 2 - I - 0x001538 00:D528: 24 AA     .dbyt $24AA
- D 2 - I - 0x00153A 00:D52A: 01        .byte $01   ; 
- D 2 - I - 0x00153B 00:D52B: 96        .byte $96   ; 

- D 2 - I - 0x00153C 00:D52C: 24 B5     .dbyt $24B5
- D 2 - I - 0x00153E 00:D52E: 01        .byte $01   ; 
- D 2 - I - 0x00153F 00:D52F: 97        .byte $97   ; 

- D 2 - I - 0x001540 00:D530: 24 CB     .dbyt $24CB
- D 2 - I - 0x001542 00:D532: 03        .byte $03   ; 
- D 2 - I - 0x001543 00:D533: 93        .byte $93, $94, $95   ; 

- D 2 - I - 0x001546 00:D536: 23 F1     .dbyt $23F1
- D 2 - I - 0x001548 00:D538: 06        .byte $06   ; 
- D 2 - I - 0x001549 00:D539: AF        .byte $AF, $AA, $AE, $AB, $AA, $AF   ; 

- D 2 - I - 0x00154F 00:D53F: 23 23     .dbyt $2323
- D 2 - I - 0x001551 00:D541: 07        .byte $07   ; 
- D 2 - I - 0x001552 00:D542: B7        .byte $B7, $B7, $03, $1B, $0D, $B7, $B7   ; 

- D 2 - I - 0x001559 00:D549: 23 22     .dbyt $2322
- D 2 - I - 0x00155B 00:D54B: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x00155C 00:D54C: B5        .byte $B5, $B0, $B2   ; 

- D 2 - I - 0x00155F 00:D54F: 23 2A     .dbyt $232A
- D 2 - I - 0x001561 00:D551: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x001562 00:D552: B6        .byte $B6, $B1, $B4   ; 

- D 2 - I - 0x001565 00:D555: 23 63     .dbyt $2363
- D 2 - I - 0x001567 00:D557: 47        .byte $07 + con_40   ; 
- D 2 - I - 0x001568 00:D558: B3        .byte $B3   ; 

- D 2 - I - 0x001569 00:D559: 23 36     .dbyt $2336
- D 2 - I - 0x00156B 00:D55B: 07        .byte $07   ; 
- D 2 - I - 0x00156C 00:D55C: B7        .byte $B7, $B7, $1D, $12, $16, $0E, $B7   ; 

- D 2 - I - 0x001573 00:D563: 23 35     .dbyt $2335
- D 2 - I - 0x001575 00:D565: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x001576 00:D566: B5        .byte $B5, $B0, $B2   ; 

- D 2 - I - 0x001579 00:D569: 23 3D     .dbyt $233D
- D 2 - I - 0x00157B 00:D56B: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x00157C 00:D56C: B6        .byte $B6, $B1, $B4   ; 

- D 2 - I - 0x00157F 00:D56F: 23 76     .dbyt $2376
- D 2 - I - 0x001581 00:D571: 47        .byte $07 + con_40   ; 
- D 2 - I - 0x001582 00:D572: B3        .byte $B3   ; 

- D 2 - I - 0x001583 00:D573: 23 2C     .dbyt $232C
- D 2 - I - 0x001585 00:D575: 08        .byte $08   ; 
- D 2 - I - 0x001586 00:D576: 4C        .byte $4C, $5A, $1D, $0E, $16, $19, $7A, $8B   ; 

- D 2 - I - 0x00158E 00:D57E: 23 4B     .dbyt $234B
- D 2 - I - 0x001590 00:D580: 0A        .byte $0A   ; 
- D 2 - I - 0x001591 00:D581: 4B        .byte $4B, $4D, $5B, $FC, $FC, $FC, $FC, $7B, $4D, $8C   ; 

- D 2 - I - 0x00159B 00:D58B: 23 6D     .dbyt $236D
- D 2 - I - 0x00159D 00:D58D: 06        .byte $06   ; 
- D 2 - I - 0x00159E 00:D58E: 5C        .byte $5C, $6A, $6A, $6A, $6A, $7C   ; 

- D 2 - I - 0x0015A4 00:D594: 23 8D     .dbyt $238D
- D 2 - I - 0x0015A6 00:D596: 06        .byte $06   ; 
- D 2 - I - 0x0015A7 00:D597: 5D        .byte $5D, $6B, $6C, $6B, $6C, $8A   ; 

- D 2 - I - 0x0015AD 00:D59D: 00        .byte $00   ; end token



_off_000_D59E_07:
- D 2 - I - 0x0015AE 00:D59E: 20 89     .dbyt $2089
- D 2 - I - 0x0015B0 00:D5A0: 4E        .byte $0E + con_40   ; 
- D 2 - I - 0x0015B1 00:D5A1: FC        .byte $FC   ; 

- D 2 - I - 0x0015B2 00:D5A2: 20 A9     .dbyt $20A9
- D 2 - I - 0x0015B4 00:D5A4: 0E        .byte $0E   ; 
- D 2 - I - 0x0015B5 00:D5A5: FC        .byte $FC, $FC, $0E, $21, $0C, $12, $1D, $0E, $0B, $12, $14, $0E, $FC, $FC   ; 

- D 2 - I - 0x0015C3 00:D5B3: 00        .byte $00   ; end token



_off_000_D5B4_08:
- D 2 - I - 0x0015C4 00:D5B4: 20 89     .dbyt $2089
- D 2 - I - 0x0015C6 00:D5B6: 4E        .byte $0E + con_40   ; 
- D 2 - I - 0x0015C7 00:D5B7: FC        .byte $FC   ; 

- D 2 - I - 0x0015C8 00:D5B8: 20 AA     .dbyt $20AA
- D 2 - I - 0x0015CA 00:D5BA: 0C        .byte $0C   ; 
- D 2 - I - 0x0015CB 00:D5BB: 0D        .byte $0D, $0E, $1C, $12, $10, $17, $FC, $1D, $1B, $0A, $0C, $14   ; 

- D 2 - I - 0x0015D7 00:D5C7: 00        .byte $00   ; end token



_off_000_D5C8_0A:
- D 2 - I - 0x0015D8 00:D5C8: 22 E7     .dbyt $22E7
- D 2 - I - 0x0015DA 00:D5CA: 12        .byte $12   ; 
- D 2 - I - 0x0015DB 00:D5CB: 12        .byte $12, $1D, $F9, $1C, $FC, $0A, $FC, $17, $0E, $20, $FC, $1B, $0E, $0C, $18   ; 
- D 2 - I - 0x0015EA 00:D5DA: 1B        .byte $1B, $0D, $FA   ; 

- D 2 - I - 0x0015ED 00:D5DD: 00        .byte $00   ; end token



_off_000_D5DE_0B:
- D 2 - I - 0x0015EE 00:D5DE: 22 E5     .dbyt $22E5
- D 2 - I - 0x0015F0 00:D5E0: 56        .byte $16 + con_40   ; 
- D 2 - I - 0x0015F1 00:D5E1: FC        .byte $FC   ; 

- D 2 - I - 0x0015F2 00:D5E2: 22 EB     .dbyt $22EB
- D 2 - I - 0x0015F4 00:D5E4: 09        .byte $09   ; 
- D 2 - I - 0x0015F5 00:D5E5: 10        .byte $10, $0A, $16, $0E, $FC, $18, $1F, $0E, $1B   ; 

- D 2 - I - 0x0015FE 00:D5EE: 00        .byte $00   ; end token



_off_000_D5EF_0C:
- D 2 - I - 0x0015FF 00:D5EF: 22 E7     .dbyt $22E7
- D 2 - I - 0x001601 00:D5F1: 12        .byte $12   ; 
- D 2 - I - 0x001602 00:D5F2: 1D        .byte $1D, $1B, $22, $FC, $1D, $11, $0E, $FC, $17, $0E, $21, $1D, $FC, $1D, $1B   ; 
- D 2 - I - 0x001611 00:D601: 0A        .byte $0A, $0C, $14   ; 

- D 2 - I - 0x001614 00:D604: 00        .byte $00   ; end token



_off_000_D605_0D:
- - - - - - 0x001615 00:D605: 22 E5     .dbyt $22E5
- - - - - - 0x001617 00:D607: 56        .byte $16 + con_40   ; 
- - - - - - 0x001618 00:D608: FC        .byte $FC   ; 

- - - - - - 0x001619 00:D609: 22 EC     .dbyt $22EC
- - - - - - 0x00161B 00:D60B: 07        .byte $07   ; 
- - - - - - 0x00161C 00:D60C: 1D        .byte $1D, $12, $16, $0E, $FC, $1E, $19   ; 

- - - - - - 0x001623 00:D613: 00        .byte $00   ; end token



_off_000_D614_11:
- D 2 - I - 0x001624 00:D614: 23 E0     .dbyt $23E0
- D 2 - I - 0x001626 00:D616: 50        .byte $10 + con_40   ; 
- D 2 - I - 0x001627 00:D617: FF        .byte $FF   ; 

- D 2 - I - 0x001628 00:D618: 22 0D     .dbyt $220D
- D 2 - I - 0x00162A 00:D61A: 07        .byte $07   ; 
- D 2 - I - 0x00162B 00:D61B: 15        .byte $15, $18, $0A, $0D, $12, $17, $10   ; 

- D 2 - I - 0x001632 00:D622: 00        .byte $00   ; end token



_off_000_D623_10:
- D 2 - I - 0x001633 00:D623: 23 E0     .dbyt $23E0
- D 2 - I - 0x001635 00:D625: 50        .byte $10 + con_40   ; 
- D 2 - I - 0x001636 00:D626: FF        .byte $FF   ; 

- D 2 - I - 0x001637 00:D627: 22 0D     .dbyt $220D
- D 2 - I - 0x001639 00:D629: 06        .byte $06   ; 
- D 2 - I - 0x00163A 00:D62A: 1C        .byte $1C, $0A, $1F, $12, $17, $10   ; 

- D 2 - I - 0x001640 00:D630: 00        .byte $00   ; end token



_off_000_D631_19:
- - - - - - 0x001641 00:D631: 22 8E     .dbyt $228E
- - - - - - 0x001643 00:D633: 05        .byte $05   ; 
- - - - - - 0x001644 00:D634: 0E        .byte $0E, $1B, $1B, $18, $1B   ; 

- - - - - - 0x001649 00:D639: 00        .byte $00   ; end token



_off_000_D63A_06:
- D 2 - I - 0x00164A 00:D63A: 21 84     .dbyt $2184
- D 2 - I - 0x00164C 00:D63C: 58        .byte $18 + con_40   ; 
- D 2 - I - 0x00164D 00:D63D: 27        .byte $27   ; 

- D 2 - I - 0x00164E 00:D63E: 23 44     .dbyt $2344
- D 2 - I - 0x001650 00:D640: 58        .byte $18 + con_40   ; 
- D 2 - I - 0x001651 00:D641: 27        .byte $27   ; 

- D 2 - I - 0x001652 00:D642: 21 A4     .dbyt $21A4
- D 2 - I - 0x001654 00:D644: CD        .byte $0D + con_C0   ; 
- D 2 - I - 0x001655 00:D645: 27        .byte $27   ; 

- D 2 - I - 0x001656 00:D646: 21 BB     .dbyt $21BB
- D 2 - I - 0x001658 00:D648: CD        .byte $0D + con_C0   ; 
- D 2 - I - 0x001659 00:D649: 27        .byte $27   ; 

- D 2 - I - 0x00165A 00:D64A: 00        .byte $00   ; end token



_off_000_D64B_02:
- D 2 - I - 0x00165B 00:D64B: 23 E3     .dbyt $23E3
- D 2 - I - 0x00165D 00:D64D: 4B        .byte $0B + con_40   ; 
- D 2 - I - 0x00165E 00:D64E: AA        .byte $AA   ; 

- D 2 - I - 0x00165F 00:D64F: 23 F2     .dbyt $23F2
- D 2 - I - 0x001661 00:D651: 44        .byte $04 + con_40   ; 
- D 2 - I - 0x001662 00:D652: FF        .byte $FF   ; 

- D 2 - I - 0x001663 00:D653: 20 83     .dbyt $2083
- D 2 - I - 0x001665 00:D655: 5A        .byte $1A + con_40   ; 
- D 2 - I - 0x001666 00:D656: 27        .byte $27   ; 

- D 2 - I - 0x001667 00:D657: 20 A3     .dbyt $20A3
- D 2 - I - 0x001669 00:D659: 5A        .byte $1A + con_40   ; 
- D 2 - I - 0x00166A 00:D65A: 27        .byte $27   ; 

- D 2 - I - 0x00166B 00:D65B: 21 83     .dbyt $2183
- D 2 - I - 0x00166D 00:D65D: 5A        .byte $1A + con_40   ; 
- D 2 - I - 0x00166E 00:D65E: 27        .byte $27   ; 

- D 2 - I - 0x00166F 00:D65F: 21 A3     .dbyt $21A3
- D 2 - I - 0x001671 00:D661: 5A        .byte $1A + con_40   ; 
- D 2 - I - 0x001672 00:D662: 27        .byte $27   ; 

- D 2 - I - 0x001673 00:D663: 20 C3     .dbyt $20C3
- D 2 - I - 0x001675 00:D665: C6        .byte $06 + con_C0   ; 
- D 2 - I - 0x001676 00:D666: 27        .byte $27   ; 

- D 2 - I - 0x001677 00:D667: 20 C4     .dbyt $20C4
- D 2 - I - 0x001679 00:D669: C6        .byte $06 + con_C0   ; 
- D 2 - I - 0x00167A 00:D66A: 27        .byte $27   ; 

- D 2 - I - 0x00167B 00:D66B: 20 DB     .dbyt $20DB
- D 2 - I - 0x00167D 00:D66D: C6        .byte $06 + con_C0   ; 
- D 2 - I - 0x00167E 00:D66E: 27        .byte $27   ; 

- D 2 - I - 0x00167F 00:D66F: 20 DC     .dbyt $20DC
- D 2 - I - 0x001681 00:D671: C6        .byte $06 + con_C0   ; 
- D 2 - I - 0x001682 00:D672: 27        .byte $27   ; 

- D 2 - I - 0x001683 00:D673: 21 07     .dbyt $2107
- D 2 - I - 0x001685 00:D675: 12        .byte $12   ; 
- D 2 - I - 0x001686 00:D676: 98        .byte $98, $9A, $9C, $9E, $A0, $A2, $A4, $A6, $A8, $98, $9A, $98, $AA, $A4, $AC   ; 
- D 2 - I - 0x001695 00:D685: AE        .byte $AE, $98, $9A   ; 

- D 2 - I - 0x001698 00:D688: 21 27     .dbyt $2127
- D 2 - I - 0x00169A 00:D68A: 12        .byte $12   ; 
- D 2 - I - 0x00169B 00:D68B: 99        .byte $99, $9B, $9D, $9F, $A1, $A3, $A5, $A7, $A9, $99, $9B, $99, $AB, $A5, $AD   ; 
- D 2 - I - 0x0016AA 00:D69A: AF        .byte $AF, $99, $9B   ; 

- D 2 - I - 0x0016AD 00:D69D: 22 0C     .dbyt $220C
- D 2 - I - 0x0016AF 00:D69F: 0B        .byte $0B   ; 
- D 2 - I - 0x0016B0 00:D6A0: 1C        .byte $1C, $0E, $15, $0E, $0C, $1D, $12, $18, $17, $FC, $0A   ; 

- D 2 - I - 0x0016BB 00:D6AB: 22 4C     .dbyt $224C
- D 2 - I - 0x0016BD 00:D6AD: 0B        .byte $0B   ; 
- D 2 - I - 0x0016BE 00:D6AE: 1C        .byte $1C, $0E, $15, $0E, $0C, $1D, $12, $18, $17, $FC, $0B   ; 

- D 2 - I - 0x0016C9 00:D6B9: 22 8C     .dbyt $228C
- D 2 - I - 0x0016CB 00:D6BB: 06        .byte $06   ; 
- D 2 - I - 0x0016CC 00:D6BC: 0D        .byte $0D, $0E, $1C, $12, $10, $17   ; 

- D 2 - I - 0x0016D2 00:D6C2: 23 09     .dbyt $2309
- D 2 - I - 0x0016D4 00:D6C4: 0E        .byte $0E   ; 
- D 2 - I - 0x0016D5 00:D6C5: 3A        .byte $3A, $01, $09, $08, $04, $FC, $17, $12, $17, $1D, $0E, $17, $0D, $18   ; 

- D 2 - I - 0x0016E3 00:D6D3: 00        .byte $00   ; end token



_off_000_D6D4_03:
- D 2 - I - 0x0016E4 00:D6D4: 23 CA     .dbyt $23CA
- D 2 - I - 0x0016E6 00:D6D6: 03        .byte $03   ; 
- D 2 - I - 0x0016E7 00:D6D7: 40        .byte $40, $50, $50   ; 

- D 2 - I - 0x0016EA 00:D6DA: 23 D3     .dbyt $23D3
- D 2 - I - 0x0016EC 00:D6DC: 42        .byte $02 + con_40   ; 
- D 2 - I - 0x0016ED 00:D6DD: 55        .byte $55   ; 

- D 2 - I - 0x0016EE 00:D6DE: 23 E2     .dbyt $23E2
- D 2 - I - 0x0016F0 00:D6E0: 44        .byte $04 + con_40   ; 
- D 2 - I - 0x0016F1 00:D6E1: AA        .byte $AA   ; 

- D 2 - I - 0x0016F2 00:D6E2: 20 E6     .dbyt $20E6
- D 2 - I - 0x0016F4 00:D6E4: 43        .byte $03 + con_40   ; 
- D 2 - I - 0x0016F5 00:D6E5: 26        .byte $26   ; 

- D 2 - I - 0x0016F6 00:D6E6: 20 F7     .dbyt $20F7
- D 2 - I - 0x0016F8 00:D6E8: 43        .byte $03 + con_40   ; 
- D 2 - I - 0x0016F9 00:D6E9: 26        .byte $26   ; 

- D 2 - I - 0x0016FA 00:D6EA: 20 EB     .dbyt $20EB
- D 2 - I - 0x0016FC 00:D6EC: 09        .byte $09   ; 
- D 2 - I - 0x0016FD 00:D6ED: 0C        .byte $0C, $11, $0A, $15, $15, $0E, $17, $10, $0E   ; 

- D 2 - I - 0x001706 00:D6F6: 21 0D     .dbyt $210D
- D 2 - I - 0x001708 00:D6F8: 04        .byte $04   ; 
- D 2 - I - 0x001709 00:D6F9: 1B        .byte $1B, $0A, $0C, $0E   ; 

- D 2 - I - 0x00170D 00:D6FD: 22 0D     .dbyt $220D
- D 2 - I - 0x00170F 00:D6FF: 06        .byte $06   ; 
- D 2 - I - 0x001710 00:D700: 1D        .byte $1D, $1B, $0A, $0C, $14, $79   ; 

- D 2 - I - 0x001716 00:D706: 22 69     .dbyt $2269
- D 2 - I - 0x001718 00:D708: 0D        .byte $0D   ; 
- D 2 - I - 0x001719 00:D709: 01        .byte $01, $FC, $FC, $02, $FC, $FC, $03, $FC, $FC, $04, $FC, $FC, $05   ; 

- D 2 - I - 0x001726 00:D716: 00        .byte $00   ; end token



_off_000_D717_04:
- D 2 - I - 0x001727 00:D717: 23 C9     .dbyt $23C9
- D 2 - I - 0x001729 00:D719: 06        .byte $06   ; 
- D 2 - I - 0x00172A 00:D71A: 0C        .byte $0C, $07, $55, $55, $0D, $03   ; 

- D 2 - I - 0x001730 00:D720: 23 DA     .dbyt $23DA
- D 2 - I - 0x001732 00:D722: 44        .byte $04 + con_40   ; 
- D 2 - I - 0x001733 00:D723: 50        .byte $50   ; 

- D 2 - I - 0x001734 00:D724: 23 DE     .dbyt $23DE
- D 2 - I - 0x001736 00:D726: 01        .byte $01   ; 
- D 2 - I - 0x001737 00:D727: 10        .byte $10   ; 

- D 2 - I - 0x001738 00:D728: 23 E2     .dbyt $23E2
- D 2 - I - 0x00173A 00:D72A: 05        .byte $05   ; 
- D 2 - I - 0x00173B 00:D72B: 55        .byte $55, $55, $99, $AA, $22   ; 

- D 2 - I - 0x001740 00:D730: 23 E9     .dbyt $23E9
- D 2 - I - 0x001742 00:D732: 01        .byte $01   ; 
- D 2 - I - 0x001743 00:D733: C0        .byte $C0   ; 

- D 2 - I - 0x001744 00:D734: 23 EA     .dbyt $23EA
- D 2 - I - 0x001746 00:D736: 44        .byte $04 + con_40   ; 
- D 2 - I - 0x001747 00:D737: F0        .byte $F0   ; 

- D 2 - I - 0x001748 00:D738: 23 EE     .dbyt $23EE
- D 2 - I - 0x00174A 00:D73A: 01        .byte $01   ; 
- D 2 - I - 0x00174B 00:D73B: 30        .byte $30   ; 

- D 2 - I - 0x00174C 00:D73C: 20 87     .dbyt $2087
- D 2 - I - 0x00174E 00:D73E: 02        .byte $02   ; 
- D 2 - I - 0x00174F 00:D73F: 52        .byte $52, $54   ; 

- D 2 - I - 0x001751 00:D741: 20 97     .dbyt $2097
- D 2 - I - 0x001753 00:D743: 02        .byte $02   ; 
- D 2 - I - 0x001754 00:D744: 52        .byte $52, $54   ; 

- D 2 - I - 0x001756 00:D746: 20 A4     .dbyt $20A4
- D 2 - I - 0x001758 00:D748: 05        .byte $05   ; 
- D 2 - I - 0x001759 00:D749: 26        .byte $26, $26, $FC, $53, $55   ; 

- D 2 - I - 0x00175E 00:D74E: 20 B7     .dbyt $20B7
- D 2 - I - 0x001760 00:D750: 05        .byte $05   ; 
- D 2 - I - 0x001761 00:D751: 53        .byte $53, $55, $FC, $26, $26   ; 

- D 2 - I - 0x001766 00:D756: 20 8B     .dbyt $208B
- D 2 - I - 0x001768 00:D758: 09        .byte $09   ; 
- D 2 - I - 0x001769 00:D759: 0C        .byte $0C, $11, $0A, $15, $15, $0E, $17, $10, $0E   ; 

- D 2 - I - 0x001772 00:D762: 20 AE     .dbyt $20AE
- D 2 - I - 0x001774 00:D764: 04        .byte $04   ; 
- D 2 - I - 0x001775 00:D765: 1B        .byte $1B, $0A, $0C, $0E   ; 

- D 2 - I - 0x001779 00:D769: 21 E8     .dbyt $21E8
- D 2 - I - 0x00177B 00:D76B: 09        .byte $09   ; 
- D 2 - I - 0x00177C 00:D76C: 0B        .byte $0B, $0E, $1C, $1D, $FC, $1D, $12, $16, $0E   ; 

- D 2 - I - 0x001785 00:D775: 22 28     .dbyt $2228
- D 2 - I - 0x001787 00:D777: 09        .byte $09   ; 
- D 2 - I - 0x001788 00:D778: 22        .byte $22, $18, $1E, $1B, $FC, $1D, $12, $16, $0E   ; 

- D 2 - I - 0x001791 00:D781: 22 68     .dbyt $2268
- D 2 - I - 0x001793 00:D783: 07        .byte $07   ; 
- D 2 - I - 0x001794 00:D784: 1B        .byte $1B, $0A, $17, $14, $12, $17, $10   ; 

- D 2 - I - 0x00179B 00:D78B: 21 2F     .dbyt $212F
- D 2 - I - 0x00179D 00:D78D: 01        .byte $01   ; 
- D 2 - I - 0x00179E 00:D78E: 42        .byte $42   ; 

- D 2 - I - 0x00179F 00:D78F: 21 4E     .dbyt $214E
- D 2 - I - 0x0017A1 00:D791: 03        .byte $03   ; 
- D 2 - I - 0x0017A2 00:D792: 43        .byte $43, $44, $45   ; 

- D 2 - I - 0x0017A5 00:D795: 00        .byte $00   ; end token



_off_000_D796_09:
- D 2 - I - 0x0017A6 00:D796: 23 CA     .dbyt $23CA
- D 2 - I - 0x0017A8 00:D798: 04        .byte $04   ; 
- D 2 - I - 0x0017A9 00:D799: 40        .byte $40, $50, $50, $10   ; 

- D 2 - I - 0x0017AD 00:D79D: 23 D3     .dbyt $23D3
- D 2 - I - 0x0017AF 00:D79F: 42        .byte $02 + con_40   ; 
- D 2 - I - 0x0017B0 00:D7A0: AA        .byte $AA   ; 

- D 2 - I - 0x0017B1 00:D7A1: 23 DB     .dbyt $23DB
- D 2 - I - 0x0017B3 00:D7A3: 02        .byte $02   ; 
- D 2 - I - 0x0017B4 00:D7A4: AA        .byte $AA, $22   ; 

- D 2 - I - 0x0017B6 00:D7A6: 23 E2     .dbyt $23E2
- D 2 - I - 0x0017B8 00:D7A8: 43        .byte $03 + con_40   ; 
- D 2 - I - 0x0017B9 00:D7A9: 55        .byte $55   ; 

- D 2 - I - 0x0017BA 00:D7AA: 23 EA     .dbyt $23EA
- D 2 - I - 0x0017BC 00:D7AC: 43        .byte $03 + con_40   ; 
- D 2 - I - 0x0017BD 00:D7AD: 55        .byte $55   ; 

- D 2 - I - 0x0017BE 00:D7AE: 20 E6     .dbyt $20E6
- D 2 - I - 0x0017C0 00:D7B0: 43        .byte $03 + con_40   ; 
- D 2 - I - 0x0017C1 00:D7B1: 26        .byte $26   ; 

- D 2 - I - 0x0017C2 00:D7B2: 20 F7     .dbyt $20F7
- D 2 - I - 0x0017C4 00:D7B4: 43        .byte $03 + con_40   ; 
- D 2 - I - 0x0017C5 00:D7B5: 26        .byte $26   ; 

- D 2 - I - 0x0017C6 00:D7B6: 20 EB     .dbyt $20EB
- D 2 - I - 0x0017C8 00:D7B8: 0A        .byte $0A   ; 
- D 2 - I - 0x0017C9 00:D7B9: 0E        .byte $0E, $21, $0C, $12, $1D, $0E, $0B, $12, $14, $0E   ; 

- D 2 - I - 0x0017D3 00:D7C3: 21 8C     .dbyt $218C
- D 2 - I - 0x0017D5 00:D7C5: 07        .byte $07   ; 
- D 2 - I - 0x0017D6 00:D7C6: FC        .byte $FC, $1D, $1B, $0A, $0C, $14, $FC   ; 

- D 2 - I - 0x0017DD 00:D7CD: 21 6E     .dbyt $216E
- D 2 - I - 0x0017DF 00:D7CF: 03        .byte $03   ; 
- D 2 - I - 0x0017E0 00:D7D0: ED        .byte $ED, $FC, $F0   ; 

- D 2 - I - 0x0017E3 00:D7D3: 21 AE     .dbyt $21AE
- D 2 - I - 0x0017E5 00:D7D5: 03        .byte $03   ; 
- D 2 - I - 0x0017E6 00:D7D6: EE        .byte $EE, $EF, $F1   ; 

- D 2 - I - 0x0017E9 00:D7D9: 22 2B     .dbyt $222B
- D 2 - I - 0x0017EB 00:D7DB: 09        .byte $09   ; 
- D 2 - I - 0x0017EC 00:D7DC: 0B        .byte $0B, $0E, $1C, $1D, $FC, $1D, $12, $16, $0E   ; 

- D 2 - I - 0x0017F5 00:D7E5: 22 6B     .dbyt $226B
- D 2 - I - 0x0017F7 00:D7E7: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x0017F8 00:D7E8: B5        .byte $B5, $B0, $B2   ; 

- D 2 - I - 0x0017FB 00:D7EB: 22 73     .dbyt $2273
- D 2 - I - 0x0017FD 00:D7ED: 83        .byte $03 + con_80   ; 
- D 2 - I - 0x0017FE 00:D7EE: B6        .byte $B6, $B1, $B4   ; 

- D 2 - I - 0x001801 00:D7F1: 22 6C     .dbyt $226C
- D 2 - I - 0x001803 00:D7F3: 47        .byte $07 + con_40   ; 
- D 2 - I - 0x001804 00:D7F4: B7        .byte $B7   ; 

- D 2 - I - 0x001805 00:D7F5: 22 AC     .dbyt $22AC
- D 2 - I - 0x001807 00:D7F7: 47        .byte $07 + con_40   ; 
- D 2 - I - 0x001808 00:D7F8: B3        .byte $B3   ; 

- D 2 - I - 0x001809 00:D7F9: 00        .byte $00   ; end token



_off_000_D7FA_0F:
- D 2 - I - 0x00180A 00:D7FA: 23 CB     .dbyt $23CB
- D 2 - I - 0x00180C 00:D7FC: 4B        .byte $0B + con_40   ; 
- D 2 - I - 0x00180D 00:D7FD: 55        .byte $55   ; 

- D 2 - I - 0x00180E 00:D7FE: 23 DB     .dbyt $23DB
- D 2 - I - 0x001810 00:D800: 42        .byte $02 + con_40   ; 
- D 2 - I - 0x001811 00:D801: F0        .byte $F0   ; 

- D 2 - I - 0x001812 00:D802: 23 E3     .dbyt $23E3
- D 2 - I - 0x001814 00:D804: 01        .byte $01   ; 
- D 2 - I - 0x001815 00:D805: FF        .byte $FF   ; 

- D 2 - I - 0x001816 00:D806: 23 EB     .dbyt $23EB
- D 2 - I - 0x001818 00:D808: 01        .byte $01   ; 
- D 2 - I - 0x001819 00:D809: FF        .byte $FF   ; 

- D 2 - I - 0x00181A 00:D80A: 23 F3     .dbyt $23F3
- D 2 - I - 0x00181C 00:D80C: 42        .byte $02 + con_40   ; 
- D 2 - I - 0x00181D 00:D80D: 0F        .byte $0F   ; 

- D 2 - I - 0x00181E 00:D80E: 20 CC     .dbyt $20CC
- D 2 - I - 0x001820 00:D810: 0B        .byte $0B   ; 
- D 2 - I - 0x001821 00:D811: 19        .byte $19, $15, $0A, $22, $FC, $16, $18, $0D, $0E, $FC, $0A   ; 

- D 2 - I - 0x00182C 00:D81C: 21 2C     .dbyt $212C
- D 2 - I - 0x00182E 00:D81E: 0B        .byte $0B   ; 
- D 2 - I - 0x00182F 00:D81F: 19        .byte $19, $15, $0A, $22, $FC, $16, $18, $0D, $0E, $FC, $0B   ; 

- D 2 - I - 0x00183A 00:D82A: 21 EC     .dbyt $21EC
- D 2 - I - 0x00183C 00:D82C: 06        .byte $06   ; 
- D 2 - I - 0x00183D 00:D82D: 0D        .byte $0D, $0E, $1C, $12, $10, $17   ; 

- D 2 - I - 0x001843 00:D833: 22 4C     .dbyt $224C
- D 2 - I - 0x001845 00:D835: 04        .byte $04   ; 
- D 2 - I - 0x001846 00:D836: 1C        .byte $1C, $0A, $1F, $0E   ; 

- D 2 - I - 0x00184A 00:D83A: 22 AC     .dbyt $22AC
- D 2 - I - 0x00184C 00:D83C: 04        .byte $04   ; 
- D 2 - I - 0x00184D 00:D83D: 15        .byte $15, $18, $0A, $0D   ; 

- D 2 - I - 0x001851 00:D841: 23 0C     .dbyt $230C
- D 2 - I - 0x001853 00:D843: 05        .byte $05   ; 
- D 2 - I - 0x001854 00:D844: 1B        .byte $1B, $0E, $1C, $0E, $1D   ; 

- D 2 - I - 0x001859 00:D849: 00        .byte $00   ; end token



_off_000_D84A_05:
- D 2 - I - 0x00185A 00:D84A: 23 23     .dbyt $2323
- D 2 - I - 0x00185C 00:D84C: 18        .byte $18   ; 
- D 2 - I - 0x00185D 00:D84D: 0A        .byte $0A, $0B, $0C, $0D, $0E, $0F, $10, $11, $12, $13, $14, $15, $16, $17, $18   ; 
- D 2 - I - 0x00186C 00:D85C: 19        .byte $19, $1A, $1B, $1C, $FE, $B8, $FE, $24, $25   ; 

- D 2 - I - 0x001875 00:D865: 00        .byte $00   ; end token


; bzk garbage
- - - - - - 0x001876 00:D866: FF        .byte $FF   ; 
- - - - - - 0x001877 00:D867: FF        .byte $FF   ; 



tbl_D868:
- D 2 - - - 0x001878 00:D868: 34        .byte $34   ; 00 
- D 2 - - - 0x001879 00:D869: 34        .byte $34   ; 01 
- D 2 - - - 0x00187A 00:D86A: 18        .byte $18   ; 02 
- - - - - - 0x00187B 00:D86B: 34        .byte $34   ; 03 



tbl_D86C:
; 00 
- D 2 - - - 0x00187C 00:D86C: 03        .byte $03   ; 00 
- D 2 - - - 0x00187D 00:D86D: 02        .byte $02   ; 01 
- D 2 - - - 0x00187E 00:D86E: 03        .byte $03   ; 02 
- - - - - - 0x00187F 00:D86F: 02        .byte $02   ; 03 
- D 2 - - - 0x001880 00:D870: 09        .byte $09   ; 04 
- D 2 - - - 0x001881 00:D871: 06        .byte $06   ; 05 
- D 2 - - - 0x001882 00:D872: 08        .byte $08   ; 06 
- - - - - - 0x001883 00:D873: 0F        .byte $0F   ; 07 
; 08 
- D 2 - - - 0x001884 00:D874: 03        .byte $03   ; 00 
- D 2 - - - 0x001885 00:D875: 02        .byte $02   ; 01 
- D 2 - - - 0x001886 00:D876: 02        .byte $02   ; 02 
- D 2 - - - 0x001887 00:D877: 02        .byte $02   ; 03 
- D 2 - - - 0x001888 00:D878: 08        .byte $08   ; 04 
- D 2 - - - 0x001889 00:D879: 05        .byte $05   ; 05 
- D 2 - - - 0x00188A 00:D87A: 07        .byte $07   ; 06 
- - - - - - 0x00188B 00:D87B: 0F        .byte $0F   ; 07 



tbl_D87C:
; 00 
- D 2 - - - 0x00188C 00:D87C: 0C        .byte $0C   ; 00 
- D 2 - - - 0x00188D 00:D87D: 09        .byte $09   ; 01 
- D 2 - - - 0x00188E 00:D87E: 0A        .byte $0A   ; 02 
- - - - - - 0x00188F 00:D87F: 07        .byte $07   ; 03 
- D 2 - - - 0x001890 00:D880: 0C        .byte $0C   ; 04 
- D 2 - - - 0x001891 00:D881: 0C        .byte $0C   ; 05 
- D 2 - - - 0x001892 00:D882: 0C        .byte $0C   ; 06 
- - - - - - 0x001893 00:D883: 00        .byte $00   ; 07 
; 08 
- D 2 - - - 0x001894 00:D884: 0C        .byte $0C   ; 00 
- D 2 - - - 0x001895 00:D885: 0A        .byte $0A   ; 01 
- D 2 - - - 0x001896 00:D886: 0B        .byte $0B   ; 02 
- D 2 - - - 0x001897 00:D887: 08        .byte $08   ; 03 
- D 2 - - - 0x001898 00:D888: 0C        .byte $0C   ; 04 
- D 2 - - - 0x001899 00:D889: 0C        .byte $0C   ; 05 
- D 2 - - - 0x00189A 00:D88A: 0C        .byte $0C   ; 06 



tbl_D88B:
- D 2 - - - 0x00189B 00:D88B: 06        .byte $06   ; 00 
- D 2 - - - 0x00189C 00:D88C: 03        .byte $03   ; 01 
- D 2 - - - 0x00189D 00:D88D: 04        .byte $04   ; 02 
- D 2 - - - 0x00189E 00:D88E: 02        .byte $02   ; 03 
- D 2 - - - 0x00189F 00:D88F: 0B        .byte $0B   ; 04 
- D 2 - - - 0x0018A0 00:D890: 08        .byte $08   ; 05 
- D 2 - - - 0x0018A1 00:D891: 09        .byte $09   ; 06 




tbl_D892:
- D 2 - - - 0x0018A2 00:D892: 58        .byte $58   ; 00 
- D 2 - - - 0x0018A3 00:D893: 60        .byte $60   ; 01 
- D 2 - - - 0x0018A4 00:D894: 69        .byte $69   ; 02 
- D 2 - - - 0x0018A5 00:D895: 71        .byte $71   ; 03 
- D 2 - - - 0x0018A6 00:D896: 79        .byte $79   ; 04 
- D 2 - - - 0x0018A7 00:D897: 80        .byte $80   ; 05 
- D 2 - - - 0x0018A8 00:D898: 0A        .byte $0A   ; 06 
- D 2 - - - 0x0018A9 00:D899: 18        .byte $18   ; 07 
- D 2 - - - 0x0018AA 00:D89A: 20        .byte $20   ; 08 
- D 2 - - - 0x0018AB 00:D89B: 28        .byte $28   ; 09 
- D 2 - - - 0x0018AC 00:D89C: 30        .byte $30   ; 0A 
- D 2 - - - 0x0018AD 00:D89D: 38        .byte $38   ; 0B 
- D 2 - - - 0x0018AE 00:D89E: 40        .byte $40   ; 0C 
- D 2 - - - 0x0018AF 00:D89F: 48        .byte $48   ; 0D 
- D 2 - - - 0x0018B0 00:D8A0: 50        .byte $50   ; 0E 
- D 2 - - - 0x0018B1 00:D8A1: 50        .byte $50   ; 0F 
- D 2 - - - 0x0018B2 00:D8A2: 97        .byte $97   ; 10 
- D 2 - - - 0x0018B3 00:D8A3: 90        .byte $90   ; 11 
- D 2 - - - 0x0018B4 00:D8A4: 89        .byte $89   ; 12 
- D 2 - - - 0x0018B5 00:D8A5: 11        .byte $11   ; 13 
- D 2 - - - 0x0018B6 00:D8A6: A6        .byte $A6   ; 14 
- D 2 - - - 0x0018B7 00:D8A7: 9F        .byte $9F   ; 15 
- D 2 - - - 0x0018B8 00:D8A8: B3        .byte $B3   ; 16 



tbl_D8A9:
- D 2 - - - 0x0018B9 00:D8A9: 01        .byte $01   ; 00 
- D 2 - - - 0x0018BA 00:D8AA: 00        .byte $00   ; 01 
- D 2 - - - 0x0018BB 00:D8AB: 02        .byte $02   ; 02 
- D 2 - - - 0x0018BC 00:D8AC: 02        .byte $02   ; 03 
- D 2 - - - 0x0018BD 00:D8AD: 03        .byte $03   ; 04 
- D 2 - - - 0x0018BE 00:D8AE: 00        .byte $00   ; 05 
- D 2 - - - 0x0018BF 00:D8AF: 09        .byte $09   ; 06 
- D 2 - - - 0x0018C0 00:D8B0: 08        .byte $08   ; 07 
- D 2 - - - 0x0018C1 00:D8B1: 08        .byte $08   ; 08 
- D 2 - - - 0x0018C2 00:D8B2: 10        .byte $10   ; 09 
- D 2 - - - 0x0018C3 00:D8B3: 10        .byte $10   ; 0A 
- D 2 - - - 0x0018C4 00:D8B4: 10        .byte $10   ; 0B 
- D 2 - - - 0x0018C5 00:D8B5: 02        .byte $02   ; 0C 
- D 2 - - - 0x0018C6 00:D8B6: 10        .byte $10   ; 0D 
- D 2 - - - 0x0018C7 00:D8B7: 10        .byte $10   ; 0E 
- D 2 - - - 0x0018C8 00:D8B8: 10        .byte $10   ; 0F 
- D 2 - - - 0x0018C9 00:D8B9: 01        .byte $01   ; 10 
- D 2 - - - 0x0018CA 00:D8BA: 09        .byte $09   ; 11 
- D 2 - - - 0x0018CB 00:D8BB: 09        .byte $09   ; 12 
- D 2 - - - 0x0018CC 00:D8BC: 09        .byte $09   ; 13 
- D 2 - - - 0x0018CD 00:D8BD: 01        .byte $01   ; 14 
- D 2 - - - 0x0018CE 00:D8BE: 09        .byte $09   ; 15 
- D 2 - - - 0x0018CF 00:D8BF: 03        .byte $03   ; 16 



tbl_D8C0:
- D 2 - - - 0x0018D0 00:D8C0: 04        .byte $04   ; 
- D 2 - - - 0x0018D1 00:D8C1: 28        .byte $28   ; 
- D 2 - - - 0x0018D2 00:D8C2: 4C        .byte $4C   ; 
- D 2 - - - 0x0018D3 00:D8C3: 70        .byte $70   ; 



tbl_D8C4:
- D 2 - - - 0x0018D4 00:D8C4: 39        .byte $39   ; 00 
- D 2 - - - 0x0018D5 00:D8C5: 01        .byte $01   ; 01 
- D 2 - - - 0x0018D6 00:D8C6: 01        .byte $01   ; 02 
- D 2 - - - 0x0018D7 00:D8C7: 01        .byte $01   ; 03 
- D 2 - - - 0x0018D8 00:D8C8: 07        .byte $07   ; 04 



tbl_D8C9:
- D 2 - - - 0x0018D9 00:D8C9: 00        .byte $00   ; 
- D 2 - - - 0x0018DA 00:D8CA: 01        .byte $01   ; 
- D 2 - - - 0x0018DB 00:D8CB: 01        .byte $01   ; 
- D 2 - - - 0x0018DC 00:D8CC: 02        .byte $02   ; 



tbl_D8CD:
- D 2 - - - 0x0018DD 00:D8CD: 00        .byte $00   ; 00 
- D 2 - - - 0x0018DE 00:D8CE: 11        .byte $11   ; 01 
- D 2 - - - 0x0018DF 00:D8CF: 22        .byte $22   ; 02 
- D 2 - - - 0x0018E0 00:D8D0: 33        .byte $33   ; 03 
- D 2 - - - 0x0018E1 00:D8D1: 44        .byte $44   ; 04 
- D 2 - - - 0x0018E2 00:D8D2: 66        .byte $66   ; 05 
- D 2 - - - 0x0018E3 00:D8D3: 88        .byte $88   ; 06 
- D 2 - - - 0x0018E4 00:D8D4: AA        .byte $AA   ; 07 



tbl_D8D5:
- D 2 - - - 0x0018E5 00:D8D5: 02        .byte $02   ; 00 
- D 2 - - - 0x0018E6 00:D8D6: 01        .byte $01   ; 01 
- D 2 - - - 0x0018E7 00:D8D7: 01        .byte $01   ; 02 



tbl_D8D8:
- D 2 - - - 0x0018E8 00:D8D8: 0E        .byte $0E   ; 01 
- D 2 - - - 0x0018E9 00:D8D9: 1A        .byte $1A   ; 02 
- D 2 - - - 0x0018EA 00:D8DA: 26        .byte $26   ; 03 
- D 2 - - - 0x0018EB 00:D8DB: 32        .byte $32   ; 04 



tbl_D8DC:
- D 2 - - - 0x0018EC 00:D8DC: 00        .byte $00   ; 00 
- D 2 - - - 0x0018ED 00:D8DD: 0C        .byte $0C   ; 01 
- D 2 - - - 0x0018EE 00:D8DE: 18        .byte $18   ; 02 



tbl_D8DF:
- D 2 - - - 0x0018EF 00:D8DF: A0        .byte $A0   ; 00 
- - - - - - 0x0018F0 00:D8E0: 40        .byte $40   ; 01 
- D 2 - - - 0x0018F1 00:D8E1: 40        .byte $40   ; 02 



tbl_D8E2:
- D 2 - - - 0x0018F2 00:D8E2: ED        .byte $ED   ; 00 
- - - - - - 0x0018F3 00:D8E3: 21        .byte $21   ; 01 
- D 2 - - - 0x0018F4 00:D8E4: 21        .byte $21   ; 02 



tbl_D8E5:
- D 2 - - - 0x0018F5 00:D8E5: E2        .byte $E2   ; 00 
- D 2 - - - 0x0018F6 00:D8E6: E8        .byte $E8   ; 01 



tbl_D8E7:
- D 2 - - - 0x0018F7 00:D8E7: 9E        .byte $9E   ; 00 
- D 2 - - - 0x0018F8 00:D8E8: A6        .byte $A6   ; 01 
- D 2 - - - 0x0018F9 00:D8E9: 92        .byte $92   ; 02 
- D 2 - - - 0x0018FA 00:D8EA: 9A        .byte $9A   ; 03 
- D 2 - - - 0x0018FB 00:D8EB: 86        .byte $86   ; 04 
- D 2 - - - 0x0018FC 00:D8EC: 8E        .byte $8E   ; 05 
- D 2 - - - 0x0018FD 00:D8ED: 7A        .byte $7A   ; 06 
- D 2 - - - 0x0018FE 00:D8EE: 82        .byte $82   ; 07 



tbl_D8EF_lo:
- D 2 - - - 0x0018FF 00:D8EF: E6        .byte < ofs_004_E0E6_00   ; 
- D 2 - - - 0x001900 00:D8F0: AF        .byte < ofs_004_E2AF_01   ; 



tbl_D8F1_hi:
- D 2 - - - 0x001901 00:D8F1: E0        .byte > ofs_004_E0E6_00   ; 
- D 2 - - - 0x001902 00:D8F2: E2        .byte > ofs_004_E2AF_01   ; 



tbl_D8F3:
- D 2 - - - 0x001903 00:D8F3: CF        .byte $CF   ; 
- D 2 - - - 0x001904 00:D8F4: D3        .byte $D3   ; 
- D 2 - - - 0x001905 00:D8F5: D7        .byte $D7   ; 
- D 2 - - - 0x001906 00:D8F6: CF        .byte $CF   ; 



tbl_D8F7:
- D 2 - - - 0x001907 00:D8F7: 3F        .byte $3F   ; 
- D 2 - - - 0x001908 00:D8F8: 0F        .byte $0F   ; 
- D 2 - - - 0x001909 00:D8F9: 07        .byte $07   ; 
- D 2 - - - 0x00190A 00:D8FA: 07        .byte $07   ; 



tbl_D8FB:
- D 2 - - - 0x00190B 00:D8FB: 08        .byte $08   ; 
- D 2 - - - 0x00190C 00:D8FC: 20        .byte $20   ; 
- D 2 - - - 0x00190D 00:D8FD: 11        .byte $11   ; 
- D 2 - - - 0x00190E 00:D8FE: 11        .byte $11   ; 



tbl_D8FF_lo:
- D 2 - - - 0x00190F 00:D8FF: 23        .byte < ofs_003_D923_00_RTS   ; 
- D 2 - - - 0x001910 00:D900: 33        .byte < ofs_003_D933_01   ; 
- D 2 - - - 0x001911 00:D901: 53        .byte < ofs_003_D953_02   ; 
- D 2 - - - 0x001912 00:D902: 83        .byte < ofs_003_D983_03   ; 
- D 2 - - - 0x001913 00:D903: D3        .byte < ofs_003_D9D3_04   ; 
- D 2 - - - 0x001914 00:D904: F6        .byte < ofs_003_D9F6_05   ; 



tbl_D905_hi:
- D 2 - - - 0x001915 00:D905: D9        .byte > ofs_003_D923_00_RTS   ; 
- D 2 - - - 0x001916 00:D906: D9        .byte > ofs_003_D933_01   ; 
- D 2 - - - 0x001917 00:D907: D9        .byte > ofs_003_D953_02   ; 
- D 2 - - - 0x001918 00:D908: D9        .byte > ofs_003_D983_03   ; 
- D 2 - - - 0x001919 00:D909: D9        .byte > ofs_003_D9D3_04   ; 
- D 2 - - - 0x00191A 00:D90A: D9        .byte > ofs_003_D9F6_05   ; 



tbl_D90B:
- D 2 - - - 0x00191B 00:D90B: BF        .byte $BF   ; 
- D 2 - - - 0x00191C 00:D90C: C3        .byte $C3   ; 
- D 2 - - - 0x00191D 00:D90D: C6        .byte $C6   ; 



tbl_D90E:
- D 2 - - - 0x00191E 00:D90E: 08        .byte $08   ; 
- D 2 - - - 0x00191F 00:D90F: 0A        .byte $0A   ; 
- D 2 - - - 0x001920 00:D910: 0F        .byte $0F   ; 
- D 2 - - - 0x001921 00:D911: 14        .byte $14   ; 
- D 2 - - - 0x001922 00:D912: 18        .byte $18   ; 



tbl_D913:
- D 2 - - - 0x001923 00:D913: 08        .byte $08   ; 
- D 2 - - - 0x001924 00:D914: 14        .byte $14   ; 
- D 2 - - - 0x001925 00:D915: 20        .byte $20   ; 
- D 2 - - - 0x001926 00:D916: 2C        .byte $2C   ; 
- D 2 - - - 0x001927 00:D917: 38        .byte $38   ; 



sub_D918:
C - - - - - 0x001928 00:D918: A2 03     LDX #$03
bra_D91A_loop:
C - - - - - 0x00192A 00:D91A: 20 24 D9  JSR sub_D924
C - - - - - 0x00192D 00:D91D: 20 15 DA  JSR sub_DA15
C - - - - - 0x001930 00:D920: CA        DEX
C - - - - - 0x001931 00:D921: 10 F7     BPL bra_D91A_loop
ofs_003_D923_00_RTS:
C - - J - - 0x001933 00:D923: 60        RTS



sub_D924:
C - - - - - 0x001934 00:D924: B4 9C     LDY ram_009C,X
C - - - - - 0x001936 00:D926: B9 FF D8  LDA tbl_D8FF_lo,Y
C - - - - - 0x001939 00:D929: 85 00     STA ram_0000
C - - - - - 0x00193B 00:D92B: B9 05 D9  LDA tbl_D905_hi,Y
C - - - - - 0x00193E 00:D92E: 85 01     STA ram_0001
C - - - - - 0x001940 00:D930: 6C 00 00  JMP (ram_0000)



ofs_003_D933_01:
C - - J - - 0x001943 00:D933: BD 70 03  LDA ram_0370,X
C - - - - - 0x001946 00:D936: F0 16     BEQ bra_D94E
C - - - - - 0x001948 00:D938: A5 3F     LDA ram_003F
C - - - - - 0x00194A 00:D93A: 4A        LSR
C - - - - - 0x00194B 00:D93B: B0 15     BCS bra_D952_RTS
C - - - - - 0x00194D 00:D93D: FE 90 03  INC ram_0390,X
C - - - - - 0x001950 00:D940: BC E4 03  LDY ram_03E4,X
C - - - - - 0x001953 00:D943: B5 80     LDA ram_0080,X
C - - - - - 0x001955 00:D945: 18        CLC
C - - - - - 0x001956 00:D946: 79 0E D9  ADC tbl_D90E,Y
C - - - - - 0x001959 00:D949: DD 90 03  CMP ram_0390,X
C - - - - - 0x00195C 00:D94C: B0 04     BCS bra_D952_RTS
bra_D94E:
C - - - - - 0x00195E 00:D94E: F6 9C     INC ram_009C,X
C - - - - - 0x001960 00:D950: D0 2C     BNE bra_D97E
bra_D952_RTS:
C - - - - - 0x001962 00:D952: 60        RTS



ofs_003_D953_02:
C - - J - - 0x001963 00:D953: 8A        TXA
C - - - - - 0x001964 00:D954: A8        TAY
C - - - - - 0x001965 00:D955: F0 06     BEQ bra_D95D
C - - - - - 0x001967 00:D957: B5 BC     LDA ram_00BC,X
C - - - - - 0x001969 00:D959: F0 02     BEQ bra_D95D
C - - - - - 0x00196B 00:D95B: A0 04     LDY #$04
bra_D95D:
C - - - - - 0x00196D 00:D95D: B5 B8     LDA ram_00B8,X
C - - - - - 0x00196F 00:D95F: D9 C4 D8  CMP tbl_D8C4,Y
C - - - - - 0x001972 00:D962: F0 0A     BEQ bra_D96E
C - - - - - 0x001974 00:D964: A0 01     LDY #$01
C - - - - - 0x001976 00:D966: 90 02     BCC bra_D96A
C - - - - - 0x001978 00:D968: A0 FF     LDY #$FF
bra_D96A:
C - - - - - 0x00197A 00:D96A: 98        TYA
C - - - - - 0x00197B 00:D96B: 95 DC     STA ram_00DC,X
C - - - - - 0x00197D 00:D96D: 60        RTS
bra_D96E:
C - - - - - 0x00197E 00:D96E: A9 00     LDA #$00
C - - - - - 0x001980 00:D970: 9D 98 03  STA ram_0398,X
C - - - - - 0x001983 00:D973: 95 DC     STA ram_00DC,X
C - - - - - 0x001985 00:D975: F6 9C     INC ram_009C,X
C - - - - - 0x001987 00:D977: 8A        TXA
C - - - - - 0x001988 00:D978: D0 04     BNE bra_D97E
C - - - - - 0x00198A 00:D97A: A9 02     LDA #$02
C - - - - - 0x00198C 00:D97C: 85 FD     STA ram_00FD
bra_D97E:
C - - - - - 0x00198E 00:D97E: A9 08     LDA #$08
C - - - - - 0x001990 00:D980: 95 2A     STA ram_002A,X
C - - - - - 0x001992 00:D982: 60        RTS



ofs_003_D983_03:
C - - J - - 0x001993 00:D983: BD 70 03  LDA ram_0370,X
C - - - - - 0x001996 00:D986: F0 38     BEQ bra_D9C0
C - - - - - 0x001998 00:D988: B5 2A     LDA ram_002A,X
C - - - - - 0x00199A 00:D98A: D0 46     BNE bra_D9D2_RTS
C - - - - - 0x00199C 00:D98C: 8A        TXA
C - - - - - 0x00199D 00:D98D: 0D F7 03  ORA ram_03F7
C - - - - - 0x0019A0 00:D990: D0 0F     BNE bra_D9A1
C - - - - - 0x0019A2 00:D992: A4 49     LDY ram_0049
C - - - - - 0x0019A4 00:D994: A5 14     LDA ram_btn_hold
C - - - - - 0x0019A6 00:D996: 29 C0     AND #con_btns_AB
C - - - - - 0x0019A8 00:D998: F0 05     BEQ bra_D99F
C - - - - - 0x0019AA 00:D99A: 85 49     STA ram_0049
C - - - - - 0x0019AC 00:D99C: 98        TYA
C - - - - - 0x0019AD 00:D99D: F0 08     BEQ bra_D9A7
bra_D99F:
C - - - - - 0x0019AF 00:D99F: 85 49     STA ram_0049
bra_D9A1:
C - - - - - 0x0019B1 00:D9A1: A5 3F     LDA ram_003F
C - - - - - 0x0019B3 00:D9A3: 29 0F     AND #$0F
C - - - - - 0x0019B5 00:D9A5: D0 03     BNE bra_D9AA
bra_D9A7:
C - - - - - 0x0019B7 00:D9A7: DE 90 03  DEC ram_0390,X
bra_D9AA:
C - - - - - 0x0019BA 00:D9AA: 29 07     AND #$07
C - - - - - 0x0019BC 00:D9AC: D0 08     BNE bra_D9B6
C - - - - - 0x0019BE 00:D9AE: BD 98 03  LDA ram_0398,X
C - - - - - 0x0019C1 00:D9B1: 49 01     EOR #$01
C - - - - - 0x0019C3 00:D9B3: 9D 98 03  STA ram_0398,X
bra_D9B6:
C - - - - - 0x0019C6 00:D9B6: BD 90 03  LDA ram_0390,X
C - - - - - 0x0019C9 00:D9B9: 38        SEC
C - - - - - 0x0019CA 00:D9BA: E9 08     SBC #$08
C - - - - - 0x0019CC 00:D9BC: D5 80     CMP ram_0080,X
C - - - - - 0x0019CE 00:D9BE: B0 12     BCS bra_D9D2_RTS
bra_D9C0:
C - - - - - 0x0019D0 00:D9C0: A9 03     LDA #$03
C - - - - - 0x0019D2 00:D9C2: 95 36     STA ram_0036,X
C - - - - - 0x0019D4 00:D9C4: F6 9C     INC ram_009C,X
C - - - - - 0x0019D6 00:D9C6: A9 00     LDA #$00
C - - - - - 0x0019D8 00:D9C8: E0 03     CPX #$03
C - - - - - 0x0019DA 00:D9CA: D0 06     BNE bra_D9D2_RTS
C - - - - - 0x0019DC 00:D9CC: 8D A8 03  STA ram_03A8
C - - - - - 0x0019DF 00:D9CF: 8D 73 03  STA ram_0373
bra_D9D2_RTS:
C - - - - - 0x0019E2 00:D9D2: 60        RTS



ofs_003_D9D3_04:
C - - J - - 0x0019E3 00:D9D3: B5 36     LDA ram_0036,X
C - - - - - 0x0019E5 00:D9D5: D0 1E     BNE bra_D9F5_RTS
C - - - - - 0x0019E7 00:D9D7: 8A        TXA
C - - - - - 0x0019E8 00:D9D8: D0 0D     BNE bra_D9E7
C - - - - - 0x0019EA 00:D9DA: AD E0 03  LDA ram_03E0
C - - - - - 0x0019ED 00:D9DD: D0 31     BNE bra_DA10
C - - - - - 0x0019EF 00:D9DF: AD F7 03  LDA ram_03F7
C - - - - - 0x0019F2 00:D9E2: F0 0F     BEQ bra_D9F3
- - - - - - 0x0019F4 00:D9E4: 4C 85 CA  JMP loc_CA85
bra_D9E7:
C - - - - - 0x0019F7 00:D9E7: A5 22     LDA ram_0022
C - - - - - 0x0019F9 00:D9E9: D0 0A     BNE bra_D9F5_RTS
C - - - - - 0x0019FB 00:D9EB: A9 01     LDA #$01
C - - - - - 0x0019FD 00:D9ED: 95 DC     STA ram_00DC,X
C - - - - - 0x0019FF 00:D9EF: A9 18     LDA #$18
C - - - - - 0x001A01 00:D9F1: 85 22     STA ram_0022
bra_D9F3:
C - - - - - 0x001A03 00:D9F3: F6 9C     INC ram_009C,X
bra_D9F5_RTS:
C - - - - - 0x001A05 00:D9F5: 60        RTS



ofs_003_D9F6_05:
C - - J - - 0x001A06 00:D9F6: B5 94     LDA ram_0094,X
C - - - - - 0x001A08 00:D9F8: 15 DC     ORA ram_00DC,X
C - - - - - 0x001A0A 00:D9FA: D0 07     BNE bra_DA03
C - - - - - 0x001A0C 00:D9FC: B5 B8     LDA ram_00B8,X
C - - - - - 0x001A0E 00:D9FE: DD C4 D8  CMP tbl_D8C4,X
C - - - - - 0x001A11 00:DA01: F0 11     BEQ bra_DA14_RTS
bra_DA03:
C - - - - - 0x001A13 00:DA03: A9 01     LDA #$01
C - - - - - 0x001A15 00:DA05: 95 DC     STA ram_00DC,X
C - - - - - 0x001A17 00:DA07: 8A        TXA
C - - - - - 0x001A18 00:DA08: F0 06     BEQ bra_DA10
C - - - - - 0x001A1A 00:DA0A: B5 B8     LDA ram_00B8,X
C - - - - - 0x001A1C 00:DA0C: C9 08     CMP #$08
C - - - - - 0x001A1E 00:DA0E: 90 04     BCC bra_DA14_RTS
bra_DA10:
C - - - - - 0x001A20 00:DA10: A9 00     LDA #$00
C - - - - - 0x001A22 00:DA12: 95 9C     STA ram_009C,X
bra_DA14_RTS:
C - - - - - 0x001A24 00:DA14: 60        RTS



sub_DA15:
C - - - - - 0x001A25 00:DA15: BD 90 03  LDA ram_0390,X
C - - - - - 0x001A28 00:DA18: 38        SEC
C - - - - - 0x001A29 00:DA19: F5 80     SBC ram_0080,X
C - - - - - 0x001A2B 00:DA1B: E9 08     SBC #$08
C - - - - - 0x001A2D 00:DA1D: 0A        ASL
C - - - - - 0x001A2E 00:DA1E: 18        CLC
C - - - - - 0x001A2F 00:DA1F: 75 B8     ADC ram_00B8,X
C - - - - - 0x001A31 00:DA21: 69 04     ADC #$04
C - - - - - 0x001A33 00:DA23: 95 6C     STA ram_006C,X
C - - - - - 0x001A35 00:DA25: 60        RTS



sub_DA26:
C - - - - - 0x001A36 00:DA26: A5 4F     LDA ram_004F
C - - - - - 0x001A38 00:DA28: F0 3F     BEQ bra_DA69_RTS
C - - - - - 0x001A3A 00:DA2A: A2 03     LDX #$03
bra_DA2C_loop:
C - - - - - 0x001A3C 00:DA2C: 20 58 DA  JSR sub_DA58
C - - - - - 0x001A3F 00:DA2F: 20 1A DC  JSR sub_DC1A
C - - - - - 0x001A42 00:DA32: 20 F2 DC  JSR sub_DCF2
C - - - - - 0x001A45 00:DA35: 20 DE DC  JSR sub_DCDE
C - - - - - 0x001A48 00:DA38: CA        DEX
C - - - - - 0x001A49 00:DA39: 10 F1     BPL bra_DA2C_loop
C - - - - - 0x001A4B 00:DA3B: 20 6A DA  JSR sub_DA6A
C - - - - - 0x001A4E 00:DA3E: 20 7A DA  JSR sub_DA7A
C - - - - - 0x001A51 00:DA41: 20 FE DB  JSR sub_DBFE
C - - - - - 0x001A54 00:DA44: A5 3C     LDA ram_003C
C - - - - - 0x001A56 00:DA46: D0 21     BNE bra_DA69_RTS
C - - - - - 0x001A58 00:DA48: AC BC 03  LDY ram_03BC
C - - - - - 0x001A5B 00:DA4B: B9 EF D8  LDA tbl_D8EF_lo,Y
C - - - - - 0x001A5E 00:DA4E: 85 00     STA ram_0000
C - - - - - 0x001A60 00:DA50: B9 F1 D8  LDA tbl_D8F1_hi,Y
C - - - - - 0x001A63 00:DA53: 85 01     STA ram_0001
C - - - - - 0x001A65 00:DA55: 6C 00 00  JMP (ram_0000)



sub_DA58:
C - - - - - 0x001A68 00:DA58: B5 94     LDA ram_0094,X
C - - - - - 0x001A6A 00:DA5A: 95 60     STA ram_0060,X
C - - - - - 0x001A6C 00:DA5C: B5 90     LDA ram_0090,X
C - - - - - 0x001A6E 00:DA5E: 18        CLC
C - - - - - 0x001A6F 00:DA5F: 7D 94 03  ADC ram_0394,X
C - - - - - 0x001A72 00:DA62: 9D 94 03  STA ram_0394,X
C - - - - - 0x001A75 00:DA65: 90 02     BCC bra_DA69_RTS
C - - - - - 0x001A77 00:DA67: F6 60     INC ram_0060,X
bra_DA69_RTS:
C - - - - - 0x001A79 00:DA69: 60        RTS



sub_DA6A:
C - - - - - 0x001A7A 00:DA6A: A5 12     LDA ram_scroll_X
C - - - - - 0x001A7C 00:DA6C: 18        CLC
C - - - - - 0x001A7D 00:DA6D: 65 60     ADC ram_0060
C - - - - - 0x001A7F 00:DA6F: 85 12     STA ram_scroll_X
C - - - - - 0x001A81 00:DA71: 90 06     BCC bra_DA79_RTS
C - - - - - 0x001A83 00:DA73: A5 4D     LDA ram_004D
C - - - - - 0x001A85 00:DA75: 49 01     EOR #$01
C - - - - - 0x001A87 00:DA77: 85 4D     STA ram_004D
bra_DA79_RTS:
C - - - - - 0x001A89 00:DA79: 60        RTS



sub_DA7A:
C - - - - - 0x001A8A 00:DA7A: A2 03     LDX #$03
bra_DA7C_loop:
C - - - - - 0x001A8C 00:DA7C: B5 A8     LDA ram_00A8,X
C - - - - - 0x001A8E 00:DA7E: F0 1B     BEQ bra_DA9B
C - - - - - 0x001A90 00:DA80: B5 60     LDA ram_0060,X
C - - - - - 0x001A92 00:DA82: 18        CLC
C - - - - - 0x001A93 00:DA83: 75 80     ADC ram_0080,X
C - - - - - 0x001A95 00:DA85: 90 02     BCC bra_DA89
C - - - - - 0x001A97 00:DA87: F6 84     INC ram_0084,X
bra_DA89:
C - - - - - 0x001A99 00:DA89: 38        SEC
C - - - - - 0x001A9A 00:DA8A: E5 60     SBC ram_0060
C - - - - - 0x001A9C 00:DA8C: 95 80     STA ram_0080,X
C - - - - - 0x001A9E 00:DA8E: B0 02     BCS bra_DA92
C - - - - - 0x001AA0 00:DA90: D6 84     DEC ram_0084,X
bra_DA92:
C - - - - - 0x001AA2 00:DA92: BD 90 03  LDA ram_0390,X
C - - - - - 0x001AA5 00:DA95: 38        SEC
C - - - - - 0x001AA6 00:DA96: E5 60     SBC ram_0060
C - - - - - 0x001AA8 00:DA98: 9D 90 03  STA ram_0390,X
bra_DA9B:
C - - - - - 0x001AAB 00:DA9B: CA        DEX
C - - - - - 0x001AAC 00:DA9C: D0 DE     BNE bra_DA7C_loop
C - - - - - 0x001AAE 00:DA9E: 60        RTS



sub_DA9F:
C - - - - - 0x001AAF 00:DA9F: A2 03     LDX #$03
C - - - - - 0x001AB1 00:DAA1: A5 3B     LDA ram_003B
C - - - - - 0x001AB3 00:DAA3: D0 3A     BNE bra_DADF
bra_DAA5_loop:
C - - - - - 0x001AB5 00:DAA5: 8A        TXA
C - - - - - 0x001AB6 00:DAA6: 45 4C     EOR ram_004C
C - - - - - 0x001AB8 00:DAA8: 15 A8     ORA ram_00A8,X
C - - - - - 0x001ABA 00:DAAA: 05 23     ORA ram_0023
C - - - - - 0x001ABC 00:DAAC: 0D 73 03  ORA ram_0373
C - - - - - 0x001ABF 00:DAAF: 0D A8 03  ORA ram_03A8
C - - - - - 0x001AC2 00:DAB2: D0 2B     BNE bra_DADF
C - - - - - 0x001AC4 00:DAB4: B5 18     LDA ram_0018,X
C - - - - - 0x001AC6 00:DAB6: C9 A0     CMP #$A0
C - - - - - 0x001AC8 00:DAB8: 90 25     BCC bra_DADF
C - - - - - 0x001ACA 00:DABA: 86 00     STX ram_0000
C - - - - - 0x001ACC 00:DABC: 29 03     AND #$03
C - - - - - 0x001ACE 00:DABE: A8        TAY
C - - - - - 0x001ACF 00:DABF: C8        INY
C - - - - - 0x001AD0 00:DAC0: A5 94     LDA ram_0094
C - - - - - 0x001AD2 00:DAC2: 29 02     AND #$02
C - - - - - 0x001AD4 00:DAC4: 95 84     STA ram_0084,X
C - - - - - 0x001AD6 00:DAC6: A2 03     LDX #$03
bra_DAC8_loop:
C - - - - - 0x001AD8 00:DAC8: 84 01     STY ram_0001
C - - - - - 0x001ADA 00:DACA: B5 70     LDA ram_0070,X
C - - - - - 0x001ADC 00:DACC: C5 01     CMP ram_0001
C - - - - - 0x001ADE 00:DACE: D0 07     BNE bra_DAD7
C - - - - - 0x001AE0 00:DAD0: C8        INY
C - - - - - 0x001AE1 00:DAD1: C0 05     CPY #$05
C - - - - - 0x001AE3 00:DAD3: 90 02     BCC bra_DAD7
C - - - - - 0x001AE5 00:DAD5: A0 01     LDY #$01
bra_DAD7:
C - - - - - 0x001AE7 00:DAD7: CA        DEX
C - - - - - 0x001AE8 00:DAD8: D0 EE     BNE bra_DAC8_loop
C - - - - - 0x001AEA 00:DADA: A6 00     LDX ram_0000
C - - - - - 0x001AEC 00:DADC: 20 E3 DA  JSR sub_DAE3
bra_DADF:
C - - - - - 0x001AEF 00:DADF: CA        DEX
C - - - - - 0x001AF0 00:DAE0: D0 C3     BNE bra_DAA5_loop
C - - - - - 0x001AF2 00:DAE2: 60        RTS



sub_DAE3:
C - - - - - 0x001AF3 00:DAE3: 20 95 DB  JSR sub_DB95
C - - - - - 0x001AF6 00:DAE6: 88        DEY
C - - - - - 0x001AF7 00:DAE7: B9 D8 D8  LDA tbl_D8D8,Y
C - - - - - 0x001AFA 00:DAEA: 95 B8     STA ram_00B8,X
C - - - - - 0x001AFC 00:DAEC: B4 84     LDY ram_0084,X
C - - - - - 0x001AFE 00:DAEE: B9 DF D8  LDA tbl_D8DF,Y
C - - - - - 0x001B01 00:DAF1: 95 80     STA ram_0080,X
C - - - - - 0x001B03 00:DAF3: A9 06     LDA #$06
C - - - - - 0x001B05 00:DAF5: 95 AC     STA ram_00AC,X
C - - - - - 0x001B07 00:DAF7: A5 E0     LDA ram_00E0
C - - - - - 0x001B09 00:DAF9: 18        CLC
C - - - - - 0x001B0A 00:DAFA: 79 E2 D8  ADC tbl_D8E2,Y
C - - - - - 0x001B0D 00:DAFD: 29 3F     AND #$3F
C - - - - - 0x001B0F 00:DAFF: 95 E0     STA ram_00E0,X
C - - - - - 0x001B11 00:DB01: A5 64     LDA ram_0064
C - - - - - 0x001B13 00:DB03: 95 64     STA ram_0064,X
C - - - - - 0x001B15 00:DB05: 98        TYA
C - - - - - 0x001B16 00:DB06: F0 2C     BEQ bra_DB34
C - - - - - 0x001B18 00:DB08: A0 05     LDY #$05
C - - - - - 0x001B1A 00:DB0A: 20 FF E7  JSR sub_E7FF
C - - - - - 0x001B1D 00:DB0D: C9 E4     CMP #$E4
C - - - - - 0x001B1F 00:DB0F: F0 23     BEQ bra_DB34
C - - - - - 0x001B21 00:DB11: C9 3B     CMP #$3B
C - - - - - 0x001B23 00:DB13: 90 38     BCC bra_DB4D
C - - - - - 0x001B25 00:DB15: C9 93     CMP #$93
C - - - - - 0x001B27 00:DB17: B0 34     BCS bra_DB4D
C - - - - - 0x001B29 00:DB19: A0 02     LDY #$02
C - - - - - 0x001B2B 00:DB1B: 20 FF E7  JSR sub_E7FF
C - - - - - 0x001B2E 00:DB1E: C9 E6     CMP #$E6
C - - - - - 0x001B30 00:DB20: D0 12     BNE bra_DB34
C - - - - - 0x001B32 00:DB22: B5 B8     LDA ram_00B8,X
C - - - - - 0x001B34 00:DB24: C9 20     CMP #$20
C - - - - - 0x001B36 00:DB26: 90 08     BCC bra_DB30
C - - - - - 0x001B38 00:DB28: A9 30     LDA #$30
C - - - - - 0x001B3A 00:DB2A: 95 BC     STA ram_00BC,X
C - - - - - 0x001B3C 00:DB2C: A9 01     LDA #$01
C - - - - - 0x001B3E 00:DB2E: D0 02     BNE bra_DB32    ; jmp
bra_DB30:
C - - - - - 0x001B40 00:DB30: A9 03     LDA #$03
bra_DB32:
C - - - - - 0x001B42 00:DB32: 95 A4     STA ram_00A4,X
bra_DB34:
C - - - - - 0x001B44 00:DB34: B4 84     LDY ram_0084,X
C - - - - - 0x001B46 00:DB36: 20 50 DB  JSR sub_DB50
C - - - - - 0x001B49 00:DB39: B5 84     LDA ram_0084,X
C - - - - - 0x001B4B 00:DB3B: 49 02     EOR #$02
C - - - - - 0x001B4D 00:DB3D: 0A        ASL
C - - - - - 0x001B4E 00:DB3E: 95 94     STA ram_0094,X
C - - - - - 0x001B50 00:DB40: A9 20     LDA #$20
C - - - - - 0x001B52 00:DB42: 9D 9B 03  STA ram_039B,X
C - - - - - 0x001B55 00:DB45: 4A        LSR
C - - - - - 0x001B56 00:DB46: 85 23     STA ram_0023
C - - - - - 0x001B58 00:DB48: A9 01     LDA #$01
C - - - - - 0x001B5A 00:DB4A: 95 A8     STA ram_00A8,X
C - - - - - 0x001B5C 00:DB4C: 60        RTS
bra_DB4D:
C - - - - - 0x001B5D 00:DB4D: A9 00     LDA #$00
C - - - - - 0x001B5F 00:DB4F: 60        RTS



loc_DB50:
sub_DB50:
C D 2 - - - 0x001B60 00:DB50: A5 52     LDA ram_0052
C - - - - - 0x001B62 00:DB52: F0 04     BEQ bra_DB58
C - - - - - 0x001B64 00:DB54: A9 03     LDA #$03
C - - - - - 0x001B66 00:DB56: D0 07     BNE bra_DB5F    ; jmp
bra_DB58:
C - - - - - 0x001B68 00:DB58: E0 03     CPX #$03
C - - - - - 0x001B6A 00:DB5A: F0 10     BEQ bra_DB6C
bra_DB5C:
C - - - - - 0x001B6C 00:DB5C: B9 D5 D8  LDA tbl_D8D5,Y
bra_DB5F:
C - - - - - 0x001B6F 00:DB5F: 95 78     STA ram_0078,X
C - - - - - 0x001B71 00:DB61: B5 1B     LDA ram_001B,X
C - - - - - 0x001B73 00:DB63: 29 0F     AND #$0F
C - - - - - 0x001B75 00:DB65: A8        TAY
C - - - - - 0x001B76 00:DB66: B9 CD D8  LDA tbl_D8CD,Y
C - - - - - 0x001B79 00:DB69: 95 74     STA ram_0074,X
C - - - - - 0x001B7B 00:DB6B: 60        RTS
bra_DB6C:
C - - - - - 0x001B7C 00:DB6C: B5 84     LDA ram_0084,X
C - - - - - 0x001B7E 00:DB6E: 4A        LSR
C - - - - - 0x001B7F 00:DB6F: 4A        LSR
C - - - - - 0x001B80 00:DB70: B0 EA     BCS bra_DB5C
C - - - - - 0x001B82 00:DB72: A5 94     LDA ram_0094
C - - - - - 0x001B84 00:DB74: F0 E6     BEQ bra_DB5C
C - - - - - 0x001B86 00:DB76: 95 78     STA ram_0078,X
C - - - - - 0x001B88 00:DB78: A5 90     LDA ram_0090
C - - - - - 0x001B8A 00:DB7A: 95 74     STA ram_0074,X
C - - - - - 0x001B8C 00:DB7C: B5 84     LDA ram_0084,X
C - - - - - 0x001B8E 00:DB7E: F0 0C     BEQ bra_DB8C
C - - - - - 0x001B90 00:DB80: B5 80     LDA ram_0080,X
C - - - - - 0x001B92 00:DB82: C9 40     CMP #$40
C - - - - - 0x001B94 00:DB84: B0 D6     BCS bra_DB5C
C - - - - - 0x001B96 00:DB86: A5 70     LDA ram_0070
C - - - - - 0x001B98 00:DB88: C5 73     CMP ram_0073
C - - - - - 0x001B9A 00:DB8A: F0 08     BEQ bra_DB94_RTS
bra_DB8C:
C - - - - - 0x001B9C 00:DB8C: B5 78     LDA ram_0078,X
C - - - - - 0x001B9E 00:DB8E: C9 04     CMP #$04
C - - - - - 0x001BA0 00:DB90: B0 02     BCS bra_DB94_RTS
C - - - - - 0x001BA2 00:DB92: F6 78     INC ram_0078,X
bra_DB94_RTS:
C - - - - - 0x001BA4 00:DB94: 60        RTS



sub_DB95:
loc_DB95:
C D 2 - - - 0x001BA5 00:DB95: A9 00     LDA #$00
C - - - - - 0x001BA7 00:DB97: 95 A8     STA ram_00A8,X
C - - - - - 0x001BA9 00:DB99: 95 B8     STA ram_00B8,X
C - - - - - 0x001BAB 00:DB9B: 95 BC     STA ram_00BC,X
C - - - - - 0x001BAD 00:DB9D: 95 A0     STA ram_00A0,X
C - - - - - 0x001BAF 00:DB9F: 95 A4     STA ram_00A4,X
C - - - - - 0x001BB1 00:DBA1: 95 58     STA ram_0058,X
C - - - - - 0x001BB3 00:DBA3: 95 CC     STA ram_00CC,X
C - - - - - 0x001BB5 00:DBA5: 9D 6C 03  STA ram_036C,X
C - - - - - 0x001BB8 00:DBA8: 95 90     STA ram_0090,X
C - - - - - 0x001BBA 00:DBAA: 95 94     STA ram_0094,X
C - - - - - 0x001BBC 00:DBAC: 95 98     STA ram_0098,X
C - - - - - 0x001BBE 00:DBAE: 95 9C     STA ram_009C,X
C - - - - - 0x001BC0 00:DBB0: 95 B0     STA ram_00B0,X
C - - - - - 0x001BC2 00:DBB2: 95 D4     STA ram_00D4,X
C - - - - - 0x001BC4 00:DBB4: 9D 88 03  STA ram_0388,X
C - - - - - 0x001BC7 00:DBB7: 95 C0     STA ram_00C0,X
C - - - - - 0x001BC9 00:DBB9: 9D 9C 03  STA ram_039C,X
C - - - - - 0x001BCC 00:DBBC: 95 DC     STA ram_00DC,X
C - - - - - 0x001BCE 00:DBBE: 95 70     STA ram_0070,X
C - - - - - 0x001BD0 00:DBC0: 9D 70 03  STA ram_0370,X
bra_DBC3_RTS:
C - - - - - 0x001BD3 00:DBC3: 60        RTS



sub_DBC4:
C - - - - - 0x001BD4 00:DBC4: AD A8 03  LDA ram_03A8
C - - - - - 0x001BD7 00:DBC7: F0 FA     BEQ bra_DBC3_RTS
C - - - - - 0x001BD9 00:DBC9: A5 AB     LDA ram_00AB
C - - - - - 0x001BDB 00:DBCB: F0 13     BEQ bra_DBE0
C - - - - - 0x001BDD 00:DBCD: A2 03     LDX #$03
C - - - - - 0x001BDF 00:DBCF: B5 84     LDA ram_0084,X
C - - - - - 0x001BE1 00:DBD1: 4A        LSR
C - - - - - 0x001BE2 00:DBD2: B0 EF     BCS bra_DBC3_RTS
C - - - - - 0x001BE4 00:DBD4: 4A        LSR
C - - - - - 0x001BE5 00:DBD5: B0 06     BCS bra_DBDD
C - - - - - 0x001BE7 00:DBD7: B5 80     LDA ram_0080,X
C - - - - - 0x001BE9 00:DBD9: C9 EA     CMP #$EA
C - - - - - 0x001BEB 00:DBDB: B0 E6     BCS bra_DBC3_RTS
bra_DBDD:
C - - - - - 0x001BED 00:DBDD: 4C 95 DB  JMP loc_DB95
bra_DBE0:
C - - - - - 0x001BF0 00:DBE0: A0 00     LDY #$00
C - - - - - 0x001BF2 00:DBE2: 8C A8 03  STY ram_03A8
C - - - - - 0x001BF5 00:DBE5: C8        INY
C - - - - - 0x001BF6 00:DBE6: A2 02     LDX #$02
C - - - - - 0x001BF8 00:DBE8: 86 87     STX ram_0087
C - - - - - 0x001BFA 00:DBEA: E8        INX
C - - - - - 0x001BFB 00:DBEB: 20 E3 DA  JSR sub_DAE3
C - - - - - 0x001BFE 00:DBEE: F0 D3     BEQ bra_DBC3_RTS
C - - - - - 0x001C00 00:DBF0: A9 00     LDA #$00
C - - - - - 0x001C02 00:DBF2: 85 97     STA ram_0097
C - - - - - 0x001C04 00:DBF4: A9 92     LDA #$92
C - - - - - 0x001C06 00:DBF6: 85 8F     STA ram_008F
C - - - - - 0x001C08 00:DBF8: 8D 73 03  STA ram_0373
C - - - - - 0x001C0B 00:DBFB: 4C 69 DC  JMP loc_DC69



sub_DBFE:
C - - - - - 0x001C0E 00:DBFE: A5 60     LDA ram_0060
C - - - - - 0x001C10 00:DC00: 4A        LSR
C - - - - - 0x001C11 00:DC01: 6A        ROR
C - - - - - 0x001C12 00:DC02: 6A        ROR
C - - - - - 0x001C13 00:DC03: 6A        ROR
C - - - - - 0x001C14 00:DC04: 18        CLC
C - - - - - 0x001C15 00:DC05: 6D BF 03  ADC ram_03BF
C - - - - - 0x001C18 00:DC08: 8D BF 03  STA ram_03BF
C - - - - - 0x001C1B 00:DC0B: A5 60     LDA ram_0060
C - - - - - 0x001C1D 00:DC0D: 65 50     ADC ram_0050
C - - - - - 0x001C1F 00:DC0F: 85 50     STA ram_0050
C - - - - - 0x001C21 00:DC11: 90 06     BCC bra_DC19_RTS
C - - - - - 0x001C23 00:DC13: A5 4E     LDA ram_004E
C - - - - - 0x001C25 00:DC15: 49 01     EOR #$01
C - - - - - 0x001C27 00:DC17: 85 4E     STA ram_004E
bra_DC19_RTS:
C - - - - - 0x001C29 00:DC19: 60        RTS



sub_DC1A:
C - - - - - 0x001C2A 00:DC1A: B5 B0     LDA ram_00B0,X
C - - - - - 0x001C2C 00:DC1C: F0 FB     BEQ bra_DC19_RTS
C - - - - - 0x001C2E 00:DC1E: 20 97 DC  JSR sub_DC97
C - - - - - 0x001C31 00:DC21: 85 01     STA ram_0001
C - - - - - 0x001C33 00:DC23: D5 8C     CMP ram_008C,X
C - - - - - 0x001C35 00:DC25: B0 F2     BCS bra_DC19_RTS
C - - - - - 0x001C37 00:DC27: B5 8C     LDA ram_008C,X
C - - - - - 0x001C39 00:DC29: C9 A8     CMP #$A8
C - - - - - 0x001C3B 00:DC2B: B0 EC     BCS bra_DC19_RTS
C - - - - - 0x001C3D 00:DC2D: BD 64 03  LDA ram_0364,X
C - - - - - 0x001C40 00:DC30: F0 E7     BEQ bra_DC19_RTS
C - - - - - 0x001C42 00:DC32: 8A        TXA
C - - - - - 0x001C43 00:DC33: D0 04     BNE bra_DC39
C - - - - - 0x001C45 00:DC35: A9 02     LDA #$02
C - - - - - 0x001C47 00:DC37: 85 FF     STA ram_00FF
bra_DC39:
C - - - - - 0x001C49 00:DC39: A9 00     LDA #$00
C - - - - - 0x001C4B 00:DC3B: 95 B0     STA ram_00B0,X
C - - - - - 0x001C4D 00:DC3D: 9D 64 03  STA ram_0364,X
C - - - - - 0x001C50 00:DC40: B5 98     LDA ram_0098,X
C - - - - - 0x001C52 00:DC42: D0 43     BNE bra_DC87
C - - - - - 0x001C54 00:DC44: A5 52     LDA ram_0052
C - - - - - 0x001C56 00:DC46: D0 46     BNE bra_DC8E
C - - - - - 0x001C58 00:DC48: BC 88 03  LDY ram_0388,X
C - - - - - 0x001C5B 00:DC4B: 9D 88 03  STA ram_0388,X
C - - - - - 0x001C5E 00:DC4E: 98        TYA
C - - - - - 0x001C5F 00:DC4F: D0 36     BNE bra_DC87
C - - - - - 0x001C61 00:DC51: B5 D4     LDA ram_00D4,X
C - - - - - 0x001C63 00:DC53: B4 94     LDY ram_0094,X
C - - - - - 0x001C65 00:DC55: C0 02     CPY #$02
C - - - - - 0x001C67 00:DC57: 10 03     BPL bra_DC5C
C - - - - - 0x001C69 00:DC59: 18        CLC
C - - - - - 0x001C6A 00:DC5A: 69 08     ADC #$08
bra_DC5C:
C - - - - - 0x001C6C 00:DC5C: A8        TAY
C - - - - - 0x001C6D 00:DC5D: B5 AC     LDA ram_00AC,X
C - - - - - 0x001C6F 00:DC5F: D9 6C D8  CMP tbl_D86C,Y
C - - - - - 0x001C72 00:DC62: 90 05     BCC bra_DC69
C - - - - - 0x001C74 00:DC64: D9 7C D8  CMP tbl_D87C,Y
C - - - - - 0x001C77 00:DC67: 90 05     BCC bra_DC6E
bra_DC69:
loc_DC69:
C D 2 - - - 0x001C79 00:DC69: A9 FF     LDA #$FF
C - - - - - 0x001C7B 00:DC6B: 95 98     STA ram_0098,X
C - - - - - 0x001C7D 00:DC6D: 60        RTS
bra_DC6E:
C - - - - - 0x001C7E 00:DC6E: BD 68 03  LDA ram_0368,X
C - - - - - 0x001C81 00:DC71: D5 AC     CMP ram_00AC,X
C - - - - - 0x001C83 00:DC73: F0 12     BEQ bra_DC87
C - - - - - 0x001C85 00:DC75: B5 D4     LDA ram_00D4,X
C - - - - - 0x001C87 00:DC77: 15 CC     ORA ram_00CC,X
C - - - - - 0x001C89 00:DC79: D0 0C     BNE bra_DC87
C - - - - - 0x001C8B 00:DC7B: A9 04     LDA #$04
C - - - - - 0x001C8D 00:DC7D: 9D 74 03  STA ram_0374,X
C - - - - - 0x001C90 00:DC80: 4A        LSR
C - - - - - 0x001C91 00:DC81: 9D 88 03  STA ram_0388,X
C - - - - - 0x001C94 00:DC84: 4A        LSR
C - - - - - 0x001C95 00:DC85: 95 B0     STA ram_00B0,X
bra_DC87:
C - - - - - 0x001C97 00:DC87: C6 01     DEC ram_0001
C - - - - - 0x001C99 00:DC89: A5 01     LDA ram_0001
C - - - - - 0x001C9B 00:DC8B: 95 8C     STA ram_008C,X
bra_DC8D_RTS:
C - - - - - 0x001C9D 00:DC8D: 60        RTS
bra_DC8E:
C - - - - - 0x001C9E 00:DC8E: B5 D4     LDA ram_00D4,X
C - - - - - 0x001CA0 00:DC90: D0 FB     BNE bra_DC8D_RTS
C - - - - - 0x001CA2 00:DC92: A9 06     LDA #$06
C - - - - - 0x001CA4 00:DC94: 95 AC     STA ram_00AC,X
C - - - - - 0x001CA6 00:DC96: 60        RTS



sub_DC97:
C - - - - - 0x001CA7 00:DC97: AD F1 03  LDA ram_03F1
sub_DC9A:
C - - - - - 0x001CAA 00:DC9A: 38        SEC
C - - - - - 0x001CAB 00:DC9B: F5 BC     SBC ram_00BC,X
C - - - - - 0x001CAD 00:DC9D: F5 B8     SBC ram_00B8,X
C - - - - - 0x001CAF 00:DC9F: 60        RTS



sub_DCA0:
C - - - - - 0x001CB0 00:DCA0: B4 D4     LDY ram_00D4,X
C - - - - - 0x001CB2 00:DCA2: A5 52     LDA ram_0052
C - - - - - 0x001CB4 00:DCA4: C9 01     CMP #$01
C - - - - - 0x001CB6 00:DCA6: D0 0D     BNE bra_DCB5
C - - - - - 0x001CB8 00:DCA8: 8A        TXA
C - - - - - 0x001CB9 00:DCA9: 05 98     ORA ram_0098
C - - - - - 0x001CBB 00:DCAB: 05 9C     ORA ram_009C
C - - - - - 0x001CBD 00:DCAD: 05 58     ORA ram_0058
C - - - - - 0x001CBF 00:DCAF: D0 04     BNE bra_DCB5
C - - - - - 0x001CC1 00:DCB1: A9 0A     LDA #$0A
C - - - - - 0x001CC3 00:DCB3: D0 03     BNE bra_DCB8
bra_DCB5:
C - - - - - 0x001CC5 00:DCB5: B9 8B D8  LDA tbl_D88B,Y
bra_DCB8:
C - - - - - 0x001CC8 00:DCB8: 9D 68 03  STA ram_0368,X
C - - - - - 0x001CCB 00:DCBB: B5 A4     LDA ram_00A4,X
C - - - - - 0x001CCD 00:DCBD: C9 01     CMP #$01
C - - - - - 0x001CCF 00:DCBF: D0 05     BNE bra_DCC6_RTS
C - - - - - 0x001CD1 00:DCC1: A9 06     LDA #$06
C - - - - - 0x001CD3 00:DCC3: 9D 68 03  STA ram_0368,X
bra_DCC6_RTS:
C - - - - - 0x001CD6 00:DCC6: 60        RTS



loc_DCC7:
C D 2 - - - 0x001CD7 00:DCC7: 85 00     STA ram_0000
C - - - - - 0x001CD9 00:DCC9: B5 2A     LDA ram_002A,X
C - - - - - 0x001CDB 00:DCCB: D0 10     BNE bra_DCDD_RTS
C - - - - - 0x001CDD 00:DCCD: 94 2A     STY ram_002A,X
C - - - - - 0x001CDF 00:DCCF: B5 AC     LDA ram_00AC,X
C - - - - - 0x001CE1 00:DCD1: C5 00     CMP ram_0000
C - - - - - 0x001CE3 00:DCD3: F0 08     BEQ bra_DCDD_RTS
C - - - - - 0x001CE5 00:DCD5: 90 04     BCC bra_DCDB
C - - - - - 0x001CE7 00:DCD7: D6 AC     DEC ram_00AC,X
C - - - - - 0x001CE9 00:DCD9: D6 AC     DEC ram_00AC,X
bra_DCDB:
C - - - - - 0x001CEB 00:DCDB: F6 AC     INC ram_00AC,X
bra_DCDD_RTS:
C - - - - - 0x001CED 00:DCDD: 60        RTS



sub_DCDE:
C - - - - - 0x001CEE 00:DCDE: BD 74 03  LDA ram_0374,X
C - - - - - 0x001CF1 00:DCE1: F0 0E     BEQ bra_DCF1_RTS
C - - - - - 0x001CF3 00:DCE3: DE 74 03  DEC ram_0374,X
C - - - - - 0x001CF6 00:DCE6: B5 5C     LDA ram_005C,X
C - - - - - 0x001CF8 00:DCE8: 29 C0     AND #$C0
C - - - - - 0x001CFA 00:DCEA: F0 05     BEQ bra_DCF1_RTS
C - - - - - 0x001CFC 00:DCEC: A9 00     LDA #$00
C - - - - - 0x001CFE 00:DCEE: 9D 74 03  STA ram_0374,X
bra_DCF1_RTS:
C - - - - - 0x001D01 00:DCF1: 60        RTS



sub_DCF2:
C - - - - - 0x001D02 00:DCF2: B5 B0     LDA ram_00B0,X
C - - - - - 0x001D04 00:DCF4: F0 41     BEQ bra_DD37_RTS
C - - - - - 0x001D06 00:DCF6: C9 02     CMP #$02
C - - - - - 0x001D08 00:DCF8: F0 17     BEQ bra_DD11
bra_DCFA:
loc_DCFA:
C D 2 - - - 0x001D0A 00:DCFA: A9 00     LDA #$00
C - - - - - 0x001D0C 00:DCFC: F0 0A     BEQ bra_DD08    ; jmp



loc_DCFE:
C D 2 - - - 0x001D0E 00:DCFE: B5 98     LDA ram_0098,X
C - - - - - 0x001D10 00:DD00: D0 F8     BNE bra_DCFA
C - - - - - 0x001D12 00:DD02: F6 94     INC ram_0094,X
C - - - - - 0x001D14 00:DD04: D0 F4     BNE bra_DCFA    ; jmp?



loc_DD06:
sub_DD06:
C D 2 - - - 0x001D16 00:DD06: B5 94     LDA ram_0094,X
bra_DD08:
C - - - - - 0x001D18 00:DD08: 9D 84 03  STA ram_0384,X
C - - - - - 0x001D1B 00:DD0B: 20 38 DD  JSR sub_DD38
C - - - - - 0x001D1E 00:DD0E: 4C 1A DD  JMP loc_DD1A
bra_DD11:
C - - - - - 0x001D21 00:DD11: B5 5C     LDA ram_005C,X
C - - - - - 0x001D23 00:DD13: 4A        LSR
C - - - - - 0x001D24 00:DD14: 90 04     BCC bra_DD1A
C - - - - - 0x001D26 00:DD16: A5 4C     LDA ram_004C
C - - - - - 0x001D28 00:DD18: F0 1D     BEQ bra_DD37_RTS
bra_DD1A:
loc_DD1A:
C D 2 - - - 0x001D2A 00:DD1A: B5 5C     LDA ram_005C,X
C - - - - - 0x001D2C 00:DD1C: 29 03     AND #$03
C - - - - - 0x001D2E 00:DD1E: A8        TAY
C - - - - - 0x001D2F 00:DD1F: B9 68 D8  LDA tbl_D868,Y
C - - - - - 0x001D32 00:DD22: 9D 8C 03  STA ram_038C,X
C - - - - - 0x001D35 00:DD25: B5 8C     LDA ram_008C,X
C - - - - - 0x001D37 00:DD27: 85 01     STA ram_0001
C - - - - - 0x001D39 00:DD29: 20 6F DD  JSR sub_DD6F
C - - - - - 0x001D3C 00:DD2C: 95 8C     STA ram_008C,X
C - - - - - 0x001D3E 00:DD2E: B5 CC     LDA ram_00CC,X
C - - - - - 0x001D40 00:DD30: D0 05     BNE bra_DD37_RTS
C - - - - - 0x001D42 00:DD32: A9 01     LDA #$01
C - - - - - 0x001D44 00:DD34: 9D 64 03  STA ram_0364,X
bra_DD37_RTS:
C - - - - - 0x001D47 00:DD37: 60        RTS



sub_DD38:
C - - - - - 0x001D48 00:DD38: A9 02     LDA #$02
C - - - - - 0x001D4A 00:DD3A: 95 B0     STA ram_00B0,X
C - - - - - 0x001D4C 00:DD3C: A9 0F     LDA #$0F
C - - - - - 0x001D4E 00:DD3E: 9D 80 03  STA ram_0380,X
C - - - - - 0x001D51 00:DD41: B5 90     LDA ram_0090,X
C - - - - - 0x001D53 00:DD43: 18        CLC
C - - - - - 0x001D54 00:DD44: 69 AF     ADC #$AF
C - - - - - 0x001D56 00:DD46: 9D 78 03  STA ram_0378,X
C - - - - - 0x001D59 00:DD49: B5 94     LDA ram_0094,X
C - - - - - 0x001D5B 00:DD4B: 69 00     ADC #$00
C - - - - - 0x001D5D 00:DD4D: 9D 7C 03  STA ram_037C,X
C - - - - - 0x001D60 00:DD50: BD 88 03  LDA ram_0388,X
C - - - - - 0x001D63 00:DD53: C9 02     CMP #$02
C - - - - - 0x001D65 00:DD55: D0 06     BNE bra_DD5D
C - - - - - 0x001D67 00:DD57: 5E 7C 03  LSR ram_037C,X
C - - - - - 0x001D6A 00:DD5A: 7E 78 03  ROR ram_0378,X
bra_DD5D:
C - - - - - 0x001D6D 00:DD5D: 8A        TXA
C - - - - - 0x001D6E 00:DD5E: D0 0E     BNE bra_DD6E_RTS
C - - - - - 0x001D70 00:DD60: B5 94     LDA ram_0094,X
C - - - - - 0x001D72 00:DD62: 0A        ASL
C - - - - - 0x001D73 00:DD63: 0A        ASL
C - - - - - 0x001D74 00:DD64: 0A        ASL
C - - - - - 0x001D75 00:DD65: 0A        ASL
C - - - - - 0x001D76 00:DD66: 49 30     EOR #$30
C - - - - - 0x001D78 00:DD68: D0 02     BNE bra_DD6C
C - - - - - 0x001D7A 00:DD6A: A9 08     LDA #$08
bra_DD6C:
C - - - - - 0x001D7C 00:DD6C: 85 FF     STA ram_00FF
bra_DD6E_RTS:
C - - - - - 0x001D7E 00:DD6E: 60        RTS



sub_DD6F:
C - - - - - 0x001D7F 00:DD6F: BD 80 03  LDA ram_0380,X
C - - - - - 0x001D82 00:DD72: 7D 8C 03  ADC ram_038C,X
C - - - - - 0x001D85 00:DD75: 9D 80 03  STA ram_0380,X
C - - - - - 0x001D88 00:DD78: BD 84 03  LDA ram_0384,X
C - - - - - 0x001D8B 00:DD7B: 69 00     ADC #$00
C - - - - - 0x001D8D 00:DD7D: 9D 84 03  STA ram_0384,X
C - - - - - 0x001D90 00:DD80: A5 01     LDA ram_0001
C - - - - - 0x001D92 00:DD82: FD 7C 03  SBC ram_037C,X
C - - - - - 0x001D95 00:DD85: 85 01     STA ram_0001
C - - - - - 0x001D97 00:DD87: A5 01     LDA ram_0001
C - - - - - 0x001D99 00:DD89: 7D 84 03  ADC ram_0384,X
bra_DD8C_RTS:
C - - - - - 0x001D9C 00:DD8C: 60        RTS



sub_DD8D:
C - - - - - 0x001D9D 00:DD8D: A5 3C     LDA ram_003C
C - - - - - 0x001D9F 00:DD8F: 0D E0 03  ORA ram_03E0
C - - - - - 0x001DA2 00:DD92: F0 F8     BEQ bra_DD8C_RTS
C - - - - - 0x001DA4 00:DD94: A5 3C     LDA ram_003C
C - - - - - 0x001DA6 00:DD96: C9 08     CMP #$08
C - - - - - 0x001DA8 00:DD98: F0 25     BEQ bra_DDBF
C - - - - - 0x001DAA 00:DD9A: 90 32     BCC bra_DDCE
C - - - - - 0x001DAC 00:DD9C: A5 94     LDA ram_0094
C - - - - - 0x001DAE 00:DD9E: 05 98     ORA ram_0098
C - - - - - 0x001DB0 00:DDA0: 05 9C     ORA ram_009C
C - - - - - 0x001DB2 00:DDA2: D0 18     BNE bra_DDBC
C - - - - - 0x001DB4 00:DDA4: A5 58     LDA ram_0058
C - - - - - 0x001DB6 00:DDA6: F0 06     BEQ bra_DDAE
C - - - - - 0x001DB8 00:DDA8: A9 C0     LDA #$C0
C - - - - - 0x001DBA 00:DDAA: 85 90     STA ram_0090
C - - - - - 0x001DBC 00:DDAC: D0 0E     BNE bra_DDBC    ; jmp
bra_DDAE:
C - - - - - 0x001DBE 00:DDAE: 85 90     STA ram_0090
C - - - - - 0x001DC0 00:DDB0: A2 01     LDX #$01
C - - - - - 0x001DC2 00:DDB2: A5 B8     LDA ram_00B8
C - - - - - 0x001DC4 00:DDB4: CD C4 D8  CMP tbl_D8C4
C - - - - - 0x001DC7 00:DDB7: D0 01     BNE bra_DDBA
C - - - - - 0x001DC9 00:DDB9: CA        DEX
bra_DDBA:
C - - - - - 0x001DCA 00:DDBA: 86 DC     STX ram_00DC
bra_DDBC:
C - - - - - 0x001DCC 00:DDBC: 4C DD CC  JMP loc_CCDD
bra_DDBF:
C - - - - - 0x001DCF 00:DDBF: A9 00     LDA #$00
C - - - - - 0x001DD1 00:DDC1: 8D E0 03  STA ram_03E0
C - - - - - 0x001DD4 00:DDC4: A9 05     LDA #$05
C - - - - - 0x001DD6 00:DDC6: 8D B6 03  STA ram_03B6
C - - - - - 0x001DD9 00:DDC9: 85 9C     STA ram_009C
C - - - - - 0x001DDB 00:DDCB: 8D 74 03  STA ram_0374
bra_DDCE:
C - - - - - 0x001DDE 00:DDCE: 4C 13 CD  JMP loc_CD13



sub_DDD1:
C - - - - - 0x001DE1 00:DDD1: A2 03     LDX #$03
bra_DDD3_loop:
C - - - - - 0x001DE3 00:DDD3: B5 98     LDA ram_0098,X
C - - - - - 0x001DE5 00:DDD5: F0 56     BEQ bra_DE2D
C - - - - - 0x001DE7 00:DDD7: A0 04     LDY #$04
C - - - - - 0x001DE9 00:DDD9: 8A        TXA
C - - - - - 0x001DEA 00:DDDA: D0 12     BNE bra_DDEE
C - - - - - 0x001DEC 00:DDDC: 8D A9 03  STA ram_03A9
C - - - - - 0x001DEF 00:DDDF: 85 FC     STA ram_00FC
C - - - - - 0x001DF1 00:DDE1: A5 4C     LDA ram_004C
C - - - - - 0x001DF3 00:DDE3: D0 04     BNE bra_DDE9
C - - - - - 0x001DF5 00:DDE5: A9 01     LDA #$01
C - - - - - 0x001DF7 00:DDE7: 85 FD     STA ram_00FD
bra_DDE9:
C - - - - - 0x001DF9 00:DDE9: A5 1B     LDA ram_001B
C - - - - - 0x001DFB 00:DDEB: 29 03     AND #$03
C - - - - - 0x001DFD 00:DDED: A8        TAY
bra_DDEE:
C - - - - - 0x001DFE 00:DDEE: 98        TYA
C - - - - - 0x001DFF 00:DDEF: 9D E4 03  STA ram_03E4,X
C - - - - - 0x001E02 00:DDF2: A5 4C     LDA ram_004C
C - - - - - 0x001E04 00:DDF4: 4A        LSR
C - - - - - 0x001E05 00:DDF5: B0 36     BCS bra_DE2D
C - - - - - 0x001E07 00:DDF7: B5 94     LDA ram_0094,X
C - - - - - 0x001E09 00:DDF9: D0 29     BNE bra_DE24
C - - - - - 0x001E0B 00:DDFB: B5 B0     LDA ram_00B0,X
C - - - - - 0x001E0D 00:DDFD: 15 58     ORA ram_0058,X
C - - - - - 0x001E0F 00:DDFF: D0 1F     BNE bra_DE20
C - - - - - 0x001E11 00:DE01: 95 90     STA ram_0090,X
C - - - - - 0x001E13 00:DE03: 95 60     STA ram_0060,X
C - - - - - 0x001E15 00:DE05: 95 98     STA ram_0098,X
C - - - - - 0x001E17 00:DE07: A9 06     LDA #$06
C - - - - - 0x001E19 00:DE09: 95 AC     STA ram_00AC,X
C - - - - - 0x001E1B 00:DE0B: B5 80     LDA ram_0080,X
C - - - - - 0x001E1D 00:DE0D: 18        CLC
C - - - - - 0x001E1E 00:DE0E: 69 08     ADC #$08
C - - - - - 0x001E20 00:DE10: 9D 90 03  STA ram_0390,X
C - - - - - 0x001E23 00:DE13: 20 15 DA  JSR sub_DA15
C - - - - - 0x001E26 00:DE16: A9 02     LDA #$02
C - - - - - 0x001E28 00:DE18: 9D 98 03  STA ram_0398,X
C - - - - - 0x001E2B 00:DE1B: 4A        LSR
C - - - - - 0x001E2C 00:DE1C: 95 9C     STA ram_009C,X
C - - - - - 0x001E2E 00:DE1E: D0 0D     BNE bra_DE2D
bra_DE20:
C - - - - - 0x001E30 00:DE20: A9 88     LDA #$88
C - - - - - 0x001E32 00:DE22: 95 90     STA ram_0090,X
bra_DE24:
C - - - - - 0x001E34 00:DE24: B5 AC     LDA ram_00AC,X
C - - - - - 0x001E36 00:DE26: 18        CLC
C - - - - - 0x001E37 00:DE27: 75 98     ADC ram_0098,X
C - - - - - 0x001E39 00:DE29: 29 0F     AND #$0F
C - - - - - 0x001E3B 00:DE2B: 95 AC     STA ram_00AC,X
bra_DE2D:
C - - - - - 0x001E3D 00:DE2D: CA        DEX
C - - - - - 0x001E3E 00:DE2E: 10 A3     BPL bra_DDD3_loop
C - - - - - 0x001E40 00:DE30: 60        RTS



sub_DE31:
C - - - - - 0x001E41 00:DE31: A5 24     LDA ram_0024
C - - - - - 0x001E43 00:DE33: C9 01     CMP #$01
C - - - - - 0x001E45 00:DE35: F0 6F     BEQ bra_DEA6
C - - - - - 0x001E47 00:DE37: A4 4F     LDY ram_004F
C - - - - - 0x001E49 00:DE39: D0 6A     BNE bra_DEA5_RTS
C - - - - - 0x001E4B 00:DE3B: C9 60     CMP #$60
C - - - - - 0x001E4D 00:DE3D: B0 0F     BCS bra_DE4E
C - - - - - 0x001E4F 00:DE3F: AD A9 03  LDA ram_03A9
C - - - - - 0x001E52 00:DE42: F0 0A     BEQ bra_DE4E
C - - - - - 0x001E54 00:DE44: A5 5C     LDA ram_005C
C - - - - - 0x001E56 00:DE46: 29 C0     AND #$C0
C - - - - - 0x001E58 00:DE48: F0 04     BEQ bra_DE4E
C - - - - - 0x001E5A 00:DE4A: A9 01     LDA #$01
C - - - - - 0x001E5C 00:DE4C: 85 FE     STA ram_00FE
bra_DE4E:
C - - - - - 0x001E5E 00:DE4E: A0 F0     LDY #$F0
C - - - - - 0x001E60 00:DE50: A5 24     LDA ram_0024
C - - - - - 0x001E62 00:DE52: C9 10     CMP #$10
C - - - - - 0x001E64 00:DE54: B0 08     BCS bra_DE5E
C - - - - - 0x001E66 00:DE56: A0 F2     LDY #$F2
C - - - - - 0x001E68 00:DE58: C9 08     CMP #$08
C - - - - - 0x001E6A 00:DE5A: B0 02     BCS bra_DE5E
C - - - - - 0x001E6C 00:DE5C: A0 F4     LDY #$F4
bra_DE5E:
C - - - - - 0x001E6E 00:DE5E: C9 72     CMP #$72
C - - - - - 0x001E70 00:DE60: D0 04     BNE bra_DE66
C - - - - - 0x001E72 00:DE62: A9 20     LDA #$20
C - - - - - 0x001E74 00:DE64: 85 FB     STA ram_00FB
bra_DE66:
C - - - - - 0x001E76 00:DE66: 84 00     STY ram_0000
C - - - - - 0x001E78 00:DE68: AD B4 03  LDA ram_03B4
C - - - - - 0x001E7B 00:DE6B: 85 01     STA ram_0001
C - - - - - 0x001E7D 00:DE6D: A0 07     LDY #$07
bra_DE6F_loop:
C - - - - - 0x001E7F 00:DE6F: 98        TYA
C - - - - - 0x001E80 00:DE70: 0A        ASL
C - - - - - 0x001E81 00:DE71: 0A        ASL
C - - - - - 0x001E82 00:DE72: AA        TAX
C - - - - - 0x001E83 00:DE73: B9 E7 D8  LDA tbl_D8E7,Y
C - - - - - 0x001E86 00:DE76: 9D C0 02  STA ram_spr_Y + $C0,X
C - - - - - 0x001E89 00:DE79: A5 00     LDA ram_0000
C - - - - - 0x001E8B 00:DE7B: 9D C1 02  STA ram_spr_T + $C0,X
C - - - - - 0x001E8E 00:DE7E: A9 00     LDA #$00
C - - - - - 0x001E90 00:DE80: 9D C2 02  STA ram_spr_A + $C0,X
C - - - - - 0x001E93 00:DE83: A5 01     LDA ram_0001
C - - - - - 0x001E95 00:DE85: 9D C3 02  STA ram_spr_X + $C0,X
C - - - - - 0x001E98 00:DE88: 98        TYA
C - - - - - 0x001E99 00:DE89: 4A        LSR
C - - - - - 0x001E9A 00:DE8A: 90 05     BCC bra_DE91
C - - - - - 0x001E9C 00:DE8C: FE C1 02  INC ram_spr_T + $C0,X
C - - - - - 0x001E9F 00:DE8F: D0 09     BNE bra_DE9A
bra_DE91:
C - - - - - 0x001EA1 00:DE91: A5 01     LDA ram_0001
C - - - - - 0x001EA3 00:DE93: 38        SEC
C - - - - - 0x001EA4 00:DE94: E9 10     SBC #$10
C - - - - - 0x001EA6 00:DE96: 85 01     STA ram_0001
C - - - - - 0x001EA8 00:DE98: 90 03     BCC bra_DE9D
bra_DE9A:
C - - - - - 0x001EAA 00:DE9A: 88        DEY
C - - - - - 0x001EAB 00:DE9B: 10 D2     BPL bra_DE6F_loop
bra_DE9D:
C - - - - - 0x001EAD 00:DE9D: A5 34     LDA ram_0034
C - - - - - 0x001EAF 00:DE9F: F0 04     BEQ bra_DEA5_RTS
C - - - - - 0x001EB1 00:DEA1: A9 88     LDA #$88
C - - - - - 0x001EB3 00:DEA3: 85 24     STA ram_0024
bra_DEA5_RTS:
C - - - - - 0x001EB5 00:DEA5: 60        RTS
bra_DEA6:
C - - - - - 0x001EB6 00:DEA6: A9 01     LDA #$01
C - - - - - 0x001EB8 00:DEA8: 85 4F     STA ram_004F
C - - - - - 0x001EBA 00:DEAA: AD B4 03  LDA ram_03B4
C - - - - - 0x001EBD 00:DEAD: 38        SEC
C - - - - - 0x001EBE 00:DEAE: E5 60     SBC ram_0060
C - - - - - 0x001EC0 00:DEB0: 8D B4 03  STA ram_03B4
C - - - - - 0x001EC3 00:DEB3: 90 F0     BCC bra_DEA5_RTS
C - - - - - 0x001EC5 00:DEB5: A9 02     LDA #$02
C - - - - - 0x001EC7 00:DEB7: 85 24     STA ram_0024
C - - - - - 0x001EC9 00:DEB9: D0 93     BNE bra_DE4E    ; jmp



sub_DEBB:
C - - - - - 0x001ECB 00:DEBB: A2 03     LDX #$03
bra_DEBD_loop:
C - - - - - 0x001ECD 00:DEBD: B5 84     LDA ram_0084,X
C - - - - - 0x001ECF 00:DEBF: 4A        LSR
C - - - - - 0x001ED0 00:DEC0: 90 1C     BCC bra_DEDE
C - - - - - 0x001ED2 00:DEC2: B5 80     LDA ram_0080,X
C - - - - - 0x001ED4 00:DEC4: C9 30     CMP #$30
C - - - - - 0x001ED6 00:DEC6: 90 04     BCC bra_DECC
C - - - - - 0x001ED8 00:DEC8: C9 40     CMP #$40
C - - - - - 0x001EDA 00:DECA: 90 0D     BCC bra_DED9
bra_DECC:
C - - - - - 0x001EDC 00:DECC: BD A9 03  LDA ram_03A9,X
C - - - - - 0x001EDF 00:DECF: F0 0D     BEQ bra_DEDE
C - - - - - 0x001EE1 00:DED1: A9 40     LDA #$40
C - - - - - 0x001EE3 00:DED3: 85 FF     STA ram_00FF
C - - - - - 0x001EE5 00:DED5: A9 00     LDA #$00
C - - - - - 0x001EE7 00:DED7: F0 02     BEQ bra_DEDB    ; jmp
bra_DED9:
C - - - - - 0x001EE9 00:DED9: A9 01     LDA #$01
bra_DEDB:
C - - - - - 0x001EEB 00:DEDB: 9D A9 03  STA ram_03A9,X
bra_DEDE:
C - - - - - 0x001EEE 00:DEDE: CA        DEX
C - - - - - 0x001EEF 00:DEDF: D0 DC     BNE bra_DEBD_loop
C - - - - - 0x001EF1 00:DEE1: 60        RTS



sub_DEE2:
C - - - - - 0x001EF2 00:DEE2: A2 00     LDX #$00
C - - - - - 0x001EF4 00:DEE4: AD A9 03  LDA ram_03A9
C - - - - - 0x001EF7 00:DEE7: F0 44     BEQ bra_DF2D
C - - - - - 0x001EF9 00:DEE9: A5 4C     LDA ram_004C
C - - - - - 0x001EFB 00:DEEB: 4A        LSR
C - - - - - 0x001EFC 00:DEEC: B0 B7     BCS bra_DEA5_RTS
C - - - - - 0x001EFE 00:DEEE: A2 02     LDX #$02
C - - - - - 0x001F00 00:DEF0: A5 94     LDA ram_0094
C - - - - - 0x001F02 00:DEF2: 85 00     STA ram_0000
C - - - - - 0x001F04 00:DEF4: A5 90     LDA ram_0090
C - - - - - 0x001F06 00:DEF6: 85 01     STA ram_0001
bra_DEF8_loop:
C - - - - - 0x001F08 00:DEF8: 46 00     LSR ram_0000
C - - - - - 0x001F0A 00:DEFA: 66 01     ROR ram_0001
C - - - - - 0x001F0C 00:DEFC: CA        DEX
C - - - - - 0x001F0D 00:DEFD: 10 F9     BPL bra_DEF8_loop
C - - - - - 0x001F0F 00:DEFF: A9 02     LDA #$02
C - - - - - 0x001F11 00:DF01: A4 B0     LDY ram_00B0
C - - - - - 0x001F13 00:DF03: F0 02     BEQ bra_DF07
C - - - - - 0x001F15 00:DF05: A9 04     LDA #$04
bra_DF07:
C - - - - - 0x001F17 00:DF07: AA        TAX
C - - - - - 0x001F18 00:DF08: A5 01     LDA ram_0001
C - - - - - 0x001F1A 00:DF0A: 38        SEC
C - - - - - 0x001F1B 00:DF0B: E9 02     SBC #$02
C - - - - - 0x001F1D 00:DF0D: 30 06     BMI bra_DF15
C - - - - - 0x001F1F 00:DF0F: 20 A4 DF  JSR sub_DFA4
C - - - - - 0x001F22 00:DF12: 8A        TXA
C - - - - - 0x001F23 00:DF13: D0 02     BNE bra_DF17
bra_DF15:
C - - - - - 0x001F25 00:DF15: A2 01     LDX #$01
bra_DF17:
C - - - - - 0x001F27 00:DF17: E0 2F     CPX #$2F
C - - - - - 0x001F29 00:DF19: 90 09     BCC bra_DF24
C - - - - - 0x001F2B 00:DF1B: A2 2F     LDX #$2F
C - - - - - 0x001F2D 00:DF1D: A5 3F     LDA ram_003F
C - - - - - 0x001F2F 00:DF1F: 29 08     AND #$08
C - - - - - 0x001F31 00:DF21: D0 01     BNE bra_DF24
C - - - - - 0x001F33 00:DF23: CA        DEX
bra_DF24:
C - - - - - 0x001F34 00:DF24: A5 5C     LDA ram_005C
C - - - - - 0x001F36 00:DF26: 0A        ASL
C - - - - - 0x001F37 00:DF27: B0 04     BCS bra_DF2D
C - - - - - 0x001F39 00:DF29: 8A        TXA
C - - - - - 0x001F3A 00:DF2A: 09 80     ORA #$80
C - - - - - 0x001F3C 00:DF2C: AA        TAX
bra_DF2D:
C - - - - - 0x001F3D 00:DF2D: 86 FC     STX ram_00FC
C - - - - - 0x001F3F 00:DF2F: 60        RTS



sub_DF30:
C - - - - - 0x001F40 00:DF30: A5 4F     LDA ram_004F
C - - - - - 0x001F42 00:DF32: F0 1D     BEQ bra_DF51_RTS
C - - - - - 0x001F44 00:DF34: A5 6B     LDA ram_006B
C - - - - - 0x001F46 00:DF36: 18        CLC
C - - - - - 0x001F47 00:DF37: 69 10     ADC #$10
C - - - - - 0x001F49 00:DF39: 85 6B     STA ram_006B
bra_DF3B_loop:
C - - - - - 0x001F4B 00:DF3B: A5 6B     LDA ram_006B
C - - - - - 0x001F4D 00:DF3D: C9 0A     CMP #$0A
C - - - - - 0x001F4F 00:DF3F: B0 11     BCS bra_DF52
bra_DF41:
C - - - - - 0x001F51 00:DF41: A2 68     LDX #$68
C - - - - - 0x001F53 00:DF43: 20 7F DF  JSR sub_DF7F
C - - - - - 0x001F56 00:DF46: A2 06     LDX #$06
bra_DF48_loop:
C - - - - - 0x001F58 00:DF48: BD D1 03  LDA ram_03D1,X
C - - - - - 0x001F5B 00:DF4B: 9D D9 03  STA ram_03D9,X
C - - - - - 0x001F5E 00:DF4E: CA        DEX
C - - - - - 0x001F5F 00:DF4F: 10 F7     BPL bra_DF48_loop
bra_DF51_RTS:
C - - - - - 0x001F61 00:DF51: 60        RTS
bra_DF52:
C - - - - - 0x001F62 00:DF52: A5 6B     LDA ram_006B
C - - - - - 0x001F64 00:DF54: 38        SEC
C - - - - - 0x001F65 00:DF55: E9 0A     SBC #$0A
C - - - - - 0x001F67 00:DF57: 85 6B     STA ram_006B
C - - - - - 0x001F69 00:DF59: E6 6A     INC ram_006A
C - - - - - 0x001F6B 00:DF5B: A5 6A     LDA ram_006A
C - - - - - 0x001F6D 00:DF5D: C9 64     CMP #$64
C - - - - - 0x001F6F 00:DF5F: 90 DA     BCC bra_DF3B_loop
C - - - - - 0x001F71 00:DF61: A9 00     LDA #$00
C - - - - - 0x001F73 00:DF63: 85 6A     STA ram_006A
C - - - - - 0x001F75 00:DF65: E6 69     INC ram_0069
C - - - - - 0x001F77 00:DF67: A5 69     LDA ram_0069
C - - - - - 0x001F79 00:DF69: C9 3C     CMP #$3C
C - - - - - 0x001F7B 00:DF6B: 90 CE     BCC bra_DF3B_loop
C - - - - - 0x001F7D 00:DF6D: A9 00     LDA #$00
C - - - - - 0x001F7F 00:DF6F: 85 69     STA ram_0069
C - - - - - 0x001F81 00:DF71: E6 68     INC ram_0068
C - - - - - 0x001F83 00:DF73: A5 68     LDA ram_0068
C - - - - - 0x001F85 00:DF75: C9 09     CMP #$09
C - - - - - 0x001F87 00:DF77: 90 C2     BCC bra_DF3B_loop
- - - - - - 0x001F89 00:DF79: A9 02     LDA #$02
- - - - - - 0x001F8B 00:DF7B: 85 52     STA ram_0052
- - - - - - 0x001F8D 00:DF7D: D0 C2     BNE bra_DF41    ; jmp



sub_DF7F:
C - - - - - 0x001F8F 00:DF7F: B5 00     LDA ram_0000,X
C - - - - - 0x001F91 00:DF81: 48        PHA
C - - - - - 0x001F92 00:DF82: B5 01     LDA ram_0001,X
C - - - - - 0x001F94 00:DF84: 48        PHA
C - - - - - 0x001F95 00:DF85: B5 02     LDA ram_0002,X
C - - - - - 0x001F97 00:DF87: 20 A2 DF  JSR sub_DFA2
C - - - - - 0x001F9A 00:DF8A: 8E D6 03  STX ram_03D6
C - - - - - 0x001F9D 00:DF8D: 8D D7 03  STA ram_03D7
C - - - - - 0x001FA0 00:DF90: 68        PLA
C - - - - - 0x001FA1 00:DF91: 20 A2 DF  JSR sub_DFA2
C - - - - - 0x001FA4 00:DF94: 8E D3 03  STX ram_03D3
C - - - - - 0x001FA7 00:DF97: 8D D4 03  STA ram_03D4
C - - - - - 0x001FAA 00:DF9A: 68        PLA
C - - - - - 0x001FAB 00:DF9B: 20 A2 DF  JSR sub_DFA2
C - - - - - 0x001FAE 00:DF9E: 8D D1 03  STA ram_03D1
C - - - - - 0x001FB1 00:DFA1: 60        RTS



sub_DFA2:
C - - - - - 0x001FB2 00:DFA2: A2 0A     LDX #$0A
sub_DFA4:
C - - - - - 0x001FB4 00:DFA4: 86 0F     STX ram_000F
C - - - - - 0x001FB6 00:DFA6: A2 00     LDX #$00
bra_DFA8_loop:
C - - - - - 0x001FB8 00:DFA8: E8        INX
C - - - - - 0x001FB9 00:DFA9: 38        SEC
C - - - - - 0x001FBA 00:DFAA: E5 0F     SBC ram_000F
C - - - - - 0x001FBC 00:DFAC: 10 FA     BPL bra_DFA8_loop
C - - - - - 0x001FBE 00:DFAE: CA        DEX
C - - - - - 0x001FBF 00:DFAF: 65 0F     ADC ram_000F
C - - - - - 0x001FC1 00:DFB1: 60        RTS



sub_DFB2:
C - - - - - 0x001FC2 00:DFB2: A0 00     LDY #$00
C - - - - - 0x001FC4 00:DFB4: B5 9C     LDA ram_009C,X
C - - - - - 0x001FC6 00:DFB6: D0 19     BNE bra_DFD1
C - - - - - 0x001FC8 00:DFB8: B5 B8     LDA ram_00B8,X
bra_DFBA_loop:
C - - - - - 0x001FCA 00:DFBA: D9 13 D9  CMP tbl_D913,Y
C - - - - - 0x001FCD 00:DFBD: 30 07     BMI bra_DFC6
C - - - - - 0x001FCF 00:DFBF: C8        INY
C - - - - - 0x001FD0 00:DFC0: C0 05     CPY #$05
C - - - - - 0x001FD2 00:DFC2: 30 F6     BMI bra_DFBA_loop
C - - - - - 0x001FD4 00:DFC4: A0 00     LDY #$00
bra_DFC6:
C - - - - - 0x001FD6 00:DFC6: 98        TYA
C - - - - - 0x001FD7 00:DFC7: F0 08     BEQ bra_DFD1
C - - - - - 0x001FD9 00:DFC9: A9 01     LDA #$01
C - - - - - 0x001FDB 00:DFCB: D5 A4     CMP ram_00A4,X
C - - - - - 0x001FDD 00:DFCD: D0 02     BNE bra_DFD1
C - - - - - 0x001FDF 00:DFCF: C8        INY
C - - - - - 0x001FE0 00:DFD0: C8        INY
bra_DFD1:
C - - - - - 0x001FE1 00:DFD1: 98        TYA
C - - - - - 0x001FE2 00:DFD2: 95 70     STA ram_0070,X
C - - - - - 0x001FE4 00:DFD4: 60        RTS



sub_DFD5:
C - - - - - 0x001FE5 00:DFD5: A2 00     LDX #$00
C - - - - - 0x001FE7 00:DFD7: A0 01     LDY #$01
loc_DFD9:
C D 2 - - - 0x001FE9 00:DFD9: B5 A8     LDA ram_00A8,X
C - - - - - 0x001FEB 00:DFDB: D0 03     BNE bra_DFE0
bra_DFDD:
C - - - - - 0x001FED 00:DFDD: 4C 86 E0  JMP loc_E086
bra_DFE0:
loc_DFE0:
C D 2 - - - 0x001FF0 00:DFE0: B9 A8 00  LDA ram_00A8,Y
C - - - - - 0x001FF3 00:DFE3: F0 38     BEQ bra_E01D
C - - - - - 0x001FF5 00:DFE5: B5 84     LDA ram_0084,X
C - - - - - 0x001FF7 00:DFE7: 4A        LSR
C - - - - - 0x001FF8 00:DFE8: 90 F3     BCC bra_DFDD
C - - - - - 0x001FFA 00:DFEA: B9 84 00  LDA ram_0084,Y
C - - - - - 0x001FFD 00:DFED: 4A        LSR
C - - - - - 0x001FFE 00:DFEE: 90 2D     BCC bra_E01D
C - - - - - 0x002000 00:DFF0: B5 70     LDA ram_0070,X
C - - - - - 0x002002 00:DFF2: F0 E9     BEQ bra_DFDD
C - - - - - 0x002004 00:DFF4: D9 70 00  CMP ram_0070,Y
C - - - - - 0x002007 00:DFF7: D0 24     BNE bra_E01D
C - - - - - 0x002009 00:DFF9: B5 98     LDA ram_0098,X
C - - - - - 0x00200B 00:DFFB: 1D E0 03  ORA ram_03E0,X
C - - - - - 0x00200E 00:DFFE: D0 DD     BNE bra_DFDD
C - - - - - 0x002010 00:E000: B9 98 00  LDA ram_0098,Y
C - - - - - 0x002013 00:E003: D0 79     BNE bra_E07E
C - - - - - 0x002015 00:E005: B5 B0     LDA ram_00B0,X
C - - - - - 0x002017 00:E007: D0 05     BNE bra_E00E
C - - - - - 0x002019 00:E009: B9 B0 00  LDA ram_00B0,Y
C - - - - - 0x00201C 00:E00C: F0 1C     BEQ bra_E02A
bra_E00E:
C - - - - - 0x00201E 00:E00E: B5 8C     LDA ram_008C,X
C - - - - - 0x002020 00:E010: D9 8C 00  CMP ram_008C,Y
C - - - - - 0x002023 00:E013: B0 0B     BCS bra_E020
C - - - - - 0x002025 00:E015: 20 91 E0  JSR sub_E091
C - - - - - 0x002028 00:E018: D9 8C 00  CMP ram_008C,Y
C - - - - - 0x00202B 00:E01B: B0 0D     BCS bra_E02A
bra_E01D:
C - - - - - 0x00202D 00:E01D: 4C 7E E0  JMP loc_E07E
bra_E020:
C - - - - - 0x002030 00:E020: B9 8C 00  LDA ram_008C,Y
C - - - - - 0x002033 00:E023: 20 91 E0  JSR sub_E091
C - - - - - 0x002036 00:E026: D5 8C     CMP ram_008C,X
C - - - - - 0x002038 00:E028: 90 54     BCC bra_E07E
bra_E02A:
C - - - - - 0x00203A 00:E02A: B5 80     LDA ram_0080,X
C - - - - - 0x00203C 00:E02C: D9 80 00  CMP ram_0080,Y
C - - - - - 0x00203F 00:E02F: B0 14     BCS bra_E045
C - - - - - 0x002041 00:E031: 20 98 E0  JSR sub_E098
C - - - - - 0x002044 00:E034: D9 80 00  CMP ram_0080,Y
C - - - - - 0x002047 00:E037: B0 28     BCS bra_E061
C - - - - - 0x002049 00:E039: B5 80     LDA ram_0080,X
C - - - - - 0x00204B 00:E03B: 20 91 E0  JSR sub_E091
C - - - - - 0x00204E 00:E03E: D9 80 00  CMP ram_0080,Y
C - - - - - 0x002051 00:E041: B0 18     BCS bra_E05B
C - - - - - 0x002053 00:E043: 90 39     BCC bra_E07E    ; jmp
bra_E045:
C - - - - - 0x002055 00:E045: B9 80 00  LDA ram_0080,Y
C - - - - - 0x002058 00:E048: 20 98 E0  JSR sub_E098
C - - - - - 0x00205B 00:E04B: D5 80     CMP ram_0080,X
C - - - - - 0x00205D 00:E04D: B0 12     BCS bra_E061
C - - - - - 0x00205F 00:E04F: B9 80 00  LDA ram_0080,Y
C - - - - - 0x002062 00:E052: 20 91 E0  JSR sub_E091
C - - - - - 0x002065 00:E055: D5 80     CMP ram_0080,X
C - - - - - 0x002067 00:E057: B0 0C     BCS bra_E065
C - - - - - 0x002069 00:E059: 90 23     BCC bra_E07E    ; jmp
bra_E05B:
C - - - - - 0x00206B 00:E05B: A9 FF     LDA #$FF
C - - - - - 0x00206D 00:E05D: 95 98     STA ram_0098,X
C - - - - - 0x00206F 00:E05F: D0 15     BNE bra_E076    ; jmp
bra_E061:
C - - - - - 0x002071 00:E061: A9 FF     LDA #$FF
C - - - - - 0x002073 00:E063: 95 98     STA ram_0098,X
bra_E065:
C - - - - - 0x002075 00:E065: E0 00     CPX #$00
C - - - - - 0x002077 00:E067: D0 08     BNE bra_E071
C - - - - - 0x002079 00:E069: C0 03     CPY #$03
C - - - - - 0x00207B 00:E06B: D0 04     BNE bra_E071
C - - - - - 0x00207D 00:E06D: A9 10     LDA #$10
C - - - - - 0x00207F 00:E06F: 85 3B     STA ram_003B
bra_E071:
C - - - - - 0x002081 00:E071: A9 FF     LDA #$FF
C - - - - - 0x002083 00:E073: 99 98 00  STA ram_0098,Y
bra_E076:
C - - - - - 0x002086 00:E076: E0 00     CPX #$00
C - - - - - 0x002088 00:E078: D0 04     BNE bra_E07E
C - - - - - 0x00208A 00:E07A: A9 01     LDA #$01
C - - - - - 0x00208C 00:E07C: 85 FD     STA ram_00FD
bra_E07E:
loc_E07E:
C D 3 - - - 0x00208E 00:E07E: C8        INY
C - - - - - 0x00208F 00:E07F: C0 04     CPY #$04
C - - - - - 0x002091 00:E081: F0 03     BEQ bra_E086
C - - - - - 0x002093 00:E083: 4C E0 DF  JMP loc_DFE0
bra_E086:
loc_E086:
C D 3 - - - 0x002096 00:E086: E8        INX
C - - - - - 0x002097 00:E087: 8A        TXA
C - - - - - 0x002098 00:E088: A8        TAY
C - - - - - 0x002099 00:E089: C8        INY
C - - - - - 0x00209A 00:E08A: E0 03     CPX #$03
C - - - - - 0x00209C 00:E08C: F0 09     BEQ bra_E097_RTS
C - - - - - 0x00209E 00:E08E: 4C D9 DF  JMP loc_DFD9



sub_E091:
C - - - - - 0x0020A1 00:E091: C9 E7     CMP #$E7
C - - - - - 0x0020A3 00:E093: B0 02     BCS bra_E097_RTS
C - - - - - 0x0020A5 00:E095: 69 0C     ADC #$0C
bra_E097_RTS:
C - - - - - 0x0020A7 00:E097: 60        RTS



sub_E098:
C - - - - - 0x0020A8 00:E098: C9 E7     CMP #$E7
C - - - - - 0x0020AA 00:E09A: B0 02     BCS bra_E09E_RTS
C - - - - - 0x0020AC 00:E09C: 69 02     ADC #$02
bra_E09E_RTS:
C - - - - - 0x0020AE 00:E09E: 60        RTS



sub_E09F:
C - - - - - 0x0020AF 00:E09F: A5 9C     LDA ram_009C
C - - - - - 0x0020B1 00:E0A1: D0 42     BNE bra_E0E5_RTS
C - - - - - 0x0020B3 00:E0A3: AA        TAX
C - - - - - 0x0020B4 00:E0A4: A5 87     LDA ram_0087
C - - - - - 0x0020B6 00:E0A6: 4A        LSR
C - - - - - 0x0020B7 00:E0A7: 90 3C     BCC bra_E0E5_RTS
C - - - - - 0x0020B9 00:E0A9: AD 73 03  LDA ram_0373
C - - - - - 0x0020BC 00:E0AC: F0 37     BEQ bra_E0E5_RTS
C - - - - - 0x0020BE 00:E0AE: A5 B8     LDA ram_00B8
C - - - - - 0x0020C0 00:E0B0: 38        SEC
C - - - - - 0x0020C1 00:E0B1: E9 03     SBC #$03
C - - - - - 0x0020C3 00:E0B3: C5 6F     CMP ram_006F
C - - - - - 0x0020C5 00:E0B5: B0 2E     BCS bra_E0E5_RTS
C - - - - - 0x0020C7 00:E0B7: 69 07     ADC #$07
C - - - - - 0x0020C9 00:E0B9: C5 6F     CMP ram_006F
C - - - - - 0x0020CB 00:E0BB: 90 28     BCC bra_E0E5_RTS
C - - - - - 0x0020CD 00:E0BD: A5 80     LDA ram_0080
C - - - - - 0x0020CF 00:E0BF: CD 93 03  CMP ram_0393
C - - - - - 0x0020D2 00:E0C2: B0 21     BCS bra_E0E5_RTS
C - - - - - 0x0020D4 00:E0C4: 69 12     ADC #$12
C - - - - - 0x0020D6 00:E0C6: CD 93 03  CMP ram_0393
C - - - - - 0x0020D9 00:E0C9: 90 1A     BCC bra_E0E5_RTS
C - - - - - 0x0020DB 00:E0CB: 20 97 DC  JSR sub_DC97
C - - - - - 0x0020DE 00:E0CE: 38        SEC
C - - - - - 0x0020DF 00:E0CF: E9 08     SBC #$08
C - - - - - 0x0020E1 00:E0D1: C5 8C     CMP ram_008C
C - - - - - 0x0020E3 00:E0D3: B0 10     BCS bra_E0E5_RTS
C - - - - - 0x0020E5 00:E0D5: A0 FF     LDY #$FF
C - - - - - 0x0020E7 00:E0D7: 84 98     STY ram_0098
C - - - - - 0x0020E9 00:E0D9: C8        INY
C - - - - - 0x0020EA 00:E0DA: 84 DF     STY ram_00DF
C - - - - - 0x0020EC 00:E0DC: C8        INY
C - - - - - 0x0020ED 00:E0DD: 84 9F     STY ram_009F
C - - - - - 0x0020EF 00:E0DF: 84 FD     STY ram_00FD
C - - - - - 0x0020F1 00:E0E1: C8        INY
C - - - - - 0x0020F2 00:E0E2: 8C 9B 03  STY ram_039B
bra_E0E5_RTS:
C - - - - - 0x0020F5 00:E0E5: 60        RTS
ofs_004_E0E6_00:
C - - J - - 0x0020F6 00:E0E6: A5 3A     LDA ram_003A
C - - - - - 0x0020F8 00:E0E8: 05 52     ORA ram_0052
C - - - - - 0x0020FA 00:E0EA: 05 24     ORA ram_0024
C - - - - - 0x0020FC 00:E0EC: D0 B0     BNE bra_E09E_RTS
C - - - - - 0x0020FE 00:E0EE: AD A0 03  LDA ram_03A0
C - - - - - 0x002101 00:E0F1: D0 17     BNE bra_E10A
C - - - - - 0x002103 00:E0F3: A5 2E     LDA ram_002E
C - - - - - 0x002105 00:E0F5: D0 A7     BNE bra_E09E_RTS
C - - - - - 0x002107 00:E0F7: A5 18     LDA ram_0018
C - - - - - 0x002109 00:E0F9: 29 03     AND #$03
C - - - - - 0x00210B 00:E0FB: AA        TAX
C - - - - - 0x00210C 00:E0FC: BD F3 D8  LDA tbl_D8F3,X
C - - - - - 0x00210F 00:E0FF: 8D A1 03  STA ram_03A1
C - - - - - 0x002112 00:E102: A9 F8     LDA #$F8
C - - - - - 0x002114 00:E104: 8D B9 03  STA ram_03B9
C - - - - - 0x002117 00:E107: 8D A0 03  STA ram_03A0
bra_E10A:
C - - - - - 0x00211A 00:E10A: A9 50     LDA #$50
C - - - - - 0x00211C 00:E10C: 85 01     STA ram_0001
C - - - - - 0x00211E 00:E10E: AD B9 03  LDA ram_03B9
C - - - - - 0x002121 00:E111: 38        SEC
C - - - - - 0x002122 00:E112: E5 60     SBC ram_0060
C - - - - - 0x002124 00:E114: 8D B9 03  STA ram_03B9
C - - - - - 0x002127 00:E117: A5 60     LDA ram_0060
C - - - - - 0x002129 00:E119: F0 09     BEQ bra_E124
C - - - - - 0x00212B 00:E11B: A5 3F     LDA ram_003F
C - - - - - 0x00212D 00:E11D: 29 0F     AND #$0F
C - - - - - 0x00212F 00:E11F: D0 03     BNE bra_E124
C - - - - - 0x002131 00:E121: CE B9 03  DEC ram_03B9
bra_E124:
C - - - - - 0x002134 00:E124: AD B9 03  LDA ram_03B9
C - - - - - 0x002137 00:E127: 85 00     STA ram_0000
C - - - - - 0x002139 00:E129: C9 FC     CMP #$FC
C - - - - - 0x00213B 00:E12B: 90 0C     BCC bra_E139
C - - - - - 0x00213D 00:E12D: A5 18     LDA ram_0018
C - - - - - 0x00213F 00:E12F: 29 A0     AND #$A0
C - - - - - 0x002141 00:E131: 85 2E     STA ram_002E
C - - - - - 0x002143 00:E133: A9 00     LDA #$00
C - - - - - 0x002145 00:E135: 8D A0 03  STA ram_03A0
C - - - - - 0x002148 00:E138: 60        RTS
bra_E139:
C - - - - - 0x002149 00:E139: AD A1 03  LDA ram_03A1
C - - - - - 0x00214C 00:E13C: 85 02     STA ram_0002
C - - - - - 0x00214E 00:E13E: A9 22     LDA #$22
C - - - - - 0x002150 00:E140: 85 03     STA ram_0003
C - - - - - 0x002152 00:E142: A9 C0     LDA #$C0
C - - - - - 0x002154 00:E144: 85 04     STA ram_0004
C - - - - - 0x002156 00:E146: A9 20     LDA #$20
C - - - - - 0x002158 00:E148: 85 0B     STA ram_000B
C - - - - - 0x00215A 00:E14A: 20 C7 D1  JSR sub_D1C7
C - - - - - 0x00215D 00:E14D: AD B9 03  LDA ram_03B9
C - - - - - 0x002160 00:E150: C9 60     CMP #$60
C - - - - - 0x002162 00:E152: B0 2A     BCS bra_E17E_RTS
C - - - - - 0x002164 00:E154: AE A1 03  LDX ram_03A1
C - - - - - 0x002167 00:E157: E8        INX
C - - - - - 0x002168 00:E158: E8        INX
C - - - - - 0x002169 00:E159: E8        INX
C - - - - - 0x00216A 00:E15A: 86 00     STX ram_0000
C - - - - - 0x00216C 00:E15C: 20 6C E1  JSR sub_E16C
C - - - - - 0x00216F 00:E15F: AE A1 03  LDX ram_03A1
C - - - - - 0x002172 00:E162: E8        INX
C - - - - - 0x002173 00:E163: 86 00     STX ram_0000
C - - - - - 0x002175 00:E165: A5 04     LDA ram_0004
C - - - - - 0x002177 00:E167: 18        CLC
C - - - - - 0x002178 00:E168: 69 08     ADC #$08
C - - - - - 0x00217A 00:E16A: 85 04     STA ram_0004
sub_E16C:
C - - - - - 0x00217C 00:E16C: A0 06     LDY #$06
bra_E16E_loop:
C - - - - - 0x00217E 00:E16E: A9 60     LDA #$60
C - - - - - 0x002180 00:E170: 91 04     STA (ram_0004),Y
C - - - - - 0x002182 00:E172: 88        DEY
C - - - - - 0x002183 00:E173: A5 00     LDA ram_0000
C - - - - - 0x002185 00:E175: 91 04     STA (ram_0004),Y
C - - - - - 0x002187 00:E177: C6 00     DEC ram_0000
C - - - - - 0x002189 00:E179: 88        DEY
C - - - - - 0x00218A 00:E17A: 88        DEY
C - - - - - 0x00218B 00:E17B: 88        DEY
C - - - - - 0x00218C 00:E17C: 10 F0     BPL bra_E16E_loop
bra_E17E_RTS:
C - - - - - 0x00218E 00:E17E: 60        RTS



sub_E17F:
C - - - - - 0x00218F 00:E17F: 20 F4 E3  JSR sub_E3F4
C - - - - - 0x002192 00:E182: A2 03     LDX #$03
bra_E184_loop:
C - - - - - 0x002194 00:E184: 86 0D     STX ram_000D
C - - - - - 0x002196 00:E186: BD C0 D8  LDA tbl_D8C0,X
C - - - - - 0x002199 00:E189: 85 04     STA ram_0004
C - - - - - 0x00219B 00:E18B: B5 88     LDA ram_0088,X
C - - - - - 0x00219D 00:E18D: AA        TAX
C - - - - - 0x00219E 00:E18E: B5 A8     LDA ram_00A8,X
C - - - - - 0x0021A0 00:E190: F0 0B     BEQ bra_E19D
C - - - - - 0x0021A2 00:E192: BD C9 D8  LDA tbl_D8C9,X
C - - - - - 0x0021A5 00:E195: 85 0B     STA ram_000B
C - - - - - 0x0021A7 00:E197: 20 A3 E1  JSR sub_E1A3
C - - - - - 0x0021AA 00:E19A: 20 6A E2  JSR sub_E26A
bra_E19D:
C - - - - - 0x0021AD 00:E19D: A6 0D     LDX ram_000D
C - - - - - 0x0021AF 00:E19F: CA        DEX
C - - - - - 0x0021B0 00:E1A0: 10 E2     BPL bra_E184_loop
C - - - - - 0x0021B2 00:E1A2: 60        RTS



sub_E1A3:
C - - - - - 0x0021B3 00:E1A3: B5 80     LDA ram_0080,X
C - - - - - 0x0021B5 00:E1A5: 85 00     STA ram_0000
C - - - - - 0x0021B7 00:E1A7: B5 8C     LDA ram_008C,X
C - - - - - 0x0021B9 00:E1A9: 85 01     STA ram_0001
C - - - - - 0x0021BB 00:E1AB: 20 F9 E1  JSR sub_E1F9
C - - - - - 0x0021BE 00:E1AE: A8        TAY
C - - - - - 0x0021BF 00:E1AF: B9 92 D8  LDA tbl_D892,Y
C - - - - - 0x0021C2 00:E1B2: 85 02     STA ram_0002
C - - - - - 0x0021C4 00:E1B4: A9 33     LDA #$33
C - - - - - 0x0021C6 00:E1B6: 85 03     STA ram_0003
C - - - - - 0x0021C8 00:E1B8: C0 16     CPY #$16
C - - - - - 0x0021CA 00:E1BA: D0 15     BNE bra_E1D1
C - - - - - 0x0021CC 00:E1BC: A5 04     LDA ram_0004
C - - - - - 0x0021CE 00:E1BE: 8D 9F 03  STA ram_039F
C - - - - - 0x0021D1 00:E1C1: 18        CLC
C - - - - - 0x0021D2 00:E1C2: 69 0C     ADC #$0C
C - - - - - 0x0021D4 00:E1C4: 85 04     STA ram_0004
C - - - - - 0x0021D6 00:E1C6: A5 01     LDA ram_0001
C - - - - - 0x0021D8 00:E1C8: 18        CLC
C - - - - - 0x0021D9 00:E1C9: 69 08     ADC #$08
C - - - - - 0x0021DB 00:E1CB: 85 01     STA ram_0001
C - - - - - 0x0021DD 00:E1CD: A9 23     LDA #$23
C - - - - - 0x0021DF 00:E1CF: 85 03     STA ram_0003
bra_E1D1:
C - - - - - 0x0021E1 00:E1D1: B9 A9 D8  LDA tbl_D8A9,Y
C - - - - - 0x0021E4 00:E1D4: 20 C7 D1  JSR sub_D1C7
C - - - - - 0x0021E7 00:E1D7: A5 0E     LDA ram_000E
C - - - - - 0x0021E9 00:E1D9: F0 1D     BEQ bra_E1F8_RTS
C - - - - - 0x0021EB 00:E1DB: 4A        LSR
C - - - - - 0x0021EC 00:E1DC: B0 14     BCS bra_E1F2
C - - - - - 0x0021EE 00:E1DE: A0 11     LDY #$11
C - - - - - 0x0021F0 00:E1E0: A9 B2     LDA #$B2
bra_E1E2_loop:
C - - - - - 0x0021F2 00:E1E2: C0 09     CPY #$09
C - - - - - 0x0021F4 00:E1E4: F0 05     BEQ bra_E1EB
C - - - - - 0x0021F6 00:E1E6: 91 04     STA (ram_0004),Y
C - - - - - 0x0021F8 00:E1E8: 38        SEC
C - - - - - 0x0021F9 00:E1E9: E9 01     SBC #$01
bra_E1EB:
C - - - - - 0x0021FB 00:E1EB: 88        DEY
C - - - - - 0x0021FC 00:E1EC: 88        DEY
C - - - - - 0x0021FD 00:E1ED: 88        DEY
C - - - - - 0x0021FE 00:E1EE: 88        DEY
C - - - - - 0x0021FF 00:E1EF: 10 F1     BPL bra_E1E2_loop
C - - - - - 0x002201 00:E1F1: 60        RTS
bra_E1F2:
C - - - - - 0x002202 00:E1F2: A0 15     LDY #$15
C - - - - - 0x002204 00:E1F4: A9 AE     LDA #$AE
C - - - - - 0x002206 00:E1F6: 91 04     STA (ram_0004),Y
bra_E1F8_RTS:
C - - - - - 0x002208 00:E1F8: 60        RTS



sub_E1F9:
C - - - - - 0x002209 00:E1F9: A9 00     LDA #$00
C - - - - - 0x00220B 00:E1FB: 85 0E     STA ram_000E
C - - - - - 0x00220D 00:E1FD: 8D 9F 03  STA ram_039F
C - - - - - 0x002210 00:E200: B5 9C     LDA ram_009C,X
C - - - - - 0x002212 00:E202: F0 1B     BEQ bra_E21F
C - - - - - 0x002214 00:E204: C9 05     CMP #$05
C - - - - - 0x002216 00:E206: F0 17     BEQ bra_E21F
C - - - - - 0x002218 00:E208: A0 06     LDY #$06
C - - - - - 0x00221A 00:E20A: B5 BC     LDA ram_00BC,X
C - - - - - 0x00221C 00:E20C: D0 05     BNE bra_E213
C - - - - - 0x00221E 00:E20E: BD 70 03  LDA ram_0370,X
C - - - - - 0x002221 00:E211: D0 02     BNE bra_E215
bra_E213:
C - - - - - 0x002223 00:E213: A0 02     LDY #$02
bra_E215:
C - - - - - 0x002225 00:E215: 98        TYA
C - - - - - 0x002226 00:E216: B4 36     LDY ram_0036,X
C - - - - - 0x002228 00:E218: F0 02     BEQ bra_E21C
C - - - - - 0x00222A 00:E21A: 88        DEY
C - - - - - 0x00222B 00:E21B: 98        TYA
bra_E21C:
C - - - - - 0x00222C 00:E21C: 09 10     ORA #$10
C - - - - - 0x00222E 00:E21E: 60        RTS
bra_E21F:
C - - - - - 0x00222F 00:E21F: A4 52     LDY ram_0052
C - - - - - 0x002231 00:E221: 88        DEY
C - - - - - 0x002232 00:E222: D0 0B     BNE bra_E22F
C - - - - - 0x002234 00:E224: B5 AC     LDA ram_00AC,X
C - - - - - 0x002236 00:E226: C9 0A     CMP #$0A
C - - - - - 0x002238 00:E228: D0 05     BNE bra_E22F
C - - - - - 0x00223A 00:E22A: A0 02     LDY #$02
C - - - - - 0x00223C 00:E22C: 84 0E     STY ram_000E
C - - - - - 0x00223E 00:E22E: 60        RTS
bra_E22F:
C - - - - - 0x00223F 00:E22F: B5 98     LDA ram_0098,X
C - - - - - 0x002241 00:E231: 15 B0     ORA ram_00B0,X
C - - - - - 0x002243 00:E233: D0 32     BNE bra_E267
C - - - - - 0x002245 00:E235: B5 58     LDA ram_0058,X
C - - - - - 0x002247 00:E237: F0 0A     BEQ bra_E243
C - - - - - 0x002249 00:E239: C9 0D     CMP #$0D
C - - - - - 0x00224B 00:E23B: D0 2A     BNE bra_E267
C - - - - - 0x00224D 00:E23D: B5 B8     LDA ram_00B8,X
C - - - - - 0x00224F 00:E23F: C9 20     CMP #$20
C - - - - - 0x002251 00:E241: 90 24     BCC bra_E267
bra_E243:
C - - - - - 0x002253 00:E243: B5 90     LDA ram_0090,X
C - - - - - 0x002255 00:E245: 15 94     ORA ram_0094,X
C - - - - - 0x002257 00:E247: D0 04     BNE bra_E24D
C - - - - - 0x002259 00:E249: E6 0E     INC ram_000E
C - - - - - 0x00225B 00:E24B: D0 1A     BNE bra_E267
bra_E24D:
C - - - - - 0x00225D 00:E24D: B5 AC     LDA ram_00AC,X
C - - - - - 0x00225F 00:E24F: C9 06     CMP #$06
C - - - - - 0x002261 00:E251: D0 14     BNE bra_E267
C - - - - - 0x002263 00:E253: A0 14     LDY #$14
C - - - - - 0x002265 00:E255: B5 DC     LDA ram_00DC,X
C - - - - - 0x002267 00:E257: F0 05     BEQ bra_E25E
C - - - - - 0x002269 00:E259: 10 01     BPL bra_E25C
C - - - - - 0x00226B 00:E25B: C8        INY
bra_E25C:
C - - - - - 0x00226C 00:E25C: 98        TYA
C - - - - - 0x00226D 00:E25D: 60        RTS
bra_E25E:
C - - - - - 0x00226E 00:E25E: A5 3F     LDA ram_003F
C - - - - - 0x002270 00:E260: 29 02     AND #$02
C - - - - - 0x002272 00:E262: F0 03     BEQ bra_E267
C - - - - - 0x002274 00:E264: A9 13     LDA #$13
C - - - - - 0x002276 00:E266: 60        RTS
bra_E267:
C - - - - - 0x002277 00:E267: B5 AC     LDA ram_00AC,X
bra_E269_RTS:
C - - - - - 0x002279 00:E269: 60        RTS



sub_E26A:
C - - - - - 0x00227A 00:E26A: AD 9F 03  LDA ram_039F
C - - - - - 0x00227D 00:E26D: F0 FA     BEQ bra_E269_RTS
C - - - - - 0x00227F 00:E26F: B5 84     LDA ram_0084,X
C - - - - - 0x002281 00:E271: C9 02     CMP #$02
C - - - - - 0x002283 00:E273: F0 F4     BEQ bra_E269_RTS
C - - - - - 0x002285 00:E275: BD 90 03  LDA ram_0390,X
C - - - - - 0x002288 00:E278: C9 F8     CMP #$F8
C - - - - - 0x00228A 00:E27A: B0 ED     BCS bra_E269_RTS
C - - - - - 0x00228C 00:E27C: D5 80     CMP ram_0080,X
C - - - - - 0x00228E 00:E27E: 90 E9     BCC bra_E269_RTS
C - - - - - 0x002290 00:E280: BD 90 03  LDA ram_0390,X
C - - - - - 0x002293 00:E283: 85 00     STA ram_0000
C - - - - - 0x002295 00:E285: A9 A8     LDA #$A8
C - - - - - 0x002297 00:E287: 38        SEC
C - - - - - 0x002298 00:E288: F5 6C     SBC ram_006C,X
C - - - - - 0x00229A 00:E28A: 85 01     STA ram_0001
C - - - - - 0x00229C 00:E28C: A9 22     LDA #$22
C - - - - - 0x00229E 00:E28E: 85 03     STA ram_0003
C - - - - - 0x0022A0 00:E290: AD 9F 03  LDA ram_039F
C - - - - - 0x0022A3 00:E293: 85 04     STA ram_0004
C - - - - - 0x0022A5 00:E295: B5 A4     LDA ram_00A4,X
C - - - - - 0x0022A7 00:E297: F0 02     BEQ bra_E29B
- - - - - - 0x0022A9 00:E299: A9 20     LDA #$20
bra_E29B:
C - - - - - 0x0022AB 00:E29B: 05 0B     ORA ram_000B
C - - - - - 0x0022AD 00:E29D: 85 0B     STA ram_000B
C - - - - - 0x0022AF 00:E29F: BC 98 03  LDY ram_0398,X
C - - - - - 0x0022B2 00:E2A2: B9 0B D9  LDA tbl_D90B,Y
C - - - - - 0x0022B5 00:E2A5: 85 02     STA ram_0002
C - - - - - 0x0022B7 00:E2A7: 98        TYA
C - - - - - 0x0022B8 00:E2A8: F0 02     BEQ bra_E2AC
C - - - - - 0x0022BA 00:E2AA: 49 03     EOR #$03
bra_E2AC:
C - - - - - 0x0022BC 00:E2AC: 4C C7 D1  JMP loc_D1C7



ofs_004_E2AF_01:
C - - J - - 0x0022BF 00:E2AF: AD BD 03  LDA ram_03BD
C - - - - - 0x0022C2 00:E2B2: 38        SEC
C - - - - - 0x0022C3 00:E2B3: E5 60     SBC ram_0060
C - - - - - 0x0022C5 00:E2B5: 8D BD 03  STA ram_03BD
C - - - - - 0x0022C8 00:E2B8: B0 03     BCS bra_E2BD
C - - - - - 0x0022CA 00:E2BA: CE BE 03  DEC ram_03BE
bra_E2BD:
C - - - - - 0x0022CD 00:E2BD: A4 52     LDY ram_0052
C - - - - - 0x0022CF 00:E2BF: F0 0F     BEQ bra_E2D0
C - - - - - 0x0022D1 00:E2C1: 88        DEY
C - - - - - 0x0022D2 00:E2C2: D0 A5     BNE bra_E269_RTS
C - - - - - 0x0022D4 00:E2C4: A5 20     LDA ram_0020
C - - - - - 0x0022D6 00:E2C6: D0 08     BNE bra_E2D0
C - - - - - 0x0022D8 00:E2C8: AD BB 03  LDA ram_03BB
C - - - - - 0x0022DB 00:E2CB: 49 01     EOR #$01
C - - - - - 0x0022DD 00:E2CD: 8D BB 03  STA ram_03BB
bra_E2D0:
C - - - - - 0x0022E0 00:E2D0: AC BE 03  LDY ram_03BE
C - - - - - 0x0022E3 00:E2D3: 88        DEY
C - - - - - 0x0022E4 00:E2D4: D0 2D     BNE bra_E303
C - - - - - 0x0022E6 00:E2D6: AD BD 03  LDA ram_03BD
C - - - - - 0x0022E9 00:E2D9: 85 00     STA ram_0000
C - - - - - 0x0022EB 00:E2DB: A9 50     LDA #$50
C - - - - - 0x0022ED 00:E2DD: 85 01     STA ram_0001
C - - - - - 0x0022EF 00:E2DF: AC BB 03  LDY ram_03BB
C - - - - - 0x0022F2 00:E2E2: B9 E5 D8  LDA tbl_D8E5,Y
C - - - - - 0x0022F5 00:E2E5: 85 02     STA ram_0002
C - - - - - 0x0022F7 00:E2E7: A9 32     LDA #$32
C - - - - - 0x0022F9 00:E2E9: 85 03     STA ram_0003
C - - - - - 0x0022FB 00:E2EB: A9 C0     LDA #$C0
C - - - - - 0x0022FD 00:E2ED: 85 04     STA ram_0004
C - - - - - 0x0022FF 00:E2EF: A9 00     LDA #$00
C - - - - - 0x002301 00:E2F1: 85 0B     STA ram_000B
C - - - - - 0x002303 00:E2F3: 4C C7 D1  JMP loc_D1C7



sub_E2F6:
C - - - - - 0x002306 00:E2F6: BD 6C 03  LDA ram_036C,X
C - - - - - 0x002309 00:E2F9: F0 5D     BEQ bra_E358_RTS
C - - - - - 0x00230B 00:E2FB: B5 94     LDA ram_0094,X
C - - - - - 0x00230D 00:E2FD: 15 90     ORA ram_0090,X
C - - - - - 0x00230F 00:E2FF: F0 57     BEQ bra_E358_RTS
C - - - - - 0x002311 00:E301: B5 BC     LDA ram_00BC,X
bra_E303:
C - - - - - 0x002313 00:E303: D0 53     BNE bra_E358_RTS
C - - - - - 0x002315 00:E305: B5 84     LDA ram_0084,X
C - - - - - 0x002317 00:E307: 4A        LSR
C - - - - - 0x002318 00:E308: 90 4E     BCC bra_E358_RTS
C - - - - - 0x00231A 00:E30A: B5 80     LDA ram_0080,X
C - - - - - 0x00231C 00:E30C: C9 10     CMP #$10
C - - - - - 0x00231E 00:E30E: 90 48     BCC bra_E358_RTS
C - - - - - 0x002320 00:E310: 18        CLC
C - - - - - 0x002321 00:E311: 69 F9     ADC #$F9
C - - - - - 0x002323 00:E313: 99 97 02  STA ram_spr_X + $94,Y
C - - - - - 0x002326 00:E316: 18        CLC
C - - - - - 0x002327 00:E317: 69 F8     ADC #$F8
C - - - - - 0x002329 00:E319: 99 9B 02  STA ram_spr_X + $98,Y
C - - - - - 0x00232C 00:E31C: B5 8C     LDA ram_008C,X
C - - - - - 0x00232E 00:E31E: 18        CLC
C - - - - - 0x00232F 00:E31F: 69 08     ADC #$08
C - - - - - 0x002331 00:E321: 99 98 02  STA ram_spr_Y + $98,Y
C - - - - - 0x002334 00:E324: 18        CLC
C - - - - - 0x002335 00:E325: 69 08     ADC #$08
C - - - - - 0x002337 00:E327: 99 94 02  STA ram_spr_Y + $94,Y
C - - - - - 0x00233A 00:E32A: A9 F6     LDA #$F6
C - - - - - 0x00233C 00:E32C: 99 95 02  STA ram_spr_T + $94,Y
C - - - - - 0x00233F 00:E32F: A9 F7     LDA #$F7
C - - - - - 0x002341 00:E331: 99 99 02  STA ram_spr_T + $98,Y
C - - - - - 0x002344 00:E334: A5 3F     LDA ram_003F
C - - - - - 0x002346 00:E336: 29 04     AND #$04
C - - - - - 0x002348 00:E338: F0 0A     BEQ bra_E344
C - - - - - 0x00234A 00:E33A: A9 F7     LDA #$F7
C - - - - - 0x00234C 00:E33C: 99 95 02  STA ram_spr_T + $94,Y
C - - - - - 0x00234F 00:E33F: A9 F6     LDA #$F6
C - - - - - 0x002351 00:E341: 99 99 02  STA ram_spr_T + $98,Y
bra_E344:
C - - - - - 0x002354 00:E344: BD 6C 03  LDA ram_036C,X
C - - - - - 0x002357 00:E347: 29 02     AND #$02
C - - - - - 0x002359 00:E349: 99 96 02  STA ram_spr_A + $94,Y
C - - - - - 0x00235C 00:E34C: 99 9A 02  STA ram_spr_A + $98,Y
C - - - - - 0x00235F 00:E34F: B5 94     LDA ram_0094,X
C - - - - - 0x002361 00:E351: D0 05     BNE bra_E358_RTS
C - - - - - 0x002363 00:E353: A9 F8     LDA #$F8
C - - - - - 0x002365 00:E355: 99 98 02  STA ram_spr_Y + $98,Y
bra_E358_RTS:
C - - - - - 0x002368 00:E358: 60        RTS



sub_E359:
C - - - - - 0x002369 00:E359: A5 52     LDA ram_0052
C - - - - - 0x00236B 00:E35B: D0 69     BNE bra_E3C6
C - - - - - 0x00236D 00:E35D: AD E0 03  LDA ram_03E0
C - - - - - 0x002370 00:E360: F0 09     BEQ bra_E36B
C - - - - - 0x002372 00:E362: A5 3C     LDA ram_003C
C - - - - - 0x002374 00:E364: 4A        LSR
C - - - - - 0x002375 00:E365: B0 5F     BCS bra_E3C6
C - - - - - 0x002377 00:E367: A9 FC     LDA #$FC
C - - - - - 0x002379 00:E369: D0 5D     BNE bra_E3C8
bra_E36B:
C - - - - - 0x00237B 00:E36B: A5 5C     LDA ram_005C
C - - - - - 0x00237D 00:E36D: 29 C0     AND #$C0
C - - - - - 0x00237F 00:E36F: F0 09     BEQ bra_E37A
C - - - - - 0x002381 00:E371: A4 4F     LDY ram_004F
C - - - - - 0x002383 00:E373: D0 02     BNE bra_E377
C - - - - - 0x002385 00:E375: A9 80     LDA #$80
bra_E377:
C - - - - - 0x002387 00:E377: 0A        ASL
C - - - - - 0x002388 00:E378: 2A        ROL
C - - - - - 0x002389 00:E379: 2A        ROL
bra_E37A:
C - - - - - 0x00238A 00:E37A: A8        TAY
C - - - - - 0x00238B 00:E37B: AD B6 03  LDA ram_03B6
C - - - - - 0x00238E 00:E37E: D9 FB D8  CMP tbl_D8FB,Y
C - - - - - 0x002391 00:E381: 90 18     BCC bra_E39B
C - - - - - 0x002393 00:E383: F0 25     BEQ bra_E3AA
C - - - - - 0x002395 00:E385: AD B5 03  LDA ram_03B5
C - - - - - 0x002398 00:E388: 38        SEC
C - - - - - 0x002399 00:E389: E9 0B     SBC #$0B
C - - - - - 0x00239B 00:E38B: 8D B5 03  STA ram_03B5
C - - - - - 0x00239E 00:E38E: B0 1A     BCS bra_E3AA
C - - - - - 0x0023A0 00:E390: AD B6 03  LDA ram_03B6
C - - - - - 0x0023A3 00:E393: F0 15     BEQ bra_E3AA
C - - - - - 0x0023A5 00:E395: CE B6 03  DEC ram_03B6
C - - - - - 0x0023A8 00:E398: 4C AA E3  JMP loc_E3AA
bra_E39B:
C - - - - - 0x0023AB 00:E39B: AD B5 03  LDA ram_03B5
C - - - - - 0x0023AE 00:E39E: 18        CLC
C - - - - - 0x0023AF 00:E39F: 79 F7 D8  ADC tbl_D8F7,Y
C - - - - - 0x0023B2 00:E3A2: 8D B5 03  STA ram_03B5
C - - - - - 0x0023B5 00:E3A5: 90 03     BCC bra_E3AA
C - - - - - 0x0023B7 00:E3A7: EE B6 03  INC ram_03B6
bra_E3AA:
loc_E3AA:
C D 3 - - - 0x0023BA 00:E3AA: A2 00     LDX #$00
C - - - - - 0x0023BC 00:E3AC: AD B6 03  LDA ram_03B6
C - - - - - 0x0023BF 00:E3AF: C9 20     CMP #$20
C - - - - - 0x0023C1 00:E3B1: 90 05     BCC bra_E3B8
C - - - - - 0x0023C3 00:E3B3: 85 3C     STA ram_003C
C - - - - - 0x0023C5 00:E3B5: 8D E0 03  STA ram_03E0
bra_E3B8:
C - - - - - 0x0023C8 00:E3B8: C9 1A     CMP #$1A
C - - - - - 0x0023CA 00:E3BA: 90 05     BCC bra_E3C1
C - - - - - 0x0023CC 00:E3BC: 88        DEY
C - - - - - 0x0023CD 00:E3BD: D0 02     BNE bra_E3C1
C - - - - - 0x0023CF 00:E3BF: A2 B0     LDX #$B0
bra_E3C1:
C - - - - - 0x0023D1 00:E3C1: 8A        TXA
C - - - - - 0x0023D2 00:E3C2: 05 FC     ORA ram_00FC
C - - - - - 0x0023D4 00:E3C4: 85 FC     STA ram_00FC
bra_E3C6:
C - - - - - 0x0023D6 00:E3C6: A9 FE     LDA #$FE
bra_E3C8:
C - - - - - 0x0023D8 00:E3C8: 85 01     STA ram_0001
C - - - - - 0x0023DA 00:E3CA: AD B6 03  LDA ram_03B6
C - - - - - 0x0023DD 00:E3CD: 18        CLC
C - - - - - 0x0023DE 00:E3CE: 69 50     ADC #$50
C - - - - - 0x0023E0 00:E3D0: 85 00     STA ram_0000
C - - - - - 0x0023E2 00:E3D2: A2 0C     LDX #$0C
bra_E3D4_loop:
C - - - - - 0x0023E4 00:E3D4: A9 CF     LDA #$CF
C - - - - - 0x0023E6 00:E3D6: 9D F0 02  STA ram_spr_Y + $F0,X
C - - - - - 0x0023E9 00:E3D9: A5 01     LDA ram_0001
C - - - - - 0x0023EB 00:E3DB: 9D F1 02  STA ram_spr_T + $F0,X
C - - - - - 0x0023EE 00:E3DE: A9 20     LDA #$20
C - - - - - 0x0023F0 00:E3E0: 9D F2 02  STA ram_spr_A + $F0,X
C - - - - - 0x0023F3 00:E3E3: A5 00     LDA ram_0000
C - - - - - 0x0023F5 00:E3E5: 9D F3 02  STA ram_spr_X + $F0,X
C - - - - - 0x0023F8 00:E3E8: 18        CLC
C - - - - - 0x0023F9 00:E3E9: 69 08     ADC #$08
C - - - - - 0x0023FB 00:E3EB: 85 00     STA ram_0000
C - - - - - 0x0023FD 00:E3ED: CA        DEX
C - - - - - 0x0023FE 00:E3EE: CA        DEX
C - - - - - 0x0023FF 00:E3EF: CA        DEX
C - - - - - 0x002400 00:E3F0: CA        DEX
C - - - - - 0x002401 00:E3F1: 10 E1     BPL bra_E3D4_loop
C - - - - - 0x002403 00:E3F3: 60        RTS



sub_E3F4:
C - - - - - 0x002404 00:E3F4: A2 03     LDX #$03
bra_E3F6_loop:
C - - - - - 0x002406 00:E3F6: 8A        TXA
C - - - - - 0x002407 00:E3F7: 95 88     STA ram_0088,X
C - - - - - 0x002409 00:E3F9: B5 B8     LDA ram_00B8,X
C - - - - - 0x00240B 00:E3FB: 95 00     STA ram_0000,X
C - - - - - 0x00240D 00:E3FD: CA        DEX
C - - - - - 0x00240E 00:E3FE: 10 F6     BPL bra_E3F6_loop
C - - - - - 0x002410 00:E400: AD 73 03  LDA ram_0373
C - - - - - 0x002413 00:E403: F0 04     BEQ bra_E409
C - - - - - 0x002415 00:E405: A5 6F     LDA ram_006F
C - - - - - 0x002417 00:E407: 85 03     STA ram_0003
bra_E409:
C - - - - - 0x002419 00:E409: A2 03     LDX #$03
C - - - - - 0x00241B 00:E40B: 86 0D     STX ram_000D
bra_E40D_loop:
C - - - - - 0x00241D 00:E40D: A0 00     LDY #$00
bra_E40F_loop:
C - - - - - 0x00241F 00:E40F: B6 88     LDX ram_0088,Y
C - - - - - 0x002421 00:E411: B5 00     LDA ram_0000,X
C - - - - - 0x002423 00:E413: B6 89     LDX ram_0089,Y
C - - - - - 0x002425 00:E415: D5 00     CMP ram_0000,X
C - - - - - 0x002427 00:E417: 90 08     BCC bra_E421
C - - - - - 0x002429 00:E419: B9 88 00  LDA ram_0088,Y
C - - - - - 0x00242C 00:E41C: 99 89 00  STA ram_0089,Y
C - - - - - 0x00242F 00:E41F: 96 88     STX ram_0088,Y
bra_E421:
C - - - - - 0x002431 00:E421: C8        INY
C - - - - - 0x002432 00:E422: C4 0D     CPY ram_000D
C - - - - - 0x002434 00:E424: D0 E9     BNE bra_E40F_loop
C - - - - - 0x002436 00:E426: C6 0D     DEC ram_000D
C - - - - - 0x002438 00:E428: D0 E3     BNE bra_E40D_loop
C - - - - - 0x00243A 00:E42A: 60        RTS



loc_E42B:
C D 3 - - - 0x00243B 00:E42B: AD A3 03  LDA ram_03A3
C - - - - - 0x00243E 00:E42E: F0 25     BEQ bra_E455_RTS
C - - - - - 0x002440 00:E430: A2 03     LDX #$03
bra_E432_loop:
C - - - - - 0x002442 00:E432: B5 88     LDA ram_0088,X
C - - - - - 0x002444 00:E434: F0 14     BEQ bra_E44A
C - - - - - 0x002446 00:E436: C9 03     CMP #$03
C - - - - - 0x002448 00:E438: D0 05     BNE bra_E43F
C - - - - - 0x00244A 00:E43A: AD 73 03  LDA ram_0373
C - - - - - 0x00244D 00:E43D: D0 0B     BNE bra_E44A
bra_E43F:
C - - - - - 0x00244F 00:E43F: BD C0 D8  LDA tbl_D8C0,X
C - - - - - 0x002452 00:E442: 85 07     STA ram_0007
C - - - - - 0x002454 00:E444: AC B3 03  LDY ram_03B3
C - - - - - 0x002457 00:E447: 20 AD E4  JSR sub_E4AD
bra_E44A:
C - - - - - 0x00245A 00:E44A: CA        DEX
C - - - - - 0x00245B 00:E44B: 10 E5     BPL bra_E432_loop
C - - - - - 0x00245D 00:E44D: AD B3 03  LDA ram_03B3
C - - - - - 0x002460 00:E450: 49 02     EOR #$02
C - - - - - 0x002462 00:E452: 8D B3 03  STA ram_03B3
bra_E455_RTS:
C - - - - - 0x002465 00:E455: 60        RTS



sub_E456:
C - - - - - 0x002466 00:E456: A0 03     LDY #$03
bra_E458_loop:
C - - - - - 0x002468 00:E458: 84 05     STY ram_0005
C - - - - - 0x00246A 00:E45A: B9 C0 D8  LDA tbl_D8C0,Y
C - - - - - 0x00246D 00:E45D: 85 07     STA ram_0007
C - - - - - 0x00246F 00:E45F: B9 88 00  LDA ram_0088,Y
C - - - - - 0x002472 00:E462: F0 31     BEQ bra_E495
C - - - - - 0x002474 00:E464: AA        TAX
C - - - - - 0x002475 00:E465: B5 84     LDA ram_0084,X
C - - - - - 0x002477 00:E467: 85 02     STA ram_0002
C - - - - - 0x002479 00:E469: 85 03     STA ram_0003
C - - - - - 0x00247B 00:E46B: 85 04     STA ram_0004
C - - - - - 0x00247D 00:E46D: 4A        LSR
C - - - - - 0x00247E 00:E46E: B0 14     BCS bra_E484
C - - - - - 0x002480 00:E470: B5 80     LDA ram_0080,X
C - - - - - 0x002482 00:E472: C9 70     CMP #$70
C - - - - - 0x002484 00:E474: 90 0E     BCC bra_E484
C - - - - - 0x002486 00:E476: C9 90     CMP #$90
C - - - - - 0x002488 00:E478: B0 0A     BCS bra_E484
C - - - - - 0x00248A 00:E47A: 20 95 DB  JSR sub_DB95
C - - - - - 0x00248D 00:E47D: A9 01     LDA #$01
C - - - - - 0x00248F 00:E47F: 8D A6 03  STA ram_03A6
C - - - - - 0x002492 00:E482: D0 0E     BNE bra_E492
bra_E484:
C - - - - - 0x002494 00:E484: B5 80     LDA ram_0080,X
C - - - - - 0x002496 00:E486: C9 F8     CMP #$F8
C - - - - - 0x002498 00:E488: 90 02     BCC bra_E48C
C - - - - - 0x00249A 00:E48A: E6 03     INC ram_0003
bra_E48C:
C - - - - - 0x00249C 00:E48C: C9 F0     CMP #$F0
C - - - - - 0x00249E 00:E48E: 90 02     BCC bra_E492
C - - - - - 0x0024A0 00:E490: E6 04     INC ram_0004
bra_E492:
C - - - - - 0x0024A2 00:E492: 20 9B E4  JSR sub_E49B
bra_E495:
C - - - - - 0x0024A5 00:E495: A4 05     LDY ram_0005
C - - - - - 0x0024A7 00:E497: 88        DEY
C - - - - - 0x0024A8 00:E498: 10 BE     BPL bra_E458_loop
C - - - - - 0x0024AA 00:E49A: 60        RTS



sub_E49B:
C - - - - - 0x0024AB 00:E49B: A2 00     LDX #$00
bra_E49D_loop:
C - - - - - 0x0024AD 00:E49D: B5 02     LDA ram_0002,X
C - - - - - 0x0024AF 00:E49F: 4A        LSR
C - - - - - 0x0024B0 00:E4A0: B0 05     BCS bra_E4A7
C - - - - - 0x0024B2 00:E4A2: 8A        TXA
C - - - - - 0x0024B3 00:E4A3: A8        TAY
C - - - - - 0x0024B4 00:E4A4: 20 AD E4  JSR sub_E4AD
bra_E4A7:
C - - - - - 0x0024B7 00:E4A7: E8        INX
C - - - - - 0x0024B8 00:E4A8: E0 03     CPX #$03
C - - - - - 0x0024BA 00:E4AA: 90 F1     BCC bra_E49D_loop
C - - - - - 0x0024BC 00:E4AC: 60        RTS



sub_E4AD:
C - - - - - 0x0024BD 00:E4AD: A9 02     LDA #$02
C - - - - - 0x0024BF 00:E4AF: 85 01     STA ram_0001
C - - - - - 0x0024C1 00:E4B1: A5 07     LDA ram_0007
C - - - - - 0x0024C3 00:E4B3: 18        CLC
C - - - - - 0x0024C4 00:E4B4: 79 DC D8  ADC tbl_D8DC,Y
C - - - - - 0x0024C7 00:E4B7: 85 00     STA ram_0000
C - - - - - 0x0024C9 00:E4B9: A0 00     LDY #$00
C - - - - - 0x0024CB 00:E4BB: A9 F8     LDA #$F8
bra_E4BD_loop:
C - - - - - 0x0024CD 00:E4BD: 91 00     STA (ram_0000),Y
C - - - - - 0x0024CF 00:E4BF: C8        INY
C - - - - - 0x0024D0 00:E4C0: C8        INY
C - - - - - 0x0024D1 00:E4C1: C8        INY
C - - - - - 0x0024D2 00:E4C2: C8        INY
C - - - - - 0x0024D3 00:E4C3: C0 0C     CPY #$0C
C - - - - - 0x0024D5 00:E4C5: 90 F6     BCC bra_E4BD_loop
C - - - - - 0x0024D7 00:E4C7: 60        RTS



sub_E4C8:
C - - - - - 0x0024D8 00:E4C8: A2 01     LDX #$01
bra_E4CA_loop:
C - - - - - 0x0024DA 00:E4CA: 86 0C     STX ram_000C
C - - - - - 0x0024DC 00:E4CC: B5 84     LDA ram_0084,X
C - - - - - 0x0024DE 00:E4CE: 4A        LSR
C - - - - - 0x0024DF 00:E4CF: B0 08     BCS bra_E4D9
C - - - - - 0x0024E1 00:E4D1: D0 37     BNE bra_E50A
C - - - - - 0x0024E3 00:E4D3: B5 80     LDA ram_0080,X
C - - - - - 0x0024E5 00:E4D5: C9 F8     CMP #$F8
C - - - - - 0x0024E7 00:E4D7: 90 31     BCC bra_E50A
bra_E4D9:
C - - - - - 0x0024E9 00:E4D9: A9 00     LDA #$00
C - - - - - 0x0024EB 00:E4DB: 85 0A     STA ram_000A
C - - - - - 0x0024ED 00:E4DD: 8A        TXA
C - - - - - 0x0024EE 00:E4DE: A8        TAY
C - - - - - 0x0024EF 00:E4DF: C8        INY
bra_E4E0_loop:
C - - - - - 0x0024F0 00:E4E0: 84 05     STY ram_0005
C - - - - - 0x0024F2 00:E4E2: B9 84 00  LDA ram_0084,Y
C - - - - - 0x0024F5 00:E4E5: 4A        LSR
C - - - - - 0x0024F6 00:E4E6: B0 08     BCS bra_E4F0
C - - - - - 0x0024F8 00:E4E8: D0 15     BNE bra_E4FF
C - - - - - 0x0024FA 00:E4EA: B5 80     LDA ram_0080,X
C - - - - - 0x0024FC 00:E4EC: C9 F8     CMP #$F8
C - - - - - 0x0024FE 00:E4EE: 90 0F     BCC bra_E4FF
bra_E4F0:
C - - - - - 0x002500 00:E4F0: 20 2C E5  JSR sub_E52C
C - - - - - 0x002503 00:E4F3: F0 0A     BEQ bra_E4FF
C - - - - - 0x002505 00:E4F5: E6 0A     INC ram_000A
C - - - - - 0x002507 00:E4F7: A5 0B     LDA ram_000B
C - - - - - 0x002509 00:E4F9: 0A        ASL
C - - - - - 0x00250A 00:E4FA: 0A        ASL
C - - - - - 0x00250B 00:E4FB: 05 05     ORA ram_0005
C - - - - - 0x00250D 00:E4FD: 85 0B     STA ram_000B
bra_E4FF:
C - - - - - 0x00250F 00:E4FF: C8        INY
C - - - - - 0x002510 00:E500: C0 04     CPY #$04
C - - - - - 0x002512 00:E502: 90 DC     BCC bra_E4E0_loop
C - - - - - 0x002514 00:E504: A5 0A     LDA ram_000A
C - - - - - 0x002516 00:E506: C9 02     CMP #$02
C - - - - - 0x002518 00:E508: B0 09     BCS bra_E513
bra_E50A:
C - - - - - 0x00251A 00:E50A: A6 0C     LDX ram_000C
C - - - - - 0x00251C 00:E50C: CA        DEX
C - - - - - 0x00251D 00:E50D: 10 BB     BPL bra_E4CA_loop
C - - - - - 0x00251F 00:E50F: A9 00     LDA #$00
C - - - - - 0x002521 00:E511: F0 15     BEQ bra_E528    ; jmp
bra_E513:
C - - - - - 0x002523 00:E513: D0 11     BNE bra_E526
C - - - - - 0x002525 00:E515: A5 0B     LDA ram_000B
C - - - - - 0x002527 00:E517: 48        PHA
C - - - - - 0x002528 00:E518: 29 03     AND #$03
C - - - - - 0x00252A 00:E51A: A8        TAY
C - - - - - 0x00252B 00:E51B: 68        PLA
C - - - - - 0x00252C 00:E51C: 4A        LSR
C - - - - - 0x00252D 00:E51D: 4A        LSR
C - - - - - 0x00252E 00:E51E: 29 03     AND #$03
C - - - - - 0x002530 00:E520: AA        TAX
C - - - - - 0x002531 00:E521: 20 2C E5  JSR sub_E52C
C - - - - - 0x002534 00:E524: F0 E4     BEQ bra_E50A
bra_E526:
C - - - - - 0x002536 00:E526: A9 01     LDA #$01
bra_E528:
C - - - - - 0x002538 00:E528: 8D A3 03  STA ram_03A3
C - - - - - 0x00253B 00:E52B: 60        RTS



sub_E52C:
C - - - - - 0x00253C 00:E52C: B5 8C     LDA ram_008C,X
C - - - - - 0x00253E 00:E52E: 38        SEC
C - - - - - 0x00253F 00:E52F: F9 8C 00  SBC ram_008C,Y
C - - - - - 0x002542 00:E532: C9 EC     CMP #$EC
C - - - - - 0x002544 00:E534: B0 06     BCS bra_E53C_RTS
C - - - - - 0x002546 00:E536: C9 12     CMP #$12
C - - - - - 0x002548 00:E538: 90 02     BCC bra_E53C_RTS
C - - - - - 0x00254A 00:E53A: A9 00     LDA #$00
bra_E53C_RTS:
C - - - - - 0x00254C 00:E53C: 60        RTS



tbl_E53D:
- D 3 - - - 0x00254D 00:E53D: 0E        .byte $0E   ; 
- D 3 - - - 0x00254E 00:E53E: 1A        .byte $1A   ; 
- D 3 - - - 0x00254F 00:E53F: 26        .byte $26   ; 



tbl_E540_spr_T:
- D 3 - - - 0x002550 00:E540: 32        .byte $32   ; 
- D 3 - - - 0x002551 00:E541: DD        .byte $DD   ; 
- D 3 - - - 0x002552 00:E542: DC        .byte $DC   ; 



tbl_E543_spr_X:
- D 3 - - - 0x002553 00:E543: DB        .byte $DB   ; 
- D 3 - - - 0x002554 00:E544: 7C        .byte $7C   ; 
- D 3 - - - 0x002555 00:E545: 74        .byte $74   ; 
- D 3 - - - 0x002556 00:E546: 6C        .byte $6C   ; 



tbl_E547_spr_X:
- D 3 - - - 0x002557 00:E547: 90        .byte $90   ; 
- D 3 - - - 0x002558 00:E548: 88        .byte $88   ; 
- D 3 - - - 0x002559 00:E549: 80        .byte $80   ; 
- D 3 - - - 0x00255A 00:E54A: 78        .byte $78   ; 
- D 3 - - - 0x00255B 00:E54B: 70        .byte $70   ; 
- D 3 - - - 0x00255C 00:E54C: 68        .byte $68   ; 
- D 3 - - - 0x00255D 00:E54D: 60        .byte $60   ; 



tbl_E54E_lo:
- D 3 - - - 0x00255E 00:E54E: 00        .byte < ram_0400   ; 
- D 3 - - - 0x00255F 00:E54F: 40        .byte < ram_0440   ; 
- D 3 - - - 0x002560 00:E550: 80        .byte < ram_0480   ; 
- D 3 - - - 0x002561 00:E551: C0        .byte < ram_04C0   ; 
- D 3 - - - 0x002562 00:E552: 00        .byte < ram_0500   ; 
- D 3 - - - 0x002563 00:E553: 40        .byte < ram_0540   ; 



tbl_E554_hi:
- D 3 - - - 0x002564 00:E554: 04        .byte > ram_0400   ; 
- D 3 - - - 0x002565 00:E555: 04        .byte > ram_0440   ; 
- D 3 - - - 0x002566 00:E556: 04        .byte > ram_0480   ; 
- D 3 - - - 0x002567 00:E557: 04        .byte > ram_04C0   ; 
- D 3 - - - 0x002568 00:E558: 05        .byte > ram_0500   ; 
- D 3 - - - 0x002569 00:E559: 05        .byte > ram_0540   ; 



tbl_E55A_lo:
- D 3 - - - 0x00256A 00:E55A: 84        .byte < _off_002_E584_00   ; 
- - - - - - 0x00256B 00:E55B: 99        .byte < _off_002_E599_01   ; 
- D 3 - - - 0x00256C 00:E55C: 99        .byte < _off_002_E599_02   ; 
- D 3 - - - 0x00256D 00:E55D: A6        .byte < _off_002_E5A6_03   ; 
- D 3 - - - 0x00256E 00:E55E: BB        .byte < _off_002_E5BB_04   ; 
- D 3 - - - 0x00256F 00:E55F: D0        .byte < _off_002_E5D0_05   ; 
- D 3 - - - 0x002570 00:E560: E5        .byte < _off_002_E5E5_06   ; 
- D 3 - - - 0x002571 00:E561: F8        .byte < _off_002_E5F8_07   ; 
- D 3 - - - 0x002572 00:E562: 0B        .byte < _off_002_E60B_08   ; 
- D 3 - - - 0x002573 00:E563: 1E        .byte < _off_002_E61E_09   ; 
- D 3 - - - 0x002574 00:E564: 31        .byte < _off_002_E631_0A   ; 
- D 3 - - - 0x002575 00:E565: 3E        .byte < _off_002_E63E_0B   ; 
- D 3 - - - 0x002576 00:E566: 49        .byte < _off_002_E649_0C   ; 
- D 3 - - - 0x002577 00:E567: 52        .byte < _off_002_E652_0D   ; 
- D 3 - - - 0x002578 00:E568: 67        .byte < _off_002_E667_0E   ; 
- D 3 - - - 0x002579 00:E569: 84        .byte < _off_002_E684_0F   ; 
- D 3 - - - 0x00257A 00:E56A: 86        .byte < _off_002_E686_10   ; 
- - - - - - 0x00257B 00:E56B: 89        .byte < _off_002_E689_11   ; 
- D 3 - - - 0x00257C 00:E56C: 89        .byte < _off_002_E689_12   ; 
- D 3 - - - 0x00257D 00:E56D: 8C        .byte < _off_002_E68C_13   ; 
- D 3 - - - 0x00257E 00:E56E: 97        .byte < _off_002_E697_14   ; 



tbl_E56F_hi:
- D 3 - - - 0x00257F 00:E56F: E5        .byte > _off_002_E584_00   ; 
- - - - - - 0x002580 00:E570: E5        .byte > _off_002_E599_01   ; 
- D 3 - - - 0x002581 00:E571: E5        .byte > _off_002_E599_02   ; 
- D 3 - - - 0x002582 00:E572: E5        .byte > _off_002_E5A6_03   ; 
- D 3 - - - 0x002583 00:E573: E5        .byte > _off_002_E5BB_04   ; 
- D 3 - - - 0x002584 00:E574: E5        .byte > _off_002_E5D0_05   ; 
- D 3 - - - 0x002585 00:E575: E5        .byte > _off_002_E5E5_06   ; 
- D 3 - - - 0x002586 00:E576: E5        .byte > _off_002_E5F8_07   ; 
- D 3 - - - 0x002587 00:E577: E6        .byte > _off_002_E60B_08   ; 
- D 3 - - - 0x002588 00:E578: E6        .byte > _off_002_E61E_09   ; 
- D 3 - - - 0x002589 00:E579: E6        .byte > _off_002_E631_0A   ; 
- D 3 - - - 0x00258A 00:E57A: E6        .byte > _off_002_E63E_0B   ; 
- D 3 - - - 0x00258B 00:E57B: E6        .byte > _off_002_E649_0C   ; 
- D 3 - - - 0x00258C 00:E57C: E6        .byte > _off_002_E652_0D   ; 
- D 3 - - - 0x00258D 00:E57D: E6        .byte > _off_002_E667_0E   ; 
- D 3 - - - 0x00258E 00:E57E: E6        .byte > _off_002_E684_0F   ; 
- D 3 - - - 0x00258F 00:E57F: E6        .byte > _off_002_E686_10   ; 
- - - - - - 0x002590 00:E580: E6        .byte > _off_002_E689_11   ; 
- D 3 - - - 0x002591 00:E581: E6        .byte > _off_002_E689_12   ; 
- D 3 - - - 0x002592 00:E582: E6        .byte > _off_002_E68C_13   ; 
- D 3 - - - 0x002593 00:E583: E6        .byte > _off_002_E697_14   ; 



_off_002_E584_00:
- D 3 - I - 0x002594 00:E584: 04        .byte $04   ; 
- D 3 - I - 0x002595 00:E585: 87        .byte $87   ; 
- D 3 - I - 0x002596 00:E586: 08        .byte $08   ; 
- D 3 - I - 0x002597 00:E587: 88        .byte $88   ; 
- D 3 - I - 0x002598 00:E588: 08        .byte $08   ; 
- D 3 - I - 0x002599 00:E589: 44        .byte $44   ; 
- D 3 - I - 0x00259A 00:E58A: 29        .byte $29   ; 
- D 3 - I - 0x00259B 00:E58B: 06        .byte $06   ; 
- D 3 - I - 0x00259C 00:E58C: 29        .byte $29   ; 
- D 3 - I - 0x00259D 00:E58D: 00        .byte $00   ; 
- D 3 - I - 0x00259E 00:E58E: 31        .byte $31   ; 
- D 3 - I - 0x00259F 00:E58F: 85        .byte $85   ; 
- D 3 - I - 0x0025A0 00:E590: 35        .byte $35   ; 
- D 3 - I - 0x0025A1 00:E591: 84        .byte $84   ; 
- D 3 - I - 0x0025A2 00:E592: 35        .byte $35   ; 
- D 3 - I - 0x0025A3 00:E593: 45        .byte $45   ; 
- D 3 - I - 0x0025A4 00:E594: 51        .byte $51   ; 
- D 3 - I - 0x0025A5 00:E595: 00        .byte $00   ; 
- D 3 - I - 0x0025A6 00:E596: 52        .byte $52   ; 
- D 3 - I - 0x0025A7 00:E597: 86        .byte $86   ; 
- D 3 - I - 0x0025A8 00:E598: FF        .byte $FF   ; 



_off_002_E599_01:
_off_002_E599_02:
- D 3 - I - 0x0025A9 00:E599: 04        .byte $04   ; 
- D 3 - I - 0x0025AA 00:E59A: 07        .byte $07   ; 
- D 3 - I - 0x0025AB 00:E59B: 04        .byte $04   ; 
- D 3 - I - 0x0025AC 00:E59C: 88        .byte $88   ; 
- D 3 - I - 0x0025AD 00:E59D: 0C        .byte $0C   ; 
- D 3 - I - 0x0025AE 00:E59E: 86        .byte $86   ; 
- D 3 - I - 0x0025AF 00:E59F: 10        .byte $10   ; 
- D 3 - I - 0x0025B0 00:E5A0: 83        .byte $83   ; 
- D 3 - I - 0x0025B1 00:E5A1: 14        .byte $14   ; 
- D 3 - I - 0x0025B2 00:E5A2: 85        .byte $85   ; 
- D 3 - I - 0x0025B3 00:E5A3: 16        .byte $16   ; 
- D 3 - I - 0x0025B4 00:E5A4: 86        .byte $86   ; 
- D 3 - I - 0x0025B5 00:E5A5: FF        .byte $FF   ; 



_off_002_E5A6_03:
- D 3 - I - 0x0025B6 00:E5A6: 04        .byte $04   ; 
- D 3 - I - 0x0025B7 00:E5A7: 88        .byte $88   ; 
- D 3 - I - 0x0025B8 00:E5A8: 0A        .byte $0A   ; 
- D 3 - I - 0x0025B9 00:E5A9: 89        .byte $89   ; 
- D 3 - I - 0x0025BA 00:E5AA: 0A        .byte $0A   ; 
- D 3 - I - 0x0025BB 00:E5AB: 42        .byte $42   ; 
- D 3 - I - 0x0025BC 00:E5AC: 20        .byte $20   ; 
- D 3 - I - 0x0025BD 00:E5AD: 06        .byte $06   ; 
- D 3 - I - 0x0025BE 00:E5AE: 22        .byte $22   ; 
- D 3 - I - 0x0025BF 00:E5AF: 00        .byte $00   ; 
- D 3 - I - 0x0025C0 00:E5B0: 30        .byte $30   ; 
- D 3 - I - 0x0025C1 00:E5B1: 08        .byte $08   ; 
- D 3 - I - 0x0025C2 00:E5B2: 50        .byte $50   ; 
- D 3 - I - 0x0025C3 00:E5B3: 84        .byte $84   ; 
- D 3 - I - 0x0025C4 00:E5B4: 52        .byte $52   ; 
- D 3 - I - 0x0025C5 00:E5B5: 83        .byte $83   ; 
- D 3 - I - 0x0025C6 00:E5B6: 54        .byte $54   ; 
- D 3 - I - 0x0025C7 00:E5B7: 43        .byte $43   ; 
- D 3 - I - 0x0025C8 00:E5B8: 6C        .byte $6C   ; 
- D 3 - I - 0x0025C9 00:E5B9: 00        .byte $00   ; 
- D 3 - I - 0x0025CA 00:E5BA: FF        .byte $FF   ; 



_off_002_E5BB_04:
- D 3 - I - 0x0025CB 00:E5BB: 04        .byte $04   ; 
- D 3 - I - 0x0025CC 00:E5BC: 88        .byte $88   ; 
- D 3 - I - 0x0025CD 00:E5BD: 0A        .byte $0A   ; 
- D 3 - I - 0x0025CE 00:E5BE: 89        .byte $89   ; 
- D 3 - I - 0x0025CF 00:E5BF: 0A        .byte $0A   ; 
- D 3 - I - 0x0025D0 00:E5C0: 42        .byte $42   ; 
- D 3 - I - 0x0025D1 00:E5C1: 23        .byte $23   ; 
- D 3 - I - 0x0025D2 00:E5C2: 06        .byte $06   ; 
- D 3 - I - 0x0025D3 00:E5C3: 2A        .byte $2A   ; 
- D 3 - I - 0x0025D4 00:E5C4: 00        .byte $00   ; 
- D 3 - I - 0x0025D5 00:E5C5: 2F        .byte $2F   ; 
- D 3 - I - 0x0025D6 00:E5C6: 84        .byte $84   ; 
- D 3 - I - 0x0025D7 00:E5C7: 33        .byte $33   ; 
- D 3 - I - 0x0025D8 00:E5C8: 83        .byte $83   ; 
- D 3 - I - 0x0025D9 00:E5C9: 34        .byte $34   ; 
- D 3 - I - 0x0025DA 00:E5CA: 43        .byte $43   ; 
- D 3 - I - 0x0025DB 00:E5CB: 53        .byte $53   ; 
- D 3 - I - 0x0025DC 00:E5CC: 00        .byte $00   ; 
- D 3 - I - 0x0025DD 00:E5CD: 55        .byte $55   ; 
- D 3 - I - 0x0025DE 00:E5CE: 86        .byte $86   ; 
- D 3 - I - 0x0025DF 00:E5CF: FF        .byte $FF   ; 



_off_002_E5D0_05:
- D 3 - I - 0x0025E0 00:E5D0: 04        .byte $04   ; 
- D 3 - I - 0x0025E1 00:E5D1: 88        .byte $88   ; 
- D 3 - I - 0x0025E2 00:E5D2: 0A        .byte $0A   ; 
- D 3 - I - 0x0025E3 00:E5D3: 89        .byte $89   ; 
- D 3 - I - 0x0025E4 00:E5D4: 0A        .byte $0A   ; 
- D 3 - I - 0x0025E5 00:E5D5: 42        .byte $42   ; 
- D 3 - I - 0x0025E6 00:E5D6: 17        .byte $17   ; 
- D 3 - I - 0x0025E7 00:E5D7: 06        .byte $06   ; 
- D 3 - I - 0x0025E8 00:E5D8: 1A        .byte $1A   ; 
- D 3 - I - 0x0025E9 00:E5D9: 00        .byte $00   ; 
- D 3 - I - 0x0025EA 00:E5DA: 1F        .byte $1F   ; 
- D 3 - I - 0x0025EB 00:E5DB: 84        .byte $84   ; 
- D 3 - I - 0x0025EC 00:E5DC: 23        .byte $23   ; 
- D 3 - I - 0x0025ED 00:E5DD: 83        .byte $83   ; 
- D 3 - I - 0x0025EE 00:E5DE: 23        .byte $23   ; 
- D 3 - I - 0x0025EF 00:E5DF: 43        .byte $43   ; 
- D 3 - I - 0x0025F0 00:E5E0: 35        .byte $35   ; 
- D 3 - I - 0x0025F1 00:E5E1: 00        .byte $00   ; 
- D 3 - I - 0x0025F2 00:E5E2: 37        .byte $37   ; 
- D 3 - I - 0x0025F3 00:E5E3: 86        .byte $86   ; 
- D 3 - I - 0x0025F4 00:E5E4: FF        .byte $FF   ; 



_off_002_E5E5_06:
- D 3 - I - 0x0025F5 00:E5E5: 04        .byte $04   ; 
- D 3 - I - 0x0025F6 00:E5E6: 88        .byte $88   ; 
- D 3 - I - 0x0025F7 00:E5E7: 0A        .byte $0A   ; 
- D 3 - I - 0x0025F8 00:E5E8: 89        .byte $89   ; 
- D 3 - I - 0x0025F9 00:E5E9: 0A        .byte $0A   ; 
- D 3 - I - 0x0025FA 00:E5EA: 42        .byte $42   ; 
- D 3 - I - 0x0025FB 00:E5EB: 12        .byte $12   ; 
- D 3 - I - 0x0025FC 00:E5EC: 06        .byte $06   ; 
- D 3 - I - 0x0025FD 00:E5ED: 12        .byte $12   ; 
- D 3 - I - 0x0025FE 00:E5EE: 00        .byte $00   ; 
- D 3 - I - 0x0025FF 00:E5EF: 1A        .byte $1A   ; 
- D 3 - I - 0x002600 00:E5F0: 83        .byte $83   ; 
- D 3 - I - 0x002601 00:E5F1: 1B        .byte $1B   ; 
- D 3 - I - 0x002602 00:E5F2: 43        .byte $43   ; 
- D 3 - I - 0x002603 00:E5F3: 24        .byte $24   ; 
- D 3 - I - 0x002604 00:E5F4: 00        .byte $00   ; 
- D 3 - I - 0x002605 00:E5F5: 26        .byte $26   ; 
- D 3 - I - 0x002606 00:E5F6: 86        .byte $86   ; 
- D 3 - I - 0x002607 00:E5F7: FF        .byte $FF   ; 



_off_002_E5F8_07:
- D 3 - I - 0x002608 00:E5F8: 04        .byte $04   ; 
- D 3 - I - 0x002609 00:E5F9: 88        .byte $88   ; 
- D 3 - I - 0x00260A 00:E5FA: 0A        .byte $0A   ; 
- D 3 - I - 0x00260B 00:E5FB: 89        .byte $89   ; 
- D 3 - I - 0x00260C 00:E5FC: 0A        .byte $0A   ; 
- D 3 - I - 0x00260D 00:E5FD: 42        .byte $42   ; 
- D 3 - I - 0x00260E 00:E5FE: 22        .byte $22   ; 
- D 3 - I - 0x00260F 00:E5FF: 06        .byte $06   ; 
- D 3 - I - 0x002610 00:E600: 22        .byte $22   ; 
- D 3 - I - 0x002611 00:E601: 00        .byte $00   ; 
- D 3 - I - 0x002612 00:E602: 2A        .byte $2A   ; 
- D 3 - I - 0x002613 00:E603: 82        .byte $82   ; 
- D 3 - I - 0x002614 00:E604: 2B        .byte $2B   ; 
- D 3 - I - 0x002615 00:E605: 4A        .byte $4A   ; 
- D 3 - I - 0x002616 00:E606: 38        .byte $38   ; 
- D 3 - I - 0x002617 00:E607: 00        .byte $00   ; 
- D 3 - I - 0x002618 00:E608: 3A        .byte $3A   ; 
- D 3 - I - 0x002619 00:E609: 86        .byte $86   ; 
- D 3 - I - 0x00261A 00:E60A: FF        .byte $FF   ; 



_off_002_E60B_08:
- D 3 - I - 0x00261B 00:E60B: 04        .byte $04   ; 
- D 3 - I - 0x00261C 00:E60C: 88        .byte $88   ; 
- D 3 - I - 0x00261D 00:E60D: 0A        .byte $0A   ; 
- D 3 - I - 0x00261E 00:E60E: 8B        .byte $8B   ; 
- D 3 - I - 0x00261F 00:E60F: 0B        .byte $0B   ; 
- D 3 - I - 0x002620 00:E610: 49        .byte $49   ; 
- D 3 - I - 0x002621 00:E611: 17        .byte $17   ; 
- D 3 - I - 0x002622 00:E612: 06        .byte $06   ; 
- D 3 - I - 0x002623 00:E613: 17        .byte $17   ; 
- D 3 - I - 0x002624 00:E614: 00        .byte $00   ; 
- D 3 - I - 0x002625 00:E615: 25        .byte $25   ; 
- D 3 - I - 0x002626 00:E616: 83        .byte $83   ; 
- D 3 - I - 0x002627 00:E617: 26        .byte $26   ; 
- D 3 - I - 0x002628 00:E618: 43        .byte $43   ; 
- D 3 - I - 0x002629 00:E619: 3B        .byte $3B   ; 
- D 3 - I - 0x00262A 00:E61A: 00        .byte $00   ; 
- D 3 - I - 0x00262B 00:E61B: 3D        .byte $3D   ; 
- D 3 - I - 0x00262C 00:E61C: 86        .byte $86   ; 
- D 3 - I - 0x00262D 00:E61D: FF        .byte $FF   ; 



_off_002_E61E_09:
- D 3 - I - 0x00262E 00:E61E: 04        .byte $04   ; 
- D 3 - I - 0x00262F 00:E61F: 8B        .byte $8B   ; 
- D 3 - I - 0x002630 00:E620: 08        .byte $08   ; 
- D 3 - I - 0x002631 00:E621: 49        .byte $49   ; 
- D 3 - I - 0x002632 00:E622: 18        .byte $18   ; 
- D 3 - I - 0x002633 00:E623: 06        .byte $06   ; 
- D 3 - I - 0x002634 00:E624: 18        .byte $18   ; 
- D 3 - I - 0x002635 00:E625: 00        .byte $00   ; 
- D 3 - I - 0x002636 00:E626: 1F        .byte $1F   ; 
- D 3 - I - 0x002637 00:E627: 84        .byte $84   ; 
- D 3 - I - 0x002638 00:E628: 20        .byte $20   ; 
- D 3 - I - 0x002639 00:E629: 82        .byte $82   ; 
- D 3 - I - 0x00263A 00:E62A: 25        .byte $25   ; 
- D 3 - I - 0x00263B 00:E62B: 4A        .byte $4A   ; 
- D 3 - I - 0x00263C 00:E62C: 35        .byte $35   ; 
- D 3 - I - 0x00263D 00:E62D: 00        .byte $00   ; 
- D 3 - I - 0x00263E 00:E62E: 37        .byte $37   ; 
- D 3 - I - 0x00263F 00:E62F: 86        .byte $86   ; 
- D 3 - I - 0x002640 00:E630: FF        .byte $FF   ; 



_off_002_E631_0A:
- D 3 - I - 0x002641 00:E631: 02        .byte $02   ; 
- D 3 - I - 0x002642 00:E632: 01        .byte $01   ; 
- D 3 - I - 0x002643 00:E633: 04        .byte $04   ; 
- D 3 - I - 0x002644 00:E634: 88        .byte $88   ; 
- D 3 - I - 0x002645 00:E635: 0A        .byte $0A   ; 
- D 3 - I - 0x002646 00:E636: 89        .byte $89   ; 
- D 3 - I - 0x002647 00:E637: 0A        .byte $0A   ; 
- D 3 - I - 0x002648 00:E638: 42        .byte $42   ; 
- D 3 - I - 0x002649 00:E639: 1A        .byte $1A   ; 
- D 3 - I - 0x00264A 00:E63A: 06        .byte $06   ; 
- D 3 - I - 0x00264B 00:E63B: 1A        .byte $1A   ; 
- D 3 - I - 0x00264C 00:E63C: 00        .byte $00   ; 
- D 3 - I - 0x00264D 00:E63D: FF        .byte $FF   ; 



_off_002_E63E_0B:
- D 3 - I - 0x00264E 00:E63E: 04        .byte $04   ; 
- D 3 - I - 0x00264F 00:E63F: 8B        .byte $8B   ; 
- D 3 - I - 0x002650 00:E640: 08        .byte $08   ; 
- D 3 - I - 0x002651 00:E641: 49        .byte $49   ; 
- D 3 - I - 0x002652 00:E642: 18        .byte $18   ; 
- D 3 - I - 0x002653 00:E643: 06        .byte $06   ; 
- D 3 - I - 0x002654 00:E644: 1A        .byte $1A   ; 
- D 3 - I - 0x002655 00:E645: 00        .byte $00   ; 
- D 3 - I - 0x002656 00:E646: 1F        .byte $1F   ; 
- D 3 - I - 0x002657 00:E647: 0B        .byte $0B   ; 
- D 3 - I - 0x002658 00:E648: FF        .byte $FF   ; 



_off_002_E649_0C:
- D 3 - I - 0x002659 00:E649: 0D        .byte $0D   ; 
- D 3 - I - 0x00265A 00:E64A: 0C        .byte $0C   ; 
- D 3 - I - 0x00265B 00:E64B: 17        .byte $17   ; 
- D 3 - I - 0x00265C 00:E64C: 0C        .byte $0C   ; 
- D 3 - I - 0x00265D 00:E64D: 28        .byte $28   ; 
- D 3 - I - 0x00265E 00:E64E: 0C        .byte $0C   ; 
- D 3 - I - 0x00265F 00:E64F: 2B        .byte $2B   ; 
- D 3 - I - 0x002660 00:E650: 0C        .byte $0C   ; 
- D 3 - I - 0x002661 00:E651: FF        .byte $FF   ; 



_off_002_E652_0D:
- D 3 - I - 0x002662 00:E652: 04        .byte $04   ; 
- D 3 - I - 0x002663 00:E653: 8B        .byte $8B   ; 
- D 3 - I - 0x002664 00:E654: 08        .byte $08   ; 
- D 3 - I - 0x002665 00:E655: 49        .byte $49   ; 
- D 3 - I - 0x002666 00:E656: 22        .byte $22   ; 
- D 3 - I - 0x002667 00:E657: 06        .byte $06   ; 
- D 3 - I - 0x002668 00:E658: 22        .byte $22   ; 
- D 3 - I - 0x002669 00:E659: 00        .byte $00   ; 
- D 3 - I - 0x00266A 00:E65A: 22        .byte $22   ; 
- D 3 - I - 0x00266B 00:E65B: 14        .byte $14   ; 
- D 3 - I - 0x00266C 00:E65C: 30        .byte $30   ; 
- D 3 - I - 0x00266D 00:E65D: 0F        .byte $0F   ; 
- D 3 - I - 0x00266E 00:E65E: 31        .byte $31   ; 
- D 3 - I - 0x00266F 00:E65F: 83        .byte $83   ; 
- D 3 - I - 0x002670 00:E660: 32        .byte $32   ; 
- D 3 - I - 0x002671 00:E661: 82        .byte $82   ; 
- D 3 - I - 0x002672 00:E662: 33        .byte $33   ; 
- D 3 - I - 0x002673 00:E663: 4A        .byte $4A   ; 
- D 3 - I - 0x002674 00:E664: 4B        .byte $4B   ; 
- D 3 - I - 0x002675 00:E665: 00        .byte $00   ; 
- D 3 - I - 0x002676 00:E666: FF        .byte $FF   ; 



_off_002_E667_0E:
- D 3 - I - 0x002677 00:E667: 00        .byte $00   ; 
- D 3 - I - 0x002678 00:E668: 0B        .byte $0B   ; 
- D 3 - I - 0x002679 00:E669: 18        .byte $18   ; 
- D 3 - I - 0x00267A 00:E66A: 06        .byte $06   ; 
- D 3 - I - 0x00267B 00:E66B: 18        .byte $18   ; 
- D 3 - I - 0x00267C 00:E66C: 84        .byte $84   ; 
- D 3 - I - 0x00267D 00:E66D: 1A        .byte $1A   ; 
- D 3 - I - 0x00267E 00:E66E: 83        .byte $83   ; 
- D 3 - I - 0x00267F 00:E66F: 1A        .byte $1A   ; 
- D 3 - I - 0x002680 00:E670: 43        .byte $43   ; 
- D 3 - I - 0x002681 00:E671: 3B        .byte $3B   ; 
- D 3 - I - 0x002682 00:E672: 00        .byte $00   ; 
- D 3 - I - 0x002683 00:E673: 42        .byte $42   ; 
- D 3 - I - 0x002684 00:E674: 10        .byte $10   ; 
- D 3 - I - 0x002685 00:E675: 43        .byte $43   ; 
- D 3 - I - 0x002686 00:E676: 85        .byte $85   ; 
- D 3 - I - 0x002687 00:E677: 48        .byte $48   ; 
- D 3 - I - 0x002688 00:E678: 84        .byte $84   ; 
- D 3 - I - 0x002689 00:E679: 4A        .byte $4A   ; 
- D 3 - I - 0x00268A 00:E67A: 83        .byte $83   ; 
- D 3 - I - 0x00268B 00:E67B: 4A        .byte $4A   ; 
- D 3 - I - 0x00268C 00:E67C: 43        .byte $43   ; 
- D 3 - I - 0x00268D 00:E67D: 5A        .byte $5A   ; 
- D 3 - I - 0x00268E 00:E67E: 00        .byte $00   ; 
- D 3 - I - 0x00268F 00:E67F: 5A        .byte $5A   ; 
- D 3 - I - 0x002690 00:E680: 0E        .byte $0E   ; 
- D 3 - I - 0x002691 00:E681: 5C        .byte $5C   ; 
- D 3 - I - 0x002692 00:E682: 86        .byte $86   ; 
- D 3 - I - 0x002693 00:E683: FF        .byte $FF   ; 



_off_002_E684_0F:
- D 3 - I - 0x002694 00:E684: 0E        .byte $0E   ; 
- D 3 - I - 0x002695 00:E685: 0D        .byte $0D   ; 



_off_002_E686_10:
- D 3 - I - 0x002696 00:E686: 0F        .byte $0F   ; 
- D 3 - I - 0x002697 00:E687: 0E        .byte $0E   ; 
- D 3 - I - 0x002698 00:E688: FF        .byte $FF   ; 



_off_002_E689_11:
_off_002_E689_12:
- D 3 - I - 0x002699 00:E689: 00        .byte $00   ; 
- D 3 - I - 0x00269A 00:E68A: 12        .byte $12   ; 
- D 3 - I - 0x00269B 00:E68B: FF        .byte $FF   ; 



_off_002_E68C_13:
- D 3 - I - 0x00269C 00:E68C: 04        .byte $04   ; 
- D 3 - I - 0x00269D 00:E68D: 88        .byte $88   ; 
- D 3 - I - 0x00269E 00:E68E: 0A        .byte $0A   ; 
- D 3 - I - 0x00269F 00:E68F: 89        .byte $89   ; 
- D 3 - I - 0x0026A0 00:E690: 0A        .byte $0A   ; 
- D 3 - I - 0x0026A1 00:E691: 42        .byte $42   ; 
- D 3 - I - 0x0026A2 00:E692: 1A        .byte $1A   ; 
- D 3 - I - 0x0026A3 00:E693: 13        .byte $13   ; 
- D 3 - I - 0x0026A4 00:E694: 1A        .byte $1A   ; 
- D 3 - I - 0x0026A5 00:E695: 00        .byte $00   ; 
- D 3 - I - 0x0026A6 00:E696: FF        .byte $FF   ; 



_off_002_E697_14:
- D 3 - I - 0x0026A7 00:E697: 1E        .byte $1E   ; 
- D 3 - I - 0x0026A8 00:E698: 86        .byte $86   ; 
- D 3 - I - 0x0026A9 00:E699: FF        .byte $FF   ; 



tbl_E69A:
- D 3 - - - 0x0026AA 00:E69A: CB        .byte $CB   ; 
- D 3 - - - 0x0026AB 00:E69B: CD        .byte $CD   ; 
- D 3 - - - 0x0026AC 00:E69C: CC        .byte $CC   ; 
- D 3 - - - 0x0026AD 00:E69D: CE        .byte $CE   ; 
- D 3 - - - 0x0026AE 00:E69E: CB        .byte $CB   ; 
- D 3 - - - 0x0026AF 00:E69F: CB        .byte $CB   ; 
- D 3 - - - 0x0026B0 00:E6A0: CB        .byte $CB   ; 



tbl_E6A1:
- D 3 - - - 0x0026B1 00:E6A1: 22        .byte $22   ; 
- D 3 - - - 0x0026B2 00:E6A2: 64        .byte $64   ; 
- D 3 - - - 0x0026B3 00:E6A3: 62        .byte $62   ; 
- D 3 - - - 0x0026B4 00:E6A4: C0        .byte $C0   ; 
- D 3 - - - 0x0026B5 00:E6A5: 22        .byte $22   ; 
- D 3 - - - 0x0026B6 00:E6A6: 74        .byte $74   ; 
- D 3 - - - 0x0026B7 00:E6A7: 63        .byte $63   ; 
- D 3 - - - 0x0026B8 00:E6A8: E0        .byte $E0   ; 
- D 3 - - - 0x0026B9 00:E6A9: 21        .byte $21   ; 
- D 3 - - - 0x0026BA 00:E6AA: 83        .byte $83   ; 
- D 3 - - - 0x0026BB 00:E6AB: FC        .byte $FC   ; 
- D 3 - - - 0x0026BC 00:E6AC: C0        .byte $C0   ; 



tbl_E6AD:
- D 3 - - - 0x0026BD 00:E6AD: 03        .byte $03   ; 
- D 3 - - - 0x0026BE 00:E6AE: 01        .byte $01   ; 
- D 3 - - - 0x0026BF 00:E6AF: 02        .byte $02   ; 
- D 3 - - - 0x0026C0 00:E6B0: 02        .byte $02   ; 
- D 3 - - - 0x0026C1 00:E6B1: 00        .byte $00   ; 
- D 3 - - - 0x0026C2 00:E6B2: 05        .byte $05   ; 
- D 3 - - - 0x0026C3 00:E6B3: 05        .byte $05   ; 
- D 3 - - - 0x0026C4 00:E6B4: 06        .byte $06   ; 
- - - - - - 0x0026C5 00:E6B5: 04        .byte $04   ; 
- D 3 - - - 0x0026C6 00:E6B6: 04        .byte $04   ; 



tbl_E6B7:
ofs_002_E6B7_11:
- D 3 - - - 0x0026C7 00:E6B7: 63 E9     .word ofs_002_E963_00
- D 3 - - - 0x0026C9 00:E6B9: E3 E8     .word ofs_002_E8E3_01
- D 3 - - - 0x0026CB 00:E6BB: 5D E8     .word ofs_002_E85D_02
- D 3 - - - 0x0026CD 00:E6BD: 6A E8     .word ofs_002_E86A_03
- D 3 - - - 0x0026CF 00:E6BF: 45 E8     .word ofs_002_E845_04
- D 3 - - - 0x0026D1 00:E6C1: 54 E8     .word ofs_002_E854_05
- D 3 - - - 0x0026D3 00:E6C3: 34 E9     .word ofs_002_E934_06
- D 3 - - - 0x0026D5 00:E6C5: 18 E8     .word ofs_002_E818_07
- D 3 - - - 0x0026D7 00:E6C7: 8F EA     .word ofs_002_EA8F_08
- D 3 - - - 0x0026D9 00:E6C9: 79 E8     .word ofs_002_E879_09
- D 3 - - - 0x0026DB 00:E6CB: 9D E8     .word ofs_002_E89D_0A
- D 3 - - - 0x0026DD 00:E6CD: EE E8     .word ofs_002_E8EE_0B
- D 3 - - - 0x0026DF 00:E6CF: FF E8     .word ofs_002_E8FF_0C
- D 3 - - - 0x0026E1 00:E6D1: 56 E9     .word ofs_002_E956_0D
- D 3 - - - 0x0026E3 00:E6D3: BF E8     .word ofs_002_E8BF_0E
- D 3 - - - 0x0026E5 00:E6D5: C6 E8     .word ofs_002_E8C6_0F
- D 3 - - - 0x0026E7 00:E6D7: FA E8     .word ofs_002_E8FA_10
- - - - - - 0x0026E9 00:E6D9: B7 E6     .word ofs_002_E6B7_11   ; unused
- D 3 - - - 0x0026EB 00:E6DB: D3 E8     .word ofs_002_E8D3_12
- D 3 - - - 0x0026ED 00:E6DD: E7 E8     .word ofs_002_E8E7_13
- D 3 - - - 0x0026EF 00:E6DF: F5 E8     .word ofs_002_E8F5_14



tbl_E6E1:
- D 3 - - - 0x0026F1 00:E6E1: 08        .byte $08   ; 
- D 3 - - - 0x0026F2 00:E6E2: 07        .byte $07   ; 
- D 3 - - - 0x0026F3 00:E6E3: 05        .byte $05   ; 
- D 3 - - - 0x0026F4 00:E6E4: 01        .byte $01   ; 
- D 3 - - - 0x0026F5 00:E6E5: 0B        .byte $0B   ; 
- D 3 - - - 0x0026F6 00:E6E6: 06        .byte $06   ; 
- D 3 - - - 0x0026F7 00:E6E7: 0A        .byte $0A   ; 
- D 3 - - - 0x0026F8 00:E6E8: 0E        .byte $0E   ; 
- D 3 - - - 0x0026F9 00:E6E9: 03        .byte $03   ; 
- D 3 - - - 0x0026FA 00:E6EA: 04        .byte $04   ; 
- D 3 - - - 0x0026FB 00:E6EB: 0C        .byte $0C   ; 
- D 3 - - - 0x0026FC 00:E6EC: 0D        .byte $0D   ; 
- D 3 - - - 0x0026FD 00:E6ED: 0F        .byte $0F   ; 
- D 3 - - - 0x0026FE 00:E6EE: 10        .byte $10   ; 
- D 3 - - - 0x0026FF 00:E6EF: 12        .byte $12   ; 
- D 3 - - - 0x002700 00:E6F0: 13        .byte $13   ; 
- D 3 - - - 0x002701 00:E6F1: 11        .byte $11   ; 
- D 3 - - - 0x002702 00:E6F2: 15        .byte $15   ; 
- D 3 - - - 0x002703 00:E6F3: 14        .byte $14   ; 
- D 3 - - - 0x002704 00:E6F4: 00        .byte $00   ; 
- D 3 - - - 0x002705 00:E6F5: 09        .byte $09   ; 



tbl_E6F6_spr_X:
- D 3 - - - 0x002706 00:E6F6: 18        .byte $18   ; 
- D 3 - - - 0x002707 00:E6F7: 20        .byte $20   ; 
- D 3 - - - 0x002708 00:E6F8: 28        .byte $28   ; 
- D 3 - - - 0x002709 00:E6F9: 30        .byte $30   ; 
- D 3 - - - 0x00270A 00:E6FA: 38        .byte $38   ; 



tbl_E6FB:
- D 3 - - - 0x00270B 00:E6FB: 40        .byte $40   ; 
- D 3 - - - 0x00270C 00:E6FC: 48        .byte $48   ; 
- D 3 - - - 0x00270D 00:E6FD: 50        .byte $50   ; 
- D 3 - - - 0x00270E 00:E6FE: 58        .byte $58   ; 
- D 3 - - - 0x00270F 00:E6FF: 60        .byte $60   ; 
- D 3 - - - 0x002710 00:E700: 68        .byte $68   ; 
- D 3 - - - 0x002711 00:E701: 70        .byte $70   ; 
- D 3 - - - 0x002712 00:E702: 78        .byte $78   ; 



tbl_E703:
- D 3 - - - 0x002713 00:E703: 80        .byte $80   ; 
- D 3 - - - 0x002714 00:E704: 88        .byte $88   ; 
- D 3 - - - 0x002715 00:E705: 90        .byte $90   ; 
- D 3 - - - 0x002716 00:E706: 98        .byte $98   ; 
- D 3 - - - 0x002717 00:E707: A0        .byte $A0   ; 
- D 3 - - - 0x002718 00:E708: A8        .byte $A8   ; 
- D 3 - - - 0x002719 00:E709: B8        .byte $B8   ; 
- D 3 - - - 0x00271A 00:E70A: CC        .byte $CC   ; 



sub_E70B:
C - - - - - 0x00271B 00:E70B: A2 03     LDX #$03
bra_E70D_loop:
C - - - - - 0x00271D 00:E70D: B5 60     LDA ram_0060,X
C - - - - - 0x00271F 00:E70F: F0 1A     BEQ bra_E72B
C - - - - - 0x002721 00:E711: B5 64     LDA ram_0064,X
C - - - - - 0x002723 00:E713: 38        SEC
C - - - - - 0x002724 00:E714: F5 60     SBC ram_0060,X
C - - - - - 0x002726 00:E716: F0 06     BEQ bra_E71E
C - - - - - 0x002728 00:E718: 30 04     BMI bra_E71E
C - - - - - 0x00272A 00:E71A: 95 64     STA ram_0064,X
C - - - - - 0x00272C 00:E71C: D0 0D     BNE bra_E72B    ; jmp
bra_E71E:
C - - - - - 0x00272E 00:E71E: 18        CLC
C - - - - - 0x00272F 00:E71F: 69 08     ADC #$08
C - - - - - 0x002731 00:E721: 95 64     STA ram_0064,X
C - - - - - 0x002733 00:E723: F6 E0     INC ram_00E0,X
C - - - - - 0x002735 00:E725: B5 E0     LDA ram_00E0,X
C - - - - - 0x002737 00:E727: 29 3F     AND #$3F
C - - - - - 0x002739 00:E729: 95 E0     STA ram_00E0,X
bra_E72B:
; bzk optimize, start loop at E72D
C - - - - - 0x00273B 00:E72B: A9 00     LDA #$00
C - - - - - 0x00273D 00:E72D: 95 D8     STA ram_00D8,X
C - - - - - 0x00273F 00:E72F: CA        DEX
C - - - - - 0x002740 00:E730: 10 DB     BPL bra_E70D_loop
C - - - - - 0x002742 00:E732: 60        RTS



sub_E733:
C - - - - - 0x002743 00:E733: A2 03     LDX #$03
bra_E735_loop:
C - - - - - 0x002745 00:E735: 20 3B E7  JSR sub_E73B
C - - - - - 0x002748 00:E738: CA        DEX
C - - - - - 0x002749 00:E739: D0 FA     BNE bra_E735_loop
sub_E73B:
C - - - - - 0x00274B 00:E73B: B5 60     LDA ram_0060,X
C - - - - - 0x00274D 00:E73D: 18        CLC
C - - - - - 0x00274E 00:E73E: 75 C8     ADC ram_00C8,X
C - - - - - 0x002750 00:E740: 95 C8     STA ram_00C8,X
C - - - - - 0x002752 00:E742: B5 58     LDA ram_0058,X
C - - - - - 0x002754 00:E744: D0 1C     BNE bra_E762_loop
C - - - - - 0x002756 00:E746: B5 C0     LDA ram_00C0,X
C - - - - - 0x002758 00:E748: 38        SEC
C - - - - - 0x002759 00:E749: E9 40     SBC #$40
C - - - - - 0x00275B 00:E74B: 30 06     BMI bra_E753_RTS
C - - - - - 0x00275D 00:E74D: 4A        LSR
C - - - - - 0x00275E 00:E74E: 4A        LSR
C - - - - - 0x00275F 00:E74F: C9 16     CMP #$16
C - - - - - 0x002761 00:E751: 90 01     BCC bra_E754
bra_E753_RTS:
C - - - - - 0x002763 00:E753: 60        RTS
bra_E754:
C - - - - - 0x002764 00:E754: 95 58     STA ram_0058,X
C - - - - - 0x002766 00:E756: F6 58     INC ram_0058,X
C - - - - - 0x002768 00:E758: A9 00     LDA #$00
C - - - - - 0x00276A 00:E75A: 95 C4     STA ram_00C4,X
C - - - - - 0x00276C 00:E75C: B5 64     LDA ram_0064,X
C - - - - - 0x00276E 00:E75E: 95 C8     STA ram_00C8,X
C - - - - - 0x002770 00:E760: D6 C8     DEC ram_00C8,X
bra_E762_loop:
C - - - - - 0x002772 00:E762: B4 58     LDY ram_0058,X
C - - - - - 0x002774 00:E764: B9 59 E5  LDA tbl_E55A_lo - $01,Y
C - - - - - 0x002777 00:E767: 85 0A     STA ram_000A
C - - - - - 0x002779 00:E769: B9 6E E5  LDA tbl_E56F_hi - $01,Y
C - - - - - 0x00277C 00:E76C: 85 0B     STA ram_000B
C - - - - - 0x00277E 00:E76E: B4 C4     LDY ram_00C4,X
C - - - - - 0x002780 00:E770: B1 0A     LDA (ram_000A),Y
C - - - - - 0x002782 00:E772: C9 FF     CMP #$FF
C - - - - - 0x002784 00:E774: F0 5A     BEQ bra_E7D0
C - - - - - 0x002786 00:E776: 85 0F     STA ram_000F
C - - - - - 0x002788 00:E778: D5 C8     CMP ram_00C8,X
C - - - - - 0x00278A 00:E77A: F0 02     BEQ bra_E77E
C - - - - - 0x00278C 00:E77C: B0 D5     BCS bra_E753_RTS
bra_E77E:
C - - - - - 0x00278E 00:E77E: C8        INY
C - - - - - 0x00278F 00:E77F: B1 0A     LDA (ram_000A),Y
C - - - - - 0x002791 00:E781: 2C 03 E7  BIT tbl_E703
C - - - - - 0x002794 00:E784: D0 1D     BNE bra_E7A3
C - - - - - 0x002796 00:E786: 2C FB E6  BIT tbl_E6FB
C - - - - - 0x002799 00:E789: D0 67     BNE bra_E7F2
C - - - - - 0x00279B 00:E78B: 20 94 E7  JSR sub_E794
C - - - - - 0x00279E 00:E78E: F6 C4     INC ram_00C4,X
C - - - - - 0x0027A0 00:E790: F6 C4     INC ram_00C4,X
C - - - - - 0x0027A2 00:E792: D0 CE     BNE bra_E762_loop   ; jmp



sub_E794:
C - - - - - 0x0027A4 00:E794: 0A        ASL
C - - - - - 0x0027A5 00:E795: A8        TAY
C - - - - - 0x0027A6 00:E796: B9 B7 E6  LDA tbl_E6B7,Y
C - - - - - 0x0027A9 00:E799: 85 00     STA ram_0000
C - - - - - 0x0027AB 00:E79B: B9 B8 E6  LDA tbl_E6B7 + $01,Y
C - - - - - 0x0027AE 00:E79E: 85 01     STA ram_0001
C - - - - - 0x0027B0 00:E7A0: 6C 00 00  JMP (ram_0000)



bra_E7A3:
C - - - - - 0x0027B3 00:E7A3: B5 B0     LDA ram_00B0,X
C - - - - - 0x0027B5 00:E7A5: 15 98     ORA ram_0098,X
C - - - - - 0x0027B7 00:E7A7: D0 21     BNE bra_E7CA
C - - - - - 0x0027B9 00:E7A9: B1 0A     LDA (ram_000A),Y
C - - - - - 0x0027BB 00:E7AB: 29 0F     AND #$0F
C - - - - - 0x0027BD 00:E7AD: 85 00     STA ram_0000
C - - - - - 0x0027BF 00:E7AF: B5 A4     LDA ram_00A4,X
C - - - - - 0x0027C1 00:E7B1: C9 01     CMP #$01
C - - - - - 0x0027C3 00:E7B3: F0 15     BEQ bra_E7CA
C - - - - - 0x0027C5 00:E7B5: A5 00     LDA ram_0000
C - - - - - 0x0027C7 00:E7B7: 95 AC     STA ram_00AC,X
C - - - - - 0x0027C9 00:E7B9: B5 58     LDA ram_0058,X
C - - - - - 0x0027CB 00:E7BB: C9 03     CMP #$03
C - - - - - 0x0027CD 00:E7BD: F0 0B     BEQ bra_E7CA
C - - - - - 0x0027CF 00:E7BF: B5 AC     LDA ram_00AC,X
C - - - - - 0x0027D1 00:E7C1: 38        SEC
C - - - - - 0x0027D2 00:E7C2: E9 02     SBC #$02
C - - - - - 0x0027D4 00:E7C4: A8        TAY
C - - - - - 0x0027D5 00:E7C5: B9 AD E6  LDA tbl_E6AD,Y
C - - - - - 0x0027D8 00:E7C8: 95 D4     STA ram_00D4,X
bra_E7CA:
C - - - - - 0x0027DA 00:E7CA: F6 C4     INC ram_00C4,X
C - - - - - 0x0027DC 00:E7CC: F6 C4     INC ram_00C4,X
C - - - - - 0x0027DE 00:E7CE: D0 92     BNE bra_E762_loop   ; jmp?



bra_E7D0:
C - - - - - 0x0027E0 00:E7D0: A9 00     LDA #$00
C - - - - - 0x0027E2 00:E7D2: 95 58     STA ram_0058,X
C - - - - - 0x0027E4 00:E7D4: 95 D4     STA ram_00D4,X
C - - - - - 0x0027E6 00:E7D6: B5 A0     LDA ram_00A0,X
C - - - - - 0x0027E8 00:E7D8: D0 12     BNE bra_E7EC
C - - - - - 0x0027EA 00:E7DA: B5 A4     LDA ram_00A4,X
C - - - - - 0x0027EC 00:E7DC: C9 01     CMP #$01
C - - - - - 0x0027EE 00:E7DE: F0 0C     BEQ bra_E7EC
C - - - - - 0x0027F0 00:E7E0: A9 00     LDA #$00
C - - - - - 0x0027F2 00:E7E2: 95 BC     STA ram_00BC,X
C - - - - - 0x0027F4 00:E7E4: B5 A4     LDA ram_00A4,X
C - - - - - 0x0027F6 00:E7E6: C9 02     CMP #$02
C - - - - - 0x0027F8 00:E7E8: D0 02     BNE bra_E7EC
C - - - - - 0x0027FA 00:E7EA: F6 A4     INC ram_00A4,X
bra_E7EC:
C - - - - - 0x0027FC 00:E7EC: A9 00     LDA #$00
C - - - - - 0x0027FE 00:E7EE: 9D 6C 03  STA ram_036C,X
C - - - - - 0x002801 00:E7F1: 60        RTS
bra_E7F2:
C - - - - - 0x002802 00:E7F2: 29 0F     AND #$0F
C - - - - - 0x002804 00:E7F4: 95 CC     STA ram_00CC,X
C - - - - - 0x002806 00:E7F6: A5 0F     LDA ram_000F
C - - - - - 0x002808 00:E7F8: 95 D0     STA ram_00D0,X
C - - - - - 0x00280A 00:E7FA: 10 CE     BPL bra_E7CA    ; jmp?



sub_E7FC:
C - - - - - 0x00280C 00:E7FC: BC 60 03  LDY ram_0360,X
sub_E7FF:
C - - - - - 0x00280F 00:E7FF: B5 E0     LDA ram_00E0,X
C - - - - - 0x002811 00:E801: 85 08     STA ram_0008
sub_E803:
C - - - - - 0x002813 00:E803: 20 0D E8  JSR sub_E80D
C - - - - - 0x002816 00:E806: 84 07     STY ram_0007
C - - - - - 0x002818 00:E808: A4 08     LDY ram_0008
C - - - - - 0x00281A 00:E80A: B1 03     LDA (ram_0003),Y
C - - - - - 0x00281C 00:E80C: 60        RTS



sub_E80D:
C - - - - - 0x00281D 00:E80D: B9 4E E5  LDA tbl_E54E_lo,Y
C - - - - - 0x002820 00:E810: 85 03     STA ram_0003
C - - - - - 0x002822 00:E812: B9 54 E5  LDA tbl_E554_hi,Y
C - - - - - 0x002825 00:E815: 85 04     STA ram_0004
C - - - - - 0x002827 00:E817: 60        RTS



ofs_002_E818_07:
C - - J - - 0x002828 00:E818: B5 B0     LDA ram_00B0,X
C - - - - - 0x00282A 00:E81A: D0 19     BNE bra_E835_RTS
C - - - - - 0x00282C 00:E81C: B5 AC     LDA ram_00AC,X
C - - - - - 0x00282E 00:E81E: C9 07     CMP #$07
C - - - - - 0x002830 00:E820: 10 13     BPL bra_E835_RTS
C - - - - - 0x002832 00:E822: B5 94     LDA ram_0094,X
C - - - - - 0x002834 00:E824: C9 03     CMP #$03
C - - - - - 0x002836 00:E826: B0 09     BCS bra_E831
C - - - - - 0x002838 00:E828: C9 02     CMP #$02
C - - - - - 0x00283A 00:E82A: D0 09     BNE bra_E835_RTS
- - - - - - 0x00283C 00:E82C: B5 90     LDA ram_0090,X
- - - - - - 0x00283E 00:E82E: 0A        ASL
- - - - - - 0x00283F 00:E82F: 90 04     BCC bra_E835_RTS
bra_E831:
C - - - - - 0x002841 00:E831: A9 FF     LDA #$FF
C - - - - - 0x002843 00:E833: 95 98     STA ram_0098,X
bra_E835_RTS:
C - - - - - 0x002845 00:E835: 60        RTS



sub_E836:
C - - - - - 0x002846 00:E836: A2 03     LDX #$03
bra_E838_loop:
C - - - - - 0x002848 00:E838: B5 B0     LDA ram_00B0,X
C - - - - - 0x00284A 00:E83A: D0 05     BNE bra_E841
C - - - - - 0x00284C 00:E83C: 20 97 DC  JSR sub_DC97
C - - - - - 0x00284F 00:E83F: 95 8C     STA ram_008C,X
bra_E841:
C - - - - - 0x002851 00:E841: CA        DEX
C - - - - - 0x002852 00:E842: 10 F4     BPL bra_E838_loop
C - - - - - 0x002854 00:E844: 60        RTS



ofs_002_E845_04:
C - - J - - 0x002855 00:E845: A9 80     LDA #$80
C - - - - - 0x002857 00:E847: 95 D8     STA ram_00D8,X
C - - - - - 0x002859 00:E849: A9 05     LDA #$05
C - - - - - 0x00285B 00:E84B: 20 93 E8  JSR sub_E893
C - - - - - 0x00285E 00:E84E: 4A        LSR
sub_E84F:
loc_E84F:
C D 3 - - - 0x00285F 00:E84F: 95 BC     STA ram_00BC,X
C - - - - - 0x002861 00:E851: 95 E4     STA ram_00E4,X
C - - - - - 0x002863 00:E853: 60        RTS



ofs_002_E854_05:
C - - J - - 0x002864 00:E854: A9 02     LDA #$02
C - - - - - 0x002866 00:E856: 20 93 E8  JSR sub_E893
C - - - - - 0x002869 00:E859: 4A        LSR
C - - - - - 0x00286A 00:E85A: 4C 6F E8  JMP loc_E86F



ofs_002_E85D_02:
C - - J - - 0x00286D 00:E85D: A9 06     LDA #$06
C - - - - - 0x00286F 00:E85F: 20 93 E8  JSR sub_E893
C - - - - - 0x002872 00:E862: 20 4F E8  JSR sub_E84F
C - - - - - 0x002875 00:E865: A9 60     LDA #$60
C - - - - - 0x002877 00:E867: 95 D8     STA ram_00D8,X
C - - - - - 0x002879 00:E869: 60        RTS



ofs_002_E86A_03:
C - - J - - 0x00287A 00:E86A: A9 01     LDA #$01
C - - - - - 0x00287C 00:E86C: 20 93 E8  JSR sub_E893
loc_E86F:
sub_E86F:
C D 3 - - - 0x00287F 00:E86F: 85 00     STA ram_0000
C - - - - - 0x002881 00:E871: B5 E4     LDA ram_00E4,X
C - - - - - 0x002883 00:E873: 38        SEC
C - - - - - 0x002884 00:E874: E5 00     SBC ram_0000
C - - - - - 0x002886 00:E876: 95 BC     STA ram_00BC,X
C - - - - - 0x002888 00:E878: 60        RTS



ofs_002_E879_09:
C - - J - - 0x002889 00:E879: A9 04     LDA #$04
C - - - - - 0x00288B 00:E87B: 20 93 E8  JSR sub_E893
C - - - - - 0x00288E 00:E87E: 0A        ASL
C - - - - - 0x00288F 00:E87F: 20 4F E8  JSR sub_E84F
C - - - - - 0x002892 00:E882: B5 A0     LDA ram_00A0,X
C - - - - - 0x002894 00:E884: F0 08     BEQ bra_E88E
C - - - - - 0x002896 00:E886: B5 BC     LDA ram_00BC,X
C - - - - - 0x002898 00:E888: 18        CLC
C - - - - - 0x002899 00:E889: 69 10     ADC #$10
C - - - - - 0x00289B 00:E88B: 20 4F E8  JSR sub_E84F
bra_E88E:
C - - - - - 0x00289E 00:E88E: A9 40     LDA #$40
C - - - - - 0x0028A0 00:E890: 95 D8     STA ram_00D8,X
C - - - - - 0x0028A2 00:E892: 60        RTS



sub_E893:
C - - - - - 0x0028A3 00:E893: 95 D4     STA ram_00D4,X
C - - - - - 0x0028A5 00:E895: 95 B4     STA ram_00B4,X
C - - - - - 0x0028A7 00:E897: B5 C8     LDA ram_00C8,X
C - - - - - 0x0028A9 00:E899: 38        SEC
C - - - - - 0x0028AA 00:E89A: F5 D0     SBC ram_00D0,X
C - - - - - 0x0028AC 00:E89C: 60        RTS



ofs_002_E89D_0A:
C - - J - - 0x0028AD 00:E89D: B5 A4     LDA ram_00A4,X
C - - - - - 0x0028AF 00:E89F: F0 04     BEQ bra_E8A5
C - - - - - 0x0028B1 00:E8A1: C9 01     CMP #$01
C - - - - - 0x0028B3 00:E8A3: F0 19     BEQ bra_E8BE_RTS
bra_E8A5:
C - - - - - 0x0028B5 00:E8A5: A9 03     LDA #$03
C - - - - - 0x0028B7 00:E8A7: 20 93 E8  JSR sub_E893
C - - - - - 0x0028BA 00:E8AA: 0A        ASL
C - - - - - 0x0028BB 00:E8AB: 20 6F E8  JSR sub_E86F
C - - - - - 0x0028BE 00:E8AE: B5 A4     LDA ram_00A4,X
C - - - - - 0x0028C0 00:E8B0: C9 04     CMP #$04
C - - - - - 0x0028C2 00:E8B2: D0 0A     BNE bra_E8BE_RTS
- - - - - - 0x0028C4 00:E8B4: 20 06 DD  JSR sub_DD06
- - - - - - 0x0028C7 00:E8B7: A9 02     LDA #$02
- - - - - - 0x0028C9 00:E8B9: 95 A4     STA ram_00A4,X
- - - - - - 0x0028CB 00:E8BB: 9D 64 03  STA ram_0364,X
bra_E8BE_RTS:
C - - - - - 0x0028CE 00:E8BE: 60        RTS



ofs_002_E8BF_0E:
C - - J - - 0x0028CF 00:E8BF: A9 00     LDA #$00
C - - - - - 0x0028D1 00:E8C1: 95 A4     STA ram_00A4,X
bra_E8C3:
C - - - - - 0x0028D3 00:E8C3: 95 A0     STA ram_00A0,X
C - - - - - 0x0028D5 00:E8C5: 60        RTS



ofs_002_E8C6_0F:
C - - J - - 0x0028D6 00:E8C6: A9 01     LDA #$01
C - - - - - 0x0028D8 00:E8C8: 95 A4     STA ram_00A4,X
C - - - - - 0x0028DA 00:E8CA: B5 B8     LDA ram_00B8,X
C - - - - - 0x0028DC 00:E8CC: C9 20     CMP #$20
C - - - - - 0x0028DE 00:E8CE: B0 02     BCS bra_E8D2_RTS
C - - - - - 0x0028E0 00:E8D0: F6 A4     INC ram_00A4,X
bra_E8D2_RTS:
C - - - - - 0x0028E2 00:E8D2: 60        RTS



ofs_002_E8D3_12:
C - - J - - 0x0028E3 00:E8D3: 8A        TXA
C - - - - - 0x0028E4 00:E8D4: 15 B0     ORA ram_00B0,X
C - - - - - 0x0028E6 00:E8D6: 0D E0 03  ORA ram_03E0
C - - - - - 0x0028E9 00:E8D9: 05 3C     ORA ram_003C
C - - - - - 0x0028EB 00:E8DB: D0 05     BNE bra_E8E2_RTS
C - - - - - 0x0028ED 00:E8DD: A9 08     LDA #$08
C - - - - - 0x0028EF 00:E8DF: 8D B6 03  STA ram_03B6
bra_E8E2_RTS:
C - - - - - 0x0028F2 00:E8E2: 60        RTS



ofs_002_E8E3_01:
C - - J - - 0x0028F3 00:E8E3: A9 01     LDA #$01
C - - - - - 0x0028F5 00:E8E5: D0 DC     BNE bra_E8C3    ; jmp



ofs_002_E8E7_13:
C - - J - - 0x0028F7 00:E8E7: B5 B0     LDA ram_00B0,X
C - - - - - 0x0028F9 00:E8E9: D0 F7     BNE bra_E8E2_RTS
C - - - - - 0x0028FB 00:E8EB: 4C FE DC  JMP loc_DCFE



ofs_002_E8EE_0B:
C - - J - - 0x0028FE 00:E8EE: A9 02     LDA #$02
C - - - - - 0x002900 00:E8F0: 95 A0     STA ram_00A0,X
C - - - - - 0x002902 00:E8F2: 4A        LSR
C - - - - - 0x002903 00:E8F3: 95 D8     STA ram_00D8,X
ofs_002_E8F5_14:
C - - - - - 0x002905 00:E8F5: A9 30     LDA #$30
C - - - - - 0x002907 00:E8F7: 4C 4F E8  JMP loc_E84F



ofs_002_E8FA_10:
C - - J - - 0x00290A 00:E8FA: A9 10     LDA #$10
C - - - - - 0x00290C 00:E8FC: 4C 4F E8  JMP loc_E84F



ofs_002_E8FF_0C:
C - - J - - 0x00290F 00:E8FF: B5 B0     LDA ram_00B0,X
C - - - - - 0x002911 00:E901: D0 23     BNE bra_E926_RTS
C - - - - - 0x002913 00:E903: B5 A4     LDA ram_00A4,X
C - - - - - 0x002915 00:E905: F0 04     BEQ bra_E90B
C - - - - - 0x002917 00:E907: 4A        LSR
C - - - - - 0x002918 00:E908: 4A        LSR
C - - - - - 0x002919 00:E909: 90 1B     BCC bra_E926_RTS
bra_E90B:
C - - - - - 0x00291B 00:E90B: 84 01     STY ram_0001
C - - - - - 0x00291D 00:E90D: B5 94     LDA ram_0094,X
C - - - - - 0x00291F 00:E90F: F0 13     BEQ bra_E924
C - - - - - 0x002921 00:E911: A0 04     LDY #$04
C - - - - - 0x002923 00:E913: B5 5C     LDA ram_005C,X
C - - - - - 0x002925 00:E915: 0A        ASL
C - - - - - 0x002926 00:E916: 0A        ASL
C - - - - - 0x002927 00:E917: 90 01     BCC bra_E91A
C - - - - - 0x002929 00:E919: 88        DEY
bra_E91A:
C - - - - - 0x00292A 00:E91A: A9 01     LDA #$01
C - - - - - 0x00292C 00:E91C: 9D 6C 03  STA ram_036C,X
C - - - - - 0x00292F 00:E91F: C8        INY
C - - - - - 0x002930 00:E920: C8        INY
C - - - - - 0x002931 00:E921: 20 5C CE  JSR sub_CE5C
bra_E924:
C - - - - - 0x002934 00:E924: A4 01     LDY ram_0001
bra_E926_RTS:
C - - - - - 0x002936 00:E926: 60        RTS



sub_E927:
C - - - - - 0x002937 00:E927: A2 03     LDX #$03
bra_E929_loop:
C - - - - - 0x002939 00:E929: B5 CC     LDA ram_00CC,X
C - - - - - 0x00293B 00:E92B: F0 03     BEQ bra_E930
C - - - - - 0x00293D 00:E92D: 20 94 E7  JSR sub_E794
bra_E930:
C - - - - - 0x002940 00:E930: CA        DEX
C - - - - - 0x002941 00:E931: 10 F6     BPL bra_E929_loop
bra_E933_RTS:
C - - - - - 0x002943 00:E933: 60        RTS



ofs_002_E934_06:
C - - J - - 0x002944 00:E934: B5 B0     LDA ram_00B0,X
C - - - - - 0x002946 00:E936: D0 FB     BNE bra_E933_RTS
C - - - - - 0x002948 00:E938: A0 00     LDY #$00
C - - - - - 0x00294A 00:E93A: B5 94     LDA ram_0094,X
C - - - - - 0x00294C 00:E93C: F0 F5     BEQ bra_E933_RTS
C - - - - - 0x00294E 00:E93E: C9 02     CMP #$02
C - - - - - 0x002950 00:E940: B0 07     BCS bra_E949
C - - - - - 0x002952 00:E942: B5 90     LDA ram_0090,X
C - - - - - 0x002954 00:E944: D5 D8     CMP ram_00D8,X
C - - - - - 0x002956 00:E946: B0 01     BCS bra_E949
- - - - - - 0x002958 00:E948: C8        INY
bra_E949:
C - - - - - 0x002959 00:E949: 98        TYA
C - - - - - 0x00295A 00:E94A: 9D 88 03  STA ram_0388,X
C - - - - - 0x00295D 00:E94D: B5 A0     LDA ram_00A0,X
C - - - - - 0x00295F 00:E94F: C9 02     CMP #$02
C - - - - - 0x002961 00:E951: F0 0D     BEQ bra_E960
C - - - - - 0x002963 00:E953: 4C FA DC  JMP loc_DCFA



ofs_002_E956_0D:
C - - J - - 0x002966 00:E956: B5 A4     LDA ram_00A4,X
C - - - - - 0x002968 00:E958: C9 01     CMP #$01
C - - - - - 0x00296A 00:E95A: D0 D7     BNE bra_E933_RTS
C - - - - - 0x00296C 00:E95C: A9 00     LDA #$00
C - - - - - 0x00296E 00:E95E: 95 BC     STA ram_00BC,X
bra_E960:
C - - - - - 0x002970 00:E960: 4C 06 DD  JMP loc_DD06



ofs_002_E963_00:
C - - J - - 0x002973 00:E963: A9 00     LDA #$00
C - - - - - 0x002975 00:E965: 95 CC     STA ram_00CC,X
C - - - - - 0x002977 00:E967: 95 D4     STA ram_00D4,X
C - - - - - 0x002979 00:E969: 95 B4     STA ram_00B4,X
C - - - - - 0x00297B 00:E96B: 60        RTS



sub_E96C:
C - - - - - 0x00297C 00:E96C: A2 03     LDX #$03
loc_E96E_loop:
C D 3 - - - 0x00297E 00:E96E: B5 58     LDA ram_0058,X
C - - - - - 0x002980 00:E970: C9 15     CMP #$15
C - - - - - 0x002982 00:E972: F0 0B     BEQ bra_E97F
C - - - - - 0x002984 00:E974: C9 14     CMP #$14
C - - - - - 0x002986 00:E976: F0 07     BEQ bra_E97F
C - - - - - 0x002988 00:E978: B5 B8     LDA ram_00B8,X
C - - - - - 0x00298A 00:E97A: 18        CLC
C - - - - - 0x00298B 00:E97B: 75 DC     ADC ram_00DC,X
C - - - - - 0x00298D 00:E97D: 95 B8     STA ram_00B8,X
bra_E97F:
C - - - - - 0x00298F 00:E97F: A0 03     LDY #$03
bra_E981_loop:
C - - - - - 0x002991 00:E981: B5 B8     LDA ram_00B8,X
C - - - - - 0x002993 00:E983: D9 3D E5  CMP tbl_E53D,Y
C - - - - - 0x002996 00:E986: F0 79     BEQ bra_EA01
C - - - - - 0x002998 00:E988: 88        DEY
C - - - - - 0x002999 00:E989: 10 F6     BPL bra_E981_loop
C - - - - - 0x00299B 00:E98B: B5 A4     LDA ram_00A4,X
C - - - - - 0x00299D 00:E98D: F0 35     BEQ bra_E9C4
C - - - - - 0x00299F 00:E98F: C9 01     CMP #$01
C - - - - - 0x0029A1 00:E991: D0 25     BNE bra_E9B8
C - - - - - 0x0029A3 00:E993: B5 B8     LDA ram_00B8,X
C - - - - - 0x0029A5 00:E995: C9 20     CMP #$20
C - - - - - 0x0029A7 00:E997: B0 2B     BCS bra_E9C4
C - - - - - 0x0029A9 00:E999: A9 04     LDA #$04
C - - - - - 0x0029AB 00:E99B: 95 A4     STA ram_00A4,X
C - - - - - 0x0029AD 00:E99D: B5 58     LDA ram_0058,X
C - - - - - 0x0029AF 00:E99F: F0 0C     BEQ bra_E9AD
- - - - - - 0x0029B1 00:E9A1: C9 12     CMP #$12
- - - - - - 0x0029B3 00:E9A3: F0 08     BEQ bra_E9AD
- - - - - - 0x0029B5 00:E9A5: C9 10     CMP #$10
- - - - - - 0x0029B7 00:E9A7: F0 04     BEQ bra_E9AD
- - - - - - 0x0029B9 00:E9A9: C9 0D     CMP #$0D
- - - - - - 0x0029BB 00:E9AB: D0 36     BNE bra_E9E3
bra_E9AD:
C - - - - - 0x0029BD 00:E9AD: A9 00     LDA #$00
C - - - - - 0x0029BF 00:E9AF: 95 BC     STA ram_00BC,X
C - - - - - 0x0029C1 00:E9B1: 20 06 DD  JSR sub_DD06
C - - - - - 0x0029C4 00:E9B4: D6 A4     DEC ram_00A4,X
C - - - - - 0x0029C6 00:E9B6: D0 2B     BNE bra_E9E3
bra_E9B8:
C - - - - - 0x0029C8 00:E9B8: C9 03     CMP #$03
C - - - - - 0x0029CA 00:E9BA: F0 08     BEQ bra_E9C4
C - - - - - 0x0029CC 00:E9BC: B5 B8     LDA ram_00B8,X
C - - - - - 0x0029CE 00:E9BE: C9 20     CMP #$20
C - - - - - 0x0029D0 00:E9C0: 90 02     BCC bra_E9C4
- - - - - - 0x0029D2 00:E9C2: D6 B8     DEC ram_00B8,X
bra_E9C4:
C - - - - - 0x0029D4 00:E9C4: B5 B8     LDA ram_00B8,X
C - - - - - 0x0029D6 00:E9C6: C9 08     CMP #$08
C - - - - - 0x0029D8 00:E9C8: 90 1F     BCC bra_E9E9
C - - - - - 0x0029DA 00:E9CA: C9 3A     CMP #$3A
C - - - - - 0x0029DC 00:E9CC: 90 15     BCC bra_E9E3
C - - - - - 0x0029DE 00:E9CE: A9 39     LDA #$39
C - - - - - 0x0029E0 00:E9D0: 95 B8     STA ram_00B8,X
bra_E9D2:
C - - - - - 0x0029E2 00:E9D2: B5 9C     LDA ram_009C,X
C - - - - - 0x0029E4 00:E9D4: 1D E0 03  ORA ram_03E0,X
C - - - - - 0x0029E7 00:E9D7: D0 0A     BNE bra_E9E3
bra_E9D9:
C - - - - - 0x0029E9 00:E9D9: B5 DC     LDA ram_00DC,X
C - - - - - 0x0029EB 00:E9DB: D0 02     BNE bra_E9DF
C - - - - - 0x0029ED 00:E9DD: A9 FF     LDA #$FF
bra_E9DF:
C - - - - - 0x0029EF 00:E9DF: 49 FE     EOR #$FE
C - - - - - 0x0029F1 00:E9E1: 95 DC     STA ram_00DC,X
bra_E9E3:
C - - - - - 0x0029F3 00:E9E3: CA        DEX
C - - - - - 0x0029F4 00:E9E4: 30 21     BMI bra_EA07
C - - - - - 0x0029F6 00:E9E6: 4C 6E E9  JMP loc_E96E_loop
bra_E9E9:
C - - - - - 0x0029F9 00:E9E9: B5 9C     LDA ram_009C,X
C - - - - - 0x0029FB 00:E9EB: D0 04     BNE bra_E9F1
C - - - - - 0x0029FD 00:E9ED: A9 07     LDA #$07
C - - - - - 0x0029FF 00:E9EF: D0 08     BNE bra_E9F9    ; jmp
bra_E9F1:
C - - - - - 0x002A01 00:E9F1: B5 B8     LDA ram_00B8,X
C - - - - - 0x002A03 00:E9F3: C9 02     CMP #$02
C - - - - - 0x002A05 00:E9F5: B0 02     BCS bra_E9F9
C - - - - - 0x002A07 00:E9F7: A9 01     LDA #$01
bra_E9F9:
C - - - - - 0x002A09 00:E9F9: 95 B8     STA ram_00B8,X
C - - - - - 0x002A0B 00:E9FB: E0 00     CPX #$00
C - - - - - 0x002A0D 00:E9FD: F0 DA     BEQ bra_E9D9
C - - - - - 0x002A0F 00:E9FF: D0 D1     BNE bra_E9D2    ; jmp
bra_EA01:
C - - - - - 0x002A11 00:EA01: A9 00     LDA #$00
C - - - - - 0x002A13 00:EA03: 95 DC     STA ram_00DC,X
C - - - - - 0x002A15 00:EA05: F0 DC     BEQ bra_E9E3    ; jmp
bra_EA07:
C - - - - - 0x002A17 00:EA07: A5 4F     LDA ram_004F
C - - - - - 0x002A19 00:EA09: F0 38     BEQ bra_EA43_RTS
C - - - - - 0x002A1B 00:EA0B: A5 98     LDA ram_0098
C - - - - - 0x002A1D 00:EA0D: 0D E0 03  ORA ram_03E0
C - - - - - 0x002A20 00:EA10: 0D F7 03  ORA ram_03F7
C - - - - - 0x002A23 00:EA13: D0 2E     BNE bra_EA43_RTS
C - - - - - 0x002A25 00:EA15: A5 B0     LDA ram_00B0
C - - - - - 0x002A27 00:EA17: F0 0A     BEQ bra_EA23
C - - - - - 0x002A29 00:EA19: AD 88 03  LDA ram_0388
C - - - - - 0x002A2C 00:EA1C: C9 02     CMP #$02
C - - - - - 0x002A2E 00:EA1E: D0 23     BNE bra_EA43_RTS
C - - - - - 0x002A30 00:EA20: EE 88 03  INC ram_0388
bra_EA23:
C - - - - - 0x002A33 00:EA23: A5 9C     LDA ram_009C
C - - - - - 0x002A35 00:EA25: F0 04     BEQ bra_EA2B
C - - - - - 0x002A37 00:EA27: C9 05     CMP #$05
C - - - - - 0x002A39 00:EA29: D0 18     BNE bra_EA43_RTS
bra_EA2B:
C - - - - - 0x002A3B 00:EA2B: A5 14     LDA ram_btn_hold
C - - - - - 0x002A3D 00:EA2D: 29 0C     AND #con_btns_UD
C - - - - - 0x002A3F 00:EA2F: F0 12     BEQ bra_EA43_RTS
C - - - - - 0x002A41 00:EA31: 29 04     AND #con_btn_Down
C - - - - - 0x002A43 00:EA33: D0 04     BNE bra_EA39
C - - - - - 0x002A45 00:EA35: A9 01     LDA #$01
C - - - - - 0x002A47 00:EA37: D0 02     BNE bra_EA3B    ; jmp
bra_EA39:
C - - - - - 0x002A49 00:EA39: A9 FF     LDA #$FF
bra_EA3B:
C - - - - - 0x002A4B 00:EA3B: 85 DC     STA ram_00DC
C - - - - - 0x002A4D 00:EA3D: A9 04     LDA #$04
C - - - - - 0x002A4F 00:EA3F: 05 FD     ORA ram_00FD
C - - - - - 0x002A51 00:EA41: 85 FD     STA ram_00FD
bra_EA43_RTS:
C - - - - - 0x002A53 00:EA43: 60        RTS



sub_EA44:
C - - - - - 0x002A54 00:EA44: A2 03     LDX #$03
bra_EA46_loop:
C - - - - - 0x002A56 00:EA46: 8A        TXA
C - - - - - 0x002A57 00:EA47: 0A        ASL
C - - - - - 0x002A58 00:EA48: 0A        ASL
C - - - - - 0x002A59 00:EA49: 0A        ASL
C - - - - - 0x002A5A 00:EA4A: A8        TAY
C - - - - - 0x002A5B 00:EA4B: B5 84     LDA ram_0084,X
C - - - - - 0x002A5D 00:EA4D: 4A        LSR
C - - - - - 0x002A5E 00:EA4E: 90 08     BCC bra_EA58
C - - - - - 0x002A60 00:EA50: B5 80     LDA ram_0080,X
C - - - - - 0x002A62 00:EA52: C9 F4     CMP #$F4
C - - - - - 0x002A64 00:EA54: 90 0B     BCC bra_EA61
C - - - - - 0x002A66 00:EA56: B0 30     BCS bra_EA88
bra_EA58:
C - - - - - 0x002A68 00:EA58: 4A        LSR
C - - - - - 0x002A69 00:EA59: B0 2D     BCS bra_EA88
C - - - - - 0x002A6B 00:EA5B: B5 80     LDA ram_0080,X
C - - - - - 0x002A6D 00:EA5D: C9 F6     CMP #$F6
C - - - - - 0x002A6F 00:EA5F: 90 27     BCC bra_EA88
bra_EA61:
C - - - - - 0x002A71 00:EA61: B5 B0     LDA ram_00B0,X
C - - - - - 0x002A73 00:EA63: F0 23     BEQ bra_EA88
C - - - - - 0x002A75 00:EA65: A9 B6     LDA #$B6
C - - - - - 0x002A77 00:EA67: 20 9A DC  JSR sub_DC9A
C - - - - - 0x002A7A 00:EA6A: 99 94 02  STA ram_spr_Y + $94,Y
C - - - - - 0x002A7D 00:EA6D: B5 80     LDA ram_0080,X
C - - - - - 0x002A7F 00:EA6F: 18        CLC
C - - - - - 0x002A80 00:EA70: 69 0A     ADC #$0A
C - - - - - 0x002A82 00:EA72: 99 97 02  STA ram_spr_X + $94,Y
C - - - - - 0x002A85 00:EA75: 84 01     STY ram_0001
C - - - - - 0x002A87 00:EA77: B4 B4     LDY ram_00B4,X
C - - - - - 0x002A89 00:EA79: B9 9A E6  LDA tbl_E69A,Y
C - - - - - 0x002A8C 00:EA7C: A4 01     LDY ram_0001
C - - - - - 0x002A8E 00:EA7E: 99 95 02  STA ram_spr_T + $94,Y
C - - - - - 0x002A91 00:EA81: A9 00     LDA #$00
C - - - - - 0x002A93 00:EA83: 99 96 02  STA ram_spr_A + $94,Y
C - - - - - 0x002A96 00:EA86: F0 03     BEQ bra_EA8B    ; jmp
bra_EA88:
C - - - - - 0x002A98 00:EA88: 20 F6 E2  JSR sub_E2F6
bra_EA8B:
C - - - - - 0x002A9B 00:EA8B: CA        DEX
C - - - - - 0x002A9C 00:EA8C: 10 B8     BPL bra_EA46_loop
C - - - - - 0x002A9E 00:EA8E: 60        RTS



ofs_002_EA8F_08:
C - - J - - 0x002A9F 00:EA8F: E0 00     CPX #$00
C - - - - - 0x002AA1 00:EA91: D0 31     BNE bra_EAC4_RTS
C - - - - - 0x002AA3 00:EA93: A9 1D     LDA #$1D
C - - - - - 0x002AA5 00:EA95: 85 3A     STA ram_003A
C - - - - - 0x002AA7 00:EA97: A5 57     LDA ram_0057
C - - - - - 0x002AA9 00:EA99: F0 1A     BEQ bra_EAB5
C - - - - - 0x002AAB 00:EA9B: A5 3C     LDA ram_003C
C - - - - - 0x002AAD 00:EA9D: D0 21     BNE bra_EAC0
C - - - - - 0x002AAF 00:EA9F: 86 0D     STX ram_000D
C - - - - - 0x002AB1 00:EAA1: A2 06     LDX #$06
C - - - - - 0x002AB3 00:EAA3: A0 19     LDY #$19
bra_EAA5_loop:
C - - - - - 0x002AB5 00:EAA5: BD D9 03  LDA ram_03D9,X
C - - - - - 0x002AB8 00:EAA8: 99 C0 02  STA ram_spr_Y + $C0,Y
C - - - - - 0x002ABB 00:EAAB: 88        DEY
C - - - - - 0x002ABC 00:EAAC: 88        DEY
C - - - - - 0x002ABD 00:EAAD: 88        DEY
C - - - - - 0x002ABE 00:EAAE: 88        DEY
C - - - - - 0x002ABF 00:EAAF: CA        DEX
C - - - - - 0x002AC0 00:EAB0: 10 F3     BPL bra_EAA5_loop
C - - - - - 0x002AC2 00:EAB2: A6 0D     LDX ram_000D
C - - - - - 0x002AC4 00:EAB4: 60        RTS
bra_EAB5:
C - - - - - 0x002AC5 00:EAB5: A9 10     LDA #$10
C - - - - - 0x002AC7 00:EAB7: 85 32     STA ram_0032
C - - - - - 0x002AC9 00:EAB9: A9 02     LDA #$02
C - - - - - 0x002ACB 00:EABB: 85 FD     STA ram_00FD
C - - - - - 0x002ACD 00:EABD: 4A        LSR
C - - - - - 0x002ACE 00:EABE: 85 52     STA ram_0052
bra_EAC0:
C - - - - - 0x002AD0 00:EAC0: A9 00     LDA #$00
C - - - - - 0x002AD2 00:EAC2: 85 3A     STA ram_003A
bra_EAC4_RTS:
C - - - - - 0x002AD4 00:EAC4: 60        RTS



sub_EAC5:
C - - - - - 0x002AD5 00:EAC5: A5 52     LDA ram_0052
C - - - - - 0x002AD7 00:EAC7: 05 3C     ORA ram_003C
C - - - - - 0x002AD9 00:EAC9: D0 F5     BNE bra_EAC0
C - - - - - 0x002ADB 00:EACB: A5 3A     LDA ram_003A
C - - - - - 0x002ADD 00:EACD: F0 F5     BEQ bra_EAC4_RTS
C - - - - - 0x002ADF 00:EACF: A2 00     LDX #$00
C - - - - - 0x002AE1 00:EAD1: A0 03     LDY #$03
C - - - - - 0x002AE3 00:EAD3: A5 3A     LDA ram_003A
C - - - - - 0x002AE5 00:EAD5: C9 0D     CMP #$0D
C - - - - - 0x002AE7 00:EAD7: 90 07     BCC bra_EAE0
C - - - - - 0x002AE9 00:EAD9: 4A        LSR
C - - - - - 0x002AEA 00:EADA: 90 3A     BCC bra_EB16_RTS
C - - - - - 0x002AEC 00:EADC: A9 40     LDA #$40
C - - - - - 0x002AEE 00:EADE: 85 FB     STA ram_00FB
bra_EAE0:
bra_EAE0_loop:
C - - - - - 0x002AF0 00:EAE0: A9 42     LDA #$42
C - - - - - 0x002AF2 00:EAE2: 9D B4 02  STA ram_spr_Y + $B4,X
C - - - - - 0x002AF5 00:EAE5: E8        INX
C - - - - - 0x002AF6 00:EAE6: B9 40 E5  LDA tbl_E540_spr_T,Y
C - - - - - 0x002AF9 00:EAE9: 9D B4 02  STA ram_spr_T + $B4 - $01,X
C - - - - - 0x002AFC 00:EAEC: E8        INX
C - - - - - 0x002AFD 00:EAED: A9 00     LDA #$00
C - - - - - 0x002AFF 00:EAEF: 9D B4 02  STA ram_spr_A + $B4 - $02,X
C - - - - - 0x002B02 00:EAF2: E8        INX
C - - - - - 0x002B03 00:EAF3: B9 43 E5  LDA tbl_E543_spr_X,Y
C - - - - - 0x002B06 00:EAF6: 9D B4 02  STA ram_spr_X + $B4 - $03,X
C - - - - - 0x002B09 00:EAF9: E8        INX
C - - - - - 0x002B0A 00:EAFA: 88        DEY
C - - - - - 0x002B0B 00:EAFB: D0 E3     BNE bra_EAE0_loop
C - - - - - 0x002B0D 00:EAFD: A2 06     LDX #$06
bra_EAFF_loop:
C - - - - - 0x002B0F 00:EAFF: A9 4A     LDA #$4A
C - - - - - 0x002B11 00:EB01: 99 C0 02  STA ram_spr_Y + $C0,Y
C - - - - - 0x002B14 00:EB04: C8        INY
C - - - - - 0x002B15 00:EB05: C8        INY
C - - - - - 0x002B16 00:EB06: A9 00     LDA #$00
C - - - - - 0x002B18 00:EB08: 99 C0 02  STA ram_spr_A + $C0 - $02,Y
C - - - - - 0x002B1B 00:EB0B: C8        INY
C - - - - - 0x002B1C 00:EB0C: BD 47 E5  LDA tbl_E547_spr_X,X
C - - - - - 0x002B1F 00:EB0F: 99 C0 02  STA ram_spr_X + $C0 - $03,Y
C - - - - - 0x002B22 00:EB12: C8        INY
C - - - - - 0x002B23 00:EB13: CA        DEX
C - - - - - 0x002B24 00:EB14: 10 E9     BPL bra_EAFF_loop
bra_EB16_RTS:
C - - - - - 0x002B26 00:EB16: 60        RTS



sub_EB17:
C - - - - - 0x002B27 00:EB17: A5 BE     LDA ram_00BE
C - - - - - 0x002B29 00:EB19: D0 63     BNE bra_EB7E_RTS
C - - - - - 0x002B2B 00:EB1B: A5 B4     LDA ram_00B4
C - - - - - 0x002B2D 00:EB1D: F0 04     BEQ bra_EB23
C - - - - - 0x002B2F 00:EB1F: C6 B4     DEC ram_00B4
C - - - - - 0x002B31 00:EB21: D0 3B     BNE bra_EB5E
bra_EB23:
C - - - - - 0x002B33 00:EB23: A5 BD     LDA ram_00BD
C - - - - - 0x002B35 00:EB25: 05 B9     ORA ram_00B9
C - - - - - 0x002B37 00:EB27: D0 35     BNE bra_EB5E
C - - - - - 0x002B39 00:EB29: 85 60     STA ram_0060
C - - - - - 0x002B3B 00:EB2B: 85 C0     STA ram_00C0
C - - - - - 0x002B3D 00:EB2D: A5 BF     LDA ram_00BF
C - - - - - 0x002B3F 00:EB2F: F0 04     BEQ bra_EB35
C - - - - - 0x002B41 00:EB31: C9 01     CMP #$01
C - - - - - 0x002B43 00:EB33: D0 69     BNE bra_EB9E
bra_EB35:
C - - - - - 0x002B45 00:EB35: A5 C1     LDA ram_00C1
C - - - - - 0x002B47 00:EB37: C9 02     CMP #$02
C - - - - - 0x002B49 00:EB39: F0 23     BEQ bra_EB5E
C - - - - - 0x002B4B 00:EB3B: A5 C1     LDA ram_00C1
C - - - - - 0x002B4D 00:EB3D: F0 0A     BEQ bra_EB49
C - - - - - 0x002B4F 00:EB3F: A9 09     LDA #$09
C - - - - - 0x002B51 00:EB41: 85 B8     STA ram_00B8
bra_EB43:
C - - - - - 0x002B53 00:EB43: A9 02     LDA #$02
C - - - - - 0x002B55 00:EB45: 85 C1     STA ram_00C1
C - - - - - 0x002B57 00:EB47: D0 4A     BNE bra_EB93    ; jmp
bra_EB49:
C - - - - - 0x002B59 00:EB49: A5 BF     LDA ram_00BF
C - - - - - 0x002B5B 00:EB4B: D0 11     BNE bra_EB5E
C - - - - - 0x002B5D 00:EB4D: A5 5C     LDA ram_005C
C - - - - - 0x002B5F 00:EB4F: 0A        ASL
C - - - - - 0x002B60 00:EB50: 90 2D     BCC bra_EB7F
C - - - - - 0x002B62 00:EB52: A9 00     LDA #$00
C - - - - - 0x002B64 00:EB54: 85 49     STA ram_0049
C - - - - - 0x002B66 00:EB56: A5 2B     LDA ram_002B
C - - - - - 0x002B68 00:EB58: D0 43     BNE bra_EB9D_RTS
C - - - - - 0x002B6A 00:EB5A: A9 05     LDA #$05
C - - - - - 0x002B6C 00:EB5C: 85 2B     STA ram_002B
bra_EB5E:
C - - - - - 0x002B6E 00:EB5E: A9 04     LDA #$04
C - - - - - 0x002B70 00:EB60: 85 60     STA ram_0060
C - - - - - 0x002B72 00:EB62: 20 99 EC  JSR sub_EC99
C - - - - - 0x002B75 00:EB65: A4 B3     LDY ram_00B3
C - - - - - 0x002B77 00:EB67: A9 00     LDA #$00
C - - - - - 0x002B79 00:EB69: 85 BD     STA ram_00BD
C - - - - - 0x002B7B 00:EB6B: 20 C9 EC  JSR sub_ECC9
C - - - - - 0x002B7E 00:EB6E: D0 0C     BNE bra_EB7C
C - - - - - 0x002B80 00:EB70: C8        INY
C - - - - - 0x002B81 00:EB71: C0 40     CPY #$40
C - - - - - 0x002B83 00:EB73: D0 02     BNE bra_EB77
C - - - - - 0x002B85 00:EB75: A0 00     LDY #$00
bra_EB77:
C - - - - - 0x002B87 00:EB77: 20 C9 EC  JSR sub_ECC9
C - - - - - 0x002B8A 00:EB7A: F0 21     BEQ bra_EB9D_RTS
bra_EB7C:
C - - - - - 0x002B8C 00:EB7C: E6 BD     INC ram_00BD
bra_EB7E_RTS:
C - - - - - 0x002B8E 00:EB7E: 60        RTS
bra_EB7F:
C - - - - - 0x002B8F 00:EB7F: 0A        ASL
C - - - - - 0x002B90 00:EB80: 90 74     BCC bra_EBF6
C - - - - - 0x002B92 00:EB82: A5 49     LDA ram_0049
C - - - - - 0x002B94 00:EB84: D0 17     BNE bra_EB9D_RTS
C - - - - - 0x002B96 00:EB86: 20 75 EC  JSR sub_EC75
C - - - - - 0x002B99 00:EB89: A5 B8     LDA ram_00B8
C - - - - - 0x002B9B 00:EB8B: C9 FF     CMP #$FF
C - - - - - 0x002B9D 00:EB8D: F0 0E     BEQ bra_EB9D_RTS
C - - - - - 0x002B9F 00:EB8F: C9 09     CMP #$09
C - - - - - 0x002BA1 00:EB91: F0 B0     BEQ bra_EB43
bra_EB93:
C - - - - - 0x002BA3 00:EB93: A9 01     LDA #$01
C - - - - - 0x002BA5 00:EB95: 85 BE     STA ram_00BE
C - - - - - 0x002BA7 00:EB97: 85 49     STA ram_0049
C - - - - - 0x002BA9 00:EB99: A9 40     LDA #$40
C - - - - - 0x002BAB 00:EB9B: 85 FB     STA ram_00FB
bra_EB9D_RTS:
C - - - - - 0x002BAD 00:EB9D: 60        RTS
bra_EB9E:
C - - - - - 0x002BAE 00:EB9E: A5 49     LDA ram_0049
C - - - - - 0x002BB0 00:EBA0: D0 14     BNE bra_EBB6
C - - - - - 0x002BB2 00:EBA2: A5 5C     LDA ram_005C
C - - - - - 0x002BB4 00:EBA4: 0A        ASL
C - - - - - 0x002BB5 00:EBA5: 0A        ASL
C - - - - - 0x002BB6 00:EBA6: 90 15     BCC bra_EBBD
C - - - - - 0x002BB8 00:EBA8: 20 B1 C3  JSR sub_C3B1
C - - - - - 0x002BBB 00:EBAB: 20 3B EC  JSR sub_EC3B
C - - - - - 0x002BBE 00:EBAE: 86 47     STX ram_0047
C - - - - - 0x002BC0 00:EBB0: 86 42     STX ram_0042
C - - - - - 0x002BC2 00:EBB2: A9 08     LDA #$08
C - - - - - 0x002BC4 00:EBB4: 85 41     STA ram_0041
bra_EBB6:
C - - - - - 0x002BC6 00:EBB6: A5 5C     LDA ram_005C
C - - - - - 0x002BC8 00:EBB8: D0 02     BNE bra_EBBC_RTS
C - - - - - 0x002BCA 00:EBBA: 85 49     STA ram_0049
bra_EBBC_RTS:
C - - - - - 0x002BCC 00:EBBC: 60        RTS
bra_EBBD:
C - - - - - 0x002BCD 00:EBBD: 20 5D EC  JSR sub_EC5D
C - - - - - 0x002BD0 00:EBC0: A5 3A     LDA ram_003A
C - - - - - 0x002BD2 00:EBC2: D0 F8     BNE bra_EBBC_RTS
C - - - - - 0x002BD4 00:EBC4: E6 3A     INC ram_003A
C - - - - - 0x002BD6 00:EBC6: A5 5C     LDA ram_005C
C - - - - - 0x002BD8 00:EBC8: C9 80     CMP #$80
C - - - - - 0x002BDA 00:EBCA: F0 04     BEQ bra_EBD0
C - - - - - 0x002BDC 00:EBCC: C9 08     CMP #$08
C - - - - - 0x002BDE 00:EBCE: D0 19     BNE bra_EBE9
bra_EBD0:
- - - - - - 0x002BE0 00:EBD0: EE E0 05  INC ram_05E0
- - - - - - 0x002BE3 00:EBD3: AD E0 05  LDA ram_05E0
- - - - - - 0x002BE6 00:EBD6: C9 0A     CMP #$0A
- - - - - - 0x002BE8 00:EBD8: 30 05     BMI bra_EBDF
- - - - - - 0x002BEA 00:EBDA: A9 01     LDA #$01
bra_EBDC:
- - - - - - 0x002BEC 00:EBDC: 8D E0 05  STA ram_05E0
bra_EBDF:
- - - - - - 0x002BEF 00:EBDF: A9 01     LDA #$01
- - - - - - 0x002BF1 00:EBE1: 85 FF     STA ram_00FF
- - - - - - 0x002BF3 00:EBE3: 4A        LSR
- - - - - - 0x002BF4 00:EBE4: 85 49     STA ram_0049
- - - - - - 0x002BF6 00:EBE6: 4C 47 EC  JMP loc_EC47
bra_EBE9:
C - - - - - 0x002BF9 00:EBE9: C9 04     CMP #$04
C - - - - - 0x002BFB 00:EBEB: D0 C9     BNE bra_EBB6
- - - - - - 0x002BFD 00:EBED: CE E0 05  DEC ram_05E0
- - - - - - 0x002C00 00:EBF0: D0 ED     BNE bra_EBDF
- - - - - - 0x002C02 00:EBF2: A9 09     LDA #$09
- - - - - - 0x002C04 00:EBF4: D0 E6     BNE bra_EBDC    ; jmp
bra_EBF6:
C - - - - - 0x002C06 00:EBF6: A5 2C     LDA ram_002C
C - - - - - 0x002C08 00:EBF8: D0 40     BNE bra_EC3A_RTS
C - - - - - 0x002C0A 00:EBFA: A9 08     LDA #$08
C - - - - - 0x002C0C 00:EBFC: 85 2C     STA ram_002C
C - - - - - 0x002C0E 00:EBFE: A5 5C     LDA ram_005C
C - - - - - 0x002C10 00:EC00: 4A        LSR
C - - - - - 0x002C11 00:EC01: B0 0D     BCS bra_EC10
C - - - - - 0x002C13 00:EC03: 4A        LSR
C - - - - - 0x002C14 00:EC04: 90 34     BCC bra_EC3A_RTS
C - - - - - 0x002C16 00:EC06: C6 C2     DEC ram_00C2
C - - - - - 0x002C18 00:EC08: A5 C2     LDA ram_00C2
C - - - - - 0x002C1A 00:EC0A: 10 10     BPL bra_EC1C
C - - - - - 0x002C1C 00:EC0C: A9 14     LDA #$14
C - - - - - 0x002C1E 00:EC0E: D0 0A     BNE bra_EC1A    ; jmp
bra_EC10:
C - - - - - 0x002C20 00:EC10: E6 C2     INC ram_00C2
C - - - - - 0x002C22 00:EC12: A5 C2     LDA ram_00C2
C - - - - - 0x002C24 00:EC14: C9 15     CMP #$15
C - - - - - 0x002C26 00:EC16: 90 04     BCC bra_EC1C
C - - - - - 0x002C28 00:EC18: A9 00     LDA #$00
bra_EC1A:
C - - - - - 0x002C2A 00:EC1A: 85 C2     STA ram_00C2
bra_EC1C:
C - - - - - 0x002C2C 00:EC1C: A9 01     LDA #$01
C - - - - - 0x002C2E 00:EC1E: 85 FF     STA ram_00FF
C - - - - - 0x002C30 00:EC20: 4A        LSR
C - - - - - 0x002C31 00:EC21: 85 49     STA ram_0049
C - - - - - 0x002C33 00:EC23: A9 D0     LDA #$D0
sub_EC25:
C - - - - - 0x002C35 00:EC25: 8D 30 02  STA ram_spr_Y + $30
C - - - - - 0x002C38 00:EC28: A9 CA     LDA #$CA
C - - - - - 0x002C3A 00:EC2A: 8D 31 02  STA ram_spr_T + $30
C - - - - - 0x002C3D 00:EC2D: A9 00     LDA #$00
C - - - - - 0x002C3F 00:EC2F: 8D 32 02  STA ram_spr_A + $30
C - - - - - 0x002C42 00:EC32: A6 C2     LDX ram_00C2
C - - - - - 0x002C44 00:EC34: BD F6 E6  LDA tbl_E6F6_spr_X,X
C - - - - - 0x002C47 00:EC37: 8D 33 02  STA ram_spr_X + $30
bra_EC3A_RTS:
C - - - - - 0x002C4A 00:EC3A: 60        RTS



sub_EC3B:
C - - - - - 0x002C4B 00:EC3B: A2 00     LDX #$00
bra_EC3D_loop:
C - - - - - 0x002C4D 00:EC3D: BD E0 05  LDA ram_05E0,X
C - - - - - 0x002C50 00:EC40: 9D E0 06  STA ram_06E0,X
C - - - - - 0x002C53 00:EC43: CA        DEX
C - - - - - 0x002C54 00:EC44: D0 F7     BNE bra_EC3D_loop
C - - - - - 0x002C56 00:EC46: 60        RTS



loc_EC47:
C D 3 - - - 0x002C57 00:EC47: A9 CF     LDA #$CF
C - - - - - 0x002C59 00:EC49: 8D 34 02  STA ram_spr_Y + $34
C - - - - - 0x002C5C 00:EC4C: AD E0 05  LDA ram_05E0
C - - - - - 0x002C5F 00:EC4F: 8D 35 02  STA ram_spr_T + $34
C - - - - - 0x002C62 00:EC52: A9 00     LDA #$00
C - - - - - 0x002C64 00:EC54: 8D 36 02  STA ram_spr_A + $34
C - - - - - 0x002C67 00:EC57: A9 E4     LDA #$E4
C - - - - - 0x002C69 00:EC59: 8D 37 02  STA ram_spr_X + $34
C - - - - - 0x002C6C 00:EC5C: 60        RTS



sub_EC5D:
C - - - - - 0x002C6D 00:EC5D: A9 F8     LDA #$F8
C - - - - - 0x002C6F 00:EC5F: 20 25 EC  JSR sub_EC25
C - - - - - 0x002C72 00:EC62: A5 3F     LDA ram_003F
C - - - - - 0x002C74 00:EC64: 29 10     AND #$10
C - - - - - 0x002C76 00:EC66: F0 04     BEQ bra_EC6C
C - - - - - 0x002C78 00:EC68: A9 F8     LDA #$F8
C - - - - - 0x002C7A 00:EC6A: D0 02     BNE bra_EC6E    ; jmp
bra_EC6C:
C - - - - - 0x002C7C 00:EC6C: A9 C7     LDA #$C7
bra_EC6E:
C - - - - - 0x002C7E 00:EC6E: 8D 28 02  STA ram_spr_Y + $28
C - - - - - 0x002C81 00:EC71: 8D 2C 02  STA ram_spr_Y + $2C
C - - - - - 0x002C84 00:EC74: 60        RTS



sub_EC75:
C - - - - - 0x002C85 00:EC75: A9 00     LDA #$00
C - - - - - 0x002C87 00:EC77: 85 CA     STA ram_00CA
C - - - - - 0x002C89 00:EC79: 85 C8     STA ram_00C8
C - - - - - 0x002C8B 00:EC7B: 85 C9     STA ram_00C9
C - - - - - 0x002C8D 00:EC7D: A5 B2     LDA ram_00B2
C - - - - - 0x002C8F 00:EC7F: 85 BA     STA ram_00BA
C - - - - - 0x002C91 00:EC81: A5 B0     LDA ram_00B0
C - - - - - 0x002C93 00:EC83: 85 BB     STA ram_00BB
C - - - - - 0x002C95 00:EC85: A5 B1     LDA ram_00B1
C - - - - - 0x002C97 00:EC87: 85 BC     STA ram_00BC
C - - - - - 0x002C99 00:EC89: A4 C2     LDY ram_00C2
C - - - - - 0x002C9B 00:EC8B: B9 E1 E6  LDA tbl_E6E1,Y
C - - - - - 0x002C9E 00:EC8E: 85 B8     STA ram_00B8
C - - - - - 0x002CA0 00:EC90: C9 11     CMP #$11
C - - - - - 0x002CA2 00:EC92: 90 04     BCC bra_EC98_RTS
C - - - - - 0x002CA4 00:EC94: 29 0F     AND #$0F
C - - - - - 0x002CA6 00:EC96: 85 C8     STA ram_00C8
bra_EC98_RTS:
C - - - - - 0x002CA8 00:EC98: 60        RTS



sub_EC99:
C - - - - - 0x002CA9 00:EC99: A5 60     LDA ram_0060
C - - - - - 0x002CAB 00:EC9B: F0 FB     BEQ bra_EC98_RTS
C - - - - - 0x002CAD 00:EC9D: 18        CLC
C - - - - - 0x002CAE 00:EC9E: 65 B9     ADC ram_00B9
C - - - - - 0x002CB0 00:ECA0: 85 B9     STA ram_00B9
C - - - - - 0x002CB2 00:ECA2: C9 08     CMP #$08
C - - - - - 0x002CB4 00:ECA4: D0 F2     BNE bra_EC98_RTS
C - - - - - 0x002CB6 00:ECA6: A9 01     LDA #$01
C - - - - - 0x002CB8 00:ECA8: 85 C0     STA ram_00C0
C - - - - - 0x002CBA 00:ECAA: 4A        LSR
C - - - - - 0x002CBB 00:ECAB: 85 B9     STA ram_00B9
C - - - - - 0x002CBD 00:ECAD: 20 FB F6  JSR sub_F6FB
C - - - - - 0x002CC0 00:ECB0: A5 B2     LDA ram_00B2
C - - - - - 0x002CC2 00:ECB2: 20 BF EC  JSR sub_ECBF
C - - - - - 0x002CC5 00:ECB5: 85 B2     STA ram_00B2
C - - - - - 0x002CC7 00:ECB7: A5 B3     LDA ram_00B3
C - - - - - 0x002CC9 00:ECB9: 20 BF EC  JSR sub_ECBF
C - - - - - 0x002CCC 00:ECBC: 85 B3     STA ram_00B3
C - - - - - 0x002CCE 00:ECBE: 60        RTS



sub_ECBF:
C - - - - - 0x002CCF 00:ECBF: 18        CLC
C - - - - - 0x002CD0 00:ECC0: 69 01     ADC #$01
C - - - - - 0x002CD2 00:ECC2: C9 40     CMP #$40
C - - - - - 0x002CD4 00:ECC4: D0 02     BNE bra_ECC8_RTS
bra_ECC6:
C - - - - - 0x002CD6 00:ECC6: A9 00     LDA #$00
bra_ECC8_RTS:
C - - - - - 0x002CD8 00:ECC8: 60        RTS



sub_ECC9:
C - - - - - 0x002CD9 00:ECC9: A9 3D     LDA #$3D
C - - - - - 0x002CDB 00:ECCB: D9 40 05  CMP ram_0540,Y
C - - - - - 0x002CDE 00:ECCE: D0 11     BNE bra_ECE1
C - - - - - 0x002CE0 00:ECD0: D9 80 04  CMP ram_0480,Y
C - - - - - 0x002CE3 00:ECD3: D0 0C     BNE bra_ECE1
C - - - - - 0x002CE5 00:ECD5: A9 3B     LDA #$3B
C - - - - - 0x002CE7 00:ECD7: D9 00 04  CMP ram_0400,Y
C - - - - - 0x002CEA 00:ECDA: D0 05     BNE bra_ECE1
C - - - - - 0x002CEC 00:ECDC: D9 C0 04  CMP ram_04C0,Y
C - - - - - 0x002CEF 00:ECDF: F0 E5     BEQ bra_ECC6
bra_ECE1:
C - - - - - 0x002CF1 00:ECE1: A9 01     LDA #$01
C - - - - - 0x002CF3 00:ECE3: 60        RTS



sub_ECE4:
loc_ECE4:
C D 3 - - - 0x002CF4 00:ECE4: A0 03     LDY #$03
bra_ECE6_loop:
C - - - - - 0x002CF6 00:ECE6: BD A1 E6  LDA tbl_E6A1,X
C - - - - - 0x002CF9 00:ECE9: E8        INX
C - - - - - 0x002CFA 00:ECEA: 99 02 00  STA ram_0002,Y
C - - - - - 0x002CFD 00:ECED: 88        DEY
C - - - - - 0x002CFE 00:ECEE: 10 F6     BPL bra_ECE6_loop
C - - - - - 0x002D00 00:ECF0: A5 05     LDA ram_0005
C - - - - - 0x002D02 00:ECF2: 8D 00 04  STA ram_0400
C - - - - - 0x002D05 00:ECF5: A5 02     LDA ram_0002
C - - - - - 0x002D07 00:ECF7: 8D 01 04  STA ram_0401
C - - - - - 0x002D0A 00:ECFA: A2 20     LDX #$20
C - - - - - 0x002D0C 00:ECFC: 8E 02 04  STX ram_0402
bra_ECFF_loop:
C - - - - - 0x002D0F 00:ECFF: A5 03     LDA ram_0003
C - - - - - 0x002D11 00:ED01: 9D 03 04  STA ram_0403,X
C - - - - - 0x002D14 00:ED04: CA        DEX
C - - - - - 0x002D15 00:ED05: A5 04     LDA ram_0004
C - - - - - 0x002D17 00:ED07: 9D 03 04  STA ram_0403,X
C - - - - - 0x002D1A 00:ED0A: CA        DEX
C - - - - - 0x002D1B 00:ED0B: 10 F2     BPL bra_ECFF_loop
C - - - - - 0x002D1D 00:ED0D: A5 05     LDA ram_0005
C - - - - - 0x002D1F 00:ED0F: 49 04     EOR #$04
C - - - - - 0x002D21 00:ED11: 8D 23 04  STA ram_0423
C - - - - - 0x002D24 00:ED14: A5 02     LDA ram_0002
C - - - - - 0x002D26 00:ED16: 8D 24 04  STA ram_0424
C - - - - - 0x002D29 00:ED19: A2 20     LDX #$20
C - - - - - 0x002D2B 00:ED1B: 8E 25 04  STX ram_0425
bra_ED1E_loop:
C - - - - - 0x002D2E 00:ED1E: A5 03     LDA ram_0003
C - - - - - 0x002D30 00:ED20: 9D 26 04  STA ram_0426,X
C - - - - - 0x002D33 00:ED23: CA        DEX
C - - - - - 0x002D34 00:ED24: A5 04     LDA ram_0004
C - - - - - 0x002D36 00:ED26: 9D 26 04  STA ram_0426,X
C - - - - - 0x002D39 00:ED29: CA        DEX
C - - - - - 0x002D3A 00:ED2A: 10 F2     BPL bra_ED1E_loop
C - - - - - 0x002D3C 00:ED2C: A9 00     LDA #$00
C - - - - - 0x002D3E 00:ED2E: 8D 46 04  STA ram_0446
C - - - - - 0x002D41 00:ED31: A9 00     LDA #< ram_0400
C - - - - - 0x002D43 00:ED33: 85 00     STA ram_0000
C - - - - - 0x002D45 00:ED35: A9 04     LDA #> ram_0400
C - - - - - 0x002D47 00:ED37: 4C 89 C2  JMP loc_C289



tbl_ED3A_lo:
- D 3 - - - 0x002D4A 00:ED3A: 46        .byte < _off_003_ED46_00   ; 
- D 3 - - - 0x002D4B 00:ED3B: 59        .byte < _off_003_EE59_01   ; 
- D 3 - - - 0x002D4C 00:ED3C: C8        .byte < _off_003_EDC8_02   ; 
- D 3 - - - 0x002D4D 00:ED3D: D2        .byte < _off_003_EED2_03   ; 
- D 3 - - - 0x002D4E 00:ED3E: A7        .byte < _off_003_EFA7_04   ; 
- D 3 - - - 0x002D4F 00:ED3F: E0        .byte < ram_06E0   ; 



tbl_ED40_hi:
- D 3 - - - 0x002D50 00:ED40: ED        .byte > _off_003_ED46_00   ; 
- D 3 - - - 0x002D51 00:ED41: EE        .byte > _off_003_EE59_01   ; 
- D 3 - - - 0x002D52 00:ED42: ED        .byte > _off_003_EDC8_02   ; 
- D 3 - - - 0x002D53 00:ED43: EE        .byte > _off_003_EED2_03   ; 
- D 3 - - - 0x002D54 00:ED44: EF        .byte > _off_003_EFA7_04   ; 
- D 3 - - - 0x002D55 00:ED45: 06        .byte > ram_06E0   ; 



_off_003_ED46_00:
- D 3 - I - 0x002D56 00:ED46: 02        .byte $02   ; 
- D 3 - I - 0x002D57 00:ED47: 40        .byte $40   ; 
- D 3 - I - 0x002D58 00:ED48: 10        .byte $10   ; 
- D 3 - I - 0x002D59 00:ED49: 30        .byte $30   ; 
- D 3 - I - 0x002D5A 00:ED4A: 40        .byte $40   ; 
- D 3 - I - 0x002D5B 00:ED4B: 36        .byte $36   ; 
- D 3 - I - 0x002D5C 00:ED4C: 0D        .byte $0D   ; 
- D 3 - I - 0x002D5D 00:ED4D: 31        .byte $31   ; 
- D 3 - I - 0x002D5E 00:ED4E: 40        .byte $40   ; 
- D 3 - I - 0x002D5F 00:ED4F: 07        .byte $07   ; 
- D 3 - I - 0x002D60 00:ED50: 05        .byte $05   ; 
- D 3 - I - 0x002D61 00:ED51: 40        .byte $40   ; 
- D 3 - I - 0x002D62 00:ED52: 02        .byte $02   ; 
- D 3 - I - 0x002D63 00:ED53: 88        .byte $88   ; 
- D 3 - I - 0x002D64 00:ED54: 40        .byte $40   ; 
- D 3 - I - 0x002D65 00:ED55: 02        .byte $02   ; 
- D 3 - I - 0x002D66 00:ED56: 88        .byte $88   ; 
- D 3 - I - 0x002D67 00:ED57: 40        .byte $40   ; 
- D 3 - I - 0x002D68 00:ED58: 1C        .byte $1C   ; 
- D 3 - I - 0x002D69 00:ED59: 07        .byte $07   ; 
- D 3 - I - 0x002D6A 00:ED5A: 40        .byte $40   ; 
- D 3 - I - 0x002D6B 00:ED5B: 25        .byte $25   ; 
- D 3 - I - 0x002D6C 00:ED5C: 10        .byte $10   ; 
- D 3 - I - 0x002D6D 00:ED5D: 40        .byte $40   ; 
- D 3 - I - 0x002D6E 00:ED5E: 0A        .byte $0A   ; 
- D 3 - I - 0x002D6F 00:ED5F: 07        .byte $07   ; 
- D 3 - I - 0x002D70 00:ED60: 40        .byte $40   ; 
- D 3 - I - 0x002D71 00:ED61: 02        .byte $02   ; 
- D 3 - I - 0x002D72 00:ED62: 07        .byte $07   ; 
- D 3 - I - 0x002D73 00:ED63: 40        .byte $40   ; 
- D 3 - I - 0x002D74 00:ED64: 02        .byte $02   ; 
- D 3 - I - 0x002D75 00:ED65: 8D        .byte $8D   ; 
- D 3 - I - 0x002D76 00:ED66: 40        .byte $40   ; 
- D 3 - I - 0x002D77 00:ED67: 39        .byte $39   ; 
- D 3 - I - 0x002D78 00:ED68: 07        .byte $07   ; 
- D 3 - I - 0x002D79 00:ED69: 40        .byte $40   ; 
- D 3 - I - 0x002D7A 00:ED6A: 02        .byte $02   ; 
- D 3 - I - 0x002D7B 00:ED6B: 07        .byte $07   ; 
- D 3 - I - 0x002D7C 00:ED6C: 40        .byte $40   ; 
- D 3 - I - 0x002D7D 00:ED6D: 02        .byte $02   ; 
- D 3 - I - 0x002D7E 00:ED6E: 07        .byte $07   ; 
- D 3 - I - 0x002D7F 00:ED6F: 40        .byte $40   ; 
- D 3 - I - 0x002D80 00:ED70: 0E        .byte $0E   ; 
- D 3 - I - 0x002D81 00:ED71: 0F        .byte $0F   ; 
- D 3 - I - 0x002D82 00:ED72: 40        .byte $40   ; 
- D 3 - I - 0x002D83 00:ED73: 10        .byte $10   ; 
- D 3 - I - 0x002D84 00:ED74: 0C        .byte $0C   ; 
- D 3 - I - 0x002D85 00:ED75: 40        .byte $40   ; 
- D 3 - I - 0x002D86 00:ED76: 10        .byte $10   ; 
- D 3 - I - 0x002D87 00:ED77: 06        .byte $06   ; 
- D 3 - I - 0x002D88 00:ED78: 40        .byte $40   ; 
- D 3 - I - 0x002D89 00:ED79: 05        .byte $05   ; 
- D 3 - I - 0x002D8A 00:ED7A: 0A        .byte $0A   ; 
- D 3 - I - 0x002D8B 00:ED7B: 40        .byte $40   ; 
- D 3 - I - 0x002D8C 00:ED7C: 2B        .byte $2B   ; 
- D 3 - I - 0x002D8D 00:ED7D: 0E        .byte $0E   ; 
- D 3 - I - 0x002D8E 00:ED7E: 40        .byte $40   ; 
- D 3 - I - 0x002D8F 00:ED7F: 1E        .byte $1E   ; 
- D 3 - I - 0x002D90 00:ED80: 0F        .byte $0F   ; 
- D 3 - I - 0x002D91 00:ED81: 40        .byte $40   ; 
- D 3 - I - 0x002D92 00:ED82: 02        .byte $02   ; 
- D 3 - I - 0x002D93 00:ED83: 0E        .byte $0E   ; 
- D 3 - I - 0x002D94 00:ED84: 40        .byte $40   ; 
- D 3 - I - 0x002D95 00:ED85: 26        .byte $26   ; 
- D 3 - I - 0x002D96 00:ED86: 0E        .byte $0E   ; 
- D 3 - I - 0x002D97 00:ED87: 40        .byte $40   ; 
- D 3 - I - 0x002D98 00:ED88: 02        .byte $02   ; 
- D 3 - I - 0x002D99 00:ED89: 08        .byte $08   ; 
- D 3 - I - 0x002D9A 00:ED8A: 40        .byte $40   ; 
- D 3 - I - 0x002D9B 00:ED8B: 02        .byte $02   ; 
- D 3 - I - 0x002D9C 00:ED8C: 08        .byte $08   ; 
- D 3 - I - 0x002D9D 00:ED8D: 40        .byte $40   ; 
- D 3 - I - 0x002D9E 00:ED8E: 02        .byte $02   ; 
- D 3 - I - 0x002D9F 00:ED8F: 08        .byte $08   ; 
- D 3 - I - 0x002DA0 00:ED90: 40        .byte $40   ; 
- D 3 - I - 0x002DA1 00:ED91: 02        .byte $02   ; 
- D 3 - I - 0x002DA2 00:ED92: 08        .byte $08   ; 
- D 3 - I - 0x002DA3 00:ED93: 40        .byte $40   ; 
- D 3 - I - 0x002DA4 00:ED94: 02        .byte $02   ; 
- D 3 - I - 0x002DA5 00:ED95: 88        .byte $88   ; 
- D 3 - I - 0x002DA6 00:ED96: 40        .byte $40   ; 
- D 3 - I - 0x002DA7 00:ED97: 12        .byte $12   ; 
- D 3 - I - 0x002DA8 00:ED98: 06        .byte $06   ; 
- D 3 - I - 0x002DA9 00:ED99: 40        .byte $40   ; 
- D 3 - I - 0x002DAA 00:ED9A: 02        .byte $02   ; 
- D 3 - I - 0x002DAB 00:ED9B: 11        .byte $11   ; 
- D 3 - I - 0x002DAC 00:ED9C: 46        .byte $46   ; 
- D 3 - I - 0x002DAD 00:ED9D: 0A        .byte $0A   ; 
- D 3 - I - 0x002DAE 00:ED9E: 17        .byte $17   ; 
- D 3 - I - 0x002DAF 00:ED9F: 40        .byte $40   ; 
- D 3 - I - 0x002DB0 00:EDA0: 14        .byte $14   ; 
- D 3 - I - 0x002DB1 00:EDA1: 01        .byte $01   ; 
- D 3 - I - 0x002DB2 00:EDA2: 40        .byte $40   ; 
- D 3 - I - 0x002DB3 00:EDA3: 02        .byte $02   ; 
- D 3 - I - 0x002DB4 00:EDA4: 01        .byte $01   ; 
- D 3 - I - 0x002DB5 00:EDA5: 40        .byte $40   ; 
- D 3 - I - 0x002DB6 00:EDA6: 02        .byte $02   ; 
- D 3 - I - 0x002DB7 00:EDA7: 81        .byte $81   ; 
- D 3 - I - 0x002DB8 00:EDA8: 40        .byte $40   ; 
- D 3 - I - 0x002DB9 00:EDA9: 02        .byte $02   ; 
- D 3 - I - 0x002DBA 00:EDAA: 81        .byte $81   ; 
- D 3 - I - 0x002DBB 00:EDAB: 40        .byte $40   ; 
- D 3 - I - 0x002DBC 00:EDAC: 02        .byte $02   ; 
- D 3 - I - 0x002DBD 00:EDAD: 01        .byte $01   ; 
- D 3 - I - 0x002DBE 00:EDAE: 40        .byte $40   ; 
- D 3 - I - 0x002DBF 00:EDAF: 02        .byte $02   ; 
- D 3 - I - 0x002DC0 00:EDB0: 01        .byte $01   ; 
- D 3 - I - 0x002DC1 00:EDB1: 40        .byte $40   ; 
- D 3 - I - 0x002DC2 00:EDB2: 11        .byte $11   ; 
- D 3 - I - 0x002DC3 00:EDB3: 30        .byte $30   ; 
- D 3 - I - 0x002DC4 00:EDB4: 8D        .byte $8D   ; 
- D 3 - I - 0x002DC5 00:EDB5: 40        .byte $40   ; 
- D 3 - I - 0x002DC6 00:EDB6: 0A        .byte $0A   ; 
- D 3 - I - 0x002DC7 00:EDB7: 0C        .byte $0C   ; 
- D 3 - I - 0x002DC8 00:EDB8: 40        .byte $40   ; 
- D 3 - I - 0x002DC9 00:EDB9: 0B        .byte $0B   ; 
- D 3 - I - 0x002DCA 00:EDBA: 0D        .byte $0D   ; 
- D 3 - I - 0x002DCB 00:EDBB: 40        .byte $40   ; 
- D 3 - I - 0x002DCC 00:EDBC: 03        .byte $03   ; 
- D 3 - I - 0x002DCD 00:EDBD: 8D        .byte $8D   ; 
- D 3 - I - 0x002DCE 00:EDBE: 40        .byte $40   ; 
- D 3 - I - 0x002DCF 00:EDBF: 09        .byte $09   ; 
- D 3 - I - 0x002DD0 00:EDC0: 8C        .byte $8C   ; 
- D 3 - I - 0x002DD1 00:EDC1: 40        .byte $40   ; 
- D 3 - I - 0x002DD2 00:EDC2: 02        .byte $02   ; 
- D 3 - I - 0x002DD3 00:EDC3: 0C        .byte $0C   ; 
- D 3 - I - 0x002DD4 00:EDC4: 40        .byte $40   ; 
- D 3 - I - 0x002DD5 00:EDC5: 0E        .byte $0E   ; 
- D 3 - I - 0x002DD6 00:EDC6: 31        .byte $31   ; 
- D 3 - I - 0x002DD7 00:EDC7: 09        .byte $09   ; 



_off_003_EDC8_02:
- D 3 - I - 0x002DD8 00:EDC8: 02        .byte $02   ; 
- D 3 - I - 0x002DD9 00:EDC9: 40        .byte $40   ; 
- D 3 - I - 0x002DDA 00:EDCA: 0F        .byte $0F   ; 
- D 3 - I - 0x002DDB 00:EDCB: 30        .byte $30   ; 
- D 3 - I - 0x002DDC 00:EDCC: 40        .byte $40   ; 
- D 3 - I - 0x002DDD 00:EDCD: 34        .byte $34   ; 
- D 3 - I - 0x002DDE 00:EDCE: 03        .byte $03   ; 
- D 3 - I - 0x002DDF 00:EDCF: 40        .byte $40   ; 
- D 3 - I - 0x002DE0 00:EDD0: 07        .byte $07   ; 
- D 3 - I - 0x002DE1 00:EDD1: 04        .byte $04   ; 
- D 3 - I - 0x002DE2 00:EDD2: 40        .byte $40   ; 
- D 3 - I - 0x002DE3 00:EDD3: 0C        .byte $0C   ; 
- D 3 - I - 0x002DE4 00:EDD4: 03        .byte $03   ; 
- D 3 - I - 0x002DE5 00:EDD5: 40        .byte $40   ; 
- D 3 - I - 0x002DE6 00:EDD6: 0A        .byte $0A   ; 
- D 3 - I - 0x002DE7 00:EDD7: 04        .byte $04   ; 
- D 3 - I - 0x002DE8 00:EDD8: 40        .byte $40   ; 
- D 3 - I - 0x002DE9 00:EDD9: 0E        .byte $0E   ; 
- D 3 - I - 0x002DEA 00:EDDA: 03        .byte $03   ; 
- D 3 - I - 0x002DEB 00:EDDB: 40        .byte $40   ; 
- D 3 - I - 0x002DEC 00:EDDC: 06        .byte $06   ; 
- D 3 - I - 0x002DED 00:EDDD: 83        .byte $83   ; 
- D 3 - I - 0x002DEE 00:EDDE: 40        .byte $40   ; 
- D 3 - I - 0x002DEF 00:EDDF: 09        .byte $09   ; 
- D 3 - I - 0x002DF0 00:EDE0: 04        .byte $04   ; 
- D 3 - I - 0x002DF1 00:EDE1: 40        .byte $40   ; 
- D 3 - I - 0x002DF2 00:EDE2: 06        .byte $06   ; 
- D 3 - I - 0x002DF3 00:EDE3: 84        .byte $84   ; 
- D 3 - I - 0x002DF4 00:EDE4: 40        .byte $40   ; 
- D 3 - I - 0x002DF5 00:EDE5: 0A        .byte $0A   ; 
- D 3 - I - 0x002DF6 00:EDE6: 31        .byte $31   ; 
- D 3 - I - 0x002DF7 00:EDE7: 07        .byte $07   ; 
- D 3 - I - 0x002DF8 00:EDE8: 40        .byte $40   ; 
- D 3 - I - 0x002DF9 00:EDE9: 04        .byte $04   ; 
- D 3 - I - 0x002DFA 00:EDEA: 07        .byte $07   ; 
- D 3 - I - 0x002DFB 00:EDEB: 40        .byte $40   ; 
- D 3 - I - 0x002DFC 00:EDEC: 05        .byte $05   ; 
- D 3 - I - 0x002DFD 00:EDED: 8B        .byte $8B   ; 
- D 3 - I - 0x002DFE 00:EDEE: 40        .byte $40   ; 
- D 3 - I - 0x002DFF 00:EDEF: 0E        .byte $0E   ; 
- D 3 - I - 0x002E00 00:EDF0: 06        .byte $06   ; 
- D 3 - I - 0x002E01 00:EDF1: 40        .byte $40   ; 
- D 3 - I - 0x002E02 00:EDF2: 09        .byte $09   ; 
- D 3 - I - 0x002E03 00:EDF3: 0A        .byte $0A   ; 
- D 3 - I - 0x002E04 00:EDF4: 40        .byte $40   ; 
- D 3 - I - 0x002E05 00:EDF5: 07        .byte $07   ; 
- D 3 - I - 0x002E06 00:EDF6: 0F        .byte $0F   ; 
- D 3 - I - 0x002E07 00:EDF7: 40        .byte $40   ; 
- D 3 - I - 0x002E08 00:EDF8: 02        .byte $02   ; 
- D 3 - I - 0x002E09 00:EDF9: 10        .byte $10   ; 
- D 3 - I - 0x002E0A 00:EDFA: 40        .byte $40   ; 
- D 3 - I - 0x002E0B 00:EDFB: 07        .byte $07   ; 
- D 3 - I - 0x002E0C 00:EDFC: 06        .byte $06   ; 
- D 3 - I - 0x002E0D 00:EDFD: 40        .byte $40   ; 
- D 3 - I - 0x002E0E 00:EDFE: 02        .byte $02   ; 
- D 3 - I - 0x002E0F 00:EDFF: 0B        .byte $0B   ; 
- D 3 - I - 0x002E10 00:EE00: 40        .byte $40   ; 
- D 3 - I - 0x002E11 00:EE01: 02        .byte $02   ; 
- D 3 - I - 0x002E12 00:EE02: 0A        .byte $0A   ; 
- D 3 - I - 0x002E13 00:EE03: 40        .byte $40   ; 
- D 3 - I - 0x002E14 00:EE04: 0B        .byte $0B   ; 
- D 3 - I - 0x002E15 00:EE05: 84        .byte $84   ; 
- D 3 - I - 0x002E16 00:EE06: 40        .byte $40   ; 
- D 3 - I - 0x002E17 00:EE07: 0B        .byte $0B   ; 
- D 3 - I - 0x002E18 00:EE08: 13        .byte $13   ; 
- D 3 - I - 0x002E19 00:EE09: 43        .byte $43   ; 
- D 3 - I - 0x002E1A 00:EE0A: 37        .byte $37   ; 
- D 3 - I - 0x002E1B 00:EE0B: 1B        .byte $1B   ; 
- D 3 - I - 0x002E1C 00:EE0C: 40        .byte $40   ; 
- D 3 - I - 0x002E1D 00:EE0D: 18        .byte $18   ; 
- D 3 - I - 0x002E1E 00:EE0E: 83        .byte $83   ; 
- D 3 - I - 0x002E1F 00:EE0F: 40        .byte $40   ; 
- D 3 - I - 0x002E20 00:EE10: 0A        .byte $0A   ; 
- D 3 - I - 0x002E21 00:EE11: 0E        .byte $0E   ; 
- D 3 - I - 0x002E22 00:EE12: 40        .byte $40   ; 
- D 3 - I - 0x002E23 00:EE13: 09        .byte $09   ; 
- D 3 - I - 0x002E24 00:EE14: 07        .byte $07   ; 
- D 3 - I - 0x002E25 00:EE15: 40        .byte $40   ; 
- D 3 - I - 0x002E26 00:EE16: 02        .byte $02   ; 
- D 3 - I - 0x002E27 00:EE17: 11        .byte $11   ; 
- D 3 - I - 0x002E28 00:EE18: 46        .byte $46   ; 
- D 3 - I - 0x002E29 00:EE19: 16        .byte $16   ; 
- D 3 - I - 0x002E2A 00:EE1A: 17        .byte $17   ; 
- D 3 - I - 0x002E2B 00:EE1B: 40        .byte $40   ; 
- D 3 - I - 0x002E2C 00:EE1C: 0F        .byte $0F   ; 
- D 3 - I - 0x002E2D 00:EE1D: 0E        .byte $0E   ; 
- D 3 - I - 0x002E2E 00:EE1E: 40        .byte $40   ; 
- D 3 - I - 0x002E2F 00:EE1F: 0B        .byte $0B   ; 
- D 3 - I - 0x002E30 00:EE20: 05        .byte $05   ; 
- D 3 - I - 0x002E31 00:EE21: 40        .byte $40   ; 
- D 3 - I - 0x002E32 00:EE22: 05        .byte $05   ; 
- D 3 - I - 0x002E33 00:EE23: 87        .byte $87   ; 
- D 3 - I - 0x002E34 00:EE24: 40        .byte $40   ; 
- D 3 - I - 0x002E35 00:EE25: 09        .byte $09   ; 
- D 3 - I - 0x002E36 00:EE26: 03        .byte $03   ; 
- D 3 - I - 0x002E37 00:EE27: 40        .byte $40   ; 
- D 3 - I - 0x002E38 00:EE28: 0E        .byte $0E   ; 
- D 3 - I - 0x002E39 00:EE29: 05        .byte $05   ; 
- D 3 - I - 0x002E3A 00:EE2A: 40        .byte $40   ; 
- D 3 - I - 0x002E3B 00:EE2B: 06        .byte $06   ; 
- D 3 - I - 0x002E3C 00:EE2C: 0A        .byte $0A   ; 
- D 3 - I - 0x002E3D 00:EE2D: 40        .byte $40   ; 
- D 3 - I - 0x002E3E 00:EE2E: 06        .byte $06   ; 
- D 3 - I - 0x002E3F 00:EE2F: 06        .byte $06   ; 
- D 3 - I - 0x002E40 00:EE30: 40        .byte $40   ; 
- D 3 - I - 0x002E41 00:EE31: 05        .byte $05   ; 
- D 3 - I - 0x002E42 00:EE32: 05        .byte $05   ; 
- D 3 - I - 0x002E43 00:EE33: 40        .byte $40   ; 
- D 3 - I - 0x002E44 00:EE34: 0F        .byte $0F   ; 
- D 3 - I - 0x002E45 00:EE35: 0F        .byte $0F   ; 
- D 3 - I - 0x002E46 00:EE36: 40        .byte $40   ; 
- D 3 - I - 0x002E47 00:EE37: 0B        .byte $0B   ; 
- D 3 - I - 0x002E48 00:EE38: 30        .byte $30   ; 
- D 3 - I - 0x002E49 00:EE39: 13        .byte $13   ; 
- D 3 - I - 0x002E4A 00:EE3A: 43        .byte $43   ; 
- D 3 - I - 0x002E4B 00:EE3B: 37        .byte $37   ; 
- D 3 - I - 0x002E4C 00:EE3C: 1B        .byte $1B   ; 
- D 3 - I - 0x002E4D 00:EE3D: 40        .byte $40   ; 
- D 3 - I - 0x002E4E 00:EE3E: 0D        .byte $0D   ; 
- D 3 - I - 0x002E4F 00:EE3F: 12        .byte $12   ; 
- D 3 - I - 0x002E50 00:EE40: 42        .byte $42   ; 
- D 3 - I - 0x002E51 00:EE41: 2A        .byte $2A   ; 
- D 3 - I - 0x002E52 00:EE42: 19        .byte $19   ; 
- D 3 - I - 0x002E53 00:EE43: 40        .byte $40   ; 
- D 3 - I - 0x002E54 00:EE44: 11        .byte $11   ; 
- D 3 - I - 0x002E55 00:EE45: 04        .byte $04   ; 
- D 3 - I - 0x002E56 00:EE46: 40        .byte $40   ; 
- D 3 - I - 0x002E57 00:EE47: 02        .byte $02   ; 
- D 3 - I - 0x002E58 00:EE48: 8C        .byte $8C   ; 
- D 3 - I - 0x002E59 00:EE49: 40        .byte $40   ; 
- D 3 - I - 0x002E5A 00:EE4A: 06        .byte $06   ; 
- D 3 - I - 0x002E5B 00:EE4B: 0D        .byte $0D   ; 
- D 3 - I - 0x002E5C 00:EE4C: 40        .byte $40   ; 
- D 3 - I - 0x002E5D 00:EE4D: 05        .byte $05   ; 
- D 3 - I - 0x002E5E 00:EE4E: 0C        .byte $0C   ; 
- D 3 - I - 0x002E5F 00:EE4F: 40        .byte $40   ; 
- D 3 - I - 0x002E60 00:EE50: 05        .byte $05   ; 
- D 3 - I - 0x002E61 00:EE51: 03        .byte $03   ; 
- D 3 - I - 0x002E62 00:EE52: 40        .byte $40   ; 
- D 3 - I - 0x002E63 00:EE53: 02        .byte $02   ; 
- D 3 - I - 0x002E64 00:EE54: 8D        .byte $8D   ; 
- D 3 - I - 0x002E65 00:EE55: 40        .byte $40   ; 
- D 3 - I - 0x002E66 00:EE56: 15        .byte $15   ; 
- D 3 - I - 0x002E67 00:EE57: 31        .byte $31   ; 
- D 3 - I - 0x002E68 00:EE58: 09        .byte $09   ; 



_off_003_EE59_01:
- D 3 - I - 0x002E69 00:EE59: 02        .byte $02   ; 
- D 3 - I - 0x002E6A 00:EE5A: 40        .byte $40   ; 
- D 3 - I - 0x002E6B 00:EE5B: 0F        .byte $0F   ; 
- D 3 - I - 0x002E6C 00:EE5C: 30        .byte $30   ; 
- D 3 - I - 0x002E6D 00:EE5D: 40        .byte $40   ; 
- D 3 - I - 0x002E6E 00:EE5E: 33        .byte $33   ; 
- D 3 - I - 0x002E6F 00:EE5F: 31        .byte $31   ; 
- D 3 - I - 0x002E70 00:EE60: 15        .byte $15   ; 
- D 3 - I - 0x002E71 00:EE61: 41        .byte $41   ; 
- D 3 - I - 0x002E72 00:EE62: 06        .byte $06   ; 
- D 3 - I - 0x002E73 00:EE63: 21        .byte $21   ; 
- D 3 - I - 0x002E74 00:EE64: 45        .byte $45   ; 
- D 3 - I - 0x002E75 00:EE65: 06        .byte $06   ; 
- D 3 - I - 0x002E76 00:EE66: 23        .byte $23   ; 
- D 3 - I - 0x002E77 00:EE67: 40        .byte $40   ; 
- D 3 - I - 0x002E78 00:EE68: 0A        .byte $0A   ; 
- D 3 - I - 0x002E79 00:EE69: 07        .byte $07   ; 
- D 3 - I - 0x002E7A 00:EE6A: 40        .byte $40   ; 
- D 3 - I - 0x002E7B 00:EE6B: 06        .byte $06   ; 
- D 3 - I - 0x002E7C 00:EE6C: 87        .byte $87   ; 
- D 3 - I - 0x002E7D 00:EE6D: 40        .byte $40   ; 
- D 3 - I - 0x002E7E 00:EE6E: 08        .byte $08   ; 
- D 3 - I - 0x002E7F 00:EE6F: 0C        .byte $0C   ; 
- D 3 - I - 0x002E80 00:EE70: 40        .byte $40   ; 
- D 3 - I - 0x002E81 00:EE71: 0B        .byte $0B   ; 
- D 3 - I - 0x002E82 00:EE72: 15        .byte $15   ; 
- D 3 - I - 0x002E83 00:EE73: 41        .byte $41   ; 
- D 3 - I - 0x002E84 00:EE74: 06        .byte $06   ; 
- D 3 - I - 0x002E85 00:EE75: 21        .byte $21   ; 
- D 3 - I - 0x002E86 00:EE76: 45        .byte $45   ; 
- D 3 - I - 0x002E87 00:EE77: 06        .byte $06   ; 
- D 3 - I - 0x002E88 00:EE78: 23        .byte $23   ; 
- D 3 - I - 0x002E89 00:EE79: 40        .byte $40   ; 
- D 3 - I - 0x002E8A 00:EE7A: 03        .byte $03   ; 
- D 3 - I - 0x002E8B 00:EE7B: 87        .byte $87   ; 
- D 3 - I - 0x002E8C 00:EE7C: 40        .byte $40   ; 
- D 3 - I - 0x002E8D 00:EE7D: 0C        .byte $0C   ; 
- D 3 - I - 0x002E8E 00:EE7E: 0F        .byte $0F   ; 
- D 3 - I - 0x002E8F 00:EE7F: 40        .byte $40   ; 
- D 3 - I - 0x002E90 00:EE80: 02        .byte $02   ; 
- D 3 - I - 0x002E91 00:EE81: 10        .byte $10   ; 
- D 3 - I - 0x002E92 00:EE82: 40        .byte $40   ; 
- D 3 - I - 0x002E93 00:EE83: 0F        .byte $0F   ; 
- D 3 - I - 0x002E94 00:EE84: 07        .byte $07   ; 
- D 3 - I - 0x002E95 00:EE85: 40        .byte $40   ; 
- D 3 - I - 0x002E96 00:EE86: 0B        .byte $0B   ; 
- D 3 - I - 0x002E97 00:EE87: 07        .byte $07   ; 
- D 3 - I - 0x002E98 00:EE88: 40        .byte $40   ; 
- D 3 - I - 0x002E99 00:EE89: 26        .byte $26   ; 
- D 3 - I - 0x002E9A 00:EE8A: 08        .byte $08   ; 
- D 3 - I - 0x002E9B 00:EE8B: 40        .byte $40   ; 
- D 3 - I - 0x002E9C 00:EE8C: 02        .byte $02   ; 
- D 3 - I - 0x002E9D 00:EE8D: 0B        .byte $0B   ; 
- D 3 - I - 0x002E9E 00:EE8E: 40        .byte $40   ; 
- D 3 - I - 0x002E9F 00:EE8F: 02        .byte $02   ; 
- D 3 - I - 0x002EA0 00:EE90: 88        .byte $88   ; 
- D 3 - I - 0x002EA1 00:EE91: 40        .byte $40   ; 
- D 3 - I - 0x002EA2 00:EE92: 24        .byte $24   ; 
- D 3 - I - 0x002EA3 00:EE93: 0E        .byte $0E   ; 
- D 3 - I - 0x002EA4 00:EE94: 40        .byte $40   ; 
- D 3 - I - 0x002EA5 00:EE95: 02        .byte $02   ; 
- D 3 - I - 0x002EA6 00:EE96: 08        .byte $08   ; 
- D 3 - I - 0x002EA7 00:EE97: 40        .byte $40   ; 
- D 3 - I - 0x002EA8 00:EE98: 02        .byte $02   ; 
- D 3 - I - 0x002EA9 00:EE99: 11        .byte $11   ; 
- D 3 - I - 0x002EAA 00:EE9A: 46        .byte $46   ; 
- D 3 - I - 0x002EAB 00:EE9B: 0A        .byte $0A   ; 
- D 3 - I - 0x002EAC 00:EE9C: 17        .byte $17   ; 
- D 3 - I - 0x002EAD 00:EE9D: 40        .byte $40   ; 
- D 3 - I - 0x002EAE 00:EE9E: 02        .byte $02   ; 
- D 3 - I - 0x002EAF 00:EE9F: 0E        .byte $0E   ; 
- D 3 - I - 0x002EB0 00:EEA0: 40        .byte $40   ; 
- D 3 - I - 0x002EB1 00:EEA1: 02        .byte $02   ; 
- D 3 - I - 0x002EB2 00:EEA2: 11        .byte $11   ; 
- D 3 - I - 0x002EB3 00:EEA3: 46        .byte $46   ; 
- D 3 - I - 0x002EB4 00:EEA4: 0E        .byte $0E   ; 
- D 3 - I - 0x002EB5 00:EEA5: 17        .byte $17   ; 
- D 3 - I - 0x002EB6 00:EEA6: 40        .byte $40   ; 
- D 3 - I - 0x002EB7 00:EEA7: 15        .byte $15   ; 
- D 3 - I - 0x002EB8 00:EEA8: 10        .byte $10   ; 
- D 3 - I - 0x002EB9 00:EEA9: 40        .byte $40   ; 
- D 3 - I - 0x002EBA 00:EEAA: 06        .byte $06   ; 
- D 3 - I - 0x002EBB 00:EEAB: 81        .byte $81   ; 
- D 3 - I - 0x002EBC 00:EEAC: 40        .byte $40   ; 
- D 3 - I - 0x002EBD 00:EEAD: 02        .byte $02   ; 
- D 3 - I - 0x002EBE 00:EEAE: 81        .byte $81   ; 
- D 3 - I - 0x002EBF 00:EEAF: 40        .byte $40   ; 
- D 3 - I - 0x002EC0 00:EEB0: 02        .byte $02   ; 
- D 3 - I - 0x002EC1 00:EEB1: 01        .byte $01   ; 
- D 3 - I - 0x002EC2 00:EEB2: 40        .byte $40   ; 
- D 3 - I - 0x002EC3 00:EEB3: 02        .byte $02   ; 
- D 3 - I - 0x002EC4 00:EEB4: 01        .byte $01   ; 
- D 3 - I - 0x002EC5 00:EEB5: 40        .byte $40   ; 
- D 3 - I - 0x002EC6 00:EEB6: 02        .byte $02   ; 
- D 3 - I - 0x002EC7 00:EEB7: 01        .byte $01   ; 
- D 3 - I - 0x002EC8 00:EEB8: 40        .byte $40   ; 
- D 3 - I - 0x002EC9 00:EEB9: 02        .byte $02   ; 
- D 3 - I - 0x002ECA 00:EEBA: 01        .byte $01   ; 
- D 3 - I - 0x002ECB 00:EEBB: 40        .byte $40   ; 
- D 3 - I - 0x002ECC 00:EEBC: 17        .byte $17   ; 
- D 3 - I - 0x002ECD 00:EEBD: 30        .byte $30   ; 
- D 3 - I - 0x002ECE 00:EEBE: 13        .byte $13   ; 
- D 3 - I - 0x002ECF 00:EEBF: 43        .byte $43   ; 
- D 3 - I - 0x002ED0 00:EEC0: 37        .byte $37   ; 
- D 3 - I - 0x002ED1 00:EEC1: 1B        .byte $1B   ; 
- D 3 - I - 0x002ED2 00:EEC2: 40        .byte $40   ; 
- D 3 - I - 0x002ED3 00:EEC3: 1F        .byte $1F   ; 
- D 3 - I - 0x002ED4 00:EEC4: 0C        .byte $0C   ; 
- D 3 - I - 0x002ED5 00:EEC5: 40        .byte $40   ; 
- D 3 - I - 0x002ED6 00:EEC6: 0E        .byte $0E   ; 
- D 3 - I - 0x002ED7 00:EEC7: 0D        .byte $0D   ; 
- D 3 - I - 0x002ED8 00:EEC8: 40        .byte $40   ; 
- D 3 - I - 0x002ED9 00:EEC9: 04        .byte $04   ; 
- D 3 - I - 0x002EDA 00:EECA: 8D        .byte $8D   ; 
- D 3 - I - 0x002EDB 00:EECB: 40        .byte $40   ; 
- D 3 - I - 0x002EDC 00:EECC: 05        .byte $05   ; 
- D 3 - I - 0x002EDD 00:EECD: 0C        .byte $0C   ; 
- D 3 - I - 0x002EDE 00:EECE: 40        .byte $40   ; 
- D 3 - I - 0x002EDF 00:EECF: 1B        .byte $1B   ; 
- D 3 - I - 0x002EE0 00:EED0: 31        .byte $31   ; 
- D 3 - I - 0x002EE1 00:EED1: 09        .byte $09   ; 



_off_003_EED2_03:
- D 3 - I - 0x002EE2 00:EED2: 02        .byte $02   ; 
- D 3 - I - 0x002EE3 00:EED3: 40        .byte $40   ; 
- D 3 - I - 0x002EE4 00:EED4: 10        .byte $10   ; 
- D 3 - I - 0x002EE5 00:EED5: 30        .byte $30   ; 
- D 3 - I - 0x002EE6 00:EED6: 40        .byte $40   ; 
- D 3 - I - 0x002EE7 00:EED7: 50        .byte $50   ; 
- D 3 - I - 0x002EE8 00:EED8: 31        .byte $31   ; 
- D 3 - I - 0x002EE9 00:EED9: 14        .byte $14   ; 
- D 3 - I - 0x002EEA 00:EEDA: 44        .byte $44   ; 
- D 3 - I - 0x002EEB 00:EEDB: 03        .byte $03   ; 
- D 3 - I - 0x002EEC 00:EEDC: 1E        .byte $1E   ; 
- D 3 - I - 0x002EED 00:EEDD: 44        .byte $44   ; 
- D 3 - I - 0x002EEE 00:EEDE: 04        .byte $04   ; 
- D 3 - I - 0x002EEF 00:EEDF: 1E        .byte $1E   ; 
- D 3 - I - 0x002EF0 00:EEE0: 44        .byte $44   ; 
- D 3 - I - 0x002EF1 00:EEE1: 04        .byte $04   ; 
- D 3 - I - 0x002EF2 00:EEE2: 1F        .byte $1F   ; 
- D 3 - I - 0x002EF3 00:EEE3: 1B        .byte $1B   ; 
- D 3 - I - 0x002EF4 00:EEE4: 40        .byte $40   ; 
- D 3 - I - 0x002EF5 00:EEE5: 0F        .byte $0F   ; 
- D 3 - I - 0x002EF6 00:EEE6: 0D        .byte $0D   ; 
- D 3 - I - 0x002EF7 00:EEE7: 40        .byte $40   ; 
- D 3 - I - 0x002EF8 00:EEE8: 05        .byte $05   ; 
- D 3 - I - 0x002EF9 00:EEE9: 83        .byte $83   ; 
- D 3 - I - 0x002EFA 00:EEEA: 40        .byte $40   ; 
- D 3 - I - 0x002EFB 00:EEEB: 03        .byte $03   ; 
- D 3 - I - 0x002EFC 00:EEEC: 0C        .byte $0C   ; 
- D 3 - I - 0x002EFD 00:EEED: 40        .byte $40   ; 
- D 3 - I - 0x002EFE 00:EEEE: 09        .byte $09   ; 
- D 3 - I - 0x002EFF 00:EEEF: 14        .byte $14   ; 
- D 3 - I - 0x002F00 00:EEF0: 44        .byte $44   ; 
- D 3 - I - 0x002F01 00:EEF1: 03        .byte $03   ; 
- D 3 - I - 0x002F02 00:EEF2: 1E        .byte $1E   ; 
- D 3 - I - 0x002F03 00:EEF3: 44        .byte $44   ; 
- D 3 - I - 0x002F04 00:EEF4: 04        .byte $04   ; 
- D 3 - I - 0x002F05 00:EEF5: 1E        .byte $1E   ; 
- D 3 - I - 0x002F06 00:EEF6: 44        .byte $44   ; 
- D 3 - I - 0x002F07 00:EEF7: 04        .byte $04   ; 
- D 3 - I - 0x002F08 00:EEF8: 1F        .byte $1F   ; 
- D 3 - I - 0x002F09 00:EEF9: 1B        .byte $1B   ; 
- D 3 - I - 0x002F0A 00:EEFA: 40        .byte $40   ; 
- D 3 - I - 0x002F0B 00:EEFB: 04        .byte $04   ; 
- D 3 - I - 0x002F0C 00:EEFC: 07        .byte $07   ; 
- D 3 - I - 0x002F0D 00:EEFD: 40        .byte $40   ; 
- D 3 - I - 0x002F0E 00:EEFE: 02        .byte $02   ; 
- D 3 - I - 0x002F0F 00:EEFF: 87        .byte $87   ; 
- D 3 - I - 0x002F10 00:EF00: 40        .byte $40   ; 
- D 3 - I - 0x002F11 00:EF01: 02        .byte $02   ; 
- D 3 - I - 0x002F12 00:EF02: 87        .byte $87   ; 
- D 3 - I - 0x002F13 00:EF03: 40        .byte $40   ; 
- D 3 - I - 0x002F14 00:EF04: 09        .byte $09   ; 
- D 3 - I - 0x002F15 00:EF05: 03        .byte $03   ; 
- D 3 - I - 0x002F16 00:EF06: 40        .byte $40   ; 
- D 3 - I - 0x002F17 00:EF07: 04        .byte $04   ; 
- D 3 - I - 0x002F18 00:EF08: 84        .byte $84   ; 
- D 3 - I - 0x002F19 00:EF09: 40        .byte $40   ; 
- D 3 - I - 0x002F1A 00:EF0A: 05        .byte $05   ; 
- D 3 - I - 0x002F1B 00:EF0B: 04        .byte $04   ; 
- D 3 - I - 0x002F1C 00:EF0C: 40        .byte $40   ; 
- D 3 - I - 0x002F1D 00:EF0D: 07        .byte $07   ; 
- D 3 - I - 0x002F1E 00:EF0E: 83        .byte $83   ; 
- D 3 - I - 0x002F1F 00:EF0F: 40        .byte $40   ; 
- D 3 - I - 0x002F20 00:EF10: 05        .byte $05   ; 
- D 3 - I - 0x002F21 00:EF11: 10        .byte $10   ; 
- D 3 - I - 0x002F22 00:EF12: 40        .byte $40   ; 
- D 3 - I - 0x002F23 00:EF13: 0C        .byte $0C   ; 
- D 3 - I - 0x002F24 00:EF14: 8A        .byte $8A   ; 
- D 3 - I - 0x002F25 00:EF15: 40        .byte $40   ; 
- D 3 - I - 0x002F26 00:EF16: 0C        .byte $0C   ; 
- D 3 - I - 0x002F27 00:EF17: 07        .byte $07   ; 
- D 3 - I - 0x002F28 00:EF18: 40        .byte $40   ; 
- D 3 - I - 0x002F29 00:EF19: 02        .byte $02   ; 
- D 3 - I - 0x002F2A 00:EF1A: 11        .byte $11   ; 
- D 3 - I - 0x002F2B 00:EF1B: 46        .byte $46   ; 
- D 3 - I - 0x002F2C 00:EF1C: 0A        .byte $0A   ; 
- D 3 - I - 0x002F2D 00:EF1D: 17        .byte $17   ; 
- D 3 - I - 0x002F2E 00:EF1E: 40        .byte $40   ; 
- D 3 - I - 0x002F2F 00:EF1F: 19        .byte $19   ; 
- D 3 - I - 0x002F30 00:EF20: 0E        .byte $0E   ; 
- D 3 - I - 0x002F31 00:EF21: 40        .byte $40   ; 
- D 3 - I - 0x002F32 00:EF22: 0D        .byte $0D   ; 
- D 3 - I - 0x002F33 00:EF23: 0E        .byte $0E   ; 
- D 3 - I - 0x002F34 00:EF24: 40        .byte $40   ; 
- D 3 - I - 0x002F35 00:EF25: 04        .byte $04   ; 
- D 3 - I - 0x002F36 00:EF26: 0B        .byte $0B   ; 
- D 3 - I - 0x002F37 00:EF27: 40        .byte $40   ; 
- D 3 - I - 0x002F38 00:EF28: 04        .byte $04   ; 
- D 3 - I - 0x002F39 00:EF29: 08        .byte $08   ; 
- D 3 - I - 0x002F3A 00:EF2A: 40        .byte $40   ; 
- D 3 - I - 0x002F3B 00:EF2B: 02        .byte $02   ; 
- D 3 - I - 0x002F3C 00:EF2C: 08        .byte $08   ; 
- D 3 - I - 0x002F3D 00:EF2D: 40        .byte $40   ; 
- D 3 - I - 0x002F3E 00:EF2E: 02        .byte $02   ; 
- D 3 - I - 0x002F3F 00:EF2F: 88        .byte $88   ; 
- D 3 - I - 0x002F40 00:EF30: 40        .byte $40   ; 
- D 3 - I - 0x002F41 00:EF31: 1A        .byte $1A   ; 
- D 3 - I - 0x002F42 00:EF32: 03        .byte $03   ; 
- D 3 - I - 0x002F43 00:EF33: 40        .byte $40   ; 
- D 3 - I - 0x002F44 00:EF34: 06        .byte $06   ; 
- D 3 - I - 0x002F45 00:EF35: 83        .byte $83   ; 
- D 3 - I - 0x002F46 00:EF36: 40        .byte $40   ; 
- D 3 - I - 0x002F47 00:EF37: 03        .byte $03   ; 
- D 3 - I - 0x002F48 00:EF38: 04        .byte $04   ; 
- D 3 - I - 0x002F49 00:EF39: 40        .byte $40   ; 
- D 3 - I - 0x002F4A 00:EF3A: 08        .byte $08   ; 
- D 3 - I - 0x002F4B 00:EF3B: 0E        .byte $0E   ; 
- D 3 - I - 0x002F4C 00:EF3C: 40        .byte $40   ; 
- D 3 - I - 0x002F4D 00:EF3D: 04        .byte $04   ; 
- D 3 - I - 0x002F4E 00:EF3E: 0B        .byte $0B   ; 
- D 3 - I - 0x002F4F 00:EF3F: 40        .byte $40   ; 
- D 3 - I - 0x002F50 00:EF40: 02        .byte $02   ; 
- D 3 - I - 0x002F51 00:EF41: 0B        .byte $0B   ; 
- D 3 - I - 0x002F52 00:EF42: 40        .byte $40   ; 
- D 3 - I - 0x002F53 00:EF43: 02        .byte $02   ; 
- D 3 - I - 0x002F54 00:EF44: 0B        .byte $0B   ; 
- D 3 - I - 0x002F55 00:EF45: 40        .byte $40   ; 
- D 3 - I - 0x002F56 00:EF46: 02        .byte $02   ; 
- D 3 - I - 0x002F57 00:EF47: 8B        .byte $8B   ; 
- D 3 - I - 0x002F58 00:EF48: 40        .byte $40   ; 
- D 3 - I - 0x002F59 00:EF49: 02        .byte $02   ; 
- D 3 - I - 0x002F5A 00:EF4A: 8B        .byte $8B   ; 
- D 3 - I - 0x002F5B 00:EF4B: 40        .byte $40   ; 
- D 3 - I - 0x002F5C 00:EF4C: 21        .byte $21   ; 
- D 3 - I - 0x002F5D 00:EF4D: 0F        .byte $0F   ; 
- D 3 - I - 0x002F5E 00:EF4E: 40        .byte $40   ; 
- D 3 - I - 0x002F5F 00:EF4F: 0C        .byte $0C   ; 
- D 3 - I - 0x002F60 00:EF50: 0D        .byte $0D   ; 
- D 3 - I - 0x002F61 00:EF51: 40        .byte $40   ; 
- D 3 - I - 0x002F62 00:EF52: 02        .byte $02   ; 
- D 3 - I - 0x002F63 00:EF53: 88        .byte $88   ; 
- D 3 - I - 0x002F64 00:EF54: 40        .byte $40   ; 
- D 3 - I - 0x002F65 00:EF55: 02        .byte $02   ; 
- D 3 - I - 0x002F66 00:EF56: 13        .byte $13   ; 
- D 3 - I - 0x002F67 00:EF57: 43        .byte $43   ; 
- D 3 - I - 0x002F68 00:EF58: 17        .byte $17   ; 
- D 3 - I - 0x002F69 00:EF59: 1B        .byte $1B   ; 
- D 3 - I - 0x002F6A 00:EF5A: 40        .byte $40   ; 
- D 3 - I - 0x002F6B 00:EF5B: 06        .byte $06   ; 
- D 3 - I - 0x002F6C 00:EF5C: 12        .byte $12   ; 
- D 3 - I - 0x002F6D 00:EF5D: 42        .byte $42   ; 
- D 3 - I - 0x002F6E 00:EF5E: 17        .byte $17   ; 
- D 3 - I - 0x002F6F 00:EF5F: 19        .byte $19   ; 
- D 3 - I - 0x002F70 00:EF60: 40        .byte $40   ; 
- D 3 - I - 0x002F71 00:EF61: 03        .byte $03   ; 
- D 3 - I - 0x002F72 00:EF62: 03        .byte $03   ; 
- D 3 - I - 0x002F73 00:EF63: 40        .byte $40   ; 
- D 3 - I - 0x002F74 00:EF64: 08        .byte $08   ; 
- D 3 - I - 0x002F75 00:EF65: 05        .byte $05   ; 
- D 3 - I - 0x002F76 00:EF66: 40        .byte $40   ; 
- D 3 - I - 0x002F77 00:EF67: 02        .byte $02   ; 
- D 3 - I - 0x002F78 00:EF68: 05        .byte $05   ; 
- D 3 - I - 0x002F79 00:EF69: 40        .byte $40   ; 
- D 3 - I - 0x002F7A 00:EF6A: 02        .byte $02   ; 
- D 3 - I - 0x002F7B 00:EF6B: 05        .byte $05   ; 
- D 3 - I - 0x002F7C 00:EF6C: 40        .byte $40   ; 
- D 3 - I - 0x002F7D 00:EF6D: 02        .byte $02   ; 
- D 3 - I - 0x002F7E 00:EF6E: 05        .byte $05   ; 
- D 3 - I - 0x002F7F 00:EF6F: 40        .byte $40   ; 
- D 3 - I - 0x002F80 00:EF70: 02        .byte $02   ; 
- D 3 - I - 0x002F81 00:EF71: 05        .byte $05   ; 
- D 3 - I - 0x002F82 00:EF72: 40        .byte $40   ; 
- D 3 - I - 0x002F83 00:EF73: 02        .byte $02   ; 
- D 3 - I - 0x002F84 00:EF74: 11        .byte $11   ; 
- D 3 - I - 0x002F85 00:EF75: 46        .byte $46   ; 
- D 3 - I - 0x002F86 00:EF76: 0A        .byte $0A   ; 
- D 3 - I - 0x002F87 00:EF77: 30        .byte $30   ; 
- D 3 - I - 0x002F88 00:EF78: 17        .byte $17   ; 
- D 3 - I - 0x002F89 00:EF79: 40        .byte $40   ; 
- D 3 - I - 0x002F8A 00:EF7A: 11        .byte $11   ; 
- D 3 - I - 0x002F8B 00:EF7B: 10        .byte $10   ; 
- D 3 - I - 0x002F8C 00:EF7C: 40        .byte $40   ; 
- D 3 - I - 0x002F8D 00:EF7D: 0E        .byte $0E   ; 
- D 3 - I - 0x002F8E 00:EF7E: 0C        .byte $0C   ; 
- D 3 - I - 0x002F8F 00:EF7F: 40        .byte $40   ; 
- D 3 - I - 0x002F90 00:EF80: 06        .byte $06   ; 
- D 3 - I - 0x002F91 00:EF81: 8C        .byte $8C   ; 
- D 3 - I - 0x002F92 00:EF82: 40        .byte $40   ; 
- D 3 - I - 0x002F93 00:EF83: 09        .byte $09   ; 
- D 3 - I - 0x002F94 00:EF84: 0D        .byte $0D   ; 
- D 3 - I - 0x002F95 00:EF85: 40        .byte $40   ; 
- D 3 - I - 0x002F96 00:EF86: 02        .byte $02   ; 
- D 3 - I - 0x002F97 00:EF87: 8D        .byte $8D   ; 
- D 3 - I - 0x002F98 00:EF88: 40        .byte $40   ; 
- D 3 - I - 0x002F99 00:EF89: 0C        .byte $0C   ; 
- D 3 - I - 0x002F9A 00:EF8A: 0C        .byte $0C   ; 
- D 3 - I - 0x002F9B 00:EF8B: 40        .byte $40   ; 
- D 3 - I - 0x002F9C 00:EF8C: 05        .byte $05   ; 
- D 3 - I - 0x002F9D 00:EF8D: 0D        .byte $0D   ; 
- D 3 - I - 0x002F9E 00:EF8E: 40        .byte $40   ; 
- D 3 - I - 0x002F9F 00:EF8F: 06        .byte $06   ; 
- D 3 - I - 0x002FA0 00:EF90: 8C        .byte $8C   ; 
- D 3 - I - 0x002FA1 00:EF91: 40        .byte $40   ; 
- D 3 - I - 0x002FA2 00:EF92: 02        .byte $02   ; 
- D 3 - I - 0x002FA3 00:EF93: 0C        .byte $0C   ; 
- D 3 - I - 0x002FA4 00:EF94: 40        .byte $40   ; 
- D 3 - I - 0x002FA5 00:EF95: 07        .byte $07   ; 
- D 3 - I - 0x002FA6 00:EF96: 8D        .byte $8D   ; 
- D 3 - I - 0x002FA7 00:EF97: 40        .byte $40   ; 
- D 3 - I - 0x002FA8 00:EF98: 05        .byte $05   ; 
- D 3 - I - 0x002FA9 00:EF99: 0C        .byte $0C   ; 
- D 3 - I - 0x002FAA 00:EF9A: 40        .byte $40   ; 
- D 3 - I - 0x002FAB 00:EF9B: 04        .byte $04   ; 
- D 3 - I - 0x002FAC 00:EF9C: 0D        .byte $0D   ; 
- D 3 - I - 0x002FAD 00:EF9D: 40        .byte $40   ; 
- D 3 - I - 0x002FAE 00:EF9E: 07        .byte $07   ; 
- D 3 - I - 0x002FAF 00:EF9F: 8C        .byte $8C   ; 
- D 3 - I - 0x002FB0 00:EFA0: 40        .byte $40   ; 
- D 3 - I - 0x002FB1 00:EFA1: 02        .byte $02   ; 
- D 3 - I - 0x002FB2 00:EFA2: 31        .byte $31   ; 
- D 3 - I - 0x002FB3 00:EFA3: 0E        .byte $0E   ; 
- D 3 - I - 0x002FB4 00:EFA4: 40        .byte $40   ; 
- D 3 - I - 0x002FB5 00:EFA5: 05        .byte $05   ; 
- D 3 - I - 0x002FB6 00:EFA6: 09        .byte $09   ; 



_off_003_EFA7_04:
- D 3 - I - 0x002FB7 00:EFA7: 02        .byte $02   ; 
- D 3 - I - 0x002FB8 00:EFA8: 40        .byte $40   ; 
- D 3 - I - 0x002FB9 00:EFA9: 10        .byte $10   ; 
- D 3 - I - 0x002FBA 00:EFAA: 30        .byte $30   ; 
- D 3 - I - 0x002FBB 00:EFAB: 40        .byte $40   ; 
- D 3 - I - 0x002FBC 00:EFAC: 32        .byte $32   ; 
- D 3 - I - 0x002FBD 00:EFAD: 0F        .byte $0F   ; 
- D 3 - I - 0x002FBE 00:EFAE: 40        .byte $40   ; 
- D 3 - I - 0x002FBF 00:EFAF: 0F        .byte $0F   ; 
- D 3 - I - 0x002FC0 00:EFB0: 0C        .byte $0C   ; 
- D 3 - I - 0x002FC1 00:EFB1: 40        .byte $40   ; 
- D 3 - I - 0x002FC2 00:EFB2: 08        .byte $08   ; 
- D 3 - I - 0x002FC3 00:EFB3: 31        .byte $31   ; 
- D 3 - I - 0x002FC4 00:EFB4: 0E        .byte $0E   ; 
- D 3 - I - 0x002FC5 00:EFB5: 40        .byte $40   ; 
- D 3 - I - 0x002FC6 00:EFB6: 02        .byte $02   ; 
- D 3 - I - 0x002FC7 00:EFB7: 11        .byte $11   ; 
- D 3 - I - 0x002FC8 00:EFB8: 46        .byte $46   ; 
- D 3 - I - 0x002FC9 00:EFB9: 0E        .byte $0E   ; 
- D 3 - I - 0x002FCA 00:EFBA: 17        .byte $17   ; 
- D 3 - I - 0x002FCB 00:EFBB: 40        .byte $40   ; 
- D 3 - I - 0x002FCC 00:EFBC: 02        .byte $02   ; 
- D 3 - I - 0x002FCD 00:EFBD: 0A        .byte $0A   ; 
- D 3 - I - 0x002FCE 00:EFBE: 40        .byte $40   ; 
- D 3 - I - 0x002FCF 00:EFBF: 06        .byte $06   ; 
- D 3 - I - 0x002FD0 00:EFC0: 15        .byte $15   ; 
- D 3 - I - 0x002FD1 00:EFC1: 41        .byte $41   ; 
- D 3 - I - 0x002FD2 00:EFC2: 06        .byte $06   ; 
- D 3 - I - 0x002FD3 00:EFC3: 21        .byte $21   ; 
- D 3 - I - 0x002FD4 00:EFC4: 45        .byte $45   ; 
- D 3 - I - 0x002FD5 00:EFC5: 06        .byte $06   ; 
- D 3 - I - 0x002FD6 00:EFC6: 23        .byte $23   ; 
- D 3 - I - 0x002FD7 00:EFC7: 40        .byte $40   ; 
- D 3 - I - 0x002FD8 00:EFC8: 02        .byte $02   ; 
- D 3 - I - 0x002FD9 00:EFC9: 08        .byte $08   ; 
- D 3 - I - 0x002FDA 00:EFCA: 40        .byte $40   ; 
- D 3 - I - 0x002FDB 00:EFCB: 03        .byte $03   ; 
- D 3 - I - 0x002FDC 00:EFCC: 08        .byte $08   ; 
- D 3 - I - 0x002FDD 00:EFCD: 40        .byte $40   ; 
- D 3 - I - 0x002FDE 00:EFCE: 03        .byte $03   ; 
- D 3 - I - 0x002FDF 00:EFCF: 08        .byte $08   ; 
- D 3 - I - 0x002FE0 00:EFD0: 40        .byte $40   ; 
- D 3 - I - 0x002FE1 00:EFD1: 03        .byte $03   ; 
- D 3 - I - 0x002FE2 00:EFD2: 88        .byte $88   ; 
- D 3 - I - 0x002FE3 00:EFD3: 40        .byte $40   ; 
- D 3 - I - 0x002FE4 00:EFD4: 03        .byte $03   ; 
- D 3 - I - 0x002FE5 00:EFD5: 88        .byte $88   ; 
- D 3 - I - 0x002FE6 00:EFD6: 40        .byte $40   ; 
- D 3 - I - 0x002FE7 00:EFD7: 09        .byte $09   ; 
- D 3 - I - 0x002FE8 00:EFD8: 83        .byte $83   ; 
- D 3 - I - 0x002FE9 00:EFD9: 40        .byte $40   ; 
- D 3 - I - 0x002FEA 00:EFDA: 05        .byte $05   ; 
- D 3 - I - 0x002FEB 00:EFDB: 04        .byte $04   ; 
- D 3 - I - 0x002FEC 00:EFDC: 40        .byte $40   ; 
- D 3 - I - 0x002FED 00:EFDD: 08        .byte $08   ; 
- D 3 - I - 0x002FEE 00:EFDE: 10        .byte $10   ; 
- D 3 - I - 0x002FEF 00:EFDF: 40        .byte $40   ; 
- D 3 - I - 0x002FF0 00:EFE0: 11        .byte $11   ; 
- D 3 - I - 0x002FF1 00:EFE1: 0D        .byte $0D   ; 
- D 3 - I - 0x002FF2 00:EFE2: 40        .byte $40   ; 
- D 3 - I - 0x002FF3 00:EFE3: 13        .byte $13   ; 
- D 3 - I - 0x002FF4 00:EFE4: 0C        .byte $0C   ; 
- D 3 - I - 0x002FF5 00:EFE5: 40        .byte $40   ; 
- D 3 - I - 0x002FF6 00:EFE6: 14        .byte $14   ; 
- D 3 - I - 0x002FF7 00:EFE7: 0E        .byte $0E   ; 
- D 3 - I - 0x002FF8 00:EFE8: 40        .byte $40   ; 
- D 3 - I - 0x002FF9 00:EFE9: 13        .byte $13   ; 
- D 3 - I - 0x002FFA 00:EFEA: 05        .byte $05   ; 
- D 3 - I - 0x002FFB 00:EFEB: 40        .byte $40   ; 
- D 3 - I - 0x002FFC 00:EFEC: 04        .byte $04   ; 
- D 3 - I - 0x002FFD 00:EFED: 05        .byte $05   ; 
- D 3 - I - 0x002FFE 00:EFEE: 40        .byte $40   ; 
- D 3 - I - 0x002FFF 00:EFEF: 05        .byte $05   ; 
- D 3 - I - 0x003000 00:EFF0: 05        .byte $05   ; 
- D 3 - I - 0x003001 00:EFF1: 40        .byte $40   ; 
- D 3 - I - 0x003002 00:EFF2: 04        .byte $04   ; 
- D 3 - I - 0x003003 00:EFF3: 06        .byte $06   ; 
- D 3 - I - 0x003004 00:EFF4: 40        .byte $40   ; 
- D 3 - I - 0x003005 00:EFF5: 02        .byte $02   ; 
- D 3 - I - 0x003006 00:EFF6: 11        .byte $11   ; 
- D 3 - I - 0x003007 00:EFF7: 46        .byte $46   ; 
- D 3 - I - 0x003008 00:EFF8: 0A        .byte $0A   ; 
- D 3 - I - 0x003009 00:EFF9: 17        .byte $17   ; 
- D 3 - I - 0x00300A 00:EFFA: 40        .byte $40   ; 
- D 3 - I - 0x00300B 00:EFFB: 05        .byte $05   ; 
- D 3 - I - 0x00300C 00:EFFC: 0C        .byte $0C   ; 
- D 3 - I - 0x00300D 00:EFFD: 40        .byte $40   ; 
- D 3 - I - 0x00300E 00:EFFE: 03        .byte $03   ; 
- D 3 - I - 0x00300F 00:EFFF: 14        .byte $14   ; 
- D 3 - I - 0x003010 00:F000: 44        .byte $44   ; 
- D 3 - I - 0x003011 00:F001: 03        .byte $03   ; 
- D 3 - I - 0x003012 00:F002: 1E        .byte $1E   ; 
- D 3 - I - 0x003013 00:F003: 44        .byte $44   ; 
- D 3 - I - 0x003014 00:F004: 04        .byte $04   ; 
- D 3 - I - 0x003015 00:F005: 1E        .byte $1E   ; 
- D 3 - I - 0x003016 00:F006: 44        .byte $44   ; 
- D 3 - I - 0x003017 00:F007: 04        .byte $04   ; 
- D 3 - I - 0x003018 00:F008: 1F        .byte $1F   ; 
- D 3 - I - 0x003019 00:F009: 1B        .byte $1B   ; 
- D 3 - I - 0x00301A 00:F00A: 40        .byte $40   ; 
- D 3 - I - 0x00301B 00:F00B: 06        .byte $06   ; 
- D 3 - I - 0x00301C 00:F00C: 07        .byte $07   ; 
- D 3 - I - 0x00301D 00:F00D: 40        .byte $40   ; 
- D 3 - I - 0x00301E 00:F00E: 03        .byte $03   ; 
- D 3 - I - 0x00301F 00:F00F: 83        .byte $83   ; 
- D 3 - I - 0x003020 00:F010: 40        .byte $40   ; 
- D 3 - I - 0x003021 00:F011: 04        .byte $04   ; 
- D 3 - I - 0x003022 00:F012: 0E        .byte $0E   ; 
- D 3 - I - 0x003023 00:F013: 40        .byte $40   ; 
- D 3 - I - 0x003024 00:F014: 17        .byte $17   ; 
- D 3 - I - 0x003025 00:F015: 8A        .byte $8A   ; 
- D 3 - I - 0x003026 00:F016: 40        .byte $40   ; 
- D 3 - I - 0x003027 00:F017: 03        .byte $03   ; 
- D 3 - I - 0x003028 00:F018: 0E        .byte $0E   ; 
- D 3 - I - 0x003029 00:F019: 40        .byte $40   ; 
- D 3 - I - 0x00302A 00:F01A: 02        .byte $02   ; 
- D 3 - I - 0x00302B 00:F01B: 11        .byte $11   ; 
- D 3 - I - 0x00302C 00:F01C: 46        .byte $46   ; 
- D 3 - I - 0x00302D 00:F01D: 05        .byte $05   ; 
- D 3 - I - 0x00302E 00:F01E: 17        .byte $17   ; 
- D 3 - I - 0x00302F 00:F01F: 40        .byte $40   ; 
- D 3 - I - 0x003030 00:F020: 02        .byte $02   ; 
- D 3 - I - 0x003031 00:F021: 0B        .byte $0B   ; 
- D 3 - I - 0x003032 00:F022: 40        .byte $40   ; 
- D 3 - I - 0x003033 00:F023: 06        .byte $06   ; 
- D 3 - I - 0x003034 00:F024: 01        .byte $01   ; 
- D 3 - I - 0x003035 00:F025: 40        .byte $40   ; 
- D 3 - I - 0x003036 00:F026: 02        .byte $02   ; 
- D 3 - I - 0x003037 00:F027: 01        .byte $01   ; 
- D 3 - I - 0x003038 00:F028: 40        .byte $40   ; 
- D 3 - I - 0x003039 00:F029: 02        .byte $02   ; 
- D 3 - I - 0x00303A 00:F02A: 08        .byte $08   ; 
- D 3 - I - 0x00303B 00:F02B: 40        .byte $40   ; 
- D 3 - I - 0x00303C 00:F02C: 02        .byte $02   ; 
- D 3 - I - 0x00303D 00:F02D: 01        .byte $01   ; 
- D 3 - I - 0x00303E 00:F02E: 40        .byte $40   ; 
- D 3 - I - 0x00303F 00:F02F: 02        .byte $02   ; 
- D 3 - I - 0x003040 00:F030: 01        .byte $01   ; 
- D 3 - I - 0x003041 00:F031: 40        .byte $40   ; 
- D 3 - I - 0x003042 00:F032: 02        .byte $02   ; 
- D 3 - I - 0x003043 00:F033: 01        .byte $01   ; 
- D 3 - I - 0x003044 00:F034: 40        .byte $40   ; 
- D 3 - I - 0x003045 00:F035: 02        .byte $02   ; 
- D 3 - I - 0x003046 00:F036: 01        .byte $01   ; 
- D 3 - I - 0x003047 00:F037: 40        .byte $40   ; 
- D 3 - I - 0x003048 00:F038: 02        .byte $02   ; 
- D 3 - I - 0x003049 00:F039: 05        .byte $05   ; 
- D 3 - I - 0x00304A 00:F03A: 40        .byte $40   ; 
- D 3 - I - 0x00304B 00:F03B: 21        .byte $21   ; 
- D 3 - I - 0x00304C 00:F03C: 30        .byte $30   ; 
- D 3 - I - 0x00304D 00:F03D: 0C        .byte $0C   ; 
- D 3 - I - 0x00304E 00:F03E: 40        .byte $40   ; 
- D 3 - I - 0x00304F 00:F03F: 04        .byte $04   ; 
- D 3 - I - 0x003050 00:F040: 83        .byte $83   ; 
- D 3 - I - 0x003051 00:F041: 40        .byte $40   ; 
- D 3 - I - 0x003052 00:F042: 04        .byte $04   ; 
- D 3 - I - 0x003053 00:F043: 0D        .byte $0D   ; 
- D 3 - I - 0x003054 00:F044: 40        .byte $40   ; 
- D 3 - I - 0x003055 00:F045: 04        .byte $04   ; 
- D 3 - I - 0x003056 00:F046: 04        .byte $04   ; 
- D 3 - I - 0x003057 00:F047: 40        .byte $40   ; 
- D 3 - I - 0x003058 00:F048: 08        .byte $08   ; 
- D 3 - I - 0x003059 00:F049: 8C        .byte $8C   ; 
- D 3 - I - 0x00305A 00:F04A: 40        .byte $40   ; 
- D 3 - I - 0x00305B 00:F04B: 02        .byte $02   ; 
- D 3 - I - 0x00305C 00:F04C: 03        .byte $03   ; 
- D 3 - I - 0x00305D 00:F04D: 40        .byte $40   ; 
- D 3 - I - 0x00305E 00:F04E: 05        .byte $05   ; 
- D 3 - I - 0x00305F 00:F04F: 8D        .byte $8D   ; 
- D 3 - I - 0x003060 00:F050: 40        .byte $40   ; 
- D 3 - I - 0x003061 00:F051: 02        .byte $02   ; 
- D 3 - I - 0x003062 00:F052: 0D        .byte $0D   ; 
- D 3 - I - 0x003063 00:F053: 40        .byte $40   ; 
- D 3 - I - 0x003064 00:F054: 06        .byte $06   ; 
- D 3 - I - 0x003065 00:F055: 0C        .byte $0C   ; 
- D 3 - I - 0x003066 00:F056: 40        .byte $40   ; 
- D 3 - I - 0x003067 00:F057: 03        .byte $03   ; 
- D 3 - I - 0x003068 00:F058: 8C        .byte $8C   ; 
- D 3 - I - 0x003069 00:F059: 40        .byte $40   ; 
- D 3 - I - 0x00306A 00:F05A: 05        .byte $05   ; 
- D 3 - I - 0x00306B 00:F05B: 0D        .byte $0D   ; 
- D 3 - I - 0x00306C 00:F05C: 40        .byte $40   ; 
- D 3 - I - 0x00306D 00:F05D: 06        .byte $06   ; 
- D 3 - I - 0x00306E 00:F05E: 04        .byte $04   ; 
- D 3 - I - 0x00306F 00:F05F: 40        .byte $40   ; 
- D 3 - I - 0x003070 00:F060: 05        .byte $05   ; 
- D 3 - I - 0x003071 00:F061: 31        .byte $31   ; 
- D 3 - I - 0x003072 00:F062: 09        .byte $09   ; 



tbl_F063_lo:
- D 3 - - - 0x003073 00:F063: AB        .byte < _off_004_F0AB_00   ; 
- D 3 - - - 0x003074 00:F064: B3        .byte < _off_004_F0B3_01   ; 
- D 3 - - - 0x003075 00:F065: 01        .byte < _off_004_F101_02   ; 
- D 3 - - - 0x003076 00:F066: 01        .byte < _off_004_F101_03   ; 
- D 3 - - - 0x003077 00:F067: 0A        .byte < _off_004_F10A_04   ; 
- D 3 - - - 0x003078 00:F068: 12        .byte < _off_004_F112_05   ; 
- D 3 - - - 0x003079 00:F069: 6B        .byte < _off_004_F16B_06   ; 
- D 3 - - - 0x00307A 00:F06A: A4        .byte < _off_004_F1A4_07   ; 
- D 3 - - - 0x00307B 00:F06B: D1        .byte < _off_004_F1D1_08   ; 
- D 3 - - - 0x00307C 00:F06C: EB        .byte < _off_004_F1EB_09   ; 
- D 3 - - - 0x00307D 00:F06D: 5E        .byte < _off_004_F25E_0A   ; 
- D 3 - - - 0x00307E 00:F06E: 97        .byte < _off_004_F297_0B   ; 
- D 3 - - - 0x00307F 00:F06F: E2        .byte < _off_004_F2E2_0C   ; 
- D 3 - - - 0x003080 00:F070: CC        .byte < _off_004_F2CC_0D   ; 
- D 3 - - - 0x003081 00:F071: B4        .byte < _off_004_F4B4_0E   ; 
- D 3 - - - 0x003082 00:F072: 96        .byte < _off_004_F496_0F   ; 
- D 3 - - - 0x003083 00:F073: A5        .byte < _off_004_F4A5_10   ; 
- D 3 - - - 0x003084 00:F074: 56        .byte < _off_004_F456_11   ; 
- D 3 - - - 0x003085 00:F075: 2D        .byte < _off_004_F32D_12   ; 
- D 3 - - - 0x003086 00:F076: 35        .byte < _off_004_F335_13   ; 
- D 3 - - - 0x003087 00:F077: 5D        .byte < _off_004_F35D_14   ; 
- D 3 - - - 0x003088 00:F078: F8        .byte < _off_004_F2F8_15   ; 
- D 3 - - - 0x003089 00:F079: 5E        .byte < _off_004_F45E_16   ; 
- D 3 - - - 0x00308A 00:F07A: 66        .byte < _off_004_F466_17   ; 
- D 3 - - - 0x00308B 00:F07B: 4D        .byte < _off_004_F34D_18   ; 
- D 3 - - - 0x00308C 00:F07C: 3D        .byte < _off_004_F33D_19   ; 
- D 3 - - - 0x00308D 00:F07D: 55        .byte < _off_004_F355_1A   ; 
- D 3 - - - 0x00308E 00:F07E: 45        .byte < _off_004_F345_1B   ; 
- D 3 - - - 0x00308F 00:F07F: C0        .byte < _off_004_F3C0_1C   ; 
- - - - - - 0x003090 00:F080: 6E        .byte < _off_004_F46E_1D   ; 
- D 3 - - - 0x003091 00:F081: 6E        .byte < _off_004_F46E_1E   ; 
- D 3 - - - 0x003092 00:F082: CE        .byte < _off_004_F3CE_1F   ; 
- D 3 - - - 0x003093 00:F083: 0A        .byte < _off_004_F30A_20   ; 
- D 3 - - - 0x003094 00:F084: 14        .byte < _off_004_F314_21   ; 
- D 3 - - - 0x003095 00:F085: DC        .byte < _off_004_F3DC_22   ; 
- D 3 - - - 0x003096 00:F086: EA        .byte < _off_004_F3EA_23   ; 



tbl_F087_hi:
- D 3 - - - 0x003097 00:F087: F0        .byte > _off_004_F0AB_00   ; 
- D 3 - - - 0x003098 00:F088: F0        .byte > _off_004_F0B3_01   ; 
- D 3 - - - 0x003099 00:F089: F1        .byte > _off_004_F101_02   ; 
- D 3 - - - 0x00309A 00:F08A: F1        .byte > _off_004_F101_03   ; 
- D 3 - - - 0x00309B 00:F08B: F1        .byte > _off_004_F10A_04   ; 
- D 3 - - - 0x00309C 00:F08C: F1        .byte > _off_004_F112_05   ; 
- D 3 - - - 0x00309D 00:F08D: F1        .byte > _off_004_F16B_06   ; 
- D 3 - - - 0x00309E 00:F08E: F1        .byte > _off_004_F1A4_07   ; 
- D 3 - - - 0x00309F 00:F08F: F1        .byte > _off_004_F1D1_08   ; 
- D 3 - - - 0x0030A0 00:F090: F1        .byte > _off_004_F1EB_09   ; 
- D 3 - - - 0x0030A1 00:F091: F2        .byte > _off_004_F25E_0A   ; 
- D 3 - - - 0x0030A2 00:F092: F2        .byte > _off_004_F297_0B   ; 
- D 3 - - - 0x0030A3 00:F093: F2        .byte > _off_004_F2E2_0C   ; 
- D 3 - - - 0x0030A4 00:F094: F2        .byte > _off_004_F2CC_0D   ; 
- D 3 - - - 0x0030A5 00:F095: F4        .byte > _off_004_F4B4_0E   ; 
- D 3 - - - 0x0030A6 00:F096: F4        .byte > _off_004_F496_0F   ; 
- D 3 - - - 0x0030A7 00:F097: F4        .byte > _off_004_F4A5_10   ; 
- D 3 - - - 0x0030A8 00:F098: F4        .byte > _off_004_F456_11   ; 
- D 3 - - - 0x0030A9 00:F099: F3        .byte > _off_004_F32D_12   ; 
- D 3 - - - 0x0030AA 00:F09A: F3        .byte > _off_004_F335_13   ; 
- D 3 - - - 0x0030AB 00:F09B: F3        .byte > _off_004_F35D_14   ; 
- D 3 - - - 0x0030AC 00:F09C: F2        .byte > _off_004_F2F8_15   ; 
- D 3 - - - 0x0030AD 00:F09D: F4        .byte > _off_004_F45E_16   ; 
- D 3 - - - 0x0030AE 00:F09E: F4        .byte > _off_004_F466_17   ; 
- D 3 - - - 0x0030AF 00:F09F: F3        .byte > _off_004_F34D_18   ; 
- D 3 - - - 0x0030B0 00:F0A0: F3        .byte > _off_004_F33D_19   ; 
- D 3 - - - 0x0030B1 00:F0A1: F3        .byte > _off_004_F355_1A   ; 
- D 3 - - - 0x0030B2 00:F0A2: F3        .byte > _off_004_F345_1B   ; 
- D 3 - - - 0x0030B3 00:F0A3: F3        .byte > _off_004_F3C0_1C   ; 
- - - - - - 0x0030B4 00:F0A4: F4        .byte > _off_004_F46E_1D   ; 
- D 3 - - - 0x0030B5 00:F0A5: F4        .byte > _off_004_F46E_1E   ; 
- D 3 - - - 0x0030B6 00:F0A6: F3        .byte > _off_004_F3CE_1F   ; 
- D 3 - - - 0x0030B7 00:F0A7: F3        .byte > _off_004_F30A_20   ; 
- D 3 - - - 0x0030B8 00:F0A8: F3        .byte > _off_004_F314_21   ; 
- D 3 - - - 0x0030B9 00:F0A9: F3        .byte > _off_004_F3DC_22   ; 
- D 3 - - - 0x0030BA 00:F0AA: F3        .byte > _off_004_F3EA_23   ; 



_off_004_F0AB_00:
- D 3 - I - 0x0030BB 00:F0AB: 09        .byte $09   ; 
- D 3 - I - 0x0030BC 00:F0AC: 3B        .byte $3B   ; 
- D 3 - I - 0x0030BD 00:F0AD: 3C        .byte $3C   ; 
- D 3 - I - 0x0030BE 00:F0AE: 3D        .byte $3D   ; 
- D 3 - I - 0x0030BF 00:F0AF: 3B        .byte $3B   ; 
- D 3 - I - 0x0030C0 00:F0B0: 3C        .byte $3C   ; 
- D 3 - I - 0x0030C1 00:F0B1: 3D        .byte $3D   ; 
- D 3 - I - 0x0030C2 00:F0B2: 00        .byte $00   ; 



_off_004_F0B3_01:
- D 3 - I - 0x0030C3 00:F0B3: 08        .byte $08   ; 
- D 3 - I - 0x0030C4 00:F0B4: D7        .byte $D7   ; 
tbl_F0B5:
- D 3 - - - 0x0030C5 00:F0B5: 40        .byte $40   ; 
- D 3 - I - 0x0030C6 00:F0B6: 40        .byte $40   ; 
- D 3 - I - 0x0030C7 00:F0B7: 40        .byte $40   ; 
- D 3 - I - 0x0030C8 00:F0B8: 40        .byte $40   ; 
- D 3 - I - 0x0030C9 00:F0B9: 40        .byte $40   ; 
- D 3 - I - 0x0030CA 00:F0BA: 41        .byte $41   ; 
- D 3 - I - 0x0030CB 00:F0BB: 08        .byte $08   ; 
- D 3 - I - 0x0030CC 00:F0BC: D6        .byte $D6   ; 
- D 3 - I - 0x0030CD 00:F0BD: FE        .byte $FE   ; 
- D 3 - I - 0x0030CE 00:F0BE: FE        .byte $FE   ; 
- D 3 - I - 0x0030CF 00:F0BF: FE        .byte $FE   ; 
- D 3 - I - 0x0030D0 00:F0C0: FE        .byte $FE   ; 
- D 3 - I - 0x0030D1 00:F0C1: FE        .byte $FE   ; 
- D 3 - I - 0x0030D2 00:F0C2: D8        .byte $D8   ; 
- D 3 - I - 0x0030D3 00:F0C3: 07        .byte $07   ; 
- D 3 - I - 0x0030D4 00:F0C4: D7        .byte $D7   ; 
- D 3 - I - 0x0030D5 00:F0C5: FE        .byte $FE   ; 
- D 3 - I - 0x0030D6 00:F0C6: FE        .byte $FE   ; 
- D 3 - I - 0x0030D7 00:F0C7: FE        .byte $FE   ; 
- D 3 - I - 0x0030D8 00:F0C8: FE        .byte $FE   ; 
- D 3 - I - 0x0030D9 00:F0C9: FE        .byte $FE   ; 
- D 3 - I - 0x0030DA 00:F0CA: D9        .byte $D9   ; 
- D 3 - I - 0x0030DB 00:F0CB: FE        .byte $FE   ; 
- D 3 - I - 0x0030DC 00:F0CC: 07        .byte $07   ; 
- D 3 - I - 0x0030DD 00:F0CD: D6        .byte $D6   ; 
- D 3 - I - 0x0030DE 00:F0CE: FE        .byte $FE   ; 
- D 3 - I - 0x0030DF 00:F0CF: FE        .byte $FE   ; 
- D 3 - I - 0x0030E0 00:F0D0: FE        .byte $FE   ; 
- D 3 - I - 0x0030E1 00:F0D1: FE        .byte $FE   ; 
- D 3 - I - 0x0030E2 00:F0D2: FE        .byte $FE   ; 
- D 3 - I - 0x0030E3 00:F0D3: D8        .byte $D8   ; 
- D 3 - I - 0x0030E4 00:F0D4: FE        .byte $FE   ; 
- D 3 - I - 0x0030E5 00:F0D5: 07        .byte $07   ; 
- D 3 - I - 0x0030E6 00:F0D6: 3B        .byte $3B   ; 
- D 3 - I - 0x0030E7 00:F0D7: 3C        .byte $3C   ; 
- D 3 - I - 0x0030E8 00:F0D8: 3D        .byte $3D   ; 
- D 3 - I - 0x0030E9 00:F0D9: 3B        .byte $3B   ; 
- D 3 - I - 0x0030EA 00:F0DA: 3C        .byte $3C   ; 
- D 3 - I - 0x0030EB 00:F0DB: 3D        .byte $3D   ; 
- D 3 - I - 0x0030EC 00:F0DC: FE        .byte $FE   ; 
- D 3 - I - 0x0030ED 00:F0DD: FE        .byte $FE   ; 
- D 3 - I - 0x0030EE 00:F0DE: 07        .byte $07   ; 
- D 3 - I - 0x0030EF 00:F0DF: DA        .byte $DA   ; 
- D 3 - I - 0x0030F0 00:F0E0: FF        .byte $FF   ; 
- D 3 - I - 0x0030F1 00:F0E1: FF        .byte $FF   ; 
- D 3 - I - 0x0030F2 00:F0E2: FF        .byte $FF   ; 
- D 3 - I - 0x0030F3 00:F0E3: FF        .byte $FF   ; 
- D 3 - I - 0x0030F4 00:F0E4: FF        .byte $FF   ; 
- D 3 - I - 0x0030F5 00:F0E5: DC        .byte $DC   ; 
- D 3 - I - 0x0030F6 00:F0E6: FE        .byte $FE   ; 
- D 3 - I - 0x0030F7 00:F0E7: 07        .byte $07   ; 
- D 3 - I - 0x0030F8 00:F0E8: DB        .byte $DB   ; 
- D 3 - I - 0x0030F9 00:F0E9: FF        .byte $FF   ; 
- D 3 - I - 0x0030FA 00:F0EA: FF        .byte $FF   ; 
- D 3 - I - 0x0030FB 00:F0EB: FF        .byte $FF   ; 
- D 3 - I - 0x0030FC 00:F0EC: FF        .byte $FF   ; 
- D 3 - I - 0x0030FD 00:F0ED: FF        .byte $FF   ; 
- D 3 - I - 0x0030FE 00:F0EE: DD        .byte $DD   ; 
- D 3 - I - 0x0030FF 00:F0EF: FE        .byte $FE   ; 
- D 3 - I - 0x003100 00:F0F0: 08        .byte $08   ; 
- D 3 - I - 0x003101 00:F0F1: DA        .byte $DA   ; 
- D 3 - I - 0x003102 00:F0F2: FF        .byte $FF   ; 
- D 3 - I - 0x003103 00:F0F3: FF        .byte $FF   ; 
- D 3 - I - 0x003104 00:F0F4: FF        .byte $FF   ; 
- D 3 - I - 0x003105 00:F0F5: FF        .byte $FF   ; 
- D 3 - I - 0x003106 00:F0F6: FF        .byte $FF   ; 
- D 3 - I - 0x003107 00:F0F7: DC        .byte $DC   ; 
- D 3 - I - 0x003108 00:F0F8: 08        .byte $08   ; 
- D 3 - I - 0x003109 00:F0F9: DB        .byte $DB   ; 
- D 3 - I - 0x00310A 00:F0FA: FF        .byte $FF   ; 
- D 3 - I - 0x00310B 00:F0FB: FF        .byte $FF   ; 
- D 3 - I - 0x00310C 00:F0FC: FF        .byte $FF   ; 
- D 3 - I - 0x00310D 00:F0FD: FF        .byte $FF   ; 
- D 3 - I - 0x00310E 00:F0FE: FF        .byte $FF   ; 
- D 3 - I - 0x00310F 00:F0FF: DD        .byte $DD   ; 
- D 3 - I - 0x003110 00:F100: 00        .byte $00   ; 



_off_004_F101_02:
_off_004_F101_03:
- D 3 - I - 0x003111 00:F101: 08        .byte $08   ; 
- D 3 - I - 0x003112 00:F102: E0        .byte $E0   ; 
- D 3 - I - 0x003113 00:F103: 48        .byte $48   ; 
- D 3 - I - 0x003114 00:F104: 49        .byte $49   ; 
- D 3 - I - 0x003115 00:F105: 4A        .byte $4A   ; 
- D 3 - I - 0x003116 00:F106: 3B        .byte $3B   ; 
- D 3 - I - 0x003117 00:F107: 3C        .byte $3C   ; 
- D 3 - I - 0x003118 00:F108: 3D        .byte $3D   ; 
- D 3 - I - 0x003119 00:F109: 00        .byte $00   ; 



_off_004_F10A_04:
- D 3 - I - 0x00311A 00:F10A: 09        .byte $09   ; 
- D 3 - I - 0x00311B 00:F10B: 3B        .byte $3B   ; 
- D 3 - I - 0x00311C 00:F10C: 3C        .byte $3C   ; 
- D 3 - I - 0x00311D 00:F10D: E1        .byte $E1   ; 
- D 3 - I - 0x00311E 00:F10E: 48        .byte $48   ; 
- D 3 - I - 0x00311F 00:F10F: 49        .byte $49   ; 
- D 3 - I - 0x003120 00:F110: 4A        .byte $4A   ; 
- D 3 - I - 0x003121 00:F111: 00        .byte $00   ; 



_off_004_F112_05:
- D 3 - I - 0x003122 00:F112: 08        .byte $08   ; 
- D 3 - I - 0x003123 00:F113: C5        .byte $C5   ; 
- D 3 - I - 0x003124 00:F114: 50        .byte $50   ; 
- D 3 - I - 0x003125 00:F115: 50        .byte $50   ; 
- D 3 - I - 0x003126 00:F116: 50        .byte $50   ; 
- D 3 - I - 0x003127 00:F117: 50        .byte $50   ; 
- D 3 - I - 0x003128 00:F118: 50        .byte $50   ; 
- D 3 - I - 0x003129 00:F119: 51        .byte $51   ; 
- D 3 - I - 0x00312A 00:F11A: 07        .byte $07   ; 
- D 3 - I - 0x00312B 00:F11B: C5        .byte $C5   ; 
- D 3 - I - 0x00312C 00:F11C: FE        .byte $FE   ; 
- D 3 - I - 0x00312D 00:F11D: FE        .byte $FE   ; 
- D 3 - I - 0x00312E 00:F11E: FE        .byte $FE   ; 
- D 3 - I - 0x00312F 00:F11F: FE        .byte $FE   ; 
- D 3 - I - 0x003130 00:F120: FE        .byte $FE   ; 
- D 3 - I - 0x003131 00:F121: C6        .byte $C6   ; 
- D 3 - I - 0x003132 00:F122: FE        .byte $FE   ; 
- D 3 - I - 0x003133 00:F123: 06        .byte $06   ; 
- D 3 - I - 0x003134 00:F124: C5        .byte $C5   ; 
- D 3 - I - 0x003135 00:F125: FE        .byte $FE   ; 
- D 3 - I - 0x003136 00:F126: FE        .byte $FE   ; 
- D 3 - I - 0x003137 00:F127: FE        .byte $FE   ; 
- D 3 - I - 0x003138 00:F128: FE        .byte $FE   ; 
- D 3 - I - 0x003139 00:F129: FE        .byte $FE   ; 
- D 3 - I - 0x00313A 00:F12A: C6        .byte $C6   ; 
- D 3 - I - 0x00313B 00:F12B: FE        .byte $FE   ; 
- D 3 - I - 0x00313C 00:F12C: FE        .byte $FE   ; 
- D 3 - I - 0x00313D 00:F12D: 05        .byte $05   ; 
- D 3 - I - 0x00313E 00:F12E: C5        .byte $C5   ; 
- D 3 - I - 0x00313F 00:F12F: FE        .byte $FE   ; 
- D 3 - I - 0x003140 00:F130: FE        .byte $FE   ; 
- D 3 - I - 0x003141 00:F131: FE        .byte $FE   ; 
- D 3 - I - 0x003142 00:F132: FE        .byte $FE   ; 
- D 3 - I - 0x003143 00:F133: FE        .byte $FE   ; 
- D 3 - I - 0x003144 00:F134: C6        .byte $C6   ; 
- D 3 - I - 0x003145 00:F135: FE        .byte $FE   ; 
- D 3 - I - 0x003146 00:F136: FE        .byte $FE   ; 
- D 3 - I - 0x003147 00:F137: FE        .byte $FE   ; 
- D 3 - I - 0x003148 00:F138: 04        .byte $04   ; 
- D 3 - I - 0x003149 00:F139: 2F        .byte $2F   ; 
- D 3 - I - 0x00314A 00:F13A: 2E        .byte $2E   ; 
- D 3 - I - 0x00314B 00:F13B: 2B        .byte $2B   ; 
- D 3 - I - 0x00314C 00:F13C: 2D        .byte $2D   ; 
- D 3 - I - 0x00314D 00:F13D: 2C        .byte $2C   ; 
- D 3 - I - 0x00314E 00:F13E: 2B        .byte $2B   ; 
- D 3 - I - 0x00314F 00:F13F: 2A        .byte $2A   ; 
- D 3 - I - 0x003150 00:F140: FE        .byte $FE   ; 
- D 3 - I - 0x003151 00:F141: FE        .byte $FE   ; 
- D 3 - I - 0x003152 00:F142: FE        .byte $FE   ; 
- D 3 - I - 0x003153 00:F143: FE        .byte $FE   ; 
- D 3 - I - 0x003154 00:F144: 05        .byte $05   ; 
- D 3 - I - 0x003155 00:F145: C7        .byte $C7   ; 
- D 3 - I - 0x003156 00:F146: C8        .byte $C8   ; 
- D 3 - I - 0x003157 00:F147: C9        .byte $C9   ; 
- D 3 - I - 0x003158 00:F148: CA        .byte $CA   ; 
- D 3 - I - 0x003159 00:F149: C8        .byte $C8   ; 
- D 3 - I - 0x00315A 00:F14A: C9        .byte $C9   ; 
- D 3 - I - 0x00315B 00:F14B: CB        .byte $CB   ; 
- D 3 - I - 0x00315C 00:F14C: FE        .byte $FE   ; 
- D 3 - I - 0x00315D 00:F14D: FE        .byte $FE   ; 
- D 3 - I - 0x00315E 00:F14E: FE        .byte $FE   ; 
- D 3 - I - 0x00315F 00:F14F: 06        .byte $06   ; 
- D 3 - I - 0x003160 00:F150: C7        .byte $C7   ; 
- D 3 - I - 0x003161 00:F151: C8        .byte $C8   ; 
- D 3 - I - 0x003162 00:F152: C9        .byte $C9   ; 
- D 3 - I - 0x003163 00:F153: CA        .byte $CA   ; 
- D 3 - I - 0x003164 00:F154: C8        .byte $C8   ; 
- D 3 - I - 0x003165 00:F155: C9        .byte $C9   ; 
- D 3 - I - 0x003166 00:F156: CB        .byte $CB   ; 
- D 3 - I - 0x003167 00:F157: FE        .byte $FE   ; 
- D 3 - I - 0x003168 00:F158: FE        .byte $FE   ; 
- D 3 - I - 0x003169 00:F159: 07        .byte $07   ; 
- D 3 - I - 0x00316A 00:F15A: C7        .byte $C7   ; 
- D 3 - I - 0x00316B 00:F15B: C8        .byte $C8   ; 
- D 3 - I - 0x00316C 00:F15C: C9        .byte $C9   ; 
- D 3 - I - 0x00316D 00:F15D: CA        .byte $CA   ; 
- D 3 - I - 0x00316E 00:F15E: C8        .byte $C8   ; 
- D 3 - I - 0x00316F 00:F15F: C9        .byte $C9   ; 
- D 3 - I - 0x003170 00:F160: CB        .byte $CB   ; 
- D 3 - I - 0x003171 00:F161: FE        .byte $FE   ; 
- D 3 - I - 0x003172 00:F162: 08        .byte $08   ; 
- D 3 - I - 0x003173 00:F163: C7        .byte $C7   ; 
- D 3 - I - 0x003174 00:F164: C8        .byte $C8   ; 
- D 3 - I - 0x003175 00:F165: C9        .byte $C9   ; 
- D 3 - I - 0x003176 00:F166: CA        .byte $CA   ; 
- D 3 - I - 0x003177 00:F167: C8        .byte $C8   ; 
- D 3 - I - 0x003178 00:F168: C9        .byte $C9   ; 
- D 3 - I - 0x003179 00:F169: CB        .byte $CB   ; 
- D 3 - I - 0x00317A 00:F16A: 00        .byte $00   ; 



_off_004_F16B_06:
- D 3 - I - 0x00317B 00:F16B: 08        .byte $08   ; 
- D 3 - I - 0x00317C 00:F16C: C5        .byte $C5   ; 
- D 3 - I - 0x00317D 00:F16D: 5E        .byte $5E   ; 
- D 3 - I - 0x00317E 00:F16E: 5E        .byte $5E   ; 
- D 3 - I - 0x00317F 00:F16F: 5E        .byte $5E   ; 
- D 3 - I - 0x003180 00:F170: 5E        .byte $5E   ; 
- D 3 - I - 0x003181 00:F171: 5E        .byte $5E   ; 
- D 3 - I - 0x003182 00:F172: 5F        .byte $5F   ; 
- D 3 - I - 0x003183 00:F173: 07        .byte $07   ; 
- D 3 - I - 0x003184 00:F174: C5        .byte $C5   ; 
- D 3 - I - 0x003185 00:F175: FE        .byte $FE   ; 
- D 3 - I - 0x003186 00:F176: FE        .byte $FE   ; 
- D 3 - I - 0x003187 00:F177: FE        .byte $FE   ; 
- D 3 - I - 0x003188 00:F178: FE        .byte $FE   ; 
- D 3 - I - 0x003189 00:F179: FE        .byte $FE   ; 
- D 3 - I - 0x00318A 00:F17A: C6        .byte $C6   ; 
- D 3 - I - 0x00318B 00:F17B: FE        .byte $FE   ; 
- D 3 - I - 0x00318C 00:F17C: 06        .byte $06   ; 
- D 3 - I - 0x00318D 00:F17D: C5        .byte $C5   ; 
- D 3 - I - 0x00318E 00:F17E: FE        .byte $FE   ; 
- D 3 - I - 0x00318F 00:F17F: FE        .byte $FE   ; 
- D 3 - I - 0x003190 00:F180: FE        .byte $FE   ; 
- D 3 - I - 0x003191 00:F181: FE        .byte $FE   ; 
- D 3 - I - 0x003192 00:F182: FE        .byte $FE   ; 
- D 3 - I - 0x003193 00:F183: C6        .byte $C6   ; 
- D 3 - I - 0x003194 00:F184: FE        .byte $FE   ; 
- D 3 - I - 0x003195 00:F185: FE        .byte $FE   ; 
- D 3 - I - 0x003196 00:F186: 05        .byte $05   ; 
- D 3 - I - 0x003197 00:F187: 2F        .byte $2F   ; 
- D 3 - I - 0x003198 00:F188: 2E        .byte $2E   ; 
- D 3 - I - 0x003199 00:F189: 2B        .byte $2B   ; 
- D 3 - I - 0x00319A 00:F18A: 2D        .byte $2D   ; 
- D 3 - I - 0x00319B 00:F18B: 2C        .byte $2C   ; 
- D 3 - I - 0x00319C 00:F18C: 2B        .byte $2B   ; 
- D 3 - I - 0x00319D 00:F18D: 2A        .byte $2A   ; 
- D 3 - I - 0x00319E 00:F18E: FE        .byte $FE   ; 
- D 3 - I - 0x00319F 00:F18F: FE        .byte $FE   ; 
- D 3 - I - 0x0031A0 00:F190: FE        .byte $FE   ; 
- D 3 - I - 0x0031A1 00:F191: 06        .byte $06   ; 
- D 3 - I - 0x0031A2 00:F192: D1        .byte $D1   ; 
- D 3 - I - 0x0031A3 00:F193: D2        .byte $D2   ; 
- D 3 - I - 0x0031A4 00:F194: FF        .byte $FF   ; 
- D 3 - I - 0x0031A5 00:F195: FF        .byte $FF   ; 
- D 3 - I - 0x0031A6 00:F196: FF        .byte $FF   ; 
- D 3 - I - 0x0031A7 00:F197: FF        .byte $FF   ; 
- D 3 - I - 0x0031A8 00:F198: D3        .byte $D3   ; 
- D 3 - I - 0x0031A9 00:F199: D4        .byte $D4   ; 
- D 3 - I - 0x0031AA 00:F19A: FE        .byte $FE   ; 
- D 3 - I - 0x0031AB 00:F19B: 08        .byte $08   ; 
- D 3 - I - 0x0031AC 00:F19C: D1        .byte $D1   ; 
- D 3 - I - 0x0031AD 00:F19D: D0        .byte $D0   ; 
- D 3 - I - 0x0031AE 00:F19E: D0        .byte $D0   ; 
- D 3 - I - 0x0031AF 00:F19F: D0        .byte $D0   ; 
- D 3 - I - 0x0031B0 00:F1A0: D0        .byte $D0   ; 
- D 3 - I - 0x0031B1 00:F1A1: D0        .byte $D0   ; 
- D 3 - I - 0x0031B2 00:F1A2: D5        .byte $D5   ; 
- D 3 - I - 0x0031B3 00:F1A3: 00        .byte $00   ; 



_off_004_F1A4_07:
- D 3 - I - 0x0031B4 00:F1A4: 08        .byte $08   ; 
- D 3 - I - 0x0031B5 00:F1A5: C5        .byte $C5   ; 
- D 3 - I - 0x0031B6 00:F1A6: 56        .byte $56   ; 
- D 3 - I - 0x0031B7 00:F1A7: 56        .byte $56   ; 
- D 3 - I - 0x0031B8 00:F1A8: 56        .byte $56   ; 
- D 3 - I - 0x0031B9 00:F1A9: 56        .byte $56   ; 
- D 3 - I - 0x0031BA 00:F1AA: 56        .byte $56   ; 
- D 3 - I - 0x0031BB 00:F1AB: 57        .byte $57   ; 
- D 3 - I - 0x0031BC 00:F1AC: 07        .byte $07   ; 
- D 3 - I - 0x0031BD 00:F1AD: C5        .byte $C5   ; 
- D 3 - I - 0x0031BE 00:F1AE: FE        .byte $FE   ; 
- D 3 - I - 0x0031BF 00:F1AF: FE        .byte $FE   ; 
- D 3 - I - 0x0031C0 00:F1B0: FE        .byte $FE   ; 
- D 3 - I - 0x0031C1 00:F1B1: FE        .byte $FE   ; 
- D 3 - I - 0x0031C2 00:F1B2: FE        .byte $FE   ; 
- D 3 - I - 0x0031C3 00:F1B3: C6        .byte $C6   ; 
- D 3 - I - 0x0031C4 00:F1B4: FE        .byte $FE   ; 
- D 3 - I - 0x0031C5 00:F1B5: 06        .byte $06   ; 
- D 3 - I - 0x0031C6 00:F1B6: 2F        .byte $2F   ; 
- D 3 - I - 0x0031C7 00:F1B7: 2E        .byte $2E   ; 
- D 3 - I - 0x0031C8 00:F1B8: 2B        .byte $2B   ; 
- D 3 - I - 0x0031C9 00:F1B9: 2D        .byte $2D   ; 
- D 3 - I - 0x0031CA 00:F1BA: 2E        .byte $2E   ; 
- D 3 - I - 0x0031CB 00:F1BB: 2B        .byte $2B   ; 
- D 3 - I - 0x0031CC 00:F1BC: 2A        .byte $2A   ; 
- D 3 - I - 0x0031CD 00:F1BD: FE        .byte $FE   ; 
- D 3 - I - 0x0031CE 00:F1BE: FE        .byte $FE   ; 
- D 3 - I - 0x0031CF 00:F1BF: 07        .byte $07   ; 
- D 3 - I - 0x0031D0 00:F1C0: C7        .byte $C7   ; 
- D 3 - I - 0x0031D1 00:F1C1: C8        .byte $C8   ; 
- D 3 - I - 0x0031D2 00:F1C2: C9        .byte $C9   ; 
- D 3 - I - 0x0031D3 00:F1C3: CA        .byte $CA   ; 
- D 3 - I - 0x0031D4 00:F1C4: C8        .byte $C8   ; 
- D 3 - I - 0x0031D5 00:F1C5: C9        .byte $C9   ; 
- D 3 - I - 0x0031D6 00:F1C6: CB        .byte $CB   ; 
- D 3 - I - 0x0031D7 00:F1C7: FE        .byte $FE   ; 
- D 3 - I - 0x0031D8 00:F1C8: 08        .byte $08   ; 
- D 3 - I - 0x0031D9 00:F1C9: C7        .byte $C7   ; 
- D 3 - I - 0x0031DA 00:F1CA: C8        .byte $C8   ; 
- D 3 - I - 0x0031DB 00:F1CB: C9        .byte $C9   ; 
- D 3 - I - 0x0031DC 00:F1CC: CA        .byte $CA   ; 
- D 3 - I - 0x0031DD 00:F1CD: C8        .byte $C8   ; 
- D 3 - I - 0x0031DE 00:F1CE: C9        .byte $C9   ; 
- D 3 - I - 0x0031DF 00:F1CF: CB        .byte $CB   ; 
- D 3 - I - 0x0031E0 00:F1D0: 00        .byte $00   ; 



_off_004_F1D1_08:
- D 3 - I - 0x0031E1 00:F1D1: 08        .byte $08   ; 
- D 3 - I - 0x0031E2 00:F1D2: C5        .byte $C5   ; 
- D 3 - I - 0x0031E3 00:F1D3: 58        .byte $58   ; 
- D 3 - I - 0x0031E4 00:F1D4: 58        .byte $58   ; 
- D 3 - I - 0x0031E5 00:F1D5: 58        .byte $58   ; 
- D 3 - I - 0x0031E6 00:F1D6: 58        .byte $58   ; 
- D 3 - I - 0x0031E7 00:F1D7: 58        .byte $58   ; 
- D 3 - I - 0x0031E8 00:F1D8: 59        .byte $59   ; 
- D 3 - I - 0x0031E9 00:F1D9: 07        .byte $07   ; 
- D 3 - I - 0x0031EA 00:F1DA: 2F        .byte $2F   ; 
- D 3 - I - 0x0031EB 00:F1DB: 2E        .byte $2E   ; 
- D 3 - I - 0x0031EC 00:F1DC: 2B        .byte $2B   ; 
- D 3 - I - 0x0031ED 00:F1DD: 2D        .byte $2D   ; 
- D 3 - I - 0x0031EE 00:F1DE: 2C        .byte $2C   ; 
- D 3 - I - 0x0031EF 00:F1DF: 2B        .byte $2B   ; 
- D 3 - I - 0x0031F0 00:F1E0: 2A        .byte $2A   ; 
- D 3 - I - 0x0031F1 00:F1E1: FE        .byte $FE   ; 
- D 3 - I - 0x0031F2 00:F1E2: 08        .byte $08   ; 
- D 3 - I - 0x0031F3 00:F1E3: C7        .byte $C7   ; 
- D 3 - I - 0x0031F4 00:F1E4: C8        .byte $C8   ; 
- D 3 - I - 0x0031F5 00:F1E5: C9        .byte $C9   ; 
- D 3 - I - 0x0031F6 00:F1E6: CA        .byte $CA   ; 
- D 3 - I - 0x0031F7 00:F1E7: C8        .byte $C8   ; 
- D 3 - I - 0x0031F8 00:F1E8: C9        .byte $C9   ; 
- D 3 - I - 0x0031F9 00:F1E9: CB        .byte $CB   ; 
- D 3 - I - 0x0031FA 00:F1EA: 00        .byte $00   ; 



_off_004_F1EB_09:
- D 3 - I - 0x0031FB 00:F1EB: 08        .byte $08   ; 
- D 3 - I - 0x0031FC 00:F1EC: C5        .byte $C5   ; 
- D 3 - I - 0x0031FD 00:F1ED: 4E        .byte $4E   ; 
- D 3 - I - 0x0031FE 00:F1EE: 4E        .byte $4E   ; 
- D 3 - I - 0x0031FF 00:F1EF: 4E        .byte $4E   ; 
- D 3 - I - 0x003200 00:F1F0: 4E        .byte $4E   ; 
- D 3 - I - 0x003201 00:F1F1: 4E        .byte $4E   ; 
- D 3 - I - 0x003202 00:F1F2: 4F        .byte $4F   ; 
- D 3 - I - 0x003203 00:F1F3: 07        .byte $07   ; 
- D 3 - I - 0x003204 00:F1F4: C5        .byte $C5   ; 
- D 3 - I - 0x003205 00:F1F5: FE        .byte $FE   ; 
- D 3 - I - 0x003206 00:F1F6: FE        .byte $FE   ; 
- D 3 - I - 0x003207 00:F1F7: FE        .byte $FE   ; 
- D 3 - I - 0x003208 00:F1F8: FE        .byte $FE   ; 
- D 3 - I - 0x003209 00:F1F9: FE        .byte $FE   ; 
- D 3 - I - 0x00320A 00:F1FA: C6        .byte $C6   ; 
- D 3 - I - 0x00320B 00:F1FB: FE        .byte $FE   ; 
- D 3 - I - 0x00320C 00:F1FC: 06        .byte $06   ; 
- D 3 - I - 0x00320D 00:F1FD: C5        .byte $C5   ; 
- D 3 - I - 0x00320E 00:F1FE: FE        .byte $FE   ; 
- D 3 - I - 0x00320F 00:F1FF: FE        .byte $FE   ; 
- D 3 - I - 0x003210 00:F200: FE        .byte $FE   ; 
- D 3 - I - 0x003211 00:F201: FE        .byte $FE   ; 
- D 3 - I - 0x003212 00:F202: FE        .byte $FE   ; 
- D 3 - I - 0x003213 00:F203: C6        .byte $C6   ; 
- D 3 - I - 0x003214 00:F204: FE        .byte $FE   ; 
- D 3 - I - 0x003215 00:F205: FE        .byte $FE   ; 
- D 3 - I - 0x003216 00:F206: 06        .byte $06   ; 
- D 3 - I - 0x003217 00:F207: 3B        .byte $3B   ; 
- D 3 - I - 0x003218 00:F208: 3C        .byte $3C   ; 
- D 3 - I - 0x003219 00:F209: 3D        .byte $3D   ; 
- D 3 - I - 0x00321A 00:F20A: 3B        .byte $3B   ; 
- D 3 - I - 0x00321B 00:F20B: 3C        .byte $3C   ; 
- D 3 - I - 0x00321C 00:F20C: 3D        .byte $3D   ; 
- D 3 - I - 0x00321D 00:F20D: FE        .byte $FE   ; 
- D 3 - I - 0x00321E 00:F20E: 0F        .byte $0F   ; 
- D 3 - I - 0x00321F 00:F20F: FE        .byte $FE   ; 
- D 3 - I - 0x003220 00:F210: 06        .byte $06   ; 
- D 3 - I - 0x003221 00:F211: 3B        .byte $3B   ; 
- D 3 - I - 0x003222 00:F212: 3C        .byte $3C   ; 
- D 3 - I - 0x003223 00:F213: 3D        .byte $3D   ; 
- D 3 - I - 0x003224 00:F214: 3B        .byte $3B   ; 
- D 3 - I - 0x003225 00:F215: 3C        .byte $3C   ; 
- D 3 - I - 0x003226 00:F216: 3D        .byte $3D   ; 
- D 3 - I - 0x003227 00:F217: FE        .byte $FE   ; 
- D 3 - I - 0x003228 00:F218: 12        .byte $12   ; 
- D 3 - I - 0x003229 00:F219: FE        .byte $FE   ; 
- D 3 - I - 0x00322A 00:F21A: 06        .byte $06   ; 
- D 3 - I - 0x00322B 00:F21B: 3B        .byte $3B   ; 
- D 3 - I - 0x00322C 00:F21C: 3C        .byte $3C   ; 
- D 3 - I - 0x00322D 00:F21D: 3D        .byte $3D   ; 
- D 3 - I - 0x00322E 00:F21E: 3B        .byte $3B   ; 
- D 3 - I - 0x00322F 00:F21F: 3C        .byte $3C   ; 
- D 3 - I - 0x003230 00:F220: 3D        .byte $3D   ; 
- D 3 - I - 0x003231 00:F221: FE        .byte $FE   ; 
- D 3 - I - 0x003232 00:F222: 17        .byte $17   ; 
- D 3 - I - 0x003233 00:F223: FE        .byte $FE   ; 
- D 3 - I - 0x003234 00:F224: 06        .byte $06   ; 
- D 3 - I - 0x003235 00:F225: 3B        .byte $3B   ; 
- D 3 - I - 0x003236 00:F226: 3C        .byte $3C   ; 
- D 3 - I - 0x003237 00:F227: 3D        .byte $3D   ; 
- D 3 - I - 0x003238 00:F228: 3B        .byte $3B   ; 
- D 3 - I - 0x003239 00:F229: 3C        .byte $3C   ; 
- D 3 - I - 0x00323A 00:F22A: 3D        .byte $3D   ; 
- D 3 - I - 0x00323B 00:F22B: FE        .byte $FE   ; 
- D 3 - I - 0x00323C 00:F22C: 12        .byte $12   ; 
- D 3 - I - 0x00323D 00:F22D: FE        .byte $FE   ; 
- D 3 - I - 0x00323E 00:F22E: 06        .byte $06   ; 
- D 3 - I - 0x00323F 00:F22F: 3B        .byte $3B   ; 
- D 3 - I - 0x003240 00:F230: 3C        .byte $3C   ; 
- D 3 - I - 0x003241 00:F231: 3D        .byte $3D   ; 
- D 3 - I - 0x003242 00:F232: 3B        .byte $3B   ; 
- D 3 - I - 0x003243 00:F233: 3C        .byte $3C   ; 
- D 3 - I - 0x003244 00:F234: 3D        .byte $3D   ; 
- D 3 - I - 0x003245 00:F235: FE        .byte $FE   ; 
- D 3 - I - 0x003246 00:F236: 1C        .byte $1C   ; 
- D 3 - I - 0x003247 00:F237: FE        .byte $FE   ; 
- D 3 - I - 0x003248 00:F238: 06        .byte $06   ; 
- D 3 - I - 0x003249 00:F239: 3B        .byte $3B   ; 
- D 3 - I - 0x00324A 00:F23A: 3C        .byte $3C   ; 
- D 3 - I - 0x00324B 00:F23B: 3D        .byte $3D   ; 
- D 3 - I - 0x00324C 00:F23C: 3B        .byte $3B   ; 
- D 3 - I - 0x00324D 00:F23D: 3C        .byte $3C   ; 
- D 3 - I - 0x00324E 00:F23E: 3D        .byte $3D   ; 
- D 3 - I - 0x00324F 00:F23F: FE        .byte $FE   ; 
- D 3 - I - 0x003250 00:F240: 11        .byte $11   ; 
- D 3 - I - 0x003251 00:F241: FE        .byte $FE   ; 
- D 3 - I - 0x003252 00:F242: 06        .byte $06   ; 
- D 3 - I - 0x003253 00:F243: C7        .byte $C7   ; 
- D 3 - I - 0x003254 00:F244: C8        .byte $C8   ; 
- D 3 - I - 0x003255 00:F245: C9        .byte $C9   ; 
- D 3 - I - 0x003256 00:F246: CA        .byte $CA   ; 
- D 3 - I - 0x003257 00:F247: C8        .byte $C8   ; 
- D 3 - I - 0x003258 00:F248: C9        .byte $C9   ; 
- D 3 - I - 0x003259 00:F249: CB        .byte $CB   ; 
- D 3 - I - 0x00325A 00:F24A: FE        .byte $FE   ; 
- D 3 - I - 0x00325B 00:F24B: FE        .byte $FE   ; 
- D 3 - I - 0x00325C 00:F24C: 07        .byte $07   ; 
- D 3 - I - 0x00325D 00:F24D: C7        .byte $C7   ; 
- D 3 - I - 0x00325E 00:F24E: C8        .byte $C8   ; 
- D 3 - I - 0x00325F 00:F24F: C9        .byte $C9   ; 
- D 3 - I - 0x003260 00:F250: CA        .byte $CA   ; 
- D 3 - I - 0x003261 00:F251: C8        .byte $C8   ; 
- D 3 - I - 0x003262 00:F252: C9        .byte $C9   ; 
- D 3 - I - 0x003263 00:F253: CB        .byte $CB   ; 
- D 3 - I - 0x003264 00:F254: FE        .byte $FE   ; 
- D 3 - I - 0x003265 00:F255: 08        .byte $08   ; 
- D 3 - I - 0x003266 00:F256: C7        .byte $C7   ; 
- D 3 - I - 0x003267 00:F257: C8        .byte $C8   ; 
- D 3 - I - 0x003268 00:F258: C9        .byte $C9   ; 
- D 3 - I - 0x003269 00:F259: CA        .byte $CA   ; 
- D 3 - I - 0x00326A 00:F25A: C8        .byte $C8   ; 
- D 3 - I - 0x00326B 00:F25B: C9        .byte $C9   ; 
- D 3 - I - 0x00326C 00:F25C: CB        .byte $CB   ; 
- D 3 - I - 0x00326D 00:F25D: 00        .byte $00   ; 



_off_004_F25E_0A:
- D 3 - I - 0x00326E 00:F25E: 08        .byte $08   ; 
- D 3 - I - 0x00326F 00:F25F: CC        .byte $CC   ; 
- D 3 - I - 0x003270 00:F260: 60        .byte $60   ; 
- D 3 - I - 0x003271 00:F261: 60        .byte $60   ; 
- D 3 - I - 0x003272 00:F262: 60        .byte $60   ; 
- D 3 - I - 0x003273 00:F263: 60        .byte $60   ; 
- D 3 - I - 0x003274 00:F264: 60        .byte $60   ; 
- D 3 - I - 0x003275 00:F265: 61        .byte $61   ; 
- D 3 - I - 0x003276 00:F266: 06        .byte $06   ; 
- D 3 - I - 0x003277 00:F267: CC        .byte $CC   ; 
- D 3 - I - 0x003278 00:F268: CD        .byte $CD   ; 
- D 3 - I - 0x003279 00:F269: FE        .byte $FE   ; 
- D 3 - I - 0x00327A 00:F26A: FE        .byte $FE   ; 
- D 3 - I - 0x00327B 00:F26B: FE        .byte $FE   ; 
- D 3 - I - 0x00327C 00:F26C: FE        .byte $FE   ; 
- D 3 - I - 0x00327D 00:F26D: CE        .byte $CE   ; 
- D 3 - I - 0x00327E 00:F26E: CF        .byte $CF   ; 
- D 3 - I - 0x00327F 00:F26F: FE        .byte $FE   ; 
- D 3 - I - 0x003280 00:F270: 05        .byte $05   ; 
- D 3 - I - 0x003281 00:F271: 2F        .byte $2F   ; 
- D 3 - I - 0x003282 00:F272: 2E        .byte $2E   ; 
- D 3 - I - 0x003283 00:F273: 2B        .byte $2B   ; 
- D 3 - I - 0x003284 00:F274: 2D        .byte $2D   ; 
- D 3 - I - 0x003285 00:F275: 2C        .byte $2C   ; 
- D 3 - I - 0x003286 00:F276: 2B        .byte $2B   ; 
- D 3 - I - 0x003287 00:F277: 2A        .byte $2A   ; 
- D 3 - I - 0x003288 00:F278: FE        .byte $FE   ; 
- D 3 - I - 0x003289 00:F279: FE        .byte $FE   ; 
- D 3 - I - 0x00328A 00:F27A: FE        .byte $FE   ; 
- D 3 - I - 0x00328B 00:F27B: 06        .byte $06   ; 
- D 3 - I - 0x00328C 00:F27C: C7        .byte $C7   ; 
- D 3 - I - 0x00328D 00:F27D: C8        .byte $C8   ; 
- D 3 - I - 0x00328E 00:F27E: C9        .byte $C9   ; 
- D 3 - I - 0x00328F 00:F27F: CA        .byte $CA   ; 
- D 3 - I - 0x003290 00:F280: C8        .byte $C8   ; 
- D 3 - I - 0x003291 00:F281: C9        .byte $C9   ; 
- D 3 - I - 0x003292 00:F282: CB        .byte $CB   ; 
- D 3 - I - 0x003293 00:F283: FE        .byte $FE   ; 
- D 3 - I - 0x003294 00:F284: FE        .byte $FE   ; 
- D 3 - I - 0x003295 00:F285: 07        .byte $07   ; 
- D 3 - I - 0x003296 00:F286: C7        .byte $C7   ; 
- D 3 - I - 0x003297 00:F287: C8        .byte $C8   ; 
- D 3 - I - 0x003298 00:F288: C9        .byte $C9   ; 
- D 3 - I - 0x003299 00:F289: CA        .byte $CA   ; 
- D 3 - I - 0x00329A 00:F28A: C8        .byte $C8   ; 
- D 3 - I - 0x00329B 00:F28B: C9        .byte $C9   ; 
- D 3 - I - 0x00329C 00:F28C: CB        .byte $CB   ; 
- D 3 - I - 0x00329D 00:F28D: FE        .byte $FE   ; 
- D 3 - I - 0x00329E 00:F28E: 08        .byte $08   ; 
- D 3 - I - 0x00329F 00:F28F: C7        .byte $C7   ; 
- D 3 - I - 0x0032A0 00:F290: C8        .byte $C8   ; 
- D 3 - I - 0x0032A1 00:F291: C9        .byte $C9   ; 
- D 3 - I - 0x0032A2 00:F292: CA        .byte $CA   ; 
- D 3 - I - 0x0032A3 00:F293: C8        .byte $C8   ; 
- D 3 - I - 0x0032A4 00:F294: C9        .byte $C9   ; 
- D 3 - I - 0x0032A5 00:F295: CB        .byte $CB   ; 
- D 3 - I - 0x0032A6 00:F296: 00        .byte $00   ; 



_off_004_F297_0B:
- D 3 - I - 0x0032A7 00:F297: 07        .byte $07   ; 
- D 3 - I - 0x0032A8 00:F298: CC        .byte $CC   ; 
- D 3 - I - 0x0032A9 00:F299: CD        .byte $CD   ; 
- D 3 - I - 0x0032AA 00:F29A: 65        .byte $65   ; 
- D 3 - I - 0x0032AB 00:F29B: 65        .byte $65   ; 
- D 3 - I - 0x0032AC 00:F29C: 65        .byte $65   ; 
- D 3 - I - 0x0032AD 00:F29D: 65        .byte $65   ; 
- D 3 - I - 0x0032AE 00:F29E: 66        .byte $66   ; 
- D 3 - I - 0x0032AF 00:F29F: 67        .byte $67   ; 
- D 3 - I - 0x0032B0 00:F2A0: 05        .byte $05   ; 
- D 3 - I - 0x0032B1 00:F2A1: CC        .byte $CC   ; 
- D 3 - I - 0x0032B2 00:F2A2: CD        .byte $CD   ; 
- D 3 - I - 0x0032B3 00:F2A3: FE        .byte $FE   ; 
- D 3 - I - 0x0032B4 00:F2A4: FE        .byte $FE   ; 
- D 3 - I - 0x0032B5 00:F2A5: FE        .byte $FE   ; 
- D 3 - I - 0x0032B6 00:F2A6: FE        .byte $FE   ; 
- D 3 - I - 0x0032B7 00:F2A7: CE        .byte $CE   ; 
- D 3 - I - 0x0032B8 00:F2A8: CF        .byte $CF   ; 
- D 3 - I - 0x0032B9 00:F2A9: FE        .byte $FE   ; 
- D 3 - I - 0x0032BA 00:F2AA: FE        .byte $FE   ; 
- D 3 - I - 0x0032BB 00:F2AB: 04        .byte $04   ; 
- D 3 - I - 0x0032BC 00:F2AC: 2F        .byte $2F   ; 
- D 3 - I - 0x0032BD 00:F2AD: 2E        .byte $2E   ; 
- D 3 - I - 0x0032BE 00:F2AE: 2B        .byte $2B   ; 
- D 3 - I - 0x0032BF 00:F2AF: 2D        .byte $2D   ; 
- D 3 - I - 0x0032C0 00:F2B0: 2C        .byte $2C   ; 
- D 3 - I - 0x0032C1 00:F2B1: 2B        .byte $2B   ; 
- D 3 - I - 0x0032C2 00:F2B2: 2A        .byte $2A   ; 
- D 3 - I - 0x0032C3 00:F2B3: FE        .byte $FE   ; 
- D 3 - I - 0x0032C4 00:F2B4: FE        .byte $FE   ; 
- D 3 - I - 0x0032C5 00:F2B5: FE        .byte $FE   ; 
- D 3 - I - 0x0032C6 00:F2B6: FE        .byte $FE   ; 
- D 3 - I - 0x0032C7 00:F2B7: 05        .byte $05   ; 
- D 3 - I - 0x0032C8 00:F2B8: D1        .byte $D1   ; 
- D 3 - I - 0x0032C9 00:F2B9: D2        .byte $D2   ; 
- D 3 - I - 0x0032CA 00:F2BA: FF        .byte $FF   ; 
- D 3 - I - 0x0032CB 00:F2BB: FF        .byte $FF   ; 
- D 3 - I - 0x0032CC 00:F2BC: FF        .byte $FF   ; 
- D 3 - I - 0x0032CD 00:F2BD: FF        .byte $FF   ; 
- D 3 - I - 0x0032CE 00:F2BE: D3        .byte $D3   ; 
- D 3 - I - 0x0032CF 00:F2BF: D4        .byte $D4   ; 
- D 3 - I - 0x0032D0 00:F2C0: FE        .byte $FE   ; 
- D 3 - I - 0x0032D1 00:F2C1: FE        .byte $FE   ; 
- D 3 - I - 0x0032D2 00:F2C2: 07        .byte $07   ; 
- D 3 - I - 0x0032D3 00:F2C3: D1        .byte $D1   ; 
- D 3 - I - 0x0032D4 00:F2C4: D2        .byte $D2   ; 
- D 3 - I - 0x0032D5 00:F2C5: FF        .byte $FF   ; 
- D 3 - I - 0x0032D6 00:F2C6: FF        .byte $FF   ; 
- D 3 - I - 0x0032D7 00:F2C7: FF        .byte $FF   ; 
- D 3 - I - 0x0032D8 00:F2C8: FF        .byte $FF   ; 
- D 3 - I - 0x0032D9 00:F2C9: D3        .byte $D3   ; 
- D 3 - I - 0x0032DA 00:F2CA: D4        .byte $D4   ; 
- D 3 - I - 0x0032DB 00:F2CB: 00        .byte $00   ; 



_off_004_F2CC_0D:
- D 3 - I - 0x0032DC 00:F2CC: 09        .byte $09   ; 
- D 3 - I - 0x0032DD 00:F2CD: 3B        .byte $3B   ; 
- D 3 - I - 0x0032DE 00:F2CE: E7        .byte $E7   ; 
- D 3 - I - 0x0032DF 00:F2CF: 72        .byte $72   ; 
- D 3 - I - 0x0032E0 00:F2D0: 3B        .byte $3B   ; 
- D 3 - I - 0x0032E1 00:F2D1: E7        .byte $E7   ; 
- D 3 - I - 0x0032E2 00:F2D2: 72        .byte $72   ; 
- D 3 - I - 0x0032E3 00:F2D3: 09        .byte $09   ; 
- D 3 - I - 0x0032E4 00:F2D4: 3B        .byte $3B   ; 
- D 3 - I - 0x0032E5 00:F2D5: E8        .byte $E8   ; 
- D 3 - I - 0x0032E6 00:F2D6: BB        .byte $BB   ; 
- D 3 - I - 0x0032E7 00:F2D7: 3B        .byte $3B   ; 
- D 3 - I - 0x0032E8 00:F2D8: E8        .byte $E8   ; 
- D 3 - I - 0x0032E9 00:F2D9: BB        .byte $BB   ; 
- D 3 - I - 0x0032EA 00:F2DA: 09        .byte $09   ; 
- D 3 - I - 0x0032EB 00:F2DB: 3B        .byte $3B   ; 
- D 3 - I - 0x0032EC 00:F2DC: E9        .byte $E9   ; 
- D 3 - I - 0x0032ED 00:F2DD: BE        .byte $BE   ; 
- D 3 - I - 0x0032EE 00:F2DE: 3B        .byte $3B   ; 
- D 3 - I - 0x0032EF 00:F2DF: E9        .byte $E9   ; 
- D 3 - I - 0x0032F0 00:F2E0: BB        .byte $BB   ; 
- D 3 - I - 0x0032F1 00:F2E1: 00        .byte $00   ; 



_off_004_F2E2_0C:
- D 3 - I - 0x0032F2 00:F2E2: 09        .byte $09   ; 
- D 3 - I - 0x0032F3 00:F2E3: 70        .byte $70   ; 
- D 3 - I - 0x0032F4 00:F2E4: EA        .byte $EA   ; 
- D 3 - I - 0x0032F5 00:F2E5: 3D        .byte $3D   ; 
- D 3 - I - 0x0032F6 00:F2E6: 70        .byte $70   ; 
- D 3 - I - 0x0032F7 00:F2E7: EA        .byte $EA   ; 
- D 3 - I - 0x0032F8 00:F2E8: 3D        .byte $3D   ; 
- D 3 - I - 0x0032F9 00:F2E9: 09        .byte $09   ; 
- D 3 - I - 0x0032FA 00:F2EA: B9        .byte $B9   ; 
- D 3 - I - 0x0032FB 00:F2EB: EB        .byte $EB   ; 
- D 3 - I - 0x0032FC 00:F2EC: 3D        .byte $3D   ; 
- D 3 - I - 0x0032FD 00:F2ED: B9        .byte $B9   ; 
- D 3 - I - 0x0032FE 00:F2EE: EB        .byte $EB   ; 
- D 3 - I - 0x0032FF 00:F2EF: 3D        .byte $3D   ; 
- D 3 - I - 0x003300 00:F2F0: 09        .byte $09   ; 
- D 3 - I - 0x003301 00:F2F1: BC        .byte $BC   ; 
- D 3 - I - 0x003302 00:F2F2: EC        .byte $EC   ; 
- D 3 - I - 0x003303 00:F2F3: 3D        .byte $3D   ; 
- D 3 - I - 0x003304 00:F2F4: BC        .byte $BC   ; 
- D 3 - I - 0x003305 00:F2F5: EC        .byte $EC   ; 
- D 3 - I - 0x003306 00:F2F6: 3D        .byte $3D   ; 
- D 3 - I - 0x003307 00:F2F7: 00        .byte $00   ; 



_off_004_F2F8_15:
- D 3 - I - 0x003308 00:F2F8: 08        .byte $08   ; 
- D 3 - I - 0x003309 00:F2F9: C5        .byte $C5   ; 
- D 3 - I - 0x00330A 00:F2FA: 68        .byte $68   ; 
- D 3 - I - 0x00330B 00:F2FB: 68        .byte $68   ; 
- D 3 - I - 0x00330C 00:F2FC: 68        .byte $68   ; 
- D 3 - I - 0x00330D 00:F2FD: 68        .byte $68   ; 
- D 3 - I - 0x00330E 00:F2FE: 68        .byte $68   ; 
- D 3 - I - 0x00330F 00:F2FF: 69        .byte $69   ; 
- D 3 - I - 0x003310 00:F300: 07        .byte $07   ; 
- D 3 - I - 0x003311 00:F301: C5        .byte $C5   ; 
- D 3 - I - 0x003312 00:F302: FE        .byte $FE   ; 
- D 3 - I - 0x003313 00:F303: FE        .byte $FE   ; 
- D 3 - I - 0x003314 00:F304: FE        .byte $FE   ; 
- D 3 - I - 0x003315 00:F305: FE        .byte $FE   ; 
- D 3 - I - 0x003316 00:F306: FE        .byte $FE   ; 
- D 3 - I - 0x003317 00:F307: C6        .byte $C6   ; 
- D 3 - I - 0x003318 00:F308: FE        .byte $FE   ; 
- D 3 - I - 0x003319 00:F309: 00        .byte $00   ; 



_off_004_F30A_20:
- D 3 - I - 0x00331A 00:F30A: 07        .byte $07   ; 
- D 3 - I - 0x00331B 00:F30B: 3B        .byte $3B   ; 
- D 3 - I - 0x00331C 00:F30C: 3C        .byte $3C   ; 
- D 3 - I - 0x00331D 00:F30D: 3D        .byte $3D   ; 
- D 3 - I - 0x00331E 00:F30E: 3B        .byte $3B   ; 
- D 3 - I - 0x00331F 00:F30F: 3C        .byte $3C   ; 
- D 3 - I - 0x003320 00:F310: 3D        .byte $3D   ; 
- D 3 - I - 0x003321 00:F311: FE        .byte $FE   ; 
- D 3 - I - 0x003322 00:F312: FE        .byte $FE   ; 
- D 3 - I - 0x003323 00:F313: 00        .byte $00   ; 



_off_004_F314_21:
- D 3 - I - 0x003324 00:F314: 05        .byte $05   ; 
- D 3 - I - 0x003325 00:F315: CC        .byte $CC   ; 
- D 3 - I - 0x003326 00:F316: CD        .byte $CD   ; 
- D 3 - I - 0x003327 00:F317: FE        .byte $FE   ; 
- D 3 - I - 0x003328 00:F318: FE        .byte $FE   ; 
- D 3 - I - 0x003329 00:F319: 6D        .byte $6D   ; 
- D 3 - I - 0x00332A 00:F31A: 6D        .byte $6D   ; 
- D 3 - I - 0x00332B 00:F31B: 6E        .byte $6E   ; 
- D 3 - I - 0x00332C 00:F31C: 6F        .byte $6F   ; 
- D 3 - I - 0x00332D 00:F31D: 6D        .byte $6D   ; 
- D 3 - I - 0x00332E 00:F31E: 6D        .byte $6D   ; 
- D 3 - I - 0x00332F 00:F31F: 03        .byte $03   ; 
- D 3 - I - 0x003330 00:F320: CC        .byte $CC   ; 
- D 3 - I - 0x003331 00:F321: CD        .byte $CD   ; 
- D 3 - I - 0x003332 00:F322: FE        .byte $FE   ; 
- D 3 - I - 0x003333 00:F323: FE        .byte $FE   ; 
- D 3 - I - 0x003334 00:F324: FE        .byte $FE   ; 
- D 3 - I - 0x003335 00:F325: FE        .byte $FE   ; 
- D 3 - I - 0x003336 00:F326: CE        .byte $CE   ; 
- D 3 - I - 0x003337 00:F327: CF        .byte $CF   ; 
- D 3 - I - 0x003338 00:F328: FE        .byte $FE   ; 
- D 3 - I - 0x003339 00:F329: FE        .byte $FE   ; 
- D 3 - I - 0x00333A 00:F32A: FE        .byte $FE   ; 
- D 3 - I - 0x00333B 00:F32B: FE        .byte $FE   ; 
- D 3 - I - 0x00333C 00:F32C: 00        .byte $00   ; 



_off_004_F32D_12:
- D 3 - I - 0x00333D 00:F32D: 09        .byte $09   ; 
- D 3 - I - 0x00333E 00:F32E: 3B        .byte $3B   ; 
- D 3 - I - 0x00333F 00:F32F: 3C        .byte $3C   ; 
- D 3 - I - 0x003340 00:F330: 3D        .byte $3D   ; 
- D 3 - I - 0x003341 00:F331: C0        .byte $C0   ; 
- D 3 - I - 0x003342 00:F332: C0        .byte $C0   ; 
- D 3 - I - 0x003343 00:F333: C0        .byte $C0   ; 
- D 3 - I - 0x003344 00:F334: 00        .byte $00   ; 



_off_004_F335_13:
- D 3 - I - 0x003345 00:F335: 09        .byte $09   ; 
- D 3 - I - 0x003346 00:F336: C0        .byte $C0   ; 
- D 3 - I - 0x003347 00:F337: C0        .byte $C0   ; 
- D 3 - I - 0x003348 00:F338: C0        .byte $C0   ; 
- D 3 - I - 0x003349 00:F339: 3B        .byte $3B   ; 
- D 3 - I - 0x00334A 00:F33A: 3C        .byte $3C   ; 
- D 3 - I - 0x00334B 00:F33B: 3D        .byte $3D   ; 
- D 3 - I - 0x00334C 00:F33C: 00        .byte $00   ; 



_off_004_F33D_19:
- D 3 - I - 0x00334D 00:F33D: 09        .byte $09   ; 
- D 3 - I - 0x00334E 00:F33E: 3B        .byte $3B   ; 
- D 3 - I - 0x00334F 00:F33F: 3C        .byte $3C   ; 
- D 3 - I - 0x003350 00:F340: 3D        .byte $3D   ; 
- D 3 - I - 0x003351 00:F341: C3        .byte $C3   ; 
- D 3 - I - 0x003352 00:F342: C3        .byte $C3   ; 
- D 3 - I - 0x003353 00:F343: C3        .byte $C3   ; 
- D 3 - I - 0x003354 00:F344: 00        .byte $00   ; 



_off_004_F345_1B:
- D 3 - I - 0x003355 00:F345: 09        .byte $09   ; 
- D 3 - I - 0x003356 00:F346: C3        .byte $C3   ; 
- D 3 - I - 0x003357 00:F347: C3        .byte $C3   ; 
- D 3 - I - 0x003358 00:F348: C3        .byte $C3   ; 
- D 3 - I - 0x003359 00:F349: 3B        .byte $3B   ; 
- D 3 - I - 0x00335A 00:F34A: 3C        .byte $3C   ; 
- D 3 - I - 0x00335B 00:F34B: 3D        .byte $3D   ; 
- D 3 - I - 0x00335C 00:F34C: 00        .byte $00   ; 



_off_004_F34D_18:
- D 3 - I - 0x00335D 00:F34D: 09        .byte $09   ; 
- D 3 - I - 0x00335E 00:F34E: 3B        .byte $3B   ; 
- D 3 - I - 0x00335F 00:F34F: 3C        .byte $3C   ; 
- D 3 - I - 0x003360 00:F350: 3D        .byte $3D   ; 
- D 3 - I - 0x003361 00:F351: E4        .byte $E4   ; 
- D 3 - I - 0x003362 00:F352: E4        .byte $E4   ; 
- D 3 - I - 0x003363 00:F353: E4        .byte $E4   ; 
- D 3 - I - 0x003364 00:F354: 00        .byte $00   ; 



_off_004_F355_1A:
- D 3 - I - 0x003365 00:F355: 09        .byte $09   ; 
- D 3 - I - 0x003366 00:F356: E4        .byte $E4   ; 
- D 3 - I - 0x003367 00:F357: E4        .byte $E4   ; 
- D 3 - I - 0x003368 00:F358: E4        .byte $E4   ; 
- D 3 - I - 0x003369 00:F359: 3B        .byte $3B   ; 
- D 3 - I - 0x00336A 00:F35A: 3C        .byte $3C   ; 
- D 3 - I - 0x00336B 00:F35B: 3D        .byte $3D   ; 
- D 3 - I - 0x00336C 00:F35C: 00        .byte $00   ; 



_off_004_F35D_14:
- D 3 - I - 0x00336D 00:F35D: 07        .byte $07   ; 
- D 3 - I - 0x00336E 00:F35E: CC        .byte $CC   ; 
- D 3 - I - 0x00336F 00:F35F: CD        .byte $CD   ; 
- D 3 - I - 0x003370 00:F360: 75        .byte $75   ; 
- D 3 - I - 0x003371 00:F361: 75        .byte $75   ; 
- D 3 - I - 0x003372 00:F362: 75        .byte $75   ; 
- D 3 - I - 0x003373 00:F363: 75        .byte $75   ; 
- D 3 - I - 0x003374 00:F364: 76        .byte $76   ; 
- D 3 - I - 0x003375 00:F365: 77        .byte $77   ; 
- D 3 - I - 0x003376 00:F366: 05        .byte $05   ; 
- D 3 - I - 0x003377 00:F367: CC        .byte $CC   ; 
- D 3 - I - 0x003378 00:F368: CD        .byte $CD   ; 
- D 3 - I - 0x003379 00:F369: FE        .byte $FE   ; 
- D 3 - I - 0x00337A 00:F36A: FE        .byte $FE   ; 
- D 3 - I - 0x00337B 00:F36B: FE        .byte $FE   ; 
- D 3 - I - 0x00337C 00:F36C: FE        .byte $FE   ; 
- D 3 - I - 0x00337D 00:F36D: CE        .byte $CE   ; 
- D 3 - I - 0x00337E 00:F36E: CF        .byte $CF   ; 
- D 3 - I - 0x00337F 00:F36F: FE        .byte $FE   ; 
- D 3 - I - 0x003380 00:F370: FE        .byte $FE   ; 
- D 3 - I - 0x003381 00:F371: 03        .byte $03   ; 
- D 3 - I - 0x003382 00:F372: CC        .byte $CC   ; 
- D 3 - I - 0x003383 00:F373: CD        .byte $CD   ; 
- D 3 - I - 0x003384 00:F374: FE        .byte $FE   ; 
- D 3 - I - 0x003385 00:F375: FE        .byte $FE   ; 
- D 3 - I - 0x003386 00:F376: FE        .byte $FE   ; 
- D 3 - I - 0x003387 00:F377: FE        .byte $FE   ; 
- D 3 - I - 0x003388 00:F378: CE        .byte $CE   ; 
- D 3 - I - 0x003389 00:F379: CF        .byte $CF   ; 
- D 3 - I - 0x00338A 00:F37A: FE        .byte $FE   ; 
- D 3 - I - 0x00338B 00:F37B: FE        .byte $FE   ; 
- D 3 - I - 0x00338C 00:F37C: FE        .byte $FE   ; 
- D 3 - I - 0x00338D 00:F37D: FE        .byte $FE   ; 
- D 3 - I - 0x00338E 00:F37E: 03        .byte $03   ; 
- D 3 - I - 0x00338F 00:F37F: 3B        .byte $3B   ; 
- D 3 - I - 0x003390 00:F380: 3C        .byte $3C   ; 
- D 3 - I - 0x003391 00:F381: 3D        .byte $3D   ; 
- D 3 - I - 0x003392 00:F382: 3B        .byte $3B   ; 
- D 3 - I - 0x003393 00:F383: 3C        .byte $3C   ; 
- D 3 - I - 0x003394 00:F384: 3D        .byte $3D   ; 
- D 3 - I - 0x003395 00:F385: FE        .byte $FE   ; 
- D 3 - I - 0x003396 00:F386: FE        .byte $FE   ; 
- D 3 - I - 0x003397 00:F387: FE        .byte $FE   ; 
- D 3 - I - 0x003398 00:F388: FE        .byte $FE   ; 
- D 3 - I - 0x003399 00:F389: FE        .byte $FE   ; 
- D 3 - I - 0x00339A 00:F38A: FE        .byte $FE   ; 
- D 3 - I - 0x00339B 00:F38B: 03        .byte $03   ; 
- D 3 - I - 0x00339C 00:F38C: 3B        .byte $3B   ; 
- D 3 - I - 0x00339D 00:F38D: 3C        .byte $3C   ; 
- D 3 - I - 0x00339E 00:F38E: 3D        .byte $3D   ; 
- D 3 - I - 0x00339F 00:F38F: 3B        .byte $3B   ; 
- D 3 - I - 0x0033A0 00:F390: 3C        .byte $3C   ; 
- D 3 - I - 0x0033A1 00:F391: 3D        .byte $3D   ; 
- D 3 - I - 0x0033A2 00:F392: FE        .byte $FE   ; 
- D 3 - I - 0x0033A3 00:F393: FE        .byte $FE   ; 
- D 3 - I - 0x0033A4 00:F394: FE        .byte $FE   ; 
- D 3 - I - 0x0033A5 00:F395: FE        .byte $FE   ; 
- D 3 - I - 0x0033A6 00:F396: FE        .byte $FE   ; 
- D 3 - I - 0x0033A7 00:F397: FE        .byte $FE   ; 
- D 3 - I - 0x0033A8 00:F398: 03        .byte $03   ; 
- D 3 - I - 0x0033A9 00:F399: 3B        .byte $3B   ; 
- D 3 - I - 0x0033AA 00:F39A: 3C        .byte $3C   ; 
- D 3 - I - 0x0033AB 00:F39B: 3D        .byte $3D   ; 
- D 3 - I - 0x0033AC 00:F39C: E5        .byte $E5   ; 
- D 3 - I - 0x0033AD 00:F39D: D2        .byte $D2   ; 
- D 3 - I - 0x0033AE 00:F39E: FF        .byte $FF   ; 
- D 3 - I - 0x0033AF 00:F39F: D3        .byte $D3   ; 
- D 3 - I - 0x0033B0 00:F3A0: D4        .byte $D4   ; 
- D 3 - I - 0x0033B1 00:F3A1: FE        .byte $FE   ; 
- D 3 - I - 0x0033B2 00:F3A2: FE        .byte $FE   ; 
- D 3 - I - 0x0033B3 00:F3A3: FE        .byte $FE   ; 
- D 3 - I - 0x0033B4 00:F3A4: FE        .byte $FE   ; 
- D 3 - I - 0x0033B5 00:F3A5: 03        .byte $03   ; 
- D 3 - I - 0x0033B6 00:F3A6: 3B        .byte $3B   ; 
- D 3 - I - 0x0033B7 00:F3A7: 3C        .byte $3C   ; 
- D 3 - I - 0x0033B8 00:F3A8: 3D        .byte $3D   ; 
- D 3 - I - 0x0033B9 00:F3A9: E6        .byte $E6   ; 
- D 3 - I - 0x0033BA 00:F3AA: FC        .byte $FC   ; 
- D 3 - I - 0x0033BB 00:F3AB: D1        .byte $D1   ; 
- D 3 - I - 0x0033BC 00:F3AC: D2        .byte $D2   ; 
- D 3 - I - 0x0033BD 00:F3AD: FF        .byte $FF   ; 
- D 3 - I - 0x0033BE 00:F3AE: D3        .byte $D3   ; 
- D 3 - I - 0x0033BF 00:F3AF: D4        .byte $D4   ; 
- D 3 - I - 0x0033C0 00:F3B0: FE        .byte $FE   ; 
- D 3 - I - 0x0033C1 00:F3B1: FE        .byte $FE   ; 
- D 3 - I - 0x0033C2 00:F3B2: 03        .byte $03   ; 
- D 3 - I - 0x0033C3 00:F3B3: 3B        .byte $3B   ; 
- D 3 - I - 0x0033C4 00:F3B4: 3C        .byte $3C   ; 
- D 3 - I - 0x0033C5 00:F3B5: 3D        .byte $3D   ; 
- D 3 - I - 0x0033C6 00:F3B6: E6        .byte $E6   ; 
- D 3 - I - 0x0033C7 00:F3B7: FC        .byte $FC   ; 
- D 3 - I - 0x0033C8 00:F3B8: FC        .byte $FC   ; 
- D 3 - I - 0x0033C9 00:F3B9: FC        .byte $FC   ; 
- D 3 - I - 0x0033CA 00:F3BA: D1        .byte $D1   ; 
- D 3 - I - 0x0033CB 00:F3BB: D2        .byte $D2   ; 
- D 3 - I - 0x0033CC 00:F3BC: FF        .byte $FF   ; 
- D 3 - I - 0x0033CD 00:F3BD: D3        .byte $D3   ; 
- D 3 - I - 0x0033CE 00:F3BE: D4        .byte $D4   ; 
- D 3 - I - 0x0033CF 00:F3BF: 00        .byte $00   ; 



_off_004_F3C0_1C:
- D 3 - I - 0x0033D0 00:F3C0: 03        .byte $03   ; 
- D 3 - I - 0x0033D1 00:F3C1: 3B        .byte $3B   ; 
- D 3 - I - 0x0033D2 00:F3C2: 3C        .byte $3C   ; 
- D 3 - I - 0x0033D3 00:F3C3: 3D        .byte $3D   ; 
- D 3 - I - 0x0033D4 00:F3C4: E6        .byte $E6   ; 
- D 3 - I - 0x0033D5 00:F3C5: FC        .byte $FC   ; 
- D 3 - I - 0x0033D6 00:F3C6: FC        .byte $FC   ; 
- D 3 - I - 0x0033D7 00:F3C7: FC        .byte $FC   ; 
- D 3 - I - 0x0033D8 00:F3C8: FC        .byte $FC   ; 
- D 3 - I - 0x0033D9 00:F3C9: FC        .byte $FC   ; 
- D 3 - I - 0x0033DA 00:F3CA: 3B        .byte $3B   ; 
- D 3 - I - 0x0033DB 00:F3CB: 3C        .byte $3C   ; 
- D 3 - I - 0x0033DC 00:F3CC: 3D        .byte $3D   ; 
- D 3 - I - 0x0033DD 00:F3CD: 00        .byte $00   ; 



_off_004_F3CE_1F:
- D 3 - I - 0x0033DE 00:F3CE: 03        .byte $03   ; 
- D 3 - I - 0x0033DF 00:F3CF: BF        .byte $BF   ; 
- D 3 - I - 0x0033E0 00:F3D0: 7D        .byte $7D   ; 
- D 3 - I - 0x0033E1 00:F3D1: 7E        .byte $7E   ; 
- D 3 - I - 0x0033E2 00:F3D2: 7F        .byte $7F   ; 
- D 3 - I - 0x0033E3 00:F3D3: FC        .byte $FC   ; 
- D 3 - I - 0x0033E4 00:F3D4: FC        .byte $FC   ; 
- D 3 - I - 0x0033E5 00:F3D5: FC        .byte $FC   ; 
- D 3 - I - 0x0033E6 00:F3D6: FC        .byte $FC   ; 
- D 3 - I - 0x0033E7 00:F3D7: FC        .byte $FC   ; 
tbl_F3D8:
- D 3 - - - 0x0033E8 00:F3D8: 80        .byte $80   ; 
- D 3 - I - 0x0033E9 00:F3D9: 81        .byte $81   ; 
- D 3 - I - 0x0033EA 00:F3DA: 82        .byte $82   ; 
- D 3 - I - 0x0033EB 00:F3DB: 00        .byte $00   ; 



_off_004_F3DC_22:
- D 3 - I - 0x0033EC 00:F3DC: 03        .byte $03   ; 
- D 3 - I - 0x0033ED 00:F3DD: 3B        .byte $3B   ; 
- D 3 - I - 0x0033EE 00:F3DE: 3C        .byte $3C   ; 
- D 3 - I - 0x0033EF 00:F3DF: 3D        .byte $3D   ; 
- D 3 - I - 0x0033F0 00:F3E0: 3B        .byte $3B   ; 
- D 3 - I - 0x0033F1 00:F3E1: 3C        .byte $3C   ; 
- D 3 - I - 0x0033F2 00:F3E2: 3D        .byte $3D   ; 
- D 3 - I - 0x0033F3 00:F3E3: FE        .byte $FE   ; 
- D 3 - I - 0x0033F4 00:F3E4: FE        .byte $FE   ; 
- D 3 - I - 0x0033F5 00:F3E5: FE        .byte $FE   ; 
- D 3 - I - 0x0033F6 00:F3E6: FE        .byte $FE   ; 
- D 3 - I - 0x0033F7 00:F3E7: FE        .byte $FE   ; 
- D 3 - I - 0x0033F8 00:F3E8: FE        .byte $FE   ; 
- D 3 - I - 0x0033F9 00:F3E9: 00        .byte $00   ; 



_off_004_F3EA_23:
- D 3 - I - 0x0033FA 00:F3EA: 03        .byte $03   ; 
- D 3 - I - 0x0033FB 00:F3EB: 3B        .byte $3B   ; 
- D 3 - I - 0x0033FC 00:F3EC: 3C        .byte $3C   ; 
- D 3 - I - 0x0033FD 00:F3ED: 3D        .byte $3D   ; 
- D 3 - I - 0x0033FE 00:F3EE: 3B        .byte $3B   ; 
- D 3 - I - 0x0033FF 00:F3EF: 3C        .byte $3C   ; 
- D 3 - I - 0x003400 00:F3F0: 3D        .byte $3D   ; 
- D 3 - I - 0x003401 00:F3F1: 78        .byte $78   ; 
- D 3 - I - 0x003402 00:F3F2: 78        .byte $78   ; 
- D 3 - I - 0x003403 00:F3F3: 78        .byte $78   ; 
- D 3 - I - 0x003404 00:F3F4: 78        .byte $78   ; 
- D 3 - I - 0x003405 00:F3F5: 78        .byte $78   ; 
- D 3 - I - 0x003406 00:F3F6: 78        .byte $78   ; 
- D 3 - I - 0x003407 00:F3F7: 03        .byte $03   ; 
- D 3 - I - 0x003408 00:F3F8: 3B        .byte $3B   ; 
- D 3 - I - 0x003409 00:F3F9: 3C        .byte $3C   ; 
- D 3 - I - 0x00340A 00:F3FA: 3D        .byte $3D   ; 
- D 3 - I - 0x00340B 00:F3FB: 3B        .byte $3B   ; 
- D 3 - I - 0x00340C 00:F3FC: 3C        .byte $3C   ; 
- D 3 - I - 0x00340D 00:F3FD: 3D        .byte $3D   ; 
- D 3 - I - 0x00340E 00:F3FE: FE        .byte $FE   ; 
- D 3 - I - 0x00340F 00:F3FF: FE        .byte $FE   ; 
- D 3 - I - 0x003410 00:F400: FE        .byte $FE   ; 
- D 3 - I - 0x003411 00:F401: FE        .byte $FE   ; 
- D 3 - I - 0x003412 00:F402: FE        .byte $FE   ; 
- D 3 - I - 0x003413 00:F403: FE        .byte $FE   ; 
- D 3 - I - 0x003414 00:F404: 03        .byte $03   ; 
- D 3 - I - 0x003415 00:F405: C7        .byte $C7   ; 
- D 3 - I - 0x003416 00:F406: C8        .byte $C8   ; 
- D 3 - I - 0x003417 00:F407: C9        .byte $C9   ; 
- D 3 - I - 0x003418 00:F408: CA        .byte $CA   ; 
- D 3 - I - 0x003419 00:F409: C8        .byte $C8   ; 
- D 3 - I - 0x00341A 00:F40A: C9        .byte $C9   ; 
- D 3 - I - 0x00341B 00:F40B: CB        .byte $CB   ; 
- D 3 - I - 0x00341C 00:F40C: FE        .byte $FE   ; 
- D 3 - I - 0x00341D 00:F40D: FE        .byte $FE   ; 
- D 3 - I - 0x00341E 00:F40E: FE        .byte $FE   ; 
- D 3 - I - 0x00341F 00:F40F: FE        .byte $FE   ; 
- D 3 - I - 0x003420 00:F410: FE        .byte $FE   ; 
- D 3 - I - 0x003421 00:F411: 04        .byte $04   ; 
- D 3 - I - 0x003422 00:F412: C7        .byte $C7   ; 
- D 3 - I - 0x003423 00:F413: C8        .byte $C8   ; 
- D 3 - I - 0x003424 00:F414: C9        .byte $C9   ; 
- D 3 - I - 0x003425 00:F415: CA        .byte $CA   ; 
- D 3 - I - 0x003426 00:F416: C8        .byte $C8   ; 
- D 3 - I - 0x003427 00:F417: C9        .byte $C9   ; 
- D 3 - I - 0x003428 00:F418: CB        .byte $CB   ; 
- D 3 - I - 0x003429 00:F419: FE        .byte $FE   ; 
- D 3 - I - 0x00342A 00:F41A: FE        .byte $FE   ; 
- D 3 - I - 0x00342B 00:F41B: FE        .byte $FE   ; 
- D 3 - I - 0x00342C 00:F41C: FE        .byte $FE   ; 
- D 3 - I - 0x00342D 00:F41D: 05        .byte $05   ; 
- D 3 - I - 0x00342E 00:F41E: C7        .byte $C7   ; 
- D 3 - I - 0x00342F 00:F41F: C8        .byte $C8   ; 
- D 3 - I - 0x003430 00:F420: C9        .byte $C9   ; 
- D 3 - I - 0x003431 00:F421: CA        .byte $CA   ; 
- D 3 - I - 0x003432 00:F422: C8        .byte $C8   ; 
- D 3 - I - 0x003433 00:F423: C9        .byte $C9   ; 
- D 3 - I - 0x003434 00:F424: CB        .byte $CB   ; 
- D 3 - I - 0x003435 00:F425: FE        .byte $FE   ; 
- D 3 - I - 0x003436 00:F426: FE        .byte $FE   ; 
- D 3 - I - 0x003437 00:F427: FE        .byte $FE   ; 
- D 3 - I - 0x003438 00:F428: 06        .byte $06   ; 
- D 3 - I - 0x003439 00:F429: C7        .byte $C7   ; 
- D 3 - I - 0x00343A 00:F42A: C8        .byte $C8   ; 
- D 3 - I - 0x00343B 00:F42B: C9        .byte $C9   ; 
- D 3 - I - 0x00343C 00:F42C: CA        .byte $CA   ; 
- D 3 - I - 0x00343D 00:F42D: C8        .byte $C8   ; 
- D 3 - I - 0x00343E 00:F42E: C9        .byte $C9   ; 
- D 3 - I - 0x00343F 00:F42F: CB        .byte $CB   ; 
- D 3 - I - 0x003440 00:F430: FE        .byte $FE   ; 
- D 3 - I - 0x003441 00:F431: FE        .byte $FE   ; 
- D 3 - I - 0x003442 00:F432: 07        .byte $07   ; 
- D 3 - I - 0x003443 00:F433: 3B        .byte $3B   ; 
- D 3 - I - 0x003444 00:F434: 3C        .byte $3C   ; 
- D 3 - I - 0x003445 00:F435: 3D        .byte $3D   ; 
- D 3 - I - 0x003446 00:F436: 3B        .byte $3B   ; 
- D 3 - I - 0x003447 00:F437: 3C        .byte $3C   ; 
- D 3 - I - 0x003448 00:F438: 3D        .byte $3D   ; 
- D 3 - I - 0x003449 00:F439: FE        .byte $FE   ; 
- D 3 - I - 0x00344A 00:F43A: FE        .byte $FE   ; 
- D 3 - I - 0x00344B 00:F43B: 07        .byte $07   ; 
- D 3 - I - 0x00344C 00:F43C: 3B        .byte $3B   ; 
- D 3 - I - 0x00344D 00:F43D: 3C        .byte $3C   ; 
- D 3 - I - 0x00344E 00:F43E: 3D        .byte $3D   ; 
- D 3 - I - 0x00344F 00:F43F: 3B        .byte $3B   ; 
- D 3 - I - 0x003450 00:F440: 3C        .byte $3C   ; 
- D 3 - I - 0x003451 00:F441: 3D        .byte $3D   ; 
- D 3 - I - 0x003452 00:F442: FE        .byte $FE   ; 
- D 3 - I - 0x003453 00:F443: FE        .byte $FE   ; 
- D 3 - I - 0x003454 00:F444: 07        .byte $07   ; 
- D 3 - I - 0x003455 00:F445: C7        .byte $C7   ; 
- D 3 - I - 0x003456 00:F446: C8        .byte $C8   ; 
- D 3 - I - 0x003457 00:F447: C9        .byte $C9   ; 
- D 3 - I - 0x003458 00:F448: CA        .byte $CA   ; 
- D 3 - I - 0x003459 00:F449: C8        .byte $C8   ; 
- D 3 - I - 0x00345A 00:F44A: C9        .byte $C9   ; 
- D 3 - I - 0x00345B 00:F44B: CB        .byte $CB   ; 
- D 3 - I - 0x00345C 00:F44C: FE        .byte $FE   ; 
- D 3 - I - 0x00345D 00:F44D: 08        .byte $08   ; 
- D 3 - I - 0x00345E 00:F44E: C7        .byte $C7   ; 
- D 3 - I - 0x00345F 00:F44F: C8        .byte $C8   ; 
- D 3 - I - 0x003460 00:F450: C9        .byte $C9   ; 
- D 3 - I - 0x003461 00:F451: CA        .byte $CA   ; 
- D 3 - I - 0x003462 00:F452: C8        .byte $C8   ; 
- D 3 - I - 0x003463 00:F453: C9        .byte $C9   ; 
- D 3 - I - 0x003464 00:F454: CB        .byte $CB   ; 
- D 3 - I - 0x003465 00:F455: 00        .byte $00   ; 



_off_004_F456_11:
- D 3 - I - 0x003466 00:F456: 09        .byte $09   ; 
- D 3 - I - 0x003467 00:F457: C0        .byte $C0   ; 
- D 3 - I - 0x003468 00:F458: C0        .byte $C0   ; 
- D 3 - I - 0x003469 00:F459: C0        .byte $C0   ; 
- D 3 - I - 0x00346A 00:F45A: C0        .byte $C0   ; 
- D 3 - I - 0x00346B 00:F45B: C0        .byte $C0   ; 
- D 3 - I - 0x00346C 00:F45C: C0        .byte $C0   ; 
- D 3 - I - 0x00346D 00:F45D: 00        .byte $00   ; 



_off_004_F45E_16:
- D 3 - I - 0x00346E 00:F45E: 09        .byte $09   ; 
- D 3 - I - 0x00346F 00:F45F: E4        .byte $E4   ; 
- D 3 - I - 0x003470 00:F460: E4        .byte $E4   ; 
- D 3 - I - 0x003471 00:F461: E4        .byte $E4   ; 
- D 3 - I - 0x003472 00:F462: E4        .byte $E4   ; 
- D 3 - I - 0x003473 00:F463: E4        .byte $E4   ; 
- D 3 - I - 0x003474 00:F464: E4        .byte $E4   ; 
- D 3 - I - 0x003475 00:F465: 00        .byte $00   ; 



_off_004_F466_17:
- D 3 - I - 0x003476 00:F466: 09        .byte $09   ; 
- D 3 - I - 0x003477 00:F467: C3        .byte $C3   ; 
- D 3 - I - 0x003478 00:F468: C3        .byte $C3   ; 
- D 3 - I - 0x003479 00:F469: C3        .byte $C3   ; 
- D 3 - I - 0x00347A 00:F46A: C3        .byte $C3   ; 
- D 3 - I - 0x00347B 00:F46B: C3        .byte $C3   ; 
- D 3 - I - 0x00347C 00:F46C: C3        .byte $C3   ; 
- D 3 - I - 0x00347D 00:F46D: 00        .byte $00   ; 



_off_004_F46E_1D:
_off_004_F46E_1E:
- D 3 - I - 0x00347E 00:F46E: 03        .byte $03   ; 
- D 3 - I - 0x00347F 00:F46F: 3B        .byte $3B   ; 
- D 3 - I - 0x003480 00:F470: 3C        .byte $3C   ; 
- D 3 - I - 0x003481 00:F471: 3D        .byte $3D   ; 
- D 3 - I - 0x003482 00:F472: E6        .byte $E6   ; 
- D 3 - I - 0x003483 00:F473: 28        .byte $28   ; 
- D 3 - I - 0x003484 00:F474: 29        .byte $29   ; 
- D 3 - I - 0x003485 00:F475: 73        .byte $73   ; 
- D 3 - I - 0x003486 00:F476: 73        .byte $73   ; 
- D 3 - I - 0x003487 00:F477: 73        .byte $73   ; 
- D 3 - I - 0x003488 00:F478: 70        .byte $70   ; 
- D 3 - I - 0x003489 00:F479: 71        .byte $71   ; 
- D 3 - I - 0x00348A 00:F47A: 72        .byte $72   ; 
- D 3 - I - 0x00348B 00:F47B: 03        .byte $03   ; 
- D 3 - I - 0x00348C 00:F47C: 3B        .byte $3B   ; 
- D 3 - I - 0x00348D 00:F47D: 3C        .byte $3C   ; 
- D 3 - I - 0x00348E 00:F47E: 3D        .byte $3D   ; 
- D 3 - I - 0x00348F 00:F47F: E6        .byte $E6   ; 
- D 3 - I - 0x003490 00:F480: FC        .byte $FC   ; 
- D 3 - I - 0x003491 00:F481: FC        .byte $FC   ; 
- D 3 - I - 0x003492 00:F482: FC        .byte $FC   ; 
- D 3 - I - 0x003493 00:F483: FC        .byte $FC   ; 
- D 3 - I - 0x003494 00:F484: FC        .byte $FC   ; 
- D 3 - I - 0x003495 00:F485: B9        .byte $B9   ; 
- D 3 - I - 0x003496 00:F486: BA        .byte $BA   ; 
- D 3 - I - 0x003497 00:F487: BB        .byte $BB   ; 
- D 3 - I - 0x003498 00:F488: 03        .byte $03   ; 
- D 3 - I - 0x003499 00:F489: 3B        .byte $3B   ; 
- D 3 - I - 0x00349A 00:F48A: 3C        .byte $3C   ; 
- D 3 - I - 0x00349B 00:F48B: 3D        .byte $3D   ; 
- D 3 - I - 0x00349C 00:F48C: E6        .byte $E6   ; 
- D 3 - I - 0x00349D 00:F48D: FC        .byte $FC   ; 
- D 3 - I - 0x00349E 00:F48E: FC        .byte $FC   ; 
- D 3 - I - 0x00349F 00:F48F: FC        .byte $FC   ; 
- D 3 - I - 0x0034A0 00:F490: FC        .byte $FC   ; 
- D 3 - I - 0x0034A1 00:F491: FC        .byte $FC   ; 
- D 3 - I - 0x0034A2 00:F492: BC        .byte $BC   ; 
- D 3 - I - 0x0034A3 00:F493: BD        .byte $BD   ; 
- D 3 - I - 0x0034A4 00:F494: BE        .byte $BE   ; 
- D 3 - I - 0x0034A5 00:F495: 00        .byte $00   ; 



_off_004_F496_0F:
- D 3 - I - 0x0034A6 00:F496: 09        .byte $09   ; 
- D 3 - I - 0x0034A7 00:F497: 88        .byte $88   ; 
- D 3 - I - 0x0034A8 00:F498: 3C        .byte $3C   ; 
- D 3 - I - 0x0034A9 00:F499: 3D        .byte $3D   ; 
- D 3 - I - 0x0034AA 00:F49A: 3B        .byte $3B   ; 
- D 3 - I - 0x0034AB 00:F49B: 3C        .byte $3C   ; 
- D 3 - I - 0x0034AC 00:F49C: 3D        .byte $3D   ; 
- D 3 - I - 0x0034AD 00:F49D: 09        .byte $09   ; 
- D 3 - I - 0x0034AE 00:F49E: 89        .byte $89   ; 
- D 3 - I - 0x0034AF 00:F49F: 3C        .byte $3C   ; 
- D 3 - I - 0x0034B0 00:F4A0: 3D        .byte $3D   ; 
- D 3 - I - 0x0034B1 00:F4A1: 3B        .byte $3B   ; 
- D 3 - I - 0x0034B2 00:F4A2: 3C        .byte $3C   ; 
- D 3 - I - 0x0034B3 00:F4A3: 3D        .byte $3D   ; 
- D 3 - I - 0x0034B4 00:F4A4: 00        .byte $00   ; 



_off_004_F4A5_10:
- D 3 - I - 0x0034B5 00:F4A5: 09        .byte $09   ; 
- D 3 - I - 0x0034B6 00:F4A6: 3B        .byte $3B   ; 
- D 3 - I - 0x0034B7 00:F4A7: 3C        .byte $3C   ; 
- D 3 - I - 0x0034B8 00:F4A8: 3D        .byte $3D   ; 
- D 3 - I - 0x0034B9 00:F4A9: 3B        .byte $3B   ; 
- D 3 - I - 0x0034BA 00:F4AA: 3C        .byte $3C   ; 
- D 3 - I - 0x0034BB 00:F4AB: 88        .byte $88   ; 
- D 3 - I - 0x0034BC 00:F4AC: 09        .byte $09   ; 
- D 3 - I - 0x0034BD 00:F4AD: 3B        .byte $3B   ; 
- D 3 - I - 0x0034BE 00:F4AE: 3C        .byte $3C   ; 
- D 3 - I - 0x0034BF 00:F4AF: 3D        .byte $3D   ; 
- D 3 - I - 0x0034C0 00:F4B0: 3B        .byte $3B   ; 
- D 3 - I - 0x0034C1 00:F4B1: 3C        .byte $3C   ; 
- D 3 - I - 0x0034C2 00:F4B2: 89        .byte $89   ; 
- D 3 - I - 0x0034C3 00:F4B3: 00        .byte $00   ; 



_off_004_F4B4_0E:
- D 3 - I - 0x0034C4 00:F4B4: 08        .byte $08   ; 
- D 3 - I - 0x0034C5 00:F4B5: E2        .byte $E2   ; 
- D 3 - I - 0x0034C6 00:F4B6: 8D        .byte $8D   ; 
- D 3 - I - 0x0034C7 00:F4B7: 8E        .byte $8E   ; 
- D 3 - I - 0x0034C8 00:F4B8: 8F        .byte $8F   ; 
- D 3 - I - 0x0034C9 00:F4B9: 90        .byte $90   ; 
- D 3 - I - 0x0034CA 00:F4BA: 91        .byte $91   ; 
- D 3 - I - 0x0034CB 00:F4BB: 92        .byte $92   ; 
- D 3 - I - 0x0034CC 00:F4BC: 07        .byte $07   ; 
- D 3 - I - 0x0034CD 00:F4BD: E2        .byte $E2   ; 
- D 3 - I - 0x0034CE 00:F4BE: DE        .byte $DE   ; 
- D 3 - I - 0x0034CF 00:F4BF: DF        .byte $DF   ; 
- D 3 - I - 0x0034D0 00:F4C0: E3        .byte $E3   ; 
- D 3 - I - 0x0034D1 00:F4C1: FE        .byte $FE   ; 
- D 3 - I - 0x0034D2 00:F4C2: 3B        .byte $3B   ; 
- D 3 - I - 0x0034D3 00:F4C3: 3C        .byte $3C   ; 
- D 3 - I - 0x0034D4 00:F4C4: 3D        .byte $3D   ; 
- D 3 - I - 0x0034D5 00:F4C5: 00        .byte $00   ; 



tbl_F4C6:
- D 3 - - - 0x0034D6 00:F4C6: 00        .byte $00   ; 
- D 3 - - - 0x0034D7 00:F4C7: 20        .byte $20   ; 
- D 3 - - - 0x0034D8 00:F4C8: 18        .byte $18   ; 
- D 3 - - - 0x0034D9 00:F4C9: 1A        .byte $1A   ; 
- D 3 - - - 0x0034DA 00:F4CA: 1C        .byte $1C   ; 
- D 3 - - - 0x0034DB 00:F4CB: 22        .byte $22   ; 
- D 3 - - - 0x0034DC 00:F4CC: 16        .byte $16   ; 



tbl_F4CD:
- D 3 - - - 0x0034DD 00:F4CD: 15        .byte $15   ; 
- D 3 - - - 0x0034DE 00:F4CE: 0A        .byte $0A   ; 
- D 3 - - - 0x0034DF 00:F4CF: 19        .byte $19   ; 
- D 3 - - - 0x0034E0 00:F4D0: FE        .byte $FE   ; 
- D 3 - - - 0x0034E1 00:F4D1: FE        .byte $FE   ; 



_off_005_F4D2_01:
; bzk missing flag I indicates that this byte is probably a part of F4CD table
- D 3 - - - 0x0034E2 00:F4D2: 12        .byte $12   ; 
- D 3 - I - 0x0034E3 00:F4D3: 42        .byte $42   ; 
- D 3 - I - 0x0034E4 00:F4D4: 17        .byte $17   ; 
- D 3 - I - 0x0034E5 00:F4D5: 19        .byte $19   ; 
- D 3 - I - 0x0034E6 00:F4D6: 00        .byte $00   ; 



_off_005_F4D7_02:
- D 3 - I - 0x0034E7 00:F4D7: 13        .byte $13   ; 
- D 3 - I - 0x0034E8 00:F4D8: 43        .byte $43   ; 
- D 3 - I - 0x0034E9 00:F4D9: 17        .byte $17   ; 
- D 3 - I - 0x0034EA 00:F4DA: 1B        .byte $1B   ; 
- D 3 - I - 0x0034EB 00:F4DB: 00        .byte $00   ; 



_off_005_F4DC_00:
- D 3 - I - 0x0034EC 00:F4DC: 11        .byte $11   ; 
- D 3 - I - 0x0034ED 00:F4DD: 46        .byte $46   ; 
- D 3 - I - 0x0034EE 00:F4DE: 0A        .byte $0A   ; 
- D 3 - I - 0x0034EF 00:F4DF: 17        .byte $17   ; 
- D 3 - I - 0x0034F0 00:F4E0: 00        .byte $00   ; 



_off_005_F4E1_03:
- D 3 - I - 0x0034F1 00:F4E1: 14        .byte $14   ; 
- D 3 - I - 0x0034F2 00:F4E2: 44        .byte $44   ; 
- D 3 - I - 0x0034F3 00:F4E3: 03        .byte $03   ; 
- D 3 - I - 0x0034F4 00:F4E4: 1E        .byte $1E   ; 
- D 3 - I - 0x0034F5 00:F4E5: 44        .byte $44   ; 
- D 3 - I - 0x0034F6 00:F4E6: 04        .byte $04   ; 
- D 3 - I - 0x0034F7 00:F4E7: 1E        .byte $1E   ; 
- D 3 - I - 0x0034F8 00:F4E8: 44        .byte $44   ; 
- D 3 - I - 0x0034F9 00:F4E9: 04        .byte $04   ; 
- D 3 - I - 0x0034FA 00:F4EA: 1F        .byte $1F   ; 
- D 3 - I - 0x0034FB 00:F4EB: 1B        .byte $1B   ; 
- D 3 - I - 0x0034FC 00:F4EC: 00        .byte $00   ; 



_off_005_F4ED_04:
- D 3 - I - 0x0034FD 00:F4ED: 15        .byte $15   ; 
- D 3 - I - 0x0034FE 00:F4EE: 41        .byte $41   ; 
- D 3 - I - 0x0034FF 00:F4EF: 06        .byte $06   ; 
- D 3 - I - 0x003500 00:F4F0: 21        .byte $21   ; 
- D 3 - I - 0x003501 00:F4F1: 45        .byte $45   ; 
- D 3 - I - 0x003502 00:F4F2: 06        .byte $06   ; 
- D 3 - I - 0x003503 00:F4F3: 23        .byte $23   ; 
- D 3 - I - 0x003504 00:F4F4: 00        .byte $00   ; 



tbl_F4F5_lo:
- D 3 - - - 0x003505 00:F4F5: DC        .byte < _off_005_F4DC_00   ; 
- D 3 - - - 0x003506 00:F4F6: D2        .byte < _off_005_F4D2_01   ; 
- D 3 - - - 0x003507 00:F4F7: D7        .byte < _off_005_F4D7_02   ; 
- D 3 - - - 0x003508 00:F4F8: E1        .byte < _off_005_F4E1_03   ; 
- D 3 - - - 0x003509 00:F4F9: ED        .byte < _off_005_F4ED_04   ; 



tbl_F4FA_hi:
- D 3 - - - 0x00350A 00:F4FA: F4        .byte > _off_005_F4DC_00   ; 
- D 3 - - - 0x00350B 00:F4FB: F4        .byte > _off_005_F4D2_01   ; 
- D 3 - - - 0x00350C 00:F4FC: F4        .byte > _off_005_F4D7_02   ; 
- D 3 - - - 0x00350D 00:F4FD: F4        .byte > _off_005_F4E1_03   ; 
- D 3 - - - 0x00350E 00:F4FE: F4        .byte > _off_005_F4ED_04   ; 



sub_F4FF:
C - - - - - 0x00350F 00:F4FF: A6 43     LDX ram_0043
C - - - - - 0x003511 00:F501: BD 3A ED  LDA tbl_ED3A_lo,X
C - - - - - 0x003514 00:F504: 85 07     STA ram_0007
C - - - - - 0x003516 00:F506: BD 40 ED  LDA tbl_ED40_hi,X
C - - - - - 0x003519 00:F509: 85 08     STA ram_0008
C - - - - - 0x00351B 00:F50B: A5 EB     LDA ram_00EB
C - - - - - 0x00351D 00:F50D: C5 E0     CMP ram_00E0
C - - - - - 0x00351F 00:F50F: F0 01     BEQ bra_F512
bra_F511_RTS:
C - - - - - 0x003521 00:F511: 60        RTS
bra_F512:
C - - - - - 0x003522 00:F512: A5 EC     LDA ram_00EC
C - - - - - 0x003524 00:F514: D0 7B     BNE bra_F591
C - - - - - 0x003526 00:F516: A5 EF     LDA ram_00EF
C - - - - - 0x003528 00:F518: D0 7D     BNE bra_F597
bra_F51A_loop:
loc_F51A:
C D 3 - - - 0x00352A 00:F51A: A4 ED     LDY ram_00ED
C - - - - - 0x00352C 00:F51C: D0 07     BNE bra_F525
C - - - - - 0x00352E 00:F51E: B1 07     LDA (ram_0007),Y
C - - - - - 0x003530 00:F520: 85 57     STA ram_0057
C - - - - - 0x003532 00:F522: EE A4 03  INC ram_03A4
bra_F525:
loc_F525:
C D 3 - - - 0x003535 00:F525: A5 41     LDA ram_0041
C - - - - - 0x003537 00:F527: C9 09     CMP #$09
C - - - - - 0x003539 00:F529: D0 0F     BNE bra_F53A
C - - - - - 0x00353B 00:F52B: AD BC 03  LDA ram_03BC
C - - - - - 0x00353E 00:F52E: F0 0A     BEQ bra_F53A
- - - - - - 0x003540 00:F530: A9 00     LDA #$00
- - - - - - 0x003542 00:F532: 85 EE     STA ram_00EE
- - - - - - 0x003544 00:F534: 85 ED     STA ram_00ED
- - - - - - 0x003546 00:F536: A9 7F     LDA #$7F
- - - - - - 0x003548 00:F538: D0 53     BNE bra_F58D    ; jmp
bra_F53A:
C - - - - - 0x00354A 00:F53A: E6 ED     INC ram_00ED
C - - - - - 0x00354C 00:F53C: A4 ED     LDY ram_00ED
C - - - - - 0x00354E 00:F53E: B1 07     LDA (ram_0007),Y
C - - - - - 0x003550 00:F540: F0 CF     BEQ bra_F511_RTS
C - - - - - 0x003552 00:F542: 2C D8 F3  BIT tbl_F3D8
C - - - - - 0x003555 00:F545: F0 04     BEQ bra_F54B
C - - - - - 0x003557 00:F547: A5 46     LDA ram_0046
C - - - - - 0x003559 00:F549: F0 CF     BEQ bra_F51A_loop
bra_F54B:
C - - - - - 0x00355B 00:F54B: B1 07     LDA (ram_0007),Y
C - - - - - 0x00355D 00:F54D: 2C B5 F0  BIT tbl_F0B5
C - - - - - 0x003560 00:F550: F0 24     BEQ bra_F576
C - - - - - 0x003562 00:F552: 29 0F     AND #$0F
C - - - - - 0x003564 00:F554: AA        TAX
C - - - - - 0x003565 00:F555: BD C6 F4  LDA tbl_F4C6,X
C - - - - - 0x003568 00:F558: 85 EE     STA ram_00EE
C - - - - - 0x00356A 00:F55A: E6 ED     INC ram_00ED
C - - - - - 0x00356C 00:F55C: C8        INY
C - - - - - 0x00356D 00:F55D: A5 41     LDA ram_0041
C - - - - - 0x00356F 00:F55F: C9 09     CMP #$09
C - - - - - 0x003571 00:F561: D0 0F     BNE bra_F572
C - - - - - 0x003573 00:F563: C0 02     CPY #$02
C - - - - - 0x003575 00:F565: D0 0B     BNE bra_F572
C - - - - - 0x003577 00:F567: A9 01     LDA #$01
C - - - - - 0x003579 00:F569: 85 57     STA ram_0057
C - - - - - 0x00357B 00:F56B: B1 07     LDA (ram_0007),Y
C - - - - - 0x00357D 00:F56D: 38        SEC
C - - - - - 0x00357E 00:F56E: E9 3D     SBC #$3D
C - - - - - 0x003580 00:F570: D0 1B     BNE bra_F58D
bra_F572:
C - - - - - 0x003582 00:F572: B1 07     LDA (ram_0007),Y
C - - - - - 0x003584 00:F574: D0 17     BNE bra_F58D
bra_F576:
C - - - - - 0x003586 00:F576: A2 01     LDX #$01
C - - - - - 0x003588 00:F578: 29 3F     AND #$3F
C - - - - - 0x00358A 00:F57A: 85 EE     STA ram_00EE
C - - - - - 0x00358C 00:F57C: C9 30     CMP #$30
C - - - - - 0x00358E 00:F57E: 90 17     BCC bra_F597
C - - - - - 0x003590 00:F580: D0 05     BNE bra_F587
C - - - - - 0x003592 00:F582: AD BC 03  LDA ram_03BC
C - - - - - 0x003595 00:F585: F0 01     BEQ bra_F588
bra_F587:
C - - - - - 0x003597 00:F587: CA        DEX
bra_F588:
C - - - - - 0x003598 00:F588: 8E A8 03  STX ram_03A8
C - - - - - 0x00359B 00:F58B: 10 8D     BPL bra_F51A_loop
bra_F58D:
C - - - - - 0x00359D 00:F58D: 29 7F     AND #$7F
C - - - - - 0x00359F 00:F58F: 85 EC     STA ram_00EC
bra_F591:
C - - - - - 0x0035A1 00:F591: A9 00     LDA #$00
C - - - - - 0x0035A3 00:F593: 85 EF     STA ram_00EF
C - - - - - 0x0035A5 00:F595: C6 EC     DEC ram_00EC
bra_F597:
C - - - - - 0x0035A7 00:F597: A6 EE     LDX ram_00EE
C - - - - - 0x0035A9 00:F599: 20 2E F8  JSR sub_F82E
C - - - - - 0x0035AC 00:F59C: A4 EF     LDY ram_00EF
C - - - - - 0x0035AE 00:F59E: B1 05     LDA (ram_0005),Y
C - - - - - 0x0035B0 00:F5A0: D0 03     BNE bra_F5A5
C - - - - - 0x0035B2 00:F5A2: 4C 2D F6  JMP loc_F62D
bra_F5A5:
C - - - - - 0x0035B5 00:F5A5: 20 76 F6  JSR sub_F676
C - - - - - 0x0035B8 00:F5A8: B1 05     LDA (ram_0005),Y
C - - - - - 0x0035BA 00:F5AA: AA        TAX
C - - - - - 0x0035BB 00:F5AB: 20 81 F6  JSR sub_F681
C - - - - - 0x0035BE 00:F5AE: A5 EE     LDA ram_00EE
C - - - - - 0x0035C0 00:F5B0: F0 08     BEQ bra_F5BA
C - - - - - 0x0035C2 00:F5B2: C9 18     CMP #$18
C - - - - - 0x0035C4 00:F5B4: F0 04     BEQ bra_F5BA
C - - - - - 0x0035C6 00:F5B6: C9 1A     CMP #$1A
C - - - - - 0x0035C8 00:F5B8: D0 0F     BNE bra_F5C9
bra_F5BA:
C - - - - - 0x0035CA 00:F5BA: AD A2 03  LDA ram_03A2
C - - - - - 0x0035CD 00:F5BD: 49 01     EOR #$01
C - - - - - 0x0035CF 00:F5BF: 8D A2 03  STA ram_03A2
C - - - - - 0x0035D2 00:F5C2: D0 05     BNE bra_F5C9
C - - - - - 0x0035D4 00:F5C4: A9 83     LDA #$83
C - - - - - 0x0035D6 00:F5C6: 8D 0A 03  STA ram_030A
bra_F5C9:
C - - - - - 0x0035D9 00:F5C9: C8        INY
C - - - - - 0x0035DA 00:F5CA: 84 EF     STY ram_00EF
C - - - - - 0x0035DC 00:F5CC: A5 EE     LDA ram_00EE
C - - - - - 0x0035DE 00:F5CE: C9 09     CMP #$09
C - - - - - 0x0035E0 00:F5D0: D0 24     BNE bra_F5F6
C - - - - - 0x0035E2 00:F5D2: A5 57     LDA ram_0057
C - - - - - 0x0035E4 00:F5D4: C9 01     CMP #$01
C - - - - - 0x0035E6 00:F5D6: F0 1E     BEQ bra_F5F6
C - - - - - 0x0035E8 00:F5D8: C0 25     CPY #$25
C - - - - - 0x0035EA 00:F5DA: 90 1A     BCC bra_F5F6
C - - - - - 0x0035EC 00:F5DC: C0 58     CPY #$58
C - - - - - 0x0035EE 00:F5DE: B0 16     BCS bra_F5F6
C - - - - - 0x0035F0 00:F5E0: AE A5 03  LDX ram_03A5
C - - - - - 0x0035F3 00:F5E3: BD CD F4  LDA tbl_F4CD,X
C - - - - - 0x0035F6 00:F5E6: 8D 10 03  STA ram_0310
C - - - - - 0x0035F9 00:F5E9: EE A5 03  INC ram_03A5
C - - - - - 0x0035FC 00:F5EC: E0 05     CPX #$05
C - - - - - 0x0035FE 00:F5EE: D0 06     BNE bra_F5F6
C - - - - - 0x003600 00:F5F0: AD A4 03  LDA ram_03A4
C - - - - - 0x003603 00:F5F3: 8D 10 03  STA ram_0310
bra_F5F6:
C - - - - - 0x003606 00:F5F6: A9 8E     LDA #$8E
C - - - - - 0x003608 00:F5F8: 8D 03 03  STA ram_0303
C - - - - - 0x00360B 00:F5FB: A5 EA     LDA ram_00EA
C - - - - - 0x00360D 00:F5FD: 8D 01 03  STA ram_0301
C - - - - - 0x003610 00:F600: A5 E9     LDA ram_00E9
C - - - - - 0x003612 00:F602: 8D 02 03  STA ram_0302
C - - - - - 0x003615 00:F605: A5 E8     LDA ram_00E8
C - - - - - 0x003617 00:F607: 85 0F     STA ram_000F
C - - - - - 0x003619 00:F609: 20 4E F6  JSR sub_F64E
C - - - - - 0x00361C 00:F60C: A5 E8     LDA ram_00E8
C - - - - - 0x00361E 00:F60E: 20 BF EC  JSR sub_ECBF
C - - - - - 0x003621 00:F611: 85 E8     STA ram_00E8
C - - - - - 0x003623 00:F613: E6 E9     INC ram_00E9
C - - - - - 0x003625 00:F615: A5 E9     LDA ram_00E9
C - - - - - 0x003627 00:F617: C9 20     CMP #$20
C - - - - - 0x003629 00:F619: D0 0A     BNE bra_F625
C - - - - - 0x00362B 00:F61B: A9 00     LDA #$00
C - - - - - 0x00362D 00:F61D: 85 E9     STA ram_00E9
C - - - - - 0x00362F 00:F61F: A5 EA     LDA ram_00EA
C - - - - - 0x003631 00:F621: 49 04     EOR #$04
C - - - - - 0x003633 00:F623: 85 EA     STA ram_00EA
bra_F625:
C - - - - - 0x003635 00:F625: A5 E0     LDA ram_00E0
C - - - - - 0x003637 00:F627: 20 BF EC  JSR sub_ECBF
C - - - - - 0x00363A 00:F62A: 85 EB     STA ram_00EB
C - - - - - 0x00363C 00:F62C: 60        RTS



loc_F62D:
C D 3 - - - 0x00363D 00:F62D: 85 EF     STA ram_00EF
C - - - - - 0x00363F 00:F62F: A5 EE     LDA ram_00EE
C - - - - - 0x003641 00:F631: C9 09     CMP #$09
C - - - - - 0x003643 00:F633: F0 03     BEQ bra_F638
C - - - - - 0x003645 00:F635: 4C 1A F5  JMP loc_F51A
bra_F638:
C - - - - - 0x003648 00:F638: EE A4 03  INC ram_03A4
C - - - - - 0x00364B 00:F63B: C6 57     DEC ram_0057
C - - - - - 0x00364D 00:F63D: D0 05     BNE bra_F644
C - - - - - 0x00364F 00:F63F: A9 01     LDA #$01
C - - - - - 0x003651 00:F641: 8D BC 03  STA ram_03BC
bra_F644:
C - - - - - 0x003654 00:F644: A9 00     LDA #$00
C - - - - - 0x003656 00:F646: 85 ED     STA ram_00ED
C - - - - - 0x003658 00:F648: 8D A5 03  STA ram_03A5
C - - - - - 0x00365B 00:F64B: 4C 25 F5  JMP loc_F525



sub_F64E:
C - - - - - 0x00365E 00:F64E: A2 05     LDX #$05
C - - - - - 0x003660 00:F650: A9 0D     LDA #$0D
C - - - - - 0x003662 00:F652: 85 0C     STA ram_000C
bra_F654_loop:
C - - - - - 0x003664 00:F654: 8A        TXA
C - - - - - 0x003665 00:F655: A8        TAY
C - - - - - 0x003666 00:F656: 20 0D E8  JSR sub_E80D
C - - - - - 0x003669 00:F659: 86 0A     STX ram_000A
bra_F65B_loop:
C - - - - - 0x00366B 00:F65B: A6 0C     LDX ram_000C
C - - - - - 0x00366D 00:F65D: BD 04 03  LDA ram_0304,X
C - - - - - 0x003670 00:F660: C9 FC     CMP #$FC
C - - - - - 0x003672 00:F662: D0 06     BNE bra_F66A
C - - - - - 0x003674 00:F664: C6 0C     DEC ram_000C
C - - - - - 0x003676 00:F666: A5 0C     LDA ram_000C
C - - - - - 0x003678 00:F668: 10 F1     BPL bra_F65B_loop
bra_F66A:
C - - - - - 0x00367A 00:F66A: A4 0F     LDY ram_000F
C - - - - - 0x00367C 00:F66C: 91 03     STA (ram_0003),Y
C - - - - - 0x00367E 00:F66E: C6 0C     DEC ram_000C
C - - - - - 0x003680 00:F670: A6 0A     LDX ram_000A
C - - - - - 0x003682 00:F672: CA        DEX
C - - - - - 0x003683 00:F673: 10 DF     BPL bra_F654_loop
C - - - - - 0x003685 00:F675: 60        RTS



sub_F676:
C - - - - - 0x003686 00:F676: A2 0A     LDX #$0A
C - - - - - 0x003688 00:F678: A9 FC     LDA #$FC
bra_F67A_loop:
C - - - - - 0x00368A 00:F67A: 9D 03 03  STA ram_0304 - $01,X
C - - - - - 0x00368D 00:F67D: CA        DEX
C - - - - - 0x00368E 00:F67E: D0 FA     BNE bra_F67A_loop
C - - - - - 0x003690 00:F680: 60        RTS



sub_F681:
bra_F681_loop:
C - - - - - 0x003691 00:F681: C8        INY
C - - - - - 0x003692 00:F682: B1 05     LDA (ram_0005),Y
C - - - - - 0x003694 00:F684: 9D 03 03  STA ram_0303,X
C - - - - - 0x003697 00:F687: E8        INX
C - - - - - 0x003698 00:F688: E0 0F     CPX #$0F
C - - - - - 0x00369A 00:F68A: D0 F5     BNE bra_F681_loop
bra_F68C_RTS:
C - - - - - 0x00369C 00:F68C: 60        RTS



sub_F68D:
C - - - - - 0x00369D 00:F68D: A5 BE     LDA ram_00BE
C - - - - - 0x00369F 00:F68F: F0 FB     BEQ bra_F68C_RTS
C - - - - - 0x0036A1 00:F691: A5 CA     LDA ram_00CA
C - - - - - 0x0036A3 00:F693: D0 32     BNE bra_F6C7
C - - - - - 0x0036A5 00:F695: A5 C3     LDA ram_00C3
C - - - - - 0x0036A7 00:F697: D0 2E     BNE bra_F6C7
C - - - - - 0x0036A9 00:F699: A6 C8     LDX ram_00C8
C - - - - - 0x0036AB 00:F69B: 8A        TXA
C - - - - - 0x0036AC 00:F69C: F0 29     BEQ bra_F6C7
C - - - - - 0x0036AE 00:F69E: CA        DEX
C - - - - - 0x0036AF 00:F69F: 20 39 F8  JSR sub_F839
C - - - - - 0x0036B2 00:F6A2: A4 C9     LDY ram_00C9
C - - - - - 0x0036B4 00:F6A4: B1 07     LDA (ram_0007),Y
C - - - - - 0x0036B6 00:F6A6: D0 03     BNE bra_F6AB
C - - - - - 0x0036B8 00:F6A8: 4C 1E F7  JMP loc_F71E
bra_F6AB:
C - - - - - 0x0036BB 00:F6AB: 2C B5 F0  BIT tbl_F0B5
C - - - - - 0x0036BE 00:F6AE: F0 12     BEQ bra_F6C2
C - - - - - 0x0036C0 00:F6B0: 29 0F     AND #$0F
C - - - - - 0x0036C2 00:F6B2: AA        TAX
C - - - - - 0x0036C3 00:F6B3: BD C6 F4  LDA tbl_F4C6,X
C - - - - - 0x0036C6 00:F6B6: 85 B8     STA ram_00B8
C - - - - - 0x0036C8 00:F6B8: C8        INY
C - - - - - 0x0036C9 00:F6B9: B1 07     LDA (ram_0007),Y
C - - - - - 0x0036CB 00:F6BB: 85 CA     STA ram_00CA
C - - - - - 0x0036CD 00:F6BD: C8        INY
C - - - - - 0x0036CE 00:F6BE: 84 C9     STY ram_00C9
C - - - - - 0x0036D0 00:F6C0: D0 05     BNE bra_F6C7
bra_F6C2:
C - - - - - 0x0036D2 00:F6C2: 85 B8     STA ram_00B8
C - - - - - 0x0036D4 00:F6C4: C8        INY
C - - - - - 0x0036D5 00:F6C5: 84 C9     STY ram_00C9
bra_F6C7:
C - - - - - 0x0036D7 00:F6C7: A6 B8     LDX ram_00B8
C - - - - - 0x0036D9 00:F6C9: 20 2E F8  JSR sub_F82E
C - - - - - 0x0036DC 00:F6CC: A4 C3     LDY ram_00C3
C - - - - - 0x0036DE 00:F6CE: B1 05     LDA (ram_0005),Y
C - - - - - 0x0036E0 00:F6D0: F0 3C     BEQ bra_F70E
C - - - - - 0x0036E2 00:F6D2: 20 76 F6  JSR sub_F676
C - - - - - 0x0036E5 00:F6D5: B1 05     LDA (ram_0005),Y
C - - - - - 0x0036E7 00:F6D7: AA        TAX
C - - - - - 0x0036E8 00:F6D8: 20 81 F6  JSR sub_F681
C - - - - - 0x0036EB 00:F6DB: C8        INY
C - - - - - 0x0036EC 00:F6DC: 84 C3     STY ram_00C3
C - - - - - 0x0036EE 00:F6DE: A9 8E     LDA #$8E
C - - - - - 0x0036F0 00:F6E0: 8D 03 03  STA ram_0303
C - - - - - 0x0036F3 00:F6E3: A5 B0     LDA ram_00B0
C - - - - - 0x0036F5 00:F6E5: 8D 01 03  STA ram_0301
C - - - - - 0x0036F8 00:F6E8: A5 B1     LDA ram_00B1
C - - - - - 0x0036FA 00:F6EA: 8D 02 03  STA ram_0302
C - - - - - 0x0036FD 00:F6ED: A5 B2     LDA ram_00B2
C - - - - - 0x0036FF 00:F6EF: 85 0F     STA ram_000F
C - - - - - 0x003701 00:F6F1: 20 4E F6  JSR sub_F64E
C - - - - - 0x003704 00:F6F4: A5 B2     LDA ram_00B2
C - - - - - 0x003706 00:F6F6: 20 BF EC  JSR sub_ECBF
C - - - - - 0x003709 00:F6F9: 85 B2     STA ram_00B2
sub_F6FB:
C - - - - - 0x00370B 00:F6FB: E6 B1     INC ram_00B1
C - - - - - 0x00370D 00:F6FD: A5 B1     LDA ram_00B1
C - - - - - 0x00370F 00:F6FF: C9 20     CMP #$20
C - - - - - 0x003711 00:F701: D0 0A     BNE bra_F70D_RTS
C - - - - - 0x003713 00:F703: A9 00     LDA #$00
C - - - - - 0x003715 00:F705: 85 B1     STA ram_00B1
C - - - - - 0x003717 00:F707: A5 B0     LDA ram_00B0
C - - - - - 0x003719 00:F709: 49 04     EOR #$04
C - - - - - 0x00371B 00:F70B: 85 B0     STA ram_00B0
bra_F70D_RTS:
C - - - - - 0x00371D 00:F70D: 60        RTS
bra_F70E:
C - - - - - 0x00371E 00:F70E: A5 C8     LDA ram_00C8
C - - - - - 0x003720 00:F710: F0 0C     BEQ bra_F71E
C - - - - - 0x003722 00:F712: A9 00     LDA #$00
C - - - - - 0x003724 00:F714: 85 C3     STA ram_00C3
C - - - - - 0x003726 00:F716: A5 CA     LDA ram_00CA
C - - - - - 0x003728 00:F718: F0 1F     BEQ bra_F739
C - - - - - 0x00372A 00:F71A: C6 CA     DEC ram_00CA
C - - - - - 0x00372C 00:F71C: 10 1B     BPL bra_F739
bra_F71E:
loc_F71E:
C D 3 - - - 0x00372E 00:F71E: A4 B2     LDY ram_00B2
C - - - - - 0x003730 00:F720: 20 C9 EC  JSR sub_ECC9
C - - - - - 0x003733 00:F723: D0 0C     BNE bra_F731
C - - - - - 0x003735 00:F725: C8        INY
C - - - - - 0x003736 00:F726: C0 40     CPY #$40
C - - - - - 0x003738 00:F728: D0 02     BNE bra_F72C
- - - - - - 0x00373A 00:F72A: A0 00     LDY #$00
bra_F72C:
C - - - - - 0x00373C 00:F72C: 20 C9 EC  JSR sub_ECC9
C - - - - - 0x00373F 00:F72F: F0 0D     BEQ bra_F73E
bra_F731:
C - - - - - 0x003741 00:F731: A9 00     LDA #$00
C - - - - - 0x003743 00:F733: 85 B8     STA ram_00B8
C - - - - - 0x003745 00:F735: 85 C3     STA ram_00C3
C - - - - - 0x003747 00:F737: 85 C8     STA ram_00C8
bra_F739:
C - - - - - 0x003749 00:F739: A9 01     LDA #$01
C - - - - - 0x00374B 00:F73B: 85 BE     STA ram_00BE
C - - - - - 0x00374D 00:F73D: 60        RTS
bra_F73E:
C - - - - - 0x00374E 00:F73E: A9 00     LDA #$00
C - - - - - 0x003750 00:F740: 85 C3     STA ram_00C3
C - - - - - 0x003752 00:F742: 85 BE     STA ram_00BE
C - - - - - 0x003754 00:F744: 85 BD     STA ram_00BD
C - - - - - 0x003756 00:F746: 85 C8     STA ram_00C8
C - - - - - 0x003758 00:F748: A5 BA     LDA ram_00BA
C - - - - - 0x00375A 00:F74A: 85 B2     STA ram_00B2
C - - - - - 0x00375C 00:F74C: A5 BB     LDA ram_00BB
C - - - - - 0x00375E 00:F74E: 85 B0     STA ram_00B0
C - - - - - 0x003760 00:F750: A5 BC     LDA ram_00BC
C - - - - - 0x003762 00:F752: 85 B1     STA ram_00B1
C - - - - - 0x003764 00:F754: 60        RTS



sub_F755:
C - - - - - 0x003765 00:F755: A5 B4     LDA ram_00B4
C - - - - - 0x003767 00:F757: D0 3F     BNE bra_F798_RTS
C - - - - - 0x003769 00:F759: A5 C0     LDA ram_00C0
C - - - - - 0x00376B 00:F75B: F0 3B     BEQ bra_F798_RTS
C - - - - - 0x00376D 00:F75D: A2 15     LDX #$15
bra_F75F_loop:
C - - - - - 0x00376F 00:F75F: 20 2E F8  JSR sub_F82E
C - - - - - 0x003772 00:F762: A0 00     LDY #$00
C - - - - - 0x003774 00:F764: B1 05     LDA (ram_0005),Y
C - - - - - 0x003776 00:F766: 85 03     STA ram_0003
C - - - - - 0x003778 00:F768: A9 0F     LDA #$0F
C - - - - - 0x00377A 00:F76A: 38        SEC
C - - - - - 0x00377B 00:F76B: E5 03     SBC ram_0003
C - - - - - 0x00377D 00:F76D: A8        TAY
C - - - - - 0x00377E 00:F76E: 86 04     STX ram_0004
C - - - - - 0x003780 00:F770: A6 B3     LDX ram_00B3
C - - - - - 0x003782 00:F772: B1 05     LDA (ram_0005),Y
C - - - - - 0x003784 00:F774: DD 40 05  CMP ram_0540,X
C - - - - - 0x003787 00:F777: D0 19     BNE bra_F792
C - - - - - 0x003789 00:F779: 88        DEY
C - - - - - 0x00378A 00:F77A: 88        DEY
C - - - - - 0x00378B 00:F77B: 88        DEY
C - - - - - 0x00378C 00:F77C: B1 05     LDA (ram_0005),Y
C - - - - - 0x00378E 00:F77E: DD 80 04  CMP ram_0480,X
C - - - - - 0x003791 00:F781: D0 0F     BNE bra_F792
C - - - - - 0x003793 00:F783: 88        DEY
C - - - - - 0x003794 00:F784: 88        DEY
C - - - - - 0x003795 00:F785: B1 05     LDA (ram_0005),Y
C - - - - - 0x003797 00:F787: DD 00 04  CMP ram_0400,X
C - - - - - 0x00379A 00:F78A: D0 06     BNE bra_F792
C - - - - - 0x00379C 00:F78C: A5 04     LDA ram_0004
C - - - - - 0x00379E 00:F78E: 85 C7     STA ram_00C7
C - - - - - 0x0037A0 00:F790: 10 07     BPL bra_F799
bra_F792:
C - - - - - 0x0037A2 00:F792: C6 04     DEC ram_0004
C - - - - - 0x0037A4 00:F794: A6 04     LDX ram_0004
C - - - - - 0x0037A6 00:F796: 10 C7     BPL bra_F75F_loop
bra_F798_RTS:
C - - - - - 0x0037A8 00:F798: 60        RTS
bra_F799:
C - - - - - 0x0037A9 00:F799: A5 C4     LDA ram_00C4
C - - - - - 0x0037AB 00:F79B: D0 0F     BNE bra_F7AC
C - - - - - 0x0037AD 00:F79D: A5 C7     LDA ram_00C7
C - - - - - 0x0037AF 00:F79F: 85 C6     STA ram_00C6
C - - - - - 0x0037B1 00:F7A1: A6 B7     LDX ram_00B7
C - - - - - 0x0037B3 00:F7A3: 20 21 F8  JSR sub_F821
C - - - - - 0x0037B6 00:F7A6: A9 3D     LDA #$3D
C - - - - - 0x0037B8 00:F7A8: 85 C5     STA ram_00C5
C - - - - - 0x0037BA 00:F7AA: E6 C4     INC ram_00C4
bra_F7AC:
C - - - - - 0x0037BC 00:F7AC: A5 C7     LDA ram_00C7
C - - - - - 0x0037BE 00:F7AE: C5 C6     CMP ram_00C6
C - - - - - 0x0037C0 00:F7B0: D0 17     BNE bra_F7C9
C - - - - - 0x0037C2 00:F7B2: A5 C6     LDA ram_00C6
C - - - - - 0x0037C4 00:F7B4: D0 E2     BNE bra_F798_RTS
C - - - - - 0x0037C6 00:F7B6: E6 C5     INC ram_00C5
C - - - - - 0x0037C8 00:F7B8: A5 C5     LDA ram_00C5
C - - - - - 0x0037CA 00:F7BA: C9 7F     CMP #$7F
C - - - - - 0x0037CC 00:F7BC: 90 3C     BCC bra_F7FA
C - - - - - 0x0037CE 00:F7BE: A6 B7     LDX ram_00B7
C - - - - - 0x0037D0 00:F7C0: 9D E0 05  STA ram_05E0,X
C - - - - - 0x0037D3 00:F7C3: E8        INX
C - - - - - 0x0037D4 00:F7C4: 20 21 F8  JSR sub_F821
C - - - - - 0x0037D7 00:F7C7: F0 31     BEQ bra_F7FA
bra_F7C9:
C - - - - - 0x0037D9 00:F7C9: A5 C6     LDA ram_00C6
C - - - - - 0x0037DB 00:F7CB: D0 1A     BNE bra_F7E7
C - - - - - 0x0037DD 00:F7CD: A6 B7     LDX ram_00B7
C - - - - - 0x0037DF 00:F7CF: A5 C5     LDA ram_00C5
C - - - - - 0x0037E1 00:F7D1: 9D E0 05  STA ram_05E0,X
C - - - - - 0x0037E4 00:F7D4: E8        INX
C - - - - - 0x0037E5 00:F7D5: 86 B7     STX ram_00B7
C - - - - - 0x0037E7 00:F7D7: A5 C7     LDA ram_00C7
C - - - - - 0x0037E9 00:F7D9: C9 11     CMP #$11
C - - - - - 0x0037EB 00:F7DB: B0 2C     BCS bra_F809
C - - - - - 0x0037ED 00:F7DD: A5 C7     LDA ram_00C7
C - - - - - 0x0037EF 00:F7DF: 9D E0 05  STA ram_05E0,X
C - - - - - 0x0037F2 00:F7E2: 20 26 F8  JSR sub_F826
C - - - - - 0x0037F5 00:F7E5: F0 05     BEQ bra_F7EC
bra_F7E7:
C - - - - - 0x0037F7 00:F7E7: A6 B7     LDX ram_00B7
C - - - - - 0x0037F9 00:F7E9: 20 21 F8  JSR sub_F821
bra_F7EC:
C - - - - - 0x0037FC 00:F7EC: A5 C7     LDA ram_00C7
C - - - - - 0x0037FE 00:F7EE: 85 C6     STA ram_00C6
C - - - - - 0x003800 00:F7F0: C9 09     CMP #$09
C - - - - - 0x003802 00:F7F2: D0 06     BNE bra_F7FA
C - - - - - 0x003804 00:F7F4: A9 02     LDA #$02
C - - - - - 0x003806 00:F7F6: 85 BF     STA ram_00BF
C - - - - - 0x003808 00:F7F8: 85 49     STA ram_0049
bra_F7FA:
C - - - - - 0x00380A 00:F7FA: A5 B7     LDA ram_00B7
C - - - - - 0x00380C 00:F7FC: C9 ED     CMP #$ED
C - - - - - 0x00380E 00:F7FE: 90 08     BCC bra_F808_RTS
C - - - - - 0x003810 00:F800: A5 C1     LDA ram_00C1
C - - - - - 0x003812 00:F802: D0 04     BNE bra_F808_RTS
C - - - - - 0x003814 00:F804: A9 01     LDA #$01
C - - - - - 0x003816 00:F806: 85 C1     STA ram_00C1
bra_F808_RTS:
C - - - - - 0x003818 00:F808: 60        RTS
bra_F809:
C - - - - - 0x003819 00:F809: 29 0F     AND #$0F
C - - - - - 0x00381B 00:F80B: AA        TAX
C - - - - - 0x00381C 00:F80C: CA        DEX
C - - - - - 0x00381D 00:F80D: 20 39 F8  JSR sub_F839
C - - - - - 0x003820 00:F810: A0 00     LDY #$00
bra_F812_loop:
C - - - - - 0x003822 00:F812: A6 B7     LDX ram_00B7
C - - - - - 0x003824 00:F814: B1 07     LDA (ram_0007),Y
C - - - - - 0x003826 00:F816: F0 D4     BEQ bra_F7EC
C - - - - - 0x003828 00:F818: 9D E0 05  STA ram_05E0,X
C - - - - - 0x00382B 00:F81B: E8        INX
C - - - - - 0x00382C 00:F81C: 86 B7     STX ram_00B7
C - - - - - 0x00382E 00:F81E: C8        INY
C - - - - - 0x00382F 00:F81F: D0 F1     BNE bra_F812_loop
sub_F821:
C - - - - - 0x003831 00:F821: A9 40     LDA #$40
C - - - - - 0x003833 00:F823: 9D E0 05  STA ram_05E0,X
sub_F826:
C - - - - - 0x003836 00:F826: E8        INX
C - - - - - 0x003837 00:F827: 86 B7     STX ram_00B7
C - - - - - 0x003839 00:F829: A9 00     LDA #$00
C - - - - - 0x00383B 00:F82B: 85 C5     STA ram_00C5
C - - - - - 0x00383D 00:F82D: 60        RTS



sub_F82E:
C - - - - - 0x00383E 00:F82E: BD 63 F0  LDA tbl_F063_lo,X
C - - - - - 0x003841 00:F831: 85 05     STA ram_0005
C - - - - - 0x003843 00:F833: BD 87 F0  LDA tbl_F087_hi,X
C - - - - - 0x003846 00:F836: 85 06     STA ram_0006
C - - - - - 0x003848 00:F838: 60        RTS



sub_F839:
C - - - - - 0x003849 00:F839: BD F5 F4  LDA tbl_F4F5_lo,X
C - - - - - 0x00384C 00:F83C: 85 07     STA ram_0007
C - - - - - 0x00384E 00:F83E: BD FA F4  LDA tbl_F4FA_hi,X
C - - - - - 0x003851 00:F841: 85 08     STA ram_0008
C - - - - - 0x003853 00:F843: 60        RTS



sub_F844:
C - - - - - 0x003854 00:F844: A9 C0     LDA #$C0
C - - - - - 0x003856 00:F846: 8D 17 40  STA $4017
C - - - - - 0x003859 00:F849: 20 D4 F8  JSR sub_F8D4
C - - - - - 0x00385C 00:F84C: 20 74 FA  JSR sub_FA74
C - - - - - 0x00385F 00:F84F: 20 3D FC  JSR sub_FC3D
C - - - - - 0x003862 00:F852: 20 8D FC  JSR sub_FC8D
C - - - - - 0x003865 00:F855: A9 00     LDA #$00
C - - - - - 0x003867 00:F857: 85 FF     STA ram_00FF
C - - - - - 0x003869 00:F859: 85 FE     STA ram_00FE
C - - - - - 0x00386B 00:F85B: 85 FD     STA ram_00FD
C - - - - - 0x00386D 00:F85D: 85 FB     STA ram_00FB
C - - - - - 0x00386F 00:F85F: AD FF 07  LDA ram_07FF
C - - - - - 0x003872 00:F862: F0 06     BEQ bra_F86A_RTS
C - - - - - 0x003874 00:F864: 8D 11 40  STA $4011
C - - - - - 0x003877 00:F867: CE FF 07  DEC ram_07FF
bra_F86A_RTS:
C - - - - - 0x00387A 00:F86A: 60        RTS



loc_F86B:
sub_F86B:
C D 3 - - - 0x00387B 00:F86B: 8E 00 40  STX $4000
C - - - - - 0x00387E 00:F86E: 8C 01 40  STY $4001
sub_F871:
C - - - - - 0x003881 00:F871: A2 00     LDX #$00
bra_F873:
C - - - - - 0x003883 00:F873: A8        TAY
C - - - - - 0x003884 00:F874: B9 01 FF  LDA tbl_FF00 + $01,Y
C - - - - - 0x003887 00:F877: F0 0B     BEQ bra_F884_RTS
C - - - - - 0x003889 00:F879: 9D 02 40  STA $4002,X
C - - - - - 0x00388C 00:F87C: B9 00 FF  LDA tbl_FF00,Y
C - - - - - 0x00388F 00:F87F: 09 08     ORA #$08
C - - - - - 0x003891 00:F881: 9D 03 40  STA $4003,X
bra_F884_RTS:
C - - - - - 0x003894 00:F884: 60        RTS



sub_F885:
C - - - - - 0x003895 00:F885: A2 04     LDX #$04
C - - - - - 0x003897 00:F887: D0 EA     BNE bra_F873    ; jmp



sub_F889:
C - - - - - 0x003899 00:F889: A2 08     LDX #$08
C - - - - - 0x00389B 00:F88B: D0 E6     BNE bra_F873    ; jmp



bra_F88D:
C - - - - - 0x00389D 00:F88D: 84 F0     STY ram_00F0
C - - - - - 0x00389F 00:F88F: A9 01     LDA #$01
C - - - - - 0x0038A1 00:F891: 85 F5     STA ram_00F5
C - - - - - 0x0038A3 00:F893: A2 80     LDX #$80
C - - - - - 0x0038A5 00:F895: A0 9C     LDY #$9C
C - - - - - 0x0038A7 00:F897: A9 04     LDA #$04
C - - - - - 0x0038A9 00:F899: 4C 6B F8  JMP loc_F86B
bra_F89C:
C - - - - - 0x0038AC 00:F89C: 84 F0     STY ram_00F0
C - - - - - 0x0038AE 00:F89E: A9 10     LDA #$10
C - - - - - 0x0038B0 00:F8A0: 85 F5     STA ram_00F5
C - - - - - 0x0038B2 00:F8A2: A2 85     LDX #$85
C - - - - - 0x0038B4 00:F8A4: A0 85     LDY #$85
C - - - - - 0x0038B6 00:F8A6: A9 30     LDA #$30
C - - - - - 0x0038B8 00:F8A8: 20 6B F8  JSR sub_F86B
bra_F8AB:
C - - - - - 0x0038BB 00:F8AB: 4C 3A F9  JMP loc_F93A
bra_F8AE:
- - - - - - 0x0038BE 00:F8AE: 84 F0     STY ram_00F0
- - - - - - 0x0038C0 00:F8B0: A9 09     LDA #$09
- - - - - - 0x0038C2 00:F8B2: 85 F5     STA ram_00F5
- - - - - - 0x0038C4 00:F8B4: A9 04     LDA #$04
- - - - - - 0x0038C6 00:F8B6: 20 71 F8  JSR sub_F871
bra_F8B9:
- - - - - - 0x0038C9 00:F8B9: A5 F5     LDA ram_00F5
- - - - - - 0x0038CB 00:F8BB: C9 04     CMP #$04
- - - - - - 0x0038CD 00:F8BD: D0 03     BNE bra_F8C2
- - - - - - 0x0038CF 00:F8BF: 4C 3E F9  JMP loc_F93E
bra_F8C2:
- - - - - - 0x0038D2 00:F8C2: A0 84     LDY #$84
- - - - - - 0x0038D4 00:F8C4: C9 07     CMP #$07
- - - - - - 0x0038D6 00:F8C6: B0 02     BCS bra_F8CA
- - - - - - 0x0038D8 00:F8C8: A0 8B     LDY #$8B
bra_F8CA:
- - - - - - 0x0038DA 00:F8CA: 8C 01 40  STY $4001
- - - - - - 0x0038DD 00:F8CD: 09 90     ORA #$90
- - - - - - 0x0038DF 00:F8CF: 8D 00 40  STA $4000
- - - - - - 0x0038E2 00:F8D2: D0 66     BNE bra_F93A    ; jmp



sub_F8D4:
C - - - - - 0x0038E4 00:F8D4: A4 F4     LDY ram_00F4
C - - - - - 0x0038E6 00:F8D6: D0 35     BNE bra_F90D_RTS
C - - - - - 0x0038E8 00:F8D8: A4 FF     LDY ram_00FF
C - - - - - 0x0038EA 00:F8DA: A5 F0     LDA ram_00F0
C - - - - - 0x0038EC 00:F8DC: 46 FF     LSR ram_00FF
C - - - - - 0x0038EE 00:F8DE: B0 AD     BCS bra_F88D
C - - - - - 0x0038F0 00:F8E0: 4A        LSR
C - - - - - 0x0038F1 00:F8E1: B0 57     BCS bra_F93A
C - - - - - 0x0038F3 00:F8E3: 46 FF     LSR ram_00FF
C - - - - - 0x0038F5 00:F8E5: B0 B5     BCS bra_F89C
C - - - - - 0x0038F7 00:F8E7: 4A        LSR
C - - - - - 0x0038F8 00:F8E8: B0 C1     BCS bra_F8AB
C - - - - - 0x0038FA 00:F8EA: 4A        LSR
C - - - - - 0x0038FB 00:F8EB: B0 CC     BCS bra_F8B9
C - - - - - 0x0038FD 00:F8ED: 46 FF     LSR ram_00FF
C - - - - - 0x0038FF 00:F8EF: B0 BD     BCS bra_F8AE
C - - - - - 0x003901 00:F8F1: 46 FF     LSR ram_00FF
C - - - - - 0x003903 00:F8F3: B0 19     BCS bra_F90E
C - - - - - 0x003905 00:F8F5: 4A        LSR
C - - - - - 0x003906 00:F8F6: B0 29     BCS bra_F921
C - - - - - 0x003908 00:F8F8: 46 FF     LSR ram_00FF
C - - - - - 0x00390A 00:F8FA: B0 4C     BCS bra_F948
C - - - - - 0x00390C 00:F8FC: 4A        LSR
C - - - - - 0x00390D 00:F8FD: B0 5C     BCS bra_F95B
C - - - - - 0x00390F 00:F8FF: 46 FF     LSR ram_00FF
C - - - - - 0x003911 00:F901: B0 6A     BCS bra_F96D
C - - - - - 0x003913 00:F903: 4A        LSR
C - - - - - 0x003914 00:F904: B0 6F     BCS bra_F975
C - - - - - 0x003916 00:F906: 46 FF     LSR ram_00FF
C - - - - - 0x003918 00:F908: B0 73     BCS bra_F97D
C - - - - - 0x00391A 00:F90A: 4A        LSR
C - - - - - 0x00391B 00:F90B: B0 7D     BCS bra_F98A
bra_F90D_RTS:
C - - - - - 0x00391D 00:F90D: 60        RTS
bra_F90E:
C - - - - - 0x00391E 00:F90E: 84 F0     STY ram_00F0
C - - - - - 0x003920 00:F910: A9 06     LDA #$06
C - - - - - 0x003922 00:F912: 85 F5     STA ram_00F5
C - - - - - 0x003924 00:F914: A2 9C     LDX #$9C
C - - - - - 0x003926 00:F916: A9 3C     LDA #$3C
C - - - - - 0x003928 00:F918: 20 6B F8  JSR sub_F86B
C - - - - - 0x00392B 00:F91B: A9 03     LDA #$03
C - - - - - 0x00392D 00:F91D: 85 F6     STA ram_00F6
C - - - - - 0x00392F 00:F91F: D0 0A     BNE bra_F92B
bra_F921:
C - - - - - 0x003931 00:F921: C6 F6     DEC ram_00F6
C - - - - - 0x003933 00:F923: F0 0C     BEQ bra_F931
C - - - - - 0x003935 00:F925: A5 F6     LDA ram_00F6
C - - - - - 0x003937 00:F927: C9 03     CMP #$03
C - - - - - 0x003939 00:F929: D0 E2     BNE bra_F90D_RTS
bra_F92B:
C - - - - - 0x00393B 00:F92B: A9 9A     LDA #$9A
bra_F92D:
C - - - - - 0x00393D 00:F92D: 8D 01 40  STA $4001
C - - - - - 0x003940 00:F930: 60        RTS
bra_F931:
C - - - - - 0x003941 00:F931: A9 93     LDA #$93
bra_F933:
C - - - - - 0x003943 00:F933: 8D 01 40  STA $4001
C - - - - - 0x003946 00:F936: A9 06     LDA #$06
C - - - - - 0x003948 00:F938: 85 F6     STA ram_00F6
bra_F93A:
loc_F93A:
C D 3 - - - 0x00394A 00:F93A: C6 F5     DEC ram_00F5
C - - - - - 0x00394C 00:F93C: D0 09     BNE bra_F947_RTS
loc_F93E:
C - - - - - 0x00394E 00:F93E: A9 00     LDA #$00
C - - - - - 0x003950 00:F940: 85 F0     STA ram_00F0
loc_F942:
C D 3 - - - 0x003952 00:F942: A9 90     LDA #$90
C - - - - - 0x003954 00:F944: 8D 00 40  STA $4000
bra_F947_RTS:
C - - - - - 0x003957 00:F947: 60        RTS
bra_F948:
C - - - - - 0x003958 00:F948: 84 F0     STY ram_00F0
C - - - - - 0x00395A 00:F94A: A9 03     LDA #$03
C - - - - - 0x00395C 00:F94C: 85 F5     STA ram_00F5
bra_F94E:
C - - - - - 0x00395E 00:F94E: A2 9C     LDX #$9C
C - - - - - 0x003960 00:F950: A9 00     LDA #$00
C - - - - - 0x003962 00:F952: 20 6B F8  JSR sub_F86B
C - - - - - 0x003965 00:F955: A9 04     LDA #$04
C - - - - - 0x003967 00:F957: 85 F6     STA ram_00F6
C - - - - - 0x003969 00:F959: D0 0A     BNE bra_F965
bra_F95B:
C - - - - - 0x00396B 00:F95B: C6 F6     DEC ram_00F6
C - - - - - 0x00396D 00:F95D: F0 0A     BEQ bra_F969
bra_F95F:
C - - - - - 0x00396F 00:F95F: A5 F6     LDA ram_00F6
C - - - - - 0x003971 00:F961: C9 04     CMP #$04
C - - - - - 0x003973 00:F963: D0 A8     BNE bra_F90D_RTS
bra_F965:
C - - - - - 0x003975 00:F965: A9 9A     LDA #$9A
C - - - - - 0x003977 00:F967: D0 C4     BNE bra_F92D    ; jmp
bra_F969:
C - - - - - 0x003979 00:F969: A9 93     LDA #$93
C - - - - - 0x00397B 00:F96B: D0 C6     BNE bra_F933    ; jmp
bra_F96D:
C - - - - - 0x00397D 00:F96D: 84 F0     STY ram_00F0
C - - - - - 0x00397F 00:F96F: A9 02     LDA #$02
C - - - - - 0x003981 00:F971: 85 F5     STA ram_00F5
C - - - - - 0x003983 00:F973: D0 D9     BNE bra_F94E    ; jmp
bra_F975:
C - - - - - 0x003985 00:F975: C6 F6     DEC ram_00F6
C - - - - - 0x003987 00:F977: D0 E6     BNE bra_F95F
C - - - - - 0x003989 00:F979: A9 94     LDA #$94
C - - - - - 0x00398B 00:F97B: D0 B6     BNE bra_F933    ; jmp
bra_F97D:
C - - - - - 0x00398D 00:F97D: 84 F0     STY ram_00F0
C - - - - - 0x00398F 00:F97F: A9 21     LDA #$21
C - - - - - 0x003991 00:F981: 85 F5     STA ram_00F5
C - - - - - 0x003993 00:F983: A0 BC     LDY #$BC
C - - - - - 0x003995 00:F985: A9 30     LDA #$30
C - - - - - 0x003997 00:F987: 20 6B F8  JSR sub_F86B
bra_F98A:
C - - - - - 0x00399A 00:F98A: A5 F5     LDA ram_00F5
C - - - - - 0x00399C 00:F98C: C9 15     CMP #$15
C - - - - - 0x00399E 00:F98E: D0 05     BNE bra_F995
C - - - - - 0x0039A0 00:F990: A0 7F     LDY #$7F
C - - - - - 0x0039A2 00:F992: 8C 01 40  STY $4001
bra_F995:
C - - - - - 0x0039A5 00:F995: 4A        LSR
C - - - - - 0x0039A6 00:F996: A8        TAY
C - - - - - 0x0039A7 00:F997: B9 A2 F9  LDA tbl_F9A3 - $01,Y
C - - - - - 0x0039AA 00:F99A: B0 02     BCS bra_F99E
C - - - - - 0x0039AC 00:F99C: A9 13     LDA #$13
bra_F99E:
C - - - - - 0x0039AE 00:F99E: 8D 00 40  STA $4000
C - - - - - 0x0039B1 00:F9A1: D0 97     BNE bra_F93A    ; jmp



tbl_F9A3:
- D 3 - - - 0x0039B3 00:F9A3: 91        .byte $91   ; 
- D 3 - - - 0x0039B4 00:F9A4: 92        .byte $92   ; 
- D 3 - - - 0x0039B5 00:F9A5: 93        .byte $93   ; 
- D 3 - - - 0x0039B6 00:F9A6: 94        .byte $94   ; 
- D 3 - - - 0x0039B7 00:F9A7: 95        .byte $95   ; 
- D 3 - - - 0x0039B8 00:F9A8: 96        .byte $96   ; 
- D 3 - - - 0x0039B9 00:F9A9: 97        .byte $97   ; 
- D 3 - - - 0x0039BA 00:F9AA: 98        .byte $98   ; 
- D 3 - - - 0x0039BB 00:F9AB: 9A        .byte $9A   ; 
- D 3 - - - 0x0039BC 00:F9AC: 9C        .byte $9C   ; 
- D 3 - - - 0x0039BD 00:F9AD: 9F        .byte $9F   ; 
- D 3 - - - 0x0039BE 00:F9AE: 9C        .byte $9C   ; 
- D 3 - - - 0x0039BF 00:F9AF: 9A        .byte $9A   ; 
- D 3 - - - 0x0039C0 00:F9B0: 98        .byte $98   ; 
- D 3 - - - 0x0039C1 00:F9B1: 96        .byte $96   ; 
- D 3 - - - 0x0039C2 00:F9B2: 94        .byte $94   ; 



tbl_F9B3:
- D 3 - - - 0x0039C3 00:F9B3: 00        .byte $00   ; 
- D 3 - - - 0x0039C4 00:F9B4: 02        .byte $02   ; 
- D 3 - - - 0x0039C5 00:F9B5: 04        .byte $04   ; 
- D 3 - - - 0x0039C6 00:F9B6: 02        .byte $02   ; 
- D 3 - - - 0x0039C7 00:F9B7: 00        .byte $00   ; 
- D 3 - - - 0x0039C8 00:F9B8: FE        .byte $FE   ; 



tbl_F9B9:
- D 3 - - - 0x0039C9 00:F9B9: 94        .byte $94   ; 
- D 3 - - - 0x0039CA 00:F9BA: 96        .byte $96   ; 
- D 3 - - - 0x0039CB 00:F9BB: 94        .byte $94   ; 
- D 3 - - - 0x0039CC 00:F9BC: 93        .byte $93   ; 
- D 3 - - - 0x0039CD 00:F9BD: 92        .byte $92   ; 
- D 3 - - - 0x0039CE 00:F9BE: 91        .byte $91   ; 



tbl_F9BF:
- D 3 - - - 0x0039CF 00:F9BF: 1C        .byte $1C   ; 
- D 3 - - - 0x0039D0 00:F9C0: 54        .byte $54   ; 
- D 3 - - - 0x0039D1 00:F9C1: 16        .byte $16   ; 
- D 3 - - - 0x0039D2 00:F9C2: 52        .byte $52   ; 
- D 3 - - - 0x0039D3 00:F9C3: 12        .byte $12   ; 



tbl_F9C4:
- D 3 - - - 0x0039D4 00:F9C4: 18        .byte $18   ; 
- D 3 - - - 0x0039D5 00:F9C5: 18        .byte $18   ; 
- D 3 - - - 0x0039D6 00:F9C6: 20        .byte $20   ; 
- D 3 - - - 0x0039D7 00:F9C7: 28        .byte $28   ; 
- D 3 - - - 0x0039D8 00:F9C8: 30        .byte $30   ; 
- D 3 - - - 0x0039D9 00:F9C9: 32        .byte $32   ; 
- D 3 - - - 0x0039DA 00:F9CA: 34        .byte $34   ; 
- D 3 - - - 0x0039DB 00:F9CB: 36        .byte $36   ; 
- D 3 - - - 0x0039DC 00:F9CC: 38        .byte $38   ; 
- D 3 - - - 0x0039DD 00:F9CD: 39        .byte $39   ; 
- D 3 - - - 0x0039DE 00:F9CE: 3A        .byte $3A   ; 
- D 3 - - - 0x0039DF 00:F9CF: 3B        .byte $3B   ; 
- D 3 - - - 0x0039E0 00:F9D0: 3C        .byte $3C   ; 
- D 3 - - - 0x0039E1 00:F9D1: 3D        .byte $3D   ; 
- D 3 - - - 0x0039E2 00:F9D2: 3E        .byte $3E   ; 
- D 3 - - - 0x0039E3 00:F9D3: 3F        .byte $3F   ; 
- D 3 - - - 0x0039E4 00:F9D4: 40        .byte $40   ; 
- D 3 - - - 0x0039E5 00:F9D5: 41        .byte $41   ; 
- D 3 - - - 0x0039E6 00:F9D6: 42        .byte $42   ; 
- D 3 - - - 0x0039E7 00:F9D7: 43        .byte $43   ; 
- D 3 - - - 0x0039E8 00:F9D8: 44        .byte $44   ; 
- D 3 - - - 0x0039E9 00:F9D9: 45        .byte $45   ; 
- D 3 - - - 0x0039EA 00:F9DA: 46        .byte $46   ; 
- D 3 - - - 0x0039EB 00:F9DB: 47        .byte $47   ; 
- D 3 - - - 0x0039EC 00:F9DC: 48        .byte $48   ; 
- D 3 - - - 0x0039ED 00:F9DD: 49        .byte $49   ; 
- D 3 - - - 0x0039EE 00:F9DE: 4A        .byte $4A   ; 
- D 3 - - - 0x0039EF 00:F9DF: 4B        .byte $4B   ; 
- D 3 - - - 0x0039F0 00:F9E0: 4C        .byte $4C   ; 
- D 3 - - - 0x0039F1 00:F9E1: 4D        .byte $4D   ; 
- D 3 - - - 0x0039F2 00:F9E2: 4E        .byte $4E   ; 
- D 3 - - - 0x0039F3 00:F9E3: 4F        .byte $4F   ; 
- D 3 - - - 0x0039F4 00:F9E4: 50        .byte $50   ; 
- D 3 - - - 0x0039F5 00:F9E5: 51        .byte $51   ; 
- D 3 - - - 0x0039F6 00:F9E6: 52        .byte $52   ; 
- D 3 - - - 0x0039F7 00:F9E7: 53        .byte $53   ; 
- D 3 - - - 0x0039F8 00:F9E8: 54        .byte $54   ; 
- D 3 - - - 0x0039F9 00:F9E9: 55        .byte $55   ; 
- D 3 - - - 0x0039FA 00:F9EA: 56        .byte $56   ; 
- D 3 - - - 0x0039FB 00:F9EB: 57        .byte $57   ; 
- D 3 - - - 0x0039FC 00:F9EC: 58        .byte $58   ; 
- D 3 - - - 0x0039FD 00:F9ED: 59        .byte $59   ; 
- D 3 - - - 0x0039FE 00:F9EE: 5A        .byte $5A   ; 
- D 3 - - - 0x0039FF 00:F9EF: 5B        .byte $5B   ; 
- D 3 - - - 0x003A00 00:F9F0: 5C        .byte $5C   ; 
- D 3 - - - 0x003A01 00:F9F1: 5D        .byte $5D   ; 
- D 3 - - - 0x003A02 00:F9F2: 5E        .byte $5E   ; 
- D 3 - - - 0x003A03 00:F9F3: 5F        .byte $5F   ; 



tbl_F9F4:
- D 3 - - - 0x003A04 00:F9F4: 70        .byte $70   ; 
- D 3 - - - 0x003A05 00:F9F5: 05        .byte $05   ; 
- D 3 - - - 0x003A06 00:F9F6: 04        .byte $04   ; 
- D 3 - - - 0x003A07 00:F9F7: 03        .byte $03   ; 
- D 3 - - - 0x003A08 00:F9F8: 02        .byte $02   ; 
- D 3 - - - 0x003A09 00:F9F9: 02        .byte $02   ; 
- D 3 - - - 0x003A0A 00:F9FA: 02        .byte $02   ; 
- D 3 - - - 0x003A0B 00:F9FB: 02        .byte $02   ; 
- D 3 - - - 0x003A0C 00:F9FC: 02        .byte $02   ; 
- D 3 - - - 0x003A0D 00:F9FD: 02        .byte $02   ; 
- D 3 - - - 0x003A0E 00:F9FE: 02        .byte $02   ; 
- D 3 - - - 0x003A0F 00:F9FF: 02        .byte $02   ; 
- D 3 - - - 0x003A10 00:FA00: 02        .byte $02   ; 
- D 3 - - - 0x003A11 00:FA01: 02        .byte $02   ; 
- D 3 - - - 0x003A12 00:FA02: 02        .byte $02   ; 
- D 3 - - - 0x003A13 00:FA03: 02        .byte $02   ; 
- D 3 - - - 0x003A14 00:FA04: 02        .byte $02   ; 
- D 3 - - - 0x003A15 00:FA05: 02        .byte $02   ; 
- D 3 - - - 0x003A16 00:FA06: 02        .byte $02   ; 
- D 3 - - - 0x003A17 00:FA07: 02        .byte $02   ; 
- D 3 - - - 0x003A18 00:FA08: 02        .byte $02   ; 
- D 3 - - - 0x003A19 00:FA09: 02        .byte $02   ; 
- D 3 - - - 0x003A1A 00:FA0A: 02        .byte $02   ; 
- D 3 - - - 0x003A1B 00:FA0B: 02        .byte $02   ; 
- D 3 - - - 0x003A1C 00:FA0C: 02        .byte $02   ; 
- D 3 - - - 0x003A1D 00:FA0D: 02        .byte $02   ; 
- D 3 - - - 0x003A1E 00:FA0E: 02        .byte $02   ; 
- D 3 - - - 0x003A1F 00:FA0F: 02        .byte $02   ; 
- D 3 - - - 0x003A20 00:FA10: 02        .byte $02   ; 
- D 3 - - - 0x003A21 00:FA11: 02        .byte $02   ; 
- D 3 - - - 0x003A22 00:FA12: 02        .byte $02   ; 
- D 3 - - - 0x003A23 00:FA13: 02        .byte $02   ; 
- D 3 - - - 0x003A24 00:FA14: 01        .byte $01   ; 
- D 3 - - - 0x003A25 00:FA15: 01        .byte $01   ; 
- D 3 - - - 0x003A26 00:FA16: 01        .byte $01   ; 
- D 3 - - - 0x003A27 00:FA17: 01        .byte $01   ; 
- D 3 - - - 0x003A28 00:FA18: 01        .byte $01   ; 
- D 3 - - - 0x003A29 00:FA19: 01        .byte $01   ; 
- D 3 - - - 0x003A2A 00:FA1A: 01        .byte $01   ; 
- D 3 - - - 0x003A2B 00:FA1B: 01        .byte $01   ; 
- D 3 - - - 0x003A2C 00:FA1C: 01        .byte $01   ; 
- D 3 - - - 0x003A2D 00:FA1D: 01        .byte $01   ; 
- D 3 - - - 0x003A2E 00:FA1E: 01        .byte $01   ; 
- D 3 - - - 0x003A2F 00:FA1F: 01        .byte $01   ; 
- D 3 - - - 0x003A30 00:FA20: 01        .byte $01   ; 
- D 3 - - - 0x003A31 00:FA21: 01        .byte $01   ; 
- D 3 - - - 0x003A32 00:FA22: 01        .byte $01   ; 
- D 3 - - - 0x003A33 00:FA23: 01        .byte $01   ; 



tbl_FA24:
- D 3 - - - 0x003A34 00:FA24: 00        .byte $00   ; 
- - - - - - 0x003A35 00:FA25: 94        .byte $94   ; 
- D 3 - - - 0x003A36 00:FA26: 96        .byte $96   ; 
- D 3 - - - 0x003A37 00:FA27: 98        .byte $98   ; 
- D 3 - - - 0x003A38 00:FA28: 9C        .byte $9C   ; 
- D 3 - - - 0x003A39 00:FA29: 80        .byte $80   ; 
- D 3 - - - 0x003A3A 00:FA2A: 80        .byte $80   ; 
- D 3 - - - 0x003A3B 00:FA2B: 80        .byte $80   ; 
- D 3 - - - 0x003A3C 00:FA2C: 80        .byte $80   ; 
- D 3 - - - 0x003A3D 00:FA2D: 80        .byte $80   ; 
- D 3 - - - 0x003A3E 00:FA2E: 9E        .byte $9E   ; 
- D 3 - - - 0x003A3F 00:FA2F: 9D        .byte $9D   ; 
- D 3 - - - 0x003A40 00:FA30: 9C        .byte $9C   ; 
- D 3 - - - 0x003A41 00:FA31: 9B        .byte $9B   ; 
- D 3 - - - 0x003A42 00:FA32: 9A        .byte $9A   ; 
- D 3 - - - 0x003A43 00:FA33: 99        .byte $99   ; 
- D 3 - - - 0x003A44 00:FA34: 98        .byte $98   ; 
- D 3 - - - 0x003A45 00:FA35: 97        .byte $97   ; 
- D 3 - - - 0x003A46 00:FA36: 96        .byte $96   ; 
- D 3 - - - 0x003A47 00:FA37: 95        .byte $95   ; 
- D 3 - - - 0x003A48 00:FA38: 95        .byte $95   ; 



tbl_FA39:
- D 3 - - - 0x003A49 00:FA39: 94        .byte $94   ; 
- - - - - - 0x003A4A 00:FA3A: 30        .byte $30   ; 
- D 3 - - - 0x003A4B 00:FA3B: 38        .byte $38   ; 
- D 3 - - - 0x003A4C 00:FA3C: 40        .byte $40   ; 
- D 3 - - - 0x003A4D 00:FA3D: 48        .byte $48   ; 
- D 3 - - - 0x003A4E 00:FA3E: 50        .byte $50   ; 
- D 3 - - - 0x003A4F 00:FA3F: 54        .byte $54   ; 
- D 3 - - - 0x003A50 00:FA40: 58        .byte $58   ; 
- D 3 - - - 0x003A51 00:FA41: 50        .byte $50   ; 
- D 3 - - - 0x003A52 00:FA42: 4C        .byte $4C   ; 
- D 3 - - - 0x003A53 00:FA43: 48        .byte $48   ; 
- D 3 - - - 0x003A54 00:FA44: 44        .byte $44   ; 
- D 3 - - - 0x003A55 00:FA45: 40        .byte $40   ; 
- D 3 - - - 0x003A56 00:FA46: 3C        .byte $3C   ; 
- D 3 - - - 0x003A57 00:FA47: 38        .byte $38   ; 
- D 3 - - - 0x003A58 00:FA48: 34        .byte $34   ; 
- D 3 - - - 0x003A59 00:FA49: 30        .byte $30   ; 
- D 3 - - - 0x003A5A 00:FA4A: 2C        .byte $2C   ; 
- D 3 - - - 0x003A5B 00:FA4B: 2A        .byte $2A   ; 
- D 3 - - - 0x003A5C 00:FA4C: 28        .byte $28   ; 
- D 3 - - - 0x003A5D 00:FA4D: 26        .byte $26   ; 
- D 3 - - - 0x003A5E 00:FA4E: 24        .byte $24   ; 



bra_FA4F:
C - - - - - 0x003A5F 00:FA4F: A0 15     LDY #$15
C - - - - - 0x003A61 00:FA51: 84 F1     STY ram_00F1
C - - - - - 0x003A63 00:FA53: D0 09     BNE bra_FA5E    ; jmp



bra_FA55:
C - - - - - 0x003A65 00:FA55: CE F3 07  DEC ram_07F3
C - - - - - 0x003A68 00:FA58: D0 35     BNE bra_FA8F
C - - - - - 0x003A6A 00:FA5A: C6 F1     DEC ram_00F1
C - - - - - 0x003A6C 00:FA5C: F0 31     BEQ bra_FA8F
bra_FA5E:
C - - - - - 0x003A6E 00:FA5E: BE 24 FA  LDX tbl_FA24,Y
C - - - - - 0x003A71 00:FA61: A9 01     LDA #$01
C - - - - - 0x003A73 00:FA63: E0 80     CPX #$80
C - - - - - 0x003A75 00:FA65: D0 02     BNE bra_FA69
C - - - - - 0x003A77 00:FA67: A9 02     LDA #$02
bra_FA69:
C - - - - - 0x003A79 00:FA69: 8D F3 07  STA ram_07F3
C - - - - - 0x003A7C 00:FA6C: B9 39 FA  LDA tbl_FA39,Y
C - - - - - 0x003A7F 00:FA6F: A0 7F     LDY #$7F
C - - - - - 0x003A81 00:FA71: 4C F7 FA  JMP loc_FAF7



sub_FA74:
C - - - - - 0x003A84 00:FA74: A4 FE     LDY ram_00FE
C - - - - - 0x003A86 00:FA76: D0 D7     BNE bra_FA4F
C - - - - - 0x003A88 00:FA78: A4 F1     LDY ram_00F1
C - - - - - 0x003A8A 00:FA7A: D0 D9     BNE bra_FA55
C - - - - - 0x003A8C 00:FA7C: A5 FC     LDA ram_00FC
C - - - - - 0x003A8E 00:FA7E: 29 7F     AND #$7F
C - - - - - 0x003A90 00:FA80: D0 13     BNE bra_FA95
C - - - - - 0x003A92 00:FA82: A5 F3     LDA ram_00F3
C - - - - - 0x003A94 00:FA84: F0 0E     BEQ bra_FA94_RTS
C - - - - - 0x003A96 00:FA86: A9 00     LDA #$00
C - - - - - 0x003A98 00:FA88: 85 F3     STA ram_00F3
C - - - - - 0x003A9A 00:FA8A: 85 F7     STA ram_00F7
C - - - - - 0x003A9C 00:FA8C: 8D F8 07  STA ram_07F8
bra_FA8F:
C - - - - - 0x003A9F 00:FA8F: A9 90     LDA #$90
C - - - - - 0x003AA1 00:FA91: 8D 04 40  STA $4004
bra_FA94_RTS:
C - - - - - 0x003AA4 00:FA94: 60        RTS
bra_FA95:
C - - - - - 0x003AA5 00:FA95: A4 F7     LDY ram_00F7
C - - - - - 0x003AA7 00:FA97: E6 F7     INC ram_00F7
C - - - - - 0x003AA9 00:FA99: CC F8 07  CPY ram_07F8
C - - - - - 0x003AAC 00:FA9C: D0 31     BNE bra_FACF
C - - - - - 0x003AAE 00:FA9E: C9 30     CMP #$30
C - - - - - 0x003AB0 00:FAA0: B0 1D     BCS bra_FABF
C - - - - - 0x003AB2 00:FAA2: 38        SEC
C - - - - - 0x003AB3 00:FAA3: E5 F3     SBC ram_00F3
C - - - - - 0x003AB5 00:FAA5: F0 1C     BEQ bra_FAC3
C - - - - - 0x003AB7 00:FAA7: B0 0A     BCS bra_FAB3
C - - - - - 0x003AB9 00:FAA9: C6 F3     DEC ram_00F3
C - - - - - 0x003ABB 00:FAAB: C9 F8     CMP #$F8
C - - - - - 0x003ABD 00:FAAD: B0 0C     BCS bra_FABB
C - - - - - 0x003ABF 00:FAAF: C6 F3     DEC ram_00F3
C - - - - - 0x003AC1 00:FAB1: D0 08     BNE bra_FABB
bra_FAB3:
C - - - - - 0x003AC3 00:FAB3: E6 F3     INC ram_00F3
C - - - - - 0x003AC5 00:FAB5: C9 08     CMP #$08
C - - - - - 0x003AC7 00:FAB7: 90 02     BCC bra_FABB
C - - - - - 0x003AC9 00:FAB9: E6 F3     INC ram_00F3
bra_FABB:
C - - - - - 0x003ACB 00:FABB: A9 01     LDA #$01
C - - - - - 0x003ACD 00:FABD: D0 09     BNE bra_FAC8    ; jmp
bra_FABF:
C - - - - - 0x003ACF 00:FABF: A9 30     LDA #$30
C - - - - - 0x003AD1 00:FAC1: 85 F3     STA ram_00F3
bra_FAC3:
C - - - - - 0x003AD3 00:FAC3: A4 F3     LDY ram_00F3
C - - - - - 0x003AD5 00:FAC5: B9 F4 F9  LDA tbl_F9F4,Y
bra_FAC8:
C - - - - - 0x003AD8 00:FAC8: 8D F8 07  STA ram_07F8
C - - - - - 0x003ADB 00:FACB: A9 00     LDA #$00
C - - - - - 0x003ADD 00:FACD: 85 F7     STA ram_00F7
bra_FACF:
C - - - - - 0x003ADF 00:FACF: AD FF 07  LDA ram_07FF
C - - - - - 0x003AE2 00:FAD2: 18        CLC
C - - - - - 0x003AE3 00:FAD3: 69 04     ADC #$04
C - - - - - 0x003AE5 00:FAD5: C9 40     CMP #$40
C - - - - - 0x003AE7 00:FAD7: B0 03     BCS bra_FADC
C - - - - - 0x003AE9 00:FAD9: 8D FF 07  STA ram_07FF
bra_FADC:
C - - - - - 0x003AEC 00:FADC: A4 F3     LDY ram_00F3
C - - - - - 0x003AEE 00:FADE: B9 C4 F9  LDA tbl_F9C4,Y
C - - - - - 0x003AF1 00:FAE1: A4 F7     LDY ram_00F7
C - - - - - 0x003AF3 00:FAE3: 18        CLC
C - - - - - 0x003AF4 00:FAE4: 79 B3 F9  ADC tbl_F9B3,Y
C - - - - - 0x003AF7 00:FAE7: A6 FC     LDX ram_00FC
C - - - - - 0x003AF9 00:FAE9: 10 07     BPL bra_FAF2
C - - - - - 0x003AFB 00:FAEB: BE BF F9  LDX tbl_F9BF,Y
C - - - - - 0x003AFE 00:FAEE: A0 89     LDY #$89
C - - - - - 0x003B00 00:FAF0: D0 05     BNE bra_FAF7
bra_FAF2:
C - - - - - 0x003B02 00:FAF2: BE B9 F9  LDX tbl_F9B9,Y
C - - - - - 0x003B05 00:FAF5: A0 7F     LDY #$7F
bra_FAF7:
loc_FAF7:
C D 3 - - - 0x003B07 00:FAF7: 8E 04 40  STX $4004
C - - - - - 0x003B0A 00:FAFA: 8C 05 40  STY $4005
C - - - - - 0x003B0D 00:FAFD: 8D F9 07  STA ram_07F9
C - - - - - 0x003B10 00:FB00: A0 07     LDY #$07
C - - - - - 0x003B12 00:FB02: 84 00     STY ram_0000
C - - - - - 0x003B14 00:FB04: A0 FF     LDY #$FF
C - - - - - 0x003B16 00:FB06: 84 01     STY ram_0001
C - - - - - 0x003B18 00:FB08: 4A        LSR
C - - - - - 0x003B19 00:FB09: 4A        LSR
C - - - - - 0x003B1A 00:FB0A: 4A        LSR
C - - - - - 0x003B1B 00:FB0B: 4A        LSR
C - - - - - 0x003B1C 00:FB0C: 4A        LSR
C - - - - - 0x003B1D 00:FB0D: A8        TAY
C - - - - - 0x003B1E 00:FB0E: F0 07     BEQ bra_FB17
bra_FB10_loop:
C - - - - - 0x003B20 00:FB10: 46 00     LSR ram_0000
C - - - - - 0x003B22 00:FB12: 66 01     ROR ram_0001
C - - - - - 0x003B24 00:FB14: 88        DEY
C - - - - - 0x003B25 00:FB15: D0 F9     BNE bra_FB10_loop
bra_FB17:
C - - - - - 0x003B27 00:FB17: A5 00     LDA ram_0000
C - - - - - 0x003B29 00:FB19: 4A        LSR
C - - - - - 0x003B2A 00:FB1A: AA        TAX
C - - - - - 0x003B2B 00:FB1B: A5 01     LDA ram_0001
C - - - - - 0x003B2D 00:FB1D: 6A        ROR
C - - - - - 0x003B2E 00:FB1E: A8        TAY
C - - - - - 0x003B2F 00:FB1F: 0E F9 07  ASL ram_07F9
C - - - - - 0x003B32 00:FB22: 0E F9 07  ASL ram_07F9
C - - - - - 0x003B35 00:FB25: 0E F9 07  ASL ram_07F9
bra_FB28_loop:
C - - - - - 0x003B38 00:FB28: 8A        TXA
C - - - - - 0x003B39 00:FB29: 4A        LSR
C - - - - - 0x003B3A 00:FB2A: AA        TAX
C - - - - - 0x003B3B 00:FB2B: 98        TYA
C - - - - - 0x003B3C 00:FB2C: 6A        ROR
C - - - - - 0x003B3D 00:FB2D: A8        TAY
C - - - - - 0x003B3E 00:FB2E: 0E F9 07  ASL ram_07F9
C - - - - - 0x003B41 00:FB31: 90 0E     BCC bra_FB41
C - - - - - 0x003B43 00:FB33: 38        SEC
C - - - - - 0x003B44 00:FB34: 49 FF     EOR #$FF
C - - - - - 0x003B46 00:FB36: 65 01     ADC ram_0001
C - - - - - 0x003B48 00:FB38: 85 01     STA ram_0001
C - - - - - 0x003B4A 00:FB3A: 8A        TXA
C - - - - - 0x003B4B 00:FB3B: 49 FF     EOR #$FF
C - - - - - 0x003B4D 00:FB3D: 65 00     ADC ram_0000
C - - - - - 0x003B4F 00:FB3F: 85 00     STA ram_0000
bra_FB41:
C - - - - - 0x003B51 00:FB41: AD F9 07  LDA ram_07F9
C - - - - - 0x003B54 00:FB44: D0 E2     BNE bra_FB28_loop
C - - - - - 0x003B56 00:FB46: A5 01     LDA ram_0001
C - - - - - 0x003B58 00:FB48: 8D 06 40  STA $4006
C - - - - - 0x003B5B 00:FB4B: A5 00     LDA ram_0000
C - - - - - 0x003B5D 00:FB4D: 8D 07 40  STA $4007
C - - - - - 0x003B60 00:FB50: A5 F1     LDA ram_00F1
C - - - - - 0x003B62 00:FB52: D0 06     BNE bra_FB5A
C - - - - - 0x003B64 00:FB54: A5 F7     LDA ram_00F7
C - - - - - 0x003B66 00:FB56: 05 FA     ORA ram_00FA
C - - - - - 0x003B68 00:FB58: D0 1C     BNE bra_FB76_RTS
bra_FB5A:
C - - - - - 0x003B6A 00:FB5A: 46 00     LSR ram_0000
C - - - - - 0x003B6C 00:FB5C: 66 01     ROR ram_0001
C - - - - - 0x003B6E 00:FB5E: A5 00     LDA ram_0000
C - - - - - 0x003B70 00:FB60: 4A        LSR
C - - - - - 0x003B71 00:FB61: A8        TAY
C - - - - - 0x003B72 00:FB62: A5 01     LDA ram_0001
C - - - - - 0x003B74 00:FB64: 6A        ROR
C - - - - - 0x003B75 00:FB65: 18        CLC
C - - - - - 0x003B76 00:FB66: 65 01     ADC ram_0001
C - - - - - 0x003B78 00:FB68: 8D 0A 40  STA $400A
C - - - - - 0x003B7B 00:FB6B: 98        TYA
C - - - - - 0x003B7C 00:FB6C: 65 00     ADC ram_0000
C - - - - - 0x003B7E 00:FB6E: 8D 0B 40  STA $400B
C - - - - - 0x003B81 00:FB71: A9 04     LDA #$04
C - - - - - 0x003B83 00:FB73: 8D 08 40  STA $4008
bra_FB76_RTS:
C - - - - - 0x003B86 00:FB76: 60        RTS



tbl_FB77:
- D 3 - - - 0x003B87 00:FB77: 10        .byte $10   ; 
- D 3 - - - 0x003B88 00:FB78: 11        .byte $11   ; 
- D 3 - - - 0x003B89 00:FB79: 12        .byte $12   ; 
- D 3 - - - 0x003B8A 00:FB7A: 12        .byte $12   ; 
- D 3 - - - 0x003B8B 00:FB7B: 12        .byte $12   ; 
- D 3 - - - 0x003B8C 00:FB7C: 13        .byte $13   ; 
- D 3 - - - 0x003B8D 00:FB7D: 13        .byte $13   ; 
- D 3 - - - 0x003B8E 00:FB7E: 14        .byte $14   ; 
- D 3 - - - 0x003B8F 00:FB7F: 15        .byte $15   ; 
- D 3 - - - 0x003B90 00:FB80: 16        .byte $16   ; 
- D 3 - - - 0x003B91 00:FB81: 17        .byte $17   ; 
- D 3 - - - 0x003B92 00:FB82: 18        .byte $18   ; 
- D 3 - - - 0x003B93 00:FB83: 19        .byte $19   ; 
- D 3 - - - 0x003B94 00:FB84: 1A        .byte $1A   ; 
- D 3 - - - 0x003B95 00:FB85: 1B        .byte $1B   ; 
- D 3 - - - 0x003B96 00:FB86: 1C        .byte $1C   ; 
- D 3 - - - 0x003B97 00:FB87: 1D        .byte $1D   ; 
- D 3 - - - 0x003B98 00:FB88: 1E        .byte $1E   ; 
- D 3 - - - 0x003B99 00:FB89: 1F        .byte $1F   ; 
- D 3 - - - 0x003B9A 00:FB8A: 1C        .byte $1C   ; 
- D 3 - - - 0x003B9B 00:FB8B: 1F        .byte $1F   ; 
- D 3 - - - 0x003B9C 00:FB8C: 1F        .byte $1F   ; 
- D 3 - - - 0x003B9D 00:FB8D: 1F        .byte $1F   ; 
- D 3 - - - 0x003B9E 00:FB8E: 1F        .byte $1F   ; 
- D 3 - - - 0x003B9F 00:FB8F: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA0 00:FB90: 18        .byte $18   ; 
- D 3 - - - 0x003BA1 00:FB91: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA2 00:FB92: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA3 00:FB93: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA4 00:FB94: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA5 00:FB95: 18        .byte $18   ; 
- D 3 - - - 0x003BA6 00:FB96: 1C        .byte $1C   ; 
- D 3 - - - 0x003BA7 00:FB97: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA8 00:FB98: 1F        .byte $1F   ; 
- D 3 - - - 0x003BA9 00:FB99: 18        .byte $18   ; 
- D 3 - - - 0x003BAA 00:FB9A: 1F        .byte $1F   ; 
- D 3 - - - 0x003BAB 00:FB9B: 1F        .byte $1F   ; 
- D 3 - - - 0x003BAC 00:FB9C: 1F        .byte $1F   ; 
- D 3 - - - 0x003BAD 00:FB9D: 14        .byte $14   ; 
- D 3 - - - 0x003BAE 00:FB9E: 1F        .byte $1F   ; 
- D 3 - - - 0x003BAF 00:FB9F: 1C        .byte $1C   ; 
- D 3 - - - 0x003BB0 00:FBA0: 1F        .byte $1F   ; 
- D 3 - - - 0x003BB1 00:FBA1: 1F        .byte $1F   ; 
- D 3 - - - 0x003BB2 00:FBA2: 1C        .byte $1C   ; 
- D 3 - - - 0x003BB3 00:FBA3: 18        .byte $18   ; 
- D 3 - - - 0x003BB4 00:FBA4: 16        .byte $16   ; 



tbl_FBA5:
- D 3 - - - 0x003BB5 00:FBA5: 0E        .byte $0E   ; 
- D 3 - - - 0x003BB6 00:FBA6: 0C        .byte $0C   ; 
- D 3 - - - 0x003BB7 00:FBA7: 0E        .byte $0E   ; 
- D 3 - - - 0x003BB8 00:FBA8: 0E        .byte $0E   ; 
- D 3 - - - 0x003BB9 00:FBA9: 0A        .byte $0A   ; 
- D 3 - - - 0x003BBA 00:FBAA: 0C        .byte $0C   ; 
- D 3 - - - 0x003BBB 00:FBAB: 0E        .byte $0E   ; 
- D 3 - - - 0x003BBC 00:FBAC: 0E        .byte $0E   ; 
- D 3 - - - 0x003BBD 00:FBAD: 0C        .byte $0C   ; 
- D 3 - - - 0x003BBE 00:FBAE: 0A        .byte $0A   ; 
- D 3 - - - 0x003BBF 00:FBAF: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC0 00:FBB0: 0D        .byte $0D   ; 
- D 3 - - - 0x003BC1 00:FBB1: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC2 00:FBB2: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC3 00:FBB3: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC4 00:FBB4: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC5 00:FBB5: 0C        .byte $0C   ; 
- D 3 - - - 0x003BC6 00:FBB6: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC7 00:FBB7: 0A        .byte $0A   ; 
- D 3 - - - 0x003BC8 00:FBB8: 0E        .byte $0E   ; 
- D 3 - - - 0x003BC9 00:FBB9: 0C        .byte $0C   ; 
- D 3 - - - 0x003BCA 00:FBBA: 0C        .byte $0C   ; 
- D 3 - - - 0x003BCB 00:FBBB: 0E        .byte $0E   ; 
- D 3 - - - 0x003BCC 00:FBBC: 0D        .byte $0D   ; 
- D 3 - - - 0x003BCD 00:FBBD: 0C        .byte $0C   ; 
- D 3 - - - 0x003BCE 00:FBBE: 0D        .byte $0D   ; 
- D 3 - - - 0x003BCF 00:FBBF: 0D        .byte $0D   ; 
- D 3 - - - 0x003BD0 00:FBC0: 0E        .byte $0E   ; 
- D 3 - - - 0x003BD1 00:FBC1: 0E        .byte $0E   ; 
- D 3 - - - 0x003BD2 00:FBC2: 0D        .byte $0D   ; 
- D 3 - - - 0x003BD3 00:FBC3: 0D        .byte $0D   ; 
- D 3 - - - 0x003BD4 00:FBC4: 0E        .byte $0E   ; 
- D 3 - - - 0x003BD5 00:FBC5: 0B        .byte $0B   ; 
- D 3 - - - 0x003BD6 00:FBC6: 0E        .byte $0E   ; 
- D 3 - - - 0x003BD7 00:FBC7: 0E        .byte $0E   ; 
- D 3 - - - 0x003BD8 00:FBC8: 0D        .byte $0D   ; 
- D 3 - - - 0x003BD9 00:FBC9: 0E        .byte $0E   ; 
- D 3 - - - 0x003BDA 00:FBCA: 0E        .byte $0E   ; 
- D 3 - - - 0x003BDB 00:FBCB: 0C        .byte $0C   ; 
- D 3 - - - 0x003BDC 00:FBCC: 0D        .byte $0D   ; 
- D 3 - - - 0x003BDD 00:FBCD: 0E        .byte $0E   ; 
- D 3 - - - 0x003BDE 00:FBCE: 0B        .byte $0B   ; 
- D 3 - - - 0x003BDF 00:FBCF: 0D        .byte $0D   ; 
- D 3 - - - 0x003BE0 00:FBD0: 0E        .byte $0E   ; 
- D 3 - - - 0x003BE1 00:FBD1: 0E        .byte $0E   ; 
- D 3 - - - 0x003BE2 00:FBD2: 0D        .byte $0D   ; 



tbl_FBD3:
- D 3 - - - 0x003BE3 00:FBD3: 30        .byte $30   ; 
- D 3 - - - 0x003BE4 00:FBD4: 31        .byte $31   ; 
- D 3 - - - 0x003BE5 00:FBD5: 32        .byte $32   ; 
- D 3 - - - 0x003BE6 00:FBD6: 32        .byte $32   ; 
- D 3 - - - 0x003BE7 00:FBD7: 33        .byte $33   ; 
- D 3 - - - 0x003BE8 00:FBD8: 33        .byte $33   ; 
- D 3 - - - 0x003BE9 00:FBD9: 34        .byte $34   ; 
- D 3 - - - 0x003BEA 00:FBDA: 35        .byte $35   ; 
- D 3 - - - 0x003BEB 00:FBDB: 36        .byte $36   ; 
- D 3 - - - 0x003BEC 00:FBDC: 37        .byte $37   ; 
- D 3 - - - 0x003BED 00:FBDD: 38        .byte $38   ; 
- D 3 - - - 0x003BEE 00:FBDE: 37        .byte $37   ; 
- D 3 - - - 0x003BEF 00:FBDF: 38        .byte $38   ; 
- D 3 - - - 0x003BF0 00:FBE0: 37        .byte $37   ; 
- D 3 - - - 0x003BF1 00:FBE1: 36        .byte $36   ; 
- D 3 - - - 0x003BF2 00:FBE2: 35        .byte $35   ; 
- D 3 - - - 0x003BF3 00:FBE3: 34        .byte $34   ; 
- D 3 - - - 0x003BF4 00:FBE4: 34        .byte $34   ; 
- D 3 - - - 0x003BF5 00:FBE5: 34        .byte $34   ; 
- D 3 - - - 0x003BF6 00:FBE6: 35        .byte $35   ; 
- D 3 - - - 0x003BF7 00:FBE7: 36        .byte $36   ; 
- D 3 - - - 0x003BF8 00:FBE8: 37        .byte $37   ; 
- D 3 - - - 0x003BF9 00:FBE9: 38        .byte $38   ; 
- D 3 - - - 0x003BFA 00:FBEA: 39        .byte $39   ; 
- D 3 - - - 0x003BFB 00:FBEB: 3A        .byte $3A   ; 
- D 3 - - - 0x003BFC 00:FBEC: 3B        .byte $3B   ; 
- D 3 - - - 0x003BFD 00:FBED: 3C        .byte $3C   ; 
- D 3 - - - 0x003BFE 00:FBEE: 3A        .byte $3A   ; 
- D 3 - - - 0x003BFF 00:FBEF: 38        .byte $38   ; 
- D 3 - - - 0x003C00 00:FBF0: 36        .byte $36   ; 
- D 3 - - - 0x003C01 00:FBF1: 35        .byte $35   ; 



tbl_FBF2:
- D 3 - - - 0x003C02 00:FBF2: 34        .byte $34   ; 
- D 3 - - - 0x003C03 00:FBF3: 10        .byte $10   ; 
- D 3 - - - 0x003C04 00:FBF4: 11        .byte $11   ; 
- D 3 - - - 0x003C05 00:FBF5: 12        .byte $12   ; 
- D 3 - - - 0x003C06 00:FBF6: 14        .byte $14   ; 
- D 3 - - - 0x003C07 00:FBF7: 16        .byte $16   ; 
- D 3 - - - 0x003C08 00:FBF8: 18        .byte $18   ; 
- D 3 - - - 0x003C09 00:FBF9: 1C        .byte $1C   ; 
- D 3 - - - 0x003C0A 00:FBFA: 1F        .byte $1F   ; 
- D 3 - - - 0x003C0B 00:FBFB: 1C        .byte $1C   ; 
- D 3 - - - 0x003C0C 00:FBFC: 18        .byte $18   ; 
- D 3 - - - 0x003C0D 00:FBFD: 16        .byte $16   ; 
- D 3 - - - 0x003C0E 00:FBFE: 14        .byte $14   ; 



bra_FBFF:
C - - - - - 0x003C0F 00:FBFF: 84 F2     STY ram_00F2
C - - - - - 0x003C11 00:FC01: A9 2E     LDA #$2E
C - - - - - 0x003C13 00:FC03: 8D F6 07  STA ram_07F6
bra_FC06:
C - - - - - 0x003C16 00:FC06: 98        TYA
C - - - - - 0x003C17 00:FC07: F0 05     BEQ bra_FC0E
C - - - - - 0x003C19 00:FC09: 29 02     AND #$02
C - - - - - 0x003C1B 00:FC0B: 8D F7 07  STA ram_07F7
bra_FC0E:
C - - - - - 0x003C1E 00:FC0E: AC F6 07  LDY ram_07F6
C - - - - - 0x003C21 00:FC11: B9 76 FB  LDA tbl_FB77 - $01,Y
C - - - - - 0x003C24 00:FC14: 8D 0C 40  STA $400C
C - - - - - 0x003C27 00:FC17: B9 A4 FB  LDA tbl_FBA5 - $01,Y
C - - - - - 0x003C2A 00:FC1A: 8D 0E 40  STA $400E
C - - - - - 0x003C2D 00:FC1D: D0 56     BNE bra_FC75    ; jmp
bra_FC1F:
C - - - - - 0x003C2F 00:FC1F: 84 F2     STY ram_00F2
C - - - - - 0x003C31 00:FC21: A9 00     LDA #$00
C - - - - - 0x003C33 00:FC23: 8D F6 07  STA ram_07F6
C - - - - - 0x003C36 00:FC26: 8D F7 07  STA ram_07F7
C - - - - - 0x003C39 00:FC29: A9 0E     LDA #$0E
C - - - - - 0x003C3B 00:FC2B: 8D 0E 40  STA $400E
bra_FC2E:
C - - - - - 0x003C3E 00:FC2E: AD F6 07  LDA ram_07F6
C - - - - - 0x003C41 00:FC31: 4A        LSR
C - - - - - 0x003C42 00:FC32: 4A        LSR
C - - - - - 0x003C43 00:FC33: 4A        LSR
C - - - - - 0x003C44 00:FC34: A8        TAY
C - - - - - 0x003C45 00:FC35: B9 D3 FB  LDA tbl_FBD3,Y
C - - - - - 0x003C48 00:FC38: 8D 0C 40  STA $400C
C - - - - - 0x003C4B 00:FC3B: D0 38     BNE bra_FC75    ; jmp



sub_FC3D:
C - - - - - 0x003C4D 00:FC3D: A4 FD     LDY ram_00FD
C - - - - - 0x003C4F 00:FC3F: A5 F2     LDA ram_00F2
C - - - - - 0x003C51 00:FC41: 46 FD     LSR ram_00FD
C - - - - - 0x003C53 00:FC43: B0 BA     BCS bra_FBFF
C - - - - - 0x003C55 00:FC45: 4A        LSR
C - - - - - 0x003C56 00:FC46: B0 BE     BCS bra_FC06
C - - - - - 0x003C58 00:FC48: 46 FD     LSR ram_00FD
C - - - - - 0x003C5A 00:FC4A: B0 D3     BCS bra_FC1F
C - - - - - 0x003C5C 00:FC4C: 4A        LSR
C - - - - - 0x003C5D 00:FC4D: B0 DF     BCS bra_FC2E
C - - - - - 0x003C5F 00:FC4F: 4A        LSR
C - - - - - 0x003C60 00:FC50: B0 11     BCS bra_FC63
C - - - - - 0x003C62 00:FC52: 46 FD     LSR ram_00FD
C - - - - - 0x003C64 00:FC54: B0 01     BCS bra_FC57
bra_FC56_RTS:
C - - - - - 0x003C66 00:FC56: 60        RTS
bra_FC57:
C - - - - - 0x003C67 00:FC57: 84 F2     STY ram_00F2
C - - - - - 0x003C69 00:FC59: A9 0C     LDA #$0C
C - - - - - 0x003C6B 00:FC5B: 8D F6 07  STA ram_07F6
C - - - - - 0x003C6E 00:FC5E: A9 0D     LDA #$0D
C - - - - - 0x003C70 00:FC60: 8D 0E 40  STA $400E
bra_FC63:
C - - - - - 0x003C73 00:FC63: AC F6 07  LDY ram_07F6
C - - - - - 0x003C76 00:FC66: B9 F2 FB  LDA tbl_FBF2,Y
C - - - - - 0x003C79 00:FC69: 8D 0C 40  STA $400C
C - - - - - 0x003C7C 00:FC6C: C0 08     CPY #$08
C - - - - - 0x003C7E 00:FC6E: D0 05     BNE bra_FC75
C - - - - - 0x003C80 00:FC70: A9 0E     LDA #$0E
C - - - - - 0x003C82 00:FC72: 8D 0E 40  STA $400E
bra_FC75:
C - - - - - 0x003C85 00:FC75: A9 08     LDA #$08
C - - - - - 0x003C87 00:FC77: 8D 0F 40  STA $400F
C - - - - - 0x003C8A 00:FC7A: CE F6 07  DEC ram_07F6
C - - - - - 0x003C8D 00:FC7D: D0 D7     BNE bra_FC56_RTS
C - - - - - 0x003C8F 00:FC7F: AC F7 07  LDY ram_07F7
C - - - - - 0x003C92 00:FC82: D0 9B     BNE bra_FC1F
C - - - - - 0x003C94 00:FC84: A9 00     LDA #$00
C - - - - - 0x003C96 00:FC86: 85 F2     STA ram_00F2
C - - - - - 0x003C98 00:FC88: 60        RTS



tbl_FC89:
- D 3 - - - 0x003C99 00:FC89: 7F        .byte $7F   ; 
- D 3 - - - 0x003C9A 00:FC8A: 8E        .byte $8E   ; 
- D 3 - - - 0x003C9B 00:FC8B: 86        .byte $86   ; 
- D 3 - - - 0x003C9C 00:FC8C: 8F        .byte $8F   ; 



sub_FC8D:
C - - - - - 0x003C9D 00:FC8D: A5 FB     LDA ram_00FB
C - - - - - 0x003C9F 00:FC8F: D0 05     BNE bra_FC96
C - - - - - 0x003CA1 00:FC91: A5 F4     LDA ram_00F4
C - - - - - 0x003CA3 00:FC93: D0 44     BNE bra_FCD9
C - - - - - 0x003CA5 00:FC95: 60        RTS
bra_FC96:
C - - - - - 0x003CA6 00:FC96: 85 F4     STA ram_00F4
C - - - - - 0x003CA8 00:FC98: A0 00     LDY #$00
bra_FC9A_loop:
C - - - - - 0x003CAA 00:FC9A: C8        INY
C - - - - - 0x003CAB 00:FC9B: 4A        LSR
C - - - - - 0x003CAC 00:FC9C: 90 FC     BCC bra_FC9A_loop
C - - - - - 0x003CAE 00:FC9E: B9 D2 FD  LDA tbl_FDD3 - $01,Y
C - - - - - 0x003CB1 00:FCA1: A8        TAY
C - - - - - 0x003CB2 00:FCA2: B9 D3 FD  LDA tbl_FDDB - $08,Y
C - - - - - 0x003CB5 00:FCA5: 8D F0 07  STA ram_07F0
C - - - - - 0x003CB8 00:FCA8: B9 D4 FD  LDA tbl_FDDB - $08 + $01,Y
C - - - - - 0x003CBB 00:FCAB: 85 F8     STA ram_00F8
C - - - - - 0x003CBD 00:FCAD: B9 D5 FD  LDA tbl_FDDB - $08 + $02,Y
C - - - - - 0x003CC0 00:FCB0: 85 F9     STA ram_00F9
C - - - - - 0x003CC2 00:FCB2: B9 D6 FD  LDA tbl_FDDB - $08 + $03,Y
C - - - - - 0x003CC5 00:FCB5: 8D E0 07  STA ram_07E0
C - - - - - 0x003CC8 00:FCB8: B9 D7 FD  LDA tbl_FDDB - $08 + $04,Y
C - - - - - 0x003CCB 00:FCBB: 85 FA     STA ram_00FA
C - - - - - 0x003CCD 00:FCBD: B9 D8 FD  LDA tbl_FDDB - $08 + $05,Y
C - - - - - 0x003CD0 00:FCC0: 8D EC 07  STA ram_07EC
C - - - - - 0x003CD3 00:FCC3: A9 01     LDA #$01
C - - - - - 0x003CD5 00:FCC5: 8D E5 07  STA ram_07E5
C - - - - - 0x003CD8 00:FCC8: 8D E1 07  STA ram_07E1
C - - - - - 0x003CDB 00:FCCB: 8D E9 07  STA ram_07E9
C - - - - - 0x003CDE 00:FCCE: 8D ED 07  STA ram_07ED
C - - - - - 0x003CE1 00:FCD1: A0 00     LDY #$00
C - - - - - 0x003CE3 00:FCD3: 8C E4 07  STY ram_07E4
C - - - - - 0x003CE6 00:FCD6: EE FB 07  INC ram_07FB
bra_FCD9:
C - - - - - 0x003CE9 00:FCD9: AC E0 07  LDY ram_07E0
C - - - - - 0x003CEC 00:FCDC: F0 3C     BEQ bra_FD1A
C - - - - - 0x003CEE 00:FCDE: CE E1 07  DEC ram_07E1
C - - - - - 0x003CF1 00:FCE1: D0 37     BNE bra_FD1A
C - - - - - 0x003CF3 00:FCE3: EE E0 07  INC ram_07E0
C - - - - - 0x003CF6 00:FCE6: B1 F8     LDA (ram_00F8),Y
C - - - - - 0x003CF8 00:FCE8: 20 53 FF  JSR sub_FF53
C - - - - - 0x003CFB 00:FCEB: 8D E1 07  STA ram_07E1
C - - - - - 0x003CFE 00:FCEE: 8A        TXA
C - - - - - 0x003CFF 00:FCEF: 29 3E     AND #$3E
C - - - - - 0x003D01 00:FCF1: 20 71 F8  JSR sub_F871
C - - - - - 0x003D04 00:FCF4: D0 04     BNE bra_FCFA
C - - - - - 0x003D06 00:FCF6: A2 10     LDX #$10
C - - - - - 0x003D08 00:FCF8: D0 0A     BNE bra_FD04    ; jmp
bra_FCFA:
C - - - - - 0x003D0A 00:FCFA: A2 4F     LDX #$4F
C - - - - - 0x003D0C 00:FCFC: A5 F4     LDA ram_00F4
C - - - - - 0x003D0E 00:FCFE: 29 60     AND #$60
C - - - - - 0x003D10 00:FD00: D0 02     BNE bra_FD04
C - - - - - 0x003D12 00:FD02: A2 05     LDX #$05
bra_FD04:
C - - - - - 0x003D14 00:FD04: 8E 00 40  STX $4000
C - - - - - 0x003D17 00:FD07: A0 7F     LDY #$7F
C - - - - - 0x003D19 00:FD09: A5 F4     LDA ram_00F4
C - - - - - 0x003D1B 00:FD0B: 4A        LSR
C - - - - - 0x003D1C 00:FD0C: 90 09     BCC bra_FD17
C - - - - - 0x003D1E 00:FD0E: AD FB 07  LDA ram_07FB
C - - - - - 0x003D21 00:FD11: 29 03     AND #$03
C - - - - - 0x003D23 00:FD13: AA        TAX
C - - - - - 0x003D24 00:FD14: BC 89 FC  LDY tbl_FC89,X
bra_FD17:
C - - - - - 0x003D27 00:FD17: 8C 01 40  STY $4001
bra_FD1A:
C - - - - - 0x003D2A 00:FD1A: CE E5 07  DEC ram_07E5
C - - - - - 0x003D2D 00:FD1D: D0 44     BNE bra_FD63
C - - - - - 0x003D2F 00:FD1F: AC E4 07  LDY ram_07E4
C - - - - - 0x003D32 00:FD22: EE E4 07  INC ram_07E4
C - - - - - 0x003D35 00:FD25: B1 F8     LDA (ram_00F8),Y
C - - - - - 0x003D37 00:FD27: D0 09     BNE bra_FD32
C - - - - - 0x003D39 00:FD29: A9 00     LDA #$00
C - - - - - 0x003D3B 00:FD2B: 85 FA     STA ram_00FA
C - - - - - 0x003D3D 00:FD2D: 85 F4     STA ram_00F4
C - - - - - 0x003D3F 00:FD2F: 4C 42 F9  JMP loc_F942
bra_FD32:
C - - - - - 0x003D42 00:FD32: 20 53 FF  JSR sub_FF53
C - - - - - 0x003D45 00:FD35: 8D E5 07  STA ram_07E5
C - - - - - 0x003D48 00:FD38: A5 F4     LDA ram_00F4
C - - - - - 0x003D4A 00:FD3A: 29 60     AND #$60
C - - - - - 0x003D4C 00:FD3C: D0 25     BNE bra_FD63
C - - - - - 0x003D4E 00:FD3E: 8A        TXA
C - - - - - 0x003D4F 00:FD3F: 29 3E     AND #$3E
C - - - - - 0x003D51 00:FD41: 20 85 F8  JSR sub_F885
C - - - - - 0x003D54 00:FD44: D0 04     BNE bra_FD4A
C - - - - - 0x003D56 00:FD46: A2 10     LDX #$10
C - - - - - 0x003D58 00:FD48: D0 11     BNE bra_FD5B    ; jmp
bra_FD4A:
C - - - - - 0x003D5A 00:FD4A: A2 87     LDX #$87
C - - - - - 0x003D5C 00:FD4C: AD E5 07  LDA ram_07E5
C - - - - - 0x003D5F 00:FD4F: C9 10     CMP #$10
C - - - - - 0x003D61 00:FD51: B0 08     BCS bra_FD5B
C - - - - - 0x003D63 00:FD53: A2 84     LDX #$84
C - - - - - 0x003D65 00:FD55: C9 08     CMP #$08
C - - - - - 0x003D67 00:FD57: B0 02     BCS bra_FD5B
C - - - - - 0x003D69 00:FD59: A2 82     LDX #$82
bra_FD5B:
C - - - - - 0x003D6B 00:FD5B: 8E 04 40  STX $4004
C - - - - - 0x003D6E 00:FD5E: A9 7F     LDA #$7F
C - - - - - 0x003D70 00:FD60: 8D 05 40  STA $4005
bra_FD63:
C - - - - - 0x003D73 00:FD63: A4 FA     LDY ram_00FA
C - - - - - 0x003D75 00:FD65: F0 32     BEQ bra_FD99
C - - - - - 0x003D77 00:FD67: CE E9 07  DEC ram_07E9
C - - - - - 0x003D7A 00:FD6A: D0 2D     BNE bra_FD99
C - - - - - 0x003D7C 00:FD6C: E6 FA     INC ram_00FA
C - - - - - 0x003D7E 00:FD6E: B1 F8     LDA (ram_00F8),Y
C - - - - - 0x003D80 00:FD70: 20 53 FF  JSR sub_FF53
C - - - - - 0x003D83 00:FD73: 8D E9 07  STA ram_07E9
C - - - - - 0x003D86 00:FD76: 18        CLC
C - - - - - 0x003D87 00:FD77: 69 FF     ADC #$FF
C - - - - - 0x003D89 00:FD79: C9 0C     CMP #$0C
C - - - - - 0x003D8B 00:FD7B: 90 02     BCC bra_FD7F
C - - - - - 0x003D8D 00:FD7D: A9 0C     LDA #$0C
bra_FD7F:
C - - - - - 0x003D8F 00:FD7F: 0A        ASL
C - - - - - 0x003D90 00:FD80: 0A        ASL
C - - - - - 0x003D91 00:FD81: A4 F4     LDY ram_00F4
C - - - - - 0x003D93 00:FD83: C0 20     CPY #$20
C - - - - - 0x003D95 00:FD85: D0 02     BNE bra_FD89
- - - - - - 0x003D97 00:FD87: A9 81     LDA #$81
bra_FD89:
C - - - - - 0x003D99 00:FD89: 8D 08 40  STA $4008
C - - - - - 0x003D9C 00:FD8C: 8A        TXA
C - - - - - 0x003D9D 00:FD8D: 29 3E     AND #$3E
C - - - - - 0x003D9F 00:FD8F: 20 89 F8  JSR sub_F889
C - - - - - 0x003DA2 00:FD92: D0 05     BNE bra_FD99
C - - - - - 0x003DA4 00:FD94: A9 00     LDA #$00
C - - - - - 0x003DA6 00:FD96: 8D 08 40  STA $4008
bra_FD99:
C - - - - - 0x003DA9 00:FD99: A5 F4     LDA ram_00F4
C - - - - - 0x003DAB 00:FD9B: 29 1B     AND #$1B
C - - - - - 0x003DAD 00:FD9D: F0 33     BEQ bra_FDD2_RTS
C - - - - - 0x003DAF 00:FD9F: CE ED 07  DEC ram_07ED
C - - - - - 0x003DB2 00:FDA2: D0 2E     BNE bra_FDD2_RTS
C - - - - - 0x003DB4 00:FDA4: AC EC 07  LDY ram_07EC
C - - - - - 0x003DB7 00:FDA7: EE EC 07  INC ram_07EC
C - - - - - 0x003DBA 00:FDAA: B1 F8     LDA (ram_00F8),Y
C - - - - - 0x003DBC 00:FDAC: 20 53 FF  JSR sub_FF53
C - - - - - 0x003DBF 00:FDAF: 8D ED 07  STA ram_07ED
C - - - - - 0x003DC2 00:FDB2: 8A        TXA
C - - - - - 0x003DC3 00:FDB3: 29 3E     AND #$3E
C - - - - - 0x003DC5 00:FDB5: F0 1B     BEQ bra_FDD2_RTS
C - - - - - 0x003DC7 00:FDB7: C9 20     CMP #$20
C - - - - - 0x003DC9 00:FDB9: F0 08     BEQ bra_FDC3
C - - - - - 0x003DCB 00:FDBB: A9 00     LDA #$00
C - - - - - 0x003DCD 00:FDBD: A2 00     LDX #$00
C - - - - - 0x003DCF 00:FDBF: A0 08     LDY #$08
C - - - - - 0x003DD1 00:FDC1: D0 06     BNE bra_FDC9    ; jmp
bra_FDC3:
C - - - - - 0x003DD3 00:FDC3: A9 00     LDA #$00
C - - - - - 0x003DD5 00:FDC5: A2 02     LDX #$02
C - - - - - 0x003DD7 00:FDC7: A0 08     LDY #$08
bra_FDC9:
C - - - - - 0x003DD9 00:FDC9: 8D 0C 40  STA $400C
C - - - - - 0x003DDC 00:FDCC: 8E 0E 40  STX $400E
C - - - - - 0x003DDF 00:FDCF: 8C 0F 40  STY $400F
bra_FDD2_RTS:
C - - - - - 0x003DE2 00:FDD2: 60        RTS



tbl_FDD3:
- D 3 - - - 0x003DE3 00:FDD3: 08        .byte off_FDDB_08 - tbl_FDD3   ; 00 
- D 3 - - - 0x003DE4 00:FDD4: 0E        .byte off_FDE1_0E - tbl_FDD3   ; 01 
- D 3 - - - 0x003DE5 00:FDD5: 14        .byte off_FDE7_14 - tbl_FDD3   ; 02 
- - - - - - 0x003DE6 00:FDD6: 0E        .byte off_FDE1_0E - tbl_FDD3   ; 03 
- - - - - - 0x003DE7 00:FDD7: 0E        .byte off_FDE1_0E - tbl_FDD3   ; 04 
- D 3 - - - 0x003DE8 00:FDD8: 19        .byte off_FDEC_19 - tbl_FDD3   ; 05 
- D 3 - - - 0x003DE9 00:FDD9: 1E        .byte off_FDF1_1E - tbl_FDD3   ; 06 
- - - - - - 0x003DEA 00:FDDA: 23        .byte off_FDF6_23 - tbl_FDD3   ; 07 



tbl_FDDB:
off_FDDB_08:
- D 3 - - - 0x003DEB 00:FDDB: 00        .byte $00   ; 
- D 3 - - - 0x003DEC 00:FDDC: 64 FF     .word _off_001_FF64_00
- D 3 - - - 0x003DEE 00:FDDE: 2D        .byte $2D   ; 
- D 3 - - - 0x003DEF 00:FDDF: 59        .byte $59   ; 
- D 3 - - - 0x003DF0 00:FDE0: 74        .byte $74   ; 



off_FDE1_0E:
- D 3 - - - 0x003DF1 00:FDE1: 0F        .byte $0F   ; 
- D 3 - - - 0x003DF2 00:FDE2: FB FD     .word _off_001_FDFB_01
- D 3 - - - 0x003DF4 00:FDE4: 31        .byte $31   ; 
- D 3 - - - 0x003DF5 00:FDE5: 56        .byte $56   ; 
- D 3 - - - 0x003DF6 00:FDE6: 7B        .byte $7B   ; 



off_FDE7_14:
- D 3 - - - 0x003DF7 00:FDE7: 08        .byte $08   ; 
- D 3 - - - 0x003DF8 00:FDE8: 87 FE     .word _off_001_FE87_02
- D 3 - - - 0x003DFA 00:FDEA: 27        .byte $27   ; 
- D 3 - - - 0x003DFB 00:FDEB: 41        .byte $41   ; 



off_FDEC_19:
- D 3 - - - 0x003DFC 00:FDEC: 0F        .byte $0F   ; sharing with 0x003DF7 ?
- D 3 - - - 0x003DFD 00:FDED: F3 FE     .word _off_001_FEF3_05
- D 3 - - - 0x003DFF 00:FDEF: 03        .byte $03   ; 
- D 3 - - - 0x003E00 00:FDF0: 00        .byte $00   ; 



off_FDF1_1E:
- D 3 - - - 0x003E01 00:FDF1: 08        .byte $08   ; sharing with 0x003DFC ?
- D 3 - - - 0x003E02 00:FDF2: FD FE     .word _off_001_FEFD_06
- D 3 - - - 0x003E04 00:FDF4: 02        .byte $02   ; 
- D 3 - - - 0x003E05 00:FDF5: 00        .byte $00   ; 



off_FDF6_23:
- D 3 - - - 0x003E06 00:FDF6: 08        .byte $08   ; sharing with 0x003E01 ?
- - - - - - 0x003E07 00:FDF7: F0 FF     .word _off_001_FFF0_07
- - - - - - 0x003E09 00:FDF9: 02        .byte $02   ; 
- - - - - - 0x003E0A 00:FDFA: 00        .byte $00   ; 



_off_001_FDFB_01:
- D 3 - I - 0x003E0B 00:FDFB: 02        .byte $02   ; sharing with 0x003E06 ?
- D 3 - I - 0x003E0C 00:FDFC: 20        .byte $20   ; 
- D 3 - I - 0x003E0D 00:FDFD: 26        .byte $26   ; 
- D 3 - I - 0x003E0E 00:FDFE: 02        .byte $02   ; 
- D 3 - I - 0x003E0F 00:FDFF: 4A        .byte $4A   ; 
- D 3 - I - 0x003E10 00:FE00: 02        .byte $02   ; 
- D 3 - I - 0x003E11 00:FE01: 06        .byte $06   ; 
- D 3 - I - 0x003E12 00:FE02: 02        .byte $02   ; 
- D 3 - I - 0x003E13 00:FE03: 20        .byte $20   ; 
- D 3 - I - 0x003E14 00:FE04: 26        .byte $26   ; 
- D 3 - I - 0x003E15 00:FE05: 02        .byte $02   ; 
- D 3 - I - 0x003E16 00:FE06: 4A        .byte $4A   ; 
- D 3 - I - 0x003E17 00:FE07: 02        .byte $02   ; 
- D 3 - I - 0x003E18 00:FE08: 06        .byte $06   ; 
- D 3 - I - 0x003E19 00:FE09: 02        .byte $02   ; 
- D 3 - I - 0x003E1A 00:FE0A: 20        .byte $20   ; 
- D 3 - I - 0x003E1B 00:FE0B: 26        .byte $26   ; 
- D 3 - I - 0x003E1C 00:FE0C: 02        .byte $02   ; 
- D 3 - I - 0x003E1D 00:FE0D: 2E        .byte $2E   ; 
- D 3 - I - 0x003E1E 00:FE0E: 02        .byte $02   ; 
- D 3 - I - 0x003E1F 00:FE0F: 2E        .byte $2E   ; 
- D 3 - I - 0x003E20 00:FE10: 02        .byte $02   ; 
- D 3 - I - 0x003E21 00:FE11: 2E        .byte $2E   ; 
- D 3 - I - 0x003E22 00:FE12: 46        .byte $46   ; 
- D 3 - I - 0x003E23 00:FE13: AE        .byte $AE   ; 
- D 3 - I - 0x003E24 00:FE14: 02        .byte $02   ; 
- D 3 - I - 0x003E25 00:FE15: 42        .byte $42   ; 
- D 3 - I - 0x003E26 00:FE16: 6E        .byte $6E   ; 
- D 3 - I - 0x003E27 00:FE17: 6A        .byte $6A   ; 
- D 3 - I - 0x003E28 00:FE18: 22        .byte $22   ; 
- D 3 - I - 0x003E29 00:FE19: 1C        .byte $1C   ; 
- D 3 - I - 0x003E2A 00:FE1A: 2A        .byte $2A   ; 
- D 3 - I - 0x003E2B 00:FE1B: 22        .byte $22   ; 
- D 3 - I - 0x003E2C 00:FE1C: 1C        .byte $1C   ; 
- D 3 - I - 0x003E2D 00:FE1D: 2A        .byte $2A   ; 
- D 3 - I - 0x003E2E 00:FE1E: 6E        .byte $6E   ; 
- D 3 - I - 0x003E2F 00:FE1F: 22        .byte $22   ; 
- D 3 - I - 0x003E30 00:FE20: 1C        .byte $1C   ; 
- D 3 - I - 0x003E31 00:FE21: 2E        .byte $2E   ; 
- D 3 - I - 0x003E32 00:FE22: 22        .byte $22   ; 
- D 3 - I - 0x003E33 00:FE23: 1C        .byte $1C   ; 
- D 3 - I - 0x003E34 00:FE24: 2E        .byte $2E   ; 
- D 3 - I - 0x003E35 00:FE25: 1C        .byte $1C   ; 
- D 3 - I - 0x003E36 00:FE26: 60        .byte $60   ; 
- D 3 - I - 0x003E37 00:FE27: 62        .byte $62   ; 
- D 3 - I - 0x003E38 00:FE28: 64        .byte $64   ; 
- D 3 - I - 0x003E39 00:FE29: 26        .byte $26   ; 
- D 3 - I - 0x003E3A 00:FE2A: 86        .byte $86   ; 
- D 3 - I - 0x003E3B 00:FE2B: 00        .byte $00   ; 
- D 3 - I - 0x003E3C 00:FE2C: 82        .byte $82   ; 
- D 3 - I - 0x003E3D 00:FE2D: 60        .byte $60   ; 
- D 3 - I - 0x003E3E 00:FE2E: 58        .byte $58   ; 
- D 3 - I - 0x003E3F 00:FE2F: 42        .byte $42   ; 
- D 3 - I - 0x003E40 00:FE30: 58        .byte $58   ; 
- D 3 - I - 0x003E41 00:FE31: 60        .byte $60   ; 
- D 3 - I - 0x003E42 00:FE32: 58        .byte $58   ; 
- D 3 - I - 0x003E43 00:FE33: 42        .byte $42   ; 
- D 3 - I - 0x003E44 00:FE34: 58        .byte $58   ; 
- D 3 - I - 0x003E45 00:FE35: 60        .byte $60   ; 
- D 3 - I - 0x003E46 00:FE36: 5C        .byte $5C   ; 
- D 3 - I - 0x003E47 00:FE37: 60        .byte $60   ; 
- D 3 - I - 0x003E48 00:FE38: 5C        .byte $5C   ; 
- D 3 - I - 0x003E49 00:FE39: 60        .byte $60   ; 
- D 3 - I - 0x003E4A 00:FE3A: 5C        .byte $5C   ; 
- D 3 - I - 0x003E4B 00:FE3B: 60        .byte $60   ; 
- D 3 - I - 0x003E4C 00:FE3C: 5C        .byte $5C   ; 
- D 3 - I - 0x003E4D 00:FE3D: 62        .byte $62   ; 
- D 3 - I - 0x003E4E 00:FE3E: 18        .byte $18   ; 
- D 3 - I - 0x003E4F 00:FE3F: 36        .byte $36   ; 
- D 3 - I - 0x003E50 00:FE40: 22        .byte $22   ; 
- D 3 - I - 0x003E51 00:FE41: 18        .byte $18   ; 
- D 3 - I - 0x003E52 00:FE42: 36        .byte $36   ; 
- D 3 - I - 0x003E53 00:FE43: 22        .byte $22   ; 
- D 3 - I - 0x003E54 00:FE44: 66        .byte $66   ; 
- D 3 - I - 0x003E55 00:FE45: 3A        .byte $3A   ; 
- D 3 - I - 0x003E56 00:FE46: 3A        .byte $3A   ; 
- D 3 - I - 0x003E57 00:FE47: 26        .byte $26   ; 
- D 3 - I - 0x003E58 00:FE48: 3A        .byte $3A   ; 
- D 3 - I - 0x003E59 00:FE49: 3A        .byte $3A   ; 
- D 3 - I - 0x003E5A 00:FE4A: 26        .byte $26   ; 
- D 3 - I - 0x003E5B 00:FE4B: 36        .byte $36   ; 
- D 3 - I - 0x003E5C 00:FE4C: 7A        .byte $7A   ; 
- D 3 - I - 0x003E5D 00:FE4D: 58        .byte $58   ; 
- D 3 - I - 0x003E5E 00:FE4E: 5C        .byte $5C   ; 
- D 3 - I - 0x003E5F 00:FE4F: 22        .byte $22   ; 
- D 3 - I - 0x003E60 00:FE50: A6        .byte $A6   ; 
- D 3 - I - 0x003E61 00:FE51: 82        .byte $82   ; 
- D 3 - I - 0x003E62 00:FE52: 58        .byte $58   ; 
- D 3 - I - 0x003E63 00:FE53: 66        .byte $66   ; 
- D 3 - I - 0x003E64 00:FE54: 58        .byte $58   ; 
- D 3 - I - 0x003E65 00:FE55: 66        .byte $66   ; 
- D 3 - I - 0x003E66 00:FE56: 58        .byte $58   ; 
- D 3 - I - 0x003E67 00:FE57: 66        .byte $66   ; 
- D 3 - I - 0x003E68 00:FE58: 58        .byte $58   ; 
- D 3 - I - 0x003E69 00:FE59: 66        .byte $66   ; 
- D 3 - I - 0x003E6A 00:FE5A: 60        .byte $60   ; 
- D 3 - I - 0x003E6B 00:FE5B: 68        .byte $68   ; 
- D 3 - I - 0x003E6C 00:FE5C: 60        .byte $60   ; 
- D 3 - I - 0x003E6D 00:FE5D: 68        .byte $68   ; 
- D 3 - I - 0x003E6E 00:FE5E: 60        .byte $60   ; 
- D 3 - I - 0x003E6F 00:FE5F: 68        .byte $68   ; 
- D 3 - I - 0x003E70 00:FE60: 60        .byte $60   ; 
- D 3 - I - 0x003E71 00:FE61: 68        .byte $68   ; 
- D 3 - I - 0x003E72 00:FE62: 46        .byte $46   ; 
- D 3 - I - 0x003E73 00:FE63: 2A        .byte $2A   ; 
- D 3 - I - 0x003E74 00:FE64: 22        .byte $22   ; 
- D 3 - I - 0x003E75 00:FE65: 06        .byte $06   ; 
- D 3 - I - 0x003E76 00:FE66: 2A        .byte $2A   ; 
- D 3 - I - 0x003E77 00:FE67: 22        .byte $22   ; 
- D 3 - I - 0x003E78 00:FE68: 06        .byte $06   ; 
- D 3 - I - 0x003E79 00:FE69: 50        .byte $50   ; 
- D 3 - I - 0x003E7A 00:FE6A: 26        .byte $26   ; 
- D 3 - I - 0x003E7B 00:FE6B: 26        .byte $26   ; 
- D 3 - I - 0x003E7C 00:FE6C: 10        .byte $10   ; 
- D 3 - I - 0x003E7D 00:FE6D: 10        .byte $10   ; 
- D 3 - I - 0x003E7E 00:FE6E: 26        .byte $26   ; 
- D 3 - I - 0x003E7F 00:FE6F: 26        .byte $26   ; 
- D 3 - I - 0x003E80 00:FE70: 22        .byte $22   ; 
- D 3 - I - 0x003E81 00:FE71: 66        .byte $66   ; 
- D 3 - I - 0x003E82 00:FE72: 6A        .byte $6A   ; 
- D 3 - I - 0x003E83 00:FE73: 6A        .byte $6A   ; 
- D 3 - I - 0x003E84 00:FE74: 0A        .byte $0A   ; 
- D 3 - I - 0x003E85 00:FE75: 8E        .byte $8E   ; 
- D 3 - I - 0x003E86 00:FE76: 41        .byte $41   ; 
- D 3 - I - 0x003E87 00:FE77: A0        .byte $A0   ; 
- D 3 - I - 0x003E88 00:FE78: A0        .byte $A0   ; 
- D 3 - I - 0x003E89 00:FE79: A0        .byte $A0   ; 
- D 3 - I - 0x003E8A 00:FE7A: A0        .byte $A0   ; 
- D 3 - I - 0x003E8B 00:FE7B: A0        .byte $A0   ; 
- D 3 - I - 0x003E8C 00:FE7C: A0        .byte $A0   ; 
- D 3 - I - 0x003E8D 00:FE7D: A0        .byte $A0   ; 
- D 3 - I - 0x003E8E 00:FE7E: 60        .byte $60   ; 
- D 3 - I - 0x003E8F 00:FE7F: E0        .byte $E0   ; 
- D 3 - I - 0x003E90 00:FE80: E0        .byte $E0   ; 
- D 3 - I - 0x003E91 00:FE81: 20        .byte $20   ; 
- D 3 - I - 0x003E92 00:FE82: 60        .byte $60   ; 
- D 3 - I - 0x003E93 00:FE83: 60        .byte $60   ; 
- D 3 - I - 0x003E94 00:FE84: 60        .byte $60   ; 
- D 3 - I - 0x003E95 00:FE85: 20        .byte $20   ; 
- D 3 - I - 0x003E96 00:FE86: A0        .byte $A0   ; 



_off_001_FE87_02:
- D 3 - I - 0x003E97 00:FE87: 22        .byte $22   ; 
- D 3 - I - 0x003E98 00:FE88: 26        .byte $26   ; 
- D 3 - I - 0x003E99 00:FE89: 22        .byte $22   ; 
- D 3 - I - 0x003E9A 00:FE8A: 26        .byte $26   ; 
- D 3 - I - 0x003E9B 00:FE8B: 22        .byte $22   ; 
- D 3 - I - 0x003E9C 00:FE8C: 26        .byte $26   ; 
- D 3 - I - 0x003E9D 00:FE8D: 26        .byte $26   ; 
- D 3 - I - 0x003E9E 00:FE8E: 2A        .byte $2A   ; 
- D 3 - I - 0x003E9F 00:FE8F: 26        .byte $26   ; 
- D 3 - I - 0x003EA0 00:FE90: 2A        .byte $2A   ; 
- D 3 - I - 0x003EA1 00:FE91: 26        .byte $26   ; 
- D 3 - I - 0x003EA2 00:FE92: 2A        .byte $2A   ; 
- D 3 - I - 0x003EA3 00:FE93: 2A        .byte $2A   ; 
- D 3 - I - 0x003EA4 00:FE94: 2C        .byte $2C   ; 
- D 3 - I - 0x003EA5 00:FE95: 2A        .byte $2A   ; 
- D 3 - I - 0x003EA6 00:FE96: 2C        .byte $2C   ; 
- D 3 - I - 0x003EA7 00:FE97: 2A        .byte $2A   ; 
- D 3 - I - 0x003EA8 00:FE98: 2C        .byte $2C   ; 
- D 3 - I - 0x003EA9 00:FE99: 46        .byte $46   ; 
- D 3 - I - 0x003EAA 00:FE9A: 6E        .byte $6E   ; 
- D 3 - I - 0x003EAB 00:FE9B: 66        .byte $66   ; 
- D 3 - I - 0x003EAC 00:FE9C: 6B        .byte $6B   ; 
- D 3 - I - 0x003EAD 00:FE9D: 6F        .byte $6F   ; 
- D 3 - I - 0x003EAE 00:FE9E: 46        .byte $46   ; 
- D 3 - I - 0x003EAF 00:FE9F: 4A        .byte $4A   ; 
- D 3 - I - 0x003EB0 00:FEA0: 4E        .byte $4E   ; 
- D 3 - I - 0x003EB1 00:FEA1: 47        .byte $47   ; 
- D 3 - I - 0x003EB2 00:FEA2: 6E        .byte $6E   ; 
- D 3 - I - 0x003EB3 00:FEA3: 46        .byte $46   ; 
- D 3 - I - 0x003EB4 00:FEA4: 4A        .byte $4A   ; 
- D 3 - I - 0x003EB5 00:FEA5: 6D        .byte $6D   ; 
- D 3 - I - 0x003EB6 00:FEA6: 67        .byte $67   ; 
- D 3 - I - 0x003EB7 00:FEA7: 62        .byte $62   ; 
- D 3 - I - 0x003EB8 00:FEA8: 62        .byte $62   ; 
- D 3 - I - 0x003EB9 00:FEA9: 62        .byte $62   ; 
- D 3 - I - 0x003EBA 00:FEAA: 67        .byte $67   ; 
- D 3 - I - 0x003EBB 00:FEAB: 67        .byte $67   ; 
- D 3 - I - 0x003EBC 00:FEAC: 6B        .byte $6B   ; 
- D 3 - I - 0x003EBD 00:FEAD: 00        .byte $00   ; 
- D 3 - I - 0x003EBE 00:FEAE: 6D        .byte $6D   ; 
- D 3 - I - 0x003EBF 00:FEAF: 47        .byte $47   ; 
- D 3 - I - 0x003EC0 00:FEB0: 4B        .byte $4B   ; 
- D 3 - I - 0x003EC1 00:FEB1: 50        .byte $50   ; 
- D 3 - I - 0x003EC2 00:FEB2: 4E        .byte $4E   ; 
- D 3 - I - 0x003EC3 00:FEB3: 46        .byte $46   ; 
- D 3 - I - 0x003EC4 00:FEB4: 4B        .byte $4B   ; 
- D 3 - I - 0x003EC5 00:FEB5: 55        .byte $55   ; 
- D 3 - I - 0x003EC6 00:FEB6: 50        .byte $50   ; 
- D 3 - I - 0x003EC7 00:FEB7: 54        .byte $54   ; 
- D 3 - I - 0x003EC8 00:FEB8: 56        .byte $56   ; 
- D 3 - I - 0x003EC9 00:FEB9: 51        .byte $51   ; 
- D 3 - I - 0x003ECA 00:FEBA: 4E        .byte $4E   ; 
- D 3 - I - 0x003ECB 00:FEBB: 50        .byte $50   ; 
- D 3 - I - 0x003ECC 00:FEBC: 54        .byte $54   ; 
- D 3 - I - 0x003ECD 00:FEBD: 4B        .byte $4B   ; 
- D 3 - I - 0x003ECE 00:FEBE: 4F        .byte $4F   ; 
- D 3 - I - 0x003ECF 00:FEBF: 34        .byte $34   ; 
- D 3 - I - 0x003ED0 00:FEC0: 18        .byte $18   ; 
- D 3 - I - 0x003ED1 00:FEC1: 34        .byte $34   ; 
- D 3 - I - 0x003ED2 00:FEC2: 18        .byte $18   ; 
- D 3 - I - 0x003ED3 00:FEC3: 34        .byte $34   ; 
- D 3 - I - 0x003ED4 00:FEC4: 18        .byte $18   ; 
- D 3 - I - 0x003ED5 00:FEC5: 59        .byte $59   ; 
- D 3 - I - 0x003ED6 00:FEC6: 59        .byte $59   ; 
- D 3 - I - 0x003ED7 00:FEC7: 5D        .byte $5D   ; 
- D 3 - I - 0x003ED8 00:FEC8: 66        .byte $66   ; 
- D 3 - I - 0x003ED9 00:FEC9: 6A        .byte $6A   ; 
- D 3 - I - 0x003EDA 00:FECA: 6C        .byte $6C   ; 
- D 3 - I - 0x003EDB 00:FECB: 66        .byte $66   ; 
- D 3 - I - 0x003EDC 00:FECC: 6A        .byte $6A   ; 
- D 3 - I - 0x003EDD 00:FECD: 6C        .byte $6C   ; 
- D 3 - I - 0x003EDE 00:FECE: 66        .byte $66   ; 
- D 3 - I - 0x003EDF 00:FECF: 6A        .byte $6A   ; 
- D 3 - I - 0x003EE0 00:FED0: 6C        .byte $6C   ; 
- D 3 - I - 0x003EE1 00:FED1: 66        .byte $66   ; 
- D 3 - I - 0x003EE2 00:FED2: 6A        .byte $6A   ; 
- D 3 - I - 0x003EE3 00:FED3: 6C        .byte $6C   ; 
- D 3 - I - 0x003EE4 00:FED4: 66        .byte $66   ; 
- D 3 - I - 0x003EE5 00:FED5: 6A        .byte $6A   ; 
- D 3 - I - 0x003EE6 00:FED6: 6C        .byte $6C   ; 
- D 3 - I - 0x003EE7 00:FED7: 66        .byte $66   ; 
- D 3 - I - 0x003EE8 00:FED8: 6A        .byte $6A   ; 
- D 3 - I - 0x003EE9 00:FED9: 6C        .byte $6C   ; 
- D 3 - I - 0x003EEA 00:FEDA: 66        .byte $66   ; 
- D 3 - I - 0x003EEB 00:FEDB: 6A        .byte $6A   ; 
- D 3 - I - 0x003EEC 00:FEDC: 6C        .byte $6C   ; 
- D 3 - I - 0x003EED 00:FEDD: 66        .byte $66   ; 
- D 3 - I - 0x003EEE 00:FEDE: 6A        .byte $6A   ; 
- D 3 - I - 0x003EEF 00:FEDF: 6C        .byte $6C   ; 
- D 3 - I - 0x003EF0 00:FEE0: 66        .byte $66   ; 
- D 3 - I - 0x003EF1 00:FEE1: 6A        .byte $6A   ; 
- D 3 - I - 0x003EF2 00:FEE2: 6C        .byte $6C   ; 
- D 3 - I - 0x003EF3 00:FEE3: 66        .byte $66   ; 
- D 3 - I - 0x003EF4 00:FEE4: 6A        .byte $6A   ; 
- D 3 - I - 0x003EF5 00:FEE5: 6C        .byte $6C   ; 
- D 3 - I - 0x003EF6 00:FEE6: 67        .byte $67   ; 
- D 3 - I - 0x003EF7 00:FEE7: 6C        .byte $6C   ; 
- D 3 - I - 0x003EF8 00:FEE8: 6C        .byte $6C   ; 
- D 3 - I - 0x003EF9 00:FEE9: 6C        .byte $6C   ; 
- D 3 - I - 0x003EFA 00:FEEA: 66        .byte $66   ; 
- D 3 - I - 0x003EFB 00:FEEB: 66        .byte $66   ; 
- D 3 - I - 0x003EFC 00:FEEC: 66        .byte $66   ; 
- D 3 - I - 0x003EFD 00:FEED: 66        .byte $66   ; 
- D 3 - I - 0x003EFE 00:FEEE: 66        .byte $66   ; 
- D 3 - I - 0x003EFF 00:FEEF: 66        .byte $66   ; 
- D 3 - I - 0x003F00 00:FEF0: 6A        .byte $6A   ; 
- D 3 - I - 0x003F01 00:FEF1: 6A        .byte $6A   ; 
- D 3 - I - 0x003F02 00:FEF2: 6A        .byte $6A   ; 



_off_001_FEF3_05:
- D 3 - I - 0x003F03 00:FEF3: 03        .byte $03   ; 
- D 3 - I - 0x003F04 00:FEF4: 03        .byte $03   ; 
- D 3 - I - 0x003F05 00:FEF5: 00        .byte $00   ; 
- D 3 - I - 0x003F06 00:FEF6: 76        .byte $76   ; 
- D 3 - I - 0x003F07 00:FEF7: 82        .byte $82   ; 
- D 3 - I - 0x003F08 00:FEF8: 76        .byte $76   ; 
- D 3 - I - 0x003F09 00:FEF9: 82        .byte $82   ; 
- D 3 - I - 0x003F0A 00:FEFA: 76        .byte $76   ; 
- D 3 - I - 0x003F0B 00:FEFB: 82        .byte $82   ; 
- D 3 - I - 0x003F0C 00:FEFC: 2B        .byte $2B   ; 



_off_001_FEFD_06:
- D 3 - I - 0x003F0D 00:FEFD: 42        .byte $42   ; 
- D 3 - I - 0x003F0E 00:FEFE: 00        .byte $00   ; 
- D 3 - I - 0x003F0F 00:FEFF: 44        .byte $44   ; 



tbl_FF00:
- D 3 - - - 0x003F10 00:FF00: 06        .byte $06, $AE   ; 
- - - - - - 0x003F12 00:FF02: 00        .byte $00, $00   ; 
- D 3 - - - 0x003F14 00:FF04: 00        .byte $00, $69   ; 
- D 3 - - - 0x003F16 00:FF06: 00        .byte $00, $D4   ; 
- - - - - - 0x003F18 00:FF08: 00        .byte $00, $C8   ; 
- D 3 - - - 0x003F1A 00:FF0A: 00        .byte $00, $BD   ; 
- - - - - - 0x003F1C 00:FF0C: 00        .byte $00, $B2   ; 
- D 3 - - - 0x003F1E 00:FF0E: 00        .byte $00, $A8   ; 
- D 3 - - - 0x003F20 00:FF10: 00        .byte $00, $9F   ; 
- - - - - - 0x003F22 00:FF12: 00        .byte $00, $96   ; 
- D 3 - - - 0x003F24 00:FF14: 00        .byte $00, $8D   ; 
- D 3 - - - 0x003F26 00:FF16: 00        .byte $00, $7E   ; 
- D 3 - - - 0x003F28 00:FF18: 01        .byte $01, $AB   ; 
- - - - - - 0x003F2A 00:FF1A: 01        .byte $01, $93   ; 
- D 3 - - - 0x003F2C 00:FF1C: 01        .byte $01, $7C   ; 
- D 3 - - - 0x003F2E 00:FF1E: 01        .byte $01, $67   ; 
- D 3 - - - 0x003F30 00:FF20: 01        .byte $01, $52   ; 
- D 3 - - - 0x003F32 00:FF22: 01        .byte $01, $3F   ; 
- D 3 - - - 0x003F34 00:FF24: 01        .byte $01, $2D   ; 
- D 3 - - - 0x003F36 00:FF26: 01        .byte $01, $1C   ; 
- D 3 - - - 0x003F38 00:FF28: 01        .byte $01, $0C   ; 
- D 3 - - - 0x003F3A 00:FF2A: 00        .byte $00, $FD   ; 
- D 3 - - - 0x003F3C 00:FF2C: 00        .byte $00, $EE   ; 
- D 3 - - - 0x003F3E 00:FF2E: 00        .byte $00, $E1   ; 
- D 3 - - - 0x003F40 00:FF30: 03        .byte $03, $57   ; 
- D 3 - - - 0x003F42 00:FF32: 02        .byte $02, $3A   ; 
- D 3 - - - 0x003F44 00:FF34: 02        .byte $02, $1A   ; 
- D 3 - - - 0x003F46 00:FF36: 01        .byte $01, $FC   ; 
- D 3 - - - 0x003F48 00:FF38: 01        .byte $01, $DF   ; 
- D 3 - - - 0x003F4A 00:FF3A: 01        .byte $01, $C4   ; 
- D 3 - - - 0x003F4C 00:FF3C: 07        .byte $07, $FA   ; 



tbl_FF3E:
- D 3 - - - 0x003F4E 00:FF3E: 04        .byte $04   ; 
- D 3 - - - 0x003F4F 00:FF3F: 08        .byte $08   ; 
- D 3 - - - 0x003F50 00:FF40: 10        .byte $10   ; 
- D 3 - - - 0x003F51 00:FF41: 20        .byte $20   ; 
- D 3 - - - 0x003F52 00:FF42: 05        .byte $05   ; 
- D 3 - - - 0x003F53 00:FF43: 18        .byte $18   ; 
- - - - - - 0x003F54 00:FF44: 0A        .byte $0A   ; 
- D 3 - - - 0x003F55 00:FF45: 06        .byte $06   ; 
- D 3 - - - 0x003F56 00:FF46: 05        .byte $05   ; 
- D 3 - - - 0x003F57 00:FF47: 0A        .byte $0A   ; 
- - - - - - 0x003F58 00:FF48: 14        .byte $14   ; 
- - - - - - 0x003F59 00:FF49: 28        .byte $28   ; 
- - - - - - 0x003F5A 00:FF4A: 50        .byte $50   ; 
- D 3 - - - 0x003F5B 00:FF4B: 1E        .byte $1E   ; 
- - - - - - 0x003F5C 00:FF4C: 3C        .byte $3C   ; 
- D 3 - - - 0x003F5D 00:FF4D: 07        .byte $07   ; 
- D 3 - - - 0x003F5E 00:FF4E: 0E        .byte $0E   ; 
- D 3 - - - 0x003F5F 00:FF4F: 1C        .byte $1C   ; 
- D 3 - - - 0x003F60 00:FF50: 38        .byte $38   ; 
- D 3 - - - 0x003F61 00:FF51: 70        .byte $70   ; 
- D 3 - - - 0x003F62 00:FF52: 2A        .byte $2A   ; 



sub_FF53:
C - - - - - 0x003F63 00:FF53: AA        TAX
C - - - - - 0x003F64 00:FF54: 6A        ROR
C - - - - - 0x003F65 00:FF55: 8A        TXA
C - - - - - 0x003F66 00:FF56: 2A        ROL
C - - - - - 0x003F67 00:FF57: 2A        ROL
C - - - - - 0x003F68 00:FF58: 2A        ROL
C - - - - - 0x003F69 00:FF59: 29 07     AND #$07
C - - - - - 0x003F6B 00:FF5B: 18        CLC
C - - - - - 0x003F6C 00:FF5C: 6D F0 07  ADC ram_07F0
C - - - - - 0x003F6F 00:FF5F: A8        TAY
C - - - - - 0x003F70 00:FF60: B9 3E FF  LDA tbl_FF3E,Y
C - - - - - 0x003F73 00:FF63: 60        RTS



_off_001_FF64_00:
- D 3 - I - 0x003F74 00:FF64: 82        .byte $82   ; 
- D 3 - I - 0x003F75 00:FF65: 60        .byte $60   ; 
- D 3 - I - 0x003F76 00:FF66: 42        .byte $42   ; 
- D 3 - I - 0x003F77 00:FF67: 66        .byte $66   ; 
- D 3 - I - 0x003F78 00:FF68: 42        .byte $42   ; 
- D 3 - I - 0x003F79 00:FF69: 46        .byte $46   ; 
- D 3 - I - 0x003F7A 00:FF6A: 42        .byte $42   ; 
- D 3 - I - 0x003F7B 00:FF6B: 60        .byte $60   ; 
- D 3 - I - 0x003F7C 00:FF6C: 66        .byte $66   ; 
- D 3 - I - 0x003F7D 00:FF6D: 42        .byte $42   ; 
- D 3 - I - 0x003F7E 00:FF6E: 47        .byte $47   ; 
- D 3 - I - 0x003F7F 00:FF6F: C2        .byte $C2   ; 
- D 3 - I - 0x003F80 00:FF70: 68        .byte $68   ; 
- D 3 - I - 0x003F81 00:FF71: 42        .byte $42   ; 
- D 3 - I - 0x003F82 00:FF72: 6E        .byte $6E   ; 
- D 3 - I - 0x003F83 00:FF73: 42        .byte $42   ; 
- D 3 - I - 0x003F84 00:FF74: 4E        .byte $4E   ; 
- D 3 - I - 0x003F85 00:FF75: 42        .byte $42   ; 
- D 3 - I - 0x003F86 00:FF76: 68        .byte $68   ; 
- D 3 - I - 0x003F87 00:FF77: 6E        .byte $6E   ; 
- D 3 - I - 0x003F88 00:FF78: 42        .byte $42   ; 
- D 3 - I - 0x003F89 00:FF79: 4F        .byte $4F   ; 
- D 3 - I - 0x003F8A 00:FF7A: C2        .byte $C2   ; 
- D 3 - I - 0x003F8B 00:FF7B: 0B        .byte $0B   ; 
- D 3 - I - 0x003F8C 00:FF7C: 03        .byte $03   ; 
- D 3 - I - 0x003F8D 00:FF7D: C7        .byte $C7   ; 
- D 3 - I - 0x003F8E 00:FF7E: 0B        .byte $0B   ; 
- D 3 - I - 0x003F8F 00:FF7F: 03        .byte $03   ; 
- D 3 - I - 0x003F90 00:FF80: C7        .byte $C7   ; 
- D 3 - I - 0x003F91 00:FF81: 2B        .byte $2B   ; 
- D 3 - I - 0x003F92 00:FF82: 03        .byte $03   ; 
- D 3 - I - 0x003F93 00:FF83: E7        .byte $E7   ; 
- D 3 - I - 0x003F94 00:FF84: A2        .byte $A2   ; 
- D 3 - I - 0x003F95 00:FF85: 23        .byte $23   ; 
- D 3 - I - 0x003F96 00:FF86: 03        .byte $03   ; 
- D 3 - I - 0x003F97 00:FF87: E1        .byte $E1   ; 
- D 3 - I - 0x003F98 00:FF88: 5E        .byte $5E   ; 
- D 3 - I - 0x003F99 00:FF89: 5D        .byte $5D   ; 
- D 3 - I - 0x003F9A 00:FF8A: 58        .byte $58   ; 
- D 3 - I - 0x003F9B 00:FF8B: A0        .byte $A0   ; 
- D 3 - I - 0x003F9C 00:FF8C: A2        .byte $A2   ; 
- D 3 - I - 0x003F9D 00:FF8D: A4        .byte $A4   ; 
- D 3 - I - 0x003F9E 00:FF8E: 66        .byte $66   ; 
- D 3 - I - 0x003F9F 00:FF8F: C6        .byte $C6   ; 
- D 3 - I - 0x003FA0 00:FF90: 00        .byte $00   ; 
- D 3 - I - 0x003FA1 00:FF91: 82        .byte $82   ; 
- D 3 - I - 0x003FA2 00:FF92: 58        .byte $58   ; 
- D 3 - I - 0x003FA3 00:FF93: 42        .byte $42   ; 
- D 3 - I - 0x003FA4 00:FF94: 60        .byte $60   ; 
- D 3 - I - 0x003FA5 00:FF95: 42        .byte $42   ; 
- D 3 - I - 0x003FA6 00:FF96: 66        .byte $66   ; 
- D 3 - I - 0x003FA7 00:FF97: 42        .byte $42   ; 
- D 3 - I - 0x003FA8 00:FF98: 58        .byte $58   ; 
- D 3 - I - 0x003FA9 00:FF99: 60        .byte $60   ; 
- D 3 - I - 0x003FAA 00:FF9A: 42        .byte $42   ; 
- D 3 - I - 0x003FAB 00:FF9B: 67        .byte $67   ; 
- D 3 - I - 0x003FAC 00:FF9C: C2        .byte $C2   ; 
- D 3 - I - 0x003FAD 00:FF9D: 60        .byte $60   ; 
- D 3 - I - 0x003FAE 00:FF9E: 42        .byte $42   ; 
- D 3 - I - 0x003FAF 00:FF9F: 68        .byte $68   ; 
- D 3 - I - 0x003FB0 00:FFA0: 42        .byte $42   ; 
- D 3 - I - 0x003FB1 00:FFA1: 6E        .byte $6E   ; 
- D 3 - I - 0x003FB2 00:FFA2: 42        .byte $42   ; 
- D 3 - I - 0x003FB3 00:FFA3: 60        .byte $60   ; 
- D 3 - I - 0x003FB4 00:FFA4: 68        .byte $68   ; 
- D 3 - I - 0x003FB5 00:FFA5: 42        .byte $42   ; 
- D 3 - I - 0x003FB6 00:FFA6: 6F        .byte $6F   ; 
- D 3 - I - 0x003FB7 00:FFA7: C2        .byte $C2   ; 
- D 3 - I - 0x003FB8 00:FFA8: 2B        .byte $2B   ; 
- D 3 - I - 0x003FB9 00:FFA9: 03        .byte $03   ; 
- D 3 - I - 0x003FBA 00:FFAA: EB        .byte $EB   ; 
- D 3 - I - 0x003FBB 00:FFAB: 2B        .byte $2B   ; 
- D 3 - I - 0x003FBC 00:FFAC: 03        .byte $03   ; 
- D 3 - I - 0x003FBD 00:FFAD: EB        .byte $EB   ; 
- D 3 - I - 0x003FBE 00:FFAE: 23        .byte $23   ; 
- D 3 - I - 0x003FBF 00:FFAF: 03        .byte $03   ; 
- D 3 - I - 0x003FC0 00:FFB0: E3        .byte $E3   ; 
- D 3 - I - 0x003FC1 00:FFB1: 9C        .byte $9C   ; 
- D 3 - I - 0x003FC2 00:FFB2: 1D        .byte $1D   ; 
- D 3 - I - 0x003FC3 00:FFB3: 03        .byte $03   ; 
- D 3 - I - 0x003FC4 00:FFB4: D9        .byte $D9   ; 
- D 3 - I - 0x003FC5 00:FFB5: 78        .byte $78   ; 
- D 3 - I - 0x003FC6 00:FFB6: 7B        .byte $7B   ; 
- D 3 - I - 0x003FC7 00:FFB7: 72        .byte $72   ; 
- D 3 - I - 0x003FC8 00:FFB8: 98        .byte $98   ; 
- D 3 - I - 0x003FC9 00:FFB9: 98        .byte $98   ; 
- D 3 - I - 0x003FCA 00:FFBA: 9C        .byte $9C   ; 
- D 3 - I - 0x003FCB 00:FFBB: 62        .byte $62   ; 
- D 3 - I - 0x003FCC 00:FFBC: E0        .byte $E0   ; 
- D 3 - I - 0x003FCD 00:FFBD: 98        .byte $98   ; 
- D 3 - I - 0x003FCE 00:FFBE: A6        .byte $A6   ; 
- D 3 - I - 0x003FCF 00:FFBF: 98        .byte $98   ; 
- D 3 - I - 0x003FD0 00:FFC0: A6        .byte $A6   ; 
- D 3 - I - 0x003FD1 00:FFC1: 98        .byte $98   ; 
- D 3 - I - 0x003FD2 00:FFC2: A6        .byte $A6   ; 
- D 3 - I - 0x003FD3 00:FFC3: 98        .byte $98   ; 
- D 3 - I - 0x003FD4 00:FFC4: A6        .byte $A6   ; 
- D 3 - I - 0x003FD5 00:FFC5: A0        .byte $A0   ; 
- D 3 - I - 0x003FD6 00:FFC6: AE        .byte $AE   ; 
- D 3 - I - 0x003FD7 00:FFC7: A0        .byte $A0   ; 
- D 3 - I - 0x003FD8 00:FFC8: AE        .byte $AE   ; 
- D 3 - I - 0x003FD9 00:FFC9: A0        .byte $A0   ; 
- D 3 - I - 0x003FDA 00:FFCA: AE        .byte $AE   ; 
- D 3 - I - 0x003FDB 00:FFCB: A0        .byte $A0   ; 
- D 3 - I - 0x003FDC 00:FFCC: AE        .byte $AE   ; 
- D 3 - I - 0x003FDD 00:FFCD: 9C        .byte $9C   ; 
- D 3 - I - 0x003FDE 00:FFCE: EA        .byte $EA   ; 
- D 3 - I - 0x003FDF 00:FFCF: 9C        .byte $9C   ; 
- D 3 - I - 0x003FE0 00:FFD0: E6        .byte $E6   ; 
- D 3 - I - 0x003FE1 00:FFD1: E2        .byte $E2   ; 
- D 3 - I - 0x003FE2 00:FFD2: 60        .byte $60   ; 
- D 3 - I - 0x003FE3 00:FFD3: A6        .byte $A6   ; 
- D 3 - I - 0x003FE4 00:FFD4: AA        .byte $AA   ; 
- D 3 - I - 0x003FE5 00:FFD5: AA        .byte $AA   ; 
- D 3 - I - 0x003FE6 00:FFD6: 4A        .byte $4A   ; 
- D 3 - I - 0x003FE7 00:FFD7: E6        .byte $E6   ; 
- D 3 - I - 0x003FE8 00:FFD8: 80        .byte $80   ; 
- D 3 - I - 0x003FE9 00:FFD9: E0        .byte $E0   ; 
- D 3 - I - 0x003FEA 00:FFDA: E0        .byte $E0   ; 
- D 3 - I - 0x003FEB 00:FFDB: E0        .byte $E0   ; 
- D 3 - I - 0x003FEC 00:FFDC: E0        .byte $E0   ; 
- D 3 - I - 0x003FED 00:FFDD: E0        .byte $E0   ; 
- D 3 - I - 0x003FEE 00:FFDE: E0        .byte $E0   ; 
- D 3 - I - 0x003FEF 00:FFDF: E0        .byte $E0   ; 
- D 3 - I - 0x003FF0 00:FFE0: A0        .byte $A0   ; 
- D 3 - I - 0x003FF1 00:FFE1: A0        .byte $A0   ; 
- D 3 - I - 0x003FF2 00:FFE2: C0        .byte $C0   ; 
- D 3 - I - 0x003FF3 00:FFE3: A0        .byte $A0   ; 
- D 3 - I - 0x003FF4 00:FFE4: E0        .byte $E0   ; 
- D 3 - I - 0x003FF5 00:FFE5: 50        .byte $50   ; 
- D 3 - I - 0x003FF6 00:FFE6: E0        .byte $E0   ; 
- D 3 - I - 0x003FF7 00:FFE7: A0        .byte $A0   ; 
- D 3 - I - 0x003FF8 00:FFE8: A0        .byte $A0   ; 
- D 3 - I - 0x003FF9 00:FFE9: A0        .byte $A0   ; 
- D 3 - I - 0x003FFA 00:FFEA: 60        .byte $60   ; 
- D 3 - I - 0x003FFB 00:FFEB: 10        .byte $10   ; 
- D 3 - I - 0x003FFC 00:FFEC: 10        .byte $10   ; 
- D 3 - I - 0x003FFD 00:FFED: 10        .byte $10   ; 
- D 3 - I - 0x003FFE 00:FFEE: 10        .byte $10   ; 
- D 3 - I - 0x003FFF 00:FFEF: A0        .byte $A0   ; 



vec_FFF0_IRQ:
_off_001_FFF0_07:
- - - - - - 0x004000 00:FFF0: 83        .byte $83   ; 
- - - - - - 0x004001 00:FFF1: 00        .byte $00   ; 
- - - - - - 0x004002 00:FFF2: 04        .byte $04   ; 
- - - - - - 0x004003 00:FFF3: 14        .byte $14   ; 
- - - - - - 0x004004 00:FFF4: 04        .byte $04   ; 
- - - - - - 0x004005 00:FFF5: 14        .byte $14   ; 
- - - - - - 0x004006 00:FFF6: 04        .byte $04   ; 
- - - - - - 0x004007 00:FFF7: 14        .byte $14   ; 
- - - - - - 0x004008 00:FFF8: 04        .byte $04   ; 
- - - - - - 0x004009 00:FFF9: D4        .byte $D4   ; 



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: 3B C2     .word vec_C23B_NMI
- D 3 - - - 0x00400C 00:FFFC: 84 C1     .word vec_C184_RESET
- - - - - - 0x00400E 00:FFFE: F0 FF     .word vec_FFF0_IRQ



