.segment "BANK_06"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00C010-0x00E00F



.export sub_0x00C011
.export sub_006_0x00C011_07
.export ofs_016_0x00CF31_10
.export ofs_016_0x00CFE3_0D
.export sub_0x00D078
.export ofs_016_0x00D1DE_0B
.export ofs_016_0x00D248_1A
.export _off019_0x00D2AB_00
.export _off019_0x00D4E1_01
.export _off019_0x00D643_02
.export _off019_0x00D7EF_07
.export _off019_0x00D90F_04
.export _off019_0x00DB49_03
.export _off019_0x00DD7E_05
.export _off019_0x00DD95_08
.export _off019_0x00DE12_06
.export _off019_0x00DE97_09
.export _off019_0x00DEE7_0A
.export _off019_0x00DF49_0B
.export _off019_0x00DFA0_0C
.export _off019_0x00DFDF_0D
.export _off019_0x00DFF8_0E



; bzk garbage, unused bank id
- D 1 - - - 0x00C010 03:A000: 06        .byte con_prg_bank + $06   ; 



sub_0x00C011:
sub_006_0x00C011_07:
; con_F3D6_07
C - - - - - 0x00C011 03:A001: 20 DA A0  JSR sub_A0DA
C - - - - - 0x00C014 03:A004: A5 75     LDA ram_stage
C - - - - - 0x00C016 03:A006: C9 03     CMP #$03
C - - - - - 0x00C018 03:A008: D0 13     BNE bra_A01D_RTS
C - - - - - 0x00C01A 03:A00A: A4 63     LDY ram_0063
C - - - - - 0x00C01C 03:A00C: B9 58 A0  LDA tbl_A058,Y
C - - - - - 0x00C01F 03:A00F: F0 0C     BEQ bra_A01D_RTS
C - - - - - 0x00C021 03:A011: A0 08     LDY #$08
bra_A013_loop:
C - - - - - 0x00C023 03:A013: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C026 03:A016: F0 06     BEQ bra_A01E
C - - - - - 0x00C028 03:A018: C8        INY
C - - - - - 0x00C029 03:A019: C0 0A     CPY #$0A
C - - - - - 0x00C02B 03:A01B: 90 F6     BCC bra_A013_loop
bra_A01D_RTS:
C - - - - - 0x00C02D 03:A01D: 60        RTS
bra_A01E:
C - - - - - 0x00C02E 03:A01E: A2 09     LDX #$09
C - - - - - 0x00C030 03:A020: A9 38     LDA #$38
C - - - - - 0x00C032 03:A022: 85 0A     STA ram_000A_t09
C - - - - - 0x00C034 03:A024: 20 D3 8B  JSR sub_0x008BE3
C - - - - - 0x00C037 03:A027: A9 00     LDA #$00
C - - - - - 0x00C039 03:A029: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00C03C 03:A02C: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x00C03F 03:A02F: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00C042 03:A032: A9 00     LDA #$00
C - - - - - 0x00C044 03:A034: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C047 03:A037: A5 29     LDA ram_random
C - - - - - 0x00C049 03:A039: 29 03     AND #$03
C - - - - - 0x00C04B 03:A03B: AA        TAX
C - - - - - 0x00C04C 03:A03C: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00C04F 03:A03F: BD 77 A0  LDA tbl_A077,X
C - - - - - 0x00C052 03:A042: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C055 03:A045: BD 7B A0  LDA tbl_A07B,X
C - - - - - 0x00C058 03:A048: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00C05B 03:A04B: A9 26     LDA #con_chr_bank + $26
C - - - - - 0x00C05D 03:A04D: 85 7B     STA ram_chr_bank + $04
C - - - - - 0x00C05F 03:A04F: A9 0C     LDA #$0C
C - - - - - 0x00C061 03:A051: C5 89     CMP ram_0089
C - - - - - 0x00C063 03:A053: F0 C8     BEQ bra_A01D_RTS
C - - - - - 0x00C065 03:A055: 4C 93 A4  JMP loc_A493



tbl_A058:
- - - - - - 0x00C068 03:A058: 00        .byte $00   ; 00 
- - - - - - 0x00C069 03:A059: 00        .byte $00   ; 01 
- - - - - - 0x00C06A 03:A05A: 00        .byte $00   ; 02 
- D 1 - - - 0x00C06B 03:A05B: 00        .byte $00   ; 03 
- D 1 - - - 0x00C06C 03:A05C: 00        .byte $00   ; 04 
- D 1 - - - 0x00C06D 03:A05D: 00        .byte $00   ; 05 
- D 1 - - - 0x00C06E 03:A05E: 00        .byte $00   ; 06 
- D 1 - - - 0x00C06F 03:A05F: 01        .byte $01   ; 07 
- D 1 - - - 0x00C070 03:A060: 01        .byte $01   ; 08 
- D 1 - - - 0x00C071 03:A061: 01        .byte $01   ; 09 
- D 1 - - - 0x00C072 03:A062: 01        .byte $01   ; 0A 
- D 1 - - - 0x00C073 03:A063: 01        .byte $01   ; 0B 
- D 1 - - - 0x00C074 03:A064: 01        .byte $01   ; 0C 
- D 1 - - - 0x00C075 03:A065: 01        .byte $01   ; 0D 
- D 1 - - - 0x00C076 03:A066: 01        .byte $01   ; 0E 
- D 1 - - - 0x00C077 03:A067: 01        .byte $01   ; 0F 
- D 1 - - - 0x00C078 03:A068: 01        .byte $01   ; 10 
- D 1 - - - 0x00C079 03:A069: 00        .byte $00   ; 11 
- D 1 - - - 0x00C07A 03:A06A: 00        .byte $00   ; 12 
- D 1 - - - 0x00C07B 03:A06B: 00        .byte $00   ; 13 
- D 1 - - - 0x00C07C 03:A06C: 01        .byte $01   ; 14 
- D 1 - - - 0x00C07D 03:A06D: 01        .byte $01   ; 15 
- D 1 - - - 0x00C07E 03:A06E: 00        .byte $00   ; 16 
- D 1 - - - 0x00C07F 03:A06F: 00        .byte $00   ; 17 
- D 1 - - - 0x00C080 03:A070: 01        .byte $01   ; 18 
- D 1 - - - 0x00C081 03:A071: 00        .byte $00   ; 19 
- D 1 - - - 0x00C082 03:A072: 00        .byte $00   ; 1A 
- D 1 - - - 0x00C083 03:A073: 00        .byte $00   ; 1B 
- D 1 - - - 0x00C084 03:A074: 00        .byte $00   ; 1C 
- D 1 - - - 0x00C085 03:A075: 01        .byte $01   ; 1D 
- - - - - - 0x00C086 03:A076: 01        .byte $01   ; 1E 



tbl_A077:
- D 1 - - - 0x00C087 03:A077: 30        .byte $30   ; 00 
- D 1 - - - 0x00C088 03:A078: 60        .byte $60   ; 01 
- D 1 - - - 0x00C089 03:A079: A0        .byte $A0   ; 02 
- D 1 - - - 0x00C08A 03:A07A: C0        .byte $C0   ; 03 



tbl_A07B:
- D 1 - - - 0x00C08B 03:A07B: 0E        .byte $0E   ; 00 
- D 1 - - - 0x00C08C 03:A07C: 0A        .byte $0A   ; 01 
- D 1 - - - 0x00C08D 03:A07D: 0F        .byte $0F   ; 02 
- D 1 - - - 0x00C08E 03:A07E: 0D        .byte $0D   ; 03 



sub_A07F:
C - - - - - 0x00C08F 03:A07F: A0 02     LDY #$02
C - - - - - 0x00C091 03:A081: B9 83 07  LDA ram_0782_unk + $01,Y
C - - - - - 0x00C094 03:A084: D0 1B     BNE bra_A0A1_loop
C - - - - - 0x00C096 03:A086: A9 28     LDA #$28
C - - - - - 0x00C098 03:A088: 99 83 07  STA ram_0782_unk + $01,Y
C - - - - - 0x00C09B 03:A08B: A9 00     LDA #$00
C - - - - - 0x00C09D 03:A08D: 99 D3 07  STA ram_07D2_unk + $01,Y
C - - - - - 0x00C0A0 03:A090: A2 03     LDX #$03
bra_A092_loop:
C - - - - - 0x00C0A2 03:A092: 9D 46 03  STA ram_0346,X
C - - - - - 0x00C0A5 03:A095: CA        DEX
C - - - - - 0x00C0A6 03:A096: 10 FA     BPL bra_A092_loop
C - - - - - 0x00C0A8 03:A098: A2 05     LDX #$05
bra_A09A_loop:
C - - - - - 0x00C0AA 03:A09A: 95 A0     STA ram_00A0,X
C - - - - - 0x00C0AC 03:A09C: 95 AB     STA ram_00AB,X
C - - - - - 0x00C0AE 03:A09E: CA        DEX
C - - - - - 0x00C0AF 03:A09F: 10 F9     BPL bra_A09A_loop
bra_A0A1_loop:
C - - - - - 0x00C0B1 03:A0A1: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C0B4 03:A0A4: F0 0B     BEQ bra_A0B1
C - - - - - 0x00C0B6 03:A0A6: C9 28     CMP #$28
C - - - - - 0x00C0B8 03:A0A8: F0 07     BEQ bra_A0B1
C - - - - - 0x00C0BA 03:A0AA: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00C0BD 03:A0AD: 29 F0     AND #$F0
C - - - - - 0x00C0BF 03:A0AF: F0 44     BEQ bra_A0F5_RTS
bra_A0B1:
C - - - - - 0x00C0C1 03:A0B1: C8        INY
C - - - - - 0x00C0C2 03:A0B2: C0 0A     CPY #$0A
C - - - - - 0x00C0C4 03:A0B4: 90 EB     BCC bra_A0A1_loop
C - - - - - 0x00C0C6 03:A0B6: AD 43 03  LDA ram_0343
C - - - - - 0x00C0C9 03:A0B9: C9 07     CMP #$07
C - - - - - 0x00C0CB 03:A0BB: F0 38     BEQ bra_A0F5_RTS
C - - - - - 0x00C0CD 03:A0BD: A5 8C     LDA ram_008C
C - - - - - 0x00C0CF 03:A0BF: D0 34     BNE bra_A0F5_RTS
C - - - - - 0x00C0D1 03:A0C1: A0 02     LDY #$02
C - - - - - 0x00C0D3 03:A0C3: A9 12     LDA #$12
C - - - - - 0x00C0D5 03:A0C5: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C0D8 03:A0C8: A9 80     LDA #$80
C - - - - - 0x00C0DA 03:A0CA: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C0DD 03:A0CD: A9 40     LDA #$40
C - - - - - 0x00C0DF 03:A0CF: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C0E2 03:A0D2: A9 1A     LDA #$1A
C - - - - - 0x00C0E4 03:A0D4: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00C0E7 03:A0D7: 4C 78 A4  JMP loc_A478



sub_A0DA:
C - - - - - 0x00C0EA 03:A0DA: A5 75     LDA ram_stage
C - - - - - 0x00C0EC 03:A0DC: C9 04     CMP #$04
C - - - - - 0x00C0EE 03:A0DE: D0 16     BNE bra_A0F6
C - - - - - 0x00C0F0 03:A0E0: 20 7F A0  JSR sub_A07F
C - - - - - 0x00C0F3 03:A0E3: AD 84 07  LDA ram_0782_unk + $02
C - - - - - 0x00C0F6 03:A0E6: F0 12     BEQ bra_A0FA
C - - - - - 0x00C0F8 03:A0E8: A5 8C     LDA ram_008C
C - - - - - 0x00C0FA 03:A0EA: C9 05     CMP #$05
C - - - - - 0x00C0FC 03:A0EC: F0 07     BEQ bra_A0F5_RTS
C - - - - - 0x00C0FE 03:A0EE: AD 02 06  LDA ram_0600_obj + $02
C - - - - - 0x00C101 03:A0F1: 29 F0     AND #$F0
C - - - - - 0x00C103 03:A0F3: D0 05     BNE bra_A0FA
bra_A0F5_RTS:
loc_A0F5_RTS:
C D 1 - - - 0x00C105 03:A0F5: 60        RTS
bra_A0F6:
C - - - - - 0x00C106 03:A0F6: A5 8C     LDA ram_008C
C - - - - - 0x00C108 03:A0F8: D0 FB     BNE bra_A0F5_RTS
bra_A0FA:
C - - - - - 0x00C10A 03:A0FA: A5 69     LDA ram_0069
C - - - - - 0x00C10C 03:A0FC: 05 6A     ORA ram_006A
C - - - - - 0x00C10E 03:A0FE: 05 6B     ORA ram_006B
C - - - - - 0x00C110 03:A100: 05 6C     ORA ram_006C
C - - - - - 0x00C112 03:A102: F0 F1     BEQ bra_A0F5_RTS
C - - - - - 0x00C114 03:A104: A5 75     LDA ram_stage
C - - - - - 0x00C116 03:A106: F0 03     BEQ bra_A10B
C - - - - - 0x00C118 03:A108: 4C B7 A1  JMP loc_A1B7
bra_A10B:
C - - - - - 0x00C11B 03:A10B: 20 5E A3  JSR sub_A35E_prepare_data_pointers
C - - - - - 0x00C11E 03:A10E: A4 60     LDY ram_0060
C - - - - - 0x00C120 03:A110: A5 69     LDA ram_0069
C - - - - - 0x00C122 03:A112: 10 01     BPL bra_A115
C - - - - - 0x00C124 03:A114: 88        DEY
bra_A115:
C - - - - - 0x00C125 03:A115: C0 FF     CPY #$FF
C - - - - - 0x00C127 03:A117: D0 03     BNE bra_A11C
; FF
C - - - - - 0x00C129 03:A119: 4C F5 A0  JMP loc_A0F5_RTS
bra_A11C:
C - - - - - 0x00C12C 03:A11C: 98        TYA
C - - - - - 0x00C12D 03:A11D: 0A        ASL
C - - - - - 0x00C12E 03:A11E: A8        TAY
C - - - - - 0x00C12F 03:A11F: B1 08     LDA (ram_0008_t01_data),Y
C - - - - - 0x00C131 03:A121: 85 0A     STA ram_000A_t02_data
C - - - - - 0x00C133 03:A123: C8        INY
C - - - - - 0x00C134 03:A124: B1 08     LDA (ram_0008_t01_data),Y
C - - - - - 0x00C136 03:A126: 85 0B     STA ram_000A_t02_data + $01
C - - - - - 0x00C138 03:A128: A0 00     LDY #$00
loc_A12A_loop:
bra_A12A_loop:
C D 1 - - - 0x00C13A 03:A12A: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C13C 03:A12C: 18        CLC
C - - - - - 0x00C13D 03:A12D: 69 01     ADC #$01
C - - - - - 0x00C13F 03:A12F: F0 C4     BEQ bra_A0F5_RTS
C - - - - - 0x00C141 03:A131: 29 FC     AND #$FC
C - - - - - 0x00C143 03:A133: 85 00     STA ram_0000_t1D
C - - - - - 0x00C145 03:A135: A5 61     LDA ram_0061
C - - - - - 0x00C147 03:A137: 29 FC     AND #$FC
C - - - - - 0x00C149 03:A139: C5 00     CMP ram_0000_t1D
C - - - - - 0x00C14B 03:A13B: F0 44     BEQ bra_A181
C - - - - - 0x00C14D 03:A13D: C8        INY
C - - - - - 0x00C14E 03:A13E: C8        INY
C - - - - - 0x00C14F 03:A13F: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C151 03:A141: C9 15     CMP #$15
C - - - - - 0x00C153 03:A143: F0 04     BEQ bra_A149
bra_A145_loop:
C - - - - - 0x00C155 03:A145: C8        INY
C - - - - - 0x00C156 03:A146: C8        INY
C - - - - - 0x00C157 03:A147: D0 E1     BNE bra_A12A_loop   ; jmp?
bra_A149:
C - - - - - 0x00C159 03:A149: A5 69     LDA ram_0069
C - - - - - 0x00C15B 03:A14B: 10 F8     BPL bra_A145_loop
C - - - - - 0x00C15D 03:A14D: A5 61     LDA ram_0061
C - - - - - 0x00C15F 03:A14F: 29 FC     AND #$FC
C - - - - - 0x00C161 03:A151: 38        SEC
C - - - - - 0x00C162 03:A152: E5 00     SBC ram_0000_t1D
C - - - - - 0x00C164 03:A154: 90 EF     BCC bra_A145_loop
- - - - - - 0x00C166 03:A156: C9 28     CMP #$28
- - - - - - 0x00C168 03:A158: B0 EB     BCS bra_A145_loop
- - - - - - 0x00C16A 03:A15A: 49 FF     EOR #$FF
- - - - - - 0x00C16C 03:A15C: 85 12     STA ram_0012_t08
- - - - - - 0x00C16E 03:A15E: 88        DEY
- - - - - - 0x00C16F 03:A15F: 88        DEY
- - - - - - 0x00C170 03:A160: 20 9A A1  JSR sub_A19A
- - - - - - 0x00C173 03:A163: D0 2F     BNE bra_A194
- - - - - - 0x00C175 03:A165: A5 12     LDA ram_0012_t08
- - - - - - 0x00C177 03:A167: 99 4E 06  STA ram_obj_pos_X,Y
- - - - - - 0x00C17A 03:A16A: A9 30     LDA #$30
- - - - - - 0x00C17C 03:A16C: 99 00 06  STA ram_0600_obj,Y
- - - - - - 0x00C17F 03:A16F: A5 1C     LDA ram_001C_t05
- - - - - - 0x00C181 03:A171: 99 82 07  STA ram_0782_unk,Y
- - - - - - 0x00C184 03:A174: A5 0C     LDA ram_000C_t09
- - - - - - 0x00C186 03:A176: 99 68 06  STA ram_obj_pos_Y,Y
- - - - - - 0x00C189 03:A179: A9 00     LDA #$00
- - - - - - 0x00C18B 03:A17B: 20 A8 A3  JSR sub_A3A8
- - - - - - 0x00C18E 03:A17E: 4C 94 A1  JMP loc_A194
bra_A181:
C - - - - - 0x00C191 03:A181: 20 9A A1  JSR sub_A19A
C - - - - - 0x00C194 03:A184: D0 0E     BNE bra_A194
C - - - - - 0x00C196 03:A186: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x00C199 03:A189: 20 8A A3  JSR sub_A38A
C - - - - - 0x00C19C 03:A18C: A5 0C     LDA ram_000C_t09
C - - - - - 0x00C19E 03:A18E: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C1A1 03:A191: 20 A3 A3  JSR sub_A3A3
bra_A194:
loc_A194:
C - - - - - 0x00C1A4 03:A194: A4 06     LDY ram_0006_t13
C - - - - - 0x00C1A6 03:A196: C8        INY
C - - - - - 0x00C1A7 03:A197: 4C 2A A1  JMP loc_A12A_loop



sub_A19A:
; out
    ; Z
        ; 0 = 
        ; 1 = 
    ; ram_000C_t09
C - - - - - 0x00C1AA 03:A19A: C8        INY
C - - - - - 0x00C1AB 03:A19B: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C1AD 03:A19D: 85 0C     STA ram_000C_t09
C - - - - - 0x00C1AF 03:A19F: C8        INY
C - - - - - 0x00C1B0 03:A1A0: 4C 6B A3  JMP loc_A36B



sub_A1A3:
C - - - - - 0x00C1B3 03:A1A3: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C1B5 03:A1A5: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C1B8 03:A1A8: A9 FF     LDA #$FF
C - - - - - 0x00C1BA 03:A1AA: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C1BD 03:A1AD: A5 69     LDA ram_0069
C - - - - - 0x00C1BF 03:A1AF: 10 05     BPL bra_A1B6_RTS
C - - - - - 0x00C1C1 03:A1B1: A9 00     LDA #$00
C - - - - - 0x00C1C3 03:A1B3: 99 4E 06  STA ram_obj_pos_X,Y
bra_A1B6_RTS:
C - - - - - 0x00C1C6 03:A1B6: 60        RTS



loc_A1B7:
C D 1 - - - 0x00C1C7 03:A1B7: 20 52 A3  JSR sub_A352_prepare_data_pointers
C - - - - - 0x00C1CA 03:A1BA: A4 88     LDY ram_x2_stage
C - - - - - 0x00C1CC 03:A1BC: B9 E5 A2  LDA tbl_A2E5,Y
C - - - - - 0x00C1CF 03:A1BF: 85 0E     STA ram_000E_t01_data
C - - - - - 0x00C1D1 03:A1C1: B9 E6 A2  LDA tbl_A2E5 + $01,Y
C - - - - - 0x00C1D4 03:A1C4: 85 0F     STA ram_000E_t01_data + $01
C - - - - - 0x00C1D6 03:A1C6: A9 00     LDA #$00
C - - - - - 0x00C1D8 03:A1C8: 85 19     STA ram_0019_temp
C - - - - - 0x00C1DA 03:A1CA: A5 23     LDA ram_frm_cnt
C - - - - - 0x00C1DC 03:A1CC: 29 01     AND #$01
C - - - - - 0x00C1DE 03:A1CE: D0 03     BNE bra_A1D3
C - - - - - 0x00C1E0 03:A1D0: 4C 67 A2  JMP loc_A267
bra_A1D3:
C - - - - - 0x00C1E3 03:A1D3: A5 6B     LDA ram_006B
C - - - - - 0x00C1E5 03:A1D5: 05 6C     ORA ram_006C
C - - - - - 0x00C1E7 03:A1D7: F0 DD     BEQ bra_A1B6_RTS
C - - - - - 0x00C1E9 03:A1D9: A5 60     LDA ram_0060
C - - - - - 0x00C1EB 03:A1DB: 85 18     STA ram_0018_temp
loc_A1DD:
C D 1 - - - 0x00C1ED 03:A1DD: A4 63     LDY ram_0063
C - - - - - 0x00C1EF 03:A1DF: A5 6B     LDA ram_006B
C - - - - - 0x00C1F1 03:A1E1: 30 01     BMI bra_A1E4
C - - - - - 0x00C1F3 03:A1E3: C8        INY
bra_A1E4:
C - - - - - 0x00C1F4 03:A1E4: 20 1F A3  JSR sub_A31F
C - - - - - 0x00C1F7 03:A1E7: A5 61     LDA ram_0061
C - - - - - 0x00C1F9 03:A1E9: 85 1A     STA ram_001A_t02
C - - - - - 0x00C1FB 03:A1EB: A5 64     LDA ram_0064
C - - - - - 0x00C1FD 03:A1ED: 29 F8     AND #$F8
C - - - - - 0x00C1FF 03:A1EF: 85 0C     STA ram_000C_t01_distance
loc_A1F1:
C D 1 - - - 0x00C201 03:A1F1: A0 00     LDY #$00
C - - - - - 0x00C203 03:A1F3: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C205 03:A1F5: C9 FF     CMP #$FF
C - - - - - 0x00C207 03:A1F7: F0 60     BEQ bra_A259
C - - - - - 0x00C209 03:A1F9: A5 19     LDA ram_0019_temp
C - - - - - 0x00C20B 03:A1FB: F0 08     BEQ bra_A205
C - - - - - 0x00C20D 03:A1FD: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C20F 03:A1FF: C5 1A     CMP ram_001A_t02
C - - - - - 0x00C211 03:A201: B0 50     BCS bra_A253
C - - - - - 0x00C213 03:A203: 90 06     BCC bra_A20B    ; jmp
bra_A205:
C - - - - - 0x00C215 03:A205: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C217 03:A207: C5 1A     CMP ram_001A_t02
C - - - - - 0x00C219 03:A209: 90 48     BCC bra_A253
bra_A20B:
C - - - - - 0x00C21B 03:A20B: 85 1B     STA ram_001B_t06
C - - - - - 0x00C21D 03:A20D: C8        INY
C - - - - - 0x00C21E 03:A20E: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C220 03:A210: 29 F8     AND #$F8
C - - - - - 0x00C222 03:A212: C5 0C     CMP ram_000C_t01_distance
C - - - - - 0x00C224 03:A214: D0 3D     BNE bra_A253
C - - - - - 0x00C226 03:A216: A0 02     LDY #$02
C - - - - - 0x00C228 03:A218: 20 6B A3  JSR sub_A36B
C - - - - - 0x00C22B 03:A21B: D0 36     BNE bra_A253
C - - - - - 0x00C22D 03:A21D: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C22F 03:A21F: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C232 03:A222: A9 FF     LDA #$FF
C - - - - - 0x00C234 03:A224: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C237 03:A227: A5 6B     LDA ram_006B
C - - - - - 0x00C239 03:A229: 10 05     BPL bra_A230
C - - - - - 0x00C23B 03:A22B: A9 00     LDA #$00
C - - - - - 0x00C23D 03:A22D: 99 68 06  STA ram_obj_pos_Y,Y
bra_A230:
C - - - - - 0x00C240 03:A230: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C242 03:A232: 29 7F     AND #$7F
C - - - - - 0x00C244 03:A234: C9 3E     CMP #$3E
C - - - - - 0x00C246 03:A236: 90 10     BCC bra_A248
C - - - - - 0x00C248 03:A238: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C24A 03:A23A: 29 40     AND #$40
C - - - - - 0x00C24C 03:A23C: F0 0A     BEQ bra_A248
C - - - - - 0x00C24E 03:A23E: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00C251 03:A241: D0 05     BNE bra_A248
C - - - - - 0x00C253 03:A243: A9 F0     LDA #$F0
C - - - - - 0x00C255 03:A245: 99 68 06  STA ram_obj_pos_Y,Y
bra_A248:
C - - - - - 0x00C258 03:A248: A5 1B     LDA ram_001B_t06
C - - - - - 0x00C25A 03:A24A: 38        SEC
C - - - - - 0x00C25B 03:A24B: E5 1A     SBC ram_001A_t02
C - - - - - 0x00C25D 03:A24D: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00C260 03:A250: 20 A3 A3  JSR sub_A3A3
bra_A253:
C - - - - - 0x00C263 03:A253: 20 CB A2  JSR sub_A2CB
C - - - - - 0x00C266 03:A256: 4C F1 A1  JMP loc_A1F1
bra_A259:
C - - - - - 0x00C269 03:A259: E6 19     INC ram_0019_temp
C - - - - - 0x00C26B 03:A25B: A5 19     LDA ram_0019_temp
C - - - - - 0x00C26D 03:A25D: 29 01     AND #$01
C - - - - - 0x00C26F 03:A25F: F0 05     BEQ bra_A266_RTS
C - - - - - 0x00C271 03:A261: E6 18     INC ram_0018_temp
C - - - - - 0x00C273 03:A263: 4C DD A1  JMP loc_A1DD
bra_A266_RTS:
C - - - - - 0x00C276 03:A266: 60        RTS



loc_A267:
C D 1 - - - 0x00C277 03:A267: A5 69     LDA ram_0069
C - - - - - 0x00C279 03:A269: 05 6A     ORA ram_006A
C - - - - - 0x00C27B 03:A26B: F0 F9     BEQ bra_A266_RTS
C - - - - - 0x00C27D 03:A26D: A4 63     LDY ram_0063
loc_A26F_loop:
C D 1 - - - 0x00C27F 03:A26F: A5 60     LDA ram_0060
C - - - - - 0x00C281 03:A271: 85 18     STA ram_0018_temp
C - - - - - 0x00C283 03:A273: A5 69     LDA ram_0069
C - - - - - 0x00C285 03:A275: 30 02     BMI bra_A279
C - - - - - 0x00C287 03:A277: E6 18     INC ram_0018_temp
bra_A279:
C - - - - - 0x00C289 03:A279: 20 1F A3  JSR sub_A31F
C - - - - - 0x00C28C 03:A27C: A5 64     LDA ram_0064
C - - - - - 0x00C28E 03:A27E: 85 1A     STA ram_001A_t03
C - - - - - 0x00C290 03:A280: A5 61     LDA ram_0061
C - - - - - 0x00C292 03:A282: 29 FC     AND #$FC
C - - - - - 0x00C294 03:A284: 85 0C     STA ram_000C_t01_distance
loc_A286:
C D 1 - - - 0x00C296 03:A286: A0 00     LDY #$00
C - - - - - 0x00C298 03:A288: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C29A 03:A28A: 85 0D     STA ram_000D_t05
C - - - - - 0x00C29C 03:A28C: C9 FF     CMP #$FF
C - - - - - 0x00C29E 03:A28E: F0 47     BEQ bra_A2D7_FF
C - - - - - 0x00C2A0 03:A290: C8        INY
C - - - - - 0x00C2A1 03:A291: A5 19     LDA ram_0019_temp
C - - - - - 0x00C2A3 03:A293: F0 08     BEQ bra_A29D
C - - - - - 0x00C2A5 03:A295: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C2A7 03:A297: C5 1A     CMP ram_001A_t03
C - - - - - 0x00C2A9 03:A299: B0 2A     BCS bra_A2C5
C - - - - - 0x00C2AB 03:A29B: 90 06     BCC bra_A2A3    ; jmp
bra_A29D:
C - - - - - 0x00C2AD 03:A29D: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C2AF 03:A29F: C5 1A     CMP ram_001A_t03
C - - - - - 0x00C2B1 03:A2A1: 90 22     BCC bra_A2C5
bra_A2A3:
C - - - - - 0x00C2B3 03:A2A3: 85 1B     STA ram_001B_t07
C - - - - - 0x00C2B5 03:A2A5: A5 0D     LDA ram_000D_t05
C - - - - - 0x00C2B7 03:A2A7: 29 FC     AND #$FC
C - - - - - 0x00C2B9 03:A2A9: C5 0C     CMP ram_000C_t01_distance
C - - - - - 0x00C2BB 03:A2AB: D0 18     BNE bra_A2C5
C - - - - - 0x00C2BD 03:A2AD: A0 02     LDY #$02
C - - - - - 0x00C2BF 03:A2AF: 20 6B A3  JSR sub_A36B
C - - - - - 0x00C2C2 03:A2B2: D0 11     BNE bra_A2C5
C - - - - - 0x00C2C4 03:A2B4: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x00C2C7 03:A2B7: 20 8A A3  JSR sub_A38A
C - - - - - 0x00C2CA 03:A2BA: A5 1B     LDA ram_001B_t07
C - - - - - 0x00C2CC 03:A2BC: 38        SEC
C - - - - - 0x00C2CD 03:A2BD: E5 1A     SBC ram_001A_t03
C - - - - - 0x00C2CF 03:A2BF: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00C2D2 03:A2C2: 20 A3 A3  JSR sub_A3A3
bra_A2C5:
C - - - - - 0x00C2D5 03:A2C5: 20 CB A2  JSR sub_A2CB
C - - - - - 0x00C2D8 03:A2C8: 4C 86 A2  JMP loc_A286
sub_A2CB:
C - - - - - 0x00C2DB 03:A2CB: A5 0A     LDA ram_000A_t02_data
C - - - - - 0x00C2DD 03:A2CD: 18        CLC
C - - - - - 0x00C2DE 03:A2CE: 69 04     ADC #$04
C - - - - - 0x00C2E0 03:A2D0: 85 0A     STA ram_000A_t02_data
C - - - - - 0x00C2E2 03:A2D2: 90 02     BCC bra_A2D6_RTS
; if overflow
C - - - - - 0x00C2E4 03:A2D4: E6 0B     INC ram_000A_t02_data + $01
bra_A2D6_RTS:
C - - - - - 0x00C2E6 03:A2D6: 60        RTS
bra_A2D7_FF:
C - - - - - 0x00C2E7 03:A2D7: E6 19     INC ram_0019_temp
C - - - - - 0x00C2E9 03:A2D9: A5 19     LDA ram_0019_temp
C - - - - - 0x00C2EB 03:A2DB: 29 01     AND #$01
C - - - - - 0x00C2ED 03:A2DD: F0 F7     BEQ bra_A2D6_RTS
C - - - - - 0x00C2EF 03:A2DF: A4 63     LDY ram_0063
C - - - - - 0x00C2F1 03:A2E1: C8        INY
C - - - - - 0x00C2F2 03:A2E2: 4C 6F A2  JMP loc_A26F_loop



tbl_A2E5:
- - - - - - 0x00C2F5 03:A2E5: EF A2     .word _off014_A2EF_00_stage_1
- D 1 - - - 0x00C2F7 03:A2E7: EF A2     .word _off014_A2EF_01_stage_2
- D 1 - - - 0x00C2F9 03:A2E9: EF A2     .word _off014_A2EF_02_stage_3
- D 1 - - - 0x00C2FB 03:A2EB: FD A2     .word _off014_A2FD_03_stage_4
- D 1 - - - 0x00C2FD 03:A2ED: EF A2     .word _off014_A2EF_04_stage_5



_off014_A2EF_00_stage_1:
_off014_A2EF_01_stage_2:
_off014_A2EF_02_stage_3:
_off014_A2EF_04_stage_5:
- D 1 - I - 0x00C2FF 03:A2EF: 00        .byte $00   ; 
- D 1 - I - 0x00C300 03:A2F0: 05        .byte $05   ; 
- D 1 - I - 0x00C301 03:A2F1: 0A        .byte $0A   ; 
- D 1 - I - 0x00C302 03:A2F2: 0F        .byte $0F   ; 
- D 1 - I - 0x00C303 03:A2F3: 14        .byte $14   ; 
- D 1 - I - 0x00C304 03:A2F4: 19        .byte $19   ; 
- D 1 - I - 0x00C305 03:A2F5: 1E        .byte $1E   ; 
- D 1 - I - 0x00C306 03:A2F6: 23        .byte $23   ; 
- D 1 - I - 0x00C307 03:A2F7: 28        .byte $28   ; 
- D 1 - I - 0x00C308 03:A2F8: 2D        .byte $2D   ; 
- D 1 - I - 0x00C309 03:A2F9: 32        .byte $32   ; 
- D 1 - I - 0x00C30A 03:A2FA: 37        .byte $37   ; 
- D 1 - I - 0x00C30B 03:A2FB: 3C        .byte $3C   ; 
- - - - - - 0x00C30C 03:A2FC: 41        .byte $41   ; 



_off014_A2FD_03_stage_4:
- - - - - - 0x00C30D 03:A2FD: 00        .byte $00   ; 
- - - - - - 0x00C30E 03:A2FE: 0C        .byte $0C   ; 
- - - - - - 0x00C30F 03:A2FF: 18        .byte $18   ; 
- D 1 - I - 0x00C310 03:A300: 24        .byte $24   ; 
- D 1 - I - 0x00C311 03:A301: 30        .byte $30   ; 
- D 1 - I - 0x00C312 03:A302: 3C        .byte $3C   ; 
- D 1 - I - 0x00C313 03:A303: 48        .byte $48   ; 
- D 1 - I - 0x00C314 03:A304: 54        .byte $54   ; 
- D 1 - I - 0x00C315 03:A305: 60        .byte $60   ; 
- D 1 - I - 0x00C316 03:A306: 6C        .byte $6C   ; 
- D 1 - I - 0x00C317 03:A307: 78        .byte $78   ; 
- D 1 - I - 0x00C318 03:A308: 84        .byte $84   ; 
- D 1 - I - 0x00C319 03:A309: 90        .byte $90   ; 
- D 1 - I - 0x00C31A 03:A30A: 9C        .byte $9C   ; 
- D 1 - I - 0x00C31B 03:A30B: A8        .byte $A8   ; 
- D 1 - I - 0x00C31C 03:A30C: B4        .byte $B4   ; 
- D 1 - I - 0x00C31D 03:A30D: C0        .byte $C0   ; 
- D 1 - I - 0x00C31E 03:A30E: CC        .byte $CC   ; 
- D 1 - I - 0x00C31F 03:A30F: D8        .byte $D8   ; 
- D 1 - I - 0x00C320 03:A310: E4        .byte $E4   ; 
- D 1 - I - 0x00C321 03:A311: F0        .byte $F0   ; 
- D 1 - I - 0x00C322 03:A312: FC        .byte $FC   ; 
- D 1 - I - 0x00C323 03:A313: 08        .byte $08   ; 
- D 1 - I - 0x00C324 03:A314: 14        .byte $14   ; 
- D 1 - I - 0x00C325 03:A315: 20        .byte $20   ; 
- D 1 - I - 0x00C326 03:A316: 2C        .byte $2C   ; 
- D 1 - I - 0x00C327 03:A317: 38        .byte $38   ; 
- D 1 - I - 0x00C328 03:A318: 44        .byte $44   ; 
- D 1 - I - 0x00C329 03:A319: 50        .byte $50   ; 
- D 1 - I - 0x00C32A 03:A31A: 5C        .byte $5C   ; 
- D 1 - I - 0x00C32B 03:A31B: 68        .byte $68   ; 
- - - - - - 0x00C32C 03:A31C: 74        .byte $74   ; 
- - - - - - 0x00C32D 03:A31D: 80        .byte $80   ; 
- - - - - - 0x00C32E 03:A31E: 82        .byte $82   ; 



sub_A31F:
; in
    ; ram_0008_t01_data
    ; ram_000E_t01_data
    ; ram_001E_t01_data
C - - - - - 0x00C32F 03:A31F: A5 18     LDA ram_0018_temp
C - - - - - 0x00C331 03:A321: 85 90     STA ram_0090
C - - - - - 0x00C333 03:A323: 84 91     STY ram_0091
C - - - - - 0x00C335 03:A325: A5 75     LDA ram_stage
C - - - - - 0x00C337 03:A327: C9 03     CMP #$03
C - - - - - 0x00C339 03:A329: D0 13     BNE bra_A33E
C - - - - - 0x00C33B 03:A32B: C0 16     CPY #$16
C - - - - - 0x00C33D 03:A32D: 90 0F     BCC bra_A33E
C - - - - - 0x00C33F 03:A32F: B1 0E     LDA (ram_000E_t01_data),Y
C - - - - - 0x00C341 03:A331: 18        CLC
C - - - - - 0x00C342 03:A332: 65 18     ADC ram_0018_temp
C - - - - - 0x00C344 03:A334: A8        TAY
; !!! bzk warning
C - - - - - 0x00C345 03:A335: E6 09     INC ram_0008_t01_data + $01
C - - - - - 0x00C347 03:A337: B1 08     LDA (ram_0008_t01_data),Y
C - - - - - 0x00C349 03:A339: C6 09     DEC ram_0008_t01_data + $01
C - - - - - 0x00C34B 03:A33B: 4C 46 A3  JMP loc_A346
bra_A33E:
C - - - - - 0x00C34E 03:A33E: B1 0E     LDA (ram_000E_t01_data),Y
C - - - - - 0x00C350 03:A340: 18        CLC
C - - - - - 0x00C351 03:A341: 65 18     ADC ram_0018_temp
C - - - - - 0x00C353 03:A343: A8        TAY
C - - - - - 0x00C354 03:A344: B1 08     LDA (ram_0008_t01_data),Y
loc_A346:
C D 1 - - - 0x00C356 03:A346: 0A        ASL
C - - - - - 0x00C357 03:A347: A8        TAY
C - - - - - 0x00C358 03:A348: B1 1E     LDA (ram_001E_t01_data),Y
C - - - - - 0x00C35A 03:A34A: 85 0A     STA ram_000A_t02_data
C - - - - - 0x00C35C 03:A34C: C8        INY
C - - - - - 0x00C35D 03:A34D: B1 1E     LDA (ram_001E_t01_data),Y
C - - - - - 0x00C35F 03:A34F: 85 0B     STA ram_000A_t02_data + $01
C - - - - - 0x00C361 03:A351: 60        RTS



sub_A352_prepare_data_pointers:
; out
    ; ram_0008_t01_data
    ; ram_001E_t01_data
C - - - - - 0x00C362 03:A352: A4 88     LDY ram_x2_stage
C - - - - - 0x00C364 03:A354: B9 73 A6  LDA tbl_A673,Y
C - - - - - 0x00C367 03:A357: 85 1E     STA ram_001E_t01_data
C - - - - - 0x00C369 03:A359: B9 74 A6  LDA tbl_A673 + $01,Y
C - - - - - 0x00C36C 03:A35C: 85 1F     STA ram_001E_t01_data + $01
sub_A35E_prepare_data_pointers:
; out
    ; ram_0008_t01_data
C - - - - - 0x00C36E 03:A35E: A4 88     LDY ram_x2_stage
C - - - - - 0x00C370 03:A360: B9 69 A6  LDA tbl_A669,Y
C - - - - - 0x00C373 03:A363: 85 08     STA ram_0008_t01_data
C - - - - - 0x00C375 03:A365: B9 6A A6  LDA tbl_A669 + $01,Y
C - - - - - 0x00C378 03:A368: 85 09     STA ram_0008_t01_data + $01
C - - - - - 0x00C37A 03:A36A: 60        RTS



loc_A36B:
sub_A36B:
; in
    ; ram_000A_t02_data
C D 1 - - - 0x00C37B 03:A36B: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C37D 03:A36D: 85 1C     STA ram_001C_t05
C - - - - - 0x00C37F 03:A36F: C8        INY
C - - - - - 0x00C380 03:A370: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C382 03:A372: 85 0D     STA ram_000D_t04
C - - - - - 0x00C384 03:A374: 84 06     STY ram_0006_t13
C - - - - - 0x00C386 03:A376: 29 07     AND #$07
C - - - - - 0x00C388 03:A378: 18        CLC
C - - - - - 0x00C389 03:A379: 69 02     ADC #$02
C - - - - - 0x00C38B 03:A37B: A8        TAY
C - - - - - 0x00C38C 03:A37C: 84 07     STY ram_0007_t08
C - - - - - 0x00C38E 03:A37E: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C390 03:A380: C9 3B     CMP #$3B
C - - - - - 0x00C392 03:A382: F0 05     BEQ bra_A389_RTS
sub_A384:
C - - - - - 0x00C394 03:A384: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C397 03:A387: 29 7F     AND #$7F
bra_A389_RTS:
C - - - - - 0x00C399 03:A389: 60        RTS



sub_A38A:
C - - - - - 0x00C39A 03:A38A: A5 1C     LDA ram_001C_t05
C - - - - - 0x00C39C 03:A38C: 29 7F     AND #$7F
C - - - - - 0x00C39E 03:A38E: C9 3E     CMP #$3E
C - - - - - 0x00C3A0 03:A390: 90 10     BCC bra_A3A2_RTS
C - - - - - 0x00C3A2 03:A392: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C3A4 03:A394: 29 80     AND #$80
C - - - - - 0x00C3A6 03:A396: F0 0A     BEQ bra_A3A2_RTS
C - - - - - 0x00C3A8 03:A398: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00C3AB 03:A39B: F0 05     BEQ bra_A3A2_RTS
C - - - - - 0x00C3AD 03:A39D: 49 FF     EOR #$FF
C - - - - - 0x00C3AF 03:A39F: 99 4E 06  STA ram_obj_pos_X,Y
bra_A3A2_RTS:
C - - - - - 0x00C3B2 03:A3A2: 60        RTS



sub_A3A3:
C - - - - - 0x00C3B3 03:A3A3: A9 00     LDA #$00
C - - - - - 0x00C3B5 03:A3A5: 99 00 06  STA ram_0600_obj,Y
sub_A3A8:
C - - - - - 0x00C3B8 03:A3A8: 99 34 06  STA ram_obj_animation_hi,Y
C - - - - - 0x00C3BB 03:A3AB: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00C3BE 03:A3AE: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00C3C1 03:A3B1: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00C3C4 03:A3B4: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x00C3C7 03:A3B7: A5 62     LDA ram_0062
C - - - - - 0x00C3C9 03:A3B9: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
C - - - - - 0x00C3CC 03:A3BC: 99 C8 06  STA ram_obj_spd_X,Y
C - - - - - 0x00C3CF 03:A3BF: A5 65     LDA ram_0065
C - - - - - 0x00C3D1 03:A3C1: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
C - - - - - 0x00C3D4 03:A3C4: 99 DE 06  STA ram_obj_spd_Y,Y
C - - - - - 0x00C3D7 03:A3C7: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C3DA 03:A3CA: 30 4D     BMI bra_A419
C - - - - - 0x00C3DC 03:A3CC: 38        SEC
C - - - - - 0x00C3DD 03:A3CD: E9 3E     SBC #$3E
C - - - - - 0x00C3DF 03:A3CF: 90 48     BCC bra_A419
; * 04
C - - - - - 0x00C3E1 03:A3D1: 0A        ASL
C - - - - - 0x00C3E2 03:A3D2: 0A        ASL
C - - - - - 0x00C3E3 03:A3D3: A8        TAY
C - - - - - 0x00C3E4 03:A3D4: B9 7A A5  LDA tbl_A57A,Y
C - - - - - 0x00C3E7 03:A3D7: 48        PHA
C - - - - - 0x00C3E8 03:A3D8: B9 7B A5  LDA tbl_A57A + $01,Y
C - - - - - 0x00C3EB 03:A3DB: 48        PHA
C - - - - - 0x00C3EC 03:A3DC: B9 7D A5  LDA tbl_A57A + $03,Y
C - - - - - 0x00C3EF 03:A3DF: 85 10     STA ram_0010_t06_table_index
C - - - - - 0x00C3F1 03:A3E1: B9 7C A5  LDA tbl_A57A + $02,Y
C - - - - - 0x00C3F4 03:A3E4: A4 07     LDY ram_0007_t08
C - - - - - 0x00C3F6 03:A3E6: 99 BE 07  STA ram_07BE_unk,Y
C - - - - - 0x00C3F9 03:A3E9: 68        PLA
C - - - - - 0x00C3FA 03:A3EA: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00C3FD 03:A3ED: 68        PLA
C - - - - - 0x00C3FE 03:A3EE: 99 82 07  STA ram_0782_unk,Y
C - - - - - 0x00C401 03:A3F1: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00C404 03:A3F4: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C406 03:A3F6: 29 38     AND #$38
C - - - - - 0x00C408 03:A3F8: 20 B5 93  JSR sub_0x0093C4_LSRx3_TAY
C - - - - - 0x00C40B 03:A3FB: 84 11     STY ram_0011_t06
C - - - - - 0x00C40D 03:A3FD: B9 1A A6  LDA tbl_A61A,Y
C - - - - - 0x00C410 03:A400: A4 07     LDY ram_0007_t08
C - - - - - 0x00C412 03:A402: 99 A0 07  STA ram_07A0_unk,Y
C - - - - - 0x00C415 03:A405: B9 D2 07  LDA ram_07D2_unk,Y
; * 08
C - - - - - 0x00C418 03:A408: 0A        ASL
C - - - - - 0x00C419 03:A409: 0A        ASL
C - - - - - 0x00C41A 03:A40A: 0A        ASL
C - - - - - 0x00C41B 03:A40B: 05 11     ORA ram_0011_t06
C - - - - - 0x00C41D 03:A40D: A8        TAY
C - - - - - 0x00C41E 03:A40E: B9 21 A6  LDA tbl_A621,Y
C - - - - - 0x00C421 03:A411: A4 07     LDY ram_0007_t08
C - - - - - 0x00C423 03:A413: 99 34 06  STA ram_obj_animation_hi,Y
C - - - - - 0x00C426 03:A416: 4C 21 A4  JMP loc_A421
bra_A419:
C - - - - - 0x00C429 03:A419: A5 0D     LDA ram_000D_t04
C - - - - - 0x00C42B 03:A41B: 29 78     AND #$78
C - - - - - 0x00C42D 03:A41D: 0A        ASL
C - - - - - 0x00C42E 03:A41E: 99 B2 06  STA ram_06B2_obj,Y
loc_A421:
C D 1 - - - 0x00C431 03:A421: A9 00     LDA #$00
C - - - - - 0x00C433 03:A423: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00C436 03:A426: 99 0A 07  STA ram_070A_obj,Y
C - - - - - 0x00C439 03:A429: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x00C43C 03:A42C: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00C43F 03:A42F: 99 8C 07  STA ram_078C_unk,Y
C - - - - - 0x00C442 03:A432: 99 36 07  STA ram_0736_obj,Y
C - - - - - 0x00C445 03:A435: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00C448 03:A438: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x00C44B 03:A43B: BE 82 07  LDX ram_0782_unk,Y
C - - - - - 0x00C44E 03:A43E: E0 3B     CPX #$3B
C - - - - - 0x00C450 03:A440: F0 02     BEQ bra_A444
C - - - - - 0x00C452 03:A442: A9 0C     LDA #$0C
bra_A444:
C - - - - - 0x00C454 03:A444: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00C457 03:A447: A9 F0     LDA #$F0
C - - - - - 0x00C459 03:A449: 99 DC 07  STA ram_07DC_unk,Y
C - - - - - 0x00C45C 03:A44C: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00C45F 03:A44F: 29 7F     AND #$7F
C - - - - - 0x00C461 03:A451: 84 00     STY ram_0000_t1E
C - - - - - 0x00C463 03:A453: C9 3E     CMP #$3E
C - - - - - 0x00C465 03:A455: B0 1F     BCS bra_A476
C - - - - - 0x00C467 03:A457: A8        TAY
C - - - - - 0x00C468 03:A458: B9 23 A5  LDA tbl_A524 - $01,Y
C - - - - - 0x00C46B 03:A45B: F0 19     BEQ bra_A476
C - - - - - 0x00C46D 03:A45D: A6 00     LDX ram_0000_t1E
C - - - - - 0x00C46F 03:A45F: A0 00     LDY #$00
C - - - - - 0x00C471 03:A461: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C473 03:A463: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00C476 03:A466: A5 90     LDA ram_0090
C - - - - - 0x00C478 03:A468: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00C47B 03:A46B: C8        INY ; 01
C - - - - - 0x00C47C 03:A46C: B1 0A     LDA (ram_000A_t02_data),Y
C - - - - - 0x00C47E 03:A46E: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00C481 03:A471: A5 91     LDA ram_0091
C - - - - - 0x00C483 03:A473: 9D C8 07  STA ram_07C8_unk,X
bra_A476:
C - - - - - 0x00C486 03:A476: A4 00     LDY ram_0000_t1E
loc_A478:
C D 1 - - - 0x00C488 03:A478: 20 E3 93  JSR sub_0x0093F3
C - - - - - 0x00C48B 03:A47B: 20 84 A3  JSR sub_A384
C - - - - - 0x00C48E 03:A47E: A8        TAY
C - - - - - 0x00C48F 03:A47F: B9 A9 A4  LDA tbl_A4AA - $01,Y
C - - - - - 0x00C492 03:A482: 30 17     BMI bra_A49B
C - - - - - 0x00C494 03:A484: F0 02     BEQ bra_A488
C - - - - - 0x00C496 03:A486: 85 7B     STA ram_chr_bank + $04
bra_A488:
C - - - - - 0x00C498 03:A488: B9 E6 A4  LDA tbl_A4E7 - $01,Y
C - - - - - 0x00C49B 03:A48B: C9 FF     CMP #$FF
C - - - - - 0x00C49D 03:A48D: F0 0B     BEQ bra_A49A_RTS
loc_A48F:
C D 1 - - - 0x00C49F 03:A48F: C5 89     CMP ram_0089
C - - - - - 0x00C4A1 03:A491: F0 07     BEQ bra_A49A_RTS
loc_A493:
C D 1 - - - 0x00C4A3 03:A493: 85 89     STA ram_0089
C - - - - - 0x00C4A5 03:A495: A0 02     LDY #$02
; bzk optimize, JMP
C - - - - - 0x00C4A7 03:A497: 20 B1 F4  JSR sub_0x01F4C1
bra_A49A_RTS:
C - - - - - 0x00C4AA 03:A49A: 60        RTS
bra_A49B:
C - - - - - 0x00C4AB 03:A49B: A5 10     LDA ram_0010_t06_table_index
C - - - - - 0x00C4AD 03:A49D: 0A        ASL
C - - - - - 0x00C4AE 03:A49E: A8        TAY
C - - - - - 0x00C4AF 03:A49F: B9 64 A5  LDA tbl_A564,Y
C - - - - - 0x00C4B2 03:A4A2: 85 7B     STA ram_chr_bank + $04
C - - - - - 0x00C4B4 03:A4A4: B9 65 A5  LDA tbl_A564 + $01,Y
C - - - - - 0x00C4B7 03:A4A7: 4C 8F A4  JMP loc_A48F



tbl_A4AA:
- - - - - - 0x00C4BA 03:A4AA: 10        .byte con_chr_bank + $10   ; 01 
- D 1 - - - 0x00C4BB 03:A4AB: FF        .byte $FF   ; 02 
- D 1 - - - 0x00C4BC 03:A4AC: FF        .byte $FF   ; 03 
- - - - - - 0x00C4BD 03:A4AD: FF        .byte $FF   ; 04 
- D 1 - - - 0x00C4BE 03:A4AE: FF        .byte $FF   ; 05 
- D 1 - - - 0x00C4BF 03:A4AF: FF        .byte $FF   ; 06 
- - - - - - 0x00C4C0 03:A4B0: FF        .byte $FF   ; 07 
- - - - - - 0x00C4C1 03:A4B1: 00        .byte $00   ; 08 
- - - - - - 0x00C4C2 03:A4B2: 26        .byte con_chr_bank + $26   ; 09 
- D 1 - - - 0x00C4C3 03:A4B3: 1F        .byte con_chr_bank + $1F   ; 0A 
- D 1 - - - 0x00C4C4 03:A4B4: 26        .byte con_chr_bank + $26   ; 0B 
- D 1 - - - 0x00C4C5 03:A4B5: 1B        .byte con_chr_bank + $1B   ; 0C 
- - - - - - 0x00C4C6 03:A4B6: 00        .byte $00   ; 0D 
- - - - - - 0x00C4C7 03:A4B7: 00        .byte $00   ; 0E 
- D 1 - - - 0x00C4C8 03:A4B8: 20        .byte con_chr_bank + $20   ; 0F 
- D 1 - - - 0x00C4C9 03:A4B9: 22        .byte con_chr_bank + $22   ; 10 
- D 1 - - - 0x00C4CA 03:A4BA: 24        .byte con_chr_bank + $24   ; 11 
- D 1 - - - 0x00C4CB 03:A4BB: 28        .byte con_chr_bank + $28   ; 12 
- - - - - - 0x00C4CC 03:A4BC: 00        .byte $00   ; 13 
- D 1 - - - 0x00C4CD 03:A4BD: 10        .byte con_chr_bank + $10   ; 14 
- D 1 - - - 0x00C4CE 03:A4BE: 00        .byte $00   ; 15 
- - - - - - 0x00C4CF 03:A4BF: 00        .byte $00   ; 16 
- D 1 - - - 0x00C4D0 03:A4C0: 00        .byte $00   ; 17 
- D 1 - - - 0x00C4D1 03:A4C1: 10        .byte con_chr_bank + $10   ; 18 
- D 1 - - - 0x00C4D2 03:A4C2: 27        .byte con_chr_bank + $27   ; 19 
- D 1 - - - 0x00C4D3 03:A4C3: 00        .byte $00   ; 1A 
- D 1 - - - 0x00C4D4 03:A4C4: 10        .byte con_chr_bank + $10   ; 1B 
- D 1 - - - 0x00C4D5 03:A4C5: 10        .byte con_chr_bank + $10   ; 1C 
- - - - - - 0x00C4D6 03:A4C6: 26        .byte con_chr_bank + $26   ; 1D 
- D 1 - - - 0x00C4D7 03:A4C7: 6E        .byte con_chr_bank + $6E   ; 1E 
- D 1 - - - 0x00C4D8 03:A4C8: 1D        .byte con_chr_bank + $1D   ; 1F 
- D 1 - - - 0x00C4D9 03:A4C9: 1B        .byte con_chr_bank + $1B   ; 10 
- D 1 - - - 0x00C4DA 03:A4CA: 1C        .byte con_chr_bank + $1C   ; 11 
- - - - - - 0x00C4DB 03:A4CB: 0E        .byte con_chr_bank + $0E   ; 12 
- D 1 - - - 0x00C4DC 03:A4CC: 1E        .byte con_chr_bank + $1E   ; 13 
- D 1 - - - 0x00C4DD 03:A4CD: 23        .byte con_chr_bank + $23   ; 14 
- D 1 - - - 0x00C4DE 03:A4CE: 27        .byte con_chr_bank + $27   ; 15 
- - - - - - 0x00C4DF 03:A4CF: 00        .byte $00   ; 16 
- D 1 - - - 0x00C4E0 03:A4D0: 23        .byte con_chr_bank + $23   ; 17 
- - - - - - 0x00C4E1 03:A4D1: 0E        .byte con_chr_bank + $0E   ; 18 
- - - - - - 0x00C4E2 03:A4D2: 0E        .byte con_chr_bank + $0E   ; 19 
- D 1 - - - 0x00C4E3 03:A4D3: 23        .byte con_chr_bank + $23   ; 1A 
- D 1 - - - 0x00C4E4 03:A4D4: 00        .byte $00   ; 1B 
- - - - - - 0x00C4E5 03:A4D5: 00        .byte $00   ; 1C 
- D 1 - - - 0x00C4E6 03:A4D6: 1E        .byte con_chr_bank + $1E   ; 1D 
- - - - - - 0x00C4E7 03:A4D7: 00        .byte $00   ; 1E 
- - - - - - 0x00C4E8 03:A4D8: 1B        .byte con_chr_bank + $1B   ; 1F 
- D 1 - - - 0x00C4E9 03:A4D9: 00        .byte $00   ; 20 
- D 1 - - - 0x00C4EA 03:A4DA: 00        .byte $00   ; 21 
- - - - - - 0x00C4EB 03:A4DB: 00        .byte $00   ; 22 
- D 1 - - - 0x00C4EC 03:A4DC: 11        .byte con_chr_bank + $11   ; 23 
- D 1 - - - 0x00C4ED 03:A4DD: 1C        .byte con_chr_bank + $1C   ; 24 
- - - - - - 0x00C4EE 03:A4DE: 0E        .byte con_chr_bank + $0E   ; 25 
- - - - - - 0x00C4EF 03:A4DF: 00        .byte $00   ; 26 
- D 1 - - - 0x00C4F0 03:A4E0: 4A        .byte con_chr_bank + $4A   ; 27 
- - - - - - 0x00C4F1 03:A4E1: 26        .byte con_chr_bank + $26   ; 28 
- D 1 - - - 0x00C4F2 03:A4E2: 26        .byte con_chr_bank + $26   ; 29 
- D 1 - - - 0x00C4F3 03:A4E3: 00        .byte $00   ; 2A 
- D 1 - - - 0x00C4F4 03:A4E4: 00        .byte $00   ; 2B 
- - - - - - 0x00C4F5 03:A4E5: 00        .byte $00   ; 2C 
- - - - - - 0x00C4F6 03:A4E6: 00        .byte $00   ; 2D 



tbl_A4E7:
- - - - - - 0x00C4F7 03:A4E7: 00        .byte $00   ; 01 
- - - - - - 0x00C4F8 03:A4E8: 00        .byte $00   ; 02 
- - - - - - 0x00C4F9 03:A4E9: 00        .byte $00   ; 03 
- - - - - - 0x00C4FA 03:A4EA: 00        .byte $00   ; 04 
- - - - - - 0x00C4FB 03:A4EB: 00        .byte $00   ; 05 
- - - - - - 0x00C4FC 03:A4EC: 00        .byte $00   ; 06 
- - - - - - 0x00C4FD 03:A4ED: 00        .byte $00   ; 07 
- - - - - - 0x00C4FE 03:A4EE: 00        .byte $00   ; 08 
- - - - - - 0x00C4FF 03:A4EF: 0C        .byte $0C   ; 09 
- D 1 - - - 0x00C500 03:A4F0: 07        .byte $07   ; 0A 
- D 1 - - - 0x00C501 03:A4F1: 0C        .byte $0C   ; 0B 
- D 1 - - - 0x00C502 03:A4F2: 03        .byte $03   ; 0C 
- - - - - - 0x00C503 03:A4F3: 00        .byte $00   ; 0D 
- - - - - - 0x00C504 03:A4F4: 00        .byte $00   ; 0E 
- D 1 - - - 0x00C505 03:A4F5: 0D        .byte $0D   ; 0F 
- D 1 - - - 0x00C506 03:A4F6: 0C        .byte $0C   ; 10 
- D 1 - - - 0x00C507 03:A4F7: 09        .byte $09   ; 11 
- D 1 - - - 0x00C508 03:A4F8: 00        .byte $00   ; 12 
- - - - - - 0x00C509 03:A4F9: 00        .byte $00   ; 13 
- D 1 - - - 0x00C50A 03:A4FA: 02        .byte $02   ; 14 
- D 1 - - - 0x00C50B 03:A4FB: 00        .byte $00   ; 15 
- - - - - - 0x00C50C 03:A4FC: FF        .byte $FF   ; 16 
- D 1 - - - 0x00C50D 03:A4FD: FF        .byte $FF   ; 17 
- D 1 - - - 0x00C50E 03:A4FE: 02        .byte $02   ; 18 
- D 1 - - - 0x00C50F 03:A4FF: 02        .byte $02   ; 19 
- D 1 - - - 0x00C510 03:A500: FF        .byte $FF   ; 1A 
- D 1 - - - 0x00C511 03:A501: FF        .byte $FF   ; 1B 
- D 1 - - - 0x00C512 03:A502: 02        .byte $02   ; 1C 
- - - - - - 0x00C513 03:A503: 0C        .byte $0C   ; 1D 
- D 1 - - - 0x00C514 03:A504: 0C        .byte $0C   ; 1E 
- D 1 - - - 0x00C515 03:A505: 00        .byte $00   ; 1F 
- D 1 - - - 0x00C516 03:A506: 03        .byte $03   ; 10 
- D 1 - - - 0x00C517 03:A507: 06        .byte $06   ; 11 
- - - - - - 0x00C518 03:A508: 00        .byte $00   ; 12 
- D 1 - - - 0x00C519 03:A509: 04        .byte $04   ; 13 
- D 1 - - - 0x00C51A 03:A50A: 08        .byte $08   ; 14 
- D 1 - - - 0x00C51B 03:A50B: 02        .byte $02   ; 15 
- - - - - - 0x00C51C 03:A50C: FF        .byte $FF   ; 16 
- D 1 - - - 0x00C51D 03:A50D: 08        .byte $08   ; 17 
- - - - - - 0x00C51E 03:A50E: 00        .byte $00   ; 18 
- - - - - - 0x00C51F 03:A50F: 00        .byte $00   ; 19 
- D 1 - - - 0x00C520 03:A510: 08        .byte $08   ; 1A 
- D 1 - - - 0x00C521 03:A511: FF        .byte $FF   ; 1B 
- - - - - - 0x00C522 03:A512: 00        .byte $00   ; 1C 
- D 1 - - - 0x00C523 03:A513: 04        .byte $04   ; 1D 
- - - - - - 0x00C524 03:A514: FF        .byte $FF   ; 1E 
- - - - - - 0x00C525 03:A515: 03        .byte $03   ; 1F 
- D 1 - - - 0x00C526 03:A516: 00        .byte $00   ; 10 
- D 1 - - - 0x00C527 03:A517: 00        .byte $00   ; 11 
- - - - - - 0x00C528 03:A518: 00        .byte $00   ; 12 
- D 1 - - - 0x00C529 03:A519: 0D        .byte $0D   ; 13 
- D 1 - - - 0x00C52A 03:A51A: 06        .byte $06   ; 14 
- - - - - - 0x00C52B 03:A51B: 0D        .byte $0D   ; 15 
- - - - - - 0x00C52C 03:A51C: 00        .byte $00   ; 16 
- D 1 - - - 0x00C52D 03:A51D: 00        .byte $00   ; 17 
- - - - - - 0x00C52E 03:A51E: 0C        .byte $0C   ; 18 
- D 1 - - - 0x00C52F 03:A51F: FF        .byte $FF   ; 19 
- D 1 - - - 0x00C530 03:A520: FF        .byte $FF   ; 1A 
- D 1 - - - 0x00C531 03:A521: FF        .byte $FF   ; 1B 
- - - - - - 0x00C532 03:A522: 00        .byte $00   ; 1C 
- - - - - - 0x00C533 03:A523: 00        .byte $00   ; 1D 



tbl_A524:
- - - - - - 0x00C534 03:A524: 00        .byte $00   ; 
- D 1 - - - 0x00C535 03:A525: 00        .byte $00   ; 
- D 1 - - - 0x00C536 03:A526: 00        .byte $00   ; 
- - - - - - 0x00C537 03:A527: 00        .byte $00   ; 
- D 1 - - - 0x00C538 03:A528: 00        .byte $00   ; 
- D 1 - - - 0x00C539 03:A529: 00        .byte $00   ; 
- - - - - - 0x00C53A 03:A52A: 00        .byte $00   ; 
- - - - - - 0x00C53B 03:A52B: 00        .byte $00   ; 
- - - - - - 0x00C53C 03:A52C: 00        .byte $00   ; 
- D 1 - - - 0x00C53D 03:A52D: 00        .byte $00   ; 
- D 1 - - - 0x00C53E 03:A52E: 01        .byte $01   ; 
- D 1 - - - 0x00C53F 03:A52F: 01        .byte $01   ; 
- - - - - - 0x00C540 03:A530: 00        .byte $00   ; 
- - - - - - 0x00C541 03:A531: 00        .byte $00   ; 
- D 1 - - - 0x00C542 03:A532: 00        .byte $00   ; 
- D 1 - - - 0x00C543 03:A533: 00        .byte $00   ; 
- D 1 - - - 0x00C544 03:A534: 00        .byte $00   ; 
- - - - - - 0x00C545 03:A535: 00        .byte $00   ; 
- - - - - - 0x00C546 03:A536: 00        .byte $00   ; 
- D 1 - - - 0x00C547 03:A537: 00        .byte $00   ; 
- D 1 - - - 0x00C548 03:A538: 00        .byte $00   ; 
- - - - - - 0x00C549 03:A539: 00        .byte $00   ; 
- D 1 - - - 0x00C54A 03:A53A: 01        .byte $01   ; 
- D 1 - - - 0x00C54B 03:A53B: 00        .byte $00   ; 
- D 1 - - - 0x00C54C 03:A53C: 00        .byte $00   ; 
- D 1 - - - 0x00C54D 03:A53D: 00        .byte $00   ; 
- D 1 - - - 0x00C54E 03:A53E: 00        .byte $00   ; 
- D 1 - - - 0x00C54F 03:A53F: 00        .byte $00   ; 
- - - - - - 0x00C550 03:A540: 00        .byte $00   ; 
- D 1 - - - 0x00C551 03:A541: 01        .byte $01   ; 
- D 1 - - - 0x00C552 03:A542: 00        .byte $00   ; 
- D 1 - - - 0x00C553 03:A543: 00        .byte $00   ; 
- D 1 - - - 0x00C554 03:A544: 00        .byte $00   ; 
- - - - - - 0x00C555 03:A545: 00        .byte $00   ; 
- D 1 - - - 0x00C556 03:A546: 00        .byte $00   ; 
- D 1 - - - 0x00C557 03:A547: 00        .byte $00   ; 
- D 1 - - - 0x00C558 03:A548: 01        .byte $01   ; 
- - - - - - 0x00C559 03:A549: 00        .byte $00   ; 
- D 1 - - - 0x00C55A 03:A54A: 00        .byte $00   ; 
- - - - - - 0x00C55B 03:A54B: 00        .byte $00   ; 
- - - - - - 0x00C55C 03:A54C: 00        .byte $00   ; 
- D 1 - - - 0x00C55D 03:A54D: 00        .byte $00   ; 
- D 1 - - - 0x00C55E 03:A54E: 00        .byte $00   ; 
- - - - - - 0x00C55F 03:A54F: 00        .byte $00   ; 
- D 1 - - - 0x00C560 03:A550: 01        .byte $01   ; 
- - - - - - 0x00C561 03:A551: 00        .byte $00   ; 
- - - - - - 0x00C562 03:A552: 00        .byte $00   ; 
- D 1 - - - 0x00C563 03:A553: 00        .byte $00   ; 
- D 1 - - - 0x00C564 03:A554: 00        .byte $00   ; 
- - - - - - 0x00C565 03:A555: 00        .byte $00   ; 
- D 1 - - - 0x00C566 03:A556: 00        .byte $00   ; 
- D 1 - - - 0x00C567 03:A557: 00        .byte $00   ; 
- - - - - - 0x00C568 03:A558: 00        .byte $00   ; 
- - - - - - 0x00C569 03:A559: 00        .byte $00   ; 
- D 1 - - - 0x00C56A 03:A55A: 00        .byte $00   ; 
- - - - - - 0x00C56B 03:A55B: 00        .byte $00   ; 
- D 1 - - - 0x00C56C 03:A55C: 00        .byte $00   ; 
- D 1 - - - 0x00C56D 03:A55D: 01        .byte $01   ; 
- D 1 - - - 0x00C56E 03:A55E: 00        .byte $00   ; 
- - - - - - 0x00C56F 03:A55F: 00        .byte $00   ; 
- - - - - - 0x00C570 03:A560: 00        .byte $00   ; 
- - - - - - 0x00C571 03:A561: 00        .byte $00   ; 
- - - - - - 0x00C572 03:A562: 00        .byte $00   ; 
- - - - - - 0x00C573 03:A563: 00        .byte $00   ; 



tbl_A564:
; 00 
- D 1 - - - 0x00C574 03:A564: 0E        .byte con_chr_bank + $0E   ; 
- D 1 - - - 0x00C575 03:A565: 00        .byte $00   ; 
; 01 
- D 1 - - - 0x00C576 03:A566: 10        .byte con_chr_bank + $10   ; 
- D 1 - - - 0x00C577 03:A567: 02        .byte $02   ; 
; 02 
- D 1 - - - 0x00C578 03:A568: 23        .byte con_chr_bank + $23   ; 
- D 1 - - - 0x00C579 03:A569: 08        .byte $08   ; 
; 03 
- D 1 - - - 0x00C57A 03:A56A: 6E        .byte con_chr_bank + $6E   ; 
- D 1 - - - 0x00C57B 03:A56B: 0C        .byte $0C   ; 
; 04 
- D 1 - - - 0x00C57C 03:A56C: 0F        .byte con_chr_bank + $0F   ; 
- D 1 - - - 0x00C57D 03:A56D: 00        .byte $00   ; 
; 05 
- D 1 - - - 0x00C57E 03:A56E: 27        .byte con_chr_bank + $27   ; 
- D 1 - - - 0x00C57F 03:A56F: 02        .byte $02   ; 
; 06 
- D 1 - - - 0x00C580 03:A570: 1B        .byte con_chr_bank + $1B   ; 
- D 1 - - - 0x00C581 03:A571: 03        .byte $03   ; 
; 07 
- - - - - - 0x00C582 03:A572: 1C        .byte con_chr_bank + $1C   ; 
- - - - - - 0x00C583 03:A573: 06        .byte $06   ; 
; 08 
- D 1 - - - 0x00C584 03:A574: 1E        .byte con_chr_bank + $1E   ; 
- D 1 - - - 0x00C585 03:A575: 04        .byte $04   ; 
; 09 
- D 1 - - - 0x00C586 03:A576: 1D        .byte con_chr_bank + $1D   ; 
- D 1 - - - 0x00C587 03:A577: 00        .byte $00   ; 
; 0A 
- D 1 - - - 0x00C588 03:A578: 26        .byte con_chr_bank + $26   ; 
- D 1 - - - 0x00C589 03:A579: 0C        .byte $0C   ; 



tbl_A57A:
- D 1 - - - 0x00C58A 03:A57A: 02        .byte $02, $00, $00, $00   ; 3E 
- D 1 - - - 0x00C58E 03:A57E: 02        .byte $02, $00, $01, $00   ; 3F 
- D 1 - - - 0x00C592 03:A582: 02        .byte $02, $00, $02, $00   ; 40 
- D 1 - - - 0x00C596 03:A586: 02        .byte $02, $01, $02, $00   ; 41 
- D 1 - - - 0x00C59A 03:A58A: 03        .byte $03, $01, $00, $00   ; 42 
- D 1 - - - 0x00C59E 03:A58E: 03        .byte $03, $02, $01, $00   ; 43 
- D 1 - - - 0x00C5A2 03:A592: 02        .byte $02, $02, $01, $00   ; 44 
- D 1 - - - 0x00C5A6 03:A596: 02        .byte $02, $02, $02, $00   ; 45 
- D 1 - - - 0x00C5AA 03:A59A: 02        .byte $02, $05, $01, $01   ; 46 
- D 1 - - - 0x00C5AE 03:A59E: 02        .byte $02, $05, $02, $01   ; 47 
- D 1 - - - 0x00C5B2 03:A5A2: 02        .byte $02, $05, $01, $02   ; 48 
- D 1 - - - 0x00C5B6 03:A5A6: 02        .byte $02, $05, $02, $02   ; 49 
- - - - - - 0x00C5BA 03:A5AA: 02        .byte $02, $05, $01, $03   ; 4A 
- D 1 - - - 0x00C5BE 03:A5AE: 02        .byte $02, $05, $02, $03   ; 4B 
- D 1 - - - 0x00C5C2 03:A5B2: 03        .byte $03, $03, $01, $04   ; 4C 
- - - - - - 0x00C5C6 03:A5B6: 03        .byte $03, $03, $02, $04   ; 4D 
- D 1 - - - 0x00C5CA 03:A5BA: 02        .byte $02, $04, $02, $04   ; 4E 
- - - - - - 0x00C5CE 03:A5BE: 03        .byte $03, $04, $01, $04   ; 4F 
- - - - - - 0x00C5D2 03:A5C2: 02        .byte $02, $04, $02, $05   ; 50 
- D 1 - - - 0x00C5D6 03:A5C6: 03        .byte $03, $04, $01, $05   ; 51 
- D 1 - - - 0x00C5DA 03:A5CA: 05        .byte $05, $06, $00, $06   ; 52 
- D 1 - - - 0x00C5DE 03:A5CE: 05        .byte $05, $06, $01, $06   ; 53 
- - - - - - 0x00C5E2 03:A5D2: 05        .byte $05, $06, $00, $07   ; 54 
- - - - - - 0x00C5E6 03:A5D6: 05        .byte $05, $06, $01, $07   ; 55 
- D 1 - - - 0x00C5EA 03:A5DA: 05        .byte $05, $06, $00, $08   ; 56 
- - - - - - 0x00C5EE 03:A5DE: 05        .byte $05, $06, $01, $08   ; 57 
- D 1 - - - 0x00C5F2 03:A5E2: 05        .byte $05, $06, $05, $08   ; 58 
- D 1 - - - 0x00C5F6 03:A5E6: 06        .byte $06, $08, $00, $06   ; 59 
- D 1 - - - 0x00C5FA 03:A5EA: 05        .byte $05, $08, $04, $06   ; 5A 
- D 1 - - - 0x00C5FE 03:A5EE: 06        .byte $06, $08, $04, $06   ; 5B 
- D 1 - - - 0x00C602 03:A5F2: 05        .byte $05, $07, $04, $09   ; 5C 
- D 1 - - - 0x00C606 03:A5F6: 05        .byte $05, $07, $02, $09   ; 5D 
- D 1 - - - 0x00C60A 03:A5FA: 05        .byte $05, $07, $03, $09   ; 5E 
- D 1 - - - 0x00C60E 03:A5FE: 05        .byte $05, $07, $01, $09   ; 5F 
- D 1 - - - 0x00C612 03:A602: 06        .byte $06, $07, $04, $09   ; 60 
- D 1 - - - 0x00C616 03:A606: 06        .byte $06, $07, $05, $09   ; 61 
- D 1 - - - 0x00C61A 03:A60A: 06        .byte $06, $07, $01, $0A   ; 62 
- D 1 - - - 0x00C61E 03:A60E: 06        .byte $06, $07, $02, $0A   ; 63 
- D 1 - - - 0x00C622 03:A612: 05        .byte $05, $07, $04, $0A   ; 64 
- D 1 - - - 0x00C626 03:A616: 06        .byte $06, $07, $04, $0A   ; 65 



tbl_A61A:
- D 1 - - - 0x00C62A 03:A61A: 01        .byte $01   ; 00 
- D 1 - - - 0x00C62B 03:A61B: 11        .byte $11   ; 01 
- D 1 - - - 0x00C62C 03:A61C: D1        .byte $D1   ; 02 
- D 1 - - - 0x00C62D 03:A61D: B1        .byte $B1   ; 03 
- D 1 - - - 0x00C62E 03:A61E: 31        .byte $31   ; 04 
- D 1 - - - 0x00C62F 03:A61F: 21        .byte $21   ; 05 
- D 1 - - - 0x00C630 03:A620: 41        .byte $41   ; 06 



tbl_A621:
- D 1 - - - 0x00C631 03:A621: 00        .byte $00, $00, $02, $00   ; 00 
- - - - - - 0x00C635 03:A625: 00        .byte $00, $00, $00, $00   ; 01 
- - - - - - 0x00C639 03:A629: 00        .byte $00, $00, $00, $00   ; 02 
- - - - - - 0x00C63D 03:A62D: 00        .byte $00, $00, $00, $00   ; 03 
- - - - - - 0x00C641 03:A631: 00        .byte $00, $00, $01, $01   ; 04 
- D 1 - - - 0x00C645 03:A635: 00        .byte $00, $00, $01, $00   ; 05 
- - - - - - 0x00C649 03:A639: 01        .byte $01, $00, $00, $00   ; 06 
- - - - - - 0x00C64D 03:A63D: 00        .byte $00, $00, $00, $00   ; 07 
- - - - - - 0x00C651 03:A641: 02        .byte $02, $00, $00, $00   ; 08 
- - - - - - 0x00C655 03:A645: 02        .byte $02, $02, $00, $00   ; 09 
- D 1 - - - 0x00C659 03:A649: 00        .byte $00, $00, $02, $00   ; 0A 
- D 1 - - - 0x00C65D 03:A64D: 00        .byte $00, $00, $02, $00   ; 0B 
- D 1 - - - 0x00C661 03:A651: 00        .byte $00, $00, $02, $02   ; 0C 
- D 1 - - - 0x00C665 03:A655: 02        .byte $02, $00, $02, $00   ; 0D 
- D 1 - - - 0x00C669 03:A659: 00        .byte $00, $00, $01, $01   ; 0E 
- D 1 - - - 0x00C66D 03:A65D: 01        .byte $01, $00, $01, $00   ; 0F 
- D 1 - - - 0x00C671 03:A661: 01        .byte $01, $00, $00, $00   ; 10 
- D 1 - - - 0x00C675 03:A665: 01        .byte $01, $01, $00, $00   ; 11 



tbl_A669:
- D 1 - - - 0x00C679 03:A669: 7D A6     .word _off015_A67D_00_stage_1
- D 1 - - - 0x00C67B 03:A66B: 00 A8     .word _off015_A800_01_stage_2
- D 1 - - - 0x00C67D 03:A66D: 6E A9     .word _off015_A96E_02_stage_3
- D 1 - - - 0x00C67F 03:A66F: 61 AA     .word _off015_AA61_03_stage_4
- D 1 - - - 0x00C681 03:A671: 15 AE     .word _off015_AE15_04_stage_5



tbl_A673:
- - - - - - 0x00C683 03:A673: 41 A8     .word _off016_A841_00_stage_1
- D 1 - - - 0x00C685 03:A675: 41 A8     .word _off016_A841_01_stage_2
- D 1 - - - 0x00C687 03:A677: 91 A9     .word _off016_A991_02_stage_3
- D 1 - - - 0x00C689 03:A679: ED AB     .word _off016_ABED_03_stage_4
- D 1 - - - 0x00C68B 03:A67B: 33 AE     .word _off016_AE33_04_stage_5



_off015_A67D_00_stage_1:
- D 1 - I - 0x00C68D 03:A67D: AD A6     .word _off017_00_A6AD_00
- D 1 - I - 0x00C68F 03:A67F: BE A6     .word _off017_00_A6BE_01
- D 1 - I - 0x00C691 03:A681: D3 A6     .word _off017_00_A6D3_02
- D 1 - I - 0x00C693 03:A683: D8 A6     .word _off017_00_A6D8_03
- D 1 - I - 0x00C695 03:A685: DD A6     .word _off017_00_A6DD_04
- D 1 - I - 0x00C697 03:A687: E2 A6     .word _off017_00_A6E2_05
- D 1 - I - 0x00C699 03:A689: F7 A6     .word _off017_00_A6F7_06
- D 1 - I - 0x00C69B 03:A68B: 08 A7     .word _off017_00_A708_07
- D 1 - I - 0x00C69D 03:A68D: 0D A7     .word _off017_00_A70D_08
- D 1 - I - 0x00C69F 03:A68F: 26 A7     .word _off017_00_A726_09
- D 1 - I - 0x00C6A1 03:A691: 37 A7     .word _off017_00_A737_0A
- D 1 - I - 0x00C6A3 03:A693: 44 A7     .word _off017_00_A744_0B
- D 1 - I - 0x00C6A5 03:A695: 51 A7     .word _off017_00_A751_0C
- D 1 - I - 0x00C6A7 03:A697: 66 A7     .word _off017_00_A766_0D
- D 1 - I - 0x00C6A9 03:A699: 73 A7     .word _off017_00_A773_0E
- D 1 - I - 0x00C6AB 03:A69B: 88 A7     .word _off017_00_A788_0F
- D 1 - I - 0x00C6AD 03:A69D: 91 A7     .word _off017_00_A791_10
- D 1 - I - 0x00C6AF 03:A69F: A6 A7     .word _off017_00_A7A6_11
- D 1 - I - 0x00C6B1 03:A6A1: AF A7     .word _off017_00_A7AF_12
- D 1 - I - 0x00C6B3 03:A6A3: C4 A7     .word _off017_00_A7C4_13
- D 1 - I - 0x00C6B5 03:A6A5: D5 A7     .word _off017_00_A7D5_14
- D 1 - I - 0x00C6B7 03:A6A7: EA A7     .word _off017_00_A7EA_15
- D 1 - I - 0x00C6B9 03:A6A9: FB A7     .word _off017_00_A7FB_16
- - - - - - 0x00C6BB 03:A6AB: FF A7     .word _off017_00_A7FF_17



_off017_00_A6AD_00:
- D 1 - I - 0x00C6BD 03:A6AD: 07        .byte $07   ; 
- D 1 - I - 0x00C6BE 03:A6AE: 88        .byte $88   ; 
- D 1 - I - 0x00C6BF 03:A6AF: 3E        .byte $3E   ; 
- D 1 - I - 0x00C6C0 03:A6B0: 00        .byte $00   ; 
- D 1 - I - 0x00C6C1 03:A6B1: 63        .byte $63   ; 
- D 1 - I - 0x00C6C2 03:A6B2: 38        .byte $38   ; 
- D 1 - I - 0x00C6C3 03:A6B3: 41        .byte $41   ; 
- D 1 - I - 0x00C6C4 03:A6B4: 0A        .byte $0A   ; 
- D 1 - I - 0x00C6C5 03:A6B5: 76        .byte $76   ; 
- D 1 - I - 0x00C6C6 03:A6B6: A8        .byte $A8   ; 
- D 1 - I - 0x00C6C7 03:A6B7: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6C8 03:A6B8: 03        .byte $03   ; 
- D 1 - I - 0x00C6C9 03:A6B9: E7        .byte $E7   ; 
- D 1 - I - 0x00C6CA 03:A6BA: A8        .byte $A8   ; 
- D 1 - I - 0x00C6CB 03:A6BB: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6CC 03:A6BC: 04        .byte $04   ; 
- D 1 - I - 0x00C6CD 03:A6BD: FF        .byte $FF   ; 



_off017_00_A6BE_01:
- D 1 - I - 0x00C6CE 03:A6BE: 1C        .byte $1C   ; 
- D 1 - I - 0x00C6CF 03:A6BF: 38        .byte $38   ; 
- D 1 - I - 0x00C6D0 03:A6C0: 41        .byte $41   ; 
- D 1 - I - 0x00C6D1 03:A6C1: 0D        .byte $0D   ; 
- D 1 - I - 0x00C6D2 03:A6C2: 36        .byte $36   ; 
- D 1 - I - 0x00C6D3 03:A6C3: A8        .byte $A8   ; 
- D 1 - I - 0x00C6D4 03:A6C4: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6D5 03:A6C5: 06        .byte $06   ; 
- D 1 - I - 0x00C6D6 03:A6C6: 84        .byte $84   ; 
- D 1 - I - 0x00C6D7 03:A6C7: A8        .byte $A8   ; 
- D 1 - I - 0x00C6D8 03:A6C8: 41        .byte $41   ; 
- D 1 - I - 0x00C6D9 03:A6C9: 08        .byte $08   ; 
- D 1 - I - 0x00C6DA 03:A6CA: DC        .byte $DC   ; 
- D 1 - I - 0x00C6DB 03:A6CB: A8        .byte $A8   ; 
- D 1 - I - 0x00C6DC 03:A6CC: 3F        .byte $3F   ; 
- D 1 - I - 0x00C6DD 03:A6CD: 02        .byte $02   ; 
- D 1 - I - 0x00C6DE 03:A6CE: D8        .byte $D8   ; 
- D 1 - I - 0x00C6DF 03:A6CF: 38        .byte $38   ; 
- D 1 - I - 0x00C6E0 03:A6D0: 41        .byte $41   ; 
- D 1 - I - 0x00C6E1 03:A6D1: 0B        .byte $0B   ; 
- D 1 - I - 0x00C6E2 03:A6D2: FF        .byte $FF   ; 



_off017_00_A6D3_02:
- D 1 - I - 0x00C6E3 03:A6D3: 5A        .byte $5A   ; 
- D 1 - I - 0x00C6E4 03:A6D4: A8        .byte $A8   ; 
- D 1 - I - 0x00C6E5 03:A6D5: 3E        .byte $3E   ; 
- D 1 - I - 0x00C6E6 03:A6D6: 04        .byte $04   ; 
- D 1 - I - 0x00C6E7 03:A6D7: FF        .byte $FF   ; 



_off017_00_A6D8_03:
- D 1 - I - 0x00C6E8 03:A6D8: 55        .byte $55   ; 
- D 1 - I - 0x00C6E9 03:A6D9: 90        .byte $90   ; 
- D 1 - I - 0x00C6EA 03:A6DA: 15        .byte $15   ; 
- D 1 - I - 0x00C6EB 03:A6DB: 06        .byte $06   ; 
- D 1 - I - 0x00C6EC 03:A6DC: FF        .byte $FF   ; 



_off017_00_A6DD_04:
- D 1 - I - 0x00C6ED 03:A6DD: F7        .byte $F7   ; 
- D 1 - I - 0x00C6EE 03:A6DE: 38        .byte $38   ; 
- D 1 - I - 0x00C6EF 03:A6DF: 4C        .byte $4C   ; 
- D 1 - I - 0x00C6F0 03:A6E0: 15        .byte $15   ; 
- D 1 - I - 0x00C6F1 03:A6E1: FF        .byte $FF   ; 



_off017_00_A6E2_05:
- D 1 - I - 0x00C6F2 03:A6E2: 65        .byte $65   ; 
- D 1 - I - 0x00C6F3 03:A6E3: 68        .byte $68   ; 
- D 1 - I - 0x00C6F4 03:A6E4: 4E        .byte $4E   ; 
- D 1 - I - 0x00C6F5 03:A6E5: 36        .byte $36   ; 
- D 1 - I - 0x00C6F6 03:A6E6: 8D        .byte $8D   ; 
- D 1 - I - 0x00C6F7 03:A6E7: 30        .byte $30   ; 
- D 1 - I - 0x00C6F8 03:A6E8: 30        .byte $30   ; 
- D 1 - I - 0x00C6F9 03:A6E9: 00        .byte $00   ; 
- D 1 - I - 0x00C6FA 03:A6EA: AD        .byte $AD   ; 
- D 1 - I - 0x00C6FB 03:A6EB: 30        .byte $30   ; 
- D 1 - I - 0x00C6FC 03:A6EC: 30        .byte $30   ; 
- D 1 - I - 0x00C6FD 03:A6ED: 09        .byte $09   ; 
- D 1 - I - 0x00C6FE 03:A6EE: CD        .byte $CD   ; 
- D 1 - I - 0x00C6FF 03:A6EF: 30        .byte $30   ; 
- D 1 - I - 0x00C700 03:A6F0: 30        .byte $30   ; 
- D 1 - I - 0x00C701 03:A6F1: 12        .byte $12   ; 
- D 1 - I - 0x00C702 03:A6F2: ED        .byte $ED   ; 
- D 1 - I - 0x00C703 03:A6F3: 30        .byte $30   ; 
- D 1 - I - 0x00C704 03:A6F4: 30        .byte $30   ; 
- D 1 - I - 0x00C705 03:A6F5: 1B        .byte $1B   ; 
- D 1 - I - 0x00C706 03:A6F6: FF        .byte $FF   ; 



_off017_00_A6F7_06:
- D 1 - I - 0x00C707 03:A6F7: 3F        .byte $3F   ; 
- D 1 - I - 0x00C708 03:A6F8: 78        .byte $78   ; 
- D 1 - I - 0x00C709 03:A6F9: 47        .byte $47   ; 
- D 1 - I - 0x00C70A 03:A6FA: 1C        .byte $1C   ; 
- D 1 - I - 0x00C70B 03:A6FB: 84        .byte $84   ; 
- D 1 - I - 0x00C70C 03:A6FC: 58        .byte $58   ; 
- D 1 - I - 0x00C70D 03:A6FD: 47        .byte $47   ; 
- D 1 - I - 0x00C70E 03:A6FE: 05        .byte $05   ; 
- D 1 - I - 0x00C70F 03:A6FF: 88        .byte $88   ; 
- D 1 - I - 0x00C710 03:A700: 98        .byte $98   ; 
- D 1 - I - 0x00C711 03:A701: 47        .byte $47   ; 
- D 1 - I - 0x00C712 03:A702: 06        .byte $06   ; 
- D 1 - I - 0x00C713 03:A703: BB        .byte $BB   ; 
- D 1 - I - 0x00C714 03:A704: 98        .byte $98   ; 
- D 1 - I - 0x00C715 03:A705: 47        .byte $47   ; 
- D 1 - I - 0x00C716 03:A706: 26        .byte $26   ; 
- D 1 - I - 0x00C717 03:A707: FF        .byte $FF   ; 



_off017_00_A708_07:
- D 1 - I - 0x00C718 03:A708: 81        .byte $81   ; 
- D 1 - I - 0x00C719 03:A709: 00        .byte $00   ; 
- D 1 - I - 0x00C71A 03:A70A: 9B        .byte $9B   ; 
- D 1 - I - 0x00C71B 03:A70B: 09        .byte $09   ; 
- D 1 - I - 0x00C71C 03:A70C: FF        .byte $FF   ; 



_off017_00_A70D_08:
- D 1 - I - 0x00C71D 03:A70D: 62        .byte $62   ; 
- D 1 - I - 0x00C71E 03:A70E: 00        .byte $00   ; 
- D 1 - I - 0x00C71F 03:A70F: 9B        .byte $9B   ; 
- D 1 - I - 0x00C720 03:A710: 0C        .byte $0C   ; 
- D 1 - I - 0x00C721 03:A711: 45        .byte $45   ; 
- D 1 - I - 0x00C722 03:A712: 78        .byte $78   ; 
- D 1 - I - 0x00C723 03:A713: 46        .byte $46   ; 
- D 1 - I - 0x00C724 03:A714: 03        .byte $03   ; 
- D 1 - I - 0x00C725 03:A715: 77        .byte $77   ; 
- D 1 - I - 0x00C726 03:A716: 78        .byte $78   ; 
- D 1 - I - 0x00C727 03:A717: 47        .byte $47   ; 
- D 1 - I - 0x00C728 03:A718: 1D        .byte $1D   ; 
- D 1 - I - 0x00C729 03:A719: 86        .byte $86   ; 
- D 1 - I - 0x00C72A 03:A71A: 68        .byte $68   ; 
- D 1 - I - 0x00C72B 03:A71B: 47        .byte $47   ; 
- D 1 - I - 0x00C72C 03:A71C: 05        .byte $05   ; 
- D 1 - I - 0x00C72D 03:A71D: D3        .byte $D3   ; 
- D 1 - I - 0x00C72E 03:A71E: 68        .byte $68   ; 
- D 1 - I - 0x00C72F 03:A71F: 47        .byte $47   ; 
- D 1 - I - 0x00C730 03:A720: 00        .byte $00   ; 
- D 1 - I - 0x00C731 03:A721: 0D        .byte $0D   ; 
- D 1 - I - 0x00C732 03:A722: A8        .byte $A8   ; 
- D 1 - I - 0x00C733 03:A723: 31        .byte $31   ; 
- D 1 - I - 0x00C734 03:A724: 02        .byte $02   ; 
- D 1 - I - 0x00C735 03:A725: FF        .byte $FF   ; 



_off017_00_A726_09:
- D 1 - I - 0x00C736 03:A726: 0A        .byte $0A   ; 
- D 1 - I - 0x00C737 03:A727: 68        .byte $68   ; 
- D 1 - I - 0x00C738 03:A728: 47        .byte $47   ; 
- D 1 - I - 0x00C739 03:A729: 19        .byte $19   ; 
- D 1 - I - 0x00C73A 03:A72A: 56        .byte $56   ; 
- D 1 - I - 0x00C73B 03:A72B: 68        .byte $68   ; 
- D 1 - I - 0x00C73C 03:A72C: 47        .byte $47   ; 
- D 1 - I - 0x00C73D 03:A72D: 1A        .byte $1A   ; 
- D 1 - I - 0x00C73E 03:A72E: 8F        .byte $8F   ; 
- D 1 - I - 0x00C73F 03:A72F: B8        .byte $B8   ; 
- D 1 - I - 0x00C740 03:A730: 98        .byte $98   ; 
- D 1 - I - 0x00C741 03:A731: 03        .byte $03   ; 
- D 1 - I - 0x00C742 03:A732: E6        .byte $E6   ; 
- D 1 - I - 0x00C743 03:A733: A8        .byte $A8   ; 
- D 1 - I - 0x00C744 03:A734: 47        .byte $47   ; 
- D 1 - I - 0x00C745 03:A735: 1C        .byte $1C   ; 
- D 1 - I - 0x00C746 03:A736: FF        .byte $FF   ; 



_off017_00_A737_0A:
- D 1 - I - 0x00C747 03:A737: 2D        .byte $2D   ; 
- D 1 - I - 0x00C748 03:A738: A8        .byte $A8   ; 
- D 1 - I - 0x00C749 03:A739: 46        .byte $46   ; 
- D 1 - I - 0x00C74A 03:A73A: 1E        .byte $1E   ; 
- D 1 - I - 0x00C74B 03:A73B: 27        .byte $27   ; 
- D 1 - I - 0x00C74C 03:A73C: A8        .byte $A8   ; 
- D 1 - I - 0x00C74D 03:A73D: 47        .byte $47   ; 
- D 1 - I - 0x00C74E 03:A73E: 1D        .byte $1D   ; 
- D 1 - I - 0x00C74F 03:A73F: A5        .byte $A5   ; 
- D 1 - I - 0x00C750 03:A740: A8        .byte $A8   ; 
- D 1 - I - 0x00C751 03:A741: 46        .byte $46   ; 
- D 1 - I - 0x00C752 03:A742: 1E        .byte $1E   ; 
- D 1 - I - 0x00C753 03:A743: FF        .byte $FF   ; 



_off017_00_A744_0B:
- D 1 - I - 0x00C754 03:A744: 74        .byte $74   ; 
- D 1 - I - 0x00C755 03:A745: A8        .byte $A8   ; 
- D 1 - I - 0x00C756 03:A746: 47        .byte $47   ; 
- D 1 - I - 0x00C757 03:A747: 18        .byte $18   ; 
- D 1 - I - 0x00C758 03:A748: 8C        .byte $8C   ; 
- D 1 - I - 0x00C759 03:A749: 48        .byte $48   ; 
- D 1 - I - 0x00C75A 03:A74A: 14        .byte $14   ; 
- D 1 - I - 0x00C75B 03:A74B: 01        .byte $01   ; 
- D 1 - I - 0x00C75C 03:A74C: AC        .byte $AC   ; 
- D 1 - I - 0x00C75D 03:A74D: 48        .byte $48   ; 
- D 1 - I - 0x00C75E 03:A74E: 14        .byte $14   ; 
- D 1 - I - 0x00C75F 03:A74F: 02        .byte $02   ; 
- D 1 - I - 0x00C760 03:A750: FF        .byte $FF   ; 



_off017_00_A751_0C:
- D 1 - I - 0x00C761 03:A751: 4D        .byte $4D   ; 
- D 1 - I - 0x00C762 03:A752: 50        .byte $50   ; 
- D 1 - I - 0x00C763 03:A753: 9A        .byte $9A   ; 
- D 1 - I - 0x00C764 03:A754: 04        .byte $04   ; 
- D 1 - I - 0x00C765 03:A755: 73        .byte $73   ; 
- D 1 - I - 0x00C766 03:A756: 98        .byte $98   ; 
- D 1 - I - 0x00C767 03:A757: 47        .byte $47   ; 
- D 1 - I - 0x00C768 03:A758: 20        .byte $20   ; 
- D 1 - I - 0x00C769 03:A759: 8E        .byte $8E   ; 
- D 1 - I - 0x00C76A 03:A75A: B8        .byte $B8   ; 
- D 1 - I - 0x00C76B 03:A75B: 9A        .byte $9A   ; 
- D 1 - I - 0x00C76C 03:A75C: 0D        .byte $0D   ; 
- D 1 - I - 0x00C76D 03:A75D: D2        .byte $D2   ; 
- D 1 - I - 0x00C76E 03:A75E: B8        .byte $B8   ; 
- D 1 - I - 0x00C76F 03:A75F: 9A        .byte $9A   ; 
- D 1 - I - 0x00C770 03:A760: 16        .byte $16   ; 
- D 1 - I - 0x00C771 03:A761: F7        .byte $F7   ; 
- D 1 - I - 0x00C772 03:A762: 78        .byte $78   ; 
- D 1 - I - 0x00C773 03:A763: 47        .byte $47   ; 
- D 1 - I - 0x00C774 03:A764: 20        .byte $20   ; 
- D 1 - I - 0x00C775 03:A765: FF        .byte $FF   ; 



_off017_00_A766_0D:
- D 1 - I - 0x00C776 03:A766: 16        .byte $16   ; 
- D 1 - I - 0x00C777 03:A767: 88        .byte $88   ; 
- D 1 - I - 0x00C778 03:A768: AB        .byte $AB   ; 
- D 1 - I - 0x00C779 03:A769: 02        .byte $02   ; 
- D 1 - I - 0x00C77A 03:A76A: 41        .byte $41   ; 
- D 1 - I - 0x00C77B 03:A76B: 00        .byte $00   ; 
- D 1 - I - 0x00C77C 03:A76C: 9B        .byte $9B   ; 
- D 1 - I - 0x00C77D 03:A76D: 03        .byte $03   ; 
- D 1 - I - 0x00C77E 03:A76E: 96        .byte $96   ; 
- D 1 - I - 0x00C77F 03:A76F: 88        .byte $88   ; 
- D 1 - I - 0x00C780 03:A770: AB        .byte $AB   ; 
- D 1 - I - 0x00C781 03:A771: 05        .byte $05   ; 
- D 1 - I - 0x00C782 03:A772: FF        .byte $FF   ; 



_off017_00_A773_0E:
- D 1 - I - 0x00C783 03:A773: 3F        .byte $3F   ; 
- D 1 - I - 0x00C784 03:A774: 75        .byte $75   ; 
- D 1 - I - 0x00C785 03:A775: 98        .byte $98   ; 
- D 1 - I - 0x00C786 03:A776: 08        .byte $08   ; 
- D 1 - I - 0x00C787 03:A777: 5F        .byte $5F   ; 
- D 1 - I - 0x00C788 03:A778: 9F        .byte $9F   ; 
- D 1 - I - 0x00C789 03:A779: 98        .byte $98   ; 
- D 1 - I - 0x00C78A 03:A77A: 11        .byte $11   ; 
- D 1 - I - 0x00C78B 03:A77B: 8F        .byte $8F   ; 
- D 1 - I - 0x00C78C 03:A77C: B7        .byte $B7   ; 
- D 1 - I - 0x00C78D 03:A77D: 98        .byte $98   ; 
- D 1 - I - 0x00C78E 03:A77E: 1A        .byte $1A   ; 
- D 1 - I - 0x00C78F 03:A77F: DF        .byte $DF   ; 
- D 1 - I - 0x00C790 03:A780: 9D        .byte $9D   ; 
- D 1 - I - 0x00C791 03:A781: 98        .byte $98   ; 
- D 1 - I - 0x00C792 03:A782: 23        .byte $23   ; 
- D 1 - I - 0x00C793 03:A783: FD        .byte $FD   ; 
- D 1 - I - 0x00C794 03:A784: 75        .byte $75   ; 
- D 1 - I - 0x00C795 03:A785: 98        .byte $98   ; 
- D 1 - I - 0x00C796 03:A786: 2C        .byte $2C   ; 
- D 1 - I - 0x00C797 03:A787: FF        .byte $FF   ; 



_off017_00_A788_0F:
- D 1 - I - 0x00C798 03:A788: 36        .byte $36   ; 
- D 1 - I - 0x00C799 03:A789: 58        .byte $58   ; 
- D 1 - I - 0x00C79A 03:A78A: 47        .byte $47   ; 
- D 1 - I - 0x00C79B 03:A78B: 1D        .byte $1D   ; 
- D 1 - I - 0x00C79C 03:A78C: D6        .byte $D6   ; 
- D 1 - I - 0x00C79D 03:A78D: 98        .byte $98   ; 
- D 1 - I - 0x00C79E 03:A78E: 47        .byte $47   ; 
- D 1 - I - 0x00C79F 03:A78F: 1E        .byte $1E   ; 
- D 1 - I - 0x00C7A0 03:A790: FF        .byte $FF   ; 



_off017_00_A791_10:
- D 1 - I - 0x00C7A1 03:A791: 15        .byte $15   ; 
- D 1 - I - 0x00C7A2 03:A792: 78        .byte $78   ; 
- D 1 - I - 0x00C7A3 03:A793: 46        .byte $46   ; 
- D 1 - I - 0x00C7A4 03:A794: 01        .byte $01   ; 
- D 1 - I - 0x00C7A5 03:A795: 60        .byte $60   ; 
- D 1 - I - 0x00C7A6 03:A796: 90        .byte $90   ; 
- D 1 - I - 0x00C7A7 03:A797: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7A8 03:A798: 22        .byte $22   ; 
- D 1 - I - 0x00C7A9 03:A799: 7B        .byte $7B   ; 
- D 1 - I - 0x00C7AA 03:A79A: B0        .byte $B0   ; 
- D 1 - I - 0x00C7AB 03:A79B: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7AC 03:A79C: 23        .byte $23   ; 
- D 1 - I - 0x00C7AD 03:A79D: AA        .byte $AA   ; 
- D 1 - I - 0x00C7AE 03:A79E: B0        .byte $B0   ; 
- D 1 - I - 0x00C7AF 03:A79F: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7B0 03:A7A0: 24        .byte $24   ; 
- D 1 - I - 0x00C7B1 03:A7A1: CA        .byte $CA   ; 
- D 1 - I - 0x00C7B2 03:A7A2: 88        .byte $88   ; 
- D 1 - I - 0x00C7B3 03:A7A3: 9C        .byte $9C   ; 
- D 1 - I - 0x00C7B4 03:A7A4: 25        .byte $25   ; 
- D 1 - I - 0x00C7B5 03:A7A5: FF        .byte $FF   ; 



_off017_00_A7A6_11:
- D 1 - I - 0x00C7B6 03:A7A6: 32        .byte $32   ; 
- D 1 - I - 0x00C7B7 03:A7A7: 38        .byte $38   ; 
- D 1 - I - 0x00C7B8 03:A7A8: 47        .byte $47   ; 
- D 1 - I - 0x00C7B9 03:A7A9: 1E        .byte $1E   ; 
- D 1 - I - 0x00C7BA 03:A7AA: 41        .byte $41   ; 
- D 1 - I - 0x00C7BB 03:A7AB: A9        .byte $A9   ; 
- D 1 - I - 0x00C7BC 03:A7AC: 47        .byte $47   ; 
- D 1 - I - 0x00C7BD 03:A7AD: 01        .byte $01   ; 
- D 1 - I - 0x00C7BE 03:A7AE: FF        .byte $FF   ; 



_off017_00_A7AF_12:
- D 1 - I - 0x00C7BF 03:A7AF: 27        .byte $27   ; 
- D 1 - I - 0x00C7C0 03:A7B0: A8        .byte $A8   ; 
- D 1 - I - 0x00C7C1 03:A7B1: 41        .byte $41   ; 
- D 1 - I - 0x00C7C2 03:A7B2: 09        .byte $09   ; 
- D 1 - I - 0x00C7C3 03:A7B3: 4D        .byte $4D   ; 
- D 1 - I - 0x00C7C4 03:A7B4: A8        .byte $A8   ; 
- D 1 - I - 0x00C7C5 03:A7B5: 45        .byte $45   ; 
- D 1 - I - 0x00C7C6 03:A7B6: 32        .byte $32   ; 
- D 1 - I - 0x00C7C7 03:A7B7: 87        .byte $87   ; 
- D 1 - I - 0x00C7C8 03:A7B8: 38        .byte $38   ; 
- D 1 - I - 0x00C7C9 03:A7B9: 41        .byte $41   ; 
- D 1 - I - 0x00C7CA 03:A7BA: 0B        .byte $0B   ; 
- D 1 - I - 0x00C7CB 03:A7BB: C8        .byte $C8   ; 
- D 1 - I - 0x00C7CC 03:A7BC: 48        .byte $48   ; 
- D 1 - I - 0x00C7CD 03:A7BD: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7CE 03:A7BE: 04        .byte $04   ; 
- D 1 - I - 0x00C7CF 03:A7BF: E9        .byte $E9   ; 
- D 1 - I - 0x00C7D0 03:A7C0: 48        .byte $48   ; 
- D 1 - I - 0x00C7D1 03:A7C1: 45        .byte $45   ; 
- D 1 - I - 0x00C7D2 03:A7C2: 35        .byte $35   ; 
- D 1 - I - 0x00C7D3 03:A7C3: FF        .byte $FF   ; 



_off017_00_A7C4_13:
- D 1 - I - 0x00C7D4 03:A7C4: 36        .byte $36   ; 
- D 1 - I - 0x00C7D5 03:A7C5: 48        .byte $48   ; 
- D 1 - I - 0x00C7D6 03:A7C6: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7D7 03:A7C7: 00        .byte $00   ; 
- D 1 - I - 0x00C7D8 03:A7C8: 56        .byte $56   ; 
- D 1 - I - 0x00C7D9 03:A7C9: 38        .byte $38   ; 
- D 1 - I - 0x00C7DA 03:A7CA: 41        .byte $41   ; 
- D 1 - I - 0x00C7DB 03:A7CB: 09        .byte $09   ; 
- D 1 - I - 0x00C7DC 03:A7CC: E8        .byte $E8   ; 
- D 1 - I - 0x00C7DD 03:A7CD: 48        .byte $48   ; 
- D 1 - I - 0x00C7DE 03:A7CE: 41        .byte $41   ; 
- D 1 - I - 0x00C7DF 03:A7CF: 0A        .byte $0A   ; 
- D 1 - I - 0x00C7E0 03:A7D0: F9        .byte $F9   ; 
- D 1 - I - 0x00C7E1 03:A7D1: 48        .byte $48   ; 
- D 1 - I - 0x00C7E2 03:A7D2: 3E        .byte $3E   ; 
- D 1 - I - 0x00C7E3 03:A7D3: 86        .byte $86   ; 
- D 1 - I - 0x00C7E4 03:A7D4: FF        .byte $FF   ; 



_off017_00_A7D5_14:
- D 1 - I - 0x00C7E5 03:A7D5: 05        .byte $05   ; 
- D 1 - I - 0x00C7E6 03:A7D6: 77        .byte $77   ; 
- D 1 - I - 0x00C7E7 03:A7D7: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7E8 03:A7D8: 13        .byte $13   ; 
- D 1 - I - 0x00C7E9 03:A7D9: 96        .byte $96   ; 
- D 1 - I - 0x00C7EA 03:A7DA: 88        .byte $88   ; 
- D 1 - I - 0x00C7EB 03:A7DB: 3F        .byte $3F   ; 
- D 1 - I - 0x00C7EC 03:A7DC: 14        .byte $14   ; 
- D 1 - I - 0x00C7ED 03:A7DD: A7        .byte $A7   ; 
- D 1 - I - 0x00C7EE 03:A7DE: 77        .byte $77   ; 
- D 1 - I - 0x00C7EF 03:A7DF: 41        .byte $41   ; 
- D 1 - I - 0x00C7F0 03:A7E0: 0D        .byte $0D   ; 
- D 1 - I - 0x00C7F1 03:A7E1: B1        .byte $B1   ; 
- D 1 - I - 0x00C7F2 03:A7E2: 78        .byte $78   ; 
- D 1 - I - 0x00C7F3 03:A7E3: 3E        .byte $3E   ; 
- D 1 - I - 0x00C7F4 03:A7E4: 06        .byte $06   ; 
- D 1 - I - 0x00C7F5 03:A7E5: B7        .byte $B7   ; 
- D 1 - I - 0x00C7F6 03:A7E6: 78        .byte $78   ; 
- D 1 - I - 0x00C7F7 03:A7E7: 3E        .byte $3E   ; 
- D 1 - I - 0x00C7F8 03:A7E8: 86        .byte $86   ; 
- D 1 - I - 0x00C7F9 03:A7E9: FF        .byte $FF   ; 



_off017_00_A7EA_15:
- D 1 - I - 0x00C7FA 03:A7EA: 0C        .byte $0C   ; 
- D 1 - I - 0x00C7FB 03:A7EB: A8        .byte $A8   ; 
- D 1 - I - 0x00C7FC 03:A7EC: 41        .byte $41   ; 
- D 1 - I - 0x00C7FD 03:A7ED: 08        .byte $08   ; 
- D 1 - I - 0x00C7FE 03:A7EE: 52        .byte $52   ; 
- D 1 - I - 0x00C7FF 03:A7EF: A5        .byte $A5   ; 
- D 1 - I - 0x00C800 03:A7F0: 3E        .byte $3E   ; 
- D 1 - I - 0x00C801 03:A7F1: 01        .byte $01   ; 
- D 1 - I - 0x00C802 03:A7F2: 38        .byte $38   ; 
- D 1 - I - 0x00C803 03:A7F3: 38        .byte $38   ; 
- D 1 - I - 0x00C804 03:A7F4: 41        .byte $41   ; 
- D 1 - I - 0x00C805 03:A7F5: 0A        .byte $0A   ; 
- D 1 - I - 0x00C806 03:A7F6: C6        .byte $C6   ; 
- D 1 - I - 0x00C807 03:A7F7: 48        .byte $48   ; 
- D 1 - I - 0x00C808 03:A7F8: 41        .byte $41   ; 
- D 1 - I - 0x00C809 03:A7F9: 0B        .byte $0B   ; 
- D 1 - I - 0x00C80A 03:A7FA: FF        .byte $FF   ; 



_off017_00_A7FB_16:
- D 1 - I - 0x00C80B 03:A7FB: E8        .byte $E8   ; 
- D 1 - I - 0x00C80C 03:A7FC: 28        .byte $28   ; 
- D 1 - I - 0x00C80D 03:A7FD: 33        .byte $33   ; 
- D 1 - I - 0x00C80E 03:A7FE: 40        .byte $40   ; 



_off017_00_A7FF_17:
- D 1 - I - 0x00C80F 03:A7FF: FF        .byte $FF   ; 



_off015_A800_01_stage_2:
- D 1 - I - 0x00C810 03:A800: 00        .byte $00   ; 
- D 1 - I - 0x00C811 03:A801: 00        .byte $00   ; 
- D 1 - I - 0x00C812 03:A802: 00        .byte $00   ; 
- - - - - - 0x00C813 03:A803: 00        .byte $00   ; 
- D 1 - I - 0x00C814 03:A804: 11        .byte $11   ; 
- D 1 - I - 0x00C815 03:A805: 00        .byte $00   ; 
- D 1 - I - 0x00C816 03:A806: 00        .byte $00   ; 
- D 1 - I - 0x00C817 03:A807: 00        .byte $00   ; 
- - - - - - 0x00C818 03:A808: 00        .byte $00   ; 
- D 1 - I - 0x00C819 03:A809: 12        .byte $12   ; 
- D 1 - I - 0x00C81A 03:A80A: 00        .byte $00   ; 
- D 1 - I - 0x00C81B 03:A80B: 01        .byte $01   ; 
- D 1 - I - 0x00C81C 03:A80C: 07        .byte $07   ; 
- - - - - - 0x00C81D 03:A80D: 00        .byte $00   ; 
- D 1 - I - 0x00C81E 03:A80E: 13        .byte $13   ; 
- D 1 - I - 0x00C81F 03:A80F: 00        .byte $00   ; 
- D 1 - I - 0x00C820 03:A810: 02        .byte $02   ; 
- D 1 - I - 0x00C821 03:A811: 08        .byte $08   ; 
- - - - - - 0x00C822 03:A812: 00        .byte $00   ; 
- D 1 - I - 0x00C823 03:A813: 00        .byte $00   ; 
- D 1 - I - 0x00C824 03:A814: 00        .byte $00   ; 
- D 1 - I - 0x00C825 03:A815: 03        .byte $03   ; 
- D 1 - I - 0x00C826 03:A816: 09        .byte $09   ; 
- - - - - - 0x00C827 03:A817: 00        .byte $00   ; 
- - - - - - 0x00C828 03:A818: 00        .byte $00   ; 
- D 1 - I - 0x00C829 03:A819: 00        .byte $00   ; 
- D 1 - I - 0x00C82A 03:A81A: 04        .byte $04   ; 
- D 1 - I - 0x00C82B 03:A81B: 0A        .byte $0A   ; 
- - - - - - 0x00C82C 03:A81C: 00        .byte $00   ; 
- - - - - - 0x00C82D 03:A81D: 00        .byte $00   ; 
- - - - - - 0x00C82E 03:A81E: 00        .byte $00   ; 
- D 1 - I - 0x00C82F 03:A81F: 05        .byte $05   ; 
- D 1 - I - 0x00C830 03:A820: 0B        .byte $0B   ; 
- - - - - - 0x00C831 03:A821: 15        .byte $15   ; 
- - - - - - 0x00C832 03:A822: 00        .byte $00   ; 
- - - - - - 0x00C833 03:A823: 00        .byte $00   ; 
- D 1 - I - 0x00C834 03:A824: 06        .byte $06   ; 
- D 1 - I - 0x00C835 03:A825: 0C        .byte $0C   ; 
- D 1 - I - 0x00C836 03:A826: 00        .byte $00   ; 
- - - - - - 0x00C837 03:A827: 00        .byte $00   ; 
- - - - - - 0x00C838 03:A828: 00        .byte $00   ; 
- D 1 - I - 0x00C839 03:A829: 00        .byte $00   ; 
- D 1 - I - 0x00C83A 03:A82A: 14        .byte $14   ; 
- D 1 - I - 0x00C83B 03:A82B: 0D        .byte $0D   ; 
- D 1 - I - 0x00C83C 03:A82C: 00        .byte $00   ; 
- - - - - - 0x00C83D 03:A82D: 00        .byte $00   ; 
- - - - - - 0x00C83E 03:A82E: 00        .byte $00   ; 
- D 1 - I - 0x00C83F 03:A82F: 00        .byte $00   ; 
- D 1 - I - 0x00C840 03:A830: 0E        .byte $0E   ; 
- D 1 - I - 0x00C841 03:A831: 00        .byte $00   ; 
- - - - - - 0x00C842 03:A832: 00        .byte $00   ; 
- - - - - - 0x00C843 03:A833: 00        .byte $00   ; 
- D 1 - I - 0x00C844 03:A834: 00        .byte $00   ; 
- D 1 - I - 0x00C845 03:A835: 0F        .byte $0F   ; 
- D 1 - I - 0x00C846 03:A836: 00        .byte $00   ; 
- - - - - - 0x00C847 03:A837: 00        .byte $00   ; 
- - - - - - 0x00C848 03:A838: 00        .byte $00   ; 
- D 1 - I - 0x00C849 03:A839: 00        .byte $00   ; 
- D 1 - I - 0x00C84A 03:A83A: 10        .byte $10   ; 
- D 1 - I - 0x00C84B 03:A83B: 00        .byte $00   ; 
- - - - - - 0x00C84C 03:A83C: 00        .byte $00   ; 
- - - - - - 0x00C84D 03:A83D: 00        .byte $00   ; 
- D 1 - I - 0x00C84E 03:A83E: 00        .byte $00   ; 
- D 1 - I - 0x00C84F 03:A83F: 00        .byte $00   ; 
- D 1 - I - 0x00C850 03:A840: 00        .byte $00   ; 



_off016_A841_00_stage_1:
_off016_A841_01_stage_2:
- D 1 - I - 0x00C851 03:A841: 7D A8     .word _off018_00_01_A87D_00
- D 1 - I - 0x00C853 03:A843: 6D A8     .word _off018_00_01_A86D_01
- D 1 - I - 0x00C855 03:A845: 7E A8     .word _off018_00_01_A87E_02
- D 1 - I - 0x00C857 03:A847: 8B A8     .word _off018_00_01_A88B_03
- D 1 - I - 0x00C859 03:A849: 98 A8     .word _off018_00_01_A898_04
- D 1 - I - 0x00C85B 03:A84B: A9 A8     .word _off018_00_01_A8A9_05
- D 1 - I - 0x00C85D 03:A84D: BE A8     .word _off018_00_01_A8BE_06
- D 1 - I - 0x00C85F 03:A84F: C3 A8     .word _off018_00_01_A8C3_07
- D 1 - I - 0x00C861 03:A851: D0 A8     .word _off018_00_01_A8D0_08
- D 1 - I - 0x00C863 03:A853: E1 A8     .word _off018_00_01_A8E1_09
- D 1 - I - 0x00C865 03:A855: E6 A8     .word _off018_00_01_A8E6_0A
- D 1 - I - 0x00C867 03:A857: EB A8     .word _off018_00_01_A8EB_0B
- D 1 - I - 0x00C869 03:A859: F8 A8     .word _off018_00_01_A8F8_0C
- D 1 - I - 0x00C86B 03:A85B: 0B A9     .word _off018_00_01_A90B_0D
- D 1 - I - 0x00C86D 03:A85D: 1C A9     .word _off018_00_01_A91C_0E
- D 1 - I - 0x00C86F 03:A85F: 2D A9     .word _off018_00_01_A92D_0F
- D 1 - I - 0x00C871 03:A861: 46 A9     .word _off018_00_01_A946_10
- D 1 - I - 0x00C873 03:A863: 5B A9     .word _off018_00_01_A95B_11
- D 1 - I - 0x00C875 03:A865: 60 A9     .word _off018_00_01_A960_12
- D 1 - I - 0x00C877 03:A867: 65 A9     .word _off018_00_01_A965_13
- D 1 - I - 0x00C879 03:A869: 05 A9     .word _off018_00_01_A905_14
- - - - - - 0x00C87B 03:A86B: 0A A9     .word _off018_00_01_A90A_15



_off018_00_01_A86D_01:
- D 1 - I - 0x00C87D 03:A86D: CE        .byte $CE   ; 
- D 1 - I - 0x00C87E 03:A86E: 07        .byte $07   ; 
- D 1 - I - 0x00C87F 03:A86F: A3        .byte $A3   ; 
- D 1 - I - 0x00C880 03:A870: 35        .byte $35   ; 
- D 1 - I - 0x00C881 03:A871: CE        .byte $CE   ; 
- D 1 - I - 0x00C882 03:A872: 89        .byte $89   ; 
- D 1 - I - 0x00C883 03:A873: A3        .byte $A3   ; 
- D 1 - I - 0x00C884 03:A874: 24        .byte $24   ; 
- D 1 - I - 0x00C885 03:A875: 32        .byte $32   ; 
- D 1 - I - 0x00C886 03:A876: D8        .byte $D8   ; 
- - - - - - 0x00C887 03:A877: A3        .byte $A3   ; 
- - - - - - 0x00C888 03:A878: 00        .byte $00   ; 
- D 1 - I - 0x00C889 03:A879: AE        .byte $AE   ; 
- D 1 - I - 0x00C88A 03:A87A: D8        .byte $D8   ; 
- D 1 - I - 0x00C88B 03:A87B: A3        .byte $A3   ; 
- D 1 - I - 0x00C88C 03:A87C: 16        .byte $16   ; 



_off018_00_01_A87D_00:
- D 1 - I - 0x00C88D 03:A87D: FF        .byte $FF   ; 



_off018_00_01_A87E_02:
- D 1 - I - 0x00C88E 03:A87E: 7E        .byte $7E   ; 
- D 1 - I - 0x00C88F 03:A87F: 88        .byte $88   ; 
- D 1 - I - 0x00C890 03:A880: 56        .byte $56   ; 
- D 1 - I - 0x00C891 03:A881: 01        .byte $01   ; 
- D 1 - I - 0x00C892 03:A882: 3F        .byte $3F   ; 
- D 1 - I - 0x00C893 03:A883: C6        .byte $C6   ; 
- - - - - - 0x00C894 03:A884: 2D        .byte $2D   ; 
- - - - - - 0x00C895 03:A885: 04        .byte $04   ; 
- D 1 - I - 0x00C896 03:A886: BF        .byte $BF   ; 
- D 1 - I - 0x00C897 03:A887: C6        .byte $C6   ; 
- D 1 - I - 0x00C898 03:A888: 2D        .byte $2D   ; 
- D 1 - I - 0x00C899 03:A889: 05        .byte $05   ; 
- D 1 - I - 0x00C89A 03:A88A: FF        .byte $FF   ; 



_off018_00_01_A88B_03:
- D 1 - I - 0x00C89B 03:A88B: 70        .byte $70   ; 
- D 1 - I - 0x00C89C 03:A88C: DA        .byte $DA   ; 
- D 1 - I - 0x00C89D 03:A88D: 52        .byte $52   ; 
- D 1 - I - 0x00C89E 03:A88E: 02        .byte $02   ; 
- D 1 - I - 0x00C89F 03:A88F: 79        .byte $79   ; 
- D 1 - I - 0x00C8A0 03:A890: 3E        .byte $3E   ; 
- - - - - - 0x00C8A1 03:A891: 56        .byte $56   ; 
- - - - - - 0x00C8A2 03:A892: 02        .byte $02   ; 
- D 1 - I - 0x00C8A3 03:A893: BD        .byte $BD   ; 
- D 1 - I - 0x00C8A4 03:A894: 3E        .byte $3E   ; 
- D 1 - I - 0x00C8A5 03:A895: 56        .byte $56   ; 
- D 1 - I - 0x00C8A6 03:A896: 43        .byte $43   ; 
- D 1 - I - 0x00C8A7 03:A897: FF        .byte $FF   ; 



_off018_00_01_A898_04:
- D 1 - I - 0x00C8A8 03:A898: 44        .byte $44   ; 
- D 1 - I - 0x00C8A9 03:A899: 42        .byte $42   ; 
- D 1 - I - 0x00C8AA 03:A89A: 58        .byte $58   ; 
- D 1 - I - 0x00C8AB 03:A89B: 00        .byte $00   ; 
- D 1 - I - 0x00C8AC 03:A89C: 84        .byte $84   ; 
- D 1 - I - 0x00C8AD 03:A89D: 42        .byte $42   ; 
- D 1 - I - 0x00C8AE 03:A89E: 58        .byte $58   ; 
- D 1 - I - 0x00C8AF 03:A89F: 01        .byte $01   ; 
- D 1 - I - 0x00C8B0 03:A8A0: B1        .byte $B1   ; 
- D 1 - I - 0x00C8B1 03:A8A1: 42        .byte $42   ; 
- D 1 - I - 0x00C8B2 03:A8A2: 58        .byte $58   ; 
- D 1 - I - 0x00C8B3 03:A8A3: 02        .byte $02   ; 
- D 1 - I - 0x00C8B4 03:A8A4: EC        .byte $EC   ; 
- D 1 - I - 0x00C8B5 03:A8A5: 42        .byte $42   ; 
- D 1 - I - 0x00C8B6 03:A8A6: 58        .byte $58   ; 
- D 1 - I - 0x00C8B7 03:A8A7: 03        .byte $03   ; 
- D 1 - I - 0x00C8B8 03:A8A8: FF        .byte $FF   ; 



_off018_00_01_A8A9_05:
- D 1 - I - 0x00C8B9 03:A8A9: B3        .byte $B3   ; 
- D 1 - I - 0x00C8BA 03:A8AA: 7C        .byte $7C   ; 
- D 1 - I - 0x00C8BB 03:A8AB: A1        .byte $A1   ; 
- D 1 - I - 0x00C8BC 03:A8AC: 04        .byte $04   ; 
- D 1 - I - 0x00C8BD 03:A8AD: B3        .byte $B3   ; 
- D 1 - I - 0x00C8BE 03:A8AE: A4        .byte $A4   ; 
- D 1 - I - 0x00C8BF 03:A8AF: B4        .byte $B4   ; 
- D 1 - I - 0x00C8C0 03:A8B0: 16        .byte $16   ; 
- D 1 - I - 0x00C8C1 03:A8B1: 33        .byte $33   ; 
- D 1 - I - 0x00C8C2 03:A8B2: 52        .byte $52   ; 
- D 1 - I - 0x00C8C3 03:A8B3: B4        .byte $B4   ; 
- D 1 - I - 0x00C8C4 03:A8B4: 05        .byte $05   ; 
- D 1 - I - 0x00C8C5 03:A8B5: 52        .byte $52   ; 
- D 1 - I - 0x00C8C6 03:A8B6: C8        .byte $C8   ; 
- D 1 - I - 0x00C8C7 03:A8B7: A1        .byte $A1   ; 
- D 1 - I - 0x00C8C8 03:A8B8: 43        .byte $43   ; 
- D 1 - I - 0x00C8C9 03:A8B9: A8        .byte $A8   ; 
- D 1 - I - 0x00C8CA 03:A8BA: C8        .byte $C8   ; 
- D 1 - I - 0x00C8CB 03:A8BB: A1        .byte $A1   ; 
- D 1 - I - 0x00C8CC 03:A8BC: 43        .byte $43   ; 
- D 1 - I - 0x00C8CD 03:A8BD: FF        .byte $FF   ; 



_off018_00_01_A8BE_06:
- D 1 - I - 0x00C8CE 03:A8BE: A5        .byte $A5   ; 
- D 1 - I - 0x00C8CF 03:A8BF: CD        .byte $CD   ; 
- D 1 - I - 0x00C8D0 03:A8C0: A0        .byte $A0   ; 
- D 1 - I - 0x00C8D1 03:A8C1: 00        .byte $00   ; 
- D 1 - I - 0x00C8D2 03:A8C2: FF        .byte $FF   ; 



_off018_00_01_A8C3_07:
- D 1 - I - 0x00C8D3 03:A8C3: 62        .byte $62   ; 
- D 1 - I - 0x00C8D4 03:A8C4: 73        .byte $73   ; 
- D 1 - I - 0x00C8D5 03:A8C5: 56        .byte $56   ; 
- D 1 - I - 0x00C8D6 03:A8C6: 0A        .byte $0A   ; 
- D 1 - I - 0x00C8D7 03:A8C7: 9F        .byte $9F   ; 
- D 1 - I - 0x00C8D8 03:A8C8: 98        .byte $98   ; 
- D 1 - I - 0x00C8D9 03:A8C9: 2D        .byte $2D   ; 
- D 1 - I - 0x00C8DA 03:A8CA: 00        .byte $00   ; 
- D 1 - I - 0x00C8DB 03:A8CB: 1F        .byte $1F   ; 
- D 1 - I - 0x00C8DC 03:A8CC: D8        .byte $D8   ; 
- D 1 - I - 0x00C8DD 03:A8CD: 2D        .byte $2D   ; 
- D 1 - I - 0x00C8DE 03:A8CE: 03        .byte $03   ; 
- D 1 - I - 0x00C8DF 03:A8CF: FF        .byte $FF   ; 



_off018_00_01_A8D0_08:
- D 1 - I - 0x00C8E0 03:A8D0: 5C        .byte $5C   ; 
- D 1 - I - 0x00C8E1 03:A8D1: 42        .byte $42   ; 
- D 1 - I - 0x00C8E2 03:A8D2: 57        .byte $57   ; 
- D 1 - I - 0x00C8E3 03:A8D3: 15        .byte $15   ; 
- D 1 - I - 0x00C8E4 03:A8D4: 9F        .byte $9F   ; 
- D 1 - I - 0x00C8E5 03:A8D5: 68        .byte $68   ; 
- - - - - - 0x00C8E6 03:A8D6: 2D        .byte $2D   ; 
- - - - - - 0x00C8E7 03:A8D7: 01        .byte $01   ; 
- D 1 - I - 0x00C8E8 03:A8D8: 1F        .byte $1F   ; 
- D 1 - I - 0x00C8E9 03:A8D9: 88        .byte $88   ; 
- D 1 - I - 0x00C8EA 03:A8DA: 2D        .byte $2D   ; 
- D 1 - I - 0x00C8EB 03:A8DB: 02        .byte $02   ; 
- D 1 - I - 0x00C8EC 03:A8DC: 69        .byte $69   ; 
- D 1 - I - 0x00C8ED 03:A8DD: F8        .byte $F8   ; 
- D 1 - I - 0x00C8EE 03:A8DE: 56        .byte $56   ; 
- D 1 - I - 0x00C8EF 03:A8DF: 02        .byte $02   ; 
- D 1 - I - 0x00C8F0 03:A8E0: FF        .byte $FF   ; 



_off018_00_01_A8E1_09:
- D 1 - I - 0x00C8F1 03:A8E1: 6A        .byte $6A   ; 
- D 1 - I - 0x00C8F2 03:A8E2: 3E        .byte $3E   ; 
- D 1 - I - 0x00C8F3 03:A8E3: 56        .byte $56   ; 
- D 1 - I - 0x00C8F4 03:A8E4: 2F        .byte $2F   ; 
- D 1 - I - 0x00C8F5 03:A8E5: FF        .byte $FF   ; 



_off018_00_01_A8E6_0A:
- D 1 - I - 0x00C8F6 03:A8E6: 18        .byte $18   ; 
- D 1 - I - 0x00C8F7 03:A8E7: 42        .byte $42   ; 
- D 1 - I - 0x00C8F8 03:A8E8: 58        .byte $58   ; 
- D 1 - I - 0x00C8F9 03:A8E9: 07        .byte $07   ; 
- D 1 - I - 0x00C8FA 03:A8EA: FF        .byte $FF   ; 



_off018_00_01_A8EB_0B:
- D 1 - I - 0x00C8FB 03:A8EB: 54        .byte $54   ; 
- D 1 - I - 0x00C8FC 03:A8EC: 52        .byte $52   ; 
- D 1 - I - 0x00C8FD 03:A8ED: B4        .byte $B4   ; 
- D 1 - I - 0x00C8FE 03:A8EE: 45        .byte $45   ; 
- D 1 - I - 0x00C8FF 03:A8EF: 77        .byte $77   ; 
- D 1 - I - 0x00C900 03:A8F0: 7C        .byte $7C   ; 
- D 1 - I - 0x00C901 03:A8F1: A1        .byte $A1   ; 
- D 1 - I - 0x00C902 03:A8F2: 04        .byte $04   ; 
- D 1 - I - 0x00C903 03:A8F3: C5        .byte $C5   ; 
- D 1 - I - 0x00C904 03:A8F4: A4        .byte $A4   ; 
- D 1 - I - 0x00C905 03:A8F5: B4        .byte $B4   ; 
- D 1 - I - 0x00C906 03:A8F6: 36        .byte $36   ; 
- D 1 - I - 0x00C907 03:A8F7: FF        .byte $FF   ; 



_off018_00_01_A8F8_0C:
- D 1 - I - 0x00C908 03:A8F8: 03        .byte $03   ; 
- D 1 - I - 0x00C909 03:A8F9: D6        .byte $D6   ; 
- D 1 - I - 0x00C90A 03:A8FA: 5B        .byte $5B   ; 
- D 1 - I - 0x00C90B 03:A8FB: 15        .byte $15   ; 
- D 1 - I - 0x00C90C 03:A8FC: 30        .byte $30   ; 
- D 1 - I - 0x00C90D 03:A8FD: D6        .byte $D6   ; 
- D 1 - I - 0x00C90E 03:A8FE: 5B        .byte $5B   ; 
- D 1 - I - 0x00C90F 03:A8FF: 14        .byte $14   ; 
- D 1 - I - 0x00C910 03:A900: 57        .byte $57   ; 
- D 1 - I - 0x00C911 03:A901: D6        .byte $D6   ; 
- D 1 - I - 0x00C912 03:A902: 5B        .byte $5B   ; 
- D 1 - I - 0x00C913 03:A903: 13        .byte $13   ; 
- D 1 - I - 0x00C914 03:A904: FF        .byte $FF   ; 



_off018_00_01_A905_14:
- D 1 - I - 0x00C915 03:A905: 3F        .byte $3F   ; 
- D 1 - I - 0x00C916 03:A906: 1F        .byte $1F   ; 
- D 1 - I - 0x00C917 03:A907: 5B        .byte $5B   ; 
- D 1 - I - 0x00C918 03:A908: 11        .byte $11   ; 
- D 1 - I - 0x00C919 03:A909: FF        .byte $FF   ; 



_off018_00_01_A90A_15:
- - - - - - 0x00C91A 03:A90A: FF        .byte $FF   ; 



_off018_00_01_A90B_0D:
- D 1 - I - 0x00C91B 03:A90B: 3B        .byte $3B   ; 
- D 1 - I - 0x00C91C 03:A90C: A7        .byte $A7   ; 
- D 1 - I - 0x00C91D 03:A90D: 5C        .byte $5C   ; 
- D 1 - I - 0x00C91E 03:A90E: 17        .byte $17   ; 
- D 1 - I - 0x00C91F 03:A90F: 6A        .byte $6A   ; 
- D 1 - I - 0x00C920 03:A910: D8        .byte $D8   ; 
- D 1 - I - 0x00C921 03:A911: 5D        .byte $5D   ; 
- D 1 - I - 0x00C922 03:A912: 14        .byte $14   ; 
- D 1 - I - 0x00C923 03:A913: 9A        .byte $9A   ; 
- D 1 - I - 0x00C924 03:A914: AB        .byte $AB   ; 
- D 1 - I - 0x00C925 03:A915: 61        .byte $61   ; 
- D 1 - I - 0x00C926 03:A916: 16        .byte $16   ; 
- D 1 - I - 0x00C927 03:A917: AB        .byte $AB   ; 
- D 1 - I - 0x00C928 03:A918: D8        .byte $D8   ; 
- D 1 - I - 0x00C929 03:A919: 5E        .byte $5E   ; 
- D 1 - I - 0x00C92A 03:A91A: 12        .byte $12   ; 
- D 1 - I - 0x00C92B 03:A91B: FF        .byte $FF   ; 



_off018_00_01_A91C_0E:
- D 1 - I - 0x00C92C 03:A91C: 2B        .byte $2B   ; 
- D 1 - I - 0x00C92D 03:A91D: 16        .byte $16   ; 
- D 1 - I - 0x00C92E 03:A91E: 1F        .byte $1F   ; 
- D 1 - I - 0x00C92F 03:A91F: 03        .byte $03   ; 
- D 1 - I - 0x00C930 03:A920: 2B        .byte $2B   ; 
- D 1 - I - 0x00C931 03:A921: 6D        .byte $6D   ; 
- D 1 - I - 0x00C932 03:A922: 1F        .byte $1F   ; 
- D 1 - I - 0x00C933 03:A923: 05        .byte $05   ; 
- D 1 - I - 0x00C934 03:A924: 55        .byte $55   ; 
- D 1 - I - 0x00C935 03:A925: A2        .byte $A2   ; 
- D 1 - I - 0x00C936 03:A926: 5E        .byte $5E   ; 
- D 1 - I - 0x00C937 03:A927: 36        .byte $36   ; 
- D 1 - I - 0x00C938 03:A928: 56        .byte $56   ; 
- D 1 - I - 0x00C939 03:A929: 5B        .byte $5B   ; 
- D 1 - I - 0x00C93A 03:A92A: 5C        .byte $5C   ; 
- D 1 - I - 0x00C93B 03:A92B: 01        .byte $01   ; 
- D 1 - I - 0x00C93C 03:A92C: FF        .byte $FF   ; 



_off018_00_01_A92D_0F:
- D 1 - I - 0x00C93D 03:A92D: 2B        .byte $2B   ; 
- D 1 - I - 0x00C93E 03:A92E: 3A        .byte $3A   ; 
- - - - - - 0x00C93F 03:A92F: 5C        .byte $5C   ; 
- - - - - - 0x00C940 03:A930: 11        .byte $11   ; 
- D 1 - I - 0x00C941 03:A931: 5B        .byte $5B   ; 
- D 1 - I - 0x00C942 03:A932: 5C        .byte $5C   ; 
- D 1 - I - 0x00C943 03:A933: 1F        .byte $1F   ; 
- D 1 - I - 0x00C944 03:A934: 07        .byte $07   ; 
- D 1 - I - 0x00C945 03:A935: 2B        .byte $2B   ; 
- D 1 - I - 0x00C946 03:A936: 9B        .byte $9B   ; 
- D 1 - I - 0x00C947 03:A937: 5C        .byte $5C   ; 
- D 1 - I - 0x00C948 03:A938: 02        .byte $02   ; 
- D 1 - I - 0x00C949 03:A939: 5B        .byte $5B   ; 
- D 1 - I - 0x00C94A 03:A93A: F7        .byte $F7   ; 
- D 1 - I - 0x00C94B 03:A93B: 1F        .byte $1F   ; 
- D 1 - I - 0x00C94C 03:A93C: 06        .byte $06   ; 
- D 1 - I - 0x00C94D 03:A93D: 9F        .byte $9F   ; 
- D 1 - I - 0x00C94E 03:A93E: E8        .byte $E8   ; 
- D 1 - I - 0x00C94F 03:A93F: 1F        .byte $1F   ; 
- D 1 - I - 0x00C950 03:A940: 05        .byte $05   ; 
- D 1 - I - 0x00C951 03:A941: 9F        .byte $9F   ; 
- D 1 - I - 0x00C952 03:A942: 4C        .byte $4C   ; 
- D 1 - I - 0x00C953 03:A943: 1F        .byte $1F   ; 
- D 1 - I - 0x00C954 03:A944: 00        .byte $00   ; 
- D 1 - I - 0x00C955 03:A945: FF        .byte $FF   ; 



_off018_00_01_A946_10:
- D 1 - I - 0x00C956 03:A946: D5        .byte $D5   ; 
- D 1 - I - 0x00C957 03:A947: 1E        .byte $1E   ; 
- D 1 - I - 0x00C958 03:A948: 61        .byte $61   ; 
- D 1 - I - 0x00C959 03:A949: 03        .byte $03   ; 
- D 1 - I - 0x00C95A 03:A94A: 25        .byte $25   ; 
- D 1 - I - 0x00C95B 03:A94B: 26        .byte $26   ; 
- D 1 - I - 0x00C95C 03:A94C: 5C        .byte $5C   ; 
- D 1 - I - 0x00C95D 03:A94D: 04        .byte $04   ; 
- D 1 - I - 0x00C95E 03:A94E: 95        .byte $95   ; 
- D 1 - I - 0x00C95F 03:A94F: 60        .byte $60   ; 
- D 1 - I - 0x00C960 03:A950: 61        .byte $61   ; 
- D 1 - I - 0x00C961 03:A951: 12        .byte $12   ; 
- D 1 - I - 0x00C962 03:A952: 4A        .byte $4A   ; 
- D 1 - I - 0x00C963 03:A953: 87        .byte $87   ; 
- D 1 - I - 0x00C964 03:A954: 5C        .byte $5C   ; 
- D 1 - I - 0x00C965 03:A955: 11        .byte $11   ; 
- D 1 - I - 0x00C966 03:A956: 4A        .byte $4A   ; 
- D 1 - I - 0x00C967 03:A957: D4        .byte $D4   ; 
- D 1 - I - 0x00C968 03:A958: 5C        .byte $5C   ; 
- D 1 - I - 0x00C969 03:A959: 10        .byte $10   ; 
- D 1 - I - 0x00C96A 03:A95A: FF        .byte $FF   ; 



_off018_00_01_A95B_11:
- D 1 - I - 0x00C96B 03:A95B: 5D        .byte $5D   ; 
- D 1 - I - 0x00C96C 03:A95C: 4E        .byte $4E   ; 
- D 1 - I - 0x00C96D 03:A95D: 0F        .byte $0F   ; 
- D 1 - I - 0x00C96E 03:A95E: 00        .byte $00   ; 
- D 1 - I - 0x00C96F 03:A95F: FF        .byte $FF   ; 



_off018_00_01_A960_12:
- D 1 - I - 0x00C970 03:A960: 4E        .byte $4E   ; 
- D 1 - I - 0x00C971 03:A961: 94        .byte $94   ; 
- D 1 - I - 0x00C972 03:A962: 0A        .byte $0A   ; 
- D 1 - I - 0x00C973 03:A963: 02        .byte $02   ; 
- D 1 - I - 0x00C974 03:A964: FF        .byte $FF   ; 



_off018_00_01_A965_13:
- D 1 - I - 0x00C975 03:A965: BB        .byte $BB   ; 
- D 1 - I - 0x00C976 03:A966: 40        .byte $40   ; 
- D 1 - I - 0x00C977 03:A967: 0A        .byte $0A   ; 
- D 1 - I - 0x00C978 03:A968: 01        .byte $01   ; 
- D 1 - I - 0x00C979 03:A969: 48        .byte $48   ; 
- D 1 - I - 0x00C97A 03:A96A: 9C        .byte $9C   ; 
- D 1 - I - 0x00C97B 03:A96B: 0A        .byte $0A   ; 
- D 1 - I - 0x00C97C 03:A96C: 00        .byte $00   ; 
- D 1 - I - 0x00C97D 03:A96D: FF        .byte $FF   ; 



_off015_A96E_02_stage_3:
- - - - - - 0x00C97E 03:A96E: 00        .byte $00   ; 
- - - - - - 0x00C97F 03:A96F: 00        .byte $00   ; 
- D 1 - I - 0x00C980 03:A970: 00        .byte $00   ; 
- - - - - - 0x00C981 03:A971: 00        .byte $00   ; 
- - - - - - 0x00C982 03:A972: 00        .byte $00   ; 
- - - - - - 0x00C983 03:A973: 00        .byte $00   ; 
- D 1 - I - 0x00C984 03:A974: 01        .byte $01   ; 
- D 1 - I - 0x00C985 03:A975: 00        .byte $00   ; 
- D 1 - I - 0x00C986 03:A976: 00        .byte $00   ; 
- D 1 - I - 0x00C987 03:A977: 00        .byte $00   ; 
- - - - - - 0x00C988 03:A978: 00        .byte $00   ; 
- D 1 - I - 0x00C989 03:A979: 00        .byte $00   ; 
- D 1 - I - 0x00C98A 03:A97A: 03        .byte $03   ; 
- D 1 - I - 0x00C98B 03:A97B: 07        .byte $07   ; 
- D 1 - I - 0x00C98C 03:A97C: 11        .byte $11   ; 
- - - - - - 0x00C98D 03:A97D: 00        .byte $00   ; 
- D 1 - I - 0x00C98E 03:A97E: 02        .byte $02   ; 
- D 1 - I - 0x00C98F 03:A97F: 04        .byte $04   ; 
- D 1 - I - 0x00C990 03:A980: 08        .byte $08   ; 
- D 1 - I - 0x00C991 03:A981: 0C        .byte $0C   ; 
- - - - - - 0x00C992 03:A982: 00        .byte $00   ; 
- D 1 - I - 0x00C993 03:A983: 10        .byte $10   ; 
- D 1 - I - 0x00C994 03:A984: 05        .byte $05   ; 
- D 1 - I - 0x00C995 03:A985: 09        .byte $09   ; 
- D 1 - I - 0x00C996 03:A986: 0D        .byte $0D   ; 
- - - - - - 0x00C997 03:A987: 00        .byte $00   ; 
- - - - - - 0x00C998 03:A988: 12        .byte $12   ; 
- D 1 - I - 0x00C999 03:A989: 06        .byte $06   ; 
- D 1 - I - 0x00C99A 03:A98A: 0A        .byte $0A   ; 
- D 1 - I - 0x00C99B 03:A98B: 0E        .byte $0E   ; 
- - - - - - 0x00C99C 03:A98C: 00        .byte $00   ; 
- - - - - - 0x00C99D 03:A98D: 00        .byte $00   ; 
- D 1 - I - 0x00C99E 03:A98E: 00        .byte $00   ; 
- D 1 - I - 0x00C99F 03:A98F: 0B        .byte $0B   ; 
- D 1 - I - 0x00C9A0 03:A990: 0F        .byte $0F   ; 



_off016_A991_02_stage_3:
- D 1 - I - 0x00C9A1 03:A991: BB A9     .word _off018_02_A9BB_00
- D 1 - I - 0x00C9A3 03:A993: B7 A9     .word _off018_02_A9B7_01
- D 1 - I - 0x00C9A5 03:A995: BC A9     .word _off018_02_A9BC_02
- D 1 - I - 0x00C9A7 03:A997: C3 A9     .word _off018_02_A9C3_03
- D 1 - I - 0x00C9A9 03:A999: C4 A9     .word _off018_02_A9C4_04
- D 1 - I - 0x00C9AB 03:A99B: CD A9     .word _off018_02_A9CD_05
- D 1 - I - 0x00C9AD 03:A99D: DA A9     .word _off018_02_A9DA_06
- D 1 - I - 0x00C9AF 03:A99F: E7 A9     .word _off018_02_A9E7_07
- D 1 - I - 0x00C9B1 03:A9A1: F0 A9     .word _off018_02_A9F0_08
- D 1 - I - 0x00C9B3 03:A9A3: F9 A9     .word _off018_02_A9F9_09
- D 1 - I - 0x00C9B5 03:A9A5: FA A9     .word _off018_02_A9FA_0A
- D 1 - I - 0x00C9B7 03:A9A7: 03 AA     .word _off018_02_AA03_0B
- D 1 - I - 0x00C9B9 03:A9A9: 19 AA     .word _off018_02_AA19_0C
- D 1 - I - 0x00C9BB 03:A9AB: 2E AA     .word _off018_02_AA2E_0D
- D 1 - I - 0x00C9BD 03:A9AD: 3B AA     .word _off018_02_AA3B_0E
- D 1 - I - 0x00C9BF 03:A9AF: 4C AA     .word _off018_02_AA4C_0F
- D 1 - I - 0x00C9C1 03:A9B1: C1 A9     .word _off018_02_A9C1_10
- D 1 - I - 0x00C9C3 03:A9B3: 10 AA     .word _off018_02_AA10_11
- - - - - - 0x00C9C5 03:A9B5: C2 A9     .word _off018_02_A9C2_12



_off018_02_A9B7_01:
- D 1 - I - 0x00C9C7 03:A9B7: 00        .byte $00   ; 
- D 1 - I - 0x00C9C8 03:A9B8: A9        .byte $A9   ; 
- D 1 - I - 0x00C9C9 03:A9B9: 10        .byte $10   ; 
- D 1 - I - 0x00C9CA 03:A9BA: 00        .byte $00   ; 



_off018_02_A9BB_00:
- D 1 - I - 0x00C9CB 03:A9BB: FF        .byte $FF   ; 



_off018_02_A9BC_02:
- D 1 - I - 0x00C9CC 03:A9BC: F0        .byte $F0   ; 
- D 1 - I - 0x00C9CD 03:A9BD: 64        .byte $64   ; 
- D 1 - I - 0x00C9CE 03:A9BE: 4B        .byte $4B   ; 
- D 1 - I - 0x00C9CF 03:A9BF: 03        .byte $03   ; 
- D 1 - I - 0x00C9D0 03:A9C0: FF        .byte $FF   ; 



_off018_02_A9C1_10:
- D 1 - I - 0x00C9D1 03:A9C1: FF        .byte $FF   ; 



_off018_02_A9C2_12:
- - - - - - 0x00C9D2 03:A9C2: FF        .byte $FF   ; 



_off018_02_A9C3_03:
- D 1 - I - 0x00C9D3 03:A9C3: FF        .byte $FF   ; 



_off018_02_A9C4_04:
- D 1 - I - 0x00C9D4 03:A9C4: 68        .byte $68   ; 
- D 1 - I - 0x00C9D5 03:A9C5: 2D        .byte $2D   ; 
- D 1 - I - 0x00C9D6 03:A9C6: 9E        .byte $9E   ; 
- D 1 - I - 0x00C9D7 03:A9C7: 09        .byte $09   ; 
- D 1 - I - 0x00C9D8 03:A9C8: 55        .byte $55   ; 
- D 1 - I - 0x00C9D9 03:A9C9: FE        .byte $FE   ; 
- D 1 - I - 0x00C9DA 03:A9CA: 9E        .byte $9E   ; 
- D 1 - I - 0x00C9DB 03:A9CB: 01        .byte $01   ; 
- D 1 - I - 0x00C9DC 03:A9CC: FF        .byte $FF   ; 



_off018_02_A9CD_05:
- D 1 - I - 0x00C9DD 03:A9CD: C9        .byte $C9   ; 
- D 1 - I - 0x00C9DE 03:A9CE: E7        .byte $E7   ; 
- D 1 - I - 0x00C9DF 03:A9CF: 49        .byte $49   ; 
- D 1 - I - 0x00C9E0 03:A9D0: 03        .byte $03   ; 
- D 1 - I - 0x00C9E1 03:A9D1: E4        .byte $E4   ; 
- D 1 - I - 0x00C9E2 03:A9D2: EB        .byte $EB   ; 
- D 1 - I - 0x00C9E3 03:A9D3: 49        .byte $49   ; 
- D 1 - I - 0x00C9E4 03:A9D4: 22        .byte $22   ; 
- D 1 - I - 0x00C9E5 03:A9D5: AC        .byte $AC   ; 
- D 1 - I - 0x00C9E6 03:A9D6: F6        .byte $F6   ; 
- D 1 - I - 0x00C9E7 03:A9D7: 49        .byte $49   ; 
- D 1 - I - 0x00C9E8 03:A9D8: 04        .byte $04   ; 
- D 1 - I - 0x00C9E9 03:A9D9: FF        .byte $FF   ; 



_off018_02_A9DA_06:
- D 1 - I - 0x00C9EA 03:A9DA: 4C        .byte $4C   ; 
- D 1 - I - 0x00C9EB 03:A9DB: 71        .byte $71   ; 
- D 1 - I - 0x00C9EC 03:A9DC: AA        .byte $AA   ; 
- D 1 - I - 0x00C9ED 03:A9DD: 10        .byte $10   ; 
- D 1 - I - 0x00C9EE 03:A9DE: CC        .byte $CC   ; 
- D 1 - I - 0x00C9EF 03:A9DF: 85        .byte $85   ; 
- D 1 - I - 0x00C9F0 03:A9E0: 48        .byte $48   ; 
- D 1 - I - 0x00C9F1 03:A9E1: 21        .byte $21   ; 
- D 1 - I - 0x00C9F2 03:A9E2: 84        .byte $84   ; 
- D 1 - I - 0x00C9F3 03:A9E3: 85        .byte $85   ; 
- D 1 - I - 0x00C9F4 03:A9E4: 48        .byte $48   ; 
- D 1 - I - 0x00C9F5 03:A9E5: 22        .byte $22   ; 
- D 1 - I - 0x00C9F6 03:A9E6: FF        .byte $FF   ; 



_off018_02_A9E7_07:
- D 1 - I - 0x00C9F7 03:A9E7: 0A        .byte $0A   ; 
- D 1 - I - 0x00C9F8 03:A9E8: 7C        .byte $7C   ; 
- D 1 - I - 0x00C9F9 03:A9E9: B7        .byte $B7   ; 
- D 1 - I - 0x00C9FA 03:A9EA: 02        .byte $02   ; 
- D 1 - I - 0x00C9FB 03:A9EB: F9        .byte $F9   ; 
- D 1 - I - 0x00C9FC 03:A9EC: 83        .byte $83   ; 
- D 1 - I - 0x00C9FD 03:A9ED: 3B        .byte $3B   ; 
- D 1 - I - 0x00C9FE 03:A9EE: 03        .byte $03   ; 
- D 1 - I - 0x00C9FF 03:A9EF: FF        .byte $FF   ; 



_off018_02_A9F0_08:
- D 1 - I - 0x00CA00 03:A9F0: ED        .byte $ED   ; 
- D 1 - I - 0x00CA01 03:A9F1: 86        .byte $86   ; 
- D 1 - I - 0x00CA02 03:A9F2: AB        .byte $AB   ; 
- D 1 - I - 0x00CA03 03:A9F3: 06        .byte $06   ; 
- D 1 - I - 0x00CA04 03:A9F4: C7        .byte $C7   ; 
- D 1 - I - 0x00CA05 03:A9F5: B2        .byte $B2   ; 
- D 1 - I - 0x00CA06 03:A9F6: 99        .byte $99   ; 
- D 1 - I - 0x00CA07 03:A9F7: 40        .byte $40   ; 
- D 1 - I - 0x00CA08 03:A9F8: FF        .byte $FF   ; 



_off018_02_A9F9_09:
- D 1 - I - 0x00CA09 03:A9F9: FF        .byte $FF   ; 



_off018_02_A9FA_0A:
- D 1 - I - 0x00CA0A 03:A9FA: 70        .byte $70   ; 
- D 1 - I - 0x00CA0B 03:A9FB: 1B        .byte $1B   ; 
- D 1 - I - 0x00CA0C 03:A9FC: 49        .byte $49   ; 
- D 1 - I - 0x00CA0D 03:A9FD: 05        .byte $05   ; 
- D 1 - I - 0x00CA0E 03:A9FE: 8D        .byte $8D   ; 
- D 1 - I - 0x00CA0F 03:A9FF: 66        .byte $66   ; 
- D 1 - I - 0x00CA10 03:AA00: AB        .byte $AB   ; 
- D 1 - I - 0x00CA11 03:AA01: 06        .byte $06   ; 
- D 1 - I - 0x00CA12 03:AA02: FF        .byte $FF   ; 



_off018_02_AA03_0B:
- D 1 - I - 0x00CA13 03:AA03: 4A        .byte $4A   ; 
- D 1 - I - 0x00CA14 03:AA04: 37        .byte $37   ; 
- D 1 - I - 0x00CA15 03:AA05: 48        .byte $48   ; 
- D 1 - I - 0x00CA16 03:AA06: 20        .byte $20   ; 
- D 1 - I - 0x00CA17 03:AA07: A8        .byte $A8   ; 
- D 1 - I - 0x00CA18 03:AA08: 47        .byte $47   ; 
- D 1 - I - 0x00CA19 03:AA09: 48        .byte $48   ; 
- D 1 - I - 0x00CA1A 03:AA0A: 03        .byte $03   ; 
- D 1 - I - 0x00CA1B 03:AA0B: C9        .byte $C9   ; 
- D 1 - I - 0x00CA1C 03:AA0C: 37        .byte $37   ; 
- D 1 - I - 0x00CA1D 03:AA0D: 48        .byte $48   ; 
- D 1 - I - 0x00CA1E 03:AA0E: 22        .byte $22   ; 
- D 1 - I - 0x00CA1F 03:AA0F: FF        .byte $FF   ; 



_off018_02_AA10_11:
- D 1 - I - 0x00CA20 03:AA10: A4        .byte $A4   ; 
- D 1 - I - 0x00CA21 03:AA11: 34        .byte $34   ; 
- D 1 - I - 0x00CA22 03:AA12: 51        .byte $51   ; 
- D 1 - I - 0x00CA23 03:AA13: 35        .byte $35   ; 
- D 1 - I - 0x00CA24 03:AA14: B1        .byte $B1   ; 
- D 1 - I - 0x00CA25 03:AA15: BB        .byte $BB   ; 
- D 1 - I - 0x00CA26 03:AA16: 50        .byte $50   ; 
- D 1 - I - 0x00CA27 03:AA17: 36        .byte $36   ; 
- D 1 - I - 0x00CA28 03:AA18: FF        .byte $FF   ; 



_off018_02_AA19_0C:
- D 1 - I - 0x00CA29 03:AA19: 02        .byte $02   ; 
- D 1 - I - 0x00CA2A 03:AA1A: 4D        .byte $4D   ; 
- D 1 - I - 0x00CA2B 03:AA1B: 51        .byte $51   ; 
- D 1 - I - 0x00CA2C 03:AA1C: 35        .byte $35   ; 
- D 1 - I - 0x00CA2D 03:AA1D: 21        .byte $21   ; 
- D 1 - I - 0x00CA2E 03:AA1E: 4D        .byte $4D   ; 
- D 1 - I - 0x00CA2F 03:AA1F: 51        .byte $51   ; 
- D 1 - I - 0x00CA30 03:AA20: 30        .byte $30   ; 
- D 1 - I - 0x00CA31 03:AA21: 45        .byte $45   ; 
- D 1 - I - 0x00CA32 03:AA22: 24        .byte $24   ; 
- D 1 - I - 0x00CA33 03:AA23: 51        .byte $51   ; 
- D 1 - I - 0x00CA34 03:AA24: 34        .byte $34   ; 
- D 1 - I - 0x00CA35 03:AA25: 92        .byte $92   ; 
- D 1 - I - 0x00CA36 03:AA26: 07        .byte $07   ; 
- D 1 - I - 0x00CA37 03:AA27: 51        .byte $51   ; 
- D 1 - I - 0x00CA38 03:AA28: 30        .byte $30   ; 
- D 1 - I - 0x00CA39 03:AA29: AE        .byte $AE   ; 
- D 1 - I - 0x00CA3A 03:AA2A: 86        .byte $86   ; 
- D 1 - I - 0x00CA3B 03:AA2B: AB        .byte $AB   ; 
- D 1 - I - 0x00CA3C 03:AA2C: 07        .byte $07   ; 
- D 1 - I - 0x00CA3D 03:AA2D: FF        .byte $FF   ; 



_off018_02_AA2E_0D:
- D 1 - I - 0x00CA3E 03:AA2E: 2E        .byte $2E   ; 
- D 1 - I - 0x00CA3F 03:AA2F: 06        .byte $06   ; 
- D 1 - I - 0x00CA40 03:AA30: 25        .byte $25   ; 
- D 1 - I - 0x00CA41 03:AA31: 04        .byte $04   ; 
- D 1 - I - 0x00CA42 03:AA32: AA        .byte $AA   ; 
- D 1 - I - 0x00CA43 03:AA33: 57        .byte $57   ; 
- D 1 - I - 0x00CA44 03:AA34: 51        .byte $51   ; 
- D 1 - I - 0x00CA45 03:AA35: 30        .byte $30   ; 
- D 1 - I - 0x00CA46 03:AA36: C8        .byte $C8   ; 
- D 1 - I - 0x00CA47 03:AA37: 39        .byte $39   ; 
- D 1 - I - 0x00CA48 03:AA38: 51        .byte $51   ; 
- D 1 - I - 0x00CA49 03:AA39: 31        .byte $31   ; 
- D 1 - I - 0x00CA4A 03:AA3A: FF        .byte $FF   ; 



_off018_02_AA3B_0E:
- D 1 - I - 0x00CA4B 03:AA3B: 03        .byte $03   ; 
- D 1 - I - 0x00CA4C 03:AA3C: 18        .byte $18   ; 
- D 1 - I - 0x00CA4D 03:AA3D: A7        .byte $A7   ; 
- D 1 - I - 0x00CA4E 03:AA3E: 0C        .byte $0C   ; 
- D 1 - I - 0x00CA4F 03:AA3F: 84        .byte $84   ; 
- D 1 - I - 0x00CA50 03:AA40: 68        .byte $68   ; 
- D 1 - I - 0x00CA51 03:AA41: 49        .byte $49   ; 
- D 1 - I - 0x00CA52 03:AA42: 00        .byte $00   ; 
- D 1 - I - 0x00CA53 03:AA43: 82        .byte $82   ; 
- D 1 - I - 0x00CA54 03:AA44: 0A        .byte $0A   ; 
- D 1 - I - 0x00CA55 03:AA45: 49        .byte $49   ; 
- D 1 - I - 0x00CA56 03:AA46: 03        .byte $03   ; 
- D 1 - I - 0x00CA57 03:AA47: 03        .byte $03   ; 
- D 1 - I - 0x00CA58 03:AA48: 7E        .byte $7E   ; 
- D 1 - I - 0x00CA59 03:AA49: A7        .byte $A7   ; 
- D 1 - I - 0x00CA5A 03:AA4A: 09        .byte $09   ; 
- D 1 - I - 0x00CA5B 03:AA4B: FF        .byte $FF   ; 



_off018_02_AA4C_0F:
- D 1 - I - 0x00CA5C 03:AA4C: 0B        .byte $0B   ; 
- D 1 - I - 0x00CA5D 03:AA4D: 02        .byte $02   ; 
- D 1 - I - 0x00CA5E 03:AA4E: 24        .byte $24   ; 
- D 1 - I - 0x00CA5F 03:AA4F: 02        .byte $02   ; 
- D 1 - I - 0x00CA60 03:AA50: 53        .byte $53   ; 
- D 1 - I - 0x00CA61 03:AA51: 2F        .byte $2F   ; 
- D 1 - I - 0x00CA62 03:AA52: AA        .byte $AA   ; 
- D 1 - I - 0x00CA63 03:AA53: 07        .byte $07   ; 
- D 1 - I - 0x00CA64 03:AA54: 04        .byte $04   ; 
- D 1 - I - 0x00CA65 03:AA55: 47        .byte $47   ; 
- D 1 - I - 0x00CA66 03:AA56: 48        .byte $48   ; 
- D 1 - I - 0x00CA67 03:AA57: 03        .byte $03   ; 
- D 1 - I - 0x00CA68 03:AA58: 2E        .byte $2E   ; 
- D 1 - I - 0x00CA69 03:AA59: 47        .byte $47   ; 
- D 1 - I - 0x00CA6A 03:AA5A: 49        .byte $49   ; 
- D 1 - I - 0x00CA6B 03:AA5B: 03        .byte $03   ; 
- D 1 - I - 0x00CA6C 03:AA5C: 6A        .byte $6A   ; 
- D 1 - I - 0x00CA6D 03:AA5D: 37        .byte $37   ; 
- D 1 - I - 0x00CA6E 03:AA5E: 49        .byte $49   ; 
- D 1 - I - 0x00CA6F 03:AA5F: 25        .byte $25   ; 
- D 1 - I - 0x00CA70 03:AA60: FF        .byte $FF   ; 



_off015_AA61_03_stage_4:
- D 1 - I - 0x00CA71 03:AA61: 00        .byte $00   ; 
- D 1 - I - 0x00CA72 03:AA62: 00        .byte $00   ; 
- - - - - - 0x00CA73 03:AA63: 00        .byte $00   ; 
- - - - - - 0x00CA74 03:AA64: 00        .byte $00   ; 
- - - - - - 0x00CA75 03:AA65: 00        .byte $00   ; 
- - - - - - 0x00CA76 03:AA66: 00        .byte $00   ; 
- - - - - - 0x00CA77 03:AA67: 00        .byte $00   ; 
- - - - - - 0x00CA78 03:AA68: 00        .byte $00   ; 
- - - - - - 0x00CA79 03:AA69: 00        .byte $00   ; 
- - - - - - 0x00CA7A 03:AA6A: 00        .byte $00   ; 
- - - - - - 0x00CA7B 03:AA6B: 00        .byte $00   ; 
- - - - - - 0x00CA7C 03:AA6C: 00        .byte $00   ; 
- - - - - - 0x00CA7D 03:AA6D: 00        .byte $00   ; 
- - - - - - 0x00CA7E 03:AA6E: 00        .byte $00   ; 
- - - - - - 0x00CA7F 03:AA6F: 00        .byte $00   ; 
- - - - - - 0x00CA80 03:AA70: 00        .byte $00   ; 
- - - - - - 0x00CA81 03:AA71: 00        .byte $00   ; 
- - - - - - 0x00CA82 03:AA72: 00        .byte $00   ; 
- - - - - - 0x00CA83 03:AA73: 00        .byte $00   ; 
- - - - - - 0x00CA84 03:AA74: 00        .byte $00   ; 
- - - - - - 0x00CA85 03:AA75: 00        .byte $00   ; 
- - - - - - 0x00CA86 03:AA76: 00        .byte $00   ; 
- - - - - - 0x00CA87 03:AA77: 00        .byte $00   ; 
- - - - - - 0x00CA88 03:AA78: 00        .byte $00   ; 
- - - - - - 0x00CA89 03:AA79: 00        .byte $00   ; 
- - - - - - 0x00CA8A 03:AA7A: 00        .byte $00   ; 
- - - - - - 0x00CA8B 03:AA7B: 00        .byte $00   ; 
- - - - - - 0x00CA8C 03:AA7C: 00        .byte $00   ; 
- - - - - - 0x00CA8D 03:AA7D: 00        .byte $00   ; 
- - - - - - 0x00CA8E 03:AA7E: 00        .byte $00   ; 
- - - - - - 0x00CA8F 03:AA7F: 00        .byte $00   ; 
- - - - - - 0x00CA90 03:AA80: 00        .byte $00   ; 
- - - - - - 0x00CA91 03:AA81: 00        .byte $00   ; 
- - - - - - 0x00CA92 03:AA82: 00        .byte $00   ; 
- - - - - - 0x00CA93 03:AA83: 00        .byte $00   ; 
- - - - - - 0x00CA94 03:AA84: 00        .byte $00   ; 
- - - - - - 0x00CA95 03:AA85: 00        .byte $00   ; 
- - - - - - 0x00CA96 03:AA86: 00        .byte $00   ; 
- - - - - - 0x00CA97 03:AA87: 00        .byte $00   ; 
- - - - - - 0x00CA98 03:AA88: 00        .byte $00   ; 
- - - - - - 0x00CA99 03:AA89: 00        .byte $00   ; 
- - - - - - 0x00CA9A 03:AA8A: 00        .byte $00   ; 
- D 1 - I - 0x00CA9B 03:AA8B: 00        .byte $00   ; 
- D 1 - I - 0x00CA9C 03:AA8C: 21        .byte $21   ; 
- D 1 - I - 0x00CA9D 03:AA8D: 27        .byte $27   ; 
- D 1 - I - 0x00CA9E 03:AA8E: 2A        .byte $2A   ; 
- D 1 - I - 0x00CA9F 03:AA8F: 0C        .byte $0C   ; 
- - - - - - 0x00CAA0 03:AA90: 00        .byte $00   ; 
- - - - - - 0x00CAA1 03:AA91: 00        .byte $00   ; 
- - - - - - 0x00CAA2 03:AA92: 00        .byte $00   ; 
- - - - - - 0x00CAA3 03:AA93: 00        .byte $00   ; 
- - - - - - 0x00CAA4 03:AA94: 00        .byte $00   ; 
- - - - - - 0x00CAA5 03:AA95: 00        .byte $00   ; 
- - - - - - 0x00CAA6 03:AA96: 00        .byte $00   ; 
- D 1 - I - 0x00CAA7 03:AA97: 00        .byte $00   ; 
- D 1 - I - 0x00CAA8 03:AA98: 22        .byte $22   ; 
- D 1 - I - 0x00CAA9 03:AA99: 28        .byte $28   ; 
- D 1 - I - 0x00CAAA 03:AA9A: 2B        .byte $2B   ; 
- D 1 - I - 0x00CAAB 03:AA9B: 00        .byte $00   ; 
- - - - - - 0x00CAAC 03:AA9C: 00        .byte $00   ; 
- - - - - - 0x00CAAD 03:AA9D: 00        .byte $00   ; 
- - - - - - 0x00CAAE 03:AA9E: 00        .byte $00   ; 
- - - - - - 0x00CAAF 03:AA9F: 00        .byte $00   ; 
- - - - - - 0x00CAB0 03:AAA0: 00        .byte $00   ; 
- - - - - - 0x00CAB1 03:AAA1: 00        .byte $00   ; 
- - - - - - 0x00CAB2 03:AAA2: 00        .byte $00   ; 
- - - - - - 0x00CAB3 03:AAA3: 00        .byte $00   ; 
- - - - - - 0x00CAB4 03:AAA4: 00        .byte $00   ; 
- D 1 - I - 0x00CAB5 03:AAA5: 29        .byte $29   ; 
- D 1 - I - 0x00CAB6 03:AAA6: 2C        .byte $2C   ; 
- - - - - - 0x00CAB7 03:AAA7: 00        .byte $00   ; 
- - - - - - 0x00CAB8 03:AAA8: 00        .byte $00   ; 
- - - - - - 0x00CAB9 03:AAA9: 00        .byte $00   ; 
- - - - - - 0x00CABA 03:AAAA: 00        .byte $00   ; 
- - - - - - 0x00CABB 03:AAAB: 00        .byte $00   ; 
- - - - - - 0x00CABC 03:AAAC: 00        .byte $00   ; 
- - - - - - 0x00CABD 03:AAAD: 00        .byte $00   ; 
- - - - - - 0x00CABE 03:AAAE: 00        .byte $00   ; 
- - - - - - 0x00CABF 03:AAAF: 00        .byte $00   ; 
- - - - - - 0x00CAC0 03:AAB0: 00        .byte $00   ; 
- D 1 - I - 0x00CAC1 03:AAB1: 08        .byte $08   ; 
- D 1 - I - 0x00CAC2 03:AAB2: 2D        .byte $2D   ; 
- - - - - - 0x00CAC3 03:AAB3: 00        .byte $00   ; 
- - - - - - 0x00CAC4 03:AAB4: 00        .byte $00   ; 
- - - - - - 0x00CAC5 03:AAB5: 00        .byte $00   ; 
- - - - - - 0x00CAC6 03:AAB6: 00        .byte $00   ; 
- - - - - - 0x00CAC7 03:AAB7: 00        .byte $00   ; 
- - - - - - 0x00CAC8 03:AAB8: 00        .byte $00   ; 
- - - - - - 0x00CAC9 03:AAB9: 00        .byte $00   ; 
- - - - - - 0x00CACA 03:AABA: 00        .byte $00   ; 
- - - - - - 0x00CACB 03:AABB: 00        .byte $00   ; 
- - - - - - 0x00CACC 03:AABC: 00        .byte $00   ; 
- D 1 - I - 0x00CACD 03:AABD: 00        .byte $00   ; 
- D 1 - I - 0x00CACE 03:AABE: 2E        .byte $2E   ; 
- - - - - - 0x00CACF 03:AABF: 00        .byte $00   ; 
- - - - - - 0x00CAD0 03:AAC0: 00        .byte $00   ; 
- - - - - - 0x00CAD1 03:AAC1: 00        .byte $00   ; 
- - - - - - 0x00CAD2 03:AAC2: 00        .byte $00   ; 
- - - - - - 0x00CAD3 03:AAC3: 00        .byte $00   ; 
- - - - - - 0x00CAD4 03:AAC4: 00        .byte $00   ; 
- - - - - - 0x00CAD5 03:AAC5: 00        .byte $00   ; 
- - - - - - 0x00CAD6 03:AAC6: 00        .byte $00   ; 
- D 1 - I - 0x00CAD7 03:AAC7: 00        .byte $00   ; 
- D 1 - I - 0x00CAD8 03:AAC8: 00        .byte $00   ; 
- D 1 - I - 0x00CAD9 03:AAC9: 00        .byte $00   ; 
- - - - - - 0x00CADA 03:AACA: 00        .byte $00   ; 
- - - - - - 0x00CADB 03:AACB: 00        .byte $00   ; 
- - - - - - 0x00CADC 03:AACC: 00        .byte $00   ; 
- - - - - - 0x00CADD 03:AACD: 00        .byte $00   ; 
- - - - - - 0x00CADE 03:AACE: 00        .byte $00   ; 
- - - - - - 0x00CADF 03:AACF: 00        .byte $00   ; 
- - - - - - 0x00CAE0 03:AAD0: 00        .byte $00   ; 
- D 1 - I - 0x00CAE1 03:AAD1: 00        .byte $00   ; 
- D 1 - I - 0x00CAE2 03:AAD2: 00        .byte $00   ; 
- D 1 - I - 0x00CAE3 03:AAD3: 00        .byte $00   ; 
- D 1 - I - 0x00CAE4 03:AAD4: 23        .byte $23   ; 
- - - - - - 0x00CAE5 03:AAD5: 00        .byte $00   ; 
- - - - - - 0x00CAE6 03:AAD6: 00        .byte $00   ; 
- - - - - - 0x00CAE7 03:AAD7: 00        .byte $00   ; 
- - - - - - 0x00CAE8 03:AAD8: 00        .byte $00   ; 
- - - - - - 0x00CAE9 03:AAD9: 00        .byte $00   ; 
- - - - - - 0x00CAEA 03:AADA: 00        .byte $00   ; 
- - - - - - 0x00CAEB 03:AADB: 00        .byte $00   ; 
- - - - - - 0x00CAEC 03:AADC: 00        .byte $00   ; 
- D 1 - I - 0x00CAED 03:AADD: 00        .byte $00   ; 
- D 1 - I - 0x00CAEE 03:AADE: 16        .byte $16   ; 
- D 1 - I - 0x00CAEF 03:AADF: 00        .byte $00   ; 
- D 1 - I - 0x00CAF0 03:AAE0: 00        .byte $00   ; 
- - - - - - 0x00CAF1 03:AAE1: 00        .byte $00   ; 
- - - - - - 0x00CAF2 03:AAE2: 00        .byte $00   ; 
- - - - - - 0x00CAF3 03:AAE3: 00        .byte $00   ; 
- - - - - - 0x00CAF4 03:AAE4: 00        .byte $00   ; 
- - - - - - 0x00CAF5 03:AAE5: 00        .byte $00   ; 
- - - - - - 0x00CAF6 03:AAE6: 00        .byte $00   ; 
- - - - - - 0x00CAF7 03:AAE7: 00        .byte $00   ; 
- - - - - - 0x00CAF8 03:AAE8: 00        .byte $00   ; 
- D 1 - I - 0x00CAF9 03:AAE9: 00        .byte $00   ; 
- D 1 - I - 0x00CAFA 03:AAEA: 02        .byte $02   ; 
- D 1 - I - 0x00CAFB 03:AAEB: 00        .byte $00   ; 
- D 1 - I - 0x00CAFC 03:AAEC: 00        .byte $00   ; 
- - - - - - 0x00CAFD 03:AAED: 00        .byte $00   ; 
- - - - - - 0x00CAFE 03:AAEE: 00        .byte $00   ; 
- - - - - - 0x00CAFF 03:AAEF: 00        .byte $00   ; 
- - - - - - 0x00CB00 03:AAF0: 00        .byte $00   ; 
- - - - - - 0x00CB01 03:AAF1: 00        .byte $00   ; 
- - - - - - 0x00CB02 03:AAF2: 00        .byte $00   ; 
- - - - - - 0x00CB03 03:AAF3: 00        .byte $00   ; 
- - - - - - 0x00CB04 03:AAF4: 00        .byte $00   ; 
- D 1 - I - 0x00CB05 03:AAF5: 00        .byte $00   ; 
- D 1 - I - 0x00CB06 03:AAF6: 00        .byte $00   ; 
- D 1 - I - 0x00CB07 03:AAF7: 00        .byte $00   ; 
- D 1 - I - 0x00CB08 03:AAF8: 24        .byte $24   ; 
- - - - - - 0x00CB09 03:AAF9: 00        .byte $00   ; 
- - - - - - 0x00CB0A 03:AAFA: 00        .byte $00   ; 
- - - - - - 0x00CB0B 03:AAFB: 00        .byte $00   ; 
- - - - - - 0x00CB0C 03:AAFC: 00        .byte $00   ; 
- - - - - - 0x00CB0D 03:AAFD: 00        .byte $00   ; 
- - - - - - 0x00CB0E 03:AAFE: 00        .byte $00   ; 
- - - - - - 0x00CB0F 03:AAFF: 00        .byte $00   ; 
- - - - - - 0x00CB10 03:AB00: 00        .byte $00   ; 
- D 1 - I - 0x00CB11 03:AB01: 00        .byte $00   ; 
- D 1 - I - 0x00CB12 03:AB02: 00        .byte $00   ; 
- D 1 - I - 0x00CB13 03:AB03: 00        .byte $00   ; 
- D 1 - I - 0x00CB14 03:AB04: 25        .byte $25   ; 
- - - - - - 0x00CB15 03:AB05: 00        .byte $00   ; 
- - - - - - 0x00CB16 03:AB06: 00        .byte $00   ; 
- - - - - - 0x00CB17 03:AB07: 00        .byte $00   ; 
- - - - - - 0x00CB18 03:AB08: 00        .byte $00   ; 
- - - - - - 0x00CB19 03:AB09: 00        .byte $00   ; 
- - - - - - 0x00CB1A 03:AB0A: 00        .byte $00   ; 
- - - - - - 0x00CB1B 03:AB0B: 00        .byte $00   ; 
- - - - - - 0x00CB1C 03:AB0C: 00        .byte $00   ; 
- D 1 - I - 0x00CB1D 03:AB0D: 00        .byte $00   ; 
- D 1 - I - 0x00CB1E 03:AB0E: 00        .byte $00   ; 
- D 1 - I - 0x00CB1F 03:AB0F: 00        .byte $00   ; 
- D 1 - I - 0x00CB20 03:AB10: 00        .byte $00   ; 
- - - - - - 0x00CB21 03:AB11: 00        .byte $00   ; 
- - - - - - 0x00CB22 03:AB12: 00        .byte $00   ; 
- - - - - - 0x00CB23 03:AB13: 00        .byte $00   ; 
- - - - - - 0x00CB24 03:AB14: 00        .byte $00   ; 
- - - - - - 0x00CB25 03:AB15: 00        .byte $00   ; 
- - - - - - 0x00CB26 03:AB16: 00        .byte $00   ; 
- - - - - - 0x00CB27 03:AB17: 00        .byte $00   ; 
- - - - - - 0x00CB28 03:AB18: 00        .byte $00   ; 
- D 1 - I - 0x00CB29 03:AB19: 00        .byte $00   ; 
- D 1 - I - 0x00CB2A 03:AB1A: 18        .byte $18   ; 
- - - - - - 0x00CB2B 03:AB1B: 00        .byte $00   ; 
- - - - - - 0x00CB2C 03:AB1C: 00        .byte $00   ; 
- - - - - - 0x00CB2D 03:AB1D: 00        .byte $00   ; 
- - - - - - 0x00CB2E 03:AB1E: 00        .byte $00   ; 
- - - - - - 0x00CB2F 03:AB1F: 00        .byte $00   ; 
- - - - - - 0x00CB30 03:AB20: 00        .byte $00   ; 
- - - - - - 0x00CB31 03:AB21: 00        .byte $00   ; 
- - - - - - 0x00CB32 03:AB22: 00        .byte $00   ; 
- - - - - - 0x00CB33 03:AB23: 00        .byte $00   ; 
- - - - - - 0x00CB34 03:AB24: 00        .byte $00   ; 
- D 1 - I - 0x00CB35 03:AB25: 11        .byte $11   ; 
- D 1 - I - 0x00CB36 03:AB26: 19        .byte $19   ; 
- - - - - - 0x00CB37 03:AB27: 00        .byte $00   ; 
- - - - - - 0x00CB38 03:AB28: 00        .byte $00   ; 
- - - - - - 0x00CB39 03:AB29: 00        .byte $00   ; 
- - - - - - 0x00CB3A 03:AB2A: 00        .byte $00   ; 
- - - - - - 0x00CB3B 03:AB2B: 00        .byte $00   ; 
- - - - - - 0x00CB3C 03:AB2C: 00        .byte $00   ; 
- - - - - - 0x00CB3D 03:AB2D: 00        .byte $00   ; 
- - - - - - 0x00CB3E 03:AB2E: 00        .byte $00   ; 
- D 1 - I - 0x00CB3F 03:AB2F: 00        .byte $00   ; 
- D 1 - I - 0x00CB40 03:AB30: 00        .byte $00   ; 
- D 1 - I - 0x00CB41 03:AB31: 12        .byte $12   ; 
- D 1 - I - 0x00CB42 03:AB32: 1A        .byte $1A   ; 
- D 1 - I - 0x00CB43 03:AB33: 00        .byte $00   ; 
- D 1 - I - 0x00CB44 03:AB34: 00        .byte $00   ; 
- - - - - - 0x00CB45 03:AB35: 00        .byte $00   ; 
- - - - - - 0x00CB46 03:AB36: 00        .byte $00   ; 
- - - - - - 0x00CB47 03:AB37: 00        .byte $00   ; 
- - - - - - 0x00CB48 03:AB38: 00        .byte $00   ; 
- - - - - - 0x00CB49 03:AB39: 00        .byte $00   ; 
- - - - - - 0x00CB4A 03:AB3A: 00        .byte $00   ; 
- D 1 - I - 0x00CB4B 03:AB3B: 00        .byte $00   ; 
- D 1 - I - 0x00CB4C 03:AB3C: 09        .byte $09   ; 
- D 1 - I - 0x00CB4D 03:AB3D: 13        .byte $13   ; 
- D 1 - I - 0x00CB4E 03:AB3E: 1B        .byte $1B   ; 
- D 1 - I - 0x00CB4F 03:AB3F: 20        .byte $20   ; 
- D 1 - I - 0x00CB50 03:AB40: 26        .byte $26   ; 
- - - - - - 0x00CB51 03:AB41: 00        .byte $00   ; 
- - - - - - 0x00CB52 03:AB42: 00        .byte $00   ; 
- - - - - - 0x00CB53 03:AB43: 00        .byte $00   ; 
- - - - - - 0x00CB54 03:AB44: 00        .byte $00   ; 
- - - - - - 0x00CB55 03:AB45: 00        .byte $00   ; 
- - - - - - 0x00CB56 03:AB46: 00        .byte $00   ; 
- - - - - - 0x00CB57 03:AB47: 00        .byte $00   ; 
- - - - - - 0x00CB58 03:AB48: 00        .byte $00   ; 
- D 1 - I - 0x00CB59 03:AB49: 17        .byte $17   ; 
- D 1 - I - 0x00CB5A 03:AB4A: 1C        .byte $1C   ; 
- - - - - - 0x00CB5B 03:AB4B: 00        .byte $00   ; 
- - - - - - 0x00CB5C 03:AB4C: 00        .byte $00   ; 
- - - - - - 0x00CB5D 03:AB4D: 00        .byte $00   ; 
- - - - - - 0x00CB5E 03:AB4E: 00        .byte $00   ; 
- - - - - - 0x00CB5F 03:AB4F: 00        .byte $00   ; 
- - - - - - 0x00CB60 03:AB50: 00        .byte $00   ; 
- - - - - - 0x00CB61 03:AB51: 00        .byte $00   ; 
- - - - - - 0x00CB62 03:AB52: 00        .byte $00   ; 
- - - - - - 0x00CB63 03:AB53: 00        .byte $00   ; 
- - - - - - 0x00CB64 03:AB54: 00        .byte $00   ; 
- D 1 - I - 0x00CB65 03:AB55: 14        .byte $14   ; 
- D 1 - I - 0x00CB66 03:AB56: 1D        .byte $1D   ; 
- - - - - - 0x00CB67 03:AB57: 00        .byte $00   ; 
- - - - - - 0x00CB68 03:AB58: 00        .byte $00   ; 
- - - - - - 0x00CB69 03:AB59: 00        .byte $00   ; 
- - - - - - 0x00CB6A 03:AB5A: 00        .byte $00   ; 
- - - - - - 0x00CB6B 03:AB5B: 00        .byte $00   ; 
- - - - - - 0x00CB6C 03:AB5C: 00        .byte $00   ; 
- - - - - - 0x00CB6D 03:AB5D: 00        .byte $00   ; 
- - - - - - 0x00CB6E 03:AB5E: 00        .byte $00   ; 
- - - - - - 0x00CB6F 03:AB5F: 00        .byte $00   ; 
- - - - - - 0x00CB70 03:AB60: 00        .byte $00   ; 
- - - - - - 0x00CB71 03:AB61: 00        .byte $00   ; 
- - - - - - 0x00CB72 03:AB62: 1E        .byte $1E   ; 
- - - - - - 0x00CB73 03:AB63: 00        .byte $00   ; 
- - - - - - 0x00CB74 03:AB64: 00        .byte $00   ; 
- - - - - - 0x00CB75 03:AB65: 00        .byte $00   ; 
- - - - - - 0x00CB76 03:AB66: 00        .byte $00   ; 
- - - - - - 0x00CB77 03:AB67: 00        .byte $00   ; 
- - - - - - 0x00CB78 03:AB68: 00        .byte $00   ; 
- - - - - - 0x00CB79 03:AB69: 00        .byte $00   ; 
- - - - - - 0x00CB7A 03:AB6A: 00        .byte $00   ; 
- D 1 - I - 0x00CB7B 03:AB6B: 00        .byte $00   ; 
- D 1 - I - 0x00CB7C 03:AB6C: 00        .byte $00   ; 
- D 1 - I - 0x00CB7D 03:AB6D: 00        .byte $00   ; 
- D 1 - I - 0x00CB7E 03:AB6E: 00        .byte $00   ; 
- - - - - - 0x00CB7F 03:AB6F: 00        .byte $00   ; 
- - - - - - 0x00CB80 03:AB70: 00        .byte $00   ; 
- - - - - - 0x00CB81 03:AB71: 00        .byte $00   ; 
- - - - - - 0x00CB82 03:AB72: 00        .byte $00   ; 
- - - - - - 0x00CB83 03:AB73: 00        .byte $00   ; 
- - - - - - 0x00CB84 03:AB74: 00        .byte $00   ; 
- - - - - - 0x00CB85 03:AB75: 00        .byte $00   ; 
- - - - - - 0x00CB86 03:AB76: 00        .byte $00   ; 
- D 1 - I - 0x00CB87 03:AB77: 00        .byte $00   ; 
- D 1 - I - 0x00CB88 03:AB78: 0A        .byte $0A   ; 
- - - - - - 0x00CB89 03:AB79: 00        .byte $00   ; 
- - - - - - 0x00CB8A 03:AB7A: 00        .byte $00   ; 
- - - - - - 0x00CB8B 03:AB7B: 00        .byte $00   ; 
- - - - - - 0x00CB8C 03:AB7C: 00        .byte $00   ; 
- - - - - - 0x00CB8D 03:AB7D: 00        .byte $00   ; 
- - - - - - 0x00CB8E 03:AB7E: 00        .byte $00   ; 
- - - - - - 0x00CB8F 03:AB7F: 00        .byte $00   ; 
- - - - - - 0x00CB90 03:AB80: 00        .byte $00   ; 
- - - - - - 0x00CB91 03:AB81: 00        .byte $00   ; 
- - - - - - 0x00CB92 03:AB82: 00        .byte $00   ; 
- D 1 - I - 0x00CB93 03:AB83: 03        .byte $03   ; 
- D 1 - I - 0x00CB94 03:AB84: 0B        .byte $0B   ; 
- - - - - - 0x00CB95 03:AB85: 00        .byte $00   ; 
- - - - - - 0x00CB96 03:AB86: 00        .byte $00   ; 
- - - - - - 0x00CB97 03:AB87: 00        .byte $00   ; 
- - - - - - 0x00CB98 03:AB88: 00        .byte $00   ; 
- - - - - - 0x00CB99 03:AB89: 00        .byte $00   ; 
- - - - - - 0x00CB9A 03:AB8A: 00        .byte $00   ; 
- - - - - - 0x00CB9B 03:AB8B: 00        .byte $00   ; 
- - - - - - 0x00CB9C 03:AB8C: 00        .byte $00   ; 
- - - - - - 0x00CB9D 03:AB8D: 00        .byte $00   ; 
- - - - - - 0x00CB9E 03:AB8E: 00        .byte $00   ; 
- D 1 - I - 0x00CB9F 03:AB8F: 04        .byte $04   ; 
- D 1 - I - 0x00CBA0 03:AB90: 00        .byte $00   ; 
- D 1 - I - 0x00CBA1 03:AB91: 00        .byte $00   ; 
- D 1 - I - 0x00CBA2 03:AB92: 00        .byte $00   ; 
- - - - - - 0x00CBA3 03:AB93: 00        .byte $00   ; 
- - - - - - 0x00CBA4 03:AB94: 00        .byte $00   ; 
- - - - - - 0x00CBA5 03:AB95: 00        .byte $00   ; 
- - - - - - 0x00CBA6 03:AB96: 00        .byte $00   ; 
- - - - - - 0x00CBA7 03:AB97: 00        .byte $00   ; 
- - - - - - 0x00CBA8 03:AB98: 00        .byte $00   ; 
- D 1 - I - 0x00CBA9 03:AB99: 1F        .byte $1F   ; 
- D 1 - I - 0x00CBAA 03:AB9A: 01        .byte $01   ; 
- D 1 - I - 0x00CBAB 03:AB9B: 05        .byte $05   ; 
- D 1 - I - 0x00CBAC 03:AB9C: 0D        .byte $0D   ; 
- D 1 - I - 0x00CBAD 03:AB9D: 15        .byte $15   ; 
- D 1 - I - 0x00CBAE 03:AB9E: 00        .byte $00   ; 
- - - - - - 0x00CBAF 03:AB9F: 00        .byte $00   ; 
- - - - - - 0x00CBB0 03:ABA0: 00        .byte $00   ; 
- - - - - - 0x00CBB1 03:ABA1: 00        .byte $00   ; 
- - - - - - 0x00CBB2 03:ABA2: 00        .byte $00   ; 
- - - - - - 0x00CBB3 03:ABA3: 00        .byte $00   ; 
- - - - - - 0x00CBB4 03:ABA4: 00        .byte $00   ; 
- D 1 - I - 0x00CBB5 03:ABA5: 00        .byte $00   ; 
- D 1 - I - 0x00CBB6 03:ABA6: 00        .byte $00   ; 
- D 1 - I - 0x00CBB7 03:ABA7: 06        .byte $06   ; 
- D 1 - I - 0x00CBB8 03:ABA8: 0E        .byte $0E   ; 
- D 1 - I - 0x00CBB9 03:ABA9: 00        .byte $00   ; 
- D 1 - I - 0x00CBBA 03:ABAA: 00        .byte $00   ; 
- - - - - - 0x00CBBB 03:ABAB: 00        .byte $00   ; 
- - - - - - 0x00CBBC 03:ABAC: 00        .byte $00   ; 
- - - - - - 0x00CBBD 03:ABAD: 00        .byte $00   ; 
- - - - - - 0x00CBBE 03:ABAE: 00        .byte $00   ; 
- - - - - - 0x00CBBF 03:ABAF: 00        .byte $00   ; 
- - - - - - 0x00CBC0 03:ABB0: 00        .byte $00   ; 
- - - - - - 0x00CBC1 03:ABB1: 00        .byte $00   ; 
- - - - - - 0x00CBC2 03:ABB2: 00        .byte $00   ; 
- D 1 - I - 0x00CBC3 03:ABB3: 07        .byte $07   ; 
- D 1 - I - 0x00CBC4 03:ABB4: 0F        .byte $0F   ; 
- - - - - - 0x00CBC5 03:ABB5: 00        .byte $00   ; 
- - - - - - 0x00CBC6 03:ABB6: 00        .byte $00   ; 
- - - - - - 0x00CBC7 03:ABB7: 00        .byte $00   ; 
- - - - - - 0x00CBC8 03:ABB8: 00        .byte $00   ; 
- - - - - - 0x00CBC9 03:ABB9: 00        .byte $00   ; 
- - - - - - 0x00CBCA 03:ABBA: 00        .byte $00   ; 
- - - - - - 0x00CBCB 03:ABBB: 00        .byte $00   ; 
- - - - - - 0x00CBCC 03:ABBC: 00        .byte $00   ; 
- - - - - - 0x00CBCD 03:ABBD: 00        .byte $00   ; 
- - - - - - 0x00CBCE 03:ABBE: 00        .byte $00   ; 
- D 1 - I - 0x00CBCF 03:ABBF: 00        .byte $00   ; 
- D 1 - I - 0x00CBD0 03:ABC0: 10        .byte $10   ; 
- - - - - - 0x00CBD1 03:ABC1: 00        .byte $00   ; 
- - - - - - 0x00CBD2 03:ABC2: 00        .byte $00   ; 
- - - - - - 0x00CBD3 03:ABC3: 00        .byte $00   ; 
- - - - - - 0x00CBD4 03:ABC4: 00        .byte $00   ; 
- - - - - - 0x00CBD5 03:ABC5: 00        .byte $00   ; 
- - - - - - 0x00CBD6 03:ABC6: 00        .byte $00   ; 
- - - - - - 0x00CBD7 03:ABC7: 00        .byte $00   ; 
- - - - - - 0x00CBD8 03:ABC8: 00        .byte $00   ; 
- - - - - - 0x00CBD9 03:ABC9: 00        .byte $00   ; 
- - - - - - 0x00CBDA 03:ABCA: 00        .byte $00   ; 
- D 1 - I - 0x00CBDB 03:ABCB: 00        .byte $00   ; 
- D 1 - I - 0x00CBDC 03:ABCC: 00        .byte $00   ; 
- - - - - - 0x00CBDD 03:ABCD: 00        .byte $00   ; 
- - - - - - 0x00CBDE 03:ABCE: 00        .byte $00   ; 
- - - - - - 0x00CBDF 03:ABCF: 00        .byte $00   ; 
- - - - - - 0x00CBE0 03:ABD0: 00        .byte $00   ; 
- - - - - - 0x00CBE1 03:ABD1: 00        .byte $00   ; 
- - - - - - 0x00CBE2 03:ABD2: 00        .byte $00   ; 
- - - - - - 0x00CBE3 03:ABD3: 00        .byte $00   ; 
- - - - - - 0x00CBE4 03:ABD4: 00        .byte $00   ; 
- - - - - - 0x00CBE5 03:ABD5: 00        .byte $00   ; 
- - - - - - 0x00CBE6 03:ABD6: 00        .byte $00   ; 
- - - - - - 0x00CBE7 03:ABD7: 00        .byte $00   ; 
- - - - - - 0x00CBE8 03:ABD8: 00        .byte $00   ; 
- - - - - - 0x00CBE9 03:ABD9: 00        .byte $00   ; 
- - - - - - 0x00CBEA 03:ABDA: 00        .byte $00   ; 
- - - - - - 0x00CBEB 03:ABDB: 00        .byte $00   ; 
- - - - - - 0x00CBEC 03:ABDC: 00        .byte $00   ; 
- - - - - - 0x00CBED 03:ABDD: 00        .byte $00   ; 
- - - - - - 0x00CBEE 03:ABDE: 00        .byte $00   ; 
- - - - - - 0x00CBEF 03:ABDF: 00        .byte $00   ; 
- - - - - - 0x00CBF0 03:ABE0: 00        .byte $00   ; 
- - - - - - 0x00CBF1 03:ABE1: 00        .byte $00   ; 
- - - - - - 0x00CBF2 03:ABE2: 00        .byte $00   ; 
- - - - - - 0x00CBF3 03:ABE3: 00        .byte $00   ; 
- - - - - - 0x00CBF4 03:ABE4: 00        .byte $00   ; 
- - - - - - 0x00CBF5 03:ABE5: 00        .byte $00   ; 
- - - - - - 0x00CBF6 03:ABE6: 00        .byte $00   ; 
- - - - - - 0x00CBF7 03:ABE7: 00        .byte $00   ; 
- - - - - - 0x00CBF8 03:ABE8: 00        .byte $00   ; 
- - - - - - 0x00CBF9 03:ABE9: 00        .byte $00   ; 
- - - - - - 0x00CBFA 03:ABEA: 00        .byte $00   ; 
- - - - - - 0x00CBFB 03:ABEB: 00        .byte $00   ; 
- - - - - - 0x00CBFC 03:ABEC: 00        .byte $00   ; 



_off016_ABED_03_stage_4:
- D 1 - I - 0x00CBFD 03:ABED: 57 AC     .word _off018_03_AC57_00
- D 1 - I - 0x00CBFF 03:ABEF: 58 AC     .word _off018_03_AC58_01
- D 1 - I - 0x00CC01 03:ABF1: 1C AD     .word _off018_03_AD1C_02
- D 1 - I - 0x00CC03 03:ABF3: 5D AC     .word _off018_03_AC5D_03
- D 1 - I - 0x00CC05 03:ABF5: 62 AC     .word _off018_03_AC62_04
- D 1 - I - 0x00CC07 03:ABF7: 67 AC     .word _off018_03_AC67_05
- D 1 - I - 0x00CC09 03:ABF9: 6C AC     .word _off018_03_AC6C_06
- D 1 - I - 0x00CC0B 03:ABFB: 7D AC     .word _off018_03_AC7D_07
- D 1 - I - 0x00CC0D 03:ABFD: CE AD     .word _off018_03_ADCE_08
- D 1 - I - 0x00CC0F 03:ABFF: 82 AC     .word _off018_03_AC82_09
- D 1 - I - 0x00CC11 03:AC01: 8B AC     .word _off018_03_AC8B_0A
- D 1 - I - 0x00CC13 03:AC03: 98 AC     .word _off018_03_AC98_0B
- D 1 - I - 0x00CC15 03:AC05: 10 AE     .word _off018_03_AE10_0C
- D 1 - I - 0x00CC17 03:AC07: 9D AC     .word _off018_03_AC9D_0D
- D 1 - I - 0x00CC19 03:AC09: AA AC     .word _off018_03_ACAA_0E
- D 1 - I - 0x00CC1B 03:AC0B: B3 AC     .word _off018_03_ACB3_0F
- D 1 - I - 0x00CC1D 03:AC0D: B8 AC     .word _off018_03_ACB8_10
- D 1 - I - 0x00CC1F 03:AC0F: C9 AC     .word _off018_03_ACC9_11
- D 1 - I - 0x00CC21 03:AC11: D2 AC     .word _off018_03_ACD2_12
- D 1 - I - 0x00CC23 03:AC13: DF AC     .word _off018_03_ACDF_13
- D 1 - I - 0x00CC25 03:AC15: 01 AD     .word _off018_03_AD01_14
- D 1 - I - 0x00CC27 03:AC17: 06 AD     .word _off018_03_AD06_15
- D 1 - I - 0x00CC29 03:AC19: 17 AD     .word _off018_03_AD17_16
- D 1 - I - 0x00CC2B 03:AC1B: FC AC     .word _off018_03_ACFC_17
- D 1 - I - 0x00CC2D 03:AC1D: 31 AD     .word _off018_03_AD31_18
- D 1 - I - 0x00CC2F 03:AC1F: 36 AD     .word _off018_03_AD36_19
- D 1 - I - 0x00CC31 03:AC21: 3B AD     .word _off018_03_AD3B_1A
- D 1 - I - 0x00CC33 03:AC23: 48 AD     .word _off018_03_AD48_1B
- D 1 - I - 0x00CC35 03:AC25: 61 AD     .word _off018_03_AD61_1C
- D 1 - I - 0x00CC37 03:AC27: 66 AD     .word _off018_03_AD66_1D
- - - - - - 0x00CC39 03:AC29: 6F AD     .word _off018_03_AD6F_1E
- D 1 - I - 0x00CC3B 03:AC2B: 4B AC     .word _off018_03_AC4B_1F
- D 1 - I - 0x00CC3D 03:AC2D: 78 AD     .word _off018_03_AD78_20
- D 1 - I - 0x00CC3F 03:AC2F: 81 AD     .word _off018_03_AD81_21
- D 1 - I - 0x00CC41 03:AC31: 8A AD     .word _off018_03_AD8A_22
- D 1 - I - 0x00CC43 03:AC33: 93 AD     .word _off018_03_AD93_23
- D 1 - I - 0x00CC45 03:AC35: A0 AD     .word _off018_03_ADA0_24
- D 1 - I - 0x00CC47 03:AC37: AD AD     .word _off018_03_ADAD_25
- D 1 - I - 0x00CC49 03:AC39: B6 AD     .word _off018_03_ADB6_26
- D 1 - I - 0x00CC4B 03:AC3B: BB AD     .word _off018_03_ADBB_27
- D 1 - I - 0x00CC4D 03:AC3D: C0 AD     .word _off018_03_ADC0_28
- D 1 - I - 0x00CC4F 03:AC3F: C9 AD     .word _off018_03_ADC9_29
- D 1 - I - 0x00CC51 03:AC41: D3 AD     .word _off018_03_ADD3_2A
- D 1 - I - 0x00CC53 03:AC43: D8 AD     .word _off018_03_ADD8_2B
- D 1 - I - 0x00CC55 03:AC45: F1 AD     .word _off018_03_ADF1_2C
- D 1 - I - 0x00CC57 03:AC47: F6 AD     .word _off018_03_ADF6_2D
- D 1 - I - 0x00CC59 03:AC49: 07 AE     .word _off018_03_AE07_2E



_off018_03_AC4B_1F:
- D 1 - I - 0x00CC5B 03:AC4B: B2        .byte $B2   ; 
- D 1 - I - 0x00CC5C 03:AC4C: 97        .byte $97   ; 
- D 1 - I - 0x00CC5D 03:AC4D: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC5E 03:AC4E: 21        .byte $21   ; 
- D 1 - I - 0x00CC5F 03:AC4F: B1        .byte $B1   ; 
- D 1 - I - 0x00CC60 03:AC50: C6        .byte $C6   ; 
- D 1 - I - 0x00CC61 03:AC51: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC62 03:AC52: 22        .byte $22   ; 
- D 1 - I - 0x00CC63 03:AC53: B0        .byte $B0   ; 
- D 1 - I - 0x00CC64 03:AC54: 72        .byte $72   ; 
- D 1 - I - 0x00CC65 03:AC55: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC66 03:AC56: 20        .byte $20   ; 



_off018_03_AC57_00:
- D 1 - I - 0x00CC67 03:AC57: FF        .byte $FF   ; 



_off018_03_AC58_01:
- D 1 - I - 0x00CC68 03:AC58: D6        .byte $D6   ; 
- D 1 - I - 0x00CC69 03:AC59: 69        .byte $69   ; 
- D 1 - I - 0x00CC6A 03:AC5A: 53        .byte $53   ; 
- D 1 - I - 0x00CC6B 03:AC5B: 01        .byte $01   ; 
- D 1 - I - 0x00CC6C 03:AC5C: FF        .byte $FF   ; 



_off018_03_AC5D_03:
- D 1 - I - 0x00CC6D 03:AC5D: C3        .byte $C3   ; 
- D 1 - I - 0x00CC6E 03:AC5E: EA        .byte $EA   ; 
- D 1 - I - 0x00CC6F 03:AC5F: 63        .byte $63   ; 
- D 1 - I - 0x00CC70 03:AC60: 02        .byte $02   ; 
- D 1 - I - 0x00CC71 03:AC61: FF        .byte $FF   ; 



_off018_03_AC62_04:
- D 1 - I - 0x00CC72 03:AC62: C5        .byte $C5   ; 
- D 1 - I - 0x00CC73 03:AC63: 5C        .byte $5C   ; 
- D 1 - I - 0x00CC74 03:AC64: 65        .byte $65   ; 
- D 1 - I - 0x00CC75 03:AC65: 11        .byte $11   ; 
- D 1 - I - 0x00CC76 03:AC66: FF        .byte $FF   ; 



_off018_03_AC67_05:
- D 1 - I - 0x00CC77 03:AC67: 05        .byte $05   ; 
- D 1 - I - 0x00CC78 03:AC68: 89        .byte $89   ; 
- D 1 - I - 0x00CC79 03:AC69: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC7A 03:AC6A: 32        .byte $32   ; 
- D 1 - I - 0x00CC7B 03:AC6B: FF        .byte $FF   ; 



_off018_03_AC6C_06:
- D 1 - I - 0x00CC7C 03:AC6C: 8E        .byte $8E   ; 
- D 1 - I - 0x00CC7D 03:AC6D: 15        .byte $15   ; 
- D 1 - I - 0x00CC7E 03:AC6E: 0C        .byte $0C   ; 
- D 1 - I - 0x00CC7F 03:AC6F: 07        .byte $07   ; 
- D 1 - I - 0x00CC80 03:AC70: D1        .byte $D1   ; 
- D 1 - I - 0x00CC81 03:AC71: 15        .byte $15   ; 
- D 1 - I - 0x00CC82 03:AC72: 0C        .byte $0C   ; 
- D 1 - I - 0x00CC83 03:AC73: 06        .byte $06   ; 
- D 1 - I - 0x00CC84 03:AC74: D8        .byte $D8   ; 
- D 1 - I - 0x00CC85 03:AC75: A2        .byte $A2   ; 
- D 1 - I - 0x00CC86 03:AC76: 59        .byte $59   ; 
- D 1 - I - 0x00CC87 03:AC77: 15        .byte $15   ; 
- D 1 - I - 0x00CC88 03:AC78: BF        .byte $BF   ; 
- D 1 - I - 0x00CC89 03:AC79: E2        .byte $E2   ; 
- D 1 - I - 0x00CC8A 03:AC7A: 59        .byte $59   ; 
- D 1 - I - 0x00CC8B 03:AC7B: 13        .byte $13   ; 
- D 1 - I - 0x00CC8C 03:AC7C: FF        .byte $FF   ; 



_off018_03_AC7D_07:
- D 1 - I - 0x00CC8D 03:AC7D: BF        .byte $BF   ; 
- D 1 - I - 0x00CC8E 03:AC7E: 0E        .byte $0E   ; 
- D 1 - I - 0x00CC8F 03:AC7F: 59        .byte $59   ; 
- D 1 - I - 0x00CC90 03:AC80: 11        .byte $11   ; 
- D 1 - I - 0x00CC91 03:AC81: FF        .byte $FF   ; 



_off018_03_AC82_09:
- D 1 - I - 0x00CC92 03:AC82: 4A        .byte $4A   ; 
- D 1 - I - 0x00CC93 03:AC83: 00        .byte $00   ; 
- D 1 - I - 0x00CC94 03:AC84: 3A        .byte $3A   ; 
- D 1 - I - 0x00CC95 03:AC85: 07        .byte $07   ; 
- D 1 - I - 0x00CC96 03:AC86: EB        .byte $EB   ; 
- D 1 - I - 0x00CC97 03:AC87: 21        .byte $21   ; 
- D 1 - I - 0x00CC98 03:AC88: 3A        .byte $3A   ; 
- D 1 - I - 0x00CC99 03:AC89: 06        .byte $06   ; 
- D 1 - I - 0x00CC9A 03:AC8A: FF        .byte $FF   ; 



_off018_03_AC8B_0A:
- D 1 - I - 0x00CC9B 03:AC8B: 5B        .byte $5B   ; 
- D 1 - I - 0x00CC9C 03:AC8C: 2C        .byte $2C   ; 
- D 1 - I - 0x00CC9D 03:AC8D: 60        .byte $60   ; 
- D 1 - I - 0x00CC9E 03:AC8E: 1A        .byte $1A   ; 
- D 1 - I - 0x00CC9F 03:AC8F: 65        .byte $65   ; 
- D 1 - I - 0x00CCA0 03:AC90: 36        .byte $36   ; 
- D 1 - I - 0x00CCA1 03:AC91: 60        .byte $60   ; 
- D 1 - I - 0x00CCA2 03:AC92: 19        .byte $19   ; 
- D 1 - I - 0x00CCA3 03:AC93: 81        .byte $81   ; 
- D 1 - I - 0x00CCA4 03:AC94: 46        .byte $46   ; 
- D 1 - I - 0x00CCA5 03:AC95: 60        .byte $60   ; 
- D 1 - I - 0x00CCA6 03:AC96: 18        .byte $18   ; 
- D 1 - I - 0x00CCA7 03:AC97: FF        .byte $FF   ; 



_off018_03_AC98_0B:
- D 1 - I - 0x00CCA8 03:AC98: 35        .byte $35   ; 
- D 1 - I - 0x00CCA9 03:AC99: 6E        .byte $6E   ; 
- D 1 - I - 0x00CCAA 03:AC9A: 63        .byte $63   ; 
- D 1 - I - 0x00CCAB 03:AC9B: 03        .byte $03   ; 
- D 1 - I - 0x00CCAC 03:AC9C: FF        .byte $FF   ; 



_off018_03_AC9D_0D:
- D 1 - I - 0x00CCAD 03:AC9D: 01        .byte $01   ; 
- D 1 - I - 0x00CCAE 03:AC9E: 69        .byte $69   ; 
- D 1 - I - 0x00CCAF 03:AC9F: 53        .byte $53   ; 
- D 1 - I - 0x00CCB0 03:ACA0: 2C        .byte $2C   ; 
- D 1 - I - 0x00CCB1 03:ACA1: 69        .byte $69   ; 
- D 1 - I - 0x00CCB2 03:ACA2: 88        .byte $88   ; 
- D 1 - I - 0x00CCB3 03:ACA3: 5A        .byte $5A   ; 
- D 1 - I - 0x00CCB4 03:ACA4: 13        .byte $13   ; 
- D 1 - I - 0x00CCB5 03:ACA5: C9        .byte $C9   ; 
- D 1 - I - 0x00CCB6 03:ACA6: 77        .byte $77   ; 
- D 1 - I - 0x00CCB7 03:ACA7: 52        .byte $52   ; 
- D 1 - I - 0x00CCB8 03:ACA8: 32        .byte $32   ; 
- D 1 - I - 0x00CCB9 03:ACA9: FF        .byte $FF   ; 



_off018_03_ACAA_0E:
- D 1 - I - 0x00CCBA 03:ACAA: 28        .byte $28   ; 
- D 1 - I - 0x00CCBB 03:ACAB: A2        .byte $A2   ; 
- D 1 - I - 0x00CCBC 03:ACAC: 59        .byte $59   ; 
- D 1 - I - 0x00CCBD 03:ACAD: 14        .byte $14   ; 
- D 1 - I - 0x00CCBE 03:ACAE: 44        .byte $44   ; 
- D 1 - I - 0x00CCBF 03:ACAF: E1        .byte $E1   ; 
- D 1 - I - 0x00CCC0 03:ACB0: 5A        .byte $5A   ; 
- D 1 - I - 0x00CCC1 03:ACB1: 02        .byte $02   ; 
- D 1 - I - 0x00CCC2 03:ACB2: FF        .byte $FF   ; 



_off018_03_ACB3_0F:
- D 1 - I - 0x00CCC3 03:ACB3: 37        .byte $37   ; 
- D 1 - I - 0x00CCC4 03:ACB4: 0C        .byte $0C   ; 
- D 1 - I - 0x00CCC5 03:ACB5: 5A        .byte $5A   ; 
- D 1 - I - 0x00CCC6 03:ACB6: 00        .byte $00   ; 
- D 1 - I - 0x00CCC7 03:ACB7: FF        .byte $FF   ; 



_off018_03_ACB8_10:
- D 1 - I - 0x00CCC8 03:ACB8: 00        .byte $00   ; 
- D 1 - I - 0x00CCC9 03:ACB9: 30        .byte $30   ; 
- D 1 - I - 0x00CCCA 03:ACBA: 63        .byte $63   ; 
- D 1 - I - 0x00CCCB 03:ACBB: 2A        .byte $2A   ; 
- D 1 - I - 0x00CCCC 03:ACBC: 38        .byte $38   ; 
- D 1 - I - 0x00CCCD 03:ACBD: 30        .byte $30   ; 
- D 1 - I - 0x00CCCE 03:ACBE: 63        .byte $63   ; 
- D 1 - I - 0x00CCCF 03:ACBF: 2B        .byte $2B   ; 
- D 1 - I - 0x00CCD0 03:ACC0: 32        .byte $32   ; 
- D 1 - I - 0x00CCD1 03:ACC1: 92        .byte $92   ; 
- D 1 - I - 0x00CCD2 03:ACC2: 62        .byte $62   ; 
- D 1 - I - 0x00CCD3 03:ACC3: 11        .byte $11   ; 
- D 1 - I - 0x00CCD4 03:ACC4: 6E        .byte $6E   ; 
- D 1 - I - 0x00CCD5 03:ACC5: AB        .byte $AB   ; 
- D 1 - I - 0x00CCD6 03:ACC6: 62        .byte $62   ; 
- D 1 - I - 0x00CCD7 03:ACC7: 10        .byte $10   ; 
- D 1 - I - 0x00CCD8 03:ACC8: FF        .byte $FF   ; 



_off018_03_ACC9_11:
- D 1 - I - 0x00CCD9 03:ACC9: C6        .byte $C6   ; 
- D 1 - I - 0x00CCDA 03:ACCA: 80        .byte $80   ; 
- D 1 - I - 0x00CCDB 03:ACCB: 62        .byte $62   ; 
- D 1 - I - 0x00CCDC 03:ACCC: 10        .byte $10   ; 
- D 1 - I - 0x00CCDD 03:ACCD: F0        .byte $F0   ; 
- D 1 - I - 0x00CCDE 03:ACCE: F0        .byte $F0   ; 
- D 1 - I - 0x00CCDF 03:ACCF: 17        .byte $17   ; 
- D 1 - I - 0x00CCE0 03:ACD0: 04        .byte $04   ; 
- D 1 - I - 0x00CCE1 03:ACD1: FF        .byte $FF   ; 



_off018_03_ACD2_12:
- D 1 - I - 0x00CCE2 03:ACD2: B0        .byte $B0   ; 
- D 1 - I - 0x00CCE3 03:ACD3: 10        .byte $10   ; 
- D 1 - I - 0x00CCE4 03:ACD4: 17        .byte $17   ; 
- D 1 - I - 0x00CCE5 03:ACD5: 02        .byte $02   ; 
- D 1 - I - 0x00CCE6 03:ACD6: B0        .byte $B0   ; 
- D 1 - I - 0x00CCE7 03:ACD7: 50        .byte $50   ; 
- D 1 - I - 0x00CCE8 03:ACD8: 17        .byte $17   ; 
- D 1 - I - 0x00CCE9 03:ACD9: 00        .byte $00   ; 
- D 1 - I - 0x00CCEA 03:ACDA: B3        .byte $B3   ; 
- D 1 - I - 0x00CCEB 03:ACDB: ED        .byte $ED   ; 
- D 1 - I - 0x00CCEC 03:ACDC: 65        .byte $65   ; 
- D 1 - I - 0x00CCED 03:ACDD: 25        .byte $25   ; 
- D 1 - I - 0x00CCEE 03:ACDE: FF        .byte $FF   ; 



_off018_03_ACDF_13:
- D 1 - I - 0x00CCEF 03:ACDF: D4        .byte $D4   ; 
- D 1 - I - 0x00CCF0 03:ACE0: 18        .byte $18   ; 
- D 1 - I - 0x00CCF1 03:ACE1: 65        .byte $65   ; 
- D 1 - I - 0x00CCF2 03:ACE2: 2C        .byte $2C   ; 
- D 1 - I - 0x00CCF3 03:ACE3: A4        .byte $A4   ; 
- D 1 - I - 0x00CCF4 03:ACE4: 21        .byte $21   ; 
- D 1 - I - 0x00CCF5 03:ACE5: 64        .byte $64   ; 
- D 1 - I - 0x00CCF6 03:ACE6: 03        .byte $03   ; 
- D 1 - I - 0x00CCF7 03:ACE7: 7D        .byte $7D   ; 
- D 1 - I - 0x00CCF8 03:ACE8: 30        .byte $30   ; 
- D 1 - I - 0x00CCF9 03:ACE9: 65        .byte $65   ; 
- D 1 - I - 0x00CCFA 03:ACEA: 02        .byte $02   ; 
- D 1 - I - 0x00CCFB 03:ACEB: 91        .byte $91   ; 
- D 1 - I - 0x00CCFC 03:ACEC: 59        .byte $59   ; 
- D 1 - I - 0x00CCFD 03:ACED: 64        .byte $64   ; 
- D 1 - I - 0x00CCFE 03:ACEE: 00        .byte $00   ; 
- D 1 - I - 0x00CCFF 03:ACEF: 79        .byte $79   ; 
- D 1 - I - 0x00CD00 03:ACF0: 59        .byte $59   ; 
- D 1 - I - 0x00CD01 03:ACF1: 65        .byte $65   ; 
- D 1 - I - 0x00CD02 03:ACF2: 19        .byte $19   ; 
- D 1 - I - 0x00CD03 03:ACF3: D9        .byte $D9   ; 
- D 1 - I - 0x00CD04 03:ACF4: DE        .byte $DE   ; 
- D 1 - I - 0x00CD05 03:ACF5: 62        .byte $62   ; 
- D 1 - I - 0x00CD06 03:ACF6: 24        .byte $24   ; 
- D 1 - I - 0x00CD07 03:ACF7: 8D        .byte $8D   ; 
- D 1 - I - 0x00CD08 03:ACF8: A5        .byte $A5   ; 
- D 1 - I - 0x00CD09 03:ACF9: 0B        .byte $0B   ; 
- D 1 - I - 0x00CD0A 03:ACFA: 06        .byte $06   ; 
- D 1 - I - 0x00CD0B 03:ACFB: FF        .byte $FF   ; 



_off018_03_ACFC_17:
- D 1 - I - 0x00CD0C 03:ACFC: C2        .byte $C2   ; 
- D 1 - I - 0x00CD0D 03:ACFD: A2        .byte $A2   ; 
- D 1 - I - 0x00CD0E 03:ACFE: 63        .byte $63   ; 
- D 1 - I - 0x00CD0F 03:ACFF: 03        .byte $03   ; 
- D 1 - I - 0x00CD10 03:AD00: FF        .byte $FF   ; 



_off018_03_AD01_14:
- D 1 - I - 0x00CD11 03:AD01: BC        .byte $BC   ; 
- D 1 - I - 0x00CD12 03:AD02: 1D        .byte $1D   ; 
- D 1 - I - 0x00CD13 03:AD03: 63        .byte $63   ; 
- D 1 - I - 0x00CD14 03:AD04: 01        .byte $01   ; 
- D 1 - I - 0x00CD15 03:AD05: FF        .byte $FF   ; 



_off018_03_AD06_15:
- D 1 - I - 0x00CD16 03:AD06: 29        .byte $29   ; 
- D 1 - I - 0x00CD17 03:AD07: C6        .byte $C6   ; 
- D 1 - I - 0x00CD18 03:AD08: 52        .byte $52   ; 
- D 1 - I - 0x00CD19 03:AD09: 21        .byte $21   ; 
- D 1 - I - 0x00CD1A 03:AD0A: 3C        .byte $3C   ; 
- D 1 - I - 0x00CD1B 03:AD0B: 7D        .byte $7D   ; 
- D 1 - I - 0x00CD1C 03:AD0C: 5A        .byte $5A   ; 
- D 1 - I - 0x00CD1D 03:AD0D: 05        .byte $05   ; 
- D 1 - I - 0x00CD1E 03:AD0E: 93        .byte $93   ; 
- D 1 - I - 0x00CD1F 03:AD0F: 69        .byte $69   ; 
- D 1 - I - 0x00CD20 03:AD10: 59        .byte $59   ; 
- D 1 - I - 0x00CD21 03:AD11: 36        .byte $36   ; 
- D 1 - I - 0x00CD22 03:AD12: C7        .byte $C7   ; 
- D 1 - I - 0x00CD23 03:AD13: C6        .byte $C6   ; 
- D 1 - I - 0x00CD24 03:AD14: 53        .byte $53   ; 
- D 1 - I - 0x00CD25 03:AD15: 28        .byte $28   ; 
- D 1 - I - 0x00CD26 03:AD16: FF        .byte $FF   ; 



_off018_03_AD17_16:
- D 1 - I - 0x00CD27 03:AD17: 60        .byte $60   ; 
- D 1 - I - 0x00CD28 03:AD18: E7        .byte $E7   ; 
- D 1 - I - 0x00CD29 03:AD19: 39        .byte $39   ; 
- D 1 - I - 0x00CD2A 03:AD1A: 03        .byte $03   ; 
- D 1 - I - 0x00CD2B 03:AD1B: FF        .byte $FF   ; 



_off018_03_AD1C_02:
- D 1 - I - 0x00CD2C 03:AD1C: 60        .byte $60   ; 
- D 1 - I - 0x00CD2D 03:AD1D: 1D        .byte $1D   ; 
- D 1 - I - 0x00CD2E 03:AD1E: 39        .byte $39   ; 
- D 1 - I - 0x00CD2F 03:AD1F: 05        .byte $05   ; 
- D 1 - I - 0x00CD30 03:AD20: 60        .byte $60   ; 
- D 1 - I - 0x00CD31 03:AD21: 27        .byte $27   ; 
- D 1 - I - 0x00CD32 03:AD22: 39        .byte $39   ; 
- D 1 - I - 0x00CD33 03:AD23: 02        .byte $02   ; 
- D 1 - I - 0x00CD34 03:AD24: 60        .byte $60   ; 
- D 1 - I - 0x00CD35 03:AD25: 80        .byte $80   ; 
- - - - - - 0x00CD36 03:AD26: 39        .byte $39   ; 
- - - - - - 0x00CD37 03:AD27: 04        .byte $04   ; 
- D 1 - I - 0x00CD38 03:AD28: 60        .byte $60   ; 
- D 1 - I - 0x00CD39 03:AD29: 92        .byte $92   ; 
- - - - - - 0x00CD3A 03:AD2A: 39        .byte $39   ; 
- - - - - - 0x00CD3B 03:AD2B: 01        .byte $01   ; 
- D 1 - I - 0x00CD3C 03:AD2C: 60        .byte $60   ; 
- D 1 - I - 0x00CD3D 03:AD2D: CA        .byte $CA   ; 
- - - - - - 0x00CD3E 03:AD2E: 39        .byte $39   ; 
- - - - - - 0x00CD3F 03:AD2F: 00        .byte $00   ; 
- D 1 - I - 0x00CD40 03:AD30: FF        .byte $FF   ; 



_off018_03_AD31_18:
- D 1 - I - 0x00CD41 03:AD31: 3C        .byte $3C   ; 
- D 1 - I - 0x00CD42 03:AD32: FE        .byte $FE   ; 
- D 1 - I - 0x00CD43 03:AD33: 62        .byte $62   ; 
- D 1 - I - 0x00CD44 03:AD34: 11        .byte $11   ; 
- D 1 - I - 0x00CD45 03:AD35: FF        .byte $FF   ; 



_off018_03_AD36_19:
- D 1 - I - 0x00CD46 03:AD36: 30        .byte $30   ; 
- D 1 - I - 0x00CD47 03:AD37: F0        .byte $F0   ; 
- D 1 - I - 0x00CD48 03:AD38: 17        .byte $17   ; 
- D 1 - I - 0x00CD49 03:AD39: 05        .byte $05   ; 
- D 1 - I - 0x00CD4A 03:AD3A: FF        .byte $FF   ; 



_off018_03_AD3B_1A:
- D 1 - I - 0x00CD4B 03:AD3B: 30        .byte $30   ; 
- D 1 - I - 0x00CD4C 03:AD3C: 50        .byte $50   ; 
- D 1 - I - 0x00CD4D 03:AD3D: 17        .byte $17   ; 
- D 1 - I - 0x00CD4E 03:AD3E: 01        .byte $01   ; 
- D 1 - I - 0x00CD4F 03:AD3F: 50        .byte $50   ; 
- D 1 - I - 0x00CD50 03:AD40: 30        .byte $30   ; 
- D 1 - I - 0x00CD51 03:AD41: 17        .byte $17   ; 
- D 1 - I - 0x00CD52 03:AD42: 03        .byte $03   ; 
- D 1 - I - 0x00CD53 03:AD43: 64        .byte $64   ; 
- D 1 - I - 0x00CD54 03:AD44: FC        .byte $FC   ; 
- D 1 - I - 0x00CD55 03:AD45: 65        .byte $65   ; 
- D 1 - I - 0x00CD56 03:AD46: 1C        .byte $1C   ; 
- D 1 - I - 0x00CD57 03:AD47: FF        .byte $FF   ; 



_off018_03_AD48_1B:
- D 1 - I - 0x00CD58 03:AD48: 6E        .byte $6E   ; 
- D 1 - I - 0x00CD59 03:AD49: 1C        .byte $1C   ; 
- D 1 - I - 0x00CD5A 03:AD4A: 64        .byte $64   ; 
- D 1 - I - 0x00CD5B 03:AD4B: 13        .byte $13   ; 
- D 1 - I - 0x00CD5C 03:AD4C: 90        .byte $90   ; 
- D 1 - I - 0x00CD5D 03:AD4D: 1C        .byte $1C   ; 
- D 1 - I - 0x00CD5E 03:AD4E: 65        .byte $65   ; 
- D 1 - I - 0x00CD5F 03:AD4F: 2A        .byte $2A   ; 
- D 1 - I - 0x00CD60 03:AD50: 2E        .byte $2E   ; 
- D 1 - I - 0x00CD61 03:AD51: 21        .byte $21   ; 
- D 1 - I - 0x00CD62 03:AD52: 3A        .byte $3A   ; 
- D 1 - I - 0x00CD63 03:AD53: 07        .byte $07   ; 
- D 1 - I - 0x00CD64 03:AD54: EE        .byte $EE   ; 
- D 1 - I - 0x00CD65 03:AD55: 21        .byte $21   ; 
- D 1 - I - 0x00CD66 03:AD56: 3A        .byte $3A   ; 
- D 1 - I - 0x00CD67 03:AD57: 06        .byte $06   ; 
- D 1 - I - 0x00CD68 03:AD58: E7        .byte $E7   ; 
- D 1 - I - 0x00CD69 03:AD59: 5A        .byte $5A   ; 
- D 1 - I - 0x00CD6A 03:AD5A: 64        .byte $64   ; 
- D 1 - I - 0x00CD6B 03:AD5B: 21        .byte $21   ; 
- D 1 - I - 0x00CD6C 03:AD5C: 13        .byte $13   ; 
- D 1 - I - 0x00CD6D 03:AD5D: A5        .byte $A5   ; 
- D 1 - I - 0x00CD6E 03:AD5E: 0B        .byte $0B   ; 
- D 1 - I - 0x00CD6F 03:AD5F: 05        .byte $05   ; 
- D 1 - I - 0x00CD70 03:AD60: FF        .byte $FF   ; 



_off018_03_AD61_1C:
- D 1 - I - 0x00CD71 03:AD61: 3B        .byte $3B   ; 
- D 1 - I - 0x00CD72 03:AD62: A2        .byte $A2   ; 
- D 1 - I - 0x00CD73 03:AD63: 63        .byte $63   ; 
- D 1 - I - 0x00CD74 03:AD64: 02        .byte $02   ; 
- D 1 - I - 0x00CD75 03:AD65: FF        .byte $FF   ; 



_off018_03_AD66_1D:
- D 1 - I - 0x00CD76 03:AD66: 31        .byte $31   ; 
- D 1 - I - 0x00CD77 03:AD67: 1F        .byte $1F   ; 
- D 1 - I - 0x00CD78 03:AD68: 63        .byte $63   ; 
- D 1 - I - 0x00CD79 03:AD69: 00        .byte $00   ; 
- D 1 - I - 0x00CD7A 03:AD6A: 05        .byte $05   ; 
- D 1 - I - 0x00CD7B 03:AD6B: A2        .byte $A2   ; 
- D 1 - I - 0x00CD7C 03:AD6C: 63        .byte $63   ; 
- D 1 - I - 0x00CD7D 03:AD6D: 2A        .byte $2A   ; 
- D 1 - I - 0x00CD7E 03:AD6E: FF        .byte $FF   ; 



_off018_03_AD6F_1E:
- - - - - - 0x00CD7F 03:AD6F: 66        .byte $66   ; 
- - - - - - 0x00CD80 03:AD70: 27        .byte $27   ; 
- - - - - - 0x00CD81 03:AD71: 62        .byte $62   ; 
- - - - - - 0x00CD82 03:AD72: 11        .byte $11   ; 
- - - - - - 0x00CD83 03:AD73: 41        .byte $41   ; 
- - - - - - 0x00CD84 03:AD74: 3E        .byte $3E   ; 
- - - - - - 0x00CD85 03:AD75: 62        .byte $62   ; 
- - - - - - 0x00CD86 03:AD76: 10        .byte $10   ; 
- - - - - - 0x00CD87 03:AD77: FF        .byte $FF   ; 



_off018_03_AD78_20:
- D 1 - I - 0x00CD88 03:AD78: 3C        .byte $3C   ; 
- D 1 - I - 0x00CD89 03:AD79: 08        .byte $08   ; 
- D 1 - I - 0x00CD8A 03:AD7A: 64        .byte $64   ; 
- D 1 - I - 0x00CD8B 03:AD7B: 28        .byte $28   ; 
- D 1 - I - 0x00CD8C 03:AD7C: 8E        .byte $8E   ; 
- D 1 - I - 0x00CD8D 03:AD7D: 41        .byte $41   ; 
- D 1 - I - 0x00CD8E 03:AD7E: 3A        .byte $3A   ; 
- D 1 - I - 0x00CD8F 03:AD7F: 05        .byte $05   ; 
- D 1 - I - 0x00CD90 03:AD80: FF        .byte $FF   ; 



_off018_03_AD81_21:
- D 1 - I - 0x00CD91 03:AD81: 6E        .byte $6E   ; 
- D 1 - I - 0x00CD92 03:AD82: E8        .byte $E8   ; 
- D 1 - I - 0x00CD93 03:AD83: 5C        .byte $5C   ; 
- D 1 - I - 0x00CD94 03:AD84: 03        .byte $03   ; 
- D 1 - I - 0x00CD95 03:AD85: 03        .byte $03   ; 
- D 1 - I - 0x00CD96 03:AD86: FC        .byte $FC   ; 
- D 1 - I - 0x00CD97 03:AD87: 5D        .byte $5D   ; 
- D 1 - I - 0x00CD98 03:AD88: 04        .byte $04   ; 
- D 1 - I - 0x00CD99 03:AD89: FF        .byte $FF   ; 



_off018_03_AD8A_22:
- D 1 - I - 0x00CD9A 03:AD8A: 8E        .byte $8E   ; 
- D 1 - I - 0x00CD9B 03:AD8B: 3F        .byte $3F   ; 
- D 1 - I - 0x00CD9C 03:AD8C: 5C        .byte $5C   ; 
- D 1 - I - 0x00CD9D 03:AD8D: 02        .byte $02   ; 
- D 1 - I - 0x00CD9E 03:AD8E: 15        .byte $15   ; 
- D 1 - I - 0x00CD9F 03:AD8F: 4D        .byte $4D   ; 
- D 1 - I - 0x00CDA0 03:AD90: 5D        .byte $5D   ; 
- D 1 - I - 0x00CDA1 03:AD91: 05        .byte $05   ; 
- D 1 - I - 0x00CDA2 03:AD92: FF        .byte $FF   ; 



_off018_03_AD93_23:
- D 1 - I - 0x00CDA3 03:AD93: 55        .byte $55   ; 
- D 1 - I - 0x00CDA4 03:AD94: 2A        .byte $2A   ; 
- D 1 - I - 0x00CDA5 03:AD95: 62        .byte $62   ; 
- D 1 - I - 0x00CDA6 03:AD96: 12        .byte $12   ; 
- D 1 - I - 0x00CDA7 03:AD97: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDA8 03:AD98: 2E        .byte $2E   ; 
- D 1 - I - 0x00CDA9 03:AD99: 39        .byte $39   ; 
- D 1 - I - 0x00CDAA 03:AD9A: 01        .byte $01   ; 
- D 1 - I - 0x00CDAB 03:AD9B: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDAC 03:AD9C: A3        .byte $A3   ; 
- - - - - - 0x00CDAD 03:AD9D: 39        .byte $39   ; 
- - - - - - 0x00CDAE 03:AD9E: 00        .byte $00   ; 
- D 1 - I - 0x00CDAF 03:AD9F: FF        .byte $FF   ; 



_off018_03_ADA0_24:
- D 1 - I - 0x00CDB0 03:ADA0: 5B        .byte $5B   ; 
- D 1 - I - 0x00CDB1 03:ADA1: C3        .byte $C3   ; 
- D 1 - I - 0x00CDB2 03:ADA2: 63        .byte $63   ; 
- D 1 - I - 0x00CDB3 03:ADA3: 2B        .byte $2B   ; 
- D 1 - I - 0x00CDB4 03:ADA4: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDB5 03:ADA5: A0        .byte $A0   ; 
- D 1 - I - 0x00CDB6 03:ADA6: 39        .byte $39   ; 
- D 1 - I - 0x00CDB7 03:ADA7: 02        .byte $02   ; 
- D 1 - I - 0x00CDB8 03:ADA8: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDB9 03:ADA9: EE        .byte $EE   ; 
- D 1 - I - 0x00CDBA 03:ADAA: 39        .byte $39   ; 
- D 1 - I - 0x00CDBB 03:ADAB: 01        .byte $01   ; 
- D 1 - I - 0x00CDBC 03:ADAC: FF        .byte $FF   ; 



_off018_03_ADAD_25:
- D 1 - I - 0x00CDBD 03:ADAD: 4F        .byte $4F   ; 
- D 1 - I - 0x00CDBE 03:ADAE: 5C        .byte $5C   ; 
- - - - - - 0x00CDBF 03:ADAF: 62        .byte $62   ; 
- - - - - - 0x00CDC0 03:ADB0: 34        .byte $34   ; 
- D 1 - I - 0x00CDC1 03:ADB1: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDC2 03:ADB2: 6E        .byte $6E   ; 
- - - - - - 0x00CDC3 03:ADB3: 39        .byte $39   ; 
- - - - - - 0x00CDC4 03:ADB4: 00        .byte $00   ; 
- D 1 - I - 0x00CDC5 03:ADB5: FF        .byte $FF   ; 



_off018_03_ADB6_26:
- D 1 - I - 0x00CDC6 03:ADB6: 2E        .byte $2E   ; 
- D 1 - I - 0x00CDC7 03:ADB7: 01        .byte $01   ; 
- D 1 - I - 0x00CDC8 03:ADB8: 3A        .byte $3A   ; 
- D 1 - I - 0x00CDC9 03:ADB9: 06        .byte $06   ; 
- D 1 - I - 0x00CDCA 03:ADBA: FF        .byte $FF   ; 



_off018_03_ADBB_27:
- D 1 - I - 0x00CDCB 03:ADBB: 98        .byte $98   ; 
- D 1 - I - 0x00CDCC 03:ADBC: F5        .byte $F5   ; 
- D 1 - I - 0x00CDCD 03:ADBD: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDCE 03:ADBE: 01        .byte $01   ; 
- D 1 - I - 0x00CDCF 03:ADBF: FF        .byte $FF   ; 



_off018_03_ADC0_28:
- D 1 - I - 0x00CDD0 03:ADC0: 99        .byte $99   ; 
- D 1 - I - 0x00CDD1 03:ADC1: 4A        .byte $4A   ; 
- D 1 - I - 0x00CDD2 03:ADC2: 5F        .byte $5F   ; 
- D 1 - I - 0x00CDD3 03:ADC3: 00        .byte $00   ; 
- D 1 - I - 0x00CDD4 03:ADC4: B0        .byte $B0   ; 
- D 1 - I - 0x00CDD5 03:ADC5: E0        .byte $E0   ; 
- D 1 - I - 0x00CDD6 03:ADC6: 17        .byte $17   ; 
- D 1 - I - 0x00CDD7 03:ADC7: 04        .byte $04   ; 
- D 1 - I - 0x00CDD8 03:ADC8: FF        .byte $FF   ; 



_off018_03_ADC9_29:
- D 1 - I - 0x00CDD9 03:ADC9: 90        .byte $90   ; 
- D 1 - I - 0x00CDDA 03:ADCA: 10        .byte $10   ; 
- D 1 - I - 0x00CDDB 03:ADCB: 17        .byte $17   ; 
- D 1 - I - 0x00CDDC 03:ADCC: 04        .byte $04   ; 
- D 1 - I - 0x00CDDD 03:ADCD: FF        .byte $FF   ; 



_off018_03_ADCE_08:
- D 1 - I - 0x00CDDE 03:ADCE: F0        .byte $F0   ; 
- D 1 - I - 0x00CDDF 03:ADCF: 98        .byte $98   ; 
- D 1 - I - 0x00CDE0 03:ADD0: 62        .byte $62   ; 
- D 1 - I - 0x00CDE1 03:ADD1: 1C        .byte $1C   ; 
- D 1 - I - 0x00CDE2 03:ADD2: FF        .byte $FF   ; 



_off018_03_ADD3_2A:
- D 1 - I - 0x00CDE3 03:ADD3: 0E        .byte $0E   ; 
- D 1 - I - 0x00CDE4 03:ADD4: FA        .byte $FA   ; 
- D 1 - I - 0x00CDE5 03:ADD5: 5C        .byte $5C   ; 
- D 1 - I - 0x00CDE6 03:ADD6: 2B        .byte $2B   ; 
- D 1 - I - 0x00CDE7 03:ADD7: FF        .byte $FF   ; 



_off018_03_ADD8_2B:
- D 1 - I - 0x00CDE8 03:ADD8: C5        .byte $C5   ; 
- D 1 - I - 0x00CDE9 03:ADD9: 04        .byte $04   ; 
- D 1 - I - 0x00CDEA 03:ADDA: 1F        .byte $1F   ; 
- D 1 - I - 0x00CDEB 03:ADDB: 01        .byte $01   ; 
- D 1 - I - 0x00CDEC 03:ADDC: C1        .byte $C1   ; 
- D 1 - I - 0x00CDED 03:ADDD: 38        .byte $38   ; 
- D 1 - I - 0x00CDEE 03:ADDE: 1F        .byte $1F   ; 
- D 1 - I - 0x00CDEF 03:ADDF: 00        .byte $00   ; 
- D 1 - I - 0x00CDF0 03:ADE0: 0E        .byte $0E   ; 
- D 1 - I - 0x00CDF1 03:ADE1: 3D        .byte $3D   ; 
- D 1 - I - 0x00CDF2 03:ADE2: 5C        .byte $5C   ; 
- D 1 - I - 0x00CDF3 03:ADE3: 2A        .byte $2A   ; 
- D 1 - I - 0x00CDF4 03:ADE4: 10        .byte $10   ; 
- D 1 - I - 0x00CDF5 03:ADE5: E0        .byte $E0   ; 
- D 1 - I - 0x00CDF6 03:ADE6: 17        .byte $17   ; 
- D 1 - I - 0x00CDF7 03:ADE7: 04        .byte $04   ; 
- D 1 - I - 0x00CDF8 03:ADE8: 50        .byte $50   ; 
- D 1 - I - 0x00CDF9 03:ADE9: E0        .byte $E0   ; 
- D 1 - I - 0x00CDFA 03:ADEA: 17        .byte $17   ; 
- D 1 - I - 0x00CDFB 03:ADEB: 01        .byte $01   ; 
- D 1 - I - 0x00CDFC 03:ADEC: 08        .byte $08   ; 
- D 1 - I - 0x00CDFD 03:ADED: E7        .byte $E7   ; 
- D 1 - I - 0x00CDFE 03:ADEE: 5C        .byte $5C   ; 
- D 1 - I - 0x00CDFF 03:ADEF: 13        .byte $13   ; 
- D 1 - I - 0x00CE00 03:ADF0: FF        .byte $FF   ; 



_off018_03_ADF1_2C:
- D 1 - I - 0x00CE01 03:ADF1: 70        .byte $70   ; 
- D 1 - I - 0x00CE02 03:ADF2: 20        .byte $20   ; 
- D 1 - I - 0x00CE03 03:ADF3: 17        .byte $17   ; 
- D 1 - I - 0x00CE04 03:ADF4: 02        .byte $02   ; 
- D 1 - I - 0x00CE05 03:ADF5: FF        .byte $FF   ; 



_off018_03_ADF6_2D:
- D 1 - I - 0x00CE06 03:ADF6: 38        .byte $38   ; 
- D 1 - I - 0x00CE07 03:ADF7: 11        .byte $11   ; 
- D 1 - I - 0x00CE08 03:ADF8: 62        .byte $62   ; 
- D 1 - I - 0x00CE09 03:ADF9: 10        .byte $10   ; 
- D 1 - I - 0x00CE0A 03:ADFA: 38        .byte $38   ; 
- D 1 - I - 0x00CE0B 03:ADFB: 66        .byte $66   ; 
- D 1 - I - 0x00CE0C 03:ADFC: 62        .byte $62   ; 
- D 1 - I - 0x00CE0D 03:ADFD: 35        .byte $35   ; 
- D 1 - I - 0x00CE0E 03:ADFE: 2A        .byte $2A   ; 
- D 1 - I - 0x00CE0F 03:ADFF: 9D        .byte $9D   ; 
- D 1 - I - 0x00CE10 03:AE00: 62        .byte $62   ; 
- D 1 - I - 0x00CE11 03:AE01: 2B        .byte $2B   ; 
- D 1 - I - 0x00CE12 03:AE02: 5A        .byte $5A   ; 
- D 1 - I - 0x00CE13 03:AE03: FD        .byte $FD   ; 
- D 1 - I - 0x00CE14 03:AE04: 62        .byte $62   ; 
- D 1 - I - 0x00CE15 03:AE05: 32        .byte $32   ; 
- D 1 - I - 0x00CE16 03:AE06: FF        .byte $FF   ; 



_off018_03_AE07_2E:
- D 1 - I - 0x00CE17 03:AE07: 75        .byte $75   ; 
- D 1 - I - 0x00CE18 03:AE08: 39        .byte $39   ; 
- D 1 - I - 0x00CE19 03:AE09: 62        .byte $62   ; 
- D 1 - I - 0x00CE1A 03:AE0A: 19        .byte $19   ; 
- D 1 - I - 0x00CE1B 03:AE0B: 48        .byte $48   ; 
- D 1 - I - 0x00CE1C 03:AE0C: 39        .byte $39   ; 
- D 1 - I - 0x00CE1D 03:AE0D: 63        .byte $63   ; 
- D 1 - I - 0x00CE1E 03:AE0E: 18        .byte $18   ; 
- D 1 - I - 0x00CE1F 03:AE0F: FF        .byte $FF   ; 



_off018_03_AE10_0C:
- D 1 - I - 0x00CE20 03:AE10: EA        .byte $EA   ; 
- D 1 - I - 0x00CE21 03:AE11: F3        .byte $F3   ; 
- D 1 - I - 0x00CE22 03:AE12: 11        .byte $11   ; 
- D 1 - I - 0x00CE23 03:AE13: 18        .byte $18   ; 
- D 1 - I - 0x00CE24 03:AE14: FF        .byte $FF   ; 



_off015_AE15_04_stage_5:
- - - - - - 0x00CE25 03:AE15: 00        .byte $00   ; 
- - - - - - 0x00CE26 03:AE16: 00        .byte $00   ; 
- D 1 - I - 0x00CE27 03:AE17: 00        .byte $00   ; 
- D 1 - I - 0x00CE28 03:AE18: 00        .byte $00   ; 
- - - - - - 0x00CE29 03:AE19: 00        .byte $00   ; 
- D 1 - I - 0x00CE2A 03:AE1A: 00        .byte $00   ; 
- D 1 - I - 0x00CE2B 03:AE1B: 01        .byte $01   ; 
- D 1 - I - 0x00CE2C 03:AE1C: 02        .byte $02   ; 
- D 1 - I - 0x00CE2D 03:AE1D: 03        .byte $03   ; 
- D 1 - I - 0x00CE2E 03:AE1E: 04        .byte $04   ; 
- D 1 - I - 0x00CE2F 03:AE1F: 00        .byte $00   ; 
- D 1 - I - 0x00CE30 03:AE20: 05        .byte $05   ; 
- D 1 - I - 0x00CE31 03:AE21: 00        .byte $00   ; 
- D 1 - I - 0x00CE32 03:AE22: 00        .byte $00   ; 
- D 1 - I - 0x00CE33 03:AE23: 06        .byte $06   ; 
- D 1 - I - 0x00CE34 03:AE24: 00        .byte $00   ; 
- D 1 - I - 0x00CE35 03:AE25: 07        .byte $07   ; 
- D 1 - I - 0x00CE36 03:AE26: 08        .byte $08   ; 
- D 1 - I - 0x00CE37 03:AE27: 09        .byte $09   ; 
- D 1 - I - 0x00CE38 03:AE28: 00        .byte $00   ; 
- D 1 - I - 0x00CE39 03:AE29: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE3A 03:AE2A: 0B        .byte $0B   ; 
- D 1 - I - 0x00CE3B 03:AE2B: 0C        .byte $0C   ; 
- D 1 - I - 0x00CE3C 03:AE2C: 0D        .byte $0D   ; 
- D 1 - I - 0x00CE3D 03:AE2D: 00        .byte $00   ; 
- D 1 - I - 0x00CE3E 03:AE2E: 00        .byte $00   ; 
- D 1 - I - 0x00CE3F 03:AE2F: 0E        .byte $0E   ; 
- D 1 - I - 0x00CE40 03:AE30: 0F        .byte $0F   ; 
- D 1 - I - 0x00CE41 03:AE31: 00        .byte $00   ; 
- D 1 - I - 0x00CE42 03:AE32: 00        .byte $00   ; 



_off016_AE33_04_stage_5:
- D 1 - I - 0x00CE43 03:AE33: 63 AE     .word _off018_04_AE63_00
- D 1 - I - 0x00CE45 03:AE35: 63 AE     .word _off018_04_AE63_01
- D 1 - I - 0x00CE47 03:AE37: 53 AE     .word _off018_04_AE53_02
- D 1 - I - 0x00CE49 03:AE39: 64 AE     .word _off018_04_AE64_03
- D 1 - I - 0x00CE4B 03:AE3B: 75 AE     .word _off018_04_AE75_04
- D 1 - I - 0x00CE4D 03:AE3D: 86 AE     .word _off018_04_AE86_05
- D 1 - I - 0x00CE4F 03:AE3F: 8B AE     .word _off018_04_AE8B_06
- D 1 - I - 0x00CE51 03:AE41: 98 AE     .word _off018_04_AE98_07
- D 1 - I - 0x00CE53 03:AE43: A9 AE     .word _off018_04_AEA9_08
- D 1 - I - 0x00CE55 03:AE45: BE AE     .word _off018_04_AEBE_09
- D 1 - I - 0x00CE57 03:AE47: D3 AE     .word _off018_04_AED3_0A
- D 1 - I - 0x00CE59 03:AE49: E0 AE     .word _off018_04_AEE0_0B
- D 1 - I - 0x00CE5B 03:AE4B: E5 AE     .word _off018_04_AEE5_0C
- D 1 - I - 0x00CE5D 03:AE4D: FE AE     .word _off018_04_AEFE_0D
- D 1 - I - 0x00CE5F 03:AE4F: 07 AF     .word _off018_04_AF07_0E
- D 1 - I - 0x00CE61 03:AE51: 10 AF     .word _off018_04_AF10_0F



_off018_04_AE53_02:
- D 1 - I - 0x00CE63 03:AE53: ED        .byte $ED   ; 
- D 1 - I - 0x00CE64 03:AE54: 6B        .byte $6B   ; 
- D 1 - I - 0x00CE65 03:AE55: 41        .byte $41   ; 
- D 1 - I - 0x00CE66 03:AE56: 0E        .byte $0E   ; 
- D 1 - I - 0x00CE67 03:AE57: C9        .byte $C9   ; 
- D 1 - I - 0x00CE68 03:AE58: 6B        .byte $6B   ; 
- D 1 - I - 0x00CE69 03:AE59: 40        .byte $40   ; 
- D 1 - I - 0x00CE6A 03:AE5A: 04        .byte $04   ; 
- D 1 - I - 0x00CE6B 03:AE5B: A9        .byte $A9   ; 
- D 1 - I - 0x00CE6C 03:AE5C: 8B        .byte $8B   ; 
- D 1 - I - 0x00CE6D 03:AE5D: 41        .byte $41   ; 
- D 1 - I - 0x00CE6E 03:AE5E: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE6F 03:AE5F: 3E        .byte $3E   ; 
- D 1 - I - 0x00CE70 03:AE60: A4        .byte $A4   ; 
- D 1 - I - 0x00CE71 03:AE61: 44        .byte $44   ; 
- D 1 - I - 0x00CE72 03:AE62: 2B        .byte $2B   ; 



_off018_04_AE63_00:
_off018_04_AE63_01:
- D 1 - I - 0x00CE73 03:AE63: FF        .byte $FF   ; 



_off018_04_AE64_03:
- D 1 - I - 0x00CE74 03:AE64: 12        .byte $12   ; 
- D 1 - I - 0x00CE75 03:AE65: 89        .byte $89   ; 
- D 1 - I - 0x00CE76 03:AE66: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE77 03:AE67: 05        .byte $05   ; 
- D 1 - I - 0x00CE78 03:AE68: 70        .byte $70   ; 
- D 1 - I - 0x00CE79 03:AE69: A4        .byte $A4   ; 
- D 1 - I - 0x00CE7A 03:AE6A: 40        .byte $40   ; 
- D 1 - I - 0x00CE7B 03:AE6B: 13        .byte $13   ; 
- D 1 - I - 0x00CE7C 03:AE6C: 31        .byte $31   ; 
- D 1 - I - 0x00CE7D 03:AE6D: A4        .byte $A4   ; 
- D 1 - I - 0x00CE7E 03:AE6E: 43        .byte $43   ; 
- D 1 - I - 0x00CE7F 03:AE6F: 2C        .byte $2C   ; 
- D 1 - I - 0x00CE80 03:AE70: EA        .byte $EA   ; 
- D 1 - I - 0x00CE81 03:AE71: B6        .byte $B6   ; 
- D 1 - I - 0x00CE82 03:AE72: 41        .byte $41   ; 
- D 1 - I - 0x00CE83 03:AE73: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE84 03:AE74: FF        .byte $FF   ; 



_off018_04_AE75_04:
- D 1 - I - 0x00CE85 03:AE75: A2        .byte $A2   ; 
- D 1 - I - 0x00CE86 03:AE76: A4        .byte $A4   ; 
- D 1 - I - 0x00CE87 03:AE77: 42        .byte $42   ; 
- D 1 - I - 0x00CE88 03:AE78: 0A        .byte $0A   ; 
- D 1 - I - 0x00CE89 03:AE79: 12        .byte $12   ; 
- D 1 - I - 0x00CE8A 03:AE7A: C6        .byte $C6   ; 
- D 1 - I - 0x00CE8B 03:AE7B: 41        .byte $41   ; 
- D 1 - I - 0x00CE8C 03:AE7C: 0D        .byte $0D   ; 
- D 1 - I - 0x00CE8D 03:AE7D: 8E        .byte $8E   ; 
- D 1 - I - 0x00CE8E 03:AE7E: C4        .byte $C4   ; 
- D 1 - I - 0x00CE8F 03:AE7F: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE90 03:AE80: 16        .byte $16   ; 
- D 1 - I - 0x00CE91 03:AE81: 51        .byte $51   ; 
- D 1 - I - 0x00CE92 03:AE82: F5        .byte $F5   ; 
- D 1 - I - 0x00CE93 03:AE83: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE94 03:AE84: 04        .byte $04   ; 
- D 1 - I - 0x00CE95 03:AE85: FF        .byte $FF   ; 



_off018_04_AE86_05:
- D 1 - I - 0x00CE96 03:AE86: 89        .byte $89   ; 
- D 1 - I - 0x00CE97 03:AE87: B7        .byte $B7   ; 
- D 1 - I - 0x00CE98 03:AE88: 40        .byte $40   ; 
- D 1 - I - 0x00CE99 03:AE89: 13        .byte $13   ; 
- D 1 - I - 0x00CE9A 03:AE8A: FF        .byte $FF   ; 



_off018_04_AE8B_06:
- D 1 - I - 0x00CE9B 03:AE8B: 8A        .byte $8A   ; 
- D 1 - I - 0x00CE9C 03:AE8C: 16        .byte $16   ; 
- D 1 - I - 0x00CE9D 03:AE8D: 3F        .byte $3F   ; 
- D 1 - I - 0x00CE9E 03:AE8E: 03        .byte $03   ; 
- D 1 - I - 0x00CE9F 03:AE8F: EF        .byte $EF   ; 
- D 1 - I - 0x00CEA0 03:AE90: 65        .byte $65   ; 
- D 1 - I - 0x00CEA1 03:AE91: 41        .byte $41   ; 
- D 1 - I - 0x00CEA2 03:AE92: 0C        .byte $0C   ; 
- D 1 - I - 0x00CEA3 03:AE93: CE        .byte $CE   ; 
- D 1 - I - 0x00CEA4 03:AE94: 87        .byte $87   ; 
- D 1 - I - 0x00CEA5 03:AE95: 3E        .byte $3E   ; 
- D 1 - I - 0x00CEA6 03:AE96: 05        .byte $05   ; 
- D 1 - I - 0x00CEA7 03:AE97: FF        .byte $FF   ; 



_off018_04_AE98_07:
- D 1 - I - 0x00CEA8 03:AE98: 43        .byte $43   ; 
- D 1 - I - 0x00CEA9 03:AE99: 36        .byte $36   ; 
- D 1 - I - 0x00CEAA 03:AE9A: 41        .byte $41   ; 
- D 1 - I - 0x00CEAB 03:AE9B: 0E        .byte $0E   ; 
- D 1 - I - 0x00CEAC 03:AE9C: C0        .byte $C0   ; 
- D 1 - I - 0x00CEAD 03:AE9D: 98        .byte $98   ; 
- D 1 - I - 0x00CEAE 03:AE9E: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEAF 03:AE9F: 03        .byte $03   ; 
- D 1 - I - 0x00CEB0 03:AEA0: 9B        .byte $9B   ; 
- D 1 - I - 0x00CEB1 03:AEA1: 98        .byte $98   ; 
- D 1 - I - 0x00CEB2 03:AEA2: 44        .byte $44   ; 
- D 1 - I - 0x00CEB3 03:AEA3: 2A        .byte $2A   ; 
- D 1 - I - 0x00CEB4 03:AEA4: 5C        .byte $5C   ; 
- D 1 - I - 0x00CEB5 03:AEA5: 98        .byte $98   ; 
- D 1 - I - 0x00CEB6 03:AEA6: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEB7 03:AEA7: 05        .byte $05   ; 
- D 1 - I - 0x00CEB8 03:AEA8: FF        .byte $FF   ; 



_off018_04_AEA9_08:
- D 1 - I - 0x00CEB9 03:AEA9: 49        .byte $49   ; 
- D 1 - I - 0x00CEBA 03:AEAA: 94        .byte $94   ; 
- D 1 - I - 0x00CEBB 03:AEAB: 41        .byte $41   ; 
- D 1 - I - 0x00CEBC 03:AEAC: 0C        .byte $0C   ; 
- D 1 - I - 0x00CEBD 03:AEAD: E8        .byte $E8   ; 
- D 1 - I - 0x00CEBE 03:AEAE: 97        .byte $97   ; 
- D 1 - I - 0x00CEBF 03:AEAF: 41        .byte $41   ; 
- D 1 - I - 0x00CEC0 03:AEB0: 0A        .byte $0A   ; 
- D 1 - I - 0x00CEC1 03:AEB1: C9        .byte $C9   ; 
- D 1 - I - 0x00CEC2 03:AEB2: A4        .byte $A4   ; 
- D 1 - I - 0x00CEC3 03:AEB3: 40        .byte $40   ; 
- D 1 - I - 0x00CEC4 03:AEB4: 16        .byte $16   ; 
- D 1 - I - 0x00CEC5 03:AEB5: A9        .byte $A9   ; 
- D 1 - I - 0x00CEC6 03:AEB6: A8        .byte $A8   ; 
- D 1 - I - 0x00CEC7 03:AEB7: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEC8 03:AEB8: 05        .byte $05   ; 
- D 1 - I - 0x00CEC9 03:AEB9: 5B        .byte $5B   ; 
- D 1 - I - 0x00CECA 03:AEBA: FB        .byte $FB   ; 
- D 1 - I - 0x00CECB 03:AEBB: 41        .byte $41   ; 
- D 1 - I - 0x00CECC 03:AEBC: 0C        .byte $0C   ; 
- D 1 - I - 0x00CECD 03:AEBD: FF        .byte $FF   ; 



_off018_04_AEBE_09:
- D 1 - I - 0x00CECE 03:AEBE: A3        .byte $A3   ; 
- D 1 - I - 0x00CECF 03:AEBF: 8E        .byte $8E   ; 
- D 1 - I - 0x00CED0 03:AEC0: 40        .byte $40   ; 
- D 1 - I - 0x00CED1 03:AEC1: 16        .byte $16   ; 
- D 1 - I - 0x00CED2 03:AEC2: 64        .byte $64   ; 
- D 1 - I - 0x00CED3 03:AEC3: 92        .byte $92   ; 
- D 1 - I - 0x00CED4 03:AEC4: 41        .byte $41   ; 
- D 1 - I - 0x00CED5 03:AEC5: 0D        .byte $0D   ; 
- D 1 - I - 0x00CED6 03:AEC6: CB        .byte $CB   ; 
- D 1 - I - 0x00CED7 03:AEC7: A5        .byte $A5   ; 
- D 1 - I - 0x00CED8 03:AEC8: 41        .byte $41   ; 
- D 1 - I - 0x00CED9 03:AEC9: 0A        .byte $0A   ; 
- D 1 - I - 0x00CEDA 03:AECA: 49        .byte $49   ; 
- D 1 - I - 0x00CEDB 03:AECB: A7        .byte $A7   ; 
- D 1 - I - 0x00CEDC 03:AECC: 44        .byte $44   ; 
- D 1 - I - 0x00CEDD 03:AECD: 2C        .byte $2C   ; 
- D 1 - I - 0x00CEDE 03:AECE: 0D        .byte $0D   ; 
- D 1 - I - 0x00CEDF 03:AECF: A9        .byte $A9   ; 
- D 1 - I - 0x00CEE0 03:AED0: 42        .byte $42   ; 
- D 1 - I - 0x00CEE1 03:AED1: 0B        .byte $0B   ; 
- D 1 - I - 0x00CEE2 03:AED2: FF        .byte $FF   ; 



_off018_04_AED3_0A:
- D 1 - I - 0x00CEE3 03:AED3: 6F        .byte $6F   ; 
- D 1 - I - 0x00CEE4 03:AED4: 58        .byte $58   ; 
- - - - - - 0x00CEE5 03:AED5: 3F        .byte $3F   ; 
- - - - - - 0x00CEE6 03:AED6: 12        .byte $12   ; 
- D 1 - I - 0x00CEE7 03:AED7: BA        .byte $BA   ; 
- D 1 - I - 0x00CEE8 03:AED8: 68        .byte $68   ; 
- - - - - - 0x00CEE9 03:AED9: 3F        .byte $3F   ; 
- - - - - - 0x00CEEA 03:AEDA: 03        .byte $03   ; 
- D 1 - I - 0x00CEEB 03:AEDB: FC        .byte $FC   ; 
- D 1 - I - 0x00CEEC 03:AEDC: 68        .byte $68   ; 
- - - - - - 0x00CEED 03:AEDD: 43        .byte $43   ; 
- - - - - - 0x00CEEE 03:AEDE: 2C        .byte $2C   ; 
- D 1 - I - 0x00CEEF 03:AEDF: FF        .byte $FF   ; 



_off018_04_AEE0_0B:
- D 1 - I - 0x00CEF0 03:AEE0: E7        .byte $E7   ; 
- D 1 - I - 0x00CEF1 03:AEE1: 27        .byte $27   ; 
- D 1 - I - 0x00CEF2 03:AEE2: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEF3 03:AEE3: 16        .byte $16   ; 
- D 1 - I - 0x00CEF4 03:AEE4: FF        .byte $FF   ; 



_off018_04_AEE5_0C:
- D 1 - I - 0x00CEF5 03:AEE5: 4B        .byte $4B   ; 
- D 1 - I - 0x00CEF6 03:AEE6: 0B        .byte $0B   ; 
- D 1 - I - 0x00CEF7 03:AEE7: 3F        .byte $3F   ; 
- D 1 - I - 0x00CEF8 03:AEE8: 03        .byte $03   ; 
- D 1 - I - 0x00CEF9 03:AEE9: 24        .byte $24   ; 
- D 1 - I - 0x00CEFA 03:AEEA: 24        .byte $24   ; 
- D 1 - I - 0x00CEFB 03:AEEB: 44        .byte $44   ; 
- D 1 - I - 0x00CEFC 03:AEEC: 2A        .byte $2A   ; 
- D 1 - I - 0x00CEFD 03:AEED: E9        .byte $E9   ; 
- D 1 - I - 0x00CEFE 03:AEEE: 44        .byte $44   ; 
- D 1 - I - 0x00CEFF 03:AEEF: 40        .byte $40   ; 
- D 1 - I - 0x00CF00 03:AEF0: 15        .byte $15   ; 
- D 1 - I - 0x00CF01 03:AEF1: CB        .byte $CB   ; 
- D 1 - I - 0x00CF02 03:AEF2: 64        .byte $64   ; 
- D 1 - I - 0x00CF03 03:AEF3: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF04 03:AEF4: 06        .byte $06   ; 
- D 1 - I - 0x00CF05 03:AEF5: 9E        .byte $9E   ; 
- D 1 - I - 0x00CF06 03:AEF6: 84        .byte $84   ; 
- D 1 - I - 0x00CF07 03:AEF7: 43        .byte $43   ; 
- D 1 - I - 0x00CF08 03:AEF8: 22        .byte $22   ; 
- D 1 - I - 0x00CF09 03:AEF9: 6C        .byte $6C   ; 
- D 1 - I - 0x00CF0A 03:AEFA: 84        .byte $84   ; 
- D 1 - I - 0x00CF0B 03:AEFB: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF0C 03:AEFC: 14        .byte $14   ; 
- D 1 - I - 0x00CF0D 03:AEFD: FF        .byte $FF   ; 



_off018_04_AEFE_0D:
- D 1 - I - 0x00CF0E 03:AEFE: 2A        .byte $2A   ; 
- D 1 - I - 0x00CF0F 03:AEFF: 40        .byte $40   ; 
- D 1 - I - 0x00CF10 03:AF00: 40        .byte $40   ; 
- D 1 - I - 0x00CF11 03:AF01: 04        .byte $04   ; 
- D 1 - I - 0x00CF12 03:AF02: D1        .byte $D1   ; 
- D 1 - I - 0x00CF13 03:AF03: 95        .byte $95   ; 
- D 1 - I - 0x00CF14 03:AF04: 40        .byte $40   ; 
- D 1 - I - 0x00CF15 03:AF05: 03        .byte $03   ; 
- D 1 - I - 0x00CF16 03:AF06: FF        .byte $FF   ; 



_off018_04_AF07_0E:
- D 1 - I - 0x00CF17 03:AF07: 85        .byte $85   ; 
- D 1 - I - 0x00CF18 03:AF08: 25        .byte $25   ; 
- D 1 - I - 0x00CF19 03:AF09: 3E        .byte $3E   ; 
- D 1 - I - 0x00CF1A 03:AF0A: 07        .byte $07   ; 
- D 1 - I - 0x00CF1B 03:AF0B: A8        .byte $A8   ; 
- D 1 - I - 0x00CF1C 03:AF0C: 25        .byte $25   ; 
- D 1 - I - 0x00CF1D 03:AF0D: 41        .byte $41   ; 
- D 1 - I - 0x00CF1E 03:AF0E: 0E        .byte $0E   ; 
- D 1 - I - 0x00CF1F 03:AF0F: FF        .byte $FF   ; 



_off018_04_AF10_0F:
- D 1 - I - 0x00CF20 03:AF10: 0D        .byte $0D   ; 
- D 1 - I - 0x00CF21 03:AF11: 25        .byte $25   ; 
- D 1 - I - 0x00CF22 03:AF12: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF23 03:AF13: 15        .byte $15   ; 
- D 1 - I - 0x00CF24 03:AF14: 2B        .byte $2B   ; 
- D 1 - I - 0x00CF25 03:AF15: 25        .byte $25   ; 
- D 1 - I - 0x00CF26 03:AF16: 3F        .byte $3F   ; 
- D 1 - I - 0x00CF27 03:AF17: 04        .byte $04   ; 
- D 1 - I - 0x00CF28 03:AF18: 69        .byte $69   ; 
- D 1 - I - 0x00CF29 03:AF19: 27        .byte $27   ; 
- D 1 - I - 0x00CF2A 03:AF1A: 41        .byte $41   ; 
- D 1 - I - 0x00CF2B 03:AF1B: 0B        .byte $0B   ; 
- D 1 - I - 0x00CF2C 03:AF1C: A8        .byte $A8   ; 
- D 1 - I - 0x00CF2D 03:AF1D: 27        .byte $27   ; 
- D 1 - I - 0x00CF2E 03:AF1E: 44        .byte $44   ; 
- D 1 - I - 0x00CF2F 03:AF1F: 2A        .byte $2A   ; 
- D 1 - I - 0x00CF30 03:AF20: FF        .byte $FF   ; 



ofs_016_0x00CF31_10:
C - - J - - 0x00CF31 03:AF21: 20 27 AF  JSR sub_AF27
C - - - - - 0x00CF34 03:AF24: 4C B6 81  JMP loc_0x0081C6



sub_AF27:
C - - - - - 0x00CF37 03:AF27: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00CF3A 03:AF2A: F0 62     BEQ bra_AF8E
C - - - - - 0x00CF3C 03:AF2C: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00CF3F 03:AF2F: C9 AA     CMP #$AA
C - - - - - 0x00CF41 03:AF31: D0 36     BNE bra_AF69
C - - - - - 0x00CF43 03:AF33: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00CF46 03:AF36: 30 0D     BMI bra_AF45
C - - - - - 0x00CF48 03:AF38: 09 80     ORA #$80
C - - - - - 0x00CF4A 03:AF3A: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00CF4D 03:AF3D: A9 4F     LDA #$4F
C - - - - - 0x00CF4F 03:AF3F: 38        SEC
C - - - - - 0x00CF50 03:AF40: E5 61     SBC ram_0061
C - - - - - 0x00CF52 03:AF42: 9D 4E 06  STA ram_obj_pos_X,X
bra_AF45:
C - - - - - 0x00CF55 03:AF45: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00CF58 03:AF48: F0 0F     BEQ bra_AF59
C - - - - - 0x00CF5A 03:AF4A: FE C8 07  INC ram_07C8_unk,X
C - - - - - 0x00CF5D 03:AF4D: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00CF60 03:AF50: 29 03     AND #$03
C - - - - - 0x00CF62 03:AF52: F0 05     BEQ bra_AF59
C - - - - - 0x00CF64 03:AF54: A9 08     LDA #con_music_08
C - - - - - 0x00CF66 03:AF56: 20 D8 95  JSR sub_0x0095E8_play_music
bra_AF59:
C - - - - - 0x00CF69 03:AF59: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00CF6C 03:AF5C: D0 0B     BNE bra_AF69
C - - - - - 0x00CF6E 03:AF5E: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00CF71 03:AF61: C9 FE     CMP #$FE
C - - - - - 0x00CF73 03:AF63: D0 04     BNE bra_AF69
C - - - - - 0x00CF75 03:AF65: A9 05     LDA #$05
C - - - - - 0x00CF77 03:AF67: D0 1C     BNE bra_AF85    ; jmp
bra_AF69:
C - - - - - 0x00CF79 03:AF69: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00CF7C 03:AF6C: 30 2B     BMI bra_AF99_RTS
C - - - - - 0x00CF7E 03:AF6E: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00CF81 03:AF71: C9 83     CMP #$83
C - - - - - 0x00CF83 03:AF73: F0 24     BEQ bra_AF99_RTS
C - - - - - 0x00CF85 03:AF75: C9 04     CMP #$04
C - - - - - 0x00CF87 03:AF77: F0 0F     BEQ bra_AF88
C - - - - - 0x00CF89 03:AF79: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00CF8C 03:AF7C: 90 1F     BCC bra_AF9D
C - - - - - 0x00CF8E 03:AF7E: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00CF91 03:AF81: D0 17     BNE bra_AF9A
C - - - - - 0x00CF93 03:AF83: A9 03     LDA #$03
bra_AF85:
C - - - - - 0x00CF95 03:AF85: 4C 13 8C  JMP loc_0x008C23
bra_AF88:
C - - - - - 0x00CF98 03:AF88: 20 A3 AF  JSR sub_AFA3
C - - - - - 0x00CF9B 03:AF8B: 4C 47 96  JMP loc_0x009657
bra_AF8E:
C - - - - - 0x00CF9E 03:AF8E: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00CFA1 03:AF91: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00CFA4 03:AF94: A9 0E     LDA #$0E
C - - - - - 0x00CFA6 03:AF96: 9D 20 07  STA ram_0720_obj,X
bra_AF99_RTS:
C - - - - - 0x00CFA9 03:AF99: 60        RTS
bra_AF9A:
C - - - - - 0x00CFAA 03:AF9A: 20 05 9E  JSR sub_0x009E15
bra_AF9D:
C - - - - - 0x00CFAD 03:AF9D: 20 A3 AF  JSR sub_AFA3
C - - - - - 0x00CFB0 03:AFA0: 4C 1E 96  JMP loc_0x00962E



sub_AFA3:
C - - - - - 0x00CFB3 03:AFA3: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00CFB6 03:AFA6: 0A        ASL
C - - - - - 0x00CFB7 03:AFA7: A8        TAY
C - - - - - 0x00CFB8 03:AFA8: B9 B5 AF  LDA tbl_AFB5,Y
C - - - - - 0x00CFBB 03:AFAB: 85 00     STA ram_0000_t08_data
C - - - - - 0x00CFBD 03:AFAD: B9 B6 AF  LDA tbl_AFB5 + $01,Y
C - - - - - 0x00CFC0 03:AFB0: 85 01     STA ram_0000_t08_data + $01
C - - - - - 0x00CFC2 03:AFB2: 4C 62 96  JMP loc_0x009672



tbl_AFB5:
- D 1 - - - 0x00CFC5 03:AFB5: BB AF     .word off_AFBB_00
- D 1 - - - 0x00CFC7 03:AFB7: C3 AF     .word off_AFC3_01
- D 1 - - - 0x00CFC9 03:AFB9: CB AF     .word off_AFCB_02



off_AFBB_00:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00CFCB 03:AFBB: 48        .byte $48, $86, $C1, $01   ; 00 
- D 1 - I - 0x00CFCF 03:AFBF: 25        .byte $25, $85, $00, $FE   ; 01 



off_AFC3_01:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00CFD3 03:AFC3: 08        .byte $08, $03, $81, $01   ; 00 
- D 1 - I - 0x00CFD7 03:AFC7: C0        .byte $C0, $02, $01, $00   ; 01 



off_AFCB_02:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00CFDB 03:AFCB: 79        .byte $79, $85, $C1, $01   ; 00 
- D 1 - I - 0x00CFDF 03:AFCF: D6        .byte $D6, $84, $00, $FE   ; 01 



ofs_016_0x00CFE3_0D:
C - - J - - 0x00CFE3 03:AFD3: 20 DF AF  JSR sub_AFDF
C - - - - - 0x00CFE6 03:AFD6: 20 39 B1  JSR sub_B139
C - - - - - 0x00CFE9 03:AFD9: 20 54 B1  JSR sub_B154
C - - - - - 0x00CFEC 03:AFDC: 4C 10 8E  JMP loc_0x008E20



sub_AFDF:
C - - - - - 0x00CFEF 03:AFDF: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00CFF2 03:AFE2: 0A        ASL
C - - - - - 0x00CFF3 03:AFE3: A8        TAY
C - - - - - 0x00CFF4 03:AFE4: B9 F1 AF  LDA tbl_AFF1,Y
C - - - - - 0x00CFF7 03:AFE7: 85 18     STA ram_0018_t05_jmp
C - - - - - 0x00CFF9 03:AFE9: B9 F2 AF  LDA tbl_AFF1 + $01,Y
C - - - - - 0x00CFFC 03:AFEC: 85 19     STA ram_0018_t05_jmp + $01
C - - - - - 0x00CFFE 03:AFEE: 6C 18 00  JMP (ram_0018_t05_jmp)



tbl_AFF1:
- D 1 - - - 0x00D001 03:AFF1: F9 AF     .word ofs_014_AFF9_00
- D 1 - - - 0x00D003 03:AFF3: 12 B0     .word ofs_014_B012_01
- D 1 - - - 0x00D005 03:AFF5: B0 B0     .word ofs_014_B0B0_02
- D 1 - - - 0x00D007 03:AFF7: F0 B0     .word ofs_014_B0F0_03



ofs_014_AFF9_00:
C - - J - - 0x00D009 03:AFF9: A9 0D     LDA #$0D
C - - - - - 0x00D00B 03:AFFB: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00D00E 03:AFFE: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00D011 03:B001: C9 4D     CMP #$4D
C - - - - - 0x00D013 03:B003: F0 0A     BEQ bra_B00F
C - - - - - 0x00D015 03:B005: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00D018 03:B008: 9D B4 07  STA ram_07B4_unk,X
bra_B00B:
loc_B00B:
C D 1 - - - 0x00D01B 03:B00B: FE 78 07  INC ram_0778_unk,X
bra_B00E_RTS:
C - - - - - 0x00D01E 03:B00E: 60        RTS
bra_B00F:
C - - - - - 0x00D01F 03:B00F: 4C 17 9A  JMP loc_0x009A27



ofs_014_B012_01:
C - - J - - 0x00D022 03:B012: A5 9E     LDA ram_009E
C - - - - - 0x00D024 03:B014: F0 07     BEQ bra_B01D
C - - - - - 0x00D026 03:B016: 8A        TXA
C - - - - - 0x00D027 03:B017: C5 9E     CMP ram_009E
C - - - - - 0x00D029 03:B019: D0 F4     BNE bra_B00F
C - - - - - 0x00D02B 03:B01B: F0 0D     BEQ bra_B02A    ; jmp
bra_B01D:
C - - - - - 0x00D02D 03:B01D: 20 12 B1  JSR sub_B112
C - - - - - 0x00D030 03:B020: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00D033 03:B023: 90 40     BCC bra_B065
C - - - - - 0x00D035 03:B025: 20 77 9E  JSR sub_0x009E87
C - - - - - 0x00D038 03:B028: B0 3B     BCS bra_B065
bra_B02A:
C - - - - - 0x00D03A 03:B02A: 20 12 B1  JSR sub_B112
C - - - - - 0x00D03D 03:B02D: 20 65 9E  JSR sub_0x009E75
C - - - - - 0x00D040 03:B030: 90 33     BCC bra_B065
C - - - - - 0x00D042 03:B032: 20 7C B1  JSR sub_B17C
C - - - - - 0x00D045 03:B035: 90 2E     BCC bra_B065
C - - - - - 0x00D047 03:B037: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D04A 03:B03A: 18        CLC
C - - - - - 0x00D04B 03:B03B: 69 40     ADC #$40
C - - - - - 0x00D04D 03:B03D: C9 70     CMP #$70
C - - - - - 0x00D04F 03:B03F: 90 CD     BCC bra_B00E_RTS
C - - - - - 0x00D051 03:B041: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00D054 03:B044: 18        CLC
C - - - - - 0x00D055 03:B045: 69 20     ADC #$20
C - - - - - 0x00D057 03:B047: C9 40     CMP #$40
C - - - - - 0x00D059 03:B049: 90 C3     BCC bra_B00E_RTS
C - - - - - 0x00D05B 03:B04B: 86 9E     STX ram_009E
C - - - - - 0x00D05D 03:B04D: A9 01     LDA #$01
C - - - - - 0x00D05F 03:B04F: 85 95     STA ram_0095
C - - - - - 0x00D061 03:B051: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00D064 03:B054: 30 B8     BMI bra_B00E_RTS
C - - - - - 0x00D066 03:B056: A0 04     LDY #$04
C - - - - - 0x00D068 03:B058: 20 76 B1  JSR sub_B176
C - - - - - 0x00D06B 03:B05B: F0 02     BEQ bra_B05F
- - - - - - 0x00D06D 03:B05D: A0 08     LDY #$08
bra_B05F:
C - - - - - 0x00D06F 03:B05F: 98        TYA
C - - - - - 0x00D070 03:B060: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00D073 03:B063: D0 A6     BNE bra_B00B
bra_B065:
loc_B065:
C D 1 - - - 0x00D075 03:B065: 20 F4 B0  JSR sub_B0F4
sub_0x00D078:
C - - - - - 0x00D078 03:B068: A0 00     LDY #$00
C - - - - - 0x00D07A 03:B06A: 20 6E B0  JSR sub_B06E
C - - - - - 0x00D07D 03:B06D: C8        INY ; 01
sub_B06E:
C - - - - - 0x00D07E 03:B06E: A5 9A     LDA ram_009A
C - - - - - 0x00D080 03:B070: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D083 03:B073: D0 99     BNE bra_B00E_RTS
C - - - - - 0x00D085 03:B075: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00D088 03:B078: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D08B 03:B07B: D0 29     BNE bra_B0A6
C - - - - - 0x00D08D 03:B07D: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00D090 03:B080: F0 8C     BEQ bra_B00E_RTS
C - - - - - 0x00D092 03:B082: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00D095 03:B085: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D098 03:B088: F0 0B     BEQ bra_B095
C - - - - - 0x00D09A 03:B08A: B9 C8 07  LDA ram_07C8_unk,Y
C - - - - - 0x00D09D 03:B08D: C9 7F     CMP #$7F
C - - - - - 0x00D09F 03:B08F: F0 15     BEQ bra_B0A6
C - - - - - 0x00D0A1 03:B091: C9 4F     CMP #$4F
C - - - - - 0x00D0A3 03:B093: F0 11     BEQ bra_B0A6
bra_B095:
C - - - - - 0x00D0A5 03:B095: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00D0A8 03:B098: 19 AE F5  ORA tbl_0x01F5BE,Y
C - - - - - 0x00D0AB 03:B09B: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00D0AE 03:B09E: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00D0B1 03:B0A1: 29 FE     AND #$FE
C - - - - - 0x00D0B3 03:B0A3: 4C 33 B1  JMP loc_B133
bra_B0A6:
C - - - - - 0x00D0B6 03:B0A6: A5 9A     LDA ram_009A
C - - - - - 0x00D0B8 03:B0A8: 19 AE F5  ORA tbl_0x01F5BE,Y
C - - - - - 0x00D0BB 03:B0AB: 85 9A     STA ram_009A
C - - - - - 0x00D0BD 03:B0AD: 4C 2E B1  JMP loc_B12E



ofs_014_B0B0_02:
C - - J - - 0x00D0C0 03:B0B0: 20 76 B1  JSR sub_B176
C - - - - - 0x00D0C3 03:B0B3: D0 18     BNE bra_B0CD
C - - - - - 0x00D0C5 03:B0B5: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00D0C8 03:B0B8: B0 42     BCS bra_B0FC_RTS
C - - - - - 0x00D0CA 03:B0BA: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00D0CD 03:B0BD: BC 9C 06  LDY ram_069C_obj,X
C - - - - - 0x00D0D0 03:B0C0: B9 0D B1  LDA tbl_B10E - $01,Y
C - - - - - 0x00D0D3 03:B0C3: 18        CLC
C - - - - - 0x00D0D4 03:B0C4: 65 02     ADC ram_0002_t18_array_index
C - - - - - 0x00D0D6 03:B0C6: 85 02     STA ram_0002_t18_array_index
C - - - - - 0x00D0D8 03:B0C8: A9 4D     LDA #$4D
C - - - - - 0x00D0DA 03:B0CA: 20 0E FC  JSR sub_0x01FC1E
bra_B0CD:
C - - - - - 0x00D0DD 03:B0CD: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00D0E0 03:B0D0: D0 64     BNE bra_B136_RTS
C - - - - - 0x00D0E2 03:B0D2: 20 76 B1  JSR sub_B176
C - - - - - 0x00D0E5 03:B0D5: F0 08     BEQ bra_B0DF
- - - - - - 0x00D0E7 03:B0D7: BD BE 07  LDA ram_07BE_unk,X
- - - - - - 0x00D0EA 03:B0DA: F0 03     BEQ bra_B0DF
- - - - - - 0x00D0EC 03:B0DC: DE BE 07  DEC ram_07BE_unk,X
bra_B0DF:
C - - - - - 0x00D0EF 03:B0DF: 20 92 B1  JSR sub_B192
C - - - - - 0x00D0F2 03:B0E2: 20 47 96  JSR sub_0x009657
C - - - - - 0x00D0F5 03:B0E5: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D0F8 03:B0E8: 09 01     ORA #$01
C - - - - - 0x00D0FA 03:B0EA: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D0FD 03:B0ED: 4C 0B B0  JMP loc_B00B



ofs_014_B0F0_03:
C - - J - - 0x00D100 03:B0F0: A5 95     LDA ram_0095
C - - - - - 0x00D102 03:B0F2: D0 09     BNE bra_B0FD
sub_B0F4:
C - - - - - 0x00D104 03:B0F4: 20 F2 95  JSR sub_0x009602
C - - - - - 0x00D107 03:B0F7: A9 01     LDA #$01
C - - - - - 0x00D109 03:B0F9: 9D 78 07  STA ram_0778_unk,X
bra_B0FC_RTS:
C - - - - - 0x00D10C 03:B0FC: 60        RTS
bra_B0FD:
C - - - - - 0x00D10D 03:B0FD: 20 65 9E  JSR sub_0x009E75
C - - - - - 0x00D110 03:B100: 90 09     BCC bra_B10B
C - - - - - 0x00D112 03:B102: 20 05 9E  JSR sub_0x009E15
C - - - - - 0x00D115 03:B105: 20 92 B1  JSR sub_B192
C - - - - - 0x00D118 03:B108: 4C 1E 96  JMP loc_0x00962E
bra_B10B:
C - - - - - 0x00D11B 03:B10B: 4C 65 B0  JMP loc_B065



tbl_B10E:
- D 1 - - - 0x00D11E 03:B10E: 10        .byte $10   ; 01 
- D 1 - - - 0x00D11F 03:B10F: 00        .byte $00   ; 02 
- D 1 - - - 0x00D120 03:B110: F0        .byte $F0   ; 03 
- D 1 - - - 0x00D121 03:B111: E0        .byte $E0   ; 04 



sub_B112:
C - - - - - 0x00D122 03:B112: A0 00     LDY #$00
C - - - - - 0x00D124 03:B114: 20 18 B1  JSR sub_B118
C - - - - - 0x00D127 03:B117: C8        INY
sub_B118:
C - - - - - 0x00D128 03:B118: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00D12B 03:B11B: 39 AE F5  AND tbl_0x01F5BE,Y
C - - - - - 0x00D12E 03:B11E: F0 16     BEQ bra_B136_RTS
C - - - - - 0x00D130 03:B120: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00D133 03:B123: F0 11     BEQ bra_B136_RTS
C - - - - - 0x00D135 03:B125: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00D138 03:B128: 39 37 B1  AND tbl_B137,Y
C - - - - - 0x00D13B 03:B12B: 9D AA 07  STA ram_07AA_unk,X
loc_B12E:
C D 1 - - - 0x00D13E 03:B12E: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00D141 03:B131: 09 01     ORA #$01
loc_B133:
C D 1 - - - 0x00D143 03:B133: 99 00 06  STA ram_0600_obj,Y
bra_B136_RTS:
C - - - - - 0x00D146 03:B136: 60        RTS



tbl_B137:
- D 1 - - - 0x00D147 03:B137: FE        .byte $FE   ; 00 
- - - - - - 0x00D148 03:B138: FD        .byte $FD   ; 01 



sub_B139:
C - - - - - 0x00D149 03:B139: 20 76 B1  JSR sub_B176
C - - - - - 0x00D14C 03:B13C: F0 F8     BEQ bra_B136_RTS
C - - - - - 0x00D14E 03:B13E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D151 03:B141: C9 C0     CMP #$C0
C - - - - - 0x00D153 03:B143: B0 0C     BCS bra_B151
C - - - - - 0x00D155 03:B145: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00D158 03:B148: D0 EC     BNE bra_B136_RTS
C - - - - - 0x00D15A 03:B14A: A0 08     LDY #$08
C - - - - - 0x00D15C 03:B14C: A9 0C     LDA #$0C
C - - - - - 0x00D15E 03:B14E: 4C 62 97  JMP loc_0x009772
bra_B151:
- - - - - - 0x00D161 03:B151: 4C 47 9A  JMP loc_0x009A57



sub_B154:
C - - - - - 0x00D164 03:B154: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00D167 03:B157: F0 0E     BEQ bra_B167
C - - - - - 0x00D169 03:B159: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D16C 03:B15C: 30 D8     BMI bra_B136_RTS
C - - - - - 0x00D16E 03:B15E: 09 80     ORA #$80
C - - - - - 0x00D170 03:B160: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D173 03:B163: A9 44     LDA #con_music_44
C - - - - - 0x00D175 03:B165: D0 0C     BNE bra_B173    ; jmp
bra_B167:
C - - - - - 0x00D177 03:B167: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D17A 03:B16A: 10 CA     BPL bra_B136_RTS
C - - - - - 0x00D17C 03:B16C: 29 7F     AND #$7F
C - - - - - 0x00D17E 03:B16E: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D181 03:B171: A9 48     LDA #con_music_48
bra_B173:
C - - - - - 0x00D183 03:B173: 4C D8 95  JMP loc_0x0095E8_play_music



sub_B176:
C - - - - - 0x00D186 03:B176: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00D189 03:B179: 29 01     AND #$01
C - - - - - 0x00D18B 03:B17B: 60        RTS



sub_B17C:
C - - - - - 0x00D18C 03:B17C: A0 00     LDY #$00
C - - - - - 0x00D18E 03:B17E: 20 84 B1  JSR sub_B184
C - - - - - 0x00D191 03:B181: 90 0E     BCC bra_B191_RTS
C - - - - - 0x00D193 03:B183: C8        INY
sub_B184:
C - - - - - 0x00D194 03:B184: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00D197 03:B187: F0 05     BEQ bra_B18E
C - - - - - 0x00D199 03:B189: B9 C8 07  LDA ram_07C8_unk,Y
C - - - - - 0x00D19C 03:B18C: D0 02     BNE bra_B190
bra_B18E:
C - - - - - 0x00D19E 03:B18E: 38        SEC
C - - - - - 0x00D19F 03:B18F: 60        RTS
bra_B190:
- - - - - - 0x00D1A0 03:B190: 18        CLC
bra_B191_RTS:
- - - - - - 0x00D1A1 03:B191: 60        RTS



sub_B192:
C - - - - - 0x00D1A2 03:B192: BC B4 07  LDY ram_07B4_unk,X
C - - - - - 0x00D1A5 03:B195: B9 A2 B1  LDA tbl_B1A2,Y
C - - - - - 0x00D1A8 03:B198: 85 00     STA ram_0000_t08_data
C - - - - - 0x00D1AA 03:B19A: B9 A3 B1  LDA tbl_B1A2 + $01,Y
C - - - - - 0x00D1AD 03:B19D: 85 01     STA ram_0000_t08_data + $01
C - - - - - 0x00D1AF 03:B19F: 4C 62 96  JMP loc_0x009672



tbl_B1A2:
- - - - - - 0x00D1B2 03:B1A2: AA B1     .word off_B1AA_00
- - - - - - 0x00D1B4 03:B1A4: BA B1     .word off_B1BA_02
- - - - - - 0x00D1B6 03:B1A6: BA B1     .word off_B1BA_04
- D 1 - - - 0x00D1B8 03:B1A8: BA B1     .word off_B1BA_06



off_B1AA_00:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- - - - - - 0x00D1BA 03:B1AA: 00        .byte $00, $00, $C3, $01   ; 00 
- - - - - - 0x00D1BE 03:B1AE: 88        .byte $88, $81, $E3, $02   ; 01 
- - - - - - 0x00D1C2 03:B1B2: CB        .byte $CB, $00, $C3, $03   ; 02 
- - - - - - 0x00D1C6 03:B1B6: 7F        .byte $7F, $80, $00, $FF   ; 03 



off_B1BA_02:
off_B1BA_04:
off_B1BA_06:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 1 - I - 0x00D1CA 03:B1BA: 00        .byte $00, $00, $A3, $01   ; 00 
- D 1 - I - 0x00D1CE 03:B1BE: 7B        .byte $7B, $00, $C3, $02   ; 01 
- D 1 - I - 0x00D1D2 03:B1C2: 88        .byte $88, $81, $E3, $03   ; 02 
- D 1 - I - 0x00D1D6 03:B1C6: CB        .byte $CB, $00, $C3, $04   ; 03 
- D 1 - I - 0x00D1DA 03:B1CA: 7F        .byte $7F, $80, $00, $FF   ; 04 



ofs_016_0x00D1DE_0B:
C - - J - - 0x00D1DE 03:B1CE: 20 D4 B1  JSR sub_B1D4
C - - - - - 0x00D1E1 03:B1D1: 4C 10 8E  JMP loc_0x008E20



sub_B1D4:
C - - - - - 0x00D1E4 03:B1D4: 20 22 B2  JSR sub_B222
C - - - - - 0x00D1E7 03:B1D7: A5 23     LDA ram_frm_cnt
C - - - - - 0x00D1E9 03:B1D9: 29 3F     AND #$3F
C - - - - - 0x00D1EB 03:B1DB: D0 44     BNE bra_B221_RTS
C - - - - - 0x00D1ED 03:B1DD: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00D1F0 03:B1E0: 85 90     STA ram_0090
C - - - - - 0x00D1F2 03:B1E2: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D1F5 03:B1E5: 85 91     STA ram_0091
C - - - - - 0x00D1F7 03:B1E7: A0 03     LDY #$03
C - - - - - 0x00D1F9 03:B1E9: A9 05     LDA #$05
C - - - - - 0x00D1FB 03:B1EB: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x00D1FE 03:B1EE: B0 29     BCS bra_B219
C - - - - - 0x00D200 03:B1F0: 98        TYA
C - - - - - 0x00D201 03:B1F1: AA        TAX
C - - - - - 0x00D202 03:B1F2: A5 90     LDA ram_0090
C - - - - - 0x00D204 03:B1F4: 38        SEC
C - - - - - 0x00D205 03:B1F5: E9 20     SBC #$20
C - - - - - 0x00D207 03:B1F7: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00D20A 03:B1FA: 90 20     BCC bra_B21C
C - - - - - 0x00D20C 03:B1FC: A5 91     LDA ram_0091
C - - - - - 0x00D20E 03:B1FE: 38        SEC
C - - - - - 0x00D20F 03:B1FF: E9 10     SBC #$10
C - - - - - 0x00D211 03:B201: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00D214 03:B204: 90 16     BCC bra_B21C
C - - - - - 0x00D216 03:B206: A9 00     LDA #$00
C - - - - - 0x00D218 03:B208: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00D21B 03:B20B: A9 06     LDA #$06
C - - - - - 0x00D21D 03:B20D: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00D220 03:B210: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00D223 03:B213: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00D226 03:B216: DE B4 07  DEC ram_07B4_unk,X
bra_B219:
C - - - - - 0x00D229 03:B219: 4C 1F B2  JMP loc_B21F
bra_B21C:
C - - - - - 0x00D22C 03:B21C: 20 17 9A  JSR sub_0x009A27
loc_B21F:
C D 1 - - - 0x00D22F 03:B21F: A6 53     LDX ram_0053
bra_B221_RTS:
C - - - - - 0x00D231 03:B221: 60        RTS



sub_B222:
C - - - - - 0x00D232 03:B222: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D235 03:B225: C9 C2     CMP #$C2
C - - - - - 0x00D237 03:B227: B0 0C     BCS bra_B235
C - - - - - 0x00D239 03:B229: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00D23C 03:B22C: D0 F3     BNE bra_B221_RTS
C - - - - - 0x00D23E 03:B22E: A0 08     LDY #$08
C - - - - - 0x00D240 03:B230: A9 03     LDA #$03
C - - - - - 0x00D242 03:B232: 4C 62 97  JMP loc_0x009772
bra_B235:
C - - - - - 0x00D245 03:B235: 4C 47 9A  JMP loc_0x009A57



ofs_016_0x00D248_1A:
C - - J - - 0x00D248 03:B238: 20 3E B2  JSR sub_B23E
C - - - - - 0x00D24B 03:B23B: 4C 10 8E  JMP loc_0x008E20



sub_B23E:
C - - - - - 0x00D24E 03:B23E: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00D251 03:B241: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00D254 03:B244: 30 2A     BMI bra_B270
C - - - - - 0x00D256 03:B246: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00D259 03:B249: D0 21     BNE bra_B26C_RTS
C - - - - - 0x00D25B 03:B24B: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00D25E 03:B24E: 18        CLC
C - - - - - 0x00D25F 03:B24F: 69 40     ADC #$40
C - - - - - 0x00D261 03:B251: C9 50     CMP #$50
C - - - - - 0x00D263 03:B253: 90 17     BCC bra_B26C_RTS
C - - - - - 0x00D265 03:B255: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00D268 03:B258: A4 75     LDY ram_stage
C - - - - - 0x00D26A 03:B25A: D9 6D B2  CMP tbl_B26D,Y
C - - - - - 0x00D26D 03:B25D: D0 33     BNE bra_B292
C - - - - - 0x00D26F 03:B25F: A9 0C     LDA #$0C
C - - - - - 0x00D271 03:B261: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00D274 03:B264: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00D277 03:B267: 20 03 90  JSR sub_0x009013
C - - - - - 0x00D27A 03:B26A: B0 04     BCS bra_B270
bra_B26C_RTS:
C - - - - - 0x00D27C 03:B26C: 60        RTS



tbl_B26D:
- D 1 - - - 0x00D27D 03:B26D: 87        .byte $87   ; 00 stage 1
- - - - - - 0x00D27E 03:B26E: 00        .byte $00   ; 01 stage 2
- D 1 - - - 0x00D27F 03:B26F: 71        .byte $71   ; 02 stage 3



bra_B270:
- - - - - - 0x00D280 03:B270: A9 FF     LDA #$FF
- - - - - - 0x00D282 03:B272: 9D B4 07  STA ram_07B4_unk,X
- - - - - - 0x00D285 03:B275: 20 BA 93  JSR sub_0x0093CA
- - - - - - 0x00D288 03:B278: B0 F2     BCS bra_B26C_RTS
- - - - - - 0x00D28A 03:B27A: A9 02     LDA #$02
- - - - - - 0x00D28C 03:B27C: 20 00 97  JSR sub_0x009710
- - - - - - 0x00D28F 03:B27F: A9 04     LDA #$04
- - - - - - 0x00D291 03:B281: 9D B4 07  STA ram_07B4_unk,X
- - - - - - 0x00D294 03:B284: 99 20 07  STA ram_0720_obj,Y
- - - - - - 0x00D297 03:B287: 20 B9 8F  JSR sub_0x008FC9
- - - - - - 0x00D29A 03:B28A: A4 75     LDY ram_stage
- - - - - - 0x00D29C 03:B28C: B9 98 B2  LDA tbl_B298,Y
- - - - - - 0x00D29F 03:B28F: 4C 0E FC  JMP sub_0x01FC1E
bra_B292:
C - - - - - 0x00D2A2 03:B292: A9 00     LDA #$00
C - - - - - 0x00D2A4 03:B294: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00D2A7 03:B297: 60        RTS



tbl_B298:
- - - - - - 0x00D2A8 03:B298: 97        .byte $97   ; 00 stage 1
- - - - - - 0x00D2A9 03:B299: 00        .byte $00   ; 01 stage 2
- - - - - - 0x00D2AA 03:B29A: 78        .byte $78   ; 02 stage 3



_off019_0x00D2AB_00:
- D 1 - I - 0x00D2AB 03:B29B: 6B B3     .word off_00_B36B_01
- D 1 - I - 0x00D2AD 03:B29D: 6F B3     .word off_00_B36F_02
- D 1 - I - 0x00D2AF 03:B29F: 73 B3     .word off_00_B373_03
- D 1 - I - 0x00D2B1 03:B2A1: 77 B3     .word off_00_B377_04
- - - - - - 0x00D2B3 03:B2A3: 7B B3     .word off_00_B37B_05
- - - - - - 0x00D2B5 03:B2A5: 82 B3     .word off_00_B382_06
- D 1 - I - 0x00D2B7 03:B2A7: 89 B3     .word off_00_B389_07
- D 1 - I - 0x00D2B9 03:B2A9: 8C B3     .word off_00_B38C_08
- D 1 - I - 0x00D2BB 03:B2AB: 8F B3     .word off_00_B38F_09
- D 1 - I - 0x00D2BD 03:B2AD: 92 B3     .word off_00_B392_0A
- D 1 - I - 0x00D2BF 03:B2AF: 95 B3     .word off_00_B395_0B
- D 1 - I - 0x00D2C1 03:B2B1: 98 B3     .word off_00_B398_0C
- D 1 - I - 0x00D2C3 03:B2B3: 9B B3     .word off_00_B39B_0D
- D 1 - I - 0x00D2C5 03:B2B5: 9E B3     .word off_00_B39E_0E
- D 1 - I - 0x00D2C7 03:B2B7: A1 B3     .word off_00_B3A1_0F
- D 1 - I - 0x00D2C9 03:B2B9: A4 B3     .word off_00_B3A4_10
- D 1 - I - 0x00D2CB 03:B2BB: A7 B3     .word off_00_B3A7_11
- D 1 - I - 0x00D2CD 03:B2BD: AA B3     .word off_00_B3AA_12
- - - - - - 0x00D2CF 03:B2BF: AD B3     .word off_00_B3AD_13
- - - - - - 0x00D2D1 03:B2C1: B3 B3     .word off_00_B3B3_14
- - - - - - 0x00D2D3 03:B2C3: B9 B3     .word off_00_B3B9_15
- - - - - - 0x00D2D5 03:B2C5: BF B3     .word off_00_B3BF_16
- D 1 - I - 0x00D2D7 03:B2C7: C5 B3     .word off_00_B3C5_17
- D 1 - I - 0x00D2D9 03:B2C9: C9 B3     .word off_00_B3C9_18
- D 1 - I - 0x00D2DB 03:B2CB: CC B3     .word off_00_B3CC_19
- - - - - - 0x00D2DD 03:B2CD: CF B3     .word off_00_B3CF_1A
- - - - - - 0x00D2DF 03:B2CF: D2 B3     .word off_00_B3D2_1B
- - - - - - 0x00D2E1 03:B2D1: D5 B3     .word off_00_B3D5_1C
- - - - - - 0x00D2E3 03:B2D3: D9 B3     .word off_00_B3D9_1D
- D 1 - I - 0x00D2E5 03:B2D5: DC B3     .word off_00_B3DC_1E
- D 1 - I - 0x00D2E7 03:B2D7: E0 B3     .word off_00_B3E0_1F
- D 1 - I - 0x00D2E9 03:B2D9: E4 B3     .word off_00_B3E4_20
- D 1 - I - 0x00D2EB 03:B2DB: E8 B3     .word off_00_B3E8_21
- D 1 - I - 0x00D2ED 03:B2DD: EC B3     .word off_00_B3EC_22
- D 1 - I - 0x00D2EF 03:B2DF: EF B3     .word off_00_B3EF_23
- D 1 - I - 0x00D2F1 03:B2E1: F2 B3     .word off_00_B3F2_24
- D 1 - I - 0x00D2F3 03:B2E3: F5 B3     .word off_00_B3F5_25
- D 1 - I - 0x00D2F5 03:B2E5: F8 B3     .word off_00_B3F8_26
- D 1 - I - 0x00D2F7 03:B2E7: FB B3     .word off_00_B3FB_27
- D 1 - I - 0x00D2F9 03:B2E9: FE B3     .word off_00_B3FE_28
- D 1 - I - 0x00D2FB 03:B2EB: 01 B4     .word off_00_B401_29
- D 1 - I - 0x00D2FD 03:B2ED: 04 B4     .word off_00_B404_2A
- D 1 - I - 0x00D2FF 03:B2EF: 07 B4     .word off_00_B407_2B
- D 1 - I - 0x00D301 03:B2F1: 0A B4     .word off_00_B40A_2C
- D 1 - I - 0x00D303 03:B2F3: 0D B4     .word off_00_B40D_2D
- D 1 - I - 0x00D305 03:B2F5: 10 B4     .word off_00_B410_2E
- - - - - - 0x00D307 03:B2F7: 14 B4     .word off_00_B414_2F
- - - - - - 0x00D309 03:B2F9: 17 B4     .word off_00_B417_30
- D 1 - I - 0x00D30B 03:B2FB: 1A B4     .word off_00_B41A_31
- D 1 - I - 0x00D30D 03:B2FD: 1D B4     .word off_00_B41D_32
- D 1 - I - 0x00D30F 03:B2FF: 20 B4     .word off_00_B420_33
- D 1 - I - 0x00D311 03:B301: 24 B4     .word off_00_B424_34
- D 1 - I - 0x00D313 03:B303: 27 B4     .word off_00_B427_35
- D 1 - I - 0x00D315 03:B305: 2B B4     .word off_00_B42B_36
- D 1 - I - 0x00D317 03:B307: 2F B4     .word off_00_B42F_37
- D 1 - I - 0x00D319 03:B309: 33 B4     .word off_00_B433_38
- D 1 - I - 0x00D31B 03:B30B: 37 B4     .word off_00_B437_39
- D 1 - I - 0x00D31D 03:B30D: 3A B4     .word off_00_B43A_3A
- D 1 - I - 0x00D31F 03:B30F: 3D B4     .word off_00_B43D_3B
- D 1 - I - 0x00D321 03:B311: 40 B4     .word off_00_B440_3C
- D 1 - I - 0x00D323 03:B313: 43 B4     .word off_00_B443_3D
- D 1 - I - 0x00D325 03:B315: 46 B4     .word off_00_B446_3E
- D 1 - I - 0x00D327 03:B317: 49 B4     .word off_00_B449_3F
- D 1 - I - 0x00D329 03:B319: 4C B4     .word off_00_B44C_40
- D 1 - I - 0x00D32B 03:B31B: 4F B4     .word off_00_B44F_41
- D 1 - I - 0x00D32D 03:B31D: 52 B4     .word off_00_B452_42
- D 1 - I - 0x00D32F 03:B31F: 55 B4     .word off_00_B455_43
- D 1 - I - 0x00D331 03:B321: 58 B4     .word off_00_B458_44
- D 1 - I - 0x00D333 03:B323: 5B B4     .word off_00_B45B_45
- D 1 - I - 0x00D335 03:B325: 5F B4     .word off_00_B45F_46
- D 1 - I - 0x00D337 03:B327: 63 B4     .word off_00_B463_47
- D 1 - I - 0x00D339 03:B329: 66 B4     .word off_00_B466_48
- D 1 - I - 0x00D33B 03:B32B: 69 B4     .word off_00_B469_49
- - - - - - 0x00D33D 03:B32D: 6C B4     .word off_00_B46C_4A
- - - - - - 0x00D33F 03:B32F: 6F B4     .word off_00_B46F_4B
- D 1 - I - 0x00D341 03:B331: 72 B4     .word off_00_B472_4C
- D 1 - I - 0x00D343 03:B333: 76 B4     .word off_00_B476_4D
- - - - - - 0x00D345 03:B335: 7A B4     .word off_00_B47A_4E
- D 1 - I - 0x00D347 03:B337: 7E B4     .word off_00_B47E_4F
- D 1 - I - 0x00D349 03:B339: 82 B4     .word off_00_B482_50
- D 1 - I - 0x00D34B 03:B33B: 85 B4     .word off_00_B485_51
- D 1 - I - 0x00D34D 03:B33D: 88 B4     .word off_00_B488_52
- D 1 - I - 0x00D34F 03:B33F: 8B B4     .word off_00_B48B_53
- D 1 - I - 0x00D351 03:B341: 8E B4     .word off_00_B48E_54
- D 1 - I - 0x00D353 03:B343: 91 B4     .word off_00_B491_55
- D 1 - I - 0x00D355 03:B345: 94 B4     .word off_00_B494_56
- D 1 - I - 0x00D357 03:B347: 97 B4     .word off_00_B497_57
- D 1 - I - 0x00D359 03:B349: 9A B4     .word off_00_B49A_58
- D 1 - I - 0x00D35B 03:B34B: 9D B4     .word off_00_B49D_59
- - - - - - 0x00D35D 03:B34D: A0 B4     .word off_00_B4A0_5A
- D 1 - I - 0x00D35F 03:B34F: A3 B4     .word off_00_B4A3_5B
- D 1 - I - 0x00D361 03:B351: A6 B4     .word off_00_B4A6_5C
- D 1 - I - 0x00D363 03:B353: AA B4     .word off_00_B4AA_5D
- D 1 - I - 0x00D365 03:B355: AE B4     .word off_00_B4AE_5E
- D 1 - I - 0x00D367 03:B357: B1 B4     .word off_00_B4B1_5F
- D 1 - I - 0x00D369 03:B359: B4 B4     .word off_00_B4B4_60
- D 1 - I - 0x00D36B 03:B35B: B7 B4     .word off_00_B4B7_61
- D 1 - I - 0x00D36D 03:B35D: BA B4     .word off_00_B4BA_62
- - - - - - 0x00D36F 03:B35F: BE B4     .word off_00_B4BE_63
- - - - - - 0x00D371 03:B361: C2 B4     .word off_00_B4C2_64
- D 1 - I - 0x00D373 03:B363: C5 B4     .word off_00_B4C5_65
- D 1 - I - 0x00D375 03:B365: C8 B4     .word off_00_B4C8_66
- - - - - - 0x00D377 03:B367: CB B4     .word off_00_B4CB_67
- - - - - - 0x00D379 03:B369: CE B4     .word off_00_B4CE_68



off_00_B36B_01:
- D 1 - I - 0x00D37B 03:B36B: FC        .byte $FC   ; 
- D 1 - I - 0x00D37C 03:B36C: 07        .byte $07   ; 
- D 1 - I - 0x00D37D 03:B36D: 04        .byte $04   ; 
- D 1 - I - 0x00D37E 03:B36E: 01        .byte $01   ; 



off_00_B36F_02:
- D 1 - I - 0x00D37F 03:B36F: FC        .byte $FC   ; 
- D 1 - I - 0x00D380 03:B370: 07        .byte $07   ; 
- D 1 - I - 0x00D381 03:B371: 04        .byte $04   ; 
- D 1 - I - 0x00D382 03:B372: 05        .byte $05   ; 



off_00_B373_03:
- D 1 - I - 0x00D383 03:B373: FC        .byte $FC   ; 
- D 1 - I - 0x00D384 03:B374: 07        .byte $07   ; 
- D 1 - I - 0x00D385 03:B375: 04        .byte $04   ; 
- D 1 - I - 0x00D386 03:B376: 09        .byte $09   ; 



off_00_B377_04:
- D 1 - I - 0x00D387 03:B377: FC        .byte $FC   ; 
- D 1 - I - 0x00D388 03:B378: 07        .byte $07   ; 
- D 1 - I - 0x00D389 03:B379: 04        .byte $04   ; 
- D 1 - I - 0x00D38A 03:B37A: 0D        .byte $0D   ; 



off_00_B37B_05:
- - - - - - 0x00D38B 03:B37B: FD        .byte $FD   ; 
- - - - - - 0x00D38C 03:B37C: 05        .byte $05   ; 
- - - - - - 0x00D38D 03:B37D: 11        .byte $11   ; 
- - - - - - 0x00D38E 03:B37E: 02        .byte $02   ; 
- - - - - - 0x00D38F 03:B37F: 03        .byte $03   ; 
- - - - - - 0x00D390 03:B380: 12        .byte $12   ; 
- - - - - - 0x00D391 03:B381: FF        .byte $FF   ; 



off_00_B382_06:
- - - - - - 0x00D392 03:B382: FD        .byte $FD   ; 
- - - - - - 0x00D393 03:B383: 05        .byte $05   ; 
- - - - - - 0x00D394 03:B384: 13        .byte $13   ; 
- - - - - - 0x00D395 03:B385: 06        .byte $06   ; 
- - - - - - 0x00D396 03:B386: 07        .byte $07   ; 
- - - - - - 0x00D397 03:B387: 14        .byte $14   ; 
- - - - - - 0x00D398 03:B388: FF        .byte $FF   ; 



off_00_B389_07:
- D 1 - I - 0x00D399 03:B389: 16        .byte $16   ; 
- D 1 - I - 0x00D39A 03:B38A: 04        .byte $04   ; 
- D 1 - I - 0x00D39B 03:B38B: FF        .byte $FF   ; 



off_00_B38C_08:
- D 1 - I - 0x00D39C 03:B38C: 15        .byte $15   ; 
- D 1 - I - 0x00D39D 03:B38D: 08        .byte $08   ; 
- D 1 - I - 0x00D39E 03:B38E: FF        .byte $FF   ; 



off_00_B38F_09:
- D 1 - I - 0x00D39F 03:B38F: 18        .byte $18   ; 
- D 1 - I - 0x00D3A0 03:B390: 04        .byte $04   ; 
- - - - - - 0x00D3A1 03:B391: FF        .byte $FF   ; 



off_00_B392_0A:
- D 1 - I - 0x00D3A2 03:B392: 17        .byte $17   ; 
- D 1 - I - 0x00D3A3 03:B393: 08        .byte $08   ; 
- D 1 - I - 0x00D3A4 03:B394: FF        .byte $FF   ; 



off_00_B395_0B:
- D 1 - I - 0x00D3A5 03:B395: 1A        .byte $1A   ; 
- D 1 - I - 0x00D3A6 03:B396: 05        .byte $05   ; 
- D 1 - I - 0x00D3A7 03:B397: FF        .byte $FF   ; 



off_00_B398_0C:
- D 1 - I - 0x00D3A8 03:B398: 1C        .byte $1C   ; 
- D 1 - I - 0x00D3A9 03:B399: 05        .byte $05   ; 
- D 1 - I - 0x00D3AA 03:B39A: FF        .byte $FF   ; 



off_00_B39B_0D:
- D 1 - I - 0x00D3AB 03:B39B: 19        .byte $19   ; 
- D 1 - I - 0x00D3AC 03:B39C: 08        .byte $08   ; 
- D 1 - I - 0x00D3AD 03:B39D: FF        .byte $FF   ; 



off_00_B39E_0E:
- D 1 - I - 0x00D3AE 03:B39E: 1B        .byte $1B   ; 
- D 1 - I - 0x00D3AF 03:B39F: 08        .byte $08   ; 
- D 1 - I - 0x00D3B0 03:B3A0: FF        .byte $FF   ; 



off_00_B3A1_0F:
- D 1 - I - 0x00D3B1 03:B3A1: 1E        .byte $1E   ; 
- D 1 - I - 0x00D3B2 03:B3A2: 05        .byte $05   ; 
- - - - - - 0x00D3B3 03:B3A3: FF        .byte $FF   ; 



off_00_B3A4_10:
- D 1 - I - 0x00D3B4 03:B3A4: 20        .byte $20   ; 
- D 1 - I - 0x00D3B5 03:B3A5: 05        .byte $05   ; 
- D 1 - I - 0x00D3B6 03:B3A6: FF        .byte $FF   ; 



off_00_B3A7_11:
- D 1 - I - 0x00D3B7 03:B3A7: 1D        .byte $1D   ; 
- D 1 - I - 0x00D3B8 03:B3A8: 08        .byte $08   ; 
- D 1 - I - 0x00D3B9 03:B3A9: FF        .byte $FF   ; 



off_00_B3AA_12:
- D 1 - I - 0x00D3BA 03:B3AA: 1F        .byte $1F   ; 
- D 1 - I - 0x00D3BB 03:B3AB: 08        .byte $08   ; 
- D 1 - I - 0x00D3BC 03:B3AC: FF        .byte $FF   ; 



off_00_B3AD_13:
- - - - - - 0x00D3BD 03:B3AD: FD        .byte $FD   ; 
- - - - - - 0x00D3BE 03:B3AE: 05        .byte $05   ; 
- - - - - - 0x00D3BF 03:B3AF: 1A        .byte $1A   ; 
- - - - - - 0x00D3C0 03:B3B0: 21        .byte $21   ; 
- - - - - - 0x00D3C1 03:B3B1: 22        .byte $22   ; 
- - - - - - 0x00D3C2 03:B3B2: FF        .byte $FF   ; 



off_00_B3B3_14:
- - - - - - 0x00D3C3 03:B3B3: FD        .byte $FD   ; 
- - - - - - 0x00D3C4 03:B3B4: 05        .byte $05   ; 
- - - - - - 0x00D3C5 03:B3B5: 1C        .byte $1C   ; 
- - - - - - 0x00D3C6 03:B3B6: 23        .byte $23   ; 
- - - - - - 0x00D3C7 03:B3B7: 24        .byte $24   ; 
- - - - - - 0x00D3C8 03:B3B8: FF        .byte $FF   ; 



off_00_B3B9_15:
- - - - - - 0x00D3C9 03:B3B9: FD        .byte $FD   ; 
- - - - - - 0x00D3CA 03:B3BA: 05        .byte $05   ; 
- - - - - - 0x00D3CB 03:B3BB: 1E        .byte $1E   ; 
- - - - - - 0x00D3CC 03:B3BC: 25        .byte $25   ; 
- - - - - - 0x00D3CD 03:B3BD: 26        .byte $26   ; 
- - - - - - 0x00D3CE 03:B3BE: FF        .byte $FF   ; 



off_00_B3BF_16:
- - - - - - 0x00D3CF 03:B3BF: FD        .byte $FD   ; 
- - - - - - 0x00D3D0 03:B3C0: 05        .byte $05   ; 
- - - - - - 0x00D3D1 03:B3C1: 20        .byte $20   ; 
- - - - - - 0x00D3D2 03:B3C2: 27        .byte $27   ; 
- - - - - - 0x00D3D3 03:B3C3: 28        .byte $28   ; 
- - - - - - 0x00D3D4 03:B3C4: FF        .byte $FF   ; 



off_00_B3C5_17:
- D 1 - I - 0x00D3D5 03:B3C5: FC        .byte $FC   ; 
- D 1 - I - 0x00D3D6 03:B3C6: 03        .byte $03   ; 
- D 1 - I - 0x00D3D7 03:B3C7: 04        .byte $04   ; 
- D 1 - I - 0x00D3D8 03:B3C8: 29        .byte $29   ; 



off_00_B3C9_18:
- D 1 - I - 0x00D3D9 03:B3C9: 2D        .byte $2D   ; 
- D 1 - I - 0x00D3DA 03:B3CA: 07        .byte $07   ; 
- D 1 - I - 0x00D3DB 03:B3CB: FF        .byte $FF   ; 



off_00_B3CC_19:
- D 1 - I - 0x00D3DC 03:B3CC: 2E        .byte $2E   ; 
- D 1 - I - 0x00D3DD 03:B3CD: 05        .byte $05   ; 
- D 1 - I - 0x00D3DE 03:B3CE: FF        .byte $FF   ; 



off_00_B3CF_1A:
- - - - - - 0x00D3DF 03:B3CF: 2F        .byte $2F   ; 
- - - - - - 0x00D3E0 03:B3D0: 05        .byte $05   ; 
- - - - - - 0x00D3E1 03:B3D1: FF        .byte $FF   ; 



off_00_B3D2_1B:
- - - - - - 0x00D3E2 03:B3D2: 30        .byte $30   ; 
- - - - - - 0x00D3E3 03:B3D3: 05        .byte $05   ; 
- - - - - - 0x00D3E4 03:B3D4: FF        .byte $FF   ; 



off_00_B3D5_1C:
- - - - - - 0x00D3E5 03:B3D5: FC        .byte $FC   ; 
- - - - - - 0x00D3E6 03:B3D6: 0A        .byte $0A   ; 
- - - - - - 0x00D3E7 03:B3D7: 02        .byte $02   ; 
- - - - - - 0x00D3E8 03:B3D8: 31        .byte $31   ; 



off_00_B3D9_1D:
- - - - - - 0x00D3E9 03:B3D9: 31        .byte $31   ; 
- - - - - - 0x00D3EA 03:B3DA: 05        .byte $05   ; 
- - - - - - 0x00D3EB 03:B3DB: FF        .byte $FF   ; 



off_00_B3DC_1E:
- D 1 - I - 0x00D3EC 03:B3DC: FC        .byte $FC   ; 
- D 1 - I - 0x00D3ED 03:B3DD: 07        .byte $07   ; 
- D 1 - I - 0x00D3EE 03:B3DE: 04        .byte $04   ; 
- D 1 - I - 0x00D3EF 03:B3DF: 37        .byte $37   ; 



off_00_B3E0_1F:
- D 1 - I - 0x00D3F0 03:B3E0: FC        .byte $FC   ; 
- D 1 - I - 0x00D3F1 03:B3E1: 07        .byte $07   ; 
- D 1 - I - 0x00D3F2 03:B3E2: 04        .byte $04   ; 
- D 1 - I - 0x00D3F3 03:B3E3: 3B        .byte $3B   ; 



off_00_B3E4_20:
- D 1 - I - 0x00D3F4 03:B3E4: FC        .byte $FC   ; 
- D 1 - I - 0x00D3F5 03:B3E5: 07        .byte $07   ; 
- D 1 - I - 0x00D3F6 03:B3E6: 04        .byte $04   ; 
- D 1 - I - 0x00D3F7 03:B3E7: 3F        .byte $3F   ; 



off_00_B3E8_21:
- D 1 - I - 0x00D3F8 03:B3E8: FC        .byte $FC   ; 
- D 1 - I - 0x00D3F9 03:B3E9: 07        .byte $07   ; 
- D 1 - I - 0x00D3FA 03:B3EA: 04        .byte $04   ; 
- D 1 - I - 0x00D3FB 03:B3EB: 43        .byte $43   ; 



off_00_B3EC_22:
- D 1 - I - 0x00D3FC 03:B3EC: 48        .byte $48   ; 
- D 1 - I - 0x00D3FD 03:B3ED: 05        .byte $05   ; 
- - - - - - 0x00D3FE 03:B3EE: FF        .byte $FF   ; 



off_00_B3EF_23:
- D 1 - I - 0x00D3FF 03:B3EF: 4A        .byte $4A   ; 
- D 1 - I - 0x00D400 03:B3F0: 05        .byte $05   ; 
- - - - - - 0x00D401 03:B3F1: FF        .byte $FF   ; 



off_00_B3F2_24:
- D 1 - I - 0x00D402 03:B3F2: 47        .byte $47   ; 
- D 1 - I - 0x00D403 03:B3F3: 08        .byte $08   ; 
- - - - - - 0x00D404 03:B3F4: FF        .byte $FF   ; 



off_00_B3F5_25:
- D 1 - I - 0x00D405 03:B3F5: 49        .byte $49   ; 
- D 1 - I - 0x00D406 03:B3F6: 08        .byte $08   ; 
- D 1 - I - 0x00D407 03:B3F7: FF        .byte $FF   ; 



off_00_B3F8_26:
- D 1 - I - 0x00D408 03:B3F8: 4C        .byte $4C   ; 
- D 1 - I - 0x00D409 03:B3F9: 07        .byte $07   ; 
- D 1 - I - 0x00D40A 03:B3FA: FF        .byte $FF   ; 



off_00_B3FB_27:
- D 1 - I - 0x00D40B 03:B3FB: 4E        .byte $4E   ; 
- D 1 - I - 0x00D40C 03:B3FC: 07        .byte $07   ; 
- - - - - - 0x00D40D 03:B3FD: FF        .byte $FF   ; 



off_00_B3FE_28:
- D 1 - I - 0x00D40E 03:B3FE: 4B        .byte $4B   ; 
- D 1 - I - 0x00D40F 03:B3FF: 08        .byte $08   ; 
- D 1 - I - 0x00D410 03:B400: FF        .byte $FF   ; 



off_00_B401_29:
- D 1 - I - 0x00D411 03:B401: 4D        .byte $4D   ; 
- D 1 - I - 0x00D412 03:B402: 08        .byte $08   ; 
- D 1 - I - 0x00D413 03:B403: FF        .byte $FF   ; 



off_00_B404_2A:
- D 1 - I - 0x00D414 03:B404: 50        .byte $50   ; 
- D 1 - I - 0x00D415 03:B405: 07        .byte $07   ; 
- - - - - - 0x00D416 03:B406: FF        .byte $FF   ; 



off_00_B407_2B:
- D 1 - I - 0x00D417 03:B407: 52        .byte $52   ; 
- D 1 - I - 0x00D418 03:B408: 07        .byte $07   ; 
- - - - - - 0x00D419 03:B409: FF        .byte $FF   ; 



off_00_B40A_2C:
- D 1 - I - 0x00D41A 03:B40A: 4F        .byte $4F   ; 
- D 1 - I - 0x00D41B 03:B40B: 08        .byte $08   ; 
- - - - - - 0x00D41C 03:B40C: FF        .byte $FF   ; 



off_00_B40D_2D:
- D 1 - I - 0x00D41D 03:B40D: 51        .byte $51   ; 
- D 1 - I - 0x00D41E 03:B40E: 08        .byte $08   ; 
- D 1 - I - 0x00D41F 03:B40F: FF        .byte $FF   ; 



off_00_B410_2E:
- D 1 - I - 0x00D420 03:B410: FC        .byte $FC   ; 
- D 1 - I - 0x00D421 03:B411: 03        .byte $03   ; 
- D 1 - I - 0x00D422 03:B412: 04        .byte $04   ; 
- D 1 - I - 0x00D423 03:B413: 53        .byte $53   ; 



off_00_B414_2F:
- - - - - - 0x00D424 03:B414: 57        .byte $57   ; 
- - - - - - 0x00D425 03:B415: 08        .byte $08   ; 
- - - - - - 0x00D426 03:B416: FF        .byte $FF   ; 



off_00_B417_30:
- - - - - - 0x00D427 03:B417: 58        .byte $58   ; 
- - - - - - 0x00D428 03:B418: 08        .byte $08   ; 
- - - - - - 0x00D429 03:B419: FF        .byte $FF   ; 



off_00_B41A_31:
- D 1 - I - 0x00D42A 03:B41A: 59        .byte $59   ; 
- D 1 - I - 0x00D42B 03:B41B: 08        .byte $08   ; 
- D 1 - I - 0x00D42C 03:B41C: FF        .byte $FF   ; 



off_00_B41D_32:
- D 1 - I - 0x00D42D 03:B41D: 5A        .byte $5A   ; 
- D 1 - I - 0x00D42E 03:B41E: 08        .byte $08   ; 
- D 1 - I - 0x00D42F 03:B41F: FF        .byte $FF   ; 



off_00_B420_33:
- D 1 - I - 0x00D430 03:B420: FC        .byte $FC   ; 
- D 1 - I - 0x00D431 03:B421: 0A        .byte $0A   ; 
- D 1 - I - 0x00D432 03:B422: 02        .byte $02   ; 
- D 1 - I - 0x00D433 03:B423: 5B        .byte $5B   ; 



off_00_B424_34:
- D 1 - I - 0x00D434 03:B424: 5B        .byte $5B   ; 
- D 1 - I - 0x00D435 03:B425: 08        .byte $08   ; 
- D 1 - I - 0x00D436 03:B426: FF        .byte $FF   ; 



off_00_B427_35:
- D 1 - I - 0x00D437 03:B427: FC        .byte $FC   ; 
- D 1 - I - 0x00D438 03:B428: 07        .byte $07   ; 
- D 1 - I - 0x00D439 03:B429: 04        .byte $04   ; 
- D 1 - I - 0x00D43A 03:B42A: 61        .byte $61   ; 



off_00_B42B_36:
- D 1 - I - 0x00D43B 03:B42B: FC        .byte $FC   ; 
- D 1 - I - 0x00D43C 03:B42C: 07        .byte $07   ; 
- D 1 - I - 0x00D43D 03:B42D: 04        .byte $04   ; 
- D 1 - I - 0x00D43E 03:B42E: 65        .byte $65   ; 



off_00_B42F_37:
- D 1 - I - 0x00D43F 03:B42F: FC        .byte $FC   ; 
- D 1 - I - 0x00D440 03:B430: 07        .byte $07   ; 
- D 1 - I - 0x00D441 03:B431: 04        .byte $04   ; 
- D 1 - I - 0x00D442 03:B432: 69        .byte $69   ; 



off_00_B433_38:
- D 1 - I - 0x00D443 03:B433: FC        .byte $FC   ; 
- D 1 - I - 0x00D444 03:B434: 07        .byte $07   ; 
- D 1 - I - 0x00D445 03:B435: 04        .byte $04   ; 
- D 1 - I - 0x00D446 03:B436: 6D        .byte $6D   ; 



off_00_B437_39:
- D 1 - I - 0x00D447 03:B437: 71        .byte $71   ; 
- D 1 - I - 0x00D448 03:B438: 05        .byte $05   ; 
- D 1 - I - 0x00D449 03:B439: FF        .byte $FF   ; 



off_00_B43A_3A:
- D 1 - I - 0x00D44A 03:B43A: 72        .byte $72   ; 
- D 1 - I - 0x00D44B 03:B43B: 05        .byte $05   ; 
- D 1 - I - 0x00D44C 03:B43C: FF        .byte $FF   ; 



off_00_B43D_3B:
- D 1 - I - 0x00D44D 03:B43D: 73        .byte $73   ; 
- D 1 - I - 0x00D44E 03:B43E: 05        .byte $05   ; 
- D 1 - I - 0x00D44F 03:B43F: FF        .byte $FF   ; 



off_00_B440_3C:
- D 1 - I - 0x00D450 03:B440: 74        .byte $74   ; 
- D 1 - I - 0x00D451 03:B441: 05        .byte $05   ; 
- D 1 - I - 0x00D452 03:B442: FF        .byte $FF   ; 



off_00_B443_3D:
- D 1 - I - 0x00D453 03:B443: 75        .byte $75   ; 
- D 1 - I - 0x00D454 03:B444: 05        .byte $05   ; 
- D 1 - I - 0x00D455 03:B445: FF        .byte $FF   ; 



off_00_B446_3E:
- D 1 - I - 0x00D456 03:B446: 76        .byte $76   ; 
- D 1 - I - 0x00D457 03:B447: 05        .byte $05   ; 
- - - - - - 0x00D458 03:B448: FF        .byte $FF   ; 



off_00_B449_3F:
- D 1 - I - 0x00D459 03:B449: 77        .byte $77   ; 
- D 1 - I - 0x00D45A 03:B44A: 05        .byte $05   ; 
- D 1 - I - 0x00D45B 03:B44B: FF        .byte $FF   ; 



off_00_B44C_40:
- D 1 - I - 0x00D45C 03:B44C: 78        .byte $78   ; 
- D 1 - I - 0x00D45D 03:B44D: 05        .byte $05   ; 
- D 1 - I - 0x00D45E 03:B44E: FF        .byte $FF   ; 



off_00_B44F_41:
- D 1 - I - 0x00D45F 03:B44F: 79        .byte $79   ; 
- D 1 - I - 0x00D460 03:B450: 05        .byte $05   ; 
- D 1 - I - 0x00D461 03:B451: FF        .byte $FF   ; 



off_00_B452_42:
- D 1 - I - 0x00D462 03:B452: 7A        .byte $7A   ; 
- D 1 - I - 0x00D463 03:B453: 05        .byte $05   ; 
- - - - - - 0x00D464 03:B454: FF        .byte $FF   ; 



off_00_B455_43:
- D 1 - I - 0x00D465 03:B455: 7B        .byte $7B   ; 
- D 1 - I - 0x00D466 03:B456: 05        .byte $05   ; 
- D 1 - I - 0x00D467 03:B457: FF        .byte $FF   ; 



off_00_B458_44:
- D 1 - I - 0x00D468 03:B458: 7C        .byte $7C   ; 
- D 1 - I - 0x00D469 03:B459: 05        .byte $05   ; 
- - - - - - 0x00D46A 03:B45A: FF        .byte $FF   ; 



off_00_B45B_45:
- D 1 - I - 0x00D46B 03:B45B: FC        .byte $FC   ; 
- D 1 - I - 0x00D46C 03:B45C: 03        .byte $03   ; 
- D 1 - I - 0x00D46D 03:B45D: 04        .byte $04   ; 
- D 1 - I - 0x00D46E 03:B45E: 7D        .byte $7D   ; 



off_00_B45F_46:
- D 1 - I - 0x00D46F 03:B45F: FC        .byte $FC   ; 
- D 1 - I - 0x00D470 03:B460: 0A        .byte $0A   ; 
- D 1 - I - 0x00D471 03:B461: 02        .byte $02   ; 
- D 1 - I - 0x00D472 03:B462: 85        .byte $85   ; 



off_00_B463_47:
- D 1 - I - 0x00D473 03:B463: 85        .byte $85   ; 
- D 1 - I - 0x00D474 03:B464: 05        .byte $05   ; 
- D 1 - I - 0x00D475 03:B465: FF        .byte $FF   ; 



off_00_B466_48:
- D 1 - I - 0x00D476 03:B466: 87        .byte $87   ; 
- D 1 - I - 0x00D477 03:B467: 05        .byte $05   ; 
- D 1 - I - 0x00D478 03:B468: FF        .byte $FF   ; 



off_00_B469_49:
- D 1 - I - 0x00D479 03:B469: 88        .byte $88   ; 
- D 1 - I - 0x00D47A 03:B46A: 05        .byte $05   ; 
- D 1 - I - 0x00D47B 03:B46B: FF        .byte $FF   ; 



off_00_B46C_4A:
- - - - - - 0x00D47C 03:B46C: 89        .byte $89   ; 
- - - - - - 0x00D47D 03:B46D: 05        .byte $05   ; 
- - - - - - 0x00D47E 03:B46E: FF        .byte $FF   ; 



off_00_B46F_4B:
- - - - - - 0x00D47F 03:B46F: 8A        .byte $8A   ; 
- - - - - - 0x00D480 03:B470: 05        .byte $05   ; 
- - - - - - 0x00D481 03:B471: FF        .byte $FF   ; 



off_00_B472_4C:
- D 1 - I - 0x00D482 03:B472: FC        .byte $FC   ; 
- D 1 - I - 0x00D483 03:B473: 07        .byte $07   ; 
- D 1 - I - 0x00D484 03:B474: 04        .byte $04   ; 
- D 1 - I - 0x00D485 03:B475: 8B        .byte $8B   ; 



off_00_B476_4D:
- D 1 - I - 0x00D486 03:B476: FC        .byte $FC   ; 
- D 1 - I - 0x00D487 03:B477: 07        .byte $07   ; 
- D 1 - I - 0x00D488 03:B478: 04        .byte $04   ; 
- D 1 - I - 0x00D489 03:B479: 8F        .byte $8F   ; 



off_00_B47A_4E:
- - - - - - 0x00D48A 03:B47A: FC        .byte $FC   ; 
- - - - - - 0x00D48B 03:B47B: 07        .byte $07   ; 
- - - - - - 0x00D48C 03:B47C: 04        .byte $04   ; 
- - - - - - 0x00D48D 03:B47D: 93        .byte $93   ; 



off_00_B47E_4F:
- D 1 - I - 0x00D48E 03:B47E: FC        .byte $FC   ; 
- D 1 - I - 0x00D48F 03:B47F: 07        .byte $07   ; 
- D 1 - I - 0x00D490 03:B480: 04        .byte $04   ; 
- D 1 - I - 0x00D491 03:B481: 97        .byte $97   ; 



off_00_B482_50:
- D 1 - I - 0x00D492 03:B482: 9B        .byte $9B   ; 
- D 1 - I - 0x00D493 03:B483: 05        .byte $05   ; 
- D 1 - I - 0x00D494 03:B484: FF        .byte $FF   ; 



off_00_B485_51:
- D 1 - I - 0x00D495 03:B485: 9C        .byte $9C   ; 
- D 1 - I - 0x00D496 03:B486: 05        .byte $05   ; 
- - - - - - 0x00D497 03:B487: FF        .byte $FF   ; 



off_00_B488_52:
- D 1 - I - 0x00D498 03:B488: 9D        .byte $9D   ; 
- D 1 - I - 0x00D499 03:B489: 05        .byte $05   ; 
- D 1 - I - 0x00D49A 03:B48A: FF        .byte $FF   ; 



off_00_B48B_53:
- D 1 - I - 0x00D49B 03:B48B: 9E        .byte $9E   ; 
- D 1 - I - 0x00D49C 03:B48C: 05        .byte $05   ; 
- - - - - - 0x00D49D 03:B48D: FF        .byte $FF   ; 



off_00_B48E_54:
- D 1 - I - 0x00D49E 03:B48E: 9F        .byte $9F   ; 
- D 1 - I - 0x00D49F 03:B48F: 05        .byte $05   ; 
- D 1 - I - 0x00D4A0 03:B490: FF        .byte $FF   ; 



off_00_B491_55:
- D 1 - I - 0x00D4A1 03:B491: A0        .byte $A0   ; 
- D 1 - I - 0x00D4A2 03:B492: 05        .byte $05   ; 
- - - - - - 0x00D4A3 03:B493: FF        .byte $FF   ; 



off_00_B494_56:
- D 1 - I - 0x00D4A4 03:B494: A1        .byte $A1   ; 
- D 1 - I - 0x00D4A5 03:B495: 05        .byte $05   ; 
- - - - - - 0x00D4A6 03:B496: FF        .byte $FF   ; 



off_00_B497_57:
- D 1 - I - 0x00D4A7 03:B497: A2        .byte $A2   ; 
- D 1 - I - 0x00D4A8 03:B498: 05        .byte $05   ; 
- - - - - - 0x00D4A9 03:B499: FF        .byte $FF   ; 



off_00_B49A_58:
- D 1 - I - 0x00D4AA 03:B49A: A3        .byte $A3   ; 
- D 1 - I - 0x00D4AB 03:B49B: 05        .byte $05   ; 
- D 1 - I - 0x00D4AC 03:B49C: FF        .byte $FF   ; 



off_00_B49D_59:
- D 1 - I - 0x00D4AD 03:B49D: A4        .byte $A4   ; 
- D 1 - I - 0x00D4AE 03:B49E: 05        .byte $05   ; 
- - - - - - 0x00D4AF 03:B49F: FF        .byte $FF   ; 



off_00_B4A0_5A:
- - - - - - 0x00D4B0 03:B4A0: A5        .byte $A5   ; 
- - - - - - 0x00D4B1 03:B4A1: 05        .byte $05   ; 
- - - - - - 0x00D4B2 03:B4A2: FF        .byte $FF   ; 



off_00_B4A3_5B:
- D 1 - I - 0x00D4B3 03:B4A3: A6        .byte $A6   ; 
- D 1 - I - 0x00D4B4 03:B4A4: 05        .byte $05   ; 
- - - - - - 0x00D4B5 03:B4A5: FF        .byte $FF   ; 



off_00_B4A6_5C:
- D 1 - I - 0x00D4B6 03:B4A6: FC        .byte $FC   ; 
- D 1 - I - 0x00D4B7 03:B4A7: 07        .byte $07   ; 
- D 1 - I - 0x00D4B8 03:B4A8: 04        .byte $04   ; 
- D 1 - I - 0x00D4B9 03:B4A9: A7        .byte $A7   ; 



off_00_B4AA_5D:
- D 1 - I - 0x00D4BA 03:B4AA: FC        .byte $FC   ; 
- D 1 - I - 0x00D4BB 03:B4AB: 07        .byte $07   ; 
- D 1 - I - 0x00D4BC 03:B4AC: 04        .byte $04   ; 
- D 1 - I - 0x00D4BD 03:B4AD: AB        .byte $AB   ; 



off_00_B4AE_5E:
- D 1 - I - 0x00D4BE 03:B4AE: AF        .byte $AF   ; 
- D 1 - I - 0x00D4BF 03:B4AF: 05        .byte $05   ; 
- D 1 - I - 0x00D4C0 03:B4B0: FF        .byte $FF   ; 



off_00_B4B1_5F:
- D 1 - I - 0x00D4C1 03:B4B1: B0        .byte $B0   ; 
- D 1 - I - 0x00D4C2 03:B4B2: 05        .byte $05   ; 
- D 1 - I - 0x00D4C3 03:B4B3: FF        .byte $FF   ; 



off_00_B4B4_60:
- D 1 - I - 0x00D4C4 03:B4B4: B1        .byte $B1   ; 
- D 1 - I - 0x00D4C5 03:B4B5: 05        .byte $05   ; 
- D 1 - I - 0x00D4C6 03:B4B6: FF        .byte $FF   ; 



off_00_B4B7_61:
- D 1 - I - 0x00D4C7 03:B4B7: B2        .byte $B2   ; 
- D 1 - I - 0x00D4C8 03:B4B8: 05        .byte $05   ; 
- D 1 - I - 0x00D4C9 03:B4B9: FF        .byte $FF   ; 



off_00_B4BA_62:
- D 1 - I - 0x00D4CA 03:B4BA: FC        .byte $FC   ; 
- D 1 - I - 0x00D4CB 03:B4BB: 03        .byte $03   ; 
- D 1 - I - 0x00D4CC 03:B4BC: 04        .byte $04   ; 
- D 1 - I - 0x00D4CD 03:B4BD: B3        .byte $B3   ; 



off_00_B4BE_63:
- - - - - - 0x00D4CE 03:B4BE: FC        .byte $FC   ; 
- - - - - - 0x00D4CF 03:B4BF: 0A        .byte $0A   ; 
- - - - - - 0x00D4D0 03:B4C0: 02        .byte $02   ; 
- - - - - - 0x00D4D1 03:B4C1: BB        .byte $BB   ; 



off_00_B4C2_64:
- - - - - - 0x00D4D2 03:B4C2: BB        .byte $BB   ; 
- - - - - - 0x00D4D3 03:B4C3: 05        .byte $05   ; 
- - - - - - 0x00D4D4 03:B4C4: FF        .byte $FF   ; 



off_00_B4C5_65:
- D 1 - I - 0x00D4D5 03:B4C5: BD        .byte $BD   ; 
- D 1 - I - 0x00D4D6 03:B4C6: 05        .byte $05   ; 
- D 1 - I - 0x00D4D7 03:B4C7: FF        .byte $FF   ; 



off_00_B4C8_66:
- D 1 - I - 0x00D4D8 03:B4C8: BE        .byte $BE   ; 
- D 1 - I - 0x00D4D9 03:B4C9: 05        .byte $05   ; 
- - - - - - 0x00D4DA 03:B4CA: FF        .byte $FF   ; 



off_00_B4CB_67:
- - - - - - 0x00D4DB 03:B4CB: BF        .byte $BF   ; 
- - - - - - 0x00D4DC 03:B4CC: 05        .byte $05   ; 
- - - - - - 0x00D4DD 03:B4CD: FF        .byte $FF   ; 



off_00_B4CE_68:
- - - - - - 0x00D4DE 03:B4CE: C0        .byte $C0   ; 
- - - - - - 0x00D4DF 03:B4CF: 05        .byte $05   ; 
- - - - - - 0x00D4E0 03:B4D0: FF        .byte $FF   ; 



_off019_0x00D4E1_01:
- D 1 - I - 0x00D4E1 03:B4D1: 49 B5     .word off_01_B549_01
- D 1 - I - 0x00D4E3 03:B4D3: 4D B5     .word off_01_B54D_02
- D 1 - I - 0x00D4E5 03:B4D5: 54 B5     .word off_01_B554_03
- D 1 - I - 0x00D4E7 03:B4D7: 5B B5     .word off_01_B55B_04
- D 1 - I - 0x00D4E9 03:B4D9: 5F B5     .word off_01_B55F_05
- D 1 - I - 0x00D4EB 03:B4DB: 63 B5     .word off_01_B563_06
- D 1 - I - 0x00D4ED 03:B4DD: 67 B5     .word off_01_B567_07
- D 1 - I - 0x00D4EF 03:B4DF: 6B B5     .word off_01_B56B_08
- D 1 - I - 0x00D4F1 03:B4E1: 6F B5     .word off_01_B56F_09
- - - - - - 0x00D4F3 03:B4E3: 72 B5     .word off_01_B572_0A
- - - - - - 0x00D4F5 03:B4E5: 75 B5     .word off_01_B575_0B
- - - - - - 0x00D4F7 03:B4E7: 78 B5     .word off_01_B578_0C
- - - - - - 0x00D4F9 03:B4E9: 7B B5     .word off_01_B57B_0D
- - - - - - 0x00D4FB 03:B4EB: 7E B5     .word off_01_B57E_0E
- D 1 - I - 0x00D4FD 03:B4ED: 81 B5     .word off_01_B581_0F
- - - - - - 0x00D4FF 03:B4EF: 84 B5     .word off_01_B584_10
- D 1 - I - 0x00D501 03:B4F1: 87 B5     .word off_01_B587_11
- - - - - - 0x00D503 03:B4F3: 8A B5     .word off_01_B58A_12
- D 1 - I - 0x00D505 03:B4F5: 8D B5     .word off_01_B58D_13
- D 1 - I - 0x00D507 03:B4F7: 90 B5     .word off_01_B590_14
- D 1 - I - 0x00D509 03:B4F9: 93 B5     .word off_01_B593_15
- - - - - - 0x00D50B 03:B4FB: 96 B5     .word off_01_B596_16
- D 1 - I - 0x00D50D 03:B4FD: 99 B5     .word off_01_B599_17
- D 1 - I - 0x00D50F 03:B4FF: 9C B5     .word off_01_B59C_18
- - - - - - 0x00D511 03:B501: 9F B5     .word off_01_B59F_19
- - - - - - 0x00D513 03:B503: A2 B5     .word off_01_B5A2_1A
- - - - - - 0x00D515 03:B505: A5 B5     .word off_01_B5A5_1B
- - - - - - 0x00D517 03:B507: A8 B5     .word off_01_B5A8_1C
- D 1 - I - 0x00D519 03:B509: AB B5     .word off_01_B5AB_1D
- D 1 - I - 0x00D51B 03:B50B: BB B5     .word off_01_B5BB_1E
- D 1 - I - 0x00D51D 03:B50D: BF B5     .word off_01_B5BF_1F
- D 1 - I - 0x00D51F 03:B50F: C6 B5     .word off_01_B5C6_20
- D 1 - I - 0x00D521 03:B511: CD B5     .word off_01_B5CD_21
- D 1 - I - 0x00D523 03:B513: D4 B5     .word off_01_B5D4_22
- D 1 - I - 0x00D525 03:B515: DB B5     .word off_01_B5DB_23
- D 1 - I - 0x00D527 03:B517: DF B5     .word off_01_B5DF_24
- D 1 - I - 0x00D529 03:B519: E3 B5     .word off_01_B5E3_25
- D 1 - I - 0x00D52B 03:B51B: E7 B5     .word off_01_B5E7_26
- D 1 - I - 0x00D52D 03:B51D: EA B5     .word off_01_B5EA_27
- D 1 - I - 0x00D52F 03:B51F: ED B5     .word off_01_B5ED_28
- D 1 - I - 0x00D531 03:B521: F0 B5     .word off_01_B5F0_29
- D 1 - I - 0x00D533 03:B523: F3 B5     .word off_01_B5F3_2A
- - - - - - 0x00D535 03:B525: F6 B5     .word off_01_B5F6_2B
- D 1 - I - 0x00D537 03:B527: F9 B5     .word off_01_B5F9_2C
- D 1 - I - 0x00D539 03:B529: FC B5     .word off_01_B5FC_2D
- D 1 - I - 0x00D53B 03:B52B: FF B5     .word off_01_B5FF_2E
- D 1 - I - 0x00D53D 03:B52D: 02 B6     .word off_01_B602_2F
- D 1 - I - 0x00D53F 03:B52F: 05 B6     .word off_01_B605_30
- D 1 - I - 0x00D541 03:B531: 08 B6     .word off_01_B608_31
- D 1 - I - 0x00D543 03:B533: 0B B6     .word off_01_B60B_32
- D 1 - I - 0x00D545 03:B535: 0E B6     .word off_01_B60E_33
- D 1 - I - 0x00D547 03:B537: 11 B6     .word off_01_B611_34
- D 1 - I - 0x00D549 03:B539: 14 B6     .word off_01_B614_35
- D 1 - I - 0x00D54B 03:B53B: 17 B6     .word off_01_B617_36
- D 1 - I - 0x00D54D 03:B53D: 1A B6     .word off_01_B61A_37
- - - - - - 0x00D54F 03:B53F: 1D B6     .word off_01_B61D_38
- - - - - - 0x00D551 03:B541: 20 B6     .word off_01_B620_39
- - - - - - 0x00D553 03:B543: 23 B6     .word off_01_B623_3A
- D 1 - I - 0x00D555 03:B545: B6 B5     .word off_01_B5B6_3B
- D 1 - I - 0x00D557 03:B547: 2E B6     .word off_01_B62E_3C



off_01_B549_01:
- D 1 - I - 0x00D559 03:B549: FC        .byte $FC   ; 
- D 1 - I - 0x00D55A 03:B54A: 07        .byte $07   ; 
- D 1 - I - 0x00D55B 03:B54B: 04        .byte $04   ; 
- D 1 - I - 0x00D55C 03:B54C: 01        .byte $01   ; 



off_01_B54D_02:
- D 1 - I - 0x00D55D 03:B54D: FD        .byte $FD   ; 
- D 1 - I - 0x00D55E 03:B54E: 07        .byte $07   ; 
- D 1 - I - 0x00D55F 03:B54F: 05        .byte $05   ; 
- D 1 - I - 0x00D560 03:B550: 06        .byte $06   ; 
- D 1 - I - 0x00D561 03:B551: 07        .byte $07   ; 
- D 1 - I - 0x00D562 03:B552: 3B        .byte $3B   ; 
- D 1 - I - 0x00D563 03:B553: FF        .byte $FF   ; 



off_01_B554_03:
- D 1 - I - 0x00D564 03:B554: FD        .byte $FD   ; 
- D 1 - I - 0x00D565 03:B555: 07        .byte $07   ; 
- D 1 - I - 0x00D566 03:B556: 08        .byte $08   ; 
- - - - - - 0x00D567 03:B557: 09        .byte $09   ; 
- - - - - - 0x00D568 03:B558: 0A        .byte $0A   ; 
- - - - - - 0x00D569 03:B559: 3C        .byte $3C   ; 
- - - - - - 0x00D56A 03:B55A: FF        .byte $FF   ; 



off_01_B55B_04:
- D 1 - I - 0x00D56B 03:B55B: FC        .byte $FC   ; 
- D 1 - I - 0x00D56C 03:B55C: 07        .byte $07   ; 
- D 1 - I - 0x00D56D 03:B55D: 04        .byte $04   ; 
- D 1 - I - 0x00D56E 03:B55E: 0B        .byte $0B   ; 



off_01_B55F_05:
- D 1 - I - 0x00D56F 03:B55F: FC        .byte $FC   ; 
- D 1 - I - 0x00D570 03:B560: 07        .byte $07   ; 
- D 1 - I - 0x00D571 03:B561: 04        .byte $04   ; 
- D 1 - I - 0x00D572 03:B562: 0F        .byte $0F   ; 



off_01_B563_06:
- D 1 - I - 0x00D573 03:B563: FC        .byte $FC   ; 
- D 1 - I - 0x00D574 03:B564: 07        .byte $07   ; 
- D 1 - I - 0x00D575 03:B565: 04        .byte $04   ; 
- D 1 - I - 0x00D576 03:B566: 13        .byte $13   ; 



off_01_B567_07:
- D 1 - I - 0x00D577 03:B567: FC        .byte $FC   ; 
- D 1 - I - 0x00D578 03:B568: 07        .byte $07   ; 
- D 1 - I - 0x00D579 03:B569: 04        .byte $04   ; 
- D 1 - I - 0x00D57A 03:B56A: 17        .byte $17   ; 



off_01_B56B_08:
- D 1 - I - 0x00D57B 03:B56B: FC        .byte $FC   ; 
- D 1 - I - 0x00D57C 03:B56C: 07        .byte $07   ; 
- D 1 - I - 0x00D57D 03:B56D: 04        .byte $04   ; 
- D 1 - I - 0x00D57E 03:B56E: 1B        .byte $1B   ; 



off_01_B56F_09:
- D 1 - I - 0x00D57F 03:B56F: 1F        .byte $1F   ; 
- D 1 - I - 0x00D580 03:B570: 05        .byte $05   ; 
- - - - - - 0x00D581 03:B571: FF        .byte $FF   ; 



off_01_B572_0A:
- - - - - - 0x00D582 03:B572: 21        .byte $21   ; 
- - - - - - 0x00D583 03:B573: 05        .byte $05   ; 
- - - - - - 0x00D584 03:B574: FF        .byte $FF   ; 



off_01_B575_0B:
- - - - - - 0x00D585 03:B575: 23        .byte $23   ; 
- - - - - - 0x00D586 03:B576: 05        .byte $05   ; 
- - - - - - 0x00D587 03:B577: FF        .byte $FF   ; 



off_01_B578_0C:
- - - - - - 0x00D588 03:B578: 26        .byte $26   ; 
- - - - - - 0x00D589 03:B579: 05        .byte $05   ; 
- - - - - - 0x00D58A 03:B57A: FF        .byte $FF   ; 



off_01_B57B_0D:
- - - - - - 0x00D58B 03:B57B: 28        .byte $28   ; 
- - - - - - 0x00D58C 03:B57C: 05        .byte $05   ; 
- - - - - - 0x00D58D 03:B57D: FF        .byte $FF   ; 



off_01_B57E_0E:
- - - - - - 0x00D58E 03:B57E: 29        .byte $29   ; 
- - - - - - 0x00D58F 03:B57F: 05        .byte $05   ; 
- - - - - - 0x00D590 03:B580: FF        .byte $FF   ; 



off_01_B581_0F:
- D 1 - I - 0x00D591 03:B581: 2B        .byte $2B   ; 
- D 1 - I - 0x00D592 03:B582: 05        .byte $05   ; 
- - - - - - 0x00D593 03:B583: FF        .byte $FF   ; 



off_01_B584_10:
- - - - - - 0x00D594 03:B584: 2E        .byte $2E   ; 
- - - - - - 0x00D595 03:B585: 05        .byte $05   ; 
- - - - - - 0x00D596 03:B586: FF        .byte $FF   ; 



off_01_B587_11:
- D 1 - I - 0x00D597 03:B587: 20        .byte $20   ; 
- D 1 - I - 0x00D598 03:B588: 05        .byte $05   ; 
- D 1 - I - 0x00D599 03:B589: FF        .byte $FF   ; 



off_01_B58A_12:
- - - - - - 0x00D59A 03:B58A: 22        .byte $22   ; 
- - - - - - 0x00D59B 03:B58B: 05        .byte $05   ; 
- - - - - - 0x00D59C 03:B58C: FF        .byte $FF   ; 



off_01_B58D_13:
- D 1 - I - 0x00D59D 03:B58D: 24        .byte $24   ; 
- D 1 - I - 0x00D59E 03:B58E: 05        .byte $05   ; 
- - - - - - 0x00D59F 03:B58F: FF        .byte $FF   ; 



off_01_B590_14:
- D 1 - I - 0x00D5A0 03:B590: 25        .byte $25   ; 
- D 1 - I - 0x00D5A1 03:B591: 05        .byte $05   ; 
- - - - - - 0x00D5A2 03:B592: FF        .byte $FF   ; 



off_01_B593_15:
- D 1 - I - 0x00D5A3 03:B593: 27        .byte $27   ; 
- D 1 - I - 0x00D5A4 03:B594: 05        .byte $05   ; 
- - - - - - 0x00D5A5 03:B595: FF        .byte $FF   ; 



off_01_B596_16:
- - - - - - 0x00D5A6 03:B596: 2A        .byte $2A   ; 
- - - - - - 0x00D5A7 03:B597: 05        .byte $05   ; 
- - - - - - 0x00D5A8 03:B598: FF        .byte $FF   ; 



off_01_B599_17:
- D 1 - I - 0x00D5A9 03:B599: 2C        .byte $2C   ; 
- D 1 - I - 0x00D5AA 03:B59A: 05        .byte $05   ; 
- - - - - - 0x00D5AB 03:B59B: FF        .byte $FF   ; 



off_01_B59C_18:
- D 1 - I - 0x00D5AC 03:B59C: 2D        .byte $2D   ; 
- D 1 - I - 0x00D5AD 03:B59D: 05        .byte $05   ; 
- - - - - - 0x00D5AE 03:B59E: FF        .byte $FF   ; 



off_01_B59F_19:
- - - - - - 0x00D5AF 03:B59F: 3D        .byte $3D   ; 
- - - - - - 0x00D5B0 03:B5A0: 05        .byte $05   ; 
- - - - - - 0x00D5B1 03:B5A1: FF        .byte $FF   ; 



off_01_B5A2_1A:
- - - - - - 0x00D5B2 03:B5A2: 3F        .byte $3F   ; 
- - - - - - 0x00D5B3 03:B5A3: 05        .byte $05   ; 
- - - - - - 0x00D5B4 03:B5A4: FF        .byte $FF   ; 



off_01_B5A5_1B:
- - - - - - 0x00D5B5 03:B5A5: 3E        .byte $3E   ; 
- - - - - - 0x00D5B6 03:B5A6: 05        .byte $05   ; 
- - - - - - 0x00D5B7 03:B5A7: FF        .byte $FF   ; 



off_01_B5A8_1C:
- - - - - - 0x00D5B8 03:B5A8: 40        .byte $40   ; 
- - - - - - 0x00D5B9 03:B5A9: 05        .byte $05   ; 
- - - - - - 0x00D5BA 03:B5AA: FF        .byte $FF   ; 



off_01_B5AB_1D:
- D 1 - I - 0x00D5BB 03:B5AB: 41        .byte $41   ; 
- D 1 - I - 0x00D5BC 03:B5AC: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5BD 03:B5AD: 42        .byte $42   ; 
- D 1 - I - 0x00D5BE 03:B5AE: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5BF 03:B5AF: 43        .byte $43   ; 
- D 1 - I - 0x00D5C0 03:B5B0: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5C1 03:B5B1: 44        .byte $44   ; 
- D 1 - I - 0x00D5C2 03:B5B2: 08        .byte $08   ; 
- D 1 - I - 0x00D5C3 03:B5B3: 45        .byte $45   ; 
- D 1 - I - 0x00D5C4 03:B5B4: 08        .byte $08   ; 
- - - - - - 0x00D5C5 03:B5B5: FE        .byte $FE   ; 



off_01_B5B6_3B:
- D 1 - I - 0x00D5C6 03:B5B6: 41        .byte $41   ; 
- D 1 - I - 0x00D5C7 03:B5B7: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5C8 03:B5B8: 42        .byte $42   ; 
- D 1 - I - 0x00D5C9 03:B5B9: 0B        .byte $0B   ; 
- D 1 - I - 0x00D5CA 03:B5BA: FE        .byte $FE   ; 



off_01_B5BB_1E:
- D 1 - I - 0x00D5CB 03:B5BB: FC        .byte $FC   ; 
- D 1 - I - 0x00D5CC 03:B5BC: 07        .byte $07   ; 
- D 1 - I - 0x00D5CD 03:B5BD: 04        .byte $04   ; 
- D 1 - I - 0x00D5CE 03:B5BE: 48        .byte $48   ; 



off_01_B5BF_1F:
- D 1 - I - 0x00D5CF 03:B5BF: FD        .byte $FD   ; 
- D 1 - I - 0x00D5D0 03:B5C0: 07        .byte $07   ; 
- D 1 - I - 0x00D5D1 03:B5C1: 4C        .byte $4C   ; 
- D 1 - I - 0x00D5D2 03:B5C2: 4D        .byte $4D   ; 
- D 1 - I - 0x00D5D3 03:B5C3: 4E        .byte $4E   ; 
- D 1 - I - 0x00D5D4 03:B5C4: 82        .byte $82   ; 
- D 1 - I - 0x00D5D5 03:B5C5: FF        .byte $FF   ; 



off_01_B5C6_20:
- D 1 - I - 0x00D5D6 03:B5C6: FD        .byte $FD   ; 
- D 1 - I - 0x00D5D7 03:B5C7: 07        .byte $07   ; 
- D 1 - I - 0x00D5D8 03:B5C8: 4F        .byte $4F   ; 
- D 1 - I - 0x00D5D9 03:B5C9: 50        .byte $50   ; 
- D 1 - I - 0x00D5DA 03:B5CA: 51        .byte $51   ; 
- D 1 - I - 0x00D5DB 03:B5CB: 83        .byte $83   ; 
- D 1 - I - 0x00D5DC 03:B5CC: FF        .byte $FF   ; 



off_01_B5CD_21:
- D 1 - I - 0x00D5DD 03:B5CD: FD        .byte $FD   ; 
- D 1 - I - 0x00D5DE 03:B5CE: 07        .byte $07   ; 
- D 1 - I - 0x00D5DF 03:B5CF: 52        .byte $52   ; 
- D 1 - I - 0x00D5E0 03:B5D0: 53        .byte $53   ; 
- D 1 - I - 0x00D5E1 03:B5D1: 54        .byte $54   ; 
- D 1 - I - 0x00D5E2 03:B5D2: 80        .byte $80   ; 
- D 1 - I - 0x00D5E3 03:B5D3: FF        .byte $FF   ; 



off_01_B5D4_22:
- D 1 - I - 0x00D5E4 03:B5D4: FD        .byte $FD   ; 
- D 1 - I - 0x00D5E5 03:B5D5: 07        .byte $07   ; 
- D 1 - I - 0x00D5E6 03:B5D6: 55        .byte $55   ; 
- D 1 - I - 0x00D5E7 03:B5D7: 56        .byte $56   ; 
- D 1 - I - 0x00D5E8 03:B5D8: 57        .byte $57   ; 
- D 1 - I - 0x00D5E9 03:B5D9: 81        .byte $81   ; 
- D 1 - I - 0x00D5EA 03:B5DA: FF        .byte $FF   ; 



off_01_B5DB_23:
- D 1 - I - 0x00D5EB 03:B5DB: FC        .byte $FC   ; 
- D 1 - I - 0x00D5EC 03:B5DC: 07        .byte $07   ; 
- D 1 - I - 0x00D5ED 03:B5DD: 04        .byte $04   ; 
- D 1 - I - 0x00D5EE 03:B5DE: 58        .byte $58   ; 



off_01_B5DF_24:
- D 1 - I - 0x00D5EF 03:B5DF: FC        .byte $FC   ; 
- D 1 - I - 0x00D5F0 03:B5E0: 07        .byte $07   ; 
- D 1 - I - 0x00D5F1 03:B5E1: 04        .byte $04   ; 
- D 1 - I - 0x00D5F2 03:B5E2: 5C        .byte $5C   ; 



off_01_B5E3_25:
- D 1 - I - 0x00D5F3 03:B5E3: FC        .byte $FC   ; 
- D 1 - I - 0x00D5F4 03:B5E4: 07        .byte $07   ; 
- D 1 - I - 0x00D5F5 03:B5E5: 04        .byte $04   ; 
- D 1 - I - 0x00D5F6 03:B5E6: 60        .byte $60   ; 



off_01_B5E7_26:
- D 1 - I - 0x00D5F7 03:B5E7: 65        .byte $65   ; 
- D 1 - I - 0x00D5F8 03:B5E8: 07        .byte $07   ; 
- D 1 - I - 0x00D5F9 03:B5E9: FF        .byte $FF   ; 



off_01_B5EA_27:
- D 1 - I - 0x00D5FA 03:B5EA: 67        .byte $67   ; 
- D 1 - I - 0x00D5FB 03:B5EB: 07        .byte $07   ; 
- - - - - - 0x00D5FC 03:B5EC: FF        .byte $FF   ; 



off_01_B5ED_28:
- D 1 - I - 0x00D5FD 03:B5ED: 69        .byte $69   ; 
- D 1 - I - 0x00D5FE 03:B5EE: 07        .byte $07   ; 
- - - - - - 0x00D5FF 03:B5EF: FF        .byte $FF   ; 



off_01_B5F0_29:
- D 1 - I - 0x00D600 03:B5F0: 6A        .byte $6A   ; 
- D 1 - I - 0x00D601 03:B5F1: 07        .byte $07   ; 
- - - - - - 0x00D602 03:B5F2: FF        .byte $FF   ; 



off_01_B5F3_2A:
- D 1 - I - 0x00D603 03:B5F3: 6C        .byte $6C   ; 
- D 1 - I - 0x00D604 03:B5F4: 07        .byte $07   ; 
- - - - - - 0x00D605 03:B5F5: FF        .byte $FF   ; 



off_01_B5F6_2B:
- - - - - - 0x00D606 03:B5F6: 6F        .byte $6F   ; 
- - - - - - 0x00D607 03:B5F7: 07        .byte $07   ; 
- - - - - - 0x00D608 03:B5F8: FF        .byte $FF   ; 



off_01_B5F9_2C:
- D 1 - I - 0x00D609 03:B5F9: 71        .byte $71   ; 
- D 1 - I - 0x00D60A 03:B5FA: 07        .byte $07   ; 
- - - - - - 0x00D60B 03:B5FB: FF        .byte $FF   ; 



off_01_B5FC_2D:
- D 1 - I - 0x00D60C 03:B5FC: 73        .byte $73   ; 
- D 1 - I - 0x00D60D 03:B5FD: 07        .byte $07   ; 
- - - - - - 0x00D60E 03:B5FE: FF        .byte $FF   ; 



off_01_B5FF_2E:
- D 1 - I - 0x00D60F 03:B5FF: 64        .byte $64   ; 
- D 1 - I - 0x00D610 03:B600: 05        .byte $05   ; 
- D 1 - I - 0x00D611 03:B601: FF        .byte $FF   ; 



off_01_B602_2F:
- D 1 - I - 0x00D612 03:B602: 66        .byte $66   ; 
- D 1 - I - 0x00D613 03:B603: 05        .byte $05   ; 
- D 1 - I - 0x00D614 03:B604: FF        .byte $FF   ; 



off_01_B605_30:
- D 1 - I - 0x00D615 03:B605: 68        .byte $68   ; 
- D 1 - I - 0x00D616 03:B606: 05        .byte $05   ; 
- D 1 - I - 0x00D617 03:B607: FF        .byte $FF   ; 



off_01_B608_31:
- D 1 - I - 0x00D618 03:B608: 6B        .byte $6B   ; 
- D 1 - I - 0x00D619 03:B609: 05        .byte $05   ; 
- D 1 - I - 0x00D61A 03:B60A: FF        .byte $FF   ; 



off_01_B60B_32:
- D 1 - I - 0x00D61B 03:B60B: 6D        .byte $6D   ; 
- D 1 - I - 0x00D61C 03:B60C: 05        .byte $05   ; 
- D 1 - I - 0x00D61D 03:B60D: FF        .byte $FF   ; 



off_01_B60E_33:
- D 1 - I - 0x00D61E 03:B60E: 6E        .byte $6E   ; 
- D 1 - I - 0x00D61F 03:B60F: 05        .byte $05   ; 
- D 1 - I - 0x00D620 03:B610: FF        .byte $FF   ; 



off_01_B611_34:
- D 1 - I - 0x00D621 03:B611: 70        .byte $70   ; 
- D 1 - I - 0x00D622 03:B612: 05        .byte $05   ; 
- D 1 - I - 0x00D623 03:B613: FF        .byte $FF   ; 



off_01_B614_35:
- D 1 - I - 0x00D624 03:B614: 72        .byte $72   ; 
- D 1 - I - 0x00D625 03:B615: 05        .byte $05   ; 
- D 1 - I - 0x00D626 03:B616: FF        .byte $FF   ; 



off_01_B617_36:
- D 1 - I - 0x00D627 03:B617: 84        .byte $84   ; 
- D 1 - I - 0x00D628 03:B618: 05        .byte $05   ; 
- D 1 - I - 0x00D629 03:B619: FF        .byte $FF   ; 



off_01_B61A_37:
- D 1 - I - 0x00D62A 03:B61A: 86        .byte $86   ; 
- D 1 - I - 0x00D62B 03:B61B: 05        .byte $05   ; 
- D 1 - I - 0x00D62C 03:B61C: FF        .byte $FF   ; 



off_01_B61D_38:
- - - - - - 0x00D62D 03:B61D: 85        .byte $85   ; 
- - - - - - 0x00D62E 03:B61E: 05        .byte $05   ; 
- - - - - - 0x00D62F 03:B61F: FF        .byte $FF   ; 



off_01_B620_39:
- - - - - - 0x00D630 03:B620: 87        .byte $87   ; 
- - - - - - 0x00D631 03:B621: 05        .byte $05   ; 
- - - - - - 0x00D632 03:B622: FF        .byte $FF   ; 



off_01_B623_3A:
- - - - - - 0x00D633 03:B623: 88        .byte $88   ; 
- - - - - - 0x00D634 03:B624: 0B        .byte $0B   ; 
- - - - - - 0x00D635 03:B625: 89        .byte $89   ; 
- - - - - - 0x00D636 03:B626: 0B        .byte $0B   ; 
- - - - - - 0x00D637 03:B627: 8A        .byte $8A   ; 
- - - - - - 0x00D638 03:B628: 0B        .byte $0B   ; 
- - - - - - 0x00D639 03:B629: 8B        .byte $8B   ; 
- - - - - - 0x00D63A 03:B62A: 08        .byte $08   ; 
- - - - - - 0x00D63B 03:B62B: 8C        .byte $8C   ; 
- - - - - - 0x00D63C 03:B62C: 08        .byte $08   ; 
- - - - - - 0x00D63D 03:B62D: FE        .byte $FE   ; 



off_01_B62E_3C:
- D 1 - I - 0x00D63E 03:B62E: 88        .byte $88   ; 
- D 1 - I - 0x00D63F 03:B62F: 0B        .byte $0B   ; 
- D 1 - I - 0x00D640 03:B630: 89        .byte $89   ; 
- D 1 - I - 0x00D641 03:B631: 0B        .byte $0B   ; 
- D 1 - I - 0x00D642 03:B632: FE        .byte $FE   ; 



_off019_0x00D643_02:
- D 1 - I - 0x00D643 03:B633: CB B6     .word off_02_B6CB_01
- D 1 - I - 0x00D645 03:B635: CF B6     .word off_02_B6CF_02
- - - - - - 0x00D647 03:B637: D3 B6     .word off_02_B6D3_03
- D 1 - I - 0x00D649 03:B639: D7 B6     .word off_02_B6D7_04
- - - - - - 0x00D64B 03:B63B: DB B6     .word off_02_B6DB_05
- - - - - - 0x00D64D 03:B63D: DF B6     .word off_02_B6DF_06
- - - - - - 0x00D64F 03:B63F: E3 B6     .word off_02_B6E3_07
- - - - - - 0x00D651 03:B641: E7 B6     .word off_02_B6E7_08
- D 1 - I - 0x00D653 03:B643: EB B6     .word off_02_B6EB_09
- - - - - - 0x00D655 03:B645: EE B6     .word off_02_B6EE_0A
- - - - - - 0x00D657 03:B647: F1 B6     .word off_02_B6F1_0B
- - - - - - 0x00D659 03:B649: F4 B6     .word off_02_B6F4_0C
- - - - - - 0x00D65B 03:B64B: F7 B6     .word off_02_B6F7_0D
- - - - - - 0x00D65D 03:B64D: FA B6     .word off_02_B6FA_0E
- - - - - - 0x00D65F 03:B64F: FD B6     .word off_02_B6FD_0F
- - - - - - 0x00D661 03:B651: 00 B7     .word off_02_B700_10
- - - - - - 0x00D663 03:B653: 03 B7     .word off_02_B703_11
- - - - - - 0x00D665 03:B655: 06 B7     .word off_02_B706_12
- - - - - - 0x00D667 03:B657: 09 B7     .word off_02_B709_13
- - - - - - 0x00D669 03:B659: 0C B7     .word off_02_B70C_14
- - - - - - 0x00D66B 03:B65B: 0F B7     .word off_02_B70F_15
- - - - - - 0x00D66D 03:B65D: 12 B7     .word off_02_B712_16
- - - - - - 0x00D66F 03:B65F: 15 B7     .word off_02_B715_17
- - - - - - 0x00D671 03:B661: 18 B7     .word off_02_B718_18
- - - - - - 0x00D673 03:B663: 1B B7     .word off_02_B71B_19
- - - - - - 0x00D675 03:B665: 28 B7     .word off_02_B728_1A
- - - - - - 0x00D677 03:B667: 2D B7     .word off_02_B72D_1B
- - - - - - 0x00D679 03:B669: 30 B7     .word off_02_B730_1C
- - - - - - 0x00D67B 03:B66B: 33 B7     .word off_02_B733_1D
- - - - - - 0x00D67D 03:B66D: 36 B7     .word off_02_B736_1E
- D 1 - I - 0x00D67F 03:B66F: 39 B7     .word off_02_B739_1F
- D 1 - I - 0x00D681 03:B671: 3D B7     .word off_02_B73D_20
- D 1 - I - 0x00D683 03:B673: 41 B7     .word off_02_B741_21
- D 1 - I - 0x00D685 03:B675: 45 B7     .word off_02_B745_22
- D 1 - I - 0x00D687 03:B677: 49 B7     .word off_02_B749_23
- D 1 - I - 0x00D689 03:B679: 4D B7     .word off_02_B74D_24
- D 1 - I - 0x00D68B 03:B67B: 51 B7     .word off_02_B751_25
- D 1 - I - 0x00D68D 03:B67D: 55 B7     .word off_02_B755_26
- D 1 - I - 0x00D68F 03:B67F: 59 B7     .word off_02_B759_27
- - - - - - 0x00D691 03:B681: 5C B7     .word off_02_B75C_28
- - - - - - 0x00D693 03:B683: 5F B7     .word off_02_B75F_29
- D 1 - I - 0x00D695 03:B685: 62 B7     .word off_02_B762_2A
- D 1 - I - 0x00D697 03:B687: 65 B7     .word off_02_B765_2B
- - - - - - 0x00D699 03:B689: 68 B7     .word off_02_B768_2C
- - - - - - 0x00D69B 03:B68B: 6B B7     .word off_02_B76B_2D
- D 1 - I - 0x00D69D 03:B68D: 6E B7     .word off_02_B76E_2E
- D 1 - I - 0x00D69F 03:B68F: 71 B7     .word off_02_B771_2F
- - - - - - 0x00D6A1 03:B691: 74 B7     .word off_02_B774_30
- - - - - - 0x00D6A3 03:B693: 77 B7     .word off_02_B777_31
- D 1 - I - 0x00D6A5 03:B695: 7A B7     .word off_02_B77A_32
- D 1 - I - 0x00D6A7 03:B697: 7D B7     .word off_02_B77D_33
- - - - - - 0x00D6A9 03:B699: 80 B7     .word off_02_B780_34
- - - - - - 0x00D6AB 03:B69B: 83 B7     .word off_02_B783_35
- D 1 - I - 0x00D6AD 03:B69D: 86 B7     .word off_02_B786_36
- - - - - - 0x00D6AF 03:B69F: 89 B7     .word off_02_B789_37
- - - - - - 0x00D6B1 03:B6A1: 8C B7     .word off_02_B78C_38
- D 1 - I - 0x00D6B3 03:B6A3: 8F B7     .word off_02_B78F_39
- D 1 - I - 0x00D6B5 03:B6A5: 92 B7     .word off_02_B792_3A
- - - - - - 0x00D6B7 03:B6A7: 95 B7     .word off_02_B795_3B
- - - - - - 0x00D6B9 03:B6A9: A2 B7     .word off_02_B7A2_3C
- D 1 - I - 0x00D6BB 03:B6AB: A7 B7     .word off_02_B7A7_3D
- D 1 - I - 0x00D6BD 03:B6AD: AB B7     .word off_02_B7AB_3E
- D 1 - I - 0x00D6BF 03:B6AF: AF B7     .word off_02_B7AF_3F
- D 1 - I - 0x00D6C1 03:B6B1: B3 B7     .word off_02_B7B3_40
- D 1 - I - 0x00D6C3 03:B6B3: B7 B7     .word off_02_B7B7_41
- D 1 - I - 0x00D6C5 03:B6B5: BB B7     .word off_02_B7BB_42
- D 1 - I - 0x00D6C7 03:B6B7: BF B7     .word off_02_B7BF_43
- D 1 - I - 0x00D6C9 03:B6B9: C3 B7     .word off_02_B7C3_44
- - - - - - 0x00D6CB 03:B6BB: C7 B7     .word off_02_B7C7_45
- D 1 - I - 0x00D6CD 03:B6BD: CA B7     .word off_02_B7CA_46
- D 1 - I - 0x00D6CF 03:B6BF: CD B7     .word off_02_B7CD_47
- - - - - - 0x00D6D1 03:B6C1: D0 B7     .word off_02_B7D0_48
- D 1 - I - 0x00D6D3 03:B6C3: D3 B7     .word off_02_B7D3_49
- D 1 - I - 0x00D6D5 03:B6C5: D6 B7     .word off_02_B7D6_4A
- D 1 - I - 0x00D6D7 03:B6C7: D9 B7     .word off_02_B7D9_4B
- D 1 - I - 0x00D6D9 03:B6C9: DC B7     .word off_02_B7DC_4C



off_02_B6CB_01:
- D 1 - I - 0x00D6DB 03:B6CB: FC        .byte $FC   ; 
- D 1 - I - 0x00D6DC 03:B6CC: 07        .byte $07   ; 
- D 1 - I - 0x00D6DD 03:B6CD: 04        .byte $04   ; 
- D 1 - I - 0x00D6DE 03:B6CE: 01        .byte $01   ; 



off_02_B6CF_02:
- D 1 - I - 0x00D6DF 03:B6CF: FC        .byte $FC   ; 
- D 1 - I - 0x00D6E0 03:B6D0: 07        .byte $07   ; 
- D 1 - I - 0x00D6E1 03:B6D1: 04        .byte $04   ; 
- D 1 - I - 0x00D6E2 03:B6D2: 05        .byte $05   ; 



off_02_B6D3_03:
- - - - - - 0x00D6E3 03:B6D3: FC        .byte $FC   ; 
- - - - - - 0x00D6E4 03:B6D4: 07        .byte $07   ; 
- - - - - - 0x00D6E5 03:B6D5: 04        .byte $04   ; 
- - - - - - 0x00D6E6 03:B6D6: 09        .byte $09   ; 



off_02_B6D7_04:
- D 1 - I - 0x00D6E7 03:B6D7: FC        .byte $FC   ; 
- D 1 - I - 0x00D6E8 03:B6D8: 07        .byte $07   ; 
- D 1 - I - 0x00D6E9 03:B6D9: 04        .byte $04   ; 
- D 1 - I - 0x00D6EA 03:B6DA: 0D        .byte $0D   ; 



off_02_B6DB_05:
- - - - - - 0x00D6EB 03:B6DB: FC        .byte $FC   ; 
- - - - - - 0x00D6EC 03:B6DC: 07        .byte $07   ; 
- - - - - - 0x00D6ED 03:B6DD: 04        .byte $04   ; 
- - - - - - 0x00D6EE 03:B6DE: 11        .byte $11   ; 



off_02_B6DF_06:
- - - - - - 0x00D6EF 03:B6DF: FC        .byte $FC   ; 
- - - - - - 0x00D6F0 03:B6E0: 07        .byte $07   ; 
- - - - - - 0x00D6F1 03:B6E1: 04        .byte $04   ; 
- - - - - - 0x00D6F2 03:B6E2: 15        .byte $15   ; 



off_02_B6E3_07:
- - - - - - 0x00D6F3 03:B6E3: FC        .byte $FC   ; 
- - - - - - 0x00D6F4 03:B6E4: 07        .byte $07   ; 
- - - - - - 0x00D6F5 03:B6E5: 04        .byte $04   ; 
- - - - - - 0x00D6F6 03:B6E6: 19        .byte $19   ; 



off_02_B6E7_08:
- - - - - - 0x00D6F7 03:B6E7: FC        .byte $FC   ; 
- - - - - - 0x00D6F8 03:B6E8: 09        .byte $09   ; 
- - - - - - 0x00D6F9 03:B6E9: 04        .byte $04   ; 
- - - - - - 0x00D6FA 03:B6EA: 1D        .byte $1D   ; 



off_02_B6EB_09:
- D 1 - I - 0x00D6FB 03:B6EB: 21        .byte $21   ; 
- D 1 - I - 0x00D6FC 03:B6EC: 05        .byte $05   ; 
- D 1 - I - 0x00D6FD 03:B6ED: FF        .byte $FF   ; 



off_02_B6EE_0A:
- - - - - - 0x00D6FE 03:B6EE: 22        .byte $22   ; 
- - - - - - 0x00D6FF 03:B6EF: 05        .byte $05   ; 
- - - - - - 0x00D700 03:B6F0: FF        .byte $FF   ; 



off_02_B6F1_0B:
- - - - - - 0x00D701 03:B6F1: 23        .byte $23   ; 
- - - - - - 0x00D702 03:B6F2: 05        .byte $05   ; 
- - - - - - 0x00D703 03:B6F3: FF        .byte $FF   ; 



off_02_B6F4_0C:
- - - - - - 0x00D704 03:B6F4: 24        .byte $24   ; 
- - - - - - 0x00D705 03:B6F5: 05        .byte $05   ; 
- - - - - - 0x00D706 03:B6F6: FF        .byte $FF   ; 



off_02_B6F7_0D:
- - - - - - 0x00D707 03:B6F7: 25        .byte $25   ; 
- - - - - - 0x00D708 03:B6F8: 05        .byte $05   ; 
- - - - - - 0x00D709 03:B6F9: FF        .byte $FF   ; 



off_02_B6FA_0E:
- - - - - - 0x00D70A 03:B6FA: 26        .byte $26   ; 
- - - - - - 0x00D70B 03:B6FB: 05        .byte $05   ; 
- - - - - - 0x00D70C 03:B6FC: FF        .byte $FF   ; 



off_02_B6FD_0F:
- - - - - - 0x00D70D 03:B6FD: 27        .byte $27   ; 
- - - - - - 0x00D70E 03:B6FE: 05        .byte $05   ; 
- - - - - - 0x00D70F 03:B6FF: FF        .byte $FF   ; 



off_02_B700_10:
- - - - - - 0x00D710 03:B700: 28        .byte $28   ; 
- - - - - - 0x00D711 03:B701: 05        .byte $05   ; 
- - - - - - 0x00D712 03:B702: FF        .byte $FF   ; 



off_02_B703_11:
- - - - - - 0x00D713 03:B703: 29        .byte $29   ; 
- - - - - - 0x00D714 03:B704: 00        .byte $00   ; 
- - - - - - 0x00D715 03:B705: FF        .byte $FF   ; 



off_02_B706_12:
- - - - - - 0x00D716 03:B706: 2A        .byte $2A   ; 
- - - - - - 0x00D717 03:B707: 05        .byte $05   ; 
- - - - - - 0x00D718 03:B708: FF        .byte $FF   ; 



off_02_B709_13:
- - - - - - 0x00D719 03:B709: 2B        .byte $2B   ; 
- - - - - - 0x00D71A 03:B70A: 05        .byte $05   ; 
- - - - - - 0x00D71B 03:B70B: FF        .byte $FF   ; 



off_02_B70C_14:
- - - - - - 0x00D71C 03:B70C: 2C        .byte $2C   ; 
- - - - - - 0x00D71D 03:B70D: 05        .byte $05   ; 
- - - - - - 0x00D71E 03:B70E: FF        .byte $FF   ; 



off_02_B70F_15:
- - - - - - 0x00D71F 03:B70F: 2D        .byte $2D   ; 
- - - - - - 0x00D720 03:B710: 05        .byte $05   ; 
- - - - - - 0x00D721 03:B711: FF        .byte $FF   ; 



off_02_B712_16:
- - - - - - 0x00D722 03:B712: 2E        .byte $2E   ; 
- - - - - - 0x00D723 03:B713: 05        .byte $05   ; 
- - - - - - 0x00D724 03:B714: FF        .byte $FF   ; 



off_02_B715_17:
- - - - - - 0x00D725 03:B715: 2F        .byte $2F   ; 
- - - - - - 0x00D726 03:B716: 05        .byte $05   ; 
- - - - - - 0x00D727 03:B717: FF        .byte $FF   ; 



off_02_B718_18:
- - - - - - 0x00D728 03:B718: 30        .byte $30   ; 
- - - - - - 0x00D729 03:B719: 05        .byte $05   ; 
- - - - - - 0x00D72A 03:B71A: FF        .byte $FF   ; 



off_02_B71B_19:
- - - - - - 0x00D72B 03:B71B: 31        .byte $31   ; 
- - - - - - 0x00D72C 03:B71C: 0A        .byte $0A   ; 
- - - - - - 0x00D72D 03:B71D: 32        .byte $32   ; 
- - - - - - 0x00D72E 03:B71E: 0B        .byte $0B   ; 
- - - - - - 0x00D72F 03:B71F: 33        .byte $33   ; 
- - - - - - 0x00D730 03:B720: 0B        .byte $0B   ; 
- - - - - - 0x00D731 03:B721: 34        .byte $34   ; 
- - - - - - 0x00D732 03:B722: 08        .byte $08   ; 
- - - - - - 0x00D733 03:B723: 35        .byte $35   ; 
- - - - - - 0x00D734 03:B724: 08        .byte $08   ; 
- - - - - - 0x00D735 03:B725: 36        .byte $36   ; 
- - - - - - 0x00D736 03:B726: 08        .byte $08   ; 
- - - - - - 0x00D737 03:B727: FE        .byte $FE   ; 



off_02_B728_1A:
- - - - - - 0x00D738 03:B728: 31        .byte $31   ; 
- - - - - - 0x00D739 03:B729: 0F        .byte $0F   ; 
- - - - - - 0x00D73A 03:B72A: 32        .byte $32   ; 
- - - - - - 0x00D73B 03:B72B: 17        .byte $17   ; 
- - - - - - 0x00D73C 03:B72C: FE        .byte $FE   ; 



off_02_B72D_1B:
- - - - - - 0x00D73D 03:B72D: 37        .byte $37   ; 
- - - - - - 0x00D73E 03:B72E: 05        .byte $05   ; 
- - - - - - 0x00D73F 03:B72F: FF        .byte $FF   ; 



off_02_B730_1C:
- - - - - - 0x00D740 03:B730: 38        .byte $38   ; 
- - - - - - 0x00D741 03:B731: 05        .byte $05   ; 
- - - - - - 0x00D742 03:B732: FF        .byte $FF   ; 



off_02_B733_1D:
- - - - - - 0x00D743 03:B733: 39        .byte $39   ; 
- - - - - - 0x00D744 03:B734: 05        .byte $05   ; 
- - - - - - 0x00D745 03:B735: FF        .byte $FF   ; 



off_02_B736_1E:
- - - - - - 0x00D746 03:B736: 3A        .byte $3A   ; 
- - - - - - 0x00D747 03:B737: 05        .byte $05   ; 
- - - - - - 0x00D748 03:B738: FF        .byte $FF   ; 



off_02_B739_1F:
- D 1 - I - 0x00D749 03:B739: FC        .byte $FC   ; 
- D 1 - I - 0x00D74A 03:B73A: 07        .byte $07   ; 
- D 1 - I - 0x00D74B 03:B73B: 04        .byte $04   ; 
- D 1 - I - 0x00D74C 03:B73C: 3E        .byte $3E   ; 



off_02_B73D_20:
- D 1 - I - 0x00D74D 03:B73D: FC        .byte $FC   ; 
- D 1 - I - 0x00D74E 03:B73E: 07        .byte $07   ; 
- D 1 - I - 0x00D74F 03:B73F: 04        .byte $04   ; 
- D 1 - I - 0x00D750 03:B740: 42        .byte $42   ; 



off_02_B741_21:
- D 1 - I - 0x00D751 03:B741: FC        .byte $FC   ; 
- D 1 - I - 0x00D752 03:B742: 07        .byte $07   ; 
- D 1 - I - 0x00D753 03:B743: 04        .byte $04   ; 
- D 1 - I - 0x00D754 03:B744: 46        .byte $46   ; 



off_02_B745_22:
- D 1 - I - 0x00D755 03:B745: FC        .byte $FC   ; 
- D 1 - I - 0x00D756 03:B746: 07        .byte $07   ; 
- D 1 - I - 0x00D757 03:B747: 04        .byte $04   ; 
- D 1 - I - 0x00D758 03:B748: 4A        .byte $4A   ; 



off_02_B749_23:
- D 1 - I - 0x00D759 03:B749: FC        .byte $FC   ; 
- D 1 - I - 0x00D75A 03:B74A: 07        .byte $07   ; 
- D 1 - I - 0x00D75B 03:B74B: 04        .byte $04   ; 
- D 1 - I - 0x00D75C 03:B74C: 4E        .byte $4E   ; 



off_02_B74D_24:
- D 1 - I - 0x00D75D 03:B74D: FC        .byte $FC   ; 
- D 1 - I - 0x00D75E 03:B74E: 07        .byte $07   ; 
- D 1 - I - 0x00D75F 03:B74F: 04        .byte $04   ; 
- D 1 - I - 0x00D760 03:B750: 52        .byte $52   ; 



off_02_B751_25:
- D 1 - I - 0x00D761 03:B751: FC        .byte $FC   ; 
- D 1 - I - 0x00D762 03:B752: 07        .byte $07   ; 
- D 1 - I - 0x00D763 03:B753: 04        .byte $04   ; 
- D 1 - I - 0x00D764 03:B754: 56        .byte $56   ; 



off_02_B755_26:
- D 1 - I - 0x00D765 03:B755: FC        .byte $FC   ; 
- D 1 - I - 0x00D766 03:B756: 07        .byte $07   ; 
- D 1 - I - 0x00D767 03:B757: 04        .byte $04   ; 
- D 1 - I - 0x00D768 03:B758: 5A        .byte $5A   ; 



off_02_B759_27:
- D 1 - I - 0x00D769 03:B759: 5F        .byte $5F   ; 
- D 1 - I - 0x00D76A 03:B75A: 05        .byte $05   ; 
- - - - - - 0x00D76B 03:B75B: FF        .byte $FF   ; 



off_02_B75C_28:
- - - - - - 0x00D76C 03:B75C: 61        .byte $61   ; 
- - - - - - 0x00D76D 03:B75D: 05        .byte $05   ; 
- - - - - - 0x00D76E 03:B75E: FF        .byte $FF   ; 



off_02_B75F_29:
- - - - - - 0x00D76F 03:B75F: 63        .byte $63   ; 
- - - - - - 0x00D770 03:B760: 05        .byte $05   ; 
- - - - - - 0x00D771 03:B761: FF        .byte $FF   ; 



off_02_B762_2A:
- D 1 - I - 0x00D772 03:B762: 65        .byte $65   ; 
- D 1 - I - 0x00D773 03:B763: 05        .byte $05   ; 
- - - - - - 0x00D774 03:B764: FF        .byte $FF   ; 



off_02_B765_2B:
- D 1 - I - 0x00D775 03:B765: 67        .byte $67   ; 
- D 1 - I - 0x00D776 03:B766: 05        .byte $05   ; 
- - - - - - 0x00D777 03:B767: FF        .byte $FF   ; 



off_02_B768_2C:
- - - - - - 0x00D778 03:B768: 69        .byte $69   ; 
- - - - - - 0x00D779 03:B769: 05        .byte $05   ; 
- - - - - - 0x00D77A 03:B76A: FF        .byte $FF   ; 



off_02_B76B_2D:
- - - - - - 0x00D77B 03:B76B: 6B        .byte $6B   ; 
- - - - - - 0x00D77C 03:B76C: 05        .byte $05   ; 
- - - - - - 0x00D77D 03:B76D: FF        .byte $FF   ; 



off_02_B76E_2E:
- D 1 - I - 0x00D77E 03:B76E: 6D        .byte $6D   ; 
- D 1 - I - 0x00D77F 03:B76F: 05        .byte $05   ; 
- - - - - - 0x00D780 03:B770: FF        .byte $FF   ; 



off_02_B771_2F:
- D 1 - I - 0x00D781 03:B771: 5E        .byte $5E   ; 
- D 1 - I - 0x00D782 03:B772: 05        .byte $05   ; 
- - - - - - 0x00D783 03:B773: FF        .byte $FF   ; 



off_02_B774_30:
- - - - - - 0x00D784 03:B774: 60        .byte $60   ; 
- - - - - - 0x00D785 03:B775: 05        .byte $05   ; 
- - - - - - 0x00D786 03:B776: FF        .byte $FF   ; 



off_02_B777_31:
- - - - - - 0x00D787 03:B777: 62        .byte $62   ; 
- - - - - - 0x00D788 03:B778: 05        .byte $05   ; 
- - - - - - 0x00D789 03:B779: FF        .byte $FF   ; 



off_02_B77A_32:
- D 1 - I - 0x00D78A 03:B77A: 64        .byte $64   ; 
- D 1 - I - 0x00D78B 03:B77B: 05        .byte $05   ; 
- D 1 - I - 0x00D78C 03:B77C: FF        .byte $FF   ; 



off_02_B77D_33:
- D 1 - I - 0x00D78D 03:B77D: 66        .byte $66   ; 
- D 1 - I - 0x00D78E 03:B77E: 05        .byte $05   ; 
- D 1 - I - 0x00D78F 03:B77F: FF        .byte $FF   ; 



off_02_B780_34:
- - - - - - 0x00D790 03:B780: 68        .byte $68   ; 
- - - - - - 0x00D791 03:B781: 05        .byte $05   ; 
- - - - - - 0x00D792 03:B782: FF        .byte $FF   ; 



off_02_B783_35:
- - - - - - 0x00D793 03:B783: 6A        .byte $6A   ; 
- - - - - - 0x00D794 03:B784: 05        .byte $05   ; 
- - - - - - 0x00D795 03:B785: FF        .byte $FF   ; 



off_02_B786_36:
- D 1 - I - 0x00D796 03:B786: 6C        .byte $6C   ; 
- D 1 - I - 0x00D797 03:B787: 05        .byte $05   ; 
- - - - - - 0x00D798 03:B788: FF        .byte $FF   ; 



off_02_B789_37:
- - - - - - 0x00D799 03:B789: 6E        .byte $6E   ; 
- - - - - - 0x00D79A 03:B78A: 05        .byte $05   ; 
- - - - - - 0x00D79B 03:B78B: FF        .byte $FF   ; 



off_02_B78C_38:
- - - - - - 0x00D79C 03:B78C: 70        .byte $70   ; 
- - - - - - 0x00D79D 03:B78D: 05        .byte $05   ; 
- - - - - - 0x00D79E 03:B78E: FF        .byte $FF   ; 



off_02_B78F_39:
- D 1 - I - 0x00D79F 03:B78F: 6F        .byte $6F   ; 
- D 1 - I - 0x00D7A0 03:B790: 05        .byte $05   ; 
- D 1 - I - 0x00D7A1 03:B791: FF        .byte $FF   ; 



off_02_B792_3A:
- D 1 - I - 0x00D7A2 03:B792: 71        .byte $71   ; 
- D 1 - I - 0x00D7A3 03:B793: 05        .byte $05   ; 
- D 1 - I - 0x00D7A4 03:B794: FF        .byte $FF   ; 



off_02_B795_3B:
- - - - - - 0x00D7A5 03:B795: 72        .byte $72   ; 
- - - - - - 0x00D7A6 03:B796: 0A        .byte $0A   ; 
- - - - - - 0x00D7A7 03:B797: 73        .byte $73   ; 
- - - - - - 0x00D7A8 03:B798: 0B        .byte $0B   ; 
- - - - - - 0x00D7A9 03:B799: 74        .byte $74   ; 
- - - - - - 0x00D7AA 03:B79A: 0B        .byte $0B   ; 
- - - - - - 0x00D7AB 03:B79B: 75        .byte $75   ; 
- - - - - - 0x00D7AC 03:B79C: 08        .byte $08   ; 
- - - - - - 0x00D7AD 03:B79D: 76        .byte $76   ; 
- - - - - - 0x00D7AE 03:B79E: 08        .byte $08   ; 
- - - - - - 0x00D7AF 03:B79F: 77        .byte $77   ; 
- - - - - - 0x00D7B0 03:B7A0: 08        .byte $08   ; 
- - - - - - 0x00D7B1 03:B7A1: FE        .byte $FE   ; 



off_02_B7A2_3C:
- - - - - - 0x00D7B2 03:B7A2: 72        .byte $72   ; 
- - - - - - 0x00D7B3 03:B7A3: 0F        .byte $0F   ; 
- - - - - - 0x00D7B4 03:B7A4: 73        .byte $73   ; 
- - - - - - 0x00D7B5 03:B7A5: 17        .byte $17   ; 
- - - - - - 0x00D7B6 03:B7A6: FE        .byte $FE   ; 



off_02_B7A7_3D:
- D 1 - I - 0x00D7B7 03:B7A7: FC        .byte $FC   ; 
- D 1 - I - 0x00D7B8 03:B7A8: 08        .byte $08   ; 
- D 1 - I - 0x00D7B9 03:B7A9: 04        .byte $04   ; 
- D 1 - I - 0x00D7BA 03:B7AA: 78        .byte $78   ; 



off_02_B7AB_3E:
- D 1 - I - 0x00D7BB 03:B7AB: FC        .byte $FC   ; 
- D 1 - I - 0x00D7BC 03:B7AC: 08        .byte $08   ; 
- D 1 - I - 0x00D7BD 03:B7AD: 04        .byte $04   ; 
- D 1 - I - 0x00D7BE 03:B7AE: 7C        .byte $7C   ; 



off_02_B7AF_3F:
- D 1 - I - 0x00D7BF 03:B7AF: FC        .byte $FC   ; 
- D 1 - I - 0x00D7C0 03:B7B0: 08        .byte $08   ; 
- D 1 - I - 0x00D7C1 03:B7B1: 04        .byte $04   ; 
- D 1 - I - 0x00D7C2 03:B7B2: 80        .byte $80   ; 



off_02_B7B3_40:
- D 1 - I - 0x00D7C3 03:B7B3: FC        .byte $FC   ; 
- D 1 - I - 0x00D7C4 03:B7B4: 08        .byte $08   ; 
- D 1 - I - 0x00D7C5 03:B7B5: 04        .byte $04   ; 
- D 1 - I - 0x00D7C6 03:B7B6: 84        .byte $84   ; 



off_02_B7B7_41:
- D 1 - I - 0x00D7C7 03:B7B7: FC        .byte $FC   ; 
- D 1 - I - 0x00D7C8 03:B7B8: 08        .byte $08   ; 
- D 1 - I - 0x00D7C9 03:B7B9: 04        .byte $04   ; 
- D 1 - I - 0x00D7CA 03:B7BA: 88        .byte $88   ; 



off_02_B7BB_42:
- D 1 - I - 0x00D7CB 03:B7BB: FC        .byte $FC   ; 
- D 1 - I - 0x00D7CC 03:B7BC: 08        .byte $08   ; 
- D 1 - I - 0x00D7CD 03:B7BD: 04        .byte $04   ; 
- D 1 - I - 0x00D7CE 03:B7BE: 8C        .byte $8C   ; 



off_02_B7BF_43:
- D 1 - I - 0x00D7CF 03:B7BF: FC        .byte $FC   ; 
- D 1 - I - 0x00D7D0 03:B7C0: 08        .byte $08   ; 
- D 1 - I - 0x00D7D1 03:B7C1: 04        .byte $04   ; 
- D 1 - I - 0x00D7D2 03:B7C2: 90        .byte $90   ; 



off_02_B7C3_44:
- D 1 - I - 0x00D7D3 03:B7C3: FC        .byte $FC   ; 
- D 1 - I - 0x00D7D4 03:B7C4: 08        .byte $08   ; 
- D 1 - I - 0x00D7D5 03:B7C5: 04        .byte $04   ; 
- D 1 - I - 0x00D7D6 03:B7C6: 94        .byte $94   ; 



off_02_B7C7_45:
- - - - - - 0x00D7D7 03:B7C7: 98        .byte $98   ; 
- - - - - - 0x00D7D8 03:B7C8: 05        .byte $05   ; 
- - - - - - 0x00D7D9 03:B7C9: FF        .byte $FF   ; 



off_02_B7CA_46:
- D 1 - I - 0x00D7DA 03:B7CA: 99        .byte $99   ; 
- D 1 - I - 0x00D7DB 03:B7CB: 05        .byte $05   ; 
- - - - - - 0x00D7DC 03:B7CC: FF        .byte $FF   ; 



off_02_B7CD_47:
- D 1 - I - 0x00D7DD 03:B7CD: 9A        .byte $9A   ; 
- D 1 - I - 0x00D7DE 03:B7CE: 05        .byte $05   ; 
- - - - - - 0x00D7DF 03:B7CF: FF        .byte $FF   ; 



off_02_B7D0_48:
- - - - - - 0x00D7E0 03:B7D0: 9B        .byte $9B   ; 
- - - - - - 0x00D7E1 03:B7D1: 05        .byte $05   ; 
- - - - - - 0x00D7E2 03:B7D2: FF        .byte $FF   ; 



off_02_B7D3_49:
- D 1 - I - 0x00D7E3 03:B7D3: 9C        .byte $9C   ; 
- D 1 - I - 0x00D7E4 03:B7D4: 05        .byte $05   ; 
- - - - - - 0x00D7E5 03:B7D5: FF        .byte $FF   ; 



off_02_B7D6_4A:
- D 1 - I - 0x00D7E6 03:B7D6: 9D        .byte $9D   ; 
- D 1 - I - 0x00D7E7 03:B7D7: 05        .byte $05   ; 
- D 1 - I - 0x00D7E8 03:B7D8: FF        .byte $FF   ; 



off_02_B7D9_4B:
- D 1 - I - 0x00D7E9 03:B7D9: 9E        .byte $9E   ; 
- D 1 - I - 0x00D7EA 03:B7DA: 05        .byte $05   ; 
- - - - - - 0x00D7EB 03:B7DB: FF        .byte $FF   ; 



off_02_B7DC_4C:
- D 1 - I - 0x00D7EC 03:B7DC: 9F        .byte $9F   ; 
- D 1 - I - 0x00D7ED 03:B7DD: 05        .byte $05   ; 
- D 1 - I - 0x00D7EE 03:B7DE: FF        .byte $FF   ; 



_off019_0x00D7EF_07:
- D 1 - I - 0x00D7EF 03:B7DF: 21 B8     .word off_07_B821_01
- D 1 - I - 0x00D7F1 03:B7E1: 2A B8     .word off_07_B82A_02
- D 1 - I - 0x00D7F3 03:B7E3: 2E B8     .word off_07_B82E_03
- D 1 - I - 0x00D7F5 03:B7E5: 32 B8     .word off_07_B832_04
- D 1 - I - 0x00D7F7 03:B7E7: 36 B8     .word off_07_B836_05
- D 1 - I - 0x00D7F9 03:B7E9: 41 B8     .word off_07_B841_06
- D 1 - I - 0x00D7FB 03:B7EB: 4C B8     .word off_07_B84C_07
- D 1 - I - 0x00D7FD 03:B7ED: 57 B8     .word off_07_B857_08
- D 1 - I - 0x00D7FF 03:B7EF: 62 B8     .word off_07_B862_09
- D 1 - I - 0x00D801 03:B7F1: 6D B8     .word off_07_B86D_0A
- D 1 - I - 0x00D803 03:B7F3: 78 B8     .word off_07_B878_0B
- D 1 - I - 0x00D805 03:B7F5: 83 B8     .word off_07_B883_0C
- D 1 - I - 0x00D807 03:B7F7: 8E B8     .word off_07_B88E_0D
- D 1 - I - 0x00D809 03:B7F9: 92 B8     .word off_07_B892_0E
- D 1 - I - 0x00D80B 03:B7FB: 96 B8     .word off_07_B896_0F
- D 1 - I - 0x00D80D 03:B7FD: 9A B8     .word off_07_B89A_10
- D 1 - I - 0x00D80F 03:B7FF: 9E B8     .word off_07_B89E_11
- D 1 - I - 0x00D811 03:B801: A2 B8     .word off_07_B8A2_12
- D 1 - I - 0x00D813 03:B803: A6 B8     .word off_07_B8A6_13
- D 1 - I - 0x00D815 03:B805: AA B8     .word off_07_B8AA_14
- D 1 - I - 0x00D817 03:B807: AE B8     .word off_07_B8AE_15
- D 1 - I - 0x00D819 03:B809: B9 B8     .word off_07_B8B9_16
- D 1 - I - 0x00D81B 03:B80B: C4 B8     .word off_07_B8C4_17
- D 1 - I - 0x00D81D 03:B80D: CF B8     .word off_07_B8CF_18
- D 1 - I - 0x00D81F 03:B80F: E3 B8     .word off_07_B8E3_19
- D 1 - I - 0x00D821 03:B811: E8 B8     .word off_07_B8E8_1A
- D 1 - I - 0x00D823 03:B813: EC B8     .word off_07_B8EC_1B
- D 1 - I - 0x00D825 03:B815: F0 B8     .word off_07_B8F0_1C
- D 1 - I - 0x00D827 03:B817: F3 B8     .word off_07_B8F3_1D
- D 1 - I - 0x00D829 03:B819: F6 B8     .word off_07_B8F6_1E
- D 1 - I - 0x00D82B 03:B81B: F9 B8     .word off_07_B8F9_1F
- D 1 - I - 0x00D82D 03:B81D: FC B8     .word off_07_B8FC_20
- D 1 - I - 0x00D82F 03:B81F: DA B8     .word off_07_B8DA_21



off_07_B821_01:
- D 1 - I - 0x00D831 03:B821: 01        .byte $01   ; 
- D 1 - I - 0x00D832 03:B822: 04        .byte $04   ; 
- D 1 - I - 0x00D833 03:B823: 02        .byte $02   ; 
- D 1 - I - 0x00D834 03:B824: 03        .byte $03   ; 
- D 1 - I - 0x00D835 03:B825: 03        .byte $03   ; 
- D 1 - I - 0x00D836 03:B826: 05        .byte $05   ; 
- D 1 - I - 0x00D837 03:B827: 04        .byte $04   ; 
- D 1 - I - 0x00D838 03:B828: 05        .byte $05   ; 
- D 1 - I - 0x00D839 03:B829: FE        .byte $FE   ; 



off_07_B82A_02:
- D 1 - I - 0x00D83A 03:B82A: FC        .byte $FC   ; 
- D 1 - I - 0x00D83B 03:B82B: 04        .byte $04   ; 
- D 1 - I - 0x00D83C 03:B82C: 04        .byte $04   ; 
- D 1 - I - 0x00D83D 03:B82D: 09        .byte $09   ; 



off_07_B82E_03:
- D 1 - I - 0x00D83E 03:B82E: FC        .byte $FC   ; 
- D 1 - I - 0x00D83F 03:B82F: 05        .byte $05   ; 
- D 1 - I - 0x00D840 03:B830: 02        .byte $02   ; 
- D 1 - I - 0x00D841 03:B831: 0D        .byte $0D   ; 



off_07_B832_04:
- D 1 - I - 0x00D842 03:B832: FC        .byte $FC   ; 
- D 1 - I - 0x00D843 03:B833: 07        .byte $07   ; 
- D 1 - I - 0x00D844 03:B834: 02        .byte $02   ; 
- D 1 - I - 0x00D845 03:B835: 0F        .byte $0F   ; 



off_07_B836_05:
- D 1 - I - 0x00D846 03:B836: 11        .byte $11   ; 
- D 1 - I - 0x00D847 03:B837: 03        .byte $03   ; 
- D 1 - I - 0x00D848 03:B838: 12        .byte $12   ; 
- D 1 - I - 0x00D849 03:B839: 02        .byte $02   ; 
- D 1 - I - 0x00D84A 03:B83A: 13        .byte $13   ; 
- D 1 - I - 0x00D84B 03:B83B: 01        .byte $01   ; 
- D 1 - I - 0x00D84C 03:B83C: 14        .byte $14   ; 
- D 1 - I - 0x00D84D 03:B83D: 01        .byte $01   ; 
- D 1 - I - 0x00D84E 03:B83E: 61        .byte $61   ; 
- D 1 - I - 0x00D84F 03:B83F: 01        .byte $01   ; 
- D 1 - I - 0x00D850 03:B840: FF        .byte $FF   ; 



off_07_B841_06:
- D 1 - I - 0x00D851 03:B841: 15        .byte $15   ; 
- D 1 - I - 0x00D852 03:B842: 03        .byte $03   ; 
- D 1 - I - 0x00D853 03:B843: 16        .byte $16   ; 
- D 1 - I - 0x00D854 03:B844: 02        .byte $02   ; 
- D 1 - I - 0x00D855 03:B845: 17        .byte $17   ; 
- D 1 - I - 0x00D856 03:B846: 01        .byte $01   ; 
- D 1 - I - 0x00D857 03:B847: 18        .byte $18   ; 
- D 1 - I - 0x00D858 03:B848: 01        .byte $01   ; 
- D 1 - I - 0x00D859 03:B849: 62        .byte $62   ; 
- D 1 - I - 0x00D85A 03:B84A: 01        .byte $01   ; 
- D 1 - I - 0x00D85B 03:B84B: FF        .byte $FF   ; 



off_07_B84C_07:
- D 1 - I - 0x00D85C 03:B84C: 19        .byte $19   ; 
- D 1 - I - 0x00D85D 03:B84D: 03        .byte $03   ; 
- D 1 - I - 0x00D85E 03:B84E: 1A        .byte $1A   ; 
- D 1 - I - 0x00D85F 03:B84F: 02        .byte $02   ; 
- D 1 - I - 0x00D860 03:B850: 1B        .byte $1B   ; 
- D 1 - I - 0x00D861 03:B851: 01        .byte $01   ; 
- D 1 - I - 0x00D862 03:B852: 1C        .byte $1C   ; 
- D 1 - I - 0x00D863 03:B853: 01        .byte $01   ; 
- D 1 - I - 0x00D864 03:B854: 63        .byte $63   ; 
- D 1 - I - 0x00D865 03:B855: 01        .byte $01   ; 
- D 1 - I - 0x00D866 03:B856: FF        .byte $FF   ; 



off_07_B857_08:
- D 1 - I - 0x00D867 03:B857: 1D        .byte $1D   ; 
- D 1 - I - 0x00D868 03:B858: 03        .byte $03   ; 
- D 1 - I - 0x00D869 03:B859: 1E        .byte $1E   ; 
- D 1 - I - 0x00D86A 03:B85A: 02        .byte $02   ; 
- D 1 - I - 0x00D86B 03:B85B: 1F        .byte $1F   ; 
- D 1 - I - 0x00D86C 03:B85C: 01        .byte $01   ; 
- D 1 - I - 0x00D86D 03:B85D: 20        .byte $20   ; 
- D 1 - I - 0x00D86E 03:B85E: 01        .byte $01   ; 
- D 1 - I - 0x00D86F 03:B85F: 64        .byte $64   ; 
- D 1 - I - 0x00D870 03:B860: 01        .byte $01   ; 
- D 1 - I - 0x00D871 03:B861: FF        .byte $FF   ; 



off_07_B862_09:
- D 1 - I - 0x00D872 03:B862: 21        .byte $21   ; 
- D 1 - I - 0x00D873 03:B863: 03        .byte $03   ; 
- D 1 - I - 0x00D874 03:B864: 22        .byte $22   ; 
- D 1 - I - 0x00D875 03:B865: 02        .byte $02   ; 
- D 1 - I - 0x00D876 03:B866: 23        .byte $23   ; 
- D 1 - I - 0x00D877 03:B867: 01        .byte $01   ; 
- D 1 - I - 0x00D878 03:B868: 24        .byte $24   ; 
- D 1 - I - 0x00D879 03:B869: 01        .byte $01   ; 
- D 1 - I - 0x00D87A 03:B86A: 65        .byte $65   ; 
- D 1 - I - 0x00D87B 03:B86B: 01        .byte $01   ; 
- D 1 - I - 0x00D87C 03:B86C: FF        .byte $FF   ; 



off_07_B86D_0A:
- D 1 - I - 0x00D87D 03:B86D: 25        .byte $25   ; 
- D 1 - I - 0x00D87E 03:B86E: 03        .byte $03   ; 
- D 1 - I - 0x00D87F 03:B86F: 26        .byte $26   ; 
- D 1 - I - 0x00D880 03:B870: 02        .byte $02   ; 
- D 1 - I - 0x00D881 03:B871: 27        .byte $27   ; 
- D 1 - I - 0x00D882 03:B872: 01        .byte $01   ; 
- D 1 - I - 0x00D883 03:B873: 28        .byte $28   ; 
- D 1 - I - 0x00D884 03:B874: 01        .byte $01   ; 
- D 1 - I - 0x00D885 03:B875: 66        .byte $66   ; 
- D 1 - I - 0x00D886 03:B876: 01        .byte $01   ; 
- D 1 - I - 0x00D887 03:B877: FF        .byte $FF   ; 



off_07_B878_0B:
- D 1 - I - 0x00D888 03:B878: 29        .byte $29   ; 
- D 1 - I - 0x00D889 03:B879: 03        .byte $03   ; 
- D 1 - I - 0x00D88A 03:B87A: 2A        .byte $2A   ; 
- D 1 - I - 0x00D88B 03:B87B: 02        .byte $02   ; 
- D 1 - I - 0x00D88C 03:B87C: 2B        .byte $2B   ; 
- D 1 - I - 0x00D88D 03:B87D: 01        .byte $01   ; 
- D 1 - I - 0x00D88E 03:B87E: 2C        .byte $2C   ; 
- D 1 - I - 0x00D88F 03:B87F: 01        .byte $01   ; 
- D 1 - I - 0x00D890 03:B880: 67        .byte $67   ; 
- D 1 - I - 0x00D891 03:B881: 01        .byte $01   ; 
- D 1 - I - 0x00D892 03:B882: FF        .byte $FF   ; 



off_07_B883_0C:
- D 1 - I - 0x00D893 03:B883: 2D        .byte $2D   ; 
- D 1 - I - 0x00D894 03:B884: 03        .byte $03   ; 
- D 1 - I - 0x00D895 03:B885: 2E        .byte $2E   ; 
- D 1 - I - 0x00D896 03:B886: 02        .byte $02   ; 
- D 1 - I - 0x00D897 03:B887: 2F        .byte $2F   ; 
- D 1 - I - 0x00D898 03:B888: 01        .byte $01   ; 
- D 1 - I - 0x00D899 03:B889: 30        .byte $30   ; 
- D 1 - I - 0x00D89A 03:B88A: 01        .byte $01   ; 
- D 1 - I - 0x00D89B 03:B88B: 68        .byte $68   ; 
- D 1 - I - 0x00D89C 03:B88C: 01        .byte $01   ; 
- D 1 - I - 0x00D89D 03:B88D: FF        .byte $FF   ; 



off_07_B88E_0D:
- D 1 - I - 0x00D89E 03:B88E: FC        .byte $FC   ; 
- D 1 - I - 0x00D89F 03:B88F: 01        .byte $01   ; 
- D 1 - I - 0x00D8A0 03:B890: 06        .byte $06   ; 
- D 1 - I - 0x00D8A1 03:B891: 31        .byte $31   ; 



off_07_B892_0E:
- D 1 - I - 0x00D8A2 03:B892: FC        .byte $FC   ; 
- D 1 - I - 0x00D8A3 03:B893: 01        .byte $01   ; 
- D 1 - I - 0x00D8A4 03:B894: 06        .byte $06   ; 
- D 1 - I - 0x00D8A5 03:B895: 37        .byte $37   ; 



off_07_B896_0F:
- D 1 - I - 0x00D8A6 03:B896: FC        .byte $FC   ; 
- D 1 - I - 0x00D8A7 03:B897: 01        .byte $01   ; 
- D 1 - I - 0x00D8A8 03:B898: 06        .byte $06   ; 
- D 1 - I - 0x00D8A9 03:B899: 3D        .byte $3D   ; 



off_07_B89A_10:
- D 1 - I - 0x00D8AA 03:B89A: FC        .byte $FC   ; 
- D 1 - I - 0x00D8AB 03:B89B: 01        .byte $01   ; 
- D 1 - I - 0x00D8AC 03:B89C: 06        .byte $06   ; 
- D 1 - I - 0x00D8AD 03:B89D: 43        .byte $43   ; 



off_07_B89E_11:
- D 1 - I - 0x00D8AE 03:B89E: FC        .byte $FC   ; 
- D 1 - I - 0x00D8AF 03:B89F: 01        .byte $01   ; 
- D 1 - I - 0x00D8B0 03:B8A0: 06        .byte $06   ; 
- D 1 - I - 0x00D8B1 03:B8A1: 49        .byte $49   ; 



off_07_B8A2_12:
- D 1 - I - 0x00D8B2 03:B8A2: FC        .byte $FC   ; 
- D 1 - I - 0x00D8B3 03:B8A3: 01        .byte $01   ; 
- D 1 - I - 0x00D8B4 03:B8A4: 06        .byte $06   ; 
- D 1 - I - 0x00D8B5 03:B8A5: 4F        .byte $4F   ; 



off_07_B8A6_13:
- D 1 - I - 0x00D8B6 03:B8A6: FC        .byte $FC   ; 
- D 1 - I - 0x00D8B7 03:B8A7: 01        .byte $01   ; 
- D 1 - I - 0x00D8B8 03:B8A8: 06        .byte $06   ; 
- D 1 - I - 0x00D8B9 03:B8A9: 55        .byte $55   ; 



off_07_B8AA_14:
- D 1 - I - 0x00D8BA 03:B8AA: FC        .byte $FC   ; 
- D 1 - I - 0x00D8BB 03:B8AB: 01        .byte $01   ; 
- D 1 - I - 0x00D8BC 03:B8AC: 06        .byte $06   ; 
- D 1 - I - 0x00D8BD 03:B8AD: 5B        .byte $5B   ; 



off_07_B8AE_15:
- D 1 - I - 0x00D8BE 03:B8AE: FD        .byte $FD   ; 
- D 1 - I - 0x00D8BF 03:B8AF: 02        .byte $02   ; 
- D 1 - I - 0x00D8C0 03:B8B0: 6E        .byte $6E   ; 
- D 1 - I - 0x00D8C1 03:B8B1: 6F        .byte $6F   ; 
- D 1 - I - 0x00D8C2 03:B8B2: 70        .byte $70   ; 
- D 1 - I - 0x00D8C3 03:B8B3: 71        .byte $71   ; 
- D 1 - I - 0x00D8C4 03:B8B4: 72        .byte $72   ; 
- - - - - - 0x00D8C5 03:B8B5: 73        .byte $73   ; 
- - - - - - 0x00D8C6 03:B8B6: 74        .byte $74   ; 
- - - - - - 0x00D8C7 03:B8B7: 75        .byte $75   ; 
- - - - - - 0x00D8C8 03:B8B8: FE        .byte $FE   ; 



off_07_B8B9_16:
- D 1 - I - 0x00D8C9 03:B8B9: FD        .byte $FD   ; 
- D 1 - I - 0x00D8CA 03:B8BA: 02        .byte $02   ; 
- D 1 - I - 0x00D8CB 03:B8BB: 76        .byte $76   ; 
- D 1 - I - 0x00D8CC 03:B8BC: 77        .byte $77   ; 
- D 1 - I - 0x00D8CD 03:B8BD: 78        .byte $78   ; 
- D 1 - I - 0x00D8CE 03:B8BE: 79        .byte $79   ; 
- D 1 - I - 0x00D8CF 03:B8BF: 7A        .byte $7A   ; 
- - - - - - 0x00D8D0 03:B8C0: 7B        .byte $7B   ; 
- - - - - - 0x00D8D1 03:B8C1: 7C        .byte $7C   ; 
- - - - - - 0x00D8D2 03:B8C2: 7D        .byte $7D   ; 
- - - - - - 0x00D8D3 03:B8C3: FE        .byte $FE   ; 



off_07_B8C4_17:
- D 1 - I - 0x00D8D4 03:B8C4: FD        .byte $FD   ; 
- D 1 - I - 0x00D8D5 03:B8C5: 02        .byte $02   ; 
- D 1 - I - 0x00D8D6 03:B8C6: 7E        .byte $7E   ; 
- D 1 - I - 0x00D8D7 03:B8C7: 7F        .byte $7F   ; 
- D 1 - I - 0x00D8D8 03:B8C8: 80        .byte $80   ; 
- D 1 - I - 0x00D8D9 03:B8C9: 81        .byte $81   ; 
- D 1 - I - 0x00D8DA 03:B8CA: 82        .byte $82   ; 
- - - - - - 0x00D8DB 03:B8CB: 83        .byte $83   ; 
- - - - - - 0x00D8DC 03:B8CC: 84        .byte $84   ; 
- - - - - - 0x00D8DD 03:B8CD: 85        .byte $85   ; 
- - - - - - 0x00D8DE 03:B8CE: FE        .byte $FE   ; 



off_07_B8CF_18:
- D 1 - I - 0x00D8DF 03:B8CF: FD        .byte $FD   ; 
- D 1 - I - 0x00D8E0 03:B8D0: 02        .byte $02   ; 
- D 1 - I - 0x00D8E1 03:B8D1: 86        .byte $86   ; 
- D 1 - I - 0x00D8E2 03:B8D2: 87        .byte $87   ; 
- D 1 - I - 0x00D8E3 03:B8D3: 88        .byte $88   ; 
- D 1 - I - 0x00D8E4 03:B8D4: 89        .byte $89   ; 
- D 1 - I - 0x00D8E5 03:B8D5: 8A        .byte $8A   ; 
- - - - - - 0x00D8E6 03:B8D6: 8B        .byte $8B   ; 
- - - - - - 0x00D8E7 03:B8D7: 8C        .byte $8C   ; 
- - - - - - 0x00D8E8 03:B8D8: 8D        .byte $8D   ; 
- - - - - - 0x00D8E9 03:B8D9: FE        .byte $FE   ; 



off_07_B8DA_21:
- D 1 - I - 0x00D8EA 03:B8DA: 01        .byte $01   ; 
- D 1 - I - 0x00D8EB 03:B8DB: 01        .byte $01   ; 
- D 1 - I - 0x00D8EC 03:B8DC: 02        .byte $02   ; 
- D 1 - I - 0x00D8ED 03:B8DD: 03        .byte $03   ; 
- D 1 - I - 0x00D8EE 03:B8DE: 03        .byte $03   ; 
- D 1 - I - 0x00D8EF 03:B8DF: 03        .byte $03   ; 
- D 1 - I - 0x00D8F0 03:B8E0: 04        .byte $04   ; 
- D 1 - I - 0x00D8F1 03:B8E1: 03        .byte $03   ; 
- D 1 - I - 0x00D8F2 03:B8E2: FE        .byte $FE   ; 



off_07_B8E3_19:
- D 1 - I - 0x00D8F3 03:B8E3: 8F        .byte $8F   ; 
- D 1 - I - 0x00D8F4 03:B8E4: 08        .byte $08   ; 
- - - - - - 0x00D8F5 03:B8E5: 93        .byte $93   ; 
- - - - - - 0x00D8F6 03:B8E6: 08        .byte $08   ; 
- - - - - - 0x00D8F7 03:B8E7: FF        .byte $FF   ; 



off_07_B8E8_1A:
- D 1 - I - 0x00D8F8 03:B8E8: FC        .byte $FC   ; 
- D 1 - I - 0x00D8F9 03:B8E9: 08        .byte $08   ; 
- D 1 - I - 0x00D8FA 03:B8EA: 02        .byte $02   ; 
- D 1 - I - 0x00D8FB 03:B8EB: 94        .byte $94   ; 



off_07_B8EC_1B:
- D 1 - I - 0x00D8FC 03:B8EC: FC        .byte $FC   ; 
- D 1 - I - 0x00D8FD 03:B8ED: 08        .byte $08   ; 
- D 1 - I - 0x00D8FE 03:B8EE: 02        .byte $02   ; 
- D 1 - I - 0x00D8FF 03:B8EF: 96        .byte $96   ; 



off_07_B8F0_1C:
- D 1 - I - 0x00D900 03:B8F0: 05        .byte $05   ; 
- D 1 - I - 0x00D901 03:B8F1: 08        .byte $08   ; 
- D 1 - I - 0x00D902 03:B8F2: FF        .byte $FF   ; 



off_07_B8F3_1D:
- D 1 - I - 0x00D903 03:B8F3: 06        .byte $06   ; 
- D 1 - I - 0x00D904 03:B8F4: 08        .byte $08   ; 
- D 1 - I - 0x00D905 03:B8F5: FF        .byte $FF   ; 



off_07_B8F6_1E:
- D 1 - I - 0x00D906 03:B8F6: 08        .byte $08   ; 
- D 1 - I - 0x00D907 03:B8F7: 08        .byte $08   ; 
- - - - - - 0x00D908 03:B8F8: FF        .byte $FF   ; 



off_07_B8F9_1F:
- D 1 - I - 0x00D909 03:B8F9: 07        .byte $07   ; 
- D 1 - I - 0x00D90A 03:B8FA: 08        .byte $08   ; 
- D 1 - I - 0x00D90B 03:B8FB: FF        .byte $FF   ; 



off_07_B8FC_20:
- D 1 - I - 0x00D90C 03:B8FC: 6B        .byte $6B   ; 
- D 1 - I - 0x00D90D 03:B8FD: 05        .byte $05   ; 
- - - - - - 0x00D90E 03:B8FE: FF        .byte $FF   ; 



_off019_0x00D90F_04:
- D 1 - I - 0x00D90F 03:B8FF: C3 B9     .word off_04_B9C3_01
- D 1 - I - 0x00D911 03:B901: C7 B9     .word off_04_B9C7_02
- - - - - - 0x00D913 03:B903: CB B9     .word off_04_B9CB_03
- D 1 - I - 0x00D915 03:B905: D0 B9     .word off_04_B9D0_04
- D 1 - I - 0x00D917 03:B907: D5 B9     .word off_04_B9D5_05
- D 1 - I - 0x00D919 03:B909: DA B9     .word off_04_B9DA_06
- D 1 - I - 0x00D91B 03:B90B: DF B9     .word off_04_B9DF_07
- D 1 - I - 0x00D91D 03:B90D: E2 B9     .word off_04_B9E2_08
- D 1 - I - 0x00D91F 03:B90F: E5 B9     .word off_04_B9E5_09
- D 1 - I - 0x00D921 03:B911: E8 B9     .word off_04_B9E8_0A
- - - - - - 0x00D923 03:B913: EB B9     .word off_04_B9EB_0B
- - - - - - 0x00D925 03:B915: EE B9     .word off_04_B9EE_0C
- D 1 - I - 0x00D927 03:B917: F1 B9     .word off_04_B9F1_0D
- D 1 - I - 0x00D929 03:B919: F4 B9     .word off_04_B9F4_0E
- D 1 - I - 0x00D92B 03:B91B: F7 B9     .word off_04_B9F7_0F
- D 1 - I - 0x00D92D 03:B91D: FA B9     .word off_04_B9FA_10
- D 1 - I - 0x00D92F 03:B91F: FD B9     .word off_04_B9FD_11
- D 1 - I - 0x00D931 03:B921: 00 BA     .word off_04_BA00_12
- - - - - - 0x00D933 03:B923: 03 BA     .word off_04_BA03_13
- - - - - - 0x00D935 03:B925: 07 BA     .word off_04_BA07_14
- D 1 - I - 0x00D937 03:B927: 11 BA     .word off_04_BA11_15
- D 1 - I - 0x00D939 03:B929: 1A BA     .word off_04_BA1A_16
- - - - - - 0x00D93B 03:B92B: 23 BA     .word off_04_BA23_17
- D 1 - I - 0x00D93D 03:B92D: 23 BA     .word off_04_BA23_18
- D 1 - I - 0x00D93F 03:B92F: 26 BA     .word off_04_BA26_19
- D 1 - I - 0x00D941 03:B931: 29 BA     .word off_04_BA29_1A
- D 1 - I - 0x00D943 03:B933: 2C BA     .word off_04_BA2C_1B
- D 1 - I - 0x00D945 03:B935: 2F BA     .word off_04_BA2F_1C
- D 1 - I - 0x00D947 03:B937: 32 BA     .word off_04_BA32_1D
- D 1 - I - 0x00D949 03:B939: 35 BA     .word off_04_BA35_1E
- D 1 - I - 0x00D94B 03:B93B: 3C BA     .word off_04_BA3C_1F
- D 1 - I - 0x00D94D 03:B93D: 49 BA     .word off_04_BA49_20
- D 1 - I - 0x00D94F 03:B93F: 4D BA     .word off_04_BA4D_21
- D 1 - I - 0x00D951 03:B941: 51 BA     .word off_04_BA51_22
- - - - - - 0x00D953 03:B943: 56 BA     .word off_04_BA56_23
- - - - - - 0x00D955 03:B945: 5B BA     .word off_04_BA5B_24
- D 1 - I - 0x00D957 03:B947: 5B BA     .word off_04_BA5B_25
- - - - - - 0x00D959 03:B949: 60 BA     .word off_04_BA60_26
- D 1 - I - 0x00D95B 03:B94B: 65 BA     .word off_04_BA65_27
- D 1 - I - 0x00D95D 03:B94D: 68 BA     .word off_04_BA68_28
- D 1 - I - 0x00D95F 03:B94F: 77 BA     .word off_04_BA77_29
- - - - - - 0x00D961 03:B951: 7B BA     .word off_04_BA7B_2A
- - - - - - 0x00D963 03:B953: 7F BA     .word off_04_BA7F_2B
- - - - - - 0x00D965 03:B955: 83 BA     .word off_04_BA83_2C
- - - - - - 0x00D967 03:B957: 87 BA     .word off_04_BA87_2D
- - - - - - 0x00D969 03:B959: 90 BA     .word off_04_BA90_2E
- D 1 - I - 0x00D96B 03:B95B: 99 BA     .word off_04_BA99_2F
- - - - - - 0x00D96D 03:B95D: 9C BA     .word off_04_BA9C_30
- D 1 - I - 0x00D96F 03:B95F: 9F BA     .word off_04_BA9F_31
- - - - - - 0x00D971 03:B961: A2 BA     .word off_04_BAA2_32
- D 1 - I - 0x00D973 03:B963: A5 BA     .word off_04_BAA5_33
- - - - - - 0x00D975 03:B965: A8 BA     .word off_04_BAA8_34
- D 1 - I - 0x00D977 03:B967: B7 BA     .word off_04_BAB7_35
- D 1 - I - 0x00D979 03:B969: BB BA     .word off_04_BABB_36
- D 1 - I - 0x00D97B 03:B96B: BF BA     .word off_04_BABF_37
- - - - - - 0x00D97D 03:B96D: C8 BA     .word off_04_BAC8_38
- D 1 - I - 0x00D97F 03:B96F: D1 BA     .word off_04_BAD1_39
- D 1 - I - 0x00D981 03:B971: D4 BA     .word off_04_BAD4_3A
- D 1 - I - 0x00D983 03:B973: D7 BA     .word off_04_BAD7_3B
- D 1 - I - 0x00D985 03:B975: DA BA     .word off_04_BADA_3C
- D 1 - I - 0x00D987 03:B977: DD BA     .word off_04_BADD_3D
- D 1 - I - 0x00D989 03:B979: E0 BA     .word off_04_BAE0_3E
- - - - - - 0x00D98B 03:B97B: EF BA     .word off_04_BAEF_3F
- - - - - - 0x00D98D 03:B97D: F4 BA     .word off_04_BAF4_40
- D 1 - I - 0x00D98F 03:B97F: F9 BA     .word off_04_BAF9_41
- D 1 - I - 0x00D991 03:B981: FE BA     .word off_04_BAFE_42
- - - - - - 0x00D993 03:B983: 03 BB     .word off_04_BB03_43
- - - - - - 0x00D995 03:B985: 08 BB     .word off_04_BB08_44
- D 1 - I - 0x00D997 03:B987: 0D BB     .word off_04_BB0D_45
- D 1 - I - 0x00D999 03:B989: 10 BB     .word off_04_BB10_46
- D 1 - I - 0x00D99B 03:B98B: 13 BB     .word off_04_BB13_47
- D 1 - I - 0x00D99D 03:B98D: 16 BB     .word off_04_BB16_48
- - - - - - 0x00D99F 03:B98F: 19 BB     .word off_04_BB19_49
- - - - - - 0x00D9A1 03:B991: 1C BB     .word off_04_BB1C_4A
- D 1 - I - 0x00D9A3 03:B993: 1F BB     .word off_04_BB1F_4B
- D 1 - I - 0x00D9A5 03:B995: 22 BB     .word off_04_BB22_4C
- D 1 - I - 0x00D9A7 03:B997: 25 BB     .word off_04_BB25_4D
- D 1 - I - 0x00D9A9 03:B999: 28 BB     .word off_04_BB28_4E
- D 1 - I - 0x00D9AB 03:B99B: 0B BA     .word off_04_BA0B_4F
- D 1 - I - 0x00D9AD 03:B99D: 0E BA     .word off_04_BA0E_50
- D 1 - I - 0x00D9AF 03:B99F: 43 BA     .word off_04_BA43_51
- D 1 - I - 0x00D9B1 03:B9A1: 46 BA     .word off_04_BA46_52
- D 1 - I - 0x00D9B3 03:B9A3: 6B BA     .word off_04_BA6B_53
- D 1 - I - 0x00D9B5 03:B9A5: 6E BA     .word off_04_BA6E_54
- D 1 - I - 0x00D9B7 03:B9A7: 71 BA     .word off_04_BA71_55
- D 1 - I - 0x00D9B9 03:B9A9: 74 BA     .word off_04_BA74_56
- - - - - - 0x00D9BB 03:B9AB: AB BA     .word off_04_BAAB_57
- - - - - - 0x00D9BD 03:B9AD: AE BA     .word off_04_BAAE_58
- - - - - - 0x00D9BF 03:B9AF: B1 BA     .word off_04_BAB1_59
- - - - - - 0x00D9C1 03:B9B1: B4 BA     .word off_04_BAB4_5A
- D 1 - I - 0x00D9C3 03:B9B3: E3 BA     .word off_04_BAE3_5B
- D 1 - I - 0x00D9C5 03:B9B5: E6 BA     .word off_04_BAE6_5C
- - - - - - 0x00D9C7 03:B9B7: E9 BA     .word off_04_BAE9_5D
- - - - - - 0x00D9C9 03:B9B9: EC BA     .word off_04_BAEC_5E
- D 1 - I - 0x00D9CB 03:B9BB: 2B BB     .word off_04_BB2B_5F
- D 1 - I - 0x00D9CD 03:B9BD: 2F BB     .word off_04_BB2F_60
- - - - - - 0x00D9CF 03:B9BF: 33 BB     .word off_04_BB33_61
- - - - - - 0x00D9D1 03:B9C1: 36 BB     .word off_04_BB36_62



off_04_B9C3_01:
- D 1 - I - 0x00D9D3 03:B9C3: FC        .byte $FC   ; 
- D 1 - I - 0x00D9D4 03:B9C4: 07        .byte $07   ; 
- D 1 - I - 0x00D9D5 03:B9C5: 04        .byte $04   ; 
- D 1 - I - 0x00D9D6 03:B9C6: 01        .byte $01   ; 



off_04_B9C7_02:
- D 1 - I - 0x00D9D7 03:B9C7: FC        .byte $FC   ; 
- D 1 - I - 0x00D9D8 03:B9C8: 07        .byte $07   ; 
- D 1 - I - 0x00D9D9 03:B9C9: 04        .byte $04   ; 
- D 1 - I - 0x00D9DA 03:B9CA: 05        .byte $05   ; 



off_04_B9CB_03:
- - - - - - 0x00D9DB 03:B9CB: 09        .byte $09   ; 
- - - - - - 0x00D9DC 03:B9CC: 08        .byte $08   ; 
- - - - - - 0x00D9DD 03:B9CD: 0A        .byte $0A   ; 
- - - - - - 0x00D9DE 03:B9CE: 06        .byte $06   ; 
- - - - - - 0x00D9DF 03:B9CF: FE        .byte $FE   ; 



off_04_B9D0_04:
- D 1 - I - 0x00D9E0 03:B9D0: 0B        .byte $0B   ; 
- D 1 - I - 0x00D9E1 03:B9D1: 08        .byte $08   ; 
- D 1 - I - 0x00D9E2 03:B9D2: 0C        .byte $0C   ; 
- D 1 - I - 0x00D9E3 03:B9D3: 06        .byte $06   ; 
- D 1 - I - 0x00D9E4 03:B9D4: FE        .byte $FE   ; 



off_04_B9D5_05:
- D 1 - I - 0x00D9E5 03:B9D5: 0D        .byte $0D   ; 
- D 1 - I - 0x00D9E6 03:B9D6: 08        .byte $08   ; 
- D 1 - I - 0x00D9E7 03:B9D7: 0E        .byte $0E   ; 
- D 1 - I - 0x00D9E8 03:B9D8: 06        .byte $06   ; 
- D 1 - I - 0x00D9E9 03:B9D9: FE        .byte $FE   ; 



off_04_B9DA_06:
- D 1 - I - 0x00D9EA 03:B9DA: 0F        .byte $0F   ; 
- D 1 - I - 0x00D9EB 03:B9DB: 08        .byte $08   ; 
- D 1 - I - 0x00D9EC 03:B9DC: 10        .byte $10   ; 
- D 1 - I - 0x00D9ED 03:B9DD: 06        .byte $06   ; 
- D 1 - I - 0x00D9EE 03:B9DE: FE        .byte $FE   ; 



off_04_B9DF_07:
- D 1 - I - 0x00D9EF 03:B9DF: 11        .byte $11   ; 
- D 1 - I - 0x00D9F0 03:B9E0: 05        .byte $05   ; 
- D 1 - I - 0x00D9F1 03:B9E1: FF        .byte $FF   ; 



off_04_B9E2_08:
- D 1 - I - 0x00D9F2 03:B9E2: 12        .byte $12   ; 
- D 1 - I - 0x00D9F3 03:B9E3: 05        .byte $05   ; 
- D 1 - I - 0x00D9F4 03:B9E4: FF        .byte $FF   ; 



off_04_B9E5_09:
- D 1 - I - 0x00D9F5 03:B9E5: 13        .byte $13   ; 
- D 1 - I - 0x00D9F6 03:B9E6: 05        .byte $05   ; 
- D 1 - I - 0x00D9F7 03:B9E7: FF        .byte $FF   ; 



off_04_B9E8_0A:
- D 1 - I - 0x00D9F8 03:B9E8: 14        .byte $14   ; 
- D 1 - I - 0x00D9F9 03:B9E9: 05        .byte $05   ; 
- D 1 - I - 0x00D9FA 03:B9EA: FF        .byte $FF   ; 



off_04_B9EB_0B:
- - - - - - 0x00D9FB 03:B9EB: 15        .byte $15   ; 
- - - - - - 0x00D9FC 03:B9EC: 05        .byte $05   ; 
- - - - - - 0x00D9FD 03:B9ED: FF        .byte $FF   ; 



off_04_B9EE_0C:
- - - - - - 0x00D9FE 03:B9EE: 16        .byte $16   ; 
- - - - - - 0x00D9FF 03:B9EF: 05        .byte $05   ; 
- - - - - - 0x00DA00 03:B9F0: FF        .byte $FF   ; 



off_04_B9F1_0D:
- D 1 - I - 0x00DA01 03:B9F1: 09        .byte $09   ; 
- D 1 - I - 0x00DA02 03:B9F2: 05        .byte $05   ; 
- D 1 - I - 0x00DA03 03:B9F3: FF        .byte $FF   ; 



off_04_B9F4_0E:
- D 1 - I - 0x00DA04 03:B9F4: 0B        .byte $0B   ; 
- D 1 - I - 0x00DA05 03:B9F5: 05        .byte $05   ; 
- D 1 - I - 0x00DA06 03:B9F6: FF        .byte $FF   ; 



off_04_B9F7_0F:
- D 1 - I - 0x00DA07 03:B9F7: 0D        .byte $0D   ; 
- D 1 - I - 0x00DA08 03:B9F8: 05        .byte $05   ; 
- D 1 - I - 0x00DA09 03:B9F9: FF        .byte $FF   ; 



off_04_B9FA_10:
- D 1 - I - 0x00DA0A 03:B9FA: 0F        .byte $0F   ; 
- D 1 - I - 0x00DA0B 03:B9FB: 05        .byte $05   ; 
- D 1 - I - 0x00DA0C 03:B9FC: FF        .byte $FF   ; 



off_04_B9FD_11:
- D 1 - I - 0x00DA0D 03:B9FD: 17        .byte $17   ; 
- D 1 - I - 0x00DA0E 03:B9FE: 08        .byte $08   ; 
- D 1 - I - 0x00DA0F 03:B9FF: FF        .byte $FF   ; 



off_04_BA00_12:
- D 1 - I - 0x00DA10 03:BA00: 18        .byte $18   ; 
- D 1 - I - 0x00DA11 03:BA01: 08        .byte $08   ; 
- D 1 - I - 0x00DA12 03:BA02: FF        .byte $FF   ; 



off_04_BA03_13:
- - - - - - 0x00DA13 03:BA03: FC        .byte $FC   ; 
- - - - - - 0x00DA14 03:BA04: 07        .byte $07   ; 
- - - - - - 0x00DA15 03:BA05: 04        .byte $04   ; 
- - - - - - 0x00DA16 03:BA06: 19        .byte $19   ; 



off_04_BA07_14:
- - - - - - 0x00DA17 03:BA07: FC        .byte $FC   ; 
- - - - - - 0x00DA18 03:BA08: 07        .byte $07   ; 
- - - - - - 0x00DA19 03:BA09: 04        .byte $04   ; 
- - - - - - 0x00DA1A 03:BA0A: 1D        .byte $1D   ; 



off_04_BA0B_4F:
- D 1 - I - 0x00DA1B 03:BA0B: 21        .byte $21   ; 
- D 1 - I - 0x00DA1C 03:BA0C: 08        .byte $08   ; 
- D 1 - I - 0x00DA1D 03:BA0D: FF        .byte $FF   ; 



off_04_BA0E_50:
- D 1 - I - 0x00DA1E 03:BA0E: 24        .byte $24   ; 
- D 1 - I - 0x00DA1F 03:BA0F: 08        .byte $08   ; 
- D 1 - I - 0x00DA20 03:BA10: FF        .byte $FF   ; 



off_04_BA11_15:
- D 1 - I - 0x00DA21 03:BA11: 21        .byte $21   ; 
- D 1 - I - 0x00DA22 03:BA12: 07        .byte $07   ; 
- D 1 - I - 0x00DA23 03:BA13: 22        .byte $22   ; 
- D 1 - I - 0x00DA24 03:BA14: 05        .byte $05   ; 
- D 1 - I - 0x00DA25 03:BA15: 27        .byte $27   ; 
- D 1 - I - 0x00DA26 03:BA16: 05        .byte $05   ; 
- D 1 - I - 0x00DA27 03:BA17: 23        .byte $23   ; 
- D 1 - I - 0x00DA28 03:BA18: 07        .byte $07   ; 
- D 1 - I - 0x00DA29 03:BA19: FE        .byte $FE   ; 



off_04_BA1A_16:
- D 1 - I - 0x00DA2A 03:BA1A: 24        .byte $24   ; 
- D 1 - I - 0x00DA2B 03:BA1B: 07        .byte $07   ; 
- D 1 - I - 0x00DA2C 03:BA1C: 25        .byte $25   ; 
- D 1 - I - 0x00DA2D 03:BA1D: 05        .byte $05   ; 
- D 1 - I - 0x00DA2E 03:BA1E: 28        .byte $28   ; 
- D 1 - I - 0x00DA2F 03:BA1F: 05        .byte $05   ; 
- D 1 - I - 0x00DA30 03:BA20: 26        .byte $26   ; 
- D 1 - I - 0x00DA31 03:BA21: 07        .byte $07   ; 
- D 1 - I - 0x00DA32 03:BA22: FE        .byte $FE   ; 



off_04_BA23_17:
off_04_BA23_18:
- D 1 - I - 0x00DA33 03:BA23: 2B        .byte $2B   ; 
- D 1 - I - 0x00DA34 03:BA24: 05        .byte $05   ; 
- D 1 - I - 0x00DA35 03:BA25: FF        .byte $FF   ; 



off_04_BA26_19:
- D 1 - I - 0x00DA36 03:BA26: 2C        .byte $2C   ; 
- D 1 - I - 0x00DA37 03:BA27: 05        .byte $05   ; 
- D 1 - I - 0x00DA38 03:BA28: FF        .byte $FF   ; 



off_04_BA29_1A:
- D 1 - I - 0x00DA39 03:BA29: 2D        .byte $2D   ; 
- D 1 - I - 0x00DA3A 03:BA2A: 05        .byte $05   ; 
- D 1 - I - 0x00DA3B 03:BA2B: FE        .byte $FE   ; 



off_04_BA2C_1B:
- D 1 - I - 0x00DA3C 03:BA2C: 2E        .byte $2E   ; 
- D 1 - I - 0x00DA3D 03:BA2D: 05        .byte $05   ; 
- D 1 - I - 0x00DA3E 03:BA2E: FE        .byte $FE   ; 



off_04_BA2F_1C:
- D 1 - I - 0x00DA3F 03:BA2F: 2F        .byte $2F   ; 
- D 1 - I - 0x00DA40 03:BA30: 05        .byte $05   ; 
- D 1 - I - 0x00DA41 03:BA31: FE        .byte $FE   ; 



off_04_BA32_1D:
- D 1 - I - 0x00DA42 03:BA32: 30        .byte $30   ; 
- D 1 - I - 0x00DA43 03:BA33: 05        .byte $05   ; 
- D 1 - I - 0x00DA44 03:BA34: FE        .byte $FE   ; 



off_04_BA35_1E:
- D 1 - I - 0x00DA45 03:BA35: FD        .byte $FD   ; 
- D 1 - I - 0x00DA46 03:BA36: 06        .byte $06   ; 
- D 1 - I - 0x00DA47 03:BA37: 31        .byte $31   ; 
- D 1 - I - 0x00DA48 03:BA38: 32        .byte $32   ; 
- D 1 - I - 0x00DA49 03:BA39: 29        .byte $29   ; 
- D 1 - I - 0x00DA4A 03:BA3A: 33        .byte $33   ; 
- D 1 - I - 0x00DA4B 03:BA3B: FE        .byte $FE   ; 



off_04_BA3C_1F:
- D 1 - I - 0x00DA4C 03:BA3C: FD        .byte $FD   ; 
- D 1 - I - 0x00DA4D 03:BA3D: 06        .byte $06   ; 
- D 1 - I - 0x00DA4E 03:BA3E: 34        .byte $34   ; 
- D 1 - I - 0x00DA4F 03:BA3F: 35        .byte $35   ; 
- D 1 - I - 0x00DA50 03:BA40: 2A        .byte $2A   ; 
- D 1 - I - 0x00DA51 03:BA41: 36        .byte $36   ; 
- D 1 - I - 0x00DA52 03:BA42: FE        .byte $FE   ; 



off_04_BA43_51:
- D 1 - I - 0x00DA53 03:BA43: 31        .byte $31   ; 
- D 1 - I - 0x00DA54 03:BA44: 0C        .byte $0C   ; 
- D 1 - I - 0x00DA55 03:BA45: FF        .byte $FF   ; 



off_04_BA46_52:
- D 1 - I - 0x00DA56 03:BA46: 34        .byte $34   ; 
- D 1 - I - 0x00DA57 03:BA47: 0C        .byte $0C   ; 
- D 1 - I - 0x00DA58 03:BA48: FF        .byte $FF   ; 



off_04_BA49_20:
- D 1 - I - 0x00DA59 03:BA49: FC        .byte $FC   ; 
- D 1 - I - 0x00DA5A 03:BA4A: 07        .byte $07   ; 
- D 1 - I - 0x00DA5B 03:BA4B: 04        .byte $04   ; 
- D 1 - I - 0x00DA5C 03:BA4C: 37        .byte $37   ; 



off_04_BA4D_21:
- D 1 - I - 0x00DA5D 03:BA4D: FC        .byte $FC   ; 
- D 1 - I - 0x00DA5E 03:BA4E: 07        .byte $07   ; 
- D 1 - I - 0x00DA5F 03:BA4F: 04        .byte $04   ; 
- D 1 - I - 0x00DA60 03:BA50: 3B        .byte $3B   ; 



off_04_BA51_22:
- D 1 - I - 0x00DA61 03:BA51: 3F        .byte $3F   ; 
- D 1 - I - 0x00DA62 03:BA52: 05        .byte $05   ; 
- D 1 - I - 0x00DA63 03:BA53: 40        .byte $40   ; 
- D 1 - I - 0x00DA64 03:BA54: 05        .byte $05   ; 
- D 1 - I - 0x00DA65 03:BA55: FE        .byte $FE   ; 



off_04_BA56_23:
- - - - - - 0x00DA66 03:BA56: 41        .byte $41   ; 
- - - - - - 0x00DA67 03:BA57: 05        .byte $05   ; 
- - - - - - 0x00DA68 03:BA58: 42        .byte $42   ; 
- - - - - - 0x00DA69 03:BA59: 05        .byte $05   ; 
- - - - - - 0x00DA6A 03:BA5A: FE        .byte $FE   ; 



off_04_BA5B_24:
off_04_BA5B_25:
- D 1 - I - 0x00DA6B 03:BA5B: 47        .byte $47   ; 
- D 1 - I - 0x00DA6C 03:BA5C: 05        .byte $05   ; 
- D 1 - I - 0x00DA6D 03:BA5D: 48        .byte $48   ; 
- D 1 - I - 0x00DA6E 03:BA5E: 05        .byte $05   ; 
- D 1 - I - 0x00DA6F 03:BA5F: FE        .byte $FE   ; 



off_04_BA60_26:
- - - - - - 0x00DA70 03:BA60: 49        .byte $49   ; 
- - - - - - 0x00DA71 03:BA61: 05        .byte $05   ; 
- - - - - - 0x00DA72 03:BA62: 4A        .byte $4A   ; 
- - - - - - 0x00DA73 03:BA63: 05        .byte $05   ; 
- - - - - - 0x00DA74 03:BA64: FE        .byte $FE   ; 



off_04_BA65_27:
- D 1 - I - 0x00DA75 03:BA65: 4B        .byte $4B   ; 
- D 1 - I - 0x00DA76 03:BA66: 05        .byte $05   ; 
- D 1 - I - 0x00DA77 03:BA67: FF        .byte $FF   ; 



off_04_BA68_28:
- D 1 - I - 0x00DA78 03:BA68: 4C        .byte $4C   ; 
- D 1 - I - 0x00DA79 03:BA69: 05        .byte $05   ; 
- D 1 - I - 0x00DA7A 03:BA6A: FF        .byte $FF   ; 



off_04_BA6B_53:
- D 1 - I - 0x00DA7B 03:BA6B: 3F        .byte $3F   ; 
- D 1 - I - 0x00DA7C 03:BA6C: 05        .byte $05   ; 
- D 1 - I - 0x00DA7D 03:BA6D: FF        .byte $FF   ; 



off_04_BA6E_54:
- D 1 - I - 0x00DA7E 03:BA6E: 41        .byte $41   ; 
- D 1 - I - 0x00DA7F 03:BA6F: 05        .byte $05   ; 
- D 1 - I - 0x00DA80 03:BA70: FF        .byte $FF   ; 



off_04_BA71_55:
- D 1 - I - 0x00DA81 03:BA71: 47        .byte $47   ; 
- D 1 - I - 0x00DA82 03:BA72: 05        .byte $05   ; 
- D 1 - I - 0x00DA83 03:BA73: FF        .byte $FF   ; 



off_04_BA74_56:
- D 1 - I - 0x00DA84 03:BA74: 49        .byte $49   ; 
- D 1 - I - 0x00DA85 03:BA75: 05        .byte $05   ; 
- D 1 - I - 0x00DA86 03:BA76: FF        .byte $FF   ; 



off_04_BA77_29:
- D 1 - I - 0x00DA87 03:BA77: FC        .byte $FC   ; 
- D 1 - I - 0x00DA88 03:BA78: 07        .byte $07   ; 
- D 1 - I - 0x00DA89 03:BA79: 04        .byte $04   ; 
- D 1 - I - 0x00DA8A 03:BA7A: 4D        .byte $4D   ; 



off_04_BA7B_2A:
- - - - - - 0x00DA8B 03:BA7B: FC        .byte $FC   ; 
- - - - - - 0x00DA8C 03:BA7C: 07        .byte $07   ; 
- - - - - - 0x00DA8D 03:BA7D: 04        .byte $04   ; 
- - - - - - 0x00DA8E 03:BA7E: 51        .byte $51   ; 



off_04_BA7F_2B:
- - - - - - 0x00DA8F 03:BA7F: FC        .byte $FC   ; 
- - - - - - 0x00DA90 03:BA80: 09        .byte $09   ; 
- - - - - - 0x00DA91 03:BA81: 03        .byte $03   ; 
- - - - - - 0x00DA92 03:BA82: 55        .byte $55   ; 



off_04_BA83_2C:
- - - - - - 0x00DA93 03:BA83: FC        .byte $FC   ; 
- - - - - - 0x00DA94 03:BA84: 09        .byte $09   ; 
- - - - - - 0x00DA95 03:BA85: 03        .byte $03   ; 
- - - - - - 0x00DA96 03:BA86: 58        .byte $58   ; 



off_04_BA87_2D:
- - - - - - 0x00DA97 03:BA87: 5B        .byte $5B   ; 
- - - - - - 0x00DA98 03:BA88: 02        .byte $02   ; 
- - - - - - 0x00DA99 03:BA89: 5C        .byte $5C   ; 
- - - - - - 0x00DA9A 03:BA8A: 02        .byte $02   ; 
- - - - - - 0x00DA9B 03:BA8B: 5D        .byte $5D   ; 
- - - - - - 0x00DA9C 03:BA8C: 07        .byte $07   ; 
- - - - - - 0x00DA9D 03:BA8D: 5E        .byte $5E   ; 
- - - - - - 0x00DA9E 03:BA8E: 07        .byte $07   ; 
- - - - - - 0x00DA9F 03:BA8F: FE        .byte $FE   ; 



off_04_BA90_2E:
- - - - - - 0x00DAA0 03:BA90: 5F        .byte $5F   ; 
- - - - - - 0x00DAA1 03:BA91: 02        .byte $02   ; 
- - - - - - 0x00DAA2 03:BA92: 60        .byte $60   ; 
- - - - - - 0x00DAA3 03:BA93: 02        .byte $02   ; 
- - - - - - 0x00DAA4 03:BA94: 61        .byte $61   ; 
- - - - - - 0x00DAA5 03:BA95: 07        .byte $07   ; 
- - - - - - 0x00DAA6 03:BA96: 62        .byte $62   ; 
- - - - - - 0x00DAA7 03:BA97: 07        .byte $07   ; 
- - - - - - 0x00DAA8 03:BA98: FE        .byte $FE   ; 



off_04_BA99_2F:
- D 1 - I - 0x00DAA9 03:BA99: 63        .byte $63   ; 
- D 1 - I - 0x00DAAA 03:BA9A: 05        .byte $05   ; 
- D 1 - I - 0x00DAAB 03:BA9B: FF        .byte $FF   ; 



off_04_BA9C_30:
- - - - - - 0x00DAAC 03:BA9C: 64        .byte $64   ; 
- - - - - - 0x00DAAD 03:BA9D: 05        .byte $05   ; 
- - - - - - 0x00DAAE 03:BA9E: FF        .byte $FF   ; 



off_04_BA9F_31:
- D 1 - I - 0x00DAAF 03:BA9F: 65        .byte $65   ; 
- D 1 - I - 0x00DAB0 03:BAA0: 05        .byte $05   ; 
- D 1 - I - 0x00DAB1 03:BAA1: FE        .byte $FE   ; 



off_04_BAA2_32:
- - - - - - 0x00DAB2 03:BAA2: 66        .byte $66   ; 
- - - - - - 0x00DAB3 03:BAA3: 05        .byte $05   ; 
- - - - - - 0x00DAB4 03:BAA4: FE        .byte $FE   ; 



off_04_BAA5_33:
- D 1 - I - 0x00DAB5 03:BAA5: 67        .byte $67   ; 
- D 1 - I - 0x00DAB6 03:BAA6: 05        .byte $05   ; 
- D 1 - I - 0x00DAB7 03:BAA7: FE        .byte $FE   ; 



off_04_BAA8_34:
- - - - - - 0x00DAB8 03:BAA8: 68        .byte $68   ; 
- - - - - - 0x00DAB9 03:BAA9: 05        .byte $05   ; 
- - - - - - 0x00DABA 03:BAAA: FE        .byte $FE   ; 



off_04_BAAB_57:
- - - - - - 0x00DABB 03:BAAB: 4D        .byte $4D   ; 
- - - - - - 0x00DABC 03:BAAC: 08        .byte $08   ; 
- - - - - - 0x00DABD 03:BAAD: FF        .byte $FF   ; 



off_04_BAAE_58:
- - - - - - 0x00DABE 03:BAAE: 51        .byte $51   ; 
- - - - - - 0x00DABF 03:BAAF: 08        .byte $08   ; 
- - - - - - 0x00DAC0 03:BAB0: FF        .byte $FF   ; 



off_04_BAB1_59:
- - - - - - 0x00DAC1 03:BAB1: 5C        .byte $5C   ; 
- - - - - - 0x00DAC2 03:BAB2: 08        .byte $08   ; 
- - - - - - 0x00DAC3 03:BAB3: FF        .byte $FF   ; 



off_04_BAB4_5A:
- - - - - - 0x00DAC4 03:BAB4: 60        .byte $60   ; 
- - - - - - 0x00DAC5 03:BAB5: 08        .byte $08   ; 
- - - - - - 0x00DAC6 03:BAB6: FF        .byte $FF   ; 



off_04_BAB7_35:
- D 1 - I - 0x00DAC7 03:BAB7: FC        .byte $FC   ; 
- D 1 - I - 0x00DAC8 03:BAB8: 07        .byte $07   ; 
- D 1 - I - 0x00DAC9 03:BAB9: 04        .byte $04   ; 
- D 1 - I - 0x00DACA 03:BABA: 69        .byte $69   ; 



off_04_BABB_36:
- D 1 - I - 0x00DACB 03:BABB: FC        .byte $FC   ; 
- D 1 - I - 0x00DACC 03:BABC: 07        .byte $07   ; 
- D 1 - I - 0x00DACD 03:BABD: 04        .byte $04   ; 
- D 1 - I - 0x00DACE 03:BABE: 6D        .byte $6D   ; 



off_04_BABF_37:
- D 1 - I - 0x00DACF 03:BABF: 71        .byte $71   ; 
- D 1 - I - 0x00DAD0 03:BAC0: 08        .byte $08   ; 
- D 1 - I - 0x00DAD1 03:BAC1: 72        .byte $72   ; 
- D 1 - I - 0x00DAD2 03:BAC2: 03        .byte $03   ; 
- D 1 - I - 0x00DAD3 03:BAC3: 73        .byte $73   ; 
- D 1 - I - 0x00DAD4 03:BAC4: 09        .byte $09   ; 
- D 1 - I - 0x00DAD5 03:BAC5: 74        .byte $74   ; 
- D 1 - I - 0x00DAD6 03:BAC6: 09        .byte $09   ; 
- D 1 - I - 0x00DAD7 03:BAC7: FE        .byte $FE   ; 



off_04_BAC8_38:
- - - - - - 0x00DAD8 03:BAC8: 75        .byte $75   ; 
- - - - - - 0x00DAD9 03:BAC9: 08        .byte $08   ; 
- - - - - - 0x00DADA 03:BACA: 76        .byte $76   ; 
- - - - - - 0x00DADB 03:BACB: 03        .byte $03   ; 
- - - - - - 0x00DADC 03:BACC: 77        .byte $77   ; 
- - - - - - 0x00DADD 03:BACD: 09        .byte $09   ; 
- - - - - - 0x00DADE 03:BACE: 78        .byte $78   ; 
- - - - - - 0x00DADF 03:BACF: 09        .byte $09   ; 
- - - - - - 0x00DAE0 03:BAD0: FE        .byte $FE   ; 



off_04_BAD1_39:
- D 1 - I - 0x00DAE1 03:BAD1: 79        .byte $79   ; 
- D 1 - I - 0x00DAE2 03:BAD2: 05        .byte $05   ; 
- D 1 - I - 0x00DAE3 03:BAD3: FE        .byte $FE   ; 



off_04_BAD4_3A:
- D 1 - I - 0x00DAE4 03:BAD4: 7A        .byte $7A   ; 
- D 1 - I - 0x00DAE5 03:BAD5: 05        .byte $05   ; 
- D 1 - I - 0x00DAE6 03:BAD6: FE        .byte $FE   ; 



off_04_BAD7_3B:
- D 1 - I - 0x00DAE7 03:BAD7: 7B        .byte $7B   ; 
- D 1 - I - 0x00DAE8 03:BAD8: 05        .byte $05   ; 
- D 1 - I - 0x00DAE9 03:BAD9: FE        .byte $FE   ; 



off_04_BADA_3C:
- D 1 - I - 0x00DAEA 03:BADA: 7C        .byte $7C   ; 
- D 1 - I - 0x00DAEB 03:BADB: 05        .byte $05   ; 
- D 1 - I - 0x00DAEC 03:BADC: FE        .byte $FE   ; 



off_04_BADD_3D:
- D 1 - I - 0x00DAED 03:BADD: 7D        .byte $7D   ; 
- D 1 - I - 0x00DAEE 03:BADE: 05        .byte $05   ; 
- D 1 - I - 0x00DAEF 03:BADF: FF        .byte $FF   ; 



off_04_BAE0_3E:
- D 1 - I - 0x00DAF0 03:BAE0: 7E        .byte $7E   ; 
- D 1 - I - 0x00DAF1 03:BAE1: 05        .byte $05   ; 
- D 1 - I - 0x00DAF2 03:BAE2: FF        .byte $FF   ; 



off_04_BAE3_5B:
- D 1 - I - 0x00DAF3 03:BAE3: 71        .byte $71   ; 
- D 1 - I - 0x00DAF4 03:BAE4: 08        .byte $08   ; 
- D 1 - I - 0x00DAF5 03:BAE5: FF        .byte $FF   ; 



off_04_BAE6_5C:
- D 1 - I - 0x00DAF6 03:BAE6: 75        .byte $75   ; 
- D 1 - I - 0x00DAF7 03:BAE7: 08        .byte $08   ; 
- - - - - - 0x00DAF8 03:BAE8: FF        .byte $FF   ; 



off_04_BAE9_5D:
- - - - - - 0x00DAF9 03:BAE9: 69        .byte $69   ; 
- - - - - - 0x00DAFA 03:BAEA: 08        .byte $08   ; 
- - - - - - 0x00DAFB 03:BAEB: FF        .byte $FF   ; 



off_04_BAEC_5E:
- - - - - - 0x00DAFC 03:BAEC: 6D        .byte $6D   ; 
- - - - - - 0x00DAFD 03:BAED: 08        .byte $08   ; 
- - - - - - 0x00DAFE 03:BAEE: FF        .byte $FF   ; 



off_04_BAEF_3F:
- - - - - - 0x00DAFF 03:BAEF: 7F        .byte $7F   ; 
- - - - - - 0x00DB00 03:BAF0: 06        .byte $06   ; 
- - - - - - 0x00DB01 03:BAF1: 80        .byte $80   ; 
- - - - - - 0x00DB02 03:BAF2: 06        .byte $06   ; 
- - - - - - 0x00DB03 03:BAF3: FE        .byte $FE   ; 



off_04_BAF4_40:
- - - - - - 0x00DB04 03:BAF4: 81        .byte $81   ; 
- - - - - - 0x00DB05 03:BAF5: 06        .byte $06   ; 
- - - - - - 0x00DB06 03:BAF6: 82        .byte $82   ; 
- - - - - - 0x00DB07 03:BAF7: 06        .byte $06   ; 
- - - - - - 0x00DB08 03:BAF8: FE        .byte $FE   ; 



off_04_BAF9_41:
- D 1 - I - 0x00DB09 03:BAF9: 83        .byte $83   ; 
- D 1 - I - 0x00DB0A 03:BAFA: 06        .byte $06   ; 
- D 1 - I - 0x00DB0B 03:BAFB: 84        .byte $84   ; 
- D 1 - I - 0x00DB0C 03:BAFC: 06        .byte $06   ; 
- D 1 - I - 0x00DB0D 03:BAFD: FE        .byte $FE   ; 



off_04_BAFE_42:
- D 1 - I - 0x00DB0E 03:BAFE: 85        .byte $85   ; 
- D 1 - I - 0x00DB0F 03:BAFF: 06        .byte $06   ; 
- D 1 - I - 0x00DB10 03:BB00: 86        .byte $86   ; 
- D 1 - I - 0x00DB11 03:BB01: 06        .byte $06   ; 
- D 1 - I - 0x00DB12 03:BB02: FE        .byte $FE   ; 



off_04_BB03_43:
- - - - - - 0x00DB13 03:BB03: 87        .byte $87   ; 
- - - - - - 0x00DB14 03:BB04: 06        .byte $06   ; 
- - - - - - 0x00DB15 03:BB05: 88        .byte $88   ; 
- - - - - - 0x00DB16 03:BB06: 06        .byte $06   ; 
- - - - - - 0x00DB17 03:BB07: FE        .byte $FE   ; 



off_04_BB08_44:
- - - - - - 0x00DB18 03:BB08: 89        .byte $89   ; 
- - - - - - 0x00DB19 03:BB09: 06        .byte $06   ; 
- - - - - - 0x00DB1A 03:BB0A: 8A        .byte $8A   ; 
- - - - - - 0x00DB1B 03:BB0B: 06        .byte $06   ; 
- - - - - - 0x00DB1C 03:BB0C: FE        .byte $FE   ; 



off_04_BB0D_45:
- D 1 - I - 0x00DB1D 03:BB0D: 7F        .byte $7F   ; 
- D 1 - I - 0x00DB1E 03:BB0E: 05        .byte $05   ; 
- D 1 - I - 0x00DB1F 03:BB0F: FF        .byte $FF   ; 



off_04_BB10_46:
- D 1 - I - 0x00DB20 03:BB10: 81        .byte $81   ; 
- D 1 - I - 0x00DB21 03:BB11: 05        .byte $05   ; 
- D 1 - I - 0x00DB22 03:BB12: FF        .byte $FF   ; 



off_04_BB13_47:
- D 1 - I - 0x00DB23 03:BB13: 83        .byte $83   ; 
- D 1 - I - 0x00DB24 03:BB14: 05        .byte $05   ; 
- D 1 - I - 0x00DB25 03:BB15: FF        .byte $FF   ; 



off_04_BB16_48:
- D 1 - I - 0x00DB26 03:BB16: 85        .byte $85   ; 
- D 1 - I - 0x00DB27 03:BB17: 05        .byte $05   ; 
- D 1 - I - 0x00DB28 03:BB18: FF        .byte $FF   ; 



off_04_BB19_49:
- - - - - - 0x00DB29 03:BB19: 87        .byte $87   ; 
- - - - - - 0x00DB2A 03:BB1A: 05        .byte $05   ; 
- - - - - - 0x00DB2B 03:BB1B: FF        .byte $FF   ; 



off_04_BB1C_4A:
- - - - - - 0x00DB2C 03:BB1C: 89        .byte $89   ; 
- - - - - - 0x00DB2D 03:BB1D: 05        .byte $05   ; 
- - - - - - 0x00DB2E 03:BB1E: FF        .byte $FF   ; 



off_04_BB1F_4B:
- D 1 - I - 0x00DB2F 03:BB1F: 8B        .byte $8B   ; 
- D 1 - I - 0x00DB30 03:BB20: 05        .byte $05   ; 
- D 1 - I - 0x00DB31 03:BB21: FE        .byte $FE   ; 



off_04_BB22_4C:
- D 1 - I - 0x00DB32 03:BB22: 8C        .byte $8C   ; 
- D 1 - I - 0x00DB33 03:BB23: 05        .byte $05   ; 
- D 1 - I - 0x00DB34 03:BB24: FE        .byte $FE   ; 



off_04_BB25_4D:
- D 1 - I - 0x00DB35 03:BB25: 8D        .byte $8D   ; 
- D 1 - I - 0x00DB36 03:BB26: 05        .byte $05   ; 
- D 1 - I - 0x00DB37 03:BB27: FE        .byte $FE   ; 



off_04_BB28_4E:
- D 1 - I - 0x00DB38 03:BB28: 8E        .byte $8E   ; 
- D 1 - I - 0x00DB39 03:BB29: 05        .byte $05   ; 
- D 1 - I - 0x00DB3A 03:BB2A: FE        .byte $FE   ; 



off_04_BB2B_5F:
- D 1 - I - 0x00DB3B 03:BB2B: FC        .byte $FC   ; 
- D 1 - I - 0x00DB3C 03:BB2C: 07        .byte $07   ; 
- D 1 - I - 0x00DB3D 03:BB2D: 04        .byte $04   ; 
- D 1 - I - 0x00DB3E 03:BB2E: 8F        .byte $8F   ; 



off_04_BB2F_60:
- D 1 - I - 0x00DB3F 03:BB2F: FC        .byte $FC   ; 
- D 1 - I - 0x00DB40 03:BB30: 07        .byte $07   ; 
- D 1 - I - 0x00DB41 03:BB31: 04        .byte $04   ; 
- D 1 - I - 0x00DB42 03:BB32: 93        .byte $93   ; 



off_04_BB33_61:
- - - - - - 0x00DB43 03:BB33: 91        .byte $91   ; 
- - - - - - 0x00DB44 03:BB34: 05        .byte $05   ; 
- - - - - - 0x00DB45 03:BB35: FF        .byte $FF   ; 



off_04_BB36_62:
- - - - - - 0x00DB46 03:BB36: 95        .byte $95   ; 
- - - - - - 0x00DB47 03:BB37: 05        .byte $05   ; 
- - - - - - 0x00DB48 03:BB38: FF        .byte $FF   ; 



_off019_0x00DB49_03:
- D 1 - I - 0x00DB49 03:BB39: E7 BB     .word off_03_BBE7_01
- D 1 - I - 0x00DB4B 03:BB3B: EB BB     .word off_03_BBEB_02
- D 1 - I - 0x00DB4D 03:BB3D: F2 BB     .word off_03_BBF2_03
- D 1 - I - 0x00DB4F 03:BB3F: F9 BB     .word off_03_BBF9_04
- D 1 - I - 0x00DB51 03:BB41: 00 BC     .word off_03_BC00_05
- D 1 - I - 0x00DB53 03:BB43: 07 BC     .word off_03_BC07_06
- D 1 - I - 0x00DB55 03:BB45: 0B BC     .word off_03_BC0B_07
- D 1 - I - 0x00DB57 03:BB47: 0F BC     .word off_03_BC0F_08
- D 1 - I - 0x00DB59 03:BB49: 13 BC     .word off_03_BC13_09
- - - - - - 0x00DB5B 03:BB4B: 18 BC     .word off_03_BC18_0A
- D 1 - I - 0x00DB5D 03:BB4D: 1D BC     .word off_03_BC1D_0B
- - - - - - 0x00DB5F 03:BB4F: 22 BC     .word off_03_BC22_0C
- D 1 - I - 0x00DB61 03:BB51: 27 BC     .word off_03_BC27_0D
- D 1 - I - 0x00DB63 03:BB53: 2C BC     .word off_03_BC2C_0E
- D 1 - I - 0x00DB65 03:BB55: 31 BC     .word off_03_BC31_0F
- D 1 - I - 0x00DB67 03:BB57: 36 BC     .word off_03_BC36_10
- - - - - - 0x00DB69 03:BB59: 53 BC     .word off_03_BC53_11
- D 1 - I - 0x00DB6B 03:BB5B: 53 BC     .word off_03_BC53_12
- D 1 - I - 0x00DB6D 03:BB5D: 57 BC     .word off_03_BC57_13
- D 1 - I - 0x00DB6F 03:BB5F: 5C BC     .word off_03_BC5C_14
- D 1 - I - 0x00DB71 03:BB61: 60 BC     .word off_03_BC60_15
- D 1 - I - 0x00DB73 03:BB63: 66 BC     .word off_03_BC66_16
- D 1 - I - 0x00DB75 03:BB65: 6A BC     .word off_03_BC6A_17
- D 1 - I - 0x00DB77 03:BB67: 6F BC     .word off_03_BC6F_18
- D 1 - I - 0x00DB79 03:BB69: 75 BC     .word off_03_BC75_19
- D 1 - I - 0x00DB7B 03:BB6B: 88 BC     .word off_03_BC88_1A
- D 1 - I - 0x00DB7D 03:BB6D: 8C BC     .word off_03_BC8C_1B
- D 1 - I - 0x00DB7F 03:BB6F: 90 BC     .word off_03_BC90_1C
- D 1 - I - 0x00DB81 03:BB71: 94 BC     .word off_03_BC94_1D
- D 1 - I - 0x00DB83 03:BB73: 98 BC     .word off_03_BC98_1E
- D 1 - I - 0x00DB85 03:BB75: 9C BC     .word off_03_BC9C_1F
- D 1 - I - 0x00DB87 03:BB77: A0 BC     .word off_03_BCA0_20
- D 1 - I - 0x00DB89 03:BB79: A4 BC     .word off_03_BCA4_21
- D 1 - I - 0x00DB8B 03:BB7B: A8 BC     .word off_03_BCA8_22
- D 1 - I - 0x00DB8D 03:BB7D: AD BC     .word off_03_BCAD_23
- D 1 - I - 0x00DB8F 03:BB7F: B2 BC     .word off_03_BCB2_24
- - - - - - 0x00DB91 03:BB81: B7 BC     .word off_03_BCB7_25
- D 1 - I - 0x00DB93 03:BB83: BC BC     .word off_03_BCBC_26
- D 1 - I - 0x00DB95 03:BB85: C1 BC     .word off_03_BCC1_27
- D 1 - I - 0x00DB97 03:BB87: C6 BC     .word off_03_BCC6_28
- D 1 - I - 0x00DB99 03:BB89: CB BC     .word off_03_BCCB_29
- D 1 - I - 0x00DB9B 03:BB8B: E8 BC     .word off_03_BCE8_2A
- D 1 - I - 0x00DB9D 03:BB8D: EB BC     .word off_03_BCEB_2B
- D 1 - I - 0x00DB9F 03:BB8F: EE BC     .word off_03_BCEE_2C
- D 1 - I - 0x00DBA1 03:BB91: F1 BC     .word off_03_BCF1_2D
- D 1 - I - 0x00DBA3 03:BB93: F4 BC     .word off_03_BCF4_2E
- - - - - - 0x00DBA5 03:BB95: F8 BC     .word off_03_BCF8_2F
- D 1 - I - 0x00DBA7 03:BB97: FF BC     .word off_03_BCFF_30
- D 1 - I - 0x00DBA9 03:BB99: 06 BD     .word off_03_BD06_31
- D 1 - I - 0x00DBAB 03:BB9B: 0D BD     .word off_03_BD0D_32
- - - - - - 0x00DBAD 03:BB9D: 14 BD     .word off_03_BD14_33
- - - - - - 0x00DBAF 03:BB9F: 18 BD     .word off_03_BD18_34
- D 1 - I - 0x00DBB1 03:BBA1: 1C BD     .word off_03_BD1C_35
- D 1 - I - 0x00DBB3 03:BBA3: 20 BD     .word off_03_BD20_36
- - - - - - 0x00DBB5 03:BBA5: 25 BD     .word off_03_BD25_37
- D 1 - I - 0x00DBB7 03:BBA7: 2A BD     .word off_03_BD2A_38
- D 1 - I - 0x00DBB9 03:BBA9: 2F BD     .word off_03_BD2F_39
- D 1 - I - 0x00DBBB 03:BBAB: 34 BD     .word off_03_BD34_3A
- D 1 - I - 0x00DBBD 03:BBAD: 39 BD     .word off_03_BD39_3B
- D 1 - I - 0x00DBBF 03:BBAF: 3E BD     .word off_03_BD3E_3C
- D 1 - I - 0x00DBC1 03:BBB1: 43 BD     .word off_03_BD43_3D
- D 1 - I - 0x00DBC3 03:BBB3: 48 BD     .word off_03_BD48_3E
- D 1 - I - 0x00DBC5 03:BBB5: 55 BD     .word off_03_BD55_3F
- D 1 - I - 0x00DBC7 03:BBB7: 62 BD     .word off_03_BD62_40
- D 1 - I - 0x00DBC9 03:BBB9: 65 BD     .word off_03_BD65_41
- D 1 - I - 0x00DBCB 03:BBBB: 68 BD     .word off_03_BD68_42
- D 1 - I - 0x00DBCD 03:BBBD: 6B BD     .word off_03_BD6B_43
- D 1 - I - 0x00DBCF 03:BBBF: 3B BC     .word off_03_BC3B_44
- D 1 - I - 0x00DBD1 03:BBC1: 3E BC     .word off_03_BC3E_45
- D 1 - I - 0x00DBD3 03:BBC3: 41 BC     .word off_03_BC41_46
- D 1 - I - 0x00DBD5 03:BBC5: 44 BC     .word off_03_BC44_47
- D 1 - I - 0x00DBD7 03:BBC7: 47 BC     .word off_03_BC47_48
- D 1 - I - 0x00DBD9 03:BBC9: 4A BC     .word off_03_BC4A_49
- D 1 - I - 0x00DBDB 03:BBCB: 4D BC     .word off_03_BC4D_4A
- D 1 - I - 0x00DBDD 03:BBCD: 50 BC     .word off_03_BC50_4B
- D 1 - I - 0x00DBDF 03:BBCF: D0 BC     .word off_03_BCD0_4C
- D 1 - I - 0x00DBE1 03:BBD1: D3 BC     .word off_03_BCD3_4D
- D 1 - I - 0x00DBE3 03:BBD3: D6 BC     .word off_03_BCD6_4E
- D 1 - I - 0x00DBE5 03:BBD5: D9 BC     .word off_03_BCD9_4F
- D 1 - I - 0x00DBE7 03:BBD7: DC BC     .word off_03_BCDC_50
- D 1 - I - 0x00DBE9 03:BBD9: DF BC     .word off_03_BCDF_51
- D 1 - I - 0x00DBEB 03:BBDB: E2 BC     .word off_03_BCE2_52
- D 1 - I - 0x00DBED 03:BBDD: E5 BC     .word off_03_BCE5_53
- D 1 - I - 0x00DBEF 03:BBDF: 7C BC     .word off_03_BC7C_54
- D 1 - I - 0x00DBF1 03:BBE1: 7F BC     .word off_03_BC7F_55
- D 1 - I - 0x00DBF3 03:BBE3: 82 BC     .word off_03_BC82_56
- D 1 - I - 0x00DBF5 03:BBE5: 85 BC     .word off_03_BC85_57



off_03_BBE7_01:
- D 1 - I - 0x00DBF7 03:BBE7: FC        .byte $FC   ; 
- D 1 - I - 0x00DBF8 03:BBE8: 06        .byte $06   ; 
- D 1 - I - 0x00DBF9 03:BBE9: 04        .byte $04   ; 
- D 1 - I - 0x00DBFA 03:BBEA: 01        .byte $01   ; 



off_03_BBEB_02:
- D 1 - I - 0x00DBFB 03:BBEB: FD        .byte $FD   ; 
- D 1 - I - 0x00DBFC 03:BBEC: 06        .byte $06   ; 
- D 1 - I - 0x00DBFD 03:BBED: 05        .byte $05   ; 
- D 1 - I - 0x00DBFE 03:BBEE: 06        .byte $06   ; 
- D 1 - I - 0x00DBFF 03:BBEF: 07        .byte $07   ; 
- D 1 - I - 0x00DC00 03:BBF0: 32        .byte $32   ; 
- D 1 - I - 0x00DC01 03:BBF1: FF        .byte $FF   ; 



off_03_BBF2_03:
- D 1 - I - 0x00DC02 03:BBF2: FD        .byte $FD   ; 
- D 1 - I - 0x00DC03 03:BBF3: 06        .byte $06   ; 
- D 1 - I - 0x00DC04 03:BBF4: 08        .byte $08   ; 
- D 1 - I - 0x00DC05 03:BBF5: 09        .byte $09   ; 
- D 1 - I - 0x00DC06 03:BBF6: 0A        .byte $0A   ; 
- D 1 - I - 0x00DC07 03:BBF7: 33        .byte $33   ; 
- - - - - - 0x00DC08 03:BBF8: FF        .byte $FF   ; 



off_03_BBF9_04:
- D 1 - I - 0x00DC09 03:BBF9: FD        .byte $FD   ; 
- D 1 - I - 0x00DC0A 03:BBFA: 06        .byte $06   ; 
- D 1 - I - 0x00DC0B 03:BBFB: 0B        .byte $0B   ; 
- D 1 - I - 0x00DC0C 03:BBFC: 0C        .byte $0C   ; 
- D 1 - I - 0x00DC0D 03:BBFD: 0D        .byte $0D   ; 
- D 1 - I - 0x00DC0E 03:BBFE: 34        .byte $34   ; 
- - - - - - 0x00DC0F 03:BBFF: FF        .byte $FF   ; 



off_03_BC00_05:
- D 1 - I - 0x00DC10 03:BC00: FD        .byte $FD   ; 
- D 1 - I - 0x00DC11 03:BC01: 06        .byte $06   ; 
- D 1 - I - 0x00DC12 03:BC02: 0E        .byte $0E   ; 
- D 1 - I - 0x00DC13 03:BC03: 0F        .byte $0F   ; 
- D 1 - I - 0x00DC14 03:BC04: 10        .byte $10   ; 
- D 1 - I - 0x00DC15 03:BC05: 35        .byte $35   ; 
- - - - - - 0x00DC16 03:BC06: FF        .byte $FF   ; 



off_03_BC07_06:
- D 1 - I - 0x00DC17 03:BC07: FC        .byte $FC   ; 
- D 1 - I - 0x00DC18 03:BC08: 06        .byte $06   ; 
- D 1 - I - 0x00DC19 03:BC09: 04        .byte $04   ; 
- D 1 - I - 0x00DC1A 03:BC0A: 11        .byte $11   ; 



off_03_BC0B_07:
- D 1 - I - 0x00DC1B 03:BC0B: FC        .byte $FC   ; 
- D 1 - I - 0x00DC1C 03:BC0C: 06        .byte $06   ; 
- D 1 - I - 0x00DC1D 03:BC0D: 04        .byte $04   ; 
- D 1 - I - 0x00DC1E 03:BC0E: 15        .byte $15   ; 



off_03_BC0F_08:
- D 1 - I - 0x00DC1F 03:BC0F: FC        .byte $FC   ; 
- D 1 - I - 0x00DC20 03:BC10: 06        .byte $06   ; 
- D 1 - I - 0x00DC21 03:BC11: 04        .byte $04   ; 
- D 1 - I - 0x00DC22 03:BC12: 19        .byte $19   ; 



off_03_BC13_09:
- D 1 - I - 0x00DC23 03:BC13: 1D        .byte $1D   ; 
- D 1 - I - 0x00DC24 03:BC14: 05        .byte $05   ; 
- D 1 - I - 0x00DC25 03:BC15: 1E        .byte $1E   ; 
- D 1 - I - 0x00DC26 03:BC16: 05        .byte $05   ; 
- D 1 - I - 0x00DC27 03:BC17: FE        .byte $FE   ; 



off_03_BC18_0A:
- - - - - - 0x00DC28 03:BC18: 1F        .byte $1F   ; 
- - - - - - 0x00DC29 03:BC19: 05        .byte $05   ; 
- - - - - - 0x00DC2A 03:BC1A: 20        .byte $20   ; 
- - - - - - 0x00DC2B 03:BC1B: 05        .byte $05   ; 
- - - - - - 0x00DC2C 03:BC1C: FE        .byte $FE   ; 



off_03_BC1D_0B:
- D 1 - I - 0x00DC2D 03:BC1D: 21        .byte $21   ; 
- D 1 - I - 0x00DC2E 03:BC1E: 05        .byte $05   ; 
- D 1 - I - 0x00DC2F 03:BC1F: 22        .byte $22   ; 
- D 1 - I - 0x00DC30 03:BC20: 05        .byte $05   ; 
- D 1 - I - 0x00DC31 03:BC21: FE        .byte $FE   ; 



off_03_BC22_0C:
- - - - - - 0x00DC32 03:BC22: 24        .byte $24   ; 
- - - - - - 0x00DC33 03:BC23: 05        .byte $05   ; 
- - - - - - 0x00DC34 03:BC24: 23        .byte $23   ; 
- - - - - - 0x00DC35 03:BC25: 05        .byte $05   ; 
- - - - - - 0x00DC36 03:BC26: FE        .byte $FE   ; 



off_03_BC27_0D:
- D 1 - I - 0x00DC37 03:BC27: 26        .byte $26   ; 
- D 1 - I - 0x00DC38 03:BC28: 05        .byte $05   ; 
- D 1 - I - 0x00DC39 03:BC29: 25        .byte $25   ; 
- D 1 - I - 0x00DC3A 03:BC2A: 05        .byte $05   ; 
- D 1 - I - 0x00DC3B 03:BC2B: FE        .byte $FE   ; 



off_03_BC2C_0E:
- D 1 - I - 0x00DC3C 03:BC2C: 28        .byte $28   ; 
- D 1 - I - 0x00DC3D 03:BC2D: 05        .byte $05   ; 
- D 1 - I - 0x00DC3E 03:BC2E: 27        .byte $27   ; 
- D 1 - I - 0x00DC3F 03:BC2F: 05        .byte $05   ; 
- D 1 - I - 0x00DC40 03:BC30: FE        .byte $FE   ; 



off_03_BC31_0F:
- D 1 - I - 0x00DC41 03:BC31: 29        .byte $29   ; 
- D 1 - I - 0x00DC42 03:BC32: 05        .byte $05   ; 
- D 1 - I - 0x00DC43 03:BC33: 2A        .byte $2A   ; 
- D 1 - I - 0x00DC44 03:BC34: 05        .byte $05   ; 
- D 1 - I - 0x00DC45 03:BC35: FE        .byte $FE   ; 



off_03_BC36_10:
- D 1 - I - 0x00DC46 03:BC36: 2B        .byte $2B   ; 
- D 1 - I - 0x00DC47 03:BC37: 05        .byte $05   ; 
- D 1 - I - 0x00DC48 03:BC38: 2C        .byte $2C   ; 
- D 1 - I - 0x00DC49 03:BC39: 05        .byte $05   ; 
- D 1 - I - 0x00DC4A 03:BC3A: FE        .byte $FE   ; 



off_03_BC3B_44:
- D 1 - I - 0x00DC4B 03:BC3B: 1D        .byte $1D   ; 
- D 1 - I - 0x00DC4C 03:BC3C: 05        .byte $05   ; 
- D 1 - I - 0x00DC4D 03:BC3D: FF        .byte $FF   ; 



off_03_BC3E_45:
- D 1 - I - 0x00DC4E 03:BC3E: 1F        .byte $1F   ; 
- D 1 - I - 0x00DC4F 03:BC3F: 05        .byte $05   ; 
- D 1 - I - 0x00DC50 03:BC40: FF        .byte $FF   ; 



off_03_BC41_46:
- D 1 - I - 0x00DC51 03:BC41: 21        .byte $21   ; 
- D 1 - I - 0x00DC52 03:BC42: 05        .byte $05   ; 
- D 1 - I - 0x00DC53 03:BC43: FF        .byte $FF   ; 



off_03_BC44_47:
- D 1 - I - 0x00DC54 03:BC44: 24        .byte $24   ; 
- D 1 - I - 0x00DC55 03:BC45: 05        .byte $05   ; 
- D 1 - I - 0x00DC56 03:BC46: FF        .byte $FF   ; 



off_03_BC47_48:
- D 1 - I - 0x00DC57 03:BC47: 26        .byte $26   ; 
- D 1 - I - 0x00DC58 03:BC48: 05        .byte $05   ; 
- D 1 - I - 0x00DC59 03:BC49: FF        .byte $FF   ; 



off_03_BC4A_49:
- D 1 - I - 0x00DC5A 03:BC4A: 28        .byte $28   ; 
- D 1 - I - 0x00DC5B 03:BC4B: 05        .byte $05   ; 
- D 1 - I - 0x00DC5C 03:BC4C: FF        .byte $FF   ; 



off_03_BC4D_4A:
- D 1 - I - 0x00DC5D 03:BC4D: 29        .byte $29   ; 
- D 1 - I - 0x00DC5E 03:BC4E: 05        .byte $05   ; 
- D 1 - I - 0x00DC5F 03:BC4F: FF        .byte $FF   ; 



off_03_BC50_4B:
- D 1 - I - 0x00DC60 03:BC50: 2B        .byte $2B   ; 
- D 1 - I - 0x00DC61 03:BC51: 05        .byte $05   ; 
- D 1 - I - 0x00DC62 03:BC52: FF        .byte $FF   ; 



off_03_BC53_11:
off_03_BC53_12:
- D 1 - I - 0x00DC63 03:BC53: FC        .byte $FC   ; 
- D 1 - I - 0x00DC64 03:BC54: 08        .byte $08   ; 
- D 1 - I - 0x00DC65 03:BC55: 04        .byte $04   ; 
- D 1 - I - 0x00DC66 03:BC56: 36        .byte $36   ; 



off_03_BC57_13:
- D 1 - I - 0x00DC67 03:BC57: FD        .byte $FD   ; 
- D 1 - I - 0x00DC68 03:BC58: 02        .byte $02   ; 
- D 1 - I - 0x00DC69 03:BC59: 3E        .byte $3E   ; 
- D 1 - I - 0x00DC6A 03:BC5A: 3F        .byte $3F   ; 
- D 1 - I - 0x00DC6B 03:BC5B: FF        .byte $FF   ; 



off_03_BC5C_14:
- D 1 - I - 0x00DC6C 03:BC5C: FC        .byte $FC   ; 
- D 1 - I - 0x00DC6D 03:BC5D: 07        .byte $07   ; 
- D 1 - I - 0x00DC6E 03:BC5E: 03        .byte $03   ; 
- D 1 - I - 0x00DC6F 03:BC5F: 3E        .byte $3E   ; 



off_03_BC60_15:
- D 1 - I - 0x00DC70 03:BC60: FD        .byte $FD   ; 
- D 1 - I - 0x00DC71 03:BC61: 06        .byte $06   ; 
- D 1 - I - 0x00DC72 03:BC62: 41        .byte $41   ; 
- D 1 - I - 0x00DC73 03:BC63: 40        .byte $40   ; 
- D 1 - I - 0x00DC74 03:BC64: 3E        .byte $3E   ; 
- - - - - - 0x00DC75 03:BC65: FF        .byte $FF   ; 



off_03_BC66_16:
- D 1 - I - 0x00DC76 03:BC66: FC        .byte $FC   ; 
- D 1 - I - 0x00DC77 03:BC67: 08        .byte $08   ; 
- D 1 - I - 0x00DC78 03:BC68: 04        .byte $04   ; 
- D 1 - I - 0x00DC79 03:BC69: 3A        .byte $3A   ; 



off_03_BC6A_17:
- D 1 - I - 0x00DC7A 03:BC6A: FD        .byte $FD   ; 
- D 1 - I - 0x00DC7B 03:BC6B: 02        .byte $02   ; 
- D 1 - I - 0x00DC7C 03:BC6C: 42        .byte $42   ; 
- D 1 - I - 0x00DC7D 03:BC6D: 43        .byte $43   ; 
- D 1 - I - 0x00DC7E 03:BC6E: FF        .byte $FF   ; 



off_03_BC6F_18:
- D 1 - I - 0x00DC7F 03:BC6F: FD        .byte $FD   ; 
- D 1 - I - 0x00DC80 03:BC70: 07        .byte $07   ; 
- D 1 - I - 0x00DC81 03:BC71: 42        .byte $42   ; 
- D 1 - I - 0x00DC82 03:BC72: 44        .byte $44   ; 
- D 1 - I - 0x00DC83 03:BC73: 45        .byte $45   ; 
- - - - - - 0x00DC84 03:BC74: FF        .byte $FF   ; 



off_03_BC75_19:
- D 1 - I - 0x00DC85 03:BC75: 45        .byte $45   ; 
- D 1 - I - 0x00DC86 03:BC76: 06        .byte $06   ; 
- D 1 - I - 0x00DC87 03:BC77: 44        .byte $44   ; 
- D 1 - I - 0x00DC88 03:BC78: 0B        .byte $0B   ; 
- - - - - - 0x00DC89 03:BC79: 43        .byte $43   ; 
- - - - - - 0x00DC8A 03:BC7A: 04        .byte $04   ; 
- - - - - - 0x00DC8B 03:BC7B: FF        .byte $FF   ; 



off_03_BC7C_54:
- D 1 - I - 0x00DC8C 03:BC7C: 3E        .byte $3E   ; 
- D 1 - I - 0x00DC8D 03:BC7D: 02        .byte $02   ; 
- D 1 - I - 0x00DC8E 03:BC7E: FF        .byte $FF   ; 



off_03_BC7F_55:
- D 1 - I - 0x00DC8F 03:BC7F: 42        .byte $42   ; 
- D 1 - I - 0x00DC90 03:BC80: 02        .byte $02   ; 
- D 1 - I - 0x00DC91 03:BC81: FF        .byte $FF   ; 



off_03_BC82_56:
- D 1 - I - 0x00DC92 03:BC82: 41        .byte $41   ; 
- D 1 - I - 0x00DC93 03:BC83: 06        .byte $06   ; 
- - - - - - 0x00DC94 03:BC84: FF        .byte $FF   ; 



off_03_BC85_57:
- D 1 - I - 0x00DC95 03:BC85: 45        .byte $45   ; 
- D 1 - I - 0x00DC96 03:BC86: 06        .byte $06   ; 
- - - - - - 0x00DC97 03:BC87: FF        .byte $FF   ; 



off_03_BC88_1A:
- D 1 - I - 0x00DC98 03:BC88: FC        .byte $FC   ; 
- D 1 - I - 0x00DC99 03:BC89: 07        .byte $07   ; 
- D 1 - I - 0x00DC9A 03:BC8A: 04        .byte $04   ; 
- D 1 - I - 0x00DC9B 03:BC8B: 46        .byte $46   ; 



off_03_BC8C_1B:
- D 1 - I - 0x00DC9C 03:BC8C: FC        .byte $FC   ; 
- D 1 - I - 0x00DC9D 03:BC8D: 07        .byte $07   ; 
- D 1 - I - 0x00DC9E 03:BC8E: 04        .byte $04   ; 
- D 1 - I - 0x00DC9F 03:BC8F: 4A        .byte $4A   ; 



off_03_BC90_1C:
- D 1 - I - 0x00DCA0 03:BC90: FC        .byte $FC   ; 
- D 1 - I - 0x00DCA1 03:BC91: 07        .byte $07   ; 
- D 1 - I - 0x00DCA2 03:BC92: 04        .byte $04   ; 
- D 1 - I - 0x00DCA3 03:BC93: 4E        .byte $4E   ; 



off_03_BC94_1D:
- D 1 - I - 0x00DCA4 03:BC94: FC        .byte $FC   ; 
- D 1 - I - 0x00DCA5 03:BC95: 07        .byte $07   ; 
- D 1 - I - 0x00DCA6 03:BC96: 04        .byte $04   ; 
- D 1 - I - 0x00DCA7 03:BC97: 52        .byte $52   ; 



off_03_BC98_1E:
- D 1 - I - 0x00DCA8 03:BC98: FC        .byte $FC   ; 
- D 1 - I - 0x00DCA9 03:BC99: 07        .byte $07   ; 
- D 1 - I - 0x00DCAA 03:BC9A: 04        .byte $04   ; 
- D 1 - I - 0x00DCAB 03:BC9B: 56        .byte $56   ; 



off_03_BC9C_1F:
- D 1 - I - 0x00DCAC 03:BC9C: FC        .byte $FC   ; 
- D 1 - I - 0x00DCAD 03:BC9D: 07        .byte $07   ; 
- D 1 - I - 0x00DCAE 03:BC9E: 04        .byte $04   ; 
- D 1 - I - 0x00DCAF 03:BC9F: 5A        .byte $5A   ; 



off_03_BCA0_20:
- D 1 - I - 0x00DCB0 03:BCA0: FC        .byte $FC   ; 
- D 1 - I - 0x00DCB1 03:BCA1: 07        .byte $07   ; 
- D 1 - I - 0x00DCB2 03:BCA2: 04        .byte $04   ; 
- D 1 - I - 0x00DCB3 03:BCA3: 5E        .byte $5E   ; 



off_03_BCA4_21:
- D 1 - I - 0x00DCB4 03:BCA4: FC        .byte $FC   ; 
- D 1 - I - 0x00DCB5 03:BCA5: 07        .byte $07   ; 
- D 1 - I - 0x00DCB6 03:BCA6: 04        .byte $04   ; 
- D 1 - I - 0x00DCB7 03:BCA7: 62        .byte $62   ; 



off_03_BCA8_22:
- D 1 - I - 0x00DCB8 03:BCA8: 66        .byte $66   ; 
- D 1 - I - 0x00DCB9 03:BCA9: 05        .byte $05   ; 
- D 1 - I - 0x00DCBA 03:BCAA: 67        .byte $67   ; 
- D 1 - I - 0x00DCBB 03:BCAB: 05        .byte $05   ; 
- D 1 - I - 0x00DCBC 03:BCAC: FE        .byte $FE   ; 



off_03_BCAD_23:
- D 1 - I - 0x00DCBD 03:BCAD: 68        .byte $68   ; 
- D 1 - I - 0x00DCBE 03:BCAE: 05        .byte $05   ; 
- D 1 - I - 0x00DCBF 03:BCAF: 69        .byte $69   ; 
- D 1 - I - 0x00DCC0 03:BCB0: 05        .byte $05   ; 
- D 1 - I - 0x00DCC1 03:BCB1: FE        .byte $FE   ; 



off_03_BCB2_24:
- D 1 - I - 0x00DCC2 03:BCB2: 6A        .byte $6A   ; 
- D 1 - I - 0x00DCC3 03:BCB3: 05        .byte $05   ; 
- D 1 - I - 0x00DCC4 03:BCB4: 6B        .byte $6B   ; 
- D 1 - I - 0x00DCC5 03:BCB5: 05        .byte $05   ; 
- D 1 - I - 0x00DCC6 03:BCB6: FE        .byte $FE   ; 



off_03_BCB7_25:
- - - - - - 0x00DCC7 03:BCB7: 6C        .byte $6C   ; 
- - - - - - 0x00DCC8 03:BCB8: 05        .byte $05   ; 
- - - - - - 0x00DCC9 03:BCB9: 6D        .byte $6D   ; 
- - - - - - 0x00DCCA 03:BCBA: 05        .byte $05   ; 
- - - - - - 0x00DCCB 03:BCBB: FE        .byte $FE   ; 



off_03_BCBC_26:
- D 1 - I - 0x00DCCC 03:BCBC: 6E        .byte $6E   ; 
- D 1 - I - 0x00DCCD 03:BCBD: 05        .byte $05   ; 
- D 1 - I - 0x00DCCE 03:BCBE: 6F        .byte $6F   ; 
- D 1 - I - 0x00DCCF 03:BCBF: 05        .byte $05   ; 
- D 1 - I - 0x00DCD0 03:BCC0: FE        .byte $FE   ; 



off_03_BCC1_27:
- D 1 - I - 0x00DCD1 03:BCC1: 70        .byte $70   ; 
- D 1 - I - 0x00DCD2 03:BCC2: 05        .byte $05   ; 
- D 1 - I - 0x00DCD3 03:BCC3: 71        .byte $71   ; 
- D 1 - I - 0x00DCD4 03:BCC4: 05        .byte $05   ; 
- D 1 - I - 0x00DCD5 03:BCC5: FE        .byte $FE   ; 



off_03_BCC6_28:
- D 1 - I - 0x00DCD6 03:BCC6: 72        .byte $72   ; 
- D 1 - I - 0x00DCD7 03:BCC7: 05        .byte $05   ; 
- D 1 - I - 0x00DCD8 03:BCC8: 73        .byte $73   ; 
- D 1 - I - 0x00DCD9 03:BCC9: 05        .byte $05   ; 
- D 1 - I - 0x00DCDA 03:BCCA: FE        .byte $FE   ; 



off_03_BCCB_29:
- D 1 - I - 0x00DCDB 03:BCCB: 74        .byte $74   ; 
- D 1 - I - 0x00DCDC 03:BCCC: 05        .byte $05   ; 
- D 1 - I - 0x00DCDD 03:BCCD: 75        .byte $75   ; 
- D 1 - I - 0x00DCDE 03:BCCE: 05        .byte $05   ; 
- D 1 - I - 0x00DCDF 03:BCCF: FE        .byte $FE   ; 



off_03_BCD0_4C:
- D 1 - I - 0x00DCE0 03:BCD0: 66        .byte $66   ; 
- D 1 - I - 0x00DCE1 03:BCD1: 05        .byte $05   ; 
- D 1 - I - 0x00DCE2 03:BCD2: FF        .byte $FF   ; 



off_03_BCD3_4D:
- D 1 - I - 0x00DCE3 03:BCD3: 68        .byte $68   ; 
- D 1 - I - 0x00DCE4 03:BCD4: 05        .byte $05   ; 
- D 1 - I - 0x00DCE5 03:BCD5: FF        .byte $FF   ; 



off_03_BCD6_4E:
- D 1 - I - 0x00DCE6 03:BCD6: 6A        .byte $6A   ; 
- D 1 - I - 0x00DCE7 03:BCD7: 05        .byte $05   ; 
- D 1 - I - 0x00DCE8 03:BCD8: FF        .byte $FF   ; 



off_03_BCD9_4F:
- D 1 - I - 0x00DCE9 03:BCD9: 6C        .byte $6C   ; 
- D 1 - I - 0x00DCEA 03:BCDA: 05        .byte $05   ; 
- D 1 - I - 0x00DCEB 03:BCDB: FF        .byte $FF   ; 



off_03_BCDC_50:
- D 1 - I - 0x00DCEC 03:BCDC: 6E        .byte $6E   ; 
- D 1 - I - 0x00DCED 03:BCDD: 05        .byte $05   ; 
- D 1 - I - 0x00DCEE 03:BCDE: FF        .byte $FF   ; 



off_03_BCDF_51:
- D 1 - I - 0x00DCEF 03:BCDF: 70        .byte $70   ; 
- D 1 - I - 0x00DCF0 03:BCE0: 05        .byte $05   ; 
- D 1 - I - 0x00DCF1 03:BCE1: FF        .byte $FF   ; 



off_03_BCE2_52:
- D 1 - I - 0x00DCF2 03:BCE2: 72        .byte $72   ; 
- D 1 - I - 0x00DCF3 03:BCE3: 05        .byte $05   ; 
- D 1 - I - 0x00DCF4 03:BCE4: FF        .byte $FF   ; 



off_03_BCE5_53:
- D 1 - I - 0x00DCF5 03:BCE5: 74        .byte $74   ; 
- D 1 - I - 0x00DCF6 03:BCE6: 05        .byte $05   ; 
- D 1 - I - 0x00DCF7 03:BCE7: FF        .byte $FF   ; 



off_03_BCE8_2A:
- D 1 - I - 0x00DCF8 03:BCE8: 76        .byte $76   ; 
- D 1 - I - 0x00DCF9 03:BCE9: 05        .byte $05   ; 
- D 1 - I - 0x00DCFA 03:BCEA: FF        .byte $FF   ; 



off_03_BCEB_2B:
- D 1 - I - 0x00DCFB 03:BCEB: 77        .byte $77   ; 
- D 1 - I - 0x00DCFC 03:BCEC: 05        .byte $05   ; 
- D 1 - I - 0x00DCFD 03:BCED: FF        .byte $FF   ; 



off_03_BCEE_2C:
- D 1 - I - 0x00DCFE 03:BCEE: 78        .byte $78   ; 
- D 1 - I - 0x00DCFF 03:BCEF: 05        .byte $05   ; 
- D 1 - I - 0x00DD00 03:BCF0: FF        .byte $FF   ; 



off_03_BCF1_2D:
- D 1 - I - 0x00DD01 03:BCF1: 79        .byte $79   ; 
- D 1 - I - 0x00DD02 03:BCF2: 05        .byte $05   ; 
- D 1 - I - 0x00DD03 03:BCF3: FF        .byte $FF   ; 



off_03_BCF4_2E:
- D 1 - I - 0x00DD04 03:BCF4: FC        .byte $FC   ; 
- D 1 - I - 0x00DD05 03:BCF5: 07        .byte $07   ; 
- D 1 - I - 0x00DD06 03:BCF6: 04        .byte $04   ; 
- D 1 - I - 0x00DD07 03:BCF7: 7A        .byte $7A   ; 



off_03_BCF8_2F:
- - - - - - 0x00DD08 03:BCF8: FD        .byte $FD   ; 
- - - - - - 0x00DD09 03:BCF9: 07        .byte $07   ; 
- - - - - - 0x00DD0A 03:BCFA: 7E        .byte $7E   ; 
- - - - - - 0x00DD0B 03:BCFB: 7F        .byte $7F   ; 
- - - - - - 0x00DD0C 03:BCFC: 80        .byte $80   ; 
- - - - - - 0x00DD0D 03:BCFD: 7F        .byte $7F   ; 
- - - - - - 0x00DD0E 03:BCFE: FF        .byte $FF   ; 



off_03_BCFF_30:
- D 1 - I - 0x00DD0F 03:BCFF: FD        .byte $FD   ; 
- D 1 - I - 0x00DD10 03:BD00: 07        .byte $07   ; 
- D 1 - I - 0x00DD11 03:BD01: 81        .byte $81   ; 
- D 1 - I - 0x00DD12 03:BD02: 82        .byte $82   ; 
- D 1 - I - 0x00DD13 03:BD03: 83        .byte $83   ; 
- - - - - - 0x00DD14 03:BD04: 82        .byte $82   ; 
- - - - - - 0x00DD15 03:BD05: FF        .byte $FF   ; 



off_03_BD06_31:
- D 1 - I - 0x00DD16 03:BD06: FD        .byte $FD   ; 
- D 1 - I - 0x00DD17 03:BD07: 07        .byte $07   ; 
- D 1 - I - 0x00DD18 03:BD08: 84        .byte $84   ; 
- D 1 - I - 0x00DD19 03:BD09: 85        .byte $85   ; 
- D 1 - I - 0x00DD1A 03:BD0A: 86        .byte $86   ; 
- D 1 - I - 0x00DD1B 03:BD0B: AC        .byte $AC   ; 
- - - - - - 0x00DD1C 03:BD0C: FF        .byte $FF   ; 



off_03_BD0D_32:
- D 1 - I - 0x00DD1D 03:BD0D: FD        .byte $FD   ; 
- D 1 - I - 0x00DD1E 03:BD0E: 07        .byte $07   ; 
- D 1 - I - 0x00DD1F 03:BD0F: 87        .byte $87   ; 
- D 1 - I - 0x00DD20 03:BD10: 88        .byte $88   ; 
- D 1 - I - 0x00DD21 03:BD11: 89        .byte $89   ; 
- D 1 - I - 0x00DD22 03:BD12: AD        .byte $AD   ; 
- - - - - - 0x00DD23 03:BD13: FF        .byte $FF   ; 



off_03_BD14_33:
- - - - - - 0x00DD24 03:BD14: FC        .byte $FC   ; 
- - - - - - 0x00DD25 03:BD15: 07        .byte $07   ; 
- - - - - - 0x00DD26 03:BD16: 04        .byte $04   ; 
- - - - - - 0x00DD27 03:BD17: 8A        .byte $8A   ; 



off_03_BD18_34:
- - - - - - 0x00DD28 03:BD18: FC        .byte $FC   ; 
- - - - - - 0x00DD29 03:BD19: 07        .byte $07   ; 
- - - - - - 0x00DD2A 03:BD1A: 04        .byte $04   ; 
- - - - - - 0x00DD2B 03:BD1B: 8E        .byte $8E   ; 



off_03_BD1C_35:
- D 1 - I - 0x00DD2C 03:BD1C: FC        .byte $FC   ; 
- D 1 - I - 0x00DD2D 03:BD1D: 07        .byte $07   ; 
- D 1 - I - 0x00DD2E 03:BD1E: 04        .byte $04   ; 
- D 1 - I - 0x00DD2F 03:BD1F: 92        .byte $92   ; 



off_03_BD20_36:
- D 1 - I - 0x00DD30 03:BD20: 96        .byte $96   ; 
- D 1 - I - 0x00DD31 03:BD21: 05        .byte $05   ; 
- D 1 - I - 0x00DD32 03:BD22: 97        .byte $97   ; 
- D 1 - I - 0x00DD33 03:BD23: 05        .byte $05   ; 
- D 1 - I - 0x00DD34 03:BD24: FE        .byte $FE   ; 



off_03_BD25_37:
- - - - - - 0x00DD35 03:BD25: 9A        .byte $9A   ; 
- - - - - - 0x00DD36 03:BD26: 05        .byte $05   ; 
- - - - - - 0x00DD37 03:BD27: 9B        .byte $9B   ; 
- - - - - - 0x00DD38 03:BD28: 05        .byte $05   ; 
- - - - - - 0x00DD39 03:BD29: FE        .byte $FE   ; 



off_03_BD2A_38:
- D 1 - I - 0x00DD3A 03:BD2A: 98        .byte $98   ; 
- D 1 - I - 0x00DD3B 03:BD2B: 05        .byte $05   ; 
- D 1 - I - 0x00DD3C 03:BD2C: 99        .byte $99   ; 
- D 1 - I - 0x00DD3D 03:BD2D: 05        .byte $05   ; 
- D 1 - I - 0x00DD3E 03:BD2E: FE        .byte $FE   ; 



off_03_BD2F_39:
- D 1 - I - 0x00DD3F 03:BD2F: 9C        .byte $9C   ; 
- D 1 - I - 0x00DD40 03:BD30: 05        .byte $05   ; 
- D 1 - I - 0x00DD41 03:BD31: 9D        .byte $9D   ; 
- D 1 - I - 0x00DD42 03:BD32: 05        .byte $05   ; 
- D 1 - I - 0x00DD43 03:BD33: FE        .byte $FE   ; 



off_03_BD34_3A:
- D 1 - I - 0x00DD44 03:BD34: 9E        .byte $9E   ; 
- D 1 - I - 0x00DD45 03:BD35: 05        .byte $05   ; 
- D 1 - I - 0x00DD46 03:BD36: 9F        .byte $9F   ; 
- D 1 - I - 0x00DD47 03:BD37: 05        .byte $05   ; 
- D 1 - I - 0x00DD48 03:BD38: FE        .byte $FE   ; 



off_03_BD39_3B:
- D 1 - I - 0x00DD49 03:BD39: A0        .byte $A0   ; 
- D 1 - I - 0x00DD4A 03:BD3A: 05        .byte $05   ; 
- D 1 - I - 0x00DD4B 03:BD3B: A1        .byte $A1   ; 
- D 1 - I - 0x00DD4C 03:BD3C: 05        .byte $05   ; 
- D 1 - I - 0x00DD4D 03:BD3D: FE        .byte $FE   ; 



off_03_BD3E_3C:
- D 1 - I - 0x00DD4E 03:BD3E: A2        .byte $A2   ; 
- D 1 - I - 0x00DD4F 03:BD3F: 05        .byte $05   ; 
- D 1 - I - 0x00DD50 03:BD40: A3        .byte $A3   ; 
- D 1 - I - 0x00DD51 03:BD41: 05        .byte $05   ; 
- D 1 - I - 0x00DD52 03:BD42: FE        .byte $FE   ; 



off_03_BD43_3D:
- D 1 - I - 0x00DD53 03:BD43: A4        .byte $A4   ; 
- D 1 - I - 0x00DD54 03:BD44: 05        .byte $05   ; 
- D 1 - I - 0x00DD55 03:BD45: A5        .byte $A5   ; 
- D 1 - I - 0x00DD56 03:BD46: 05        .byte $05   ; 
- D 1 - I - 0x00DD57 03:BD47: FE        .byte $FE   ; 



off_03_BD48_3E:
- D 1 - I - 0x00DD58 03:BD48: A6        .byte $A6   ; 
- D 1 - I - 0x00DD59 03:BD49: 0A        .byte $0A   ; 
- D 1 - I - 0x00DD5A 03:BD4A: 9C        .byte $9C   ; 
- D 1 - I - 0x00DD5B 03:BD4B: 09        .byte $09   ; 
- D 1 - I - 0x00DD5C 03:BD4C: 98        .byte $98   ; 
- D 1 - I - 0x00DD5D 03:BD4D: 08        .byte $08   ; 
- D 1 - I - 0x00DD5E 03:BD4E: A8        .byte $A8   ; 
- D 1 - I - 0x00DD5F 03:BD4F: 0A        .byte $0A   ; 
- D 1 - I - 0x00DD60 03:BD50: A9        .byte $A9   ; 
- D 1 - I - 0x00DD61 03:BD51: 08        .byte $08   ; 
- D 1 - I - 0x00DD62 03:BD52: 9C        .byte $9C   ; 
- D 1 - I - 0x00DD63 03:BD53: 07        .byte $07   ; 
- D 1 - I - 0x00DD64 03:BD54: FF        .byte $FF   ; 



off_03_BD55_3F:
- D 1 - I - 0x00DD65 03:BD55: A7        .byte $A7   ; 
- D 1 - I - 0x00DD66 03:BD56: 0F        .byte $0F   ; 
- D 1 - I - 0x00DD67 03:BD57: 9E        .byte $9E   ; 
- D 1 - I - 0x00DD68 03:BD58: 09        .byte $09   ; 
- D 1 - I - 0x00DD69 03:BD59: 9A        .byte $9A   ; 
- D 1 - I - 0x00DD6A 03:BD5A: 08        .byte $08   ; 
- D 1 - I - 0x00DD6B 03:BD5B: AA        .byte $AA   ; 
- D 1 - I - 0x00DD6C 03:BD5C: 0F        .byte $0F   ; 
- D 1 - I - 0x00DD6D 03:BD5D: AB        .byte $AB   ; 
- D 1 - I - 0x00DD6E 03:BD5E: 0A        .byte $0A   ; 
- D 1 - I - 0x00DD6F 03:BD5F: 9E        .byte $9E   ; 
- D 1 - I - 0x00DD70 03:BD60: 07        .byte $07   ; 
- D 1 - I - 0x00DD71 03:BD61: FF        .byte $FF   ; 



off_03_BD62_40:
- D 1 - I - 0x00DD72 03:BD62: AE        .byte $AE   ; 
- D 1 - I - 0x00DD73 03:BD63: 05        .byte $05   ; 
- D 1 - I - 0x00DD74 03:BD64: FF        .byte $FF   ; 



off_03_BD65_41:
- D 1 - I - 0x00DD75 03:BD65: AF        .byte $AF   ; 
- D 1 - I - 0x00DD76 03:BD66: 05        .byte $05   ; 
- D 1 - I - 0x00DD77 03:BD67: FF        .byte $FF   ; 



off_03_BD68_42:
- D 1 - I - 0x00DD78 03:BD68: B0        .byte $B0   ; 
- D 1 - I - 0x00DD79 03:BD69: 05        .byte $05   ; 
- D 1 - I - 0x00DD7A 03:BD6A: FF        .byte $FF   ; 



off_03_BD6B_43:
- D 1 - I - 0x00DD7B 03:BD6B: B1        .byte $B1   ; 
- D 1 - I - 0x00DD7C 03:BD6C: 05        .byte $05   ; 
- D 1 - I - 0x00DD7D 03:BD6D: FF        .byte $FF   ; 



_off019_0x00DD7E_05:
- D 1 - I - 0x00DD7E 03:BD6E: 76 BD     .word off_05_BD76_01
- - - - - - 0x00DD80 03:BD70: 7A BD     .word off_05_BD7A_02
- - - - - - 0x00DD82 03:BD72: 7A BD     .word off_05_BD7A_03
- D 1 - I - 0x00DD84 03:BD74: 81 BD     .word off_05_BD81_04



off_05_BD76_01:
- D 1 - I - 0x00DD86 03:BD76: FC        .byte $FC   ; 
- D 1 - I - 0x00DD87 03:BD77: 05        .byte $05   ; 
- D 1 - I - 0x00DD88 03:BD78: 04        .byte $04   ; 
- D 1 - I - 0x00DD89 03:BD79: 03        .byte $03   ; 



off_05_BD7A_02:
off_05_BD7A_03:
- - - - - - 0x00DD8A 03:BD7A: FD        .byte $FD   ; 
- - - - - - 0x00DD8B 03:BD7B: 03        .byte $03   ; 
- - - - - - 0x00DD8C 03:BD7C: 0D        .byte $0D   ; 
- - - - - - 0x00DD8D 03:BD7D: 0E        .byte $0E   ; 
- - - - - - 0x00DD8E 03:BD7E: 0F        .byte $0F   ; 
- - - - - - 0x00DD8F 03:BD7F: 10        .byte $10   ; 
- - - - - - 0x00DD90 03:BD80: FE        .byte $FE   ; 



off_05_BD81_04:
- D 1 - I - 0x00DD91 03:BD81: FC        .byte $FC   ; 
- D 1 - I - 0x00DD92 03:BD82: 03        .byte $03   ; 
- D 1 - I - 0x00DD93 03:BD83: 04        .byte $04   ; 
- D 1 - I - 0x00DD94 03:BD84: 17        .byte $17   ; 



_off019_0x00DD95_08:
- - - - - - 0x00DD95 03:BD85: A5 BD     .word off_08_BDA5_00
- D 1 - I - 0x00DD97 03:BD87: A9 BD     .word off_08_BDA9_01
- D 1 - I - 0x00DD99 03:BD89: AD BD     .word off_08_BDAD_02
- D 1 - I - 0x00DD9B 03:BD8B: B1 BD     .word off_08_BDB1_03
- D 1 - I - 0x00DD9D 03:BD8D: B8 BD     .word off_08_BDB8_04
- D 1 - I - 0x00DD9F 03:BD8F: BF BD     .word off_08_BDBF_05
- D 1 - I - 0x00DDA1 03:BD91: C6 BD     .word off_08_BDC6_06
- D 1 - I - 0x00DDA3 03:BD93: CD BD     .word off_08_BDCD_07
- D 1 - I - 0x00DDA5 03:BD95: D4 BD     .word off_08_BDD4_08
- D 1 - I - 0x00DDA7 03:BD97: DB BD     .word off_08_BDDB_09
- - - - - - 0x00DDA9 03:BD99: E2 BD     .word off_08_BDE2_0A
- D 1 - I - 0x00DDAB 03:BD9B: E9 BD     .word off_08_BDE9_0B
- D 1 - I - 0x00DDAD 03:BD9D: ED BD     .word off_08_BDED_0C
- D 1 - I - 0x00DDAF 03:BD9F: F1 BD     .word off_08_BDF1_0D
- D 1 - I - 0x00DDB1 03:BDA1: FA BD     .word off_08_BDFA_0E
- - - - - - 0x00DDB3 03:BDA3: FE BD     .word off_08_BDFE_0F



off_08_BDA5_00:
- - - - - - 0x00DDB5 03:BDA5: FC        .byte $FC   ; 
- - - - - - 0x00DDB6 03:BDA6: 03        .byte $03   ; 
- - - - - - 0x00DDB7 03:BDA7: 04        .byte $04   ; 
- - - - - - 0x00DDB8 03:BDA8: 01        .byte $01   ; 



off_08_BDA9_01:
- D 1 - I - 0x00DDB9 03:BDA9: FC        .byte $FC   ; 
- D 1 - I - 0x00DDBA 03:BDAA: 03        .byte $03   ; 
- D 1 - I - 0x00DDBB 03:BDAB: 04        .byte $04   ; 
- D 1 - I - 0x00DDBC 03:BDAC: 05        .byte $05   ; 



off_08_BDAD_02:
- D 1 - I - 0x00DDBD 03:BDAD: FC        .byte $FC   ; 
- D 1 - I - 0x00DDBE 03:BDAE: 01        .byte $01   ; 
- D 1 - I - 0x00DDBF 03:BDAF: 04        .byte $04   ; 
- D 1 - I - 0x00DDC0 03:BDB0: 19        .byte $19   ; 



off_08_BDB1_03:
- D 1 - I - 0x00DDC1 03:BDB1: FD        .byte $FD   ; 
- D 1 - I - 0x00DDC2 03:BDB2: 04        .byte $04   ; 
- D 1 - I - 0x00DDC3 03:BDB3: 1D        .byte $1D   ; 
- D 1 - I - 0x00DDC4 03:BDB4: 1E        .byte $1E   ; 
- D 1 - I - 0x00DDC5 03:BDB5: 1D        .byte $1D   ; 
- D 1 - I - 0x00DDC6 03:BDB6: 1E        .byte $1E   ; 
- D 1 - I - 0x00DDC7 03:BDB7: FE        .byte $FE   ; 



off_08_BDB8_04:
- D 1 - I - 0x00DDC8 03:BDB8: FD        .byte $FD   ; 
- D 1 - I - 0x00DDC9 03:BDB9: 03        .byte $03   ; 
- D 1 - I - 0x00DDCA 03:BDBA: 1F        .byte $1F   ; 
- D 1 - I - 0x00DDCB 03:BDBB: 20        .byte $20   ; 
- D 1 - I - 0x00DDCC 03:BDBC: 1F        .byte $1F   ; 
- D 1 - I - 0x00DDCD 03:BDBD: 20        .byte $20   ; 
- D 1 - I - 0x00DDCE 03:BDBE: FE        .byte $FE   ; 



off_08_BDBF_05:
- D 1 - I - 0x00DDCF 03:BDBF: FD        .byte $FD   ; 
- D 1 - I - 0x00DDD0 03:BDC0: 04        .byte $04   ; 
- D 1 - I - 0x00DDD1 03:BDC1: 21        .byte $21   ; 
- - - - - - 0x00DDD2 03:BDC2: 22        .byte $22   ; 
- - - - - - 0x00DDD3 03:BDC3: 21        .byte $21   ; 
- - - - - - 0x00DDD4 03:BDC4: 22        .byte $22   ; 
- - - - - - 0x00DDD5 03:BDC5: FE        .byte $FE   ; 



off_08_BDC6_06:
- D 1 - I - 0x00DDD6 03:BDC6: FD        .byte $FD   ; 
- D 1 - I - 0x00DDD7 03:BDC7: 03        .byte $03   ; 
- D 1 - I - 0x00DDD8 03:BDC8: 23        .byte $23   ; 
- D 1 - I - 0x00DDD9 03:BDC9: 24        .byte $24   ; 
- D 1 - I - 0x00DDDA 03:BDCA: 23        .byte $23   ; 
- D 1 - I - 0x00DDDB 03:BDCB: 24        .byte $24   ; 
- D 1 - I - 0x00DDDC 03:BDCC: FE        .byte $FE   ; 



off_08_BDCD_07:
- D 1 - I - 0x00DDDD 03:BDCD: FD        .byte $FD   ; 
- D 1 - I - 0x00DDDE 03:BDCE: 04        .byte $04   ; 
- D 1 - I - 0x00DDDF 03:BDCF: 25        .byte $25   ; 
- D 1 - I - 0x00DDE0 03:BDD0: 26        .byte $26   ; 
- D 1 - I - 0x00DDE1 03:BDD1: 25        .byte $25   ; 
- D 1 - I - 0x00DDE2 03:BDD2: 26        .byte $26   ; 
- D 1 - I - 0x00DDE3 03:BDD3: FE        .byte $FE   ; 



off_08_BDD4_08:
- D 1 - I - 0x00DDE4 03:BDD4: FD        .byte $FD   ; 
- D 1 - I - 0x00DDE5 03:BDD5: 04        .byte $04   ; 
- D 1 - I - 0x00DDE6 03:BDD6: 27        .byte $27   ; 
- D 1 - I - 0x00DDE7 03:BDD7: 28        .byte $28   ; 
- D 1 - I - 0x00DDE8 03:BDD8: 27        .byte $27   ; 
- D 1 - I - 0x00DDE9 03:BDD9: 28        .byte $28   ; 
- D 1 - I - 0x00DDEA 03:BDDA: FE        .byte $FE   ; 



off_08_BDDB_09:
- D 1 - I - 0x00DDEB 03:BDDB: FD        .byte $FD   ; 
- D 1 - I - 0x00DDEC 03:BDDC: 04        .byte $04   ; 
- D 1 - I - 0x00DDED 03:BDDD: 29        .byte $29   ; 
- D 1 - I - 0x00DDEE 03:BDDE: 2A        .byte $2A   ; 
- D 1 - I - 0x00DDEF 03:BDDF: 29        .byte $29   ; 
- D 1 - I - 0x00DDF0 03:BDE0: 2A        .byte $2A   ; 
- D 1 - I - 0x00DDF1 03:BDE1: FE        .byte $FE   ; 



off_08_BDE2_0A:
- - - - - - 0x00DDF2 03:BDE2: FD        .byte $FD   ; 
- - - - - - 0x00DDF3 03:BDE3: 04        .byte $04   ; 
- - - - - - 0x00DDF4 03:BDE4: 2B        .byte $2B   ; 
- - - - - - 0x00DDF5 03:BDE5: 2C        .byte $2C   ; 
- - - - - - 0x00DDF6 03:BDE6: 2B        .byte $2B   ; 
- - - - - - 0x00DDF7 03:BDE7: 2C        .byte $2C   ; 
- - - - - - 0x00DDF8 03:BDE8: FE        .byte $FE   ; 



off_08_BDE9_0B:
- D 1 - I - 0x00DDF9 03:BDE9: FC        .byte $FC   ; 
- D 1 - I - 0x00DDFA 03:BDEA: 05        .byte $05   ; 
- D 1 - I - 0x00DDFB 03:BDEB: 05        .byte $05   ; 
- D 1 - I - 0x00DDFC 03:BDEC: 31        .byte $31   ; 



off_08_BDED_0C:
- D 1 - I - 0x00DDFD 03:BDED: FC        .byte $FC   ; 
- D 1 - I - 0x00DDFE 03:BDEE: 01        .byte $01   ; 
- D 1 - I - 0x00DDFF 03:BDEF: 04        .byte $04   ; 
- D 1 - I - 0x00DE00 03:BDF0: 36        .byte $36   ; 



off_08_BDF1_0D:
- D 1 - I - 0x00DE01 03:BDF1: 38        .byte $38   ; 
- D 1 - I - 0x00DE02 03:BDF2: 01        .byte $01   ; 
- D 1 - I - 0x00DE03 03:BDF3: 39        .byte $39   ; 
- D 1 - I - 0x00DE04 03:BDF4: 01        .byte $01   ; 
- D 1 - I - 0x00DE05 03:BDF5: 3A        .byte $3A   ; 
- D 1 - I - 0x00DE06 03:BDF6: 01        .byte $01   ; 
- D 1 - I - 0x00DE07 03:BDF7: 3B        .byte $3B   ; 
- D 1 - I - 0x00DE08 03:BDF8: 02        .byte $02   ; 
- D 1 - I - 0x00DE09 03:BDF9: FF        .byte $FF   ; 



off_08_BDFA_0E:
- D 1 - I - 0x00DE0A 03:BDFA: FC        .byte $FC   ; 
- D 1 - I - 0x00DE0B 03:BDFB: 01        .byte $01   ; 
- D 1 - I - 0x00DE0C 03:BDFC: 02        .byte $02   ; 
- D 1 - I - 0x00DE0D 03:BDFD: 42        .byte $42   ; 



off_08_BDFE_0F:
- - - - - - 0x00DE0E 03:BDFE: FC        .byte $FC   ; 
- - - - - - 0x00DE0F 03:BDFF: 01        .byte $01   ; 
- - - - - - 0x00DE10 03:BE00: 02        .byte $02   ; 
- - - - - - 0x00DE11 03:BE01: 40        .byte $40   ; 



_off019_0x00DE12_06:
- D 1 - I - 0x00DE12 03:BE02: 22 BE     .word off_06_BE22_01
- D 1 - I - 0x00DE14 03:BE04: 26 BE     .word off_06_BE26_02
- D 1 - I - 0x00DE16 03:BE06: 2A BE     .word off_06_BE2A_03
- D 1 - I - 0x00DE18 03:BE08: 35 BE     .word off_06_BE35_04
- D 1 - I - 0x00DE1A 03:BE0A: 40 BE     .word off_06_BE40_05
- D 1 - I - 0x00DE1C 03:BE0C: 44 BE     .word off_06_BE44_06
- D 1 - I - 0x00DE1E 03:BE0E: 4D BE     .word off_06_BE4D_07
- D 1 - I - 0x00DE20 03:BE10: 56 BE     .word off_06_BE56_08
- D 1 - I - 0x00DE22 03:BE12: 5F BE     .word off_06_BE5F_09
- D 1 - I - 0x00DE24 03:BE14: 68 BE     .word off_06_BE68_0A
- D 1 - I - 0x00DE26 03:BE16: 73 BE     .word off_06_BE73_0B
- D 1 - I - 0x00DE28 03:BE18: 76 BE     .word off_06_BE76_0C
- D 1 - I - 0x00DE2A 03:BE1A: 79 BE     .word off_06_BE79_0D
- D 1 - I - 0x00DE2C 03:BE1C: 7D BE     .word off_06_BE7D_0E
- D 1 - I - 0x00DE2E 03:BE1E: 81 BE     .word off_06_BE81_0F
- D 1 - I - 0x00DE30 03:BE20: 84 BE     .word off_06_BE84_10



off_06_BE22_01:
- D 1 - I - 0x00DE32 03:BE22: FC        .byte $FC   ; 
- D 1 - I - 0x00DE33 03:BE23: 07        .byte $07   ; 
- D 1 - I - 0x00DE34 03:BE24: 04        .byte $04   ; 
- D 1 - I - 0x00DE35 03:BE25: 01        .byte $01   ; 



off_06_BE26_02:
- D 1 - I - 0x00DE36 03:BE26: FC        .byte $FC   ; 
- D 1 - I - 0x00DE37 03:BE27: 07        .byte $07   ; 
- D 1 - I - 0x00DE38 03:BE28: 04        .byte $04   ; 
- D 1 - I - 0x00DE39 03:BE29: 05        .byte $05   ; 



off_06_BE2A_03:
- D 1 - I - 0x00DE3A 03:BE2A: 09        .byte $09   ; 
- D 1 - I - 0x00DE3B 03:BE2B: 09        .byte $09   ; 
- D 1 - I - 0x00DE3C 03:BE2C: 0A        .byte $0A   ; 
- D 1 - I - 0x00DE3D 03:BE2D: 06        .byte $06   ; 
- D 1 - I - 0x00DE3E 03:BE2E: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE3F 03:BE2F: 06        .byte $06   ; 
- D 1 - I - 0x00DE40 03:BE30: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE41 03:BE31: 08        .byte $08   ; 
- D 1 - I - 0x00DE42 03:BE32: 0E        .byte $0E   ; 
- D 1 - I - 0x00DE43 03:BE33: 06        .byte $06   ; 
- - - - - - 0x00DE44 03:BE34: FF        .byte $FF   ; 



off_06_BE35_04:
- D 1 - I - 0x00DE45 03:BE35: 0F        .byte $0F   ; 
- D 1 - I - 0x00DE46 03:BE36: 09        .byte $09   ; 
- D 1 - I - 0x00DE47 03:BE37: 0A        .byte $0A   ; 
- D 1 - I - 0x00DE48 03:BE38: 06        .byte $06   ; 
- D 1 - I - 0x00DE49 03:BE39: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE4A 03:BE3A: 06        .byte $06   ; 
- D 1 - I - 0x00DE4B 03:BE3B: 10        .byte $10   ; 
- D 1 - I - 0x00DE4C 03:BE3C: 08        .byte $08   ; 
- D 1 - I - 0x00DE4D 03:BE3D: 11        .byte $11   ; 
- D 1 - I - 0x00DE4E 03:BE3E: 06        .byte $06   ; 
- - - - - - 0x00DE4F 03:BE3F: FF        .byte $FF   ; 



off_06_BE40_05:
- D 1 - I - 0x00DE50 03:BE40: FC        .byte $FC   ; 
- D 1 - I - 0x00DE51 03:BE41: 08        .byte $08   ; 
- D 1 - I - 0x00DE52 03:BE42: 04        .byte $04   ; 
- D 1 - I - 0x00DE53 03:BE43: 09        .byte $09   ; 



off_06_BE44_06:
- D 1 - I - 0x00DE54 03:BE44: 14        .byte $14   ; 
- D 1 - I - 0x00DE55 03:BE45: 07        .byte $07   ; 
- D 1 - I - 0x00DE56 03:BE46: 13        .byte $13   ; 
- D 1 - I - 0x00DE57 03:BE47: 09        .byte $09   ; 
- D 1 - I - 0x00DE58 03:BE48: 14        .byte $14   ; 
- D 1 - I - 0x00DE59 03:BE49: 07        .byte $07   ; 
- D 1 - I - 0x00DE5A 03:BE4A: 15        .byte $15   ; 
- D 1 - I - 0x00DE5B 03:BE4B: 07        .byte $07   ; 
- - - - - - 0x00DE5C 03:BE4C: FE        .byte $FE   ; 



off_06_BE4D_07:
- D 1 - I - 0x00DE5D 03:BE4D: 15        .byte $15   ; 
- D 1 - I - 0x00DE5E 03:BE4E: 07        .byte $07   ; 
- D 1 - I - 0x00DE5F 03:BE4F: 14        .byte $14   ; 
- D 1 - I - 0x00DE60 03:BE50: 07        .byte $07   ; 
- D 1 - I - 0x00DE61 03:BE51: 13        .byte $13   ; 
- D 1 - I - 0x00DE62 03:BE52: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE63 03:BE53: 14        .byte $14   ; 
- D 1 - I - 0x00DE64 03:BE54: 08        .byte $08   ; 
- - - - - - 0x00DE65 03:BE55: FE        .byte $FE   ; 



off_06_BE56_08:
- D 1 - I - 0x00DE66 03:BE56: 18        .byte $18   ; 
- D 1 - I - 0x00DE67 03:BE57: 07        .byte $07   ; 
- D 1 - I - 0x00DE68 03:BE58: 17        .byte $17   ; 
- D 1 - I - 0x00DE69 03:BE59: 09        .byte $09   ; 
- D 1 - I - 0x00DE6A 03:BE5A: 18        .byte $18   ; 
- D 1 - I - 0x00DE6B 03:BE5B: 07        .byte $07   ; 
- D 1 - I - 0x00DE6C 03:BE5C: 19        .byte $19   ; 
- D 1 - I - 0x00DE6D 03:BE5D: 07        .byte $07   ; 
- - - - - - 0x00DE6E 03:BE5E: FE        .byte $FE   ; 



off_06_BE5F_09:
- D 1 - I - 0x00DE6F 03:BE5F: 19        .byte $19   ; 
- D 1 - I - 0x00DE70 03:BE60: 07        .byte $07   ; 
- D 1 - I - 0x00DE71 03:BE61: 18        .byte $18   ; 
- D 1 - I - 0x00DE72 03:BE62: 07        .byte $07   ; 
- D 1 - I - 0x00DE73 03:BE63: 17        .byte $17   ; 
- D 1 - I - 0x00DE74 03:BE64: 0B        .byte $0B   ; 
- D 1 - I - 0x00DE75 03:BE65: 18        .byte $18   ; 
- D 1 - I - 0x00DE76 03:BE66: 08        .byte $08   ; 
- - - - - - 0x00DE77 03:BE67: FE        .byte $FE   ; 



off_06_BE68_0A:
- D 1 - I - 0x00DE78 03:BE68: 1B        .byte $1B   ; 
- D 1 - I - 0x00DE79 03:BE69: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE7A 03:BE6A: 1C        .byte $1C   ; 
- D 1 - I - 0x00DE7B 03:BE6B: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE7C 03:BE6C: 1D        .byte $1D   ; 
- D 1 - I - 0x00DE7D 03:BE6D: 10        .byte $10   ; 
- D 1 - I - 0x00DE7E 03:BE6E: 1E        .byte $1E   ; 
- D 1 - I - 0x00DE7F 03:BE6F: 0C        .byte $0C   ; 
- D 1 - I - 0x00DE80 03:BE70: 1F        .byte $1F   ; 
- D 1 - I - 0x00DE81 03:BE71: 0C        .byte $0C   ; 
- - - - - - 0x00DE82 03:BE72: FF        .byte $FF   ; 



off_06_BE73_0B:
- D 1 - I - 0x00DE83 03:BE73: 16        .byte $16   ; 
- D 1 - I - 0x00DE84 03:BE74: 05        .byte $05   ; 
- D 1 - I - 0x00DE85 03:BE75: FF        .byte $FF   ; 



off_06_BE76_0C:
- D 1 - I - 0x00DE86 03:BE76: 1A        .byte $1A   ; 
- D 1 - I - 0x00DE87 03:BE77: 05        .byte $05   ; 
- D 1 - I - 0x00DE88 03:BE78: FF        .byte $FF   ; 



off_06_BE79_0D:
- D 1 - I - 0x00DE89 03:BE79: FC        .byte $FC   ; 
- D 1 - I - 0x00DE8A 03:BE7A: 07        .byte $07   ; 
- D 1 - I - 0x00DE8B 03:BE7B: 02        .byte $02   ; 
- D 1 - I - 0x00DE8C 03:BE7C: 0D        .byte $0D   ; 



off_06_BE7D_0E:
- D 1 - I - 0x00DE8D 03:BE7D: FC        .byte $FC   ; 
- D 1 - I - 0x00DE8E 03:BE7E: 07        .byte $07   ; 
- D 1 - I - 0x00DE8F 03:BE7F: 02        .byte $02   ; 
- D 1 - I - 0x00DE90 03:BE80: 11        .byte $11   ; 



off_06_BE81_0F:
- D 1 - I - 0x00DE91 03:BE81: 0E        .byte $0E   ; 
- D 1 - I - 0x00DE92 03:BE82: 07        .byte $07   ; 
- D 1 - I - 0x00DE93 03:BE83: FF        .byte $FF   ; 



off_06_BE84_10:
- D 1 - I - 0x00DE94 03:BE84: 12        .byte $12   ; 
- D 1 - I - 0x00DE95 03:BE85: 07        .byte $07   ; 
- D 1 - I - 0x00DE96 03:BE86: FF        .byte $FF   ; 



_off019_0x00DE97_09:
- D 1 - I - 0x00DE97 03:BE87: A1 BE     .word off_09_BEA1_01
- D 1 - I - 0x00DE99 03:BE89: A5 BE     .word off_09_BEA5_02
- D 1 - I - 0x00DE9B 03:BE8B: A8 BE     .word off_09_BEA8_03
- D 1 - I - 0x00DE9D 03:BE8D: AC BE     .word off_09_BEAC_04
- D 1 - I - 0x00DE9F 03:BE8F: AF BE     .word off_09_BEAF_05
- D 1 - I - 0x00DEA1 03:BE91: B3 BE     .word off_09_BEB3_06
- D 1 - I - 0x00DEA3 03:BE93: B7 BE     .word off_09_BEB7_07
- D 1 - I - 0x00DEA5 03:BE95: BB BE     .word off_09_BEBB_08
- D 1 - I - 0x00DEA7 03:BE97: BF BE     .word off_09_BEBF_09
- D 1 - I - 0x00DEA9 03:BE99: C3 BE     .word off_09_BEC3_0A
- - - - - - 0x00DEAB 03:BE9B: C7 BE     .word off_09_BEC7_0B
- D 1 - I - 0x00DEAD 03:BE9D: CA BE     .word off_09_BECA_0C
- D 1 - I - 0x00DEAF 03:BE9F: D3 BE     .word off_09_BED3_0D



off_09_BEA1_01:
- D 1 - I - 0x00DEB1 03:BEA1: FC        .byte $FC   ; 
- D 1 - I - 0x00DEB2 03:BEA2: 04        .byte $04   ; 
- D 1 - I - 0x00DEB3 03:BEA3: 04        .byte $04   ; 
- D 1 - I - 0x00DEB4 03:BEA4: 01        .byte $01   ; 



off_09_BEA5_02:
- D 1 - I - 0x00DEB5 03:BEA5: 04        .byte $04   ; 
- D 1 - I - 0x00DEB6 03:BEA6: 04        .byte $04   ; 
- D 1 - I - 0x00DEB7 03:BEA7: FF        .byte $FF   ; 



off_09_BEA8_03:
- D 1 - I - 0x00DEB8 03:BEA8: FC        .byte $FC   ; 
- D 1 - I - 0x00DEB9 03:BEA9: 05        .byte $05   ; 
- D 1 - I - 0x00DEBA 03:BEAA: 04        .byte $04   ; 
- D 1 - I - 0x00DEBB 03:BEAB: 05        .byte $05   ; 



off_09_BEAC_04:
- D 1 - I - 0x00DEBC 03:BEAC: 03        .byte $03   ; 
- D 1 - I - 0x00DEBD 03:BEAD: 06        .byte $06   ; 
- D 1 - I - 0x00DEBE 03:BEAE: FF        .byte $FF   ; 



off_09_BEAF_05:
- D 1 - I - 0x00DEBF 03:BEAF: FC        .byte $FC   ; 
- D 1 - I - 0x00DEC0 03:BEB0: 05        .byte $05   ; 
- D 1 - I - 0x00DEC1 03:BEB1: 04        .byte $04   ; 
- D 1 - I - 0x00DEC2 03:BEB2: 17        .byte $17   ; 



off_09_BEB3_06:
- D 1 - I - 0x00DEC3 03:BEB3: FC        .byte $FC   ; 
- D 1 - I - 0x00DEC4 03:BEB4: 05        .byte $05   ; 
- D 1 - I - 0x00DEC5 03:BEB5: 04        .byte $04   ; 
- D 1 - I - 0x00DEC6 03:BEB6: 1B        .byte $1B   ; 



off_09_BEB7_07:
- D 1 - I - 0x00DEC7 03:BEB7: FC        .byte $FC   ; 
- D 1 - I - 0x00DEC8 03:BEB8: 05        .byte $05   ; 
- D 1 - I - 0x00DEC9 03:BEB9: 04        .byte $04   ; 
- D 1 - I - 0x00DECA 03:BEBA: 1F        .byte $1F   ; 



off_09_BEBB_08:
- D 1 - I - 0x00DECB 03:BEBB: FC        .byte $FC   ; 
- D 1 - I - 0x00DECC 03:BEBC: 09        .byte $09   ; 
- D 1 - I - 0x00DECD 03:BEBD: 08        .byte $08   ; 
- D 1 - I - 0x00DECE 03:BEBE: 09        .byte $09   ; 



off_09_BEBF_09:
- D 1 - I - 0x00DECF 03:BEBF: FC        .byte $FC   ; 
- D 1 - I - 0x00DED0 03:BEC0: 05        .byte $05   ; 
- D 1 - I - 0x00DED1 03:BEC1: 08        .byte $08   ; 
- D 1 - I - 0x00DED2 03:BEC2: 09        .byte $09   ; 



off_09_BEC3_0A:
- D 1 - I - 0x00DED3 03:BEC3: FC        .byte $FC   ; 
- D 1 - I - 0x00DED4 03:BEC4: 0A        .byte $0A   ; 
- D 1 - I - 0x00DED5 03:BEC5: 04        .byte $04   ; 
- D 1 - I - 0x00DED6 03:BEC6: 11        .byte $11   ; 



off_09_BEC7_0B:
- - - - - - 0x00DED7 03:BEC7: 02        .byte $02   ; 
- - - - - - 0x00DED8 03:BEC8: 0D        .byte $0D   ; 
- - - - - - 0x00DED9 03:BEC9: FF        .byte $FF   ; 



off_09_BECA_0C:
- D 1 - I - 0x00DEDA 03:BECA: FD        .byte $FD   ; 
- D 1 - I - 0x00DEDB 03:BECB: 0B        .byte $0B   ; 
- D 1 - I - 0x00DEDC 03:BECC: 20        .byte $20   ; 
- D 1 - I - 0x00DEDD 03:BECD: 23        .byte $23   ; 
- D 1 - I - 0x00DEDE 03:BECE: 24        .byte $24   ; 
- D 1 - I - 0x00DEDF 03:BECF: 25        .byte $25   ; 
- D 1 - I - 0x00DEE0 03:BED0: 26        .byte $26   ; 
- D 1 - I - 0x00DEE1 03:BED1: 27        .byte $27   ; 
- - - - - - 0x00DEE2 03:BED2: FF        .byte $FF   ; 



off_09_BED3_0D:
- D 1 - I - 0x00DEE3 03:BED3: FC        .byte $FC   ; 
- D 1 - I - 0x00DEE4 03:BED4: 08        .byte $08   ; 
- D 1 - I - 0x00DEE5 03:BED5: 03        .byte $03   ; 
- D 1 - I - 0x00DEE6 03:BED6: 28        .byte $28   ; 



_off019_0x00DEE7_0A:
- D 1 - I - 0x00DEE7 03:BED7: F7 BE     .word off_0A_BEF7_01
- D 1 - I - 0x00DEE9 03:BED9: FB BE     .word off_0A_BEFB_02
- - - - - - 0x00DEEB 03:BEDB: 07 BF     .word off_0A_BF07_03
- - - - - - 0x00DEED 03:BEDD: 07 BF     .word off_0A_BF07_04
- D 1 - I - 0x00DEEF 03:BEDF: FF BE     .word off_0A_BEFF_05
- D 1 - I - 0x00DEF1 03:BEE1: 03 BF     .word off_0A_BF03_06
- D 1 - I - 0x00DEF3 03:BEE3: 07 BF     .word off_0A_BF07_07
- D 1 - I - 0x00DEF5 03:BEE5: 10 BF     .word off_0A_BF10_08
- D 1 - I - 0x00DEF7 03:BEE7: 15 BF     .word off_0A_BF15_09
- D 1 - I - 0x00DEF9 03:BEE9: 1E BF     .word off_0A_BF1E_0A
- D 1 - I - 0x00DEFB 03:BEEB: 23 BF     .word off_0A_BF23_0B
- D 1 - I - 0x00DEFD 03:BEED: 28 BF     .word off_0A_BF28_0C
- D 1 - I - 0x00DEFF 03:BEEF: 2D BF     .word off_0A_BF2D_0D
- D 1 - I - 0x00DF01 03:BEF1: 30 BF     .word off_0A_BF30_0E
- - - - - - 0x00DF03 03:BEF3: 33 BF     .word off_0A_BF33_0F
- - - - - - 0x00DF05 03:BEF5: 36 BF     .word off_0A_BF36_10



off_0A_BEF7_01:
- D 1 - I - 0x00DF07 03:BEF7: FC        .byte $FC   ; 
- D 1 - I - 0x00DF08 03:BEF8: 01        .byte $01   ; 
- D 1 - I - 0x00DF09 03:BEF9: 04        .byte $04   ; 
- D 1 - I - 0x00DF0A 03:BEFA: 15        .byte $15   ; 



off_0A_BEFB_02:
- D 1 - I - 0x00DF0B 03:BEFB: FC        .byte $FC   ; 
- D 1 - I - 0x00DF0C 03:BEFC: 04        .byte $04   ; 
- D 1 - I - 0x00DF0D 03:BEFD: 09        .byte $09   ; 
- D 1 - I - 0x00DF0E 03:BEFE: 19        .byte $19   ; 



off_0A_BEFF_05:
- D 1 - I - 0x00DF0F 03:BEFF: FC        .byte $FC   ; 
- D 1 - I - 0x00DF10 03:BF00: 03        .byte $03   ; 
- D 1 - I - 0x00DF11 03:BF01: 04        .byte $04   ; 
- D 1 - I - 0x00DF12 03:BF02: 01        .byte $01   ; 



off_0A_BF03_06:
- D 1 - I - 0x00DF13 03:BF03: FC        .byte $FC   ; 
- D 1 - I - 0x00DF14 03:BF04: 03        .byte $03   ; 
- D 1 - I - 0x00DF15 03:BF05: 04        .byte $04   ; 
- D 1 - I - 0x00DF16 03:BF06: 05        .byte $05   ; 



off_0A_BF07_03:
off_0A_BF07_04:
off_0A_BF07_07:
- D 1 - I - 0x00DF17 03:BF07: 0A        .byte $0A   ; 
- D 1 - I - 0x00DF18 03:BF08: 04        .byte $04   ; 
- D 1 - I - 0x00DF19 03:BF09: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF1A 03:BF0A: 04        .byte $04   ; 
- D 1 - I - 0x00DF1B 03:BF0B: 0C        .byte $0C   ; 
- D 1 - I - 0x00DF1C 03:BF0C: 06        .byte $06   ; 
- D 1 - I - 0x00DF1D 03:BF0D: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF1E 03:BF0E: 04        .byte $04   ; 
- D 1 - I - 0x00DF1F 03:BF0F: FF        .byte $FF   ; 



off_0A_BF10_08:
- D 1 - I - 0x00DF20 03:BF10: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF21 03:BF11: 04        .byte $04   ; 
- D 1 - I - 0x00DF22 03:BF12: 0A        .byte $0A   ; 
- D 1 - I - 0x00DF23 03:BF13: 04        .byte $04   ; 
- D 1 - I - 0x00DF24 03:BF14: FF        .byte $FF   ; 



off_0A_BF15_09:
- D 1 - I - 0x00DF25 03:BF15: 0E        .byte $0E   ; 
- D 1 - I - 0x00DF26 03:BF16: 04        .byte $04   ; 
- D 1 - I - 0x00DF27 03:BF17: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF28 03:BF18: 04        .byte $04   ; 
- D 1 - I - 0x00DF29 03:BF19: 10        .byte $10   ; 
- D 1 - I - 0x00DF2A 03:BF1A: 06        .byte $06   ; 
- D 1 - I - 0x00DF2B 03:BF1B: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF2C 03:BF1C: 04        .byte $04   ; 
- D 1 - I - 0x00DF2D 03:BF1D: FF        .byte $FF   ; 



off_0A_BF1E_0A:
- D 1 - I - 0x00DF2E 03:BF1E: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF2F 03:BF1F: 04        .byte $04   ; 
- D 1 - I - 0x00DF30 03:BF20: 0E        .byte $0E   ; 
- D 1 - I - 0x00DF31 03:BF21: 04        .byte $04   ; 
- D 1 - I - 0x00DF32 03:BF22: FF        .byte $FF   ; 



off_0A_BF23_0B:
- D 1 - I - 0x00DF33 03:BF23: 11        .byte $11   ; 
- D 1 - I - 0x00DF34 03:BF24: 0F        .byte $0F   ; 
- D 1 - I - 0x00DF35 03:BF25: 12        .byte $12   ; 
- D 1 - I - 0x00DF36 03:BF26: 1F        .byte $1F   ; 
- D 1 - I - 0x00DF37 03:BF27: FF        .byte $FF   ; 



off_0A_BF28_0C:
- D 1 - I - 0x00DF38 03:BF28: 13        .byte $13   ; 
- D 1 - I - 0x00DF39 03:BF29: 1B        .byte $1B   ; 
- D 1 - I - 0x00DF3A 03:BF2A: 14        .byte $14   ; 
- D 1 - I - 0x00DF3B 03:BF2B: 1B        .byte $1B   ; 
- D 1 - I - 0x00DF3C 03:BF2C: FE        .byte $FE   ; 



off_0A_BF2D_0D:
- D 1 - I - 0x00DF3D 03:BF2D: 09        .byte $09   ; 
- D 1 - I - 0x00DF3E 03:BF2E: 07        .byte $07   ; 
- D 1 - I - 0x00DF3F 03:BF2F: FF        .byte $FF   ; 



off_0A_BF30_0E:
- D 1 - I - 0x00DF40 03:BF30: 0D        .byte $0D   ; 
- D 1 - I - 0x00DF41 03:BF31: 07        .byte $07   ; 
- D 1 - I - 0x00DF42 03:BF32: FF        .byte $FF   ; 



off_0A_BF33_0F:
- - - - - - 0x00DF43 03:BF33: 0B        .byte $0B   ; 
- - - - - - 0x00DF44 03:BF34: 04        .byte $04   ; 
- - - - - - 0x00DF45 03:BF35: FF        .byte $FF   ; 



off_0A_BF36_10:
- - - - - - 0x00DF46 03:BF36: 0F        .byte $0F   ; 
- - - - - - 0x00DF47 03:BF37: 04        .byte $04   ; 
- - - - - - 0x00DF48 03:BF38: FF        .byte $FF   ; 



_off019_0x00DF49_0B:
- D 1 - I - 0x00DF49 03:BF39: 4F BF     .word off_0B_BF4F_01
- D 1 - I - 0x00DF4B 03:BF3B: 52 BF     .word off_0B_BF52_02
- D 1 - I - 0x00DF4D 03:BF3D: 5D BF     .word off_0B_BF5D_03
- D 1 - I - 0x00DF4F 03:BF3F: 61 BF     .word off_0B_BF61_04
- D 1 - I - 0x00DF51 03:BF41: 68 BF     .word off_0B_BF68_05
- D 1 - I - 0x00DF53 03:BF43: 6C BF     .word off_0B_BF6C_06
- D 1 - I - 0x00DF55 03:BF45: 70 BF     .word off_0B_BF70_07
- D 1 - I - 0x00DF57 03:BF47: 74 BF     .word off_0B_BF74_08
- D 1 - I - 0x00DF59 03:BF49: 7F BF     .word off_0B_BF7F_09
- - - - - - 0x00DF5B 03:BF4B: 8A BF     .word off_0B_BF8A_0A
- - - - - - 0x00DF5D 03:BF4D: 8D BF     .word off_0B_BF8D_0B



off_0B_BF4F_01:
- D 1 - I - 0x00DF5F 03:BF4F: 01        .byte $01   ; 
- D 1 - I - 0x00DF60 03:BF50: 0F        .byte $0F   ; 
- - - - - - 0x00DF61 03:BF51: FF        .byte $FF   ; 



off_0B_BF52_02:
- D 1 - I - 0x00DF62 03:BF52: 02        .byte $02   ; 
- D 1 - I - 0x00DF63 03:BF53: 1D        .byte $1D   ; 
- D 1 - I - 0x00DF64 03:BF54: 03        .byte $03   ; 
- D 1 - I - 0x00DF65 03:BF55: 1A        .byte $1A   ; 
- D 1 - I - 0x00DF66 03:BF56: 04        .byte $04   ; 
- D 1 - I - 0x00DF67 03:BF57: 1A        .byte $1A   ; 
- D 1 - I - 0x00DF68 03:BF58: 05        .byte $05   ; 
- D 1 - I - 0x00DF69 03:BF59: 0D        .byte $0D   ; 
- D 1 - I - 0x00DF6A 03:BF5A: 06        .byte $06   ; 
- D 1 - I - 0x00DF6B 03:BF5B: 1A        .byte $1A   ; 
- - - - - - 0x00DF6C 03:BF5C: FF        .byte $FF   ; 



off_0B_BF5D_03:
- D 1 - I - 0x00DF6D 03:BF5D: FC        .byte $FC   ; 
- D 1 - I - 0x00DF6E 03:BF5E: 09        .byte $09   ; 
- D 1 - I - 0x00DF6F 03:BF5F: 05        .byte $05   ; 
- D 1 - I - 0x00DF70 03:BF60: 07        .byte $07   ; 



off_0B_BF61_04:
- D 1 - I - 0x00DF71 03:BF61: 03        .byte $03   ; 
- D 1 - I - 0x00DF72 03:BF62: 0B        .byte $0B   ; 
- D 1 - I - 0x00DF73 03:BF63: 04        .byte $04   ; 
- D 1 - I - 0x00DF74 03:BF64: 19        .byte $19   ; 
- D 1 - I - 0x00DF75 03:BF65: 0C        .byte $0C   ; 
- D 1 - I - 0x00DF76 03:BF66: 5F        .byte $5F   ; 
- D 1 - I - 0x00DF77 03:BF67: FE        .byte $FE   ; 



off_0B_BF68_05:
- D 1 - I - 0x00DF78 03:BF68: FC        .byte $FC   ; 
- D 1 - I - 0x00DF79 03:BF69: 04        .byte $04   ; 
- D 1 - I - 0x00DF7A 03:BF6A: 04        .byte $04   ; 
- D 1 - I - 0x00DF7B 03:BF6B: 0D        .byte $0D   ; 



off_0B_BF6C_06:
- D 1 - I - 0x00DF7C 03:BF6C: FC        .byte $FC   ; 
- D 1 - I - 0x00DF7D 03:BF6D: 06        .byte $06   ; 
- D 1 - I - 0x00DF7E 03:BF6E: 04        .byte $04   ; 
- D 1 - I - 0x00DF7F 03:BF6F: 11        .byte $11   ; 



off_0B_BF70_07:
- D 1 - I - 0x00DF80 03:BF70: FC        .byte $FC   ; 
- D 1 - I - 0x00DF81 03:BF71: 06        .byte $06   ; 
- D 1 - I - 0x00DF82 03:BF72: 04        .byte $04   ; 
- D 1 - I - 0x00DF83 03:BF73: 15        .byte $15   ; 



off_0B_BF74_08:
- D 1 - I - 0x00DF84 03:BF74: 19        .byte $19   ; 
- D 1 - I - 0x00DF85 03:BF75: 04        .byte $04   ; 
- D 1 - I - 0x00DF86 03:BF76: 1A        .byte $1A   ; 
- D 1 - I - 0x00DF87 03:BF77: 06        .byte $06   ; 
- D 1 - I - 0x00DF88 03:BF78: 1B        .byte $1B   ; 
- D 1 - I - 0x00DF89 03:BF79: 04        .byte $04   ; 
- D 1 - I - 0x00DF8A 03:BF7A: 1C        .byte $1C   ; 
- D 1 - I - 0x00DF8B 03:BF7B: 04        .byte $04   ; 
- D 1 - I - 0x00DF8C 03:BF7C: 1D        .byte $1D   ; 
- D 1 - I - 0x00DF8D 03:BF7D: 07        .byte $07   ; 
- - - - - - 0x00DF8E 03:BF7E: FE        .byte $FE   ; 



off_0B_BF7F_09:
- D 1 - I - 0x00DF8F 03:BF7F: 1E        .byte $1E   ; 
- D 1 - I - 0x00DF90 03:BF80: 04        .byte $04   ; 
- D 1 - I - 0x00DF91 03:BF81: 1F        .byte $1F   ; 
- D 1 - I - 0x00DF92 03:BF82: 06        .byte $06   ; 
- D 1 - I - 0x00DF93 03:BF83: 20        .byte $20   ; 
- D 1 - I - 0x00DF94 03:BF84: 04        .byte $04   ; 
- D 1 - I - 0x00DF95 03:BF85: 21        .byte $21   ; 
- D 1 - I - 0x00DF96 03:BF86: 04        .byte $04   ; 
- D 1 - I - 0x00DF97 03:BF87: 22        .byte $22   ; 
- D 1 - I - 0x00DF98 03:BF88: 07        .byte $07   ; 
- - - - - - 0x00DF99 03:BF89: FE        .byte $FE   ; 



off_0B_BF8A_0A:
- - - - - - 0x00DF9A 03:BF8A: 19        .byte $19   ; 
- - - - - - 0x00DF9B 03:BF8B: 04        .byte $04   ; 
- - - - - - 0x00DF9C 03:BF8C: FF        .byte $FF   ; 



off_0B_BF8D_0B:
- - - - - - 0x00DF9D 03:BF8D: 1E        .byte $1E   ; 
- - - - - - 0x00DF9E 03:BF8E: 04        .byte $04   ; 
- - - - - - 0x00DF9F 03:BF8F: FF        .byte $FF   ; 



_off019_0x00DFA0_0C:
- D 1 - I - 0x00DFA0 03:BF90: AA BF     .word off_0C_BFAA_01
- D 1 - I - 0x00DFA2 03:BF92: AE BF     .word off_0C_BFAE_02
- D 1 - I - 0x00DFA4 03:BF94: B2 BF     .word off_0C_BFB2_03
- D 1 - I - 0x00DFA6 03:BF96: B6 BF     .word off_0C_BFB6_04
- D 1 - I - 0x00DFA8 03:BF98: BA BF     .word off_0C_BFBA_05
- D 1 - I - 0x00DFAA 03:BF9A: BE BF     .word off_0C_BFBE_06
- D 1 - I - 0x00DFAC 03:BF9C: C2 BF     .word off_0C_BFC2_07
- - - - - - 0x00DFAE 03:BF9E: C6 BF     .word off_0C_BFC6_08
- - - - - - 0x00DFB0 03:BFA0: C6 BF     .word off_0C_BFC6_09
- - - - - - 0x00DFB2 03:BFA2: C6 BF     .word off_0C_BFC6_0A
- D 1 - I - 0x00DFB4 03:BFA4: C6 BF     .word off_0C_BFC6_0B
- D 1 - I - 0x00DFB6 03:BFA6: C9 BF     .word off_0C_BFC9_0C
- D 1 - I - 0x00DFB8 03:BFA8: CC BF     .word off_0C_BFCC_0D



off_0C_BFAA_01:
- D 1 - I - 0x00DFBA 03:BFAA: FC        .byte $FC   ; 
- D 1 - I - 0x00DFBB 03:BFAB: 07        .byte $07   ; 
- D 1 - I - 0x00DFBC 03:BFAC: 02        .byte $02   ; 
- D 1 - I - 0x00DFBD 03:BFAD: 01        .byte $01   ; 



off_0C_BFAE_02:
- D 1 - I - 0x00DFBE 03:BFAE: FC        .byte $FC   ; 
- D 1 - I - 0x00DFBF 03:BFAF: 07        .byte $07   ; 
- D 1 - I - 0x00DFC0 03:BFB0: 02        .byte $02   ; 
- D 1 - I - 0x00DFC1 03:BFB1: 05        .byte $05   ; 



off_0C_BFB2_03:
- D 1 - I - 0x00DFC2 03:BFB2: FC        .byte $FC   ; 
- D 1 - I - 0x00DFC3 03:BFB3: 07        .byte $07   ; 
- D 1 - I - 0x00DFC4 03:BFB4: 02        .byte $02   ; 
- D 1 - I - 0x00DFC5 03:BFB5: 07        .byte $07   ; 



off_0C_BFB6_04:
- D 1 - I - 0x00DFC6 03:BFB6: FC        .byte $FC   ; 
- D 1 - I - 0x00DFC7 03:BFB7: 08        .byte $08   ; 
- D 1 - I - 0x00DFC8 03:BFB8: 04        .byte $04   ; 
- D 1 - I - 0x00DFC9 03:BFB9: 09        .byte $09   ; 



off_0C_BFBA_05:
- D 1 - I - 0x00DFCA 03:BFBA: FC        .byte $FC   ; 
- D 1 - I - 0x00DFCB 03:BFBB: 08        .byte $08   ; 
- D 1 - I - 0x00DFCC 03:BFBC: 04        .byte $04   ; 
- D 1 - I - 0x00DFCD 03:BFBD: 0D        .byte $0D   ; 



off_0C_BFBE_06:
- D 1 - I - 0x00DFCE 03:BFBE: FC        .byte $FC   ; 
- D 1 - I - 0x00DFCF 03:BFBF: 07        .byte $07   ; 
- D 1 - I - 0x00DFD0 03:BFC0: 04        .byte $04   ; 
- D 1 - I - 0x00DFD1 03:BFC1: 11        .byte $11   ; 



off_0C_BFC2_07:
- D 1 - I - 0x00DFD2 03:BFC2: FC        .byte $FC   ; 
- D 1 - I - 0x00DFD3 03:BFC3: 07        .byte $07   ; 
- D 1 - I - 0x00DFD4 03:BFC4: 04        .byte $04   ; 
- D 1 - I - 0x00DFD5 03:BFC5: 15        .byte $15   ; 



off_0C_BFC6_08:
off_0C_BFC6_09:
off_0C_BFC6_0A:
off_0C_BFC6_0B:
- D 1 - I - 0x00DFD6 03:BFC6: 02        .byte $02   ; 
- D 1 - I - 0x00DFD7 03:BFC7: 0A        .byte $0A   ; 
- - - - - - 0x00DFD8 03:BFC8: FF        .byte $FF   ; 



off_0C_BFC9_0C:
- D 1 - I - 0x00DFD9 03:BFC9: 06        .byte $06   ; 
- D 1 - I - 0x00DFDA 03:BFCA: 0A        .byte $0A   ; 
- - - - - - 0x00DFDB 03:BFCB: FF        .byte $FF   ; 



off_0C_BFCC_0D:
- D 1 - I - 0x00DFDC 03:BFCC: 08        .byte $08   ; 
- D 1 - I - 0x00DFDD 03:BFCD: 0A        .byte $0A   ; 
- - - - - - 0x00DFDE 03:BFCE: FF        .byte $FF   ; 



_off019_0x00DFDF_0D:
- D 1 - I - 0x00DFDF 03:BFCF: D3 BF     .word off_0D_BFD3_01
- D 1 - I - 0x00DFE1 03:BFD1: D7 BF     .word off_0D_BFD7_02



off_0D_BFD3_01:
- D 1 - I - 0x00DFE3 03:BFD3: FC        .byte $FC   ; 
- D 1 - I - 0x00DFE4 03:BFD4: 04        .byte $04   ; 
- D 1 - I - 0x00DFE5 03:BFD5: 04        .byte $04   ; 
- D 1 - I - 0x00DFE6 03:BFD6: 01        .byte $01   ; 



off_0D_BFD7_02:
- D 1 - I - 0x00DFE7 03:BFD7: 05        .byte $05   ; 
- D 1 - I - 0x00DFE8 03:BFD8: 07        .byte $07   ; 
- D 1 - I - 0x00DFE9 03:BFD9: 06        .byte $06   ; 
- D 1 - I - 0x00DFEA 03:BFDA: 09        .byte $09   ; 
- D 1 - I - 0x00DFEB 03:BFDB: 07        .byte $07   ; 
- D 1 - I - 0x00DFEC 03:BFDC: 09        .byte $09   ; 
- D 1 - I - 0x00DFED 03:BFDD: 08        .byte $08   ; 
- D 1 - I - 0x00DFEE 03:BFDE: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFEF 03:BFDF: 09        .byte $09   ; 
- D 1 - I - 0x00DFF0 03:BFE0: 09        .byte $09   ; 
- D 1 - I - 0x00DFF1 03:BFE1: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFF2 03:BFE2: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFF3 03:BFE3: 0B        .byte $0B   ; 
- D 1 - I - 0x00DFF4 03:BFE4: 0A        .byte $0A   ; 
- D 1 - I - 0x00DFF5 03:BFE5: 0C        .byte $0C   ; 
- D 1 - I - 0x00DFF6 03:BFE6: 15        .byte $15   ; 
- - - - - - 0x00DFF7 03:BFE7: FF        .byte $FF   ; 



_off019_0x00DFF8_0E:
- - - - - - 0x00DFF8 03:BFE8: EC BF     .word off_0E_BFEC_01
- - - - - - 0x00DFFA 03:BFEA: F0 BF     .word off_0E_BFF0_02



off_0E_BFEC_01:
- - - - - - 0x00DFFC 03:BFEC: FC        .byte $FC   ; 
- - - - - - 0x00DFFD 03:BFED: 01        .byte $01   ; 
- - - - - - 0x00DFFE 03:BFEE: 04        .byte $04   ; 
- - - - - - 0x00DFFF 03:BFEF: 01        .byte $01   ; 

off_0E_BFF0_02:
- - - - - - 0x00E000 03:BFF0: FC        .byte $FC   ; 
- - - - - - 0x00E001 03:BFF1: 01        .byte $01   ; 
- - - - - - 0x00E002 03:BFF2: 04        .byte $04   ; 
- - - - - - 0x00E003 03:BFF3: 05        .byte $05   ; 
- - - - - - 0x00E004 03:BFF4: FF        .byte $FF   ; 


; bzk garbage
- - - - - - 0x00E005 03:BFF5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 06: 0x%04X [%d]", ($C000 - *), ($C000 - *))



