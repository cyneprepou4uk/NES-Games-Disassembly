.segment "BANK_FF"
.include "copy_bank_ram.inc"
.org $C000  ; for listing file
; 0x01C010-0x02000F

.export tbl_0x01C010
tbl_0x01C010:
- D 2 - - - 0x01C010 07:C000: 80 C0     .word tbl_C080
.export sub_0x01C012
sub_0x01C012:
C - - - - - 0x01C012 07:C002: 4C E4 C2  JMP loc_C2E4
.export tbl_0x01C015
tbl_0x01C015:
.export sub_0x01C015
sub_0x01C015:
C D 2 - - - 0x01C015 07:C005: 4C 35 EE  JMP loc_EE35


; bzk
- - - - - - 0x01C018 07:C008: 4C D3 EE  JMP loc_EED3



.export sub_0x01C01B
sub_0x01C01B:
C - - - - - 0x01C01B 07:C00B: 4C 9A EE  JMP loc_EE9A


; bzk
- - - - - - 0x01C01E 07:C00E: 4C 7D EE  JMP loc_EE7D



.export sub_0x01C021
sub_0x01C021:
C - - - - - 0x01C021 07:C011: 4C A9 EC  JMP loc_ECA9
.export sub_0x01C024
sub_0x01C024:
C - - - - - 0x01C024 07:C014: 4C 65 EE  JMP loc_EE65
.export sub_0x01C027
sub_0x01C027:
C - - - - - 0x01C027 07:C017: 4C 71 EE  JMP loc_EE71
.export sub_0x01C02A
sub_0x01C02A:
C - - - - - 0x01C02A 07:C01A: 4C CB EC  JMP loc_ECCB
.export sub_0x01C02D
sub_0x01C02D:
C - - - - - 0x01C02D 07:C01D: 4C C1 EC  JMP loc_ECC1
.export sub_0x01C030
sub_0x01C030:
C - - - - - 0x01C030 07:C020: 4C 69 F4  JMP loc_F469


; bzk
- - - - - - 0x01C033 07:C023: 4C 39 F5  JMP loc_F539



.export sub_0x01C036
sub_0x01C036:
C - - - - - 0x01C036 07:C026: 4C C1 F4  JMP loc_F4C1
.export sub_0x01C039
sub_0x01C039:
C - - - - - 0x01C039 07:C029: 4C 64 F5  JMP loc_F564
.export sub_0x01C03C
sub_0x01C03C:
C - - - - - 0x01C03C 07:C02C: 4C 9B F5  JMP loc_F59B


; bzk
- - - - - - 0x01C03F 07:C02F: 4C E4 F5  JMP loc_F5E4



.export sub_0x01C042
sub_0x01C042:
C - - - - - 0x01C042 07:C032: 4C 7D F6  JMP loc_F67D
.export sub_0x01C045
sub_0x01C045:
C - - - - - 0x01C045 07:C035: 4C 91 F6  JMP loc_F691


; bzk
- - - - - - 0x01C048 07:C038: 4C 66 F6  JMP loc_F666
- - - - - - 0x01C04B 07:C03B: 4C 6A F9  JMP loc_F96A



.export sub_0x01C04E
sub_0x01C04E:
C - - - - - 0x01C04E 07:C03E: 4C DE F9  JMP loc_F9DE
.export sub_0x01C051
sub_0x01C051:
C - - - - - 0x01C051 07:C041: 4C 6D FA  JMP loc_FA6D
.export sub_0x01C054
sub_0x01C054:
C - - - - - 0x01C054 07:C044: 4C 47 D0  JMP loc_D047
.export sub_0x01C057
sub_0x01C057:
C - - - - - 0x01C057 07:C047: 4C 36 D0  JMP loc_D036
.export sub_0x01C05A
sub_0x01C05A:
C - - - - - 0x01C05A 07:C04A: 4C 62 D0  JMP loc_D062


; bzk
- - - - - - 0x01C05D 07:C04D: 4C 6D FA  JMP loc_FA6D



.export loc_0x01C060
loc_0x01C060:
C D 2 - - - 0x01C060 07:C050: 4C 44 C3  JMP loc_C344
.export sub_0x01C063
sub_0x01C063:
C - - - - - 0x01C063 07:C053: 4C 8F EC  JMP loc_EC8F
.export sub_0x01C066
sub_0x01C066:
C - - - - - 0x01C066 07:C056: 4C BD CE  JMP loc_CEBD
.export sub_0x01C069
sub_0x01C069:
C - - - - - 0x01C069 07:C059: 4C 4F D0  JMP loc_D04F
.export sub_0x01C06C
sub_0x01C06C:
C - - - - - 0x01C06C 07:C05C: 4C 73 D0  JMP loc_D073


; bzk
- - - - - - 0x01C06F 07:C05F: 4C 73 D0  JMP loc_D073



.export sub_0x01C072
sub_0x01C072:
C - - - - - 0x01C072 07:C062: 4C 54 EF  JMP loc_EF54
.export sub_0x01C075
sub_0x01C075:
C - - - - - 0x01C075 07:C065: 4C 8C EB  JMP loc_EB8C
.export sub_0x01C078
sub_0x01C078:
C - - - - - 0x01C078 07:C068: 4C 28 E8  JMP loc_E828
.export sub_0x01C07B
sub_0x01C07B:
C - - - - - 0x01C07B 07:C06B: 4C AD EF  JMP loc_EFAD
.export sub_0x01C07E
sub_0x01C07E:
C - - - - - 0x01C07E 07:C06E: 4C D5 D0  JMP loc_D0D5
.export sub_0x01C081
sub_0x01C081:
C - - - - - 0x01C081 07:C071: 4C 17 C3  JMP loc_C317


; bzk
- - - - - - 0x01C084 07:C074: 4C DB C4  JMP loc_C4DB



.export sub_0x01C087
sub_0x01C087:
C - - - - - 0x01C087 07:C077: 4C 0A EF  JMP loc_EF0A
.export sub_0x01C08A
sub_0x01C08A:
C - - - - - 0x01C08A 07:C07A: 4C EE FA  JMP loc_FAEE
.export sub_0x01C08D
sub_0x01C08D:
C - - - - - 0x01C08D 07:C07D: 4C 35 C3  JMP loc_C335



tbl_C080:
- D 2 - I - 0x01C090 07:C080: A0 C0     .word off_C0A0_00
- D 2 - I - 0x01C092 07:C082: DC C0     .word off_C0DC_01
- - - - - - 0x01C094 07:C084: 18 C1     .word off_C118_02
- D 2 - I - 0x01C096 07:C086: FA C0     .word off_C0FA_03
- - - - - - 0x01C098 07:C088: A0 C0     .word off_C0A0_04
- D 2 - I - 0x01C09A 07:C08A: 36 C1     .word off_C136_05
- - - - - - 0x01C09C 07:C08C: 54 C1     .word off_C154_06
- D 2 - I - 0x01C09E 07:C08E: 72 C1     .word off_C172_07
- - - - - - 0x01C0A0 07:C090: A0 C0     .word off_C0A0_08
- D 2 - I - 0x01C0A2 07:C092: 90 C1     .word off_C190_09
- - - - - - 0x01C0A4 07:C094: AE C1     .word off_C1AE_0A
- D 2 - I - 0x01C0A6 07:C096: CC C1     .word off_C1CC_0B
- - - - - - 0x01C0A8 07:C098: A0 C0     .word off_C0A0_0C
- D 2 - I - 0x01C0AA 07:C09A: EA C1     .word off_C1EA_0D
- D 2 - I - 0x01C0AC 07:C09C: 08 C2     .word off_C208_0E
- D 2 - I - 0x01C0AE 07:C09E: 26 C2     .word off_C226_0F



off_C0A0_00:
off_C0A0_04:
off_C0A0_08:
off_C0A0_0C:
- D 2 - I - 0x01C0B0 07:C0A0: A9        .byte $A9   ; 
- D 2 - I - 0x01C0B1 07:C0A1: B7        .byte $B7   ; 
- D 2 - I - 0x01C0B2 07:C0A2: A6        .byte $A6   ; 
- D 2 - I - 0x01C0B3 07:C0A3: FF        .byte $FF   ; 
- D 2 - I - 0x01C0B4 07:C0A4: FF        .byte $FF   ; 
- D 2 - I - 0x01C0B5 07:C0A5: C7        .byte $C7   ; 
- D 2 - I - 0x01C0B6 07:C0A6: C9        .byte $C9   ; 
- D 2 - I - 0x01C0B7 07:C0A7: B3        .byte $B3   ; 
- D 2 - I - 0x01C0B8 07:C0A8: B9        .byte $B9   ; 
- D 2 - I - 0x01C0B9 07:C0A9: FF        .byte $FF   ; 
- D 2 - I - 0x01C0BA 07:C0AA: AC        .byte $AC   ; 
- D 2 - I - 0x01C0BB 07:C0AB: 2D        .byte $2D   ; 
- D 2 - I - 0x01C0BC 07:C0AC: FF        .byte $FF   ; 
- D 2 - I - 0x01C0BD 07:C0AD: FF        .byte $FF   ; 
- D 2 - I - 0x01C0BE 07:C0AE: FF        .byte $FF   ; 
- D 2 - I - 0x01C0BF 07:C0AF: BF        .byte $BF   ; 
- D 2 - I - 0x01C0C0 07:C0B0: C9        .byte $C9   ; 
- D 2 - I - 0x01C0C1 07:C0B1: 3B        .byte $3B   ; 
- D 2 - I - 0x01C0C2 07:C0B2: B1        .byte $B1   ; 
- D 2 - I - 0x01C0C3 07:C0B3: FF        .byte $FF   ; 
- D 2 - I - 0x01C0C4 07:C0B4: A3        .byte $A3   ; 
- D 2 - I - 0x01C0C5 07:C0B5: CD        .byte $CD   ; 
- D 2 - I - 0x01C0C6 07:C0B6: A7        .byte $A7   ; 
- D 2 - I - 0x01C0C7 07:C0B7: 3E        .byte $3E   ; 
- D 2 - I - 0x01C0C8 07:C0B8: FF        .byte $FF   ; 
- D 2 - I - 0x01C0C9 07:C0B9: 2A        .byte $2A   ; 
- D 2 - I - 0x01C0CA 07:C0BA: CF        .byte $CF   ; 
- D 2 - I - 0x01C0CB 07:C0BB: A5        .byte $A5   ; 
- D 2 - I - 0x01C0CC 07:C0BC: A3        .byte $A3   ; 
- D 2 - I - 0x01C0CD 07:C0BD: FF        .byte $FF   ; 
- D 2 - I - 0x01C0CE 07:C0BE: A4        .byte $A4   ; 
- D 2 - I - 0x01C0CF 07:C0BF: 27        .byte $27   ; 
- D 2 - I - 0x01C0D0 07:C0C0: 2D        .byte $2D   ; 
- D 2 - I - 0x01C0D1 07:C0C1: CF        .byte $CF   ; 
- D 2 - I - 0x01C0D2 07:C0C2: FF        .byte $FF   ; 
- D 2 - I - 0x01C0D3 07:C0C3: A6        .byte $A6   ; 
- D 2 - I - 0x01C0D4 07:C0C4: B7        .byte $B7   ; 
- D 2 - I - 0x01C0D5 07:C0C5: B1        .byte $B1   ; 
- D 2 - I - 0x01C0D6 07:C0C6: AA        .byte $AA   ; 
- D 2 - I - 0x01C0D7 07:C0C7: FF        .byte $FF   ; 
- D 2 - I - 0x01C0D8 07:C0C8: A9        .byte $A9   ; 
- D 2 - I - 0x01C0D9 07:C0C9: C4        .byte $C4   ; 
- D 2 - I - 0x01C0DA 07:C0CA: CF        .byte $CF   ; 
- D 2 - I - 0x01C0DB 07:C0CB: FF        .byte $FF   ; 
- D 2 - I - 0x01C0DC 07:C0CC: FF        .byte $FF   ; 
- D 2 - I - 0x01C0DD 07:C0CD: A7        .byte $A7   ; 
- D 2 - I - 0x01C0DE 07:C0CE: A3        .byte $A3   ; 
- D 2 - I - 0x01C0DF 07:C0CF: 2E        .byte $2E   ; 
- D 2 - I - 0x01C0E0 07:C0D0: A8        .byte $A8   ; 
- D 2 - I - 0x01C0E1 07:C0D1: FF        .byte $FF   ; 
- D 2 - I - 0x01C0E2 07:C0D2: B3        .byte $B3   ; 
- D 2 - I - 0x01C0E3 07:C0D3: B9        .byte $B9   ; 
- D 2 - I - 0x01C0E4 07:C0D4: CE        .byte $CE   ; 
- D 2 - I - 0x01C0E5 07:C0D5: FF        .byte $FF   ; 
- D 2 - I - 0x01C0E6 07:C0D6: FF        .byte $FF   ; 
- D 2 - I - 0x01C0E7 07:C0D7: A7        .byte $A7   ; 
- D 2 - I - 0x01C0E8 07:C0D8: CA        .byte $CA   ; 
- D 2 - I - 0x01C0E9 07:C0D9: CC        .byte $CC   ; 
- D 2 - I - 0x01C0EA 07:C0DA: AE        .byte $AE   ; 
- D 2 - I - 0x01C0EB 07:C0DB: FF        .byte $FF   ; 



off_C0DC_01:
- D 2 - I - 0x01C0EC 07:C0DC: B2        .byte $B2   ; 
- D 2 - I - 0x01C0ED 07:C0DD: D3        .byte $D3   ; 
- D 2 - I - 0x01C0EE 07:C0DE: CF        .byte $CF   ; 
- D 2 - I - 0x01C0EF 07:C0DF: A3        .byte $A3   ; 
- D 2 - I - 0x01C0F0 07:C0E0: CA        .byte $CA   ; 
- D 2 - I - 0x01C0F1 07:C0E1: C7        .byte $C7   ; 
- D 2 - I - 0x01C0F2 07:C0E2: CF        .byte $CF   ; 
- D 2 - I - 0x01C0F3 07:C0E3: 35        .byte $35   ; 
- D 2 - I - 0x01C0F4 07:C0E4: A9        .byte $A9   ; 
- D 2 - I - 0x01C0F5 07:C0E5: FF        .byte $FF   ; 
- D 2 - I - 0x01C0F6 07:C0E6: C0        .byte $C0   ; 
- D 2 - I - 0x01C0F7 07:C0E7: CF        .byte $CF   ; 
- D 2 - I - 0x01C0F8 07:C0E8: AE        .byte $AE   ; 
- D 2 - I - 0x01C0F9 07:C0E9: FF        .byte $FF   ; 
- D 2 - I - 0x01C0FA 07:C0EA: FF        .byte $FF   ; 
- D 2 - I - 0x01C0FB 07:C0EB: C1        .byte $C1   ; 
- D 2 - I - 0x01C0FC 07:C0EC: CF        .byte $CF   ; 
- D 2 - I - 0x01C0FD 07:C0ED: BF        .byte $BF   ; 
- D 2 - I - 0x01C0FE 07:C0EE: FF        .byte $FF   ; 
- D 2 - I - 0x01C0FF 07:C0EF: FF        .byte $FF   ; 
- D 2 - I - 0x01C100 07:C0F0: C7        .byte $C7   ; 
- D 2 - I - 0x01C101 07:C0F1: CF        .byte $CF   ; 
- D 2 - I - 0x01C102 07:C0F2: AE        .byte $AE   ; 
- D 2 - I - 0x01C103 07:C0F3: FF        .byte $FF   ; 
- D 2 - I - 0x01C104 07:C0F4: FF        .byte $FF   ; 
- - - - - - 0x01C105 07:C0F5: AE        .byte $AE   ; 
- - - - - - 0x01C106 07:C0F6: CF        .byte $CF   ; 
- - - - - - 0x01C107 07:C0F7: B2        .byte $B2   ; 
- - - - - - 0x01C108 07:C0F8: D3        .byte $D3   ; 
- - - - - - 0x01C109 07:C0F9: CA        .byte $CA   ; 



off_C0FA_03:
- D 2 - I - 0x01C10A 07:C0FA: 6D        .byte $6D   ; 
- D 2 - I - 0x01C10B 07:C0FB: C1        .byte $C1   ; 
- D 2 - I - 0x01C10C 07:C0FC: 6F        .byte $6F   ; 
- D 2 - I - 0x01C10D 07:C0FD: CF        .byte $CF   ; 
- D 2 - I - 0x01C10E 07:C0FE: FF        .byte $FF   ; 
- D 2 - I - 0x01C10F 07:C0FF: B5        .byte $B5   ; 
- D 2 - I - 0x01C110 07:C100: CF        .byte $CF   ; 
- D 2 - I - 0x01C111 07:C101: B2        .byte $B2   ; 
- D 2 - I - 0x01C112 07:C102: D1        .byte $D1   ; 
- D 2 - I - 0x01C113 07:C103: A3        .byte $A3   ; 
- D 2 - I - 0x01C114 07:C104: AC        .byte $AC   ; 
- D 2 - I - 0x01C115 07:C105: AA        .byte $AA   ; 
- D 2 - I - 0x01C116 07:C106: D0        .byte $D0   ; 
- D 2 - I - 0x01C117 07:C107: B5        .byte $B5   ; 
- D 2 - I - 0x01C118 07:C108: FF        .byte $FF   ; 
- D 2 - I - 0x01C119 07:C109: 6C        .byte $6C   ; 
- D 2 - I - 0x01C11A 07:C10A: 6D        .byte $6D   ; 
- D 2 - I - 0x01C11B 07:C10B: CF        .byte $CF   ; 
- D 2 - I - 0x01C11C 07:C10C: FF        .byte $FF   ; 
- D 2 - I - 0x01C11D 07:C10D: FF        .byte $FF   ; 
- D 2 - I - 0x01C11E 07:C10E: B1        .byte $B1   ; 
- D 2 - I - 0x01C11F 07:C10F: B7        .byte $B7   ; 
- D 2 - I - 0x01C120 07:C110: CF        .byte $CF   ; 
- D 2 - I - 0x01C121 07:C111: FF        .byte $FF   ; 
- D 2 - I - 0x01C122 07:C112: FF        .byte $FF   ; 
- D 2 - I - 0x01C123 07:C113: B2        .byte $B2   ; 
- D 2 - I - 0x01C124 07:C114: D1        .byte $D1   ; 
- D 2 - I - 0x01C125 07:C115: B2        .byte $B2   ; 
- D 2 - I - 0x01C126 07:C116: D1        .byte $D1   ; 
- D 2 - I - 0x01C127 07:C117: A3        .byte $A3   ; 



off_C118_02:
- - - - - - 0x01C128 07:C118: 2D        .byte $2D   ; 
- - - - - - 0x01C129 07:C119: D3        .byte $D3   ; 
- - - - - - 0x01C12A 07:C11A: CA        .byte $CA   ; 
- - - - - - 0x01C12B 07:C11B: A8        .byte $A8   ; 
- - - - - - 0x01C12C 07:C11C: CF        .byte $CF   ; 
- - - - - - 0x01C12D 07:C11D: A2        .byte $A2   ; 
- - - - - - 0x01C12E 07:C11E: 2D        .byte $2D   ; 
- - - - - - 0x01C12F 07:C11F: D2        .byte $D2   ; 
- - - - - - 0x01C130 07:C120: CA        .byte $CA   ; 
- - - - - - 0x01C131 07:C121: FF        .byte $FF   ; 
- - - - - - 0x01C132 07:C122: 27        .byte $27   ; 
- - - - - - 0x01C133 07:C123: 2C        .byte $2C   ; 
- - - - - - 0x01C134 07:C124: CF        .byte $CF   ; 
- - - - - - 0x01C135 07:C125: FF        .byte $FF   ; 
- - - - - - 0x01C136 07:C126: FF        .byte $FF   ; 
- - - - - - 0x01C137 07:C127: C4        .byte $C4   ; 
- - - - - - 0x01C138 07:C128: CF        .byte $CF   ; 
- - - - - - 0x01C139 07:C129: B5        .byte $B5   ; 
- - - - - - 0x01C13A 07:C12A: A9        .byte $A9   ; 
- - - - - - 0x01C13B 07:C12B: FF        .byte $FF   ; 
- - - - - - 0x01C13C 07:C12C: BD        .byte $BD   ; 
- - - - - - 0x01C13D 07:C12D: CA        .byte $CA   ; 
- - - - - - 0x01C13E 07:C12E: B2        .byte $B2   ; 
- - - - - - 0x01C13F 07:C12F: CF        .byte $CF   ; 
- - - - - - 0x01C140 07:C130: FF        .byte $FF   ; 
- - - - - - 0x01C141 07:C131: A3        .byte $A3   ; 
- - - - - - 0x01C142 07:C132: AD        .byte $AD   ; 
- - - - - - 0x01C143 07:C133: C2        .byte $C2   ; 
- - - - - - 0x01C144 07:C134: B5        .byte $B5   ; 
- - - - - - 0x01C145 07:C135: FF        .byte $FF   ; 



off_C136_05:
- D 2 - I - 0x01C146 07:C136: B8        .byte $B8   ; 
- D 2 - I - 0x01C147 07:C137: 2A        .byte $2A   ; 
- D 2 - I - 0x01C148 07:C138: C0        .byte $C0   ; 
- D 2 - I - 0x01C149 07:C139: FF        .byte $FF   ; 
- D 2 - I - 0x01C14A 07:C13A: FF        .byte $FF   ; 
- D 2 - I - 0x01C14B 07:C13B: C0        .byte $C0   ; 
- D 2 - I - 0x01C14C 07:C13C: 3D        .byte $3D   ; 
- D 2 - I - 0x01C14D 07:C13D: A3        .byte $A3   ; 
- D 2 - I - 0x01C14E 07:C13E: FF        .byte $FF   ; 
- D 2 - I - 0x01C14F 07:C13F: FF        .byte $FF   ; 
- D 2 - I - 0x01C150 07:C140: C2        .byte $C2   ; 
- D 2 - I - 0x01C151 07:C141: 27        .byte $27   ; 
- D 2 - I - 0x01C152 07:C142: 3E        .byte $3E   ; 
- D 2 - I - 0x01C153 07:C143: FF        .byte $FF   ; 
- D 2 - I - 0x01C154 07:C144: FF        .byte $FF   ; 
- D 2 - I - 0x01C155 07:C145: C4        .byte $C4   ; 
- D 2 - I - 0x01C156 07:C146: 3D        .byte $3D   ; 
- D 2 - I - 0x01C157 07:C147: B3        .byte $B3   ; 
- D 2 - I - 0x01C158 07:C148: FF        .byte $FF   ; 
- D 2 - I - 0x01C159 07:C149: FF        .byte $FF   ; 
- D 2 - I - 0x01C15A 07:C14A: B0        .byte $B0   ; 
- D 2 - I - 0x01C15B 07:C14B: 29        .byte $29   ; 
- D 2 - I - 0x01C15C 07:C14C: CC        .byte $CC   ; 
- D 2 - I - 0x01C15D 07:C14D: FF        .byte $FF   ; 
- D 2 - I - 0x01C15E 07:C14E: FF        .byte $FF   ; 
- D 2 - I - 0x01C15F 07:C14F: A2        .byte $A2   ; 
- D 2 - I - 0x01C160 07:C150: 34        .byte $34   ; 
- D 2 - I - 0x01C161 07:C151: FF        .byte $FF   ; 
- D 2 - I - 0x01C162 07:C152: FF        .byte $FF   ; 
- D 2 - I - 0x01C163 07:C153: FF        .byte $FF   ; 



off_C154_06:
- - - - - - 0x01C164 07:C154: CA        .byte $CA   ; 
- - - - - - 0x01C165 07:C155: C2        .byte $C2   ; 
- - - - - - 0x01C166 07:C156: CF        .byte $CF   ; 
- - - - - - 0x01C167 07:C157: 3B        .byte $3B   ; 
- - - - - - 0x01C168 07:C158: FF        .byte $FF   ; 
- - - - - - 0x01C169 07:C159: A4        .byte $A4   ; 
- - - - - - 0x01C16A 07:C15A: D7        .byte $D7   ; 
- - - - - - 0x01C16B 07:C15B: CF        .byte $CF   ; 
- - - - - - 0x01C16C 07:C15C: 3B        .byte $3B   ; 
- - - - - - 0x01C16D 07:C15D: FF        .byte $FF   ; 
- - - - - - 0x01C16E 07:C15E: B8        .byte $B8   ; 
- - - - - - 0x01C16F 07:C15F: 2D        .byte $2D   ; 
- - - - - - 0x01C170 07:C160: D3        .byte $D3   ; 
- - - - - - 0x01C171 07:C161: C0        .byte $C0   ; 
- - - - - - 0x01C172 07:C162: FF        .byte $FF   ; 
- - - - - - 0x01C173 07:C163: B8        .byte $B8   ; 
- - - - - - 0x01C174 07:C164: 2D        .byte $2D   ; 
- - - - - - 0x01C175 07:C165: D7        .byte $D7   ; 
- - - - - - 0x01C176 07:C166: C9        .byte $C9   ; 
- - - - - - 0x01C177 07:C167: FF        .byte $FF   ; 
- - - - - - 0x01C178 07:C168: A6        .byte $A6   ; 
- - - - - - 0x01C179 07:C169: 3E        .byte $3E   ; 
- - - - - - 0x01C17A 07:C16A: CF        .byte $CF   ; 
- - - - - - 0x01C17B 07:C16B: 2D        .byte $2D   ; 
- - - - - - 0x01C17C 07:C16C: D3        .byte $D3   ; 
- - - - - - 0x01C17D 07:C16D: C2        .byte $C2   ; 
- - - - - - 0x01C17E 07:C16E: CF        .byte $CF   ; 
- - - - - - 0x01C17F 07:C16F: 2D        .byte $2D   ; 
- - - - - - 0x01C180 07:C170: D1        .byte $D1   ; 
- - - - - - 0x01C181 07:C171: C8        .byte $C8   ; 



off_C172_07:
- D 2 - I - 0x01C182 07:C172: CD        .byte $CD   ; 
- D 2 - I - 0x01C183 07:C173: C9        .byte $C9   ; 
- D 2 - I - 0x01C184 07:C174: A6        .byte $A6   ; 
- D 2 - I - 0x01C185 07:C175: 3B        .byte $3B   ; 
- D 2 - I - 0x01C186 07:C176: FF        .byte $FF   ; 
- D 2 - I - 0x01C187 07:C177: 31        .byte $31   ; 
- D 2 - I - 0x01C188 07:C178: AB        .byte $AB   ; 
- D 2 - I - 0x01C189 07:C179: AE        .byte $AE   ; 
- D 2 - I - 0x01C18A 07:C17A: B1        .byte $B1   ; 
- D 2 - I - 0x01C18B 07:C17B: FF        .byte $FF   ; 
- D 2 - I - 0x01C18C 07:C17C: A6        .byte $A6   ; 
- D 2 - I - 0x01C18D 07:C17D: 3B        .byte $3B   ; 
- D 2 - I - 0x01C18E 07:C17E: CF        .byte $CF   ; 
- D 2 - I - 0x01C18F 07:C17F: 2B        .byte $2B   ; 
- D 2 - I - 0x01C190 07:C180: FF        .byte $FF   ; 
- D 2 - I - 0x01C191 07:C181: C2        .byte $C2   ; 
- D 2 - I - 0x01C192 07:C182: 27        .byte $27   ; 
- D 2 - I - 0x01C193 07:C183: 3E        .byte $3E   ; 
- D 2 - I - 0x01C194 07:C184: FF        .byte $FF   ; 
- D 2 - I - 0x01C195 07:C185: FF        .byte $FF   ; 
- D 2 - I - 0x01C196 07:C186: A9        .byte $A9   ; 
- D 2 - I - 0x01C197 07:C187: CF        .byte $CF   ; 
- D 2 - I - 0x01C198 07:C188: 2D        .byte $2D   ; 
- D 2 - I - 0x01C199 07:C189: D1        .byte $D1   ; 
- D 2 - I - 0x01C19A 07:C18A: C8        .byte $C8   ; 
- - - - - - 0x01C19B 07:C18B: 2D        .byte $2D   ; 
- - - - - - 0x01C19C 07:C18C: D1        .byte $D1   ; 
- - - - - - 0x01C19D 07:C18D: CD        .byte $CD   ; 
- - - - - - 0x01C19E 07:C18E: C8        .byte $C8   ; 
- - - - - - 0x01C19F 07:C18F: FF        .byte $FF   ; 



off_C190_09:
- D 2 - I - 0x01C1A0 07:C190: A5        .byte $A5   ; 
- D 2 - I - 0x01C1A1 07:C191: D0        .byte $D0   ; 
- D 2 - I - 0x01C1A2 07:C192: AA        .byte $AA   ; 
- D 2 - I - 0x01C1A3 07:C193: CA        .byte $CA   ; 
- D 2 - I - 0x01C1A4 07:C194: B5        .byte $B5   ; 
- D 2 - I - 0x01C1A5 07:C195: BE        .byte $BE   ; 
- D 2 - I - 0x01C1A6 07:C196: CA        .byte $CA   ; 
- D 2 - I - 0x01C1A7 07:C197: C0        .byte $C0   ; 
- D 2 - I - 0x01C1A8 07:C198: D9        .byte $D9   ; 
- D 2 - I - 0x01C1A9 07:C199: FF        .byte $FF   ; 
- D 2 - I - 0x01C1AA 07:C19A: C9        .byte $C9   ; 
- D 2 - I - 0x01C1AB 07:C19B: D9        .byte $D9   ; 
- D 2 - I - 0x01C1AC 07:C19C: 35        .byte $35   ; 
- D 2 - I - 0x01C1AD 07:C19D: CA        .byte $CA   ; 
- D 2 - I - 0x01C1AE 07:C19E: FF        .byte $FF   ; 
- D 2 - I - 0x01C1AF 07:C19F: 3B        .byte $3B   ; 
- D 2 - I - 0x01C1B0 07:C1A0: CA        .byte $CA   ; 
- D 2 - I - 0x01C1B1 07:C1A1: B7        .byte $B7   ; 
- D 2 - I - 0x01C1B2 07:C1A2: AA        .byte $AA   ; 
- D 2 - I - 0x01C1B3 07:C1A3: FF        .byte $FF   ; 
- D 2 - I - 0x01C1B4 07:C1A4: AD        .byte $AD   ; 
- D 2 - I - 0x01C1B5 07:C1A5: D2        .byte $D2   ; 
- D 2 - I - 0x01C1B6 07:C1A6: CA        .byte $CA   ; 
- D 2 - I - 0x01C1B7 07:C1A7: B3        .byte $B3   ; 
- D 2 - I - 0x01C1B8 07:C1A8: FF        .byte $FF   ; 
- D 2 - I - 0x01C1B9 07:C1A9: 3D        .byte $3D   ; 
- D 2 - I - 0x01C1BA 07:C1AA: CB        .byte $CB   ; 
- D 2 - I - 0x01C1BB 07:C1AB: D9        .byte $D9   ; 
- D 2 - I - 0x01C1BC 07:C1AC: C3        .byte $C3   ; 
- D 2 - I - 0x01C1BD 07:C1AD: FF        .byte $FF   ; 



off_C1AE_0A:
- - - - - - 0x01C1BE 07:C1AE: 34        .byte $34   ; 
- - - - - - 0x01C1BF 07:C1AF: 3C        .byte $3C   ; 
- - - - - - 0x01C1C0 07:C1B0: D0        .byte $D0   ; 
- - - - - - 0x01C1C1 07:C1B1: 35        .byte $35   ; 
- - - - - - 0x01C1C2 07:C1B2: FF        .byte $FF   ; 
- - - - - - 0x01C1C3 07:C1B3: B6        .byte $B6   ; 
- - - - - - 0x01C1C4 07:C1B4: A3        .byte $A3   ; 
- - - - - - 0x01C1C5 07:C1B5: 2D        .byte $2D   ; 
- - - - - - 0x01C1C6 07:C1B6: D7        .byte $D7   ; 
- - - - - - 0x01C1C7 07:C1B7: CA        .byte $CA   ; 
- - - - - - 0x01C1C8 07:C1B8: C0        .byte $C0   ; 
- - - - - - 0x01C1C9 07:C1B9: D9        .byte $D9   ; 
- - - - - - 0x01C1CA 07:C1BA: A9        .byte $A9   ; 
- - - - - - 0x01C1CB 07:C1BB: FF        .byte $FF   ; 
- - - - - - 0x01C1CC 07:C1BC: FF        .byte $FF   ; 
- - - - - - 0x01C1CD 07:C1BD: C0        .byte $C0   ; 
- - - - - - 0x01C1CE 07:C1BE: D9        .byte $D9   ; 
- - - - - - 0x01C1CF 07:C1BF: B2        .byte $B2   ; 
- - - - - - 0x01C1D0 07:C1C0: CF        .byte $CF   ; 
- - - - - - 0x01C1D1 07:C1C1: FF        .byte $FF   ; 
- - - - - - 0x01C1D2 07:C1C2: BE        .byte $BE   ; 
- - - - - - 0x01C1D3 07:C1C3: CF        .byte $CF   ; 
- - - - - - 0x01C1D4 07:C1C4: C9        .byte $C9   ; 
- - - - - - 0x01C1D5 07:C1C5: D9        .byte $D9   ; 
- - - - - - 0x01C1D6 07:C1C6: FF        .byte $FF   ; 
- - - - - - 0x01C1D7 07:C1C7: A2        .byte $A2   ; 
- - - - - - 0x01C1D8 07:C1C8: CF        .byte $CF   ; 
- - - - - - 0x01C1D9 07:C1C9: 34        .byte $34   ; 
- - - - - - 0x01C1DA 07:C1CA: D5        .byte $D5   ; 
- - - - - - 0x01C1DB 07:C1CB: FF        .byte $FF   ; 



off_C1CC_0B:
- D 2 - I - 0x01C1DC 07:C1CC: C8        .byte $C8   ; 
- D 2 - I - 0x01C1DD 07:C1CD: BD        .byte $BD   ; 
- D 2 - I - 0x01C1DE 07:C1CE: D4        .byte $D4   ; 
- D 2 - I - 0x01C1DF 07:C1CF: A5        .byte $A5   ; 
- D 2 - I - 0x01C1E0 07:C1D0: CB        .byte $CB   ; 
- D 2 - I - 0x01C1E1 07:C1D1: C9        .byte $C9   ; 
- D 2 - I - 0x01C1E2 07:C1D2: A7        .byte $A7   ; 
- D 2 - I - 0x01C1E3 07:C1D3: CA        .byte $CA   ; 
- D 2 - I - 0x01C1E4 07:C1D4: 35        .byte $35   ; 
- D 2 - I - 0x01C1E5 07:C1D5: FF        .byte $FF   ; 
- D 2 - I - 0x01C1E6 07:C1D6: 2D        .byte $2D   ; 
- D 2 - I - 0x01C1E7 07:C1D7: D3        .byte $D3   ; 
- D 2 - I - 0x01C1E8 07:C1D8: CA        .byte $CA   ; 
- D 2 - I - 0x01C1E9 07:C1D9: 2D        .byte $2D   ; 
- D 2 - I - 0x01C1EA 07:C1DA: D3        .byte $D3   ; 
- D 2 - I - 0x01C1EB 07:C1DB: CA        .byte $CA   ; 
- D 2 - I - 0x01C1EC 07:C1DC: A7        .byte $A7   ; 
- D 2 - I - 0x01C1ED 07:C1DD: FF        .byte $FF   ; 
- D 2 - I - 0x01C1EE 07:C1DE: FF        .byte $FF   ; 
- D 2 - I - 0x01C1EF 07:C1DF: FF        .byte $FF   ; 
- D 2 - I - 0x01C1F0 07:C1E0: 2D        .byte $2D   ; 
- D 2 - I - 0x01C1F1 07:C1E1: D2        .byte $D2   ; 
- D 2 - I - 0x01C1F2 07:C1E2: 2F        .byte $2F   ; 
- D 2 - I - 0x01C1F3 07:C1E3: D0        .byte $D0   ; 
- D 2 - I - 0x01C1F4 07:C1E4: 6E        .byte $6E   ; 
- - - - - - 0x01C1F5 07:C1E5: 2D        .byte $2D   ; 
- - - - - - 0x01C1F6 07:C1E6: D3        .byte $D3   ; 
- - - - - - 0x01C1F7 07:C1E7: 3B        .byte $3B   ; 
- - - - - - 0x01C1F8 07:C1E8: CF        .byte $CF   ; 
- - - - - - 0x01C1F9 07:C1E9: B7        .byte $B7   ; 



off_C1EA_0D:
- D 2 - I - 0x01C1FA 07:C1EA: 34        .byte $34   ; 
- D 2 - I - 0x01C1FB 07:C1EB: D5        .byte $D5   ; 
- D 2 - I - 0x01C1FC 07:C1EC: A2        .byte $A2   ; 
- D 2 - I - 0x01C1FD 07:C1ED: 2E        .byte $2E   ; 
- D 2 - I - 0x01C1FE 07:C1EE: FF        .byte $FF   ; 
- D 2 - I - 0x01C1FF 07:C1EF: AC        .byte $AC   ; 
- D 2 - I - 0x01C200 07:C1F0: C8        .byte $C8   ; 
- D 2 - I - 0x01C201 07:C1F1: 3C        .byte $3C   ; 
- D 2 - I - 0x01C202 07:C1F2: A2        .byte $A2   ; 
- D 2 - I - 0x01C203 07:C1F3: FF        .byte $FF   ; 
- D 2 - I - 0x01C204 07:C1F4: C3        .byte $C3   ; 
- D 2 - I - 0x01C205 07:C1F5: CF        .byte $CF   ; 
- D 2 - I - 0x01C206 07:C1F6: 35        .byte $35   ; 
- D 2 - I - 0x01C207 07:C1F7: D9        .byte $D9   ; 
- D 2 - I - 0x01C208 07:C1F8: AC        .byte $AC   ; 
- D 2 - I - 0x01C209 07:C1F9: 3D        .byte $3D   ; 
- D 2 - I - 0x01C20A 07:C1FA: D9        .byte $D9   ; 
- D 2 - I - 0x01C20B 07:C1FB: B7        .byte $B7   ; 
- D 2 - I - 0x01C20C 07:C1FC: D3        .byte $D3   ; 
- D 2 - I - 0x01C20D 07:C1FD: FF        .byte $FF   ; 
- D 2 - I - 0x01C20E 07:C1FE: AC        .byte $AC   ; 
- D 2 - I - 0x01C20F 07:C1FF: CF        .byte $CF   ; 
- D 2 - I - 0x01C210 07:C200: B5        .byte $B5   ; 
- D 2 - I - 0x01C211 07:C201: AE        .byte $AE   ; 
- D 2 - I - 0x01C212 07:C202: FF        .byte $FF   ; 
- - - - - - 0x01C213 07:C203: CC        .byte $CC   ; 
- - - - - - 0x01C214 07:C204: 35        .byte $35   ; 
- - - - - - 0x01C215 07:C205: C9        .byte $C9   ; 
- - - - - - 0x01C216 07:C206: 2A        .byte $2A   ; 
- - - - - - 0x01C217 07:C207: AE        .byte $AE   ; 



off_C208_0E:
- D 2 - I - 0x01C218 07:C208: C8        .byte $C8   ; 
- D 2 - I - 0x01C219 07:C209: B5        .byte $B5   ; 
- D 2 - I - 0x01C21A 07:C20A: D9        .byte $D9   ; 
- D 2 - I - 0x01C21B 07:C20B: CB        .byte $CB   ; 
- D 2 - I - 0x01C21C 07:C20C: FF        .byte $FF   ; 
- D 2 - I - 0x01C21D 07:C20D: A5        .byte $A5   ; 
- D 2 - I - 0x01C21E 07:C20E: AE        .byte $AE   ; 
- D 2 - I - 0x01C21F 07:C20F: AB        .byte $AB   ; 
- D 2 - I - 0x01C220 07:C210: 3B        .byte $3B   ; 
- D 2 - I - 0x01C221 07:C211: CA        .byte $CA   ; 
- D 2 - I - 0x01C222 07:C212: AF        .byte $AF   ; 
- D 2 - I - 0x01C223 07:C213: CA        .byte $CA   ; 
- D 2 - I - 0x01C224 07:C214: 2D        .byte $2D   ; 
- D 2 - I - 0x01C225 07:C215: A6        .byte $A6   ; 
- D 2 - I - 0x01C226 07:C216: FF        .byte $FF   ; 
- D 2 - I - 0x01C227 07:C217: A6        .byte $A6   ; 
- D 2 - I - 0x01C228 07:C218: C9        .byte $C9   ; 
- D 2 - I - 0x01C229 07:C219: 3B        .byte $3B   ; 
- D 2 - I - 0x01C22A 07:C21A: CB        .byte $CB   ; 
- D 2 - I - 0x01C22B 07:C21B: AE        .byte $AE   ; 
- D 2 - I - 0x01C22C 07:C21C: 3B        .byte $3B   ; 
- D 2 - I - 0x01C22D 07:C21D: CA        .byte $CA   ; 
- D 2 - I - 0x01C22E 07:C21E: 3B        .byte $3B   ; 
- D 2 - I - 0x01C22F 07:C21F: FF        .byte $FF   ; 
- D 2 - I - 0x01C230 07:C220: FF        .byte $FF   ; 
- D 2 - I - 0x01C231 07:C221: A3        .byte $A3   ; 
- D 2 - I - 0x01C232 07:C222: 28        .byte $28   ; 
- D 2 - I - 0x01C233 07:C223: D9        .byte $D9   ; 
- D 2 - I - 0x01C234 07:C224: B1        .byte $B1   ; 
- D 2 - I - 0x01C235 07:C225: FF        .byte $FF   ; 



off_C226_0F:
- D 2 - I - 0x01C236 07:C226: A2        .byte $A2   ; 
- D 2 - I - 0x01C237 07:C227: 3C        .byte $3C   ; 
- D 2 - I - 0x01C238 07:C228: CB        .byte $CB   ; 
- D 2 - I - 0x01C239 07:C229: AE        .byte $AE   ; 
- D 2 - I - 0x01C23A 07:C22A: FF        .byte $FF   ; 
- D 2 - I - 0x01C23B 07:C22B: A2        .byte $A2   ; 
- D 2 - I - 0x01C23C 07:C22C: 28        .byte $28   ; 
- D 2 - I - 0x01C23D 07:C22D: B6        .byte $B6   ; 
- D 2 - I - 0x01C23E 07:C22E: 27        .byte $27   ; 
- D 2 - I - 0x01C23F 07:C22F: FF        .byte $FF   ; 
- D 2 - I - 0x01C240 07:C230: 2B        .byte $2B   ; 
- D 2 - I - 0x01C241 07:C231: CF        .byte $CF   ; 
- D 2 - I - 0x01C242 07:C232: 2C        .byte $2C   ; 
- D 2 - I - 0x01C243 07:C233: CB        .byte $CB   ; 
- D 2 - I - 0x01C244 07:C234: AE        .byte $AE   ; 
- D 2 - I - 0x01C245 07:C235: AC        .byte $AC   ; 
- D 2 - I - 0x01C246 07:C236: C8        .byte $C8   ; 
- D 2 - I - 0x01C247 07:C237: 2C        .byte $2C   ; 
- D 2 - I - 0x01C248 07:C238: D9        .byte $D9   ; 
- D 2 - I - 0x01C249 07:C239: CA        .byte $CA   ; 
- D 2 - I - 0x01C24A 07:C23A: B1        .byte $B1   ; 
- D 2 - I - 0x01C24B 07:C23B: 3B        .byte $3B   ; 
- D 2 - I - 0x01C24C 07:C23C: 2D        .byte $2D   ; 
- D 2 - I - 0x01C24D 07:C23D: D3        .byte $D3   ; 
- D 2 - I - 0x01C24E 07:C23E: AE        .byte $AE   ; 
- - - - - - 0x01C24F 07:C23F: A5        .byte $A5   ; 
- - - - - - 0x01C250 07:C240: CF        .byte $CF   ; 
- - - - - - 0x01C251 07:C241: C9        .byte $C9   ; 
- - - - - - 0x01C252 07:C242: AB        .byte $AB   ; 
- - - - - - 0x01C253 07:C243: FF        .byte $FF   ; 



loc_C244:
C D 2 - - - 0x01C254 07:C244: A9 04     LDA #$04
C - - - - - 0x01C256 07:C246: 4C 44 C3  JMP loc_C344
sub_C249:
C - - - - - 0x01C259 07:C249: A9 05     LDA #$05
C - - - - - 0x01C25B 07:C24B: 4C 44 C3  JMP loc_C344
sub_C24E:
C - - - - - 0x01C25E 07:C24E: A9 1E     LDA #$1E
C - - - - - 0x01C260 07:C250: 4C 44 C3  JMP loc_C344


; bzk
- - - - - - 0x01C263 07:C253: A9 1F     LDA #$1F
- - - - - - 0x01C265 07:C255: 4C 44 C3  JMP loc_C344



sub_C258:
C - - - - - 0x01C268 07:C258: A9 29     LDA #$29
C - - - - - 0x01C26A 07:C25A: 4C 44 C3  JMP loc_C344
sub_C25D:
C - - - - - 0x01C26D 07:C25D: A9 18     LDA #$18
C - - - - - 0x01C26F 07:C25F: 4C 44 C3  JMP loc_C344
sub_C262:
C - - - - - 0x01C272 07:C262: A9 2D     LDA #$2D
C - - - - - 0x01C274 07:C264: 4C 44 C3  JMP loc_C344
sub_C267:
C - - - - - 0x01C277 07:C267: A9 2E     LDA #$2E
C - - - - - 0x01C279 07:C269: 4C 44 C3  JMP loc_C344
sub_C26C:
- - - - - - 0x01C27C 07:C26C: A9 2F     LDA #$2F
- - - - - - 0x01C27E 07:C26E: 4C 44 C3  JMP loc_C344
sub_C271:
C - - - - - 0x01C281 07:C271: A9 00     LDA #$00
C - - - - - 0x01C283 07:C273: 4C 44 C3  JMP loc_C344
.export sub_0x01C286
sub_0x01C286:
C - - - - - 0x01C286 07:C276: A9 02     LDA #$02
C - - - - - 0x01C288 07:C278: 4C 44 C3  JMP loc_C344
sub_C27B:
C - - - - - 0x01C28B 07:C27B: A9 03     LDA #$03
C - - - - - 0x01C28D 07:C27D: 4C 44 C3  JMP loc_C344
sub_C280:
C - - - - - 0x01C290 07:C280: A9 13     LDA #$13
C - - - - - 0x01C292 07:C282: 4C 44 C3  JMP loc_C344
sub_C285:
C - - - - - 0x01C295 07:C285: A9 1B     LDA #$1B
C - - - - - 0x01C297 07:C287: 4C 44 C3  JMP loc_C344
sub_C28A:
C - - - - - 0x01C29A 07:C28A: A9 01     LDA #$01
C - - - - - 0x01C29C 07:C28C: 4C 44 C3  JMP loc_C344
.export sub_0x01C29F
sub_0x01C29F:
C - - - - - 0x01C29F 07:C28F: A9 0C     LDA #$0C
C - - - - - 0x01C2A1 07:C291: 4C 44 C3  JMP loc_C344
.export sub_0x01C2A4
sub_0x01C2A4:
C - - - - - 0x01C2A4 07:C294: A9 0D     LDA #$0D
C - - - - - 0x01C2A6 07:C296: 4C 44 C3  JMP loc_C344
sub_C299:
C - - - - - 0x01C2A9 07:C299: A9 11     LDA #$11
C - - - - - 0x01C2AB 07:C29B: 4C 44 C3  JMP loc_C344
sub_C29E:
C - - - - - 0x01C2AE 07:C29E: A9 14     LDA #$14
C - - - - - 0x01C2B0 07:C2A0: 4C 44 C3  JMP loc_C344
sub_C2A3:
C - - - - - 0x01C2B3 07:C2A3: A9 15     LDA #$15
C - - - - - 0x01C2B5 07:C2A5: 4C 44 C3  JMP loc_C344
sub_C2A8:
C - - - - - 0x01C2B8 07:C2A8: A9 16     LDA #$16
C - - - - - 0x01C2BA 07:C2AA: 4C 44 C3  JMP loc_C344
sub_C2AD:
C - - - - - 0x01C2BD 07:C2AD: A9 17     LDA #$17
C - - - - - 0x01C2BF 07:C2AF: 4C 44 C3  JMP loc_C344
.export sub_0x01C2C2
sub_0x01C2C2:
C - - - - - 0x01C2C2 07:C2B2: A9 0F     LDA #$0F
C - - - - - 0x01C2C4 07:C2B4: 4C 44 C3  JMP loc_C344
.export sub_0x01C2C7
sub_0x01C2C7:
C - - - - - 0x01C2C7 07:C2B7: A9 20     LDA #$20
C - - - - - 0x01C2C9 07:C2B9: 4C 44 C3  JMP loc_C344
.export sub_0x01C2CC
sub_0x01C2CC:
C - - - - - 0x01C2CC 07:C2BC: A9 21     LDA #$21
C - - - - - 0x01C2CE 07:C2BE: 4C 44 C3  JMP loc_C344
.export sub_0x01C2D1
sub_0x01C2D1:
C - - - - - 0x01C2D1 07:C2C1: A9 22     LDA #$22
C - - - - - 0x01C2D3 07:C2C3: 4C 44 C3  JMP loc_C344
.export sub_0x01C2D6
sub_0x01C2D6:
C - - - - - 0x01C2D6 07:C2C6: A9 23     LDA #$23
C - - - - - 0x01C2D8 07:C2C8: 4C 44 C3  JMP loc_C344
.export sub_0x01C2DB
sub_0x01C2DB:
C - - - - - 0x01C2DB 07:C2CB: A9 24     LDA #$24
C - - - - - 0x01C2DD 07:C2CD: 4C 44 C3  JMP loc_C344
.export sub_0x01C2E0
sub_0x01C2E0:
C - - - - - 0x01C2E0 07:C2D0: A9 0E     LDA #$0E
C - - - - - 0x01C2E2 07:C2D2: 4C 44 C3  JMP loc_C344
sub_C2D5:
C - - - - - 0x01C2E5 07:C2D5: A9 10     LDA #$10
C - - - - - 0x01C2E7 07:C2D7: 4C 44 C3  JMP loc_C344
sub_C2DA:
C - - - - - 0x01C2EA 07:C2DA: A9 12     LDA #$12
C - - - - - 0x01C2EC 07:C2DC: 4C 44 C3  JMP loc_C344


; bzk
- - - - - - 0x01C2EF 07:C2DF: A9 1A     LDA #$1A
- - - - - - 0x01C2F1 07:C2E1: 4C 44 C3  JMP loc_C344



loc_C2E4:
sub_C2E4:
.export sub_0x01C2F4
sub_0x01C2F4:
C D 2 - - - 0x01C2F4 07:C2E4: 2C 8B 05  BIT ram_флаг_демо
C - - - - - 0x01C2F7 07:C2E7: 70 1E     BVS bra_C307_RTS
C - - - - - 0x01C2F9 07:C2E9: 10 04     BPL bra_C2EF
C - - - - - 0x01C2FB 07:C2EB: C9 20     CMP #$20
C - - - - - 0x01C2FD 07:C2ED: 90 18     BCC bra_C307_RTS
bra_C2EF:
C - - - - - 0x01C2FF 07:C2EF: 85 1B     STA ram_001B
C - - - - - 0x01C301 07:C2F1: 8D FF 07  STA ram_номер_звука
C - - - - - 0x01C304 07:C2F4: AD FF BF  LDA $BFFF
C - - - - - 0x01C307 07:C2F7: 48        PHA
C - - - - - 0x01C308 07:C2F8: A9 00     LDA #$00
C - - - - - 0x01C30A 07:C2FA: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C30D 07:C2FD: AD FF 07  LDA ram_номер_звука
C - - - - - 0x01C310 07:C300: 20 00 80  JSR sub_0x000010
C - - - - - 0x01C313 07:C303: 68        PLA
C - - - - - 0x01C314 07:C304: 20 D3 EE  JSR sub_EED3_prg_bankswitch
bra_C307_RTS:
C - - - - - 0x01C317 07:C307: 60        RTS



sub_C308:
C - - - - - 0x01C318 07:C308: AD FF BF  LDA $BFFF
C - - - - - 0x01C31B 07:C30B: 48        PHA
C - - - - - 0x01C31C 07:C30C: A9 00     LDA #$00
C - - - - - 0x01C31E 07:C30E: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C321 07:C311: 20 03 80  JSR sub_0x000013
C - - - - - 0x01C324 07:C314: 4C 68 C3  JMP loc_C368



loc_C317:
C D 2 - - - 0x01C327 07:C317: AD FF BF  LDA $BFFF
C - - - - - 0x01C32A 07:C31A: 48        PHA
C - - - - - 0x01C32B 07:C31B: A9 00     LDA #$00
C - - - - - 0x01C32D 07:C31D: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C330 07:C320: 20 86 AE  JSR sub_0x002E96
C - - - - - 0x01C333 07:C323: 4C 68 C3  JMP loc_C368
sub_C326:
C - - - - - 0x01C336 07:C326: AD FF BF  LDA $BFFF
C - - - - - 0x01C339 07:C329: 48        PHA
C - - - - - 0x01C33A 07:C32A: A9 00     LDA #$00
C - - - - - 0x01C33C 07:C32C: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C33F 07:C32F: 20 80 AE  JSR sub_0x002E90
C - - - - - 0x01C342 07:C332: 4C 68 C3  JMP loc_C368



loc_C335:
C D 2 - - - 0x01C345 07:C335: AD FF BF  LDA $BFFF
C - - - - - 0x01C348 07:C338: 48        PHA
C - - - - - 0x01C349 07:C339: A9 00     LDA #$00
C - - - - - 0x01C34B 07:C33B: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C34E 07:C33E: 20 83 AE  JSR sub_0x002E93
C - - - - - 0x01C351 07:C341: 4C 68 C3  JMP loc_C368



loc_C344:
C D 2 - - - 0x01C354 07:C344: 0A        ASL
C - - - - - 0x01C355 07:C345: A8        TAY
C - - - - - 0x01C356 07:C346: AD FF BF  LDA $BFFF
C - - - - - 0x01C359 07:C349: 48        PHA
C - - - - - 0x01C35A 07:C34A: A5 F6     LDA ram_00F6
C - - - - - 0x01C35C 07:C34C: 48        PHA
C - - - - - 0x01C35D 07:C34D: A5 F7     LDA ram_00F7
C - - - - - 0x01C35F 07:C34F: 48        PHA
C - - - - - 0x01C360 07:C350: B9 70 C3  LDA tbl_C370,Y
C - - - - - 0x01C363 07:C353: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C366 07:C356: B9 71 C3  LDA tbl_C370 + 1,Y
C - - - - - 0x01C369 07:C359: 85 F6     STA ram_00F6
C - - - - - 0x01C36B 07:C35B: A9 80     LDA #$80
C - - - - - 0x01C36D 07:C35D: 85 F7     STA ram_00F7
C - - - - - 0x01C36F 07:C35F: 20 6D C3  JSR sub_C36D
C - - - - - 0x01C372 07:C362: 68        PLA
C - - - - - 0x01C373 07:C363: 85 F7     STA ram_00F7
C - - - - - 0x01C375 07:C365: 68        PLA
C - - - - - 0x01C376 07:C366: A5 F6     LDA ram_00F6
loc_C368:
C D 2 - - - 0x01C378 07:C368: 68        PLA
C - - - - - 0x01C379 07:C369: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C37C 07:C36C: 60        RTS
sub_C36D:
C - - - - - 0x01C37D 07:C36D: 6C F6 00  JMP (ram_00F6)
tbl_C370:
- D 2 - - - 0x01C380 07:C370: 03        .byte $03, < loc_0x00C010       ; 00
- D 2 - - - 0x01C382 07:C372: 04        .byte $04, < loc_0x010010       ; 01
- D 2 - - - 0x01C384 07:C374: 03        .byte $03, < loc_0x00C013       ; 02
- D 2 - - - 0x01C386 07:C376: 03        .byte $03, < loc_0x00C016       ; 03
- D 2 - - - 0x01C388 07:C378: 01        .byte $01, < loc_0x004010       ; 04
- D 2 - - - 0x01C38A 07:C37A: 01        .byte $01, < loc_0x004013       ; 05
- D 2 - - - 0x01C38C 07:C37C: 06        .byte $06, < loc_0x018010       ; 06
- D 2 - - - 0x01C38E 07:C37E: 06        .byte $06, < loc_0x018013       ; 07
- D 2 - - - 0x01C390 07:C380: 06        .byte $06, < loc_0x018016       ; 08
- D 2 - - - 0x01C392 07:C382: 06        .byte $06, < loc_0x018019       ; 09
- D 2 - - - 0x01C394 07:C384: 06        .byte $06, < loc_0x01801C       ; 0A
- D 2 - - - 0x01C396 07:C386: 06        .byte $06, < loc_0x01801F       ; 0B
- D 2 - - - 0x01C398 07:C388: 04        .byte $04, < loc_0x010013       ; 0C
- D 2 - - - 0x01C39A 07:C38A: 04        .byte $04, < loc_0x010016       ; 0D
- D 2 - - - 0x01C39C 07:C38C: 02        .byte $02, < loc_0x008013       ; 0E
- D 2 - - - 0x01C39E 07:C38E: 04        .byte $04, < loc_0x010028       ; 0F
- D 2 - - - 0x01C3A0 07:C390: 02        .byte $02, < loc_0x008016       ; 10
- D 2 - - - 0x01C3A2 07:C392: 03        .byte $03, < loc_0x00C022       ; 11
- D 2 - - - 0x01C3A4 07:C394: 05        .byte $05, < loc_0x014010       ; 12
- D 2 - - - 0x01C3A6 07:C396: 03        .byte $03, < loc_0x00C019       ; 13
- D 2 - - - 0x01C3A8 07:C398: 04        .byte $04, < loc_0x01001C       ; 14
- D 2 - - - 0x01C3AA 07:C39A: 04        .byte $04, < loc_0x01001F       ; 15
- D 2 - - - 0x01C3AC 07:C39C: 03        .byte $03, < loc_0x00C01F       ; 16
- D 2 - - - 0x01C3AE 07:C39E: 04        .byte $04, < loc_0x010025       ; 17
- D 2 - - - 0x01C3B0 07:C3A0: 02        .byte $02, < loc_0x008010       ; 18
- D 2 - - - 0x01C3B2 07:C3A2: 05        .byte $05, < loc_0x014013       ; 19
- D 2 - - - 0x01C3B4 07:C3A4: 05        .byte $05, < loc_0x014016       ; 1A
- D 2 - - - 0x01C3B6 07:C3A6: 03        .byte $03, < loc_0x00C01C       ; 1B
- D 2 - - - 0x01C3B8 07:C3A8: 06        .byte $06, < loc_0x018022       ; 1C
- D 2 - - - 0x01C3BA 07:C3AA: 06        .byte $06, < loc_0x018025       ; 1D
- D 2 - - - 0x01C3BC 07:C3AC: 01        .byte $01, < loc_0x004016       ; 1E
- D 2 - - - 0x01C3BE 07:C3AE: 01        .byte $01, < loc_0x004019       ; 1F
- D 2 - - - 0x01C3C0 07:C3B0: 04        .byte $04, < loc_0x01002B       ; 20
- D 2 - - - 0x01C3C2 07:C3B2: 04        .byte $04, < loc_0x01002E       ; 21
- D 2 - - - 0x01C3C4 07:C3B4: 04        .byte $04, < loc_0x010031       ; 22
- D 2 - - - 0x01C3C6 07:C3B6: 04        .byte $04, < loc_0x010034       ; 23
- D 2 - - - 0x01C3C8 07:C3B8: 04        .byte $04, < loc_0x010022       ; 24
- D 2 - - - 0x01C3CA 07:C3BA: 06        .byte $06, < loc_0x018028       ; 25
- D 2 - - - 0x01C3CC 07:C3BC: 06        .byte $06, < loc_0x01802B       ; 26
- D 2 - - - 0x01C3CE 07:C3BE: 06        .byte $06, < loc_0x01802E       ; 27
- D 2 - - - 0x01C3D0 07:C3C0: 06        .byte $06, < loc_0x018031       ; 28
- D 2 - - - 0x01C3D2 07:C3C2: 01        .byte $01, < loc_0x00401C       ; 29
- D 2 - - - 0x01C3D4 07:C3C4: 06        .byte $06, < loc_0x018034       ; 2A
- D 2 - - - 0x01C3D6 07:C3C6: 05        .byte $05, < loc_0x014019       ; 2B
- D 2 - - - 0x01C3D8 07:C3C8: 05        .byte $05, < loc_0x01401C       ; 2C
- D 2 - - - 0x01C3DA 07:C3CA: 02        .byte $02, < loc_0x008019       ; 2D
- D 2 - - - 0x01C3DC 07:C3CC: 02        .byte $02, < loc_0x00801C       ; 2E
- - - - - - 0x01C3DE 07:C3CE: 02        .byte $02, < loc_0x00801F       ; 2F
- - - - - - 0x01C3E0 07:C3D0: 06        .byte $06, < loc_0x018037       ; 30
- - - - - - 0x01C3E2 07:C3D2: 06        .byte $06, < loc_0x01803A       ; 31



loc_C3D4:
C D 2 - - - 0x01C3E4 07:C3D4: 20 71 EE  JSR sub_EE71
C - - - - - 0x01C3E7 07:C3D7: A9 06     LDA #$06
C - - - - - 0x01C3E9 07:C3D9: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01C3EC 07:C3DC: 20 54 EF  JSR sub_EF54
C - - - - - 0x01C3EF 07:C3DF: A2 57     LDX #$57
C - - - - - 0x01C3F1 07:C3E1: 20 0A EF  JSR sub_EF0A
C - - - - - 0x01C3F4 07:C3E4: AD 88 05  LDA ram_0588
C - - - - - 0x01C3F7 07:C3E7: 48        PHA
C - - - - - 0x01C3F8 07:C3E8: A9 00     LDA #$00
C - - - - - 0x01C3FA 07:C3EA: A2 02     LDX #$02
C - - - - - 0x01C3FC 07:C3EC: A0 07     LDY #$07
C - - - - - 0x01C3FE 07:C3EE: 20 39 ED  JSR sub_ED39
C - - - - - 0x01C401 07:C3F1: 68        PLA
C - - - - - 0x01C402 07:C3F2: 8D 88 05  STA ram_0588
C - - - - - 0x01C405 07:C3F5: 20 64 EF  JSR sub_EF64
C - - - - - 0x01C408 07:C3F8: A9 00     LDA #$00
C - - - - - 0x01C40A 07:C3FA: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01C40D 07:C3FD: A9 00     LDA #$00
C - - - - - 0x01C40F 07:C3FF: 8D 52 00  STA a: ram_0052
C - - - - - 0x01C412 07:C402: A9 C0     LDA #$C0
C - - - - - 0x01C414 07:C404: 85 4F     STA ram_флаг_NMI
C - - - - - 0x01C416 07:C406: A9 00     LDA #$00
C - - - - - 0x01C418 07:C408: 85 53     STA ram_0053
C - - - - - 0x01C41A 07:C40A: 85 55     STA ram_0055
C - - - - - 0x01C41C 07:C40C: A9 8C     LDA #$8C
C - - - - - 0x01C41E 07:C40E: 85 4C     STA ram_для_2000
C - - - - - 0x01C420 07:C410: 8D 00 20  STA $2000
C - - - - - 0x01C423 07:C413: A9 18     LDA #$18
C - - - - - 0x01C425 07:C415: 85 4D     STA ram_для_2001
C - - - - - 0x01C427 07:C417: 8D 01 20  STA $2001
C - - - - - 0x01C42A 07:C41A: A9 FF     LDA #$FF
C - - - - - 0x01C42C 07:C41C: 8D 93 06  STA ram_байт_2006_hi_атрибуты
C - - - - - 0x01C42F 07:C41F: 8D B6 06  STA ram_байт_2006_hi_графика
C - - - - - 0x01C432 07:C422: 8D D9 06  STA ram_байт_2006_hi_палитра
C - - - - - 0x01C435 07:C425: 8D F5 05  STA ram_флаг_гола
C - - - - - 0x01C438 07:C428: 8D 4A 05  STA ram_054A
C - - - - - 0x01C43B 07:C42B: A9 42     LDA #$42
C - - - - - 0x01C43D 07:C42D: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x01C440 07:C430: 8D AD 05  STA ram_номер_палитры_фона + 1
C - - - - - 0x01C443 07:C433: A9 00     LDA #$00
C - - - - - 0x01C445 07:C435: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x01C448 07:C438: 8D AF 05  STA ram_номер_палитры_спрайтов + 1
C - - - - - 0x01C44B 07:C43B: 8D B0 05  STA ram_номер_палитры_спрайтов + 2
C - - - - - 0x01C44E 07:C43E: 8D B1 05  STA ram_номер_палитры_спрайтов + 3
C - - - - - 0x01C451 07:C441: 20 36 D0  JSR sub_D036
C - - - - - 0x01C454 07:C444: A9 22     LDA #$22
C - - - - - 0x01C456 07:C446: 8D 07 06  STA ram_0607
C - - - - - 0x01C459 07:C449: 8D 10 06  STA ram_0610
C - - - - - 0x01C45C 07:C44C: A9 E3     LDA #$E3
C - - - - - 0x01C45E 07:C44E: 8D 08 06  STA ram_0608
C - - - - - 0x01C461 07:C451: 8D 0F 06  STA ram_060F
C - - - - - 0x01C464 07:C454: A9 F8     LDA #$F8
C - - - - - 0x01C466 07:C456: 8D 15 06  STA ram_0615
C - - - - - 0x01C469 07:C459: 8D 1C 06  STA ram_061C
C - - - - - 0x01C46C 07:C45C: A9 01     LDA #$01
C - - - - - 0x01C46E 07:C45E: 8D 58 00  STA a: ram_номер_экрана
C - - - - - 0x01C471 07:C461: A9 00     LDA #$00
C - - - - - 0x01C473 07:C463: 8D 59 00  STA a: ram_подтип_экрана
C - - - - - 0x01C476 07:C466: 8D 00 E0  STA $E000
C - - - - - 0x01C479 07:C469: 58        CLI
C - - - - - 0x01C47A 07:C46A: A9 00     LDA #$00
C - - - - - 0x01C47C 07:C46C: 85 0A     STA ram_одноразовые_кнопки + 2
C - - - - - 0x01C47E 07:C46E: A9 F0     LDA #$F0
C - - - - - 0x01C480 07:C470: 8D 56 00  STA a: ram_ограничитель_Y_спрайтов
C - - - - - 0x01C483 07:C473: A9 01     LDA #$01
C - - - - - 0x01C485 07:C475: 8D E6 05  STA ram_05E6
loc_C478:
C D 2 - - - 0x01C488 07:C478: A9 00     LDA #$00
C - - - - - 0x01C48A 07:C47A: 85 51     STA ram_задержка_кадра
C - - - - - 0x01C48C 07:C47C: 20 A8 C2  JSR sub_C2A8
C - - - - - 0x01C48F 07:C47F: 20 A0 CE  JSR sub_CEA0
C - - - - - 0x01C492 07:C482: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01C494 07:C484: 85 5A     STA ram_копия_подтипа_экрана
C - - - - - 0x01C496 07:C486: EE 00 03  INC ram_счетчик_кадров
C - - - - - 0x01C499 07:C489: 20 8A C2  JSR sub_C28A
C - - - - - 0x01C49C 07:C48C: 20 35 EE  JSR sub_EE35
C - - - - - 0x01C49F 07:C48F: 20 CD ED  JSR sub_EDCD
C - - - - - 0x01C4A2 07:C492: A5 58     LDA ram_номер_экрана
C - - - - - 0x01C4A4 07:C494: 0A        ASL
C - - - - - 0x01C4A5 07:C495: A8        TAY
C - - - - - 0x01C4A6 07:C496: B9 A3 C4  LDA tbl_C4A3,Y
C - - - - - 0x01C4A9 07:C499: 85 2C     STA ram_002C
C - - - - - 0x01C4AB 07:C49B: B9 A4 C4  LDA tbl_C4A3 + 1,Y
C - - - - - 0x01C4AE 07:C49E: 85 2D     STA ram_002D
C - - - - - 0x01C4B0 07:C4A0: 6C 2C 00  JMP (ram_002C)

tbl_C4A3:
- D 2 - - - 0x01C4B3 07:C4A3: AB C4     .word ofs_024_C4AB_00
- D 2 - - - 0x01C4B5 07:C4A5: B1 C4     .word ofs_024_C4B1_01
- D 2 - - - 0x01C4B7 07:C4A7: B7 C4     .word ofs_024_C4B7_02
- - - - - - 0x01C4B9 07:C4A9: BD C4     .word ofs_024_C4BD_03



ofs_024_C4AB_00:
C - - J - - 0x01C4BB 07:C4AB: 20 06 C5  JSR sub_C506
C - - - - - 0x01C4BE 07:C4AE: 4C C3 C4  JMP loc_C4C3

ofs_024_C4B1_01:
C - - J - - 0x01C4C1 07:C4B1: 20 5D C2  JSR sub_C25D
C - - - - - 0x01C4C4 07:C4B4: 4C C3 C4  JMP loc_C4C3

ofs_024_C4B7_02:
C - - J - - 0x01C4C7 07:C4B7: 20 DA C2  JSR sub_C2DA
C - - - - - 0x01C4CA 07:C4BA: 4C C3 C4  JMP loc_C4C3

ofs_024_C4BD_03:
- - - - - - 0x01C4CD 07:C4BD: 20 6C C2  JSR sub_C26C
- - - - - - 0x01C4D0 07:C4C0: 4C C3 C4  JMP loc_C4C3



bra_C4C3:
loc_C4C3:
C D 2 - - - 0x01C4D3 07:C4C3: A5 51     LDA ram_задержка_кадра
bra_C4C5:
C - - - - - 0x01C4D5 07:C4C5: C5 51     CMP ram_задержка_кадра
C - - - - - 0x01C4D7 07:C4C7: F0 FC     BEQ bra_C4C5
C - - - - - 0x01C4D9 07:C4C9: A5 51     LDA ram_задержка_кадра
C - - - - - 0x01C4DB 07:C4CB: CD E6 05  CMP ram_05E6
C - - - - - 0x01C4DE 07:C4CE: 90 F3     BCC bra_C4C3
C - - - - - 0x01C4E0 07:C4D0: CD 52 00  CMP a: ram_0052
C - - - - - 0x01C4E3 07:C4D3: 90 03     BCC bra_C4D8
C - - - - - 0x01C4E5 07:C4D5: 8D 52 00  STA a: ram_0052
bra_C4D8:
C - - - - - 0x01C4E8 07:C4D8: 4C 78 C4  JMP loc_C478



loc_C4DB:
sub_C4DB:
C - - - - - 0x01C4EB 07:C4DB: A0 08     LDY #$08
C - - - - - 0x01C4ED 07:C4DD: A5 08     LDA ram_одноразовые_кнопки
C - - - - - 0x01C4EF 07:C4DF: 29 30     AND #$30
C - - - - - 0x01C4F1 07:C4E1: D0 0C     BNE bra_C4EF
C - - - - - 0x01C4F3 07:C4E3: A0 05     LDY #$05
C - - - - - 0x01C4F5 07:C4E5: CE 89 05  DEC ram_таймер_демо_lo
C - - - - - 0x01C4F8 07:C4E8: D0 1B     BNE bra_C505_RTS
C - - - - - 0x01C4FA 07:C4EA: CE 8A 05  DEC ram_таймер_демо_hi
C - - - - - 0x01C4FD 07:C4ED: D0 16     BNE bra_C505_RTS
bra_C4EF:
C - - - - - 0x01C4FF 07:C4EF: 84 2B     STY ram_002B
C - - - - - 0x01C501 07:C4F1: 20 47 D0  JSR sub_D047
C - - - - - 0x01C504 07:C4F4: 20 62 D0  JSR sub_D062
C - - - - - 0x01C507 07:C4F7: A5 2B     LDA ram_002B
C - - - - - 0x01C509 07:C4F9: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C50B 07:C4FB: A9 80     LDA #$80
C - - - - - 0x01C50D 07:C4FD: 85 4F     STA ram_флаг_NMI
C - - - - - 0x01C50F 07:C4FF: A9 01     LDA #$01
C - - - - - 0x01C511 07:C501: 85 58     STA ram_номер_экрана
C - - - - - 0x01C513 07:C503: 68        PLA
C - - - - - 0x01C514 07:C504: 68        PLA
bra_C505_RTS:
C - - - - - 0x01C515 07:C505: 60        RTS



sub_C506:
C - - - - - 0x01C516 07:C506: AD 8B 05  LDA ram_флаг_демо
C - - - - - 0x01C519 07:C509: 10 03     BPL bra_C50E
C - - - - - 0x01C51B 07:C50B: 20 DB C4  JSR sub_C4DB
bra_C50E:
C - - - - - 0x01C51E 07:C50E: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01C520 07:C510: 0A        ASL
C - - - - - 0x01C521 07:C511: A8        TAY
C - - - - - 0x01C522 07:C512: B9 1F C5  LDA tbl_C51F,Y
C - - - - - 0x01C525 07:C515: 85 2C     STA ram_002C
C - - - - - 0x01C527 07:C517: B9 20 C5  LDA tbl_C51F + 1,Y
C - - - - - 0x01C52A 07:C51A: 85 2D     STA ram_002D
C - - - - - 0x01C52C 07:C51C: 6C 2C 00  JMP (ram_002C)

tbl_C51F:
- D 2 - - - 0x01C52F 07:C51F: 39 C5     .word ofs_025_C539_00
- D 2 - - - 0x01C531 07:C521: 7D C5     .word ofs_025_C57D_01
- D 2 - - - 0x01C533 07:C523: 15 C6     .word ofs_025_C615_02
- D 2 - - - 0x01C535 07:C525: 99 C6     .word ofs_025_C699_03
- D 2 - - - 0x01C537 07:C527: 1E C7     .word ofs_025_C71E_04
- D 2 - - - 0x01C539 07:C529: 7D C7     .word ofs_025_C77D_05
- D 2 - - - 0x01C53B 07:C52B: D0 C7     .word ofs_025_C7D0_06
- D 2 - - - 0x01C53D 07:C52D: 43 C7     .word ofs_025_C743_07
- D 2 - - - 0x01C53F 07:C52F: 7D C7     .word ofs_025_C77D_08
- D 2 - - - 0x01C541 07:C531: 5D C7     .word ofs_025_C75D_09
- D 2 - - - 0x01C543 07:C533: 77 C7     .word ofs_025_C777_0A
- - - - - - 0x01C545 07:C535: 43 C7     .word ofs_025_C743_0B
- - - - - - 0x01C547 07:C537: 7D C7     .word ofs_025_C77D_0C



ofs_025_C539_00:
C - - J - - 0x01C549 07:C539: A9 C0     LDA #$C0
C - - - - - 0x01C54B 07:C53B: 8D 4F 00  STA a: ram_флаг_NMI
C - - - - - 0x01C54E 07:C53E: 20 5A EF  JSR sub_EF5A
C - - - - - 0x01C551 07:C541: 20 93 CF  JSR sub_CF93
C - - - - - 0x01C554 07:C544: 20 0B DE  JSR sub_DE0B
C - - - - - 0x01C557 07:C547: A9 02     LDA #$02
C - - - - - 0x01C559 07:C549: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x01C55C 07:C54C: A9 00     LDA #$00
C - - - - - 0x01C55E 07:C54E: 8D B2 05  STA ram_флаг_яркости
C - - - - - 0x01C561 07:C551: 8D B6 05  STA ram_счетчик_яркости
C - - - - - 0x01C564 07:C554: 8D B5 05  STA ram_таймер_яркости
C - - - - - 0x01C567 07:C557: 8D E2 05  STA ram_таймер_катсцены
C - - - - - 0x01C56A 07:C55A: 8D F0 05  STA ram_счетчик_следов
C - - - - - 0x01C56D 07:C55D: A9 FF     LDA #$FF
C - - - - - 0x01C56F 07:C55F: 8D 78 06  STA ram_приказ_боту
C - - - - - 0x01C572 07:C562: 8D 79 06  STA ram_приказ_боту + 1
C - - - - - 0x01C575 07:C565: 8D 7A 06  STA ram_направление_паса_команды
C - - - - - 0x01C578 07:C568: 8D 7B 06  STA ram_направление_паса_команды + 1
C - - - - - 0x01C57B 07:C56B: 8D 84 06  STA ram_0684
C - - - - - 0x01C57E 07:C56E: 8D 85 06  STA ram_0685
C - - - - - 0x01C581 07:C571: 20 6A BD  JSR sub_0x01BD7A
C - - - - - 0x01C584 07:C574: 20 CC BE  JSR sub_0x01BEDC
C - - - - - 0x01C587 07:C577: 20 9E C2  JSR sub_C29E
bra_C57A:
C - - - - - 0x01C58A 07:C57A: 4C 98 C6  JMP loc_C698_RTS



ofs_025_C57D_01:
C - - J - - 0x01C58D 07:C57D: 20 71 C2  JSR sub_C271
C - - - - - 0x01C590 07:C580: 20 6A BD  JSR sub_0x01BD7A
C - - - - - 0x01C593 07:C583: 20 CC BE  JSR sub_0x01BEDC
C - - - - - 0x01C596 07:C586: 20 A5 F3  JSR sub_F3A5
C - - - - - 0x01C599 07:C589: 20 9E C2  JSR sub_C29E
C - - - - - 0x01C59C 07:C58C: 20 73 D0  JSR sub_D073
C - - - - - 0x01C59F 07:C58F: AD B2 05  LDA ram_флаг_яркости
C - - - - - 0x01C5A2 07:C592: 10 E6     BPL bra_C57A
C - - - - - 0x01C5A4 07:C594: AD FA 05  LDA ram_05FA
C - - - - - 0x01C5A7 07:C597: 10 17     BPL bra_C5B0
C - - - - - 0x01C5A9 07:C599: AD F8 05  LDA ram_вид_статусбара
C - - - - - 0x01C5AC 07:C59C: C9 02     CMP #$02
C - - - - - 0x01C5AE 07:C59E: F0 10     BEQ bra_C5B0
C - - - - - 0x01C5B0 07:C5A0: C9 03     CMP #$03
C - - - - - 0x01C5B2 07:C5A2: F0 0C     BEQ bra_C5B0
C - - - - - 0x01C5B4 07:C5A4: C9 06     CMP #$06
C - - - - - 0x01C5B6 07:C5A6: F0 08     BEQ bra_C5B0
C - - - - - 0x01C5B8 07:C5A8: A9 00     LDA #$00
C - - - - - 0x01C5BA 07:C5AA: 8D FA 05  STA ram_05FA
C - - - - - 0x01C5BD 07:C5AD: 8D F7 05  STA ram_задержка_перелив_надп
bra_C5B0:
C - - - - - 0x01C5C0 07:C5B0: 20 AD C2  JSR sub_C2AD
C - - - - - 0x01C5C3 07:C5B3: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C5C5 07:C5B5: 29 20     AND #$20
C - - - - - 0x01C5C7 07:C5B7: F0 0B     BEQ bra_C5C4
C - - - - - 0x01C5C9 07:C5B9: 20 7B C8  JSR sub_C87B
C - - - - - 0x01C5CC 07:C5BC: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C5CE 07:C5BE: 29 20     AND #$20
C - - - - - 0x01C5D0 07:C5C0: F0 07     BEQ bra_C5C9
- - - - - - 0x01C5D2 07:C5C2: D0 4E     BNE bra_C612
bra_C5C4:
C - - - - - 0x01C5D4 07:C5C4: 2C 92 04  BIT ram_мяч_состояние
C - - - - - 0x01C5D7 07:C5C7: 70 49     BVS bra_C612
bra_C5C9:
C - - - - - 0x01C5D9 07:C5C9: E6 59     INC ram_подтип_экрана
C - - - - - 0x01C5DB 07:C5CB: A9 00     LDA #$00
C - - - - - 0x01C5DD 07:C5CD: 85 5C     STA ram_режим_игры_на_поле
C - - - - - 0x01C5DF 07:C5CF: 8D 2A 05  STA ram_флаг_владения_мячом_ком
C - - - - - 0x01C5E2 07:C5D2: 8D 2B 05  STA ram_флаг_владения_мячом_ком + 1
C - - - - - 0x01C5E5 07:C5D5: 20 1F D0  JSR sub_D01F
C - - - - - 0x01C5E8 07:C5D8: 20 D5 D0  JSR sub_D0D5
C - - - - - 0x01C5EB 07:C5DB: A9 00     LDA #$00
C - - - - - 0x01C5ED 07:C5DD: 8D 92 06  STA ram_бит_для_2000_палитра
C - - - - - 0x01C5F0 07:C5E0: A9 3F     LDA #$3F
C - - - - - 0x01C5F2 07:C5E2: 8D D9 06  STA ram_байт_2006_hi_палитра
C - - - - - 0x01C5F5 07:C5E5: A9 FF     LDA #$FF
C - - - - - 0x01C5F7 07:C5E7: 8D FA 05  STA ram_05FA
C - - - - - 0x01C5FA 07:C5EA: A9 86     LDA #$86
C - - - - - 0x01C5FC 07:C5EC: 8D F8 05  STA ram_вид_статусбара
C - - - - - 0x01C5FF 07:C5EF: A9 00     LDA #$00
C - - - - - 0x01C601 07:C5F1: 8D F9 05  STA ram_флаг_готового_статусбара
C - - - - - 0x01C604 07:C5F4: A2 00     LDX #$00
C - - - - - 0x01C606 07:C5F6: A9 0F     LDA #$0F
bra_C5F8:
C - - - - - 0x01C608 07:C5F8: 9D 96 06  STA ram_буфер_атрибутов,X
C - - - - - 0x01C60B 07:C5FB: 9D B9 06  STA ram_буфер_графики,X
C - - - - - 0x01C60E 07:C5FE: E8        INX
C - - - - - 0x01C60F 07:C5FF: E0 20     CPX #$20
C - - - - - 0x01C611 07:C601: 90 F5     BCC bra_C5F8
C - - - - - 0x01C613 07:C603: A2 06     LDX #$06
C - - - - - 0x01C615 07:C605: A9 FA     LDA #$FA
bra_C607:
C - - - - - 0x01C617 07:C607: 9D 96 06  STA ram_буфер_атрибутов,X
C - - - - - 0x01C61A 07:C60A: 9D B9 06  STA ram_буфер_графики,X
C - - - - - 0x01C61D 07:C60D: E8        INX
C - - - - - 0x01C61E 07:C60E: E0 0B     CPX #$0B
C - - - - - 0x01C620 07:C610: 90 F5     BCC bra_C607
bra_C612:
C - - - - - 0x01C622 07:C612: 4C 98 C6  JMP loc_C698_RTS



ofs_025_C615_02:
C - - J - - 0x01C625 07:C615: AD 08 00  LDA a: ram_одноразовые_кнопки
C - - - - - 0x01C628 07:C618: 29 10     AND #$10
C - - - - - 0x01C62A 07:C61A: F0 1E     BEQ bra_C63A
C - - - - - 0x01C62C 07:C61C: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C62E 07:C61E: 49 80     EOR #$80
C - - - - - 0x01C630 07:C620: 85 5C     STA ram_режим_игры_на_поле
C - - - - - 0x01C632 07:C622: 30 09     BMI bra_C62D
C - - - - - 0x01C634 07:C624: AD 5A 05  LDA ram_номер_музыки
C - - - - - 0x01C637 07:C627: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01C63A 07:C62A: 4C 3A C6  JMP loc_C63A
bra_C62D:
C - - - - - 0x01C63D 07:C62D: A9 00     LDA #$00
C - - - - - 0x01C63F 07:C62F: 8D FD 06  STA ram_06FD
C - - - - - 0x01C642 07:C632: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01C645 07:C635: A9 2D     LDA #$2D
C - - - - - 0x01C647 07:C637: 20 E4 C2  JSR sub_C2E4
bra_C63A:
loc_C63A:
C D 2 - - - 0x01C64A 07:C63A: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C64C 07:C63C: 10 2D     BPL bra_C66B
C - - - - - 0x01C64E 07:C63E: 20 47 DE  JSR sub_DE47
C - - - - - 0x01C651 07:C641: 20 EE CA  JSR sub_CAEE
C - - - - - 0x01C654 07:C644: 4C 5F CB  JMP loc_CB5F



loc_C647:
C D 2 - - - 0x01C657 07:C647: AD 00 03  LDA ram_счетчик_кадров
C - - - - - 0x01C65A 07:C64A: 29 01     AND #$01
C - - - - - 0x01C65C 07:C64C: D0 06     BNE bra_C654
C - - - - - 0x01C65E 07:C64E: 20 07 CB  JSR sub_CB07
C - - - - - 0x01C661 07:C651: 4C 68 C6  JMP loc_C668
bra_C654:
C - - - - - 0x01C664 07:C654: A9 0F     LDA #$0F
C - - - - - 0x01C666 07:C656: 8D A5 05  STA ram_тайл_статусбара
C - - - - - 0x01C669 07:C659: 8D A6 05  STA ram_тайл_статусбара + 1
C - - - - - 0x01C66C 07:C65C: 8D A7 05  STA ram_тайл_статусбара + 2
C - - - - - 0x01C66F 07:C65F: 8D A8 05  STA ram_тайл_статусбара + 3
C - - - - - 0x01C672 07:C662: 8D A9 05  STA ram_тайл_статусбара + 4
C - - - - - 0x01C675 07:C665: 8D AA 05  STA ram_тайл_статусбара + 5
loc_C668:
C D 2 - - - 0x01C678 07:C668: 4C 98 C6  JMP loc_C698_RTS
bra_C66B:
C - - - - - 0x01C67B 07:C66B: 20 0B DE  JSR sub_DE0B
C - - - - - 0x01C67E 07:C66E: 20 E7 D6  JSR sub_D6E7
C - - - - - 0x01C681 07:C671: 20 47 DE  JSR sub_DE47
C - - - - - 0x01C684 07:C674: 20 EE CA  JSR sub_CAEE
C - - - - - 0x01C687 07:C677: 20 4E C2  JSR sub_C24E
C - - - - - 0x01C68A 07:C67A: 20 AD C2  JSR sub_C2AD
C - - - - - 0x01C68D 07:C67D: 20 71 C2  JSR sub_C271
C - - - - - 0x01C690 07:C680: 20 6A BD  JSR sub_0x01BD7A
C - - - - - 0x01C693 07:C683: 20 A3 C2  JSR sub_C2A3
C - - - - - 0x01C696 07:C686: 20 85 C2  JSR sub_C285
C - - - - - 0x01C699 07:C689: 20 9C C8  JSR sub_C89C
C - - - - - 0x01C69C 07:C68C: 20 CC BE  JSR sub_0x01BEDC
C - - - - - 0x01C69F 07:C68F: 20 9E C2  JSR sub_C29E
C - - - - - 0x01C6A2 07:C692: 20 99 C2  JSR sub_C299
C - - - - - 0x01C6A5 07:C695: 20 73 D0  JSR sub_D073
loc_C698_RTS:
C D 2 - - - 0x01C6A8 07:C698: 60        RTS



ofs_025_C699_03:
C - - J - - 0x01C6A9 07:C699: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01C6AC 07:C69C: 29 CF     AND #$CF
C - - - - - 0x01C6AE 07:C69E: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01C6B1 07:C6A1: 20 0B DE  JSR sub_DE0B
C - - - - - 0x01C6B4 07:C6A4: 20 47 DE  JSR sub_DE47
C - - - - - 0x01C6B7 07:C6A7: 20 EE CA  JSR sub_CAEE
C - - - - - 0x01C6BA 07:C6AA: 20 AD C2  JSR sub_C2AD
C - - - - - 0x01C6BD 07:C6AD: 20 4E C2  JSR sub_C24E
C - - - - - 0x01C6C0 07:C6B0: 20 71 C2  JSR sub_C271
C - - - - - 0x01C6C3 07:C6B3: 20 6A BD  JSR sub_0x01BD7A
C - - - - - 0x01C6C6 07:C6B6: 20 A3 C2  JSR sub_C2A3
C - - - - - 0x01C6C9 07:C6B9: 20 85 C2  JSR sub_C285
C - - - - - 0x01C6CC 07:C6BC: 20 A5 F3  JSR sub_F3A5
C - - - - - 0x01C6CF 07:C6BF: 20 9E C2  JSR sub_C29E
C - - - - - 0x01C6D2 07:C6C2: 20 99 C2  JSR sub_C299
C - - - - - 0x01C6D5 07:C6C5: AD E2 05  LDA ram_таймер_катсцены
C - - - - - 0x01C6D8 07:C6C8: C9 20     CMP #$20
C - - - - - 0x01C6DA 07:C6CA: 90 10     BCC bra_C6DC
C - - - - - 0x01C6DC 07:C6CC: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C6DE 07:C6CE: 29 02     AND #$02
C - - - - - 0x01C6E0 07:C6D0: F0 0A     BEQ bra_C6DC
C - - - - - 0x01C6E2 07:C6D2: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x01C6E5 07:C6D5: 29 0F     AND #$0F
C - - - - - 0x01C6E7 07:C6D7: 09 40     ORA #$40
C - - - - - 0x01C6E9 07:C6D9: 8D AD 03  STA ram_объект_камеры
bra_C6DC:
C - - - - - 0x01C6EC 07:C6DC: AD E2 05  LDA ram_таймер_катсцены
C - - - - - 0x01C6EF 07:C6DF: C9 40     CMP #$40
C - - - - - 0x01C6F1 07:C6E1: B0 0D     BCS bra_C6F0
C - - - - - 0x01C6F3 07:C6E3: AD 08 00  LDA a: ram_одноразовые_кнопки
C - - - - - 0x01C6F6 07:C6E6: 29 30     AND #$30
C - - - - - 0x01C6F8 07:C6E8: D0 0A     BNE bra_C6F4
C - - - - - 0x01C6FA 07:C6EA: EE E2 05  INC ram_таймер_катсцены
C - - - - - 0x01C6FD 07:C6ED: 4C 06 C7  JMP loc_C706
bra_C6F0:
C - - - - - 0x01C700 07:C6F0: C9 FF     CMP #$FF
C - - - - - 0x01C702 07:C6F2: F0 12     BEQ bra_C706
bra_C6F4:
C - - - - - 0x01C704 07:C6F4: 20 47 D0  JSR sub_D047
C - - - - - 0x01C707 07:C6F7: A9 00     LDA #$00
C - - - - - 0x01C709 07:C6F9: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01C70C 07:C6FC: A9 FF     LDA #$FF
C - - - - - 0x01C70E 07:C6FE: 8D E2 05  STA ram_таймер_катсцены
C - - - - - 0x01C711 07:C701: A9 00     LDA #$00
C - - - - - 0x01C713 07:C703: 8D 66 04  STA ram_погода_номер_эффекта
bra_C706:
loc_C706:
C D 2 - - - 0x01C716 07:C706: 20 73 D0  JSR sub_D073
C - - - - - 0x01C719 07:C709: 2C B2 05  BIT ram_флаг_яркости
C - - - - - 0x01C71C 07:C70C: 10 0D     BPL bra_C71B
C - - - - - 0x01C71E 07:C70E: 50 0B     BVC bra_C71B
C - - - - - 0x01C720 07:C710: 20 1A C9  JSR sub_C91A
C - - - - - 0x01C723 07:C713: A9 00     LDA #$00
C - - - - - 0x01C725 07:C715: 8D 5C 00  STA a: ram_режим_игры_на_поле
C - - - - - 0x01C728 07:C718: 8D E2 05  STA ram_таймер_катсцены
bra_C71B:
C - - - - - 0x01C72B 07:C71B: 4C 98 C6  JMP loc_C698_RTS



ofs_025_C71E_04:
C - - J - - 0x01C72E 07:C71E: 20 D5 C2  JSR sub_C2D5
C - - - - - 0x01C731 07:C721: 20 1F CA  JSR sub_CA1F
C - - - - - 0x01C734 07:C724: 20 58 CA  JSR sub_CA58
C - - - - - 0x01C737 07:C727: 20 49 C2  JSR sub_C249
C - - - - - 0x01C73A 07:C72A: 20 CB EC  JSR sub_ECCB
C - - - - - 0x01C73D 07:C72D: 20 65 EE  JSR sub_EE65
C - - - - - 0x01C740 07:C730: A9 0C     LDA #$0C
C - - - - - 0x01C742 07:C732: 20 E4 C2  JSR sub_C2E4
loc_C735:
C D 2 - - - 0x01C745 07:C735: A9 00     LDA #$00
C - - - - - 0x01C747 07:C737: 8D E2 05  STA ram_таймер_катсцены
C - - - - - 0x01C74A 07:C73A: 20 4F D0  JSR sub_D04F
C - - - - - 0x01C74D 07:C73D: E6 59     INC ram_подтип_экрана
C - - - - - 0x01C74F 07:C73F: 78        SEI
C - - - - - 0x01C750 07:C740: 4C 98 C6  JMP loc_C698_RTS



ofs_025_C743_07:
ofs_025_C743_0B:
C - - J - - 0x01C753 07:C743: 20 D5 C2  JSR sub_C2D5
C - - - - - 0x01C756 07:C746: 20 1F CA  JSR sub_CA1F
C - - - - - 0x01C759 07:C749: 20 58 CA  JSR sub_CA58
C - - - - - 0x01C75C 07:C74C: 20 49 C2  JSR sub_C249
C - - - - - 0x01C75F 07:C74F: 20 CB EC  JSR sub_ECCB
C - - - - - 0x01C762 07:C752: 20 65 EE  JSR sub_EE65
C - - - - - 0x01C765 07:C755: A9 09     LDA #$09
C - - - - - 0x01C767 07:C757: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01C76A 07:C75A: 4C 35 C7  JMP loc_C735



ofs_025_C75D_09:
C - - J - - 0x01C76D 07:C75D: 20 62 C2  JSR sub_C262
C - - - - - 0x01C770 07:C760: 20 1F CA  JSR sub_CA1F
C - - - - - 0x01C773 07:C763: 20 58 CA  JSR sub_CA58
C - - - - - 0x01C776 07:C766: 20 49 C2  JSR sub_C249
C - - - - - 0x01C779 07:C769: 20 CB EC  JSR sub_ECCB
C - - - - - 0x01C77C 07:C76C: 20 65 EE  JSR sub_EE65
C - - - - - 0x01C77F 07:C76F: A9 09     LDA #$09
C - - - - - 0x01C781 07:C771: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01C784 07:C774: 4C 35 C7  JMP loc_C735



ofs_025_C777_0A:
C - - J - - 0x01C787 07:C777: 20 67 C2  JSR sub_C267
C - - - - - 0x01C78A 07:C77A: 4C 86 C7  JMP loc_C786



ofs_025_C77D_05:
ofs_025_C77D_08:
ofs_025_C77D_0C:
C - - J - - 0x01C78D 07:C77D: 20 EE CA  JSR sub_CAEE
C - - - - - 0x01C790 07:C780: 20 42 BE  JSR sub_0x01BE52
C - - - - - 0x01C793 07:C783: 20 85 C2  JSR sub_C285
loc_C786:
C D 2 - - - 0x01C796 07:C786: 20 9E C2  JSR sub_C29E
C - - - - - 0x01C799 07:C789: 20 73 D0  JSR sub_D073
C - - - - - 0x01C79C 07:C78C: AD B2 05  LDA ram_флаг_яркости
C - - - - - 0x01C79F 07:C78F: 10 3C     BPL bra_C7CD
C - - - - - 0x01C7A1 07:C791: 0A        ASL
C - - - - - 0x01C7A2 07:C792: 10 06     BPL bra_C79A
C - - - - - 0x01C7A4 07:C794: 20 1A C9  JSR sub_C91A
C - - - - - 0x01C7A7 07:C797: 4C CD C7  JMP loc_C7CD
bra_C79A:
C - - - - - 0x01C7AA 07:C79A: AD E2 05  LDA ram_таймер_катсцены
C - - - - - 0x01C7AD 07:C79D: D0 06     BNE bra_C7A5
C - - - - - 0x01C7AF 07:C79F: AD EC 05  LDA ram_след_lo_2006
C - - - - - 0x01C7B2 07:C7A2: 8D E8 05  STA ram_след_hi_2006
bra_C7A5:
C - - - - - 0x01C7B5 07:C7A5: EE E2 05  INC ram_таймер_катсцены
C - - - - - 0x01C7B8 07:C7A8: AD 08 00  LDA a: ram_одноразовые_кнопки
C - - - - - 0x01C7BB 07:C7AB: 29 30     AND #$30
C - - - - - 0x01C7BD 07:C7AD: D0 13     BNE bra_C7C2
C - - - - - 0x01C7BF 07:C7AF: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01C7C1 07:C7B1: C9 05     CMP #$05
C - - - - - 0x01C7C3 07:C7B3: F0 06     BEQ bra_C7BB
C - - - - - 0x01C7C5 07:C7B5: 24 08     BIT ram_одноразовые_кнопки
C - - - - - 0x01C7C7 07:C7B7: 30 09     BMI bra_C7C2
C - - - - - 0x01C7C9 07:C7B9: 70 07     BVS bra_C7C2
bra_C7BB:
C - - - - - 0x01C7CB 07:C7BB: AD E2 05  LDA ram_таймер_катсцены
C - - - - - 0x01C7CE 07:C7BE: C9 F0     CMP #$F0
C - - - - - 0x01C7D0 07:C7C0: 90 0B     BCC bra_C7CD
bra_C7C2:
C - - - - - 0x01C7D2 07:C7C2: 20 47 D0  JSR sub_D047
C - - - - - 0x01C7D5 07:C7C5: A9 00     LDA #$00
C - - - - - 0x01C7D7 07:C7C7: 8D E8 05  STA ram_след_hi_2006
C - - - - - 0x01C7DA 07:C7CA: 20 E4 C2  JSR sub_C2E4
bra_C7CD:
loc_C7CD:
C D 2 - - - 0x01C7DD 07:C7CD: 4C 98 C6  JMP loc_C698_RTS



ofs_025_C7D0_06:
C - - J - - 0x01C7E0 07:C7D0: 20 0B DE  JSR sub_DE0B
C - - - - - 0x01C7E3 07:C7D3: 20 47 DE  JSR sub_DE47
C - - - - - 0x01C7E6 07:C7D6: 20 EE CA  JSR sub_CAEE
C - - - - - 0x01C7E9 07:C7D9: 20 AD C2  JSR sub_C2AD
C - - - - - 0x01C7EC 07:C7DC: 20 4E C2  JSR sub_C24E
C - - - - - 0x01C7EF 07:C7DF: 20 71 C2  JSR sub_C271
C - - - - - 0x01C7F2 07:C7E2: 20 E7 D6  JSR sub_D6E7
C - - - - - 0x01C7F5 07:C7E5: 20 6A BD  JSR sub_0x01BD7A
C - - - - - 0x01C7F8 07:C7E8: 20 A3 C2  JSR sub_C2A3
C - - - - - 0x01C7FB 07:C7EB: 20 0B C8  JSR sub_C80B
C - - - - - 0x01C7FE 07:C7EE: 20 85 C2  JSR sub_C285
C - - - - - 0x01C801 07:C7F1: 20 CC BE  JSR sub_0x01BEDC
C - - - - - 0x01C804 07:C7F4: 20 9E C2  JSR sub_C29E
C - - - - - 0x01C807 07:C7F7: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C809 07:C7F9: D0 0D     BNE bra_C808
C - - - - - 0x01C80B 07:C7FB: A9 02     LDA #$02
C - - - - - 0x01C80D 07:C7FD: 8D 59 00  STA a: ram_подтип_экрана
C - - - - - 0x01C810 07:C800: AD AD 03  LDA ram_объект_камеры
C - - - - - 0x01C813 07:C803: 29 7F     AND #$7F
C - - - - - 0x01C815 07:C805: 8D AD 03  STA ram_объект_камеры
bra_C808:
C - - - - - 0x01C818 07:C808: 4C 98 C6  JMP loc_C698_RTS



sub_C80B:
C - - - - - 0x01C81B 07:C80B: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x01C81E 07:C80E: AD E5 00  LDA a: ram_флаг_видимости_мяча
C - - - - - 0x01C821 07:C811: D0 0C     BNE bra_C81F
C - - - - - 0x01C823 07:C813: 8D 02 04  STA ram_мяч_spd_X_hi
C - - - - - 0x01C826 07:C816: 8D F4 03  STA ram_мяч_spd_X_lo
C - - - - - 0x01C829 07:C819: 8D 1E 04  STA ram_мяч_spd_Y_hi
C - - - - - 0x01C82C 07:C81C: 8D 10 04  STA ram_мяч_spd_Y_lo
bra_C81F:
C - - - - - 0x01C82F 07:C81F: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C831 07:C821: 29 04     AND #$04
C - - - - - 0x01C833 07:C823: F0 0B     BEQ bra_C830
C - - - - - 0x01C835 07:C825: AD AD 03  LDA ram_объект_камеры
C - - - - - 0x01C838 07:C828: 29 7F     AND #$7F
C - - - - - 0x01C83A 07:C82A: 8D AD 03  STA ram_объект_камеры
C - - - - - 0x01C83D 07:C82D: 4C 72 C8  JMP loc_C872_RTS
bra_C830:
C - - - - - 0x01C840 07:C830: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01C843 07:C833: CD 74 C8  CMP tbl_C874
C - - - - - 0x01C846 07:C836: F0 04     BEQ bra_C83C
C - - - - - 0x01C848 07:C838: 90 0A     BCC bra_C844
C - - - - - 0x01C84A 07:C83A: B0 0D     BCS bra_C849
bra_C83C:
C - - - - - 0x01C84C 07:C83C: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01C84F 07:C83F: CD 73 C8  CMP tbl_C873
C - - - - - 0x01C852 07:C842: B0 05     BCS bra_C849
bra_C844:
C - - - - - 0x01C854 07:C844: A0 00     LDY #$00
C - - - - - 0x01C856 07:C846: 4C 5F C8  JMP loc_C85F
bra_C849:
C - - - - - 0x01C859 07:C849: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01C85C 07:C84C: CD 76 C8  CMP tbl_C876
C - - - - - 0x01C85F 07:C84F: F0 04     BEQ bra_C855
C - - - - - 0x01C861 07:C851: B0 0A     BCS bra_C85D
C - - - - - 0x01C863 07:C853: 90 1D     BCC bra_C872_RTS
bra_C855:
C - - - - - 0x01C865 07:C855: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01C868 07:C858: CD 75 C8  CMP tbl_C875
C - - - - - 0x01C86B 07:C85B: 90 15     BCC bra_C872_RTS
bra_C85D:
C - - - - - 0x01C86D 07:C85D: A0 02     LDY #$02
loc_C85F:
C D 2 - - - 0x01C86F 07:C85F: 18        CLC
C - - - - - 0x01C870 07:C860: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01C873 07:C863: 79 77 C8  ADC tbl_C877,Y
C - - - - - 0x01C876 07:C866: 8D F0 00  STA a: ram_копия_камеры_X_lo
C - - - - - 0x01C879 07:C869: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01C87C 07:C86C: 79 78 C8  ADC tbl_C878,Y
C - - - - - 0x01C87F 07:C86F: 8D F1 00  STA a: ram_копия_камеры_X_hi
bra_C872_RTS:
loc_C872_RTS:
C D 2 - - - 0x01C882 07:C872: 60        RTS


; bzk
tbl_C873:
- D 2 - - - 0x01C883 07:C873: 80        .byte $80   ; 
tbl_C874:
- D 2 - - - 0x01C884 07:C874: 00        .byte $00   ; 
tbl_C875:
- D 2 - - - 0x01C885 07:C875: 80        .byte $80   ; 
tbl_C876:
- D 2 - - - 0x01C886 07:C876: 02        .byte $02   ; 



tbl_C877:
- D 2 - - - 0x01C887 07:C877: 08        .byte $08   ; 
tbl_C878:
- D 2 - - - 0x01C888 07:C878: 00        .byte $00   ; 
- D 2 - - - 0x01C889 07:C879: F8        .byte $F8   ; 
- D 2 - - - 0x01C88A 07:C87A: FF        .byte $FF   ; 



sub_C87B:
C - - - - - 0x01C88B 07:C87B: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C88D 07:C87D: 29 20     AND #$20
C - - - - - 0x01C88F 07:C87F: F0 1A     BEQ bra_C89B_RTS
C - - - - - 0x01C891 07:C881: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x01C894 07:C884: 29 C0     AND #$C0
C - - - - - 0x01C896 07:C886: D0 05     BNE bra_C88D
- - - - - - 0x01C898 07:C888: EE E2 05  INC ram_таймер_катсцены
- - - - - - 0x01C89B 07:C88B: 10 0E     BPL bra_C89B_RTS
bra_C88D:
C - - - - - 0x01C89D 07:C88D: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C89F 07:C88F: 29 DF     AND #$DF
C - - - - - 0x01C8A1 07:C891: 85 5C     STA ram_режим_игры_на_поле
C - - - - - 0x01C8A3 07:C893: A9 00     LDA #$00
C - - - - - 0x01C8A5 07:C895: 8D 5B 05  STA ram_вариант_расстановки_игроков
C - - - - - 0x01C8A8 07:C898: 8D E2 05  STA ram_таймер_катсцены
bra_C89B_RTS:
C - - - - - 0x01C8AB 07:C89B: 60        RTS



sub_C89C:
C - - - - - 0x01C8AC 07:C89C: 24 5C     BIT ram_режим_игры_на_поле
C - - - - - 0x01C8AE 07:C89E: 50 79     BVC bra_C919_RTS
C - - - - - 0x01C8B0 07:C8A0: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C8B2 07:C8A2: 29 20     AND #$20
C - - - - - 0x01C8B4 07:C8A4: D0 4F     BNE bra_C8F5
C - - - - - 0x01C8B6 07:C8A6: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C8B8 07:C8A8: 29 0F     AND #$0F
C - - - - - 0x01C8BA 07:C8AA: F0 1C     BEQ bra_C8C8
C - - - - - 0x01C8BC 07:C8AC: 29 02     AND #$02
C - - - - - 0x01C8BE 07:C8AE: D0 49     BNE bra_C8F9
C - - - - - 0x01C8C0 07:C8B0: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x01C8C2 07:C8B2: 29 20     AND #$20
C - - - - - 0x01C8C4 07:C8B4: F0 07     BEQ bra_C8BD
C - - - - - 0x01C8C6 07:C8B6: A9 03     LDA #$03
C - - - - - 0x01C8C8 07:C8B8: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C8CA 07:C8BA: 4C 19 C9  JMP loc_C919_RTS
bra_C8BD:
C - - - - - 0x01C8CD 07:C8BD: A9 06     LDA #$06
C - - - - - 0x01C8CF 07:C8BF: 8D 59 00  STA a: ram_подтип_экрана
C - - - - - 0x01C8D2 07:C8C2: 20 58 C2  JSR sub_C258
C - - - - - 0x01C8D5 07:C8C5: 4C 19 C9  JMP loc_C919_RTS
bra_C8C8:
C - - - - - 0x01C8D8 07:C8C8: A9 8C     LDA #$8C
C - - - - - 0x01C8DA 07:C8CA: 8D AD 03  STA ram_объект_камеры
C - - - - - 0x01C8DD 07:C8CD: A0 00     LDY #$00
C - - - - - 0x01C8DF 07:C8CF: 84 1C     STY ram_001C
C - - - - - 0x01C8E1 07:C8D1: 8C 2A 05  STY ram_флаг_владения_мячом_ком
C - - - - - 0x01C8E4 07:C8D4: 8C 2B 05  STY ram_флаг_владения_мячом_ком + 1
C - - - - - 0x01C8E7 07:C8D7: AD 2F 05  LDA ram_счет_команды + 1
C - - - - - 0x01C8EA 07:C8DA: CD 2E 05  CMP ram_счет_команды
C - - - - - 0x01C8ED 07:C8DD: D0 02     BNE bra_C8E1
C - - - - - 0x01C8EF 07:C8DF: E6 1C     INC ram_001C
bra_C8E1:
C - - - - - 0x01C8F1 07:C8E1: 90 01     BCC bra_C8E4
C - - - - - 0x01C8F3 07:C8E3: C8        INY
bra_C8E4:
C - - - - - 0x01C8F4 07:C8E4: A9 01     LDA #$01
C - - - - - 0x01C8F6 07:C8E6: 99 2A 05  STA ram_флаг_владения_мячом_ком,Y
C - - - - - 0x01C8F9 07:C8E9: AD 59 05  LDA ram_0559
C - - - - - 0x01C8FC 07:C8EC: F0 22     BEQ bra_C910
C - - - - - 0x01C8FE 07:C8EE: 18        CLC
C - - - - - 0x01C8FF 07:C8EF: A9 82     LDA #$82
C - - - - - 0x01C901 07:C8F1: 65 1C     ADC ram_001C
C - - - - - 0x01C903 07:C8F3: D0 06     BNE bra_C8FB
bra_C8F5:
C - - - - - 0x01C905 07:C8F5: A9 84     LDA #$84
C - - - - - 0x01C907 07:C8F7: D0 02     BNE bra_C8FB
bra_C8F9:
C - - - - - 0x01C909 07:C8F9: A9 81     LDA #$81
bra_C8FB:
C - - - - - 0x01C90B 07:C8FB: 8D F8 05  STA ram_вид_статусбара
C - - - - - 0x01C90E 07:C8FE: A9 00     LDA #$00
C - - - - - 0x01C910 07:C900: 8D F9 05  STA ram_флаг_готового_статусбара
C - - - - - 0x01C913 07:C903: A9 0F     LDA #$0F
C - - - - - 0x01C915 07:C905: 8D AD 05  STA ram_номер_палитры_фона + 1
C - - - - - 0x01C918 07:C908: 20 D5 D0  JSR sub_D0D5
C - - - - - 0x01C91B 07:C90B: A9 3F     LDA #$3F
C - - - - - 0x01C91D 07:C90D: 8D D9 06  STA ram_байт_2006_hi_палитра
bra_C910:
C - - - - - 0x01C920 07:C910: A9 03     LDA #$03
C - - - - - 0x01C922 07:C912: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C924 07:C914: A9 00     LDA #$00
C - - - - - 0x01C926 07:C916: 8D E2 05  STA ram_таймер_катсцены
bra_C919_RTS:
loc_C919_RTS:
C D 2 - - - 0x01C929 07:C919: 60        RTS



sub_C91A:
C - - - - - 0x01C92A 07:C91A: A9 00     LDA #$00
C - - - - - 0x01C92C 07:C91C: 8D F8 05  STA ram_вид_статусбара
C - - - - - 0x01C92F 07:C91F: 8D FD 05  STA ram_сила_ветра
C - - - - - 0x01C932 07:C922: 8D FF 05  STA ram_ветер_spd_X_hi
C - - - - - 0x01C935 07:C925: 8D 00 06  STA ram_ветер_spd_X_lo
C - - - - - 0x01C938 07:C928: 8D 01 06  STA ram_ветер_spd_Y_hi
C - - - - - 0x01C93B 07:C92B: 8D 02 06  STA ram_ветер_spd_Y_lo
C - - - - - 0x01C93E 07:C92E: A9 FF     LDA #$FF
C - - - - - 0x01C940 07:C930: 8D F5 05  STA ram_флаг_гола
C - - - - - 0x01C943 07:C933: 8D FA 05  STA ram_05FA
C - - - - - 0x01C946 07:C936: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01C948 07:C938: C9 03     CMP #$03
C - - - - - 0x01C94A 07:C93A: F0 16     BEQ bra_C952
C - - - - - 0x01C94C 07:C93C: C9 05     CMP #$05
C - - - - - 0x01C94E 07:C93E: F0 58     BEQ bra_C998
C - - - - - 0x01C950 07:C940: C9 08     CMP #$08
C - - - - - 0x01C952 07:C942: F0 5B     BEQ bra_C99F
C - - - - - 0x01C954 07:C944: C9 0A     CMP #$0A
C - - - - - 0x01C956 07:C946: F0 65     BEQ bra_C9AD
- - - - - - 0x01C958 07:C948: C9 0C     CMP #$0C
- - - - - - 0x01C95A 07:C94A: D0 03     BNE bra_C94F
- - - - - - 0x01C95C 07:C94C: 4C 14 CA  JMP loc_CA14
bra_C94F:
- - - - - - 0x01C95F 07:C94F: 4C 1E CA  JMP loc_CA1E_RTS
bra_C952:
C - - - - - 0x01C962 07:C952: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x01C964 07:C954: 29 20     AND #$20
C - - - - - 0x01C966 07:C956: F0 10     BEQ bra_C968
C - - - - - 0x01C968 07:C958: EE CC 05  INC ram_счетчик_смен
C - - - - - 0x01C96B 07:C95B: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C96D 07:C95D: 29 02     AND #$02
C - - - - - 0x01C96F 07:C95F: D0 1A     BNE bra_C97B
C - - - - - 0x01C971 07:C961: A9 00     LDA #$00
C - - - - - 0x01C973 07:C963: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C975 07:C965: 4C 1E CA  JMP loc_CA1E_RTS
bra_C968:
C - - - - - 0x01C978 07:C968: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C97A 07:C96A: 29 20     AND #$20
C - - - - - 0x01C97C 07:C96C: F0 07     BEQ bra_C975
C - - - - - 0x01C97E 07:C96E: A9 00     LDA #$00
bra_C970:
C - - - - - 0x01C980 07:C970: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C982 07:C972: 4C 1E CA  JMP loc_CA1E_RTS
bra_C975:
C - - - - - 0x01C985 07:C975: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01C987 07:C977: 29 0F     AND #$0F
C - - - - - 0x01C989 07:C979: F0 04     BEQ bra_C97F
bra_C97B:
C - - - - - 0x01C98B 07:C97B: A9 04     LDA #$04
C - - - - - 0x01C98D 07:C97D: D0 F1     BNE bra_C970
bra_C97F:
C - - - - - 0x01C98F 07:C97F: AD 59 05  LDA ram_0559
C - - - - - 0x01C992 07:C982: D0 04     BNE bra_C988
C - - - - - 0x01C994 07:C984: A9 07     LDA #$07
C - - - - - 0x01C996 07:C986: D0 E8     BNE bra_C970
bra_C988:
C - - - - - 0x01C998 07:C988: AD 2E 05  LDA ram_счет_команды
C - - - - - 0x01C99B 07:C98B: CD 2F 05  CMP ram_счет_команды + 1
C - - - - - 0x01C99E 07:C98E: F0 04     BEQ bra_C994
C - - - - - 0x01C9A0 07:C990: A9 09     LDA #$09
C - - - - - 0x01C9A2 07:C992: D0 DC     BNE bra_C970
bra_C994:
- - - - - - 0x01C9A4 07:C994: A9 0B     LDA #$0B
- - - - - - 0x01C9A6 07:C996: D0 D8     BNE bra_C970
bra_C998:
C - - - - - 0x01C9A8 07:C998: A9 00     LDA #$00
C - - - - - 0x01C9AA 07:C99A: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C9AC 07:C99C: 4C 1E CA  JMP loc_CA1E_RTS
bra_C99F:
C - - - - - 0x01C9AF 07:C99F: A9 02     LDA #$02
C - - - - - 0x01C9B1 07:C9A1: 85 58     STA ram_номер_экрана
C - - - - - 0x01C9B3 07:C9A3: A9 04     LDA #$04
C - - - - - 0x01C9B5 07:C9A5: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C9B7 07:C9A7: EE 59 05  INC ram_0559
C - - - - - 0x01C9BA 07:C9AA: 4C FA C9  JMP loc_C9FA
bra_C9AD:
C - - - - - 0x01C9BD 07:C9AD: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x01C9BF 07:C9AF: 30 0B     BMI bra_C9BC
C - - - - - 0x01C9C1 07:C9B1: A9 02     LDA #$02
C - - - - - 0x01C9C3 07:C9B3: 85 58     STA ram_номер_экрана
C - - - - - 0x01C9C5 07:C9B5: A9 01     LDA #$01
C - - - - - 0x01C9C7 07:C9B7: 85 59     STA ram_подтип_экрана
C - - - - - 0x01C9C9 07:C9B9: 4C 1E CA  JMP loc_CA1E_RTS
bra_C9BC:
C - - - - - 0x01C9CC 07:C9BC: AD 4A 05  LDA ram_054A
C - - - - - 0x01C9CF 07:C9BF: 30 2D     BMI bra_C9EE
- - - - - - 0x01C9D1 07:C9C1: C9 03     CMP #$03
- - - - - - 0x01C9D3 07:C9C3: D0 0F     BNE bra_C9D4
- - - - - - 0x01C9D5 07:C9C5: AD 2A 05  LDA ram_флаг_владения_мячом_ком
- - - - - - 0x01C9D8 07:C9C8: 29 01     AND #$01
- - - - - - 0x01C9DA 07:C9CA: D0 04     BNE bra_C9D0
- - - - - - 0x01C9DC 07:C9CC: A9 01     LDA #$01
- - - - - - 0x01C9DE 07:C9CE: D0 0D     BNE bra_C9DD
bra_C9D0:
- - - - - - 0x01C9E0 07:C9D0: A9 00     LDA #$00
- - - - - - 0x01C9E2 07:C9D2: F0 09     BEQ bra_C9DD
bra_C9D4:
- - - - - - 0x01C9E4 07:C9D4: AD 2A 05  LDA ram_флаг_владения_мячом_ком
- - - - - - 0x01C9E7 07:C9D7: 29 01     AND #$01
- - - - - - 0x01C9E9 07:C9D9: D0 10     BNE bra_C9EB
- - - - - - 0x01C9EB 07:C9DB: A9 02     LDA #$02
bra_C9DD:
- - - - - - 0x01C9ED 07:C9DD: 8D 1F 06  STA ram_061F
- - - - - - 0x01C9F0 07:C9E0: A9 03     LDA #$03
- - - - - - 0x01C9F2 07:C9E2: 85 58     STA ram_номер_экрана
- - - - - - 0x01C9F4 07:C9E4: A9 00     LDA #$00
- - - - - - 0x01C9F6 07:C9E6: 85 59     STA ram_подтип_экрана
- - - - - - 0x01C9F8 07:C9E8: 4C 1E CA  JMP loc_CA1E_RTS
bra_C9EB:
- - - - - - 0x01C9FB 07:C9EB: EE 4A 05  INC ram_054A
bra_C9EE:
C - - - - - 0x01C9FE 07:C9EE: A9 02     LDA #$02
C - - - - - 0x01CA00 07:C9F0: 85 58     STA ram_номер_экрана
C - - - - - 0x01CA02 07:C9F2: A9 0E     LDA #$0E
C - - - - - 0x01CA04 07:C9F4: 85 59     STA ram_подтип_экрана
C - - - - - 0x01CA06 07:C9F6: A9 03     LDA #$03
C - - - - - 0x01CA08 07:C9F8: 85 5B     STA ram_для_0059
loc_C9FA:
C D 2 - - - 0x01CA0A 07:C9FA: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x01CA0C 07:C9FC: 10 20     BPL bra_CA1E_RTS
C - - - - - 0x01CA0E 07:C9FE: A2 00     LDX #$00
bra_CA00:
C - - - - - 0x01CA10 07:CA00: BC 32 05  LDY ram_номер_игрока,X
C - - - - - 0x01CA13 07:CA03: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x01CA16 07:CA06: 29 0F     AND #$0F
C - - - - - 0x01CA18 07:CA08: 99 D5 05  STA ram_05D5,Y
C - - - - - 0x01CA1B 07:CA0B: E8        INX
C - - - - - 0x01CA1C 07:CA0C: E8        INX
C - - - - - 0x01CA1D 07:CA0D: E0 0C     CPX #$0C
C - - - - - 0x01CA1F 07:CA0F: 90 EF     BCC bra_CA00
C - - - - - 0x01CA21 07:CA11: 4C 1E CA  JMP loc_CA1E_RTS
loc_CA14:
- - - - - - 0x01CA24 07:CA14: A5 57     LDA ram_опция_режим_сложность
- - - - - - 0x01CA26 07:CA16: 09 20     ORA #$20
- - - - - - 0x01CA28 07:CA18: 85 57     STA ram_опция_режим_сложность
- - - - - - 0x01CA2A 07:CA1A: A9 00     LDA #$00
- - - - - - 0x01CA2C 07:CA1C: 85 59     STA ram_подтип_экрана
bra_CA1E_RTS:
loc_CA1E_RTS:
C D 2 - - - 0x01CA2E 07:CA1E: 60        RTS



sub_CA1F:
C - - - - - 0x01CA2F 07:CA1F: A9 F0     LDA #$F0
C - - - - - 0x01CA31 07:CA21: 85 56     STA ram_ограничитель_Y_спрайтов
C - - - - - 0x01CA33 07:CA23: A9 64     LDA #$64
C - - - - - 0x01CA35 07:CA25: 8D BC 05  STA ram_банк_фона
C - - - - - 0x01CA38 07:CA28: A9 66     LDA #$66
C - - - - - 0x01CA3A 07:CA2A: 8D BD 05  STA ram_банк_фона + 1
C - - - - - 0x01CA3D 07:CA2D: A9 00     LDA #$00
C - - - - - 0x01CA3F 07:CA2F: 8D EC 00  STA a: ram_камера_X_lo
C - - - - - 0x01CA42 07:CA32: 8D EE 00  STA a: ram_камера_Y_lo
C - - - - - 0x01CA45 07:CA35: 8D EF 00  STA a: ram_камера_Y_hi
C - - - - - 0x01CA48 07:CA38: 8D F0 00  STA a: ram_копия_камеры_X_lo
C - - - - - 0x01CA4B 07:CA3B: 8D F2 00  STA a: ram_копия_камеры_Y_lo
C - - - - - 0x01CA4E 07:CA3E: 8D F3 00  STA a: ram_копия_камеры_Y_hi
C - - - - - 0x01CA51 07:CA41: A9 01     LDA #$01
C - - - - - 0x01CA53 07:CA43: 8D ED 00  STA a: ram_камера_X_hi
C - - - - - 0x01CA56 07:CA46: 8D F1 00  STA a: ram_копия_камеры_X_hi
C - - - - - 0x01CA59 07:CA49: A9 00     LDA #$00
C - - - - - 0x01CA5B 07:CA4B: 8D 00 A0  STA $A000
C - - - - - 0x01CA5E 07:CA4E: 20 A9 EC  JSR sub_ECA9
C - - - - - 0x01CA61 07:CA51: 20 71 EE  JSR sub_EE71
C - - - - - 0x01CA64 07:CA54: 20 C1 EC  JSR sub_ECC1
C - - - - - 0x01CA67 07:CA57: 60        RTS



sub_CA58:
C - - - - - 0x01CA68 07:CA58: AD 2E 05  LDA ram_счет_команды
C - - - - - 0x01CA6B 07:CA5B: 29 F0     AND #$F0
C - - - - - 0x01CA6D 07:CA5D: 85 1C     STA ram_001C
C - - - - - 0x01CA6F 07:CA5F: AD 2F 05  LDA ram_счет_команды + 1
C - - - - - 0x01CA72 07:CA62: 29 F0     AND #$F0
C - - - - - 0x01CA74 07:CA64: C5 1C     CMP ram_001C
C - - - - - 0x01CA76 07:CA66: D0 0D     BNE bra_CA75
C - - - - - 0x01CA78 07:CA68: AD 2E 05  LDA ram_счет_команды
C - - - - - 0x01CA7B 07:CA6B: 85 1C     STA ram_001C
C - - - - - 0x01CA7D 07:CA6D: AD 2F 05  LDA ram_счет_команды + 1
C - - - - - 0x01CA80 07:CA70: 85 1D     STA ram_001D
C - - - - - 0x01CA82 07:CA72: 4C 94 CA  JMP loc_CA94
bra_CA75:
- - - - - - 0x01CA85 07:CA75: B0 10     BCS bra_CA87
- - - - - - 0x01CA87 07:CA77: AD 2F 05  LDA ram_счет_команды + 1
- - - - - - 0x01CA8A 07:CA7A: 18        CLC
- - - - - - 0x01CA8B 07:CA7B: 69 04     ADC #$04
- - - - - - 0x01CA8D 07:CA7D: 85 1D     STA ram_001D
- - - - - - 0x01CA8F 07:CA7F: AD 2E 05  LDA ram_счет_команды
- - - - - - 0x01CA92 07:CA82: 85 1C     STA ram_001C
- - - - - - 0x01CA94 07:CA84: 4C 94 CA  JMP loc_CA94
bra_CA87:
- - - - - - 0x01CA97 07:CA87: AD 2E 05  LDA ram_счет_команды
- - - - - - 0x01CA9A 07:CA8A: 18        CLC
- - - - - - 0x01CA9B 07:CA8B: 69 04     ADC #$04
- - - - - - 0x01CA9D 07:CA8D: 85 1C     STA ram_001C
- - - - - - 0x01CA9F 07:CA8F: AD 2F 05  LDA ram_счет_команды + 1
- - - - - - 0x01CAA2 07:CA92: 85 1D     STA ram_001D
loc_CA94:
C D 2 - - - 0x01CAA4 07:CA94: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x01CAA7 07:CA97: 10 27     BPL bra_CAC0
C - - - - - 0x01CAA9 07:CA99: AD 2A 05  LDA ram_флаг_владения_мячом_ком
C - - - - - 0x01CAAC 07:CA9C: 29 01     AND #$01
C - - - - - 0x01CAAE 07:CA9E: F0 14     BEQ bra_CAB4
C - - - - - 0x01CAB0 07:CAA0: A5 1C     LDA ram_001C
C - - - - - 0x01CAB2 07:CAA2: 38        SEC
C - - - - - 0x01CAB3 07:CAA3: E5 1D     SBC ram_001D
C - - - - - 0x01CAB5 07:CAA5: 30 37     BMI bra_CADE
loc_CAA7:
C D 2 - - - 0x01CAB7 07:CAA7: F0 35     BEQ bra_CADE
C - - - - - 0x01CAB9 07:CAA9: C9 01     CMP #$01
C - - - - - 0x01CABB 07:CAAB: F0 2C     BEQ bra_CAD9
C - - - - - 0x01CABD 07:CAAD: C9 02     CMP #$02
C - - - - - 0x01CABF 07:CAAF: F0 23     BEQ bra_CAD4
C - - - - - 0x01CAC1 07:CAB1: 4C CF CA  JMP loc_CACF
bra_CAB4:
- - - - - - 0x01CAC4 07:CAB4: A5 1C     LDA ram_001C
- - - - - - 0x01CAC6 07:CAB6: 38        SEC
- - - - - - 0x01CAC7 07:CAB7: E5 1D     SBC ram_001D
- - - - - - 0x01CAC9 07:CAB9: 30 2D     BMI bra_CAE8
- - - - - - 0x01CACB 07:CABB: F0 26     BEQ bra_CAE3
- - - - - - 0x01CACD 07:CABD: 4C DE CA  JMP loc_CADE
bra_CAC0:
C - - - - - 0x01CAD0 07:CAC0: A5 1C     LDA ram_001C
C - - - - - 0x01CAD2 07:CAC2: 38        SEC
C - - - - - 0x01CAD3 07:CAC3: E5 1D     SBC ram_001D
C - - - - - 0x01CAD5 07:CAC5: 10 05     BPL bra_CACC
C - - - - - 0x01CAD7 07:CAC7: 49 FF     EOR #$FF
C - - - - - 0x01CAD9 07:CAC9: 18        CLC
C - - - - - 0x01CADA 07:CACA: 69 01     ADC #$01
bra_CACC:
C - - - - - 0x01CADC 07:CACC: 4C A7 CA  JMP loc_CAA7
loc_CACF:
C D 2 - - - 0x01CADF 07:CACF: A9 80     LDA #$80
C - - - - - 0x01CAE1 07:CAD1: 4C EA CA  JMP loc_CAEA
bra_CAD4:
C - - - - - 0x01CAE4 07:CAD4: A9 81     LDA #$81
C - - - - - 0x01CAE6 07:CAD6: 4C EA CA  JMP loc_CAEA
bra_CAD9:
C - - - - - 0x01CAE9 07:CAD9: A9 01     LDA #$01
C - - - - - 0x01CAEB 07:CADB: 4C EA CA  JMP loc_CAEA
bra_CADE:
loc_CADE:
C - - - - - 0x01CAEE 07:CADE: A9 00     LDA #$00
C - - - - - 0x01CAF0 07:CAE0: 4C EA CA  JMP loc_CAEA
bra_CAE3:
- - - - - - 0x01CAF3 07:CAE3: A9 02     LDA #$02
- - - - - - 0x01CAF5 07:CAE5: 4C EA CA  JMP loc_CAEA
bra_CAE8:
- - - - - - 0x01CAF8 07:CAE8: A9 82     LDA #$82
loc_CAEA:
C D 2 - - - 0x01CAFA 07:CAEA: 8D 30 06  STA ram_0630
C - - - - - 0x01CAFD 07:CAED: 60        RTS



sub_CAEE:
C - - - - - 0x01CAFE 07:CAEE: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01CB01 07:CAF1: 8D EC 00  STA a: ram_камера_X_lo
C - - - - - 0x01CB04 07:CAF4: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01CB07 07:CAF7: 8D ED 00  STA a: ram_камера_X_hi
C - - - - - 0x01CB0A 07:CAFA: AD F2 00  LDA a: ram_копия_камеры_Y_lo
C - - - - - 0x01CB0D 07:CAFD: 8D EE 00  STA a: ram_камера_Y_lo
C - - - - - 0x01CB10 07:CB00: AD F3 00  LDA a: ram_копия_камеры_Y_hi
C - - - - - 0x01CB13 07:CB03: 8D EF 00  STA a: ram_камера_Y_hi
C - - - - - 0x01CB16 07:CB06: 60        RTS



sub_CB07:
C - - - - - 0x01CB17 07:CB07: AD 2E 05  LDA ram_счет_команды
C - - - - - 0x01CB1A 07:CB0A: 4A        LSR
C - - - - - 0x01CB1B 07:CB0B: 4A        LSR
C - - - - - 0x01CB1C 07:CB0C: 4A        LSR
C - - - - - 0x01CB1D 07:CB0D: 4A        LSR
C - - - - - 0x01CB1E 07:CB0E: F0 06     BEQ bra_CB16
- - - - - - 0x01CB20 07:CB10: 18        CLC
- - - - - - 0x01CB21 07:CB11: 69 80     ADC #$80
- - - - - - 0x01CB23 07:CB13: 4C 18 CB  JMP loc_CB18
bra_CB16:
C - - - - - 0x01CB26 07:CB16: A9 FF     LDA #$FF
loc_CB18:
C - - - - - 0x01CB28 07:CB18: 8D AA 05  STA ram_тайл_статусбара + 5
C - - - - - 0x01CB2B 07:CB1B: AD 2E 05  LDA ram_счет_команды
C - - - - - 0x01CB2E 07:CB1E: 29 0F     AND #$0F
C - - - - - 0x01CB30 07:CB20: 18        CLC
C - - - - - 0x01CB31 07:CB21: 69 80     ADC #$80
C - - - - - 0x01CB33 07:CB23: 8D A9 05  STA ram_тайл_статусбара + 4
C - - - - - 0x01CB36 07:CB26: A9 EE     LDA #$EE
C - - - - - 0x01CB38 07:CB28: 8D A8 05  STA ram_тайл_статусбара + 3
C - - - - - 0x01CB3B 07:CB2B: A9 EF     LDA #$EF
C - - - - - 0x01CB3D 07:CB2D: 8D A7 05  STA ram_тайл_статусбара + 2
C - - - - - 0x01CB40 07:CB30: AD 2F 05  LDA ram_счет_команды + 1
C - - - - - 0x01CB43 07:CB33: 29 F0     AND #$F0
C - - - - - 0x01CB45 07:CB35: F0 13     BEQ bra_CB4A
- - - - - - 0x01CB47 07:CB37: 4A        LSR
- - - - - - 0x01CB48 07:CB38: 4A        LSR
- - - - - - 0x01CB49 07:CB39: 4A        LSR
- - - - - - 0x01CB4A 07:CB3A: 4A        LSR
- - - - - - 0x01CB4B 07:CB3B: 18        CLC
- - - - - - 0x01CB4C 07:CB3C: 69 80     ADC #$80
- - - - - - 0x01CB4E 07:CB3E: 8D A6 05  STA ram_тайл_статусбара + 1
- - - - - - 0x01CB51 07:CB41: 20 56 CB  JSR sub_CB56
- - - - - - 0x01CB54 07:CB44: 8D A5 05  STA ram_тайл_статусбара
- - - - - - 0x01CB57 07:CB47: 4C 55 CB  JMP loc_CB55_RTS
bra_CB4A:
C - - - - - 0x01CB5A 07:CB4A: 20 56 CB  JSR sub_CB56
C - - - - - 0x01CB5D 07:CB4D: 8D A6 05  STA ram_тайл_статусбара + 1
C - - - - - 0x01CB60 07:CB50: A9 FF     LDA #$FF
C - - - - - 0x01CB62 07:CB52: 8D A5 05  STA ram_тайл_статусбара
loc_CB55_RTS:
C - - - - - 0x01CB65 07:CB55: 60        RTS



sub_CB56:
C - - - - - 0x01CB66 07:CB56: AD 2F 05  LDA ram_счет_команды + 1
C - - - - - 0x01CB69 07:CB59: 29 0F     AND #$0F
C - - - - - 0x01CB6B 07:CB5B: 18        CLC
C - - - - - 0x01CB6C 07:CB5C: 69 80     ADC #$80
C - - - - - 0x01CB6E 07:CB5E: 60        RTS



loc_CB5F:
C D 2 - - - 0x01CB6F 07:CB5F: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x01CB72 07:CB62: 10 2B     BPL bra_CB8F
C - - - - - 0x01CB74 07:CB64: AC FD 06  LDY ram_06FD
C - - - - - 0x01CB77 07:CB67: C0 0F     CPY #$0F
C - - - - - 0x01CB79 07:CB69: F0 27     BEQ bra_CB92
C - - - - - 0x01CB7B 07:CB6B: AD 08 00  LDA a: ram_одноразовые_кнопки
C - - - - - 0x01CB7E 07:CB6E: D9 C7 CB  CMP tbl_CBC7,Y
C - - - - - 0x01CB81 07:CB71: D0 12     BNE bra_CB85
- - - - - - 0x01CB83 07:CB73: EE FD 06  INC ram_06FD
- - - - - - 0x01CB86 07:CB76: AD FD 06  LDA ram_06FD
- - - - - - 0x01CB89 07:CB79: C9 0F     CMP #$0F
- - - - - - 0x01CB8B 07:CB7B: D0 05     BNE bra_CB82
- - - - - - 0x01CB8D 07:CB7D: A9 38     LDA #$38
- - - - - - 0x01CB8F 07:CB7F: 20 E4 C2  JSR sub_C2E4
bra_CB82:
- - - - - - 0x01CB92 07:CB82: 4C 8F CB  JMP loc_CB8F
bra_CB85:
C - - - - - 0x01CB95 07:CB85: AD 08 00  LDA a: ram_одноразовые_кнопки
C - - - - - 0x01CB98 07:CB88: F0 05     BEQ bra_CB8F
C - - - - - 0x01CB9A 07:CB8A: A9 00     LDA #$00
C - - - - - 0x01CB9C 07:CB8C: 8D FD 06  STA ram_06FD
bra_CB8F:
loc_CB8F:
C - - - - - 0x01CB9F 07:CB8F: 4C 47 C6  JMP loc_C647
bra_CB92:
- - - - - - 0x01CBA2 07:CB92: A9 BC     LDA #$BC
- - - - - - 0x01CBA4 07:CB94: 8D AA 05  STA ram_тайл_статусбара + 5
- - - - - - 0x01CBA7 07:CB97: A9 D0     LDA #$D0
- - - - - - 0x01CBA9 07:CB99: 8D A9 05  STA ram_тайл_статусбара + 4
- - - - - - 0x01CBAC 07:CB9C: A9 AC     LDA #$AC
- - - - - - 0x01CBAE 07:CB9E: 8D A8 05  STA ram_тайл_статусбара + 3
- - - - - - 0x01CBB1 07:CBA1: A9 B3     LDA #$B3
- - - - - - 0x01CBB3 07:CBA3: 8D A7 05  STA ram_тайл_статусбара + 2
- - - - - - 0x01CBB6 07:CBA6: A9 80     LDA #$80
- - - - - - 0x01CBB8 07:CBA8: 8D A6 05  STA ram_тайл_статусбара + 1
- - - - - - 0x01CBBB 07:CBAB: A9 9F     LDA #$9F
- - - - - - 0x01CBBD 07:CBAD: 8D A5 05  STA ram_тайл_статусбара
- - - - - - 0x01CBC0 07:CBB0: A9 FF     LDA #$FF
- - - - - - 0x01CBC2 07:CBB2: 8D F1 04  STA ram_номер_скилла
- - - - - - 0x01CBC5 07:CBB5: 8D F3 04  STA ram_04F3
- - - - - - 0x01CBC8 07:CBB8: 8D F5 04  STA ram_04F5
- - - - - - 0x01CBCB 07:CBBB: 8D F7 04  STA ram_04F7
- - - - - - 0x01CBCE 07:CBBE: 8D F9 04  STA ram_04F9
- - - - - - 0x01CBD1 07:CBC1: 8D FB 04  STA ram_04FB
- - - - - - 0x01CBD4 07:CBC4: 4C 98 C6  JMP loc_C698_RTS



tbl_CBC7:
- D 2 - - - 0x01CBD7 07:CBC7: 80        .byte $80   ; 
- - - - - - 0x01CBD8 07:CBC8: 80        .byte $80   ; 
- - - - - - 0x01CBD9 07:CBC9: 80        .byte $80   ; 
- - - - - - 0x01CBDA 07:CBCA: 40        .byte $40   ; 
- - - - - - 0x01CBDB 07:CBCB: 80        .byte $80   ; 
- - - - - - 0x01CBDC 07:CBCC: 80        .byte $80   ; 
- - - - - - 0x01CBDD 07:CBCD: 80        .byte $80   ; 
- - - - - - 0x01CBDE 07:CBCE: 40        .byte $40   ; 
- - - - - - 0x01CBDF 07:CBCF: 80        .byte $80   ; 
- - - - - - 0x01CBE0 07:CBD0: 80        .byte $80   ; 
- - - - - - 0x01CBE1 07:CBD1: 80        .byte $80   ; 
- - - - - - 0x01CBE2 07:CBD2: 80        .byte $80   ; 
- - - - - - 0x01CBE3 07:CBD3: 80        .byte $80   ; 
- - - - - - 0x01CBE4 07:CBD4: 80        .byte $80   ; 
- - - - - - 0x01CBE5 07:CBD5: 80        .byte $80   ; 



.export sub_0x01CBE6
sub_0x01CBE6:
C - - - - - 0x01CBE6 07:CBD6: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x01CBE9 07:CBD9: 0A        ASL
C - - - - - 0x01CBEA 07:CBDA: A8        TAY
C - - - - - 0x01CBEB 07:CBDB: B9 E8 CB  LDA tbl_CBE8,Y
C - - - - - 0x01CBEE 07:CBDE: 85 2C     STA ram_002C
C - - - - - 0x01CBF0 07:CBE0: B9 E9 CB  LDA tbl_CBE8 + 1,Y
C - - - - - 0x01CBF3 07:CBE3: 85 2D     STA ram_002D
C - - - - - 0x01CBF5 07:CBE5: 6C 2C 00  JMP (ram_002C)

tbl_CBE8:
- D 2 - - - 0x01CBF8 07:CBE8: F4 CB     .word ofs_026_CBF4_00_RTS
- D 2 - - - 0x01CBFA 07:CBEA: F5 CB     .word ofs_026_CBF5_01
- D 2 - - - 0x01CBFC 07:CBEC: 0B CC     .word ofs_026_CC0B_02
- D 2 - - - 0x01CBFE 07:CBEE: 0B CC     .word ofs_026_CC0B_03
- D 2 - - - 0x01CC00 07:CBF0: 0B CC     .word ofs_026_CC0B_04
- D 2 - - - 0x01CC02 07:CBF2: 0B CC     .word ofs_026_CC0B_05



ofs_026_CBF4_00_RTS:
C - - J - - 0x01CC04 07:CBF4: 60        RTS



ofs_026_CBF5_01:
C - - J - - 0x01CC05 07:CBF5: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x01CC08 07:CBF8: 30 05     BMI bra_CBFF
C - - - - - 0x01CC0A 07:CBFA: 09 80     ORA #$80
C - - - - - 0x01CC0C 07:CBFC: 9D 59 04  STA ram_игрок_номер_движения,X
bra_CBFF:
C - - - - - 0x01CC0F 07:CBFF: A9 84     LDA #$84
C - - - - - 0x01CC11 07:CC01: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x01CC14 07:CC04: A0 0C     LDY #$0C
C - - - - - 0x01CC16 07:CC06: 84 44     STY ram_0044
C - - - - - 0x01CC18 07:CC08: 4C 9C CC  JMP loc_CC9C



ofs_026_CC0B_02:
ofs_026_CC0B_03:
ofs_026_CC0B_04:
ofs_026_CC0B_05:
C - - J - - 0x01CC1B 07:CC0B: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x01CC1E 07:CC0E: 30 05     BMI bra_CC15
C - - - - - 0x01CC20 07:CC10: 09 80     ORA #$80
C - - - - - 0x01CC22 07:CC12: 9D 59 04  STA ram_игрок_номер_движения,X
bra_CC15:
C - - - - - 0x01CC25 07:CC15: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x01CC28 07:CC18: 29 7F     AND #$7F
C - - - - - 0x01CC2A 07:CC1A: A8        TAY
C - - - - - 0x01CC2B 07:CC1B: B9 23 CD  LDA tbl_CD23,Y
C - - - - - 0x01CC2E 07:CC1E: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x01CC31 07:CC21: B9 29 CD  LDA tbl_CD29,Y
C - - - - - 0x01CC34 07:CC24: 10 22     BPL bra_CC48
C - - - - - 0x01CC36 07:CC26: 29 7F     AND #$7F
C - - - - - 0x01CC38 07:CC28: A8        TAY
C - - - - - 0x01CC39 07:CC29: B9 68 05  LDA ram_номер_управляемого,Y
C - - - - - 0x01CC3C 07:CC2C: 30 13     BMI bra_CC41
C - - - - - 0x01CC3E 07:CC2E: 85 44     STA ram_0044
C - - - - - 0x01CC40 07:CC30: A8        TAY
C - - - - - 0x01CC41 07:CC31: B9 50 06  LDA ram_позиция_управление,Y
C - - - - - 0x01CC44 07:CC34: 30 0B     BMI bra_CC41
C - - - - - 0x01CC46 07:CC36: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x01CC48 07:CC38: 29 20     AND #$20
C - - - - - 0x01CC4A 07:CC3A: F0 0E     BEQ bra_CC4A
C - - - - - 0x01CC4C 07:CC3C: B9 D9 00  LDA a: ram_флаг_видимости,Y
C - - - - - 0x01CC4F 07:CC3F: D0 09     BNE bra_CC4A
bra_CC41:
C - - - - - 0x01CC51 07:CC41: A9 7F     LDA #$7F
C - - - - - 0x01CC53 07:CC43: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x01CC56 07:CC46: A9 00     LDA #$00
bra_CC48:
C - - - - - 0x01CC58 07:CC48: 85 44     STA ram_0044
bra_CC4A:
C - - - - - 0x01CC5A 07:CC4A: A4 44     LDY ram_0044
C - - - - - 0x01CC5C 07:CC4C: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x01CC5F 07:CC4F: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x01CC62 07:CC52: ED F0 00  SBC a: ram_копия_камеры_X_lo
C - - - - - 0x01CC65 07:CC55: 85 1C     STA ram_001C
C - - - - - 0x01CC67 07:CC57: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x01CC6A 07:CC5A: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x01CC6D 07:CC5D: ED F1 00  SBC a: ram_копия_камеры_X_hi
C - - - - - 0x01CC70 07:CC60: D0 3A     BNE bra_CC9C
C - - - - - 0x01CC72 07:CC62: A5 1C     LDA ram_001C
C - - - - - 0x01CC74 07:CC64: C9 08     CMP #$08
C - - - - - 0x01CC76 07:CC66: 90 34     BCC bra_CC9C
C - - - - - 0x01CC78 07:CC68: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x01CC7B 07:CC6B: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x01CC7E 07:CC6E: ED F2 00  SBC a: ram_копия_камеры_Y_lo
C - - - - - 0x01CC81 07:CC71: 85 1C     STA ram_001C
C - - - - - 0x01CC83 07:CC73: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x01CC86 07:CC76: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x01CC89 07:CC79: ED F3 00  SBC a: ram_копия_камеры_Y_hi
C - - - - - 0x01CC8C 07:CC7C: D0 1E     BNE bra_CC9C
C - - - - - 0x01CC8E 07:CC7E: A5 1C     LDA ram_001C
C - - - - - 0x01CC90 07:CC80: C9 18     CMP #$18
C - - - - - 0x01CC92 07:CC82: 90 18     BCC bra_CC9C
C - - - - - 0x01CC94 07:CC84: C9 E0     CMP #$E0
C - - - - - 0x01CC96 07:CC86: B0 14     BCS bra_CC9C
C - - - - - 0x01CC98 07:CC88: 18        CLC
C - - - - - 0x01CC99 07:CC89: B9 86 03  LDA ram_игрок_Z_lo,Y
C - - - - - 0x01CC9C 07:CC8C: 69 20     ADC #$20
C - - - - - 0x01CC9E 07:CC8E: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x01CCA1 07:CC91: B9 99 03  LDA ram_игрок_Z_hi,Y
C - - - - - 0x01CCA4 07:CC94: 69 00     ADC #$00
C - - - - - 0x01CCA6 07:CC96: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x01CCA9 07:CC99: 4C 1E CD  JMP loc_CD1E_RTS
bra_CC9C:
loc_CC9C:
C D 2 - - - 0x01CCAC 07:CC9C: AD 59 00  LDA a: ram_подтип_экрана
C - - - - - 0x01CCAF 07:CC9F: C9 01     CMP #$01
C - - - - - 0x01CCB1 07:CCA1: D0 08     BNE bra_CCAB
C - - - - - 0x01CCB3 07:CCA3: A9 7F     LDA #$7F
C - - - - - 0x01CCB5 07:CCA5: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x01CCB8 07:CCA8: 4C 1E CD  JMP loc_CD1E_RTS
bra_CCAB:
C - - - - - 0x01CCBB 07:CCAB: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x01CCBE 07:CCAE: 85 2C     STA ram_002C
C - - - - - 0x01CCC0 07:CCB0: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x01CCC3 07:CCB3: 85 2D     STA ram_002D
C - - - - - 0x01CCC5 07:CCB5: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x01CCC8 07:CCB8: 85 2E     STA ram_002E
C - - - - - 0x01CCCA 07:CCBA: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x01CCCD 07:CCBD: 85 2F     STA ram_002F
C - - - - - 0x01CCCF 07:CCBF: A0 00     LDY #$00
bra_CCC1:
C - - - - - 0x01CCD1 07:CCC1: 46 2D     LSR ram_002D
C - - - - - 0x01CCD3 07:CCC3: 66 2C     ROR ram_002C
C - - - - - 0x01CCD5 07:CCC5: 46 2F     LSR ram_002F
C - - - - - 0x01CCD7 07:CCC7: 66 2E     ROR ram_002E
C - - - - - 0x01CCD9 07:CCC9: C8        INY
C - - - - - 0x01CCDA 07:CCCA: C0 04     CPY #$04
C - - - - - 0x01CCDC 07:CCCC: 90 F3     BCC bra_CCC1
C - - - - - 0x01CCDE 07:CCCE: 18        CLC
C - - - - - 0x01CCDF 07:CCCF: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01CCE2 07:CCD2: 6D 1F CD  ADC tbl_CD1F
C - - - - - 0x01CCE5 07:CCD5: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x01CCE8 07:CCD8: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01CCEB 07:CCDB: 6D 20 CD  ADC tbl_CD20
C - - - - - 0x01CCEE 07:CCDE: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x01CCF1 07:CCE1: 18        CLC
C - - - - - 0x01CCF2 07:CCE2: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x01CCF5 07:CCE5: 65 2C     ADC ram_002C
C - - - - - 0x01CCF7 07:CCE7: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x01CCFA 07:CCEA: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x01CCFD 07:CCED: 65 2D     ADC ram_002D
C - - - - - 0x01CCFF 07:CCEF: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x01CD02 07:CCF2: 18        CLC
C - - - - - 0x01CD03 07:CCF3: AD F2 00  LDA a: ram_копия_камеры_Y_lo
C - - - - - 0x01CD06 07:CCF6: 6D 21 CD  ADC tbl_CD21
C - - - - - 0x01CD09 07:CCF9: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x01CD0C 07:CCFC: AD F3 00  LDA a: ram_копия_камеры_Y_hi
C - - - - - 0x01CD0F 07:CCFF: 6D 22 CD  ADC tbl_CD22
C - - - - - 0x01CD12 07:CD02: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x01CD15 07:CD05: 18        CLC
C - - - - - 0x01CD16 07:CD06: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01CD19 07:CD09: 65 2E     ADC ram_002E
C - - - - - 0x01CD1B 07:CD0B: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x01CD1E 07:CD0E: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01CD21 07:CD11: 65 2F     ADC ram_002F
C - - - - - 0x01CD23 07:CD13: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x01CD26 07:CD16: A9 00     LDA #$00
C - - - - - 0x01CD28 07:CD18: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x01CD2B 07:CD1B: 9D 99 03  STA ram_игрок_Z_hi,X
loc_CD1E_RTS:
C D 2 - - - 0x01CD2E 07:CD1E: 60        RTS


; bzk
tbl_CD1F:
- D 2 - - - 0x01CD2F 07:CD1F: 60        .byte $60   ; 
tbl_CD20:
- D 2 - - - 0x01CD30 07:CD20: 00        .byte $00   ; 
tbl_CD21:
- D 2 - - - 0x01CD31 07:CD21: CD        .byte $CD   ; 
tbl_CD22:
- D 2 - - - 0x01CD32 07:CD22: 00        .byte $00   ; 



tbl_CD23:
- - - - - - 0x01CD33 07:CD23: 00        .byte $00   ; 
- - - - - - 0x01CD34 07:CD24: 84        .byte $84   ; 
- D 2 - - - 0x01CD35 07:CD25: 80        .byte $80   ; 
- D 2 - - - 0x01CD36 07:CD26: 81        .byte $81   ; 
- D 2 - - - 0x01CD37 07:CD27: 82        .byte $82   ; 
- D 2 - - - 0x01CD38 07:CD28: 83        .byte $83   ; 



tbl_CD29:
- - - - - - 0x01CD39 07:CD29: 00        .byte $00   ; 
- - - - - - 0x01CD3A 07:CD2A: 0C        .byte $0C   ; 
- D 2 - - - 0x01CD3B 07:CD2B: 80        .byte $80   ; 
- D 2 - - - 0x01CD3C 07:CD2C: 81        .byte $81   ; 
- D 2 - - - 0x01CD3D 07:CD2D: 82        .byte $82   ; 
- D 2 - - - 0x01CD3E 07:CD2E: 83        .byte $83   ; 



.export sub_0x01CD3F
sub_0x01CD3F:
C - - - - - 0x01CD3F 07:CD2F: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x01CD42 07:CD32: 30 03     BMI bra_CD37
C - - - - - 0x01CD44 07:CD34: 4C C6 CD  JMP loc_CDC6_RTS
bra_CD37:
C - - - - - 0x01CD47 07:CD37: BD 30 01  LDA ram_игрок_на_поверхности,X
C - - - - - 0x01CD4A 07:CD3A: D0 03     BNE bra_CD3F
C - - - - - 0x01CD4C 07:CD3C: 20 F0 E6  JSR sub_E6F0
bra_CD3F:
C - - - - - 0x01CD4F 07:CD3F: BD 30 01  LDA ram_игрок_на_поверхности,X
C - - - - - 0x01CD52 07:CD42: F0 06     BEQ bra_CD4A
C - - - - - 0x01CD54 07:CD44: C9 02     CMP #$02
C - - - - - 0x01CD56 07:CD46: B0 1E     BCS bra_CD66
C - - - - - 0x01CD58 07:CD48: 90 0E     BCC bra_CD58
bra_CD4A:
C - - - - - 0x01CD5A 07:CD4A: A9 00     LDA #$00
C - - - - - 0x01CD5C 07:CD4C: 9D 4A 04  STA ram_игрок_гравитация_hi,X
C - - - - - 0x01CD5F 07:CD4F: 9D 3C 04  STA ram_игрок_гравитация_lo,X
C - - - - - 0x01CD62 07:CD52: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x01CD65 07:CD55: 9D 20 04  STA ram_игрок_spd_Z_lo,X
bra_CD58:
C - - - - - 0x01CD68 07:CD58: A9 00     LDA #$00
C - - - - - 0x01CD6A 07:CD5A: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x01CD6D 07:CD5D: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x01CD70 07:CD60: 9D 73 03  STA ram_игрок_Z_sub,X
C - - - - - 0x01CD73 07:CD63: 4C C6 CD  JMP loc_CDC6_RTS
bra_CD66:
C - - - - - 0x01CD76 07:CD66: BC 30 01  LDY ram_игрок_на_поверхности,X
C - - - - - 0x01CD79 07:CD69: 88        DEY
C - - - - - 0x01CD7A 07:CD6A: 88        DEY
C - - - - - 0x01CD7B 07:CD6B: BD 86 03  LDA ram_игрок_Z_lo,X
C - - - - - 0x01CD7E 07:CD6E: D9 C7 CD  CMP tbl_CDC7,Y
C - - - - - 0x01CD81 07:CD71: B0 06     BCS bra_CD79
- - - - - - 0x01CD83 07:CD73: B9 C9 CD  LDA tbl_CDC9,Y
- - - - - - 0x01CD86 07:CD76: 9D 86 03  STA ram_игрок_Z_lo,X
bra_CD79:
C - - - - - 0x01CD89 07:CD79: BD 30 01  LDA ram_игрок_на_поверхности,X
C - - - - - 0x01CD8C 07:CD7C: C9 02     CMP #$02
C - - - - - 0x01CD8E 07:CD7E: D0 46     BNE bra_CDC6_RTS
- - - - - - 0x01CD90 07:CD80: BD F6 03  LDA ram_игрок_spd_X_hi,X
- - - - - - 0x01CD93 07:CD83: 1D E8 03  ORA ram_игрок_spd_X_lo,X
- - - - - - 0x01CD96 07:CD86: 1D 12 04  ORA ram_игрок_spd_Y_hi,X
- - - - - - 0x01CD99 07:CD89: 1D 04 04  ORA ram_игрок_spd_Y_lo,X
- - - - - - 0x01CD9C 07:CD8C: F0 38     BEQ bra_CDC6_RTS
- - - - - - 0x01CD9E 07:CD8E: 20 F0 E6  JSR sub_E6F0
- - - - - - 0x01CDA1 07:CD91: BD 30 01  LDA ram_игрок_на_поверхности,X
- - - - - - 0x01CDA4 07:CD94: C9 02     CMP #$02
- - - - - - 0x01CDA6 07:CD96: F0 2E     BEQ bra_CDC6_RTS
- - - - - - 0x01CDA8 07:CD98: A9 02     LDA #$02
- - - - - - 0x01CDAA 07:CD9A: 9D 30 01  STA ram_игрок_на_поверхности,X
- - - - - - 0x01CDAD 07:CD9D: AD 13 05  LDA ram_0513
- - - - - - 0x01CDB0 07:CDA0: 9D 14 03  STA ram_игрок_X_lo,X
- - - - - - 0x01CDB3 07:CDA3: AD 14 05  LDA ram_0514
- - - - - - 0x01CDB6 07:CDA6: 9D 27 03  STA ram_игрок_X_hi,X
- - - - - - 0x01CDB9 07:CDA9: AD 15 05  LDA ram_0515
- - - - - - 0x01CDBC 07:CDAC: 9D 4D 03  STA ram_игрок_Y_lo,X
- - - - - - 0x01CDBF 07:CDAF: AD 16 05  LDA ram_0516
- - - - - - 0x01CDC2 07:CDB2: 9D 60 03  STA ram_игрок_Y_hi,X
- - - - - - 0x01CDC5 07:CDB5: 18        CLC
- - - - - - 0x01CDC6 07:CDB6: BD 86 03  LDA ram_игрок_Z_lo,X
- - - - - - 0x01CDC9 07:CDB9: 69 02     ADC #$02
- - - - - - 0x01CDCB 07:CDBB: 9D 86 03  STA ram_игрок_Z_lo,X
- - - - - - 0x01CDCE 07:CDBE: BD 99 03  LDA ram_игрок_Z_hi,X
- - - - - - 0x01CDD1 07:CDC1: 69 00     ADC #$00
- - - - - - 0x01CDD3 07:CDC3: 9D 99 03  STA ram_игрок_Z_hi,X
bra_CDC6_RTS:
loc_CDC6_RTS:
C D 2 - - - 0x01CDD6 07:CDC6: 60        RTS



tbl_CDC7:
- - - - - - 0x01CDD7 07:CDC7: E8        .byte $E8   ; 
- D 2 - - - 0x01CDD8 07:CDC8: F8        .byte $F8   ; 

tbl_CDC9:
- - - - - - 0x01CDD9 07:CDC9: EE        .byte $EE   ; 
- - - - - - 0x01CDDA 07:CDCA: FA        .byte $FA   ;


 
.export sub_0x01CDDB
sub_0x01CDDB:
C - - - - - 0x01CDDB 07:CDCB: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x01CDDE 07:CDCE: 30 12     BMI bra_CDE2
C - - - - - 0x01CDE0 07:CDD0: 1D 86 03  ORA ram_игрок_Z_lo,X
C - - - - - 0x01CDE3 07:CDD3: F0 0D     BEQ bra_CDE2
C - - - - - 0x01CDE5 07:CDD5: A9 80     LDA #$80
C - - - - - 0x01CDE7 07:CDD7: 9D 3C 04  STA ram_игрок_гравитация_lo,X
C - - - - - 0x01CDEA 07:CDDA: A9 00     LDA #$00
C - - - - - 0x01CDEC 07:CDDC: 9D 4A 04  STA ram_игрок_гравитация_hi,X
C - - - - - 0x01CDEF 07:CDDF: 4C 2F CE  JMP loc_CE2F_RTS
bra_CDE2:
C - - - - - 0x01CDF2 07:CDE2: BD 30 01  LDA ram_игрок_на_поверхности,X
C - - - - - 0x01CDF5 07:CDE5: C9 02     CMP #$02
C - - - - - 0x01CDF7 07:CDE7: B0 0E     BCS bra_CDF7
C - - - - - 0x01CDF9 07:CDE9: A9 00     LDA #$00
C - - - - - 0x01CDFB 07:CDEB: 9D 73 03  STA ram_игрок_Z_sub,X
C - - - - - 0x01CDFE 07:CDEE: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x01CE01 07:CDF1: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x01CE04 07:CDF4: 4C 2F CE  JMP loc_CE2F_RTS
bra_CDF7:
C - - - - - 0x01CE07 07:CDF7: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x01CE0A 07:CDFA: 0A        ASL
C - - - - - 0x01CE0B 07:CDFB: A8        TAY
C - - - - - 0x01CE0C 07:CDFC: BD 30 01  LDA ram_игрок_на_поверхности,X
C - - - - - 0x01CE0F 07:CDFF: 29 01     AND #$01
C - - - - - 0x01CE11 07:CE01: F0 01     BEQ bra_CE04
C - - - - - 0x01CE13 07:CE03: C8        INY
bra_CE04:
C - - - - - 0x01CE14 07:CE04: 24 5C     BIT ram_режим_игры_на_поле
C - - - - - 0x01CE16 07:CE06: 50 05     BVC bra_CE0D
C - - - - - 0x01CE18 07:CE08: A0 0C     LDY #$0C
C - - - - - 0x01CE1A 07:CE0A: 4C 14 CE  JMP loc_CE14
bra_CE0D:
C - - - - - 0x01CE1D 07:CE0D: B9 40 CE  LDA tbl_CE40,Y
C - - - - - 0x01CE20 07:CE10: 30 15     BMI bra_CE27
C - - - - - 0x01CE22 07:CE12: 0A        ASL
C - - - - - 0x01CE23 07:CE13: A8        TAY
loc_CE14:
C D 2 - - - 0x01CE24 07:CE14: B9 30 CE  LDA tbl_CE30,Y
C - - - - - 0x01CE27 07:CE17: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x01CE2A 07:CE1A: B9 31 CE  LDA tbl_CE31,Y
C - - - - - 0x01CE2D 07:CE1D: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x01CE30 07:CE20: 30 0D     BMI bra_CE2F_RTS
C - - - - - 0x01CE32 07:CE22: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x01CE35 07:CE25: 30 08     BMI bra_CE2F_RTS
bra_CE27:
C - - - - - 0x01CE37 07:CE27: A9 00     LDA #$00
C - - - - - 0x01CE39 07:CE29: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x01CE3C 07:CE2C: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
bra_CE2F_RTS:
loc_CE2F_RTS:
C D 2 - - - 0x01CE3F 07:CE2F: 60        RTS



tbl_CE30:
- - - - - - 0x01CE40 07:CE30: E0        .byte $E0   ; 
tbl_CE31:
- - - - - - 0x01CE41 07:CE31: FF        .byte $FF   ; 
- - - - - - 0x01CE42 07:CE32: C0        .byte $C0   ; 
- - - - - - 0x01CE43 07:CE33: FF        .byte $FF   ; 
- - - - - - 0x01CE44 07:CE34: 80        .byte $80   ; 
- - - - - - 0x01CE45 07:CE35: FF        .byte $FF   ; 
- - - - - - 0x01CE46 07:CE36: 40        .byte $40   ; 
- - - - - - 0x01CE47 07:CE37: FF        .byte $FF   ; 
- D 2 - - - 0x01CE48 07:CE38: 20        .byte $20   ; 
- D 2 - - - 0x01CE49 07:CE39: 00        .byte $00   ; 
- D 2 - - - 0x01CE4A 07:CE3A: 40        .byte $40   ; 
- D 2 - - - 0x01CE4B 07:CE3B: 00        .byte $00   ; 
- D 2 - - - 0x01CE4C 07:CE3C: 80        .byte $80   ; 
- D 2 - - - 0x01CE4D 07:CE3D: 00        .byte $00   ; 
- - - - - - 0x01CE4E 07:CE3E: 00        .byte $00   ; 
- - - - - - 0x01CE4F 07:CE3F: 01        .byte $01   ; 



tbl_CE40:
- - - - - - 0x01CE50 07:CE40: FF        .byte $FF   ; 
- - - - - - 0x01CE51 07:CE41: FF        .byte $FF   ; 
- - - - - - 0x01CE52 07:CE42: 01        .byte $01   ; 
- D 2 - - - 0x01CE53 07:CE43: FF        .byte $FF   ; 
- - - - - - 0x01CE54 07:CE44: 00        .byte $00   ; 
- D 2 - - - 0x01CE55 07:CE45: FF        .byte $FF   ; 
- - - - - - 0x01CE56 07:CE46: 04        .byte $04   ; 
- - - - - - 0x01CE57 07:CE47: FF        .byte $FF   ; 
- - - - - - 0x01CE58 07:CE48: 06        .byte $06   ; 
- - - - - - 0x01CE59 07:CE49: FF        .byte $FF   ; 
- - - - - - 0x01CE5A 07:CE4A: 06        .byte $06   ; 
- - - - - - 0x01CE5B 07:CE4B: FF        .byte $FF   ; 
- - - - - - 0x01CE5C 07:CE4C: FF        .byte $FF   ; 
- - - - - - 0x01CE5D 07:CE4D: FF        .byte $FF   ; 
- - - - - - 0x01CE5E 07:CE4E: FF        .byte $FF   ; 
- - - - - - 0x01CE5F 07:CE4F: FF        .byte $FF   ; 
- - - - - - 0x01CE60 07:CE50: FF        .byte $FF   ; 
- D 2 - - - 0x01CE61 07:CE51: FF        .byte $FF   ; 
- - - - - - 0x01CE62 07:CE52: FF        .byte $FF   ; 
- - - - - - 0x01CE63 07:CE53: FF        .byte $FF   ; 
- - - - - - 0x01CE64 07:CE54: FF        .byte $FF   ; 
- - - - - - 0x01CE65 07:CE55: FF        .byte $FF   ; 
- - - - - - 0x01CE66 07:CE56: FF        .byte $FF   ; 
- - - - - - 0x01CE67 07:CE57: FF        .byte $FF   ; 
- - - - - - 0x01CE68 07:CE58: 05        .byte $05   ; 
- - - - - - 0x01CE69 07:CE59: FF        .byte $FF   ; 
- - - - - - 0x01CE6A 07:CE5A: FF        .byte $FF   ; 
- - - - - - 0x01CE6B 07:CE5B: FF        .byte $FF   ; 
- - - - - - 0x01CE6C 07:CE5C: FF        .byte $FF   ; 
- - - - - - 0x01CE6D 07:CE5D: FF        .byte $FF   ; 
- - - - - - 0x01CE6E 07:CE5E: FF        .byte $FF   ; 
- D 2 - - - 0x01CE6F 07:CE5F: FF        .byte $FF   ; 
- - - - - - 0x01CE70 07:CE60: FF        .byte $FF   ; 
- D 2 - - - 0x01CE71 07:CE61: FF        .byte $FF   ; 
- - - - - - 0x01CE72 07:CE62: 00        .byte $00   ; 
- - - - - - 0x01CE73 07:CE63: FF        .byte $FF   ; 
- - - - - - 0x01CE74 07:CE64: FF        .byte $FF   ; 
- - - - - - 0x01CE75 07:CE65: FF        .byte $FF   ; 
- - - - - - 0x01CE76 07:CE66: FF        .byte $FF   ; 
- - - - - - 0x01CE77 07:CE67: FF        .byte $FF   ; 
- - - - - - 0x01CE78 07:CE68: FF        .byte $FF   ; 
- - - - - - 0x01CE79 07:CE69: FF        .byte $FF   ; 
- - - - - - 0x01CE7A 07:CE6A: FF        .byte $FF   ; 
- - - - - - 0x01CE7B 07:CE6B: FF        .byte $FF   ; 
- - - - - - 0x01CE7C 07:CE6C: FF        .byte $FF   ; 
- - - - - - 0x01CE7D 07:CE6D: FF        .byte $FF   ; 
- - - - - - 0x01CE7E 07:CE6E: FF        .byte $FF   ; 
- - - - - - 0x01CE7F 07:CE6F: FF        .byte $FF   ; 
- - - - - - 0x01CE80 07:CE70: FF        .byte $FF   ; 
- - - - - - 0x01CE81 07:CE71: FF        .byte $FF   ; 
- - - - - - 0x01CE82 07:CE72: FF        .byte $FF   ; 
- - - - - - 0x01CE83 07:CE73: FF        .byte $FF   ; 
- - - - - - 0x01CE84 07:CE74: FF        .byte $FF   ; 
- - - - - - 0x01CE85 07:CE75: FF        .byte $FF   ; 
- - - - - - 0x01CE86 07:CE76: FF        .byte $FF   ; 
- - - - - - 0x01CE87 07:CE77: FF        .byte $FF   ; 
- - - - - - 0x01CE88 07:CE78: FF        .byte $FF   ; 
- - - - - - 0x01CE89 07:CE79: FF        .byte $FF   ; 
- - - - - - 0x01CE8A 07:CE7A: FF        .byte $FF   ; 
- D 2 - - - 0x01CE8B 07:CE7B: 04        .byte $04   ; 
- - - - - - 0x01CE8C 07:CE7C: FF        .byte $FF   ; 
- - - - - - 0x01CE8D 07:CE7D: FF        .byte $FF   ; 
- - - - - - 0x01CE8E 07:CE7E: FF        .byte $FF   ; 
- - - - - - 0x01CE8F 07:CE7F: FF        .byte $FF   ; 
- - - - - - 0x01CE90 07:CE80: 05        .byte $05   ; 
- D 2 - - - 0x01CE91 07:CE81: 05        .byte $05   ; 
- - - - - - 0x01CE92 07:CE82: FF        .byte $FF   ; 
- D 2 - - - 0x01CE93 07:CE83: 04        .byte $04   ; 
- - - - - - 0x01CE94 07:CE84: FF        .byte $FF   ; 
- - - - - - 0x01CE95 07:CE85: FF        .byte $FF   ; 
- - - - - - 0x01CE96 07:CE86: FF        .byte $FF   ; 
- - - - - - 0x01CE97 07:CE87: FF        .byte $FF   ; 
- - - - - - 0x01CE98 07:CE88: 03        .byte $03   ; 
- - - - - - 0x01CE99 07:CE89: FF        .byte $FF   ; 
- - - - - - 0x01CE9A 07:CE8A: FF        .byte $FF   ; 
- - - - - - 0x01CE9B 07:CE8B: FF        .byte $FF   ; 
- - - - - - 0x01CE9C 07:CE8C: 00        .byte $00   ; 
- - - - - - 0x01CE9D 07:CE8D: FF        .byte $FF   ; 
- - - - - - 0x01CE9E 07:CE8E: 07        .byte $07   ; 
- - - - - - 0x01CE9F 07:CE8F: 07        .byte $07   ; 
- - - - - - 0x01CEA0 07:CE90: 07        .byte $07   ; 
- - - - - - 0x01CEA1 07:CE91: 07        .byte $07   ; 
- - - - - - 0x01CEA2 07:CE92: 07        .byte $07   ; 
- - - - - - 0x01CEA3 07:CE93: 07        .byte $07   ; 
- - - - - - 0x01CEA4 07:CE94: 04        .byte $04   ; 
- - - - - - 0x01CEA5 07:CE95: FF        .byte $FF   ; 
- - - - - - 0x01CEA6 07:CE96: FF        .byte $FF   ; 
- - - - - - 0x01CEA7 07:CE97: FF        .byte $FF   ; 
- - - - - - 0x01CEA8 07:CE98: FF        .byte $FF   ; 
- - - - - - 0x01CEA9 07:CE99: FF        .byte $FF   ; 
- - - - - - 0x01CEAA 07:CE9A: 07        .byte $07   ; 
- - - - - - 0x01CEAB 07:CE9B: FF        .byte $FF   ; 
- - - - - - 0x01CEAC 07:CE9C: 07        .byte $07   ; 
- - - - - - 0x01CEAD 07:CE9D: FF        .byte $FF   ; 
- - - - - - 0x01CEAE 07:CE9E: FF        .byte $FF   ; 
- - - - - - 0x01CEAF 07:CE9F: FF        .byte $FF   ; 



sub_CEA0:
C - - - - - 0x01CEB0 07:CEA0: A5 0A     LDA ram_одноразовые_кнопки + 2
C - - - - - 0x01CEB2 07:CEA2: 29 20     AND #$20
C - - - - - 0x01CEB4 07:CEA4: F0 16     BEQ bra_CEBC_RTS
bra_CEA6:
C - - - - - 0x01CEB6 07:CEA6: AD 51 00  LDA a: ram_задержка_кадра
bra_CEA9:
C - - - - - 0x01CEB9 07:CEA9: CD 51 00  CMP a: ram_задержка_кадра
C - - - - - 0x01CEBC 07:CEAC: F0 FB     BEQ bra_CEA9
C - - - - - 0x01CEBE 07:CEAE: 20 CD ED  JSR sub_EDCD
C - - - - - 0x01CEC1 07:CEB1: A5 0A     LDA ram_одноразовые_кнопки + 2
C - - - - - 0x01CEC3 07:CEB3: 29 20     AND #$20
C - - - - - 0x01CEC5 07:CEB5: F0 EF     BEQ bra_CEA6
C - - - - - 0x01CEC7 07:CEB7: A9 00     LDA #$00
C - - - - - 0x01CEC9 07:CEB9: 8D 51 00  STA a: ram_задержка_кадра
bra_CEBC_RTS:
C - - - - - 0x01CECC 07:CEBC: 60        RTS



loc_CEBD:
.export sub_0x01CECD
sub_0x01CECD:
C D 2 - - - 0x01CECD 07:CEBD: 0A        ASL
C - - - - - 0x01CECE 07:CEBE: A8        TAY
C - - - - - 0x01CECF 07:CEBF: B1 30     LDA (ram_0030),Y
C - - - - - 0x01CED1 07:CEC1: 85 2C     STA ram_002C
C - - - - - 0x01CED3 07:CEC3: 85 2E     STA ram_002E
C - - - - - 0x01CED5 07:CEC5: C8        INY
C - - - - - 0x01CED6 07:CEC6: B1 30     LDA (ram_0030),Y
C - - - - - 0x01CED8 07:CEC8: 85 2D     STA ram_002D
C - - - - - 0x01CEDA 07:CECA: 85 2F     STA ram_002F
C - - - - - 0x01CEDC 07:CECC: A0 00     LDY #$00
C - - - - - 0x01CEDE 07:CECE: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01CEE0 07:CED0: C9 FD     CMP #$FD
C - - - - - 0x01CEE2 07:CED2: D0 11     BNE bra_CEE5
C - - - - - 0x01CEE4 07:CED4: BD 6C 04  LDA ram_игрок_подтип_анимации,X
C - - - - - 0x01CEE7 07:CED7: 0A        ASL
C - - - - - 0x01CEE8 07:CED8: A8        TAY
C - - - - - 0x01CEE9 07:CED9: C8        INY
C - - - - - 0x01CEEA 07:CEDA: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01CEEC 07:CEDC: 85 2C     STA ram_002C
C - - - - - 0x01CEEE 07:CEDE: C8        INY
C - - - - - 0x01CEEF 07:CEDF: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01CEF1 07:CEE1: 85 2D     STA ram_002D
C - - - - - 0x01CEF3 07:CEE3: 85 2D     STA ram_002D
bra_CEE5:
loc_CEE5:
C D 2 - - - 0x01CEF5 07:CEE5: BD 94 00  LDA a: ram_номер_кадра_анимации,X
C - - - - - 0x01CEF8 07:CEE8: 0A        ASL
C - - - - - 0x01CEF9 07:CEE9: A8        TAY
C - - - - - 0x01CEFA 07:CEEA: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CEFC 07:CEEC: F0 31     BEQ bra_CF1F
C - - - - - 0x01CEFE 07:CEEE: C9 FF     CMP #$FF
C - - - - - 0x01CF00 07:CEF0: F0 3E     BEQ bra_CF30
C - - - - - 0x01CF02 07:CEF2: C9 FE     CMP #$FE
C - - - - - 0x01CF04 07:CEF4: F0 30     BEQ bra_CF26
C - - - - - 0x01CF06 07:CEF6: C9 FC     CMP #$FC
C - - - - - 0x01CF08 07:CEF8: F0 67     BEQ bra_CF61
C - - - - - 0x01CF0A 07:CEFA: C9 F0     CMP #$F0
C - - - - - 0x01CF0C 07:CEFC: F0 44     BEQ bra_CF42
C - - - - - 0x01CF0E 07:CEFE: C9 F1     CMP #$F1
C - - - - - 0x01CF10 07:CF00: F0 53     BEQ bra_CF55
C - - - - - 0x01CF12 07:CF02: C9 F2     CMP #$F2
C - - - - - 0x01CF14 07:CF04: F0 69     BEQ bra_CF6F
C - - - - - 0x01CF16 07:CF06: 85 1C     STA ram_001C
C - - - - - 0x01CF18 07:CF08: FE 87 00  INC a: ram_таймер_кадра_анимации,X
C - - - - - 0x01CF1B 07:CF0B: BD 87 00  LDA a: ram_таймер_кадра_анимации,X
C - - - - - 0x01CF1E 07:CF0E: C5 1C     CMP ram_001C
C - - - - - 0x01CF20 07:CF10: F0 0D     BEQ bra_CF1F
C - - - - - 0x01CF22 07:CF12: 90 0B     BCC bra_CF1F
C - - - - - 0x01CF24 07:CF14: FE 94 00  INC a: ram_номер_кадра_анимации,X
C - - - - - 0x01CF27 07:CF17: A9 00     LDA #$00
C - - - - - 0x01CF29 07:CF19: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x01CF2C 07:CF1C: 4C E5 CE  JMP loc_CEE5
bra_CF1F:
C - - - - - 0x01CF2F 07:CF1F: C8        INY
C - - - - - 0x01CF30 07:CF20: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CF32 07:CF22: 9D 74 00  STA a: ram_номер_анимации,X
loc_CF25_RTS:
C D 2 - - - 0x01CF35 07:CF25: 60        RTS
bra_CF26:
C - - - - - 0x01CF36 07:CF26: A9 00     LDA #$00
C - - - - - 0x01CF38 07:CF28: 9D 94 00  STA a: ram_номер_кадра_анимации,X
C - - - - - 0x01CF3B 07:CF2B: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x01CF3E 07:CF2E: F0 B5     BEQ bra_CEE5
bra_CF30:
C - - - - - 0x01CF40 07:CF30: 8C 44 00  STY a: ram_0044
C - - - - - 0x01CF43 07:CF33: 20 90 CF  JSR sub_CF90
C - - - - - 0x01CF46 07:CF36: AC 44 00  LDY a: ram_0044
C - - - - - 0x01CF49 07:CF39: 88        DEY
C - - - - - 0x01CF4A 07:CF3A: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CF4C 07:CF3C: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x01CF4F 07:CF3F: 4C 25 CF  JMP loc_CF25_RTS
bra_CF42:
C - - - - - 0x01CF52 07:CF42: C8        INY
C - - - - - 0x01CF53 07:CF43: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x01CF56 07:CF46: 29 40     AND #$40
C - - - - - 0x01CF58 07:CF48: F0 05     BEQ bra_CF4F
C - - - - - 0x01CF5A 07:CF4A: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CF5C 07:CF4C: 8D 85 04  STA ram_мяч_тип_удара
bra_CF4F:
C - - - - - 0x01CF5F 07:CF4F: FE 94 00  INC a: ram_номер_кадра_анимации,X
C - - - - - 0x01CF62 07:CF52: 4C E5 CE  JMP loc_CEE5
bra_CF55:
C - - - - - 0x01CF65 07:CF55: C8        INY
C - - - - - 0x01CF66 07:CF56: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CF68 07:CF58: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01CF6B 07:CF5B: FE 94 00  INC a: ram_номер_кадра_анимации,X
C - - - - - 0x01CF6E 07:CF5E: 4C E5 CE  JMP loc_CEE5
bra_CF61:
C - - - - - 0x01CF71 07:CF61: C8        INY
C - - - - - 0x01CF72 07:CF62: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CF74 07:CF64: 9D 94 00  STA a: ram_номер_кадра_анимации,X
C - - - - - 0x01CF77 07:CF67: A9 00     LDA #$00
C - - - - - 0x01CF79 07:CF69: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x01CF7C 07:CF6C: 4C E5 CE  JMP loc_CEE5
bra_CF6F:
C - - - - - 0x01CF7F 07:CF6F: C8        INY
C - - - - - 0x01CF80 07:CF70: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01CF82 07:CF72: 85 5C     STA ram_режим_игры_на_поле
C - - - - - 0x01CF84 07:CF74: AD 5A 06  LDA ram_позиция_управление + 10
C - - - - - 0x01CF87 07:CF77: 29 7F     AND #$7F
C - - - - - 0x01CF89 07:CF79: 0D 8C 06  ORA ram_управление_кипером
C - - - - - 0x01CF8C 07:CF7C: 8D 5A 06  STA ram_позиция_управление + 10
C - - - - - 0x01CF8F 07:CF7F: AD 5B 06  LDA ram_позиция_управление + 11
C - - - - - 0x01CF92 07:CF82: 29 7F     AND #$7F
C - - - - - 0x01CF94 07:CF84: 0D 8D 06  ORA ram_068D
C - - - - - 0x01CF97 07:CF87: 8D 5B 06  STA ram_позиция_управление + 11
C - - - - - 0x01CF9A 07:CF8A: FE 94 00  INC a: ram_номер_кадра_анимации,X
C - - - - - 0x01CF9D 07:CF8D: 4C E5 CE  JMP loc_CEE5



sub_CF90:
C - - - - - 0x01CFA0 07:CF90: 6C 32 00  JMP (ram_0032)



sub_CF93:
C - - - - - 0x01CFA3 07:CF93: A9 00     LDA #$00
C - - - - - 0x01CFA5 07:CF95: 8D F0 05  STA ram_счетчик_следов
C - - - - - 0x01CFA8 07:CF98: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01CFAB 07:CF9B: 8D FD 05  STA ram_сила_ветра
C - - - - - 0x01CFAE 07:CF9E: A9 FF     LDA #$FF
C - - - - - 0x01CFB0 07:CFA0: 8D FA 05  STA ram_05FA
C - - - - - 0x01CFB3 07:CFA3: 8D 7C 06  STA ram_067C
C - - - - - 0x01CFB6 07:CFA6: 8D 7D 06  STA ram_067D
C - - - - - 0x01CFB9 07:CFA9: 8D F5 05  STA ram_флаг_гола
C - - - - - 0x01CFBC 07:CFAC: 20 D9 E7  JSR sub_E7D9
C - - - - - 0x01CFBF 07:CFAF: 20 26 C3  JSR sub_C326
C - - - - - 0x01CFC2 07:CFB2: 20 9A EE  JSR sub_EE9A
C - - - - - 0x01CFC5 07:CFB5: AD F4 05  LDA ram_цвет_поля
C - - - - - 0x01CFC8 07:CFB8: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x01CFCB 07:CFBB: A9 0F     LDA #$0F
C - - - - - 0x01CFCD 07:CFBD: 8D AD 05  STA ram_номер_палитры_фона + 1
C - - - - - 0x01CFD0 07:CFC0: A9 01     LDA #$01
C - - - - - 0x01CFD2 07:CFC2: 8D 00 A0  STA $A000
C - - - - - 0x01CFD5 07:CFC5: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01CFD8 07:CFC8: 8D BC 05  STA ram_банк_фона
C - - - - - 0x01CFDB 07:CFCB: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01CFDE 07:CFCE: 18        CLC
C - - - - - 0x01CFDF 07:CFCF: 69 04     ADC #$04
C - - - - - 0x01CFE1 07:CFD1: 8D BD 05  STA ram_банк_фона + 1
C - - - - - 0x01CFE4 07:CFD4: 20 7D EE  JSR sub_EE7D
C - - - - - 0x01CFE7 07:CFD7: A9 B1     LDA #$B1
C - - - - - 0x01CFE9 07:CFD9: 85 56     STA ram_ограничитель_Y_спрайтов
C - - - - - 0x01CFEB 07:CFDB: 20 A9 EC  JSR sub_ECA9
C - - - - - 0x01CFEE 07:CFDE: 20 71 EE  JSR sub_EE71
C - - - - - 0x01CFF1 07:CFE1: 20 C1 EC  JSR sub_ECC1
C - - - - - 0x01CFF4 07:CFE4: 20 D9 E3  JSR sub_E3D9
C - - - - - 0x01CFF7 07:CFE7: 20 7B C2  JSR sub_C27B
C - - - - - 0x01CFFA 07:CFEA: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x01CFFC 07:CFEC: 29 20     AND #$20
C - - - - - 0x01CFFE 07:CFEE: D0 09     BNE bra_CFF9
C - - - - - 0x01D000 07:CFF0: AD 5B 05  LDA ram_вариант_расстановки_игроков
C - - - - - 0x01D003 07:CFF3: F0 0D     BEQ bra_D002
C - - - - - 0x01D005 07:CFF5: A9 85     LDA #$85
C - - - - - 0x01D007 07:CFF7: D0 0B     BNE bra_D004
bra_CFF9:
C - - - - - 0x01D009 07:CFF9: A9 0D     LDA #$0D
C - - - - - 0x01D00B 07:CFFB: 8D 5A 05  STA ram_номер_музыки
C - - - - - 0x01D00E 07:CFFE: A9 83     LDA #$83
C - - - - - 0x01D010 07:D000: D0 02     BNE bra_D004
bra_D002:
C - - - - - 0x01D012 07:D002: A9 80     LDA #$80
bra_D004:
C - - - - - 0x01D014 07:D004: 8D F8 05  STA ram_вид_статусбара
C - - - - - 0x01D017 07:D007: A9 00     LDA #$00
C - - - - - 0x01D019 07:D009: 8D F9 05  STA ram_флаг_готового_статусбара
C - - - - - 0x01D01C 07:D00C: AD 5A 05  LDA ram_номер_музыки
C - - - - - 0x01D01F 07:D00F: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01D022 07:D012: A9 03     LDA #$03
C - - - - - 0x01D024 07:D014: 8D E6 05  STA ram_05E6
C - - - - - 0x01D027 07:D017: 20 65 EE  JSR sub_EE65
C - - - - - 0x01D02A 07:D01A: 20 CB EC  JSR sub_ECCB
C - - - - - 0x01D02D 07:D01D: 58        CLI
C - - - - - 0x01D02E 07:D01E: 60        RTS



sub_D01F:
C - - - - - 0x01D02F 07:D01F: AD 2C 05  LDA ram_номер_команды
C - - - - - 0x01D032 07:D022: 29 0C     AND #$0C
C - - - - - 0x01D034 07:D024: 85 1C     STA ram_001C
C - - - - - 0x01D036 07:D026: AD 2D 05  LDA ram_номер_команды + 1
C - - - - - 0x01D039 07:D029: 29 0C     AND #$0C
C - - - - - 0x01D03B 07:D02B: 4A        LSR
C - - - - - 0x01D03C 07:D02C: 4A        LSR
C - - - - - 0x01D03D 07:D02D: 05 1C     ORA ram_001C
C - - - - - 0x01D03F 07:D02F: 18        CLC
C - - - - - 0x01D040 07:D030: 69 29     ADC #$29
C - - - - - 0x01D042 07:D032: 8D AD 05  STA ram_номер_палитры_фона + 1
C - - - - - 0x01D045 07:D035: 60        RTS



loc_D036:
sub_D036:
C D 2 - - - 0x01D046 07:D036: A9 40     LDA #$40
C - - - - - 0x01D048 07:D038: 8D B4 05  STA ram_текущая_яркость
C - - - - - 0x01D04B 07:D03B: A9 01     LDA #$01
C - - - - - 0x01D04D 07:D03D: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x01D050 07:D040: 20 D5 D0  JSR sub_D0D5
C - - - - - 0x01D053 07:D043: 20 87 D1  JSR sub_D187
C - - - - - 0x01D056 07:D046: 60        RTS



loc_D047:
sub_D047:
.export sub_0x01D057
sub_0x01D057:
C D 2 - - - 0x01D057 07:D047: A9 40     LDA #$40
C - - - - - 0x01D059 07:D049: 8D B2 05  STA ram_флаг_яркости
C - - - - - 0x01D05C 07:D04C: 4C 54 D0  JMP loc_D054



loc_D04F:
sub_D04F:
C D 2 - - - 0x01D05F 07:D04F: A9 00     LDA #$00
C - - - - - 0x01D061 07:D051: 8D B2 05  STA ram_флаг_яркости
loc_D054:
C D 2 - - - 0x01D064 07:D054: A9 02     LDA #$02
C - - - - - 0x01D066 07:D056: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x01D069 07:D059: A9 00     LDA #$00
C - - - - - 0x01D06B 07:D05B: 8D B6 05  STA ram_счетчик_яркости
C - - - - - 0x01D06E 07:D05E: 8D B5 05  STA ram_таймер_яркости
C - - - - - 0x01D071 07:D061: 60        RTS



bra_D062:
loc_D062:
sub_D062:
C D 2 - - - 0x01D072 07:D062: 20 73 D0  JSR sub_D073
C - - - - - 0x01D075 07:D065: AD 51 00  LDA a: ram_задержка_кадра
bra_D068:
C - - - - - 0x01D078 07:D068: CD 51 00  CMP a: ram_задержка_кадра
C - - - - - 0x01D07B 07:D06B: F0 FB     BEQ bra_D068
C - - - - - 0x01D07D 07:D06D: AD B2 05  LDA ram_флаг_яркости
C - - - - - 0x01D080 07:D070: 10 F0     BPL bra_D062
C - - - - - 0x01D082 07:D072: 60        RTS



loc_D073:
sub_D073:
C D 2 - - - 0x01D083 07:D073: 2C B2 05  BIT ram_флаг_яркости
C - - - - - 0x01D086 07:D076: 30 52     BMI bra_D0CA_RTS
C - - - - - 0x01D088 07:D078: 70 0E     BVS bra_D088
C - - - - - 0x01D08A 07:D07A: AD B6 05  LDA ram_счетчик_яркости
C - - - - - 0x01D08D 07:D07D: 10 00     BPL bra_D07F
bra_D07F:
C - - - - - 0x01D08F 07:D07F: AC B6 05  LDY ram_счетчик_яркости
C - - - - - 0x01D092 07:D082: B9 CB D0  LDA tbl_D0CB,Y
C - - - - - 0x01D095 07:D085: 4C 8E D0  JMP loc_D08E
bra_D088:
C - - - - - 0x01D098 07:D088: AC B6 05  LDY ram_счетчик_яркости
C - - - - - 0x01D09B 07:D08B: B9 D0 D0  LDA tbl_D0D0,Y
loc_D08E:
C D 2 - - - 0x01D09E 07:D08E: 8D B4 05  STA ram_текущая_яркость
C - - - - - 0x01D0A1 07:D091: AD B5 05  LDA ram_таймер_яркости
C - - - - - 0x01D0A4 07:D094: D0 0D     BNE bra_D0A3
C - - - - - 0x01D0A6 07:D096: 20 D5 D0  JSR sub_D0D5
C - - - - - 0x01D0A9 07:D099: A9 00     LDA #$00
C - - - - - 0x01D0AB 07:D09B: 8D 90 06  STA ram_бит_для_2000_атрибуты
C - - - - - 0x01D0AE 07:D09E: A9 3F     LDA #$3F
C - - - - - 0x01D0B0 07:D0A0: 8D D9 06  STA ram_байт_2006_hi_палитра
bra_D0A3:
C - - - - - 0x01D0B3 07:D0A3: EE B5 05  INC ram_таймер_яркости
C - - - - - 0x01D0B6 07:D0A6: AD B5 05  LDA ram_таймер_яркости
C - - - - - 0x01D0B9 07:D0A9: CD B3 05  CMP ram_скорость_яркости
C - - - - - 0x01D0BC 07:D0AC: 90 1C     BCC bra_D0CA_RTS
C - - - - - 0x01D0BE 07:D0AE: A9 00     LDA #$00
C - - - - - 0x01D0C0 07:D0B0: 8D B5 05  STA ram_таймер_яркости
C - - - - - 0x01D0C3 07:D0B3: EE B6 05  INC ram_счетчик_яркости
C - - - - - 0x01D0C6 07:D0B6: AD B6 05  LDA ram_счетчик_яркости
C - - - - - 0x01D0C9 07:D0B9: C9 05     CMP #$05
C - - - - - 0x01D0CB 07:D0BB: 90 0D     BCC bra_D0CA_RTS
C - - - - - 0x01D0CD 07:D0BD: A9 00     LDA #$00
C - - - - - 0x01D0CF 07:D0BF: 8D B6 05  STA ram_счетчик_яркости
C - - - - - 0x01D0D2 07:D0C2: AD B2 05  LDA ram_флаг_яркости
C - - - - - 0x01D0D5 07:D0C5: 09 80     ORA #$80
C - - - - - 0x01D0D7 07:D0C7: 8D B2 05  STA ram_флаг_яркости
bra_D0CA_RTS:
C - - - - - 0x01D0DA 07:D0CA: 60        RTS



tbl_D0CB:
- D 2 - - - 0x01D0DB 07:D0CB: 00        .byte $00   ; 
- D 2 - - - 0x01D0DC 07:D0CC: 10        .byte $10   ; 
- D 2 - - - 0x01D0DD 07:D0CD: 20        .byte $20   ; 
- D 2 - - - 0x01D0DE 07:D0CE: 30        .byte $30   ; 
- D 2 - - - 0x01D0DF 07:D0CF: 40        .byte $40   ; 



tbl_D0D0:
- D 2 - - - 0x01D0E0 07:D0D0: 40        .byte $40   ; 
- D 2 - - - 0x01D0E1 07:D0D1: 30        .byte $30   ; 
- D 2 - - - 0x01D0E2 07:D0D2: 20        .byte $20   ; 
- D 2 - - - 0x01D0E3 07:D0D3: 10        .byte $10   ; 
- D 2 - - - 0x01D0E4 07:D0D4: 00        .byte $00   ; 



loc_D0D5:
sub_D0D5:
C D 2 - - - 0x01D0E5 07:D0D5: A2 00     LDX #$00
C - - - - - 0x01D0E7 07:D0D7: 8E DA 06  STX ram_байт_2006_lo_палитра
C - - - - - 0x01D0EA 07:D0DA: A9 10     LDA #$10
C - - - - - 0x01D0EC 07:D0DC: 8D DB 06  STA ram_счетчик_буфера_палитры
C - - - - - 0x01D0EF 07:D0DF: A9 00     LDA #$00
C - - - - - 0x01D0F1 07:D0E1: 85 1C     STA ram_001C
bra_D0E3:
C - - - - - 0x01D0F3 07:D0E3: 8A        TXA
C - - - - - 0x01D0F4 07:D0E4: 4A        LSR
C - - - - - 0x01D0F5 07:D0E5: 4A        LSR
C - - - - - 0x01D0F6 07:D0E6: 4A        LSR
C - - - - - 0x01D0F7 07:D0E7: 29 01     AND #$01
C - - - - - 0x01D0F9 07:D0E9: A8        TAY
C - - - - - 0x01D0FA 07:D0EA: B9 AC 05  LDA ram_номер_палитры_фона,Y
C - - - - - 0x01D0FD 07:D0ED: 0A        ASL
C - - - - - 0x01D0FE 07:D0EE: A8        TAY
C - - - - - 0x01D0FF 07:D0EF: B9 FB D2  LDA tbl_D2FB,Y
C - - - - - 0x01D102 07:D0F2: 85 2C     STA ram_002C
C - - - - - 0x01D104 07:D0F4: B9 FC D2  LDA tbl_D2FB + 1,Y
C - - - - - 0x01D107 07:D0F7: 85 2D     STA ram_002D
bra_D0F9:
C - - - - - 0x01D109 07:D0F9: 8A        TXA
C - - - - - 0x01D10A 07:D0FA: 4A        LSR
C - - - - - 0x01D10B 07:D0FB: 4A        LSR
C - - - - - 0x01D10C 07:D0FC: 29 01     AND #$01
C - - - - - 0x01D10E 07:D0FE: 0A        ASL
C - - - - - 0x01D10F 07:D0FF: A8        TAY
C - - - - - 0x01D110 07:D100: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01D112 07:D102: 85 30     STA ram_0030
C - - - - - 0x01D114 07:D104: C8        INY
C - - - - - 0x01D115 07:D105: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01D117 07:D107: 85 31     STA ram_0031
C - - - - - 0x01D119 07:D109: A0 00     LDY #$00
C - - - - - 0x01D11B 07:D10B: 20 5F D1  JSR sub_D15F
C - - - - - 0x01D11E 07:D10E: 8A        TXA
C - - - - - 0x01D11F 07:D10F: 29 07     AND #$07
C - - - - - 0x01D121 07:D111: D0 E6     BNE bra_D0F9
C - - - - - 0x01D123 07:D113: 8A        TXA
C - - - - - 0x01D124 07:D114: 29 0F     AND #$0F
C - - - - - 0x01D126 07:D116: D0 CB     BNE bra_D0E3
C - - - - - 0x01D128 07:D118: AD B2 05  LDA ram_флаг_яркости
C - - - - - 0x01D12B 07:D11B: 29 01     AND #$01
C - - - - - 0x01D12D 07:D11D: D0 2A     BNE bra_D149
C - - - - - 0x01D12F 07:D11F: 18        CLC
C - - - - - 0x01D130 07:D120: AD DB 06  LDA ram_счетчик_буфера_палитры
C - - - - - 0x01D133 07:D123: 69 10     ADC #$10
C - - - - - 0x01D135 07:D125: 8D DB 06  STA ram_счетчик_буфера_палитры
bra_D128:
C - - - - - 0x01D138 07:D128: 8A        TXA
C - - - - - 0x01D139 07:D129: 4A        LSR
C - - - - - 0x01D13A 07:D12A: 4A        LSR
C - - - - - 0x01D13B 07:D12B: 29 03     AND #$03
C - - - - - 0x01D13D 07:D12D: A8        TAY
C - - - - - 0x01D13E 07:D12E: B9 AE 05  LDA ram_номер_палитры_спрайтов,Y
C - - - - - 0x01D141 07:D131: 0A        ASL
C - - - - - 0x01D142 07:D132: A8        TAY
C - - - - - 0x01D143 07:D133: B9 B7 D1  LDA tbl_D1B7,Y
C - - - - - 0x01D146 07:D136: 8D 30 00  STA a: ram_0030
C - - - - - 0x01D149 07:D139: B9 B8 D1  LDA tbl_D1B7 + 1,Y
C - - - - - 0x01D14C 07:D13C: 8D 31 00  STA a: ram_0031
C - - - - - 0x01D14F 07:D13F: A0 00     LDY #$00
C - - - - - 0x01D151 07:D141: 20 5F D1  JSR sub_D15F
C - - - - - 0x01D154 07:D144: 8A        TXA
C - - - - - 0x01D155 07:D145: 29 0F     AND #$0F
C - - - - - 0x01D157 07:D147: D0 DF     BNE bra_D128
bra_D149:
C - - - - - 0x01D159 07:D149: AD DB 06  LDA ram_счетчик_буфера_палитры
C - - - - - 0x01D15C 07:D14C: F0 68     BEQ bra_D1B6_RTS
C - - - - - 0x01D15E 07:D14E: AD DC 06  LDA ram_буфер_палитры
C - - - - - 0x01D161 07:D151: A0 04     LDY #$04
bra_D153:
C - - - - - 0x01D163 07:D153: 99 DC 06  STA ram_буфер_палитры,Y
C - - - - - 0x01D166 07:D156: C8        INY
C - - - - - 0x01D167 07:D157: C8        INY
C - - - - - 0x01D168 07:D158: C8        INY
C - - - - - 0x01D169 07:D159: C8        INY
C - - - - - 0x01D16A 07:D15A: C0 20     CPY #$20
C - - - - - 0x01D16C 07:D15C: 90 F5     BCC bra_D153
C - - - - - 0x01D16E 07:D15E: 60        RTS
bra_D15F:
sub_D15F:
C - - - - - 0x01D16F 07:D15F: AD B4 05  LDA ram_текущая_яркость
C - - - - - 0x01D172 07:D162: F0 16     BEQ bra_D17A
C - - - - - 0x01D174 07:D164: B1 30     LDA (ram_0030),Y
C - - - - - 0x01D176 07:D166: E4 1C     CPX ram_001C
C - - - - - 0x01D178 07:D168: 90 12     BCC bra_D17C
C - - - - - 0x01D17A 07:D16A: CD B4 05  CMP ram_текущая_яркость
C - - - - - 0x01D17D 07:D16D: 90 0D     BCC bra_D17C
C - - - - - 0x01D17F 07:D16F: 29 0F     AND #$0F
C - - - - - 0x01D181 07:D171: 0D B4 05  ORA ram_текущая_яркость
C - - - - - 0x01D184 07:D174: 38        SEC
C - - - - - 0x01D185 07:D175: E9 10     SBC #$10
C - - - - - 0x01D187 07:D177: 4C 7C D1  JMP loc_D17C
bra_D17A:
C - - - - - 0x01D18A 07:D17A: A9 0F     LDA #$0F
bra_D17C:
loc_D17C:
C D 2 - - - 0x01D18C 07:D17C: 9D DC 06  STA ram_буфер_палитры,X
C - - - - - 0x01D18F 07:D17F: C8        INY
C - - - - - 0x01D190 07:D180: E8        INX
C - - - - - 0x01D191 07:D181: 8A        TXA
C - - - - - 0x01D192 07:D182: 29 03     AND #$03
C - - - - - 0x01D194 07:D184: D0 D9     BNE bra_D15F
C - - - - - 0x01D196 07:D186: 60        RTS



sub_D187:
C - - - - - 0x01D197 07:D187: A9 00     LDA #$00
C - - - - - 0x01D199 07:D189: 8D 92 06  STA ram_бит_для_2000_палитра
C - - - - - 0x01D19C 07:D18C: A9 3F     LDA #$3F
C - - - - - 0x01D19E 07:D18E: 8D D9 06  STA ram_байт_2006_hi_палитра
bra_D191:
C - - - - - 0x01D1A1 07:D191: CD D9 06  CMP ram_байт_2006_hi_палитра
C - - - - - 0x01D1A4 07:D194: F0 FB     BEQ bra_D191
C - - - - - 0x01D1A6 07:D196: A9 00     LDA #$00
C - - - - - 0x01D1A8 07:D198: 8D B5 05  STA ram_таймер_яркости
C - - - - - 0x01D1AB 07:D19B: AD B3 05  LDA ram_скорость_яркости
C - - - - - 0x01D1AE 07:D19E: F0 11     BEQ bra_D1B1
bra_D1A0:
C - - - - - 0x01D1B0 07:D1A0: A5 51     LDA ram_задержка_кадра
bra_D1A2:
C - - - - - 0x01D1B2 07:D1A2: C5 51     CMP ram_задержка_кадра
C - - - - - 0x01D1B4 07:D1A4: F0 FC     BEQ bra_D1A2
C - - - - - 0x01D1B6 07:D1A6: EE B5 05  INC ram_таймер_яркости
C - - - - - 0x01D1B9 07:D1A9: AD B5 05  LDA ram_таймер_яркости
C - - - - - 0x01D1BC 07:D1AC: CD B3 05  CMP ram_скорость_яркости
C - - - - - 0x01D1BF 07:D1AF: 90 EF     BCC bra_D1A0
bra_D1B1:
C - - - - - 0x01D1C1 07:D1B1: A9 00     LDA #$00
C - - - - - 0x01D1C3 07:D1B3: 8D 51 00  STA a: ram_задержка_кадра
bra_D1B6_RTS:
C - - - - - 0x01D1C6 07:D1B6: 60        RTS



tbl_D1B7:
- D 2 - - - 0x01D1C7 07:D1B7: 23 D2     .word off_D223_00
- D 2 - - - 0x01D1C9 07:D1B9: 27 D2     .word off_D227_01
- D 2 - - - 0x01D1CB 07:D1BB: 2B D2     .word off_D22B_02
- D 2 - - - 0x01D1CD 07:D1BD: 2F D2     .word off_D22F_03
- D 2 - - - 0x01D1CF 07:D1BF: 33 D2     .word off_D233_04
- D 2 - - - 0x01D1D1 07:D1C1: 37 D2     .word off_D237_05
- D 2 - - - 0x01D1D3 07:D1C3: 3B D2     .word off_D23B_06
- D 2 - - - 0x01D1D5 07:D1C5: 3F D2     .word off_D23F_07
- D 2 - - - 0x01D1D7 07:D1C7: 43 D2     .word off_D243_08
- D 2 - - - 0x01D1D9 07:D1C9: 47 D2     .word off_D247_09
- - - - - - 0x01D1DB 07:D1CB: 4B D2     .word off_D24B_0A
- D 2 - - - 0x01D1DD 07:D1CD: 4F D2     .word off_D24F_0B
- D 2 - - - 0x01D1DF 07:D1CF: 53 D2     .word off_D253_0C
- - - - - - 0x01D1E1 07:D1D1: 57 D2     .word off_D257_0D
- D 2 - - - 0x01D1E3 07:D1D3: 5B D2     .word off_D25B_0E
- D 2 - - - 0x01D1E5 07:D1D5: 5F D2     .word off_D25F_0F
- - - - - - 0x01D1E7 07:D1D7: 63 D2     .word off_D263_10
- D 2 - - - 0x01D1E9 07:D1D9: 67 D2     .word off_D267_11
- D 2 - - - 0x01D1EB 07:D1DB: 6B D2     .word off_D26B_12
- D 2 - - - 0x01D1ED 07:D1DD: 6F D2     .word off_D26F_13
- D 2 - - - 0x01D1EF 07:D1DF: 73 D2     .word off_D273_14
- D 2 - - - 0x01D1F1 07:D1E1: 77 D2     .word off_D277_15
- D 2 - - - 0x01D1F3 07:D1E3: 7B D2     .word off_D27B_16
- D 2 - - - 0x01D1F5 07:D1E5: 7F D2     .word off_D27F_17
- D 2 - - - 0x01D1F7 07:D1E7: 83 D2     .word off_D283_18
- D 2 - - - 0x01D1F9 07:D1E9: 87 D2     .word off_D287_19
- D 2 - - - 0x01D1FB 07:D1EB: 8B D2     .word off_D28B_1A
- D 2 - - - 0x01D1FD 07:D1ED: 8F D2     .word off_D28F_1B
- D 2 - - - 0x01D1FF 07:D1EF: 93 D2     .word off_D293_1C
- D 2 - - - 0x01D201 07:D1F1: 97 D2     .word off_D297_1D
- D 2 - - - 0x01D203 07:D1F3: 9B D2     .word off_D29B_1E
- D 2 - - - 0x01D205 07:D1F5: 9F D2     .word off_D29F_1F
- D 2 - - - 0x01D207 07:D1F7: A3 D2     .word off_D2A3_20
- D 2 - - - 0x01D209 07:D1F9: A7 D2     .word off_D2A7_21
- D 2 - - - 0x01D20B 07:D1FB: AB D2     .word off_D2AB_22
- D 2 - - - 0x01D20D 07:D1FD: AF D2     .word off_D2AF_23
- D 2 - - - 0x01D20F 07:D1FF: B3 D2     .word off_D2B3_24
- D 2 - - - 0x01D211 07:D201: B7 D2     .word off_D2B7_25
- D 2 - - - 0x01D213 07:D203: BB D2     .word off_D2BB_26
- D 2 - - - 0x01D215 07:D205: BF D2     .word off_D2BF_27
- D 2 - - - 0x01D217 07:D207: C3 D2     .word off_D2C3_28
- D 2 - - - 0x01D219 07:D209: C7 D2     .word off_D2C7_29
- D 2 - - - 0x01D21B 07:D20B: CB D2     .word off_D2CB_2A
- - - - - - 0x01D21D 07:D20D: CF D2     .word off_D2CF_2B
- - - - - - 0x01D21F 07:D20F: D3 D2     .word off_D2D3_2C
- - - - - - 0x01D221 07:D211: D7 D2     .word off_D2D7_2D
- - - - - - 0x01D223 07:D213: DB D2     .word off_D2DB_2E
- - - - - - 0x01D225 07:D215: DF D2     .word off_D2DF_2F
- - - - - - 0x01D227 07:D217: E3 D2     .word off_D2E3_30
- - - - - - 0x01D229 07:D219: E7 D2     .word off_D2E7_31
- - - - - - 0x01D22B 07:D21B: EB D2     .word off_D2EB_32
- - - - - - 0x01D22D 07:D21D: EF D2     .word off_D2EF_33
- - - - - - 0x01D22F 07:D21F: F3 D2     .word off_D2F3_34
- - - - - - 0x01D231 07:D221: F7 D2     .word off_D2F7_35



off_D223_00:
off_D223_01:
- D 2 - I - 0x01D233 07:D223: 0F        .byte $0F   ; 
- D 2 - I - 0x01D234 07:D224: 0F        .byte $0F   ; 
- D 2 - I - 0x01D235 07:D225: 0F        .byte $0F   ; 
- D 2 - I - 0x01D236 07:D226: 0F        .byte $0F   ; 



off_D227_01:
- D 2 - I - 0x01D237 07:D227: 0F        .byte $0F   ; 
- D 2 - I - 0x01D238 07:D228: 0F        .byte $0F   ; 
- D 2 - I - 0x01D239 07:D229: 30        .byte $30   ; 
- D 2 - I - 0x01D23A 07:D22A: 26        .byte $26   ; 



off_D22B_02:
- D 2 - I - 0x01D23B 07:D22B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D23C 07:D22C: 1C        .byte $1C   ; 
- D 2 - I - 0x01D23D 07:D22D: 30        .byte $30   ; 
- D 2 - I - 0x01D23E 07:D22E: 2C        .byte $2C   ; 



off_D22F_03:
- D 2 - I - 0x01D23F 07:D22F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D240 07:D230: 1C        .byte $1C   ; 
- D 2 - I - 0x01D241 07:D231: 3C        .byte $3C   ; 
- D 2 - I - 0x01D242 07:D232: 2C        .byte $2C   ; 



off_D233_04:
- D 2 - I - 0x01D243 07:D233: 0F        .byte $0F   ; 
- D 2 - I - 0x01D244 07:D234: 0F        .byte $0F   ; 
- D 2 - I - 0x01D245 07:D235: 30        .byte $30   ; 
- D 2 - I - 0x01D246 07:D236: 26        .byte $26   ; 



off_D237_05:
- D 2 - I - 0x01D247 07:D237: 0F        .byte $0F   ; 
- D 2 - I - 0x01D248 07:D238: 0F        .byte $0F   ; 
- D 2 - I - 0x01D249 07:D239: 30        .byte $30   ; 
- D 2 - I - 0x01D24A 07:D23A: 17        .byte $17   ; 



off_D23B_06:
- D 2 - I - 0x01D24B 07:D23B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D24C 07:D23C: 07        .byte $07   ; 
- D 2 - I - 0x01D24D 07:D23D: 30        .byte $30   ; 
- D 2 - I - 0x01D24E 07:D23E: 27        .byte $27   ; 



off_D23F_07:
- D 2 - I - 0x01D24F 07:D23F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D250 07:D240: 0F        .byte $0F   ; 
- D 2 - I - 0x01D251 07:D241: 30        .byte $30   ; 
- D 2 - I - 0x01D252 07:D242: 27        .byte $27   ; 



off_D243_08:
- D 2 - I - 0x01D253 07:D243: 0F        .byte $0F   ; 
- D 2 - I - 0x01D254 07:D244: 0F        .byte $0F   ; 
- D 2 - I - 0x01D255 07:D245: 16        .byte $16   ; 
- D 2 - I - 0x01D256 07:D246: 26        .byte $26   ; 



off_D247_09:
- D 2 - I - 0x01D257 07:D247: 0F        .byte $0F   ; 
- D 2 - I - 0x01D258 07:D248: 0F        .byte $0F   ; 
- D 2 - I - 0x01D259 07:D249: 18        .byte $18   ; 
- D 2 - I - 0x01D25A 07:D24A: 26        .byte $26   ; 



off_D24B_0A:
- - - - - - 0x01D25B 07:D24B: 0F        .byte $0F   ; 
- - - - - - 0x01D25C 07:D24C: 0F        .byte $0F   ; 
- - - - - - 0x01D25D 07:D24D: 14        .byte $14   ; 
- - - - - - 0x01D25E 07:D24E: 26        .byte $26   ; 



off_D24F_0B:
- D 2 - I - 0x01D25F 07:D24F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D260 07:D250: 0F        .byte $0F   ; 
- D 2 - I - 0x01D261 07:D251: 21        .byte $21   ; 
- D 2 - I - 0x01D262 07:D252: 26        .byte $26   ; 



off_D253_0C:
- D 2 - I - 0x01D263 07:D253: 0F        .byte $0F   ; 
- D 2 - I - 0x01D264 07:D254: 0F        .byte $0F   ; 
- D 2 - I - 0x01D265 07:D255: 23        .byte $23   ; 
- D 2 - I - 0x01D266 07:D256: 17        .byte $17   ; 



off_D257_0D:
- - - - - - 0x01D267 07:D257: 0F        .byte $0F   ; 
- - - - - - 0x01D268 07:D258: 0F        .byte $0F   ; 
- - - - - - 0x01D269 07:D259: 29        .byte $29   ; 
- - - - - - 0x01D26A 07:D25A: 17        .byte $17   ; 



off_D25B_0E:
- D 2 - I - 0x01D26B 07:D25B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D26C 07:D25C: 0F        .byte $0F   ; 
- D 2 - I - 0x01D26D 07:D25D: 2C        .byte $2C   ; 
- D 2 - I - 0x01D26E 07:D25E: 17        .byte $17   ; 



off_D25F_0F:
- D 2 - I - 0x01D26F 07:D25F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D270 07:D260: 07        .byte $07   ; 
- D 2 - I - 0x01D271 07:D261: 1A        .byte $1A   ; 
- D 2 - I - 0x01D272 07:D262: 27        .byte $27   ; 



off_D263_10:
- - - - - - 0x01D273 07:D263: 0F        .byte $0F   ; 
- - - - - - 0x01D274 07:D264: 07        .byte $07   ; 
- - - - - - 0x01D275 07:D265: 12        .byte $12   ; 
- - - - - - 0x01D276 07:D266: 27        .byte $27   ; 



off_D267_11:
- D 2 - I - 0x01D277 07:D267: 0F        .byte $0F   ; 
- D 2 - I - 0x01D278 07:D268: 07        .byte $07   ; 
- D 2 - I - 0x01D279 07:D269: 16        .byte $16   ; 
- D 2 - I - 0x01D27A 07:D26A: 27        .byte $27   ; 



off_D26B_12:
- D 2 - I - 0x01D27B 07:D26B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D27C 07:D26C: 0F        .byte $0F   ; 
- D 2 - I - 0x01D27D 07:D26D: 19        .byte $19   ; 
- D 2 - I - 0x01D27E 07:D26E: 27        .byte $27   ; 



off_D26F_13:
- D 2 - I - 0x01D27F 07:D26F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D280 07:D270: 0F        .byte $0F   ; 
- D 2 - I - 0x01D281 07:D271: 3C        .byte $3C   ; 
- D 2 - I - 0x01D282 07:D272: 27        .byte $27   ; 



off_D273_14:
- D 2 - I - 0x01D283 07:D273: 0F        .byte $0F   ; 
- D 2 - I - 0x01D284 07:D274: 0F        .byte $0F   ; 
- D 2 - I - 0x01D285 07:D275: 24        .byte $24   ; 
- D 2 - I - 0x01D286 07:D276: 27        .byte $27   ; 



off_D277_15:
- D 2 - I - 0x01D287 07:D277: 0F        .byte $0F   ; 
- D 2 - I - 0x01D288 07:D278: 30        .byte $30   ; 
- D 2 - I - 0x01D289 07:D279: 12        .byte $12   ; 
- D 2 - I - 0x01D28A 07:D27A: 16        .byte $16   ; 



off_D27B_16:
- D 2 - I - 0x01D28B 07:D27B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D28C 07:D27C: 30        .byte $30   ; 
- D 2 - I - 0x01D28D 07:D27D: 1A        .byte $1A   ; 
- D 2 - I - 0x01D28E 07:D27E: 16        .byte $16   ; 



off_D27F_17:
- D 2 - I - 0x01D28F 07:D27F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D290 07:D280: 0F        .byte $0F   ; 
- D 2 - I - 0x01D291 07:D281: 1A        .byte $1A   ; 
- D 2 - I - 0x01D292 07:D282: 16        .byte $16   ; 



off_D283_18:
- D 2 - I - 0x01D293 07:D283: 0F        .byte $0F   ; 
- D 2 - I - 0x01D294 07:D284: 30        .byte $30   ; 
- D 2 - I - 0x01D295 07:D285: 2C        .byte $2C   ; 
- D 2 - I - 0x01D296 07:D286: 16        .byte $16   ; 



off_D287_19:
- D 2 - I - 0x01D297 07:D287: 0F        .byte $0F   ; 
- D 2 - I - 0x01D298 07:D288: 30        .byte $30   ; 
- D 2 - I - 0x01D299 07:D289: 1A        .byte $1A   ; 
- D 2 - I - 0x01D29A 07:D28A: 12        .byte $12   ; 



off_D28B_1A:
- D 2 - I - 0x01D29B 07:D28B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D29C 07:D28C: 0F        .byte $0F   ; 
- D 2 - I - 0x01D29D 07:D28D: 30        .byte $30   ; 
- D 2 - I - 0x01D29E 07:D28E: 16        .byte $16   ; 



off_D28F_1B:
- D 2 - I - 0x01D29F 07:D28F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2A0 07:D290: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2A1 07:D291: 30        .byte $30   ; 
- D 2 - I - 0x01D2A2 07:D292: 10        .byte $10   ; 



off_D293_1C:
- D 2 - I - 0x01D2A3 07:D293: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2A4 07:D294: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2A5 07:D295: 30        .byte $30   ; 
- D 2 - I - 0x01D2A6 07:D296: 12        .byte $12   ; 



off_D297_1D:
- D 2 - I - 0x01D2A7 07:D297: 0C        .byte $0C   ; 
- D 2 - I - 0x01D2A8 07:D298: 07        .byte $07   ; 
- D 2 - I - 0x01D2A9 07:D299: 30        .byte $30   ; 
- D 2 - I - 0x01D2AA 07:D29A: 26        .byte $26   ; 



off_D29B_1E:
- D 2 - I - 0x01D2AB 07:D29B: 30        .byte $30   ; 
- D 2 - I - 0x01D2AC 07:D29C: 07        .byte $07   ; 
- D 2 - I - 0x01D2AD 07:D29D: 30        .byte $30   ; 
- D 2 - I - 0x01D2AE 07:D29E: 26        .byte $26   ; 



off_D29F_1F:
- D 2 - I - 0x01D2AF 07:D29F: 0C        .byte $0C   ; 
- D 2 - I - 0x01D2B0 07:D2A0: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2B1 07:D2A1: 07        .byte $07   ; 
- D 2 - I - 0x01D2B2 07:D2A2: 26        .byte $26   ; 



off_D2A3_20:
- D 2 - I - 0x01D2B3 07:D2A3: 30        .byte $30   ; 
- D 2 - I - 0x01D2B4 07:D2A4: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2B5 07:D2A5: 07        .byte $07   ; 
- D 2 - I - 0x01D2B6 07:D2A6: 26        .byte $26   ; 



off_D2A7_21:
- D 2 - I - 0x01D2B7 07:D2A7: 0C        .byte $0C   ; 
- D 2 - I - 0x01D2B8 07:D2A8: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2B9 07:D2A9: 30        .byte $30   ; 
- D 2 - I - 0x01D2BA 07:D2AA: 26        .byte $26   ; 



off_D2AB_22:
- D 2 - I - 0x01D2BB 07:D2AB: 30        .byte $30   ; 
- D 2 - I - 0x01D2BC 07:D2AC: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2BD 07:D2AD: 30        .byte $30   ; 
- D 2 - I - 0x01D2BE 07:D2AE: 26        .byte $26   ; 



off_D2AF_23:
- D 2 - I - 0x01D2BF 07:D2AF: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2C0 07:D2B0: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2C1 07:D2B1: 30        .byte $30   ; 
- D 2 - I - 0x01D2C2 07:D2B2: 28        .byte $28   ; 



off_D2B3_24:
- D 2 - I - 0x01D2C3 07:D2B3: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2C4 07:D2B4: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2C5 07:D2B5: 30        .byte $30   ; 
- D 2 - I - 0x01D2C6 07:D2B6: 2C        .byte $2C   ; 



off_D2B7_25:
- D 2 - I - 0x01D2C7 07:D2B7: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2C8 07:D2B8: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2C9 07:D2B9: 30        .byte $30   ; 
- D 2 - I - 0x01D2CA 07:D2BA: 27        .byte $27   ; 



off_D2BB_26:
- D 2 - I - 0x01D2CB 07:D2BB: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2CC 07:D2BC: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2CD 07:D2BD: 1A        .byte $1A   ; 
- D 2 - I - 0x01D2CE 07:D2BE: 27        .byte $27   ; 



off_D2BF_27:
- D 2 - I - 0x01D2CF 07:D2BF: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2D0 07:D2C0: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2D1 07:D2C1: 30        .byte $30   ; 
- D 2 - I - 0x01D2D2 07:D2C2: 26        .byte $26   ; 



off_D2C3_28:
- D 2 - I - 0x01D2D3 07:D2C3: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2D4 07:D2C4: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2D5 07:D2C5: 29        .byte $29   ; 
- D 2 - I - 0x01D2D6 07:D2C6: 26        .byte $26   ; 



off_D2C7_29:
- D 2 - I - 0x01D2D7 07:D2C7: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2D8 07:D2C8: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2D9 07:D2C9: 29        .byte $29   ; 
- D 2 - I - 0x01D2DA 07:D2CA: 30        .byte $30   ; 



off_D2CB_2A:
- D 2 - I - 0x01D2DB 07:D2CB: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2DC 07:D2CC: 0F        .byte $0F   ; 
- D 2 - I - 0x01D2DD 07:D2CD: 30        .byte $30   ; 
- D 2 - I - 0x01D2DE 07:D2CE: 15        .byte $15   ; 



off_D2CF_2B:
- - - - - - 0x01D2DF 07:D2CF: 07        .byte $07   ; 
- - - - - - 0x01D2E0 07:D2D0: 07        .byte $07   ; 
- - - - - - 0x01D2E1 07:D2D1: 37        .byte $37   ; 
- - - - - - 0x01D2E2 07:D2D2: 26        .byte $26   ; 



off_D2D3_2C:
- - - - - - 0x01D2E3 07:D2D3: 07        .byte $07   ; 
- - - - - - 0x01D2E4 07:D2D4: 07        .byte $07   ; 
- - - - - - 0x01D2E5 07:D2D5: 17        .byte $17   ; 
- - - - - - 0x01D2E6 07:D2D6: 26        .byte $26   ; 



off_D2D7_2D:
- - - - - - 0x01D2E7 07:D2D7: 07        .byte $07   ; 
- - - - - - 0x01D2E8 07:D2D8: 07        .byte $07   ; 
- - - - - - 0x01D2E9 07:D2D9: 27        .byte $27   ; 
- - - - - - 0x01D2EA 07:D2DA: 26        .byte $26   ; 



off_D2DB_2E:
- - - - - - 0x01D2EB 07:D2DB: 07        .byte $07   ; 
- - - - - - 0x01D2EC 07:D2DC: 07        .byte $07   ; 
- - - - - - 0x01D2ED 07:D2DD: 30        .byte $30   ; 
- - - - - - 0x01D2EE 07:D2DE: 17        .byte $17   ; 



off_D2DF_2F:
- - - - - - 0x01D2EF 07:D2DF: 07        .byte $07   ; 
- - - - - - 0x01D2F0 07:D2E0: 07        .byte $07   ; 
- - - - - - 0x01D2F1 07:D2E1: 27        .byte $27   ; 
- - - - - - 0x01D2F2 07:D2E2: 17        .byte $17   ; 



off_D2E3_30:
- - - - - - 0x01D2F3 07:D2E3: 07        .byte $07   ; 
- - - - - - 0x01D2F4 07:D2E4: 07        .byte $07   ; 
- - - - - - 0x01D2F5 07:D2E5: 30        .byte $30   ; 
- - - - - - 0x01D2F6 07:D2E6: 27        .byte $27   ; 



off_D2E7_31:
- - - - - - 0x01D2F7 07:D2E7: 07        .byte $07   ; 
- - - - - - 0x01D2F8 07:D2E8: 07        .byte $07   ; 
- - - - - - 0x01D2F9 07:D2E9: 17        .byte $17   ; 
- - - - - - 0x01D2FA 07:D2EA: 27        .byte $27   ; 



off_D2EB_32:
- - - - - - 0x01D2FB 07:D2EB: 07        .byte $07   ; 
- - - - - - 0x01D2FC 07:D2EC: 06        .byte $06   ; 
- - - - - - 0x01D2FD 07:D2ED: 30        .byte $30   ; 
- - - - - - 0x01D2FE 07:D2EE: 27        .byte $27   ; 



off_D2EF_33:
- - - - - - 0x01D2FF 07:D2EF: 07        .byte $07   ; 
- - - - - - 0x01D300 07:D2F0: 07        .byte $07   ; 
- - - - - - 0x01D301 07:D2F1: 17        .byte $17   ; 
- - - - - - 0x01D302 07:D2F2: 27        .byte $27   ; 



off_D2F3_34:
- - - - - - 0x01D303 07:D2F3: 07        .byte $07   ; 
- - - - - - 0x01D304 07:D2F4: 07        .byte $07   ; 
- - - - - - 0x01D305 07:D2F5: 30        .byte $30   ; 
- - - - - - 0x01D306 07:D2F6: 26        .byte $26   ; 



off_D2F7_35:
- - - - - - 0x01D307 07:D2F7: 07        .byte $07   ; 
- - - - - - 0x01D308 07:D2F8: 07        .byte $07   ; 
- - - - - - 0x01D309 07:D2F9: 26        .byte $26   ; 
- - - - - - 0x01D30A 07:D2FA: 27        .byte $27   ; 



tbl_D2FB:
- D 2 - - - 0x01D30B 07:D2FB: 93 D3     .word off_D393_00
- - - - - - 0x01D30D 07:D2FD: 97 D3     .word off_D397_01
- - - - - - 0x01D30F 07:D2FF: 9B D3     .word off_D39B_02
- - - - - - 0x01D311 07:D301: 9F D3     .word off_D39F_03
- D 2 - - - 0x01D313 07:D303: A3 D3     .word off_D3A3_04
- D 2 - - - 0x01D315 07:D305: A7 D3     .word off_D3A7_05
- D 2 - - - 0x01D317 07:D307: AB D3     .word off_D3AB_06
- - - - - - 0x01D319 07:D309: AF D3     .word off_D3AF_07
- - - - - - 0x01D31B 07:D30B: B3 D3     .word off_D3B3_08
- - - - - - 0x01D31D 07:D30D: B7 D3     .word off_D3B7_09
- D 2 - - - 0x01D31F 07:D30F: BB D3     .word off_D3BB_0A
- - - - - - 0x01D321 07:D311: BF D3     .word off_D3BF_0B
- - - - - - 0x01D323 07:D313: C3 D3     .word off_D3C3_0C
- - - - - - 0x01D325 07:D315: C7 D3     .word off_D3C7_0D
- - - - - - 0x01D327 07:D317: CB D3     .word off_D3CB_0E
- D 2 - - - 0x01D329 07:D319: CF D3     .word off_D3CF_0F
- - - - - - 0x01D32B 07:D31B: D3 D3     .word off_D3D3_10
- - - - - - 0x01D32D 07:D31D: D7 D3     .word off_D3D7_11
- - - - - - 0x01D32F 07:D31F: DB D3     .word off_D3DB_12
- - - - - - 0x01D331 07:D321: DF D3     .word off_D3DF_13
- - - - - - 0x01D333 07:D323: E3 D3     .word off_D3E3_14
- D 2 - - - 0x01D335 07:D325: E7 D3     .word off_D3E7_15
- D 2 - - - 0x01D337 07:D327: EB D3     .word off_D3EB_16
- D 2 - - - 0x01D339 07:D329: EF D3     .word off_D3EF_17
- D 2 - - - 0x01D33B 07:D32B: F3 D3     .word off_D3F3_18
- D 2 - - - 0x01D33D 07:D32D: F7 D3     .word off_D3F7_19
- D 2 - - - 0x01D33F 07:D32F: FB D3     .word off_D3FB_1A
- D 2 - - - 0x01D341 07:D331: FF D3     .word off_D3FF_1B
- D 2 - - - 0x01D343 07:D333: 03 D4     .word off_D403_1C
- D 2 - - - 0x01D345 07:D335: 07 D4     .word off_D407_1D
- D 2 - - - 0x01D347 07:D337: 0B D4     .word off_D40B_1E
- D 2 - - - 0x01D349 07:D339: 0F D4     .word off_D40F_1F
- D 2 - - - 0x01D34B 07:D33B: 13 D4     .word off_D413_20
- D 2 - - - 0x01D34D 07:D33D: 17 D4     .word off_D417_21
- D 2 - - - 0x01D34F 07:D33F: 1B D4     .word off_D41B_22
- D 2 - - - 0x01D351 07:D341: 1F D4     .word off_D41F_23
- D 2 - - - 0x01D353 07:D343: 23 D4     .word off_D423_24
- D 2 - - - 0x01D355 07:D345: 27 D4     .word off_D427_25
- D 2 - - - 0x01D357 07:D347: 2B D4     .word off_D42B_26
- D 2 - - - 0x01D359 07:D349: 2F D4     .word off_D42F_27
- D 2 - - - 0x01D35B 07:D34B: 33 D4     .word off_D433_28
- D 2 - - - 0x01D35D 07:D34D: 37 D4     .word off_D437_29
- D 2 - - - 0x01D35F 07:D34F: 3B D4     .word off_D43B_2A
- D 2 - - - 0x01D361 07:D351: 3F D4     .word off_D43F_2B
- D 2 - - - 0x01D363 07:D353: 43 D4     .word off_D443_2C
- - - - - - 0x01D365 07:D355: 47 D4     .word off_D447_2D
- - - - - - 0x01D367 07:D357: 4B D4     .word off_D44B_2E
- - - - - - 0x01D369 07:D359: 4F D4     .word off_D44F_2F
- D 2 - - - 0x01D36B 07:D35B: 53 D4     .word off_D453_30
- - - - - - 0x01D36D 07:D35D: 57 D4     .word off_D457_31
- - - - - - 0x01D36F 07:D35F: 5B D4     .word off_D45B_32
- D 2 - - - 0x01D371 07:D361: 5F D4     .word off_D45F_33
- - - - - - 0x01D373 07:D363: 63 D4     .word off_D463_34
- - - - - - 0x01D375 07:D365: 67 D4     .word off_D467_35
- - - - - - 0x01D377 07:D367: 6B D4     .word off_D46B_36
- - - - - - 0x01D379 07:D369: 6F D4     .word off_D46F_37
- D 2 - - - 0x01D37B 07:D36B: 73 D4     .word off_D473_38
- D 2 - - - 0x01D37D 07:D36D: 77 D4     .word off_D477_39
- D 2 - - - 0x01D37F 07:D36F: 7B D4     .word off_D47B_3A
- D 2 - - - 0x01D381 07:D371: 7F D4     .word off_D47F_3B
- D 2 - - - 0x01D383 07:D373: 83 D4     .word off_D483_3C
- D 2 - - - 0x01D385 07:D375: 87 D4     .word off_D487_3D
- - - - - - 0x01D387 07:D377: 8B D4     .word off_D48B_3E
- - - - - - 0x01D389 07:D379: 8F D4     .word off_D48F_3F
- - - - - - 0x01D38B 07:D37B: 93 D4     .word off_D493_40
- - - - - - 0x01D38D 07:D37D: 97 D4     .word off_D497_41
- D 2 - - - 0x01D38F 07:D37F: 8F D3     .word off_D38F_42
- D 2 - - - 0x01D391 07:D381: 9B D4     .word off_D49B_43
- D 2 - - - 0x01D393 07:D383: 9F D4     .word off_D49F_44
- D 2 - - - 0x01D395 07:D385: A3 D4     .word off_D4A3_45
- D 2 - - - 0x01D397 07:D387: A7 D4     .word off_D4A7_46
- D 2 - - - 0x01D399 07:D389: AB D4     .word off_D4AB_47
- D 2 - - - 0x01D39B 07:D38B: AF D4     .word off_D4AF_48
- - - - - - 0x01D39D 07:D38D: B3 D4     .word off_D4B3_49



off_D38F_42:
- D 2 - I - 0x01D39F 07:D38F: 23 D2     .word off_D223_00
- D 2 - I - 0x01D3A1 07:D391: 23 D2     .word off_D223_01

off_D393_00:
- D 2 - I - 0x01D3A3 07:D393: B7 D4     .word off_D4B7_00
- D 2 - I - 0x01D3A5 07:D395: BB D4     .word off_D4BB_01

off_D397_01:
- - - - - - 0x01D3A7 07:D397: C7 D4     .word off_D4C7_00
- - - - - - 0x01D3A9 07:D399: CB D4     .word off_D4CB_01

off_D39B_02:
- - - - - - 0x01D3AB 07:D39B: CF D4     .word off_D4CF_00
- - - - - - 0x01D3AD 07:D39D: D3 D4     .word off_D4D3_01

off_D39F_03:
- - - - - - 0x01D3AF 07:D39F: D7 D4     .word off_D4D7_00
- - - - - - 0x01D3B1 07:D3A1: DB D4     .word off_D4DB_01

off_D3A3_04:
- D 2 - I - 0x01D3B3 07:D3A3: EF D4     .word off_D4EF_00
- D 2 - I - 0x01D3B5 07:D3A5: F3 D4     .word off_D4F3_01

off_D3A7_05:
- D 2 - I - 0x01D3B7 07:D3A7: DF D4     .word off_D4DF_00
- D 2 - I - 0x01D3B9 07:D3A9: DF D4     .word off_D4DF_01

off_D3AB_06:
- D 2 - I - 0x01D3BB 07:D3AB: E3 D4     .word off_D4E3_00
- D 2 - I - 0x01D3BD 07:D3AD: E3 D4     .word off_D4E3_01

off_D3AF_07:
- - - - - - 0x01D3BF 07:D3AF: E7 D4     .word off_D4E7_00
- - - - - - 0x01D3C1 07:D3B1: E7 D4     .word off_D4E7_01

off_D3B3_08:
- - - - - - 0x01D3C3 07:D3B3: EB D4     .word off_D4EB_00
- - - - - - 0x01D3C5 07:D3B5: EB D4     .word off_D4EB_01

off_D3B7_09:
- - - - - - 0x01D3C7 07:D3B7: F7 D4     .word off_D4F7_00
- - - - - - 0x01D3C9 07:D3B9: FB D4     .word off_D4FB_01

off_D3BB_0A:
- D 2 - I - 0x01D3CB 07:D3BB: FF D4     .word off_D4FF_00
- D 2 - I - 0x01D3CD 07:D3BD: 03 D5     .word off_D503_01

off_D3BF_0B:
- - - - - - 0x01D3CF 07:D3BF: BF D4     .word off_D4BF_00
- - - - - - 0x01D3D1 07:D3C1: BF D4     .word off_D4BF_01

off_D3C3_0C:
- - - - - - 0x01D3D3 07:D3C3: BF D4     .word off_D4BF_00
- - - - - - 0x01D3D5 07:D3C5: C3 D4     .word off_D4C3_01

off_D3C7_0D:
- - - - - - 0x01D3D7 07:D3C7: C3 D4     .word off_D4C3_00
- - - - - - 0x01D3D9 07:D3C9: BF D4     .word off_D4BF_01

off_D3CB_0E:
- - - - - - 0x01D3DB 07:D3CB: C3 D4     .word off_D4C3_00
- - - - - - 0x01D3DD 07:D3CD: C3 D4     .word off_D4C3_01

off_D3CF_0F:
- D 2 - I - 0x01D3DF 07:D3CF: 07 D5     .word off_D507_00
- D 2 - I - 0x01D3E1 07:D3D1: 0B D5     .word off_D50B_01

off_D3D3_10:
- - - - - - 0x01D3E3 07:D3D3: 0F D5     .word off_D50F_00
- - - - - - 0x01D3E5 07:D3D5: 13 D5     .word off_D513_01

off_D3D7_11:
- - - - - - 0x01D3E7 07:D3D7: 0F D5     .word off_D50F_00
- - - - - - 0x01D3E9 07:D3D9: 1F D5     .word off_D51F_01

off_D3DB_12:
- - - - - - 0x01D3EB 07:D3DB: 0F D5     .word off_D50F_00
- - - - - - 0x01D3ED 07:D3DD: 17 D5     .word off_D517_01

off_D3DF_13:
- - - - - - 0x01D3EF 07:D3DF: 0F D5     .word off_D50F_00
- - - - - - 0x01D3F1 07:D3E1: 23 D5     .word off_D523_01

off_D3E3_14:
- - - - - - 0x01D3F3 07:D3E3: 0F D5     .word off_D50F_00
- - - - - - 0x01D3F5 07:D3E5: 1B D5     .word off_D51B_01

off_D3E7_15:
- D 2 - I - 0x01D3F7 07:D3E7: 47 D5     .word off_D547_00
- D 2 - I - 0x01D3F9 07:D3E9: 4B D5     .word off_D54B_01

off_D3EB_16:
- D 2 - I - 0x01D3FB 07:D3EB: 4F D5     .word off_D54F_00
- D 2 - I - 0x01D3FD 07:D3ED: 53 D5     .word off_D553_01

off_D3EF_17:
- D 2 - I - 0x01D3FF 07:D3EF: 57 D5     .word off_D557_00
- D 2 - I - 0x01D401 07:D3F1: 57 D5     .word off_D557_01

off_D3F3_18:
- D 2 - I - 0x01D403 07:D3F3: 57 D5     .word off_D557_00
- D 2 - I - 0x01D405 07:D3F5: 57 D5     .word off_D557_01

off_D3F7_19:
- D 2 - I - 0x01D407 07:D3F7: 5B D5     .word off_D55B_00
- D 2 - I - 0x01D409 07:D3F9: 5F D5     .word off_D55F_01

off_D3FB_1A:
- D 2 - I - 0x01D40B 07:D3FB: 63 D5     .word off_D563_00
- D 2 - I - 0x01D40D 07:D3FD: 67 D5     .word off_D567_01

off_D3FF_1B:
- D 2 - I - 0x01D40F 07:D3FF: 4F D5     .word off_D54F_00
- D 2 - I - 0x01D411 07:D401: 4F D5     .word off_D54F_01

off_D403_1C:
- D 2 - I - 0x01D413 07:D403: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D415 07:D405: 6F D5     .word off_D56F_01

off_D407_1D:
- D 2 - I - 0x01D417 07:D407: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D419 07:D409: 73 D5     .word off_D573_01

off_D40B_1E:
- D 2 - I - 0x01D41B 07:D40B: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D41D 07:D40D: 77 D5     .word off_D577_01

off_D40F_1F:
- D 2 - I - 0x01D41F 07:D40F: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D421 07:D411: 7B D5     .word off_D57B_01

off_D413_20:
- D 2 - I - 0x01D423 07:D413: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D425 07:D415: 7F D5     .word off_D57F_01

off_D417_21:
- D 2 - I - 0x01D427 07:D417: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D429 07:D419: 83 D5     .word off_D583_01

off_D41B_22:
- D 2 - I - 0x01D42B 07:D41B: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D42D 07:D41D: 87 D5     .word off_D587_01

off_D41F_23:
- D 2 - I - 0x01D42F 07:D41F: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D431 07:D421: 8B D5     .word off_D58B_01

off_D423_24:
- D 2 - I - 0x01D433 07:D423: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D435 07:D425: 8F D5     .word off_D58F_01

off_D427_25:
- D 2 - I - 0x01D437 07:D427: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D439 07:D429: 93 D5     .word off_D593_01

off_D42B_26:
- D 2 - I - 0x01D43B 07:D42B: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D43D 07:D42D: 97 D5     .word off_D597_01

off_D42F_27:
- D 2 - I - 0x01D43F 07:D42F: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D441 07:D431: 9B D5     .word off_D59B_01

off_D433_28:
- D 2 - I - 0x01D443 07:D433: 6B D5     .word off_D56B_00
- D 2 - I - 0x01D445 07:D435: 9F D5     .word off_D59F_01

off_D437_29:
- D 2 - I - 0x01D447 07:D437: DF D5     .word off_D5DF_00
- D 2 - I - 0x01D449 07:D439: DF D5     .word off_D5DF_01

off_D43B_2A:
- D 2 - I - 0x01D44B 07:D43B: DF D5     .word off_D5DF_00
- D 2 - I - 0x01D44D 07:D43D: E3 D5     .word off_D5E3_01

off_D43F_2B:
- D 2 - I - 0x01D44F 07:D43F: DF D5     .word off_D5DF_00
- D 2 - I - 0x01D451 07:D441: E7 D5     .word off_D5E7_01

off_D443_2C:
- D 2 - I - 0x01D453 07:D443: DF D5     .word off_D5DF_00
- D 2 - I - 0x01D455 07:D445: EB D5     .word off_D5EB_01

off_D447_2D:
- - - - - - 0x01D457 07:D447: E3 D5     .word off_D5E3_00
- - - - - - 0x01D459 07:D449: DF D5     .word off_D5DF_01

off_D44B_2E:
- - - - - - 0x01D45B 07:D44B: E3 D5     .word off_D5E3_00
- - - - - - 0x01D45D 07:D44D: E3 D5     .word off_D5E3_01

off_D44F_2F:
- - - - - - 0x01D45F 07:D44F: E3 D5     .word off_D5E3_00
- - - - - - 0x01D461 07:D451: E7 D5     .word off_D5E7_01

off_D453_30:
- D 2 - I - 0x01D463 07:D453: E3 D5     .word off_D5E3_00
- D 2 - I - 0x01D465 07:D455: EB D5     .word off_D5EB_01

off_D457_31:
- - - - - - 0x01D467 07:D457: E7 D5     .word off_D5E7_00
- - - - - - 0x01D469 07:D459: DF D5     .word off_D5DF_01

off_D45B_32:
- - - - - - 0x01D46B 07:D45B: E7 D5     .word off_D5E7_00
- - - - - - 0x01D46D 07:D45D: E3 D5     .word off_D5E3_01

off_D45F_33:
- D 2 - I - 0x01D46F 07:D45F: E7 D5     .word off_D5E7_00
- D 2 - I - 0x01D471 07:D461: E7 D5     .word off_D5E7_01

off_D463_34:
- - - - - - 0x01D473 07:D463: E7 D5     .word off_D5E7_00
- - - - - - 0x01D475 07:D465: EB D5     .word off_D5EB_01

off_D467_35:
- - - - - - 0x01D477 07:D467: EB D5     .word off_D5EB_00
- - - - - - 0x01D479 07:D469: DF D5     .word off_D5DF_01

off_D46B_36:
- - - - - - 0x01D47B 07:D46B: EB D5     .word off_D5EB_00
- - - - - - 0x01D47D 07:D46D: E3 D5     .word off_D5E3_01

off_D46F_37:
- - - - - - 0x01D47F 07:D46F: EB D5     .word off_D5EB_00
- - - - - - 0x01D481 07:D471: E7 D5     .word off_D5E7_01

off_D473_38:
- D 2 - I - 0x01D483 07:D473: EB D5     .word off_D5EB_00
- D 2 - I - 0x01D485 07:D475: EB D5     .word off_D5EB_01

off_D477_39:
- D 2 - I - 0x01D487 07:D477: 63 D5     .word off_D563_00
- D 2 - I - 0x01D489 07:D479: 53 D5     .word off_D553_01

off_D47B_3A:
- D 2 - I - 0x01D48B 07:D47B: A3 D5     .word off_D5A3_00
- D 2 - I - 0x01D48D 07:D47D: A7 D5     .word off_D5A7_01
off_D47F_3B:
- D 2 - I - 0x01D48F 07:D47F: AB D5     .word off_D5AB_00
- D 2 - I - 0x01D491 07:D481: AB D5     .word off_D5AB_01

off_D483_3C:
- D 2 - I - 0x01D493 07:D483: AF D5     .word off_D5AF_00
- D 2 - I - 0x01D495 07:D485: B3 D5     .word off_D5B3_01

off_D487_3D:
- D 2 - I - 0x01D497 07:D487: 27 D5     .word off_D527_00
- D 2 - I - 0x01D499 07:D489: 33 D5     .word off_D533_01

off_D48B_3E:
- - - - - - 0x01D49B 07:D48B: 27 D5     .word off_D527_00
- - - - - - 0x01D49D 07:D48D: 37 D5     .word off_D537_01

off_D48F_3F:
- - - - - - 0x01D49F 07:D48F: 2B D5     .word off_D52B_00
- - - - - - 0x01D4A1 07:D491: 3B D5     .word off_D53B_01

off_D493_40:
- - - - - - 0x01D4A3 07:D493: 2B D5     .word off_D52B_00
- - - - - - 0x01D4A5 07:D495: 3F D5     .word off_D53F_01

off_D497_41:
- - - - - - 0x01D4A7 07:D497: 2F D5     .word off_D52F_00
- - - - - - 0x01D4A9 07:D499: 43 D5     .word off_D543_01

off_D49B_43:
- D 2 - I - 0x01D4AB 07:D49B: BF D5     .word off_D5BF_00
- D 2 - I - 0x01D4AD 07:D49D: C3 D5     .word off_D5C3_01

off_D49F_44:
- D 2 - I - 0x01D4AF 07:D49F: B7 D5     .word off_D5B7_00
- D 2 - I - 0x01D4B1 07:D4A1: BB D5     .word off_D5BB_01

off_D4A3_45:
- D 2 - I - 0x01D4B3 07:D4A3: B7 D5     .word off_D5B7_00
- D 2 - I - 0x01D4B5 07:D4A5: C7 D5     .word off_D5C7_01

off_D4A7_46:
- D 2 - I - 0x01D4B7 07:D4A7: B7 D5     .word off_D5B7_00
- D 2 - I - 0x01D4B9 07:D4A9: CB D5     .word off_D5CB_01

off_D4AB_47:
- D 2 - I - 0x01D4BB 07:D4AB: B7 D5     .word off_D5B7_00
- D 2 - I - 0x01D4BD 07:D4AD: CF D5     .word off_D5CF_01

off_D4AF_48:
- D 2 - I - 0x01D4BF 07:D4AF: B7 D5     .word off_D5B7_00
- D 2 - I - 0x01D4C1 07:D4B1: D3 D5     .word off_D5D3_01

off_D4B3_49:
- - - - - - 0x01D4C3 07:D4B3: D7 D5     .word off_D5D7_00
- - - - - - 0x01D4C5 07:D4B5: DB D5     .word off_D5DB_01



off_D4B7_00:
- D 2 - I - 0x01D4C7 07:D4B7: 2A        .byte $2A   ; 
- D 2 - I - 0x01D4C8 07:D4B8: 30        .byte $30   ; 
- D 2 - I - 0x01D4C9 07:D4B9: 0F        .byte $0F   ; 
- D 2 - I - 0x01D4CA 07:D4BA: 1B        .byte $1B   ; 
off_D4BB_01:
- D 2 - I - 0x01D4CB 07:D4BB: 2A        .byte $2A   ; 
- D 2 - I - 0x01D4CC 07:D4BC: 30        .byte $30   ; 
- D 2 - I - 0x01D4CD 07:D4BD: 3A        .byte $3A   ; 
- D 2 - I - 0x01D4CE 07:D4BE: 1B        .byte $1B   ; 
off_D4BF_00:
off_D4BF_01:
- - - - - - 0x01D4CF 07:D4BF: 2A        .byte $2A   ; 
- - - - - - 0x01D4D0 07:D4C0: 30        .byte $30   ; 
- - - - - - 0x01D4D1 07:D4C1: 0F        .byte $0F   ; 
- - - - - - 0x01D4D2 07:D4C2: 26        .byte $26   ; 
off_D4C3_01:
off_D4C3_00:
- - - - - - 0x01D4D3 07:D4C3: 2A        .byte $2A   ; 
- - - - - - 0x01D4D4 07:D4C4: 30        .byte $30   ; 
- - - - - - 0x01D4D5 07:D4C5: 0F        .byte $0F   ; 
- - - - - - 0x01D4D6 07:D4C6: 17        .byte $17   ; 
off_D4C7_00:
- - - - - - 0x01D4D7 07:D4C7: 2A        .byte $2A   ; 
- - - - - - 0x01D4D8 07:D4C8: 30        .byte $30   ; 
- - - - - - 0x01D4D9 07:D4C9: 0F        .byte $0F   ; 
- - - - - - 0x01D4DA 07:D4CA: 3A        .byte $3A   ; 
off_D4CB_01:
- - - - - - 0x01D4DB 07:D4CB: 2A        .byte $2A   ; 
- - - - - - 0x01D4DC 07:D4CC: 30        .byte $30   ; 
- - - - - - 0x01D4DD 07:D4CD: 1B        .byte $1B   ; 
- - - - - - 0x01D4DE 07:D4CE: 3A        .byte $3A   ; 
off_D4CF_00:
- - - - - - 0x01D4DF 07:D4CF: 27        .byte $27   ; 
- - - - - - 0x01D4E0 07:D4D0: 37        .byte $37   ; 
- - - - - - 0x01D4E1 07:D4D1: 0F        .byte $0F   ; 
- - - - - - 0x01D4E2 07:D4D2: 17        .byte $17   ; 
off_D4D3_01:
- - - - - - 0x01D4E3 07:D4D3: 27        .byte $27   ; 
- - - - - - 0x01D4E4 07:D4D4: 37        .byte $37   ; 
- - - - - - 0x01D4E5 07:D4D5: 18        .byte $18   ; 
- - - - - - 0x01D4E6 07:D4D6: 17        .byte $17   ; 
off_D4D7_00:
- - - - - - 0x01D4E7 07:D4D7: 18        .byte $18   ; 
- - - - - - 0x01D4E8 07:D4D8: 37        .byte $37   ; 
- - - - - - 0x01D4E9 07:D4D9: 0F        .byte $0F   ; 
- - - - - - 0x01D4EA 07:D4DA: 17        .byte $17   ; 
off_D4DB_01:
- - - - - - 0x01D4EB 07:D4DB: 18        .byte $18   ; 
- - - - - - 0x01D4EC 07:D4DC: 37        .byte $37   ; 
- - - - - - 0x01D4ED 07:D4DD: 27        .byte $27   ; 
- - - - - - 0x01D4EE 07:D4DE: 17        .byte $17   ; 
off_D4DF_00:
off_D4DF_01:
- D 2 - I - 0x01D4EF 07:D4DF: 30        .byte $30   ; 
- D 2 - I - 0x01D4F0 07:D4E0: 0F        .byte $0F   ; 
- D 2 - I - 0x01D4F1 07:D4E1: 30        .byte $30   ; 
- D 2 - I - 0x01D4F2 07:D4E2: 30        .byte $30   ; 
off_D4E3_00:
off_D4E3_01:
- D 2 - I - 0x01D4F3 07:D4E3: 20        .byte $20   ; 
- D 2 - I - 0x01D4F4 07:D4E4: 30        .byte $30   ; 
- D 2 - I - 0x01D4F5 07:D4E5: 10        .byte $10   ; 
- D 2 - I - 0x01D4F6 07:D4E6: 0F        .byte $0F   ; 
off_D4E7_00:
off_D4E7_01:
- - - - - - 0x01D4F7 07:D4E7: 1A        .byte $1A   ; 
- - - - - - 0x01D4F8 07:D4E8: 20        .byte $20   ; 
- D 2 - I - 0x01D4F9 07:D4E9: 2A        .byte $2A   ; 
- D 2 - I - 0x01D4FA 07:D4EA: 0B        .byte $0B   ; 
off_D4EB_00:
off_D4EB_01:
- - - - - - 0x01D4FB 07:D4EB: 0F        .byte $0F   ; 
- - - - - - 0x01D4FC 07:D4EC: 30        .byte $30   ; 
- - - - - - 0x01D4FD 07:D4ED: 0F        .byte $0F   ; 
- - - - - - 0x01D4FE 07:D4EE: 0F        .byte $0F   ; 
off_D4EF_00:
- D 2 - I - 0x01D4FF 07:D4EF: 37        .byte $37   ; 
- D 2 - I - 0x01D500 07:D4F0: 30        .byte $30   ; 
- D 2 - I - 0x01D501 07:D4F1: 0F        .byte $0F   ; 
- D 2 - I - 0x01D502 07:D4F2: 27        .byte $27   ; 
off_D4F3_01:
- D 2 - I - 0x01D503 07:D4F3: 37        .byte $37   ; 
- D 2 - I - 0x01D504 07:D4F4: 0F        .byte $0F   ; 
- D 2 - I - 0x01D505 07:D4F5: 0F        .byte $0F   ; 
- D 2 - I - 0x01D506 07:D4F6: 0F        .byte $0F   ; 
off_D4F7_00:
- - - - - - 0x01D507 07:D4F7: 0F        .byte $0F   ; 
- - - - - - 0x01D508 07:D4F8: 30        .byte $30   ; 
- - - - - - 0x01D509 07:D4F9: 21        .byte $21   ; 
- - - - - - 0x01D50A 07:D4FA: 11        .byte $11   ; 
off_D4FB_01:
- - - - - - 0x01D50B 07:D4FB: 0F        .byte $0F   ; 
- - - - - - 0x01D50C 07:D4FC: 30        .byte $30   ; 
- - - - - - 0x01D50D 07:D4FD: 2A        .byte $2A   ; 
- - - - - - 0x01D50E 07:D4FE: 1B        .byte $1B   ; 
off_D4FF_00:
- D 2 - I - 0x01D50F 07:D4FF: 0F        .byte $0F   ; 
- D 2 - I - 0x01D510 07:D500: 30        .byte $30   ; 
- D 2 - I - 0x01D511 07:D501: 00        .byte $00   ; 
- D 2 - I - 0x01D512 07:D502: 27        .byte $27   ; 
off_D503_01:
- D 2 - I - 0x01D513 07:D503: 0F        .byte $0F   ; 
- D 2 - I - 0x01D514 07:D504: 30        .byte $30   ; 
- D 2 - I - 0x01D515 07:D505: 2B        .byte $2B   ; 
- D 2 - I - 0x01D516 07:D506: 26        .byte $26   ; 
off_D507_00:
- D 2 - I - 0x01D517 07:D507: 00        .byte $00   ; 
- D 2 - I - 0x01D518 07:D508: 37        .byte $37   ; 
- D 2 - I - 0x01D519 07:D509: 0F        .byte $0F   ; 
- D 2 - I - 0x01D51A 07:D50A: 27        .byte $27   ; 
off_D50B_01:
- D 2 - I - 0x01D51B 07:D50B: 00        .byte $00   ; 
- D 2 - I - 0x01D51C 07:D50C: 30        .byte $30   ; 
- D 2 - I - 0x01D51D 07:D50D: 0F        .byte $0F   ; 
- D 2 - I - 0x01D51E 07:D50E: 30        .byte $30   ; 
off_D50F_00:
- - - - - - 0x01D51F 07:D50F: 0F        .byte $0F   ; 
- - - - - - 0x01D520 07:D510: 30        .byte $30   ; 
- - - - - - 0x01D521 07:D511: 21        .byte $21   ; 
- - - - - - 0x01D522 07:D512: 11        .byte $11   ; 
off_D513_01:
- - - - - - 0x01D523 07:D513: 0F        .byte $0F   ; 
- - - - - - 0x01D524 07:D514: 30        .byte $30   ; 
- - - - - - 0x01D525 07:D515: 2A        .byte $2A   ; 
- - - - - - 0x01D526 07:D516: 1B        .byte $1B   ; 
off_D517_01:
- - - - - - 0x01D527 07:D517: 0F        .byte $0F   ; 
- - - - - - 0x01D528 07:D518: 30        .byte $30   ; 
- - - - - - 0x01D529 07:D519: 27        .byte $27   ; 
- - - - - - 0x01D52A 07:D51A: 17        .byte $17   ; 
off_D51B_01:
- - - - - - 0x01D52B 07:D51B: 0F        .byte $0F   ; 
- - - - - - 0x01D52C 07:D51C: 30        .byte $30   ; 
- - - - - - 0x01D52D 07:D51D: 37        .byte $37   ; 
- - - - - - 0x01D52E 07:D51E: 27        .byte $27   ; 
off_D51F_01:
- - - - - - 0x01D52F 07:D51F: 0F        .byte $0F   ; 
- - - - - - 0x01D530 07:D520: 30        .byte $30   ; 
- - - - - - 0x01D531 07:D521: 2A        .byte $2A   ; 
- - - - - - 0x01D532 07:D522: 3A        .byte $3A   ; 
off_D523_01:
- - - - - - 0x01D533 07:D523: 0F        .byte $0F   ; 
- - - - - - 0x01D534 07:D524: 30        .byte $30   ; 
- - - - - - 0x01D535 07:D525: 18        .byte $18   ; 
- - - - - - 0x01D536 07:D526: 17        .byte $17   ; 
off_D527_00:
- D 2 - I - 0x01D537 07:D527: 0F        .byte $0F   ; 
- D 2 - I - 0x01D538 07:D528: 30        .byte $30   ; 
- D 2 - I - 0x01D539 07:D529: 21        .byte $21   ; 
- D 2 - I - 0x01D53A 07:D52A: 11        .byte $11   ; 
off_D52B_00:
- - - - - - 0x01D53B 07:D52B: 0F        .byte $0F   ; 
- - - - - - 0x01D53C 07:D52C: 30        .byte $30   ; 
- - - - - - 0x01D53D 07:D52D: 2A        .byte $2A   ; 
- - - - - - 0x01D53E 07:D52E: 1A        .byte $1A   ; 
off_D52F_00:
- - - - - - 0x01D53F 07:D52F: 0F        .byte $0F   ; 
- - - - - - 0x01D540 07:D530: 30        .byte $30   ; 
- - - - - - 0x01D541 07:D531: 28        .byte $28   ; 
- - - - - - 0x01D542 07:D532: 18        .byte $18   ; 
off_D533_01:
- D 2 - I - 0x01D543 07:D533: 0F        .byte $0F   ; 
- D 2 - I - 0x01D544 07:D534: 30        .byte $30   ; 
- D 2 - I - 0x01D545 07:D535: 2A        .byte $2A   ; 
- D 2 - I - 0x01D546 07:D536: 1B        .byte $1B   ; 
off_D537_01:
- - - - - - 0x01D547 07:D537: 0F        .byte $0F   ; 
- - - - - - 0x01D548 07:D538: 30        .byte $30   ; 
- - - - - - 0x01D549 07:D539: 3A        .byte $3A   ; 
- - - - - - 0x01D54A 07:D53A: 2A        .byte $2A   ; 
off_D53B_01:
- - - - - - 0x01D54B 07:D53B: 0F        .byte $0F   ; 
- - - - - - 0x01D54C 07:D53C: 30        .byte $30   ; 
- - - - - - 0x01D54D 07:D53D: 27        .byte $27   ; 
- - - - - - 0x01D54E 07:D53E: 17        .byte $17   ; 
off_D53F_01:
- - - - - - 0x01D54F 07:D53F: 0F        .byte $0F   ; 
- - - - - - 0x01D550 07:D540: 17        .byte $17   ; 
- - - - - - 0x01D551 07:D541: 18        .byte $18   ; 
- - - - - - 0x01D552 07:D542: 17        .byte $17   ; 
off_D543_01:
- - - - - - 0x01D553 07:D543: 0F        .byte $0F   ; 
- - - - - - 0x01D554 07:D544: 30        .byte $30   ; 
- - - - - - 0x01D555 07:D545: 37        .byte $37   ; 
- - - - - - 0x01D556 07:D546: 27        .byte $27   ; 
off_D547_00:
- D 2 - I - 0x01D557 07:D547: 0F        .byte $0F   ; 
- D 2 - I - 0x01D558 07:D548: 30        .byte $30   ; 
- D 2 - I - 0x01D559 07:D549: 0C        .byte $0C   ; 
- D 2 - I - 0x01D55A 07:D54A: 0F        .byte $0F   ; 
off_D54B_01:
- D 2 - I - 0x01D55B 07:D54B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D55C 07:D54C: 30        .byte $30   ; 
- D 2 - I - 0x01D55D 07:D54D: 2A        .byte $2A   ; 
- D 2 - I - 0x01D55E 07:D54E: 0C        .byte $0C   ; 
off_D54F_00:
off_D54F_01:
- D 2 - I - 0x01D55F 07:D54F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D560 07:D550: 30        .byte $30   ; 
- D 2 - I - 0x01D561 07:D551: 0C        .byte $0C   ; 
- D 2 - I - 0x01D562 07:D552: 00        .byte $00   ; 
off_D553_01:
- D 2 - I - 0x01D563 07:D553: 0F        .byte $0F   ; 
- D 2 - I - 0x01D564 07:D554: 1C        .byte $1C   ; 
- D 2 - I - 0x01D565 07:D555: 0C        .byte $0C   ; 
- D 2 - I - 0x01D566 07:D556: 0F        .byte $0F   ; 
off_D557_00:
off_D557_01:
- D 2 - I - 0x01D567 07:D557: 00        .byte $00   ; 
- D 2 - I - 0x01D568 07:D558: 30        .byte $30   ; 
- D 2 - I - 0x01D569 07:D559: 0C        .byte $0C   ; 
- D 2 - I - 0x01D56A 07:D55A: 16        .byte $16   ; 
off_D55B_00:
- D 2 - I - 0x01D56B 07:D55B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D56C 07:D55C: 30        .byte $30   ; 
- D 2 - I - 0x01D56D 07:D55D: 2A        .byte $2A   ; 
- D 2 - I - 0x01D56E 07:D55E: 26        .byte $26   ; 
off_D55F_01:
- D 2 - I - 0x01D56F 07:D55F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D570 07:D560: 30        .byte $30   ; 
- D 2 - I - 0x01D571 07:D561: 2A        .byte $2A   ; 
- D 2 - I - 0x01D572 07:D562: 0C        .byte $0C   ; 
off_D563_00:
- D 2 - I - 0x01D573 07:D563: 0F        .byte $0F   ; 
- D 2 - I - 0x01D574 07:D564: 30        .byte $30   ; 
- D 2 - I - 0x01D575 07:D565: 0C        .byte $0C   ; 
- D 2 - I - 0x01D576 07:D566: 0F        .byte $0F   ; 
off_D567_01:
- D 2 - I - 0x01D577 07:D567: 0F        .byte $0F   ; 
- D 2 - I - 0x01D578 07:D568: 30        .byte $30   ; 
- D 2 - I - 0x01D579 07:D569: 0C        .byte $0C   ; 
- D 2 - I - 0x01D57A 07:D56A: 26        .byte $26   ; 
off_D56B_00:
- D 2 - I - 0x01D57B 07:D56B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D57C 07:D56C: 30        .byte $30   ; 
- D 2 - I - 0x01D57D 07:D56D: 0C        .byte $0C   ; 
- D 2 - I - 0x01D57E 07:D56E: 27        .byte $27   ; 
off_D56F_01:
- D 2 - I - 0x01D57F 07:D56F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D580 07:D570: 30        .byte $30   ; 
- D 2 - I - 0x01D581 07:D571: 26        .byte $26   ; 
- D 2 - I - 0x01D582 07:D572: 16        .byte $16   ; 
off_D573_01:
- D 2 - I - 0x01D583 07:D573: 0F        .byte $0F   ; 
- D 2 - I - 0x01D584 07:D574: 30        .byte $30   ; 
- D 2 - I - 0x01D585 07:D575: 26        .byte $26   ; 
- D 2 - I - 0x01D586 07:D576: 2A        .byte $2A   ; 
off_D577_01:
- D 2 - I - 0x01D587 07:D577: 0F        .byte $0F   ; 
- D 2 - I - 0x01D588 07:D578: 30        .byte $30   ; 
- D 2 - I - 0x01D589 07:D579: 27        .byte $27   ; 
- D 2 - I - 0x01D58A 07:D57A: 15        .byte $15   ; 
off_D57B_01:
- D 2 - I - 0x01D58B 07:D57B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D58C 07:D57C: 30        .byte $30   ; 
- D 2 - I - 0x01D58D 07:D57D: 26        .byte $26   ; 
- D 2 - I - 0x01D58E 07:D57E: 2A        .byte $2A   ; 
off_D57F_01:
- D 2 - I - 0x01D58F 07:D57F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D590 07:D580: 30        .byte $30   ; 
- D 2 - I - 0x01D591 07:D581: 26        .byte $26   ; 
- D 2 - I - 0x01D592 07:D582: 16        .byte $16   ; 
off_D583_01:
- D 2 - I - 0x01D593 07:D583: 0F        .byte $0F   ; 
- D 2 - I - 0x01D594 07:D584: 30        .byte $30   ; 
- D 2 - I - 0x01D595 07:D585: 16        .byte $16   ; 
- D 2 - I - 0x01D596 07:D586: 1A        .byte $1A   ; 
off_D587_01:
- D 2 - I - 0x01D597 07:D587: 0F        .byte $0F   ; 
- D 2 - I - 0x01D598 07:D588: 30        .byte $30   ; 
- D 2 - I - 0x01D599 07:D589: 27        .byte $27   ; 
- D 2 - I - 0x01D59A 07:D58A: 16        .byte $16   ; 
off_D58B_01:
- D 2 - I - 0x01D59B 07:D58B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D59C 07:D58C: 30        .byte $30   ; 
- D 2 - I - 0x01D59D 07:D58D: 37        .byte $37   ; 
- D 2 - I - 0x01D59E 07:D58E: 29        .byte $29   ; 
off_D58F_01:
- D 2 - I - 0x01D59F 07:D58F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5A0 07:D590: 30        .byte $30   ; 
- D 2 - I - 0x01D5A1 07:D591: 27        .byte $27   ; 
- D 2 - I - 0x01D5A2 07:D592: 06        .byte $06   ; 
off_D593_01:
- D 2 - I - 0x01D5A3 07:D593: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5A4 07:D594: 30        .byte $30   ; 
- D 2 - I - 0x01D5A5 07:D595: 27        .byte $27   ; 
- D 2 - I - 0x01D5A6 07:D596: 16        .byte $16   ; 
off_D597_01:
- D 2 - I - 0x01D5A7 07:D597: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5A8 07:D598: 30        .byte $30   ; 
- D 2 - I - 0x01D5A9 07:D599: 27        .byte $27   ; 
- D 2 - I - 0x01D5AA 07:D59A: 16        .byte $16   ; 
off_D59B_01:
- D 2 - I - 0x01D5AB 07:D59B: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5AC 07:D59C: 30        .byte $30   ; 
- D 2 - I - 0x01D5AD 07:D59D: 27        .byte $27   ; 
- D 2 - I - 0x01D5AE 07:D59E: 17        .byte $17   ; 
off_D59F_01:
- D 2 - I - 0x01D5AF 07:D59F: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5B0 07:D5A0: 30        .byte $30   ; 
- D 2 - I - 0x01D5B1 07:D5A1: 27        .byte $27   ; 
- D 2 - I - 0x01D5B2 07:D5A2: 06        .byte $06   ; 
off_D5A3_00:
- D 2 - I - 0x01D5B3 07:D5A3: 11        .byte $11   ; 
- D 2 - I - 0x01D5B4 07:D5A4: 30        .byte $30   ; 
- D 2 - I - 0x01D5B5 07:D5A5: 22        .byte $22   ; 
- D 2 - I - 0x01D5B6 07:D5A6: 0F        .byte $0F   ; 
off_D5A7_01:
- D 2 - I - 0x01D5B7 07:D5A7: 11        .byte $11   ; 
- D 2 - I - 0x01D5B8 07:D5A8: 30        .byte $30   ; 
- D 2 - I - 0x01D5B9 07:D5A9: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5BA 07:D5AA: 15        .byte $15   ; 
off_D5AB_00:
off_D5AB_01:
- D 2 - I - 0x01D5BB 07:D5AB: 11        .byte $11   ; 
- D 2 - I - 0x01D5BC 07:D5AC: 30        .byte $30   ; 
- D 2 - I - 0x01D5BD 07:D5AD: 11        .byte $11   ; 
- D 2 - I - 0x01D5BE 07:D5AE: 0F        .byte $0F   ; 
off_D5AF_00:
- D 2 - I - 0x01D5BF 07:D5AF: 20        .byte $20   ; 
- D 2 - I - 0x01D5C0 07:D5B0: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5C1 07:D5B1: 10        .byte $10   ; 
- D 2 - I - 0x01D5C2 07:D5B2: 00        .byte $00   ; 
off_D5B3_01:
- D 2 - I - 0x01D5C3 07:D5B3: 20        .byte $20   ; 
- D 2 - I - 0x01D5C4 07:D5B4: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5C5 07:D5B5: 31        .byte $31   ; 
- D 2 - I - 0x01D5C6 07:D5B6: 21        .byte $21   ; 
off_D5B7_00:
- D 2 - I - 0x01D5C7 07:D5B7: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5C8 07:D5B8: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5C9 07:D5B9: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5CA 07:D5BA: 0C        .byte $0C   ; 
off_D5BB_01:
- D 2 - I - 0x01D5CB 07:D5BB: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5CC 07:D5BC: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5CD 07:D5BD: 01        .byte $01   ; 
- D 2 - I - 0x01D5CE 07:D5BE: 01        .byte $01   ; 
off_D5BF_00:
- D 2 - I - 0x01D5CF 07:D5BF: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5D0 07:D5C0: 00        .byte $00   ; 
- D 2 - I - 0x01D5D1 07:D5C1: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5D2 07:D5C2: 0C        .byte $0C   ; 
off_D5C3_01:
- D 2 - I - 0x01D5D3 07:D5C3: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5D4 07:D5C4: 30        .byte $30   ; 
- D 2 - I - 0x01D5D5 07:D5C5: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5D6 07:D5C6: 0C        .byte $0C   ; 
off_D5C7_01:
- D 2 - I - 0x01D5D7 07:D5C7: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5D8 07:D5C8: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5D9 07:D5C9: 11        .byte $11   ; 
- D 2 - I - 0x01D5DA 07:D5CA: 11        .byte $11   ; 
off_D5CB_01:
- D 2 - I - 0x01D5DB 07:D5CB: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5DC 07:D5CC: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5DD 07:D5CD: 21        .byte $21   ; 
- D 2 - I - 0x01D5DE 07:D5CE: 21        .byte $21   ; 
off_D5CF_01:
- D 2 - I - 0x01D5DF 07:D5CF: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5E0 07:D5D0: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5E1 07:D5D1: 31        .byte $31   ; 
- D 2 - I - 0x01D5E2 07:D5D2: 31        .byte $31   ; 
off_D5D3_01:
- D 2 - I - 0x01D5E3 07:D5D3: 0C        .byte $0C   ; 
- D 2 - I - 0x01D5E4 07:D5D4: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5E5 07:D5D5: 30        .byte $30   ; 
- D 2 - I - 0x01D5E6 07:D5D6: 30        .byte $30   ; 
off_D5D7_00:
- - - - - - 0x01D5E7 07:D5D7: 07        .byte $07   ; 
- - - - - - 0x01D5E8 07:D5D8: 30        .byte $30   ; 
- - - - - - 0x01D5E9 07:D5D9: 0F        .byte $0F   ; 
- - - - - - 0x01D5EA 07:D5DA: 0F        .byte $0F   ; 
off_D5DB_01:
- - - - - - 0x01D5EB 07:D5DB: 07        .byte $07   ; 
- - - - - - 0x01D5EC 07:D5DC: 37        .byte $37   ; 
- - - - - - 0x01D5ED 07:D5DD: 27        .byte $27   ; 
- - - - - - 0x01D5EE 07:D5DE: 17        .byte $17   ; 
off_D5DF_00:
off_D5DF_01:
- D 2 - I - 0x01D5EF 07:D5DF: 2A        .byte $2A   ; 
- D 2 - I - 0x01D5F0 07:D5E0: 30        .byte $30   ; 
- D 2 - I - 0x01D5F1 07:D5E1: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5F2 07:D5E2: 26        .byte $26   ; 
off_D5E3_01:
off_D5E3_00:
- D 2 - I - 0x01D5F3 07:D5E3: 2A        .byte $2A   ; 
- D 2 - I - 0x01D5F4 07:D5E4: 30        .byte $30   ; 
- D 2 - I - 0x01D5F5 07:D5E5: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5F6 07:D5E6: 17        .byte $17   ; 
off_D5E7_01:
off_D5E7_00:
- D 2 - I - 0x01D5F7 07:D5E7: 2A        .byte $2A   ; 
- D 2 - I - 0x01D5F8 07:D5E8: 30        .byte $30   ; 
- D 2 - I - 0x01D5F9 07:D5E9: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5FA 07:D5EA: 27        .byte $27   ; 
off_D5EB_01:
off_D5EB_00:
- D 2 - I - 0x01D5FB 07:D5EB: 2A        .byte $2A   ; 
- D 2 - I - 0x01D5FC 07:D5EC: 30        .byte $30   ; 
- D 2 - I - 0x01D5FD 07:D5ED: 0F        .byte $0F   ; 
- D 2 - I - 0x01D5FE 07:D5EE: 27        .byte $27   ; 



.export sub_0x01D5FF
sub_0x01D5FF:
C - - - - - 0x01D5FF 07:D5EF: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01D602 07:D5F2: 29 7F     AND #$7F
C - - - - - 0x01D604 07:D5F4: C9 01     CMP #$01
C - - - - - 0x01D606 07:D5F6: F0 1E     BEQ bra_D616_RTS
C - - - - - 0x01D608 07:D5F8: A0 00     LDY #$00
C - - - - - 0x01D60A 07:D5FA: 2C 0D 05  BIT ram_таймер_мокрого_мяча
C - - - - - 0x01D60D 07:D5FD: 30 04     BMI bra_D603
C - - - - - 0x01D60F 07:D5FF: C8        INY
C - - - - - 0x01D610 07:D600: 70 01     BVS bra_D603
C - - - - - 0x01D612 07:D602: C8        INY
bra_D603:
C - - - - - 0x01D613 07:D603: B9 17 D6  LDA tbl_D617,Y
C - - - - - 0x01D616 07:D606: CD AE 05  CMP ram_номер_палитры_спрайтов
C - - - - - 0x01D619 07:D609: F0 0B     BEQ bra_D616_RTS
C - - - - - 0x01D61B 07:D60B: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x01D61E 07:D60E: 20 D5 D0  JSR sub_D0D5
C - - - - - 0x01D621 07:D611: A9 3F     LDA #$3F
C - - - - - 0x01D623 07:D613: 8D D9 06  STA ram_байт_2006_hi_палитра
bra_D616_RTS:
C - - - - - 0x01D626 07:D616: 60        RTS

tbl_D617:
- D 2 - - - 0x01D627 07:D617: 03        .byte $03   ; 
- D 2 - - - 0x01D628 07:D618: 02        .byte $02   ; 
- D 2 - - - 0x01D629 07:D619: 01        .byte $01   ; 



loc_D61A:
C D 2 - - - 0x01D62A 07:D61A: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01D62C 07:D61C: C5 5A     CMP ram_копия_подтипа_экрана
C - - - - - 0x01D62E 07:D61E: D0 08     BNE bra_D628_RTS
C - - - - - 0x01D630 07:D620: C9 02     CMP #$02
C - - - - - 0x01D632 07:D622: F0 05     BEQ bra_D629
C - - - - - 0x01D634 07:D624: C9 06     CMP #$06
C - - - - - 0x01D636 07:D626: F0 01     BEQ bra_D629
bra_D628_RTS:
C - - - - - 0x01D638 07:D628: 60        RTS
bra_D629:
C - - - - - 0x01D639 07:D629: A5 4C     LDA ram_для_2000
C - - - - - 0x01D63B 07:D62B: 29 FB     AND #$FB
C - - - - - 0x01D63D 07:D62D: 85 4C     STA ram_для_2000
C - - - - - 0x01D63F 07:D62F: 8D 00 20  STA $2000
C - - - - - 0x01D642 07:D632: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01D645 07:D635: 29 20     AND #$20
C - - - - - 0x01D647 07:D637: D0 03     BNE bra_D63C
C - - - - - 0x01D649 07:D639: 4C 7C D6  JMP loc_D67C
bra_D63C:
C - - - - - 0x01D64C 07:D63C: AD 02 20  LDA $2002
C - - - - - 0x01D64F 07:D63F: A9 2A     LDA #$2A
C - - - - - 0x01D651 07:D641: 8D 06 20  STA $2006
C - - - - - 0x01D654 07:D644: A9 61     LDA #$61
C - - - - - 0x01D656 07:D646: 8D 06 20  STA $2006
C - - - - - 0x01D659 07:D649: AD 96 06  LDA ram_буфер_атрибутов
C - - - - - 0x01D65C 07:D64C: 8D 07 20  STA $2007
C - - - - - 0x01D65F 07:D64F: A2 01     LDX #$01
C - - - - - 0x01D661 07:D651: AD 02 20  LDA $2002
C - - - - - 0x01D664 07:D654: A9 2A     LDA #$2A
C - - - - - 0x01D666 07:D656: 8D 06 20  STA $2006
C - - - - - 0x01D669 07:D659: A9 81     LDA #$81
C - - - - - 0x01D66B 07:D65B: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D66E 07:D65E: A9 07     LDA #$07
C - - - - - 0x01D670 07:D660: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D673 07:D663: A9 27     LDA #$27
C - - - - - 0x01D675 07:D665: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D678 07:D668: A9 47     LDA #$47
C - - - - - 0x01D67A 07:D66A: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D67D 07:D66D: A9 67     LDA #$67
C - - - - - 0x01D67F 07:D66F: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D682 07:D672: A9 87     LDA #$87
C - - - - - 0x01D684 07:D674: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D687 07:D677: A9 00     LDA #$00
C - - - - - 0x01D689 07:D679: 8D 06 20  STA $2006
loc_D67C:
C D 2 - - - 0x01D68C 07:D67C: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01D68F 07:D67F: 29 10     AND #$10
C - - - - - 0x01D691 07:D681: D0 03     BNE bra_D686
C - - - - - 0x01D693 07:D683: 4C C6 D6  JMP loc_D6C6
bra_D686:
C - - - - - 0x01D696 07:D686: AD 02 20  LDA $2002
C - - - - - 0x01D699 07:D689: A9 2A     LDA #$2A
C - - - - - 0x01D69B 07:D68B: 8D 06 20  STA $2006
C - - - - - 0x01D69E 07:D68E: A9 74     LDA #$74
C - - - - - 0x01D6A0 07:D690: 8D 06 20  STA $2006
C - - - - - 0x01D6A3 07:D693: AD B9 06  LDA ram_буфер_графики
C - - - - - 0x01D6A6 07:D696: 8D 07 20  STA $2007
C - - - - - 0x01D6A9 07:D699: A2 24     LDX #$24
C - - - - - 0x01D6AB 07:D69B: AD 02 20  LDA $2002
C - - - - - 0x01D6AE 07:D69E: A9 2A     LDA #$2A
C - - - - - 0x01D6B0 07:D6A0: 8D 06 20  STA $2006
C - - - - - 0x01D6B3 07:D6A3: A9 94     LDA #$94
C - - - - - 0x01D6B5 07:D6A5: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D6B8 07:D6A8: A9 1A     LDA #$1A
C - - - - - 0x01D6BA 07:D6AA: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D6BD 07:D6AD: A9 3A     LDA #$3A
C - - - - - 0x01D6BF 07:D6AF: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D6C2 07:D6B2: A9 5A     LDA #$5A
C - - - - - 0x01D6C4 07:D6B4: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D6C7 07:D6B7: A9 7A     LDA #$7A
C - - - - - 0x01D6C9 07:D6B9: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D6CC 07:D6BC: A9 9A     LDA #$9A
C - - - - - 0x01D6CE 07:D6BE: 20 CF D6  JSR sub_D6CF
C - - - - - 0x01D6D1 07:D6C1: A9 00     LDA #$00
C - - - - - 0x01D6D3 07:D6C3: 8D 06 20  STA $2006
loc_D6C6:
C D 2 - - - 0x01D6D6 07:D6C6: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01D6D9 07:D6C9: 29 CF     AND #$CF
C - - - - - 0x01D6DB 07:D6CB: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01D6DE 07:D6CE: 60        RTS



sub_D6CF:
C - - - - - 0x01D6DF 07:D6CF: 8D 06 20  STA $2006
C - - - - - 0x01D6E2 07:D6D2: A0 04     LDY #$04
bra_D6D4:
C - - - - - 0x01D6E4 07:D6D4: BD 96 06  LDA ram_буфер_атрибутов,X
C - - - - - 0x01D6E7 07:D6D7: 8D 07 20  STA $2007
C - - - - - 0x01D6EA 07:D6DA: E8        INX
C - - - - - 0x01D6EB 07:D6DB: 88        DEY
C - - - - - 0x01D6EC 07:D6DC: 10 F6     BPL bra_D6D4
C - - - - - 0x01D6EE 07:D6DE: AD 02 20  LDA $2002
C - - - - - 0x01D6F1 07:D6E1: A9 2A     LDA #$2A
C - - - - - 0x01D6F3 07:D6E3: 8D 06 20  STA $2006
C - - - - - 0x01D6F6 07:D6E6: 60        RTS



sub_D6E7:
C - - - - - 0x01D6F7 07:D6E7: AD 57 00  LDA a: ram_опция_режим_сложность
C - - - - - 0x01D6FA 07:D6EA: 29 20     AND #$20
C - - - - - 0x01D6FC 07:D6EC: D0 1C     BNE bra_D70A
C - - - - - 0x01D6FE 07:D6EE: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01D700 07:D6F0: C9 06     CMP #$06
C - - - - - 0x01D702 07:D6F2: F0 13     BEQ bra_D707
C - - - - - 0x01D704 07:D6F4: AC D6 04  LDY ram_игрок_с_мячом
C - - - - - 0x01D707 07:D6F7: C0 0A     CPY #$0A
C - - - - - 0x01D709 07:D6F9: 90 0F     BCC bra_D70A
C - - - - - 0x01D70B 07:D6FB: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x01D70E 07:D6FE: 29 40     AND #$40
C - - - - - 0x01D710 07:D700: F0 08     BEQ bra_D70A
C - - - - - 0x01D712 07:D702: B9 7C 06  LDA ram_067C,Y
C - - - - - 0x01D715 07:D705: 30 03     BMI bra_D70A
bra_D707:
C - - - - - 0x01D717 07:D707: 20 A4 D7  JSR sub_D7A4
bra_D70A:
C - - - - - 0x01D71A 07:D70A: AD C1 05  LDA ram_тайм_минуты
C - - - - - 0x01D71D 07:D70D: 0D C0 05  ORA ram_тайм_секунды_десятки
C - - - - - 0x01D720 07:D710: 0D BF 05  ORA ram_тайм_секунды_единицы
C - - - - - 0x01D723 07:D713: F0 35     BEQ bra_D74A
C - - - - - 0x01D725 07:D715: CE BE 05  DEC ram_тайм_терции
C - - - - - 0x01D728 07:D718: 10 2F     BPL bra_D749_RTS
C - - - - - 0x01D72A 07:D71A: 20 35 EE  JSR sub_EE35
C - - - - - 0x01D72D 07:D71D: 29 A0     AND #$A0
C - - - - - 0x01D72F 07:D71F: C9 A0     CMP #$A0
C - - - - - 0x01D731 07:D721: D0 03     BNE bra_D726
C - - - - - 0x01D733 07:D723: 20 80 C2  JSR sub_C280
bra_D726:
C - - - - - 0x01D736 07:D726: CE BF 05  DEC ram_тайм_секунды_единицы
C - - - - - 0x01D739 07:D729: 10 19     BPL bra_D744
C - - - - - 0x01D73B 07:D72B: CE C0 05  DEC ram_тайм_секунды_десятки
C - - - - - 0x01D73E 07:D72E: 10 0F     BPL bra_D73F
C - - - - - 0x01D740 07:D730: CE C1 05  DEC ram_тайм_минуты
C - - - - - 0x01D743 07:D733: 10 05     BPL bra_D73A
- - - - - - 0x01D745 07:D735: A9 09     LDA #$09
- - - - - - 0x01D747 07:D737: 8D C1 05  STA ram_тайм_минуты
bra_D73A:
C - - - - - 0x01D74A 07:D73A: A9 05     LDA #$05
C - - - - - 0x01D74C 07:D73C: 8D C0 05  STA ram_тайм_секунды_десятки
bra_D73F:
C - - - - - 0x01D74F 07:D73F: A9 09     LDA #$09
C - - - - - 0x01D751 07:D741: 8D BF 05  STA ram_тайм_секунды_единицы
bra_D744:
C - - - - - 0x01D754 07:D744: A9 13     LDA #$13
C - - - - - 0x01D756 07:D746: 8D BE 05  STA ram_тайм_терции
bra_D749_RTS:
C - - - - - 0x01D759 07:D749: 60        RTS
bra_D74A:
C - - - - - 0x01D75A 07:D74A: AD C5 05  LDA ram_loss_минуты
C - - - - - 0x01D75D 07:D74D: 0D C4 05  ORA ram_loss_секунды_десятки
C - - - - - 0x01D760 07:D750: 0D C3 05  ORA ram_loss_секунды_единицы
C - - - - - 0x01D763 07:D753: F0 29     BEQ bra_D77E
C - - - - - 0x01D765 07:D755: CE C2 05  DEC ram_loss_терции
C - - - - - 0x01D768 07:D758: 10 23     BPL bra_D77D_RTS
C - - - - - 0x01D76A 07:D75A: CE C3 05  DEC ram_loss_секунды_единицы
C - - - - - 0x01D76D 07:D75D: 10 19     BPL bra_D778
C - - - - - 0x01D76F 07:D75F: CE C4 05  DEC ram_loss_секунды_десятки
C - - - - - 0x01D772 07:D762: 10 0F     BPL bra_D773
- - - - - - 0x01D774 07:D764: CE C5 05  DEC ram_loss_минуты
- - - - - - 0x01D777 07:D767: 10 05     BPL bra_D76E
- - - - - - 0x01D779 07:D769: A9 09     LDA #$09
- - - - - - 0x01D77B 07:D76B: 8D C5 05  STA ram_loss_минуты
bra_D76E:
- - - - - - 0x01D77E 07:D76E: A9 05     LDA #$05
- - - - - - 0x01D780 07:D770: 8D C4 05  STA ram_loss_секунды_десятки
bra_D773:
C - - - - - 0x01D783 07:D773: A9 09     LDA #$09
C - - - - - 0x01D785 07:D775: 8D C3 05  STA ram_loss_секунды_единицы
bra_D778:
C - - - - - 0x01D788 07:D778: A9 13     LDA #$13
C - - - - - 0x01D78A 07:D77A: 8D C2 05  STA ram_loss_терции
bra_D77D_RTS:
C - - - - - 0x01D78D 07:D77D: 60        RTS
bra_D77E:
C - - - - - 0x01D78E 07:D77E: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01D791 07:D781: 29 7F     AND #$7F
C - - - - - 0x01D793 07:D783: C9 01     CMP #$01
C - - - - - 0x01D795 07:D785: D0 08     BNE bra_D78F
- - - - - - 0x01D797 07:D787: A9 50     LDA #$50
- - - - - - 0x01D799 07:D789: 8D 3F 01  STA ram_длительность_погоды_ХЗ
- - - - - - 0x01D79C 07:D78C: 4C 94 D7  JMP loc_D794
bra_D78F:
C - - - - - 0x01D79F 07:D78F: A9 00     LDA #$00
C - - - - - 0x01D7A1 07:D791: 8D 66 04  STA ram_погода_номер_эффекта
loc_D794:
C - - - - - 0x01D7A4 07:D794: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01D7A6 07:D796: C9 06     CMP #$06
C - - - - - 0x01D7A8 07:D798: F0 09     BEQ bra_D7A3_RTS
C - - - - - 0x01D7AA 07:D79A: A9 40     LDA #$40
C - - - - - 0x01D7AC 07:D79C: 85 5C     STA ram_режим_игры_на_поле
C - - - - - 0x01D7AE 07:D79E: A9 31     LDA #$31
C - - - - - 0x01D7B0 07:D7A0: 20 E4 C2  JSR sub_C2E4
bra_D7A3_RTS:
C - - - - - 0x01D7B3 07:D7A3: 60        RTS



sub_D7A4:
C - - - - - 0x01D7B4 07:D7A4: EE C2 05  INC ram_loss_терции
C - - - - - 0x01D7B7 07:D7A7: AD C2 05  LDA ram_loss_терции
C - - - - - 0x01D7BA 07:D7AA: C9 28     CMP #$28
C - - - - - 0x01D7BC 07:D7AC: 90 44     BCC bra_D7F2_RTS
C - - - - - 0x01D7BE 07:D7AE: EE C3 05  INC ram_loss_секунды_единицы
C - - - - - 0x01D7C1 07:D7B1: AD C3 05  LDA ram_loss_секунды_единицы
C - - - - - 0x01D7C4 07:D7B4: C9 0A     CMP #$0A
C - - - - - 0x01D7C6 07:D7B6: 90 35     BCC bra_D7ED
C - - - - - 0x01D7C8 07:D7B8: EE C4 05  INC ram_loss_секунды_десятки
C - - - - - 0x01D7CB 07:D7BB: AD C4 05  LDA ram_loss_секунды_десятки
C - - - - - 0x01D7CE 07:D7BE: C9 06     CMP #$06
C - - - - - 0x01D7D0 07:D7C0: 90 26     BCC bra_D7E8
- - - - - - 0x01D7D2 07:D7C2: EE C5 05  INC ram_loss_минуты
- - - - - - 0x01D7D5 07:D7C5: AD C5 05  LDA ram_loss_минуты
- - - - - - 0x01D7D8 07:D7C8: C9 02     CMP #$02
- - - - - - 0x01D7DA 07:D7CA: 90 17     BCC bra_D7E3
- - - - - - 0x01D7DC 07:D7CC: A9 01     LDA #$01
- - - - - - 0x01D7DE 07:D7CE: 8D C5 05  STA ram_loss_минуты
- - - - - - 0x01D7E1 07:D7D1: A9 05     LDA #$05
- - - - - - 0x01D7E3 07:D7D3: 8D C4 05  STA ram_loss_секунды_десятки
- - - - - - 0x01D7E6 07:D7D6: A9 09     LDA #$09
- - - - - - 0x01D7E8 07:D7D8: 8D C3 05  STA ram_loss_секунды_единицы
- - - - - - 0x01D7EB 07:D7DB: A9 00     LDA #$00
- - - - - - 0x01D7ED 07:D7DD: 8D C2 05  STA ram_loss_терции
- - - - - - 0x01D7F0 07:D7E0: 4C F2 D7  JMP loc_D7F2_RTS
bra_D7E3:
- - - - - - 0x01D7F3 07:D7E3: A9 00     LDA #$00
- - - - - - 0x01D7F5 07:D7E5: 8D C4 05  STA ram_loss_секунды_десятки
bra_D7E8:
C - - - - - 0x01D7F8 07:D7E8: A9 00     LDA #$00
C - - - - - 0x01D7FA 07:D7EA: 8D C3 05  STA ram_loss_секунды_единицы
bra_D7ED:
C - - - - - 0x01D7FD 07:D7ED: A9 00     LDA #$00
C - - - - - 0x01D7FF 07:D7EF: 8D C2 05  STA ram_loss_терции
bra_D7F2_RTS:
loc_D7F2_RTS:
C - - - - - 0x01D802 07:D7F2: 60        RTS



.export sub_0x01D803
sub_0x01D803:
C - - - - - 0x01D803 07:D7F3: AD F0 05  LDA ram_счетчик_следов
C - - - - - 0x01D806 07:D7F6: C9 04     CMP #$04
C - - - - - 0x01D808 07:D7F8: B0 37     BCS bra_D831
C - - - - - 0x01D80A 07:D7FA: BD D9 00  LDA a: ram_флаг_видимости,X
C - - - - - 0x01D80D 07:D7FD: F0 32     BEQ bra_D831
C - - - - - 0x01D80F 07:D7FF: BD F6 03  LDA ram_игрок_spd_X_hi,X
C - - - - - 0x01D812 07:D802: 1D E8 03  ORA ram_игрок_spd_X_lo,X
C - - - - - 0x01D815 07:D805: 1D 12 04  ORA ram_игрок_spd_Y_hi,X
C - - - - - 0x01D818 07:D808: 1D 04 04  ORA ram_игрок_spd_Y_lo,X
C - - - - - 0x01D81B 07:D80B: F0 24     BEQ bra_D831
C - - - - - 0x01D81D 07:D80D: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x01D820 07:D810: C9 04     CMP #$04
C - - - - - 0x01D822 07:D812: B0 1D     BCS bra_D831
C - - - - - 0x01D824 07:D814: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01D827 07:D817: F0 0E     BEQ bra_D827
C - - - - - 0x01D829 07:D819: C9 02     CMP #$02
C - - - - - 0x01D82B 07:D81B: B0 14     BCS bra_D831
C - - - - - 0x01D82D 07:D81D: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01D830 07:D820: C9 68     CMP #$68
C - - - - - 0x01D832 07:D822: B0 0D     BCS bra_D831
C - - - - - 0x01D834 07:D824: 4C 34 D8  JMP loc_D834
bra_D827:
C - - - - - 0x01D837 07:D827: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01D83A 07:D82A: C9 10     CMP #$10
C - - - - - 0x01D83C 07:D82C: 90 03     BCC bra_D831
C - - - - - 0x01D83E 07:D82E: 4C 34 D8  JMP loc_D834
bra_D831:
C - - - - - 0x01D841 07:D831: 4C 90 D8  JMP loc_D890_RTS
loc_D834:
C D 2 - - - 0x01D844 07:D834: 8A        TXA
C - - - - - 0x01D845 07:D835: 4D 00 03  EOR ram_счетчик_кадров
C - - - - - 0x01D848 07:D838: 29 01     AND #$01
C - - - - - 0x01D84A 07:D83A: F0 F5     BEQ bra_D831
C - - - - - 0x01D84C 07:D83C: 86 43     STX ram_0043
C - - - - - 0x01D84E 07:D83E: 8A        TXA
C - - - - - 0x01D84F 07:D83F: A8        TAY
C - - - - - 0x01D850 07:D840: AE F0 05  LDX ram_счетчик_следов
C - - - - - 0x01D853 07:D843: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x01D856 07:D846: 4A        LSR
C - - - - - 0x01D857 07:D847: 4A        LSR
C - - - - - 0x01D858 07:D848: 4A        LSR
C - - - - - 0x01D859 07:D849: 85 1C     STA ram_001C
C - - - - - 0x01D85B 07:D84B: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x01D85E 07:D84E: 29 F8     AND #$F8
C - - - - - 0x01D860 07:D850: 85 1E     STA ram_001E
C - - - - - 0x01D862 07:D852: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x01D865 07:D855: 85 1F     STA ram_001F
C - - - - - 0x01D867 07:D857: A5 1F     LDA ram_001F
C - - - - - 0x01D869 07:D859: D0 0E     BNE bra_D869
C - - - - - 0x01D86B 07:D85B: A5 1E     LDA ram_001E
C - - - - - 0x01D86D 07:D85D: C9 F0     CMP #$F0
C - - - - - 0x01D86F 07:D85F: B0 08     BCS bra_D869
C - - - - - 0x01D871 07:D861: A9 08     LDA #$08
C - - - - - 0x01D873 07:D863: 9D E8 05  STA ram_след_hi_2006,X
C - - - - - 0x01D876 07:D866: 4C 75 D8  JMP loc_D875
bra_D869:
C - - - - - 0x01D879 07:D869: A9 0A     LDA #$0A
C - - - - - 0x01D87B 07:D86B: 9D E8 05  STA ram_след_hi_2006,X
C - - - - - 0x01D87E 07:D86E: A5 1E     LDA ram_001E
C - - - - - 0x01D880 07:D870: 38        SEC
C - - - - - 0x01D881 07:D871: E9 F0     SBC #$F0
C - - - - - 0x01D883 07:D873: 85 1E     STA ram_001E
loc_D875:
C D 2 - - - 0x01D885 07:D875: A5 1E     LDA ram_001E
C - - - - - 0x01D887 07:D877: 85 1D     STA ram_001D
C - - - - - 0x01D889 07:D879: 06 1D     ASL ram_001D
C - - - - - 0x01D88B 07:D87B: 3E E8 05  ROL ram_след_hi_2006,X
C - - - - - 0x01D88E 07:D87E: 06 1D     ASL ram_001D
C - - - - - 0x01D890 07:D880: 3E E8 05  ROL ram_след_hi_2006,X
C - - - - - 0x01D893 07:D883: A5 1D     LDA ram_001D
C - - - - - 0x01D895 07:D885: 18        CLC
C - - - - - 0x01D896 07:D886: 65 1C     ADC ram_001C
C - - - - - 0x01D898 07:D888: 9D EC 05  STA ram_след_lo_2006,X
C - - - - - 0x01D89B 07:D88B: EE F0 05  INC ram_счетчик_следов
C - - - - - 0x01D89E 07:D88E: A6 43     LDX ram_0043
loc_D890_RTS:
C D 2 - - - 0x01D8A0 07:D890: 60        RTS


; bzk
tbl_D891:
sub_D891:
C D 2 - - - 0x01D8A1 07:D891: AD 66 04  LDA ram_погода_номер_эффекта
C D 2 - - - 0x01D8A4 07:D894: C9 82     CMP #$82
C D 2 - - - 0x01D8A6 07:D896: F0 05     BEQ bra_D89D
C D 2 - - - 0x01D8A8 07:D898: C9 02     CMP #$02
C D 2 - - - 0x01D8AA 07:D89A: F0 29     BEQ bra_D8C5
C D 2 - - - 0x01D8AC 07:D89C: 60        RTS
bra_D89D:
C D 2 - - - 0x01D8AD 07:D89D: A0 00     LDY #$00
bra_D89F:
C D 2 - - - 0x01D8AF 07:D89F: 98        TYA
C D 2 - - - 0x01D8B0 07:D8A0: 4A        LSR
C D 2 - - - 0x01D8B1 07:D8A1: 99 0C 01  STA ram_010C,Y
C D 2 - - - 0x01D8B4 07:D8A4: B9 99 D8  LDA tbl_D891 + 8,Y
C D 2 - - - 0x01D8B7 07:D8A7: 2A        ROL
C D 2 - - - 0x01D8B8 07:D8A8: 99 00 01  STA ram_0100,Y
C D 2 - - - 0x01D8BB 07:D8AB: B9 A1 D8  LDA tbl_D891 + 16,Y
C D 2 - - - 0x01D8BE 07:D8AE: 29 3F     AND #$3F
C D 2 - - - 0x01D8C0 07:D8B0: C9 2F     CMP #$2F
C D 2 - - - 0x01D8C2 07:D8B2: 90 02     BCC bra_D8B6
C D 2 - - - 0x01D8C4 07:D8B4: A9 00     LDA #$00
bra_D8B6:
C D 2 - - - 0x01D8C6 07:D8B6: 09 80     ORA #$80
C D 2 - - - 0x01D8C8 07:D8B8: 99 18 01  STA ram_0118,Y
C D 2 - - - 0x01D8CB 07:D8BB: C8        INY
C D 2 - - - 0x01D8CC 07:D8BC: C0 0C     CPY #$0C
C D 2 - - - 0x01D8CE 07:D8BE: D0 DF     BNE bra_D89F
C D 2 - - - 0x01D8D0 07:D8C0: A9 02     LDA #$02
C D 2 - - - 0x01D8D2 07:D8C2: 8D 66 04  STA ram_погода_номер_эффекта
bra_D8C5:
C D 2 - - - 0x01D8D5 07:D8C5: AD 40 01  LDA ram_0140
C D 2 - - - 0x01D8D8 07:D8C8: F0 20     BEQ bra_D8EA
C D 2 - - - 0x01D8DA 07:D8CA: 30 0F     BMI bra_D8DB
C D 2 - - - 0x01D8DC 07:D8CC: C9 03     CMP #$03
C D 2 - - - 0x01D8DE 07:D8CE: 90 1A     BCC bra_D8EA
C D 2 - - - 0x01D8E0 07:D8D0: A9 74     LDA #$74
C D 2 - - - 0x01D8E2 07:D8D2: 85 0C     STA ram_000C
C D 2 - - - 0x01D8E4 07:D8D4: A9 41     LDA #$41
C D 2 - - - 0x01D8E6 07:D8D6: 85 0D     STA ram_000D
C D 2 - - - 0x01D8E8 07:D8D8: 4C F2 D8  JMP loc_D8F2
bra_D8DB:
C D 2 - - - 0x01D8EB 07:D8DB: C9 FE     CMP #$FE
C D 2 - - - 0x01D8ED 07:D8DD: B0 0B     BCS bra_D8EA
C D 2 - - - 0x01D8EF 07:D8DF: A9 74     LDA #$74
C D 2 - - - 0x01D8F1 07:D8E1: 85 0C     STA ram_000C
C D 2 - - - 0x01D8F3 07:D8E3: A9 01     LDA #$01
C D 2 - - - 0x01D8F5 07:D8E5: 85 0D     STA ram_000D
C D 2 - - - 0x01D8F7 07:D8E7: 4C F2 D8  JMP loc_D8F2
bra_D8EA:
C D 2 - - - 0x01D8FA 07:D8EA: A9 73     LDA #$73
C D 2 - - - 0x01D8FC 07:D8EC: 85 0C     STA ram_000C
C D 2 - - - 0x01D8FE 07:D8EE: A9 01     LDA #$01
C D 2 - - - 0x01D900 07:D8F0: 85 0D     STA ram_000D
loc_D8F2:
C D 2 - - - 0x01D902 07:D8F2: A0 00     LDY #$00
bra_D8F4:
C D 2 - - - 0x01D904 07:D8F4: B9 00 01  LDA ram_0100,Y
C D 2 - - - 0x01D907 07:D8F7: 18        CLC
C D 2 - - - 0x01D908 07:D8F8: 69 80     ADC #$80
C D 2 - - - 0x01D90A 07:D8FA: 99 00 01  STA ram_0100,Y
C D 2 - - - 0x01D90D 07:D8FD: B9 18 01  LDA ram_0118,Y
C D 2 - - - 0x01D910 07:D900: 38        SEC
C D 2 - - - 0x01D911 07:D901: E9 01     SBC #$01
C D 2 - - - 0x01D913 07:D903: 99 18 01  STA ram_0118,Y
C D 2 - - - 0x01D916 07:D906: 10 16     BPL bra_D91E
C D 2 - - - 0x01D918 07:D908: B9 0C 01  LDA ram_010C,Y
C D 2 - - - 0x01D91B 07:D90B: 18        CLC
C D 2 - - - 0x01D91C 07:D90C: 69 04     ADC #$04
C D 2 - - - 0x01D91E 07:D90E: 99 0C 01  STA ram_010C,Y
C D 2 - - - 0x01D921 07:D911: B9 00 01  LDA ram_0100,Y
C D 2 - - - 0x01D924 07:D914: 18        CLC
C D 2 - - - 0x01D925 07:D915: 6D 40 01  ADC ram_0140
C D 2 - - - 0x01D928 07:D918: 99 00 01  STA ram_0100,Y
C D 2 - - - 0x01D92B 07:D91B: 4C 47 D9  JMP loc_D947
bra_D91E:
C D 2 - - - 0x01D92E 07:D91E: C9 77     CMP #$77
C D 2 - - - 0x01D930 07:D920: B0 25     BCS bra_D947
C D 2 - - - 0x01D932 07:D922: EE E4 05  INC ram_05E4
C D 2 - - - 0x01D935 07:D925: AD E4 05  LDA ram_05E4
C D 2 - - - 0x01D938 07:D928: AA        TAX
C D 2 - - - 0x01D939 07:D929: BD 91 D8  LDA tbl_D891,X
C D 2 - - - 0x01D93C 07:D92C: 29 3C     AND #$3C
C D 2 - - - 0x01D93E 07:D92E: C9 2F     CMP #$2F
C D 2 - - - 0x01D940 07:D930: 90 02     BCC bra_D934
C D 2 - - - 0x01D942 07:D932: A9 00     LDA #$00
bra_D934:
C D 2 - - - 0x01D944 07:D934: 09 80     ORA #$80
C D 2 - - - 0x01D946 07:D936: 99 18 01  STA ram_0118,Y
C D 2 - - - 0x01D949 07:D939: A9 00     LDA #$00
C D 2 - - - 0x01D94B 07:D93B: 99 0C 01  STA ram_010C,Y
C D 2 - - - 0x01D94E 07:D93E: B9 00 01  LDA ram_0100,Y
C D 2 - - - 0x01D951 07:D941: 18        CLC
C D 2 - - - 0x01D952 07:D942: 69 58     ADC #$58
C D 2 - - - 0x01D954 07:D944: 99 00 01  STA ram_0100,Y
bra_D947:
loc_D947:
C D 2 - - - 0x01D957 07:D947: C8        INY
C D 2 - - - 0x01D958 07:D948: C0 0C     CPY #$0C
C D 2 - - - 0x01D95A 07:D94A: D0 A8     BNE bra_D8F4
C D 2 - - - 0x01D95C 07:D94C: AD E3 05  LDA ram_счетчик_спрайтов
C D 2 - - - 0x01D95F 07:D94F: F0 41     BEQ bra_D992_RTS
C D 2 - - - 0x01D961 07:D951: A9 00     LDA #$00
C D 2 - - - 0x01D963 07:D953: AA        TAX
C D 2 - - - 0x01D964 07:D954: A8        TAY
loc_D955:
C D 2 - - - 0x01D965 07:D955: CC AC 03  CPY ram_объем_дождя
C D 2 - - - 0x01D968 07:D958: F0 08     BEQ bra_D962
C D 2 - - - 0x01D96A 07:D95A: B0 06     BCS bra_D962
C D 2 - - - 0x01D96C 07:D95C: B9 0C 01  LDA ram_010C,Y
C D 2 - - - 0x01D96F 07:D95F: 4C 64 D9  JMP loc_D964
bra_D962:
C D 2 - - - 0x01D972 07:D962: A9 F9     LDA #$F9
loc_D964:
C D 2 - - - 0x01D974 07:D964: 9D 00 02  STA ram_спрайт_Y,X
C D 2 - - - 0x01D977 07:D967: B9 18 01  LDA ram_0118,Y
C D 2 - - - 0x01D97A 07:D96A: 10 05     BPL bra_D971
C D 2 - - - 0x01D97C 07:D96C: A5 0C     LDA ram_000C
C D 2 - - - 0x01D97E 07:D96E: 4C 73 D9  JMP loc_D973
bra_D971:
C D 2 - - - 0x01D981 07:D971: A9 76     LDA #$76
loc_D973:
C D 2 - - - 0x01D983 07:D973: 9D 01 02  STA ram_спрайт_тайл,X
C D 2 - - - 0x01D986 07:D976: A5 0D     LDA ram_000D
C D 2 - - - 0x01D988 07:D978: 9D 02 02  STA ram_спрайт_палитра,X
C D 2 - - - 0x01D98B 07:D97B: B9 00 01  LDA ram_0100,Y
C D 2 - - - 0x01D98E 07:D97E: 9D 03 02  STA ram_спрайт_X,X
C D 2 - - - 0x01D991 07:D981: E8        INX
C D 2 - - - 0x01D992 07:D982: E8        INX
C D 2 - - - 0x01D993 07:D983: E8        INX
C D 2 - - - 0x01D994 07:D984: E8        INX
C D 2 - - - 0x01D995 07:D985: C8        INY
C D 2 - - - 0x01D996 07:D986: C0 0C     CPY #$0C
C D 2 - - - 0x01D998 07:D988: F0 08     BEQ bra_D992_RTS
C D 2 - - - 0x01D99A 07:D98A: CC E3 05  CPY ram_счетчик_спрайтов
C D 2 - - - 0x01D99D 07:D98D: F0 03     BEQ bra_D992_RTS
C D 2 - - - 0x01D99F 07:D98F: 4C 55 D9  JMP loc_D955
bra_D992_RTS:
C - - - - - 0x01D9A2 07:D992: 60        RTS



sub_D993:
C - - - - - 0x01D9A3 07:D993: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01D9A6 07:D996: C9 81     CMP #$81
C - - - - - 0x01D9A8 07:D998: F0 05     BEQ bra_D99F
C - - - - - 0x01D9AA 07:D99A: C9 01     CMP #$01
C - - - - - 0x01D9AC 07:D99C: F0 3A     BEQ bra_D9D8
C - - - - - 0x01D9AE 07:D99E: 60        RTS
bra_D99F:
C - - - - - 0x01D9AF 07:D99F: A9 00     LDA #$00
C - - - - - 0x01D9B1 07:D9A1: 85 0C     STA ram_000C
bra_D9A3:
C - - - - - 0x01D9B3 07:D9A3: A5 0C     LDA ram_000C
C - - - - - 0x01D9B5 07:D9A5: A8        TAY
C - - - - - 0x01D9B6 07:D9A6: 0A        ASL
C - - - - - 0x01D9B7 07:D9A7: 0A        ASL
C - - - - - 0x01D9B8 07:D9A8: AA        TAX
C - - - - - 0x01D9B9 07:D9A9: B9 5E DA  LDA tbl_DA5E,Y
C - - - - - 0x01D9BC 07:D9AC: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01D9BF 07:D9AF: 99 0C 01  STA ram_010C,Y
C - - - - - 0x01D9C2 07:D9B2: B9 6A DA  LDA tbl_DA6A,Y
C - - - - - 0x01D9C5 07:D9B5: 9D 01 02  STA ram_спрайт_тайл,X
C - - - - - 0x01D9C8 07:D9B8: A9 01     LDA #$01
C - - - - - 0x01D9CA 07:D9BA: 9D 02 02  STA ram_спрайт_палитра,X
C - - - - - 0x01D9CD 07:D9BD: B9 46 DA  LDA tbl_DA46,Y
C - - - - - 0x01D9D0 07:D9C0: 18        CLC
C - - - - - 0x01D9D1 07:D9C1: 6D 3D 01  ADC ram_013D
C - - - - - 0x01D9D4 07:D9C4: 9D 03 02  STA ram_спрайт_X,X
C - - - - - 0x01D9D7 07:D9C7: 99 00 01  STA ram_0100,Y
C - - - - - 0x01D9DA 07:D9CA: E6 0C     INC ram_000C
C - - - - - 0x01D9DC 07:D9CC: A5 0C     LDA ram_000C
C - - - - - 0x01D9DE 07:D9CE: C9 0C     CMP #$0C
C - - - - - 0x01D9E0 07:D9D0: D0 D1     BNE bra_D9A3
C - - - - - 0x01D9E2 07:D9D2: A9 01     LDA #$01
C - - - - - 0x01D9E4 07:D9D4: 8D 66 04  STA ram_погода_номер_эффекта
C - - - - - 0x01D9E7 07:D9D7: 60        RTS
bra_D9D8:
C - - - - - 0x01D9E8 07:D9D8: A2 00     LDX #$00
bra_D9DA:
C - - - - - 0x01D9EA 07:D9DA: EE AE 03  INC ram_03AE
C - - - - - 0x01D9ED 07:D9DD: AD AE 03  LDA ram_03AE
C - - - - - 0x01D9F0 07:D9E0: C9 0B     CMP #$0B
C - - - - - 0x01D9F2 07:D9E2: 90 05     BCC bra_D9E9
C - - - - - 0x01D9F4 07:D9E4: A9 00     LDA #$00
C - - - - - 0x01D9F6 07:D9E6: 8D AE 03  STA ram_03AE
bra_D9E9:
C - - - - - 0x01D9F9 07:D9E9: AC AE 03  LDY ram_03AE
C - - - - - 0x01D9FC 07:D9EC: BD 0C 01  LDA ram_010C,X
C - - - - - 0x01D9FF 07:D9EF: 18        CLC
C - - - - - 0x01DA00 07:D9F0: 69 40     ADC #$40
C - - - - - 0x01DA02 07:D9F2: C9 BD     CMP #$BD
C - - - - - 0x01DA04 07:D9F4: 90 03     BCC bra_D9F9
C - - - - - 0x01DA06 07:D9F6: 38        SEC
C - - - - - 0x01DA07 07:D9F7: E9 BD     SBC #$BD
bra_D9F9:
C - - - - - 0x01DA09 07:D9F9: 9D 0C 01  STA ram_010C,X
C - - - - - 0x01DA0C 07:D9FC: 8A        TXA
C - - - - - 0x01DA0D 07:D9FD: D0 02     BNE bra_DA01
C - - - - - 0x01DA0F 07:D9FF: A2 0C     LDX #$0C
bra_DA01:
; думдей предупреждал об этом месте
C - - - - - 0x01DA11 07:DA01: BD FF 00  LDA a: ram_00FF,X
C - - - - - 0x01DA14 07:DA04: E0 0C     CPX #$0C
C - - - - - 0x01DA16 07:DA06: D0 02     BNE bra_DA0A
C - - - - - 0x01DA18 07:DA08: A2 00     LDX #$00
bra_DA0A:
C - - - - - 0x01DA1A 07:DA0A: 18        CLC
C - - - - - 0x01DA1B 07:DA0B: 7D 52 DA  ADC tbl_DA52,X
C - - - - - 0x01DA1E 07:DA0E: 18        CLC
C - - - - - 0x01DA1F 07:DA0F: 79 76 DA  ADC tbl_DA76,Y
C - - - - - 0x01DA22 07:DA12: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DA25 07:DA15: E8        INX
C - - - - - 0x01DA26 07:DA16: E0 0C     CPX #$0C
C - - - - - 0x01DA28 07:DA18: D0 C0     BNE bra_D9DA
C - - - - - 0x01DA2A 07:DA1A: A9 00     LDA #$00
C - - - - - 0x01DA2C 07:DA1C: AA        TAX
C - - - - - 0x01DA2D 07:DA1D: A8        TAY
bra_DA1E:
C - - - - - 0x01DA2E 07:DA1E: B9 0C 01  LDA ram_010C,Y
C - - - - - 0x01DA31 07:DA21: CD 3E 01  CMP ram_013E
C - - - - - 0x01DA34 07:DA24: 90 02     BCC bra_DA28
C - - - - - 0x01DA36 07:DA26: A9 F8     LDA #$F8
bra_DA28:
C - - - - - 0x01DA38 07:DA28: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DA3B 07:DA2B: E8        INX
C - - - - - 0x01DA3C 07:DA2C: B9 6A DA  LDA tbl_DA6A,Y
C - - - - - 0x01DA3F 07:DA2F: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DA42 07:DA32: E8        INX
C - - - - - 0x01DA43 07:DA33: A9 00     LDA #$00
C - - - - - 0x01DA45 07:DA35: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DA48 07:DA38: E8        INX
C - - - - - 0x01DA49 07:DA39: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01DA4C 07:DA3C: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DA4F 07:DA3F: E8        INX
C - - - - - 0x01DA50 07:DA40: C8        INY
C - - - - - 0x01DA51 07:DA41: C0 0C     CPY #$0C
C - - - - - 0x01DA53 07:DA43: D0 D9     BNE bra_DA1E
C - - - - - 0x01DA55 07:DA45: 60        RTS



tbl_DA46:
- D 2 - - - 0x01DA56 07:DA46: 08        .byte $08   ; 
- D 2 - - - 0x01DA57 07:DA47: 08        .byte $08   ; 
- D 2 - - - 0x01DA58 07:DA48: 0D        .byte $0D   ; 
- D 2 - - - 0x01DA59 07:DA49: 08        .byte $08   ; 
- D 2 - - - 0x01DA5A 07:DA4A: 08        .byte $08   ; 
- D 2 - - - 0x01DA5B 07:DA4B: 08        .byte $08   ; 
- D 2 - - - 0x01DA5C 07:DA4C: 03        .byte $03   ; 
- D 2 - - - 0x01DA5D 07:DA4D: 08        .byte $08   ; 
- D 2 - - - 0x01DA5E 07:DA4E: 0D        .byte $0D   ; 
- D 2 - - - 0x01DA5F 07:DA4F: 08        .byte $08   ; 
- D 2 - - - 0x01DA60 07:DA50: 0D        .byte $0D   ; 
- D 2 - - - 0x01DA61 07:DA51: 08        .byte $08   ; 



tbl_DA52:
- D 2 - - - 0x01DA62 07:DA52: 00        .byte $00   ; 
- D 2 - - - 0x01DA63 07:DA53: 00        .byte $00   ; 
- D 2 - - - 0x01DA64 07:DA54: 05        .byte $05   ; 
- D 2 - - - 0x01DA65 07:DA55: FB        .byte $FB   ; 
- D 2 - - - 0x01DA66 07:DA56: 00        .byte $00   ; 
- D 2 - - - 0x01DA67 07:DA57: 00        .byte $00   ; 
- D 2 - - - 0x01DA68 07:DA58: FB        .byte $FB   ; 
- D 2 - - - 0x01DA69 07:DA59: 05        .byte $05   ; 
- D 2 - - - 0x01DA6A 07:DA5A: 05        .byte $05   ; 
- D 2 - - - 0x01DA6B 07:DA5B: FB        .byte $FB   ; 
- D 2 - - - 0x01DA6C 07:DA5C: 05        .byte $05   ; 
- D 2 - - - 0x01DA6D 07:DA5D: FB        .byte $FB   ; 



tbl_DA5E:
- D 2 - - - 0x01DA6E 07:DA5E: 00        .byte $00   ; 
- D 2 - - - 0x01DA6F 07:DA5F: 08        .byte $08   ; 
- D 2 - - - 0x01DA70 07:DA60: 08        .byte $08   ; 
- D 2 - - - 0x01DA71 07:DA61: 10        .byte $10   ; 
- D 2 - - - 0x01DA72 07:DA62: 18        .byte $18   ; 
- D 2 - - - 0x01DA73 07:DA63: 20        .byte $20   ; 
- D 2 - - - 0x01DA74 07:DA64: 20        .byte $20   ; 
- D 2 - - - 0x01DA75 07:DA65: 28        .byte $28   ; 
- D 2 - - - 0x01DA76 07:DA66: 28        .byte $28   ; 
- D 2 - - - 0x01DA77 07:DA67: 30        .byte $30   ; 
- D 2 - - - 0x01DA78 07:DA68: 30        .byte $30   ; 
- D 2 - - - 0x01DA79 07:DA69: 38        .byte $38   ; 



tbl_DA6A:
- D 2 - - - 0x01DA7A 07:DA6A: E0        .byte $E0   ; 
- D 2 - - - 0x01DA7B 07:DA6B: F0        .byte $F0   ; 
- D 2 - - - 0x01DA7C 07:DA6C: F1        .byte $F1   ; 
- D 2 - - - 0x01DA7D 07:DA6D: E2        .byte $E2   ; 
- D 2 - - - 0x01DA7E 07:DA6E: F2        .byte $F2   ; 
- D 2 - - - 0x01DA7F 07:DA6F: E4        .byte $E4   ; 
- D 2 - - - 0x01DA80 07:DA70: E3        .byte $E3   ; 
- D 2 - - - 0x01DA81 07:DA71: F4        .byte $F4   ; 
- D 2 - - - 0x01DA82 07:DA72: F5        .byte $F5   ; 
- D 2 - - - 0x01DA83 07:DA73: E5        .byte $E5   ; 
- D 2 - - - 0x01DA84 07:DA74: E6        .byte $E6   ; 
- D 2 - - - 0x01DA85 07:DA75: F6        .byte $F6   ; 



tbl_DA76:
- D 2 - - - 0x01DA86 07:DA76: 01        .byte $01   ; 
- D 2 - - - 0x01DA87 07:DA77: 01        .byte $01   ; 
- D 2 - - - 0x01DA88 07:DA78: 01        .byte $01   ; 
- D 2 - - - 0x01DA89 07:DA79: 01        .byte $01   ; 
- D 2 - - - 0x01DA8A 07:DA7A: 01        .byte $01   ; 
- D 2 - - - 0x01DA8B 07:DA7B: FF        .byte $FF   ; 
- D 2 - - - 0x01DA8C 07:DA7C: FF        .byte $FF   ; 
- D 2 - - - 0x01DA8D 07:DA7D: FF        .byte $FF   ; 
- D 2 - - - 0x01DA8E 07:DA7E: FF        .byte $FF   ; 
- D 2 - - - 0x01DA8F 07:DA7F: FF        .byte $FF   ; 
- D 2 - - - 0x01DA90 07:DA80: 00        .byte $00   ; 



sub_DA81:
C - - - - - 0x01DA91 07:DA81: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01DA94 07:DA84: C9 84     CMP #$84
C - - - - - 0x01DA96 07:DA86: F0 07     BEQ bra_DA8F
C - - - - - 0x01DA98 07:DA88: C9 04     CMP #$04
C - - - - - 0x01DA9A 07:DA8A: F0 45     BEQ bra_DAD1
C - - - - - 0x01DA9C 07:DA8C: 4C 77 DB  JMP loc_DB77_RTS
bra_DA8F:
C - - - - - 0x01DA9F 07:DA8F: A0 0B     LDY #$0B
C - - - - - 0x01DAA1 07:DA91: AD 45 00  LDA a: ram_рандом
C - - - - - 0x01DAA4 07:DA94: 85 0C     STA ram_000C
C - - - - - 0x01DAA6 07:DA96: 29 07     AND #$07
C - - - - - 0x01DAA8 07:DA98: AA        TAX
C - - - - - 0x01DAA9 07:DA99: AD 46 00  LDA a: ram_рандом + 1
C - - - - - 0x01DAAC 07:DA9C: 85 0D     STA ram_000D
bra_DA9E:
loc_DA9E:
C D 2 - - - 0x01DAAE 07:DA9E: A5 0C     LDA ram_000C
C - - - - - 0x01DAB0 07:DAA0: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DAB3 07:DAA3: 45 0D     EOR ram_000D
C - - - - - 0x01DAB5 07:DAA5: 9D 18 01  STA ram_0118,X
C - - - - - 0x01DAB8 07:DAA8: 98        TYA
C - - - - - 0x01DAB9 07:DAA9: 0A        ASL
C - - - - - 0x01DABA 07:DAAA: 0A        ASL
C - - - - - 0x01DABB 07:DAAB: 0A        ASL
C - - - - - 0x01DABC 07:DAAC: 0A        ASL
C - - - - - 0x01DABD 07:DAAD: 9D 0C 01  STA ram_010C,X
C - - - - - 0x01DAC0 07:DAB0: A5 0C     LDA ram_000C
C - - - - - 0x01DAC2 07:DAB2: 45 0D     EOR ram_000D
C - - - - - 0x01DAC4 07:DAB4: 85 0D     STA ram_000D
C - - - - - 0x01DAC6 07:DAB6: 65 0C     ADC ram_000C
C - - - - - 0x01DAC8 07:DAB8: 85 0C     STA ram_000C
C - - - - - 0x01DACA 07:DABA: CA        DEX
C - - - - - 0x01DACB 07:DABB: 10 02     BPL bra_DABF
C - - - - - 0x01DACD 07:DABD: A2 0B     LDX #$0B
bra_DABF:
C - - - - - 0x01DACF 07:DABF: 88        DEY
C - - - - - 0x01DAD0 07:DAC0: 88        DEY
C - - - - - 0x01DAD1 07:DAC1: 10 DB     BPL bra_DA9E
C - - - - - 0x01DAD3 07:DAC3: C0 FE     CPY #$FE
C - - - - - 0x01DAD5 07:DAC5: F0 05     BEQ bra_DACC
C - - - - - 0x01DAD7 07:DAC7: A0 0A     LDY #$0A
C - - - - - 0x01DAD9 07:DAC9: 4C 9E DA  JMP loc_DA9E
bra_DACC:
C - - - - - 0x01DADC 07:DACC: A9 04     LDA #$04
C - - - - - 0x01DADE 07:DACE: 8D 66 04  STA ram_погода_номер_эффекта
bra_DAD1:
C - - - - - 0x01DAE1 07:DAD1: AD 40 01  LDA ram_0140
C - - - - - 0x01DAE4 07:DAD4: 85 0C     STA ram_000C
C - - - - - 0x01DAE6 07:DAD6: AD 41 01  LDA ram_0141
C - - - - - 0x01DAE9 07:DAD9: 85 0D     STA ram_000D
C - - - - - 0x01DAEB 07:DADB: A2 0B     LDX #$0B
bra_DADD:
C - - - - - 0x01DAED 07:DADD: BD 00 01  LDA ram_0100,X
C - - - - - 0x01DAF0 07:DAE0: 18        CLC
C - - - - - 0x01DAF1 07:DAE1: 65 0C     ADC ram_000C
C - - - - - 0x01DAF3 07:DAE3: 18        CLC
C - - - - - 0x01DAF4 07:DAE4: 69 80     ADC #$80
C - - - - - 0x01DAF6 07:DAE6: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DAF9 07:DAE9: BD 0C 01  LDA ram_010C,X
C - - - - - 0x01DAFC 07:DAEC: 18        CLC
C - - - - - 0x01DAFD 07:DAED: 65 0D     ADC ram_000D
C - - - - - 0x01DAFF 07:DAEF: 9D 0C 01  STA ram_010C,X
C - - - - - 0x01DB02 07:DAF2: BD 18 01  LDA ram_0118,X
C - - - - - 0x01DB05 07:DAF5: 29 40     AND #$40
C - - - - - 0x01DB07 07:DAF7: F0 14     BEQ bra_DB0D
C - - - - - 0x01DB09 07:DAF9: BD 00 01  LDA ram_0100,X
C - - - - - 0x01DB0C 07:DAFC: 18        CLC
C - - - - - 0x01DB0D 07:DAFD: 6D 40 01  ADC ram_0140
C - - - - - 0x01DB10 07:DB00: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DB13 07:DB03: BD 0C 01  LDA ram_010C,X
C - - - - - 0x01DB16 07:DB06: 18        CLC
C - - - - - 0x01DB17 07:DB07: 6D 41 01  ADC ram_0141
C - - - - - 0x01DB1A 07:DB0A: 9D 0C 01  STA ram_010C,X
bra_DB0D:
C - - - - - 0x01DB1D 07:DB0D: BD 0C 01  LDA ram_010C,X
C - - - - - 0x01DB20 07:DB10: C9 B2     CMP #$B2
C - - - - - 0x01DB22 07:DB12: 90 17     BCC bra_DB2B
C - - - - - 0x01DB24 07:DB14: AD 41 01  LDA ram_0141
C - - - - - 0x01DB27 07:DB17: 30 08     BMI bra_DB21
C - - - - - 0x01DB29 07:DB19: BD 18 01  LDA ram_0118,X
C - - - - - 0x01DB2C 07:DB1C: 29 07     AND #$07
C - - - - - 0x01DB2E 07:DB1E: 4C 28 DB  JMP loc_DB28
bra_DB21:
C - - - - - 0x01DB31 07:DB21: BD 18 01  LDA ram_0118,X
C - - - - - 0x01DB34 07:DB24: 29 03     AND #$03
C - - - - - 0x01DB36 07:DB26: 09 B0     ORA #$B0
loc_DB28:
C D 2 - - - 0x01DB38 07:DB28: 9D 0C 01  STA ram_010C,X
bra_DB2B:
C - - - - - 0x01DB3B 07:DB2B: BD 18 01  LDA ram_0118,X
C - - - - - 0x01DB3E 07:DB2E: 69 01     ADC #$01
C - - - - - 0x01DB40 07:DB30: 9D 18 01  STA ram_0118,X
C - - - - - 0x01DB43 07:DB33: CA        DEX
C - - - - - 0x01DB44 07:DB34: 10 A7     BPL bra_DADD
C - - - - - 0x01DB46 07:DB36: A9 00     LDA #$00
C - - - - - 0x01DB48 07:DB38: A8        TAY
C - - - - - 0x01DB49 07:DB39: AA        TAX
C - - - - - 0x01DB4A 07:DB3A: AD E3 05  LDA ram_счетчик_спрайтов
C - - - - - 0x01DB4D 07:DB3D: F0 38     BEQ bra_DB77_RTS
loc_DB3F:
C D 2 - - - 0x01DB4F 07:DB3F: CC AC 03  CPY ram_объем_дождя
C - - - - - 0x01DB52 07:DB42: F0 08     BEQ bra_DB4C
C - - - - - 0x01DB54 07:DB44: B0 06     BCS bra_DB4C
C - - - - - 0x01DB56 07:DB46: B9 0C 01  LDA ram_010C,Y
C - - - - - 0x01DB59 07:DB49: 4C 4E DB  JMP loc_DB4E
bra_DB4C:
C - - - - - 0x01DB5C 07:DB4C: A9 F9     LDA #$F9
loc_DB4E:
C D 2 - - - 0x01DB5E 07:DB4E: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DB61 07:DB51: A9 07     LDA #$07
C - - - - - 0x01DB63 07:DB53: 9D 01 02  STA ram_спрайт_тайл,X
C - - - - - 0x01DB66 07:DB56: B9 18 01  LDA ram_0118,Y
C - - - - - 0x01DB69 07:DB59: 29 C0     AND #$C0
C - - - - - 0x01DB6B 07:DB5B: 09 01     ORA #$01
C - - - - - 0x01DB6D 07:DB5D: 9D 02 02  STA ram_спрайт_палитра,X
C - - - - - 0x01DB70 07:DB60: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01DB73 07:DB63: 9D 03 02  STA ram_спрайт_X,X
C - - - - - 0x01DB76 07:DB66: E8        INX
C - - - - - 0x01DB77 07:DB67: E8        INX
C - - - - - 0x01DB78 07:DB68: E8        INX
C - - - - - 0x01DB79 07:DB69: E8        INX
C - - - - - 0x01DB7A 07:DB6A: C8        INY
C - - - - - 0x01DB7B 07:DB6B: CC E3 05  CPY ram_счетчик_спрайтов
C - - - - - 0x01DB7E 07:DB6E: F0 07     BEQ bra_DB77_RTS
C - - - - - 0x01DB80 07:DB70: E0 30     CPX #$30
C - - - - - 0x01DB82 07:DB72: F0 03     BEQ bra_DB77_RTS
C - - - - - 0x01DB84 07:DB74: 4C 3F DB  JMP loc_DB3F
bra_DB77_RTS:
loc_DB77_RTS:
C D 2 - - - 0x01DB87 07:DB77: 60        RTS



sub_DB78:
C - - - - - 0x01DB88 07:DB78: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01DB8B 07:DB7B: C9 83     CMP #$83
C - - - - - 0x01DB8D 07:DB7D: F0 05     BEQ bra_DB84
C - - - - - 0x01DB8F 07:DB7F: C9 03     CMP #$03
C - - - - - 0x01DB91 07:DB81: F0 37     BEQ bra_DBBA
C - - - - - 0x01DB93 07:DB83: 60        RTS
bra_DB84:
C - - - - - 0x01DB94 07:DB84: A2 0B     LDX #$0B
C - - - - - 0x01DB96 07:DB86: A9 80     LDA #$80
C - - - - - 0x01DB98 07:DB88: 8D 3D 01  STA ram_013D
C - - - - - 0x01DB9B 07:DB8B: 8D 3E 01  STA ram_013E
C - - - - - 0x01DB9E 07:DB8E: AD 45 00  LDA a: ram_рандом
C - - - - - 0x01DBA1 07:DB91: 85 0C     STA ram_000C
C - - - - - 0x01DBA3 07:DB93: AD 46 00  LDA a: ram_рандом + 1
C - - - - - 0x01DBA6 07:DB96: 85 0D     STA ram_000D
bra_DB98:
C - - - - - 0x01DBA8 07:DB98: A5 0C     LDA ram_000C
C - - - - - 0x01DBAA 07:DB9A: 45 0D     EOR ram_000D
C - - - - - 0x01DBAC 07:DB9C: 85 0D     STA ram_000D
C - - - - - 0x01DBAE 07:DB9E: 65 0C     ADC ram_000C
C - - - - - 0x01DBB0 07:DBA0: 85 0C     STA ram_000C
C - - - - - 0x01DBB2 07:DBA2: A9 00     LDA #$00
C - - - - - 0x01DBB4 07:DBA4: 9D 24 01  STA ram_0124,X
C - - - - - 0x01DBB7 07:DBA7: BD A5 DC  LDA tbl_DCA5,X
C - - - - - 0x01DBBA 07:DBAA: 9D 18 01  STA ram_0118,X
C - - - - - 0x01DBBD 07:DBAD: A5 0C     LDA ram_000C
C - - - - - 0x01DBBF 07:DBAF: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DBC2 07:DBB2: CA        DEX
C - - - - - 0x01DBC3 07:DBB3: 10 E3     BPL bra_DB98
C - - - - - 0x01DBC5 07:DBB5: A9 03     LDA #$03
C - - - - - 0x01DBC7 07:DBB7: 8D 66 04  STA ram_погода_номер_эффекта
bra_DBBA:
C - - - - - 0x01DBCA 07:DBBA: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01DBCC 07:DBBC: 10 03     BPL bra_DBC1
- - - - - - 0x01DBCE 07:DBBE: 4C 64 DC  JMP loc_DC64
bra_DBC1:
C - - - - - 0x01DBD1 07:DBC1: A2 0B     LDX #$0B
loc_DBC3:
C D 2 - - - 0x01DBD3 07:DBC3: FE 18 01  INC ram_0118,X
C - - - - - 0x01DBD6 07:DBC6: BD 18 01  LDA ram_0118,X
C - - - - - 0x01DBD9 07:DBC9: C9 6E     CMP #$6E
C - - - - - 0x01DBDB 07:DBCB: 90 17     BCC bra_DBE4
C - - - - - 0x01DBDD 07:DBCD: A9 00     LDA #$00
C - - - - - 0x01DBDF 07:DBCF: 9D 18 01  STA ram_0118,X
C - - - - - 0x01DBE2 07:DBD2: 9D 24 01  STA ram_0124,X
C - - - - - 0x01DBE5 07:DBD5: AD 45 00  LDA a: ram_рандом
C - - - - - 0x01DBE8 07:DBD8: 29 1E     AND #$1E
C - - - - - 0x01DBEA 07:DBDA: 38        SEC
C - - - - - 0x01DBEB 07:DBDB: E9 0F     SBC #$0F
C - - - - - 0x01DBED 07:DBDD: 18        CLC
C - - - - - 0x01DBEE 07:DBDE: 6D 3D 01  ADC ram_013D
C - - - - - 0x01DBF1 07:DBE1: 9D 00 01  STA ram_0100,X
bra_DBE4:
C - - - - - 0x01DBF4 07:DBE4: AD 3E 01  LDA ram_013E
C - - - - - 0x01DBF7 07:DBE7: 38        SEC
C - - - - - 0x01DBF8 07:DBE8: FD 18 01  SBC ram_0118,X
C - - - - - 0x01DBFB 07:DBEB: 90 07     BCC bra_DBF4
C - - - - - 0x01DBFD 07:DBED: C9 C0     CMP #$C0
C - - - - - 0x01DBFF 07:DBEF: B0 03     BCS bra_DBF4
C - - - - - 0x01DC01 07:DBF1: 4C F6 DB  JMP loc_DBF6
bra_DBF4:
C - - - - - 0x01DC04 07:DBF4: A9 F9     LDA #$F9
loc_DBF6:
C D 2 - - - 0x01DC06 07:DBF6: 9D 0C 01  STA ram_010C,X
C - - - - - 0x01DC09 07:DBF9: BD 18 01  LDA ram_0118,X
C - - - - - 0x01DC0C 07:DBFC: C9 14     CMP #$14
C - - - - - 0x01DC0E 07:DBFE: 90 0D     BCC bra_DC0D
C - - - - - 0x01DC10 07:DC00: C9 28     CMP #$28
C - - - - - 0x01DC12 07:DC02: 90 12     BCC bra_DC16
C - - - - - 0x01DC14 07:DC04: A9 01     LDA #$01
C - - - - - 0x01DC16 07:DC06: 85 0D     STA ram_000D
C - - - - - 0x01DC18 07:DC08: 85 0C     STA ram_000C
C - - - - - 0x01DC1A 07:DC0A: 4C 1E DC  JMP loc_DC1E
bra_DC0D:
C - - - - - 0x01DC1D 07:DC0D: A9 00     LDA #$00
C - - - - - 0x01DC1F 07:DC0F: 85 0D     STA ram_000D
C - - - - - 0x01DC21 07:DC11: 85 0C     STA ram_000C
C - - - - - 0x01DC23 07:DC13: 4C 1E DC  JMP loc_DC1E
bra_DC16:
C - - - - - 0x01DC26 07:DC16: A9 01     LDA #$01
C - - - - - 0x01DC28 07:DC18: 85 0D     STA ram_000D
C - - - - - 0x01DC2A 07:DC1A: A9 00     LDA #$00
C - - - - - 0x01DC2C 07:DC1C: 85 0C     STA ram_000C
loc_DC1E:
C D 2 - - - 0x01DC2E 07:DC1E: AD 3D 01  LDA ram_013D
C - - - - - 0x01DC31 07:DC21: DD 00 01  CMP ram_0100,X
C - - - - - 0x01DC34 07:DC24: 30 17     BMI bra_DC3D
C - - - - - 0x01DC36 07:DC26: BD 24 01  LDA ram_0124,X
C - - - - - 0x01DC39 07:DC29: 18        CLC
C - - - - - 0x01DC3A 07:DC2A: 69 01     ADC #$01
C - - - - - 0x01DC3C 07:DC2C: 9D 24 01  STA ram_0124,X
C - - - - - 0x01DC3F 07:DC2F: 30 23     BMI bra_DC54
C - - - - - 0x01DC41 07:DC31: BD 00 01  LDA ram_0100,X
C - - - - - 0x01DC44 07:DC34: 38        SEC
C - - - - - 0x01DC45 07:DC35: E5 0C     SBC ram_000C
C - - - - - 0x01DC47 07:DC37: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DC4A 07:DC3A: 4C 54 DC  JMP loc_DC54
bra_DC3D:
C - - - - - 0x01DC4D 07:DC3D: BD 24 01  LDA ram_0124,X
C - - - - - 0x01DC50 07:DC40: 38        SEC
C - - - - - 0x01DC51 07:DC41: E9 01     SBC #$01
C - - - - - 0x01DC53 07:DC43: 9D 24 01  STA ram_0124,X
C - - - - - 0x01DC56 07:DC46: 30 03     BMI bra_DC4B
C - - - - - 0x01DC58 07:DC48: 4C 54 DC  JMP loc_DC54
bra_DC4B:
C - - - - - 0x01DC5B 07:DC4B: BD 00 01  LDA ram_0100,X
C - - - - - 0x01DC5E 07:DC4E: 18        CLC
C - - - - - 0x01DC5F 07:DC4F: 65 0D     ADC ram_000D
C - - - - - 0x01DC61 07:DC51: 9D 00 01  STA ram_0100,X
bra_DC54:
loc_DC54:
C D 2 - - - 0x01DC64 07:DC54: BD 00 01  LDA ram_0100,X
C - - - - - 0x01DC67 07:DC57: 18        CLC
C - - - - - 0x01DC68 07:DC58: 7D 24 01  ADC ram_0124,X
C - - - - - 0x01DC6B 07:DC5B: 9D 00 01  STA ram_0100,X
C - - - - - 0x01DC6E 07:DC5E: CA        DEX
C - - - - - 0x01DC6F 07:DC5F: 30 03     BMI bra_DC64
C - - - - - 0x01DC71 07:DC61: 4C C3 DB  JMP loc_DBC3
bra_DC64:
loc_DC64:
C - - - - - 0x01DC74 07:DC64: A9 00     LDA #$00
C - - - - - 0x01DC76 07:DC66: AA        TAX
C - - - - - 0x01DC77 07:DC67: A8        TAY
loc_DC68:
C D 2 - - - 0x01DC78 07:DC68: CC AC 03  CPY ram_объем_дождя
C - - - - - 0x01DC7B 07:DC6B: F0 0C     BEQ bra_DC79
C - - - - - 0x01DC7D 07:DC6D: B0 0A     BCS bra_DC79
- - - - - - 0x01DC7F 07:DC6F: B9 0C 01  LDA ram_010C,Y
- - - - - - 0x01DC82 07:DC72: C5 56     CMP ram_ограничитель_Y_спрайтов
- - - - - - 0x01DC84 07:DC74: B0 03     BCS bra_DC79
- - - - - - 0x01DC86 07:DC76: 4C 7B DC  JMP loc_DC7B
bra_DC79:
C - - - - - 0x01DC89 07:DC79: A9 F9     LDA #$F9
loc_DC7B:
C - - - - - 0x01DC8B 07:DC7B: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DC8E 07:DC7E: A9 07     LDA #$07
C - - - - - 0x01DC90 07:DC80: 9D 01 02  STA ram_спрайт_тайл,X
C - - - - - 0x01DC93 07:DC83: B9 24 01  LDA ram_0124,Y
C - - - - - 0x01DC96 07:DC86: 30 05     BMI bra_DC8D
C - - - - - 0x01DC98 07:DC88: A9 01     LDA #$01
C - - - - - 0x01DC9A 07:DC8A: 4C 8F DC  JMP loc_DC8F
bra_DC8D:
C - - - - - 0x01DC9D 07:DC8D: A9 41     LDA #$41
loc_DC8F:
C D 2 - - - 0x01DC9F 07:DC8F: 9D 02 02  STA ram_спрайт_палитра,X
C - - - - - 0x01DCA2 07:DC92: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01DCA5 07:DC95: 9D 03 02  STA ram_спрайт_X,X
C - - - - - 0x01DCA8 07:DC98: E8        INX
C - - - - - 0x01DCA9 07:DC99: E8        INX
C - - - - - 0x01DCAA 07:DC9A: E8        INX
C - - - - - 0x01DCAB 07:DC9B: E8        INX
C - - - - - 0x01DCAC 07:DC9C: E0 30     CPX #$30
C - - - - - 0x01DCAE 07:DC9E: F0 04     BEQ bra_DCA4_RTS
C - - - - - 0x01DCB0 07:DCA0: C8        INY
C - - - - - 0x01DCB1 07:DCA1: 4C 68 DC  JMP loc_DC68
bra_DCA4_RTS:
C - - - - - 0x01DCB4 07:DCA4: 60        RTS



tbl_DCA5:
- D 2 - - - 0x01DCB5 07:DCA5: 6C        .byte $6C   ; 
- D 2 - - - 0x01DCB6 07:DCA6: 33        .byte $33   ; 
- D 2 - - - 0x01DCB7 07:DCA7: 64        .byte $64   ; 
- D 2 - - - 0x01DCB8 07:DCA8: 28        .byte $28   ; 
- D 2 - - - 0x01DCB9 07:DCA9: 5C        .byte $5C   ; 
- D 2 - - - 0x01DCBA 07:DCAA: 1D        .byte $1D   ; 
- D 2 - - - 0x01DCBB 07:DCAB: 50        .byte $50   ; 
- D 2 - - - 0x01DCBC 07:DCAC: 12        .byte $12   ; 
- D 2 - - - 0x01DCBD 07:DCAD: 46        .byte $46   ; 
- D 2 - - - 0x01DCBE 07:DCAE: 0A        .byte $0A   ; 
- D 2 - - - 0x01DCBF 07:DCAF: 3D        .byte $3D   ; 
- D 2 - - - 0x01DCC0 07:DCB0: 00        .byte $00   ; 



sub_DCB1:
C - - - - - 0x01DCC1 07:DCB1: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01DCC4 07:DCB4: 29 7F     AND #$7F
C - - - - - 0x01DCC6 07:DCB6: C9 05     CMP #$05
C - - - - - 0x01DCC8 07:DCB8: F0 05     BEQ bra_DCBF
C - - - - - 0x01DCCA 07:DCBA: C9 06     CMP #$06
C - - - - - 0x01DCCC 07:DCBC: F0 01     BEQ bra_DCBF
C - - - - - 0x01DCCE 07:DCBE: 60        RTS
bra_DCBF:
C - - - - - 0x01DCCF 07:DCBF: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01DCD2 07:DCC2: 10 58     BPL bra_DD1C
C - - - - - 0x01DCD4 07:DCC4: A0 0B     LDY #$0B
C - - - - - 0x01DCD6 07:DCC6: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01DCD9 07:DCC9: 29 7F     AND #$7F
C - - - - - 0x01DCDB 07:DCCB: C9 05     CMP #$05
C - - - - - 0x01DCDD 07:DCCD: D0 23     BNE bra_DCF2
bra_DCCF:
C - - - - - 0x01DCDF 07:DCCF: B9 DB DD  LDA tbl_DDDB,Y
C - - - - - 0x01DCE2 07:DCD2: 99 00 01  STA ram_0100,Y
C - - - - - 0x01DCE5 07:DCD5: B9 E7 DD  LDA tbl_DDE7,Y
C - - - - - 0x01DCE8 07:DCD8: ED EE 00  SBC a: ram_камера_Y_lo
C - - - - - 0x01DCEB 07:DCDB: 99 0C 01  STA ram_010C,Y
C - - - - - 0x01DCEE 07:DCDE: 99 18 01  STA ram_0118,Y
C - - - - - 0x01DCF1 07:DCE1: B9 F3 DD  LDA tbl_DDF3,Y
C - - - - - 0x01DCF4 07:DCE4: 99 24 01  STA ram_0124,Y
C - - - - - 0x01DCF7 07:DCE7: 88        DEY
C - - - - - 0x01DCF8 07:DCE8: 10 E5     BPL bra_DCCF
C - - - - - 0x01DCFA 07:DCEA: A9 05     LDA #$05
C - - - - - 0x01DCFC 07:DCEC: 8D 66 04  STA ram_погода_номер_эффекта
C - - - - - 0x01DCFF 07:DCEF: 4C 17 DD  JMP loc_DD17
bra_DCF2:
C - - - - - 0x01DD02 07:DCF2: B9 DB DD  LDA tbl_DDDB,Y
C - - - - - 0x01DD05 07:DCF5: 49 FF     EOR #$FF
C - - - - - 0x01DD07 07:DCF7: 38        SEC
C - - - - - 0x01DD08 07:DCF8: E9 07     SBC #$07
C - - - - - 0x01DD0A 07:DCFA: 99 00 01  STA ram_0100,Y
C - - - - - 0x01DD0D 07:DCFD: B9 E7 DD  LDA tbl_DDE7,Y
C - - - - - 0x01DD10 07:DD00: ED EE 00  SBC a: ram_камера_Y_lo
C - - - - - 0x01DD13 07:DD03: 99 0C 01  STA ram_010C,Y
C - - - - - 0x01DD16 07:DD06: 99 18 01  STA ram_0118,Y
C - - - - - 0x01DD19 07:DD09: B9 F3 DD  LDA tbl_DDF3,Y
C - - - - - 0x01DD1C 07:DD0C: 99 24 01  STA ram_0124,Y
C - - - - - 0x01DD1F 07:DD0F: 88        DEY
C - - - - - 0x01DD20 07:DD10: 10 E0     BPL bra_DCF2
C - - - - - 0x01DD22 07:DD12: A9 06     LDA #$06
C - - - - - 0x01DD24 07:DD14: 8D 66 04  STA ram_погода_номер_эффекта
loc_DD17:
C D 2 - - - 0x01DD27 07:DD17: A9 00     LDA #$00
C - - - - - 0x01DD29 07:DD19: 8D 3F 01  STA ram_длительность_погоды_ХЗ
bra_DD1C:
C - - - - - 0x01DD2C 07:DD1C: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01DD2E 07:DD1E: 10 03     BPL bra_DD23
- - - - - - 0x01DD30 07:DD20: 4C 91 DD  JMP loc_DD91
bra_DD23:
C - - - - - 0x01DD33 07:DD23: EE 3F 01  INC ram_длительность_погоды_ХЗ
C - - - - - 0x01DD36 07:DD26: AD 3F 01  LDA ram_длительность_погоды_ХЗ
C - - - - - 0x01DD39 07:DD29: 29 03     AND #$03
C - - - - - 0x01DD3B 07:DD2B: 85 0C     STA ram_000C
C - - - - - 0x01DD3D 07:DD2D: A0 00     LDY #$00
bra_DD2F:
C - - - - - 0x01DD3F 07:DD2F: 98        TYA
C - - - - - 0x01DD40 07:DD30: 29 03     AND #$03
C - - - - - 0x01DD42 07:DD32: 85 0D     STA ram_000D
C - - - - - 0x01DD44 07:DD34: C5 0C     CMP ram_000C
C - - - - - 0x01DD46 07:DD36: 90 26     BCC bra_DD5E
C - - - - - 0x01DD48 07:DD38: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x01DD4B 07:DD3B: 29 7F     AND #$7F
C - - - - - 0x01DD4D 07:DD3D: C9 05     CMP #$05
C - - - - - 0x01DD4F 07:DD3F: D0 10     BNE bra_DD51
C - - - - - 0x01DD51 07:DD41: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01DD54 07:DD44: 18        CLC
C - - - - - 0x01DD55 07:DD45: 69 02     ADC #$02
C - - - - - 0x01DD57 07:DD47: 90 02     BCC bra_DD4B
C - - - - - 0x01DD59 07:DD49: A9 FF     LDA #$FF
bra_DD4B:
C - - - - - 0x01DD5B 07:DD4B: 99 00 01  STA ram_0100,Y
C - - - - - 0x01DD5E 07:DD4E: 4C 5E DD  JMP loc_DD5E
bra_DD51:
C - - - - - 0x01DD61 07:DD51: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01DD64 07:DD54: 38        SEC
C - - - - - 0x01DD65 07:DD55: E9 02     SBC #$02
C - - - - - 0x01DD67 07:DD57: B0 02     BCS bra_DD5B
C - - - - - 0x01DD69 07:DD59: A9 00     LDA #$00
bra_DD5B:
C - - - - - 0x01DD6B 07:DD5B: 99 00 01  STA ram_0100,Y
bra_DD5E:
loc_DD5E:
C D 2 - - - 0x01DD6E 07:DD5E: A5 0D     LDA ram_000D
C - - - - - 0x01DD70 07:DD60: C5 0C     CMP ram_000C
C - - - - - 0x01DD72 07:DD62: D0 13     BNE bra_DD77
C - - - - - 0x01DD74 07:DD64: B9 24 01  LDA ram_0124,Y
C - - - - - 0x01DD77 07:DD67: 38        SEC
C - - - - - 0x01DD78 07:DD68: E9 01     SBC #$01
C - - - - - 0x01DD7A 07:DD6A: 99 24 01  STA ram_0124,Y
C - - - - - 0x01DD7D 07:DD6D: B9 0C 01  LDA ram_010C,Y
C - - - - - 0x01DD80 07:DD70: 38        SEC
C - - - - - 0x01DD81 07:DD71: F9 24 01  SBC ram_0124,Y
C - - - - - 0x01DD84 07:DD74: 99 0C 01  STA ram_010C,Y
bra_DD77:
C - - - - - 0x01DD87 07:DD77: B9 18 01  LDA ram_0118,Y
C - - - - - 0x01DD8A 07:DD7A: 38        SEC
C - - - - - 0x01DD8B 07:DD7B: E9 01     SBC #$01
C - - - - - 0x01DD8D 07:DD7D: 99 18 01  STA ram_0118,Y
C - - - - - 0x01DD90 07:DD80: 10 0A     BPL bra_DD8C
C - - - - - 0x01DD92 07:DD82: A9 05     LDA #$05
C - - - - - 0x01DD94 07:DD84: 99 24 01  STA ram_0124,Y
C - - - - - 0x01DD97 07:DD87: A9 70     LDA #$70
C - - - - - 0x01DD99 07:DD89: 99 18 01  STA ram_0118,Y
bra_DD8C:
C - - - - - 0x01DD9C 07:DD8C: C8        INY
C - - - - - 0x01DD9D 07:DD8D: C0 0C     CPY #$0C
C - - - - - 0x01DD9F 07:DD8F: D0 9E     BNE bra_DD2F
loc_DD91:
C - - - - - 0x01DDA1 07:DD91: A0 00     LDY #$00
C - - - - - 0x01DDA3 07:DD93: A2 00     LDX #$00
bra_DD95:
C - - - - - 0x01DDA5 07:DD95: B9 0C 01  LDA ram_010C,Y
C - - - - - 0x01DDA8 07:DD98: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01DDAB 07:DD9B: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01DDAE 07:DD9E: 9D 03 02  STA ram_спрайт_X,X
C - - - - - 0x01DDB1 07:DDA1: C0 09     CPY #$09
C - - - - - 0x01DDB3 07:DDA3: B0 10     BCS bra_DDB5
C - - - - - 0x01DDB5 07:DDA5: B9 18 01  LDA ram_0118,Y
C - - - - - 0x01DDB8 07:DDA8: 29 07     AND #$07
C - - - - - 0x01DDBA 07:DDAA: D0 09     BNE bra_DDB5
C - - - - - 0x01DDBC 07:DDAC: BD 02 02  LDA ram_спрайт_палитра,X
C - - - - - 0x01DDBF 07:DDAF: 18        CLC
C - - - - - 0x01DDC0 07:DDB0: 69 40     ADC #$40
C - - - - - 0x01DDC2 07:DDB2: 4C BA DD  JMP loc_DDBA
bra_DDB5:
C - - - - - 0x01DDC5 07:DDB5: BD 02 02  LDA ram_спрайт_палитра,X
C - - - - - 0x01DDC8 07:DDB8: 29 C1     AND #$C1
loc_DDBA:
C D 2 - - - 0x01DDCA 07:DDBA: 09 01     ORA #$01
C - - - - - 0x01DDCC 07:DDBC: 9D 02 02  STA ram_спрайт_палитра,X
C - - - - - 0x01DDCF 07:DDBF: B9 FF DD  LDA tbl_DDFF,Y
C - - - - - 0x01DDD2 07:DDC2: 9D 01 02  STA ram_спрайт_тайл,X
C - - - - - 0x01DDD5 07:DDC5: E8        INX
C - - - - - 0x01DDD6 07:DDC6: E8        INX
C - - - - - 0x01DDD7 07:DDC7: E8        INX
C - - - - - 0x01DDD8 07:DDC8: E8        INX
C - - - - - 0x01DDD9 07:DDC9: C8        INY
C - - - - - 0x01DDDA 07:DDCA: C0 0C     CPY #$0C
C - - - - - 0x01DDDC 07:DDCC: D0 C7     BNE bra_DD95
C - - - - - 0x01DDDE 07:DDCE: AD 3F 01  LDA ram_длительность_погоды_ХЗ
C - - - - - 0x01DDE1 07:DDD1: C9 38     CMP #$38
C - - - - - 0x01DDE3 07:DDD3: 90 05     BCC bra_DDDA_RTS
C - - - - - 0x01DDE5 07:DDD5: A9 00     LDA #$00
C - - - - - 0x01DDE7 07:DDD7: 8D 66 04  STA ram_погода_номер_эффекта
bra_DDDA_RTS:
C - - - - - 0x01DDEA 07:DDDA: 60        RTS



tbl_DDDB:
- D 2 - - - 0x01DDEB 07:DDDB: C8        .byte $C8   ; 
- D 2 - - - 0x01DDEC 07:DDDC: C8        .byte $C8   ; 
- D 2 - - - 0x01DDED 07:DDDD: D0        .byte $D0   ; 
- D 2 - - - 0x01DDEE 07:DDDE: D8        .byte $D8   ; 
- D 2 - - - 0x01DDEF 07:DDDF: CA        .byte $CA   ; 
- D 2 - - - 0x01DDF0 07:DDE0: C9        .byte $C9   ; 
- D 2 - - - 0x01DDF1 07:DDE1: D6        .byte $D6   ; 
- D 2 - - - 0x01DDF2 07:DDE2: D9        .byte $D9   ; 
- D 2 - - - 0x01DDF3 07:DDE3: CC        .byte $CC   ; 
- D 2 - - - 0x01DDF4 07:DDE4: C7        .byte $C7   ; 
- D 2 - - - 0x01DDF5 07:DDE5: D1        .byte $D1   ; 
- D 2 - - - 0x01DDF6 07:DDE6: D2        .byte $D2   ; 



tbl_DDE7:
- D 2 - - - 0x01DDF7 07:DDE7: 60        .byte $60   ; 
- D 2 - - - 0x01DDF8 07:DDE8: 68        .byte $68   ; 
- D 2 - - - 0x01DDF9 07:DDE9: 70        .byte $70   ; 
- D 2 - - - 0x01DDFA 07:DDEA: 78        .byte $78   ; 
- D 2 - - - 0x01DDFB 07:DDEB: 84        .byte $84   ; 
- D 2 - - - 0x01DDFC 07:DDEC: 82        .byte $82   ; 
- D 2 - - - 0x01DDFD 07:DDED: 86        .byte $86   ; 
- D 2 - - - 0x01DDFE 07:DDEE: 87        .byte $87   ; 
- D 2 - - - 0x01DDFF 07:DDEF: 78        .byte $78   ; 
- D 2 - - - 0x01DE00 07:DDF0: 72        .byte $72   ; 
- D 2 - - - 0x01DE01 07:DDF1: 90        .byte $90   ; 
- D 2 - - - 0x01DE02 07:DDF2: 92        .byte $92   ; 



tbl_DDF3:
- D 2 - - - 0x01DE03 07:DDF3: 03        .byte $03   ; 
- D 2 - - - 0x01DE04 07:DDF4: 0A        .byte $0A   ; 
- D 2 - - - 0x01DE05 07:DDF5: 07        .byte $07   ; 
- D 2 - - - 0x01DE06 07:DDF6: 05        .byte $05   ; 
- D 2 - - - 0x01DE07 07:DDF7: 09        .byte $09   ; 
- D 2 - - - 0x01DE08 07:DDF8: 05        .byte $05   ; 
- D 2 - - - 0x01DE09 07:DDF9: 02        .byte $02   ; 
- D 2 - - - 0x01DE0A 07:DDFA: 08        .byte $08   ; 
- D 2 - - - 0x01DE0B 07:DDFB: 02        .byte $02   ; 
- D 2 - - - 0x01DE0C 07:DDFC: 03        .byte $03   ; 
- D 2 - - - 0x01DE0D 07:DDFD: 04        .byte $04   ; 
- D 2 - - - 0x01DE0E 07:DDFE: 02        .byte $02   ; 



tbl_DDFF:
- D 2 - - - 0x01DE0F 07:DDFF: CA        .byte $CA   ; 
- D 2 - - - 0x01DE10 07:DE00: CA        .byte $CA   ; 
- D 2 - - - 0x01DE11 07:DE01: CA        .byte $CA   ; 
- D 2 - - - 0x01DE12 07:DE02: CA        .byte $CA   ; 
- D 2 - - - 0x01DE13 07:DE03: EA        .byte $EA   ; 
- D 2 - - - 0x01DE14 07:DE04: EA        .byte $EA   ; 
- D 2 - - - 0x01DE15 07:DE05: CA        .byte $CA   ; 
- D 2 - - - 0x01DE16 07:DE06: CA        .byte $CA   ; 
- D 2 - - - 0x01DE17 07:DE07: CA        .byte $CA   ; 
- D 2 - - - 0x01DE18 07:DE08: CA        .byte $CA   ; 
- D 2 - - - 0x01DE19 07:DE09: EA        .byte $EA   ; 
- D 2 - - - 0x01DE1A 07:DE0A: CA        .byte $CA   ; 



sub_DE0B:
C - - - - - 0x01DE1B 07:DE0B: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01DE1E 07:DE0E: 8D BC 05  STA ram_банк_фона
C - - - - - 0x01DE21 07:DE11: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01DE24 07:DE14: C9 02     CMP #$02
C - - - - - 0x01DE26 07:DE16: B0 17     BCS bra_DE2F
C - - - - - 0x01DE28 07:DE18: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01DE2B 07:DE1B: 18        CLC
C - - - - - 0x01DE2C 07:DE1C: 69 04     ADC #$04
C - - - - - 0x01DE2E 07:DE1E: CD BD 05  CMP ram_банк_фона + 1
C - - - - - 0x01DE31 07:DE21: F0 23     BEQ bra_DE46_RTS
C - - - - - 0x01DE33 07:DE23: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01DE36 07:DE26: 18        CLC
C - - - - - 0x01DE37 07:DE27: 69 04     ADC #$04
C - - - - - 0x01DE39 07:DE29: 8D BD 05  STA ram_банк_фона + 1
C - - - - - 0x01DE3C 07:DE2C: 4C 43 DE  JMP loc_DE43
bra_DE2F:
C - - - - - 0x01DE3F 07:DE2F: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01DE42 07:DE32: 18        CLC
C - - - - - 0x01DE43 07:DE33: 69 02     ADC #$02
C - - - - - 0x01DE45 07:DE35: CD BD 05  CMP ram_банк_фона + 1
C - - - - - 0x01DE48 07:DE38: F0 0C     BEQ bra_DE46_RTS
C - - - - - 0x01DE4A 07:DE3A: AD F2 05  LDA ram_поле_банк_фона
C - - - - - 0x01DE4D 07:DE3D: 18        CLC
C - - - - - 0x01DE4E 07:DE3E: 69 02     ADC #$02
C - - - - - 0x01DE50 07:DE40: 8D BD 05  STA ram_банк_фона + 1
loc_DE43:
C D 2 - - - 0x01DE53 07:DE43: 20 7D EE  JSR sub_EE7D
bra_DE46_RTS:
C - - - - - 0x01DE56 07:DE46: 60        RTS



sub_DE47:
C - - - - - 0x01DE57 07:DE47: AD FF BF  LDA $BFFF
C - - - - - 0x01DE5A 07:DE4A: 48        PHA
C - - - - - 0x01DE5B 07:DE4B: AD F3 05  LDA ram_номер_prg_банка
C - - - - - 0x01DE5E 07:DE4E: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01DE61 07:DE51: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01DE63 07:DE53: C9 02     CMP #$02
C - - - - - 0x01DE65 07:DE55: F0 07     BEQ bra_DE5E
C - - - - - 0x01DE67 07:DE57: C9 06     CMP #$06
C - - - - - 0x01DE69 07:DE59: F0 03     BEQ bra_DE5E
C - - - - - 0x01DE6B 07:DE5B: 4C D3 DE  JMP loc_DED3
bra_DE5E:
C - - - - - 0x01DE6E 07:DE5E: AD FE 05  LDA ram_сторона_ветра_дождя
C - - - - - 0x01DE71 07:DE61: 4A        LSR
C - - - - - 0x01DE72 07:DE62: 4A        LSR
C - - - - - 0x01DE73 07:DE63: 4A        LSR
C - - - - - 0x01DE74 07:DE64: 4A        LSR
C - - - - - 0x01DE75 07:DE65: 4A        LSR
C - - - - - 0x01DE76 07:DE66: A8        TAY
C - - - - - 0x01DE77 07:DE67: B9 53 E1  LDA tbl_E153,Y
C - - - - - 0x01DE7A 07:DE6A: 8D AA 05  STA ram_тайл_статусбара + 5
C - - - - - 0x01DE7D 07:DE6D: AD FD 05  LDA ram_сила_ветра
C - - - - - 0x01DE80 07:DE70: F0 09     BEQ bra_DE7B
C - - - - - 0x01DE82 07:DE72: 18        CLC
C - - - - - 0x01DE83 07:DE73: 69 8F     ADC #$8F
C - - - - - 0x01DE85 07:DE75: 8D A9 05  STA ram_тайл_статусбара + 4
C - - - - - 0x01DE88 07:DE78: 4C 83 DE  JMP loc_DE83
bra_DE7B:
C - - - - - 0x01DE8B 07:DE7B: A9 0F     LDA #$0F
C - - - - - 0x01DE8D 07:DE7D: 8D A9 05  STA ram_тайл_статусбара + 4
C - - - - - 0x01DE90 07:DE80: 8D AA 05  STA ram_тайл_статусбара + 5
loc_DE83:
C D 2 - - - 0x01DE93 07:DE83: AD C1 05  LDA ram_тайм_минуты
C - - - - - 0x01DE96 07:DE86: 0D C0 05  ORA ram_тайм_секунды_десятки
C - - - - - 0x01DE99 07:DE89: 0D BF 05  ORA ram_тайм_секунды_единицы
C - - - - - 0x01DE9C 07:DE8C: D0 25     BNE bra_DEB3
C - - - - - 0x01DE9E 07:DE8E: AD C2 05  LDA ram_loss_терции
C - - - - - 0x01DEA1 07:DE91: 0D C3 05  ORA ram_loss_секунды_единицы
C - - - - - 0x01DEA4 07:DE94: 0D C4 05  ORA ram_loss_секунды_десятки
C - - - - - 0x01DEA7 07:DE97: 0D C5 05  ORA ram_loss_минуты
C - - - - - 0x01DEAA 07:DE9A: F0 17     BEQ bra_DEB3
C - - - - - 0x01DEAC 07:DE9C: A9 4D     LDA #$4D
C - - - - - 0x01DEAE 07:DE9E: 8D A8 05  STA ram_тайл_статусбара + 3
C - - - - - 0x01DEB1 07:DEA1: A9 80     LDA #$80
C - - - - - 0x01DEB3 07:DEA3: 8D A7 05  STA ram_тайл_статусбара + 2
C - - - - - 0x01DEB6 07:DEA6: A9 4E     LDA #$4E
C - - - - - 0x01DEB8 07:DEA8: 8D A6 05  STA ram_тайл_статусбара + 1
C - - - - - 0x01DEBB 07:DEAB: A9 4E     LDA #$4E
C - - - - - 0x01DEBD 07:DEAD: 8D A5 05  STA ram_тайл_статусбара
C - - - - - 0x01DEC0 07:DEB0: 4C D3 DE  JMP loc_DED3
bra_DEB3:
C - - - - - 0x01DEC3 07:DEB3: AD C1 05  LDA ram_тайм_минуты
C - - - - - 0x01DEC6 07:DEB6: 18        CLC
C - - - - - 0x01DEC7 07:DEB7: 69 80     ADC #$80
C - - - - - 0x01DEC9 07:DEB9: 8D A8 05  STA ram_тайл_статусбара + 3
C - - - - - 0x01DECC 07:DEBC: A9 4F     LDA #$4F
C - - - - - 0x01DECE 07:DEBE: 8D A7 05  STA ram_тайл_статусбара + 2
C - - - - - 0x01DED1 07:DEC1: AD C0 05  LDA ram_тайм_секунды_десятки
C - - - - - 0x01DED4 07:DEC4: 18        CLC
C - - - - - 0x01DED5 07:DEC5: 69 80     ADC #$80
C - - - - - 0x01DED7 07:DEC7: 8D A6 05  STA ram_тайл_статусбара + 1
C - - - - - 0x01DEDA 07:DECA: AD BF 05  LDA ram_тайм_секунды_единицы
C - - - - - 0x01DEDD 07:DECD: 18        CLC
C - - - - - 0x01DEDE 07:DECE: 69 80     ADC #$80
C - - - - - 0x01DEE0 07:DED0: 8D A5 05  STA ram_тайл_статусбара
loc_DED3:
C D 2 - - - 0x01DEE3 07:DED3: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01DEE6 07:DED6: 38        SEC
C - - - - - 0x01DEE7 07:DED7: ED F0 00  SBC a: ram_копия_камеры_X_lo
C - - - - - 0x01DEEA 07:DEDA: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01DEED 07:DEDD: ED F1 00  SBC a: ram_копия_камеры_X_hi
C - - - - - 0x01DEF0 07:DEE0: 85 1D     STA ram_001D
C - - - - - 0x01DEF2 07:DEE2: 30 14     BMI bra_DEF8
C - - - - - 0x01DEF4 07:DEE4: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01DEF7 07:DEE7: 29 F8     AND #$F8
C - - - - - 0x01DEF9 07:DEE9: 85 27     STA ram_0027
C - - - - - 0x01DEFB 07:DEEB: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01DEFE 07:DEEE: 09 07     ORA #$07
C - - - - - 0x01DF00 07:DEF0: 38        SEC
C - - - - - 0x01DF01 07:DEF1: E5 27     SBC ram_0027
C - - - - - 0x01DF03 07:DEF3: 30 1D     BMI bra_DF12
C - - - - - 0x01DF05 07:DEF5: 4C 4E E1  JMP loc_E14E
bra_DEF8:
C - - - - - 0x01DF08 07:DEF8: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01DF0B 07:DEFB: 38        SEC
C - - - - - 0x01DF0C 07:DEFC: E9 01     SBC #$01
C - - - - - 0x01DF0E 07:DEFE: 29 F8     AND #$F8
C - - - - - 0x01DF10 07:DF00: 85 27     STA ram_0027
C - - - - - 0x01DF12 07:DF02: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01DF15 07:DF05: 38        SEC
C - - - - - 0x01DF16 07:DF06: E9 01     SBC #$01
C - - - - - 0x01DF18 07:DF08: 09 07     ORA #$07
C - - - - - 0x01DF1A 07:DF0A: 38        SEC
C - - - - - 0x01DF1B 07:DF0B: E5 27     SBC ram_0027
C - - - - - 0x01DF1D 07:DF0D: 30 15     BMI bra_DF24
C - - - - - 0x01DF1F 07:DF0F: 4C 4E E1  JMP loc_E14E
bra_DF12:
C - - - - - 0x01DF22 07:DF12: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01DF25 07:DF15: 18        CLC
C - - - - - 0x01DF26 07:DF16: 69 08     ADC #$08
C - - - - - 0x01DF28 07:DF18: 85 1E     STA ram_001E
C - - - - - 0x01DF2A 07:DF1A: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01DF2D 07:DF1D: 69 00     ADC #$00
C - - - - - 0x01DF2F 07:DF1F: 85 1F     STA ram_001F
C - - - - - 0x01DF31 07:DF21: 4C 33 DF  JMP loc_DF33
bra_DF24:
C - - - - - 0x01DF34 07:DF24: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01DF37 07:DF27: 18        CLC
C - - - - - 0x01DF38 07:DF28: 69 FF     ADC #$FF
C - - - - - 0x01DF3A 07:DF2A: 85 1E     STA ram_001E
C - - - - - 0x01DF3C 07:DF2C: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01DF3F 07:DF2F: 69 00     ADC #$00
C - - - - - 0x01DF41 07:DF31: 85 1F     STA ram_001F
loc_DF33:
C D 2 - - - 0x01DF43 07:DF33: A5 1E     LDA ram_001E
C - - - - - 0x01DF45 07:DF35: 4A        LSR
C - - - - - 0x01DF46 07:DF36: 4A        LSR
C - - - - - 0x01DF47 07:DF37: 4A        LSR
C - - - - - 0x01DF48 07:DF38: 8D 8E 05  STA ram_байт_2006_lo_NMT_2
C - - - - - 0x01DF4B 07:DF3B: 85 1E     STA ram_001E
C - - - - - 0x01DF4D 07:DF3D: 18        CLC
C - - - - - 0x01DF4E 07:DF3E: 69 80     ADC #$80
C - - - - - 0x01DF50 07:DF40: 8D 8D 05  STA ram_байт_2006_lo_NMT_1
C - - - - - 0x01DF53 07:DF43: A4 1F     LDY ram_001F
C - - - - - 0x01DF55 07:DF45: 20 5B E1  JSR sub_E15B
C - - - - - 0x01DF58 07:DF48: A5 1F     LDA ram_001F
C - - - - - 0x01DF5A 07:DF4A: 0A        ASL
C - - - - - 0x01DF5B 07:DF4B: 18        CLC
C - - - - - 0x01DF5C 07:DF4C: 65 28     ADC ram_0028
C - - - - - 0x01DF5E 07:DF4E: A8        TAY
C - - - - - 0x01DF5F 07:DF4F: B1 40     LDA (ram_0040),Y
C - - - - - 0x01DF61 07:DF51: 85 2C     STA ram_002C
C - - - - - 0x01DF63 07:DF53: C8        INY
C - - - - - 0x01DF64 07:DF54: B1 40     LDA (ram_0040),Y
C - - - - - 0x01DF66 07:DF56: 85 2D     STA ram_002D
C - - - - - 0x01DF68 07:DF58: A2 00     LDX #$00
bra_DF5A:
C - - - - - 0x01DF6A 07:DF5A: 8A        TXA
C - - - - - 0x01DF6B 07:DF5B: 18        CLC
C - - - - - 0x01DF6C 07:DF5C: 69 04     ADC #$04
C - - - - - 0x01DF6E 07:DF5E: 0A        ASL
C - - - - - 0x01DF6F 07:DF5F: A8        TAY
C - - - - - 0x01DF70 07:DF60: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01DF72 07:DF62: 85 2E     STA ram_002E
C - - - - - 0x01DF74 07:DF64: C8        INY
C - - - - - 0x01DF75 07:DF65: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01DF77 07:DF67: 85 2F     STA ram_002F
C - - - - - 0x01DF79 07:DF69: A4 1E     LDY ram_001E
C - - - - - 0x01DF7B 07:DF6B: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01DF7D 07:DF6D: 9D 42 01  STA ram_тайлы_поля_NMT_1,X
C - - - - - 0x01DF80 07:DF70: E8        INX
C - - - - - 0x01DF81 07:DF71: E0 1A     CPX #$1A
C - - - - - 0x01DF83 07:DF73: D0 E5     BNE bra_DF5A
C - - - - - 0x01DF85 07:DF75: A5 1F     LDA ram_001F
C - - - - - 0x01DF87 07:DF77: 18        CLC
C - - - - - 0x01DF88 07:DF78: 69 04     ADC #$04
C - - - - - 0x01DF8A 07:DF7A: 85 1F     STA ram_001F
C - - - - - 0x01DF8C 07:DF7C: A4 1F     LDY ram_001F
C - - - - - 0x01DF8E 07:DF7E: 20 5B E1  JSR sub_E15B
C - - - - - 0x01DF91 07:DF81: A5 1F     LDA ram_001F
C - - - - - 0x01DF93 07:DF83: 0A        ASL
C - - - - - 0x01DF94 07:DF84: 18        CLC
C - - - - - 0x01DF95 07:DF85: 65 28     ADC ram_0028
C - - - - - 0x01DF97 07:DF87: A8        TAY
C - - - - - 0x01DF98 07:DF88: B1 40     LDA (ram_0040),Y
C - - - - - 0x01DF9A 07:DF8A: 85 2C     STA ram_002C
C - - - - - 0x01DF9C 07:DF8C: C8        INY
C - - - - - 0x01DF9D 07:DF8D: B1 40     LDA (ram_0040),Y
C - - - - - 0x01DF9F 07:DF8F: 85 2D     STA ram_002D
C - - - - - 0x01DFA1 07:DF91: A2 00     LDX #$00
bra_DF93_цикл:
C - - - - - 0x01DFA3 07:DF93: 8A        TXA
C - - - - - 0x01DFA4 07:DF94: 0A        ASL
C - - - - - 0x01DFA5 07:DF95: A8        TAY
C - - - - - 0x01DFA6 07:DF96: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01DFA8 07:DF98: 85 2E     STA ram_002E
C - - - - - 0x01DFAA 07:DF9A: C8        INY
C - - - - - 0x01DFAB 07:DF9B: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01DFAD 07:DF9D: 85 2F     STA ram_002F
C - - - - - 0x01DFAF 07:DF9F: A4 1E     LDY ram_001E
C - - - - - 0x01DFB1 07:DFA1: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01DFB3 07:DFA3: 9D 5C 01  STA ram_тайлы_поля_NMT_2,X
C - - - - - 0x01DFB6 07:DFA6: E8        INX
C - - - - - 0x01DFB7 07:DFA7: E0 10     CPX #$10
C - - - - - 0x01DFB9 07:DFA9: D0 E8     BNE bra_DF93_цикл
C - - - - - 0x01DFBB 07:DFAB: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01DFBE 07:DFAE: 09 80     ORA #$80
C - - - - - 0x01DFC0 07:DFB0: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01DFC3 07:DFB3: AD 8D 05  LDA ram_байт_2006_lo_NMT_1
C - - - - - 0x01DFC6 07:DFB6: 29 01     AND #$01
C - - - - - 0x01DFC8 07:DFB8: D0 03     BNE bra_DFBD
C - - - - - 0x01DFCA 07:DFBA: 4C 4E E1  JMP loc_E14E
bra_DFBD:
C - - - - - 0x01DFCD 07:DFBD: A5 1D     LDA ram_001D
C - - - - - 0x01DFCF 07:DFBF: 30 28     BMI bra_DFE9
C - - - - - 0x01DFD1 07:DFC1: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01DFD4 07:DFC4: 85 1E     STA ram_001E
C - - - - - 0x01DFD6 07:DFC6: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01DFD9 07:DFC9: 85 1F     STA ram_001F
C - - - - - 0x01DFDB 07:DFCB: 85 21     STA ram_0021
C - - - - - 0x01DFDD 07:DFCD: A5 1E     LDA ram_001E
C - - - - - 0x01DFDF 07:DFCF: 4A        LSR
C - - - - - 0x01DFE0 07:DFD0: 4A        LSR
C - - - - - 0x01DFE1 07:DFD1: 4A        LSR
C - - - - - 0x01DFE2 07:DFD2: 4A        LSR
C - - - - - 0x01DFE3 07:DFD3: 4A        LSR
C - - - - - 0x01DFE4 07:DFD4: 85 1E     STA ram_001E
C - - - - - 0x01DFE6 07:DFD6: 85 20     STA ram_0020
C - - - - - 0x01DFE8 07:DFD8: 85 22     STA ram_0022
C - - - - - 0x01DFEA 07:DFDA: AD 8D 05  LDA ram_байт_2006_lo_NMT_1
C - - - - - 0x01DFED 07:DFDD: 29 02     AND #$02
C - - - - - 0x01DFEF 07:DFDF: D0 03     BNE bra_DFE4
C - - - - - 0x01DFF1 07:DFE1: 4C 1A E0  JMP loc_E01A
bra_DFE4:
C - - - - - 0x01DFF4 07:DFE4: E6 1F     INC ram_001F
C - - - - - 0x01DFF6 07:DFE6: 4C 1A E0  JMP loc_E01A
bra_DFE9:
C - - - - - 0x01DFF9 07:DFE9: AD F0 00  LDA a: ram_копия_камеры_X_lo
C - - - - - 0x01DFFC 07:DFEC: 38        SEC
C - - - - - 0x01DFFD 07:DFED: E9 01     SBC #$01
C - - - - - 0x01DFFF 07:DFEF: 85 27     STA ram_0027
C - - - - - 0x01E001 07:DFF1: AD F1 00  LDA a: ram_копия_камеры_X_hi
C - - - - - 0x01E004 07:DFF4: E9 00     SBC #$00
C - - - - - 0x01E006 07:DFF6: 85 1F     STA ram_001F
C - - - - - 0x01E008 07:DFF8: 85 21     STA ram_0021
C - - - - - 0x01E00A 07:DFFA: A5 27     LDA ram_0027
C - - - - - 0x01E00C 07:DFFC: 4A        LSR
C - - - - - 0x01E00D 07:DFFD: 4A        LSR
C - - - - - 0x01E00E 07:DFFE: 4A        LSR
C - - - - - 0x01E00F 07:DFFF: 4A        LSR
C D 3 - - - 0x01E010 07:E000: 4A        LSR
C D 3 - - - 0x01E011 07:E001: 85 1E     STA ram_001E
C - - - - - 0x01E013 07:E003: 85 20     STA ram_0020
C - - - - - 0x01E015 07:E005: 85 22     STA ram_0022
C - - - - - 0x01E017 07:E007: AD 8D 05  LDA ram_байт_2006_lo_NMT_1
C - - - - - 0x01E01A 07:E00A: 29 02     AND #$02
C - - - - - 0x01E01C 07:E00C: D0 05     BNE bra_E013
C - - - - - 0x01E01E 07:E00E: E6 21     INC ram_0021
C - - - - - 0x01E020 07:E010: 4C 1A E0  JMP loc_E01A
bra_E013:
C - - - - - 0x01E023 07:E013: E6 1F     INC ram_001F
C - - - - - 0x01E025 07:E015: E6 21     INC ram_0021
; bzk
C - - - - - 0x01E027 07:E017: 4C 1A E0  JMP loc_E01A
loc_E01A:
C D 3 - - - 0x01E02A 07:E01A: AD 8D 05  LDA ram_байт_2006_lo_NMT_1
C - - - - - 0x01E02D 07:E01D: 29 02     AND #$02
C - - - - - 0x01E02F 07:E01F: D0 0B     BNE bra_E02C
C - - - - - 0x01E031 07:E021: A9 CC     LDA #$CC
C - - - - - 0x01E033 07:E023: 85 23     STA ram_0023
C - - - - - 0x01E035 07:E025: A9 33     LDA #$33
C - - - - - 0x01E037 07:E027: 85 24     STA ram_0024
C - - - - - 0x01E039 07:E029: 4C 34 E0  JMP loc_E034
bra_E02C:
C - - - - - 0x01E03C 07:E02C: A9 33     LDA #$33
C - - - - - 0x01E03E 07:E02E: 85 23     STA ram_0023
C - - - - - 0x01E040 07:E030: A9 CC     LDA #$CC
C - - - - - 0x01E042 07:E032: 85 24     STA ram_0024
loc_E034:
C D 3 - - - 0x01E044 07:E034: AD E5 05  LDA ram_покрытие_поля_лужами
C - - - - - 0x01E047 07:E037: 0A        ASL
C - - - - - 0x01E048 07:E038: A8        TAY
C - - - - - 0x01E049 07:E039: B9 1C 80  LDA $801C,Y
C - - - - - 0x01E04C 07:E03C: 85 2C     STA ram_002C
C - - - - - 0x01E04E 07:E03E: B9 1D 80  LDA $801D,Y
C - - - - - 0x01E051 07:E041: 85 2D     STA ram_002D
C - - - - - 0x01E053 07:E043: A4 1F     LDY ram_001F
C - - - - - 0x01E055 07:E045: 20 5B E1  JSR sub_E15B
C - - - - - 0x01E058 07:E048: A5 1F     LDA ram_001F
C - - - - - 0x01E05A 07:E04A: 0A        ASL
C - - - - - 0x01E05B 07:E04B: 18        CLC
C - - - - - 0x01E05C 07:E04C: 65 28     ADC ram_0028
C - - - - - 0x01E05E 07:E04E: A8        TAY
C - - - - - 0x01E05F 07:E04F: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E061 07:E051: 85 2E     STA ram_002E
C - - - - - 0x01E063 07:E053: C8        INY
C - - - - - 0x01E064 07:E054: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E066 07:E056: 85 2F     STA ram_002F
C - - - - - 0x01E068 07:E058: A2 00     LDX #$00
C - - - - - 0x01E06A 07:E05A: A5 1E     LDA ram_001E
C - - - - - 0x01E06C 07:E05C: 85 26     STA ram_0026
bra_E05E:
C - - - - - 0x01E06E 07:E05E: A5 26     LDA ram_0026
C - - - - - 0x01E070 07:E060: 18        CLC
C - - - - - 0x01E071 07:E061: 69 08     ADC #$08
C - - - - - 0x01E073 07:E063: 85 26     STA ram_0026
C - - - - - 0x01E075 07:E065: A4 26     LDY ram_0026
C - - - - - 0x01E077 07:E067: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01E079 07:E069: 25 23     AND ram_0023
C - - - - - 0x01E07B 07:E06B: 9D 9A 05  STA ram_059A,X
C - - - - - 0x01E07E 07:E06E: E8        INX
C - - - - - 0x01E07F 07:E06F: E0 07     CPX #$07
C - - - - - 0x01E081 07:E071: D0 EB     BNE bra_E05E
C - - - - - 0x01E083 07:E073: A5 1F     LDA ram_001F
C - - - - - 0x01E085 07:E075: 18        CLC
C - - - - - 0x01E086 07:E076: 69 04     ADC #$04
C - - - - - 0x01E088 07:E078: 85 1F     STA ram_001F
C - - - - - 0x01E08A 07:E07A: A8        TAY
C - - - - - 0x01E08B 07:E07B: 20 5B E1  JSR sub_E15B
C - - - - - 0x01E08E 07:E07E: A5 1F     LDA ram_001F
C - - - - - 0x01E090 07:E080: 0A        ASL
C - - - - - 0x01E091 07:E081: 18        CLC
C - - - - - 0x01E092 07:E082: 65 28     ADC ram_0028
C - - - - - 0x01E094 07:E084: A8        TAY
C - - - - - 0x01E095 07:E085: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E097 07:E087: 85 2E     STA ram_002E
C - - - - - 0x01E099 07:E089: C8        INY
C - - - - - 0x01E09A 07:E08A: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E09C 07:E08C: 85 2F     STA ram_002F
C - - - - - 0x01E09E 07:E08E: A2 00     LDX #$00
C - - - - - 0x01E0A0 07:E090: A5 1E     LDA ram_001E
C - - - - - 0x01E0A2 07:E092: 85 26     STA ram_0026
bra_E094:
C - - - - - 0x01E0A4 07:E094: A4 26     LDY ram_0026
C - - - - - 0x01E0A6 07:E096: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01E0A8 07:E098: 25 23     AND ram_0023
C - - - - - 0x01E0AA 07:E09A: 9D A1 05  STA ram_05A1,X
C - - - - - 0x01E0AD 07:E09D: A5 26     LDA ram_0026
C - - - - - 0x01E0AF 07:E09F: 18        CLC
C - - - - - 0x01E0B0 07:E0A0: 69 08     ADC #$08
C - - - - - 0x01E0B2 07:E0A2: 85 26     STA ram_0026
C - - - - - 0x01E0B4 07:E0A4: E8        INX
C - - - - - 0x01E0B5 07:E0A5: E0 04     CPX #$04
C - - - - - 0x01E0B7 07:E0A7: D0 EB     BNE bra_E094
C - - - - - 0x01E0B9 07:E0A9: A4 21     LDY ram_0021
C - - - - - 0x01E0BB 07:E0AB: 20 5B E1  JSR sub_E15B
C - - - - - 0x01E0BE 07:E0AE: A5 21     LDA ram_0021
C - - - - - 0x01E0C0 07:E0B0: 0A        ASL
C - - - - - 0x01E0C1 07:E0B1: 18        CLC
C - - - - - 0x01E0C2 07:E0B2: 65 28     ADC ram_0028
C - - - - - 0x01E0C4 07:E0B4: A8        TAY
C - - - - - 0x01E0C5 07:E0B5: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E0C7 07:E0B7: 85 2E     STA ram_002E
C - - - - - 0x01E0C9 07:E0B9: C8        INY
C - - - - - 0x01E0CA 07:E0BA: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E0CC 07:E0BC: 85 2F     STA ram_002F
C - - - - - 0x01E0CE 07:E0BE: A2 00     LDX #$00
C - - - - - 0x01E0D0 07:E0C0: A5 1E     LDA ram_001E
C - - - - - 0x01E0D2 07:E0C2: 85 26     STA ram_0026
bra_E0C4:
C - - - - - 0x01E0D4 07:E0C4: A5 26     LDA ram_0026
C - - - - - 0x01E0D6 07:E0C6: 18        CLC
C - - - - - 0x01E0D7 07:E0C7: 69 08     ADC #$08
C - - - - - 0x01E0D9 07:E0C9: 85 26     STA ram_0026
C - - - - - 0x01E0DB 07:E0CB: A4 26     LDY ram_0026
C - - - - - 0x01E0DD 07:E0CD: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01E0DF 07:E0CF: 25 24     AND ram_0024
C - - - - - 0x01E0E1 07:E0D1: 1D 9A 05  ORA ram_059A,X
C - - - - - 0x01E0E4 07:E0D4: 9D 9A 05  STA ram_059A,X
C - - - - - 0x01E0E7 07:E0D7: E8        INX
C - - - - - 0x01E0E8 07:E0D8: E0 07     CPX #$07
C - - - - - 0x01E0EA 07:E0DA: D0 E8     BNE bra_E0C4
C - - - - - 0x01E0EC 07:E0DC: A5 21     LDA ram_0021
C - - - - - 0x01E0EE 07:E0DE: 18        CLC
C - - - - - 0x01E0EF 07:E0DF: 69 04     ADC #$04
C - - - - - 0x01E0F1 07:E0E1: 85 21     STA ram_0021
C - - - - - 0x01E0F3 07:E0E3: A4 21     LDY ram_0021
C - - - - - 0x01E0F5 07:E0E5: 20 5B E1  JSR sub_E15B
C - - - - - 0x01E0F8 07:E0E8: A5 21     LDA ram_0021
C - - - - - 0x01E0FA 07:E0EA: 0A        ASL
C - - - - - 0x01E0FB 07:E0EB: 18        CLC
C - - - - - 0x01E0FC 07:E0EC: 65 28     ADC ram_0028
C - - - - - 0x01E0FE 07:E0EE: A8        TAY
C - - - - - 0x01E0FF 07:E0EF: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E101 07:E0F1: 85 2E     STA ram_002E
C - - - - - 0x01E103 07:E0F3: C8        INY
C - - - - - 0x01E104 07:E0F4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E106 07:E0F6: 85 2F     STA ram_002F
C - - - - - 0x01E108 07:E0F8: A2 00     LDX #$00
C - - - - - 0x01E10A 07:E0FA: A5 1E     LDA ram_001E
C - - - - - 0x01E10C 07:E0FC: 85 26     STA ram_0026
bra_E0FE:
C - - - - - 0x01E10E 07:E0FE: A4 26     LDY ram_0026
C - - - - - 0x01E110 07:E100: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01E112 07:E102: 25 24     AND ram_0024
C - - - - - 0x01E114 07:E104: 1D A1 05  ORA ram_05A1,X
C - - - - - 0x01E117 07:E107: 9D A1 05  STA ram_05A1,X
C - - - - - 0x01E11A 07:E10A: A5 26     LDA ram_0026
C - - - - - 0x01E11C 07:E10C: 18        CLC
C - - - - - 0x01E11D 07:E10D: 69 08     ADC #$08
C - - - - - 0x01E11F 07:E10F: 85 26     STA ram_0026
C - - - - - 0x01E121 07:E111: E8        INX
C - - - - - 0x01E122 07:E112: E0 04     CPX #$04
C - - - - - 0x01E124 07:E114: D0 E8     BNE bra_E0FE
C - - - - - 0x01E126 07:E116: A5 22     LDA ram_0022
C - - - - - 0x01E128 07:E118: 18        CLC
C - - - - - 0x01E129 07:E119: 69 C8     ADC #$C8
C - - - - - 0x01E12B 07:E11B: 85 25     STA ram_0025
C - - - - - 0x01E12D 07:E11D: A2 00     LDX #$00
bra_E11F:
C - - - - - 0x01E12F 07:E11F: A5 25     LDA ram_0025
C - - - - - 0x01E131 07:E121: 9D 8F 05  STA ram_058F,X
C - - - - - 0x01E134 07:E124: 18        CLC
C - - - - - 0x01E135 07:E125: 69 08     ADC #$08
C - - - - - 0x01E137 07:E127: 85 25     STA ram_0025
C - - - - - 0x01E139 07:E129: E8        INX
C - - - - - 0x01E13A 07:E12A: E0 07     CPX #$07
C - - - - - 0x01E13C 07:E12C: D0 F1     BNE bra_E11F
C - - - - - 0x01E13E 07:E12E: A5 22     LDA ram_0022
C - - - - - 0x01E140 07:E130: 18        CLC
C - - - - - 0x01E141 07:E131: 69 C0     ADC #$C0
C - - - - - 0x01E143 07:E133: 85 25     STA ram_0025
C - - - - - 0x01E145 07:E135: A2 00     LDX #$00
bra_E137:
C - - - - - 0x01E147 07:E137: A5 25     LDA ram_0025
C - - - - - 0x01E149 07:E139: 9D 96 05  STA ram_0596,X
C - - - - - 0x01E14C 07:E13C: 18        CLC
C - - - - - 0x01E14D 07:E13D: 69 08     ADC #$08
C - - - - - 0x01E14F 07:E13F: 85 25     STA ram_0025
C - - - - - 0x01E151 07:E141: E8        INX
C - - - - - 0x01E152 07:E142: E0 04     CPX #$04
C - - - - - 0x01E154 07:E144: D0 F1     BNE bra_E137
C - - - - - 0x01E156 07:E146: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01E159 07:E149: 09 40     ORA #$40
C - - - - - 0x01E15B 07:E14B: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
loc_E14E:
C D 3 - - - 0x01E15E 07:E14E: 68        PLA
C - - - - - 0x01E15F 07:E14F: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E162 07:E152: 60        RTS



tbl_E153:
- D 3 - - - 0x01E163 07:E153: 5C        .byte $5C   ; 
- D 3 - - - 0x01E164 07:E154: 5D        .byte $5D   ; 
- D 3 - - - 0x01E165 07:E155: 5E        .byte $5E   ; 
- D 3 - - - 0x01E166 07:E156: 5F        .byte $5F   ; 
- - - - - - 0x01E167 07:E157: 6C        .byte $6C   ; 
- - - - - - 0x01E168 07:E158: 6D        .byte $6D   ; 
- D 3 - - - 0x01E169 07:E159: 6E        .byte $6E   ; 
- - - - - - 0x01E16A 07:E15A: 6F        .byte $6F   ; 



sub_E15B:
C - - - - - 0x01E16B 07:E15B: A9 00     LDA #$00
C - - - - - 0x01E16D 07:E15D: 85 28     STA ram_0028
C - - - - - 0x01E16F 07:E15F: AD F1 05  LDA ram_набор_луж
C - - - - - 0x01E172 07:E162: 85 29     STA ram_0029
bra_E164:
C - - - - - 0x01E174 07:E164: 46 29     LSR ram_0029
C - - - - - 0x01E176 07:E166: 88        DEY
C - - - - - 0x01E177 07:E167: 10 FB     BPL bra_E164
C - - - - - 0x01E179 07:E169: 90 04     BCC bra_E16F_RTS
C - - - - - 0x01E17B 07:E16B: A9 10     LDA #$10
C - - - - - 0x01E17D 07:E16D: 85 28     STA ram_0028
bra_E16F_RTS:
C - - - - - 0x01E17F 07:E16F: 60        RTS



loc_E170:
C D 3 - - - 0x01E180 07:E170: AD F8 05  LDA ram_вид_статусбара
C - - - - - 0x01E183 07:E173: 30 01     BMI bra_E176
- - - - - - 0x01E185 07:E175: 60        RTS
bra_E176:
C - - - - - 0x01E186 07:E176: A5 4C     LDA ram_для_2000
C - - - - - 0x01E188 07:E178: 29 FB     AND #$FB
C - - - - - 0x01E18A 07:E17A: 85 4C     STA ram_для_2000
C - - - - - 0x01E18C 07:E17C: 8D 00 20  STA $2000
C - - - - - 0x01E18F 07:E17F: AD F9 05  LDA ram_флаг_готового_статусбара
C - - - - - 0x01E192 07:E182: F0 74     BEQ bra_E1F8
C - - - - - 0x01E194 07:E184: AD F8 05  LDA ram_вид_статусбара
C - - - - - 0x01E197 07:E187: 29 7F     AND #$7F
C - - - - - 0x01E199 07:E189: 0A        ASL
C - - - - - 0x01E19A 07:E18A: A8        TAY
C - - - - - 0x01E19B 07:E18B: B9 19 E2  LDA tbl_E219,Y
C - - - - - 0x01E19E 07:E18E: 85 0C     STA ram_000C
C - - - - - 0x01E1A0 07:E190: B9 1A E2  LDA tbl_E219 + 1,Y
C - - - - - 0x01E1A3 07:E193: 85 0D     STA ram_000D
C - - - - - 0x01E1A5 07:E195: AD 02 20  LDA $2002
C - - - - - 0x01E1A8 07:E198: A9 2B     LDA #$2B
C - - - - - 0x01E1AA 07:E19A: 8D 06 20  STA $2006
C - - - - - 0x01E1AD 07:E19D: A9 06     LDA #$06
C - - - - - 0x01E1AF 07:E19F: 8D 06 20  STA $2006
C - - - - - 0x01E1B2 07:E1A2: A0 00     LDY #$00
bra_E1A4:
C - - - - - 0x01E1B4 07:E1A4: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01E1B6 07:E1A6: 8D 07 20  STA $2007
C - - - - - 0x01E1B9 07:E1A9: C8        INY
C - - - - - 0x01E1BA 07:E1AA: C0 15     CPY #$15
C - - - - - 0x01E1BC 07:E1AC: 90 F6     BCC bra_E1A4
C - - - - - 0x01E1BE 07:E1AE: AD 02 20  LDA $2002
C - - - - - 0x01E1C1 07:E1B1: A9 2B     LDA #$2B
C - - - - - 0x01E1C3 07:E1B3: 8D 06 20  STA $2006
C - - - - - 0x01E1C6 07:E1B6: A9 26     LDA #$26
C - - - - - 0x01E1C8 07:E1B8: 8D 06 20  STA $2006
bra_E1BB:
C - - - - - 0x01E1CB 07:E1BB: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01E1CD 07:E1BD: 8D 07 20  STA $2007
C - - - - - 0x01E1D0 07:E1C0: C8        INY
C - - - - - 0x01E1D1 07:E1C1: C0 29     CPY #$29
C - - - - - 0x01E1D3 07:E1C3: 90 F6     BCC bra_E1BB
C - - - - - 0x01E1D5 07:E1C5: AD 02 20  LDA $2002
C - - - - - 0x01E1D8 07:E1C8: A9 2B     LDA #$2B
C - - - - - 0x01E1DA 07:E1CA: 8D 06 20  STA $2006
C - - - - - 0x01E1DD 07:E1CD: A9 46     LDA #$46
C - - - - - 0x01E1DF 07:E1CF: 8D 06 20  STA $2006
bra_E1D2:
C - - - - - 0x01E1E2 07:E1D2: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01E1E4 07:E1D4: 8D 07 20  STA $2007
C - - - - - 0x01E1E7 07:E1D7: C8        INY
C - - - - - 0x01E1E8 07:E1D8: C0 3E     CPY #$3E
C - - - - - 0x01E1EA 07:E1DA: 90 F6     BCC bra_E1D2
C - - - - - 0x01E1EC 07:E1DC: AD F8 05  LDA ram_вид_статусбара
C - - - - - 0x01E1EF 07:E1DF: 29 7F     AND #$7F
C - - - - - 0x01E1F1 07:E1E1: 8D F8 05  STA ram_вид_статусбара
C - - - - - 0x01E1F4 07:E1E4: C9 01     CMP #$01
C - - - - - 0x01E1F6 07:E1E6: F0 07     BEQ bra_E1EF
C - - - - - 0x01E1F8 07:E1E8: C9 02     CMP #$02
C - - - - - 0x01E1FA 07:E1EA: F0 03     BEQ bra_E1EF
C - - - - - 0x01E1FC 07:E1EC: 4C F7 E1  JMP loc_E1F7_RTS
bra_E1EF:
C - - - - - 0x01E1FF 07:E1EF: A9 00     LDA #$00
C - - - - - 0x01E201 07:E1F1: 8D FA 05  STA ram_05FA
C - - - - - 0x01E204 07:E1F4: 8D F7 05  STA ram_задержка_перелив_надп
loc_E1F7_RTS:
C D 3 - - - 0x01E207 07:E1F7: 60        RTS
bra_E1F8:
C - - - - - 0x01E208 07:E1F8: AD 02 20  LDA $2002
C - - - - - 0x01E20B 07:E1FB: A9 2B     LDA #$2B
C - - - - - 0x01E20D 07:E1FD: 8D 06 20  STA $2006
C - - - - - 0x01E210 07:E200: A9 F0     LDA #$F0
C - - - - - 0x01E212 07:E202: 8D 06 20  STA $2006
C - - - - - 0x01E215 07:E205: A2 07     LDX #$07
C - - - - - 0x01E217 07:E207: A9 AA     LDA #$AA
bra_E209:
C - - - - - 0x01E219 07:E209: 8D 07 20  STA $2007
C - - - - - 0x01E21C 07:E20C: CA        DEX
C - - - - - 0x01E21D 07:E20D: 10 FA     BPL bra_E209
C - - - - - 0x01E21F 07:E20F: EE F9 05  INC ram_флаг_готового_статусбара
C - - - - - 0x01E222 07:E212: 60        RTS


; bzk garbage
- - - - - - 0x01E223 07:E213: 06        .byte $06   ; 
- - - - - - 0x01E224 07:E214: 26        .byte $26   ; 
- - - - - - 0x01E225 07:E215: 46        .byte $46   ; 
- - - - - - 0x01E226 07:E216: 00        .byte $00   ; 
- - - - - - 0x01E227 07:E217: 15        .byte $15   ; 
- - - - - - 0x01E228 07:E218: 2A        .byte $2A   ; 



tbl_E219:
- D 3 - - - 0x01E229 07:E219: 27 E2     .word off_E227_00
- D 3 - - - 0x01E22B 07:E21B: 65 E2     .word off_E265_01
- D 3 - - - 0x01E22D 07:E21D: A3 E2     .word off_E2A3_02
- D 3 - - - 0x01E22F 07:E21F: E1 E2     .word off_E2E1_03
- D 3 - - - 0x01E231 07:E221: 1F E3     .word off_E31F_04
- D 3 - - - 0x01E233 07:E223: 5D E3     .word off_E35D_05
- D 3 - - - 0x01E235 07:E225: 9B E3     .word off_E39B_06

off_E227_00:
- D 3 - I - 0x01E237 07:E227: 02        .byte $02   ; 
- D 3 - I - 0x01E238 07:E228: 32        .byte $32   ; 
- D 3 - I - 0x01E239 07:E229: 62        .byte $62   ; 
- D 3 - I - 0x01E23A 07:E22A: 63        .byte $63   ; 
- D 3 - I - 0x01E23B 07:E22B: 64        .byte $64   ; 
- D 3 - I - 0x01E23C 07:E22C: 65        .byte $65   ; 
- D 3 - I - 0x01E23D 07:E22D: 66        .byte $66   ; 
- D 3 - I - 0x01E23E 07:E22E: 67        .byte $67   ; 
- D 3 - I - 0x01E23F 07:E22F: 0C        .byte $0C   ; 
- D 3 - I - 0x01E240 07:E230: 68        .byte $68   ; 
- D 3 - I - 0x01E241 07:E231: 69        .byte $69   ; 
- D 3 - I - 0x01E242 07:E232: 02        .byte $02   ; 
- D 3 - I - 0x01E243 07:E233: 07        .byte $07   ; 
- D 3 - I - 0x01E244 07:E234: 08        .byte $08   ; 
- D 3 - I - 0x01E245 07:E235: 09        .byte $09   ; 
- D 3 - I - 0x01E246 07:E236: 6B        .byte $6B   ; 
- D 3 - I - 0x01E247 07:E237: 37        .byte $37   ; 
- D 3 - I - 0x01E248 07:E238: 6D        .byte $6D   ; 
- D 3 - I - 0x01E249 07:E239: 6E        .byte $6E   ; 
- D 3 - I - 0x01E24A 07:E23A: 61        .byte $61   ; 
- D 3 - I - 0x01E24B 07:E23B: 02        .byte $02   ; 
- D 3 - I - 0x01E24C 07:E23C: 02        .byte $02   ; 
- D 3 - I - 0x01E24D 07:E23D: 42        .byte $42   ; 
- D 3 - I - 0x01E24E 07:E23E: 72        .byte $72   ; 
- D 3 - I - 0x01E24F 07:E23F: 73        .byte $73   ; 
- D 3 - I - 0x01E250 07:E240: 74        .byte $74   ; 
- D 3 - I - 0x01E251 07:E241: 75        .byte $75   ; 
- D 3 - I - 0x01E252 07:E242: 76        .byte $76   ; 
- D 3 - I - 0x01E253 07:E243: 02        .byte $02   ; 
- D 3 - I - 0x01E254 07:E244: 77        .byte $77   ; 
- D 3 - I - 0x01E255 07:E245: 78        .byte $78   ; 
- D 3 - I - 0x01E256 07:E246: 02        .byte $02   ; 
- D 3 - I - 0x01E257 07:E247: 02        .byte $02   ; 
- D 3 - I - 0x01E258 07:E248: 17        .byte $17   ; 
- D 3 - I - 0x01E259 07:E249: 18        .byte $18   ; 
- D 3 - I - 0x01E25A 07:E24A: 6A        .byte $6A   ; 
- D 3 - I - 0x01E25B 07:E24B: 7B        .byte $7B   ; 
- D 3 - I - 0x01E25C 07:E24C: 7C        .byte $7C   ; 
- D 3 - I - 0x01E25D 07:E24D: 7D        .byte $7D   ; 
- D 3 - I - 0x01E25E 07:E24E: 7E        .byte $7E   ; 
- D 3 - I - 0x01E25F 07:E24F: 7F        .byte $7F   ; 
- D 3 - I - 0x01E260 07:E250: 02        .byte $02   ; 
- D 3 - I - 0x01E261 07:E251: 10        .byte $10   ; 
- D 3 - I - 0x01E262 07:E252: 11        .byte $11   ; 
- D 3 - I - 0x01E263 07:E253: 12        .byte $12   ; 
- D 3 - I - 0x01E264 07:E254: 13        .byte $13   ; 
- D 3 - I - 0x01E265 07:E255: 20        .byte $20   ; 
- D 3 - I - 0x01E266 07:E256: 21        .byte $21   ; 
- D 3 - I - 0x01E267 07:E257: 22        .byte $22   ; 
- D 3 - I - 0x01E268 07:E258: 23        .byte $23   ; 
- D 3 - I - 0x01E269 07:E259: 34        .byte $34   ; 
- D 3 - I - 0x01E26A 07:E25A: 35        .byte $35   ; 
- D 3 - I - 0x01E26B 07:E25B: 79        .byte $79   ; 
- D 3 - I - 0x01E26C 07:E25C: 27        .byte $27   ; 
- D 3 - I - 0x01E26D 07:E25D: 28        .byte $28   ; 
- D 3 - I - 0x01E26E 07:E25E: 7A        .byte $7A   ; 
- D 3 - I - 0x01E26F 07:E25F: 71        .byte $71   ; 
- D 3 - I - 0x01E270 07:E260: 02        .byte $02   ; 
- D 3 - I - 0x01E271 07:E261: 48        .byte $48   ; 
- D 3 - I - 0x01E272 07:E262: 58        .byte $58   ; 
- D 3 - I - 0x01E273 07:E263: 02        .byte $02   ; 
- D 3 - I - 0x01E274 07:E264: 02        .byte $02   ; 



off_E265_01:
- D 3 - I - 0x01E275 07:E265: 02        .byte $02   ; 
- D 3 - I - 0x01E276 07:E266: 02        .byte $02   ; 
- D 3 - I - 0x01E277 07:E267: 02        .byte $02   ; 
- D 3 - I - 0x01E278 07:E268: 02        .byte $02   ; 
- D 3 - I - 0x01E279 07:E269: 04        .byte $04   ; 
- D 3 - I - 0x01E27A 07:E26A: 05        .byte $05   ; 
- D 3 - I - 0x01E27B 07:E26B: 06        .byte $06   ; 
- D 3 - I - 0x01E27C 07:E26C: 07        .byte $07   ; 
- D 3 - I - 0x01E27D 07:E26D: 08        .byte $08   ; 
- D 3 - I - 0x01E27E 07:E26E: 09        .byte $09   ; 
- D 3 - I - 0x01E27F 07:E26F: 0A        .byte $0A   ; 
- D 3 - I - 0x01E280 07:E270: 0B        .byte $0B   ; 
- D 3 - I - 0x01E281 07:E271: 0C        .byte $0C   ; 
- D 3 - I - 0x01E282 07:E272: 0D        .byte $0D   ; 
- D 3 - I - 0x01E283 07:E273: 0E        .byte $0E   ; 
- D 3 - I - 0x01E284 07:E274: 4C        .byte $4C   ; 
- D 3 - I - 0x01E285 07:E275: 02        .byte $02   ; 
- D 3 - I - 0x01E286 07:E276: 02        .byte $02   ; 
- D 3 - I - 0x01E287 07:E277: 02        .byte $02   ; 
- D 3 - I - 0x01E288 07:E278: 02        .byte $02   ; 
- D 3 - I - 0x01E289 07:E279: 02        .byte $02   ; 
- D 3 - I - 0x01E28A 07:E27A: 02        .byte $02   ; 
- D 3 - I - 0x01E28B 07:E27B: 02        .byte $02   ; 
- D 3 - I - 0x01E28C 07:E27C: 02        .byte $02   ; 
- D 3 - I - 0x01E28D 07:E27D: 02        .byte $02   ; 
- D 3 - I - 0x01E28E 07:E27E: 14        .byte $14   ; 
- D 3 - I - 0x01E28F 07:E27F: 15        .byte $15   ; 
- D 3 - I - 0x01E290 07:E280: 16        .byte $16   ; 
- D 3 - I - 0x01E291 07:E281: 17        .byte $17   ; 
- D 3 - I - 0x01E292 07:E282: 18        .byte $18   ; 
- D 3 - I - 0x01E293 07:E283: 19        .byte $19   ; 
- D 3 - I - 0x01E294 07:E284: 1A        .byte $1A   ; 
- D 3 - I - 0x01E295 07:E285: 1B        .byte $1B   ; 
- D 3 - I - 0x01E296 07:E286: 1C        .byte $1C   ; 
- D 3 - I - 0x01E297 07:E287: 02        .byte $02   ; 
- D 3 - I - 0x01E298 07:E288: 1E        .byte $1E   ; 
- D 3 - I - 0x01E299 07:E289: 1F        .byte $1F   ; 
- D 3 - I - 0x01E29A 07:E28A: 02        .byte $02   ; 
- D 3 - I - 0x01E29B 07:E28B: 02        .byte $02   ; 
- D 3 - I - 0x01E29C 07:E28C: 02        .byte $02   ; 
- D 3 - I - 0x01E29D 07:E28D: 02        .byte $02   ; 
- D 3 - I - 0x01E29E 07:E28E: 02        .byte $02   ; 
- D 3 - I - 0x01E29F 07:E28F: 02        .byte $02   ; 
- D 3 - I - 0x01E2A0 07:E290: 02        .byte $02   ; 
- D 3 - I - 0x01E2A1 07:E291: 02        .byte $02   ; 
- D 3 - I - 0x01E2A2 07:E292: 24        .byte $24   ; 
- D 3 - I - 0x01E2A3 07:E293: 25        .byte $25   ; 
- D 3 - I - 0x01E2A4 07:E294: 26        .byte $26   ; 
- D 3 - I - 0x01E2A5 07:E295: 27        .byte $27   ; 
- D 3 - I - 0x01E2A6 07:E296: 28        .byte $28   ; 
- D 3 - I - 0x01E2A7 07:E297: 29        .byte $29   ; 
- D 3 - I - 0x01E2A8 07:E298: 2A        .byte $2A   ; 
- D 3 - I - 0x01E2A9 07:E299: 2B        .byte $2B   ; 
- D 3 - I - 0x01E2AA 07:E29A: 2C        .byte $2C   ; 
- D 3 - I - 0x01E2AB 07:E29B: 2D        .byte $2D   ; 
- D 3 - I - 0x01E2AC 07:E29C: 2E        .byte $2E   ; 
- D 3 - I - 0x01E2AD 07:E29D: 2F        .byte $2F   ; 
- D 3 - I - 0x01E2AE 07:E29E: 02        .byte $02   ; 
- D 3 - I - 0x01E2AF 07:E29F: 02        .byte $02   ; 
- D 3 - I - 0x01E2B0 07:E2A0: 02        .byte $02   ; 
- D 3 - I - 0x01E2B1 07:E2A1: 02        .byte $02   ; 
- D 3 - I - 0x01E2B2 07:E2A2: 02        .byte $02   ; 



off_E2A3_02:
- D 3 - I - 0x01E2B3 07:E2A3: 04        .byte $04   ; 
- D 3 - I - 0x01E2B4 07:E2A4: 05        .byte $05   ; 
- D 3 - I - 0x01E2B5 07:E2A5: 06        .byte $06   ; 
- D 3 - I - 0x01E2B6 07:E2A6: 30        .byte $30   ; 
- D 3 - I - 0x01E2B7 07:E2A7: 31        .byte $31   ; 
- D 3 - I - 0x01E2B8 07:E2A8: 32        .byte $32   ; 
- D 3 - I - 0x01E2B9 07:E2A9: 33        .byte $33   ; 
- D 3 - I - 0x01E2BA 07:E2AA: 0A        .byte $0A   ; 
- D 3 - I - 0x01E2BB 07:E2AB: 4C        .byte $4C   ; 
- D 3 - I - 0x01E2BC 07:E2AC: 36        .byte $36   ; 
- D 3 - I - 0x01E2BD 07:E2AD: 37        .byte $37   ; 
- D 3 - I - 0x01E2BE 07:E2AE: 38        .byte $38   ; 
- D 3 - I - 0x01E2BF 07:E2AF: 39        .byte $39   ; 
- D 3 - I - 0x01E2C0 07:E2B0: 3A        .byte $3A   ; 
- D 3 - I - 0x01E2C1 07:E2B1: 3B        .byte $3B   ; 
- D 3 - I - 0x01E2C2 07:E2B2: 3C        .byte $3C   ; 
- D 3 - I - 0x01E2C3 07:E2B3: 3D        .byte $3D   ; 
- D 3 - I - 0x01E2C4 07:E2B4: 3E        .byte $3E   ; 
- D 3 - I - 0x01E2C5 07:E2B5: 3F        .byte $3F   ; 
- D 3 - I - 0x01E2C6 07:E2B6: 60        .byte $60   ; 
- D 3 - I - 0x01E2C7 07:E2B7: 61        .byte $61   ; 
- D 3 - I - 0x01E2C8 07:E2B8: 14        .byte $14   ; 
- D 3 - I - 0x01E2C9 07:E2B9: 15        .byte $15   ; 
- D 3 - I - 0x01E2CA 07:E2BA: 16        .byte $16   ; 
- D 3 - I - 0x01E2CB 07:E2BB: 40        .byte $40   ; 
- D 3 - I - 0x01E2CC 07:E2BC: 41        .byte $41   ; 
- D 3 - I - 0x01E2CD 07:E2BD: 42        .byte $42   ; 
- D 3 - I - 0x01E2CE 07:E2BE: 43        .byte $43   ; 
- D 3 - I - 0x01E2CF 07:E2BF: 44        .byte $44   ; 
- D 3 - I - 0x01E2D0 07:E2C0: 45        .byte $45   ; 
- D 3 - I - 0x01E2D1 07:E2C1: 46        .byte $46   ; 
- D 3 - I - 0x01E2D2 07:E2C2: 47        .byte $47   ; 
- D 3 - I - 0x01E2D3 07:E2C3: 02        .byte $02   ; 
- D 3 - I - 0x01E2D4 07:E2C4: 49        .byte $49   ; 
- D 3 - I - 0x01E2D5 07:E2C5: 4A        .byte $4A   ; 
- D 3 - I - 0x01E2D6 07:E2C6: 4B        .byte $4B   ; 
- D 3 - I - 0x01E2D7 07:E2C7: 42        .byte $42   ; 
- D 3 - I - 0x01E2D8 07:E2C8: 4D        .byte $4D   ; 
- D 3 - I - 0x01E2D9 07:E2C9: 4E        .byte $4E   ; 
- D 3 - I - 0x01E2DA 07:E2CA: 4F        .byte $4F   ; 
- D 3 - I - 0x01E2DB 07:E2CB: 70        .byte $70   ; 
- D 3 - I - 0x01E2DC 07:E2CC: 24        .byte $24   ; 
- D 3 - I - 0x01E2DD 07:E2CD: 25        .byte $25   ; 
- D 3 - I - 0x01E2DE 07:E2CE: 1D        .byte $1D   ; 
- D 3 - I - 0x01E2DF 07:E2CF: 50        .byte $50   ; 
- D 3 - I - 0x01E2E0 07:E2D0: 51        .byte $51   ; 
- D 3 - I - 0x01E2E1 07:E2D1: 52        .byte $52   ; 
- D 3 - I - 0x01E2E2 07:E2D2: 53        .byte $53   ; 
- D 3 - I - 0x01E2E3 07:E2D3: 54        .byte $54   ; 
- D 3 - I - 0x01E2E4 07:E2D4: 55        .byte $55   ; 
- D 3 - I - 0x01E2E5 07:E2D5: 56        .byte $56   ; 
- D 3 - I - 0x01E2E6 07:E2D6: 57        .byte $57   ; 
- D 3 - I - 0x01E2E7 07:E2D7: 02        .byte $02   ; 
- D 3 - I - 0x01E2E8 07:E2D8: 59        .byte $59   ; 
- D 3 - I - 0x01E2E9 07:E2D9: 5A        .byte $5A   ; 
- D 3 - I - 0x01E2EA 07:E2DA: 5B        .byte $5B   ; 
- D 3 - I - 0x01E2EB 07:E2DB: 5C        .byte $5C   ; 
- D 3 - I - 0x01E2EC 07:E2DC: 5D        .byte $5D   ; 
- D 3 - I - 0x01E2ED 07:E2DD: 5E        .byte $5E   ; 
- D 3 - I - 0x01E2EE 07:E2DE: 5F        .byte $5F   ; 
- D 3 - I - 0x01E2EF 07:E2DF: 71        .byte $71   ; 
- D 3 - I - 0x01E2F0 07:E2E0: 02        .byte $02   ; 



off_E2E1_03:
- D 3 - I - 0x01E2F1 07:E2E1: 02        .byte $02   ; 
- D 3 - I - 0x01E2F2 07:E2E2: 02        .byte $02   ; 
- D 3 - I - 0x01E2F3 07:E2E3: 02        .byte $02   ; 
- D 3 - I - 0x01E2F4 07:E2E4: 02        .byte $02   ; 
- D 3 - I - 0x01E2F5 07:E2E5: 02        .byte $02   ; 
- D 3 - I - 0x01E2F6 07:E2E6: 02        .byte $02   ; 
- D 3 - I - 0x01E2F7 07:E2E7: 32        .byte $32   ; 
- D 3 - I - 0x01E2F8 07:E2E8: 80        .byte $80   ; 
- D 3 - I - 0x01E2F9 07:E2E9: 81        .byte $81   ; 
- D 3 - I - 0x01E2FA 07:E2EA: 0C        .byte $0C   ; 
- D 3 - I - 0x01E2FB 07:E2EB: 68        .byte $68   ; 
- D 3 - I - 0x01E2FC 07:E2EC: 69        .byte $69   ; 
- D 3 - I - 0x01E2FD 07:E2ED: 0E        .byte $0E   ; 
- D 3 - I - 0x01E2FE 07:E2EE: 4C        .byte $4C   ; 
- D 3 - I - 0x01E2FF 07:E2EF: 02        .byte $02   ; 
- D 3 - I - 0x01E300 07:E2F0: 02        .byte $02   ; 
- D 3 - I - 0x01E301 07:E2F1: 02        .byte $02   ; 
- D 3 - I - 0x01E302 07:E2F2: 02        .byte $02   ; 
- D 3 - I - 0x01E303 07:E2F3: 02        .byte $02   ; 
- D 3 - I - 0x01E304 07:E2F4: 02        .byte $02   ; 
- D 3 - I - 0x01E305 07:E2F5: 02        .byte $02   ; 
- D 3 - I - 0x01E306 07:E2F6: 02        .byte $02   ; 
- D 3 - I - 0x01E307 07:E2F7: 02        .byte $02   ; 
- D 3 - I - 0x01E308 07:E2F8: 02        .byte $02   ; 
- D 3 - I - 0x01E309 07:E2F9: 02        .byte $02   ; 
- D 3 - I - 0x01E30A 07:E2FA: 02        .byte $02   ; 
- D 3 - I - 0x01E30B 07:E2FB: 02        .byte $02   ; 
- D 3 - I - 0x01E30C 07:E2FC: 42        .byte $42   ; 
- D 3 - I - 0x01E30D 07:E2FD: 90        .byte $90   ; 
- D 3 - I - 0x01E30E 07:E2FE: 91        .byte $91   ; 
- D 3 - I - 0x01E30F 07:E2FF: 77        .byte $77   ; 
- D 3 - I - 0x01E310 07:E300: 78        .byte $78   ; 
- D 3 - I - 0x01E311 07:E301: 02        .byte $02   ; 
- D 3 - I - 0x01E312 07:E302: 1E        .byte $1E   ; 
- D 3 - I - 0x01E313 07:E303: 1F        .byte $1F   ; 
- D 3 - I - 0x01E314 07:E304: 02        .byte $02   ; 
- D 3 - I - 0x01E315 07:E305: 02        .byte $02   ; 
- D 3 - I - 0x01E316 07:E306: 02        .byte $02   ; 
- D 3 - I - 0x01E317 07:E307: 02        .byte $02   ; 
- D 3 - I - 0x01E318 07:E308: 02        .byte $02   ; 
- D 3 - I - 0x01E319 07:E309: 02        .byte $02   ; 
- D 3 - I - 0x01E31A 07:E30A: 02        .byte $02   ; 
- D 3 - I - 0x01E31B 07:E30B: 02        .byte $02   ; 
- D 3 - I - 0x01E31C 07:E30C: 02        .byte $02   ; 
- D 3 - I - 0x01E31D 07:E30D: 02        .byte $02   ; 
- D 3 - I - 0x01E31E 07:E30E: 02        .byte $02   ; 
- D 3 - I - 0x01E31F 07:E30F: 02        .byte $02   ; 
- D 3 - I - 0x01E320 07:E310: 52        .byte $52   ; 
- D 3 - I - 0x01E321 07:E311: 02        .byte $02   ; 
- D 3 - I - 0x01E322 07:E312: 02        .byte $02   ; 
- D 3 - I - 0x01E323 07:E313: 23        .byte $23   ; 
- D 3 - I - 0x01E324 07:E314: 34        .byte $34   ; 
- D 3 - I - 0x01E325 07:E315: 35        .byte $35   ; 
- D 3 - I - 0x01E326 07:E316: 2E        .byte $2E   ; 
- D 3 - I - 0x01E327 07:E317: 2F        .byte $2F   ; 
- D 3 - I - 0x01E328 07:E318: 02        .byte $02   ; 
- D 3 - I - 0x01E329 07:E319: 02        .byte $02   ; 
- D 3 - I - 0x01E32A 07:E31A: 02        .byte $02   ; 
- D 3 - I - 0x01E32B 07:E31B: 02        .byte $02   ; 
- D 3 - I - 0x01E32C 07:E31C: 02        .byte $02   ; 
- D 3 - I - 0x01E32D 07:E31D: 02        .byte $02   ; 
- D 3 - I - 0x01E32E 07:E31E: 02        .byte $02   ; 



off_E31F_04:
- D 3 - I - 0x01E32F 07:E31F: 02        .byte $02   ; 
- D 3 - I - 0x01E330 07:E320: 0C        .byte $0C   ; 
- D 3 - I - 0x01E331 07:E321: 6C        .byte $6C   ; 
- D 3 - I - 0x01E332 07:E322: 09        .byte $09   ; 
- D 3 - I - 0x01E333 07:E323: A0        .byte $A0   ; 
- D 3 - I - 0x01E334 07:E324: B1        .byte $B1   ; 
- D 3 - I - 0x01E335 07:E325: 84        .byte $84   ; 
- D 3 - I - 0x01E336 07:E326: 85        .byte $85   ; 
- D 3 - I - 0x01E337 07:E327: 86        .byte $86   ; 
- D 3 - I - 0x01E338 07:E328: 93        .byte $93   ; 
- D 3 - I - 0x01E339 07:E329: 33        .byte $33   ; 
- D 3 - I - 0x01E33A 07:E32A: 87        .byte $87   ; 
- D 3 - I - 0x01E33B 07:E32B: 88        .byte $88   ; 
- D 3 - I - 0x01E33C 07:E32C: 89        .byte $89   ; 
- D 3 - I - 0x01E33D 07:E32D: 8A        .byte $8A   ; 
- D 3 - I - 0x01E33E 07:E32E: 97        .byte $97   ; 
- D 3 - I - 0x01E33F 07:E32F: B5        .byte $B5   ; 
- D 3 - I - 0x01E340 07:E330: B6        .byte $B6   ; 
- D 3 - I - 0x01E341 07:E331: B7        .byte $B7   ; 
- D 3 - I - 0x01E342 07:E332: B8        .byte $B8   ; 
- D 3 - I - 0x01E343 07:E333: 02        .byte $02   ; 
- D 3 - I - 0x01E344 07:E334: 02        .byte $02   ; 
- D 3 - I - 0x01E345 07:E335: 77        .byte $77   ; 
- D 3 - I - 0x01E346 07:E336: 6F        .byte $6F   ; 
- D 3 - I - 0x01E347 07:E337: 82        .byte $82   ; 
- D 3 - I - 0x01E348 07:E338: B0        .byte $B0   ; 
- D 3 - I - 0x01E349 07:E339: 47        .byte $47   ; 
- D 3 - I - 0x01E34A 07:E33A: 94        .byte $94   ; 
- D 3 - I - 0x01E34B 07:E33B: 95        .byte $95   ; 
- D 3 - I - 0x01E34C 07:E33C: 96        .byte $96   ; 
- D 3 - I - 0x01E34D 07:E33D: A3        .byte $A3   ; 
- D 3 - I - 0x01E34E 07:E33E: B2        .byte $B2   ; 
- D 3 - I - 0x01E34F 07:E33F: 7D        .byte $7D   ; 
- D 3 - I - 0x01E350 07:E340: 98        .byte $98   ; 
- D 3 - I - 0x01E351 07:E341: 99        .byte $99   ; 
- D 3 - I - 0x01E352 07:E342: 9A        .byte $9A   ; 
- D 3 - I - 0x01E353 07:E343: 02        .byte $02   ; 
- D 3 - I - 0x01E354 07:E344: A7        .byte $A7   ; 
- D 3 - I - 0x01E355 07:E345: A8        .byte $A8   ; 
- D 3 - I - 0x01E356 07:E346: B9        .byte $B9   ; 
- D 3 - I - 0x01E357 07:E347: BA        .byte $BA   ; 
- D 3 - I - 0x01E358 07:E348: 02        .byte $02   ; 
- D 3 - I - 0x01E359 07:E349: 83        .byte $83   ; 
- D 3 - I - 0x01E35A 07:E34A: 02        .byte $02   ; 
- D 3 - I - 0x01E35B 07:E34B: 92        .byte $92   ; 
- D 3 - I - 0x01E35C 07:E34C: A1        .byte $A1   ; 
- D 3 - I - 0x01E35D 07:E34D: A2        .byte $A2   ; 
- D 3 - I - 0x01E35E 07:E34E: A4        .byte $A4   ; 
- D 3 - I - 0x01E35F 07:E34F: A5        .byte $A5   ; 
- D 3 - I - 0x01E360 07:E350: A6        .byte $A6   ; 
- D 3 - I - 0x01E361 07:E351: B3        .byte $B3   ; 
- D 3 - I - 0x01E362 07:E352: B4        .byte $B4   ; 
- D 3 - I - 0x01E363 07:E353: 48        .byte $48   ; 
- D 3 - I - 0x01E364 07:E354: 5D        .byte $5D   ; 
- D 3 - I - 0x01E365 07:E355: A9        .byte $A9   ; 
- D 3 - I - 0x01E366 07:E356: AA        .byte $AA   ; 
- D 3 - I - 0x01E367 07:E357: 02        .byte $02   ; 
- D 3 - I - 0x01E368 07:E358: 83        .byte $83   ; 
- D 3 - I - 0x01E369 07:E359: 02        .byte $02   ; 
- D 3 - I - 0x01E36A 07:E35A: 8B        .byte $8B   ; 
- D 3 - I - 0x01E36B 07:E35B: 02        .byte $02   ; 
- D 3 - I - 0x01E36C 07:E35C: 02        .byte $02   ; 



off_E35D_05:
- D 3 - I - 0x01E36D 07:E35D: 0C        .byte $0C   ; 
- D 3 - I - 0x01E36E 07:E35E: 80        .byte $80   ; 
- D 3 - I - 0x01E36F 07:E35F: 8F        .byte $8F   ; 
- D 3 - I - 0x01E370 07:E360: 9B        .byte $9B   ; 
- D 3 - I - 0x01E371 07:E361: 9C        .byte $9C   ; 
- D 3 - I - 0x01E372 07:E362: 9D        .byte $9D   ; 
- D 3 - I - 0x01E373 07:E363: 6B        .byte $6B   ; 
- D 3 - I - 0x01E374 07:E364: 37        .byte $37   ; 
- D 3 - I - 0x01E375 07:E365: 6D        .byte $6D   ; 
- D 3 - I - 0x01E376 07:E366: 6E        .byte $6E   ; 
- D 3 - I - 0x01E377 07:E367: 61        .byte $61   ; 
- D 3 - I - 0x01E378 07:E368: 32        .byte $32   ; 
- D 3 - I - 0x01E379 07:E369: 62        .byte $62   ; 
- D 3 - I - 0x01E37A 07:E36A: 63        .byte $63   ; 
- D 3 - I - 0x01E37B 07:E36B: 64        .byte $64   ; 
- D 3 - I - 0x01E37C 07:E36C: 65        .byte $65   ; 
- D 3 - I - 0x01E37D 07:E36D: 66        .byte $66   ; 
- D 3 - I - 0x01E37E 07:E36E: 67        .byte $67   ; 
- D 3 - I - 0x01E37F 07:E36F: 0C        .byte $0C   ; 
- D 3 - I - 0x01E380 07:E370: 68        .byte $68   ; 
- D 3 - I - 0x01E381 07:E371: 69        .byte $69   ; 
- D 3 - I - 0x01E382 07:E372: 77        .byte $77   ; 
- D 3 - I - 0x01E383 07:E373: 8C        .byte $8C   ; 
- D 3 - I - 0x01E384 07:E374: 8D        .byte $8D   ; 
- D 3 - I - 0x01E385 07:E375: AB        .byte $AB   ; 
- D 3 - I - 0x01E386 07:E376: AC        .byte $AC   ; 
- D 3 - I - 0x01E387 07:E377: AD        .byte $AD   ; 
- D 3 - I - 0x01E388 07:E378: 7B        .byte $7B   ; 
- D 3 - I - 0x01E389 07:E379: 7C        .byte $7C   ; 
- D 3 - I - 0x01E38A 07:E37A: 7D        .byte $7D   ; 
- D 3 - I - 0x01E38B 07:E37B: 7E        .byte $7E   ; 
- D 3 - I - 0x01E38C 07:E37C: 7F        .byte $7F   ; 
- D 3 - I - 0x01E38D 07:E37D: 42        .byte $42   ; 
- D 3 - I - 0x01E38E 07:E37E: 72        .byte $72   ; 
- D 3 - I - 0x01E38F 07:E37F: 73        .byte $73   ; 
- D 3 - I - 0x01E390 07:E380: 74        .byte $74   ; 
- D 3 - I - 0x01E391 07:E381: 75        .byte $75   ; 
- D 3 - I - 0x01E392 07:E382: 76        .byte $76   ; 
- D 3 - I - 0x01E393 07:E383: 02        .byte $02   ; 
- D 3 - I - 0x01E394 07:E384: 77        .byte $77   ; 
- D 3 - I - 0x01E395 07:E385: 78        .byte $78   ; 
- D 3 - I - 0x01E396 07:E386: 8E        .byte $8E   ; 
- D 3 - I - 0x01E397 07:E387: 02        .byte $02   ; 
- D 3 - I - 0x01E398 07:E388: 5F        .byte $5F   ; 
- D 3 - I - 0x01E399 07:E389: BB        .byte $BB   ; 
- D 3 - I - 0x01E39A 07:E38A: BC        .byte $BC   ; 
- D 3 - I - 0x01E39B 07:E38B: 5F        .byte $5F   ; 
- D 3 - I - 0x01E39C 07:E38C: 9E        .byte $9E   ; 
- D 3 - I - 0x01E39D 07:E38D: 9F        .byte $9F   ; 
- D 3 - I - 0x01E39E 07:E38E: 48        .byte $48   ; 
- D 3 - I - 0x01E39F 07:E38F: AE        .byte $AE   ; 
- D 3 - I - 0x01E3A0 07:E390: AF        .byte $AF   ; 
- D 3 - I - 0x01E3A1 07:E391: 10        .byte $10   ; 
- D 3 - I - 0x01E3A2 07:E392: 11        .byte $11   ; 
- D 3 - I - 0x01E3A3 07:E393: 12        .byte $12   ; 
- D 3 - I - 0x01E3A4 07:E394: 13        .byte $13   ; 
- D 3 - I - 0x01E3A5 07:E395: 20        .byte $20   ; 
- D 3 - I - 0x01E3A6 07:E396: 21        .byte $21   ; 
- D 3 - I - 0x01E3A7 07:E397: 22        .byte $22   ; 
- D 3 - I - 0x01E3A8 07:E398: 23        .byte $23   ; 
- D 3 - I - 0x01E3A9 07:E399: 34        .byte $34   ; 
- D 3 - I - 0x01E3AA 07:E39A: 35        .byte $35   ; 



off_E39B_06:
- D 3 - I - 0x01E3AB 07:E39B: 02        .byte $02   ; 
- D 3 - I - 0x01E3AC 07:E39C: 02        .byte $02   ; 
- D 3 - I - 0x01E3AD 07:E39D: 02        .byte $02   ; 
- D 3 - I - 0x01E3AE 07:E39E: 02        .byte $02   ; 
- D 3 - I - 0x01E3AF 07:E39F: 02        .byte $02   ; 
- D 3 - I - 0x01E3B0 07:E3A0: 02        .byte $02   ; 
- D 3 - I - 0x01E3B1 07:E3A1: 02        .byte $02   ; 
- D 3 - I - 0x01E3B2 07:E3A2: 02        .byte $02   ; 
- D 3 - I - 0x01E3B3 07:E3A3: 02        .byte $02   ; 
- D 3 - I - 0x01E3B4 07:E3A4: 02        .byte $02   ; 
- D 3 - I - 0x01E3B5 07:E3A5: 02        .byte $02   ; 
- D 3 - I - 0x01E3B6 07:E3A6: 02        .byte $02   ; 
- D 3 - I - 0x01E3B7 07:E3A7: 02        .byte $02   ; 
- D 3 - I - 0x01E3B8 07:E3A8: 02        .byte $02   ; 
- D 3 - I - 0x01E3B9 07:E3A9: 02        .byte $02   ; 
- D 3 - I - 0x01E3BA 07:E3AA: 02        .byte $02   ; 
- D 3 - I - 0x01E3BB 07:E3AB: 02        .byte $02   ; 
- D 3 - I - 0x01E3BC 07:E3AC: 02        .byte $02   ; 
- D 3 - I - 0x01E3BD 07:E3AD: 02        .byte $02   ; 
- D 3 - I - 0x01E3BE 07:E3AE: 02        .byte $02   ; 
- D 3 - I - 0x01E3BF 07:E3AF: 02        .byte $02   ; 
- D 3 - I - 0x01E3C0 07:E3B0: 02        .byte $02   ; 
- D 3 - I - 0x01E3C1 07:E3B1: 02        .byte $02   ; 
- D 3 - I - 0x01E3C2 07:E3B2: 02        .byte $02   ; 
- D 3 - I - 0x01E3C3 07:E3B3: 02        .byte $02   ; 
- D 3 - I - 0x01E3C4 07:E3B4: 02        .byte $02   ; 
- D 3 - I - 0x01E3C5 07:E3B5: 02        .byte $02   ; 
- D 3 - I - 0x01E3C6 07:E3B6: 02        .byte $02   ; 
- D 3 - I - 0x01E3C7 07:E3B7: 02        .byte $02   ; 
- D 3 - I - 0x01E3C8 07:E3B8: 02        .byte $02   ; 
- D 3 - I - 0x01E3C9 07:E3B9: 02        .byte $02   ; 
- D 3 - I - 0x01E3CA 07:E3BA: 02        .byte $02   ; 
- D 3 - I - 0x01E3CB 07:E3BB: 02        .byte $02   ; 
- D 3 - I - 0x01E3CC 07:E3BC: 02        .byte $02   ; 
- D 3 - I - 0x01E3CD 07:E3BD: 02        .byte $02   ; 
- D 3 - I - 0x01E3CE 07:E3BE: 02        .byte $02   ; 
- D 3 - I - 0x01E3CF 07:E3BF: 02        .byte $02   ; 
- D 3 - I - 0x01E3D0 07:E3C0: 02        .byte $02   ; 
- D 3 - I - 0x01E3D1 07:E3C1: 02        .byte $02   ; 
- D 3 - I - 0x01E3D2 07:E3C2: 02        .byte $02   ; 
- D 3 - I - 0x01E3D3 07:E3C3: 02        .byte $02   ; 
- D 3 - I - 0x01E3D4 07:E3C4: 02        .byte $02   ; 
- D 3 - I - 0x01E3D5 07:E3C5: 02        .byte $02   ; 
- D 3 - I - 0x01E3D6 07:E3C6: 02        .byte $02   ; 
- D 3 - I - 0x01E3D7 07:E3C7: 02        .byte $02   ; 
- D 3 - I - 0x01E3D8 07:E3C8: 02        .byte $02   ; 
- D 3 - I - 0x01E3D9 07:E3C9: 02        .byte $02   ; 
- D 3 - I - 0x01E3DA 07:E3CA: 02        .byte $02   ; 
- D 3 - I - 0x01E3DB 07:E3CB: 02        .byte $02   ; 
- D 3 - I - 0x01E3DC 07:E3CC: 02        .byte $02   ; 
- D 3 - I - 0x01E3DD 07:E3CD: 02        .byte $02   ; 
- D 3 - I - 0x01E3DE 07:E3CE: 02        .byte $02   ; 
- D 3 - I - 0x01E3DF 07:E3CF: 02        .byte $02   ; 
- D 3 - I - 0x01E3E0 07:E3D0: 02        .byte $02   ; 
- D 3 - I - 0x01E3E1 07:E3D1: 02        .byte $02   ; 
- D 3 - I - 0x01E3E2 07:E3D2: 02        .byte $02   ; 
- D 3 - I - 0x01E3E3 07:E3D3: 02        .byte $02   ; 
- D 3 - I - 0x01E3E4 07:E3D4: 02        .byte $02   ; 
- D 3 - I - 0x01E3E5 07:E3D5: 02        .byte $02   ; 
- D 3 - I - 0x01E3E6 07:E3D6: 02        .byte $02   ; 
- D 3 - I - 0x01E3E7 07:E3D7: 02        .byte $02   ; 
- D 3 - I - 0x01E3E8 07:E3D8: 02        .byte $02   ; 



sub_E3D9:
C - - - - - 0x01E3E9 07:E3D9: AD FF BF  LDA $BFFF
C - - - - - 0x01E3EC 07:E3DC: 48        PHA
C - - - - - 0x01E3ED 07:E3DD: AD F3 05  LDA ram_номер_prg_банка
C - - - - - 0x01E3F0 07:E3E0: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E3F3 07:E3E3: A5 4C     LDA ram_для_2000
C - - - - - 0x01E3F5 07:E3E5: 29 FB     AND #$FB
C - - - - - 0x01E3F7 07:E3E7: 85 4C     STA ram_для_2000
C - - - - - 0x01E3F9 07:E3E9: 8D 00 20  STA $2000
C - - - - - 0x01E3FC 07:E3EC: AD E5 05  LDA ram_покрытие_поля_лужами
C - - - - - 0x01E3FF 07:E3EF: 0A        ASL
C - - - - - 0x01E400 07:E3F0: A8        TAY
C - - - - - 0x01E401 07:E3F1: B9 14 80  LDA $8014,Y
C - - - - - 0x01E404 07:E3F4: 85 2C     STA ram_002C
C - - - - - 0x01E406 07:E3F6: B9 15 80  LDA $8015,Y
C - - - - - 0x01E409 07:E3F9: 85 2D     STA ram_002D
C - - - - - 0x01E40B 07:E3FB: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01E40E 07:E3FE: 4A        LSR
C - - - - - 0x01E40F 07:E3FF: 4A        LSR
C - - - - - 0x01E410 07:E400: 4A        LSR
C - - - - - 0x01E411 07:E401: 85 1C     STA ram_001C
C - - - - - 0x01E413 07:E403: 85 1F     STA ram_001F
C - - - - - 0x01E415 07:E405: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01E418 07:E408: 20 81 E4  JSR sub_E481
C - - - - - 0x01E41B 07:E40B: A9 1E     LDA #$1E
C - - - - - 0x01E41D 07:E40D: 85 1D     STA ram_001D
C - - - - - 0x01E41F 07:E40F: A9 20     LDA #$20
C - - - - - 0x01E421 07:E411: 85 20     STA ram_0020
C - - - - - 0x01E423 07:E413: A0 00     LDY #$00
C - - - - - 0x01E425 07:E415: 20 AF E4  JSR sub_E4AF
C - - - - - 0x01E428 07:E418: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01E42B 07:E41B: 18        CLC
C - - - - - 0x01E42C 07:E41C: 69 04     ADC #$04
C - - - - - 0x01E42E 07:E41E: 20 81 E4  JSR sub_E481
C - - - - - 0x01E431 07:E421: A9 10     LDA #$10
C - - - - - 0x01E433 07:E423: 85 1D     STA ram_001D
C - - - - - 0x01E435 07:E425: A9 28     LDA #$28
C - - - - - 0x01E437 07:E427: 85 20     STA ram_0020
C - - - - - 0x01E439 07:E429: A5 1C     LDA ram_001C
C - - - - - 0x01E43B 07:E42B: 85 1F     STA ram_001F
C - - - - - 0x01E43D 07:E42D: A0 00     LDY #$00
C - - - - - 0x01E43F 07:E42F: 20 AF E4  JSR sub_E4AF
C - - - - - 0x01E442 07:E432: AD E5 05  LDA ram_покрытие_поля_лужами
C - - - - - 0x01E445 07:E435: 0A        ASL
C - - - - - 0x01E446 07:E436: A8        TAY
C - - - - - 0x01E447 07:E437: B9 1C 80  LDA $801C,Y
C - - - - - 0x01E44A 07:E43A: 85 2C     STA ram_002C
C - - - - - 0x01E44C 07:E43C: B9 1D 80  LDA $801D,Y
C - - - - - 0x01E44F 07:E43F: 85 2D     STA ram_002D
C - - - - - 0x01E451 07:E441: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01E454 07:E444: 4A        LSR
C - - - - - 0x01E455 07:E445: 4A        LSR
C - - - - - 0x01E456 07:E446: 4A        LSR
C - - - - - 0x01E457 07:E447: 4A        LSR
C - - - - - 0x01E458 07:E448: 4A        LSR
C - - - - - 0x01E459 07:E449: 18        CLC
C - - - - - 0x01E45A 07:E44A: 69 C0     ADC #$C0
C - - - - - 0x01E45C 07:E44C: 85 1C     STA ram_001C
C - - - - - 0x01E45E 07:E44E: 85 1F     STA ram_001F
C - - - - - 0x01E460 07:E450: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01E463 07:E453: 20 81 E4  JSR sub_E481
C - - - - - 0x01E466 07:E456: A9 08     LDA #$08
C - - - - - 0x01E468 07:E458: 85 1D     STA ram_001D
C - - - - - 0x01E46A 07:E45A: A9 23     LDA #$23
C - - - - - 0x01E46C 07:E45C: 85 20     STA ram_0020
C - - - - - 0x01E46E 07:E45E: 20 38 E5  JSR sub_E538
C - - - - - 0x01E471 07:E461: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01E474 07:E464: 18        CLC
C - - - - - 0x01E475 07:E465: 69 04     ADC #$04
C - - - - - 0x01E477 07:E467: 20 81 E4  JSR sub_E481
C - - - - - 0x01E47A 07:E46A: A9 04     LDA #$04
C - - - - - 0x01E47C 07:E46C: 85 1D     STA ram_001D
C - - - - - 0x01E47E 07:E46E: A9 2B     LDA #$2B
C - - - - - 0x01E480 07:E470: 85 20     STA ram_0020
C - - - - - 0x01E482 07:E472: A5 1C     LDA ram_001C
C - - - - - 0x01E484 07:E474: 85 1F     STA ram_001F
C - - - - - 0x01E486 07:E476: 20 38 E5  JSR sub_E538
C - - - - - 0x01E489 07:E479: 20 A1 E5  JSR sub_E5A1
C - - - - - 0x01E48C 07:E47C: 68        PLA
C - - - - - 0x01E48D 07:E47D: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E490 07:E480: 60        RTS



sub_E481:
C - - - - - 0x01E491 07:E481: 85 22     STA ram_0022
C - - - - - 0x01E493 07:E483: A8        TAY
C - - - - - 0x01E494 07:E484: 20 5B E1  JSR sub_E15B
C - - - - - 0x01E497 07:E487: A5 22     LDA ram_0022
C - - - - - 0x01E499 07:E489: 0A        ASL
C - - - - - 0x01E49A 07:E48A: 18        CLC
C - - - - - 0x01E49B 07:E48B: 65 28     ADC ram_0028
C - - - - - 0x01E49D 07:E48D: A8        TAY
C - - - - - 0x01E49E 07:E48E: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E4A0 07:E490: 85 2E     STA ram_002E
C - - - - - 0x01E4A2 07:E492: C8        INY
C - - - - - 0x01E4A3 07:E493: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E4A5 07:E495: 85 2F     STA ram_002F
C - - - - - 0x01E4A7 07:E497: E6 22     INC ram_0022
C - - - - - 0x01E4A9 07:E499: A4 22     LDY ram_0022
C - - - - - 0x01E4AB 07:E49B: 20 5B E1  JSR sub_E15B
C - - - - - 0x01E4AE 07:E49E: A5 22     LDA ram_0022
C - - - - - 0x01E4B0 07:E4A0: 0A        ASL
C - - - - - 0x01E4B1 07:E4A1: 18        CLC
C - - - - - 0x01E4B2 07:E4A2: 65 28     ADC ram_0028
C - - - - - 0x01E4B4 07:E4A4: A8        TAY
C - - - - - 0x01E4B5 07:E4A5: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E4B7 07:E4A7: 85 30     STA ram_0030
C - - - - - 0x01E4B9 07:E4A9: C8        INY
C - - - - - 0x01E4BA 07:E4AA: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E4BC 07:E4AC: 85 31     STA ram_0031
C - - - - - 0x01E4BE 07:E4AE: 60        RTS



sub_E4AF:
C - - - - - 0x01E4BF 07:E4AF: A9 00     LDA #$00
C - - - - - 0x01E4C1 07:E4B1: 85 1E     STA ram_001E
loc_E4B3:
C D 3 - - - 0x01E4C3 07:E4B3: 20 2A E5  JSR sub_E52A
C - - - - - 0x01E4C6 07:E4B6: A9 00     LDA #$00
C - - - - - 0x01E4C8 07:E4B8: 85 21     STA ram_0021
C - - - - - 0x01E4CA 07:E4BA: A5 2E     LDA ram_002E
C - - - - - 0x01E4CC 07:E4BC: 85 32     STA ram_0032
C - - - - - 0x01E4CE 07:E4BE: A5 2F     LDA ram_002F
C - - - - - 0x01E4D0 07:E4C0: 85 33     STA ram_0033
bra_E4C2:
loc_E4C2:
C D 3 - - - 0x01E4D2 07:E4C2: A5 1E     LDA ram_001E
C - - - - - 0x01E4D4 07:E4C4: 0A        ASL
C - - - - - 0x01E4D5 07:E4C5: A8        TAY
C - - - - - 0x01E4D6 07:E4C6: B1 32     LDA (ram_0032),Y
C - - - - - 0x01E4D8 07:E4C8: 85 34     STA ram_0034
C - - - - - 0x01E4DA 07:E4CA: C8        INY
C - - - - - 0x01E4DB 07:E4CB: B1 32     LDA (ram_0032),Y
C - - - - - 0x01E4DD 07:E4CD: 85 35     STA ram_0035
C - - - - - 0x01E4DF 07:E4CF: A5 1F     LDA ram_001F
C - - - - - 0x01E4E1 07:E4D1: 29 1F     AND #$1F
C - - - - - 0x01E4E3 07:E4D3: A8        TAY
C - - - - - 0x01E4E4 07:E4D4: B1 34     LDA (ram_0034),Y
C - - - - - 0x01E4E6 07:E4D6: 8D 07 20  STA $2007
C - - - - - 0x01E4E9 07:E4D9: E6 21     INC ram_0021
C - - - - - 0x01E4EB 07:E4DB: A5 21     LDA ram_0021
C - - - - - 0x01E4ED 07:E4DD: C9 20     CMP #$20
C - - - - - 0x01E4EF 07:E4DF: F0 1F     BEQ bra_E500
C - - - - - 0x01E4F1 07:E4E1: E6 1F     INC ram_001F
C - - - - - 0x01E4F3 07:E4E3: A5 1F     LDA ram_001F
C - - - - - 0x01E4F5 07:E4E5: 09 E0     ORA #$E0
C - - - - - 0x01E4F7 07:E4E7: C9 E0     CMP #$E0
C - - - - - 0x01E4F9 07:E4E9: D0 D7     BNE bra_E4C2
C - - - - - 0x01E4FB 07:E4EB: A5 1F     LDA ram_001F
C - - - - - 0x01E4FD 07:E4ED: 38        SEC
C - - - - - 0x01E4FE 07:E4EE: E9 20     SBC #$20
C - - - - - 0x01E500 07:E4F0: 85 1F     STA ram_001F
C - - - - - 0x01E502 07:E4F2: 20 2A E5  JSR sub_E52A
C - - - - - 0x01E505 07:E4F5: A5 30     LDA ram_0030
C - - - - - 0x01E507 07:E4F7: 85 32     STA ram_0032
C - - - - - 0x01E509 07:E4F9: A5 31     LDA ram_0031
C - - - - - 0x01E50B 07:E4FB: 85 33     STA ram_0033
C - - - - - 0x01E50D 07:E4FD: 4C C2 E4  JMP loc_E4C2
bra_E500:
C - - - - - 0x01E510 07:E500: E6 1F     INC ram_001F
C - - - - - 0x01E512 07:E502: A5 1F     LDA ram_001F
C - - - - - 0x01E514 07:E504: 09 E0     ORA #$E0
C - - - - - 0x01E516 07:E506: C9 E0     CMP #$E0
C - - - - - 0x01E518 07:E508: D0 07     BNE bra_E511
- - - - - - 0x01E51A 07:E50A: A5 1F     LDA ram_001F
- - - - - - 0x01E51C 07:E50C: 38        SEC
- - - - - - 0x01E51D 07:E50D: E9 20     SBC #$20
- - - - - - 0x01E51F 07:E50F: 85 1F     STA ram_001F
bra_E511:
C - - - - - 0x01E521 07:E511: E6 1E     INC ram_001E
C - - - - - 0x01E523 07:E513: A5 1E     LDA ram_001E
C - - - - - 0x01E525 07:E515: C5 1D     CMP ram_001D
C - - - - - 0x01E527 07:E517: F0 10     BEQ bra_E529_RTS
C - - - - - 0x01E529 07:E519: A5 1F     LDA ram_001F
C - - - - - 0x01E52B 07:E51B: 18        CLC
C - - - - - 0x01E52C 07:E51C: 69 20     ADC #$20
C - - - - - 0x01E52E 07:E51E: 85 1F     STA ram_001F
C - - - - - 0x01E530 07:E520: A5 20     LDA ram_0020
C - - - - - 0x01E532 07:E522: 69 00     ADC #$00
C - - - - - 0x01E534 07:E524: 85 20     STA ram_0020
C - - - - - 0x01E536 07:E526: 4C B3 E4  JMP loc_E4B3
bra_E529_RTS:
C - - - - - 0x01E539 07:E529: 60        RTS



sub_E52A:
C - - - - - 0x01E53A 07:E52A: AD 02 20  LDA $2002
C - - - - - 0x01E53D 07:E52D: A5 20     LDA ram_0020
C - - - - - 0x01E53F 07:E52F: 8D 06 20  STA $2006
C - - - - - 0x01E542 07:E532: A5 1F     LDA ram_001F
C - - - - - 0x01E544 07:E534: 8D 06 20  STA $2006
C - - - - - 0x01E547 07:E537: 60        RTS



sub_E538:
C - - - - - 0x01E548 07:E538: A9 00     LDA #$00
C - - - - - 0x01E54A 07:E53A: 85 1E     STA ram_001E
loc_E53C:
C D 3 - - - 0x01E54C 07:E53C: 20 2A E5  JSR sub_E52A
C - - - - - 0x01E54F 07:E53F: A9 00     LDA #$00
C - - - - - 0x01E551 07:E541: 85 21     STA ram_0021
C - - - - - 0x01E553 07:E543: A5 2E     LDA ram_002E
C - - - - - 0x01E555 07:E545: 85 32     STA ram_0032
C - - - - - 0x01E557 07:E547: A5 2F     LDA ram_002F
C - - - - - 0x01E559 07:E549: 85 33     STA ram_0033
bra_E54B:
loc_E54B:
C D 3 - - - 0x01E55B 07:E54B: A5 1F     LDA ram_001F
C - - - - - 0x01E55D 07:E54D: 38        SEC
C - - - - - 0x01E55E 07:E54E: E9 C0     SBC #$C0
C - - - - - 0x01E560 07:E550: A8        TAY
C - - - - - 0x01E561 07:E551: B1 32     LDA (ram_0032),Y
C - - - - - 0x01E563 07:E553: 8D 07 20  STA $2007
C - - - - - 0x01E566 07:E556: E6 21     INC ram_0021
C - - - - - 0x01E568 07:E558: A5 21     LDA ram_0021
C - - - - - 0x01E56A 07:E55A: C9 08     CMP #$08
C - - - - - 0x01E56C 07:E55C: F0 1F     BEQ bra_E57D
C - - - - - 0x01E56E 07:E55E: E6 1F     INC ram_001F
C - - - - - 0x01E570 07:E560: A5 1F     LDA ram_001F
C - - - - - 0x01E572 07:E562: 09 F8     ORA #$F8
C - - - - - 0x01E574 07:E564: C9 F8     CMP #$F8
C - - - - - 0x01E576 07:E566: D0 E3     BNE bra_E54B
C - - - - - 0x01E578 07:E568: A5 1F     LDA ram_001F
C - - - - - 0x01E57A 07:E56A: 38        SEC
C - - - - - 0x01E57B 07:E56B: E9 08     SBC #$08
C - - - - - 0x01E57D 07:E56D: 85 1F     STA ram_001F
C - - - - - 0x01E57F 07:E56F: 20 2A E5  JSR sub_E52A
C - - - - - 0x01E582 07:E572: A5 30     LDA ram_0030
C - - - - - 0x01E584 07:E574: 85 32     STA ram_0032
C - - - - - 0x01E586 07:E576: A5 31     LDA ram_0031
C - - - - - 0x01E588 07:E578: 85 33     STA ram_0033
C - - - - - 0x01E58A 07:E57A: 4C 4B E5  JMP loc_E54B
bra_E57D:
C - - - - - 0x01E58D 07:E57D: E6 1F     INC ram_001F
C - - - - - 0x01E58F 07:E57F: A5 1F     LDA ram_001F
C - - - - - 0x01E591 07:E581: 09 F8     ORA #$F8
C - - - - - 0x01E593 07:E583: C9 F8     CMP #$F8
C - - - - - 0x01E595 07:E585: D0 07     BNE bra_E58E
- - - - - - 0x01E597 07:E587: A5 1F     LDA ram_001F
- - - - - - 0x01E599 07:E589: 38        SEC
- - - - - - 0x01E59A 07:E58A: E9 08     SBC #$08
- - - - - - 0x01E59C 07:E58C: 85 1F     STA ram_001F
bra_E58E:
C - - - - - 0x01E59E 07:E58E: E6 1E     INC ram_001E
C - - - - - 0x01E5A0 07:E590: A5 1E     LDA ram_001E
C - - - - - 0x01E5A2 07:E592: C5 1D     CMP ram_001D
C - - - - - 0x01E5A4 07:E594: F0 0A     BEQ bra_E5A0_RTS
C - - - - - 0x01E5A6 07:E596: A5 1F     LDA ram_001F
C - - - - - 0x01E5A8 07:E598: 18        CLC
C - - - - - 0x01E5A9 07:E599: 69 08     ADC #$08
C - - - - - 0x01E5AB 07:E59B: 85 1F     STA ram_001F
C - - - - - 0x01E5AD 07:E59D: 4C 3C E5  JMP loc_E53C
bra_E5A0_RTS:
C - - - - - 0x01E5B0 07:E5A0: 60        RTS



sub_E5A1:
C - - - - - 0x01E5B1 07:E5A1: AD 02 20  LDA $2002
C - - - - - 0x01E5B4 07:E5A4: A9 2A     LDA #$2A
C - - - - - 0x01E5B6 07:E5A6: 8D 06 20  STA $2006
C - - - - - 0x01E5B9 07:E5A9: A9 00     LDA #$00
C - - - - - 0x01E5BB 07:E5AB: 8D 06 20  STA $2006
C - - - - - 0x01E5BE 07:E5AE: A0 00     LDY #$00
bra_E5B0:
C - - - - - 0x01E5C0 07:E5B0: B9 10 E6  LDA tbl_E610,Y
C - - - - - 0x01E5C3 07:E5B3: 8D 07 20  STA $2007
C - - - - - 0x01E5C6 07:E5B6: C8        INY
C - - - - - 0x01E5C7 07:E5B7: C0 E0     CPY #$E0
C - - - - - 0x01E5C9 07:E5B9: D0 F5     BNE bra_E5B0
C - - - - - 0x01E5CB 07:E5BB: AD 02 20  LDA $2002
C - - - - - 0x01E5CE 07:E5BE: A9 2A     LDA #$2A
C - - - - - 0x01E5D0 07:E5C0: 8D 06 20  STA $2006
C - - - - - 0x01E5D3 07:E5C3: A9 E0     LDA #$E0
C - - - - - 0x01E5D5 07:E5C5: 8D 06 20  STA $2006
C - - - - - 0x01E5D8 07:E5C8: A0 00     LDY #$00
C - - - - - 0x01E5DA 07:E5CA: A9 0F     LDA #$0F
bra_E5CC:
C - - - - - 0x01E5DC 07:E5CC: 8D 07 20  STA $2007
C - - - - - 0x01E5DF 07:E5CF: C8        INY
C - - - - - 0x01E5E0 07:E5D0: C0 E0     CPY #$E0
C - - - - - 0x01E5E2 07:E5D2: D0 F8     BNE bra_E5CC
C - - - - - 0x01E5E4 07:E5D4: AD 02 20  LDA $2002
C - - - - - 0x01E5E7 07:E5D7: A9 2B     LDA #$2B
C - - - - - 0x01E5E9 07:E5D9: 8D 06 20  STA $2006
C - - - - - 0x01E5EC 07:E5DC: A9 E0     LDA #$E0
C - - - - - 0x01E5EE 07:E5DE: 8D 06 20  STA $2006
C - - - - - 0x01E5F1 07:E5E1: A0 00     LDY #$00
C - - - - - 0x01E5F3 07:E5E3: A9 AA     LDA #$AA
bra_E5E5:
C - - - - - 0x01E5F5 07:E5E5: 8D 07 20  STA $2007
C - - - - - 0x01E5F8 07:E5E8: C8        INY
C - - - - - 0x01E5F9 07:E5E9: C0 20     CPY #$20
C - - - - - 0x01E5FB 07:E5EB: D0 F8     BNE bra_E5E5
C - - - - - 0x01E5FD 07:E5ED: AD 02 20  LDA $2002
C - - - - - 0x01E600 07:E5F0: A9 2B     LDA #$2B
C - - - - - 0x01E602 07:E5F2: 8D 06 20  STA $2006
C - - - - - 0x01E605 07:E5F5: A9 E0     LDA #$E0
C - - - - - 0x01E607 07:E5F7: 8D 06 20  STA $2006
C - - - - - 0x01E60A 07:E5FA: A0 00     LDY #$00
bra_E5FC:
C - - - - - 0x01E60C 07:E5FC: B9 08 E6  LDA tbl_E608,Y
C - - - - - 0x01E60F 07:E5FF: 8D 07 20  STA $2007
C - - - - - 0x01E612 07:E602: C8        INY
C - - - - - 0x01E613 07:E603: C0 08     CPY #$08
C - - - - - 0x01E615 07:E605: D0 F5     BNE bra_E5FC
C - - - - - 0x01E617 07:E607: 60        RTS



tbl_E608:
- D 3 - - - 0x01E618 07:E608: AA        .byte $AA   ; 
- D 3 - - - 0x01E619 07:E609: AA        .byte $AA   ; 
- D 3 - - - 0x01E61A 07:E60A: AA        .byte $AA   ; 
- D 3 - - - 0x01E61B 07:E60B: AA        .byte $AA   ; 
- D 3 - - - 0x01E61C 07:E60C: AA        .byte $AA   ; 
- D 3 - - - 0x01E61D 07:E60D: FA        .byte $FA   ; 
- D 3 - - - 0x01E61E 07:E60E: EA        .byte $EA   ; 
- D 3 - - - 0x01E61F 07:E60F: BA        .byte $BA   ; 



tbl_E610:
- D 3 - - - 0x01E620 07:E610: 0F        .byte $0F   ; 
- D 3 - - - 0x01E621 07:E611: FA        .byte $FA   ; 
- D 3 - - - 0x01E622 07:E612: FA        .byte $FA   ; 
- D 3 - - - 0x01E623 07:E613: FA        .byte $FA   ; 
- D 3 - - - 0x01E624 07:E614: FA        .byte $FA   ; 
- D 3 - - - 0x01E625 07:E615: FA        .byte $FA   ; 
- D 3 - - - 0x01E626 07:E616: FA        .byte $FA   ; 
- D 3 - - - 0x01E627 07:E617: FA        .byte $FA   ; 
- D 3 - - - 0x01E628 07:E618: FA        .byte $FA   ; 
- D 3 - - - 0x01E629 07:E619: FA        .byte $FA   ; 
- D 3 - - - 0x01E62A 07:E61A: FA        .byte $FA   ; 
- D 3 - - - 0x01E62B 07:E61B: FA        .byte $FA   ; 
- D 3 - - - 0x01E62C 07:E61C: FD        .byte $FD   ; 
- D 3 - - - 0x01E62D 07:E61D: FA        .byte $FA   ; 
- D 3 - - - 0x01E62E 07:E61E: FA        .byte $FA   ; 
- D 3 - - - 0x01E62F 07:E61F: FA        .byte $FA   ; 
- D 3 - - - 0x01E630 07:E620: FA        .byte $FA   ; 
- D 3 - - - 0x01E631 07:E621: FA        .byte $FA   ; 
- D 3 - - - 0x01E632 07:E622: FA        .byte $FA   ; 
- D 3 - - - 0x01E633 07:E623: FD        .byte $FD   ; 
- D 3 - - - 0x01E634 07:E624: FA        .byte $FA   ; 
- D 3 - - - 0x01E635 07:E625: FA        .byte $FA   ; 
- D 3 - - - 0x01E636 07:E626: FA        .byte $FA   ; 
- D 3 - - - 0x01E637 07:E627: FA        .byte $FA   ; 
- D 3 - - - 0x01E638 07:E628: FA        .byte $FA   ; 
- D 3 - - - 0x01E639 07:E629: FA        .byte $FA   ; 
- D 3 - - - 0x01E63A 07:E62A: FA        .byte $FA   ; 
- D 3 - - - 0x01E63B 07:E62B: FA        .byte $FA   ; 
- D 3 - - - 0x01E63C 07:E62C: FA        .byte $FA   ; 
- D 3 - - - 0x01E63D 07:E62D: FA        .byte $FA   ; 
- D 3 - - - 0x01E63E 07:E62E: FA        .byte $FA   ; 
- D 3 - - - 0x01E63F 07:E62F: FA        .byte $FA   ; 
- D 3 - - - 0x01E640 07:E630: 0F        .byte $0F   ; 
- D 3 - - - 0x01E641 07:E631: 0F        .byte $0F   ; 
- D 3 - - - 0x01E642 07:E632: 0F        .byte $0F   ; 
- D 3 - - - 0x01E643 07:E633: 0F        .byte $0F   ; 
- D 3 - - - 0x01E644 07:E634: 0F        .byte $0F   ; 
- D 3 - - - 0x01E645 07:E635: 0F        .byte $0F   ; 
- D 3 - - - 0x01E646 07:E636: 0F        .byte $0F   ; 
- D 3 - - - 0x01E647 07:E637: 0F        .byte $0F   ; 
- D 3 - - - 0x01E648 07:E638: 0F        .byte $0F   ; 
- D 3 - - - 0x01E649 07:E639: 0F        .byte $0F   ; 
- D 3 - - - 0x01E64A 07:E63A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E64B 07:E63B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E64C 07:E63C: 7E        .byte $7E   ; 
- D 3 - - - 0x01E64D 07:E63D: 0F        .byte $0F   ; 
- D 3 - - - 0x01E64E 07:E63E: 0F        .byte $0F   ; 
- D 3 - - - 0x01E64F 07:E63F: 0F        .byte $0F   ; 
- D 3 - - - 0x01E650 07:E640: 0F        .byte $0F   ; 
- D 3 - - - 0x01E651 07:E641: 0F        .byte $0F   ; 
- D 3 - - - 0x01E652 07:E642: 0F        .byte $0F   ; 
- D 3 - - - 0x01E653 07:E643: 7E        .byte $7E   ; 
- D 3 - - - 0x01E654 07:E644: 0F        .byte $0F   ; 
- D 3 - - - 0x01E655 07:E645: 0F        .byte $0F   ; 
- D 3 - - - 0x01E656 07:E646: 0F        .byte $0F   ; 
- D 3 - - - 0x01E657 07:E647: 0F        .byte $0F   ; 
- D 3 - - - 0x01E658 07:E648: 0F        .byte $0F   ; 
- D 3 - - - 0x01E659 07:E649: 0F        .byte $0F   ; 
- D 3 - - - 0x01E65A 07:E64A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E65B 07:E64B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E65C 07:E64C: 0F        .byte $0F   ; 
- D 3 - - - 0x01E65D 07:E64D: 0F        .byte $0F   ; 
- D 3 - - - 0x01E65E 07:E64E: 0F        .byte $0F   ; 
- D 3 - - - 0x01E65F 07:E64F: 0F        .byte $0F   ; 
- D 3 - - - 0x01E660 07:E650: 0F        .byte $0F   ; 
- D 3 - - - 0x01E661 07:E651: 0F        .byte $0F   ; 
- D 3 - - - 0x01E662 07:E652: 0F        .byte $0F   ; 
- D 3 - - - 0x01E663 07:E653: 0F        .byte $0F   ; 
- D 3 - - - 0x01E664 07:E654: 0F        .byte $0F   ; 
- D 3 - - - 0x01E665 07:E655: 0F        .byte $0F   ; 
- D 3 - - - 0x01E666 07:E656: 0F        .byte $0F   ; 
- D 3 - - - 0x01E667 07:E657: 0F        .byte $0F   ; 
- D 3 - - - 0x01E668 07:E658: 0F        .byte $0F   ; 
- D 3 - - - 0x01E669 07:E659: 0F        .byte $0F   ; 
- D 3 - - - 0x01E66A 07:E65A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E66B 07:E65B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E66C 07:E65C: 7E        .byte $7E   ; 
- D 3 - - - 0x01E66D 07:E65D: 1D        .byte $1D   ; 
- D 3 - - - 0x01E66E 07:E65E: 3C        .byte $3C   ; 
- D 3 - - - 0x01E66F 07:E65F: 1C        .byte $1C   ; 
- D 3 - - - 0x01E670 07:E660: 3C        .byte $3C   ; 
- D 3 - - - 0x01E671 07:E661: 3C        .byte $3C   ; 
- D 3 - - - 0x01E672 07:E662: 1C        .byte $1C   ; 
- D 3 - - - 0x01E673 07:E663: 7E        .byte $7E   ; 
- D 3 - - - 0x01E674 07:E664: 0F        .byte $0F   ; 
- D 3 - - - 0x01E675 07:E665: 0F        .byte $0F   ; 
- D 3 - - - 0x01E676 07:E666: 0F        .byte $0F   ; 
- D 3 - - - 0x01E677 07:E667: 0F        .byte $0F   ; 
- D 3 - - - 0x01E678 07:E668: 0F        .byte $0F   ; 
- D 3 - - - 0x01E679 07:E669: 0F        .byte $0F   ; 
- D 3 - - - 0x01E67A 07:E66A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E67B 07:E66B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E67C 07:E66C: 0F        .byte $0F   ; 
- D 3 - - - 0x01E67D 07:E66D: 0F        .byte $0F   ; 
- D 3 - - - 0x01E67E 07:E66E: 0F        .byte $0F   ; 
- D 3 - - - 0x01E67F 07:E66F: 0F        .byte $0F   ; 
- D 3 - - - 0x01E680 07:E670: 0F        .byte $0F   ; 
- D 3 - - - 0x01E681 07:E671: 0F        .byte $0F   ; 
- D 3 - - - 0x01E682 07:E672: 0F        .byte $0F   ; 
- D 3 - - - 0x01E683 07:E673: 0F        .byte $0F   ; 
- D 3 - - - 0x01E684 07:E674: 0F        .byte $0F   ; 
- D 3 - - - 0x01E685 07:E675: 0F        .byte $0F   ; 
- D 3 - - - 0x01E686 07:E676: 0F        .byte $0F   ; 
- D 3 - - - 0x01E687 07:E677: 0F        .byte $0F   ; 
- D 3 - - - 0x01E688 07:E678: 0F        .byte $0F   ; 
- D 3 - - - 0x01E689 07:E679: 0F        .byte $0F   ; 
- D 3 - - - 0x01E68A 07:E67A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E68B 07:E67B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E68C 07:E67C: 7E        .byte $7E   ; 
- D 3 - - - 0x01E68D 07:E67D: 2E        .byte $2E   ; 
- D 3 - - - 0x01E68E 07:E67E: 0E        .byte $0E   ; 
- D 3 - - - 0x01E68F 07:E67F: 2C        .byte $2C   ; 
- D 3 - - - 0x01E690 07:E680: 2D        .byte $2D   ; 
- D 3 - - - 0x01E691 07:E681: 0E        .byte $0E   ; 
- D 3 - - - 0x01E692 07:E682: 2F        .byte $2F   ; 
- D 3 - - - 0x01E693 07:E683: 7E        .byte $7E   ; 
- D 3 - - - 0x01E694 07:E684: 0F        .byte $0F   ; 
- D 3 - - - 0x01E695 07:E685: 0F        .byte $0F   ; 
- D 3 - - - 0x01E696 07:E686: 0F        .byte $0F   ; 
- D 3 - - - 0x01E697 07:E687: 0F        .byte $0F   ; 
- D 3 - - - 0x01E698 07:E688: 0F        .byte $0F   ; 
- D 3 - - - 0x01E699 07:E689: 0F        .byte $0F   ; 
- D 3 - - - 0x01E69A 07:E68A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E69B 07:E68B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E69C 07:E68C: 0F        .byte $0F   ; 
- D 3 - - - 0x01E69D 07:E68D: 0F        .byte $0F   ; 
- D 3 - - - 0x01E69E 07:E68E: 0F        .byte $0F   ; 
- D 3 - - - 0x01E69F 07:E68F: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A0 07:E690: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A1 07:E691: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A2 07:E692: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A3 07:E693: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A4 07:E694: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A5 07:E695: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A6 07:E696: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A7 07:E697: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A8 07:E698: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6A9 07:E699: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6AA 07:E69A: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6AB 07:E69B: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6AC 07:E69C: 7E        .byte $7E   ; 
- D 3 - - - 0x01E6AD 07:E69D: 1F        .byte $1F   ; 
- D 3 - - - 0x01E6AE 07:E69E: 3D        .byte $3D   ; 
- D 3 - - - 0x01E6AF 07:E69F: 1E        .byte $1E   ; 
- D 3 - - - 0x01E6B0 07:E6A0: 3D        .byte $3D   ; 
- D 3 - - - 0x01E6B1 07:E6A1: 3D        .byte $3D   ; 
- D 3 - - - 0x01E6B2 07:E6A2: 1E        .byte $1E   ; 
- D 3 - - - 0x01E6B3 07:E6A3: 7E        .byte $7E   ; 
- D 3 - - - 0x01E6B4 07:E6A4: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6B5 07:E6A5: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6B6 07:E6A6: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6B7 07:E6A7: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6B8 07:E6A8: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6B9 07:E6A9: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6BA 07:E6AA: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6BB 07:E6AB: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6BC 07:E6AC: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6BD 07:E6AD: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6BE 07:E6AE: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6BF 07:E6AF: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6C0 07:E6B0: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6C1 07:E6B1: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C2 07:E6B2: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C3 07:E6B3: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C4 07:E6B4: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C5 07:E6B5: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C6 07:E6B6: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C7 07:E6B7: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C8 07:E6B8: FA        .byte $FA   ; 
- D 3 - - - 0x01E6C9 07:E6B9: FA        .byte $FA   ; 
- D 3 - - - 0x01E6CA 07:E6BA: FA        .byte $FA   ; 
- D 3 - - - 0x01E6CB 07:E6BB: FA        .byte $FA   ; 
- D 3 - - - 0x01E6CC 07:E6BC: 7C        .byte $7C   ; 
- D 3 - - - 0x01E6CD 07:E6BD: FA        .byte $FA   ; 
- D 3 - - - 0x01E6CE 07:E6BE: FA        .byte $FA   ; 
- D 3 - - - 0x01E6CF 07:E6BF: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D0 07:E6C0: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D1 07:E6C1: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D2 07:E6C2: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D3 07:E6C3: 7C        .byte $7C   ; 
- D 3 - - - 0x01E6D4 07:E6C4: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D5 07:E6C5: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D6 07:E6C6: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D7 07:E6C7: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D8 07:E6C8: FA        .byte $FA   ; 
- D 3 - - - 0x01E6D9 07:E6C9: FA        .byte $FA   ; 
- D 3 - - - 0x01E6DA 07:E6CA: FA        .byte $FA   ; 
- D 3 - - - 0x01E6DB 07:E6CB: FA        .byte $FA   ; 
- D 3 - - - 0x01E6DC 07:E6CC: FA        .byte $FA   ; 
- D 3 - - - 0x01E6DD 07:E6CD: FA        .byte $FA   ; 
- D 3 - - - 0x01E6DE 07:E6CE: FA        .byte $FA   ; 
- D 3 - - - 0x01E6DF 07:E6CF: FA        .byte $FA   ; 
- D 3 - - - 0x01E6E0 07:E6D0: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E1 07:E6D1: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E2 07:E6D2: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E3 07:E6D3: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E4 07:E6D4: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E5 07:E6D5: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E6 07:E6D6: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E7 07:E6D7: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E8 07:E6D8: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6E9 07:E6D9: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6EA 07:E6DA: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6EB 07:E6DB: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6EC 07:E6DC: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6ED 07:E6DD: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6EE 07:E6DE: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6EF 07:E6DF: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F0 07:E6E0: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F1 07:E6E1: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F2 07:E6E2: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F3 07:E6E3: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F4 07:E6E4: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F5 07:E6E5: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F6 07:E6E6: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F7 07:E6E7: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F8 07:E6E8: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6F9 07:E6E9: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6FA 07:E6EA: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6FB 07:E6EB: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6FC 07:E6EC: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6FD 07:E6ED: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6FE 07:E6EE: 0F        .byte $0F   ; 
- D 3 - - - 0x01E6FF 07:E6EF: 0F        .byte $0F   ; 



sub_E6F0:
.export sub_0x01E700
sub_0x01E700:
C - - - - - 0x01E700 07:E6F0: AD FF BF  LDA $BFFF
C - - - - - 0x01E703 07:E6F3: 48        PHA
C - - - - - 0x01E704 07:E6F4: AD F3 05  LDA ram_номер_prg_банка
C - - - - - 0x01E707 07:E6F7: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E70A 07:E6FA: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x01E70D 07:E6FD: 4A        LSR
C - - - - - 0x01E70E 07:E6FE: 4A        LSR
C - - - - - 0x01E70F 07:E6FF: 4A        LSR
C - - - - - 0x01E710 07:E700: 85 1C     STA ram_001C
C - - - - - 0x01E712 07:E702: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x01E715 07:E705: 85 1D     STA ram_001D
C - - - - - 0x01E717 07:E707: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01E71A 07:E70A: D0 19     BNE bra_E725
C - - - - - 0x01E71C 07:E70C: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01E71F 07:E70F: C9 F0     CMP #$F0
C - - - - - 0x01E721 07:E711: 90 24     BCC bra_E737
C - - - - - 0x01E723 07:E713: A9 04     LDA #$04
C - - - - - 0x01E725 07:E715: 85 1F     STA ram_001F
C - - - - - 0x01E727 07:E717: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01E72A 07:E71A: 38        SEC
C - - - - - 0x01E72B 07:E71B: E9 F0     SBC #$F0
C - - - - - 0x01E72D 07:E71D: 4A        LSR
C - - - - - 0x01E72E 07:E71E: 4A        LSR
C - - - - - 0x01E72F 07:E71F: 4A        LSR
C - - - - - 0x01E730 07:E720: 85 1E     STA ram_001E
C - - - - - 0x01E732 07:E722: 4C 43 E7  JMP loc_E743
bra_E725:
C - - - - - 0x01E735 07:E725: A9 04     LDA #$04
C - - - - - 0x01E737 07:E727: 85 1F     STA ram_001F
C - - - - - 0x01E739 07:E729: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01E73C 07:E72C: 18        CLC
C - - - - - 0x01E73D 07:E72D: 69 10     ADC #$10
C - - - - - 0x01E73F 07:E72F: 4A        LSR
C - - - - - 0x01E740 07:E730: 4A        LSR
C - - - - - 0x01E741 07:E731: 4A        LSR
C - - - - - 0x01E742 07:E732: 85 1E     STA ram_001E
C - - - - - 0x01E744 07:E734: 4C 43 E7  JMP loc_E743
bra_E737:
C - - - - - 0x01E747 07:E737: A9 00     LDA #$00
C - - - - - 0x01E749 07:E739: 85 1F     STA ram_001F
C - - - - - 0x01E74B 07:E73B: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01E74E 07:E73E: 4A        LSR
C - - - - - 0x01E74F 07:E73F: 4A        LSR
C - - - - - 0x01E750 07:E740: 4A        LSR
C - - - - - 0x01E751 07:E741: 85 1E     STA ram_001E
loc_E743:
C D 3 - - - 0x01E753 07:E743: A5 1D     LDA ram_001D
C - - - - - 0x01E755 07:E745: 18        CLC
C - - - - - 0x01E756 07:E746: 65 1F     ADC ram_001F
C - - - - - 0x01E758 07:E748: 85 20     STA ram_0020
C - - - - - 0x01E75A 07:E74A: A8        TAY
C - - - - - 0x01E75B 07:E74B: AD F1 05  LDA ram_набор_луж
C - - - - - 0x01E75E 07:E74E: 85 29     STA ram_0029
C - - - - - 0x01E760 07:E750: A9 00     LDA #$00
C - - - - - 0x01E762 07:E752: 85 21     STA ram_0021
bra_E754:
C - - - - - 0x01E764 07:E754: 46 29     LSR ram_0029
C - - - - - 0x01E766 07:E756: 88        DEY
C - - - - - 0x01E767 07:E757: 10 FB     BPL bra_E754
C - - - - - 0x01E769 07:E759: 90 04     BCC bra_E75F
C - - - - - 0x01E76B 07:E75B: A9 10     LDA #$10
C - - - - - 0x01E76D 07:E75D: 85 21     STA ram_0021
bra_E75F:
C - - - - - 0x01E76F 07:E75F: A5 20     LDA ram_0020
C - - - - - 0x01E771 07:E761: 0A        ASL
C - - - - - 0x01E772 07:E762: 18        CLC
C - - - - - 0x01E773 07:E763: 65 21     ADC ram_0021
C - - - - - 0x01E775 07:E765: A8        TAY
C - - - - - 0x01E776 07:E766: B1 40     LDA (ram_0040),Y
C - - - - - 0x01E778 07:E768: 85 2E     STA ram_002E
C - - - - - 0x01E77A 07:E76A: C8        INY
C - - - - - 0x01E77B 07:E76B: B1 40     LDA (ram_0040),Y
C - - - - - 0x01E77D 07:E76D: 85 2F     STA ram_002F
C - - - - - 0x01E77F 07:E76F: A5 1E     LDA ram_001E
C - - - - - 0x01E781 07:E771: 0A        ASL
C - - - - - 0x01E782 07:E772: A8        TAY
C - - - - - 0x01E783 07:E773: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01E785 07:E775: 85 2C     STA ram_002C
C - - - - - 0x01E787 07:E777: C8        INY
C - - - - - 0x01E788 07:E778: B1 2E     LDA (ram_002E),Y
C - - - - - 0x01E78A 07:E77A: 85 2D     STA ram_002D
C - - - - - 0x01E78C 07:E77C: A4 1C     LDY ram_001C
C - - - - - 0x01E78E 07:E77E: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E790 07:E780: 30 0B     BMI bra_E78D
C - - - - - 0x01E792 07:E782: C9 40     CMP #$40
C - - - - - 0x01E794 07:E784: 90 12     BCC bra_E798
C - - - - - 0x01E796 07:E786: C9 6C     CMP #$6C
C - - - - - 0x01E798 07:E788: 90 2E     BCC bra_E7B8
C - - - - - 0x01E79A 07:E78A: 4C BD E7  JMP loc_E7BD
bra_E78D:
C - - - - - 0x01E79D 07:E78D: C9 95     CMP #$95
C - - - - - 0x01E79F 07:E78F: 90 07     BCC bra_E798
C - - - - - 0x01E7A1 07:E791: C9 E8     CMP #$E8
C - - - - - 0x01E7A3 07:E793: 90 23     BCC bra_E7B8
C - - - - - 0x01E7A5 07:E795: 4C BD E7  JMP loc_E7BD
bra_E798:
C - - - - - 0x01E7A8 07:E798: AD F4 05  LDA ram_цвет_поля
C - - - - - 0x01E7AB 07:E79B: C9 04     CMP #$04
C - - - - - 0x01E7AD 07:E79D: F0 14     BEQ bra_E7B3
C - - - - - 0x01E7AF 07:E79F: 29 01     AND #$01
C - - - - - 0x01E7B1 07:E7A1: F0 0B     BEQ bra_E7AE
- - - - - - 0x01E7B3 07:E7A3: AD FB 05  LDA ram_опция_поверхность_влажность
- - - - - - 0x01E7B6 07:E7A6: 29 0F     AND #$0F
- - - - - - 0x01E7B8 07:E7A8: 18        CLC
- - - - - - 0x01E7B9 07:E7A9: 69 01     ADC #$01
- - - - - - 0x01E7BB 07:E7AB: 4C B0 E7  JMP loc_E7B0
bra_E7AE:
C - - - - - 0x01E7BE 07:E7AE: A9 00     LDA #$00
loc_E7B0:
C - - - - - 0x01E7C0 07:E7B0: 4C D1 E7  JMP loc_E7D1
bra_E7B3:
C - - - - - 0x01E7C3 07:E7B3: A9 03     LDA #$03
C - - - - - 0x01E7C5 07:E7B5: 4C D1 E7  JMP loc_E7D1
bra_E7B8:
C - - - - - 0x01E7C8 07:E7B8: A9 00     LDA #$00
C - - - - - 0x01E7CA 07:E7BA: 4C D1 E7  JMP loc_E7D1
loc_E7BD:
C D 3 - - - 0x01E7CD 07:E7BD: AD F4 05  LDA ram_цвет_поля
C - - - - - 0x01E7D0 07:E7C0: 29 01     AND #$01
C - - - - - 0x01E7D2 07:E7C2: F0 05     BEQ bra_E7C9
- - - - - - 0x01E7D4 07:E7C4: A9 00     LDA #$00
- - - - - - 0x01E7D6 07:E7C6: 4C D1 E7  JMP loc_E7D1
bra_E7C9:
C - - - - - 0x01E7D9 07:E7C9: AD FB 05  LDA ram_опция_поверхность_влажность
C - - - - - 0x01E7DC 07:E7CC: 29 0F     AND #$0F
C - - - - - 0x01E7DE 07:E7CE: 18        CLC
C - - - - - 0x01E7DF 07:E7CF: 69 01     ADC #$01
loc_E7D1:
C D 3 - - - 0x01E7E1 07:E7D1: 9D 30 01  STA ram_игрок_на_поверхности,X
C - - - - - 0x01E7E4 07:E7D4: 68        PLA
C - - - - - 0x01E7E5 07:E7D5: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E7E8 07:E7D8: 60        RTS



sub_E7D9:
C - - - - - 0x01E7E9 07:E7D9: AD FF BF  LDA $BFFF
C - - - - - 0x01E7EC 07:E7DC: 48        PHA
C - - - - - 0x01E7ED 07:E7DD: A9 01     LDA #$01
C - - - - - 0x01E7EF 07:E7DF: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E7F2 07:E7E2: AD E5 05  LDA ram_покрытие_поля_лужами
C - - - - - 0x01E7F5 07:E7E5: 0A        ASL
C - - - - - 0x01E7F6 07:E7E6: A8        TAY
C - - - - - 0x01E7F7 07:E7E7: B9 14 80  LDA $8014,Y
C - - - - - 0x01E7FA 07:E7EA: 85 40     STA ram_0040
C - - - - - 0x01E7FC 07:E7EC: B9 15 80  LDA $8015,Y
C - - - - - 0x01E7FF 07:E7EF: 85 41     STA ram_0041
C - - - - - 0x01E801 07:E7F1: 68        PLA
C - - - - - 0x01E802 07:E7F2: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01E805 07:E7F5: 60        RTS


; bzk garbage
- - - - - - 0x01E806 07:E7F6: F8        .byte $F8, $E7, $00, $02, $02, $02, $02, $02, $02, $02   ; 
- - - - - - 0x01E810 07:E800: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02   ; 
- - - - - - 0x01E820 07:E810: 02        .byte $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02   ; 
- - - - - - 0x01E830 07:E820: 02        .byte $02, $02, $02, $02, $02, $02, $02, $04   ; 



loc_E828:
C D 3 - - - 0x01E838 07:E828: 85 2C     STA ram_002C
C - - - - - 0x01E83A 07:E82A: A9 00     LDA #$00
C - - - - - 0x01E83C 07:E82C: 85 2D     STA ram_002D
C - - - - - 0x01E83E 07:E82E: 06 2C     ASL ram_002C
C - - - - - 0x01E840 07:E830: 26 2D     ROL ram_002D
C - - - - - 0x01E842 07:E832: 06 2C     ASL ram_002C
C - - - - - 0x01E844 07:E834: 26 2D     ROL ram_002D
C - - - - - 0x01E846 07:E836: 06 2C     ASL ram_002C
C - - - - - 0x01E848 07:E838: 26 2D     ROL ram_002D
C - - - - - 0x01E84A 07:E83A: A5 2C     LDA ram_002C
C - - - - - 0x01E84C 07:E83C: 6D 18 EA  ADC tbl_EA18
C - - - - - 0x01E84F 07:E83F: 85 2C     STA ram_002C
C - - - - - 0x01E851 07:E841: A5 2D     LDA ram_002D
C - - - - - 0x01E853 07:E843: 6D 19 EA  ADC tbl_EA18 + 1
C - - - - - 0x01E856 07:E846: 85 2D     STA ram_002D
C - - - - - 0x01E858 07:E848: A0 00     LDY #$00
C - - - - - 0x01E85A 07:E84A: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E85C 07:E84C: 85 1F     STA ram_001F
C - - - - - 0x01E85E 07:E84E: C8        INY
C - - - - - 0x01E85F 07:E84F: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E861 07:E851: 85 20     STA ram_0020
C - - - - - 0x01E863 07:E853: C8        INY
C - - - - - 0x01E864 07:E854: C8        INY
C - - - - - 0x01E865 07:E855: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E867 07:E857: 85 26     STA ram_0026
C - - - - - 0x01E869 07:E859: C8        INY
C - - - - - 0x01E86A 07:E85A: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E86C 07:E85C: 85 27     STA ram_0027
C - - - - - 0x01E86E 07:E85E: C8        INY
C - - - - - 0x01E86F 07:E85F: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E871 07:E861: 85 28     STA ram_0028
C - - - - - 0x01E873 07:E863: C8        INY
C - - - - - 0x01E874 07:E864: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E876 07:E866: 85 29     STA ram_0029
C - - - - - 0x01E878 07:E868: C8        INY
C - - - - - 0x01E879 07:E869: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E87B 07:E86B: 85 2B     STA ram_002B
C - - - - - 0x01E87D 07:E86D: A0 02     LDY #$02
C - - - - - 0x01E87F 07:E86F: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E881 07:E871: 0A        ASL
C - - - - - 0x01E882 07:E872: A8        TAY
C - - - - - 0x01E883 07:E873: B9 12 EA  LDA tbl_EA12,Y
C - - - - - 0x01E886 07:E876: 85 2E     STA ram_002E
C - - - - - 0x01E888 07:E878: B9 13 EA  LDA tbl_EA13,Y
C - - - - - 0x01E88B 07:E87B: 85 2F     STA ram_002F
C - - - - - 0x01E88D 07:E87D: A9 00     LDA #$00
C - - - - - 0x01E88F 07:E87F: 20 E4 C2  JSR sub_C2E4
C - - - - - 0x01E892 07:E882: 20 A9 EC  JSR sub_ECA9
C - - - - - 0x01E895 07:E885: 20 71 EE  JSR sub_EE71
C - - - - - 0x01E898 07:E888: 20 C1 EC  JSR sub_ECC1
C - - - - - 0x01E89B 07:E88B: 24 1F     BIT ram_001F
C - - - - - 0x01E89D 07:E88D: 70 06     BVS bra_E895
- - - - - - 0x01E89F 07:E88F: 20 BA E8  JSR sub_E8BA
- - - - - - 0x01E8A2 07:E892: 4C 98 E8  JMP loc_E898
bra_E895:
C - - - - - 0x01E8A5 07:E895: 20 E6 E8  JSR sub_E8E6
loc_E898:
C - - - - - 0x01E8A8 07:E898: A5 2B     LDA ram_002B
C - - - - - 0x01E8AA 07:E89A: 30 03     BMI bra_E89F
C - - - - - 0x01E8AC 07:E89C: 8D 00 A0  STA $A000
bra_E89F:
C - - - - - 0x01E8AF 07:E89F: A5 26     LDA ram_0026
C - - - - - 0x01E8B1 07:E8A1: 8D BC 05  STA ram_банк_фона
C - - - - - 0x01E8B4 07:E8A4: A5 27     LDA ram_0027
C - - - - - 0x01E8B6 07:E8A6: 8D BD 05  STA ram_банк_фона + 1
C - - - - - 0x01E8B9 07:E8A9: A5 28     LDA ram_0028
C - - - - - 0x01E8BB 07:E8AB: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x01E8BE 07:E8AE: A5 29     LDA ram_0029
C - - - - - 0x01E8C0 07:E8B0: 8D AD 05  STA ram_номер_палитры_фона + 1
C - - - - - 0x01E8C3 07:E8B3: 20 CB EC  JSR sub_ECCB
C - - - - - 0x01E8C6 07:E8B6: 20 65 EE  JSR sub_EE65
C - - - - - 0x01E8C9 07:E8B9: 60        RTS



sub_E8BA:
; bzk неясно из какого банка читается 800F 8010
- - - - - - 0x01E8CA 07:E8BA: AD FF BF  LDA $BFFF
- - - - - - 0x01E8CD 07:E8BD: 48        PHA
- - - - - - 0x01E8CE 07:E8BE: A5 1F     LDA ram_001F
- - - - - - 0x01E8D0 07:E8C0: 20 D3 EE  JSR sub_EED3_prg_bankswitch
- - - - - - 0x01E8D3 07:E8C3: AD 0F 80  LDA $800F
- - - - - - 0x01E8D6 07:E8C6: 85 34     STA ram_0034
- - - - - - 0x01E8D8 07:E8C8: AD 10 80  LDA $8010
- - - - - - 0x01E8DB 07:E8CB: 85 35     STA ram_0035
- - - - - - 0x01E8DD 07:E8CD: A5 20     LDA ram_0020
- - - - - - 0x01E8DF 07:E8CF: 0A        ASL
- - - - - - 0x01E8E0 07:E8D0: A8        TAY
- - - - - - 0x01E8E1 07:E8D1: B1 34     LDA (ram_0034),Y
- - - - - - 0x01E8E3 07:E8D3: 85 2C     STA ram_002C
- - - - - - 0x01E8E5 07:E8D5: C8        INY
- - - - - - 0x01E8E6 07:E8D6: B1 34     LDA (ram_0034),Y
- - - - - - 0x01E8E8 07:E8D8: 85 2D     STA ram_002D
- - - - - - 0x01E8EA 07:E8DA: A9 FF     LDA #$FF
- - - - - - 0x01E8EC 07:E8DC: 85 2A     STA ram_002A
- - - - - - 0x01E8EE 07:E8DE: 20 41 E9  JSR sub_E941
- - - - - - 0x01E8F1 07:E8E1: 68        PLA
- - - - - - 0x01E8F2 07:E8E2: 20 D3 EE  JSR sub_EED3_prg_bankswitch
- - - - - - 0x01E8F5 07:E8E5: 60        RTS



sub_E8E6:
C - - - - - 0x01E8F6 07:E8E6: AD B8 05  LDA ram_банк_спрайтов
C - - - - - 0x01E8F9 07:E8E9: 48        PHA
C - - - - - 0x01E8FA 07:E8EA: AD B9 05  LDA ram_банк_спрайтов + 1
C - - - - - 0x01E8FD 07:E8ED: 48        PHA
C - - - - - 0x01E8FE 07:E8EE: AD BA 05  LDA ram_банк_спрайтов + 2
C - - - - - 0x01E901 07:E8F1: 48        PHA
C - - - - - 0x01E902 07:E8F2: AD BB 05  LDA ram_банк_спрайтов + 3
C - - - - - 0x01E905 07:E8F5: 48        PHA
C - - - - - 0x01E906 07:E8F6: A5 1F     LDA ram_001F
C - - - - - 0x01E908 07:E8F8: AA        TAX
C - - - - - 0x01E909 07:E8F9: 8E BC 05  STX ram_банк_фона
C - - - - - 0x01E90C 07:E8FC: E8        INX
C - - - - - 0x01E90D 07:E8FD: E8        INX
C - - - - - 0x01E90E 07:E8FE: 8E BD 05  STX ram_банк_фона + 1
C - - - - - 0x01E911 07:E901: E8        INX
C - - - - - 0x01E912 07:E902: E8        INX
C - - - - - 0x01E913 07:E903: 8E B8 05  STX ram_банк_спрайтов
C - - - - - 0x01E916 07:E906: E8        INX
C - - - - - 0x01E917 07:E907: 8E B9 05  STX ram_банк_спрайтов + 1
C - - - - - 0x01E91A 07:E90A: E8        INX
C - - - - - 0x01E91B 07:E90B: 8E BA 05  STX ram_банк_спрайтов + 2
C - - - - - 0x01E91E 07:E90E: E8        INX
C - - - - - 0x01E91F 07:E90F: 8E BB 05  STX ram_банк_спрайтов + 3
C - - - - - 0x01E922 07:E912: A5 20     LDA ram_0020
C - - - - - 0x01E924 07:E914: 0A        ASL
C - - - - - 0x01E925 07:E915: A8        TAY
C - - - - - 0x01E926 07:E916: B9 42 EB  LDA tbl_EB42,Y
C - - - - - 0x01E929 07:E919: 85 2C     STA ram_002C
C - - - - - 0x01E92B 07:E91B: B9 43 EB  LDA tbl_EB43,Y
C - - - - - 0x01E92E 07:E91E: 85 2D     STA ram_002D
C - - - - - 0x01E930 07:E920: A9 00     LDA #$00
C - - - - - 0x01E932 07:E922: 85 2A     STA ram_002A
C - - - - - 0x01E934 07:E924: 20 9A EE  JSR sub_EE9A
C - - - - - 0x01E937 07:E927: 20 7D EE  JSR sub_EE7D
C - - - - - 0x01E93A 07:E92A: 20 41 E9  JSR sub_E941
C - - - - - 0x01E93D 07:E92D: 68        PLA
C - - - - - 0x01E93E 07:E92E: 8D BB 05  STA ram_банк_спрайтов + 3
C - - - - - 0x01E941 07:E931: 68        PLA
C - - - - - 0x01E942 07:E932: 8D BA 05  STA ram_банк_спрайтов + 2
C - - - - - 0x01E945 07:E935: 68        PLA
C - - - - - 0x01E946 07:E936: 8D B9 05  STA ram_банк_спрайтов + 1
C - - - - - 0x01E949 07:E939: 68        PLA
C - - - - - 0x01E94A 07:E93A: 8D B8 05  STA ram_банк_спрайтов
C - - - - - 0x01E94D 07:E93D: 20 9A EE  JSR sub_EE9A
C - - - - - 0x01E950 07:E940: 60        RTS



sub_E941:
C - - - - - 0x01E951 07:E941: A9 00     LDA #$00
C - - - - - 0x01E953 07:E943: 8D 00 A0  STA $A000
loc_E946:
C D 3 - - - 0x01E956 07:E946: 20 D2 E9  JSR sub_E9D2
C - - - - - 0x01E959 07:E949: A5 1C     LDA ram_001C
C - - - - - 0x01E95B 07:E94B: F0 10     BEQ bra_E95D_RTS
C - - - - - 0x01E95D 07:E94D: 29 C0     AND #$C0
C - - - - - 0x01E95F 07:E94F: 0A        ASL
C - - - - - 0x01E960 07:E950: 2A        ROL
C - - - - - 0x01E961 07:E951: 2A        ROL
C - - - - - 0x01E962 07:E952: 20 8F EC  JSR sub_EC8F
- D 3 - I - 0x01E965 07:E955: 5E E9     .word ofs_027_E95E_00
- D 3 - I - 0x01E967 07:E957: 6F E9     .word ofs_027_E96F_01
- D 3 - I - 0x01E969 07:E959: 80 E9     .word ofs_027_E980_02
- D 3 - I - 0x01E96B 07:E95B: A3 E9     .word ofs_027_E9A3_03
bra_E95D_RTS:
C - - - - - 0x01E96D 07:E95D: 60        RTS



ofs_027_E95E_00:
C - - J - - 0x01E96E 07:E95E: A5 1C     LDA ram_001C
C - - - - - 0x01E970 07:E960: 29 3F     AND #$3F
C - - - - - 0x01E972 07:E962: AA        TAX
C - - - - - 0x01E973 07:E963: 20 D2 E9  JSR sub_E9D2
bra_E966:
C - - - - - 0x01E976 07:E966: 20 F9 E9  JSR sub_E9F9
C - - - - - 0x01E979 07:E969: CA        DEX
C - - - - - 0x01E97A 07:E96A: D0 FA     BNE bra_E966
C - - - - - 0x01E97C 07:E96C: 4C 46 E9  JMP loc_E946



ofs_027_E96F_01:
C - - J - - 0x01E97F 07:E96F: A5 1C     LDA ram_001C
C - - - - - 0x01E981 07:E971: 29 3F     AND #$3F
C - - - - - 0x01E983 07:E973: AA        TAX
bra_E974:
C - - - - - 0x01E984 07:E974: 20 D2 E9  JSR sub_E9D2
C - - - - - 0x01E987 07:E977: 20 F9 E9  JSR sub_E9F9
C - - - - - 0x01E98A 07:E97A: CA        DEX
C - - - - - 0x01E98B 07:E97B: D0 F7     BNE bra_E974
C - - - - - 0x01E98D 07:E97D: 4C 46 E9  JMP loc_E946



ofs_027_E980_02:
C - - J - - 0x01E990 07:E980: A5 1C     LDA ram_001C
C - - - - - 0x01E992 07:E982: 29 3F     AND #$3F
C - - - - - 0x01E994 07:E984: 85 1D     STA ram_001D
C - - - - - 0x01E996 07:E986: 20 D2 E9  JSR sub_E9D2
C - - - - - 0x01E999 07:E989: A5 1C     LDA ram_001C
C - - - - - 0x01E99B 07:E98B: 85 1E     STA ram_001E
C - - - - - 0x01E99D 07:E98D: 20 D2 E9  JSR sub_E9D2
C - - - - - 0x01E9A0 07:E990: A6 1D     LDX ram_001D
bra_E992:
C - - - - - 0x01E9A2 07:E992: 20 F9 E9  JSR sub_E9F9
C - - - - - 0x01E9A5 07:E995: CA        DEX
C - - - - - 0x01E9A6 07:E996: D0 FA     BNE bra_E992
C - - - - - 0x01E9A8 07:E998: A6 1E     LDX ram_001E
bra_E99A:
C - - - - - 0x01E9AA 07:E99A: 20 F9 E9  JSR sub_E9F9
C - - - - - 0x01E9AD 07:E99D: CA        DEX
C - - - - - 0x01E9AE 07:E99E: D0 FA     BNE bra_E99A
C - - - - - 0x01E9B0 07:E9A0: 4C 46 E9  JMP loc_E946



ofs_027_E9A3_03:
C - - J - - 0x01E9B3 07:E9A3: A5 1C     LDA ram_001C
C - - - - - 0x01E9B5 07:E9A5: 29 3F     AND #$3F
C - - - - - 0x01E9B7 07:E9A7: 85 1D     STA ram_001D
C - - - - - 0x01E9B9 07:E9A9: 20 D2 E9  JSR sub_E9D2
C - - - - - 0x01E9BC 07:E9AC: A5 1C     LDA ram_001C
C - - - - - 0x01E9BE 07:E9AE: 85 1E     STA ram_001E
C - - - - - 0x01E9C0 07:E9B0: A5 2C     LDA ram_002C
C - - - - - 0x01E9C2 07:E9B2: 85 32     STA ram_0032
C - - - - - 0x01E9C4 07:E9B4: A5 2D     LDA ram_002D
C - - - - - 0x01E9C6 07:E9B6: 85 33     STA ram_0033
bra_E9B8:
C - - - - - 0x01E9C8 07:E9B8: A6 1E     LDX ram_001E
C - - - - - 0x01E9CA 07:E9BA: A5 32     LDA ram_0032
C - - - - - 0x01E9CC 07:E9BC: 85 2C     STA ram_002C
C - - - - - 0x01E9CE 07:E9BE: A5 33     LDA ram_0033
C - - - - - 0x01E9D0 07:E9C0: 85 2D     STA ram_002D
bra_E9C2:
C - - - - - 0x01E9D2 07:E9C2: 20 D2 E9  JSR sub_E9D2
C - - - - - 0x01E9D5 07:E9C5: 20 F9 E9  JSR sub_E9F9
C - - - - - 0x01E9D8 07:E9C8: CA        DEX
C - - - - - 0x01E9D9 07:E9C9: D0 F7     BNE bra_E9C2
C - - - - - 0x01E9DB 07:E9CB: C6 1D     DEC ram_001D
C - - - - - 0x01E9DD 07:E9CD: D0 E9     BNE bra_E9B8
C - - - - - 0x01E9DF 07:E9CF: 4C 46 E9  JMP loc_E946



sub_E9D2:
C - - - - - 0x01E9E2 07:E9D2: A0 00     LDY #$00
C - - - - - 0x01E9E4 07:E9D4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x01E9E6 07:E9D6: 24 2A     BIT ram_002A
C - - - - - 0x01E9E8 07:E9D8: 30 16     BMI bra_E9F0
C - - - - - 0x01E9EA 07:E9DA: AD 02 20  LDA $2002
C - - - - - 0x01E9ED 07:E9DD: A5 2D     LDA ram_002D
; bzk что это за херня
C - - - - - 0x01E9EF 07:E9DF: 8D 15 04  STA ram_игрок_spd_Y_hi + 3
C - - - - - 0x01E9F2 07:E9E2: 8D 06 20  STA $2006
C - - - - - 0x01E9F5 07:E9E5: A5 2C     LDA ram_002C
C - - - - - 0x01E9F7 07:E9E7: 8D 06 20  STA $2006
C - - - - - 0x01E9FA 07:E9EA: AD 07 20  LDA $2007
C - - - - - 0x01E9FD 07:E9ED: AD 07 20  LDA $2007
bra_E9F0:
C - - - - - 0x01EA00 07:E9F0: 85 1C     STA ram_001C
C - - - - - 0x01EA02 07:E9F2: E6 2C     INC ram_002C
C - - - - - 0x01EA04 07:E9F4: D0 02     BNE bra_E9F8_RTS
C - - - - - 0x01EA06 07:E9F6: E6 2D     INC ram_002D
bra_E9F8_RTS:
C - - - - - 0x01EA08 07:E9F8: 60        RTS



sub_E9F9:
C - - - - - 0x01EA09 07:E9F9: AD 02 20  LDA $2002
C - - - - - 0x01EA0C 07:E9FC: A5 2F     LDA ram_002F
C - - - - - 0x01EA0E 07:E9FE: 8D 06 20  STA $2006
C - - - - - 0x01EA11 07:EA01: A5 2E     LDA ram_002E
C - - - - - 0x01EA13 07:EA03: 8D 06 20  STA $2006
C - - - - - 0x01EA16 07:EA06: A5 1C     LDA ram_001C
C - - - - - 0x01EA18 07:EA08: 8D 07 20  STA $2007
C - - - - - 0x01EA1B 07:EA0B: E6 2E     INC ram_002E
C - - - - - 0x01EA1D 07:EA0D: D0 02     BNE bra_EA11_RTS
C - - - - - 0x01EA1F 07:EA0F: E6 2F     INC ram_002F
bra_EA11_RTS:
C - - - - - 0x01EA21 07:EA11: 60        RTS



tbl_EA12:
- D 3 - - - 0x01EA22 07:EA12: 00        .byte $00   ; 
tbl_EA13:
- D 3 - - - 0x01EA23 07:EA13: 20        .byte $20   ; 
- D 3 - - - 0x01EA24 07:EA14: 60        .byte $60   ; 
- D 3 - - - 0x01EA25 07:EA15: 22        .byte $22   ; 
- - - - - - 0x01EA26 07:EA16: E0        .byte $E0   ; 
- - - - - - 0x01EA27 07:EA17: 20        .byte $20   ; 



tbl_EA18:
- D 3 - - - 0x01EA28 07:EA18: 1A EA     .word off_EA1A

off_EA1A:
- D 3 - I - 0x01EA2A 07:EA1A: 76        .byte $76   ; 
- D 3 - I - 0x01EA2B 07:EA1B: 00        .byte $00   ; 
- D 3 - I - 0x01EA2C 07:EA1C: 00        .byte $00   ; 
- D 3 - I - 0x01EA2D 07:EA1D: 6E        .byte $6E   ; 
- D 3 - I - 0x01EA2E 07:EA1E: 02        .byte $02   ; 
- D 3 - I - 0x01EA2F 07:EA1F: 44        .byte $44   ; 
- D 3 - I - 0x01EA30 07:EA20: 43        .byte $43   ; 
- D 3 - I - 0x01EA31 07:EA21: FF        .byte $FF   ; 
- D 3 - I - 0x01EA32 07:EA22: 76        .byte $76   ; 
- D 3 - I - 0x01EA33 07:EA23: 01        .byte $01   ; 
- D 3 - I - 0x01EA34 07:EA24: 00        .byte $00   ; 
- D 3 - I - 0x01EA35 07:EA25: 6C        .byte $6C   ; 
- D 3 - I - 0x01EA36 07:EA26: 02        .byte $02   ; 
- D 3 - I - 0x01EA37 07:EA27: 3A        .byte $3A   ; 
- D 3 - I - 0x01EA38 07:EA28: 3B        .byte $3B   ; 
- D 3 - I - 0x01EA39 07:EA29: FF        .byte $FF   ; 
- D 3 - I - 0x01EA3A 07:EA2A: 76        .byte $76   ; 
- D 3 - I - 0x01EA3B 07:EA2B: 02        .byte $02   ; 
- D 3 - I - 0x01EA3C 07:EA2C: 00        .byte $00   ; 
- D 3 - I - 0x01EA3D 07:EA2D: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA3E 07:EA2E: 02        .byte $02   ; 
- D 3 - I - 0x01EA3F 07:EA2F: 15        .byte $15   ; 
- D 3 - I - 0x01EA40 07:EA30: 16        .byte $16   ; 
- D 3 - I - 0x01EA41 07:EA31: FF        .byte $FF   ; 
- D 3 - I - 0x01EA42 07:EA32: 76        .byte $76   ; 
- D 3 - I - 0x01EA43 07:EA33: 03        .byte $03   ; 
- D 3 - I - 0x01EA44 07:EA34: 00        .byte $00   ; 
- D 3 - I - 0x01EA45 07:EA35: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA46 07:EA36: 02        .byte $02   ; 
- D 3 - I - 0x01EA47 07:EA37: 15        .byte $15   ; 
- D 3 - I - 0x01EA48 07:EA38: 16        .byte $16   ; 
- D 3 - I - 0x01EA49 07:EA39: FF        .byte $FF   ; 
- D 3 - I - 0x01EA4A 07:EA3A: 76        .byte $76   ; 
- D 3 - I - 0x01EA4B 07:EA3B: 04        .byte $04   ; 
- D 3 - I - 0x01EA4C 07:EA3C: 00        .byte $00   ; 
- D 3 - I - 0x01EA4D 07:EA3D: 30        .byte $30   ; 
- D 3 - I - 0x01EA4E 07:EA3E: 02        .byte $02   ; 
- D 3 - I - 0x01EA4F 07:EA3F: 15        .byte $15   ; 
- D 3 - I - 0x01EA50 07:EA40: 16        .byte $16   ; 
- D 3 - I - 0x01EA51 07:EA41: FF        .byte $FF   ; 
- D 3 - I - 0x01EA52 07:EA42: 76        .byte $76   ; 
- D 3 - I - 0x01EA53 07:EA43: 05        .byte $05   ; 
- D 3 - I - 0x01EA54 07:EA44: 00        .byte $00   ; 
- D 3 - I - 0x01EA55 07:EA45: 30        .byte $30   ; 
- D 3 - I - 0x01EA56 07:EA46: 02        .byte $02   ; 
- D 3 - I - 0x01EA57 07:EA47: 19        .byte $19   ; 
- D 3 - I - 0x01EA58 07:EA48: 39        .byte $39   ; 
- D 3 - I - 0x01EA59 07:EA49: 01        .byte $01   ; 
- D 3 - I - 0x01EA5A 07:EA4A: 76        .byte $76   ; 
- D 3 - I - 0x01EA5B 07:EA4B: 06        .byte $06   ; 
- D 3 - I - 0x01EA5C 07:EA4C: 00        .byte $00   ; 
- D 3 - I - 0x01EA5D 07:EA4D: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA5E 07:EA4E: 02        .byte $02   ; 
- D 3 - I - 0x01EA5F 07:EA4F: 15        .byte $15   ; 
- D 3 - I - 0x01EA60 07:EA50: 16        .byte $16   ; 
- D 3 - I - 0x01EA61 07:EA51: FF        .byte $FF   ; 
- D 3 - I - 0x01EA62 07:EA52: 76        .byte $76   ; 
- D 3 - I - 0x01EA63 07:EA53: 07        .byte $07   ; 
- D 3 - I - 0x01EA64 07:EA54: 00        .byte $00   ; 
- D 3 - I - 0x01EA65 07:EA55: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA66 07:EA56: 02        .byte $02   ; 
- D 3 - I - 0x01EA67 07:EA57: 15        .byte $15   ; 
- D 3 - I - 0x01EA68 07:EA58: 16        .byte $16   ; 
- D 3 - I - 0x01EA69 07:EA59: 01        .byte $01   ; 
- D 3 - I - 0x01EA6A 07:EA5A: 76        .byte $76   ; 
- D 3 - I - 0x01EA6B 07:EA5B: 08        .byte $08   ; 
- D 3 - I - 0x01EA6C 07:EA5C: 00        .byte $00   ; 
- D 3 - I - 0x01EA6D 07:EA5D: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA6E 07:EA5E: 02        .byte $02   ; 
- D 3 - I - 0x01EA6F 07:EA5F: 17        .byte $17   ; 
- D 3 - I - 0x01EA70 07:EA60: 18        .byte $18   ; 
- D 3 - I - 0x01EA71 07:EA61: FF        .byte $FF   ; 
- D 3 - I - 0x01EA72 07:EA62: 76        .byte $76   ; 
- D 3 - I - 0x01EA73 07:EA63: 09        .byte $09   ; 
- D 3 - I - 0x01EA74 07:EA64: 00        .byte $00   ; 
- D 3 - I - 0x01EA75 07:EA65: 30        .byte $30   ; 
- D 3 - I - 0x01EA76 07:EA66: 02        .byte $02   ; 
- D 3 - I - 0x01EA77 07:EA67: 15        .byte $15   ; 
- D 3 - I - 0x01EA78 07:EA68: 16        .byte $16   ; 
- D 3 - I - 0x01EA79 07:EA69: FF        .byte $FF   ; 
- D 3 - I - 0x01EA7A 07:EA6A: 76        .byte $76   ; 
- D 3 - I - 0x01EA7B 07:EA6B: 0A        .byte $0A   ; 
- D 3 - I - 0x01EA7C 07:EA6C: 00        .byte $00   ; 
- D 3 - I - 0x01EA7D 07:EA6D: 60        .byte $60   ; 
- D 3 - I - 0x01EA7E 07:EA6E: 02        .byte $02   ; 
- D 3 - I - 0x01EA7F 07:EA6F: 19        .byte $19   ; 
- D 3 - I - 0x01EA80 07:EA70: 1A        .byte $1A   ; 
- D 3 - I - 0x01EA81 07:EA71: 00        .byte $00   ; 
- D 3 - I - 0x01EA82 07:EA72: 76        .byte $76   ; 
- D 3 - I - 0x01EA83 07:EA73: 0B        .byte $0B   ; 
- D 3 - I - 0x01EA84 07:EA74: 00        .byte $00   ; 
- D 3 - I - 0x01EA85 07:EA75: 62        .byte $62   ; 
- D 3 - I - 0x01EA86 07:EA76: 02        .byte $02   ; 
- D 3 - I - 0x01EA87 07:EA77: 1C        .byte $1C   ; 
- D 3 - I - 0x01EA88 07:EA78: 1C        .byte $1C   ; 
- D 3 - I - 0x01EA89 07:EA79: FF        .byte $FF   ; 
- D 3 - I - 0x01EA8A 07:EA7A: 76        .byte $76   ; 
- D 3 - I - 0x01EA8B 07:EA7B: 0C        .byte $0C   ; 
- D 3 - I - 0x01EA8C 07:EA7C: 00        .byte $00   ; 
- D 3 - I - 0x01EA8D 07:EA7D: 30        .byte $30   ; 
- D 3 - I - 0x01EA8E 07:EA7E: 02        .byte $02   ; 
- D 3 - I - 0x01EA8F 07:EA7F: 19        .byte $19   ; 
- D 3 - I - 0x01EA90 07:EA80: 1A        .byte $1A   ; 
- D 3 - I - 0x01EA91 07:EA81: FF        .byte $FF   ; 
- D 3 - I - 0x01EA92 07:EA82: 7A        .byte $7A   ; 
- D 3 - I - 0x01EA93 07:EA83: 10        .byte $10   ; 
- D 3 - I - 0x01EA94 07:EA84: 00        .byte $00   ; 
- D 3 - I - 0x01EA95 07:EA85: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA96 07:EA86: 02        .byte $02   ; 
- D 3 - I - 0x01EA97 07:EA87: 1B        .byte $1B   ; 
- D 3 - I - 0x01EA98 07:EA88: 1B        .byte $1B   ; 
- D 3 - I - 0x01EA99 07:EA89: FF        .byte $FF   ; 
- D 3 - I - 0x01EA9A 07:EA8A: 76        .byte $76   ; 
- D 3 - I - 0x01EA9B 07:EA8B: 0D        .byte $0D   ; 
- D 3 - I - 0x01EA9C 07:EA8C: 00        .byte $00   ; 
- D 3 - I - 0x01EA9D 07:EA8D: 5E        .byte $5E   ; 
- D 3 - I - 0x01EA9E 07:EA8E: 02        .byte $02   ; 
- D 3 - I - 0x01EA9F 07:EA8F: 15        .byte $15   ; 
- D 3 - I - 0x01EAA0 07:EA90: 16        .byte $16   ; 
- D 3 - I - 0x01EAA1 07:EA91: FF        .byte $FF   ; 
- - - - - - 0x01EAA2 07:EA92: 7A        .byte $7A   ; 
- - - - - - 0x01EAA3 07:EA93: 0E        .byte $0E   ; 
- - - - - - 0x01EAA4 07:EA94: 00        .byte $00   ; 
- - - - - - 0x01EAA5 07:EA95: 5E        .byte $5E   ; 
- - - - - - 0x01EAA6 07:EA96: 02        .byte $02   ; 
- - - - - - 0x01EAA7 07:EA97: 15        .byte $15   ; 
- - - - - - 0x01EAA8 07:EA98: 16        .byte $16   ; 
- - - - - - 0x01EAA9 07:EA99: FF        .byte $FF   ; 
- D 3 - I - 0x01EAAA 07:EA9A: 7A        .byte $7A   ; 
- D 3 - I - 0x01EAAB 07:EA9B: 13        .byte $13   ; 
- D 3 - I - 0x01EAAC 07:EA9C: 00        .byte $00   ; 
- D 3 - I - 0x01EAAD 07:EA9D: 64        .byte $64   ; 
- D 3 - I - 0x01EAAE 07:EA9E: 66        .byte $66   ; 
- D 3 - I - 0x01EAAF 07:EA9F: 10        .byte $10   ; 
- D 3 - I - 0x01EAB0 07:EAA0: 0A        .byte $0A   ; 
- D 3 - I - 0x01EAB1 07:EAA1: FF        .byte $FF   ; 
- D 3 - I - 0x01EAB2 07:EAA2: 7A        .byte $7A   ; 
- D 3 - I - 0x01EAB3 07:EAA3: 11        .byte $11   ; 
- D 3 - I - 0x01EAB4 07:EAA4: 00        .byte $00   ; 
- D 3 - I - 0x01EAB5 07:EAA5: 64        .byte $64   ; 
- D 3 - I - 0x01EAB6 07:EAA6: 66        .byte $66   ; 
- D 3 - I - 0x01EAB7 07:EAA7: 10        .byte $10   ; 
- D 3 - I - 0x01EAB8 07:EAA8: 0A        .byte $0A   ; 
- D 3 - I - 0x01EAB9 07:EAA9: FF        .byte $FF   ; 
- - - - - - 0x01EABA 07:EAAA: 7A        .byte $7A   ; 
- - - - - - 0x01EABB 07:EAAB: 12        .byte $12   ; 
- - - - - - 0x01EABC 07:EAAC: 00        .byte $00   ; 
- - - - - - 0x01EABD 07:EAAD: 64        .byte $64   ; 
- - - - - - 0x01EABE 07:EAAE: 66        .byte $66   ; 
- - - - - - 0x01EABF 07:EAAF: 10        .byte $10   ; 
- - - - - - 0x01EAC0 07:EAB0: 0A        .byte $0A   ; 
- - - - - - 0x01EAC1 07:EAB1: FF        .byte $FF   ; 
- D 3 - I - 0x01EAC2 07:EAB2: 7A        .byte $7A   ; 
- D 3 - I - 0x01EAC3 07:EAB3: 0F        .byte $0F   ; 
- D 3 - I - 0x01EAC4 07:EAB4: 00        .byte $00   ; 
- D 3 - I - 0x01EAC5 07:EAB5: 30        .byte $30   ; 
- D 3 - I - 0x01EAC6 07:EAB6: 02        .byte $02   ; 
- D 3 - I - 0x01EAC7 07:EAB7: 15        .byte $15   ; 
- D 3 - I - 0x01EAC8 07:EAB8: 16        .byte $16   ; 
- D 3 - I - 0x01EAC9 07:EAB9: FF        .byte $FF   ; 
- - - - - - 0x01EACA 07:EABA: 7A        .byte $7A   ; 
- - - - - - 0x01EACB 07:EABB: 14        .byte $14   ; 
- - - - - - 0x01EACC 07:EABC: 00        .byte $00   ; 
- - - - - - 0x01EACD 07:EABD: 5E        .byte $5E   ; 
- - - - - - 0x01EACE 07:EABE: 02        .byte $02   ; 
- - - - - - 0x01EACF 07:EABF: 15        .byte $15   ; 
- - - - - - 0x01EAD0 07:EAC0: 16        .byte $16   ; 
- - - - - - 0x01EAD1 07:EAC1: FF        .byte $FF   ; 
- - - - - - 0x01EAD2 07:EAC2: 7A        .byte $7A   ; 
- - - - - - 0x01EAD3 07:EAC3: 15        .byte $15   ; 
- - - - - - 0x01EAD4 07:EAC4: 00        .byte $00   ; 
- - - - - - 0x01EAD5 07:EAC5: 5E        .byte $5E   ; 
- - - - - - 0x01EAD6 07:EAC6: 02        .byte $02   ; 
- - - - - - 0x01EAD7 07:EAC7: 15        .byte $15   ; 
- - - - - - 0x01EAD8 07:EAC8: 16        .byte $16   ; 
- - - - - - 0x01EAD9 07:EAC9: FF        .byte $FF   ; 
- D 3 - I - 0x01EADA 07:EACA: 7A        .byte $7A   ; 
- D 3 - I - 0x01EADB 07:EACB: 16        .byte $16   ; 
- D 3 - I - 0x01EADC 07:EACC: 01        .byte $01   ; 
- D 3 - I - 0x01EADD 07:EACD: 30        .byte $30   ; 
- D 3 - I - 0x01EADE 07:EACE: 02        .byte $02   ; 
- D 3 - I - 0x01EADF 07:EACF: 19        .byte $19   ; 
- D 3 - I - 0x01EAE0 07:EAD0: 39        .byte $39   ; 
- D 3 - I - 0x01EAE1 07:EAD1: 01        .byte $01   ; 
- - - - - - 0x01EAE2 07:EAD2: 7A        .byte $7A   ; 
- - - - - - 0x01EAE3 07:EAD3: 17        .byte $17   ; 
- - - - - - 0x01EAE4 07:EAD4: 01        .byte $01   ; 
- - - - - - 0x01EAE5 07:EAD5: 30        .byte $30   ; 
- - - - - - 0x01EAE6 07:EAD6: 02        .byte $02   ; 
- - - - - - 0x01EAE7 07:EAD7: 19        .byte $19   ; 
- - - - - - 0x01EAE8 07:EAD8: 39        .byte $39   ; 
- - - - - - 0x01EAE9 07:EAD9: 01        .byte $01   ; 
- D 3 - I - 0x01EAEA 07:EADA: 7A        .byte $7A   ; 
- D 3 - I - 0x01EAEB 07:EADB: 18        .byte $18   ; 
- D 3 - I - 0x01EAEC 07:EADC: 01        .byte $01   ; 
- D 3 - I - 0x01EAED 07:EADD: 30        .byte $30   ; 
- D 3 - I - 0x01EAEE 07:EADE: 02        .byte $02   ; 
- D 3 - I - 0x01EAEF 07:EADF: 19        .byte $19   ; 
- D 3 - I - 0x01EAF0 07:EAE0: 39        .byte $39   ; 
- D 3 - I - 0x01EAF1 07:EAE1: 01        .byte $01   ; 
- D 3 - I - 0x01EAF2 07:EAE2: 7A        .byte $7A   ; 
- D 3 - I - 0x01EAF3 07:EAE3: 19        .byte $19   ; 
- D 3 - I - 0x01EAF4 07:EAE4: 01        .byte $01   ; 
- D 3 - I - 0x01EAF5 07:EAE5: 30        .byte $30   ; 
- D 3 - I - 0x01EAF6 07:EAE6: 02        .byte $02   ; 
- D 3 - I - 0x01EAF7 07:EAE7: 19        .byte $19   ; 
- D 3 - I - 0x01EAF8 07:EAE8: 39        .byte $39   ; 
- D 3 - I - 0x01EAF9 07:EAE9: 01        .byte $01   ; 
- D 3 - I - 0x01EAFA 07:EAEA: 7A        .byte $7A   ; 
- D 3 - I - 0x01EAFB 07:EAEB: 1A        .byte $1A   ; 
- D 3 - I - 0x01EAFC 07:EAEC: 01        .byte $01   ; 
- D 3 - I - 0x01EAFD 07:EAED: 30        .byte $30   ; 
- D 3 - I - 0x01EAFE 07:EAEE: 02        .byte $02   ; 
- D 3 - I - 0x01EAFF 07:EAEF: 19        .byte $19   ; 
- D 3 - I - 0x01EB00 07:EAF0: 39        .byte $39   ; 
- D 3 - I - 0x01EB01 07:EAF1: 01        .byte $01   ; 
- D 3 - I - 0x01EB02 07:EAF2: 7A        .byte $7A   ; 
- D 3 - I - 0x01EB03 07:EAF3: 1B        .byte $1B   ; 
- D 3 - I - 0x01EB04 07:EAF4: 01        .byte $01   ; 
- D 3 - I - 0x01EB05 07:EAF5: 30        .byte $30   ; 
- D 3 - I - 0x01EB06 07:EAF6: 02        .byte $02   ; 
- D 3 - I - 0x01EB07 07:EAF7: 19        .byte $19   ; 
- D 3 - I - 0x01EB08 07:EAF8: 39        .byte $39   ; 
- D 3 - I - 0x01EB09 07:EAF9: 01        .byte $01   ; 
- - - - - - 0x01EB0A 07:EAFA: 7E        .byte $7E   ; 
- - - - - - 0x01EB0B 07:EAFB: 1C        .byte $1C   ; 
- - - - - - 0x01EB0C 07:EAFC: 00        .byte $00   ; 
- - - - - - 0x01EB0D 07:EAFD: 12        .byte $12   ; 
- - - - - - 0x01EB0E 07:EAFE: 02        .byte $02   ; 
- - - - - - 0x01EB0F 07:EAFF: 49        .byte $49   ; 
- - - - - - 0x01EB10 07:EB00: 49        .byte $49   ; 
- - - - - - 0x01EB11 07:EB01: FF        .byte $FF   ; 
- - - - - - 0x01EB12 07:EB02: 7E        .byte $7E   ; 
- - - - - - 0x01EB13 07:EB03: 1D        .byte $1D   ; 
- - - - - - 0x01EB14 07:EB04: 02        .byte $02   ; 
- - - - - - 0x01EB15 07:EB05: 12        .byte $12   ; 
- - - - - - 0x01EB16 07:EB06: 02        .byte $02   ; 
- - - - - - 0x01EB17 07:EB07: 49        .byte $49   ; 
- - - - - - 0x01EB18 07:EB08: 49        .byte $49   ; 
- - - - - - 0x01EB19 07:EB09: FF        .byte $FF   ; 
- - - - - - 0x01EB1A 07:EB0A: 7E        .byte $7E   ; 
- - - - - - 0x01EB1B 07:EB0B: 1E        .byte $1E   ; 
- - - - - - 0x01EB1C 07:EB0C: 02        .byte $02   ; 
- - - - - - 0x01EB1D 07:EB0D: 12        .byte $12   ; 
- - - - - - 0x01EB1E 07:EB0E: 02        .byte $02   ; 
- - - - - - 0x01EB1F 07:EB0F: 49        .byte $49   ; 
- - - - - - 0x01EB20 07:EB10: 49        .byte $49   ; 
- - - - - - 0x01EB21 07:EB11: FF        .byte $FF   ; 
- - - - - - 0x01EB22 07:EB12: 7E        .byte $7E   ; 
- - - - - - 0x01EB23 07:EB13: 1F        .byte $1F   ; 
- - - - - - 0x01EB24 07:EB14: 02        .byte $02   ; 
- - - - - - 0x01EB25 07:EB15: 12        .byte $12   ; 
- - - - - - 0x01EB26 07:EB16: 02        .byte $02   ; 
- - - - - - 0x01EB27 07:EB17: 49        .byte $49   ; 
- - - - - - 0x01EB28 07:EB18: 49        .byte $49   ; 
- - - - - - 0x01EB29 07:EB19: FF        .byte $FF   ; 
- - - - - - 0x01EB2A 07:EB1A: 7E        .byte $7E   ; 
- - - - - - 0x01EB2B 07:EB1B: 20        .byte $20   ; 
- - - - - - 0x01EB2C 07:EB1C: 02        .byte $02   ; 
- - - - - - 0x01EB2D 07:EB1D: 12        .byte $12   ; 
- - - - - - 0x01EB2E 07:EB1E: 02        .byte $02   ; 
- - - - - - 0x01EB2F 07:EB1F: 49        .byte $49   ; 
- - - - - - 0x01EB30 07:EB20: 49        .byte $49   ; 
- - - - - - 0x01EB31 07:EB21: FF        .byte $FF   ; 
- - - - - - 0x01EB32 07:EB22: 7E        .byte $7E   ; 
- - - - - - 0x01EB33 07:EB23: 21        .byte $21   ; 
- - - - - - 0x01EB34 07:EB24: 02        .byte $02   ; 
- - - - - - 0x01EB35 07:EB25: 12        .byte $12   ; 
- - - - - - 0x01EB36 07:EB26: 02        .byte $02   ; 
- - - - - - 0x01EB37 07:EB27: 49        .byte $49   ; 
- - - - - - 0x01EB38 07:EB28: 49        .byte $49   ; 
- - - - - - 0x01EB39 07:EB29: FF        .byte $FF   ; 
- - - - - - 0x01EB3A 07:EB2A: 7E        .byte $7E   ; 
- - - - - - 0x01EB3B 07:EB2B: 22        .byte $22   ; 
- - - - - - 0x01EB3C 07:EB2C: 02        .byte $02   ; 
- - - - - - 0x01EB3D 07:EB2D: 12        .byte $12   ; 
- - - - - - 0x01EB3E 07:EB2E: 02        .byte $02   ; 
- - - - - - 0x01EB3F 07:EB2F: 49        .byte $49   ; 
- - - - - - 0x01EB40 07:EB30: 49        .byte $49   ; 
- - - - - - 0x01EB41 07:EB31: FF        .byte $FF   ; 
- - - - - - 0x01EB42 07:EB32: 7E        .byte $7E   ; 
- - - - - - 0x01EB43 07:EB33: 23        .byte $23   ; 
- - - - - - 0x01EB44 07:EB34: 02        .byte $02   ; 
- - - - - - 0x01EB45 07:EB35: 12        .byte $12   ; 
- - - - - - 0x01EB46 07:EB36: 02        .byte $02   ; 
- - - - - - 0x01EB47 07:EB37: 49        .byte $49   ; 
- - - - - - 0x01EB48 07:EB38: 49        .byte $49   ; 
- - - - - - 0x01EB49 07:EB39: FF        .byte $FF   ; 
- - - - - - 0x01EB4A 07:EB3A: 7E        .byte $7E   ; 
- - - - - - 0x01EB4B 07:EB3B: 24        .byte $24   ; 
- - - - - - 0x01EB4C 07:EB3C: 02        .byte $02   ; 
- - - - - - 0x01EB4D 07:EB3D: 12        .byte $12   ; 
- - - - - - 0x01EB4E 07:EB3E: 02        .byte $02   ; 
- - - - - - 0x01EB4F 07:EB3F: 49        .byte $49   ; 
- - - - - - 0x01EB50 07:EB40: 49        .byte $49   ; 
- - - - - - 0x01EB51 07:EB41: FF        .byte $FF   ; 



tbl_EB42:
- D 3 - - - 0x01EB52 07:EB42: 00        .byte $00   ; 
tbl_EB43:
- D 3 - - - 0x01EB53 07:EB43: 00        .byte $00   ; 
- D 3 - - - 0x01EB54 07:EB44: 7A        .byte $7A   ; 
- D 3 - - - 0x01EB55 07:EB45: 00        .byte $00   ; 
- D 3 - - - 0x01EB56 07:EB46: 71        .byte $71   ; 
- D 3 - - - 0x01EB57 07:EB47: 01        .byte $01   ; 
- D 3 - - - 0x01EB58 07:EB48: 46        .byte $46   ; 
- D 3 - - - 0x01EB59 07:EB49: 02        .byte $02   ; 
- D 3 - - - 0x01EB5A 07:EB4A: DF        .byte $DF   ; 
- D 3 - - - 0x01EB5B 07:EB4B: 03        .byte $03   ; 
- D 3 - - - 0x01EB5C 07:EB4C: 14        .byte $14   ; 
- D 3 - - - 0x01EB5D 07:EB4D: 05        .byte $05   ; 
- D 3 - - - 0x01EB5E 07:EB4E: 64        .byte $64   ; 
- D 3 - - - 0x01EB5F 07:EB4F: 08        .byte $08   ; 
- D 3 - - - 0x01EB60 07:EB50: 12        .byte $12   ; 
- D 3 - - - 0x01EB61 07:EB51: 09        .byte $09   ; 
- D 3 - - - 0x01EB62 07:EB52: AF        .byte $AF   ; 
- D 3 - - - 0x01EB63 07:EB53: 0A        .byte $0A   ; 
- D 3 - - - 0x01EB64 07:EB54: 07        .byte $07   ; 
- D 3 - - - 0x01EB65 07:EB55: 0B        .byte $0B   ; 
- D 3 - - - 0x01EB66 07:EB56: 00        .byte $00   ; 
- D 3 - - - 0x01EB67 07:EB57: 0C        .byte $0C   ; 
- D 3 - - - 0x01EB68 07:EB58: AA        .byte $AA   ; 
- D 3 - - - 0x01EB69 07:EB59: 0D        .byte $0D   ; 
- D 3 - - - 0x01EB6A 07:EB5A: A4        .byte $A4   ; 
- D 3 - - - 0x01EB6B 07:EB5B: 0E        .byte $0E   ; 
- D 3 - - - 0x01EB6C 07:EB5C: 6A        .byte $6A   ; 
- D 3 - - - 0x01EB6D 07:EB5D: 0F        .byte $0F   ; 
- - - - - - 0x01EB6E 07:EB5E: 9A        .byte $9A   ; 
- - - - - - 0x01EB6F 07:EB5F: 00        .byte $00   ; 
- D 3 - - - 0x01EB70 07:EB60: 9A        .byte $9A   ; 
- D 3 - - - 0x01EB71 07:EB61: 00        .byte $00   ; 
- D 3 - - - 0x01EB72 07:EB62: B6        .byte $B6   ; 
- D 3 - - - 0x01EB73 07:EB63: 01        .byte $01   ; 
- D 3 - - - 0x01EB74 07:EB64: 39        .byte $39   ; 
- D 3 - - - 0x01EB75 07:EB65: 03        .byte $03   ; 
- - - - - - 0x01EB76 07:EB66: 64        .byte $64   ; 
- - - - - - 0x01EB77 07:EB67: 07        .byte $07   ; 
- D 3 - - - 0x01EB78 07:EB68: 51        .byte $51   ; 
- D 3 - - - 0x01EB79 07:EB69: 09        .byte $09   ; 
- - - - - - 0x01EB7A 07:EB6A: 3E        .byte $3E   ; 
- - - - - - 0x01EB7B 07:EB6B: 0B        .byte $0B   ; 
- - - - - - 0x01EB7C 07:EB6C: FF        .byte $FF   ; 
- - - - - - 0x01EB7D 07:EB6D: 0B        .byte $0B   ; 
- D 3 - - - 0x01EB7E 07:EB6E: D3        .byte $D3   ; 
- D 3 - - - 0x01EB7F 07:EB6F: 0C        .byte $0C   ; 
- - - - - - 0x01EB80 07:EB70: 61        .byte $61   ; 
- - - - - - 0x01EB81 07:EB71: 0D        .byte $0D   ; 
- D 3 - - - 0x01EB82 07:EB72: E3        .byte $E3   ; 
- D 3 - - - 0x01EB83 07:EB73: 0D        .byte $0D   ; 
- D 3 - - - 0x01EB84 07:EB74: 6E        .byte $6E   ; 
- D 3 - - - 0x01EB85 07:EB75: 0E        .byte $0E   ; 
- D 3 - - - 0x01EB86 07:EB76: FB        .byte $FB   ; 
- D 3 - - - 0x01EB87 07:EB77: 0E        .byte $0E   ; 
- D 3 - - - 0x01EB88 07:EB78: 89        .byte $89   ; 
- D 3 - - - 0x01EB89 07:EB79: 0F        .byte $0F   ; 
- - - - - - 0x01EB8A 07:EB7A: 0F        .byte $0F   ; 
- - - - - - 0x01EB8B 07:EB7B: 00        .byte $00   ; 
- - - - - - 0x01EB8C 07:EB7C: DD        .byte $DD   ; 
- - - - - - 0x01EB8D 07:EB7D: 00        .byte $00   ; 
- - - - - - 0x01EB8E 07:EB7E: EF        .byte $EF   ; 
- - - - - - 0x01EB8F 07:EB7F: 01        .byte $01   ; 
- - - - - - 0x01EB90 07:EB80: D6        .byte $D6   ; 
- - - - - - 0x01EB91 07:EB81: 02        .byte $02   ; 
- - - - - - 0x01EB92 07:EB82: 9B        .byte $9B   ; 
- - - - - - 0x01EB93 07:EB83: 03        .byte $03   ; 
- - - - - - 0x01EB94 07:EB84: 6B        .byte $6B   ; 
- - - - - - 0x01EB95 07:EB85: 04        .byte $04   ; 
- - - - - - 0x01EB96 07:EB86: 1A        .byte $1A   ; 
- - - - - - 0x01EB97 07:EB87: 05        .byte $05   ; 
- - - - - - 0x01EB98 07:EB88: EF        .byte $EF   ; 
- - - - - - 0x01EB99 07:EB89: 05        .byte $05   ; 
- - - - - - 0x01EB9A 07:EB8A: BF        .byte $BF   ; 
- - - - - - 0x01EB9B 07:EB8B: 06        .byte $06   ; 



loc_EB8C:
.export sub_0x01EB9C
sub_0x01EB9C:
C D 3 - - - 0x01EB9C 07:EB8C: A9 00     LDA #$00
C - - - - - 0x01EB9E 07:EB8E: 85 1C     STA ram_001C
C - - - - - 0x01EBA0 07:EB90: 85 1D     STA ram_001D
C - - - - - 0x01EBA2 07:EB92: A4 F4     LDY ram_00F4
C - - - - - 0x01EBA4 07:EB94: AD 58 00  LDA a: ram_номер_экрана
C - - - - - 0x01EBA7 07:EB97: F0 14     BEQ bra_EBAD
C - - - - - 0x01EBA9 07:EB99: C9 01     CMP #$01
C - - - - - 0x01EBAB 07:EB9B: F0 10     BEQ bra_EBAD
C - - - - - 0x01EBAD 07:EB9D: C9 03     CMP #$03
C - - - - - 0x01EBAF 07:EB9F: F0 0C     BEQ bra_EBAD
C - - - - - 0x01EBB1 07:EBA1: B5 74     LDA ram_номер_анимации,X
C - - - - - 0x01EBB3 07:EBA3: 29 7F     AND #$7F
C - - - - - 0x01EBB5 07:EBA5: C9 7F     CMP #$7F
C - - - - - 0x01EBB7 07:EBA7: F0 43     BEQ bra_EBEC_RTS
C - - - - - 0x01EBB9 07:EBA9: 8A        TXA
C - - - - - 0x01EBBA 07:EBAA: 4C E7 EB  JMP loc_EBE7
bra_EBAD:
C - - - - - 0x01EBBD 07:EBAD: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x01EBC0 07:EBB0: 10 0D     BPL bra_EBBF
C - - - - - 0x01EBC2 07:EBB2: F0 0B     BEQ bra_EBBF
C - - - - - 0x01EBC4 07:EBB4: 8A        TXA
C - - - - - 0x01EBC5 07:EBB5: 09 40     ORA #$40
C - - - - - 0x01EBC7 07:EBB7: 99 A1 00  STA a: ram_приоритет_анимации,Y
C - - - - - 0x01EBCA 07:EBBA: C8        INY
C - - - - - 0x01EBCB 07:EBBB: E6 F4     INC ram_00F4
C - - - - - 0x01EBCD 07:EBBD: E6 1C     INC ram_001C
bra_EBBF:
C - - - - - 0x01EBCF 07:EBBF: B5 74     LDA ram_номер_анимации,X
C - - - - - 0x01EBD1 07:EBC1: 29 7F     AND #$7F
C - - - - - 0x01EBD3 07:EBC3: C9 7F     CMP #$7F
C - - - - - 0x01EBD5 07:EBC5: F0 0F     BEQ bra_EBD6
C - - - - - 0x01EBD7 07:EBC7: E0 0C     CPX #$0C
C - - - - - 0x01EBD9 07:EBC9: D0 03     BNE bra_EBCE
C - - - - - 0x01EBDB 07:EBCB: 20 ED EB  JSR sub_EBED
bra_EBCE:
C - - - - - 0x01EBDE 07:EBCE: 8A        TXA
C - - - - - 0x01EBDF 07:EBCF: 05 1D     ORA ram_001D
C - - - - - 0x01EBE1 07:EBD1: 99 A1 00  STA a: ram_приоритет_анимации,Y
C - - - - - 0x01EBE4 07:EBD4: E6 F4     INC ram_00F4
bra_EBD6:
C - - - - - 0x01EBE6 07:EBD6: A5 1C     LDA ram_001C
C - - - - - 0x01EBE8 07:EBD8: D0 12     BNE bra_EBEC_RTS
C - - - - - 0x01EBEA 07:EBDA: E0 0D     CPX #$0D
C - - - - - 0x01EBEC 07:EBDC: B0 0E     BCS bra_EBEC_RTS
C - - - - - 0x01EBEE 07:EBDE: BD 86 04  LDA ram_игрок_состояние,X
C - - - - - 0x01EBF1 07:EBE1: 10 09     BPL bra_EBEC_RTS
C - - - - - 0x01EBF3 07:EBE3: 8A        TXA
C - - - - - 0x01EBF4 07:EBE4: 09 20     ORA #$20
C - - - - - 0x01EBF6 07:EBE6: C8        INY
loc_EBE7:
C D 3 - - - 0x01EBF7 07:EBE7: 99 A1 00  STA a: ram_приоритет_анимации,Y
C - - - - - 0x01EBFA 07:EBEA: E6 F4     INC ram_00F4
bra_EBEC_RTS:
C - - - - - 0x01EBFC 07:EBEC: 60        RTS



sub_EBED:
C - - - - - 0x01EBFD 07:EBED: AD 0E 05  LDA ram_флаг_прозрачного_мяча
C - - - - - 0x01EC00 07:EBF0: D0 21     BNE bra_EC13
C - - - - - 0x01EC02 07:EBF2: 38        SEC
C - - - - - 0x01EC03 07:EBF3: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x01EC06 07:EBF6: ED 85 EC  SBC tbl_EC85
C - - - - - 0x01EC09 07:EBF9: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x01EC0C 07:EBFC: ED 86 EC  SBC tbl_EC86
C - - - - - 0x01EC0F 07:EBFF: 30 7D     BMI bra_EC7E
C - - - - - 0x01EC11 07:EC01: 38        SEC
C - - - - - 0x01EC12 07:EC02: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x01EC15 07:EC05: ED 87 EC  SBC tbl_EC87
C - - - - - 0x01EC18 07:EC08: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x01EC1B 07:EC0B: ED 88 EC  SBC tbl_EC88
C - - - - - 0x01EC1E 07:EC0E: 10 6E     BPL bra_EC7E
C - - - - - 0x01EC20 07:EC10: 4C 84 EC  JMP loc_EC84_RTS
bra_EC13:
C - - - - - 0x01EC23 07:EC13: 30 6F     BMI bra_EC84_RTS
C - - - - - 0x01EC25 07:EC15: 29 01     AND #$01
C - - - - - 0x01EC27 07:EC17: D0 6B     BNE bra_EC84_RTS
C - - - - - 0x01EC29 07:EC19: AD 0E 05  LDA ram_флаг_прозрачного_мяча
C - - - - - 0x01EC2C 07:EC1C: 29 02     AND #$02
C - - - - - 0x01EC2E 07:EC1E: F0 62     BEQ bra_EC82
C - - - - - 0x01EC30 07:EC20: 38        SEC
C - - - - - 0x01EC31 07:EC21: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01EC34 07:EC24: ED 8D EC  SBC tbl_EC8D
C - - - - - 0x01EC37 07:EC27: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01EC3A 07:EC2A: ED 8E EC  SBC tbl_EC8E
C - - - - - 0x01EC3D 07:EC2D: B0 55     BCS bra_EC84_RTS
C - - - - - 0x01EC3F 07:EC2F: 38        SEC
C - - - - - 0x01EC40 07:EC30: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01EC43 07:EC33: FD 86 03  SBC ram_игрок_Z_lo,X
C - - - - - 0x01EC46 07:EC36: 85 2C     STA ram_002C
C - - - - - 0x01EC48 07:EC38: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01EC4B 07:EC3B: FD 99 03  SBC ram_игрок_Z_hi,X
C - - - - - 0x01EC4E 07:EC3E: 85 2D     STA ram_002D
C - - - - - 0x01EC50 07:EC40: 38        SEC
C - - - - - 0x01EC51 07:EC41: A5 2C     LDA ram_002C
C - - - - - 0x01EC53 07:EC43: ED 89 EC  SBC tbl_EC89
C - - - - - 0x01EC56 07:EC46: A5 2D     LDA ram_002D
C - - - - - 0x01EC58 07:EC48: ED 8A EC  SBC tbl_EC8A
C - - - - - 0x01EC5B 07:EC4B: 30 10     BMI bra_EC5D
C - - - - - 0x01EC5D 07:EC4D: 38        SEC
C - - - - - 0x01EC5E 07:EC4E: A5 2C     LDA ram_002C
C - - - - - 0x01EC60 07:EC50: ED 8B EC  SBC tbl_EC8B
C - - - - - 0x01EC63 07:EC53: A5 2D     LDA ram_002D
C - - - - - 0x01EC65 07:EC55: ED 8C EC  SBC tbl_EC8C
C - - - - - 0x01EC68 07:EC58: 10 2A     BPL bra_EC84_RTS
C - - - - - 0x01EC6A 07:EC5A: 4C 7E EC  JMP loc_EC7E
bra_EC5D:
C - - - - - 0x01EC6D 07:EC5D: 38        SEC
C - - - - - 0x01EC6E 07:EC5E: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01EC71 07:EC61: ED 89 EC  SBC tbl_EC89
C - - - - - 0x01EC74 07:EC64: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01EC77 07:EC67: ED 8A EC  SBC tbl_EC8A
C - - - - - 0x01EC7A 07:EC6A: 30 18     BMI bra_EC84_RTS
C - - - - - 0x01EC7C 07:EC6C: 38        SEC
C - - - - - 0x01EC7D 07:EC6D: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x01EC80 07:EC70: ED 8D EC  SBC tbl_EC8D
C - - - - - 0x01EC83 07:EC73: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x01EC86 07:EC76: ED 8E EC  SBC tbl_EC8E
C - - - - - 0x01EC89 07:EC79: 10 09     BPL bra_EC84_RTS
C - - - - - 0x01EC8B 07:EC7B: 4C 82 EC  JMP loc_EC82
bra_EC7E:
loc_EC7E:
C D 3 - - - 0x01EC8E 07:EC7E: A9 80     LDA #$80
C - - - - - 0x01EC90 07:EC80: 85 1D     STA ram_001D
bra_EC82:
loc_EC82:
C D 3 - - - 0x01EC92 07:EC82: E6 1C     INC ram_001C
bra_EC84_RTS:
loc_EC84_RTS:
C D 3 - - - 0x01EC94 07:EC84: 60        RTS


; bzk
tbl_EC85:
- D 3 - - - 0x01EC95 07:EC85: 88        .byte $88   ; 
tbl_EC86:
- D 3 - - - 0x01EC96 07:EC86: 00        .byte $00   ; 
tbl_EC87:
- D 3 - - - 0x01EC97 07:EC87: 78        .byte $78   ; 
tbl_EC88:
- D 3 - - - 0x01EC98 07:EC88: 03        .byte $03   ; 
tbl_EC89:
- D 3 - - - 0x01EC99 07:EC89: 70        .byte $70   ; 
tbl_EC8A:
- D 3 - - - 0x01EC9A 07:EC8A: 00        .byte $00   ; 
tbl_EC8B:
- D 3 - - - 0x01EC9B 07:EC8B: A5        .byte $A5   ; 
tbl_EC8C:
- D 3 - - - 0x01EC9C 07:EC8C: 00        .byte $00   ; 
tbl_EC8D:
- D 3 - - - 0x01EC9D 07:EC8D: E4        .byte $E4   ; 
tbl_EC8E:
- D 3 - - - 0x01EC9E 07:EC8E: 00        .byte $00   ; 



loc_EC8F:
sub_EC8F:
.export sub_0x01EC9F
sub_0x01EC9F:
C D 3 - - - 0x01EC9F 07:EC8F: 0A        ASL
C - - - - - 0x01ECA0 07:EC90: A8        TAY
C - - - - - 0x01ECA1 07:EC91: C8        INY
C - - - - - 0x01ECA2 07:EC92: 68        PLA
C - - - - - 0x01ECA3 07:EC93: 85 0C     STA ram_000C
C - - - - - 0x01ECA5 07:EC95: 68        PLA
C - - - - - 0x01ECA6 07:EC96: 85 0D     STA ram_000D
C - - - - - 0x01ECA8 07:EC98: 8A        TXA
C - - - - - 0x01ECA9 07:EC99: 48        PHA
C - - - - - 0x01ECAA 07:EC9A: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01ECAC 07:EC9C: AA        TAX
C - - - - - 0x01ECAD 07:EC9D: C8        INY
C - - - - - 0x01ECAE 07:EC9E: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01ECB0 07:ECA0: 85 0D     STA ram_000D
C - - - - - 0x01ECB2 07:ECA2: 86 0C     STX ram_000C
C - - - - - 0x01ECB4 07:ECA4: 68        PLA
C - - - - - 0x01ECB5 07:ECA5: AA        TAX
C - - - - - 0x01ECB6 07:ECA6: 6C 0C 00  JMP (ram_000C)



loc_ECA9:
sub_ECA9:
C D 3 - - - 0x01ECB9 07:ECA9: 48        PHA
C - - - - - 0x01ECBA 07:ECAA: A5 4F     LDA ram_флаг_NMI
C - - - - - 0x01ECBC 07:ECAC: 48        PHA
C - - - - - 0x01ECBD 07:ECAD: A9 00     LDA #$00
C - - - - - 0x01ECBF 07:ECAF: 85 4F     STA ram_флаг_NMI
C - - - - - 0x01ECC1 07:ECB1: A5 4C     LDA ram_для_2000
C - - - - - 0x01ECC3 07:ECB3: 09 80     ORA #$80
C - - - - - 0x01ECC5 07:ECB5: 85 4C     STA ram_для_2000
C - - - - - 0x01ECC7 07:ECB7: 8D 00 20  STA $2000
C - - - - - 0x01ECCA 07:ECBA: A9 0F     LDA #$0F
C - - - - - 0x01ECCC 07:ECBC: 8D 15 40  STA $4015
bra_ECBF:
C - - - - - 0x01ECCF 07:ECBF: D0 FE     BNE bra_ECBF
loc_ECC1:
sub_ECC1:
C D 3 - - - 0x01ECD1 07:ECC1: A5 4D     LDA ram_для_2001
C - - - - - 0x01ECD3 07:ECC3: 29 E7     AND #$E7
bra_ECC5:
loc_ECC5:
C - - - - - 0x01ECD5 07:ECC5: 85 4D     STA ram_для_2001
C - - - - - 0x01ECD7 07:ECC7: 8D 01 20  STA $2001
C - - - - - 0x01ECDA 07:ECCA: 60        RTS



loc_ECCB:
sub_ECCB:
C D 3 - - - 0x01ECDB 07:ECCB: A5 4D     LDA ram_для_2001
C - - - - - 0x01ECDD 07:ECCD: 09 18     ORA #$18
C - - - - - 0x01ECDF 07:ECCF: D0 F4     BNE bra_ECC5
- - - - - - 0x01ECE1 07:ECD1: A5 4D     LDA ram_для_2001
- - - - - - 0x01ECE3 07:ECD3: 29 EF     AND #$EF
- - - - - - 0x01ECE5 07:ECD5: 4C C5 EC  JMP loc_ECC5
- - - - - - 0x01ECE8 07:ECD8: A5 4D     LDA ram_для_2001
- - - - - - 0x01ECEA 07:ECDA: 09 10     ORA #$10
- - - - - - 0x01ECEC 07:ECDC: D0 E7     BNE bra_ECC5
- - - - - - 0x01ECEE 07:ECDE: A5 4D     LDA ram_для_2001
- - - - - - 0x01ECF0 07:ECE0: 29 F7     AND #$F7
- - - - - - 0x01ECF2 07:ECE2: 4C C5 EC  JMP loc_ECC5
- - - - - - 0x01ECF5 07:ECE5: A5 4D     LDA ram_для_2001
- - - - - - 0x01ECF7 07:ECE7: 09 08     ORA #$08
- - - - - - 0x01ECF9 07:ECE9: D0 DA     BNE bra_ECC5



sub_ECEB:
C - - - - - 0x01ECFB 07:ECEB: 85 0C     STA ram_000C
C - - - - - 0x01ECFD 07:ECED: 86 0D     STX ram_000D
C - - - - - 0x01ECFF 07:ECEF: 84 0E     STY ram_000E
C - - - - - 0x01ED01 07:ECF1: AD 02 20  LDA $2002
C - - - - - 0x01ED04 07:ECF4: A5 4C     LDA ram_для_2000
C - - - - - 0x01ED06 07:ECF6: 29 FB     AND #$FB
C - - - - - 0x01ED08 07:ECF8: 8D 00 20  STA $2000
C - - - - - 0x01ED0B 07:ECFB: 85 4C     STA ram_для_2000
C - - - - - 0x01ED0D 07:ECFD: A5 0C     LDA ram_000C
C - - - - - 0x01ED0F 07:ECFF: 8D 06 20  STA $2006
C - - - - - 0x01ED12 07:ED02: A0 00     LDY #$00
C - - - - - 0x01ED14 07:ED04: 8C 06 20  STY $2006
C - - - - - 0x01ED17 07:ED07: A2 04     LDX #$04
C - - - - - 0x01ED19 07:ED09: C9 20     CMP #$20
C - - - - - 0x01ED1B 07:ED0B: B0 02     BCS bra_ED0F
- - - - - - 0x01ED1D 07:ED0D: A6 0E     LDX ram_000E
bra_ED0F:
C - - - - - 0x01ED1F 07:ED0F: A0 00     LDY #$00
C - - - - - 0x01ED21 07:ED11: A5 0D     LDA ram_000D
bra_ED13:
C - - - - - 0x01ED23 07:ED13: 8D 07 20  STA $2007
C - - - - - 0x01ED26 07:ED16: 88        DEY
C - - - - - 0x01ED27 07:ED17: D0 FA     BNE bra_ED13
C - - - - - 0x01ED29 07:ED19: CA        DEX
C - - - - - 0x01ED2A 07:ED1A: D0 F7     BNE bra_ED13
C - - - - - 0x01ED2C 07:ED1C: A4 0E     LDY ram_000E
C - - - - - 0x01ED2E 07:ED1E: A5 0C     LDA ram_000C
C - - - - - 0x01ED30 07:ED20: C9 20     CMP #$20
C - - - - - 0x01ED32 07:ED22: 90 12     BCC bra_ED36
C - - - - - 0x01ED34 07:ED24: 69 02     ADC #$02
C - - - - - 0x01ED36 07:ED26: 8D 06 20  STA $2006
C - - - - - 0x01ED39 07:ED29: A9 C0     LDA #$C0
C - - - - - 0x01ED3B 07:ED2B: 8D 06 20  STA $2006
C - - - - - 0x01ED3E 07:ED2E: A2 40     LDX #$40
bra_ED30:
C - - - - - 0x01ED40 07:ED30: 8C 07 20  STY $2007
C - - - - - 0x01ED43 07:ED33: CA        DEX
C - - - - - 0x01ED44 07:ED34: D0 FA     BNE bra_ED30
bra_ED36:
C - - - - - 0x01ED46 07:ED36: A6 0D     LDX ram_000D
C - - - - - 0x01ED48 07:ED38: 60        RTS



sub_ED39:
C - - - - - 0x01ED49 07:ED39: 48        PHA
C - - - - - 0x01ED4A 07:ED3A: 8A        TXA
C - - - - - 0x01ED4B 07:ED3B: 84 0D     STY ram_000D
C - - - - - 0x01ED4D 07:ED3D: 18        CLC
C - - - - - 0x01ED4E 07:ED3E: E5 0D     SBC ram_000D
C - - - - - 0x01ED50 07:ED40: AA        TAX
C - - - - - 0x01ED51 07:ED41: 68        PLA
C - - - - - 0x01ED52 07:ED42: A0 00     LDY #$00
C - - - - - 0x01ED54 07:ED44: 84 0C     STY ram_000C
bra_ED46:
C - - - - - 0x01ED56 07:ED46: 91 0C     STA (ram_000C),Y
C - - - - - 0x01ED58 07:ED48: 88        DEY
C - - - - - 0x01ED59 07:ED49: D0 FB     BNE bra_ED46
C - - - - - 0x01ED5B 07:ED4B: C6 0D     DEC ram_000D
C - - - - - 0x01ED5D 07:ED4D: E8        INX
C - - - - - 0x01ED5E 07:ED4E: D0 F6     BNE bra_ED46
C - - - - - 0x01ED60 07:ED50: A9 00     LDA #$00
C - - - - - 0x01ED62 07:ED52: A2 7F     LDX #$7F
bra_ED54:
C - - - - - 0x01ED64 07:ED54: 9D 00 01  STA ram_0100,X
C - - - - - 0x01ED67 07:ED57: CA        DEX
C - - - - - 0x01ED68 07:ED58: 10 FA     BPL bra_ED54
C - - - - - 0x01ED6A 07:ED5A: 60        RTS
- - - - - - 0x01ED6B 07:ED5B: 20 06 EE  JSR sub_EE06
- - - - - - 0x01ED6E 07:ED5E: F0 28     BEQ bra_ED88
- - - - - - 0x01ED70 07:ED60: 20 06 EE  JSR sub_EE06
- - - - - - 0x01ED73 07:ED63: 20 28 EE  JSR sub_EE28
- - - - - - 0x01ED76 07:ED66: A5 08     LDA ram_одноразовые_кнопки
- - - - - - 0x01ED78 07:ED68: 85 04     STA ram_удержанные_кнопки
- - - - - - 0x01ED7A 07:ED6A: A5 09     LDA ram_одноразовые_кнопки + 1
- - - - - - 0x01ED7C 07:ED6C: 85 05     STA ram_удержанные_кнопки + 1
- - - - - - 0x01ED7E 07:ED6E: 20 06 EE  JSR sub_EE06
- - - - - - 0x01ED81 07:ED71: 20 28 EE  JSR sub_EE28
- - - - - - 0x01ED84 07:ED74: A5 08     LDA ram_одноразовые_кнопки
- - - - - - 0x01ED86 07:ED76: C5 04     CMP ram_удержанные_кнопки
- - - - - - 0x01ED88 07:ED78: F0 04     BEQ bra_ED7E
- - - - - - 0x01ED8A 07:ED7A: A5 0A     LDA ram_одноразовые_кнопки + 2
- - - - - - 0x01ED8C 07:ED7C: 85 08     STA ram_одноразовые_кнопки
bra_ED7E:
- - - - - - 0x01ED8E 07:ED7E: A5 09     LDA ram_одноразовые_кнопки + 1
- - - - - - 0x01ED90 07:ED80: C5 05     CMP ram_удержанные_кнопки + 1
- - - - - - 0x01ED92 07:ED82: F0 04     BEQ bra_ED88
- - - - - - 0x01ED94 07:ED84: A5 0B     LDA ram_одноразовые_кнопки + 3
- - - - - - 0x01ED96 07:ED86: 85 09     STA ram_одноразовые_кнопки + 1
bra_ED88:
- - - - - - 0x01ED98 07:ED88: A2 01     LDX #$01
bra_ED8A:
- - - - - - 0x01ED9A 07:ED8A: B5 08     LDA ram_одноразовые_кнопки,X
- - - - - - 0x01ED9C 07:ED8C: 95 04     STA ram_удержанные_кнопки,X
- - - - - - 0x01ED9E 07:ED8E: A8        TAY
- - - - - - 0x01ED9F 07:ED8F: 55 0A     EOR ram_одноразовые_кнопки + 2,X
- - - - - - 0x01EDA1 07:ED91: 35 08     AND ram_одноразовые_кнопки,X
- - - - - - 0x01EDA3 07:ED93: 95 08     STA ram_одноразовые_кнопки,X
- - - - - - 0x01EDA5 07:ED95: 94 0A     STY ram_одноразовые_кнопки + 2,X
- - - - - - 0x01EDA7 07:ED97: CA        DEX
- - - - - - 0x01EDA8 07:ED98: 10 F0     BPL bra_ED8A
- - - - - - 0x01EDAA 07:ED9A: 60        RTS
- - - - - - 0x01EDAB 07:ED9B: 20 06 EE  JSR sub_EE06
bra_ED9E:
- - - - - - 0x01EDAE 07:ED9E: A4 08     LDY ram_одноразовые_кнопки
- - - - - - 0x01EDB0 07:EDA0: A5 09     LDA ram_одноразовые_кнопки + 1
- - - - - - 0x01EDB2 07:EDA2: 48        PHA
- - - - - - 0x01EDB3 07:EDA3: 20 06 EE  JSR sub_EE06
- - - - - - 0x01EDB6 07:EDA6: 68        PLA
- - - - - - 0x01EDB7 07:EDA7: C5 09     CMP ram_одноразовые_кнопки + 1
- - - - - - 0x01EDB9 07:EDA9: D0 F3     BNE bra_ED9E
- - - - - - 0x01EDBB 07:EDAB: C4 08     CPY ram_одноразовые_кнопки
- - - - - - 0x01EDBD 07:EDAD: D0 EF     BNE bra_ED9E
- - - - - - 0x01EDBF 07:EDAF: F0 D7     BEQ bra_ED88
- - - - - - 0x01EDC1 07:EDB1: 20 06 EE  JSR sub_EE06
- - - - - - 0x01EDC4 07:EDB4: 20 28 EE  JSR sub_EE28
bra_EDB7:
- - - - - - 0x01EDC7 07:EDB7: A4 08     LDY ram_одноразовые_кнопки
- - - - - - 0x01EDC9 07:EDB9: A5 09     LDA ram_одноразовые_кнопки + 1
- - - - - - 0x01EDCB 07:EDBB: 48        PHA
- - - - - - 0x01EDCC 07:EDBC: 20 06 EE  JSR sub_EE06
- - - - - - 0x01EDCF 07:EDBF: 20 28 EE  JSR sub_EE28
- - - - - - 0x01EDD2 07:EDC2: 68        PLA
- - - - - - 0x01EDD3 07:EDC3: C5 09     CMP ram_одноразовые_кнопки + 1
- - - - - - 0x01EDD5 07:EDC5: D0 F0     BNE bra_EDB7
- - - - - - 0x01EDD7 07:EDC7: C4 08     CPY ram_одноразовые_кнопки
- - - - - - 0x01EDD9 07:EDC9: D0 EC     BNE bra_EDB7
- - - - - - 0x01EDDB 07:EDCB: F0 BB     BEQ bra_ED88



sub_EDCD:
C - - - - - 0x01EDDD 07:EDCD: 20 06 EE  JSR sub_EE06
bra_EDD0:
C - - - - - 0x01EDE0 07:EDD0: A5 0C     LDA ram_000C
C - - - - - 0x01EDE2 07:EDD2: 85 0A     STA ram_одноразовые_кнопки + 2
C - - - - - 0x01EDE4 07:EDD4: A5 0D     LDA ram_000D
C - - - - - 0x01EDE6 07:EDD6: 85 0B     STA ram_одноразовые_кнопки + 3
C - - - - - 0x01EDE8 07:EDD8: A4 08     LDY ram_одноразовые_кнопки
C - - - - - 0x01EDEA 07:EDDA: A5 09     LDA ram_одноразовые_кнопки + 1
C - - - - - 0x01EDEC 07:EDDC: 48        PHA
C - - - - - 0x01EDED 07:EDDD: 20 06 EE  JSR sub_EE06
C - - - - - 0x01EDF0 07:EDE0: 68        PLA
C - - - - - 0x01EDF1 07:EDE1: C5 09     CMP ram_одноразовые_кнопки + 1
C - - - - - 0x01EDF3 07:EDE3: D0 EB     BNE bra_EDD0
C - - - - - 0x01EDF5 07:EDE5: C4 08     CPY ram_одноразовые_кнопки
C - - - - - 0x01EDF7 07:EDE7: D0 E7     BNE bra_EDD0
C - - - - - 0x01EDF9 07:EDE9: A5 0A     LDA ram_одноразовые_кнопки + 2
C - - - - - 0x01EDFB 07:EDEB: C5 0C     CMP ram_000C
C - - - - - 0x01EDFD 07:EDED: D0 E1     BNE bra_EDD0
C - - - - - 0x01EDFF 07:EDEF: A5 0B     LDA ram_одноразовые_кнопки + 3
C - - - - - 0x01EE01 07:EDF1: C5 0D     CMP ram_000D
C - - - - - 0x01EE03 07:EDF3: D0 DB     BNE bra_EDD0
C - - - - - 0x01EE05 07:EDF5: A2 03     LDX #$03
bra_EDF7:
C - - - - - 0x01EE07 07:EDF7: B5 08     LDA ram_одноразовые_кнопки,X
C - - - - - 0x01EE09 07:EDF9: A8        TAY
C - - - - - 0x01EE0A 07:EDFA: 55 04     EOR ram_удержанные_кнопки,X
C - - - - - 0x01EE0C 07:EDFC: 35 08     AND ram_одноразовые_кнопки,X
C - - - - - 0x01EE0E 07:EDFE: 95 08     STA ram_одноразовые_кнопки,X
C - - - - - 0x01EE10 07:EE00: 94 04     STY ram_удержанные_кнопки,X
C - - - - - 0x01EE12 07:EE02: CA        DEX
C - - - - - 0x01EE13 07:EE03: 10 F2     BPL bra_EDF7
C - - - - - 0x01EE15 07:EE05: 60        RTS



sub_EE06:
C - - - - - 0x01EE16 07:EE06: A6 48     LDX ram_0048
C - - - - - 0x01EE18 07:EE08: E8        INX
C - - - - - 0x01EE19 07:EE09: 8E 16 40  STX $4016
C - - - - - 0x01EE1C 07:EE0C: CA        DEX
C - - - - - 0x01EE1D 07:EE0D: 8E 16 40  STX $4016
C - - - - - 0x01EE20 07:EE10: A2 08     LDX #$08
bra_EE12:
C - - - - - 0x01EE22 07:EE12: AD 16 40  LDA $4016
C - - - - - 0x01EE25 07:EE15: 4A        LSR
C - - - - - 0x01EE26 07:EE16: 26 08     ROL ram_одноразовые_кнопки
C - - - - - 0x01EE28 07:EE18: 4A        LSR
C - - - - - 0x01EE29 07:EE19: 26 0C     ROL ram_000C
C - - - - - 0x01EE2B 07:EE1B: AD 17 40  LDA $4017
C - - - - - 0x01EE2E 07:EE1E: 4A        LSR
C - - - - - 0x01EE2F 07:EE1F: 26 09     ROL ram_одноразовые_кнопки + 1
C - - - - - 0x01EE31 07:EE21: 4A        LSR
C - - - - - 0x01EE32 07:EE22: 26 0D     ROL ram_000D
C - - - - - 0x01EE34 07:EE24: CA        DEX
C - - - - - 0x01EE35 07:EE25: D0 EB     BNE bra_EE12
C - - - - - 0x01EE37 07:EE27: 60        RTS



sub_EE28:
- - - - - - 0x01EE38 07:EE28: A5 0C     LDA ram_000C
- - - - - - 0x01EE3A 07:EE2A: 05 08     ORA ram_одноразовые_кнопки
- - - - - - 0x01EE3C 07:EE2C: 85 08     STA ram_одноразовые_кнопки
- - - - - - 0x01EE3E 07:EE2E: A5 0D     LDA ram_000D
- - - - - - 0x01EE40 07:EE30: 05 09     ORA ram_одноразовые_кнопки + 1
- - - - - - 0x01EE42 07:EE32: 85 09     STA ram_одноразовые_кнопки + 1
- - - - - - 0x01EE44 07:EE34: 60        RTS



loc_EE35:
sub_EE35:
.export sub_0x01EE45
sub_0x01EE45:
C D 3 - - - 0x01EE45 07:EE35: 8A        TXA
C - - - - - 0x01EE46 07:EE36: 48        PHA
C - - - - - 0x01EE47 07:EE37: 98        TYA
C - - - - - 0x01EE48 07:EE38: 48        PHA
C - - - - - 0x01EE49 07:EE39: A2 45     LDX #$45
C - - - - - 0x01EE4B 07:EE3B: A0 02     LDY #$02
C - - - - - 0x01EE4D 07:EE3D: B5 00     LDA ram_рандом - $45,X
C - - - - - 0x01EE4F 07:EE3F: 29 02     AND #$02
C - - - - - 0x01EE51 07:EE41: 85 0C     STA ram_000C
C - - - - - 0x01EE53 07:EE43: B5 01     LDA ram_рандом - $45 + 1,X
C - - - - - 0x01EE55 07:EE45: 29 02     AND #$02
C - - - - - 0x01EE57 07:EE47: 45 0C     EOR ram_000C
C - - - - - 0x01EE59 07:EE49: 18        CLC
C - - - - - 0x01EE5A 07:EE4A: F0 01     BEQ bra_EE4D
C - - - - - 0x01EE5C 07:EE4C: 38        SEC
bra_EE4D:
C - - - - - 0x01EE5D 07:EE4D: 76 00     ROR ram_рандом - $45,X
C - - - - - 0x01EE5F 07:EE4F: E8        INX
C - - - - - 0x01EE60 07:EE50: 88        DEY
C - - - - - 0x01EE61 07:EE51: D0 FA     BNE bra_EE4D
C - - - - - 0x01EE63 07:EE53: 68        PLA
C - - - - - 0x01EE64 07:EE54: A8        TAY
C - - - - - 0x01EE65 07:EE55: 68        PLA
C - - - - - 0x01EE66 07:EE56: AA        TAX
C - - - - - 0x01EE67 07:EE57: A5 45     LDA ram_рандом
C - - - - - 0x01EE69 07:EE59: 60        RTS



sub_EE5A:
C - - - - - 0x01EE6A 07:EE5A: A9 00     LDA #$00
C - - - - - 0x01EE6C 07:EE5C: 8D 03 20  STA $2003
C - - - - - 0x01EE6F 07:EE5F: A9 02     LDA #$02
C - - - - - 0x01EE71 07:EE61: 8D 14 40  STA $4014
C - - - - - 0x01EE74 07:EE64: 60        RTS



loc_EE65:
sub_EE65:
C D 3 - - - 0x01EE75 07:EE65: 48        PHA
C - - - - - 0x01EE76 07:EE66: A5 4C     LDA ram_для_2000
C - - - - - 0x01EE78 07:EE68: 09 80     ORA #$80
C - - - - - 0x01EE7A 07:EE6A: 85 4C     STA ram_для_2000
C - - - - - 0x01EE7C 07:EE6C: 8D 00 20  STA $2000
C - - - - - 0x01EE7F 07:EE6F: 68        PLA
C - - - - - 0x01EE80 07:EE70: 60        RTS



loc_EE71:
sub_EE71:
C D 3 - - - 0x01EE81 07:EE71: 48        PHA
C - - - - - 0x01EE82 07:EE72: A5 4C     LDA ram_для_2000
C - - - - - 0x01EE84 07:EE74: 29 7F     AND #$7F
C - - - - - 0x01EE86 07:EE76: 85 4C     STA ram_для_2000
C - - - - - 0x01EE88 07:EE78: 8D 00 20  STA $2000
C - - - - - 0x01EE8B 07:EE7B: 68        PLA
C - - - - - 0x01EE8C 07:EE7C: 60        RTS



loc_EE7D:
sub_EE7D:
C - - - - - 0x01EE8D 07:EE7D: A9 00     LDA #$00
C - - - - - 0x01EE8F 07:EE7F: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EE92 07:EE82: 8D 00 80  STA $8000
C - - - - - 0x01EE95 07:EE85: AD BC 05  LDA ram_банк_фона
C - - - - - 0x01EE98 07:EE88: 8D 01 80  STA $8001
C - - - - - 0x01EE9B 07:EE8B: A9 01     LDA #$01
C - - - - - 0x01EE9D 07:EE8D: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EEA0 07:EE90: 8D 00 80  STA $8000
C - - - - - 0x01EEA3 07:EE93: AD BD 05  LDA ram_банк_фона + 1
C - - - - - 0x01EEA6 07:EE96: 8D 01 80  STA $8001
C - - - - - 0x01EEA9 07:EE99: 60        RTS



loc_EE9A:
sub_EE9A:
C D 3 - - - 0x01EEAA 07:EE9A: A9 02     LDA #$02
C - - - - - 0x01EEAC 07:EE9C: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EEAF 07:EE9F: 8D 00 80  STA $8000
C - - - - - 0x01EEB2 07:EEA2: AD B8 05  LDA ram_банк_спрайтов
C - - - - - 0x01EEB5 07:EEA5: 8D 01 80  STA $8001
C - - - - - 0x01EEB8 07:EEA8: A9 03     LDA #$03
C - - - - - 0x01EEBA 07:EEAA: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EEBD 07:EEAD: 8D 00 80  STA $8000
C - - - - - 0x01EEC0 07:EEB0: AD B9 05  LDA ram_банк_спрайтов + 1
C - - - - - 0x01EEC3 07:EEB3: 8D 01 80  STA $8001
C - - - - - 0x01EEC6 07:EEB6: A9 04     LDA #$04
C - - - - - 0x01EEC8 07:EEB8: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EECB 07:EEBB: 8D 00 80  STA $8000
C - - - - - 0x01EECE 07:EEBE: AD BA 05  LDA ram_банк_спрайтов + 2
C - - - - - 0x01EED1 07:EEC1: 8D 01 80  STA $8001
C - - - - - 0x01EED4 07:EEC4: A9 05     LDA #$05
C - - - - - 0x01EED6 07:EEC6: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EED9 07:EEC9: 8D 00 80  STA $8000
C - - - - - 0x01EEDC 07:EECC: AD BB 05  LDA ram_банк_спрайтов + 3
C - - - - - 0x01EEDF 07:EECF: 8D 01 80  STA $8001
C - - - - - 0x01EEE2 07:EED2: 60        RTS



loc_EED3:
sub_EED3_prg_bankswitch:
C - - - - - 0x01EEE3 07:EED3: 08        PHP
C - - - - - 0x01EEE4 07:EED4: 48        PHA
C - - - - - 0x01EEE5 07:EED5: 8A        TXA
C - - - - - 0x01EEE6 07:EED6: 48        PHA
C - - - - - 0x01EEE7 07:EED7: A9 07     LDA #$07
C - - - - - 0x01EEE9 07:EED9: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EEEC 07:EEDC: 8D 00 80  STA $8000
C - - - - - 0x01EEEF 07:EEDF: BA        TSX
C - - - - - 0x01EEF0 07:EEE0: BD 02 01  LDA ram_0102,X
C - - - - - 0x01EEF3 07:EEE3: 0A        ASL
C - - - - - 0x01EEF4 07:EEE4: 09 01     ORA #$01
C - - - - - 0x01EEF6 07:EEE6: 8D 01 80  STA $8001
C - - - - - 0x01EEF9 07:EEE9: A9 06     LDA #$06
C - - - - - 0x01EEFB 07:EEEB: 8D 4E 00  STA a: ram_для_8000
C - - - - - 0x01EEFE 07:EEEE: 8D 00 80  STA $8000
C - - - - - 0x01EF01 07:EEF1: BD 02 01  LDA ram_0102,X
C - - - - - 0x01EF04 07:EEF4: 0A        ASL
C - - - - - 0x01EF05 07:EEF5: 8D 01 80  STA $8001
C - - - - - 0x01EF08 07:EEF8: 68        PLA
C - - - - - 0x01EF09 07:EEF9: AA        TAX
C - - - - - 0x01EF0A 07:EEFA: 68        PLA
C - - - - - 0x01EF0B 07:EEFB: CD FF BF  CMP $BFFF
C - - - - - 0x01EF0E 07:EEFE: D0 02     BNE bra_EF02
C - - - - - 0x01EF10 07:EF00: 28        PLP
C - - - - - 0x01EF11 07:EF01: 60        RTS
; bzk
bra_EF02:
- - - - - - 0x01EF12 07:EF02: EA        .byte $EA   ; 
- - - - - - 0x01EF13 07:EF03: AE        .byte $AE   ; 
- - - - - - 0x01EF14 07:EF04: FF        .byte $FF   ; 
- - - - - - 0x01EF15 07:EF05: BF        .byte $BF   ; 
- - - - - - 0x01EF16 07:EF06: 80        .byte $80   ; 
- - - - - - 0x01EF17 07:EF07: EA        .byte $EA   ; 
- - - - - - 0x01EF18 07:EF08: A2        .byte $A2   ; 
- - - - - - 0x01EF19 07:EF09: 00        .byte $00   ; 



loc_EF0A:
sub_EF0A:
C D 3 - - - 0x01EF1A 07:EF0A: A9 00     LDA #$00
bra_EF0C:
C - - - - - 0x01EF1C 07:EF0C: 95 00     STA ram_0000,X
C - - - - - 0x01EF1E 07:EF0E: E8        INX
C - - - - - 0x01EF1F 07:EF0F: E0 F9     CPX #$F9
C - - - - - 0x01EF21 07:EF11: 90 F9     BCC bra_EF0C
C - - - - - 0x01EF23 07:EF13: 60        RTS



sub_EF14:
C - - - - - 0x01EF24 07:EF14: A2 FC     LDX #$FC
C - - - - - 0x01EF26 07:EF16: A9 F8     LDA #$F8
loc_EF18:
C D 3 - - - 0x01EF28 07:EF18: 9D 00 02  STA ram_спрайт_Y,X
C - - - - - 0x01EF2B 07:EF1B: E0 00     CPX #$00
C - - - - - 0x01EF2D 07:EF1D: F0 07     BEQ bra_EF26_RTS
C - - - - - 0x01EF2F 07:EF1F: CA        DEX
C - - - - - 0x01EF30 07:EF20: CA        DEX
C - - - - - 0x01EF31 07:EF21: CA        DEX
C - - - - - 0x01EF32 07:EF22: CA        DEX
C - - - - - 0x01EF33 07:EF23: 4C 18 EF  JMP loc_EF18
bra_EF26_RTS:
C - - - - - 0x01EF36 07:EF26: 60        RTS



sub_EF27:
C - - - - - 0x01EF37 07:EF27: A9 20     LDA #$20
C - - - - - 0x01EF39 07:EF29: A0 00     LDY #$00
C - - - - - 0x01EF3B 07:EF2B: A2 00     LDX #$00
C - - - - - 0x01EF3D 07:EF2D: 20 EB EC  JSR sub_ECEB
C - - - - - 0x01EF40 07:EF30: A9 24     LDA #$24
C - - - - - 0x01EF42 07:EF32: 20 EB EC  JSR sub_ECEB
C - - - - - 0x01EF45 07:EF35: A9 28     LDA #$28
C - - - - - 0x01EF47 07:EF37: 20 EB EC  JSR sub_ECEB
C - - - - - 0x01EF4A 07:EF3A: 20 3E EF  JSR sub_EF3E
C - - - - - 0x01EF4D 07:EF3D: 60        RTS



sub_EF3E:
C - - - - - 0x01EF4E 07:EF3E: AD 02 20  LDA $2002
C - - - - - 0x01EF51 07:EF41: A9 23     LDA #$23
C - - - - - 0x01EF53 07:EF43: A0 C0     LDY #$C0
C - - - - - 0x01EF55 07:EF45: 8D 06 20  STA $2006
C - - - - - 0x01EF58 07:EF48: 8C 06 20  STY $2006
C - - - - - 0x01EF5B 07:EF4B: A9 00     LDA #$00
bra_EF4D:
C - - - - - 0x01EF5D 07:EF4D: 8D 07 20  STA $2007
C - - - - - 0x01EF60 07:EF50: C8        INY
C - - - - - 0x01EF61 07:EF51: D0 FA     BNE bra_EF4D
C - - - - - 0x01EF63 07:EF53: 60        RTS



loc_EF54:
sub_EF54:
C D 3 - - - 0x01EF64 07:EF54: A5 4D     LDA ram_для_2001
C - - - - - 0x01EF66 07:EF56: 09 02     ORA #$02
C - - - - - 0x01EF68 07:EF58: D0 04     BNE bra_EF5E
sub_EF5A:
C - - - - - 0x01EF6A 07:EF5A: A5 4D     LDA ram_для_2001
C - - - - - 0x01EF6C 07:EF5C: 29 F9     AND #$F9
bra_EF5E:
C - - - - - 0x01EF6E 07:EF5E: 85 4D     STA ram_для_2001
C - - - - - 0x01EF70 07:EF60: 8D 01 20  STA $2001
C - - - - - 0x01EF73 07:EF63: 60        RTS



sub_EF64:
C - - - - - 0x01EF74 07:EF64: 20 C1 EC  JSR sub_ECC1
C - - - - - 0x01EF77 07:EF67: 20 27 EF  JSR sub_EF27
C - - - - - 0x01EF7A 07:EF6A: 20 14 EF  JSR sub_EF14
C - - - - - 0x01EF7D 07:EF6D: 20 A9 EC  JSR sub_ECA9
C - - - - - 0x01EF80 07:EF70: 20 5A EE  JSR sub_EE5A
C - - - - - 0x01EF83 07:EF73: 60        RTS


; bzk garbage
- - - - - - 0x01EF84 07:EF74: 20 A9 EC  JSR sub_ECA9
- - - - - - 0x01EF87 07:EF77: 20 71 EE  JSR sub_EE71
- - - - - - 0x01EF8A 07:EF7A: A5 4C     LDA ram_для_2000
- - - - - - 0x01EF8C 07:EF7C: 29 FB     AND #$FB
- - - - - - 0x01EF8E 07:EF7E: 85 4C     STA ram_для_2000
- - - - - - 0x01EF90 07:EF80: 8D 00 20  STA $2000
- - - - - - 0x01EF93 07:EF83: AD 02 20  LDA $2002
- - - - - - 0x01EF96 07:EF86: A9 3F     LDA #$3F
- - - - - - 0x01EF98 07:EF88: 8D 06 20  STA $2006
- - - - - - 0x01EF9B 07:EF8B: A9 00     LDA #$00
- - - - - - 0x01EF9D 07:EF8D: 8D 06 20  STA $2006
- - - - - - 0x01EFA0 07:EF90: A0 00     LDY #$00
- - - - - - 0x01EFA2 07:EF92: A9 0F     LDA #$0F
bra_EF94:
- - - - - - 0x01EFA4 07:EF94: 8D 07 20  STA $2007
- - - - - - 0x01EFA7 07:EF97: C8        INY
- - - - - - 0x01EFA8 07:EF98: C0 20     CPY #$20
- - - - - - 0x01EFAA 07:EF9A: 90 F8     BCC bra_EF94
- - - - - - 0x01EFAC 07:EF9C: A9 3F     LDA #$3F
- - - - - - 0x01EFAE 07:EF9E: 8D 06 20  STA $2006
- - - - - - 0x01EFB1 07:EFA1: A9 00     LDA #$00
- - - - - - 0x01EFB3 07:EFA3: 8D 06 20  STA $2006
- - - - - - 0x01EFB6 07:EFA6: 8D 06 20  STA $2006
- - - - - - 0x01EFB9 07:EFA9: 8D 06 20  STA $2006
- - - - - - 0x01EFBC 07:EFAC: 60        RTS



loc_EFAD:
sub_EFAD:
C D 3 - - - 0x01EFBD 07:EFAD: A5 58     LDA ram_номер_экрана
C - - - - - 0x01EFBF 07:EFAF: D0 34     BNE bra_EFE5
C - - - - - 0x01EFC1 07:EFB1: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01EFC3 07:EFB3: F0 30     BEQ bra_EFE5
C - - - - - 0x01EFC5 07:EFB5: C9 05     CMP #$05
C - - - - - 0x01EFC7 07:EFB7: 90 1B     BCC bra_EFD4
C - - - - - 0x01EFC9 07:EFB9: C9 05     CMP #$05
C - - - - - 0x01EFCB 07:EFBB: F0 0F     BEQ bra_EFCC
C - - - - - 0x01EFCD 07:EFBD: C9 06     CMP #$06
C - - - - - 0x01EFCF 07:EFBF: F0 13     BEQ bra_EFD4
C - - - - - 0x01EFD1 07:EFC1: C9 08     CMP #$08
C - - - - - 0x01EFD3 07:EFC3: F0 07     BEQ bra_EFCC
C - - - - - 0x01EFD5 07:EFC5: C9 0A     CMP #$0A
C - - - - - 0x01EFD7 07:EFC7: F0 03     BEQ bra_EFCC
C - - - - - 0x01EFD9 07:EFC9: 4C E5 EF  JMP loc_EFE5
bra_EFCC:
C - - - - - 0x01EFDC 07:EFCC: AD E8 05  LDA ram_след_hi_2006
C - - - - - 0x01EFDF 07:EFCF: F0 14     BEQ bra_EFE5
C - - - - - 0x01EFE1 07:EFD1: 4C 44 C2  JMP loc_C244
bra_EFD4:
C - - - - - 0x01EFE4 07:EFD4: A5 51     LDA ram_задержка_кадра
C - - - - - 0x01EFE6 07:EFD6: D0 03     BNE bra_EFDB
C - - - - - 0x01EFE8 07:EFD8: 4C B4 F0  JMP loc_F0B4
bra_EFDB:
C - - - - - 0x01EFEB 07:EFDB: C9 01     CMP #$01
C - - - - - 0x01EFED 07:EFDD: D0 03     BNE bra_EFE2
C - - - - - 0x01EFEF 07:EFDF: 4C 1A D6  JMP loc_D61A
bra_EFE2:
C - - - - - 0x01EFF2 07:EFE2: 4C 40 F3  JMP loc_F340
bra_EFE5:
loc_EFE5:
C D 3 - - - 0x01EFF5 07:EFE5: AD 93 06  LDA ram_байт_2006_hi_атрибуты
C - - - - - 0x01EFF8 07:EFE8: 30 38     BMI bra_F022
C - - - - - 0x01EFFA 07:EFEA: A5 4C     LDA ram_для_2000
C - - - - - 0x01EFFC 07:EFEC: 29 FB     AND #$FB
C - - - - - 0x01EFFE 07:EFEE: 0D 90 06  ORA ram_бит_для_2000_атрибуты
C - - - - - 0x01F001 07:EFF1: 85 4C     STA ram_для_2000
C - - - - - 0x01F003 07:EFF3: 8D 00 20  STA $2000
bra_EFF6:
C - - - - - 0x01F006 07:EFF6: A9 00     LDA #$00
C - - - - - 0x01F008 07:EFF8: 8D 90 06  STA ram_бит_для_2000_атрибуты
C - - - - - 0x01F00B 07:EFFB: AD 02 20  LDA $2002
C - - - - - 0x01F00E 07:EFFE: AD 93 06  LDA ram_байт_2006_hi_атрибуты
C - - - - - 0x01F011 07:F001: 8D 06 20  STA $2006
C - - - - - 0x01F014 07:F004: AD 94 06  LDA ram_байт_2006_lo_атрибуты
C - - - - - 0x01F017 07:F007: 8D 06 20  STA $2006
C - - - - - 0x01F01A 07:F00A: AC 95 06  LDY ram_счетчик_буфера_атрибутов
C - - - - - 0x01F01D 07:F00D: C0 21     CPY #$21
C - - - - - 0x01F01F 07:F00F: B0 E5     BCS bra_EFF6
C - - - - - 0x01F021 07:F011: A2 00     LDX #$00
bra_F013:
C - - - - - 0x01F023 07:F013: BD 96 06  LDA ram_буфер_атрибутов,X
C - - - - - 0x01F026 07:F016: 8D 07 20  STA $2007
C - - - - - 0x01F029 07:F019: E8        INX
C - - - - - 0x01F02A 07:F01A: 88        DEY
C - - - - - 0x01F02B 07:F01B: D0 F6     BNE bra_F013
C - - - - - 0x01F02D 07:F01D: A9 FF     LDA #$FF
C - - - - - 0x01F02F 07:F01F: 8D 93 06  STA ram_байт_2006_hi_атрибуты
bra_F022:
C - - - - - 0x01F032 07:F022: AD B6 06  LDA ram_байт_2006_hi_графика
C - - - - - 0x01F035 07:F025: 30 38     BMI bra_F05F
C - - - - - 0x01F037 07:F027: A5 4C     LDA ram_для_2000
C - - - - - 0x01F039 07:F029: 29 FB     AND #$FB
C - - - - - 0x01F03B 07:F02B: 0D 91 06  ORA ram_бит_для_2000_графика
C - - - - - 0x01F03E 07:F02E: 85 4C     STA ram_для_2000
C - - - - - 0x01F040 07:F030: 8D 00 20  STA $2000
bra_F033:
C - - - - - 0x01F043 07:F033: A9 00     LDA #$00
C - - - - - 0x01F045 07:F035: 8D 91 06  STA ram_бит_для_2000_графика
C - - - - - 0x01F048 07:F038: AD 02 20  LDA $2002
C - - - - - 0x01F04B 07:F03B: AD B6 06  LDA ram_байт_2006_hi_графика
C - - - - - 0x01F04E 07:F03E: 8D 06 20  STA $2006
C - - - - - 0x01F051 07:F041: AD B7 06  LDA ram_байт_2006_lo_графика
C - - - - - 0x01F054 07:F044: 8D 06 20  STA $2006
C - - - - - 0x01F057 07:F047: A2 00     LDX #$00
C - - - - - 0x01F059 07:F049: AC B8 06  LDY ram_счетчик_буфера_графики
C - - - - - 0x01F05C 07:F04C: C0 21     CPY #$21
C - - - - - 0x01F05E 07:F04E: B0 E3     BCS bra_F033
bra_F050:
C - - - - - 0x01F060 07:F050: BD B9 06  LDA ram_буфер_графики,X
C - - - - - 0x01F063 07:F053: 8D 07 20  STA $2007
C - - - - - 0x01F066 07:F056: E8        INX
C - - - - - 0x01F067 07:F057: 88        DEY
C - - - - - 0x01F068 07:F058: D0 F6     BNE bra_F050
C - - - - - 0x01F06A 07:F05A: A9 FF     LDA #$FF
C - - - - - 0x01F06C 07:F05C: 8D B6 06  STA ram_байт_2006_hi_графика
bra_F05F:
C - - - - - 0x01F06F 07:F05F: AD D9 06  LDA ram_байт_2006_hi_палитра
C - - - - - 0x01F072 07:F062: 30 4F     BMI bra_F0B3_RTS
C - - - - - 0x01F074 07:F064: A5 4C     LDA ram_для_2000
C - - - - - 0x01F076 07:F066: 29 FB     AND #$FB
C - - - - - 0x01F078 07:F068: 0D 92 06  ORA ram_бит_для_2000_палитра
C - - - - - 0x01F07B 07:F06B: 85 4C     STA ram_для_2000
C - - - - - 0x01F07D 07:F06D: 8D 00 20  STA $2000
bra_F070:
C - - - - - 0x01F080 07:F070: A9 00     LDA #$00
C - - - - - 0x01F082 07:F072: 8D 92 06  STA ram_бит_для_2000_палитра
C - - - - - 0x01F085 07:F075: AD 02 20  LDA $2002
C - - - - - 0x01F088 07:F078: AD D9 06  LDA ram_байт_2006_hi_палитра
C - - - - - 0x01F08B 07:F07B: 8D 06 20  STA $2006
C - - - - - 0x01F08E 07:F07E: AD DA 06  LDA ram_байт_2006_lo_палитра
C - - - - - 0x01F091 07:F081: 8D 06 20  STA $2006
C - - - - - 0x01F094 07:F084: AC DB 06  LDY ram_счетчик_буфера_палитры
C - - - - - 0x01F097 07:F087: C0 21     CPY #$21
C - - - - - 0x01F099 07:F089: B0 E5     BCS bra_F070
C - - - - - 0x01F09B 07:F08B: A2 00     LDX #$00
bra_F08D:
C - - - - - 0x01F09D 07:F08D: BD DC 06  LDA ram_буфер_палитры,X
C - - - - - 0x01F0A0 07:F090: 8D 07 20  STA $2007
C - - - - - 0x01F0A3 07:F093: E8        INX
C - - - - - 0x01F0A4 07:F094: 88        DEY
C - - - - - 0x01F0A5 07:F095: D0 F6     BNE bra_F08D
C - - - - - 0x01F0A7 07:F097: AD D9 06  LDA ram_байт_2006_hi_палитра
C - - - - - 0x01F0AA 07:F09A: C9 3F     CMP #$3F
C - - - - - 0x01F0AC 07:F09C: D0 10     BNE bra_F0AE
C - - - - - 0x01F0AE 07:F09E: A9 3F     LDA #$3F
C - - - - - 0x01F0B0 07:F0A0: 8D 06 20  STA $2006
C - - - - - 0x01F0B3 07:F0A3: A9 00     LDA #$00
C - - - - - 0x01F0B5 07:F0A5: 8D 06 20  STA $2006
C - - - - - 0x01F0B8 07:F0A8: 8D 06 20  STA $2006
C - - - - - 0x01F0BB 07:F0AB: 8D 06 20  STA $2006
bra_F0AE:
C - - - - - 0x01F0BE 07:F0AE: A9 FF     LDA #$FF
C - - - - - 0x01F0C0 07:F0B0: 8D D9 06  STA ram_байт_2006_hi_палитра
bra_F0B3_RTS:
C - - - - - 0x01F0C3 07:F0B3: 60        RTS



loc_F0B4:
C D 3 - - - 0x01F0C4 07:F0B4: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01F0C7 07:F0B7: 29 80     AND #$80
C - - - - - 0x01F0C9 07:F0B9: D0 13     BNE bra_F0CE
C - - - - - 0x01F0CB 07:F0BB: AD F5 05  LDA ram_флаг_гола
C - - - - - 0x01F0CE 07:F0BE: C9 FF     CMP #$FF
C - - - - - 0x01F0D0 07:F0C0: F0 03     BEQ bra_F0C5
C - - - - - 0x01F0D2 07:F0C2: 4C 66 F1  JMP loc_F166
bra_F0C5:
C - - - - - 0x01F0D5 07:F0C5: AD F8 05  LDA ram_вид_статусбара
C - - - - - 0x01F0D8 07:F0C8: 10 03     BPL bra_F0CD_RTS
C - - - - - 0x01F0DA 07:F0CA: 4C 70 E1  JMP loc_E170
bra_F0CD_RTS:
C - - - - - 0x01F0DD 07:F0CD: 60        RTS
bra_F0CE:
C - - - - - 0x01F0DE 07:F0CE: A5 4C     LDA ram_для_2000
C - - - - - 0x01F0E0 07:F0D0: 09 04     ORA #$04
C - - - - - 0x01F0E2 07:F0D2: 85 4C     STA ram_для_2000
C - - - - - 0x01F0E4 07:F0D4: 8D 00 20  STA $2000
C - - - - - 0x01F0E7 07:F0D7: AD 02 20  LDA $2002
C - - - - - 0x01F0EA 07:F0DA: A9 20     LDA #$20
C - - - - - 0x01F0EC 07:F0DC: 8D 06 20  STA $2006
C - - - - - 0x01F0EF 07:F0DF: AD 8D 05  LDA ram_байт_2006_lo_NMT_1
C - - - - - 0x01F0F2 07:F0E2: 8D 06 20  STA $2006
C - - - - - 0x01F0F5 07:F0E5: A0 1A     LDY #$1A
C - - - - - 0x01F0F7 07:F0E7: A2 00     LDX #$00
bra_F0E9:
C - - - - - 0x01F0F9 07:F0E9: BD 42 01  LDA ram_тайлы_поля_NMT_1,X
C - - - - - 0x01F0FC 07:F0EC: 8D 07 20  STA $2007
C - - - - - 0x01F0FF 07:F0EF: E8        INX
C - - - - - 0x01F100 07:F0F0: 88        DEY
C - - - - - 0x01F101 07:F0F1: D0 F6     BNE bra_F0E9
C - - - - - 0x01F103 07:F0F3: AD 02 20  LDA $2002
C - - - - - 0x01F106 07:F0F6: A9 28     LDA #$28
C - - - - - 0x01F108 07:F0F8: 8D 06 20  STA $2006
C - - - - - 0x01F10B 07:F0FB: AD 8E 05  LDA ram_байт_2006_lo_NMT_2
C - - - - - 0x01F10E 07:F0FE: 8D 06 20  STA $2006
; bzk удалить Y, добавить проверку на X если это быстрее
C - - - - - 0x01F111 07:F101: A2 00     LDX #$00
C - - - - - 0x01F113 07:F103: A0 10     LDY #$10
bra_F105_цикл:
C - - - - - 0x01F115 07:F105: BD 5C 01  LDA ram_тайлы_поля_NMT_2,X
C - - - - - 0x01F118 07:F108: 8D 07 20  STA $2007
C - - - - - 0x01F11B 07:F10B: E8        INX
C - - - - - 0x01F11C 07:F10C: 88        DEY
C - - - - - 0x01F11D 07:F10D: D0 F6     BNE bra_F105_цикл
C - - - - - 0x01F11F 07:F10F: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01F122 07:F112: 29 7F     AND #$7F
C - - - - - 0x01F124 07:F114: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01F127 07:F117: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01F12A 07:F11A: 29 40     AND #$40
C - - - - - 0x01F12C 07:F11C: D0 03     BNE bra_F121
C - - - - - 0x01F12E 07:F11E: 4C 5D F1  JMP loc_F15D
bra_F121:
C - - - - - 0x01F131 07:F121: A2 00     LDX #$00
loc_F123:
C D 3 - - - 0x01F133 07:F123: AD 02 20  LDA $2002
C - - - - - 0x01F136 07:F126: A9 23     LDA #$23
C - - - - - 0x01F138 07:F128: 8D 06 20  STA $2006
C - - - - - 0x01F13B 07:F12B: BD 8F 05  LDA ram_058F,X
C - - - - - 0x01F13E 07:F12E: 8D 06 20  STA $2006
C - - - - - 0x01F141 07:F131: BD 9A 05  LDA ram_059A,X
C - - - - - 0x01F144 07:F134: 8D 07 20  STA $2007
C - - - - - 0x01F147 07:F137: E8        INX
C - - - - - 0x01F148 07:F138: E0 07     CPX #$07
C - - - - - 0x01F14A 07:F13A: F0 03     BEQ bra_F13F
C - - - - - 0x01F14C 07:F13C: 4C 23 F1  JMP loc_F123
bra_F13F:
C - - - - - 0x01F14F 07:F13F: A2 00     LDX #$00
loc_F141:
C D 3 - - - 0x01F151 07:F141: AD 02 20  LDA $2002
C - - - - - 0x01F154 07:F144: A9 2B     LDA #$2B
C - - - - - 0x01F156 07:F146: 8D 06 20  STA $2006
C - - - - - 0x01F159 07:F149: BD 96 05  LDA ram_0596,X
C - - - - - 0x01F15C 07:F14C: 8D 06 20  STA $2006
C - - - - - 0x01F15F 07:F14F: BD A1 05  LDA ram_05A1,X
C - - - - - 0x01F162 07:F152: 8D 07 20  STA $2007
C - - - - - 0x01F165 07:F155: E8        INX
C - - - - - 0x01F166 07:F156: E0 04     CPX #$04
C - - - - - 0x01F168 07:F158: F0 03     BEQ bra_F15D
C - - - - - 0x01F16A 07:F15A: 4C 41 F1  JMP loc_F141
bra_F15D:
loc_F15D:
C D 3 - - - 0x01F16D 07:F15D: AD AB 05  LDA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01F170 07:F160: 29 BF     AND #$BF
C - - - - - 0x01F172 07:F162: 8D AB 05  STA ram_флаг_обновл_тайлов_экр
C - - - - - 0x01F175 07:F165: 60        RTS



loc_F166:
C D 3 - - - 0x01F176 07:F166: AD F5 05  LDA ram_флаг_гола
C - - - - - 0x01F179 07:F169: 29 7F     AND #$7F
C - - - - - 0x01F17B 07:F16B: C9 02     CMP #$02
C - - - - - 0x01F17D 07:F16D: 90 0B     BCC bra_F17A
C - - - - - 0x01F17F 07:F16F: AD F5 05  LDA ram_флаг_гола
C - - - - - 0x01F182 07:F172: 30 03     BMI bra_F177
C - - - - - 0x01F184 07:F174: 4C AC F2  JMP loc_F2AC
bra_F177:
C - - - - - 0x01F187 07:F177: 4C EA F2  JMP loc_F2EA
bra_F17A:
C - - - - - 0x01F18A 07:F17A: AD F5 05  LDA ram_флаг_гола
C - - - - - 0x01F18D 07:F17D: 30 03     BMI bra_F182
C - - - - - 0x01F18F 07:F17F: 4C E6 F1  JMP loc_F1E6
bra_F182:
C - - - - - 0x01F192 07:F182: 29 01     AND #$01
C - - - - - 0x01F194 07:F184: 0A        ASL
C - - - - - 0x01F195 07:F185: A8        TAY
C - - - - - 0x01F196 07:F186: B9 48 F2  LDA tbl_F248,Y
C - - - - - 0x01F199 07:F189: 85 0C     STA ram_000C
C - - - - - 0x01F19B 07:F18B: B9 49 F2  LDA tbl_F248 + 1,Y
C - - - - - 0x01F19E 07:F18E: 85 0D     STA ram_000D
C - - - - - 0x01F1A0 07:F190: A5 4C     LDA ram_для_2000
C - - - - - 0x01F1A2 07:F192: 09 04     ORA #$04
C - - - - - 0x01F1A4 07:F194: 85 4C     STA ram_для_2000
C - - - - - 0x01F1A6 07:F196: 8D 00 20  STA $2000
C - - - - - 0x01F1A9 07:F199: AD 02 20  LDA $2002
C - - - - - 0x01F1AC 07:F19C: A9 22     LDA #$22
C - - - - - 0x01F1AE 07:F19E: 8D 06 20  STA $2006
C - - - - - 0x01F1B1 07:F1A1: A9 8B     LDA #$8B
C - - - - - 0x01F1B3 07:F1A3: 8D 06 20  STA $2006
C - - - - - 0x01F1B6 07:F1A6: A0 00     LDY #$00
C - - - - - 0x01F1B8 07:F1A8: A2 05     LDX #$05
bra_F1AA:
C - - - - - 0x01F1BA 07:F1AA: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F1BC 07:F1AC: 8D 07 20  STA $2007
C - - - - - 0x01F1BF 07:F1AF: C8        INY
C - - - - - 0x01F1C0 07:F1B0: CA        DEX
C - - - - - 0x01F1C1 07:F1B1: 10 F7     BPL bra_F1AA
C - - - - - 0x01F1C3 07:F1B3: AD 02 20  LDA $2002
C - - - - - 0x01F1C6 07:F1B6: A9 22     LDA #$22
C - - - - - 0x01F1C8 07:F1B8: 8D 06 20  STA $2006
C - - - - - 0x01F1CB 07:F1BB: A9 0C     LDA #$0C
C - - - - - 0x01F1CD 07:F1BD: 8D 06 20  STA $2006
C - - - - - 0x01F1D0 07:F1C0: A2 0A     LDX #$0A
bra_F1C2:
C - - - - - 0x01F1D2 07:F1C2: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F1D4 07:F1C4: 8D 07 20  STA $2007
C - - - - - 0x01F1D7 07:F1C7: C8        INY
C - - - - - 0x01F1D8 07:F1C8: CA        DEX
C - - - - - 0x01F1D9 07:F1C9: 10 F7     BPL bra_F1C2
C - - - - - 0x01F1DB 07:F1CB: AD 02 20  LDA $2002
C - - - - - 0x01F1DE 07:F1CE: A9 21     LDA #$21
C - - - - - 0x01F1E0 07:F1D0: 8D 06 20  STA $2006
C - - - - - 0x01F1E3 07:F1D3: A9 CD     LDA #$CD
C - - - - - 0x01F1E5 07:F1D5: 8D 06 20  STA $2006
C - - - - - 0x01F1E8 07:F1D8: A2 05     LDX #$05
bra_F1DA:
C - - - - - 0x01F1EA 07:F1DA: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F1EC 07:F1DC: 8D 07 20  STA $2007
C - - - - - 0x01F1EF 07:F1DF: C8        INY
C - - - - - 0x01F1F0 07:F1E0: CA        DEX
C - - - - - 0x01F1F1 07:F1E1: 10 F7     BPL bra_F1DA
C - - - - - 0x01F1F3 07:F1E3: 4C 3A F3  JMP loc_F33A



loc_F1E6:
C D 3 - - - 0x01F1F6 07:F1E6: 0A        ASL
C - - - - - 0x01F1F7 07:F1E7: A8        TAY
C - - - - - 0x01F1F8 07:F1E8: B9 4C F2  LDA tbl_F24C,Y
C - - - - - 0x01F1FB 07:F1EB: 85 0C     STA ram_000C
C - - - - - 0x01F1FD 07:F1ED: B9 4D F2  LDA tbl_F24C + 1,Y
C - - - - - 0x01F200 07:F1F0: 85 0D     STA ram_000D
C - - - - - 0x01F202 07:F1F2: A5 4C     LDA ram_для_2000
C - - - - - 0x01F204 07:F1F4: 09 04     ORA #$04
C - - - - - 0x01F206 07:F1F6: 85 4C     STA ram_для_2000
C - - - - - 0x01F208 07:F1F8: 8D 00 20  STA $2000
C - - - - - 0x01F20B 07:F1FB: AD 02 20  LDA $2002
C - - - - - 0x01F20E 07:F1FE: A9 22     LDA #$22
C - - - - - 0x01F210 07:F200: 8D 06 20  STA $2006
C - - - - - 0x01F213 07:F203: A9 94     LDA #$94
C - - - - - 0x01F215 07:F205: 8D 06 20  STA $2006
C - - - - - 0x01F218 07:F208: A0 00     LDY #$00
C - - - - - 0x01F21A 07:F20A: A2 05     LDX #$05
bra_F20C:
C - - - - - 0x01F21C 07:F20C: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F21E 07:F20E: 8D 07 20  STA $2007
C - - - - - 0x01F221 07:F211: C8        INY
C - - - - - 0x01F222 07:F212: CA        DEX
C - - - - - 0x01F223 07:F213: 10 F7     BPL bra_F20C
C - - - - - 0x01F225 07:F215: AD 02 20  LDA $2002
C - - - - - 0x01F228 07:F218: A9 22     LDA #$22
C - - - - - 0x01F22A 07:F21A: 8D 06 20  STA $2006
C - - - - - 0x01F22D 07:F21D: A9 13     LDA #$13
C - - - - - 0x01F22F 07:F21F: 8D 06 20  STA $2006
C - - - - - 0x01F232 07:F222: A2 0A     LDX #$0A
bra_F224:
C - - - - - 0x01F234 07:F224: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F236 07:F226: 8D 07 20  STA $2007
C - - - - - 0x01F239 07:F229: C8        INY
C - - - - - 0x01F23A 07:F22A: CA        DEX
C - - - - - 0x01F23B 07:F22B: 10 F7     BPL bra_F224
C - - - - - 0x01F23D 07:F22D: AD 02 20  LDA $2002
C - - - - - 0x01F240 07:F230: A9 21     LDA #$21
C - - - - - 0x01F242 07:F232: 8D 06 20  STA $2006
C - - - - - 0x01F245 07:F235: A9 D2     LDA #$D2
C - - - - - 0x01F247 07:F237: 8D 06 20  STA $2006
C - - - - - 0x01F24A 07:F23A: A2 05     LDX #$05
bra_F23C:
C - - - - - 0x01F24C 07:F23C: B1 0C     LDA (ram_000C),Y
C - - - - - 0x01F24E 07:F23E: 8D 07 20  STA $2007
C - - - - - 0x01F251 07:F241: C8        INY
C - - - - - 0x01F252 07:F242: CA        DEX
C - - - - - 0x01F253 07:F243: 10 F7     BPL bra_F23C
C - - - - - 0x01F255 07:F245: 4C 3A F3  JMP loc_F33A



tbl_F248:
- D 3 - - - 0x01F258 07:F248: 50 F2     .word off_F250_00
- - - - - - 0x01F25A 07:F24A: 67 F2     .word off_F267_01

tbl_F24C:
- D 3 - - - 0x01F25C 07:F24C: 7E F2     .word off_F27E_00
- D 3 - - - 0x01F25E 07:F24E: 95 F2     .word off_F295_01

off_F250_00:
- D 3 - I - 0x01F260 07:F250: 04        .byte $04   ; 
- D 3 - I - 0x01F261 07:F251: 00        .byte $00   ; 
- D 3 - I - 0x01F262 07:F252: 00        .byte $00   ; 
- D 3 - I - 0x01F263 07:F253: 04        .byte $04   ; 
- D 3 - I - 0x01F264 07:F254: 04        .byte $04   ; 
- D 3 - I - 0x01F265 07:F255: 00        .byte $00   ; 
- D 3 - I - 0x01F266 07:F256: 04        .byte $04   ; 
- D 3 - I - 0x01F267 07:F257: 00        .byte $00   ; 
- D 3 - I - 0x01F268 07:F258: 00        .byte $00   ; 
- D 3 - I - 0x01F269 07:F259: 04        .byte $04   ; 
- D 3 - I - 0x01F26A 07:F25A: 04        .byte $04   ; 
- D 3 - I - 0x01F26B 07:F25B: B0        .byte $B0   ; 
- D 3 - I - 0x01F26C 07:F25C: 99        .byte $99   ; 
- D 3 - I - 0x01F26D 07:F25D: D0        .byte $D0   ; 
- D 3 - I - 0x01F26E 07:F25E: A9        .byte $A9   ; 
- D 3 - I - 0x01F26F 07:F25F: B9        .byte $B9   ; 
- D 3 - I - 0x01F270 07:F260: C9        .byte $C9   ; 
- D 3 - I - 0x01F271 07:F261: B0        .byte $B0   ; 
- D 3 - I - 0x01F272 07:F262: C0        .byte $C0   ; 
- D 3 - I - 0x01F273 07:F263: D0        .byte $D0   ; 
- D 3 - I - 0x01F274 07:F264: 95        .byte $95   ; 
- D 3 - I - 0x01F275 07:F265: A5        .byte $A5   ; 
- D 3 - I - 0x01F276 07:F266: B5        .byte $B5   ; 



off_F267_01:
- - - - - - 0x01F277 07:F267: AD        .byte $AD   ; 
- - - - - - 0x01F278 07:F268: BD        .byte $BD   ; 
- - - - - - 0x01F279 07:F269: CD        .byte $CD   ; 
- - - - - - 0x01F27A 07:F26A: DD        .byte $DD   ; 
- - - - - - 0x01F27B 07:F26B: 9F        .byte $9F   ; 
- - - - - - 0x01F27C 07:F26C: AF        .byte $AF   ; 
- - - - - - 0x01F27D 07:F26D: BB        .byte $BB   ; 
- - - - - - 0x01F27E 07:F26E: CB        .byte $CB   ; 
- - - - - - 0x01F27F 07:F26F: DB        .byte $DB   ; 
- - - - - - 0x01F280 07:F270: 9D        .byte $9D   ; 
- - - - - - 0x01F281 07:F271: AE        .byte $AE   ; 
- - - - - - 0x01F282 07:F272: BE        .byte $BE   ; 
- - - - - - 0x01F283 07:F273: CE        .byte $CE   ; 
- - - - - - 0x01F284 07:F274: DE        .byte $DE   ; 
- - - - - - 0x01F285 07:F275: BF        .byte $BF   ; 
- - - - - - 0x01F286 07:F276: CF        .byte $CF   ; 
- - - - - - 0x01F287 07:F277: DF        .byte $DF   ; 
- - - - - - 0x01F288 07:F278: AB        .byte $AB   ; 
- - - - - - 0x01F289 07:F279: AC        .byte $AC   ; 
- - - - - - 0x01F28A 07:F27A: BC        .byte $BC   ; 
- - - - - - 0x01F28B 07:F27B: CC        .byte $CC   ; 
- - - - - - 0x01F28C 07:F27C: DC        .byte $DC   ; 
- - - - - - 0x01F28D 07:F27D: 9E        .byte $9E   ; 



off_F27E_00:
- D 3 - I - 0x01F28E 07:F27E: 04        .byte $04   ; 
- D 3 - I - 0x01F28F 07:F27F: 00        .byte $00   ; 
- D 3 - I - 0x01F290 07:F280: 00        .byte $00   ; 
- D 3 - I - 0x01F291 07:F281: 04        .byte $04   ; 
- D 3 - I - 0x01F292 07:F282: 04        .byte $04   ; 
- D 3 - I - 0x01F293 07:F283: 00        .byte $00   ; 
- D 3 - I - 0x01F294 07:F284: 04        .byte $04   ; 
- D 3 - I - 0x01F295 07:F285: 00        .byte $00   ; 
- D 3 - I - 0x01F296 07:F286: 00        .byte $00   ; 
- D 3 - I - 0x01F297 07:F287: 04        .byte $04   ; 
- D 3 - I - 0x01F298 07:F288: 04        .byte $04   ; 
- D 3 - I - 0x01F299 07:F289: B4        .byte $B4   ; 
- D 3 - I - 0x01F29A 07:F28A: 99        .byte $99   ; 
- D 3 - I - 0x01F29B 07:F28B: D4        .byte $D4   ; 
- D 3 - I - 0x01F29C 07:F28C: CA        .byte $CA   ; 
- D 3 - I - 0x01F29D 07:F28D: 9A        .byte $9A   ; 
- D 3 - I - 0x01F29E 07:F28E: AA        .byte $AA   ; 
- D 3 - I - 0x01F29F 07:F28F: B4        .byte $B4   ; 
- D 3 - I - 0x01F2A0 07:F290: C4        .byte $C4   ; 
- D 3 - I - 0x01F2A1 07:F291: D4        .byte $D4   ; 
- D 3 - I - 0x01F2A2 07:F292: 97        .byte $97   ; 
- D 3 - I - 0x01F2A3 07:F293: A8        .byte $A8   ; 
- D 3 - I - 0x01F2A4 07:F294: B8        .byte $B8   ; 



off_F295_01:
- D 3 - I - 0x01F2A5 07:F295: AE        .byte $AE   ; 
- D 3 - I - 0x01F2A6 07:F296: BE        .byte $BE   ; 
- D 3 - I - 0x01F2A7 07:F297: CE        .byte $CE   ; 
- D 3 - I - 0x01F2A8 07:F298: DE        .byte $DE   ; 
- D 3 - I - 0x01F2A9 07:F299: CF        .byte $CF   ; 
- D 3 - I - 0x01F2AA 07:F29A: DF        .byte $DF   ; 
- D 3 - I - 0x01F2AB 07:F29B: BC        .byte $BC   ; 
- D 3 - I - 0x01F2AC 07:F29C: CC        .byte $CC   ; 
- D 3 - I - 0x01F2AD 07:F29D: DC        .byte $DC   ; 
- D 3 - I - 0x01F2AE 07:F29E: 9E        .byte $9E   ; 
- D 3 - I - 0x01F2AF 07:F29F: AD        .byte $AD   ; 
- D 3 - I - 0x01F2B0 07:F2A0: BD        .byte $BD   ; 
- D 3 - I - 0x01F2B1 07:F2A1: CD        .byte $CD   ; 
- D 3 - I - 0x01F2B2 07:F2A2: DD        .byte $DD   ; 
- D 3 - I - 0x01F2B3 07:F2A3: 9F        .byte $9F   ; 
- D 3 - I - 0x01F2B4 07:F2A4: AF        .byte $AF   ; 
- D 3 - I - 0x01F2B5 07:F2A5: BF        .byte $BF   ; 
- D 3 - I - 0x01F2B6 07:F2A6: 9C        .byte $9C   ; 
- D 3 - I - 0x01F2B7 07:F2A7: AC        .byte $AC   ; 
- D 3 - I - 0x01F2B8 07:F2A8: BB        .byte $BB   ; 
- D 3 - I - 0x01F2B9 07:F2A9: CB        .byte $CB   ; 
- D 3 - I - 0x01F2BA 07:F2AA: DB        .byte $DB   ; 
- D 3 - I - 0x01F2BB 07:F2AB: 9D        .byte $9D   ; 



loc_F2AC:
C D 3 - - - 0x01F2BC 07:F2AC: A5 4C     LDA ram_для_2000
C - - - - - 0x01F2BE 07:F2AE: 09 04     ORA #$04
C - - - - - 0x01F2C0 07:F2B0: 85 4C     STA ram_для_2000
C - - - - - 0x01F2C2 07:F2B2: 8D 00 20  STA $2000
C - - - - - 0x01F2C5 07:F2B5: AD 02 20  LDA $2002
C - - - - - 0x01F2C8 07:F2B8: A9 21     LDA #$21
C - - - - - 0x01F2CA 07:F2BA: 8D 06 20  STA $2006
C - - - - - 0x01F2CD 07:F2BD: A9 D1     LDA #$D1
C - - - - - 0x01F2CF 07:F2BF: 8D 06 20  STA $2006
C - - - - - 0x01F2D2 07:F2C2: A2 00     LDX #$00
bra_F2C4:
C - - - - - 0x01F2D4 07:F2C4: BD 28 F3  LDA tbl_F328,X
C - - - - - 0x01F2D7 07:F2C7: 8D 07 20  STA $2007
C - - - - - 0x01F2DA 07:F2CA: E8        INX
C - - - - - 0x01F2DB 07:F2CB: E0 04     CPX #$04
C - - - - - 0x01F2DD 07:F2CD: D0 F5     BNE bra_F2C4
C - - - - - 0x01F2DF 07:F2CF: AD 02 20  LDA $2002
C - - - - - 0x01F2E2 07:F2D2: A9 21     LDA #$21
C - - - - - 0x01F2E4 07:F2D4: 8D 06 20  STA $2006
C - - - - - 0x01F2E7 07:F2D7: A9 D2     LDA #$D2
C - - - - - 0x01F2E9 07:F2D9: 8D 06 20  STA $2006
bra_F2DC:
C - - - - - 0x01F2EC 07:F2DC: BD 28 F3  LDA tbl_F328,X
C - - - - - 0x01F2EF 07:F2DF: 8D 07 20  STA $2007
C - - - - - 0x01F2F2 07:F2E2: E8        INX
C - - - - - 0x01F2F3 07:F2E3: E0 09     CPX #$09
C - - - - - 0x01F2F5 07:F2E5: D0 F5     BNE bra_F2DC
C - - - - - 0x01F2F7 07:F2E7: 4C 3A F3  JMP loc_F33A



loc_F2EA:
C D 3 - - - 0x01F2FA 07:F2EA: A5 4C     LDA ram_для_2000
C - - - - - 0x01F2FC 07:F2EC: 09 04     ORA #$04
C - - - - - 0x01F2FE 07:F2EE: 85 4C     STA ram_для_2000
C - - - - - 0x01F300 07:F2F0: 8D 00 20  STA $2000
C - - - - - 0x01F303 07:F2F3: AD 02 20  LDA $2002
C - - - - - 0x01F306 07:F2F6: A9 21     LDA #$21
C - - - - - 0x01F308 07:F2F8: 8D 06 20  STA $2006
C - - - - - 0x01F30B 07:F2FB: A9 CE     LDA #$CE
C - - - - - 0x01F30D 07:F2FD: 8D 06 20  STA $2006
C - - - - - 0x01F310 07:F300: A2 00     LDX #$00
bra_F302:
C - - - - - 0x01F312 07:F302: BD 31 F3  LDA tbl_F331,X
C - - - - - 0x01F315 07:F305: 8D 07 20  STA $2007
C - - - - - 0x01F318 07:F308: E8        INX
C - - - - - 0x01F319 07:F309: E0 04     CPX #$04
C - - - - - 0x01F31B 07:F30B: D0 F5     BNE bra_F302
C - - - - - 0x01F31D 07:F30D: AD 02 20  LDA $2002
C - - - - - 0x01F320 07:F310: A9 21     LDA #$21
C - - - - - 0x01F322 07:F312: 8D 06 20  STA $2006
C - - - - - 0x01F325 07:F315: A9 CD     LDA #$CD
C - - - - - 0x01F327 07:F317: 8D 06 20  STA $2006
bra_F31A:
C - - - - - 0x01F32A 07:F31A: BD 31 F3  LDA tbl_F331,X
C - - - - - 0x01F32D 07:F31D: 8D 07 20  STA $2007
C - - - - - 0x01F330 07:F320: E8        INX
C - - - - - 0x01F331 07:F321: E0 09     CPX #$09
C - - - - - 0x01F333 07:F323: D0 F5     BNE bra_F31A
C - - - - - 0x01F335 07:F325: 4C 3A F3  JMP loc_F33A



tbl_F328:
- D 3 - - - 0x01F338 07:F328: 9E        .byte $9E   ; 
- D 3 - - - 0x01F339 07:F329: 9E        .byte $9E   ; 
- D 3 - - - 0x01F33A 07:F32A: 9E        .byte $9E   ; 
- D 3 - - - 0x01F33B 07:F32B: 9E        .byte $9E   ; 
- D 3 - - - 0x01F33C 07:F32C: BE        .byte $BE   ; 
- D 3 - - - 0x01F33D 07:F32D: BC        .byte $BC   ; 
- D 3 - - - 0x01F33E 07:F32E: BC        .byte $BC   ; 
- D 3 - - - 0x01F33F 07:F32F: CC        .byte $CC   ; 
- D 3 - - - 0x01F340 07:F330: CC        .byte $CC   ; 



tbl_F331:
- D 3 - - - 0x01F341 07:F331: 9D        .byte $9D   ; 
- D 3 - - - 0x01F342 07:F332: 9D        .byte $9D   ; 
- D 3 - - - 0x01F343 07:F333: 9D        .byte $9D   ; 
- D 3 - - - 0x01F344 07:F334: 9D        .byte $9D   ; 
- D 3 - - - 0x01F345 07:F335: AF        .byte $AF   ; 
- D 3 - - - 0x01F346 07:F336: BB        .byte $BB   ; 
- D 3 - - - 0x01F347 07:F337: BB        .byte $BB   ; 
- D 3 - - - 0x01F348 07:F338: CB        .byte $CB   ; 
- D 3 - - - 0x01F349 07:F339: CB        .byte $CB   ; 



loc_F33A:
C D 3 - - - 0x01F34A 07:F33A: A9 FF     LDA #$FF
C - - - - - 0x01F34C 07:F33C: 8D F5 05  STA ram_флаг_гола
C - - - - - 0x01F34F 07:F33F: 60        RTS



loc_F340:
C D 3 - - - 0x01F350 07:F340: AD 93 06  LDA ram_байт_2006_hi_атрибуты
C - - - - - 0x01F353 07:F343: 2D B6 06  AND ram_байт_2006_hi_графика
C - - - - - 0x01F356 07:F346: 2D D9 06  AND ram_байт_2006_hi_палитра
C - - - - - 0x01F359 07:F349: C9 FF     CMP #$FF
C - - - - - 0x01F35B 07:F34B: F0 03     BEQ bra_F350
C - - - - - 0x01F35D 07:F34D: 4C E5 EF  JMP loc_EFE5
bra_F350:
C - - - - - 0x01F360 07:F350: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01F362 07:F352: C5 5A     CMP ram_копия_подтипа_экрана
C - - - - - 0x01F364 07:F354: D0 4E     BNE bra_F3A4_RTS
C - - - - - 0x01F366 07:F356: C9 02     CMP #$02
C - - - - - 0x01F368 07:F358: F0 07     BEQ bra_F361
C - - - - - 0x01F36A 07:F35A: C9 06     CMP #$06
C - - - - - 0x01F36C 07:F35C: F0 03     BEQ bra_F361
C - - - - - 0x01F36E 07:F35E: 4C 82 F3  JMP loc_F382
bra_F361:
C - - - - - 0x01F371 07:F361: A5 4C     LDA ram_для_2000
C - - - - - 0x01F373 07:F363: 29 FB     AND #$FB
C - - - - - 0x01F375 07:F365: 85 4C     STA ram_для_2000
C - - - - - 0x01F377 07:F367: 8D 00 20  STA $2000
C - - - - - 0x01F37A 07:F36A: AD 02 20  LDA $2002
C - - - - - 0x01F37D 07:F36D: A9 2A     LDA #$2A
C - - - - - 0x01F37F 07:F36F: 8D 06 20  STA $2006
C - - - - - 0x01F382 07:F372: A9 2D     LDA #$2D
C - - - - - 0x01F384 07:F374: 8D 06 20  STA $2006
C - - - - - 0x01F387 07:F377: A2 05     LDX #$05
bra_F379:
C - - - - - 0x01F389 07:F379: BD A5 05  LDA ram_тайл_статусбара,X
C - - - - - 0x01F38C 07:F37C: 8D 07 20  STA $2007
C - - - - - 0x01F38F 07:F37F: CA        DEX
C - - - - - 0x01F390 07:F380: 10 F7     BPL bra_F379
loc_F382:
C D 3 - - - 0x01F392 07:F382: AE F0 05  LDX ram_счетчик_следов
C - - - - - 0x01F395 07:F385: F0 1D     BEQ bra_F3A4_RTS
C - - - - - 0x01F397 07:F387: CA        DEX
bra_F388:
C - - - - - 0x01F398 07:F388: AD 02 20  LDA $2002
C - - - - - 0x01F39B 07:F38B: BD E8 05  LDA ram_след_hi_2006,X
C - - - - - 0x01F39E 07:F38E: 8D 06 20  STA $2006
C - - - - - 0x01F3A1 07:F391: BD EC 05  LDA ram_след_lo_2006,X
C - - - - - 0x01F3A4 07:F394: 8D 06 20  STA $2006
C - - - - - 0x01F3A7 07:F397: A9 FF     LDA #$FF
C - - - - - 0x01F3A9 07:F399: 8D 07 20  STA $2007
C - - - - - 0x01F3AC 07:F39C: CA        DEX
C - - - - - 0x01F3AD 07:F39D: 10 E9     BPL bra_F388
C - - - - - 0x01F3AF 07:F39F: A9 00     LDA #$00
C - - - - - 0x01F3B1 07:F3A1: 8D F0 05  STA ram_счетчик_следов
bra_F3A4_RTS:
C - - - - - 0x01F3B4 07:F3A4: 60        RTS



sub_F3A5:
C - - - - - 0x01F3B5 07:F3A5: AD FA 05  LDA ram_05FA
C - - - - - 0x01F3B8 07:F3A8: 30 29     BMI bra_F3D3_RTS
C - - - - - 0x01F3BA 07:F3AA: C9 07     CMP #$07
C - - - - - 0x01F3BC 07:F3AC: F0 26     BEQ bra_F3D4
C - - - - - 0x01F3BE 07:F3AE: A9 AA     LDA #$AA
C - - - - - 0x01F3C0 07:F3B0: 8D B9 06  STA ram_буфер_графики
C - - - - - 0x01F3C3 07:F3B3: A9 FF     LDA #$FF
C - - - - - 0x01F3C5 07:F3B5: 8D BA 06  STA ram_буфер_графики + 1
C - - - - - 0x01F3C8 07:F3B8: A9 02     LDA #$02
C - - - - - 0x01F3CA 07:F3BA: 8D B8 06  STA ram_счетчик_буфера_графики
C - - - - - 0x01F3CD 07:F3BD: AD FA 05  LDA ram_05FA
C - - - - - 0x01F3D0 07:F3C0: 18        CLC
C - - - - - 0x01F3D1 07:F3C1: 69 F0     ADC #$F0
C - - - - - 0x01F3D3 07:F3C3: 8D B7 06  STA ram_байт_2006_lo_графика
C - - - - - 0x01F3D6 07:F3C6: A9 00     LDA #$00
C - - - - - 0x01F3D8 07:F3C8: 8D 91 06  STA ram_бит_для_2000_графика
C - - - - - 0x01F3DB 07:F3CB: A9 2B     LDA #$2B
C - - - - - 0x01F3DD 07:F3CD: 8D B6 06  STA ram_байт_2006_hi_графика
C - - - - - 0x01F3E0 07:F3D0: EE FA 05  INC ram_05FA
bra_F3D3_RTS:
C - - - - - 0x01F3E3 07:F3D3: 60        RTS
bra_F3D4:
C - - - - - 0x01F3E4 07:F3D4: AD 00 03  LDA ram_счетчик_кадров
C - - - - - 0x01F3E7 07:F3D7: 29 01     AND #$01
C - - - - - 0x01F3E9 07:F3D9: D0 03     BNE bra_F3DE
C - - - - - 0x01F3EB 07:F3DB: EE F7 05  INC ram_задержка_перелив_надп
bra_F3DE:
C - - - - - 0x01F3EE 07:F3DE: AD F7 05  LDA ram_задержка_перелив_надп
C - - - - - 0x01F3F1 07:F3E1: C9 FF     CMP #$FF
C - - - - - 0x01F3F3 07:F3E3: D0 EE     BNE bra_F3D3_RTS
C - - - - - 0x01F3F5 07:F3E5: A9 FE     LDA #$FE
C - - - - - 0x01F3F7 07:F3E7: 8D F7 05  STA ram_задержка_перелив_надп
C - - - - - 0x01F3FA 07:F3EA: AD FA 05  LDA ram_05FA
C - - - - - 0x01F3FD 07:F3ED: C9 07     CMP #$07
C - - - - - 0x01F3FF 07:F3EF: D0 E2     BNE bra_F3D3_RTS
C - - - - - 0x01F401 07:F3F1: A9 00     LDA #$00
C - - - - - 0x01F403 07:F3F3: 8D FA 05  STA ram_05FA
C - - - - - 0x01F406 07:F3F6: 60        RTS


; bzk garbage
- - - - - - 0x01F407 07:F3F7: A5 2C     LDA ram_002C
- - - - - - 0x01F409 07:F3F9: 49 FF     EOR #$FF
- - - - - - 0x01F40B 07:F3FB: 18        CLC
- - - - - - 0x01F40C 07:F3FC: 69 01     ADC #$01
- - - - - - 0x01F40E 07:F3FE: 85 2C     STA ram_002C
- - - - - - 0x01F410 07:F400: A5 2D     LDA ram_002D
- - - - - - 0x01F412 07:F402: 49 FF     EOR #$FF
- - - - - - 0x01F414 07:F404: 69 00     ADC #$00
- - - - - - 0x01F416 07:F406: 85 2D     STA ram_002D
- - - - - - 0x01F418 07:F408: 60        RTS
- - - - - - 0x01F419 07:F409: A5 30     LDA ram_0030
- - - - - - 0x01F41B 07:F40B: 49 FF     EOR #$FF
- - - - - - 0x01F41D 07:F40D: 18        CLC
- - - - - - 0x01F41E 07:F40E: 69 01     ADC #$01
- - - - - - 0x01F420 07:F410: 85 30     STA ram_0030
- - - - - - 0x01F422 07:F412: A5 31     LDA ram_0031
- - - - - - 0x01F424 07:F414: 49 FF     EOR #$FF
- - - - - - 0x01F426 07:F416: 69 00     ADC #$00
- - - - - - 0x01F428 07:F418: 85 31     STA ram_0031
- - - - - - 0x01F42A 07:F41A: 60        RTS
- - - - - - 0x01F42B 07:F41B: A5 1C     LDA ram_001C
- - - - - - 0x01F42D 07:F41D: 49 FF     EOR #$FF
- - - - - - 0x01F42F 07:F41F: 18        CLC
- - - - - - 0x01F430 07:F420: 69 01     ADC #$01
- - - - - - 0x01F432 07:F422: 85 1C     STA ram_001C
- - - - - - 0x01F434 07:F424: A5 2C     LDA ram_002C
- - - - - - 0x01F436 07:F426: 49 FF     EOR #$FF
- - - - - - 0x01F438 07:F428: 69 00     ADC #$00
- - - - - - 0x01F43A 07:F42A: 85 2C     STA ram_002C
- - - - - - 0x01F43C 07:F42C: A5 2D     LDA ram_002D
- - - - - - 0x01F43E 07:F42E: 49 FF     EOR #$FF
- - - - - - 0x01F440 07:F430: 69 00     ADC #$00
- - - - - - 0x01F442 07:F432: 85 2D     STA ram_002D
- - - - - - 0x01F444 07:F434: 60        RTS
- - - - - - 0x01F445 07:F435: A5 1C     LDA ram_001C
- - - - - - 0x01F447 07:F437: 49 FF     EOR #$FF
- - - - - - 0x01F449 07:F439: 18        CLC
- - - - - - 0x01F44A 07:F43A: 69 01     ADC #$01
- - - - - - 0x01F44C 07:F43C: 85 1C     STA ram_001C
- - - - - - 0x01F44E 07:F43E: A5 1D     LDA ram_001D
- - - - - - 0x01F450 07:F440: 49 FF     EOR #$FF
- - - - - - 0x01F452 07:F442: 69 00     ADC #$00
- - - - - - 0x01F454 07:F444: 85 1D     STA ram_001D
- - - - - - 0x01F456 07:F446: A5 1E     LDA ram_001E
- - - - - - 0x01F458 07:F448: 49 FF     EOR #$FF
- - - - - - 0x01F45A 07:F44A: 69 00     ADC #$00
- - - - - - 0x01F45C 07:F44C: 85 1E     STA ram_001E
- - - - - - 0x01F45E 07:F44E: 60        RTS
- - - - - - 0x01F45F 07:F44F: A5 20     LDA ram_0020
- - - - - - 0x01F461 07:F451: 49 FF     EOR #$FF
- - - - - - 0x01F463 07:F453: 18        CLC
- - - - - - 0x01F464 07:F454: 69 01     ADC #$01
- - - - - - 0x01F466 07:F456: 85 20     STA ram_0020
- - - - - - 0x01F468 07:F458: A5 21     LDA ram_0021
- - - - - - 0x01F46A 07:F45A: 49 FF     EOR #$FF
- - - - - - 0x01F46C 07:F45C: 69 00     ADC #$00
- - - - - - 0x01F46E 07:F45E: 85 21     STA ram_0021
- - - - - - 0x01F470 07:F460: A5 22     LDA ram_0022
- - - - - - 0x01F472 07:F462: 49 FF     EOR #$FF
- - - - - - 0x01F474 07:F464: 69 00     ADC #$00
- - - - - - 0x01F476 07:F466: 85 22     STA ram_0022
- - - - - - 0x01F478 07:F468: 60        RTS



loc_F469:
C D 3 - - - 0x01F479 07:F469: 8A        TXA
C - - - - - 0x01F47A 07:F46A: 48        PHA
C - - - - - 0x01F47B 07:F46B: 98        TYA
C - - - - - 0x01F47C 07:F46C: 48        PHA
C - - - - - 0x01F47D 07:F46D: A9 00     LDA #$00
C - - - - - 0x01F47F 07:F46F: 85 31     STA ram_0031
C - - - - - 0x01F481 07:F471: 85 30     STA ram_0030
C - - - - - 0x01F483 07:F473: A5 2E     LDA ram_002E
C - - - - - 0x01F485 07:F475: 05 2F     ORA ram_002F
C - - - - - 0x01F487 07:F477: D0 06     BNE bra_F47F
- - - - - - 0x01F489 07:F479: 85 2C     STA ram_002C
- - - - - - 0x01F48B 07:F47B: 85 2D     STA ram_002D
- - - - - - 0x01F48D 07:F47D: F0 3D     BEQ bra_F4BC
bra_F47F:
C - - - - - 0x01F48F 07:F47F: A2 10     LDX #$10
C - - - - - 0x01F491 07:F481: 18        CLC
bra_F482:
C - - - - - 0x01F492 07:F482: 26 2C     ROL ram_002C
C - - - - - 0x01F494 07:F484: 26 2D     ROL ram_002D
C - - - - - 0x01F496 07:F486: CA        DEX
C - - - - - 0x01F497 07:F487: F0 33     BEQ bra_F4BC
C - - - - - 0x01F499 07:F489: 90 F7     BCC bra_F482
C - - - - - 0x01F49B 07:F48B: A5 2C     LDA ram_002C
C - - - - - 0x01F49D 07:F48D: 09 01     ORA #$01
C - - - - - 0x01F49F 07:F48F: 85 2C     STA ram_002C
C - - - - - 0x01F4A1 07:F491: E8        INX
C - - - - - 0x01F4A2 07:F492: 86 1C     STX ram_001C
C - - - - - 0x01F4A4 07:F494: B0 05     BCS bra_F49B
bra_F496:
C - - - - - 0x01F4A6 07:F496: 38        SEC
C - - - - - 0x01F4A7 07:F497: 26 2C     ROL ram_002C
C - - - - - 0x01F4A9 07:F499: 26 2D     ROL ram_002D
bra_F49B:
C - - - - - 0x01F4AB 07:F49B: 26 30     ROL ram_0030
C - - - - - 0x01F4AD 07:F49D: 26 31     ROL ram_0031
C - - - - - 0x01F4AF 07:F49F: A6 30     LDX ram_0030
C - - - - - 0x01F4B1 07:F4A1: A4 31     LDY ram_0031
C - - - - - 0x01F4B3 07:F4A3: A5 30     LDA ram_0030
C - - - - - 0x01F4B5 07:F4A5: 38        SEC
C - - - - - 0x01F4B6 07:F4A6: E5 2E     SBC ram_002E
C - - - - - 0x01F4B8 07:F4A8: 85 30     STA ram_0030
C - - - - - 0x01F4BA 07:F4AA: A5 31     LDA ram_0031
C - - - - - 0x01F4BC 07:F4AC: E5 2F     SBC ram_002F
C - - - - - 0x01F4BE 07:F4AE: 85 31     STA ram_0031
C - - - - - 0x01F4C0 07:F4B0: B0 06     BCS bra_F4B8
C - - - - - 0x01F4C2 07:F4B2: 86 30     STX ram_0030
C - - - - - 0x01F4C4 07:F4B4: 84 31     STY ram_0031
C - - - - - 0x01F4C6 07:F4B6: C6 2C     DEC ram_002C
bra_F4B8:
C - - - - - 0x01F4C8 07:F4B8: C6 1C     DEC ram_001C
C - - - - - 0x01F4CA 07:F4BA: D0 DA     BNE bra_F496
bra_F4BC:
C - - - - - 0x01F4CC 07:F4BC: 68        PLA
C - - - - - 0x01F4CD 07:F4BD: A8        TAY
C - - - - - 0x01F4CE 07:F4BE: 68        PLA
C - - - - - 0x01F4CF 07:F4BF: AA        TAX
C - - - - - 0x01F4D0 07:F4C0: 60        RTS



loc_F4C1:
sub_F4C1:
.export sub_0x01F4D1
sub_0x01F4D1:
C D 3 - - - 0x01F4D1 07:F4C1: 8A        TXA
C - - - - - 0x01F4D2 07:F4C2: 48        PHA
C - - - - - 0x01F4D3 07:F4C3: 98        TYA
C - - - - - 0x01F4D4 07:F4C4: 48        PHA
C - - - - - 0x01F4D5 07:F4C5: A9 00     LDA #$00
C - - - - - 0x01F4D7 07:F4C7: 85 1F     STA ram_001F
C - - - - - 0x01F4D9 07:F4C9: 85 20     STA ram_0020
C - - - - - 0x01F4DB 07:F4CB: 85 21     STA ram_0021
C - - - - - 0x01F4DD 07:F4CD: A5 2C     LDA ram_002C
C - - - - - 0x01F4DF 07:F4CF: 05 2D     ORA ram_002D
C - - - - - 0x01F4E1 07:F4D1: D0 08     BNE bra_F4DB
C - - - - - 0x01F4E3 07:F4D3: 85 1C     STA ram_001C
C - - - - - 0x01F4E5 07:F4D5: 85 1D     STA ram_001D
C - - - - - 0x01F4E7 07:F4D7: 85 1E     STA ram_001E
C - - - - - 0x01F4E9 07:F4D9: F0 59     BEQ bra_F534
bra_F4DB:
C - - - - - 0x01F4EB 07:F4DB: A2 18     LDX #$18
C - - - - - 0x01F4ED 07:F4DD: 18        CLC
bra_F4DE:
C - - - - - 0x01F4EE 07:F4DE: 26 1C     ROL ram_001C
C - - - - - 0x01F4F0 07:F4E0: 26 1D     ROL ram_001D
C - - - - - 0x01F4F2 07:F4E2: 26 1E     ROL ram_001E
C - - - - - 0x01F4F4 07:F4E4: CA        DEX
C - - - - - 0x01F4F5 07:F4E5: F0 4D     BEQ bra_F534
C - - - - - 0x01F4F7 07:F4E7: 90 F5     BCC bra_F4DE
C - - - - - 0x01F4F9 07:F4E9: A5 1C     LDA ram_001C
C - - - - - 0x01F4FB 07:F4EB: 09 01     ORA #$01
C - - - - - 0x01F4FD 07:F4ED: 85 1C     STA ram_001C
C - - - - - 0x01F4FF 07:F4EF: E8        INX
C - - - - - 0x01F500 07:F4F0: 86 2B     STX ram_002B
C - - - - - 0x01F502 07:F4F2: B0 07     BCS bra_F4FB
bra_F4F4:
C - - - - - 0x01F504 07:F4F4: 38        SEC
C - - - - - 0x01F505 07:F4F5: 26 1C     ROL ram_001C
C - - - - - 0x01F507 07:F4F7: 26 1D     ROL ram_001D
C - - - - - 0x01F509 07:F4F9: 26 1E     ROL ram_001E
bra_F4FB:
C - - - - - 0x01F50B 07:F4FB: 26 1F     ROL ram_001F
C - - - - - 0x01F50D 07:F4FD: 26 20     ROL ram_0020
C - - - - - 0x01F50F 07:F4FF: 26 21     ROL ram_0021
C - - - - - 0x01F511 07:F501: A5 1F     LDA ram_001F
C - - - - - 0x01F513 07:F503: 85 22     STA ram_0022
C - - - - - 0x01F515 07:F505: A5 20     LDA ram_0020
C - - - - - 0x01F517 07:F507: 85 23     STA ram_0023
C - - - - - 0x01F519 07:F509: A5 21     LDA ram_0021
C - - - - - 0x01F51B 07:F50B: 85 24     STA ram_0024
C - - - - - 0x01F51D 07:F50D: A5 1F     LDA ram_001F
C - - - - - 0x01F51F 07:F50F: 38        SEC
C - - - - - 0x01F520 07:F510: E5 2C     SBC ram_002C
C - - - - - 0x01F522 07:F512: 85 1F     STA ram_001F
C - - - - - 0x01F524 07:F514: A5 20     LDA ram_0020
C - - - - - 0x01F526 07:F516: E5 2D     SBC ram_002D
C - - - - - 0x01F528 07:F518: 85 20     STA ram_0020
C - - - - - 0x01F52A 07:F51A: A5 21     LDA ram_0021
C - - - - - 0x01F52C 07:F51C: E9 00     SBC #$00
C - - - - - 0x01F52E 07:F51E: 85 21     STA ram_0021
C - - - - - 0x01F530 07:F520: B0 0E     BCS bra_F530
C - - - - - 0x01F532 07:F522: A5 22     LDA ram_0022
C - - - - - 0x01F534 07:F524: 85 1F     STA ram_001F
C - - - - - 0x01F536 07:F526: A5 23     LDA ram_0023
C - - - - - 0x01F538 07:F528: 85 20     STA ram_0020
C - - - - - 0x01F53A 07:F52A: A5 24     LDA ram_0024
C - - - - - 0x01F53C 07:F52C: 85 21     STA ram_0021
C - - - - - 0x01F53E 07:F52E: C6 1C     DEC ram_001C
bra_F530:
C - - - - - 0x01F540 07:F530: C6 2B     DEC ram_002B
C - - - - - 0x01F542 07:F532: D0 C0     BNE bra_F4F4
bra_F534:
C - - - - - 0x01F544 07:F534: 68        PLA
C - - - - - 0x01F545 07:F535: A8        TAY
C - - - - - 0x01F546 07:F536: 68        PLA
C - - - - - 0x01F547 07:F537: AA        TAX
C - - - - - 0x01F548 07:F538: 60        RTS



loc_F539:
- - - - - - 0x01F549 07:F539: 48        PHA
- - - - - - 0x01F54A 07:F53A: 8A        TXA
- - - - - - 0x01F54B 07:F53B: 48        PHA
- - - - - - 0x01F54C 07:F53C: A5 1D     LDA ram_001D
- - - - - - 0x01F54E 07:F53E: 48        PHA
- - - - - - 0x01F54F 07:F53F: A9 00     LDA #$00
- - - - - - 0x01F551 07:F541: 85 1D     STA ram_001D
- - - - - - 0x01F553 07:F543: A2 10     LDX #$10
- - - - - - 0x01F555 07:F545: 18        CLC
- - - - - - 0x01F556 07:F546: 26 2C     ROL ram_002C
- - - - - - 0x01F558 07:F548: 26 2D     ROL ram_002D
bra_F54A:
- - - - - - 0x01F55A 07:F54A: 26 1D     ROL ram_001D
- - - - - - 0x01F55C 07:F54C: A5 1D     LDA ram_001D
- - - - - - 0x01F55E 07:F54E: C5 1C     CMP ram_001C
- - - - - - 0x01F560 07:F550: 90 04     BCC bra_F556
- - - - - - 0x01F562 07:F552: E5 1C     SBC ram_001C
- - - - - - 0x01F564 07:F554: 85 1D     STA ram_001D
bra_F556:
- - - - - - 0x01F566 07:F556: 26 2C     ROL ram_002C
- - - - - - 0x01F568 07:F558: 26 2D     ROL ram_002D
- - - - - - 0x01F56A 07:F55A: CA        DEX
- - - - - - 0x01F56B 07:F55B: D0 ED     BNE bra_F54A
- - - - - - 0x01F56D 07:F55D: 68        PLA
- - - - - - 0x01F56E 07:F55E: 85 1D     STA ram_001D
- - - - - - 0x01F570 07:F560: 68        PLA
- - - - - - 0x01F571 07:F561: AA        TAX
- - - - - - 0x01F572 07:F562: 68        PLA
- - - - - - 0x01F573 07:F563: 60        RTS



loc_F564:
sub_F564:
C D 3 - - - 0x01F574 07:F564: 8A        TXA
C - - - - - 0x01F575 07:F565: 48        PHA
C - - - - - 0x01F576 07:F566: 98        TYA
C - - - - - 0x01F577 07:F567: 48        PHA
C - - - - - 0x01F578 07:F568: A9 00     LDA #$00
C - - - - - 0x01F57A 07:F56A: 85 30     STA ram_0030
C - - - - - 0x01F57C 07:F56C: 85 31     STA ram_0031
bra_F56E:
C - - - - - 0x01F57E 07:F56E: A5 2D     LDA ram_002D
C - - - - - 0x01F580 07:F570: 05 2C     ORA ram_002C
C - - - - - 0x01F582 07:F572: F0 21     BEQ bra_F595
C - - - - - 0x01F584 07:F574: 46 2D     LSR ram_002D
C - - - - - 0x01F586 07:F576: 66 2C     ROR ram_002C
C - - - - - 0x01F588 07:F578: 90 0F     BCC bra_F589
C - - - - - 0x01F58A 07:F57A: 18        CLC
C - - - - - 0x01F58B 07:F57B: A5 30     LDA ram_0030
C - - - - - 0x01F58D 07:F57D: 65 2E     ADC ram_002E
C - - - - - 0x01F58F 07:F57F: 85 30     STA ram_0030
C - - - - - 0x01F591 07:F581: A5 31     LDA ram_0031
C - - - - - 0x01F593 07:F583: 65 2F     ADC ram_002F
C - - - - - 0x01F595 07:F585: 85 31     STA ram_0031
C - - - - - 0x01F597 07:F587: B0 06     BCS bra_F58F
bra_F589:
C - - - - - 0x01F599 07:F589: 06 2E     ASL ram_002E
C - - - - - 0x01F59B 07:F58B: 26 2F     ROL ram_002F
C - - - - - 0x01F59D 07:F58D: 90 DF     BCC bra_F56E
bra_F58F:
C - - - - - 0x01F59F 07:F58F: 68        PLA
C - - - - - 0x01F5A0 07:F590: A8        TAY
C - - - - - 0x01F5A1 07:F591: 68        PLA
C - - - - - 0x01F5A2 07:F592: AA        TAX
C - - - - - 0x01F5A3 07:F593: 38        SEC
C - - - - - 0x01F5A4 07:F594: 60        RTS
bra_F595:
C - - - - - 0x01F5A5 07:F595: 68        PLA
C - - - - - 0x01F5A6 07:F596: A8        TAY
C - - - - - 0x01F5A7 07:F597: 68        PLA
C - - - - - 0x01F5A8 07:F598: AA        TAX
C - - - - - 0x01F5A9 07:F599: 18        CLC
C - - - - - 0x01F5AA 07:F59A: 60        RTS



loc_F59B:
C D 3 - - - 0x01F5AB 07:F59B: 8A        TXA
C - - - - - 0x01F5AC 07:F59C: 48        PHA
C - - - - - 0x01F5AD 07:F59D: 98        TYA
C - - - - - 0x01F5AE 07:F59E: 48        PHA
C - - - - - 0x01F5AF 07:F59F: A5 1C     LDA ram_001C
C - - - - - 0x01F5B1 07:F5A1: 85 23     STA ram_0023
C - - - - - 0x01F5B3 07:F5A3: A5 1D     LDA ram_001D
C - - - - - 0x01F5B5 07:F5A5: 85 24     STA ram_0024
C - - - - - 0x01F5B7 07:F5A7: A5 1E     LDA ram_001E
C - - - - - 0x01F5B9 07:F5A9: 85 25     STA ram_0025
C - - - - - 0x01F5BB 07:F5AB: A9 00     LDA #$00
C - - - - - 0x01F5BD 07:F5AD: 85 20     STA ram_0020
C - - - - - 0x01F5BF 07:F5AF: 85 21     STA ram_0021
C - - - - - 0x01F5C1 07:F5B1: 85 22     STA ram_0022
bra_F5B3:
C - - - - - 0x01F5C3 07:F5B3: A5 1F     LDA ram_001F
C - - - - - 0x01F5C5 07:F5B5: F0 27     BEQ bra_F5DE
C - - - - - 0x01F5C7 07:F5B7: 46 1F     LSR ram_001F
C - - - - - 0x01F5C9 07:F5B9: 90 15     BCC bra_F5D0
C - - - - - 0x01F5CB 07:F5BB: 18        CLC
C - - - - - 0x01F5CC 07:F5BC: A5 20     LDA ram_0020
C - - - - - 0x01F5CE 07:F5BE: 65 23     ADC ram_0023
C - - - - - 0x01F5D0 07:F5C0: 85 20     STA ram_0020
C - - - - - 0x01F5D2 07:F5C2: A5 21     LDA ram_0021
C - - - - - 0x01F5D4 07:F5C4: 65 24     ADC ram_0024
C - - - - - 0x01F5D6 07:F5C6: 85 21     STA ram_0021
C - - - - - 0x01F5D8 07:F5C8: A5 22     LDA ram_0022
C - - - - - 0x01F5DA 07:F5CA: 65 25     ADC ram_0025
C - - - - - 0x01F5DC 07:F5CC: 85 22     STA ram_0022
C - - - - - 0x01F5DE 07:F5CE: B0 08     BCS bra_F5D8
bra_F5D0:
C - - - - - 0x01F5E0 07:F5D0: 06 23     ASL ram_0023
C - - - - - 0x01F5E2 07:F5D2: 26 24     ROL ram_0024
C - - - - - 0x01F5E4 07:F5D4: 26 25     ROL ram_0025
C - - - - - 0x01F5E6 07:F5D6: 90 DB     BCC bra_F5B3
bra_F5D8:
C - - - - - 0x01F5E8 07:F5D8: 68        PLA
C - - - - - 0x01F5E9 07:F5D9: A8        TAY
C - - - - - 0x01F5EA 07:F5DA: 68        PLA
C - - - - - 0x01F5EB 07:F5DB: AA        TAX
C - - - - - 0x01F5EC 07:F5DC: 38        SEC
C - - - - - 0x01F5ED 07:F5DD: 60        RTS
bra_F5DE:
C - - - - - 0x01F5EE 07:F5DE: 68        PLA
C - - - - - 0x01F5EF 07:F5DF: A8        TAY
C - - - - - 0x01F5F0 07:F5E0: 68        PLA
C - - - - - 0x01F5F1 07:F5E1: AA        TAX
C - - - - - 0x01F5F2 07:F5E2: 18        CLC
C - - - - - 0x01F5F3 07:F5E3: 60        RTS



loc_F5E4:
sub_F5E4:
C - - - - - 0x01F5F4 07:F5E4: 8A        TXA
C - - - - - 0x01F5F5 07:F5E5: 48        PHA
C - - - - - 0x01F5F6 07:F5E6: 98        TYA
C - - - - - 0x01F5F7 07:F5E7: 48        PHA
C - - - - - 0x01F5F8 07:F5E8: A5 1C     LDA ram_001C
C - - - - - 0x01F5FA 07:F5EA: 85 23     STA ram_0023
C - - - - - 0x01F5FC 07:F5EC: A5 1D     LDA ram_001D
C - - - - - 0x01F5FE 07:F5EE: 85 24     STA ram_0024
C - - - - - 0x01F600 07:F5F0: A5 1E     LDA ram_001E
C - - - - - 0x01F602 07:F5F2: 85 25     STA ram_0025
C - - - - - 0x01F604 07:F5F4: A9 00     LDA #$00
C - - - - - 0x01F606 07:F5F6: 85 20     STA ram_0020
C - - - - - 0x01F608 07:F5F8: 85 21     STA ram_0021
C - - - - - 0x01F60A 07:F5FA: 85 22     STA ram_0022
bra_F5FC:
C - - - - - 0x01F60C 07:F5FC: A5 26     LDA ram_0026
C - - - - - 0x01F60E 07:F5FE: 05 27     ORA ram_0027
C - - - - - 0x01F610 07:F600: F0 29     BEQ bra_F62B
C - - - - - 0x01F612 07:F602: 46 27     LSR ram_0027
C - - - - - 0x01F614 07:F604: 66 26     ROR ram_0026
C - - - - - 0x01F616 07:F606: 90 15     BCC bra_F61D
C - - - - - 0x01F618 07:F608: 18        CLC
C - - - - - 0x01F619 07:F609: A5 20     LDA ram_0020
C - - - - - 0x01F61B 07:F60B: 65 23     ADC ram_0023
C - - - - - 0x01F61D 07:F60D: 85 20     STA ram_0020
C - - - - - 0x01F61F 07:F60F: A5 21     LDA ram_0021
C - - - - - 0x01F621 07:F611: 65 24     ADC ram_0024
C - - - - - 0x01F623 07:F613: 85 21     STA ram_0021
C - - - - - 0x01F625 07:F615: A5 22     LDA ram_0022
C - - - - - 0x01F627 07:F617: 65 25     ADC ram_0025
C - - - - - 0x01F629 07:F619: 85 22     STA ram_0022
C - - - - - 0x01F62B 07:F61B: B0 08     BCS bra_F625
bra_F61D:
C - - - - - 0x01F62D 07:F61D: 06 23     ASL ram_0023
C - - - - - 0x01F62F 07:F61F: 26 24     ROL ram_0024
C - - - - - 0x01F631 07:F621: 26 25     ROL ram_0025
C - - - - - 0x01F633 07:F623: 90 D7     BCC bra_F5FC
bra_F625:
- - - - - - 0x01F635 07:F625: 68        PLA
- - - - - - 0x01F636 07:F626: A8        TAY
- - - - - - 0x01F637 07:F627: 68        PLA
- - - - - - 0x01F638 07:F628: AA        TAX
- - - - - - 0x01F639 07:F629: 38        SEC
- - - - - - 0x01F63A 07:F62A: 60        RTS
bra_F62B:
C - - - - - 0x01F63B 07:F62B: 68        PLA
C - - - - - 0x01F63C 07:F62C: A8        TAY
C - - - - - 0x01F63D 07:F62D: 68        PLA
C - - - - - 0x01F63E 07:F62E: AA        TAX
C - - - - - 0x01F63F 07:F62F: 18        CLC
C - - - - - 0x01F640 07:F630: 60        RTS


; bzk garbage
- - - - - - 0x01F641 07:F631: 85 2C     STA ram_002C
- - - - - - 0x01F643 07:F633: 85 2E     STA ram_002E
- - - - - - 0x01F645 07:F635: A9 00     LDA #$00
- - - - - - 0x01F647 07:F637: 85 2D     STA ram_002D
- - - - - - 0x01F649 07:F639: 85 2F     STA ram_002F
- - - - - - 0x01F64B 07:F63B: 20 64 F5  JSR sub_F564
- - - - - - 0x01F64E 07:F63E: 60        RTS
- - - - - - 0x01F64F 07:F63F: A5 1C     LDA ram_001C
- - - - - - 0x01F651 07:F641: 48        PHA
- - - - - - 0x01F652 07:F642: A5 1D     LDA ram_001D
- - - - - - 0x01F654 07:F644: 48        PHA
- - - - - - 0x01F655 07:F645: 84 1D     STY ram_001D
- - - - - - 0x01F657 07:F647: 86 1C     STX ram_001C
- - - - - - 0x01F659 07:F649: A2 08     LDX #$08
- - - - - - 0x01F65B 07:F64B: A9 00     LDA #$00
- - - - - - 0x01F65D 07:F64D: 06 1C     ASL ram_001C
bra_F64F:
- - - - - - 0x01F65F 07:F64F: 2A        ROL
- - - - - - 0x01F660 07:F650: C5 1D     CMP ram_001D
- - - - - - 0x01F662 07:F652: 90 02     BCC bra_F656
- - - - - - 0x01F664 07:F654: E5 1D     SBC ram_001D
bra_F656:
- - - - - - 0x01F666 07:F656: 26 1C     ROL ram_001C
- - - - - - 0x01F668 07:F658: CA        DEX
- - - - - - 0x01F669 07:F659: D0 F4     BNE bra_F64F
- - - - - - 0x01F66B 07:F65B: AA        TAX
- - - - - - 0x01F66C 07:F65C: A4 1C     LDY ram_001C
- - - - - - 0x01F66E 07:F65E: 68        PLA
- - - - - - 0x01F66F 07:F65F: 85 1D     STA ram_001D
- - - - - - 0x01F671 07:F661: 68        PLA
- - - - - - 0x01F672 07:F662: 85 1C     STA ram_001C
- - - - - - 0x01F674 07:F664: 98        TYA
- - - - - - 0x01F675 07:F665: 60        RTS



loc_F666:
- - - - - - 0x01F676 07:F666: BD E8 03  LDA ram_игрок_spd_X_lo,X
- - - - - - 0x01F679 07:F669: 85 34     STA ram_0034
- - - - - - 0x01F67B 07:F66B: BD F6 03  LDA ram_игрок_spd_X_hi,X
- - - - - - 0x01F67E 07:F66E: 85 35     STA ram_0035
- - - - - - 0x01F680 07:F670: BD 04 04  LDA ram_игрок_spd_Y_lo,X
- - - - - - 0x01F683 07:F673: 85 36     STA ram_0036
- - - - - - 0x01F685 07:F675: BD 12 04  LDA ram_игрок_spd_Y_hi,X
- - - - - - 0x01F688 07:F678: 85 37     STA ram_0037
- - - - - - 0x01F68A 07:F67A: 4C B3 F6  JMP loc_F6B3



loc_F67D:
sub_F67D:
C D 3 - - - 0x01F68D 07:F67D: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x01F690 07:F680: 85 2E     STA ram_002E
C - - - - - 0x01F692 07:F682: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x01F695 07:F685: 85 2F     STA ram_002F
C - - - - - 0x01F697 07:F687: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x01F69A 07:F68A: 85 30     STA ram_0030
C - - - - - 0x01F69C 07:F68C: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x01F69F 07:F68F: 85 31     STA ram_0031
loc_F691:
.export sub_0x01F6A1
sub_0x01F6A1:
C D 3 - - - 0x01F6A1 07:F691: A9 00     LDA #$00
C - - - - - 0x01F6A3 07:F693: 85 1C     STA ram_001C
C - - - - - 0x01F6A5 07:F695: A5 2E     LDA ram_002E
C - - - - - 0x01F6A7 07:F697: 38        SEC
C - - - - - 0x01F6A8 07:F698: FD 14 03  SBC ram_игрок_X_lo,X
C - - - - - 0x01F6AB 07:F69B: 85 34     STA ram_0034
C - - - - - 0x01F6AD 07:F69D: A5 2F     LDA ram_002F
C - - - - - 0x01F6AF 07:F69F: FD 27 03  SBC ram_игрок_X_hi,X
C - - - - - 0x01F6B2 07:F6A2: 85 35     STA ram_0035
C - - - - - 0x01F6B4 07:F6A4: A5 30     LDA ram_0030
C - - - - - 0x01F6B6 07:F6A6: 38        SEC
C - - - - - 0x01F6B7 07:F6A7: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x01F6BA 07:F6AA: 85 36     STA ram_0036
C - - - - - 0x01F6BC 07:F6AC: A5 31     LDA ram_0031
C - - - - - 0x01F6BE 07:F6AE: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x01F6C1 07:F6B1: 85 37     STA ram_0037
loc_F6B3:
C - - - - - 0x01F6C3 07:F6B3: A5 2A     LDA ram_002A
C - - - - - 0x01F6C5 07:F6B5: 48        PHA
C - - - - - 0x01F6C6 07:F6B6: A5 2B     LDA ram_002B
C - - - - - 0x01F6C8 07:F6B8: 48        PHA
C - - - - - 0x01F6C9 07:F6B9: 98        TYA
C - - - - - 0x01F6CA 07:F6BA: 48        PHA
C - - - - - 0x01F6CB 07:F6BB: A0 02     LDY #$02
bra_F6BD:
C - - - - - 0x01F6CD 07:F6BD: B9 35 00  LDA a: ram_0035,Y
C - - - - - 0x01F6D0 07:F6C0: 10 1B     BPL bra_F6DD
C - - - - - 0x01F6D2 07:F6C2: 49 FF     EOR #$FF
C - - - - - 0x01F6D4 07:F6C4: 99 39 00  STA a: ram_0039,Y
C - - - - - 0x01F6D7 07:F6C7: B9 34 00  LDA a: ram_0034,Y
C - - - - - 0x01F6DA 07:F6CA: 49 FF     EOR #$FF
C - - - - - 0x01F6DC 07:F6CC: 18        CLC
C - - - - - 0x01F6DD 07:F6CD: 69 01     ADC #$01
C - - - - - 0x01F6DF 07:F6CF: 99 38 00  STA a: ram_0038,Y
C - - - - - 0x01F6E2 07:F6D2: B9 39 00  LDA a: ram_0039,Y
C - - - - - 0x01F6E5 07:F6D5: 69 00     ADC #$00
C - - - - - 0x01F6E7 07:F6D7: 99 39 00  STA a: ram_0039,Y
C - - - - - 0x01F6EA 07:F6DA: 4C E6 F6  JMP loc_F6E6
bra_F6DD:
C - - - - - 0x01F6ED 07:F6DD: 99 39 00  STA a: ram_0039,Y
C - - - - - 0x01F6F0 07:F6E0: B9 34 00  LDA a: ram_0034,Y
C - - - - - 0x01F6F3 07:F6E3: 99 38 00  STA a: ram_0038,Y
loc_F6E6:
C D 3 - - - 0x01F6F6 07:F6E6: 88        DEY
C - - - - - 0x01F6F7 07:F6E7: 88        DEY
C - - - - - 0x01F6F8 07:F6E8: 10 D3     BPL bra_F6BD
C - - - - - 0x01F6FA 07:F6EA: 68        PLA
C - - - - - 0x01F6FB 07:F6EB: A8        TAY
C - - - - - 0x01F6FC 07:F6EC: A5 35     LDA ram_0035
C - - - - - 0x01F6FE 07:F6EE: 30 77     BMI bra_F767
C - - - - - 0x01F700 07:F6F0: A5 37     LDA ram_0037
C - - - - - 0x01F702 07:F6F2: 30 36     BMI bra_F72A
C - - - - - 0x01F704 07:F6F4: 20 F8 F7  JSR sub_F7F8
C - - - - - 0x01F707 07:F6F7: D0 19     BNE bra_F712
C - - - - - 0x01F709 07:F6F9: A9 B3     LDA #$B3
C - - - - - 0x01F70B 07:F6FB: 85 2E     STA ram_002E
C - - - - - 0x01F70D 07:F6FD: 85 30     STA ram_0030
C - - - - - 0x01F70F 07:F6FF: A9 00     LDA #$00
C - - - - - 0x01F711 07:F701: 85 2F     STA ram_002F
C - - - - - 0x01F713 07:F703: 85 31     STA ram_0031
C - - - - - 0x01F715 07:F705: A9 69     LDA #$69
C - - - - - 0x01F717 07:F707: 85 32     STA ram_0032
C - - - - - 0x01F719 07:F709: A9 01     LDA #$01
C - - - - - 0x01F71B 07:F70B: 85 33     STA ram_0033
C - - - - - 0x01F71D 07:F70D: A9 60     LDA #$60
C - - - - - 0x01F71F 07:F70F: 4C ED F7  JMP loc_F7ED
bra_F712:
C - - - - - 0x01F722 07:F712: B0 09     BCS bra_F71D
C - - - - - 0x01F724 07:F714: 20 13 F8  JSR sub_F813
C - - - - - 0x01F727 07:F717: 18        CLC
C - - - - - 0x01F728 07:F718: 69 40     ADC #$40
C - - - - - 0x01F72A 07:F71A: 4C ED F7  JMP loc_F7ED
bra_F71D:
C - - - - - 0x01F72D 07:F71D: 20 6B F8  JSR sub_F86B
C - - - - - 0x01F730 07:F720: 85 23     STA ram_0023
C - - - - - 0x01F732 07:F722: A9 80     LDA #$80
C - - - - - 0x01F734 07:F724: 38        SEC
C - - - - - 0x01F735 07:F725: E5 23     SBC ram_0023
C - - - - - 0x01F737 07:F727: 4C ED F7  JMP loc_F7ED
bra_F72A:
C - - - - - 0x01F73A 07:F72A: 20 F8 F7  JSR sub_F7F8
C - - - - - 0x01F73D 07:F72D: D0 1D     BNE bra_F74C
C - - - - - 0x01F73F 07:F72F: A9 B3     LDA #$B3
C - - - - - 0x01F741 07:F731: 85 2E     STA ram_002E
C - - - - - 0x01F743 07:F733: A9 00     LDA #$00
C - - - - - 0x01F745 07:F735: 85 2F     STA ram_002F
C - - - - - 0x01F747 07:F737: A9 4D     LDA #$4D
C - - - - - 0x01F749 07:F739: 85 30     STA ram_0030
C - - - - - 0x01F74B 07:F73B: A9 FF     LDA #$FF
C - - - - - 0x01F74D 07:F73D: 85 31     STA ram_0031
C - - - - - 0x01F74F 07:F73F: A5 69     LDA ram_0069
C - - - - - 0x01F751 07:F741: 85 32     STA ram_0032
C - - - - - 0x01F753 07:F743: A9 01     LDA #$01
C - - - - - 0x01F755 07:F745: 85 33     STA ram_0033
C - - - - - 0x01F757 07:F747: A9 20     LDA #$20
C - - - - - 0x01F759 07:F749: 4C ED F7  JMP loc_F7ED
bra_F74C:
C - - - - - 0x01F75C 07:F74C: B0 0E     BCS bra_F75C
C - - - - - 0x01F75E 07:F74E: 20 13 F8  JSR sub_F813
C - - - - - 0x01F761 07:F751: 20 D5 F8  JSR sub_F8D5
C - - - - - 0x01F764 07:F754: A9 40     LDA #$40
C - - - - - 0x01F766 07:F756: 38        SEC
C - - - - - 0x01F767 07:F757: E5 2A     SBC ram_002A
C - - - - - 0x01F769 07:F759: 4C ED F7  JMP loc_F7ED
bra_F75C:
C - - - - - 0x01F76C 07:F75C: 20 6B F8  JSR sub_F86B
C - - - - - 0x01F76F 07:F75F: 20 D5 F8  JSR sub_F8D5
C - - - - - 0x01F772 07:F762: A5 2A     LDA ram_002A
C - - - - - 0x01F774 07:F764: 4C ED F7  JMP loc_F7ED
bra_F767:
C - - - - - 0x01F777 07:F767: A5 37     LDA ram_0037
C - - - - - 0x01F779 07:F769: 30 40     BMI bra_F7AB
C - - - - - 0x01F77B 07:F76B: 20 F8 F7  JSR sub_F7F8
C - - - - - 0x01F77E 07:F76E: D0 1D     BNE bra_F78D
C - - - - - 0x01F780 07:F770: A9 B3     LDA #$B3
C - - - - - 0x01F782 07:F772: 85 30     STA ram_0030
C - - - - - 0x01F784 07:F774: A9 00     LDA #$00
C - - - - - 0x01F786 07:F776: 85 31     STA ram_0031
C - - - - - 0x01F788 07:F778: A9 4D     LDA #$4D
C - - - - - 0x01F78A 07:F77A: 85 2E     STA ram_002E
C - - - - - 0x01F78C 07:F77C: A9 FF     LDA #$FF
C - - - - - 0x01F78E 07:F77E: 85 2F     STA ram_002F
C - - - - - 0x01F790 07:F780: A9 69     LDA #$69
C - - - - - 0x01F792 07:F782: 85 32     STA ram_0032
C - - - - - 0x01F794 07:F784: A9 01     LDA #$01
C - - - - - 0x01F796 07:F786: 85 33     STA ram_0033
C - - - - - 0x01F798 07:F788: A9 A0     LDA #$A0
C - - - - - 0x01F79A 07:F78A: 4C ED F7  JMP loc_F7ED
bra_F78D:
C - - - - - 0x01F79D 07:F78D: B0 0E     BCS bra_F79D
C - - - - - 0x01F79F 07:F78F: 20 13 F8  JSR sub_F813
C - - - - - 0x01F7A2 07:F792: 20 C3 F8  JSR sub_F8C3
C - - - - - 0x01F7A5 07:F795: A9 C0     LDA #$C0
C - - - - - 0x01F7A7 07:F797: 38        SEC
C - - - - - 0x01F7A8 07:F798: E5 2A     SBC ram_002A
C - - - - - 0x01F7AA 07:F79A: 4C ED F7  JMP loc_F7ED
bra_F79D:
C - - - - - 0x01F7AD 07:F79D: 20 6B F8  JSR sub_F86B
C - - - - - 0x01F7B0 07:F7A0: 20 C3 F8  JSR sub_F8C3
C - - - - - 0x01F7B3 07:F7A3: A5 2A     LDA ram_002A
C - - - - - 0x01F7B5 07:F7A5: 18        CLC
C - - - - - 0x01F7B6 07:F7A6: 69 80     ADC #$80
C - - - - - 0x01F7B8 07:F7A8: 4C ED F7  JMP loc_F7ED
bra_F7AB:
C - - - - - 0x01F7BB 07:F7AB: 20 F8 F7  JSR sub_F7F8
C - - - - - 0x01F7BE 07:F7AE: D0 19     BNE bra_F7C9
C - - - - - 0x01F7C0 07:F7B0: A9 4D     LDA #$4D
C - - - - - 0x01F7C2 07:F7B2: 85 2E     STA ram_002E
C - - - - - 0x01F7C4 07:F7B4: 85 30     STA ram_0030
C - - - - - 0x01F7C6 07:F7B6: A9 FF     LDA #$FF
C - - - - - 0x01F7C8 07:F7B8: 85 2F     STA ram_002F
C - - - - - 0x01F7CA 07:F7BA: 85 31     STA ram_0031
C - - - - - 0x01F7CC 07:F7BC: A9 69     LDA #$69
C - - - - - 0x01F7CE 07:F7BE: 85 32     STA ram_0032
C - - - - - 0x01F7D0 07:F7C0: A9 01     LDA #$01
C - - - - - 0x01F7D2 07:F7C2: 85 33     STA ram_0033
C - - - - - 0x01F7D4 07:F7C4: A9 E0     LDA #$E0
C - - - - - 0x01F7D6 07:F7C6: 4C ED F7  JMP loc_F7ED
bra_F7C9:
C - - - - - 0x01F7D9 07:F7C9: B0 11     BCS bra_F7DC
C - - - - - 0x01F7DB 07:F7CB: 20 13 F8  JSR sub_F813
C - - - - - 0x01F7DE 07:F7CE: 20 C3 F8  JSR sub_F8C3
C - - - - - 0x01F7E1 07:F7D1: 20 D5 F8  JSR sub_F8D5
C - - - - - 0x01F7E4 07:F7D4: A5 2A     LDA ram_002A
C - - - - - 0x01F7E6 07:F7D6: 18        CLC
C - - - - - 0x01F7E7 07:F7D7: 69 C0     ADC #$C0
C - - - - - 0x01F7E9 07:F7D9: 4C ED F7  JMP loc_F7ED
bra_F7DC:
C - - - - - 0x01F7EC 07:F7DC: 20 6B F8  JSR sub_F86B
C - - - - - 0x01F7EF 07:F7DF: 20 C3 F8  JSR sub_F8C3
C - - - - - 0x01F7F2 07:F7E2: 20 D5 F8  JSR sub_F8D5
C - - - - - 0x01F7F5 07:F7E5: A9 00     LDA #$00
C - - - - - 0x01F7F7 07:F7E7: 38        SEC
C - - - - - 0x01F7F8 07:F7E8: E5 2A     SBC ram_002A
; bzk
C - - - - - 0x01F7FA 07:F7EA: 4C ED F7  JMP loc_F7ED
loc_F7ED:
C D 3 - - - 0x01F7FD 07:F7ED: 85 42     STA ram_0042
C - - - - - 0x01F7FF 07:F7EF: 68        PLA
C - - - - - 0x01F800 07:F7F0: 85 2B     STA ram_002B
C - - - - - 0x01F802 07:F7F2: 68        PLA
C - - - - - 0x01F803 07:F7F3: 85 2A     STA ram_002A
C - - - - - 0x01F805 07:F7F5: A5 42     LDA ram_0042
C - - - - - 0x01F807 07:F7F7: 60        RTS



sub_F7F8:
C - - - - - 0x01F808 07:F7F8: A5 39     LDA ram_0039
C - - - - - 0x01F80A 07:F7FA: C5 3B     CMP ram_003B
C - - - - - 0x01F80C 07:F7FC: 90 11     BCC bra_F80F
C - - - - - 0x01F80E 07:F7FE: D0 0B     BNE bra_F80B
C - - - - - 0x01F810 07:F800: A5 38     LDA ram_0038
C - - - - - 0x01F812 07:F802: C5 3A     CMP ram_003A
C - - - - - 0x01F814 07:F804: 90 09     BCC bra_F80F
C - - - - - 0x01F816 07:F806: D0 03     BNE bra_F80B
C - - - - - 0x01F818 07:F808: A9 00     LDA #$00
C - - - - - 0x01F81A 07:F80A: 60        RTS
bra_F80B:
C - - - - - 0x01F81B 07:F80B: A9 01     LDA #$01
C - - - - - 0x01F81D 07:F80D: 18        CLC
C - - - - - 0x01F81E 07:F80E: 60        RTS
bra_F80F:
C - - - - - 0x01F81F 07:F80F: A9 01     LDA #$01
C - - - - - 0x01F821 07:F811: 38        SEC
C - - - - - 0x01F822 07:F812: 60        RTS



sub_F813:
C - - - - - 0x01F823 07:F813: A5 3B     LDA ram_003B
C - - - - - 0x01F825 07:F815: 85 1E     STA ram_001E
C - - - - - 0x01F827 07:F817: A5 3A     LDA ram_003A
C - - - - - 0x01F829 07:F819: 85 1D     STA ram_001D
C - - - - - 0x01F82B 07:F81B: A5 39     LDA ram_0039
C - - - - - 0x01F82D 07:F81D: 85 2D     STA ram_002D
C - - - - - 0x01F82F 07:F81F: A5 38     LDA ram_0038
C - - - - - 0x01F831 07:F821: 85 2C     STA ram_002C
C - - - - - 0x01F833 07:F823: 20 C1 F4  JSR sub_F4C1
C - - - - - 0x01F836 07:F826: A5 1C     LDA ram_001C
C - - - - - 0x01F838 07:F828: 18        CLC
C - - - - - 0x01F839 07:F829: 69 03     ADC #$03
C - - - - - 0x01F83B 07:F82B: 90 02     BCC bra_F82F
C - - - - - 0x01F83D 07:F82D: A9 FF     LDA #$FF
bra_F82F:
C - - - - - 0x01F83F 07:F82F: 4A        LSR
C - - - - - 0x01F840 07:F830: 4A        LSR
C - - - - - 0x01F841 07:F831: 4A        LSR
C - - - - - 0x01F842 07:F832: 84 2B     STY ram_002B
C - - - - - 0x01F844 07:F834: A8        TAY
C - - - - - 0x01F845 07:F835: B9 E7 F8  LDA tbl_F8E7,Y
C - - - - - 0x01F848 07:F838: 85 2A     STA ram_002A
C - - - - - 0x01F84A 07:F83A: A9 00     LDA #$00
C - - - - - 0x01F84C 07:F83C: 85 2E     STA ram_002E
C - - - - - 0x01F84E 07:F83E: 85 2F     STA ram_002F
C - - - - - 0x01F850 07:F840: 85 30     STA ram_0030
C - - - - - 0x01F852 07:F842: 85 31     STA ram_0031
C - - - - - 0x01F854 07:F844: A9 01     LDA #$01
C - - - - - 0x01F856 07:F846: 85 33     STA ram_0033
C - - - - - 0x01F858 07:F848: A4 2A     LDY ram_002A
C - - - - - 0x01F85A 07:F84A: F0 12     BEQ bra_F85E
C - - - - - 0x01F85C 07:F84C: B9 07 F9  LDA tbl_F907,Y
C - - - - - 0x01F85F 07:F84F: 85 30     STA ram_0030
C - - - - - 0x01F861 07:F851: B9 28 F9  LDA tbl_F928,Y
C - - - - - 0x01F864 07:F854: 85 2E     STA ram_002E
C - - - - - 0x01F866 07:F856: B9 49 F9  LDA tbl_F949,Y
C - - - - - 0x01F869 07:F859: 85 32     STA ram_0032
C - - - - - 0x01F86B 07:F85B: 4C 66 F8  JMP loc_F866
bra_F85E:
C - - - - - 0x01F86E 07:F85E: A9 01     LDA #$01
C - - - - - 0x01F870 07:F860: 85 2F     STA ram_002F
C - - - - - 0x01F872 07:F862: A9 00     LDA #$00
C - - - - - 0x01F874 07:F864: 85 32     STA ram_0032
loc_F866:
C D 3 - - - 0x01F876 07:F866: A4 2B     LDY ram_002B
C - - - - - 0x01F878 07:F868: A5 2A     LDA ram_002A
C - - - - - 0x01F87A 07:F86A: 60        RTS



sub_F86B:
C - - - - - 0x01F87B 07:F86B: A5 39     LDA ram_0039
C - - - - - 0x01F87D 07:F86D: 85 1E     STA ram_001E
C - - - - - 0x01F87F 07:F86F: A5 38     LDA ram_0038
C - - - - - 0x01F881 07:F871: 85 1D     STA ram_001D
C - - - - - 0x01F883 07:F873: A5 3B     LDA ram_003B
C - - - - - 0x01F885 07:F875: 85 2D     STA ram_002D
C - - - - - 0x01F887 07:F877: A5 3A     LDA ram_003A
C - - - - - 0x01F889 07:F879: 85 2C     STA ram_002C
C - - - - - 0x01F88B 07:F87B: 20 C1 F4  JSR sub_F4C1
C - - - - - 0x01F88E 07:F87E: A5 1C     LDA ram_001C
C - - - - - 0x01F890 07:F880: 18        CLC
C - - - - - 0x01F891 07:F881: 69 03     ADC #$03
C - - - - - 0x01F893 07:F883: 90 02     BCC bra_F887
C - - - - - 0x01F895 07:F885: A9 FF     LDA #$FF
bra_F887:
C - - - - - 0x01F897 07:F887: 4A        LSR
C - - - - - 0x01F898 07:F888: 4A        LSR
C - - - - - 0x01F899 07:F889: 4A        LSR
C - - - - - 0x01F89A 07:F88A: 84 2B     STY ram_002B
C - - - - - 0x01F89C 07:F88C: A8        TAY
C - - - - - 0x01F89D 07:F88D: B9 E7 F8  LDA tbl_F8E7,Y
C - - - - - 0x01F8A0 07:F890: 85 2A     STA ram_002A
C - - - - - 0x01F8A2 07:F892: A9 00     LDA #$00
C - - - - - 0x01F8A4 07:F894: 85 2E     STA ram_002E
C - - - - - 0x01F8A6 07:F896: 85 2F     STA ram_002F
C - - - - - 0x01F8A8 07:F898: 85 30     STA ram_0030
C - - - - - 0x01F8AA 07:F89A: 85 31     STA ram_0031
C - - - - - 0x01F8AC 07:F89C: A9 01     LDA #$01
C - - - - - 0x01F8AE 07:F89E: 85 33     STA ram_0033
C - - - - - 0x01F8B0 07:F8A0: A4 2A     LDY ram_002A
C - - - - - 0x01F8B2 07:F8A2: F0 12     BEQ bra_F8B6
C - - - - - 0x01F8B4 07:F8A4: B9 07 F9  LDA tbl_F907,Y
C - - - - - 0x01F8B7 07:F8A7: 85 2E     STA ram_002E
C - - - - - 0x01F8B9 07:F8A9: B9 28 F9  LDA tbl_F928,Y
C - - - - - 0x01F8BC 07:F8AC: 85 30     STA ram_0030
C - - - - - 0x01F8BE 07:F8AE: B9 49 F9  LDA tbl_F949,Y
C - - - - - 0x01F8C1 07:F8B1: 85 32     STA ram_0032
C - - - - - 0x01F8C3 07:F8B3: 4C BE F8  JMP loc_F8BE
bra_F8B6:
C - - - - - 0x01F8C6 07:F8B6: A9 01     LDA #$01
C - - - - - 0x01F8C8 07:F8B8: 85 31     STA ram_0031
C - - - - - 0x01F8CA 07:F8BA: A9 00     LDA #$00
C - - - - - 0x01F8CC 07:F8BC: 85 32     STA ram_0032
loc_F8BE:
C D 3 - - - 0x01F8CE 07:F8BE: A4 2B     LDY ram_002B
C - - - - - 0x01F8D0 07:F8C0: A5 2A     LDA ram_002A
C - - - - - 0x01F8D2 07:F8C2: 60        RTS



sub_F8C3:
C - - - - - 0x01F8D3 07:F8C3: A5 2E     LDA ram_002E
C - - - - - 0x01F8D5 07:F8C5: 49 FF     EOR #$FF
C - - - - - 0x01F8D7 07:F8C7: 18        CLC
C - - - - - 0x01F8D8 07:F8C8: 69 01     ADC #$01
C - - - - - 0x01F8DA 07:F8CA: 85 2E     STA ram_002E
C - - - - - 0x01F8DC 07:F8CC: A5 2F     LDA ram_002F
C - - - - - 0x01F8DE 07:F8CE: 49 FF     EOR #$FF
C - - - - - 0x01F8E0 07:F8D0: 69 00     ADC #$00
C - - - - - 0x01F8E2 07:F8D2: 85 2F     STA ram_002F
C - - - - - 0x01F8E4 07:F8D4: 60        RTS



sub_F8D5:
C - - - - - 0x01F8E5 07:F8D5: A5 30     LDA ram_0030
C - - - - - 0x01F8E7 07:F8D7: 49 FF     EOR #$FF
C - - - - - 0x01F8E9 07:F8D9: 18        CLC
C - - - - - 0x01F8EA 07:F8DA: 69 01     ADC #$01
C - - - - - 0x01F8EC 07:F8DC: 85 30     STA ram_0030
C - - - - - 0x01F8EE 07:F8DE: A5 31     LDA ram_0031
C - - - - - 0x01F8F0 07:F8E0: 49 FF     EOR #$FF
C - - - - - 0x01F8F2 07:F8E2: 69 00     ADC #$00
C - - - - - 0x01F8F4 07:F8E4: 85 31     STA ram_0031
C - - - - - 0x01F8F6 07:F8E6: 60        RTS



tbl_F8E7:
- D 3 - - - 0x01F8F7 07:F8E7: 00        .byte $00   ; 
- D 3 - - - 0x01F8F8 07:F8E8: 01        .byte $01   ; 
- D 3 - - - 0x01F8F9 07:F8E9: 02        .byte $02   ; 
- D 3 - - - 0x01F8FA 07:F8EA: 04        .byte $04   ; 
- D 3 - - - 0x01F8FB 07:F8EB: 05        .byte $05   ; 
- D 3 - - - 0x01F8FC 07:F8EC: 06        .byte $06   ; 
- D 3 - - - 0x01F8FD 07:F8ED: 08        .byte $08   ; 
- D 3 - - - 0x01F8FE 07:F8EE: 09        .byte $09   ; 
- D 3 - - - 0x01F8FF 07:F8EF: 0A        .byte $0A   ; 
- D 3 - - - 0x01F900 07:F8F0: 0B        .byte $0B   ; 
- D 3 - - - 0x01F901 07:F8F1: 0C        .byte $0C   ; 
- D 3 - - - 0x01F902 07:F8F2: 0D        .byte $0D   ; 
- D 3 - - - 0x01F903 07:F8F3: 0E        .byte $0E   ; 
- D 3 - - - 0x01F904 07:F8F4: 10        .byte $10   ; 
- D 3 - - - 0x01F905 07:F8F5: 11        .byte $11   ; 
- D 3 - - - 0x01F906 07:F8F6: 12        .byte $12   ; 
- D 3 - - - 0x01F907 07:F8F7: 13        .byte $13   ; 
- D 3 - - - 0x01F908 07:F8F8: 14        .byte $14   ; 
- D 3 - - - 0x01F909 07:F8F9: 15        .byte $15   ; 
- D 3 - - - 0x01F90A 07:F8FA: 16        .byte $16   ; 
- D 3 - - - 0x01F90B 07:F8FB: 17        .byte $17   ; 
- D 3 - - - 0x01F90C 07:F8FC: 18        .byte $18   ; 
- D 3 - - - 0x01F90D 07:F8FD: 19        .byte $19   ; 
- D 3 - - - 0x01F90E 07:F8FE: 1A        .byte $1A   ; 
- D 3 - - - 0x01F90F 07:F8FF: 1B        .byte $1B   ; 
- D 3 - - - 0x01F910 07:F900: 1C        .byte $1C   ; 
- D 3 - - - 0x01F911 07:F901: 1C        .byte $1C   ; 
- D 3 - - - 0x01F912 07:F902: 1D        .byte $1D   ; 
- D 3 - - - 0x01F913 07:F903: 1E        .byte $1E   ; 
- D 3 - - - 0x01F914 07:F904: 1F        .byte $1F   ; 
- D 3 - - - 0x01F915 07:F905: 1F        .byte $1F   ; 
- D 3 - - - 0x01F916 07:F906: 20        .byte $20   ; 



tbl_F907:
- - - - - - 0x01F917 07:F907: 00        .byte $00   ; 
- D 3 - - - 0x01F918 07:F908: 07        .byte $07   ; 
- D 3 - - - 0x01F919 07:F909: 0F        .byte $0F   ; 
- - - - - - 0x01F91A 07:F90A: 14        .byte $14   ; 
- D 3 - - - 0x01F91B 07:F90B: 19        .byte $19   ; 
- D 3 - - - 0x01F91C 07:F90C: 21        .byte $21   ; 
- D 3 - - - 0x01F91D 07:F90D: 26        .byte $26   ; 
- - - - - - 0x01F91E 07:F90E: 30        .byte $30   ; 
- D 3 - - - 0x01F91F 07:F90F: 33        .byte $33   ; 
- D 3 - - - 0x01F920 07:F910: 38        .byte $38   ; 
- D 3 - - - 0x01F921 07:F911: 40        .byte $40   ; 
- D 3 - - - 0x01F922 07:F912: 45        .byte $45   ; 
- D 3 - - - 0x01F923 07:F913: 4C        .byte $4C   ; 
- D 3 - - - 0x01F924 07:F914: 51        .byte $51   ; 
- D 3 - - - 0x01F925 07:F915: 57        .byte $57   ; 
- - - - - - 0x01F926 07:F916: 5E        .byte $5E   ; 
- D 3 - - - 0x01F927 07:F917: 63        .byte $63   ; 
- D 3 - - - 0x01F928 07:F918: 6B        .byte $6B   ; 
- D 3 - - - 0x01F929 07:F919: 6E        .byte $6E   ; 
- D 3 - - - 0x01F92A 07:F91A: 73        .byte $73   ; 
- D 3 - - - 0x01F92B 07:F91B: 7A        .byte $7A   ; 
- D 3 - - - 0x01F92C 07:F91C: 80        .byte $80   ; 
- D 3 - - - 0x01F92D 07:F91D: 85        .byte $85   ; 
- D 3 - - - 0x01F92E 07:F91E: 8A        .byte $8A   ; 
- D 3 - - - 0x01F92F 07:F91F: 8C        .byte $8C   ; 
- D 3 - - - 0x01F930 07:F920: 94        .byte $94   ; 
- D 3 - - - 0x01F931 07:F921: 99        .byte $99   ; 
- D 3 - - - 0x01F932 07:F922: 9E        .byte $9E   ; 
- D 3 - - - 0x01F933 07:F923: A3        .byte $A3   ; 
- D 3 - - - 0x01F934 07:F924: A6        .byte $A6   ; 
- D 3 - - - 0x01F935 07:F925: AE        .byte $AE   ; 
- D 3 - - - 0x01F936 07:F926: B0        .byte $B0   ; 
- D 3 - - - 0x01F937 07:F927: B3        .byte $B3   ; 



tbl_F928:
- - - - - - 0x01F938 07:F928: FF        .byte $FF   ; 
- D 3 - - - 0x01F939 07:F929: FF        .byte $FF   ; 
- D 3 - - - 0x01F93A 07:F92A: FF        .byte $FF   ; 
- - - - - - 0x01F93B 07:F92B: FE        .byte $FE   ; 
- D 3 - - - 0x01F93C 07:F92C: FE        .byte $FE   ; 
- D 3 - - - 0x01F93D 07:F92D: FD        .byte $FD   ; 
- D 3 - - - 0x01F93E 07:F92E: FD        .byte $FD   ; 
- - - - - - 0x01F93F 07:F92F: FB        .byte $FB   ; 
- D 3 - - - 0x01F940 07:F930: FA        .byte $FA   ; 
- D 3 - - - 0x01F941 07:F931: F9        .byte $F9   ; 
- D 3 - - - 0x01F942 07:F932: F8        .byte $F8   ; 
- D 3 - - - 0x01F943 07:F933: F6        .byte $F6   ; 
- D 3 - - - 0x01F944 07:F934: F5        .byte $F5   ; 
- D 3 - - - 0x01F945 07:F935: F3        .byte $F3   ; 
- D 3 - - - 0x01F946 07:F936: F0        .byte $F0   ; 
- - - - - - 0x01F947 07:F937: EE        .byte $EE   ; 
- D 3 - - - 0x01F948 07:F938: EB        .byte $EB   ; 
- D 3 - - - 0x01F949 07:F939: E8        .byte $E8   ; 
- D 3 - - - 0x01F94A 07:F93A: E6        .byte $E6   ; 
- D 3 - - - 0x01F94B 07:F93B: E3        .byte $E3   ; 
- D 3 - - - 0x01F94C 07:F93C: E1        .byte $E1   ; 
- D 3 - - - 0x01F94D 07:F93D: DE        .byte $DE   ; 
- D 3 - - - 0x01F94E 07:F93E: DC        .byte $DC   ; 
- D 3 - - - 0x01F94F 07:F93F: D7        .byte $D7   ; 
- D 3 - - - 0x01F950 07:F940: D4        .byte $D4   ; 
- D 3 - - - 0x01F951 07:F941: CF        .byte $CF   ; 
- D 3 - - - 0x01F952 07:F942: CC        .byte $CC   ; 
- D 3 - - - 0x01F953 07:F943: CA        .byte $CA   ; 
- D 3 - - - 0x01F954 07:F944: C5        .byte $C5   ; 
- D 3 - - - 0x01F955 07:F945: C2        .byte $C2   ; 
- D 3 - - - 0x01F956 07:F946: BD        .byte $BD   ; 
- D 3 - - - 0x01F957 07:F947: B8        .byte $B8   ; 
- D 3 - - - 0x01F958 07:F948: B3        .byte $B3   ; 



tbl_F949:
- - - - - - 0x01F959 07:F949: 00        .byte $00   ; 
- D 3 - - - 0x01F95A 07:F94A: 00        .byte $00   ; 
- D 3 - - - 0x01F95B 07:F94B: 00        .byte $00   ; 
- - - - - - 0x01F95C 07:F94C: 00        .byte $00   ; 
- D 3 - - - 0x01F95D 07:F94D: 00        .byte $00   ; 
- D 3 - - - 0x01F95E 07:F94E: 01        .byte $01   ; 
- D 3 - - - 0x01F95F 07:F94F: 02        .byte $02   ; 
- - - - - - 0x01F960 07:F950: 03        .byte $03   ; 
- D 3 - - - 0x01F961 07:F951: 04        .byte $04   ; 
- D 3 - - - 0x01F962 07:F952: 05        .byte $05   ; 
- D 3 - - - 0x01F963 07:F953: 07        .byte $07   ; 
- D 3 - - - 0x01F964 07:F954: 08        .byte $08   ; 
- D 3 - - - 0x01F965 07:F955: 0A        .byte $0A   ; 
- D 3 - - - 0x01F966 07:F956: 0F        .byte $0F   ; 
- D 3 - - - 0x01F967 07:F957: 10        .byte $10   ; 
- - - - - - 0x01F968 07:F958: 14        .byte $14   ; 
- D 3 - - - 0x01F969 07:F959: 15        .byte $15   ; 
- D 3 - - - 0x01F96A 07:F95A: 18        .byte $18   ; 
- D 3 - - - 0x01F96B 07:F95B: 1A        .byte $1A   ; 
- D 3 - - - 0x01F96C 07:F95C: 1C        .byte $1C   ; 
- D 3 - - - 0x01F96D 07:F95D: 21        .byte $21   ; 
- D 3 - - - 0x01F96E 07:F95E: 24        .byte $24   ; 
- D 3 - - - 0x01F96F 07:F95F: 26        .byte $26   ; 
- D 3 - - - 0x01F970 07:F960: 2D        .byte $2D   ; 
- D 3 - - - 0x01F971 07:F961: 31        .byte $31   ; 
- D 3 - - - 0x01F972 07:F962: 38        .byte $38   ; 
- D 3 - - - 0x01F973 07:F963: 3C        .byte $3C   ; 
- D 3 - - - 0x01F974 07:F964: 40        .byte $40   ; 
- D 3 - - - 0x01F975 07:F965: 49        .byte $49   ; 
- D 3 - - - 0x01F976 07:F966: 4D        .byte $4D   ; 
- D 3 - - - 0x01F977 07:F967: 58        .byte $58   ; 
- D 3 - - - 0x01F978 07:F968: 63        .byte $63   ; 
- D 3 - - - 0x01F979 07:F969: 69        .byte $69   ; 



loc_F96A:
.export sub_0x01F97A
sub_0x01F97A:
C - - - - - 0x01F97A 07:F96A: A9 FF     LDA #$FF
C - - - - - 0x01F97C 07:F96C: 85 3C     STA ram_003C
C - - - - - 0x01F97E 07:F96E: 85 3E     STA ram_003E
C - - - - - 0x01F980 07:F970: A9 7F     LDA #$7F
C - - - - - 0x01F982 07:F972: 85 3D     STA ram_003D
loc_F974:
C D 3 - - - 0x01F984 07:F974: CC D6 04  CPY ram_игрок_с_мячом
C - - - - - 0x01F987 07:F977: D0 03     BNE bra_F97C
C - - - - - 0x01F989 07:F979: 4C CD F9  JMP loc_F9CD
bra_F97C:
C - - - - - 0x01F98C 07:F97C: 20 7D F6  JSR sub_F67D
C - - - - - 0x01F98F 07:F97F: 38        SEC
C - - - - - 0x01F990 07:F980: E5 2A     SBC ram_002A
C - - - - - 0x01F992 07:F982: 10 05     BPL bra_F989
C - - - - - 0x01F994 07:F984: 49 FF     EOR #$FF
C - - - - - 0x01F996 07:F986: 18        CLC
C - - - - - 0x01F997 07:F987: 69 01     ADC #$01
bra_F989:
C - - - - - 0x01F999 07:F989: C5 2B     CMP ram_002B
C - - - - - 0x01F99B 07:F98B: F0 05     BEQ bra_F992
C - - - - - 0x01F99D 07:F98D: 90 03     BCC bra_F992
C - - - - - 0x01F99F 07:F98F: 4C CD F9  JMP loc_F9CD
bra_F992:
C - - - - - 0x01F9A2 07:F992: 20 F8 F7  JSR sub_F7F8
C - - - - - 0x01F9A5 07:F995: F0 0A     BEQ bra_F9A1
C - - - - - 0x01F9A7 07:F997: 90 08     BCC bra_F9A1
C - - - - - 0x01F9A9 07:F999: A5 3A     LDA ram_003A
C - - - - - 0x01F9AB 07:F99B: 85 38     STA ram_0038
C - - - - - 0x01F9AD 07:F99D: A5 3B     LDA ram_003B
C - - - - - 0x01F9AF 07:F99F: 85 39     STA ram_0039
bra_F9A1:
C - - - - - 0x01F9B1 07:F9A1: A5 38     LDA ram_0038
C - - - - - 0x01F9B3 07:F9A3: 85 1C     STA ram_001C
C - - - - - 0x01F9B5 07:F9A5: A5 39     LDA ram_0039
C - - - - - 0x01F9B7 07:F9A7: 85 1D     STA ram_001D
C - - - - - 0x01F9B9 07:F9A9: A9 00     LDA #$00
C - - - - - 0x01F9BB 07:F9AB: 85 1E     STA ram_001E
C - - - - - 0x01F9BD 07:F9AD: A5 32     LDA ram_0032
C - - - - - 0x01F9BF 07:F9AF: 85 26     STA ram_0026
C - - - - - 0x01F9C1 07:F9B1: A5 33     LDA ram_0033
C - - - - - 0x01F9C3 07:F9B3: 85 27     STA ram_0027
C - - - - - 0x01F9C5 07:F9B5: 20 E4 F5  JSR sub_F5E4
C - - - - - 0x01F9C8 07:F9B8: A5 3C     LDA ram_003C
C - - - - - 0x01F9CA 07:F9BA: 38        SEC
C - - - - - 0x01F9CB 07:F9BB: E5 21     SBC ram_0021
C - - - - - 0x01F9CD 07:F9BD: A5 3D     LDA ram_003D
C - - - - - 0x01F9CF 07:F9BF: E5 22     SBC ram_0022
C - - - - - 0x01F9D1 07:F9C1: 30 0A     BMI bra_F9CD
C - - - - - 0x01F9D3 07:F9C3: A5 21     LDA ram_0021
C - - - - - 0x01F9D5 07:F9C5: 85 3C     STA ram_003C
C - - - - - 0x01F9D7 07:F9C7: A5 22     LDA ram_0022
C - - - - - 0x01F9D9 07:F9C9: 85 3D     STA ram_003D
C - - - - - 0x01F9DB 07:F9CB: 84 3E     STY ram_003E
bra_F9CD:
loc_F9CD:
C D 3 - - - 0x01F9DD 07:F9CD: 98        TYA
C - - - - - 0x01F9DE 07:F9CE: 18        CLC
C - - - - - 0x01F9DF 07:F9CF: 65 29     ADC ram_0029
C - - - - - 0x01F9E1 07:F9D1: C5 28     CMP ram_0028
C - - - - - 0x01F9E3 07:F9D3: F0 05     BEQ bra_F9DA
C - - - - - 0x01F9E5 07:F9D5: 90 03     BCC bra_F9DA
C - - - - - 0x01F9E7 07:F9D7: A4 3E     LDY ram_003E
C - - - - - 0x01F9E9 07:F9D9: 60        RTS
bra_F9DA:
C - - - - - 0x01F9EA 07:F9DA: A8        TAY
C - - - - - 0x01F9EB 07:F9DB: 4C 74 F9  JMP loc_F974



loc_F9DE:
C D 3 - - - 0x01F9EE 07:F9DE: 8A        TXA
C - - - - - 0x01F9EF 07:F9DF: 48        PHA
C - - - - - 0x01F9F0 07:F9E0: 98        TYA
C - - - - - 0x01F9F1 07:F9E1: 48        PHA
C - - - - - 0x01F9F2 07:F9E2: A5 27     LDA ram_0027
C - - - - - 0x01F9F4 07:F9E4: 0A        ASL
C - - - - - 0x01F9F5 07:F9E5: A8        TAY
C - - - - - 0x01F9F6 07:F9E6: 88        DEY
C - - - - - 0x01F9F7 07:F9E7: A9 FF     LDA #$FF
bra_F9E9:
C - - - - - 0x01F9F9 07:F9E9: 99 2C 00  STA a: ram_002C,Y
C - - - - - 0x01F9FC 07:F9EC: 88        DEY
C - - - - - 0x01F9FD 07:F9ED: 10 FA     BPL bra_F9E9
C - - - - - 0x01F9FF 07:F9EF: A6 22     LDX ram_0022
C - - - - - 0x01FA01 07:F9F1: A4 23     LDY ram_0023
loc_F9F3:
C D 3 - - - 0x01FA03 07:F9F3: 20 6D FA  JSR sub_FA6D
C - - - - - 0x01FA06 07:F9F6: 84 2A     STY ram_002A
C - - - - - 0x01FA08 07:F9F8: A5 27     LDA ram_0027
C - - - - - 0x01FA0A 07:F9FA: 0A        ASL
C - - - - - 0x01FA0B 07:F9FB: A8        TAY
C - - - - - 0x01FA0C 07:F9FC: 88        DEY
C - - - - - 0x01FA0D 07:F9FD: 88        DEY
bra_F9FE:
C - - - - - 0x01FA0E 07:F9FE: A5 24     LDA ram_0024
C - - - - - 0x01FA10 07:FA00: D9 2D 00  CMP a: ram_002D,Y
C - - - - - 0x01FA13 07:FA03: F0 05     BEQ bra_FA0A
C - - - - - 0x01FA15 07:FA05: 90 03     BCC bra_FA0A
C - - - - - 0x01FA17 07:FA07: 4C 24 FA  JMP loc_FA24
bra_FA0A:
C - - - - - 0x01FA1A 07:FA0A: B9 2C 00  LDA a: ram_002C,Y
C - - - - - 0x01FA1D 07:FA0D: 99 2E 00  STA a: ram_002E,Y
C - - - - - 0x01FA20 07:FA10: B9 2D 00  LDA a: ram_002D,Y
C - - - - - 0x01FA23 07:FA13: 99 2F 00  STA a: ram_002F,Y
C - - - - - 0x01FA26 07:FA16: A5 24     LDA ram_0024
C - - - - - 0x01FA28 07:FA18: 99 2D 00  STA a: ram_002D,Y
C - - - - - 0x01FA2B 07:FA1B: A5 2A     LDA ram_002A
C - - - - - 0x01FA2D 07:FA1D: 99 2C 00  STA a: ram_002C,Y
C - - - - - 0x01FA30 07:FA20: 88        DEY
C - - - - - 0x01FA31 07:FA21: 88        DEY
C - - - - - 0x01FA32 07:FA22: 10 DA     BPL bra_F9FE
loc_FA24:
C D 3 - - - 0x01FA34 07:FA24: A5 2A     LDA ram_002A
C - - - - - 0x01FA36 07:FA26: 18        CLC
C - - - - - 0x01FA37 07:FA27: 65 29     ADC ram_0029
C - - - - - 0x01FA39 07:FA29: A8        TAY
C - - - - - 0x01FA3A 07:FA2A: C4 28     CPY ram_0028
C - - - - - 0x01FA3C 07:FA2C: 90 05     BCC bra_FA33
C - - - - - 0x01FA3E 07:FA2E: F0 03     BEQ bra_FA33
C - - - - - 0x01FA40 07:FA30: 4C 36 FA  JMP loc_FA36
bra_FA33:
C - - - - - 0x01FA43 07:FA33: 4C F3 F9  JMP loc_F9F3
loc_FA36:
C D 3 - - - 0x01FA46 07:FA36: A4 2C     LDY ram_002C
C - - - - - 0x01FA48 07:FA38: B9 86 04  LDA ram_игрок_состояние,Y
C - - - - - 0x01FA4B 07:FA3B: 29 01     AND #$01
C - - - - - 0x01FA4D 07:FA3D: F0 29     BEQ bra_FA68
C - - - - - 0x01FA4F 07:FA3F: A6 2E     LDX ram_002E
C - - - - - 0x01FA51 07:FA41: B9 86 03  LDA ram_игрок_Z_lo,Y
C - - - - - 0x01FA54 07:FA44: 38        SEC
C - - - - - 0x01FA55 07:FA45: FD 86 03  SBC ram_игрок_Z_lo,X
C - - - - - 0x01FA58 07:FA48: B9 99 03  LDA ram_игрок_Z_hi,Y
C - - - - - 0x01FA5B 07:FA4B: FD 99 03  SBC ram_игрок_Z_hi,X
C - - - - - 0x01FA5E 07:FA4E: 10 18     BPL bra_FA68
C - - - - - 0x01FA60 07:FA50: A5 2C     LDA ram_002C
C - - - - - 0x01FA62 07:FA52: 85 28     STA ram_0028
C - - - - - 0x01FA64 07:FA54: A5 2D     LDA ram_002D
C - - - - - 0x01FA66 07:FA56: 85 29     STA ram_0029
C - - - - - 0x01FA68 07:FA58: A5 2E     LDA ram_002E
C - - - - - 0x01FA6A 07:FA5A: 85 2C     STA ram_002C
C - - - - - 0x01FA6C 07:FA5C: A5 2F     LDA ram_002F
C - - - - - 0x01FA6E 07:FA5E: 85 2D     STA ram_002D
C - - - - - 0x01FA70 07:FA60: A5 28     LDA ram_0028
C - - - - - 0x01FA72 07:FA62: 85 2E     STA ram_002E
C - - - - - 0x01FA74 07:FA64: A5 29     LDA ram_0029
C - - - - - 0x01FA76 07:FA66: 85 2F     STA ram_002F
bra_FA68:
C - - - - - 0x01FA78 07:FA68: 68        PLA
C - - - - - 0x01FA79 07:FA69: A8        TAY
C - - - - - 0x01FA7A 07:FA6A: 68        PLA
C - - - - - 0x01FA7B 07:FA6B: AA        TAX
C - - - - - 0x01FA7C 07:FA6C: 60        RTS



loc_FA6D:
sub_FA6D:
C D 3 - - - 0x01FA7D 07:FA6D: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x01FA80 07:FA70: 38        SEC
C - - - - - 0x01FA81 07:FA71: FD 14 03  SBC ram_игрок_X_lo,X
C - - - - - 0x01FA84 07:FA74: 85 24     STA ram_0024
C - - - - - 0x01FA86 07:FA76: B9 27 03  LDA ram_игрок_X_hi,Y
C - - - - - 0x01FA89 07:FA79: FD 27 03  SBC ram_игрок_X_hi,X
C - - - - - 0x01FA8C 07:FA7C: F0 19     BEQ bra_FA97
C - - - - - 0x01FA8E 07:FA7E: C9 FF     CMP #$FF
C - - - - - 0x01FA90 07:FA80: F0 03     BEQ bra_FA85
C - - - - - 0x01FA92 07:FA82: 4C E9 FA  JMP loc_FAE9
bra_FA85:
C - - - - - 0x01FA95 07:FA85: A5 24     LDA ram_0024
C - - - - - 0x01FA97 07:FA87: F0 0A     BEQ bra_FA93
C - - - - - 0x01FA99 07:FA89: 49 FF     EOR #$FF
C - - - - - 0x01FA9B 07:FA8B: 18        CLC
C - - - - - 0x01FA9C 07:FA8C: 69 01     ADC #$01
C - - - - - 0x01FA9E 07:FA8E: 85 24     STA ram_0024
C - - - - - 0x01FAA0 07:FA90: 4C 97 FA  JMP loc_FA97
bra_FA93:
C - - - - - 0x01FAA3 07:FA93: A9 FF     LDA #$FF
C - - - - - 0x01FAA5 07:FA95: 85 24     STA ram_0024
bra_FA97:
loc_FA97:
C D 3 - - - 0x01FAA7 07:FA97: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x01FAAA 07:FA9A: 38        SEC
C - - - - - 0x01FAAB 07:FA9B: FD 4D 03  SBC ram_игрок_Y_lo,X
C - - - - - 0x01FAAE 07:FA9E: 85 25     STA ram_0025
C - - - - - 0x01FAB0 07:FAA0: B9 60 03  LDA ram_игрок_Y_hi,Y
C - - - - - 0x01FAB3 07:FAA3: FD 60 03  SBC ram_игрок_Y_hi,X
C - - - - - 0x01FAB6 07:FAA6: F0 19     BEQ bra_FAC1
C - - - - - 0x01FAB8 07:FAA8: C9 FF     CMP #$FF
C - - - - - 0x01FABA 07:FAAA: F0 03     BEQ bra_FAAF
C - - - - - 0x01FABC 07:FAAC: 4C E9 FA  JMP loc_FAE9
bra_FAAF:
C - - - - - 0x01FABF 07:FAAF: A5 25     LDA ram_0025
C - - - - - 0x01FAC1 07:FAB1: F0 0A     BEQ bra_FABD
C - - - - - 0x01FAC3 07:FAB3: 49 FF     EOR #$FF
C - - - - - 0x01FAC5 07:FAB5: 18        CLC
C - - - - - 0x01FAC6 07:FAB6: 69 01     ADC #$01
C - - - - - 0x01FAC8 07:FAB8: 85 25     STA ram_0025
C - - - - - 0x01FACA 07:FABA: 4C C1 FA  JMP loc_FAC1
bra_FABD:
C - - - - - 0x01FACD 07:FABD: A9 FF     LDA #$FF
C - - - - - 0x01FACF 07:FABF: 85 25     STA ram_0025
bra_FAC1:
loc_FAC1:
C D 3 - - - 0x01FAD1 07:FAC1: A5 24     LDA ram_0024
C - - - - - 0x01FAD3 07:FAC3: C5 25     CMP ram_0025
C - - - - - 0x01FAD5 07:FAC5: B0 0A     BCS bra_FAD1
C - - - - - 0x01FAD7 07:FAC7: 85 26     STA ram_0026
C - - - - - 0x01FAD9 07:FAC9: A5 25     LDA ram_0025
C - - - - - 0x01FADB 07:FACB: 85 24     STA ram_0024
C - - - - - 0x01FADD 07:FACD: A5 26     LDA ram_0026
C - - - - - 0x01FADF 07:FACF: 85 25     STA ram_0025
bra_FAD1:
C - - - - - 0x01FAE1 07:FAD1: A5 24     LDA ram_0024
C - - - - - 0x01FAE3 07:FAD3: 38        SEC
C - - - - - 0x01FAE4 07:FAD4: E5 25     SBC ram_0025
C - - - - - 0x01FAE6 07:FAD6: 4A        LSR
C - - - - - 0x01FAE7 07:FAD7: 4A        LSR
C - - - - - 0x01FAE8 07:FAD8: 4A        LSR
C - - - - - 0x01FAE9 07:FAD9: 4A        LSR
C - - - - - 0x01FAEA 07:FADA: 4A        LSR
C - - - - - 0x01FAEB 07:FADB: 85 26     STA ram_0026
C - - - - - 0x01FAED 07:FADD: A5 24     LDA ram_0024
bra_FADF:
C - - - - - 0x01FAEF 07:FADF: 4A        LSR
C - - - - - 0x01FAF0 07:FAE0: C6 26     DEC ram_0026
C - - - - - 0x01FAF2 07:FAE2: 10 FB     BPL bra_FADF
C - - - - - 0x01FAF4 07:FAE4: 18        CLC
C - - - - - 0x01FAF5 07:FAE5: 65 24     ADC ram_0024
C - - - - - 0x01FAF7 07:FAE7: 90 02     BCC bra_FAEB
loc_FAE9:
C D 3 - - - 0x01FAF9 07:FAE9: A9 FF     LDA #$FF
bra_FAEB:
C - - - - - 0x01FAFB 07:FAEB: 85 24     STA ram_0024
C - - - - - 0x01FAFD 07:FAED: 60        RTS
loc_FAEE:
C D 3 - - - 0x01FAFE 07:FAEE: BD 04 00  LDA a: ram_удержанные_кнопки,X
C - - - - - 0x01FB01 07:FAF1: 4A        LSR
C - - - - - 0x01FB02 07:FAF2: 85 1C     STA ram_001C
C - - - - - 0x01FB04 07:FAF4: 29 E0     AND #$E0
C - - - - - 0x01FB06 07:FAF6: D0 21     BNE bra_FB19
C - - - - - 0x01FB08 07:FAF8: BD 74 05  LDA ram_0574_кнопки,X
C - - - - - 0x01FB0B 07:FAFB: F0 0C     BEQ bra_FB09
C - - - - - 0x01FB0D 07:FAFD: 85 1C     STA ram_001C
C - - - - - 0x01FB0F 07:FAFF: A9 00     LDA #$00
C - - - - - 0x01FB11 07:FB01: 9D 74 05  STA ram_0574_кнопки,X
C - - - - - 0x01FB14 07:FB04: A5 1C     LDA ram_001C
C - - - - - 0x01FB16 07:FB06: 4C 26 FB  JMP loc_FB26
bra_FB09:
C - - - - - 0x01FB19 07:FB09: 9D 74 05  STA ram_0574_кнопки,X
C - - - - - 0x01FB1C 07:FB0C: 9D 78 05  STA ram_0578_кнопки,X
C - - - - - 0x01FB1F 07:FB0F: 9D 6C 05  STA ram_056C_кнопки,X
C - - - - - 0x01FB22 07:FB12: 9D 70 05  STA ram_0570_кнопки,X
bra_FB15:
loc_FB15:
C D 3 - - - 0x01FB25 07:FB15: 20 5F FB  JSR sub_FB5F
C - - - - - 0x01FB28 07:FB18: 60        RTS
bra_FB19:
C - - - - - 0x01FB29 07:FB19: 0A        ASL
C - - - - - 0x01FB2A 07:FB1A: 0A        ASL
C - - - - - 0x01FB2B 07:FB1B: 3D 04 00  AND a: ram_удержанные_кнопки,X
C - - - - - 0x01FB2E 07:FB1E: 10 16     BPL bra_FB36
C - - - - - 0x01FB30 07:FB20: A5 1C     LDA ram_001C
C - - - - - 0x01FB32 07:FB22: 09 80     ORA #$80
C - - - - - 0x01FB34 07:FB24: 85 1C     STA ram_001C
loc_FB26:
C D 3 - - - 0x01FB36 07:FB26: 5D 6C 05  EOR ram_056C_кнопки,X
C - - - - - 0x01FB39 07:FB29: 25 1C     AND ram_001C
C - - - - - 0x01FB3B 07:FB2B: 9D 70 05  STA ram_0570_кнопки,X
C - - - - - 0x01FB3E 07:FB2E: A5 1C     LDA ram_001C
C - - - - - 0x01FB40 07:FB30: 9D 6C 05  STA ram_056C_кнопки,X
C - - - - - 0x01FB43 07:FB33: 4C 15 FB  JMP loc_FB15
bra_FB36:
C - - - - - 0x01FB46 07:FB36: A5 1C     LDA ram_001C
C - - - - - 0x01FB48 07:FB38: 3D 74 05  AND ram_0574_кнопки,X
C - - - - - 0x01FB4B 07:FB3B: F0 15     BEQ bra_FB52
C - - - - - 0x01FB4D 07:FB3D: FE 78 05  INC ram_0578_кнопки,X
C - - - - - 0x01FB50 07:FB40: BD 78 05  LDA ram_0578_кнопки,X
C - - - - - 0x01FB53 07:FB43: CD A9 FB  CMP tbl_FBA9
C - - - - - 0x01FB56 07:FB46: 90 CD     BCC bra_FB15
C - - - - - 0x01FB58 07:FB48: BD 74 05  LDA ram_0574_кнопки,X
C - - - - - 0x01FB5B 07:FB4B: 25 1C     AND ram_001C
C - - - - - 0x01FB5D 07:FB4D: 85 1C     STA ram_001C
C - - - - - 0x01FB5F 07:FB4F: 4C 26 FB  JMP loc_FB26
bra_FB52:
C - - - - - 0x01FB62 07:FB52: A5 1C     LDA ram_001C
C - - - - - 0x01FB64 07:FB54: 9D 74 05  STA ram_0574_кнопки,X
C - - - - - 0x01FB67 07:FB57: A9 00     LDA #$00
C - - - - - 0x01FB69 07:FB59: 9D 78 05  STA ram_0578_кнопки,X
C - - - - - 0x01FB6C 07:FB5C: 4C 15 FB  JMP loc_FB15



sub_FB5F:
C - - - - - 0x01FB6F 07:FB5F: A9 00     LDA #$00
C - - - - - 0x01FB71 07:FB61: 9D 7C 05  STA ram_057C_кнопки,X
C - - - - - 0x01FB74 07:FB64: BD 08 00  LDA a: ram_одноразовые_кнопки,X
C - - - - - 0x01FB77 07:FB67: 29 0F     AND #$0F
C - - - - - 0x01FB79 07:FB69: F0 30     BEQ bra_FB9B
C - - - - - 0x01FB7B 07:FB6B: 85 1C     STA ram_001C
C - - - - - 0x01FB7D 07:FB6D: 3D 80 05  AND ram_0580_кнопки,X
C - - - - - 0x01FB80 07:FB70: F0 17     BEQ bra_FB89
C - - - - - 0x01FB82 07:FB72: 85 1C     STA ram_001C
C - - - - - 0x01FB84 07:FB74: BD 84 05  LDA ram_0584_кнопки,X
C - - - - - 0x01FB87 07:FB77: CD AA FB  CMP tbl_FBAA
C - - - - - 0x01FB8A 07:FB7A: B0 0D     BCS bra_FB89
C - - - - - 0x01FB8C 07:FB7C: BD 7C 05  LDA ram_057C_кнопки,X
C - - - - - 0x01FB8F 07:FB7F: 29 F0     AND #$F0
C - - - - - 0x01FB91 07:FB81: 05 1C     ORA ram_001C
C - - - - - 0x01FB93 07:FB83: 9D 7C 05  STA ram_057C_кнопки,X
C - - - - - 0x01FB96 07:FB86: 4C A8 FB  JMP loc_FBA8_RTS
bra_FB89:
C - - - - - 0x01FB99 07:FB89: A9 00     LDA #$00
C - - - - - 0x01FB9B 07:FB8B: 9D 84 05  STA ram_0584_кнопки,X
C - - - - - 0x01FB9E 07:FB8E: BD 80 05  LDA ram_0580_кнопки,X
C - - - - - 0x01FBA1 07:FB91: 29 F0     AND #$F0
C - - - - - 0x01FBA3 07:FB93: 05 1C     ORA ram_001C
C - - - - - 0x01FBA5 07:FB95: 9D 80 05  STA ram_0580_кнопки,X
C - - - - - 0x01FBA8 07:FB98: 4C A8 FB  JMP loc_FBA8_RTS
bra_FB9B:
C - - - - - 0x01FBAB 07:FB9B: FE 84 05  INC ram_0584_кнопки,X
C - - - - - 0x01FBAE 07:FB9E: BD 84 05  LDA ram_0584_кнопки,X
C - - - - - 0x01FBB1 07:FBA1: 10 05     BPL bra_FBA8_RTS
C - - - - - 0x01FBB3 07:FBA3: A9 7F     LDA #$7F
C - - - - - 0x01FBB5 07:FBA5: 9D 84 05  STA ram_0584_кнопки,X
bra_FBA8_RTS:
loc_FBA8_RTS:
C D 3 - - - 0x01FBB8 07:FBA8: 60        RTS



tbl_FBA9:
- D 3 - - - 0x01FBB9 07:FBA9: 02        .byte $02   ; 
tbl_FBAA:
- D 3 - - - 0x01FBBA 07:FBAA: 06        .byte $06   ; 
- - - - - - 0x01FBBB 07:FBAB: FF        .byte $FF   ; 
- - - - - - 0x01FBBC 07:FBAC: 40        .byte $40   ; 
- - - - - - 0x01FBBD 07:FBAD: C0        .byte $C0   ; 
- - - - - - 0x01FBBE 07:FBAE: 00        .byte $00   ; 
- - - - - - 0x01FBBF 07:FBAF: 80        .byte $80   ; 
- - - - - - 0x01FBC0 07:FBB0: 60        .byte $60   ; 
- - - - - - 0x01FBC1 07:FBB1: A0        .byte $A0   ; 
- - - - - - 0x01FBC2 07:FBB2: 00        .byte $00   ; 
- - - - - - 0x01FBC3 07:FBB3: 00        .byte $00   ; 
- - - - - - 0x01FBC4 07:FBB4: 20        .byte $20   ; 
- - - - - - 0x01FBC5 07:FBB5: E0        .byte $E0   ; 
- - - - - - 0x01FBC6 07:FBB6: 00        .byte $00   ; 
- - - - - - 0x01FBC7 07:FBB7: 00        .byte $00   ; 
- - - - - - 0x01FBC8 07:FBB8: 00        .byte $00   ; 
- - - - - - 0x01FBC9 07:FBB9: 00        .byte $00   ; 
- - - - - - 0x01FBCA 07:FBBA: 00        .byte $00   ; 



vec_FBBB_NMI:
C D 3 - - - 0x01FBCB 07:FBBB: 24 4F     BIT ram_флаг_NMI
C - - - - - 0x01FBCD 07:FBBD: 30 04     BMI bra_FBC3
C - - - - - 0x01FBCF 07:FBBF: 50 0A     BVC bra_FBCB
- - - - - - 0x01FBD1 07:FBC1: 70 1C     BVS bra_FBDF
bra_FBC3:
C - - - - - 0x01FBD3 07:FBC3: 70 03     BVS bra_FBC8
C - - - - - 0x01FBD5 07:FBC5: 4C DF FB  JMP loc_FBDF
bra_FBC8:
C - - - - - 0x01FBD8 07:FBC8: 4C 3D FC  JMP loc_FC3D
bra_FBCB:
C - - - - - 0x01FBDB 07:FBCB: A5 4C     LDA ram_для_2000
C - - - - - 0x01FBDD 07:FBCD: 29 7F     AND #$7F
C - - - - - 0x01FBDF 07:FBCF: 85 4C     STA ram_для_2000
C - - - - - 0x01FBE1 07:FBD1: 8D 00 20  STA $2000
C - - - - - 0x01FBE4 07:FBD4: AD 02 20  LDA $2002
C - - - - - 0x01FBE7 07:FBD7: 28        PLP
C - - - - - 0x01FBE8 07:FBD8: 68        PLA
C - - - - - 0x01FBE9 07:FBD9: 68        PLA
C - - - - - 0x01FBEA 07:FBDA: 68        PLA
C - - - - - 0x01FBEB 07:FBDB: 85 4F     STA ram_флаг_NMI
C - - - - - 0x01FBED 07:FBDD: 68        PLA
C - - - - - 0x01FBEE 07:FBDE: 60        RTS



loc_FBDF:
bra_FBDF:
C D 3 - - - 0x01FBEF 07:FBDF: 48        PHA
C - - - - - 0x01FBF0 07:FBE0: 8A        TXA
C - - - - - 0x01FBF1 07:FBE1: 48        PHA
C - - - - - 0x01FBF2 07:FBE2: 98        TYA
C - - - - - 0x01FBF3 07:FBE3: 48        PHA
C - - - - - 0x01FBF4 07:FBE4: A5 4E     LDA ram_для_8000
C - - - - - 0x01FBF6 07:FBE6: 48        PHA
C - - - - - 0x01FBF7 07:FBE7: AD FF BF  LDA $BFFF
C - - - - - 0x01FBFA 07:FBEA: 48        PHA
C - - - - - 0x01FBFB 07:FBEB: A5 0C     LDA ram_000C
C - - - - - 0x01FBFD 07:FBED: 48        PHA
C - - - - - 0x01FBFE 07:FBEE: A5 0D     LDA ram_000D
C - - - - - 0x01FC00 07:FBF0: 48        PHA
C - - - - - 0x01FC01 07:FBF1: 20 5A EE  JSR sub_EE5A
C - - - - - 0x01FC04 07:FBF4: 20 AD EF  JSR sub_EFAD
C - - - - - 0x01FC07 07:FBF7: A2 00     LDX #$00
C - - - - - 0x01FC09 07:FBF9: 8E 00 80  STX $8000
C - - - - - 0x01FC0C 07:FBFC: AD BC 05  LDA ram_банк_фона
C - - - - - 0x01FC0F 07:FBFF: 8D 01 80  STA $8001
C - - - - - 0x01FC12 07:FC02: E8        INX
C - - - - - 0x01FC13 07:FC03: 8E 00 80  STX $8000
C - - - - - 0x01FC16 07:FC06: AD BD 05  LDA ram_банк_фона + 1
C - - - - - 0x01FC19 07:FC09: 8D 01 80  STA $8001
C - - - - - 0x01FC1C 07:FC0C: AD 02 20  LDA $2002
C - - - - - 0x01FC1F 07:FC0F: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01FC22 07:FC12: 8D 05 20  STA $2005
C - - - - - 0x01FC25 07:FC15: AD EE 00  LDA a: ram_камера_Y_lo
C - - - - - 0x01FC28 07:FC18: 8D 05 20  STA $2005
C - - - - - 0x01FC2B 07:FC1B: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01FC2E 07:FC1E: 29 01     AND #$01
C - - - - - 0x01FC30 07:FC20: 85 0C     STA ram_000C
C - - - - - 0x01FC32 07:FC22: AD EF 00  LDA a: ram_камера_Y_hi
C - - - - - 0x01FC35 07:FC25: 29 01     AND #$01
C - - - - - 0x01FC37 07:FC27: 0A        ASL
C - - - - - 0x01FC38 07:FC28: 05 0C     ORA ram_000C
C - - - - - 0x01FC3A 07:FC2A: 85 0C     STA ram_000C
C - - - - - 0x01FC3C 07:FC2C: A5 4C     LDA ram_для_2000
C - - - - - 0x01FC3E 07:FC2E: 29 FC     AND #$FC
C - - - - - 0x01FC40 07:FC30: 05 0C     ORA ram_000C
C - - - - - 0x01FC42 07:FC32: 85 4C     STA ram_для_2000
C - - - - - 0x01FC44 07:FC34: 8D 00 20  STA $2000
C - - - - - 0x01FC47 07:FC37: 20 08 C3  JSR sub_C308
C - - - - - 0x01FC4A 07:FC3A: 4C C1 FC  JMP loc_FCC1



loc_FC3D:
C D 3 - - - 0x01FC4D 07:FC3D: 48        PHA
C - - - - - 0x01FC4E 07:FC3E: 8A        TXA
C - - - - - 0x01FC4F 07:FC3F: 48        PHA
C - - - - - 0x01FC50 07:FC40: 98        TYA
C - - - - - 0x01FC51 07:FC41: 48        PHA
C - - - - - 0x01FC52 07:FC42: A5 4E     LDA ram_для_8000
C - - - - - 0x01FC54 07:FC44: 48        PHA
C - - - - - 0x01FC55 07:FC45: AD FF BF  LDA $BFFF
C - - - - - 0x01FC58 07:FC48: 48        PHA
C - - - - - 0x01FC59 07:FC49: A5 0C     LDA ram_000C
C - - - - - 0x01FC5B 07:FC4B: 48        PHA
C - - - - - 0x01FC5C 07:FC4C: A5 0D     LDA ram_000D
C - - - - - 0x01FC5E 07:FC4E: 48        PHA
C - - - - - 0x01FC5F 07:FC4F: 20 5A EE  JSR sub_EE5A
C - - - - - 0x01FC62 07:FC52: 20 AD EF  JSR sub_EFAD
C - - - - - 0x01FC65 07:FC55: A2 00     LDX #$00
C - - - - - 0x01FC67 07:FC57: 8E 00 80  STX $8000
C - - - - - 0x01FC6A 07:FC5A: AD BC 05  LDA ram_банк_фона
C - - - - - 0x01FC6D 07:FC5D: 8D 01 80  STA $8001
C - - - - - 0x01FC70 07:FC60: E8        INX
C - - - - - 0x01FC71 07:FC61: 8E 00 80  STX $8000
C - - - - - 0x01FC74 07:FC64: AD BD 05  LDA ram_банк_фона + 1
C - - - - - 0x01FC77 07:FC67: 8D 01 80  STA $8001
C - - - - - 0x01FC7A 07:FC6A: A2 05     LDX #$05
C - - - - - 0x01FC7C 07:FC6C: 8E 00 80  STX $8000
C - - - - - 0x01FC7F 07:FC6F: AD BB 05  LDA ram_банк_спрайтов + 3
C - - - - - 0x01FC82 07:FC72: 8D 01 80  STA $8001
C - - - - - 0x01FC85 07:FC75: AD 02 20  LDA $2002
C - - - - - 0x01FC88 07:FC78: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x01FC8B 07:FC7B: 8D 05 20  STA $2005
C - - - - - 0x01FC8E 07:FC7E: AD EE 00  LDA a: ram_камера_Y_lo
C - - - - - 0x01FC91 07:FC81: 8D 05 20  STA $2005
C - - - - - 0x01FC94 07:FC84: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x01FC97 07:FC87: 29 01     AND #$01
C - - - - - 0x01FC99 07:FC89: 85 0C     STA ram_000C
C - - - - - 0x01FC9B 07:FC8B: AD EF 00  LDA a: ram_камера_Y_hi
C - - - - - 0x01FC9E 07:FC8E: 29 01     AND #$01
C - - - - - 0x01FCA0 07:FC90: 0A        ASL
C - - - - - 0x01FCA1 07:FC91: 05 0C     ORA ram_000C
C - - - - - 0x01FCA3 07:FC93: 85 0C     STA ram_000C
C - - - - - 0x01FCA5 07:FC95: A5 4C     LDA ram_для_2000
C - - - - - 0x01FCA7 07:FC97: 29 FC     AND #$FC
C - - - - - 0x01FCA9 07:FC99: 05 0C     ORA ram_000C
C - - - - - 0x01FCAB 07:FC9B: 85 4C     STA ram_для_2000
C - - - - - 0x01FCAD 07:FC9D: 8D 00 20  STA $2000
C - - - - - 0x01FCB0 07:FCA0: A9 00     LDA #$00
C - - - - - 0x01FCB2 07:FCA2: 85 55     STA ram_0055
C - - - - - 0x01FCB4 07:FCA4: A9 B8     LDA #$B8
C - - - - - 0x01FCB6 07:FCA6: 8D 00 C0  STA $C000
C - - - - - 0x01FCB9 07:FCA9: 8D 01 C0  STA $C001
C - - - - - 0x01FCBC 07:FCAC: 8D 01 E0  STA $E001
C - - - - - 0x01FCBF 07:FCAF: 20 93 D9  JSR sub_D993
C - - - - - 0x01FCC2 07:FCB2: 20 91 D8  JSR sub_D891
C - - - - - 0x01FCC5 07:FCB5: 20 78 DB  JSR sub_DB78
C - - - - - 0x01FCC8 07:FCB8: 20 81 DA  JSR sub_DA81
C - - - - - 0x01FCCB 07:FCBB: 20 B1 DC  JSR sub_DCB1
C - - - - - 0x01FCCE 07:FCBE: 20 08 C3  JSR sub_C308
loc_FCC1:
C D 3 - - - 0x01FCD1 07:FCC1: E6 51     INC ram_задержка_кадра
loc_FCC3:
C D 3 - - - 0x01FCD3 07:FCC3: 68        PLA
C - - - - - 0x01FCD4 07:FCC4: 85 0D     STA ram_000D
C - - - - - 0x01FCD6 07:FCC6: 68        PLA
C - - - - - 0x01FCD7 07:FCC7: 85 0C     STA ram_000C
C - - - - - 0x01FCD9 07:FCC9: 68        PLA
C - - - - - 0x01FCDA 07:FCCA: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01FCDD 07:FCCD: 68        PLA
C - - - - - 0x01FCDE 07:FCCE: 85 4E     STA ram_для_8000
C - - - - - 0x01FCE0 07:FCD0: 8D 00 80  STA $8000
C - - - - - 0x01FCE3 07:FCD3: 68        PLA
C - - - - - 0x01FCE4 07:FCD4: A8        TAY
C - - - - - 0x01FCE5 07:FCD5: 68        PLA
C - - - - - 0x01FCE6 07:FCD6: AA        TAX
C - - - - - 0x01FCE7 07:FCD7: 68        PLA
C - - - - - 0x01FCE8 07:FCD8: 40        RTI



vec_FCD9_IRQ:
C D 3 - - - 0x01FCE9 07:FCD9: 48        PHA
C - - - - - 0x01FCEA 07:FCDA: 8A        TXA
C - - - - - 0x01FCEB 07:FCDB: 48        PHA
C - - - - - 0x01FCEC 07:FCDC: 98        TYA
C - - - - - 0x01FCED 07:FCDD: 48        PHA
C - - - - - 0x01FCEE 07:FCDE: 8D 00 E0  STA $E000
C - - - - - 0x01FCF1 07:FCE1: 8D 01 E0  STA $E001
C - - - - - 0x01FCF4 07:FCE4: A5 4E     LDA ram_для_8000
C - - - - - 0x01FCF6 07:FCE6: 48        PHA
C - - - - - 0x01FCF7 07:FCE7: AD FF BF  LDA $BFFF
C - - - - - 0x01FCFA 07:FCEA: 48        PHA
C - - - - - 0x01FCFB 07:FCEB: A5 0C     LDA ram_000C
C - - - - - 0x01FCFD 07:FCED: 48        PHA
C - - - - - 0x01FCFE 07:FCEE: A5 0D     LDA ram_000D
C - - - - - 0x01FD00 07:FCF0: 48        PHA
C - - - - - 0x01FD01 07:FCF1: A5 59     LDA ram_подтип_экрана
C - - - - - 0x01FD03 07:FCF3: C9 01     CMP #$01
C - - - - - 0x01FD05 07:FCF5: F0 18     BEQ bra_FD0F
C - - - - - 0x01FD07 07:FCF7: C9 03     CMP #$03
C - - - - - 0x01FD09 07:FCF9: D0 51     BNE bra_FD4C
C - - - - - 0x01FD0B 07:FCFB: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x01FD0D 07:FCFD: 29 03     AND #$03
C - - - - - 0x01FD0F 07:FCFF: 0D 59 05  ORA ram_0559
C - - - - - 0x01FD12 07:FD02: 0D 5B 05  ORA ram_вариант_расстановки_игроков
C - - - - - 0x01FD15 07:FD05: D0 08     BNE bra_FD0F
C - - - - - 0x01FD17 07:FD07: 4C 4C FD  JMP loc_FD4C
loc_FD0A:
C D 3 - - - 0x01FD1A 07:FD0A: E6 55     INC ram_0055
C - - - - - 0x01FD1C 07:FD0C: 4C C3 FC  JMP loc_FCC3
bra_FD0F:
C - - - - - 0x01FD1F 07:FD0F: 8D 00 E0  STA $E000
C - - - - - 0x01FD22 07:FD12: A2 00     LDX #$00
bra_FD14:
C - - - - - 0x01FD24 07:FD14: CA        DEX
C - - - - - 0x01FD25 07:FD15: 10 FD     BPL bra_FD14
C - - - - - 0x01FD27 07:FD17: AD 02 20  LDA $2002
C - - - - - 0x01FD2A 07:FD1A: A2 00     LDX #$00
C - - - - - 0x01FD2C 07:FD1C: 8E 05 20  STX $2005
C - - - - - 0x01FD2F 07:FD1F: 8E 05 20  STX $2005
C - - - - - 0x01FD32 07:FD22: A5 4C     LDA ram_для_2000
C - - - - - 0x01FD34 07:FD24: 29 FC     AND #$FC
C - - - - - 0x01FD36 07:FD26: 09 02     ORA #$02
C - - - - - 0x01FD38 07:FD28: 85 4C     STA ram_для_2000
C - - - - - 0x01FD3A 07:FD2A: 8D 00 20  STA $2000
C - - - - - 0x01FD3D 07:FD2D: AD 02 20  LDA $2002
C - - - - - 0x01FD40 07:FD30: A9 2A     LDA #$2A
C - - - - - 0x01FD42 07:FD32: 8D 06 20  STA $2006
C - - - - - 0x01FD45 07:FD35: A9 E0     LDA #$E0
C - - - - - 0x01FD47 07:FD37: 8D 06 20  STA $2006
C - - - - - 0x01FD4A 07:FD3A: 8E 00 80  STX $8000
C - - - - - 0x01FD4D 07:FD3D: 8E 01 80  STX $8001
C - - - - - 0x01FD50 07:FD40: E8        INX
C - - - - - 0x01FD51 07:FD41: 8E 00 80  STX $8000
C - - - - - 0x01FD54 07:FD44: A9 10     LDA #$10
C - - - - - 0x01FD56 07:FD46: 8D 01 80  STA $8001
C - - - - - 0x01FD59 07:FD49: 4C 0A FD  JMP loc_FD0A
bra_FD4C:
loc_FD4C:
C D 3 - - - 0x01FD5C 07:FD4C: 8D 00 E0  STA $E000
C - - - - - 0x01FD5F 07:FD4F: A2 00     LDX #$00
bra_FD51:
C - - - - - 0x01FD61 07:FD51: CA        DEX
C - - - - - 0x01FD62 07:FD52: 10 FD     BPL bra_FD51
C - - - - - 0x01FD64 07:FD54: AD 02 20  LDA $2002
C - - - - - 0x01FD67 07:FD57: A2 00     LDX #$00
C - - - - - 0x01FD69 07:FD59: 8E 05 20  STX $2005
C - - - - - 0x01FD6C 07:FD5C: 8E 05 20  STX $2005
C - - - - - 0x01FD6F 07:FD5F: A5 4C     LDA ram_для_2000
C - - - - - 0x01FD71 07:FD61: 29 FC     AND #$FC
C - - - - - 0x01FD73 07:FD63: 85 4C     STA ram_для_2000
C - - - - - 0x01FD75 07:FD65: 8D 00 20  STA $2000
C - - - - - 0x01FD78 07:FD68: AD 02 20  LDA $2002
C - - - - - 0x01FD7B 07:FD6B: A9 2A     LDA #$2A
C - - - - - 0x01FD7D 07:FD6D: 8D 06 20  STA $2006
C - - - - - 0x01FD80 07:FD70: A9 00     LDA #$00
C - - - - - 0x01FD82 07:FD72: 8D 06 20  STA $2006
C - - - - - 0x01FD85 07:FD75: A9 04     LDA #$04
C - - - - - 0x01FD87 07:FD77: 2C 2D 05  BIT ram_номер_команды + 1
C - - - - - 0x01FD8A 07:FD7A: 50 02     BVC bra_FD7E
C - - - - - 0x01FD8C 07:FD7C: A9 06     LDA #$06
bra_FD7E:
C - - - - - 0x01FD8E 07:FD7E: 8E 00 80  STX $8000
C - - - - - 0x01FD91 07:FD81: 8D 01 80  STA $8001
C - - - - - 0x01FD94 07:FD84: E8        INX
C - - - - - 0x01FD95 07:FD85: 8E 00 80  STX $8000
C - - - - - 0x01FD98 07:FD88: E8        INX
C - - - - - 0x01FD99 07:FD89: 8E 01 80  STX $8001
C - - - - - 0x01FD9C 07:FD8C: 4C 0A FD  JMP loc_FD0A



vec_FD8F_RESET:
C D 3 - - - 0x01FD9F 07:FD8F: 78        SEI
C - - - - - 0x01FDA0 07:FD90: D8        CLD
C - - - - - 0x01FDA1 07:FD91: A9 08     LDA #$08
C - - - - - 0x01FDA3 07:FD93: 8D 00 20  STA $2000
C - - - - - 0x01FDA6 07:FD96: 85 4C     STA ram_для_2000
C - - - - - 0x01FDA8 07:FD98: A9 06     LDA #$06
C - - - - - 0x01FDAA 07:FD9A: 8D 01 20  STA $2001
C - - - - - 0x01FDAD 07:FD9D: 85 4D     STA ram_для_2001
C - - - - - 0x01FDAF 07:FD9F: A2 FF     LDX #$FF
C - - - - - 0x01FDB1 07:FDA1: 9A        TXS
C - - - - - 0x01FDB2 07:FDA2: A2 08     LDX #$08
bra_FDA4:
C - - - - - 0x01FDB4 07:FDA4: 2C 02 20  BIT $2002
C - - - - - 0x01FDB7 07:FDA7: 10 FB     BPL bra_FDA4
bra_FDA9:
C - - - - - 0x01FDB9 07:FDA9: 2C 02 20  BIT $2002
C - - - - - 0x01FDBC 07:FDAC: 30 FB     BMI bra_FDA9
C - - - - - 0x01FDBE 07:FDAE: CA        DEX
C - - - - - 0x01FDBF 07:FDAF: D0 F3     BNE bra_FDA4
C - - - - - 0x01FDC1 07:FDB1: 86 EC     STX ram_камера_X_lo
C - - - - - 0x01FDC3 07:FDB3: 86 ED     STX ram_камера_X_hi
C - - - - - 0x01FDC5 07:FDB5: 86 EE     STX ram_камера_Y_lo
C - - - - - 0x01FDC7 07:FDB7: 86 EF     STX ram_камера_Y_hi
C - - - - - 0x01FDC9 07:FDB9: 86 48     STX ram_0048
C - - - - - 0x01FDCB 07:FDBB: 8E 16 40  STX $4016
C - - - - - 0x01FDCE 07:FDBE: A9 FF     LDA #$FF
C - - - - - 0x01FDD0 07:FDC0: 85 47     STA ram_0047
C - - - - - 0x01FDD2 07:FDC2: A9 40     LDA #$40
C - - - - - 0x01FDD4 07:FDC4: 8D 17 40  STA $4017
C - - - - - 0x01FDD7 07:FDC7: A9 0F     LDA #$0F
C - - - - - 0x01FDD9 07:FDC9: 8D 15 40  STA $4015
C - - - - - 0x01FDDC 07:FDCC: A9 10     LDA #$10
C - - - - - 0x01FDDE 07:FDCE: AA        TAX
bra_FDCF:
C - - - - - 0x01FDDF 07:FDCF: 8D 06 20  STA $2006
C - - - - - 0x01FDE2 07:FDD2: 8D 06 20  STA $2006
C - - - - - 0x01FDE5 07:FDD5: 49 00     EOR #$00
C - - - - - 0x01FDE7 07:FDD7: CA        DEX
C - - - - - 0x01FDE8 07:FDD8: D0 F5     BNE bra_FDCF
C - - - - - 0x01FDEA 07:FDDA: 20 64 EF  JSR sub_EF64
C - - - - - 0x01FDED 07:FDDD: A9 06     LDA #$06
C - - - - - 0x01FDEF 07:FDDF: 20 D3 EE  JSR sub_EED3_prg_bankswitch
C - - - - - 0x01FDF2 07:FDE2: A9 C0     LDA #$C0
C - - - - - 0x01FDF4 07:FDE4: 85 4F     STA ram_флаг_NMI
C - - - - - 0x01FDF6 07:FDE6: A9 00     LDA #$00
C - - - - - 0x01FDF8 07:FDE8: 8D 00 A0  STA $A000
C - - - - - 0x01FDFB 07:FDEB: A9 00     LDA #$00
C - - - - - 0x01FDFD 07:FDED: AC 02 01  LDY ram_0102
C - - - - - 0x01FE00 07:FDF0: A2 00     LDX #$00
bra_FDF2:
C - - - - - 0x01FE02 07:FDF2: C8        INY
C - - - - - 0x01FE03 07:FDF3: B9 00 01  LDA ram_0100,Y
C - - - - - 0x01FE06 07:FDF6: D0 07     BNE bra_FDFF
C - - - - - 0x01FE08 07:FDF8: C0 FF     CPY #$FF
C - - - - - 0x01FE0A 07:FDFA: 90 F6     BCC bra_FDF2
- - - - - - 0x01FE0C 07:FDFC: AC 15 02  LDY ram_0215
bra_FDFF:
C - - - - - 0x01FE0F 07:FDFF: B9 70 00  LDA a: ram_0070,Y
C - - - - - 0x01FE12 07:FE02: 09 25     ORA #$25
C - - - - - 0x01FE14 07:FE04: 9D 45 00  STA a: ram_рандом,X
C - - - - - 0x01FE17 07:FE07: C8        INY
C - - - - - 0x01FE18 07:FE08: E8        INX
C - - - - - 0x01FE19 07:FE09: E0 02     CPX #$02
C - - - - - 0x01FE1B 07:FE0B: 90 E5     BCC bra_FDF2
C - - - - - 0x01FE1D 07:FE0D: 4C D4 C3  JMP loc_C3D4


; bzk garbage
- - - - - - 0x01FE20 07:FE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE30 07:FE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01FE40 07:FE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.segment "DMC_DATA"
.incbin "DPCM.bin"
; - D 0 - - A 0x01FE50 07:FE40: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x01FFD1 07:FFC1: 74        .byte $74, $B0, $A2, $B4, $89, $67, $35, $6D, $2B, $37, $B6, $45, $A5, $A9, $C5   ; 
- - - - - - 0x01FFE0 07:FFD0: A4        .byte $A4, $42, $34, $26, $54, $44, $44, $04, $44, $00, $4A, $44, $00, $00, $00, $00   ; 
- - - - - - 0x01FFF0 07:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x020000 07:FFF0: 00        .byte $00   ; 



ofs_FFF1:
C - - - - - 0x020001 07:FFF1: 4C BB FB  JMP vec_FBBB_NMI

ofs_FFF4:
C - - - - - 0x020004 07:FFF4: 4C 8F FD  JMP vec_FD8F_RESET

ofs_FFF7:
C - - - - - 0x020007 07:FFF7: 4C D9 FC  JMP vec_FCD9_IRQ

.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: F1 FF     .word ofs_FFF1
- D 3 - - - 0x02000C 07:FFFC: F4 FF     .word ofs_FFF4
- D 3 - - - 0x02000E 07:FFFE: F7 FF     .word ofs_FFF7



