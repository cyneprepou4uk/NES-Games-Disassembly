; .segment "BANK_06_s1"
; .include "bank_ram.inc"
; .include "bank_val.inc"
; 0x019CE8-0x019D75

; SRAM_1 (from bank_06)

; do not move these tables, because some of them
; are modified via code as SRAM addresses

.org $67F0



.export ofs_bat_67F0_bank_s1_asm_import
.export _off000_bat_67F0_09
.export _off000_bat_6814_03
.export _off000_bat_681C_06
.export _off000_bat_681C_17
.export tbl_bat_6827
.export _off000_bat_6847_29
.export _off000_bat_684F_2A
.export _off000_bat_6859_2B
.export _off000_bat_6865_2C
.export _off000_bat_6873_2E



ofs_bat_67F0_bank_s1_asm_import:    ; start position of SRAM_1



_off000_bat_67F0_09:
- D 0 - I - 0x019CE8 06:67F0: 3F        .byte $3F   ; 
- D 0 - I - 0x019CE9 06:67F1: 00        .byte $00   ; 
- D 0 - I - 0x019CEA 06:67F2: 20        .byte $20   ; 
- D 0 - I - 0x019CEB 06:67F3: 0F        .byte $0F   ; 
- D 0 - I - 0x019CEC 06:67F4: 30        .byte $30   ; 
- D 0 - I - 0x019CED 06:67F5: 00        .byte $00   ; 
- D 0 - I - 0x019CEE 06:67F6: 12        .byte $12   ; 
- D 0 - I - 0x019CEF 06:67F7: 0F        .byte $0F   ; 
- D 0 - I - 0x019CF0 06:67F8: 16        .byte $16   ; 
- D 0 - I - 0x019CF1 06:67F9: 27        .byte $27   ; 
- D 0 - I - 0x019CF2 06:67FA: 36        .byte $36   ; 
- D 0 - I - 0x019CF3 06:67FB: 0F        .byte $0F   ; 
- D 0 - I - 0x019CF4 06:67FC: 0C        .byte $0C   ; 
- D 0 - I - 0x019CF5 06:67FD: 1C        .byte $1C   ; 
- D 0 - I - 0x019CF6 06:67FE: 2C        .byte $2C   ; 
- D 0 - I - 0x019CF7 06:67FF: 0F        .byte $0F   ; 
- D 0 - I - 0x019CF8 06:6800: 12        .byte $12   ; 
- D 0 - I - 0x019CF9 06:6801: 1C        .byte $1C   ; 
- D 0 - I - 0x019CFA 06:6802: 2C        .byte $2C   ; 
- D 0 - I - 0x019CFB 06:6803: 0F        .byte $0F   ; 
- D 0 - I - 0x019CFC 06:6804: 29        .byte $29   ; ram_6804
- D 0 - I - 0x019CFD 06:6805: 27        .byte $27   ; 
- D 0 - I - 0x019CFE 06:6806: 07        .byte $07   ; 
- D 0 - I - 0x019CFF 06:6807: 0F        .byte $0F   ; 
- D 0 - I - 0x019D00 06:6808: 22        .byte $22   ; ram_6808
- D 0 - I - 0x019D01 06:6809: 27        .byte $27   ; 
- D 0 - I - 0x019D02 06:680A: 07        .byte $07   ; 
- D 0 - I - 0x019D03 06:680B: 0F        .byte $0F   ; 
- D 0 - I - 0x019D04 06:680C: 26        .byte $26   ; ram_680C
- D 0 - I - 0x019D05 06:680D: 27        .byte $27   ; 
- D 0 - I - 0x019D06 06:680E: 07        .byte $07   ; 
- D 0 - I - 0x019D07 06:680F: 0F        .byte $0F   ; 
- D 0 - I - 0x019D08 06:6810: 15        .byte $15   ; ram_6810
- D 0 - I - 0x019D09 06:6811: 27        .byte $27   ; 
- D 0 - I - 0x019D0A 06:6812: 30        .byte $30   ; 
- D 0 - I - 0x019D0B 06:6813: FF        .byte $FF   ; 



