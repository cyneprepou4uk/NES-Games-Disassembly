.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x01C010-0x02000F

tbl_C000_prg_bank:
- D 2 - - - 0x01C010 07:C000: 30        .byte $30   ; 00 0x000010
- D 2 - - - 0x01C011 07:C001: 32        .byte $32   ; 01 0x004010
- D 2 - - - 0x01C012 07:C002: 34        .byte $34   ; 02 0x008010
- D 2 - - - 0x01C013 07:C003: 35        .byte $35   ; 03 0x00A010
- D 2 - - - 0x01C014 07:C004: 31        .byte $31   ; 04 0x002010
- - - - - - 0x01C015 07:C005: 32        .byte $32   ; 05 0x004010
- D 2 - - - 0x01C016 07:C006: 33        .byte $33   ; 06 0x006010
- D 2 - - - 0x01C017 07:C007: 36        .byte $36   ; 07 0x00C010
- D 2 - - - 0x01C018 07:C008: 37        .byte $37   ; 08 0x00E010

; bzk garbage
- - - - - - 0x01C019 07:C009: 3A        .byte $3A   ; 09 0x014010
- - - - - - 0x01C01A 07:C00A: 3A        .byte $3A   ; 0A 0x014010



tbl_C00B:
- D 2 - - - 0x01C01B 07:C00B: 00        .byte $00   ; 
- D 2 - - - 0x01C01C 07:C00C: 5A        .byte $5A   ; 
- D 2 - - - 0x01C01D 07:C00D: 40        .byte $40   ; 
- D 2 - - - 0x01C01E 07:C00E: 2E        .byte $2E   ; 
- D 2 - - - 0x01C01F 07:C00F: 13        .byte $13   ; 
- - - - - - 0x01C020 07:C010: 5A        .byte $5A   ; 
- D 2 - - - 0x01C021 07:C011: 76        .byte $76   ; 
- D 2 - - - 0x01C022 07:C012: 94        .byte $94   ; 
- D 2 - - - 0x01C023 07:C013: 80        .byte $80   ; 
- D 2 - - - 0x01C024 07:C014: A6        .byte $A6   ; 
- D 2 - - - 0x01C025 07:C015: A6        .byte $A6   ; 



tbl_C016:
- D 2 - - - 0x01C026 07:C016: FF        .byte $FF   ; 
- D 2 - - - 0x01C027 07:C017: C0        .byte $C0   ; 
- D 2 - - - 0x01C028 07:C018: 0C        .byte $0C   ; 
- D 2 - - - 0x01C029 07:C019: C2        .byte $C2   ; 
- D 2 - - - 0x01C02A 07:C01A: 12        .byte $12   ; 
- D 2 - - - 0x01C02B 07:C01B: C4        .byte $C4   ; 
- D 2 - - - 0x01C02C 07:C01C: 00        .byte $00   ; 
- - - - - - 0x01C02D 07:C01D: C6        .byte $C6   ; 
- D 2 - - - 0x01C02E 07:C01E: FF        .byte $FF   ; 
- D 2 - - - 0x01C02F 07:C01F: C8        .byte $C8   ; 
- D 2 - - - 0x01C030 07:C020: 0D        .byte $0D   ; 
- D 2 - - - 0x01C031 07:C021: CA        .byte $CA   ; 
- D 2 - - - 0x01C032 07:C022: 12        .byte $12   ; 
- D 2 - - - 0x01C033 07:C023: CC        .byte $CC   ; 
- D 2 - - - 0x01C034 07:C024: 00        .byte $00   ; 
- - - - - - 0x01C035 07:C025: CE        .byte $CE   ; 
- D 2 - - - 0x01C036 07:C026: FF        .byte $FF   ; 
- D 2 - - - 0x01C037 07:C027: D0        .byte $D0   ; 
- D 2 - - - 0x01C038 07:C028: 11        .byte $11   ; 
- D 2 - - - 0x01C039 07:C029: D2        .byte $D2   ; 
- D 2 - - - 0x01C03A 07:C02A: 00        .byte $00   ; 
- - - - - - 0x01C03B 07:C02B: D4        .byte $D4   ; 
- - - - - - 0x01C03C 07:C02C: FF        .byte $FF   ; 
- - - - - - 0x01C03D 07:C02D: FF        .byte $FF   ; 
- D 2 - - - 0x01C03E 07:C02E: FF        .byte $FF   ; 
- D 2 - - - 0x01C03F 07:C02F: D8        .byte $D8   ; 
- D 2 - - - 0x01C040 07:C030: 0E        .byte $0E   ; 
- D 2 - - - 0x01C041 07:C031: DA        .byte $DA   ; 
- D 2 - - - 0x01C042 07:C032: 16        .byte $16   ; 
- D 2 - - - 0x01C043 07:C033: DC        .byte $DC   ; 
- D 2 - - - 0x01C044 07:C034: 00        .byte $00   ; 
- - - - - - 0x01C045 07:C035: DE        .byte $DE   ; 
- D 2 - - - 0x01C046 07:C036: FF        .byte $FF   ; 
- D 2 - - - 0x01C047 07:C037: E0        .byte $E0   ; 
- D 2 - - - 0x01C048 07:C038: 0C        .byte $0C   ; 
- D 2 - - - 0x01C049 07:C039: E2        .byte $E2   ; 
- D 2 - - - 0x01C04A 07:C03A: 12        .byte $12   ; 
- D 2 - - - 0x01C04B 07:C03B: E4        .byte $E4   ; 
- D 2 - - - 0x01C04C 07:C03C: 18        .byte $18   ; 
- D 2 - - - 0x01C04D 07:C03D: E6        .byte $E6   ; 
- D 2 - - - 0x01C04E 07:C03E: FF        .byte $FF   ; 
- D 2 - - - 0x01C04F 07:C03F: E8        .byte $E8   ; 
- D 2 - - - 0x01C050 07:C040: 0E        .byte $0E   ; 
- D 2 - - - 0x01C051 07:C041: EA        .byte $EA   ; 
- D 2 - - - 0x01C052 07:C042: 00        .byte $00   ; 
- - - - - - 0x01C053 07:C043: BA        .byte $BA   ; 
- - - - - - 0x01C054 07:C044: 00        .byte $00   ; 
- - - - - - 0x01C055 07:C045: BA        .byte $BA   ; 
- D 2 - - - 0x01C056 07:C046: FF        .byte $FF   ; 
- D 2 - - - 0x01C057 07:C047: F0        .byte $F0   ; 
- D 2 - - - 0x01C058 07:C048: 11        .byte $11   ; 
- D 2 - - - 0x01C059 07:C049: F2        .byte $F2   ; 
- D 2 - - - 0x01C05A 07:C04A: 00        .byte $00   ; 
- - - - - - 0x01C05B 07:C04B: F4        .byte $F4   ; 
- - - - - - 0x01C05C 07:C04C: 00        .byte $00   ; 
- - - - - - 0x01C05D 07:C04D: 00        .byte $00   ; 
- D 2 - - - 0x01C05E 07:C04E: FF        .byte $FF   ; 
- D 2 - - - 0x01C05F 07:C04F: EC        .byte $EC   ; 
- D 2 - - - 0x01C060 07:C050: 0E        .byte $0E   ; 
- D 2 - - - 0x01C061 07:C051: EE        .byte $EE   ; 
- D 2 - - - 0x01C062 07:C052: 00        .byte $00   ; 
- - - - - - 0x01C063 07:C053: 00        .byte $00   ; 
- - - - - - 0x01C064 07:C054: 00        .byte $00   ; 
- - - - - - 0x01C065 07:C055: 00        .byte $00   ; 
- D 2 - - - 0x01C066 07:C056: FF        .byte $FF   ; 
- D 2 - - - 0x01C067 07:C057: F8        .byte $F8   ; 
- D 2 - - - 0x01C068 07:C058: 0C        .byte $0C   ; 
- D 2 - - - 0x01C069 07:C059: FA        .byte $FA   ; 
- D 2 - - - 0x01C06A 07:C05A: 18        .byte $18   ; 
- D 2 - - - 0x01C06B 07:C05B: FC        .byte $FC   ; 
- D 2 - - - 0x01C06C 07:C05C: 00        .byte $00   ; 
- - - - - - 0x01C06D 07:C05D: 00        .byte $00   ; 
- D 2 - - - 0x01C06E 07:C05E: 01        .byte $01   ; 
- D 2 - - - 0x01C06F 07:C05F: A2        .byte $A2   ; 
- D 2 - - - 0x01C070 07:C060: 19        .byte $19   ; 
- D 2 - - - 0x01C071 07:C061: A4        .byte $A4   ; 
- D 2 - - - 0x01C072 07:C062: 00        .byte $00   ; 
- - - - - - 0x01C073 07:C063: BA        .byte $BA   ; 
- - - - - - 0x01C074 07:C064: 00        .byte $00   ; 
- - - - - - 0x01C075 07:C065: BA        .byte $BA   ; 
- D 2 - - - 0x01C076 07:C066: 01        .byte $01   ; 
- D 2 - - - 0x01C077 07:C067: D4        .byte $D4   ; 
- D 2 - - - 0x01C078 07:C068: 14        .byte $14   ; 
- D 2 - - - 0x01C079 07:C069: D6        .byte $D6   ; 
- D 2 - - - 0x01C07A 07:C06A: 00        .byte $00   ; 
- - - - - - 0x01C07B 07:C06B: 00        .byte $00   ; 
- - - - - - 0x01C07C 07:C06C: 00        .byte $00   ; 
- - - - - - 0x01C07D 07:C06D: 00        .byte $00   ; 
- D 2 - - - 0x01C07E 07:C06E: 01        .byte $01   ; 
- D 2 - - - 0x01C07F 07:C06F: BD        .byte $BD   ; 
- D 2 - - - 0x01C080 07:C070: 1A        .byte $1A   ; 
- D 2 - - - 0x01C081 07:C071: BE        .byte $BE   ; 
- - - - - - 0x01C082 07:C072: 00        .byte $00   ; 
- - - - - - 0x01C083 07:C073: BA        .byte $BA   ; 
- - - - - - 0x01C084 07:C074: 00        .byte $00   ; 
- - - - - - 0x01C085 07:C075: 00        .byte $00   ; 



sub_C076:
C - - - - - 0x01C086 07:C076: 20 5C F8  JSR sub_F85C
C - - - - - 0x01C089 07:C079: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C08B 07:C07B: 8D 00 70  STA $7000
C - - - - - 0x01C08E 07:C07E: A9 01     LDA #$01
C - - - - - 0x01C090 07:C080: 20 25 FD  JSR sub_FD25
C - - - - - 0x01C093 07:C083: A9 00     LDA #$00
C - - - - - 0x01C095 07:C085: 20 25 FD  JSR sub_FD25
C - - - - - 0x01C098 07:C088: 20 BC E1  JSR sub_E1BC
C - - - - - 0x01C09B 07:C08B: 20 37 E3  JSR sub_E337
C - - - - - 0x01C09E 07:C08E: 20 21 EA  JSR sub_EA21
C - - - - - 0x01C0A1 07:C091: 60        RTS



sub_C092:
C - - - - - 0x01C0A2 07:C092: 20 5C F8  JSR sub_F85C
C - - - - - 0x01C0A5 07:C095: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C0A7 07:C097: 8D 00 70  STA $7000
C - - - - - 0x01C0AA 07:C09A: A5 10     LDA ram_0010
C - - - - - 0x01C0AC 07:C09C: D0 06     BNE bra_C0A4
C - - - - - 0x01C0AE 07:C09E: C6 C7     DEC ram_timer_before_demo
C - - - - - 0x01C0B0 07:C0A0: A9 3C     LDA #$3C
C - - - - - 0x01C0B2 07:C0A2: 85 10     STA ram_0010
bra_C0A4:
C - - - - - 0x01C0B4 07:C0A4: A9 00     LDA #$00
C - - - - - 0x01C0B6 07:C0A6: 20 25 FD  JSR sub_FD25
C - - - - - 0x01C0B9 07:C0A9: A2 10     LDX #$10
C - - - - - 0x01C0BB 07:C0AB: BD 0D 05  LDA ram_050D,X
C - - - - - 0x01C0BE 07:C0AE: D0 45     BNE bra_C0F5
C - - - - - 0x01C0C0 07:C0B0: A5 B4     LDA ram_00B4
C - - - - - 0x01C0C2 07:C0B2: C9 07     CMP #$07
C - - - - - 0x01C0C4 07:C0B4: D0 0A     BNE bra_C0C0
C - - - - - 0x01C0C6 07:C0B6: A9 01     LDA #$01
C - - - - - 0x01C0C8 07:C0B8: 9D 0D 05  STA ram_050D,X
C - - - - - 0x01C0CB 07:C0BB: A9 1A     LDA #$1A
C - - - - - 0x01C0CD 07:C0BD: 20 E9 F7  JSR sub_F7E9
bra_C0C0:
C - - - - - 0x01C0D0 07:C0C0: A5 B4     LDA ram_00B4
C - - - - - 0x01C0D2 07:C0C2: C9 00     CMP #$00
C - - - - - 0x01C0D4 07:C0C4: F0 1B     BEQ bra_C0E1
C - - - - - 0x01C0D6 07:C0C6: A9 0A     LDA #$0A
C - - - - - 0x01C0D8 07:C0C8: 85 C7     STA ram_timer_before_demo
C - - - - - 0x01C0DA 07:C0CA: A5 B6     LDA ram_00B6
C - - - - - 0x01C0DC 07:C0CC: 29 02     AND #$02
C - - - - - 0x01C0DE 07:C0CE: F0 04     BEQ bra_C0D4
C - - - - - 0x01C0E0 07:C0D0: A9 07     LDA #$07
C - - - - - 0x01C0E2 07:C0D2: D0 08     BNE bra_C0DC
bra_C0D4:
C - - - - - 0x01C0E4 07:C0D4: A5 B6     LDA ram_00B6
C - - - - - 0x01C0E6 07:C0D6: 29 01     AND #$01
C - - - - - 0x01C0E8 07:C0D8: F0 07     BEQ bra_C0E1
C - - - - - 0x01C0EA 07:C0DA: A9 01     LDA #$01
bra_C0DC:
C - - - - - 0x01C0EC 07:C0DC: 18        CLC
C - - - - - 0x01C0ED 07:C0DD: 65 C9     ADC ram_00C9
C - - - - - 0x01C0EF 07:C0DF: 85 C9     STA ram_00C9
bra_C0E1:
C - - - - - 0x01C0F1 07:C0E1: A5 C9     LDA ram_00C9
C - - - - - 0x01C0F3 07:C0E3: C9 08     CMP #$08
C - - - - - 0x01C0F5 07:C0E5: 90 05     BCC bra_C0EC
C - - - - - 0x01C0F7 07:C0E7: 38        SEC
C - - - - - 0x01C0F8 07:C0E8: E9 08     SBC #$08
C - - - - - 0x01C0FA 07:C0EA: 85 C9     STA ram_00C9
bra_C0EC:
C - - - - - 0x01C0FC 07:C0EC: 0A        ASL
C - - - - - 0x01C0FD 07:C0ED: 0A        ASL
C - - - - - 0x01C0FE 07:C0EE: 0A        ASL
C - - - - - 0x01C0FF 07:C0EF: 18        CLC
C - - - - - 0x01C100 07:C0F0: 69 60     ADC #$60
C - - - - - 0x01C102 07:C0F2: 9D 02 03  STA ram_0302,X
bra_C0F5:
C - - - - - 0x01C105 07:C0F5: 20 BC E1  JSR sub_E1BC
C - - - - - 0x01C108 07:C0F8: 20 37 E3  JSR sub_E337
C - - - - - 0x01C10B 07:C0FB: 20 21 EA  JSR sub_EA21
C - - - - - 0x01C10E 07:C0FE: 60        RTS


; bzk garbage
- - - - - - 0x01C10F 07:C0FF: 60        RTS



sub_C100:
C - - - - - 0x01C110 07:C100: 20 5C F8  JSR sub_F85C
C - - - - - 0x01C113 07:C103: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C115 07:C105: 8D 00 70  STA $7000
C - - - - - 0x01C118 07:C108: A5 FA     LDA ram_00FA
C - - - - - 0x01C11A 07:C10A: F0 38     BEQ bra_C144
C - - - - - 0x01C11C 07:C10C: A9 00     LDA #$00
C - - - - - 0x01C11E 07:C10E: 85 FA     STA ram_00FA
C - - - - - 0x01C120 07:C110: AD 1E 05  LDA ram_051E
C - - - - - 0x01C123 07:C113: D0 05     BNE bra_C11A
C - - - - - 0x01C125 07:C115: A5 3B     LDA ram_p1_fighter
C - - - - - 0x01C127 07:C117: 4C 1C C1  JMP loc_C11C
bra_C11A:
C - - - - - 0x01C12A 07:C11A: A5 3C     LDA ram_p2_fighter
loc_C11C:
C D 2 - - - 0x01C12C 07:C11C: 85 DE     STA ram_00DE
C - - - - - 0x01C12E 07:C11E: A2 10     LDX #$10
C - - - - - 0x01C130 07:C120: 0A        ASL
C - - - - - 0x01C131 07:C121: A8        TAY
C - - - - - 0x01C132 07:C122: B9 1D C2  LDA tbl_C21D,Y
C - - - - - 0x01C135 07:C125: 85 DB     STA ram_00DB
C - - - - - 0x01C137 07:C127: B9 1E C2  LDA tbl_C21E,Y
C - - - - - 0x01C13A 07:C12A: 85 DC     STA ram_00DC
C - - - - - 0x01C13C 07:C12C: 98        TYA
C - - - - - 0x01C13D 07:C12D: 0A        ASL
C - - - - - 0x01C13E 07:C12E: 0A        ASL
C - - - - - 0x01C13F 07:C12F: 18        CLC
C - - - - - 0x01C140 07:C130: 65 DE     ADC ram_00DE
C - - - - - 0x01C142 07:C132: A4 0D     LDY ram_000D
C - - - - - 0x01C144 07:C134: 79 B3 C9  ADC tbl_C9B3,Y
C - - - - - 0x01C147 07:C137: 20 E0 EC  JSR sub_ECE0
C - - - - - 0x01C14A 07:C13A: A9 1E     LDA #$1E
C - - - - - 0x01C14C 07:C13C: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01C14F 07:C13F: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C151 07:C141: 8D 00 70  STA $7000
bra_C144:
C - - - - - 0x01C154 07:C144: A5 DF     LDA ram_00DF
C - - - - - 0x01C156 07:C146: D0 03     BNE bra_C14B
C - - - - - 0x01C158 07:C148: 4C 13 C2  JMP loc_C213
bra_C14B:
C - - - - - 0x01C15B 07:C14B: A9 00     LDA #$00
C - - - - - 0x01C15D 07:C14D: 20 25 FD  JSR sub_FD25
C - - - - - 0x01C160 07:C150: A9 01     LDA #$01
C - - - - - 0x01C162 07:C152: 20 25 FD  JSR sub_FD25
C - - - - - 0x01C165 07:C155: A2 10     LDX #$10
C - - - - - 0x01C167 07:C157: A0 00     LDY #$00
loc_C159:
C D 2 - - - 0x01C169 07:C159: BD 0D 05  LDA ram_050D,X
C - - - - - 0x01C16C 07:C15C: F0 08     BEQ bra_C166
C - - - - - 0x01C16E 07:C15E: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01C171 07:C161: D0 03     BNE bra_C166
C - - - - - 0x01C173 07:C163: 4C 08 C2  JMP loc_C208
bra_C166:
C - - - - - 0x01C176 07:C166: B9 B4 00  LDA a: ram_00B4,Y
C - - - - - 0x01C179 07:C169: C9 01     CMP #$01
C - - - - - 0x01C17B 07:C16B: F0 04     BEQ bra_C171
C - - - - - 0x01C17D 07:C16D: C9 03     CMP #$03
C - - - - - 0x01C17F 07:C16F: D0 26     BNE bra_C197
bra_C171:
C - - - - - 0x01C181 07:C171: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01C184 07:C174: F0 0F     BEQ bra_C185
C - - - - - 0x01C186 07:C176: A9 00     LDA #$00
C - - - - - 0x01C188 07:C178: 9D 0E 05  STA ram_050E,X
C - - - - - 0x01C18B 07:C17B: 9D 0D 05  STA ram_050D,X
C - - - - - 0x01C18E 07:C17E: A9 80     LDA #$80
C - - - - - 0x01C190 07:C180: 9D 00 03  STA ram_0300,X
C - - - - - 0x01C193 07:C183: D0 12     BNE bra_C197
bra_C185:
C - - - - - 0x01C195 07:C185: 98        TYA
C - - - - - 0x01C196 07:C186: 0A        ASL
C - - - - - 0x01C197 07:C187: 18        CLC
C - - - - - 0x01C198 07:C188: 69 5A     ADC #$5A
C - - - - - 0x01C19A 07:C18A: 20 39 E8  JSR sub_E839
C - - - - - 0x01C19D 07:C18D: A9 01     LDA #$01
C - - - - - 0x01C19F 07:C18F: 9D 0D 05  STA ram_050D,X
C - - - - - 0x01C1A2 07:C192: A9 1A     LDA #$1A
C - - - - - 0x01C1A4 07:C194: 20 E9 F7  JSR sub_F7E9
bra_C197:
C - - - - - 0x01C1A7 07:C197: B9 B4 00  LDA a: ram_00B4,Y
C - - - - - 0x01C1AA 07:C19A: C9 00     CMP #$00
C - - - - - 0x01C1AC 07:C19C: F0 31     BEQ bra_C1CF
C - - - - - 0x01C1AE 07:C19E: B9 B6 00  LDA a: ram_00B6,Y
C - - - - - 0x01C1B1 07:C1A1: 29 08     AND #$08
C - - - - - 0x01C1B3 07:C1A3: F0 04     BEQ bra_C1A9
C - - - - - 0x01C1B5 07:C1A5: A9 06     LDA #$06
C - - - - - 0x01C1B7 07:C1A7: D0 1F     BNE bra_C1C8
bra_C1A9:
C - - - - - 0x01C1B9 07:C1A9: B9 B6 00  LDA a: ram_00B6,Y
C - - - - - 0x01C1BC 07:C1AC: 29 04     AND #$04
C - - - - - 0x01C1BE 07:C1AE: F0 04     BEQ bra_C1B4
C - - - - - 0x01C1C0 07:C1B0: A9 03     LDA #$03
C - - - - - 0x01C1C2 07:C1B2: D0 14     BNE bra_C1C8
bra_C1B4:
C - - - - - 0x01C1C4 07:C1B4: B9 B6 00  LDA a: ram_00B6,Y
C - - - - - 0x01C1C7 07:C1B7: 29 02     AND #$02
C - - - - - 0x01C1C9 07:C1B9: F0 04     BEQ bra_C1BF
C - - - - - 0x01C1CB 07:C1BB: A9 08     LDA #$08
C - - - - - 0x01C1CD 07:C1BD: D0 09     BNE bra_C1C8
bra_C1BF:
C - - - - - 0x01C1CF 07:C1BF: B9 B6 00  LDA a: ram_00B6,Y
C - - - - - 0x01C1D2 07:C1C2: 29 01     AND #$01
C - - - - - 0x01C1D4 07:C1C4: F0 09     BEQ bra_C1CF
C - - - - - 0x01C1D6 07:C1C6: A9 01     LDA #$01
bra_C1C8:
C - - - - - 0x01C1D8 07:C1C8: 18        CLC
C - - - - - 0x01C1D9 07:C1C9: 79 F4 00  ADC a: ram_00F4,Y
C - - - - - 0x01C1DC 07:C1CC: 99 F4 00  STA a: ram_00F4,Y
bra_C1CF:
C - - - - - 0x01C1DF 07:C1CF: B9 F4 00  LDA a: ram_00F4,Y
C - - - - - 0x01C1E2 07:C1D2: C9 09     CMP #$09
C - - - - - 0x01C1E4 07:C1D4: 90 06     BCC bra_C1DC
C - - - - - 0x01C1E6 07:C1D6: 38        SEC
C - - - - - 0x01C1E7 07:C1D7: E9 09     SBC #$09
C - - - - - 0x01C1E9 07:C1D9: 99 F4 00  STA a: ram_00F4,Y
bra_C1DC:
C - - - - - 0x01C1EC 07:C1DC: 85 F6     STA ram_00F6
C - - - - - 0x01C1EE 07:C1DE: A9 00     LDA #$00
C - - - - - 0x01C1F0 07:C1E0: 85 F7     STA ram_00F7
loc_C1E2:
C D 2 - - - 0x01C1F2 07:C1E2: A5 F6     LDA ram_00F6
C - - - - - 0x01C1F4 07:C1E4: C9 03     CMP #$03
C - - - - - 0x01C1F6 07:C1E6: 90 0A     BCC bra_C1F2
C - - - - - 0x01C1F8 07:C1E8: 38        SEC
C - - - - - 0x01C1F9 07:C1E9: E9 03     SBC #$03
C - - - - - 0x01C1FB 07:C1EB: 85 F6     STA ram_00F6
C - - - - - 0x01C1FD 07:C1ED: E6 F7     INC ram_00F7
C - - - - - 0x01C1FF 07:C1EF: 4C E2 C1  JMP loc_C1E2
bra_C1F2:
C - - - - - 0x01C202 07:C1F2: A5 F6     LDA ram_00F6
C - - - - - 0x01C204 07:C1F4: 20 53 D9  JSR sub_D953_divide_by_20h
C - - - - - 0x01C207 07:C1F7: 18        CLC
C - - - - - 0x01C208 07:C1F8: 69 50     ADC #$50
C - - - - - 0x01C20A 07:C1FA: 9D 02 03  STA ram_0302,X
C - - - - - 0x01C20D 07:C1FD: A5 F7     LDA ram_00F7
C - - - - - 0x01C20F 07:C1FF: 20 53 D9  JSR sub_D953_divide_by_20h
C - - - - - 0x01C212 07:C202: 18        CLC
C - - - - - 0x01C213 07:C203: 69 80     ADC #$80
C - - - - - 0x01C215 07:C205: 9D 04 03  STA ram_0304,X
loc_C208:
C D 2 - - - 0x01C218 07:C208: E0 10     CPX #$10
C - - - - - 0x01C21A 07:C20A: D0 07     BNE bra_C213
C - - - - - 0x01C21C 07:C20C: A2 40     LDX #$40
C - - - - - 0x01C21E 07:C20E: A0 01     LDY #$01
C - - - - - 0x01C220 07:C210: 4C 59 C1  JMP loc_C159
bra_C213:
loc_C213:
C D 2 - - - 0x01C223 07:C213: 20 BC E1  JSR sub_E1BC
C - - - - - 0x01C226 07:C216: 20 37 E3  JSR sub_E337
C - - - - - 0x01C229 07:C219: 20 21 EA  JSR sub_EA21
C - - - - - 0x01C22C 07:C21C: 60        RTS



tbl_C21D:
- D 2 - - - 0x01C22D 07:C21D: 70        .byte $70   ; 
tbl_C21E:
- D 2 - - - 0x01C22E 07:C21E: 27        .byte $27   ; 
- D 2 - - - 0x01C22F 07:C21F: 80        .byte $80   ; 
- D 2 - - - 0x01C230 07:C220: 2F        .byte $2F   ; 
- D 2 - - - 0x01C231 07:C221: B0        .byte $B0   ; 
- D 2 - - - 0x01C232 07:C222: 1F        .byte $1F   ; 
- D 2 - - - 0x01C233 07:C223: A8        .byte $A8   ; 
- D 2 - - - 0x01C234 07:C224: 57        .byte $57   ; 
- D 2 - - - 0x01C235 07:C225: 50        .byte $50   ; 
- D 2 - - - 0x01C236 07:C226: 3F        .byte $3F   ; 
- D 2 - - - 0x01C237 07:C227: B8        .byte $B8   ; 
- D 2 - - - 0x01C238 07:C228: 37        .byte $37   ; 
- D 2 - - - 0x01C239 07:C229: 30        .byte $30   ; 
- D 2 - - - 0x01C23A 07:C22A: 1F        .byte $1F   ; 
- D 2 - - - 0x01C23B 07:C22B: 60        .byte $60   ; 
- D 2 - - - 0x01C23C 07:C22C: 4F        .byte $4F   ; 
- D 2 - - - 0x01C23D 07:C22D: 78        .byte $78   ; 
- D 2 - - - 0x01C23E 07:C22E: 47        .byte $47   ; 


; bzk garbage up to 0x01C400
- - - - - - 0x01C23F 07:C22F: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C242 07:C232: 29 40     AND #$40
- - - - - - 0x01C244 07:C234: D0 0E     BNE bra_C244
- - - - - - 0x01C246 07:C236: BD 01 04  LDA ram_0401,X
- - - - - - 0x01C249 07:C239: F0 12     BEQ bra_C24D
- - - - - - 0x01C24B 07:C23B: 30 10     BMI bra_C24D
- - - - - - 0x01C24D 07:C23D: 20 AA F0  JSR sub_F0AA
- - - - - - 0x01C250 07:C240: A5 28     LDA ram_0028
- - - - - - 0x01C252 07:C242: F0 09     BEQ bra_C24D
bra_C244:
- - - - - - 0x01C254 07:C244: 20 35 FA  JSR sub_FA35
- - - - - - 0x01C257 07:C247: A9 FF     LDA #$FF
- - - - - - 0x01C259 07:C249: 9D 01 05  STA ram_0501,X
bra_C24C_RTS:
- - - - - - 0x01C25C 07:C24C: 60        RTS
bra_C24D:
- - - - - - 0x01C25D 07:C24D: BD 0F 05  LDA ram_050F,X
- - - - - - 0x01C260 07:C250: D0 FA     BNE bra_C24C_RTS
- - - - - - 0x01C262 07:C252: A5 2F     LDA ram_002F
- - - - - - 0x01C264 07:C254: F0 F6     BEQ bra_C24C_RTS
- - - - - - 0x01C266 07:C256: EA        NOP
- - - - - - 0x01C267 07:C257: EA        NOP
- - - - - - 0x01C268 07:C258: BD 0A 05  LDA ram_050A,X
- - - - - - 0x01C26B 07:C25B: C9 08     CMP #$08
- - - - - - 0x01C26D 07:C25D: D0 55     BNE bra_C2B4
- - - - - - 0x01C26F 07:C25F: BD 0B 03  LDA ram_030B,X
- - - - - - 0x01C272 07:C262: C9 3C     CMP #$3C
- - - - - - 0x01C274 07:C264: D0 0C     BNE bra_C272
- - - - - - 0x01C276 07:C266: 20 83 F3  JSR sub_F383
- - - - - - 0x01C279 07:C269: C9 28     CMP #$28
- - - - - - 0x01C27B 07:C26B: B0 DF     BCS bra_C24C_RTS
- - - - - - 0x01C27D 07:C26D: A9 3D     LDA #$3D
- - - - - - 0x01C27F 07:C26F: 4C ED C3  JMP loc_C3ED
bra_C272:
- - - - - - 0x01C282 07:C272: C9 3E     CMP #$3E
- - - - - - 0x01C284 07:C274: F0 03     BEQ bra_C279
- - - - - - 0x01C286 07:C276: 4C 23 C3  JMP loc_C323
bra_C279:
- - - - - - 0x01C289 07:C279: BD 01 04  LDA ram_0401,X
- - - - - - 0x01C28C 07:C27C: F0 CE     BEQ bra_C24C_RTS
- - - - - - 0x01C28E 07:C27E: 30 CC     BMI bra_C24C_RTS
- - - - - - 0x01C290 07:C280: 8A        TXA
- - - - - - 0x01C291 07:C281: 48        PHA
- - - - - - 0x01C292 07:C282: BA        TSX
- - - - - - 0x01C293 07:C283: BD 07 01  LDA ram_0107,X
- - - - - - 0x01C296 07:C286: 99 0E 05  STA ram_050E,Y
- - - - - - 0x01C299 07:C289: 68        PLA
- - - - - - 0x01C29A 07:C28A: AA        TAX
- - - - - - 0x01C29B 07:C28B: BD 0E 05  LDA ram_050E,X
- - - - - - 0x01C29E 07:C28E: F0 0F     BEQ bra_C29F
- - - - - - 0x01C2A0 07:C290: B9 04 03  LDA ram_0304,Y
- - - - - - 0x01C2A3 07:C293: FD 04 03  SBC ram_0304,X
- - - - - - 0x01C2A6 07:C296: C9 4B     CMP #$4B
- - - - - - 0x01C2A8 07:C298: B0 B2     BCS bra_C24C_RTS
- - - - - - 0x01C2AA 07:C29A: A9 39     LDA #$39
- - - - - - 0x01C2AC 07:C29C: 4C ED C3  JMP loc_C3ED
bra_C29F:
- - - - - - 0x01C2AF 07:C29F: A5 21     LDA ram_0021
- - - - - - 0x01C2B1 07:C2A1: C9 01     CMP #$01
- - - - - - 0x01C2B3 07:C2A3: D0 A7     BNE bra_C24C_RTS
- - - - - - 0x01C2B5 07:C2A5: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C2B8 07:C2A8: 29 DF     AND #$DF
- - - - - - 0x01C2BA 07:C2AA: 9D 00 03  STA ram_0300,X
- - - - - - 0x01C2BD 07:C2AD: EA        NOP
- - - - - - 0x01C2BE 07:C2AE: EA        NOP
- - - - - - 0x01C2BF 07:C2AF: A9 39     LDA #$39
- - - - - - 0x01C2C1 07:C2B1: 4C ED C3  JMP loc_C3ED
bra_C2B4:
- - - - - - 0x01C2C4 07:C2B4: C9 06     CMP #$06
- - - - - - 0x01C2C6 07:C2B6: D0 6B     BNE bra_C323
- - - - - - 0x01C2C8 07:C2B8: BD 0B 03  LDA ram_030B,X
- - - - - - 0x01C2CB 07:C2BB: EA        NOP
- - - - - - 0x01C2CC 07:C2BC: EA        NOP
- - - - - - 0x01C2CD 07:C2BD: C9 3C     CMP #$3C
- - - - - - 0x01C2CF 07:C2BF: D0 27     BNE bra_C2E8
- - - - - - 0x01C2D1 07:C2C1: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C2D4 07:C2C4: 29 02     AND #$02
- - - - - - 0x01C2D6 07:C2C6: F0 84     BEQ bra_C24C_RTS
- - - - - - 0x01C2D8 07:C2C8: BD 02 03  LDA ram_0302,X
- - - - - - 0x01C2DB 07:C2CB: C9 80     CMP #$80
- - - - - - 0x01C2DD 07:C2CD: B0 04     BCS bra_C2D3
- - - - - - 0x01C2DF 07:C2CF: A9 00     LDA #$00
- - - - - - 0x01C2E1 07:C2D1: F0 02     BEQ bra_C2D5
bra_C2D3:
- - - - - - 0x01C2E3 07:C2D3: A9 01     LDA #$01
bra_C2D5:
- - - - - - 0x01C2E5 07:C2D5: 20 6F EF  JSR sub_EF6F
- - - - - - 0x01C2E8 07:C2D8: BD 01 04  LDA ram_0401,X
- - - - - - 0x01C2EB 07:C2DB: 49 FF     EOR #$FF
- - - - - - 0x01C2ED 07:C2DD: 18        CLC
- - - - - - 0x01C2EE 07:C2DE: 69 01     ADC #$01
- - - - - - 0x01C2F0 07:C2E0: 9D 01 04  STA ram_0401,X
- - - - - - 0x01C2F3 07:C2E3: A9 3D     LDA #$3D
- - - - - - 0x01C2F5 07:C2E5: 4C ED C3  JMP loc_C3ED
bra_C2E8:
- - - - - - 0x01C2F8 07:C2E8: C9 3D     CMP #$3D
- - - - - - 0x01C2FA 07:C2EA: D0 37     BNE bra_C323
- - - - - - 0x01C2FC 07:C2EC: BD 0E 05  LDA ram_050E,X
- - - - - - 0x01C2FF 07:C2EF: F0 13     BEQ bra_C304
- - - - - - 0x01C301 07:C2F1: B9 04 03  LDA ram_0304,Y
- - - - - - 0x01C304 07:C2F4: FD 04 03  SBC ram_0304,X
- - - - - - 0x01C307 07:C2F7: A0 08     LDY #$08
- - - - - - 0x01C309 07:C2F9: EA        NOP
- - - - - - 0x01C30A 07:C2FA: EA        NOP
- - - - - - 0x01C30B 07:C2FB: C9 4B     CMP #$4B
- - - - - - 0x01C30D 07:C2FD: B0 05     BCS bra_C304
- - - - - - 0x01C30F 07:C2FF: A9 3E     LDA #$3E
- - - - - - 0x01C311 07:C301: 4C ED C3  JMP loc_C3ED
bra_C304:
- - - - - - 0x01C314 07:C304: 20 83 F3  JSR sub_F383
- - - - - - 0x01C317 07:C307: 4A        LSR
- - - - - - 0x01C318 07:C308: 4A        LSR
- - - - - - 0x01C319 07:C309: 4A        LSR
- - - - - - 0x01C31A 07:C30A: A0 00     LDY #$00
- - - - - - 0x01C31C 07:C30C: EA        NOP
- - - - - - 0x01C31D 07:C30D: EA        NOP
- - - - - - 0x01C31E 07:C30E: 48        PHA
- - - - - - 0x01C31F 07:C30F: BD 00 04  LDA ram_0400,X
- - - - - - 0x01C322 07:C312: 10 07     BPL bra_C31B
- - - - - - 0x01C324 07:C314: 68        PLA
- - - - - - 0x01C325 07:C315: 49 FF     EOR #$FF
- - - - - - 0x01C327 07:C317: 18        CLC
- - - - - - 0x01C328 07:C318: 69 01     ADC #$01
- - - - - - 0x01C32A 07:C31A: 48        PHA
bra_C31B:
- - - - - - 0x01C32B 07:C31B: 68        PLA
- - - - - - 0x01C32C 07:C31C: A0 01     LDY #$01
- - - - - - 0x01C32E 07:C31E: EA        NOP
- - - - - - 0x01C32F 07:C31F: EA        NOP
- - - - - - 0x01C330 07:C320: 4C 23 C3  JMP loc_C323
bra_C323:
loc_C323:
- - - - - - 0x01C333 07:C323: BD 0E 05  LDA ram_050E,X
- - - - - - 0x01C336 07:C326: F0 04     BEQ bra_C32C
- - - - - - 0x01C338 07:C328: 20 24 DA  JSR sub_DA24
- - - - - - 0x01C33B 07:C32B: 60        RTS
bra_C32C:
- - - - - - 0x01C33C 07:C32C: BD 0A 05  LDA ram_050A,X
- - - - - - 0x01C33F 07:C32F: C9 00     CMP #$00
- - - - - - 0x01C341 07:C331: D0 2C     BNE bra_C35F
- - - - - - 0x01C343 07:C333: 20 49 FA  JSR sub_FA49
- - - - - - 0x01C346 07:C336: C9 00     CMP #$00
- - - - - - 0x01C348 07:C338: F0 03     BEQ bra_C33D
- - - - - - 0x01C34A 07:C33A: 4C F0 C3  JMP loc_C3F0_RTS
bra_C33D:
- - - - - - 0x01C34D 07:C33D: A5 22     LDA ram_0022
- - - - - - 0x01C34F 07:C33F: 29 04     AND #$04
- - - - - - 0x01C351 07:C341: C9 04     CMP #$04
- - - - - - 0x01C353 07:C343: D0 74     BNE bra_C3B9
- - - - - - 0x01C355 07:C345: A5 21     LDA ram_0021
- - - - - - 0x01C357 07:C347: C9 03     CMP #$03
- - - - - - 0x01C359 07:C349: D0 6E     BNE bra_C3B9
- - - - - - 0x01C35B 07:C34B: BD 01 04  LDA ram_0401,X
- - - - - - 0x01C35E 07:C34E: D0 05     BNE bra_C355
- - - - - - 0x01C360 07:C350: BD 05 04  LDA ram_0405,X
- - - - - - 0x01C363 07:C353: F0 64     BEQ bra_C3B9
bra_C355:
- - - - - - 0x01C365 07:C355: A9 80     LDA #$80
- - - - - - 0x01C367 07:C357: A8        TAY
- - - - - - 0x01C368 07:C358: EA        NOP
- - - - - - 0x01C369 07:C359: EA        NOP
- - - - - - 0x01C36A 07:C35A: A9 40     LDA #$40
- - - - - - 0x01C36C 07:C35C: 4C ED C3  JMP loc_C3ED
bra_C35F:
- - - - - - 0x01C36F 07:C35F: C9 04     CMP #$04
- - - - - - 0x01C371 07:C361: D0 2F     BNE bra_C392
- - - - - - 0x01C373 07:C363: BD 04 03  LDA ram_0304,X
- - - - - - 0x01C376 07:C366: C9 80     CMP #$80
- - - - - - 0x01C378 07:C368: B0 4F     BCS bra_C3B9
- - - - - - 0x01C37A 07:C36A: BD 01 04  LDA ram_0401,X
- - - - - - 0x01C37D 07:C36D: C9 04     CMP #$04
- - - - - - 0x01C37F 07:C36F: 90 04     BCC bra_C375
- - - - - - 0x01C381 07:C371: C9 FC     CMP #$FC
- - - - - - 0x01C383 07:C373: 90 44     BCC bra_C3B9
bra_C375:
- - - - - - 0x01C385 07:C375: A5 23     LDA ram_0023
- - - - - - 0x01C387 07:C377: C9 03     CMP #$03
- - - - - - 0x01C389 07:C379: D0 09     BNE bra_C384
- - - - - - 0x01C38B 07:C37B: A9 07     LDA #$07
- - - - - - 0x01C38D 07:C37D: EA        NOP
- - - - - - 0x01C38E 07:C37E: EA        NOP
- - - - - - 0x01C38F 07:C37F: A9 3D     LDA #$3D
- - - - - - 0x01C391 07:C381: 4C ED C3  JMP loc_C3ED
bra_C384:
- - - - - - 0x01C394 07:C384: C9 04     CMP #$04
- - - - - - 0x01C396 07:C386: D0 31     BNE bra_C3B9
- - - - - - 0x01C398 07:C388: A9 05     LDA #$05
- - - - - - 0x01C39A 07:C38A: 9D 0F 05  STA ram_050F,X
- - - - - - 0x01C39D 07:C38D: A9 3E     LDA #$3E
- - - - - - 0x01C39F 07:C38F: 4C ED C3  JMP loc_C3ED
bra_C392:
- - - - - - 0x01C3A2 07:C392: C9 06     CMP #$06
- - - - - - 0x01C3A4 07:C394: D0 23     BNE bra_C3B9
- - - - - - 0x01C3A6 07:C396: 20 49 FA  JSR sub_FA49
- - - - - - 0x01C3A9 07:C399: C9 00     CMP #$00
- - - - - - 0x01C3AB 07:C39B: F0 03     BEQ bra_C3A0
- - - - - - 0x01C3AD 07:C39D: 4C F0 C3  JMP loc_C3F0_RTS
bra_C3A0:
- - - - - - 0x01C3B0 07:C3A0: BD 0B 03  LDA ram_030B,X
- - - - - - 0x01C3B3 07:C3A3: C9 3D     CMP #$3D
- - - - - - 0x01C3B5 07:C3A5: D0 12     BNE bra_C3B9
- - - - - - 0x01C3B7 07:C3A7: A5 21     LDA ram_0021
- - - - - - 0x01C3B9 07:C3A9: C9 01     CMP #$01
- - - - - - 0x01C3BB 07:C3AB: D0 43     BNE bra_C3F0_RTS
- - - - - - 0x01C3BD 07:C3AD: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C3C0 07:C3B0: 29 DF     AND #$DF
- - - - - - 0x01C3C2 07:C3B2: EA        NOP
- - - - - - 0x01C3C3 07:C3B3: EA        NOP
- - - - - - 0x01C3C4 07:C3B4: A9 3E     LDA #$3E
- - - - - - 0x01C3C6 07:C3B6: 4C ED C3  JMP loc_C3ED
bra_C3B9:
- - - - - - 0x01C3C9 07:C3B9: A5 23     LDA ram_0023
- - - - - - 0x01C3CB 07:C3BB: C9 01     CMP #$01
- - - - - - 0x01C3CD 07:C3BD: D0 05     BNE bra_C3C4
- - - - - - 0x01C3CF 07:C3BF: A9 38     LDA #$38
- - - - - - 0x01C3D1 07:C3C1: 4C DF C3  JMP loc_C3DF
bra_C3C4:
- - - - - - 0x01C3D4 07:C3C4: C9 02     CMP #$02
- - - - - - 0x01C3D6 07:C3C6: D0 05     BNE bra_C3CD
- - - - - - 0x01C3D8 07:C3C8: A9 2E     LDA #$2E
- - - - - - 0x01C3DA 07:C3CA: 4C DF C3  JMP loc_C3DF
bra_C3CD:
- - - - - - 0x01C3DD 07:C3CD: C9 03     CMP #$03
- - - - - - 0x01C3DF 07:C3CF: D0 05     BNE bra_C3D6
- - - - - - 0x01C3E1 07:C3D1: A9 39     LDA #$39
- - - - - - 0x01C3E3 07:C3D3: 4C DF C3  JMP loc_C3DF
bra_C3D6:
- - - - - - 0x01C3E6 07:C3D6: C9 04     CMP #$04
- - - - - - 0x01C3E8 07:C3D8: D0 16     BNE bra_C3F0_RTS
- - - - - - 0x01C3EA 07:C3DA: A9 2F     LDA #$2F
- - - - - - 0x01C3EC 07:C3DC: 4C DF C3  JMP loc_C3DF
loc_C3DF:
- - - - - - 0x01C3EF 07:C3DF: 48        PHA
- - - - - - 0x01C3F0 07:C3E0: BD 00 04  LDA ram_0400,X
- - - - - - 0x01C3F3 07:C3E3: F0 07     BEQ bra_C3EC
- - - - - - 0x01C3F5 07:C3E5: 68        PLA
- - - - - - 0x01C3F6 07:C3E6: 18        CLC
- - - - - - 0x01C3F7 07:C3E7: 69 02     ADC #$02
- - - - - - 0x01C3F9 07:C3E9: 4C ED C3  JMP loc_C3ED
bra_C3EC:
- - - - - - 0x01C3FC 07:C3EC: 68        PLA
loc_C3ED:
- - - - - - 0x01C3FD 07:C3ED: 20 85 E8  JSR sub_E885
bra_C3F0_RTS:
loc_C3F0_RTS:
- - - - - - 0x01C400 07:C3F0: 60        RTS


; bzk garbage
- - - - - - 0x01C401 07:C3F1: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C404 07:C3F4: 29 40     AND #$40
- - - - - - 0x01C406 07:C3F6: F0 0D     BEQ bra_C405
- - - - - - 0x01C408 07:C3F8: A5 2F     LDA ram_002F
- - - - - - 0x01C40A 07:C3FA: F0 09     BEQ bra_C405
- - - - - - 0x01C40C 07:C3FC: BD 0E 05  LDA ram_050E,X
- - - - - - 0x01C40F 07:C3FF: F0 04     BEQ bra_C405
- - - - - - 0x01C411 07:C401: 20 24 DA  JSR sub_DA24
- - - - - - 0x01C414 07:C404: 60        RTS
bra_C405:
- - - - - - 0x01C415 07:C405: A5 23     LDA ram_0023
- - - - - - 0x01C417 07:C407: D0 4A     BNE bra_C453
- - - - - - 0x01C419 07:C409: A5 22     LDA ram_0022
- - - - - - 0x01C41B 07:C40B: 29 04     AND #$04
- - - - - - 0x01C41D 07:C40D: D0 05     BNE bra_C414
- - - - - - 0x01C41F 07:C40F: A9 00     LDA #$00
- - - - - - 0x01C421 07:C411: 4C 82 C4  JMP loc_C482
bra_C414:
- - - - - - 0x01C424 07:C414: B9 10 03  LDA ram_0310,Y
- - - - - - 0x01C427 07:C417: 30 07     BMI bra_C420
- - - - - - 0x01C429 07:C419: B9 0F 05  LDA ram_050F,Y
- - - - - - 0x01C42C 07:C41C: 29 04     AND #$04
- - - - - - 0x01C42E 07:C41E: F0 33     BEQ bra_C453
bra_C420:
- - - - - - 0x01C430 07:C420: 8A        TXA
- - - - - - 0x01C431 07:C421: 48        PHA
- - - - - - 0x01C432 07:C422: BA        TSX
- - - - - - 0x01C433 07:C423: BD 0B 01  LDA ram_010B,X
- - - - - - 0x01C436 07:C426: 99 06 03  STA ram_0306,Y
- - - - - - 0x01C439 07:C429: 68        PLA
- - - - - - 0x01C43A 07:C42A: AA        TAX
- - - - - - 0x01C43B 07:C42B: A5 22     LDA ram_0022
- - - - - - 0x01C43D 07:C42D: 29 03     AND #$03
- - - - - - 0x01C43F 07:C42F: F0 22     BEQ bra_C453
- - - - - - 0x01C441 07:C431: 29 02     AND #$02
- - - - - - 0x01C443 07:C433: F0 09     BEQ bra_C43E
- - - - - - 0x01C445 07:C435: BD 01 03  LDA ram_0301,X
- - - - - - 0x01C448 07:C438: 29 40     AND #$40
- - - - - - 0x01C44A 07:C43A: D0 17     BNE bra_C453
- - - - - - 0x01C44C 07:C43C: F0 07     BEQ bra_C445
bra_C43E:
- - - - - - 0x01C44E 07:C43E: BD 01 03  LDA ram_0301,X
- - - - - - 0x01C451 07:C441: 29 40     AND #$40
- - - - - - 0x01C453 07:C443: F0 0E     BEQ bra_C453
bra_C445:
- - - - - - 0x01C455 07:C445: A5 22     LDA ram_0022
- - - - - - 0x01C457 07:C447: 29 C8     AND #$C8
- - - - - - 0x01C459 07:C449: D0 08     BNE bra_C453
- - - - - - 0x01C45B 07:C44B: 20 05 F1  JSR sub_F105
- - - - - - 0x01C45E 07:C44E: A9 0A     LDA #$0A
- - - - - - 0x01C460 07:C450: 4C 82 C4  JMP loc_C482
bra_C453:
- - - - - - 0x01C463 07:C453: A5 23     LDA ram_0023
- - - - - - 0x01C465 07:C455: C9 01     CMP #$01
- - - - - - 0x01C467 07:C457: D0 05     BNE bra_C45E
- - - - - - 0x01C469 07:C459: A9 36     LDA #$36
- - - - - - 0x01C46B 07:C45B: 4C 79 C4  JMP loc_C479
bra_C45E:
- - - - - - 0x01C46E 07:C45E: C9 02     CMP #$02
- - - - - - 0x01C470 07:C460: D0 05     BNE bra_C467
- - - - - - 0x01C472 07:C462: A9 2C     LDA #$2C
- - - - - - 0x01C474 07:C464: 4C 79 C4  JMP loc_C479
bra_C467:
- - - - - - 0x01C477 07:C467: C9 03     CMP #$03
- - - - - - 0x01C479 07:C469: D0 05     BNE bra_C470
- - - - - - 0x01C47B 07:C46B: A9 37     LDA #$37
- - - - - - 0x01C47D 07:C46D: 4C 79 C4  JMP loc_C479
bra_C470:
- - - - - - 0x01C480 07:C470: C9 04     CMP #$04
- - - - - - 0x01C482 07:C472: D0 11     BNE bra_C485_RTS
- - - - - - 0x01C484 07:C474: A9 2D     LDA #$2D
- - - - - - 0x01C486 07:C476: 4C 79 C4  JMP loc_C479
loc_C479:
- - - - - - 0x01C489 07:C479: 48        PHA
- - - - - - 0x01C48A 07:C47A: 20 05 F1  JSR sub_F105
- - - - - - 0x01C48D 07:C47D: 68        PLA
- - - - - - 0x01C48E 07:C47E: A0 0A     LDY #$0A
- - - - - - 0x01C490 07:C480: EA        NOP
- - - - - - 0x01C491 07:C481: EA        NOP
loc_C482:
- - - - - - 0x01C492 07:C482: 20 85 E8  JSR sub_E885
bra_C485_RTS:
- - - - - - 0x01C495 07:C485: 60        RTS


; bzk garbage
- - - - - - 0x01C496 07:C486: 85 D8     STA ram_00D8
- - - - - - 0x01C498 07:C488: 86 D9     STX ram_00D9
- - - - - - 0x01C49A 07:C48A: 84 DA     STY ram_00DA
- - - - - - 0x01C49C 07:C48C: A2 70     LDX #$70
loc_C48E:
- - - - - - 0x01C49E 07:C48E: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C4A1 07:C491: 10 0C     BPL bra_C49F
- - - - - - 0x01C4A3 07:C493: 8A        TXA
- - - - - - 0x01C4A4 07:C494: 18        CLC
- - - - - - 0x01C4A5 07:C495: 69 10     ADC #$10
- - - - - - 0x01C4A7 07:C497: C9 D0     CMP #$D0
- - - - - - 0x01C4A9 07:C499: B0 35     BCS bra_C4D0
- - - - - - 0x01C4AB 07:C49B: AA        TAX
- - - - - - 0x01C4AC 07:C49C: 4C 8E C4  JMP loc_C48E
bra_C49F:
- - - - - - 0x01C4AF 07:C49F: 86 DD     STX ram_00DD
- - - - - - 0x01C4B1 07:C4A1: 20 22 EF  JSR sub_EF22
- - - - - - 0x01C4B4 07:C4A4: A9 00     LDA #$00
- - - - - - 0x01C4B6 07:C4A6: 9D 03 03  STA ram_0303,X
- - - - - - 0x01C4B9 07:C4A9: EA        NOP
- - - - - - 0x01C4BA 07:C4AA: EA        NOP
- - - - - - 0x01C4BB 07:C4AB: A5 DB     LDA ram_00DB
- - - - - - 0x01C4BD 07:C4AD: 9D 02 03  STA ram_0302,X
- - - - - - 0x01C4C0 07:C4B0: A5 DC     LDA ram_00DC
- - - - - - 0x01C4C2 07:C4B2: 9D 04 03  STA ram_0304,X
- - - - - - 0x01C4C5 07:C4B5: A4 D9     LDY ram_00D9
- - - - - - 0x01C4C7 07:C4B7: B9 01 03  LDA ram_0301,Y
- - - - - - 0x01C4CA 07:C4BA: 29 80     AND #$80
- - - - - - 0x01C4CC 07:C4BC: 9D 01 03  STA ram_0301,X
- - - - - - 0x01C4CF 07:C4BF: B9 0C 03  LDA ram_030C,Y
- - - - - - 0x01C4D2 07:C4C2: 9D 0C 03  STA ram_030C,X
- - - - - - 0x01C4D5 07:C4C5: B9 0A 05  LDA ram_050A,Y
- - - - - - 0x01C4D8 07:C4C8: 9D 0A 05  STA ram_050A,X
- - - - - - 0x01C4DB 07:C4CB: A5 D8     LDA ram_00D8
- - - - - - 0x01C4DD 07:C4CD: 20 85 E8  JSR sub_E885
bra_C4D0:
- - - - - - 0x01C4E0 07:C4D0: A5 D8     LDA ram_00D8
- - - - - - 0x01C4E2 07:C4D2: A6 D9     LDX ram_00D9
- - - - - - 0x01C4E4 07:C4D4: A4 DA     LDY ram_00DA
- - - - - - 0x01C4E6 07:C4D6: 60        RTS


; bzk garbage
- - - - - - 0x01C4E7 07:C4D7: 98        TYA
- - - - - - 0x01C4E8 07:C4D8: 48        PHA
- - - - - - 0x01C4E9 07:C4D9: E0 10     CPX #$10
- - - - - - 0x01C4EB 07:C4DB: D0 09     BNE bra_C4E6
- - - - - - 0x01C4ED 07:C4DD: A0 00     LDY #$00
- - - - - - 0x01C4EF 07:C4DF: A9 16     LDA #$16
- - - - - - 0x01C4F1 07:C4E1: EA        NOP
- - - - - - 0x01C4F2 07:C4E2: EA        NOP
- - - - - - 0x01C4F3 07:C4E3: 4C E8 C4  JMP loc_C4E8
bra_C4E6:
- - - - - - 0x01C4F6 07:C4E6: A0 01     LDY #$01
loc_C4E8:
- - - - - - 0x01C4F8 07:C4E8: B9 E8 00  LDA a: ram_00E8,Y
- - - - - - 0x01C4FB 07:C4EB: C9 2D     CMP #$2D
- - - - - - 0x01C4FD 07:C4ED: 90 5D     BCC bra_C54C
- - - - - - 0x01C4FF 07:C4EF: B9 E6 00  LDA a: ram_00E6,Y
- - - - - - 0x01C502 07:C4F2: C9 06     CMP #$06
- - - - - - 0x01C504 07:C4F4: B0 56     BCS bra_C54C
- - - - - - 0x01C506 07:C4F6: B9 E2 00  LDA a: ram_00E2,Y
- - - - - - 0x01C509 07:C4F9: 29 04     AND #$04
- - - - - - 0x01C50B 07:C4FB: F0 14     BEQ bra_C511
- - - - - - 0x01C50D 07:C4FD: B9 E0 00  LDA a: ram_00E0,Y
- - - - - - 0x01C510 07:C500: C9 08     CMP #$08
- - - - - - 0x01C512 07:C502: 90 0D     BCC bra_C511
- - - - - - 0x01C514 07:C504: A5 21     LDA ram_0021
- - - - - - 0x01C516 07:C506: C9 03     CMP #$03
- - - - - - 0x01C518 07:C508: D0 07     BNE bra_C511
- - - - - - 0x01C51A 07:C50A: A9 01     LDA #$01
- - - - - - 0x01C51C 07:C50C: 85 24     STA ram_0024
- - - - - - 0x01C51E 07:C50E: 4C 6E C5  JMP loc_C56E
bra_C511:
- - - - - - 0x01C521 07:C511: BD 01 03  LDA ram_0301,X
- - - - - - 0x01C524 07:C514: 29 40     AND #$40
- - - - - - 0x01C526 07:C516: D0 0E     BNE bra_C526
- - - - - - 0x01C528 07:C518: B9 E2 00  LDA a: ram_00E2,Y
- - - - - - 0x01C52B 07:C51B: 29 02     AND #$02
- - - - - - 0x01C52D 07:C51D: F0 2D     BEQ bra_C54C
- - - - - - 0x01C52F 07:C51F: B9 E0 00  LDA a: ram_00E0,Y
- - - - - - 0x01C532 07:C522: C9 01     CMP #$01
- - - - - - 0x01C534 07:C524: F0 0E     BEQ bra_C534
bra_C526:
- - - - - - 0x01C536 07:C526: B9 E2 00  LDA a: ram_00E2,Y
- - - - - - 0x01C539 07:C529: 29 01     AND #$01
- - - - - - 0x01C53B 07:C52B: F0 1F     BEQ bra_C54C
- - - - - - 0x01C53D 07:C52D: B9 E0 00  LDA a: ram_00E0,Y
- - - - - - 0x01C540 07:C530: C9 02     CMP #$02
- - - - - - 0x01C542 07:C532: D0 18     BNE bra_C54C
bra_C534:
- - - - - - 0x01C544 07:C534: A5 21     LDA ram_0021
- - - - - - 0x01C546 07:C536: C9 01     CMP #$01
- - - - - - 0x01C548 07:C538: D0 07     BNE bra_C541
- - - - - - 0x01C54A 07:C53A: A9 04     LDA #$04
- - - - - - 0x01C54C 07:C53C: EA        NOP
- - - - - - 0x01C54D 07:C53D: EA        NOP
- - - - - - 0x01C54E 07:C53E: 4C 6E C5  JMP loc_C56E
bra_C541:
- - - - - - 0x01C551 07:C541: C9 03     CMP #$03
- - - - - - 0x01C553 07:C543: D0 07     BNE bra_C54C
- - - - - - 0x01C555 07:C545: A9 03     LDA #$03
- - - - - - 0x01C557 07:C547: 85 24     STA ram_0024
- - - - - - 0x01C559 07:C549: 4C 6E C5  JMP loc_C56E
bra_C54C:
- - - - - - 0x01C55C 07:C54C: 20 0D F7  JSR sub_F70D
- - - - - - 0x01C55F 07:C54F: A5 24     LDA ram_0024
- - - - - - 0x01C561 07:C551: D0 1B     BNE bra_C56E
- - - - - - 0x01C563 07:C553: B9 F0 00  LDA a: ram_00F0,Y
- - - - - - 0x01C566 07:C556: C9 0A     CMP #$0A
- - - - - - 0x01C568 07:C558: 90 14     BCC bra_C56E
- - - - - - 0x01C56A 07:C55A: A5 21     LDA ram_0021
- - - - - - 0x01C56C 07:C55C: C9 01     CMP #$01
- - - - - - 0x01C56E 07:C55E: D0 04     BNE bra_C564
- - - - - - 0x01C570 07:C560: A9 0A     LDA #$0A
- - - - - - 0x01C572 07:C562: D0 08     BNE bra_C56C    ; jmp
bra_C564:
- - - - - - 0x01C574 07:C564: A5 21     LDA ram_0021
- - - - - - 0x01C576 07:C566: C9 03     CMP #$03
- - - - - - 0x01C578 07:C568: D0 04     BNE bra_C56E
- - - - - - 0x01C57A 07:C56A: A9 0B     LDA #$0B
bra_C56C:
- - - - - - 0x01C57C 07:C56C: EA        NOP
- - - - - - 0x01C57D 07:C56D: EA        NOP
bra_C56E:
loc_C56E:
- - - - - - 0x01C57E 07:C56E: 68        PLA
- - - - - - 0x01C57F 07:C56F: A8        TAY
- - - - - - 0x01C580 07:C570: 60        RTS


; bzk garbage
- - - - - - 0x01C581 07:C571: FE 0B 05  INC ram_050B,X
- - - - - - 0x01C584 07:C574: A9 00     LDA #$00
- - - - - - 0x01C586 07:C576: 85 24     STA ram_0024
- - - - - - 0x01C588 07:C578: A5 21     LDA ram_0021
- - - - - - 0x01C58A 07:C57A: C9 01     CMP #$01
- - - - - - 0x01C58C 07:C57C: F0 04     BEQ bra_C582
- - - - - - 0x01C58E 07:C57E: C9 03     CMP #$03
- - - - - - 0x01C590 07:C580: D0 11     BNE bra_C593
bra_C582:
- - - - - - 0x01C592 07:C582: 20 77 F6  JSR sub_F677
- - - - - - 0x01C595 07:C585: A9 00     LDA #$00
- - - - - - 0x01C597 07:C587: 9D 0B 05  STA ram_050B,X
- - - - - - 0x01C59A 07:C58A: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C59D 07:C58D: 09 20     ORA #$20
- - - - - - 0x01C59F 07:C58F: A0 04     LDY #$04
- - - - - - 0x01C5A1 07:C591: EA        NOP
- - - - - - 0x01C5A2 07:C592: EA        NOP
bra_C593:
- - - - - - 0x01C5A3 07:C593: BD 0F 05  LDA ram_050F,X
- - - - - - 0x01C5A6 07:C596: D0 32     BNE bra_C5CA
- - - - - - 0x01C5A8 07:C598: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C5AB 07:C59B: 29 20     AND #$20
- - - - - - 0x01C5AD 07:C59D: F0 2B     BEQ bra_C5CA
- - - - - - 0x01C5AF 07:C59F: A5 21     LDA ram_0021
- - - - - - 0x01C5B1 07:C5A1: C9 02     CMP #$02
- - - - - - 0x01C5B3 07:C5A3: D0 05     BNE bra_C5AA
- - - - - - 0x01C5B5 07:C5A5: A9 01     LDA #$01
- - - - - - 0x01C5B7 07:C5A7: 4C CF C5  JMP loc_C5CF
bra_C5AA:
- - - - - - 0x01C5BA 07:C5AA: C9 04     CMP #$04
- - - - - - 0x01C5BC 07:C5AC: D0 05     BNE bra_C5B3
- - - - - - 0x01C5BE 07:C5AE: A9 02     LDA #$02
- - - - - - 0x01C5C0 07:C5B0: 4C CF C5  JMP loc_C5CF
bra_C5B3:
- - - - - - 0x01C5C3 07:C5B3: BD 0B 05  LDA ram_050B,X
- - - - - - 0x01C5C6 07:C5B6: C9 08     CMP #$08
- - - - - - 0x01C5C8 07:C5B8: 90 10     BCC bra_C5CA
- - - - - - 0x01C5CA 07:C5BA: 24 22     BIT ram_0022
- - - - - - 0x01C5CC 07:C5BC: 10 05     BPL bra_C5C3
- - - - - - 0x01C5CE 07:C5BE: A9 03     LDA #$03
- - - - - - 0x01C5D0 07:C5C0: 4C CF C5  JMP loc_C5CF
bra_C5C3:
- - - - - - 0x01C5D3 07:C5C3: 50 05     BVC bra_C5CA
- - - - - - 0x01C5D5 07:C5C5: A9 04     LDA #$04
- - - - - - 0x01C5D7 07:C5C7: 4C CF C5  JMP loc_C5CF
bra_C5CA:
- - - - - - 0x01C5DA 07:C5CA: A9 00     LDA #$00
- - - - - - 0x01C5DC 07:C5CC: 85 23     STA ram_0023
- - - - - - 0x01C5DE 07:C5CE: 60        RTS


; bzk garbage
loc_C5CF:
- - - - - - 0x01C5DF 07:C5CF: 85 23     STA ram_0023
- - - - - - 0x01C5E1 07:C5D1: BD 00 03  LDA ram_0300,X
- - - - - - 0x01C5E4 07:C5D4: 29 DF     AND #$DF
- - - - - - 0x01C5E6 07:C5D6: 9D 00 03  STA ram_0300,X
- - - - - - 0x01C5E9 07:C5D9: 60        RTS


; bzk garbage
- - - - - - 0x01C5EA 07:C5DA: A2 40     LDX #$40
- - - - - - 0x01C5EC 07:C5DC: 20 2C F5  JSR sub_F52C
- - - - - - 0x01C5EF 07:C5DF: A9 09     LDA #$09
- - - - - - 0x01C5F1 07:C5E1: 20 83 E7  JSR sub_E783_select_colors_for_fighter
- - - - - - 0x01C5F4 07:C5E4: A9 90     LDA #$90
- - - - - - 0x01C5F6 07:C5E6: 9D 02 03  STA ram_0302,X
- - - - - - 0x01C5F9 07:C5E9: A9 80     LDA #$80
- - - - - - 0x01C5FB 07:C5EB: 9D 04 03  STA ram_0304,X
- - - - - - 0x01C5FE 07:C5EE: A9 80     LDA #$80
- - - - - - 0x01C600 07:C5F0: 9D 01 03  STA ram_0301,X
- - - - - - 0x01C603 07:C5F3: 20 D0 FC  JSR sub_FCD0
- - - - - - 0x01C606 07:C5F6: 60        RTS


; bzk garbage
- - - - - - 0x01C607 07:C5F7: 98        TYA
- - - - - - 0x01C608 07:C5F8: 48        PHA
- - - - - - 0x01C609 07:C5F9: A0 40     LDY #$40
- - - - - - 0x01C60B 07:C5FB: E0 10     CPX #$10
- - - - - - 0x01C60D 07:C5FD: F0 0C     BEQ bra_C60B
- - - - - - 0x01C60F 07:C5FF: 8A        TXA
- - - - - - 0x01C610 07:C600: 48        PHA
- - - - - - 0x01C611 07:C601: BA        TSX
- - - - - - 0x01C612 07:C602: BD 06 01  LDA ram_0106,X
- - - - - - 0x01C615 07:C605: 85 DD     STA ram_00DD
- - - - - - 0x01C617 07:C607: 68        PLA
- - - - - - 0x01C618 07:C608: AA        TAX
- - - - - - 0x01C619 07:C609: A0 10     LDY #$10
bra_C60B:
- - - - - - 0x01C61B 07:C60B: BD 03 03  LDA ram_0303,X
- - - - - - 0x01C61E 07:C60E: D0 1A     BNE bra_C62A
- - - - - - 0x01C620 07:C610: 30 18     BMI bra_C62A
- - - - - - 0x01C622 07:C612: B9 03 03  LDA ram_0303,Y
- - - - - - 0x01C625 07:C615: D0 13     BNE bra_C62A
- - - - - - 0x01C627 07:C617: 30 11     BMI bra_C62A
- - - - - - 0x01C629 07:C619: BD 02 03  LDA ram_0302,X
- - - - - - 0x01C62C 07:C61C: D9 02 03  CMP ram_0302,Y
- - - - - - 0x01C62F 07:C61F: 90 04     BCC bra_C625
- - - - - - 0x01C631 07:C621: A9 01     LDA #$01
- - - - - - 0x01C633 07:C623: D0 02     BNE bra_C627    ; jmp
bra_C625:
- - - - - - 0x01C635 07:C625: A9 00     LDA #$00
bra_C627:
- - - - - - 0x01C637 07:C627: 20 6F EF  JSR sub_EF6F
bra_C62A:
- - - - - - 0x01C63A 07:C62A: 68        PLA
- - - - - - 0x01C63B 07:C62B: A8        TAY
- - - - - - 0x01C63C 07:C62C: 60        RTS


; bzk garbage
- - - - - - 0x01C63D 07:C62D: BA        .byte $BA   ; 
- - - - - - 0x01C63E 07:C62E: BD        .byte $BD   ; 
- - - - - - 0x01C63F 07:C62F: 09        .byte $09   ; 
- - - - - - 0x01C640 07:C630: 01        .byte $01   ; 
- - - - - - 0x01C641 07:C631: 89        .byte $89   ; 
- - - - - - 0x01C642 07:C632: B2        .byte $B2   ; 


; bzk garbage
- - - - - - 0x01C643 07:C633: A2 20     LDX #$20
- - - - - - 0x01C645 07:C635: C9 00     CMP #$00
- - - - - - 0x01C647 07:C637: F0 24     BEQ bra_C65D
- - - - - - 0x01C649 07:C639: BD 01 03  LDA ram_0301,X
- - - - - - 0x01C64C 07:C63C: 29 40     AND #$40
- - - - - - 0x01C64E 07:C63E: D0 2A     BNE bra_C66A_RTS
- - - - - - 0x01C650 07:C640: BD 0E 03  LDA ram_030E,X
- - - - - - 0x01C653 07:C643: 7D 02 03  ADC ram_0302,X
- - - - - - 0x01C656 07:C646: 9D 02 03  STA ram_0302,X
- - - - - - 0x01C659 07:C649: BD 03 03  LDA ram_0303,X
- - - - - - 0x01C65C 07:C64C: 69 00     ADC #$00
- - - - - - 0x01C65E 07:C64E: 9D 03 03  STA ram_0303,X
- - - - - - 0x01C661 07:C651: BD 01 03  LDA ram_0301,X
- - - - - - 0x01C664 07:C654: 09 40     ORA #$40
- - - - - - 0x01C666 07:C656: A0 00     LDY #$00
- - - - - - 0x01C668 07:C658: EA        NOP
- - - - - - 0x01C669 07:C659: EA        NOP
- - - - - - 0x01C66A 07:C65A: 4C 67 C6  JMP loc_C667
bra_C65D:
- - - - - - 0x01C66D 07:C65D: BD 01 03  LDA ram_0301,X
- - - - - - 0x01C670 07:C660: 29 40     AND #$40
- - - - - - 0x01C672 07:C662: F0 06     BEQ bra_C66A_RTS
- - - - - - 0x01C674 07:C664: BD 01 03  LDA ram_0301,X
loc_C667:
- - - - - - 0x01C677 07:C667: 9D 01 03  STA ram_0301,X
bra_C66A_RTS:
- - - - - - 0x01C67A 07:C66A: 60        RTS



vec_C66B_IRQ_handler:
C - - - - - 0x01C67B 07:C66B: EA        NOP
C - - - - - 0x01C67C 07:C66C: 8D 06 70  STA $7006
C - - - - - 0x01C67F 07:C66F: 48        PHA
C - - - - - 0x01C680 07:C670: 8A        TXA
C - - - - - 0x01C681 07:C671: 48        PHA
C - - - - - 0x01C682 07:C672: 98        TYA
C - - - - - 0x01C683 07:C673: 48        PHA
C - - - - - 0x01C684 07:C674: 8D 07 70  STA $7007
C - - - - - 0x01C687 07:C677: A5 0F     LDA ram_000F
C - - - - - 0x01C689 07:C679: C9 1B     CMP #$1B
C - - - - - 0x01C68B 07:C67B: 90 05     BCC bra_C682
C - - - - - 0x01C68D 07:C67D: 8D 06 70  STA $7006
C - - - - - 0x01C690 07:C680: B0 7A     BCS bra_C6FC
bra_C682:
C - - - - - 0x01C692 07:C682: A5 0E     LDA ram_000E
C - - - - - 0x01C694 07:C684: C9 03     CMP #$03
C - - - - - 0x01C696 07:C686: F0 2B     BEQ bra_C6B3
C - - - - - 0x01C698 07:C688: C9 04     CMP #$04
C - - - - - 0x01C69A 07:C68A: F0 27     BEQ bra_C6B3
C - - - - - 0x01C69C 07:C68C: C9 06     CMP #$06
C - - - - - 0x01C69E 07:C68E: F0 23     BEQ bra_C6B3
C - - - - - 0x01C6A0 07:C690: C9 01     CMP #$01
C - - - - - 0x01C6A2 07:C692: F0 1F     BEQ bra_C6B3
C - - - - - 0x01C6A4 07:C694: C9 64     CMP #$64
C - - - - - 0x01C6A6 07:C696: D0 64     BNE bra_C6FC
C - - - - - 0x01C6A8 07:C698: A5 0F     LDA ram_000F
C - - - - - 0x01C6AA 07:C69A: C9 12     CMP #$12
C - - - - - 0x01C6AC 07:C69C: D0 5E     BNE bra_C6FC
C - - - - - 0x01C6AE 07:C69E: A9 C0     LDA #$C0
C - - - - - 0x01C6B0 07:C6A0: 8D 00 60  STA $6000
C - - - - - 0x01C6B3 07:C6A3: A9 C2     LDA #$C2
C - - - - - 0x01C6B5 07:C6A5: 8D 01 60  STA $6001
C - - - - - 0x01C6B8 07:C6A8: A9 80     LDA #$80
C - - - - - 0x01C6BA 07:C6AA: 8D 05 20  STA $2005
C - - - - - 0x01C6BD 07:C6AD: 8D 05 20  STA $2005
C - - - - - 0x01C6C0 07:C6B0: 4C FC C6  JMP loc_C6FC
bra_C6B3:
C - - - - - 0x01C6C3 07:C6B3: A5 0F     LDA ram_000F
C - - - - - 0x01C6C5 07:C6B5: C9 02     CMP #$02
C - - - - - 0x01C6C7 07:C6B7: B0 0A     BCS bra_C6C3
C - - - - - 0x01C6C9 07:C6B9: A5 0C     LDA ram_000C
C - - - - - 0x01C6CB 07:C6BB: 0A        ASL
C - - - - - 0x01C6CC 07:C6BC: 0A        ASL
C - - - - - 0x01C6CD 07:C6BD: 0A        ASL
C - - - - - 0x01C6CE 07:C6BE: 85 38     STA ram_0038
C - - - - - 0x01C6D0 07:C6C0: 4C C3 C6  JMP loc_C6C3
bra_C6C3:
loc_C6C3:
C D 2 - - - 0x01C6D3 07:C6C3: A5 0E     LDA ram_000E
C - - - - - 0x01C6D5 07:C6C5: C9 01     CMP #$01
C - - - - - 0x01C6D7 07:C6C7: D0 1A     BNE bra_C6E3
C - - - - - 0x01C6D9 07:C6C9: A5 0F     LDA ram_000F
C - - - - - 0x01C6DB 07:C6CB: C5 2D     CMP ram_002D
C - - - - - 0x01C6DD 07:C6CD: D0 14     BNE bra_C6E3
C - - - - - 0x01C6DF 07:C6CF: A2 06     LDX #$06
C - - - - - 0x01C6E1 07:C6D1: 20 E5 FF  JSR sub_FFE5_garbage_loop_for_IRQ
C - - - - - 0x01C6E4 07:C6D4: A5 39     LDA ram_0039
C - - - - - 0x01C6E6 07:C6D6: 8D 05 20  STA $2005
C - - - - - 0x01C6E9 07:C6D9: A9 00     LDA #$00
C - - - - - 0x01C6EB 07:C6DB: 8D 05 20  STA $2005
C - - - - - 0x01C6EE 07:C6DE: A6 38     LDX ram_0038
C - - - - - 0x01C6F0 07:C6E0: 4C EC C6  JMP loc_C6EC
bra_C6E3:
C - - - - - 0x01C6F3 07:C6E3: A6 38     LDX ram_0038
C - - - - - 0x01C6F5 07:C6E5: BD 16 C0  LDA tbl_C016,X
C - - - - - 0x01C6F8 07:C6E8: C5 0F     CMP ram_000F
C - - - - - 0x01C6FA 07:C6EA: D0 10     BNE bra_C6FC
loc_C6EC:
C D 2 - - - 0x01C6FC 07:C6EC: E8        INX
C - - - - - 0x01C6FD 07:C6ED: BD 16 C0  LDA tbl_C016,X
C - - - - - 0x01C700 07:C6F0: 8D 00 60  STA $6000
C - - - - - 0x01C703 07:C6F3: 18        CLC
C - - - - - 0x01C704 07:C6F4: 69 01     ADC #$01
C - - - - - 0x01C706 07:C6F6: 8D 01 60  STA $6001
C - - - - - 0x01C709 07:C6F9: E8        INX
C - - - - - 0x01C70A 07:C6FA: 86 38     STX ram_0038
bra_C6FC:
loc_C6FC:
C D 2 - - - 0x01C70C 07:C6FC: E6 0F     INC ram_000F
C - - - - - 0x01C70E 07:C6FE: 68        PLA
C - - - - - 0x01C70F 07:C6FF: A8        TAY
C - - - - - 0x01C710 07:C700: 68        PLA
C - - - - - 0x01C711 07:C701: AA        TAX
C - - - - - 0x01C712 07:C702: 68        PLA
C - - - - - 0x01C713 07:C703: 40        RTI



vec_C704_RESET_handler:
C - - - - - 0x01C714 07:C704: 78        SEI
C - - - - - 0x01C715 07:C705: D8        CLD
C - - - - - 0x01C716 07:C706: A2 FF     LDX #$FF
C - - - - - 0x01C718 07:C708: 9A        TXS
C - - - - - 0x01C719 07:C709: E8        INX
C - - - - - 0x01C71A 07:C70A: 8E 00 20  STX $2000
C - - - - - 0x01C71D 07:C70D: A9 40     LDA #$40
C - - - - - 0x01C71F 07:C70F: 8D 17 40  STA $4017
C - - - - - 0x01C722 07:C712: 8D 06 70  STA $7006
bra_C715:
C - - - - - 0x01C725 07:C715: AD 02 20  LDA $2002
C - - - - - 0x01C728 07:C718: 30 FB     BMI bra_C715
C - - - - - 0x01C72A 07:C71A: A9 07     LDA #$07
C - - - - - 0x01C72C 07:C71C: 85 01     STA ram_0001
C - - - - - 0x01C72E 07:C71E: 8A        TXA
C - - - - - 0x01C72F 07:C71F: A8        TAY
C - - - - - 0x01C730 07:C720: 85 00     STA ram_0000
bra_C722:
C - - - - - 0x01C732 07:C722: 91 00     STA (ram_0000),Y
C - - - - - 0x01C734 07:C724: 88        DEY
C - - - - - 0x01C735 07:C725: D0 FB     BNE bra_C722
C - - - - - 0x01C737 07:C727: C6 01     DEC ram_0001
C - - - - - 0x01C739 07:C729: 10 F7     BPL bra_C722
C - - - - - 0x01C73B 07:C72B: E6 01     INC ram_0001
C - - - - - 0x01C73D 07:C72D: 20 4A FB  JSR sub_FB4A
C - - - - - 0x01C740 07:C730: 58        CLI
C - - - - - 0x01C741 07:C731: A9 30     LDA #$30    ; 0x000010
C - - - - - 0x01C743 07:C733: 8D 00 70  STA $7000
C - - - - - 0x01C746 07:C736: AD 00 80  LDA $8000
C - - - - - 0x01C749 07:C739: 85 58     STA ram_0058
C - - - - - 0x01C74B 07:C73B: AD 01 80  LDA $8001
C - - - - - 0x01C74E 07:C73E: 85 59     STA ram_0059
C - - - - - 0x01C750 07:C740: 20 AF E1  JSR sub_E1AF
C - - - - - 0x01C753 07:C743: 20 77 CB  JSR sub_CB77
C - - - - - 0x01C756 07:C746: 20 42 F8  JSR sub_F842_bankswitch_to_music
C - - - - - 0x01C759 07:C749: 20 00 80  JSR sub_0x016010
C - - - - - 0x01C75C 07:C74C: A9 00     LDA #$00
C - - - - - 0x01C75E 07:C74E: 85 78     STA ram_0078
C - - - - - 0x01C760 07:C750: 85 79     STA ram_0079
C - - - - - 0x01C762 07:C752: A9 03     LDA #$03
C - - - - - 0x01C764 07:C754: 85 C9     STA ram_00C9
C - - - - - 0x01C766 07:C756: 20 59 C7  JSR sub_C759
sub_C759:
loc_C759:
C D 2 - - - 0x01C769 07:C759: 20 4D F8  JSR sub_F84D
C - - - - - 0x01C76C 07:C75C: 20 3B F9  JSR sub_F93B
C - - - - - 0x01C76F 07:C75F: 20 EE EF  JSR sub_EFEE_clear_0300_03CF
C - - - - - 0x01C772 07:C762: A9 0A     LDA #$0A
C - - - - - 0x01C774 07:C764: 85 0C     STA ram_000C
C - - - - - 0x01C776 07:C766: A9 04     LDA #$04
C - - - - - 0x01C778 07:C768: 85 0E     STA ram_000E
C - - - - - 0x01C77A 07:C76A: A9 00     LDA #$00
C - - - - - 0x01C77C 07:C76C: 85 FC     STA ram_00FC
C - - - - - 0x01C77E 07:C76E: A2 0C     LDX #$0C    ; title screen
C - - - - - 0x01C780 07:C770: 20 E9 E7  JSR sub_E7E9_draw_screen
C - - - - - 0x01C783 07:C773: 20 BC C9  JSR sub_C9BC
C - - - - - 0x01C786 07:C776: A9 09     LDA #$09
C - - - - - 0x01C788 07:C778: 20 FA F7  JSR sub_F7FA
C - - - - - 0x01C78B 07:C77B: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C78D 07:C77D: 8D 00 70  STA $7000
C - - - - - 0x01C790 07:C780: A2 10     LDX #$10
C - - - - - 0x01C792 07:C782: A9 09     LDA #$09
C - - - - - 0x01C794 07:C784: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01C797 07:C787: A9 00     LDA #$00
C - - - - - 0x01C799 07:C789: 9D 03 03  STA ram_0303,X
C - - - - - 0x01C79C 07:C78C: 9D 05 03  STA ram_0305,X
C - - - - - 0x01C79F 07:C78F: 9D 01 03  STA ram_0301,X
C - - - - - 0x01C7A2 07:C792: 85 C6     STA ram_00C6
C - - - - - 0x01C7A4 07:C794: 9D 0D 05  STA ram_050D,X
C - - - - - 0x01C7A7 07:C797: A9 C2     LDA #$C2
C - - - - - 0x01C7A9 07:C799: 9D 04 03  STA ram_0304,X
C - - - - - 0x01C7AC 07:C79C: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C7AE 07:C79E: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01C7B1 07:C7A1: A9 0A     LDA #$0A
C - - - - - 0x01C7B3 07:C7A3: 85 C7     STA ram_timer_before_demo
C - - - - - 0x01C7B5 07:C7A5: A9 3C     LDA #$3C
C - - - - - 0x01C7B7 07:C7A7: 85 10     STA ram_0010
C - - - - - 0x01C7B9 07:C7A9: A9 13     LDA #$13
C - - - - - 0x01C7BB 07:C7AB: 20 39 E8  JSR sub_E839
C - - - - - 0x01C7BE 07:C7AE: 20 D0 FC  JSR sub_FCD0
bra_C7B1:
C - - - - - 0x01C7C1 07:C7B1: A5 C7     LDA ram_timer_before_demo
C - - - - - 0x01C7C3 07:C7B3: D0 07     BNE bra_C7BC
C - - - - - 0x01C7C5 07:C7B5: A9 01     LDA #$01
C - - - - - 0x01C7C7 07:C7B7: 85 C6     STA ram_00C6
C - - - - - 0x01C7C9 07:C7B9: 4C C1 C7  JMP loc_C7C1
bra_C7BC:
C - - - - - 0x01C7CC 07:C7BC: BD 0D 05  LDA ram_050D,X
C - - - - - 0x01C7CF 07:C7BF: F0 F0     BEQ bra_C7B1
loc_C7C1:
C D 2 - - - 0x01C7D1 07:C7C1: A5 C9     LDA ram_00C9
C - - - - - 0x01C7D3 07:C7C3: 85 CA     STA ram_00CA
C - - - - - 0x01C7D5 07:C7C5: 18        CLC
C - - - - - 0x01C7D6 07:C7C6: 69 02     ADC #$02
C - - - - - 0x01C7D8 07:C7C8: 85 CB     STA ram_credits
C - - - - - 0x01C7DA 07:C7CA: 20 F4 FA  JSR sub_FAF4
C - - - - - 0x01C7DD 07:C7CD: 20 4D F8  JSR sub_F84D
C - - - - - 0x01C7E0 07:C7D0: 20 4C C8  JSR sub_C84C
C - - - - - 0x01C7E3 07:C7D3: A5 C6     LDA ram_00C6
C - - - - - 0x01C7E5 07:C7D5: F0 46     BEQ bra_C81D
C - - - - - 0x01C7E7 07:C7D7: A9 00     LDA #$00
C - - - - - 0x01C7E9 07:C7D9: 85 2E     STA ram_002E
C - - - - - 0x01C7EB 07:C7DB: 85 F8     STA ram_00F8
C - - - - - 0x01C7ED 07:C7DD: 85 F9     STA ram_00F9
C - - - - - 0x01C7EF 07:C7DF: A9 07     LDA #$07
C - - - - - 0x01C7F1 07:C7E1: 85 CA     STA ram_00CA
C - - - - - 0x01C7F3 07:C7E3: A9 09     LDA #$09
C - - - - - 0x01C7F5 07:C7E5: 85 A0     STA ram_00A0
C - - - - - 0x01C7F7 07:C7E7: 20 95 FD  JSR sub_FD95
C - - - - - 0x01C7FA 07:C7EA: A5 A1     LDA ram_00A1
bra_C7EC_loop:
; !!! demo eventually stucks here in an infinite loop
C - - - - - 0x01C7FC 07:C7EC: 0A        ASL
C - - - - - 0x01C7FD 07:C7ED: A8        TAY
C - - - - - 0x01C7FE 07:C7EE: B9 39 C8  LDA tbl_C839,Y
C - - - - - 0x01C801 07:C7F1: 85 3B     STA ram_p1_fighter
C - - - - - 0x01C803 07:C7F3: B9 3A C8  LDA tbl_C83A,Y
C - - - - - 0x01C806 07:C7F6: 85 3C     STA ram_p2_fighter
C - - - - - 0x01C808 07:C7F8: B9 3A C8  LDA tbl_C83A,Y  ; bzk optimize
C - - - - - 0x01C80B 07:C7FB: A8        TAY
C - - - - - 0x01C80C 07:C7FC: B9 AA C9  LDA tbl_C9AA,Y
C - - - - - 0x01C80F 07:C7FF: C5 27     CMP ram_screen
C - - - - - 0x01C811 07:C801: D0 04     BNE bra_C807
C - - - - - 0x01C813 07:C803: A9 01     LDA #$01
C - - - - - 0x01C815 07:C805: D0 E5     BNE bra_C7EC_loop
bra_C807:
C - - - - - 0x01C817 07:C807: 85 27     STA ram_screen
C - - - - - 0x01C819 07:C809: A9 01     LDA #$01
C - - - - - 0x01C81B 07:C80B: 8D 1E 05  STA ram_051E
C - - - - - 0x01C81E 07:C80E: 8D 4E 05  STA ram_054E
C - - - - - 0x01C821 07:C811: 20 69 CA  JSR sub_CA69
bra_C814:
C - - - - - 0x01C824 07:C814: A5 72     LDA ram_0072
C - - - - - 0x01C826 07:C816: C9 FF     CMP #$FF
C - - - - - 0x01C828 07:C818: D0 FA     BNE bra_C814
C - - - - - 0x01C82A 07:C81A: 4C 59 C7  JMP loc_C759
bra_C81D:
C - - - - - 0x01C82D 07:C81D: A9 00     LDA #$00
C - - - - - 0x01C82F 07:C81F: 85 0D     STA ram_000D
C - - - - - 0x01C831 07:C821: 8D 1E 05  STA ram_051E
C - - - - - 0x01C834 07:C824: A9 01     LDA #$01
C - - - - - 0x01C836 07:C826: 8D 4E 05  STA ram_054E
C - - - - - 0x01C839 07:C829: 85 DF     STA ram_00DF
C - - - - - 0x01C83B 07:C82B: A9 00     LDA #$00
C - - - - - 0x01C83D 07:C82D: 85 F4     STA ram_00F4
C - - - - - 0x01C83F 07:C82F: A9 03     LDA #$03
C - - - - - 0x01C841 07:C831: 85 F5     STA ram_00F5
C - - - - - 0x01C843 07:C833: 20 57 C8  JSR sub_C857
C - - - - - 0x01C846 07:C836: 4C 59 C7  JMP loc_C759



tbl_C839:
- D 2 - - - 0x01C849 07:C839: 03        .byte $03   ; 
tbl_C83A:
- D 2 - - - 0x01C84A 07:C83A: 00        .byte $00   ; 
- D 2 - - - 0x01C84B 07:C83B: 02        .byte $02   ; 
- D 2 - - - 0x01C84C 07:C83C: 01        .byte $01   ; 
- D 2 - - - 0x01C84D 07:C83D: 06        .byte $06   ; 
- D 2 - - - 0x01C84E 07:C83E: 02        .byte $02   ; 
- D 2 - - - 0x01C84F 07:C83F: 03        .byte $03   ; 
- D 2 - - - 0x01C850 07:C840: 03        .byte $03   ; 
- D 2 - - - 0x01C851 07:C841: 08        .byte $08   ; 
- D 2 - - - 0x01C852 07:C842: 04        .byte $04   ; 
- D 2 - - - 0x01C853 07:C843: 00        .byte $00   ; 
- D 2 - - - 0x01C854 07:C844: 05        .byte $05   ; 
- D 2 - - - 0x01C855 07:C845: 07        .byte $07   ; 
- D 2 - - - 0x01C856 07:C846: 06        .byte $06   ; 
- D 2 - - - 0x01C857 07:C847: 05        .byte $05   ; 
- D 2 - - - 0x01C858 07:C848: 07        .byte $07   ; 
- D 2 - - - 0x01C859 07:C849: 00        .byte $00   ; 
- D 2 - - - 0x01C85A 07:C84A: 08        .byte $08   ; 


; bzk garbage
- - - - - - 0x01C85B 07:C84B: BA        .byte $BA   ; 



sub_C84C:
C - - - - - 0x01C85C 07:C84C: A9 00     LDA #$00
C - - - - - 0x01C85E 07:C84E: 85 74     STA ram_0074
C - - - - - 0x01C860 07:C850: 85 75     STA ram_0075
C - - - - - 0x01C862 07:C852: 85 76     STA ram_0076
C - - - - - 0x01C864 07:C854: 85 77     STA ram_0077
C - - - - - 0x01C866 07:C856: 60        RTS



sub_C857:
loc_C857:
C D 2 - - - 0x01C867 07:C857: 20 4D F8  JSR sub_F84D
C - - - - - 0x01C86A 07:C85A: 20 3B F9  JSR sub_F93B
C - - - - - 0x01C86D 07:C85D: 20 EE EF  JSR sub_EFEE_clear_0300_03CF
C - - - - - 0x01C870 07:C860: A9 09     LDA #$09
C - - - - - 0x01C872 07:C862: 85 0C     STA ram_000C
C - - - - - 0x01C874 07:C864: A9 03     LDA #$03
C - - - - - 0x01C876 07:C866: 85 0E     STA ram_000E
C - - - - - 0x01C878 07:C868: A9 00     LDA #$00
C - - - - - 0x01C87A 07:C86A: 85 2E     STA ram_002E
C - - - - - 0x01C87C 07:C86C: A2 0B     LDX #$0B    ; player select screen
C - - - - - 0x01C87E 07:C86E: 20 E9 E7  JSR sub_E7E9_draw_screen
C - - - - - 0x01C881 07:C871: 20 BC C9  JSR sub_C9BC
C - - - - - 0x01C884 07:C874: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C886 07:C876: 8D 00 70  STA $7000
C - - - - - 0x01C889 07:C879: A2 10     LDX #$10
loc_C87B:
C D 2 - - - 0x01C88B 07:C87B: A9 0A     LDA #$0A
C - - - - - 0x01C88D 07:C87D: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01C890 07:C880: A9 00     LDA #$00
C - - - - - 0x01C892 07:C882: 9D 03 03  STA ram_0303,X
C - - - - - 0x01C895 07:C885: 9D 05 03  STA ram_0305,X
C - - - - - 0x01C898 07:C888: 9D 01 03  STA ram_0301,X
C - - - - - 0x01C89B 07:C88B: 9D 0D 05  STA ram_050D,X
C - - - - - 0x01C89E 07:C88E: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01C8A0 07:C890: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01C8A3 07:C893: E0 10     CPX #$10
C - - - - - 0x01C8A5 07:C895: D0 19     BNE bra_C8B0
C - - - - - 0x01C8A7 07:C897: A9 59     LDA #$59
C - - - - - 0x01C8A9 07:C899: 20 39 E8  JSR sub_E839
C - - - - - 0x01C8AC 07:C89C: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01C8AF 07:C89F: F0 0A     BEQ bra_C8AB
C - - - - - 0x01C8B1 07:C8A1: A9 00     LDA #$00
C - - - - - 0x01C8B3 07:C8A3: 9D 00 03  STA ram_0300,X
C - - - - - 0x01C8B6 07:C8A6: A9 01     LDA #$01
C - - - - - 0x01C8B8 07:C8A8: 9D 0D 05  STA ram_050D,X
bra_C8AB:
C - - - - - 0x01C8BB 07:C8AB: A2 40     LDX #$40
C - - - - - 0x01C8BD 07:C8AD: 4C 7B C8  JMP loc_C87B
bra_C8B0:
C - - - - - 0x01C8C0 07:C8B0: A9 5B     LDA #$5B
C - - - - - 0x01C8C2 07:C8B2: 20 39 E8  JSR sub_E839
C - - - - - 0x01C8C5 07:C8B5: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01C8C8 07:C8B8: F0 0A     BEQ bra_C8C4
C - - - - - 0x01C8CA 07:C8BA: A9 00     LDA #$00
C - - - - - 0x01C8CC 07:C8BC: 9D 00 03  STA ram_0300,X
C - - - - - 0x01C8CF 07:C8BF: A9 01     LDA #$01
C - - - - - 0x01C8D1 07:C8C1: 9D 0D 05  STA ram_050D,X
bra_C8C4:
C - - - - - 0x01C8D4 07:C8C4: A5 DF     LDA ram_00DF
C - - - - - 0x01C8D6 07:C8C6: F0 05     BEQ bra_C8CD
C - - - - - 0x01C8D8 07:C8C8: A9 0A     LDA #$0A
C - - - - - 0x01C8DA 07:C8CA: 20 FA F7  JSR sub_F7FA
bra_C8CD:
C - - - - - 0x01C8DD 07:C8CD: 20 D0 FC  JSR sub_FCD0
C - - - - - 0x01C8E0 07:C8D0: A5 DF     LDA ram_00DF
C - - - - - 0x01C8E2 07:C8D2: F0 11     BEQ bra_C8E5
bra_C8D4:
C - - - - - 0x01C8E4 07:C8D4: AD 1D 05  LDA ram_051D
C - - - - - 0x01C8E7 07:C8D7: F0 FB     BEQ bra_C8D4
C - - - - - 0x01C8E9 07:C8D9: AD 4D 05  LDA ram_054D
C - - - - - 0x01C8EC 07:C8DC: F0 F6     BEQ bra_C8D4
C - - - - - 0x01C8EE 07:C8DE: A9 00     LDA #$00
C - - - - - 0x01C8F0 07:C8E0: 85 DF     STA ram_00DF
C - - - - - 0x01C8F2 07:C8E2: 4C ED C8  JMP loc_C8ED
bra_C8E5:
C - - - - - 0x01C8F5 07:C8E5: A9 00     LDA #$00
C - - - - - 0x01C8F7 07:C8E7: 8D 10 03  STA ram_0310
C - - - - - 0x01C8FA 07:C8EA: 8D 40 03  STA ram_0340
loc_C8ED:
C D 2 - - - 0x01C8FD 07:C8ED: A9 01     LDA #$01
C - - - - - 0x01C8FF 07:C8EF: 20 F2 FC  JSR sub_FCF2_artificial_delay
C - - - - - 0x01C902 07:C8F2: A6 0D     LDX ram_000D
C - - - - - 0x01C904 07:C8F4: BD B3 C9  LDA tbl_C9B3,X
C - - - - - 0x01C907 07:C8F7: 85 3B     STA ram_p1_fighter
C - - - - - 0x01C909 07:C8F9: 85 3C     STA ram_p2_fighter
C - - - - - 0x01C90B 07:C8FB: AA        TAX
C - - - - - 0x01C90C 07:C8FC: BD AA C9  LDA tbl_C9AA,X
C - - - - - 0x01C90F 07:C8FF: 85 27     STA ram_screen
C - - - - - 0x01C911 07:C901: AD 1E 05  LDA ram_051E
C - - - - - 0x01C914 07:C904: D0 07     BNE bra_C90D
C - - - - - 0x01C916 07:C906: A6 F4     LDX ram_00F4
C - - - - - 0x01C918 07:C908: BD A1 C9  LDA tbl_C9A1,X
C - - - - - 0x01C91B 07:C90B: 85 3B     STA ram_p1_fighter
bra_C90D:
C - - - - - 0x01C91D 07:C90D: AD 4E 05  LDA ram_054E
C - - - - - 0x01C920 07:C910: D0 07     BNE bra_C919
C - - - - - 0x01C922 07:C912: A6 F5     LDX ram_00F5
C - - - - - 0x01C924 07:C914: BD A1 C9  LDA tbl_C9A1,X
C - - - - - 0x01C927 07:C917: 85 3C     STA ram_p2_fighter
bra_C919:
C - - - - - 0x01C929 07:C919: A9 03     LDA #$03
C - - - - - 0x01C92B 07:C91B: 85 FA     STA ram_00FA
C - - - - - 0x01C92D 07:C91D: 20 F2 FC  JSR sub_FCF2_artificial_delay
C - - - - - 0x01C930 07:C920: 20 F4 FA  JSR sub_FAF4
C - - - - - 0x01C933 07:C923: 20 0B CA  JSR sub_CA0B
C - - - - - 0x01C936 07:C926: 20 4D F8  JSR sub_F84D
C - - - - - 0x01C939 07:C929: A5 2E     LDA ram_002E
C - - - - - 0x01C93B 07:C92B: D0 0F     BNE bra_C93C
C - - - - - 0x01C93D 07:C92D: A9 00     LDA #$00
C - - - - - 0x01C93F 07:C92F: 8D 1E 05  STA ram_051E
C - - - - - 0x01C942 07:C932: 8D 4E 05  STA ram_054E
loc_C935:
C D 2 - - - 0x01C945 07:C935: A9 01     LDA #$01
C - - - - - 0x01C947 07:C937: 85 DF     STA ram_00DF
C - - - - - 0x01C949 07:C939: 4C 57 C8  JMP loc_C857
bra_C93C:
C - - - - - 0x01C94C 07:C93C: AA        TAX
C - - - - - 0x01C94D 07:C93D: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01C950 07:C940: F0 14     BEQ bra_C956
C - - - - - 0x01C952 07:C942: A5 CB     LDA ram_credits
C - - - - - 0x01C954 07:C944: F0 0F     BEQ bra_C955_RTS
C - - - - - 0x01C956 07:C946: 20 4A F5  JSR sub_F54A
C - - - - - 0x01C959 07:C949: A5 7E     LDA ram_007E
C - - - - - 0x01C95B 07:C94B: F0 08     BEQ bra_C955_RTS
C - - - - - 0x01C95D 07:C94D: C6 CB     DEC ram_credits
C - - - - - 0x01C95F 07:C94F: 20 4C C8  JSR sub_C84C
C - - - - - 0x01C962 07:C952: 4C 35 C9  JMP loc_C935
bra_C955_RTS:
C - - - - - 0x01C965 07:C955: 60        RTS
bra_C956:
C - - - - - 0x01C966 07:C956: 20 AB F4  JSR sub_F4AB
C - - - - - 0x01C969 07:C959: A9 02     LDA #$02
C - - - - - 0x01C96B 07:C95B: 20 F2 FC  JSR sub_FCF2_artificial_delay
C - - - - - 0x01C96E 07:C95E: 20 F4 FA  JSR sub_FAF4
C - - - - - 0x01C971 07:C961: AD 1E 05  LDA ram_051E
C - - - - - 0x01C974 07:C964: D0 05     BNE bra_C96B
C - - - - - 0x01C976 07:C966: AD 4E 05  LDA ram_054E
C - - - - - 0x01C979 07:C969: F0 22     BEQ bra_C98D_game_not_finished_yet
bra_C96B:
C - - - - - 0x01C97B 07:C96B: E6 0D     INC ram_000D
C - - - - - 0x01C97D 07:C96D: A5 0D     LDA ram_000D
C - - - - - 0x01C97F 07:C96F: 29 01     AND #$01
C - - - - - 0x01C981 07:C971: D0 08     BNE bra_C97B
C - - - - - 0x01C983 07:C973: A5 CA     LDA ram_00CA
C - - - - - 0x01C985 07:C975: C9 05     CMP #$05
C - - - - - 0x01C987 07:C977: B0 02     BCS bra_C97B
C - - - - - 0x01C989 07:C979: E6 CA     INC ram_00CA
bra_C97B:
C - - - - - 0x01C98B 07:C97B: A5 0D     LDA ram_000D
C - - - - - 0x01C98D 07:C97D: C9 09     CMP #$09
C - - - - - 0x01C98F 07:C97F: 90 0C     BCC bra_C98D_game_not_finished_yet
C - - - - - 0x01C991 07:C981: 20 DE C9  JSR sub_C9DE_select_final_cutscene
C - - - - - 0x01C994 07:C984: A5 C9     LDA ram_00C9
C - - - - - 0x01C996 07:C986: C9 07     CMP #$07
C - - - - - 0x01C998 07:C988: B0 02     BCS bra_C98C_RTS
C - - - - - 0x01C99A 07:C98A: E6 C9     INC ram_00C9
bra_C98C_RTS:
C - - - - - 0x01C99C 07:C98C: 60        RTS
bra_C98D_game_not_finished_yet:
C - - - - - 0x01C99D 07:C98D: A9 01     LDA #$01
C - - - - - 0x01C99F 07:C98F: 8D 1E 05  STA ram_051E
C - - - - - 0x01C9A2 07:C992: 8D 4E 05  STA ram_054E
C - - - - - 0x01C9A5 07:C995: A9 00     LDA #$00
C - - - - - 0x01C9A7 07:C997: A6 2E     LDX ram_002E
C - - - - - 0x01C9A9 07:C999: 9D 0E 05  STA ram_050E,X
C - - - - - 0x01C9AC 07:C99C: 85 DF     STA ram_00DF
C - - - - - 0x01C9AE 07:C99E: 4C 57 C8  JMP loc_C857



tbl_C9A1:
- D 2 - - - 0x01C9B1 07:C9A1: 01        .byte $01   ; 00
- D 2 - - - 0x01C9B2 07:C9A2: 03        .byte $03   ; 01
- D 2 - - - 0x01C9B3 07:C9A3: 02        .byte $02   ; 02
- D 2 - - - 0x01C9B4 07:C9A4: 05        .byte $05   ; 03
- D 2 - - - 0x01C9B5 07:C9A5: 00        .byte $00   ; 04
- D 2 - - - 0x01C9B6 07:C9A6: 04        .byte $04   ; 05
- D 2 - - - 0x01C9B7 07:C9A7: 06        .byte $06   ; 06
- D 2 - - - 0x01C9B8 07:C9A8: 07        .byte $07   ; 07
- D 2 - - - 0x01C9B9 07:C9A9: 08        .byte $08   ; 08



tbl_C9AA:
- D 2 - - - 0x01C9BA 07:C9AA: 08        .byte $08   ; 00
- D 2 - - - 0x01C9BB 07:C9AB: 05        .byte $05   ; 01
- D 2 - - - 0x01C9BC 07:C9AC: 03        .byte $03   ; 02
- D 2 - - - 0x01C9BD 07:C9AD: 07        .byte $07   ; 03
- D 2 - - - 0x01C9BE 07:C9AE: 00        .byte $00   ; 04
- D 2 - - - 0x01C9BF 07:C9AF: 04        .byte $04   ; 05
- D 2 - - - 0x01C9C0 07:C9B0: 06        .byte $06   ; 06
- D 2 - - - 0x01C9C1 07:C9B1: 01        .byte $01   ; 07
- D 2 - - - 0x01C9C2 07:C9B2: 02        .byte $02   ; 08



tbl_C9B3:
- D 2 - - - 0x01C9C3 07:C9B3: 00        .byte $00   ; 00
- D 2 - - - 0x01C9C4 07:C9B4: 01        .byte $01   ; 01
- D 2 - - - 0x01C9C5 07:C9B5: 02        .byte $02   ; 02
- D 2 - - - 0x01C9C6 07:C9B6: 04        .byte $04   ; 03
- D 2 - - - 0x01C9C7 07:C9B7: 03        .byte $03   ; 04
- D 2 - - - 0x01C9C8 07:C9B8: 05        .byte $05   ; 05
- D 2 - - - 0x01C9C9 07:C9B9: 06        .byte $06   ; 06
- D 2 - - - 0x01C9CA 07:C9BA: 07        .byte $07   ; 07
- D 2 - - - 0x01C9CB 07:C9BB: 08        .byte $08   ; 08



sub_C9BC:
C - - - - - 0x01C9CC 07:C9BC: A9 CE     LDA #< tbl_C9CE
C - - - - - 0x01C9CE 07:C9BE: 85 00     STA ram_0000
C - - - - - 0x01C9D0 07:C9C0: A9 C9     LDA #> tbl_C9CE
C - - - - - 0x01C9D2 07:C9C2: 85 01     STA ram_0001
C - - - - - 0x01C9D4 07:C9C4: A9 11     LDA #$11
C - - - - - 0x01C9D6 07:C9C6: A2 0F     LDX #$0F
C - - - - - 0x01C9D8 07:C9C8: A0 00     LDY #$00
C - - - - - 0x01C9DA 07:C9CA: 20 B2 FB  JSR sub_FBB2_write_palette_to_ppu
C - - - - - 0x01C9DD 07:C9CD: 60        RTS



tbl_C9CE:
- D 2 - I - 0x01C9EC 07:C9DC: 30        .byte      $30, $30, $30   ; 
- D 2 - I - 0x01C9E1 07:C9D1: 0F        .byte $0F, $30, $30, $30   ; 
- D 2 - I - 0x01C9E5 07:C9D5: 0F        .byte $0F, $06, $17, $28   ; 
- D 2 - I - 0x01C9E9 07:C9D9: 0F        .byte $0F, $11, $15, $30   ; 


; bzk garbage
- - - - - - 0x01C9ED 07:C9DD: BA        .byte $BA   ; 



sub_C9DE_select_final_cutscene:
C - - - - - 0x01C9EE 07:C9DE: 20 4D F8  JSR sub_F84D
C - - - - - 0x01C9F1 07:C9E1: 20 EE EF  JSR sub_EFEE_clear_0300_03CF
C - - - - - 0x01C9F4 07:C9E4: A9 05     LDA #$05
C - - - - - 0x01C9F6 07:C9E6: 85 0E     STA ram_000E
C - - - - - 0x01C9F8 07:C9E8: AD 1E 05  LDA ram_051E
C - - - - - 0x01C9FB 07:C9EB: D0 05     BNE bra_C9F2
C - - - - - 0x01C9FD 07:C9ED: A5 3B     LDA ram_p1_fighter
C - - - - - 0x01C9FF 07:C9EF: 4C F4 C9  JMP loc_C9F4
bra_C9F2:
- - - - - - 0x01CA02 07:C9F2: A5 3C     LDA ram_p2_fighter
loc_C9F4:
C D 2 - - - 0x01CA04 07:C9F4: 18        CLC
C - - - - - 0x01CA05 07:C9F5: 69 0E     ADC #$0E
C - - - - - 0x01CA07 07:C9F7: AA        TAX
C - - - - - 0x01CA08 07:C9F8: A9 00     LDA #$00
C - - - - - 0x01CA0A 07:C9FA: 20 E9 E7  JSR sub_E7E9_draw_screen
C - - - - - 0x01CA0D 07:C9FD: A9 0D     LDA #$0D
C - - - - - 0x01CA0F 07:C9FF: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01CA12 07:CA02: 20 D0 FC  JSR sub_FCD0
C - - - - - 0x01CA15 07:CA05: A9 19     LDA #$19
C - - - - - 0x01CA17 07:CA07: 20 F2 FC  JSR sub_FCF2_artificial_delay
C - - - - - 0x01CA1A 07:CA0A: 60        RTS



sub_CA0B:
C - - - - - 0x01CA1B 07:CA0B: A9 00     LDA #$00
C - - - - - 0x01CA1D 07:CA0D: 85 F8     STA ram_00F8
C - - - - - 0x01CA1F 07:CA0F: 85 F9     STA ram_00F9
C - - - - - 0x01CA21 07:CA11: 85 2E     STA ram_002E
C - - - - - 0x01CA23 07:CA13: 20 AB F4  JSR sub_F4AB
C - - - - - 0x01CA26 07:CA16: A9 05     LDA #$05
C - - - - - 0x01CA28 07:CA18: 20 17 FF  JSR sub_FF17
C - - - - - 0x01CA2B 07:CA1B: 20 0B F8  JSR sub_F80B
C - - - - - 0x01CA2E 07:CA1E: 20 F4 FA  JSR sub_FAF4
bra_CA21:
C - - - - - 0x01CA31 07:CA21: 20 69 CA  JSR sub_CA69
bra_CA24:
C - - - - - 0x01CA34 07:CA24: A5 72     LDA ram_0072
C - - - - - 0x01CA36 07:CA26: C9 FF     CMP #$FF
C - - - - - 0x01CA38 07:CA28: D0 FA     BNE bra_CA24
C - - - - - 0x01CA3A 07:CA2A: A5 2E     LDA ram_002E
C - - - - - 0x01CA3C 07:CA2C: F0 1D     BEQ bra_CA4B_RTS
C - - - - - 0x01CA3E 07:CA2E: A9 78     LDA #$78
C - - - - - 0x01CA40 07:CA30: 20 10 FF  JSR sub_FF10
C - - - - - 0x01CA43 07:CA33: 20 F4 FA  JSR sub_FAF4
C - - - - - 0x01CA46 07:CA36: 20 4D F8  JSR sub_F84D
C - - - - - 0x01CA49 07:CA39: A5 2E     LDA ram_002E
C - - - - - 0x01CA4B 07:CA3B: C9 FF     CMP #$FF
C - - - - - 0x01CA4D 07:CA3D: F0 E2     BEQ bra_CA21
C - - - - - 0x01CA4F 07:CA3F: A5 F8     LDA ram_00F8
C - - - - - 0x01CA51 07:CA41: C9 02     CMP #$02
C - - - - - 0x01CA53 07:CA43: B0 06     BCS bra_CA4B_RTS
C - - - - - 0x01CA55 07:CA45: A5 F9     LDA ram_00F9
C - - - - - 0x01CA57 07:CA47: C9 02     CMP #$02
C - - - - - 0x01CA59 07:CA49: 90 D6     BCC bra_CA21
bra_CA4B_RTS:
C - - - - - 0x01CA5B 07:CA4B: 60        RTS



sub_CA4C:
C - - - - - 0x01CA5C 07:CA4C: B9 75 00  LDA a: ram_0075,Y
C - - - - - 0x01CA5F 07:CA4F: C5 79     CMP ram_0079
C - - - - - 0x01CA61 07:CA51: F0 04     BEQ bra_CA57
C - - - - - 0x01CA63 07:CA53: B0 09     BCS bra_CA5E
C - - - - - 0x01CA65 07:CA55: 90 11     BCC bra_CA68_RTS
bra_CA57:
C - - - - - 0x01CA67 07:CA57: B9 74 00  LDA a: ram_0074,Y
C - - - - - 0x01CA6A 07:CA5A: C5 78     CMP ram_0078
C - - - - - 0x01CA6C 07:CA5C: 90 0A     BCC bra_CA68_RTS
bra_CA5E:
C - - - - - 0x01CA6E 07:CA5E: B9 74 00  LDA a: ram_0074,Y
C - - - - - 0x01CA71 07:CA61: 85 78     STA ram_0078
C - - - - - 0x01CA73 07:CA63: B9 75 00  LDA a: ram_0075,Y
C - - - - - 0x01CA76 07:CA66: 85 79     STA ram_0079
bra_CA68_RTS:
C - - - - - 0x01CA78 07:CA68: 60        RTS



sub_CA69:
C - - - - - 0x01CA79 07:CA69: 20 4D F8  JSR sub_F84D
C - - - - - 0x01CA7C 07:CA6C: A5 27     LDA ram_screen
C - - - - - 0x01CA7E 07:CA6E: 85 0C     STA ram_000C
C - - - - - 0x01CA80 07:CA70: 20 17 E8  JSR sub_E817
C - - - - - 0x01CA83 07:CA73: A5 27     LDA ram_screen
C - - - - - 0x01CA85 07:CA75: 20 FA F7  JSR sub_F7FA
C - - - - - 0x01CA88 07:CA78: A4 3B     LDY ram_p1_fighter
C - - - - - 0x01CA8A 07:CA7A: B9 EC CA  LDA tbl_CAEC,Y
C - - - - - 0x01CA8D 07:CA7D: A4 3C     LDY ram_p2_fighter
C - - - - - 0x01CA8F 07:CA7F: 18        CLC
C - - - - - 0x01CA90 07:CA80: 79 EC CA  ADC tbl_CAEC,Y
C - - - - - 0x01CA93 07:CA83: 85 C0     STA ram_00C0
C - - - - - 0x01CA95 07:CA85: A0 00     LDY #$00
C - - - - - 0x01CA97 07:CA87: 20 4C CA  JSR sub_CA4C
C - - - - - 0x01CA9A 07:CA8A: A0 02     LDY #$02
C - - - - - 0x01CA9C 07:CA8C: 20 4C CA  JSR sub_CA4C
C - - - - - 0x01CA9F 07:CA8F: A9 30     LDA #$30
C - - - - - 0x01CAA1 07:CA91: 85 AC     STA ram_00AC
C - - - - - 0x01CAA3 07:CA93: 85 AD     STA ram_00AD
C - - - - - 0x01CAA5 07:CA95: A9 00     LDA #$00
C - - - - - 0x01CAA7 07:CA97: 85 73     STA ram_0073
C - - - - - 0x01CAA9 07:CA99: 20 31 F1  JSR sub_F131
C - - - - - 0x01CAAC 07:CA9C: A9 01     LDA #$01
C - - - - - 0x01CAAE 07:CA9E: 85 73     STA ram_0073
C - - - - - 0x01CAB0 07:CAA0: 20 31 F1  JSR sub_F131
C - - - - - 0x01CAB3 07:CAA3: A9 02     LDA #$02
C - - - - - 0x01CAB5 07:CAA5: 85 73     STA ram_0073
C - - - - - 0x01CAB7 07:CAA7: 20 31 F1  JSR sub_F131
C - - - - - 0x01CABA 07:CAAA: 20 F0 F8  JSR sub_F8F0
C - - - - - 0x01CABD 07:CAAD: A9 00     LDA #$00
C - - - - - 0x01CABF 07:CAAF: 85 72     STA ram_0072
C - - - - - 0x01CAC1 07:CAB1: 85 7C     STA ram_007C
C - - - - - 0x01CAC3 07:CAB3: 85 2E     STA ram_002E
C - - - - - 0x01CAC5 07:CAB5: 85 FB     STA ram_00FB
C - - - - - 0x01CAC7 07:CAB7: 85 BF     STA ram_00BF
C - - - - - 0x01CAC9 07:CAB9: 85 2F     STA ram_002F
C - - - - - 0x01CACB 07:CABB: A9 03     LDA #$03
C - - - - - 0x01CACD 07:CABD: 85 2D     STA ram_002D
C - - - - - 0x01CACF 07:CABF: A9 1E     LDA #$1E
C - - - - - 0x01CAD1 07:CAC1: 85 3D     STA ram_003D
C - - - - - 0x01CAD3 07:CAC3: A9 63     LDA #$63
C - - - - - 0x01CAD5 07:CAC5: 85 3E     STA ram_game_time
C - - - - - 0x01CAD7 07:CAC7: A9 3F     LDA #$3F
C - - - - - 0x01CAD9 07:CAC9: 85 39     STA ram_0039
C - - - - - 0x01CADB 07:CACB: 20 F6 CA  JSR sub_CAF6
C - - - - - 0x01CADE 07:CACE: 20 D0 FC  JSR sub_FCD0
C - - - - - 0x01CAE1 07:CAD1: A9 B4     LDA #$B4
C - - - - - 0x01CAE3 07:CAD3: 85 10     STA ram_0010
C - - - - - 0x01CAE5 07:CAD5: A9 01     LDA #$01
C - - - - - 0x01CAE7 07:CAD7: 85 C1     STA ram_00C1
bra_CAD9:
C - - - - - 0x01CAE9 07:CAD9: A5 72     LDA ram_0072
C - - - - - 0x01CAEB 07:CADB: C9 FF     CMP #$FF
C - - - - - 0x01CAED 07:CADD: F0 04     BEQ bra_CAE3
C - - - - - 0x01CAEF 07:CADF: A5 10     LDA ram_0010
C - - - - - 0x01CAF1 07:CAE1: D0 F6     BNE bra_CAD9
bra_CAE3:
C - - - - - 0x01CAF3 07:CAE3: A9 01     LDA #$01
C - - - - - 0x01CAF5 07:CAE5: 85 2F     STA ram_002F
C - - - - - 0x01CAF7 07:CAE7: A9 00     LDA #$00
C - - - - - 0x01CAF9 07:CAE9: 85 C1     STA ram_00C1
C - - - - - 0x01CAFB 07:CAEB: 60        RTS



tbl_CAEC:
- D 2 - - - 0x01CAFC 07:CAEC: 18        .byte $18   ; 
- D 2 - - - 0x01CAFD 07:CAED: 14        .byte $14   ; 
- D 2 - - - 0x01CAFE 07:CAEE: 1E        .byte $1E   ; 
- D 2 - - - 0x01CAFF 07:CAEF: 1E        .byte $1E   ; 
- D 2 - - - 0x01CB00 07:CAF0: 1A        .byte $1A   ; 
- D 2 - - - 0x01CB01 07:CAF1: 16        .byte $16   ; 
- D 2 - - - 0x01CB02 07:CAF2: 16        .byte $16   ; 
- D 2 - - - 0x01CB03 07:CAF3: 18        .byte $18   ; 
- D 2 - - - 0x01CB04 07:CAF4: 28        .byte $28   ; 


; bzk garbage
- - - - - - 0x01CB05 07:CAF5: BA        .byte $BA   ; 



sub_CAF6:
C - - - - - 0x01CB06 07:CAF6: A5 15     LDA ram_0015
C - - - - - 0x01CB08 07:CAF8: 29 DF     AND #$DF
C - - - - - 0x01CB0A 07:CAFA: 85 15     STA ram_0015
C - - - - - 0x01CB0C 07:CAFC: 20 EE EF  JSR sub_EFEE_clear_0300_03CF
C - - - - - 0x01CB0F 07:CAFF: A9 01     LDA #$01
C - - - - - 0x01CB11 07:CB01: 85 0E     STA ram_000E
C - - - - - 0x01CB13 07:CB03: A2 10     LDX #$10
loc_CB05:
C D 2 - - - 0x01CB15 07:CB05: A9 00     LDA #$00
C - - - - - 0x01CB17 07:CB07: 9D 03 03  STA ram_0303,X
C - - - - - 0x01CB1A 07:CB0A: 9D 0B 04  STA ram_040B,X
C - - - - - 0x01CB1D 07:CB0D: A9 FF     LDA #$FF
C - - - - - 0x01CB1F 07:CB0F: 9D 01 05  STA ram_0501,X
C - - - - - 0x01CB22 07:CB12: A5 3B     LDA ram_p1_fighter
C - - - - - 0x01CB24 07:CB14: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01CB27 07:CB17: 20 D3 E6  JSR sub_E6D3
C - - - - - 0x01CB2A 07:CB1A: 20 6A CB  JSR sub_CB6A
C - - - - - 0x01CB2D 07:CB1D: 20 35 FA  JSR sub_FA35
C - - - - - 0x01CB30 07:CB20: E0 10     CPX #$10
C - - - - - 0x01CB32 07:CB22: F0 1E     BEQ bra_CB42
C - - - - - 0x01CB34 07:CB24: A5 3C     LDA ram_p2_fighter
C - - - - - 0x01CB36 07:CB26: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01CB39 07:CB29: C5 3B     CMP ram_p1_fighter
C - - - - - 0x01CB3B 07:CB2B: D0 03     BNE bra_CB30
C - - - - - 0x01CB3D 07:CB2D: 18        CLC
C - - - - - 0x01CB3E 07:CB2E: 69 09     ADC #$09
bra_CB30:
C - - - - - 0x01CB40 07:CB30: 20 D3 E6  JSR sub_E6D3
C - - - - - 0x01CB43 07:CB33: 20 6A CB  JSR sub_CB6A
C - - - - - 0x01CB46 07:CB36: 20 35 FA  JSR sub_FA35
C - - - - - 0x01CB49 07:CB39: A9 BC     LDA #$BC
C - - - - - 0x01CB4B 07:CB3B: 9D 02 03  STA ram_0302,X
C - - - - - 0x01CB4E 07:CB3E: A9 F0     LDA #$F0
C - - - - - 0x01CB50 07:CB40: D0 07     BNE bra_CB49
bra_CB42:
C - - - - - 0x01CB52 07:CB42: A9 48     LDA #$48
C - - - - - 0x01CB54 07:CB44: 9D 02 03  STA ram_0302,X
C - - - - - 0x01CB57 07:CB47: A9 30     LDA #$30
bra_CB49:
C - - - - - 0x01CB59 07:CB49: 9D 01 03  STA ram_0301,X
C - - - - - 0x01CB5C 07:CB4C: A9 58     LDA #$58
C - - - - - 0x01CB5E 07:CB4E: 9D 00 05  STA ram_0500,X
C - - - - - 0x01CB61 07:CB51: BC 0A 05  LDY ram_050A,X
C - - - - - 0x01CB64 07:CB54: B9 00 C0  LDA tbl_C000_prg_bank,Y
C - - - - - 0x01CB67 07:CB57: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01CB6A 07:CB5A: E0 40     CPX #$40
C - - - - - 0x01CB6C 07:CB5C: F0 05     BEQ bra_CB63
C - - - - - 0x01CB6E 07:CB5E: A2 40     LDX #$40
C - - - - - 0x01CB70 07:CB60: 4C 05 CB  JMP loc_CB05
bra_CB63:
C - - - - - 0x01CB73 07:CB63: A9 58     LDA #$58
C - - - - - 0x01CB75 07:CB65: 85 62     STA ram_p1_bar_hp
C - - - - - 0x01CB77 07:CB67: 85 63     STA ram_p2_bar_hp
C - - - - - 0x01CB79 07:CB69: 60        RTS



sub_CB6A:
C - - - - - 0x01CB7A 07:CB6A: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01CB7D 07:CB6D: C9 05     CMP #$05
C - - - - - 0x01CB7F 07:CB6F: D0 05     BNE bra_CB76_RTS
C - - - - - 0x01CB81 07:CB71: A9 01     LDA #$01
C - - - - - 0x01CB83 07:CB73: 9D 0A 05  STA ram_050A,X
bra_CB76_RTS:
C - - - - - 0x01CB86 07:CB76: 60        RTS



sub_CB77:
C - - - - - 0x01CB87 07:CB77: 20 4D F8  JSR sub_F84D
C - - - - - 0x01CB8A 07:CB7A: A9 00     LDA #$00
C - - - - - 0x01CB8C 07:CB7C: 20 25 FD  JSR sub_FD25
C - - - - - 0x01CB8F 07:CB7F: A5 B6     LDA ram_00B6
C - - - - - 0x01CB91 07:CB81: C9 70     CMP #$70
C - - - - - 0x01CB93 07:CB83: D0 07     BNE bra_CB8C
C - - - - - 0x01CB95 07:CB85: A9 64     LDA #$64
C - - - - - 0x01CB97 07:CB87: 85 0E     STA ram_000E
C - - - - - 0x01CB99 07:CB89: 20 AC DD  JSR sub_DDAC
bra_CB8C:
C - - - - - 0x01CB9C 07:CB8C: 8D 56 70  STA $7056
C - - - - - 0x01CB9F 07:CB8F: 60        RTS



sub_CB90:
C - - - - - 0x01CBA0 07:CB90: 20 C8 EB  JSR sub_EBC8    ; bzk optimize
C - - - - - 0x01CBA3 07:CB93: A2 14     LDX #$14
C - - - - - 0x01CBA5 07:CB95: 18        CLC
bra_CB96:
C - - - - - 0x01CBA6 07:CB96: 7D 0F E5  ADC tbl_E510 - $01,X
C - - - - - 0x01CBA9 07:CB99: CA        DEX
C - - - - - 0x01CBAA 07:CB9A: D0 FA     BNE bra_CB96
C - - - - - 0x01CBAC 07:CB9C: 48        PHA
C - - - - - 0x01CBAD 07:CB9D: A9 10     LDA #$10
C - - - - - 0x01CBAF 07:CB9F: 85 20     STA ram_0020
C - - - - - 0x01CBB1 07:CBA1: 68        PLA
C - - - - - 0x01CBB2 07:CBA2: 85 B3     STA ram_00B3
loc_CBA4:
C D 2 - - - 0x01CBB4 07:CBA4: A6 20     LDX ram_0020
C - - - - - 0x01CBB6 07:CBA6: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CBB9 07:CBA9: 30 03     BMI bra_CBAE
C - - - - - 0x01CBBB 07:CBAB: 4C 7A CC  JMP loc_CC7A
bra_CBAE:
C - - - - - 0x01CBBE 07:CBAE: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01CBC1 07:CBB1: C9 16     CMP #$16
C - - - - - 0x01CBC3 07:CBB3: D0 0A     BNE bra_CBBF
C - - - - - 0x01CBC5 07:CBB5: BC 03 05  LDY ram_0503,X
C - - - - - 0x01CBC8 07:CBB8: B9 0B 03  LDA ram_030B,Y
C - - - - - 0x01CBCB 07:CBBB: C9 19     CMP #$19
C - - - - - 0x01CBCD 07:CBBD: D0 0F     BNE bra_CBCE
bra_CBBF:
C - - - - - 0x01CBCF 07:CBBF: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CBD2 07:CBC2: 29 40     AND #$40
C - - - - - 0x01CBD4 07:CBC4: F0 10     BEQ bra_CBD6
C - - - - - 0x01CBD6 07:CBC6: E0 10     CPX #$10
C - - - - - 0x01CBD8 07:CBC8: F0 0C     BEQ bra_CBD6
C - - - - - 0x01CBDA 07:CBCA: E0 40     CPX #$40
C - - - - - 0x01CBDC 07:CBCC: F0 08     BEQ bra_CBD6
bra_CBCE:
C - - - - - 0x01CBDE 07:CBCE: A9 00     LDA #$00
C - - - - - 0x01CBE0 07:CBD0: 9D 00 03  STA ram_0300,X
bra_CBD3:
C - - - - - 0x01CBE3 07:CBD3: 4C 7A CC  JMP loc_CC7A
bra_CBD6:
C - - - - - 0x01CBE6 07:CBD6: E0 70     CPX #$70
C - - - - - 0x01CBE8 07:CBD8: B0 F9     BCS bra_CBD3
C - - - - - 0x01CBEA 07:CBDA: BD 01 03  LDA ram_0301,X
C - - - - - 0x01CBED 07:CBDD: 29 08     AND #$08
C - - - - - 0x01CBEF 07:CBDF: F0 0E     BEQ bra_CBEF
C - - - - - 0x01CBF1 07:CBE1: 20 32 ED  JSR sub_ED32
C - - - - - 0x01CBF4 07:CBE4: C9 00     CMP #$00
C - - - - - 0x01CBF6 07:CBE6: F0 07     BEQ bra_CBEF
C - - - - - 0x01CBF8 07:CBE8: A9 00     LDA #$00
C - - - - - 0x01CBFA 07:CBEA: 9D 00 03  STA ram_0300,X
C - - - - - 0x01CBFD 07:CBED: F0 E4     BEQ bra_CBD3
bra_CBEF:
C - - - - - 0x01CBFF 07:CBEF: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CC02 07:CBF2: 29 FD     AND #$FD
C - - - - - 0x01CC04 07:CBF4: 9D 00 03  STA ram_0300,X
C - - - - - 0x01CC07 07:CBF7: BD 01 03  LDA ram_0301,X
C - - - - - 0x01CC0A 07:CBFA: 29 40     AND #$40
C - - - - - 0x01CC0C 07:CBFC: D0 2D     BNE bra_CC2B
C - - - - - 0x01CC0E 07:CBFE: BD 02 03  LDA ram_0302,X
C - - - - - 0x01CC11 07:CC01: C9 08     CMP #$08
C - - - - - 0x01CC13 07:CC03: 90 07     BCC bra_CC0C
C - - - - - 0x01CC15 07:CC05: 7D 0E 03  ADC ram_030E,X
C - - - - - 0x01CC18 07:CC08: C9 F7     CMP #$F7
C - - - - - 0x01CC1A 07:CC0A: 90 08     BCC bra_CC14
bra_CC0C:
C - - - - - 0x01CC1C 07:CC0C: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CC1F 07:CC0F: 09 02     ORA #$02
C - - - - - 0x01CC21 07:CC11: 9D 00 03  STA ram_0300,X
bra_CC14:
C - - - - - 0x01CC24 07:CC14: BD 03 03  LDA ram_0303,X
C - - - - - 0x01CC27 07:CC17: D0 57     BNE bra_CC70
C - - - - - 0x01CC29 07:CC19: BD 02 03  LDA ram_0302,X
C - - - - - 0x01CC2C 07:CC1C: 9D 04 05  STA ram_0504,X
C - - - - - 0x01CC2F 07:CC1F: 18        CLC
C - - - - - 0x01CC30 07:CC20: 7D 0E 03  ADC ram_030E,X
C - - - - - 0x01CC33 07:CC23: 9D 05 05  STA ram_0505,X
C - - - - - 0x01CC36 07:CC26: B0 48     BCS bra_CC70
C - - - - - 0x01CC38 07:CC28: 4C 5F CC  JMP loc_CC5F
bra_CC2B:
C - - - - - 0x01CC3B 07:CC2B: BD 02 03  LDA ram_0302,X
C - - - - - 0x01CC3E 07:CC2E: C9 F0     CMP #$F0
C - - - - - 0x01CC40 07:CC30: B0 09     BCS bra_CC3B
C - - - - - 0x01CC42 07:CC32: 69 07     ADC #$07
C - - - - - 0x01CC44 07:CC34: FD 0E 03  SBC ram_030E,X
C - - - - - 0x01CC47 07:CC37: C9 09     CMP #$09
C - - - - - 0x01CC49 07:CC39: B0 08     BCS bra_CC43
bra_CC3B:
C - - - - - 0x01CC4B 07:CC3B: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CC4E 07:CC3E: 09 02     ORA #$02
C - - - - - 0x01CC50 07:CC40: 9D 00 03  STA ram_0300,X
bra_CC43:
C - - - - - 0x01CC53 07:CC43: BD 02 03  LDA ram_0302,X
C - - - - - 0x01CC56 07:CC46: 18        CLC
C - - - - - 0x01CC57 07:CC47: 69 07     ADC #< $0007
C - - - - - 0x01CC59 07:CC49: 9D 05 05  STA ram_0505,X
C - - - - - 0x01CC5C 07:CC4C: BD 03 03  LDA ram_0303,X
C - - - - - 0x01CC5F 07:CC4F: 69 00     ADC #> $0007
C - - - - - 0x01CC61 07:CC51: D0 1D     BNE bra_CC70
C - - - - - 0x01CC63 07:CC53: BD 05 05  LDA ram_0505,X
C - - - - - 0x01CC66 07:CC56: 38        SEC
C - - - - - 0x01CC67 07:CC57: FD 0E 03  SBC ram_030E,X
C - - - - - 0x01CC6A 07:CC5A: 9D 04 05  STA ram_0504,X
C - - - - - 0x01CC6D 07:CC5D: 90 11     BCC bra_CC70
loc_CC5F:
C D 2 - - - 0x01CC6F 07:CC5F: BD 05 03  LDA ram_0305,X
C - - - - - 0x01CC72 07:CC62: D0 0C     BNE bra_CC70
C - - - - - 0x01CC74 07:CC64: BD 04 03  LDA ram_0304,X
C - - - - - 0x01CC77 07:CC67: 18        CLC
C - - - - - 0x01CC78 07:CC68: 7D 0F 03  ADC ram_030F,X
C - - - - - 0x01CC7B 07:CC6B: 9D 06 05  STA ram_0506,X
; bzk optimize, useless branch
C - - - - - 0x01CC7E 07:CC6E: 90 00     BCC bra_CC70
bra_CC70:
C - - - - - 0x01CC80 07:CC70: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CC83 07:CC73: 10 05     BPL bra_CC7A
C - - - - - 0x01CC85 07:CC75: 86 1D     STX ram_001D
C - - - - - 0x01CC87 07:CC77: 20 CD EB  JSR sub_EBCD
bra_CC7A:
loc_CC7A:
C D 2 - - - 0x01CC8A 07:CC7A: A5 20     LDA ram_0020
C - - - - - 0x01CC8C 07:CC7C: 18        CLC
C - - - - - 0x01CC8D 07:CC7D: 69 10     ADC #$10
C - - - - - 0x01CC8F 07:CC7F: 85 20     STA ram_0020
C - - - - - 0x01CC91 07:CC81: A2 10     LDX #$10
C - - - - - 0x01CC93 07:CC83: 38        SEC
C - - - - - 0x01CC94 07:CC84: E9 D0     SBC #$D0
C - - - - - 0x01CC96 07:CC86: 18        CLC
C - - - - - 0x01CC97 07:CC87: F0 03     BEQ bra_CC8C
C - - - - - 0x01CC99 07:CC89: 4C A4 CB  JMP loc_CBA4
bra_CC8C:
C - - - - - 0x01CC9C 07:CC8C: 7D 10 E5  ADC tbl_E510,X
C - - - - - 0x01CC9F 07:CC8F: CA        DEX
C - - - - - 0x01CCA0 07:CC90: D0 FA     BNE bra_CC8C
C - - - - - 0x01CCA2 07:CC92: 48        PHA
C - - - - - 0x01CCA3 07:CC93: A5 3E     LDA ram_game_time
C - - - - - 0x01CCA5 07:CC95: F0 03     BEQ bra_CC9A
C - - - - - 0x01CCA7 07:CC97: 20 9B CF  JSR sub_CF9B
bra_CC9A:
C - - - - - 0x01CCAA 07:CC9A: 68        PLA
C - - - - - 0x01CCAB 07:CC9B: 85 50     STA ram_0050
C - - - - - 0x01CCAD 07:CC9D: 60        RTS



sub_CC9E:
C - - - - - 0x01CCAE 07:CC9E: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CCB1 07:CCA1: 29 08     AND #$08
C - - - - - 0x01CCB3 07:CCA3: D0 03     BNE bra_CCA8
C - - - - - 0x01CCB5 07:CCA5: 4C CF CD  JMP loc_CDCF
bra_CCA8:
C - - - - - 0x01CCB8 07:CCA8: A9 FF     LDA #$FF
C - - - - - 0x01CCBA 07:CCAA: 9D 01 05  STA ram_0501,X
C - - - - - 0x01CCBD 07:CCAD: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01CCC0 07:CCB0: C9 02     CMP #$02
C - - - - - 0x01CCC2 07:CCB2: D0 11     BNE bra_CCC5
C - - - - - 0x01CCC4 07:CCB4: BD 10 03  LDA ram_0310,X
C - - - - - 0x01CCC7 07:CCB7: 10 0C     BPL bra_CCC5
C - - - - - 0x01CCC9 07:CCB9: BD 1D 03  LDA ram_031D,X
C - - - - - 0x01CCCC 07:CCBC: C9 AE     CMP #$AE
C - - - - - 0x01CCCE 07:CCBE: D0 05     BNE bra_CCC5
C - - - - - 0x01CCD0 07:CCC0: A9 00     LDA #$00
C - - - - - 0x01CCD2 07:CCC2: 9D 10 03  STA ram_0310,X
bra_CCC5:
C - - - - - 0x01CCD5 07:CCC5: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01CCD8 07:CCC8: C9 05     CMP #$05
C - - - - - 0x01CCDA 07:CCCA: D0 20     BNE bra_CCEC
C - - - - - 0x01CCDC 07:CCCC: BC 0D 05  LDY ram_050D,X
C - - - - - 0x01CCDF 07:CCCF: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01CCE2 07:CCD2: C9 03     CMP #$03
C - - - - - 0x01CCE4 07:CCD4: F0 50     BEQ bra_CD26
C - - - - - 0x01CCE6 07:CCD6: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01CCE9 07:CCD9: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CCEC 07:CCDC: C9 05     CMP #$05
C - - - - - 0x01CCEE 07:CCDE: B0 04     BCS bra_CCE4
C - - - - - 0x01CCF0 07:CCE0: A9 1E     LDA #$1E
C - - - - - 0x01CCF2 07:CCE2: D0 02     BNE bra_CCE6
bra_CCE4:
C - - - - - 0x01CCF4 07:CCE4: A9 1F     LDA #$1F
bra_CCE6:
C - - - - - 0x01CCF6 07:CCE6: 20 85 E8  JSR sub_E885
C - - - - - 0x01CCF9 07:CCE9: 4C 0D CD  JMP loc_CD0D
bra_CCEC:
C - - - - - 0x01CCFC 07:CCEC: C9 07     CMP #$07
C - - - - - 0x01CCFE 07:CCEE: D0 36     BNE bra_CD26
C - - - - - 0x01CD00 07:CCF0: BC 0D 05  LDY ram_050D,X
C - - - - - 0x01CD03 07:CCF3: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01CD06 07:CCF6: C9 02     CMP #$02
C - - - - - 0x01CD08 07:CCF8: F0 2C     BEQ bra_CD26
C - - - - - 0x01CD0A 07:CCFA: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01CD0D 07:CCFD: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CD10 07:CD00: C9 05     CMP #$05
C - - - - - 0x01CD12 07:CD02: B0 04     BCS bra_CD08
C - - - - - 0x01CD14 07:CD04: A9 20     LDA #$20
C - - - - - 0x01CD16 07:CD06: D0 02     BNE bra_CD0A
bra_CD08:
C - - - - - 0x01CD18 07:CD08: A9 21     LDA #$21
bra_CD0A:
C - - - - - 0x01CD1A 07:CD0A: 20 85 E8  JSR sub_E885
loc_CD0D:
C D 2 - - - 0x01CD1D 07:CD0D: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CD20 07:CD10: 4A        LSR
C - - - - - 0x01CD21 07:CD11: 4A        LSR
C - - - - - 0x01CD22 07:CD12: 4A        LSR
C - - - - - 0x01CD23 07:CD13: 9D 0D 04  STA ram_damage,X
C - - - - - 0x01CD26 07:CD16: 20 00 FB  JSR sub_FB00
C - - - - - 0x01CD29 07:CD19: BD 00 05  LDA ram_0500,X
C - - - - - 0x01CD2C 07:CD1C: 30 10     BMI bra_CD2E
C - - - - - 0x01CD2E 07:CD1E: A9 14     LDA #$14
C - - - - - 0x01CD30 07:CD20: 20 40 CE  JSR sub_CE40
C - - - - - 0x01CD33 07:CD23: 4C CF CD  JMP loc_CDCF
bra_CD26:
C - - - - - 0x01CD36 07:CD26: 20 00 FB  JSR sub_FB00
C - - - - - 0x01CD39 07:CD29: BD 00 05  LDA ram_0500,X
C - - - - - 0x01CD3C 07:CD2C: 10 03     BPL bra_CD31
bra_CD2E:
C - - - - - 0x01CD3E 07:CD2E: 4C 3B CD  JMP loc_CD3B
bra_CD31:
C - - - - - 0x01CD41 07:CD31: 20 C4 F7  JSR sub_F7C4
C - - - - - 0x01CD44 07:CD34: BD 03 05  LDA ram_0503,X
C - - - - - 0x01CD47 07:CD37: C9 18     CMP #$18
C - - - - - 0x01CD49 07:CD39: 90 12     BCC bra_CD4D
loc_CD3B:
C D 2 - - - 0x01CD4B 07:CD3B: 20 AA F0  JSR sub_F0AA
C - - - - - 0x01CD4E 07:CD3E: A5 28     LDA ram_0028
C - - - - - 0x01CD50 07:CD40: F0 03     BEQ bra_CD45
C - - - - - 0x01CD52 07:CD42: 20 F1 F0  JSR sub_F0F1
bra_CD45:
C - - - - - 0x01CD55 07:CD45: A9 17     LDA #$17
C - - - - - 0x01CD57 07:CD47: 20 85 E8  JSR sub_E885
C - - - - - 0x01CD5A 07:CD4A: 4C CA CD  JMP loc_CDCA
bra_CD4D:
C - - - - - 0x01CD5D 07:CD4D: 20 47 EF  JSR sub_EF47
C - - - - - 0x01CD60 07:CD50: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01CD63 07:CD53: C9 02     CMP #$02
C - - - - - 0x01CD65 07:CD55: D0 04     BNE bra_CD5B
C - - - - - 0x01CD67 07:CD57: A9 13     LDA #$13
C - - - - - 0x01CD69 07:CD59: D0 6C     BNE bra_CDC7
bra_CD5B:
C - - - - - 0x01CD6B 07:CD5B: C9 03     CMP #$03
C - - - - - 0x01CD6D 07:CD5D: D0 2D     BNE bra_CD8C
C - - - - - 0x01CD6F 07:CD5F: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CD72 07:CD62: C9 08     CMP #$08
C - - - - - 0x01CD74 07:CD64: 90 14     BCC bra_CD7A
C - - - - - 0x01CD76 07:CD66: BD 0F 03  LDA ram_030F,X
C - - - - - 0x01CD79 07:CD69: FD 0F 04  SBC ram_040F,X
C - - - - - 0x01CD7C 07:CD6C: 7D 04 03  ADC ram_0304,X
C - - - - - 0x01CD7F 07:CD6F: C9 10     CMP #$10
C - - - - - 0x01CD81 07:CD71: B0 07     BCS bra_CD7A
C - - - - - 0x01CD83 07:CD73: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01CD86 07:CD76: A9 10     LDA #$10
C - - - - - 0x01CD88 07:CD78: D0 4D     BNE bra_CDC7
bra_CD7A:
C - - - - - 0x01CD8A 07:CD7A: 20 05 F1  JSR sub_F105
C - - - - - 0x01CD8D 07:CD7D: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CD90 07:CD80: C9 08     CMP #$08
C - - - - - 0x01CD92 07:CD82: B0 04     BCS bra_CD88
C - - - - - 0x01CD94 07:CD84: A9 12     LDA #$12
C - - - - - 0x01CD96 07:CD86: D0 3F     BNE bra_CDC7
bra_CD88:
C - - - - - 0x01CD98 07:CD88: A9 11     LDA #$11
C - - - - - 0x01CD9A 07:CD8A: D0 3B     BNE bra_CDC7
bra_CD8C:
C - - - - - 0x01CD9C 07:CD8C: BD 0F 03  LDA ram_030F,X
C - - - - - 0x01CD9F 07:CD8F: FD 0F 04  SBC ram_040F,X
C - - - - - 0x01CDA2 07:CD92: 7D 04 03  ADC ram_0304,X
C - - - - - 0x01CDA5 07:CD95: C9 10     CMP #$10
C - - - - - 0x01CDA7 07:CD97: B0 0E     BCS bra_CDA7
C - - - - - 0x01CDA9 07:CD99: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CDAC 07:CD9C: C9 08     CMP #$08
C - - - - - 0x01CDAE 07:CD9E: 90 15     BCC bra_CDB5
C - - - - - 0x01CDB0 07:CDA0: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01CDB3 07:CDA3: A9 10     LDA #$10
C - - - - - 0x01CDB5 07:CDA5: D0 20     BNE bra_CDC7
bra_CDA7:
C - - - - - 0x01CDB7 07:CDA7: BD 0F 04  LDA ram_040F,X
C - - - - - 0x01CDBA 07:CDAA: FD 04 03  SBC ram_0304,X
C - - - - - 0x01CDBD 07:CDAD: C9 10     CMP #$10
C - - - - - 0x01CDBF 07:CDAF: B0 04     BCS bra_CDB5
C - - - - - 0x01CDC1 07:CDB1: A9 0C     LDA #$0C
C - - - - - 0x01CDC3 07:CDB3: D0 02     BNE bra_CDB7
bra_CDB5:
C - - - - - 0x01CDC5 07:CDB5: A9 0E     LDA #$0E
bra_CDB7:
C - - - - - 0x01CDC7 07:CDB7: 85 3F     STA ram_003F
C - - - - - 0x01CDC9 07:CDB9: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01CDCC 07:CDBC: C9 08     CMP #$08
C - - - - - 0x01CDCE 07:CDBE: B0 02     BCS bra_CDC2
C - - - - - 0x01CDD0 07:CDC0: E6 3F     INC ram_003F
bra_CDC2:
C - - - - - 0x01CDD2 07:CDC2: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01CDD5 07:CDC5: A5 3F     LDA ram_003F
bra_CDC7:
C - - - - - 0x01CDD7 07:CDC7: 20 85 E8  JSR sub_E885
loc_CDCA:
C D 2 - - - 0x01CDDA 07:CDCA: A9 15     LDA #$15
C - - - - - 0x01CDDC 07:CDCC: 20 40 CE  JSR sub_CE40
loc_CDCF:
C D 2 - - - 0x01CDDF 07:CDCF: 20 D2 EC  JSR sub_ECD2
C - - - - - 0x01CDE2 07:CDD2: 60        RTS



sub_CDD3:
C - - - - - 0x01CDE3 07:CDD3: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CDE6 07:CDD6: 10 0B     BPL bra_CDE3_RTS
C - - - - - 0x01CDE8 07:CDD8: 29 04     AND #$04
C - - - - - 0x01CDEA 07:CDDA: F0 07     BEQ bra_CDE3_RTS
C - - - - - 0x01CDEC 07:CDDC: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CDEF 07:CDDF: 29 08     AND #$08
C - - - - - 0x01CDF1 07:CDE1: F0 01     BEQ bra_CDE4
bra_CDE3_RTS:
C - - - - - 0x01CDF3 07:CDE3: 60        RTS
bra_CDE4:
C - - - - - 0x01CDF4 07:CDE4: BD 01 03  LDA ram_0301,X
C - - - - - 0x01CDF7 07:CDE7: 29 08     AND #$08
C - - - - - 0x01CDF9 07:CDE9: F0 08     BEQ bra_CDF3
C - - - - - 0x01CDFB 07:CDEB: A9 41     LDA #$41
C - - - - - 0x01CDFD 07:CDED: 20 85 E8  JSR sub_E885
C - - - - - 0x01CE00 07:CDF0: 4C 37 CE  JMP loc_CE37
bra_CDF3:
C - - - - - 0x01CE03 07:CDF3: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01CE06 07:CDF6: C9 08     CMP #$08
C - - - - - 0x01CE08 07:CDF8: D0 12     BNE bra_CE0C
C - - - - - 0x01CE0A 07:CDFA: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01CE0D 07:CDFD: C9 3D     CMP #$3D
C - - - - - 0x01CE0F 07:CDFF: D0 31     BNE bra_CE32
C - - - - - 0x01CE11 07:CE01: 20 22 EF  JSR sub_EF22
C - - - - - 0x01CE14 07:CE04: A9 3E     LDA #$3E
C - - - - - 0x01CE16 07:CE06: 20 85 E8  JSR sub_E885
C - - - - - 0x01CE19 07:CE09: 4C 32 CE  JMP loc_CE32
bra_CE0C:
C - - - - - 0x01CE1C 07:CE0C: C9 00     CMP #$00
C - - - - - 0x01CE1E 07:CE0E: D0 0F     BNE bra_CE1F
C - - - - - 0x01CE20 07:CE10: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01CE23 07:CE13: C9 40     CMP #$40
C - - - - - 0x01CE25 07:CE15: D0 1B     BNE bra_CE32
C - - - - - 0x01CE27 07:CE17: A9 06     LDA #$06
C - - - - - 0x01CE29 07:CE19: 20 85 E8  JSR sub_E885
C - - - - - 0x01CE2C 07:CE1C: 4C 32 CE  JMP loc_CE32
bra_CE1F:
C - - - - - 0x01CE2F 07:CE1F: C9 03     CMP #$03
C - - - - - 0x01CE31 07:CE21: D0 0F     BNE bra_CE32
C - - - - - 0x01CE33 07:CE23: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01CE36 07:CE26: C9 3F     CMP #$3F
C - - - - - 0x01CE38 07:CE28: D0 08     BNE bra_CE32
C - - - - - 0x01CE3A 07:CE2A: A9 40     LDA #$40
C - - - - - 0x01CE3C 07:CE2C: 20 85 E8  JSR sub_E885
C - - - - - 0x01CE3F 07:CE2F: 4C 32 CE  JMP loc_CE32
bra_CE32:
loc_CE32:
C D 2 - - - 0x01CE42 07:CE32: A9 0A     LDA #$0A
C - - - - - 0x01CE44 07:CE34: 9D 0C 04  STA ram_040C,X
loc_CE37:
C D 2 - - - 0x01CE47 07:CE37: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CE4A 07:CE3A: 29 FB     AND #$FB
C - - - - - 0x01CE4C 07:CE3C: 9D 00 03  STA ram_0300,X
C - - - - - 0x01CE4F 07:CE3F: 60        RTS



sub_CE40:
C - - - - - 0x01CE50 07:CE40: 48        PHA
C - - - - - 0x01CE51 07:CE41: A5 2A     LDA ram_002A
C - - - - - 0x01CE53 07:CE43: E9 03     SBC #$03
C - - - - - 0x01CE55 07:CE45: 85 DB     STA ram_00DB
C - - - - - 0x01CE57 07:CE47: A5 2B     LDA ram_002B
C - - - - - 0x01CE59 07:CE49: E9 03     SBC #$03
C - - - - - 0x01CE5B 07:CE4B: 85 DC     STA ram_00DC
C - - - - - 0x01CE5D 07:CE4D: 68        PLA
C - - - - - 0x01CE5E 07:CE4E: 20 E0 EC  JSR sub_ECE0
C - - - - - 0x01CE61 07:CE51: BD 00 05  LDA ram_0500,X
C - - - - - 0x01CE64 07:CE54: 30 05     BMI bra_CE5B_RTS
C - - - - - 0x01CE66 07:CE56: A9 13     LDA #$13
C - - - - - 0x01CE68 07:CE58: 20 E9 F7  JSR sub_F7E9
bra_CE5B_RTS:
C - - - - - 0x01CE6B 07:CE5B: 60        RTS



sub_CE5C:
C - - - - - 0x01CE6C 07:CE5C: BD 0B 04  LDA ram_040B,X
C - - - - - 0x01CE6F 07:CE5F: D0 76     BNE bra_CED7_RTS
C - - - - - 0x01CE71 07:CE61: A5 5F     LDA ram_005F
C - - - - - 0x01CE73 07:CE63: D0 0C     BNE bra_CE71
C - - - - - 0x01CE75 07:CE65: B0 06     BCS bra_CE6D
- - - - - - 0x01CE77 07:CE67: A9 01     LDA #$01
- - - - - - 0x01CE79 07:CE69: 85 5F     STA ram_005F
- - - - - - 0x01CE7B 07:CE6B: D0 04     BNE bra_CE71
bra_CE6D:
C - - - - - 0x01CE7D 07:CE6D: A9 FF     LDA #$FF
C - - - - - 0x01CE7F 07:CE6F: 85 5F     STA ram_005F
bra_CE71:
C - - - - - 0x01CE81 07:CE71: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01CE84 07:CE74: 29 08     AND #$08
C - - - - - 0x01CE86 07:CE76: D0 5F     BNE bra_CED7_RTS
bra_CE78:
C - - - - - 0x01CE88 07:CE78: B9 00 03  LDA ram_0300,Y
C - - - - - 0x01CE8B 07:CE7B: 10 51     BPL bra_CECE
C - - - - - 0x01CE8D 07:CE7D: 29 01     AND #$01
C - - - - - 0x01CE8F 07:CE7F: D0 4D     BNE bra_CECE
C - - - - - 0x01CE91 07:CE81: 20 5B EE  JSR sub_EE5B
C - - - - - 0x01CE94 07:CE84: C9 00     CMP #$00
C - - - - - 0x01CE96 07:CE86: F0 46     BEQ bra_CECE
C - - - - - 0x01CE98 07:CE88: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CE9B 07:CE8B: 09 08     ORA #$08
C - - - - - 0x01CE9D 07:CE8D: 9D 00 03  STA ram_0300,X
C - - - - - 0x01CEA0 07:CE90: 84 64     STY ram_0064
C - - - - - 0x01CEA2 07:CE92: 20 4A ED  JSR sub_ED4A
C - - - - - 0x01CEA5 07:CE95: A5 65     LDA ram_0065
C - - - - - 0x01CEA7 07:CE97: 9D 0D 04  STA ram_damage,X
C - - - - - 0x01CEAA 07:CE9A: 98        TYA
C - - - - - 0x01CEAB 07:CE9B: 9D 0D 05  STA ram_050D,X
C - - - - - 0x01CEAE 07:CE9E: A5 2A     LDA ram_002A
C - - - - - 0x01CEB0 07:CEA0: 9D 0E 04  STA ram_040E,X
C - - - - - 0x01CEB3 07:CEA3: A5 2B     LDA ram_002B
C - - - - - 0x01CEB5 07:CEA5: 9D 0F 04  STA ram_040F,X
C - - - - - 0x01CEB8 07:CEA8: C0 10     CPY #$10
C - - - - - 0x01CEBA 07:CEAA: F0 04     BEQ bra_CEB0
C - - - - - 0x01CEBC 07:CEAC: C0 40     CPY #$40
C - - - - - 0x01CEBE 07:CEAE: D0 0B     BNE bra_CEBB
bra_CEB0:
C - - - - - 0x01CEC0 07:CEB0: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CEC3 07:CEB3: 09 10     ORA #$10
C - - - - - 0x01CEC5 07:CEB5: 9D 00 03  STA ram_0300,X
C - - - - - 0x01CEC8 07:CEB8: 4C C3 CE  JMP loc_CEC3
bra_CEBB:
C - - - - - 0x01CECB 07:CEBB: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CECE 07:CEBE: 29 EF     AND #$EF
C - - - - - 0x01CED0 07:CEC0: 9D 00 03  STA ram_0300,X
loc_CEC3:
C D 2 - - - 0x01CED3 07:CEC3: B9 00 03  LDA ram_0300,Y
C - - - - - 0x01CED6 07:CEC6: 09 05     ORA #$05
C - - - - - 0x01CED8 07:CEC8: 99 00 03  STA ram_0300,Y
C - - - - - 0x01CEDB 07:CECB: 4C D7 CE  JMP loc_CED7_RTS
bra_CECE:
C - - - - - 0x01CEDE 07:CECE: 98        TYA
C - - - - - 0x01CEDF 07:CECF: 18        CLC
C - - - - - 0x01CEE0 07:CED0: 69 10     ADC #$10
C - - - - - 0x01CEE2 07:CED2: A8        TAY
C - - - - - 0x01CEE3 07:CED3: C5 36     CMP ram_0036
C - - - - - 0x01CEE5 07:CED5: 90 A1     BCC bra_CE78
bra_CED7_RTS:
loc_CED7_RTS:
C D 2 - - - 0x01CEE7 07:CED7: 60        RTS



sub_CED8:
C - - - - - 0x01CEE8 07:CED8: 85 BE     STA ram_00BE
C - - - - - 0x01CEEA 07:CEDA: AA        TAX
C - - - - - 0x01CEEB 07:CEDB: B5 B4     LDA ram_00B4,X
C - - - - - 0x01CEED 07:CEDD: 85 21     STA ram_0021
C - - - - - 0x01CEEF 07:CEDF: B5 B6     LDA ram_00B6,X
C - - - - - 0x01CEF1 07:CEE1: 85 22     STA ram_0022
C - - - - - 0x01CEF3 07:CEE3: E0 00     CPX #$00
C - - - - - 0x01CEF5 07:CEE5: D0 07     BNE bra_CEEE
C - - - - - 0x01CEF7 07:CEE7: A0 40     LDY #$40
C - - - - - 0x01CEF9 07:CEE9: A2 10     LDX #$10
C - - - - - 0x01CEFB 07:CEEB: 4C F2 CE  JMP loc_CEF2
bra_CEEE:
C - - - - - 0x01CEFE 07:CEEE: A2 40     LDX #$40
C - - - - - 0x01CF00 07:CEF0: A0 10     LDY #$10
loc_CEF2:
C D 2 - - - 0x01CF02 07:CEF2: BD 0C 04  LDA ram_040C,X
C - - - - - 0x01CF05 07:CEF5: F0 01     BEQ bra_CEF8
C - - - - - 0x01CF07 07:CEF7: 60        RTS
bra_CEF8:
C - - - - - 0x01CF08 07:CEF8: 20 30 F4  JSR sub_F430
C - - - - - 0x01CF0B 07:CEFB: 20 0F F6  JSR sub_F60F
C - - - - - 0x01CF0E 07:CEFE: 20 8F D0  JSR sub_D08F
C - - - - - 0x01CF11 07:CF01: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CF14 07:CF04: 29 40     AND #$40
C - - - - - 0x01CF16 07:CF06: F0 0E     BEQ bra_CF16
C - - - - - 0x01CF18 07:CF08: A9 00     LDA #$00
C - - - - - 0x01CF1A 07:CF0A: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01CF1D 07:CF0D: 9D 00 04  STA ram_0400,X
C - - - - - 0x01CF20 07:CF10: 20 47 EF  JSR sub_EF47
C - - - - - 0x01CF23 07:CF13: 4C 20 CF  JMP loc_CF20
bra_CF16:
C - - - - - 0x01CF26 07:CF16: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01CF29 07:CF19: C9 02     CMP #$02
C - - - - - 0x01CF2B 07:CF1B: D0 03     BNE bra_CF20
C - - - - - 0x01CF2D 07:CF1D: 20 47 EF  JSR sub_EF47
bra_CF20:
loc_CF20:
C D 2 - - - 0x01CF30 07:CF20: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01CF33 07:CF23: D0 07     BNE bra_CF2C
C - - - - - 0x01CF35 07:CF25: 20 42 F9  JSR sub_F942
C - - - - - 0x01CF38 07:CF28: C9 00     CMP #$00
C - - - - - 0x01CF3A 07:CF2A: D0 6E     BNE bra_CF9A_RTS
bra_CF2C:
C - - - - - 0x01CF3C 07:CF2C: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01CF3F 07:CF2F: C9 01     CMP #$01
C - - - - - 0x01CF41 07:CF31: D0 06     BNE bra_CF39
C - - - - - 0x01CF43 07:CF33: 20 3C D3  JSR sub_D33C
C - - - - - 0x01CF46 07:CF36: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF39:
C - - - - - 0x01CF49 07:CF39: C9 02     CMP #$02
C - - - - - 0x01CF4B 07:CF3B: D0 06     BNE bra_CF43
C - - - - - 0x01CF4D 07:CF3D: 20 6C D4  JSR sub_D46C
C - - - - - 0x01CF50 07:CF40: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF43:
C - - - - - 0x01CF53 07:CF43: C9 03     CMP #$03
C - - - - - 0x01CF55 07:CF45: D0 06     BNE bra_CF4D
C - - - - - 0x01CF57 07:CF47: 20 16 D6  JSR sub_D616
C - - - - - 0x01CF5A 07:CF4A: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF4D:
C - - - - - 0x01CF5D 07:CF4D: C9 05     CMP #$05
C - - - - - 0x01CF5F 07:CF4F: D0 06     BNE bra_CF57
C - - - - - 0x01CF61 07:CF51: 20 6C D2  JSR sub_D26C
C - - - - - 0x01CF64 07:CF54: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF57:
C - - - - - 0x01CF67 07:CF57: C9 07     CMP #$07
C - - - - - 0x01CF69 07:CF59: D0 06     BNE bra_CF61
C - - - - - 0x01CF6B 07:CF5B: 20 EE D2  JSR sub_D2EE
C - - - - - 0x01CF6E 07:CF5E: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF61:
C - - - - - 0x01CF71 07:CF61: C9 40     CMP #$40
C - - - - - 0x01CF73 07:CF63: D0 06     BNE bra_CF6B
C - - - - - 0x01CF75 07:CF65: 20 C5 D0  JSR sub_D0C5
C - - - - - 0x01CF78 07:CF68: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF6B:
C - - - - - 0x01CF7B 07:CF6B: C9 41     CMP #$41
C - - - - - 0x01CF7D 07:CF6D: D0 0D     BNE bra_CF7C
C - - - - - 0x01CF7F 07:CF6F: BD 00 03  LDA ram_0300,X
C - - - - - 0x01CF82 07:CF72: 29 40     AND #$40
C - - - - - 0x01CF84 07:CF74: F0 06     BEQ bra_CF7C
C - - - - - 0x01CF86 07:CF76: 20 35 FA  JSR sub_FA35
C - - - - - 0x01CF89 07:CF79: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF7C:
C - - - - - 0x01CF8C 07:CF7C: C9 42     CMP #$42
C - - - - - 0x01CF8E 07:CF7E: D0 06     BNE bra_CF86
C - - - - - 0x01CF90 07:CF80: 20 44 D0  JSR sub_D044
C - - - - - 0x01CF93 07:CF83: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF86:
C - - - - - 0x01CF96 07:CF86: C9 43     CMP #$43
C - - - - - 0x01CF98 07:CF88: D0 06     BNE bra_CF90
C - - - - - 0x01CF9A 07:CF8A: 20 2B D0  JSR sub_D02B
C - - - - - 0x01CF9D 07:CF8D: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF90:
C - - - - - 0x01CFA0 07:CF90: C9 51     CMP #$51
C - - - - - 0x01CFA2 07:CF92: D0 06     BNE bra_CF9A_RTS
C - - - - - 0x01CFA4 07:CF94: 20 F2 CF  JSR sub_CFF2
C - - - - - 0x01CFA7 07:CF97: 4C 9A CF  JMP loc_CF9A_RTS
bra_CF9A_RTS:
loc_CF9A_RTS:
C D 2 - - - 0x01CFAA 07:CF9A: 60        RTS



sub_CF9B:
C - - - - - 0x01CFAB 07:CF9B: A9 00     LDA #$00
C - - - - - 0x01CFAD 07:CF9D: 85 5F     STA ram_005F
C - - - - - 0x01CFAF 07:CF9F: A2 10     LDX #$10
C - - - - - 0x01CFB1 07:CFA1: A0 40     LDY #$40
C - - - - - 0x01CFB3 07:CFA3: A9 70     LDA #$70
C - - - - - 0x01CFB5 07:CFA5: 85 36     STA ram_0036
C - - - - - 0x01CFB7 07:CFA7: 20 5C CE  JSR sub_CE5C
C - - - - - 0x01CFBA 07:CFAA: A5 5F     LDA ram_005F
C - - - - - 0x01CFBC 07:CFAC: 30 02     BMI bra_CFB0
C - - - - - 0x01CFBE 07:CFAE: D0 09     BNE bra_CFB9
bra_CFB0:
C - - - - - 0x01CFC0 07:CFB0: A2 40     LDX #$40
C - - - - - 0x01CFC2 07:CFB2: 86 36     STX ram_0036
C - - - - - 0x01CFC4 07:CFB4: A0 10     LDY #$10
C - - - - - 0x01CFC6 07:CFB6: 20 5C CE  JSR sub_CE5C
bra_CFB9:
C - - - - - 0x01CFC9 07:CFB9: A2 20     LDX #$20
C - - - - - 0x01CFCB 07:CFBB: A0 50     LDY #$50
C - - - - - 0x01CFCD 07:CFBD: 20 BE EF  JSR sub_EFBE
C - - - - - 0x01CFD0 07:CFC0: C9 00     CMP #$00
C - - - - - 0x01CFD2 07:CFC2: F0 0F     BEQ bra_CFD3
C - - - - - 0x01CFD4 07:CFC4: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01CFD7 07:CFC7: C9 41     CMP #$41
C - - - - - 0x01CFD9 07:CFC9: F0 08     BEQ bra_CFD3
C - - - - - 0x01CFDB 07:CFCB: A9 84     LDA #$84
C - - - - - 0x01CFDD 07:CFCD: 9D 00 03  STA ram_0300,X
C - - - - - 0x01CFE0 07:CFD0: 99 00 03  STA ram_0300,Y
bra_CFD3:
C - - - - - 0x01CFE3 07:CFD3: A2 10     LDX #$10
C - - - - - 0x01CFE5 07:CFD5: 20 9E CC  JSR sub_CC9E
C - - - - - 0x01CFE8 07:CFD8: A2 40     LDX #$40
C - - - - - 0x01CFEA 07:CFDA: 20 9E CC  JSR sub_CC9E
C - - - - - 0x01CFED 07:CFDD: A2 10     LDX #$10
C - - - - - 0x01CFEF 07:CFDF: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01CFF2 07:CFE2: A2 40     LDX #$40
C - - - - - 0x01CFF4 07:CFE4: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01CFF7 07:CFE7: A2 20     LDX #$20
C - - - - - 0x01CFF9 07:CFE9: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01CFFC 07:CFEC: A2 50     LDX #$50
C - - - - - 0x01CFFE 07:CFEE: 20 D3 CD  JSR sub_CDD3
C - - - - - 0x01D001 07:CFF1: 60        RTS



sub_CFF2:
C - - - - - 0x01D002 07:CFF2: 98        TYA
C - - - - - 0x01D003 07:CFF3: 48        PHA
C - - - - - 0x01D004 07:CFF4: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01D007 07:CFF7: C9 03     CMP #$03
C - - - - - 0x01D009 07:CFF9: D0 23     BNE bra_D01E
C - - - - - 0x01D00B 07:CFFB: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D00E 07:CFFE: 29 40     AND #$40
C - - - - - 0x01D010 07:D000: D0 05     BNE bra_D007
C - - - - - 0x01D012 07:D002: B9 00 05  LDA ram_0500,Y
C - - - - - 0x01D015 07:D005: 10 21     BPL bra_D028
bra_D007:
C - - - - - 0x01D017 07:D007: A9 51     LDA #$51
C - - - - - 0x01D019 07:D009: 20 85 E8  JSR sub_E885
C - - - - - 0x01D01C 07:D00C: A9 02     LDA #$02
C - - - - - 0x01D01E 07:D00E: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01D021 07:D011: 98        TYA
C - - - - - 0x01D022 07:D012: AA        TAX
C - - - - - 0x01D023 07:D013: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D026 07:D016: A9 17     LDA #$17
C - - - - - 0x01D028 07:D018: 20 85 E8  JSR sub_E885
C - - - - - 0x01D02B 07:D01B: 4C 28 D0  JMP loc_D028
bra_D01E:
C - - - - - 0x01D02E 07:D01E: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D031 07:D021: 29 40     AND #$40
C - - - - - 0x01D033 07:D023: F0 03     BEQ bra_D028
C - - - - - 0x01D035 07:D025: 20 35 FA  JSR sub_FA35
bra_D028:
loc_D028:
C D 2 - - - 0x01D038 07:D028: 68        PLA
C - - - - - 0x01D039 07:D029: A8        TAY
C - - - - - 0x01D03A 07:D02A: 60        RTS



sub_D02B:
C - - - - - 0x01D03B 07:D02B: 98        TYA
C - - - - - 0x01D03C 07:D02C: 48        PHA
C - - - - - 0x01D03D 07:D02D: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D040 07:D030: 29 40     AND #$40
C - - - - - 0x01D042 07:D032: F0 0D     BEQ bra_D041
C - - - - - 0x01D044 07:D034: A4 2E     LDY ram_002E
C - - - - - 0x01D046 07:D036: C0 FF     CPY #$FF
C - - - - - 0x01D048 07:D038: F0 07     BEQ bra_D041
C - - - - - 0x01D04A 07:D03A: A9 02     LDA #$02
C - - - - - 0x01D04C 07:D03C: 85 72     STA ram_0072
C - - - - - 0x01D04E 07:D03E: 20 3B F8  JSR sub_F83B
bra_D041:
C - - - - - 0x01D051 07:D041: 68        PLA
C - - - - - 0x01D052 07:D042: A8        TAY
C - - - - - 0x01D053 07:D043: 60        RTS



sub_D044:
C - - - - - 0x01D054 07:D044: 8A        TXA
C - - - - - 0x01D055 07:D045: 48        PHA
C - - - - - 0x01D056 07:D046: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D059 07:D049: 29 40     AND #$40
C - - - - - 0x01D05B 07:D04B: F0 3F     BEQ bra_D08C
C - - - - - 0x01D05D 07:D04D: 20 22 EF  JSR sub_EF22
C - - - - - 0x01D060 07:D050: B9 00 03  LDA ram_0300,Y
C - - - - - 0x01D063 07:D053: 29 40     AND #$40
C - - - - - 0x01D065 07:D055: F0 35     BEQ bra_D08C
C - - - - - 0x01D067 07:D057: A9 00     LDA #$00
C - - - - - 0x01D069 07:D059: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01D06C 07:D05C: B9 00 05  LDA ram_0500,Y
C - - - - - 0x01D06F 07:D05F: 10 15     BPL bra_D076
C - - - - - 0x01D071 07:D061: A9 03     LDA #$03
C - - - - - 0x01D073 07:D063: 85 7C     STA ram_007C
C - - - - - 0x01D075 07:D065: A9 01     LDA #$01
C - - - - - 0x01D077 07:D067: 85 72     STA ram_0072
C - - - - - 0x01D079 07:D069: A9 FF     LDA #$FF
C - - - - - 0x01D07B 07:D06B: 85 2E     STA ram_002E
C - - - - - 0x01D07D 07:D06D: 9D 00 05  STA ram_0500,X
C - - - - - 0x01D080 07:D070: 99 00 05  STA ram_0500,Y
C - - - - - 0x01D083 07:D073: 4C 8C D0  JMP loc_D08C
bra_D076:
C - - - - - 0x01D086 07:D076: 98        TYA
C - - - - - 0x01D087 07:D077: 85 2E     STA ram_002E
C - - - - - 0x01D089 07:D079: AA        TAX
C - - - - - 0x01D08A 07:D07A: 20 35 FA  JSR sub_FA35
C - - - - - 0x01D08D 07:D07D: A9 02     LDA #$02
C - - - - - 0x01D08F 07:D07F: 85 A0     STA ram_00A0
C - - - - - 0x01D091 07:D081: 20 95 FD  JSR sub_FD95
C - - - - - 0x01D094 07:D084: A5 A1     LDA ram_00A1
C - - - - - 0x01D096 07:D086: 18        CLC
C - - - - - 0x01D097 07:D087: 69 1B     ADC #$1B
C - - - - - 0x01D099 07:D089: 20 85 E8  JSR sub_E885
bra_D08C:
loc_D08C:
C D 2 - - - 0x01D09C 07:D08C: 68        PLA
C - - - - - 0x01D09D 07:D08D: AA        TAX
C - - - - - 0x01D09E 07:D08E: 60        RTS



sub_D08F:
C - - - - - 0x01D09F 07:D08F: A5 04     LDA ram_0004
C - - - - - 0x01D0A1 07:D091: 38        SEC
C - - - - - 0x01D0A2 07:D092: 69 00     ADC #$00
C - - - - - 0x01D0A4 07:D094: 85 04     STA ram_0004
C - - - - - 0x01D0A6 07:D096: C9 F9     CMP #$F9
C - - - - - 0x01D0A8 07:D098: F0 01     BEQ bra_D09B
C - - - - - 0x01D0AA 07:D09A: 60        RTS
bra_D09B:
C - - - - - 0x01D0AB 07:D09B: A9 1F     LDA #$1F
C - - - - - 0x01D0AD 07:D09D: 85 04     STA ram_0004
C - - - - - 0x01D0AF 07:D09F: A9 46     LDA #$46
C - - - - - 0x01D0B1 07:D0A1: 85 A0     STA ram_00A0
C - - - - - 0x01D0B3 07:D0A3: 20 95 FD  JSR sub_FD95
C - - - - - 0x01D0B6 07:D0A6: A5 A1     LDA ram_00A1
C - - - - - 0x01D0B8 07:D0A8: C9 29     CMP #$29
C - - - - - 0x01D0BA 07:D0AA: 90 18     BCC bra_D0C4_RTS
C - - - - - 0x01D0BC 07:D0AC: 20 95 FD  JSR sub_FD95
C - - - - - 0x01D0BF 07:D0AF: A5 A1     LDA ram_00A1
C - - - - - 0x01D0C1 07:D0B1: 0A        ASL
C - - - - - 0x01D0C2 07:D0B2: 18        CLC
C - - - - - 0x01D0C3 07:D0B3: 0A        ASL
C - - - - - 0x01D0C4 07:D0B4: 69 7A     ADC #$7A
C - - - - - 0x01D0C6 07:D0B6: 85 01     STA ram_0001
C - - - - - 0x01D0C8 07:D0B8: C9 81     CMP #$81
C - - - - - 0x01D0CA 07:D0BA: 90 08     BCC bra_D0C4_RTS
C - - - - - 0x01D0CC 07:D0BC: A5 A1     LDA ram_00A1
C - - - - - 0x01D0CE 07:D0BE: 85 00     STA ram_0000
C - - - - - 0x01D0D0 07:D0C0: E5 04     SBC ram_0004
C - - - - - 0x01D0D2 07:D0C2: EA        NOP
C - - - - - 0x01D0D3 07:D0C3: EA        NOP
bra_D0C4_RTS:
C - - - - - 0x01D0D4 07:D0C4: 60        RTS



sub_D0C5:
C - - - - - 0x01D0D5 07:D0C5: BD 00 05  LDA ram_0500,X
C - - - - - 0x01D0D8 07:D0C8: 10 08     BPL bra_D0D2
C - - - - - 0x01D0DA 07:D0CA: A9 01     LDA #$01
C - - - - - 0x01D0DC 07:D0CC: 85 BF     STA ram_00BF
C - - - - - 0x01D0DE 07:D0CE: A9 00     LDA #$00
C - - - - - 0x01D0E0 07:D0D0: 85 2F     STA ram_002F
bra_D0D2:
C - - - - - 0x01D0E2 07:D0D2: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01D0E5 07:D0D5: C9 1A     CMP #$1A
C - - - - - 0x01D0E7 07:D0D7: F0 22     BEQ bra_D0FB
C - - - - - 0x01D0E9 07:D0D9: BD 01 04  LDA ram_0401,X
C - - - - - 0x01D0EC 07:D0DC: F0 55     BEQ bra_D133_RTS
C - - - - - 0x01D0EE 07:D0DE: 30 53     BMI bra_D133_RTS
C - - - - - 0x01D0F0 07:D0E0: 20 CF F0  JSR sub_F0CF
C - - - - - 0x01D0F3 07:D0E3: A5 28     LDA ram_0028
C - - - - - 0x01D0F5 07:D0E5: F0 4C     BEQ bra_D133_RTS
C - - - - - 0x01D0F7 07:D0E7: 20 22 EF  JSR sub_EF22
C - - - - - 0x01D0FA 07:D0EA: 20 47 EF  JSR sub_EF47
C - - - - - 0x01D0FD 07:D0ED: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D100 07:D0F0: A9 1A     LDA #$1A
C - - - - - 0x01D102 07:D0F2: 20 85 E8  JSR sub_E885
C - - - - - 0x01D105 07:D0F5: A9 40     LDA #$40
C - - - - - 0x01D107 07:D0F7: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01D10A 07:D0FA: 60        RTS
bra_D0FB:
C - - - - - 0x01D10B 07:D0FB: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D10E 07:D0FE: 29 40     AND #$40
C - - - - - 0x01D110 07:D100: F0 31     BEQ bra_D133_RTS
C - - - - - 0x01D112 07:D102: BD 00 05  LDA ram_0500,X
C - - - - - 0x01D115 07:D105: 10 0A     BPL bra_D111
C - - - - - 0x01D117 07:D107: A9 42     LDA #$42
C - - - - - 0x01D119 07:D109: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01D11C 07:D10C: A9 00     LDA #$00
C - - - - - 0x01D11E 07:D10E: 85 BF     STA ram_00BF
C - - - - - 0x01D120 07:D110: 60        RTS
bra_D111:
C - - - - - 0x01D121 07:D111: BD 03 05  LDA ram_0503,X
C - - - - - 0x01D124 07:D114: C9 18     CMP #$18
C - - - - - 0x01D126 07:D116: 90 13     BCC bra_D12B
C - - - - - 0x01D128 07:D118: A9 00     LDA #$00
C - - - - - 0x01D12A 07:D11A: 9D 03 05  STA ram_0503,X
C - - - - - 0x01D12D 07:D11D: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D130 07:D120: A9 19     LDA #$19
C - - - - - 0x01D132 07:D122: 20 85 E8  JSR sub_E885
C - - - - - 0x01D135 07:D125: A9 00     LDA #$00
C - - - - - 0x01D137 07:D127: 9D 0B 04  STA ram_040B,X
C - - - - - 0x01D13A 07:D12A: 60        RTS
bra_D12B:
C - - - - - 0x01D13B 07:D12B: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D13E 07:D12E: A9 18     LDA #$18
C - - - - - 0x01D140 07:D130: 20 85 E8  JSR sub_E885
bra_D133_RTS:
C - - - - - 0x01D143 07:D133: 60        RTS



sub_D134:
C - - - - - 0x01D144 07:D134: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D147 07:D137: D0 12     BNE bra_D14B
C - - - - - 0x01D149 07:D139: A5 21     LDA ram_0021
C - - - - - 0x01D14B 07:D13B: C9 01     CMP #$01
C - - - - - 0x01D14D 07:D13D: D0 3C     BNE bra_D17B
C - - - - - 0x01D14F 07:D13F: A5 22     LDA ram_0022
C - - - - - 0x01D151 07:D141: 29 0F     AND #$0F
C - - - - - 0x01D153 07:D143: C9 01     CMP #$01
C - - - - - 0x01D155 07:D145: F0 04     BEQ bra_D14B
C - - - - - 0x01D157 07:D147: C9 02     CMP #$02
C - - - - - 0x01D159 07:D149: D0 30     BNE bra_D17B
bra_D14B:
C - - - - - 0x01D15B 07:D14B: A5 CC     LDA ram_00CC
C - - - - - 0x01D15D 07:D14D: D0 2F     BNE bra_D17E
C - - - - - 0x01D15F 07:D14F: 20 BE EF  JSR sub_EFBE
C - - - - - 0x01D162 07:D152: C9 00     CMP #$00
C - - - - - 0x01D164 07:D154: F0 25     BEQ bra_D17B
C - - - - - 0x01D166 07:D156: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01D169 07:D159: 29 08     AND #$08
C - - - - - 0x01D16B 07:D15B: D0 1E     BNE bra_D17B
C - - - - - 0x01D16D 07:D15D: B9 0B 04  LDA ram_040B,Y
C - - - - - 0x01D170 07:D160: D0 19     BNE bra_D17B
C - - - - - 0x01D172 07:D162: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01D175 07:D165: 18        CLC
C - - - - - 0x01D176 07:D166: 79 0F 03  ADC ram_030F,Y
C - - - - - 0x01D179 07:D169: 69 10     ADC #$10
C - - - - - 0x01D17B 07:D16B: CD A1 F0  CMP tbl_F0A1    ; bzk
C - - - - - 0x01D17E 07:D16E: 90 0B     BCC bra_D17B
C - - - - - 0x01D180 07:D170: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01D183 07:D173: C9 40     CMP #$40
C - - - - - 0x01D185 07:D175: F0 04     BEQ bra_D17B
C - - - - - 0x01D187 07:D177: C9 42     CMP #$42
C - - - - - 0x01D189 07:D179: D0 03     BNE bra_D17E
bra_D17B:
C - - - - - 0x01D18B 07:D17B: A9 00     LDA #$00
C - - - - - 0x01D18D 07:D17D: 60        RTS
bra_D17E:
C - - - - - 0x01D18E 07:D17E: A9 23     LDA #$23
C - - - - - 0x01D190 07:D180: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01D193 07:D183: 86 BA     STX ram_00BA
C - - - - - 0x01D195 07:D185: 84 BB     STY ram_00BB
C - - - - - 0x01D197 07:D187: A9 00     LDA #$00
C - - - - - 0x01D199 07:D189: 85 BC     STA ram_00BC
C - - - - - 0x01D19B 07:D18B: 85 BD     STA ram_00BD
C - - - - - 0x01D19D 07:D18D: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01D1A0 07:D190: C9 08     CMP #$08
C - - - - - 0x01D1A2 07:D192: F0 18     BEQ bra_D1AC
C - - - - - 0x01D1A4 07:D194: C9 02     CMP #$02
C - - - - - 0x01D1A6 07:D196: D0 04     BNE bra_D19C
C - - - - - 0x01D1A8 07:D198: A9 40     LDA #$40
C - - - - - 0x01D1AA 07:D19A: 85 BC     STA ram_00BC
bra_D19C:
C - - - - - 0x01D1AC 07:D19C: B9 0A 05  LDA ram_050A,Y
C - - - - - 0x01D1AF 07:D19F: 0A        ASL
C - - - - - 0x01D1B0 07:D1A0: 0A        ASL
C - - - - - 0x01D1B1 07:D1A1: 0A        ASL
C - - - - - 0x01D1B2 07:D1A2: 18        CLC
C - - - - - 0x01D1B3 07:D1A3: 7D 0A 05  ADC ram_050A,X
C - - - - - 0x01D1B6 07:D1A6: A8        TAY
C - - - - - 0x01D1B7 07:D1A7: B9 24 D2  LDA tbl_D224,Y
C - - - - - 0x01D1BA 07:D1AA: 85 BD     STA ram_00BD
bra_D1AC:
C - - - - - 0x01D1BC 07:D1AC: A5 22     LDA ram_0022
C - - - - - 0x01D1BE 07:D1AE: 29 01     AND #$01
C - - - - - 0x01D1C0 07:D1B0: D0 0C     BNE bra_D1BE
C - - - - - 0x01D1C2 07:D1B2: A9 40     LDA #$40
C - - - - - 0x01D1C4 07:D1B4: 45 BC     EOR ram_00BC
C - - - - - 0x01D1C6 07:D1B6: 85 BC     STA ram_00BC
C - - - - - 0x01D1C8 07:D1B8: A9 40     LDA #$40
C - - - - - 0x01D1CA 07:D1BA: 45 BD     EOR ram_00BD
C - - - - - 0x01D1CC 07:D1BC: 85 BD     STA ram_00BD
bra_D1BE:
C - - - - - 0x01D1CE 07:D1BE: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D1D1 07:D1C1: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D1D4 07:D1C4: 29 BF     AND #$BF
C - - - - - 0x01D1D6 07:D1C6: 05 BC     ORA ram_00BC
C - - - - - 0x01D1D8 07:D1C8: 9D 01 03  STA ram_0301,X
C - - - - - 0x01D1DB 07:D1CB: A9 50     LDA #$50
C - - - - - 0x01D1DD 07:D1CD: 20 85 E8  JSR sub_E885
C - - - - - 0x01D1E0 07:D1D0: A9 51     LDA #$51
C - - - - - 0x01D1E2 07:D1D2: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01D1E5 07:D1D5: A9 0C     LDA #$0C
C - - - - - 0x01D1E7 07:D1D7: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01D1EA 07:D1DA: A4 BB     LDY ram_00BB
C - - - - - 0x01D1EC 07:D1DC: BD 02 03  LDA ram_0302,X
C - - - - - 0x01D1EF 07:D1DF: 99 02 03  STA ram_0302,Y
C - - - - - 0x01D1F2 07:D1E2: BD 04 03  LDA ram_0304,X
C - - - - - 0x01D1F5 07:D1E5: 99 04 03  STA ram_0304,Y
C - - - - - 0x01D1F8 07:D1E8: A6 BB     LDX ram_00BB
C - - - - - 0x01D1FA 07:D1EA: 20 22 EF  JSR sub_EF22
C - - - - - 0x01D1FD 07:D1ED: A4 BA     LDY ram_00BA
C - - - - - 0x01D1FF 07:D1EF: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D202 07:D1F2: 29 BF     AND #$BF
C - - - - - 0x01D204 07:D1F4: 05 BD     ORA ram_00BD
C - - - - - 0x01D206 07:D1F6: 9D 01 03  STA ram_0301,X
C - - - - - 0x01D209 07:D1F9: A9 46     LDA #$46
C - - - - - 0x01D20B 07:D1FB: 18        CLC
C - - - - - 0x01D20C 07:D1FC: 79 0A 05  ADC ram_050A,Y
C - - - - - 0x01D20F 07:D1FF: 20 85 E8  JSR sub_E885
C - - - - - 0x01D212 07:D202: A9 40     LDA #$40
C - - - - - 0x01D214 07:D204: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01D217 07:D207: A9 08     LDA #$08
C - - - - - 0x01D219 07:D209: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01D21C 07:D20C: A9 FF     LDA #$FF
C - - - - - 0x01D21E 07:D20E: 9D 01 05  STA ram_0501,X
C - - - - - 0x01D221 07:D211: B9 0A 05  LDA ram_050A,Y
C - - - - - 0x01D224 07:D214: C9 03     CMP #$03
C - - - - - 0x01D226 07:D216: D0 05     BNE bra_D21D
C - - - - - 0x01D228 07:D218: A9 01     LDA #$01
C - - - - - 0x01D22A 07:D21A: 9D 0C 05  STA ram_050C,X
bra_D21D:
C - - - - - 0x01D22D 07:D21D: A6 BA     LDX ram_00BA
C - - - - - 0x01D22F 07:D21F: A4 BB     LDY ram_00BB
C - - - - - 0x01D231 07:D221: A9 01     LDA #$01
C - - - - - 0x01D233 07:D223: 60        RTS



tbl_D224:
- D 2 - - - 0x01D234 07:D224: 40        .byte $40   ; 
- D 2 - - - 0x01D235 07:D225: 00        .byte $00   ; 
- - - - - - 0x01D236 07:D226: 00        .byte $00   ; 
- D 2 - - - 0x01D237 07:D227: 40        .byte $40   ; 
- D 2 - - - 0x01D238 07:D228: 00        .byte $00   ; 
- - - - - - 0x01D239 07:D229: 00        .byte $00   ; 
- D 2 - - - 0x01D23A 07:D22A: 00        .byte $00   ; 
- D 2 - - - 0x01D23B 07:D22B: 00        .byte $00   ; 
- D 2 - - - 0x01D23C 07:D22C: 40        .byte $40   ; 
- D 2 - - - 0x01D23D 07:D22D: 00        .byte $00   ; 
- D 2 - - - 0x01D23E 07:D22E: 00        .byte $00   ; 
- D 2 - - - 0x01D23F 07:D22F: 40        .byte $40   ; 
- D 2 - - - 0x01D240 07:D230: 00        .byte $00   ; 
- - - - - - 0x01D241 07:D231: 00        .byte $00   ; 
- D 2 - - - 0x01D242 07:D232: 00        .byte $00   ; 
- D 2 - - - 0x01D243 07:D233: 00        .byte $00   ; 
- D 2 - - - 0x01D244 07:D234: 40        .byte $40   ; 
- D 2 - - - 0x01D245 07:D235: 00        .byte $00   ; 
- D 2 - - - 0x01D246 07:D236: 40        .byte $40   ; 
- D 2 - - - 0x01D247 07:D237: 40        .byte $40   ; 
- D 2 - - - 0x01D248 07:D238: 00        .byte $00   ; 
- - - - - - 0x01D249 07:D239: 00        .byte $00   ; 
- D 2 - - - 0x01D24A 07:D23A: 40        .byte $40   ; 
- D 2 - - - 0x01D24B 07:D23B: 00        .byte $00   ; 
- D 2 - - - 0x01D24C 07:D23C: 40        .byte $40   ; 
- D 2 - - - 0x01D24D 07:D23D: 00        .byte $00   ; 
- D 2 - - - 0x01D24E 07:D23E: 40        .byte $40   ; 
- D 2 - - - 0x01D24F 07:D23F: 40        .byte $40   ; 
- D 2 - - - 0x01D250 07:D240: 00        .byte $00   ; 
- - - - - - 0x01D251 07:D241: 00        .byte $00   ; 
- D 2 - - - 0x01D252 07:D242: 40        .byte $40   ; 
- D 2 - - - 0x01D253 07:D243: 00        .byte $00   ; 
- D 2 - - - 0x01D254 07:D244: 40        .byte $40   ; 
- D 2 - - - 0x01D255 07:D245: 00        .byte $00   ; 
- D 2 - - - 0x01D256 07:D246: 40        .byte $40   ; 
- D 2 - - - 0x01D257 07:D247: 40        .byte $40   ; 
- D 2 - - - 0x01D258 07:D248: 00        .byte $00   ; 
- - - - - - 0x01D259 07:D249: 00        .byte $00   ; 
- D 2 - - - 0x01D25A 07:D24A: 40        .byte $40   ; 
- D 2 - - - 0x01D25B 07:D24B: 00        .byte $00   ; 
- - - - - - 0x01D25C 07:D24C: 40        .byte $40   ; 
- - - - - - 0x01D25D 07:D24D: 00        .byte $00   ; 
- - - - - - 0x01D25E 07:D24E: 00        .byte $00   ; 
- - - - - - 0x01D25F 07:D24F: 40        .byte $40   ; 
- - - - - - 0x01D260 07:D250: 00        .byte $00   ; 
- - - - - - 0x01D261 07:D251: 00        .byte $00   ; 
- - - - - - 0x01D262 07:D252: 00        .byte $00   ; 
- - - - - - 0x01D263 07:D253: 00        .byte $00   ; 
- D 2 - - - 0x01D264 07:D254: 40        .byte $40   ; 
- D 2 - - - 0x01D265 07:D255: 00        .byte $00   ; 
- D 2 - - - 0x01D266 07:D256: 00        .byte $00   ; 
- D 2 - - - 0x01D267 07:D257: 40        .byte $40   ; 
- D 2 - - - 0x01D268 07:D258: 00        .byte $00   ; 
- - - - - - 0x01D269 07:D259: 00        .byte $00   ; 
- D 2 - - - 0x01D26A 07:D25A: 00        .byte $00   ; 
- D 2 - - - 0x01D26B 07:D25B: 00        .byte $00   ; 
- D 2 - - - 0x01D26C 07:D25C: 40        .byte $40   ; 
- D 2 - - - 0x01D26D 07:D25D: 00        .byte $00   ; 
- D 2 - - - 0x01D26E 07:D25E: 40        .byte $40   ; 
- D 2 - - - 0x01D26F 07:D25F: 40        .byte $40   ; 
- D 2 - - - 0x01D270 07:D260: 00        .byte $00   ; 
- - - - - - 0x01D271 07:D261: 00        .byte $00   ; 
- D 2 - - - 0x01D272 07:D262: 40        .byte $40   ; 
- D 2 - - - 0x01D273 07:D263: 00        .byte $00   ; 
- D 2 - - - 0x01D274 07:D264: 40        .byte $40   ; 
- D 2 - - - 0x01D275 07:D265: 00        .byte $00   ; 
- D 2 - - - 0x01D276 07:D266: 40        .byte $40   ; 
- D 2 - - - 0x01D277 07:D267: 40        .byte $40   ; 
- D 2 - - - 0x01D278 07:D268: 00        .byte $00   ; 
- - - - - - 0x01D279 07:D269: 00        .byte $00   ; 
- D 2 - - - 0x01D27A 07:D26A: 40        .byte $40   ; 
- D 2 - - - 0x01D27B 07:D26B: 00        .byte $00   ; 



sub_D26C:
C - - - - - 0x01D27C 07:D26C: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D27F 07:D26F: D0 0E     BNE bra_D27F
C - - - - - 0x01D281 07:D271: A5 22     LDA ram_0022
C - - - - - 0x01D283 07:D273: 29 CC     AND #$CC
C - - - - - 0x01D285 07:D275: D0 3D     BNE bra_D2B4
C - - - - - 0x01D287 07:D277: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D28A 07:D27A: 29 40     AND #$40
C - - - - - 0x01D28C 07:D27C: D0 01     BNE bra_D27F
C - - - - - 0x01D28E 07:D27E: 60        RTS
bra_D27F:
C - - - - - 0x01D28F 07:D27F: 20 47 EF  JSR sub_EF47
C - - - - - 0x01D292 07:D282: B9 10 03  LDA ram_0310,Y
C - - - - - 0x01D295 07:D285: 30 07     BMI bra_D28E
C - - - - - 0x01D297 07:D287: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01D29A 07:D28A: 29 04     AND #$04
C - - - - - 0x01D29C 07:D28C: F0 26     BEQ bra_D2B4
bra_D28E:
C - - - - - 0x01D29E 07:D28E: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D2A1 07:D291: F0 04     BEQ bra_D297
C - - - - - 0x01D2A3 07:D293: 20 24 DA  JSR sub_DA24
C - - - - - 0x01D2A6 07:D296: 60        RTS
bra_D297:
C - - - - - 0x01D2A7 07:D297: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D2AA 07:D29A: 29 40     AND #$40
C - - - - - 0x01D2AC 07:D29C: D0 08     BNE bra_D2A6
C - - - - - 0x01D2AE 07:D29E: A5 22     LDA ram_0022
C - - - - - 0x01D2B0 07:D2A0: C9 02     CMP #$02
C - - - - - 0x01D2B2 07:D2A2: F0 0A     BEQ bra_D2AE
C - - - - - 0x01D2B4 07:D2A4: D0 0E     BNE bra_D2B4
bra_D2A6:
C - - - - - 0x01D2B6 07:D2A6: A5 22     LDA ram_0022
C - - - - - 0x01D2B8 07:D2A8: C9 01     CMP #$01
C - - - - - 0x01D2BA 07:D2AA: F0 02     BEQ bra_D2AE
C - - - - - 0x01D2BC 07:D2AC: D0 06     BNE bra_D2B4
bra_D2AE:
C - - - - - 0x01D2BE 07:D2AE: A9 0A     LDA #$0A
C - - - - - 0x01D2C0 07:D2B0: 9D 09 03  STA ram_0309,X
C - - - - - 0x01D2C3 07:D2B3: 60        RTS
bra_D2B4:
C - - - - - 0x01D2C4 07:D2B4: A9 09     LDA #$09
C - - - - - 0x01D2C6 07:D2B6: 20 85 E8  JSR sub_E885
C - - - - - 0x01D2C9 07:D2B9: 60        RTS



sub_D2BA:
C - - - - - 0x01D2CA 07:D2BA: C6 D3     DEC ram_00D3
C - - - - - 0x01D2CC 07:D2BC: A5 D3     LDA ram_00D3
C - - - - - 0x01D2CE 07:D2BE: C9 C6     CMP #$C6
C - - - - - 0x01D2D0 07:D2C0: D0 2B     BNE bra_D2ED_RTS
C - - - - - 0x01D2D2 07:D2C2: A9 46     LDA #$46
C - - - - - 0x01D2D4 07:D2C4: 85 A0     STA ram_00A0
C - - - - - 0x01D2D6 07:D2C6: 20 95 FD  JSR sub_FD95
C - - - - - 0x01D2D9 07:D2C9: A9 17     LDA #$17
C - - - - - 0x01D2DB 07:D2CB: 85 D3     STA ram_00D3
C - - - - - 0x01D2DD 07:D2CD: A5 A1     LDA ram_00A1
C - - - - - 0x01D2DF 07:D2CF: C9 21     CMP #$21
C - - - - - 0x01D2E1 07:D2D1: B0 1A     BCS bra_D2ED_RTS
C - - - - - 0x01D2E3 07:D2D3: 20 95 FD  JSR sub_FD95
C - - - - - 0x01D2E6 07:D2D6: A5 A1     LDA ram_00A1
C - - - - - 0x01D2E8 07:D2D8: 85 00     STA ram_0000
C - - - - - 0x01D2EA 07:D2DA: A5 A1     LDA ram_00A1
C - - - - - 0x01D2EC 07:D2DC: 18        CLC
C - - - - - 0x01D2ED 07:D2DD: 0A        ASL
C - - - - - 0x01D2EE 07:D2DE: 0A        ASL
C - - - - - 0x01D2EF 07:D2DF: 69 83     ADC #$83
C - - - - - 0x01D2F1 07:D2E1: 85 01     STA ram_0001
C - - - - - 0x01D2F3 07:D2E3: C9 81     CMP #$81
C - - - - - 0x01D2F5 07:D2E5: 90 06     BCC bra_D2ED_RTS
C - - - - - 0x01D2F7 07:D2E7: A5 D3     LDA ram_00D3
C - - - - - 0x01D2F9 07:D2E9: 65 A1     ADC ram_00A1
C - - - - - 0x01D2FB 07:D2EB: EA        NOP
C - - - - - 0x01D2FC 07:D2EC: EA        NOP
bra_D2ED_RTS:
C - - - - - 0x01D2FD 07:D2ED: 60        RTS



sub_D2EE:
C - - - - - 0x01D2FE 07:D2EE: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D301 07:D2F1: D0 0E     BNE bra_D301
C - - - - - 0x01D303 07:D2F3: A5 22     LDA ram_0022
C - - - - - 0x01D305 07:D2F5: 29 C8     AND #$C8
C - - - - - 0x01D307 07:D2F7: D0 3D     BNE bra_D336
C - - - - - 0x01D309 07:D2F9: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D30C 07:D2FC: 29 40     AND #$40
C - - - - - 0x01D30E 07:D2FE: D0 01     BNE bra_D301
C - - - - - 0x01D310 07:D300: 60        RTS
bra_D301:
C - - - - - 0x01D311 07:D301: 20 47 EF  JSR sub_EF47
C - - - - - 0x01D314 07:D304: B9 10 03  LDA ram_0310,Y
C - - - - - 0x01D317 07:D307: 30 07     BMI bra_D310
C - - - - - 0x01D319 07:D309: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01D31C 07:D30C: 29 04     AND #$04
C - - - - - 0x01D31E 07:D30E: F0 26     BEQ bra_D336
bra_D310:
C - - - - - 0x01D320 07:D310: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D323 07:D313: F0 04     BEQ bra_D319
C - - - - - 0x01D325 07:D315: 20 24 DA  JSR sub_DA24
C - - - - - 0x01D328 07:D318: 60        RTS
bra_D319:
C - - - - - 0x01D329 07:D319: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D32C 07:D31C: 29 40     AND #$40
C - - - - - 0x01D32E 07:D31E: D0 08     BNE bra_D328
C - - - - - 0x01D330 07:D320: A5 22     LDA ram_0022
C - - - - - 0x01D332 07:D322: C9 06     CMP #$06
C - - - - - 0x01D334 07:D324: F0 0A     BEQ bra_D330
C - - - - - 0x01D336 07:D326: D0 0E     BNE bra_D336
bra_D328:
C - - - - - 0x01D338 07:D328: A5 22     LDA ram_0022
C - - - - - 0x01D33A 07:D32A: C9 05     CMP #$05
C - - - - - 0x01D33C 07:D32C: F0 02     BEQ bra_D330
C - - - - - 0x01D33E 07:D32E: D0 06     BNE bra_D336
bra_D330:
C - - - - - 0x01D340 07:D330: A9 0A     LDA #$0A
C - - - - - 0x01D342 07:D332: 9D 09 03  STA ram_0309,X
C - - - - - 0x01D345 07:D335: 60        RTS
bra_D336:
C - - - - - 0x01D346 07:D336: A9 0B     LDA #$0B
C - - - - - 0x01D348 07:D338: 20 85 E8  JSR sub_E885
C - - - - - 0x01D34B 07:D33B: 60        RTS



sub_D33C:
C - - - - - 0x01D34C 07:D33C: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01D34F 07:D33F: D0 12     BNE bra_D353_RTS
C - - - - - 0x01D351 07:D341: A5 2F     LDA ram_002F
C - - - - - 0x01D353 07:D343: D0 0F     BNE bra_D354
C - - - - - 0x01D355 07:D345: A5 C1     LDA ram_00C1
C - - - - - 0x01D357 07:D347: F0 0A     BEQ bra_D353_RTS
C - - - - - 0x01D359 07:D349: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D35C 07:D34C: 29 40     AND #$40
C - - - - - 0x01D35E 07:D34E: F0 03     BEQ bra_D353_RTS
C - - - - - 0x01D360 07:D350: 20 35 FA  JSR sub_FA35
bra_D353_RTS:
C - - - - - 0x01D363 07:D353: 60        RTS
bra_D354:
C - - - - - 0x01D364 07:D354: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D367 07:D357: F0 04     BEQ bra_D35D
C - - - - - 0x01D369 07:D359: 20 24 DA  JSR sub_DA24
C - - - - - 0x01D36C 07:D35C: 60        RTS
bra_D35D:
C - - - - - 0x01D36D 07:D35D: 20 34 D1  JSR sub_D134
C - - - - - 0x01D370 07:D360: C9 00     CMP #$00
C - - - - - 0x01D372 07:D362: F0 03     BEQ bra_D367
C - - - - - 0x01D374 07:D364: 4C 6B D4  JMP loc_D46B_RTS
bra_D367:
C - - - - - 0x01D377 07:D367: A5 23     LDA ram_0023
C - - - - - 0x01D379 07:D369: F0 03     BEQ bra_D36E
C - - - - - 0x01D37B 07:D36B: 4C 0D D4  JMP loc_D40D
bra_D36E:
C - - - - - 0x01D37E 07:D36E: A5 22     LDA ram_0022
C - - - - - 0x01D380 07:D370: 29 04     AND #$04
C - - - - - 0x01D382 07:D372: F0 0D     BEQ bra_D381
C - - - - - 0x01D384 07:D374: A9 00     LDA #$00
C - - - - - 0x01D386 07:D376: 9D 00 04  STA ram_0400,X
C - - - - - 0x01D389 07:D379: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D38C 07:D37C: A9 01     LDA #$01
C - - - - - 0x01D38E 07:D37E: 4C 68 D4  JMP loc_D468
bra_D381:
C - - - - - 0x01D391 07:D381: A5 22     LDA ram_0022
C - - - - - 0x01D393 07:D383: 29 08     AND #$08
C - - - - - 0x01D395 07:D385: F0 2E     BEQ bra_D3B5
C - - - - - 0x01D397 07:D387: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D39A 07:D38A: A5 22     LDA ram_0022
C - - - - - 0x01D39C 07:D38C: 29 03     AND #$03
C - - - - - 0x01D39E 07:D38E: F0 20     BEQ bra_D3B0
C - - - - - 0x01D3A0 07:D390: 29 02     AND #$02
C - - - - - 0x01D3A2 07:D392: F0 09     BEQ bra_D39D
C - - - - - 0x01D3A4 07:D394: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D3A7 07:D397: 29 40     AND #$40
C - - - - - 0x01D3A9 07:D399: D0 0B     BNE bra_D3A6
C - - - - - 0x01D3AB 07:D39B: F0 0E     BEQ bra_D3AB
bra_D39D:
C - - - - - 0x01D3AD 07:D39D: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D3B0 07:D3A0: 29 40     AND #$40
C - - - - - 0x01D3B2 07:D3A2: F0 02     BEQ bra_D3A6
C - - - - - 0x01D3B4 07:D3A4: D0 05     BNE bra_D3AB
bra_D3A6:
C - - - - - 0x01D3B6 07:D3A6: A9 06     LDA #$06
C - - - - - 0x01D3B8 07:D3A8: 4C 68 D4  JMP loc_D468
bra_D3AB:
C - - - - - 0x01D3BB 07:D3AB: A9 07     LDA #$07
C - - - - - 0x01D3BD 07:D3AD: 4C 68 D4  JMP loc_D468
bra_D3B0:
C - - - - - 0x01D3C0 07:D3B0: A9 05     LDA #$05
C - - - - - 0x01D3C2 07:D3B2: 4C 68 D4  JMP loc_D468
bra_D3B5:
C - - - - - 0x01D3C5 07:D3B5: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01D3C8 07:D3B8: D0 53     BNE bra_D40D
C - - - - - 0x01D3CA 07:D3BA: A5 22     LDA ram_0022
C - - - - - 0x01D3CC 07:D3BC: 29 03     AND #$03
C - - - - - 0x01D3CE 07:D3BE: F0 4D     BEQ bra_D40D
C - - - - - 0x01D3D0 07:D3C0: 29 02     AND #$02
C - - - - - 0x01D3D2 07:D3C2: F0 09     BEQ bra_D3CD
C - - - - - 0x01D3D4 07:D3C4: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D3D7 07:D3C7: 29 40     AND #$40
C - - - - - 0x01D3D9 07:D3C9: F0 18     BEQ bra_D3E3
C - - - - - 0x01D3DB 07:D3CB: D0 09     BNE bra_D3D6
bra_D3CD:
C - - - - - 0x01D3DD 07:D3CD: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D3E0 07:D3D0: 29 40     AND #$40
C - - - - - 0x01D3E2 07:D3D2: D0 0F     BNE bra_D3E3
; bzk optimize, useless branch
C - - - - - 0x01D3E4 07:D3D4: F0 00     BEQ bra_D3D6
bra_D3D6:
C - - - - - 0x01D3E6 07:D3D6: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D3E9 07:D3D9: D0 32     BNE bra_D40D
C - - - - - 0x01D3EB 07:D3DB: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D3EE 07:D3DE: A9 03     LDA #$03
C - - - - - 0x01D3F0 07:D3E0: 4C 68 D4  JMP loc_D468
bra_D3E3:
C - - - - - 0x01D3F3 07:D3E3: B9 10 03  LDA ram_0310,Y
C - - - - - 0x01D3F6 07:D3E6: 30 07     BMI bra_D3EF
C - - - - - 0x01D3F8 07:D3E8: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01D3FB 07:D3EB: 29 04     AND #$04
C - - - - - 0x01D3FD 07:D3ED: F0 11     BEQ bra_D400
bra_D3EF:
C - - - - - 0x01D3FF 07:D3EF: A5 22     LDA ram_0022
C - - - - - 0x01D401 07:D3F1: 29 CC     AND #$CC
C - - - - - 0x01D403 07:D3F3: D0 18     BNE bra_D40D
C - - - - - 0x01D405 07:D3F5: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D408 07:D3F8: 20 22 EF  JSR sub_EF22
C - - - - - 0x01D40B 07:D3FB: A9 08     LDA #$08
C - - - - - 0x01D40D 07:D3FD: 4C 68 D4  JMP loc_D468
bra_D400:
C - - - - - 0x01D410 07:D400: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D413 07:D403: D0 08     BNE bra_D40D
C - - - - - 0x01D415 07:D405: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D418 07:D408: A9 04     LDA #$04
C - - - - - 0x01D41A 07:D40A: 4C 68 D4  JMP loc_D468
bra_D40D:
loc_D40D:
C D 2 - - - 0x01D41D 07:D40D: A5 23     LDA ram_0023
C - - - - - 0x01D41F 07:D40F: C9 01     CMP #$01
C - - - - - 0x01D421 07:D411: D0 05     BNE bra_D418
C - - - - - 0x01D423 07:D413: A9 32     LDA #$32
C - - - - - 0x01D425 07:D415: 4C 50 D4  JMP loc_D450
bra_D418:
C - - - - - 0x01D428 07:D418: C9 02     CMP #$02
C - - - - - 0x01D42A 07:D41A: D0 05     BNE bra_D421
C - - - - - 0x01D42C 07:D41C: A9 28     LDA #$28
C - - - - - 0x01D42E 07:D41E: 4C 50 D4  JMP loc_D450
bra_D421:
C - - - - - 0x01D431 07:D421: C9 03     CMP #$03
C - - - - - 0x01D433 07:D423: D0 05     BNE bra_D42A
C - - - - - 0x01D435 07:D425: A9 33     LDA #$33
C - - - - - 0x01D437 07:D427: 4C 50 D4  JMP loc_D450
bra_D42A:
C - - - - - 0x01D43A 07:D42A: C9 04     CMP #$04
C - - - - - 0x01D43C 07:D42C: D0 05     BNE bra_D433
C - - - - - 0x01D43E 07:D42E: A9 29     LDA #$29
C - - - - - 0x01D440 07:D430: 4C 50 D4  JMP loc_D450
bra_D433:
C - - - - - 0x01D443 07:D433: A5 22     LDA ram_0022
C - - - - - 0x01D445 07:D435: D0 34     BNE bra_D46B_RTS
C - - - - - 0x01D447 07:D437: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01D44A 07:D43A: 29 08     AND #$08
C - - - - - 0x01D44C 07:D43C: D0 2D     BNE bra_D46B_RTS
C - - - - - 0x01D44E 07:D43E: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D451 07:D441: D0 07     BNE bra_D44A
C - - - - - 0x01D453 07:D443: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D456 07:D446: 29 40     AND #$40
C - - - - - 0x01D458 07:D448: F0 21     BEQ bra_D46B_RTS
bra_D44A:
C - - - - - 0x01D45A 07:D44A: 20 35 FA  JSR sub_FA35
C - - - - - 0x01D45D 07:D44D: 4C 6B D4  JMP loc_D46B_RTS
loc_D450:
C D 2 - - - 0x01D460 07:D450: 48        PHA
C - - - - - 0x01D461 07:D451: A9 00     LDA #$00
C - - - - - 0x01D463 07:D453: 9D 00 04  STA ram_0400,X
C - - - - - 0x01D466 07:D456: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D469 07:D459: 20 83 F3  JSR sub_F383
C - - - - - 0x01D46C 07:D45C: C9 28     CMP #$28
C - - - - - 0x01D46E 07:D45E: B0 04     BCS bra_D464
C - - - - - 0x01D470 07:D460: 68        PLA
C - - - - - 0x01D471 07:D461: 4C 68 D4  JMP loc_D468
bra_D464:
C - - - - - 0x01D474 07:D464: 68        PLA
C - - - - - 0x01D475 07:D465: 18        CLC
C - - - - - 0x01D476 07:D466: 69 02     ADC #$02
loc_D468:
C D 2 - - - 0x01D478 07:D468: 20 85 E8  JSR sub_E885
bra_D46B_RTS:
loc_D46B_RTS:
C D 2 - - - 0x01D47B 07:D46B: 60        RTS



sub_D46C:
C - - - - - 0x01D47C 07:D46C: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D47F 07:D46F: 29 40     AND #$40
C - - - - - 0x01D481 07:D471: D0 0E     BNE bra_D481
C - - - - - 0x01D483 07:D473: BD 01 04  LDA ram_0401,X
C - - - - - 0x01D486 07:D476: F0 12     BEQ bra_D48A
C - - - - - 0x01D488 07:D478: 30 10     BMI bra_D48A
C - - - - - 0x01D48A 07:D47A: 20 AA F0  JSR sub_F0AA
C - - - - - 0x01D48D 07:D47D: A5 28     LDA ram_0028
C - - - - - 0x01D48F 07:D47F: F0 09     BEQ bra_D48A
bra_D481:
C - - - - - 0x01D491 07:D481: 20 35 FA  JSR sub_FA35
C - - - - - 0x01D494 07:D484: A9 FF     LDA #$FF
C - - - - - 0x01D496 07:D486: 9D 01 05  STA ram_0501,X
bra_D489_RTS:
C - - - - - 0x01D499 07:D489: 60        RTS
bra_D48A:
C - - - - - 0x01D49A 07:D48A: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01D49D 07:D48D: D0 FA     BNE bra_D489_RTS
C - - - - - 0x01D49F 07:D48F: A5 2F     LDA ram_002F
C - - - - - 0x01D4A1 07:D491: F0 F6     BEQ bra_D489_RTS
C - - - - - 0x01D4A3 07:D493: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01D4A6 07:D496: C9 08     CMP #$08
C - - - - - 0x01D4A8 07:D498: D0 48     BNE bra_D4E2
C - - - - - 0x01D4AA 07:D49A: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01D4AD 07:D49D: C9 3C     CMP #$3C
C - - - - - 0x01D4AF 07:D49F: D0 0C     BNE bra_D4AD
C - - - - - 0x01D4B1 07:D4A1: 20 83 F3  JSR sub_F383
C - - - - - 0x01D4B4 07:D4A4: C9 28     CMP #$28
C - - - - - 0x01D4B6 07:D4A6: B0 E1     BCS bra_D489_RTS
C - - - - - 0x01D4B8 07:D4A8: A9 3D     LDA #$3D
C - - - - - 0x01D4BA 07:D4AA: 4C 12 D6  JMP loc_D612
bra_D4AD:
C - - - - - 0x01D4BD 07:D4AD: C9 3E     CMP #$3E
C - - - - - 0x01D4BF 07:D4AF: F0 03     BEQ bra_D4B4
C - - - - - 0x01D4C1 07:D4B1: 4C 46 D5  JMP loc_D546
bra_D4B4:
C - - - - - 0x01D4C4 07:D4B4: BD 01 04  LDA ram_0401,X
C - - - - - 0x01D4C7 07:D4B7: F0 D0     BEQ bra_D489_RTS
C - - - - - 0x01D4C9 07:D4B9: 30 CE     BMI bra_D489_RTS
C - - - - - 0x01D4CB 07:D4BB: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D4CE 07:D4BE: F0 0F     BEQ bra_D4CF
C - - - - - 0x01D4D0 07:D4C0: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01D4D3 07:D4C3: FD 04 03  SBC ram_0304,X
C - - - - - 0x01D4D6 07:D4C6: C9 4B     CMP #$4B
C - - - - - 0x01D4D8 07:D4C8: B0 BF     BCS bra_D489_RTS
C - - - - - 0x01D4DA 07:D4CA: A9 39     LDA #$39
C - - - - - 0x01D4DC 07:D4CC: 4C 12 D6  JMP loc_D612
bra_D4CF:
C - - - - - 0x01D4DF 07:D4CF: A5 21     LDA ram_0021
C - - - - - 0x01D4E1 07:D4D1: C9 01     CMP #$01
C - - - - - 0x01D4E3 07:D4D3: D0 B4     BNE bra_D489_RTS
C - - - - - 0x01D4E5 07:D4D5: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D4E8 07:D4D8: 29 DF     AND #$DF
C - - - - - 0x01D4EA 07:D4DA: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D4ED 07:D4DD: A9 39     LDA #$39
C - - - - - 0x01D4EF 07:D4DF: 4C 12 D6  JMP loc_D612
bra_D4E2:
C - - - - - 0x01D4F2 07:D4E2: C9 06     CMP #$06
C - - - - - 0x01D4F4 07:D4E4: D0 60     BNE bra_D546
C - - - - - 0x01D4F6 07:D4E6: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01D4F9 07:D4E9: C9 3C     CMP #$3C
C - - - - - 0x01D4FB 07:D4EB: D0 27     BNE bra_D514
C - - - - - 0x01D4FD 07:D4ED: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D500 07:D4F0: 29 02     AND #$02
C - - - - - 0x01D502 07:D4F2: F0 95     BEQ bra_D489_RTS
C - - - - - 0x01D504 07:D4F4: BD 02 03  LDA ram_0302,X
C - - - - - 0x01D507 07:D4F7: C9 80     CMP #$80
C - - - - - 0x01D509 07:D4F9: B0 04     BCS bra_D4FF
C - - - - - 0x01D50B 07:D4FB: A9 00     LDA #$00
C - - - - - 0x01D50D 07:D4FD: F0 02     BEQ bra_D501
bra_D4FF:
C - - - - - 0x01D50F 07:D4FF: A9 01     LDA #$01
bra_D501:
C - - - - - 0x01D511 07:D501: 20 6F EF  JSR sub_EF6F
C - - - - - 0x01D514 07:D504: BD 01 04  LDA ram_0401,X
C - - - - - 0x01D517 07:D507: 49 FF     EOR #$FF
C - - - - - 0x01D519 07:D509: 18        CLC
C - - - - - 0x01D51A 07:D50A: 69 01     ADC #$01
C - - - - - 0x01D51C 07:D50C: 9D 01 04  STA ram_0401,X
C - - - - - 0x01D51F 07:D50F: A9 3D     LDA #$3D
C - - - - - 0x01D521 07:D511: 4C 12 D6  JMP loc_D612
bra_D514:
C - - - - - 0x01D524 07:D514: C9 3D     CMP #$3D
C - - - - - 0x01D526 07:D516: D0 2E     BNE bra_D546
C - - - - - 0x01D528 07:D518: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D52B 07:D51B: F0 0F     BEQ bra_D52C
C - - - - - 0x01D52D 07:D51D: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01D530 07:D520: FD 04 03  SBC ram_0304,X
C - - - - - 0x01D533 07:D523: C9 4B     CMP #$4B
C - - - - - 0x01D535 07:D525: B0 05     BCS bra_D52C
C - - - - - 0x01D537 07:D527: A9 3E     LDA #$3E
C - - - - - 0x01D539 07:D529: 4C 12 D6  JMP loc_D612
bra_D52C:
C - - - - - 0x01D53C 07:D52C: 20 83 F3  JSR sub_F383
C - - - - - 0x01D53F 07:D52F: 4A        LSR
C - - - - - 0x01D540 07:D530: 4A        LSR
C - - - - - 0x01D541 07:D531: 4A        LSR
C - - - - - 0x01D542 07:D532: 48        PHA
C - - - - - 0x01D543 07:D533: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D546 07:D536: 10 07     BPL bra_D53F
C - - - - - 0x01D548 07:D538: 68        PLA
C - - - - - 0x01D549 07:D539: 49 FF     EOR #$FF
C - - - - - 0x01D54B 07:D53B: 18        CLC
C - - - - - 0x01D54C 07:D53C: 69 01     ADC #$01
C - - - - - 0x01D54E 07:D53E: 48        PHA
bra_D53F:
C - - - - - 0x01D54F 07:D53F: 68        PLA
C - - - - - 0x01D550 07:D540: 9D 00 04  STA ram_0400,X
C - - - - - 0x01D553 07:D543: 4C 46 D5  JMP loc_D546
bra_D546:
loc_D546:
C D 2 - - - 0x01D556 07:D546: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D559 07:D549: F0 04     BEQ bra_D54F
C - - - - - 0x01D55B 07:D54B: 20 24 DA  JSR sub_DA24
C - - - - - 0x01D55E 07:D54E: 60        RTS
bra_D54F:
C - - - - - 0x01D55F 07:D54F: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01D562 07:D552: C9 00     CMP #$00
C - - - - - 0x01D564 07:D554: D0 2C     BNE bra_D582
C - - - - - 0x01D566 07:D556: 20 49 FA  JSR sub_FA49
C - - - - - 0x01D569 07:D559: C9 00     CMP #$00
C - - - - - 0x01D56B 07:D55B: F0 03     BEQ bra_D560
C - - - - - 0x01D56D 07:D55D: 4C 15 D6  JMP loc_D615_RTS
bra_D560:
C - - - - - 0x01D570 07:D560: A5 22     LDA ram_0022
C - - - - - 0x01D572 07:D562: 29 04     AND #$04
C - - - - - 0x01D574 07:D564: C9 04     CMP #$04
C - - - - - 0x01D576 07:D566: D0 76     BNE bra_D5DE
C - - - - - 0x01D578 07:D568: A5 21     LDA ram_0021
C - - - - - 0x01D57A 07:D56A: C9 03     CMP #$03
C - - - - - 0x01D57C 07:D56C: D0 70     BNE bra_D5DE
C - - - - - 0x01D57E 07:D56E: BD 01 04  LDA ram_0401,X
C - - - - - 0x01D581 07:D571: D0 05     BNE bra_D578
C - - - - - 0x01D583 07:D573: BD 05 04  LDA ram_0405,X
C - - - - - 0x01D586 07:D576: F0 66     BEQ bra_D5DE
bra_D578:
C - - - - - 0x01D588 07:D578: A9 80     LDA #$80
C - - - - - 0x01D58A 07:D57A: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D58D 07:D57D: A9 40     LDA #$40
C - - - - - 0x01D58F 07:D57F: 4C 12 D6  JMP loc_D612
bra_D582:
C - - - - - 0x01D592 07:D582: C9 04     CMP #$04
C - - - - - 0x01D594 07:D584: D0 30     BNE bra_D5B6
C - - - - - 0x01D596 07:D586: BD 04 03  LDA ram_0304,X
C - - - - - 0x01D599 07:D589: C9 80     CMP #$80
C - - - - - 0x01D59B 07:D58B: B0 51     BCS bra_D5DE
C - - - - - 0x01D59D 07:D58D: BD 01 04  LDA ram_0401,X
C - - - - - 0x01D5A0 07:D590: C9 04     CMP #$04
C - - - - - 0x01D5A2 07:D592: 90 04     BCC bra_D598
C - - - - - 0x01D5A4 07:D594: C9 FC     CMP #$FC
C - - - - - 0x01D5A6 07:D596: 90 46     BCC bra_D5DE
bra_D598:
C - - - - - 0x01D5A8 07:D598: A5 23     LDA ram_0023
C - - - - - 0x01D5AA 07:D59A: C9 03     CMP #$03
C - - - - - 0x01D5AC 07:D59C: D0 0A     BNE bra_D5A8
C - - - - - 0x01D5AE 07:D59E: A9 07     LDA #$07
C - - - - - 0x01D5B0 07:D5A0: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01D5B3 07:D5A3: A9 3D     LDA #$3D
C - - - - - 0x01D5B5 07:D5A5: 4C 12 D6  JMP loc_D612
bra_D5A8:
C - - - - - 0x01D5B8 07:D5A8: C9 04     CMP #$04
C - - - - - 0x01D5BA 07:D5AA: D0 32     BNE bra_D5DE
C - - - - - 0x01D5BC 07:D5AC: A9 05     LDA #$05
C - - - - - 0x01D5BE 07:D5AE: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01D5C1 07:D5B1: A9 3E     LDA #$3E
C - - - - - 0x01D5C3 07:D5B3: 4C 12 D6  JMP loc_D612
bra_D5B6:
C - - - - - 0x01D5C6 07:D5B6: C9 06     CMP #$06
C - - - - - 0x01D5C8 07:D5B8: D0 24     BNE bra_D5DE
C - - - - - 0x01D5CA 07:D5BA: 20 49 FA  JSR sub_FA49
C - - - - - 0x01D5CD 07:D5BD: C9 00     CMP #$00
C - - - - - 0x01D5CF 07:D5BF: F0 03     BEQ bra_D5C4
C - - - - - 0x01D5D1 07:D5C1: 4C 15 D6  JMP loc_D615_RTS
bra_D5C4:
C - - - - - 0x01D5D4 07:D5C4: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01D5D7 07:D5C7: C9 3D     CMP #$3D
C - - - - - 0x01D5D9 07:D5C9: D0 13     BNE bra_D5DE
C - - - - - 0x01D5DB 07:D5CB: A5 21     LDA ram_0021
C - - - - - 0x01D5DD 07:D5CD: C9 01     CMP #$01
C - - - - - 0x01D5DF 07:D5CF: D0 44     BNE bra_D615_RTS
C - - - - - 0x01D5E1 07:D5D1: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D5E4 07:D5D4: 29 DF     AND #$DF
C - - - - - 0x01D5E6 07:D5D6: 9D 00 03  STA ram_0300,X
C - - - - - 0x01D5E9 07:D5D9: A9 3E     LDA #$3E
C - - - - - 0x01D5EB 07:D5DB: 4C 12 D6  JMP loc_D612
bra_D5DE:
C - - - - - 0x01D5EE 07:D5DE: A5 23     LDA ram_0023
C - - - - - 0x01D5F0 07:D5E0: C9 01     CMP #$01
C - - - - - 0x01D5F2 07:D5E2: D0 05     BNE bra_D5E9
C - - - - - 0x01D5F4 07:D5E4: A9 38     LDA #$38
C - - - - - 0x01D5F6 07:D5E6: 4C 04 D6  JMP loc_D604
bra_D5E9:
C - - - - - 0x01D5F9 07:D5E9: C9 02     CMP #$02
C - - - - - 0x01D5FB 07:D5EB: D0 05     BNE bra_D5F2
C - - - - - 0x01D5FD 07:D5ED: A9 2E     LDA #$2E
C - - - - - 0x01D5FF 07:D5EF: 4C 04 D6  JMP loc_D604
bra_D5F2:
C - - - - - 0x01D602 07:D5F2: C9 03     CMP #$03
C - - - - - 0x01D604 07:D5F4: D0 05     BNE bra_D5FB
C - - - - - 0x01D606 07:D5F6: A9 39     LDA #$39
C - - - - - 0x01D608 07:D5F8: 4C 04 D6  JMP loc_D604
bra_D5FB:
C - - - - - 0x01D60B 07:D5FB: C9 04     CMP #$04
C - - - - - 0x01D60D 07:D5FD: D0 16     BNE bra_D615_RTS
C - - - - - 0x01D60F 07:D5FF: A9 2F     LDA #$2F
C - - - - - 0x01D611 07:D601: 4C 04 D6  JMP loc_D604    ; bzk optimize
loc_D604:
C D 2 - - - 0x01D614 07:D604: 48        PHA
C - - - - - 0x01D615 07:D605: BD 00 04  LDA ram_0400,X
C - - - - - 0x01D618 07:D608: F0 07     BEQ bra_D611
C - - - - - 0x01D61A 07:D60A: 68        PLA
C - - - - - 0x01D61B 07:D60B: 18        CLC
C - - - - - 0x01D61C 07:D60C: 69 02     ADC #$02
C - - - - - 0x01D61E 07:D60E: 4C 12 D6  JMP loc_D612
bra_D611:
C - - - - - 0x01D621 07:D611: 68        PLA
loc_D612:
C D 2 - - - 0x01D622 07:D612: 20 85 E8  JSR sub_E885
bra_D615_RTS:
loc_D615_RTS:
C D 2 - - - 0x01D625 07:D615: 60        RTS



sub_D616:
C - - - - - 0x01D626 07:D616: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D629 07:D619: 29 40     AND #$40
C - - - - - 0x01D62B 07:D61B: F0 7E     BEQ bra_D69B_RTS
C - - - - - 0x01D62D 07:D61D: A5 2F     LDA ram_002F
C - - - - - 0x01D62F 07:D61F: F0 7A     BEQ bra_D69B_RTS
C - - - - - 0x01D631 07:D621: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01D634 07:D624: F0 04     BEQ bra_D62A
C - - - - - 0x01D636 07:D626: 20 24 DA  JSR sub_DA24
C - - - - - 0x01D639 07:D629: 60        RTS
bra_D62A:
C - - - - - 0x01D63A 07:D62A: A5 23     LDA ram_0023
C - - - - - 0x01D63C 07:D62C: D0 3F     BNE bra_D66D
C - - - - - 0x01D63E 07:D62E: A5 22     LDA ram_0022
C - - - - - 0x01D640 07:D630: 29 04     AND #$04
C - - - - - 0x01D642 07:D632: D0 05     BNE bra_D639
C - - - - - 0x01D644 07:D634: A9 00     LDA #$00
C - - - - - 0x01D646 07:D636: 4C 98 D6  JMP loc_D698
bra_D639:
C - - - - - 0x01D649 07:D639: B9 10 03  LDA ram_0310,Y
C - - - - - 0x01D64C 07:D63C: 30 07     BMI bra_D645
C - - - - - 0x01D64E 07:D63E: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01D651 07:D641: 29 04     AND #$04
C - - - - - 0x01D653 07:D643: F0 28     BEQ bra_D66D
bra_D645:
C - - - - - 0x01D655 07:D645: A5 22     LDA ram_0022
C - - - - - 0x01D657 07:D647: 29 03     AND #$03
C - - - - - 0x01D659 07:D649: F0 22     BEQ bra_D66D
C - - - - - 0x01D65B 07:D64B: 29 02     AND #$02
C - - - - - 0x01D65D 07:D64D: F0 09     BEQ bra_D658
C - - - - - 0x01D65F 07:D64F: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D662 07:D652: 29 40     AND #$40
C - - - - - 0x01D664 07:D654: D0 17     BNE bra_D66D
C - - - - - 0x01D666 07:D656: F0 07     BEQ bra_D65F
bra_D658:
C - - - - - 0x01D668 07:D658: BD 01 03  LDA ram_0301,X
C - - - - - 0x01D66B 07:D65B: 29 40     AND #$40
C - - - - - 0x01D66D 07:D65D: F0 0E     BEQ bra_D66D
bra_D65F:
C - - - - - 0x01D66F 07:D65F: A5 22     LDA ram_0022
C - - - - - 0x01D671 07:D661: 29 C8     AND #$C8
C - - - - - 0x01D673 07:D663: D0 08     BNE bra_D66D
C - - - - - 0x01D675 07:D665: 20 05 F1  JSR sub_F105
C - - - - - 0x01D678 07:D668: A9 0A     LDA #$0A
C - - - - - 0x01D67A 07:D66A: 4C 98 D6  JMP loc_D698
bra_D66D:
C - - - - - 0x01D67D 07:D66D: A5 23     LDA ram_0023
C - - - - - 0x01D67F 07:D66F: C9 01     CMP #$01
C - - - - - 0x01D681 07:D671: D0 05     BNE bra_D678
C - - - - - 0x01D683 07:D673: A9 36     LDA #$36
C - - - - - 0x01D685 07:D675: 4C 93 D6  JMP loc_D693
bra_D678:
C - - - - - 0x01D688 07:D678: C9 02     CMP #$02
C - - - - - 0x01D68A 07:D67A: D0 05     BNE bra_D681
C - - - - - 0x01D68C 07:D67C: A9 2C     LDA #$2C
C - - - - - 0x01D68E 07:D67E: 4C 93 D6  JMP loc_D693
bra_D681:
C - - - - - 0x01D691 07:D681: C9 03     CMP #$03
C - - - - - 0x01D693 07:D683: D0 05     BNE bra_D68A
C - - - - - 0x01D695 07:D685: A9 37     LDA #$37
C - - - - - 0x01D697 07:D687: 4C 93 D6  JMP loc_D693
bra_D68A:
C - - - - - 0x01D69A 07:D68A: C9 04     CMP #$04
C - - - - - 0x01D69C 07:D68C: D0 0D     BNE bra_D69B_RTS
C - - - - - 0x01D69E 07:D68E: A9 2D     LDA #$2D
C - - - - - 0x01D6A0 07:D690: 4C 93 D6  JMP loc_D693
loc_D693:
C D 2 - - - 0x01D6A3 07:D693: 48        PHA
C - - - - - 0x01D6A4 07:D694: 20 05 F1  JSR sub_F105
C - - - - - 0x01D6A7 07:D697: 68        PLA
loc_D698:
C D 2 - - - 0x01D6A8 07:D698: 20 85 E8  JSR sub_E885
bra_D69B_RTS:
C - - - - - 0x01D6AB 07:D69B: 60        RTS



vec_D69C_NMI_handler:
C - - - - - 0x01D6AC 07:D69C: 8D 06 70  STA $7006
C - - - - - 0x01D6AF 07:D69F: 48        PHA
C - - - - - 0x01D6B0 07:D6A0: 8A        TXA
C - - - - - 0x01D6B1 07:D6A1: 48        PHA
C - - - - - 0x01D6B2 07:D6A2: 98        TYA
C - - - - - 0x01D6B3 07:D6A3: 48        PHA
C - - - - - 0x01D6B4 07:D6A4: AD 02 20  LDA $2002
C - - - - - 0x01D6B7 07:D6A7: A5 25     LDA ram_0025
C - - - - - 0x01D6B9 07:D6A9: 8D 02 60  STA $6002
C - - - - - 0x01D6BC 07:D6AC: A5 26     LDA ram_0026
C - - - - - 0x01D6BE 07:D6AE: 8D 03 60  STA $6003
C - - - - - 0x01D6C1 07:D6B1: A9 00     LDA #$00
C - - - - - 0x01D6C3 07:D6B3: 8D 03 20  STA $2003
C - - - - - 0x01D6C6 07:D6B6: A9 02     LDA #$02    ; sprites at $0200-$02FF
C - - - - - 0x01D6C8 07:D6B8: 8D 14 40  STA $4014
C - - - - - 0x01D6CB 07:D6BB: 20 59 D9  JSR sub_D959
C - - - - - 0x01D6CE 07:D6BE: A5 13     LDA ram_0013
C - - - - - 0x01D6D0 07:D6C0: F0 09     BEQ bra_D6CB
C - - - - - 0x01D6D2 07:D6C2: A5 16     LDA ram_0016
C - - - - - 0x01D6D4 07:D6C4: 8D 01 20  STA $2001
C - - - - - 0x01D6D7 07:D6C7: A9 00     LDA #$00
C - - - - - 0x01D6D9 07:D6C9: 85 13     STA ram_0013
bra_D6CB:
; bzk useless checks for 37
C - - - - - 0x01D6DB 07:D6CB: A5 17     LDA ram_0017
C - - - - - 0x01D6DD 07:D6CD: C9 37     CMP #$37
C - - - - - 0x01D6DF 07:D6CF: D0 06     BNE bra_D6D7
C - - - - - 0x01D6E1 07:D6D1: A5 18     LDA ram_0018
C - - - - - 0x01D6E3 07:D6D3: C9 37     CMP #$37
C - - - - - 0x01D6E5 07:D6D5: F0 03     BEQ bra_D6DA
bra_D6D7:
- - - - - - 0x01D6E7 07:D6D7: 4C 1E D7  JMP loc_D71E
bra_D6DA:
C - - - - - 0x01D6EA 07:D6DA: 20 96 FA  JSR sub_FA96
C - - - - - 0x01D6ED 07:D6DD: C6 10     DEC ram_0010
C - - - - - 0x01D6EF 07:D6DF: A5 0E     LDA ram_000E
C - - - - - 0x01D6F1 07:D6E1: C9 01     CMP #$01
C - - - - - 0x01D6F3 07:D6E3: D0 06     BNE bra_D6EB
C - - - - - 0x01D6F5 07:D6E5: 20 24 D7  JSR sub_D724
C - - - - - 0x01D6F8 07:D6E8: 4C 1B D7  JMP loc_D71B
bra_D6EB:
C - - - - - 0x01D6FB 07:D6EB: C9 05     CMP #$05
C - - - - - 0x01D6FD 07:D6ED: F0 08     BEQ bra_D6F7
C - - - - - 0x01D6FF 07:D6EF: C9 06     CMP #$06
C - - - - - 0x01D701 07:D6F1: F0 04     BEQ bra_D6F7
C - - - - - 0x01D703 07:D6F3: C9 02     CMP #$02
C - - - - - 0x01D705 07:D6F5: D0 06     BNE bra_D6FD
bra_D6F7:
C - - - - - 0x01D707 07:D6F7: 20 76 C0  JSR sub_C076
C - - - - - 0x01D70A 07:D6FA: 4C 1B D7  JMP loc_D71B
bra_D6FD:
C - - - - - 0x01D70D 07:D6FD: C9 03     CMP #$03
C - - - - - 0x01D70F 07:D6FF: D0 06     BNE bra_D707
C - - - - - 0x01D711 07:D701: 20 00 C1  JSR sub_C100
C - - - - - 0x01D714 07:D704: 4C 1B D7  JMP loc_D71B
bra_D707:
C - - - - - 0x01D717 07:D707: C9 04     CMP #$04
C - - - - - 0x01D719 07:D709: D0 06     BNE bra_D711
C - - - - - 0x01D71B 07:D70B: 20 92 C0  JSR sub_C092
C - - - - - 0x01D71E 07:D70E: 4C 1B D7  JMP loc_D71B
bra_D711:
C - - - - - 0x01D721 07:D711: C9 64     CMP #$64
C - - - - - 0x01D723 07:D713: D0 06     BNE bra_D71B
C - - - - - 0x01D725 07:D715: 20 F7 D8  JSR sub_D8F7
C - - - - - 0x01D728 07:D718: 4C 1B D7  JMP loc_D71B
bra_D71B:
loc_D71B:
C D 2 - - - 0x01D72B 07:D71B: 20 E2 F7  JSR sub_F7E2
loc_D71E:
C - - - - - 0x01D72E 07:D71E: 68        PLA
C - - - - - 0x01D72F 07:D71F: A8        TAY
C - - - - - 0x01D730 07:D720: 68        PLA
C - - - - - 0x01D731 07:D721: AA        TAX
C - - - - - 0x01D732 07:D722: 68        PLA
C - - - - - 0x01D733 07:D723: 40        RTI



sub_D724:
C - - - - - 0x01D734 07:D724: A9 BE     LDA #$BE
C - - - - - 0x01D736 07:D726: 8D 00 60  STA $6000
C - - - - - 0x01D739 07:D729: A9 BF     LDA #$BF
C - - - - - 0x01D73B 07:D72B: 8D 01 60  STA $6001
C - - - - - 0x01D73E 07:D72E: A5 C6     LDA ram_00C6
C - - - - - 0x01D740 07:D730: F0 09     BEQ bra_D73B
C - - - - - 0x01D742 07:D732: A5 72     LDA ram_0072
C - - - - - 0x01D744 07:D734: F0 43     BEQ bra_D779
C - - - - - 0x01D746 07:D736: A9 FF     LDA #$FF
C - - - - - 0x01D748 07:D738: 85 72     STA ram_0072
C - - - - - 0x01D74A 07:D73A: 60        RTS
bra_D73B:
C - - - - - 0x01D74B 07:D73B: A5 FB     LDA ram_00FB
C - - - - - 0x01D74D 07:D73D: F0 04     BEQ bra_D743
C - - - - - 0x01D74F 07:D73F: 20 39 D8  JSR sub_D839
C - - - - - 0x01D752 07:D742: 60        RTS
bra_D743:
C - - - - - 0x01D753 07:D743: A5 72     LDA ram_0072
C - - - - - 0x01D755 07:D745: C9 FF     CMP #$FF
C - - - - - 0x01D757 07:D747: D0 06     BNE bra_D74F
C - - - - - 0x01D759 07:D749: 20 5C F8  JSR sub_F85C
C - - - - - 0x01D75C 07:D74C: 4C 68 D7  JMP loc_D768
bra_D74F:
C - - - - - 0x01D75F 07:D74F: C9 01     CMP #$01
C - - - - - 0x01D761 07:D751: D0 06     BNE bra_D759
C - - - - - 0x01D763 07:D753: 20 34 EB  JSR sub_EB34
C - - - - - 0x01D766 07:D756: 4C 93 D7  JMP loc_D793
bra_D759:
C - - - - - 0x01D769 07:D759: C9 02     CMP #$02
C - - - - - 0x01D76B 07:D75B: 90 0F     BCC bra_D76C
C - - - - - 0x01D76D 07:D75D: 20 65 F1  JSR sub_F165
C - - - - - 0x01D770 07:D760: A9 00     LDA #$00
C - - - - - 0x01D772 07:D762: 20 25 FD  JSR sub_FD25
C - - - - - 0x01D775 07:D765: 20 BC E1  JSR sub_E1BC
loc_D768:
C D 2 - - - 0x01D778 07:D768: 20 37 E3  JSR sub_E337
C - - - - - 0x01D77B 07:D76B: 60        RTS
bra_D76C:
C - - - - - 0x01D77C 07:D76C: A5 7D     LDA ram_007D
C - - - - - 0x01D77E 07:D76E: F0 09     BEQ bra_D779
C - - - - - 0x01D780 07:D770: 20 31 F1  JSR sub_F131
C - - - - - 0x01D783 07:D773: A9 00     LDA #$00
C - - - - - 0x01D785 07:D775: 85 7D     STA ram_007D
C - - - - - 0x01D787 07:D777: F0 1A     BEQ bra_D793
bra_D779:
C - - - - - 0x01D789 07:D779: A5 2F     LDA ram_002F
C - - - - - 0x01D78B 07:D77B: F0 13     BEQ bra_D790
C - - - - - 0x01D78D 07:D77D: 20 97 F7  JSR sub_F797
C - - - - - 0x01D790 07:D780: A5 3E     LDA ram_game_time
C - - - - - 0x01D792 07:D782: D0 0C     BNE bra_D790
C - - - - - 0x01D794 07:D784: A9 00     LDA #$00
C - - - - - 0x01D796 07:D786: 85 2F     STA ram_002F
C - - - - - 0x01D798 07:D788: A9 01     LDA #$01
C - - - - - 0x01D79A 07:D78A: 85 72     STA ram_0072
C - - - - - 0x01D79C 07:D78C: 85 7C     STA ram_007C
C - - - - - 0x01D79E 07:D78E: D0 03     BNE bra_D793
bra_D790:
C - - - - - 0x01D7A0 07:D790: 20 80 EA  JSR sub_EA80
bra_D793:
loc_D793:
C D 2 - - - 0x01D7A3 07:D793: A9 00     LDA #$00
C - - - - - 0x01D7A5 07:D795: 8D 06 20  STA $2006
C - - - - - 0x01D7A8 07:D798: 8D 06 20  STA $2006
C - - - - - 0x01D7AB 07:D79B: 20 5C F8  JSR sub_F85C
C - - - - - 0x01D7AE 07:D79E: A9 00     LDA #$00
C - - - - - 0x01D7B0 07:D7A0: 20 25 FD  JSR sub_FD25
C - - - - - 0x01D7B3 07:D7A3: A2 11     LDX #$11
C - - - - - 0x01D7B5 07:D7A5: 18        CLC
bra_D7A6:
C - - - - - 0x01D7B6 07:D7A6: 7D 0F E5  ADC tbl_E510 - $01,X
C - - - - - 0x01D7B9 07:D7A9: CA        DEX
C - - - - - 0x01D7BA 07:D7AA: D0 FA     BNE bra_D7A6
C - - - - - 0x01D7BC 07:D7AC: 48        PHA
C - - - - - 0x01D7BD 07:D7AD: A9 01     LDA #$01
C - - - - - 0x01D7BF 07:D7AF: 20 25 FD  JSR sub_FD25
C - - - - - 0x01D7C2 07:D7B2: A5 C6     LDA ram_00C6
C - - - - - 0x01D7C4 07:D7B4: F0 10     BEQ bra_D7C6
C - - - - - 0x01D7C6 07:D7B6: A5 B6     LDA ram_00B6
C - - - - - 0x01D7C8 07:D7B8: D0 04     BNE bra_D7BE
C - - - - - 0x01D7CA 07:D7BA: A5 B7     LDA ram_00B7
C - - - - - 0x01D7CC 07:D7BC: F0 08     BEQ bra_D7C6
bra_D7BE:
C - - - - - 0x01D7CE 07:D7BE: A9 FF     LDA #$FF
C - - - - - 0x01D7D0 07:D7C0: 85 72     STA ram_0072
C - - - - - 0x01D7D2 07:D7C2: 68        PLA
C - - - - - 0x01D7D3 07:D7C3: 85 47     STA ram_0047
C - - - - - 0x01D7D5 07:D7C5: 60        RTS
bra_D7C6:
C - - - - - 0x01D7D6 07:D7C6: A5 2F     LDA ram_002F
C - - - - - 0x01D7D8 07:D7C8: F0 39     BEQ bra_D803
C - - - - - 0x01D7DA 07:D7CA: A5 B4     LDA ram_00B4
C - - - - - 0x01D7DC 07:D7CC: C9 07     CMP #$07
C - - - - - 0x01D7DE 07:D7CE: D0 12     BNE bra_D7E2
C - - - - - 0x01D7E0 07:D7D0: A9 01     LDA #$01
C - - - - - 0x01D7E2 07:D7D2: 85 FB     STA ram_00FB
C - - - - - 0x01D7E4 07:D7D4: 20 3B F8  JSR sub_F83B
C - - - - - 0x01D7E7 07:D7D7: 20 0B F8  JSR sub_F80B
C - - - - - 0x01D7EA 07:D7DA: A9 1F     LDA #$1F
C - - - - - 0x01D7EC 07:D7DC: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01D7EF 07:D7DF: 4C 35 D8  JMP loc_D835
bra_D7E2:
C - - - - - 0x01D7F2 07:D7E2: AD 1E 05  LDA ram_051E
C - - - - - 0x01D7F5 07:D7E5: F0 06     BEQ bra_D7ED
C - - - - - 0x01D7F7 07:D7E7: A5 B6     LDA ram_00B6
C - - - - - 0x01D7F9 07:D7E9: C9 C0     CMP #$C0
C - - - - - 0x01D7FB 07:D7EB: F0 0B     BEQ bra_D7F8
bra_D7ED:
C - - - - - 0x01D7FD 07:D7ED: AD 4E 05  LDA ram_054E
C - - - - - 0x01D800 07:D7F0: F0 11     BEQ bra_D803
C - - - - - 0x01D802 07:D7F2: A5 B7     LDA ram_00B7
C - - - - - 0x01D804 07:D7F4: C9 C0     CMP #$C0
C - - - - - 0x01D806 07:D7F6: D0 0B     BNE bra_D803
bra_D7F8:
C - - - - - 0x01D808 07:D7F8: A9 FF     LDA #$FF
C - - - - - 0x01D80A 07:D7FA: 85 72     STA ram_0072
C - - - - - 0x01D80C 07:D7FC: A9 00     LDA #$00
C - - - - - 0x01D80E 07:D7FE: 85 2E     STA ram_002E
C - - - - - 0x01D810 07:D800: 4C 35 D8  JMP loc_D835
bra_D803:
C - - - - - 0x01D813 07:D803: A9 00     LDA #$00
C - - - - - 0x01D815 07:D805: 20 D8 CE  JSR sub_CED8
C - - - - - 0x01D818 07:D808: A9 01     LDA #$01
C - - - - - 0x01D81A 07:D80A: 20 D8 CE  JSR sub_CED8
C - - - - - 0x01D81D 07:D80D: A5 72     LDA ram_0072
C - - - - - 0x01D81F 07:D80F: C9 02     CMP #$02
C - - - - - 0x01D821 07:D811: B0 1B     BCS bra_D82E
C - - - - - 0x01D823 07:D813: 20 BC E1  JSR sub_E1BC
C - - - - - 0x01D826 07:D816: 20 65 F8  JSR sub_F865
C - - - - - 0x01D829 07:D819: 20 FD EF  JSR sub_EFFD
C - - - - - 0x01D82C 07:D81C: 20 1B D9  JSR sub_D91B
C - - - - - 0x01D82F 07:D81F: 20 37 E3  JSR sub_E337
C - - - - - 0x01D832 07:D822: 20 90 CB  JSR sub_CB90
C - - - - - 0x01D835 07:D825: 20 E1 F8  JSR sub_F8E1
C - - - - - 0x01D838 07:D828: 20 21 EA  JSR sub_EA21
C - - - - - 0x01D83B 07:D82B: 4C 35 D8  JMP loc_D835
bra_D82E:
C - - - - - 0x01D83E 07:D82E: A9 00     LDA #$00
C - - - - - 0x01D840 07:D830: 85 3A     STA ram_003A
C - - - - - 0x01D842 07:D832: 20 37 E3  JSR sub_E337
loc_D835:
C D 2 - - - 0x01D845 07:D835: 68        PLA
C - - - - - 0x01D846 07:D836: 85 47     STA ram_0047
C - - - - - 0x01D848 07:D838: 60        RTS



sub_D839:
C - - - - - 0x01D849 07:D839: A5 16     LDA ram_0016
C - - - - - 0x01D84B 07:D83B: 29 EF     AND #$EF
C - - - - - 0x01D84D 07:D83D: 8D 01 20  STA $2001
C - - - - - 0x01D850 07:D840: A9 00     LDA #$00
C - - - - - 0x01D852 07:D842: 8D 05 20  STA $2005
C - - - - - 0x01D855 07:D845: 8D 05 20  STA $2005
C - - - - - 0x01D858 07:D848: A5 FB     LDA ram_00FB
C - - - - - 0x01D85A 07:D84A: C9 02     CMP #$02
C - - - - - 0x01D85C 07:D84C: D0 4B     BNE bra_D899
C - - - - - 0x01D85E 07:D84E: A9 03     LDA #$03
C - - - - - 0x01D860 07:D850: 85 B0     STA ram_00B0
C - - - - - 0x01D862 07:D852: A9 0E     LDA #$0E
C - - - - - 0x01D864 07:D854: 85 B1     STA ram_00B1
C - - - - - 0x01D866 07:D856: A9 05     LDA #$05
C - - - - - 0x01D868 07:D858: 85 B2     STA ram_00B2
C - - - - - 0x01D86A 07:D85A: A9 00     LDA #$00
C - - - - - 0x01D86C 07:D85C: 85 AE     STA ram_00AE
C - - - - - 0x01D86E 07:D85E: A9 00     LDA #$00
C - - - - - 0x01D870 07:D860: 85 AF     STA ram_00AF
C - - - - - 0x01D872 07:D862: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01D875 07:D865: A5 3E     LDA ram_game_time
C - - - - - 0x01D877 07:D867: 85 A5     STA ram_00A5
C - - - - - 0x01D879 07:D869: A9 00     LDA #$00
C - - - - - 0x01D87B 07:D86B: 85 A6     STA ram_00A6
C - - - - - 0x01D87D 07:D86D: 20 53 FF  JSR sub_FF53
C - - - - - 0x01D880 07:D870: A9 03     LDA #$03
C - - - - - 0x01D882 07:D872: 85 B0     STA ram_00B0
C - - - - - 0x01D884 07:D874: A9 0F     LDA #$0F
C - - - - - 0x01D886 07:D876: 85 B1     STA ram_00B1
C - - - - - 0x01D888 07:D878: A9 02     LDA #$02
C - - - - - 0x01D88A 07:D87A: 85 B2     STA ram_00B2
C - - - - - 0x01D88C 07:D87C: A9 AA     LDA #$AA
C - - - - - 0x01D88E 07:D87E: 85 AE     STA ram_00AE
C - - - - - 0x01D890 07:D880: A9 00     LDA #$00
C - - - - - 0x01D892 07:D882: 85 AF     STA ram_00AF
C - - - - - 0x01D894 07:D884: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01D897 07:D887: 20 E8 D8  JSR sub_D8E8
C - - - - - 0x01D89A 07:D88A: A5 16     LDA ram_0016
C - - - - - 0x01D89C 07:D88C: 8D 01 20  STA $2001
C - - - - - 0x01D89F 07:D88F: A5 27     LDA ram_screen
C - - - - - 0x01D8A1 07:D891: 20 FA F7  JSR sub_F7FA
C - - - - - 0x01D8A4 07:D894: A9 00     LDA #$00
C - - - - - 0x01D8A6 07:D896: 85 FB     STA ram_00FB
C - - - - - 0x01D8A8 07:D898: 60        RTS
bra_D899:
C - - - - - 0x01D8A9 07:D899: A5 10     LDA ram_0010
C - - - - - 0x01D8AB 07:D89B: 29 3F     AND #$3F
C - - - - - 0x01D8AD 07:D89D: C9 20     CMP #$20
C - - - - - 0x01D8AF 07:D89F: 90 1A     BCC bra_D8BB
C - - - - - 0x01D8B1 07:D8A1: A9 03     LDA #$03
C - - - - - 0x01D8B3 07:D8A3: 85 B0     STA ram_00B0
C - - - - - 0x01D8B5 07:D8A5: A9 0E     LDA #$0E
C - - - - - 0x01D8B7 07:D8A7: 85 B1     STA ram_00B1
C - - - - - 0x01D8B9 07:D8A9: A9 05     LDA #$05
C - - - - - 0x01D8BB 07:D8AB: 85 B2     STA ram_00B2
C - - - - - 0x01D8BD 07:D8AD: A9 00     LDA #$00
C - - - - - 0x01D8BF 07:D8AF: 85 AE     STA ram_00AE
C - - - - - 0x01D8C1 07:D8B1: A9 00     LDA #$00
C - - - - - 0x01D8C3 07:D8B3: 85 AF     STA ram_00AF
C - - - - - 0x01D8C5 07:D8B5: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01D8C8 07:D8B8: 4C D2 D8  JMP loc_D8D2
bra_D8BB:
C - - - - - 0x01D8CB 07:D8BB: A9 03     LDA #$03
C - - - - - 0x01D8CD 07:D8BD: 85 B0     STA ram_00B0
C - - - - - 0x01D8CF 07:D8BF: A9 0E     LDA #$0E
C - - - - - 0x01D8D1 07:D8C1: 85 B1     STA ram_00B1
C - - - - - 0x01D8D3 07:D8C3: A9 05     LDA #$05
C - - - - - 0x01D8D5 07:D8C5: 85 B2     STA ram_00B2
C - - - - - 0x01D8D7 07:D8C7: A9 E3     LDA #< tbl_D8E3
C - - - - - 0x01D8D9 07:D8C9: 85 AE     STA ram_00AE
C - - - - - 0x01D8DB 07:D8CB: A9 D8     LDA #> tbl_D8E3
C - - - - - 0x01D8DD 07:D8CD: 85 AF     STA ram_00AF
C - - - - - 0x01D8DF 07:D8CF: 20 9D FF  JSR sub_FF9D
loc_D8D2:
C D 2 - - - 0x01D8E2 07:D8D2: 20 E8 D8  JSR sub_D8E8
C - - - - - 0x01D8E5 07:D8D5: 20 25 FD  JSR sub_FD25
C - - - - - 0x01D8E8 07:D8D8: A5 B4     LDA ram_00B4
C - - - - - 0x01D8EA 07:D8DA: C9 07     CMP #$07
C - - - - - 0x01D8EC 07:D8DC: D0 04     BNE bra_D8E2
C - - - - - 0x01D8EE 07:D8DE: A9 02     LDA #$02
C - - - - - 0x01D8F0 07:D8E0: 85 FB     STA ram_00FB
bra_D8E2:
C - - - - - 0x01D8F2 07:D8E2: 60        RTS



tbl_D8E3:
- D 2 - I - 0x01D8F3 07:D8E3: 50        .byte $50   ; 
- D 2 - I - 0x01D8F4 07:D8E4: 41        .byte $41   ; 
- D 2 - I - 0x01D8F5 07:D8E5: 55        .byte $55   ; 
- D 2 - I - 0x01D8F6 07:D8E6: 53        .byte $53   ; 
- D 2 - I - 0x01D8F7 07:D8E7: 45        .byte $45   ; 



sub_D8E8:
C - - - - - 0x01D8F8 07:D8E8: A9 00     LDA #$00
C - - - - - 0x01D8FA 07:D8EA: 8D 06 20  STA $2006
C - - - - - 0x01D8FD 07:D8ED: 8D 06 20  STA $2006
C - - - - - 0x01D900 07:D8F0: 8D 05 20  STA $2005
C - - - - - 0x01D903 07:D8F3: 8D 05 20  STA $2005
C - - - - - 0x01D906 07:D8F6: 60        RTS



sub_D8F7:
C - - - - - 0x01D907 07:D8F7: 20 E8 D8  JSR sub_D8E8
C - - - - - 0x01D90A 07:D8FA: A9 BE     LDA #$BE
C - - - - - 0x01D90C 07:D8FC: 8D 00 60  STA $6000
C - - - - - 0x01D90F 07:D8FF: A9 BF     LDA #$BF
C - - - - - 0x01D911 07:D901: 8D 01 60  STA $6001
C - - - - - 0x01D914 07:D904: A9 00     LDA #$00
C - - - - - 0x01D916 07:D906: 20 25 FD  JSR sub_FD25
C - - - - - 0x01D919 07:D909: A9 01     LDA #$01
C - - - - - 0x01D91B 07:D90B: 85 CD     STA ram_00CD
C - - - - - 0x01D91D 07:D90D: A2 50     LDX #$50
C - - - - - 0x01D91F 07:D90F: 20 E5 FF  JSR sub_FFE5_garbage_loop_for_IRQ
C - - - - - 0x01D922 07:D912: A5 0F     LDA ram_000F
C - - - - - 0x01D924 07:D914: D0 04     BNE bra_D91A_RTS
C - - - - - 0x01D926 07:D916: A9 00     LDA #$00
C - - - - - 0x01D928 07:D918: 85 CD     STA ram_00CD
bra_D91A_RTS:
C - - - - - 0x01D92A 07:D91A: 60        RTS



sub_D91B:
C - - - - - 0x01D92B 07:D91B: 20 BA D2  JSR sub_D2BA
C - - - - - 0x01D92E 07:D91E: A2 10     LDX #$10
C - - - - - 0x01D930 07:D920: A0 40     LDY #$40
loc_D922:
C D 2 - - - 0x01D932 07:D922: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D935 07:D925: 29 12     AND #$12
C - - - - - 0x01D937 07:D927: C9 12     CMP #$12
C - - - - - 0x01D939 07:D929: D0 1C     BNE bra_D947
C - - - - - 0x01D93B 07:D92B: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01D93E 07:D92E: 29 08     AND #$08
C - - - - - 0x01D940 07:D930: F0 15     BEQ bra_D947
C - - - - - 0x01D942 07:D932: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01D945 07:D935: C9 03     CMP #$03
C - - - - - 0x01D947 07:D937: F0 04     BEQ bra_D93D
C - - - - - 0x01D949 07:D939: C9 01     CMP #$01
C - - - - - 0x01D94B 07:D93B: D0 0A     BNE bra_D947
bra_D93D:
C - - - - - 0x01D94D 07:D93D: B9 09 04  LDA ram_0409,Y
C - - - - - 0x01D950 07:D940: 38        SEC
C - - - - - 0x01D951 07:D941: FD 09 04  SBC ram_0409,X
C - - - - - 0x01D954 07:D944: 99 09 04  STA ram_0409,Y
bra_D947:
C - - - - - 0x01D957 07:D947: E0 10     CPX #$10
C - - - - - 0x01D959 07:D949: D0 07     BNE bra_D952_RTS
C - - - - - 0x01D95B 07:D94B: A2 40     LDX #$40
C - - - - - 0x01D95D 07:D94D: A0 10     LDY #$10
C - - - - - 0x01D95F 07:D94F: 4C 22 D9  JMP loc_D922
bra_D952_RTS:
C - - - - - 0x01D962 07:D952: 60        RTS



sub_D953_divide_by_20h:
C - - - - - 0x01D963 07:D953: 0A        ASL
C - - - - - 0x01D964 07:D954: 0A        ASL
C - - - - - 0x01D965 07:D955: 0A        ASL
C - - - - - 0x01D966 07:D956: 0A        ASL
C - - - - - 0x01D967 07:D957: 0A        ASL
C - - - - - 0x01D968 07:D958: 60        RTS



sub_D959:
; !!! decrypt registers, something about IRQ probably
C - - - - - 0x01D969 07:D959: A9 00     LDA #$00
C - - - - - 0x01D96B 07:D95B: 85 0F     STA ram_000F
C - - - - - 0x01D96D 07:D95D: A9 09     LDA #$09
C - - - - - 0x01D96F 07:D95F: 8D 76 70  STA $7076
C - - - - - 0x01D972 07:D962: A9 B8     LDA #$B8
C - - - - - 0x01D974 07:D964: 8D 66 70  STA $7066
C - - - - - 0x01D977 07:D967: 8D 07 70  STA $7007
C - - - - - 0x01D97A 07:D96A: 58        CLI
C - - - - - 0x01D97B 07:D96B: 60        RTS



sub_D96C:
C - - - - - 0x01D97C 07:D96C: 98        TYA
C - - - - - 0x01D97D 07:D96D: 48        PHA
C - - - - - 0x01D97E 07:D96E: A9 40     LDA #$40
C - - - - - 0x01D980 07:D970: 85 A0     STA ram_00A0
C - - - - - 0x01D982 07:D972: 20 95 FD  JSR sub_FD95
C - - - - - 0x01D985 07:D975: A0 00     LDY #$00
loc_D977_loop:
C D 2 - - - 0x01D987 07:D977: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01D989 07:D979: C9 FF     CMP #$FF
C - - - - - 0x01D98B 07:D97B: F0 0A     BEQ bra_D987
C - - - - - 0x01D98D 07:D97D: C5 A1     CMP ram_00A1
C - - - - - 0x01D98F 07:D97F: B0 06     BCS bra_D987
C - - - - - 0x01D991 07:D981: C8        INY
C - - - - - 0x01D992 07:D982: C8        INY
C - - - - - 0x01D993 07:D983: C8        INY
C - - - - - 0x01D994 07:D984: 4C 77 D9  JMP loc_D977_loop
bra_D987:
C - - - - - 0x01D997 07:D987: C8        INY
C - - - - - 0x01D998 07:D988: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01D99A 07:D98A: C9 46     CMP #$46
C - - - - - 0x01D99C 07:D98C: F0 08     BEQ bra_D996
C - - - - - 0x01D99E 07:D98E: C9 48     CMP #$48
C - - - - - 0x01D9A0 07:D990: F0 04     BEQ bra_D996
C - - - - - 0x01D9A2 07:D992: C9 47     CMP #$47
C - - - - - 0x01D9A4 07:D994: D0 14     BNE bra_D9AA
bra_D996:
C - - - - - 0x01D9A6 07:D996: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D9A9 07:D999: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01D9AB 07:D99B: 38        SEC
C - - - - - 0x01D9AC 07:D99C: E9 41     SBC #$41
C - - - - - 0x01D9AE 07:D99E: 20 43 DD  JSR sub_DD43
C - - - - - 0x01D9B1 07:D9A1: C8        INY
C - - - - - 0x01D9B2 07:D9A2: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01D9B4 07:D9A4: 9D 01 05  STA ram_0501,X
C - - - - - 0x01D9B7 07:D9A7: 4C 21 DA  JMP loc_DA21
bra_D9AA:
C - - - - - 0x01D9BA 07:D9AA: C9 43     CMP #$43
C - - - - - 0x01D9BC 07:D9AC: D0 05     BNE bra_D9B3
C - - - - - 0x01D9BE 07:D9AE: A9 03     LDA #$03
C - - - - - 0x01D9C0 07:D9B0: 4C B9 D9  JMP loc_D9B9
bra_D9B3:
C - - - - - 0x01D9C3 07:D9B3: C9 44     CMP #$44
C - - - - - 0x01D9C5 07:D9B5: D0 10     BNE bra_D9C7
- - - - - - 0x01D9C7 07:D9B7: A9 04     LDA #$04
loc_D9B9:
C D 2 - - - 0x01D9C9 07:D9B9: DD 0B 03  CMP ram_030B,X
C - - - - - 0x01D9CC 07:D9BC: D0 1C     BNE bra_D9DA
C - - - - - 0x01D9CE 07:D9BE: BD 00 03  LDA ram_0300,X
C - - - - - 0x01D9D1 07:D9C1: 29 40     AND #$40
C - - - - - 0x01D9D3 07:D9C3: F0 5C     BEQ bra_DA21
- - - - - - 0x01D9D5 07:D9C5: D0 13     BNE bra_D9DA
bra_D9C7:
C - - - - - 0x01D9D7 07:D9C7: C9 4B     CMP #$4B
C - - - - - 0x01D9D9 07:D9C9: D0 1B     BNE bra_D9E6
C - - - - - 0x01D9DB 07:D9CB: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01D9DE 07:D9CE: C9 05     CMP #$05
C - - - - - 0x01D9E0 07:D9D0: D0 08     BNE bra_D9DA
C - - - - - 0x01D9E2 07:D9D2: C8        INY
C - - - - - 0x01D9E3 07:D9D3: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01D9E5 07:D9D5: C9 08     CMP #$08
C - - - - - 0x01D9E7 07:D9D7: F0 07     BEQ bra_D9E0
C - - - - - 0x01D9E9 07:D9D9: 88        DEY
bra_D9DA:
C - - - - - 0x01D9EA 07:D9DA: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01D9ED 07:D9DD: C8        INY
C - - - - - 0x01D9EE 07:D9DE: B1 6E     LDA (ram_006E),Y
bra_D9E0:
C - - - - - 0x01D9F0 07:D9E0: 20 43 DD  JSR sub_DD43
C - - - - - 0x01D9F3 07:D9E3: 4C 21 DA  JMP loc_DA21
bra_D9E6:
C - - - - - 0x01D9F6 07:D9E6: C9 4C     CMP #$4C
C - - - - - 0x01D9F8 07:D9E8: D0 20     BNE bra_DA0A
C - - - - - 0x01D9FA 07:D9EA: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01D9FD 07:D9ED: C9 07     CMP #$07
C - - - - - 0x01D9FF 07:D9EF: D0 08     BNE bra_D9F9
C - - - - - 0x01DA01 07:D9F1: C8        INY
C - - - - - 0x01DA02 07:D9F2: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01DA04 07:D9F4: C9 0A     CMP #$0A
C - - - - - 0x01DA06 07:D9F6: F0 E8     BEQ bra_D9E0
C - - - - - 0x01DA08 07:D9F8: 88        DEY
bra_D9F9:
C - - - - - 0x01DA09 07:D9F9: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01DA0C 07:D9FC: A9 01     LDA #$01
C - - - - - 0x01DA0E 07:D9FE: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DA11 07:DA01: C8        INY
C - - - - - 0x01DA12 07:DA02: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01DA14 07:DA04: 9D 01 05  STA ram_0501,X
C - - - - - 0x01DA17 07:DA07: 4C 21 DA  JMP loc_DA21
bra_DA0A:
C - - - - - 0x01DA1A 07:DA0A: C9 4D     CMP #$4D
C - - - - - 0x01DA1C 07:DA0C: D0 13     BNE bra_DA21
C - - - - - 0x01DA1E 07:DA0E: BD 00 03  LDA ram_0300,X
C - - - - - 0x01DA21 07:DA11: 29 40     AND #$40
C - - - - - 0x01DA23 07:DA13: F0 0C     BEQ bra_DA21
C - - - - - 0x01DA25 07:DA15: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01DA28 07:DA18: C8        INY
C - - - - - 0x01DA29 07:DA19: B1 6E     LDA (ram_006E),Y
C - - - - - 0x01DA2B 07:DA1B: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DA2E 07:DA1E: 4C 21 DA  JMP loc_DA21
bra_DA21:
loc_DA21:
C D 2 - - - 0x01DA31 07:DA21: 68        PLA
C - - - - - 0x01DA32 07:DA22: A8        TAY
C - - - - - 0x01DA33 07:DA23: 60        RTS



sub_DA24:
C - - - - - 0x01DA34 07:DA24: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01DA36 07:DA26: 8D 00 70  STA $7000
C - - - - - 0x01DA39 07:DA29: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01DA3C 07:DA2C: D0 43     BNE bra_DA71_RTS
C - - - - - 0x01DA3E 07:DA2E: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01DA41 07:DA31: C9 02     CMP #$02
C - - - - - 0x01DA43 07:DA33: D0 3D     BNE bra_DA72
C - - - - - 0x01DA45 07:DA35: BD 01 05  LDA ram_0501,X
C - - - - - 0x01DA48 07:DA38: C9 FF     CMP #$FF
C - - - - - 0x01DA4A 07:DA3A: F0 35     BEQ bra_DA71_RTS
C - - - - - 0x01DA4C 07:DA3C: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01DA4F 07:DA3F: C9 04     CMP #$04
C - - - - - 0x01DA51 07:DA41: D0 1C     BNE bra_DA5F
C - - - - - 0x01DA53 07:DA43: BD 01 05  LDA ram_0501,X
C - - - - - 0x01DA56 07:DA46: C9 3D     CMP #$3D
C - - - - - 0x01DA58 07:DA48: F0 04     BEQ bra_DA4E
C - - - - - 0x01DA5A 07:DA4A: C9 3E     CMP #$3E
C - - - - - 0x01DA5C 07:DA4C: D0 11     BNE bra_DA5F
bra_DA4E:
C - - - - - 0x01DA5E 07:DA4E: BD 01 04  LDA ram_0401,X
C - - - - - 0x01DA61 07:DA51: D0 1E     BNE bra_DA71_RTS
C - - - - - 0x01DA63 07:DA53: BD 01 05  LDA ram_0501,X
C - - - - - 0x01DA66 07:DA56: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DA69 07:DA59: A9 FF     LDA #$FF
C - - - - - 0x01DA6B 07:DA5B: 9D 01 05  STA ram_0501,X
C - - - - - 0x01DA6E 07:DA5E: 60        RTS
bra_DA5F:
C - - - - - 0x01DA6F 07:DA5F: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01DA72 07:DA62: 0A        ASL
C - - - - - 0x01DA73 07:DA63: A8        TAY
C - - - - - 0x01DA74 07:DA64: B9 40 91  LDA tbl_0x015150,Y
C - - - - - 0x01DA77 07:DA67: 85 70     STA ram_0070
C - - - - - 0x01DA79 07:DA69: B9 41 91  LDA tbl_0x015150 + $01,Y
C - - - - - 0x01DA7C 07:DA6C: 85 71     STA ram_0071
C - - - - - 0x01DA7E 07:DA6E: 20 81 DC  JSR sub_DC81
bra_DA71_RTS:
C - - - - - 0x01DA81 07:DA71: 60        RTS
bra_DA72:
C - - - - - 0x01DA82 07:DA72: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01DA85 07:DA75: C9 03     CMP #$03
C - - - - - 0x01DA87 07:DA77: F0 10     BEQ bra_DA89
C - - - - - 0x01DA89 07:DA79: C9 04     CMP #$04
C - - - - - 0x01DA8B 07:DA7B: F0 0C     BEQ bra_DA89
C - - - - - 0x01DA8D 07:DA7D: C9 02     CMP #$02
C - - - - - 0x01DA8F 07:DA7F: F0 08     BEQ bra_DA89
C - - - - - 0x01DA91 07:DA81: BD 00 03  LDA ram_0300,X
C - - - - - 0x01DA94 07:DA84: 29 40     AND #$40
C - - - - - 0x01DA96 07:DA86: D0 01     BNE bra_DA89
C - - - - - 0x01DA98 07:DA88: 60        RTS
bra_DA89:
C - - - - - 0x01DA99 07:DA89: 20 BA DB  JSR sub_DBBA
C - - - - - 0x01DA9C 07:DA8C: BD 01 05  LDA ram_0501,X
C - - - - - 0x01DA9F 07:DA8F: C9 FF     CMP #$FF
C - - - - - 0x01DAA1 07:DA91: F0 09     BEQ bra_DA9C
C - - - - - 0x01DAA3 07:DA93: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DAA6 07:DA96: A9 FF     LDA #$FF
C - - - - - 0x01DAA8 07:DA98: 9D 01 05  STA ram_0501,X
C - - - - - 0x01DAAB 07:DA9B: 60        RTS
bra_DA9C:
C - - - - - 0x01DAAC 07:DA9C: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01DAAF 07:DA9F: C9 05     CMP #$05
C - - - - - 0x01DAB1 07:DAA1: F0 0F     BEQ bra_DAB2
C - - - - - 0x01DAB3 07:DAA3: C9 07     CMP #$07
C - - - - - 0x01DAB5 07:DAA5: F0 0B     BEQ bra_DAB2
C - - - - - 0x01DAB7 07:DAA7: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01DABA 07:DAAA: C9 1E     CMP #$1E
C - - - - - 0x01DABC 07:DAAC: 90 0C     BCC bra_DABA
C - - - - - 0x01DABE 07:DAAE: C9 22     CMP #$22
C - - - - - 0x01DAC0 07:DAB0: B0 08     BCS bra_DABA
bra_DAB2:
C - - - - - 0x01DAC2 07:DAB2: 20 7C DB  JSR sub_DB7C
C - - - - - 0x01DAC5 07:DAB5: A5 C8     LDA ram_00C8
C - - - - - 0x01DAC7 07:DAB7: F0 01     BEQ bra_DABA
C - - - - - 0x01DAC9 07:DAB9: 60        RTS
bra_DABA:
C - - - - - 0x01DACA 07:DABA: A5 45     LDA ram_0045
C - - - - - 0x01DACC 07:DABC: C9 0C     CMP #$0C
C - - - - - 0x01DACE 07:DABE: F0 08     BEQ bra_DAC8
C - - - - - 0x01DAD0 07:DAC0: A9 50     LDA #$50
C - - - - - 0x01DAD2 07:DAC2: 85 CC     STA ram_00CC
C - - - - - 0x01DAD4 07:DAC4: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DAD7 07:DAC7: 60        RTS
bra_DAC8:
C - - - - - 0x01DAD8 07:DAC8: A9 00     LDA #$00
C - - - - - 0x01DADA 07:DACA: 85 CC     STA ram_00CC
C - - - - - 0x01DADC 07:DACC: A9 40     LDA #$40
C - - - - - 0x01DADE 07:DACE: 85 A0     STA ram_00A0
C - - - - - 0x01DAE0 07:DAD0: 20 95 FD  JSR sub_FD95
C - - - - - 0x01DAE3 07:DAD3: A5 A1     LDA ram_00A1
C - - - - - 0x01DAE5 07:DAD5: A4 CA     LDY ram_00CA
C - - - - - 0x01DAE7 07:DAD7: D9 64 DB  CMP tbl_DB64,Y
C - - - - - 0x01DAEA 07:DADA: B0 20     BCS bra_DAFC
C - - - - - 0x01DAEC 07:DADC: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01DAEF 07:DADF: 0A        ASL
C - - - - - 0x01DAF0 07:DAE0: A8        TAY
C - - - - - 0x01DAF1 07:DAE1: B9 00 91  LDA tbl_0x015110,Y
C - - - - - 0x01DAF4 07:DAE4: 85 66     STA ram_0066
C - - - - - 0x01DAF6 07:DAE6: B9 01 91  LDA tbl_0x015110 + $01,Y
C - - - - - 0x01DAF9 07:DAE9: 85 67     STA ram_0067
C - - - - - 0x01DAFB 07:DAEB: 20 D0 DB  JSR sub_DBD0
C - - - - - 0x01DAFE 07:DAEE: A5 69     LDA ram_0069
C - - - - - 0x01DB00 07:DAF0: F0 0A     BEQ bra_DAFC
C - - - - - 0x01DB02 07:DAF2: 85 6B     STA ram_006B
C - - - - - 0x01DB04 07:DAF4: A5 68     LDA ram_0068
C - - - - - 0x01DB06 07:DAF6: 85 6A     STA ram_006A
C - - - - - 0x01DB08 07:DAF8: 20 29 DC  JSR sub_DC29
C - - - - - 0x01DB0B 07:DAFB: 60        RTS
bra_DAFC:
C - - - - - 0x01DB0C 07:DAFC: A9 40     LDA #$40
C - - - - - 0x01DB0E 07:DAFE: 85 A0     STA ram_00A0
C - - - - - 0x01DB10 07:DB00: 20 95 FD  JSR sub_FD95
C - - - - - 0x01DB13 07:DB03: A5 A1     LDA ram_00A1
C - - - - - 0x01DB15 07:DB05: A4 CA     LDY ram_00CA
C - - - - - 0x01DB17 07:DB07: D9 6C DB  CMP tbl_DB6C,Y
C - - - - - 0x01DB1A 07:DB0A: B0 17     BCS bra_DB23
C - - - - - 0x01DB1C 07:DB0C: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01DB1F 07:DB0F: 0A        ASL
C - - - - - 0x01DB20 07:DB10: A8        TAY
C - - - - - 0x01DB21 07:DB11: B9 20 91  LDA tbl_0x015130,Y
C - - - - - 0x01DB24 07:DB14: 85 6A     STA ram_006A
C - - - - - 0x01DB26 07:DB16: B9 21 91  LDA tbl_0x015130 + $01,Y
C - - - - - 0x01DB29 07:DB19: 85 6B     STA ram_006B
C - - - - - 0x01DB2B 07:DB1B: 20 29 DC  JSR sub_DC29
C - - - - - 0x01DB2E 07:DB1E: A5 6F     LDA ram_006F
C - - - - - 0x01DB30 07:DB20: F0 01     BEQ bra_DB23
C - - - - - 0x01DB32 07:DB22: 60        RTS
bra_DB23:
C - - - - - 0x01DB33 07:DB23: A9 40     LDA #$40
C - - - - - 0x01DB35 07:DB25: 85 A0     STA ram_00A0
C - - - - - 0x01DB37 07:DB27: 20 95 FD  JSR sub_FD95
C - - - - - 0x01DB3A 07:DB2A: A5 A1     LDA ram_00A1
C - - - - - 0x01DB3C 07:DB2C: A4 CA     LDY ram_00CA
C - - - - - 0x01DB3E 07:DB2E: D9 74 DB  CMP tbl_DB74,Y
C - - - - - 0x01DB41 07:DB31: B0 0A     BCS bra_DB3D
C - - - - - 0x01DB43 07:DB33: 20 7C DB  JSR sub_DB7C
C - - - - - 0x01DB46 07:DB36: A5 C8     LDA ram_00C8
C - - - - - 0x01DB48 07:DB38: C9 00     CMP #$00
C - - - - - 0x01DB4A 07:DB3A: F0 01     BEQ bra_DB3D
C - - - - - 0x01DB4C 07:DB3C: 60        RTS
bra_DB3D:
C - - - - - 0x01DB4D 07:DB3D: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01DB50 07:DB40: 0A        ASL
C - - - - - 0x01DB51 07:DB41: A8        TAY
C - - - - - 0x01DB52 07:DB42: B9 60 91  LDA tbl_0x015170,Y
C - - - - - 0x01DB55 07:DB45: 85 6A     STA ram_006A
C - - - - - 0x01DB57 07:DB47: B9 61 91  LDA tbl_0x015170 + $01,Y
C - - - - - 0x01DB5A 07:DB4A: 85 6B     STA ram_006B
C - - - - - 0x01DB5C 07:DB4C: 20 29 DC  JSR sub_DC29
C - - - - - 0x01DB5F 07:DB4F: A5 6F     LDA ram_006F
C - - - - - 0x01DB61 07:DB51: F0 01     BEQ bra_DB54
C - - - - - 0x01DB63 07:DB53: 60        RTS
bra_DB54:
- - - - - - 0x01DB64 07:DB54: BD 00 03  LDA ram_0300,X
- - - - - - 0x01DB67 07:DB57: 29 40     AND #$40
- - - - - - 0x01DB69 07:DB59: F0 08     BEQ bra_DB63_RTS
- - - - - - 0x01DB6B 07:DB5B: 20 F1 F0  JSR sub_F0F1
- - - - - - 0x01DB6E 07:DB5E: A9 02     LDA #$02
- - - - - - 0x01DB70 07:DB60: 20 85 E8  JSR sub_E885
bra_DB63_RTS:
- - - - - - 0x01DB73 07:DB63: 60        RTS



tbl_DB64:
- D 2 - - - 0x01DB74 07:DB64: 00        .byte $00   ; 
- D 2 - - - 0x01DB75 07:DB65: 01        .byte $01   ; 
- D 2 - - - 0x01DB76 07:DB66: 05        .byte $05   ; 
- D 2 - - - 0x01DB77 07:DB67: 0A        .byte $0A   ; 
- D 2 - - - 0x01DB78 07:DB68: 18        .byte $18   ; 
- D 2 - - - 0x01DB79 07:DB69: 20        .byte $20   ; 
- D 2 - - - 0x01DB7A 07:DB6A: 30        .byte $30   ; 
- D 2 - - - 0x01DB7B 07:DB6B: 3C        .byte $3C   ; 



tbl_DB6C:
- D 2 - - - 0x01DB7C 07:DB6C: 02        .byte $02   ; 
- D 2 - - - 0x01DB7D 07:DB6D: 02        .byte $02   ; 
- D 2 - - - 0x01DB7E 07:DB6E: 03        .byte $03   ; 
- D 2 - - - 0x01DB7F 07:DB6F: 05        .byte $05   ; 
- D 2 - - - 0x01DB80 07:DB70: 08        .byte $08   ; 
- D 2 - - - 0x01DB81 07:DB71: 0C        .byte $0C   ; 
- D 2 - - - 0x01DB82 07:DB72: 12        .byte $12   ; 
- D 2 - - - 0x01DB83 07:DB73: 19        .byte $19   ; 



tbl_DB74:
- D 2 - - - 0x01DB84 07:DB74: 02        .byte $02   ; 
- D 2 - - - 0x01DB85 07:DB75: 05        .byte $05   ; 
- D 2 - - - 0x01DB86 07:DB76: 0A        .byte $0A   ; 
- D 2 - - - 0x01DB87 07:DB77: 0F        .byte $0F   ; 
- D 2 - - - 0x01DB88 07:DB78: 14        .byte $14   ; 
- D 2 - - - 0x01DB89 07:DB79: 19        .byte $19   ; 
- D 2 - - - 0x01DB8A 07:DB7A: 1E        .byte $1E   ; 
- D 2 - - - 0x01DB8B 07:DB7B: 28        .byte $28   ; 



sub_DB7C:
C - - - - - 0x01DB8C 07:DB7C: 98        TYA
C - - - - - 0x01DB8D 07:DB7D: 48        PHA
C - - - - - 0x01DB8E 07:DB7E: E0 10     CPX #$10
C - - - - - 0x01DB90 07:DB80: D0 04     BNE bra_DB86
C - - - - - 0x01DB92 07:DB82: A0 40     LDY #$40
C - - - - - 0x01DB94 07:DB84: D0 02     BNE bra_DB88
bra_DB86:
C - - - - - 0x01DB96 07:DB86: A0 10     LDY #$10
bra_DB88:
C - - - - - 0x01DB98 07:DB88: 20 F6 DC  JSR sub_DCF6
C - - - - - 0x01DB9B 07:DB8B: A5 6C     LDA ram_006C
C - - - - - 0x01DB9D 07:DB8D: C9 6C     CMP #$6C
C - - - - - 0x01DB9F 07:DB8F: B0 22     BCS bra_DBB3
C - - - - - 0x01DBA1 07:DB91: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01DBA4 07:DB94: 29 04     AND #$04
C - - - - - 0x01DBA6 07:DB96: F0 1B     BEQ bra_DBB3
C - - - - - 0x01DBA8 07:DB98: B9 0F 05  LDA ram_050F,Y
C - - - - - 0x01DBAB 07:DB9B: 29 10     AND #$10
C - - - - - 0x01DBAD 07:DB9D: D0 14     BNE bra_DBB3
C - - - - - 0x01DBAF 07:DB9F: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01DBB2 07:DBA2: C9 02     CMP #$02
C - - - - - 0x01DBB4 07:DBA4: F0 04     BEQ bra_DBAA
C - - - - - 0x01DBB6 07:DBA6: A9 0A     LDA #$0A
C - - - - - 0x01DBB8 07:DBA8: D0 02     BNE bra_DBAC
bra_DBAA:
C - - - - - 0x01DBBA 07:DBAA: A9 08     LDA #$08
bra_DBAC:
C - - - - - 0x01DBBC 07:DBAC: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DBBF 07:DBAF: A9 01     LDA #$01
C - - - - - 0x01DBC1 07:DBB1: D0 02     BNE bra_DBB5
bra_DBB3:
C - - - - - 0x01DBC3 07:DBB3: A9 00     LDA #$00
bra_DBB5:
C - - - - - 0x01DBC5 07:DBB5: 85 C8     STA ram_00C8
C - - - - - 0x01DBC7 07:DBB7: 68        PLA
C - - - - - 0x01DBC8 07:DBB8: A8        TAY
C - - - - - 0x01DBC9 07:DBB9: 60        RTS



sub_DBBA:
C - - - - - 0x01DBCA 07:DBBA: A5 5F     LDA ram_005F
C - - - - - 0x01DBCC 07:DBBC: 30 0D     BMI bra_DBCB
C - - - - - 0x01DBCE 07:DBBE: F0 0B     BEQ bra_DBCB
C - - - - - 0x01DBD0 07:DBC0: A9 32     LDA #$32
C - - - - - 0x01DBD2 07:DBC2: 85 CC     STA ram_00CC
C - - - - - 0x01DBD4 07:DBC4: 18        CLC
C - - - - - 0x01DBD5 07:DBC5: 69 1E     ADC #$1E
C - - - - - 0x01DBD7 07:DBC7: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DBDA 07:DBCA: 60        RTS
bra_DBCB:
C - - - - - 0x01DBDB 07:DBCB: A9 00     LDA #$00
C - - - - - 0x01DBDD 07:DBCD: 85 CC     STA ram_00CC
C - - - - - 0x01DBDF 07:DBCF: 60        RTS



sub_DBD0:
C - - - - - 0x01DBE0 07:DBD0: 8A        TXA
C - - - - - 0x01DBE1 07:DBD1: 48        PHA
C - - - - - 0x01DBE2 07:DBD2: 98        TYA
C - - - - - 0x01DBE3 07:DBD3: 48        PHA
C - - - - - 0x01DBE4 07:DBD4: E0 10     CPX #$10
C - - - - - 0x01DBE6 07:DBD6: D0 05     BNE bra_DBDD
C - - - - - 0x01DBE8 07:DBD8: A2 40     LDX #$40
C - - - - - 0x01DBEA 07:DBDA: 4C DF DB  JMP loc_DBDF    ; bzk optimize
bra_DBDD:
C - - - - - 0x01DBED 07:DBDD: A2 10     LDX #$10
loc_DBDF:
C D 2 - - - 0x01DBEF 07:DBDF: A9 00     LDA #$00
C - - - - - 0x01DBF1 07:DBE1: 85 C8     STA ram_00C8
C - - - - - 0x01DBF3 07:DBE3: BD 10 03  LDA ram_0310,X
C - - - - - 0x01DBF6 07:DBE6: 10 09     BPL bra_DBF1
C - - - - - 0x01DBF8 07:DBE8: A9 FF     LDA #$FF
C - - - - - 0x01DBFA 07:DBEA: 85 C8     STA ram_00C8
C - - - - - 0x01DBFC 07:DBEC: 8A        TXA
C - - - - - 0x01DBFD 07:DBED: 18        CLC
C - - - - - 0x01DBFE 07:DBEE: 69 10     ADC #$10
C - - - - - 0x01DC00 07:DBF0: AA        TAX
bra_DBF1:
C - - - - - 0x01DC01 07:DBF1: A0 00     LDY #$00
C - - - - - 0x01DC03 07:DBF3: 84 69     STY ram_0069
bra_DBF5_loop:
loc_DBF5_loop:
C - - - - - 0x01DC05 07:DBF5: B1 66     LDA (ram_0066),Y
C - - - - - 0x01DC07 07:DBF7: C9 FF     CMP #$FF
C - - - - - 0x01DC09 07:DBF9: F0 29     BEQ bra_DC24
C - - - - - 0x01DC0B 07:DBFB: C9 FE     CMP #$FE
C - - - - - 0x01DC0D 07:DBFD: F0 05     BEQ bra_DC04
C - - - - - 0x01DC0F 07:DBFF: DD 0A 05  CMP ram_050A,X
C - - - - - 0x01DC12 07:DC02: D0 15     BNE bra_DC19
bra_DC04:
C - - - - - 0x01DC14 07:DC04: C8        INY
C - - - - - 0x01DC15 07:DC05: B1 66     LDA (ram_0066),Y
C - - - - - 0x01DC17 07:DC07: DD 0B 03  CMP ram_030B,X
C - - - - - 0x01DC1A 07:DC0A: D0 0E     BNE bra_DC1A
C - - - - - 0x01DC1C 07:DC0C: C8        INY
C - - - - - 0x01DC1D 07:DC0D: B1 66     LDA (ram_0066),Y
C - - - - - 0x01DC1F 07:DC0F: 85 68     STA ram_0068
C - - - - - 0x01DC21 07:DC11: C8        INY
C - - - - - 0x01DC22 07:DC12: B1 66     LDA (ram_0066),Y
C - - - - - 0x01DC24 07:DC14: 85 69     STA ram_0069
C - - - - - 0x01DC26 07:DC16: 4C 24 DC  JMP loc_DC24
bra_DC19:
C - - - - - 0x01DC29 07:DC19: C8        INY
bra_DC1A:
C - - - - - 0x01DC2A 07:DC1A: C8        INY
C - - - - - 0x01DC2B 07:DC1B: C8        INY
C - - - - - 0x01DC2C 07:DC1C: C8        INY
C - - - - - 0x01DC2D 07:DC1D: D0 D6     BNE bra_DBF5_loop
- - - - - - 0x01DC2F 07:DC1F: E6 67     INC ram_0067
- - - - - - 0x01DC31 07:DC21: 4C F5 DB  JMP loc_DBF5_loop
bra_DC24:
loc_DC24:
C D 2 - - - 0x01DC34 07:DC24: 68        PLA
C - - - - - 0x01DC35 07:DC25: A8        TAY
C - - - - - 0x01DC36 07:DC26: 68        PLA
C - - - - - 0x01DC37 07:DC27: AA        TAX
C - - - - - 0x01DC38 07:DC28: 60        RTS



sub_DC29:
C - - - - - 0x01DC39 07:DC29: 98        TYA
C - - - - - 0x01DC3A 07:DC2A: 48        PHA
C - - - - - 0x01DC3B 07:DC2B: E0 10     CPX #$10
C - - - - - 0x01DC3D 07:DC2D: D0 05     BNE bra_DC34
C - - - - - 0x01DC3F 07:DC2F: A0 40     LDY #$40
C - - - - - 0x01DC41 07:DC31: 4C 36 DC  JMP loc_DC36    ; bzk optimize
bra_DC34:
C - - - - - 0x01DC44 07:DC34: A0 10     LDY #$10
loc_DC36:
C D 2 - - - 0x01DC46 07:DC36: A5 C8     LDA ram_00C8
C - - - - - 0x01DC48 07:DC38: C9 FF     CMP #$FF
C - - - - - 0x01DC4A 07:DC3A: D0 05     BNE bra_DC41
C - - - - - 0x01DC4C 07:DC3C: 98        TYA
C - - - - - 0x01DC4D 07:DC3D: 18        CLC
C - - - - - 0x01DC4E 07:DC3E: 69 10     ADC #$10
C - - - - - 0x01DC50 07:DC40: A8        TAY
bra_DC41:
C - - - - - 0x01DC51 07:DC41: 20 F6 DC  JSR sub_DCF6
C - - - - - 0x01DC54 07:DC44: A0 00     LDY #$00
loc_DC46_loop:
; !!! bzk original bug
; each table has to end with FF + pointer, like 0x015565 (do nothing?)
                                           ; or 0x0157C8 (default if nothing else fits)
; but some don't have this end token, and the code just goes on reading garbage data below
; I don't know how this affects the AI, but maybe it can be improved with this
C D 2 - - - 0x01DC56 07:DC46: B1 6A     LDA (ram_006A),Y
C - - - - - 0x01DC58 07:DC48: C9 FF     CMP #$FF
C - - - - - 0x01DC5A 07:DC4A: F0 17     BEQ bra_DC63_FF
C - - - - - 0x01DC5C 07:DC4C: A5 6C     LDA ram_006C
C - - - - - 0x01DC5E 07:DC4E: D1 6A     CMP (ram_006A),Y
C - - - - - 0x01DC60 07:DC50: 90 23     BCC bra_DC75    ; if <
C - - - - - 0x01DC62 07:DC52: C8        INY
C - - - - - 0x01DC63 07:DC53: D1 6A     CMP (ram_006A),Y
C - - - - - 0x01DC65 07:DC55: B0 1F     BCS bra_DC76    ; if >=
C - - - - - 0x01DC67 07:DC57: A5 6D     LDA ram_006D
C - - - - - 0x01DC69 07:DC59: C8        INY
C - - - - - 0x01DC6A 07:DC5A: D1 6A     CMP (ram_006A),Y
C - - - - - 0x01DC6C 07:DC5C: 90 19     BCC bra_DC77    ; if <
C - - - - - 0x01DC6E 07:DC5E: C8        INY
C - - - - - 0x01DC6F 07:DC5F: D1 6A     CMP (ram_006A),Y
C - - - - - 0x01DC71 07:DC61: B0 15     BCS bra_DC78    ; if >=
bra_DC63_FF:
C - - - - - 0x01DC73 07:DC63: C8        INY
C - - - - - 0x01DC74 07:DC64: B1 6A     LDA (ram_006A),Y
C - - - - - 0x01DC76 07:DC66: 85 6E     STA ram_006E
C - - - - - 0x01DC78 07:DC68: C8        INY
C - - - - - 0x01DC79 07:DC69: B1 6A     LDA (ram_006A),Y
C - - - - - 0x01DC7B 07:DC6B: 85 6F     STA ram_006F
C - - - - - 0x01DC7D 07:DC6D: F0 0F     BEQ bra_DC7E
C - - - - - 0x01DC7F 07:DC6F: 20 6C D9  JSR sub_D96C
C - - - - - 0x01DC82 07:DC72: 4C 7E DC  JMP loc_DC7E
bra_DC75:
C - - - - - 0x01DC85 07:DC75: C8        INY
bra_DC76:
C - - - - - 0x01DC86 07:DC76: C8        INY
bra_DC77:
C - - - - - 0x01DC87 07:DC77: C8        INY
bra_DC78:
C - - - - - 0x01DC88 07:DC78: C8        INY
C - - - - - 0x01DC89 07:DC79: C8        INY
C - - - - - 0x01DC8A 07:DC7A: C8        INY
C - - - - - 0x01DC8B 07:DC7B: 4C 46 DC  JMP loc_DC46_loop
bra_DC7E:
loc_DC7E:
C D 2 - - - 0x01DC8E 07:DC7E: 68        PLA
C - - - - - 0x01DC8F 07:DC7F: A8        TAY
C - - - - - 0x01DC90 07:DC80: 60        RTS



sub_DC81:
C - - - - - 0x01DC91 07:DC81: BD 05 04  LDA ram_0405,X
C - - - - - 0x01DC94 07:DC84: D0 01     BNE bra_DC87
- - - - - - 0x01DC96 07:DC86: 60        RTS
bra_DC87:
C - - - - - 0x01DC97 07:DC87: 98        TYA
C - - - - - 0x01DC98 07:DC88: 48        PHA
C - - - - - 0x01DC99 07:DC89: E0 10     CPX #$10
C - - - - - 0x01DC9B 07:DC8B: D0 05     BNE bra_DC92
C - - - - - 0x01DC9D 07:DC8D: A0 40     LDY #$40
C - - - - - 0x01DC9F 07:DC8F: 4C 94 DC  JMP loc_DC94
bra_DC92:
C - - - - - 0x01DCA2 07:DC92: A0 10     LDY #$10
loc_DC94:
C D 2 - - - 0x01DCA4 07:DC94: 20 F6 DC  JSR sub_DCF6
C - - - - - 0x01DCA7 07:DC97: A0 00     LDY #$00
loc_DC99_loop:
C D 2 - - - 0x01DCA9 07:DC99: B1 70     LDA (ram_0070),Y
C - - - - - 0x01DCAB 07:DC9B: C9 FF     CMP #$FF
C - - - - - 0x01DCAD 07:DC9D: F0 54     BEQ bra_DCF3
C - - - - - 0x01DCAF 07:DC9F: DD 01 05  CMP ram_0501,X
C - - - - - 0x01DCB2 07:DCA2: D0 2D     BNE bra_DCD1
C - - - - - 0x01DCB4 07:DCA4: C8        INY
C - - - - - 0x01DCB5 07:DCA5: B1 70     LDA (ram_0070),Y
C - - - - - 0x01DCB7 07:DCA7: F0 0E     BEQ bra_DCB7
C - - - - - 0x01DCB9 07:DCA9: 30 07     BMI bra_DCB2
C - - - - - 0x01DCBB 07:DCAB: BD 01 04  LDA ram_0401,X
C - - - - - 0x01DCBE 07:DCAE: 30 22     BMI bra_DCD2
C - - - - - 0x01DCC0 07:DCB0: 10 05     BPL bra_DCB7
bra_DCB2:
- - - - - - 0x01DCC2 07:DCB2: BD 01 04  LDA ram_0401,X
- - - - - - 0x01DCC5 07:DCB5: 10 1B     BPL bra_DCD2
bra_DCB7:
C - - - - - 0x01DCC7 07:DCB7: A5 6C     LDA ram_006C
C - - - - - 0x01DCC9 07:DCB9: C8        INY
C - - - - - 0x01DCCA 07:DCBA: D1 70     CMP (ram_0070),Y
C - - - - - 0x01DCCC 07:DCBC: 90 15     BCC bra_DCD3
C - - - - - 0x01DCCE 07:DCBE: C8        INY
C - - - - - 0x01DCCF 07:DCBF: D1 70     CMP (ram_0070),Y
C - - - - - 0x01DCD1 07:DCC1: B0 11     BCS bra_DCD4
C - - - - - 0x01DCD3 07:DCC3: A5 6D     LDA ram_006D
C - - - - - 0x01DCD5 07:DCC5: C8        INY
C - - - - - 0x01DCD6 07:DCC6: D1 70     CMP (ram_0070),Y
C - - - - - 0x01DCD8 07:DCC8: 90 0B     BCC bra_DCD5
C - - - - - 0x01DCDA 07:DCCA: C8        INY
C - - - - - 0x01DCDB 07:DCCB: D1 70     CMP (ram_0070),Y
C - - - - - 0x01DCDD 07:DCCD: B0 07     BCS bra_DCD6
C - - - - - 0x01DCDF 07:DCCF: 90 09     BCC bra_DCDA
bra_DCD1:
C - - - - - 0x01DCE1 07:DCD1: C8        INY
bra_DCD2:
C - - - - - 0x01DCE2 07:DCD2: C8        INY
bra_DCD3:
C - - - - - 0x01DCE3 07:DCD3: C8        INY
bra_DCD4:
C - - - - - 0x01DCE4 07:DCD4: C8        INY
bra_DCD5:
C - - - - - 0x01DCE5 07:DCD5: C8        INY
bra_DCD6:
C - - - - - 0x01DCE6 07:DCD6: C8        INY
C - - - - - 0x01DCE7 07:DCD7: 4C 99 DC  JMP loc_DC99_loop
bra_DCDA:
C - - - - - 0x01DCEA 07:DCDA: BD 01 05  LDA ram_0501,X
C - - - - - 0x01DCED 07:DCDD: 20 43 DD  JSR sub_DD43
C - - - - - 0x01DCF0 07:DCE0: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01DCF3 07:DCE3: C9 00     CMP #$00
C - - - - - 0x01DCF5 07:DCE5: D0 07     BNE bra_DCEE
C - - - - - 0x01DCF7 07:DCE7: BD 01 05  LDA ram_0501,X
C - - - - - 0x01DCFA 07:DCEA: C9 40     CMP #$40
C - - - - - 0x01DCFC 07:DCEC: F0 05     BEQ bra_DCF3
bra_DCEE:
C - - - - - 0x01DCFE 07:DCEE: A9 FF     LDA #$FF
C - - - - - 0x01DD00 07:DCF0: 9D 01 05  STA ram_0501,X
bra_DCF3:
C - - - - - 0x01DD03 07:DCF3: 68        PLA
C - - - - - 0x01DD04 07:DCF4: A8        TAY
C - - - - - 0x01DD05 07:DCF5: 60        RTS



sub_DCF6:
C - - - - - 0x01DD06 07:DCF6: BD 01 03  LDA ram_0301,X
C - - - - - 0x01DD09 07:DCF9: 29 40     AND #$40
C - - - - - 0x01DD0B 07:DCFB: F0 09     BEQ bra_DD06
C - - - - - 0x01DD0D 07:DCFD: BD 02 03  LDA ram_0302,X
C - - - - - 0x01DD10 07:DD00: 18        CLC
C - - - - - 0x01DD11 07:DD01: 69 07     ADC #$07
C - - - - - 0x01DD13 07:DD03: 4C 09 DD  JMP loc_DD09
bra_DD06:
C - - - - - 0x01DD16 07:DD06: BD 02 03  LDA ram_0302,X
loc_DD09:
C D 2 - - - 0x01DD19 07:DD09: 85 6C     STA ram_006C
C - - - - - 0x01DD1B 07:DD0B: B9 01 03  LDA ram_0301,Y
C - - - - - 0x01DD1E 07:DD0E: 29 40     AND #$40
C - - - - - 0x01DD20 07:DD10: F0 0D     BEQ bra_DD1F
C - - - - - 0x01DD22 07:DD12: B9 02 03  LDA ram_0302,Y
C - - - - - 0x01DD25 07:DD15: 18        CLC
C - - - - - 0x01DD26 07:DD16: 69 07     ADC #$07
C - - - - - 0x01DD28 07:DD18: 38        SEC
C - - - - - 0x01DD29 07:DD19: F9 0E 03  SBC ram_030E,Y
C - - - - - 0x01DD2C 07:DD1C: 4C 26 DD  JMP loc_DD26
bra_DD1F:
C - - - - - 0x01DD2F 07:DD1F: B9 02 03  LDA ram_0302,Y
C - - - - - 0x01DD32 07:DD22: 18        CLC
C - - - - - 0x01DD33 07:DD23: 79 0E 03  ADC ram_030E,Y
loc_DD26:
C D 2 - - - 0x01DD36 07:DD26: 38        SEC
C - - - - - 0x01DD37 07:DD27: E5 6C     SBC ram_006C
C - - - - - 0x01DD39 07:DD29: B0 05     BCS bra_DD30
C - - - - - 0x01DD3B 07:DD2B: 49 FF     EOR #$FF
C - - - - - 0x01DD3D 07:DD2D: 18        CLC
C - - - - - 0x01DD3E 07:DD2E: 69 01     ADC #$01
bra_DD30:
C - - - - - 0x01DD40 07:DD30: 85 6C     STA ram_006C
C - - - - - 0x01DD42 07:DD32: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01DD45 07:DD35: 38        SEC
C - - - - - 0x01DD46 07:DD36: FD 04 03  SBC ram_0304,X
C - - - - - 0x01DD49 07:DD39: B0 05     BCS bra_DD40
C - - - - - 0x01DD4B 07:DD3B: 49 FF     EOR #$FF
C - - - - - 0x01DD4D 07:DD3D: 18        CLC
C - - - - - 0x01DD4E 07:DD3E: 69 01     ADC #$01
bra_DD40:
C - - - - - 0x01DD50 07:DD40: 85 6D     STA ram_006D
C - - - - - 0x01DD52 07:DD42: 60        RTS



sub_DD43:
C - - - - - 0x01DD53 07:DD43: C9 0A     CMP #$0A
C - - - - - 0x01DD55 07:DD45: F0 04     BEQ bra_DD4B
C - - - - - 0x01DD57 07:DD47: C9 08     CMP #$08
C - - - - - 0x01DD59 07:DD49: D0 20     BNE bra_DD6B
bra_DD4B:
C - - - - - 0x01DD5B 07:DD4B: DD 0B 03  CMP ram_030B,X
C - - - - - 0x01DD5E 07:DD4E: D0 06     BNE bra_DD56
C - - - - - 0x01DD60 07:DD50: A9 0A     LDA #$0A
C - - - - - 0x01DD62 07:DD52: 9D 09 03  STA ram_0309,X
C - - - - - 0x01DD65 07:DD55: 60        RTS
bra_DD56:
C - - - - - 0x01DD66 07:DD56: 48        PHA
C - - - - - 0x01DD67 07:DD57: C9 0A     CMP #$0A
C - - - - - 0x01DD69 07:DD59: D0 06     BNE bra_DD61
C - - - - - 0x01DD6B 07:DD5B: 20 05 F1  JSR sub_F105
C - - - - - 0x01DD6E 07:DD5E: 4C 67 DD  JMP loc_DD67
bra_DD61:
C - - - - - 0x01DD71 07:DD61: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01DD74 07:DD64: 4C 67 DD  JMP loc_DD67    ; bzk optimize
loc_DD67:
C D 2 - - - 0x01DD77 07:DD67: 68        PLA
C - - - - - 0x01DD78 07:DD68: 4C A8 DD  JMP loc_DDA8
bra_DD6B:
C - - - - - 0x01DD7B 07:DD6B: C9 50     CMP #$50
C - - - - - 0x01DD7D 07:DD6D: D0 0E     BNE bra_DD7D
C - - - - - 0x01DD7F 07:DD6F: E0 10     CPX #$10
C - - - - - 0x01DD81 07:DD71: D0 04     BNE bra_DD77
C - - - - - 0x01DD83 07:DD73: A0 40     LDY #$40
C - - - - - 0x01DD85 07:DD75: D0 02     BNE bra_DD79
bra_DD77:
C - - - - - 0x01DD87 07:DD77: A0 10     LDY #$10
bra_DD79:
C - - - - - 0x01DD89 07:DD79: 20 34 D1  JSR sub_D134
C - - - - - 0x01DD8C 07:DD7C: 60        RTS
bra_DD7D:
C - - - - - 0x01DD8D 07:DD7D: C9 02     CMP #$02
C - - - - - 0x01DD8F 07:DD7F: D0 13     BNE bra_DD94
C - - - - - 0x01DD91 07:DD81: DD 0B 03  CMP ram_030B,X
C - - - - - 0x01DD94 07:DD84: D0 22     BNE bra_DDA8
C - - - - - 0x01DD96 07:DD86: 48        PHA
C - - - - - 0x01DD97 07:DD87: BD 00 03  LDA ram_0300,X
C - - - - - 0x01DD9A 07:DD8A: 29 40     AND #$40
C - - - - - 0x01DD9C 07:DD8C: F0 04     BEQ bra_DD92
C - - - - - 0x01DD9E 07:DD8E: 68        PLA
C - - - - - 0x01DD9F 07:DD8F: 4C A8 DD  JMP loc_DDA8
bra_DD92:
- - - - - - 0x01DDA2 07:DD92: 68        PLA
- - - - - - 0x01DDA3 07:DD93: 60        RTS
bra_DD94:
C - - - - - 0x01DDA4 07:DD94: C9 3E     CMP #$3E
C - - - - - 0x01DDA6 07:DD96: F0 04     BEQ bra_DD9C
C - - - - - 0x01DDA8 07:DD98: C9 3F     CMP #$3F
C - - - - - 0x01DDAA 07:DD9A: D0 0C     BNE bra_DDA8
bra_DD9C:
C - - - - - 0x01DDAC 07:DD9C: 48        PHA
C - - - - - 0x01DDAD 07:DD9D: BD 10 03  LDA ram_0310,X
C - - - - - 0x01DDB0 07:DDA0: 30 04     BMI bra_DDA6
C - - - - - 0x01DDB2 07:DDA2: 68        PLA
C - - - - - 0x01DDB3 07:DDA3: 4C A8 DD  JMP loc_DDA8
bra_DDA6:
C - - - - - 0x01DDB6 07:DDA6: 68        PLA
C - - - - - 0x01DDB7 07:DDA7: 60        RTS
bra_DDA8:
loc_DDA8:
C D 2 - - - 0x01DDB8 07:DDA8: 20 85 E8  JSR sub_E885
C - - - - - 0x01DDBB 07:DDAB: 60        RTS



sub_DDAC:
C - - - - - 0x01DDBC 07:DDAC: 20 4D F8  JSR sub_F84D
C - - - - - 0x01DDBF 07:DDAF: 8D 06 70  STA $7006
C - - - - - 0x01DDC2 07:DDB2: 20 7C E1  JSR sub_E17C
C - - - - - 0x01DDC5 07:DDB5: 20 0E E0  JSR sub_E00E
C - - - - - 0x01DDC8 07:DDB8: A2 00     LDX #$00
C - - - - - 0x01DDCA 07:DDBA: 20 D2 DE  JSR sub_DED2
C - - - - - 0x01DDCD 07:DDBD: A2 01     LDX #$01
C - - - - - 0x01DDCF 07:DDBF: 20 D2 DE  JSR sub_DED2
C - - - - - 0x01DDD2 07:DDC2: A2 02     LDX #$02
C - - - - - 0x01DDD4 07:DDC4: 20 D2 DE  JSR sub_DED2
C - - - - - 0x01DDD7 07:DDC7: A2 03     LDX #$03
C - - - - - 0x01DDD9 07:DDC9: 20 D2 DE  JSR sub_DED2
C - - - - - 0x01DDDC 07:DDCC: A2 00     LDX #$00
C - - - - - 0x01DDDE 07:DDCE: 20 F1 DD  JSR sub_DDF1
C - - - - - 0x01DDE1 07:DDD1: A2 01     LDX #$01
C - - - - - 0x01DDE3 07:DDD3: 20 F1 DD  JSR sub_DDF1
C - - - - - 0x01DDE6 07:DDD6: A9 02     LDA #$02
C - - - - - 0x01DDE8 07:DDD8: 85 10     STA ram_0010
C - - - - - 0x01DDEA 07:DDDA: 20 D0 FC  JSR sub_FCD0
bra_DDDD:
C - - - - - 0x01DDED 07:DDDD: A5 10     LDA ram_0010
C - - - - - 0x01DDEF 07:DDDF: D0 FC     BNE bra_DDDD
C - - - - - 0x01DDF1 07:DDE1: 20 4D F8  JSR sub_F84D
C - - - - - 0x01DDF4 07:DDE4: 20 B5 DF  JSR sub_DFB5
C - - - - - 0x01DDF7 07:DDE7: 20 D0 FC  JSR sub_FCD0
bra_DDEA:
C - - - - - 0x01DDFA 07:DDEA: A5 B6     LDA ram_00B6
C - - - - - 0x01DDFC 07:DDEC: C9 70     CMP #$70
C - - - - - 0x01DDFE 07:DDEE: F0 FA     BEQ bra_DDEA
C - - - - - 0x01DE00 07:DDF0: 60        RTS



sub_DDF1:
C - - - - - 0x01DE01 07:DDF1: A9 30     LDA #$30
C - - - - - 0x01DE03 07:DDF3: 85 D5     STA ram_00D5
bra_DDF5_loop:
C - - - - - 0x01DE05 07:DDF5: A5 D5     LDA ram_00D5
C - - - - - 0x01DE07 07:DDF7: 9D 00 70  STA $7000,X
; !!! possible hacking protection table reading
C - - - - - 0x01DE0A 07:DDFA: BD AB DE  LDA tbl_DEAB,X
C - - - - - 0x01DE0D 07:DDFD: 85 07     STA ram_0007
C - - - - - 0x01DE0F 07:DDFF: A9 00     LDA #$00
C - - - - - 0x01DE11 07:DE01: 85 06     STA ram_0006
C - - - - - 0x01DE13 07:DE03: 85 D6     STA ram_00D6
C - - - - - 0x01DE15 07:DE05: A8        TAY
bra_DE06:
C - - - - - 0x01DE16 07:DE06: B1 06     LDA (ram_0006),Y
C - - - - - 0x01DE18 07:DE08: 45 D6     EOR ram_00D6
C - - - - - 0x01DE1A 07:DE0A: 85 D6     STA ram_00D6
C - - - - - 0x01DE1C 07:DE0C: C8        INY
C - - - - - 0x01DE1D 07:DE0D: D0 F7     BNE bra_DE06
C - - - - - 0x01DE1F 07:DE0F: A5 D5     LDA ram_00D5
C - - - - - 0x01DE21 07:DE11: 38        SEC
C - - - - - 0x01DE22 07:DE12: E9 30     SBC #$30
C - - - - - 0x01DE24 07:DE14: A8        TAY
C - - - - - 0x01DE25 07:DE15: A5 D6     LDA ram_00D6
C - - - - - 0x01DE27 07:DE17: D9 00 FF  CMP tbl_FF00,Y
C - - - - - 0x01DE2A 07:DE1A: F0 06     BEQ bra_DE22
- - - - - - 0x01DE2C 07:DE1C: E8        INX
- - - - - - 0x01DE2D 07:DE1D: 86 D4     STX ram_00D4
- - - - - - 0x01DE2F 07:DE1F: 4C 2F DE  JMP loc_DE2F    ; bzk optimize, X is 00 or 01 at the start
bra_DE22:
C - - - - - 0x01DE32 07:DE22: E6 D5     INC ram_00D5
C - - - - - 0x01DE34 07:DE24: A5 D5     LDA ram_00D5
C - - - - - 0x01DE36 07:DE26: C9 3E     CMP #$3E
C - - - - - 0x01DE38 07:DE28: D0 CB     BNE bra_DDF5_loop
C - - - - - 0x01DE3A 07:DE2A: A9 00     LDA #$00
C - - - - - 0x01DE3C 07:DE2C: 85 D4     STA ram_00D4
C - - - - - 0x01DE3E 07:DE2E: E8        INX
loc_DE2F:
C - - - - - 0x01DE3F 07:DE2F: 8A        TXA
C - - - - - 0x01DE40 07:DE30: 18        CLC
C - - - - - 0x01DE41 07:DE31: 69 0A     ADC #$0A
C - - - - - 0x01DE43 07:DE33: 85 D5     STA ram_00D5
C - - - - - 0x01DE45 07:DE35: A5 D4     LDA ram_00D4
C - - - - - 0x01DE47 07:DE37: D0 1A     BNE bra_DE53
C - - - - - 0x01DE49 07:DE39: A5 D5     LDA ram_00D5
C - - - - - 0x01DE4B 07:DE3B: 85 B0     STA ram_00B0
C - - - - - 0x01DE4D 07:DE3D: A9 05     LDA #$05
C - - - - - 0x01DE4F 07:DE3F: 85 B1     STA ram_00B1
C - - - - - 0x01DE51 07:DE41: A9 12     LDA #$12
C - - - - - 0x01DE53 07:DE43: 85 B2     STA ram_00B2
C - - - - - 0x01DE55 07:DE45: A9 AD     LDA #< tbl_DEAD
C - - - - - 0x01DE57 07:DE47: 85 AE     STA ram_00AE
C - - - - - 0x01DE59 07:DE49: A9 DE     LDA #> tbl_DEAD
C - - - - - 0x01DE5B 07:DE4B: 85 AF     STA ram_00AF
C - - - - - 0x01DE5D 07:DE4D: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01DE60 07:DE50: 4C 8A DE  JMP loc_DE8A
bra_DE53:
- - - - - - 0x01DE63 07:DE53: A5 D5     LDA ram_00D5
- - - - - - 0x01DE65 07:DE55: 85 B0     STA ram_00B0
- - - - - - 0x01DE67 07:DE57: A9 05     LDA #$05
- - - - - - 0x01DE69 07:DE59: 85 B1     STA ram_00B1
- - - - - - 0x01DE6B 07:DE5B: A9 13     LDA #$13
- - - - - - 0x01DE6D 07:DE5D: 85 B2     STA ram_00B2
- - - - - - 0x01DE6F 07:DE5F: A9 BF     LDA #< tbl_DEBF
- - - - - - 0x01DE71 07:DE61: 85 AE     STA ram_00AE
- - - - - - 0x01DE73 07:DE63: A9 DE     LDA #> tbl_DEBF
- - - - - - 0x01DE75 07:DE65: 85 AF     STA ram_00AF
- - - - - - 0x01DE77 07:DE67: 20 9D FF  JSR sub_FF9D
- - - - - - 0x01DE7A 07:DE6A: 84 A5     STY ram_00A5
- - - - - - 0x01DE7C 07:DE6C: A9 00     LDA #$00
- - - - - - 0x01DE7E 07:DE6E: 85 A6     STA ram_00A6
- - - - - - 0x01DE80 07:DE70: 20 53 FF  JSR sub_FF53
- - - - - - 0x01DE83 07:DE73: A5 D5     LDA ram_00D5
- - - - - - 0x01DE85 07:DE75: 85 B0     STA ram_00B0
- - - - - - 0x01DE87 07:DE77: A9 1A     LDA #$1A
- - - - - - 0x01DE89 07:DE79: 85 B1     STA ram_00B1
- - - - - - 0x01DE8B 07:DE7B: A9 02     LDA #$02
- - - - - - 0x01DE8D 07:DE7D: 85 B2     STA ram_00B2
- - - - - - 0x01DE8F 07:DE7F: A9 AA     LDA #$AA
- - - - - - 0x01DE91 07:DE81: 85 AE     STA ram_00AE
- - - - - - 0x01DE93 07:DE83: A9 00     LDA #$00
- - - - - - 0x01DE95 07:DE85: 85 AF     STA ram_00AF
- - - - - - 0x01DE97 07:DE87: 20 9D FF  JSR sub_FF9D
loc_DE8A:
C D 2 - - - 0x01DE9A 07:DE8A: 86 A5     STX ram_00A5
C - - - - - 0x01DE9C 07:DE8C: A9 00     LDA #$00
C - - - - - 0x01DE9E 07:DE8E: 85 A6     STA ram_00A6
C - - - - - 0x01DEA0 07:DE90: 20 53 FF  JSR sub_FF53
C - - - - - 0x01DEA3 07:DE93: A5 D5     LDA ram_00D5
C - - - - - 0x01DEA5 07:DE95: 85 B0     STA ram_00B0
C - - - - - 0x01DEA7 07:DE97: A9 0F     LDA #$0F
C - - - - - 0x01DEA9 07:DE99: 85 B1     STA ram_00B1
C - - - - - 0x01DEAB 07:DE9B: A9 01     LDA #$01
C - - - - - 0x01DEAD 07:DE9D: 85 B2     STA ram_00B2
C - - - - - 0x01DEAF 07:DE9F: A9 AB     LDA #$AB
C - - - - - 0x01DEB1 07:DEA1: 85 AE     STA ram_00AE
C - - - - - 0x01DEB3 07:DEA3: A9 00     LDA #$00
C - - - - - 0x01DEB5 07:DEA5: 85 AF     STA ram_00AF
C - - - - - 0x01DEB7 07:DEA7: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01DEBA 07:DEAA: 60        RTS



tbl_DEAB:
- D 2 - - - 0x01DEBB 07:DEAB: 80        .byte $80   ; 
- D 2 - - - 0x01DEBC 07:DEAC: A0        .byte $A0   ; 



tbl_DEAD:
- D 2 - I - 0x01DEBD 07:DEAD: 50        .byte $50   ; 
- D 2 - I - 0x01DEBE 07:DEAE: 52        .byte $52   ; 
- D 2 - I - 0x01DEBF 07:DEAF: 4F        .byte $4F   ; 
- D 2 - I - 0x01DEC0 07:DEB0: 47        .byte $47   ; 
- D 2 - I - 0x01DEC1 07:DEB1: 5C        .byte $5C   ; 
- D 2 - I - 0x01DEC2 07:DEB2: 42        .byte $42   ; 
- D 2 - I - 0x01DEC3 07:DEB3: 41        .byte $41   ; 
- D 2 - I - 0x01DEC4 07:DEB4: 4E        .byte $4E   ; 
- D 2 - I - 0x01DEC5 07:DEB5: 4B        .byte $4B   ; 
- D 2 - I - 0x01DEC6 07:DEB6: 5C        .byte $5C   ; 
- D 2 - I - 0x01DEC7 07:DEB7: 5C        .byte $5C   ; 
- D 2 - I - 0x01DEC8 07:DEB8: 5C        .byte $5C   ; 
- D 2 - I - 0x01DEC9 07:DEB9: 3D        .byte $3D   ; 
- D 2 - I - 0x01DECA 07:DEBA: 3D        .byte $3D   ; 
- D 2 - I - 0x01DECB 07:DEBB: 3E        .byte $3E   ; 
- D 2 - I - 0x01DECC 07:DEBC: 5C        .byte $5C   ; 
- D 2 - I - 0x01DECD 07:DEBD: 4F        .byte $4F   ; 
- D 2 - I - 0x01DECE 07:DEBE: 4B        .byte $4B   ; 



tbl_DEBF:
- - - - - - 0x01DECF 07:DEBF: 50        .byte $50   ; 
- - - - - - 0x01DED0 07:DEC0: 52        .byte $52   ; 
- - - - - - 0x01DED1 07:DEC1: 4F        .byte $4F   ; 
- - - - - - 0x01DED2 07:DEC2: 47        .byte $47   ; 
- - - - - - 0x01DED3 07:DEC3: 5C        .byte $5C   ; 
- - - - - - 0x01DED4 07:DEC4: 42        .byte $42   ; 
- - - - - - 0x01DED5 07:DEC5: 41        .byte $41   ; 
- - - - - - 0x01DED6 07:DEC6: 4E        .byte $4E   ; 
- - - - - - 0x01DED7 07:DEC7: 4B        .byte $4B   ; 
- - - - - - 0x01DED8 07:DEC8: 5C        .byte $5C   ; 
- - - - - - 0x01DED9 07:DEC9: 5C        .byte $5C   ; 
- - - - - - 0x01DEDA 07:DECA: 5C        .byte $5C   ; 
- - - - - - 0x01DEDB 07:DECB: 3D        .byte $3D   ; 
- - - - - - 0x01DEDC 07:DECC: 3D        .byte $3D   ; 
- - - - - - 0x01DEDD 07:DECD: 3E        .byte $3E   ; 
- - - - - - 0x01DEDE 07:DECE: 5C        .byte $5C   ; 
- - - - - - 0x01DEDF 07:DECF: 42        .byte $42   ; 
- - - - - - 0x01DEE0 07:DED0: 41        .byte $41   ; 
- - - - - - 0x01DEE1 07:DED1: 44        .byte $44   ; 



sub_DED2:
C - - - - - 0x01DEE2 07:DED2: A0 00     LDY #$00
bra_DED4:
C - - - - - 0x01DEE4 07:DED4: 98        TYA
C - - - - - 0x01DEE5 07:DED5: 9D 00 60  STA $6000,X
C - - - - - 0x01DEE8 07:DED8: BD 8C DF  LDA tbl_DF8C_ppu_hi,X
C - - - - - 0x01DEEB 07:DEDB: 8D 06 20  STA $2006
C - - - - - 0x01DEEE 07:DEDE: A9 00     LDA #$00
C - - - - - 0x01DEF0 07:DEE0: 8D 06 20  STA $2006
C - - - - - 0x01DEF3 07:DEE3: AD 07 20  LDA $2007
C - - - - - 0x01DEF6 07:DEE6: A9 00     LDA #$00
C - - - - - 0x01DEF8 07:DEE8: 85 D6     STA ram_00D6
C - - - - - 0x01DEFA 07:DEEA: 85 D5     STA ram_00D5
bra_DEEC:
C - - - - - 0x01DEFC 07:DEEC: AD 07 20  LDA $2007
C - - - - - 0x01DEFF 07:DEEF: 45 D6     EOR ram_00D6
C - - - - - 0x01DF01 07:DEF1: 85 D6     STA ram_00D6
C - - - - - 0x01DF03 07:DEF3: E6 D5     INC ram_00D5
C - - - - - 0x01DF05 07:DEF5: A5 D5     LDA ram_00D5
C - - - - - 0x01DF07 07:DEF7: C9 10     CMP #$10
C - - - - - 0x01DF09 07:DEF9: D0 F1     BNE bra_DEEC
C - - - - - 0x01DF0B 07:DEFB: A5 D6     LDA ram_00D6
C - - - - - 0x01DF0D 07:DEFD: D9 00 FE  CMP tbl_FE00,Y
C - - - - - 0x01DF10 07:DF00: F0 06     BEQ bra_DF08
C - - - - - 0x01DF12 07:DF02: E8        INX
C - - - - - 0x01DF13 07:DF03: 86 D4     STX ram_00D4
C - - - - - 0x01DF15 07:DF05: 4C 10 DF  JMP loc_DF10
bra_DF08:
C - - - - - 0x01DF18 07:DF08: C8        INY
C - - - - - 0x01DF19 07:DF09: D0 C9     BNE bra_DED4
- - - - - - 0x01DF1B 07:DF0B: A9 00     LDA #$00
- - - - - - 0x01DF1D 07:DF0D: 85 D4     STA ram_00D4
- - - - - - 0x01DF1F 07:DF0F: E8        INX
loc_DF10:
C D 2 - - - 0x01DF20 07:DF10: 8A        TXA
C - - - - - 0x01DF21 07:DF11: 18        CLC
C - - - - - 0x01DF22 07:DF12: 69 05     ADC #$05
C - - - - - 0x01DF24 07:DF14: 85 D5     STA ram_00D5
C - - - - - 0x01DF26 07:DF16: A5 D4     LDA ram_00D4
C - - - - - 0x01DF28 07:DF18: D0 1A     BNE bra_DF34
- - - - - - 0x01DF2A 07:DF1A: A5 D5     LDA ram_00D5
- - - - - - 0x01DF2C 07:DF1C: 85 B0     STA ram_00B0
- - - - - - 0x01DF2E 07:DF1E: A9 05     LDA #$05
- - - - - - 0x01DF30 07:DF20: 85 B1     STA ram_00B1
- - - - - - 0x01DF32 07:DF22: A9 12     LDA #$12
- - - - - - 0x01DF34 07:DF24: 85 B2     STA ram_00B2
- - - - - - 0x01DF36 07:DF26: A9 90     LDA #< tbl_DF90
- - - - - - 0x01DF38 07:DF28: 85 AE     STA ram_00AE
- - - - - - 0x01DF3A 07:DF2A: A9 DF     LDA #> tbl_DF90
- - - - - - 0x01DF3C 07:DF2C: 85 AF     STA ram_00AF
- - - - - - 0x01DF3E 07:DF2E: 20 9D FF  JSR sub_FF9D
- - - - - - 0x01DF41 07:DF31: 4C 6B DF  JMP loc_DF6B
bra_DF34:
C - - - - - 0x01DF44 07:DF34: A5 D5     LDA ram_00D5
C - - - - - 0x01DF46 07:DF36: 85 B0     STA ram_00B0
C - - - - - 0x01DF48 07:DF38: A9 05     LDA #$05
C - - - - - 0x01DF4A 07:DF3A: 85 B1     STA ram_00B1
C - - - - - 0x01DF4C 07:DF3C: A9 13     LDA #$13
C - - - - - 0x01DF4E 07:DF3E: 85 B2     STA ram_00B2
C - - - - - 0x01DF50 07:DF40: A9 A2     LDA #< tbl_DFA2
C - - - - - 0x01DF52 07:DF42: 85 AE     STA ram_00AE
C - - - - - 0x01DF54 07:DF44: A9 DF     LDA #> tbl_DFA2
C - - - - - 0x01DF56 07:DF46: 85 AF     STA ram_00AF
C - - - - - 0x01DF58 07:DF48: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01DF5B 07:DF4B: 84 A5     STY ram_00A5
C - - - - - 0x01DF5D 07:DF4D: A9 00     LDA #$00
C - - - - - 0x01DF5F 07:DF4F: 85 A6     STA ram_00A6
C - - - - - 0x01DF61 07:DF51: 20 53 FF  JSR sub_FF53
C - - - - - 0x01DF64 07:DF54: A5 D5     LDA ram_00D5
C - - - - - 0x01DF66 07:DF56: 85 B0     STA ram_00B0
C - - - - - 0x01DF68 07:DF58: A9 1A     LDA #$1A
C - - - - - 0x01DF6A 07:DF5A: 85 B1     STA ram_00B1
C - - - - - 0x01DF6C 07:DF5C: A9 03     LDA #$03
C - - - - - 0x01DF6E 07:DF5E: 85 B2     STA ram_00B2
C - - - - - 0x01DF70 07:DF60: A9 A9     LDA #$A9
C - - - - - 0x01DF72 07:DF62: 85 AE     STA ram_00AE
C - - - - - 0x01DF74 07:DF64: A9 00     LDA #$00
C - - - - - 0x01DF76 07:DF66: 85 AF     STA ram_00AF
C - - - - - 0x01DF78 07:DF68: 20 9D FF  JSR sub_FF9D
loc_DF6B:
C - - - - - 0x01DF7B 07:DF6B: 86 A5     STX ram_00A5
C - - - - - 0x01DF7D 07:DF6D: A9 00     LDA #$00
C - - - - - 0x01DF7F 07:DF6F: 85 A6     STA ram_00A6
C - - - - - 0x01DF81 07:DF71: 20 53 FF  JSR sub_FF53
C - - - - - 0x01DF84 07:DF74: A5 D5     LDA ram_00D5
C - - - - - 0x01DF86 07:DF76: 85 B0     STA ram_00B0
C - - - - - 0x01DF88 07:DF78: A9 0F     LDA #$0F
C - - - - - 0x01DF8A 07:DF7A: 85 B1     STA ram_00B1
C - - - - - 0x01DF8C 07:DF7C: A9 01     LDA #$01
C - - - - - 0x01DF8E 07:DF7E: 85 B2     STA ram_00B2
C - - - - - 0x01DF90 07:DF80: A9 AB     LDA #$AB
C - - - - - 0x01DF92 07:DF82: 85 AE     STA ram_00AE
C - - - - - 0x01DF94 07:DF84: A9 00     LDA #$00
C - - - - - 0x01DF96 07:DF86: 85 AF     STA ram_00AF
C - - - - - 0x01DF98 07:DF88: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01DF9B 07:DF8B: 60        RTS



tbl_DF8C_ppu_hi:
- D 2 - - - 0x01DF9C 07:DF8C: 04        .byte > $0400   ; 
- D 2 - - - 0x01DF9D 07:DF8D: 0C        .byte > $0C00   ; 
- D 2 - - - 0x01DF9E 07:DF8E: 14        .byte > $1400   ; 
- D 2 - - - 0x01DF9F 07:DF8F: 1C        .byte > $1C00   ; 



tbl_DF90:
- - - - - - 0x01DFA0 07:DF90: 43        .byte $43   ; 
- - - - - - 0x01DFA1 07:DF91: 48        .byte $48   ; 
- - - - - - 0x01DFA2 07:DF92: 41        .byte $41   ; 
- - - - - - 0x01DFA3 07:DF93: 52        .byte $52   ; 
- - - - - - 0x01DFA4 07:DF94: 5C        .byte $5C   ; 
- - - - - - 0x01DFA5 07:DF95: 42        .byte $42   ; 
- - - - - - 0x01DFA6 07:DF96: 41        .byte $41   ; 
- - - - - - 0x01DFA7 07:DF97: 4E        .byte $4E   ; 
- - - - - - 0x01DFA8 07:DF98: 4B        .byte $4B   ; 
- - - - - - 0x01DFA9 07:DF99: 5C        .byte $5C   ; 
- - - - - - 0x01DFAA 07:DF9A: 5C        .byte $5C   ; 
- - - - - - 0x01DFAB 07:DF9B: 5C        .byte $5C   ; 
- - - - - - 0x01DFAC 07:DF9C: 3D        .byte $3D   ; 
- - - - - - 0x01DFAD 07:DF9D: 3D        .byte $3D   ; 
- - - - - - 0x01DFAE 07:DF9E: 3E        .byte $3E   ; 
- - - - - - 0x01DFAF 07:DF9F: 5C        .byte $5C   ; 
- - - - - - 0x01DFB0 07:DFA0: 4F        .byte $4F   ; 
- - - - - - 0x01DFB1 07:DFA1: 4B        .byte $4B   ; 



tbl_DFA2:
- D 2 - I - 0x01DFB2 07:DFA2: 43        .byte $43   ; 
- D 2 - I - 0x01DFB3 07:DFA3: 48        .byte $48   ; 
- D 2 - I - 0x01DFB4 07:DFA4: 41        .byte $41   ; 
- D 2 - I - 0x01DFB5 07:DFA5: 52        .byte $52   ; 
- D 2 - I - 0x01DFB6 07:DFA6: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFB7 07:DFA7: 42        .byte $42   ; 
- D 2 - I - 0x01DFB8 07:DFA8: 41        .byte $41   ; 
- D 2 - I - 0x01DFB9 07:DFA9: 4E        .byte $4E   ; 
- D 2 - I - 0x01DFBA 07:DFAA: 4B        .byte $4B   ; 
- D 2 - I - 0x01DFBB 07:DFAB: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFBC 07:DFAC: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFBD 07:DFAD: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFBE 07:DFAE: 3D        .byte $3D   ; 
- D 2 - I - 0x01DFBF 07:DFAF: 3D        .byte $3D   ; 
- D 2 - I - 0x01DFC0 07:DFB0: 3E        .byte $3E   ; 
- D 2 - I - 0x01DFC1 07:DFB1: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFC2 07:DFB2: 42        .byte $42   ; 
- D 2 - I - 0x01DFC3 07:DFB3: 41        .byte $41   ; 
- D 2 - I - 0x01DFC4 07:DFB4: 44        .byte $44   ; 



sub_DFB5:
C - - - - - 0x01DFC5 07:DFB5: A5 CD     LDA ram_00CD
C - - - - - 0x01DFC7 07:DFB7: F0 18     BEQ bra_DFD1
C - - - - - 0x01DFC9 07:DFB9: A9 11     LDA #$11
C - - - - - 0x01DFCB 07:DFBB: 85 B0     STA ram_00B0
C - - - - - 0x01DFCD 07:DFBD: A9 05     LDA #$05
C - - - - - 0x01DFCF 07:DFBF: 85 B1     STA ram_00B1
C - - - - - 0x01DFD1 07:DFC1: A9 12     LDA #$12
C - - - - - 0x01DFD3 07:DFC3: 85 B2     STA ram_00B2
C - - - - - 0x01DFD5 07:DFC5: A9 E9     LDA #< tbl_DFE9
C - - - - - 0x01DFD7 07:DFC7: 85 AE     STA ram_00AE
C - - - - - 0x01DFD9 07:DFC9: A9 DF     LDA #> tbl_DFE9
C - - - - - 0x01DFDB 07:DFCB: 85 AF     STA ram_00AF
C - - - - - 0x01DFDD 07:DFCD: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01DFE0 07:DFD0: 60        RTS
bra_DFD1:
- - - - - - 0x01DFE1 07:DFD1: A9 11     LDA #$11
- - - - - - 0x01DFE3 07:DFD3: 85 B0     STA ram_00B0
- - - - - - 0x01DFE5 07:DFD5: A9 05     LDA #$05
- - - - - - 0x01DFE7 07:DFD7: 85 B1     STA ram_00B1
- - - - - - 0x01DFE9 07:DFD9: A9 13     LDA #$13
- - - - - - 0x01DFEB 07:DFDB: 85 B2     STA ram_00B2
- - - - - - 0x01DFED 07:DFDD: A9 FB     LDA #< tbl_DFFB
- - - - - - 0x01DFEF 07:DFDF: 85 AE     STA ram_00AE
- - - - - - 0x01DFF1 07:DFE1: A9 DF     LDA #> tbl_DFFB
- - - - - - 0x01DFF3 07:DFE3: 85 AF     STA ram_00AF
- - - - - - 0x01DFF5 07:DFE5: 20 9D FF  JSR sub_FF9D
- - - - - - 0x01DFF8 07:DFE8: 60        RTS



tbl_DFE9:
- D 2 - I - 0x01DFF9 07:DFE9: 49        .byte $49   ; 
- D 2 - I - 0x01DFFA 07:DFEA: 52        .byte $52   ; 
- D 2 - I - 0x01DFFB 07:DFEB: 51        .byte $51   ; 
- D 2 - I - 0x01DFFC 07:DFEC: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFFD 07:DFED: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFFE 07:DFEE: 5C        .byte $5C   ; 
- D 2 - I - 0x01DFFF 07:DFEF: 5C        .byte $5C   ; 
- D 2 - I - 0x01E000 07:DFF0: 5C        .byte $5C   ; 
- D 2 - I - 0x01E001 07:DFF1: 5C        .byte $5C   ; 
- D 2 - I - 0x01E002 07:DFF2: 5C        .byte $5C   ; 
- D 2 - I - 0x01E003 07:DFF3: 5C        .byte $5C   ; 
- D 2 - I - 0x01E004 07:DFF4: 5C        .byte $5C   ; 
- D 2 - I - 0x01E005 07:DFF5: 3D        .byte $3D   ; 
- D 2 - I - 0x01E006 07:DFF6: 3D        .byte $3D   ; 
- D 2 - I - 0x01E007 07:DFF7: 3E        .byte $3E   ; 
- D 2 - I - 0x01E008 07:DFF8: 5C        .byte $5C   ; 
- D 2 - I - 0x01E009 07:DFF9: 4F        .byte $4F   ; 
- D 2 - I - 0x01E00A 07:DFFA: 4B        .byte $4B   ; 



tbl_DFFB:
- - - - - - 0x01E00B 07:DFFB: 49        .byte $49   ; 
- - - - - - 0x01E00C 07:DFFC: 52        .byte $52   ; 
- - - - - - 0x01E00D 07:DFFD: 51        .byte $51   ; 
- - - - - - 0x01E00E 07:DFFE: 5C        .byte $5C   ; 
- - - - - - 0x01E00F 07:DFFF: 5C        .byte $5C   ; 
- - - - - - 0x01E010 07:E000: 5C        .byte $5C   ; 
- - - - - - 0x01E011 07:E001: 5C        .byte $5C   ; 
- - - - - - 0x01E012 07:E002: 5C        .byte $5C   ; 
- - - - - - 0x01E013 07:E003: 5C        .byte $5C   ; 
- - - - - - 0x01E014 07:E004: 5C        .byte $5C   ; 
- - - - - - 0x01E015 07:E005: 5C        .byte $5C   ; 
- - - - - - 0x01E016 07:E006: 5C        .byte $5C   ; 
- - - - - - 0x01E017 07:E007: 3D        .byte $3D   ; 
- - - - - - 0x01E018 07:E008: 3D        .byte $3D   ; 
- - - - - - 0x01E019 07:E009: 3E        .byte $3E   ; 
- - - - - - 0x01E01A 07:E00A: 5C        .byte $5C   ; 
- - - - - - 0x01E01B 07:E00B: 42        .byte $42   ; 
- - - - - - 0x01E01C 07:E00C: 41        .byte $41   ; 
- - - - - - 0x01E01D 07:E00D: 44        .byte $44   ; 



sub_E00E:
C - - - - - 0x01E01E 07:E00E: 8D 46 70  STA $7046
C - - - - - 0x01E021 07:E011: A9 20     LDA #> $2000
C - - - - - 0x01E023 07:E013: 8D 06 20  STA $2006
C - - - - - 0x01E026 07:E016: A9 00     LDA #< $2000
C - - - - - 0x01E028 07:E018: 8D 06 20  STA $2006
C - - - - - 0x01E02B 07:E01B: A9 55     LDA #$55
C - - - - - 0x01E02D 07:E01D: 20 9F E1  JSR sub_E19F
C - - - - - 0x01E030 07:E020: A9 28     LDA #> $2800
C - - - - - 0x01E032 07:E022: 8D 06 20  STA $2006
C - - - - - 0x01E035 07:E025: A9 00     LDA #< $2800
C - - - - - 0x01E037 07:E027: 8D 06 20  STA $2006
C - - - - - 0x01E03A 07:E02A: A9 AA     LDA #$AA
C - - - - - 0x01E03C 07:E02C: 20 9F E1  JSR sub_E19F
C - - - - - 0x01E03F 07:E02F: A9 20     LDA #> $2000
C - - - - - 0x01E041 07:E031: 8D 06 20  STA $2006
C - - - - - 0x01E044 07:E034: A9 00     LDA #< $2000
C - - - - - 0x01E046 07:E036: 8D 06 20  STA $2006
C - - - - - 0x01E049 07:E039: A9 55     LDA #$55
C - - - - - 0x01E04B 07:E03B: 20 60 E1  JSR sub_E160
C - - - - - 0x01E04E 07:E03E: C9 00     CMP #$00    ; bzk optimize
C - - - - - 0x01E050 07:E040: D0 18     BNE bra_E05A
- - - - - - 0x01E052 07:E042: A9 28     LDA #> $2800
- - - - - - 0x01E054 07:E044: 8D 06 20  STA $2006
- - - - - - 0x01E057 07:E047: A9 00     LDA #< $2800
- - - - - - 0x01E059 07:E049: 8D 06 20  STA $2006
- - - - - - 0x01E05C 07:E04C: A9 AA     LDA #$AA
- - - - - - 0x01E05E 07:E04E: 20 60 E1  JSR sub_E160
- - - - - - 0x01E061 07:E051: C9 00     CMP #$00    ; bzk optimize
- - - - - - 0x01E063 07:E053: D0 05     BNE bra_E05A
- - - - - - 0x01E065 07:E055: A9 00     LDA #$00    ; bzk optimize
- - - - - - 0x01E067 07:E057: 4C 5C E0  JMP loc_E05C
bra_E05A:
C - - - - - 0x01E06A 07:E05A: A9 01     LDA #$01
loc_E05C:
C - - - - - 0x01E06C 07:E05C: 85 D4     STA ram_00D4
C - - - - - 0x01E06E 07:E05E: 8D 56 70  STA $7056
C - - - - - 0x01E071 07:E061: A9 20     LDA #> $2000
C - - - - - 0x01E073 07:E063: 8D 06 20  STA $2006
C - - - - - 0x01E076 07:E066: A9 00     LDA #< $2000
C - - - - - 0x01E078 07:E068: 8D 06 20  STA $2006
C - - - - - 0x01E07B 07:E06B: A9 55     LDA #$55
C - - - - - 0x01E07D 07:E06D: 20 9F E1  JSR sub_E19F
C - - - - - 0x01E080 07:E070: A9 24     LDA #> $2400
C - - - - - 0x01E082 07:E072: 8D 06 20  STA $2006
C - - - - - 0x01E085 07:E075: A9 00     LDA #< $2400
C - - - - - 0x01E087 07:E077: 8D 06 20  STA $2006
C - - - - - 0x01E08A 07:E07A: A9 AA     LDA #$AA
C - - - - - 0x01E08C 07:E07C: 20 9F E1  JSR sub_E19F
C - - - - - 0x01E08F 07:E07F: A9 20     LDA #> $2000
C - - - - - 0x01E091 07:E081: 8D 06 20  STA $2006
C - - - - - 0x01E094 07:E084: A9 00     LDA #< $2000
C - - - - - 0x01E096 07:E086: 8D 06 20  STA $2006
C - - - - - 0x01E099 07:E089: A9 55     LDA #$55
C - - - - - 0x01E09B 07:E08B: 20 60 E1  JSR sub_E160
C - - - - - 0x01E09E 07:E08E: C9 00     CMP #$00
C - - - - - 0x01E0A0 07:E090: D0 32     BNE bra_E0C4
C - - - - - 0x01E0A2 07:E092: A9 24     LDA #> $2400
C - - - - - 0x01E0A4 07:E094: 8D 06 20  STA $2006
C - - - - - 0x01E0A7 07:E097: A9 00     LDA #< $2400
C - - - - - 0x01E0A9 07:E099: 8D 06 20  STA $2006
C - - - - - 0x01E0AC 07:E09C: A9 AA     LDA #$AA
C - - - - - 0x01E0AE 07:E09E: 20 60 E1  JSR sub_E160
C - - - - - 0x01E0B1 07:E0A1: C9 00     CMP #$00
C - - - - - 0x01E0B3 07:E0A3: D0 1F     BNE bra_E0C4
C - - - - - 0x01E0B5 07:E0A5: A9 00     LDA #$00
C - - - - - 0x01E0B7 07:E0A7: 20 97 FB  JSR sub_FB97
C - - - - - 0x01E0BA 07:E0AA: A9 0E     LDA #$0E
C - - - - - 0x01E0BC 07:E0AC: 85 B0     STA ram_00B0
C - - - - - 0x01E0BE 07:E0AE: A9 05     LDA #$05
C - - - - - 0x01E0C0 07:E0B0: 85 B1     STA ram_00B1
C - - - - - 0x01E0C2 07:E0B2: A9 12     LDA #$12
C - - - - - 0x01E0C4 07:E0B4: 85 B2     STA ram_00B2
C - - - - - 0x01E0C6 07:E0B6: A9 3B     LDA #< tbl_E13B
C - - - - - 0x01E0C8 07:E0B8: 85 AE     STA ram_00AE
C - - - - - 0x01E0CA 07:E0BA: A9 E1     LDA #> tbl_E13B
C - - - - - 0x01E0CC 07:E0BC: 85 AF     STA ram_00AF
C - - - - - 0x01E0CE 07:E0BE: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01E0D1 07:E0C1: 4C E0 E0  JMP loc_E0E0
bra_E0C4:
- - - - - - 0x01E0D4 07:E0C4: A9 00     LDA #$00
- - - - - - 0x01E0D6 07:E0C6: 20 97 FB  JSR sub_FB97
- - - - - - 0x01E0D9 07:E0C9: A9 0E     LDA #$0E
- - - - - - 0x01E0DB 07:E0CB: 85 B0     STA ram_00B0
- - - - - - 0x01E0DD 07:E0CD: A9 05     LDA #$05
- - - - - - 0x01E0DF 07:E0CF: 85 B1     STA ram_00B1
- - - - - - 0x01E0E1 07:E0D1: A9 13     LDA #$13
- - - - - - 0x01E0E3 07:E0D3: 85 B2     STA ram_00B2
- - - - - - 0x01E0E5 07:E0D5: A9 4D     LDA #< tbl_E14D
- - - - - - 0x01E0E7 07:E0D7: 85 AE     STA ram_00AE
- - - - - - 0x01E0E9 07:E0D9: A9 E1     LDA #> tbl_E14D
- - - - - - 0x01E0EB 07:E0DB: 85 AF     STA ram_00AF
- - - - - - 0x01E0ED 07:E0DD: 20 9D FF  JSR sub_FF9D
loc_E0E0:
C D 3 - - - 0x01E0F0 07:E0E0: A5 D4     LDA ram_00D4
C - - - - - 0x01E0F2 07:E0E2: D0 1A     BNE bra_E0FE
- - - - - - 0x01E0F4 07:E0E4: A9 0F     LDA #$0F
- - - - - - 0x01E0F6 07:E0E6: 85 B0     STA ram_00B0
- - - - - - 0x01E0F8 07:E0E8: A9 05     LDA #$05
- - - - - - 0x01E0FA 07:E0EA: 85 B1     STA ram_00B1
- - - - - - 0x01E0FC 07:E0EC: A9 12     LDA #$12
- - - - - - 0x01E0FE 07:E0EE: 85 B2     STA ram_00B2
- - - - - - 0x01E100 07:E0F0: A9 16     LDA #< tbl_E116
- - - - - - 0x01E102 07:E0F2: 85 AE     STA ram_00AE
- - - - - - 0x01E104 07:E0F4: A9 E1     LDA #> tbl_E116
- - - - - - 0x01E106 07:E0F6: 85 AF     STA ram_00AF
- - - - - - 0x01E108 07:E0F8: 20 9D FF  JSR sub_FF9D
- - - - - - 0x01E10B 07:E0FB: 4C 15 E1  JMP loc_E115_RTS
bra_E0FE:
C - - - - - 0x01E10E 07:E0FE: A9 0F     LDA #$0F
C - - - - - 0x01E110 07:E100: 85 B0     STA ram_00B0
C - - - - - 0x01E112 07:E102: A9 05     LDA #$05
C - - - - - 0x01E114 07:E104: 85 B1     STA ram_00B1
C - - - - - 0x01E116 07:E106: A9 13     LDA #$13
C - - - - - 0x01E118 07:E108: 85 B2     STA ram_00B2
C - - - - - 0x01E11A 07:E10A: A9 28     LDA #< tbl_E128
C - - - - - 0x01E11C 07:E10C: 85 AE     STA ram_00AE
C - - - - - 0x01E11E 07:E10E: A9 E1     LDA #> tbl_E128
C - - - - - 0x01E120 07:E110: 85 AF     STA ram_00AF
C - - - - - 0x01E122 07:E112: 20 9D FF  JSR sub_FF9D
loc_E115_RTS:
C - - - - - 0x01E125 07:E115: 60        RTS



tbl_E116:
- - - - - - 0x01E126 07:E116: 56        .byte $56   ; 
- - - - - - 0x01E127 07:E117: 5C        .byte $5C   ; 
- - - - - - 0x01E128 07:E118: 4D        .byte $4D   ; 
- - - - - - 0x01E129 07:E119: 4F        .byte $4F   ; 
- - - - - - 0x01E12A 07:E11A: 44        .byte $44   ; 
- - - - - - 0x01E12B 07:E11B: 45        .byte $45   ; 
- - - - - - 0x01E12C 07:E11C: 5C        .byte $5C   ; 
- - - - - - 0x01E12D 07:E11D: 5C        .byte $5C   ; 
- - - - - - 0x01E12E 07:E11E: 5C        .byte $5C   ; 
- - - - - - 0x01E12F 07:E11F: 5C        .byte $5C   ; 
- - - - - - 0x01E130 07:E120: 5C        .byte $5C   ; 
- - - - - - 0x01E131 07:E121: 5C        .byte $5C   ; 
- - - - - - 0x01E132 07:E122: 3D        .byte $3D   ; 
- - - - - - 0x01E133 07:E123: 3D        .byte $3D   ; 
- - - - - - 0x01E134 07:E124: 3E        .byte $3E   ; 
- - - - - - 0x01E135 07:E125: 5C        .byte $5C   ; 
- - - - - - 0x01E136 07:E126: 4F        .byte $4F   ; 
- - - - - - 0x01E137 07:E127: 4B        .byte $4B   ; 



tbl_E128:
- D 3 - I - 0x01E138 07:E128: 56        .byte $56   ; 
- D 3 - I - 0x01E139 07:E129: 5C        .byte $5C   ; 
- D 3 - I - 0x01E13A 07:E12A: 4D        .byte $4D   ; 
- D 3 - I - 0x01E13B 07:E12B: 4F        .byte $4F   ; 
- D 3 - I - 0x01E13C 07:E12C: 44        .byte $44   ; 
- D 3 - I - 0x01E13D 07:E12D: 45        .byte $45   ; 
- D 3 - I - 0x01E13E 07:E12E: 5C        .byte $5C   ; 
- D 3 - I - 0x01E13F 07:E12F: 5C        .byte $5C   ; 
- D 3 - I - 0x01E140 07:E130: 5C        .byte $5C   ; 
- D 3 - I - 0x01E141 07:E131: 5C        .byte $5C   ; 
- D 3 - I - 0x01E142 07:E132: 5C        .byte $5C   ; 
- D 3 - I - 0x01E143 07:E133: 5C        .byte $5C   ; 
- D 3 - I - 0x01E144 07:E134: 3D        .byte $3D   ; 
- D 3 - I - 0x01E145 07:E135: 3D        .byte $3D   ; 
- D 3 - I - 0x01E146 07:E136: 3E        .byte $3E   ; 
- D 3 - I - 0x01E147 07:E137: 5C        .byte $5C   ; 
- D 3 - I - 0x01E148 07:E138: 42        .byte $42   ; 
- D 3 - I - 0x01E149 07:E139: 41        .byte $41   ; 
- D 3 - I - 0x01E14A 07:E13A: 44        .byte $44   ; 



tbl_E13B:
- D 3 - I - 0x01E14B 07:E13B: 48        .byte $48   ; 
- D 3 - I - 0x01E14C 07:E13C: 5C        .byte $5C   ; 
- D 3 - I - 0x01E14D 07:E13D: 4D        .byte $4D   ; 
- D 3 - I - 0x01E14E 07:E13E: 4F        .byte $4F   ; 
- D 3 - I - 0x01E14F 07:E13F: 44        .byte $44   ; 
- D 3 - I - 0x01E150 07:E140: 45        .byte $45   ; 
- D 3 - I - 0x01E151 07:E141: 5C        .byte $5C   ; 
- D 3 - I - 0x01E152 07:E142: 5C        .byte $5C   ; 
- D 3 - I - 0x01E153 07:E143: 5C        .byte $5C   ; 
- D 3 - I - 0x01E154 07:E144: 5C        .byte $5C   ; 
- D 3 - I - 0x01E155 07:E145: 5C        .byte $5C   ; 
- D 3 - I - 0x01E156 07:E146: 5C        .byte $5C   ; 
- D 3 - I - 0x01E157 07:E147: 3D        .byte $3D   ; 
- D 3 - I - 0x01E158 07:E148: 3D        .byte $3D   ; 
- D 3 - I - 0x01E159 07:E149: 3E        .byte $3E   ; 
- D 3 - I - 0x01E15A 07:E14A: 5C        .byte $5C   ; 
- D 3 - I - 0x01E15B 07:E14B: 4F        .byte $4F   ; 
- D 3 - I - 0x01E15C 07:E14C: 4B        .byte $4B   ; 



tbl_E14D:
- - - - - - 0x01E15D 07:E14D: 48        .byte $48   ; 
- - - - - - 0x01E15E 07:E14E: 5C        .byte $5C   ; 
- - - - - - 0x01E15F 07:E14F: 4D        .byte $4D   ; 
- - - - - - 0x01E160 07:E150: 4F        .byte $4F   ; 
- - - - - - 0x01E161 07:E151: 44        .byte $44   ; 
- - - - - - 0x01E162 07:E152: 45        .byte $45   ; 
- - - - - - 0x01E163 07:E153: 5C        .byte $5C   ; 
- - - - - - 0x01E164 07:E154: 5C        .byte $5C   ; 
- - - - - - 0x01E165 07:E155: 5C        .byte $5C   ; 
- - - - - - 0x01E166 07:E156: 5C        .byte $5C   ; 
- - - - - - 0x01E167 07:E157: 5C        .byte $5C   ; 
- - - - - - 0x01E168 07:E158: 5C        .byte $5C   ; 
- - - - - - 0x01E169 07:E159: 3D        .byte $3D   ; 
- - - - - - 0x01E16A 07:E15A: 3D        .byte $3D   ; 
- - - - - - 0x01E16B 07:E15B: 3E        .byte $3E   ; 
- - - - - - 0x01E16C 07:E15C: 5C        .byte $5C   ; 
- - - - - - 0x01E16D 07:E15D: 42        .byte $42   ; 
- - - - - - 0x01E16E 07:E15E: 41        .byte $41   ; 
- - - - - - 0x01E16F 07:E15F: 44        .byte $44   ; 



sub_E160:
; bzk reading PPU for some checks
C - - - - - 0x01E170 07:E160: 48        PHA
C - - - - - 0x01E171 07:E161: AD 07 20  LDA $2007
C - - - - - 0x01E174 07:E164: 68        PLA
C - - - - - 0x01E175 07:E165: A2 20     LDX #$20
C - - - - - 0x01E177 07:E167: A0 20     LDY #$20
bra_E169:
C - - - - - 0x01E179 07:E169: CD 07 20  CMP $2007
C - - - - - 0x01E17C 07:E16C: D0 0B     BNE bra_E179
C - - - - - 0x01E17E 07:E16E: CA        DEX
C - - - - - 0x01E17F 07:E16F: D0 F8     BNE bra_E169
C - - - - - 0x01E181 07:E171: A2 20     LDX #$20
C - - - - - 0x01E183 07:E173: 88        DEY
C - - - - - 0x01E184 07:E174: D0 F3     BNE bra_E169
C - - - - - 0x01E186 07:E176: A9 00     LDA #$00
C - - - - - 0x01E188 07:E178: 60        RTS
bra_E179:
C - - - - - 0x01E189 07:E179: A9 01     LDA #$01
C - - - - - 0x01E18B 07:E17B: 60        RTS



sub_E17C:
C - - - - - 0x01E18C 07:E17C: A9 8E     LDA #< tbl_E18E_bg_colors
C - - - - - 0x01E18E 07:E17E: 85 00     STA ram_0000
C - - - - - 0x01E190 07:E180: A9 E1     LDA #> tbl_E18E_bg_colors
C - - - - - 0x01E192 07:E182: 85 01     STA ram_0001
C - - - - - 0x01E194 07:E184: A9 00     LDA #$00
C - - - - - 0x01E196 07:E186: A2 11     LDX #$11
C - - - - - 0x01E198 07:E188: A0 00     LDY #$00
C - - - - - 0x01E19A 07:E18A: 20 B2 FB  JSR sub_FBB2_write_palette_to_ppu
C - - - - - 0x01E19D 07:E18D: 60        RTS


tbl_E18E_bg_colors:
- D 3 - I - 0x01E19E 07:E18E: 0C        .byte $0C, $05, $27, $30   ; 
- D 3 - I - 0x01E1A2 07:E192: 0C        .byte $0C, $1C, $2C, $28   ; 
- D 3 - I - 0x01E1A6 07:E196: 0C        .byte $0C, $05, $15, $28   ; 
- D 3 - I - 0x01E1AA 07:E19A: 0C        .byte $0C, $1C, $2C, $0F   ; 
- D 3 - I - 0x01E1AE 07:E19E: 0C        .byte $0C                  ; 



sub_E19F:
C - - - - - 0x01E1AF 07:E19F: A2 20     LDX #$20
C - - - - - 0x01E1B1 07:E1A1: A0 20     LDY #$20
bra_E1A3:
C - - - - - 0x01E1B3 07:E1A3: 8D 07 20  STA $2007
C - - - - - 0x01E1B6 07:E1A6: CA        DEX
C - - - - - 0x01E1B7 07:E1A7: D0 FA     BNE bra_E1A3
C - - - - - 0x01E1B9 07:E1A9: A2 20     LDX #$20
C - - - - - 0x01E1BB 07:E1AB: 88        DEY
C - - - - - 0x01E1BC 07:E1AC: D0 F5     BNE bra_E1A3
C - - - - - 0x01E1BE 07:E1AE: 60        RTS



sub_E1AF:
C - - - - - 0x01E1BF 07:E1AF: A9 10     LDA #$10
C - - - - - 0x01E1C1 07:E1B1: 85 57     STA ram_0057
C - - - - - 0x01E1C3 07:E1B3: A9 00     LDA #$00
C - - - - - 0x01E1C5 07:E1B5: 85 56     STA ram_0056
C - - - - - 0x01E1C7 07:E1B7: 85 54     STA ram_0054
C - - - - - 0x01E1C9 07:E1B9: 85 55     STA ram_0055
C - - - - - 0x01E1CB 07:E1BB: 60        RTS



sub_E1BC:
C - - - - - 0x01E1CC 07:E1BC: A5 54     LDA ram_0054
C - - - - - 0x01E1CE 07:E1BE: 18        CLC
C - - - - - 0x01E1CF 07:E1BF: 69 01     ADC #$01
C - - - - - 0x01E1D1 07:E1C1: 29 03     AND #$03
C - - - - - 0x01E1D3 07:E1C3: 85 54     STA ram_0054
C - - - - - 0x01E1D5 07:E1C5: A5 55     LDA ram_0055
C - - - - - 0x01E1D7 07:E1C7: 49 01     EOR #$01
C - - - - - 0x01E1D9 07:E1C9: 85 55     STA ram_0055
C - - - - - 0x01E1DB 07:E1CB: A2 00     LDX #$00
loc_E1CD:
C D 3 - - - 0x01E1DD 07:E1CD: BD 00 03  LDA ram_0300,X
C - - - - - 0x01E1E0 07:E1D0: 30 03     BMI bra_E1D5
C - - - - - 0x01E1E2 07:E1D2: 4C 2A E3  JMP loc_E32A
bra_E1D5:
C - - - - - 0x01E1E5 07:E1D5: A9 00     LDA #$00
C - - - - - 0x01E1E7 07:E1D7: 85 47     STA ram_0047
C - - - - - 0x01E1E9 07:E1D9: 85 48     STA ram_0048
C - - - - - 0x01E1EB 07:E1DB: BD 08 03  LDA ram_0308,X
C - - - - - 0x01E1EE 07:E1DE: F0 08     BEQ bra_E1E8
C - - - - - 0x01E1F0 07:E1E0: A5 BF     LDA ram_00BF
C - - - - - 0x01E1F2 07:E1E2: F0 04     BEQ bra_E1E8
C - - - - - 0x01E1F4 07:E1E4: A5 54     LDA ram_0054
C - - - - - 0x01E1F6 07:E1E6: D0 08     BNE bra_E1F0
bra_E1E8:
C - - - - - 0x01E1F8 07:E1E8: BD 0C 04  LDA ram_040C,X
C - - - - - 0x01E1FB 07:E1EB: F0 0E     BEQ bra_E1FB
C - - - - - 0x01E1FD 07:E1ED: DE 0C 04  DEC ram_040C,X
bra_E1F0:
C - - - - - 0x01E200 07:E1F0: A9 00     LDA #$00
C - - - - - 0x01E202 07:E1F2: 9D 09 04  STA ram_0409,X
C - - - - - 0x01E205 07:E1F5: 9D 0A 04  STA ram_040A,X
C - - - - - 0x01E208 07:E1F8: 4C 2A E3  JMP loc_E32A
bra_E1FB:
C - - - - - 0x01E20B 07:E1FB: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E20E 07:E1FE: 20 26 E8  JSR sub_E826_prg_banks_select
C - - - - - 0x01E211 07:E201: BD 01 03  LDA ram_0301,X
C - - - - - 0x01E214 07:E204: 85 50     STA ram_0050
C - - - - - 0x01E216 07:E206: 29 10     AND #$10
C - - - - - 0x01E218 07:E208: F0 03     BEQ bra_E20D
C - - - - - 0x01E21A 07:E20A: 20 34 E6  JSR sub_E634
bra_E20D:
C - - - - - 0x01E21D 07:E20D: BC 09 03  LDY ram_0309,X
C - - - - - 0x01E220 07:E210: F0 09     BEQ bra_E21B
C - - - - - 0x01E222 07:E212: DE 09 03  DEC ram_0309,X
C - - - - - 0x01E225 07:E215: DE 08 03  DEC ram_0308,X
C - - - - - 0x01E228 07:E218: 4C 38 E2  JMP loc_E238
bra_E21B:
C - - - - - 0x01E22B 07:E21B: BD 06 03  LDA ram_0306,X
C - - - - - 0x01E22E 07:E21E: 85 4A     STA ram_004A
C - - - - - 0x01E230 07:E220: BD 07 03  LDA ram_0307,X
C - - - - - 0x01E233 07:E223: 85 4B     STA ram_004B
C - - - - - 0x01E235 07:E225: BC 08 03  LDY ram_0308,X
loc_E228:
C D 3 - - - 0x01E238 07:E228: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E23A 07:E22A: 30 03     BMI bra_E22F
C - - - - - 0x01E23C 07:E22C: 4C 11 E3  JMP loc_E311
bra_E22F:
C - - - - - 0x01E23F 07:E22F: 0A        ASL
C - - - - - 0x01E240 07:E230: 30 0C     BMI bra_E23E
C - - - - - 0x01E242 07:E232: 4A        LSR
C - - - - - 0x01E243 07:E233: E9 00     SBC #$00
C - - - - - 0x01E245 07:E235: 9D 09 03  STA ram_0309,X
loc_E238:
C D 3 - - - 0x01E248 07:E238: FE 08 03  INC ram_0308,X
C - - - - - 0x01E24B 07:E23B: 4C 14 E3  JMP loc_E314
bra_E23E:
C - - - - - 0x01E24E 07:E23E: 0A        ASL
C - - - - - 0x01E24F 07:E23F: 30 1F     BMI bra_E260
C - - - - - 0x01E251 07:E241: DE 0A 03  DEC ram_030A,X
C - - - - - 0x01E254 07:E244: BD 0A 03  LDA ram_030A,X
C - - - - - 0x01E257 07:E247: D0 05     BNE bra_E24E
C - - - - - 0x01E259 07:E249: C8        INY
C - - - - - 0x01E25A 07:E24A: C8        INY
C - - - - - 0x01E25B 07:E24B: 4C 28 E2  JMP loc_E228
bra_E24E:
C - - - - - 0x01E25E 07:E24E: 10 07     BPL bra_E257
C - - - - - 0x01E260 07:E250: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E262 07:E252: 29 1F     AND #$1F
C - - - - - 0x01E264 07:E254: 9D 0A 03  STA ram_030A,X
bra_E257:
C - - - - - 0x01E267 07:E257: C8        INY
C - - - - - 0x01E268 07:E258: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E26A 07:E25A: A8        TAY
C - - - - - 0x01E26B 07:E25B: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E26D 07:E25D: 4C 28 E2  JMP loc_E228
bra_E260:
C - - - - - 0x01E270 07:E260: C9 F8     CMP #$F8
C - - - - - 0x01E272 07:E262: F0 F3     BEQ bra_E257
C - - - - - 0x01E274 07:E264: C9 F4     CMP #$F4
C - - - - - 0x01E276 07:E266: D0 0D     BNE bra_E275
C - - - - - 0x01E278 07:E268: C8        INY
C - - - - - 0x01E279 07:E269: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E27B 07:E26B: 9D 08 04  STA ram_0408,X
C - - - - - 0x01E27E 07:E26E: 20 92 F3  JSR sub_F392
C - - - - - 0x01E281 07:E271: C8        INY
C - - - - - 0x01E282 07:E272: 4C 28 E2  JMP loc_E228
bra_E275:
C - - - - - 0x01E285 07:E275: C9 F0     CMP #$F0
C - - - - - 0x01E287 07:E277: D0 10     BNE bra_E289
C - - - - - 0x01E289 07:E279: C8        INY
C - - - - - 0x01E28A 07:E27A: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E28C 07:E27C: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01E28F 07:E27F: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E292 07:E282: 20 26 E8  JSR sub_E826_prg_banks_select
C - - - - - 0x01E295 07:E285: C8        INY
C - - - - - 0x01E296 07:E286: 4C 28 E2  JMP loc_E228
bra_E289:
C - - - - - 0x01E299 07:E289: C9 90     CMP #$90
C - - - - - 0x01E29B 07:E28B: D0 21     BNE bra_E2AE
C - - - - - 0x01E29D 07:E28D: 8A        TXA
C - - - - - 0x01E29E 07:E28E: 48        PHA
C - - - - - 0x01E29F 07:E28F: C8        INY
C - - - - - 0x01E2A0 07:E290: E0 40     CPX #$40
C - - - - - 0x01E2A2 07:E292: 90 04     BCC bra_E298
C - - - - - 0x01E2A4 07:E294: A2 10     LDX #$10
C - - - - - 0x01E2A6 07:E296: D0 02     BNE bra_E29A
bra_E298:
C - - - - - 0x01E2A8 07:E298: A2 40     LDX #$40
bra_E29A:
C - - - - - 0x01E2AA 07:E29A: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E2AC 07:E29C: 9D 0D 04  STA ram_damage,X
C - - - - - 0x01E2AF 07:E29F: 20 00 FB  JSR sub_FB00
C - - - - - 0x01E2B2 07:E2A2: 68        PLA
C - - - - - 0x01E2B3 07:E2A3: AA        TAX
C - - - - - 0x01E2B4 07:E2A4: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E2B7 07:E2A7: 20 26 E8  JSR sub_E826_prg_banks_select
C - - - - - 0x01E2BA 07:E2AA: C8        INY
C - - - - - 0x01E2BB 07:E2AB: 4C 28 E2  JMP loc_E228
bra_E2AE:
C - - - - - 0x01E2BE 07:E2AE: C9 D4     CMP #$D4
C - - - - - 0x01E2C0 07:E2B0: D0 14     BNE bra_E2C6
C - - - - - 0x01E2C2 07:E2B2: C8        INY
C - - - - - 0x01E2C3 07:E2B3: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E2C5 07:E2B5: 9D 05 04  STA ram_0405,X
C - - - - - 0x01E2C8 07:E2B8: BD 01 03  LDA ram_0301,X
C - - - - - 0x01E2CB 07:E2BB: 09 20     ORA #$20
C - - - - - 0x01E2CD 07:E2BD: 09 10     ORA #$10
C - - - - - 0x01E2CF 07:E2BF: 9D 01 03  STA ram_0301,X
C - - - - - 0x01E2D2 07:E2C2: C8        INY
C - - - - - 0x01E2D3 07:E2C3: 4C 28 E2  JMP loc_E228
bra_E2C6:
C - - - - - 0x01E2D6 07:E2C6: C9 C8     CMP #$C8
C - - - - - 0x01E2D8 07:E2C8: D0 21     BNE bra_E2EB
C - - - - - 0x01E2DA 07:E2CA: C8        INY
C - - - - - 0x01E2DB 07:E2CB: BD 01 03  LDA ram_0301,X
C - - - - - 0x01E2DE 07:E2CE: 29 40     AND #$40
C - - - - - 0x01E2E0 07:E2D0: F0 08     BEQ bra_E2DA
C - - - - - 0x01E2E2 07:E2D2: A9 00     LDA #$00
C - - - - - 0x01E2E4 07:E2D4: 38        SEC
C - - - - - 0x01E2E5 07:E2D5: F1 4A     SBC (ram_004A),Y
C - - - - - 0x01E2E7 07:E2D7: 4C DC E2  JMP loc_E2DC
bra_E2DA:
C - - - - - 0x01E2EA 07:E2DA: B1 4A     LDA (ram_004A),Y
loc_E2DC:
C D 3 - - - 0x01E2EC 07:E2DC: 9D 00 04  STA ram_0400,X
C - - - - - 0x01E2EF 07:E2DF: BD 01 03  LDA ram_0301,X
C - - - - - 0x01E2F2 07:E2E2: 09 10     ORA #$10
C - - - - - 0x01E2F4 07:E2E4: 9D 01 03  STA ram_0301,X
C - - - - - 0x01E2F7 07:E2E7: C8        INY
C - - - - - 0x01E2F8 07:E2E8: 4C 28 E2  JMP loc_E228
bra_E2EB:
C - - - - - 0x01E2FB 07:E2EB: C9 C4     CMP #$C4
C - - - - - 0x01E2FD 07:E2ED: D0 12     BNE bra_E301
C - - - - - 0x01E2FF 07:E2EF: C8        INY
C - - - - - 0x01E300 07:E2F0: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E302 07:E2F2: 9D 01 04  STA ram_0401,X
C - - - - - 0x01E305 07:E2F5: BD 01 03  LDA ram_0301,X
C - - - - - 0x01E308 07:E2F8: 09 10     ORA #$10
C - - - - - 0x01E30A 07:E2FA: 9D 01 03  STA ram_0301,X
C - - - - - 0x01E30D 07:E2FD: C8        INY
C - - - - - 0x01E30E 07:E2FE: 4C 28 E2  JMP loc_E228
bra_E301:
C - - - - - 0x01E311 07:E301: BD 00 03  LDA ram_0300,X
C - - - - - 0x01E314 07:E304: 09 40     ORA #$40
C - - - - - 0x01E316 07:E306: 9D 00 03  STA ram_0300,X
C - - - - - 0x01E319 07:E309: 88        DEY
C - - - - - 0x01E31A 07:E30A: 98        TYA
C - - - - - 0x01E31B 07:E30B: 9D 08 03  STA ram_0308,X
C - - - - - 0x01E31E 07:E30E: 4C 38 E2  JMP loc_E238
loc_E311:
C D 3 - - - 0x01E321 07:E311: 20 B3 E4  JSR sub_E4B3
loc_E314:
C D 3 - - - 0x01E324 07:E314: A5 47     LDA ram_0047
C - - - - - 0x01E326 07:E316: 9D 09 04  STA ram_0409,X
C - - - - - 0x01E329 07:E319: A5 48     LDA ram_0048
C - - - - - 0x01E32B 07:E31B: 9D 0A 04  STA ram_040A,X
C - - - - - 0x01E32E 07:E31E: A5 54     LDA ram_0054
C - - - - - 0x01E330 07:E320: D0 08     BNE bra_E32A
C - - - - - 0x01E332 07:E322: BD 0B 04  LDA ram_040B,X
C - - - - - 0x01E335 07:E325: F0 03     BEQ bra_E32A
C - - - - - 0x01E337 07:E327: DE 0B 04  DEC ram_040B,X
bra_E32A:
loc_E32A:
C D 3 - - - 0x01E33A 07:E32A: 8A        TXA
C - - - - - 0x01E33B 07:E32B: 18        CLC
C - - - - - 0x01E33C 07:E32C: 69 10     ADC #$10
C - - - - - 0x01E33E 07:E32E: C9 D0     CMP #$D0
C - - - - - 0x01E340 07:E330: B0 04     BCS bra_E336_RTS
C - - - - - 0x01E342 07:E332: AA        TAX
C - - - - - 0x01E343 07:E333: 4C CD E1  JMP loc_E1CD
bra_E336_RTS:
C - - - - - 0x01E346 07:E336: 60        RTS



sub_E337:
C - - - - - 0x01E347 07:E337: A9 FC     LDA #$FC
C - - - - - 0x01E349 07:E339: 85 44     STA ram_0044
C - - - - - 0x01E34B 07:E33B: A9 00     LDA #$00
C - - - - - 0x01E34D 07:E33D: 85 43     STA ram_0043
C - - - - - 0x01E34F 07:E33F: A5 56     LDA ram_0056
C - - - - - 0x01E351 07:E341: 85 46     STA ram_0046
loc_E343:
C D 3 - - - 0x01E353 07:E343: A6 56     LDX ram_0056
C - - - - - 0x01E355 07:E345: BD 00 03  LDA ram_0300,X
C - - - - - 0x01E358 07:E348: 30 03     BMI bra_E34D
C - - - - - 0x01E35A 07:E34A: 4C 76 E4  JMP loc_E476
bra_E34D:
C - - - - - 0x01E35D 07:E34D: BD 0C 03  LDA ram_030C,X
C - - - - - 0x01E360 07:E350: 8D 00 70  STA $7000
C - - - - - 0x01E363 07:E353: BD 01 03  LDA ram_0301,X
C - - - - - 0x01E366 07:E356: 85 50     STA ram_0050
C - - - - - 0x01E368 07:E358: A5 0E     LDA ram_000E
C - - - - - 0x01E36A 07:E35A: C9 01     CMP #$01
C - - - - - 0x01E36C 07:E35C: D0 10     BNE bra_E36E
C - - - - - 0x01E36E 07:E35E: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01E371 07:E361: C9 16     CMP #$16
C - - - - - 0x01E373 07:E363: F0 09     BEQ bra_E36E
C - - - - - 0x01E375 07:E365: BD 09 04  LDA ram_0409,X
C - - - - - 0x01E378 07:E368: 38        SEC
C - - - - - 0x01E379 07:E369: E5 3A     SBC ram_003A
C - - - - - 0x01E37B 07:E36B: 9D 09 04  STA ram_0409,X
bra_E36E:
C - - - - - 0x01E37E 07:E36E: A6 56     LDX ram_0056
C - - - - - 0x01E380 07:E370: A0 00     LDY #$00
C - - - - - 0x01E382 07:E372: BD 09 04  LDA ram_0409,X
C - - - - - 0x01E385 07:E375: 10 07     BPL bra_E37E
C - - - - - 0x01E387 07:E377: D0 03     BNE bra_E37C
- - - - - - 0x01E389 07:E379: 4C 0F E4  JMP loc_E40F
bra_E37C:
C - - - - - 0x01E38C 07:E37C: A0 FF     LDY #$FF
bra_E37E:
C - - - - - 0x01E38E 07:E37E: 84 4D     STY ram_004D
C - - - - - 0x01E390 07:E380: 18        CLC
C - - - - - 0x01E391 07:E381: 7D 02 03  ADC ram_0302,X
C - - - - - 0x01E394 07:E384: 9D 02 03  STA ram_0302,X
C - - - - - 0x01E397 07:E387: A5 4D     LDA ram_004D
C - - - - - 0x01E399 07:E389: 7D 03 03  ADC ram_0303,X
C - - - - - 0x01E39C 07:E38C: 9D 03 03  STA ram_0303,X
C - - - - - 0x01E39F 07:E38F: E0 10     CPX #$10
C - - - - - 0x01E3A1 07:E391: F0 04     BEQ bra_E397
C - - - - - 0x01E3A3 07:E393: E0 40     CPX #$40
C - - - - - 0x01E3A5 07:E395: D0 78     BNE bra_E40F
bra_E397:
C - - - - - 0x01E3A7 07:E397: A5 50     LDA ram_0050
C - - - - - 0x01E3A9 07:E399: 29 40     AND #$40
C - - - - - 0x01E3AB 07:E39B: D0 33     BNE bra_E3D0
C - - - - - 0x01E3AD 07:E39D: BD 03 03  LDA ram_0303,X
C - - - - - 0x01E3B0 07:E3A0: F0 0D     BEQ bra_E3AF
C - - - - - 0x01E3B2 07:E3A2: 10 1B     BPL bra_E3BF
bra_E3A4:
C - - - - - 0x01E3B4 07:E3A4: A9 00     LDA #$00
C - - - - - 0x01E3B6 07:E3A6: 9D 02 03  STA ram_0302,X
C - - - - - 0x01E3B9 07:E3A9: 9D 03 03  STA ram_0303,X
C - - - - - 0x01E3BC 07:E3AC: 4C 0F E4  JMP loc_E40F
bra_E3AF:
C - - - - - 0x01E3BF 07:E3AF: BD 02 03  LDA ram_0302,X
C - - - - - 0x01E3C2 07:E3B2: 18        CLC
C - - - - - 0x01E3C3 07:E3B3: 7D 0E 03  ADC ram_030E,X
C - - - - - 0x01E3C6 07:E3B6: BD 03 03  LDA ram_0303,X
C - - - - - 0x01E3C9 07:E3B9: 69 00     ADC #$00
C - - - - - 0x01E3CB 07:E3BB: F0 52     BEQ bra_E40F
C - - - - - 0x01E3CD 07:E3BD: 30 E5     BMI bra_E3A4
bra_E3BF:
C - - - - - 0x01E3CF 07:E3BF: A9 00     LDA #$00
C - - - - - 0x01E3D1 07:E3C1: 9D 03 03  STA ram_0303,X
C - - - - - 0x01E3D4 07:E3C4: A9 FE     LDA #$FE
C - - - - - 0x01E3D6 07:E3C6: 38        SEC
C - - - - - 0x01E3D7 07:E3C7: FD 0E 03  SBC ram_030E,X
C - - - - - 0x01E3DA 07:E3CA: 9D 02 03  STA ram_0302,X
C - - - - - 0x01E3DD 07:E3CD: 4C 0F E4  JMP loc_E40F
bra_E3D0:
C - - - - - 0x01E3E0 07:E3D0: BD 02 03  LDA ram_0302,X
C - - - - - 0x01E3E3 07:E3D3: 18        CLC
C - - - - - 0x01E3E4 07:E3D4: 69 08     ADC #$08
C - - - - - 0x01E3E6 07:E3D6: BD 03 03  LDA ram_0303,X
C - - - - - 0x01E3E9 07:E3D9: 69 00     ADC #$00
C - - - - - 0x01E3EB 07:E3DB: F0 0F     BEQ bra_E3EC
C - - - - - 0x01E3ED 07:E3DD: 30 22     BMI bra_E401
bra_E3DF:
C - - - - - 0x01E3EF 07:E3DF: A9 00     LDA #$00
C - - - - - 0x01E3F1 07:E3E1: 9D 03 03  STA ram_0303,X
C - - - - - 0x01E3F4 07:E3E4: A9 F7     LDA #$F7
C - - - - - 0x01E3F6 07:E3E6: 9D 02 03  STA ram_0302,X
C - - - - - 0x01E3F9 07:E3E9: 4C 0F E4  JMP loc_E40F
bra_E3EC:
C - - - - - 0x01E3FC 07:E3EC: BD 0E 03  LDA ram_030E,X
C - - - - - 0x01E3FF 07:E3EF: 38        SEC
C - - - - - 0x01E400 07:E3F0: E9 07     SBC #$07
C - - - - - 0x01E402 07:E3F2: 49 FF     EOR #$FF
C - - - - - 0x01E404 07:E3F4: 38        SEC
C - - - - - 0x01E405 07:E3F5: 7D 02 03  ADC ram_0302,X
C - - - - - 0x01E408 07:E3F8: BD 03 03  LDA ram_0303,X
C - - - - - 0x01E40B 07:E3FB: 69 FF     ADC #$FF
C - - - - - 0x01E40D 07:E3FD: F0 10     BEQ bra_E40F
C - - - - - 0x01E40F 07:E3FF: 10 DE     BPL bra_E3DF
bra_E401:
C - - - - - 0x01E411 07:E401: A9 00     LDA #$00
C - - - - - 0x01E413 07:E403: 9D 03 03  STA ram_0303,X
C - - - - - 0x01E416 07:E406: BD 0E 03  LDA ram_030E,X
C - - - - - 0x01E419 07:E409: 38        SEC
C - - - - - 0x01E41A 07:E40A: E9 07     SBC #$07
C - - - - - 0x01E41C 07:E40C: 9D 02 03  STA ram_0302,X
bra_E40F:
loc_E40F:
C D 3 - - - 0x01E41F 07:E40F: BD 02 03  LDA ram_0302,X
C - - - - - 0x01E422 07:E412: 85 4C     STA ram_004C
C - - - - - 0x01E424 07:E414: BD 03 03  LDA ram_0303,X
C - - - - - 0x01E427 07:E417: 85 4D     STA ram_004D
C - - - - - 0x01E429 07:E419: A0 00     LDY #$00
C - - - - - 0x01E42B 07:E41B: BD 0A 04  LDA ram_040A,X
C - - - - - 0x01E42E 07:E41E: F0 1C     BEQ bra_E43C
C - - - - - 0x01E430 07:E420: 10 02     BPL bra_E424
C - - - - - 0x01E432 07:E422: A0 FF     LDY #$FF
bra_E424:
C - - - - - 0x01E434 07:E424: 84 4F     STY ram_004F
C - - - - - 0x01E436 07:E426: 18        CLC
C - - - - - 0x01E437 07:E427: 7D 04 03  ADC ram_0304,X
C - - - - - 0x01E43A 07:E42A: 9D 04 03  STA ram_0304,X
C - - - - - 0x01E43D 07:E42D: 85 4E     STA ram_004E
C - - - - - 0x01E43F 07:E42F: A5 4F     LDA ram_004F
C - - - - - 0x01E441 07:E431: 7D 05 03  ADC ram_0305,X
C - - - - - 0x01E444 07:E434: 9D 05 03  STA ram_0305,X
C - - - - - 0x01E447 07:E437: 85 4F     STA ram_004F
C - - - - - 0x01E449 07:E439: 4C 46 E4  JMP loc_E446
bra_E43C:
C - - - - - 0x01E44C 07:E43C: BD 04 03  LDA ram_0304,X
C - - - - - 0x01E44F 07:E43F: 85 4E     STA ram_004E
C - - - - - 0x01E451 07:E441: BD 05 03  LDA ram_0305,X
C - - - - - 0x01E454 07:E444: 85 4F     STA ram_004F
loc_E446:
C D 3 - - - 0x01E456 07:E446: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01E459 07:E449: C9 16     CMP #$16
C - - - - - 0x01E45B 07:E44B: D0 26     BNE bra_E473
C - - - - - 0x01E45D 07:E44D: A5 0E     LDA ram_000E
C - - - - - 0x01E45F 07:E44F: C9 01     CMP #$01
C - - - - - 0x01E461 07:E451: D0 20     BNE bra_E473
C - - - - - 0x01E463 07:E453: BC 03 05  LDY ram_0503,X
C - - - - - 0x01E466 07:E456: 84 42     STY ram_0042
C - - - - - 0x01E468 07:E458: 20 5B F0  JSR sub_F05B
C - - - - - 0x01E46B 07:E45B: 18        CLC
C - - - - - 0x01E46C 07:E45C: 65 4C     ADC ram_004C
C - - - - - 0x01E46E 07:E45E: 85 4C     STA ram_004C
C - - - - - 0x01E470 07:E460: A9 00     LDA #$00
C - - - - - 0x01E472 07:E462: 65 4D     ADC ram_004D
C - - - - - 0x01E474 07:E464: 85 4D     STA ram_004D
C - - - - - 0x01E476 07:E466: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01E479 07:E469: 65 4E     ADC ram_004E
C - - - - - 0x01E47B 07:E46B: 85 4E     STA ram_004E
C - - - - - 0x01E47D 07:E46D: A9 00     LDA #$00
C - - - - - 0x01E47F 07:E46F: 65 4F     ADC ram_004F
C - - - - - 0x01E481 07:E471: 85 4F     STA ram_004F
bra_E473:
C - - - - - 0x01E483 07:E473: 20 E8 E4  JSR sub_E4E8
loc_E476:
C D 3 - - - 0x01E486 07:E476: A5 56     LDA ram_0056
C - - - - - 0x01E488 07:E478: 18        CLC
C - - - - - 0x01E489 07:E479: 65 57     ADC ram_0057
C - - - - - 0x01E48B 07:E47B: C9 D0     CMP #$D0
C - - - - - 0x01E48D 07:E47D: 90 08     BCC bra_E487
C - - - - - 0x01E48F 07:E47F: F0 04     BEQ bra_E485
C - - - - - 0x01E491 07:E481: A9 C0     LDA #$C0
C - - - - - 0x01E493 07:E483: D0 02     BNE bra_E487
bra_E485:
C - - - - - 0x01E495 07:E485: A9 00     LDA #$00
bra_E487:
C - - - - - 0x01E497 07:E487: 85 56     STA ram_0056
C - - - - - 0x01E499 07:E489: C5 46     CMP ram_0046
C - - - - - 0x01E49B 07:E48B: F0 03     BEQ bra_E490
C - - - - - 0x01E49D 07:E48D: 4C 43 E3  JMP loc_E343
bra_E490:
C - - - - - 0x01E4A0 07:E490: A6 43     LDX ram_0043
C - - - - - 0x01E4A2 07:E492: E4 44     CPX ram_0044
C - - - - - 0x01E4A4 07:E494: F0 0D     BEQ bra_E4A3
C - - - - - 0x01E4A6 07:E496: A9 F0     LDA #$F0
bra_E498:
C - - - - - 0x01E4A8 07:E498: 9D 00 02  STA ram_0200,X
C - - - - - 0x01E4AB 07:E49B: E8        INX
C - - - - - 0x01E4AC 07:E49C: E4 44     CPX ram_0044
C - - - - - 0x01E4AE 07:E49E: D0 F8     BNE bra_E498
C - - - - - 0x01E4B0 07:E4A0: 9D 00 02  STA ram_0200,X
bra_E4A3:
C - - - - - 0x01E4B3 07:E4A3: A5 56     LDA ram_0056
C - - - - - 0x01E4B5 07:E4A5: C5 46     CMP ram_0046
C - - - - - 0x01E4B7 07:E4A7: D0 09     BNE bra_E4B2_RTS
C - - - - - 0x01E4B9 07:E4A9: A9 00     LDA #$00
C - - - - - 0x01E4BB 07:E4AB: 85 56     STA ram_0056
C - - - - - 0x01E4BD 07:E4AD: 38        SEC
C - - - - - 0x01E4BE 07:E4AE: E5 57     SBC ram_0057
C - - - - - 0x01E4C0 07:E4B0: 85 57     STA ram_0057
bra_E4B2_RTS:
C - - - - - 0x01E4C2 07:E4B2: 60        RTS



sub_E4B3:
C - - - - - 0x01E4C3 07:E4B3: 0A        ASL
C - - - - - 0x01E4C4 07:E4B4: DD 0D 03  CMP ram_030D,X
C - - - - - 0x01E4C7 07:E4B7: F0 0B     BEQ bra_E4C4
C - - - - - 0x01E4C9 07:E4B9: 9D 0D 03  STA ram_030D,X
C - - - - - 0x01E4CC 07:E4BC: BD 00 03  LDA ram_0300,X
C - - - - - 0x01E4CF 07:E4BF: 29 FE     AND #$FE
C - - - - - 0x01E4D1 07:E4C1: 9D 00 03  STA ram_0300,X
bra_E4C4:
C - - - - - 0x01E4D4 07:E4C4: A5 50     LDA ram_0050
C - - - - - 0x01E4D6 07:E4C6: C8        INY
C - - - - - 0x01E4D7 07:E4C7: 29 40     AND #$40
C - - - - - 0x01E4D9 07:E4C9: D0 08     BNE bra_E4D3
C - - - - - 0x01E4DB 07:E4CB: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E4DD 07:E4CD: 18        CLC
C - - - - - 0x01E4DE 07:E4CE: 65 47     ADC ram_0047
C - - - - - 0x01E4E0 07:E4D0: 4C D8 E4  JMP loc_E4D8
bra_E4D3:
C - - - - - 0x01E4E3 07:E4D3: A5 47     LDA ram_0047
C - - - - - 0x01E4E5 07:E4D5: 38        SEC
C - - - - - 0x01E4E6 07:E4D6: F1 4A     SBC (ram_004A),Y
loc_E4D8:
C D 3 - - - 0x01E4E8 07:E4D8: 85 47     STA ram_0047
C - - - - - 0x01E4EA 07:E4DA: C8        INY
C - - - - - 0x01E4EB 07:E4DB: B1 4A     LDA (ram_004A),Y
C - - - - - 0x01E4ED 07:E4DD: 18        CLC
C - - - - - 0x01E4EE 07:E4DE: 65 48     ADC ram_0048
C - - - - - 0x01E4F0 07:E4E0: 85 48     STA ram_0048
C - - - - - 0x01E4F2 07:E4E2: C8        INY
C - - - - - 0x01E4F3 07:E4E3: 98        TYA
C - - - - - 0x01E4F4 07:E4E4: 9D 08 03  STA ram_0308,X
C - - - - - 0x01E4F7 07:E4E7: 60        RTS



sub_E4E8:
C - - - - - 0x01E4F8 07:E4E8: BC 0D 03  LDY ram_030D,X
C - - - - - 0x01E4FB 07:E4EB: C0 FE     CPY #$FE
C - - - - - 0x01E4FD 07:E4ED: 90 01     BCC bra_E4F0
C - - - - - 0x01E4FF 07:E4EF: 60        RTS
bra_E4F0:
C - - - - - 0x01E500 07:E4F0: B1 58     LDA (ram_0058),Y
C - - - - - 0x01E502 07:E4F2: 85 00     STA ram_0000
C - - - - - 0x01E504 07:E4F4: C8        INY
C - - - - - 0x01E505 07:E4F5: B1 58     LDA (ram_0058),Y
C - - - - - 0x01E507 07:E4F7: 85 01     STA ram_0001
C - - - - - 0x01E509 07:E4F9: C9 A0     CMP #$A0
C - - - - - 0x01E50B 07:E4FB: 90 10     BCC bra_E50D
C - - - - - 0x01E50D 07:E4FD: 38        SEC
C - - - - - 0x01E50E 07:E4FE: E9 20     SBC #$20
C - - - - - 0x01E510 07:E500: 85 01     STA ram_0001
C - - - - - 0x01E512 07:E502: BD 0C 03  LDA ram_030C,X
; bzk optimize, ORA #$01 instead of AND CLC ADC
C - - - - - 0x01E515 07:E505: 29 FE     AND #$FE
C - - - - - 0x01E517 07:E507: 18        CLC
C - - - - - 0x01E518 07:E508: 69 01     ADC #$01
C - - - - - 0x01E51A 07:E50A: 4C 12 E5  JMP loc_E512
bra_E50D:
C - - - - - 0x01E51D 07:E50D: BD 0C 03  LDA ram_030C,X
; !!! possible hacking protection table reading
tbl_E510:
C D 3 - - - 0x01E520 07:E510: 29 FE     AND #$FE
loc_E512:
C D 3 - - - 0x01E522 07:E512: 8D 00 70  STA $7000
C D 3 - - - 0x01E525 07:E515: A0 00     LDY #$00
C D 3 - - - 0x01E527 07:E517: B1 00     LDA (ram_0000),Y
C D 3 - - - 0x01E529 07:E519: 9D 0E 03  STA ram_030E,X
C D 3 - - - 0x01E52C 07:E51C: C8        INY
C D 3 - - - 0x01E52D 07:E51D: B1 00     LDA (ram_0000),Y
C D 3 - - - 0x01E52F 07:E51F: 9D 0F 03  STA ram_030F,X
C D 3 - - - 0x01E532 07:E522: A0 03     LDY #$03
C - - - - - 0x01E534 07:E524: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E536 07:E526: 85 5D     STA ram_005D
C - - - - - 0x01E538 07:E528: C8        INY
C - - - - - 0x01E539 07:E529: A5 50     LDA ram_0050
C - - - - - 0x01E53B 07:E52B: 29 04     AND #$04
C - - - - - 0x01E53D 07:E52D: F0 28     BEQ bra_E557
- - - - - - 0x01E53F 07:E52F: A5 5D     LDA ram_005D
- - - - - - 0x01E541 07:E531: 0A        ASL
- - - - - - 0x01E542 07:E532: 0A        ASL
- - - - - - 0x01E543 07:E533: 85 5F     STA ram_005F
- - - - - - 0x01E545 07:E535: A5 44     LDA ram_0044
- - - - - - 0x01E547 07:E537: C5 43     CMP ram_0043
- - - - - - 0x01E549 07:E539: D0 03     BNE bra_E53E
- - - - - - 0x01E54B 07:E53B: 4C CD E5  JMP loc_E5CD_RTS
bra_E53E:
- - - - - - 0x01E54E 07:E53E: 38        SEC
- - - - - - 0x01E54F 07:E53F: E5 5F     SBC ram_005F
- - - - - - 0x01E551 07:E541: C5 43     CMP ram_0043
- - - - - - 0x01E553 07:E543: B0 02     BCS bra_E547
- - - - - - 0x01E555 07:E545: A5 43     LDA ram_0043
bra_E547:
- - - - - - 0x01E557 07:E547: 85 44     STA ram_0044
- - - - - - 0x01E559 07:E549: A9 00     LDA #$00
- - - - - - 0x01E55B 07:E54B: 85 45     STA ram_0045
- - - - - - 0x01E55D 07:E54D: A5 44     LDA ram_0044
- - - - - - 0x01E55F 07:E54F: 18        CLC
- - - - - - 0x01E560 07:E550: 69 04     ADC #$04
- - - - - - 0x01E562 07:E552: AA        TAX
- - - - - - 0x01E563 07:E553: 4C 61 E5  JMP loc_E561
- - - - - - 0x01E566 07:E556: 60        RTS
bra_E557:
C - - - - - 0x01E567 07:E557: A6 43     LDX ram_0043
C - - - - - 0x01E569 07:E559: E4 44     CPX ram_0044
C - - - - - 0x01E56B 07:E55B: F0 70     BEQ bra_E5CD_RTS
C - - - - - 0x01E56D 07:E55D: A5 44     LDA ram_0044
C - - - - - 0x01E56F 07:E55F: 85 45     STA ram_0045
loc_E561:
C - - - - - 0x01E571 07:E561: A5 50     LDA ram_0050
C - - - - - 0x01E573 07:E563: 29 40     AND #$40
C - - - - - 0x01E575 07:E565: D0 67     BNE bra_E5CE
bra_E567:
C - - - - - 0x01E577 07:E567: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E579 07:E569: 0A        ASL
C - - - - - 0x01E57A 07:E56A: 26 5E     ROL ram_005E
C - - - - - 0x01E57C 07:E56C: 4A        LSR
C - - - - - 0x01E57D 07:E56D: 18        CLC
C - - - - - 0x01E57E 07:E56E: 65 4C     ADC ram_004C
C - - - - - 0x01E580 07:E570: 9D 03 02  STA ram_0203,X
C - - - - - 0x01E583 07:E573: A9 00     LDA #$00
C - - - - - 0x01E585 07:E575: 65 4D     ADC ram_004D
C - - - - - 0x01E587 07:E577: F0 05     BEQ bra_E57E
C - - - - - 0x01E589 07:E579: C8        INY
C - - - - - 0x01E58A 07:E57A: C8        INY
C - - - - - 0x01E58B 07:E57B: 4C C0 E5  JMP loc_E5C0
bra_E57E:
C - - - - - 0x01E58E 07:E57E: C8        INY
C - - - - - 0x01E58F 07:E57F: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E591 07:E581: 0A        ASL
C - - - - - 0x01E592 07:E582: 26 5E     ROL ram_005E
C - - - - - 0x01E594 07:E584: 4A        LSR
C - - - - - 0x01E595 07:E585: 18        CLC
C - - - - - 0x01E596 07:E586: 65 4E     ADC ram_004E
C - - - - - 0x01E598 07:E588: 9D 00 02  STA ram_0200,X
C - - - - - 0x01E59B 07:E58B: A9 00     LDA #$00
C - - - - - 0x01E59D 07:E58D: 65 4F     ADC ram_004F
C - - - - - 0x01E59F 07:E58F: F0 04     BEQ bra_E595
C - - - - - 0x01E5A1 07:E591: C8        INY
C - - - - - 0x01E5A2 07:E592: 4C C0 E5  JMP loc_E5C0
bra_E595:
C - - - - - 0x01E5A5 07:E595: C8        INY
C - - - - - 0x01E5A6 07:E596: A5 50     LDA ram_0050
C - - - - - 0x01E5A8 07:E598: 29 80     AND #$80
C - - - - - 0x01E5AA 07:E59A: F0 0F     BEQ bra_E5AB
C - - - - - 0x01E5AC 07:E59C: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E5AE 07:E59E: 18        CLC
C - - - - - 0x01E5AF 07:E59F: 69 80     ADC #$80
C - - - - - 0x01E5B1 07:E5A1: 9D 01 02  STA ram_0201,X
C - - - - - 0x01E5B4 07:E5A4: A5 5E     LDA ram_005E
C - - - - - 0x01E5B6 07:E5A6: 18        CLC
C - - - - - 0x01E5B7 07:E5A7: 69 02     ADC #$02
C - - - - - 0x01E5B9 07:E5A9: D0 07     BNE bra_E5B2
bra_E5AB:
C - - - - - 0x01E5BB 07:E5AB: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E5BD 07:E5AD: 9D 01 02  STA ram_0201,X
C - - - - - 0x01E5C0 07:E5B0: A5 5E     LDA ram_005E
bra_E5B2:
C - - - - - 0x01E5C2 07:E5B2: 29 03     AND #$03
C - - - - - 0x01E5C4 07:E5B4: 9D 02 02  STA ram_0202,X
C - - - - - 0x01E5C7 07:E5B7: 8A        TXA
C - - - - - 0x01E5C8 07:E5B8: 18        CLC
C - - - - - 0x01E5C9 07:E5B9: 69 04     ADC #$04
C - - - - - 0x01E5CB 07:E5BB: C5 45     CMP ram_0045
C - - - - - 0x01E5CD 07:E5BD: F0 06     BEQ bra_E5C5
C - - - - - 0x01E5CF 07:E5BF: AA        TAX
loc_E5C0:
C D 3 - - - 0x01E5D0 07:E5C0: C8        INY
C - - - - - 0x01E5D1 07:E5C1: C6 5D     DEC ram_005D
C - - - - - 0x01E5D3 07:E5C3: D0 A2     BNE bra_E567
bra_E5C5:
C - - - - - 0x01E5D5 07:E5C5: A5 50     LDA ram_0050
C - - - - - 0x01E5D7 07:E5C7: 29 04     AND #$04
C - - - - - 0x01E5D9 07:E5C9: D0 02     BNE bra_E5CD_RTS
C - - - - - 0x01E5DB 07:E5CB: 86 43     STX ram_0043
bra_E5CD_RTS:
loc_E5CD_RTS:
C - - - - - 0x01E5DD 07:E5CD: 60        RTS
bra_E5CE:
C - - - - - 0x01E5DE 07:E5CE: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E5E0 07:E5D0: 0A        ASL
C - - - - - 0x01E5E1 07:E5D1: 26 5E     ROL ram_005E
C - - - - - 0x01E5E3 07:E5D3: 4A        LSR
C - - - - - 0x01E5E4 07:E5D4: 85 5F     STA ram_005F
C - - - - - 0x01E5E6 07:E5D6: A5 4C     LDA ram_004C
C - - - - - 0x01E5E8 07:E5D8: 38        SEC
C - - - - - 0x01E5E9 07:E5D9: E5 5F     SBC ram_005F
C - - - - - 0x01E5EB 07:E5DB: 9D 03 02  STA ram_0203,X
C - - - - - 0x01E5EE 07:E5DE: A5 4D     LDA ram_004D
C - - - - - 0x01E5F0 07:E5E0: E9 00     SBC #$00
C - - - - - 0x01E5F2 07:E5E2: F0 05     BEQ bra_E5E9
C - - - - - 0x01E5F4 07:E5E4: C8        INY
C - - - - - 0x01E5F5 07:E5E5: C8        INY
C - - - - - 0x01E5F6 07:E5E6: 4C 2D E6  JMP loc_E62D
bra_E5E9:
C - - - - - 0x01E5F9 07:E5E9: C8        INY
C - - - - - 0x01E5FA 07:E5EA: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E5FC 07:E5EC: 0A        ASL
C - - - - - 0x01E5FD 07:E5ED: 26 5E     ROL ram_005E
C - - - - - 0x01E5FF 07:E5EF: 4A        LSR
C - - - - - 0x01E600 07:E5F0: 18        CLC
C - - - - - 0x01E601 07:E5F1: 65 4E     ADC ram_004E
C - - - - - 0x01E603 07:E5F3: 9D 00 02  STA ram_0200,X
C - - - - - 0x01E606 07:E5F6: A9 00     LDA #$00
C - - - - - 0x01E608 07:E5F8: 65 4F     ADC ram_004F
C - - - - - 0x01E60A 07:E5FA: F0 04     BEQ bra_E600
C - - - - - 0x01E60C 07:E5FC: C8        INY
C - - - - - 0x01E60D 07:E5FD: 4C 2D E6  JMP loc_E62D
bra_E600:
C - - - - - 0x01E610 07:E600: C8        INY
C - - - - - 0x01E611 07:E601: A5 50     LDA ram_0050
C - - - - - 0x01E613 07:E603: 29 80     AND #$80
C - - - - - 0x01E615 07:E605: F0 0F     BEQ bra_E616
C - - - - - 0x01E617 07:E607: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E619 07:E609: 18        CLC
C - - - - - 0x01E61A 07:E60A: 69 80     ADC #$80
C - - - - - 0x01E61C 07:E60C: 9D 01 02  STA ram_0201,X
C - - - - - 0x01E61F 07:E60F: A5 5E     LDA ram_005E
C - - - - - 0x01E621 07:E611: 18        CLC
C - - - - - 0x01E622 07:E612: 69 02     ADC #$02
C - - - - - 0x01E624 07:E614: D0 07     BNE bra_E61D
bra_E616:
C - - - - - 0x01E626 07:E616: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E628 07:E618: 9D 01 02  STA ram_0201,X
C - - - - - 0x01E62B 07:E61B: A5 5E     LDA ram_005E
bra_E61D:
C - - - - - 0x01E62D 07:E61D: 29 03     AND #$03
C - - - - - 0x01E62F 07:E61F: 09 40     ORA #$40
C - - - - - 0x01E631 07:E621: 9D 02 02  STA ram_0202,X
C - - - - - 0x01E634 07:E624: 8A        TXA
C - - - - - 0x01E635 07:E625: 18        CLC
C - - - - - 0x01E636 07:E626: 69 04     ADC #$04
C - - - - - 0x01E638 07:E628: C5 45     CMP ram_0045
C - - - - - 0x01E63A 07:E62A: F0 99     BEQ bra_E5C5
C - - - - - 0x01E63C 07:E62C: AA        TAX
loc_E62D:
C D 3 - - - 0x01E63D 07:E62D: C8        INY
C - - - - - 0x01E63E 07:E62E: C6 5D     DEC ram_005D
C - - - - - 0x01E640 07:E630: D0 9C     BNE bra_E5CE
C - - - - - 0x01E642 07:E632: F0 91     BEQ bra_E5C5



sub_E634:
C - - - - - 0x01E644 07:E634: BD 01 04  LDA ram_0401,X
C - - - - - 0x01E647 07:E637: 85 52     STA ram_0052
C - - - - - 0x01E649 07:E639: BD 00 04  LDA ram_0400,X
C - - - - - 0x01E64C 07:E63C: 85 51     STA ram_0051
C - - - - - 0x01E64E 07:E63E: A5 50     LDA ram_0050
C - - - - - 0x01E650 07:E640: 29 20     AND #$20
C - - - - - 0x01E652 07:E642: F0 28     BEQ bra_E66C
C - - - - - 0x01E654 07:E644: BD 05 04  LDA ram_0405,X
C - - - - - 0x01E657 07:E647: 18        CLC
C - - - - - 0x01E658 07:E648: 7D 07 04  ADC ram_0407,X
C - - - - - 0x01E65B 07:E64B: 20 93 E6  JSR sub_E693
C - - - - - 0x01E65E 07:E64E: 18        CLC
C - - - - - 0x01E65F 07:E64F: 65 52     ADC ram_0052
C - - - - - 0x01E661 07:E651: 9D 01 04  STA ram_0401,X
C - - - - - 0x01E664 07:E654: 98        TYA
C - - - - - 0x01E665 07:E655: 9D 07 04  STA ram_0407,X
C - - - - - 0x01E668 07:E658: BD 04 04  LDA ram_0404,X
C - - - - - 0x01E66B 07:E65B: 18        CLC
C - - - - - 0x01E66C 07:E65C: 7D 06 04  ADC ram_0406,X
C - - - - - 0x01E66F 07:E65F: 20 93 E6  JSR sub_E693
C - - - - - 0x01E672 07:E662: 18        CLC
C - - - - - 0x01E673 07:E663: 65 51     ADC ram_0051
C - - - - - 0x01E675 07:E665: 9D 00 04  STA ram_0400,X
C - - - - - 0x01E678 07:E668: 98        TYA
C - - - - - 0x01E679 07:E669: 9D 06 04  STA ram_0406,X
bra_E66C:
C - - - - - 0x01E67C 07:E66C: BD 01 04  LDA ram_0401,X
C - - - - - 0x01E67F 07:E66F: 18        CLC
C - - - - - 0x01E680 07:E670: 65 52     ADC ram_0052
C - - - - - 0x01E682 07:E672: 18        CLC
C - - - - - 0x01E683 07:E673: 7D 03 04  ADC ram_0403,X
C - - - - - 0x01E686 07:E676: 20 B2 E6  JSR sub_E6B2
C - - - - - 0x01E689 07:E679: 85 48     STA ram_0048
C - - - - - 0x01E68B 07:E67B: 98        TYA
C - - - - - 0x01E68C 07:E67C: 9D 03 04  STA ram_0403,X
C - - - - - 0x01E68F 07:E67F: BD 00 04  LDA ram_0400,X
C - - - - - 0x01E692 07:E682: 18        CLC
C - - - - - 0x01E693 07:E683: 65 51     ADC ram_0051
C - - - - - 0x01E695 07:E685: 18        CLC
C - - - - - 0x01E696 07:E686: 7D 02 04  ADC ram_0402,X
C - - - - - 0x01E699 07:E689: 20 B2 E6  JSR sub_E6B2
C - - - - - 0x01E69C 07:E68C: 85 47     STA ram_0047
C - - - - - 0x01E69E 07:E68E: 98        TYA
C - - - - - 0x01E69F 07:E68F: 9D 02 04  STA ram_0402,X
C - - - - - 0x01E6A2 07:E692: 60        RTS



sub_E693:
C - - - - - 0x01E6A3 07:E693: C9 00     CMP #$00
C - - - - - 0x01E6A5 07:E695: 30 08     BMI bra_E69F
C - - - - - 0x01E6A7 07:E697: 48        PHA
C - - - - - 0x01E6A8 07:E698: 29 03     AND #$03
C - - - - - 0x01E6AA 07:E69A: A8        TAY
C - - - - - 0x01E6AB 07:E69B: 68        PLA
C - - - - - 0x01E6AC 07:E69C: 4A        LSR
C - - - - - 0x01E6AD 07:E69D: 4A        LSR
C - - - - - 0x01E6AE 07:E69E: 60        RTS
bra_E69F:
C - - - - - 0x01E6AF 07:E69F: 48        PHA
C - - - - - 0x01E6B0 07:E6A0: 29 03     AND #$03
C - - - - - 0x01E6B2 07:E6A2: F0 02     BEQ bra_E6A6
C - - - - - 0x01E6B4 07:E6A4: 09 FC     ORA #$FC
bra_E6A6:
C - - - - - 0x01E6B6 07:E6A6: A8        TAY
C - - - - - 0x01E6B7 07:E6A7: 68        PLA
C - - - - - 0x01E6B8 07:E6A8: 18        CLC
C - - - - - 0x01E6B9 07:E6A9: 69 03     ADC #$03
C - - - - - 0x01E6BB 07:E6AB: 4A        LSR
C - - - - - 0x01E6BC 07:E6AC: 4A        LSR
C - - - - - 0x01E6BD 07:E6AD: F0 02     BEQ bra_E6B1_RTS
C - - - - - 0x01E6BF 07:E6AF: 09 C0     ORA #$C0
bra_E6B1_RTS:
C - - - - - 0x01E6C1 07:E6B1: 60        RTS



sub_E6B2:
C - - - - - 0x01E6C2 07:E6B2: C9 00     CMP #$00
C - - - - - 0x01E6C4 07:E6B4: 30 09     BMI bra_E6BF
C - - - - - 0x01E6C6 07:E6B6: 48        PHA
C - - - - - 0x01E6C7 07:E6B7: 29 07     AND #$07
C - - - - - 0x01E6C9 07:E6B9: A8        TAY
C - - - - - 0x01E6CA 07:E6BA: 68        PLA
C - - - - - 0x01E6CB 07:E6BB: 4A        LSR
C - - - - - 0x01E6CC 07:E6BC: 4A        LSR
C - - - - - 0x01E6CD 07:E6BD: 4A        LSR
C - - - - - 0x01E6CE 07:E6BE: 60        RTS
bra_E6BF:
C - - - - - 0x01E6CF 07:E6BF: 48        PHA
C - - - - - 0x01E6D0 07:E6C0: 29 07     AND #$07
C - - - - - 0x01E6D2 07:E6C2: F0 02     BEQ bra_E6C6
C - - - - - 0x01E6D4 07:E6C4: 09 F8     ORA #$F8
bra_E6C6:
C - - - - - 0x01E6D6 07:E6C6: A8        TAY
C - - - - - 0x01E6D7 07:E6C7: 68        PLA
C - - - - - 0x01E6D8 07:E6C8: 18        CLC
C - - - - - 0x01E6D9 07:E6C9: 69 07     ADC #$07
C - - - - - 0x01E6DB 07:E6CB: 4A        LSR
C - - - - - 0x01E6DC 07:E6CC: 4A        LSR
C - - - - - 0x01E6DD 07:E6CD: 4A        LSR
C - - - - - 0x01E6DE 07:E6CE: F0 02     BEQ bra_E6D2_RTS
C - - - - - 0x01E6E0 07:E6D0: 09 E0     ORA #$E0
bra_E6D2_RTS:
C - - - - - 0x01E6E2 07:E6D2: 60        RTS



sub_E6D3:
C - - - - - 0x01E6E3 07:E6D3: 0A        ASL
C - - - - - 0x01E6E4 07:E6D4: 0A        ASL
C - - - - - 0x01E6E5 07:E6D5: 0A        ASL
C - - - - - 0x01E6E6 07:E6D6: A8        TAY
C - - - - - 0x01E6E7 07:E6D7: C8        INY
C - - - - - 0x01E6E8 07:E6D8: A9 F2     LDA #< tbl_E6F2_spr_colors
C - - - - - 0x01E6EA 07:E6DA: 85 00     STA ram_0000
C - - - - - 0x01E6EC 07:E6DC: A9 E6     LDA #> tbl_E6F2_spr_colors
C - - - - - 0x01E6EE 07:E6DE: 85 01     STA ram_0001
C - - - - - 0x01E6F0 07:E6E0: 8A        TXA
C - - - - - 0x01E6F1 07:E6E1: 48        PHA
C - - - - - 0x01E6F2 07:E6E2: A9 11     LDA #$11
C - - - - - 0x01E6F4 07:E6E4: E0 10     CPX #$10
C - - - - - 0x01E6F6 07:E6E6: F0 02     BEQ bra_E6EA
C - - - - - 0x01E6F8 07:E6E8: A9 19     LDA #$19
bra_E6EA:
C - - - - - 0x01E6FA 07:E6EA: A2 07     LDX #$07
C - - - - - 0x01E6FC 07:E6EC: 20 B2 FB  JSR sub_FBB2_write_palette_to_ppu
C - - - - - 0x01E6FF 07:E6EF: 68        PLA
C - - - - - 0x01E700 07:E6F0: AA        TAX
C - - - - - 0x01E701 07:E6F1: 60        RTS



tbl_E6F2_spr_colors:
; 8 bytes in a line
- - - - - - 0x01E702 07:E6F2: 1A        .byte $1A   ; 
- D 3 - I - 0x01E703 07:E6F3: 07        .byte $07   ; 
- D 3 - I - 0x01E704 07:E6F4: 17        .byte $17   ; 
- D 3 - I - 0x01E705 07:E6F5: 36        .byte $36   ; 
- D 3 - I - 0x01E706 07:E6F6: 00        .byte $00   ; 
- D 3 - I - 0x01E707 07:E6F7: 0D        .byte $0D   ; 
- D 3 - I - 0x01E708 07:E6F8: 11        .byte $11   ; 
- D 3 - I - 0x01E709 07:E6F9: 31        .byte $31   ; 
- - - - - - 0x01E70A 07:E6FA: 1A        .byte $1A   ; 
- D 3 - I - 0x01E70B 07:E6FB: 06        .byte $06   ; 
- D 3 - I - 0x01E70C 07:E6FC: 17        .byte $17   ; 
- D 3 - I - 0x01E70D 07:E6FD: 36        .byte $36   ; 
- D 3 - I - 0x01E70E 07:E6FE: 00        .byte $00   ; 
- D 3 - I - 0x01E70F 07:E6FF: 0F        .byte $0F   ; 
- D 3 - I - 0x01E710 07:E700: 00        .byte $00   ; 
- D 3 - I - 0x01E711 07:E701: 30        .byte $30   ; 
- - - - - - 0x01E712 07:E702: 1A        .byte $1A   ; 
- D 3 - I - 0x01E713 07:E703: 07        .byte $07   ; 
- D 3 - I - 0x01E714 07:E704: 26        .byte $26   ; 
- D 3 - I - 0x01E715 07:E705: 37        .byte $37   ; 
- D 3 - I - 0x01E716 07:E706: 00        .byte $00   ; 
- D 3 - I - 0x01E717 07:E707: 0D        .byte $0D   ; 
- D 3 - I - 0x01E718 07:E708: 09        .byte $09   ; 
- D 3 - I - 0x01E719 07:E709: 27        .byte $27   ; 
- - - - - - 0x01E71A 07:E70A: 1A        .byte $1A   ; 
- D 3 - I - 0x01E71B 07:E70B: 0F        .byte $0F   ; 
- D 3 - I - 0x01E71C 07:E70C: 06        .byte $06   ; 
- D 3 - I - 0x01E71D 07:E70D: 27        .byte $27   ; 
- D 3 - I - 0x01E71E 07:E70E: 00        .byte $00   ; 
- D 3 - I - 0x01E71F 07:E70F: 06        .byte $06   ; 
- D 3 - I - 0x01E720 07:E710: 27        .byte $27   ; 
- D 3 - I - 0x01E721 07:E711: 37        .byte $37   ; 
- - - - - - 0x01E722 07:E712: 00        .byte $00   ; 
- D 3 - I - 0x01E723 07:E713: 05        .byte $05   ; 
- D 3 - I - 0x01E724 07:E714: 16        .byte $16   ; 
- D 3 - I - 0x01E725 07:E715: 26        .byte $26   ; 
- D 3 - I - 0x01E726 07:E716: 00        .byte $00   ; 
- D 3 - I - 0x01E727 07:E717: 0F        .byte $0F   ; 
- D 3 - I - 0x01E728 07:E718: 27        .byte $27   ; 
- D 3 - I - 0x01E729 07:E719: 30        .byte $30   ; 
- - - - - - 0x01E72A 07:E71A: 00        .byte $00   ; 
- D 3 - I - 0x01E72B 07:E71B: 06        .byte $06   ; 
- D 3 - I - 0x01E72C 07:E71C: 17        .byte $17   ; 
- D 3 - I - 0x01E72D 07:E71D: 36        .byte $36   ; 
- D 3 - I - 0x01E72E 07:E71E: 00        .byte $00   ; 
- D 3 - I - 0x01E72F 07:E71F: 0F        .byte $0F   ; 
- D 3 - I - 0x01E730 07:E720: 05        .byte $05   ; 
- D 3 - I - 0x01E731 07:E721: 15        .byte $15   ; 
- - - - - - 0x01E732 07:E722: 00        .byte $00   ; 
- D 3 - I - 0x01E733 07:E723: 07        .byte $07   ; 
- D 3 - I - 0x01E734 07:E724: 26        .byte $26   ; 
- D 3 - I - 0x01E735 07:E725: 37        .byte $37   ; 
- D 3 - I - 0x01E736 07:E726: 00        .byte $00   ; 
- D 3 - I - 0x01E737 07:E727: 02        .byte $02   ; 
- D 3 - I - 0x01E738 07:E728: 1C        .byte $1C   ; 
- D 3 - I - 0x01E739 07:E729: 28        .byte $28   ; 
- - - - - - 0x01E73A 07:E72A: 00        .byte $00   ; 
- D 3 - I - 0x01E73B 07:E72B: 06        .byte $06   ; 
- D 3 - I - 0x01E73C 07:E72C: 26        .byte $26   ; 
- D 3 - I - 0x01E73D 07:E72D: 36        .byte $36   ; 
- D 3 - I - 0x01E73E 07:E72E: 00        .byte $00   ; 
- D 3 - I - 0x01E73F 07:E72F: 01        .byte $01   ; 
- D 3 - I - 0x01E740 07:E730: 12        .byte $12   ; 
- D 3 - I - 0x01E741 07:E731: 15        .byte $15   ; 
- - - - - - 0x01E742 07:E732: 00        .byte $00   ; 
- D 3 - I - 0x01E743 07:E733: 0F        .byte $0F   ; 
- D 3 - I - 0x01E744 07:E734: 15        .byte $15   ; 
- D 3 - I - 0x01E745 07:E735: 26        .byte $26   ; 
- D 3 - I - 0x01E746 07:E736: 00        .byte $00   ; 
- D 3 - I - 0x01E747 07:E737: 0C        .byte $0C   ; 
- D 3 - I - 0x01E748 07:E738: 1C        .byte $1C   ; 
- D 3 - I - 0x01E749 07:E739: 3C        .byte $3C   ; 
- - - - - - 0x01E74A 07:E73A: 00        .byte $00   ; 
- D 3 - I - 0x01E74B 07:E73B: 07        .byte $07   ; 
- D 3 - I - 0x01E74C 07:E73C: 17        .byte $17   ; 
- D 3 - I - 0x01E74D 07:E73D: 36        .byte $36   ; 
- D 3 - I - 0x01E74E 07:E73E: 00        .byte $00   ; 
- D 3 - I - 0x01E74F 07:E73F: 0D        .byte $0D   ; 
- D 3 - I - 0x01E750 07:E740: 15        .byte $15   ; 
- D 3 - I - 0x01E751 07:E741: 25        .byte $25   ; 
- - - - - - 0x01E752 07:E742: 00        .byte $00   ; 
- D 3 - I - 0x01E753 07:E743: 06        .byte $06   ; 
- D 3 - I - 0x01E754 07:E744: 17        .byte $17   ; 
- D 3 - I - 0x01E755 07:E745: 36        .byte $36   ; 
- D 3 - I - 0x01E756 07:E746: 00        .byte $00   ; 
- D 3 - I - 0x01E757 07:E747: 0F        .byte $0F   ; 
- D 3 - I - 0x01E758 07:E748: 0C        .byte $0C   ; 
- D 3 - I - 0x01E759 07:E749: 1C        .byte $1C   ; 
- - - - - - 0x01E75A 07:E74A: 00        .byte $00   ; 
- D 3 - I - 0x01E75B 07:E74B: 07        .byte $07   ; 
- D 3 - I - 0x01E75C 07:E74C: 26        .byte $26   ; 
- D 3 - I - 0x01E75D 07:E74D: 37        .byte $37   ; 
- D 3 - I - 0x01E75E 07:E74E: 00        .byte $00   ; 
- D 3 - I - 0x01E75F 07:E74F: 0D        .byte $0D   ; 
- D 3 - I - 0x01E760 07:E750: 16        .byte $16   ; 
- D 3 - I - 0x01E761 07:E751: 27        .byte $27   ; 
- - - - - - 0x01E762 07:E752: 00        .byte $00   ; 
- D 3 - I - 0x01E763 07:E753: 0F        .byte $0F   ; 
- D 3 - I - 0x01E764 07:E754: 06        .byte $06   ; 
- D 3 - I - 0x01E765 07:E755: 21        .byte $21   ; 
- D 3 - I - 0x01E766 07:E756: 00        .byte $00   ; 
- D 3 - I - 0x01E767 07:E757: 06        .byte $06   ; 
- D 3 - I - 0x01E768 07:E758: 21        .byte $21   ; 
- D 3 - I - 0x01E769 07:E759: 37        .byte $37   ; 
- - - - - - 0x01E76A 07:E75A: 00        .byte $00   ; 
- D 3 - I - 0x01E76B 07:E75B: 05        .byte $05   ; 
- D 3 - I - 0x01E76C 07:E75C: 16        .byte $16   ; 
- D 3 - I - 0x01E76D 07:E75D: 26        .byte $26   ; 
- D 3 - I - 0x01E76E 07:E75E: 00        .byte $00   ; 
- D 3 - I - 0x01E76F 07:E75F: 0F        .byte $0F   ; 
- D 3 - I - 0x01E770 07:E760: 13        .byte $13   ; 
- D 3 - I - 0x01E771 07:E761: 33        .byte $33   ; 
- - - - - - 0x01E772 07:E762: 00        .byte $00   ; 
- D 3 - I - 0x01E773 07:E763: 06        .byte $06   ; 
- D 3 - I - 0x01E774 07:E764: 17        .byte $17   ; 
- D 3 - I - 0x01E775 07:E765: 36        .byte $36   ; 
- D 3 - I - 0x01E776 07:E766: 00        .byte $00   ; 
- D 3 - I - 0x01E777 07:E767: 0F        .byte $0F   ; 
- D 3 - I - 0x01E778 07:E768: 02        .byte $02   ; 
- D 3 - I - 0x01E779 07:E769: 12        .byte $12   ; 
- - - - - - 0x01E77A 07:E76A: 00        .byte $00   ; 
- D 3 - I - 0x01E77B 07:E76B: 07        .byte $07   ; 
- D 3 - I - 0x01E77C 07:E76C: 26        .byte $26   ; 
- D 3 - I - 0x01E77D 07:E76D: 37        .byte $37   ; 
- D 3 - I - 0x01E77E 07:E76E: 00        .byte $00   ; 
- D 3 - I - 0x01E77F 07:E76F: 09        .byte $09   ; 
- D 3 - I - 0x01E780 07:E770: 19        .byte $19   ; 
- D 3 - I - 0x01E781 07:E771: 29        .byte $29   ; 
- - - - - - 0x01E782 07:E772: 00        .byte $00   ; 
- D 3 - I - 0x01E783 07:E773: 06        .byte $06   ; 
- D 3 - I - 0x01E784 07:E774: 26        .byte $26   ; 
- D 3 - I - 0x01E785 07:E775: 36        .byte $36   ; 
- D 3 - I - 0x01E786 07:E776: 00        .byte $00   ; 
- D 3 - I - 0x01E787 07:E777: 0D        .byte $0D   ; 
- D 3 - I - 0x01E788 07:E778: 19        .byte $19   ; 
- D 3 - I - 0x01E789 07:E779: 15        .byte $15   ; 
- - - - - - 0x01E78A 07:E77A: 00        .byte $00   ; 
- D 3 - I - 0x01E78B 07:E77B: 0F        .byte $0F   ; 
- D 3 - I - 0x01E78C 07:E77C: 1B        .byte $1B   ; 
- D 3 - I - 0x01E78D 07:E77D: 26        .byte $26   ; 
- D 3 - I - 0x01E78E 07:E77E: 00        .byte $00   ; 
- D 3 - I - 0x01E78F 07:E77F: 06        .byte $06   ; 
- D 3 - I - 0x01E790 07:E780: 16        .byte $16   ; 
- D 3 - I - 0x01E791 07:E781: 27        .byte $27   ; 


; bzk garbage
- - - - - - 0x01E792 07:E782: BA        .byte $BA   ; 



sub_E783_select_colors_for_fighter:
C - - - - - 0x01E793 07:E783: 0A        ASL
C - - - - - 0x01E794 07:E784: 0A        ASL
C - - - - - 0x01E795 07:E785: A8        TAY
C - - - - - 0x01E796 07:E786: A9 A0     LDA #< tbl_E7A0_spr_colors
C - - - - - 0x01E798 07:E788: 85 00     STA ram_0000
C - - - - - 0x01E79A 07:E78A: A9 E7     LDA #> tbl_E7A0_spr_colors
C - - - - - 0x01E79C 07:E78C: 85 01     STA ram_0001
C - - - - - 0x01E79E 07:E78E: 8A        TXA
C - - - - - 0x01E79F 07:E78F: 48        PHA
C - - - - - 0x01E7A0 07:E790: A9 10     LDA #$10
C - - - - - 0x01E7A2 07:E792: E0 10     CPX #$10
C - - - - - 0x01E7A4 07:E794: F0 02     BEQ bra_E798
C - - - - - 0x01E7A6 07:E796: A9 18     LDA #$18
bra_E798:
C - - - - - 0x01E7A8 07:E798: A2 04     LDX #$04
C - - - - - 0x01E7AA 07:E79A: 20 B2 FB  JSR sub_FBB2_write_palette_to_ppu
C - - - - - 0x01E7AD 07:E79D: 68        PLA
C - - - - - 0x01E7AE 07:E79E: AA        TAX
C - - - - - 0x01E7AF 07:E79F: 60        RTS



tbl_E7A0_spr_colors:
- D 3 - I - 0x01E7B0 07:E7A0: 0F        .byte $0F, $12, $26, $36   ; 00
- D 3 - I - 0x01E7B4 07:E7A4: 0F        .byte $0F, $16, $26, $30   ; 01
- D 3 - I - 0x01E7B8 07:E7A8: 0F        .byte $0F, $18, $27, $36   ; 02
- D 3 - I - 0x01E7BC 07:E7AC: 0F        .byte $0F, $06, $27, $37   ; 03
- D 3 - I - 0x01E7C0 07:E7B0: 0F        .byte $0F, $17, $27, $36   ; 04
- D 3 - I - 0x01E7C4 07:E7B4: 0F        .byte $0F, $16, $27, $37   ; 05
- D 3 - I - 0x01E7C8 07:E7B8: 0F        .byte $0F, $1C, $2C, $3C   ; 06
- D 3 - I - 0x01E7CC 07:E7BC: 0F        .byte $0F, $16, $26, $36   ; 07
- D 3 - I - 0x01E7D0 07:E7C0: 0F        .byte $0F, $15, $26, $36   ; 08
; colors for p2 if same fighters
- D 3 - I - 0x01E7D4 07:E7C4: 0F        .byte $0F, $16, $26, $36   ; 09 (00)
- D 3 - I - 0x01E7D8 07:E7C8: 0F        .byte $0F, $16, $27, $2C   ; 0A (01)
- D 3 - I - 0x01E7DC 07:E7CC: 0F        .byte $0F, $16, $27, $36   ; 0B (02)
- D 3 - I - 0x01E7E0 07:E7D0: 0F        .byte $0F, $06, $22, $32   ; 0C (03)
- D 3 - I - 0x01E7E4 07:E7D4: 0F        .byte $0F, $13, $23, $33   ; 0D (04)
- D 3 - I - 0x01E7E8 07:E7D8: 0F        .byte $0F, $12, $27, $37   ; 0E (05)
- D 3 - I - 0x01E7EC 07:E7DC: 0F        .byte $0F, $1B, $2B, $3B   ; 0F (06)
- D 3 - I - 0x01E7F0 07:E7E0: 0F        .byte $0F, $05, $26, $36   ; 10 (07)
- D 3 - I - 0x01E7F4 07:E7E4: 0F        .byte $0F, $19, $26, $36   ; 11 (08)


; bzk garbage
- - - - - - 0x01E7F8 07:E7E8: BA        .byte $BA   ; 



sub_E7E9_draw_screen:
; bzk optimize, A always = 00 when jumped here
; same optimize goes for internal subroutines
C - - - - - 0x01E7F9 07:E7E9: 48        PHA
C - - - - - 0x01E7FA 07:E7EA: A9 00     LDA #$00
C - - - - - 0x01E7FC 07:E7EC: 8D 00 20  STA $2000
C - - - - - 0x01E7FF 07:E7EF: 8D 01 20  STA $2001
C - - - - - 0x01E802 07:E7F2: A9 38     LDA #$38    ; 0x010010
C - - - - - 0x01E804 07:E7F4: 8D 00 70  STA $7000
C - - - - - 0x01E807 07:E7F7: 8A        TXA
C - - - - - 0x01E808 07:E7F8: 0A        ASL
C - - - - - 0x01E809 07:E7F9: AA        TAX
C - - - - - 0x01E80A 07:E7FA: BD 00 80  LDA tbl_0x010010_screens,X
C - - - - - 0x01E80D 07:E7FD: 85 00     STA ram_0000
C - - - - - 0x01E80F 07:E7FF: BD 01 80  LDA tbl_0x010010_screens + $01,X
C - - - - - 0x01E812 07:E802: 85 01     STA ram_0001
C - - - - - 0x01E814 07:E804: C9 A0     CMP #$A0
C - - - - - 0x01E816 07:E806: 90 0A     BCC bra_E812
C - - - - - 0x01E818 07:E808: 38        SEC
C - - - - - 0x01E819 07:E809: E9 20     SBC #$20
C - - - - - 0x01E81B 07:E80B: 85 01     STA ram_0001
C - - - - - 0x01E81D 07:E80D: A9 39     LDA #$39    ; 0x012010
C - - - - - 0x01E81F 07:E80F: 8D 00 70  STA $7000
bra_E812:
C - - - - - 0x01E822 07:E812: 68        PLA
C - - - - - 0x01E823 07:E813: 20 CE FB  JSR sub_FBCE_draw_background
C - - - - - 0x01E826 07:E816: 60        RTS



sub_E817:
C - - - - - 0x01E827 07:E817: A6 27     LDX ram_screen
C - - - - - 0x01E829 07:E819: A9 00     LDA #$00
C - - - - - 0x01E82B 07:E81B: 20 E9 E7  JSR sub_E7E9_draw_screen
C - - - - - 0x01E82E 07:E81E: A2 09     LDX #$09
C - - - - - 0x01E830 07:E820: A9 00     LDA #$00
C - - - - - 0x01E832 07:E822: 20 E9 E7  JSR sub_E7E9_draw_screen
C - - - - - 0x01E835 07:E825: 60        RTS



sub_E826_prg_banks_select:
C - - - - - 0x01E836 07:E826: C9 04     CMP #$04
C - - - - - 0x01E838 07:E828: 90 04     BCC bra_E82E_03_or_less
C - - - - - 0x01E83A 07:E82A: A9 37     LDA #$37    ; 0x00E010
C - - - - - 0x01E83C 07:E82C: D0 02     BNE bra_E830
bra_E82E_03_or_less:
C - - - - - 0x01E83E 07:E82E: A9 3D     LDA #$3D    ; 0x01A010
bra_E830:
C - - - - - 0x01E840 07:E830: 8D 01 70  STA $7001
C - - - - - 0x01E843 07:E833: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01E845 07:E835: 8D 00 70  STA $7000
C - - - - - 0x01E848 07:E838: 60        RTS



sub_E839:
C - - - - - 0x01E849 07:E839: 9D 0B 03  STA ram_030B,X
C - - - - - 0x01E84C 07:E83C: 98        TYA
C - - - - - 0x01E84D 07:E83D: 48        PHA
C - - - - - 0x01E84E 07:E83E: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E851 07:E841: 20 26 E8  JSR sub_E826_prg_banks_select
C - - - - - 0x01E854 07:E844: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E857 07:E847: 0A        ASL
C - - - - - 0x01E858 07:E848: A8        TAY
C - - - - - 0x01E859 07:E849: B9 00 A4  LDA $A400,Y
C - - - - - 0x01E85C 07:E84C: 85 00     STA ram_0000
C - - - - - 0x01E85E 07:E84E: B9 01 A4  LDA $A401,Y
C - - - - - 0x01E861 07:E851: 85 01     STA ram_0001
C - - - - - 0x01E863 07:E853: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01E866 07:E856: 0A        ASL
C - - - - - 0x01E867 07:E857: A8        TAY
C - - - - - 0x01E868 07:E858: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E86A 07:E85A: 9D 06 03  STA ram_0306,X
C - - - - - 0x01E86D 07:E85D: C8        INY
C - - - - - 0x01E86E 07:E85E: B1 00     LDA (ram_0000),Y
C - - - - - 0x01E870 07:E860: 9D 07 03  STA ram_0307,X
C - - - - - 0x01E873 07:E863: A9 00     LDA #$00
C - - - - - 0x01E875 07:E865: 9D 09 03  STA ram_0309,X
C - - - - - 0x01E878 07:E868: 9D 0A 03  STA ram_030A,X
C - - - - - 0x01E87B 07:E86B: 9D 08 03  STA ram_0308,X
C - - - - - 0x01E87E 07:E86E: A9 18     LDA #$18
C - - - - - 0x01E880 07:E870: 9D 0E 03  STA ram_030E,X
C - - - - - 0x01E883 07:E873: A9 40     LDA #$40
C - - - - - 0x01E885 07:E875: 9D 0F 03  STA ram_030F,X
C - - - - - 0x01E888 07:E878: BD 00 03  LDA ram_0300,X
C - - - - - 0x01E88B 07:E87B: 29 30     AND #$30
C - - - - - 0x01E88D 07:E87D: 09 80     ORA #$80
C - - - - - 0x01E88F 07:E87F: 9D 00 03  STA ram_0300,X
C - - - - - 0x01E892 07:E882: 68        PLA
C - - - - - 0x01E893 07:E883: A8        TAY
C - - - - - 0x01E894 07:E884: 60        RTS



sub_E885:
C - - - - - 0x01E895 07:E885: 48        PHA
C - - - - - 0x01E896 07:E886: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E899 07:E889: C9 00     CMP #$00
C - - - - - 0x01E89B 07:E88B: D0 12     BNE bra_E89F
C - - - - - 0x01E89D 07:E88D: 68        PLA
C - - - - - 0x01E89E 07:E88E: C9 40     CMP #$40
C - - - - - 0x01E8A0 07:E890: D0 0E     BNE bra_E8A0
C - - - - - 0x01E8A2 07:E892: 48        PHA
C - - - - - 0x01E8A3 07:E893: BD 05 04  LDA ram_0405,X
C - - - - - 0x01E8A6 07:E896: F0 05     BEQ bra_E89D
C - - - - - 0x01E8A8 07:E898: BD 08 03  LDA ram_0308,X
C - - - - - 0x01E8AB 07:E89B: D0 02     BNE bra_E89F
bra_E89D:
C - - - - - 0x01E8AD 07:E89D: 68        PLA
C - - - - - 0x01E8AE 07:E89E: 60        RTS
bra_E89F:
C - - - - - 0x01E8AF 07:E89F: 68        PLA
bra_E8A0:
C - - - - - 0x01E8B0 07:E8A0: 20 39 E8  JSR sub_E839
C - - - - - 0x01E8B3 07:E8A3: 98        TYA
C - - - - - 0x01E8B4 07:E8A4: 48        PHA
C - - - - - 0x01E8B5 07:E8A5: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01E8B8 07:E8A8: C9 02     CMP #$02
C - - - - - 0x01E8BA 07:E8AA: F0 03     BEQ bra_E8AF
C - - - - - 0x01E8BC 07:E8AC: 20 22 EF  JSR sub_EF22
bra_E8AF:
C - - - - - 0x01E8BF 07:E8AF: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01E8C2 07:E8B2: A8        TAY
C - - - - - 0x01E8C3 07:E8B3: C0 18     CPY #$18
C - - - - - 0x01E8C5 07:E8B5: D0 05     BNE bra_E8BC
C - - - - - 0x01E8C7 07:E8B7: A9 08     LDA #$08
C - - - - - 0x01E8C9 07:E8B9: 9D 0B 04  STA ram_040B,X
bra_E8BC:
C - - - - - 0x01E8CC 07:E8BC: C0 28     CPY #$28
C - - - - - 0x01E8CE 07:E8BE: 90 11     BCC bra_E8D1
C - - - - - 0x01E8D0 07:E8C0: C0 32     CPY #$32
C - - - - - 0x01E8D2 07:E8C2: B0 04     BCS bra_E8C8
C - - - - - 0x01E8D4 07:E8C4: A9 27     LDA #$27
C - - - - - 0x01E8D6 07:E8C6: D0 06     BNE bra_E8CE
bra_E8C8:
C - - - - - 0x01E8D8 07:E8C8: C0 3C     CPY #$3C
C - - - - - 0x01E8DA 07:E8CA: B0 05     BCS bra_E8D1
C - - - - - 0x01E8DC 07:E8CC: A9 26     LDA #$26
bra_E8CE:
C - - - - - 0x01E8DE 07:E8CE: 20 E9 F7  JSR sub_F7E9
bra_E8D1:
C - - - - - 0x01E8E1 07:E8D1: C0 22     CPY #$22
C - - - - - 0x01E8E3 07:E8D3: B0 06     BCS bra_E8DB
C - - - - - 0x01E8E5 07:E8D5: B9 69 E9  LDA tbl_E969,Y
C - - - - - 0x01E8E8 07:E8D8: 9D 0C 05  STA ram_050C,X
bra_E8DB:
C - - - - - 0x01E8EB 07:E8DB: C0 3C     CPY #$3C
C - - - - - 0x01E8ED 07:E8DD: B0 09     BCS bra_E8E8
C - - - - - 0x01E8EF 07:E8DF: B9 B8 E9  LDA tbl_E9B8,Y
C - - - - - 0x01E8F2 07:E8E2: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01E8F5 07:E8E5: 4C 09 E9  JMP loc_E909
bra_E8E8:
C - - - - - 0x01E8F8 07:E8E8: C0 41     CPY #$41
C - - - - - 0x01E8FA 07:E8EA: B0 1D     BCS bra_E909
C - - - - - 0x01E8FC 07:E8EC: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E8FF 07:E8EF: 0A        ASL
C - - - - - 0x01E900 07:E8F0: 0A        ASL
C - - - - - 0x01E901 07:E8F1: 18        CLC
C - - - - - 0x01E902 07:E8F2: 7D 0A 05  ADC ram_050A,X
C - - - - - 0x01E905 07:E8F5: 18        CLC
C - - - - - 0x01E906 07:E8F6: 7D 0B 03  ADC ram_030B,X
C - - - - - 0x01E909 07:E8F9: 38        SEC
C - - - - - 0x01E90A 07:E8FA: E9 3C     SBC #$3C
C - - - - - 0x01E90C 07:E8FC: A8        TAY
C - - - - - 0x01E90D 07:E8FD: B9 8B E9  LDA tbl_E98B,Y
C - - - - - 0x01E910 07:E900: 9D 0C 05  STA ram_050C,X
C - - - - - 0x01E913 07:E903: B9 F4 E9  LDA tbl_E9F4,Y
C - - - - - 0x01E916 07:E906: 9D 0F 05  STA ram_050F,X
bra_E909:
loc_E909:
C D 3 - - - 0x01E919 07:E909: E0 10     CPX #$10
C - - - - - 0x01E91B 07:E90B: D0 04     BNE bra_E911
C - - - - - 0x01E91D 07:E90D: A0 40     LDY #$40
C - - - - - 0x01E91F 07:E90F: D0 02     BNE bra_E913
bra_E911:
C - - - - - 0x01E921 07:E911: A0 10     LDY #$10
bra_E913:
C - - - - - 0x01E923 07:E913: A9 40     LDA #$40
C - - - - - 0x01E925 07:E915: 85 A0     STA ram_00A0
C - - - - - 0x01E927 07:E917: 20 95 FD  JSR sub_FD95
C - - - - - 0x01E92A 07:E91A: A5 A1     LDA ram_00A1
C - - - - - 0x01E92C 07:E91C: D0 1B     BNE bra_E939
C - - - - - 0x01E92E 07:E91E: 20 95 FD  JSR sub_FD95
C - - - - - 0x01E931 07:E921: A5 A1     LDA ram_00A1
C - - - - - 0x01E933 07:E923: 0A        ASL
C - - - - - 0x01E934 07:E924: 18        CLC
C - - - - - 0x01E935 07:E925: 69 80     ADC #$80
C - - - - - 0x01E937 07:E927: 85 01     STA ram_0001
C - - - - - 0x01E939 07:E929: C9 85     CMP #$85
C - - - - - 0x01E93B 07:E92B: 90 0C     BCC bra_E939
C - - - - - 0x01E93D 07:E92D: A5 A1     LDA ram_00A1
C - - - - - 0x01E93F 07:E92F: 0A        ASL
C - - - - - 0x01E940 07:E930: 0A        ASL
C - - - - - 0x01E941 07:E931: 65 A1     ADC ram_00A1
C - - - - - 0x01E943 07:E933: 85 00     STA ram_0000
C - - - - - 0x01E945 07:E935: A5 10     LDA ram_0010
C - - - - - 0x01E947 07:E937: EA        NOP
C - - - - - 0x01E948 07:E938: EA        NOP
bra_E939:
C - - - - - 0x01E949 07:E939: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01E94C 07:E93C: C9 08     CMP #$08
C - - - - - 0x01E94E 07:E93E: D0 26     BNE bra_E966
C - - - - - 0x01E950 07:E940: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01E953 07:E943: C9 3C     CMP #$3C
C - - - - - 0x01E955 07:E945: D0 1F     BNE bra_E966
C - - - - - 0x01E957 07:E947: 20 83 F3  JSR sub_F383
C - - - - - 0x01E95A 07:E94A: 4A        LSR
C - - - - - 0x01E95B 07:E94B: 4A        LSR
C - - - - - 0x01E95C 07:E94C: 4A        LSR
C - - - - - 0x01E95D 07:E94D: 48        PHA
C - - - - - 0x01E95E 07:E94E: BD 02 03  LDA ram_0302,X
C - - - - - 0x01E961 07:E951: D9 02 03  CMP ram_0302,Y
C - - - - - 0x01E964 07:E954: B0 04     BCS bra_E95A
C - - - - - 0x01E966 07:E956: 68        PLA
C - - - - - 0x01E967 07:E957: 4C 60 E9  JMP loc_E960
bra_E95A:
C - - - - - 0x01E96A 07:E95A: 68        PLA
C - - - - - 0x01E96B 07:E95B: 49 FF     EOR #$FF
C - - - - - 0x01E96D 07:E95D: 18        CLC
C - - - - - 0x01E96E 07:E95E: 69 01     ADC #$01
loc_E960:
C D 3 - - - 0x01E970 07:E960: 9D 00 04  STA ram_0400,X
C - - - - - 0x01E973 07:E963: 4C 66 E9  JMP loc_E966
bra_E966:
loc_E966:
C D 3 - - - 0x01E976 07:E966: 68        PLA
C - - - - - 0x01E977 07:E967: A8        TAY
C - - - - - 0x01E978 07:E968: 60        RTS



tbl_E969:
- D 3 - - - 0x01E979 07:E969: 01        .byte $01   ; 
- D 3 - - - 0x01E97A 07:E96A: 03        .byte $03   ; 
- D 3 - - - 0x01E97B 07:E96B: 01        .byte $01   ; 
- D 3 - - - 0x01E97C 07:E96C: 01        .byte $01   ; 
- D 3 - - - 0x01E97D 07:E96D: 01        .byte $01   ; 
- D 3 - - - 0x01E97E 07:E96E: 02        .byte $02   ; 
- D 3 - - - 0x01E97F 07:E96F: 02        .byte $02   ; 
- D 3 - - - 0x01E980 07:E970: 02        .byte $02   ; 
- D 3 - - - 0x01E981 07:E971: 05        .byte $05   ; 
- D 3 - - - 0x01E982 07:E972: 01        .byte $01   ; 
- D 3 - - - 0x01E983 07:E973: 07        .byte $07   ; 
- D 3 - - - 0x01E984 07:E974: 03        .byte $03   ; 
- D 3 - - - 0x01E985 07:E975: 01        .byte $01   ; 
- D 3 - - - 0x01E986 07:E976: 01        .byte $01   ; 
- D 3 - - - 0x01E987 07:E977: 01        .byte $01   ; 
- D 3 - - - 0x01E988 07:E978: 01        .byte $01   ; 
- D 3 - - - 0x01E989 07:E979: 01        .byte $01   ; 
- D 3 - - - 0x01E98A 07:E97A: 03        .byte $03   ; 
- D 3 - - - 0x01E98B 07:E97B: 03        .byte $03   ; 
- D 3 - - - 0x01E98C 07:E97C: 02        .byte $02   ; 
- D 3 - - - 0x01E98D 07:E97D: 00        .byte $00   ; 
- D 3 - - - 0x01E98E 07:E97E: 00        .byte $00   ; 
- D 3 - - - 0x01E98F 07:E97F: 00        .byte $00   ; 
- D 3 - - - 0x01E990 07:E980: 40        .byte $40   ; 
- D 3 - - - 0x01E991 07:E981: 01        .byte $01   ; 
- D 3 - - - 0x01E992 07:E982: 41        .byte $41   ; 
- D 3 - - - 0x01E993 07:E983: 42        .byte $42   ; 
- D 3 - - - 0x01E994 07:E984: 43        .byte $43   ; 
- D 3 - - - 0x01E995 07:E985: 43        .byte $43   ; 
- D 3 - - - 0x01E996 07:E986: 00        .byte $00   ; 
- D 3 - - - 0x01E997 07:E987: 01        .byte $01   ; 
- D 3 - - - 0x01E998 07:E988: 01        .byte $01   ; 
- D 3 - - - 0x01E999 07:E989: 03        .byte $03   ; 
- D 3 - - - 0x01E99A 07:E98A: 03        .byte $03   ; 



tbl_E98B:
- D 3 - - - 0x01E99B 07:E98B: 02        .byte $02   ; 
- D 3 - - - 0x01E99C 07:E98C: 01        .byte $01   ; 
- - - - - - 0x01E99D 07:E98D: 00        .byte $00   ; 
- - - - - - 0x01E99E 07:E98E: 00        .byte $00   ; 
- D 3 - - - 0x01E99F 07:E98F: 02        .byte $02   ; 
- D 3 - - - 0x01E9A0 07:E990: 02        .byte $02   ; 
- D 3 - - - 0x01E9A1 07:E991: 02        .byte $02   ; 
- - - - - - 0x01E9A2 07:E992: 00        .byte $00   ; 
- D 3 - - - 0x01E9A3 07:E993: 01        .byte $01   ; 
- D 3 - - - 0x01E9A4 07:E994: 00        .byte $00   ; 
- D 3 - - - 0x01E9A5 07:E995: 02        .byte $02   ; 
- - - - - - 0x01E9A6 07:E996: 00        .byte $00   ; 
- - - - - - 0x01E9A7 07:E997: 00        .byte $00   ; 
- D 3 - - - 0x01E9A8 07:E998: 01        .byte $01   ; 
- D 3 - - - 0x01E9A9 07:E999: 00        .byte $00   ; 
- - - - - - 0x01E9AA 07:E99A: 00        .byte $00   ; 
- D 3 - - - 0x01E9AB 07:E99B: 01        .byte $01   ; 
- - - - - - 0x01E9AC 07:E99C: 00        .byte $00   ; 
- D 3 - - - 0x01E9AD 07:E99D: 02        .byte $02   ; 
- D 3 - - - 0x01E9AE 07:E99E: 02        .byte $02   ; 
- - - - - - 0x01E9AF 07:E99F: 00        .byte $00   ; 
- D 3 - - - 0x01E9B0 07:E9A0: 02        .byte $02   ; 
- D 3 - - - 0x01E9B1 07:E9A1: 02        .byte $02   ; 
- D 3 - - - 0x01E9B2 07:E9A2: 01        .byte $01   ; 
- D 3 - - - 0x01E9B3 07:E9A3: 00        .byte $00   ; 
- - - - - - 0x01E9B4 07:E9A4: 02        .byte $02   ; 
- - - - - - 0x01E9B5 07:E9A5: 02        .byte $02   ; 
- - - - - - 0x01E9B6 07:E9A6: 00        .byte $00   ; 
- - - - - - 0x01E9B7 07:E9A7: 01        .byte $01   ; 
- - - - - - 0x01E9B8 07:E9A8: 00        .byte $00   ; 
- D 3 - - - 0x01E9B9 07:E9A9: 02        .byte $02   ; 
- D 3 - - - 0x01E9BA 07:E9AA: 02        .byte $02   ; 
- D 3 - - - 0x01E9BB 07:E9AB: 02        .byte $02   ; 
- D 3 - - - 0x01E9BC 07:E9AC: 01        .byte $01   ; 
- - - - - - 0x01E9BD 07:E9AD: 02        .byte $02   ; 
- - - - - - 0x01E9BE 07:E9AE: 00        .byte $00   ; 
- D 3 - - - 0x01E9BF 07:E9AF: 02        .byte $02   ; 
- D 3 - - - 0x01E9C0 07:E9B0: 01        .byte $01   ; 
- D 3 - - - 0x01E9C1 07:E9B1: 01        .byte $01   ; 
- D 3 - - - 0x01E9C2 07:E9B2: 00        .byte $00   ; 
- D 3 - - - 0x01E9C3 07:E9B3: 02        .byte $02   ; 
- D 3 - - - 0x01E9C4 07:E9B4: 02        .byte $02   ; 
- D 3 - - - 0x01E9C5 07:E9B5: 02        .byte $02   ; 
- D 3 - - - 0x01E9C6 07:E9B6: 02        .byte $02   ; 
- D 3 - - - 0x01E9C7 07:E9B7: 02        .byte $02   ; 



tbl_E9B8:
- D 3 - - - 0x01E9C8 07:E9B8: 00        .byte $00   ; 
- D 3 - - - 0x01E9C9 07:E9B9: 00        .byte $00   ; 
- D 3 - - - 0x01E9CA 07:E9BA: 00        .byte $00   ; 
- D 3 - - - 0x01E9CB 07:E9BB: 00        .byte $00   ; 
- D 3 - - - 0x01E9CC 07:E9BC: 00        .byte $00   ; 
- D 3 - - - 0x01E9CD 07:E9BD: 00        .byte $00   ; 
- D 3 - - - 0x01E9CE 07:E9BE: 00        .byte $00   ; 
- D 3 - - - 0x01E9CF 07:E9BF: 00        .byte $00   ; 
- D 3 - - - 0x01E9D0 07:E9C0: 00        .byte $00   ; 
- D 3 - - - 0x01E9D1 07:E9C1: 00        .byte $00   ; 
- D 3 - - - 0x01E9D2 07:E9C2: 00        .byte $00   ; 
- D 3 - - - 0x01E9D3 07:E9C3: 00        .byte $00   ; 
- D 3 - - - 0x01E9D4 07:E9C4: 08        .byte $08   ; 
- D 3 - - - 0x01E9D5 07:E9C5: 08        .byte $08   ; 
- D 3 - - - 0x01E9D6 07:E9C6: 08        .byte $08   ; 
- D 3 - - - 0x01E9D7 07:E9C7: 08        .byte $08   ; 
- D 3 - - - 0x01E9D8 07:E9C8: 08        .byte $08   ; 
- D 3 - - - 0x01E9D9 07:E9C9: 08        .byte $08   ; 
- D 3 - - - 0x01E9DA 07:E9CA: 08        .byte $08   ; 
- D 3 - - - 0x01E9DB 07:E9CB: 08        .byte $08   ; 
- D 3 - - - 0x01E9DC 07:E9CC: 00        .byte $00   ; 
- D 3 - - - 0x01E9DD 07:E9CD: 00        .byte $00   ; 
- D 3 - - - 0x01E9DE 07:E9CE: 00        .byte $00   ; 
- D 3 - - - 0x01E9DF 07:E9CF: 08        .byte $08   ; 
- D 3 - - - 0x01E9E0 07:E9D0: 08        .byte $08   ; 
- D 3 - - - 0x01E9E1 07:E9D1: 00        .byte $00   ; 
- D 3 - - - 0x01E9E2 07:E9D2: 00        .byte $00   ; 
- D 3 - - - 0x01E9E3 07:E9D3: 00        .byte $00   ; 
- D 3 - - - 0x01E9E4 07:E9D4: 00        .byte $00   ; 
- D 3 - - - 0x01E9E5 07:E9D5: 00        .byte $00   ; 
- D 3 - - - 0x01E9E6 07:E9D6: 08        .byte $08   ; 
- D 3 - - - 0x01E9E7 07:E9D7: 08        .byte $08   ; 
- D 3 - - - 0x01E9E8 07:E9D8: 08        .byte $08   ; 
- D 3 - - - 0x01E9E9 07:E9D9: 08        .byte $08   ; 
- D 3 - - - 0x01E9EA 07:E9DA: 00        .byte $00   ; 
- D 3 - - - 0x01E9EB 07:E9DB: 00        .byte $00   ; 
- D 3 - - - 0x01E9EC 07:E9DC: 00        .byte $00   ; 
- D 3 - - - 0x01E9ED 07:E9DD: 00        .byte $00   ; 
- D 3 - - - 0x01E9EE 07:E9DE: 00        .byte $00   ; 
- D 3 - - - 0x01E9EF 07:E9DF: 00        .byte $00   ; 
- D 3 - - - 0x01E9F0 07:E9E0: 04        .byte $04   ; 
- D 3 - - - 0x01E9F1 07:E9E1: 05        .byte $05   ; 
- D 3 - - - 0x01E9F2 07:E9E2: 04        .byte $04   ; 
- D 3 - - - 0x01E9F3 07:E9E3: 05        .byte $05   ; 
- D 3 - - - 0x01E9F4 07:E9E4: 04        .byte $04   ; 
- D 3 - - - 0x01E9F5 07:E9E5: 05        .byte $05   ; 
- D 3 - - - 0x01E9F6 07:E9E6: 04        .byte $04   ; 
- D 3 - - - 0x01E9F7 07:E9E7: 05        .byte $05   ; 
- D 3 - - - 0x01E9F8 07:E9E8: 04        .byte $04   ; 
- D 3 - - - 0x01E9F9 07:E9E9: 05        .byte $05   ; 
- D 3 - - - 0x01E9FA 07:E9EA: 06        .byte $06   ; 
- D 3 - - - 0x01E9FB 07:E9EB: 07        .byte $07   ; 
- D 3 - - - 0x01E9FC 07:E9EC: 06        .byte $06   ; 
- D 3 - - - 0x01E9FD 07:E9ED: 07        .byte $07   ; 
- D 3 - - - 0x01E9FE 07:E9EE: 06        .byte $06   ; 
- D 3 - - - 0x01E9FF 07:E9EF: 07        .byte $07   ; 
- D 3 - - - 0x01EA00 07:E9F0: 06        .byte $06   ; 
- D 3 - - - 0x01EA01 07:E9F1: 07        .byte $07   ; 
- D 3 - - - 0x01EA02 07:E9F2: 06        .byte $06   ; 
- D 3 - - - 0x01EA03 07:E9F3: 07        .byte $07   ; 



tbl_E9F4:
- D 3 - - - 0x01EA04 07:E9F4: 05        .byte $05   ; 
- D 3 - - - 0x01EA05 07:E9F5: 04        .byte $04   ; 
- - - - - - 0x01EA06 07:E9F6: 00        .byte $00   ; 
- - - - - - 0x01EA07 07:E9F7: 00        .byte $00   ; 
- D 3 - - - 0x01EA08 07:E9F8: 04        .byte $04   ; 
- D 3 - - - 0x01EA09 07:E9F9: 05        .byte $05   ; 
- D 3 - - - 0x01EA0A 07:E9FA: 07        .byte $07   ; 
- - - - - - 0x01EA0B 07:E9FB: 00        .byte $00   ; 
- D 3 - - - 0x01EA0C 07:E9FC: 07        .byte $07   ; 
- D 3 - - - 0x01EA0D 07:E9FD: 00        .byte $00   ; 
- D 3 - - - 0x01EA0E 07:E9FE: 05        .byte $05   ; 
- - - - - - 0x01EA0F 07:E9FF: 00        .byte $00   ; 
- - - - - - 0x01EA10 07:EA00: 00        .byte $00   ; 
- D 3 - - - 0x01EA11 07:EA01: 07        .byte $07   ; 
- D 3 - - - 0x01EA12 07:EA02: 00        .byte $00   ; 
- - - - - - 0x01EA13 07:EA03: 00        .byte $00   ; 
- D 3 - - - 0x01EA14 07:EA04: 07        .byte $07   ; 
- - - - - - 0x01EA15 07:EA05: 00        .byte $00   ; 
- D 3 - - - 0x01EA16 07:EA06: 07        .byte $07   ; 
- D 3 - - - 0x01EA17 07:EA07: 04        .byte $04   ; 
- - - - - - 0x01EA18 07:EA08: 00        .byte $00   ; 
- D 3 - - - 0x01EA19 07:EA09: 07        .byte $07   ; 
- D 3 - - - 0x01EA1A 07:EA0A: 05        .byte $05   ; 
- D 3 - - - 0x01EA1B 07:EA0B: 07        .byte $07   ; 
- D 3 - - - 0x01EA1C 07:EA0C: 00        .byte $00   ; 
- - - - - - 0x01EA1D 07:EA0D: 05        .byte $05   ; 
- - - - - - 0x01EA1E 07:EA0E: 07        .byte $07   ; 
- - - - - - 0x01EA1F 07:EA0F: 00        .byte $00   ; 
- - - - - - 0x01EA20 07:EA10: 07        .byte $07   ; 
- - - - - - 0x01EA21 07:EA11: 00        .byte $00   ; 
- D 3 - - - 0x01EA22 07:EA12: 00        .byte $00   ; 
- D 3 - - - 0x01EA23 07:EA13: 00        .byte $00   ; 
- D 3 - - - 0x01EA24 07:EA14: 07        .byte $07   ; 
- D 3 - - - 0x01EA25 07:EA15: 07        .byte $07   ; 
- - - - - - 0x01EA26 07:EA16: 00        .byte $00   ; 
- - - - - - 0x01EA27 07:EA17: 00        .byte $00   ; 
- D 3 - - - 0x01EA28 07:EA18: 07        .byte $07   ; 
- D 3 - - - 0x01EA29 07:EA19: 07        .byte $07   ; 
- D 3 - - - 0x01EA2A 07:EA1A: 07        .byte $07   ; 
- D 3 - - - 0x01EA2B 07:EA1B: 00        .byte $00   ; 
- D 3 - - - 0x01EA2C 07:EA1C: 00        .byte $00   ; 
- D 3 - - - 0x01EA2D 07:EA1D: 05        .byte $05   ; 
- D 3 - - - 0x01EA2E 07:EA1E: 00        .byte $00   ; 
- D 3 - - - 0x01EA2F 07:EA1F: 05        .byte $05   ; 
- D 3 - - - 0x01EA30 07:EA20: 05        .byte $05   ; 



sub_EA21:
C - - - - - 0x01EA31 07:EA21: A2 10     LDX #$10
C - - - - - 0x01EA33 07:EA23: BD 0C 03  LDA ram_030C,X
; !!!
C D 3 - - - 0x01EA36 07:EA26: 8D 00 70  STA $7000
C D 3 - - - 0x01EA39 07:EA29: BD 0D 03  LDA ram_030D,X
C - - - - - 0x01EA3C 07:EA2C: 4A        LSR
C - - - - - 0x01EA3D 07:EA2D: A8        TAY
C - - - - - 0x01EA3E 07:EA2E: AD 02 80  LDA $8002
C - - - - - 0x01EA41 07:EA31: 85 00     STA ram_0000
C - - - - - 0x01EA43 07:EA33: AD 03 80  LDA $8003
C - - - - - 0x01EA46 07:EA36: 85 01     STA ram_0001
C - - - - - 0x01EA48 07:EA38: C9 A0     CMP #$A0
C - - - - - 0x01EA4A 07:EA3A: 90 05     BCC bra_EA41
C - - - - - 0x01EA4C 07:EA3C: 38        SEC
C - - - - - 0x01EA4D 07:EA3D: E9 20     SBC #$20
C - - - - - 0x01EA4F 07:EA3F: 85 01     STA ram_0001
bra_EA41:
C - - - - - 0x01EA51 07:EA41: B1 00     LDA (ram_0000),Y
C - - - - - 0x01EA53 07:EA43: 85 25     STA ram_0025
C - - - - - 0x01EA55 07:EA45: BC 0A 05  LDY ram_050A,X
C - - - - - 0x01EA58 07:EA48: B9 0B C0  LDA tbl_C00B,Y
C - - - - - 0x01EA5B 07:EA4B: 18        CLC
C - - - - - 0x01EA5C 07:EA4C: 65 25     ADC ram_0025
C - - - - - 0x01EA5E 07:EA4E: 85 25     STA ram_0025
C - - - - - 0x01EA60 07:EA50: A2 40     LDX #$40
C - - - - - 0x01EA62 07:EA52: BD 0C 03  LDA ram_030C,X
C - - - - - 0x01EA65 07:EA55: 8D 00 70  STA $7000
C - - - - - 0x01EA68 07:EA58: BD 0D 03  LDA ram_030D,X
C - - - - - 0x01EA6B 07:EA5B: 4A        LSR
C - - - - - 0x01EA6C 07:EA5C: A8        TAY
C - - - - - 0x01EA6D 07:EA5D: AD 02 80  LDA $8002
C - - - - - 0x01EA70 07:EA60: 85 00     STA ram_0000
C - - - - - 0x01EA72 07:EA62: AD 03 80  LDA $8003
C - - - - - 0x01EA75 07:EA65: 85 01     STA ram_0001
C - - - - - 0x01EA77 07:EA67: C9 A0     CMP #$A0
C - - - - - 0x01EA79 07:EA69: 90 05     BCC bra_EA70
C - - - - - 0x01EA7B 07:EA6B: 38        SEC
C - - - - - 0x01EA7C 07:EA6C: E9 20     SBC #$20
C - - - - - 0x01EA7E 07:EA6E: 85 01     STA ram_0001
bra_EA70:
C - - - - - 0x01EA80 07:EA70: B1 00     LDA (ram_0000),Y
C - - - - - 0x01EA82 07:EA72: 85 26     STA ram_0026
C - - - - - 0x01EA84 07:EA74: BC 0A 05  LDY ram_050A,X
C - - - - - 0x01EA87 07:EA77: B9 0B C0  LDA tbl_C00B,Y
C - - - - - 0x01EA8A 07:EA7A: 18        CLC
C - - - - - 0x01EA8B 07:EA7B: 65 26     ADC ram_0026
C - - - - - 0x01EA8D 07:EA7D: 85 26     STA ram_0026
C - - - - - 0x01EA8F 07:EA7F: 60        RTS



sub_EA80:
C - - - - - 0x01EA90 07:EA80: A5 10     LDA ram_0010
C - - - - - 0x01EA92 07:EA82: 29 01     AND #$01
C - - - - - 0x01EA94 07:EA84: F0 01     BEQ bra_EA87
C - - - - - 0x01EA96 07:EA86: 60        RTS
bra_EA87:
C - - - - - 0x01EA97 07:EA87: A5 62     LDA ram_p1_bar_hp
C - - - - - 0x01EA99 07:EA89: F0 48     BEQ bra_EAD3_check_p2
C - - - - - 0x01EA9B 07:EA8B: CD 10 05  CMP ram_p1_hp
C - - - - - 0x01EA9E 07:EA8E: F0 43     BEQ bra_EAD3_check_p2
C - - - - - 0x01EAA0 07:EA90: 30 41     BMI bra_EAD3_check_p2
C - - - - - 0x01EAA2 07:EA92: C6 62     DEC ram_p1_bar_hp
C - - - - - 0x01EAA4 07:EA94: A9 20     LDA #> $2044
C - - - - - 0x01EAA6 07:EA96: 8D 06 20  STA $2006
C - - - - - 0x01EAA9 07:EA99: A9 44     LDA #< $2044
C - - - - - 0x01EAAB 07:EA9B: 8D 06 20  STA $2006
C - - - - - 0x01EAAE 07:EA9E: A9 58     LDA #$58
C - - - - - 0x01EAB0 07:EAA0: 38        SEC
C - - - - - 0x01EAB1 07:EAA1: E5 62     SBC ram_p1_bar_hp
C - - - - - 0x01EAB3 07:EAA3: 4A        LSR
C - - - - - 0x01EAB4 07:EAA4: 4A        LSR
C - - - - - 0x01EAB5 07:EAA5: 4A        LSR
C - - - - - 0x01EAB6 07:EAA6: AA        TAX
C - - - - - 0x01EAB7 07:EAA7: A9 82     LDA #$82
loc_EAA9:
C D 3 - - - 0x01EAB9 07:EAA9: E0 00     CPX #$00
C - - - - - 0x01EABB 07:EAAB: F0 07     BEQ bra_EAB4
C - - - - - 0x01EABD 07:EAAD: 8D 07 20  STA $2007
C - - - - - 0x01EAC0 07:EAB0: CA        DEX
C - - - - - 0x01EAC1 07:EAB1: 4C A9 EA  JMP loc_EAA9
bra_EAB4:
C - - - - - 0x01EAC4 07:EAB4: A5 62     LDA ram_p1_bar_hp
C - - - - - 0x01EAC6 07:EAB6: 29 07     AND #$07
C - - - - - 0x01EAC8 07:EAB8: F0 06     BEQ bra_EAC0
C - - - - - 0x01EACA 07:EABA: 18        CLC
C - - - - - 0x01EACB 07:EABB: 69 82     ADC #$82
C - - - - - 0x01EACD 07:EABD: 8D 07 20  STA $2007
bra_EAC0:
C - - - - - 0x01EAD0 07:EAC0: A5 62     LDA ram_p1_bar_hp
C - - - - - 0x01EAD2 07:EAC2: 4A        LSR
C - - - - - 0x01EAD3 07:EAC3: 4A        LSR
C - - - - - 0x01EAD4 07:EAC4: 4A        LSR
C - - - - - 0x01EAD5 07:EAC5: AA        TAX
C - - - - - 0x01EAD6 07:EAC6: A9 8A     LDA #$8A
loc_EAC8:
C D 3 - - - 0x01EAD8 07:EAC8: E0 00     CPX #$00
C - - - - - 0x01EADA 07:EACA: F0 07     BEQ bra_EAD3_check_p2
C - - - - - 0x01EADC 07:EACC: 8D 07 20  STA $2007
C - - - - - 0x01EADF 07:EACF: CA        DEX
C - - - - - 0x01EAE0 07:EAD0: 4C C8 EA  JMP loc_EAC8
bra_EAD3_check_p2:
C - - - - - 0x01EAE3 07:EAD3: A5 63     LDA ram_p2_bar_hp
C - - - - - 0x01EAE5 07:EAD5: F0 48     BEQ bra_EB1F
C - - - - - 0x01EAE7 07:EAD7: CD 40 05  CMP ram_p2_hp
C - - - - - 0x01EAEA 07:EADA: 30 43     BMI bra_EB1F
C - - - - - 0x01EAEC 07:EADC: F0 41     BEQ bra_EB1F
C - - - - - 0x01EAEE 07:EADE: C6 63     DEC ram_p2_bar_hp
C - - - - - 0x01EAF0 07:EAE0: A9 20     LDA #> $2051
C - - - - - 0x01EAF2 07:EAE2: 8D 06 20  STA $2006
C - - - - - 0x01EAF5 07:EAE5: A9 51     LDA #< $2051
C - - - - - 0x01EAF7 07:EAE7: 8D 06 20  STA $2006
C - - - - - 0x01EAFA 07:EAEA: A5 63     LDA ram_p2_bar_hp
C - - - - - 0x01EAFC 07:EAEC: 4A        LSR
C - - - - - 0x01EAFD 07:EAED: 4A        LSR
C - - - - - 0x01EAFE 07:EAEE: 4A        LSR
C - - - - - 0x01EAFF 07:EAEF: AA        TAX
C - - - - - 0x01EB00 07:EAF0: A9 8A     LDA #$8A
loc_EAF2:
C D 3 - - - 0x01EB02 07:EAF2: E0 00     CPX #$00
C - - - - - 0x01EB04 07:EAF4: F0 07     BEQ bra_EAFD
C - - - - - 0x01EB06 07:EAF6: 8D 07 20  STA $2007
C - - - - - 0x01EB09 07:EAF9: CA        DEX
C - - - - - 0x01EB0A 07:EAFA: 4C F2 EA  JMP loc_EAF2
bra_EAFD:
C - - - - - 0x01EB0D 07:EAFD: A5 63     LDA ram_p2_bar_hp
C - - - - - 0x01EB0F 07:EAFF: 29 07     AND #$07
C - - - - - 0x01EB11 07:EB01: F0 06     BEQ bra_EB09
C - - - - - 0x01EB13 07:EB03: 18        CLC
C - - - - - 0x01EB14 07:EB04: 69 8A     ADC #$8A
C - - - - - 0x01EB16 07:EB06: 8D 07 20  STA $2007
bra_EB09:
C - - - - - 0x01EB19 07:EB09: A9 58     LDA #$58
C - - - - - 0x01EB1B 07:EB0B: 38        SEC
C - - - - - 0x01EB1C 07:EB0C: E5 63     SBC ram_p2_bar_hp
C - - - - - 0x01EB1E 07:EB0E: 4A        LSR
C - - - - - 0x01EB1F 07:EB0F: 4A        LSR
C - - - - - 0x01EB20 07:EB10: 4A        LSR
C - - - - - 0x01EB21 07:EB11: AA        TAX
C - - - - - 0x01EB22 07:EB12: A9 82     LDA #$82
loc_EB14:
C D 3 - - - 0x01EB24 07:EB14: E0 00     CPX #$00
C - - - - - 0x01EB26 07:EB16: F0 07     BEQ bra_EB1F
C - - - - - 0x01EB28 07:EB18: 8D 07 20  STA $2007
C - - - - - 0x01EB2B 07:EB1B: CA        DEX
C - - - - - 0x01EB2C 07:EB1C: 4C 14 EB  JMP loc_EB14
bra_EB1F:
C - - - - - 0x01EB2F 07:EB1F: A2 0F     LDX #$0F
C - - - - - 0x01EB31 07:EB21: 18        CLC
bra_EB22_loop:
C - - - - - 0x01EB32 07:EB22: 7D 10 E5  ADC tbl_E510,X
C - - - - - 0x01EB35 07:EB25: CA        DEX
C - - - - - 0x01EB36 07:EB26: D0 FA     BNE bra_EB22_loop
C - - - - - 0x01EB38 07:EB28: 48        PHA
C - - - - - 0x01EB39 07:EB29: A9 00     LDA #$00
C - - - - - 0x01EB3B 07:EB2B: 85 51     STA ram_0051
C - - - - - 0x01EB3D 07:EB2D: D0 03     BNE bra_EB32
C - - - - - 0x01EB3F 07:EB2F: 4C C4 EB  JMP loc_EBC4    ; bzk optimize
bra_EB32:
- - - - - - 0x01EB42 07:EB32: 68        PLA
- - - - - - 0x01EB43 07:EB33: 60        RTS



sub_EB34:
C - - - - - 0x01EB44 07:EB34: A2 10     LDX #$10
C - - - - - 0x01EB46 07:EB36: A0 40     LDY #$40
C - - - - - 0x01EB48 07:EB38: BD 00 03  LDA ram_0300,X
C - - - - - 0x01EB4B 07:EB3B: 29 40     AND #$40
C - - - - - 0x01EB4D 07:EB3D: F0 07     BEQ bra_EB46_RTS
C - - - - - 0x01EB4F 07:EB3F: B9 00 03  LDA ram_0300,Y
C - - - - - 0x01EB52 07:EB42: 29 40     AND #$40
C - - - - - 0x01EB54 07:EB44: D0 01     BNE bra_EB47
bra_EB46_RTS:
C - - - - - 0x01EB56 07:EB46: 60        RTS
bra_EB47:
C - - - - - 0x01EB57 07:EB47: A5 7C     LDA ram_007C
C - - - - - 0x01EB59 07:EB49: C9 01     CMP #$01
C - - - - - 0x01EB5B 07:EB4B: D0 53     BNE bra_EBA0
C - - - - - 0x01EB5D 07:EB4D: BD 00 05  LDA ram_0500,X
C - - - - - 0x01EB60 07:EB50: D9 00 05  CMP ram_0500,Y
C - - - - - 0x01EB63 07:EB53: 10 17     BPL bra_EB6C
C - - - - - 0x01EB65 07:EB55: 84 2E     STY ram_002E
C - - - - - 0x01EB67 07:EB57: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01EB6A 07:EB5A: A9 1D     LDA #$1D
C - - - - - 0x01EB6C 07:EB5C: 20 85 E8  JSR sub_E885
C - - - - - 0x01EB6F 07:EB5F: 98        TYA
C - - - - - 0x01EB70 07:EB60: AA        TAX
C - - - - - 0x01EB71 07:EB61: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01EB74 07:EB64: A9 1B     LDA #$1B
C - - - - - 0x01EB76 07:EB66: 20 85 E8  JSR sub_E885
C - - - - - 0x01EB79 07:EB69: 4C 9B EB  JMP loc_EB9B
bra_EB6C:
C - - - - - 0x01EB7C 07:EB6C: F0 17     BEQ bra_EB85
C - - - - - 0x01EB7E 07:EB6E: 86 2E     STX ram_002E
C - - - - - 0x01EB80 07:EB70: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01EB83 07:EB73: A9 1B     LDA #$1B
C - - - - - 0x01EB85 07:EB75: 20 85 E8  JSR sub_E885
C - - - - - 0x01EB88 07:EB78: 98        TYA
C - - - - - 0x01EB89 07:EB79: AA        TAX
C - - - - - 0x01EB8A 07:EB7A: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01EB8D 07:EB7D: A9 1D     LDA #$1D
C - - - - - 0x01EB8F 07:EB7F: 20 85 E8  JSR sub_E885
C - - - - - 0x01EB92 07:EB82: 4C 9B EB  JMP loc_EB9B
bra_EB85:
C - - - - - 0x01EB95 07:EB85: A9 FF     LDA #$FF
C - - - - - 0x01EB97 07:EB87: 85 2E     STA ram_002E
C - - - - - 0x01EB99 07:EB89: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01EB9C 07:EB8C: A9 1D     LDA #$1D
C - - - - - 0x01EB9E 07:EB8E: 20 85 E8  JSR sub_E885
C - - - - - 0x01EBA1 07:EB91: 98        TYA
C - - - - - 0x01EBA2 07:EB92: AA        TAX
C - - - - - 0x01EBA3 07:EB93: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01EBA6 07:EB96: A9 1D     LDA #$1D
C - - - - - 0x01EBA8 07:EB98: 20 85 E8  JSR sub_E885
loc_EB9B:
C D 3 - - - 0x01EBAB 07:EB9B: A9 02     LDA #$02
C - - - - - 0x01EBAD 07:EB9D: 85 7C     STA ram_007C
C - - - - - 0x01EBAF 07:EB9F: 60        RTS
bra_EBA0:
C - - - - - 0x01EBB0 07:EBA0: C9 02     CMP #$02
C - - - - - 0x01EBB2 07:EBA2: D0 12     BNE bra_EBB6
C - - - - - 0x01EBB4 07:EBA4: A5 2E     LDA ram_002E
C - - - - - 0x01EBB6 07:EBA6: C9 FF     CMP #$FF
C - - - - - 0x01EBB8 07:EBA8: F0 07     BEQ bra_EBB1
C - - - - - 0x01EBBA 07:EBAA: A9 02     LDA #$02
C - - - - - 0x01EBBC 07:EBAC: 85 72     STA ram_0072
C - - - - - 0x01EBBE 07:EBAE: 20 3B F8  JSR sub_F83B
bra_EBB1:
C - - - - - 0x01EBC1 07:EBB1: A9 03     LDA #$03
C - - - - - 0x01EBC3 07:EBB3: 85 7C     STA ram_007C
C - - - - - 0x01EBC5 07:EBB5: 60        RTS
bra_EBB6:
C - - - - - 0x01EBC6 07:EBB6: A5 7C     LDA ram_007C
C - - - - - 0x01EBC8 07:EBB8: C9 FF     CMP #$FF
C - - - - - 0x01EBCA 07:EBBA: D0 05     BNE bra_EBC1
C - - - - - 0x01EBCC 07:EBBC: A9 FF     LDA #$FF
C - - - - - 0x01EBCE 07:EBBE: 85 72     STA ram_0072
C - - - - - 0x01EBD0 07:EBC0: 60        RTS
bra_EBC1:
C - - - - - 0x01EBD1 07:EBC1: E6 7C     INC ram_007C
C - - - - - 0x01EBD3 07:EBC3: 60        RTS



loc_EBC4:
C D 3 - - - 0x01EBD4 07:EBC4: 68        PLA
C - - - - - 0x01EBD5 07:EBC5: 85 51     STA ram_0051
C - - - - - 0x01EBD7 07:EBC7: 60        RTS



sub_EBC8:
; bzk probably useless
C - - - - - 0x01EBD8 07:EBC8: A9 00     LDA #$00
C - - - - - 0x01EBDA 07:EBCA: 85 1F     STA ram_001F
C - - - - - 0x01EBDC 07:EBCC: 60        RTS



sub_EBCD:
C - - - - - 0x01EBDD 07:EBCD: 8A        TXA
C - - - - - 0x01EBDE 07:EBCE: 48        PHA
C - - - - - 0x01EBDF 07:EBCF: 98        TYA
C - - - - - 0x01EBE0 07:EBD0: 48        PHA
C - - - - - 0x01EBE1 07:EBD1: A9 39     LDA #$39    ; 0x012010
C - - - - - 0x01EBE3 07:EBD3: 8D 00 70  STA $7000
C - - - - - 0x01EBE6 07:EBD6: A6 1D     LDX ram_001D
C - - - - - 0x01EBE8 07:EBD8: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01EBEB 07:EBDB: 0A        ASL
C - - - - - 0x01EBEC 07:EBDC: A8        TAY
C - - - - - 0x01EBED 07:EBDD: B9 00 85  LDA tbl_0x012510,Y
C - - - - - 0x01EBF0 07:EBE0: 85 06     STA ram_0006
C - - - - - 0x01EBF2 07:EBE2: B9 01 85  LDA tbl_0x012510 + $01,Y
C - - - - - 0x01EBF5 07:EBE5: 85 07     STA ram_0007
C - - - - - 0x01EBF7 07:EBE7: BC 0D 03  LDY ram_030D,X
C - - - - - 0x01EBFA 07:EBEA: C0 FF     CPY #$FF
C - - - - - 0x01EBFC 07:EBEC: F0 1C     BEQ bra_EC0A
C - - - - - 0x01EBFE 07:EBEE: B1 06     LDA (ram_0006),Y
C - - - - - 0x01EC00 07:EBF0: 85 08     STA ram_0008
C - - - - - 0x01EC02 07:EBF2: C8        INY
C - - - - - 0x01EC03 07:EBF3: B1 06     LDA (ram_0006),Y
C - - - - - 0x01EC05 07:EBF5: 85 09     STA ram_0009
C - - - - - 0x01EC07 07:EBF7: BA        TSX
C - - - - - 0x01EC08 07:EBF8: BD 07 01  LDA ram_0107,X
C - - - - - 0x01EC0B 07:EBFB: 38        SEC
C - - - - - 0x01EC0C 07:EBFC: E5 B6     SBC ram_00B6
C - - - - - 0x01EC0E 07:EBFE: C9 4E     CMP #$4E
C - - - - - 0x01EC10 07:EC00: D0 08     BNE bra_EC0A
C - - - - - 0x01EC12 07:EC02: A0 00     LDY #$00
C - - - - - 0x01EC14 07:EC04: B1 08     LDA (ram_0008),Y
C - - - - - 0x01EC16 07:EC06: 85 1C     STA ram_001C
C - - - - - 0x01EC18 07:EC08: D0 13     BNE bra_EC1D
bra_EC0A:
- - - - - - 0x01EC1A 07:EC0A: A9 00     LDA #$00
- - - - - - 0x01EC1C 07:EC0C: A6 1D     LDX ram_001D
- - - - - - 0x01EC1E 07:EC0E: 9D 07 05  STA ram_0507,X
- - - - - - 0x01EC21 07:EC11: 9D 08 05  STA ram_0508,X
- - - - - - 0x01EC24 07:EC14: 9D 08 05  STA ram_0508,X
- - - - - - 0x01EC27 07:EC17: 9D 09 05  STA ram_0509,X
- - - - - - 0x01EC2A 07:EC1A: 4C A2 EC  JMP loc_ECA2
bra_EC1D:
C - - - - - 0x01EC2D 07:EC1D: A6 1D     LDX ram_001D
C - - - - - 0x01EC2F 07:EC1F: A5 1F     LDA ram_001F
C - - - - - 0x01EC31 07:EC21: 9D 07 05  STA ram_0507,X
C - - - - - 0x01EC34 07:EC24: AA        TAX
C - - - - - 0x01EC35 07:EC25: C8        INY
C - - - - - 0x01EC36 07:EC26: 20 A7 EC  JSR sub_ECA7
C - - - - - 0x01EC39 07:EC29: 8A        TXA
C - - - - - 0x01EC3A 07:EC2A: 48        PHA
C - - - - - 0x01EC3B 07:EC2B: A5 1C     LDA ram_001C
C - - - - - 0x01EC3D 07:EC2D: C9 02     CMP #$02
C - - - - - 0x01EC3F 07:EC2F: 90 03     BCC bra_EC34
C - - - - - 0x01EC41 07:EC31: 20 A7 EC  JSR sub_ECA7
bra_EC34:
C - - - - - 0x01EC44 07:EC34: 8A        TXA
C - - - - - 0x01EC45 07:EC35: A6 1D     LDX ram_001D
C - - - - - 0x01EC47 07:EC37: 9D 09 05  STA ram_0509,X
C - - - - - 0x01EC4A 07:EC3A: 85 1F     STA ram_001F
C - - - - - 0x01EC4C 07:EC3C: 68        PLA
C - - - - - 0x01EC4D 07:EC3D: 9D 08 05  STA ram_0508,X
C - - - - - 0x01EC50 07:EC40: 9D 08 05  STA ram_0508,X
C - - - - - 0x01EC53 07:EC43: BD 09 05  LDA ram_0509,X
C - - - - - 0x01EC56 07:EC46: 85 1E     STA ram_001E
C - - - - - 0x01EC58 07:EC48: BC 07 05  LDY ram_0507,X
loc_EC4B:
C D 3 - - - 0x01EC5B 07:EC4B: C4 1E     CPY ram_001E
C - - - - - 0x01EC5D 07:EC4D: F0 53     BEQ bra_ECA2
C - - - - - 0x01EC5F 07:EC4F: BD 01 03  LDA ram_0301,X
C - - - - - 0x01EC62 07:EC52: 29 40     AND #$40
C - - - - - 0x01EC64 07:EC54: D0 18     BNE bra_EC6E
C - - - - - 0x01EC66 07:EC56: B9 00 06  LDA ram_0600,Y
C - - - - - 0x01EC69 07:EC59: 18        CLC
C - - - - - 0x01EC6A 07:EC5A: 7D 02 03  ADC ram_0302,X
C - - - - - 0x01EC6D 07:EC5D: 99 00 06  STA ram_0600,Y
C - - - - - 0x01EC70 07:EC60: 18        CLC
C - - - - - 0x01EC71 07:EC61: 79 02 06  ADC ram_0602,Y
C - - - - - 0x01EC74 07:EC64: 90 02     BCC bra_EC68
C - - - - - 0x01EC76 07:EC66: A9 FF     LDA #$FF
bra_EC68:
C - - - - - 0x01EC78 07:EC68: 99 02 06  STA ram_0602,Y
C - - - - - 0x01EC7B 07:EC6B: 4C 8A EC  JMP loc_EC8A
bra_EC6E:
C - - - - - 0x01EC7E 07:EC6E: B9 02 06  LDA ram_0602,Y
C - - - - - 0x01EC81 07:EC71: 85 37     STA ram_0037
C - - - - - 0x01EC83 07:EC73: BD 02 03  LDA ram_0302,X
C - - - - - 0x01EC86 07:EC76: 18        CLC
C - - - - - 0x01EC87 07:EC77: 69 07     ADC #$07
C - - - - - 0x01EC89 07:EC79: 38        SEC
C - - - - - 0x01EC8A 07:EC7A: F9 00 06  SBC ram_0600,Y
C - - - - - 0x01EC8D 07:EC7D: 99 02 06  STA ram_0602,Y
C - - - - - 0x01EC90 07:EC80: 38        SEC
C - - - - - 0x01EC91 07:EC81: E5 37     SBC ram_0037
C - - - - - 0x01EC93 07:EC83: B0 02     BCS bra_EC87
C - - - - - 0x01EC95 07:EC85: A9 00     LDA #$00
bra_EC87:
C - - - - - 0x01EC97 07:EC87: 99 00 06  STA ram_0600,Y
loc_EC8A:
C D 3 - - - 0x01EC9A 07:EC8A: B9 01 06  LDA ram_0601,Y
C - - - - - 0x01EC9D 07:EC8D: 18        CLC
C - - - - - 0x01EC9E 07:EC8E: 7D 04 03  ADC ram_0304,X
C - - - - - 0x01ECA1 07:EC91: 99 01 06  STA ram_0601,Y
C - - - - - 0x01ECA4 07:EC94: 18        CLC
C - - - - - 0x01ECA5 07:EC95: 79 03 06  ADC ram_0603,Y
C - - - - - 0x01ECA8 07:EC98: 99 03 06  STA ram_0603,Y
C - - - - - 0x01ECAB 07:EC9B: C8        INY
C - - - - - 0x01ECAC 07:EC9C: C8        INY
C - - - - - 0x01ECAD 07:EC9D: C8        INY
C - - - - - 0x01ECAE 07:EC9E: C8        INY
C - - - - - 0x01ECAF 07:EC9F: 4C 4B EC  JMP loc_EC4B
bra_ECA2:
loc_ECA2:
C - - - - - 0x01ECB2 07:ECA2: 68        PLA
C - - - - - 0x01ECB3 07:ECA3: A8        TAY
C - - - - - 0x01ECB4 07:ECA4: 68        PLA
C - - - - - 0x01ECB5 07:ECA5: AA        TAX
C - - - - - 0x01ECB6 07:ECA6: 60        RTS



sub_ECA7:
C - - - - - 0x01ECB7 07:ECA7: B1 08     LDA (ram_0008),Y
C - - - - - 0x01ECB9 07:ECA9: 85 1B     STA ram_001B
C - - - - - 0x01ECBB 07:ECAB: C8        INY
C - - - - - 0x01ECBC 07:ECAC: C9 00     CMP #$00
C - - - - - 0x01ECBE 07:ECAE: F0 21     BEQ bra_ECD1_RTS
bra_ECB0:
C - - - - - 0x01ECC0 07:ECB0: A9 03     LDA #$03
C - - - - - 0x01ECC2 07:ECB2: 85 1A     STA ram_001A
bra_ECB4:
C - - - - - 0x01ECC4 07:ECB4: B1 08     LDA (ram_0008),Y
C - - - - - 0x01ECC6 07:ECB6: 4A        LSR
C - - - - - 0x01ECC7 07:ECB7: 66 19     ROR ram_0019
C - - - - - 0x01ECC9 07:ECB9: 4A        LSR
C - - - - - 0x01ECCA 07:ECBA: 66 19     ROR ram_0019
C - - - - - 0x01ECCC 07:ECBC: 9D 00 06  STA ram_0600,X
C - - - - - 0x01ECCF 07:ECBF: E8        INX
C - - - - - 0x01ECD0 07:ECC0: C8        INY
C - - - - - 0x01ECD1 07:ECC1: C6 1A     DEC ram_001A
C - - - - - 0x01ECD3 07:ECC3: D0 EF     BNE bra_ECB4
C - - - - - 0x01ECD5 07:ECC5: A5 19     LDA ram_0019
C - - - - - 0x01ECD7 07:ECC7: 4A        LSR
C - - - - - 0x01ECD8 07:ECC8: 4A        LSR
C - - - - - 0x01ECD9 07:ECC9: 9D 00 06  STA ram_0600,X
C - - - - - 0x01ECDC 07:ECCC: E8        INX
C - - - - - 0x01ECDD 07:ECCD: C6 1B     DEC ram_001B
C - - - - - 0x01ECDF 07:ECCF: D0 DF     BNE bra_ECB0
bra_ECD1_RTS:
C - - - - - 0x01ECE1 07:ECD1: 60        RTS



sub_ECD2:
C - - - - - 0x01ECE2 07:ECD2: 8A        TXA
C - - - - - 0x01ECE3 07:ECD3: 48        PHA
C - - - - - 0x01ECE4 07:ECD4: BA        TSX
C - - - - - 0x01ECE5 07:ECD5: BD 08 01  LDA ram_0108,X
C - - - - - 0x01ECE8 07:ECD8: 38        SEC
C - - - - - 0x01ECE9 07:ECD9: E9 18     SBC #$18
C - - - - - 0x01ECEB 07:ECDB: 85 45     STA ram_0045
C - - - - - 0x01ECED 07:ECDD: 68        PLA
C - - - - - 0x01ECEE 07:ECDE: AA        TAX
C - - - - - 0x01ECEF 07:ECDF: 60        RTS



sub_ECE0:
C - - - - - 0x01ECF0 07:ECE0: 85 D8     STA ram_00D8
C - - - - - 0x01ECF2 07:ECE2: 86 D9     STX ram_00D9
C - - - - - 0x01ECF4 07:ECE4: 84 DA     STY ram_00DA
C - - - - - 0x01ECF6 07:ECE6: A2 70     LDX #$70
loc_ECE8:
C D 3 - - - 0x01ECF8 07:ECE8: BD 00 03  LDA ram_0300,X
C - - - - - 0x01ECFB 07:ECEB: 10 0C     BPL bra_ECF9
C - - - - - 0x01ECFD 07:ECED: 8A        TXA
C - - - - - 0x01ECFE 07:ECEE: 18        CLC
C - - - - - 0x01ECFF 07:ECEF: 69 10     ADC #$10
C - - - - - 0x01ED01 07:ECF1: C9 D0     CMP #$D0
C - - - - - 0x01ED03 07:ECF3: B0 36     BCS bra_ED2B
C - - - - - 0x01ED05 07:ECF5: AA        TAX
C - - - - - 0x01ED06 07:ECF6: 4C E8 EC  JMP loc_ECE8
bra_ECF9:
C - - - - - 0x01ED09 07:ECF9: 86 DD     STX ram_00DD
C - - - - - 0x01ED0B 07:ECFB: 20 22 EF  JSR sub_EF22
C - - - - - 0x01ED0E 07:ECFE: A9 00     LDA #$00
C - - - - - 0x01ED10 07:ED00: 9D 03 03  STA ram_0303,X
C - - - - - 0x01ED13 07:ED03: 9D 05 03  STA ram_0305,X
C - - - - - 0x01ED16 07:ED06: A5 DB     LDA ram_00DB
C - - - - - 0x01ED18 07:ED08: 9D 02 03  STA ram_0302,X
C - - - - - 0x01ED1B 07:ED0B: A5 DC     LDA ram_00DC
C - - - - - 0x01ED1D 07:ED0D: 9D 04 03  STA ram_0304,X
C - - - - - 0x01ED20 07:ED10: A4 D9     LDY ram_00D9
C - - - - - 0x01ED22 07:ED12: B9 01 03  LDA ram_0301,Y
C - - - - - 0x01ED25 07:ED15: 29 80     AND #$80
C - - - - - 0x01ED27 07:ED17: 9D 01 03  STA ram_0301,X
C - - - - - 0x01ED2A 07:ED1A: B9 0C 03  LDA ram_030C,Y
C - - - - - 0x01ED2D 07:ED1D: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01ED30 07:ED20: B9 0A 05  LDA ram_050A,Y
C - - - - - 0x01ED33 07:ED23: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01ED36 07:ED26: A5 D8     LDA ram_00D8
C - - - - - 0x01ED38 07:ED28: 20 85 E8  JSR sub_E885
bra_ED2B:
C - - - - - 0x01ED3B 07:ED2B: A5 D8     LDA ram_00D8
C - - - - - 0x01ED3D 07:ED2D: A6 D9     LDX ram_00D9
C - - - - - 0x01ED3F 07:ED2F: A4 DA     LDY ram_00DA
C - - - - - 0x01ED41 07:ED31: 60        RTS



sub_ED32:
C - - - - - 0x01ED42 07:ED32: BD 03 03  LDA ram_0303,X
C - - - - - 0x01ED45 07:ED35: C9 01     CMP #$01
C - - - - - 0x01ED47 07:ED37: F0 0E     BEQ bra_ED47
C - - - - - 0x01ED49 07:ED39: C9 FF     CMP #$FF
C - - - - - 0x01ED4B 07:ED3B: D0 07     BNE bra_ED44
C - - - - - 0x01ED4D 07:ED3D: BD 02 03  LDA ram_0302,X
C - - - - - 0x01ED50 07:ED40: C9 F8     CMP #$F8
C - - - - - 0x01ED52 07:ED42: 90 03     BCC bra_ED47
bra_ED44:
C - - - - - 0x01ED54 07:ED44: A9 00     LDA #$00
C - - - - - 0x01ED56 07:ED46: 60        RTS
bra_ED47:
C - - - - - 0x01ED57 07:ED47: A9 01     LDA #$01
C - - - - - 0x01ED59 07:ED49: 60        RTS



sub_ED4A:
C - - - - - 0x01ED5A 07:ED4A: 98        TYA
C - - - - - 0x01ED5B 07:ED4B: 48        PHA
C - - - - - 0x01ED5C 07:ED4C: 8A        TXA
C - - - - - 0x01ED5D 07:ED4D: 48        PHA
C - - - - - 0x01ED5E 07:ED4E: A9 00     LDA #$00
C - - - - - 0x01ED60 07:ED50: 85 65     STA ram_0065
C - - - - - 0x01ED62 07:ED52: A6 64     LDX ram_0064
C - - - - - 0x01ED64 07:ED54: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01ED67 07:ED57: C9 50     CMP #$50
C - - - - - 0x01ED69 07:ED59: D0 04     BNE bra_ED5F
- - - - - - 0x01ED6B 07:ED5B: A9 14     LDA #$14
- - - - - - 0x01ED6D 07:ED5D: D0 1D     BNE bra_ED7C
bra_ED5F:
C - - - - - 0x01ED6F 07:ED5F: C9 28     CMP #$28
C - - - - - 0x01ED71 07:ED61: 90 1B     BCC bra_ED7E
C - - - - - 0x01ED73 07:ED63: C9 41     CMP #$41
C - - - - - 0x01ED75 07:ED65: B0 17     BCS bra_ED7E
C - - - - - 0x01ED77 07:ED67: 38        SEC
C - - - - - 0x01ED78 07:ED68: E9 28     SBC #$28
C - - - - - 0x01ED7A 07:ED6A: A8        TAY
C - - - - - 0x01ED7B 07:ED6B: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01ED7E 07:ED6E: 0A        ASL
C - - - - - 0x01ED7F 07:ED6F: AA        TAX
C - - - - - 0x01ED80 07:ED70: BD 83 ED  LDA tbl_ED83,X
C - - - - - 0x01ED83 07:ED73: 85 00     STA ram_0000
C - - - - - 0x01ED85 07:ED75: BD 84 ED  LDA tbl_ED83 + $01,X
C - - - - - 0x01ED88 07:ED78: 85 01     STA ram_0001
C - - - - - 0x01ED8A 07:ED7A: B1 00     LDA (ram_0000),Y
bra_ED7C:
C - - - - - 0x01ED8C 07:ED7C: 85 65     STA ram_0065
bra_ED7E:
C - - - - - 0x01ED8E 07:ED7E: 68        PLA
C - - - - - 0x01ED8F 07:ED7F: AA        TAX
C - - - - - 0x01ED90 07:ED80: 68        PLA
C - - - - - 0x01ED91 07:ED81: A8        TAY
C - - - - - 0x01ED92 07:ED82: 60        RTS



tbl_ED83:
- D 3 - - - 0x01ED93 07:ED83: 95 ED     .word off_ED95_00
- D 3 - - - 0x01ED95 07:ED85: AE ED     .word off_EDAE_01
- D 3 - - - 0x01ED97 07:ED87: C7 ED     .word off_EDC7_02
- D 3 - - - 0x01ED99 07:ED89: E0 ED     .word off_EDE0_03
- D 3 - - - 0x01ED9B 07:ED8B: F8 ED     .word off_EDF8_04
- - - - - - 0x01ED9D 07:ED8D: AE ED     .word off_EDAE_05
- D 3 - - - 0x01ED9F 07:ED8F: 11 EE     .word off_EE11_06
- D 3 - - - 0x01EDA1 07:ED91: 29 EE     .word off_EE29_07
- D 3 - - - 0x01EDA3 07:ED93: 42 EE     .word off_EE42_08

off_ED95_00:
- - - - - - 0x01EDA5 07:ED95: 04        .byte $04   ; 
- D 3 - I - 0x01EDA6 07:ED96: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDA7 07:ED97: 04        .byte $04   ; 
- D 3 - I - 0x01EDA8 07:ED98: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDA9 07:ED99: 04        .byte $04   ; 
- D 3 - I - 0x01EDAA 07:ED9A: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDAB 07:ED9B: 04        .byte $04   ; 
- D 3 - I - 0x01EDAC 07:ED9C: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDAD 07:ED9D: 04        .byte $04   ; 
- D 3 - I - 0x01EDAE 07:ED9E: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDAF 07:ED9F: 04        .byte $04   ; 
- D 3 - I - 0x01EDB0 07:EDA0: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDB1 07:EDA1: 04        .byte $04   ; 
- D 3 - I - 0x01EDB2 07:EDA2: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDB3 07:EDA3: 04        .byte $04   ; 
- D 3 - I - 0x01EDB4 07:EDA4: 0A        .byte $0A   ; 
- - - - - - 0x01EDB5 07:EDA5: 04        .byte $04   ; 
- D 3 - I - 0x01EDB6 07:EDA6: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDB7 07:EDA7: 04        .byte $04   ; 
- D 3 - I - 0x01EDB8 07:EDA8: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDB9 07:EDA9: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDBA 07:EDAA: 07        .byte $07   ; 
- - - - - - 0x01EDBB 07:EDAB: 00        .byte $00   ; 
- - - - - - 0x01EDBC 07:EDAC: 00        .byte $00   ; 
- D 3 - I - 0x01EDBD 07:EDAD: 05        .byte $05   ; 

off_EDAE_01:
off_EDAE_05:
- - - - - - 0x01EDBE 07:EDAE: 04        .byte $04   ; 
- D 3 - I - 0x01EDBF 07:EDAF: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDC0 07:EDB0: 04        .byte $04   ; 
- D 3 - I - 0x01EDC1 07:EDB1: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDC2 07:EDB2: 04        .byte $04   ; 
- D 3 - I - 0x01EDC3 07:EDB3: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDC4 07:EDB4: 04        .byte $04   ; 
- D 3 - I - 0x01EDC5 07:EDB5: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDC6 07:EDB6: 04        .byte $04   ; 
- D 3 - I - 0x01EDC7 07:EDB7: 0A        .byte $0A   ; 
- - - - - - 0x01EDC8 07:EDB8: 04        .byte $04   ; 
- D 3 - I - 0x01EDC9 07:EDB9: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDCA 07:EDBA: 04        .byte $04   ; 
- D 3 - I - 0x01EDCB 07:EDBB: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDCC 07:EDBC: 04        .byte $04   ; 
- D 3 - I - 0x01EDCD 07:EDBD: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDCE 07:EDBE: 04        .byte $04   ; 
- D 3 - I - 0x01EDCF 07:EDBF: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDD0 07:EDC0: 04        .byte $04   ; 
- D 3 - I - 0x01EDD1 07:EDC1: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDD2 07:EDC2: 08        .byte $08   ; 
- D 3 - I - 0x01EDD3 07:EDC3: 0A        .byte $0A   ; 
- - - - - - 0x01EDD4 07:EDC4: 00        .byte $00   ; 
- - - - - - 0x01EDD5 07:EDC5: 00        .byte $00   ; 
- D 3 - I - 0x01EDD6 07:EDC6: 0A        .byte $0A   ; 

off_EDC7_02:
- D 3 - I - 0x01EDD7 07:EDC7: 04        .byte $04   ; 
- D 3 - I - 0x01EDD8 07:EDC8: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDD9 07:EDC9: 04        .byte $04   ; 
- D 3 - I - 0x01EDDA 07:EDCA: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDDB 07:EDCB: 04        .byte $04   ; 
- D 3 - I - 0x01EDDC 07:EDCC: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDDD 07:EDCD: 04        .byte $04   ; 
- D 3 - I - 0x01EDDE 07:EDCE: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDDF 07:EDCF: 04        .byte $04   ; 
- D 3 - I - 0x01EDE0 07:EDD0: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDE1 07:EDD1: 04        .byte $04   ; 
- D 3 - I - 0x01EDE2 07:EDD2: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDE3 07:EDD3: 04        .byte $04   ; 
- D 3 - I - 0x01EDE4 07:EDD4: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDE5 07:EDD5: 04        .byte $04   ; 
- D 3 - I - 0x01EDE6 07:EDD6: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDE7 07:EDD7: 04        .byte $04   ; 
- D 3 - I - 0x01EDE8 07:EDD8: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDE9 07:EDD9: 04        .byte $04   ; 
- D 3 - I - 0x01EDEA 07:EDDA: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDEB 07:EDDB: 14        .byte $14   ; 
- - - - - - 0x01EDEC 07:EDDC: 00        .byte $00   ; 
- - - - - - 0x01EDED 07:EDDD: 00        .byte $00   ; 
- - - - - - 0x01EDEE 07:EDDE: 00        .byte $00   ; 
- D 3 - I - 0x01EDEF 07:EDDF: 0A        .byte $0A   ; 

off_EDE0_03:
- D 3 - I - 0x01EDF0 07:EDE0: 04        .byte $04   ; 
- D 3 - I - 0x01EDF1 07:EDE1: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDF2 07:EDE2: 04        .byte $04   ; 
- D 3 - I - 0x01EDF3 07:EDE3: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDF4 07:EDE4: 04        .byte $04   ; 
- D 3 - I - 0x01EDF5 07:EDE5: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDF6 07:EDE6: 04        .byte $04   ; 
- D 3 - I - 0x01EDF7 07:EDE7: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDF8 07:EDE8: 04        .byte $04   ; 
- D 3 - I - 0x01EDF9 07:EDE9: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDFA 07:EDEA: 04        .byte $04   ; 
- D 3 - I - 0x01EDFB 07:EDEB: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDFC 07:EDEC: 04        .byte $04   ; 
- D 3 - I - 0x01EDFD 07:EDED: 0A        .byte $0A   ; 
- D 3 - I - 0x01EDFE 07:EDEE: 04        .byte $04   ; 
- D 3 - I - 0x01EDFF 07:EDEF: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE00 07:EDF0: 04        .byte $04   ; 
- D 3 - I - 0x01EE01 07:EDF1: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE02 07:EDF2: 04        .byte $04   ; 
- D 3 - I - 0x01EE03 07:EDF3: 0A        .byte $0A   ; 
- - - - - - 0x01EE04 07:EDF4: 00        .byte $00   ; 
- D 3 - I - 0x01EE05 07:EDF5: 0A        .byte $0A   ; 
- - - - - - 0x01EE06 07:EDF6: 00        .byte $00   ; 
- D 3 - I - 0x01EE07 07:EDF7: 0A        .byte $0A   ; 

off_EDF8_04:
- D 3 - I - 0x01EE08 07:EDF8: 04        .byte $04   ; 
- D 3 - I - 0x01EE09 07:EDF9: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE0A 07:EDFA: 04        .byte $04   ; 
- D 3 - I - 0x01EE0B 07:EDFB: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE0C 07:EDFC: 04        .byte $04   ; 
- D 3 - I - 0x01EE0D 07:EDFD: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE0E 07:EDFE: 04        .byte $04   ; 
- D 3 - I - 0x01EE0F 07:EDFF: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE10 07:EE00: 04        .byte $04   ; 
- D 3 - I - 0x01EE11 07:EE01: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE12 07:EE02: 04        .byte $04   ; 
- D 3 - I - 0x01EE13 07:EE03: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE14 07:EE04: 04        .byte $04   ; 
- D 3 - I - 0x01EE15 07:EE05: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE16 07:EE06: 04        .byte $04   ; 
- D 3 - I - 0x01EE17 07:EE07: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE18 07:EE08: 04        .byte $04   ; 
- D 3 - I - 0x01EE19 07:EE09: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE1A 07:EE0A: 04        .byte $04   ; 
- D 3 - I - 0x01EE1B 07:EE0B: 0A        .byte $0A   ; 
- - - - - - 0x01EE1C 07:EE0C: 00        .byte $00   ; 
- D 3 - I - 0x01EE1D 07:EE0D: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE1E 07:EE0E: 0A        .byte $0A   ; 
- - - - - - 0x01EE1F 07:EE0F: 00        .byte $00   ; 
- D 3 - I - 0x01EE20 07:EE10: 0A        .byte $0A   ; 

off_EE11_06:
- D 3 - I - 0x01EE21 07:EE11: 04        .byte $04   ; 
- D 3 - I - 0x01EE22 07:EE12: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE23 07:EE13: 04        .byte $04   ; 
- D 3 - I - 0x01EE24 07:EE14: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE25 07:EE15: 04        .byte $04   ; 
- D 3 - I - 0x01EE26 07:EE16: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE27 07:EE17: 04        .byte $04   ; 
- D 3 - I - 0x01EE28 07:EE18: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE29 07:EE19: 04        .byte $04   ; 
- D 3 - I - 0x01EE2A 07:EE1A: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE2B 07:EE1B: 04        .byte $04   ; 
- - - - - - 0x01EE2C 07:EE1C: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE2D 07:EE1D: 04        .byte $04   ; 
- D 3 - I - 0x01EE2E 07:EE1E: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE2F 07:EE1F: 04        .byte $04   ; 
- D 3 - I - 0x01EE30 07:EE20: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE31 07:EE21: 04        .byte $04   ; 
- - - - - - 0x01EE32 07:EE22: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE33 07:EE23: 04        .byte $04   ; 
- D 3 - I - 0x01EE34 07:EE24: 0A        .byte $0A   ; 
- - - - - - 0x01EE35 07:EE25: 00        .byte $00   ; 
- - - - - - 0x01EE36 07:EE26: 00        .byte $00   ; 
- D 3 - I - 0x01EE37 07:EE27: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE38 07:EE28: 0A        .byte $0A   ; 

off_EE29_07:
- D 3 - I - 0x01EE39 07:EE29: 04        .byte $04   ; 
- - - - - - 0x01EE3A 07:EE2A: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE3B 07:EE2B: 04        .byte $04   ; 
- D 3 - I - 0x01EE3C 07:EE2C: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE3D 07:EE2D: 04        .byte $04   ; 
- D 3 - I - 0x01EE3E 07:EE2E: 0A        .byte $0A   ; 
- - - - - - 0x01EE3F 07:EE2F: 04        .byte $04   ; 
- D 3 - I - 0x01EE40 07:EE30: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE41 07:EE31: 04        .byte $04   ; 
- D 3 - I - 0x01EE42 07:EE32: 0A        .byte $0A   ; 
- - - - - - 0x01EE43 07:EE33: 04        .byte $04   ; 
- - - - - - 0x01EE44 07:EE34: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE45 07:EE35: 04        .byte $04   ; 
- D 3 - I - 0x01EE46 07:EE36: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE47 07:EE37: 04        .byte $04   ; 
- D 3 - I - 0x01EE48 07:EE38: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE49 07:EE39: 04        .byte $04   ; 
- D 3 - I - 0x01EE4A 07:EE3A: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE4B 07:EE3B: 04        .byte $04   ; 
- D 3 - I - 0x01EE4C 07:EE3C: 0A        .byte $0A   ; 
- - - - - - 0x01EE4D 07:EE3D: 00        .byte $00   ; 
- D 3 - I - 0x01EE4E 07:EE3E: 0F        .byte $0F   ; 
- D 3 - I - 0x01EE4F 07:EE3F: 00        .byte $00   ; 
- D 3 - I - 0x01EE50 07:EE40: 00        .byte $00   ; 
- D 3 - I - 0x01EE51 07:EE41: 0A        .byte $0A   ; 

off_EE42_08:
- - - - - - 0x01EE52 07:EE42: 04        .byte $04   ; 
- - - - - - 0x01EE53 07:EE43: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE54 07:EE44: 04        .byte $04   ; 
- D 3 - I - 0x01EE55 07:EE45: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE56 07:EE46: 04        .byte $04   ; 
- D 3 - I - 0x01EE57 07:EE47: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE58 07:EE48: 04        .byte $04   ; 
- D 3 - I - 0x01EE59 07:EE49: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE5A 07:EE4A: 04        .byte $04   ; 
- D 3 - I - 0x01EE5B 07:EE4B: 0A        .byte $0A   ; 
- - - - - - 0x01EE5C 07:EE4C: 04        .byte $04   ; 
- - - - - - 0x01EE5D 07:EE4D: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE5E 07:EE4E: 04        .byte $04   ; 
- D 3 - I - 0x01EE5F 07:EE4F: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE60 07:EE50: 04        .byte $04   ; 
- D 3 - I - 0x01EE61 07:EE51: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE62 07:EE52: 04        .byte $04   ; 
- D 3 - I - 0x01EE63 07:EE53: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE64 07:EE54: 04        .byte $04   ; 
- D 3 - I - 0x01EE65 07:EE55: 0A        .byte $0A   ; 
- - - - - - 0x01EE66 07:EE56: 00        .byte $00   ; 
- D 3 - I - 0x01EE67 07:EE57: 0A        .byte $0A   ; 
- - - - - - 0x01EE68 07:EE58: 00        .byte $00   ; 
- D 3 - I - 0x01EE69 07:EE59: 0A        .byte $0A   ; 
- D 3 - I - 0x01EE6A 07:EE5A: 0A        .byte $0A   ; 



sub_EE5B:
C - - - - - 0x01EE6B 07:EE5B: 20 BE EF  JSR sub_EFBE
C - - - - - 0x01EE6E 07:EE5E: C9 00     CMP #$00
C - - - - - 0x01EE70 07:EE60: D0 03     BNE bra_EE65
C - - - - - 0x01EE72 07:EE62: A9 00     LDA #$00
C - - - - - 0x01EE74 07:EE64: 60        RTS
bra_EE65:
C - - - - - 0x01EE75 07:EE65: 86 34     STX ram_0034
C - - - - - 0x01EE77 07:EE67: 84 35     STY ram_0035
C - - - - - 0x01EE79 07:EE69: BD 08 05  LDA ram_0508,X
C - - - - - 0x01EE7C 07:EE6C: 85 31     STA ram_0031
C - - - - - 0x01EE7E 07:EE6E: BD 07 05  LDA ram_0507,X
C - - - - - 0x01EE81 07:EE71: AA        TAX
C - - - - - 0x01EE82 07:EE72: B9 09 05  LDA ram_0509,Y
C - - - - - 0x01EE85 07:EE75: 85 32     STA ram_0032
C - - - - - 0x01EE87 07:EE77: B9 08 05  LDA ram_0508,Y
C - - - - - 0x01EE8A 07:EE7A: 85 33     STA ram_0033
loc_EE7C:
C D 3 - - - 0x01EE8C 07:EE7C: E4 31     CPX ram_0031
C - - - - - 0x01EE8E 07:EE7E: F0 1F     BEQ bra_EE9F
C - - - - - 0x01EE90 07:EE80: A4 33     LDY ram_0033
loc_EE82:
C D 3 - - - 0x01EE92 07:EE82: C4 32     CPY ram_0032
C - - - - - 0x01EE94 07:EE84: F0 0E     BEQ bra_EE94
C - - - - - 0x01EE96 07:EE86: 20 A6 EE  JSR sub_EEA6
C - - - - - 0x01EE99 07:EE89: C9 00     CMP #$00
C - - - - - 0x01EE9B 07:EE8B: D0 0E     BNE bra_EE9B
C - - - - - 0x01EE9D 07:EE8D: C8        INY
C - - - - - 0x01EE9E 07:EE8E: C8        INY
C - - - - - 0x01EE9F 07:EE8F: C8        INY
C - - - - - 0x01EEA0 07:EE90: C8        INY
C - - - - - 0x01EEA1 07:EE91: 4C 82 EE  JMP loc_EE82
bra_EE94:
C - - - - - 0x01EEA4 07:EE94: E8        INX
C - - - - - 0x01EEA5 07:EE95: E8        INX
C - - - - - 0x01EEA6 07:EE96: E8        INX
C - - - - - 0x01EEA7 07:EE97: E8        INX
C - - - - - 0x01EEA8 07:EE98: 4C 7C EE  JMP loc_EE7C
bra_EE9B:
C - - - - - 0x01EEAB 07:EE9B: A9 01     LDA #$01
C - - - - - 0x01EEAD 07:EE9D: D0 02     BNE bra_EEA1
bra_EE9F:
C - - - - - 0x01EEAF 07:EE9F: A9 00     LDA #$00
bra_EEA1:
C - - - - - 0x01EEB1 07:EEA1: A6 34     LDX ram_0034
C - - - - - 0x01EEB3 07:EEA3: A4 35     LDY ram_0035
C - - - - - 0x01EEB5 07:EEA5: 60        RTS



sub_EEA6:
C - - - - - 0x01EEB6 07:EEA6: BD 00 06  LDA ram_0600,X
C - - - - - 0x01EEB9 07:EEA9: D9 02 06  CMP ram_0602,Y
C - - - - - 0x01EEBC 07:EEAC: B0 71     BCS bra_EF1F
C - - - - - 0x01EEBE 07:EEAE: B9 00 06  LDA ram_0600,Y
C - - - - - 0x01EEC1 07:EEB1: DD 02 06  CMP ram_0602,X
C - - - - - 0x01EEC4 07:EEB4: B0 69     BCS bra_EF1F
C - - - - - 0x01EEC6 07:EEB6: BD 00 06  LDA ram_0600,X
C - - - - - 0x01EEC9 07:EEB9: D9 00 06  CMP ram_0600,Y
C - - - - - 0x01EECC 07:EEBC: B0 06     BCS bra_EEC4
C - - - - - 0x01EECE 07:EEBE: B9 00 06  LDA ram_0600,Y
C - - - - - 0x01EED1 07:EEC1: 4C C7 EE  JMP loc_EEC7
bra_EEC4:
C - - - - - 0x01EED4 07:EEC4: BD 00 06  LDA ram_0600,X
loc_EEC7:
C D 3 - - - 0x01EED7 07:EEC7: 4A        LSR
C - - - - - 0x01EED8 07:EEC8: 85 2A     STA ram_002A
C - - - - - 0x01EEDA 07:EECA: BD 02 06  LDA ram_0602,X
C - - - - - 0x01EEDD 07:EECD: D9 02 06  CMP ram_0602,Y
C - - - - - 0x01EEE0 07:EED0: 90 06     BCC bra_EED8
C - - - - - 0x01EEE2 07:EED2: B9 02 06  LDA ram_0602,Y
C - - - - - 0x01EEE5 07:EED5: 4C DB EE  JMP loc_EEDB
bra_EED8:
C - - - - - 0x01EEE8 07:EED8: BD 02 06  LDA ram_0602,X
loc_EEDB:
C D 3 - - - 0x01EEEB 07:EEDB: 4A        LSR
C - - - - - 0x01EEEC 07:EEDC: 18        CLC
C - - - - - 0x01EEED 07:EEDD: 65 2A     ADC ram_002A
C - - - - - 0x01EEEF 07:EEDF: 85 2A     STA ram_002A
C - - - - - 0x01EEF1 07:EEE1: BD 01 06  LDA ram_0601,X
C - - - - - 0x01EEF4 07:EEE4: D9 03 06  CMP ram_0603,Y
C - - - - - 0x01EEF7 07:EEE7: B0 36     BCS bra_EF1F
C - - - - - 0x01EEF9 07:EEE9: B9 01 06  LDA ram_0601,Y
C - - - - - 0x01EEFC 07:EEEC: DD 03 06  CMP ram_0603,X
C - - - - - 0x01EEFF 07:EEEF: B0 2E     BCS bra_EF1F
C - - - - - 0x01EF01 07:EEF1: BD 01 06  LDA ram_0601,X
C - - - - - 0x01EF04 07:EEF4: D9 01 06  CMP ram_0601,Y
C - - - - - 0x01EF07 07:EEF7: B0 06     BCS bra_EEFF
C - - - - - 0x01EF09 07:EEF9: B9 01 06  LDA ram_0601,Y
C - - - - - 0x01EF0C 07:EEFC: 4C 02 EF  JMP loc_EF02
bra_EEFF:
C - - - - - 0x01EF0F 07:EEFF: BD 01 06  LDA ram_0601,X
loc_EF02:
C D 3 - - - 0x01EF12 07:EF02: 4A        LSR
C - - - - - 0x01EF13 07:EF03: 85 2B     STA ram_002B
C - - - - - 0x01EF15 07:EF05: BD 03 06  LDA ram_0603,X
C - - - - - 0x01EF18 07:EF08: D9 03 06  CMP ram_0603,Y
C - - - - - 0x01EF1B 07:EF0B: 90 06     BCC bra_EF13
C - - - - - 0x01EF1D 07:EF0D: B9 03 06  LDA ram_0603,Y
C - - - - - 0x01EF20 07:EF10: 4C 16 EF  JMP loc_EF16
bra_EF13:
C - - - - - 0x01EF23 07:EF13: BD 03 06  LDA ram_0603,X
loc_EF16:
C D 3 - - - 0x01EF26 07:EF16: 4A        LSR
C - - - - - 0x01EF27 07:EF17: 18        CLC
C - - - - - 0x01EF28 07:EF18: 65 2B     ADC ram_002B
C - - - - - 0x01EF2A 07:EF1A: 85 2B     STA ram_002B
C - - - - - 0x01EF2C 07:EF1C: A9 01     LDA #$01
C - - - - - 0x01EF2E 07:EF1E: 60        RTS
bra_EF1F:
C - - - - - 0x01EF2F 07:EF1F: A9 00     LDA #$00
C - - - - - 0x01EF31 07:EF21: 60        RTS



sub_EF22:
C - - - - - 0x01EF32 07:EF22: A9 00     LDA #$00
C - - - - - 0x01EF34 07:EF24: 9D 02 04  STA ram_0402,X
C - - - - - 0x01EF37 07:EF27: 9D 03 04  STA ram_0403,X
C - - - - - 0x01EF3A 07:EF2A: 9D 00 04  STA ram_0400,X
C - - - - - 0x01EF3D 07:EF2D: 9D 01 04  STA ram_0401,X
C - - - - - 0x01EF40 07:EF30: 9D 04 04  STA ram_0404,X
C - - - - - 0x01EF43 07:EF33: 9D 05 04  STA ram_0405,X
C - - - - - 0x01EF46 07:EF36: 9D 06 04  STA ram_0406,X
C - - - - - 0x01EF49 07:EF39: 9D 07 04  STA ram_0407,X
C - - - - - 0x01EF4C 07:EF3C: BD 01 03  LDA ram_0301,X
C - - - - - 0x01EF4F 07:EF3F: 29 EF     AND #$EF
C - - - - - 0x01EF51 07:EF41: 29 DF     AND #$DF
C - - - - - 0x01EF53 07:EF43: 9D 01 03  STA ram_0301,X
C - - - - - 0x01EF56 07:EF46: 60        RTS



sub_EF47:
C - - - - - 0x01EF57 07:EF47: 98        TYA
C - - - - - 0x01EF58 07:EF48: 48        PHA
C - - - - - 0x01EF59 07:EF49: A0 40     LDY #$40
C - - - - - 0x01EF5B 07:EF4B: E0 10     CPX #$10
C - - - - - 0x01EF5D 07:EF4D: F0 02     BEQ bra_EF51
C - - - - - 0x01EF5F 07:EF4F: A0 10     LDY #$10
bra_EF51:
C - - - - - 0x01EF61 07:EF51: BD 03 03  LDA ram_0303,X
C - - - - - 0x01EF64 07:EF54: D0 16     BNE bra_EF6C
C - - - - - 0x01EF66 07:EF56: B9 03 03  LDA ram_0303,Y
C - - - - - 0x01EF69 07:EF59: D0 11     BNE bra_EF6C
C - - - - - 0x01EF6B 07:EF5B: BD 02 03  LDA ram_0302,X
C - - - - - 0x01EF6E 07:EF5E: D9 02 03  CMP ram_0302,Y
C - - - - - 0x01EF71 07:EF61: 90 04     BCC bra_EF67
C - - - - - 0x01EF73 07:EF63: A9 01     LDA #$01
C - - - - - 0x01EF75 07:EF65: D0 02     BNE bra_EF69
bra_EF67:
C - - - - - 0x01EF77 07:EF67: A9 00     LDA #$00
bra_EF69:
C - - - - - 0x01EF79 07:EF69: 20 6F EF  JSR sub_EF6F
bra_EF6C:
C - - - - - 0x01EF7C 07:EF6C: 68        PLA
C - - - - - 0x01EF7D 07:EF6D: A8        TAY
C - - - - - 0x01EF7E 07:EF6E: 60        RTS



sub_EF6F:
C - - - - - 0x01EF7F 07:EF6F: C9 00     CMP #$00
C - - - - - 0x01EF81 07:EF71: F0 24     BEQ bra_EF97
C - - - - - 0x01EF83 07:EF73: BD 01 03  LDA ram_0301,X
C - - - - - 0x01EF86 07:EF76: 29 40     AND #$40
C - - - - - 0x01EF88 07:EF78: D0 43     BNE bra_EFBD_RTS
C - - - - - 0x01EF8A 07:EF7A: BD 0E 03  LDA ram_030E,X
C - - - - - 0x01EF8D 07:EF7D: 38        SEC
C - - - - - 0x01EF8E 07:EF7E: E9 07     SBC #$07
C - - - - - 0x01EF90 07:EF80: 18        CLC
C - - - - - 0x01EF91 07:EF81: 7D 02 03  ADC ram_0302,X
C - - - - - 0x01EF94 07:EF84: 9D 02 03  STA ram_0302,X
C - - - - - 0x01EF97 07:EF87: BD 03 03  LDA ram_0303,X
C - - - - - 0x01EF9A 07:EF8A: 69 00     ADC #$00
C - - - - - 0x01EF9C 07:EF8C: 9D 03 03  STA ram_0303,X
C - - - - - 0x01EF9F 07:EF8F: BD 01 03  LDA ram_0301,X
C - - - - - 0x01EFA2 07:EF92: 09 40     ORA #$40
C - - - - - 0x01EFA4 07:EF94: 4C BA EF  JMP loc_EFBA
bra_EF97:
C - - - - - 0x01EFA7 07:EF97: BD 01 03  LDA ram_0301,X
C - - - - - 0x01EFAA 07:EF9A: 29 40     AND #$40
C - - - - - 0x01EFAC 07:EF9C: F0 1F     BEQ bra_EFBD_RTS
C - - - - - 0x01EFAE 07:EF9E: BD 0E 03  LDA ram_030E,X
C - - - - - 0x01EFB1 07:EFA1: 38        SEC
C - - - - - 0x01EFB2 07:EFA2: E9 08     SBC #$08
C - - - - - 0x01EFB4 07:EFA4: 49 FF     EOR #$FF
C - - - - - 0x01EFB6 07:EFA6: 38        SEC
C - - - - - 0x01EFB7 07:EFA7: 7D 02 03  ADC ram_0302,X
C - - - - - 0x01EFBA 07:EFAA: 9D 02 03  STA ram_0302,X
C - - - - - 0x01EFBD 07:EFAD: BD 03 03  LDA ram_0303,X
C - - - - - 0x01EFC0 07:EFB0: 69 FF     ADC #$FF
C - - - - - 0x01EFC2 07:EFB2: 9D 03 03  STA ram_0303,X
C - - - - - 0x01EFC5 07:EFB5: BD 01 03  LDA ram_0301,X
C - - - - - 0x01EFC8 07:EFB8: 29 BF     AND #$BF
loc_EFBA:
C D 3 - - - 0x01EFCA 07:EFBA: 9D 01 03  STA ram_0301,X
bra_EFBD_RTS:
C - - - - - 0x01EFCD 07:EFBD: 60        RTS



sub_EFBE:
C - - - - - 0x01EFCE 07:EFBE: BD 00 03  LDA ram_0300,X
C - - - - - 0x01EFD1 07:EFC1: 10 28     BPL bra_EFEB
C - - - - - 0x01EFD3 07:EFC3: B9 00 03  LDA ram_0300,Y
C - - - - - 0x01EFD6 07:EFC6: 10 23     BPL bra_EFEB
C - - - - - 0x01EFD8 07:EFC8: B9 04 05  LDA ram_0504,Y
C - - - - - 0x01EFDB 07:EFCB: DD 05 05  CMP ram_0505,X
C - - - - - 0x01EFDE 07:EFCE: B0 1B     BCS bra_EFEB
C - - - - - 0x01EFE0 07:EFD0: BD 04 05  LDA ram_0504,X
C - - - - - 0x01EFE3 07:EFD3: D9 05 05  CMP ram_0505,Y
C - - - - - 0x01EFE6 07:EFD6: B0 13     BCS bra_EFEB
C - - - - - 0x01EFE8 07:EFD8: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01EFEB 07:EFDB: DD 06 05  CMP ram_0506,X
C - - - - - 0x01EFEE 07:EFDE: B0 0B     BCS bra_EFEB
C - - - - - 0x01EFF0 07:EFE0: BD 04 03  LDA ram_0304,X
C - - - - - 0x01EFF3 07:EFE3: D9 06 05  CMP ram_0506,Y
C - - - - - 0x01EFF6 07:EFE6: B0 03     BCS bra_EFEB
C - - - - - 0x01EFF8 07:EFE8: A9 01     LDA #$01
C - - - - - 0x01EFFA 07:EFEA: 60        RTS
bra_EFEB:
C - - - - - 0x01EFFB 07:EFEB: A9 00     LDA #$00
C - - - - - 0x01EFFD 07:EFED: 60        RTS



sub_EFEE_clear_0300_03CF:
C - - - - - 0x01EFFE 07:EFEE: A9 00     LDA #$00
C - - - - - 0x01F000 07:EFF0: AA        TAX
bra_EFF1_loop:
C - - - - - 0x01F001 07:EFF1: 9D 00 03  STA ram_0300,X
C - - - - - 0x01F004 07:EFF4: E8        INX
C - - - - - 0x01F005 07:EFF5: E0 D0     CPX #$D0
C - - - - - 0x01F007 07:EFF7: 90 F8     BCC bra_EFF1_loop
C - - - - - 0x01F009 07:EFF9: 20 8C FB  JSR sub_FB8C_hide_all_sprites
C - - - - - 0x01F00C 07:EFFC: 60        RTS



sub_EFFD:
C - - - - - 0x01F00D 07:EFFD: A2 12     LDX #$12
C - - - - - 0x01F00F 07:EFFF: 18        CLC
bra_F000:
C - - - - - 0x01F010 07:F000: 7D 0F E5  ADC tbl_E510 - $01,X
C - - - - - 0x01F013 07:F003: CA        DEX
C - - - - - 0x01F014 07:F004: D0 FA     BNE bra_F000
C - - - - - 0x01F016 07:F006: 48        PHA
C - - - - - 0x01F017 07:F007: A2 10     LDX #$10
C - - - - - 0x01F019 07:F009: A0 40     LDY #$40
C - - - - - 0x01F01B 07:F00B: BD 0C 05  LDA ram_050C,X
C - - - - - 0x01F01E 07:F00E: C9 51     CMP #$51
C - - - - - 0x01F020 07:F010: F0 45     BEQ bra_F057
C - - - - - 0x01F022 07:F012: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01F025 07:F015: C9 51     CMP #$51
C - - - - - 0x01F027 07:F017: F0 3E     BEQ bra_F057
C - - - - - 0x01F029 07:F019: 20 BE EF  JSR sub_EFBE
C - - - - - 0x01F02C 07:F01C: C9 00     CMP #$00
C - - - - - 0x01F02E 07:F01E: F0 37     BEQ bra_F057
C - - - - - 0x01F030 07:F020: BD 02 03  LDA ram_0302,X
C - - - - - 0x01F033 07:F023: 38        SEC
C - - - - - 0x01F034 07:F024: F9 02 03  SBC ram_0302,Y
C - - - - - 0x01F037 07:F027: B0 05     BCS bra_F02E
C - - - - - 0x01F039 07:F029: 49 FF     EOR #$FF
C - - - - - 0x01F03B 07:F02B: 18        CLC
C - - - - - 0x01F03C 07:F02C: 69 01     ADC #$01
bra_F02E:
C - - - - - 0x01F03E 07:F02E: C5 C0     CMP ram_00C0
C - - - - - 0x01F040 07:F030: B0 25     BCS bra_F057
C - - - - - 0x01F042 07:F032: 86 42     STX ram_0042
C - - - - - 0x01F044 07:F034: 20 5B F0  JSR sub_F05B
C - - - - - 0x01F047 07:F037: 85 2C     STA ram_002C
C - - - - - 0x01F049 07:F039: A2 40     LDX #$40
C - - - - - 0x01F04B 07:F03B: 86 42     STX ram_0042
C - - - - - 0x01F04D 07:F03D: 20 5B F0  JSR sub_F05B
C - - - - - 0x01F050 07:F040: C5 2C     CMP ram_002C
C - - - - - 0x01F052 07:F042: B0 0B     BCS bra_F04F
C - - - - - 0x01F054 07:F044: DE 09 04  DEC ram_0409,X
C - - - - - 0x01F057 07:F047: A2 10     LDX #$10
C - - - - - 0x01F059 07:F049: FE 09 04  INC ram_0409,X
C - - - - - 0x01F05C 07:F04C: 4C 57 F0  JMP loc_F057
bra_F04F:
C - - - - - 0x01F05F 07:F04F: FE 09 04  INC ram_0409,X
C - - - - - 0x01F062 07:F052: A2 10     LDX #$10
C - - - - - 0x01F064 07:F054: DE 09 04  DEC ram_0409,X
bra_F057:
loc_F057:
C D 3 - - - 0x01F067 07:F057: 68        PLA
C - - - - - 0x01F068 07:F058: 85 5E     STA ram_005E
C - - - - - 0x01F06A 07:F05A: 60        RTS



sub_F05B:
C - - - - - 0x01F06B 07:F05B: 86 41     STX ram_0041
C - - - - - 0x01F06D 07:F05D: A6 42     LDX ram_0042
C - - - - - 0x01F06F 07:F05F: BD 01 03  LDA ram_0301,X
C - - - - - 0x01F072 07:F062: 29 40     AND #$40
C - - - - - 0x01F074 07:F064: D0 08     BNE bra_F06E
C - - - - - 0x01F076 07:F066: BD 0E 03  LDA ram_030E,X
C - - - - - 0x01F079 07:F069: 4A        LSR
C - - - - - 0x01F07A 07:F06A: 18        CLC
C - - - - - 0x01F07B 07:F06B: 4C 77 F0  JMP loc_F077
bra_F06E:
C - - - - - 0x01F07E 07:F06E: BD 0E 03  LDA ram_030E,X
C - - - - - 0x01F081 07:F071: 4A        LSR
C - - - - - 0x01F082 07:F072: 49 FF     EOR #$FF
C - - - - - 0x01F084 07:F074: 18        CLC
C - - - - - 0x01F085 07:F075: 69 08     ADC #$08
loc_F077:
C D 3 - - - 0x01F087 07:F077: 7D 02 03  ADC ram_0302,X
C - - - - - 0x01F08A 07:F07A: A6 41     LDX ram_0041
C - - - - - 0x01F08C 07:F07C: 60        RTS



sub_F07D:
C - - - - - 0x01F08D 07:F07D: 85 B0     STA ram_00B0
C - - - - - 0x01F08F 07:F07F: A9 00     LDA #$00
C - - - - - 0x01F091 07:F081: 85 B1     STA ram_00B1
C - - - - - 0x01F093 07:F083: 85 AE     STA ram_00AE
C - - - - - 0x01F095 07:F085: 85 AF     STA ram_00AF
C - - - - - 0x01F097 07:F087: A9 20     LDA #$20
C - - - - - 0x01F099 07:F089: 85 B2     STA ram_00B2
C - - - - - 0x01F09B 07:F08B: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F09E 07:F08E: 60        RTS



tbl_F08F:
- D 3 - - - 0x01F09F 07:F08F: 90        .byte $90   ; 
- D 3 - - - 0x01F0A0 07:F090: 86        .byte $86   ; 
- D 3 - - - 0x01F0A1 07:F091: 83        .byte $83   ; 
- D 3 - - - 0x01F0A2 07:F092: 83        .byte $83   ; 
- D 3 - - - 0x01F0A3 07:F093: 83        .byte $83   ; 
- - - - - - 0x01F0A4 07:F094: 86        .byte $86   ; 
- D 3 - - - 0x01F0A5 07:F095: 7B        .byte $7B   ; 
- D 3 - - - 0x01F0A6 07:F096: 7B        .byte $7B   ; 
- D 3 - - - 0x01F0A7 07:F097: 83        .byte $83   ; 



tbl_F098:
- D 3 - - - 0x01F0A8 07:F098: 9C        .byte $9C   ; 
- D 3 - - - 0x01F0A9 07:F099: 98        .byte $98   ; 
- D 3 - - - 0x01F0AA 07:F09A: 9B        .byte $9B   ; 
- D 3 - - - 0x01F0AB 07:F09B: 9B        .byte $9B   ; 
- D 3 - - - 0x01F0AC 07:F09C: 99        .byte $99   ; 
- - - - - - 0x01F0AD 07:F09D: 98        .byte $98   ; 
- D 3 - - - 0x01F0AE 07:F09E: 93        .byte $93   ; 
- D 3 - - - 0x01F0AF 07:F09F: 93        .byte $93   ; 
- D 3 - - - 0x01F0B0 07:F0A0: 9C        .byte $9C   ; 



tbl_F0A1:
- D 3 - - - 0x01F0B1 07:F0A1: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B2 07:F0A2: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B3 07:F0A3: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B4 07:F0A4: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B5 07:F0A5: C2        .byte $C2   ; 
- - - - - - 0x01F0B6 07:F0A6: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B7 07:F0A7: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B8 07:F0A8: C2        .byte $C2   ; 
- D 3 - - - 0x01F0B9 07:F0A9: C2        .byte $C2   ; 



sub_F0AA:
C - - - - - 0x01F0BA 07:F0AA: 98        TYA
C - - - - - 0x01F0BB 07:F0AB: 48        PHA
C - - - - - 0x01F0BC 07:F0AC: BD 05 03  LDA ram_0305,X
C - - - - - 0x01F0BF 07:F0AF: D0 12     BNE bra_F0C3
C - - - - - 0x01F0C1 07:F0B1: 20 CF F0  JSR sub_F0CF
C - - - - - 0x01F0C4 07:F0B4: A5 28     LDA ram_0028
C - - - - - 0x01F0C6 07:F0B6: D0 10     BNE bra_F0C8
C - - - - - 0x01F0C8 07:F0B8: BC 0A 05  LDY ram_050A,X
C - - - - - 0x01F0CB 07:F0BB: BD 04 03  LDA ram_0304,X
C - - - - - 0x01F0CE 07:F0BE: D9 8F F0  CMP tbl_F08F,Y
C - - - - - 0x01F0D1 07:F0C1: B0 05     BCS bra_F0C8
bra_F0C3:
C - - - - - 0x01F0D3 07:F0C3: A9 00     LDA #$00
C - - - - - 0x01F0D5 07:F0C5: 4C CA F0  JMP loc_F0CA
bra_F0C8:
C - - - - - 0x01F0D8 07:F0C8: A9 01     LDA #$01
loc_F0CA:
C D 3 - - - 0x01F0DA 07:F0CA: 85 28     STA ram_0028
C - - - - - 0x01F0DC 07:F0CC: 68        PLA
C - - - - - 0x01F0DD 07:F0CD: A8        TAY
C - - - - - 0x01F0DE 07:F0CE: 60        RTS



sub_F0CF:
C - - - - - 0x01F0DF 07:F0CF: 98        TYA
C - - - - - 0x01F0E0 07:F0D0: 48        PHA
C - - - - - 0x01F0E1 07:F0D1: BD 05 03  LDA ram_0305,X
C - - - - - 0x01F0E4 07:F0D4: D0 0F     BNE bra_F0E5
C - - - - - 0x01F0E6 07:F0D6: BD 04 03  LDA ram_0304,X
C - - - - - 0x01F0E9 07:F0D9: 18        CLC
C - - - - - 0x01F0EA 07:F0DA: 7D 0F 03  ADC ram_030F,X
C - - - - - 0x01F0ED 07:F0DD: BC 0A 05  LDY ram_050A,X
C - - - - - 0x01F0F0 07:F0E0: D9 A1 F0  CMP tbl_F0A1,Y
C - - - - - 0x01F0F3 07:F0E3: B0 05     BCS bra_F0EA
bra_F0E5:
C - - - - - 0x01F0F5 07:F0E5: A9 00     LDA #$00
C - - - - - 0x01F0F7 07:F0E7: 4C EC F0  JMP loc_F0EC
bra_F0EA:
C - - - - - 0x01F0FA 07:F0EA: A9 01     LDA #$01
loc_F0EC:
C D 3 - - - 0x01F0FC 07:F0EC: 85 28     STA ram_0028
C - - - - - 0x01F0FE 07:F0EE: 68        PLA
C - - - - - 0x01F0FF 07:F0EF: A8        TAY
C - - - - - 0x01F100 07:F0F0: 60        RTS



sub_F0F1:
C - - - - - 0x01F101 07:F0F1: 98        TYA
C - - - - - 0x01F102 07:F0F2: 48        PHA
C - - - - - 0x01F103 07:F0F3: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01F106 07:F0F6: A8        TAY
C - - - - - 0x01F107 07:F0F7: B9 8F F0  LDA tbl_F08F,Y
C - - - - - 0x01F10A 07:F0FA: 9D 04 03  STA ram_0304,X
C - - - - - 0x01F10D 07:F0FD: A9 00     LDA #$00
C - - - - - 0x01F10F 07:F0FF: 9D 05 03  STA ram_0305,X
C - - - - - 0x01F112 07:F102: 68        PLA
C - - - - - 0x01F113 07:F103: A8        TAY
C - - - - - 0x01F114 07:F104: 60        RTS



sub_F105:
C - - - - - 0x01F115 07:F105: 98        TYA
C - - - - - 0x01F116 07:F106: 48        PHA
C - - - - - 0x01F117 07:F107: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01F11A 07:F10A: A8        TAY
C - - - - - 0x01F11B 07:F10B: B9 98 F0  LDA tbl_F098,Y
C - - - - - 0x01F11E 07:F10E: 9D 04 03  STA ram_0304,X
C - - - - - 0x01F121 07:F111: A9 00     LDA #$00
C - - - - - 0x01F123 07:F113: 9D 05 03  STA ram_0305,X
C - - - - - 0x01F126 07:F116: 68        PLA
C - - - - - 0x01F127 07:F117: A8        TAY
C - - - - - 0x01F128 07:F118: 60        RTS


; bzk garbage
- - - - - - 0x01F129 07:F119: 98        TYA
- - - - - - 0x01F12A 07:F11A: 48        PHA
- - - - - - 0x01F12B 07:F11B: BD 0A 05  LDA ram_050A,X
- - - - - - 0x01F12E 07:F11E: A8        TAY
- - - - - - 0x01F12F 07:F11F: B9 A1 F0  LDA tbl_F0A1,Y
- - - - - - 0x01F132 07:F122: 38        SEC
- - - - - - 0x01F133 07:F123: FD 0F 03  SBC ram_030F,X
- - - - - - 0x01F136 07:F126: 9D 04 03  STA ram_0304,X
- - - - - - 0x01F139 07:F129: A9 00     LDA #$00
- - - - - - 0x01F13B 07:F12B: 9D 05 03  STA ram_0305,X
- - - - - - 0x01F13E 07:F12E: 68        PLA
- - - - - - 0x01F13F 07:F12F: A8        TAY
- - - - - - 0x01F140 07:F130: 60        RTS



sub_F131:
C - - - - - 0x01F141 07:F131: 98        TYA
C - - - - - 0x01F142 07:F132: 48        PHA
C - - - - - 0x01F143 07:F133: A5 73     LDA ram_0073
C - - - - - 0x01F145 07:F135: 0A        ASL
C - - - - - 0x01F146 07:F136: A8        TAY
C - - - - - 0x01F147 07:F137: B9 74 00  LDA a: ram_0074,Y
C - - - - - 0x01F14A 07:F13A: 85 A5     STA ram_00A5
C - - - - - 0x01F14C 07:F13C: B9 75 00  LDA a: ram_0075,Y
C - - - - - 0x01F14F 07:F13F: 85 A6     STA ram_00A6
C - - - - - 0x01F151 07:F141: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F154 07:F144: A9 01     LDA #$01
C - - - - - 0x01F156 07:F146: 85 B0     STA ram_00B0
C - - - - - 0x01F158 07:F148: B9 5F F1  LDA tbl_F15F,Y
C - - - - - 0x01F15B 07:F14B: 85 B1     STA ram_00B1
C - - - - - 0x01F15D 07:F14D: A9 A8     LDA #$A8
C - - - - - 0x01F15F 07:F14F: 85 AE     STA ram_00AE
C - - - - - 0x01F161 07:F151: A9 00     LDA #$00
C - - - - - 0x01F163 07:F153: 85 AF     STA ram_00AF
C - - - - - 0x01F165 07:F155: A9 06     LDA #$06
C - - - - - 0x01F167 07:F157: 85 B2     STA ram_00B2
C - - - - - 0x01F169 07:F159: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F16C 07:F15C: 68        PLA
C - - - - - 0x01F16D 07:F15D: A8        TAY
C - - - - - 0x01F16E 07:F15E: 60        RTS



tbl_F15F:
- D 3 - - - 0x01F16F 07:F15F: 06        .byte $06   ; 
- - - - - - 0x01F170 07:F160: 00        .byte $00   ; 
- D 3 - - - 0x01F171 07:F161: 18        .byte $18   ; 
- - - - - - 0x01F172 07:F162: 00        .byte $00   ; 
- D 3 - - - 0x01F173 07:F163: 0D        .byte $0D   ; 
- - - - - - 0x01F174 07:F164: 00        .byte $00   ; 



sub_F165:
C - - - - - 0x01F175 07:F165: A5 72     LDA ram_0072
C - - - - - 0x01F177 07:F167: C9 02     CMP #$02
C - - - - - 0x01F179 07:F169: D0 1F     BNE bra_F18A
C - - - - - 0x01F17B 07:F16B: A6 2E     LDX ram_002E
C - - - - - 0x01F17D 07:F16D: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01F180 07:F170: D0 18     BNE bra_F18A
C - - - - - 0x01F182 07:F172: A5 2D     LDA ram_002D
C - - - - - 0x01F184 07:F174: C9 08     CMP #$08
C - - - - - 0x01F186 07:F176: B0 12     BCS bra_F18A
C - - - - - 0x01F188 07:F178: E6 2D     INC ram_002D
C - - - - - 0x01F18A 07:F17A: A5 2D     LDA ram_002D
C - - - - - 0x01F18C 07:F17C: 48        PHA
C - - - - - 0x01F18D 07:F17D: 20 7D F0  JSR sub_F07D
C - - - - - 0x01F190 07:F180: 68        PLA
C - - - - - 0x01F191 07:F181: 18        CLC
C - - - - - 0x01F192 07:F182: 69 20     ADC #$20
C - - - - - 0x01F194 07:F184: 20 7D F0  JSR sub_F07D
C - - - - - 0x01F197 07:F187: 4C E0 F2  JMP loc_F2E0
bra_F18A:
C - - - - - 0x01F19A 07:F18A: E6 72     INC ram_0072
C - - - - - 0x01F19C 07:F18C: A5 72     LDA ram_0072
C - - - - - 0x01F19E 07:F18E: C9 03     CMP #$03
C - - - - - 0x01F1A0 07:F190: D0 1B     BNE bra_F1AD
C - - - - - 0x01F1A2 07:F192: A6 2E     LDX ram_002E
C - - - - - 0x01F1A4 07:F194: E0 10     CPX #$10
C - - - - - 0x01F1A6 07:F196: D0 05     BNE bra_F19D
C - - - - - 0x01F1A8 07:F198: E6 F8     INC ram_00F8
C - - - - - 0x01F1AA 07:F19A: 4C 9F F1  JMP loc_F19F
bra_F19D:
C - - - - - 0x01F1AD 07:F19D: E6 F9     INC ram_00F9
loc_F19F:
C D 3 - - - 0x01F1AF 07:F19F: 20 F0 F8  JSR sub_F8F0
C - - - - - 0x01F1B2 07:F1A2: BD 0E 05  LDA ram_050E,X
C - - - - - 0x01F1B5 07:F1A5: F0 23     BEQ bra_F1CA
C - - - - - 0x01F1B7 07:F1A7: A9 FF     LDA #$FF
C - - - - - 0x01F1B9 07:F1A9: 85 72     STA ram_0072
C - - - - - 0x01F1BB 07:F1AB: D0 1D     BNE bra_F1CA
bra_F1AD:
C - - - - - 0x01F1BD 07:F1AD: C9 04     CMP #$04
C - - - - - 0x01F1BF 07:F1AF: D0 1C     BNE bra_F1CD
C - - - - - 0x01F1C1 07:F1B1: C6 2D     DEC ram_002D
C - - - - - 0x01F1C3 07:F1B3: A9 1E     LDA #$1E
C - - - - - 0x01F1C5 07:F1B5: 85 B0     STA ram_00B0
C - - - - - 0x01F1C7 07:F1B7: A9 00     LDA #$00
C - - - - - 0x01F1C9 07:F1B9: 85 B1     STA ram_00B1
C - - - - - 0x01F1CB 07:F1BB: A9 10     LDA #$10
C - - - - - 0x01F1CD 07:F1BD: 85 B2     STA ram_00B2
C - - - - - 0x01F1CF 07:F1BF: A9 00     LDA #$00
C - - - - - 0x01F1D1 07:F1C1: 85 AE     STA ram_00AE
C - - - - - 0x01F1D3 07:F1C3: A9 00     LDA #$00
C - - - - - 0x01F1D5 07:F1C5: 85 AF     STA ram_00AF
C - - - - - 0x01F1D7 07:F1C7: 20 9D FF  JSR sub_FF9D
bra_F1CA:
C - - - - - 0x01F1DA 07:F1CA: 4C E0 F2  JMP loc_F2E0
bra_F1CD:
C - - - - - 0x01F1DD 07:F1CD: C9 05     CMP #$05
C - - - - - 0x01F1DF 07:F1CF: D0 3C     BNE bra_F20D
C - - - - - 0x01F1E1 07:F1D1: A9 04     LDA #$04
C - - - - - 0x01F1E3 07:F1D3: 85 B0     STA ram_00B0
C - - - - - 0x01F1E5 07:F1D5: A9 09     LDA #$09
C - - - - - 0x01F1E7 07:F1D7: 85 B1     STA ram_00B1
C - - - - - 0x01F1E9 07:F1D9: A9 04     LDA #$04
C - - - - - 0x01F1EB 07:F1DB: 85 B2     STA ram_00B2
C - - - - - 0x01F1ED 07:F1DD: A9 EC     LDA #< tbl_F2EC
C - - - - - 0x01F1EF 07:F1DF: 85 AE     STA ram_00AE
C - - - - - 0x01F1F1 07:F1E1: A9 F2     LDA #> tbl_F2EC
C - - - - - 0x01F1F3 07:F1E3: 85 AF     STA ram_00AF
C - - - - - 0x01F1F5 07:F1E5: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F1F8 07:F1E8: A5 3E     LDA ram_game_time
C - - - - - 0x01F1FA 07:F1EA: 85 A5     STA ram_00A5
C - - - - - 0x01F1FC 07:F1EC: A9 00     LDA #$00
C - - - - - 0x01F1FE 07:F1EE: 85 A6     STA ram_00A6
C - - - - - 0x01F200 07:F1F0: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F203 07:F1F3: A9 04     LDA #$04
C - - - - - 0x01F205 07:F1F5: 85 B0     STA ram_00B0
C - - - - - 0x01F207 07:F1F7: A9 12     LDA #$12
C - - - - - 0x01F209 07:F1F9: 85 B1     STA ram_00B1
C - - - - - 0x01F20B 07:F1FB: A9 04     LDA #$04
C - - - - - 0x01F20D 07:F1FD: 85 B2     STA ram_00B2
C - - - - - 0x01F20F 07:F1FF: A9 AA     LDA #$AA
C - - - - - 0x01F211 07:F201: 85 AE     STA ram_00AE
C - - - - - 0x01F213 07:F203: A9 00     LDA #$00
C - - - - - 0x01F215 07:F205: 85 AF     STA ram_00AF
C - - - - - 0x01F217 07:F207: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F21A 07:F20A: 4C E0 F2  JMP loc_F2E0
bra_F20D:
C - - - - - 0x01F21D 07:F20D: C9 06     CMP #$06
C - - - - - 0x01F21F 07:F20F: D0 72     BNE bra_F283
C - - - - - 0x01F221 07:F211: A6 2E     LDX ram_002E
C - - - - - 0x01F223 07:F213: BD 00 05  LDA ram_0500,X
C - - - - - 0x01F226 07:F216: 0A        ASL
C - - - - - 0x01F227 07:F217: 85 7A     STA ram_007A
C - - - - - 0x01F229 07:F219: C9 B0     CMP #$B0
C - - - - - 0x01F22B 07:F21B: D0 1D     BNE bra_F23A
C - - - - - 0x01F22D 07:F21D: A9 05     LDA #$05
C - - - - - 0x01F22F 07:F21F: 85 B0     STA ram_00B0
C - - - - - 0x01F231 07:F221: A9 09     LDA #$09
C - - - - - 0x01F233 07:F223: 85 B1     STA ram_00B1
C - - - - - 0x01F235 07:F225: A9 07     LDA #$07
C - - - - - 0x01F237 07:F227: 85 B2     STA ram_00B2
C - - - - - 0x01F239 07:F229: A9 F5     LDA #< tbl_F2F5
C - - - - - 0x01F23B 07:F22B: 85 AE     STA ram_00AE
C - - - - - 0x01F23D 07:F22D: A9 F2     LDA #> tbl_F2F5
C - - - - - 0x01F23F 07:F22F: 85 AF     STA ram_00AF
C - - - - - 0x01F241 07:F231: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F244 07:F234: A9 C8     LDA #$C8
C - - - - - 0x01F246 07:F236: 85 7A     STA ram_007A
C - - - - - 0x01F248 07:F238: D0 17     BNE bra_F251
bra_F23A:
C - - - - - 0x01F24A 07:F23A: A9 05     LDA #$05
C - - - - - 0x01F24C 07:F23C: 85 B0     STA ram_00B0
C - - - - - 0x01F24E 07:F23E: A9 09     LDA #$09
C - - - - - 0x01F250 07:F240: 85 B1     STA ram_00B1
C - - - - - 0x01F252 07:F242: A9 05     LDA #$05
C - - - - - 0x01F254 07:F244: 85 B2     STA ram_00B2
C - - - - - 0x01F256 07:F246: A9 F0     LDA #< tbl_F2F0
C - - - - - 0x01F258 07:F248: 85 AE     STA ram_00AE
C - - - - - 0x01F25A 07:F24A: A9 F2     LDA #> tbl_F2F0
C - - - - - 0x01F25C 07:F24C: 85 AF     STA ram_00AF
C - - - - - 0x01F25E 07:F24E: 20 9D FF  JSR sub_FF9D
bra_F251:
C - - - - - 0x01F261 07:F251: A5 7A     LDA ram_007A
C - - - - - 0x01F263 07:F253: 85 A5     STA ram_00A5
C - - - - - 0x01F265 07:F255: A9 00     LDA #$00
C - - - - - 0x01F267 07:F257: 85 A6     STA ram_00A6
C - - - - - 0x01F269 07:F259: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F26C 07:F25C: A9 05     LDA #$05
C - - - - - 0x01F26E 07:F25E: 85 B0     STA ram_00B0
C - - - - - 0x01F270 07:F260: A9 11     LDA #$11
C - - - - - 0x01F272 07:F262: 85 B1     STA ram_00B1
C - - - - - 0x01F274 07:F264: A9 05     LDA #$05
C - - - - - 0x01F276 07:F266: 85 B2     STA ram_00B2
C - - - - - 0x01F278 07:F268: A9 A9     LDA #$A9
C - - - - - 0x01F27A 07:F26A: 85 AE     STA ram_00AE
C - - - - - 0x01F27C 07:F26C: A9 00     LDA #$00
C - - - - - 0x01F27E 07:F26E: 85 AF     STA ram_00AF
C - - - - - 0x01F280 07:F270: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F283 07:F273: A5 7A     LDA ram_007A
C - - - - - 0x01F285 07:F275: 18        CLC
C - - - - - 0x01F286 07:F276: 65 3E     ADC ram_game_time
C - - - - - 0x01F288 07:F278: 85 7A     STA ram_007A
C - - - - - 0x01F28A 07:F27A: A9 00     LDA #$00
C - - - - - 0x01F28C 07:F27C: 69 00     ADC #$00
C - - - - - 0x01F28E 07:F27E: 85 7B     STA ram_007B
C - - - - - 0x01F290 07:F280: 4C E0 F2  JMP loc_F2E0
bra_F283:
C - - - - - 0x01F293 07:F283: C9 07     CMP #$07
C - - - - - 0x01F295 07:F285: D0 40     BNE bra_F2C7
C - - - - - 0x01F297 07:F287: A9 07     LDA #$07
C - - - - - 0x01F299 07:F289: 85 B0     STA ram_00B0
C - - - - - 0x01F29B 07:F28B: A9 09     LDA #$09
C - - - - - 0x01F29D 07:F28D: 85 B1     STA ram_00B1
C - - - - - 0x01F29F 07:F28F: A9 05     LDA #$05
C - - - - - 0x01F2A1 07:F291: 85 B2     STA ram_00B2
C - - - - - 0x01F2A3 07:F293: A9 FC     LDA #< tbl_F2FC
C - - - - - 0x01F2A5 07:F295: 85 AE     STA ram_00AE
C - - - - - 0x01F2A7 07:F297: A9 F2     LDA #> tbl_F2FC
C - - - - - 0x01F2A9 07:F299: 85 AF     STA ram_00AF
C - - - - - 0x01F2AB 07:F29B: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F2AE 07:F29E: A5 7A     LDA ram_007A
C - - - - - 0x01F2B0 07:F2A0: 85 A5     STA ram_00A5
C - - - - - 0x01F2B2 07:F2A2: A5 7B     LDA ram_007B
C - - - - - 0x01F2B4 07:F2A4: 85 A6     STA ram_00A6
C - - - - - 0x01F2B6 07:F2A6: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F2B9 07:F2A9: A9 07     LDA #$07
C - - - - - 0x01F2BB 07:F2AB: 85 B0     STA ram_00B0
C - - - - - 0x01F2BD 07:F2AD: A9 11     LDA #$11
C - - - - - 0x01F2BF 07:F2AF: 85 B1     STA ram_00B1
C - - - - - 0x01F2C1 07:F2B1: A9 05     LDA #$05
C - - - - - 0x01F2C3 07:F2B3: 85 B2     STA ram_00B2
C - - - - - 0x01F2C5 07:F2B5: A9 A9     LDA #$A9
C - - - - - 0x01F2C7 07:F2B7: 85 AE     STA ram_00AE
C - - - - - 0x01F2C9 07:F2B9: A9 00     LDA #$00
C - - - - - 0x01F2CB 07:F2BB: 85 AF     STA ram_00AF
C - - - - - 0x01F2CD 07:F2BD: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F2D0 07:F2C0: A9 78     LDA #$78
C - - - - - 0x01F2D2 07:F2C2: 85 10     STA ram_0010
C - - - - - 0x01F2D4 07:F2C4: 4C E0 F2  JMP loc_F2E0
bra_F2C7:
C - - - - - 0x01F2D7 07:F2C7: C9 08     CMP #$08
C - - - - - 0x01F2D9 07:F2C9: F0 04     BEQ bra_F2CF
C - - - - - 0x01F2DB 07:F2CB: C9 09     CMP #$09
C - - - - - 0x01F2DD 07:F2CD: D0 11     BNE bra_F2E0
bra_F2CF:
C - - - - - 0x01F2DF 07:F2CF: A5 10     LDA ram_0010
C - - - - - 0x01F2E1 07:F2D1: F0 05     BEQ bra_F2D8
C - - - - - 0x01F2E3 07:F2D3: C6 72     DEC ram_0072
C - - - - - 0x01F2E5 07:F2D5: 4C E0 F2  JMP loc_F2E0
bra_F2D8:
C - - - - - 0x01F2E8 07:F2D8: 20 01 F3  JSR sub_F301
C - - - - - 0x01F2EB 07:F2DB: E6 10     INC ram_0010
C - - - - - 0x01F2ED 07:F2DD: 4C E0 F2  JMP loc_F2E0
bra_F2E0:
loc_F2E0:
C D 3 - - - 0x01F2F0 07:F2E0: A9 00     LDA #$00
C - - - - - 0x01F2F2 07:F2E2: 8D 06 20  STA $2006
C - - - - - 0x01F2F5 07:F2E5: 8D 06 20  STA $2006
C - - - - - 0x01F2F8 07:F2E8: 20 5C F8  JSR sub_F85C
C - - - - - 0x01F2FB 07:F2EB: 60        RTS



tbl_F2EC:
- D 3 - I - 0x01F2FC 07:F2EC: 54        .byte $54   ; 
- D 3 - I - 0x01F2FD 07:F2ED: 49        .byte $49   ; 
- D 3 - I - 0x01F2FE 07:F2EE: 4D        .byte $4D   ; 
- D 3 - I - 0x01F2FF 07:F2EF: 45        .byte $45   ; 



tbl_F2F0:
- D 3 - I - 0x01F300 07:F2F0: 56        .byte $56   ; 
- D 3 - I - 0x01F301 07:F2F1: 49        .byte $49   ; 
- D 3 - I - 0x01F302 07:F2F2: 54        .byte $54   ; 
- D 3 - I - 0x01F303 07:F2F3: 41        .byte $41   ; 
- D 3 - I - 0x01F304 07:F2F4: 4C        .byte $4C   ; 



tbl_F2F5:
- D 3 - I - 0x01F305 07:F2F5: 50        .byte $50   ; 
- D 3 - I - 0x01F306 07:F2F6: 45        .byte $45   ; 
- D 3 - I - 0x01F307 07:F2F7: 52        .byte $52   ; 
- D 3 - I - 0x01F308 07:F2F8: 46        .byte $46   ; 
- D 3 - I - 0x01F309 07:F2F9: 45        .byte $45   ; 
- D 3 - I - 0x01F30A 07:F2FA: 43        .byte $43   ; 
- D 3 - I - 0x01F30B 07:F2FB: 54        .byte $54   ; 



tbl_F2FC:
- D 3 - I - 0x01F30C 07:F2FC: 42        .byte $42   ; 
- D 3 - I - 0x01F30D 07:F2FD: 4F        .byte $4F   ; 
- D 3 - I - 0x01F30E 07:F2FE: 4E        .byte $4E   ; 
- D 3 - I - 0x01F30F 07:F2FF: 55        .byte $55   ; 
- D 3 - I - 0x01F310 07:F300: 53        .byte $53   ; 



sub_F301:
C - - - - - 0x01F311 07:F301: A2 00     LDX #$00
C - - - - - 0x01F313 07:F303: A5 2E     LDA ram_002E
C - - - - - 0x01F315 07:F305: C9 10     CMP #$10
C - - - - - 0x01F317 07:F307: F0 02     BEQ bra_F30B
C - - - - - 0x01F319 07:F309: A2 02     LDX #$02
bra_F30B:
C - - - - - 0x01F31B 07:F30B: A5 72     LDA ram_0072
C - - - - - 0x01F31D 07:F30D: C9 09     CMP #$09
C - - - - - 0x01F31F 07:F30F: F0 5E     BEQ bra_F36F
C - - - - - 0x01F321 07:F311: A5 7B     LDA ram_007B
C - - - - - 0x01F323 07:F313: D0 04     BNE bra_F319
C - - - - - 0x01F325 07:F315: A5 7A     LDA ram_007A
C - - - - - 0x01F327 07:F317: F0 62     BEQ bra_F37B
bra_F319:
C - - - - - 0x01F329 07:F319: A5 B6     LDA ram_00B6
C - - - - - 0x01F32B 07:F31B: 29 10     AND #$10
C - - - - - 0x01F32D 07:F31D: F0 15     BEQ bra_F334
C - - - - - 0x01F32F 07:F31F: B5 74     LDA ram_0074,X
C - - - - - 0x01F331 07:F321: 18        CLC
C - - - - - 0x01F332 07:F322: 65 7A     ADC ram_007A
C - - - - - 0x01F334 07:F324: 95 74     STA ram_0074,X
C - - - - - 0x01F336 07:F326: B5 75     LDA ram_0075,X
C - - - - - 0x01F338 07:F328: 65 7B     ADC ram_007B
C - - - - - 0x01F33A 07:F32A: 95 75     STA ram_0075,X
C - - - - - 0x01F33C 07:F32C: A9 00     LDA #$00
C - - - - - 0x01F33E 07:F32E: 85 7A     STA ram_007A
C - - - - - 0x01F340 07:F330: 85 7B     STA ram_007B
C - - - - - 0x01F342 07:F332: F0 13     BEQ bra_F347
bra_F334:
C - - - - - 0x01F344 07:F334: A5 7A     LDA ram_007A
C - - - - - 0x01F346 07:F336: 38        SEC
C - - - - - 0x01F347 07:F337: E9 01     SBC #< $0001
C - - - - - 0x01F349 07:F339: 85 7A     STA ram_007A
C - - - - - 0x01F34B 07:F33B: A5 7B     LDA ram_007B
C - - - - - 0x01F34D 07:F33D: E9 00     SBC #> $0001
C - - - - - 0x01F34F 07:F33F: 85 7B     STA ram_007B
C - - - - - 0x01F351 07:F341: F6 74     INC ram_0074,X
C - - - - - 0x01F353 07:F343: D0 02     BNE bra_F347
C - - - - - 0x01F355 07:F345: F6 75     INC ram_0075,X
bra_F347:
C - - - - - 0x01F357 07:F347: A5 7A     LDA ram_007A
C - - - - - 0x01F359 07:F349: 85 A5     STA ram_00A5
C - - - - - 0x01F35B 07:F34B: A5 7B     LDA ram_007B
C - - - - - 0x01F35D 07:F34D: 85 A6     STA ram_00A6
C - - - - - 0x01F35F 07:F34F: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F362 07:F352: A9 07     LDA #$07
C - - - - - 0x01F364 07:F354: 85 B0     STA ram_00B0
C - - - - - 0x01F366 07:F356: A9 11     LDA #$11
C - - - - - 0x01F368 07:F358: 85 B1     STA ram_00B1
C - - - - - 0x01F36A 07:F35A: A9 05     LDA #$05
C - - - - - 0x01F36C 07:F35C: 85 B2     STA ram_00B2
C - - - - - 0x01F36E 07:F35E: A9 A9     LDA #$A9
C - - - - - 0x01F370 07:F360: 85 AE     STA ram_00AE
C - - - - - 0x01F372 07:F362: A9 00     LDA #$00
C - - - - - 0x01F374 07:F364: 85 AF     STA ram_00AF
C - - - - - 0x01F376 07:F366: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F379 07:F369: A9 28     LDA #$28
C - - - - - 0x01F37B 07:F36B: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01F37E 07:F36E: 60        RTS
bra_F36F:
C - - - - - 0x01F37F 07:F36F: 8A        TXA
C - - - - - 0x01F380 07:F370: 4A        LSR
C - - - - - 0x01F381 07:F371: 85 73     STA ram_0073
C - - - - - 0x01F383 07:F373: 20 31 F1  JSR sub_F131
C - - - - - 0x01F386 07:F376: C6 72     DEC ram_0072
C - - - - - 0x01F388 07:F378: C6 72     DEC ram_0072
C - - - - - 0x01F38A 07:F37A: 60        RTS
bra_F37B:
C - - - - - 0x01F38B 07:F37B: 20 0B F8  JSR sub_F80B
C - - - - - 0x01F38E 07:F37E: A9 FA     LDA #$FA
C - - - - - 0x01F390 07:F380: 85 72     STA ram_0072
C - - - - - 0x01F392 07:F382: 60        RTS



sub_F383:
C - - - - - 0x01F393 07:F383: BD 02 03  LDA ram_0302,X
C - - - - - 0x01F396 07:F386: 38        SEC
C - - - - - 0x01F397 07:F387: F9 02 03  SBC ram_0302,Y
C - - - - - 0x01F39A 07:F38A: B0 05     BCS bra_F391_RTS
C - - - - - 0x01F39C 07:F38C: 49 FF     EOR #$FF
C - - - - - 0x01F39E 07:F38E: 18        CLC
C - - - - - 0x01F39F 07:F38F: 69 01     ADC #$01
bra_F391_RTS:
C - - - - - 0x01F3A1 07:F391: 60        RTS



sub_F392:
C - - - - - 0x01F3A2 07:F392: BD 08 04  LDA ram_0408,X
C - - - - - 0x01F3A5 07:F395: D0 09     BNE bra_F3A0
C - - - - - 0x01F3A7 07:F397: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01F3AA 07:F39A: 09 10     ORA #$10
C - - - - - 0x01F3AC 07:F39C: 9D 0F 05  STA ram_050F,X
C - - - - - 0x01F3AF 07:F39F: 60        RTS
bra_F3A0:
C - - - - - 0x01F3B0 07:F3A0: C9 46     CMP #$46
C - - - - - 0x01F3B2 07:F3A2: B0 12     BCS bra_F3B6_RTS
C - - - - - 0x01F3B4 07:F3A4: C9 16     CMP #$16
C - - - - - 0x01F3B6 07:F3A6: D0 06     BNE bra_F3AE
C - - - - - 0x01F3B8 07:F3A8: 20 B7 F3  JSR sub_F3B7
C - - - - - 0x01F3BB 07:F3AB: 4C B1 F3  JMP loc_F3B1
bra_F3AE:
C - - - - - 0x01F3BE 07:F3AE: 20 E8 F3  JSR sub_F3E8
loc_F3B1:
C D 3 - - - 0x01F3C1 07:F3B1: A9 00     LDA #$00
C - - - - - 0x01F3C3 07:F3B3: 9D 08 04  STA ram_0408,X
bra_F3B6_RTS:
C - - - - - 0x01F3C6 07:F3B6: 60        RTS



sub_F3B7:
C - - - - - 0x01F3C7 07:F3B7: 98        TYA
C - - - - - 0x01F3C8 07:F3B8: 48        PHA
C - - - - - 0x01F3C9 07:F3B9: A9 00     LDA #$00
C - - - - - 0x01F3CB 07:F3BB: 20 CB F3  JSR sub_F3CB
C - - - - - 0x01F3CE 07:F3BE: A9 16     LDA #$16
C - - - - - 0x01F3D0 07:F3C0: 20 CB F3  JSR sub_F3CB
C - - - - - 0x01F3D3 07:F3C3: A9 2C     LDA #$2C
C - - - - - 0x01F3D5 07:F3C5: 20 CB F3  JSR sub_F3CB
C - - - - - 0x01F3D8 07:F3C8: 68        PLA
C - - - - - 0x01F3D9 07:F3C9: A8        TAY
C - - - - - 0x01F3DA 07:F3CA: 60        RTS



sub_F3CB:
C - - - - - 0x01F3DB 07:F3CB: 48        PHA
C - - - - - 0x01F3DC 07:F3CC: A9 00     LDA #$00
C - - - - - 0x01F3DE 07:F3CE: 85 DB     STA ram_00DB
C - - - - - 0x01F3E0 07:F3D0: 85 DC     STA ram_00DC
C - - - - - 0x01F3E2 07:F3D2: BD 08 04  LDA ram_0408,X
C - - - - - 0x01F3E5 07:F3D5: 20 E0 EC  JSR sub_ECE0
C - - - - - 0x01F3E8 07:F3D8: A4 DD     LDY ram_00DD
C - - - - - 0x01F3EA 07:F3DA: 8A        TXA
C - - - - - 0x01F3EB 07:F3DB: 99 03 05  STA ram_0503,Y
C - - - - - 0x01F3EE 07:F3DE: A9 FF     LDA #$FF
C - - - - - 0x01F3F0 07:F3E0: 99 0D 03  STA ram_030D,Y
C - - - - - 0x01F3F3 07:F3E3: 68        PLA
C - - - - - 0x01F3F4 07:F3E4: 99 09 03  STA ram_0309,Y
C - - - - - 0x01F3F7 07:F3E7: 60        RTS



sub_F3E8:
C - - - - - 0x01F3F8 07:F3E8: 98        TYA
C - - - - - 0x01F3F9 07:F3E9: 48        PHA
C - - - - - 0x01F3FA 07:F3EA: 8A        TXA
C - - - - - 0x01F3FB 07:F3EB: 48        PHA
C - - - - - 0x01F3FC 07:F3EC: A8        TAY
C - - - - - 0x01F3FD 07:F3ED: 18        CLC
C - - - - - 0x01F3FE 07:F3EE: 69 10     ADC #$10
C - - - - - 0x01F400 07:F3F0: AA        TAX
C - - - - - 0x01F401 07:F3F1: BD 00 03  LDA ram_0300,X
C - - - - - 0x01F404 07:F3F4: 30 35     BMI bra_F42B
C - - - - - 0x01F406 07:F3F6: A9 00     LDA #$00
C - - - - - 0x01F408 07:F3F8: 9D 03 03  STA ram_0303,X
C - - - - - 0x01F40B 07:F3FB: 9D 05 03  STA ram_0305,X
C - - - - - 0x01F40E 07:F3FE: B9 0A 05  LDA ram_050A,Y
C - - - - - 0x01F411 07:F401: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01F414 07:F404: B9 0C 03  LDA ram_030C,Y
C - - - - - 0x01F417 07:F407: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01F41A 07:F40A: B9 01 03  LDA ram_0301,Y
C - - - - - 0x01F41D 07:F40D: 29 CF     AND #$CF
C - - - - - 0x01F41F 07:F40F: 09 08     ORA #$08
C - - - - - 0x01F421 07:F411: 9D 01 03  STA ram_0301,X
C - - - - - 0x01F424 07:F414: B9 02 03  LDA ram_0302,Y
C - - - - - 0x01F427 07:F417: 9D 02 03  STA ram_0302,X
C - - - - - 0x01F42A 07:F41A: B9 04 03  LDA ram_0304,Y
C - - - - - 0x01F42D 07:F41D: 9D 04 03  STA ram_0304,X
C - - - - - 0x01F430 07:F420: A9 80     LDA #$80
C - - - - - 0x01F432 07:F422: 9D 00 03  STA ram_0300,X
C - - - - - 0x01F435 07:F425: B9 08 04  LDA ram_0408,Y
C - - - - - 0x01F438 07:F428: 20 85 E8  JSR sub_E885
bra_F42B:
C - - - - - 0x01F43B 07:F42B: 68        PLA
C - - - - - 0x01F43C 07:F42C: AA        TAX
C - - - - - 0x01F43D 07:F42D: 68        PLA
C - - - - - 0x01F43E 07:F42E: A8        TAY
C - - - - - 0x01F43F 07:F42F: 60        RTS



sub_F430:
C - - - - - 0x01F440 07:F430: 8A        TXA
C - - - - - 0x01F441 07:F431: 48        PHA
C - - - - - 0x01F442 07:F432: 98        TYA
C - - - - - 0x01F443 07:F433: 48        PHA
C - - - - - 0x01F444 07:F434: 8A        TXA
C - - - - - 0x01F445 07:F435: A8        TAY
C - - - - - 0x01F446 07:F436: A6 BE     LDX ram_00BE
C - - - - - 0x01F448 07:F438: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01F44B 07:F43B: C9 02     CMP #$02
C - - - - - 0x01F44D 07:F43D: F0 3C     BEQ bra_F47B
C - - - - - 0x01F44F 07:F43F: F6 EE     INC ram_00EE,X
C - - - - - 0x01F451 07:F441: B5 EE     LDA ram_00EE,X
C - - - - - 0x01F453 07:F443: C9 14     CMP #$14
C - - - - - 0x01F455 07:F445: 90 04     BCC bra_F44B
C - - - - - 0x01F457 07:F447: A9 00     LDA #$00
C - - - - - 0x01F459 07:F449: 95 F0     STA ram_00F0,X
bra_F44B:
C - - - - - 0x01F45B 07:F44B: B5 B4     LDA ram_00B4,X
C - - - - - 0x01F45D 07:F44D: C9 01     CMP #$01
C - - - - - 0x01F45F 07:F44F: F0 04     BEQ bra_F455
C - - - - - 0x01F461 07:F451: C9 03     CMP #$03
C - - - - - 0x01F463 07:F453: D0 17     BNE bra_F46C
bra_F455:
C - - - - - 0x01F465 07:F455: D5 F2     CMP ram_00F2,X
C - - - - - 0x01F467 07:F457: D0 09     BNE bra_F462
C - - - - - 0x01F469 07:F459: F6 F0     INC ram_00F0,X
C - - - - - 0x01F46B 07:F45B: A9 00     LDA #$00
C - - - - - 0x01F46D 07:F45D: 95 EE     STA ram_00EE,X
C - - - - - 0x01F46F 07:F45F: 4C 68 F4  JMP loc_F468
bra_F462:
C - - - - - 0x01F472 07:F462: A9 00     LDA #$00
C - - - - - 0x01F474 07:F464: 95 F0     STA ram_00F0,X
C - - - - - 0x01F476 07:F466: 95 EE     STA ram_00EE,X
loc_F468:
C D 3 - - - 0x01F478 07:F468: B5 B4     LDA ram_00B4,X
C - - - - - 0x01F47A 07:F46A: 95 F2     STA ram_00F2,X
bra_F46C:
C - - - - - 0x01F47C 07:F46C: B9 0C 05  LDA ram_050C,Y
C - - - - - 0x01F47F 07:F46F: C9 02     CMP #$02
C - - - - - 0x01F481 07:F471: F0 08     BEQ bra_F47B
C - - - - - 0x01F483 07:F473: B5 B6     LDA ram_00B6,X
C - - - - - 0x01F485 07:F475: 29 0F     AND #$0F
C - - - - - 0x01F487 07:F477: D5 E0     CMP ram_00E0,X
C - - - - - 0x01F489 07:F479: D0 0B     BNE bra_F486
bra_F47B:
C - - - - - 0x01F48B 07:F47B: B5 E6     LDA ram_00E6,X
C - - - - - 0x01F48D 07:F47D: C9 FF     CMP #$FF
C - - - - - 0x01F48F 07:F47F: F0 1F     BEQ bra_F4A0
C - - - - - 0x01F491 07:F481: F6 E6     INC ram_00E6,X
C - - - - - 0x01F493 07:F483: 4C A0 F4  JMP loc_F4A0
bra_F486:
C - - - - - 0x01F496 07:F486: B5 E0     LDA ram_00E0,X
C - - - - - 0x01F498 07:F488: C9 00     CMP #$00
C - - - - - 0x01F49A 07:F48A: F0 10     BEQ bra_F49C
C - - - - - 0x01F49C 07:F48C: B5 E2     LDA ram_00E2,X
C - - - - - 0x01F49E 07:F48E: 95 E4     STA ram_00E4,X
C - - - - - 0x01F4A0 07:F490: B5 E0     LDA ram_00E0,X
C - - - - - 0x01F4A2 07:F492: 95 E2     STA ram_00E2,X
C - - - - - 0x01F4A4 07:F494: B5 E8     LDA ram_00E8,X
C - - - - - 0x01F4A6 07:F496: 95 EA     STA ram_00EA,X
C - - - - - 0x01F4A8 07:F498: B5 E6     LDA ram_00E6,X
C - - - - - 0x01F4AA 07:F49A: 95 E8     STA ram_00E8,X
bra_F49C:
C - - - - - 0x01F4AC 07:F49C: A9 00     LDA #$00
C - - - - - 0x01F4AE 07:F49E: 95 E6     STA ram_00E6,X
bra_F4A0:
loc_F4A0:
C D 3 - - - 0x01F4B0 07:F4A0: B5 B6     LDA ram_00B6,X
C - - - - - 0x01F4B2 07:F4A2: 29 0F     AND #$0F
C - - - - - 0x01F4B4 07:F4A4: 95 E0     STA ram_00E0,X
C - - - - - 0x01F4B6 07:F4A6: 68        PLA
C - - - - - 0x01F4B7 07:F4A7: A8        TAY
C - - - - - 0x01F4B8 07:F4A8: 68        PLA
C - - - - - 0x01F4B9 07:F4A9: AA        TAX
C - - - - - 0x01F4BA 07:F4AA: 60        RTS



sub_F4AB:
C - - - - - 0x01F4BB 07:F4AB: 20 4D F8  JSR sub_F84D
C - - - - - 0x01F4BE 07:F4AE: 20 3B F9  JSR sub_F93B
C - - - - - 0x01F4C1 07:F4B1: 20 EE EF  JSR sub_EFEE_clear_0300_03CF
C - - - - - 0x01F4C4 07:F4B4: A9 02     LDA #$02
C - - - - - 0x01F4C6 07:F4B6: 85 0E     STA ram_000E
C - - - - - 0x01F4C8 07:F4B8: A9 00     LDA #$00
C - - - - - 0x01F4CA 07:F4BA: 20 97 FB  JSR sub_FB97
C - - - - - 0x01F4CD 07:F4BD: A5 2E     LDA ram_002E
C - - - - - 0x01F4CF 07:F4BF: D0 07     BNE bra_F4C8
C - - - - - 0x01F4D1 07:F4C1: A9 00     LDA #$00
C - - - - - 0x01F4D3 07:F4C3: A2 0A     LDX #$0A    ; VS screen
C - - - - - 0x01F4D5 07:F4C5: 20 E9 E7  JSR sub_E7E9_draw_screen
bra_F4C8:
C - - - - - 0x01F4D8 07:F4C8: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01F4DA 07:F4CA: 8D 00 70  STA $7000
C - - - - - 0x01F4DD 07:F4CD: A2 10     LDX #$10
C - - - - - 0x01F4DF 07:F4CF: 20 2C F5  JSR sub_F52C
C - - - - - 0x01F4E2 07:F4D2: A5 2E     LDA ram_002E
C - - - - - 0x01F4E4 07:F4D4: C9 40     CMP #$40
C - - - - - 0x01F4E6 07:F4D6: D0 07     BNE bra_F4DF
C - - - - - 0x01F4E8 07:F4D8: A5 3B     LDA ram_p1_fighter
C - - - - - 0x01F4EA 07:F4DA: 18        CLC
C - - - - - 0x01F4EB 07:F4DB: 69 09     ADC #$09
C - - - - - 0x01F4ED 07:F4DD: D0 02     BNE bra_F4E1
bra_F4DF:
C - - - - - 0x01F4EF 07:F4DF: A5 3B     LDA ram_p1_fighter
bra_F4E1:
C - - - - - 0x01F4F1 07:F4E1: 20 85 E8  JSR sub_E885
C - - - - - 0x01F4F4 07:F4E4: A5 3B     LDA ram_p1_fighter
C - - - - - 0x01F4F6 07:F4E6: 20 83 E7  JSR sub_E783_select_colors_for_fighter
C - - - - - 0x01F4F9 07:F4E9: A2 40     LDX #$40
C - - - - - 0x01F4FB 07:F4EB: 20 2C F5  JSR sub_F52C
C - - - - - 0x01F4FE 07:F4EE: A5 2E     LDA ram_002E
C - - - - - 0x01F500 07:F4F0: C9 10     CMP #$10
C - - - - - 0x01F502 07:F4F2: D0 07     BNE bra_F4FB
C - - - - - 0x01F504 07:F4F4: A5 3C     LDA ram_p2_fighter
C - - - - - 0x01F506 07:F4F6: 18        CLC
C - - - - - 0x01F507 07:F4F7: 69 09     ADC #$09
C - - - - - 0x01F509 07:F4F9: D0 02     BNE bra_F4FD
bra_F4FB:
C - - - - - 0x01F50B 07:F4FB: A5 3C     LDA ram_p2_fighter
bra_F4FD:
C - - - - - 0x01F50D 07:F4FD: 20 85 E8  JSR sub_E885
C - - - - - 0x01F510 07:F500: A5 3C     LDA ram_p2_fighter
C - - - - - 0x01F512 07:F502: C5 3B     CMP ram_p1_fighter
C - - - - - 0x01F514 07:F504: D0 03     BNE bra_F509
C - - - - - 0x01F516 07:F506: 18        CLC
C - - - - - 0x01F517 07:F507: 69 09     ADC #$09
bra_F509:
C - - - - - 0x01F519 07:F509: 20 83 E7  JSR sub_E783_select_colors_for_fighter
C - - - - - 0x01F51C 07:F50C: A9 C8     LDA #$C8
C - - - - - 0x01F51E 07:F50E: 9D 02 03  STA ram_0302,X
C - - - - - 0x01F521 07:F511: A9 80     LDA #$80
C - - - - - 0x01F523 07:F513: 9D 04 03  STA ram_0304,X
C - - - - - 0x01F526 07:F516: A9 C0     LDA #$C0
C - - - - - 0x01F528 07:F518: 9D 01 03  STA ram_0301,X
C - - - - - 0x01F52B 07:F51B: A5 2E     LDA ram_002E
C - - - - - 0x01F52D 07:F51D: F0 04     BEQ bra_F523
C - - - - - 0x01F52F 07:F51F: A9 1B     LDA #$1B
C - - - - - 0x01F531 07:F521: D0 02     BNE bra_F525
bra_F523:
C - - - - - 0x01F533 07:F523: A9 1C     LDA #$1C
bra_F525:
C - - - - - 0x01F535 07:F525: 20 E9 F7  JSR sub_F7E9
C - - - - - 0x01F538 07:F528: 20 D0 FC  JSR sub_FCD0
C - - - - - 0x01F53B 07:F52B: 60        RTS



sub_F52C:
C - - - - - 0x01F53C 07:F52C: A9 09     LDA #$09
C - - - - - 0x01F53E 07:F52E: 9D 0A 05  STA ram_050A,X
C - - - - - 0x01F541 07:F531: A9 00     LDA #$00
C - - - - - 0x01F543 07:F533: 9D 03 03  STA ram_0303,X
C - - - - - 0x01F546 07:F536: 9D 05 03  STA ram_0305,X
C - - - - - 0x01F549 07:F539: 9D 01 03  STA ram_0301,X
C - - - - - 0x01F54C 07:F53C: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01F54E 07:F53E: 9D 0C 03  STA ram_030C,X
C - - - - - 0x01F551 07:F541: A9 30     LDA #$30
C - - - - - 0x01F553 07:F543: 9D 02 03  STA ram_0302,X
C - - - - - 0x01F556 07:F546: 9D 04 03  STA ram_0304,X
C - - - - - 0x01F559 07:F549: 60        RTS



sub_F54A:
C - - - - - 0x01F55A 07:F54A: 20 4D F8  JSR sub_F84D
C - - - - - 0x01F55D 07:F54D: 20 3B F9  JSR sub_F93B
C - - - - - 0x01F560 07:F550: 20 EE EF  JSR sub_EFEE_clear_0300_03CF
C - - - - - 0x01F563 07:F553: A9 06     LDA #$06
C - - - - - 0x01F565 07:F555: 85 0E     STA ram_000E
C - - - - - 0x01F567 07:F557: A9 00     LDA #$00
C - - - - - 0x01F569 07:F559: A2 0D     LDX #$0D    ; continue screen
C - - - - - 0x01F56B 07:F55B: 20 E9 E7  JSR sub_E7E9_draw_screen
C - - - - - 0x01F56E 07:F55E: A9 1B     LDA #$1B
C - - - - - 0x01F570 07:F560: 85 B0     STA ram_00B0
C - - - - - 0x01F572 07:F562: A9 0B     LDA #$0B
C - - - - - 0x01F574 07:F564: 85 B1     STA ram_00B1
C - - - - - 0x01F576 07:F566: A9 06     LDA #$06
C - - - - - 0x01F578 07:F568: 85 B2     STA ram_00B2
C - - - - - 0x01F57A 07:F56A: A9 09     LDA #< tbl_F609
C - - - - - 0x01F57C 07:F56C: 85 AE     STA ram_00AE
C - - - - - 0x01F57E 07:F56E: A9 F6     LDA #> tbl_F609
C - - - - - 0x01F580 07:F570: 85 AF     STA ram_00AF
C - - - - - 0x01F582 07:F572: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F585 07:F575: A5 CB     LDA ram_credits
C - - - - - 0x01F587 07:F577: 85 A5     STA ram_00A5
C - - - - - 0x01F589 07:F579: A9 00     LDA #$00
C - - - - - 0x01F58B 07:F57B: 85 A6     STA ram_00A6
C - - - - - 0x01F58D 07:F57D: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F590 07:F580: A9 1B     LDA #$1B
C - - - - - 0x01F592 07:F582: 85 B0     STA ram_00B0
C - - - - - 0x01F594 07:F584: A9 12     LDA #$12
C - - - - - 0x01F596 07:F586: 85 B1     STA ram_00B1
C - - - - - 0x01F598 07:F588: A9 01     LDA #$01
C - - - - - 0x01F59A 07:F58A: 85 B2     STA ram_00B2
C - - - - - 0x01F59C 07:F58C: A9 AB     LDA #$AB
C - - - - - 0x01F59E 07:F58E: 85 AE     STA ram_00AE
C - - - - - 0x01F5A0 07:F590: A9 00     LDA #$00
C - - - - - 0x01F5A2 07:F592: 85 AF     STA ram_00AF
C - - - - - 0x01F5A4 07:F594: 20 9D FF  JSR sub_FF9D
C - - - - - 0x01F5A7 07:F597: A9 0B     LDA #$0B
C - - - - - 0x01F5A9 07:F599: 85 0C     STA ram_000C
C - - - - - 0x01F5AB 07:F59B: A9 3A     LDA #$3A    ; 0x014010
C - - - - - 0x01F5AD 07:F59D: 8D 00 70  STA $7000
C - - - - - 0x01F5B0 07:F5A0: A2 10     LDX #$10
C - - - - - 0x01F5B2 07:F5A2: 20 2C F5  JSR sub_F52C
C - - - - - 0x01F5B5 07:F5A5: A5 2E     LDA ram_002E
C - - - - - 0x01F5B7 07:F5A7: C9 10     CMP #$10
C - - - - - 0x01F5B9 07:F5A9: F0 04     BEQ bra_F5AF
C - - - - - 0x01F5BB 07:F5AB: A9 00     LDA #$00
C - - - - - 0x01F5BD 07:F5AD: F0 02     BEQ bra_F5B1
bra_F5AF:
C - - - - - 0x01F5BF 07:F5AF: A9 01     LDA #$01
bra_F5B1:
C - - - - - 0x01F5C1 07:F5B1: 85 7F     STA ram_007F
C - - - - - 0x01F5C3 07:F5B3: A8        TAY
C - - - - - 0x01F5C4 07:F5B4: B9 3B 00  LDA a: ram_p1_fighter,Y
C - - - - - 0x01F5C7 07:F5B7: 18        CLC
C - - - - - 0x01F5C8 07:F5B8: 69 09     ADC #$09
C - - - - - 0x01F5CA 07:F5BA: 20 85 E8  JSR sub_E885
C - - - - - 0x01F5CD 07:F5BD: B9 3B 00  LDA a: ram_p1_fighter,Y
C - - - - - 0x01F5D0 07:F5C0: C0 00     CPY #$00
C - - - - - 0x01F5D2 07:F5C2: F0 07     BEQ bra_F5CB
C - - - - - 0x01F5D4 07:F5C4: C5 3B     CMP ram_p1_fighter
C - - - - - 0x01F5D6 07:F5C6: D0 03     BNE bra_F5CB
C - - - - - 0x01F5D8 07:F5C8: 18        CLC
C - - - - - 0x01F5D9 07:F5C9: 69 09     ADC #$09
bra_F5CB:
C - - - - - 0x01F5DB 07:F5CB: 20 83 E7  JSR sub_E783_select_colors_for_fighter
C - - - - - 0x01F5DE 07:F5CE: A2 40     LDX #$40
C - - - - - 0x01F5E0 07:F5D0: 20 2C F5  JSR sub_F52C
C - - - - - 0x01F5E3 07:F5D3: A9 12     LDA #$12
C - - - - - 0x01F5E5 07:F5D5: 20 85 E8  JSR sub_E885
C - - - - - 0x01F5E8 07:F5D8: A9 09     LDA #$09
C - - - - - 0x01F5EA 07:F5DA: 20 83 E7  JSR sub_E783_select_colors_for_fighter
C - - - - - 0x01F5ED 07:F5DD: A9 90     LDA #$90
C - - - - - 0x01F5EF 07:F5DF: 9D 02 03  STA ram_0302,X
C - - - - - 0x01F5F2 07:F5E2: A9 80     LDA #$80
C - - - - - 0x01F5F4 07:F5E4: 9D 04 03  STA ram_0304,X
C - - - - - 0x01F5F7 07:F5E7: A9 80     LDA #$80
C - - - - - 0x01F5F9 07:F5E9: 9D 01 03  STA ram_0301,X
C - - - - - 0x01F5FC 07:F5EC: 20 D0 FC  JSR sub_FCD0
C - - - - - 0x01F5FF 07:F5EF: A4 7F     LDY ram_007F
bra_F5F1:
C - - - - - 0x01F601 07:F5F1: BD 00 03  LDA ram_0300,X
C - - - - - 0x01F604 07:F5F4: 29 40     AND #$40
C - - - - - 0x01F606 07:F5F6: D0 09     BNE bra_F601
C - - - - - 0x01F608 07:F5F8: B9 B6 00  LDA a: ram_00B6,Y
C - - - - - 0x01F60B 07:F5FB: 29 D0     AND #$D0
C - - - - - 0x01F60D 07:F5FD: F0 F2     BEQ bra_F5F1
C - - - - - 0x01F60F 07:F5FF: D0 02     BNE bra_F603
bra_F601:
C - - - - - 0x01F611 07:F601: A9 00     LDA #$00
bra_F603:
C - - - - - 0x01F613 07:F603: 85 7E     STA ram_007E
C - - - - - 0x01F615 07:F605: 20 F4 FA  JSR sub_FAF4
C - - - - - 0x01F618 07:F608: 60        RTS



tbl_F609:
- D 3 - I - 0x01F619 07:F609: 43        .byte $43   ; 
- D 3 - I - 0x01F61A 07:F60A: 52        .byte $52   ; 
- D 3 - I - 0x01F61B 07:F60B: 45        .byte $45   ; 
- D 3 - I - 0x01F61C 07:F60C: 44        .byte $44   ; 
- D 3 - I - 0x01F61D 07:F60D: 49        .byte $49   ; 
- D 3 - I - 0x01F61E 07:F60E: 54        .byte $54   ; 



sub_F60F:
C - - - - - 0x01F61F 07:F60F: FE 0B 05  INC ram_050B,X
C - - - - - 0x01F622 07:F612: A9 00     LDA #$00
C - - - - - 0x01F624 07:F614: 85 24     STA ram_0024
C - - - - - 0x01F626 07:F616: A5 21     LDA ram_0021
C - - - - - 0x01F628 07:F618: C9 01     CMP #$01
C - - - - - 0x01F62A 07:F61A: F0 04     BEQ bra_F620
C - - - - - 0x01F62C 07:F61C: C9 03     CMP #$03
C - - - - - 0x01F62E 07:F61E: D0 10     BNE bra_F630
bra_F620:
C - - - - - 0x01F630 07:F620: 20 77 F6  JSR sub_F677
C - - - - - 0x01F633 07:F623: A9 00     LDA #$00
C - - - - - 0x01F635 07:F625: 9D 0B 05  STA ram_050B,X
C - - - - - 0x01F638 07:F628: BD 00 03  LDA ram_0300,X
C - - - - - 0x01F63B 07:F62B: 09 20     ORA #$20
C - - - - - 0x01F63D 07:F62D: 9D 00 03  STA ram_0300,X
bra_F630:
C - - - - - 0x01F640 07:F630: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01F643 07:F633: D0 32     BNE bra_F667
C - - - - - 0x01F645 07:F635: BD 00 03  LDA ram_0300,X
C - - - - - 0x01F648 07:F638: 29 20     AND #$20
C - - - - - 0x01F64A 07:F63A: F0 2B     BEQ bra_F667
C - - - - - 0x01F64C 07:F63C: A5 21     LDA ram_0021
C - - - - - 0x01F64E 07:F63E: C9 02     CMP #$02
C - - - - - 0x01F650 07:F640: D0 05     BNE bra_F647
C - - - - - 0x01F652 07:F642: A9 01     LDA #$01
C - - - - - 0x01F654 07:F644: 4C 6C F6  JMP loc_F66C
bra_F647:
C - - - - - 0x01F657 07:F647: C9 04     CMP #$04
C - - - - - 0x01F659 07:F649: D0 05     BNE bra_F650
C - - - - - 0x01F65B 07:F64B: A9 02     LDA #$02
C - - - - - 0x01F65D 07:F64D: 4C 6C F6  JMP loc_F66C
bra_F650:
C - - - - - 0x01F660 07:F650: BD 0B 05  LDA ram_050B,X
C - - - - - 0x01F663 07:F653: C9 08     CMP #$08
C - - - - - 0x01F665 07:F655: 90 10     BCC bra_F667
C - - - - - 0x01F667 07:F657: 24 22     BIT ram_0022
C - - - - - 0x01F669 07:F659: 10 05     BPL bra_F660
C - - - - - 0x01F66B 07:F65B: A9 03     LDA #$03
C - - - - - 0x01F66D 07:F65D: 4C 6C F6  JMP loc_F66C    ; bzk optimize
bra_F660:
C - - - - - 0x01F670 07:F660: 50 05     BVC bra_F667
C - - - - - 0x01F672 07:F662: A9 04     LDA #$04
C - - - - - 0x01F674 07:F664: 4C 6C F6  JMP loc_F66C    ; bzk optimize
bra_F667:
C - - - - - 0x01F677 07:F667: A9 00     LDA #$00
C - - - - - 0x01F679 07:F669: 85 23     STA ram_0023
C - - - - - 0x01F67B 07:F66B: 60        RTS
loc_F66C:
C D 3 - - - 0x01F67C 07:F66C: 85 23     STA ram_0023
C - - - - - 0x01F67E 07:F66E: BD 00 03  LDA ram_0300,X
C - - - - - 0x01F681 07:F671: 29 DF     AND #$DF
C - - - - - 0x01F683 07:F673: 9D 00 03  STA ram_0300,X
C - - - - - 0x01F686 07:F676: 60        RTS



sub_F677:
C - - - - - 0x01F687 07:F677: 98        TYA
C - - - - - 0x01F688 07:F678: 48        PHA
C - - - - - 0x01F689 07:F679: E0 10     CPX #$10
C - - - - - 0x01F68B 07:F67B: D0 05     BNE bra_F682
C - - - - - 0x01F68D 07:F67D: A0 00     LDY #$00
C - - - - - 0x01F68F 07:F67F: 4C 84 F6  JMP loc_F684    ; bzk optimize
bra_F682:
C - - - - - 0x01F692 07:F682: A0 01     LDY #$01
loc_F684:
C D 3 - - - 0x01F694 07:F684: B9 E8 00  LDA a: ram_00E8,Y
C - - - - - 0x01F697 07:F687: C9 2D     CMP #$2D
C - - - - - 0x01F699 07:F689: 90 5D     BCC bra_F6E8
C - - - - - 0x01F69B 07:F68B: B9 E6 00  LDA a: ram_00E6,Y
C - - - - - 0x01F69E 07:F68E: C9 06     CMP #$06
C - - - - - 0x01F6A0 07:F690: B0 56     BCS bra_F6E8
C - - - - - 0x01F6A2 07:F692: B9 E2 00  LDA a: ram_00E2,Y
C - - - - - 0x01F6A5 07:F695: 29 04     AND #$04
C - - - - - 0x01F6A7 07:F697: F0 14     BEQ bra_F6AD
C - - - - - 0x01F6A9 07:F699: B9 E0 00  LDA a: ram_00E0,Y
C - - - - - 0x01F6AC 07:F69C: C9 08     CMP #$08
C - - - - - 0x01F6AE 07:F69E: 90 0D     BCC bra_F6AD
C - - - - - 0x01F6B0 07:F6A0: A5 21     LDA ram_0021
C - - - - - 0x01F6B2 07:F6A2: C9 03     CMP #$03
C - - - - - 0x01F6B4 07:F6A4: D0 07     BNE bra_F6AD
C - - - - - 0x01F6B6 07:F6A6: A9 01     LDA #$01
C - - - - - 0x01F6B8 07:F6A8: 85 24     STA ram_0024
C - - - - - 0x01F6BA 07:F6AA: 4C 0A F7  JMP loc_F70A
bra_F6AD:
C - - - - - 0x01F6BD 07:F6AD: BD 01 03  LDA ram_0301,X
C - - - - - 0x01F6C0 07:F6B0: 29 40     AND #$40
C - - - - - 0x01F6C2 07:F6B2: D0 0E     BNE bra_F6C2
C - - - - - 0x01F6C4 07:F6B4: B9 E2 00  LDA a: ram_00E2,Y
C - - - - - 0x01F6C7 07:F6B7: 29 02     AND #$02
C - - - - - 0x01F6C9 07:F6B9: F0 2D     BEQ bra_F6E8
C - - - - - 0x01F6CB 07:F6BB: B9 E0 00  LDA a: ram_00E0,Y
C - - - - - 0x01F6CE 07:F6BE: C9 01     CMP #$01
C - - - - - 0x01F6D0 07:F6C0: F0 0E     BEQ bra_F6D0
bra_F6C2:
C - - - - - 0x01F6D2 07:F6C2: B9 E2 00  LDA a: ram_00E2,Y
C - - - - - 0x01F6D5 07:F6C5: 29 01     AND #$01
C - - - - - 0x01F6D7 07:F6C7: F0 1F     BEQ bra_F6E8
C - - - - - 0x01F6D9 07:F6C9: B9 E0 00  LDA a: ram_00E0,Y
C - - - - - 0x01F6DC 07:F6CC: C9 02     CMP #$02
C - - - - - 0x01F6DE 07:F6CE: D0 18     BNE bra_F6E8
bra_F6D0:
C - - - - - 0x01F6E0 07:F6D0: A5 21     LDA ram_0021
C - - - - - 0x01F6E2 07:F6D2: C9 01     CMP #$01
C - - - - - 0x01F6E4 07:F6D4: D0 07     BNE bra_F6DD
C - - - - - 0x01F6E6 07:F6D6: A9 04     LDA #$04
C - - - - - 0x01F6E8 07:F6D8: 85 24     STA ram_0024
C - - - - - 0x01F6EA 07:F6DA: 4C 0A F7  JMP loc_F70A
bra_F6DD:
C - - - - - 0x01F6ED 07:F6DD: C9 03     CMP #$03
C - - - - - 0x01F6EF 07:F6DF: D0 07     BNE bra_F6E8
C - - - - - 0x01F6F1 07:F6E1: A9 03     LDA #$03
C - - - - - 0x01F6F3 07:F6E3: 85 24     STA ram_0024
C - - - - - 0x01F6F5 07:F6E5: 4C 0A F7  JMP loc_F70A
bra_F6E8:
C - - - - - 0x01F6F8 07:F6E8: 20 0D F7  JSR sub_F70D
C - - - - - 0x01F6FB 07:F6EB: A5 24     LDA ram_0024
C - - - - - 0x01F6FD 07:F6ED: D0 1B     BNE bra_F70A
C - - - - - 0x01F6FF 07:F6EF: B9 F0 00  LDA a: ram_00F0,Y
C - - - - - 0x01F702 07:F6F2: C9 0A     CMP #$0A
C - - - - - 0x01F704 07:F6F4: 90 14     BCC bra_F70A
C - - - - - 0x01F706 07:F6F6: A5 21     LDA ram_0021
C - - - - - 0x01F708 07:F6F8: C9 01     CMP #$01
C - - - - - 0x01F70A 07:F6FA: D0 04     BNE bra_F700
C - - - - - 0x01F70C 07:F6FC: A9 0A     LDA #$0A
C - - - - - 0x01F70E 07:F6FE: D0 08     BNE bra_F708
bra_F700:
C - - - - - 0x01F710 07:F700: A5 21     LDA ram_0021
C - - - - - 0x01F712 07:F702: C9 03     CMP #$03
C - - - - - 0x01F714 07:F704: D0 04     BNE bra_F70A
C - - - - - 0x01F716 07:F706: A9 0B     LDA #$0B
bra_F708:
C - - - - - 0x01F718 07:F708: 85 24     STA ram_0024
bra_F70A:
loc_F70A:
C D 3 - - - 0x01F71A 07:F70A: 68        PLA
C - - - - - 0x01F71B 07:F70B: A8        TAY
C - - - - - 0x01F71C 07:F70C: 60        RTS



sub_F70D:
; timer for performing hadouken?
C - - - - - 0x01F71D 07:F70D: B9 E6 00  LDA a: ram_00E6,Y
C - - - - - 0x01F720 07:F710: C9 06     CMP #$06
C - - - - - 0x01F722 07:F712: 90 05     BCC bra_F719
C - - - - - 0x01F724 07:F714: A9 00     LDA #$00
C - - - - - 0x01F726 07:F716: 85 24     STA ram_0024
C - - - - - 0x01F728 07:F718: 60        RTS
bra_F719:
C - - - - - 0x01F729 07:F719: BD 01 03  LDA ram_0301,X
C - - - - - 0x01F72C 07:F71C: 29 40     AND #$40
C - - - - - 0x01F72E 07:F71E: D0 09     BNE bra_F729
C - - - - - 0x01F730 07:F720: A9 6D     LDA #< tbl_F76D
C - - - - - 0x01F732 07:F722: 85 00     STA ram_0000
C - - - - - 0x01F734 07:F724: A9 F7     LDA #> tbl_F76D
C - - - - - 0x01F736 07:F726: 4C 2F F7  JMP loc_F72F
bra_F729:
C - - - - - 0x01F739 07:F729: A9 82     LDA #$82
C - - - - - 0x01F73B 07:F72B: 85 00     STA ram_0000
C - - - - - 0x01F73D 07:F72D: A9 F7     LDA #$F7
loc_F72F:
C D 3 - - - 0x01F73F 07:F72F: 85 01     STA ram_0001
C - - - - - 0x01F741 07:F731: 8A        TXA
C - - - - - 0x01F742 07:F732: 48        PHA
C - - - - - 0x01F743 07:F733: 98        TYA
C - - - - - 0x01F744 07:F734: AA        TAX
C - - - - - 0x01F745 07:F735: A0 00     LDY #$00
loc_F737_loop:
C D 3 - - - 0x01F747 07:F737: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F749 07:F739: C9 FF     CMP #$FF
C - - - - - 0x01F74B 07:F73B: F0 27     BEQ bra_F764
C - - - - - 0x01F74D 07:F73D: D5 E4     CMP ram_00E4,X
C - - - - - 0x01F74F 07:F73F: D0 1B     BNE bra_F75C
C - - - - - 0x01F751 07:F741: C8        INY
C - - - - - 0x01F752 07:F742: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F754 07:F744: D5 E2     CMP ram_00E2,X
C - - - - - 0x01F756 07:F746: D0 15     BNE bra_F75D
C - - - - - 0x01F758 07:F748: C8        INY
C - - - - - 0x01F759 07:F749: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F75B 07:F74B: D5 E0     CMP ram_00E0,X
C - - - - - 0x01F75D 07:F74D: D0 0F     BNE bra_F75E
C - - - - - 0x01F75F 07:F74F: C8        INY
C - - - - - 0x01F760 07:F750: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F762 07:F752: C5 21     CMP ram_0021
C - - - - - 0x01F764 07:F754: D0 09     BNE bra_F75F
C - - - - - 0x01F766 07:F756: C8        INY
C - - - - - 0x01F767 07:F757: B1 00     LDA (ram_0000),Y
C - - - - - 0x01F769 07:F759: 4C 66 F7  JMP loc_F766
bra_F75C:
C - - - - - 0x01F76C 07:F75C: C8        INY
bra_F75D:
C - - - - - 0x01F76D 07:F75D: C8        INY
bra_F75E:
C - - - - - 0x01F76E 07:F75E: C8        INY
bra_F75F:
C - - - - - 0x01F76F 07:F75F: C8        INY
C - - - - - 0x01F770 07:F760: C8        INY
C - - - - - 0x01F771 07:F761: 4C 37 F7  JMP loc_F737_loop
bra_F764:
C - - - - - 0x01F774 07:F764: A9 00     LDA #$00
loc_F766:
C D 3 - - - 0x01F776 07:F766: 85 24     STA ram_0024
C - - - - - 0x01F778 07:F768: 8A        TXA
C - - - - - 0x01F779 07:F769: A8        TAY
C - - - - - 0x01F77A 07:F76A: 68        PLA
C - - - - - 0x01F77B 07:F76B: AA        TAX
C - - - - - 0x01F77C 07:F76C: 60        RTS



tbl_F76D:
- D 3 - I - 0x01F77D 07:F76D: 04        .byte $04   ; 
- D 3 - I - 0x01F77E 07:F76E: 05        .byte $05   ; 
- D 3 - I - 0x01F77F 07:F76F: 01        .byte $01   ; 
- D 3 - I - 0x01F780 07:F770: 01        .byte $01   ; 
- D 3 - I - 0x01F781 07:F771: 08        .byte $08   ; 
- D 3 - I - 0x01F782 07:F772: 04        .byte $04   ; 
- D 3 - I - 0x01F783 07:F773: 05        .byte $05   ; 
- D 3 - I - 0x01F784 07:F774: 01        .byte $01   ; 
- D 3 - I - 0x01F785 07:F775: 03        .byte $03   ; 
- D 3 - I - 0x01F786 07:F776: 09        .byte $09   ; 
- D 3 - I - 0x01F787 07:F777: 04        .byte $04   ; 
- D 3 - I - 0x01F788 07:F778: 06        .byte $06   ; 
- D 3 - I - 0x01F789 07:F779: 02        .byte $02   ; 
- D 3 - I - 0x01F78A 07:F77A: 03        .byte $03   ; 
- D 3 - I - 0x01F78B 07:F77B: 07        .byte $07   ; 
- D 3 - I - 0x01F78C 07:F77C: 01        .byte $01   ; 
- D 3 - I - 0x01F78D 07:F77D: 05        .byte $05   ; 
- D 3 - I - 0x01F78E 07:F77E: 01        .byte $01   ; 
- D 3 - I - 0x01F78F 07:F77F: 01        .byte $01   ; 
- D 3 - I - 0x01F790 07:F780: 06        .byte $06   ; 
- D 3 - I - 0x01F791 07:F781: FF        .byte $FF   ; 
- D 3 - I - 0x01F792 07:F782: 04        .byte $04   ; 
- D 3 - I - 0x01F793 07:F783: 06        .byte $06   ; 
- D 3 - I - 0x01F794 07:F784: 02        .byte $02   ; 
- D 3 - I - 0x01F795 07:F785: 01        .byte $01   ; 
- D 3 - I - 0x01F796 07:F786: 08        .byte $08   ; 
- D 3 - I - 0x01F797 07:F787: 04        .byte $04   ; 
- D 3 - I - 0x01F798 07:F788: 06        .byte $06   ; 
- D 3 - I - 0x01F799 07:F789: 02        .byte $02   ; 
- D 3 - I - 0x01F79A 07:F78A: 03        .byte $03   ; 
- D 3 - I - 0x01F79B 07:F78B: 09        .byte $09   ; 
- D 3 - I - 0x01F79C 07:F78C: 04        .byte $04   ; 
- D 3 - I - 0x01F79D 07:F78D: 05        .byte $05   ; 
- D 3 - I - 0x01F79E 07:F78E: 01        .byte $01   ; 
- D 3 - I - 0x01F79F 07:F78F: 03        .byte $03   ; 
- D 3 - I - 0x01F7A0 07:F790: 07        .byte $07   ; 
- D 3 - I - 0x01F7A1 07:F791: 02        .byte $02   ; 
- D 3 - I - 0x01F7A2 07:F792: 06        .byte $06   ; 
- D 3 - I - 0x01F7A3 07:F793: 02        .byte $02   ; 
- D 3 - I - 0x01F7A4 07:F794: 01        .byte $01   ; 
- D 3 - I - 0x01F7A5 07:F795: 06        .byte $06   ; 
- D 3 - I - 0x01F7A6 07:F796: FF        .byte $FF   ; 



sub_F797:
C - - - - - 0x01F7A7 07:F797: C6 3D     DEC ram_003D
C - - - - - 0x01F7A9 07:F799: D0 28     BNE bra_F7C3_RTS
C - - - - - 0x01F7AB 07:F79B: A9 2D     LDA #$2D
C - - - - - 0x01F7AD 07:F79D: 85 3D     STA ram_003D
C - - - - - 0x01F7AF 07:F79F: C6 3E     DEC ram_game_time
C - - - - - 0x01F7B1 07:F7A1: A5 3E     LDA ram_game_time
C - - - - - 0x01F7B3 07:F7A3: 85 A5     STA ram_00A5
C - - - - - 0x01F7B5 07:F7A5: A9 00     LDA #$00
C - - - - - 0x01F7B7 07:F7A7: 85 A6     STA ram_00A6
C - - - - - 0x01F7B9 07:F7A9: 20 53 FF  JSR sub_FF53
C - - - - - 0x01F7BC 07:F7AC: A9 03     LDA #$03
C - - - - - 0x01F7BE 07:F7AE: 85 B0     STA ram_00B0
C - - - - - 0x01F7C0 07:F7B0: A9 0F     LDA #$0F
C - - - - - 0x01F7C2 07:F7B2: 85 B1     STA ram_00B1
C - - - - - 0x01F7C4 07:F7B4: A9 02     LDA #$02
C - - - - - 0x01F7C6 07:F7B6: 85 B2     STA ram_00B2
C - - - - - 0x01F7C8 07:F7B8: A9 AA     LDA #$AA
C - - - - - 0x01F7CA 07:F7BA: 85 AE     STA ram_00AE
C - - - - - 0x01F7CC 07:F7BC: A9 00     LDA #$00
C - - - - - 0x01F7CE 07:F7BE: 85 AF     STA ram_00AF
C - - - - - 0x01F7D0 07:F7C0: 20 9D FF  JSR sub_FF9D
bra_F7C3_RTS:
C - - - - - 0x01F7D3 07:F7C3: 60        RTS



sub_F7C4:
C - - - - - 0x01F7D4 07:F7C4: BD 02 05  LDA ram_0502,X
C - - - - - 0x01F7D7 07:F7C7: 38        SEC
C - - - - - 0x01F7D8 07:F7C8: E5 3E     SBC ram_game_time
C - - - - - 0x01F7DA 07:F7CA: C9 03     CMP #$03
C - - - - - 0x01F7DC 07:F7CC: 90 05     BCC bra_F7D3
C - - - - - 0x01F7DE 07:F7CE: A9 00     LDA #$00
C - - - - - 0x01F7E0 07:F7D0: 9D 03 05  STA ram_0503,X
bra_F7D3:
C - - - - - 0x01F7E3 07:F7D3: A5 65     LDA ram_0065
C - - - - - 0x01F7E5 07:F7D5: 18        CLC
C - - - - - 0x01F7E6 07:F7D6: 7D 03 05  ADC ram_0503,X
C - - - - - 0x01F7E9 07:F7D9: 9D 03 05  STA ram_0503,X
C - - - - - 0x01F7EC 07:F7DC: A5 3E     LDA ram_game_time
C - - - - - 0x01F7EE 07:F7DE: 9D 02 05  STA ram_0502,X
C - - - - - 0x01F7F1 07:F7E1: 60        RTS



sub_F7E2:
C - - - - - 0x01F7F2 07:F7E2: 20 42 F8  JSR sub_F842_bankswitch_to_music
C - - - - - 0x01F7F5 07:F7E5: 20 8D 81  JSR sub_0x01619D
C - - - - - 0x01F7F8 07:F7E8: 60        RTS



sub_F7E9:
C - - - - - 0x01F7F9 07:F7E9: 86 40     STX ram_0040
C - - - - - 0x01F7FB 07:F7EB: AA        TAX
C - - - - - 0x01F7FC 07:F7EC: BD 12 F8  LDA tbl_F812,X
C - - - - - 0x01F7FF 07:F7EF: 85 9B     STA ram_009B
C - - - - - 0x01F801 07:F7F1: 20 42 F8  JSR sub_F842_bankswitch_to_music
C - - - - - 0x01F804 07:F7F4: 20 B2 80  JSR sub_0x0160C2
C - - - - - 0x01F807 07:F7F7: A6 40     LDX ram_0040
C - - - - - 0x01F809 07:F7F9: 60        RTS



sub_F7FA:
C - - - - - 0x01F80A 07:F7FA: 86 40     STX ram_0040
C - - - - - 0x01F80C 07:F7FC: AA        TAX
C - - - - - 0x01F80D 07:F7FD: BD 12 F8  LDA tbl_F812,X
C - - - - - 0x01F810 07:F800: 85 9B     STA ram_009B
C - - - - - 0x01F812 07:F802: 20 42 F8  JSR sub_F842_bankswitch_to_music
C - - - - - 0x01F815 07:F805: 20 50 80  JSR sub_0x016060
C - - - - - 0x01F818 07:F808: A6 40     LDX ram_0040
C - - - - - 0x01F81A 07:F80A: 60        RTS



sub_F80B:
C - - - - - 0x01F81B 07:F80B: 20 42 F8  JSR sub_F842_bankswitch_to_music
C - - - - - 0x01F81E 07:F80E: 20 21 81  JSR sub_0x016131
C - - - - - 0x01F821 07:F811: 60        RTS



tbl_F812:
- D 3 - - - 0x01F822 07:F812: 07        .byte $07   ; 
- D 3 - - - 0x01F823 07:F813: 05        .byte $05   ; 
- D 3 - - - 0x01F824 07:F814: 08        .byte $08   ; 
- D 3 - - - 0x01F825 07:F815: 04        .byte $04   ; 
- D 3 - - - 0x01F826 07:F816: 06        .byte $06   ; 
- D 3 - - - 0x01F827 07:F817: 01        .byte $01   ; 
- D 3 - - - 0x01F828 07:F818: 00        .byte $00   ; 
- D 3 - - - 0x01F829 07:F819: 03        .byte $03   ; 
- D 3 - - - 0x01F82A 07:F81A: 02        .byte $02   ; 
- D 3 - - - 0x01F82B 07:F81B: 09        .byte $09   ; 
- D 3 - - - 0x01F82C 07:F81C: 0A        .byte $0A   ; 
- - - - - - 0x01F82D 07:F81D: 0B        .byte $0B   ; 
- - - - - - 0x01F82E 07:F81E: 0C        .byte $0C   ; 
- D 3 - - - 0x01F82F 07:F81F: 0D        .byte $0D   ; 
- - - - - - 0x01F830 07:F820: 0E        .byte $0E   ; 
- D 3 - - - 0x01F831 07:F821: 0F        .byte $0F   ; 
- D 3 - - - 0x01F832 07:F822: 10        .byte $10   ; 
- D 3 - - - 0x01F833 07:F823: 11        .byte $11   ; 
- D 3 - - - 0x01F834 07:F824: 12        .byte $12   ; 
- D 3 - - - 0x01F835 07:F825: 13        .byte $13   ; 
- D 3 - - - 0x01F836 07:F826: 14        .byte $14   ; 
- D 3 - - - 0x01F837 07:F827: 15        .byte $15   ; 
- D 3 - - - 0x01F838 07:F828: 16        .byte $16   ; 
- D 3 - - - 0x01F839 07:F829: 17        .byte $17   ; 
- - - - - - 0x01F83A 07:F82A: 18        .byte $18   ; 
- - - - - - 0x01F83B 07:F82B: 19        .byte $19   ; 
- D 3 - - - 0x01F83C 07:F82C: 1A        .byte $1A   ; 
- D 3 - - - 0x01F83D 07:F82D: 1B        .byte $1B   ; 
- D 3 - - - 0x01F83E 07:F82E: 1C        .byte $1C   ; 
- D 3 - - - 0x01F83F 07:F82F: 1D        .byte $1D   ; 
- D 3 - - - 0x01F840 07:F830: 1E        .byte $1E   ; 
- D 3 - - - 0x01F841 07:F831: 1F        .byte $1F   ; 
- - - - - - 0x01F842 07:F832: 20        .byte $20   ; 
- - - - - - 0x01F843 07:F833: 1D        .byte $1D   ; 
- - - - - - 0x01F844 07:F834: 21        .byte $21   ; 
- D 3 - - - 0x01F845 07:F835: 22        .byte $22   ; 
- D 3 - - - 0x01F846 07:F836: 23        .byte $23   ; 
- - - - - - 0x01F847 07:F837: 24        .byte $24   ; 
- D 3 - - - 0x01F848 07:F838: 25        .byte $25   ; 
- D 3 - - - 0x01F849 07:F839: 26        .byte $26   ; 
- D 3 - - - 0x01F84A 07:F83A: 27        .byte $27   ; 



sub_F83B:
C - - - - - 0x01F84B 07:F83B: 20 42 F8  JSR sub_F842_bankswitch_to_music
C - - - - - 0x01F84E 07:F83E: 20 75 81  JSR sub_0x016185
C - - - - - 0x01F851 07:F841: 60        RTS


sub_F842_bankswitch_to_music:
C - - - - - 0x01F852 07:F842: A9 3B     LDA #$3B    ; 0x016010
C - - - - - 0x01F854 07:F844: 8D 00 70  STA $7000
C - - - - - 0x01F857 07:F847: A9 3C     LDA #$3C    ; 0x018010
C - - - - - 0x01F859 07:F849: 8D 01 70  STA $7001
C - - - - - 0x01F85C 07:F84C: 60        RTS



sub_F84D:
C - - - - - 0x01F85D 07:F84D: A9 00     LDA #$00
C - - - - - 0x01F85F 07:F84F: 8D 00 20  STA $2000
C - - - - - 0x01F862 07:F852: 8D 01 20  STA $2001
C - - - - - 0x01F865 07:F855: 20 3B F8  JSR sub_F83B
C - - - - - 0x01F868 07:F858: 20 0B F8  JSR sub_F80B
C - - - - - 0x01F86B 07:F85B: 60        RTS



sub_F85C:
C - - - - - 0x01F86C 07:F85C: A9 00     LDA #$00
C - - - - - 0x01F86E 07:F85E: 8D 05 20  STA $2005
C - - - - - 0x01F871 07:F861: 8D 05 20  STA $2005
C - - - - - 0x01F874 07:F864: 60        RTS



sub_F865:
C - - - - - 0x01F875 07:F865: A2 11     LDX #$11
bra_F867:
C - - - - - 0x01F877 07:F867: 7D 10 E5  ADC tbl_E510,X
C - - - - - 0x01F87A 07:F86A: CA        DEX
C - - - - - 0x01F87B 07:F86B: D0 FA     BNE bra_F867
C - - - - - 0x01F87D 07:F86D: 48        PHA
C - - - - - 0x01F87E 07:F86E: A2 10     LDX #$10
C - - - - - 0x01F880 07:F870: A0 40     LDY #$40
C - - - - - 0x01F882 07:F872: 20 93 F8  JSR sub_F893
C - - - - - 0x01F885 07:F875: A0 40     LDY #$40
C - - - - - 0x01F887 07:F877: A5 3A     LDA ram_003A
C - - - - - 0x01F889 07:F879: D0 07     BNE bra_F882
C - - - - - 0x01F88B 07:F87B: A0 10     LDY #$10
C - - - - - 0x01F88D 07:F87D: A2 40     LDX #$40
C - - - - - 0x01F88F 07:F87F: 20 93 F8  JSR sub_F893
bra_F882:
C - - - - - 0x01F892 07:F882: 68        PLA
C - - - - - 0x01F893 07:F883: 85 BA     STA ram_00BA
C - - - - - 0x01F895 07:F885: A5 39     LDA ram_0039
C - - - - - 0x01F897 07:F887: 18        CLC
C - - - - - 0x01F898 07:F888: 65 3A     ADC ram_003A
C - - - - - 0x01F89A 07:F88A: C9 7F     CMP #$7F
C - - - - - 0x01F89C 07:F88C: 90 04     BCC bra_F892_RTS
C - - - - - 0x01F89E 07:F88E: A9 00     LDA #$00
C - - - - - 0x01F8A0 07:F890: 85 3A     STA ram_003A
bra_F892_RTS:
C - - - - - 0x01F8A2 07:F892: 60        RTS



sub_F893:
C - - - - - 0x01F8A3 07:F893: BD 09 04  LDA ram_0409,X
C - - - - - 0x01F8A6 07:F896: 30 04     BMI bra_F89C
C - - - - - 0x01F8A8 07:F898: A9 00     LDA #$00
C - - - - - 0x01F8AA 07:F89A: F0 02     BEQ bra_F89E
bra_F89C:
C - - - - - 0x01F8AC 07:F89C: A9 FF     LDA #$FF
bra_F89E:
C - - - - - 0x01F8AE 07:F89E: 48        PHA
C - - - - - 0x01F8AF 07:F89F: BD 02 03  LDA ram_0302,X
C - - - - - 0x01F8B2 07:F8A2: 18        CLC
C - - - - - 0x01F8B3 07:F8A3: 7D 09 04  ADC ram_0409,X
C - - - - - 0x01F8B6 07:F8A6: 68        PLA
C - - - - - 0x01F8B7 07:F8A7: 69 00     ADC #$00
C - - - - - 0x01F8B9 07:F8A9: C9 FF     CMP #$FF
C - - - - - 0x01F8BB 07:F8AB: F0 0F     BEQ bra_F8BC
C - - - - - 0x01F8BD 07:F8AD: C9 01     CMP #$01
C - - - - - 0x01F8BF 07:F8AF: F0 1D     BEQ bra_F8CE
C - - - - - 0x01F8C1 07:F8B1: BD 02 03  LDA ram_0302,X
C - - - - - 0x01F8C4 07:F8B4: 18        CLC
C - - - - - 0x01F8C5 07:F8B5: 7D 09 04  ADC ram_0409,X
C - - - - - 0x01F8C8 07:F8B8: C9 28     CMP #$28
C - - - - - 0x01F8CA 07:F8BA: B0 0E     BCS bra_F8CA
bra_F8BC:
C - - - - - 0x01F8CC 07:F8BC: B9 02 03  LDA ram_0302,Y
C - - - - - 0x01F8CF 07:F8BF: C9 D4     CMP #$D4
C - - - - - 0x01F8D1 07:F8C1: B0 19     BCS bra_F8DC
C - - - - - 0x01F8D3 07:F8C3: A9 FF     LDA #$FF
C - - - - - 0x01F8D5 07:F8C5: 85 3A     STA ram_003A
C - - - - - 0x01F8D7 07:F8C7: 4C E0 F8  JMP loc_F8E0_RTS
bra_F8CA:
C - - - - - 0x01F8DA 07:F8CA: C9 D7     CMP #$D7
C - - - - - 0x01F8DC 07:F8CC: 90 0E     BCC bra_F8DC
bra_F8CE:
C - - - - - 0x01F8DE 07:F8CE: B9 02 03  LDA ram_0302,Y
C - - - - - 0x01F8E1 07:F8D1: C9 2B     CMP #$2B
C - - - - - 0x01F8E3 07:F8D3: 90 07     BCC bra_F8DC
C - - - - - 0x01F8E5 07:F8D5: A9 01     LDA #$01
C - - - - - 0x01F8E7 07:F8D7: 85 3A     STA ram_003A
C - - - - - 0x01F8E9 07:F8D9: 4C E0 F8  JMP loc_F8E0_RTS
bra_F8DC:
C - - - - - 0x01F8EC 07:F8DC: A9 00     LDA #$00
C - - - - - 0x01F8EE 07:F8DE: 85 3A     STA ram_003A
loc_F8E0_RTS:
C D 3 - - - 0x01F8F0 07:F8E0: 60        RTS



sub_F8E1:
C - - - - - 0x01F8F1 07:F8E1: 20 07 FA  JSR sub_FA07
C - - - - - 0x01F8F4 07:F8E4: A5 3A     LDA ram_003A
C - - - - - 0x01F8F6 07:F8E6: F0 07     BEQ bra_F8EF_RTS
C - - - - - 0x01F8F8 07:F8E8: A5 39     LDA ram_0039
C - - - - - 0x01F8FA 07:F8EA: 18        CLC
C - - - - - 0x01F8FB 07:F8EB: 65 3A     ADC ram_003A
C - - - - - 0x01F8FD 07:F8ED: 85 39     STA ram_0039
bra_F8EF_RTS:
C - - - - - 0x01F8FF 07:F8EF: 60        RTS



sub_F8F0:
C - - - - - 0x01F900 07:F8F0: A9 04     LDA #$04
C - - - - - 0x01F902 07:F8F2: 8D 00 20  STA $2000
C - - - - - 0x01F905 07:F8F5: A5 F8     LDA ram_00F8
C - - - - - 0x01F907 07:F8F7: F0 10     BEQ bra_F909
C - - - - - 0x01F909 07:F8F9: A9 02     LDA #$02
C - - - - - 0x01F90B 07:F8FB: 20 23 F9  JSR sub_F923
C - - - - - 0x01F90E 07:F8FE: A5 F8     LDA ram_00F8
C - - - - - 0x01F910 07:F900: C9 02     CMP #$02
C - - - - - 0x01F912 07:F902: 90 05     BCC bra_F909
C - - - - - 0x01F914 07:F904: A9 01     LDA #$01
C - - - - - 0x01F916 07:F906: 20 23 F9  JSR sub_F923
bra_F909:
C - - - - - 0x01F919 07:F909: A5 F9     LDA ram_00F9
C - - - - - 0x01F91B 07:F90B: F0 10     BEQ bra_F91D
C - - - - - 0x01F91D 07:F90D: A9 1D     LDA #$1D
C - - - - - 0x01F91F 07:F90F: 20 23 F9  JSR sub_F923
C - - - - - 0x01F922 07:F912: A5 F9     LDA ram_00F9
C - - - - - 0x01F924 07:F914: C9 02     CMP #$02
C - - - - - 0x01F926 07:F916: 90 05     BCC bra_F91D
C - - - - - 0x01F928 07:F918: A9 1E     LDA #$1E
C - - - - - 0x01F92A 07:F91A: 20 23 F9  JSR sub_F923
bra_F91D:
C - - - - - 0x01F92D 07:F91D: A5 15     LDA ram_0015
C - - - - - 0x01F92F 07:F91F: 8D 00 20  STA $2000
C - - - - - 0x01F932 07:F922: 60        RTS



sub_F923:
C - - - - - 0x01F933 07:F923: 48        PHA
C - - - - - 0x01F934 07:F924: A9 20     LDA #$20
C - - - - - 0x01F936 07:F926: 8D 06 20  STA $2006
C - - - - - 0x01F939 07:F929: 68        PLA
C - - - - - 0x01F93A 07:F92A: 18        CLC
C - - - - - 0x01F93B 07:F92B: 69 40     ADC #$40
C - - - - - 0x01F93D 07:F92D: 8D 06 20  STA $2006
C - - - - - 0x01F940 07:F930: A9 AD     LDA #$AD
C - - - - - 0x01F942 07:F932: 8D 07 20  STA $2007
C - - - - - 0x01F945 07:F935: A9 AE     LDA #$AE
C - - - - - 0x01F947 07:F937: 8D 07 20  STA $2007
C - - - - - 0x01F94A 07:F93A: 60        RTS



sub_F93B:
C - - - - - 0x01F94B 07:F93B: A5 15     LDA ram_0015
C - - - - - 0x01F94D 07:F93D: 09 20     ORA #$20
C - - - - - 0x01F94F 07:F93F: 85 15     STA ram_0015
C - - - - - 0x01F951 07:F941: 60        RTS



sub_F942:
C - - - - - 0x01F952 07:F942: BD 0B 03  LDA ram_030B,X
C - - - - - 0x01F955 07:F945: C9 19     CMP #$19
C - - - - - 0x01F957 07:F947: F0 09     BEQ bra_F952
C - - - - - 0x01F959 07:F949: BD 0F 05  LDA ram_050F,X
C - - - - - 0x01F95C 07:F94C: D0 04     BNE bra_F952
C - - - - - 0x01F95E 07:F94E: A5 2F     LDA ram_002F
C - - - - - 0x01F960 07:F950: D0 03     BNE bra_F955
bra_F952:
C - - - - - 0x01F962 07:F952: A9 00     LDA #$00
C - - - - - 0x01F964 07:F954: 60        RTS
bra_F955:
C - - - - - 0x01F965 07:F955: 98        TYA
C - - - - - 0x01F966 07:F956: 48        PHA
C - - - - - 0x01F967 07:F957: BD 0A 05  LDA ram_050A,X
C - - - - - 0x01F96A 07:F95A: 0A        ASL
C - - - - - 0x01F96B 07:F95B: A8        TAY
C - - - - - 0x01F96C 07:F95C: B9 A5 F9  LDA tbl_F9A5,Y
C - - - - - 0x01F96F 07:F95F: 85 0A     STA ram_000A
C - - - - - 0x01F971 07:F961: B9 A6 F9  LDA tbl_F9A5 + $01,Y
C - - - - - 0x01F974 07:F964: 85 0B     STA ram_000B
C - - - - - 0x01F976 07:F966: A0 00     LDY #$00
loc_F968:
C D 3 - - - 0x01F978 07:F968: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F97A 07:F96A: C9 FF     CMP #$FF
C - - - - - 0x01F97C 07:F96C: F0 32     BEQ bra_F9A0
C - - - - - 0x01F97E 07:F96E: C5 24     CMP ram_0024
C - - - - - 0x01F980 07:F970: D0 27     BNE bra_F999
C - - - - - 0x01F982 07:F972: C8        INY
C - - - - - 0x01F983 07:F973: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F985 07:F975: F0 03     BEQ bra_F97A
C - - - - - 0x01F987 07:F977: 20 35 FA  JSR sub_FA35
bra_F97A:
C - - - - - 0x01F98A 07:F97A: C8        INY
C - - - - - 0x01F98B 07:F97B: C8        INY
C - - - - - 0x01F98C 07:F97C: B1 0A     LDA (ram_000A),Y
C - - - - - 0x01F98E 07:F97E: C9 3E     CMP #$3E
C - - - - - 0x01F990 07:F980: F0 04     BEQ bra_F986
C - - - - - 0x01F992 07:F982: C9 3F     CMP #$3F
C - - - - - 0x01F994 07:F984: D0 0B     BNE bra_F991
bra_F986:
C - - - - - 0x01F996 07:F986: 48        PHA
C - - - - - 0x01F997 07:F987: BD 10 03  LDA ram_0310,X
C - - - - - 0x01F99A 07:F98A: 10 04     BPL bra_F990
C - - - - - 0x01F99C 07:F98C: 68        PLA
C - - - - - 0x01F99D 07:F98D: 4C 94 F9  JMP loc_F994
bra_F990:
C - - - - - 0x01F9A0 07:F990: 68        PLA
bra_F991:
C - - - - - 0x01F9A1 07:F991: 20 85 E8  JSR sub_E885
loc_F994:
C D 3 - - - 0x01F9A4 07:F994: 68        PLA
C - - - - - 0x01F9A5 07:F995: A8        TAY
C - - - - - 0x01F9A6 07:F996: A9 01     LDA #$01
C - - - - - 0x01F9A8 07:F998: 60        RTS
bra_F999:
C - - - - - 0x01F9A9 07:F999: C8        INY
C - - - - - 0x01F9AA 07:F99A: C8        INY
C - - - - - 0x01F9AB 07:F99B: C8        INY
C - - - - - 0x01F9AC 07:F99C: C8        INY
C - - - - - 0x01F9AD 07:F99D: 4C 68 F9  JMP loc_F968
bra_F9A0:
C - - - - - 0x01F9B0 07:F9A0: 68        PLA
C - - - - - 0x01F9B1 07:F9A1: A8        TAY
C - - - - - 0x01F9B2 07:F9A2: A9 00     LDA #$00
C - - - - - 0x01F9B4 07:F9A4: 60        RTS



tbl_F9A5:
- D 3 - - - 0x01F9B5 07:F9A5: B7 F9     .word off_F9B7_00
- D 3 - - - 0x01F9B7 07:F9A7: C0 F9     .word off_F9C0_01
- D 3 - - - 0x01F9B9 07:F9A9: CD F9     .word off_F9CD_02
- D 3 - - - 0x01F9BB 07:F9AB: D6 F9     .word off_F9D6_03
- D 3 - - - 0x01F9BD 07:F9AD: F9 F9     .word off_F9F9_04
- - - - - - 0x01F9BF 07:F9AF: C0 F9     .word off_F9C0_05
- D 3 - - - 0x01F9C1 07:F9B1: FE F9     .word off_F9FE_06
- D 3 - - - 0x01F9C3 07:F9B3: EC F9     .word off_F9EC_07
- D 3 - - - 0x01F9C5 07:F9B5: DF F9     .word off_F9DF_08

off_F9B7_00:
- D 3 - I - 0x01F9C7 07:F9B7: 01        .byte $01   ; 
- D 3 - I - 0x01F9C8 07:F9B8: 01        .byte $01   ; 
- - - - - - 0x01F9C9 07:F9B9: 00        .byte $00   ; 
- D 3 - I - 0x01F9CA 07:F9BA: 3C        .byte $3C   ; 
- D 3 - I - 0x01F9CB 07:F9BB: 0B        .byte $0B   ; 
- D 3 - I - 0x01F9CC 07:F9BC: 01        .byte $01   ; 
- - - - - - 0x01F9CD 07:F9BD: 01        .byte $01   ; 
- D 3 - I - 0x01F9CE 07:F9BE: 3D        .byte $3D   ; 
- D 3 - I - 0x01F9CF 07:F9BF: FF        .byte $FF   ; 

off_F9C0_01:
off_F9C0_05:
- D 3 - I - 0x01F9D0 07:F9C0: 06        .byte $06   ; 
- D 3 - I - 0x01F9D1 07:F9C1: 01        .byte $01   ; 
- - - - - - 0x01F9D2 07:F9C2: 02        .byte $02   ; 
- D 3 - I - 0x01F9D3 07:F9C3: 3D        .byte $3D   ; 
- D 3 - I - 0x01F9D4 07:F9C4: 07        .byte $07   ; 
- D 3 - I - 0x01F9D5 07:F9C5: 01        .byte $01   ; 
- - - - - - 0x01F9D6 07:F9C6: 02        .byte $02   ; 
- D 3 - I - 0x01F9D7 07:F9C7: 3C        .byte $3C   ; 
- D 3 - I - 0x01F9D8 07:F9C8: 08        .byte $08   ; 
- D 3 - I - 0x01F9D9 07:F9C9: 01        .byte $01   ; 
- - - - - - 0x01F9DA 07:F9CA: 00        .byte $00   ; 
- D 3 - I - 0x01F9DB 07:F9CB: 3F        .byte $3F   ; 
- D 3 - I - 0x01F9DC 07:F9CC: FF        .byte $FF   ; 

off_F9CD_02:
- D 3 - I - 0x01F9DD 07:F9CD: 04        .byte $04   ; 
- D 3 - I - 0x01F9DE 07:F9CE: 01        .byte $01   ; 
- - - - - - 0x01F9DF 07:F9CF: 01        .byte $01   ; 
- D 3 - I - 0x01F9E0 07:F9D0: 3F        .byte $3F   ; 
- D 3 - I - 0x01F9E1 07:F9D1: 01        .byte $01   ; 
- D 3 - I - 0x01F9E2 07:F9D2: 00        .byte $00   ; 
- - - - - - 0x01F9E3 07:F9D3: 02        .byte $02   ; 
- D 3 - I - 0x01F9E4 07:F9D4: 3C        .byte $3C   ; 
- D 3 - I - 0x01F9E5 07:F9D5: FF        .byte $FF   ; 

off_F9D6_03:
- D 3 - I - 0x01F9E6 07:F9D6: 04        .byte $04   ; 
- D 3 - I - 0x01F9E7 07:F9D7: 00        .byte $00   ; 
- - - - - - 0x01F9E8 07:F9D8: 00        .byte $00   ; 
- D 3 - I - 0x01F9E9 07:F9D9: 3F        .byte $3F   ; 
- D 3 - I - 0x01F9EA 07:F9DA: 0A        .byte $0A   ; 
- D 3 - I - 0x01F9EB 07:F9DB: 01        .byte $01   ; 
- - - - - - 0x01F9EC 07:F9DC: 01        .byte $01   ; 
- D 3 - I - 0x01F9ED 07:F9DD: 3D        .byte $3D   ; 
- D 3 - I - 0x01F9EE 07:F9DE: FF        .byte $FF   ; 

off_F9DF_08:
- D 3 - I - 0x01F9EF 07:F9DF: 04        .byte $04   ; 
- D 3 - I - 0x01F9F0 07:F9E0: 01        .byte $01   ; 
- - - - - - 0x01F9F1 07:F9E1: 00        .byte $00   ; 
- D 3 - I - 0x01F9F2 07:F9E2: 3F        .byte $3F   ; 
- D 3 - I - 0x01F9F3 07:F9E3: 03        .byte $03   ; 
- D 3 - I - 0x01F9F4 07:F9E4: 00        .byte $00   ; 
- - - - - - 0x01F9F5 07:F9E5: 00        .byte $00   ; 
- D 3 - I - 0x01F9F6 07:F9E6: 40        .byte $40   ; 
- D 3 - I - 0x01F9F7 07:F9E7: 01        .byte $01   ; 
- D 3 - I - 0x01F9F8 07:F9E8: 00        .byte $00   ; 
- - - - - - 0x01F9F9 07:F9E9: 02        .byte $02   ; 
- D 3 - I - 0x01F9FA 07:F9EA: 3C        .byte $3C   ; 
- D 3 - I - 0x01F9FB 07:F9EB: FF        .byte $FF   ; 

off_F9EC_07:
- D 3 - I - 0x01F9FC 07:F9EC: 06        .byte $06   ; 
- D 3 - I - 0x01F9FD 07:F9ED: 01        .byte $01   ; 
- - - - - - 0x01F9FE 07:F9EE: 02        .byte $02   ; 
- D 3 - I - 0x01F9FF 07:F9EF: 3D        .byte $3D   ; 
- D 3 - I - 0x01FA00 07:F9F0: 08        .byte $08   ; 
- D 3 - I - 0x01FA01 07:F9F1: 01        .byte $01   ; 
- - - - - - 0x01FA02 07:F9F2: 01        .byte $01   ; 
- D 3 - I - 0x01FA03 07:F9F3: 3F        .byte $3F   ; 
- D 3 - I - 0x01FA04 07:F9F4: 09        .byte $09   ; 
- D 3 - I - 0x01FA05 07:F9F5: 01        .byte $01   ; 
- - - - - - 0x01FA06 07:F9F6: 01        .byte $01   ; 
- D 3 - I - 0x01FA07 07:F9F7: 3E        .byte $3E   ; 
- D 3 - I - 0x01FA08 07:F9F8: FF        .byte $FF   ; 

off_F9F9_04:
- D 3 - I - 0x01FA09 07:F9F9: 08        .byte $08   ; 
- D 3 - I - 0x01FA0A 07:F9FA: 01        .byte $01   ; 
- - - - - - 0x01FA0B 07:F9FB: 01        .byte $01   ; 
- D 3 - I - 0x01FA0C 07:F9FC: 3F        .byte $3F   ; 
- D 3 - I - 0x01FA0D 07:F9FD: FF        .byte $FF   ; 

off_F9FE_06:
- D 3 - I - 0x01FA0E 07:F9FE: 01        .byte $01   ; 
- D 3 - I - 0x01FA0F 07:F9FF: 01        .byte $01   ; 
- - - - - - 0x01FA10 07:FA00: 02        .byte $02   ; 
- D 3 - I - 0x01FA11 07:FA01: 3C        .byte $3C   ; 
- D 3 - I - 0x01FA12 07:FA02: 04        .byte $04   ; 
- D 3 - I - 0x01FA13 07:FA03: 01        .byte $01   ; 
- - - - - - 0x01FA14 07:FA04: 01        .byte $01   ; 
- D 3 - I - 0x01FA15 07:FA05: 3F        .byte $3F   ; 
- D 3 - I - 0x01FA16 07:FA06: FF        .byte $FF   ; 



sub_FA07:
C - - - - - 0x01FA17 07:FA07: C6 30     DEC ram_0030
C - - - - - 0x01FA19 07:FA09: A5 30     LDA ram_0030
C - - - - - 0x01FA1B 07:FA0B: 29 0F     AND #$0F
C - - - - - 0x01FA1D 07:FA0D: D0 25     BNE bra_FA34_RTS
C - - - - - 0x01FA1F 07:FA0F: A9 43     LDA #$43
C - - - - - 0x01FA21 07:FA11: 85 A0     STA ram_00A0
C - - - - - 0x01FA23 07:FA13: 20 95 FD  JSR sub_FD95
C - - - - - 0x01FA26 07:FA16: A5 A1     LDA ram_00A1
C - - - - - 0x01FA28 07:FA18: C9 1C     CMP #$1C
C - - - - - 0x01FA2A 07:FA1A: B0 18     BCS bra_FA34_RTS
C - - - - - 0x01FA2C 07:FA1C: 20 95 FD  JSR sub_FD95
C - - - - - 0x01FA2F 07:FA1F: A5 A1     LDA ram_00A1
C - - - - - 0x01FA31 07:FA21: 0A        ASL
C - - - - - 0x01FA32 07:FA22: 85 00     STA ram_0000
C - - - - - 0x01FA34 07:FA24: 18        CLC
C - - - - - 0x01FA35 07:FA25: 0A        ASL
C - - - - - 0x01FA36 07:FA26: 69 87     ADC #$87
C - - - - - 0x01FA38 07:FA28: 85 01     STA ram_0001
C - - - - - 0x01FA3A 07:FA2A: C9 84     CMP #$84
C - - - - - 0x01FA3C 07:FA2C: 90 06     BCC bra_FA34_RTS
C - - - - - 0x01FA3E 07:FA2E: A5 A1     LDA ram_00A1
C - - - - - 0x01FA40 07:FA30: 65 30     ADC ram_0030
C - - - - - 0x01FA42 07:FA32: EA        NOP
C - - - - - 0x01FA43 07:FA33: EA        NOP
bra_FA34_RTS:
C - - - - - 0x01FA44 07:FA34: 60        RTS



sub_FA35:
C - - - - - 0x01FA45 07:FA35: A9 00     LDA #$00
C - - - - - 0x01FA47 07:FA37: 9D 05 03  STA ram_0305,X
C - - - - - 0x01FA4A 07:FA3A: 20 22 EF  JSR sub_EF22
C - - - - - 0x01FA4D 07:FA3D: 20 F1 F0  JSR sub_F0F1
C - - - - - 0x01FA50 07:FA40: 20 47 EF  JSR sub_EF47
C - - - - - 0x01FA53 07:FA43: A9 02     LDA #$02
C - - - - - 0x01FA55 07:FA45: 20 85 E8  JSR sub_E885
C - - - - - 0x01FA58 07:FA48: 60        RTS



sub_FA49:
C - - - - - 0x01FA59 07:FA49: BD 00 03  LDA ram_0300,X
C - - - - - 0x01FA5C 07:FA4C: 29 02     AND #$02
C - - - - - 0x01FA5E 07:FA4E: F0 43     BEQ bra_FA93
C - - - - - 0x01FA60 07:FA50: A5 22     LDA ram_0022
C - - - - - 0x01FA62 07:FA52: C9 09     CMP #$09
C - - - - - 0x01FA64 07:FA54: D0 1B     BNE bra_FA71
C - - - - - 0x01FA66 07:FA56: BD 02 03  LDA ram_0302,X
C - - - - - 0x01FA69 07:FA59: C9 80     CMP #$80
C - - - - - 0x01FA6B 07:FA5B: B0 36     BCS bra_FA93
C - - - - - 0x01FA6D 07:FA5D: BD 00 04  LDA ram_0400,X
C - - - - - 0x01FA70 07:FA60: F0 02     BEQ bra_FA64
C - - - - - 0x01FA72 07:FA62: 10 2F     BPL bra_FA93
bra_FA64:
C - - - - - 0x01FA74 07:FA64: A9 01     LDA #$01
C - - - - - 0x01FA76 07:FA66: 9D 00 04  STA ram_0400,X
C - - - - - 0x01FA79 07:FA69: A9 00     LDA #$00
C - - - - - 0x01FA7B 07:FA6B: 20 6F EF  JSR sub_EF6F
C - - - - - 0x01FA7E 07:FA6E: 4C 8B FA  JMP loc_FA8B
bra_FA71:
C - - - - - 0x01FA81 07:FA71: C9 0A     CMP #$0A
C - - - - - 0x01FA83 07:FA73: D0 1E     BNE bra_FA93
C - - - - - 0x01FA85 07:FA75: BD 02 03  LDA ram_0302,X
C - - - - - 0x01FA88 07:FA78: C9 80     CMP #$80
C - - - - - 0x01FA8A 07:FA7A: 90 17     BCC bra_FA93
C - - - - - 0x01FA8C 07:FA7C: BD 00 04  LDA ram_0400,X
C - - - - - 0x01FA8F 07:FA7F: 30 12     BMI bra_FA93
C - - - - - 0x01FA91 07:FA81: A9 FF     LDA #$FF
C - - - - - 0x01FA93 07:FA83: 9D 00 04  STA ram_0400,X
C - - - - - 0x01FA96 07:FA86: A9 01     LDA #$01
C - - - - - 0x01FA98 07:FA88: 20 6F EF  JSR sub_EF6F
loc_FA8B:
C D 3 - - - 0x01FA9B 07:FA8B: A9 06     LDA #$06
C - - - - - 0x01FA9D 07:FA8D: 20 85 E8  JSR sub_E885
C - - - - - 0x01FAA0 07:FA90: A9 01     LDA #$01
C - - - - - 0x01FAA2 07:FA92: 60        RTS
bra_FA93:
C - - - - - 0x01FAA3 07:FA93: A9 00     LDA #$00
C - - - - - 0x01FAA5 07:FA95: 60        RTS



sub_FA96:
C - - - - - 0x01FAA6 07:FA96: A5 FC     LDA ram_00FC
C - - - - - 0x01FAA8 07:FA98: F0 52     BEQ bra_FAEC_RTS
C - - - - - 0x01FAAA 07:FA9A: C9 FF     CMP #$FF
C - - - - - 0x01FAAC 07:FA9C: F0 4E     BEQ bra_FAEC_RTS
C - - - - - 0x01FAAE 07:FA9E: C9 01     CMP #$01
C - - - - - 0x01FAB0 07:FAA0: D0 08     BNE bra_FAAA
C - - - - - 0x01FAB2 07:FAA2: A9 00     LDA #$00
C - - - - - 0x01FAB4 07:FAA4: 85 FE     STA ram_00FE
C - - - - - 0x01FAB6 07:FAA6: A9 02     LDA #$02
C - - - - - 0x01FAB8 07:FAA8: 85 FC     STA ram_00FC
bra_FAAA:
C - - - - - 0x01FABA 07:FAAA: C6 FD     DEC ram_00FD
C - - - - - 0x01FABC 07:FAAC: D0 3E     BNE bra_FAEC_RTS
C - - - - - 0x01FABE 07:FAAE: A9 08     LDA #$08
C - - - - - 0x01FAC0 07:FAB0: 85 FD     STA ram_00FD
C - - - - - 0x01FAC2 07:FAB2: A0 00     LDY #$00
C - - - - - 0x01FAC4 07:FAB4: A9 3F     LDA #> $3F00
C - - - - - 0x01FAC6 07:FAB6: 8D 06 20  STA $2006
C - - - - - 0x01FAC9 07:FAB9: A9 00     LDA #< $3F00
C - - - - - 0x01FACB 07:FABB: 8D 06 20  STA $2006
bra_FABE:
C - - - - - 0x01FACE 07:FABE: B9 E0 06  LDA ram_06E0,Y
C - - - - - 0x01FAD1 07:FAC1: C5 FE     CMP ram_00FE
C - - - - - 0x01FAD3 07:FAC3: 90 06     BCC bra_FACB
C - - - - - 0x01FAD5 07:FAC5: 38        SEC
C - - - - - 0x01FAD6 07:FAC6: E5 FE     SBC ram_00FE
C - - - - - 0x01FAD8 07:FAC8: 4C CD FA  JMP loc_FACD
bra_FACB:
C - - - - - 0x01FADB 07:FACB: A9 0F     LDA #$0F
loc_FACD:
C D 3 - - - 0x01FADD 07:FACD: 8D 07 20  STA $2007
C - - - - - 0x01FAE0 07:FAD0: C8        INY
C - - - - - 0x01FAE1 07:FAD1: C0 20     CPY #$20
C - - - - - 0x01FAE3 07:FAD3: D0 E9     BNE bra_FABE
C - - - - - 0x01FAE5 07:FAD5: A9 00     LDA #$00
C - - - - - 0x01FAE7 07:FAD7: 8D 06 20  STA $2006
C - - - - - 0x01FAEA 07:FADA: 8D 06 20  STA $2006
C - - - - - 0x01FAED 07:FADD: A5 FE     LDA ram_00FE
C - - - - - 0x01FAEF 07:FADF: 18        CLC
C - - - - - 0x01FAF0 07:FAE0: 69 10     ADC #$10
C - - - - - 0x01FAF2 07:FAE2: 85 FE     STA ram_00FE
C - - - - - 0x01FAF4 07:FAE4: C9 50     CMP #$50
C - - - - - 0x01FAF6 07:FAE6: 90 04     BCC bra_FAEC_RTS
C - - - - - 0x01FAF8 07:FAE8: A9 FF     LDA #$FF
C - - - - - 0x01FAFA 07:FAEA: 85 FC     STA ram_00FC
bra_FAEC_RTS:
C - - - - - 0x01FAFC 07:FAEC: 60        RTS



sub_FAED:
bra_FAED_infinite_loop:
C - - - - - 0x01FAFD 07:FAED: A5 FC     LDA ram_00FC
C - - - - - 0x01FAFF 07:FAEF: C9 FF     CMP #$FF
C - - - - - 0x01FB01 07:FAF1: D0 FA     BNE bra_FAED_infinite_loop
C - - - - - 0x01FB03 07:FAF3: 60        RTS



sub_FAF4:
C - - - - - 0x01FB04 07:FAF4: A9 08     LDA #$08
C - - - - - 0x01FB06 07:FAF6: 85 FD     STA ram_00FD
C - - - - - 0x01FB08 07:FAF8: A9 01     LDA #$01
C - - - - - 0x01FB0A 07:FAFA: 85 FC     STA ram_00FC
C - - - - - 0x01FB0C 07:FAFC: 20 ED FA  JSR sub_FAED
C - - - - - 0x01FB0F 07:FAFF: 60        RTS



sub_FB00:
C - - - - - 0x01FB10 07:FB00: 98        TYA
C - - - - - 0x01FB11 07:FB01: 48        PHA
C - - - - - 0x01FB12 07:FB02: BD 00 05  LDA ram_0500,X
C - - - - - 0x01FB15 07:FB05: 38        SEC
C - - - - - 0x01FB16 07:FB06: FD 0D 04  SBC ram_damage,X
C - - - - - 0x01FB19 07:FB09: 9D 00 05  STA ram_0500,X
C - - - - - 0x01FB1C 07:FB0C: 10 05     BPL bra_FB13
C - - - - - 0x01FB1E 07:FB0E: A9 24     LDA #$24
C - - - - - 0x01FB20 07:FB10: 20 E9 F7  JSR sub_F7E9
bra_FB13:
C - - - - - 0x01FB23 07:FB13: E0 10     CPX #$10
C - - - - - 0x01FB25 07:FB15: D0 09     BNE bra_FB20
C - - - - - 0x01FB27 07:FB17: AD 4E 05  LDA ram_054E
C - - - - - 0x01FB2A 07:FB1A: D0 26     BNE bra_FB42
C - - - - - 0x01FB2C 07:FB1C: A0 02     LDY #$02
C - - - - - 0x01FB2E 07:FB1E: D0 07     BNE bra_FB27
bra_FB20:
C - - - - - 0x01FB30 07:FB20: AD 1E 05  LDA ram_051E
C - - - - - 0x01FB33 07:FB23: D0 1D     BNE bra_FB42
C - - - - - 0x01FB35 07:FB25: A0 00     LDY #$00
bra_FB27:
C - - - - - 0x01FB37 07:FB27: BD 0D 04  LDA ram_damage,X
C - - - - - 0x01FB3A 07:FB2A: 4A        LSR
C - - - - - 0x01FB3B 07:FB2B: 18        CLC
C - - - - - 0x01FB3C 07:FB2C: 79 74 00  ADC a: ram_0074,Y
C - - - - - 0x01FB3F 07:FB2F: 99 74 00  STA a: ram_0074,Y
C - - - - - 0x01FB42 07:FB32: B9 75 00  LDA a: ram_0075,Y
C - - - - - 0x01FB45 07:FB35: 69 00     ADC #$00
C - - - - - 0x01FB47 07:FB37: 99 75 00  STA a: ram_0075,Y
C - - - - - 0x01FB4A 07:FB3A: 98        TYA
C - - - - - 0x01FB4B 07:FB3B: 4A        LSR
C - - - - - 0x01FB4C 07:FB3C: 85 73     STA ram_0073
C - - - - - 0x01FB4E 07:FB3E: A9 01     LDA #$01
C - - - - - 0x01FB50 07:FB40: 85 7D     STA ram_007D
bra_FB42:
C - - - - - 0x01FB52 07:FB42: 68        PLA
C - - - - - 0x01FB53 07:FB43: A8        TAY
C - - - - - 0x01FB54 07:FB44: 60        RTS


; bzk garbage
- - - - - - 0x01FB55 07:FB45: 04        .byte $04, $00, $00, $00, $00   ; 



sub_FB4A:
C - - - - - 0x01FB5A 07:FB4A: A9 00     LDA #$00
C - - - - - 0x01FB5C 07:FB4C: 8D 00 20  STA $2000
C - - - - - 0x01FB5F 07:FB4F: 8D 01 20  STA $2001
C - - - - - 0x01FB62 07:FB52: D8        CLD
C - - - - - 0x01FB63 07:FB53: 20 8C FB  JSR sub_FB8C_hide_all_sprites
C - - - - - 0x01FB66 07:FB56: A9 00     LDA #$00
C - - - - - 0x01FB68 07:FB58: 20 97 FB  JSR sub_FB97
C - - - - - 0x01FB6B 07:FB5B: A9 01     LDA #$01
C - - - - - 0x01FB6D 07:FB5D: 20 97 FB  JSR sub_FB97
C - - - - - 0x01FB70 07:FB60: A9 00     LDA #$00
C - - - - - 0x01FB72 07:FB62: A8        TAY
bra_FB63:
C - - - - - 0x01FB73 07:FB63: 99 00 00  STA a: ram_0000,Y
C - - - - - 0x01FB76 07:FB66: 99 00 03  STA ram_0300,Y
C - - - - - 0x01FB79 07:FB69: 99 00 04  STA ram_0400,Y
C - - - - - 0x01FB7C 07:FB6C: 99 00 05  STA ram_0500,Y
C - - - - - 0x01FB7F 07:FB6F: 99 00 06  STA ram_0600,Y
C - - - - - 0x01FB82 07:FB72: 99 00 07  STA ram_0700,Y
C - - - - - 0x01FB85 07:FB75: C8        INY
C - - - - - 0x01FB86 07:FB76: C0 FF     CPY #$FF
C - - - - - 0x01FB88 07:FB78: D0 E9     BNE bra_FB63
C - - - - - 0x01FB8A 07:FB7A: A9 88     LDA #$88
C - - - - - 0x01FB8C 07:FB7C: 85 15     STA ram_0015
C - - - - - 0x01FB8E 07:FB7E: A9 1E     LDA #$1E
C - - - - - 0x01FB90 07:FB80: 85 16     STA ram_0016
C - - - - - 0x01FB92 07:FB82: A9 37     LDA #$37
C - - - - - 0x01FB94 07:FB84: 85 17     STA ram_0017
C - - - - - 0x01FB96 07:FB86: 85 18     STA ram_0018
C - - - - - 0x01FB98 07:FB88: 20 D0 FC  JSR sub_FCD0
C - - - - - 0x01FB9B 07:FB8B: 60        RTS



sub_FB8C_hide_all_sprites:
C - - - - - 0x01FB9C 07:FB8C: A9 F0     LDA #$F0
C - - - - - 0x01FB9E 07:FB8E: A0 00     LDY #$00
bra_FB90_loop:
C - - - - - 0x01FBA0 07:FB90: 99 00 02  STA ram_0200,Y
C - - - - - 0x01FBA3 07:FB93: C8        INY
C - - - - - 0x01FBA4 07:FB94: D0 FA     BNE bra_FB90_loop
C - - - - - 0x01FBA6 07:FB96: 60        RTS



sub_FB97:
C - - - - - 0x01FBA7 07:FB97: 0A        ASL
C - - - - - 0x01FBA8 07:FB98: 0A        ASL
C - - - - - 0x01FBA9 07:FB99: 18        CLC
C - - - - - 0x01FBAA 07:FB9A: 69 20     ADC #$20
C - - - - - 0x01FBAC 07:FB9C: 8D 06 20  STA $2006
C - - - - - 0x01FBAF 07:FB9F: A9 00     LDA #$00
C - - - - - 0x01FBB1 07:FBA1: 8D 06 20  STA $2006
C - - - - - 0x01FBB4 07:FBA4: A2 20     LDX #$20
bra_FBA6:
C - - - - - 0x01FBB6 07:FBA6: A0 20     LDY #$20
bra_FBA8:
C - - - - - 0x01FBB8 07:FBA8: 8D 07 20  STA $2007
C - - - - - 0x01FBBB 07:FBAB: 88        DEY
C - - - - - 0x01FBBC 07:FBAC: D0 FA     BNE bra_FBA8
C - - - - - 0x01FBBE 07:FBAE: CA        DEX
C - - - - - 0x01FBBF 07:FBAF: D0 F5     BNE bra_FBA6
C - - - - - 0x01FBC1 07:FBB1: 60        RTS



sub_FBB2_write_palette_to_ppu:
; A = low for 2006
; X = read data counter
; Y = start offset for reading indirect data
C - - - - - 0x01FBC2 07:FBB2: 48        PHA
C - - - - - 0x01FBC3 07:FBB3: 86 B8     STX ram_00B8
C - - - - - 0x01FBC5 07:FBB5: A9 3F     LDA #$3F
C - - - - - 0x01FBC7 07:FBB7: 8D 06 20  STA $2006
C - - - - - 0x01FBCA 07:FBBA: 68        PLA
C - - - - - 0x01FBCB 07:FBBB: 8D 06 20  STA $2006
C - - - - - 0x01FBCE 07:FBBE: AA        TAX
bra_FBBF_loop:
C - - - - - 0x01FBCF 07:FBBF: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FBD1 07:FBC1: 8D 07 20  STA $2007
C - - - - - 0x01FBD4 07:FBC4: 9D E0 06  STA ram_06E0,X
C - - - - - 0x01FBD7 07:FBC7: C8        INY
C - - - - - 0x01FBD8 07:FBC8: E8        INX
C - - - - - 0x01FBD9 07:FBC9: C6 B8     DEC ram_00B8
C - - - - - 0x01FBDB 07:FBCB: D0 F2     BNE bra_FBBF_loop
C - - - - - 0x01FBDD 07:FBCD: 60        RTS



sub_FBCE_draw_background:
C - - - - - 0x01FBDE 07:FBCE: 48        PHA
C - - - - - 0x01FBDF 07:FBCF: A0 00     LDY #$00
C - - - - - 0x01FBE1 07:FBD1: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FBE3 07:FBD3: 8D 00 60  STA $6000
C - - - - - 0x01FBE6 07:FBD6: 18        CLC
C - - - - - 0x01FBE7 07:FBD7: 69 01     ADC #$01
C - - - - - 0x01FBE9 07:FBD9: 8D 01 60  STA $6001
C - - - - - 0x01FBEC 07:FBDC: 20 E5 FC  JSR sub_FCE5_wait_for_vblank
C - - - - - 0x01FBEF 07:FBDF: A0 01     LDY #$01
C - - - - - 0x01FBF1 07:FBE1: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FBF3 07:FBE3: C9 FF     CMP #$FF
C - - - - - 0x01FBF5 07:FBE5: D0 0E     BNE bra_FBF5
C - - - - - 0x01FBF7 07:FBE7: A5 00     LDA ram_0000
C - - - - - 0x01FBF9 07:FBE9: 18        CLC
C - - - - - 0x01FBFA 07:FBEA: 69 02     ADC #$02
C - - - - - 0x01FBFC 07:FBEC: 85 00     STA ram_0000
C - - - - - 0x01FBFE 07:FBEE: 90 19     BCC bra_FC09
- - - - - - 0x01FC00 07:FBF0: E6 01     INC ram_0001
- - - - - - 0x01FC02 07:FBF2: 4C 09 FC  JMP loc_FC09
bra_FBF5:
C - - - - - 0x01FC05 07:FBF5: A9 00     LDA #$00
C - - - - - 0x01FC07 07:FBF7: A0 01     LDY #$01
C - - - - - 0x01FC09 07:FBF9: A2 11     LDX #$11
C - - - - - 0x01FC0B 07:FBFB: 20 B2 FB  JSR sub_FBB2_write_palette_to_ppu
C - - - - - 0x01FC0E 07:FBFE: A5 00     LDA ram_0000
C - - - - - 0x01FC10 07:FC00: 18        CLC
C - - - - - 0x01FC11 07:FC01: 69 12     ADC #$12
C - - - - - 0x01FC13 07:FC03: 85 00     STA ram_0000
C - - - - - 0x01FC15 07:FC05: 90 02     BCC bra_FC09
C - - - - - 0x01FC17 07:FC07: E6 01     INC ram_0001
bra_FC09:
loc_FC09:
C - - - - - 0x01FC19 07:FC09: 68        PLA
C - - - - - 0x01FC1A 07:FC0A: 20 16 FC  JSR sub_FC16
C - - - - - 0x01FC1D 07:FC0D: A9 00     LDA #$00
C - - - - - 0x01FC1F 07:FC0F: 8D 06 20  STA $2006
C - - - - - 0x01FC22 07:FC12: 8D 06 20  STA $2006
C - - - - - 0x01FC25 07:FC15: 60        RTS



sub_FC16:
C - - - - - 0x01FC26 07:FC16: 0A        ASL
C - - - - - 0x01FC27 07:FC17: 0A        ASL
C - - - - - 0x01FC28 07:FC18: 09 20     ORA #$20
C - - - - - 0x01FC2A 07:FC1A: 8D 06 20  STA $2006
C - - - - - 0x01FC2D 07:FC1D: A9 00     LDA #$00
C - - - - - 0x01FC2F 07:FC1F: 8D 06 20  STA $2006
C - - - - - 0x01FC32 07:FC22: A8        TAY
loc_FC23:
C D 3 - - - 0x01FC33 07:FC23: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FC35 07:FC25: C9 00     CMP #$00
C - - - - - 0x01FC37 07:FC27: D0 01     BNE bra_FC2A
C - - - - - 0x01FC39 07:FC29: 60        RTS
bra_FC2A:
C - - - - - 0x01FC3A 07:FC2A: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FC3C 07:FC2C: 10 2D     BPL bra_FC5B
C - - - - - 0x01FC3E 07:FC2E: 29 40     AND #$40
C - - - - - 0x01FC40 07:FC30: D0 17     BNE bra_FC49
C - - - - - 0x01FC42 07:FC32: A9 3F     LDA #$3F
C - - - - - 0x01FC44 07:FC34: 31 00     AND (ram_0000),Y
C - - - - - 0x01FC46 07:FC36: D0 02     BNE bra_FC3A
C - - - - - 0x01FC48 07:FC38: A9 40     LDA #$40
bra_FC3A:
C - - - - - 0x01FC4A 07:FC3A: AA        TAX
C - - - - - 0x01FC4B 07:FC3B: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FC4E 07:FC3E: B1 00     LDA (ram_0000),Y
bra_FC40:
C - - - - - 0x01FC50 07:FC40: 8D 07 20  STA $2007
C - - - - - 0x01FC53 07:FC43: CA        DEX
C - - - - - 0x01FC54 07:FC44: D0 FA     BNE bra_FC40
C - - - - - 0x01FC56 07:FC46: 4C B4 FC  JMP loc_FCB4
bra_FC49:
C - - - - - 0x01FC59 07:FC49: A9 3F     LDA #$3F
C - - - - - 0x01FC5B 07:FC4B: 31 00     AND (ram_0000),Y
C - - - - - 0x01FC5D 07:FC4D: D0 02     BNE bra_FC51
- - - - - - 0x01FC5F 07:FC4F: A9 40     LDA #$40
bra_FC51:
C - - - - - 0x01FC61 07:FC51: AA        TAX
C - - - - - 0x01FC62 07:FC52: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FC65 07:FC55: 20 C0 FC  JSR sub_FCC0_write_to_ppu
C - - - - - 0x01FC68 07:FC58: 4C B4 FC  JMP loc_FCB4
bra_FC5B:
C - - - - - 0x01FC6B 07:FC5B: C9 7F     CMP #$7F
C - - - - - 0x01FC6D 07:FC5D: D0 22     BNE bra_FC81
C - - - - - 0x01FC6F 07:FC5F: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FC72 07:FC62: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FC74 07:FC64: 29 0F     AND #$0F
C - - - - - 0x01FC76 07:FC66: D0 02     BNE bra_FC6A
- - - - - - 0x01FC78 07:FC68: A9 10     LDA #$10
bra_FC6A:
C - - - - - 0x01FC7A 07:FC6A: AA        TAX
C - - - - - 0x01FC7B 07:FC6B: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FC7D 07:FC6D: 29 F0     AND #$F0
C - - - - - 0x01FC7F 07:FC6F: 4A        LSR
C - - - - - 0x01FC80 07:FC70: 48        PHA
C - - - - - 0x01FC81 07:FC71: 20 BA FC  JSR sub_FCBA
loc_FC74:
C D 3 - - - 0x01FC84 07:FC74: 20 C0 FC  JSR sub_FCC0_write_to_ppu
C - - - - - 0x01FC87 07:FC77: 68        PLA
C - - - - - 0x01FC88 07:FC78: 38        SEC
C - - - - - 0x01FC89 07:FC79: E9 08     SBC #$08
C - - - - - 0x01FC8B 07:FC7B: 30 37     BMI bra_FCB4
C - - - - - 0x01FC8D 07:FC7D: 48        PHA
C - - - - - 0x01FC8E 07:FC7E: 4C 74 FC  JMP loc_FC74
bra_FC81:
C - - - - - 0x01FC91 07:FC81: C9 7E     CMP #$7E
C - - - - - 0x01FC93 07:FC83: D0 21     BNE bra_FCA6
C - - - - - 0x01FC95 07:FC85: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FC98 07:FC88: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FC9A 07:FC8A: 48        PHA
C - - - - - 0x01FC9B 07:FC8B: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FC9E 07:FC8E: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FCA0 07:FC90: AA        TAX
C - - - - - 0x01FCA1 07:FC91: 20 BA FC  JSR sub_FCBA
loc_FC94:
C D 3 - - - 0x01FCA4 07:FC94: 8E 07 20  STX $2007
C - - - - - 0x01FCA7 07:FC97: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FCA9 07:FC99: 8D 07 20  STA $2007
C - - - - - 0x01FCAC 07:FC9C: 68        PLA
C - - - - - 0x01FCAD 07:FC9D: 38        SEC
C - - - - - 0x01FCAE 07:FC9E: E9 01     SBC #$01
C - - - - - 0x01FCB0 07:FCA0: F0 12     BEQ bra_FCB4
C - - - - - 0x01FCB2 07:FCA2: 48        PHA
C - - - - - 0x01FCB3 07:FCA3: 4C 94 FC  JMP loc_FC94
bra_FCA6:
C - - - - - 0x01FCB6 07:FCA6: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FCB8 07:FCA8: AA        TAX
bra_FCA9:
C - - - - - 0x01FCB9 07:FCA9: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FCBC 07:FCAC: B1 00     LDA (ram_0000),Y
C - - - - - 0x01FCBE 07:FCAE: 8D 07 20  STA $2007
C - - - - - 0x01FCC1 07:FCB1: CA        DEX
C - - - - - 0x01FCC2 07:FCB2: D0 F5     BNE bra_FCA9
bra_FCB4:
loc_FCB4:
C D 3 - - - 0x01FCC4 07:FCB4: 20 BA FC  JSR sub_FCBA
C - - - - - 0x01FCC7 07:FCB7: 4C 23 FC  JMP loc_FC23
sub_FCBA:
C - - - - - 0x01FCCA 07:FCBA: C8        INY
C - - - - - 0x01FCCB 07:FCBB: D0 02     BNE bra_FCBF_RTS
C - - - - - 0x01FCCD 07:FCBD: E6 01     INC ram_0001
bra_FCBF_RTS:
C - - - - - 0x01FCCF 07:FCBF: 60        RTS



sub_FCC0_write_to_ppu:
C - - - - - 0x01FCD0 07:FCC0: 8A        TXA
C - - - - - 0x01FCD1 07:FCC1: 48        PHA
C - - - - - 0x01FCD2 07:FCC2: B1 00     LDA (ram_0000),Y
bra_FCC4_loop:
C - - - - - 0x01FCD4 07:FCC4: 8D 07 20  STA $2007
C - - - - - 0x01FCD7 07:FCC7: 18        CLC
C - - - - - 0x01FCD8 07:FCC8: 69 01     ADC #$01
C - - - - - 0x01FCDA 07:FCCA: CA        DEX
C - - - - - 0x01FCDB 07:FCCB: D0 F7     BNE bra_FCC4_loop
C - - - - - 0x01FCDD 07:FCCD: 68        PLA
C - - - - - 0x01FCDE 07:FCCE: AA        TAX
C - - - - - 0x01FCDF 07:FCCF: 60        RTS



sub_FCD0:
C - - - - - 0x01FCE0 07:FCD0: A9 00     LDA #$00
C - - - - - 0x01FCE2 07:FCD2: 85 12     STA ram_0012
C - - - - - 0x01FCE4 07:FCD4: A5 15     LDA ram_0015
C - - - - - 0x01FCE6 07:FCD6: 8D 00 20  STA $2000
C - - - - - 0x01FCE9 07:FCD9: 20 E5 FC  JSR sub_FCE5_wait_for_vblank
C - - - - - 0x01FCEC 07:FCDC: A9 01     LDA #$01
C - - - - - 0x01FCEE 07:FCDE: 85 13     STA ram_0013
C - - - - - 0x01FCF0 07:FCE0: A9 01     LDA #$01
C - - - - - 0x01FCF2 07:FCE2: 85 12     STA ram_0012
C - - - - - 0x01FCF4 07:FCE4: 60        RTS



sub_FCE5_wait_for_vblank:
; bzk optimize, BIT
C - - - - - 0x01FCF5 07:FCE5: 48        PHA
bra_FCE6_infinite_loop:
C - - - - - 0x01FCF6 07:FCE6: AD 02 20  LDA $2002
C - - - - - 0x01FCF9 07:FCE9: 30 FB     BMI bra_FCE6_infinite_loop
bra_FCEB_infinite_loop:
C - - - - - 0x01FCFB 07:FCEB: AD 02 20  LDA $2002
C - - - - - 0x01FCFE 07:FCEE: 10 FB     BPL bra_FCEB_infinite_loop
C - - - - - 0x01FD00 07:FCF0: 68        PLA
C - - - - - 0x01FD01 07:FCF1: 60        RTS



sub_FCF2_artificial_delay:
bra_FCF2_loop:
C - - - - - 0x01FD02 07:FCF2: 48        PHA
C - - - - - 0x01FD03 07:FCF3: A9 3C     LDA #$3C
C - - - - - 0x01FD05 07:FCF5: 85 10     STA ram_0010
bra_FCF7_infinite_loop:
C - - - - - 0x01FD07 07:FCF7: A5 10     LDA ram_0010
C - - - - - 0x01FD09 07:FCF9: D0 FC     BNE bra_FCF7_infinite_loop
C - - - - - 0x01FD0B 07:FCFB: 68        PLA
C - - - - - 0x01FD0C 07:FCFC: 38        SEC
C - - - - - 0x01FD0D 07:FCFD: E9 01     SBC #$01
C - - - - - 0x01FD0F 07:FCFF: D0 F1     BNE bra_FCF2_loop
C - - - - - 0x01FD11 07:FD01: 60        RTS



sub_FD02_read_joysticks_regs:
C - - - - - 0x01FD12 07:FD02: A2 01     LDX #$01
C - - - - - 0x01FD14 07:FD04: 8E 16 40  STX $4016
C - - - - - 0x01FD17 07:FD07: CA        DEX
C - - - - - 0x01FD18 07:FD08: 8E 16 40  STX $4016
C - - - - - 0x01FD1B 07:FD0B: AA        TAX
C - - - - - 0x01FD1C 07:FD0C: A0 08     LDY #$08
bra_FD0E:
C - - - - - 0x01FD1E 07:FD0E: BD 16 40  LDA $4016,X
C - - - - - 0x01FD21 07:FD11: 29 03     AND #$03
C - - - - - 0x01FD23 07:FD13: C9 01     CMP #$01
C - - - - - 0x01FD25 07:FD15: 26 14     ROL ram_0014
C - - - - - 0x01FD27 07:FD17: 88        DEY
C - - - - - 0x01FD28 07:FD18: D0 F4     BNE bra_FD0E
C - - - - - 0x01FD2A 07:FD1A: A5 14     LDA ram_0014
C - - - - - 0x01FD2C 07:FD1C: C9 18     CMP #$18
C - - - - - 0x01FD2E 07:FD1E: D0 04     BNE bra_FD24_RTS
C - - - - - 0x01FD30 07:FD20: EA        NOP
C - - - - - 0x01FD31 07:FD21: 8C 40 05  STY ram_p2_hp   ; !!! wtf
bra_FD24_RTS:
C - - - - - 0x01FD34 07:FD24: 60        RTS



sub_FD25:
C - - - - - 0x01FD35 07:FD25: C9 01     CMP #$01
C - - - - - 0x01FD37 07:FD27: F0 02     BEQ bra_FD2B
C - - - - - 0x01FD39 07:FD29: A9 00     LDA #$00
bra_FD2B:
C - - - - - 0x01FD3B 07:FD2B: 48        PHA
C - - - - - 0x01FD3C 07:FD2C: 20 02 FD  JSR sub_FD02_read_joysticks_regs
C - - - - - 0x01FD3F 07:FD2F: 68        PLA
C - - - - - 0x01FD40 07:FD30: AA        TAX
C - - - - - 0x01FD41 07:FD31: A5 14     LDA ram_0014
C - - - - - 0x01FD43 07:FD33: D5 B6     CMP ram_00B6,X
C - - - - - 0x01FD45 07:FD35: D0 05     BNE bra_FD3C
C - - - - - 0x01FD47 07:FD37: A9 00     LDA #$00
C - - - - - 0x01FD49 07:FD39: 4C 8E FD  JMP loc_FD8E
bra_FD3C:
C - - - - - 0x01FD4C 07:FD3C: A5 14     LDA ram_0014
C - - - - - 0x01FD4E 07:FD3E: 55 B6     EOR ram_00B6,X
C - - - - - 0x01FD50 07:FD40: 0A        ASL
C - - - - - 0x01FD51 07:FD41: 90 10     BCC bra_FD53
C - - - - - 0x01FD53 07:FD43: A5 14     LDA ram_0014
C - - - - - 0x01FD55 07:FD45: 29 80     AND #$80
C - - - - - 0x01FD57 07:FD47: F0 05     BEQ bra_FD4E
C - - - - - 0x01FD59 07:FD49: A9 01     LDA #$01
C - - - - - 0x01FD5B 07:FD4B: 4C 8E FD  JMP loc_FD8E
bra_FD4E:
C - - - - - 0x01FD5E 07:FD4E: A9 02     LDA #$02
C - - - - - 0x01FD60 07:FD50: 4C 8E FD  JMP loc_FD8E
bra_FD53:
C - - - - - 0x01FD63 07:FD53: 0A        ASL
C - - - - - 0x01FD64 07:FD54: 90 10     BCC bra_FD66
C - - - - - 0x01FD66 07:FD56: A5 14     LDA ram_0014
C - - - - - 0x01FD68 07:FD58: 29 40     AND #$40
C - - - - - 0x01FD6A 07:FD5A: F0 05     BEQ bra_FD61
C - - - - - 0x01FD6C 07:FD5C: A9 03     LDA #$03
C - - - - - 0x01FD6E 07:FD5E: 4C 8E FD  JMP loc_FD8E
bra_FD61:
C - - - - - 0x01FD71 07:FD61: A9 04     LDA #$04
C - - - - - 0x01FD73 07:FD63: 4C 8E FD  JMP loc_FD8E
bra_FD66:
C - - - - - 0x01FD76 07:FD66: 0A        ASL
C - - - - - 0x01FD77 07:FD67: 90 10     BCC bra_FD79
C - - - - - 0x01FD79 07:FD69: A5 14     LDA ram_0014
C - - - - - 0x01FD7B 07:FD6B: 29 20     AND #$20
C - - - - - 0x01FD7D 07:FD6D: F0 05     BEQ bra_FD74
C - - - - - 0x01FD7F 07:FD6F: A9 05     LDA #$05
C - - - - - 0x01FD81 07:FD71: 4C 8E FD  JMP loc_FD8E
bra_FD74:
C - - - - - 0x01FD84 07:FD74: A9 06     LDA #$06
C - - - - - 0x01FD86 07:FD76: 4C 8E FD  JMP loc_FD8E
bra_FD79:
C - - - - - 0x01FD89 07:FD79: 0A        ASL
C - - - - - 0x01FD8A 07:FD7A: 90 10     BCC bra_FD8C
C - - - - - 0x01FD8C 07:FD7C: A5 14     LDA ram_0014
C - - - - - 0x01FD8E 07:FD7E: 29 10     AND #$10
C - - - - - 0x01FD90 07:FD80: F0 05     BEQ bra_FD87
C - - - - - 0x01FD92 07:FD82: A9 07     LDA #$07
C - - - - - 0x01FD94 07:FD84: 4C 8E FD  JMP loc_FD8E
bra_FD87:
C - - - - - 0x01FD97 07:FD87: A9 08     LDA #$08
C - - - - - 0x01FD99 07:FD89: 4C 8E FD  JMP loc_FD8E
bra_FD8C:
C - - - - - 0x01FD9C 07:FD8C: A9 09     LDA #$09
loc_FD8E:
C D 3 - - - 0x01FD9E 07:FD8E: 95 B4     STA ram_00B4,X
C - - - - - 0x01FDA0 07:FD90: A5 14     LDA ram_0014
C - - - - - 0x01FDA2 07:FD92: 95 B6     STA ram_00B6,X
C - - - - - 0x01FDA4 07:FD94: 60        RTS



sub_FD95:
C - - - - - 0x01FDA5 07:FD95: 8A        TXA
C - - - - - 0x01FDA6 07:FD96: 48        PHA
C - - - - - 0x01FDA7 07:FD97: E6 FF     INC ram_00FF
C - - - - - 0x01FDA9 07:FD99: A5 FF     LDA ram_00FF
C - - - - - 0x01FDAB 07:FD9B: 65 10     ADC ram_0010
C - - - - - 0x01FDAD 07:FD9D: 6D 04 01  ADC ram_0104
C - - - - - 0x01FDB0 07:FDA0: 6D 40 01  ADC ram_0140
C - - - - - 0x01FDB3 07:FDA3: 6D 80 01  ADC ram_0180
C - - - - - 0x01FDB6 07:FDA6: 6D F0 01  ADC ram_01F0
C - - - - - 0x01FDB9 07:FDA9: 29 3F     AND #$3F
C - - - - - 0x01FDBB 07:FDAB: 85 FF     STA ram_00FF
C - - - - - 0x01FDBD 07:FDAD: AA        TAX
C - - - - - 0x01FDBE 07:FDAE: BD C0 FD  LDA tbl_FDC0,X
loc_FDB1:
C D 3 - - - 0x01FDC1 07:FDB1: C5 A0     CMP ram_00A0
C - - - - - 0x01FDC3 07:FDB3: 90 06     BCC bra_FDBB
C - - - - - 0x01FDC5 07:FDB5: 38        SEC
C - - - - - 0x01FDC6 07:FDB6: E5 A0     SBC ram_00A0
C - - - - - 0x01FDC8 07:FDB8: 4C B1 FD  JMP loc_FDB1
bra_FDBB:
C - - - - - 0x01FDCB 07:FDBB: 85 A1     STA ram_00A1
C - - - - - 0x01FDCD 07:FDBD: 68        PLA
C - - - - - 0x01FDCE 07:FDBE: AA        TAX
C - - - - - 0x01FDCF 07:FDBF: 60        RTS



tbl_FDC0:
- D 3 - - - 0x01FDD0 07:FDC0: 1A        .byte $1A   ; 
- D 3 - - - 0x01FDD1 07:FDC1: 02        .byte $02   ; 
- D 3 - - - 0x01FDD2 07:FDC2: 26        .byte $26   ; 
- D 3 - - - 0x01FDD3 07:FDC3: 00        .byte $00   ; 
- D 3 - - - 0x01FDD4 07:FDC4: 08        .byte $08   ; 
- D 3 - - - 0x01FDD5 07:FDC5: 0D        .byte $0D   ; 
- D 3 - - - 0x01FDD6 07:FDC6: 3B        .byte $3B   ; 
- D 3 - - - 0x01FDD7 07:FDC7: 0F        .byte $0F   ; 
- D 3 - - - 0x01FDD8 07:FDC8: 20        .byte $20   ; 
- D 3 - - - 0x01FDD9 07:FDC9: 16        .byte $16   ; 
- D 3 - - - 0x01FDDA 07:FDCA: 2C        .byte $2C   ; 
- D 3 - - - 0x01FDDB 07:FDCB: 1E        .byte $1E   ; 
- D 3 - - - 0x01FDDC 07:FDCC: 33        .byte $33   ; 
- D 3 - - - 0x01FDDD 07:FDCD: 1F        .byte $1F   ; 
- D 3 - - - 0x01FDDE 07:FDCE: 3C        .byte $3C   ; 
- D 3 - - - 0x01FDDF 07:FDCF: 10        .byte $10   ; 
- D 3 - - - 0x01FDE0 07:FDD0: 25        .byte $25   ; 
- D 3 - - - 0x01FDE1 07:FDD1: 21        .byte $21   ; 
- D 3 - - - 0x01FDE2 07:FDD2: 3F        .byte $3F   ; 
- D 3 - - - 0x01FDE3 07:FDD3: 17        .byte $17   ; 
- D 3 - - - 0x01FDE4 07:FDD4: 2F        .byte $2F   ; 
- D 3 - - - 0x01FDE5 07:FDD5: 1B        .byte $1B   ; 
- D 3 - - - 0x01FDE6 07:FDD6: 12        .byte $12   ; 
- D 3 - - - 0x01FDE7 07:FDD7: 1D        .byte $1D   ; 
- D 3 - - - 0x01FDE8 07:FDD8: 2E        .byte $2E   ; 
- D 3 - - - 0x01FDE9 07:FDD9: 35        .byte $35   ; 
- D 3 - - - 0x01FDEA 07:FDDA: 2C        .byte $2C   ; 
- D 3 - - - 0x01FDEB 07:FDDB: 07        .byte $07   ; 
- D 3 - - - 0x01FDEC 07:FDDC: 3B        .byte $3B   ; 
- D 3 - - - 0x01FDED 07:FDDD: 28        .byte $28   ; 
- D 3 - - - 0x01FDEE 07:FDDE: 31        .byte $31   ; 
- D 3 - - - 0x01FDEF 07:FDDF: 03        .byte $03   ; 
- D 3 - - - 0x01FDF0 07:FDE0: 0B        .byte $0B   ; 
- D 3 - - - 0x01FDF1 07:FDE1: 29        .byte $29   ; 
- D 3 - - - 0x01FDF2 07:FDE2: 14        .byte $14   ; 
- D 3 - - - 0x01FDF3 07:FDE3: 3E        .byte $3E   ; 
- D 3 - - - 0x01FDF4 07:FDE4: 06        .byte $06   ; 
- D 3 - - - 0x01FDF5 07:FDE5: 2B        .byte $2B   ; 
- D 3 - - - 0x01FDF6 07:FDE6: 09        .byte $09   ; 
- D 3 - - - 0x01FDF7 07:FDE7: 1C        .byte $1C   ; 
- D 3 - - - 0x01FDF8 07:FDE8: 39        .byte $39   ; 
- D 3 - - - 0x01FDF9 07:FDE9: 13        .byte $13   ; 
- D 3 - - - 0x01FDFA 07:FDEA: 32        .byte $32   ; 
- D 3 - - - 0x01FDFB 07:FDEB: 18        .byte $18   ; 
- D 3 - - - 0x01FDFC 07:FDEC: 04        .byte $04   ; 
- D 3 - - - 0x01FDFD 07:FDED: 27        .byte $27   ; 
- D 3 - - - 0x01FDFE 07:FDEE: 2E        .byte $2E   ; 
- D 3 - - - 0x01FDFF 07:FDEF: 34        .byte $34   ; 
- D 3 - - - 0x01FE00 07:FDF0: 27        .byte $27   ; 
- D 3 - - - 0x01FE01 07:FDF1: 19        .byte $19   ; 
- D 3 - - - 0x01FE02 07:FDF2: 0A        .byte $0A   ; 
- D 3 - - - 0x01FE03 07:FDF3: 24        .byte $24   ; 
- D 3 - - - 0x01FE04 07:FDF4: 03        .byte $03   ; 
- D 3 - - - 0x01FE05 07:FDF5: 2C        .byte $2C   ; 
- D 3 - - - 0x01FE06 07:FDF6: 05        .byte $05   ; 
- D 3 - - - 0x01FE07 07:FDF7: 3A        .byte $3A   ; 
- D 3 - - - 0x01FE08 07:FDF8: 3B        .byte $3B   ; 
- D 3 - - - 0x01FE09 07:FDF9: 22        .byte $22   ; 
- D 3 - - - 0x01FE0A 07:FDFA: 3E        .byte $3E   ; 
- D 3 - - - 0x01FE0B 07:FDFB: 11        .byte $11   ; 
- D 3 - - - 0x01FE0C 07:FDFC: 15        .byte $15   ; 
- D 3 - - - 0x01FE0D 07:FDFD: 0C        .byte $0C   ; 
- D 3 - - - 0x01FE0E 07:FDFE: 01        .byte $01   ; 
- D 3 - - - 0x01FE0F 07:FDFF: 3D        .byte $3D   ; 



tbl_FE00:
- D 3 - - - 0x01FE10 07:FE00: F7        .byte $F7   ; 
- D 3 - - - 0x01FE11 07:FE01: BC        .byte $BC   ; 
- D 3 - - - 0x01FE12 07:FE02: 68        .byte $68   ; 
- D 3 - - - 0x01FE13 07:FE03: D1        .byte $D1   ; 
- D 3 - - - 0x01FE14 07:FE04: A8        .byte $A8   ; 
- D 3 - - - 0x01FE15 07:FE05: CB        .byte $CB   ; 
- D 3 - - - 0x01FE16 07:FE06: A3        .byte $A3   ; 
- D 3 - - - 0x01FE17 07:FE07: E8        .byte $E8   ; 
- D 3 - - - 0x01FE18 07:FE08: 87        .byte $87   ; 
- D 3 - - - 0x01FE19 07:FE09: F4        .byte $F4   ; 
- D 3 - - - 0x01FE1A 07:FE0A: 10        .byte $10   ; 
- D 3 - - - 0x01FE1B 07:FE0B: 96        .byte $96   ; 
- D 3 - - - 0x01FE1C 07:FE0C: 60        .byte $60   ; 
- D 3 - - - 0x01FE1D 07:FE0D: BC        .byte $BC   ; 
- D 3 - - - 0x01FE1E 07:FE0E: 95        .byte $95   ; 
- D 3 - - - 0x01FE1F 07:FE0F: 82        .byte $82   ; 
- D 3 - - - 0x01FE20 07:FE10: E8        .byte $E8   ; 
- D 3 - - - 0x01FE21 07:FE11: 09        .byte $09   ; 
- D 3 - - - 0x01FE22 07:FE12: 4F        .byte $4F   ; 
- D 3 - - - 0x01FE23 07:FE13: 4E        .byte $4E   ; 
- D 3 - - - 0x01FE24 07:FE14: C2        .byte $C2   ; 
- D 3 - - - 0x01FE25 07:FE15: EC        .byte $EC   ; 
- D 3 - - - 0x01FE26 07:FE16: 94        .byte $94   ; 
- D 3 - - - 0x01FE27 07:FE17: FF        .byte $FF   ; 
- D 3 - - - 0x01FE28 07:FE18: 38        .byte $38   ; 
- D 3 - - - 0x01FE29 07:FE19: E0        .byte $E0   ; 
- D 3 - - - 0x01FE2A 07:FE1A: 87        .byte $87   ; 
- D 3 - - - 0x01FE2B 07:FE1B: E0        .byte $E0   ; 
- D 3 - - - 0x01FE2C 07:FE1C: 38        .byte $38   ; 
- D 3 - - - 0x01FE2D 07:FE1D: 45        .byte $45   ; 
- D 3 - - - 0x01FE2E 07:FE1E: 21        .byte $21   ; 
- D 3 - - - 0x01FE2F 07:FE1F: 60        .byte $60   ; 
- D 3 - - - 0x01FE30 07:FE20: 23        .byte $23   ; 
- D 3 - - - 0x01FE31 07:FE21: 8C        .byte $8C   ; 
- D 3 - - - 0x01FE32 07:FE22: 8F        .byte $8F   ; 
- D 3 - - - 0x01FE33 07:FE23: 20        .byte $20   ; 
- D 3 - - - 0x01FE34 07:FE24: 5D        .byte $5D   ; 
- D 3 - - - 0x01FE35 07:FE25: 3C        .byte $3C   ; 
- D 3 - - - 0x01FE36 07:FE26: 1C        .byte $1C   ; 
- D 3 - - - 0x01FE37 07:FE27: B0        .byte $B0   ; 
- D 3 - - - 0x01FE38 07:FE28: 1F        .byte $1F   ; 
- D 3 - - - 0x01FE39 07:FE29: 00        .byte $00   ; 
- D 3 - - - 0x01FE3A 07:FE2A: 00        .byte $00   ; 
- D 3 - - - 0x01FE3B 07:FE2B: 00        .byte $00   ; 
- D 3 - - - 0x01FE3C 07:FE2C: 00        .byte $00   ; 
- D 3 - - - 0x01FE3D 07:FE2D: 00        .byte $00   ; 
- D 3 - - - 0x01FE3E 07:FE2E: E0        .byte $E0   ; 
- D 3 - - - 0x01FE3F 07:FE2F: 56        .byte $56   ; 
- D 3 - - - 0x01FE40 07:FE30: 00        .byte $00   ; 
- D 3 - - - 0x01FE41 07:FE31: CE        .byte $CE   ; 
- D 3 - - - 0x01FE42 07:FE32: F1        .byte $F1   ; 
- D 3 - - - 0x01FE43 07:FE33: 80        .byte $80   ; 
- D 3 - - - 0x01FE44 07:FE34: E2        .byte $E2   ; 
- D 3 - - - 0x01FE45 07:FE35: 9E        .byte $9E   ; 
- D 3 - - - 0x01FE46 07:FE36: 42        .byte $42   ; 
- D 3 - - - 0x01FE47 07:FE37: FE        .byte $FE   ; 
- D 3 - - - 0x01FE48 07:FE38: A4        .byte $A4   ; 
- D 3 - - - 0x01FE49 07:FE39: 83        .byte $83   ; 
- D 3 - - - 0x01FE4A 07:FE3A: 64        .byte $64   ; 
- D 3 - - - 0x01FE4B 07:FE3B: E3        .byte $E3   ; 
- D 3 - - - 0x01FE4C 07:FE3C: 57        .byte $57   ; 
- D 3 - - - 0x01FE4D 07:FE3D: D9        .byte $D9   ; 
- D 3 - - - 0x01FE4E 07:FE3E: FC        .byte $FC   ; 
- D 3 - - - 0x01FE4F 07:FE3F: FC        .byte $FC   ; 
- D 3 - - - 0x01FE50 07:FE40: 68        .byte $68   ; 
- D 3 - - - 0x01FE51 07:FE41: 8A        .byte $8A   ; 
- D 3 - - - 0x01FE52 07:FE42: 40        .byte $40   ; 
- D 3 - - - 0x01FE53 07:FE43: 80        .byte $80   ; 
- D 3 - - - 0x01FE54 07:FE44: 50        .byte $50   ; 
- D 3 - - - 0x01FE55 07:FE45: 7C        .byte $7C   ; 
- D 3 - - - 0x01FE56 07:FE46: CC        .byte $CC   ; 
- D 3 - - - 0x01FE57 07:FE47: A0        .byte $A0   ; 
- D 3 - - - 0x01FE58 07:FE48: 42        .byte $42   ; 
- D 3 - - - 0x01FE59 07:FE49: EF        .byte $EF   ; 
- D 3 - - - 0x01FE5A 07:FE4A: 33        .byte $33   ; 
- D 3 - - - 0x01FE5B 07:FE4B: E8        .byte $E8   ; 
- D 3 - - - 0x01FE5C 07:FE4C: 97        .byte $97   ; 
- D 3 - - - 0x01FE5D 07:FE4D: D0        .byte $D0   ; 
- D 3 - - - 0x01FE5E 07:FE4E: 81        .byte $81   ; 
- D 3 - - - 0x01FE5F 07:FE4F: 65        .byte $65   ; 
- D 3 - - - 0x01FE60 07:FE50: 05        .byte $05   ; 
- D 3 - - - 0x01FE61 07:FE51: 4E        .byte $4E   ; 
- D 3 - - - 0x01FE62 07:FE52: 49        .byte $49   ; 
- D 3 - - - 0x01FE63 07:FE53: 5B        .byte $5B   ; 
- D 3 - - - 0x01FE64 07:FE54: 08        .byte $08   ; 
- D 3 - - - 0x01FE65 07:FE55: FE        .byte $FE   ; 
- D 3 - - - 0x01FE66 07:FE56: F4        .byte $F4   ; 
- D 3 - - - 0x01FE67 07:FE57: 63        .byte $63   ; 
- D 3 - - - 0x01FE68 07:FE58: 40        .byte $40   ; 
- D 3 - - - 0x01FE69 07:FE59: E0        .byte $E0   ; 
- D 3 - - - 0x01FE6A 07:FE5A: C8        .byte $C8   ; 
- D 3 - - - 0x01FE6B 07:FE5B: 8A        .byte $8A   ; 
- D 3 - - - 0x01FE6C 07:FE5C: 5F        .byte $5F   ; 
- D 3 - - - 0x01FE6D 07:FE5D: AA        .byte $AA   ; 
- D 3 - - - 0x01FE6E 07:FE5E: AD        .byte $AD   ; 
- D 3 - - - 0x01FE6F 07:FE5F: 58        .byte $58   ; 
- D 3 - - - 0x01FE70 07:FE60: 06        .byte $06   ; 
- D 3 - - - 0x01FE71 07:FE61: 2B        .byte $2B   ; 
- D 3 - - - 0x01FE72 07:FE62: 12        .byte $12   ; 
- D 3 - - - 0x01FE73 07:FE63: 82        .byte $82   ; 
- D 3 - - - 0x01FE74 07:FE64: 72        .byte $72   ; 
- D 3 - - - 0x01FE75 07:FE65: 29        .byte $29   ; 
- D 3 - - - 0x01FE76 07:FE66: 87        .byte $87   ; 
- D 3 - - - 0x01FE77 07:FE67: 3C        .byte $3C   ; 
- D 3 - - - 0x01FE78 07:FE68: C1        .byte $C1   ; 
- D 3 - - - 0x01FE79 07:FE69: C9        .byte $C9   ; 
- D 3 - - - 0x01FE7A 07:FE6A: 25        .byte $25   ; 
- D 3 - - - 0x01FE7B 07:FE6B: 01        .byte $01   ; 
- D 3 - - - 0x01FE7C 07:FE6C: 36        .byte $36   ; 
- D 3 - - - 0x01FE7D 07:FE6D: B8        .byte $B8   ; 
- D 3 - - - 0x01FE7E 07:FE6E: 09        .byte $09   ; 
- D 3 - - - 0x01FE7F 07:FE6F: 29        .byte $29   ; 
- D 3 - - - 0x01FE80 07:FE70: C0        .byte $C0   ; 
- D 3 - - - 0x01FE81 07:FE71: 6D        .byte $6D   ; 
- D 3 - - - 0x01FE82 07:FE72: A1        .byte $A1   ; 
- D 3 - - - 0x01FE83 07:FE73: E0        .byte $E0   ; 
- D 3 - - - 0x01FE84 07:FE74: 9E        .byte $9E   ; 
- D 3 - - - 0x01FE85 07:FE75: A0        .byte $A0   ; 
- D 3 - - - 0x01FE86 07:FE76: E9        .byte $E9   ; 
- D 3 - - - 0x01FE87 07:FE77: 9C        .byte $9C   ; 
- D 3 - - - 0x01FE88 07:FE78: 00        .byte $00   ; 
- D 3 - - - 0x01FE89 07:FE79: B0        .byte $B0   ; 
- D 3 - - - 0x01FE8A 07:FE7A: F0        .byte $F0   ; 
- D 3 - - - 0x01FE8B 07:FE7B: 09        .byte $09   ; 
- D 3 - - - 0x01FE8C 07:FE7C: 0D        .byte $0D   ; 
- D 3 - - - 0x01FE8D 07:FE7D: 4F        .byte $4F   ; 
- D 3 - - - 0x01FE8E 07:FE7E: 43        .byte $43   ; 
- D 3 - - - 0x01FE8F 07:FE7F: 80        .byte $80   ; 
- D 3 - - - 0x01FE90 07:FE80: 03        .byte $03   ; 
- D 3 - - - 0x01FE91 07:FE81: 40        .byte $40   ; 
- D 3 - - - 0x01FE92 07:FE82: EA        .byte $EA   ; 
- D 3 - - - 0x01FE93 07:FE83: F8        .byte $F8   ; 
- D 3 - - - 0x01FE94 07:FE84: 9F        .byte $9F   ; 
- D 3 - - - 0x01FE95 07:FE85: 57        .byte $57   ; 
- D 3 - - - 0x01FE96 07:FE86: 7C        .byte $7C   ; 
- D 3 - - - 0x01FE97 07:FE87: 48        .byte $48   ; 
- D 3 - - - 0x01FE98 07:FE88: D8        .byte $D8   ; 
- D 3 - - - 0x01FE99 07:FE89: C8        .byte $C8   ; 
- D 3 - - - 0x01FE9A 07:FE8A: C7        .byte $C7   ; 
- D 3 - - - 0x01FE9B 07:FE8B: 91        .byte $91   ; 
- D 3 - - - 0x01FE9C 07:FE8C: 91        .byte $91   ; 
- D 3 - - - 0x01FE9D 07:FE8D: 00        .byte $00   ; 
- D 3 - - - 0x01FE9E 07:FE8E: 38        .byte $38   ; 
- D 3 - - - 0x01FE9F 07:FE8F: 00        .byte $00   ; 
- D 3 - - - 0x01FEA0 07:FE90: 01        .byte $01   ; 
- D 3 - - - 0x01FEA1 07:FE91: 1C        .byte $1C   ; 
; !!!
- D 3 - I - 0x01FEA2 07:FE92: 00        .byte $00   ; 
- D 3 - I - 0x01FEA3 07:FE93: 00        .byte $00   ; 
- D 3 - - - 0x01FEA4 07:FE94: 68        .byte $68   ; 
- D 3 - I - 0x01FEA5 07:FE95: E2        .byte $E2   ; 
- D 3 - I - 0x01FEA6 07:FE96: 0A        .byte $0A   ; 
- D 3 - - - 0x01FEA7 07:FE97: 09        .byte $09   ; 
- D 3 - - - 0x01FEA8 07:FE98: 27        .byte $27   ; 
- D 3 - - - 0x01FEA9 07:FE99: FE        .byte $FE   ; 
- D 3 - - - 0x01FEAA 07:FE9A: 60        .byte $60   ; 
- D 3 - - - 0x01FEAB 07:FE9B: B0        .byte $B0   ; 
- D 3 - - - 0x01FEAC 07:FE9C: C4        .byte $C4   ; 
- D 3 - - - 0x01FEAD 07:FE9D: 10        .byte $10   ; 
- D 3 - - - 0x01FEAE 07:FE9E: 90        .byte $90   ; 
- D 3 - - - 0x01FEAF 07:FE9F: 90        .byte $90   ; 
- D 3 - - - 0x01FEB0 07:FEA0: 00        .byte $00   ; 
- D 3 - - - 0x01FEB1 07:FEA1: 00        .byte $00   ; 
- D 3 - - - 0x01FEB2 07:FEA2: 00        .byte $00   ; 
- D 3 - - - 0x01FEB3 07:FEA3: 00        .byte $00   ; 
- D 3 - - - 0x01FEB4 07:FEA4: 00        .byte $00   ; 
- D 3 - - - 0x01FEB5 07:FEA5: 00        .byte $00   ; 
- D 3 - - - 0x01FEB6 07:FEA6: 7C        .byte $7C   ; 
- D 3 - - - 0x01FEB7 07:FEA7: 23        .byte $23   ; 
- D 3 - - - 0x01FEB8 07:FEA8: 4C        .byte $4C   ; 
- D 3 - - - 0x01FEB9 07:FEA9: 40        .byte $40   ; 
- D 3 - - - 0x01FEBA 07:FEAA: 39        .byte $39   ; 
- D 3 - - - 0x01FEBB 07:FEAB: 23        .byte $23   ; 
- D 3 - - - 0x01FEBC 07:FEAC: 4C        .byte $4C   ; 
- D 3 - - - 0x01FEBD 07:FEAD: 00        .byte $00   ; 
- D 3 - - - 0x01FEBE 07:FEAE: 21        .byte $21   ; 
- D 3 - - - 0x01FEBF 07:FEAF: 00        .byte $00   ; 
- D 3 - - - 0x01FEC0 07:FEB0: 18        .byte $18   ; 
- D 3 - - - 0x01FEC1 07:FEB1: 00        .byte $00   ; 
- D 3 - - - 0x01FEC2 07:FEB2: D8        .byte $D8   ; 
- D 3 - - - 0x01FEC3 07:FEB3: 00        .byte $00   ; 
- D 3 - - - 0x01FEC4 07:FEB4: 03        .byte $03   ; 
- D 3 - - - 0x01FEC5 07:FEB5: 00        .byte $00   ; 
- D 3 - - - 0x01FEC6 07:FEB6: 00        .byte $00   ; 
- D 3 - - - 0x01FEC7 07:FEB7: 00        .byte $00   ; 
- D 3 - - - 0x01FEC8 07:FEB8: 40        .byte $40   ; 
- D 3 - - - 0x01FEC9 07:FEB9: 00        .byte $00   ; 
- D 3 - - - 0x01FECA 07:FEBA: 08        .byte $08   ; 
- D 3 - - - 0x01FECB 07:FEBB: 00        .byte $00   ; 
- D 3 - - - 0x01FECC 07:FEBC: 00        .byte $00   ; 
- D 3 - - - 0x01FECD 07:FEBD: 00        .byte $00   ; 
- D 3 - - - 0x01FECE 07:FEBE: 00        .byte $00   ; 
- D 3 - - - 0x01FECF 07:FEBF: 00        .byte $00   ; 
- D 3 - - - 0x01FED0 07:FEC0: 0E        .byte $0E   ; 
- D 3 - - - 0x01FED1 07:FEC1: 03        .byte $03   ; 
- D 3 - - - 0x01FED2 07:FEC2: 80        .byte $80   ; 
- D 3 - - - 0x01FED3 07:FEC3: BC        .byte $BC   ; 
- D 3 - - - 0x01FED4 07:FEC4: 80        .byte $80   ; 
- D 3 - - - 0x01FED5 07:FEC5: 00        .byte $00   ; 
- D 3 - - - 0x01FED6 07:FEC6: 00        .byte $00   ; 
- D 3 - - - 0x01FED7 07:FEC7: 00        .byte $00   ; 
- D 3 - - - 0x01FED8 07:FEC8: F3        .byte $F3   ; 
- D 3 - - - 0x01FED9 07:FEC9: 00        .byte $00   ; 
- D 3 - - - 0x01FEDA 07:FECA: FF        .byte $FF   ; 
- D 3 - - - 0x01FEDB 07:FECB: 00        .byte $00   ; 
- D 3 - - - 0x01FEDC 07:FECC: 33        .byte $33   ; 
- D 3 - - - 0x01FEDD 07:FECD: 00        .byte $00   ; 
- D 3 - - - 0x01FEDE 07:FECE: F3        .byte $F3   ; 
- D 3 - - - 0x01FEDF 07:FECF: 00        .byte $00   ; 
- D 3 - - - 0x01FEE0 07:FED0: C8        .byte $C8   ; 
- D 3 - - - 0x01FEE1 07:FED1: 00        .byte $00   ; 
- D 3 - - - 0x01FEE2 07:FED2: 40        .byte $40   ; 
- D 3 - - - 0x01FEE3 07:FED3: 00        .byte $00   ; 
- D 3 - - - 0x01FEE4 07:FED4: 60        .byte $60   ; 
- - - - - - 0x01FEE5 07:FED5: 00        .byte $00   ; 
- - - - - - 0x01FEE6 07:FED6: 00        .byte $00   ; 
- - - - - - 0x01FEE7 07:FED7: 00        .byte $00   ; 
- - - - - - 0x01FEE8 07:FED8: 00        .byte $00   ; 
- - - - - - 0x01FEE9 07:FED9: FF        .byte $FF   ; 
- - - - - - 0x01FEEA 07:FEDA: A8        .byte $A8   ; 
- - - - - - 0x01FEEB 07:FEDB: 9F        .byte $9F   ; 
- - - - - - 0x01FEEC 07:FEDC: 05        .byte $05   ; 
- - - - - - 0x01FEED 07:FEDD: 9F        .byte $9F   ; 
- - - - - - 0x01FEEE 07:FEDE: FF        .byte $FF   ; 
- - - - - - 0x01FEEF 07:FEDF: 00        .byte $00   ; 
- - - - - - 0x01FEF0 07:FEE0: 00        .byte $00   ; 
- - - - - - 0x01FEF1 07:FEE1: 00        .byte $00   ; 
- - - - - - 0x01FEF2 07:FEE2: 08        .byte $08   ; 
- - - - - - 0x01FEF3 07:FEE3: ED        .byte $ED   ; 
- - - - - - 0x01FEF4 07:FEE4: 31        .byte $31   ; 
- - - - - - 0x01FEF5 07:FEE5: ED        .byte $ED   ; 
- - - - - - 0x01FEF6 07:FEE6: 00        .byte $00   ; 
- - - - - - 0x01FEF7 07:FEE7: 00        .byte $00   ; 
- - - - - - 0x01FEF8 07:FEE8: 54        .byte $54   ; 
- - - - - - 0x01FEF9 07:FEE9: 04        .byte $04   ; 
- - - - - - 0x01FEFA 07:FEEA: E0        .byte $E0   ; 
- - - - - - 0x01FEFB 07:FEEB: 00        .byte $00   ; 
- - - - - - 0x01FEFC 07:FEEC: 08        .byte $08   ; 
- - - - - - 0x01FEFD 07:FEED: 7F        .byte $7F   ; 
- - - - - - 0x01FEFE 07:FEEE: 9D        .byte $9D   ; 
- - - - - - 0x01FEFF 07:FEEF: 00        .byte $00   ; 
- - - - - - 0x01FF00 07:FEF0: 01        .byte $01   ; 
- - - - - - 0x01FF01 07:FEF1: 00        .byte $00   ; 
- - - - - - 0x01FF02 07:FEF2: E2        .byte $E2   ; 
- - - - - - 0x01FF03 07:FEF3: 00        .byte $00   ; 
- - - - - - 0x01FF04 07:FEF4: 00        .byte $00   ; 
- - - - - - 0x01FF05 07:FEF5: FF        .byte $FF   ; 
- - - - - - 0x01FF06 07:FEF6: A8        .byte $A8   ; 
- - - - - - 0x01FF07 07:FEF7: 9F        .byte $9F   ; 
- - - - - - 0x01FF08 07:FEF8: 7F        .byte $7F   ; 
- - - - - - 0x01FF09 07:FEF9: 39        .byte $39   ; 
- - - - - - 0x01FF0A 07:FEFA: 90        .byte $90   ; 
- - - - - - 0x01FF0B 07:FEFB: 28        .byte $28   ; 
- - - - - - 0x01FF0C 07:FEFC: 00        .byte $00   ; 
- - - - - - 0x01FF0D 07:FEFD: 28        .byte $28   ; 
- - - - - - 0x01FF0E 07:FEFE: 33        .byte $33   ; 
- - - - - - 0x01FF0F 07:FEFF: 00        .byte $00   ; 



tbl_FF00:
; !!!
- D 3 - I - 0x01FF10 07:FF00: 26        .byte $26   ; 
- D 3 - I - 0x01FF11 07:FF01: 2D        .byte $2D   ; 
- D 3 - - - 0x01FF12 07:FF02: D7        .byte $D7   ; 
- D 3 - I - 0x01FF13 07:FF03: 80        .byte $80   ; 
- D 3 - I - 0x01FF14 07:FF04: 5C        .byte $5C   ; 
- D 3 - - - 0x01FF15 07:FF05: DE        .byte $DE   ; 
- D 3 - - - 0x01FF16 07:FF06: 7F        .byte $7F   ; 
- D 3 - - - 0x01FF17 07:FF07: A3        .byte $A3   ; 
- D 3 - - - 0x01FF18 07:FF08: 11        .byte $11   ; 
- D 3 - - - 0x01FF19 07:FF09: 64        .byte $64   ; 
- D 3 - - - 0x01FF1A 07:FF0A: DF        .byte $DF   ; 
- D 3 - - - 0x01FF1B 07:FF0B: 6D        .byte $6D   ; 
- D 3 - - - 0x01FF1C 07:FF0C: A6        .byte $A6   ; 
- D 3 - - - 0x01FF1D 07:FF0D: 00        .byte $00   ; 
- - - - - - 0x01FF1E 07:FF0E: 00        .byte $00   ; 
- - - - - - 0x01FF1F 07:FF0F: 00        .byte $00   ; 



sub_FF10:
C - - - - - 0x01FF20 07:FF10: 85 10     STA ram_0010
bra_FF12:
C - - - - - 0x01FF22 07:FF12: A5 10     LDA ram_0010
C - - - - - 0x01FF24 07:FF14: D0 FC     BNE bra_FF12
C - - - - - 0x01FF26 07:FF16: 60        RTS



sub_FF17:
C - - - - - 0x01FF27 07:FF17: 85 11     STA ram_0011
C - - - - - 0x01FF29 07:FF19: A9 00     LDA #$00
C - - - - - 0x01FF2B 07:FF1B: 85 10     STA ram_0010
bra_FF1D:
C - - - - - 0x01FF2D 07:FF1D: A5 B4     LDA ram_00B4
C - - - - - 0x01FF2F 07:FF1F: C9 07     CMP #$07
C - - - - - 0x01FF31 07:FF21: F0 10     BEQ bra_FF33
C - - - - - 0x01FF33 07:FF23: A5 10     LDA ram_0010
C - - - - - 0x01FF35 07:FF25: D0 F6     BNE bra_FF1D
C - - - - - 0x01FF37 07:FF27: A5 11     LDA ram_0011
C - - - - - 0x01FF39 07:FF29: F0 0A     BEQ bra_FF35_RTS
C - - - - - 0x01FF3B 07:FF2B: C6 11     DEC ram_0011
C - - - - - 0x01FF3D 07:FF2D: A9 3C     LDA #$3C
C - - - - - 0x01FF3F 07:FF2F: 85 10     STA ram_0010
C - - - - - 0x01FF41 07:FF31: D0 EA     BNE bra_FF1D
bra_FF33:
C - - - - - 0x01FF43 07:FF33: A9 01     LDA #$01
bra_FF35_RTS:
C - - - - - 0x01FF45 07:FF35: 60        RTS


; bzk garbage
- - - - - - 0x01FF46 07:FF36: 85 11     STA ram_0011
- - - - - - 0x01FF48 07:FF38: A9 00     LDA #$00
- - - - - - 0x01FF4A 07:FF3A: 85 10     STA ram_0010



bra_FF3C:
- - - - - - 0x01FF4C 07:FF3C: A5 14     LDA ram_0014
- - - - - - 0x01FF4E 07:FF3E: D0 10     BNE bra_FF50
- - - - - - 0x01FF50 07:FF40: A5 10     LDA ram_0010
- - - - - - 0x01FF52 07:FF42: D0 F8     BNE bra_FF3C
- - - - - - 0x01FF54 07:FF44: A5 11     LDA ram_0011
- - - - - - 0x01FF56 07:FF46: F0 0A     BEQ bra_FF52_RTS
- - - - - - 0x01FF58 07:FF48: C6 11     DEC ram_0011
- - - - - - 0x01FF5A 07:FF4A: A9 3C     LDA #$3C
- - - - - - 0x01FF5C 07:FF4C: 85 10     STA ram_0010
- - - - - - 0x01FF5E 07:FF4E: D0 EC     BNE bra_FF3C
; !!!
bra_FF50:
- D 3 - I - 0x01FF60 07:FF50: A9 01     LDA #$01
bra_FF52_RTS:
- - - - - - 0x01FF62 07:FF52: 60        RTS



sub_FF53:
C - - - - - 0x01FF63 07:FF53: 98        TYA
C - - - - - 0x01FF64 07:FF54: 48        PHA
C - - - - - 0x01FF65 07:FF55: 8A        TXA
C - - - - - 0x01FF66 07:FF56: 48        PHA
C - - - - - 0x01FF67 07:FF57: A0 00     LDY #$00
C - - - - - 0x01FF69 07:FF59: A2 00     LDX #$00
bra_FF5B_loop:
C - - - - - 0x01FF6B 07:FF5B: A9 30     LDA #$30
C - - - - - 0x01FF6D 07:FF5D: 95 A7     STA ram_00A7,X
loc_FF5F:
C D 3 - - - 0x01FF6F 07:FF5F: A5 A5     LDA ram_00A5
C - - - - - 0x01FF71 07:FF61: 38        SEC
C - - - - - 0x01FF72 07:FF62: F9 8B FF  SBC tbl_FF8B,Y
C - - - - - 0x01FF75 07:FF65: 48        PHA
C - - - - - 0x01FF76 07:FF66: A5 A6     LDA ram_00A6
C - - - - - 0x01FF78 07:FF68: F9 8C FF  SBC tbl_FF8C,Y
C - - - - - 0x01FF7B 07:FF6B: 90 0A     BCC bra_FF77
C - - - - - 0x01FF7D 07:FF6D: 85 A6     STA ram_00A6
C - - - - - 0x01FF7F 07:FF6F: 68        PLA
C - - - - - 0x01FF80 07:FF70: 85 A5     STA ram_00A5
C - - - - - 0x01FF82 07:FF72: F6 A7     INC ram_00A7,X
C - - - - - 0x01FF84 07:FF74: 4C 5F FF  JMP loc_FF5F
bra_FF77:
C - - - - - 0x01FF87 07:FF77: 68        PLA
C - - - - - 0x01FF88 07:FF78: C8        INY
C - - - - - 0x01FF89 07:FF79: C8        INY
C - - - - - 0x01FF8A 07:FF7A: E8        INX
C - - - - - 0x01FF8B 07:FF7B: E0 04     CPX #$04
C - - - - - 0x01FF8D 07:FF7D: D0 DC     BNE bra_FF5B_loop
C - - - - - 0x01FF8F 07:FF7F: A5 A5     LDA ram_00A5
C - - - - - 0x01FF91 07:FF81: 18        CLC
C - - - - - 0x01FF92 07:FF82: 69 30     ADC #$30
C - - - - - 0x01FF94 07:FF84: 95 A7     STA ram_00A7,X
C - - - - - 0x01FF96 07:FF86: 68        PLA
C - - - - - 0x01FF97 07:FF87: AA        TAX
C - - - - - 0x01FF98 07:FF88: 68        PLA
C - - - - - 0x01FF99 07:FF89: A8        TAY
C - - - - - 0x01FF9A 07:FF8A: 60        RTS



tbl_FF8B:
- D 3 - - - 0x01FF9B 07:FF8B: 10        .byte $10   ; 
tbl_FF8C:
- D 3 - - - 0x01FF9C 07:FF8C: 27        .byte $27   ; 
- D 3 - - - 0x01FF9D 07:FF8D: E8        .byte $E8   ; 
- D 3 - - - 0x01FF9E 07:FF8E: 03        .byte $03   ; 
- D 3 - - - 0x01FF9F 07:FF8F: 64        .byte $64   ; 
- D 3 - - - 0x01FFA0 07:FF90: 00        .byte $00   ; 
- D 3 - - - 0x01FFA1 07:FF91: 0A        .byte $0A   ; 
- D 3 - - - 0x01FFA2 07:FF92: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x01FFA3 07:FF93: 00        .byte $00, $01, $02, $03, $04, $05, $06, $07, $08, $09   ; 



sub_FF9D:
C - - - - - 0x01FFAD 07:FF9D: 98        TYA
C - - - - - 0x01FFAE 07:FF9E: 48        PHA
C - - - - - 0x01FFAF 07:FF9F: A9 00     LDA #$00
C - - - - - 0x01FFB1 07:FFA1: 85 B3     STA ram_00B3
C - - - - - 0x01FFB3 07:FFA3: A5 B0     LDA ram_00B0
C - - - - - 0x01FFB5 07:FFA5: 0A        ASL
C - - - - - 0x01FFB6 07:FFA6: 0A        ASL
C - - - - - 0x01FFB7 07:FFA7: 0A        ASL
C - - - - - 0x01FFB8 07:FFA8: 26 B3     ROL ram_00B3
C - - - - - 0x01FFBA 07:FFAA: 0A        ASL
C - - - - - 0x01FFBB 07:FFAB: 26 B3     ROL ram_00B3
C - - - - - 0x01FFBD 07:FFAD: 0A        ASL
C - - - - - 0x01FFBE 07:FFAE: 26 B3     ROL ram_00B3
C - - - - - 0x01FFC0 07:FFB0: 18        CLC
C - - - - - 0x01FFC1 07:FFB1: 65 B1     ADC ram_00B1
C - - - - - 0x01FFC3 07:FFB3: 48        PHA
C - - - - - 0x01FFC4 07:FFB4: A5 B3     LDA ram_00B3
C - - - - - 0x01FFC6 07:FFB6: 09 20     ORA #$20
C - - - - - 0x01FFC8 07:FFB8: 8D 06 20  STA $2006
C - - - - - 0x01FFCB 07:FFBB: 68        PLA
C - - - - - 0x01FFCC 07:FFBC: 8D 06 20  STA $2006
C - - - - - 0x01FFCF 07:FFBF: A0 00     LDY #$00
C - - - - - 0x01FFD1 07:FFC1: A5 AE     LDA ram_00AE
C - - - - - 0x01FFD3 07:FFC3: D0 04     BNE bra_FFC9
C - - - - - 0x01FFD5 07:FFC5: A5 AF     LDA ram_00AF
C - - - - - 0x01FFD7 07:FFC7: F0 0F     BEQ bra_FFD8
bra_FFC9:
C - - - - - 0x01FFD9 07:FFC9: B1 AE     LDA (ram_00AE),Y
C - - - - - 0x01FFDB 07:FFCB: 18        CLC
C - - - - - 0x01FFDC 07:FFCC: 69 80     ADC #$80
C - - - - - 0x01FFDE 07:FFCE: 8D 07 20  STA $2007
C - - - - - 0x01FFE1 07:FFD1: C8        INY
C - - - - - 0x01FFE2 07:FFD2: C4 B2     CPY ram_00B2
C - - - - - 0x01FFE4 07:FFD4: D0 F3     BNE bra_FFC9
C - - - - - 0x01FFE6 07:FFD6: F0 0A     BEQ bra_FFE2
bra_FFD8:
C - - - - - 0x01FFE8 07:FFD8: A9 00     LDA #$00
bra_FFDA:
C - - - - - 0x01FFEA 07:FFDA: 8D 07 20  STA $2007
C - - - - - 0x01FFED 07:FFDD: C8        INY
C - - - - - 0x01FFEE 07:FFDE: C4 B2     CPY ram_00B2
C - - - - - 0x01FFF0 07:FFE0: D0 F8     BNE bra_FFDA
bra_FFE2:
C - - - - - 0x01FFF2 07:FFE2: 68        PLA
C - - - - - 0x01FFF3 07:FFE3: A8        TAY
C - - - - - 0x01FFF4 07:FFE4: 60        RTS



sub_FFE5_garbage_loop_for_IRQ:
bra_FFE5_loop:
C - - - - - 0x01FFF5 07:FFE5: 20 EC FF  JSR sub_FFEC
C - - - - - 0x01FFF8 07:FFE8: CA        DEX
C - - - - - 0x01FFF9 07:FFE9: D0 FA     BNE bra_FFE5_loop
C - - - - - 0x01FFFB 07:FFEB: 60        RTS

sub_FFEC:
C - - - - - 0x01FFFC 07:FFEC: 8A        TXA
C - - - - - 0x01FFFD 07:FFED: 48        PHA
C - - - - - 0x01FFFE 07:FFEE: A2 00     LDX #$00
bra_FFF0_loop:
C - - - - - 0x020000 07:FFF0: E8        INX
C - - - - - 0x020001 07:FFF1: E0 0B     CPX #$0B
C - - - - - 0x020003 07:FFF3: D0 FB     BNE bra_FFF0_loop
C - - - - - 0x020005 07:FFF5: EA        NOP
C - - - - - 0x020006 07:FFF6: 68        PLA
C - - - - - 0x020007 07:FFF7: AA        TAX
C - - - - - 0x020008 07:FFF8: 60        RTS


; bzk garbage
- - - - - - 0x020009 07:FFF9: 8C        .byte $8C   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x02000A 07:FFFA: 9C D6     .word vec_D69C_NMI_handler
- D 3 - - - 0x02000C 07:FFFC: 04 C7     .word vec_C704_RESET_handler
- D 3 - - - 0x02000E 07:FFFE: 6B C6     .word vec_C66B_IRQ_handler



