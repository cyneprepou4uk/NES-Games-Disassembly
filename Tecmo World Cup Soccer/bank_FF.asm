.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x00C010-0x01000F

vec_C000_NMI:
C - - - - - 0x00C010 03:C000: 4C 4A C1  JMP loc_C14A

loc_C003:
C D 2 - - - 0x00C013 03:C003: 4C 81 C0  JMP loc_C081

.export sub_0x00C016_prepare_return_address
sub_0x00C016_prepare_return_address:
C - - - - - 0x00C016 03:C006: 4C E1 C5  JMP loc_C5E1_prepare_return_address

.export sub_0x00C019_delay
sub_0x00C019_delay:
C - - - - - 0x00C019 03:C009: 4C 09 C6  JMP loc_C609_delay

.export loc_0x00C01C
loc_0x00C01C:
C D 2 - - - 0x00C01C 03:C00C: 4C F1 C5  JMP loc_C5F1


; bzk garbage
- - - - - - 0x00C01F 03:C00F: 4C FC C5  JMP loc_C5FC
- - - - - - 0x00C022 03:C012: 4C 9E C7  JMP loc_C79E
- - - - - - 0x00C025 03:C015: 4C B9 C6  JMP loc_C6B9



.export sub_0x00C028
sub_0x00C028:
C - - - - - 0x00C028 03:C018: 4C D4 CA  JMP loc_CAD4


; bzk garbage
- - - - - - 0x00C02B 03:C01B: 4C 20 CC  JMP loc_CC20


; bzk garbage
loc_C01E:
- - - - - - 0x00C02E 03:C01E: 4C 1E C0  JMP loc_C01E
- - - - - - 0x00C031 03:C021: 4C A4 CB  JMP loc_CBA4
- - - - - - 0x00C034 03:C024: 4C F6 C6  JMP loc_C6F6
- - - - - - 0x00C037 03:C027: 4C 1D C7  JMP loc_C71D



.export sub_0x00C03A_bytes_after_JSR
sub_0x00C03A_bytes_after_JSR:
C - - - - - 0x00C03A 03:C02A: 4C BD CA  JMP loc_CABD_bytes_after_JSR


; bzk garbage
- - - - - - 0x00C03D 03:C02D: 4C 2B C9  JMP loc_C92B
- - - - - - 0x00C040 03:C030: 4C 75 CB  JMP loc_CB75



.export sub_0x00C043
sub_0x00C043:
C - - - - - 0x00C043 03:C033: 4C 52 C7  JMP loc_C752

.export sub_0x00C046
sub_0x00C046:
C - - - - - 0x00C046 03:C036: 4C 4A CB  JMP loc_CB4A

.export sub_0x00C049
sub_0x00C049:
C - - - - - 0x00C049 03:C039: 4C 50 CB  JMP loc_CB50


; bzk garbage
- - - - - - 0x00C04C 03:C03C: 4C 5B C9  JMP loc_C95B
- - - - - - 0x00C04F 03:C03F: 4C DA C9  JMP loc_C9DA



.export sub_0x00C052
sub_0x00C052:
C - - - - - 0x00C052 03:C042: 4C 1E C9  JMP loc_C91E


; bzk garbage
- - - - - - 0x00C055 03:C045: 4C 58 CB  JMP loc_CB58_prg_bankswitch



.export sub_0x00C058
sub_0x00C058:
C - - - - - 0x00C058 03:C048: 4C 9D C8  JMP loc_C89D


; bzk garbage
- - - - - - 0x00C05B 03:C04B: 4C 43 C8  JMP loc_C843
- - - - - - 0x00C05E 03:C04E: 4C 7E C6  JMP loc_C67E



.export sub_0x00C061
sub_0x00C061:
C - - - - - 0x00C061 03:C051: 4C AF CA  JMP loc_CAAF


; bzk garbage
- - - - - - 0x00C064 03:C054: 4C 23 CC  JMP loc_CC23



.export sub_0x00C067
sub_0x00C067:
C - - - - - 0x00C067 03:C057: 4C E3 CB  JMP loc_CBE3

.export sub_0x00C06A
sub_0x00C06A:
C - - - - - 0x00C06A 03:C05A: 4C 2F C6  JMP loc_C62F


; bzk garbage
- - - - - - 0x00C06D 03:C05D: 4C 52 C6  JMP loc_C652
- - - - - - 0x00C070 03:C060: 4C 61 C6  JMP loc_C661
- - - - - - 0x00C073 03:C063: 4C 66 C6  JMP loc_C666
- - - - - - 0x00C076 03:C066: 4C 37 C9  JMP loc_C937
- - - - - - 0x00C079 03:C069: 4C 6D C6  JMP loc_C66D
- - - - - - 0x00C07C 03:C06C: 4C 77 C6  JMP loc_C677
- - - - - - 0x00C07F 03:C06F: 4C 40 C9  JMP loc_C940
- - - - - - 0x00C082 03:C072: 4C E1 C6  JMP loc_C6E1



.export sub_0x00C085
sub_0x00C085:
C - - - - - 0x00C085 03:C075: 4C 59 CA  JMP loc_CA59

.export sub_0x00C088
sub_0x00C088:
C - - - - - 0x00C088 03:C078: 4C 18 CB  JMP loc_CB18

.export sub_0x00C08B
sub_0x00C08B:
C - - - - - 0x00C08B 03:C07B: 4C A5 F9  JMP loc_F9A5

.export sub_0x00C08E_prepare_sound
sub_0x00C08E_prepare_sound:
C - - - - - 0x00C08E 03:C07E: 4C 10 C9  JMP loc_C910_prepare_sound



loc_C081:
C D 2 - - - 0x00C091 03:C081: A9 08     LDA #$08
C - - - - - 0x00C093 03:C083: 8D 00 20  STA $2000
C - - - - - 0x00C096 03:C086: 78        SEI
C - - - - - 0x00C097 03:C087: D8        CLD
C - - - - - 0x00C098 03:C088: A2 FF     LDX #$FF
C - - - - - 0x00C09A 03:C08A: 9A        TXS
bra_C08B:
C - - - - - 0x00C09B 03:C08B: AD 02 20  LDA $2002
C - - - - - 0x00C09E 03:C08E: 10 FB     BPL bra_C08B
bra_C090:
C - - - - - 0x00C0A0 03:C090: AD 02 20  LDA $2002
C - - - - - 0x00C0A3 03:C093: 10 FB     BPL bra_C090
C - - - - - 0x00C0A5 03:C095: A9 00     LDA #$00
C - - - - - 0x00C0A7 03:C097: 85 00     STA ram_0000
C - - - - - 0x00C0A9 03:C099: 85 01     STA ram_0001
C - - - - - 0x00C0AB 03:C09B: A8        TAY
C - - - - - 0x00C0AC 03:C09C: A2 08     LDX #$08
bra_C09E:
C - - - - - 0x00C0AE 03:C09E: 91 00     STA (ram_0000),Y
C - - - - - 0x00C0B0 03:C0A0: C8        INY
C - - - - - 0x00C0B1 03:C0A1: D0 FB     BNE bra_C09E
C - - - - - 0x00C0B3 03:C0A3: E6 01     INC ram_0001
C - - - - - 0x00C0B5 03:C0A5: CA        DEX
C - - - - - 0x00C0B6 03:C0A6: D0 F6     BNE bra_C09E
C - - - - - 0x00C0B8 03:C0A8: A9 28     LDA #$28
C - - - - - 0x00C0BA 03:C0AA: 85 28     STA ram_0028
C - - - - - 0x00C0BC 03:C0AC: A9 06     LDA #$06
C - - - - - 0x00C0BE 03:C0AE: 85 29     STA ram_0029
C - - - - - 0x00C0C0 03:C0B0: 8D 01 20  STA $2001
C - - - - - 0x00C0C3 03:C0B3: A9 00     LDA #$00
C - - - - - 0x00C0C5 03:C0B5: 8D 00 A0  STA $A000
C - - - - - 0x00C0C8 03:C0B8: 8D 00 E0  STA $E000
C - - - - - 0x00C0CB 03:C0BB: 8D 10 40  STA $4010
C - - - - - 0x00C0CE 03:C0BE: A9 40     LDA #$40
C - - - - - 0x00C0D0 03:C0C0: 8D 17 40  STA $4017
C - - - - - 0x00C0D3 03:C0C3: AD 02 20  LDA $2002
C - - - - - 0x00C0D6 03:C0C6: A9 10     LDA #$10
C - - - - - 0x00C0D8 03:C0C8: AA        TAX
bra_C0C9:
C - - - - - 0x00C0D9 03:C0C9: 8D 06 20  STA $2006
C - - - - - 0x00C0DC 03:C0CC: 8D 06 20  STA $2006
C - - - - - 0x00C0DF 03:C0CF: 49 00     EOR #$00
C - - - - - 0x00C0E1 03:C0D1: CA        DEX
C - - - - - 0x00C0E2 03:C0D2: D0 F5     BNE bra_C0C9
C - - - - - 0x00C0E4 03:C0D4: 20 59 CA  JSR sub_CA59
C - - - - - 0x00C0E7 03:C0D7: 20 AF CA  JSR sub_CAAF
C - - - - - 0x00C0EA 03:C0DA: A2 E0     LDX #$E0
C - - - - - 0x00C0EC 03:C0DC: 9A        TXS
C - - - - - 0x00C0ED 03:C0DD: A9 00     LDA #$00
C - - - - - 0x00C0EF 03:C0DF: 85 01     STA ram_0001
C - - - - - 0x00C0F1 03:C0E1: 85 02     STA ram_0002
C - - - - - 0x00C0F3 03:C0E3: A9 00     LDA #$00
C - - - - - 0x00C0F5 03:C0E5: 85 05     STA ram_0005
C - - - - - 0x00C0F7 03:C0E7: 85 06     STA ram_0006
C - - - - - 0x00C0F9 03:C0E9: A9 00     LDA #$00
C - - - - - 0x00C0FB 03:C0EB: 85 09     STA ram_0009
C - - - - - 0x00C0FD 03:C0ED: 85 0A     STA ram_000A
C - - - - - 0x00C0FF 03:C0EF: A9 00     LDA #$00
C - - - - - 0x00C101 03:C0F1: 85 0D     STA ram_000D
C - - - - - 0x00C103 03:C0F3: 85 0E     STA ram_000E
C - - - - - 0x00C105 03:C0F5: A9 00     LDA #$00
C - - - - - 0x00C107 03:C0F7: 85 11     STA ram_0011
C - - - - - 0x00C109 03:C0F9: 85 12     STA ram_0012
C - - - - - 0x00C10B 03:C0FB: A9 00     LDA #$00
C - - - - - 0x00C10D 03:C0FD: 85 15     STA ram_0015
C - - - - - 0x00C10F 03:C0FF: 85 16     STA ram_0016
C - - - - - 0x00C111 03:C101: A9 28     LDA #$28
C - - - - - 0x00C113 03:C103: 85 28     STA ram_0028
C - - - - - 0x00C115 03:C105: A9 1E     LDA #$1E
C - - - - - 0x00C117 03:C107: 85 29     STA ram_0029
C - - - - - 0x00C119 03:C109: A9 20     LDA #$20
C - - - - - 0x00C11B 03:C10B: 8D 80 03  STA ram_0380
C - - - - - 0x00C11E 03:C10E: A9 00     LDA #$00
C - - - - - 0x00C120 03:C110: 8D 81 03  STA ram_0381
C - - - - - 0x00C123 03:C113: A9 3F     LDA #$3F
C - - - - - 0x00C125 03:C115: 8D 82 03  STA ram_0382
C - - - - - 0x00C128 03:C118: A2 00     LDX #$00
C - - - - - 0x00C12A 03:C11A: A9 00     LDA #$00
C - - - - - 0x00C12C 03:C11C: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00C12F 03:C11F: A2 10     LDX #$10
C - - - - - 0x00C131 03:C121: A9 01     LDA #$01
C - - - - - 0x00C133 03:C123: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00C136 03:C126: 20 18 CB  JSR sub_CB18
- D 2 - I - 0x00C139 03:C129: 80 03     .word ram_0380
C - - - - - 0x00C13B 03:C12B: A2 01     LDX #$01
C - - - - - 0x00C13D 03:C12D: A9 1E     LDA #$1E
C - - - - - 0x00C13F 03:C12F: 95 01     STA ram_0001,X
C - - - - - 0x00C141 03:C131: A9 0C     LDA #$0C
C - - - - - 0x00C143 03:C133: 95 02     STA ram_0002,X
C - - - - - 0x00C145 03:C135: A9 C2     LDA #> (ofs_C2F2 - $01)
C - - - - - 0x00C147 03:C137: A0 F1     LDY #< (ofs_C2F2 - $01)
C - - - - - 0x00C149 03:C139: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00C14C 03:C13C: A5 28     LDA ram_0028
C - - - - - 0x00C14E 03:C13E: 09 80     ORA #$80
C - - - - - 0x00C150 03:C140: 85 28     STA ram_0028
C - - - - - 0x00C152 03:C142: 85 21     STA ram_0021
C - - - - - 0x00C154 03:C144: 8D 00 20  STA $2000
C - - - - - 0x00C157 03:C147: 4C 5B C5  JMP loc_C55B



loc_C14A:
C D 2 - - - 0x00C15A 03:C14A: 48        PHA
C - - - - - 0x00C15B 03:C14B: 8A        TXA
C - - - - - 0x00C15C 03:C14C: 48        PHA
C - - - - - 0x00C15D 03:C14D: 98        TYA
C - - - - - 0x00C15E 03:C14E: 48        PHA
C - - - - - 0x00C15F 03:C14F: A5 28     LDA ram_0028
C - - - - - 0x00C161 03:C151: 29 7F     AND #$7F
C - - - - - 0x00C163 03:C153: 8D 00 20  STA $2000
C - - - - - 0x00C166 03:C156: 85 28     STA ram_0028
C - - - - - 0x00C168 03:C158: BA        TSX
C - - - - - 0x00C169 03:C159: 8A        TXA
C - - - - - 0x00C16A 03:C15A: A2 FF     LDX #$FF
C - - - - - 0x00C16C 03:C15C: 9A        TXS
C - - - - - 0x00C16D 03:C15D: 48        PHA
C - - - - - 0x00C16E 03:C15E: A9 00     LDA #< ram_oam
C - - - - - 0x00C170 03:C160: 8D 03 20  STA $2003
C - - - - - 0x00C173 03:C163: A9 02     LDA #> ram_oam
C - - - - - 0x00C175 03:C165: 8D 14 40  STA $4014
C - - - - - 0x00C178 03:C168: 20 EB C1  JSR sub_C1EB
C - - - - - 0x00C17B 03:C16B: 2C 02 20  BIT $2002
C - - - - - 0x00C17E 03:C16E: A9 3F     LDA #$3F
C - - - - - 0x00C180 03:C170: 8D 06 20  STA $2006
C - - - - - 0x00C183 03:C173: A9 00     LDA #$00
C - - - - - 0x00C185 03:C175: 8D 06 20  STA $2006
C - - - - - 0x00C188 03:C178: 8D 06 20  STA $2006
C - - - - - 0x00C18B 03:C17B: 8D 06 20  STA $2006
C - - - - - 0x00C18E 03:C17E: A5 28     LDA ram_0028
C - - - - - 0x00C190 03:C180: 8D 00 20  STA $2000
C - - - - - 0x00C193 03:C183: 2C 02 20  BIT $2002
C - - - - - 0x00C196 03:C186: A5 3A     LDA ram_003A
C - - - - - 0x00C198 03:C188: 8D 05 20  STA $2005
C - - - - - 0x00C19B 03:C18B: A5 3B     LDA ram_003B
C - - - - - 0x00C19D 03:C18D: 8D 05 20  STA $2005
C - - - - - 0x00C1A0 03:C190: A5 65     LDA ram_0065
C - - - - - 0x00C1A2 03:C192: 09 06     ORA #$06
C - - - - - 0x00C1A4 03:C194: 8D 00 80  STA $8000
C - - - - - 0x00C1A7 03:C197: A9 00     LDA #$00
C - - - - - 0x00C1A9 03:C199: 8D 01 80  STA $8001
C - - - - - 0x00C1AC 03:C19C: A5 65     LDA ram_0065
C - - - - - 0x00C1AE 03:C19E: 09 07     ORA #$07
C - - - - - 0x00C1B0 03:C1A0: 8D 00 80  STA $8000
C - - - - - 0x00C1B3 03:C1A3: A9 01     LDA #$01
C - - - - - 0x00C1B5 03:C1A5: 8D 01 80  STA $8001
C - - - - - 0x00C1B8 03:C1A8: 20 00 80  JSR sub_0x000010
C - - - - - 0x00C1BB 03:C1AB: 20 58 C2  JSR sub_C258
C - - - - - 0x00C1BE 03:C1AE: 20 A2 C2  JSR sub_C2A2
C - - - - - 0x00C1C1 03:C1B1: A5 23     LDA ram_0023
C - - - - - 0x00C1C3 03:C1B3: 09 80     ORA #$80
C - - - - - 0x00C1C5 03:C1B5: 85 23     STA ram_0023
C - - - - - 0x00C1C7 03:C1B7: A5 65     LDA ram_0065
C - - - - - 0x00C1C9 03:C1B9: 09 07     ORA #$07
C - - - - - 0x00C1CB 03:C1BB: 8D 00 80  STA $8000
C - - - - - 0x00C1CE 03:C1BE: A5 68     LDA ram_0068
C - - - - - 0x00C1D0 03:C1C0: 8D 01 80  STA $8001
C - - - - - 0x00C1D3 03:C1C3: A5 65     LDA ram_0065
C - - - - - 0x00C1D5 03:C1C5: 09 06     ORA #$06
C - - - - - 0x00C1D7 03:C1C7: 8D 00 80  STA $8000
C - - - - - 0x00C1DA 03:C1CA: A5 67     LDA ram_0067
C - - - - - 0x00C1DC 03:C1CC: 8D 01 80  STA $8001
C - - - - - 0x00C1DF 03:C1CF: 20 CE C2  JSR sub_C2CE_roll_rng
C - - - - - 0x00C1E2 03:C1D2: 68        PLA
C - - - - - 0x00C1E3 03:C1D3: AA        TAX
C - - - - - 0x00C1E4 03:C1D4: 9A        TXS
C - - - - - 0x00C1E5 03:C1D5: A5 66     LDA ram_0066
C - - - - - 0x00C1E7 03:C1D7: 8D 00 80  STA $8000
C - - - - - 0x00C1EA 03:C1DA: A5 28     LDA ram_0028
C - - - - - 0x00C1EC 03:C1DC: 09 80     ORA #$80
C - - - - - 0x00C1EE 03:C1DE: 85 28     STA ram_0028
C - - - - - 0x00C1F0 03:C1E0: 85 21     STA ram_0021
C - - - - - 0x00C1F2 03:C1E2: 8D 00 20  STA $2000
C - - - - - 0x00C1F5 03:C1E5: 68        PLA
C - - - - - 0x00C1F6 03:C1E6: A8        TAY
C - - - - - 0x00C1F7 03:C1E7: 68        PLA
C - - - - - 0x00C1F8 03:C1E8: AA        TAX
C - - - - - 0x00C1F9 03:C1E9: 68        PLA
C - - - - - 0x00C1FA 03:C1EA: 40        RTI



sub_C1EB:
C - - - - - 0x00C1FB 03:C1EB: AD 00 03  LDA ram_0300
C - - - - - 0x00C1FE 03:C1EE: F0 37     BEQ bra_C227
C - - - - - 0x00C200 03:C1F0: CE 00 03  DEC ram_0300
C - - - - - 0x00C203 03:C1F3: 38        SEC
C - - - - - 0x00C204 03:C1F4: E9 01     SBC #$01
C - - - - - 0x00C206 03:C1F6: 0A        ASL
C - - - - - 0x00C207 03:C1F7: AA        TAX
C - - - - - 0x00C208 03:C1F8: BD 01 03  LDA ram_0301,X
C - - - - - 0x00C20B 03:C1FB: 85 3D     STA ram_003D
C - - - - - 0x00C20D 03:C1FD: BD 02 03  LDA ram_0302,X
C - - - - - 0x00C210 03:C200: 85 3E     STA ram_003E
C - - - - - 0x00C212 03:C202: A0 00     LDY #$00
bra_C204:
C - - - - - 0x00C214 03:C204: B1 3D     LDA (ram_003D),Y
C - - - - - 0x00C216 03:C206: F0 1E     BEQ bra_C226_RTS
C - - - - - 0x00C218 03:C208: AA        TAX
C - - - - - 0x00C219 03:C209: C8        INY
C - - - - - 0x00C21A 03:C20A: B1 3D     LDA (ram_003D),Y
C - - - - - 0x00C21C 03:C20C: 48        PHA
C - - - - - 0x00C21D 03:C20D: C8        INY
C - - - - - 0x00C21E 03:C20E: B1 3D     LDA (ram_003D),Y
C - - - - - 0x00C220 03:C210: 2C 02 20  BIT $2002
C - - - - - 0x00C223 03:C213: 8D 06 20  STA $2006
C - - - - - 0x00C226 03:C216: 68        PLA
C - - - - - 0x00C227 03:C217: 8D 06 20  STA $2006
C - - - - - 0x00C22A 03:C21A: C8        INY
bra_C21B:
C - - - - - 0x00C22B 03:C21B: B1 3D     LDA (ram_003D),Y
C - - - - - 0x00C22D 03:C21D: 8D 07 20  STA $2007
C - - - - - 0x00C230 03:C220: C8        INY
C - - - - - 0x00C231 03:C221: CA        DEX
C - - - - - 0x00C232 03:C222: D0 F7     BNE bra_C21B
C - - - - - 0x00C234 03:C224: F0 DE     BEQ bra_C204
bra_C226_RTS:
C - - - - - 0x00C236 03:C226: 60        RTS
bra_C227:
C - - - - - 0x00C237 03:C227: AD 7D 03  LDA ram_037D
C - - - - - 0x00C23A 03:C22A: 10 2B     BPL bra_C257_RTS
C - - - - - 0x00C23C 03:C22C: A2 00     LDX #$00
C - - - - - 0x00C23E 03:C22E: 8E 7D 03  STX ram_037D
bra_C231:
C - - - - - 0x00C241 03:C231: BD 0D 03  LDA ram_030D,X
C - - - - - 0x00C244 03:C234: F0 21     BEQ bra_C257_RTS
C - - - - - 0x00C246 03:C236: A8        TAY
C - - - - - 0x00C247 03:C237: E8        INX
C - - - - - 0x00C248 03:C238: BD 0D 03  LDA ram_030D,X
C - - - - - 0x00C24B 03:C23B: 48        PHA
C - - - - - 0x00C24C 03:C23C: E8        INX
C - - - - - 0x00C24D 03:C23D: BD 0D 03  LDA ram_030D,X
C - - - - - 0x00C250 03:C240: 2C 02 20  BIT $2002
C - - - - - 0x00C253 03:C243: 8D 06 20  STA $2006
C - - - - - 0x00C256 03:C246: 68        PLA
C - - - - - 0x00C257 03:C247: 8D 06 20  STA $2006
C - - - - - 0x00C25A 03:C24A: E8        INX
bra_C24B:
C - - - - - 0x00C25B 03:C24B: BD 0D 03  LDA ram_030D,X
C - - - - - 0x00C25E 03:C24E: 8D 07 20  STA $2007
C - - - - - 0x00C261 03:C251: E8        INX
C - - - - - 0x00C262 03:C252: 88        DEY
C - - - - - 0x00C263 03:C253: D0 F6     BNE bra_C24B
C - - - - - 0x00C265 03:C255: F0 DA     BEQ bra_C231
bra_C257_RTS:
C - - - - - 0x00C267 03:C257: 60        RTS



sub_C258:
C - - - - - 0x00C268 03:C258: A2 00     LDX #$00
C - - - - - 0x00C26A 03:C25A: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00C26D 03:C25D: 20 68 C2  JSR sub_C268
C - - - - - 0x00C270 03:C260: E8        INX ; 01
C - - - - - 0x00C271 03:C261: AD 25 00  LDA a: ram_btn_hold + $01
C - - - - - 0x00C274 03:C264: 20 68 C2  JSR sub_C268
C - - - - - 0x00C277 03:C267: 60        RTS



sub_C268:
bra_C268_loop:
C - - - - - 0x00C278 03:C268: 85 46     STA ram_0046
C - - - - - 0x00C27A 03:C26A: A0 01     LDY #$01
C - - - - - 0x00C27C 03:C26C: 8C 16 40  STY $4016
C - - - - - 0x00C27F 03:C26F: 88        DEY
C - - - - - 0x00C280 03:C270: 8C 16 40  STY $4016
C - - - - - 0x00C283 03:C273: A9 04     LDA #$04
C - - - - - 0x00C285 03:C275: 85 47     STA ram_0047
C - - - - - 0x00C287 03:C277: A0 08     LDY #$08
bra_C279:
C - - - - - 0x00C289 03:C279: BD 16 40  LDA $4016,X
C - - - - - 0x00C28C 03:C27C: 4A        LSR
C - - - - - 0x00C28D 03:C27D: 26 45     ROL ram_0045
C - - - - - 0x00C28F 03:C27F: 29 01     AND #$01
C - - - - - 0x00C291 03:C281: 05 45     ORA ram_0045
C - - - - - 0x00C293 03:C283: 85 45     STA ram_0045
C - - - - - 0x00C295 03:C285: 88        DEY
C - - - - - 0x00C296 03:C286: D0 F1     BNE bra_C279
C - - - - - 0x00C298 03:C288: C5 46     CMP ram_0046
C - - - - - 0x00C29A 03:C28A: F0 06     BEQ bra_C292
C - - - - - 0x00C29C 03:C28C: C6 47     DEC ram_0047
C - - - - - 0x00C29E 03:C28E: D0 D8     BNE bra_C268_loop
- - - - - - 0x00C2A0 03:C290: F0 0F     BEQ bra_C2A1_RTS
bra_C292:
C - - - - - 0x00C2A2 03:C292: BD 24 00  LDA a: ram_btn_hold,X
C - - - - - 0x00C2A5 03:C295: 45 45     EOR ram_0045
C - - - - - 0x00C2A7 03:C297: 25 45     AND ram_0045
C - - - - - 0x00C2A9 03:C299: 9D 26 00  STA a: ram_btn_press,X
C - - - - - 0x00C2AC 03:C29C: A5 45     LDA ram_0045
C - - - - - 0x00C2AE 03:C29E: 9D 24 00  STA a: ram_btn_hold,X
bra_C2A1_RTS:
C - - - - - 0x00C2B1 03:C2A1: 60        RTS



sub_C2A2:
C - - - - - 0x00C2B2 03:C2A2: A5 65     LDA ram_0065
C - - - - - 0x00C2B4 03:C2A4: 8D 00 80  STA $8000
C - - - - - 0x00C2B7 03:C2A7: A5 69     LDA ram_0069
C - - - - - 0x00C2B9 03:C2A9: 8D 01 80  STA $8001
C - - - - - 0x00C2BC 03:C2AC: A5 65     LDA ram_0065
C - - - - - 0x00C2BE 03:C2AE: 09 01     ORA #$01
C - - - - - 0x00C2C0 03:C2B0: 8D 00 80  STA $8000
C - - - - - 0x00C2C3 03:C2B3: A5 6A     LDA ram_006A
C - - - - - 0x00C2C5 03:C2B5: 8D 01 80  STA $8001
C - - - - - 0x00C2C8 03:C2B8: A2 00     LDX #$00
C - - - - - 0x00C2CA 03:C2BA: A0 02     LDY #$02
bra_C2BC:
C - - - - - 0x00C2CC 03:C2BC: 98        TYA
C - - - - - 0x00C2CD 03:C2BD: 05 65     ORA ram_0065
C - - - - - 0x00C2CF 03:C2BF: 8D 00 80  STA $8000
C - - - - - 0x00C2D2 03:C2C2: B5 6B     LDA ram_006B,X
C - - - - - 0x00C2D4 03:C2C4: 8D 01 80  STA $8001
C - - - - - 0x00C2D7 03:C2C7: E8        INX
C - - - - - 0x00C2D8 03:C2C8: C8        INY
C - - - - - 0x00C2D9 03:C2C9: C0 06     CPY #$06
C - - - - - 0x00C2DB 03:C2CB: D0 EF     BNE bra_C2BC
C - - - - - 0x00C2DD 03:C2CD: 60        RTS



sub_C2CE_roll_rng:
C - - - - - 0x00C2DE 03:C2CE: AE 93 00  LDX a: ram_frame_counter
C - - - - - 0x00C2E1 03:C2D1: BD 00 03  LDA ram_0300,X
C - - - - - 0x00C2E4 03:C2D4: 7D 00 07  ADC ram_0700,X
C - - - - - 0x00C2E7 03:C2D7: 2E 7E 03  ROL ram_random
C - - - - - 0x00C2EA 03:C2DA: 49 FF     EOR #$FF
C - - - - - 0x00C2EC 03:C2DC: 2E 7E 03  ROL ram_random
C - - - - - 0x00C2EF 03:C2DF: 6D 7E 03  ADC ram_random
C - - - - - 0x00C2F2 03:C2E2: 8D 7E 03  STA ram_random
C - - - - - 0x00C2F5 03:C2E5: FD 80 07  SBC ram_0780,X
C - - - - - 0x00C2F8 03:C2E8: 6D 93 00  ADC a: ram_frame_counter
C - - - - - 0x00C2FB 03:C2EB: 8D 7F 03  STA ram_random + $01
C - - - - - 0x00C2FE 03:C2EE: EE 93 00  INC a: ram_frame_counter
C - - - - - 0x00C301 03:C2F1: 60        RTS



ofs_C2F2:
C - - - - - 0x00C302 03:C2F2: A5 29     LDA ram_0029
C - - - - - 0x00C304 03:C2F4: 09 1E     ORA #$1E
C - - - - - 0x00C306 03:C2F6: 85 29     STA ram_0029
loc_C2F8:
C D 2 - - - 0x00C308 03:C2F8: AD A4 03  LDA ram_03A4
C - - - - - 0x00C30B 03:C2FB: 29 FB     AND #$FB
C - - - - - 0x00C30D 03:C2FD: 8D A4 03  STA ram_03A4
C - - - - - 0x00C310 03:C300: A9 00     LDA #$00
C - - - - - 0x00C312 03:C302: 8D D2 03  STA ram_03D2
C - - - - - 0x00C315 03:C305: A9 11     LDA #con_music_logo
C - - - - - 0x00C317 03:C307: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00C31A 03:C30A: A9 04     LDA #$04
C - - - - - 0x00C31C 03:C30C: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C31F 03:C30F: A2 05     LDX #$05
C - - - - - 0x00C321 03:C311: A9 3C     LDA #$3C
C - - - - - 0x00C323 03:C313: 95 01     STA ram_0001,X
C - - - - - 0x00C325 03:C315: A9 04     LDA #$04
C - - - - - 0x00C327 03:C317: 95 02     STA ram_0002,X
C - - - - - 0x00C329 03:C319: A9 80     LDA #> (ofs_0x00801C - $01)
C - - - - - 0x00C32B 03:C31B: A0 0B     LDY #< (ofs_0x00801C - $01)
C - - - - - 0x00C32D 03:C31D: 20 E1 C5  JSR sub_C5E1_prepare_return_address
bra_C320:
C - - - - - 0x00C330 03:C320: A9 01     LDA #$01
C - - - - - 0x00C332 03:C322: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C335 03:C325: A9 10     LDA #con_btn_Start
C - - - - - 0x00C337 03:C327: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00C33A 03:C32A: D0 05     BNE bra_C331
C - - - - - 0x00C33C 03:C32C: 2C D2 03  BIT ram_03D2
C - - - - - 0x00C33F 03:C32F: 10 EF     BPL bra_C320
bra_C331:
C - - - - - 0x00C341 03:C331: 2C D2 03  BIT ram_03D2
C - - - - - 0x00C344 03:C334: 30 1B     BMI bra_C351
C - - - - - 0x00C346 03:C336: A9 80     LDA #$80
C - - - - - 0x00C348 03:C338: 8D D2 03  STA ram_03D2
C - - - - - 0x00C34B 03:C33B: A9 00     LDA #$00
C - - - - - 0x00C34D 03:C33D: 85 3B     STA ram_003B
C - - - - - 0x00C34F 03:C33F: 85 3A     STA ram_003A
C - - - - - 0x00C351 03:C341: 48        PHA
C - - - - - 0x00C352 03:C342: A9 04     LDA #$04
C - - - - - 0x00C354 03:C344: 85 67     STA ram_0067
C - - - - - 0x00C356 03:C346: A9 05     LDA #$05
C - - - - - 0x00C358 03:C348: 85 68     STA ram_0068
C - - - - - 0x00C35A 03:C34A: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C35D 03:C34D: 68        PLA
C - - - - - 0x00C35E 03:C34E: 20 12 80  JSR sub_0x008022
bra_C351:
C - - - - - 0x00C361 03:C351: 48        PHA
C - - - - - 0x00C362 03:C352: A9 04     LDA #$04
C - - - - - 0x00C364 03:C354: 85 67     STA ram_0067
C - - - - - 0x00C366 03:C356: A9 05     LDA #$05
C - - - - - 0x00C368 03:C358: 85 68     STA ram_0068
C - - - - - 0x00C36A 03:C35A: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C36D 03:C35D: 68        PLA
C - - - - - 0x00C36E 03:C35E: 20 18 80  JSR sub_0x008028
C - - - - - 0x00C371 03:C361: AD A4 03  LDA ram_03A4
C - - - - - 0x00C374 03:C364: 09 08     ORA #$08
C - - - - - 0x00C376 03:C366: 8D A4 03  STA ram_03A4
C - - - - - 0x00C379 03:C369: A9 FF     LDA #$FF
C - - - - - 0x00C37B 03:C36B: 8D A9 03  STA ram_team_id
loc_C36E:
C D 2 - - - 0x00C37E 03:C36E: A9 01     LDA #con_sfx_off
C - - - - - 0x00C380 03:C370: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00C383 03:C373: AD A4 03  LDA ram_03A4
C - - - - - 0x00C386 03:C376: 29 FB     AND #$FB
C - - - - - 0x00C388 03:C378: 8D A4 03  STA ram_03A4
C - - - - - 0x00C38B 03:C37B: A9 00     LDA #$00
C - - - - - 0x00C38D 03:C37D: 8D A7 03  STA ram_goals_total
C - - - - - 0x00C390 03:C380: 8D A8 03  STA ram_goals_total + $01
C - - - - - 0x00C393 03:C383: 8D 8F 00  STA a: ram_goals_pk
C - - - - - 0x00C396 03:C386: 8D 90 00  STA a: ram_goals_pk + $01
C - - - - - 0x00C399 03:C389: 8D A5 03  STA ram_goals_half
C - - - - - 0x00C39C 03:C38C: 8D A6 03  STA ram_goals_half + $01
C - - - - - 0x00C39F 03:C38F: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00C3A2 03:C392: 8D AE 03  STA ram_half_time_cnt
C - - - - - 0x00C3A5 03:C395: 48        PHA
C - - - - - 0x00C3A6 03:C396: A9 04     LDA #$04
C - - - - - 0x00C3A8 03:C398: 85 67     STA ram_0067
C - - - - - 0x00C3AA 03:C39A: A9 05     LDA #$05
C - - - - - 0x00C3AC 03:C39C: 85 68     STA ram_0068
C - - - - - 0x00C3AE 03:C39E: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C3B1 03:C3A1: 68        PLA
C - - - - - 0x00C3B2 03:C3A2: 20 00 80  JSR sub_0x008010
C - - - - - 0x00C3B5 03:C3A5: 48        PHA
C - - - - - 0x00C3B6 03:C3A6: A9 04     LDA #$04
C - - - - - 0x00C3B8 03:C3A8: 85 67     STA ram_0067
C - - - - - 0x00C3BA 03:C3AA: A9 05     LDA #$05
C - - - - - 0x00C3BC 03:C3AC: 85 68     STA ram_0068
C - - - - - 0x00C3BE 03:C3AE: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C3C1 03:C3B1: 68        PLA
C - - - - - 0x00C3C2 03:C3B2: 20 03 80  JSR sub_0x008013
C - - - - - 0x00C3C5 03:C3B5: 48        PHA
C - - - - - 0x00C3C6 03:C3B6: A9 02     LDA #$02
C - - - - - 0x00C3C8 03:C3B8: 85 67     STA ram_0067
C - - - - - 0x00C3CA 03:C3BA: A9 03     LDA #$03
C - - - - - 0x00C3CC 03:C3BC: 85 68     STA ram_0068
C - - - - - 0x00C3CE 03:C3BE: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C3D1 03:C3C1: 68        PLA
C - - - - - 0x00C3D2 03:C3C2: 20 2D 80  JSR sub_0x00403D
C - - - - - 0x00C3D5 03:C3C5: 20 07 C5  JSR sub_C507
bra_C3C8:
C - - - - - 0x00C3D8 03:C3C8: A9 01     LDA #$01
C - - - - - 0x00C3DA 03:C3CA: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C3DD 03:C3CD: AD A4 03  LDA ram_03A4
C - - - - - 0x00C3E0 03:C3D0: 29 01     AND #$01
C - - - - - 0x00C3E2 03:C3D2: F0 F4     BEQ bra_C3C8
C - - - - - 0x00C3E4 03:C3D4: 20 76 C4  JSR sub_C476
C - - - - - 0x00C3E7 03:C3D7: 20 B8 C4  JSR sub_C4B8
C - - - - - 0x00C3EA 03:C3DA: 20 07 C5  JSR sub_C507
C - - - - - 0x00C3ED 03:C3DD: EE AE 03  INC ram_half_time_cnt
C - - - - - 0x00C3F0 03:C3E0: A9 0B     LDA #$0B
C - - - - - 0x00C3F2 03:C3E2: 8D AD 03  STA ram_team_w_ball
bra_C3E5:
C - - - - - 0x00C3F5 03:C3E5: A9 01     LDA #$01
C - - - - - 0x00C3F7 03:C3E7: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C3FA 03:C3EA: AD A4 03  LDA ram_03A4
C - - - - - 0x00C3FD 03:C3ED: 29 01     AND #$01
C - - - - - 0x00C3FF 03:C3EF: F0 F4     BEQ bra_C3E5
C - - - - - 0x00C401 03:C3F1: 20 76 C4  JSR sub_C476
C - - - - - 0x00C404 03:C3F4: 20 B8 C4  JSR sub_C4B8
C - - - - - 0x00C407 03:C3F7: 20 25 C4  JSR sub_C425
C - - - - - 0x00C40A 03:C3FA: A2 05     LDX #$05
C - - - - - 0x00C40C 03:C3FC: A9 3C     LDA #$3C
C - - - - - 0x00C40E 03:C3FE: 95 01     STA ram_0001,X
C - - - - - 0x00C410 03:C400: A9 0C     LDA #$0C
C - - - - - 0x00C412 03:C402: 95 02     STA ram_0002,X
C - - - - - 0x00C414 03:C404: A9 CE     LDA #> (ofs_CE73 - $01)
C - - - - - 0x00C416 03:C406: A0 72     LDY #< (ofs_CE73 - $01)
C - - - - - 0x00C418 03:C408: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00C41B 03:C40B: AD A4 03  LDA ram_03A4
C - - - - - 0x00C41E 03:C40E: 09 10     ORA #$10
C - - - - - 0x00C420 03:C410: 8D A4 03  STA ram_03A4
bra_C413:
C - - - - - 0x00C423 03:C413: A9 01     LDA #$01
C - - - - - 0x00C425 03:C415: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C428 03:C418: AD A4 03  LDA ram_03A4
C - - - - - 0x00C42B 03:C41B: 29 10     AND #$10
C - - - - - 0x00C42D 03:C41D: D0 F4     BNE bra_C413
C - - - - - 0x00C42F 03:C41F: 20 25 C4  JSR sub_C425


; bzk garbage
loc_C422:
- - - - - - 0x00C432 03:C422: 4C 22 C4  JMP loc_C422



sub_C425:
C - - - - - 0x00C435 03:C425: A2 00     LDX #$00
C - - - - - 0x00C437 03:C427: AD A7 03  LDA ram_goals_total
C - - - - - 0x00C43A 03:C42A: CD A8 03  CMP ram_goals_total + $01
C - - - - - 0x00C43D 03:C42D: F0 2D     BEQ bra_C45C_RTS
C - - - - - 0x00C43F 03:C42F: 90 02     BCC bra_C433
C - - - - - 0x00C441 03:C431: A2 08     LDX #$08
bra_C433:
C - - - - - 0x00C443 03:C433: AD A4 03  LDA ram_03A4
C - - - - - 0x00C446 03:C436: 29 F7     AND #$F7
C - - - - - 0x00C448 03:C438: 8D A4 03  STA ram_03A4
C - - - - - 0x00C44B 03:C43B: 8A        TXA
C - - - - - 0x00C44C 03:C43C: 0D A4 03  ORA ram_03A4
C - - - - - 0x00C44F 03:C43F: 8D A4 03  STA ram_03A4
C - - - - - 0x00C452 03:C442: 68        PLA
C - - - - - 0x00C453 03:C443: 68        PLA
C - - - - - 0x00C454 03:C444: 2C A4 03  BIT ram_03A4
C - - - - - 0x00C457 03:C447: 10 03     BPL bra_C44C
C - - - - - 0x00C459 03:C449: 4C F8 C2  JMP loc_C2F8
bra_C44C:
C - - - - - 0x00C45C 03:C44C: 8A        TXA
C - - - - - 0x00C45D 03:C44D: F0 0A     BEQ bra_C459
C - - - - - 0x00C45F 03:C44F: AD B3 03  LDA ram_game_cnt
C - - - - - 0x00C462 03:C452: C9 0E     CMP #$0E
C - - - - - 0x00C464 03:C454: D0 03     BNE bra_C459
C - - - - - 0x00C466 03:C456: 4C 5D C4  JMP loc_C45D
bra_C459:
C - - - - - 0x00C469 03:C459: 4C 6E C3  JMP loc_C36E
bra_C45C_RTS:
C - - - - - 0x00C46C 03:C45C: 60        RTS



loc_C45D:
C D 2 - - - 0x00C46D 03:C45D: A2 05     LDX #$05
C - - - - - 0x00C46F 03:C45F: A9 3C     LDA #$3C
C - - - - - 0x00C471 03:C461: 95 01     STA ram_0001,X
C - - - - - 0x00C473 03:C463: A9 04     LDA #$04
C - - - - - 0x00C475 03:C465: 95 02     STA ram_0002,X
C - - - - - 0x00C477 03:C467: A9 80     LDA #> (ofs_0x008025 - $01)
C - - - - - 0x00C479 03:C469: A0 14     LDY #< (ofs_0x008025 - $01)
C - - - - - 0x00C47B 03:C46B: 20 E1 C5  JSR sub_C5E1_prepare_return_address
loc_C46E:
C D 2 - - - 0x00C47E 03:C46E: A9 01     LDA #$01
C - - - - - 0x00C480 03:C470: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C483 03:C473: 4C 6E C4  JMP loc_C46E



sub_C476:
C - - - - - 0x00C486 03:C476: AD A4 03  LDA ram_03A4
C - - - - - 0x00C489 03:C479: 29 FB     AND #$FB
C - - - - - 0x00C48B 03:C47B: 8D A4 03  STA ram_03A4
C - - - - - 0x00C48E 03:C47E: A9 00     LDA #$00
C - - - - - 0x00C490 03:C480: 85 05     STA ram_0005
C - - - - - 0x00C492 03:C482: 85 06     STA ram_0006
C - - - - - 0x00C494 03:C484: A9 00     LDA #$00
C - - - - - 0x00C496 03:C486: 85 09     STA ram_0009
C - - - - - 0x00C498 03:C488: 85 0A     STA ram_000A
C - - - - - 0x00C49A 03:C48A: A9 00     LDA #$00
C - - - - - 0x00C49C 03:C48C: 85 0D     STA ram_000D
C - - - - - 0x00C49E 03:C48E: 85 0E     STA ram_000E
C - - - - - 0x00C4A0 03:C490: A9 00     LDA #$00
C - - - - - 0x00C4A2 03:C492: 85 11     STA ram_0011
C - - - - - 0x00C4A4 03:C494: 85 12     STA ram_0012
C - - - - - 0x00C4A6 03:C496: A9 00     LDA #$00
C - - - - - 0x00C4A8 03:C498: 85 15     STA ram_0015
C - - - - - 0x00C4AA 03:C49A: 85 16     STA ram_0016
C - - - - - 0x00C4AC 03:C49C: A9 00     LDA #$00
C - - - - - 0x00C4AE 03:C49E: 85 19     STA ram_0019
C - - - - - 0x00C4B0 03:C4A0: 85 1A     STA ram_001A
C - - - - - 0x00C4B2 03:C4A2: A9 00     LDA #$00
C - - - - - 0x00C4B4 03:C4A4: 85 1D     STA ram_001D
C - - - - - 0x00C4B6 03:C4A6: 85 1E     STA ram_001E
C - - - - - 0x00C4B8 03:C4A8: A9 0B     LDA #con_sfx_time_up
C - - - - - 0x00C4BA 03:C4AA: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00C4BD 03:C4AD: A9 01     LDA #$01
C - - - - - 0x00C4BF 03:C4AF: 20 DA F9  JSR sub_F9DA
C - - - - - 0x00C4C2 03:C4B2: A9 A0     LDA #$A0
C - - - - - 0x00C4C4 03:C4B4: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C4C7 03:C4B7: 60        RTS



sub_C4B8:
C - - - - - 0x00C4C8 03:C4B8: 20 59 CA  JSR sub_CA59
C - - - - - 0x00C4CB 03:C4BB: 20 AF CA  JSR sub_CAAF
C - - - - - 0x00C4CE 03:C4BE: A5 28     LDA ram_0028
C - - - - - 0x00C4D0 03:C4C0: 29 FC     AND #$FC
C - - - - - 0x00C4D2 03:C4C2: 85 28     STA ram_0028
C - - - - - 0x00C4D4 03:C4C4: A9 00     LDA #$00
C - - - - - 0x00C4D6 03:C4C6: 85 3A     STA ram_003A
C - - - - - 0x00C4D8 03:C4C8: 85 3B     STA ram_003B
C - - - - - 0x00C4DA 03:C4CA: A2 00     LDX #$00
C - - - - - 0x00C4DC 03:C4CC: A9 07     LDA #$07
C - - - - - 0x00C4DE 03:C4CE: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00C4E1 03:C4D1: A2 10     LDX #$10
C - - - - - 0x00C4E3 03:C4D3: A9 08     LDA #$08
C - - - - - 0x00C4E5 03:C4D5: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00C4E8 03:C4D8: 20 18 CB  JSR sub_CB18
- D 2 - I - 0x00C4EB 03:C4DB: 80 03     .word ram_0380
C - - - - - 0x00C4ED 03:C4DD: A9 1C     LDA #$1C
C - - - - - 0x00C4EF 03:C4DF: 85 69     STA ram_0069
C - - - - - 0x00C4F1 03:C4E1: A9 1A     LDA #$1A
C - - - - - 0x00C4F3 03:C4E3: 85 6A     STA ram_006A
C - - - - - 0x00C4F5 03:C4E5: A2 03     LDX #$03
bra_C4E7:
C - - - - - 0x00C4F7 03:C4E7: 8A        TXA
C - - - - - 0x00C4F8 03:C4E8: 18        CLC
C - - - - - 0x00C4F9 03:C4E9: 69 18     ADC #$18
C - - - - - 0x00C4FB 03:C4EB: 9D 6B 00  STA a: ram_006B,X
C - - - - - 0x00C4FE 03:C4EE: CA        DEX
C - - - - - 0x00C4FF 03:C4EF: 10 F6     BPL bra_C4E7
C - - - - - 0x00C501 03:C4F1: A9 13     LDA #con_music_half_time
C - - - - - 0x00C503 03:C4F3: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00C506 03:C4F6: 48        PHA
C - - - - - 0x00C507 03:C4F7: A9 04     LDA #$04
C - - - - - 0x00C509 03:C4F9: 85 67     STA ram_0067
C - - - - - 0x00C50B 03:C4FB: A9 05     LDA #$05
C - - - - - 0x00C50D 03:C4FD: 85 68     STA ram_0068
C - - - - - 0x00C50F 03:C4FF: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C512 03:C502: 68        PLA
C - - - - - 0x00C513 03:C503: 20 00 B0  JSR sub_0x00B010
C - - - - - 0x00C516 03:C506: 60        RTS



sub_C507:
C - - - - - 0x00C517 03:C507: 20 59 CA  JSR sub_CA59
C - - - - - 0x00C51A 03:C50A: 20 AF CA  JSR sub_CAAF
C - - - - - 0x00C51D 03:C50D: 20 EC C8  JSR sub_C8EC
C - - - - - 0x00C520 03:C510: 20 97 CF  JSR sub_CF97
C - - - - - 0x00C523 03:C513: A9 04     LDA #$04
C - - - - - 0x00C525 03:C515: 85 6B     STA ram_006B
C - - - - - 0x00C527 03:C517: A9 00     LDA #$00
C - - - - - 0x00C529 03:C519: 8D B6 03  STA ram_03B6
C - - - - - 0x00C52C 03:C51C: 8D B7 03  STA ram_03B7
C - - - - - 0x00C52F 03:C51F: 8D B8 03  STA ram_03B8
C - - - - - 0x00C532 03:C522: 8D BB 03  STA ram_03BB
C - - - - - 0x00C535 03:C525: 8D BC 03  STA ram_03BC
C - - - - - 0x00C538 03:C528: 8D BD 03  STA ram_03BD
C - - - - - 0x00C53B 03:C52B: A9 3B     LDA #$3B
C - - - - - 0x00C53D 03:C52D: 8D B0 03  STA ram_timer_ms
C - - - - - 0x00C540 03:C530: A9 00     LDA #$00
C - - - - - 0x00C542 03:C532: 8D B1 03  STA ram_timer_sec
C - - - - - 0x00C545 03:C535: AE AF 03  LDX ram_option_timer
C - - - - - 0x00C548 03:C538: BD 58 C5  LDA tbl_C558,X
C - - - - - 0x00C54B 03:C53B: 8D B2 03  STA ram_timer_min
C - - - - - 0x00C54E 03:C53E: A2 05     LDX #$05
C - - - - - 0x00C550 03:C540: A9 3C     LDA #$3C
C - - - - - 0x00C552 03:C542: 95 01     STA ram_0001,X
C - - - - - 0x00C554 03:C544: A9 0C     LDA #$0C
C - - - - - 0x00C556 03:C546: 95 02     STA ram_0002,X
C - - - - - 0x00C558 03:C548: A9 CC     LDA #> (ofs_CCC4 - $01)
C - - - - - 0x00C55A 03:C54A: A0 C3     LDY #< (ofs_CCC4 - $01)
C - - - - - 0x00C55C 03:C54C: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00C55F 03:C54F: AD A4 03  LDA ram_03A4
C - - - - - 0x00C562 03:C552: 29 DE     AND #$DE
C - - - - - 0x00C564 03:C554: 8D A4 03  STA ram_03A4
C - - - - - 0x00C567 03:C557: 60        RTS



tbl_C558:
- - - - - - 0x00C568 03:C558: 0F        .byte $0F   ; 
- D 2 - - - 0x00C569 03:C559: 1E        .byte $1E   ; 
- D 2 - - - 0x00C56A 03:C55A: 2D        .byte $2D   ; 



loc_C55B:
C D 2 - - - 0x00C56B 03:C55B: AD A4 03  LDA ram_03A4
C - - - - - 0x00C56E 03:C55E: 29 04     AND #$04
C - - - - - 0x00C570 03:C560: F0 0A     BEQ bra_C56C
C - - - - - 0x00C572 03:C562: A9 10     LDA #con_btn_Start
C - - - - - 0x00C574 03:C564: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00C577 03:C567: F0 03     BEQ bra_C56C
C - - - - - 0x00C579 03:C569: 20 8E C5  JSR sub_C58E
bra_C56C:
C - - - - - 0x00C57C 03:C56C: A2 01     LDX #$01
bra_C56E_loop:
C - - - - - 0x00C57E 03:C56E: B5 00     LDA ram_0000,X
C - - - - - 0x00C580 03:C570: F0 08     BEQ bra_C57A
C - - - - - 0x00C582 03:C572: C9 FF     CMP #$FF
C - - - - - 0x00C584 03:C574: F0 58     BEQ bra_C5CE
C - - - - - 0x00C586 03:C576: D6 00     DEC ram_0000,X
C - - - - - 0x00C588 03:C578: F0 39     BEQ bra_C5B3
bra_C57A:
loc_C57A:
C D 2 - - - 0x00C58A 03:C57A: 8A        TXA
C - - - - - 0x00C58B 03:C57B: 18        CLC
C - - - - - 0x00C58C 03:C57C: 69 04     ADC #$04
C - - - - - 0x00C58E 03:C57E: AA        TAX
C - - - - - 0x00C58F 03:C57F: E0 21     CPX #$21
C - - - - - 0x00C591 03:C581: D0 EB     BNE bra_C56E_loop
bra_C583:
C - - - - - 0x00C593 03:C583: A5 23     LDA ram_0023
C - - - - - 0x00C595 03:C585: 10 FC     BPL bra_C583
C - - - - - 0x00C597 03:C587: 29 7F     AND #$7F
C - - - - - 0x00C599 03:C589: 85 23     STA ram_0023
C - - - - - 0x00C59B 03:C58B: 4C 5B C5  JMP loc_C55B



sub_C58E:
C - - - - - 0x00C59E 03:C58E: A9 05     LDA #$05
C - - - - - 0x00C5A0 03:C590: 20 DA F9  JSR sub_F9DA
C - - - - - 0x00C5A3 03:C593: 48        PHA
C - - - - - 0x00C5A4 03:C594: A9 04     LDA #$04
C - - - - - 0x00C5A6 03:C596: 85 67     STA ram_0067
C - - - - - 0x00C5A8 03:C598: A9 05     LDA #$05
C - - - - - 0x00C5AA 03:C59A: 85 68     STA ram_0068
C - - - - - 0x00C5AC 03:C59C: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C5AF 03:C59F: 68        PLA
C - - - - - 0x00C5B0 03:C5A0: 20 30 80  JSR sub_0x008040
bra_C5A3:
C - - - - - 0x00C5B3 03:C5A3: A5 23     LDA ram_0023
C - - - - - 0x00C5B5 03:C5A5: 10 FC     BPL bra_C5A3
C - - - - - 0x00C5B7 03:C5A7: 29 7F     AND #$7F
C - - - - - 0x00C5B9 03:C5A9: 85 23     STA ram_0023
C - - - - - 0x00C5BB 03:C5AB: A9 10     LDA #con_btn_Start
C - - - - - 0x00C5BD 03:C5AD: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00C5C0 03:C5B0: F0 F1     BEQ bra_C5A3
C - - - - - 0x00C5C2 03:C5B2: 60        RTS
bra_C5B3:
C - - - - - 0x00C5C3 03:C5B3: 46 21     LSR ram_0021
C - - - - - 0x00C5C5 03:C5B5: 86 00     STX ram_0000
C - - - - - 0x00C5C7 03:C5B7: B5 02     LDA ram_0002,X
C - - - - - 0x00C5C9 03:C5B9: 85 67     STA ram_0067
C - - - - - 0x00C5CB 03:C5BB: B5 03     LDA ram_0003,X
C - - - - - 0x00C5CD 03:C5BD: 85 68     STA ram_0068
C - - - - - 0x00C5CF 03:C5BF: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C5D2 03:C5C2: B5 01     LDA ram_0001,X
C - - - - - 0x00C5D4 03:C5C4: AA        TAX
C - - - - - 0x00C5D5 03:C5C5: 9A        TXS
C - - - - - 0x00C5D6 03:C5C6: 38        SEC
C - - - - - 0x00C5D7 03:C5C7: 66 21     ROR ram_0021
C - - - - - 0x00C5D9 03:C5C9: 68        PLA
C - - - - - 0x00C5DA 03:C5CA: A8        TAY
C - - - - - 0x00C5DB 03:C5CB: 68        PLA
C - - - - - 0x00C5DC 03:C5CC: AA        TAX
C - - - - - 0x00C5DD 03:C5CD: 60        RTS
bra_C5CE:
C - - - - - 0x00C5DE 03:C5CE: 86 00     STX ram_0000
C - - - - - 0x00C5E0 03:C5D0: B5 02     LDA ram_0002,X
C - - - - - 0x00C5E2 03:C5D2: 85 67     STA ram_0067
C - - - - - 0x00C5E4 03:C5D4: 18        CLC
C - - - - - 0x00C5E5 03:C5D5: 69 01     ADC #$01
C - - - - - 0x00C5E7 03:C5D7: 85 68     STA ram_0068
C - - - - - 0x00C5E9 03:C5D9: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00C5EC 03:C5DC: B5 01     LDA ram_0001,X
C - - - - - 0x00C5EE 03:C5DE: AA        TAX
C - - - - - 0x00C5EF 03:C5DF: 9A        TXS
C - - - - - 0x00C5F0 03:C5E0: 60        RTS



loc_C5E1_prepare_return_address:
sub_C5E1_prepare_return_address:
C D 2 - - - 0x00C5F1 03:C5E1: 48        PHA
C - - - - - 0x00C5F2 03:C5E2: 98        TYA
C - - - - - 0x00C5F3 03:C5E3: B4 01     LDY ram_0001,X
C - - - - - 0x00C5F5 03:C5E5: 99 01 01  STA ram_0101,Y
C - - - - - 0x00C5F8 03:C5E8: 68        PLA
C - - - - - 0x00C5F9 03:C5E9: 99 02 01  STA ram_0102,Y
C - - - - - 0x00C5FC 03:C5EC: A9 FF     LDA #$FF
C - - - - - 0x00C5FE 03:C5EE: 95 00     STA ram_0000,X
C - - - - - 0x00C600 03:C5F0: 60        RTS



loc_C5F1:
C D 2 - - - 0x00C601 03:C5F1: A9 00     LDA #$00
C - - - - - 0x00C603 03:C5F3: A6 00     LDX ram_0000
C - - - - - 0x00C605 03:C5F5: 95 00     STA ram_0000,X
C - - - - - 0x00C607 03:C5F7: 95 01     STA ram_0001,X
C - - - - - 0x00C609 03:C5F9: 4C 7A C5  JMP loc_C57A


; bzk garbage
loc_C5FC:
- - - - - - 0x00C60C 03:C5FC: B5 01     LDA ram_0001,X
- - - - - - 0x00C60E 03:C5FE: F0 06     BEQ bra_C606_RTS
- - - - - - 0x00C610 03:C600: B5 00     LDA ram_0000,X
- - - - - - 0x00C612 03:C602: D0 02     BNE bra_C606_RTS
- - - - - - 0x00C614 03:C604: F6 00     INC ram_0000,X
bra_C606_RTS:
- - - - - - 0x00C616 03:C606: 60        RTS
- - - - - - 0x00C617 03:C607: A9 00     LDA #$00



loc_C609_delay:
sub_C609_delay:
; A = how many frames
C D 2 - - - 0x00C619 03:C609: 85 49     STA ram_0049
C - - - - - 0x00C61B 03:C60B: 8A        TXA
C - - - - - 0x00C61C 03:C60C: 48        PHA
C - - - - - 0x00C61D 03:C60D: 98        TYA
C - - - - - 0x00C61E 03:C60E: 48        PHA
C - - - - - 0x00C61F 03:C60F: A6 00     LDX ram_0000
C - - - - - 0x00C621 03:C611: A5 67     LDA ram_0067
C - - - - - 0x00C623 03:C613: 95 02     STA ram_0002,X
C - - - - - 0x00C625 03:C615: A5 68     LDA ram_0068
C - - - - - 0x00C627 03:C617: 95 03     STA ram_0003,X
C - - - - - 0x00C629 03:C619: A5 49     LDA ram_0049
C - - - - - 0x00C62B 03:C61B: 95 00     STA ram_0000,X
C - - - - - 0x00C62D 03:C61D: 8A        TXA
C - - - - - 0x00C62E 03:C61E: A8        TAY
C - - - - - 0x00C62F 03:C61F: BA        TSX
C - - - - - 0x00C630 03:C620: 96 01     STX ram_0001,Y
C - - - - - 0x00C632 03:C622: A6 00     LDX ram_0000
C - - - - - 0x00C634 03:C624: 4C 7A C5  JMP loc_C57A


; bzk garbage
- - - - - - 0x00C637 03:C627: 20        .byte $20   ; 
- - - - - - 0x00C638 03:C628: 40        .byte $40   ; 
- - - - - - 0x00C639 03:C629: 18        .byte $18   ; 
- - - - - - 0x00C63A 03:C62A: 18        .byte $18   ; 
- - - - - - 0x00C63B 03:C62B: 18        .byte $18   ; 
- - - - - - 0x00C63C 03:C62C: 18        .byte $18   ; 
- - - - - - 0x00C63D 03:C62D: 18        .byte $18   ; 
- - - - - - 0x00C63E 03:C62E: 18        .byte $18   ; 



loc_C62F:
sub_C62F:
C D 2 - - - 0x00C63F 03:C62F: AA        TAX
C - - - - - 0x00C640 03:C630: A0 00     LDY #$00
C - - - - - 0x00C642 03:C632: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C644 03:C634: 29 04     AND #$04
C - - - - - 0x00C646 03:C636: D0 19     BNE bra_C651_RTS
C - - - - - 0x00C648 03:C638: 8A        TXA
C - - - - - 0x00C649 03:C639: A0 12     LDY #$12
C - - - - - 0x00C64B 03:C63B: 91 61     STA (ram_0061),Y
C - - - - - 0x00C64D 03:C63D: 0A        ASL
C - - - - - 0x00C64E 03:C63E: AA        TAX
C - - - - - 0x00C64F 03:C63F: BD C3 E6  LDA tbl_E6C2 + $01,X
C - - - - - 0x00C652 03:C642: A0 16     LDY #$16
C - - - - - 0x00C654 03:C644: 91 61     STA (ram_0061),Y
C - - - - - 0x00C656 03:C646: C8        INY
C - - - - - 0x00C657 03:C647: BD C2 E6  LDA tbl_E6C2,X
C - - - - - 0x00C65A 03:C64A: 91 61     STA (ram_0061),Y
C - - - - - 0x00C65C 03:C64C: A9 01     LDA #$01
C - - - - - 0x00C65E 03:C64E: C8        INY
C - - - - - 0x00C65F 03:C64F: 91 61     STA (ram_0061),Y
bra_C651_RTS:
C - - - - - 0x00C661 03:C651: 60        RTS



sub_C652:
loc_C652:
C - - - - - 0x00C662 03:C652: A0 18     LDY #$18
C - - - - - 0x00C664 03:C654: 91 61     STA (ram_0061),Y
C - - - - - 0x00C666 03:C656: 88        DEY
C - - - - - 0x00C667 03:C657: 68        PLA
C - - - - - 0x00C668 03:C658: 91 61     STA (ram_0061),Y
C - - - - - 0x00C66A 03:C65A: 88        DEY
C - - - - - 0x00C66B 03:C65B: 68        PLA
C - - - - - 0x00C66C 03:C65C: 91 61     STA (ram_0061),Y
C - - - - - 0x00C66E 03:C65E: 4C 55 DF  JMP loc_DF55


; bzk garbage
loc_C661:
- - - - - - 0x00C671 03:C661: A9 FF     LDA #$FF
- - - - - - 0x00C673 03:C663: 4C 52 C6  JMP loc_C652


; bzk garbage
loc_C666:
- - - - - - 0x00C676 03:C666: A0 18     LDY #$18
- - - - - - 0x00C678 03:C668: A9 01     LDA #$01
- - - - - - 0x00C67A 03:C66A: 91 61     STA (ram_0061),Y
- - - - - - 0x00C67C 03:C66C: 60        RTS



sub_C66D:
loc_C66D:
C - - - - - 0x00C67D 03:C66D: A0 0F     LDY #$0F
C - - - - - 0x00C67F 03:C66F: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C681 03:C671: 18        CLC
C - - - - - 0x00C682 03:C672: 69 01     ADC #$01
C - - - - - 0x00C684 03:C674: 91 61     STA (ram_0061),Y
C - - - - - 0x00C686 03:C676: 60        RTS



sub_C677:
loc_C677:
C - - - - - 0x00C687 03:C677: A0 0F     LDY #$0F
C - - - - - 0x00C689 03:C679: A9 00     LDA #$00
C - - - - - 0x00C68B 03:C67B: 91 61     STA (ram_0061),Y
C - - - - - 0x00C68D 03:C67D: 60        RTS



sub_C67E:
loc_C67E:
C - - - - - 0x00C68E 03:C67E: A0 14     LDY #$14
C - - - - - 0x00C690 03:C680: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C692 03:C682: 85 2A     STA ram_002A
C - - - - - 0x00C694 03:C684: C8        INY
C - - - - - 0x00C695 03:C685: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C697 03:C687: 06 2A     ASL ram_002A
C - - - - - 0x00C699 03:C689: 0A        ASL
C - - - - - 0x00C69A 03:C68A: 06 2A     ASL ram_002A
C - - - - - 0x00C69C 03:C68C: 0A        ASL
C - - - - - 0x00C69D 03:C68D: 06 2A     ASL ram_002A
C - - - - - 0x00C69F 03:C68F: 0A        ASL
C - - - - - 0x00C6A0 03:C690: 06 2A     ASL ram_002A
C - - - - - 0x00C6A2 03:C692: 0A        ASL
C - - - - - 0x00C6A3 03:C693: 06 2A     ASL ram_002A
C - - - - - 0x00C6A5 03:C695: 0A        ASL
C - - - - - 0x00C6A6 03:C696: A0 10     LDY #$10
C - - - - - 0x00C6A8 03:C698: 18        CLC
C - - - - - 0x00C6A9 03:C699: 71 61     ADC (ram_0061),Y
C - - - - - 0x00C6AB 03:C69B: 91 61     STA (ram_0061),Y
C - - - - - 0x00C6AD 03:C69D: 90 19     BCC bra_C6B8_RTS
C - - - - - 0x00C6AF 03:C69F: 88        DEY
C - - - - - 0x00C6B0 03:C6A0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C6B2 03:C6A2: 18        CLC
C - - - - - 0x00C6B3 03:C6A3: 69 01     ADC #$01
C - - - - - 0x00C6B5 03:C6A5: 29 03     AND #$03
C - - - - - 0x00C6B7 03:C6A7: 91 61     STA (ram_0061),Y
C - - - - - 0x00C6B9 03:C6A9: A9 04     LDA #con_anim_run_gk
C - - - - - 0x00C6BB 03:C6AB: A4 6F     LDY ram_plr_local_id
C - - - - - 0x00C6BD 03:C6AD: F0 06     BEQ bra_C6B5
C - - - - - 0x00C6BF 03:C6AF: C0 0B     CPY #$0B
C - - - - - 0x00C6C1 03:C6B1: F0 02     BEQ bra_C6B5
C - - - - - 0x00C6C3 03:C6B3: A9 03     LDA #con_anim_run_player
bra_C6B5:
C - - - - - 0x00C6C5 03:C6B5: 20 1E 80  JSR sub_0x00402E_set_animation
bra_C6B8_RTS:
C - - - - - 0x00C6C8 03:C6B8: 60        RTS



sub_C6B9:
loc_C6B9:
C - - - - - 0x00C6C9 03:C6B9: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00C6CC 03:C6BC: C9 0B     CMP #$0B
C - - - - - 0x00C6CE 03:C6BE: A9 00     LDA #$00
C - - - - - 0x00C6D0 03:C6C0: 90 02     BCC bra_C6C4
C - - - - - 0x00C6D2 03:C6C2: A9 0B     LDA #$0B
bra_C6C4:
C - - - - - 0x00C6D4 03:C6C4: CD AD 03  CMP ram_team_w_ball
C - - - - - 0x00C6D7 03:C6C7: 8D 28 04  STA ram_0428
C - - - - - 0x00C6DA 03:C6CA: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00C6DD 03:C6CD: F0 0B     BEQ bra_C6DA
C - - - - - 0x00C6DF 03:C6CF: A9 80     LDA #$80
C - - - - - 0x00C6E1 03:C6D1: 0D 2C 04  ORA ram_042C
C - - - - - 0x00C6E4 03:C6D4: 8D 2C 04  STA ram_042C
C - - - - - 0x00C6E7 03:C6D7: 20 E1 C6  JSR sub_C6E1
bra_C6DA:
C - - - - - 0x00C6EA 03:C6DA: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00C6ED 03:C6DD: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00C6F0 03:C6E0: 60        RTS



sub_C6E1:
loc_C6E1:
C - - - - - 0x00C6F1 03:C6E1: AD 2A 04  LDA ram_plr_wo_ball
C - - - - - 0x00C6F4 03:C6E4: 30 10     BMI bra_C6F6
C - - - - - 0x00C6F6 03:C6E6: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00C6F9 03:C6E9: A0 00     LDY #$00
C - - - - - 0x00C6FB 03:C6EB: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C6FD 03:C6ED: 29 FB     AND #$FB
C - - - - - 0x00C6FF 03:C6EF: 91 61     STA (ram_0061),Y
C - - - - - 0x00C701 03:C6F1: A9 00     LDA #$00
C - - - - - 0x00C703 03:C6F3: 20 2F C6  JSR sub_C62F
bra_C6F6:
loc_C6F6:
C - - - - - 0x00C706 03:C6F6: 20 1D C7  JSR sub_C71D
C - - - - - 0x00C709 03:C6F9: B0 08     BCS bra_C703
C - - - - - 0x00C70B 03:C6FB: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00C70E 03:C6FE: 49 0B     EOR #$0B
C - - - - - 0x00C710 03:C700: 20 5B C9  JSR sub_C95B
bra_C703:
C - - - - - 0x00C713 03:C703: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00C716 03:C706: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00C719 03:C709: A0 00     LDY #$00
C - - - - - 0x00C71B 03:C70B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C71D 03:C70D: 29 04     AND #$04
C - - - - - 0x00C71F 03:C70F: D0 06     BNE bra_C717
C - - - - - 0x00C721 03:C711: A9 04     LDA #$04
C - - - - - 0x00C723 03:C713: 20 2F C6  JSR sub_C62F
C - - - - - 0x00C726 03:C716: 60        RTS
bra_C717:
- - - - - - 0x00C727 03:C717: A9 FF     LDA #$FF
- - - - - - 0x00C729 03:C719: 8D 2A 04  STA ram_plr_wo_ball
- - - - - - 0x00C72C 03:C71C: 60        RTS



sub_C71D:
loc_C71D:
C - - - - - 0x00C72D 03:C71D: AE BC 03  LDX ram_03BC
C - - - - - 0x00C730 03:C720: AC BD 03  LDY ram_03BD
C - - - - - 0x00C733 03:C723: 38        SEC
C - - - - - 0x00C734 03:C724: 8A        TXA
C - - - - - 0x00C735 03:C725: E9 60     SBC #$60
C - - - - - 0x00C737 03:C727: 98        TYA
C - - - - - 0x00C738 03:C728: E9 02     SBC #$02
C - - - - - 0x00C73A 03:C72A: 90 0E     BCC bra_C73A
C - - - - - 0x00C73C 03:C72C: A9 00     LDA #$00
C - - - - - 0x00C73E 03:C72E: AE 29 04  LDX ram_plr_w_ball
C - - - - - 0x00C741 03:C731: 30 1D     BMI bra_C750
C - - - - - 0x00C743 03:C733: E0 0B     CPX #$0B
C - - - - - 0x00C745 03:C735: B0 19     BCS bra_C750
C - - - - - 0x00C747 03:C737: 4C 4E C7  JMP loc_C74E
bra_C73A:
C - - - - - 0x00C74A 03:C73A: 38        SEC
C - - - - - 0x00C74B 03:C73B: 8A        TXA
C - - - - - 0x00C74C 03:C73C: E9 B0     SBC #$B0
C - - - - - 0x00C74E 03:C73E: 98        TYA
C - - - - - 0x00C74F 03:C73F: E9 00     SBC #$00
C - - - - - 0x00C751 03:C741: B0 0B     BCS bra_C74E
C - - - - - 0x00C753 03:C743: A9 0B     LDA #$0B
C - - - - - 0x00C755 03:C745: AE 29 04  LDX ram_plr_w_ball
C - - - - - 0x00C758 03:C748: 30 06     BMI bra_C750
C - - - - - 0x00C75A 03:C74A: E0 0B     CPX #$0B
C - - - - - 0x00C75C 03:C74C: 90 02     BCC bra_C750
bra_C74E:
loc_C74E:
C D 2 - - - 0x00C75E 03:C74E: 18        CLC
C - - - - - 0x00C75F 03:C74F: 60        RTS
bra_C750:
C - - - - - 0x00C760 03:C750: 38        SEC
C - - - - - 0x00C761 03:C751: 60        RTS



loc_C752:
C D 2 - - - 0x00C762 03:C752: 86 43     STX ram_0043
C - - - - - 0x00C764 03:C754: 84 44     STY ram_0044
loc_C756:
C D 2 - - - 0x00C766 03:C756: A0 00     LDY #$00
C - - - - - 0x00C768 03:C758: B1 43     LDA (ram_0043),Y
C - - - - - 0x00C76A 03:C75A: F0 41     BEQ bra_C79D_RTS
C - - - - - 0x00C76C 03:C75C: 48        PHA
bra_C75D:
C - - - - - 0x00C76D 03:C75D: A9 01     LDA #$01
C - - - - - 0x00C76F 03:C75F: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00C772 03:C762: AD 7D 03  LDA ram_037D
C - - - - - 0x00C775 03:C765: D0 F6     BNE bra_C75D
C - - - - - 0x00C777 03:C767: A9 01     LDA #$01
C - - - - - 0x00C779 03:C769: 8D 7D 03  STA ram_037D
C - - - - - 0x00C77C 03:C76C: 68        PLA
C - - - - - 0x00C77D 03:C76D: AA        TAX
C - - - - - 0x00C77E 03:C76E: 8D 0D 03  STA ram_030D
C - - - - - 0x00C781 03:C771: C8        INY
C - - - - - 0x00C782 03:C772: B1 43     LDA (ram_0043),Y
C - - - - - 0x00C784 03:C774: 8D 0E 03  STA ram_030E
C - - - - - 0x00C787 03:C777: C8        INY
C - - - - - 0x00C788 03:C778: B1 43     LDA (ram_0043),Y
C - - - - - 0x00C78A 03:C77A: 8D 0F 03  STA ram_030F
C - - - - - 0x00C78D 03:C77D: C8        INY
bra_C77E:
C - - - - - 0x00C78E 03:C77E: B1 43     LDA (ram_0043),Y
C - - - - - 0x00C790 03:C780: 99 0D 03  STA ram_030D,Y
C - - - - - 0x00C793 03:C783: C8        INY
C - - - - - 0x00C794 03:C784: CA        DEX
C - - - - - 0x00C795 03:C785: D0 F7     BNE bra_C77E
C - - - - - 0x00C797 03:C787: 8A        TXA
C - - - - - 0x00C798 03:C788: 99 0D 03  STA ram_030D,Y
C - - - - - 0x00C79B 03:C78B: 98        TYA
C - - - - - 0x00C79C 03:C78C: 18        CLC
C - - - - - 0x00C79D 03:C78D: 65 43     ADC ram_0043
C - - - - - 0x00C79F 03:C78F: 85 43     STA ram_0043
C - - - - - 0x00C7A1 03:C791: 90 02     BCC bra_C795
C - - - - - 0x00C7A3 03:C793: E6 44     INC ram_0044
bra_C795:
C - - - - - 0x00C7A5 03:C795: A9 80     LDA #$80
C - - - - - 0x00C7A7 03:C797: 8D 7D 03  STA ram_037D
C - - - - - 0x00C7AA 03:C79A: 4C 56 C7  JMP loc_C756
bra_C79D_RTS:
C - - - - - 0x00C7AD 03:C79D: 60        RTS



sub_C79E:
loc_C79E:
C - - - - - 0x00C7AE 03:C79E: 0A        ASL
C - - - - - 0x00C7AF 03:C79F: 85 2A     STA ram_002A
C - - - - - 0x00C7B1 03:C7A1: 0A        ASL
C - - - - - 0x00C7B2 03:C7A2: 65 2A     ADC ram_002A
C - - - - - 0x00C7B4 03:C7A4: 85 2A     STA ram_002A
C - - - - - 0x00C7B6 03:C7A6: A0 13     LDY #$13
C - - - - - 0x00C7B8 03:C7A8: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C7BA 03:C7AA: 18        CLC
C - - - - - 0x00C7BB 03:C7AB: 69 10     ADC #$10
C - - - - - 0x00C7BD 03:C7AD: 29 E0     AND #$E0
C - - - - - 0x00C7BF 03:C7AF: 4A        LSR
C - - - - - 0x00C7C0 03:C7B0: 4A        LSR
C - - - - - 0x00C7C1 03:C7B1: 4A        LSR
C - - - - - 0x00C7C2 03:C7B2: 4A        LSR
C - - - - - 0x00C7C3 03:C7B3: 4A        LSR
C - - - - - 0x00C7C4 03:C7B4: AA        TAX
C - - - - - 0x00C7C5 03:C7B5: BD 11 C8  LDA tbl_C811,X
C - - - - - 0x00C7C8 03:C7B8: 18        CLC
C - - - - - 0x00C7C9 03:C7B9: 65 2A     ADC ram_002A
C - - - - - 0x00C7CB 03:C7BB: 85 2A     STA ram_002A
C - - - - - 0x00C7CD 03:C7BD: AA        TAX
C - - - - - 0x00C7CE 03:C7BE: A0 01     LDY #$01
C - - - - - 0x00C7D0 03:C7C0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C7D2 03:C7C2: 29 40     AND #$40
C - - - - - 0x00C7D4 03:C7C4: 08        PHP
C - - - - - 0x00C7D5 03:C7C5: BD 19 C8  LDA tbl_C819,X
C - - - - - 0x00C7D8 03:C7C8: 28        PLP
C - - - - - 0x00C7D9 03:C7C9: F0 05     BEQ bra_C7D0
C - - - - - 0x00C7DB 03:C7CB: 49 FF     EOR #$FF
C - - - - - 0x00C7DD 03:C7CD: 18        CLC
C - - - - - 0x00C7DE 03:C7CE: 69 01     ADC #$01
bra_C7D0:
C - - - - - 0x00C7E0 03:C7D0: 48        PHA
C - - - - - 0x00C7E1 03:C7D1: A0 05     LDY #$05
C - - - - - 0x00C7E3 03:C7D3: 18        CLC
C - - - - - 0x00C7E4 03:C7D4: 71 61     ADC (ram_0061),Y
C - - - - - 0x00C7E6 03:C7D6: 8D D8 03  STA ram_03D8
C - - - - - 0x00C7E9 03:C7D9: C8        INY
C - - - - - 0x00C7EA 03:C7DA: C8        INY
C - - - - - 0x00C7EB 03:C7DB: A2 00     LDX #$00
C - - - - - 0x00C7ED 03:C7DD: 68        PLA
C - - - - - 0x00C7EE 03:C7DE: 10 01     BPL bra_C7E1
C - - - - - 0x00C7F0 03:C7E0: CA        DEX
bra_C7E1:
C - - - - - 0x00C7F1 03:C7E1: 8A        TXA
C - - - - - 0x00C7F2 03:C7E2: 71 61     ADC (ram_0061),Y
C - - - - - 0x00C7F4 03:C7E4: 8D DA 03  STA ram_03DA
C - - - - - 0x00C7F7 03:C7E7: A0 01     LDY #$01
C - - - - - 0x00C7F9 03:C7E9: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C7FB 03:C7EB: 08        PHP
C - - - - - 0x00C7FC 03:C7EC: A6 2A     LDX ram_002A
C - - - - - 0x00C7FE 03:C7EE: BD 1A C8  LDA tbl_C81A,X
C - - - - - 0x00C801 03:C7F1: 28        PLP
C - - - - - 0x00C802 03:C7F2: 10 05     BPL bra_C7F9
C - - - - - 0x00C804 03:C7F4: 49 FF     EOR #$FF
C - - - - - 0x00C806 03:C7F6: 18        CLC
C - - - - - 0x00C807 03:C7F7: 69 01     ADC #$01
bra_C7F9:
C - - - - - 0x00C809 03:C7F9: 48        PHA
C - - - - - 0x00C80A 03:C7FA: A0 0B     LDY #$0B
C - - - - - 0x00C80C 03:C7FC: 18        CLC
C - - - - - 0x00C80D 03:C7FD: 71 61     ADC (ram_0061),Y
C - - - - - 0x00C80F 03:C7FF: 8D DE 03  STA ram_03DE
C - - - - - 0x00C812 03:C802: C8        INY
C - - - - - 0x00C813 03:C803: C8        INY
C - - - - - 0x00C814 03:C804: A2 00     LDX #$00
C - - - - - 0x00C816 03:C806: 68        PLA
C - - - - - 0x00C817 03:C807: 10 01     BPL bra_C80A
C - - - - - 0x00C819 03:C809: CA        DEX
bra_C80A:
C - - - - - 0x00C81A 03:C80A: 8A        TXA
C - - - - - 0x00C81B 03:C80B: 71 61     ADC (ram_0061),Y
C - - - - - 0x00C81D 03:C80D: 8D E0 03  STA ram_03E0
C - - - - - 0x00C820 03:C810: 60        RTS



tbl_C811:
; сложение с индексом поворота
- D 2 - - - 0x00C821 03:C811: 00        .byte $00   ; 
- D 2 - - - 0x00C822 03:C812: 02        .byte $02   ; 
- D 2 - - - 0x00C823 03:C813: 04        .byte $04   ; 
- D 2 - - - 0x00C824 03:C814: 02        .byte $02   ; 
- D 2 - - - 0x00C825 03:C815: 00        .byte $00   ; 
- D 2 - - - 0x00C826 03:C816: 02        .byte $02   ; 
- D 2 - - - 0x00C827 03:C817: 04        .byte $04   ; 
- D 2 - - - 0x00C828 03:C818: 02        .byte $02   ; 



; BallPositionRelativeX_table:
; BallPositionRelativeY_table = BallPositionRelativeX_table + $01
; 21 позиций мяча относительно игрока (X и Y)
; с учетом стороны поворота игрока и его действия
tbl_C819:
- D 2 - - - 0x00C829 03:C819: 01        .byte $01   ; 
tbl_C81A:
- D 2 - - - 0x00C82A 03:C81A: F7        .byte $F7   ; 
- D 2 - - - 0x00C82B 03:C81B: FB        .byte $FB   ; 
- D 2 - - - 0x00C82C 03:C81C: F9        .byte $F9   ; 
- D 2 - - - 0x00C82D 03:C81D: F7        .byte $F7   ; 
- D 2 - - - 0x00C82E 03:C81E: 02        .byte $02   ; 
- D 2 - - - 0x00C82F 03:C81F: 00        .byte $00   ; 
- D 2 - - - 0x00C830 03:C820: FA        .byte $FA   ; 
- D 2 - - - 0x00C831 03:C821: F6        .byte $F6   ; 
- D 2 - - - 0x00C832 03:C822: FB        .byte $FB   ; 
- D 2 - - - 0x00C833 03:C823: FA        .byte $FA   ; 
- D 2 - - - 0x00C834 03:C824: 00        .byte $00   ; 
- - - - - - 0x00C835 03:C825: 00        .byte $00   ; 
- - - - - - 0x00C836 03:C826: 04        .byte $04   ; 
- D 2 - - - 0x00C837 03:C827: 06        .byte $06   ; 
- D 2 - - - 0x00C838 03:C828: 06        .byte $06   ; 
- D 2 - - - 0x00C839 03:C829: 07        .byte $07   ; 
- D 2 - - - 0x00C83A 03:C82A: 01        .byte $01   ; 
- - - - - - 0x00C83B 03:C82B: 00        .byte $00   ; 
- - - - - - 0x00C83C 03:C82C: 04        .byte $04   ; 
- D 2 - - - 0x00C83D 03:C82D: FD        .byte $FD   ; 
- D 2 - - - 0x00C83E 03:C82E: FD        .byte $FD   ; 
- D 2 - - - 0x00C83F 03:C82F: FC        .byte $FC   ; 
- D 2 - - - 0x00C840 03:C830: 00        .byte $00   ; 
- D 2 - - - 0x00C841 03:C831: 01        .byte $01   ; 
- D 2 - - - 0x00C842 03:C832: FD        .byte $FD   ; 
- D 2 - - - 0x00C843 03:C833: FF        .byte $FF   ; 
- D 2 - - - 0x00C844 03:C834: FF        .byte $FF   ; 
- D 2 - - - 0x00C845 03:C835: FD        .byte $FD   ; 
- D 2 - - - 0x00C846 03:C836: 01        .byte $01   ; 
- D 2 - - - 0x00C847 03:C837: 02        .byte $02   ; 
- D 2 - - - 0x00C848 03:C838: 00        .byte $00   ; 
- D 2 - - - 0x00C849 03:C839: 04        .byte $04   ; 
- D 2 - - - 0x00C84A 03:C83A: 00        .byte $00   ; 
- D 2 - - - 0x00C84B 03:C83B: 00        .byte $00   ; 
- D 2 - - - 0x00C84C 03:C83C: 02        .byte $02   ; 
- D 2 - - - 0x00C84D 03:C83D: 00        .byte $00   ; 
- D 2 - - - 0x00C84E 03:C83E: FD        .byte $FD   ; 
- D 2 - - - 0x00C84F 03:C83F: FD        .byte $FD   ; 
- D 2 - - - 0x00C850 03:C840: FD        .byte $FD   ; 
- D 2 - - - 0x00C851 03:C841: 00        .byte $00   ; 
- D 2 - - - 0x00C852 03:C842: FD        .byte $FD   ; 



sub_C843:
loc_C843:
C - - - - - 0x00C853 03:C843: 38        SEC
C - - - - - 0x00C854 03:C844: A0 05     LDY #$05
C - - - - - 0x00C856 03:C846: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C858 03:C848: E9 10     SBC #$10
C - - - - - 0x00C85A 03:C84A: AA        TAX
C - - - - - 0x00C85B 03:C84B: C8        INY
C - - - - - 0x00C85C 03:C84C: C8        INY
C - - - - - 0x00C85D 03:C84D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C85F 03:C84F: E9 00     SBC #$00
C - - - - - 0x00C861 03:C851: B0 03     BCS bra_C856
C - - - - - 0x00C863 03:C853: A9 00     LDA #$00
C - - - - - 0x00C865 03:C855: AA        TAX
bra_C856:
C - - - - - 0x00C866 03:C856: A8        TAY
C - - - - - 0x00C867 03:C857: A9 00     LDA #$00
loc_C859:
C D 2 - - - 0x00C869 03:C859: 48        PHA
C - - - - - 0x00C86A 03:C85A: 38        SEC
C - - - - - 0x00C86B 03:C85B: 8A        TXA
C - - - - - 0x00C86C 03:C85C: E9 30     SBC #$30
C - - - - - 0x00C86E 03:C85E: AA        TAX
C - - - - - 0x00C86F 03:C85F: 98        TYA
C - - - - - 0x00C870 03:C860: E9 00     SBC #$00
C - - - - - 0x00C872 03:C862: A8        TAY
C - - - - - 0x00C873 03:C863: 68        PLA
C - - - - - 0x00C874 03:C864: 90 05     BCC bra_C86B
C - - - - - 0x00C876 03:C866: 69 00     ADC #$00
C - - - - - 0x00C878 03:C868: 4C 59 C8  JMP loc_C859
bra_C86B:
C - - - - - 0x00C87B 03:C86B: C9 0A     CMP #$0A
C - - - - - 0x00C87D 03:C86D: 90 02     BCC bra_C871
C - - - - - 0x00C87F 03:C86F: A9 00     LDA #$00
bra_C871:
C - - - - - 0x00C881 03:C871: 48        PHA
C - - - - - 0x00C882 03:C872: 38        SEC
C - - - - - 0x00C883 03:C873: A0 0B     LDY #$0B
C - - - - - 0x00C885 03:C875: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C887 03:C877: E9 98     SBC #$98
C - - - - - 0x00C889 03:C879: AA        TAX
C - - - - - 0x00C88A 03:C87A: C8        INY
C - - - - - 0x00C88B 03:C87B: C8        INY
C - - - - - 0x00C88C 03:C87C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C88E 03:C87E: E9 00     SBC #$00
C - - - - - 0x00C890 03:C880: B0 03     BCS bra_C885
C - - - - - 0x00C892 03:C882: A9 00     LDA #$00
C - - - - - 0x00C894 03:C884: AA        TAX
bra_C885:
C - - - - - 0x00C895 03:C885: A8        TAY
C - - - - - 0x00C896 03:C886: 68        PLA
bra_C887:
C - - - - - 0x00C897 03:C887: 48        PHA
C - - - - - 0x00C898 03:C888: 38        SEC
C - - - - - 0x00C899 03:C889: 8A        TXA
C - - - - - 0x00C89A 03:C88A: E9 30     SBC #$30
C - - - - - 0x00C89C 03:C88C: AA        TAX
C - - - - - 0x00C89D 03:C88D: 98        TYA
C - - - - - 0x00C89E 03:C88E: E9 00     SBC #$00
C - - - - - 0x00C8A0 03:C890: A8        TAY
C - - - - - 0x00C8A1 03:C891: 68        PLA
C - - - - - 0x00C8A2 03:C892: 90 08     BCC bra_C89C_RTS
C - - - - - 0x00C8A4 03:C894: 69 09     ADC #$09
C - - - - - 0x00C8A6 03:C896: C9 96     CMP #$96
C - - - - - 0x00C8A8 03:C898: 90 ED     BCC bra_C887
C - - - - - 0x00C8AA 03:C89A: E9 0A     SBC #$0A
bra_C89C_RTS:
C - - - - - 0x00C8AC 03:C89C: 60        RTS



loc_C89D:
C D 2 - - - 0x00C8AD 03:C89D: A2 00     LDX #$00
bra_C89F_loop:
C - - - - - 0x00C8AF 03:C89F: C9 0A     CMP #$0A
C - - - - - 0x00C8B1 03:C8A1: 90 05     BCC bra_C8A8
C - - - - - 0x00C8B3 03:C8A3: E9 0A     SBC #$0A
C - - - - - 0x00C8B5 03:C8A5: E8        INX
C - - - - - 0x00C8B6 03:C8A6: D0 F7     BNE bra_C89F_loop
bra_C8A8:
C - - - - - 0x00C8B8 03:C8A8: 86 37     STX ram_0037
C - - - - - 0x00C8BA 03:C8AA: 20 D3 C8  JSR sub_C8D3
C - - - - - 0x00C8BD 03:C8AD: 8A        TXA
C - - - - - 0x00C8BE 03:C8AE: 18        CLC
C - - - - - 0x00C8BF 03:C8AF: 69 28     ADC #$28
C - - - - - 0x00C8C1 03:C8B1: AA        TAX
C - - - - - 0x00C8C2 03:C8B2: 98        TYA
C - - - - - 0x00C8C3 03:C8B3: 69 00     ADC #$00
C - - - - - 0x00C8C5 03:C8B5: A0 1B     LDY #$1B
C - - - - - 0x00C8C7 03:C8B7: 91 61     STA (ram_0061),Y
C - - - - - 0x00C8C9 03:C8B9: 88        DEY
C - - - - - 0x00C8CA 03:C8BA: 8A        TXA
C - - - - - 0x00C8CB 03:C8BB: 91 61     STA (ram_0061),Y
C - - - - - 0x00C8CD 03:C8BD: A5 37     LDA ram_0037
C - - - - - 0x00C8CF 03:C8BF: 20 D3 C8  JSR sub_C8D3
C - - - - - 0x00C8D2 03:C8C2: 8A        TXA
C - - - - - 0x00C8D3 03:C8C3: 18        CLC
C - - - - - 0x00C8D4 03:C8C4: 69 B0     ADC #$B0
C - - - - - 0x00C8D6 03:C8C6: AA        TAX
C - - - - - 0x00C8D7 03:C8C7: 98        TYA
C - - - - - 0x00C8D8 03:C8C8: 69 00     ADC #$00
C - - - - - 0x00C8DA 03:C8CA: A0 1D     LDY #$1D
C - - - - - 0x00C8DC 03:C8CC: 91 61     STA (ram_0061),Y
C - - - - - 0x00C8DE 03:C8CE: 88        DEY
C - - - - - 0x00C8DF 03:C8CF: 8A        TXA
C - - - - - 0x00C8E0 03:C8D0: 91 61     STA (ram_0061),Y
C - - - - - 0x00C8E2 03:C8D2: 60        RTS



sub_C8D3:
C - - - - - 0x00C8E3 03:C8D3: A2 00     LDX #$00
C - - - - - 0x00C8E5 03:C8D5: 86 39     STX ram_0039
C - - - - - 0x00C8E7 03:C8D7: 0A        ASL
C - - - - - 0x00C8E8 03:C8D8: 0A        ASL
C - - - - - 0x00C8E9 03:C8D9: 0A        ASL
C - - - - - 0x00C8EA 03:C8DA: 0A        ASL
C - - - - - 0x00C8EB 03:C8DB: 85 38     STA ram_0038
C - - - - - 0x00C8ED 03:C8DD: 26 39     ROL ram_0039
C - - - - - 0x00C8EF 03:C8DF: A4 39     LDY ram_0039
C - - - - - 0x00C8F1 03:C8E1: 0A        ASL
C - - - - - 0x00C8F2 03:C8E2: 26 39     ROL ram_0039
C - - - - - 0x00C8F4 03:C8E4: 65 38     ADC ram_0038
C - - - - - 0x00C8F6 03:C8E6: AA        TAX
C - - - - - 0x00C8F7 03:C8E7: 98        TYA
C - - - - - 0x00C8F8 03:C8E8: 65 39     ADC ram_0039
C - - - - - 0x00C8FA 03:C8EA: A8        TAY
C - - - - - 0x00C8FB 03:C8EB: 60        RTS



sub_C8EC:
C - - - - - 0x00C8FC 03:C8EC: A9 B4     LDA #$B4
C - - - - - 0x00C8FE 03:C8EE: 85 2A     STA ram_002A
C - - - - - 0x00C900 03:C8F0: A9 03     LDA #$03
C - - - - - 0x00C902 03:C8F2: 85 2B     STA ram_002B
C - - - - - 0x00C904 03:C8F4: A2 03     LDX #$03
C - - - - - 0x00C906 03:C8F6: A9 00     LDA #$00
C - - - - - 0x00C908 03:C8F8: A8        TAY
loc_C8F9:
C D 2 - - - 0x00C909 03:C8F9: CA        DEX
C - - - - - 0x00C90A 03:C8FA: 30 0A     BMI bra_C906
bra_C8FC:
C - - - - - 0x00C90C 03:C8FC: 91 2A     STA (ram_002A),Y
C - - - - - 0x00C90E 03:C8FE: C8        INY
C - - - - - 0x00C90F 03:C8FF: D0 FB     BNE bra_C8FC
C - - - - - 0x00C911 03:C901: E6 2B     INC ram_002B
C - - - - - 0x00C913 03:C903: 4C F9 C8  JMP loc_C8F9
bra_C906:
C - - - - - 0x00C916 03:C906: A0 B5     LDY #$B5
C - - - - - 0x00C918 03:C908: F0 05     BEQ bra_C90F_RTS
bra_C90A:
C - - - - - 0x00C91A 03:C90A: 91 2A     STA (ram_002A),Y
C - - - - - 0x00C91C 03:C90C: C8        INY
C - - - - - 0x00C91D 03:C90D: D0 FB     BNE bra_C90A
bra_C90F_RTS:
C - - - - - 0x00C91F 03:C90F: 60        RTS



loc_C910_prepare_sound:
sub_C910_prepare_sound:
C D 2 - - - 0x00C920 03:C910: AC 00 07  LDY ram_0700
C - - - - - 0x00C923 03:C913: C0 04     CPY #$04
C - - - - - 0x00C925 03:C915: B0 06     BCS bra_C91D_RTS
C - - - - - 0x00C927 03:C917: 99 01 07  STA ram_0701,Y
C - - - - - 0x00C92A 03:C91A: EE 00 07  INC ram_0700
bra_C91D_RTS:
C - - - - - 0x00C92D 03:C91D: 60        RTS



loc_C91E:
sub_C91E:
C D 2 - - - 0x00C92E 03:C91E: 8A        TXA
C - - - - - 0x00C92F 03:C91F: 49 FF     EOR #$FF
C - - - - - 0x00C931 03:C921: AA        TAX
C - - - - - 0x00C932 03:C922: 98        TYA
C - - - - - 0x00C933 03:C923: 49 FF     EOR #$FF
C - - - - - 0x00C935 03:C925: A8        TAY
C - - - - - 0x00C936 03:C926: E8        INX
C - - - - - 0x00C937 03:C927: D0 01     BNE bra_C92A_RTS
C - - - - - 0x00C939 03:C929: C8        INY
bra_C92A_RTS:
C - - - - - 0x00C93A 03:C92A: 60        RTS



sub_C92B:
loc_C92B:
C - - - - - 0x00C93B 03:C92B: C9 0B     CMP #$0B
C - - - - - 0x00C93D 03:C92D: A9 00     LDA #$00
C - - - - - 0x00C93F 03:C92F: 90 02     BCC bra_C933
C - - - - - 0x00C941 03:C931: A9 0B     LDA #$0B
bra_C933:
C - - - - - 0x00C943 03:C933: 8D 28 04  STA ram_0428
C - - - - - 0x00C946 03:C936: 60        RTS



sub_C937:
loc_C937:
C - - - - - 0x00C947 03:C937: A0 00     LDY #$00
C - - - - - 0x00C949 03:C939: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C94B 03:C93B: 09 01     ORA #$01
C - - - - - 0x00C94D 03:C93D: 91 61     STA (ram_0061),Y
C - - - - - 0x00C94F 03:C93F: 60        RTS



sub_C940:
loc_C940:
C - - - - - 0x00C950 03:C940: A0 00     LDY #$00
C - - - - - 0x00C952 03:C942: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C954 03:C944: 29 FE     AND #$FE
C - - - - - 0x00C956 03:C946: 91 61     STA (ram_0061),Y
C - - - - - 0x00C958 03:C948: 60        RTS


; bzk garbage
- - - - - - 0x00C959 03:C949: A0 00     LDY #$00
- - - - - - 0x00C95B 03:C94B: B1 61     LDA (ram_0061),Y
- - - - - - 0x00C95D 03:C94D: 09 04     ORA #$04
- - - - - - 0x00C95F 03:C94F: 91 61     STA (ram_0061),Y
- - - - - - 0x00C961 03:C951: 60        RTS
- - - - - - 0x00C962 03:C952: A0 00     LDY #$00
- - - - - - 0x00C964 03:C954: B1 61     LDA (ram_0061),Y
- - - - - - 0x00C966 03:C956: 29 FB     AND #$FB
- - - - - - 0x00C968 03:C958: 91 61     STA (ram_0061),Y
- - - - - - 0x00C96A 03:C95A: 60        RTS



sub_C95B:
loc_C95B:
C - - - - - 0x00C96B 03:C95B: 85 2A     STA ram_002A
C - - - - - 0x00C96D 03:C95D: E6 2A     INC ram_002A
C - - - - - 0x00C96F 03:C95F: A9 10     LDA #$10
C - - - - - 0x00C971 03:C961: 85 2B     STA ram_002B
C - - - - - 0x00C973 03:C963: A9 00     LDA #$00
C - - - - - 0x00C975 03:C965: 85 2C     STA ram_002C
bra_C967:
loc_C967:
C - - - - - 0x00C977 03:C967: A5 2A     LDA ram_002A
C - - - - - 0x00C979 03:C969: 85 2D     STA ram_002D
C - - - - - 0x00C97B 03:C96B: A9 0A     LDA #$0A
C - - - - - 0x00C97D 03:C96D: 85 2E     STA ram_002E
bra_C96F:
C - - - - - 0x00C97F 03:C96F: A5 2D     LDA ram_002D
C - - - - - 0x00C981 03:C971: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00C984 03:C974: A0 00     LDY #$00
C - - - - - 0x00C986 03:C976: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C988 03:C978: 29 04     AND #$04
C - - - - - 0x00C98A 03:C97A: D0 05     BNE bra_C981
C - - - - - 0x00C98C 03:C97C: 20 98 C9  JSR sub_C998
C - - - - - 0x00C98F 03:C97F: B0 14     BCS bra_C995
bra_C981:
C - - - - - 0x00C991 03:C981: E6 2D     INC ram_002D
C - - - - - 0x00C993 03:C983: C6 2E     DEC ram_002E
C - - - - - 0x00C995 03:C985: D0 E8     BNE bra_C96F
C - - - - - 0x00C997 03:C987: A5 2B     LDA ram_002B
C - - - - - 0x00C999 03:C989: 18        CLC
C - - - - - 0x00C99A 03:C98A: 69 10     ADC #$10
C - - - - - 0x00C99C 03:C98C: 85 2B     STA ram_002B
C - - - - - 0x00C99E 03:C98E: 90 D7     BCC bra_C967
- - - - - - 0x00C9A0 03:C990: E6 2C     INC ram_002C
- - - - - - 0x00C9A2 03:C992: 4C 67 C9  JMP loc_C967
bra_C995:
C - - - - - 0x00C9A5 03:C995: A5 2D     LDA ram_002D
C - - - - - 0x00C9A7 03:C997: 60        RTS



sub_C998:
C - - - - - 0x00C9A8 03:C998: A0 05     LDY #$05
C - - - - - 0x00C9AA 03:C99A: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C9AC 03:C99C: 38        SEC
C - - - - - 0x00C9AD 03:C99D: ED D8 03  SBC ram_03D8
C - - - - - 0x00C9B0 03:C9A0: AA        TAX
C - - - - - 0x00C9B1 03:C9A1: C8        INY
C - - - - - 0x00C9B2 03:C9A2: C8        INY
C - - - - - 0x00C9B3 03:C9A3: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C9B5 03:C9A5: ED DA 03  SBC ram_03DA
C - - - - - 0x00C9B8 03:C9A8: A8        TAY
C - - - - - 0x00C9B9 03:C9A9: B0 03     BCS bra_C9AE
C - - - - - 0x00C9BB 03:C9AB: 20 1E C9  JSR sub_C91E
bra_C9AE:
C - - - - - 0x00C9BE 03:C9AE: 38        SEC
C - - - - - 0x00C9BF 03:C9AF: 8A        TXA
C - - - - - 0x00C9C0 03:C9B0: E5 2B     SBC ram_002B
C - - - - - 0x00C9C2 03:C9B2: 98        TYA
C - - - - - 0x00C9C3 03:C9B3: E5 2C     SBC ram_002C
C - - - - - 0x00C9C5 03:C9B5: B0 21     BCS bra_C9D8
C - - - - - 0x00C9C7 03:C9B7: A0 0B     LDY #$0B
C - - - - - 0x00C9C9 03:C9B9: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C9CB 03:C9BB: 38        SEC
C - - - - - 0x00C9CC 03:C9BC: ED DE 03  SBC ram_03DE
C - - - - - 0x00C9CF 03:C9BF: AA        TAX
C - - - - - 0x00C9D0 03:C9C0: C8        INY
C - - - - - 0x00C9D1 03:C9C1: C8        INY
C - - - - - 0x00C9D2 03:C9C2: B1 61     LDA (ram_0061),Y
C - - - - - 0x00C9D4 03:C9C4: ED E0 03  SBC ram_03E0
C - - - - - 0x00C9D7 03:C9C7: A8        TAY
C - - - - - 0x00C9D8 03:C9C8: B0 03     BCS bra_C9CD
C - - - - - 0x00C9DA 03:C9CA: 20 1E C9  JSR sub_C91E
bra_C9CD:
C - - - - - 0x00C9DD 03:C9CD: 38        SEC
C - - - - - 0x00C9DE 03:C9CE: 8A        TXA
C - - - - - 0x00C9DF 03:C9CF: E5 2B     SBC ram_002B
C - - - - - 0x00C9E1 03:C9D1: 98        TYA
C - - - - - 0x00C9E2 03:C9D2: E5 2C     SBC ram_002C
C - - - - - 0x00C9E4 03:C9D4: B0 02     BCS bra_C9D8
C - - - - - 0x00C9E6 03:C9D6: 38        SEC
C - - - - - 0x00C9E7 03:C9D7: 60        RTS
bra_C9D8:
C - - - - - 0x00C9E8 03:C9D8: 18        CLC
C - - - - - 0x00C9E9 03:C9D9: 60        RTS



sub_C9DA:
loc_C9DA:
C - - - - - 0x00C9EA 03:C9DA: 85 2A     STA ram_002A
C - - - - - 0x00C9EC 03:C9DC: E6 2A     INC ram_002A
C - - - - - 0x00C9EE 03:C9DE: A9 10     LDA #$10
C - - - - - 0x00C9F0 03:C9E0: 85 2B     STA ram_002B
C - - - - - 0x00C9F2 03:C9E2: A9 00     LDA #$00
C - - - - - 0x00C9F4 03:C9E4: 85 2C     STA ram_002C
bra_C9E6:
loc_C9E6:
C D 2 - - - 0x00C9F6 03:C9E6: A5 2A     LDA ram_002A
C - - - - - 0x00C9F8 03:C9E8: 85 2D     STA ram_002D
C - - - - - 0x00C9FA 03:C9EA: A9 0A     LDA #$0A
C - - - - - 0x00C9FC 03:C9EC: 85 2E     STA ram_002E
bra_C9EE:
C - - - - - 0x00C9FE 03:C9EE: A5 2D     LDA ram_002D
C - - - - - 0x00CA00 03:C9F0: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00CA03 03:C9F3: A0 00     LDY #$00
C - - - - - 0x00CA05 03:C9F5: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CA07 03:C9F7: 29 04     AND #$04
C - - - - - 0x00CA09 03:C9F9: D0 05     BNE bra_CA00
C - - - - - 0x00CA0B 03:C9FB: 20 17 CA  JSR sub_CA17
C - - - - - 0x00CA0E 03:C9FE: B0 14     BCS bra_CA14
bra_CA00:
C - - - - - 0x00CA10 03:CA00: E6 2D     INC ram_002D
C - - - - - 0x00CA12 03:CA02: C6 2E     DEC ram_002E
C - - - - - 0x00CA14 03:CA04: D0 E8     BNE bra_C9EE
C - - - - - 0x00CA16 03:CA06: A5 2B     LDA ram_002B
C - - - - - 0x00CA18 03:CA08: 18        CLC
C - - - - - 0x00CA19 03:CA09: 69 10     ADC #$10
C - - - - - 0x00CA1B 03:CA0B: 85 2B     STA ram_002B
C - - - - - 0x00CA1D 03:CA0D: 90 D7     BCC bra_C9E6
C - - - - - 0x00CA1F 03:CA0F: E6 2C     INC ram_002C
C - - - - - 0x00CA21 03:CA11: 4C E6 C9  JMP loc_C9E6
bra_CA14:
C - - - - - 0x00CA24 03:CA14: A5 2D     LDA ram_002D
C - - - - - 0x00CA26 03:CA16: 60        RTS



sub_CA17:
C - - - - - 0x00CA27 03:CA17: A0 05     LDY #$05
C - - - - - 0x00CA29 03:CA19: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CA2B 03:CA1B: 38        SEC
C - - - - - 0x00CA2C 03:CA1C: ED 13 04  SBC ram_ball_land_pos_X_lo
C - - - - - 0x00CA2F 03:CA1F: AA        TAX
C - - - - - 0x00CA30 03:CA20: C8        INY
C - - - - - 0x00CA31 03:CA21: C8        INY
C - - - - - 0x00CA32 03:CA22: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CA34 03:CA24: ED 14 04  SBC ram_ball_land_pos_X_hi
C - - - - - 0x00CA37 03:CA27: A8        TAY
C - - - - - 0x00CA38 03:CA28: B0 03     BCS bra_CA2D
C - - - - - 0x00CA3A 03:CA2A: 20 1E C9  JSR sub_C91E
bra_CA2D:
C - - - - - 0x00CA3D 03:CA2D: 38        SEC
C - - - - - 0x00CA3E 03:CA2E: 8A        TXA
C - - - - - 0x00CA3F 03:CA2F: E5 2B     SBC ram_002B
C - - - - - 0x00CA41 03:CA31: 98        TYA
C - - - - - 0x00CA42 03:CA32: E5 2C     SBC ram_002C
C - - - - - 0x00CA44 03:CA34: B0 21     BCS bra_CA57
C - - - - - 0x00CA46 03:CA36: A0 0B     LDY #$0B
C - - - - - 0x00CA48 03:CA38: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CA4A 03:CA3A: 38        SEC
C - - - - - 0x00CA4B 03:CA3B: ED 15 04  SBC ram_ball_land_pos_Y_lo
C - - - - - 0x00CA4E 03:CA3E: AA        TAX
C - - - - - 0x00CA4F 03:CA3F: C8        INY
C - - - - - 0x00CA50 03:CA40: C8        INY
C - - - - - 0x00CA51 03:CA41: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CA53 03:CA43: ED 16 04  SBC ram_ball_land_pos_Y_hi
C - - - - - 0x00CA56 03:CA46: A8        TAY
C - - - - - 0x00CA57 03:CA47: B0 03     BCS bra_CA4C
C - - - - - 0x00CA59 03:CA49: 20 1E C9  JSR sub_C91E
bra_CA4C:
C - - - - - 0x00CA5C 03:CA4C: 38        SEC
C - - - - - 0x00CA5D 03:CA4D: 8A        TXA
C - - - - - 0x00CA5E 03:CA4E: E5 2B     SBC ram_002B
C - - - - - 0x00CA60 03:CA50: 98        TYA
C - - - - - 0x00CA61 03:CA51: E5 2C     SBC ram_002C
C - - - - - 0x00CA63 03:CA53: B0 02     BCS bra_CA57
C - - - - - 0x00CA65 03:CA55: 38        SEC
C - - - - - 0x00CA66 03:CA56: 60        RTS
bra_CA57:
C - - - - - 0x00CA67 03:CA57: 18        CLC
C - - - - - 0x00CA68 03:CA58: 60        RTS



loc_CA59:
sub_CA59:
C D 2 - - - 0x00CA69 03:CA59: A5 28     LDA ram_0028
C - - - - - 0x00CA6B 03:CA5B: 29 7F     AND #$7F
C - - - - - 0x00CA6D 03:CA5D: 85 28     STA ram_0028
C - - - - - 0x00CA6F 03:CA5F: 8D 00 20  STA $2000
C - - - - - 0x00CA72 03:CA62: A9 06     LDA #$06
C - - - - - 0x00CA74 03:CA64: 8D 01 20  STA $2001
C - - - - - 0x00CA77 03:CA67: A9 20     LDA #$20
C - - - - - 0x00CA79 03:CA69: 20 80 CA  JSR sub_CA80
C - - - - - 0x00CA7C 03:CA6C: A9 24     LDA #$24
C - - - - - 0x00CA7E 03:CA6E: 20 80 CA  JSR sub_CA80
C - - - - - 0x00CA81 03:CA71: A9 1E     LDA #$1E
C - - - - - 0x00CA83 03:CA73: 8D 01 20  STA $2001
C - - - - - 0x00CA86 03:CA76: A5 28     LDA ram_0028
C - - - - - 0x00CA88 03:CA78: 09 80     ORA #$80
C - - - - - 0x00CA8A 03:CA7A: 85 28     STA ram_0028
C - - - - - 0x00CA8C 03:CA7C: 8D 00 20  STA $2000
C - - - - - 0x00CA8F 03:CA7F: 60        RTS



sub_CA80:
C - - - - - 0x00CA90 03:CA80: 2C 02 20  BIT $2002
C - - - - - 0x00CA93 03:CA83: 8D 06 20  STA $2006
C - - - - - 0x00CA96 03:CA86: A9 00     LDA #$00
C - - - - - 0x00CA98 03:CA88: 8D 06 20  STA $2006
C - - - - - 0x00CA9B 03:CA8B: A9 00     LDA #$00
C - - - - - 0x00CA9D 03:CA8D: A2 C0     LDX #$C0
C - - - - - 0x00CA9F 03:CA8F: A0 04     LDY #$04
bra_CA91:
C - - - - - 0x00CAA1 03:CA91: 8D 07 20  STA $2007
C - - - - - 0x00CAA4 03:CA94: CA        DEX
C - - - - - 0x00CAA5 03:CA95: D0 FA     BNE bra_CA91
C - - - - - 0x00CAA7 03:CA97: 88        DEY
C - - - - - 0x00CAA8 03:CA98: D0 F7     BNE bra_CA91
C - - - - - 0x00CAAA 03:CA9A: 8A        TXA
C - - - - - 0x00CAAB 03:CA9B: A2 40     LDX #$40
bra_CA9D:
C - - - - - 0x00CAAD 03:CA9D: 8D 07 20  STA $2007
C - - - - - 0x00CAB0 03:CAA0: CA        DEX
C - - - - - 0x00CAB1 03:CAA1: D0 FA     BNE bra_CA9D
C - - - - - 0x00CAB3 03:CAA3: 2C 02 20  BIT $2002
C - - - - - 0x00CAB6 03:CAA6: A9 00     LDA #$00
C - - - - - 0x00CAB8 03:CAA8: 8D 05 20  STA $2005
C - - - - - 0x00CABB 03:CAAB: 8D 05 20  STA $2005
C - - - - - 0x00CABE 03:CAAE: 60        RTS



loc_CAAF:
sub_CAAF:
C D 2 - - - 0x00CABF 03:CAAF: A0 00     LDY #$00
C - - - - - 0x00CAC1 03:CAB1: A9 F8     LDA #$F8
bra_CAB3_loop:
C - - - - - 0x00CAC3 03:CAB3: 99 00 02  STA ram_spr_Y,Y
C - - - - - 0x00CAC6 03:CAB6: C8        INY
C - - - - - 0x00CAC7 03:CAB7: C8        INY
C - - - - - 0x00CAC8 03:CAB8: C8        INY
C - - - - - 0x00CAC9 03:CAB9: C8        INY
C - - - - - 0x00CACA 03:CABA: D0 F7     BNE bra_CAB3_loop
C - - - - - 0x00CACC 03:CABC: 60        RTS



loc_CABD_bytes_after_JSR:
sub_CABD_bytes_after_JSR:
C D 2 - - - 0x00CACD 03:CABD: 0A        ASL
C - - - - - 0x00CACE 03:CABE: A8        TAY
C - - - - - 0x00CACF 03:CABF: 68        PLA
C - - - - - 0x00CAD0 03:CAC0: 85 3C     STA ram_003C
C - - - - - 0x00CAD2 03:CAC2: 68        PLA
C - - - - - 0x00CAD3 03:CAC3: 85 3D     STA ram_003D
C - - - - - 0x00CAD5 03:CAC5: C8        INY
C - - - - - 0x00CAD6 03:CAC6: B1 3C     LDA (ram_003C),Y
C - - - - - 0x00CAD8 03:CAC8: 48        PHA
C - - - - - 0x00CAD9 03:CAC9: C8        INY
C - - - - - 0x00CADA 03:CACA: B1 3C     LDA (ram_003C),Y
C - - - - - 0x00CADC 03:CACC: 85 3D     STA ram_003D
C - - - - - 0x00CADE 03:CACE: 68        PLA
C - - - - - 0x00CADF 03:CACF: 85 3C     STA ram_003C
C - - - - - 0x00CAE1 03:CAD1: 6C 3C 00  JMP (ram_003C)



loc_CAD4:
sub_CAD4:
C D 2 - - - 0x00CAE4 03:CAD4: A0 00     LDY #$00
C - - - - - 0x00CAE6 03:CAD6: 84 42     STY ram_0042
C - - - - - 0x00CAE8 03:CAD8: 0A        ASL
C - - - - - 0x00CAE9 03:CAD9: 26 42     ROL ram_0042
C - - - - - 0x00CAEB 03:CADB: 0A        ASL
C - - - - - 0x00CAEC 03:CADC: A8        TAY
C - - - - - 0x00CAED 03:CADD: 26 42     ROL ram_0042
C - - - - - 0x00CAEF 03:CADF: 0A        ASL
C - - - - - 0x00CAF0 03:CAE0: 26 42     ROL ram_0042
C - - - - - 0x00CAF2 03:CAE2: 85 41     STA ram_0041
C - - - - - 0x00CAF4 03:CAE4: 98        TYA
C - - - - - 0x00CAF5 03:CAE5: 65 41     ADC ram_0041
C - - - - - 0x00CAF7 03:CAE7: 90 02     BCC bra_CAEB
- - - - - - 0x00CAF9 03:CAE9: E6 42     INC ram_0042
bra_CAEB:
C - - - - - 0x00CAFB 03:CAEB: 18        CLC
C - - - - - 0x00CAFC 03:CAEC: 69 A8     ADC #< tbl_FAA8_palette
C - - - - - 0x00CAFE 03:CAEE: 85 41     STA ram_0041
C - - - - - 0x00CB00 03:CAF0: A5 42     LDA ram_0042
C - - - - - 0x00CB02 03:CAF2: 69 FA     ADC #> tbl_FAA8_palette
C - - - - - 0x00CB04 03:CAF4: 85 42     STA ram_0042
C - - - - - 0x00CB06 03:CAF6: A9 10     LDA #$10
C - - - - - 0x00CB08 03:CAF8: 8D 80 03  STA ram_0380
C - - - - - 0x00CB0B 03:CAFB: A0 00     LDY #$00
bra_CAFD_loop:
C - - - - - 0x00CB0D 03:CAFD: 8A        TXA
C - - - - - 0x00CB0E 03:CAFE: 29 03     AND #$03
C - - - - - 0x00CB10 03:CB00: F0 05     BEQ bra_CB07
C - - - - - 0x00CB12 03:CB02: B1 41     LDA (ram_0041),Y
C - - - - - 0x00CB14 03:CB04: C8        INY
C - - - - - 0x00CB15 03:CB05: D0 02     BNE bra_CB09
bra_CB07:
C - - - - - 0x00CB17 03:CB07: A9 0F     LDA #$0F
bra_CB09:
C - - - - - 0x00CB19 03:CB09: 9D 83 03  STA ram_0383,X
C - - - - - 0x00CB1C 03:CB0C: E8        INX
C - - - - - 0x00CB1D 03:CB0D: CE 80 03  DEC ram_0380
C - - - - - 0x00CB20 03:CB10: D0 EB     BNE bra_CAFD_loop
C - - - - - 0x00CB22 03:CB12: A9 20     LDA #$20
C - - - - - 0x00CB24 03:CB14: 8D 80 03  STA ram_0380
C - - - - - 0x00CB27 03:CB17: 60        RTS



loc_CB18:
sub_CB18:
C D 2 - - - 0x00CB28 03:CB18: BA        TSX
C - - - - - 0x00CB29 03:CB19: BD 01 01  LDA ram_0101,X
C - - - - - 0x00CB2C 03:CB1C: 85 3F     STA ram_003F
C - - - - - 0x00CB2E 03:CB1E: 48        PHA
C - - - - - 0x00CB2F 03:CB1F: BD 02 01  LDA ram_0102,X
C - - - - - 0x00CB32 03:CB22: 85 40     STA ram_0040
C - - - - - 0x00CB34 03:CB24: 68        PLA
C - - - - - 0x00CB35 03:CB25: 18        CLC
C - - - - - 0x00CB36 03:CB26: 69 02     ADC #$02
C - - - - - 0x00CB38 03:CB28: 9D 01 01  STA ram_0101,X
C - - - - - 0x00CB3B 03:CB2B: 90 03     BCC bra_CB30
- - - - - - 0x00CB3D 03:CB2D: FE 02 01  INC ram_0102,X
bra_CB30:
C - - - - - 0x00CB40 03:CB30: 98        TYA
C - - - - - 0x00CB41 03:CB31: 48        PHA
C - - - - - 0x00CB42 03:CB32: AD 00 03  LDA ram_0300
C - - - - - 0x00CB45 03:CB35: 0A        ASL
C - - - - - 0x00CB46 03:CB36: AA        TAX
C - - - - - 0x00CB47 03:CB37: A0 01     LDY #$01
C - - - - - 0x00CB49 03:CB39: B1 3F     LDA (ram_003F),Y
C - - - - - 0x00CB4B 03:CB3B: 9D 01 03  STA ram_0301,X
C - - - - - 0x00CB4E 03:CB3E: C8        INY
C - - - - - 0x00CB4F 03:CB3F: B1 3F     LDA (ram_003F),Y
C - - - - - 0x00CB51 03:CB41: 9D 02 03  STA ram_0302,X
C - - - - - 0x00CB54 03:CB44: EE 00 03  INC ram_0300
C - - - - - 0x00CB57 03:CB47: 68        PLA
C - - - - - 0x00CB58 03:CB48: A8        TAY
C - - - - - 0x00CB59 03:CB49: 60        RTS



loc_CB4A:
sub_CB4A:
C D 2 - - - 0x00CB5A 03:CB4A: 20 1E C9  JSR sub_C91E
C - - - - - 0x00CB5D 03:CB4D: C8        INY
C - - - - - 0x00CB5E 03:CB4E: C8        INY
C - - - - - 0x00CB5F 03:CB4F: 60        RTS



loc_CB50:
sub_CB50:
C D 2 - - - 0x00CB60 03:CB50: 20 1E C9  JSR sub_C91E
C - - - - - 0x00CB63 03:CB53: C8        INY
C - - - - - 0x00CB64 03:CB54: C8        INY
C - - - - - 0x00CB65 03:CB55: C8        INY
C - - - - - 0x00CB66 03:CB56: C8        INY
C - - - - - 0x00CB67 03:CB57: 60        RTS



sub_CB58_prg_bankswitch:
loc_CB58_prg_bankswitch:
C - - - - - 0x00CB68 03:CB58: A5 65     LDA ram_0065
C - - - - - 0x00CB6A 03:CB5A: 09 06     ORA #$06
C - - - - - 0x00CB6C 03:CB5C: 85 66     STA ram_0066
C - - - - - 0x00CB6E 03:CB5E: 8D 00 80  STA $8000
C - - - - - 0x00CB71 03:CB61: A5 67     LDA ram_0067
C - - - - - 0x00CB73 03:CB63: 8D 01 80  STA $8001
C - - - - - 0x00CB76 03:CB66: A5 65     LDA ram_0065
C - - - - - 0x00CB78 03:CB68: 09 07     ORA #$07
C - - - - - 0x00CB7A 03:CB6A: 85 66     STA ram_0066
C - - - - - 0x00CB7C 03:CB6C: 8D 00 80  STA $8000
C - - - - - 0x00CB7F 03:CB6F: A5 68     LDA ram_0068
C - - - - - 0x00CB81 03:CB71: 8D 01 80  STA $8001
C - - - - - 0x00CB84 03:CB74: 60        RTS



sub_CB75:
loc_CB75:
C - - - - - 0x00CB85 03:CB75: 8A        TXA
C - - - - - 0x00CB86 03:CB76: 48        PHA
C - - - - - 0x00CB87 03:CB77: A9 00     LDA #$00
C - - - - - 0x00CB89 03:CB79: 85 4E     STA ram_004E
C - - - - - 0x00CB8B 03:CB7B: 85 4F     STA ram_004F
C - - - - - 0x00CB8D 03:CB7D: 85 50     STA ram_0050
C - - - - - 0x00CB8F 03:CB7F: 85 51     STA ram_0051
C - - - - - 0x00CB91 03:CB81: A2 10     LDX #$10
bra_CB83_loop:
C - - - - - 0x00CB93 03:CB83: 66 4B     ROR ram_004B
C - - - - - 0x00CB95 03:CB85: 66 4A     ROR ram_004A
C - - - - - 0x00CB97 03:CB87: 90 0D     BCC bra_CB96
C - - - - - 0x00CB99 03:CB89: 18        CLC
C - - - - - 0x00CB9A 03:CB8A: A5 50     LDA ram_0050
C - - - - - 0x00CB9C 03:CB8C: 65 4C     ADC ram_004C
C - - - - - 0x00CB9E 03:CB8E: 85 50     STA ram_0050
C - - - - - 0x00CBA0 03:CB90: A5 51     LDA ram_0051
C - - - - - 0x00CBA2 03:CB92: 65 4D     ADC ram_004D
C - - - - - 0x00CBA4 03:CB94: 85 51     STA ram_0051
bra_CB96:
C - - - - - 0x00CBA6 03:CB96: 66 51     ROR ram_0051
C - - - - - 0x00CBA8 03:CB98: 66 50     ROR ram_0050
C - - - - - 0x00CBAA 03:CB9A: 66 4F     ROR ram_004F
C - - - - - 0x00CBAC 03:CB9C: 66 4E     ROR ram_004E
C - - - - - 0x00CBAE 03:CB9E: CA        DEX
C - - - - - 0x00CBAF 03:CB9F: D0 E2     BNE bra_CB83_loop
C - - - - - 0x00CBB1 03:CBA1: 68        PLA
C - - - - - 0x00CBB2 03:CBA2: AA        TAX
C - - - - - 0x00CBB3 03:CBA3: 60        RTS



sub_CBA4:
loc_CBA4:
C - - - - - 0x00CBB4 03:CBA4: 8A        TXA
C - - - - - 0x00CBB5 03:CBA5: 48        PHA
C - - - - - 0x00CBB6 03:CBA6: A9 00     LDA #$00
C - - - - - 0x00CBB8 03:CBA8: 85 55     STA ram_0055
C - - - - - 0x00CBBA 03:CBAA: 85 56     STA ram_0056
C - - - - - 0x00CBBC 03:CBAC: A2 18     LDX #$18
C - - - - - 0x00CBBE 03:CBAE: 26 52     ROL ram_0052
C - - - - - 0x00CBC0 03:CBB0: 26 53     ROL ram_0053
C - - - - - 0x00CBC2 03:CBB2: 26 58     ROL ram_0058
bra_CBB4_loop:
C - - - - - 0x00CBC4 03:CBB4: 26 55     ROL ram_0055
C - - - - - 0x00CBC6 03:CBB6: 26 56     ROL ram_0056
C - - - - - 0x00CBC8 03:CBB8: B0 10     BCS bra_CBCA
C - - - - - 0x00CBCA 03:CBBA: A5 56     LDA ram_0056
C - - - - - 0x00CBCC 03:CBBC: C5 57     CMP ram_0057
C - - - - - 0x00CBCE 03:CBBE: F0 04     BEQ bra_CBC4
C - - - - - 0x00CBD0 03:CBC0: 90 15     BCC bra_CBD7
C - - - - - 0x00CBD2 03:CBC2: B0 06     BCS bra_CBCA
bra_CBC4:
C - - - - - 0x00CBD4 03:CBC4: A5 55     LDA ram_0055
C - - - - - 0x00CBD6 03:CBC6: C5 54     CMP ram_0054
C - - - - - 0x00CBD8 03:CBC8: 90 0D     BCC bra_CBD7
bra_CBCA:
C - - - - - 0x00CBDA 03:CBCA: A5 55     LDA ram_0055
C - - - - - 0x00CBDC 03:CBCC: E5 54     SBC ram_0054
C - - - - - 0x00CBDE 03:CBCE: 85 55     STA ram_0055
C - - - - - 0x00CBE0 03:CBD0: A5 56     LDA ram_0056
C - - - - - 0x00CBE2 03:CBD2: E5 57     SBC ram_0057
C - - - - - 0x00CBE4 03:CBD4: 85 56     STA ram_0056
C - - - - - 0x00CBE6 03:CBD6: 38        SEC
bra_CBD7:
C - - - - - 0x00CBE7 03:CBD7: 26 52     ROL ram_0052
C - - - - - 0x00CBE9 03:CBD9: 26 53     ROL ram_0053
C - - - - - 0x00CBEB 03:CBDB: 26 58     ROL ram_0058
C - - - - - 0x00CBED 03:CBDD: CA        DEX
C - - - - - 0x00CBEE 03:CBDE: D0 D4     BNE bra_CBB4_loop
C - - - - - 0x00CBF0 03:CBE0: 68        PLA
C - - - - - 0x00CBF1 03:CBE1: AA        TAX
C - - - - - 0x00CBF2 03:CBE2: 60        RTS



loc_CBE3:
sub_CBE3:
; bzk сделать отдельный лейбл для 16 и 17
; _SelectInitialPlayerDataAddress_b03:      ; CBE3
; _SelectInitialBallDataAddress:            ; если на вход подается 16
; _SelectInitialShadowDataAddress:          ; если на вход подается 17
C D 2 - - - 0x00CBF3 03:CBE3: 0A        ASL
C - - - - - 0x00CBF4 03:CBE4: AA        TAX
C - - - - - 0x00CBF5 03:CBE5: BD F0 CB  LDA tbl_CBF0,X
C - - - - - 0x00CBF8 03:CBE8: 85 61     STA ram_0061
C - - - - - 0x00CBFA 03:CBEA: BD F1 CB  LDA tbl_CBF0 + $01,X
C - - - - - 0x00CBFD 03:CBED: 85 62     STA ram_0062
C - - - - - 0x00CBFF 03:CBEF: 60        RTS



tbl_CBF0:
- D 2 - - - 0x00CC00 03:CBF0: 2D 04     .word ram_042D      ; 00 вратарь внизу
- D 2 - - - 0x00CC02 03:CBF2: 4D 04     .word ram_044D      ; 01
- D 2 - - - 0x00CC04 03:CBF4: 6D 04     .word ram_046D      ; 02
- D 2 - - - 0x00CC06 03:CBF6: 8D 04     .word ram_048D      ; 03
- D 2 - - - 0x00CC08 03:CBF8: AD 04     .word ram_04AD      ; 04
- D 2 - - - 0x00CC0A 03:CBFA: CD 04     .word ram_04CD      ; 05
- D 2 - - - 0x00CC0C 03:CBFC: ED 04     .word ram_04ED      ; 06
- D 2 - - - 0x00CC0E 03:CBFE: 0D 05     .word ram_050D      ; 07
- D 2 - - - 0x00CC10 03:CC00: 2D 05     .word ram_052D      ; 08
- D 2 - - - 0x00CC12 03:CC02: 4D 05     .word ram_054D      ; 09
- D 2 - - - 0x00CC14 03:CC04: 6D 05     .word ram_056D      ; 0A
- D 2 - - - 0x00CC16 03:CC06: 8D 05     .word ram_058D      ; 0B вратарь вверху
- D 2 - - - 0x00CC18 03:CC08: AD 05     .word ram_05AD      ; 0C
- D 2 - - - 0x00CC1A 03:CC0A: CD 05     .word ram_05CD      ; 0D
- D 2 - - - 0x00CC1C 03:CC0C: ED 05     .word ram_05ED      ; 0E
- D 2 - - - 0x00CC1E 03:CC0E: 0D 06     .word ram_060D      ; 0F
- D 2 - - - 0x00CC20 03:CC10: 2D 06     .word ram_062D      ; 10
- D 2 - - - 0x00CC22 03:CC12: 4D 06     .word ram_064D      ; 11
- D 2 - - - 0x00CC24 03:CC14: 6D 06     .word ram_066D      ; 12
- D 2 - - - 0x00CC26 03:CC16: 8D 06     .word ram_068D      ; 13
- D 2 - - - 0x00CC28 03:CC18: AD 06     .word ram_06AD      ; 14
- D 2 - - - 0x00CC2A 03:CC1A: CD 06     .word ram_06CD      ; 15
- D 2 - - - 0x00CC2C 03:CC1C: D3 03     .word ram_03D3      ; 16 мяч
- D 2 - - - 0x00CC2E 03:CC1E: F3 03     .word ram_03F3      ; 17 тень мяча



sub_CC20:
loc_CC20:
C - - - - - 0x00CC30 03:CC20: 18        CLC
C - - - - - 0x00CC31 03:CC21: 69 40     ADC #$40
sub_CC23:
loc_CC23:
C - - - - - 0x00CC33 03:CC23: 0A        ASL
C - - - - - 0x00CC34 03:CC24: 08        PHP
C - - - - - 0x00CC35 03:CC25: 10 02     BPL bra_CC29
C - - - - - 0x00CC37 03:CC27: 49 FF     EOR #$FF
bra_CC29:
C - - - - - 0x00CC39 03:CC29: 29 7E     AND #$7E
C - - - - - 0x00CC3B 03:CC2B: AA        TAX
C - - - - - 0x00CC3C 03:CC2C: BD 45 CC  LDA tbl_CC44 + $01,X
C - - - - - 0x00CC3F 03:CC2F: A8        TAY
C - - - - - 0x00CC40 03:CC30: BD 44 CC  LDA tbl_CC44,X
C - - - - - 0x00CC43 03:CC33: AA        TAX
C - - - - - 0x00CC44 03:CC34: 28        PLP
C - - - - - 0x00CC45 03:CC35: 90 0C     BCC bra_CC43_RTS
C - - - - - 0x00CC47 03:CC37: 8A        TXA
C - - - - - 0x00CC48 03:CC38: 49 FF     EOR #$FF
C - - - - - 0x00CC4A 03:CC3A: AA        TAX
C - - - - - 0x00CC4B 03:CC3B: 98        TYA
C - - - - - 0x00CC4C 03:CC3C: 49 FF     EOR #$FF
C - - - - - 0x00CC4E 03:CC3E: A8        TAY
C - - - - - 0x00CC4F 03:CC3F: E8        INX
C - - - - - 0x00CC50 03:CC40: D0 01     BNE bra_CC43_RTS
C - - - - - 0x00CC52 03:CC42: C8        INY
bra_CC43_RTS:
C - - - - - 0x00CC53 03:CC43: 60        RTS


; предположительно угол удара или сторона движения ботов
tbl_CC44:
- D 2 - - - 0x00CC54 03:CC44: 00 00     .word $0000
- D 2 - - - 0x00CC56 03:CC46: 00 00     .word $0000
- D 2 - - - 0x00CC58 03:CC48: 06 00     .word $0006
- D 2 - - - 0x00CC5A 03:CC4A: 0C 00     .word $000C
- D 2 - - - 0x00CC5C 03:CC4C: 12 00     .word $0012
- D 2 - - - 0x00CC5E 03:CC4E: 19 00     .word $0019
- D 2 - - - 0x00CC60 03:CC50: 1F 00     .word $001F
- D 2 - - - 0x00CC62 03:CC52: 25 00     .word $0025
- D 2 - - - 0x00CC64 03:CC54: 2B 00     .word $002B
- D 2 - - - 0x00CC66 03:CC56: 31 00     .word $0031
- D 2 - - - 0x00CC68 03:CC58: 38 00     .word $0038
- D 2 - - - 0x00CC6A 03:CC5A: 3E 00     .word $003E
- D 2 - - - 0x00CC6C 03:CC5C: 44 00     .word $0044
- D 2 - - - 0x00CC6E 03:CC5E: 4A 00     .word $004A
- D 2 - - - 0x00CC70 03:CC60: 50 00     .word $0050
- D 2 - - - 0x00CC72 03:CC62: 56 00     .word $0056
- D 2 - - - 0x00CC74 03:CC64: 5C 00     .word $005C
- D 2 - - - 0x00CC76 03:CC66: 61 00     .word $0061
- D 2 - - - 0x00CC78 03:CC68: 67 00     .word $0067
- D 2 - - - 0x00CC7A 03:CC6A: 6D 00     .word $006D
- D 2 - - - 0x00CC7C 03:CC6C: 73 00     .word $0073
- D 2 - - - 0x00CC7E 03:CC6E: 78 00     .word $0078
- D 2 - - - 0x00CC80 03:CC70: 7E 00     .word $007E
- D 2 - - - 0x00CC82 03:CC72: 83 00     .word $0083
- D 2 - - - 0x00CC84 03:CC74: 88 00     .word $0088
- D 2 - - - 0x00CC86 03:CC76: 8E 00     .word $008E
- D 2 - - - 0x00CC88 03:CC78: 93 00     .word $0093
- D 2 - - - 0x00CC8A 03:CC7A: 98 00     .word $0098
- D 2 - - - 0x00CC8C 03:CC7C: 9D 00     .word $009D
- D 2 - - - 0x00CC8E 03:CC7E: A2 00     .word $00A2
- D 2 - - - 0x00CC90 03:CC80: A7 00     .word $00A7
- D 2 - - - 0x00CC92 03:CC82: AB 00     .word $00AB
- D 2 - - - 0x00CC94 03:CC84: B0 00     .word $00B0
- D 2 - - - 0x00CC96 03:CC86: B5 00     .word $00B5
- D 2 - - - 0x00CC98 03:CC88: B9 00     .word $00B9
- D 2 - - - 0x00CC9A 03:CC8A: BD 00     .word $00BD
- D 2 - - - 0x00CC9C 03:CC8C: C1 00     .word $00C1
- D 2 - - - 0x00CC9E 03:CC8E: C5 00     .word $00C5
- D 2 - - - 0x00CCA0 03:CC90: C9 00     .word $00C9
- D 2 - - - 0x00CCA2 03:CC92: CD 00     .word $00CD
- D 2 - - - 0x00CCA4 03:CC94: D1 00     .word $00D1
- D 2 - - - 0x00CCA6 03:CC96: D4 00     .word $00D4
- D 2 - - - 0x00CCA8 03:CC98: D8 00     .word $00D8
- D 2 - - - 0x00CCAA 03:CC9A: DB 00     .word $00DB
- D 2 - - - 0x00CCAC 03:CC9C: DE 00     .word $00DE
- D 2 - - - 0x00CCAE 03:CC9E: E1 00     .word $00E1
- D 2 - - - 0x00CCB0 03:CCA0: E4 00     .word $00E4
- D 2 - - - 0x00CCB2 03:CCA2: E7 00     .word $00E7
- D 2 - - - 0x00CCB4 03:CCA4: EA 00     .word $00EA
- D 2 - - - 0x00CCB6 03:CCA6: EC 00     .word $00EC
- D 2 - - - 0x00CCB8 03:CCA8: EE 00     .word $00EE
- D 2 - - - 0x00CCBA 03:CCAA: F1 00     .word $00F1
- D 2 - - - 0x00CCBC 03:CCAC: F3 00     .word $00F3
- D 2 - - - 0x00CCBE 03:CCAE: F4 00     .word $00F4
- D 2 - - - 0x00CCC0 03:CCB0: F6 00     .word $00F6
- D 2 - - - 0x00CCC2 03:CCB2: F8 00     .word $00F8
- D 2 - - - 0x00CCC4 03:CCB4: F9 00     .word $00F9
- D 2 - - - 0x00CCC6 03:CCB6: FB 00     .word $00FB
- D 2 - - - 0x00CCC8 03:CCB8: FC 00     .word $00FC
- D 2 - - - 0x00CCCA 03:CCBA: FD 00     .word $00FD
- D 2 - - - 0x00CCCC 03:CCBC: FE 00     .word $00FE
- D 2 - - - 0x00CCCE 03:CCBE: FE 00     .word $00FE
- D 2 - - - 0x00CCD0 03:CCC0: FF 00     .word $00FF
- D 2 - - - 0x00CCD2 03:CCC2: 00 01     .word $0100



loc_CCC4:
ofs_CCC4:
C D 2 - - - 0x00CCD4 03:CCC4: AD A4 03  LDA ram_03A4
C - - - - - 0x00CCD7 03:CCC7: 29 FB     AND #$FB
C - - - - - 0x00CCD9 03:CCC9: 8D A4 03  STA ram_03A4
C - - - - - 0x00CCDC 03:CCCC: 20 59 CA  JSR sub_CA59
C - - - - - 0x00CCDF 03:CCCF: 20 AF CA  JSR sub_CAAF
C - - - - - 0x00CCE2 03:CCD2: A2 00     LDX #$00
C - - - - - 0x00CCE4 03:CCD4: A9 02     LDA #$02
C - - - - - 0x00CCE6 03:CCD6: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00CCE9 03:CCD9: A2 10     LDX #$10
C - - - - - 0x00CCEB 03:CCDB: A9 02     LDA #$02
C - - - - - 0x00CCED 03:CCDD: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00CCF0 03:CCE0: 20 18 CB  JSR sub_CB18
- D 2 - I - 0x00CCF3 03:CCE3: 80 03     .word ram_0380
C - - - - - 0x00CCF5 03:CCE5: A9 10     LDA #con_music_field
C - - - - - 0x00CCF7 03:CCE7: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00CCFA 03:CCEA: A9 00     LDA #$00
C - - - - - 0x00CCFC 03:CCEC: 8D D3 03  STA ram_03D3
C - - - - - 0x00CCFF 03:CCEF: 20 AD D5  JSR sub_D5AD
C - - - - - 0x00CD02 03:CCF2: 48        PHA
C - - - - - 0x00CD03 03:CCF3: A9 02     LDA #$02
C - - - - - 0x00CD05 03:CCF5: 85 67     STA ram_0067
C - - - - - 0x00CD07 03:CCF7: A9 03     LDA #$03
C - - - - - 0x00CD09 03:CCF9: 85 68     STA ram_0068
C - - - - - 0x00CD0B 03:CCFB: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CD0E 03:CCFE: 68        PLA
C - - - - - 0x00CD0F 03:CCFF: 20 39 80  JSR sub_0x004049
C - - - - - 0x00CD12 03:CD02: A2 0D     LDX #$0D
C - - - - - 0x00CD14 03:CD04: A9 78     LDA #$78
C - - - - - 0x00CD16 03:CD06: 95 01     STA ram_0001,X
C - - - - - 0x00CD18 03:CD08: A9 02     LDA #$02
C - - - - - 0x00CD1A 03:CD0A: 95 02     STA ram_0002,X
C - - - - - 0x00CD1C 03:CD0C: A9 80     LDA #> (ofs_0x004016 - $01)
C - - - - - 0x00CD1E 03:CD0E: A0 05     LDY #< (ofs_0x004016 - $01)
C - - - - - 0x00CD20 03:CD10: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00CD23 03:CD13: A2 11     LDX #$11
C - - - - - 0x00CD25 03:CD15: A9 96     LDA #$96
C - - - - - 0x00CD27 03:CD17: 95 01     STA ram_0001,X
C - - - - - 0x00CD29 03:CD19: A9 02     LDA #$02
C - - - - - 0x00CD2B 03:CD1B: 95 02     STA ram_0002,X
C - - - - - 0x00CD2D 03:CD1D: A9 E4     LDA #> (ofs_E4D9 - $01)
C - - - - - 0x00CD2F 03:CD1F: A0 D8     LDY #< (ofs_E4D9 - $01)
C - - - - - 0x00CD31 03:CD21: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00CD34 03:CD24: A2 19     LDX #$19
C - - - - - 0x00CD36 03:CD26: A9 D2     LDA #$D2
C - - - - - 0x00CD38 03:CD28: 95 01     STA ram_0001,X
C - - - - - 0x00CD3A 03:CD2A: A9 02     LDA #$02
C - - - - - 0x00CD3C 03:CD2C: 95 02     STA ram_0002,X
C - - - - - 0x00CD3E 03:CD2E: A9 80     LDA #> (ofs_0x004025 - $01)
C - - - - - 0x00CD40 03:CD30: A0 14     LDY #< (ofs_0x004025 - $01)
C - - - - - 0x00CD42 03:CD32: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00CD45 03:CD35: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00CD48 03:CD38: 18        CLC
C - - - - - 0x00CD49 03:CD39: 69 06     ADC #$06
C - - - - - 0x00CD4B 03:CD3B: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00CD4E 03:CD3E: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00CD51 03:CD41: A9 13     LDA #$13
C - - - - - 0x00CD53 03:CD43: 20 2F C6  JSR sub_C62F
C - - - - - 0x00CD56 03:CD46: A0 00     LDY #$00
C - - - - - 0x00CD58 03:CD48: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CD5A 03:CD4A: 09 04     ORA #$04
C - - - - - 0x00CD5C 03:CD4C: 29 F7     AND #$F7
C - - - - - 0x00CD5E 03:CD4E: 91 61     STA (ram_0061),Y
C - - - - - 0x00CD60 03:CD50: AD A4 03  LDA ram_03A4
C - - - - - 0x00CD63 03:CD53: 09 20     ORA #$20
C - - - - - 0x00CD65 03:CD55: 8D A4 03  STA ram_03A4
C - - - - - 0x00CD68 03:CD58: 20 2F D7  JSR sub_D72F
C - - - - - 0x00CD6B 03:CD5B: A9 00     LDA #$00
C - - - - - 0x00CD6D 03:CD5D: 8D 2C 04  STA ram_042C
C - - - - - 0x00CD70 03:CD60: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00CD73 03:CD63: 49 0B     EOR #$0B
C - - - - - 0x00CD75 03:CD65: 18        CLC
C - - - - - 0x00CD76 03:CD66: 69 07     ADC #$07
C - - - - - 0x00CD78 03:CD68: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00CD7B 03:CD6B: A9 90     LDA #$90
C - - - - - 0x00CD7D 03:CD6D: 8D C0 03  STA ram_03C0
C - - - - - 0x00CD80 03:CD70: A9 A0     LDA #$A0
C - - - - - 0x00CD82 03:CD72: 8D BC 03  STA ram_03BC
C - - - - - 0x00CD85 03:CD75: A9 00     LDA #$00
C - - - - - 0x00CD87 03:CD77: 8D BD 03  STA ram_03BD
C - - - - - 0x00CD8A 03:CD7A: 8D C1 03  STA ram_03C1
C - - - - - 0x00CD8D 03:CD7D: A9 80     LDA #$80
C - - - - - 0x00CD8F 03:CD7F: 8D B7 03  STA ram_03B7
C - - - - - 0x00CD92 03:CD82: A9 00     LDA #$00
C - - - - - 0x00CD94 03:CD84: 8D B8 03  STA ram_03B8
bra_CD87:
C - - - - - 0x00CD97 03:CD87: A9 01     LDA #$01
C - - - - - 0x00CD99 03:CD89: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00CD9C 03:CD8C: 48        PHA
C - - - - - 0x00CD9D 03:CD8D: A9 02     LDA #$02
C - - - - - 0x00CD9F 03:CD8F: 85 67     STA ram_0067
C - - - - - 0x00CDA1 03:CD91: A9 03     LDA #$03
C - - - - - 0x00CDA3 03:CD93: 85 68     STA ram_0068
C - - - - - 0x00CDA5 03:CD95: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CDA8 03:CD98: 68        PLA
C - - - - - 0x00CDA9 03:CD99: 20 00 80  JSR sub_0x004010
C - - - - - 0x00CDAC 03:CD9C: 48        PHA
C - - - - - 0x00CDAD 03:CD9D: A9 02     LDA #$02
C - - - - - 0x00CDAF 03:CD9F: 85 67     STA ram_0067
C - - - - - 0x00CDB1 03:CDA1: A9 03     LDA #$03
C - - - - - 0x00CDB3 03:CDA3: 85 68     STA ram_0068
C - - - - - 0x00CDB5 03:CDA5: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CDB8 03:CDA8: 68        PLA
C - - - - - 0x00CDB9 03:CDA9: 20 09 80  JSR sub_0x004019
C - - - - - 0x00CDBC 03:CDAC: 2C C2 03  BIT ram_03C2
C - - - - - 0x00CDBF 03:CDAF: 30 D6     BMI bra_CD87
C - - - - - 0x00CDC1 03:CDB1: 20 97 CF  JSR sub_CF97
C - - - - - 0x00CDC4 03:CDB4: A9 02     LDA #$02
C - - - - - 0x00CDC6 03:CDB6: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00CDC9 03:CDB9: AD A4 03  LDA ram_03A4
C - - - - - 0x00CDCC 03:CDBC: 09 04     ORA #$04
C - - - - - 0x00CDCE 03:CDBE: 8D A4 03  STA ram_03A4
bra_CDC1:
loc_CDC1:
C D 2 - - - 0x00CDD1 03:CDC1: A9 01     LDA #$01
C - - - - - 0x00CDD3 03:CDC3: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00CDD6 03:CDC6: 48        PHA
C - - - - - 0x00CDD7 03:CDC7: A9 02     LDA #$02
C - - - - - 0x00CDD9 03:CDC9: 85 67     STA ram_0067
C - - - - - 0x00CDDB 03:CDCB: A9 03     LDA #$03
C - - - - - 0x00CDDD 03:CDCD: 85 68     STA ram_0068
C - - - - - 0x00CDDF 03:CDCF: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CDE2 03:CDD2: 68        PLA
C - - - - - 0x00CDE3 03:CDD3: 20 00 80  JSR sub_0x004010
C - - - - - 0x00CDE6 03:CDD6: 48        PHA
C - - - - - 0x00CDE7 03:CDD7: A9 02     LDA #$02
C - - - - - 0x00CDE9 03:CDD9: 85 67     STA ram_0067
C - - - - - 0x00CDEB 03:CDDB: A9 03     LDA #$03
C - - - - - 0x00CDED 03:CDDD: 85 68     STA ram_0068
C - - - - - 0x00CDEF 03:CDDF: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CDF2 03:CDE2: 68        PLA
C - - - - - 0x00CDF3 03:CDE3: 20 09 80  JSR sub_0x004019
C - - - - - 0x00CDF6 03:CDE6: 20 96 DE  JSR sub_DE96
C - - - - - 0x00CDF9 03:CDE9: 20 E8 D4  JSR sub_D4E8
C - - - - - 0x00CDFC 03:CDEC: B0 29     BCS bra_CE17
C - - - - - 0x00CDFE 03:CDEE: 20 2F D7  JSR sub_D72F
C - - - - - 0x00CE01 03:CDF1: 48        PHA
C - - - - - 0x00CE02 03:CDF2: A9 02     LDA #$02
C - - - - - 0x00CE04 03:CDF4: 85 67     STA ram_0067
C - - - - - 0x00CE06 03:CDF6: A9 03     LDA #$03
C - - - - - 0x00CE08 03:CDF8: 85 68     STA ram_0068
C - - - - - 0x00CE0A 03:CDFA: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CE0D 03:CDFD: 68        PLA
C - - - - - 0x00CE0E 03:CDFE: 20 0F 80  JSR sub_0x00401F
C - - - - - 0x00CE11 03:CE01: 20 DA CF  JSR sub_CFDA
C - - - - - 0x00CE14 03:CE04: AD B1 03  LDA ram_timer_sec
C - - - - - 0x00CE17 03:CE07: 0D B2 03  ORA ram_timer_min
C - - - - - 0x00CE1A 03:CE0A: D0 B5     BNE bra_CDC1
C - - - - - 0x00CE1C 03:CE0C: A9 01     LDA #$01
C - - - - - 0x00CE1E 03:CE0E: 0D A4 03  ORA ram_03A4
C - - - - - 0x00CE21 03:CE11: 8D A4 03  STA ram_03A4
C - - - - - 0x00CE24 03:CE14: 4C F1 C5  JMP loc_C5F1
bra_CE17:
C - - - - - 0x00CE27 03:CE17: 8A        TXA
C - - - - - 0x00CE28 03:CE18: 48        PHA
C - - - - - 0x00CE29 03:CE19: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00CE2C 03:CE1C: 48        PHA
C - - - - - 0x00CE2D 03:CE1D: AD 28 04  LDA ram_0428
C - - - - - 0x00CE30 03:CE20: 48        PHA
C - - - - - 0x00CE31 03:CE21: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00CE34 03:CE24: 30 10     BMI bra_CE36
C - - - - - 0x00CE36 03:CE26: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00CE39 03:CE29: A0 00     LDY #$00
C - - - - - 0x00CE3B 03:CE2B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00CE3D 03:CE2D: 29 FB     AND #$FB
C - - - - - 0x00CE3F 03:CE2F: 91 61     STA (ram_0061),Y
C - - - - - 0x00CE41 03:CE31: A9 00     LDA #$00
C - - - - - 0x00CE43 03:CE33: 20 2F C6  JSR sub_C62F
bra_CE36:
C - - - - - 0x00CE46 03:CE36: A9 08     LDA #$08
bra_CE38:
C - - - - - 0x00CE48 03:CE38: 48        PHA
C - - - - - 0x00CE49 03:CE39: A9 01     LDA #$01
C - - - - - 0x00CE4B 03:CE3B: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00CE4E 03:CE3E: 20 96 DE  JSR sub_DE96
C - - - - - 0x00CE51 03:CE41: 48        PHA
C - - - - - 0x00CE52 03:CE42: A9 02     LDA #$02
C - - - - - 0x00CE54 03:CE44: 85 67     STA ram_0067
C - - - - - 0x00CE56 03:CE46: A9 03     LDA #$03
C - - - - - 0x00CE58 03:CE48: 85 68     STA ram_0068
C - - - - - 0x00CE5A 03:CE4A: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CE5D 03:CE4D: 68        PLA
C - - - - - 0x00CE5E 03:CE4E: 20 0F 80  JSR sub_0x00401F
C - - - - - 0x00CE61 03:CE51: 68        PLA
C - - - - - 0x00CE62 03:CE52: 38        SEC
C - - - - - 0x00CE63 03:CE53: E9 01     SBC #$01
C - - - - - 0x00CE65 03:CE55: D0 E1     BNE bra_CE38
C - - - - - 0x00CE67 03:CE57: AD A4 03  LDA ram_03A4
C - - - - - 0x00CE6A 03:CE5A: 29 FB     AND #$FB
C - - - - - 0x00CE6C 03:CE5C: 8D A4 03  STA ram_03A4
C - - - - - 0x00CE6F 03:CE5F: 68        PLA
C - - - - - 0x00CE70 03:CE60: 8D 28 04  STA ram_0428
C - - - - - 0x00CE73 03:CE63: 68        PLA
C - - - - - 0x00CE74 03:CE64: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00CE77 03:CE67: 68        PLA
C - - - - - 0x00CE78 03:CE68: 20 BD CA  JSR sub_CABD_bytes_after_JSR
- D 2 - I - 0x00CE7B 03:CE6B: 7A D0     .word ofs_002_D07A_00
- D 2 - I - 0x00CE7D 03:CE6D: 73 D1     .word ofs_002_D173_01
- D 2 - I - 0x00CE7F 03:CE6F: 57 D2     .word ofs_002_D257_02
- D 2 - I - 0x00CE81 03:CE71: 7F D3     .word ofs_002_D37F_03



ofs_CE73:
C - - - - - 0x00CE83 03:CE73: AD A4 03  LDA ram_03A4
C - - - - - 0x00CE86 03:CE76: 29 FB     AND #$FB
C - - - - - 0x00CE88 03:CE78: 8D A4 03  STA ram_03A4
C - - - - - 0x00CE8B 03:CE7B: A2 00     LDX #$00
C - - - - - 0x00CE8D 03:CE7D: A9 02     LDA #$02
C - - - - - 0x00CE8F 03:CE7F: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00CE92 03:CE82: A2 10     LDX #$10
C - - - - - 0x00CE94 03:CE84: A9 02     LDA #$02
C - - - - - 0x00CE96 03:CE86: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00CE99 03:CE89: 48        PHA
C - - - - - 0x00CE9A 03:CE8A: A9 04     LDA #$04
C - - - - - 0x00CE9C 03:CE8C: 85 67     STA ram_0067
C - - - - - 0x00CE9E 03:CE8E: A9 05     LDA #$05
C - - - - - 0x00CEA0 03:CE90: 85 68     STA ram_0068
C - - - - - 0x00CEA2 03:CE92: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CEA5 03:CE95: 68        PLA
C - - - - - 0x00CEA6 03:CE96: 20 24 80  JSR sub_0x008034
C - - - - - 0x00CEA9 03:CE99: A5 28     LDA ram_0028
C - - - - - 0x00CEAB 03:CE9B: 29 7F     AND #$7F
C - - - - - 0x00CEAD 03:CE9D: 8D 00 20  STA $2000
C - - - - - 0x00CEB0 03:CEA0: 85 28     STA ram_0028
C - - - - - 0x00CEB2 03:CEA2: 20 97 CF  JSR sub_CF97
C - - - - - 0x00CEB5 03:CEA5: A2 00     LDX #$00
C - - - - - 0x00CEB7 03:CEA7: A9 09     LDA #$09
C - - - - - 0x00CEB9 03:CEA9: 20 D4 CA  JSR sub_CAD4
C - - - - - 0x00CEBC 03:CEAC: A2 00     LDX #$00
C - - - - - 0x00CEBE 03:CEAE: A9 0F     LDA #$0F
bra_CEB0:
C - - - - - 0x00CEC0 03:CEB0: 9D 83 03  STA ram_0383,X
C - - - - - 0x00CEC3 03:CEB3: E8        INX
C - - - - - 0x00CEC4 03:CEB4: E8        INX
C - - - - - 0x00CEC5 03:CEB5: E8        INX
C - - - - - 0x00CEC6 03:CEB6: E8        INX
C - - - - - 0x00CEC7 03:CEB7: E0 20     CPX #$20
C - - - - - 0x00CEC9 03:CEB9: D0 F5     BNE bra_CEB0
C - - - - - 0x00CECB 03:CEBB: A5 28     LDA ram_0028
C - - - - - 0x00CECD 03:CEBD: 09 80     ORA #$80
C - - - - - 0x00CECF 03:CEBF: 85 28     STA ram_0028
C - - - - - 0x00CED1 03:CEC1: 85 21     STA ram_0021
C - - - - - 0x00CED3 03:CEC3: 8D 00 20  STA $2000
C - - - - - 0x00CED6 03:CEC6: A9 17     LDA #con_music_penalty
C - - - - - 0x00CED8 03:CEC8: 20 10 C9  JSR sub_C910_prepare_sound
loc_CECB:
C D 2 - - - 0x00CEDB 03:CECB: A9 00     LDA #$00
C - - - - - 0x00CEDD 03:CECD: 85 8A     STA ram_008A
C - - - - - 0x00CEDF 03:CECF: A2 09     LDX #$09
C - - - - - 0x00CEE1 03:CED1: A9 5A     LDA #$5A
C - - - - - 0x00CEE3 03:CED3: 95 01     STA ram_0001,X
C - - - - - 0x00CEE5 03:CED5: A9 0C     LDA #$0C
C - - - - - 0x00CEE7 03:CED7: 95 02     STA ram_0002,X
C - - - - - 0x00CEE9 03:CED9: A9 D6     LDA #> (ofs_D605 - $01)
C - - - - - 0x00CEEB 03:CEDB: A0 04     LDY #< (ofs_D605 - $01)
C - - - - - 0x00CEED 03:CEDD: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00CEF0 03:CEE0: 48        PHA
C - - - - - 0x00CEF1 03:CEE1: A9 04     LDA #$04
C - - - - - 0x00CEF3 03:CEE3: 85 67     STA ram_0067
C - - - - - 0x00CEF5 03:CEE5: A9 05     LDA #$05
C - - - - - 0x00CEF7 03:CEE7: 85 68     STA ram_0068
C - - - - - 0x00CEF9 03:CEE9: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CEFC 03:CEEC: 68        PLA
C - - - - - 0x00CEFD 03:CEED: 20 27 80  JSR sub_0x008037
bra_CEF0:
C - - - - - 0x00CF00 03:CEF0: A9 01     LDA #$01
C - - - - - 0x00CF02 03:CEF2: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00CF05 03:CEF5: 20 96 DE  JSR sub_DE96
C - - - - - 0x00CF08 03:CEF8: A5 8A     LDA ram_008A
C - - - - - 0x00CF0A 03:CEFA: 29 20     AND #$20
C - - - - - 0x00CF0C 03:CEFC: F0 F2     BEQ bra_CEF0
C - - - - - 0x00CF0E 03:CEFE: 48        PHA
C - - - - - 0x00CF0F 03:CEFF: A9 04     LDA #$04
C - - - - - 0x00CF11 03:CF01: 85 67     STA ram_0067
C - - - - - 0x00CF13 03:CF03: A9 05     LDA #$05
C - - - - - 0x00CF15 03:CF05: 85 68     STA ram_0068
C - - - - - 0x00CF17 03:CF07: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CF1A 03:CF0A: 68        PLA
C - - - - - 0x00CF1B 03:CF0B: 20 2A 80  JSR sub_0x00803A
C - - - - - 0x00CF1E 03:CF0E: A5 8E     LDA ram_008E
C - - - - - 0x00CF20 03:CF10: 85 2A     STA ram_002A
C - - - - - 0x00CF22 03:CF12: 38        SEC
C - - - - - 0x00CF23 03:CF13: A5 8F     LDA ram_goals_pk
C - - - - - 0x00CF25 03:CF15: E5 90     SBC ram_goals_pk + $01
C - - - - - 0x00CF27 03:CF17: B0 04     BCS bra_CF1D
C - - - - - 0x00CF29 03:CF19: 49 FF     EOR #$FF
C - - - - - 0x00CF2B 03:CF1B: 69 01     ADC #$01
bra_CF1D:
C - - - - - 0x00CF2D 03:CF1D: 46 2A     LSR ram_002A
C - - - - - 0x00CF2F 03:CF1F: E9 00     SBC #$00
C - - - - - 0x00CF31 03:CF21: 10 02     BPL bra_CF25
C - - - - - 0x00CF33 03:CF23: A9 00     LDA #$00
bra_CF25:
C - - - - - 0x00CF35 03:CF25: 85 2B     STA ram_002B
C - - - - - 0x00CF37 03:CF27: A9 05     LDA #$05
C - - - - - 0x00CF39 03:CF29: 38        SEC
C - - - - - 0x00CF3A 03:CF2A: E5 2A     SBC ram_002A
C - - - - - 0x00CF3C 03:CF2C: F0 02     BEQ bra_CF30
C - - - - - 0x00CF3E 03:CF2E: B0 02     BCS bra_CF32
bra_CF30:
C - - - - - 0x00CF40 03:CF30: A9 01     LDA #$01
bra_CF32:
C - - - - - 0x00CF42 03:CF32: 38        SEC
C - - - - - 0x00CF43 03:CF33: E5 2B     SBC ram_002B
C - - - - - 0x00CF45 03:CF35: F0 13     BEQ bra_CF4A
C - - - - - 0x00CF47 03:CF37: 90 11     BCC bra_CF4A
C - - - - - 0x00CF49 03:CF39: E6 8E     INC ram_008E
C - - - - - 0x00CF4B 03:CF3B: D0 02     BNE bra_CF3F
- - - - - - 0x00CF4D 03:CF3D: C6 8E     DEC ram_008E
bra_CF3F:
C - - - - - 0x00CF4F 03:CF3F: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00CF52 03:CF42: 49 0B     EOR #$0B
C - - - - - 0x00CF54 03:CF44: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00CF57 03:CF47: 4C CB CE  JMP loc_CECB
bra_CF4A:
C - - - - - 0x00CF5A 03:CF4A: A9 13     LDA #con_music_half_time
C - - - - - 0x00CF5C 03:CF4C: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00CF5F 03:CF4F: A9 00     LDA #$00
bra_CF51:
C - - - - - 0x00CF61 03:CF51: 48        PHA
C - - - - - 0x00CF62 03:CF52: A9 01     LDA #$01
C - - - - - 0x00CF64 03:CF54: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00CF67 03:CF57: 68        PLA
C - - - - - 0x00CF68 03:CF58: AA        TAX
C - - - - - 0x00CF69 03:CF59: A9 D0     LDA #con_btns_AB + con_btn_Start
C - - - - - 0x00CF6B 03:CF5B: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00CF6E 03:CF5E: D0 0B     BNE bra_CF6B
C - - - - - 0x00CF70 03:CF60: A9 C0     LDA #con_btns_AB
C - - - - - 0x00CF72 03:CF62: 2D 27 00  AND a: ram_btn_press + $01
C - - - - - 0x00CF75 03:CF65: D0 04     BNE bra_CF6B
C - - - - - 0x00CF77 03:CF67: E8        INX
C - - - - - 0x00CF78 03:CF68: 8A        TXA
C - - - - - 0x00CF79 03:CF69: D0 E6     BNE bra_CF51
bra_CF6B:
C - - - - - 0x00CF7B 03:CF6B: A9 01     LDA #$01
C - - - - - 0x00CF7D 03:CF6D: 0D A4 03  ORA ram_03A4
C - - - - - 0x00CF80 03:CF70: 29 EF     AND #$EF
C - - - - - 0x00CF82 03:CF72: 8D A4 03  STA ram_03A4
C - - - - - 0x00CF85 03:CF75: A2 00     LDX #$00
C - - - - - 0x00CF87 03:CF77: 20 8D CF  JSR sub_CF8D
C - - - - - 0x00CF8A 03:CF7A: E8        INX
C - - - - - 0x00CF8B 03:CF7B: 20 8D CF  JSR sub_CF8D
C - - - - - 0x00CF8E 03:CF7E: A9 00     LDA #$00
C - - - - - 0x00CF90 03:CF80: 85 09     STA ram_0009
C - - - - - 0x00CF92 03:CF82: 85 0A     STA ram_000A
C - - - - - 0x00CF94 03:CF84: A9 00     LDA #$00
C - - - - - 0x00CF96 03:CF86: 85 0D     STA ram_000D
C - - - - - 0x00CF98 03:CF88: 85 0E     STA ram_000E
C - - - - - 0x00CF9A 03:CF8A: 4C F1 C5  JMP loc_C5F1



sub_CF8D:
C - - - - - 0x00CF9D 03:CF8D: B5 8F     LDA ram_goals_pk,X
C - - - - - 0x00CF9F 03:CF8F: 18        CLC
C - - - - - 0x00CFA0 03:CF90: 7D A7 03  ADC ram_goals_total,X
C - - - - - 0x00CFA3 03:CF93: 9D A7 03  STA ram_goals_total,X
C - - - - - 0x00CFA6 03:CF96: 60        RTS



sub_CF97:
C - - - - - 0x00CFA7 03:CF97: A2 00     LDX #$00
bra_CF99_loop:
C - - - - - 0x00CFA9 03:CF99: BD BA CF  LDA tbl_CFBA,X
C - - - - - 0x00CFAC 03:CF9C: 9D 83 03  STA ram_0383,X
C - - - - - 0x00CFAF 03:CF9F: E8        INX
C - - - - - 0x00CFB0 03:CFA0: E0 20     CPX #$20
C - - - - - 0x00CFB2 03:CFA2: D0 F5     BNE bra_CF99_loop
C - - - - - 0x00CFB4 03:CFA4: 48        PHA
C - - - - - 0x00CFB5 03:CFA5: A9 02     LDA #$02
C - - - - - 0x00CFB7 03:CFA7: 85 67     STA ram_0067
C - - - - - 0x00CFB9 03:CFA9: A9 03     LDA #$03
C - - - - - 0x00CFBB 03:CFAB: 85 68     STA ram_0068
C - - - - - 0x00CFBD 03:CFAD: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00CFC0 03:CFB0: 68        PLA
C - - - - - 0x00CFC1 03:CFB1: 20 21 80  JSR sub_0x004031
C - - - - - 0x00CFC4 03:CFB4: 20 18 CB  JSR sub_CB18
- D 2 - I - 0x00CFC7 03:CFB7: 80 03     .word ram_0380
C - - - - - 0x00CFC9 03:CFB9: 60        RTS



tbl_CFBA:
- D 2 - - - 0x00CFCA 03:CFBA: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFCB 03:CFBB: 0F        .byte $0F   ; 
- D 2 - - - 0x00CFCC 03:CFBC: 1A        .byte $1A   ; 
- D 2 - - - 0x00CFCD 03:CFBD: 30        .byte $30   ; 
- D 2 - - - 0x00CFCE 03:CFBE: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFCF 03:CFBF: 0F        .byte $0F   ; 
- D 2 - - - 0x00CFD0 03:CFC0: 25        .byte $25   ; 
- D 2 - - - 0x00CFD1 03:CFC1: 36        .byte $36   ; 
- D 2 - - - 0x00CFD2 03:CFC2: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFD3 03:CFC3: 0F        .byte $0F   ; 
- D 2 - - - 0x00CFD4 03:CFC4: 21        .byte $21   ; 
- D 2 - - - 0x00CFD5 03:CFC5: 36        .byte $36   ; 
- D 2 - - - 0x00CFD6 03:CFC6: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFD7 03:CFC7: 16        .byte $16   ; 
- D 2 - - - 0x00CFD8 03:CFC8: 26        .byte $26   ; 
- D 2 - - - 0x00CFD9 03:CFC9: 36        .byte $36   ; 
- D 2 - - - 0x00CFDA 03:CFCA: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFDB 03:CFCB: 30        .byte $30   ; 
- D 2 - - - 0x00CFDC 03:CFCC: 16        .byte $16   ; 
- D 2 - - - 0x00CFDD 03:CFCD: 35        .byte $35   ; 
- D 2 - - - 0x00CFDE 03:CFCE: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFDF 03:CFCF: 0F        .byte $0F   ; 
- D 2 - - - 0x00CFE0 03:CFD0: 0F        .byte $0F   ; 
- D 2 - - - 0x00CFE1 03:CFD1: 30        .byte $30   ; 
- D 2 - - - 0x00CFE2 03:CFD2: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFE3 03:CFD3: 2B        .byte $2B   ; 
- D 2 - - - 0x00CFE4 03:CFD4: 11        .byte $11   ; 
- D 2 - - - 0x00CFE5 03:CFD5: 26        .byte $26   ; 
- D 2 - - - 0x00CFE6 03:CFD6: 0A        .byte $0A   ; 
- D 2 - - - 0x00CFE7 03:CFD7: 28        .byte $28   ; 
- D 2 - - - 0x00CFE8 03:CFD8: 0F        .byte $0F   ; 
- D 2 - - - 0x00CFE9 03:CFD9: 30        .byte $30   ; 



sub_CFDA:
C - - - - - 0x00CFEA 03:CFDA: 20 1D C7  JSR sub_C71D
C - - - - - 0x00CFED 03:CFDD: B0 72     BCS bra_D051
C - - - - - 0x00CFEF 03:CFDF: 2C 2C 04  BIT ram_042C
C - - - - - 0x00CFF2 03:CFE2: 50 03     BVC bra_CFE7
C - - - - - 0x00CFF4 03:CFE4: 4C 74 D0  JMP loc_D074
bra_CFE7:
C - - - - - 0x00CFF7 03:CFE7: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00CFFA 03:CFEA: D0 08     BNE bra_CFF4
C - - - - - 0x00CFFC 03:CFEC: 2C A4 03  BIT ram_03A4
C - - - - - 0x00CFFF 03:CFEF: 30 03     BMI bra_CFF4
C - - - - - 0x00D001 03:CFF1: 4C 74 D0  JMP loc_D074
bra_CFF4:
C - - - - - 0x00D004 03:CFF4: AD 2A 04  LDA ram_plr_wo_ball
C - - - - - 0x00D007 03:CFF7: 30 20     BMI bra_D019
C - - - - - 0x00D009 03:CFF9: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D00C 03:CFFC: A0 12     LDY #$12
C - - - - - 0x00D00E 03:CFFE: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D010 03:D000: C9 04     CMP #$04
C - - - - - 0x00D012 03:D002: D0 15     BNE bra_D019
C - - - - - 0x00D014 03:D004: A0 00     LDY #$00
C - - - - - 0x00D016 03:D006: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D018 03:D008: 29 02     AND #$02
C - - - - - 0x00D01A 03:D00A: D0 67     BNE bra_D073_RTS
C - - - - - 0x00D01C 03:D00C: A0 00     LDY #$00
C - - - - - 0x00D01E 03:D00E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D020 03:D010: 29 FB     AND #$FB
C - - - - - 0x00D022 03:D012: 91 61     STA (ram_0061),Y
C - - - - - 0x00D024 03:D014: A9 00     LDA #$00
C - - - - - 0x00D026 03:D016: 20 2F C6  JSR sub_C62F
bra_D019:
C - - - - - 0x00D029 03:D019: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D02C 03:D01C: 49 0B     EOR #$0B
C - - - - - 0x00D02E 03:D01E: 85 2A     STA ram_002A
C - - - - - 0x00D030 03:D020: E6 2A     INC ram_002A
C - - - - - 0x00D032 03:D022: A9 0A     LDA #$0A
C - - - - - 0x00D034 03:D024: 85 2B     STA ram_002B
C - - - - - 0x00D036 03:D026: A9 00     LDA #$00
C - - - - - 0x00D038 03:D028: 85 2C     STA ram_002C
bra_D02A:
C - - - - - 0x00D03A 03:D02A: A5 2A     LDA ram_002A
C - - - - - 0x00D03C 03:D02C: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D03F 03:D02F: A0 00     LDY #$00
C - - - - - 0x00D041 03:D031: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D043 03:D033: AA        TAX
C - - - - - 0x00D044 03:D034: 29 02     AND #$02
C - - - - - 0x00D046 03:D036: F0 07     BEQ bra_D03F
C - - - - - 0x00D048 03:D038: 8A        TXA
C - - - - - 0x00D049 03:D039: 29 04     AND #$04
C - - - - - 0x00D04B 03:D03B: D0 02     BNE bra_D03F
C - - - - - 0x00D04D 03:D03D: E6 2C     INC ram_002C
bra_D03F:
C - - - - - 0x00D04F 03:D03F: E6 2A     INC ram_002A
C - - - - - 0x00D051 03:D041: C6 2B     DEC ram_002B
C - - - - - 0x00D053 03:D043: D0 E5     BNE bra_D02A
C - - - - - 0x00D055 03:D045: A5 2C     LDA ram_002C
C - - - - - 0x00D057 03:D047: F0 2B     BEQ bra_D074
C - - - - - 0x00D059 03:D049: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D05C 03:D04C: 49 0B     EOR #$0B
C - - - - - 0x00D05E 03:D04E: 20 5B C9  JSR sub_C95B
bra_D051:
C - - - - - 0x00D061 03:D051: CD 2A 04  CMP ram_plr_wo_ball
C - - - - - 0x00D064 03:D054: F0 1D     BEQ bra_D073_RTS
C - - - - - 0x00D066 03:D056: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00D069 03:D059: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D06C 03:D05C: A0 00     LDY #$00
C - - - - - 0x00D06E 03:D05E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D070 03:D060: 29 04     AND #$04
C - - - - - 0x00D072 03:D062: D0 10     BNE bra_D074
C - - - - - 0x00D074 03:D064: A9 04     LDA #$04
C - - - - - 0x00D076 03:D066: 20 2F C6  JSR sub_C62F
C - - - - - 0x00D079 03:D069: A0 00     LDY #$00
C - - - - - 0x00D07B 03:D06B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D07D 03:D06D: 09 04     ORA #$04
C - - - - - 0x00D07F 03:D06F: 29 F7     AND #$F7
C - - - - - 0x00D081 03:D071: 91 61     STA (ram_0061),Y
bra_D073_RTS:
C - - - - - 0x00D083 03:D073: 60        RTS
bra_D074:
loc_D074:
C D 2 - - - 0x00D084 03:D074: A9 80     LDA #$80
C - - - - - 0x00D086 03:D076: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00D089 03:D079: 60        RTS



ofs_002_D07A_00:
C - - J - - 0x00D08A 03:D07A: A9 00     LDA #$00
C - - - - - 0x00D08C 03:D07C: 85 09     STA ram_0009
C - - - - - 0x00D08E 03:D07E: 85 0A     STA ram_000A
C - - - - - 0x00D090 03:D080: A9 02     LDA #$02
C - - - - - 0x00D092 03:D082: 20 B8 F9  JSR sub_F9B8
C - - - - - 0x00D095 03:D085: 20 9F D4  JSR sub_D49F
C - - - - - 0x00D098 03:D088: AE D8 03  LDX ram_03D8
C - - - - - 0x00D09B 03:D08B: AC DA 03  LDY ram_03DA
C - - - - - 0x00D09E 03:D08E: AD 28 04  LDA ram_0428
C - - - - - 0x00D0A1 03:D091: 49 0B     EOR #$0B
C - - - - - 0x00D0A3 03:D093: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00D0A6 03:D096: F0 03     BEQ bra_D09B
C - - - - - 0x00D0A8 03:D098: 20 4A CB  JSR sub_CB4A
bra_D09B:
C - - - - - 0x00D0AB 03:D09B: 86 2A     STX ram_002A
C - - - - - 0x00D0AD 03:D09D: 84 2B     STY ram_002B
C - - - - - 0x00D0AF 03:D09F: AE DE 03  LDX ram_03DE
C - - - - - 0x00D0B2 03:D0A2: AC E0 03  LDY ram_03E0
C - - - - - 0x00D0B5 03:D0A5: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D0B8 03:D0A8: F0 03     BEQ bra_D0AD
C - - - - - 0x00D0BA 03:D0AA: 20 50 CB  JSR sub_CB50
bra_D0AD:
C - - - - - 0x00D0BD 03:D0AD: 86 2C     STX ram_002C
C - - - - - 0x00D0BF 03:D0AF: 84 2D     STY ram_002D
C - - - - - 0x00D0C1 03:D0B1: A2 00     LDX #$00
C - - - - - 0x00D0C3 03:D0B3: A5 2B     LDA ram_002B
C - - - - - 0x00D0C5 03:D0B5: F0 01     BEQ bra_D0B8
C - - - - - 0x00D0C7 03:D0B7: E8        INX
bra_D0B8:
C - - - - - 0x00D0C8 03:D0B8: A5 2D     LDA ram_002D
C - - - - - 0x00D0CA 03:D0BA: C9 02     CMP #$02
C - - - - - 0x00D0CC 03:D0BC: 90 02     BCC bra_D0C0
C - - - - - 0x00D0CE 03:D0BE: E8        INX
C - - - - - 0x00D0CF 03:D0BF: E8        INX
bra_D0C0:
C - - - - - 0x00D0D0 03:D0C0: BD 6F D1  LDA tbl_D16F,X
C - - - - - 0x00D0D3 03:D0C3: 18        CLC
C - - - - - 0x00D0D4 03:D0C4: 6D AD 03  ADC ram_team_w_ball
C - - - - - 0x00D0D7 03:D0C7: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00D0DA 03:D0CA: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D0DD 03:D0CD: A2 00     LDX #$00
C - - - - - 0x00D0DF 03:D0CF: AD DA 03  LDA ram_03DA
C - - - - - 0x00D0E2 03:D0D2: F0 03     BEQ bra_D0D7
C - - - - - 0x00D0E4 03:D0D4: E8        INX
C - - - - - 0x00D0E5 03:D0D5: E8        INX
C - - - - - 0x00D0E6 03:D0D6: E8        INX
bra_D0D7:
C - - - - - 0x00D0E7 03:D0D7: A0 05     LDY #$05
C - - - - - 0x00D0E9 03:D0D9: BD 69 D1  LDA tbl_D169,X
C - - - - - 0x00D0EC 03:D0DC: 91 61     STA (ram_0061),Y
C - - - - - 0x00D0EE 03:D0DE: C8        INY
C - - - - - 0x00D0EF 03:D0DF: C8        INY
C - - - - - 0x00D0F0 03:D0E0: BD 6A D1  LDA tbl_D16A,X
C - - - - - 0x00D0F3 03:D0E3: 91 61     STA (ram_0061),Y
C - - - - - 0x00D0F5 03:D0E5: A0 13     LDY #$13
C - - - - - 0x00D0F7 03:D0E7: BD 6B D1  LDA tbl_D16B,X
C - - - - - 0x00D0FA 03:D0EA: 91 61     STA (ram_0061),Y
C - - - - - 0x00D0FC 03:D0EC: A0 0B     LDY #$0B
C - - - - - 0x00D0FE 03:D0EE: AD DE 03  LDA ram_03DE
C - - - - - 0x00D101 03:D0F1: 91 61     STA (ram_0061),Y
C - - - - - 0x00D103 03:D0F3: C8        INY
C - - - - - 0x00D104 03:D0F4: C8        INY
C - - - - - 0x00D105 03:D0F5: AD E0 03  LDA ram_03E0
C - - - - - 0x00D108 03:D0F8: 91 61     STA (ram_0061),Y
C - - - - - 0x00D10A 03:D0FA: A9 02     LDA #$02
C - - - - - 0x00D10C 03:D0FC: 20 9E C7  JSR sub_C79E
C - - - - - 0x00D10F 03:D0FF: A0 00     LDY #$00
C - - - - - 0x00D111 03:D101: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D113 03:D103: 29 FB     AND #$FB
C - - - - - 0x00D115 03:D105: 91 61     STA (ram_0061),Y
C - - - - - 0x00D117 03:D107: A9 0C     LDA #$0C
C - - - - - 0x00D119 03:D109: 20 2F C6  JSR sub_C62F
C - - - - - 0x00D11C 03:D10C: A0 00     LDY #$00
C - - - - - 0x00D11E 03:D10E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D120 03:D110: 09 04     ORA #$04
C - - - - - 0x00D122 03:D112: 29 F7     AND #$F7
C - - - - - 0x00D124 03:D114: 91 61     STA (ram_0061),Y
C - - - - - 0x00D126 03:D116: AD 27 04  LDA ram_area_id
C - - - - - 0x00D129 03:D119: A2 00     LDX #$00
bra_D11B_loop:
C - - - - - 0x00D12B 03:D11B: 38        SEC
C - - - - - 0x00D12C 03:D11C: E9 05     SBC #$05
C - - - - - 0x00D12E 03:D11E: 90 03     BCC bra_D123
C - - - - - 0x00D130 03:D120: E8        INX
C - - - - - 0x00D131 03:D121: D0 F8     BNE bra_D11B_loop
bra_D123:
C - - - - - 0x00D133 03:D123: 8A        TXA
C - - - - - 0x00D134 03:D124: AE DA 03  LDX ram_03DA
C - - - - - 0x00D137 03:D127: F0 03     BEQ bra_D12C
C - - - - - 0x00D139 03:D129: 18        CLC
C - - - - - 0x00D13A 03:D12A: 69 08     ADC #$08
bra_D12C:
C - - - - - 0x00D13C 03:D12C: 18        CLC
C - - - - - 0x00D13D 03:D12D: 69 04     ADC #$04
C - - - - - 0x00D13F 03:D12F: 48        PHA
C - - - - - 0x00D140 03:D130: A9 04     LDA #$04
C - - - - - 0x00D142 03:D132: 85 67     STA ram_0067
C - - - - - 0x00D144 03:D134: A9 05     LDA #$05
C - - - - - 0x00D146 03:D136: 85 68     STA ram_0068
C - - - - - 0x00D148 03:D138: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D14B 03:D13B: 68        PLA
C - - - - - 0x00D14C 03:D13C: 20 21 80  JSR sub_0x008031
C - - - - - 0x00D14F 03:D13F: A9 80     LDA #$80
C - - - - - 0x00D151 03:D141: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00D154 03:D144: A9 00     LDA #$00
C - - - - - 0x00D156 03:D146: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00D159 03:D149: 8D 26 04  STA ram_0426
C - - - - - 0x00D15C 03:D14C: A9 01     LDA #$01
C - - - - - 0x00D15E 03:D14E: 8D E4 03  STA ram_03E4
C - - - - - 0x00D161 03:D151: 20 ED DC  JSR sub_DCED
bra_D154:
C - - - - - 0x00D164 03:D154: A9 01     LDA #$01
C - - - - - 0x00D166 03:D156: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D169 03:D159: 20 96 DE  JSR sub_DE96
C - - - - - 0x00D16C 03:D15C: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00D16F 03:D15F: 10 F3     BPL bra_D154
C - - - - - 0x00D171 03:D161: A9 02     LDA #$02
C - - - - - 0x00D173 03:D163: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D176 03:D166: 4C D5 D4  JMP loc_D4D5



tbl_D169:
- D 2 - - - 0x00D179 03:D169: 0E        .byte $0E   ; 
tbl_D16A:
- D 2 - - - 0x00D17A 03:D16A: 00        .byte $00   ; 
tbl_D16B:
- D 2 - - - 0x00D17B 03:D16B: 40        .byte $40   ; 
- D 2 - - - 0x00D17C 03:D16C: F2        .byte $F2   ; 
- D 2 - - - 0x00D17D 03:D16D: 01        .byte $01   ; 
- D 2 - - - 0x00D17E 03:D16E: C0        .byte $C0   ; 



tbl_D16F:
- D 2 - - - 0x00D17F 03:D16F: 0A        .byte $0A   ; 
- D 2 - - - 0x00D180 03:D170: 06        .byte $06   ; 
- D 2 - - - 0x00D181 03:D171: 01        .byte $01   ; 
- D 2 - - - 0x00D182 03:D172: 02        .byte $02   ; 



ofs_002_D173_01:
C - - J - - 0x00D183 03:D173: A9 00     LDA #$00
C - - - - - 0x00D185 03:D175: 85 09     STA ram_0009
C - - - - - 0x00D187 03:D177: 85 0A     STA ram_000A
C - - - - - 0x00D189 03:D179: A9 00     LDA #$00
C - - - - - 0x00D18B 03:D17B: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00D18E 03:D17E: 8D 26 04  STA ram_0426
C - - - - - 0x00D191 03:D181: A9 01     LDA #$01
C - - - - - 0x00D193 03:D183: 8D E4 03  STA ram_03E4
C - - - - - 0x00D196 03:D186: A9 03     LDA #$03
C - - - - - 0x00D198 03:D188: 20 B8 F9  JSR sub_F9B8
C - - - - - 0x00D19B 03:D18B: 20 9F D4  JSR sub_D49F
C - - - - - 0x00D19E 03:D18E: AD 28 04  LDA ram_0428
C - - - - - 0x00D1A1 03:D191: 49 0B     EOR #$0B
C - - - - - 0x00D1A3 03:D193: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00D1A6 03:D196: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00D1A9 03:D199: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D1AC 03:D19C: A2 B8     LDX #$B8
C - - - - - 0x00D1AE 03:D19E: A0 00     LDY #$00
C - - - - - 0x00D1B0 03:D1A0: AD DA 03  LDA ram_03DA
C - - - - - 0x00D1B3 03:D1A3: F0 03     BEQ bra_D1A8
C - - - - - 0x00D1B5 03:D1A5: 20 4A CB  JSR sub_CB4A
bra_D1A8:
C - - - - - 0x00D1B8 03:D1A8: 98        TYA
C - - - - - 0x00D1B9 03:D1A9: A0 07     LDY #$07
C - - - - - 0x00D1BB 03:D1AB: 91 61     STA (ram_0061),Y
C - - - - - 0x00D1BD 03:D1AD: 88        DEY
C - - - - - 0x00D1BE 03:D1AE: 88        DEY
C - - - - - 0x00D1BF 03:D1AF: 8A        TXA
C - - - - - 0x00D1C0 03:D1B0: 91 61     STA (ram_0061),Y
C - - - - - 0x00D1C2 03:D1B2: A2 C8     LDX #$C8
C - - - - - 0x00D1C4 03:D1B4: A0 00     LDY #$00
C - - - - - 0x00D1C6 03:D1B6: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D1C9 03:D1B9: D0 03     BNE bra_D1BE
C - - - - - 0x00D1CB 03:D1BB: 20 50 CB  JSR sub_CB50
bra_D1BE:
C - - - - - 0x00D1CE 03:D1BE: 98        TYA
C - - - - - 0x00D1CF 03:D1BF: A0 0D     LDY #$0D
C - - - - - 0x00D1D1 03:D1C1: 91 61     STA (ram_0061),Y
C - - - - - 0x00D1D3 03:D1C3: 88        DEY
C - - - - - 0x00D1D4 03:D1C4: 88        DEY
C - - - - - 0x00D1D5 03:D1C5: 8A        TXA
C - - - - - 0x00D1D6 03:D1C6: 91 61     STA (ram_0061),Y
C - - - - - 0x00D1D8 03:D1C8: A0 13     LDY #$13
C - - - - - 0x00D1DA 03:D1CA: A9 00     LDA #$00
C - - - - - 0x00D1DC 03:D1CC: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00D1DF 03:D1CF: D0 02     BNE bra_D1D3
C - - - - - 0x00D1E1 03:D1D1: A9 80     LDA #$80
bra_D1D3:
C - - - - - 0x00D1E3 03:D1D3: 91 61     STA (ram_0061),Y
C - - - - - 0x00D1E5 03:D1D5: A9 00     LDA #$00
C - - - - - 0x00D1E7 03:D1D7: 20 9E C7  JSR sub_C79E
C - - - - - 0x00D1EA 03:D1DA: A9 01     LDA #$01
C - - - - - 0x00D1EC 03:D1DC: 48        PHA
C - - - - - 0x00D1ED 03:D1DD: A9 04     LDA #$04
C - - - - - 0x00D1EF 03:D1DF: 85 67     STA ram_0067
C - - - - - 0x00D1F1 03:D1E1: A9 05     LDA #$05
C - - - - - 0x00D1F3 03:D1E3: 85 68     STA ram_0068
C - - - - - 0x00D1F5 03:D1E5: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D1F8 03:D1E8: 68        PLA
C - - - - - 0x00D1F9 03:D1E9: 20 1E 80  JSR sub_0x00802E
C - - - - - 0x00D1FC 03:D1EC: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00D1FF 03:D1EF: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D202 03:D1F2: A0 00     LDY #$00
C - - - - - 0x00D204 03:D1F4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D206 03:D1F6: 29 FB     AND #$FB
C - - - - - 0x00D208 03:D1F8: 91 61     STA (ram_0061),Y
C - - - - - 0x00D20A 03:D1FA: A9 0D     LDA #$0D
C - - - - - 0x00D20C 03:D1FC: 20 2F C6  JSR sub_C62F
C - - - - - 0x00D20F 03:D1FF: A0 00     LDY #$00
C - - - - - 0x00D211 03:D201: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D213 03:D203: 09 04     ORA #$04
C - - - - - 0x00D215 03:D205: 29 F7     AND #$F7
C - - - - - 0x00D217 03:D207: 91 61     STA (ram_0061),Y
C - - - - - 0x00D219 03:D209: AD D4 03  LDA ram_03D4
C - - - - - 0x00D21C 03:D20C: 29 DF     AND #$DF
C - - - - - 0x00D21E 03:D20E: 8D D4 03  STA ram_03D4
C - - - - - 0x00D221 03:D211: AD 7E 03  LDA ram_random
C - - - - - 0x00D224 03:D214: 29 0F     AND #$0F
C - - - - - 0x00D226 03:D216: 18        CLC
C - - - - - 0x00D227 03:D217: 69 10     ADC #$10
C - - - - - 0x00D229 03:D219: A0 06     LDY #$06
C - - - - - 0x00D22B 03:D21B: 91 61     STA (ram_0061),Y
C - - - - - 0x00D22D 03:D21D: A9 80     LDA #$80
C - - - - - 0x00D22F 03:D21F: 8D 2A 04  STA ram_plr_wo_ball
bra_D222:
C - - - - - 0x00D232 03:D222: A9 01     LDA #$01
C - - - - - 0x00D234 03:D224: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D237 03:D227: 48        PHA
C - - - - - 0x00D238 03:D228: A9 02     LDA #$02
C - - - - - 0x00D23A 03:D22A: 85 67     STA ram_0067
C - - - - - 0x00D23C 03:D22C: A9 03     LDA #$03
C - - - - - 0x00D23E 03:D22E: 85 68     STA ram_0068
C - - - - - 0x00D240 03:D230: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D243 03:D233: 68        PLA
C - - - - - 0x00D244 03:D234: 20 00 80  JSR sub_0x004010
C - - - - - 0x00D247 03:D237: 48        PHA
C - - - - - 0x00D248 03:D238: A9 02     LDA #$02
C - - - - - 0x00D24A 03:D23A: 85 67     STA ram_0067
C - - - - - 0x00D24C 03:D23C: A9 03     LDA #$03
C - - - - - 0x00D24E 03:D23E: 85 68     STA ram_0068
C - - - - - 0x00D250 03:D240: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D253 03:D243: 68        PLA
C - - - - - 0x00D254 03:D244: 20 09 80  JSR sub_0x004019
C - - - - - 0x00D257 03:D247: 20 96 DE  JSR sub_DE96
C - - - - - 0x00D25A 03:D24A: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00D25D 03:D24D: 10 D3     BPL bra_D222
C - - - - - 0x00D25F 03:D24F: A9 02     LDA #$02
C - - - - - 0x00D261 03:D251: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D264 03:D254: 4C D5 D4  JMP loc_D4D5



ofs_002_D257_02:
C - - J - - 0x00D267 03:D257: A9 00     LDA #$00
C - - - - - 0x00D269 03:D259: 85 09     STA ram_0009
C - - - - - 0x00D26B 03:D25B: 85 0A     STA ram_000A
C - - - - - 0x00D26D 03:D25D: A9 00     LDA #$00
C - - - - - 0x00D26F 03:D25F: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00D272 03:D262: 8D 26 04  STA ram_0426
C - - - - - 0x00D275 03:D265: A9 01     LDA #$01
C - - - - - 0x00D277 03:D267: 8D E4 03  STA ram_03E4
C - - - - - 0x00D27A 03:D26A: A9 04     LDA #$04
C - - - - - 0x00D27C 03:D26C: 20 B8 F9  JSR sub_F9B8
C - - - - - 0x00D27F 03:D26F: 20 9F D4  JSR sub_D49F
C - - - - - 0x00D282 03:D272: AD 28 04  LDA ram_0428
C - - - - - 0x00D285 03:D275: 49 0B     EOR #$0B
C - - - - - 0x00D287 03:D277: 8D AD 03  STA ram_team_w_ball
C - - - - - 0x00D28A 03:D27A: AE D8 03  LDX ram_03D8
C - - - - - 0x00D28D 03:D27D: AC DA 03  LDY ram_03DA
C - - - - - 0x00D290 03:D280: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D293 03:D283: F0 03     BEQ bra_D288
C - - - - - 0x00D295 03:D285: 20 4A CB  JSR sub_CB4A
bra_D288:
C - - - - - 0x00D298 03:D288: 98        TYA
C - - - - - 0x00D299 03:D289: 08        PHP
C - - - - - 0x00D29A 03:D28A: A0 02     LDY #$02
C - - - - - 0x00D29C 03:D28C: A2 0A     LDX #$0A
C - - - - - 0x00D29E 03:D28E: 28        PLP
C - - - - - 0x00D29F 03:D28F: F0 03     BEQ bra_D294
C - - - - - 0x00D2A1 03:D291: A2 06     LDX #$06
C - - - - - 0x00D2A3 03:D293: C8        INY
bra_D294:
C - - - - - 0x00D2A4 03:D294: 98        TYA
C - - - - - 0x00D2A5 03:D295: 48        PHA
C - - - - - 0x00D2A6 03:D296: 18        CLC
C - - - - - 0x00D2A7 03:D297: 8A        TXA
C - - - - - 0x00D2A8 03:D298: 6D AD 03  ADC ram_team_w_ball
C - - - - - 0x00D2AB 03:D29B: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00D2AE 03:D29E: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D2B1 03:D2A1: A0 34     LDY #$34
C - - - - - 0x00D2B3 03:D2A3: A2 00     LDX #$00
C - - - - - 0x00D2B5 03:D2A5: AD DA 03  LDA ram_03DA
C - - - - - 0x00D2B8 03:D2A8: F0 03     BEQ bra_D2AD
C - - - - - 0x00D2BA 03:D2AA: A0 CC     LDY #$CC
C - - - - - 0x00D2BC 03:D2AC: E8        INX
bra_D2AD:
C - - - - - 0x00D2BD 03:D2AD: AD E0 03  LDA ram_03E0
C - - - - - 0x00D2C0 03:D2B0: C9 02     CMP #$02
C - - - - - 0x00D2C2 03:D2B2: 90 08     BCC bra_D2BC
C - - - - - 0x00D2C4 03:D2B4: E8        INX
C - - - - - 0x00D2C5 03:D2B5: E8        INX
C - - - - - 0x00D2C6 03:D2B6: 98        TYA
C - - - - - 0x00D2C7 03:D2B7: 49 FF     EOR #$FF
C - - - - - 0x00D2C9 03:D2B9: 69 80     ADC #$80
C - - - - - 0x00D2CB 03:D2BB: A8        TAY
bra_D2BC:
C - - - - - 0x00D2CC 03:D2BC: 98        TYA
C - - - - - 0x00D2CD 03:D2BD: A0 13     LDY #$13
C - - - - - 0x00D2CF 03:D2BF: 91 61     STA (ram_0061),Y
C - - - - - 0x00D2D1 03:D2C1: 8A        TXA
C - - - - - 0x00D2D2 03:D2C2: 0A        ASL
C - - - - - 0x00D2D3 03:D2C3: 0A        ASL
C - - - - - 0x00D2D4 03:D2C4: 0A        ASL
C - - - - - 0x00D2D5 03:D2C5: AA        TAX
C - - - - - 0x00D2D6 03:D2C6: BD 5F D3  LDA tbl_D35F,X
C - - - - - 0x00D2D9 03:D2C9: 8D D8 03  STA ram_03D8
C - - - - - 0x00D2DC 03:D2CC: BD 60 D3  LDA tbl_D360,X
C - - - - - 0x00D2DF 03:D2CF: 8D DA 03  STA ram_03DA
C - - - - - 0x00D2E2 03:D2D2: BD 61 D3  LDA tbl_D361,X
C - - - - - 0x00D2E5 03:D2D5: 8D DE 03  STA ram_03DE
C - - - - - 0x00D2E8 03:D2D8: BD 62 D3  LDA tbl_D362,X
C - - - - - 0x00D2EB 03:D2DB: 8D E0 03  STA ram_03E0
C - - - - - 0x00D2EE 03:D2DE: A0 05     LDY #$05
C - - - - - 0x00D2F0 03:D2E0: BD 63 D3  LDA tbl_D363,X
C - - - - - 0x00D2F3 03:D2E3: 91 61     STA (ram_0061),Y
C - - - - - 0x00D2F5 03:D2E5: C8        INY
C - - - - - 0x00D2F6 03:D2E6: C8        INY
C - - - - - 0x00D2F7 03:D2E7: BD 64 D3  LDA tbl_D364,X
C - - - - - 0x00D2FA 03:D2EA: 91 61     STA (ram_0061),Y
C - - - - - 0x00D2FC 03:D2EC: A0 0B     LDY #$0B
C - - - - - 0x00D2FE 03:D2EE: BD 65 D3  LDA tbl_D365,X
C - - - - - 0x00D301 03:D2F1: 91 61     STA (ram_0061),Y
C - - - - - 0x00D303 03:D2F3: C8        INY
C - - - - - 0x00D304 03:D2F4: C8        INY
C - - - - - 0x00D305 03:D2F5: BD 66 D3  LDA tbl_D366,X
C - - - - - 0x00D308 03:D2F8: 91 61     STA (ram_0061),Y
C - - - - - 0x00D30A 03:D2FA: A0 00     LDY #$00
C - - - - - 0x00D30C 03:D2FC: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D30E 03:D2FE: 29 FB     AND #$FB
C - - - - - 0x00D310 03:D300: 91 61     STA (ram_0061),Y
C - - - - - 0x00D312 03:D302: A9 0E     LDA #$0E
C - - - - - 0x00D314 03:D304: 20 2F C6  JSR sub_C62F
C - - - - - 0x00D317 03:D307: A0 00     LDY #$00
C - - - - - 0x00D319 03:D309: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D31B 03:D30B: 09 04     ORA #$04
C - - - - - 0x00D31D 03:D30D: 29 F7     AND #$F7
C - - - - - 0x00D31F 03:D30F: 91 61     STA (ram_0061),Y
C - - - - - 0x00D321 03:D311: 68        PLA
C - - - - - 0x00D322 03:D312: 48        PHA
C - - - - - 0x00D323 03:D313: A9 04     LDA #$04
C - - - - - 0x00D325 03:D315: 85 67     STA ram_0067
C - - - - - 0x00D327 03:D317: A9 05     LDA #$05
C - - - - - 0x00D329 03:D319: 85 68     STA ram_0068
C - - - - - 0x00D32B 03:D31B: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D32E 03:D31E: 68        PLA
C - - - - - 0x00D32F 03:D31F: 20 1E 80  JSR sub_0x00802E
C - - - - - 0x00D332 03:D322: A9 80     LDA #$80
C - - - - - 0x00D334 03:D324: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00D337 03:D327: 20 ED DC  JSR sub_DCED
bra_D32A:
C - - - - - 0x00D33A 03:D32A: A9 01     LDA #$01
C - - - - - 0x00D33C 03:D32C: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D33F 03:D32F: 48        PHA
C - - - - - 0x00D340 03:D330: A9 02     LDA #$02
C - - - - - 0x00D342 03:D332: 85 67     STA ram_0067
C - - - - - 0x00D344 03:D334: A9 03     LDA #$03
C - - - - - 0x00D346 03:D336: 85 68     STA ram_0068
C - - - - - 0x00D348 03:D338: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D34B 03:D33B: 68        PLA
C - - - - - 0x00D34C 03:D33C: 20 00 80  JSR sub_0x004010
C - - - - - 0x00D34F 03:D33F: 48        PHA
C - - - - - 0x00D350 03:D340: A9 02     LDA #$02
C - - - - - 0x00D352 03:D342: 85 67     STA ram_0067
C - - - - - 0x00D354 03:D344: A9 03     LDA #$03
C - - - - - 0x00D356 03:D346: 85 68     STA ram_0068
C - - - - - 0x00D358 03:D348: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D35B 03:D34B: 68        PLA
C - - - - - 0x00D35C 03:D34C: 20 09 80  JSR sub_0x004019
C - - - - - 0x00D35F 03:D34F: 20 96 DE  JSR sub_DE96
C - - - - - 0x00D362 03:D352: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00D365 03:D355: 10 D3     BPL bra_D32A
C - - - - - 0x00D367 03:D357: A9 02     LDA #$02
C - - - - - 0x00D369 03:D359: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D36C 03:D35C: 4C D5 D4  JMP loc_D4D5


; какие-то параметры игрока
tbl_D35F:
- D 2 - - - 0x00D36F 03:D35F: 14        .byte $14   ; 
tbl_D360:
- D 2 - - - 0x00D370 03:D360: 00        .byte $00   ; 
tbl_D361:
- D 2 - - - 0x00D371 03:D361: AC        .byte $AC   ; 
tbl_D362:
- D 2 - - - 0x00D372 03:D362: 00        .byte $00   ; 
tbl_D363:
- D 2 - - - 0x00D373 03:D363: 0C        .byte $0C   ; 
tbl_D364:
- D 2 - - - 0x00D374 03:D364: 00        .byte $00   ; 
tbl_D365:
- D 2 - - - 0x00D375 03:D365: A8        .byte $A8   ; 
tbl_D366:
- D 2 - - - 0x00D376 03:D366: 00        .byte $00   ; 
- - - - - - 0x00D377 03:D367: EC        .byte $EC   ; 
- - - - - - 0x00D378 03:D368: 01        .byte $01   ; 
- - - - - - 0x00D379 03:D369: AC        .byte $AC   ; 
- - - - - - 0x00D37A 03:D36A: 00        .byte $00   ; 
- - - - - - 0x00D37B 03:D36B: F4        .byte $F4   ; 
- - - - - - 0x00D37C 03:D36C: 01        .byte $01   ; 
- - - - - - 0x00D37D 03:D36D: A8        .byte $A8   ; 
- - - - - - 0x00D37E 03:D36E: 00        .byte $00   ; 
- D 2 - - - 0x00D37F 03:D36F: 14        .byte $14   ; 
- D 2 - - - 0x00D380 03:D370: 00        .byte $00   ; 
- D 2 - - - 0x00D381 03:D371: 54        .byte $54   ; 
- D 2 - - - 0x00D382 03:D372: 03        .byte $03   ; 
- D 2 - - - 0x00D383 03:D373: 0C        .byte $0C   ; 
- D 2 - - - 0x00D384 03:D374: 00        .byte $00   ; 
- D 2 - - - 0x00D385 03:D375: 58        .byte $58   ; 
- D 2 - - - 0x00D386 03:D376: 03        .byte $03   ; 
- D 2 - - - 0x00D387 03:D377: EC        .byte $EC   ; 
- D 2 - - - 0x00D388 03:D378: 01        .byte $01   ; 
- D 2 - - - 0x00D389 03:D379: 54        .byte $54   ; 
- D 2 - - - 0x00D38A 03:D37A: 03        .byte $03   ; 
- D 2 - - - 0x00D38B 03:D37B: F4        .byte $F4   ; 
- D 2 - - - 0x00D38C 03:D37C: 01        .byte $01   ; 
- D 2 - - - 0x00D38D 03:D37D: 58        .byte $58   ; 
- D 2 - - - 0x00D38E 03:D37E: 03        .byte $03   ; 



ofs_002_D37F_03:
C - - J - - 0x00D38F 03:D37F: A9 12     LDA #con_music_goal
C - - - - - 0x00D391 03:D381: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D394 03:D384: A9 0E     LDA #con_sfx_fans
C - - - - - 0x00D396 03:D386: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D399 03:D389: A9 00     LDA #$00
bra_D38B_loop:
C - - - - - 0x00D39B 03:D38B: 48        PHA
C - - - - - 0x00D39C 03:D38C: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D39F 03:D38F: A0 00     LDY #$00
C - - - - - 0x00D3A1 03:D391: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D3A3 03:D393: 29 F0     AND #$F0
C - - - - - 0x00D3A5 03:D395: 91 61     STA (ram_0061),Y
C - - - - - 0x00D3A7 03:D397: A9 12     LDA #$12
C - - - - - 0x00D3A9 03:D399: 20 2F C6  JSR sub_C62F
C - - - - - 0x00D3AC 03:D39C: 68        PLA
C - - - - - 0x00D3AD 03:D39D: 18        CLC
C - - - - - 0x00D3AE 03:D39E: 69 01     ADC #$01
C - - - - - 0x00D3B0 03:D3A0: C9 16     CMP #$16
C - - - - - 0x00D3B2 03:D3A2: D0 E7     BNE bra_D38B_loop
C - - - - - 0x00D3B4 03:D3A4: A2 00     LDX #$00
C - - - - - 0x00D3B6 03:D3A6: AD E0 03  LDA ram_03E0
C - - - - - 0x00D3B9 03:D3A9: C9 02     CMP #$02
C - - - - - 0x00D3BB 03:D3AB: 90 01     BCC bra_D3AE
C - - - - - 0x00D3BD 03:D3AD: E8        INX
bra_D3AE:
C - - - - - 0x00D3BE 03:D3AE: 8E CA 03  STX ram_03CA
loc_D3B1:
C D 2 - - - 0x00D3C1 03:D3B1: A9 01     LDA #$01
C - - - - - 0x00D3C3 03:D3B3: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D3C6 03:D3B6: A2 01     LDX #$01
C - - - - - 0x00D3C8 03:D3B8: A0 00     LDY #$00
C - - - - - 0x00D3CA 03:D3BA: AD CA 03  LDA ram_03CA
C - - - - - 0x00D3CD 03:D3BD: D0 03     BNE bra_D3C2
C - - - - - 0x00D3CF 03:D3BF: 20 1E C9  JSR sub_C91E
bra_D3C2:
C - - - - - 0x00D3D2 03:D3C2: 8A        TXA
C - - - - - 0x00D3D3 03:D3C3: 18        CLC
C - - - - - 0x00D3D4 03:D3C4: 6D BC 03  ADC ram_03BC
C - - - - - 0x00D3D7 03:D3C7: 8D BC 03  STA ram_03BC
C - - - - - 0x00D3DA 03:D3CA: AA        TAX
C - - - - - 0x00D3DB 03:D3CB: 98        TYA
C - - - - - 0x00D3DC 03:D3CC: 6D BD 03  ADC ram_03BD
C - - - - - 0x00D3DF 03:D3CF: 8D BD 03  STA ram_03BD
C - - - - - 0x00D3E2 03:D3D2: 30 1E     BMI bra_D3F2
C - - - - - 0x00D3E4 03:D3D4: C9 03     CMP #$03
C - - - - - 0x00D3E6 03:D3D6: 90 04     BCC bra_D3DC
C - - - - - 0x00D3E8 03:D3D8: E0 10     CPX #$10
C - - - - - 0x00D3EA 03:D3DA: B0 16     BCS bra_D3F2
bra_D3DC:
C - - - - - 0x00D3EC 03:D3DC: 48        PHA
C - - - - - 0x00D3ED 03:D3DD: A9 02     LDA #$02
C - - - - - 0x00D3EF 03:D3DF: 85 67     STA ram_0067
C - - - - - 0x00D3F1 03:D3E1: A9 03     LDA #$03
C - - - - - 0x00D3F3 03:D3E3: 85 68     STA ram_0068
C - - - - - 0x00D3F5 03:D3E5: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D3F8 03:D3E8: 68        PLA
C - - - - - 0x00D3F9 03:D3E9: 20 0C 80  JSR sub_0x00401C
C - - - - - 0x00D3FC 03:D3EC: 20 96 DE  JSR sub_DE96
C - - - - - 0x00D3FF 03:D3EF: 4C B1 D3  JMP loc_D3B1
bra_D3F2:
C - - - - - 0x00D402 03:D3F2: A2 15     LDX #$15
C - - - - - 0x00D404 03:D3F4: A9 B4     LDA #$B4
C - - - - - 0x00D406 03:D3F6: 95 01     STA ram_0001,X
C - - - - - 0x00D408 03:D3F8: A9 02     LDA #$02
C - - - - - 0x00D40A 03:D3FA: 95 02     STA ram_0002,X
C - - - - - 0x00D40C 03:D3FC: A9 80     LDA #> (ofs_0x004043 - $01)
C - - - - - 0x00D40E 03:D3FE: A0 32     LDY #< (ofs_0x004043 - $01)
C - - - - - 0x00D410 03:D400: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00D413 03:D403: A9 00     LDA #$00
C - - - - - 0x00D415 03:D405: 85 09     STA ram_0009
C - - - - - 0x00D417 03:D407: 85 0A     STA ram_000A
C - - - - - 0x00D419 03:D409: A9 00     LDA #$00
C - - - - - 0x00D41B 03:D40B: 85 0D     STA ram_000D
C - - - - - 0x00D41D 03:D40D: 85 0E     STA ram_000E
C - - - - - 0x00D41F 03:D40F: A9 00     LDA #$00
C - - - - - 0x00D421 03:D411: 85 11     STA ram_0011
C - - - - - 0x00D423 03:D413: 85 12     STA ram_0012
C - - - - - 0x00D425 03:D415: A9 00     LDA #$00
C - - - - - 0x00D427 03:D417: 85 19     STA ram_0019
C - - - - - 0x00D429 03:D419: 85 1A     STA ram_001A
C - - - - - 0x00D42B 03:D41B: A9 14     LDA #$14
C - - - - - 0x00D42D 03:D41D: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D430 03:D420: A9 02     LDA #$02
C - - - - - 0x00D432 03:D422: 85 6B     STA ram_006B
C - - - - - 0x00D434 03:D424: A5 28     LDA ram_0028
C - - - - - 0x00D436 03:D426: 29 DF     AND #$DF
C - - - - - 0x00D438 03:D428: 85 28     STA ram_0028
C - - - - - 0x00D43A 03:D42A: 48        PHA
C - - - - - 0x00D43B 03:D42B: A9 02     LDA #$02
C - - - - - 0x00D43D 03:D42D: 85 67     STA ram_0067
C - - - - - 0x00D43F 03:D42F: A9 03     LDA #$03
C - - - - - 0x00D441 03:D431: 85 68     STA ram_0068
C - - - - - 0x00D443 03:D433: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D446 03:D436: 68        PLA
C - - - - - 0x00D447 03:D437: 20 27 80  JSR sub_0x004037
C - - - - - 0x00D44A 03:D43A: 48        PHA
C - - - - - 0x00D44B 03:D43B: A9 02     LDA #$02
C - - - - - 0x00D44D 03:D43D: 85 67     STA ram_0067
C - - - - - 0x00D44F 03:D43F: A9 03     LDA #$03
C - - - - - 0x00D451 03:D441: 85 68     STA ram_0068
C - - - - - 0x00D453 03:D443: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D456 03:D446: 68        PLA
C - - - - - 0x00D457 03:D447: 20 2A 80  JSR sub_0x00403A
C - - - - - 0x00D45A 03:D44A: A9 28     LDA #$28
C - - - - - 0x00D45C 03:D44C: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D45F 03:D44F: AE CA 03  LDX ram_03CA
C - - - - - 0x00D462 03:D452: BD A7 03  LDA ram_goals_total,X
C - - - - - 0x00D465 03:D455: C9 63     CMP #$63
C - - - - - 0x00D467 03:D457: B0 0B     BCS bra_D464
C - - - - - 0x00D469 03:D459: FE A7 03  INC ram_goals_total,X
C - - - - - 0x00D46C 03:D45C: AD AE 03  LDA ram_half_time_cnt
C - - - - - 0x00D46F 03:D45F: D0 03     BNE bra_D464
C - - - - - 0x00D471 03:D461: FE A5 03  INC ram_goals_half,X
bra_D464:
C - - - - - 0x00D474 03:D464: 48        PHA
C - - - - - 0x00D475 03:D465: A9 02     LDA #$02
C - - - - - 0x00D477 03:D467: 85 67     STA ram_0067
C - - - - - 0x00D479 03:D469: A9 03     LDA #$03
C - - - - - 0x00D47B 03:D46B: 85 68     STA ram_0068
C - - - - - 0x00D47D 03:D46D: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D480 03:D470: 68        PLA
C - - - - - 0x00D481 03:D471: 20 2A 80  JSR sub_0x00403A
C - - - - - 0x00D484 03:D474: A9 6E     LDA #$6E
C - - - - - 0x00D486 03:D476: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D489 03:D479: 20 AF CA  JSR sub_CAAF
C - - - - - 0x00D48C 03:D47C: A5 28     LDA ram_0028
C - - - - - 0x00D48E 03:D47E: 09 20     ORA #$20
C - - - - - 0x00D490 03:D480: 85 28     STA ram_0028
C - - - - - 0x00D492 03:D482: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D495 03:D485: F0 02     BEQ bra_D489
C - - - - - 0x00D497 03:D487: A9 01     LDA #$01
bra_D489:
C - - - - - 0x00D499 03:D489: 4D CA 03  EOR ram_03CA
C - - - - - 0x00D49C 03:D48C: D0 08     BNE bra_D496
C - - - - - 0x00D49E 03:D48E: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00D4A1 03:D491: 49 0B     EOR #$0B
C - - - - - 0x00D4A3 03:D493: 8D AD 03  STA ram_team_w_ball
bra_D496:
C - - - - - 0x00D4A6 03:D496: A9 00     LDA #$00
C - - - - - 0x00D4A8 03:D498: 85 15     STA ram_0015
C - - - - - 0x00D4AA 03:D49A: 85 16     STA ram_0016
C - - - - - 0x00D4AC 03:D49C: 4C C4 CC  JMP loc_CCC4



sub_D49F:
C - - - - - 0x00D4AF 03:D49F: A9 00     LDA #$00
C - - - - - 0x00D4B1 03:D4A1: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00D4B4 03:D4A4: 8D 26 04  STA ram_0426
bra_D4A7_loop:
C - - - - - 0x00D4B7 03:D4A7: 48        PHA
C - - - - - 0x00D4B8 03:D4A8: AA        TAX
C - - - - - 0x00D4B9 03:D4A9: F0 14     BEQ bra_D4BF
C - - - - - 0x00D4BB 03:D4AB: C9 0B     CMP #$0B
C - - - - - 0x00D4BD 03:D4AD: F0 10     BEQ bra_D4BF
C - - - - - 0x00D4BF 03:D4AF: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D4C2 03:D4B2: A0 00     LDY #$00
C - - - - - 0x00D4C4 03:D4B4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D4C6 03:D4B6: 29 F0     AND #$F0
C - - - - - 0x00D4C8 03:D4B8: 91 61     STA (ram_0061),Y
C - - - - - 0x00D4CA 03:D4BA: A9 00     LDA #$00
C - - - - - 0x00D4CC 03:D4BC: 20 2F C6  JSR sub_C62F
bra_D4BF:
C - - - - - 0x00D4CF 03:D4BF: 68        PLA
C - - - - - 0x00D4D0 03:D4C0: 18        CLC
C - - - - - 0x00D4D1 03:D4C1: 69 01     ADC #$01
C - - - - - 0x00D4D3 03:D4C3: C9 16     CMP #$16
C - - - - - 0x00D4D5 03:D4C5: D0 E0     BNE bra_D4A7_loop
C - - - - - 0x00D4D7 03:D4C7: A9 03     LDA #$03
C - - - - - 0x00D4D9 03:D4C9: 8D E4 03  STA ram_03E4
C - - - - - 0x00D4DC 03:D4CC: AD A4 03  LDA ram_03A4
C - - - - - 0x00D4DF 03:D4CF: 09 20     ORA #$20
C - - - - - 0x00D4E1 03:D4D1: 8D A4 03  STA ram_03A4
C - - - - - 0x00D4E4 03:D4D4: 60        RTS



loc_D4D5:
C D 2 - - - 0x00D4E5 03:D4D5: AD A4 03  LDA ram_03A4
C - - - - - 0x00D4E8 03:D4D8: 29 DF     AND #$DF
C - - - - - 0x00D4EA 03:D4DA: 8D A4 03  STA ram_03A4
C - - - - - 0x00D4ED 03:D4DD: AD A4 03  LDA ram_03A4
C - - - - - 0x00D4F0 03:D4E0: 09 04     ORA #$04
C - - - - - 0x00D4F2 03:D4E2: 8D A4 03  STA ram_03A4
C - - - - - 0x00D4F5 03:D4E5: 4C C1 CD  JMP loc_CDC1



sub_D4E8:
C - - - - - 0x00D4F8 03:D4E8: AE D8 03  LDX ram_03D8
C - - - - - 0x00D4FB 03:D4EB: AC DA 03  LDY ram_03DA
C - - - - - 0x00D4FE 03:D4EE: F0 03     BEQ bra_D4F3
C - - - - - 0x00D500 03:D4F0: 20 4A CB  JSR sub_CB4A
bra_D4F3:
C - - - - - 0x00D503 03:D4F3: 86 2A     STX ram_002A
C - - - - - 0x00D505 03:D4F5: 84 2B     STY ram_002B
C - - - - - 0x00D507 03:D4F7: 38        SEC
C - - - - - 0x00D508 03:D4F8: 8A        TXA
C - - - - - 0x00D509 03:D4F9: E9 0E     SBC #$0E
C - - - - - 0x00D50B 03:D4FB: 98        TYA
C - - - - - 0x00D50C 03:D4FC: E9 00     SBC #$00
C - - - - - 0x00D50E 03:D4FE: B0 09     BCS bra_D509
C - - - - - 0x00D510 03:D500: A9 0C     LDA #con_sfx_whistle_referee
C - - - - - 0x00D512 03:D502: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D515 03:D505: A2 00     LDX #$00
C - - - - - 0x00D517 03:D507: 38        SEC
C - - - - - 0x00D518 03:D508: 60        RTS
bra_D509:
C - - - - - 0x00D519 03:D509: AE DE 03  LDX ram_03DE
C - - - - - 0x00D51C 03:D50C: AC E0 03  LDY ram_03E0
C - - - - - 0x00D51F 03:D50F: C0 02     CPY #$02
C - - - - - 0x00D521 03:D511: 90 03     BCC bra_D516
C - - - - - 0x00D523 03:D513: 20 50 CB  JSR sub_CB50
bra_D516:
C - - - - - 0x00D526 03:D516: 86 2C     STX ram_002C
C - - - - - 0x00D528 03:D518: 84 2D     STY ram_002D
C - - - - - 0x00D52A 03:D51A: AD 26 04  LDA ram_0426
C - - - - - 0x00D52D 03:D51D: D0 4A     BNE bra_D569
C - - - - - 0x00D52F 03:D51F: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00D532 03:D522: C9 19     CMP #$19
C - - - - - 0x00D534 03:D524: B0 43     BCS bra_D569
C - - - - - 0x00D536 03:D526: A2 00     LDX #$00
bra_D528:
C - - - - - 0x00D538 03:D528: DD 90 D5  CMP tbl_D590,X
C - - - - - 0x00D53B 03:D52B: 90 03     BCC bra_D530
C - - - - - 0x00D53D 03:D52D: E8        INX
C - - - - - 0x00D53E 03:D52E: D0 F8     BNE bra_D528
bra_D530:
C - - - - - 0x00D540 03:D530: 8A        TXA
C - - - - - 0x00D541 03:D531: 0A        ASL
C - - - - - 0x00D542 03:D532: AA        TAX
C - - - - - 0x00D543 03:D533: 38        SEC
C - - - - - 0x00D544 03:D534: A5 2A     LDA ram_002A
C - - - - - 0x00D546 03:D536: FD 95 D5  SBC tbl_D595,X
C - - - - - 0x00D549 03:D539: A5 2B     LDA ram_002B
C - - - - - 0x00D54B 03:D53B: FD 96 D5  SBC tbl_D596,X
C - - - - - 0x00D54E 03:D53E: 90 29     BCC bra_D569
C - - - - - 0x00D550 03:D540: 38        SEC
C - - - - - 0x00D551 03:D541: A5 2C     LDA ram_002C
C - - - - - 0x00D553 03:D543: FD A1 D5  SBC tbl_D5A1,X
C - - - - - 0x00D556 03:D546: A5 2D     LDA ram_002D
C - - - - - 0x00D558 03:D548: FD A2 D5  SBC tbl_D5A2,X
C - - - - - 0x00D55B 03:D54B: B0 41     BCS bra_D58E
C - - - - - 0x00D55D 03:D54D: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00D560 03:D550: 30 06     BMI bra_D558
C - - - - - 0x00D562 03:D552: F0 3A     BEQ bra_D58E
C - - - - - 0x00D564 03:D554: C9 0B     CMP #$0B
C - - - - - 0x00D566 03:D556: F0 36     BEQ bra_D58E
bra_D558:
C - - - - - 0x00D568 03:D558: A9 0C     LDA #con_sfx_whistle_referee
C - - - - - 0x00D56A 03:D55A: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D56D 03:D55D: AD D3 03  LDA ram_03D3
C - - - - - 0x00D570 03:D560: 09 10     ORA #$10
C - - - - - 0x00D572 03:D562: 8D D3 03  STA ram_03D3
C - - - - - 0x00D575 03:D565: A2 03     LDX #$03
C - - - - - 0x00D577 03:D567: 38        SEC
C - - - - - 0x00D578 03:D568: 60        RTS
bra_D569:
C - - - - - 0x00D579 03:D569: 38        SEC
C - - - - - 0x00D57A 03:D56A: A5 2C     LDA ram_002C
C - - - - - 0x00D57C 03:D56C: E9 A2     SBC #$A2
C - - - - - 0x00D57E 03:D56E: A5 2D     LDA ram_002D
C - - - - - 0x00D580 03:D570: E9 00     SBC #$00
C - - - - - 0x00D582 03:D572: B0 1A     BCS bra_D58E
C - - - - - 0x00D584 03:D574: A2 01     LDX #$01
C - - - - - 0x00D586 03:D576: A9 00     LDA #$00
C - - - - - 0x00D588 03:D578: AC E0 03  LDY ram_03E0
C - - - - - 0x00D58B 03:D57B: C0 02     CPY #$02
C - - - - - 0x00D58D 03:D57D: B0 02     BCS bra_D581
C - - - - - 0x00D58F 03:D57F: A9 0B     LDA #$0B
bra_D581:
C - - - - - 0x00D591 03:D581: 4D 28 04  EOR ram_0428
C - - - - - 0x00D594 03:D584: D0 01     BNE bra_D587
C - - - - - 0x00D596 03:D586: E8        INX
bra_D587:
C - - - - - 0x00D597 03:D587: A9 0C     LDA #con_sfx_whistle_referee
C - - - - - 0x00D599 03:D589: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D59C 03:D58C: 38        SEC
C - - - - - 0x00D59D 03:D58D: 60        RTS
bra_D58E:
C - - - - - 0x00D59E 03:D58E: 18        CLC
C - - - - - 0x00D59F 03:D58F: 60        RTS



tbl_D590:
- D 2 - - - 0x00D5A0 03:D590: 08        .byte $08   ; 
- D 2 - - - 0x00D5A1 03:D591: 0E        .byte $0E   ; 
- D 2 - - - 0x00D5A2 03:D592: 16        .byte $16   ; 
- D 2 - - - 0x00D5A3 03:D593: 1C        .byte $1C   ; 
- - - - - - 0x00D5A4 03:D594: FF        .byte $FF   ; 



tbl_D595:
- D 2 - - - 0x00D5A5 03:D595: D4        .byte $D4   ; 
tbl_D596:
- D 2 - - - 0x00D5A6 03:D596: 00        .byte $00   ; 
- D 2 - - - 0x00D5A7 03:D597: D3        .byte $D3   ; 
- D 2 - - - 0x00D5A8 03:D598: 00        .byte $00   ; 
- D 2 - - - 0x00D5A9 03:D599: D2        .byte $D2   ; 
- D 2 - - - 0x00D5AA 03:D59A: 00        .byte $00   ; 
- D 2 - - - 0x00D5AB 03:D59B: D1        .byte $D1   ; 
- D 2 - - - 0x00D5AC 03:D59C: 00        .byte $00   ; 
- - - - - - 0x00D5AD 03:D59D: D0        .byte $D0   ; 
- - - - - - 0x00D5AE 03:D59E: 00        .byte $00   ; 
- - - - - - 0x00D5AF 03:D59F: CF        .byte $CF   ; 
- - - - - - 0x00D5B0 03:D5A0: 00        .byte $00   ; 



tbl_D5A1:
- D 2 - - - 0x00D5B1 03:D5A1: A2        .byte $A2   ; 
tbl_D5A2:
- D 2 - - - 0x00D5B2 03:D5A2: 00        .byte $00   ; 
- D 2 - - - 0x00D5B3 03:D5A3: A1        .byte $A1   ; 
- D 2 - - - 0x00D5B4 03:D5A4: 00        .byte $00   ; 
- D 2 - - - 0x00D5B5 03:D5A5: A0        .byte $A0   ; 
- D 2 - - - 0x00D5B6 03:D5A6: 00        .byte $00   ; 
- D 2 - - - 0x00D5B7 03:D5A7: 9F        .byte $9F   ; 
- D 2 - - - 0x00D5B8 03:D5A8: 00        .byte $00   ; 
- - - - - - 0x00D5B9 03:D5A9: 9E        .byte $9E   ; 
- - - - - - 0x00D5BA 03:D5AA: 00        .byte $00   ; 
- - - - - - 0x00D5BB 03:D5AB: 9D        .byte $9D   ; 
- - - - - - 0x00D5BC 03:D5AC: 00        .byte $00   ; 



sub_D5AD:
C - - - - - 0x00D5BD 03:D5AD: A9 80     LDA #$80
C - - - - - 0x00D5BF 03:D5AF: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00D5C2 03:D5B2: A9 00     LDA #$00
C - - - - - 0x00D5C4 03:D5B4: 48        PHA
C - - - - - 0x00D5C5 03:D5B5: A9 04     LDA #$04
C - - - - - 0x00D5C7 03:D5B7: 85 67     STA ram_0067
C - - - - - 0x00D5C9 03:D5B9: A9 05     LDA #$05
C - - - - - 0x00D5CB 03:D5BB: 85 68     STA ram_0068
C - - - - - 0x00D5CD 03:D5BD: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00D5D0 03:D5C0: 68        PLA
C - - - - - 0x00D5D1 03:D5C1: 20 1E 80  JSR sub_0x00802E
C - - - - - 0x00D5D4 03:D5C4: A9 C0     LDA #$C0
C - - - - - 0x00D5D6 03:D5C6: 85 2B     STA ram_002B
C - - - - - 0x00D5D8 03:D5C8: A9 01     LDA #$01
C - - - - - 0x00D5DA 03:D5CA: 85 2C     STA ram_002C
C - - - - - 0x00D5DC 03:D5CC: A9 00     LDA #$00
C - - - - - 0x00D5DE 03:D5CE: 85 2A     STA ram_002A
bra_D5D0:
C - - - - - 0x00D5E0 03:D5D0: A5 2A     LDA ram_002A
C - - - - - 0x00D5E2 03:D5D2: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D5E5 03:D5D5: A9 00     LDA #$00
C - - - - - 0x00D5E7 03:D5D7: A6 2A     LDX ram_002A
C - - - - - 0x00D5E9 03:D5D9: E0 0B     CPX #$0B
C - - - - - 0x00D5EB 03:D5DB: 90 02     BCC bra_D5DF
C - - - - - 0x00D5ED 03:D5DD: A9 02     LDA #$02
bra_D5DF:
C - - - - - 0x00D5EF 03:D5DF: A0 01     LDY #$01
C - - - - - 0x00D5F1 03:D5E1: 91 61     STA (ram_0061),Y
C - - - - - 0x00D5F3 03:D5E3: E6 2A     INC ram_002A
C - - - - - 0x00D5F5 03:D5E5: A5 2A     LDA ram_002A
C - - - - - 0x00D5F7 03:D5E7: C9 16     CMP #$16
C - - - - - 0x00D5F9 03:D5E9: D0 E5     BNE bra_D5D0
C - - - - - 0x00D5FB 03:D5EB: A9 02     LDA #$02
C - - - - - 0x00D5FD 03:D5ED: 8D D4 03  STA ram_03D4
C - - - - - 0x00D600 03:D5F0: A9 00     LDA #$00
C - - - - - 0x00D602 03:D5F2: 8D DE 03  STA ram_03DE
C - - - - - 0x00D605 03:D5F5: A9 00     LDA #$00
C - - - - - 0x00D607 03:D5F7: 8D D8 03  STA ram_03D8
C - - - - - 0x00D60A 03:D5FA: A9 01     LDA #$01
C - - - - - 0x00D60C 03:D5FC: 8D DA 03  STA ram_03DA
C - - - - - 0x00D60F 03:D5FF: A9 02     LDA #$02
C - - - - - 0x00D611 03:D601: 8D E0 03  STA ram_03E0
C - - - - - 0x00D614 03:D604: 60        RTS



ofs_D605:
bra_D605_loop:
C - - - - - 0x00D615 03:D605: A9 01     LDA #$01
C - - - - - 0x00D617 03:D607: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D61A 03:D60A: 24 8A     BIT ram_008A
C - - - - - 0x00D61C 03:D60C: 10 F7     BPL bra_D605_loop
C - - - - - 0x00D61E 03:D60E: A9 AB     LDA #$AB
C - - - - - 0x00D620 03:D610: 8D DB 03  STA ram_03DB
C - - - - - 0x00D623 03:D613: A9 FC     LDA #$FC
C - - - - - 0x00D625 03:D615: 8D DD 03  STA ram_03DD
C - - - - - 0x00D628 03:D618: A2 00     LDX #$00
C - - - - - 0x00D62A 03:D61A: A0 00     LDY #$00
C - - - - - 0x00D62C 03:D61C: A5 8D     LDA ram_008D
C - - - - - 0x00D62E 03:D61E: C9 80     CMP #$80
C - - - - - 0x00D630 03:D620: F0 0B     BEQ bra_D62D
C - - - - - 0x00D632 03:D622: A2 55     LDX #$55
C - - - - - 0x00D634 03:D624: A0 03     LDY #$03
C - - - - - 0x00D636 03:D626: C9 40     CMP #$40
C - - - - - 0x00D638 03:D628: F0 03     BEQ bra_D62D
C - - - - - 0x00D63A 03:D62A: 20 1E C9  JSR sub_C91E
bra_D62D:
C - - - - - 0x00D63D 03:D62D: 8E D5 03  STX ram_03D5
C - - - - - 0x00D640 03:D630: 8C D7 03  STY ram_03D7
C - - - - - 0x00D643 03:D633: A9 18     LDA #$18
C - - - - - 0x00D645 03:D635: 8D 24 04  STA ram_ball_Z_lo
bra_D638:
C - - - - - 0x00D648 03:D638: A9 01     LDA #$01
C - - - - - 0x00D64A 03:D63A: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D64D 03:D63D: 20 B1 D6  JSR sub_D6B1
C - - - - - 0x00D650 03:D640: 20 68 DC  JSR sub_DC68
C - - - - - 0x00D653 03:D643: CE 24 04  DEC ram_ball_Z_lo
C - - - - - 0x00D656 03:D646: D0 F0     BNE bra_D638
C - - - - - 0x00D658 03:D648: A9 08     LDA #$08
C - - - - - 0x00D65A 03:D64A: 20 09 C6  JSR sub_C609_delay
bra_D64D:
C - - - - - 0x00D65D 03:D64D: A9 01     LDA #$01
C - - - - - 0x00D65F 03:D64F: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D662 03:D652: EE DE 03  INC ram_03DE
C - - - - - 0x00D665 03:D655: AD DE 03  LDA ram_03DE
C - - - - - 0x00D668 03:D658: C9 80     CMP #$80
C - - - - - 0x00D66A 03:D65A: 90 F1     BCC bra_D64D
C - - - - - 0x00D66C 03:D65C: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00D66F 03:D65F: F0 02     BEQ bra_D663
C - - - - - 0x00D671 03:D661: A2 01     LDX #$01
bra_D663:
C - - - - - 0x00D673 03:D663: FE 8F 00  INC a: ram_goals_pk,X
C - - - - - 0x00D676 03:D666: A9 0E     LDA #con_sfx_fans
C - - - - - 0x00D678 03:D668: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D67B 03:D66B: A2 0D     LDX #$0D
C - - - - - 0x00D67D 03:D66D: A9 78     LDA #$78
C - - - - - 0x00D67F 03:D66F: 95 01     STA ram_0001,X
C - - - - - 0x00D681 03:D671: A9 04     LDA #$04
C - - - - - 0x00D683 03:D673: 95 02     STA ram_0002,X
C - - - - - 0x00D685 03:D675: A9 80     LDA #> (ofs_0x00803D - $01)
C - - - - - 0x00D687 03:D677: A0 2C     LDY #< (ofs_0x00803D - $01)
C - - - - - 0x00D689 03:D679: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00D68C 03:D67C: 38        SEC
C - - - - - 0x00D68D 03:D67D: 4C 9F D6  JMP loc_D69F



ofs_D680:
C - - - - - 0x00D690 03:D680: A9 07     LDA #con_sfx_catch
C - - - - - 0x00D692 03:D682: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D695 03:D685: A9 00     LDA #$00
C - - - - - 0x00D697 03:D687: 8D DB 03  STA ram_03DB
C - - - - - 0x00D69A 03:D68A: A9 FB     LDA #$FB
C - - - - - 0x00D69C 03:D68C: 8D DD 03  STA ram_03DD
bra_D68F:
C - - - - - 0x00D69F 03:D68F: A9 01     LDA #$01
C - - - - - 0x00D6A1 03:D691: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D6A4 03:D694: 20 68 DC  JSR sub_DC68
C - - - - - 0x00D6A7 03:D697: AD DE 03  LDA ram_03DE
C - - - - - 0x00D6AA 03:D69A: C9 10     CMP #$10
C - - - - - 0x00D6AC 03:D69C: B0 F1     BCS bra_D68F
C - - - - - 0x00D6AE 03:D69E: 18        CLC
loc_D69F:
C D 2 - - - 0x00D6AF 03:D69F: 26 91     ROL ram_0091
C - - - - - 0x00D6B1 03:D6A1: 26 92     ROL ram_0092
C - - - - - 0x00D6B3 03:D6A3: A9 14     LDA #$14
C - - - - - 0x00D6B5 03:D6A5: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D6B8 03:D6A8: A5 8A     LDA ram_008A
C - - - - - 0x00D6BA 03:D6AA: 09 20     ORA #$20
C - - - - - 0x00D6BC 03:D6AC: 85 8A     STA ram_008A
C - - - - - 0x00D6BE 03:D6AE: 4C F1 C5  JMP loc_C5F1



sub_D6B1:
C - - - - - 0x00D6C1 03:D6B1: A9 18     LDA #$18
C - - - - - 0x00D6C3 03:D6B3: 38        SEC
C - - - - - 0x00D6C4 03:D6B4: ED 24 04  SBC ram_ball_Z_lo
C - - - - - 0x00D6C7 03:D6B7: AA        TAX
C - - - - - 0x00D6C8 03:D6B8: BD D4 D6  LDA tbl_D6D4,X
C - - - - - 0x00D6CB 03:D6BB: 8D E4 03  STA ram_03E4
C - - - - - 0x00D6CE 03:D6BE: AD D4 03  LDA ram_03D4
C - - - - - 0x00D6D1 03:D6C1: 29 3F     AND #$3F
C - - - - - 0x00D6D3 03:D6C3: 8D D4 03  STA ram_03D4
C - - - - - 0x00D6D6 03:D6C6: 8A        TXA
C - - - - - 0x00D6D7 03:D6C7: 29 03     AND #$03
C - - - - - 0x00D6D9 03:D6C9: 18        CLC
C - - - - - 0x00D6DA 03:D6CA: 6A        ROR
C - - - - - 0x00D6DB 03:D6CB: 6A        ROR
C - - - - - 0x00D6DC 03:D6CC: 6A        ROR
C - - - - - 0x00D6DD 03:D6CD: 0D D4 03  ORA ram_03D4
C - - - - - 0x00D6E0 03:D6D0: 8D D4 03  STA ram_03D4
C - - - - - 0x00D6E3 03:D6D3: 60        RTS



tbl_D6D4:
; анимация мяча в пенальти в зависимости от высоты
- D 2 - - - 0x00D6E4 03:D6D4: 09        .byte $09   ; 
- D 2 - - - 0x00D6E5 03:D6D5: 09        .byte $09   ; 
- D 2 - - - 0x00D6E6 03:D6D6: 09        .byte $09   ; 
- D 2 - - - 0x00D6E7 03:D6D7: 09        .byte $09   ; 
- D 2 - - - 0x00D6E8 03:D6D8: 09        .byte $09   ; 
- D 2 - - - 0x00D6E9 03:D6D9: 08        .byte $08   ; 
- D 2 - - - 0x00D6EA 03:D6DA: 08        .byte $08   ; 
- D 2 - - - 0x00D6EB 03:D6DB: 08        .byte $08   ; 
- D 2 - - - 0x00D6EC 03:D6DC: 08        .byte $08   ; 
- D 2 - - - 0x00D6ED 03:D6DD: 08        .byte $08   ; 
- D 2 - - - 0x00D6EE 03:D6DE: 07        .byte $07   ; 
- D 2 - - - 0x00D6EF 03:D6DF: 07        .byte $07   ; 
- D 2 - - - 0x00D6F0 03:D6E0: 07        .byte $07   ; 
- D 2 - - - 0x00D6F1 03:D6E1: 07        .byte $07   ; 
- D 2 - - - 0x00D6F2 03:D6E2: 07        .byte $07   ; 
- D 2 - - - 0x00D6F3 03:D6E3: 06        .byte $06   ; 
- D 2 - - - 0x00D6F4 03:D6E4: 06        .byte $06   ; 
- D 2 - - - 0x00D6F5 03:D6E5: 06        .byte $06   ; 
- D 2 - - - 0x00D6F6 03:D6E6: 06        .byte $06   ; 
- D 2 - - - 0x00D6F7 03:D6E7: 06        .byte $06   ; 
- D 2 - - - 0x00D6F8 03:D6E8: 05        .byte $05   ; 
- D 2 - - - 0x00D6F9 03:D6E9: 05        .byte $05   ; 
- D 2 - - - 0x00D6FA 03:D6EA: 05        .byte $05   ; 
- D 2 - - - 0x00D6FB 03:D6EB: 05        .byte $05   ; 
- - - - - - 0x00D6FC 03:D6EC: 05        .byte $05   ; 
- - - - - - 0x00D6FD 03:D6ED: 04        .byte $04   ; 
- - - - - - 0x00D6FE 03:D6EE: 04        .byte $04   ; 
- - - - - - 0x00D6FF 03:D6EF: 04        .byte $04   ; 
- - - - - - 0x00D700 03:D6F0: 04        .byte $04   ; 
- - - - - - 0x00D701 03:D6F1: 04        .byte $04   ; 
- - - - - - 0x00D702 03:D6F2: 04        .byte $04   ; 
- - - - - - 0x00D703 03:D6F3: 04        .byte $04   ; 


; bzk garbage
- - - - - - 0x00D704 03:D6F4: 20 6B DD  JSR sub_DD6B
- - - - - - 0x00D707 03:D6F7: 8D E6 03  STA ram_03E6



ofs_D6FA:
C - - - - - 0x00D70A 03:D6FA: 20 F2 DD  JSR sub_DDF2
C - - - - - 0x00D70D 03:D6FD: 20 36 DE  JSR sub_DE36
C - - - - - 0x00D710 03:D700: A9 01     LDA #$01
C - - - - - 0x00D712 03:D702: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D715 03:D705: 20 5E DB  JSR sub_DB5E
C - - - - - 0x00D718 03:D708: AD D3 03  LDA ram_03D3
C - - - - - 0x00D71B 03:D70B: 09 80     ORA #$80
C - - - - - 0x00D71D 03:D70D: 8D D3 03  STA ram_03D3
bra_D710_loop:
C - - - - - 0x00D720 03:D710: A9 01     LDA #$01
C - - - - - 0x00D722 03:D712: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D725 03:D715: 20 BE DB  JSR sub_DBBE
C - - - - - 0x00D728 03:D718: 20 17 DD  JSR sub_DD17
C - - - - - 0x00D72B 03:D71B: 20 ED DC  JSR sub_DCED
C - - - - - 0x00D72E 03:D71E: 20 1A DA  JSR sub_DA1A
C - - - - - 0x00D731 03:D721: 20 B3 D8  JSR sub_D8B3
C - - - - - 0x00D734 03:D724: 20 A3 D9  JSR sub_D9A3
C - - - - - 0x00D737 03:D727: 2C D3 03  BIT ram_03D3
C - - - - - 0x00D73A 03:D72A: 30 E4     BMI bra_D710_loop
C - - - - - 0x00D73C 03:D72C: 4C F1 C5  JMP loc_C5F1



sub_D72F:
C - - - - - 0x00D73F 03:D72F: 38        SEC
C - - - - - 0x00D740 03:D730: AD D8 03  LDA ram_03D8
C - - - - - 0x00D743 03:D733: E9 10     SBC #$10
C - - - - - 0x00D745 03:D735: AA        TAX
C - - - - - 0x00D746 03:D736: AD DA 03  LDA ram_03DA
C - - - - - 0x00D749 03:D739: E9 00     SBC #$00
C - - - - - 0x00D74B 03:D73B: B0 03     BCS bra_D740
C - - - - - 0x00D74D 03:D73D: A2 00     LDX #$00
C - - - - - 0x00D74F 03:D73F: 8A        TXA
bra_D740:
C - - - - - 0x00D750 03:D740: A8        TAY
C - - - - - 0x00D751 03:D741: A9 00     LDA #$00
loc_D743:
C D 2 - - - 0x00D753 03:D743: 48        PHA
C - - - - - 0x00D754 03:D744: 38        SEC
C - - - - - 0x00D755 03:D745: 8A        TXA
C - - - - - 0x00D756 03:D746: E9 60     SBC #$60
C - - - - - 0x00D758 03:D748: AA        TAX
C - - - - - 0x00D759 03:D749: 98        TYA
C - - - - - 0x00D75A 03:D74A: E9 00     SBC #$00
C - - - - - 0x00D75C 03:D74C: A8        TAY
C - - - - - 0x00D75D 03:D74D: 68        PLA
C - - - - - 0x00D75E 03:D74E: 90 05     BCC bra_D755
C - - - - - 0x00D760 03:D750: 69 00     ADC #$00
C - - - - - 0x00D762 03:D752: 4C 43 D7  JMP loc_D743
bra_D755:
C - - - - - 0x00D765 03:D755: C9 05     CMP #$05
C - - - - - 0x00D767 03:D757: 90 02     BCC bra_D75B
C - - - - - 0x00D769 03:D759: A9 04     LDA #$04
bra_D75B:
C - - - - - 0x00D76B 03:D75B: 85 2A     STA ram_002A
C - - - - - 0x00D76D 03:D75D: 38        SEC
C - - - - - 0x00D76E 03:D75E: AD DE 03  LDA ram_03DE
C - - - - - 0x00D771 03:D761: E9 A0     SBC #$A0
C - - - - - 0x00D773 03:D763: AA        TAX
C - - - - - 0x00D774 03:D764: AD E0 03  LDA ram_03E0
C - - - - - 0x00D777 03:D767: E9 00     SBC #$00
C - - - - - 0x00D779 03:D769: B0 03     BCS bra_D76E
C - - - - - 0x00D77B 03:D76B: A2 00     LDX #$00
C - - - - - 0x00D77D 03:D76D: 8A        TXA
bra_D76E:
C - - - - - 0x00D77E 03:D76E: A8        TAY
C - - - - - 0x00D77F 03:D76F: A9 00     LDA #$00
loc_D771:
C D 2 - - - 0x00D781 03:D771: 48        PHA
C - - - - - 0x00D782 03:D772: 38        SEC
C - - - - - 0x00D783 03:D773: 8A        TXA
C - - - - - 0x00D784 03:D774: E9 58     SBC #$58
C - - - - - 0x00D786 03:D776: AA        TAX
C - - - - - 0x00D787 03:D777: 98        TYA
C - - - - - 0x00D788 03:D778: E9 00     SBC #$00
C - - - - - 0x00D78A 03:D77A: A8        TAY
C - - - - - 0x00D78B 03:D77B: 68        PLA
C - - - - - 0x00D78C 03:D77C: 90 05     BCC bra_D783
C - - - - - 0x00D78E 03:D77E: 69 04     ADC #$04
C - - - - - 0x00D790 03:D780: 4C 71 D7  JMP loc_D771
bra_D783:
C - - - - - 0x00D793 03:D783: C9 23     CMP #$23
C - - - - - 0x00D795 03:D785: 90 02     BCC bra_D789
C - - - - - 0x00D797 03:D787: A9 23     LDA #$23
bra_D789:
C - - - - - 0x00D799 03:D789: 18        CLC
C - - - - - 0x00D79A 03:D78A: 65 2A     ADC ram_002A
C - - - - - 0x00D79C 03:D78C: CD 27 04  CMP ram_area_id
C - - - - - 0x00D79F 03:D78F: F0 0B     BEQ bra_D79C_RTS
C - - - - - 0x00D7A1 03:D791: 8D 27 04  STA ram_area_id
C - - - - - 0x00D7A4 03:D794: A9 80     LDA #$80
C - - - - - 0x00D7A6 03:D796: 0D 2C 04  ORA ram_042C
C - - - - - 0x00D7A9 03:D799: 8D 2C 04  STA ram_042C
bra_D79C_RTS:
C - - - - - 0x00D7AC 03:D79C: 60        RTS



ofs_D79D:
C - - - - - 0x00D7AD 03:D79D: A9 00     LDA #$00
C - - - - - 0x00D7AF 03:D79F: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00D7B2 03:D7A2: 8D 26 04  STA ram_0426
C - - - - - 0x00D7B5 03:D7A5: 8D D3 03  STA ram_03D3
C - - - - - 0x00D7B8 03:D7A8: AD D4 03  LDA ram_03D4
C - - - - - 0x00D7BB 03:D7AB: 29 DF     AND #$DF
C - - - - - 0x00D7BD 03:D7AD: 8D D4 03  STA ram_03D4
bra_D7B0:
loc_D7B0:
C D 2 - - - 0x00D7C0 03:D7B0: A9 01     LDA #$01
C - - - - - 0x00D7C2 03:D7B2: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00D7C5 03:D7B5: 20 ED DC  JSR sub_DCED
C - - - - - 0x00D7C8 03:D7B8: 2C D3 03  BIT ram_03D3
C - - - - - 0x00D7CB 03:D7BB: 50 F3     BVC bra_D7B0
C - - - - - 0x00D7CD 03:D7BD: AD D3 03  LDA ram_03D3
C - - - - - 0x00D7D0 03:D7C0: 29 20     AND #$20
C - - - - - 0x00D7D2 03:D7C2: D0 0D     BNE bra_D7D1
C - - - - - 0x00D7D4 03:D7C4: AD D3 03  LDA ram_03D3
C - - - - - 0x00D7D7 03:D7C7: 09 20     ORA #$20
C - - - - - 0x00D7D9 03:D7C9: 8D D3 03  STA ram_03D3
C - - - - - 0x00D7DC 03:D7CC: A9 00     LDA #$00
C - - - - - 0x00D7DE 03:D7CE: 8D E2 03  STA ram_03E2
bra_D7D1:
C - - - - - 0x00D7E1 03:D7D1: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00D7E4 03:D7D4: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00D7E7 03:D7D7: AE E2 03  LDX ram_03E2
C - - - - - 0x00D7EA 03:D7DA: BD 42 D8  LDA tbl_D842,X
C - - - - - 0x00D7ED 03:D7DD: 49 FF     EOR #$FF
C - - - - - 0x00D7EF 03:D7DF: 18        CLC
C - - - - - 0x00D7F0 03:D7E0: 69 01     ADC #$01
C - - - - - 0x00D7F2 03:D7E2: 85 2A     STA ram_002A
C - - - - - 0x00D7F4 03:D7E4: A9 FF     LDA #$FF
C - - - - - 0x00D7F6 03:D7E6: 85 2B     STA ram_002B
C - - - - - 0x00D7F8 03:D7E8: A0 13     LDY #$13
C - - - - - 0x00D7FA 03:D7EA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D7FC 03:D7EC: 18        CLC
C - - - - - 0x00D7FD 03:D7ED: 69 10     ADC #$10
C - - - - - 0x00D7FF 03:D7EF: 29 E0     AND #$E0
C - - - - - 0x00D801 03:D7F1: A0 00     LDY #$00
C - - - - - 0x00D803 03:D7F3: AA        TAX
C - - - - - 0x00D804 03:D7F4: 29 20     AND #$20
C - - - - - 0x00D806 03:D7F6: D0 06     BNE bra_D7FE
C - - - - - 0x00D808 03:D7F8: 8A        TXA
C - - - - - 0x00D809 03:D7F9: 29 40     AND #$40
C - - - - - 0x00D80B 03:D7FB: F0 02     BEQ bra_D7FF
C - - - - - 0x00D80D 03:D7FD: C8        INY
bra_D7FE:
C - - - - - 0x00D80E 03:D7FE: C8        INY
bra_D7FF:
C - - - - - 0x00D80F 03:D7FF: 20 39 D8  JSR sub_D839
C - - - - - 0x00D812 03:D802: EE E2 03  INC ram_03E2
C - - - - - 0x00D815 03:D805: AD E2 03  LDA ram_03E2
C - - - - - 0x00D818 03:D808: C9 0B     CMP #$0B
C - - - - - 0x00D81A 03:D80A: D0 08     BNE bra_D814
C - - - - - 0x00D81C 03:D80C: AD D3 03  LDA ram_03D3
C - - - - - 0x00D81F 03:D80F: 29 9F     AND #$9F
C - - - - - 0x00D821 03:D811: 8D D3 03  STA ram_03D3
bra_D814:
C - - - - - 0x00D824 03:D814: AD E2 03  LDA ram_03E2
C - - - - - 0x00D827 03:D817: 29 01     AND #$01
C - - - - - 0x00D829 03:D819: 8D E4 03  STA ram_03E4
C - - - - - 0x00D82C 03:D81C: EE E4 03  INC ram_03E4
C - - - - - 0x00D82F 03:D81F: A2 00     LDX #$00
C - - - - - 0x00D831 03:D821: AD E2 03  LDA ram_03E2
C - - - - - 0x00D834 03:D824: 29 02     AND #$02
C - - - - - 0x00D836 03:D826: F0 02     BEQ bra_D82A
C - - - - - 0x00D838 03:D828: A2 40     LDX #$40
bra_D82A:
C - - - - - 0x00D83A 03:D82A: 86 2A     STX ram_002A
C - - - - - 0x00D83C 03:D82C: AD D4 03  LDA ram_03D4
C - - - - - 0x00D83F 03:D82F: 29 3F     AND #$3F
C - - - - - 0x00D841 03:D831: 05 2A     ORA ram_002A
C - - - - - 0x00D843 03:D833: 8D D4 03  STA ram_03D4
C - - - - - 0x00D846 03:D836: 4C B0 D7  JMP loc_D7B0



sub_D839:
C - - - - - 0x00D849 03:D839: 88        DEY
C - - - - - 0x00D84A 03:D83A: 30 16     BMI bra_D852    ; bzk залупно
C - - - - - 0x00D84C 03:D83C: 88        DEY
C - - - - - 0x00D84D 03:D83D: 30 3D     BMI bra_D87C
C - - - - - 0x00D84F 03:D83F: 4C 83 D8  JMP loc_D883



tbl_D842:
- D 2 - - - 0x00D852 03:D842: 05        .byte $05   ; 
- D 2 - - - 0x00D853 03:D843: 06        .byte $06   ; 
- D 2 - - - 0x00D854 03:D844: 07        .byte $07   ; 
- D 2 - - - 0x00D855 03:D845: 08        .byte $08   ; 
- D 2 - - - 0x00D856 03:D846: 09        .byte $09   ; 
- D 2 - - - 0x00D857 03:D847: 09        .byte $09   ; 
- D 2 - - - 0x00D858 03:D848: 09        .byte $09   ; 
- D 2 - - - 0x00D859 03:D849: 08        .byte $08   ; 
- D 2 - - - 0x00D85A 03:D84A: 07        .byte $07   ; 
- D 2 - - - 0x00D85B 03:D84B: 06        .byte $06   ; 
- D 2 - - - 0x00D85C 03:D84C: 05        .byte $05   ; 


; bzk garbage
- - - - - - 0x00D85D 03:D84D: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 



bra_D852:
C - - - - - 0x00D862 03:D852: A2 00     LDX #$00
C - - - - - 0x00D864 03:D854: A0 00     LDY #$00
C - - - - - 0x00D866 03:D856: 20 99 D8  JSR sub_D899
sub_D859:
C - - - - - 0x00D869 03:D859: A0 01     LDY #$01
C - - - - - 0x00D86B 03:D85B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D86D 03:D85D: A6 2A     LDX ram_002A
C - - - - - 0x00D86F 03:D85F: A4 2B     LDY ram_002B
C - - - - - 0x00D871 03:D861: 29 80     AND #$80
C - - - - - 0x00D873 03:D863: F0 03     BEQ bra_D868
C - - - - - 0x00D875 03:D865: 20 1E C9  JSR sub_C91E
bra_D868:
sub_D868:
C - - - - - 0x00D878 03:D868: 98        TYA
C - - - - - 0x00D879 03:D869: 48        PHA
C - - - - - 0x00D87A 03:D86A: 8A        TXA
C - - - - - 0x00D87B 03:D86B: A0 0B     LDY #$0B
C - - - - - 0x00D87D 03:D86D: 18        CLC
C - - - - - 0x00D87E 03:D86E: 71 61     ADC (ram_0061),Y
C - - - - - 0x00D880 03:D870: 8D DE 03  STA ram_03DE
C - - - - - 0x00D883 03:D873: C8        INY
C - - - - - 0x00D884 03:D874: C8        INY
C - - - - - 0x00D885 03:D875: 68        PLA
C - - - - - 0x00D886 03:D876: 71 61     ADC (ram_0061),Y
C - - - - - 0x00D888 03:D878: 8D E0 03  STA ram_03E0
C - - - - - 0x00D88B 03:D87B: 60        RTS
bra_D87C:
C - - - - - 0x00D88C 03:D87C: 20 8A D8  JSR sub_D88A
C - - - - - 0x00D88F 03:D87F: 20 59 D8  JSR sub_D859
C - - - - - 0x00D892 03:D882: 60        RTS



loc_D883:
C D 2 - - - 0x00D893 03:D883: A2 00     LDX #$00
C - - - - - 0x00D895 03:D885: A0 00     LDY #$00
C - - - - - 0x00D897 03:D887: 20 68 D8  JSR sub_D868
sub_D88A:
C - - - - - 0x00D89A 03:D88A: A0 01     LDY #$01
C - - - - - 0x00D89C 03:D88C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00D89E 03:D88E: A6 2A     LDX ram_002A
C - - - - - 0x00D8A0 03:D890: A4 2B     LDY ram_002B
C - - - - - 0x00D8A2 03:D892: 29 40     AND #$40
C - - - - - 0x00D8A4 03:D894: F0 03     BEQ bra_D899
C - - - - - 0x00D8A6 03:D896: 20 1E C9  JSR sub_C91E
bra_D899:
sub_D899:
C - - - - - 0x00D8A9 03:D899: 98        TYA
C - - - - - 0x00D8AA 03:D89A: 48        PHA
C - - - - - 0x00D8AB 03:D89B: 8A        TXA
C - - - - - 0x00D8AC 03:D89C: A0 05     LDY #$05
C - - - - - 0x00D8AE 03:D89E: 18        CLC
C - - - - - 0x00D8AF 03:D89F: 71 61     ADC (ram_0061),Y
C - - - - - 0x00D8B1 03:D8A1: AA        TAX
C - - - - - 0x00D8B2 03:D8A2: C8        INY
C - - - - - 0x00D8B3 03:D8A3: C8        INY
C - - - - - 0x00D8B4 03:D8A4: 68        PLA
C - - - - - 0x00D8B5 03:D8A5: 71 61     ADC (ram_0061),Y
C - - - - - 0x00D8B7 03:D8A7: 10 03     BPL bra_D8AC
- - - - - - 0x00D8B9 03:D8A9: A2 00     LDX #$00
- - - - - - 0x00D8BB 03:D8AB: 8A        TXA
bra_D8AC:
C - - - - - 0x00D8BC 03:D8AC: 8E D8 03  STX ram_03D8
C - - - - - 0x00D8BF 03:D8AF: 8D DA 03  STA ram_03DA
C - - - - - 0x00D8C2 03:D8B2: 60        RTS



sub_D8B3:
C - - - - - 0x00D8C3 03:D8B3: AD 26 04  LDA ram_0426
C - - - - - 0x00D8C6 03:D8B6: F0 03     BEQ bra_D8BB
- - - - - - 0x00D8C8 03:D8B8: 4C 38 D9  JMP loc_D938_RTS
bra_D8BB:
C - - - - - 0x00D8CB 03:D8BB: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00D8CE 03:D8BE: C9 20     CMP #$20
C - - - - - 0x00D8D0 03:D8C0: 90 03     BCC bra_D8C5
C - - - - - 0x00D8D2 03:D8C2: 4C 38 D9  JMP loc_D938_RTS
bra_D8C5:
C - - - - - 0x00D8D5 03:D8C5: A0 00     LDY #$00
bra_D8C7:
C - - - - - 0x00D8D7 03:D8C7: D9 39 D9  CMP tbl_D939,Y
C - - - - - 0x00D8DA 03:D8CA: 90 03     BCC bra_D8CF
C - - - - - 0x00D8DC 03:D8CC: C8        INY
C - - - - - 0x00D8DD 03:D8CD: D0 F8     BNE bra_D8C7
bra_D8CF:
C - - - - - 0x00D8DF 03:D8CF: 98        TYA
C - - - - - 0x00D8E0 03:D8D0: 0A        ASL
C - - - - - 0x00D8E1 03:D8D1: 0A        ASL
C - - - - - 0x00D8E2 03:D8D2: 85 2B     STA ram_002B
C - - - - - 0x00D8E4 03:D8D4: AD E6 03  LDA ram_03E6
C - - - - - 0x00D8E7 03:D8D7: AE DE 03  LDX ram_03DE
C - - - - - 0x00D8EA 03:D8DA: AC E0 03  LDY ram_03E0
C - - - - - 0x00D8ED 03:D8DD: C0 02     CPY #$02
C - - - - - 0x00D8EF 03:D8DF: 90 0A     BCC bra_D8EB
C - - - - - 0x00D8F1 03:D8E1: 20 50 CB  JSR sub_CB50
C - - - - - 0x00D8F4 03:D8E4: AD E6 03  LDA ram_03E6
C - - - - - 0x00D8F7 03:D8E7: 18        CLC
C - - - - - 0x00D8F8 03:D8E8: 69 80     ADC #$80
C - - - - - 0x00D8FA 03:D8EA: 38        SEC
bra_D8EB:
C - - - - - 0x00D8FB 03:D8EB: 26 2C     ROL ram_002C
C - - - - - 0x00D8FD 03:D8ED: C9 30     CMP #$30
C - - - - - 0x00D8FF 03:D8EF: 90 47     BCC bra_D938_RTS
C - - - - - 0x00D901 03:D8F1: C9 D0     CMP #$D0
C - - - - - 0x00D903 03:D8F3: B0 43     BCS bra_D938_RTS
C - - - - - 0x00D905 03:D8F5: 8A        TXA
C - - - - - 0x00D906 03:D8F6: A6 2B     LDX ram_002B
C - - - - - 0x00D908 03:D8F8: 38        SEC
C - - - - - 0x00D909 03:D8F9: FD 8F D9  SBC tbl_D98F,X
C - - - - - 0x00D90C 03:D8FC: AA        TAX
C - - - - - 0x00D90D 03:D8FD: 98        TYA
C - - - - - 0x00D90E 03:D8FE: A4 2B     LDY ram_002B
C - - - - - 0x00D910 03:D900: F9 90 D9  SBC tbl_D990,Y
C - - - - - 0x00D913 03:D903: 90 33     BCC bra_D938_RTS
C - - - - - 0x00D915 03:D905: D0 31     BNE bra_D938_RTS
C - - - - - 0x00D917 03:D907: E0 08     CPX #$08
C - - - - - 0x00D919 03:D909: B0 2D     BCS bra_D938_RTS
C - - - - - 0x00D91B 03:D90B: 18        CLC
C - - - - - 0x00D91C 03:D90C: AE D8 03  LDX ram_03D8
C - - - - - 0x00D91F 03:D90F: AC DA 03  LDY ram_03DA
C - - - - - 0x00D922 03:D912: F0 04     BEQ bra_D918
C - - - - - 0x00D924 03:D914: 20 4A CB  JSR sub_CB4A
C - - - - - 0x00D927 03:D917: 38        SEC
bra_D918:
C - - - - - 0x00D928 03:D918: 26 2C     ROL ram_002C
C - - - - - 0x00D92A 03:D91A: 38        SEC
C - - - - - 0x00D92B 03:D91B: 8A        TXA
C - - - - - 0x00D92C 03:D91C: A6 2B     LDX ram_002B
C - - - - - 0x00D92E 03:D91E: FD 91 D9  SBC tbl_D991,X
C - - - - - 0x00D931 03:D921: AA        TAX
C - - - - - 0x00D932 03:D922: 98        TYA
C - - - - - 0x00D933 03:D923: A4 2B     LDY ram_002B
C - - - - - 0x00D935 03:D925: F9 92 D9  SBC tbl_D992,Y
C - - - - - 0x00D938 03:D928: A8        TAY
C - - - - - 0x00D939 03:D929: B0 03     BCS bra_D92E
C - - - - - 0x00D93B 03:D92B: 20 1E C9  JSR sub_C91E
bra_D92E:
C - - - - - 0x00D93E 03:D92E: 98        TYA
C - - - - - 0x00D93F 03:D92F: D0 07     BNE bra_D938_RTS
C - - - - - 0x00D941 03:D931: E0 08     CPX #$08
C - - - - - 0x00D943 03:D933: B0 03     BCS bra_D938_RTS
C - - - - - 0x00D945 03:D935: 20 3E D9  JSR sub_D93E
bra_D938_RTS:
loc_D938_RTS:
C D 2 - - - 0x00D948 03:D938: 60        RTS



tbl_D939:
- D 2 - - - 0x00D949 03:D939: 08        .byte $08   ; 
- D 2 - - - 0x00D94A 03:D93A: 0E        .byte $0E   ; 
- D 2 - - - 0x00D94B 03:D93B: 16        .byte $16   ; 
- D 2 - - - 0x00D94C 03:D93C: 1C        .byte $1C   ; 
- D 2 - - - 0x00D94D 03:D93D: FF        .byte $FF   ; 



sub_D93E:
C - - - - - 0x00D94E 03:D93E: A4 2B     LDY ram_002B
C - - - - - 0x00D950 03:D940: BE 91 D9  LDX tbl_D991,Y
C - - - - - 0x00D953 03:D943: B9 92 D9  LDA tbl_D992,Y
C - - - - - 0x00D956 03:D946: A8        TAY
C - - - - - 0x00D957 03:D947: 46 2C     LSR ram_002C
C - - - - - 0x00D959 03:D949: 90 03     BCC bra_D94E
C - - - - - 0x00D95B 03:D94B: 20 4A CB  JSR sub_CB4A
bra_D94E:
C - - - - - 0x00D95E 03:D94E: 8E 19 04  STX ram_ball_pass_pos_X_lo
C - - - - - 0x00D961 03:D951: 8C 1A 04  STY ram_ball_pass_pos_X_hi
C - - - - - 0x00D964 03:D954: A4 2B     LDY ram_002B
C - - - - - 0x00D966 03:D956: BE 8F D9  LDX tbl_D98F,Y
C - - - - - 0x00D969 03:D959: B9 90 D9  LDA tbl_D990,Y
C - - - - - 0x00D96C 03:D95C: A8        TAY
C - - - - - 0x00D96D 03:D95D: 46 2C     LSR ram_002C
C - - - - - 0x00D96F 03:D95F: 90 03     BCC bra_D964
C - - - - - 0x00D971 03:D961: 20 50 CB  JSR sub_CB50
bra_D964:
C - - - - - 0x00D974 03:D964: 8E 17 04  STX ram_ball_pass_pos_Y_lo
C - - - - - 0x00D977 03:D967: 8C 18 04  STY ram_ball_pass_pos_Y_hi
C - - - - - 0x00D97A 03:D96A: 20 6B DD  JSR sub_DD6B
C - - - - - 0x00D97D 03:D96D: 38        SEC
C - - - - - 0x00D97E 03:D96E: ED E6 03  SBC ram_03E6
C - - - - - 0x00D981 03:D971: 0A        ASL
C - - - - - 0x00D982 03:D972: 85 2A     STA ram_002A
C - - - - - 0x00D984 03:D974: AD E6 03  LDA ram_03E6
C - - - - - 0x00D987 03:D977: 18        CLC
C - - - - - 0x00D988 03:D978: 69 80     ADC #$80
C - - - - - 0x00D98A 03:D97A: 18        CLC
C - - - - - 0x00D98B 03:D97B: 65 2A     ADC ram_002A
C - - - - - 0x00D98D 03:D97D: 8D E6 03  STA ram_03E6
C - - - - - 0x00D990 03:D980: 20 DF DD  JSR sub_DDDF
C - - - - - 0x00D993 03:D983: 20 5E DB  JSR sub_DB5E
C - - - - - 0x00D996 03:D986: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00D999 03:D989: A9 0D     LDA #con_sfx_hit_goalspot
C - - - - - 0x00D99B 03:D98B: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00D99E 03:D98E: 60        RTS



tbl_D98F:
- D 2 - - - 0x00D99F 03:D98F: A4        .byte $A4   ; 
tbl_D990:
- D 2 - - - 0x00D9A0 03:D990: 00        .byte $00   ; 
tbl_D991:
- D 2 - - - 0x00D9A1 03:D991: D1        .byte $D1   ; 
tbl_D992:
- D 2 - - - 0x00D9A2 03:D992: 00        .byte $00   ; 
- D 2 - - - 0x00D9A3 03:D993: A3        .byte $A3   ; 
- D 2 - - - 0x00D9A4 03:D994: 00        .byte $00   ; 
- D 2 - - - 0x00D9A5 03:D995: D0        .byte $D0   ; 
- D 2 - - - 0x00D9A6 03:D996: 00        .byte $00   ; 
- D 2 - - - 0x00D9A7 03:D997: A2        .byte $A2   ; 
- D 2 - - - 0x00D9A8 03:D998: 00        .byte $00   ; 
- D 2 - - - 0x00D9A9 03:D999: CF        .byte $CF   ; 
- D 2 - - - 0x00D9AA 03:D99A: 00        .byte $00   ; 
- D 2 - - - 0x00D9AB 03:D99B: A1        .byte $A1   ; 
- D 2 - - - 0x00D9AC 03:D99C: 00        .byte $00   ; 
- D 2 - - - 0x00D9AD 03:D99D: CE        .byte $CE   ; 
- D 2 - - - 0x00D9AE 03:D99E: 00        .byte $00   ; 
- D 2 - - - 0x00D9AF 03:D99F: A0        .byte $A0   ; 
- D 2 - - - 0x00D9B0 03:D9A0: 00        .byte $00   ; 
- D 2 - - - 0x00D9B1 03:D9A1: CD        .byte $CD   ; 
- D 2 - - - 0x00D9B2 03:D9A2: 00        .byte $00   ; 



sub_D9A3:
C - - - - - 0x00D9B3 03:D9A3: AD 26 04  LDA ram_0426
C - - - - - 0x00D9B6 03:D9A6: F0 03     BEQ bra_D9AB
- - - - - - 0x00D9B8 03:D9A8: 4C 15 DA  JMP loc_DA15_RTS
bra_D9AB:
C - - - - - 0x00D9BB 03:D9AB: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00D9BE 03:D9AE: C9 19     CMP #$19
C - - - - - 0x00D9C0 03:D9B0: 90 63     BCC bra_DA15_RTS
C - - - - - 0x00D9C2 03:D9B2: C9 20     CMP #$20
C - - - - - 0x00D9C4 03:D9B4: B0 5F     BCS bra_DA15_RTS
C - - - - - 0x00D9C6 03:D9B6: A9 00     LDA #$00
C - - - - - 0x00D9C8 03:D9B8: AE DE 03  LDX ram_03DE
C - - - - - 0x00D9CB 03:D9BB: AC E0 03  LDY ram_03E0
C - - - - - 0x00D9CE 03:D9BE: C0 02     CPY #$02
C - - - - - 0x00D9D0 03:D9C0: 90 05     BCC bra_D9C7
C - - - - - 0x00D9D2 03:D9C2: 20 50 CB  JSR sub_CB50
C - - - - - 0x00D9D5 03:D9C5: A9 80     LDA #$80
bra_D9C7:
C - - - - - 0x00D9D7 03:D9C7: 4D DD 03  EOR ram_03DD
C - - - - - 0x00D9DA 03:D9CA: 29 80     AND #$80
C - - - - - 0x00D9DC 03:D9CC: F0 47     BEQ bra_DA15_RTS
C - - - - - 0x00D9DE 03:D9CE: 38        SEC
C - - - - - 0x00D9DF 03:D9CF: 8A        TXA
C - - - - - 0x00D9E0 03:D9D0: ED 16 DA  SBC tbl_DA16
C - - - - - 0x00D9E3 03:D9D3: AA        TAX
C - - - - - 0x00D9E4 03:D9D4: 98        TYA
C - - - - - 0x00D9E5 03:D9D5: ED 17 DA  SBC tbl_DA16 + $01
C - - - - - 0x00D9E8 03:D9D8: 90 3B     BCC bra_DA15_RTS
C - - - - - 0x00D9EA 03:D9DA: D0 39     BNE bra_DA15_RTS
C - - - - - 0x00D9EC 03:D9DC: E0 04     CPX #$04
C - - - - - 0x00D9EE 03:D9DE: B0 35     BCS bra_DA15_RTS
C - - - - - 0x00D9F0 03:D9E0: AE D8 03  LDX ram_03D8
C - - - - - 0x00D9F3 03:D9E3: AC DA 03  LDY ram_03DA
C - - - - - 0x00D9F6 03:D9E6: F0 03     BEQ bra_D9EB
- - - - - - 0x00D9F8 03:D9E8: 20 4A CB  JSR sub_CB4A
bra_D9EB:
C - - - - - 0x00D9FB 03:D9EB: 38        SEC
C - - - - - 0x00D9FC 03:D9EC: 8A        TXA
C - - - - - 0x00D9FD 03:D9ED: ED 18 DA  SBC tbl_DA18
C - - - - - 0x00DA00 03:D9F0: 98        TYA
C - - - - - 0x00DA01 03:D9F1: ED 19 DA  SBC tbl_DA18 + $01
C - - - - - 0x00DA04 03:D9F4: 90 1F     BCC bra_DA15_RTS
- - - - - - 0x00DA06 03:D9F6: 4E 1E 04  LSR ram_041E
- - - - - - 0x00DA09 03:D9F9: 6E 1D 04  ROR ram_041D
- - - - - - 0x00DA0C 03:D9FC: AD E6 03  LDA ram_03E6
- - - - - - 0x00DA0F 03:D9FF: 49 FF     EOR #$FF
- - - - - - 0x00DA11 03:DA01: 18        CLC
- - - - - - 0x00DA12 03:DA02: 69 81     ADC #$81
- - - - - - 0x00DA14 03:DA04: 8D E6 03  STA ram_03E6
- - - - - - 0x00DA17 03:DA07: 20 DF DD  JSR sub_DDDF
- - - - - - 0x00DA1A 03:DA0A: 20 5E DB  JSR sub_DB5E
- - - - - - 0x00DA1D 03:DA0D: 20 5E DF  JSR sub_DF5E
- - - - - - 0x00DA20 03:DA10: A9 0D     LDA #con_sfx_hit_goalspot
- - - - - - 0x00DA22 03:DA12: 20 10 C9  JSR sub_C910_prepare_sound
bra_DA15_RTS:
loc_DA15_RTS:
C - - - - - 0x00DA25 03:DA15: 60        RTS



tbl_DA16:
- D 2 - - - 0x00DA26 03:DA16: A6        .byte $A6   ; 
- D 2 - - - 0x00DA27 03:DA17: 00        .byte $00   ; 

tbl_DA18:
- D 2 - - - 0x00DA28 03:DA18: D0        .byte $D0   ; 
- D 2 - - - 0x00DA29 03:DA19: 00        .byte $00   ; 



sub_DA1A:
C - - - - - 0x00DA2A 03:DA1A: AD D4 03  LDA ram_03D4
C - - - - - 0x00DA2D 03:DA1D: 29 DF     AND #$DF
C - - - - - 0x00DA2F 03:DA1F: 8D D4 03  STA ram_03D4
C - - - - - 0x00DA32 03:DA22: AD D3 03  LDA ram_03D3
C - - - - - 0x00DA35 03:DA25: 29 10     AND #$10
C - - - - - 0x00DA37 03:DA27: D0 14     BNE bra_DA3D
C - - - - - 0x00DA39 03:DA29: 60        RTS


; bzk garbage
- - - - - - 0x00DA3A 03:DA2A: 38        SEC
- - - - - - 0x00DA3B 03:DA2B: AD 26 04  LDA ram_0426
- - - - - - 0x00DA3E 03:DA2E: F0 03     BEQ bra_DA33
- - - - - - 0x00DA40 03:DA30: 4C 3A DB  JMP loc_DB3A_RTS
bra_DA33:
- - - - - - 0x00DA43 03:DA33: AD 24 04  LDA ram_ball_Z_lo
- - - - - - 0x00DA46 03:DA36: C9 1D     CMP #$1D
- - - - - - 0x00DA48 03:DA38: 90 03     BCC bra_DA3D
- - - - - - 0x00DA4A 03:DA3A: 4C 3A DB  JMP loc_DB3A_RTS



bra_DA3D:
C - - - - - 0x00DA4D 03:DA3D: A9 00     LDA #$00
C - - - - - 0x00DA4F 03:DA3F: 85 2E     STA ram_002E
C - - - - - 0x00DA51 03:DA41: AE DE 03  LDX ram_03DE
C - - - - - 0x00DA54 03:DA44: AC E0 03  LDY ram_03E0
C - - - - - 0x00DA57 03:DA47: C0 02     CPY #$02
C - - - - - 0x00DA59 03:DA49: 90 05     BCC bra_DA50
C - - - - - 0x00DA5B 03:DA4B: 20 50 CB  JSR sub_CB50
C - - - - - 0x00DA5E 03:DA4E: E6 2E     INC ram_002E
bra_DA50:
C - - - - - 0x00DA60 03:DA50: 86 2A     STX ram_002A
C - - - - - 0x00DA62 03:DA52: 84 2B     STY ram_002B
C - - - - - 0x00DA64 03:DA54: 38        SEC
C - - - - - 0x00DA65 03:DA55: 8A        TXA
C - - - - - 0x00DA66 03:DA56: ED 54 DB  SBC tbl_DB54
C - - - - - 0x00DA69 03:DA59: 98        TYA
C - - - - - 0x00DA6A 03:DA5A: ED 55 DB  SBC tbl_DB54 + $01
C - - - - - 0x00DA6D 03:DA5D: 90 03     BCC bra_DA62
C - - - - - 0x00DA6F 03:DA5F: 4C 3A DB  JMP loc_DB3A_RTS
bra_DA62:
C - - - - - 0x00DA72 03:DA62: 38        SEC
C - - - - - 0x00DA73 03:DA63: 8A        TXA
C - - - - - 0x00DA74 03:DA64: ED 5C DB  SBC tbl_DB5C
C - - - - - 0x00DA77 03:DA67: 98        TYA
C - - - - - 0x00DA78 03:DA68: ED 5D DB  SBC tbl_DB5C + $01
C - - - - - 0x00DA7B 03:DA6B: B0 03     BCS bra_DA70
- - - - - - 0x00DA7D 03:DA6D: 4C 3A DB  JMP loc_DB3A_RTS
bra_DA70:
C - - - - - 0x00DA80 03:DA70: AE D8 03  LDX ram_03D8
C - - - - - 0x00DA83 03:DA73: AC DA 03  LDY ram_03DA
C - - - - - 0x00DA86 03:DA76: F0 07     BEQ bra_DA7F
C - - - - - 0x00DA88 03:DA78: E6 2E     INC ram_002E
C - - - - - 0x00DA8A 03:DA7A: E6 2E     INC ram_002E
C - - - - - 0x00DA8C 03:DA7C: 20 4A CB  JSR sub_CB4A
bra_DA7F:
C - - - - - 0x00DA8F 03:DA7F: 38        SEC
C - - - - - 0x00DA90 03:DA80: 8A        TXA
C - - - - - 0x00DA91 03:DA81: ED 56 DB  SBC tbl_DB56
C - - - - - 0x00DA94 03:DA84: 98        TYA
C - - - - - 0x00DA95 03:DA85: ED 57 DB  SBC tbl_DB56 + $01
C - - - - - 0x00DA98 03:DA88: B0 03     BCS bra_DA8D
C - - - - - 0x00DA9A 03:DA8A: 4C 3A DB  JMP loc_DB3A_RTS
bra_DA8D:
C - - - - - 0x00DA9D 03:DA8D: AD D4 03  LDA ram_03D4
C - - - - - 0x00DAA0 03:DA90: 09 20     ORA #$20
C - - - - - 0x00DAA2 03:DA92: 8D D4 03  STA ram_03D4
C - - - - - 0x00DAA5 03:DA95: AD D7 03  LDA ram_03D7
C - - - - - 0x00DAA8 03:DA98: F0 2E     BEQ bra_DAC8
C - - - - - 0x00DAAA 03:DA9A: 8A        TXA
C - - - - - 0x00DAAB 03:DA9B: ED 5A DB  SBC tbl_DB5A
C - - - - - 0x00DAAE 03:DA9E: 98        TYA
C - - - - - 0x00DAAF 03:DA9F: ED 5B DB  SBC tbl_DB5A + $01
C - - - - - 0x00DAB2 03:DAA2: B0 24     BCS bra_DAC8
C - - - - - 0x00DAB4 03:DAA4: A2 00     LDX #$00
C - - - - - 0x00DAB6 03:DAA6: A5 2E     LDA ram_002E
C - - - - - 0x00DAB8 03:DAA8: C9 02     CMP #$02
C - - - - - 0x00DABA 03:DAAA: 90 02     BCC bra_DAAE
C - - - - - 0x00DABC 03:DAAC: A2 08     LDX #$08
bra_DAAE:
C - - - - - 0x00DABE 03:DAAE: 8A        TXA
C - - - - - 0x00DABF 03:DAAF: F0 02     BEQ bra_DAB3
C - - - - - 0x00DAC1 03:DAB1: A9 80     LDA #$80
bra_DAB3:
C - - - - - 0x00DAC3 03:DAB3: 4D D7 03  EOR ram_03D7
C - - - - - 0x00DAC6 03:DAB6: 29 80     AND #$80
C - - - - - 0x00DAC8 03:DAB8: D0 03     BNE bra_DABD
C - - - - - 0x00DACA 03:DABA: 4C 3A DB  JMP loc_DB3A_RTS
bra_DABD:
C - - - - - 0x00DACD 03:DABD: AD E6 03  LDA ram_03E6
C - - - - - 0x00DAD0 03:DAC0: 49 FF     EOR #$FF
C - - - - - 0x00DAD2 03:DAC2: 18        CLC
C - - - - - 0x00DAD3 03:DAC3: 69 01     ADC #$01
C - - - - - 0x00DAD5 03:DAC5: 4C 13 DB  JMP loc_DB13
bra_DAC8:
C - - - - - 0x00DAD8 03:DAC8: 38        SEC
C - - - - - 0x00DAD9 03:DAC9: A5 2A     LDA ram_002A
C - - - - - 0x00DADB 03:DACB: ED 58 DB  SBC tbl_DB58
C - - - - - 0x00DADE 03:DACE: A5 2B     LDA ram_002B
C - - - - - 0x00DAE0 03:DAD0: ED 59 DB  SBC tbl_DB58 + $01
C - - - - - 0x00DAE3 03:DAD3: B0 65     BCS bra_DB3A_RTS
C - - - - - 0x00DAE5 03:DAD5: A5 2E     LDA ram_002E
C - - - - - 0x00DAE7 03:DAD7: 4A        LSR
C - - - - - 0x00DAE8 03:DAD8: A9 00     LDA #$00
C - - - - - 0x00DAEA 03:DADA: 90 02     BCC bra_DADE
C - - - - - 0x00DAEC 03:DADC: A9 80     LDA #$80
bra_DADE:
C - - - - - 0x00DAEE 03:DADE: 4D DD 03  EOR ram_03DD
C - - - - - 0x00DAF1 03:DAE1: 29 80     AND #$80
C - - - - - 0x00DAF3 03:DAE3: F0 55     BEQ bra_DB3A_RTS
C - - - - - 0x00DAF5 03:DAE5: 38        SEC
C - - - - - 0x00DAF6 03:DAE6: AD D8 03  LDA ram_03D8
C - - - - - 0x00DAF9 03:DAE9: ED 56 DB  SBC tbl_DB56
C - - - - - 0x00DAFC 03:DAEC: 85 2A     STA ram_002A
C - - - - - 0x00DAFE 03:DAEE: AD DA 03  LDA ram_03DA
C - - - - - 0x00DB01 03:DAF1: ED 57 DB  SBC tbl_DB56 + $01
C - - - - - 0x00DB04 03:DAF4: B0 04     BCS bra_DAFA
- - - - - - 0x00DB06 03:DAF6: A9 00     LDA #$00
- - - - - - 0x00DB08 03:DAF8: 85 2A     STA ram_002A
bra_DAFA:
C - - - - - 0x00DB0A 03:DAFA: 4A        LSR
C - - - - - 0x00DB0B 03:DAFB: 66 2A     ROR ram_002A
C - - - - - 0x00DB0D 03:DAFD: 4A        LSR
C - - - - - 0x00DB0E 03:DAFE: 66 2A     ROR ram_002A
C - - - - - 0x00DB10 03:DB00: A4 2A     LDY ram_002A
C - - - - - 0x00DB12 03:DB02: C0 19     CPY #$19
C - - - - - 0x00DB14 03:DB04: 90 02     BCC bra_DB08
- - - - - - 0x00DB16 03:DB06: A0 18     LDY #$18
bra_DB08:
C - - - - - 0x00DB18 03:DB08: BE 3B DB  LDX tbl_DB3B,Y
C - - - - - 0x00DB1B 03:DB0B: AD E6 03  LDA ram_03E6
C - - - - - 0x00DB1E 03:DB0E: 49 FF     EOR #$FF
C - - - - - 0x00DB20 03:DB10: 18        CLC
C - - - - - 0x00DB21 03:DB11: 69 81     ADC #$81
loc_DB13:
C D 2 - - - 0x00DB23 03:DB13: 8D E6 03  STA ram_03E6
C - - - - - 0x00DB26 03:DB16: 8A        TXA
C - - - - - 0x00DB27 03:DB17: 46 2E     LSR ram_002E
C - - - - - 0x00DB29 03:DB19: 90 02     BCC bra_DB1D
C - - - - - 0x00DB2B 03:DB1B: 69 08     ADC #$08
bra_DB1D:
C - - - - - 0x00DB2D 03:DB1D: 20 8D F9  JSR sub_F98D
C - - - - - 0x00DB30 03:DB20: 4E 1E 04  LSR ram_041E
C - - - - - 0x00DB33 03:DB23: 6E 1D 04  ROR ram_041D
C - - - - - 0x00DB36 03:DB26: 4E 1E 04  LSR ram_041E
C - - - - - 0x00DB39 03:DB29: 6E 1D 04  ROR ram_041D
C - - - - - 0x00DB3C 03:DB2C: A9 00     LDA #$00
C - - - - - 0x00DB3E 03:DB2E: 8D 21 04  STA ram_0421
C - - - - - 0x00DB41 03:DB31: 8D 23 04  STA ram_0423
C - - - - - 0x00DB44 03:DB34: 20 DF DD  JSR sub_DDDF
C - - - - - 0x00DB47 03:DB37: 20 5E DB  JSR sub_DB5E
bra_DB3A_RTS:
loc_DB3A_RTS:
C D 2 - - - 0x00DB4A 03:DB3A: 60        RTS



tbl_DB3B:
; вроде что-то связано с сеткой при ее касании мячом
- D 2 - - - 0x00DB4B 03:DB3B: 01        .byte $01   ; 
- D 2 - - - 0x00DB4C 03:DB3C: 01        .byte $01   ; 
- D 2 - - - 0x00DB4D 03:DB3D: 02        .byte $02   ; 
- - - - - - 0x00DB4E 03:DB3E: 02        .byte $02   ; 
- D 2 - - - 0x00DB4F 03:DB3F: 02        .byte $02   ; 
- D 2 - - - 0x00DB50 03:DB40: 02        .byte $02   ; 
- - - - - - 0x00DB51 03:DB41: 03        .byte $03   ; 
- - - - - - 0x00DB52 03:DB42: 03        .byte $03   ; 
- - - - - - 0x00DB53 03:DB43: 03        .byte $03   ; 
- D 2 - - - 0x00DB54 03:DB44: 03        .byte $03   ; 
- D 2 - - - 0x00DB55 03:DB45: 04        .byte $04   ; 
- - - - - - 0x00DB56 03:DB46: 04        .byte $04   ; 
- - - - - - 0x00DB57 03:DB47: 04        .byte $04   ; 
- - - - - - 0x00DB58 03:DB48: 04        .byte $04   ; 
- D 2 - - - 0x00DB59 03:DB49: 05        .byte $05   ; 
- D 2 - - - 0x00DB5A 03:DB4A: 05        .byte $05   ; 
- - - - - - 0x00DB5B 03:DB4B: 05        .byte $05   ; 
- - - - - - 0x00DB5C 03:DB4C: 05        .byte $05   ; 
- - - - - - 0x00DB5D 03:DB4D: 06        .byte $06   ; 
- - - - - - 0x00DB5E 03:DB4E: 06        .byte $06   ; 
- D 2 - - - 0x00DB5F 03:DB4F: 06        .byte $06   ; 
- D 2 - - - 0x00DB60 03:DB50: 06        .byte $06   ; 
- D 2 - - - 0x00DB61 03:DB51: 07        .byte $07   ; 
- D 2 - - - 0x00DB62 03:DB52: 07        .byte $07   ; 
- - - - - - 0x00DB63 03:DB53: 07        .byte $07   ; 



tbl_DB54:
- D 2 - - - 0x00DB64 03:DB54: A4 00     .word $00A4

tbl_DB56:
- D 2 - - - 0x00DB66 03:DB56: D0 00     .word $00D0

tbl_DB58:
- D 2 - - - 0x00DB68 03:DB58: 9A 00     .word $009A

tbl_DB5A:
- D 2 - - - 0x00DB6A 03:DB5A: D4 00     .word $00D4

tbl_DB5C:
- D 2 - - - 0x00DB6C 03:DB5C: 92 00     .word $0092



sub_DB5E:
C - - - - - 0x00DB6E 03:DB5E: AE D5 03  LDX ram_03D5
C - - - - - 0x00DB71 03:DB61: AC D7 03  LDY ram_03D7
C - - - - - 0x00DB74 03:DB64: 20 9B DB  JSR sub_DB9B
C - - - - - 0x00DB77 03:DB67: 18        CLC
C - - - - - 0x00DB78 03:DB68: 8A        TXA
C - - - - - 0x00DB79 03:DB69: 6D D8 03  ADC ram_03D8
C - - - - - 0x00DB7C 03:DB6C: AA        TAX
C - - - - - 0x00DB7D 03:DB6D: 98        TYA
C - - - - - 0x00DB7E 03:DB6E: 6D DA 03  ADC ram_03DA
C - - - - - 0x00DB81 03:DB71: 10 03     BPL bra_DB76
C - - - - - 0x00DB83 03:DB73: A9 00     LDA #$00
C - - - - - 0x00DB85 03:DB75: AA        TAX
bra_DB76:
C - - - - - 0x00DB86 03:DB76: 8E 13 04  STX ram_ball_land_pos_X_lo
C - - - - - 0x00DB89 03:DB79: 8D 14 04  STA ram_ball_land_pos_X_hi
C - - - - - 0x00DB8C 03:DB7C: AE DB 03  LDX ram_03DB
C - - - - - 0x00DB8F 03:DB7F: AC DD 03  LDY ram_03DD
C - - - - - 0x00DB92 03:DB82: 20 9B DB  JSR sub_DB9B
C - - - - - 0x00DB95 03:DB85: 18        CLC
C - - - - - 0x00DB96 03:DB86: 8A        TXA
C - - - - - 0x00DB97 03:DB87: 6D DE 03  ADC ram_03DE
C - - - - - 0x00DB9A 03:DB8A: AA        TAX
C - - - - - 0x00DB9B 03:DB8B: 98        TYA
C - - - - - 0x00DB9C 03:DB8C: 6D E0 03  ADC ram_03E0
C - - - - - 0x00DB9F 03:DB8F: 10 03     BPL bra_DB94
C - - - - - 0x00DBA1 03:DB91: A9 00     LDA #$00
C - - - - - 0x00DBA3 03:DB93: AA        TAX
bra_DB94:
C - - - - - 0x00DBA4 03:DB94: 8E 15 04  STX ram_ball_land_pos_Y_lo
C - - - - - 0x00DBA7 03:DB97: 8D 16 04  STA ram_ball_land_pos_Y_hi
C - - - - - 0x00DBAA 03:DB9A: 60        RTS



sub_DB9B:
C - - - - - 0x00DBAB 03:DB9B: 98        TYA
C - - - - - 0x00DBAC 03:DB9C: 08        PHP
C - - - - - 0x00DBAD 03:DB9D: 10 03     BPL bra_DBA2
C - - - - - 0x00DBAF 03:DB9F: 20 1E C9  JSR sub_C91E
bra_DBA2:
C - - - - - 0x00DBB2 03:DBA2: 86 4A     STX ram_004A
C - - - - - 0x00DBB4 03:DBA4: 84 4B     STY ram_004B
C - - - - - 0x00DBB6 03:DBA6: AD 1F 04  LDA ram_041F
C - - - - - 0x00DBB9 03:DBA9: 85 4C     STA ram_004C
C - - - - - 0x00DBBB 03:DBAB: AD 20 04  LDA ram_0420
C - - - - - 0x00DBBE 03:DBAE: 85 4D     STA ram_004D
C - - - - - 0x00DBC0 03:DBB0: 20 75 CB  JSR sub_CB75
C - - - - - 0x00DBC3 03:DBB3: A6 4F     LDX ram_004F
C - - - - - 0x00DBC5 03:DBB5: A4 50     LDY ram_0050
C - - - - - 0x00DBC7 03:DBB7: 28        PLP
C - - - - - 0x00DBC8 03:DBB8: 10 03     BPL bra_DBBD_RTS
C - - - - - 0x00DBCA 03:DBBA: 20 1E C9  JSR sub_C91E
bra_DBBD_RTS:
C - - - - - 0x00DBCD 03:DBBD: 60        RTS



sub_DBBE:
C - - - - - 0x00DBCE 03:DBBE: 20 68 DC  JSR sub_DC68
C - - - - - 0x00DBD1 03:DBC1: 18        CLC
C - - - - - 0x00DBD2 03:DBC2: AD 21 04  LDA ram_0421
C - - - - - 0x00DBD5 03:DBC5: 6D 22 04  ADC ram_0422
C - - - - - 0x00DBD8 03:DBC8: 8D 22 04  STA ram_0422
C - - - - - 0x00DBDB 03:DBCB: AD 23 04  LDA ram_0423
C - - - - - 0x00DBDE 03:DBCE: 6D 24 04  ADC ram_ball_Z_lo
C - - - - - 0x00DBE1 03:DBD1: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00DBE4 03:DBD4: A9 00     LDA #$00
C - - - - - 0x00DBE6 03:DBD6: 2C 23 04  BIT ram_0423
C - - - - - 0x00DBE9 03:DBD9: 10 02     BPL bra_DBDD
C - - - - - 0x00DBEB 03:DBDB: A9 FF     LDA #$FF
bra_DBDD:
C - - - - - 0x00DBED 03:DBDD: 6D 26 04  ADC ram_0426
C - - - - - 0x00DBF0 03:DBE0: 8D 26 04  STA ram_0426
C - - - - - 0x00DBF3 03:DBE3: 30 12     BMI bra_DBF7
C - - - - - 0x00DBF5 03:DBE5: 18        CLC
C - - - - - 0x00DBF6 03:DBE6: AD 21 04  LDA ram_0421
C - - - - - 0x00DBF9 03:DBE9: 69 F7     ADC #$F7
C - - - - - 0x00DBFB 03:DBEB: 8D 21 04  STA ram_0421
C - - - - - 0x00DBFE 03:DBEE: AD 23 04  LDA ram_0423
C - - - - - 0x00DC01 03:DBF1: 69 FF     ADC #$FF
C - - - - - 0x00DC03 03:DBF3: 8D 23 04  STA ram_0423
C - - - - - 0x00DC06 03:DBF6: 60        RTS
bra_DBF7:
C - - - - - 0x00DC07 03:DBF7: A9 00     LDA #$00
C - - - - - 0x00DC09 03:DBF9: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00DC0C 03:DBFC: 8D 26 04  STA ram_0426
C - - - - - 0x00DC0F 03:DBFF: 4E 1E 04  LSR ram_041E
C - - - - - 0x00DC12 03:DC02: 6E 1D 04  ROR ram_041D
C - - - - - 0x00DC15 03:DC05: AD 1E 04  LDA ram_041E
C - - - - - 0x00DC18 03:DC08: D0 13     BNE bra_DC1D
C - - - - - 0x00DC1A 03:DC0A: AD 1D 04  LDA ram_041D
C - - - - - 0x00DC1D 03:DC0D: C9 20     CMP #$20
C - - - - - 0x00DC1F 03:DC0F: B0 0C     BCS bra_DC1D
C - - - - - 0x00DC21 03:DC11: AD D3 03  LDA ram_03D3
C - - - - - 0x00DC24 03:DC14: 29 7F     AND #$7F
C - - - - - 0x00DC26 03:DC16: 8D D3 03  STA ram_03D3
C - - - - - 0x00DC29 03:DC19: 20 BD DC  JSR sub_DCBD
C - - - - - 0x00DC2C 03:DC1C: 60        RTS
bra_DC1D:
C - - - - - 0x00DC2D 03:DC1D: 4E 1C 04  LSR ram_041C
C - - - - - 0x00DC30 03:DC20: 6E 1B 04  ROR ram_041B
C - - - - - 0x00DC33 03:DC23: 4E 1C 04  LSR ram_041C
C - - - - - 0x00DC36 03:DC26: 6E 1B 04  ROR ram_041B
C - - - - - 0x00DC39 03:DC29: 4E 1C 04  LSR ram_041C
C - - - - - 0x00DC3C 03:DC2C: 6E 1B 04  ROR ram_041B
C - - - - - 0x00DC3F 03:DC2F: 4E 1C 04  LSR ram_041C
C - - - - - 0x00DC42 03:DC32: 6E 1B 04  ROR ram_041B
C - - - - - 0x00DC45 03:DC35: EA        NOP
C - - - - - 0x00DC46 03:DC36: EA        NOP
C - - - - - 0x00DC47 03:DC37: EA        NOP
C - - - - - 0x00DC48 03:DC38: 20 F2 DD  JSR sub_DDF2
C - - - - - 0x00DC4B 03:DC3B: 20 5E DB  JSR sub_DB5E
C - - - - - 0x00DC4E 03:DC3E: AE 21 04  LDX ram_0421
C - - - - - 0x00DC51 03:DC41: AC 23 04  LDY ram_0423
C - - - - - 0x00DC54 03:DC44: 20 1E C9  JSR sub_C91E
C - - - - - 0x00DC57 03:DC47: 8A        TXA
C - - - - - 0x00DC58 03:DC48: 84 2B     STY ram_002B
C - - - - - 0x00DC5A 03:DC4A: 46 2B     LSR ram_002B
C - - - - - 0x00DC5C 03:DC4C: 6A        ROR
C - - - - - 0x00DC5D 03:DC4D: 8D 21 04  STA ram_0421
C - - - - - 0x00DC60 03:DC50: A5 2B     LDA ram_002B
C - - - - - 0x00DC62 03:DC52: 8D 23 04  STA ram_0423
C - - - - - 0x00DC65 03:DC55: CE 1F 04  DEC ram_041F
C - - - - - 0x00DC68 03:DC58: D0 0D     BNE bra_DC67_RTS
C - - - - - 0x00DC6A 03:DC5A: CE 20 04  DEC ram_0420
C - - - - - 0x00DC6D 03:DC5D: 10 08     BPL bra_DC67_RTS
C - - - - - 0x00DC6F 03:DC5F: A9 00     LDA #$00
C - - - - - 0x00DC71 03:DC61: 8D 1F 04  STA ram_041F
C - - - - - 0x00DC74 03:DC64: 8D 20 04  STA ram_0420
bra_DC67_RTS:
C - - - - - 0x00DC77 03:DC67: 60        RTS



sub_DC68:
C - - - - - 0x00DC78 03:DC68: 18        CLC
C - - - - - 0x00DC79 03:DC69: AD D5 03  LDA ram_03D5
C - - - - - 0x00DC7C 03:DC6C: 6D D6 03  ADC ram_03D6
C - - - - - 0x00DC7F 03:DC6F: AA        TAX
C - - - - - 0x00DC80 03:DC70: AD D7 03  LDA ram_03D7
C - - - - - 0x00DC83 03:DC73: 6D D8 03  ADC ram_03D8
C - - - - - 0x00DC86 03:DC76: A8        TAY
C - - - - - 0x00DC87 03:DC77: A9 00     LDA #$00
C - - - - - 0x00DC89 03:DC79: 2C D7 03  BIT ram_03D7
C - - - - - 0x00DC8C 03:DC7C: 10 02     BPL bra_DC80
C - - - - - 0x00DC8E 03:DC7E: A9 FF     LDA #$FF
bra_DC80:
C - - - - - 0x00DC90 03:DC80: 6D DA 03  ADC ram_03DA
C - - - - - 0x00DC93 03:DC83: 10 04     BPL bra_DC89
C - - - - - 0x00DC95 03:DC85: A9 00     LDA #$00
C - - - - - 0x00DC97 03:DC87: AA        TAX
C - - - - - 0x00DC98 03:DC88: A8        TAY
bra_DC89:
C - - - - - 0x00DC99 03:DC89: 8E D6 03  STX ram_03D6
C - - - - - 0x00DC9C 03:DC8C: 8C D8 03  STY ram_03D8
C - - - - - 0x00DC9F 03:DC8F: 8D DA 03  STA ram_03DA
C - - - - - 0x00DCA2 03:DC92: 18        CLC
C - - - - - 0x00DCA3 03:DC93: AD DB 03  LDA ram_03DB
C - - - - - 0x00DCA6 03:DC96: 6D DC 03  ADC ram_03DC
C - - - - - 0x00DCA9 03:DC99: AA        TAX
C - - - - - 0x00DCAA 03:DC9A: AD DD 03  LDA ram_03DD
C - - - - - 0x00DCAD 03:DC9D: 6D DE 03  ADC ram_03DE
C - - - - - 0x00DCB0 03:DCA0: A8        TAY
C - - - - - 0x00DCB1 03:DCA1: A9 00     LDA #$00
C - - - - - 0x00DCB3 03:DCA3: 2C DD 03  BIT ram_03DD
C - - - - - 0x00DCB6 03:DCA6: 10 02     BPL bra_DCAA
C - - - - - 0x00DCB8 03:DCA8: A9 FF     LDA #$FF
bra_DCAA:
C - - - - - 0x00DCBA 03:DCAA: 6D E0 03  ADC ram_03E0
C - - - - - 0x00DCBD 03:DCAD: 10 04     BPL bra_DCB3
- - - - - - 0x00DCBF 03:DCAF: A9 00     LDA #$00
- - - - - - 0x00DCC1 03:DCB1: AA        TAX
- - - - - - 0x00DCC2 03:DCB2: A8        TAY
bra_DCB3:
C - - - - - 0x00DCC3 03:DCB3: 8E DC 03  STX ram_03DC
C - - - - - 0x00DCC6 03:DCB6: 8C DE 03  STY ram_03DE
C - - - - - 0x00DCC9 03:DCB9: 8D E0 03  STA ram_03E0
C - - - - - 0x00DCCC 03:DCBC: 60        RTS



sub_DCBD:
C - - - - - 0x00DCCD 03:DCBD: AD D3 03  LDA ram_03D3
C - - - - - 0x00DCD0 03:DCC0: 29 10     AND #$10
C - - - - - 0x00DCD2 03:DCC2: D0 28     BNE bra_DCEC_RTS
C - - - - - 0x00DCD4 03:DCC4: A9 00     LDA #$00
C - - - - - 0x00DCD6 03:DCC6: 20 5B C9  JSR sub_C95B
C - - - - - 0x00DCD9 03:DCC9: A9 01     LDA #$01
C - - - - - 0x00DCDB 03:DCCB: 20 2F C6  JSR sub_C62F
C - - - - - 0x00DCDE 03:DCCE: A0 00     LDY #$00
C - - - - - 0x00DCE0 03:DCD0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DCE2 03:DCD2: 09 04     ORA #$04
C - - - - - 0x00DCE4 03:DCD4: 29 F7     AND #$F7
C - - - - - 0x00DCE6 03:DCD6: 91 61     STA (ram_0061),Y
C - - - - - 0x00DCE8 03:DCD8: A9 0B     LDA #$0B
C - - - - - 0x00DCEA 03:DCDA: 20 5B C9  JSR sub_C95B
C - - - - - 0x00DCED 03:DCDD: A9 01     LDA #$01
C - - - - - 0x00DCEF 03:DCDF: 20 2F C6  JSR sub_C62F
C - - - - - 0x00DCF2 03:DCE2: A0 00     LDY #$00
C - - - - - 0x00DCF4 03:DCE4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DCF6 03:DCE6: 09 04     ORA #$04
C - - - - - 0x00DCF8 03:DCE8: 29 F7     AND #$F7
C - - - - - 0x00DCFA 03:DCEA: 91 61     STA (ram_0061),Y
bra_DCEC_RTS:
C - - - - - 0x00DCFC 03:DCEC: 60        RTS



sub_DCED:
C - - - - - 0x00DCFD 03:DCED: 18        CLC
C - - - - - 0x00DCFE 03:DCEE: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00DD01 03:DCF1: 6D D8 03  ADC ram_03D8
C - - - - - 0x00DD04 03:DCF4: 8D F8 03  STA ram_03F8
C - - - - - 0x00DD07 03:DCF7: AD 26 04  LDA ram_0426
C - - - - - 0x00DD0A 03:DCFA: 6D DA 03  ADC ram_03DA
C - - - - - 0x00DD0D 03:DCFD: 8D FA 03  STA ram_03FA
C - - - - - 0x00DD10 03:DD00: 18        CLC
C - - - - - 0x00DD11 03:DD01: AD DE 03  LDA ram_03DE
C - - - - - 0x00DD14 03:DD04: 69 02     ADC #$02
C - - - - - 0x00DD16 03:DD06: 8D FE 03  STA ram_03FE
C - - - - - 0x00DD19 03:DD09: AD E0 03  LDA ram_03E0
C - - - - - 0x00DD1C 03:DD0C: 69 00     ADC #$00
C - - - - - 0x00DD1E 03:DD0E: 8D 00 04  STA ram_0400
C - - - - - 0x00DD21 03:DD11: A9 E0     LDA #$E0
C - - - - - 0x00DD23 03:DD13: 8D 04 04  STA ram_0404
C - - - - - 0x00DD26 03:DD16: 60        RTS



sub_DD17:
C - - - - - 0x00DD27 03:DD17: A2 00     LDX #$00
bra_DD19_loop:
C - - - - - 0x00DD29 03:DD19: 38        SEC
C - - - - - 0x00DD2A 03:DD1A: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00DD2D 03:DD1D: FD 5D DD  SBC tbl_DD5D,X
C - - - - - 0x00DD30 03:DD20: AD 26 04  LDA ram_0426
C - - - - - 0x00DD33 03:DD23: FD 5E DD  SBC tbl_DD5E,X
C - - - - - 0x00DD36 03:DD26: 90 04     BCC bra_DD2C
C - - - - - 0x00DD38 03:DD28: E8        INX
C - - - - - 0x00DD39 03:DD29: E8        INX
C - - - - - 0x00DD3A 03:DD2A: D0 ED     BNE bra_DD19_loop
bra_DD2C:
C - - - - - 0x00DD3C 03:DD2C: 8A        TXA
C - - - - - 0x00DD3D 03:DD2D: 4A        LSR
C - - - - - 0x00DD3E 03:DD2E: 18        CLC
C - - - - - 0x00DD3F 03:DD2F: 69 03     ADC #$03
C - - - - - 0x00DD41 03:DD31: 8D E4 03  STA ram_03E4
C - - - - - 0x00DD44 03:DD34: 2C D3 03  BIT ram_03D3
C - - - - - 0x00DD47 03:DD37: 10 23     BPL bra_DD5C_RTS
C - - - - - 0x00DD49 03:DD39: AD E1 03  LDA ram_03E1
C - - - - - 0x00DD4C 03:DD3C: D0 0D     BNE bra_DD4B
C - - - - - 0x00DD4E 03:DD3E: A9 02     LDA #$02
C - - - - - 0x00DD50 03:DD40: 8D E1 03  STA ram_03E1
C - - - - - 0x00DD53 03:DD43: AD D4 03  LDA ram_03D4
C - - - - - 0x00DD56 03:DD46: 49 80     EOR #$80
C - - - - - 0x00DD58 03:DD48: 8D D4 03  STA ram_03D4
bra_DD4B:
C - - - - - 0x00DD5B 03:DD4B: CE E1 03  DEC ram_03E1
C - - - - - 0x00DD5E 03:DD4E: 2C D4 03  BIT ram_03D4
C - - - - - 0x00DD61 03:DD51: 10 09     BPL bra_DD5C_RTS
C - - - - - 0x00DD63 03:DD53: AD E4 03  LDA ram_03E4
C - - - - - 0x00DD66 03:DD56: 18        CLC
C - - - - - 0x00DD67 03:DD57: 69 07     ADC #$07
C - - - - - 0x00DD69 03:DD59: 8D E4 03  STA ram_03E4
bra_DD5C_RTS:
C - - - - - 0x00DD6C 03:DD5C: 60        RTS



tbl_DD5D:
- D 2 - - - 0x00DD6D 03:DD5D: 0C        .byte $0C   ; 
tbl_DD5E:
- D 2 - - - 0x00DD6E 03:DD5E: 00        .byte $00   ; 
- D 2 - - - 0x00DD6F 03:DD5F: 18        .byte $18   ; 
- D 2 - - - 0x00DD70 03:DD60: 00        .byte $00   ; 
- D 2 - - - 0x00DD71 03:DD61: 24        .byte $24   ; 
- D 2 - - - 0x00DD72 03:DD62: 00        .byte $00   ; 
- D 2 - - - 0x00DD73 03:DD63: 30        .byte $30   ; 
- D 2 - - - 0x00DD74 03:DD64: 00        .byte $00   ; 
- D 2 - - - 0x00DD75 03:DD65: 3C        .byte $3C   ; 
- D 2 - - - 0x00DD76 03:DD66: 00        .byte $00   ; 
- D 2 - - - 0x00DD77 03:DD67: 48        .byte $48   ; 
- D 2 - - - 0x00DD78 03:DD68: 00        .byte $00   ; 
- D 2 - - - 0x00DD79 03:DD69: FF        .byte $FF   ; 
- D 2 - - - 0x00DD7A 03:DD6A: FF        .byte $FF   ; 



sub_DD6B:
C - - - - - 0x00DD7B 03:DD6B: A9 00     LDA #$00
C - - - - - 0x00DD7D 03:DD6D: 85 2A     STA ram_002A
C - - - - - 0x00DD7F 03:DD6F: AD 19 04  LDA ram_ball_pass_pos_X_lo
C - - - - - 0x00DD82 03:DD72: 38        SEC
C - - - - - 0x00DD83 03:DD73: ED D8 03  SBC ram_03D8
C - - - - - 0x00DD86 03:DD76: AA        TAX
C - - - - - 0x00DD87 03:DD77: AD 1A 04  LDA ram_ball_pass_pos_X_hi
C - - - - - 0x00DD8A 03:DD7A: ED DA 03  SBC ram_03DA
C - - - - - 0x00DD8D 03:DD7D: A8        TAY
C - - - - - 0x00DD8E 03:DD7E: B0 03     BCS bra_DD83
C - - - - - 0x00DD90 03:DD80: 20 1E C9  JSR sub_C91E
bra_DD83:
C - - - - - 0x00DD93 03:DD83: 26 2A     ROL ram_002A
C - - - - - 0x00DD95 03:DD85: 86 53     STX ram_0053
C - - - - - 0x00DD97 03:DD87: 84 58     STY ram_0058
C - - - - - 0x00DD99 03:DD89: A9 00     LDA #$00
C - - - - - 0x00DD9B 03:DD8B: 85 52     STA ram_0052
C - - - - - 0x00DD9D 03:DD8D: AD 17 04  LDA ram_ball_pass_pos_Y_lo
C - - - - - 0x00DDA0 03:DD90: 38        SEC
C - - - - - 0x00DDA1 03:DD91: ED DE 03  SBC ram_03DE
C - - - - - 0x00DDA4 03:DD94: AA        TAX
C - - - - - 0x00DDA5 03:DD95: AD 18 04  LDA ram_ball_pass_pos_Y_hi
C - - - - - 0x00DDA8 03:DD98: ED E0 03  SBC ram_03E0
C - - - - - 0x00DDAB 03:DD9B: A8        TAY
C - - - - - 0x00DDAC 03:DD9C: B0 03     BCS bra_DDA1
C - - - - - 0x00DDAE 03:DD9E: 20 1E C9  JSR sub_C91E
bra_DDA1:
C - - - - - 0x00DDB1 03:DDA1: 26 2A     ROL ram_002A
C - - - - - 0x00DDB3 03:DDA3: 86 54     STX ram_0054
C - - - - - 0x00DDB5 03:DDA5: 84 57     STY ram_0057
C - - - - - 0x00DDB7 03:DDA7: 38        SEC
C - - - - - 0x00DDB8 03:DDA8: 8A        TXA
C - - - - - 0x00DDB9 03:DDA9: E5 53     SBC ram_0053
C - - - - - 0x00DDBB 03:DDAB: 98        TYA
C - - - - - 0x00DDBC 03:DDAC: E5 58     SBC ram_0058
C - - - - - 0x00DDBE 03:DDAE: B0 04     BCS bra_DDB4
C - - - - - 0x00DDC0 03:DDB0: A6 53     LDX ram_0053
C - - - - - 0x00DDC2 03:DDB2: A4 58     LDY ram_0058
bra_DDB4:
C - - - - - 0x00DDC4 03:DDB4: 8E 1B 04  STX ram_041B
C - - - - - 0x00DDC7 03:DDB7: 8C 1C 04  STY ram_041C
C - - - - - 0x00DDCA 03:DDBA: 20 A4 CB  JSR sub_CBA4
C - - - - - 0x00DDCD 03:DDBD: A2 00     LDX #$00
bra_DDBF:
C - - - - - 0x00DDCF 03:DDBF: BD FA FB  LDA tbl_FBFA,X
C - - - - - 0x00DDD2 03:DDC2: 38        SEC
C - - - - - 0x00DDD3 03:DDC3: E5 52     SBC ram_0052
C - - - - - 0x00DDD5 03:DDC5: BD FB FB  LDA tbl_FBFB,X
C - - - - - 0x00DDD8 03:DDC8: E5 53     SBC ram_0053
C - - - - - 0x00DDDA 03:DDCA: B0 04     BCS bra_DDD0
C - - - - - 0x00DDDC 03:DDCC: E8        INX
C - - - - - 0x00DDDD 03:DDCD: E8        INX
C - - - - - 0x00DDDE 03:DDCE: D0 EF     BNE bra_DDBF
bra_DDD0:
C - - - - - 0x00DDE0 03:DDD0: 8A        TXA
C - - - - - 0x00DDE1 03:DDD1: 4A        LSR
C - - - - - 0x00DDE2 03:DDD2: 46 2A     LSR ram_002A
C - - - - - 0x00DDE4 03:DDD4: B0 02     BCS bra_DDD8
C - - - - - 0x00DDE6 03:DDD6: 49 7F     EOR #$7F
bra_DDD8:
C - - - - - 0x00DDE8 03:DDD8: 46 2A     LSR ram_002A
C - - - - - 0x00DDEA 03:DDDA: B0 02     BCS bra_DDDE_RTS
C - - - - - 0x00DDEC 03:DDDC: 49 FF     EOR #$FF
bra_DDDE_RTS:
C - - - - - 0x00DDEE 03:DDDE: 60        RTS



sub_DDDF:
C - - - - - 0x00DDEF 03:DDDF: 20 6D DE  JSR sub_DE6D
C - - - - - 0x00DDF2 03:DDE2: 8E D5 03  STX ram_03D5
C - - - - - 0x00DDF5 03:DDE5: 8C D7 03  STY ram_03D7
C - - - - - 0x00DDF8 03:DDE8: 20 64 DE  JSR sub_DE64
C - - - - - 0x00DDFB 03:DDEB: 8E DB 03  STX ram_03DB
C - - - - - 0x00DDFE 03:DDEE: 8C DD 03  STY ram_03DD
C - - - - - 0x00DE01 03:DDF1: 60        RTS



sub_DDF2:
C - - - - - 0x00DE02 03:DDF2: 20 DF DD  JSR sub_DDDF
C - - - - - 0x00DE05 03:DDF5: A9 00     LDA #$00
C - - - - - 0x00DE07 03:DDF7: 85 52     STA ram_0052
C - - - - - 0x00DE09 03:DDF9: AD 1B 04  LDA ram_041B
C - - - - - 0x00DE0C 03:DDFC: 85 53     STA ram_0053
C - - - - - 0x00DE0E 03:DDFE: AD 1C 04  LDA ram_041C
C - - - - - 0x00DE11 03:DE01: 85 58     STA ram_0058
C - - - - - 0x00DE13 03:DE03: AD E6 03  LDA ram_03E6
C - - - - - 0x00DE16 03:DE06: 10 04     BPL bra_DE0C
C - - - - - 0x00DE18 03:DE08: 49 FF     EOR #$FF
C - - - - - 0x00DE1A 03:DE0A: 29 7F     AND #$7F
bra_DE0C:
C - - - - - 0x00DE1C 03:DE0C: C9 40     CMP #$40
C - - - - - 0x00DE1E 03:DE0E: 90 04     BCC bra_DE14
C - - - - - 0x00DE20 03:DE10: 49 3F     EOR #$3F
C - - - - - 0x00DE22 03:DE12: 29 3F     AND #$3F
bra_DE14:
C - - - - - 0x00DE24 03:DE14: C9 20     CMP #$20
C - - - - - 0x00DE26 03:DE16: 90 06     BCC bra_DE1E
C - - - - - 0x00DE28 03:DE18: AE D5 03  LDX ram_03D5
C - - - - - 0x00DE2B 03:DE1B: AC D7 03  LDY ram_03D7
bra_DE1E:
C - - - - - 0x00DE2E 03:DE1E: 98        TYA
C - - - - - 0x00DE2F 03:DE1F: 10 03     BPL bra_DE24
C - - - - - 0x00DE31 03:DE21: 20 1E C9  JSR sub_C91E
bra_DE24:
C - - - - - 0x00DE34 03:DE24: 86 54     STX ram_0054
C - - - - - 0x00DE36 03:DE26: 84 57     STY ram_0057
C - - - - - 0x00DE38 03:DE28: 20 A4 CB  JSR sub_CBA4
C - - - - - 0x00DE3B 03:DE2B: A5 52     LDA ram_0052
C - - - - - 0x00DE3D 03:DE2D: 8D 1F 04  STA ram_041F
C - - - - - 0x00DE40 03:DE30: A5 53     LDA ram_0053
C - - - - - 0x00DE42 03:DE32: 8D 20 04  STA ram_0420
C - - - - - 0x00DE45 03:DE35: 60        RTS



sub_DE36:
C - - - - - 0x00DE46 03:DE36: AD 1F 04  LDA ram_041F
C - - - - - 0x00DE49 03:DE39: 85 4A     STA ram_004A
C - - - - - 0x00DE4B 03:DE3B: AD 20 04  LDA ram_0420
C - - - - - 0x00DE4E 03:DE3E: 4A        LSR
C - - - - - 0x00DE4F 03:DE3F: 66 4A     ROR ram_004A
C - - - - - 0x00DE51 03:DE41: 85 4B     STA ram_004B
C - - - - - 0x00DE53 03:DE43: A9 09     LDA #$09
C - - - - - 0x00DE55 03:DE45: 85 4C     STA ram_004C
C - - - - - 0x00DE57 03:DE47: A9 00     LDA #$00
C - - - - - 0x00DE59 03:DE49: 85 4D     STA ram_004D
C - - - - - 0x00DE5B 03:DE4B: 20 75 CB  JSR sub_CB75
C - - - - - 0x00DE5E 03:DE4E: A5 4E     LDA ram_004E
C - - - - - 0x00DE60 03:DE50: 8D 21 04  STA ram_0421
C - - - - - 0x00DE63 03:DE53: A5 4F     LDA ram_004F
C - - - - - 0x00DE65 03:DE55: 8D 23 04  STA ram_0423
C - - - - - 0x00DE68 03:DE58: A9 00     LDA #$00
C - - - - - 0x00DE6A 03:DE5A: 8D 22 04  STA ram_0422
C - - - - - 0x00DE6D 03:DE5D: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00DE70 03:DE60: 8D 26 04  STA ram_0426
C - - - - - 0x00DE73 03:DE63: 60        RTS



sub_DE64:
C - - - - - 0x00DE74 03:DE64: AD E6 03  LDA ram_03E6
C - - - - - 0x00DE77 03:DE67: 20 20 CC  JSR sub_CC20
C - - - - - 0x00DE7A 03:DE6A: 4C 73 DE  JMP loc_DE73



sub_DE6D:
C - - - - - 0x00DE7D 03:DE6D: AD E6 03  LDA ram_03E6
C - - - - - 0x00DE80 03:DE70: 20 23 CC  JSR sub_CC23
loc_DE73:
C D 2 - - - 0x00DE83 03:DE73: 98        TYA
C - - - - - 0x00DE84 03:DE74: 08        PHP
C - - - - - 0x00DE85 03:DE75: 10 03     BPL bra_DE7A
C - - - - - 0x00DE87 03:DE77: 20 1E C9  JSR sub_C91E
bra_DE7A:
C - - - - - 0x00DE8A 03:DE7A: 86 4A     STX ram_004A
C - - - - - 0x00DE8C 03:DE7C: 84 4B     STY ram_004B
C - - - - - 0x00DE8E 03:DE7E: AD 1D 04  LDA ram_041D
C - - - - - 0x00DE91 03:DE81: 85 4C     STA ram_004C
C - - - - - 0x00DE93 03:DE83: AD 1E 04  LDA ram_041E
C - - - - - 0x00DE96 03:DE86: 85 4D     STA ram_004D
C - - - - - 0x00DE98 03:DE88: 20 75 CB  JSR sub_CB75
C - - - - - 0x00DE9B 03:DE8B: A6 4F     LDX ram_004F
C - - - - - 0x00DE9D 03:DE8D: A4 50     LDY ram_0050
C - - - - - 0x00DE9F 03:DE8F: 28        PLP
C - - - - - 0x00DEA0 03:DE90: 10 03     BPL bra_DE95_RTS
C - - - - - 0x00DEA2 03:DE92: 20 1E C9  JSR sub_C91E
bra_DE95_RTS:
C - - - - - 0x00DEA5 03:DE95: 60        RTS



sub_DE96:
C - - - - - 0x00DEA6 03:DE96: A9 02     LDA #$02
C - - - - - 0x00DEA8 03:DE98: 85 67     STA ram_0067
C - - - - - 0x00DEAA 03:DE9A: A9 03     LDA #$03
C - - - - - 0x00DEAC 03:DE9C: 85 68     STA ram_0068
C - - - - - 0x00DEAE 03:DE9E: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00DEB1 03:DEA1: A9 00     LDA #$00
C - - - - - 0x00DEB3 03:DEA3: 85 5B     STA ram_005B
C - - - - - 0x00DEB5 03:DEA5: 85 5D     STA ram_005D
C - - - - - 0x00DEB7 03:DEA7: A9 40     LDA #$40
C - - - - - 0x00DEB9 03:DEA9: 85 5C     STA ram_005C
C - - - - - 0x00DEBB 03:DEAB: 20 24 80  JSR sub_0x004034
C - - - - - 0x00DEBE 03:DEAE: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00DEC1 03:DEB1: 30 06     BMI bra_DEB9
C - - - - - 0x00DEC3 03:DEB3: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00DEC6 03:DEB6: 20 1B 80  JSR sub_0x00402B
bra_DEB9:
C - - - - - 0x00DEC9 03:DEB9: A9 16     LDA #$16
C - - - - - 0x00DECB 03:DEBB: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00DECE 03:DEBE: 20 1B 80  JSR sub_0x00402B
C - - - - - 0x00DED1 03:DEC1: A9 17     LDA #$17
C - - - - - 0x00DED3 03:DEC3: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00DED6 03:DEC6: 20 1B 80  JSR sub_0x00402B
C - - - - - 0x00DED9 03:DEC9: 20 18 80  JSR sub_0x004028
C - - - - - 0x00DEDC 03:DECC: A5 5C     LDA ram_005C
C - - - - - 0x00DEDE 03:DECE: 48        PHA
C - - - - - 0x00DEDF 03:DECF: A5 5B     LDA ram_005B
C - - - - - 0x00DEE1 03:DED1: 85 60     STA ram_0060
C - - - - - 0x00DEE3 03:DED3: AA        TAX
C - - - - - 0x00DEE4 03:DED4: AD A4 03  LDA ram_03A4
C - - - - - 0x00DEE7 03:DED7: 29 10     AND #$10
C - - - - - 0x00DEE9 03:DED9: D0 0C     BNE bra_DEE7
C - - - - - 0x00DEEB 03:DEDB: 38        SEC
C - - - - - 0x00DEEC 03:DEDC: E5 5E     SBC ram_005E
C - - - - - 0x00DEEE 03:DEDE: 0A        ASL
C - - - - - 0x00DEEF 03:DEDF: 0A        ASL
C - - - - - 0x00DEF0 03:DEE0: C5 5B     CMP ram_005B
C - - - - - 0x00DEF2 03:DEE2: B0 02     BCS bra_DEE6
C - - - - - 0x00DEF4 03:DEE4: A5 5B     LDA ram_005B
bra_DEE6:
C - - - - - 0x00DEF6 03:DEE6: AA        TAX
bra_DEE7:
C - - - - - 0x00DEF7 03:DEE7: 86 5B     STX ram_005B
C - - - - - 0x00DEF9 03:DEE9: A9 00     LDA #$00
bra_DEEB_loop:
C - - - - - 0x00DEFB 03:DEEB: 48        PHA
C - - - - - 0x00DEFC 03:DEEC: CD 29 04  CMP ram_plr_w_ball
C - - - - - 0x00DEFF 03:DEEF: F0 06     BEQ bra_DEF7
C - - - - - 0x00DF01 03:DEF1: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00DF04 03:DEF4: 20 1B 80  JSR sub_0x00402B
bra_DEF7:
C - - - - - 0x00DF07 03:DEF7: 68        PLA
C - - - - - 0x00DF08 03:DEF8: 18        CLC
C - - - - - 0x00DF09 03:DEF9: 69 01     ADC #$01
C - - - - - 0x00DF0B 03:DEFB: C9 16     CMP #$16
C - - - - - 0x00DF0D 03:DEFD: D0 EC     BNE bra_DEEB_loop
C - - - - - 0x00DF0F 03:DEFF: 24 5D     BIT ram_005D
C - - - - - 0x00DF11 03:DF01: 30 14     BMI bra_DF17
C - - - - - 0x00DF13 03:DF03: A4 5C     LDY ram_005C
C - - - - - 0x00DF15 03:DF05: A6 5B     LDX ram_005B
C - - - - - 0x00DF17 03:DF07: A9 F8     LDA #$F8
bra_DF09_loop:
C - - - - - 0x00DF19 03:DF09: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00DF1C 03:DF0C: E8        INX
C - - - - - 0x00DF1D 03:DF0D: E8        INX
C - - - - - 0x00DF1E 03:DF0E: E8        INX
C - - - - - 0x00DF1F 03:DF0F: E8        INX
C - - - - - 0x00DF20 03:DF10: D0 02     BNE bra_DF14
C - - - - - 0x00DF22 03:DF12: A6 60     LDX ram_0060
bra_DF14:
C - - - - - 0x00DF24 03:DF14: 88        DEY
C - - - - - 0x00DF25 03:DF15: D0 F2     BNE bra_DF09_loop
bra_DF17:
C - - - - - 0x00DF27 03:DF17: 68        PLA
C - - - - - 0x00DF28 03:DF18: 38        SEC
C - - - - - 0x00DF29 03:DF19: E5 5C     SBC ram_005C
C - - - - - 0x00DF2B 03:DF1B: 85 2A     STA ram_002A
C - - - - - 0x00DF2D 03:DF1D: A5 5F     LDA ram_005F
C - - - - - 0x00DF2F 03:DF1F: 18        CLC
C - - - - - 0x00DF30 03:DF20: 69 08     ADC #$08
C - - - - - 0x00DF32 03:DF22: C5 2A     CMP ram_002A
C - - - - - 0x00DF34 03:DF24: 90 02     BCC bra_DF28
C - - - - - 0x00DF36 03:DF26: A9 00     LDA #$00
bra_DF28:
C - - - - - 0x00DF38 03:DF28: 85 5F     STA ram_005F
C - - - - - 0x00DF3A 03:DF2A: A5 2A     LDA ram_002A
C - - - - - 0x00DF3C 03:DF2C: 38        SEC
C - - - - - 0x00DF3D 03:DF2D: E5 5F     SBC ram_005F
C - - - - - 0x00DF3F 03:DF2F: 85 5E     STA ram_005E
C - - - - - 0x00DF41 03:DF31: A9 00     LDA #$00
C - - - - - 0x00DF43 03:DF33: 85 6F     STA ram_plr_local_id
bra_DF35:
C - - - - - 0x00DF45 03:DF35: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00DF47 03:DF37: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00DF4A 03:DF3A: A0 18     LDY #$18
C - - - - - 0x00DF4C 03:DF3C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DF4E 03:DF3E: F0 15     BEQ bra_DF55
C - - - - - 0x00DF50 03:DF40: C9 FF     CMP #$FF
C - - - - - 0x00DF52 03:DF42: F0 11     BEQ bra_DF55
C - - - - - 0x00DF54 03:DF44: 38        SEC
C - - - - - 0x00DF55 03:DF45: E9 01     SBC #$01
C - - - - - 0x00DF57 03:DF47: 91 61     STA (ram_0061),Y
C - - - - - 0x00DF59 03:DF49: D0 0A     BNE bra_DF55
C - - - - - 0x00DF5B 03:DF4B: A0 16     LDY #$16
C - - - - - 0x00DF5D 03:DF4D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DF5F 03:DF4F: 48        PHA
C - - - - - 0x00DF60 03:DF50: C8        INY
C - - - - - 0x00DF61 03:DF51: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DF63 03:DF53: 48        PHA
C - - - - - 0x00DF64 03:DF54: 60        RTS
bra_DF55:
loc_DF55:
C D 2 - - - 0x00DF65 03:DF55: E6 6F     INC ram_plr_local_id
C - - - - - 0x00DF67 03:DF57: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00DF69 03:DF59: C9 16     CMP #$16
C - - - - - 0x00DF6B 03:DF5B: D0 D8     BNE bra_DF35
C - - - - - 0x00DF6D 03:DF5D: 60        RTS



sub_DF5E:
C - - - - - 0x00DF6E 03:DF5E: AD D3 03  LDA ram_03D3
C - - - - - 0x00DF71 03:DF61: 29 10     AND #$10
C - - - - - 0x00DF73 03:DF63: D0 54     BNE bra_DFB9_RTS
C - - - - - 0x00DF75 03:DF65: A9 00     LDA #$00
bra_DF67:
C - - - - - 0x00DF77 03:DF67: 48        PHA
C - - - - - 0x00DF78 03:DF68: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00DF7B 03:DF6B: A0 12     LDY #$12
C - - - - - 0x00DF7D 03:DF6D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DF7F 03:DF6F: C9 03     CMP #$03
C - - - - - 0x00DF81 03:DF71: D0 0D     BNE bra_DF80
C - - - - - 0x00DF83 03:DF73: A0 00     LDY #$00
C - - - - - 0x00DF85 03:DF75: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DF87 03:DF77: 29 FB     AND #$FB
C - - - - - 0x00DF89 03:DF79: 91 61     STA (ram_0061),Y
C - - - - - 0x00DF8B 03:DF7B: A9 00     LDA #$00
C - - - - - 0x00DF8D 03:DF7D: 20 2F C6  JSR sub_C62F
bra_DF80:
C - - - - - 0x00DF90 03:DF80: 68        PLA
C - - - - - 0x00DF91 03:DF81: 18        CLC
C - - - - - 0x00DF92 03:DF82: 69 01     ADC #$01
C - - - - - 0x00DF94 03:DF84: C9 16     CMP #$16
C - - - - - 0x00DF96 03:DF86: D0 DF     BNE bra_DF67
C - - - - - 0x00DF98 03:DF88: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00DF9B 03:DF8B: 20 DA C9  JSR sub_C9DA
C - - - - - 0x00DF9E 03:DF8E: A9 03     LDA #$03
C - - - - - 0x00DFA0 03:DF90: 20 2F C6  JSR sub_C62F
C - - - - - 0x00DFA3 03:DF93: A0 00     LDY #$00
C - - - - - 0x00DFA5 03:DF95: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DFA7 03:DF97: 09 04     ORA #$04
C - - - - - 0x00DFA9 03:DF99: 29 F7     AND #$F7
C - - - - - 0x00DFAB 03:DF9B: 91 61     STA (ram_0061),Y
C - - - - - 0x00DFAD 03:DF9D: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00DFB0 03:DFA0: 49 0B     EOR #$0B
C - - - - - 0x00DFB2 03:DFA2: 20 DA C9  JSR sub_C9DA
C - - - - - 0x00DFB5 03:DFA5: A9 03     LDA #$03
C - - - - - 0x00DFB7 03:DFA7: 20 2F C6  JSR sub_C62F
C - - - - - 0x00DFBA 03:DFAA: A0 00     LDY #$00
C - - - - - 0x00DFBC 03:DFAC: B1 61     LDA (ram_0061),Y
C - - - - - 0x00DFBE 03:DFAE: 09 04     ORA #$04
C - - - - - 0x00DFC0 03:DFB0: 29 F7     AND #$F7
C - - - - - 0x00DFC2 03:DFB2: 91 61     STA (ram_0061),Y
C - - - - - 0x00DFC4 03:DFB4: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00DFC6 03:DFB6: 20 E3 CB  JSR sub_CBE3
bra_DFB9_RTS:
C - - - - - 0x00DFC9 03:DFB9: 60        RTS



sub_DFBA:
C - - - - - 0x00DFCA 03:DFBA: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00DFCD 03:DFBD: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00DFD0 03:DFC0: F0 14     BEQ bra_DFD6
C - - - - - 0x00DFD2 03:DFC2: AD 25 00  LDA a: ram_btn_hold + $01
C - - - - - 0x00DFD5 03:DFC5: 2C A4 03  BIT ram_03A4
C - - - - - 0x00DFD8 03:DFC8: 30 0C     BMI bra_DFD6
C - - - - - 0x00DFDA 03:DFCA: AD 7E 03  LDA ram_random
C - - - - - 0x00DFDD 03:DFCD: 29 03     AND #$03
C - - - - - 0x00DFDF 03:DFCF: AA        TAX
C - - - - - 0x00DFE0 03:DFD0: BD E6 DF  LDA tbl_DFE6,X
C - - - - - 0x00DFE3 03:DFD3: 4C DE DF  JMP loc_DFDE
bra_DFD6:
C - - - - - 0x00DFE6 03:DFD6: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00DFE8 03:DFD8: F0 0B     BEQ bra_DFE5_RTS
C - - - - - 0x00DFEA 03:DFDA: AA        TAX
C - - - - - 0x00DFEB 03:DFDB: BD 83 E0  LDA tbl_E083,X
loc_DFDE:
C D 2 - - - 0x00DFEE 03:DFDE: A0 13     LDY #$13
C - - - - - 0x00DFF0 03:DFE0: 91 61     STA (ram_0061),Y
C - - - - - 0x00DFF2 03:DFE2: 20 EA DF  JSR sub_DFEA
bra_DFE5_RTS:
C - - - - - 0x00DFF5 03:DFE5: 60        RTS



tbl_DFE6:
- D 2 - - - 0x00DFF6 03:DFE6: 00        .byte $00   ; 
- D 2 - - - 0x00DFF7 03:DFE7: 20        .byte $20   ; 
- D 2 - - - 0x00DFF8 03:DFE8: E0        .byte $E0   ; 
- D 2 - - - 0x00DFF9 03:DFE9: 00        .byte $00   ; 



sub_DFEA:
C - - - - - 0x00DFFA 03:DFEA: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00DFFD 03:DFED: F0 03     BEQ bra_DFF2
C - - - - - 0x00DFFF 03:DFEF: 18        CLC
C - - - - - 0x00E000 03:DFF0: 69 80     ADC #$80
bra_DFF2:
C - - - - - 0x00E002 03:DFF2: C9 60     CMP #$60
C - - - - - 0x00E004 03:DFF4: 90 26     BCC bra_E01C_RTS
C - - - - - 0x00E006 03:DFF6: C9 A1     CMP #$A1
C - - - - - 0x00E008 03:DFF8: B0 22     BCS bra_E01C_RTS
C - - - - - 0x00E00A 03:DFFA: 85 2A     STA ram_002A
C - - - - - 0x00E00C 03:DFFC: A0 0B     LDY #$0B
C - - - - - 0x00E00E 03:DFFE: B1 61     LDA (ram_0061),Y
C D 3 - - - 0x00E010 03:E000: AA        TAX
C - - - - - 0x00E011 03:E001: C8        INY
C - - - - - 0x00E012 03:E002: C8        INY
C - - - - - 0x00E013 03:E003: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E015 03:E005: A8        TAY
C - - - - - 0x00E016 03:E006: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00E019 03:E009: F0 03     BEQ bra_E00E
C - - - - - 0x00E01B 03:E00B: 20 50 CB  JSR sub_CB50
bra_E00E:
C - - - - - 0x00E01E 03:E00E: 38        SEC
C - - - - - 0x00E01F 03:E00F: 8A        TXA
C - - - - - 0x00E020 03:E010: E9 40     SBC #$40
C - - - - - 0x00E022 03:E012: 98        TYA
C - - - - - 0x00E023 03:E013: E9 01     SBC #$01
C - - - - - 0x00E025 03:E015: B0 05     BCS bra_E01C_RTS
C - - - - - 0x00E027 03:E017: A5 2A     LDA ram_002A
C - - - - - 0x00E029 03:E019: 20 1D E0  JSR sub_E01D
bra_E01C_RTS:
C - - - - - 0x00E02C 03:E01C: 60        RTS



sub_E01D:
C - - - - - 0x00E02D 03:E01D: A2 00     LDX #$00
C - - - - - 0x00E02F 03:E01F: A0 01     LDY #$01
C - - - - - 0x00E031 03:E021: C9 80     CMP #$80
C - - - - - 0x00E033 03:E023: F0 09     BEQ bra_E02E
C - - - - - 0x00E035 03:E025: A2 28     LDX #$28
C - - - - - 0x00E037 03:E027: C9 A0     CMP #$A0
C - - - - - 0x00E039 03:E029: D0 03     BNE bra_E02E
C - - - - - 0x00E03B 03:E02B: 20 4A CB  JSR sub_CB4A
bra_E02E:
C - - - - - 0x00E03E 03:E02E: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00E041 03:E031: F0 03     BEQ bra_E036
C - - - - - 0x00E043 03:E033: 20 4A CB  JSR sub_CB4A
bra_E036:
C - - - - - 0x00E046 03:E036: 98        TYA
C - - - - - 0x00E047 03:E037: A0 1B     LDY #$1B
C - - - - - 0x00E049 03:E039: 91 61     STA (ram_0061),Y
C - - - - - 0x00E04B 03:E03B: 88        DEY
C - - - - - 0x00E04C 03:E03C: 8A        TXA
C - - - - - 0x00E04D 03:E03D: 91 61     STA (ram_0061),Y
C - - - - - 0x00E04F 03:E03F: A2 9C     LDX #$9C
C - - - - - 0x00E051 03:E041: A0 00     LDY #$00
C - - - - - 0x00E053 03:E043: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00E056 03:E046: F0 03     BEQ bra_E04B
C - - - - - 0x00E058 03:E048: 20 50 CB  JSR sub_CB50
bra_E04B:
C - - - - - 0x00E05B 03:E04B: 98        TYA
C - - - - - 0x00E05C 03:E04C: A0 1D     LDY #$1D
C - - - - - 0x00E05E 03:E04E: 91 61     STA (ram_0061),Y
C - - - - - 0x00E060 03:E050: 88        DEY
C - - - - - 0x00E061 03:E051: 8A        TXA
C - - - - - 0x00E062 03:E052: 91 61     STA (ram_0061),Y
C - - - - - 0x00E064 03:E054: 20 13 E6  JSR sub_E613
C - - - - - 0x00E067 03:E057: 60        RTS


; bzk garbage
- - - - - - 0x00E068 03:E058: AD 24 00  LDA a: ram_btn_hold
- - - - - - 0x00E06B 03:E05B: AE AD 03  LDX ram_team_w_ball
- - - - - - 0x00E06E 03:E05E: D0 03     BNE bra_E063
- - - - - - 0x00E070 03:E060: AD 25 00  LDA a: ram_btn_hold + $01
bra_E063:
- - - - - - 0x00E073 03:E063: 29 0F     AND #con_btns_Dpad
- - - - - - 0x00E075 03:E065: F0 08     BEQ bra_E06F_RTS
- - - - - - 0x00E077 03:E067: AA        TAX
- - - - - - 0x00E078 03:E068: BD 83 E0  LDA tbl_E083,X
- - - - - - 0x00E07B 03:E06B: A0 13     LDY #$13
- - - - - - 0x00E07D 03:E06D: 91 61     STA (ram_0061),Y
bra_E06F_RTS:
- - - - - - 0x00E07F 03:E06F: 60        RTS



sub_E070:
C - - - - - 0x00E080 03:E070: AA        TAX
C - - - - - 0x00E081 03:E071: BD 83 E0  LDA tbl_E083,X
C - - - - - 0x00E084 03:E074: A0 13     LDY #$13
C - - - - - 0x00E086 03:E076: D1 61     CMP (ram_0061),Y
C - - - - - 0x00E088 03:E078: F0 05     BEQ bra_E07F
C - - - - - 0x00E08A 03:E07A: 91 61     STA (ram_0061),Y
C - - - - - 0x00E08C 03:E07C: 20 80 E5  JSR sub_E580
bra_E07F:
C - - - - - 0x00E08F 03:E07F: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00E092 03:E082: 60        RTS



tbl_E083:
; направление игрока при нажатии кнопки движения
- - - - - - 0x00E093 03:E083: FF        .byte $FF   ; 00
- D 3 - - - 0x00E094 03:E084: 40        .byte $40   ; 01
- D 3 - - - 0x00E095 03:E085: C0        .byte $C0   ; 02
- - - - - - 0x00E096 03:E086: FF        .byte $FF   ; 03
- D 3 - - - 0x00E097 03:E087: 00        .byte $00   ; 04
- D 3 - - - 0x00E098 03:E088: 20        .byte $20   ; 05
- D 3 - - - 0x00E099 03:E089: E0        .byte $E0   ; 06
- - - - - - 0x00E09A 03:E08A: FF        .byte $FF   ; 07
- D 3 - - - 0x00E09B 03:E08B: 80        .byte $80   ; 08
- D 3 - - - 0x00E09C 03:E08C: 60        .byte $60   ; 09
- D 3 - - - 0x00E09D 03:E08D: A0        .byte $A0   ; 0A


; bzk garbage? unreal buttons combinations
- - - - - - 0x00E09E 03:E08E: FF        .byte $FF   ; 0B
- - - - - - 0x00E09F 03:E08F: FF        .byte $FF   ; 0C
- - - - - - 0x00E0A0 03:E090: FF        .byte $FF   ; 0D
- - - - - - 0x00E0A1 03:E091: FF        .byte $FF   ; 0E
- - - - - - 0x00E0A2 03:E092: FF        .byte $FF   ; 0F



sub_E093:
C - - - - - 0x00E0A3 03:E093: AE 24 00  LDX a: ram_btn_hold
C - - - - - 0x00E0A6 03:E096: A8        TAY
C - - - - - 0x00E0A7 03:E097: F0 0A     BEQ bra_E0A3
C - - - - - 0x00E0A9 03:E099: AE 25 00  LDX a: ram_btn_hold + $01
C - - - - - 0x00E0AC 03:E09C: 2C A4 03  BIT ram_03A4
C - - - - - 0x00E0AF 03:E09F: 30 02     BMI bra_E0A3
C - - - - - 0x00E0B1 03:E0A1: A2 00     LDX #$00
bra_E0A3:
C - - - - - 0x00E0B3 03:E0A3: A9 00     LDA #$00
sub_E0A5:
C - - - - - 0x00E0B5 03:E0A5: 85 2B     STA ram_002B
C - - - - - 0x00E0B7 03:E0A7: 8A        TXA
C - - - - - 0x00E0B8 03:E0A8: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00E0BA 03:E0AA: D0 05     BNE bra_E0B1
C - - - - - 0x00E0BC 03:E0AC: 20 77 C6  JSR sub_C677
C - - - - - 0x00E0BF 03:E0AF: 18        CLC
C - - - - - 0x00E0C0 03:E0B0: 60        RTS
bra_E0B1:
C - - - - - 0x00E0C1 03:E0B1: 20 70 E0  JSR sub_E070
C - - - - - 0x00E0C4 03:E0B4: A9 00     LDA #$00
C - - - - - 0x00E0C6 03:E0B6: 85 2A     STA ram_002A
C - - - - - 0x00E0C8 03:E0B8: A0 05     LDY #$05
C - - - - - 0x00E0CA 03:E0BA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E0CC 03:E0BC: AA        TAX
C - - - - - 0x00E0CD 03:E0BD: C8        INY
C - - - - - 0x00E0CE 03:E0BE: C8        INY
C - - - - - 0x00E0CF 03:E0BF: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E0D1 03:E0C1: A8        TAY
C - - - - - 0x00E0D2 03:E0C2: F0 05     BEQ bra_E0C9
C - - - - - 0x00E0D4 03:E0C4: 20 4A CB  JSR sub_CB4A
C - - - - - 0x00E0D7 03:E0C7: E6 2A     INC ram_002A
bra_E0C9:
C - - - - - 0x00E0D9 03:E0C9: 38        SEC
C - - - - - 0x00E0DA 03:E0CA: 8A        TXA
C - - - - - 0x00E0DB 03:E0CB: A6 2B     LDX ram_002B
C - - - - - 0x00E0DD 03:E0CD: FD 5B E1  SBC tbl_E15B,X
C - - - - - 0x00E0E0 03:E0D0: 98        TYA
C - - - - - 0x00E0E1 03:E0D1: FD 5C E1  SBC tbl_E15C,X
C - - - - - 0x00E0E4 03:E0D4: B0 18     BCS bra_E0EE
C - - - - - 0x00E0E6 03:E0D6: BD 5B E1  LDA tbl_E15B,X
C - - - - - 0x00E0E9 03:E0D9: BC 5C E1  LDY tbl_E15C,X
C - - - - - 0x00E0EC 03:E0DC: AA        TAX
C - - - - - 0x00E0ED 03:E0DD: 46 2A     LSR ram_002A
C - - - - - 0x00E0EF 03:E0DF: 90 03     BCC bra_E0E4
C - - - - - 0x00E0F1 03:E0E1: 20 4A CB  JSR sub_CB4A
bra_E0E4:
C - - - - - 0x00E0F4 03:E0E4: 98        TYA
C - - - - - 0x00E0F5 03:E0E5: A0 07     LDY #$07
C - - - - - 0x00E0F7 03:E0E7: 91 61     STA (ram_0061),Y
C - - - - - 0x00E0F9 03:E0E9: 88        DEY
C - - - - - 0x00E0FA 03:E0EA: 88        DEY
C - - - - - 0x00E0FB 03:E0EB: 8A        TXA
C - - - - - 0x00E0FC 03:E0EC: 91 61     STA (ram_0061),Y
bra_E0EE:
C - - - - - 0x00E0FE 03:E0EE: A9 00     LDA #$00
C - - - - - 0x00E100 03:E0F0: 85 2A     STA ram_002A
C - - - - - 0x00E102 03:E0F2: A0 0B     LDY #$0B
C - - - - - 0x00E104 03:E0F4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E106 03:E0F6: AA        TAX
C - - - - - 0x00E107 03:E0F7: C8        INY
C - - - - - 0x00E108 03:E0F8: C8        INY
C - - - - - 0x00E109 03:E0F9: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E10B 03:E0FB: A8        TAY
C - - - - - 0x00E10C 03:E0FC: C9 02     CMP #$02
C - - - - - 0x00E10E 03:E0FE: 90 05     BCC bra_E105
C - - - - - 0x00E110 03:E100: 20 50 CB  JSR sub_CB50
C - - - - - 0x00E113 03:E103: E6 2A     INC ram_002A
bra_E105:
C - - - - - 0x00E115 03:E105: 38        SEC
C - - - - - 0x00E116 03:E106: 8A        TXA
C - - - - - 0x00E117 03:E107: 48        PHA
C - - - - - 0x00E118 03:E108: A6 2B     LDX ram_002B
C - - - - - 0x00E11A 03:E10A: FD 5D E1  SBC tbl_E15D,X
C - - - - - 0x00E11D 03:E10D: 98        TYA
C - - - - - 0x00E11E 03:E10E: FD 5E E1  SBC tbl_E15E,X
C - - - - - 0x00E121 03:E111: 68        PLA
C - - - - - 0x00E122 03:E112: B0 0A     BCS bra_E11E
C - - - - - 0x00E124 03:E114: BD 5D E1  LDA tbl_E15D,X
C - - - - - 0x00E127 03:E117: BC 5E E1  LDY tbl_E15E,X
C - - - - - 0x00E12A 03:E11A: AA        TAX
C - - - - - 0x00E12B 03:E11B: 4C 2E E1  JMP loc_E12E
bra_E11E:
C - - - - - 0x00E12E 03:E11E: FD 5F E1  SBC tbl_E15F,X
C - - - - - 0x00E131 03:E121: 98        TYA
C - - - - - 0x00E132 03:E122: FD 60 E1  SBC tbl_E160,X
C - - - - - 0x00E135 03:E125: 90 18     BCC bra_E13F
C - - - - - 0x00E137 03:E127: BD 5F E1  LDA tbl_E15F,X
C - - - - - 0x00E13A 03:E12A: BC 60 E1  LDY tbl_E160,X
C - - - - - 0x00E13D 03:E12D: AA        TAX
loc_E12E:
C D 3 - - - 0x00E13E 03:E12E: 46 2A     LSR ram_002A
C - - - - - 0x00E140 03:E130: 90 03     BCC bra_E135
C - - - - - 0x00E142 03:E132: 20 50 CB  JSR sub_CB50
bra_E135:
C - - - - - 0x00E145 03:E135: 98        TYA
C - - - - - 0x00E146 03:E136: A0 0D     LDY #$0D
C - - - - - 0x00E148 03:E138: 91 61     STA (ram_0061),Y
C - - - - - 0x00E14A 03:E13A: 88        DEY
C - - - - - 0x00E14B 03:E13B: 88        DEY
C - - - - - 0x00E14C 03:E13C: 8A        TXA
C - - - - - 0x00E14D 03:E13D: 91 61     STA (ram_0061),Y
bra_E13F:
C - - - - - 0x00E14F 03:E13F: A0 0C     LDY #$0C
C - - - - - 0x00E151 03:E141: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E153 03:E143: 38        SEC
C - - - - - 0x00E154 03:E144: E9 01     SBC #$01
C - - - - - 0x00E156 03:E146: 91 61     STA (ram_0061),Y
C - - - - - 0x00E158 03:E148: 10 0F     BPL bra_E159
C - - - - - 0x00E15A 03:E14A: A9 05     LDA #$05
C - - - - - 0x00E15C 03:E14C: 91 61     STA (ram_0061),Y
C - - - - - 0x00E15E 03:E14E: A0 0F     LDY #$0F
C - - - - - 0x00E160 03:E150: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E162 03:E152: 18        CLC
C - - - - - 0x00E163 03:E153: 69 01     ADC #$01
C - - - - - 0x00E165 03:E155: 29 03     AND #$03
C - - - - - 0x00E167 03:E157: 91 61     STA (ram_0061),Y
bra_E159:
C - - - - - 0x00E169 03:E159: 38        SEC
C - - - - - 0x00E16A 03:E15A: 60        RTS


; ограничение кипера на зоне
tbl_E15B:
- D 3 - - - 0x00E16B 03:E15B: B8        .byte $B8   ; 
tbl_E15C:
- D 3 - - - 0x00E16C 03:E15C: 00        .byte $00   ; 
tbl_E15D:
- D 3 - - - 0x00E16D 03:E15D: A8        .byte $A8   ; 
tbl_E15E:
- D 3 - - - 0x00E16E 03:E15E: 00        .byte $00   ; 
tbl_E15F:
- D 3 - - - 0x00E16F 03:E15F: C8        .byte $C8   ; 
tbl_E160:
- D 3 - - - 0x00E170 03:E160: 00        .byte $00   ; 
- D 3 - - - 0x00E171 03:E161: D0        .byte $D0   ; 
- D 3 - - - 0x00E172 03:E162: 00        .byte $00   ; 
- D 3 - - - 0x00E173 03:E163: A8        .byte $A8   ; 
- D 3 - - - 0x00E174 03:E164: 00        .byte $00   ; 
- D 3 - - - 0x00E175 03:E165: C0        .byte $C0   ; 
- D 3 - - - 0x00E176 03:E166: 00        .byte $00   ; 



sub_E167:
C - - - - - 0x00E177 03:E167: 20 30 80  JSR sub_0x004040
C - - - - - 0x00E17A 03:E16A: A0 14     LDY #$14
C - - - - - 0x00E17C 03:E16C: A5 77     LDA ram_0077
C - - - - - 0x00E17E 03:E16E: 91 61     STA (ram_0061),Y
C - - - - - 0x00E180 03:E170: C8        INY
C - - - - - 0x00E181 03:E171: A5 78     LDA ram_0078
C - - - - - 0x00E183 03:E173: 91 61     STA (ram_0061),Y
C - - - - - 0x00E185 03:E175: 60        RTS



loc_E176:
C D 3 - - - 0x00E186 03:E176: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00E189 03:E179: D0 03     BNE bra_E17E
- - - - - - 0x00E18B 03:E17B: 4C 09 E2  JMP loc_E209
bra_E17E:
C - - - - - 0x00E18E 03:E17E: C9 0B     CMP #$0B
C - - - - - 0x00E190 03:E180: D0 03     BNE bra_E185
C - - - - - 0x00E192 03:E182: 4C 09 E2  JMP loc_E209
bra_E185:
C - - - - - 0x00E195 03:E185: A0 00     LDY #$00
C - - - - - 0x00E197 03:E187: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E199 03:E189: 09 04     ORA #$04
C - - - - - 0x00E19B 03:E18B: 29 F7     AND #$F7
C - - - - - 0x00E19D 03:E18D: 91 61     STA (ram_0061),Y
C - - - - - 0x00E19F 03:E18F: A9 08     LDA #con_sfx_tackle
C - - - - - 0x00E1A1 03:E191: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00E1A4 03:E194: 20 77 C6  JSR sub_C677
C - - - - - 0x00E1A7 03:E197: A9 08     LDA #con_anim_08
C - - - - - 0x00E1A9 03:E199: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E1AC 03:E19C: A9 04     LDA #$04
C - - - - - 0x00E1AE 03:E19E: 20 52 C6  JSR sub_C652
C - - - - - 0x00E1B1 03:E1A1: 20 6D C6  JSR sub_C66D
C - - - - - 0x00E1B4 03:E1A4: A9 08     LDA #con_anim_08
C - - - - - 0x00E1B6 03:E1A6: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E1B9 03:E1A9: A0 15     LDY #$15
C - - - - - 0x00E1BB 03:E1AB: A9 02     LDA #$02
C - - - - - 0x00E1BD 03:E1AD: 91 61     STA (ram_0061),Y
C - - - - - 0x00E1BF 03:E1AF: 88        DEY
C - - - - - 0x00E1C0 03:E1B0: A9 00     LDA #$00
C - - - - - 0x00E1C2 03:E1B2: 91 61     STA (ram_0061),Y
C - - - - - 0x00E1C4 03:E1B4: 20 80 E5  JSR sub_E580
C - - - - - 0x00E1C7 03:E1B7: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E1C9 03:E1B9: A2 01     LDX #$01
C - - - - - 0x00E1CB 03:E1BB: 20 67 E1  JSR sub_E167
C - - - - - 0x00E1CE 03:E1BE: A0 06     LDY #$06
C - - - - - 0x00E1D0 03:E1C0: A9 18     LDA #$18
C - - - - - 0x00E1D2 03:E1C2: 91 61     STA (ram_0061),Y
C - - - - - 0x00E1D4 03:E1C4: A0 0C     LDY #$0C
C - - - - - 0x00E1D6 03:E1C6: A9 00     LDA #$00
C - - - - - 0x00E1D8 03:E1C8: 91 61     STA (ram_0061),Y
bra_E1CA:
C - - - - - 0x00E1DA 03:E1CA: A9 01     LDA #$01
C - - - - - 0x00E1DC 03:E1CC: 20 52 C6  JSR sub_C652
C - - - - - 0x00E1DF 03:E1CF: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00E1E2 03:E1D2: 20 55 E2  JSR sub_E255
C - - - - - 0x00E1E5 03:E1D5: A0 06     LDY #$06
C - - - - - 0x00E1E7 03:E1D7: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E1E9 03:E1D9: 38        SEC
C - - - - - 0x00E1EA 03:E1DA: E9 01     SBC #$01
C - - - - - 0x00E1EC 03:E1DC: 91 61     STA (ram_0061),Y
C - - - - - 0x00E1EE 03:E1DE: D0 EA     BNE bra_E1CA
C - - - - - 0x00E1F0 03:E1E0: 20 23 E2  JSR sub_E223
C - - - - - 0x00E1F3 03:E1E3: A0 06     LDY #$06
C - - - - - 0x00E1F5 03:E1E5: A9 0A     LDA #$0A
C - - - - - 0x00E1F7 03:E1E7: 91 61     STA (ram_0061),Y
bra_E1E9:
C - - - - - 0x00E1F9 03:E1E9: A9 01     LDA #$01
C - - - - - 0x00E1FB 03:E1EB: 20 52 C6  JSR sub_C652
C - - - - - 0x00E1FE 03:E1EE: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00E201 03:E1F1: A0 06     LDY #$06
C - - - - - 0x00E203 03:E1F3: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E205 03:E1F5: 38        SEC
C - - - - - 0x00E206 03:E1F6: E9 01     SBC #$01
C - - - - - 0x00E208 03:E1F8: 91 61     STA (ram_0061),Y
C - - - - - 0x00E20A 03:E1FA: D0 ED     BNE bra_E1E9
C - - - - - 0x00E20C 03:E1FC: 20 6D C6  JSR sub_C66D
C - - - - - 0x00E20F 03:E1FF: A9 08     LDA #con_anim_08
C - - - - - 0x00E211 03:E201: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E214 03:E204: A9 0A     LDA #$0A
C - - - - - 0x00E216 03:E206: 20 52 C6  JSR sub_C652
loc_E209:
C D 3 - - - 0x00E219 03:E209: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E21B 03:E20B: CD 2A 04  CMP ram_plr_wo_ball
C - - - - - 0x00E21E 03:E20E: D0 03     BNE bra_E213
C - - - - - 0x00E220 03:E210: 4C 21 EB  JMP loc_EB21
bra_E213:
C - - - - - 0x00E223 03:E213: A0 00     LDY #$00
C - - - - - 0x00E225 03:E215: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E227 03:E217: 29 FB     AND #$FB
C - - - - - 0x00E229 03:E219: 91 61     STA (ram_0061),Y
C - - - - - 0x00E22B 03:E21B: A9 11     LDA #$11
C - - - - - 0x00E22D 03:E21D: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E230 03:E220: 4C 55 DF  JMP loc_DF55



sub_E223:
C - - - - - 0x00E233 03:E223: A0 02     LDY #$02
C - - - - - 0x00E235 03:E225: 20 2E E2  JSR sub_E22E
C - - - - - 0x00E238 03:E228: A0 08     LDY #$08
C - - - - - 0x00E23A 03:E22A: 20 2E E2  JSR sub_E22E
C - - - - - 0x00E23D 03:E22D: 60        RTS



sub_E22E:
C - - - - - 0x00E23E 03:E22E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E240 03:E230: AA        TAX
C - - - - - 0x00E241 03:E231: C8        INY
C - - - - - 0x00E242 03:E232: C8        INY
C - - - - - 0x00E243 03:E233: 84 2A     STY ram_002A
C - - - - - 0x00E245 03:E235: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E247 03:E237: A8        TAY
C - - - - - 0x00E248 03:E238: 08        PHP
C - - - - - 0x00E249 03:E239: 10 03     BPL bra_E23E
C - - - - - 0x00E24B 03:E23B: 20 1E C9  JSR sub_C91E
bra_E23E:
C - - - - - 0x00E24E 03:E23E: 98        TYA
C - - - - - 0x00E24F 03:E23F: 4A        LSR
C - - - - - 0x00E250 03:E240: A8        TAY
C - - - - - 0x00E251 03:E241: 8A        TXA
C - - - - - 0x00E252 03:E242: 6A        ROR
C - - - - - 0x00E253 03:E243: AA        TAX
C - - - - - 0x00E254 03:E244: 28        PLP
C - - - - - 0x00E255 03:E245: 10 03     BPL bra_E24A
C - - - - - 0x00E257 03:E247: 20 1E C9  JSR sub_C91E
bra_E24A:
C - - - - - 0x00E25A 03:E24A: 98        TYA
C - - - - - 0x00E25B 03:E24B: A4 2A     LDY ram_002A
C - - - - - 0x00E25D 03:E24D: 91 61     STA (ram_0061),Y
C - - - - - 0x00E25F 03:E24F: 88        DEY
C - - - - - 0x00E260 03:E250: 88        DEY
C - - - - - 0x00E261 03:E251: 8A        TXA
C - - - - - 0x00E262 03:E252: 91 61     STA (ram_0061),Y
C - - - - - 0x00E264 03:E254: 60        RTS



sub_E255:
C - - - - - 0x00E265 03:E255: A0 0C     LDY #$0C
C - - - - - 0x00E267 03:E257: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E269 03:E259: 10 03     BPL bra_E25E
C - - - - - 0x00E26B 03:E25B: 4C 4D E3  JMP loc_E34D_RTS
bra_E25E:
C - - - - - 0x00E26E 03:E25E: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00E271 03:E261: 30 29     BMI bra_E28C
C - - - - - 0x00E273 03:E263: D0 03     BNE bra_E268
C - - - - - 0x00E275 03:E265: 4C 42 E3  JMP loc_E342
bra_E268:
C - - - - - 0x00E278 03:E268: C9 0B     CMP #$0B
C - - - - - 0x00E27A 03:E26A: D0 03     BNE bra_E26F
C - - - - - 0x00E27C 03:E26C: 4C 42 E3  JMP loc_E342
bra_E26F:
C - - - - - 0x00E27F 03:E26F: A2 0C     LDX #$0C
C - - - - - 0x00E281 03:E271: 20 43 FA  JSR sub_FA43
C - - - - - 0x00E284 03:E274: 90 16     BCC bra_E28C
C - - - - - 0x00E286 03:E276: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00E289 03:E279: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E28C 03:E27C: A0 00     LDY #$00
C - - - - - 0x00E28E 03:E27E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E290 03:E280: 29 FB     AND #$FB
C - - - - - 0x00E292 03:E282: 91 61     STA (ram_0061),Y
C - - - - - 0x00E294 03:E284: A9 06     LDA #$06
C - - - - - 0x00E296 03:E286: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E299 03:E289: 4C 42 E3  JMP loc_E342
bra_E28C:
C - - - - - 0x00E29C 03:E28C: A0 13     LDY #$13
C - - - - - 0x00E29E 03:E28E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E2A0 03:E290: 18        CLC
C - - - - - 0x00E2A1 03:E291: 69 10     ADC #$10
C - - - - - 0x00E2A3 03:E293: 29 E0     AND #$E0
C - - - - - 0x00E2A5 03:E295: 4A        LSR
C - - - - - 0x00E2A6 03:E296: 4A        LSR
C - - - - - 0x00E2A7 03:E297: 4A        LSR
C - - - - - 0x00E2A8 03:E298: AA        TAX
C - - - - - 0x00E2A9 03:E299: A0 05     LDY #$05
C - - - - - 0x00E2AB 03:E29B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E2AD 03:E29D: 85 2A     STA ram_002A
C - - - - - 0x00E2AF 03:E29F: 7D 4E E3  ADC tbl_E34E,X
C - - - - - 0x00E2B2 03:E2A2: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2B4 03:E2A4: C8        INY
C - - - - - 0x00E2B5 03:E2A5: C8        INY
C - - - - - 0x00E2B6 03:E2A6: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E2B8 03:E2A8: 85 2B     STA ram_002B
C - - - - - 0x00E2BA 03:E2AA: 7D 4F E3  ADC tbl_E34F,X
C - - - - - 0x00E2BD 03:E2AD: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2BF 03:E2AF: A0 0B     LDY #$0B
C - - - - - 0x00E2C1 03:E2B1: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E2C3 03:E2B3: 85 2C     STA ram_002C
C - - - - - 0x00E2C5 03:E2B5: 7D 50 E3  ADC tbl_E350,X
C - - - - - 0x00E2C8 03:E2B8: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2CA 03:E2BA: C8        INY
C - - - - - 0x00E2CB 03:E2BB: C8        INY
C - - - - - 0x00E2CC 03:E2BC: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E2CE 03:E2BE: 85 2D     STA ram_002D
C - - - - - 0x00E2D0 03:E2C0: 7D 51 E3  ADC tbl_E351,X
C - - - - - 0x00E2D3 03:E2C3: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2D5 03:E2C5: A9 16     LDA #$16
C - - - - - 0x00E2D7 03:E2C7: A2 08     LDX #$08
C - - - - - 0x00E2D9 03:E2C9: 20 43 FA  JSR sub_FA43
C - - - - - 0x00E2DC 03:E2CC: A5 2A     LDA ram_002A
C - - - - - 0x00E2DE 03:E2CE: A0 05     LDY #$05
C - - - - - 0x00E2E0 03:E2D0: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2E2 03:E2D2: C8        INY
C - - - - - 0x00E2E3 03:E2D3: C8        INY
C - - - - - 0x00E2E4 03:E2D4: A5 2B     LDA ram_002B
C - - - - - 0x00E2E6 03:E2D6: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2E8 03:E2D8: A0 0B     LDY #$0B
C - - - - - 0x00E2EA 03:E2DA: A5 2C     LDA ram_002C
C - - - - - 0x00E2EC 03:E2DC: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2EE 03:E2DE: C8        INY
C - - - - - 0x00E2EF 03:E2DF: C8        INY
C - - - - - 0x00E2F0 03:E2E0: A5 2D     LDA ram_002D
C - - - - - 0x00E2F2 03:E2E2: 91 61     STA (ram_0061),Y
C - - - - - 0x00E2F4 03:E2E4: 90 67     BCC bra_E34D_RTS
C - - - - - 0x00E2F6 03:E2E6: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E2F8 03:E2E8: A2 01     LDX #$01
C - - - - - 0x00E2FA 03:E2EA: 20 30 80  JSR sub_0x004040
C - - - - - 0x00E2FD 03:E2ED: A5 77     LDA ram_0077
C - - - - - 0x00E2FF 03:E2EF: 8D 1D 04  STA ram_041D
C - - - - - 0x00E302 03:E2F2: A5 78     LDA ram_0078
C - - - - - 0x00E304 03:E2F4: 8D 1E 04  STA ram_041E
C - - - - - 0x00E307 03:E2F7: A0 13     LDY #$13
C - - - - - 0x00E309 03:E2F9: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E30B 03:E2FB: 8D E6 03  STA ram_03E6
C - - - - - 0x00E30E 03:E2FE: A9 10     LDA #$10
C - - - - - 0x00E310 03:E300: 8D 1B 04  STA ram_041B
C - - - - - 0x00E313 03:E303: A9 00     LDA #$00
C - - - - - 0x00E315 03:E305: 8D 1C 04  STA ram_041C
C - - - - - 0x00E318 03:E308: A2 09     LDX #$09
C - - - - - 0x00E31A 03:E30A: A9 5A     LDA #$5A
C - - - - - 0x00E31C 03:E30C: 95 01     STA ram_0001,X
C - - - - - 0x00E31E 03:E30E: A9 0C     LDA #$0C
C - - - - - 0x00E320 03:E310: 95 02     STA ram_0002,X
C - - - - - 0x00E322 03:E312: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00E324 03:E314: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00E326 03:E316: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00E329 03:E319: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00E32C 03:E31C: 30 24     BMI bra_E342
C - - - - - 0x00E32E 03:E31E: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E331 03:E321: A0 00     LDY #$00
C - - - - - 0x00E333 03:E323: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E335 03:E325: 29 FB     AND #$FB
C - - - - - 0x00E337 03:E327: 91 61     STA (ram_0061),Y
C - - - - - 0x00E339 03:E329: A9 05     LDA #$05
C - - - - - 0x00E33B 03:E32B: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E33E 03:E32E: A0 00     LDY #$00
C - - - - - 0x00E340 03:E330: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E342 03:E332: 09 04     ORA #$04
C - - - - - 0x00E344 03:E334: 29 F7     AND #$F7
C - - - - - 0x00E346 03:E336: 91 61     STA (ram_0061),Y
C - - - - - 0x00E348 03:E338: A9 80     LDA #$80
C - - - - - 0x00E34A 03:E33A: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00E34D 03:E33D: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E34F 03:E33F: 20 2B C9  JSR sub_C92B
bra_E342:
loc_E342:
C D 3 - - - 0x00E352 03:E342: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E354 03:E344: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E357 03:E347: A0 0C     LDY #$0C
C - - - - - 0x00E359 03:E349: A9 80     LDA #$80
C - - - - - 0x00E35B 03:E34B: 91 61     STA (ram_0061),Y
bra_E34D_RTS:
loc_E34D_RTS:
C D 3 - - - 0x00E35D 03:E34D: 60        RTS



tbl_E34E:
- D 3 - - - 0x00E35E 03:E34E: 00        .byte $00   ; 
tbl_E34F:
- D 3 - - - 0x00E35F 03:E34F: 00        .byte $00   ; 
tbl_E350:
- D 3 - - - 0x00E360 03:E350: 1A        .byte $1A   ; 
tbl_E351:
- D 3 - - - 0x00E361 03:E351: 00        .byte $00   ; 
- D 3 - - - 0x00E362 03:E352: 14        .byte $14   ; 
- D 3 - - - 0x00E363 03:E353: 00        .byte $00   ; 
- D 3 - - - 0x00E364 03:E354: 14        .byte $14   ; 
- D 3 - - - 0x00E365 03:E355: 00        .byte $00   ; 
- D 3 - - - 0x00E366 03:E356: 1A        .byte $1A   ; 
- D 3 - - - 0x00E367 03:E357: 00        .byte $00   ; 
- D 3 - - - 0x00E368 03:E358: 00        .byte $00   ; 
- D 3 - - - 0x00E369 03:E359: 00        .byte $00   ; 
- D 3 - - - 0x00E36A 03:E35A: 14        .byte $14   ; 
- D 3 - - - 0x00E36B 03:E35B: 00        .byte $00   ; 
- D 3 - - - 0x00E36C 03:E35C: EC        .byte $EC   ; 
- D 3 - - - 0x00E36D 03:E35D: FF        .byte $FF   ; 
- D 3 - - - 0x00E36E 03:E35E: 00        .byte $00   ; 
- D 3 - - - 0x00E36F 03:E35F: 00        .byte $00   ; 
- D 3 - - - 0x00E370 03:E360: E6        .byte $E6   ; 
- D 3 - - - 0x00E371 03:E361: FF        .byte $FF   ; 
- D 3 - - - 0x00E372 03:E362: EC        .byte $EC   ; 
- D 3 - - - 0x00E373 03:E363: FF        .byte $FF   ; 
- D 3 - - - 0x00E374 03:E364: EC        .byte $EC   ; 
- D 3 - - - 0x00E375 03:E365: FF        .byte $FF   ; 
- D 3 - - - 0x00E376 03:E366: E6        .byte $E6   ; 
- D 3 - - - 0x00E377 03:E367: FF        .byte $FF   ; 
- D 3 - - - 0x00E378 03:E368: 00        .byte $00   ; 
- D 3 - - - 0x00E379 03:E369: 00        .byte $00   ; 
- D 3 - - - 0x00E37A 03:E36A: EC        .byte $EC   ; 
- D 3 - - - 0x00E37B 03:E36B: FF        .byte $FF   ; 
- D 3 - - - 0x00E37C 03:E36C: 14        .byte $14   ; 
- D 3 - - - 0x00E37D 03:E36D: 00        .byte $00   ; 



loc_E36E:
C D 3 - - - 0x00E37E 03:E36E: A9 00     LDA #$00
C - - - - - 0x00E380 03:E370: 85 09     STA ram_0009
C - - - - - 0x00E382 03:E372: 85 0A     STA ram_000A
C - - - - - 0x00E384 03:E374: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E386 03:E376: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00E389 03:E379: 20 E1 E3  JSR sub_E3E1
C - - - - - 0x00E38C 03:E37C: A9 05     LDA #con_sfx_receive
C - - - - - 0x00E38E 03:E37E: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00E391 03:E381: A0 00     LDY #$00
C - - - - - 0x00E393 03:E383: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E395 03:E385: 09 04     ORA #$04
C - - - - - 0x00E397 03:E387: 29 F7     AND #$F7
C - - - - - 0x00E399 03:E389: 91 61     STA (ram_0061),Y
C - - - - - 0x00E39B 03:E38B: 20 40 C9  JSR sub_C940
C - - - - - 0x00E39E 03:E38E: AD E6 03  LDA ram_03E6
C - - - - - 0x00E3A1 03:E391: 18        CLC
C - - - - - 0x00E3A2 03:E392: 69 80     ADC #$80
C - - - - - 0x00E3A4 03:E394: A0 13     LDY #$13
C - - - - - 0x00E3A6 03:E396: 91 61     STA (ram_0061),Y
C - - - - - 0x00E3A8 03:E398: 38        SEC
C - - - - - 0x00E3A9 03:E399: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00E3AC 03:E39C: E9 0C     SBC #$0C
C - - - - - 0x00E3AE 03:E39E: AD 26 04  LDA ram_0426
C - - - - - 0x00E3B1 03:E3A1: E9 00     SBC #$00
C - - - - - 0x00E3B3 03:E3A3: 90 22     BCC bra_E3C7
C - - - - - 0x00E3B5 03:E3A5: 2C 23 04  BIT ram_0423
C - - - - - 0x00E3B8 03:E3A8: 10 1D     BPL bra_E3C7
C - - - - - 0x00E3BA 03:E3AA: 20 77 C6  JSR sub_C677
C - - - - - 0x00E3BD 03:E3AD: A9 07     LDA #con_anim_07
C - - - - - 0x00E3BF 03:E3AF: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E3C2 03:E3B2: A9 01     LDA #$01
C - - - - - 0x00E3C4 03:E3B4: 20 9E C7  JSR sub_C79E
bra_E3B7:
C - - - - - 0x00E3C7 03:E3B7: A9 01     LDA #$01
C - - - - - 0x00E3C9 03:E3B9: 20 52 C6  JSR sub_C652
C - - - - - 0x00E3CC 03:E3BC: 20 17 DD  JSR sub_DD17
C - - - - - 0x00E3CF 03:E3BF: 20 ED DC  JSR sub_DCED
C - - - - - 0x00E3D2 03:E3C2: CE 24 04  DEC ram_ball_Z_lo
C - - - - - 0x00E3D5 03:E3C5: D0 F0     BNE bra_E3B7
bra_E3C7:
C - - - - - 0x00E3D7 03:E3C7: A0 00     LDY #$00
C - - - - - 0x00E3D9 03:E3C9: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E3DB 03:E3CB: 29 FB     AND #$FB
C - - - - - 0x00E3DD 03:E3CD: 91 61     STA (ram_0061),Y
C - - - - - 0x00E3DF 03:E3CF: A9 02     LDA #$02
C - - - - - 0x00E3E1 03:E3D1: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E3E4 03:E3D4: A0 00     LDY #$00
C - - - - - 0x00E3E6 03:E3D6: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E3E8 03:E3D8: 09 04     ORA #$04
C - - - - - 0x00E3EA 03:E3DA: 29 F7     AND #$F7
C - - - - - 0x00E3EC 03:E3DC: 91 61     STA (ram_0061),Y
C - - - - - 0x00E3EE 03:E3DE: 4C 55 DF  JMP loc_DF55



sub_E3E1:
C - - - - - 0x00E3F1 03:E3E1: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00E3F4 03:E3E4: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00E3F7 03:E3E7: F0 1C     BEQ bra_E405
C - - - - - 0x00E3F9 03:E3E9: AD 25 00  LDA a: ram_btn_hold + $01
C - - - - - 0x00E3FC 03:E3EC: 2C A4 03  BIT ram_03A4
C - - - - - 0x00E3FF 03:E3EF: 30 14     BMI bra_E405
C - - - - - 0x00E401 03:E3F1: 48        PHA
C - - - - - 0x00E402 03:E3F2: A9 02     LDA #$02
C - - - - - 0x00E404 03:E3F4: 85 67     STA ram_0067
C - - - - - 0x00E406 03:E3F6: A9 03     LDA #$03
C - - - - - 0x00E408 03:E3F8: 85 68     STA ram_0068
C - - - - - 0x00E40A 03:E3FA: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00E40D 03:E3FD: 68        PLA
C - - - - - 0x00E40E 03:E3FE: 20 4B 80  JSR sub_0x00405B
C - - - - - 0x00E411 03:E401: 90 0C     BCC bra_E40F_RTS
C - - - - - 0x00E413 03:E403: B0 0B     BCS bra_E410
bra_E405:
C - - - - - 0x00E415 03:E405: AA        TAX
C - - - - - 0x00E416 03:E406: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00E418 03:E408: F0 05     BEQ bra_E40F_RTS
C - - - - - 0x00E41A 03:E40A: 8A        TXA
C - - - - - 0x00E41B 03:E40B: 29 C0     AND #con_btns_AB
C - - - - - 0x00E41D 03:E40D: D0 01     BNE bra_E410
bra_E40F_RTS:
C - - - - - 0x00E41F 03:E40F: 60        RTS
bra_E410:
C - - - - - 0x00E420 03:E410: 68        PLA
C - - - - - 0x00E421 03:E411: 68        PLA
C - - - - - 0x00E422 03:E412: 20 40 C9  JSR sub_C940
C - - - - - 0x00E425 03:E415: A0 00     LDY #$00
C - - - - - 0x00E427 03:E417: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E429 03:E419: 29 FB     AND #$FB
C - - - - - 0x00E42B 03:E41B: 91 61     STA (ram_0061),Y
C - - - - - 0x00E42D 03:E41D: A2 00     LDX #$00
C - - - - - 0x00E42F 03:E41F: A0 00     LDY #$00
bra_E421:
C - - - - - 0x00E431 03:E421: 38        SEC
C - - - - - 0x00E432 03:E422: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00E435 03:E425: FD 61 E4  SBC tbl_E461,X
C - - - - - 0x00E438 03:E428: AD 26 04  LDA ram_0426
C - - - - - 0x00E43B 03:E42B: FD 62 E4  SBC tbl_E462,X
C - - - - - 0x00E43E 03:E42E: 30 05     BMI bra_E435
C - - - - - 0x00E440 03:E430: E8        INX
C - - - - - 0x00E441 03:E431: E8        INX
C - - - - - 0x00E442 03:E432: C8        INY
C - - - - - 0x00E443 03:E433: D0 EC     BNE bra_E421
bra_E435:
C - - - - - 0x00E445 03:E435: 98        TYA
C - - - - - 0x00E446 03:E436: 20 BD CA  JSR sub_CABD_bytes_after_JSR
- D 3 - I - 0x00E449 03:E439: 3F E4     .word ofs_003_E43F_00
- D 3 - I - 0x00E44B 03:E43B: 47 E4     .word ofs_003_E447_01
- D 3 - I - 0x00E44D 03:E43D: 4F E4     .word ofs_003_E44F_02



ofs_003_E43F_00:
C - - J - - 0x00E44F 03:E43F: A9 07     LDA #$07
C - - - - - 0x00E451 03:E441: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E454 03:E444: 4C 54 E4  JMP loc_E454



ofs_003_E447_01:
C - - J - - 0x00E457 03:E447: A9 08     LDA #$08
C - - - - - 0x00E459 03:E449: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E45C 03:E44C: 4C 54 E4  JMP loc_E454



ofs_003_E44F_02:
C - - J - - 0x00E45F 03:E44F: A9 0A     LDA #$0A
C - - - - - 0x00E461 03:E451: 20 2F C6  JSR sub_C62F



loc_E454:
C D 3 - - - 0x00E464 03:E454: A0 00     LDY #$00
C - - - - - 0x00E466 03:E456: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E468 03:E458: 09 04     ORA #$04
C - - - - - 0x00E46A 03:E45A: 29 F7     AND #$F7
C - - - - - 0x00E46C 03:E45C: 91 61     STA (ram_0061),Y
C - - - - - 0x00E46E 03:E45E: 4C 55 DF  JMP loc_DF55



tbl_E461:
- D 3 - - - 0x00E471 03:E461: 04        .byte $04   ; 
tbl_E462:
- D 3 - - - 0x00E472 03:E462: 00        .byte $00   ; 
- D 3 - - - 0x00E473 03:E463: 08        .byte $08   ; 
- D 3 - - - 0x00E474 03:E464: 00        .byte $00   ; 
- D 3 - - - 0x00E475 03:E465: FF        .byte $FF   ; 
- D 3 - - - 0x00E476 03:E466: 3F        .byte $3F   ; 



sub_E467:
C - - - - - 0x00E477 03:E467: A0 1A     LDY #$1A
C - - - - - 0x00E479 03:E469: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E47B 03:E46B: A0 05     LDY #$05
C - - - - - 0x00E47D 03:E46D: 38        SEC
C - - - - - 0x00E47E 03:E46E: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E480 03:E470: AA        TAX
C - - - - - 0x00E481 03:E471: A0 1B     LDY #$1B
C - - - - - 0x00E483 03:E473: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E485 03:E475: A0 07     LDY #$07
C - - - - - 0x00E487 03:E477: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E489 03:E479: A8        TAY
C - - - - - 0x00E48A 03:E47A: B0 03     BCS bra_E47F
C - - - - - 0x00E48C 03:E47C: 20 1E C9  JSR sub_C91E
bra_E47F:
C - - - - - 0x00E48F 03:E47F: 98        TYA
C - - - - - 0x00E490 03:E480: D0 23     BNE bra_E4A5
C - - - - - 0x00E492 03:E482: E0 06     CPX #$06
C - - - - - 0x00E494 03:E484: B0 1F     BCS bra_E4A5
C - - - - - 0x00E496 03:E486: A0 1C     LDY #$1C
C - - - - - 0x00E498 03:E488: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E49A 03:E48A: A0 0B     LDY #$0B
C - - - - - 0x00E49C 03:E48C: 38        SEC
C - - - - - 0x00E49D 03:E48D: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E49F 03:E48F: AA        TAX
C - - - - - 0x00E4A0 03:E490: A0 1D     LDY #$1D
C - - - - - 0x00E4A2 03:E492: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E4A4 03:E494: A0 0D     LDY #$0D
C - - - - - 0x00E4A6 03:E496: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E4A8 03:E498: A8        TAY
C - - - - - 0x00E4A9 03:E499: B0 03     BCS bra_E49E
C - - - - - 0x00E4AB 03:E49B: 20 1E C9  JSR sub_C91E
bra_E49E:
C - - - - - 0x00E4AE 03:E49E: 98        TYA
C - - - - - 0x00E4AF 03:E49F: D0 04     BNE bra_E4A5
C - - - - - 0x00E4B1 03:E4A1: E0 06     CPX #$06
C - - - - - 0x00E4B3 03:E4A3: 90 02     BCC bra_E4A7
bra_E4A5:
C - - - - - 0x00E4B5 03:E4A5: 18        CLC
C - - - - - 0x00E4B6 03:E4A6: 60        RTS
bra_E4A7:
C - - - - - 0x00E4B7 03:E4A7: 38        SEC
C - - - - - 0x00E4B8 03:E4A8: 60        RTS



sub_E4A9:
C - - - - - 0x00E4B9 03:E4A9: A0 02     LDY #$02
C - - - - - 0x00E4BB 03:E4AB: 20 B0 E4  JSR sub_E4B0
C - - - - - 0x00E4BE 03:E4AE: A0 08     LDY #$08
sub_E4B0:
C - - - - - 0x00E4C0 03:E4B0: 18        CLC
C - - - - - 0x00E4C1 03:E4B1: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E4C3 03:E4B3: C8        INY
C - - - - - 0x00E4C4 03:E4B4: 71 61     ADC (ram_0061),Y
C - - - - - 0x00E4C6 03:E4B6: 91 61     STA (ram_0061),Y
C - - - - - 0x00E4C8 03:E4B8: A2 00     LDX #$00
C - - - - - 0x00E4CA 03:E4BA: C8        INY
C - - - - - 0x00E4CB 03:E4BB: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E4CD 03:E4BD: 10 01     BPL bra_E4C0
C - - - - - 0x00E4CF 03:E4BF: CA        DEX
bra_E4C0:
C - - - - - 0x00E4D0 03:E4C0: C8        INY
C - - - - - 0x00E4D1 03:E4C1: 71 61     ADC (ram_0061),Y
C - - - - - 0x00E4D3 03:E4C3: 91 61     STA (ram_0061),Y
C - - - - - 0x00E4D5 03:E4C5: C8        INY
C - - - - - 0x00E4D6 03:E4C6: C8        INY
C - - - - - 0x00E4D7 03:E4C7: 8A        TXA
C - - - - - 0x00E4D8 03:E4C8: 71 61     ADC (ram_0061),Y
C - - - - - 0x00E4DA 03:E4CA: 10 0A     BPL bra_E4D6
C - - - - - 0x00E4DC 03:E4CC: A9 00     LDA #$00
C - - - - - 0x00E4DE 03:E4CE: 91 61     STA (ram_0061),Y
C - - - - - 0x00E4E0 03:E4D0: 88        DEY
C - - - - - 0x00E4E1 03:E4D1: 88        DEY
C - - - - - 0x00E4E2 03:E4D2: 91 61     STA (ram_0061),Y
C - - - - - 0x00E4E4 03:E4D4: 88        DEY
C - - - - - 0x00E4E5 03:E4D5: 88        DEY
bra_E4D6:
C - - - - - 0x00E4E6 03:E4D6: 91 61     STA (ram_0061),Y
C - - - - - 0x00E4E8 03:E4D8: 60        RTS



ofs_E4D9:
C - - - - - 0x00E4E9 03:E4D9: A9 00     LDA #$00
C - - - - - 0x00E4EB 03:E4DB: 8D 2B 04  STA ram_plr_global_id
loc_E4DE:
C D 3 - - - 0x00E4EE 03:E4DE: A9 01     LDA #$01
C - - - - - 0x00E4F0 03:E4E0: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00E4F3 03:E4E3: AD 2B 04  LDA ram_plr_global_id
C - - - - - 0x00E4F6 03:E4E6: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E4F9 03:E4E9: 20 43 C8  JSR sub_C843
C - - - - - 0x00E4FC 03:E4EC: A0 19     LDY #$19
C - - - - - 0x00E4FE 03:E4EE: 91 61     STA (ram_0061),Y
C - - - - - 0x00E500 03:E4F0: A0 00     LDY #$00
C - - - - - 0x00E502 03:E4F2: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E504 03:E4F4: AA        TAX
C - - - - - 0x00E505 03:E4F5: 29 04     AND #$04
C - - - - - 0x00E507 03:E4F7: D0 0D     BNE bra_E506
C - - - - - 0x00E509 03:E4F9: 8A        TXA
C - - - - - 0x00E50A 03:E4FA: 29 08     AND #$08
C - - - - - 0x00E50C 03:E4FC: F0 08     BEQ bra_E506
C - - - - - 0x00E50E 03:E4FE: 8A        TXA
C - - - - - 0x00E50F 03:E4FF: 29 F7     AND #$F7
C - - - - - 0x00E511 03:E501: 91 61     STA (ram_0061),Y
C - - - - - 0x00E513 03:E503: 20 12 80  JSR sub_0x004022
bra_E506:
C - - - - - 0x00E516 03:E506: A0 00     LDY #$00
C - - - - - 0x00E518 03:E508: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E51A 03:E50A: 29 01     AND #$01
C - - - - - 0x00E51C 03:E50C: F0 09     BEQ bra_E517
C - - - - - 0x00E51E 03:E50E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E520 03:E510: 29 FE     AND #$FE
C - - - - - 0x00E522 03:E512: 91 61     STA (ram_0061),Y
C - - - - - 0x00E524 03:E514: 20 27 E5  JSR sub_E527
bra_E517:
C - - - - - 0x00E527 03:E517: AE 2B 04  LDX ram_plr_global_id
C - - - - - 0x00E52A 03:E51A: E8        INX
C - - - - - 0x00E52B 03:E51B: E0 16     CPX #$16
C - - - - - 0x00E52D 03:E51D: D0 02     BNE bra_E521
C - - - - - 0x00E52F 03:E51F: A2 00     LDX #$00
bra_E521:
C - - - - - 0x00E531 03:E521: 8E 2B 04  STX ram_plr_global_id
C - - - - - 0x00E534 03:E524: 4C DE E4  JMP loc_E4DE
sub_E527:
C - - - - - 0x00E537 03:E527: A0 12     LDY #$12
C - - - - - 0x00E539 03:E529: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E53B 03:E52B: 20 BD CA  JSR sub_CABD_bytes_after_JSR
- D 3 - I - 0x00E53E 03:E52E: 7D E5     .word ofs_004_E57D_00
- D 3 - I - 0x00E540 03:E530: 7D E5     .word ofs_004_E57D_01
- D 3 - I - 0x00E542 03:E532: 76 E5     .word ofs_004_E576_02_RTS
- D 3 - I - 0x00E544 03:E534: 9B E5     .word ofs_004_E59B_03_RTS
- D 3 - I - 0x00E546 03:E536: 7D E5     .word ofs_004_E57D_04
- D 3 - I - 0x00E548 03:E538: 76 E5     .word ofs_004_E576_05_RTS
- - - - - - 0x00E54A 03:E53A: 76 E5     .word ofs_004_E576_06_RTS
- - - - - - 0x00E54C 03:E53C: 76 E5     .word ofs_004_E576_07_RTS
- - - - - - 0x00E54E 03:E53E: 76 E5     .word ofs_004_E576_08_RTS
- - - - - - 0x00E550 03:E540: 76 E5     .word ofs_004_E576_09_RTS
- - - - - - 0x00E552 03:E542: 76 E5     .word ofs_004_E576_0A_RTS
- - - - - - 0x00E554 03:E544: 76 E5     .word ofs_004_E576_0B_RTS
- - - - - - 0x00E556 03:E546: 76 E5     .word ofs_004_E576_0C_RTS
- - - - - - 0x00E558 03:E548: 76 E5     .word ofs_004_E576_0D_RTS
- - - - - - 0x00E55A 03:E54A: 76 E5     .word ofs_004_E576_0E_RTS
- D 3 - I - 0x00E55C 03:E54C: 9C E5     .word ofs_004_E59C_0F
- D 3 - I - 0x00E55E 03:E54E: A2 E5     .word ofs_004_E5A2_10
- D 3 - I - 0x00E560 03:E550: E1 E5     .word ofs_004_E5E1_11
- D 3 - I - 0x00E562 03:E552: 7D E5     .word ofs_004_E57D_12
- D 3 - I - 0x00E564 03:E554: 7D E5     .word ofs_004_E57D_13
- D 3 - I - 0x00E566 03:E556: 9C E5     .word ofs_004_E59C_14
- D 3 - I - 0x00E568 03:E558: 9C E5     .word ofs_004_E59C_15
- D 3 - I - 0x00E56A 03:E55A: 76 E5     .word ofs_004_E576_16_RTS



sub_E55C:
C - - - - - 0x00E56C 03:E55C: A0 1A     LDY #$1A
C - - - - - 0x00E56E 03:E55E: AD D8 03  LDA ram_03D8
C - - - - - 0x00E571 03:E561: 91 61     STA (ram_0061),Y
C - - - - - 0x00E573 03:E563: C8        INY
C - - - - - 0x00E574 03:E564: AD DA 03  LDA ram_03DA
C - - - - - 0x00E577 03:E567: 91 61     STA (ram_0061),Y
C - - - - - 0x00E579 03:E569: C8        INY
C - - - - - 0x00E57A 03:E56A: AD DE 03  LDA ram_03DE
C - - - - - 0x00E57D 03:E56D: 91 61     STA (ram_0061),Y
C - - - - - 0x00E57F 03:E56F: C8        INY
C - - - - - 0x00E580 03:E570: AD E0 03  LDA ram_03E0
C - - - - - 0x00E583 03:E573: 91 61     STA (ram_0061),Y
C - - - - - 0x00E585 03:E575: 60        RTS



ofs_004_E576_02_RTS:
ofs_004_E576_05_RTS:
ofs_004_E576_06_RTS:
ofs_004_E576_07_RTS:
ofs_004_E576_08_RTS:
ofs_004_E576_09_RTS:
ofs_004_E576_0A_RTS:
ofs_004_E576_0B_RTS:
ofs_004_E576_0C_RTS:
ofs_004_E576_0D_RTS:
ofs_004_E576_0E_RTS:
ofs_004_E576_16_RTS:
C - - J - - 0x00E586 03:E576: 60        RTS



sub_E577:
C - - - - - 0x00E587 03:E577: 20 5C E5  JSR sub_E55C
C - - - - - 0x00E58A 03:E57A: 4C E4 E5  JMP loc_E5E4



loc_E57D:
ofs_004_E57D_00:
ofs_004_E57D_01:
ofs_004_E57D_04:
ofs_004_E57D_12:
ofs_004_E57D_13:
C D 3 J - - 0x00E58D 03:E57D: 20 77 E5  JSR sub_E577
sub_E580:
loc_E580:
C D 3 - - - 0x00E590 03:E580: 20 97 E6  JSR sub_E697
C - - - - - 0x00E593 03:E583: 98        TYA
C - - - - - 0x00E594 03:E584: A0 04     LDY #$04
C - - - - - 0x00E596 03:E586: 91 61     STA (ram_0061),Y
C - - - - - 0x00E598 03:E588: 88        DEY
C - - - - - 0x00E599 03:E589: 88        DEY
C - - - - - 0x00E59A 03:E58A: 8A        TXA
C - - - - - 0x00E59B 03:E58B: 91 61     STA (ram_0061),Y
C - - - - - 0x00E59D 03:E58D: 20 8D E6  JSR sub_E68D
C - - - - - 0x00E5A0 03:E590: 98        TYA
C - - - - - 0x00E5A1 03:E591: A0 0A     LDY #$0A
C - - - - - 0x00E5A3 03:E593: 91 61     STA (ram_0061),Y
C - - - - - 0x00E5A5 03:E595: 88        DEY
C - - - - - 0x00E5A6 03:E596: 88        DEY
C - - - - - 0x00E5A7 03:E597: 8A        TXA
C - - - - - 0x00E5A8 03:E598: 91 61     STA (ram_0061),Y
C - - - - - 0x00E5AA 03:E59A: 60        RTS



ofs_004_E59B_03_RTS:
C - - J - - 0x00E5AB 03:E59B: 60        RTS



ofs_004_E59C_0F:
ofs_004_E59C_14:
ofs_004_E59C_15:
C - - J - - 0x00E5AC 03:E59C: 20 E4 E5  JSR sub_E5E4
C - - - - - 0x00E5AF 03:E59F: 4C 80 E5  JMP loc_E580



ofs_004_E5A2_10:
C - - J - - 0x00E5B2 03:E5A2: A0 06     LDY #$06
C - - - - - 0x00E5B4 03:E5A4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E5B6 03:E5A6: A0 05     LDY #$05
C - - - - - 0x00E5B8 03:E5A8: 20 C6 E5  JSR sub_E5C6
C - - - - - 0x00E5BB 03:E5AB: 98        TYA
C - - - - - 0x00E5BC 03:E5AC: A0 1B     LDY #$1B
C - - - - - 0x00E5BE 03:E5AE: 20 DA E5  JSR sub_E5DA
C - - - - - 0x00E5C1 03:E5B1: A0 0C     LDY #$0C
C - - - - - 0x00E5C3 03:E5B3: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E5C5 03:E5B5: A0 0B     LDY #$0B
C - - - - - 0x00E5C7 03:E5B7: 20 C6 E5  JSR sub_E5C6
C - - - - - 0x00E5CA 03:E5BA: 98        TYA
C - - - - - 0x00E5CB 03:E5BB: A0 1D     LDY #$1D
C - - - - - 0x00E5CD 03:E5BD: 20 DA E5  JSR sub_E5DA
C - - - - - 0x00E5D0 03:E5C0: 20 E4 E5  JSR sub_E5E4
C - - - - - 0x00E5D3 03:E5C3: 4C 80 E5  JMP loc_E580



sub_E5C6:
C - - - - - 0x00E5D6 03:E5C6: A2 00     LDX #$00
C - - - - - 0x00E5D8 03:E5C8: 48        PHA
C - - - - - 0x00E5D9 03:E5C9: 68        PLA
C - - - - - 0x00E5DA 03:E5CA: 10 01     BPL bra_E5CD
C - - - - - 0x00E5DC 03:E5CC: CA        DEX
bra_E5CD:
C - - - - - 0x00E5DD 03:E5CD: 18        CLC
C - - - - - 0x00E5DE 03:E5CE: 79 D3 03  ADC ram_03D3,Y
C - - - - - 0x00E5E1 03:E5D1: 48        PHA
C - - - - - 0x00E5E2 03:E5D2: 8A        TXA
C - - - - - 0x00E5E3 03:E5D3: 79 D5 03  ADC ram_03D5,Y
C - - - - - 0x00E5E6 03:E5D6: A8        TAY
C - - - - - 0x00E5E7 03:E5D7: 68        PLA
C - - - - - 0x00E5E8 03:E5D8: AA        TAX
C - - - - - 0x00E5E9 03:E5D9: 60        RTS



sub_E5DA:
C - - - - - 0x00E5EA 03:E5DA: 91 61     STA (ram_0061),Y
C - - - - - 0x00E5EC 03:E5DC: 88        DEY
C - - - - - 0x00E5ED 03:E5DD: 8A        TXA
C - - - - - 0x00E5EE 03:E5DE: 91 61     STA (ram_0061),Y
C - - - - - 0x00E5F0 03:E5E0: 60        RTS



ofs_004_E5E1_11:    ; bzk optimize
C - - J - - 0x00E5F1 03:E5E1: 4C 7D E5  JMP loc_E57D



loc_E5E4:
sub_E5E4:
C D 3 - - - 0x00E5F4 03:E5E4: 20 04 E6  JSR sub_E604
C - - - - - 0x00E5F7 03:E5E7: AC 2B 04  LDY ram_plr_global_id
C - - - - - 0x00E5FA 03:E5EA: F0 17     BEQ bra_E603_RTS
C - - - - - 0x00E5FC 03:E5EC: C0 0B     CPY #$0B
C - - - - - 0x00E5FE 03:E5EE: F0 13     BEQ bra_E603_RTS
C - - - - - 0x00E600 03:E5F0: A9 00     LDA #$00
C - - - - - 0x00E602 03:E5F2: AA        TAX
C - - - - - 0x00E603 03:E5F3: 90 02     BCC bra_E5F7
C - - - - - 0x00E605 03:E5F5: A9 0B     LDA #$0B
bra_E5F7:
C - - - - - 0x00E607 03:E5F7: 4D AD 03  EOR ram_team_w_ball
C - - - - - 0x00E60A 03:E5FA: F0 01     BEQ bra_E5FD
C - - - - - 0x00E60C 03:E5FC: E8        INX
bra_E5FD:
C - - - - - 0x00E60D 03:E5FD: AD 2B 04  LDA ram_plr_global_id
C - - - - - 0x00E610 03:E600: 20 67 E1  JSR sub_E167
bra_E603_RTS:
C - - - - - 0x00E613 03:E603: 60        RTS



sub_E604:
C - - - - - 0x00E614 03:E604: 20 13 E6  JSR sub_E613
C - - - - - 0x00E617 03:E607: A9 01     LDA #$01
C - - - - - 0x00E619 03:E609: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00E61C 03:E60C: AD 2B 04  LDA ram_plr_global_id
C - - - - - 0x00E61F 03:E60F: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E622 03:E612: 60        RTS



sub_E613:
C - - - - - 0x00E623 03:E613: A9 00     LDA #$00
C - - - - - 0x00E625 03:E615: 85 2A     STA ram_002A
C - - - - - 0x00E627 03:E617: A0 1A     LDY #$1A
C - - - - - 0x00E629 03:E619: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E62B 03:E61B: A0 05     LDY #$05
C - - - - - 0x00E62D 03:E61D: 38        SEC
C - - - - - 0x00E62E 03:E61E: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E630 03:E620: AA        TAX
C - - - - - 0x00E631 03:E621: A0 1B     LDY #$1B
C - - - - - 0x00E633 03:E623: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E635 03:E625: A0 07     LDY #$07
C - - - - - 0x00E637 03:E627: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E639 03:E629: A8        TAY
C - - - - - 0x00E63A 03:E62A: B0 03     BCS bra_E62F
C - - - - - 0x00E63C 03:E62C: 20 1E C9  JSR sub_C91E
bra_E62F:
C - - - - - 0x00E63F 03:E62F: 26 2A     ROL ram_002A
C - - - - - 0x00E641 03:E631: 86 53     STX ram_0053
C - - - - - 0x00E643 03:E633: 84 58     STY ram_0058
C - - - - - 0x00E645 03:E635: A9 00     LDA #$00
C - - - - - 0x00E647 03:E637: 85 52     STA ram_0052
C - - - - - 0x00E649 03:E639: A0 1C     LDY #$1C
C - - - - - 0x00E64B 03:E63B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E64D 03:E63D: A0 0B     LDY #$0B
C - - - - - 0x00E64F 03:E63F: 38        SEC
C - - - - - 0x00E650 03:E640: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E652 03:E642: AA        TAX
C - - - - - 0x00E653 03:E643: A0 1D     LDY #$1D
C - - - - - 0x00E655 03:E645: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E657 03:E647: A0 0D     LDY #$0D
C - - - - - 0x00E659 03:E649: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E65B 03:E64B: A8        TAY
C - - - - - 0x00E65C 03:E64C: B0 03     BCS bra_E651
C - - - - - 0x00E65E 03:E64E: 20 1E C9  JSR sub_C91E
bra_E651:
C - - - - - 0x00E661 03:E651: 26 2A     ROL ram_002A
C - - - - - 0x00E663 03:E653: 86 54     STX ram_0054
C - - - - - 0x00E665 03:E655: 84 57     STY ram_0057
C - - - - - 0x00E667 03:E657: 38        SEC
C - - - - - 0x00E668 03:E658: 8A        TXA
C - - - - - 0x00E669 03:E659: E5 53     SBC ram_0053
C - - - - - 0x00E66B 03:E65B: 98        TYA
C - - - - - 0x00E66C 03:E65C: E5 58     SBC ram_0058
C - - - - - 0x00E66E 03:E65E: B0 04     BCS bra_E664
C - - - - - 0x00E670 03:E660: A6 53     LDX ram_0053
C - - - - - 0x00E672 03:E662: A4 58     LDY ram_0058
bra_E664:
C - - - - - 0x00E674 03:E664: 20 A4 CB  JSR sub_CBA4
C - - - - - 0x00E677 03:E667: A2 00     LDX #$00
bra_E669:
C - - - - - 0x00E679 03:E669: BD FA FB  LDA tbl_FBFA,X
C - - - - - 0x00E67C 03:E66C: 38        SEC
C - - - - - 0x00E67D 03:E66D: E5 52     SBC ram_0052
C - - - - - 0x00E67F 03:E66F: BD FB FB  LDA tbl_FBFB,X
C - - - - - 0x00E682 03:E672: E5 53     SBC ram_0053
C - - - - - 0x00E684 03:E674: B0 04     BCS bra_E67A
C - - - - - 0x00E686 03:E676: E8        INX
C - - - - - 0x00E687 03:E677: E8        INX
C - - - - - 0x00E688 03:E678: D0 EF     BNE bra_E669
bra_E67A:
C - - - - - 0x00E68A 03:E67A: 8A        TXA
C - - - - - 0x00E68B 03:E67B: 4A        LSR
C - - - - - 0x00E68C 03:E67C: 46 2A     LSR ram_002A
C - - - - - 0x00E68E 03:E67E: B0 02     BCS bra_E682
C - - - - - 0x00E690 03:E680: 49 7F     EOR #$7F
bra_E682:
C - - - - - 0x00E692 03:E682: 46 2A     LSR ram_002A
C - - - - - 0x00E694 03:E684: B0 02     BCS bra_E688
C - - - - - 0x00E696 03:E686: 49 FF     EOR #$FF
bra_E688:
C - - - - - 0x00E698 03:E688: A0 13     LDY #$13
C - - - - - 0x00E69A 03:E68A: 91 61     STA (ram_0061),Y
C - - - - - 0x00E69C 03:E68C: 60        RTS



sub_E68D:
C - - - - - 0x00E69D 03:E68D: A0 13     LDY #$13
C - - - - - 0x00E69F 03:E68F: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E6A1 03:E691: 20 20 CC  JSR sub_CC20
C - - - - - 0x00E6A4 03:E694: 4C 9E E6  JMP loc_E69E



sub_E697:
C - - - - - 0x00E6A7 03:E697: A0 13     LDY #$13
C - - - - - 0x00E6A9 03:E699: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E6AB 03:E69B: 20 23 CC  JSR sub_CC23
loc_E69E:
C D 3 - - - 0x00E6AE 03:E69E: 98        TYA
C - - - - - 0x00E6AF 03:E69F: 08        PHP
C - - - - - 0x00E6B0 03:E6A0: 10 03     BPL bra_E6A5
C - - - - - 0x00E6B2 03:E6A2: 20 1E C9  JSR sub_C91E
bra_E6A5:
C - - - - - 0x00E6B5 03:E6A5: 86 4A     STX ram_004A
C - - - - - 0x00E6B7 03:E6A7: 84 4B     STY ram_004B
C - - - - - 0x00E6B9 03:E6A9: A0 14     LDY #$14
C - - - - - 0x00E6BB 03:E6AB: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E6BD 03:E6AD: 85 4C     STA ram_004C
C - - - - - 0x00E6BF 03:E6AF: C8        INY
C - - - - - 0x00E6C0 03:E6B0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E6C2 03:E6B2: 85 4D     STA ram_004D
C - - - - - 0x00E6C4 03:E6B4: 20 75 CB  JSR sub_CB75
C - - - - - 0x00E6C7 03:E6B7: A6 4F     LDX ram_004F
C - - - - - 0x00E6C9 03:E6B9: A4 50     LDY ram_0050
C - - - - - 0x00E6CB 03:E6BB: 28        PLP
C - - - - - 0x00E6CC 03:E6BC: 10 03     BPL bra_E6C1_RTS
C - - - - - 0x00E6CE 03:E6BE: 20 1E C9  JSR sub_C91E
bra_E6C1_RTS:
C - - - - - 0x00E6D1 03:E6C1: 60        RTS



tbl_E6C2:
- D 3 - - - 0x00E6D2 03:E6C2: F6 E6     .word ofs_005_E6F6_00 - $01
- D 3 - - - 0x00E6D4 03:E6C4: 6E E8     .word ofs_005_E86E_01 - $01
- D 3 - - - 0x00E6D6 03:E6C6: D8 E8     .word ofs_005_E8D8_02 - $01
- D 3 - - - 0x00E6D8 03:E6C8: AD EA     .word ofs_005_EAAD_03 - $01
- D 3 - - - 0x00E6DA 03:E6CA: 21 EB     .word ofs_005_EB21_04 - $01
- D 3 - - - 0x00E6DC 03:E6CC: 16 F0     .word ofs_005_F016_05 - $01
- D 3 - - - 0x00E6DE 03:E6CE: 67 F0     .word ofs_005_F067_06 - $01
- D 3 - - - 0x00E6E0 03:E6D0: D2 F2     .word ofs_005_F2D2_07 - $01
- D 3 - - - 0x00E6E2 03:E6D2: 19 F3     .word ofs_005_F319_08 - $01
- - - - - - 0x00E6E4 03:E6D4: 7A F3     .word ofs_005_F37A_09 - $01
- D 3 - - - 0x00E6E6 03:E6D6: 7D F3     .word ofs_005_F37D_0A - $01
- - - - - - 0x00E6E8 03:E6D8: D9 F3     .word ofs_005_F3D9_0B - $01
- D 3 - - - 0x00E6EA 03:E6DA: 5A F4     .word ofs_005_F45A_0C - $01
- D 3 - - - 0x00E6EC 03:E6DC: 63 F5     .word ofs_005_F563_0D - $01
- D 3 - - - 0x00E6EE 03:E6DE: 85 F6     .word ofs_005_F685_0E - $01
- D 3 - - - 0x00E6F0 03:E6E0: A8 F0     .word ofs_005_F0A8_0F - $01
- D 3 - - - 0x00E6F2 03:E6E2: D3 F0     .word ofs_005_F0D3_10 - $01
- D 3 - - - 0x00E6F4 03:E6E4: FC F0     .word ofs_005_F0FC_11 - $01
- D 3 - - - 0x00E6F6 03:E6E6: E5 F1     .word ofs_005_F1E5_12 - $01
- D 3 - - - 0x00E6F8 03:E6E8: 14 F2     .word ofs_005_F214_13 - $01
- D 3 - - - 0x00E6FA 03:E6EA: A4 F2     .word ofs_005_F2A4_14 - $01
- D 3 - - - 0x00E6FC 03:E6EC: CF F2     .word ofs_005_F2CF_15 - $01
- D 3 - - - 0x00E6FE 03:E6EE: 63 F5     .word ofs_005_F563_16 - $01
- D 3 - - - 0x00E700 03:E6F0: B9 F7     .word ofs_005_F7B9_17 - $01
- D 3 - - - 0x00E702 03:E6F2: 3E F8     .word ofs_005_F83E_18 - $01
- D 3 - - - 0x00E704 03:E6F4: 85 F9     .word ofs_005_F985_19 - $01



ofs_005_E6F6_00:
C - - - - - 0x00E706 03:E6F6: A0 00     LDY #$00
C - - - - - 0x00E708 03:E6F8: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E70A 03:E6FA: 29 FB     AND #$FB
C - - - - - 0x00E70C 03:E6FC: 91 61     STA (ram_0061),Y
C - - - - - 0x00E70E 03:E6FE: 20 77 C6  JSR sub_C677
bra_E701:
loc_E701:
C D 3 - - - 0x00E711 03:E701: A9 01     LDA #$01
C - - - - - 0x00E713 03:E703: 20 52 C6  JSR sub_C652
C - - - - - 0x00E716 03:E706: A0 00     LDY #$00
C - - - - - 0x00E718 03:E708: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E71A 03:E70A: 29 01     AND #$01
C - - - - - 0x00E71C 03:E70C: D0 13     BNE bra_E721
C - - - - - 0x00E71E 03:E70E: 20 37 C9  JSR sub_C937
C - - - - - 0x00E721 03:E711: A6 6F     LDX ram_plr_local_id
C - - - - - 0x00E723 03:E713: F0 09     BEQ bra_E71E
C - - - - - 0x00E725 03:E715: E0 0B     CPX #$0B
C - - - - - 0x00E727 03:E717: F0 05     BEQ bra_E71E
C - - - - - 0x00E729 03:E719: A9 01     LDA #con_anim_01
C - - - - - 0x00E72B 03:E71B: 20 1E 80  JSR sub_0x00402E_set_animation
bra_E71E:
C - - - - - 0x00E72E 03:E71E: 4C 01 E7  JMP loc_E701
bra_E721:
C - - - - - 0x00E731 03:E721: A6 6F     LDX ram_plr_local_id
C - - - - - 0x00E733 03:E723: F0 04     BEQ bra_E729
C - - - - - 0x00E735 03:E725: E0 0B     CPX #$0B
C - - - - - 0x00E737 03:E727: D0 06     BNE bra_E72F
bra_E729:
C - - - - - 0x00E739 03:E729: 20 1C E8  JSR sub_E81C
C - - - - - 0x00E73C 03:E72C: 4C 01 E7  JMP loc_E701
bra_E72F:
C - - - - - 0x00E73F 03:E72F: A9 00     LDA #$00
C - - - - - 0x00E741 03:E731: A6 6F     LDX ram_plr_local_id
C - - - - - 0x00E743 03:E733: E0 0B     CPX #$0B
C - - - - - 0x00E745 03:E735: 90 02     BCC bra_E739
C - - - - - 0x00E747 03:E737: A9 0B     LDA #$0B
bra_E739:
C - - - - - 0x00E749 03:E739: 4D AD 03  EOR ram_team_w_ball
C - - - - - 0x00E74C 03:E73C: F0 C3     BEQ bra_E701
C - - - - - 0x00E74E 03:E73E: A9 16     LDA #$16
C - - - - - 0x00E750 03:E740: A2 0A     LDX #$0A
C - - - - - 0x00E752 03:E742: 20 43 FA  JSR sub_FA43
C - - - - - 0x00E755 03:E745: 90 BA     BCC bra_E701
C - - - - - 0x00E757 03:E747: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00E75A 03:E74A: 30 65     BMI bra_E7B1
C - - - - - 0x00E75C 03:E74C: AD E6 03  LDA ram_03E6
C - - - - - 0x00E75F 03:E74F: A0 13     LDY #$13
C - - - - - 0x00E761 03:E751: 38        SEC
C - - - - - 0x00E762 03:E752: F1 61     SBC (ram_0061),Y
C - - - - - 0x00E764 03:E754: B0 04     BCS bra_E75A
C - - - - - 0x00E766 03:E756: 49 FF     EOR #$FF
C - - - - - 0x00E768 03:E758: 69 01     ADC #$01
bra_E75A:
C - - - - - 0x00E76A 03:E75A: C9 40     CMP #$40
C - - - - - 0x00E76C 03:E75C: 90 A3     BCC bra_E701
C - - - - - 0x00E76E 03:E75E: 2C 7E 03  BIT ram_random
C - - - - - 0x00E771 03:E761: 10 3C     BPL bra_E79F
C - - - - - 0x00E773 03:E763: A0 00     LDY #$00
C - - - - - 0x00E775 03:E765: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E777 03:E767: 29 FB     AND #$FB
C - - - - - 0x00E779 03:E769: 91 61     STA (ram_0061),Y
C - - - - - 0x00E77B 03:E76B: A9 02     LDA #$02
C - - - - - 0x00E77D 03:E76D: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E780 03:E770: A0 00     LDY #$00
C - - - - - 0x00E782 03:E772: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E784 03:E774: 09 04     ORA #$04
C - - - - - 0x00E786 03:E776: 29 F7     AND #$F7
C - - - - - 0x00E788 03:E778: 91 61     STA (ram_0061),Y
C - - - - - 0x00E78A 03:E77A: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00E78D 03:E77D: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E790 03:E780: A0 00     LDY #$00
C - - - - - 0x00E792 03:E782: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E794 03:E784: 29 FB     AND #$FB
C - - - - - 0x00E796 03:E786: 91 61     STA (ram_0061),Y
C - - - - - 0x00E798 03:E788: A9 05     LDA #$05
C - - - - - 0x00E79A 03:E78A: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E79D 03:E78D: A0 00     LDY #$00
C - - - - - 0x00E79F 03:E78F: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E7A1 03:E791: 09 04     ORA #$04
C - - - - - 0x00E7A3 03:E793: 29 F7     AND #$F7
C - - - - - 0x00E7A5 03:E795: 91 61     STA (ram_0061),Y
C - - - - - 0x00E7A7 03:E797: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E7A9 03:E799: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00E7AC 03:E79C: 4C 55 DF  JMP loc_DF55
bra_E79F:
C - - - - - 0x00E7AF 03:E79F: A9 05     LDA #$05
C - - - - - 0x00E7B1 03:E7A1: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E7B4 03:E7A4: A0 00     LDY #$00
C - - - - - 0x00E7B6 03:E7A6: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E7B8 03:E7A8: 09 04     ORA #$04
C - - - - - 0x00E7BA 03:E7AA: 29 F7     AND #$F7
C - - - - - 0x00E7BC 03:E7AC: 91 61     STA (ram_0061),Y
C - - - - - 0x00E7BE 03:E7AE: 4C 55 DF  JMP loc_DF55
bra_E7B1:
C - - - - - 0x00E7C1 03:E7B1: AD 1E 04  LDA ram_041E
C - - - - - 0x00E7C4 03:E7B4: C9 03     CMP #$03
C - - - - - 0x00E7C6 03:E7B6: B0 05     BCS bra_E7BD
C - - - - - 0x00E7C8 03:E7B8: 2C 7E 03  BIT ram_random
C - - - - - 0x00E7CB 03:E7BB: 10 5C     BPL bra_E819
bra_E7BD:
C - - - - - 0x00E7CD 03:E7BD: 2C 23 04  BIT ram_0423
C - - - - - 0x00E7D0 03:E7C0: 30 57     BMI bra_E819
C - - - - - 0x00E7D2 03:E7C2: AD 7F 03  LDA ram_random + $01
C - - - - - 0x00E7D5 03:E7C5: 8D E6 03  STA ram_03E6
C - - - - - 0x00E7D8 03:E7C8: 6D 7E 03  ADC ram_random
C - - - - - 0x00E7DB 03:E7CB: 29 1F     AND #$1F
C - - - - - 0x00E7DD 03:E7CD: 69 80     ADC #$80
C - - - - - 0x00E7DF 03:E7CF: 8D 1D 04  STA ram_041D
C - - - - - 0x00E7E2 03:E7D2: A9 30     LDA #$30
C - - - - - 0x00E7E4 03:E7D4: 8D 1B 04  STA ram_041B
C - - - - - 0x00E7E7 03:E7D7: A9 00     LDA #$00
C - - - - - 0x00E7E9 03:E7D9: 8D 1E 04  STA ram_041E
C - - - - - 0x00E7EC 03:E7DC: 8D 1C 04  STA ram_041C
C - - - - - 0x00E7EF 03:E7DF: A9 80     LDA #$80
C - - - - - 0x00E7F1 03:E7E1: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00E7F4 03:E7E4: A2 09     LDX #$09
C - - - - - 0x00E7F6 03:E7E6: A9 5A     LDA #$5A
C - - - - - 0x00E7F8 03:E7E8: 95 01     STA ram_0001,X
C - - - - - 0x00E7FA 03:E7EA: A9 0C     LDA #$0C
C - - - - - 0x00E7FC 03:E7EC: 95 02     STA ram_0002,X
C - - - - - 0x00E7FE 03:E7EE: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00E800 03:E7F0: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00E802 03:E7F2: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00E805 03:E7F5: A9 04     LDA #$04
C - - - - - 0x00E807 03:E7F7: 20 52 C6  JSR sub_C652
C - - - - - 0x00E80A 03:E7FA: A9 05     LDA #$05
C - - - - - 0x00E80C 03:E7FC: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E80F 03:E7FF: A0 00     LDY #$00
C - - - - - 0x00E811 03:E801: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E813 03:E803: 09 04     ORA #$04
C - - - - - 0x00E815 03:E805: 29 F7     AND #$F7
C - - - - - 0x00E817 03:E807: 91 61     STA (ram_0061),Y
C - - - - - 0x00E819 03:E809: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00E81C 03:E80C: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E81E 03:E80E: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00E821 03:E811: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E823 03:E813: 20 2B C9  JSR sub_C92B
C - - - - - 0x00E826 03:E816: 4C 55 DF  JMP loc_DF55
bra_E819:
C - - - - - 0x00E829 03:E819: 4C 6E E3  JMP loc_E36E



sub_E81C:
C - - - - - 0x00E82C 03:E81C: 38        SEC
C - - - - - 0x00E82D 03:E81D: A0 05     LDY #$05
C - - - - - 0x00E82F 03:E81F: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E831 03:E821: E9 00     SBC #$00
C - - - - - 0x00E833 03:E823: AA        TAX
C - - - - - 0x00E834 03:E824: C8        INY
C - - - - - 0x00E835 03:E825: C8        INY
C - - - - - 0x00E836 03:E826: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E838 03:E828: E9 01     SBC #$01
C - - - - - 0x00E83A 03:E82A: A8        TAY
C - - - - - 0x00E83B 03:E82B: 08        PHP
C - - - - - 0x00E83C 03:E82C: B0 03     BCS bra_E831
C - - - - - 0x00E83E 03:E82E: 20 1E C9  JSR sub_C91E
bra_E831:
C - - - - - 0x00E841 03:E831: 98        TYA
C - - - - - 0x00E842 03:E832: D0 04     BNE bra_E838
C - - - - - 0x00E844 03:E834: E0 08     CPX #$08
C - - - - - 0x00E846 03:E836: 90 2C     BCC bra_E864
bra_E838:
C - - - - - 0x00E848 03:E838: A0 14     LDY #$14
C - - - - - 0x00E84A 03:E83A: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E84C 03:E83C: AA        TAX
C - - - - - 0x00E84D 03:E83D: C8        INY
C - - - - - 0x00E84E 03:E83E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E850 03:E840: A8        TAY
C - - - - - 0x00E851 03:E841: A9 40     LDA #$40
C - - - - - 0x00E853 03:E843: 28        PLP
C - - - - - 0x00E854 03:E844: 90 05     BCC bra_E84B
C - - - - - 0x00E856 03:E846: 20 1E C9  JSR sub_C91E
C - - - - - 0x00E859 03:E849: A9 C0     LDA #$C0
bra_E84B:
C - - - - - 0x00E85B 03:E84B: 48        PHA
C - - - - - 0x00E85C 03:E84C: 98        TYA
C - - - - - 0x00E85D 03:E84D: A0 04     LDY #$04
C - - - - - 0x00E85F 03:E84F: 91 61     STA (ram_0061),Y
C - - - - - 0x00E861 03:E851: 88        DEY
C - - - - - 0x00E862 03:E852: 88        DEY
C - - - - - 0x00E863 03:E853: 8A        TXA
C - - - - - 0x00E864 03:E854: 91 61     STA (ram_0061),Y
C - - - - - 0x00E866 03:E856: 68        PLA
C - - - - - 0x00E867 03:E857: A0 13     LDY #$13
C - - - - - 0x00E869 03:E859: 91 61     STA (ram_0061),Y
C - - - - - 0x00E86B 03:E85B: A0 02     LDY #$02
C - - - - - 0x00E86D 03:E85D: 20 B0 E4  JSR sub_E4B0
C - - - - - 0x00E870 03:E860: 20 7E C6  JSR sub_C67E
C - - - - - 0x00E873 03:E863: 60        RTS
bra_E864:
C - - - - - 0x00E874 03:E864: 28        PLP
C - - - - - 0x00E875 03:E865: 20 77 C6  JSR sub_C677
C - - - - - 0x00E878 03:E868: A9 02     LDA #con_anim_02
C - - - - - 0x00E87A 03:E86A: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E87D 03:E86D: 60        RTS



ofs_005_E86E_01:
C - - - - - 0x00E87E 03:E86E: A0 00     LDY #$00
C - - - - - 0x00E880 03:E870: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E882 03:E872: 09 04     ORA #$04
C - - - - - 0x00E884 03:E874: 29 F7     AND #$F7
C - - - - - 0x00E886 03:E876: 91 61     STA (ram_0061),Y
bra_E878:
C - - - - - 0x00E888 03:E878: A9 01     LDA #$01
C - - - - - 0x00E88A 03:E87A: 20 52 C6  JSR sub_C652
C - - - - - 0x00E88D 03:E87D: 20 37 C9  JSR sub_C937
C - - - - - 0x00E890 03:E880: 20 7E C6  JSR sub_C67E
C - - - - - 0x00E893 03:E883: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00E896 03:E886: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00E899 03:E889: 30 10     BMI bra_E89B
C - - - - - 0x00E89B 03:E88B: A0 00     LDY #$00
C - - - - - 0x00E89D 03:E88D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E89F 03:E88F: 29 FB     AND #$FB
C - - - - - 0x00E8A1 03:E891: 91 61     STA (ram_0061),Y
C - - - - - 0x00E8A3 03:E893: A9 00     LDA #$00
C - - - - - 0x00E8A5 03:E895: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E8A8 03:E898: 4C 55 DF  JMP loc_DF55
bra_E89B:
C - - - - - 0x00E8AB 03:E89B: A9 16     LDA #$16
C - - - - - 0x00E8AD 03:E89D: A2 0C     LDX #$0C
C - - - - - 0x00E8AF 03:E89F: 20 43 FA  JSR sub_FA43
C - - - - - 0x00E8B2 03:E8A2: 90 D4     BCC bra_E878
C - - - - - 0x00E8B4 03:E8A4: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00E8B7 03:E8A7: 30 10     BMI bra_E8B9
- - - - - - 0x00E8B9 03:E8A9: 20 E3 CB  JSR sub_CBE3
- - - - - - 0x00E8BC 03:E8AC: A0 00     LDY #$00
- - - - - - 0x00E8BE 03:E8AE: B1 61     LDA (ram_0061),Y
- - - - - - 0x00E8C0 03:E8B0: 29 FB     AND #$FB
- - - - - - 0x00E8C2 03:E8B2: 91 61     STA (ram_0061),Y
- - - - - - 0x00E8C4 03:E8B4: A9 00     LDA #$00
- - - - - - 0x00E8C6 03:E8B6: 20 2F C6  JSR sub_C62F
bra_E8B9:
C - - - - - 0x00E8C9 03:E8B9: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E8CB 03:E8BB: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00E8CE 03:E8BE: A0 00     LDY #$00
C - - - - - 0x00E8D0 03:E8C0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E8D2 03:E8C2: 29 FB     AND #$FB
C - - - - - 0x00E8D4 03:E8C4: 91 61     STA (ram_0061),Y
C - - - - - 0x00E8D6 03:E8C6: A9 02     LDA #$02
C - - - - - 0x00E8D8 03:E8C8: 20 2F C6  JSR sub_C62F
C - - - - - 0x00E8DB 03:E8CB: A0 00     LDY #$00
C - - - - - 0x00E8DD 03:E8CD: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E8DF 03:E8CF: 09 04     ORA #$04
C - - - - - 0x00E8E1 03:E8D1: 29 F7     AND #$F7
C - - - - - 0x00E8E3 03:E8D3: 91 61     STA (ram_0061),Y
C - - - - - 0x00E8E5 03:E8D5: 4C 55 DF  JMP loc_DF55



ofs_005_E8D8_02:
C - - - - - 0x00E8E8 03:E8D8: A0 00     LDY #$00
C - - - - - 0x00E8EA 03:E8DA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E8EC 03:E8DC: 09 04     ORA #$04
C - - - - - 0x00E8EE 03:E8DE: 29 F7     AND #$F7
C - - - - - 0x00E8F0 03:E8E0: 91 61     STA (ram_0061),Y
C - - - - - 0x00E8F2 03:E8E2: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E8F4 03:E8E4: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00E8F7 03:E8E7: 20 40 C9  JSR sub_C940
C - - - - - 0x00E8FA 03:E8EA: A0 13     LDY #$13
C - - - - - 0x00E8FC 03:E8EC: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E8FE 03:E8EE: 29 E0     AND #$E0
C - - - - - 0x00E900 03:E8F0: 09 01     ORA #$01
C - - - - - 0x00E902 03:E8F2: 91 61     STA (ram_0061),Y
C - - - - - 0x00E904 03:E8F4: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E906 03:E8F6: 20 2B C9  JSR sub_C92B
C - - - - - 0x00E909 03:E8F9: A2 09     LDX #$09
C - - - - - 0x00E90B 03:E8FB: A9 5A     LDA #$5A
C - - - - - 0x00E90D 03:E8FD: 95 01     STA ram_0001,X
C - - - - - 0x00E90F 03:E8FF: A9 0C     LDA #$0C
C - - - - - 0x00E911 03:E901: 95 02     STA ram_0002,X
C - - - - - 0x00E913 03:E903: A9 D7     LDA #> (ofs_D79D - $01)
C - - - - - 0x00E915 03:E905: A0 9C     LDY #< (ofs_D79D - $01)
C - - - - - 0x00E917 03:E907: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00E91A 03:E90A: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00E91C 03:E90C: A2 02     LDX #$02
C - - - - - 0x00E91E 03:E90E: 20 67 E1  JSR sub_E167
C - - - - - 0x00E921 03:E911: A9 00     LDA #$00
C - - - - - 0x00E923 03:E913: 85 82     STA ram_0082
bra_E915:
C - - - - - 0x00E925 03:E915: A9 01     LDA #$01
C - - - - - 0x00E927 03:E917: 20 52 C6  JSR sub_C652
C - - - - - 0x00E92A 03:E91A: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00E92D 03:E91D: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00E930 03:E920: F0 12     BEQ bra_E934
C - - - - - 0x00E932 03:E922: AD 25 00  LDA a: ram_btn_hold + $01
C - - - - - 0x00E935 03:E925: 2C A4 03  BIT ram_03A4
C - - - - - 0x00E938 03:E928: 30 0A     BMI bra_E934
C - - - - - 0x00E93A 03:E92A: 20 36 80  JSR sub_0x004046
C - - - - - 0x00E93D 03:E92D: 24 86     BIT ram_0086
C - - - - - 0x00E93F 03:E92F: 10 03     BPL bra_E934
C - - - - - 0x00E941 03:E931: 4C 25 EA  JMP loc_EA25
bra_E934:
C - - - - - 0x00E944 03:E934: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00E946 03:E936: F0 11     BEQ bra_E949
C - - - - - 0x00E948 03:E938: 20 70 E0  JSR sub_E070
C - - - - - 0x00E94B 03:E93B: AD D3 03  LDA ram_03D3
C - - - - - 0x00E94E 03:E93E: 09 40     ORA #$40
C - - - - - 0x00E950 03:E940: 8D D3 03  STA ram_03D3
C - - - - - 0x00E953 03:E943: 20 7E C6  JSR sub_C67E
C - - - - - 0x00E956 03:E946: 4C 5E E9  JMP loc_E95E
bra_E949:
C - - - - - 0x00E959 03:E949: AD D3 03  LDA ram_03D3
C - - - - - 0x00E95C 03:E94C: 29 BF     AND #$BF
C - - - - - 0x00E95E 03:E94E: 8D D3 03  STA ram_03D3
C - - - - - 0x00E961 03:E951: A9 00     LDA #$00
C - - - - - 0x00E963 03:E953: 20 9E C7  JSR sub_C79E
C - - - - - 0x00E966 03:E956: 20 77 C6  JSR sub_C677
C - - - - - 0x00E969 03:E959: A9 06     LDA #con_anim_06
C - - - - - 0x00E96B 03:E95B: 20 1E 80  JSR sub_0x00402E_set_animation
loc_E95E:
C D 3 - - - 0x00E96E 03:E95E: A0 13     LDY #$13
C - - - - - 0x00E970 03:E960: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E972 03:E962: 8D E6 03  STA ram_03E6
C - - - - - 0x00E975 03:E965: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00E978 03:E968: D0 08     BNE bra_E972
C - - - - - 0x00E97A 03:E96A: A9 C0     LDA #con_btns_AB
C - - - - - 0x00E97C 03:E96C: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00E97F 03:E96F: 4C 7C E9  JMP loc_E97C
bra_E972:
C - - - - - 0x00E982 03:E972: 2C A4 03  BIT ram_03A4
C - - - - - 0x00E985 03:E975: 10 9E     BPL bra_E915
C - - - - - 0x00E987 03:E977: A9 C0     LDA #con_btns_AB
C - - - - - 0x00E989 03:E979: 2D 27 00  AND a: ram_btn_press + $01
loc_E97C:
C D 3 - - - 0x00E98C 03:E97C: F0 97     BEQ bra_E915
C - - - - - 0x00E98E 03:E97E: A2 04     LDX #$04
C - - - - - 0x00E990 03:E980: 29 80     AND #$80
C - - - - - 0x00E992 03:E982: D0 02     BNE bra_E986
C - - - - - 0x00E994 03:E984: A2 00     LDX #$00
bra_E986:
C - - - - - 0x00E996 03:E986: BD B7 E9  LDA tbl_E9B7,X
C - - - - - 0x00E999 03:E989: 8D 1B 04  STA ram_041B
C - - - - - 0x00E99C 03:E98C: BD B8 E9  LDA tbl_E9B8,X
C - - - - - 0x00E99F 03:E98F: 8D 1C 04  STA ram_041C
C - - - - - 0x00E9A2 03:E992: BD B9 E9  LDA tbl_E9B9,X
C - - - - - 0x00E9A5 03:E995: 8D 1D 04  STA ram_041D
C - - - - - 0x00E9A8 03:E998: BD BA E9  LDA tbl_E9BA,X
C - - - - - 0x00E9AB 03:E99B: 8D 1E 04  STA ram_041E
C - - - - - 0x00E9AE 03:E99E: 8A        TXA
C - - - - - 0x00E9AF 03:E99F: D0 10     BNE bra_E9B1
C - - - - - 0x00E9B1 03:E9A1: AD 7E 03  LDA ram_random
C - - - - - 0x00E9B4 03:E9A4: 29 3F     AND #$3F
C - - - - - 0x00E9B6 03:E9A6: 6D 1B 04  ADC ram_041B
C - - - - - 0x00E9B9 03:E9A9: 8D 1B 04  STA ram_041B
C - - - - - 0x00E9BC 03:E9AC: 90 03     BCC bra_E9B1
C - - - - - 0x00E9BE 03:E9AE: EE 1C 04  INC ram_041C
bra_E9B1:
C - - - - - 0x00E9C1 03:E9B1: 20 BA DF  JSR sub_DFBA
C - - - - - 0x00E9C4 03:E9B4: 4C BF E9  JMP loc_E9BF



tbl_E9B7:
- D 3 - - - 0x00E9C7 03:E9B7: E0        .byte $E0   ; 
tbl_E9B8:
- D 3 - - - 0x00E9C8 03:E9B8: 00        .byte $00   ; 
tbl_E9B9:
- D 3 - - - 0x00E9C9 03:E9B9: 00        .byte $00   ; 
tbl_E9BA:
- D 3 - - - 0x00E9CA 03:E9BA: 03        .byte $03   ; 
- D 3 - - - 0x00E9CB 03:E9BB: 80        .byte $80   ; 
- D 3 - - - 0x00E9CC 03:E9BC: 00        .byte $00   ; 
- D 3 - - - 0x00E9CD 03:E9BD: C0        .byte $C0   ; 
- D 3 - - - 0x00E9CE 03:E9BE: 03        .byte $03   ; 



loc_E9BF:
C D 3 - - - 0x00E9CF 03:E9BF: A9 03     LDA #con_sfx_shot
C - - - - - 0x00E9D1 03:E9C1: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00E9D4 03:E9C4: 20 77 C6  JSR sub_C677
C - - - - - 0x00E9D7 03:E9C7: A9 05     LDA #con_anim_05
C - - - - - 0x00E9D9 03:E9C9: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E9DC 03:E9CC: A9 02     LDA #$02
C - - - - - 0x00E9DE 03:E9CE: 20 52 C6  JSR sub_C652
C - - - - - 0x00E9E1 03:E9D1: 20 6D C6  JSR sub_C66D
C - - - - - 0x00E9E4 03:E9D4: A9 05     LDA #con_anim_05
C - - - - - 0x00E9E6 03:E9D6: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00E9E9 03:E9D9: A9 02     LDA #$02
C - - - - - 0x00E9EB 03:E9DB: 20 52 C6  JSR sub_C652
C - - - - - 0x00E9EE 03:E9DE: A0 13     LDY #$13
C - - - - - 0x00E9F0 03:E9E0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00E9F2 03:E9E2: 8D E6 03  STA ram_03E6
C - - - - - 0x00E9F5 03:E9E5: A9 80     LDA #$80
C - - - - - 0x00E9F7 03:E9E7: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00E9FA 03:E9EA: A2 09     LDX #$09
C - - - - - 0x00E9FC 03:E9EC: A9 5A     LDA #$5A
C - - - - - 0x00E9FE 03:E9EE: 95 01     STA ram_0001,X
C - - - - - 0x00EA00 03:E9F0: A9 0C     LDA #$0C
C - - - - - 0x00EA02 03:E9F2: 95 02     STA ram_0002,X
C - - - - - 0x00EA04 03:E9F4: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00EA06 03:E9F6: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00EA08 03:E9F8: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00EA0B 03:E9FB: A9 04     LDA #$04
C - - - - - 0x00EA0D 03:E9FD: 20 52 C6  JSR sub_C652
C - - - - - 0x00EA10 03:EA00: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00EA13 03:EA03: A9 01     LDA #$01
C - - - - - 0x00EA15 03:EA05: 20 52 C6  JSR sub_C652
C - - - - - 0x00EA18 03:EA08: 20 6D C6  JSR sub_C66D
C - - - - - 0x00EA1B 03:EA0B: A9 05     LDA #con_anim_05
C - - - - - 0x00EA1D 03:EA0D: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00EA20 03:EA10: A9 30     LDA #$30
C - - - - - 0x00EA22 03:EA12: 20 52 C6  JSR sub_C652
C - - - - - 0x00EA25 03:EA15: A0 00     LDY #$00
C - - - - - 0x00EA27 03:EA17: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA29 03:EA19: 29 FB     AND #$FB
C - - - - - 0x00EA2B 03:EA1B: 91 61     STA (ram_0061),Y
C - - - - - 0x00EA2D 03:EA1D: A9 00     LDA #$00
C - - - - - 0x00EA2F 03:EA1F: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EA32 03:EA22: 4C 55 DF  JMP loc_DF55



loc_EA25:
C D 3 - - - 0x00EA35 03:EA25: A5 86     LDA ram_0086
C - - - - - 0x00EA37 03:EA27: 4A        LSR
C - - - - - 0x00EA38 03:EA28: 90 12     BCC bra_EA3C
C - - - - - 0x00EA3A 03:EA2A: A5 87     LDA ram_0087
C - - - - - 0x00EA3C 03:EA2C: 20 7D EA  JSR sub_EA7D
C - - - - - 0x00EA3F 03:EA2F: A9 00     LDA #$00
C - - - - - 0x00EA41 03:EA31: 8D 1D 04  STA ram_041D
C - - - - - 0x00EA44 03:EA34: A9 02     LDA #$02
C - - - - - 0x00EA46 03:EA36: 8D 1E 04  STA ram_041E
C - - - - - 0x00EA49 03:EA39: 4C BF E9  JMP loc_E9BF
bra_EA3C:
C - - - - - 0x00EA4C 03:EA3C: AD 7E 03  LDA ram_random
C - - - - - 0x00EA4F 03:EA3F: 29 03     AND #$03
C - - - - - 0x00EA51 03:EA41: AA        TAX
C - - - - - 0x00EA52 03:EA42: BD 79 EA  LDA tbl_EA79,X
C - - - - - 0x00EA55 03:EA45: A0 13     LDY #$13
C - - - - - 0x00EA57 03:EA47: 91 61     STA (ram_0061),Y
C - - - - - 0x00EA59 03:EA49: 18        CLC
C - - - - - 0x00EA5A 03:EA4A: 69 80     ADC #$80
C - - - - - 0x00EA5C 03:EA4C: 20 1D E0  JSR sub_E01D
C - - - - - 0x00EA5F 03:EA4F: A0 1A     LDY #$1A
C - - - - - 0x00EA61 03:EA51: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA63 03:EA53: 8D 19 04  STA ram_ball_pass_pos_X_lo
C - - - - - 0x00EA66 03:EA56: C8        INY
C - - - - - 0x00EA67 03:EA57: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA69 03:EA59: 8D 1A 04  STA ram_ball_pass_pos_X_hi
C - - - - - 0x00EA6C 03:EA5C: A0 1C     LDY #$1C
C - - - - - 0x00EA6E 03:EA5E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA70 03:EA60: 8D 17 04  STA ram_ball_pass_pos_Y_lo
C - - - - - 0x00EA73 03:EA63: C8        INY
C - - - - - 0x00EA74 03:EA64: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA76 03:EA66: 8D 18 04  STA ram_ball_pass_pos_Y_hi
C - - - - - 0x00EA79 03:EA69: 20 6B DD  JSR sub_DD6B
C - - - - - 0x00EA7C 03:EA6C: A9 00     LDA #$00
C - - - - - 0x00EA7E 03:EA6E: 8D 1D 04  STA ram_041D
C - - - - - 0x00EA81 03:EA71: A9 04     LDA #$04
C - - - - - 0x00EA83 03:EA73: 8D 1E 04  STA ram_041E
C - - - - - 0x00EA86 03:EA76: 4C BF E9  JMP loc_E9BF



tbl_EA79:
- D 3 - - - 0x00EA89 03:EA79: E0        .byte $E0   ; 
- D 3 - - - 0x00EA8A 03:EA7A: 00        .byte $00   ; 
- D 3 - - - 0x00EA8B 03:EA7B: 20        .byte $20   ; 
- D 3 - - - 0x00EA8C 03:EA7C: 00        .byte $00   ; 



sub_EA7D:
C - - - - - 0x00EA8D 03:EA7D: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00EA90 03:EA80: A0 05     LDY #$05
C - - - - - 0x00EA92 03:EA82: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA94 03:EA84: 8D 19 04  STA ram_ball_pass_pos_X_lo
C - - - - - 0x00EA97 03:EA87: C8        INY
C - - - - - 0x00EA98 03:EA88: C8        INY
C - - - - - 0x00EA99 03:EA89: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EA9B 03:EA8B: 8D 1A 04  STA ram_ball_pass_pos_X_hi
C - - - - - 0x00EA9E 03:EA8E: A0 0B     LDY #$0B
C - - - - - 0x00EAA0 03:EA90: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EAA2 03:EA92: 8D 17 04  STA ram_ball_pass_pos_Y_lo
C - - - - - 0x00EAA5 03:EA95: C8        INY
C - - - - - 0x00EAA6 03:EA96: C8        INY
C - - - - - 0x00EAA7 03:EA97: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EAA9 03:EA99: 8D 18 04  STA ram_ball_pass_pos_Y_hi
C - - - - - 0x00EAAC 03:EA9C: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00EAAF 03:EA9F: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00EAB2 03:EAA2: 20 6B DD  JSR sub_DD6B
C - - - - - 0x00EAB5 03:EAA5: 8D E6 03  STA ram_03E6
C - - - - - 0x00EAB8 03:EAA8: A0 13     LDY #$13
C - - - - - 0x00EABA 03:EAAA: 91 61     STA (ram_0061),Y
C - - - - - 0x00EABC 03:EAAC: 60        RTS



ofs_005_EAAD_03:
C - - - - - 0x00EABD 03:EAAD: A0 00     LDY #$00
C - - - - - 0x00EABF 03:EAAF: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EAC1 03:EAB1: 09 04     ORA #$04
C - - - - - 0x00EAC3 03:EAB3: 29 F7     AND #$F7
C - - - - - 0x00EAC5 03:EAB5: 91 61     STA (ram_0061),Y
bra_EAB7:
loc_EAB7:
C D 3 - - - 0x00EAC7 03:EAB7: A9 01     LDA #$01
C - - - - - 0x00EAC9 03:EAB9: 20 52 C6  JSR sub_C652
C - - - - - 0x00EACC 03:EABC: A9 00     LDA #$00
C - - - - - 0x00EACE 03:EABE: 85 2A     STA ram_002A
C - - - - - 0x00EAD0 03:EAC0: A0 1D     LDY #$1D
C - - - - - 0x00EAD2 03:EAC2: A2 03     LDX #$03
bra_EAC4:
C - - - - - 0x00EAD4 03:EAC4: BD 13 04  LDA ram_ball_land_pos_X_lo,X
C - - - - - 0x00EAD7 03:EAC7: D1 61     CMP (ram_0061),Y
C - - - - - 0x00EAD9 03:EAC9: 91 61     STA (ram_0061),Y
C - - - - - 0x00EADB 03:EACB: F0 02     BEQ bra_EACF
C - - - - - 0x00EADD 03:EACD: E6 2A     INC ram_002A
bra_EACF:
C - - - - - 0x00EADF 03:EACF: 88        DEY
C - - - - - 0x00EAE0 03:EAD0: CA        DEX
C - - - - - 0x00EAE1 03:EAD1: 10 F1     BPL bra_EAC4
C - - - - - 0x00EAE3 03:EAD3: A5 2A     LDA ram_002A
C - - - - - 0x00EAE5 03:EAD5: F0 09     BEQ bra_EAE0
C - - - - - 0x00EAE7 03:EAD7: 20 13 E6  JSR sub_E613
C - - - - - 0x00EAEA 03:EADA: 20 80 E5  JSR sub_E580
C - - - - - 0x00EAED 03:EADD: 4C B7 EA  JMP loc_EAB7
bra_EAE0:
C - - - - - 0x00EAF0 03:EAE0: 20 67 E4  JSR sub_E467
C - - - - - 0x00EAF3 03:EAE3: B0 09     BCS bra_EAEE
C - - - - - 0x00EAF5 03:EAE5: 20 7E C6  JSR sub_C67E
C - - - - - 0x00EAF8 03:EAE8: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00EAFB 03:EAEB: 4C 00 EB  JMP loc_EB00
bra_EAEE:
C - - - - - 0x00EAFE 03:EAEE: AD E6 03  LDA ram_03E6
C - - - - - 0x00EB01 03:EAF1: 18        CLC
C - - - - - 0x00EB02 03:EAF2: 69 80     ADC #$80
C - - - - - 0x00EB04 03:EAF4: A0 13     LDY #$13
C - - - - - 0x00EB06 03:EAF6: 91 61     STA (ram_0061),Y
C - - - - - 0x00EB08 03:EAF8: 20 77 C6  JSR sub_C677
C - - - - - 0x00EB0B 03:EAFB: A9 01     LDA #con_anim_01
C - - - - - 0x00EB0D 03:EAFD: 20 1E 80  JSR sub_0x00402E_set_animation
loc_EB00:
C D 3 - - - 0x00EB10 03:EB00: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00EB13 03:EB03: 30 10     BMI bra_EB15
C - - - - - 0x00EB15 03:EB05: A0 00     LDY #$00
C - - - - - 0x00EB17 03:EB07: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EB19 03:EB09: 29 FB     AND #$FB
C - - - - - 0x00EB1B 03:EB0B: 91 61     STA (ram_0061),Y
C - - - - - 0x00EB1D 03:EB0D: A9 00     LDA #$00
C - - - - - 0x00EB1F 03:EB0F: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EB22 03:EB12: 4C 55 DF  JMP loc_DF55
bra_EB15:
C - - - - - 0x00EB25 03:EB15: A9 16     LDA #$16
C - - - - - 0x00EB27 03:EB17: A2 0C     LDX #$0C
C - - - - - 0x00EB29 03:EB19: 20 43 FA  JSR sub_FA43
C - - - - - 0x00EB2C 03:EB1C: 90 99     BCC bra_EAB7
C - - - - - 0x00EB2E 03:EB1E: 4C 6E E3  JMP loc_E36E



loc_EB21:
ofs_005_EB21_04:
C D 3 - - - 0x00EB31 03:EB21: A0 00     LDY #$00
C - - - - - 0x00EB33 03:EB23: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EB35 03:EB25: 09 04     ORA #$04
C - - - - - 0x00EB37 03:EB27: 29 F7     AND #$F7
C - - - - - 0x00EB39 03:EB29: 91 61     STA (ram_0061),Y
C - - - - - 0x00EB3B 03:EB2B: 20 40 C9  JSR sub_C940
C - - - - - 0x00EB3E 03:EB2E: A0 13     LDY #$13
C - - - - - 0x00EB40 03:EB30: A9 FF     LDA #$FF
C - - - - - 0x00EB42 03:EB32: 91 61     STA (ram_0061),Y
C - - - - - 0x00EB44 03:EB34: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EB46 03:EB36: D0 03     BNE bra_EB3B
C - - - - - 0x00EB48 03:EB38: 4C 4B EC  JMP loc_EC4B
bra_EB3B:
C - - - - - 0x00EB4B 03:EB3B: C9 0B     CMP #$0B
C - - - - - 0x00EB4D 03:EB3D: D0 03     BNE bra_EB42
C - - - - - 0x00EB4F 03:EB3F: 4C 4B EC  JMP loc_EC4B
bra_EB42:
C - - - - - 0x00EB52 03:EB42: A2 01     LDX #$01
C - - - - - 0x00EB54 03:EB44: 20 67 E1  JSR sub_E167
C - - - - - 0x00EB57 03:EB47: AD A4 03  LDA ram_03A4
C - - - - - 0x00EB5A 03:EB4A: 29 20     AND #$20
C - - - - - 0x00EB5C 03:EB4C: F0 10     BEQ bra_EB5E
loc_EB4E:
C D 3 - - - 0x00EB5E 03:EB4E: A9 01     LDA #$01
C - - - - - 0x00EB60 03:EB50: 20 52 C6  JSR sub_C652
C - - - - - 0x00EB63 03:EB53: 20 77 C6  JSR sub_C677
C - - - - - 0x00EB66 03:EB56: A9 01     LDA #con_anim_01
C - - - - - 0x00EB68 03:EB58: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00EB6B 03:EB5B: 4C 4E EB  JMP loc_EB4E
bra_EB5E:
C - - - - - 0x00EB6E 03:EB5E: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EB70 03:EB60: C9 0B     CMP #$0B
C - - - - - 0x00EB72 03:EB62: 90 15     BCC bra_EB79
C - - - - - 0x00EB74 03:EB64: 2C A4 03  BIT ram_03A4
C - - - - - 0x00EB77 03:EB67: 30 10     BMI bra_EB79
C - - - - - 0x00EB79 03:EB69: A0 00     LDY #$00
C - - - - - 0x00EB7B 03:EB6B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EB7D 03:EB6D: 29 FB     AND #$FB
C - - - - - 0x00EB7F 03:EB6F: 91 61     STA (ram_0061),Y
C - - - - - 0x00EB81 03:EB71: A9 11     LDA #$11
C - - - - - 0x00EB83 03:EB73: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EB86 03:EB76: 4C 55 DF  JMP loc_DF55
bra_EB79:
loc_EB79:
C D 3 - - - 0x00EB89 03:EB79: A9 01     LDA #$01
C - - - - - 0x00EB8B 03:EB7B: 20 52 C6  JSR sub_C652
C - - - - - 0x00EB8E 03:EB7E: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EB90 03:EB80: CD 2A 04  CMP ram_plr_wo_ball
C - - - - - 0x00EB93 03:EB83: F0 10     BEQ bra_EB95
C - - - - - 0x00EB95 03:EB85: A0 00     LDY #$00
C - - - - - 0x00EB97 03:EB87: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EB99 03:EB89: 29 FB     AND #$FB
C - - - - - 0x00EB9B 03:EB8B: 91 61     STA (ram_0061),Y
C - - - - - 0x00EB9D 03:EB8D: A9 00     LDA #$00
C - - - - - 0x00EB9F 03:EB8F: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EBA2 03:EB92: 4C 55 DF  JMP loc_DF55
bra_EB95:
C - - - - - 0x00EBA5 03:EB95: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00EBA8 03:EB98: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00EBAB 03:EB9B: D0 03     BNE bra_EBA0
C - - - - - 0x00EBAD 03:EB9D: AD 25 00  LDA a: ram_btn_hold + $01
bra_EBA0:
C - - - - - 0x00EBB0 03:EBA0: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00EBB2 03:EBA2: F0 0C     BEQ bra_EBB0
C - - - - - 0x00EBB4 03:EBA4: 20 70 E0  JSR sub_E070
C - - - - - 0x00EBB7 03:EBA7: 20 19 EC  JSR sub_EC19
C - - - - - 0x00EBBA 03:EBAA: 20 7E C6  JSR sub_C67E
C - - - - - 0x00EBBD 03:EBAD: 4C B8 EB  JMP loc_EBB8
bra_EBB0:
C - - - - - 0x00EBC0 03:EBB0: 20 77 C6  JSR sub_C677
C - - - - - 0x00EBC3 03:EBB3: A9 01     LDA #con_anim_01
C - - - - - 0x00EBC5 03:EBB5: 20 1E 80  JSR sub_0x00402E_set_animation
loc_EBB8:
C D 3 - - - 0x00EBC8 03:EBB8: A2 08     LDX #$08
C - - - - - 0x00EBCA 03:EBBA: A9 16     LDA #$16
C - - - - - 0x00EBCC 03:EBBC: 20 43 FA  JSR sub_FA43
C - - - - - 0x00EBCF 03:EBBF: 90 3E     BCC bra_EBFF
C - - - - - 0x00EBD1 03:EBC1: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00EBD4 03:EBC4: 30 1A     BMI bra_EBE0
C - - - - - 0x00EBD6 03:EBC6: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00EBD9 03:EBC9: A0 00     LDY #$00
C - - - - - 0x00EBDB 03:EBCB: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EBDD 03:EBCD: 29 FB     AND #$FB
C - - - - - 0x00EBDF 03:EBCF: 91 61     STA (ram_0061),Y
C - - - - - 0x00EBE1 03:EBD1: A9 05     LDA #$05
C - - - - - 0x00EBE3 03:EBD3: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EBE6 03:EBD6: A0 00     LDY #$00
C - - - - - 0x00EBE8 03:EBD8: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EBEA 03:EBDA: 09 04     ORA #$04
C - - - - - 0x00EBEC 03:EBDC: 29 F7     AND #$F7
C - - - - - 0x00EBEE 03:EBDE: 91 61     STA (ram_0061),Y
bra_EBE0:
C - - - - - 0x00EBF0 03:EBE0: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EBF2 03:EBE2: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00EBF5 03:EBE5: A0 00     LDY #$00
C - - - - - 0x00EBF7 03:EBE7: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EBF9 03:EBE9: 29 FB     AND #$FB
C - - - - - 0x00EBFB 03:EBEB: 91 61     STA (ram_0061),Y
C - - - - - 0x00EBFD 03:EBED: A9 02     LDA #$02
C - - - - - 0x00EBFF 03:EBEF: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EC02 03:EBF2: A0 00     LDY #$00
C - - - - - 0x00EC04 03:EBF4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EC06 03:EBF6: 09 04     ORA #$04
C - - - - - 0x00EC08 03:EBF8: 29 F7     AND #$F7
C - - - - - 0x00EC0A 03:EBFA: 91 61     STA (ram_0061),Y
C - - - - - 0x00EC0C 03:EBFC: 4C 55 DF  JMP loc_DF55
bra_EBFF:
C - - - - - 0x00EC0F 03:EBFF: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00EC12 03:EC02: F0 08     BEQ bra_EC0C
C - - - - - 0x00EC14 03:EC04: A9 80     LDA #con_btn_A
C - - - - - 0x00EC16 03:EC06: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00EC19 03:EC09: 4C 11 EC  JMP loc_EC11
bra_EC0C:
C - - - - - 0x00EC1C 03:EC0C: A9 80     LDA #con_btn_A
C - - - - - 0x00EC1E 03:EC0E: 2D 27 00  AND a: ram_btn_press + $01
loc_EC11:
C D 3 - - - 0x00EC21 03:EC11: D0 03     BNE bra_EC16
C - - - - - 0x00EC23 03:EC13: 4C 79 EB  JMP loc_EB79
bra_EC16:
C - - - - - 0x00EC26 03:EC16: 4C 76 E1  JMP loc_E176



sub_EC19:
C - - - - - 0x00EC29 03:EC19: A0 0B     LDY #$0B
C - - - - - 0x00EC2B 03:EC1B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EC2D 03:EC1D: AA        TAX
C - - - - - 0x00EC2E 03:EC1E: C8        INY
C - - - - - 0x00EC2F 03:EC1F: C8        INY
C - - - - - 0x00EC30 03:EC20: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EC32 03:EC22: A8        TAY
C - - - - - 0x00EC33 03:EC23: C9 02     CMP #$02
C - - - - - 0x00EC35 03:EC25: 08        PHP
C - - - - - 0x00EC36 03:EC26: 90 03     BCC bra_EC2B
C - - - - - 0x00EC38 03:EC28: 20 50 CB  JSR sub_CB50
bra_EC2B:
C - - - - - 0x00EC3B 03:EC2B: 38        SEC
C - - - - - 0x00EC3C 03:EC2C: 8A        TXA
C - - - - - 0x00EC3D 03:EC2D: E9 88     SBC #$88
C - - - - - 0x00EC3F 03:EC2F: 98        TYA
C - - - - - 0x00EC40 03:EC30: E9 00     SBC #$00
C - - - - - 0x00EC42 03:EC32: B0 15     BCS bra_EC49
- - - - - - 0x00EC44 03:EC34: A2 88     LDX #$88
- - - - - - 0x00EC46 03:EC36: A0 00     LDY #$00
- - - - - - 0x00EC48 03:EC38: 28        PLP
- - - - - - 0x00EC49 03:EC39: 08        PHP
- - - - - - 0x00EC4A 03:EC3A: 90 03     BCC bra_EC3F
- - - - - - 0x00EC4C 03:EC3C: 20 50 CB  JSR sub_CB50
bra_EC3F:
- - - - - - 0x00EC4F 03:EC3F: 98        TYA
- - - - - - 0x00EC50 03:EC40: A0 0D     LDY #$0D
- - - - - - 0x00EC52 03:EC42: 91 61     STA (ram_0061),Y
- - - - - - 0x00EC54 03:EC44: 88        DEY
- - - - - - 0x00EC55 03:EC45: 88        DEY
- - - - - - 0x00EC56 03:EC46: 8A        TXA
- - - - - - 0x00EC57 03:EC47: 91 61     STA (ram_0061),Y
bra_EC49:
C - - - - - 0x00EC59 03:EC49: 28        PLP
C - - - - - 0x00EC5A 03:EC4A: 60        RTS



loc_EC4B:
C D 3 - - - 0x00EC5B 03:EC4B: A0 0C     LDY #$0C
C - - - - - 0x00EC5D 03:EC4D: A9 00     LDA #$00
C - - - - - 0x00EC5F 03:EC4F: 91 61     STA (ram_0061),Y
C - - - - - 0x00EC61 03:EC51: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EC63 03:EC53: A2 09     LDX #$09
C - - - - - 0x00EC65 03:EC55: 20 67 E1  JSR sub_E167
bra_EC58:
loc_EC58:
C D 3 - - - 0x00EC68 03:EC58: A9 01     LDA #$01
C - - - - - 0x00EC6A 03:EC5A: 20 52 C6  JSR sub_C652
C - - - - - 0x00EC6D 03:EC5D: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EC6F 03:EC5F: CD 2A 04  CMP ram_plr_wo_ball
C - - - - - 0x00EC72 03:EC62: D0 11     BNE bra_EC75
C - - - - - 0x00EC74 03:EC64: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00EC77 03:EC67: 30 21     BMI bra_EC8A
C - - - - - 0x00EC79 03:EC69: A2 00     LDX #$00
C - - - - - 0x00EC7B 03:EC6B: C9 0B     CMP #$0B
C - - - - - 0x00EC7D 03:EC6D: 90 02     BCC bra_EC71
C - - - - - 0x00EC7F 03:EC6F: A2 0B     LDX #$0B
bra_EC71:
C - - - - - 0x00EC81 03:EC71: E4 6F     CPX ram_plr_local_id
C - - - - - 0x00EC83 03:EC73: D0 15     BNE bra_EC8A
bra_EC75:
C - - - - - 0x00EC85 03:EC75: A0 00     LDY #$00
C - - - - - 0x00EC87 03:EC77: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EC89 03:EC79: 29 FB     AND #$FB
C - - - - - 0x00EC8B 03:EC7B: 91 61     STA (ram_0061),Y
C - - - - - 0x00EC8D 03:EC7D: A9 00     LDA #$00
C - - - - - 0x00EC8F 03:EC7F: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EC92 03:EC82: A9 80     LDA #$80
C - - - - - 0x00EC94 03:EC84: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00EC97 03:EC87: 4C 55 DF  JMP loc_DF55
bra_EC8A:
C - - - - - 0x00EC9A 03:EC8A: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EC9C 03:EC8C: F0 1D     BEQ bra_ECAB
C - - - - - 0x00EC9E 03:EC8E: 2C A4 03  BIT ram_03A4
C - - - - - 0x00ECA1 03:EC91: 30 18     BMI bra_ECAB
C - - - - - 0x00ECA3 03:EC93: 48        PHA
C - - - - - 0x00ECA4 03:EC94: A9 02     LDA #$02
C - - - - - 0x00ECA6 03:EC96: 85 67     STA ram_0067
C - - - - - 0x00ECA8 03:EC98: A9 03     LDA #$03
C - - - - - 0x00ECAA 03:EC9A: 85 68     STA ram_0068
C - - - - - 0x00ECAC 03:EC9C: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00ECAF 03:EC9F: 68        PLA
C - - - - - 0x00ECB0 03:ECA0: 20 3F 80  JSR sub_0x00404F
C - - - - - 0x00ECB3 03:ECA3: A9 06     LDA #$06
C - - - - - 0x00ECB5 03:ECA5: 20 A5 E0  JSR sub_E0A5
C - - - - - 0x00ECB8 03:ECA8: 4C B0 EC  JMP loc_ECB0
bra_ECAB:
C - - - - - 0x00ECBB 03:ECAB: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00ECBD 03:ECAD: 20 93 E0  JSR sub_E093
loc_ECB0:
C D 3 - - - 0x00ECC0 03:ECB0: 90 0B     BCC bra_ECBD
C - - - - - 0x00ECC2 03:ECB2: 20 40 C9  JSR sub_C940
C - - - - - 0x00ECC5 03:ECB5: A9 04     LDA #con_anim_run_gk
C - - - - - 0x00ECC7 03:ECB7: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00ECCA 03:ECBA: 4C C5 EC  JMP loc_ECC5
bra_ECBD:
C - - - - - 0x00ECCD 03:ECBD: 20 37 C9  JSR sub_C937
C - - - - - 0x00ECD0 03:ECC0: A9 02     LDA #con_anim_02
C - - - - - 0x00ECD2 03:ECC2: 20 1E 80  JSR sub_0x00402E_set_animation
loc_ECC5:
C D 3 - - - 0x00ECD5 03:ECC5: A2 09     LDX #$09
C - - - - - 0x00ECD7 03:ECC7: A9 16     LDA #$16
C - - - - - 0x00ECD9 03:ECC9: 20 60 FA  JSR sub_FA60
C - - - - - 0x00ECDC 03:ECCC: 90 0F     BCC bra_ECDD
C - - - - - 0x00ECDE 03:ECCE: AD 26 04  LDA ram_0426
C - - - - - 0x00ECE1 03:ECD1: D0 85     BNE bra_EC58
C - - - - - 0x00ECE3 03:ECD3: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00ECE6 03:ECD6: C9 1C     CMP #$1C
C - - - - - 0x00ECE8 03:ECD8: B0 03     BCS bra_ECDD
C - - - - - 0x00ECEA 03:ECDA: 4C E9 ED  JMP loc_EDE9
bra_ECDD:
C - - - - - 0x00ECED 03:ECDD: A2 14     LDX #$14
C - - - - - 0x00ECEF 03:ECDF: A9 16     LDA #$16
C - - - - - 0x00ECF1 03:ECE1: 20 60 FA  JSR sub_FA60
C - - - - - 0x00ECF4 03:ECE4: B0 03     BCS bra_ECE9
C - - - - - 0x00ECF6 03:ECE6: 4C 58 EC  JMP loc_EC58
bra_ECE9:
C - - - - - 0x00ECF9 03:ECE9: AD 26 04  LDA ram_0426
C - - - - - 0x00ECFC 03:ECEC: F0 03     BEQ bra_ECF1
- - - - - - 0x00ECFE 03:ECEE: 4C 58 EC  JMP loc_EC58
bra_ECF1:
C - - - - - 0x00ED01 03:ECF1: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00ED04 03:ECF4: C9 18     CMP #$18
C - - - - - 0x00ED06 03:ECF6: 90 03     BCC bra_ECFB
C - - - - - 0x00ED08 03:ECF8: 4C 58 EC  JMP loc_EC58
bra_ECFB:
C - - - - - 0x00ED0B 03:ECFB: 20 5C E5  JSR sub_E55C
C - - - - - 0x00ED0E 03:ECFE: 20 13 E6  JSR sub_E613
C - - - - - 0x00ED11 03:ED01: A0 13     LDY #$13
C - - - - - 0x00ED13 03:ED03: B1 61     LDA (ram_0061),Y
C - - - - - 0x00ED15 03:ED05: 18        CLC
C - - - - - 0x00ED16 03:ED06: 69 80     ADC #$80
C - - - - - 0x00ED18 03:ED08: 38        SEC
C - - - - - 0x00ED19 03:ED09: ED E6 03  SBC ram_03E6
C - - - - - 0x00ED1C 03:ED0C: B0 04     BCS bra_ED12
C - - - - - 0x00ED1E 03:ED0E: 49 FF     EOR #$FF
C - - - - - 0x00ED20 03:ED10: 69 01     ADC #$01
bra_ED12:
C - - - - - 0x00ED22 03:ED12: C9 20     CMP #$20
C - - - - - 0x00ED24 03:ED14: B0 03     BCS bra_ED19
C - - - - - 0x00ED26 03:ED16: 4C 58 EC  JMP loc_EC58
bra_ED19:
C - - - - - 0x00ED29 03:ED19: A9 03     LDA #$03
C - - - - - 0x00ED2B 03:ED1B: 8D E4 03  STA ram_03E4
C - - - - - 0x00ED2E 03:ED1E: A9 00     LDA #$00
C - - - - - 0x00ED30 03:ED20: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00ED33 03:ED23: 8D 26 04  STA ram_0426
C - - - - - 0x00ED36 03:ED26: A0 00     LDY #$00
C - - - - - 0x00ED38 03:ED28: B1 61     LDA (ram_0061),Y
C - - - - - 0x00ED3A 03:ED2A: 09 04     ORA #$04
C - - - - - 0x00ED3C 03:ED2C: 29 F7     AND #$F7
C - - - - - 0x00ED3E 03:ED2E: 91 61     STA (ram_0061),Y
C - - - - - 0x00ED40 03:ED30: 20 40 C9  JSR sub_C940
C - - - - - 0x00ED43 03:ED33: 20 77 C6  JSR sub_C677
C - - - - - 0x00ED46 03:ED36: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00ED48 03:ED38: 20 2B C9  JSR sub_C92B
C - - - - - 0x00ED4B 03:ED3B: AD E6 03  LDA ram_03E6
C - - - - - 0x00ED4E 03:ED3E: 18        CLC
C - - - - - 0x00ED4F 03:ED3F: 69 08     ADC #$08
C - - - - - 0x00ED51 03:ED41: 29 E0     AND #$E0
C - - - - - 0x00ED53 03:ED43: 85 2B     STA ram_002B
C - - - - - 0x00ED55 03:ED45: 4A        LSR
C - - - - - 0x00ED56 03:ED46: 4A        LSR
C - - - - - 0x00ED57 03:ED47: 4A        LSR
C - - - - - 0x00ED58 03:ED48: 4A        LSR
C - - - - - 0x00ED59 03:ED49: 85 2A     STA ram_002A
C - - - - - 0x00ED5B 03:ED4B: A0 13     LDY #$13
C - - - - - 0x00ED5D 03:ED4D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00ED5F 03:ED4F: 38        SEC
C - - - - - 0x00ED60 03:ED50: E5 2B     SBC ram_002B
C - - - - - 0x00ED62 03:ED52: 29 E0     AND #$E0
C - - - - - 0x00ED64 03:ED54: 4A        LSR
C - - - - - 0x00ED65 03:ED55: 4A        LSR
C - - - - - 0x00ED66 03:ED56: 4A        LSR
C - - - - - 0x00ED67 03:ED57: 4A        LSR
C - - - - - 0x00ED68 03:ED58: 4A        LSR
C - - - - - 0x00ED69 03:ED59: AA        TAX
C - - - - - 0x00ED6A 03:ED5A: BD 8F EF  LDA tbl_EF8F,X
C - - - - - 0x00ED6D 03:ED5D: 18        CLC
C - - - - - 0x00ED6E 03:ED5E: 65 2A     ADC ram_002A
C - - - - - 0x00ED70 03:ED60: 29 0F     AND #$0F
C - - - - - 0x00ED72 03:ED62: A0 06     LDY #$06
C - - - - - 0x00ED74 03:ED64: 91 61     STA (ram_0061),Y
C - - - - - 0x00ED76 03:ED66: AA        TAX
C - - - - - 0x00ED77 03:ED67: BD 97 EF  LDA tbl_EF97,X
C - - - - - 0x00ED7A 03:ED6A: 48        PHA
C - - - - - 0x00ED7B 03:ED6B: 29 C0     AND #$C0
C - - - - - 0x00ED7D 03:ED6D: 85 2A     STA ram_002A
C - - - - - 0x00ED7F 03:ED6F: A0 01     LDY #$01
C - - - - - 0x00ED81 03:ED71: B1 61     LDA (ram_0061),Y
C - - - - - 0x00ED83 03:ED73: 29 3F     AND #$3F
C - - - - - 0x00ED85 03:ED75: 05 2A     ORA ram_002A
C - - - - - 0x00ED87 03:ED77: 91 61     STA (ram_0061),Y
C - - - - - 0x00ED89 03:ED79: 68        PLA
C - - - - - 0x00ED8A 03:ED7A: 29 03     AND #$03
C - - - - - 0x00ED8C 03:ED7C: 0A        ASL
C - - - - - 0x00ED8D 03:ED7D: 85 2A     STA ram_002A
C - - - - - 0x00ED8F 03:ED7F: 0A        ASL
C - - - - - 0x00ED90 03:ED80: 65 2A     ADC ram_002A
C - - - - - 0x00ED92 03:ED82: A0 0F     LDY #$0F
C - - - - - 0x00ED94 03:ED84: 91 61     STA (ram_0061),Y
C - - - - - 0x00ED96 03:ED86: 20 A3 EE  JSR sub_EEA3
C - - - - - 0x00ED99 03:ED89: A9 00     LDA #$00
C - - - - - 0x00ED9B 03:ED8B: A0 0C     LDY #$0C
C - - - - - 0x00ED9D 03:ED8D: 91 61     STA (ram_0061),Y
loc_ED8F:
C D 3 - - - 0x00ED9F 03:ED8F: A0 0C     LDY #$0C
C - - - - - 0x00EDA1 03:ED91: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EDA3 03:ED93: AA        TAX
C - - - - - 0x00EDA4 03:ED94: 18        CLC
C - - - - - 0x00EDA5 03:ED95: 69 01     ADC #$01
C - - - - - 0x00EDA7 03:ED97: 91 61     STA (ram_0061),Y
C - - - - - 0x00EDA9 03:ED99: BD BF EF  LDA tbl_EFBF,X
C - - - - - 0x00EDAC 03:ED9C: D0 0B     BNE bra_EDA9
C - - - - - 0x00EDAE 03:ED9E: 2C 98 00  BIT a: ram_0098
C - - - - - 0x00EDB1 03:EDA1: 30 03     BMI bra_EDA6
C - - - - - 0x00EDB3 03:EDA3: 4C FD EE  JMP loc_EEFD
bra_EDA6:
C - - - - - 0x00EDB6 03:EDA6: 4C 4B EC  JMP loc_EC4B
bra_EDA9:
C - - - - - 0x00EDB9 03:EDA9: E0 02     CPX #$02
C - - - - - 0x00EDBB 03:EDAB: D0 07     BNE bra_EDB4
C - - - - - 0x00EDBD 03:EDAD: 2C 98 00  BIT a: ram_0098
C - - - - - 0x00EDC0 03:EDB0: 10 02     BPL bra_EDB4
C - - - - - 0x00EDC2 03:EDB2: A9 0C     LDA #$0C
bra_EDB4:
C - - - - - 0x00EDC4 03:EDB4: 48        PHA
C - - - - - 0x00EDC5 03:EDB5: A0 06     LDY #$06
C - - - - - 0x00EDC7 03:EDB7: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EDC9 03:EDB9: A8        TAY
C - - - - - 0x00EDCA 03:EDBA: B9 97 EF  LDA tbl_EF97,Y
C - - - - - 0x00EDCD 03:EDBD: 29 03     AND #$03
C - - - - - 0x00EDCF 03:EDBF: 0A        ASL
C - - - - - 0x00EDD0 03:EDC0: 0A        ASL
C - - - - - 0x00EDD1 03:EDC1: 85 2A     STA ram_002A
C - - - - - 0x00EDD3 03:EDC3: 0A        ASL
C - - - - - 0x00EDD4 03:EDC4: 65 2A     ADC ram_002A
C - - - - - 0x00EDD6 03:EDC6: 85 2A     STA ram_002A
C - - - - - 0x00EDD8 03:EDC8: 8A        TXA
C - - - - - 0x00EDD9 03:EDC9: 0A        ASL
C - - - - - 0x00EDDA 03:EDCA: 65 2A     ADC ram_002A
C - - - - - 0x00EDDC 03:EDCC: 85 2A     STA ram_002A
C - - - - - 0x00EDDE 03:EDCE: 20 30 EF  JSR sub_EF30
C - - - - - 0x00EDE1 03:EDD1: A0 0F     LDY #$0F
C - - - - - 0x00EDE3 03:EDD3: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EDE5 03:EDD5: AA        TAX
C - - - - - 0x00EDE6 03:EDD6: 18        CLC
C - - - - - 0x00EDE7 03:EDD7: 69 01     ADC #$01
C - - - - - 0x00EDE9 03:EDD9: 91 61     STA (ram_0061),Y
C - - - - - 0x00EDEB 03:EDDB: BD A7 EF  LDA tbl_EFA7,X
C - - - - - 0x00EDEE 03:EDDE: A0 11     LDY #$11
C - - - - - 0x00EDF0 03:EDE0: 91 61     STA (ram_0061),Y
C - - - - - 0x00EDF2 03:EDE2: 68        PLA
C - - - - - 0x00EDF3 03:EDE3: 20 52 C6  JSR sub_C652
C - - - - - 0x00EDF6 03:EDE6: 4C 8F ED  JMP loc_ED8F



loc_EDE9:
C D 3 - - - 0x00EDF9 03:EDE9: A9 00     LDA #$00
C - - - - - 0x00EDFB 03:EDEB: 8D 98 00  STA a: ram_0098
C - - - - - 0x00EDFE 03:EDEE: A9 00     LDA #$00
C - - - - - 0x00EE00 03:EDF0: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00EE03 03:EDF3: 8D 26 04  STA ram_0426
C - - - - - 0x00EE06 03:EDF6: A9 03     LDA #$03
C - - - - - 0x00EE08 03:EDF8: 8D E4 03  STA ram_03E4
C - - - - - 0x00EE0B 03:EDFB: A9 06     LDA #$06
C - - - - - 0x00EE0D 03:EDFD: 20 9E C7  JSR sub_C79E
C - - - - - 0x00EE10 03:EE00: AD E6 03  LDA ram_03E6
C - - - - - 0x00EE13 03:EE03: 18        CLC
C - - - - - 0x00EE14 03:EE04: 69 80     ADC #$80
C - - - - - 0x00EE16 03:EE06: A0 13     LDY #$13
C - - - - - 0x00EE18 03:EE08: 91 61     STA (ram_0061),Y
C - - - - - 0x00EE1A 03:EE0A: 2C 29 04  BIT ram_plr_w_ball
C - - - - - 0x00EE1D 03:EE0D: 10 3B     BPL bra_EE4A
C - - - - - 0x00EE1F 03:EE0F: AD 7F 03  LDA ram_random + $01
C - - - - - 0x00EE22 03:EE12: C9 E0     CMP #$E0
C - - - - - 0x00EE24 03:EE14: 90 34     BCC bra_EE4A
C - - - - - 0x00EE26 03:EE16: AD 7E 03  LDA ram_random
C - - - - - 0x00EE29 03:EE19: 29 1F     AND #$1F
C - - - - - 0x00EE2B 03:EE1B: 2C 7E 03  BIT ram_random
C - - - - - 0x00EE2E 03:EE1E: 10 04     BPL bra_EE24
C - - - - - 0x00EE30 03:EE20: 49 FF     EOR #$FF
C - - - - - 0x00EE32 03:EE22: 69 00     ADC #$00
bra_EE24:
C - - - - - 0x00EE34 03:EE24: 18        CLC
C - - - - - 0x00EE35 03:EE25: 69 80     ADC #$80
C - - - - - 0x00EE37 03:EE27: 6D E6 03  ADC ram_03E6
C - - - - - 0x00EE3A 03:EE2A: 8D E6 03  STA ram_03E6
C - - - - - 0x00EE3D 03:EE2D: 4E 1E 04  LSR ram_041E
C - - - - - 0x00EE40 03:EE30: 6E 1D 04  ROR ram_041D
C - - - - - 0x00EE43 03:EE33: 20 DF DD  JSR sub_DDDF
C - - - - - 0x00EE46 03:EE36: A9 80     LDA #$80
C - - - - - 0x00EE48 03:EE38: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00EE4B 03:EE3B: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00EE4E 03:EE3E: A9 80     LDA #$80
C - - - - - 0x00EE50 03:EE40: 85 98     STA ram_0098
C - - - - - 0x00EE52 03:EE42: A9 1C     LDA #con_sfx_syndrom
C - - - - - 0x00EE54 03:EE44: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00EE57 03:EE47: 4C 6F EE  JMP loc_EE6F
bra_EE4A:
C - - - - - 0x00EE5A 03:EE4A: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00EE5D 03:EE4D: 30 10     BMI bra_EE5F
C - - - - - 0x00EE5F 03:EE4F: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00EE62 03:EE52: A0 00     LDY #$00
C - - - - - 0x00EE64 03:EE54: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EE66 03:EE56: 29 FB     AND #$FB
C - - - - - 0x00EE68 03:EE58: 91 61     STA (ram_0061),Y
C - - - - - 0x00EE6A 03:EE5A: A9 00     LDA #$00
C - - - - - 0x00EE6C 03:EE5C: 20 2F C6  JSR sub_C62F
bra_EE5F:
C - - - - - 0x00EE6F 03:EE5F: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EE71 03:EE61: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00EE74 03:EE64: A9 07     LDA #con_sfx_catch
C - - - - - 0x00EE76 03:EE66: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00EE79 03:EE69: A9 00     LDA #$00
C - - - - - 0x00EE7B 03:EE6B: 85 09     STA ram_0009
C - - - - - 0x00EE7D 03:EE6D: 85 0A     STA ram_000A
loc_EE6F:
C D 3 - - - 0x00EE7F 03:EE6F: 20 77 C6  JSR sub_C677
C - - - - - 0x00EE82 03:EE72: AE 24 04  LDX ram_ball_Z_lo
C - - - - - 0x00EE85 03:EE75: A9 13     LDA #$13
C - - - - - 0x00EE87 03:EE77: E0 0C     CPX #$0C
C - - - - - 0x00EE89 03:EE79: 90 02     BCC bra_EE7D
- - - - - - 0x00EE8B 03:EE7B: A9 14     LDA #$14
bra_EE7D:
C - - - - - 0x00EE8D 03:EE7D: A0 0C     LDY #$0C
C - - - - - 0x00EE8F 03:EE7F: 91 61     STA (ram_0061),Y
C - - - - - 0x00EE91 03:EE81: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00EE94 03:EE84: A9 08     LDA #$08
C - - - - - 0x00EE96 03:EE86: 20 52 C6  JSR sub_C652
C - - - - - 0x00EE99 03:EE89: 20 6D C6  JSR sub_C66D
C - - - - - 0x00EE9C 03:EE8C: A0 0C     LDY #$0C
C - - - - - 0x00EE9E 03:EE8E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EEA0 03:EE90: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00EEA3 03:EE93: A9 14     LDA #$14
C - - - - - 0x00EEA5 03:EE95: 20 52 C6  JSR sub_C652
C - - - - - 0x00EEA8 03:EE98: 2C 98 00  BIT a: ram_0098
C - - - - - 0x00EEAB 03:EE9B: 30 03     BMI bra_EEA0
C - - - - - 0x00EEAD 03:EE9D: 4C FD EE  JMP loc_EEFD
bra_EEA0:
C - - - - - 0x00EEB0 03:EEA0: 4C 4B EC  JMP loc_EC4B



sub_EEA3:
C - - - - - 0x00EEB3 03:EEA3: A9 00     LDA #$00
C - - - - - 0x00EEB5 03:EEA5: 85 98     STA ram_0098
C - - - - - 0x00EEB7 03:EEA7: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00EEBA 03:EEAA: 10 35     BPL bra_EEE1
C - - - - - 0x00EEBC 03:EEAC: AD 1E 04  LDA ram_041E
C - - - - - 0x00EEBF 03:EEAF: C9 02     CMP #$02
C - - - - - 0x00EEC1 03:EEB1: 90 2E     BCC bra_EEE1
C - - - - - 0x00EEC3 03:EEB3: A9 1C     LDA #con_sfx_syndrom
C - - - - - 0x00EEC5 03:EEB5: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00EEC8 03:EEB8: AD 7E 03  LDA ram_random
C - - - - - 0x00EECB 03:EEBB: C9 A0     CMP #$A0
C - - - - - 0x00EECD 03:EEBD: 90 02     BCC bra_EEC1
C - - - - - 0x00EECF 03:EEBF: E9 A0     SBC #$A0
bra_EEC1:
C - - - - - 0x00EED1 03:EEC1: 85 2A     STA ram_002A
C - - - - - 0x00EED3 03:EEC3: A9 30     LDA #$30
C - - - - - 0x00EED5 03:EEC5: A6 6F     LDX ram_plr_local_id
C - - - - - 0x00EED7 03:EEC7: F0 02     BEQ bra_EECB
C - - - - - 0x00EED9 03:EEC9: A9 B0     LDA #$B0
bra_EECB:
C - - - - - 0x00EEDB 03:EECB: 18        CLC
C - - - - - 0x00EEDC 03:EECC: 65 2A     ADC ram_002A
C - - - - - 0x00EEDE 03:EECE: 8D E6 03  STA ram_03E6
C - - - - - 0x00EEE1 03:EED1: 20 DF DD  JSR sub_DDDF
C - - - - - 0x00EEE4 03:EED4: A9 80     LDA #$80
C - - - - - 0x00EEE6 03:EED6: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00EEE9 03:EED9: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00EEEC 03:EEDC: A9 80     LDA #$80
C - - - - - 0x00EEEE 03:EEDE: 85 98     STA ram_0098
C - - - - - 0x00EEF0 03:EEE0: 60        RTS
bra_EEE1:
C - - - - - 0x00EEF1 03:EEE1: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00EEF4 03:EEE4: A0 00     LDY #$00
C - - - - - 0x00EEF6 03:EEE6: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EEF8 03:EEE8: 29 FB     AND #$FB
C - - - - - 0x00EEFA 03:EEEA: 91 61     STA (ram_0061),Y
C - - - - - 0x00EEFC 03:EEEC: A9 00     LDA #$00
C - - - - - 0x00EEFE 03:EEEE: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EF01 03:EEF1: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00EF03 03:EEF3: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00EF06 03:EEF6: A9 00     LDA #$00
C - - - - - 0x00EF08 03:EEF8: 85 09     STA ram_0009
C - - - - - 0x00EF0A 03:EEFA: 85 0A     STA ram_000A
C - - - - - 0x00EF0C 03:EEFC: 60        RTS



loc_EEFD:
C D 3 - - - 0x00EF0D 03:EEFD: A0 00     LDY #$00
C - - - - - 0x00EF0F 03:EEFF: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EF11 03:EF01: 29 FB     AND #$FB
C - - - - - 0x00EF13 03:EF03: 91 61     STA (ram_0061),Y
C - - - - - 0x00EF15 03:EF05: A9 16     LDA #$16
C - - - - - 0x00EF17 03:EF07: 20 2F C6  JSR sub_C62F
C - - - - - 0x00EF1A 03:EF0A: A0 00     LDY #$00
C - - - - - 0x00EF1C 03:EF0C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EF1E 03:EF0E: 09 04     ORA #$04
C - - - - - 0x00EF20 03:EF10: 29 F7     AND #$F7
C - - - - - 0x00EF22 03:EF12: 91 61     STA (ram_0061),Y
C - - - - - 0x00EF24 03:EF14: AD 7E 03  LDA ram_random
C - - - - - 0x00EF27 03:EF17: 29 0F     AND #$0F
C - - - - - 0x00EF29 03:EF19: 18        CLC
C - - - - - 0x00EF2A 03:EF1A: 69 70     ADC #$70
C - - - - - 0x00EF2C 03:EF1C: A0 06     LDY #$06
C - - - - - 0x00EF2E 03:EF1E: 91 61     STA (ram_0061),Y
C - - - - - 0x00EF30 03:EF20: AD 2C 04  LDA ram_042C
C - - - - - 0x00EF33 03:EF23: 09 40     ORA #$40
C - - - - - 0x00EF35 03:EF25: 8D 2C 04  STA ram_042C
C - - - - - 0x00EF38 03:EF28: A9 80     LDA #$80
C - - - - - 0x00EF3A 03:EF2A: 8D 2A 04  STA ram_plr_wo_ball
C - - - - - 0x00EF3D 03:EF2D: 4C 55 DF  JMP loc_DF55



sub_EF30:
C - - - - - 0x00EF40 03:EF30: 24 98     BIT ram_0098
C - - - - - 0x00EF42 03:EF32: 10 03     BPL bra_EF37
C - - - - - 0x00EF44 03:EF34: 4C 8E EF  JMP loc_EF8E_RTS
bra_EF37:
C - - - - - 0x00EF47 03:EF37: A6 2A     LDX ram_002A
C - - - - - 0x00EF49 03:EF39: A0 01     LDY #$01
C - - - - - 0x00EF4B 03:EF3B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EF4D 03:EF3D: 29 40     AND #$40
C - - - - - 0x00EF4F 03:EF3F: 08        PHP
C - - - - - 0x00EF50 03:EF40: BD E6 EF  LDA tbl_EFE6,X
C - - - - - 0x00EF53 03:EF43: 28        PLP
C - - - - - 0x00EF54 03:EF44: F0 05     BEQ bra_EF4B
C - - - - - 0x00EF56 03:EF46: 49 FF     EOR #$FF
C - - - - - 0x00EF58 03:EF48: 18        CLC
C - - - - - 0x00EF59 03:EF49: 69 01     ADC #$01
bra_EF4B:
C - - - - - 0x00EF5B 03:EF4B: 48        PHA
C - - - - - 0x00EF5C 03:EF4C: A0 05     LDY #$05
C - - - - - 0x00EF5E 03:EF4E: 18        CLC
C - - - - - 0x00EF5F 03:EF4F: 71 61     ADC (ram_0061),Y
C - - - - - 0x00EF61 03:EF51: 8D D8 03  STA ram_03D8
C - - - - - 0x00EF64 03:EF54: C8        INY
C - - - - - 0x00EF65 03:EF55: C8        INY
C - - - - - 0x00EF66 03:EF56: A2 00     LDX #$00
C - - - - - 0x00EF68 03:EF58: 68        PLA
C - - - - - 0x00EF69 03:EF59: 10 01     BPL bra_EF5C
C - - - - - 0x00EF6B 03:EF5B: CA        DEX
bra_EF5C:
C - - - - - 0x00EF6C 03:EF5C: 8A        TXA
C - - - - - 0x00EF6D 03:EF5D: 71 61     ADC (ram_0061),Y
C - - - - - 0x00EF6F 03:EF5F: 8D DA 03  STA ram_03DA
C - - - - - 0x00EF72 03:EF62: A0 01     LDY #$01
C - - - - - 0x00EF74 03:EF64: B1 61     LDA (ram_0061),Y
C - - - - - 0x00EF76 03:EF66: 08        PHP
C - - - - - 0x00EF77 03:EF67: A6 2A     LDX ram_002A
C - - - - - 0x00EF79 03:EF69: BD E7 EF  LDA tbl_EFE7,X
C - - - - - 0x00EF7C 03:EF6C: 28        PLP
C - - - - - 0x00EF7D 03:EF6D: 10 05     BPL bra_EF74
C - - - - - 0x00EF7F 03:EF6F: 49 FF     EOR #$FF
C - - - - - 0x00EF81 03:EF71: 18        CLC
C - - - - - 0x00EF82 03:EF72: 69 01     ADC #$01
bra_EF74:
C - - - - - 0x00EF84 03:EF74: 48        PHA
C - - - - - 0x00EF85 03:EF75: A0 0B     LDY #$0B
C - - - - - 0x00EF87 03:EF77: 18        CLC
C - - - - - 0x00EF88 03:EF78: 71 61     ADC (ram_0061),Y
C - - - - - 0x00EF8A 03:EF7A: 8D DE 03  STA ram_03DE
C - - - - - 0x00EF8D 03:EF7D: C8        INY
C - - - - - 0x00EF8E 03:EF7E: C8        INY
C - - - - - 0x00EF8F 03:EF7F: A2 00     LDX #$00
C - - - - - 0x00EF91 03:EF81: 68        PLA
C - - - - - 0x00EF92 03:EF82: 10 01     BPL bra_EF85
C - - - - - 0x00EF94 03:EF84: CA        DEX
bra_EF85:
C - - - - - 0x00EF95 03:EF85: 8A        TXA
C - - - - - 0x00EF96 03:EF86: 71 61     ADC (ram_0061),Y
C - - - - - 0x00EF98 03:EF88: 8D E0 03  STA ram_03E0
C - - - - - 0x00EF9B 03:EF8B: 20 ED DC  JSR sub_DCED
loc_EF8E_RTS:
C D 3 - - - 0x00EF9E 03:EF8E: 60        RTS



tbl_EF8F:
- D 3 - - - 0x00EF9F 03:EF8F: 07        .byte $07   ; 
- D 3 - - - 0x00EFA0 03:EF90: 00        .byte $00   ; 
- D 3 - - - 0x00EFA1 03:EF91: 02        .byte $02   ; 
- D 3 - - - 0x00EFA2 03:EF92: 04        .byte $04   ; 
- D 3 - - - 0x00EFA3 03:EF93: 06        .byte $06   ; 
- D 3 - - - 0x00EFA4 03:EF94: 01        .byte $01   ; 
- D 3 - - - 0x00EFA5 03:EF95: 03        .byte $03   ; 
- - - - - - 0x00EFA6 03:EF96: 05        .byte $05   ; 



tbl_EF97:
- D 3 - - - 0x00EFA7 03:EF97: 42        .byte $42   ; 
- D 3 - - - 0x00EFA8 03:EF98: 41        .byte $41   ; 
- - - - - - 0x00EFA9 03:EF99: 40        .byte $40   ; 
- D 3 - - - 0x00EFAA 03:EF9A: 00        .byte $00   ; 
- D 3 - - - 0x00EFAB 03:EF9B: 01        .byte $01   ; 
- D 3 - - - 0x00EFAC 03:EF9C: 02        .byte $02   ; 
- D 3 - - - 0x00EFAD 03:EF9D: 03        .byte $03   ; 
- D 3 - - - 0x00EFAE 03:EF9E: 83        .byte $83   ; 
- D 3 - - - 0x00EFAF 03:EF9F: 82        .byte $82   ; 
- D 3 - - - 0x00EFB0 03:EFA0: 81        .byte $81   ; 
- D 3 - - - 0x00EFB1 03:EFA1: 80        .byte $80   ; 
- D 3 - - - 0x00EFB2 03:EFA2: C0        .byte $C0   ; 
- D 3 - - - 0x00EFB3 03:EFA3: C1        .byte $C1   ; 
- - - - - - 0x00EFB4 03:EFA4: C2        .byte $C2   ; 
- D 3 - - - 0x00EFB5 03:EFA5: C3        .byte $C3   ; 
- D 3 - - - 0x00EFB6 03:EFA6: 43        .byte $43   ; 



tbl_EFA7:
- D 3 - - - 0x00EFB7 03:EFA7: A7        .byte $A7   ; 
- D 3 - - - 0x00EFB8 03:EFA8: A8        .byte $A8   ; 
- D 3 - - - 0x00EFB9 03:EFA9: A9        .byte $A9   ; 
- D 3 - - - 0x00EFBA 03:EFAA: 9E        .byte $9E   ; 
- D 3 - - - 0x00EFBB 03:EFAB: 9F        .byte $9F   ; 
- D 3 - - - 0x00EFBC 03:EFAC: A0        .byte $A0   ; 
- D 3 - - - 0x00EFBD 03:EFAD: AB        .byte $AB   ; 
- D 3 - - - 0x00EFBE 03:EFAE: AC        .byte $AC   ; 
- D 3 - - - 0x00EFBF 03:EFAF: AD        .byte $AD   ; 
- D 3 - - - 0x00EFC0 03:EFB0: AF        .byte $AF   ; 
- D 3 - - - 0x00EFC1 03:EFB1: B0        .byte $B0   ; 
- D 3 - - - 0x00EFC2 03:EFB2: B1        .byte $B1   ; 
- D 3 - - - 0x00EFC3 03:EFB3: B2        .byte $B2   ; 
- D 3 - - - 0x00EFC4 03:EFB4: B3        .byte $B3   ; 
- D 3 - - - 0x00EFC5 03:EFB5: B4        .byte $B4   ; 
- D 3 - - - 0x00EFC6 03:EFB6: B6        .byte $B6   ; 
- D 3 - - - 0x00EFC7 03:EFB7: B7        .byte $B7   ; 
- D 3 - - - 0x00EFC8 03:EFB8: B8        .byte $B8   ; 
- D 3 - - - 0x00EFC9 03:EFB9: B9        .byte $B9   ; 
- D 3 - - - 0x00EFCA 03:EFBA: BA        .byte $BA   ; 
- D 3 - - - 0x00EFCB 03:EFBB: BB        .byte $BB   ; 
- D 3 - - - 0x00EFCC 03:EFBC: A4        .byte $A4   ; 
- D 3 - - - 0x00EFCD 03:EFBD: A5        .byte $A5   ; 
- D 3 - - - 0x00EFCE 03:EFBE: A6        .byte $A6   ; 


; таймеры анимации поднятия кипера при ловле/отбивании мяча
tbl_EFBF:
- D 3 - - - 0x00EFCF 03:EFBF: 14        .byte $14   ; 
- D 3 - - - 0x00EFD0 03:EFC0: 10        .byte $10   ; 
- D 3 - - - 0x00EFD1 03:EFC1: 20        .byte $20   ; 
- D 3 - - - 0x00EFD2 03:EFC2: 18        .byte $18   ; 
- D 3 - - - 0x00EFD3 03:EFC3: 0C        .byte $0C   ; 
- D 3 - - - 0x00EFD4 03:EFC4: 14        .byte $14   ; 
- D 3 - - - 0x00EFD5 03:EFC5: 00        .byte $00   ; 


; bzk garbage
- - - - - - 0x00EFD6 03:EFC6: 0C        .byte $0C   ; 
- - - - - - 0x00EFD7 03:EFC7: 0B        .byte $0B   ; 
- - - - - - 0x00EFD8 03:EFC8: F6        .byte $F6   ; 
- - - - - - 0x00EFD9 03:EFC9: F4        .byte $F4   ; 
- - - - - - 0x00EFDA 03:EFCA: 0F        .byte $0F   ; 
- - - - - - 0x00EFDB 03:EFCB: 00        .byte $00   ; 
- - - - - - 0x00EFDC 03:EFCC: F1        .byte $F1   ; 
- - - - - - 0x00EFDD 03:EFCD: 00        .byte $00   ; 
- - - - - - 0x00EFDE 03:EFCE: 0A        .byte $0A   ; 
- - - - - - 0x00EFDF 03:EFCF: F4        .byte $F4   ; 
- - - - - - 0x00EFE0 03:EFD0: F4        .byte $F4   ; 
- - - - - - 0x00EFE1 03:EFD1: 0B        .byte $0B   ; 
- - - - - - 0x00EFE2 03:EFD2: FE        .byte $FE   ; 
- - - - - - 0x00EFE3 03:EFD3: F3        .byte $F3   ; 
- - - - - - 0x00EFE4 03:EFD4: FE        .byte $FE   ; 
- - - - - - 0x00EFE5 03:EFD5: 0D        .byte $0D   ; 
- - - - - - 0x00EFE6 03:EFD6: F4        .byte $F4   ; 
- - - - - - 0x00EFE7 03:EFD7: F5        .byte $F5   ; 
- - - - - - 0x00EFE8 03:EFD8: 0A        .byte $0A   ; 
- - - - - - 0x00EFE9 03:EFD9: 0C        .byte $0C   ; 
- - - - - - 0x00EFEA 03:EFDA: F1        .byte $F1   ; 
- - - - - - 0x00EFEB 03:EFDB: 00        .byte $00   ; 
- - - - - - 0x00EFEC 03:EFDC: 0F        .byte $0F   ; 
- - - - - - 0x00EFED 03:EFDD: 00        .byte $00   ; 
- - - - - - 0x00EFEE 03:EFDE: F6        .byte $F6   ; 
- - - - - - 0x00EFEF 03:EFDF: 0C        .byte $0C   ; 
- - - - - - 0x00EFF0 03:EFE0: 0C        .byte $0C   ; 
- - - - - - 0x00EFF1 03:EFE1: F5        .byte $F5   ; 
- - - - - - 0x00EFF2 03:EFE2: 02        .byte $02   ; 
- - - - - - 0x00EFF3 03:EFE3: 0D        .byte $0D   ; 
- - - - - - 0x00EFF4 03:EFE4: 02        .byte $02   ; 
- - - - - - 0x00EFF5 03:EFE5: F3        .byte $F3   ; 



tbl_EFE6:
- D 3 - - - 0x00EFF6 03:EFE6: F1        .byte $F1   ; 
tbl_EFE7:
- D 3 - - - 0x00EFF7 03:EFE7: 00        .byte $00   ; 
- D 3 - - - 0x00EFF8 03:EFE8: F3        .byte $F3   ; 
- D 3 - - - 0x00EFF9 03:EFE9: FF        .byte $FF   ; 
- D 3 - - - 0x00EFFA 03:EFEA: F4        .byte $F4   ; 
- D 3 - - - 0x00EFFB 03:EFEB: 00        .byte $00   ; 
- - - - - - 0x00EFFC 03:EFEC: 03        .byte $03   ; 
- - - - - - 0x00EFFD 03:EFED: FB        .byte $FB   ; 
- - - - - - 0x00EFFE 03:EFEE: 02        .byte $02   ; 
- - - - - - 0x00EFFF 03:EFEF: FE        .byte $FE   ; 
- - - - - - 0x00F000 03:EFF0: FD        .byte $FD   ; 
- - - - - - 0x00F001 03:EFF1: FE        .byte $FE   ; 
- D 3 - - - 0x00F002 03:EFF2: 0A        .byte $0A   ; 
- D 3 - - - 0x00F003 03:EFF3: F4        .byte $F4   ; 
- D 3 - - - 0x00F004 03:EFF4: 10        .byte $10   ; 
- D 3 - - - 0x00F005 03:EFF5: F2        .byte $F2   ; 
- D 3 - - - 0x00F006 03:EFF6: 0D        .byte $0D   ; 
- D 3 - - - 0x00F007 03:EFF7: F5        .byte $F5   ; 
- D 3 - - - 0x00F008 03:EFF8: FD        .byte $FD   ; 
- D 3 - - - 0x00F009 03:EFF9: FA        .byte $FA   ; 
- D 3 - - - 0x00F00A 03:EFFA: FE        .byte $FE   ; 
- D 3 - - - 0x00F00B 03:EFFB: FB        .byte $FB   ; 
- D 3 - - - 0x00F00C 03:EFFC: FF        .byte $FF   ; 
- D 3 - - - 0x00F00D 03:EFFD: FF        .byte $FF   ; 
- D 3 - - - 0x00F00E 03:EFFE: F4        .byte $F4   ; 
- D 3 - - - 0x00F00F 03:EFFF: 0B        .byte $0B   ; 
- D 3 - - - 0x00F010 03:F000: F2        .byte $F2   ; 
- D 3 - - - 0x00F011 03:F001: 10        .byte $10   ; 
- D 3 - - - 0x00F012 03:F002: F5        .byte $F5   ; 
- D 3 - - - 0x00F013 03:F003: 0D        .byte $0D   ; 
- D 3 - - - 0x00F014 03:F004: F9        .byte $F9   ; 
- D 3 - - - 0x00F015 03:F005: 03        .byte $03   ; 
- D 3 - - - 0x00F016 03:F006: FB        .byte $FB   ; 
- D 3 - - - 0x00F017 03:F007: FD        .byte $FD   ; 
- D 3 - - - 0x00F018 03:F008: FF        .byte $FF   ; 
- D 3 - - - 0x00F019 03:F009: 01        .byte $01   ; 
- D 3 - - - 0x00F01A 03:F00A: FE        .byte $FE   ; 
- D 3 - - - 0x00F01B 03:F00B: F3        .byte $F3   ; 
- D 3 - - - 0x00F01C 03:F00C: FB        .byte $FB   ; 
- D 3 - - - 0x00F01D 03:F00D: F1        .byte $F1   ; 
- D 3 - - - 0x00F01E 03:F00E: 00        .byte $00   ; 
- D 3 - - - 0x00F01F 03:F00F: F4        .byte $F4   ; 
- D 3 - - - 0x00F020 03:F010: FB        .byte $FB   ; 
- D 3 - - - 0x00F021 03:F011: 03        .byte $03   ; 
- D 3 - - - 0x00F022 03:F012: FD        .byte $FD   ; 
- D 3 - - - 0x00F023 03:F013: 02        .byte $02   ; 
- D 3 - - - 0x00F024 03:F014: FD        .byte $FD   ; 
- D 3 - - - 0x00F025 03:F015: 00        .byte $00   ; 



ofs_005_F016_05:
C - - - - - 0x00F026 03:F016: A9 02     LDA #con_sfx_dead
C - - - - - 0x00F028 03:F018: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F02B 03:F01B: A0 00     LDY #$00
C - - - - - 0x00F02D 03:F01D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F02F 03:F01F: 09 04     ORA #$04
C - - - - - 0x00F031 03:F021: 29 F7     AND #$F7
C - - - - - 0x00F033 03:F023: 91 61     STA (ram_0061),Y
C - - - - - 0x00F035 03:F025: 20 40 C9  JSR sub_C940
C - - - - - 0x00F038 03:F028: 20 77 C6  JSR sub_C677
C - - - - - 0x00F03B 03:F02B: A9 09     LDA #con_anim_dead
C - - - - - 0x00F03D 03:F02D: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F040 03:F030: A9 40     LDA #$40
C - - - - - 0x00F042 03:F032: 20 52 C6  JSR sub_C652
C - - - - - 0x00F045 03:F035: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F048 03:F038: A9 09     LDA #con_anim_dead
C - - - - - 0x00F04A 03:F03A: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F04D 03:F03D: A9 0C     LDA #$0C
C - - - - - 0x00F04F 03:F03F: 20 52 C6  JSR sub_C652
C - - - - - 0x00F052 03:F042: A0 00     LDY #$00
C - - - - - 0x00F054 03:F044: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F056 03:F046: 29 FB     AND #$FB
C - - - - - 0x00F058 03:F048: 91 61     STA (ram_0061),Y
C - - - - - 0x00F05A 03:F04A: A9 00     LDA #$00
C - - - - - 0x00F05C 03:F04C: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F05F 03:F04F: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F061 03:F051: 48        PHA
C - - - - - 0x00F062 03:F052: A9 02     LDA #$02
C - - - - - 0x00F064 03:F054: 85 67     STA ram_0067
C - - - - - 0x00F066 03:F056: A9 03     LDA #$03
C - - - - - 0x00F068 03:F058: 85 68     STA ram_0068
C - - - - - 0x00F06A 03:F05A: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00F06D 03:F05D: 68        PLA
C - - - - - 0x00F06E 03:F05E: 20 45 80  JSR sub_0x004055
C - - - - - 0x00F071 03:F061: 20 48 80  JSR sub_0x004058
C - - - - - 0x00F074 03:F064: 4C 55 DF  JMP loc_DF55



ofs_005_F067_06:
C - - - - - 0x00F077 03:F067: A0 00     LDY #$00
C - - - - - 0x00F079 03:F069: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F07B 03:F06B: 09 04     ORA #$04
C - - - - - 0x00F07D 03:F06D: 29 F7     AND #$F7
C - - - - - 0x00F07F 03:F06F: 91 61     STA (ram_0061),Y
C - - - - - 0x00F081 03:F071: 20 40 C9  JSR sub_C940
C - - - - - 0x00F084 03:F074: 20 77 C6  JSR sub_C677
C - - - - - 0x00F087 03:F077: A9 0A     LDA #con_anim_dodge
C - - - - - 0x00F089 03:F079: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F08C 03:F07C: A9 14     LDA #$14
C - - - - - 0x00F08E 03:F07E: 20 52 C6  JSR sub_C652
C - - - - - 0x00F091 03:F081: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F094 03:F084: A9 0A     LDA #con_anim_dodge
C - - - - - 0x00F096 03:F086: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F099 03:F089: A9 06     LDA #$06
C - - - - - 0x00F09B 03:F08B: 20 52 C6  JSR sub_C652
C - - - - - 0x00F09E 03:F08E: A0 00     LDY #$00
C - - - - - 0x00F0A0 03:F090: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F0A2 03:F092: 29 FB     AND #$FB
C - - - - - 0x00F0A4 03:F094: 91 61     STA (ram_0061),Y
C - - - - - 0x00F0A6 03:F096: A9 02     LDA #$02
C - - - - - 0x00F0A8 03:F098: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F0AB 03:F09B: A0 00     LDY #$00
C - - - - - 0x00F0AD 03:F09D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F0AF 03:F09F: 09 04     ORA #$04
C - - - - - 0x00F0B1 03:F0A1: 29 F7     AND #$F7
C - - - - - 0x00F0B3 03:F0A3: 91 61     STA (ram_0061),Y
C - - - - - 0x00F0B5 03:F0A5: 4C 55 DF  JMP loc_DF55



loc_F0A8:
ofs_005_F0A8_0F:
C D 3 - - - 0x00F0B8 03:F0A8: A0 00     LDY #$00
C - - - - - 0x00F0BA 03:F0AA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F0BC 03:F0AC: 29 FB     AND #$FB
C - - - - - 0x00F0BE 03:F0AE: 91 61     STA (ram_0061),Y
loc_F0B0:
C D 3 - - - 0x00F0C0 03:F0B0: A9 01     LDA #$01
C - - - - - 0x00F0C2 03:F0B2: 20 52 C6  JSR sub_C652
C - - - - - 0x00F0C5 03:F0B5: 20 37 C9  JSR sub_C937
C - - - - - 0x00F0C8 03:F0B8: A0 19     LDY #$19
C - - - - - 0x00F0CA 03:F0BA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F0CC 03:F0BC: A0 06     LDY #$06
C - - - - - 0x00F0CE 03:F0BE: D1 61     CMP (ram_0061),Y
C - - - - - 0x00F0D0 03:F0C0: D0 08     BNE bra_F0CA
C - - - - - 0x00F0D2 03:F0C2: A9 00     LDA #$00
C - - - - - 0x00F0D4 03:F0C4: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F0D7 03:F0C7: 4C 55 DF  JMP loc_DF55
bra_F0CA:
C - - - - - 0x00F0DA 03:F0CA: 20 7E C6  JSR sub_C67E
C - - - - - 0x00F0DD 03:F0CD: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00F0E0 03:F0D0: 4C B0 F0  JMP loc_F0B0



ofs_005_F0D3_10:
C - - - - - 0x00F0E3 03:F0D3: A0 00     LDY #$00
C - - - - - 0x00F0E5 03:F0D5: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F0E7 03:F0D7: 29 FB     AND #$FB
C - - - - - 0x00F0E9 03:F0D9: 91 61     STA (ram_0061),Y
loc_F0DB:
C D 3 - - - 0x00F0EB 03:F0DB: A9 01     LDA #$01
C - - - - - 0x00F0ED 03:F0DD: 20 52 C6  JSR sub_C652
C - - - - - 0x00F0F0 03:F0E0: 20 37 C9  JSR sub_C937
C - - - - - 0x00F0F3 03:F0E3: 20 67 E4  JSR sub_E467
C - - - - - 0x00F0F6 03:F0E6: 90 0B     BCC bra_F0F3
C - - - - - 0x00F0F8 03:F0E8: 20 77 C6  JSR sub_C677
C - - - - - 0x00F0FB 03:F0EB: A9 01     LDA #con_anim_01
C - - - - - 0x00F0FD 03:F0ED: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F100 03:F0F0: 4C DB F0  JMP loc_F0DB
bra_F0F3:
C - - - - - 0x00F103 03:F0F3: 20 7E C6  JSR sub_C67E
C - - - - - 0x00F106 03:F0F6: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00F109 03:F0F9: 4C DB F0  JMP loc_F0DB



ofs_005_F0FC_11:
C - - - - - 0x00F10C 03:F0FC: 20 77 C6  JSR sub_C677
loc_F0FF:
C D 3 - - - 0x00F10F 03:F0FF: AD A4 03  LDA ram_03A4
C - - - - - 0x00F112 03:F102: 29 20     AND #$20
C - - - - - 0x00F114 03:F104: F0 10     BEQ bra_F116
C - - - - - 0x00F116 03:F106: A9 01     LDA #$01
C - - - - - 0x00F118 03:F108: 20 52 C6  JSR sub_C652
C - - - - - 0x00F11B 03:F10B: 20 37 C9  JSR sub_C937
C - - - - - 0x00F11E 03:F10E: A9 01     LDA #con_anim_01
C - - - - - 0x00F120 03:F110: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F123 03:F113: 4C FF F0  JMP loc_F0FF
bra_F116:
C - - - - - 0x00F126 03:F116: A0 00     LDY #$00
C - - - - - 0x00F128 03:F118: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F12A 03:F11A: 29 FB     AND #$FB
C - - - - - 0x00F12C 03:F11C: 91 61     STA (ram_0061),Y
C - - - - - 0x00F12E 03:F11E: A9 00     LDA #$00
C - - - - - 0x00F130 03:F120: A0 06     LDY #$06
C - - - - - 0x00F132 03:F122: 91 61     STA (ram_0061),Y
bra_F124:
C - - - - - 0x00F134 03:F124: A9 01     LDA #$01
C - - - - - 0x00F136 03:F126: 20 52 C6  JSR sub_C652
C - - - - - 0x00F139 03:F129: 20 37 C9  JSR sub_C937
C - - - - - 0x00F13C 03:F12C: 20 7E C6  JSR sub_C67E
C - - - - - 0x00F13F 03:F12F: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00F142 03:F132: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F144 03:F134: C9 0B     CMP #$0B
C - - - - - 0x00F146 03:F136: A9 00     LDA #$00
C - - - - - 0x00F148 03:F138: 90 02     BCC bra_F13C
C - - - - - 0x00F14A 03:F13A: A9 0B     LDA #$0B
bra_F13C:
C - - - - - 0x00F14C 03:F13C: 4D AD 03  EOR ram_team_w_ball
C - - - - - 0x00F14F 03:F13F: D0 10     BNE bra_F151
C - - - - - 0x00F151 03:F141: A0 00     LDY #$00
C - - - - - 0x00F153 03:F143: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F155 03:F145: 29 FB     AND #$FB
C - - - - - 0x00F157 03:F147: 91 61     STA (ram_0061),Y
C - - - - - 0x00F159 03:F149: A9 00     LDA #$00
C - - - - - 0x00F15B 03:F14B: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F15E 03:F14E: 4C 55 DF  JMP loc_DF55
bra_F151:
C - - - - - 0x00F161 03:F151: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00F164 03:F154: 30 22     BMI bra_F178
C - - - - - 0x00F166 03:F156: A0 06     LDY #$06
C - - - - - 0x00F168 03:F158: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F16A 03:F15A: 18        CLC
C - - - - - 0x00F16B 03:F15B: 69 01     ADC #$01
C - - - - - 0x00F16D 03:F15D: 91 61     STA (ram_0061),Y
C - - - - - 0x00F16F 03:F15F: 4A        LSR
C - - - - - 0x00F170 03:F160: 90 16     BCC bra_F178
C - - - - - 0x00F172 03:F162: A9 16     LDA #$16
C - - - - - 0x00F174 03:F164: A2 20     LDX #$20
C - - - - - 0x00F176 03:F166: 20 43 FA  JSR sub_FA43
C - - - - - 0x00F179 03:F169: 90 B9     BCC bra_F124
C - - - - - 0x00F17B 03:F16B: AD 7E 03  LDA ram_random
C - - - - - 0x00F17E 03:F16E: C9 E0     CMP #$E0
C - - - - - 0x00F180 03:F170: 90 B2     BCC bra_F124
C - - - - - 0x00F182 03:F172: 20 40 C9  JSR sub_C940
C - - - - - 0x00F185 03:F175: 4C 76 E1  JMP loc_E176
bra_F178:
C - - - - - 0x00F188 03:F178: A9 16     LDA #$16
C - - - - - 0x00F18A 03:F17A: A2 0C     LDX #$0C
C - - - - - 0x00F18C 03:F17C: 20 43 FA  JSR sub_FA43
C - - - - - 0x00F18F 03:F17F: 90 A3     BCC bra_F124
C - - - - - 0x00F191 03:F181: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00F194 03:F184: 30 26     BMI bra_F1AC
C - - - - - 0x00F196 03:F186: AE 7E 03  LDX ram_random
C - - - - - 0x00F199 03:F189: E0 40     CPX #$40
C - - - - - 0x00F19B 03:F18B: 90 3E     BCC bra_F1CB
C - - - - - 0x00F19D 03:F18D: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00F1A0 03:F190: A0 00     LDY #$00
C - - - - - 0x00F1A2 03:F192: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1A4 03:F194: 29 FB     AND #$FB
C - - - - - 0x00F1A6 03:F196: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1A8 03:F198: A9 05     LDA #$05
C - - - - - 0x00F1AA 03:F19A: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F1AD 03:F19D: A0 00     LDY #$00
C - - - - - 0x00F1AF 03:F19F: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1B1 03:F1A1: 09 04     ORA #$04
C - - - - - 0x00F1B3 03:F1A3: 29 F7     AND #$F7
C - - - - - 0x00F1B5 03:F1A5: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1B7 03:F1A7: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F1B9 03:F1A9: 20 E3 CB  JSR sub_CBE3
bra_F1AC:
C - - - - - 0x00F1BC 03:F1AC: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F1BE 03:F1AE: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00F1C1 03:F1B1: A0 00     LDY #$00
C - - - - - 0x00F1C3 03:F1B3: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1C5 03:F1B5: 29 FB     AND #$FB
C - - - - - 0x00F1C7 03:F1B7: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1C9 03:F1B9: A9 02     LDA #$02
C - - - - - 0x00F1CB 03:F1BB: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F1CE 03:F1BE: A0 00     LDY #$00
C - - - - - 0x00F1D0 03:F1C0: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1D2 03:F1C2: 09 04     ORA #$04
C - - - - - 0x00F1D4 03:F1C4: 29 F7     AND #$F7
C - - - - - 0x00F1D6 03:F1C6: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1D8 03:F1C8: 4C 55 DF  JMP loc_DF55
bra_F1CB:
C - - - - - 0x00F1DB 03:F1CB: A0 00     LDY #$00
C - - - - - 0x00F1DD 03:F1CD: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1DF 03:F1CF: 29 FB     AND #$FB
C - - - - - 0x00F1E1 03:F1D1: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1E3 03:F1D3: A9 05     LDA #$05
C - - - - - 0x00F1E5 03:F1D5: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F1E8 03:F1D8: A0 00     LDY #$00
C - - - - - 0x00F1EA 03:F1DA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1EC 03:F1DC: 09 04     ORA #$04
C - - - - - 0x00F1EE 03:F1DE: 29 F7     AND #$F7
C - - - - - 0x00F1F0 03:F1E0: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1F2 03:F1E2: 4C 55 DF  JMP loc_DF55



ofs_005_F1E5_12:
C - - - - - 0x00F1F5 03:F1E5: A0 00     LDY #$00
C - - - - - 0x00F1F7 03:F1E7: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F1F9 03:F1E9: 09 04     ORA #$04
C - - - - - 0x00F1FB 03:F1EB: 29 F7     AND #$F7
C - - - - - 0x00F1FD 03:F1ED: 91 61     STA (ram_0061),Y
C - - - - - 0x00F1FF 03:F1EF: 20 77 C6  JSR sub_C677
bra_F1F2:
loc_F1F2:
C D 3 - - - 0x00F202 03:F1F2: A9 01     LDA #$01
C - - - - - 0x00F204 03:F1F4: 20 52 C6  JSR sub_C652
C - - - - - 0x00F207 03:F1F7: A0 00     LDY #$00
C - - - - - 0x00F209 03:F1F9: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F20B 03:F1FB: 29 01     AND #$01
C - - - - - 0x00F20D 03:F1FD: D0 F3     BNE bra_F1F2
C - - - - - 0x00F20F 03:F1FF: 20 37 C9  JSR sub_C937
C - - - - - 0x00F212 03:F202: A9 02     LDA #con_anim_02
C - - - - - 0x00F214 03:F204: A6 6F     LDX ram_plr_local_id
C - - - - - 0x00F216 03:F206: F0 06     BEQ bra_F20E
C - - - - - 0x00F218 03:F208: E0 0B     CPX #$0B
C - - - - - 0x00F21A 03:F20A: F0 02     BEQ bra_F20E
C - - - - - 0x00F21C 03:F20C: A9 01     LDA #con_anim_01
bra_F20E:
C - - - - - 0x00F21E 03:F20E: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F221 03:F211: 4C F2 F1  JMP loc_F1F2



ofs_005_F214_13:
C - - - - - 0x00F224 03:F214: A0 00     LDY #$00
C - - - - - 0x00F226 03:F216: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F228 03:F218: 09 04     ORA #$04
C - - - - - 0x00F22A 03:F21A: 29 F7     AND #$F7
C - - - - - 0x00F22C 03:F21C: 91 61     STA (ram_0061),Y
C - - - - - 0x00F22E 03:F21E: A9 01     LDA #$01
C - - - - - 0x00F230 03:F220: 8D E4 03  STA ram_03E4
C - - - - - 0x00F233 03:F223: 20 37 C9  JSR sub_C937
C - - - - - 0x00F236 03:F226: 20 77 C6  JSR sub_C677
C - - - - - 0x00F239 03:F229: AD 7E 03  LDA ram_random
C - - - - - 0x00F23C 03:F22C: 29 0F     AND #$0F
C - - - - - 0x00F23E 03:F22E: 69 16     ADC #$16
C - - - - - 0x00F240 03:F230: A0 06     LDY #$06
C - - - - - 0x00F242 03:F232: 91 61     STA (ram_0061),Y
bra_F234:
C - - - - - 0x00F244 03:F234: A9 01     LDA #$01
C - - - - - 0x00F246 03:F236: 20 52 C6  JSR sub_C652
C - - - - - 0x00F249 03:F239: A9 06     LDA #con_anim_06
C - - - - - 0x00F24B 03:F23B: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F24E 03:F23E: A2 00     LDX #$00
C - - - - - 0x00F250 03:F240: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00F253 03:F243: F0 13     BEQ bra_F258
C - - - - - 0x00F255 03:F245: E8        INX
C - - - - - 0x00F256 03:F246: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F259 03:F249: 30 0D     BMI bra_F258
C - - - - - 0x00F25B 03:F24B: A0 06     LDY #$06
C - - - - - 0x00F25D 03:F24D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F25F 03:F24F: 38        SEC
C - - - - - 0x00F260 03:F250: E9 01     SBC #$01
C - - - - - 0x00F262 03:F252: 91 61     STA (ram_0061),Y
C - - - - - 0x00F264 03:F254: F0 09     BEQ bra_F25F
C - - - - - 0x00F266 03:F256: D0 DC     BNE bra_F234
bra_F258:
C - - - - - 0x00F268 03:F258: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F26A 03:F25A: 3D 26 00  AND a: ram_btn_press,X
C - - - - - 0x00F26D 03:F25D: F0 D5     BEQ bra_F234
bra_F25F:
C - - - - - 0x00F26F 03:F25F: A9 0C     LDA #con_sfx_whistle_referee
C - - - - - 0x00F271 03:F261: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F274 03:F264: A0 00     LDY #$00
C - - - - - 0x00F276 03:F266: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F278 03:F268: 29 FB     AND #$FB
C - - - - - 0x00F27A 03:F26A: 91 61     STA (ram_0061),Y
C - - - - - 0x00F27C 03:F26C: A9 02     LDA #$02
C - - - - - 0x00F27E 03:F26E: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F281 03:F271: A0 00     LDY #$00
C - - - - - 0x00F283 03:F273: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F285 03:F275: 09 04     ORA #$04
C - - - - - 0x00F287 03:F277: 29 F7     AND #$F7
C - - - - - 0x00F289 03:F279: 91 61     STA (ram_0061),Y
C - - - - - 0x00F28B 03:F27B: AD 2A 04  LDA ram_plr_wo_ball
C - - - - - 0x00F28E 03:F27E: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00F291 03:F281: A0 00     LDY #$00
C - - - - - 0x00F293 03:F283: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F295 03:F285: 29 FB     AND #$FB
C - - - - - 0x00F297 03:F287: 91 61     STA (ram_0061),Y
C - - - - - 0x00F299 03:F289: A9 04     LDA #$04
C - - - - - 0x00F29B 03:F28B: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F29E 03:F28E: AD 29 04  LDA ram_plr_w_ball
C - - - - - 0x00F2A1 03:F291: 20 E3 CB  JSR sub_CBE3
C - - - - - 0x00F2A4 03:F294: A9 80     LDA #$80
C - - - - - 0x00F2A6 03:F296: 8D 2C 04  STA ram_042C
C - - - - - 0x00F2A9 03:F299: AD A4 03  LDA ram_03A4
C - - - - - 0x00F2AC 03:F29C: 29 DF     AND #$DF
C - - - - - 0x00F2AE 03:F29E: 8D A4 03  STA ram_03A4
C - - - - - 0x00F2B1 03:F2A1: 4C 55 DF  JMP loc_DF55



loc_F2A4:
ofs_005_F2A4_14:
C D 3 - - - 0x00F2B4 03:F2A4: A9 01     LDA #$01
C - - - - - 0x00F2B6 03:F2A6: 20 52 C6  JSR sub_C652
C - - - - - 0x00F2B9 03:F2A9: 20 37 C9  JSR sub_C937
C - - - - - 0x00F2BC 03:F2AC: A0 19     LDY #$19
C - - - - - 0x00F2BE 03:F2AE: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F2C0 03:F2B0: A0 06     LDY #$06
C - - - - - 0x00F2C2 03:F2B2: D1 61     CMP (ram_0061),Y
C - - - - - 0x00F2C4 03:F2B4: D0 10     BNE bra_F2C6
C - - - - - 0x00F2C6 03:F2B6: A0 00     LDY #$00
C - - - - - 0x00F2C8 03:F2B8: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F2CA 03:F2BA: 29 FB     AND #$FB
C - - - - - 0x00F2CC 03:F2BC: 91 61     STA (ram_0061),Y
C - - - - - 0x00F2CE 03:F2BE: A9 00     LDA #$00
C - - - - - 0x00F2D0 03:F2C0: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F2D3 03:F2C3: 4C 55 DF  JMP loc_DF55
bra_F2C6:
C - - - - - 0x00F2D6 03:F2C6: 20 7E C6  JSR sub_C67E
C - - - - - 0x00F2D9 03:F2C9: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00F2DC 03:F2CC: 4C A4 F2  JMP loc_F2A4



ofs_005_F2CF_15:    ; bzk optimize
C - - - - - 0x00F2DF 03:F2CF: 4C A8 F0  JMP loc_F0A8



ofs_005_F2D2_07:
C - - - - - 0x00F2E2 03:F2D2: A0 00     LDY #$00
C - - - - - 0x00F2E4 03:F2D4: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F2E6 03:F2D6: 09 04     ORA #$04
C - - - - - 0x00F2E8 03:F2D8: 29 F7     AND #$F7
C - - - - - 0x00F2EA 03:F2DA: 91 61     STA (ram_0061),Y
C - - - - - 0x00F2EC 03:F2DC: 20 BA DF  JSR sub_DFBA
C - - - - - 0x00F2EF 03:F2DF: A9 03     LDA #con_sfx_shot
C - - - - - 0x00F2F1 03:F2E1: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F2F4 03:F2E4: 20 77 C6  JSR sub_C677
C - - - - - 0x00F2F7 03:F2E7: A9 0B     LDA #con_anim_shoot_normal
C - - - - - 0x00F2F9 03:F2E9: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F2FC 03:F2EC: A9 01     LDA #$01
C - - - - - 0x00F2FE 03:F2EE: 20 52 C6  JSR sub_C652
C - - - - - 0x00F301 03:F2F1: 20 28 F4  JSR sub_F428
C - - - - - 0x00F304 03:F2F4: A9 02     LDA #$02
C - - - - - 0x00F306 03:F2F6: 20 52 C6  JSR sub_C652
C - - - - - 0x00F309 03:F2F9: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F30C 03:F2FC: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F30F 03:F2FF: A9 0B     LDA #con_anim_shoot_normal
C - - - - - 0x00F311 03:F301: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F314 03:F304: A9 30     LDA #$30
C - - - - - 0x00F316 03:F306: 20 52 C6  JSR sub_C652
C - - - - - 0x00F319 03:F309: A0 00     LDY #$00
C - - - - - 0x00F31B 03:F30B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F31D 03:F30D: 29 FB     AND #$FB
C - - - - - 0x00F31F 03:F30F: 91 61     STA (ram_0061),Y
C - - - - - 0x00F321 03:F311: A9 00     LDA #$00
C - - - - - 0x00F323 03:F313: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F326 03:F316: 4C 55 DF  JMP loc_DF55



ofs_005_F319_08:
C - - - - - 0x00F329 03:F319: A0 00     LDY #$00
C - - - - - 0x00F32B 03:F31B: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F32D 03:F31D: 09 04     ORA #$04
C - - - - - 0x00F32F 03:F31F: 29 F7     AND #$F7
C - - - - - 0x00F331 03:F321: 91 61     STA (ram_0061),Y
C - - - - - 0x00F333 03:F323: 20 BA DF  JSR sub_DFBA
C - - - - - 0x00F336 03:F326: A9 03     LDA #con_sfx_shot
C - - - - - 0x00F338 03:F328: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F33B 03:F32B: 20 77 C6  JSR sub_C677
C - - - - - 0x00F33E 03:F32E: A9 0C     LDA #con_anim_shoot_volley
C - - - - - 0x00F340 03:F330: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F343 03:F333: A9 01     LDA #$01
C - - - - - 0x00F345 03:F335: 20 52 C6  JSR sub_C652
C - - - - - 0x00F348 03:F338: 20 28 F4  JSR sub_F428
C - - - - - 0x00F34B 03:F33B: A9 02     LDA #$02
C - - - - - 0x00F34D 03:F33D: 20 52 C6  JSR sub_C652
C - - - - - 0x00F350 03:F340: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F353 03:F343: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F356 03:F346: A9 0C     LDA #con_anim_shoot_volley
C - - - - - 0x00F358 03:F348: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F35B 03:F34B: A9 20     LDA #$20
C - - - - - 0x00F35D 03:F34D: 20 52 C6  JSR sub_C652
C - - - - - 0x00F360 03:F350: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F363 03:F353: A9 0C     LDA #con_anim_shoot_volley
C - - - - - 0x00F365 03:F355: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F368 03:F358: A9 18     LDA #$18
C - - - - - 0x00F36A 03:F35A: 20 52 C6  JSR sub_C652
C - - - - - 0x00F36D 03:F35D: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F370 03:F360: A9 0C     LDA #con_anim_shoot_volley
C - - - - - 0x00F372 03:F362: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F375 03:F365: A9 0C     LDA #$0C
C - - - - - 0x00F377 03:F367: 20 52 C6  JSR sub_C652
C - - - - - 0x00F37A 03:F36A: A0 00     LDY #$00
C - - - - - 0x00F37C 03:F36C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F37E 03:F36E: 29 FB     AND #$FB
C - - - - - 0x00F380 03:F370: 91 61     STA (ram_0061),Y
C - - - - - 0x00F382 03:F372: A9 00     LDA #$00
C - - - - - 0x00F384 03:F374: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F387 03:F377: 4C 55 DF  JMP loc_DF55



ofs_005_F37A_09:    ; bzk optimize
- - - - - - 0x00F38A 03:F37A: 4C 55 DF  JMP loc_DF55



ofs_005_F37D_0A:
C - - - - - 0x00F38D 03:F37D: A0 00     LDY #$00
C - - - - - 0x00F38F 03:F37F: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F391 03:F381: 09 04     ORA #$04
C - - - - - 0x00F393 03:F383: 29 F7     AND #$F7
C - - - - - 0x00F395 03:F385: 91 61     STA (ram_0061),Y
C - - - - - 0x00F397 03:F387: 20 BA DF  JSR sub_DFBA
C - - - - - 0x00F39A 03:F38A: A9 04     LDA #con_sfx_fast_shot
C - - - - - 0x00F39C 03:F38C: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F39F 03:F38F: A0 13     LDY #$13
C - - - - - 0x00F3A1 03:F391: AD E6 03  LDA ram_03E6
C - - - - - 0x00F3A4 03:F394: 38        SEC
C - - - - - 0x00F3A5 03:F395: F1 61     SBC (ram_0061),Y
C - - - - - 0x00F3A7 03:F397: B0 04     BCS bra_F39D
C - - - - - 0x00F3A9 03:F399: 49 FF     EOR #$FF
C - - - - - 0x00F3AB 03:F39B: 69 01     ADC #$01
bra_F39D:
C - - - - - 0x00F3AD 03:F39D: C9 40     CMP #$40
C - - - - - 0x00F3AF 03:F39F: B0 03     BCS bra_F3A4
C - - - - - 0x00F3B1 03:F3A1: 4C D9 F3  JMP loc_F3D9
bra_F3A4:
C - - - - - 0x00F3B4 03:F3A4: 20 77 C6  JSR sub_C677
C - - - - - 0x00F3B7 03:F3A7: A9 0D     LDA #con_anim_shoot_head
C - - - - - 0x00F3B9 03:F3A9: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F3BC 03:F3AC: A9 01     LDA #$01
C - - - - - 0x00F3BE 03:F3AE: 20 52 C6  JSR sub_C652
C - - - - - 0x00F3C1 03:F3B1: 20 28 F4  JSR sub_F428
C - - - - - 0x00F3C4 03:F3B4: A9 02     LDA #$02
C - - - - - 0x00F3C6 03:F3B6: 20 52 C6  JSR sub_C652
C - - - - - 0x00F3C9 03:F3B9: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F3CC 03:F3BC: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F3CF 03:F3BF: A9 0D     LDA #con_anim_shoot_head
C - - - - - 0x00F3D1 03:F3C1: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F3D4 03:F3C4: A9 30     LDA #$30
C - - - - - 0x00F3D6 03:F3C6: 20 52 C6  JSR sub_C652
C - - - - - 0x00F3D9 03:F3C9: A0 00     LDY #$00
C - - - - - 0x00F3DB 03:F3CB: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F3DD 03:F3CD: 29 FB     AND #$FB
C - - - - - 0x00F3DF 03:F3CF: 91 61     STA (ram_0061),Y
C - - - - - 0x00F3E1 03:F3D1: A9 00     LDA #$00
C - - - - - 0x00F3E3 03:F3D3: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F3E6 03:F3D6: 4C 55 DF  JMP loc_DF55



loc_F3D9:
ofs_005_F3D9_0B:
C D 3 - - - 0x00F3E9 03:F3D9: 20 77 C6  JSR sub_C677
C - - - - - 0x00F3EC 03:F3DC: A9 0E     LDA #con_anim_0E
C - - - - - 0x00F3EE 03:F3DE: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F3F1 03:F3E1: A9 01     LDA #$01
C - - - - - 0x00F3F3 03:F3E3: 20 52 C6  JSR sub_C652
C - - - - - 0x00F3F6 03:F3E6: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F3F9 03:F3E9: A9 0E     LDA #con_anim_0E
C - - - - - 0x00F3FB 03:F3EB: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F3FE 03:F3EE: A9 01     LDA #$01
C - - - - - 0x00F400 03:F3F0: 20 52 C6  JSR sub_C652
C - - - - - 0x00F403 03:F3F3: 20 28 F4  JSR sub_F428
C - - - - - 0x00F406 03:F3F6: A9 02     LDA #$02
C - - - - - 0x00F408 03:F3F8: 20 52 C6  JSR sub_C652
C - - - - - 0x00F40B 03:F3FB: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F40E 03:F3FE: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F411 03:F401: A9 0E     LDA #con_anim_0E
C - - - - - 0x00F413 03:F403: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F416 03:F406: A9 20     LDA #$20
C - - - - - 0x00F418 03:F408: 20 52 C6  JSR sub_C652
C - - - - - 0x00F41B 03:F40B: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F41E 03:F40E: A9 0E     LDA #con_anim_0E
C - - - - - 0x00F420 03:F410: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F423 03:F413: A9 18     LDA #$18
C - - - - - 0x00F425 03:F415: 20 52 C6  JSR sub_C652
C - - - - - 0x00F428 03:F418: A0 00     LDY #$00
C - - - - - 0x00F42A 03:F41A: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F42C 03:F41C: 29 FB     AND #$FB
C - - - - - 0x00F42E 03:F41E: 91 61     STA (ram_0061),Y
C - - - - - 0x00F430 03:F420: A9 00     LDA #$00
C - - - - - 0x00F432 03:F422: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F435 03:F425: 4C 55 DF  JMP loc_DF55



sub_F428:
C - - - - - 0x00F438 03:F428: A0 13     LDY #$13
C - - - - - 0x00F43A 03:F42A: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F43C 03:F42C: 8D E6 03  STA ram_03E6
C - - - - - 0x00F43F 03:F42F: A9 00     LDA #$00
C - - - - - 0x00F441 03:F431: 8D 1D 04  STA ram_041D
C - - - - - 0x00F444 03:F434: A9 04     LDA #$04
C - - - - - 0x00F446 03:F436: 8D 1E 04  STA ram_041E
C - - - - - 0x00F449 03:F439: A9 80     LDA #$80
C - - - - - 0x00F44B 03:F43B: 8D 1B 04  STA ram_041B
C - - - - - 0x00F44E 03:F43E: A9 00     LDA #$00
C - - - - - 0x00F450 03:F440: 8D 1C 04  STA ram_041C
C - - - - - 0x00F453 03:F443: A9 80     LDA #$80
C - - - - - 0x00F455 03:F445: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00F458 03:F448: A2 09     LDX #$09
C - - - - - 0x00F45A 03:F44A: A9 5A     LDA #$5A
C - - - - - 0x00F45C 03:F44C: 95 01     STA ram_0001,X
C - - - - - 0x00F45E 03:F44E: A9 0C     LDA #$0C
C - - - - - 0x00F460 03:F450: 95 02     STA ram_0002,X
C - - - - - 0x00F462 03:F452: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00F464 03:F454: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00F466 03:F456: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00F469 03:F459: 60        RTS



; !!!
ofs_005_F45A_0C:
C - - - - - 0x00F46A 03:F45A: A0 00     LDY #$00
C - - - - - 0x00F46C 03:F45C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F46E 03:F45E: 09 04     ORA #$04
C - - - - - 0x00F470 03:F460: 29 F7     AND #$F7
C - - - - - 0x00F472 03:F462: 91 61     STA (ram_0061),Y
C - - - - - 0x00F474 03:F464: 20 77 C6  JSR sub_C677
C - - - - - 0x00F477 03:F467: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F479 03:F469: 20 2B C9  JSR sub_C92B
C - - - - - 0x00F47C 03:F46C: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00F47F 03:F46F: F0 15     BEQ bra_F486
C - - - - - 0x00F481 03:F471: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F484 03:F474: 30 10     BMI bra_F486
C - - - - - 0x00F486 03:F476: 48        PHA
C - - - - - 0x00F487 03:F477: A9 02     LDA #$02
C - - - - - 0x00F489 03:F479: 85 67     STA ram_0067
C - - - - - 0x00F48B 03:F47B: A9 03     LDA #$03
C - - - - - 0x00F48D 03:F47D: 85 68     STA ram_0068
C - - - - - 0x00F48F 03:F47F: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00F492 03:F482: 68        PLA
C - - - - - 0x00F493 03:F483: 20 3C 80  JSR sub_0x00404C
bra_F486:
loc_F486:
C D 3 - - - 0x00F496 03:F486: A9 01     LDA #$01
C - - - - - 0x00F498 03:F488: 20 52 C6  JSR sub_C652
C - - - - - 0x00F49B 03:F48B: A9 02     LDA #$02
C - - - - - 0x00F49D 03:F48D: 20 9E C7  JSR sub_C79E
C - - - - - 0x00F4A0 03:F490: A9 0F     LDA #con_anim_throw_in
C - - - - - 0x00F4A2 03:F492: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F4A5 03:F495: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00F4A8 03:F498: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00F4AB 03:F49B: F0 0C     BEQ bra_F4A9
C - - - - - 0x00F4AD 03:F49D: A9 00     LDA #$00
C - - - - - 0x00F4AF 03:F49F: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F4B2 03:F4A2: 10 05     BPL bra_F4A9
C - - - - - 0x00F4B4 03:F4A4: AD 25 00  LDA a: ram_btn_hold + $01
C - - - - - 0x00F4B7 03:F4A7: A2 01     LDX #$01
bra_F4A9:
C - - - - - 0x00F4B9 03:F4A9: 86 2B     STX ram_002B
C - - - - - 0x00F4BB 03:F4AB: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00F4BD 03:F4AD: 85 2A     STA ram_002A    ; copy btn_hold
C - - - - - 0x00F4BF 03:F4AF: F0 2C     BEQ bra_F4DD
C - - - - - 0x00F4C1 03:F4B1: A2 01     LDX #$01
C - - - - - 0x00F4C3 03:F4B3: A0 07     LDY #$07
C - - - - - 0x00F4C5 03:F4B5: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F4C7 03:F4B7: F0 01     BEQ bra_F4BA
C - - - - - 0x00F4C9 03:F4B9: E8        INX ; 02 con_btn_Left
bra_F4BA:
C - - - - - 0x00F4CA 03:F4BA: 8A        TXA
C - - - - - 0x00F4CB 03:F4BB: 2D 2A 00  AND a: ram_002A    ; copy btn_hold
C - - - - - 0x00F4CE 03:F4BE: D0 11     BNE bra_F4D1
C - - - - - 0x00F4D0 03:F4C0: A5 2A     LDA ram_002A    ; copy btn_hold
C - - - - - 0x00F4D2 03:F4C2: 29 0C     AND #con_btns_UD
C - - - - - 0x00F4D4 03:F4C4: F0 17     BEQ bra_F4DD
C - - - - - 0x00F4D6 03:F4C6: A5 2A     LDA ram_002A    ; copy btn_hold
C - - - - - 0x00F4D8 03:F4C8: 29 FC     AND #con_btns_LR ^ $FF
C - - - - - 0x00F4DA 03:F4CA: 85 2A     STA ram_002A    ; copy btn_hold
C - - - - - 0x00F4DC 03:F4CC: 8A        TXA
C - - - - - 0x00F4DD 03:F4CD: 05 2A     ORA ram_002A    ; copy btn_hold
C - - - - - 0x00F4DF 03:F4CF: 85 2A     STA ram_002A    ; copy btn_hold
bra_F4D1:
C - - - - - 0x00F4E1 03:F4D1: A5 2A     LDA ram_002A    ; copy btn_hold
C - - - - - 0x00F4E3 03:F4D3: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00F4E5 03:F4D5: AA        TAX
C - - - - - 0x00F4E6 03:F4D6: BD 83 E0  LDA tbl_E083,X
C - - - - - 0x00F4E9 03:F4D9: A0 13     LDY #$13
C - - - - - 0x00F4EB 03:F4DB: 91 61     STA (ram_0061),Y
bra_F4DD:
C - - - - - 0x00F4ED 03:F4DD: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F4EF 03:F4DF: A6 2B     LDX ram_002B
C - - - - - 0x00F4F1 03:F4E1: F0 13     BEQ bra_F4F6
C - - - - - 0x00F4F3 03:F4E3: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F4F6 03:F4E6: 30 0E     BMI bra_F4F6
C - - - - - 0x00F4F8 03:F4E8: A0 0C     LDY #$0C
C - - - - - 0x00F4FA 03:F4EA: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F4FC 03:F4EC: 38        SEC
C - - - - - 0x00F4FD 03:F4ED: E9 01     SBC #$01
C - - - - - 0x00F4FF 03:F4EF: 91 61     STA (ram_0061),Y
C - - - - - 0x00F501 03:F4F1: F0 08     BEQ bra_F4FB
C - - - - - 0x00F503 03:F4F3: 4C 86 F4  JMP loc_F486
bra_F4F6:
C - - - - - 0x00F506 03:F4F6: 3D 26 00  AND a: ram_btn_press,X
C - - - - - 0x00F509 03:F4F9: F0 8B     BEQ bra_F486
bra_F4FB:
C - - - - - 0x00F50B 03:F4FB: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F50E 03:F4FE: A9 0F     LDA #con_anim_throw_in
C - - - - - 0x00F510 03:F500: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F513 03:F503: A9 03     LDA #$03
C - - - - - 0x00F515 03:F505: 20 9E C7  JSR sub_C79E
C - - - - - 0x00F518 03:F508: A9 06     LDA #con_sfx_throw
C - - - - - 0x00F51A 03:F50A: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F51D 03:F50D: A9 00     LDA #$00
C - - - - - 0x00F51F 03:F50F: 8D 1D 04  STA ram_041D
C - - - - - 0x00F522 03:F512: A9 02     LDA #$02
C - - - - - 0x00F524 03:F514: 8D 1E 04  STA ram_041E
C - - - - - 0x00F527 03:F517: A0 13     LDY #$13
C - - - - - 0x00F529 03:F519: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F52B 03:F51B: 8D E6 03  STA ram_03E6
C - - - - - 0x00F52E 03:F51E: A9 40     LDA #$40
C - - - - - 0x00F530 03:F520: 8D 1B 04  STA ram_041B
C - - - - - 0x00F533 03:F523: A9 00     LDA #$00
C - - - - - 0x00F535 03:F525: 8D 1C 04  STA ram_041C
C - - - - - 0x00F538 03:F528: A2 09     LDX #$09
C - - - - - 0x00F53A 03:F52A: A9 5A     LDA #$5A
C - - - - - 0x00F53C 03:F52C: 95 01     STA ram_0001,X
C - - - - - 0x00F53E 03:F52E: A9 0C     LDA #$0C
C - - - - - 0x00F540 03:F530: 95 02     STA ram_0002,X
C - - - - - 0x00F542 03:F532: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00F544 03:F534: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00F546 03:F536: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00F549 03:F539: A9 80     LDA #$80
C - - - - - 0x00F54B 03:F53B: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00F54E 03:F53E: A9 02     LDA #$02
C - - - - - 0x00F550 03:F540: 20 52 C6  JSR sub_C652
C - - - - - 0x00F553 03:F543: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F556 03:F546: A9 10     LDA #$10
C - - - - - 0x00F558 03:F548: 20 52 C6  JSR sub_C652
C - - - - - 0x00F55B 03:F54B: A0 00     LDY #$00
C - - - - - 0x00F55D 03:F54D: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F55F 03:F54F: 29 FB     AND #$FB
C - - - - - 0x00F561 03:F551: 91 61     STA (ram_0061),Y
C - - - - - 0x00F563 03:F553: A9 00     LDA #$00
C - - - - - 0x00F565 03:F555: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F568 03:F558: A9 80     LDA #$80
C - - - - - 0x00F56A 03:F55A: 0D 2C 04  ORA ram_042C
C - - - - - 0x00F56D 03:F55D: 8D 2C 04  STA ram_042C
C - - - - - 0x00F570 03:F560: 4C 55 DF  JMP loc_DF55



ofs_005_F563_0D:
ofs_005_F563_16:
C - - - - - 0x00F573 03:F563: A0 00     LDY #$00
C - - - - - 0x00F575 03:F565: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F577 03:F567: 09 04     ORA #$04
C - - - - - 0x00F579 03:F569: 29 F7     AND #$F7
C - - - - - 0x00F57B 03:F56B: 91 61     STA (ram_0061),Y
C - - - - - 0x00F57D 03:F56D: 20 77 C6  JSR sub_C677
C - - - - - 0x00F580 03:F570: A0 0C     LDY #$0C
C - - - - - 0x00F582 03:F572: A9 00     LDA #$00
C - - - - - 0x00F584 03:F574: 91 61     STA (ram_0061),Y
C - - - - - 0x00F586 03:F576: 85 99     STA ram_0099
C - - - - - 0x00F588 03:F578: A9 00     LDA #$00
C - - - - - 0x00F58A 03:F57A: 8D 24 04  STA ram_ball_Z_lo
C - - - - - 0x00F58D 03:F57D: A9 01     LDA #$01
C - - - - - 0x00F58F 03:F57F: 8D E4 03  STA ram_03E4
C - - - - - 0x00F592 03:F582: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F594 03:F584: 20 2B C9  JSR sub_C92B
C - - - - - 0x00F597 03:F587: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F599 03:F589: 20 B9 C6  JSR sub_C6B9
C - - - - - 0x00F59C 03:F58C: 20 80 E5  JSR sub_E580
bra_F58F:
C - - - - - 0x00F59F 03:F58F: A9 01     LDA #$01
C - - - - - 0x00F5A1 03:F591: 20 52 C6  JSR sub_C652
C - - - - - 0x00F5A4 03:F594: A0 12     LDY #$12
C - - - - - 0x00F5A6 03:F596: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F5A8 03:F598: C9 0D     CMP #$0D
C - - - - - 0x00F5AA 03:F59A: D0 0B     BNE bra_F5A7
C - - - - - 0x00F5AC 03:F59C: 20 BA DF  JSR sub_DFBA
C - - - - - 0x00F5AF 03:F59F: A9 00     LDA #$00
C - - - - - 0x00F5B1 03:F5A1: 20 9E C7  JSR sub_C79E
C - - - - - 0x00F5B4 03:F5A4: 4C BB F5  JMP loc_F5BB
bra_F5A7:
C - - - - - 0x00F5B7 03:F5A7: E6 99     INC ram_0099
C - - - - - 0x00F5B9 03:F5A9: F0 3D     BEQ bra_F5E8
C - - - - - 0x00F5BB 03:F5AB: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00F5BE 03:F5AE: 20 93 E0  JSR sub_E093
C - - - - - 0x00F5C1 03:F5B1: 90 08     BCC bra_F5BB
C - - - - - 0x00F5C3 03:F5B3: A9 12     LDA #con_anim_12
C - - - - - 0x00F5C5 03:F5B5: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F5C8 03:F5B8: 4C C0 F5  JMP loc_F5C0
bra_F5BB:
loc_F5BB:
C D 3 - - - 0x00F5CB 03:F5BB: A9 10     LDA #con_anim_10
C - - - - - 0x00F5CD 03:F5BD: 20 1E 80  JSR sub_0x00402E_set_animation
loc_F5C0:
C D 3 - - - 0x00F5D0 03:F5C0: A9 04     LDA #$04
C - - - - - 0x00F5D2 03:F5C2: 20 9E C7  JSR sub_C79E
C - - - - - 0x00F5D5 03:F5C5: 20 ED DC  JSR sub_DCED
C - - - - - 0x00F5D8 03:F5C8: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00F5DB 03:F5CB: F0 14     BEQ bra_F5E1
C - - - - - 0x00F5DD 03:F5CD: A2 01     LDX #$01
C - - - - - 0x00F5DF 03:F5CF: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F5E2 03:F5D2: 30 0D     BMI bra_F5E1
C - - - - - 0x00F5E4 03:F5D4: A0 06     LDY #$06
C - - - - - 0x00F5E6 03:F5D6: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F5E8 03:F5D8: 38        SEC
C - - - - - 0x00F5E9 03:F5D9: E9 01     SBC #$01
C - - - - - 0x00F5EB 03:F5DB: 91 61     STA (ram_0061),Y
C - - - - - 0x00F5ED 03:F5DD: D0 B0     BNE bra_F58F
C - - - - - 0x00F5EF 03:F5DF: F0 14     BEQ bra_F5F5
bra_F5E1:
C - - - - - 0x00F5F1 03:F5E1: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F5F3 03:F5E3: 3D 26 00  AND a: ram_btn_press,X
C - - - - - 0x00F5F6 03:F5E6: F0 A7     BEQ bra_F58F
bra_F5E8:
C - - - - - 0x00F5F8 03:F5E8: A9 20     LDA #$20
C - - - - - 0x00F5FA 03:F5EA: 8D 1B 04  STA ram_041B
C - - - - - 0x00F5FD 03:F5ED: A9 01     LDA #$01
C - - - - - 0x00F5FF 03:F5EF: 8D 1C 04  STA ram_041C
C - - - - - 0x00F602 03:F5F2: 4C 00 F6  JMP loc_F600
bra_F5F5:
C - - - - - 0x00F605 03:F5F5: AD 7E 03  LDA ram_random
C - - - - - 0x00F608 03:F5F8: 29 07     AND #$07
C - - - - - 0x00F60A 03:F5FA: 18        CLC
C - - - - - 0x00F60B 03:F5FB: 69 0E     ADC #$0E
C - - - - - 0x00F60D 03:F5FD: 20 7D EA  JSR sub_EA7D
loc_F600:
C D 3 - - - 0x00F610 03:F600: 20 77 C6  JSR sub_C677
C - - - - - 0x00F613 03:F603: A9 11     LDA #con_anim_11
C - - - - - 0x00F615 03:F605: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F618 03:F608: A9 05     LDA #$05
C - - - - - 0x00F61A 03:F60A: 20 9E C7  JSR sub_C79E
C - - - - - 0x00F61D 03:F60D: A9 08     LDA #$08
C - - - - - 0x00F61F 03:F60F: 20 52 C6  JSR sub_C652
C - - - - - 0x00F622 03:F612: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F625 03:F615: A9 11     LDA #con_anim_11
C - - - - - 0x00F627 03:F617: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F62A 03:F61A: A9 04     LDA #$04
C - - - - - 0x00F62C 03:F61C: 20 52 C6  JSR sub_C652
C - - - - - 0x00F62F 03:F61F: A9 03     LDA #con_sfx_shot
C - - - - - 0x00F631 03:F621: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F634 03:F624: A9 00     LDA #$00
C - - - - - 0x00F636 03:F626: 8D 1D 04  STA ram_041D
C - - - - - 0x00F639 03:F629: A9 02     LDA #$02
C - - - - - 0x00F63B 03:F62B: 8D 1E 04  STA ram_041E
C - - - - - 0x00F63E 03:F62E: A0 13     LDY #$13
C - - - - - 0x00F640 03:F630: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F642 03:F632: 8D E6 03  STA ram_03E6
C - - - - - 0x00F645 03:F635: A2 09     LDX #$09
C - - - - - 0x00F647 03:F637: A9 5A     LDA #$5A
C - - - - - 0x00F649 03:F639: 95 01     STA ram_0001,X
C - - - - - 0x00F64B 03:F63B: A9 0C     LDA #$0C
C - - - - - 0x00F64D 03:F63D: 95 02     STA ram_0002,X
C - - - - - 0x00F64F 03:F63F: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00F651 03:F641: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00F653 03:F643: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00F656 03:F646: A9 80     LDA #$80
C - - - - - 0x00F658 03:F648: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00F65B 03:F64B: AD 2C 04  LDA ram_042C
C - - - - - 0x00F65E 03:F64E: 29 BF     AND #$BF
C - - - - - 0x00F660 03:F650: 8D 2C 04  STA ram_042C
C - - - - - 0x00F663 03:F653: A9 02     LDA #$02
C - - - - - 0x00F665 03:F655: 20 52 C6  JSR sub_C652
C - - - - - 0x00F668 03:F658: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F66B 03:F65B: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F66E 03:F65E: A9 11     LDA #con_anim_11
C - - - - - 0x00F670 03:F660: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F673 03:F663: A9 2E     LDA #$2E
C - - - - - 0x00F675 03:F665: 20 52 C6  JSR sub_C652
C - - - - - 0x00F678 03:F668: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F67B 03:F66B: A9 11     LDA #con_anim_11
C - - - - - 0x00F67D 03:F66D: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F680 03:F670: A9 10     LDA #$10
C - - - - - 0x00F682 03:F672: 20 52 C6  JSR sub_C652
C - - - - - 0x00F685 03:F675: A0 00     LDY #$00
C - - - - - 0x00F687 03:F677: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F689 03:F679: 29 FB     AND #$FB
C - - - - - 0x00F68B 03:F67B: 91 61     STA (ram_0061),Y
C - - - - - 0x00F68D 03:F67D: A9 00     LDA #$00
C - - - - - 0x00F68F 03:F67F: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F692 03:F682: 4C 55 DF  JMP loc_DF55



ofs_005_F685_0E:
C - - - - - 0x00F695 03:F685: A0 00     LDY #$00
C - - - - - 0x00F697 03:F687: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F699 03:F689: 09 04     ORA #$04
C - - - - - 0x00F69B 03:F68B: 29 F7     AND #$F7
C - - - - - 0x00F69D 03:F68D: 91 61     STA (ram_0061),Y
C - - - - - 0x00F69F 03:F68F: 20 77 C6  JSR sub_C677
C - - - - - 0x00F6A2 03:F692: A5 6F     LDA ram_plr_local_id
C - - - - - 0x00F6A4 03:F694: 20 2B C9  JSR sub_C92B
C - - - - - 0x00F6A7 03:F697: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00F6AA 03:F69A: F0 11     BEQ bra_F6AD
C - - - - - 0x00F6AC 03:F69C: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F6AF 03:F69F: 30 0C     BMI bra_F6AD
C - - - - - 0x00F6B1 03:F6A1: A0 06     LDY #$06
C - - - - - 0x00F6B3 03:F6A3: AD 7E 03  LDA ram_random
C - - - - - 0x00F6B6 03:F6A6: 29 1F     AND #$1F
C - - - - - 0x00F6B8 03:F6A8: 18        CLC
C - - - - - 0x00F6B9 03:F6A9: 69 08     ADC #$08
C - - - - - 0x00F6BB 03:F6AB: 91 61     STA (ram_0061),Y
bra_F6AD:
loc_F6AD:
C D 3 - - - 0x00F6BD 03:F6AD: A9 01     LDA #$01
C - - - - - 0x00F6BF 03:F6AF: 20 52 C6  JSR sub_C652
C - - - - - 0x00F6C2 03:F6B2: A9 01     LDA #con_anim_01
C - - - - - 0x00F6C4 03:F6B4: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F6C7 03:F6B7: AD 24 00  LDA a: ram_btn_hold
C - - - - - 0x00F6CA 03:F6BA: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00F6CD 03:F6BD: F0 0D     BEQ bra_F6CC
C - - - - - 0x00F6CF 03:F6BF: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F6D2 03:F6C2: 30 03     BMI bra_F6C7
C - - - - - 0x00F6D4 03:F6C4: 4C 13 F7  JMP loc_F713
bra_F6C7:
C - - - - - 0x00F6D7 03:F6C7: AD 25 00  LDA a: ram_btn_hold + $01
C - - - - - 0x00F6DA 03:F6CA: A2 01     LDX #$01
bra_F6CC:
C - - - - - 0x00F6DC 03:F6CC: 86 2B     STX ram_002B
C - - - - - 0x00F6DE 03:F6CE: 85 2A     STA ram_002A    ; copy btn_hold
C - - - - - 0x00F6E0 03:F6D0: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00F6E2 03:F6D2: F0 36     BEQ bra_F70A
C - - - - - 0x00F6E4 03:F6D4: A2 01     LDX #$01
C - - - - - 0x00F6E6 03:F6D6: AD DA 03  LDA ram_03DA
C - - - - - 0x00F6E9 03:F6D9: F0 01     BEQ bra_F6DC
C - - - - - 0x00F6EB 03:F6DB: E8        INX
bra_F6DC:
C - - - - - 0x00F6EC 03:F6DC: 86 2C     STX ram_002C
C - - - - - 0x00F6EE 03:F6DE: A0 04     LDY #con_btn_Down
C - - - - - 0x00F6F0 03:F6E0: AD E0 03  LDA ram_03E0
C - - - - - 0x00F6F3 03:F6E3: C9 02     CMP #$02
C - - - - - 0x00F6F5 03:F6E5: 90 02     BCC bra_F6E9
C - - - - - 0x00F6F7 03:F6E7: A0 08     LDY #con_btn_Up
bra_F6E9:
C - - - - - 0x00F6F9 03:F6E9: 98        TYA
C - - - - - 0x00F6FA 03:F6EA: 2D 2A 00  AND a: ram_002A    ; copy btn_hold
C - - - - - 0x00F6FD 03:F6ED: F0 07     BEQ bra_F6F6
C - - - - - 0x00F6FF 03:F6EF: 05 2C     ORA ram_002C
C - - - - - 0x00F701 03:F6F1: 85 2A     STA ram_002A    ; copy btn_hold
C - - - - - 0x00F703 03:F6F3: 4C FF F6  JMP loc_F6FF
bra_F6F6:
C - - - - - 0x00F706 03:F6F6: A5 2C     LDA ram_002C
C - - - - - 0x00F708 03:F6F8: 2D 2A 00  AND a: ram_002A    ; copy btn_hold
C - - - - - 0x00F70B 03:F6FB: F0 0D     BEQ bra_F70A
C - - - - - 0x00F70D 03:F6FD: 85 2A     STA ram_002A    ; copy btn_hold
loc_F6FF:
C D 3 - - - 0x00F70F 03:F6FF: A5 2A     LDA ram_002A    ; copy btn_hold
C - - - - - 0x00F711 03:F701: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00F713 03:F703: AA        TAX
C - - - - - 0x00F714 03:F704: BD 83 E0  LDA tbl_E083,X
C - - - - - 0x00F717 03:F707: 20 9C F7  JSR sub_F79C
bra_F70A:
C - - - - - 0x00F71A 03:F70A: A6 2B     LDX ram_002B
C - - - - - 0x00F71C 03:F70C: F0 12     BEQ bra_F720
C - - - - - 0x00F71E 03:F70E: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F721 03:F711: 30 0D     BMI bra_F720
loc_F713:
C D 3 - - - 0x00F723 03:F713: A0 06     LDY #$06
C - - - - - 0x00F725 03:F715: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F727 03:F717: 38        SEC
C - - - - - 0x00F728 03:F718: E9 01     SBC #$01
C - - - - - 0x00F72A 03:F71A: 91 61     STA (ram_0061),Y
C - - - - - 0x00F72C 03:F71C: D0 8F     BNE bra_F6AD
C - - - - - 0x00F72E 03:F71E: F0 0A     BEQ bra_F72A
bra_F720:
C - - - - - 0x00F730 03:F720: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F732 03:F722: 3D 26 00  AND a: ram_btn_press,X
C - - - - - 0x00F735 03:F725: D0 03     BNE bra_F72A
C - - - - - 0x00F737 03:F727: 4C AD F6  JMP loc_F6AD
bra_F72A:
C - - - - - 0x00F73A 03:F72A: A9 05     LDA #con_anim_05
C - - - - - 0x00F73C 03:F72C: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F73F 03:F72F: A9 08     LDA #$08
C - - - - - 0x00F741 03:F731: 20 52 C6  JSR sub_C652
C - - - - - 0x00F744 03:F734: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F747 03:F737: A9 05     LDA #con_anim_05
C - - - - - 0x00F749 03:F739: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F74C 03:F73C: A9 04     LDA #$04
C - - - - - 0x00F74E 03:F73E: 20 52 C6  JSR sub_C652
C - - - - - 0x00F751 03:F741: A9 E0     LDA #$E0
C - - - - - 0x00F753 03:F743: 8D 1D 04  STA ram_041D
C - - - - - 0x00F756 03:F746: A9 01     LDA #$01
C - - - - - 0x00F758 03:F748: 8D 1E 04  STA ram_041E
C - - - - - 0x00F75B 03:F74B: A9 00     LDA #$00
C - - - - - 0x00F75D 03:F74D: 8D 1B 04  STA ram_041B
C - - - - - 0x00F760 03:F750: A9 01     LDA #$01
C - - - - - 0x00F762 03:F752: 8D 1C 04  STA ram_041C
C - - - - - 0x00F765 03:F755: A0 13     LDY #$13
C - - - - - 0x00F767 03:F757: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F769 03:F759: 8D E6 03  STA ram_03E6
C - - - - - 0x00F76C 03:F75C: A9 80     LDA #$80
C - - - - - 0x00F76E 03:F75E: 8D 29 04  STA ram_plr_w_ball
C - - - - - 0x00F771 03:F761: A2 09     LDX #$09
C - - - - - 0x00F773 03:F763: A9 5A     LDA #$5A
C - - - - - 0x00F775 03:F765: 95 01     STA ram_0001,X
C - - - - - 0x00F777 03:F767: A9 0C     LDA #$0C
C - - - - - 0x00F779 03:F769: 95 02     STA ram_0002,X
C - - - - - 0x00F77B 03:F76B: A9 D6     LDA #> (ofs_D6FA - $01)
C - - - - - 0x00F77D 03:F76D: A0 F9     LDY #< (ofs_D6FA - $01)
C - - - - - 0x00F77F 03:F76F: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00F782 03:F772: A9 03     LDA #con_sfx_shot
C - - - - - 0x00F784 03:F774: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F787 03:F777: A9 02     LDA #$02
C - - - - - 0x00F789 03:F779: 20 52 C6  JSR sub_C652
C - - - - - 0x00F78C 03:F77C: 20 5E DF  JSR sub_DF5E
C - - - - - 0x00F78F 03:F77F: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F792 03:F782: A9 05     LDA #con_anim_05
C - - - - - 0x00F794 03:F784: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F797 03:F787: A9 30     LDA #$30
C - - - - - 0x00F799 03:F789: 20 52 C6  JSR sub_C652
C - - - - - 0x00F79C 03:F78C: A0 00     LDY #$00
C - - - - - 0x00F79E 03:F78E: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F7A0 03:F790: 29 FB     AND #$FB
C - - - - - 0x00F7A2 03:F792: 91 61     STA (ram_0061),Y
C - - - - - 0x00F7A4 03:F794: A9 00     LDA #$00
C - - - - - 0x00F7A6 03:F796: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F7A9 03:F799: 4C 55 DF  JMP loc_DF55



sub_F79C:
C - - - - - 0x00F7AC 03:F79C: A8        TAY
C - - - - - 0x00F7AD 03:F79D: C0 40     CPY #$40
C - - - - - 0x00F7AF 03:F79F: D0 04     BNE bra_F7A5
C - - - - - 0x00F7B1 03:F7A1: A9 34     LDA #$34
C - - - - - 0x00F7B3 03:F7A3: D0 06     BNE bra_F7AB
bra_F7A5:
C - - - - - 0x00F7B5 03:F7A5: C0 C0     CPY #$C0
C - - - - - 0x00F7B7 03:F7A7: D0 0B     BNE bra_F7B4
C - - - - - 0x00F7B9 03:F7A9: A9 CC     LDA #$CC
bra_F7AB:
C - - - - - 0x00F7BB 03:F7AB: A4 2B     LDY ram_002B
C - - - - - 0x00F7BD 03:F7AD: F0 05     BEQ bra_F7B4
C - - - - - 0x00F7BF 03:F7AF: 49 FF     EOR #$FF
C - - - - - 0x00F7C1 03:F7B1: 18        CLC
C - - - - - 0x00F7C2 03:F7B2: 69 81     ADC #$81
bra_F7B4:
C - - - - - 0x00F7C4 03:F7B4: A0 13     LDY #$13
C - - - - - 0x00F7C6 03:F7B6: 91 61     STA (ram_0061),Y
C - - - - - 0x00F7C8 03:F7B8: 60        RTS



ofs_005_F7B9_17:
C - - - - - 0x00F7C9 03:F7B9: 20 77 C6  JSR sub_C677
C - - - - - 0x00F7CC 03:F7BC: A9 15     LDA #con_anim_15
C - - - - - 0x00F7CE 03:F7BE: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F7D1 03:F7C1: AD 7E 03  LDA ram_random
C - - - - - 0x00F7D4 03:F7C4: 29 0F     AND #$0F
C - - - - - 0x00F7D6 03:F7C6: 18        CLC
C - - - - - 0x00F7D7 03:F7C7: 69 18     ADC #$18
C - - - - - 0x00F7D9 03:F7C9: 85 8D     STA ram_008D
bra_F7CB:
C - - - - - 0x00F7DB 03:F7CB: A9 01     LDA #$01
C - - - - - 0x00F7DD 03:F7CD: 20 52 C6  JSR sub_C652
C - - - - - 0x00F7E0 03:F7D0: AE AD 03  LDX ram_team_w_ball
C - - - - - 0x00F7E3 03:F7D3: F0 20     BEQ bra_F7F5
C - - - - - 0x00F7E5 03:F7D5: A2 01     LDX #$01
C - - - - - 0x00F7E7 03:F7D7: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F7EA 03:F7DA: 30 19     BMI bra_F7F5
C - - - - - 0x00F7EC 03:F7DC: C6 8D     DEC ram_008D
C - - - - - 0x00F7EE 03:F7DE: D0 EB     BNE bra_F7CB
C - - - - - 0x00F7F0 03:F7E0: A9 00     LDA #$00
C - - - - - 0x00F7F2 03:F7E2: 48        PHA
C - - - - - 0x00F7F3 03:F7E3: A9 02     LDA #$02
C - - - - - 0x00F7F5 03:F7E5: 85 67     STA ram_0067
C - - - - - 0x00F7F7 03:F7E7: A9 03     LDA #$03
C - - - - - 0x00F7F9 03:F7E9: 85 68     STA ram_0068
C - - - - - 0x00F7FB 03:F7EB: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00F7FE 03:F7EE: 68        PLA
C - - - - - 0x00F7FF 03:F7EF: 20 42 80  JSR sub_0x004052
C - - - - - 0x00F802 03:F7F2: 4C FF F7  JMP loc_F7FF
bra_F7F5:
C - - - - - 0x00F805 03:F7F5: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F807 03:F7F7: 3D 26 00  AND a: ram_btn_press,X
C - - - - - 0x00F80A 03:F7FA: F0 CF     BEQ bra_F7CB
C - - - - - 0x00F80C 03:F7FC: BD 24 00  LDA a: ram_btn_hold,X
loc_F7FF:
C D 3 - - - 0x00F80F 03:F7FF: 29 03     AND #con_btns_LR
C - - - - - 0x00F811 03:F801: A0 06     LDY #$06
C - - - - - 0x00F813 03:F803: 91 61     STA (ram_0061),Y
C - - - - - 0x00F815 03:F805: AA        TAX
C - - - - - 0x00F816 03:F806: BD 39 F9  LDA tbl_F939,X
C - - - - - 0x00F819 03:F809: 85 8D     STA ram_008D
C - - - - - 0x00F81B 03:F80B: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F81E 03:F80E: A9 15     LDA #con_anim_15
C - - - - - 0x00F820 03:F810: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F823 03:F813: A9 04     LDA #$04
C - - - - - 0x00F825 03:F815: 20 52 C6  JSR sub_C652
C - - - - - 0x00F828 03:F818: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F82B 03:F81B: A9 15     LDA #con_anim_15
C - - - - - 0x00F82D 03:F81D: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F830 03:F820: A9 04     LDA #$04
C - - - - - 0x00F832 03:F822: 20 52 C6  JSR sub_C652
C - - - - - 0x00F835 03:F825: A9 80     LDA #$80
C - - - - - 0x00F837 03:F827: 85 8A     STA ram_008A
C - - - - - 0x00F839 03:F829: A9 03     LDA #con_sfx_shot
C - - - - - 0x00F83B 03:F82B: 20 10 C9  JSR sub_C910_prepare_sound
C - - - - - 0x00F83E 03:F82E: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F841 03:F831: A9 15     LDA #con_anim_15
C - - - - - 0x00F843 03:F833: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F846 03:F836: A9 19     LDA #$19
C - - - - - 0x00F848 03:F838: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F84B 03:F83B: 4C 55 DF  JMP loc_DF55



ofs_005_F83E_18:
C - - - - - 0x00F84E 03:F83E: 20 77 C6  JSR sub_C677
C - - - - - 0x00F851 03:F841: A9 16     LDA #con_anim_16
C - - - - - 0x00F853 03:F843: 20 1E 80  JSR sub_0x00402E_set_animation
bra_F846:
loc_F846:
C D 3 - - - 0x00F856 03:F846: A9 01     LDA #$01
C - - - - - 0x00F858 03:F848: 20 52 C6  JSR sub_C652
C - - - - - 0x00F85B 03:F84B: A5 8A     LDA ram_008A
C - - - - - 0x00F85D 03:F84D: 10 F7     BPL bra_F846
C - - - - - 0x00F85F 03:F84F: AD AD 03  LDA ram_team_w_ball
C - - - - - 0x00F862 03:F852: 49 0B     EOR #$0B
C - - - - - 0x00F864 03:F854: AA        TAX
C - - - - - 0x00F865 03:F855: F0 21     BEQ bra_F878
C - - - - - 0x00F867 03:F857: A2 01     LDX #$01
C - - - - - 0x00F869 03:F859: 2C A4 03  BIT ram_03A4
C - - - - - 0x00F86C 03:F85C: 30 1A     BMI bra_F878
C - - - - - 0x00F86E 03:F85E: A9 06     LDA #$06
C - - - - - 0x00F870 03:F860: 20 52 C6  JSR sub_C652
C - - - - - 0x00F873 03:F863: A9 02     LDA #$02
C - - - - - 0x00F875 03:F865: 48        PHA
C - - - - - 0x00F876 03:F866: A9 02     LDA #$02
C - - - - - 0x00F878 03:F868: 85 67     STA ram_0067
C - - - - - 0x00F87A 03:F86A: A9 03     LDA #$03
C - - - - - 0x00F87C 03:F86C: 85 68     STA ram_0068
C - - - - - 0x00F87E 03:F86E: 20 58 CB  JSR sub_CB58_prg_bankswitch
C - - - - - 0x00F881 03:F871: 68        PLA
C - - - - - 0x00F882 03:F872: 20 42 80  JSR sub_0x004052
C - - - - - 0x00F885 03:F875: 4C 88 F8  JMP loc_F888
bra_F878:
C - - - - - 0x00F888 03:F878: A9 0B     LDA #con_btn_Up + con_btns_LR
C - - - - - 0x00F88A 03:F87A: 3D 26 00  AND a: ram_btn_press,X
C - - - - - 0x00F88D 03:F87D: D0 06     BNE bra_F885
C - - - - - 0x00F88F 03:F87F: 20 49 F9  JSR sub_F949
C - - - - - 0x00F892 03:F882: 4C 46 F8  JMP loc_F846
bra_F885:
C - - - - - 0x00F895 03:F885: BD 24 00  LDA a: ram_btn_hold,X
loc_F888:
C D 3 - - - 0x00F898 03:F888: 29 0B     AND #con_btn_Up + con_btns_LR
C - - - - - 0x00F89A 03:F88A: AA        TAX
C - - - - - 0x00F89B 03:F88B: BD 39 F9  LDA tbl_F939,X
C - - - - - 0x00F89E 03:F88E: A0 13     LDY #$13
C - - - - - 0x00F8A0 03:F890: 91 61     STA (ram_0061),Y
C - - - - - 0x00F8A2 03:F892: A2 00     LDX #$00
C - - - - - 0x00F8A4 03:F894: A0 00     LDY #$00
C - - - - - 0x00F8A6 03:F896: C9 80     CMP #$80
C - - - - - 0x00F8A8 03:F898: F0 0B     BEQ bra_F8A5
C - - - - - 0x00F8AA 03:F89A: A2 E0     LDX #$E0
C - - - - - 0x00F8AC 03:F89C: A0 03     LDY #$03
C - - - - - 0x00F8AE 03:F89E: C9 40     CMP #$40
C - - - - - 0x00F8B0 03:F8A0: F0 03     BEQ bra_F8A5
C - - - - - 0x00F8B2 03:F8A2: 20 1E C9  JSR sub_C91E
bra_F8A5:
C - - - - - 0x00F8B5 03:F8A5: 98        TYA
C - - - - - 0x00F8B6 03:F8A6: A0 04     LDY #$04
C - - - - - 0x00F8B8 03:F8A8: 91 61     STA (ram_0061),Y
C - - - - - 0x00F8BA 03:F8AA: 88        DEY
C - - - - - 0x00F8BB 03:F8AB: 88        DEY
C - - - - - 0x00F8BC 03:F8AC: 8A        TXA
C - - - - - 0x00F8BD 03:F8AD: 91 61     STA (ram_0061),Y
C - - - - - 0x00F8BF 03:F8AF: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F8C2 03:F8B2: A9 16     LDA #con_anim_16
C - - - - - 0x00F8C4 03:F8B4: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F8C7 03:F8B7: A9 EF     LDA #$EF
C - - - - - 0x00F8C9 03:F8B9: 8D 5E 04  STA ram_045E
C - - - - - 0x00F8CC 03:F8BC: A9 87     LDA #$87
C - - - - - 0x00F8CE 03:F8BE: 8D 58 04  STA ram_0458
C - - - - - 0x00F8D1 03:F8C1: A9 00     LDA #$00
C - - - - - 0x00F8D3 03:F8C3: 85 8B     STA ram_008B
C - - - - - 0x00F8D5 03:F8C5: 85 8C     STA ram_008C
bra_F8C7:
C - - - - - 0x00F8D7 03:F8C7: A9 01     LDA #$01
C - - - - - 0x00F8D9 03:F8C9: 20 52 C6  JSR sub_C652
C - - - - - 0x00F8DC 03:F8CC: A0 08     LDY #$08
C - - - - - 0x00F8DE 03:F8CE: A5 8B     LDA ram_008B
C - - - - - 0x00F8E0 03:F8D0: 0A        ASL
C - - - - - 0x00F8E1 03:F8D1: AA        TAX
C - - - - - 0x00F8E2 03:F8D2: BD 30 F9  LDA tbl_F930,X
C - - - - - 0x00F8E5 03:F8D5: 91 61     STA (ram_0061),Y
C - - - - - 0x00F8E7 03:F8D7: C8        INY
C - - - - - 0x00F8E8 03:F8D8: C8        INY
C - - - - - 0x00F8E9 03:F8D9: BD 31 F9  LDA tbl_F931,X
C - - - - - 0x00F8EC 03:F8DC: 91 61     STA (ram_0061),Y
C - - - - - 0x00F8EE 03:F8DE: 20 A9 E4  JSR sub_E4A9
C - - - - - 0x00F8F1 03:F8E1: 20 49 F9  JSR sub_F949
C - - - - - 0x00F8F4 03:F8E4: A0 05     LDY #$05
C - - - - - 0x00F8F6 03:F8E6: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F8F8 03:F8E8: 8D 52 04  STA ram_0452
C - - - - - 0x00F8FB 03:F8EB: E6 8C     INC ram_008C
C - - - - - 0x00F8FD 03:F8ED: A6 8B     LDX ram_008B
C - - - - - 0x00F8FF 03:F8EF: A5 8C     LDA ram_008C
C - - - - - 0x00F901 03:F8F1: DD 36 F9  CMP tbl_F936,X
C - - - - - 0x00F904 03:F8F4: D0 D1     BNE bra_F8C7
C - - - - - 0x00F906 03:F8F6: A9 00     LDA #$00
C - - - - - 0x00F908 03:F8F8: 85 8C     STA ram_008C
C - - - - - 0x00F90A 03:F8FA: E6 8B     INC ram_008B
C - - - - - 0x00F90C 03:F8FC: A5 8B     LDA ram_008B
C - - - - - 0x00F90E 03:F8FE: C9 03     CMP #$03
C - - - - - 0x00F910 03:F900: D0 C5     BNE bra_F8C7
C - - - - - 0x00F912 03:F902: A9 00     LDA #$00
C - - - - - 0x00F914 03:F904: 8D 5E 04  STA ram_045E
C - - - - - 0x00F917 03:F907: A0 13     LDY #$13
C - - - - - 0x00F919 03:F909: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F91B 03:F90B: C9 80     CMP #$80
C - - - - - 0x00F91D 03:F90D: F0 06     BEQ bra_F915
C - - - - - 0x00F91F 03:F90F: A0 0B     LDY #$0B
C - - - - - 0x00F921 03:F911: A9 87     LDA #$87
C - - - - - 0x00F923 03:F913: 91 61     STA (ram_0061),Y
bra_F915:
C - - - - - 0x00F925 03:F915: 20 6D C6  JSR sub_C66D
C - - - - - 0x00F928 03:F918: A9 16     LDA #con_anim_16
C - - - - - 0x00F92A 03:F91A: 20 1E 80  JSR sub_0x00402E_set_animation
C - - - - - 0x00F92D 03:F91D: A9 19     LDA #$19
C - - - - - 0x00F92F 03:F91F: 20 2F C6  JSR sub_C62F
C - - - - - 0x00F932 03:F922: 4C 55 DF  JMP loc_DF55


; bzk garbage
loc_F925:
- - - - - - 0x00F935 03:F925: A9 01     LDA #$01
- - - - - - 0x00F937 03:F927: 20 52 C6  JSR sub_C652
- - - - - - 0x00F93A 03:F92A: 20 49 F9  JSR sub_F949
- - - - - - 0x00F93D 03:F92D: 4C 25 F9  JMP loc_F925



tbl_F930:
- D 3 - - - 0x00F940 03:F930: 08        .byte $08   ; 
tbl_F931:
- D 3 - - - 0x00F941 03:F931: FF        .byte $FF   ; 
- D 3 - - - 0x00F942 03:F932: 00        .byte $00   ; 
- D 3 - - - 0x00F943 03:F933: 00        .byte $00   ; 
- D 3 - - - 0x00F944 03:F934: F8        .byte $F8   ; 
- D 3 - - - 0x00F945 03:F935: 00        .byte $00   ; 



tbl_F936:
; читается если кипер в пенальти прыгнул вбок или вверх
; но не читается если он просто стоит на месте
- D 3 - - - 0x00F946 03:F936: 0A        .byte $0A   ; 
- D 3 - - - 0x00F947 03:F937: 02        .byte $02   ; 
- D 3 - - - 0x00F948 03:F938: 0A        .byte $0A   ; 



tbl_F939:
; читается в пенальти при ударе в F806
- D 3 - - - 0x00F949 03:F939: 80        .byte $80   ; 
- D 3 - - - 0x00F94A 03:F93A: 40        .byte $40   ; 
- D 3 - - - 0x00F94B 03:F93B: C0        .byte $C0   ; 
- - - - - - 0x00F94C 03:F93C: 80        .byte $80   ; 
- - - - - - 0x00F94D 03:F93D: 80        .byte $80   ; 
- - - - - - 0x00F94E 03:F93E: 40        .byte $40   ; 
- - - - - - 0x00F94F 03:F93F: C0        .byte $C0   ; 
- - - - - - 0x00F950 03:F940: 80        .byte $80   ; 
- - - - - - 0x00F951 03:F941: 80        .byte $80   ; 
- - - - - - 0x00F952 03:F942: 40        .byte $40   ; 
- - - - - - 0x00F953 03:F943: C0        .byte $C0   ; 
- - - - - - 0x00F954 03:F944: 80        .byte $80   ; 
- - - - - - 0x00F955 03:F945: 80        .byte $80   ; 
- - - - - - 0x00F956 03:F946: 40        .byte $40   ; 
- - - - - - 0x00F957 03:F947: C0        .byte $C0   ; 
- - - - - - 0x00F958 03:F948: 80        .byte $80   ; 



sub_F949:
C - - - - - 0x00F959 03:F949: 24 8A     BIT ram_008A
C - - - - - 0x00F95B 03:F94B: 70 37     BVS bra_F984_RTS
C - - - - - 0x00F95D 03:F94D: AD 24 04  LDA ram_ball_Z_lo
C - - - - - 0x00F960 03:F950: F0 32     BEQ bra_F984_RTS
C - - - - - 0x00F962 03:F952: C9 06     CMP #$06
C - - - - - 0x00F964 03:F954: B0 2E     BCS bra_F984_RTS
C - - - - - 0x00F966 03:F956: A9 16     LDA #$16
C - - - - - 0x00F968 03:F958: A2 0D     LDX #$0D
C - - - - - 0x00F96A 03:F95A: 20 60 FA  JSR sub_FA60
C - - - - - 0x00F96D 03:F95D: 90 25     BCC bra_F984_RTS
C - - - - - 0x00F96F 03:F95F: A0 13     LDY #$13
C - - - - - 0x00F971 03:F961: B1 61     LDA (ram_0061),Y
C - - - - - 0x00F973 03:F963: C9 80     CMP #$80
C - - - - - 0x00F975 03:F965: D0 06     BNE bra_F96D
C - - - - - 0x00F977 03:F967: A9 F0     LDA #$F0
C - - - - - 0x00F979 03:F969: A0 11     LDY #$11
C - - - - - 0x00F97B 03:F96B: 91 61     STA (ram_0061),Y
bra_F96D:
C - - - - - 0x00F97D 03:F96D: A2 09     LDX #$09
C - - - - - 0x00F97F 03:F96F: A9 5A     LDA #$5A
C - - - - - 0x00F981 03:F971: 95 01     STA ram_0001,X
C - - - - - 0x00F983 03:F973: A9 0C     LDA #$0C
C - - - - - 0x00F985 03:F975: 95 02     STA ram_0002,X
C - - - - - 0x00F987 03:F977: A9 D6     LDA #> (ofs_D680 - $01)
C - - - - - 0x00F989 03:F979: A0 7F     LDY #< (ofs_D680 - $01)
C - - - - - 0x00F98B 03:F97B: 20 E1 C5  JSR sub_C5E1_prepare_return_address
C - - - - - 0x00F98E 03:F97E: A5 8A     LDA ram_008A
C - - - - - 0x00F990 03:F980: 09 40     ORA #$40
C - - - - - 0x00F992 03:F982: 85 8A     STA ram_008A
bra_F984_RTS:
C - - - - - 0x00F994 03:F984: 60        RTS



loc_F985:
ofs_005_F985_19:
C D 3 - - - 0x00F995 03:F985: A9 01     LDA #$01
C - - - - - 0x00F997 03:F987: 20 52 C6  JSR sub_C652
C - - - - - 0x00F99A 03:F98A: 4C 85 F9  JMP loc_F985



sub_F98D:
C - - - - - 0x00F99D 03:F98D: AE CE 03  LDX ram_03CE
C - - - - - 0x00F9A0 03:F990: E0 03     CPX #$03
C - - - - - 0x00F9A2 03:F992: B0 10     BCS bra_F9A4_RTS
C - - - - - 0x00F9A4 03:F994: 9D CF 03  STA ram_03CF,X
C - - - - - 0x00F9A7 03:F997: EE CE 03  INC ram_03CE
C - - - - - 0x00F9AA 03:F99A: 2C D2 03  BIT ram_03D2
C - - - - - 0x00F9AD 03:F99D: 30 05     BMI bra_F9A4_RTS
C - - - - - 0x00F9AF 03:F99F: A9 80     LDA #$80
C - - - - - 0x00F9B1 03:F9A1: 8D D2 03  STA ram_03D2
bra_F9A4_RTS:
C - - - - - 0x00F9B4 03:F9A4: 60        RTS



loc_F9A5:
C D 3 - - - 0x00F9B5 03:F9A5: E8        INX
C - - - - - 0x00F9B6 03:F9A6: E8        INX
C - - - - - 0x00F9B7 03:F9A7: E8        INX
C - - - - - 0x00F9B8 03:F9A8: E8        INX
C - - - - - 0x00F9B9 03:F9A9: D0 02     BNE bra_F9AD
C - - - - - 0x00F9BB 03:F9AB: A6 60     LDX ram_0060
bra_F9AD:
C - - - - - 0x00F9BD 03:F9AD: 86 5B     STX ram_005B
C - - - - - 0x00F9BF 03:F9AF: C6 5C     DEC ram_005C
C - - - - - 0x00F9C1 03:F9B1: D0 04     BNE bra_F9B7_RTS
- - - - - - 0x00F9C3 03:F9B3: A9 80     LDA #$80
- - - - - - 0x00F9C5 03:F9B5: 85 5D     STA ram_005D
bra_F9B7_RTS:
C - - - - - 0x00F9C7 03:F9B7: 60        RTS



sub_F9B8:
C - - - - - 0x00F9C8 03:F9B8: 20 DA F9  JSR sub_F9DA
C - - - - - 0x00F9CB 03:F9BB: A9 70     LDA #$70
bra_F9BD:
C - - - - - 0x00F9CD 03:F9BD: 48        PHA
C - - - - - 0x00F9CE 03:F9BE: A9 01     LDA #$01
C - - - - - 0x00F9D0 03:F9C0: 20 09 C6  JSR sub_C609_delay
C - - - - - 0x00F9D3 03:F9C3: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F9D5 03:F9C5: 2D 26 00  AND a: ram_btn_press
C - - - - - 0x00F9D8 03:F9C8: D0 0E     BNE bra_F9D8
C - - - - - 0x00F9DA 03:F9CA: A9 C0     LDA #con_btns_AB
C - - - - - 0x00F9DC 03:F9CC: 2D 27 00  AND a: ram_btn_press + $01
C - - - - - 0x00F9DF 03:F9CF: D0 07     BNE bra_F9D8
C - - - - - 0x00F9E1 03:F9D1: 68        PLA
C - - - - - 0x00F9E2 03:F9D2: 38        SEC
C - - - - - 0x00F9E3 03:F9D3: E9 01     SBC #$01
C - - - - - 0x00F9E5 03:F9D5: D0 E6     BNE bra_F9BD
C - - - - - 0x00F9E7 03:F9D7: 48        PHA
bra_F9D8:
C - - - - - 0x00F9E8 03:F9D8: 68        PLA
C - - - - - 0x00F9E9 03:F9D9: 60        RTS



sub_F9DA:
C - - - - - 0x00F9EA 03:F9DA: A2 08     LDX #$08
C - - - - - 0x00F9EC 03:F9DC: 86 6C     STX ram_006C
C - - - - - 0x00F9EE 03:F9DE: 0A        ASL
C - - - - - 0x00F9EF 03:F9DF: AA        TAX
C - - - - - 0x00F9F0 03:F9E0: BD 74 FB  LDA tbl_FB74_sprite_text_messages,X
C - - - - - 0x00F9F3 03:F9E3: 85 2A     STA ram_002A
C - - - - - 0x00F9F5 03:F9E5: BD 75 FB  LDA tbl_FB74_sprite_text_messages + $01,X
C - - - - - 0x00F9F8 03:F9E8: 85 2B     STA ram_002B
C - - - - - 0x00F9FA 03:F9EA: A2 00     LDX #$00
C - - - - - 0x00F9FC 03:F9EC: A0 00     LDY #$00
bra_F9EE:
C - - - - - 0x00F9FE 03:F9EE: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00FA00 03:F9F0: F0 45     BEQ bra_FA37
C - - - - - 0x00FA02 03:F9F2: 85 2C     STA ram_002C
C - - - - - 0x00FA04 03:F9F4: C8        INY
C - - - - - 0x00FA05 03:F9F5: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00FA07 03:F9F7: 85 2D     STA ram_002D
C - - - - - 0x00FA09 03:F9F9: C8        INY
C - - - - - 0x00FA0A 03:F9FA: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00FA0C 03:F9FC: 85 2E     STA ram_002E
C - - - - - 0x00FA0E 03:F9FE: C8        INY
bra_F9FF:
C - - - - - 0x00FA0F 03:F9FF: A5 2E     LDA ram_002E
C - - - - - 0x00FA11 03:FA01: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00FA14 03:FA04: A9 01     LDA #$01
C - - - - - 0x00FA16 03:FA06: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x00FA19 03:FA09: A5 2D     LDA ram_002D
C - - - - - 0x00FA1B 03:FA0B: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x00FA1E 03:FA0E: 18        CLC
C - - - - - 0x00FA1F 03:FA0F: 69 08     ADC #$08
C - - - - - 0x00FA21 03:FA11: 85 2D     STA ram_002D
C - - - - - 0x00FA23 03:FA13: B1 2A     LDA (ram_002A),Y
C - - - - - 0x00FA25 03:FA15: C9 20     CMP #$20
C - - - - - 0x00FA27 03:FA17: F0 17     BEQ bra_FA30
C - - - - - 0x00FA29 03:FA19: 48        PHA
C - - - - - 0x00FA2A 03:FA1A: 29 E0     AND #$E0
C - - - - - 0x00FA2C 03:FA1C: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00FA2F 03:FA1F: 68        PLA
C - - - - - 0x00FA30 03:FA20: 29 1F     AND #$1F
C - - - - - 0x00FA32 03:FA22: 0A        ASL
C - - - - - 0x00FA33 03:FA23: 1D 01 02  ORA ram_spr_T,X
C - - - - - 0x00FA36 03:FA26: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x00FA39 03:FA29: FE 01 02  INC ram_spr_T,X
C - - - - - 0x00FA3C 03:FA2C: E8        INX
C - - - - - 0x00FA3D 03:FA2D: E8        INX
C - - - - - 0x00FA3E 03:FA2E: E8        INX
C - - - - - 0x00FA3F 03:FA2F: E8        INX
bra_FA30:
C - - - - - 0x00FA40 03:FA30: C8        INY
C - - - - - 0x00FA41 03:FA31: C6 2C     DEC ram_002C
C - - - - - 0x00FA43 03:FA33: D0 CA     BNE bra_F9FF
C - - - - - 0x00FA45 03:FA35: F0 B7     BEQ bra_F9EE
bra_FA37:
C - - - - - 0x00FA47 03:FA37: A9 F8     LDA #$F8
bra_FA39_loop:
C - - - - - 0x00FA49 03:FA39: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x00FA4C 03:FA3C: E8        INX
C - - - - - 0x00FA4D 03:FA3D: E8        INX
C - - - - - 0x00FA4E 03:FA3E: E8        INX
C - - - - - 0x00FA4F 03:FA3F: E8        INX
C - - - - - 0x00FA50 03:FA40: D0 F7     BNE bra_FA39_loop
C - - - - - 0x00FA52 03:FA42: 60        RTS



sub_FA43:
C - - - - - 0x00FA53 03:FA43: C9 16     CMP #$16
C - - - - - 0x00FA55 03:FA45: D0 19     BNE bra_FA60
C - - - - - 0x00FA57 03:FA47: AC 26 04  LDY ram_0426
C - - - - - 0x00FA5A 03:FA4A: D0 12     BNE bra_FA5E
C - - - - - 0x00FA5C 03:FA4C: AC 24 04  LDY ram_ball_Z_lo
C - - - - - 0x00FA5F 03:FA4F: C0 18     CPY #$18
C - - - - - 0x00FA61 03:FA51: B0 0B     BCS bra_FA5E
C - - - - - 0x00FA63 03:FA53: AC 29 04  LDY ram_plr_w_ball
C - - - - - 0x00FA66 03:FA56: 30 08     BMI bra_FA60
C - - - - - 0x00FA68 03:FA58: F0 04     BEQ bra_FA5E
C - - - - - 0x00FA6A 03:FA5A: C0 0B     CPY #$0B
C - - - - - 0x00FA6C 03:FA5C: D0 02     BNE bra_FA60
bra_FA5E:
C - - - - - 0x00FA6E 03:FA5E: 18        CLC
C - - - - - 0x00FA6F 03:FA5F: 60        RTS
bra_FA60:
sub_FA60:
C - - - - - 0x00FA70 03:FA60: 86 72     STX ram_0072
C - - - - - 0x00FA72 03:FA62: 0A        ASL
C - - - - - 0x00FA73 03:FA63: AA        TAX
C - - - - - 0x00FA74 03:FA64: BD F0 CB  LDA tbl_CBF0,X
C - - - - - 0x00FA77 03:FA67: 85 70     STA ram_0070
C - - - - - 0x00FA79 03:FA69: BD F1 CB  LDA tbl_CBF0 + $01,X
C - - - - - 0x00FA7C 03:FA6C: 85 71     STA ram_0071
C - - - - - 0x00FA7E 03:FA6E: 38        SEC
C - - - - - 0x00FA7F 03:FA6F: A0 05     LDY #$05
C - - - - - 0x00FA81 03:FA71: B1 61     LDA (ram_0061),Y
C - - - - - 0x00FA83 03:FA73: F1 70     SBC (ram_0070),Y
C - - - - - 0x00FA85 03:FA75: AA        TAX
C - - - - - 0x00FA86 03:FA76: C8        INY
C - - - - - 0x00FA87 03:FA77: C8        INY
C - - - - - 0x00FA88 03:FA78: B1 61     LDA (ram_0061),Y
C - - - - - 0x00FA8A 03:FA7A: F1 70     SBC (ram_0070),Y
C - - - - - 0x00FA8C 03:FA7C: A8        TAY
C - - - - - 0x00FA8D 03:FA7D: 10 03     BPL bra_FA82
C - - - - - 0x00FA8F 03:FA7F: 20 1E C9  JSR sub_C91E
bra_FA82:
C - - - - - 0x00FA92 03:FA82: 98        TYA
C - - - - - 0x00FA93 03:FA83: D0 21     BNE bra_FAA6
C - - - - - 0x00FA95 03:FA85: E4 72     CPX ram_0072
C - - - - - 0x00FA97 03:FA87: B0 1D     BCS bra_FAA6
C - - - - - 0x00FA99 03:FA89: 38        SEC
C - - - - - 0x00FA9A 03:FA8A: A0 0B     LDY #$0B
C - - - - - 0x00FA9C 03:FA8C: B1 61     LDA (ram_0061),Y
C - - - - - 0x00FA9E 03:FA8E: F1 70     SBC (ram_0070),Y
C - - - - - 0x00FAA0 03:FA90: AA        TAX
C - - - - - 0x00FAA1 03:FA91: C8        INY
C - - - - - 0x00FAA2 03:FA92: C8        INY
C - - - - - 0x00FAA3 03:FA93: B1 61     LDA (ram_0061),Y
C - - - - - 0x00FAA5 03:FA95: F1 70     SBC (ram_0070),Y
C - - - - - 0x00FAA7 03:FA97: A8        TAY
C - - - - - 0x00FAA8 03:FA98: 10 03     BPL bra_FA9D
C - - - - - 0x00FAAA 03:FA9A: 20 1E C9  JSR sub_C91E
bra_FA9D:
C - - - - - 0x00FAAD 03:FA9D: 98        TYA
C - - - - - 0x00FAAE 03:FA9E: D0 06     BNE bra_FAA6
C - - - - - 0x00FAB0 03:FAA0: E4 72     CPX ram_0072
C - - - - - 0x00FAB2 03:FAA2: B0 02     BCS bra_FAA6
C - - - - - 0x00FAB4 03:FAA4: 38        SEC
C - - - - - 0x00FAB5 03:FAA5: 60        RTS
bra_FAA6:
C - - - - - 0x00FAB6 03:FAA6: 18        CLC
C - - - - - 0x00FAB7 03:FAA7: 60        RTS



tbl_FAA8_palette:
; палитра экранов
; палитра экрана с логотипом теряется на первых кадрах запуска игры
    ; она обрабатывается отдельно в 0x008AD9

; 00 экран с логотипом (фон)
- D 3 - I - 0x00FAB8 03:FAA8: 0F        .byte $0F, $1A, $30   ; 
- D 3 - I - 0x00FABB 03:FAAB: 0F        .byte $0F, $25, $36   ; 
- D 3 - I - 0x00FABE 03:FAAE: 0F        .byte $0F, $21, $36   ; 
- D 3 - I - 0x00FAC1 03:FAB1: 16        .byte $16, $26, $36   ; 
; 01 экран с логотипом (спрайты)
- D 3 - I - 0x00FAC4 03:FAB4: 30        .byte $30, $16, $35   ; 
- D 3 - I - 0x00FAC7 03:FAB7: 0F        .byte $0F, $0F, $30   ; 
- D 3 - I - 0x00FACA 03:FABA: 2B        .byte $2B, $11, $26   ; 
- D 3 - I - 0x00FACD 03:FABD: 28        .byte $28, $0F, $30   ; 
; 02 черная палитра для затемнения экрана (фон)
- D 3 - I - 0x00FAD0 03:FAC0: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FAD3 03:FAC3: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FAD6 03:FAC6: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FAD9 03:FAC9: 0F        .byte $0F, $0F, $0F   ; 
; 03 экран с выбором команд (спрайты)
- D 3 - I - 0x00FADC 03:FACC: 15        .byte $15, $00, $30   ; 
- D 3 - I - 0x00FADF 03:FACF: 21        .byte $21, $0F, $30   ; 
- D 3 - I - 0x00FAE2 03:FAD2: 0F        .byte $0F, $0F, $30   ; 
- D 3 - I - 0x00FAE5 03:FAD5: 0F        .byte $0F, $00, $10   ; 
; 04 экран с зайцем перед игрой против CPU и финальный экран (спрайты)
- D 3 - I - 0x00FAE8 03:FAD8: 07        .byte $07, $17, $27   ; 
- D 3 - I - 0x00FAEB 03:FADB: 30        .byte $30, $27, $37   ; 
- D 3 - I - 0x00FAEE 03:FADE: 10        .byte $10, $0F, $0F   ; 
- D 3 - I - 0x00FAF1 03:FAE1: 17        .byte $17, $27, $37   ; 
; 05 экран с выбором команд (фон)
; экран с зайцем перед игрой против CPU и финальный экран (фон)
- D 3 - I - 0x00FAF4 03:FAE4: 1A        .byte $1A, $25, $30   ; 
- D 3 - I - 0x00FAF7 03:FAE7: 30        .byte $30, $00, $30   ; 
- D 3 - I - 0x00FAFA 03:FAEA: 21        .byte $21, $31, $30   ; 
- D 3 - I - 0x00FAFD 03:FAED: 21        .byte $21, $00, $30   ; 
; 06 экран с командой после победы против CPU (фон)
- D 3 - I - 0x00FB00 03:FAF0: 15        .byte $15, $05, $30   ; 
- D 3 - I - 0x00FB03 03:FAF3: 07        .byte $07, $17, $37   ; 
- D 3 - I - 0x00FB06 03:FAF6: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FB09 03:FAF9: 0F        .byte $0F, $0F, $0F   ; 
; 07 экран со счетом после тайма (фон)
- D 3 - I - 0x00FB0C 03:FAFC: 1A        .byte $1A, $00, $30   ; 
- D 3 - I - 0x00FB0F 03:FAFF: 15        .byte $15, $05, $30   ; 
- D 3 - I - 0x00FB12 03:FB02: 21        .byte $21, $31, $30   ; 
- D 3 - I - 0x00FB15 03:FB05: 21        .byte $21, $10, $30   ; 
; 08 экран со счетом после тайма (спрайты)
- D 3 - I - 0x00FB18 03:FB08: 15        .byte $15, $31, $30   ; 
- D 3 - I - 0x00FB1B 03:FB0B: 21        .byte $21, $0F, $30   ; 
- D 3 - I - 0x00FB1E 03:FB0E: 0F        .byte $0F, $0F, $30   ; 
- D 3 - I - 0x00FB21 03:FB11: 0F        .byte $0F, $00, $30   ; 
; 09 палитра в пенальти (фон)
- D 3 - I - 0x00FB24 03:FB14: 0A        .byte $0A, $1A, $30   ; 
- D 3 - I - 0x00FB27 03:FB17: 10        .byte $10, $16, $30   ; 
- D 3 - I - 0x00FB2A 03:FB1A: 25        .byte $25, $21, $35   ; 
- D 3 - I - 0x00FB2D 03:FB1D: 27        .byte $27, $21, $26   ; 
; 0A переливание кубка зайца 1 (спрайты)
- D 3 - I - 0x00FB30 03:FB20: 07        .byte $07, $17, $37   ; 
- D 3 - I - 0x00FB33 03:FB23: 30        .byte $30, $27, $30   ; 
- D 3 - I - 0x00FB36 03:FB26: 10        .byte $10, $0F, $0F   ; 
- D 3 - I - 0x00FB39 03:FB29: 17        .byte $17, $37, $37   ; 
; 0B переливание кубка зайца 2 (спрайты)
- D 3 - I - 0x00FB3C 03:FB2C: 07        .byte $07, $27, $30   ; 
- D 3 - I - 0x00FB3F 03:FB2F: 30        .byte $30, $30, $30   ; 
- D 3 - I - 0x00FB42 03:FB32: 10        .byte $10, $0F, $0F   ; 
- D 3 - I - 0x00FB45 03:FB35: 37        .byte $37, $30, $30   ; 
; 0C переливание кубка зайца 3 (спрайты)
- D 3 - I - 0x00FB48 03:FB38: 07        .byte $07, $17, $30   ; 
- D 3 - I - 0x00FB4B 03:FB3B: 30        .byte $30, $27, $30   ; 
- D 3 - I - 0x00FB4E 03:FB3E: 10        .byte $10, $0F, $0F   ; 
- D 3 - I - 0x00FB51 03:FB41: 27        .byte $27, $27, $37   ; 
; 0D перекрашивание зайца из кубка в талисман 1 (спрайты)
- D 3 - I - 0x00FB54 03:FB44: 0F        .byte $0F, $07, $27   ; 
- D 3 - I - 0x00FB57 03:FB47: 20        .byte $20, $17, $27   ; 
- D 3 - I - 0x00FB5A 03:FB4A: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FB5D 03:FB4D: 07        .byte $07, $17, $27   ; 
; 0E перекрашивание зайца из кубка в талисман 2 (спрайты)
- D 3 - I - 0x00FB60 03:FB50: 0F        .byte $0F, $0F, $17   ; 
- D 3 - I - 0x00FB63 03:FB53: 10        .byte $10, $07, $17   ; 
- D 3 - I - 0x00FB66 03:FB56: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FB69 03:FB59: 0F        .byte $0F, $07, $17   ; 
; 0F перекрашивание зайца из кубка в талисман 3 (спрайты)
- D 3 - I - 0x00FB6C 03:FB5C: 0F        .byte $0F, $0F, $07   ; 
- D 3 - I - 0x00FB6F 03:FB5F: 0F        .byte $0F, $0F, $07   ; 
- D 3 - I - 0x00FB72 03:FB62: 0F        .byte $0F, $0F, $0F   ; 
- D 3 - I - 0x00FB75 03:FB65: 0F        .byte $0F, $0F, $07   ; 
; 10 перекрашивание зайца из кубка в талисман 4 (спрайты)
- D 3 - I - 0x00FB78 03:FB68: 05        .byte $05, $16, $15   ; 
- D 3 - I - 0x00FB7B 03:FB6B: 30        .byte $30, $27, $37   ; 
- D 3 - I - 0x00FB7E 03:FB6E: 10        .byte $10, $0F, $0F   ; 
- D 3 - I - 0x00FB81 03:FB71: 0F        .byte $0F, $0F, $0F   ; 



tbl_FB74_sprite_text_messages:
- - - - - - 0x00FB84 03:FB74: 80 FB     .word _message_FB80_00_kick_off
- D 3 - - - 0x00FB86 03:FB76: 8C FB     .word _message_FB8C_01_time_up
- D 3 - - - 0x00FB88 03:FB78: 97 FB     .word _message_FB97_02_throw_in
- D 3 - - - 0x00FB8A 03:FB7A: B3 FB     .word _message_FBB3_03_goal_kick
- D 3 - - - 0x00FB8C 03:FB7C: D0 FB     .word _message_FBD0_04_corner_kick
- D 3 - - - 0x00FB8E 03:FB7E: F1 FB     .word _message_FBF1_05_pause



con_msg_counter     = $00
con_msg_pos_X       = $00
con_msg_pos_Y       = $00
con_msg_end         = $00



_message_FB80_00_kick_off:
- - - - - - 0x00FB90 03:FB80: 08        .byte con_msg_counter + $08   ; 
- - - - - - 0x00FB91 03:FB81: 60        .byte con_msg_pos_X   + $60   ; 
- - - - - - 0x00FB92 03:FB82: 50        .byte con_msg_pos_Y   + $50   ; 
- - - - - - 0x00FB93 03:FB83: 4B        .byte $4B   ; 
- - - - - - 0x00FB94 03:FB84: 49        .byte $49   ; 
- - - - - - 0x00FB95 03:FB85: 43        .byte $43   ; 
- - - - - - 0x00FB96 03:FB86: 4B        .byte $4B   ; 
- - - - - - 0x00FB97 03:FB87: 20        .byte $20   ; 
- - - - - - 0x00FB98 03:FB88: 4F        .byte $4F   ; 
- - - - - - 0x00FB99 03:FB89: 46        .byte $46   ; 
- - - - - - 0x00FB9A 03:FB8A: 46        .byte $46   ; 
- - - - - - 0x00FB9B 03:FB8B: 00        .byte con_msg_end



_message_FB8C_01_time_up:
- D 3 - I - 0x00FB9C 03:FB8C: 07        .byte con_msg_counter + $07   ; 
- D 3 - I - 0x00FB9D 03:FB8D: 64        .byte con_msg_pos_X   + $64   ; 
- D 3 - I - 0x00FB9E 03:FB8E: 50        .byte con_msg_pos_Y   + $50   ; 
- D 3 - I - 0x00FB9F 03:FB8F: 54        .byte $54   ; 
- D 3 - I - 0x00FBA0 03:FB90: 49        .byte $49   ; 
- D 3 - I - 0x00FBA1 03:FB91: 4D        .byte $4D   ; 
- D 3 - I - 0x00FBA2 03:FB92: 45        .byte $45   ; 
- D 3 - I - 0x00FBA3 03:FB93: 20        .byte $20   ; 
- D 3 - I - 0x00FBA4 03:FB94: 55        .byte $55   ; 
- D 3 - I - 0x00FBA5 03:FB95: 50        .byte $50   ; 
- D 3 - I - 0x00FBA6 03:FB96: 00        .byte con_msg_end



_message_FB97_02_throw_in:
- D 3 - I - 0x00FBA7 03:FB97: 06        .byte con_msg_counter + $06   ; 
- D 3 - I - 0x00FBA8 03:FB98: 68        .byte con_msg_pos_X   + $68   ; 
- D 3 - I - 0x00FBA9 03:FB99: 50        .byte con_msg_pos_Y   + $50   ; 
- D 3 - I - 0x00FBAA 03:FB9A: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBAB 03:FB9B: 55        .byte $55   ; 
- D 3 - I - 0x00FBAC 03:FB9C: 54        .byte $54   ; 
- D 3 - I - 0x00FBAD 03:FB9D: 20        .byte $20   ; 
- D 3 - I - 0x00FBAE 03:FB9E: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBAF 03:FB9F: 46        .byte $46   ; 
- D 3 - I - 0x00FBB0 03:FBA0: 04        .byte con_msg_counter + $04   ; 
- D 3 - I - 0x00FBB1 03:FBA1: 70        .byte con_msg_pos_X   + $70   ; 
- D 3 - I - 0x00FBB2 03:FBA2: 60        .byte con_msg_pos_Y   + $60   ; 
- D 3 - I - 0x00FBB3 03:FBA3: 50        .byte $50   ; 
- D 3 - I - 0x00FBB4 03:FBA4: 4C        .byte $4C   ; 
- D 3 - I - 0x00FBB5 03:FBA5: 41        .byte $41   ; 
- D 3 - I - 0x00FBB6 03:FBA6: 59        .byte $59   ; 
- D 3 - I - 0x00FBB7 03:FBA7: 08        .byte con_msg_counter + $08   ; 
- D 3 - I - 0x00FBB8 03:FBA8: 60        .byte con_msg_pos_X   + $60   ; 
- D 3 - I - 0x00FBB9 03:FBA9: 80        .byte con_msg_pos_Y   + $80   ; 
- D 3 - I - 0x00FBBA 03:FBAA: 54        .byte $54   ; 
- D 3 - I - 0x00FBBB 03:FBAB: 48        .byte $48   ; 
- D 3 - I - 0x00FBBC 03:FBAC: 52        .byte $52   ; 
- D 3 - I - 0x00FBBD 03:FBAD: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBBE 03:FBAE: 57        .byte $57   ; 
- D 3 - I - 0x00FBBF 03:FBAF: 20        .byte $20   ; 
- D 3 - I - 0x00FBC0 03:FBB0: 49        .byte $49   ; 
- D 3 - I - 0x00FBC1 03:FBB1: 4E        .byte $4E   ; 
- D 3 - I - 0x00FBC2 03:FBB2: 00        .byte con_msg_end



_message_FBB3_03_goal_kick:
- D 3 - I - 0x00FBC3 03:FBB3: 06        .byte con_msg_counter + $06   ; 
- D 3 - I - 0x00FBC4 03:FBB4: 68        .byte con_msg_pos_X   + $68   ; 
- D 3 - I - 0x00FBC5 03:FBB5: 50        .byte con_msg_pos_Y   + $50   ; 
- D 3 - I - 0x00FBC6 03:FBB6: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBC7 03:FBB7: 55        .byte $55   ; 
- D 3 - I - 0x00FBC8 03:FBB8: 54        .byte $54   ; 
- D 3 - I - 0x00FBC9 03:FBB9: 20        .byte $20   ; 
- D 3 - I - 0x00FBCA 03:FBBA: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBCB 03:FBBB: 46        .byte $46   ; 
- D 3 - I - 0x00FBCC 03:FBBC: 04        .byte con_msg_counter + $04   ; 
- D 3 - I - 0x00FBCD 03:FBBD: 70        .byte con_msg_pos_X   + $70   ; 
- D 3 - I - 0x00FBCE 03:FBBE: 60        .byte con_msg_pos_Y   + $60   ; 
- D 3 - I - 0x00FBCF 03:FBBF: 50        .byte $50   ; 
- D 3 - I - 0x00FBD0 03:FBC0: 4C        .byte $4C   ; 
- D 3 - I - 0x00FBD1 03:FBC1: 41        .byte $41   ; 
- D 3 - I - 0x00FBD2 03:FBC2: 59        .byte $59   ; 
- D 3 - I - 0x00FBD3 03:FBC3: 09        .byte con_msg_counter + $09   ; 
- D 3 - I - 0x00FBD4 03:FBC4: 58        .byte con_msg_pos_X   + $58   ; 
- D 3 - I - 0x00FBD5 03:FBC5: 80        .byte con_msg_pos_Y   + $80   ; 
- D 3 - I - 0x00FBD6 03:FBC6: 47        .byte $47   ; 
- D 3 - I - 0x00FBD7 03:FBC7: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBD8 03:FBC8: 41        .byte $41   ; 
- D 3 - I - 0x00FBD9 03:FBC9: 4C        .byte $4C   ; 
- D 3 - I - 0x00FBDA 03:FBCA: 20        .byte $20   ; 
- D 3 - I - 0x00FBDB 03:FBCB: 4B        .byte $4B   ; 
- D 3 - I - 0x00FBDC 03:FBCC: 49        .byte $49   ; 
- D 3 - I - 0x00FBDD 03:FBCD: 43        .byte $43   ; 
- D 3 - I - 0x00FBDE 03:FBCE: 4B        .byte $4B   ; 
- D 3 - I - 0x00FBDF 03:FBCF: 00        .byte con_msg_end



_message_FBD0_04_corner_kick:
- D 3 - I - 0x00FBE0 03:FBD0: 06        .byte con_msg_counter + $06   ; 
- D 3 - I - 0x00FBE1 03:FBD1: 68        .byte con_msg_pos_X   + $68   ; 
- D 3 - I - 0x00FBE2 03:FBD2: 50        .byte con_msg_pos_Y   + $50   ; 
- D 3 - I - 0x00FBE3 03:FBD3: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBE4 03:FBD4: 55        .byte $55   ; 
- D 3 - I - 0x00FBE5 03:FBD5: 54        .byte $54   ; 
- D 3 - I - 0x00FBE6 03:FBD6: 20        .byte $20   ; 
- D 3 - I - 0x00FBE7 03:FBD7: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBE8 03:FBD8: 46        .byte $46   ; 
- D 3 - I - 0x00FBE9 03:FBD9: 04        .byte con_msg_counter + $04   ; 
- D 3 - I - 0x00FBEA 03:FBDA: 70        .byte con_msg_pos_X   + $70   ; 
- D 3 - I - 0x00FBEB 03:FBDB: 60        .byte con_msg_pos_Y   + $60   ; 
- D 3 - I - 0x00FBEC 03:FBDC: 50        .byte $50   ; 
- D 3 - I - 0x00FBED 03:FBDD: 4C        .byte $4C   ; 
- D 3 - I - 0x00FBEE 03:FBDE: 41        .byte $41   ; 
- D 3 - I - 0x00FBEF 03:FBDF: 59        .byte $59   ; 
- D 3 - I - 0x00FBF0 03:FBE0: 06        .byte con_msg_counter + $06   ; 
- D 3 - I - 0x00FBF1 03:FBE1: 68        .byte con_msg_pos_X   + $68   ; 
- D 3 - I - 0x00FBF2 03:FBE2: 80        .byte con_msg_pos_Y   + $80   ; 
- D 3 - I - 0x00FBF3 03:FBE3: 43        .byte $43   ; 
- D 3 - I - 0x00FBF4 03:FBE4: 4F        .byte $4F   ; 
- D 3 - I - 0x00FBF5 03:FBE5: 52        .byte $52   ; 
- D 3 - I - 0x00FBF6 03:FBE6: 4E        .byte $4E   ; 
- D 3 - I - 0x00FBF7 03:FBE7: 45        .byte $45   ; 
- D 3 - I - 0x00FBF8 03:FBE8: 52        .byte $52   ; 
- D 3 - I - 0x00FBF9 03:FBE9: 04        .byte con_msg_counter + $04   ; 
- D 3 - I - 0x00FBFA 03:FBEA: 70        .byte con_msg_pos_X   + $70   ; 
- D 3 - I - 0x00FBFB 03:FBEB: 90        .byte con_msg_pos_Y   + $90   ; 
- D 3 - I - 0x00FBFC 03:FBEC: 4B        .byte $4B   ; 
- D 3 - I - 0x00FBFD 03:FBED: 49        .byte $49   ; 
- D 3 - I - 0x00FBFE 03:FBEE: 43        .byte $43   ; 
- D 3 - I - 0x00FBFF 03:FBEF: 4B        .byte $4B   ; 
- D 3 - I - 0x00FC00 03:FBF0: 00        .byte con_msg_end



_message_FBF1_05_pause:
- D 3 - I - 0x00FC01 03:FBF1: 05        .byte con_msg_counter + $05   ; 
- D 3 - I - 0x00FC02 03:FBF2: 6C        .byte con_msg_pos_X   + $6C   ; 
- D 3 - I - 0x00FC03 03:FBF3: 50        .byte con_msg_pos_Y   + $50   ; 
- D 3 - I - 0x00FC04 03:FBF4: 50        .byte $50   ; 
- D 3 - I - 0x00FC05 03:FBF5: 41        .byte $41   ; 
- D 3 - I - 0x00FC06 03:FBF6: 55        .byte $55   ; 
- D 3 - I - 0x00FC07 03:FBF7: 53        .byte $53   ; 
- D 3 - I - 0x00FC08 03:FBF8: 45        .byte $45   ; 
- D 3 - I - 0x00FC09 03:FBF9: 00        .byte con_msg_end


; угол движения ботов
tbl_FBFA:
- D 3 - - - 0x00FC0A 03:FBFA: 06        .byte $06   ; 
tbl_FBFB:
- D 3 - - - 0x00FC0B 03:FBFB: 00        .byte $00   ; 
- D 3 - - - 0x00FC0C 03:FBFC: 0D        .byte $0D   ; 
- D 3 - - - 0x00FC0D 03:FBFD: 00        .byte $00   ; 
- D 3 - - - 0x00FC0E 03:FBFE: 13        .byte $13   ; 
- D 3 - - - 0x00FC0F 03:FBFF: 00        .byte $00   ; 
- D 3 - - - 0x00FC10 03:FC00: 19        .byte $19   ; 
- D 3 - - - 0x00FC11 03:FC01: 00        .byte $00   ; 
- D 3 - - - 0x00FC12 03:FC02: 20        .byte $20   ; 
- D 3 - - - 0x00FC13 03:FC03: 00        .byte $00   ; 
- D 3 - - - 0x00FC14 03:FC04: 26        .byte $26   ; 
- D 3 - - - 0x00FC15 03:FC05: 00        .byte $00   ; 
- D 3 - - - 0x00FC16 03:FC06: 2C        .byte $2C   ; 
- D 3 - - - 0x00FC17 03:FC07: 00        .byte $00   ; 
- D 3 - - - 0x00FC18 03:FC08: 33        .byte $33   ; 
- D 3 - - - 0x00FC19 03:FC09: 00        .byte $00   ; 
- D 3 - - - 0x00FC1A 03:FC0A: 39        .byte $39   ; 
- D 3 - - - 0x00FC1B 03:FC0B: 00        .byte $00   ; 
- D 3 - - - 0x00FC1C 03:FC0C: 40        .byte $40   ; 
- D 3 - - - 0x00FC1D 03:FC0D: 00        .byte $00   ; 
- D 3 - - - 0x00FC1E 03:FC0E: 47        .byte $47   ; 
- D 3 - - - 0x00FC1F 03:FC0F: 00        .byte $00   ; 
- D 3 - - - 0x00FC20 03:FC10: 4E        .byte $4E   ; 
- D 3 - - - 0x00FC21 03:FC11: 00        .byte $00   ; 
- D 3 - - - 0x00FC22 03:FC12: 55        .byte $55   ; 
- D 3 - - - 0x00FC23 03:FC13: 00        .byte $00   ; 
- D 3 - - - 0x00FC24 03:FC14: 5C        .byte $5C   ; 
- D 3 - - - 0x00FC25 03:FC15: 00        .byte $00   ; 
- D 3 - - - 0x00FC26 03:FC16: 63        .byte $63   ; 
- D 3 - - - 0x00FC27 03:FC17: 00        .byte $00   ; 
- D 3 - - - 0x00FC28 03:FC18: 6A        .byte $6A   ; 
- D 3 - - - 0x00FC29 03:FC19: 00        .byte $00   ; 
- D 3 - - - 0x00FC2A 03:FC1A: 71        .byte $71   ; 
- D 3 - - - 0x00FC2B 03:FC1B: 00        .byte $00   ; 
- D 3 - - - 0x00FC2C 03:FC1C: 79        .byte $79   ; 
- D 3 - - - 0x00FC2D 03:FC1D: 00        .byte $00   ; 
- D 3 - - - 0x00FC2E 03:FC1E: 81        .byte $81   ; 
- D 3 - - - 0x00FC2F 03:FC1F: 00        .byte $00   ; 
- D 3 - - - 0x00FC30 03:FC20: 89        .byte $89   ; 
- D 3 - - - 0x00FC31 03:FC21: 00        .byte $00   ; 
- D 3 - - - 0x00FC32 03:FC22: 91        .byte $91   ; 
- D 3 - - - 0x00FC33 03:FC23: 00        .byte $00   ; 
- D 3 - - - 0x00FC34 03:FC24: 99        .byte $99   ; 
- D 3 - - - 0x00FC35 03:FC25: 00        .byte $00   ; 
- D 3 - - - 0x00FC36 03:FC26: A2        .byte $A2   ; 
- D 3 - - - 0x00FC37 03:FC27: 00        .byte $00   ; 
- D 3 - - - 0x00FC38 03:FC28: AB        .byte $AB   ; 
- D 3 - - - 0x00FC39 03:FC29: 00        .byte $00   ; 
- D 3 - - - 0x00FC3A 03:FC2A: B4        .byte $B4   ; 
- D 3 - - - 0x00FC3B 03:FC2B: 00        .byte $00   ; 
- D 3 - - - 0x00FC3C 03:FC2C: BE        .byte $BE   ; 
- D 3 - - - 0x00FC3D 03:FC2D: 00        .byte $00   ; 
- D 3 - - - 0x00FC3E 03:FC2E: C8        .byte $C8   ; 
- D 3 - - - 0x00FC3F 03:FC2F: 00        .byte $00   ; 
- D 3 - - - 0x00FC40 03:FC30: D2        .byte $D2   ; 
- D 3 - - - 0x00FC41 03:FC31: 00        .byte $00   ; 
- D 3 - - - 0x00FC42 03:FC32: DD        .byte $DD   ; 
- D 3 - - - 0x00FC43 03:FC33: 00        .byte $00   ; 
- D 3 - - - 0x00FC44 03:FC34: E8        .byte $E8   ; 
- D 3 - - - 0x00FC45 03:FC35: 00        .byte $00   ; 
- D 3 - - - 0x00FC46 03:FC36: F4        .byte $F4   ; 
- D 3 - - - 0x00FC47 03:FC37: 00        .byte $00   ; 
- D 3 - - - 0x00FC48 03:FC38: 00        .byte $00   ; 
- D 3 - - - 0x00FC49 03:FC39: 01        .byte $01   ; 
- D 3 - - - 0x00FC4A 03:FC3A: 0D        .byte $0D   ; 
- D 3 - - - 0x00FC4B 03:FC3B: 01        .byte $01   ; 
- D 3 - - - 0x00FC4C 03:FC3C: 1A        .byte $1A   ; 
- D 3 - - - 0x00FC4D 03:FC3D: 01        .byte $01   ; 
- D 3 - - - 0x00FC4E 03:FC3E: 29        .byte $29   ; 
- D 3 - - - 0x00FC4F 03:FC3F: 01        .byte $01   ; 
- D 3 - - - 0x00FC50 03:FC40: 38        .byte $38   ; 
- D 3 - - - 0x00FC51 03:FC41: 01        .byte $01   ; 
- D 3 - - - 0x00FC52 03:FC42: 48        .byte $48   ; 
- D 3 - - - 0x00FC53 03:FC43: 01        .byte $01   ; 
- D 3 - - - 0x00FC54 03:FC44: 59        .byte $59   ; 
- D 3 - - - 0x00FC55 03:FC45: 01        .byte $01   ; 
- D 3 - - - 0x00FC56 03:FC46: 6B        .byte $6B   ; 
- D 3 - - - 0x00FC57 03:FC47: 01        .byte $01   ; 
- D 3 - - - 0x00FC58 03:FC48: 7F        .byte $7F   ; 
- D 3 - - - 0x00FC59 03:FC49: 01        .byte $01   ; 
- D 3 - - - 0x00FC5A 03:FC4A: 94        .byte $94   ; 
- D 3 - - - 0x00FC5B 03:FC4B: 01        .byte $01   ; 
- D 3 - - - 0x00FC5C 03:FC4C: AB        .byte $AB   ; 
- D 3 - - - 0x00FC5D 03:FC4D: 01        .byte $01   ; 
- D 3 - - - 0x00FC5E 03:FC4E: C4        .byte $C4   ; 
- D 3 - - - 0x00FC5F 03:FC4F: 01        .byte $01   ; 
- D 3 - - - 0x00FC60 03:FC50: DF        .byte $DF   ; 
- D 3 - - - 0x00FC61 03:FC51: 01        .byte $01   ; 
- D 3 - - - 0x00FC62 03:FC52: FD        .byte $FD   ; 
- D 3 - - - 0x00FC63 03:FC53: 01        .byte $01   ; 
- D 3 - - - 0x00FC64 03:FC54: 1D        .byte $1D   ; 
- D 3 - - - 0x00FC65 03:FC55: 02        .byte $02   ; 
- D 3 - - - 0x00FC66 03:FC56: 42        .byte $42   ; 
- D 3 - - - 0x00FC67 03:FC57: 02        .byte $02   ; 
- D 3 - - - 0x00FC68 03:FC58: 6A        .byte $6A   ; 
- D 3 - - - 0x00FC69 03:FC59: 02        .byte $02   ; 
- D 3 - - - 0x00FC6A 03:FC5A: 98        .byte $98   ; 
- D 3 - - - 0x00FC6B 03:FC5B: 02        .byte $02   ; 
- D 3 - - - 0x00FC6C 03:FC5C: DB        .byte $DB   ; 
- D 3 - - - 0x00FC6D 03:FC5D: 02        .byte $02   ; 
- D 3 - - - 0x00FC6E 03:FC5E: 07        .byte $07   ; 
- D 3 - - - 0x00FC6F 03:FC5F: 03        .byte $03   ; 
- D 3 - - - 0x00FC70 03:FC60: 4C        .byte $4C   ; 
- D 3 - - - 0x00FC71 03:FC61: 03        .byte $03   ; 
- D 3 - - - 0x00FC72 03:FC62: 9D        .byte $9D   ; 
- D 3 - - - 0x00FC73 03:FC63: 03        .byte $03   ; 
- D 3 - - - 0x00FC74 03:FC64: FE        .byte $FE   ; 
- D 3 - - - 0x00FC75 03:FC65: 03        .byte $03   ; 
- D 3 - - - 0x00FC76 03:FC66: 74        .byte $74   ; 
- D 3 - - - 0x00FC77 03:FC67: 04        .byte $04   ; 
- D 3 - - - 0x00FC78 03:FC68: 07        .byte $07   ; 
- D 3 - - - 0x00FC79 03:FC69: 05        .byte $05   ; 
- D 3 - - - 0x00FC7A 03:FC6A: C3        .byte $C3   ; 
- D 3 - - - 0x00FC7B 03:FC6B: 05        .byte $05   ; 
- D 3 - - - 0x00FC7C 03:FC6C: BE        .byte $BE   ; 
- D 3 - - - 0x00FC7D 03:FC6D: 06        .byte $06   ; 
- D 3 - - - 0x00FC7E 03:FC6E: 1B        .byte $1B   ; 
- D 3 - - - 0x00FC7F 03:FC6F: 08        .byte $08   ; 
- D 3 - - - 0x00FC80 03:FC70: 27        .byte $27   ; 
- D 3 - - - 0x00FC81 03:FC71: 0A        .byte $0A   ; 
- D 3 - - - 0x00FC82 03:FC72: 8F        .byte $8F   ; 
- D 3 - - - 0x00FC83 03:FC73: 0D        .byte $0D   ; 
- D 3 - - - 0x00FC84 03:FC74: 5B        .byte $5B   ; 
- D 3 - - - 0x00FC85 03:FC75: 20        .byte $20   ; 
- D 3 - - - 0x00FC86 03:FC76: BC        .byte $BC   ; 
- D 3 - - - 0x00FC87 03:FC77: 40        .byte $40   ; 
- D 3 - - - 0x00FC88 03:FC78: FF        .byte $FF   ; 
- D 3 - - - 0x00FC89 03:FC79: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x00FC8A 03:FC7A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FC90 03:FC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCA0 03:FC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCB0 03:FCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCC0 03:FCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCD0 03:FCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCE0 03:FCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FCF0 03:FCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD00 03:FCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD10 03:FD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD20 03:FD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD30 03:FD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD40 03:FD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD50 03:FD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD60 03:FD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD70 03:FD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD80 03:FD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FD90 03:FD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDA0 03:FD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDB0 03:FDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDC0 03:FDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDD0 03:FDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDE0 03:FDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FDF0 03:FDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE00 03:FDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE10 03:FE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE20 03:FE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE30 03:FE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE40 03:FE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE50 03:FE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE60 03:FE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE70 03:FE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE80 03:FE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FE90 03:FE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEA0 03:FE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEB0 03:FEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEC0 03:FEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FED0 03:FEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEE0 03:FED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FEF0 03:FEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF00 03:FEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF10 03:FF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF20 03:FF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF30 03:FF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF40 03:FF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF50 03:FF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF60 03:FF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF70 03:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF80 03:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FF90 03:FF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFA0 03:FF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFB0 03:FFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFC0 03:FFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00FFD0 03:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



vec_FFD0_RESET:
C - - - - - 0x00FFE0 03:FFD0: A9 00     LDA #$00
C - - - - - 0x00FFE2 03:FFD2: 8D 00 80  STA $8000
C - - - - - 0x00FFE5 03:FFD5: 4C 03 C0  JMP loc_C003


; bzk garbage
- - - - - - 0x00FFE8 03:FFD8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00FFF0 03:FFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x010000 03:FFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank FF: 0x%X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x01000A 03:FFFA: 00 C0     .word vec_C000_NMI
- D 3 - - - 0x01000C 03:FFFC: D0 FF     .word vec_FFD0_RESET
- - - - - - 0x01000E 03:FFFE: D0 FF     .word $FFD0