_off000_bat_6814_03:
- D 0 - I - 0x019D0C 06:6814: 3F        .byte $3F   ; 
- D 0 - I - 0x019D0D 06:6815: 1C        .byte $1C   ; 
- D 0 - I - 0x019D0E 06:6816: 04        .byte $04   ; 
- D 0 - I - 0x019D0F 06:6817: 0F        .byte $0F   ; ram_6817
- D 0 - I - 0x019D10 06:6818: 0F        .byte $0F   ; 
- D 0 - I - 0x019D11 06:6819: 0F        .byte $0F   ; 
- D 0 - I - 0x019D12 06:681A: 0F        .byte $0F   ; 
- D 0 - I - 0x019D13 06:681B: FF        .byte $FF   ; 



_off000_bat_681C_06:
_off000_bat_681C_17:
- D 0 - I - 0x019D14 06:681C: 20        .byte $20   ; 
- D 0 - I - 0x019D15 06:681D: 42        .byte $42   ; 
- D 0 - I - 0x019D16 06:681E: 07        .byte $07   ; 
- D 0 - I - 0x019D17 06:681F: 15        .byte $15   ; 
- D 0 - I - 0x019D18 06:6820: 0E        .byte $0E   ; 
- D 0 - I - 0x019D19 06:6821: 1F        .byte $1F   ; 
- D 0 - I - 0x019D1A 06:6822: 0E        .byte $0E   ; 
- D 0 - I - 0x019D1B 06:6823: 15        .byte $15   ; 
- D 0 - I - 0x019D1C 06:6824: 62        .byte $62   ; 
- D 0 - I - 0x019D1D 06:6825: 00        .byte $00   ; ram_6825
- D 0 - I - 0x019D1E 06:6826: FF        .byte $FF   ; 



tbl_bat_6827:
- D 0 - I - 0x019D1F 06:6827: D8 9B     .word _off006_0x015BE8_00   ; ram_6827   ram_6828
- D 0 - I - 0x019D21 06:6829: 0D 9C     .word _off006_0x015C1D_01
- D 0 - I - 0x019D23 06:682B: 3E 9C     .word _off006_0x015C4E_02
- D 0 - I - 0x019D25 06:682D: 80 9C     .word _off006_0x015C90_03
- D 0 - I - 0x019D27 06:682F: C4 9C     .word _off006_0x015CD4_04
- D 0 - I - 0x019D29 06:6831: F6 9C     .word _off006_0x015D06_05
- D 0 - I - 0x019D2B 06:6833: 32 9D     .word _off006_0x015D42_06
- D 0 - I - 0x019D2D 06:6835: 6D 9D     .word _off006_0x015D7D_07
- D 0 - I - 0x019D2F 06:6837: A8 9D     .word _off006_0x015DB8_08
- D 0 - I - 0x019D31 06:6839: E6 9D     .word _off006_0x015DF6_09
- D 0 - I - 0x019D33 06:683B: 27 9E     .word _off006_0x015E37_0A
- D 0 - I - 0x019D35 06:683D: 6C 9E     .word _off006_0x015E7C_0B
- D 0 - I - 0x019D37 06:683F: A9 9E     .word _off006_0x015EB9_0C
- D 0 - I - 0x019D39 06:6841: DF 9E     .word _off006_0x015EEF_0D
- D 0 - I - 0x019D3B 06:6843: 21 9F     .word _off006_0x015F31_0E
- D 0 - I - 0x019D3D 06:6845: 55 9F     .word _off006_0x015F65_0F



_off000_bat_6847_29:
- D 0 - I - 0x019D3F 06:6847: 2A        .byte $2A   ; 
- D 0 - I - 0x019D40 06:6848: EE        .byte $EE   ; 
- D 0 - I - 0x019D41 06:6849: 04        .byte $04   ; 
- D 0 - I - 0x019D42 06:684A: ED        .byte $ED   ; 
- D 0 - I - 0x019D43 06:684B: E9        .byte $E9   ; ram_684B
- D 0 - I - 0x019D44 06:684C: EA        .byte $EA   ; ram_684C
- D 0 - I - 0x019D45 06:684D: EE        .byte $EE   ; 
- D 0 - I - 0x019D46 06:684E: FF        .byte $FF   ; 



_off000_bat_684F_2A:
- D 0 - I - 0x019D47 06:684F: 2B        .byte $2B   ; 
- D 0 - I - 0x019D48 06:6850: 0D        .byte $0D   ; 
- D 0 - I - 0x019D49 06:6851: 06        .byte $06   ; 
- D 0 - I - 0x019D4A 06:6852: ED        .byte $ED   ; 
- D 0 - I - 0x019D4B 06:6853: E9        .byte $E9   ; ram_6853
- D 0 - I - 0x019D4C 06:6854: 24        .byte $24   ; ram_6854
- D 0 - I - 0x019D4D 06:6855: 24        .byte $24   ; ram_6855
- D 0 - I - 0x019D4E 06:6856: EA        .byte $EA   ; ram_6856
- D 0 - I - 0x019D4F 06:6857: EE        .byte $EE   ; 
- D 0 - I - 0x019D50 06:6858: FF        .byte $FF   ; 



_off000_bat_6859_2B:
- D 0 - I - 0x019D51 06:6859: 2B        .byte $2B   ; 
- D 0 - I - 0x019D52 06:685A: 2C        .byte $2C   ; 
- D 0 - I - 0x019D53 06:685B: 08        .byte $08   ; 
- D 0 - I - 0x019D54 06:685C: ED        .byte $ED   ; 
- D 0 - I - 0x019D55 06:685D: E9        .byte $E9   ; ram_685D
- D 0 - I - 0x019D56 06:685E: 24        .byte $24   ; ram_685E
- D 0 - I - 0x019D57 06:685F: 24        .byte $24   ; ram_685F
- D 0 - I - 0x019D58 06:6860: 24        .byte $24   ; ram_6860
- D 0 - I - 0x019D59 06:6861: 24        .byte $24   ; ram_6861
- D 0 - I - 0x019D5A 06:6862: EA        .byte $EA   ; ram_6862
- D 0 - I - 0x019D5B 06:6863: EE        .byte $EE   ; 
- D 0 - I - 0x019D5C 06:6864: FF        .byte $FF   ; 



_off000_bat_6865_2C:
- D 0 - I - 0x019D5D 06:6865: 2B        .byte $2B   ; 
- D 0 - I - 0x019D5E 06:6866: 4B        .byte $4B   ; 
- D 0 - I - 0x019D5F 06:6867: 0A        .byte $0A   ; 
- D 0 - I - 0x019D60 06:6868: ED        .byte $ED   ; 
- D 0 - I - 0x019D61 06:6869: E9        .byte $E9   ; ram_6869
- D 0 - I - 0x019D62 06:686A: 24        .byte $24   ; ram_686A
- D 0 - I - 0x019D63 06:686B: 24        .byte $24   ; ram_686B
- D 0 - I - 0x019D64 06:686C: 24        .byte $24   ; ram_686C
- D 0 - I - 0x019D65 06:686D: 24        .byte $24   ; ram_686D
- D 0 - I - 0x019D66 06:686E: 24        .byte $24   ; ram_686E
- D 0 - I - 0x019D67 06:686F: 24        .byte $24   ; ram_686F
- D 0 - I - 0x019D68 06:6870: EA        .byte $EA   ; ram_6870
- D 0 - I - 0x019D69 06:6871: EE        .byte $EE   ; 
- D 0 - I - 0x019D6A 06:6872: FF        .byte $FF   ; 



_off000_bat_6873_2E:
- D 0 - I - 0x019D6B 06:6873: 2B        .byte $2B   ; 
- D 0 - I - 0x019D6C 06:6874: AC        .byte $AC   ; 
- D 0 - I - 0x019D6D 06:6875: 08        .byte $08   ; 
- D 0 - I - 0x019D6E 06:6876: 1D        .byte $1D   ; 
- D 0 - I - 0x019D6F 06:6877: 1B        .byte $1B   ; 
- D 0 - I - 0x019D70 06:6878: 12        .byte $12   ; 
- D 0 - I - 0x019D71 06:6879: 0F        .byte $0F   ; 
- D 0 - I - 0x019D72 06:687A: 18        .byte $18   ; 
- D 0 - I - 0x019D73 06:687B: 1B        .byte $1B   ; 
- D 0 - I - 0x019D74 06:687C: 0C        .byte $0C   ; 
- D 0 - I - 0x019D75 06:687D: 0E        .byte $0E   ; 



