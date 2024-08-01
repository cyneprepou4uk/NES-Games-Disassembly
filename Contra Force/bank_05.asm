.segment "BANK_05"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00A010-0x00C00F



.export sub_0x00A011
.export ofs_006_0x00A040_20
.export sub_0x00A058
.export ofs_006_0x00A058_23
.export sub_0x00A073
.export ofs_006_0x00A073_12
.export loc_0x00A548
.export ofs_006_0x00A548_13
.export ofs_006_0x00A6E3_18
.export ofs_006_0x00AE44_09
.export ofs_006_0x00AF00_0B
.export sub_0x00B2B4
.export loc_0x00B38A
.export sub_0x00B402
.export sub_0x00B636
.export loc_0x00B6D0
.export ofs_016_0x00B84F_09
.export ofs_016_0x00B937_05
.export ofs_016_0x00BA01_08
.export tbl_0x00BC23



; bzk garbage, unused bank id
- D 1 - - - 0x00A010 02:A000: 05        .byte con_prg_bank + $05   ; 



sub_0x00A011:
C - - - - - 0x00A011 02:A001: A2 01     LDX #$01
bra_A003_loop:
C - - - - - 0x00A013 02:A003: 20 40 F6  JSR sub_0x01F650
C - - - - - 0x00A016 02:A006: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00A019 02:A009: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A01C 02:A00C: A4 88     LDY ram_x2_stage
C - - - - - 0x00A01E 02:A00E: 8A        TXA
C - - - - - 0x00A01F 02:A00F: 0A        ASL
C - - - - - 0x00A020 02:A010: 0A        ASL
C - - - - - 0x00A021 02:A011: 0A        ASL
C - - - - - 0x00A022 02:A012: 0A        ASL
C - - - - - 0x00A023 02:A013: 79 C7 F6  ADC tbl_0x01F6D7,Y
C - - - - - 0x00A026 02:A016: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00A029 02:A019: B9 C8 F6  LDA tbl_0x01F6D7 + $01,Y
C - - - - - 0x00A02C 02:A01C: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00A02F 02:A01F: A9 0A     LDA #$0A
C - - - - - 0x00A031 02:A021: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00A034 02:A024: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00A037 02:A027: F0 03     BEQ bra_A02C
C - - - - - 0x00A039 02:A029: 20 30 A0  JSR sub_A030
bra_A02C:
C - - - - - 0x00A03C 02:A02C: CA        DEX
C - - - - - 0x00A03D 02:A02D: 10 D4     BPL bra_A003_loop
C - - - - - 0x00A03F 02:A02F: 60        RTS



sub_A030:
ofs_006_0x00A040_20:
C - - - - - 0x00A040 02:A030: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A043 02:A033: F0 08     BEQ bra_A03D
C - - - - - 0x00A045 02:A035: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A048 02:A038: 29 02     AND #$02
C - - - - - 0x00A04A 02:A03A: 0A        ASL
C - - - - - 0x00A04B 02:A03B: 69 04     ADC #$04
bra_A03D:
C - - - - - 0x00A04D 02:A03D: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00A050 02:A040: 4C C7 A6  JMP loc_A6C7



sub_A043_00B1x_AND_0F:
C - - - - - 0x00A053 02:A043: B5 B1     LDA ram_current_player,X
C - - - - - 0x00A055 02:A045: 29 0F     AND #$0F
C - - - - - 0x00A057 02:A047: 60        RTS



sub_0x00A058:
ofs_006_0x00A058_23:
C - - - - - 0x00A058 02:A048: A5 69     LDA ram_0069
C - - - - - 0x00A05A 02:A04A: 8D F3 03  STA ram_03F3
C - - - - - 0x00A05D 02:A04D: A5 6B     LDA ram_006B
C - - - - - 0x00A05F 02:A04F: 8D F5 03  STA ram_03F5
C - - - - - 0x00A062 02:A052: A5 64     LDA ram_0064
C - - - - - 0x00A064 02:A054: 29 F8     AND #$F8
C - - - - - 0x00A066 02:A056: 8D F6 03  STA ram_03F6
C - - - - - 0x00A069 02:A059: A5 61     LDA ram_0061
C - - - - - 0x00A06B 02:A05B: 29 F8     AND #$F8
C - - - - - 0x00A06D 02:A05D: 8D F4 03  STA ram_03F4
C - - - - - 0x00A070 02:A060: 4C B1 AE  JMP loc_AEB1



sub_0x00A073:
ofs_006_0x00A073_12:
C - - - - - 0x00A073 02:A063: AD C8 07  LDA ram_07C8_unk
C - - - - - 0x00A076 02:A066: 0D C9 07  ORA ram_07C8_unk + $01
C - - - - - 0x00A079 02:A069: 8D 5B 03  STA ram_035B
C - - - - - 0x00A07C 02:A06C: 20 40 F6  JSR sub_0x01F650
C - - - - - 0x00A07F 02:A06F: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A082 02:A072: 29 20     AND #$20
C - - - - - 0x00A084 02:A074: F0 26     BEQ bra_A09C
C - - - - - 0x00A086 02:A076: A9 0D     LDA #con_F3D6_0D
C - - - - - 0x00A088 02:A078: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x00A08B 02:A07B: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A08E 02:A07E: F0 0A     BEQ bra_A08A
C - - - - - 0x00A090 02:A080: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A093 02:A083: 29 20     AND #$20
C - - - - - 0x00A095 02:A085: D0 1A     BNE bra_A0A1_RTS
C - - - - - 0x00A097 02:A087: 20 4C 9A  JSR sub_0x009A5C
bra_A08A:
C - - - - - 0x00A09A 02:A08A: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00A09D 02:A08D: D0 12     BNE bra_A0A1_RTS
C - - - - - 0x00A09F 02:A08F: 4C 84 AC  JMP loc_AC84



sub_A092:
C - - - - - 0x00A0A2 02:A092: A9 00     LDA #$00
C - - - - - 0x00A0A4 02:A094: F0 02     BEQ bra_A098    ; jmp



sub_A096:
C - - - - - 0x00A0A6 02:A096: A9 80     LDA #$80
bra_A098:
C - - - - - 0x00A0A8 02:A098: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00A0AB 02:A09B: 60        RTS



bra_A09C:
C - - - - - 0x00A0AC 02:A09C: 20 4F A4  JSR sub_A44F
C - - - - - 0x00A0AF 02:A09F: 90 0D     BCC bra_A0AE
bra_A0A1_RTS:
C - - - - - 0x00A0B1 02:A0A1: 60        RTS



sub_A0A2_07AAx_AND_0F:
sub_A0A2:
C - - - - - 0x00A0B2 02:A0A2: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A0B5 02:A0A5: 29 0F     AND #$0F
C - - - - - 0x00A0B7 02:A0A7: 60        RTS



sub_A0A8:
C - - - - - 0x00A0B8 02:A0A8: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A0BB 02:A0AB: C9 05     CMP #$05
C - - - - - 0x00A0BD 02:A0AD: 60        RTS
bra_A0AE:
C - - - - - 0x00A0BE 02:A0AE: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00A0C1 02:A0B1: 29 FD     AND #$FD
C - - - - - 0x00A0C3 02:A0B3: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00A0C6 02:A0B6: A5 75     LDA ram_stage
C - - - - - 0x00A0C8 02:A0B8: C9 01     CMP #$01
C - - - - - 0x00A0CA 02:A0BA: D0 10     BNE bra_A0CC
C - - - - - 0x00A0CC 02:A0BC: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A0CE 02:A0BE: 29 03     AND #$03
C - - - - - 0x00A0D0 02:A0C0: C9 03     CMP #$03
C - - - - - 0x00A0D2 02:A0C2: D0 08     BNE bra_A0CC
C - - - - - 0x00A0D4 02:A0C4: A9 02     LDA #$02
C - - - - - 0x00A0D6 02:A0C6: 1D 00 06  ORA ram_0600_obj,X
C - - - - - 0x00A0D9 02:A0C9: 9D 00 06  STA ram_0600_obj,X
bra_A0CC:
C - - - - - 0x00A0DC 02:A0CC: 20 F0 AE  JSR sub_AEF0
C - - - - - 0x00A0DF 02:A0CF: 20 E7 A2  JSR sub_A2E7
C - - - - - 0x00A0E2 02:A0D2: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A0E5 02:A0D5: 85 3A     STA ram_003A
C - - - - - 0x00A0E7 02:A0D7: A9 00     LDA #$00
C - - - - - 0x00A0E9 02:A0D9: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00A0EC 02:A0DC: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A0EE 02:A0DE: 29 13     AND #$13
C - - - - - 0x00A0F0 02:A0E0: 95 BE     STA ram_00BE,X
C - - - - - 0x00A0F2 02:A0E2: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A0F5 02:A0E5: D0 03     BNE bra_A0EA
C - - - - - 0x00A0F7 02:A0E7: 4C B4 A1  JMP loc_A1B4
bra_A0EA:
C - - - - - 0x00A0FA 02:A0EA: A0 00     LDY #$00
C - - - - - 0x00A0FC 02:A0EC: 20 86 A4  JSR sub_A486
C - - - - - 0x00A0FF 02:A0EF: A5 75     LDA ram_stage
C - - - - - 0x00A101 02:A0F1: C9 03     CMP #$03
C - - - - - 0x00A103 02:A0F3: D0 0A     BNE bra_A0FF
C - - - - - 0x00A105 02:A0F5: A5 00     LDA ram_0000
C - - - - - 0x00A107 02:A0F7: C9 BD     CMP #$BD
C - - - - - 0x00A109 02:A0F9: D0 04     BNE bra_A0FF
- - - - - - 0x00A10B 02:A0FB: A9 01     LDA #$01
- - - - - - 0x00A10D 02:A0FD: 85 01     STA ram_0001
bra_A0FF:
C - - - - - 0x00A10F 02:A0FF: A4 01     LDY ram_0001
C - - - - - 0x00A111 02:A101: 84 3B     STY ram_003B
C - - - - - 0x00A113 02:A103: B9 1B A5  LDA tbl_A51B,Y
C - - - - - 0x00A116 02:A106: F0 41     BEQ bra_A149
C - - - - - 0x00A118 02:A108: C9 FE     CMP #$FE
C - - - - - 0x00A11A 02:A10A: F0 3D     BEQ bra_A149
C - - - - - 0x00A11C 02:A10C: C9 FF     CMP #$FF
C - - - - - 0x00A11E 02:A10E: F0 07     BEQ bra_A117
C - - - - - 0x00A120 02:A110: 15 BE     ORA ram_00BE,X
C - - - - - 0x00A122 02:A112: 95 BE     STA ram_00BE,X
C - - - - - 0x00A124 02:A114: 4C 49 A1  JMP loc_A149
bra_A117:
C - - - - - 0x00A127 02:A117: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00A12A 02:A11A: 29 01     AND #$01
C - - - - - 0x00A12C 02:A11C: D0 2B     BNE bra_A149
C - - - - - 0x00A12E 02:A11E: A5 BB     LDA ram_00BB
C - - - - - 0x00A130 02:A120: D0 27     BNE bra_A149
; player was killed (stages 2 and 4)
C - - - - - 0x00A132 02:A122: A9 20     LDA #$20
C - - - - - 0x00A134 02:A124: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00A137 02:A127: A9 30     LDA #$30
C - - - - - 0x00A139 02:A129: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00A13C 02:A12C: 20 48 A8  JSR sub_A848
C - - - - - 0x00A13F 02:A12F: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A142 02:A132: A8        TAY
C - - - - - 0x00A143 02:A133: A5 75     LDA ram_stage
C - - - - - 0x00A145 02:A135: C9 03     CMP #$03
C - - - - - 0x00A147 02:A137: F0 05     BEQ bra_A13E
C - - - - - 0x00A149 02:A139: B9 30 A5  LDA tbl_A530,Y
C - - - - - 0x00A14C 02:A13C: D0 08     BNE bra_A146    ; jmp
bra_A13E:
C - - - - - 0x00A14E 02:A13E: A9 5B     LDA #con_music_5B
C - - - - - 0x00A150 02:A140: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x00A153 02:A143: B9 34 A5  LDA tbl_A534,Y
bra_A146:
C - - - - - 0x00A156 02:A146: 4C B9 A7  JMP loc_A7B9
bra_A149:
loc_A149:
C D 1 - - - 0x00A159 02:A149: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A15C 02:A14C: A8        TAY
C - - - - - 0x00A15D 02:A14D: D0 05     BNE bra_A154
C - - - - - 0x00A15F 02:A14F: 20 AA A1  JSR sub_A1AA
C - - - - - 0x00A162 02:A152: A8        TAY
C - - - - - 0x00A163 02:A153: C8        INY
bra_A154:
C - - - - - 0x00A164 02:A154: 20 86 A4  JSR sub_A486
C - - - - - 0x00A167 02:A157: A4 01     LDY ram_0001
C - - - - - 0x00A169 02:A159: A5 75     LDA ram_stage
C - - - - - 0x00A16B 02:A15B: C9 01     CMP #$01
C - - - - - 0x00A16D 02:A15D: D0 22     BNE bra_A181
C - - - - - 0x00A16F 02:A15F: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A171 02:A161: 29 03     AND #$03
C - - - - - 0x00A173 02:A163: F0 0C     BEQ bra_A171
C - - - - - 0x00A175 02:A165: C0 08     CPY #$08
C - - - - - 0x00A177 02:A167: F0 31     BEQ bra_A19A
C - - - - - 0x00A179 02:A169: A5 16     LDA ram_0016
C - - - - - 0x00A17B 02:A16B: C9 18     CMP #$18
C - - - - - 0x00A17D 02:A16D: F0 2B     BEQ bra_A19A
- - - - - - 0x00A17F 02:A16F: D0 21     BNE bra_A192    ; jmp
bra_A171:
C - - - - - 0x00A181 02:A171: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A183 02:A173: 29 40     AND #$40
C - - - - - 0x00A185 02:A175: F0 0A     BEQ bra_A181
C - - - - - 0x00A187 02:A177: C0 06     CPY #$06
C - - - - - 0x00A189 02:A179: D0 06     BNE bra_A181
C - - - - - 0x00A18B 02:A17B: A5 16     LDA ram_0016
C - - - - - 0x00A18D 02:A17D: C9 18     CMP #$18
C - - - - - 0x00A18F 02:A17F: F0 11     BEQ bra_A192
bra_A181:
C - - - - - 0x00A191 02:A181: A5 75     LDA ram_stage
C - - - - - 0x00A193 02:A183: C9 03     CMP #$03
C - - - - - 0x00A195 02:A185: D0 06     BNE bra_A18D
C - - - - - 0x00A197 02:A187: A5 00     LDA ram_0000
C - - - - - 0x00A199 02:A189: C9 44     CMP #$44
C - - - - - 0x00A19B 02:A18B: F0 0D     BEQ bra_A19A
bra_A18D:
C - - - - - 0x00A19D 02:A18D: B9 06 A5  LDA tbl_A506,Y
C - - - - - 0x00A1A0 02:A190: D0 08     BNE bra_A19A
bra_A192:
C - - - - - 0x00A1A2 02:A192: A4 18     LDY ram_0018
C - - - - - 0x00A1A4 02:A194: B9 FD A4  LDA tbl_A4FD,Y
C - - - - - 0x00A1A7 02:A197: 20 9D A1  JSR sub_A19D
bra_A19A:
C - - - - - 0x00A1AA 02:A19A: 4C AF A2  JMP loc_A2AF



sub_A19D:
C - - - - - 0x00A1AD 02:A19D: 1D D2 07  ORA ram_07D2_unk,X
C - - - - - 0x00A1B0 02:A1A0: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00A1B3 02:A1A3: 60        RTS



sub_A1A4:
C - - - - - 0x00A1B4 02:A1A4: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A1B7 02:A1A7: 29 40     AND #$40
C - - - - - 0x00A1B9 02:A1A9: 60        RTS



sub_A1AA:
C - - - - - 0x00A1BA 02:A1AA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A1BD 02:A1AD: 29 70     AND #$70
C - - - - - 0x00A1BF 02:A1AF: 4A        LSR
C - - - - - 0x00A1C0 02:A1B0: 4A        LSR
C - - - - - 0x00A1C1 02:A1B1: 4A        LSR
C - - - - - 0x00A1C2 02:A1B2: 4A        LSR
C - - - - - 0x00A1C3 02:A1B3: 60        RTS



loc_A1B4:
C D 1 - - - 0x00A1C4 02:A1B4: A0 00     LDY #$00
C - - - - - 0x00A1C6 02:A1B6: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A1C9 02:A1B9: F0 07     BEQ bra_A1C2
C - - - - - 0x00A1CB 02:A1BB: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00A1CE 02:A1BE: 30 02     BMI bra_A1C2
C - - - - - 0x00A1D0 02:A1C0: A0 03     LDY #$03
bra_A1C2:
C - - - - - 0x00A1D2 02:A1C2: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00A1D5 02:A1C5: C0 06     CPY #$06
C - - - - - 0x00A1D7 02:A1C7: F0 28     BEQ bra_A1F1
C - - - - - 0x00A1D9 02:A1C9: B9 10 A5  LDA tbl_A510,Y
C - - - - - 0x00A1DC 02:A1CC: F0 4A     BEQ bra_A218
C - - - - - 0x00A1DE 02:A1CE: C9 05     CMP #$05
C - - - - - 0x00A1E0 02:A1D0: D0 0E     BNE bra_A1E0
C - - - - - 0x00A1E2 02:A1D2: A5 75     LDA ram_stage
C - - - - - 0x00A1E4 02:A1D4: D0 1B     BNE bra_A1F1
C - - - - - 0x00A1E6 02:A1D6: A5 18     LDA ram_0018
C - - - - - 0x00A1E8 02:A1D8: C9 03     CMP #$03
C - - - - - 0x00A1EA 02:A1DA: D0 15     BNE bra_A1F1
- - - - - - 0x00A1EC 02:A1DC: A9 00     LDA #$00
- - - - - - 0x00A1EE 02:A1DE: F0 38     BEQ bra_A218    ; jmp
bra_A1E0:
C - - - - - 0x00A1F0 02:A1E0: C9 02     CMP #$02
C - - - - - 0x00A1F2 02:A1E2: D0 0D     BNE bra_A1F1
C - - - - - 0x00A1F4 02:A1E4: A5 18     LDA ram_0018
C - - - - - 0x00A1F6 02:A1E6: C9 03     CMP #$03
C - - - - - 0x00A1F8 02:A1E8: D0 07     BNE bra_A1F1
C - - - - - 0x00A1FA 02:A1EA: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00A1FD 02:A1ED: 29 80     AND #$80
C - - - - - 0x00A1FF 02:A1EF: F0 27     BEQ bra_A218
bra_A1F1:
C - - - - - 0x00A201 02:A1F1: B9 25 A5  LDA tbl_A525,Y
C - - - - - 0x00A204 02:A1F4: F0 1E     BEQ bra_A214
C - - - - - 0x00A206 02:A1F6: C9 FF     CMP #$FF
C - - - - - 0x00A208 02:A1F8: F0 17     BEQ bra_A211
C - - - - - 0x00A20A 02:A1FA: 15 BE     ORA ram_00BE,X
C - - - - - 0x00A20C 02:A1FC: 95 BE     STA ram_00BE,X
C - - - - - 0x00A20E 02:A1FE: C0 06     CPY #$06
C - - - - - 0x00A210 02:A200: D0 12     BNE bra_A214
C - - - - - 0x00A212 02:A202: A5 18     LDA ram_0018
C - - - - - 0x00A214 02:A204: C9 03     CMP #$03
C - - - - - 0x00A216 02:A206: F0 13     BEQ bra_A21B
C - - - - - 0x00A218 02:A208: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A21B 02:A20B: D0 0E     BNE bra_A21B
C - - - - - 0x00A21D 02:A20D: A9 08     LDA #$08
C - - - - - 0x00A21F 02:A20F: D0 07     BNE bra_A218    ; jmp
bra_A211:
- - - - - - 0x00A221 02:A211: 20 57 A9  JSR sub_A957
bra_A214:
C - - - - - 0x00A224 02:A214: A4 18     LDY ram_0018
C - - - - - 0x00A226 02:A216: C8        INY
C - - - - - 0x00A227 02:A217: 98        TYA
bra_A218:
C - - - - - 0x00A228 02:A218: 20 9D A1  JSR sub_A19D
bra_A21B:
C - - - - - 0x00A22B 02:A21B: A5 3A     LDA ram_003A
C - - - - - 0x00A22D 02:A21D: 29 08     AND #$08
C - - - - - 0x00A22F 02:A21F: F0 1A     BEQ bra_A23B
C - - - - - 0x00A231 02:A221: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A234 02:A224: C9 04     CMP #$04
C - - - - - 0x00A236 02:A226: 90 04     BCC bra_A22C
C - - - - - 0x00A238 02:A228: C9 06     CMP #$06
C - - - - - 0x00A23A 02:A22A: 90 0F     BCC bra_A23B
bra_A22C:
C - - - - - 0x00A23C 02:A22C: A0 03     LDY #$03
C - - - - - 0x00A23E 02:A22E: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A241 02:A231: F0 1E     BEQ bra_A251
C - - - - - 0x00A243 02:A233: C0 06     CPY #$06
C - - - - - 0x00A245 02:A235: F0 1A     BEQ bra_A251
C - - - - - 0x00A247 02:A237: A9 04     LDA #$04
C - - - - - 0x00A249 02:A239: D0 13     BNE bra_A24E    ; jmp
bra_A23B:
C - - - - - 0x00A24B 02:A23B: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A24E 02:A23E: F0 11     BEQ bra_A251
C - - - - - 0x00A250 02:A240: 20 DC A2  JSR sub_A2DC
C - - - - - 0x00A253 02:A243: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A256 02:A246: F0 06     BEQ bra_A24E
C - - - - - 0x00A258 02:A248: C9 02     CMP #$02
C - - - - - 0x00A25A 02:A24A: F0 05     BEQ bra_A251
C - - - - - 0x00A25C 02:A24C: A9 02     LDA #$02
bra_A24E:
C - - - - - 0x00A25E 02:A24E: 20 9D A1  JSR sub_A19D
bra_A251:
C - - - - - 0x00A261 02:A251: 20 DC A2  JSR sub_A2DC
C - - - - - 0x00A264 02:A254: C8        INY
C - - - - - 0x00A265 02:A255: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A268 02:A258: F0 52     BEQ bra_A2AC
C - - - - - 0x00A26A 02:A25A: C9 05     CMP #$05
C - - - - - 0x00A26C 02:A25C: F0 54     BEQ bra_A2B2
C - - - - - 0x00A26E 02:A25E: C9 02     CMP #$02
C - - - - - 0x00A270 02:A260: F0 4D     BEQ bra_A2AF
bra_A262:
C - - - - - 0x00A272 02:A262: A5 75     LDA ram_stage
C - - - - - 0x00A274 02:A264: C9 04     CMP #$04
C - - - - - 0x00A276 02:A266: F0 16     BEQ bra_A27E
C - - - - - 0x00A278 02:A268: A0 00     LDY #$00
C - - - - - 0x00A27A 02:A26A: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00A27D 02:A26D: C0 05     CPY #$05
C - - - - - 0x00A27F 02:A26F: F0 2F     BEQ bra_A2A0
C - - - - - 0x00A281 02:A271: A5 75     LDA ram_stage
C - - - - - 0x00A283 02:A273: D0 09     BNE bra_A27E
C - - - - - 0x00A285 02:A275: A5 00     LDA ram_0000
C - - - - - 0x00A287 02:A277: 38        SEC
C - - - - - 0x00A288 02:A278: E9 5E     SBC #$5E
C - - - - - 0x00A28A 02:A27A: C9 02     CMP #$02
C - - - - - 0x00A28C 02:A27C: 90 22     BCC bra_A2A0
bra_A27E:
C - - - - - 0x00A28E 02:A27E: A5 3C     LDA ram_003C
C - - - - - 0x00A290 02:A280: 29 0F     AND #$0F
C - - - - - 0x00A292 02:A282: C9 05     CMP #$05
C - - - - - 0x00A294 02:A284: F0 1E     BEQ bra_A2A4
C - - - - - 0x00A296 02:A286: 20 CA A2  JSR sub_A2CA
C - - - - - 0x00A299 02:A289: F0 19     BEQ bra_A2A4
C - - - - - 0x00A29B 02:A28B: C9 02     CMP #$02
C - - - - - 0x00A29D 02:A28D: F0 15     BEQ bra_A2A4
C - - - - - 0x00A29F 02:A28F: A5 75     LDA ram_stage
C - - - - - 0x00A2A1 02:A291: C9 04     CMP #$04
C - - - - - 0x00A2A3 02:A293: D0 06     BNE bra_A29B
C - - - - - 0x00A2A5 02:A295: A5 00     LDA ram_0000
C - - - - - 0x00A2A7 02:A297: C9 5B     CMP #$5B
C - - - - - 0x00A2A9 02:A299: F0 09     BEQ bra_A2A4
bra_A29B:
C - - - - - 0x00A2AB 02:A29B: A9 FE     LDA #$FE
C - - - - - 0x00A2AD 02:A29D: 20 32 B0  JSR sub_B032
bra_A2A0:
C - - - - - 0x00A2B0 02:A2A0: A9 00     LDA #$00
C - - - - - 0x00A2B2 02:A2A2: F0 08     BEQ bra_A2AC    ; jmp
bra_A2A4:
C - - - - - 0x00A2B4 02:A2A4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A2B6 02:A2A6: 29 7F     AND #$7F
C - - - - - 0x00A2B8 02:A2A8: 95 BE     STA ram_00BE,X
C - - - - - 0x00A2BA 02:A2AA: A9 02     LDA #$02
bra_A2AC:
C - - - - - 0x00A2BC 02:A2AC: 20 9D A1  JSR sub_A19D
bra_A2AF:
loc_A2AF:   ; bzk optimize
C D 1 - - - 0x00A2BF 02:A2AF: 4C 7B AE  JMP loc_AE7B
bra_A2B2:
C - - - - - 0x00A2C2 02:A2B2: A5 75     LDA ram_stage
C - - - - - 0x00A2C4 02:A2B4: C9 04     CMP #$04
C - - - - - 0x00A2C6 02:A2B6: D0 F7     BNE bra_A2AF
C - - - - - 0x00A2C8 02:A2B8: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A2CB 02:A2BB: 90 F2     BCC bra_A2AF
C - - - - - 0x00A2CD 02:A2BD: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A2D0 02:A2C0: 29 04     AND #$04
C - - - - - 0x00A2D2 02:A2C2: D0 9E     BNE bra_A262
C - - - - - 0x00A2D4 02:A2C4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00A2D6 02:A2C6: 10 9A     BPL bra_A262
C - - - - - 0x00A2D8 02:A2C8: 30 E5     BMI bra_A2AF    ; jmp



sub_A2CA:
C - - - - - 0x00A2DA 02:A2CA: A0 00     LDY #$00
C - - - - - 0x00A2DC 02:A2CC: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A2DF 02:A2CF: B0 02     BCS bra_A2D3
sub_A2D1:
C - - - - - 0x00A2E1 02:A2D1: A0 03     LDY #$03
bra_A2D3:
C - - - - - 0x00A2E3 02:A2D3: C8        INY
C - - - - - 0x00A2E4 02:A2D4: C8        INY
sub_A2D5:
C - - - - - 0x00A2E5 02:A2D5: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00A2E8 02:A2D8: B9 10 A5  LDA tbl_A510,Y
C - - - - - 0x00A2EB 02:A2DB: 60        RTS



sub_A2DC:
C - - - - - 0x00A2EC 02:A2DC: A0 00     LDY #$00
C - - - - - 0x00A2EE 02:A2DE: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A2F1 02:A2E1: 90 02     BCC bra_A2E5
C - - - - - 0x00A2F3 02:A2E3: A0 03     LDY #$03
bra_A2E5:
C - - - - - 0x00A2F5 02:A2E5: C8        INY
C - - - - - 0x00A2F6 02:A2E6: 60        RTS



sub_A2E7:
C - - - - - 0x00A2F7 02:A2E7: 20 56 A4  JSR sub_A456_decrease_invincibility_timer_after_death
C - - - - - 0x00A2FA 02:A2EA: 90 01     BCC bra_A2ED
C - - - - - 0x00A2FC 02:A2EC: 60        RTS
bra_A2ED:
C - - - - - 0x00A2FD 02:A2ED: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A300 02:A2F0: A8        TAY
C - - - - - 0x00A301 02:A2F1: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A304 02:A2F4: 29 F0     AND #$F0
C - - - - - 0x00A306 02:A2F6: C9 30     CMP #$30
C - - - - - 0x00A308 02:A2F8: 90 08     BCC bra_A302
C - - - - - 0x00A30A 02:A2FA: A9 0E     LDA #con_F3D6_0E
C - - - - - 0x00A30C 02:A2FC: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x00A30F 02:A2FF: 4C 14 A3  JMP loc_A314
bra_A302:
C - - - - - 0x00A312 02:A302: B5 42     LDA ram_btn_hold_1,X
C - - - - - 0x00A314 02:A304: 29 0F     AND #con_btns_Dpad
C - - - - - 0x00A316 02:A306: A8        TAY
C - - - - - 0x00A317 02:A307: 20 38 F3  JSR sub_0x01F348
C - - - - - 0x00A31A 02:A30A: 85 00     STA ram_0000
C - - - - - 0x00A31C 02:A30C: B5 42     LDA ram_btn_hold_1,X
C - - - - - 0x00A31E 02:A30E: 15 40     ORA ram_btn_press_1,X
C - - - - - 0x00A320 02:A310: 29 F0     AND #con_btns_ABSS
C - - - - - 0x00A322 02:A312: 85 01     STA ram_0001
loc_A314:
C D 1 - - - 0x00A324 02:A314: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A327 02:A317: F0 1D     BEQ bra_A336
C - - - - - 0x00A329 02:A319: A5 00     LDA ram_0000
C - - - - - 0x00A32B 02:A31B: 29 0F     AND #$0F
C - - - - - 0x00A32D 02:A31D: D0 08     BNE bra_A327
C - - - - - 0x00A32F 02:A31F: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A332 02:A322: 29 70     AND #$70
C - - - - - 0x00A334 02:A324: 4C 30 A3  JMP loc_A330
bra_A327:
C - - - - - 0x00A337 02:A327: 0A        ASL
C - - - - - 0x00A338 02:A328: 0A        ASL
C - - - - - 0x00A339 02:A329: 0A        ASL
C - - - - - 0x00A33A 02:A32A: 0A        ASL
C - - - - - 0x00A33B 02:A32B: 38        SEC
C - - - - - 0x00A33C 02:A32C: E9 10     SBC #$10
C - - - - - 0x00A33E 02:A32E: 05 00     ORA ram_0000
loc_A330:
C D 1 - - - 0x00A340 02:A330: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A343 02:A333: 4C DB A3  JMP loc_A3DB



bra_A336:
C - - - - - 0x00A346 02:A336: A5 00     LDA ram_0000
C - - - - - 0x00A348 02:A338: 48        PHA
C - - - - - 0x00A349 02:A339: A5 01     LDA ram_0001
C - - - - - 0x00A34B 02:A33B: 48        PHA
C - - - - - 0x00A34C 02:A33C: 29 80     AND #$80
C - - - - - 0x00A34E 02:A33E: F0 1F     BEQ bra_A35F
C - - - - - 0x00A350 02:A340: A0 03     LDY #$03
C - - - - - 0x00A352 02:A342: 20 D5 A2  JSR sub_A2D5
C - - - - - 0x00A355 02:A345: F0 18     BEQ bra_A35F
C - - - - - 0x00A357 02:A347: C9 02     CMP #$02
C - - - - - 0x00A359 02:A349: F0 14     BEQ bra_A35F
C - - - - - 0x00A35B 02:A34B: C9 05     CMP #$05
C - - - - - 0x00A35D 02:A34D: D0 0A     BNE bra_A359
- - - - - - 0x00A35F 02:A34F: A5 75     LDA ram_stage
- - - - - - 0x00A361 02:A351: D0 06     BNE bra_A359
- - - - - - 0x00A363 02:A353: A5 18     LDA ram_0018
- - - - - - 0x00A365 02:A355: C9 03     CMP #$03
- - - - - - 0x00A367 02:A357: F0 06     BEQ bra_A35F
bra_A359:
C - - - - - 0x00A369 02:A359: 68        PLA
C - - - - - 0x00A36A 02:A35A: 29 7F     AND #$7F
C - - - - - 0x00A36C 02:A35C: 4C 60 A3  JMP loc_A360
bra_A35F:
C - - - - - 0x00A36F 02:A35F: 68        PLA
loc_A360:
C D 1 - - - 0x00A370 02:A360: 85 01     STA ram_0001
C - - - - - 0x00A372 02:A362: 68        PLA
C - - - - - 0x00A373 02:A363: 85 00     STA ram_0000
C - - - - - 0x00A375 02:A365: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A378 02:A368: 85 3C     STA ram_003C
C - - - - - 0x00A37A 02:A36A: A4 00     LDY ram_0000
C - - - - - 0x00A37C 02:A36C: B9 ED A4  LDA tbl_A4ED,Y
C - - - - - 0x00A37F 02:A36F: F0 0D     BEQ bra_A37E
C - - - - - 0x00A381 02:A371: 38        SEC
C - - - - - 0x00A382 02:A372: E9 10     SBC #$10
C - - - - - 0x00A384 02:A374: 85 02     STA ram_0002
C - - - - - 0x00A386 02:A376: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A389 02:A379: 05 02     ORA ram_0002
C - - - - - 0x00A38B 02:A37B: 9D AA 07  STA ram_07AA_unk,X
bra_A37E:
C - - - - - 0x00A38E 02:A37E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A391 02:A381: 29 50     AND #$50
C - - - - - 0x00A393 02:A383: 05 00     ORA ram_0000
C - - - - - 0x00A395 02:A385: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A398 02:A388: B5 CD     LDA ram_00CD,X
C - - - - - 0x00A39A 02:A38A: 29 02     AND #$02
C - - - - - 0x00A39C 02:A38C: F0 0E     BEQ bra_A39C
C - - - - - 0x00A39E 02:A38E: A5 01     LDA ram_0001
C - - - - - 0x00A3A0 02:A390: 29 80     AND #$80
C - - - - - 0x00A3A2 02:A392: F0 14     BEQ bra_A3A8
- - - - - - 0x00A3A4 02:A394: B5 CD     LDA ram_00CD,X
- - - - - - 0x00A3A6 02:A396: 29 FD     AND #$FD
- - - - - - 0x00A3A8 02:A398: 95 CD     STA ram_00CD,X
- - - - - - 0x00A3AA 02:A39A: D0 0C     BNE bra_A3A8
bra_A39C:
C - - - - - 0x00A3AC 02:A39C: A5 01     LDA ram_0001
C - - - - - 0x00A3AE 02:A39E: 29 80     AND #$80
C - - - - - 0x00A3B0 02:A3A0: F0 08     BEQ bra_A3AA
C - - - - - 0x00A3B2 02:A3A2: B5 CD     LDA ram_00CD,X
C - - - - - 0x00A3B4 02:A3A4: 29 FD     AND #$FD
C - - - - - 0x00A3B6 02:A3A6: 95 CD     STA ram_00CD,X
bra_A3A8:
C - - - - - 0x00A3B8 02:A3A8: A9 20     LDA #$20
bra_A3AA:
C - - - - - 0x00A3BA 02:A3AA: 1D AA 07  ORA ram_07AA_unk,X
C - - - - - 0x00A3BD 02:A3AD: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A3C0 02:A3B0: 29 40     AND #$40
C - - - - - 0x00A3C2 02:A3B2: D0 27     BNE bra_A3DB
C - - - - - 0x00A3C4 02:A3B4: B5 CD     LDA ram_00CD,X
C - - - - - 0x00A3C6 02:A3B6: 29 02     AND #$02
C - - - - - 0x00A3C8 02:A3B8: D0 16     BNE bra_A3D0
C - - - - - 0x00A3CA 02:A3BA: A5 01     LDA ram_0001
C - - - - - 0x00A3CC 02:A3BC: 29 80     AND #$80
C - - - - - 0x00A3CE 02:A3BE: F0 1B     BEQ bra_A3DB
C - - - - - 0x00A3D0 02:A3C0: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A3D3 02:A3C3: A8        TAY
C - - - - - 0x00A3D4 02:A3C4: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A3D7 02:A3C7: 29 08     AND #$08
C - - - - - 0x00A3D9 02:A3C9: F0 05     BEQ bra_A3D0
C - - - - - 0x00A3DB 02:A3CB: A9 1A     LDA #con_music_1A
C - - - - - 0x00A3DD 02:A3CD: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_A3D0:
C - - - - - 0x00A3E0 02:A3D0: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A3E3 02:A3D3: 09 40     ORA #$40
C - - - - - 0x00A3E5 02:A3D5: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A3E8 02:A3D8: 20 92 A0  JSR sub_A092
bra_A3DB:
loc_A3DB:
C D 1 - - - 0x00A3EB 02:A3DB: A5 01     LDA ram_0001
C - - - - - 0x00A3ED 02:A3DD: 29 40     AND #$40
C - - - - - 0x00A3EF 02:A3DF: F0 0A     BEQ bra_A3EB
C - - - - - 0x00A3F1 02:A3E1: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A3F4 02:A3E4: 09 80     ORA #$80
C - - - - - 0x00A3F6 02:A3E6: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A3F9 02:A3E9: D0 05     BNE bra_A3F0
bra_A3EB:
C - - - - - 0x00A3FB 02:A3EB: A9 00     LDA #$00
C - - - - - 0x00A3FD 02:A3ED: 9D BE 07  STA ram_07BE_unk,X
bra_A3F0:
C - - - - - 0x00A400 02:A3F0: A5 01     LDA ram_0001
C - - - - - 0x00A402 02:A3F2: 29 20     AND #$20
C - - - - - 0x00A404 02:A3F4: F0 71     BEQ bra_A467_RTS
C - - - - - 0x00A406 02:A3F6: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A409 02:A3F9: 85 01     STA ram_0001
C - - - - - 0x00A40B 02:A3FB: B5 B1     LDA ram_current_player,X
C - - - - - 0x00A40D 02:A3FD: 29 F0     AND #$F0
C - - - - - 0x00A40F 02:A3FF: F0 66     BEQ bra_A467_RTS
C - - - - - 0x00A411 02:A401: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x00A414 02:A404: 88        DEY
C - - - - - 0x00A415 02:A405: 84 00     STY ram_0000
C - - - - - 0x00A417 02:A407: B9 F6 A4  LDA tbl_A4F6_bonus,Y
C - - - - - 0x00A41A 02:A40A: D0 0B     BNE bra_A417
- - - - - - 0x00A41C 02:A40C: A4 01     LDY ram_0001
- - - - - - 0x00A41E 02:A40E: B9 7F 00  LDA ram_player_stats,Y
- - - - - - 0x00A421 02:A411: 29 03     AND #$03
- - - - - - 0x00A423 02:A413: F0 52     BEQ bra_A467_RTS
- - - - - - 0x00A425 02:A415: D0 07     BNE bra_A41E    ; jmp
bra_A417:
C - - - - - 0x00A427 02:A417: A4 01     LDY ram_0001
C - - - - - 0x00A429 02:A419: 39 7F 00  AND ram_player_stats,Y
C - - - - - 0x00A42C 02:A41C: D0 49     BNE bra_A467_RTS
bra_A41E:
C - - - - - 0x00A42E 02:A41E: A4 00     LDY ram_0000
C - - - - - 0x00A430 02:A420: B9 F6 A4  LDA tbl_A4F6_bonus,Y
C - - - - - 0x00A433 02:A423: C9 04     CMP #$04
C - - - - - 0x00A435 02:A425: B0 0F     BCS bra_A436
C - - - - - 0x00A437 02:A427: A4 01     LDY ram_0001
C - - - - - 0x00A439 02:A429: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A43C 02:A42C: 29 F0     AND #$F0
C - - - - - 0x00A43E 02:A42E: A4 00     LDY ram_0000
C - - - - - 0x00A440 02:A430: 19 F6 A4  ORA tbl_A4F6_bonus,Y
C - - - - - 0x00A443 02:A433: 4C 40 A4  JMP loc_A440
bra_A436:
C - - - - - 0x00A446 02:A436: A4 01     LDY ram_0001
C - - - - - 0x00A448 02:A438: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A44B 02:A43B: A4 00     LDY ram_0000
C - - - - - 0x00A44D 02:A43D: 19 F6 A4  ORA tbl_A4F6_bonus,Y
loc_A440:
C D 1 - - - 0x00A450 02:A440: A4 01     LDY ram_0001
C - - - - - 0x00A452 02:A442: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x00A455 02:A445: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A458 02:A448: 95 B1     STA ram_current_player,X
C - - - - - 0x00A45A 02:A44A: A9 4E     LDA #con_music_4E
C - - - - - 0x00A45C 02:A44C: 4C CA FE  JMP loc_0x01FEDA_add_music_to_queue



sub_A44F:
C - - - - - 0x00A45F 02:A44F: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A462 02:A452: F0 30     BEQ bra_A484
C - - - - - 0x00A464 02:A454: D0 05     BNE bra_A45B    ; jmp



sub_A456_decrease_invincibility_timer_after_death:
C - - - - - 0x00A466 02:A456: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A469 02:A459: D0 29     BNE bra_A484
bra_A45B:
C - - - - - 0x00A46B 02:A45B: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A46E 02:A45E: 29 C0     AND #$C0
C - - - - - 0x00A470 02:A460: F0 22     BEQ bra_A484
C - - - - - 0x00A472 02:A462: 29 80     AND #$80
C - - - - - 0x00A474 02:A464: F0 02     BEQ bra_A468
bra_A466:
C - - - - - 0x00A476 02:A466: 38        SEC
bra_A467_RTS:
C - - - - - 0x00A477 02:A467: 60        RTS
bra_A468:
C - - - - - 0x00A478 02:A468: 20 DC AC  JSR sub_ACDC
C - - - - - 0x00A47B 02:A46B: A5 23     LDA ram_0023
C - - - - - 0x00A47D 02:A46D: 29 07     AND #$07
C - - - - - 0x00A47F 02:A46F: D0 03     BNE bra_A474
; decrease invincibility timer after death
C - - - - - 0x00A481 02:A471: DE C8 07  DEC ram_07C8_unk,X
bra_A474:
C - - - - - 0x00A484 02:A474: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A487 02:A477: 29 1F     AND #$1F
C - - - - - 0x00A489 02:A479: C9 1C     CMP #$1C
C - - - - - 0x00A48B 02:A47B: B0 E9     BCS bra_A466
C - - - - - 0x00A48D 02:A47D: 29 1F     AND #$1F
C - - - - - 0x00A48F 02:A47F: D0 03     BNE bra_A484
C - - - - - 0x00A491 02:A481: 9D C8 07  STA ram_07C8_unk,X
bra_A484:
C - - - - - 0x00A494 02:A484: 18        CLC
C - - - - - 0x00A495 02:A485: 60        RTS



sub_A486:
C - - - - - 0x00A496 02:A486: 84 18     STY ram_0018
C - - - - - 0x00A498 02:A488: 98        TYA
C - - - - - 0x00A499 02:A489: 18        CLC
C - - - - - 0x00A49A 02:A48A: 69 07     ADC #$07
C - - - - - 0x00A49C 02:A48C: D0 03     BNE bra_A491
sub_A48E:
C - - - - - 0x00A49E 02:A48E: 84 18     STY ram_0018
C - - - - - 0x00A4A0 02:A490: 98        TYA
bra_A491:
C - - - - - 0x00A4A1 02:A491: 0A        ASL
C - - - - - 0x00A4A2 02:A492: A8        TAY
C - - - - - 0x00A4A3 02:A493: B9 CD A4  LDA tbl_A4CD,Y
C - - - - - 0x00A4A6 02:A496: 85 00     STA ram_0000
C - - - - - 0x00A4A8 02:A498: B9 CE A4  LDA tbl_A4CD + $01,Y
C - - - - - 0x00A4AB 02:A49B: 85 01     STA ram_0001
C - - - - - 0x00A4AD 02:A49D: 20 C0 8F  JSR sub_0x008FD0
C - - - - - 0x00A4B0 02:A4A0: A4 18     LDY ram_0018
C - - - - - 0x00A4B2 02:A4A2: 60        RTS



sub_A4A3:
C - - - - - 0x00A4B3 02:A4A3: 20 8E A4  JSR sub_A48E
C - - - - - 0x00A4B6 02:A4A6: A5 75     LDA ram_stage
C - - - - - 0x00A4B8 02:A4A8: C9 02     CMP #$02
C - - - - - 0x00A4BA 02:A4AA: D0 1E     BNE bra_A4CA
C - - - - - 0x00A4BC 02:A4AC: A5 D0     LDA ram_00D0
C - - - - - 0x00A4BE 02:A4AE: F0 0C     BEQ bra_A4BC
C - - - - - 0x00A4C0 02:A4B0: A5 00     LDA ram_0000
C - - - - - 0x00A4C2 02:A4B2: C9 60     CMP #$60
C - - - - - 0x00A4C4 02:A4B4: D0 06     BNE bra_A4BC
C - - - - - 0x00A4C6 02:A4B6: A9 00     LDA #$00
C - - - - - 0x00A4C8 02:A4B8: 85 01     STA ram_0001
C - - - - - 0x00A4CA 02:A4BA: F0 0E     BEQ bra_A4CA    ; jmp
bra_A4BC:
C - - - - - 0x00A4CC 02:A4BC: A5 00     LDA ram_0000
C - - - - - 0x00A4CE 02:A4BE: C9 20     CMP #$20
C - - - - - 0x00A4D0 02:A4C0: D0 08     BNE bra_A4CA
C - - - - - 0x00A4D2 02:A4C2: A5 16     LDA ram_0016
C - - - - - 0x00A4D4 02:A4C4: F0 04     BEQ bra_A4CA
- - - - - - 0x00A4D6 02:A4C6: A9 01     LDA #$01
- - - - - - 0x00A4D8 02:A4C8: 85 01     STA ram_0001
bra_A4CA:
C - - - - - 0x00A4DA 02:A4CA: A4 01     LDY ram_0001
C - - - - - 0x00A4DC 02:A4CC: 60        RTS



tbl_A4CD:
- D 1 - - - 0x00A4DD 02:A4CD: 00        .byte $00, $08   ; 00
- D 1 - - - 0x00A4DF 02:A4CF: 07        .byte $07, $F2   ; 01
- D 1 - - - 0x00A4E1 02:A4D1: 07        .byte $07, $06   ; 02
- D 1 - - - 0x00A4E3 02:A4D3: 00        .byte $00, $F2   ; 03
- D 1 - - - 0x00A4E5 02:A4D5: F9        .byte $F9, $F2   ; 04
- D 1 - - - 0x00A4E7 02:A4D7: F9        .byte $F9, $06   ; 05
- - - - - - 0x00A4E9 02:A4D9: 00        .byte $00, $F8   ; 06
- D 1 - - - 0x00A4EB 02:A4DB: 00        .byte $00, $0A   ; 07
- D 1 - - - 0x00A4ED 02:A4DD: 00        .byte $00, $F9   ; 08
- D 1 - - - 0x00A4EF 02:A4DF: 07        .byte $07, $F9   ; 09
- D 1 - - - 0x00A4F1 02:A4E1: 07        .byte $07, $0A   ; 0A
- D 1 - - - 0x00A4F3 02:A4E3: 07        .byte $07, $14   ; 0B
- D 1 - - - 0x00A4F5 02:A4E5: 00        .byte $00, $14   ; 0C
- D 1 - - - 0x00A4F7 02:A4E7: F9        .byte $F9, $14   ; 0D
- D 1 - - - 0x00A4F9 02:A4E9: F9        .byte $F9, $0A   ; 0E
- D 1 - - - 0x00A4FB 02:A4EB: F9        .byte $F9, $F9   ; 0F



tbl_A4ED:
- D 1 - - - 0x00A4FD 02:A4ED: 00        .byte $00   ; 00
- D 1 - - - 0x00A4FE 02:A4EE: 00        .byte $00   ; 01
- D 1 - - - 0x00A4FF 02:A4EF: 10        .byte $10   ; 02
- D 1 - - - 0x00A500 02:A4F0: 10        .byte $10   ; 03
- D 1 - - - 0x00A501 02:A4F1: 10        .byte $10   ; 04
- D 1 - - - 0x00A502 02:A4F2: 00        .byte $00   ; 05
- D 1 - - - 0x00A503 02:A4F3: 20        .byte $20   ; 06
- D 1 - - - 0x00A504 02:A4F4: 20        .byte $20   ; 07
- D 1 - - - 0x00A505 02:A4F5: 20        .byte $20   ; 08



tbl_A4F6_bonus:
- - - - - - 0x00A506 02:A4F6: 00        .byte $00   ; 01 normal weapon
- D 1 - - - 0x00A507 02:A4F7: 01        .byte $01   ; 02 special weapon 1
- D 1 - - - 0x00A508 02:A4F8: 02        .byte $02   ; 03 special weapon 2
- D 1 - - - 0x00A509 02:A4F9: 04        .byte $04   ; 04 3 bullers
- D 1 - - - 0x00A50A 02:A4FA: 08        .byte $08   ; 05 invincible jump


; bzk garbage?
- - - - - - 0x00A50B 02:A4FB: 00        .byte $00   ; 06
- - - - - - 0x00A50C 02:A4FC: 00        .byte $00   ; 07



tbl_A4FD:
- - - - - - 0x00A50D 02:A4FD: 00        .byte $00   ; 00
- D 1 - - - 0x00A50E 02:A4FE: 01        .byte $01   ; 01
- D 1 - - - 0x00A50F 02:A4FF: 03        .byte $03   ; 02
- D 1 - - - 0x00A510 02:A500: 02        .byte $02   ; 03
- D 1 - - - 0x00A511 02:A501: 03        .byte $03   ; 04
- D 1 - - - 0x00A512 02:A502: 01        .byte $01   ; 05
- D 1 - - - 0x00A513 02:A503: 03        .byte $03   ; 06
- D 1 - - - 0x00A514 02:A504: 02        .byte $02   ; 07
- D 1 - - - 0x00A515 02:A505: 03        .byte $03   ; 08



tbl_A506:
- D 1 - - - 0x00A516 02:A506: 01        .byte $01   ; 00
- D 1 - - - 0x00A517 02:A507: 00        .byte $00   ; 01
- - - - - - 0x00A518 02:A508: 00        .byte $00   ; 02
- - - - - - 0x00A519 02:A509: 00        .byte $00   ; 03
- - - - - - 0x00A51A 02:A50A: 00        .byte $00   ; 04
- - - - - - 0x00A51B 02:A50B: 00        .byte $00   ; 05
- D 1 - - - 0x00A51C 02:A50C: 01        .byte $01   ; 06
- D 1 - - - 0x00A51D 02:A50D: 01        .byte $01   ; 07
- D 1 - - - 0x00A51E 02:A50E: 01        .byte $01   ; 08
- D 1 - - - 0x00A51F 02:A50F: 00        .byte $00   ; 09



tbl_A510:
- D 1 - - - 0x00A520 02:A510: 00        .byte $00   ; 00
- D 1 - - - 0x00A521 02:A511: 01        .byte $01   ; 01
- D 1 - - - 0x00A522 02:A512: 02        .byte $02   ; 02
- D 1 - - - 0x00A523 02:A513: 03        .byte $03   ; 03
- - - - - - 0x00A524 02:A514: 04        .byte $04   ; 04
- D 1 - - - 0x00A525 02:A515: 05        .byte $05   ; 05
- D 1 - - - 0x00A526 02:A516: 00        .byte $00   ; 06
- - - - - - 0x00A527 02:A517: 07        .byte $07   ; 07
- - - - - - 0x00A528 02:A518: 08        .byte $08   ; 08
- D 1 - - - 0x00A529 02:A519: 09        .byte $09   ; 09
- - - - - - 0x00A52A 02:A51A: 0A        .byte $0A   ; 0A



tbl_A51B:
- D 1 - - - 0x00A52B 02:A51B: FF        .byte $FF   ; 00
- D 1 - - - 0x00A52C 02:A51C: FE        .byte $FE   ; 01
- - - - - - 0x00A52D 02:A51D: 00        .byte $00   ; 02
- - - - - - 0x00A52E 02:A51E: 04        .byte $04   ; 03
- - - - - - 0x00A52F 02:A51F: FF        .byte $FF   ; 04
- - - - - - 0x00A530 02:A520: 00        .byte $00   ; 05
- D 1 - - - 0x00A531 02:A521: 00        .byte $00   ; 06
- D 1 - - - 0x00A532 02:A522: 08        .byte $08   ; 07
- D 1 - - - 0x00A533 02:A523: 40        .byte $40   ; 08
- - - - - - 0x00A534 02:A524: 00        .byte $00   ; 09



tbl_A525:
- - - - - - 0x00A535 02:A525: 00        .byte $00   ; 00
- D 1 - - - 0x00A536 02:A526: 00        .byte $00   ; 01
- D 1 - - - 0x00A537 02:A527: 00        .byte $00   ; 02
- D 1 - - - 0x00A538 02:A528: 04        .byte $04   ; 03
- - - - - - 0x00A539 02:A529: FF        .byte $FF   ; 04
- D 1 - - - 0x00A53A 02:A52A: 80        .byte $80   ; 05
- D 1 - - - 0x00A53B 02:A52B: 20        .byte $20   ; 06
- - - - - - 0x00A53C 02:A52C: 08        .byte $08   ; 07
- - - - - - 0x00A53D 02:A52D: 00        .byte $00   ; 08
- D 1 - - - 0x00A53E 02:A52E: 00        .byte $00   ; 09
- - - - - - 0x00A53F 02:A52F: 00        .byte $00   ; 0A



tbl_A530:
- D 1 - - - 0x00A540 02:A530: 1D        .byte $1D   ; 00
- - - - - - 0x00A541 02:A531: 3A        .byte $3A   ; 01
- - - - - - 0x00A542 02:A532: 19        .byte $19   ; 02
- - - - - - 0x00A543 02:A533: 3B        .byte $3B   ; 03



tbl_A534:
- D 1 - - - 0x00A544 02:A534: 3B        .byte $3B   ; 00
- D 1 - - - 0x00A545 02:A535: 3C        .byte $3C   ; 01
- - - - - - 0x00A546 02:A536: 1A        .byte $1A   ; 02
- - - - - - 0x00A547 02:A537: 3C        .byte $3C   ; 03



loc_0x00A548:
ofs_006_0x00A548_13:
C D 1 - - - 0x00A548 02:A538: 8A        TXA
C - - - - - 0x00A549 02:A539: 25 74     AND ram_0074
C - - - - - 0x00A54B 02:A53B: D0 2D     BNE bra_A56A_RTS
C - - - - - 0x00A54D 02:A53D: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A550 02:A540: A8        TAY
C - - - - - 0x00A551 02:A541: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A554 02:A544: C9 30     CMP #$30
C - - - - - 0x00A556 02:A546: 90 1B     BCC bra_A563
C - - - - - 0x00A558 02:A548: AD 69 03  LDA ram_0369
C - - - - - 0x00A55B 02:A54B: 0D 6B 03  ORA ram_036B
C - - - - - 0x00A55E 02:A54E: D0 03     BNE bra_A553
C - - - - - 0x00A560 02:A550: 4C BE AC  JMP loc_ACBE
bra_A553:
C - - - - - 0x00A563 02:A553: CE 6B 03  DEC ram_036B
C - - - - - 0x00A566 02:A556: 10 0B     BPL bra_A563
C - - - - - 0x00A568 02:A558: A9 3E     LDA #$3E
C - - - - - 0x00A56A 02:A55A: 8D 6B 03  STA ram_036B
C - - - - - 0x00A56D 02:A55D: CE 69 03  DEC ram_0369
C - - - - - 0x00A570 02:A560: 20 C1 F6  JSR sub_0x01F6D1
bra_A563:
C - - - - - 0x00A573 02:A563: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A576 02:A566: 29 20     AND #$20
C - - - - - 0x00A578 02:A568: F0 01     BEQ bra_A56B
bra_A56A_RTS:
C - - - - - 0x00A57A 02:A56A: 60        RTS
bra_A56B:
C - - - - - 0x00A57B 02:A56B: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A57E 02:A56E: F0 0B     BEQ bra_A57B
C - - - - - 0x00A580 02:A570: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A583 02:A573: C9 09     CMP #$09
C - - - - - 0x00A585 02:A575: 90 0F     BCC bra_A586
C - - - - - 0x00A587 02:A577: C9 CF     CMP #$CF
C - - - - - 0x00A589 02:A579: B0 0B     BCS bra_A586
bra_A57B:
C - - - - - 0x00A58B 02:A57B: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00A58E 02:A57E: 29 F8     AND #$F8
C - - - - - 0x00A590 02:A580: F0 04     BEQ bra_A586
C - - - - - 0x00A592 02:A582: C9 F8     CMP #$F8
C - - - - - 0x00A594 02:A584: D0 10     BNE bra_A596
bra_A586:
C - - - - - 0x00A596 02:A586: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A599 02:A589: A8        TAY
C - - - - - 0x00A59A 02:A58A: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A59D 02:A58D: 29 F0     AND #$F0
C - - - - - 0x00A59F 02:A58F: C9 30     CMP #$30
C - - - - - 0x00A5A1 02:A591: 90 03     BCC bra_A596
C - - - - - 0x00A5A3 02:A593: 4C BE AC  JMP loc_ACBE
bra_A596:
C - - - - - 0x00A5A6 02:A596: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00A5A9 02:A599: 29 FC     AND #$FC
C - - - - - 0x00A5AB 02:A59B: 4A        LSR
C - - - - - 0x00A5AC 02:A59C: 4A        LSR
C - - - - - 0x00A5AD 02:A59D: 85 1D     STA ram_001D
C - - - - - 0x00A5AF 02:A59F: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x00A5B2 02:A5A2: 29 03     AND #$03
C - - - - - 0x00A5B4 02:A5A4: 4A        LSR
C - - - - - 0x00A5B5 02:A5A5: 6A        ROR
C - - - - - 0x00A5B6 02:A5A6: 6A        ROR
C - - - - - 0x00A5B7 02:A5A7: 05 1D     ORA ram_001D
C - - - - - 0x00A5B9 02:A5A9: 85 1D     STA ram_001D
C - - - - - 0x00A5BB 02:A5AB: F0 09     BEQ bra_A5B6
C - - - - - 0x00A5BD 02:A5AD: A0 02     LDY #$02
C - - - - - 0x00A5BF 02:A5AF: 84 1C     STY ram_001C
C - - - - - 0x00A5C1 02:A5B1: 20 8B A8  JSR sub_A88B
C - - - - - 0x00A5C4 02:A5B4: B0 17     BCS bra_A5CD
bra_A5B6:
C - - - - - 0x00A5C6 02:A5B6: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A5C9 02:A5B9: D0 12     BNE bra_A5CD
C - - - - - 0x00A5CB 02:A5BB: BD 62 07  LDA ram_0762_obj,X
C - - - - - 0x00A5CE 02:A5BE: 29 3C     AND #$3C
C - - - - - 0x00A5D0 02:A5C0: 4A        LSR
C - - - - - 0x00A5D1 02:A5C1: 4A        LSR
C - - - - - 0x00A5D2 02:A5C2: 85 1D     STA ram_001D
C - - - - - 0x00A5D4 02:A5C4: F0 07     BEQ bra_A5CD
C - - - - - 0x00A5D6 02:A5C6: A0 12     LDY #$12
C - - - - - 0x00A5D8 02:A5C8: 85 1C     STA ram_001C
C - - - - - 0x00A5DA 02:A5CA: 20 8B A8  JSR sub_A88B
bra_A5CD:
C - - - - - 0x00A5DD 02:A5CD: A9 00     LDA #$00
C - - - - - 0x00A5DF 02:A5CF: 9D 36 07  STA ram_0736_obj,X
C - - - - - 0x00A5E2 02:A5D2: 9D 4C 07  STA ram_074C_obj,X
C - - - - - 0x00A5E5 02:A5D5: 9D 62 07  STA ram_0762_obj,X
C - - - - - 0x00A5E8 02:A5D8: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A5EB 02:A5DB: D0 33     BNE bra_A610
C - - - - - 0x00A5ED 02:A5DD: A5 D0     LDA ram_00D0
C - - - - - 0x00A5EF 02:A5DF: C9 08     CMP #$08
C - - - - - 0x00A5F1 02:A5E1: D0 0E     BNE bra_A5F1
C - - - - - 0x00A5F3 02:A5E3: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A5F6 02:A5E6: C9 18     CMP #$18
C - - - - - 0x00A5F8 02:A5E8: B0 07     BCS bra_A5F1
- - - - - - 0x00A5FA 02:A5EA: A9 FF     LDA #$FF
- - - - - - 0x00A5FC 02:A5EC: 9D B4 07  STA ram_07B4_unk,X
- - - - - - 0x00A5FF 02:A5EF: D0 07     BNE bra_A5F8    ; jmp
bra_A5F1:
C - - - - - 0x00A601 02:A5F1: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A604 02:A5F4: C9 D0     CMP #$D0
C - - - - - 0x00A606 02:A5F6: 90 18     BCC bra_A610
bra_A5F8:
C - - - - - 0x00A608 02:A5F8: A9 5F     LDA #con_music_5F
C - - - - - 0x00A60A 02:A5FA: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
; set invincibility timer after falling into a pit
C - - - - - 0x00A60D 02:A5FD: A9 7F     LDA #$7F
C - - - - - 0x00A60F 02:A5FF: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00A612 02:A602: A9 00     LDA #$00
C - - - - - 0x00A614 02:A604: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A617 02:A607: 4C 84 AC  JMP loc_AC84



sub_A60A:
C - - - - - 0x00A61A 02:A60A: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A61D 02:A60D: 29 80     AND #$80
C - - - - - 0x00A61F 02:A60F: 60        RTS
bra_A610:
C - - - - - 0x00A620 02:A610: 20 5A AD  JSR sub_AD5A
C - - - - - 0x00A623 02:A613: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A626 02:A616: F0 07     BEQ bra_A61F
C - - - - - 0x00A628 02:A618: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A62B 02:A61B: F0 1F     BEQ bra_A63C
C - - - - - 0x00A62D 02:A61D: D0 05     BNE bra_A624    ; jmp
bra_A61F:
C - - - - - 0x00A62F 02:A61F: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A632 02:A622: F0 06     BEQ bra_A62A
bra_A624:
C - - - - - 0x00A634 02:A624: 20 42 AB  JSR sub_AB42
C - - - - - 0x00A637 02:A627: 4C 3C A6  JMP loc_A63C
bra_A62A:
C - - - - - 0x00A63A 02:A62A: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A63D 02:A62D: 29 09     AND #$09
C - - - - - 0x00A63F 02:A62F: D0 0B     BNE bra_A63C
C - - - - - 0x00A641 02:A631: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A644 02:A634: 09 60     ORA #$60
C - - - - - 0x00A646 02:A636: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A649 02:A639: 20 96 A0  JSR sub_A096
bra_A63C:
loc_A63C:
C D 1 - - - 0x00A64C 02:A63C: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A64F 02:A63F: D0 65     BNE bra_A6A6
C - - - - - 0x00A651 02:A641: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A654 02:A644: 10 60     BPL bra_A6A6
C - - - - - 0x00A656 02:A646: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00A659 02:A649: F0 1B     BEQ bra_A666
C - - - - - 0x00A65B 02:A64B: C9 08     CMP #$08
C - - - - - 0x00A65D 02:A64D: B0 05     BCS bra_A654
C - - - - - 0x00A65F 02:A64F: FE BE 07  INC ram_07BE_unk,X
C - - - - - 0x00A662 02:A652: D0 57     BNE bra_A6AB
bra_A654:
C - - - - - 0x00A664 02:A654: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A667 02:A657: D0 52     BNE bra_A6AB
C - - - - - 0x00A669 02:A659: A8        TAY
C - - - - - 0x00A66A 02:A65A: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A66D 02:A65D: 29 02     AND #$02
C - - - - - 0x00A66F 02:A65F: F0 4A     BEQ bra_A6AB
C - - - - - 0x00A671 02:A661: A9 00     LDA #$00
C - - - - - 0x00A673 02:A663: 9D BE 07  STA ram_07BE_unk,X
bra_A666:
C - - - - - 0x00A676 02:A666: FE BE 07  INC ram_07BE_unk,X
C - - - - - 0x00A679 02:A669: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A67C 02:A66C: 85 00     STA ram_0000
C - - - - - 0x00A67E 02:A66E: A8        TAY
C - - - - - 0x00A67F 02:A66F: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A682 02:A672: 29 04     AND #$04
C - - - - - 0x00A684 02:A674: F0 04     BEQ bra_A67A
C - - - - - 0x00A686 02:A676: A9 02     LDA #$02
C - - - - - 0x00A688 02:A678: D0 02     BNE bra_A67C    ; jmp
bra_A67A:
C - - - - - 0x00A68A 02:A67A: A9 01     LDA #$01
bra_A67C:
C - - - - - 0x00A68C 02:A67C: D5 83     CMP ram_bullet_counter,X
C - - - - - 0x00A68E 02:A67E: 90 2B     BCC bra_A6AB
C - - - - - 0x00A690 02:A680: 06 00     ASL ram_0000
C - - - - - 0x00A692 02:A682: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A695 02:A685: A8        TAY
C - - - - - 0x00A696 02:A686: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A699 02:A689: A0 00     LDY #$00
C - - - - - 0x00A69B 02:A68B: 29 03     AND #$03
C - - - - - 0x00A69D 02:A68D: F0 0D     BEQ bra_A69C_no_special_weapon
bra_A68F_loop:
C - - - - - 0x00A69F 02:A68F: C8        INY
C - - - - - 0x00A6A0 02:A690: 4A        LSR
C - - - - - 0x00A6A1 02:A691: 90 FC     BCC bra_A68F_loop
C - - - - - 0x00A6A3 02:A693: 88        DEY
C - - - - - 0x00A6A4 02:A694: 98        TYA
C - - - - - 0x00A6A5 02:A695: 18        CLC
C - - - - - 0x00A6A6 02:A696: 65 00     ADC ram_0000
C - - - - - 0x00A6A8 02:A698: A8        TAY
C - - - - - 0x00A6A9 02:A699: B9 3A AB  LDA tbl_AB3A,Y
bra_A69C_no_special_weapon:
C - - - - - 0x00A6AC 02:A69C: A8        TAY
C - - - - - 0x00A6AD 02:A69D: 20 F6 AC  JSR sub_ACF6
C - - - - - 0x00A6B0 02:A6A0: 20 5C 84  JSR sub_0x00846C
C - - - - - 0x00A6B3 02:A6A3: 4C AB A6  JMP loc_A6AB
bra_A6A6:
C - - - - - 0x00A6B6 02:A6A6: A9 00     LDA #$00
C - - - - - 0x00A6B8 02:A6A8: 9D BE 07  STA ram_07BE_unk,X
bra_A6AB:
loc_A6AB:
C D 1 - - - 0x00A6BB 02:A6AB: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A6BE 02:A6AE: 29 C0     AND #$C0
C - - - - - 0x00A6C0 02:A6B0: F0 15     BEQ bra_A6C7
C - - - - - 0x00A6C2 02:A6B2: 30 13     BMI bra_A6C7
C - - - - - 0x00A6C4 02:A6B4: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A6C7 02:A6B7: 29 1F     AND #$1F
C - - - - - 0x00A6C9 02:A6B9: C9 1C     CMP #$1C
C - - - - - 0x00A6CB 02:A6BB: B0 09     BCS bra_A6C6_RTS
C - - - - - 0x00A6CD 02:A6BD: A5 23     LDA ram_0023
C - - - - - 0x00A6CF 02:A6BF: 29 03     AND #$03
C - - - - - 0x00A6D1 02:A6C1: D0 04     BNE bra_A6C7
C - - - - - 0x00A6D3 02:A6C3: 9D 1A 06  STA ram_obj_animation_lo,X
bra_A6C6_RTS:
C - - - - - 0x00A6D6 02:A6C6: 60        RTS
bra_A6C7:
loc_A6C7:
C D 1 - - - 0x00A6D7 02:A6C7: 20 48 A8  JSR sub_A848
C - - - - - 0x00A6DA 02:A6CA: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A6DD 02:A6CD: F0 02     BEQ bra_A6D1
C - - - - - 0x00A6DF 02:A6CF: A9 04     LDA #$04
bra_A6D1:   ; A = 00
C - - - - - 0x00A6E1 02:A6D1: 85 02     STA ram_0002
ofs_006_0x00A6E3_18:
C - - - - - 0x00A6E3 02:A6D3: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A6E6 02:A6D6: 18        CLC
C - - - - - 0x00A6E7 02:A6D7: 65 02     ADC ram_0002
C - - - - - 0x00A6E9 02:A6D9: 0A        ASL
C - - - - - 0x00A6EA 02:A6DA: A8        TAY
C - - - - - 0x00A6EB 02:A6DB: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A6EE 02:A6DE: F0 02     BEQ bra_A6E2
C - - - - - 0x00A6F0 02:A6E0: A9 10     LDA #$10
bra_A6E2:   ; A = 00
C - - - - - 0x00A6F2 02:A6E2: 85 01     STA ram_0001
C - - - - - 0x00A6F4 02:A6E4: B9 9D A9  LDA tbl_A99D,Y
C - - - - - 0x00A6F7 02:A6E7: 85 02     STA ram_0002
C - - - - - 0x00A6F9 02:A6E9: B9 9E A9  LDA tbl_A99D + $01,Y
C - - - - - 0x00A6FC 02:A6EC: 85 03     STA ram_0003
C - - - - - 0x00A6FE 02:A6EE: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A701 02:A6F1: D0 0A     BNE bra_A6FD
C - - - - - 0x00A703 02:A6F3: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A706 02:A6F6: D0 08     BNE bra_A700
C - - - - - 0x00A708 02:A6F8: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A70B 02:A6FB: F0 03     BEQ bra_A700
bra_A6FD:
C - - - - - 0x00A70D 02:A6FD: 4C 7C A7  JMP loc_A77C
bra_A700:
C - - - - - 0x00A710 02:A700: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A713 02:A703: D0 34     BNE bra_A739
C - - - - - 0x00A715 02:A705: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A718 02:A708: 29 0A     AND #$0A
C - - - - - 0x00A71A 02:A70A: F0 1A     BEQ bra_A726
C - - - - - 0x00A71C 02:A70C: 29 08     AND #$08
C - - - - - 0x00A71E 02:A70E: F0 16     BEQ bra_A726
C - - - - - 0x00A720 02:A710: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A723 02:A713: F0 02     BEQ bra_A717
C - - - - - 0x00A725 02:A715: A9 01     LDA #$01
bra_A717:   ; A = 00
C - - - - - 0x00A727 02:A717: 85 00     STA ram_0000
C - - - - - 0x00A729 02:A719: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A72C 02:A71C: 0A        ASL
C - - - - - 0x00A72D 02:A71D: 05 00     ORA ram_0000
C - - - - - 0x00A72F 02:A71F: A8        TAY
C - - - - - 0x00A730 02:A720: B9 40 A8  LDA tbl_A840,Y
C - - - - - 0x00A733 02:A723: 4C B9 A7  JMP loc_A7B9
bra_A726:
C - - - - - 0x00A736 02:A726: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A739 02:A729: 85 00     STA ram_0000
C - - - - - 0x00A73B 02:A72B: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A73E 02:A72E: 29 10     AND #$10
C - - - - - 0x00A740 02:A730: F0 16     BEQ bra_A748
C - - - - - 0x00A742 02:A732: A9 09     LDA #$09
C - - - - - 0x00A744 02:A734: 18        CLC
C - - - - - 0x00A745 02:A735: 65 00     ADC ram_0000
C - - - - - 0x00A747 02:A737: D0 0D     BNE bra_A746
bra_A739:
C - - - - - 0x00A749 02:A739: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A74C 02:A73C: D0 08     BNE bra_A746
C - - - - - 0x00A74E 02:A73E: 20 AA A1  JSR sub_A1AA
C - - - - - 0x00A751 02:A741: 18        CLC
C - - - - - 0x00A752 02:A742: 69 0A     ADC #$0A
C - - - - - 0x00A754 02:A744: A8        TAY
C - - - - - 0x00A755 02:A745: 98        TYA
bra_A746:
C - - - - - 0x00A756 02:A746: 85 00     STA ram_0000
bra_A748:
C - - - - - 0x00A758 02:A748: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A75B 02:A74B: A8        TAY
C - - - - - 0x00A75C 02:A74C: 0A        ASL
C - - - - - 0x00A75D 02:A74D: 0A        ASL
C - - - - - 0x00A75E 02:A74E: 05 01     ORA ram_0001
C - - - - - 0x00A760 02:A750: 85 01     STA ram_0001
C - - - - - 0x00A762 02:A752: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A765 02:A755: 29 03     AND #$03
C - - - - - 0x00A767 02:A757: 05 01     ORA ram_0001
C - - - - - 0x00A769 02:A759: 29 0F     AND #$0F
C - - - - - 0x00A76B 02:A75B: A8        TAY
C - - - - - 0x00A76C 02:A75C: A9 00     LDA #$00
C - - - - - 0x00A76E 02:A75E: C0 0D     CPY #$0D
C - - - - - 0x00A770 02:A760: 90 02     BCC bra_A764
C - - - - - 0x00A772 02:A762: A9 24     LDA #$24
bra_A764:
C - - - - - 0x00A774 02:A764: 18        CLC
C - - - - - 0x00A775 02:A765: 65 00     ADC ram_0000
C - - - - - 0x00A777 02:A767: 85 00     STA ram_0000
C - - - - - 0x00A779 02:A769: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A77C 02:A76C: 10 07     BPL bra_A775
C - - - - - 0x00A77E 02:A76E: A9 12     LDA #$12
C - - - - - 0x00A780 02:A770: 18        CLC
C - - - - - 0x00A781 02:A771: 65 00     ADC ram_0000
C - - - - - 0x00A783 02:A773: 85 00     STA ram_0000
bra_A775:
C - - - - - 0x00A785 02:A775: A4 00     LDY ram_0000
C - - - - - 0x00A787 02:A777: B1 02     LDA (ram_0002),Y
C - - - - - 0x00A789 02:A779: 4C B9 A7  JMP loc_A7B9



loc_A77C:
C D 1 - - - 0x00A78C 02:A77C: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A78F 02:A77F: A8        TAY
C - - - - - 0x00A790 02:A780: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A793 02:A783: F0 31     BEQ bra_A7B6
C - - - - - 0x00A795 02:A785: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A798 02:A788: F0 1D     BEQ bra_A7A7
C - - - - - 0x00A79A 02:A78A: 84 00     STY ram_0000
C - - - - - 0x00A79C 02:A78C: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A79F 02:A78F: 4A        LSR
C - - - - - 0x00A7A0 02:A790: 4A        LSR
C - - - - - 0x00A7A1 02:A791: 4A        LSR
C - - - - - 0x00A7A2 02:A792: 4A        LSR
C - - - - - 0x00A7A3 02:A793: A8        TAY
C - - - - - 0x00A7A4 02:A794: B9 23 A8  LDA tbl_A823,Y
C - - - - - 0x00A7A7 02:A797: F0 07     BEQ bra_A7A0
C - - - - - 0x00A7A9 02:A799: A4 00     LDY ram_0000
C - - - - - 0x00A7AB 02:A79B: B9 38 A8  LDA tbl_A838,Y
C - - - - - 0x00A7AE 02:A79E: D0 19     BNE bra_A7B9    ; jmp
bra_A7A0:
C - - - - - 0x00A7B0 02:A7A0: A4 00     LDY ram_0000
C - - - - - 0x00A7B2 02:A7A2: B9 30 A8  LDA tbl_A830,Y
C - - - - - 0x00A7B5 02:A7A5: D0 12     BNE bra_A7B9    ; jmp
bra_A7A7:
C - - - - - 0x00A7B7 02:A7A7: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A7BA 02:A7AA: 90 05     BCC bra_A7B1
C - - - - - 0x00A7BC 02:A7AC: B9 3C A8  LDA tbl_A83C,Y
C - - - - - 0x00A7BF 02:A7AF: D0 08     BNE bra_A7B9    ; jmp
bra_A7B1:
C - - - - - 0x00A7C1 02:A7B1: B9 34 A8  LDA tbl_A834,Y
C - - - - - 0x00A7C4 02:A7B4: D0 03     BNE bra_A7B9    ; jmp
bra_A7B6:
C - - - - - 0x00A7C6 02:A7B6: B9 2C A8  LDA tbl_A82C,Y
bra_A7B9:
loc_A7B9:
sub_A7B9:
C D 1 - - - 0x00A7C9 02:A7B9: DD 0A 07  CMP ram_070A_obj,X
C - - - - - 0x00A7CC 02:A7BC: F0 29     BEQ bra_A7E7
C - - - - - 0x00A7CE 02:A7BE: 48        PHA
C - - - - - 0x00A7CF 02:A7BF: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00A7D2 02:A7C2: 29 3C     AND #$3C
C - - - - - 0x00A7D4 02:A7C4: 4A        LSR
C - - - - - 0x00A7D5 02:A7C5: 4A        LSR
C - - - - - 0x00A7D6 02:A7C6: A8        TAY
C - - - - - 0x00A7D7 02:A7C7: 68        PLA
C - - - - - 0x00A7D8 02:A7C8: 20 62 97  JSR sub_0x009772
C - - - - - 0x00A7DB 02:A7CB: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A7DE 02:A7CE: D0 0E     BNE bra_A7DE
C - - - - - 0x00A7E0 02:A7D0: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A7E3 02:A7D3: D0 09     BNE bra_A7DE
C - - - - - 0x00A7E5 02:A7D5: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A7E8 02:A7D8: D0 08     BNE bra_A7E2
C - - - - - 0x00A7EA 02:A7DA: A9 0C     LDA #$0C
C - - - - - 0x00A7EC 02:A7DC: D0 06     BNE bra_A7E4    ; jmp
bra_A7DE:
C - - - - - 0x00A7EE 02:A7DE: A9 06     LDA #$06
C - - - - - 0x00A7F0 02:A7E0: D0 02     BNE bra_A7E4    ; jmp
bra_A7E2:
C - - - - - 0x00A7F2 02:A7E2: A9 13     LDA #$13
bra_A7E4:
C - - - - - 0x00A7F4 02:A7E4: 9D 20 07  STA ram_0720_obj,X
bra_A7E7:
C - - - - - 0x00A7F7 02:A7E7: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A7FA 02:A7EA: D0 36     BNE bra_A822_RTS
C - - - - - 0x00A7FC 02:A7EC: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A7FF 02:A7EF: 29 09     AND #$09
C - - - - - 0x00A801 02:A7F1: F0 2F     BEQ bra_A822_RTS
C - - - - - 0x00A803 02:A7F3: 29 08     AND #$08
C - - - - - 0x00A805 02:A7F5: D0 2B     BNE bra_A822_RTS
C - - - - - 0x00A807 02:A7F7: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00A80A 02:A7FA: D0 15     BNE bra_A811
C - - - - - 0x00A80C 02:A7FC: A5 3C     LDA ram_003C
C - - - - - 0x00A80E 02:A7FE: 29 4F     AND #$4F
C - - - - - 0x00A810 02:A800: C9 05     CMP #$05
C - - - - - 0x00A812 02:A802: F0 1E     BEQ bra_A822_RTS
C - - - - - 0x00A814 02:A804: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A817 02:A807: D0 19     BNE bra_A822_RTS
C - - - - - 0x00A819 02:A809: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A81C 02:A80C: 18        CLC
C - - - - - 0x00A81D 02:A80D: 69 04     ADC #$04
C - - - - - 0x00A81F 02:A80F: D0 0E     BNE bra_A81F
bra_A811:
C - - - - - 0x00A821 02:A811: A5 3C     LDA ram_003C
C - - - - - 0x00A823 02:A813: 29 0F     AND #$0F
C - - - - - 0x00A825 02:A815: C9 05     CMP #$05
C - - - - - 0x00A827 02:A817: D0 09     BNE bra_A822_RTS
C - - - - - 0x00A829 02:A819: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00A82C 02:A81C: 38        SEC
C - - - - - 0x00A82D 02:A81D: E9 04     SBC #$04
bra_A81F:
C - - - - - 0x00A82F 02:A81F: 9D 68 06  STA ram_obj_pos_Y,X
bra_A822_RTS:
C - - - - - 0x00A832 02:A822: 60        RTS



tbl_A823:
- D 1 - - - 0x00A833 02:A823: 01        .byte $01   ; 00
- D 1 - - - 0x00A834 02:A824: 01        .byte $01   ; 10
- D 1 - - - 0x00A835 02:A825: 01        .byte $01   ; 20
- - - - - - 0x00A836 02:A826: 01        .byte $01   ; 30
- D 1 - - - 0x00A837 02:A827: 00        .byte $00   ; 40
- - - - - - 0x00A838 02:A828: 00        .byte $00   ; 50
- D 1 - - - 0x00A839 02:A829: 00        .byte $00   ; 60
- - - - - - 0x00A83A 02:A82A: 00        .byte $00   ; 70
- - - - - - 0x00A83B 02:A82B: 01        .byte $01   ; 80



tbl_A82C:
- D 1 - - - 0x00A83C 02:A82C: 17        .byte $17   ; 00
- D 1 - - - 0x00A83D 02:A82D: 2E        .byte $2E   ; 01
- D 1 - - - 0x00A83E 02:A82E: 45        .byte $45   ; 02
- D 1 - - - 0x00A83F 02:A82F: 62        .byte $62   ; 03



tbl_A830:
- - - - - - 0x00A840 02:A830: 1B        .byte $1B   ; 00
- D 1 - - - 0x00A841 02:A831: 38        .byte $38   ; 01
- - - - - - 0x00A842 02:A832: 1D        .byte $1D   ; 02
- D 1 - - - 0x00A843 02:A833: 39        .byte $39   ; 03



tbl_A834:
- - - - - - 0x00A844 02:A834: 1A        .byte $1A   ; 00
- D 1 - - - 0x00A845 02:A835: 31        .byte $31   ; 01
- - - - - - 0x00A846 02:A836: 4A        .byte $4A   ; 02
- - - - - - 0x00A847 02:A837: 67        .byte $67   ; 03



tbl_A838:
- - - - - - 0x00A848 02:A838: 19        .byte $19   ; 00
- D 1 - - - 0x00A849 02:A839: 36        .byte $36   ; 01
- - - - - - 0x00A84A 02:A83A: 1B        .byte $1B   ; 02
- - - - - - 0x00A84B 02:A83B: 37        .byte $37   ; 03



tbl_A83C:
- D 1 - - - 0x00A84C 02:A83C: 18        .byte $18   ; 00
- - - - - - 0x00A84D 02:A83D: 2F        .byte $2F   ; 01
- D 1 - - - 0x00A84E 02:A83E: 48        .byte $48   ; 02
- D 1 - - - 0x00A84F 02:A83F: 65        .byte $65   ; 03



tbl_A840:
; 00
- - - - - - 0x00A850 02:A840: 1D        .byte $1D   ; 
- - - - - - 0x00A851 02:A841: 1C        .byte $1C   ; 
; 01
- D 1 - - - 0x00A852 02:A842: 34        .byte $34   ; 
- D 1 - - - 0x00A853 02:A843: 33        .byte $33   ; 
; 02
- D 1 - - - 0x00A854 02:A844: 47        .byte $47   ; 
- D 1 - - - 0x00A855 02:A845: 46        .byte $46   ; 
; 03
- - - - - - 0x00A856 02:A846: 64        .byte $64   ; 
- - - - - - 0x00A857 02:A847: 63        .byte $63   ; 



sub_A848:
C - - - - - 0x00A858 02:A848: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00A85B 02:A84B: 29 80     AND #$80
C - - - - - 0x00A85D 02:A84D: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00A860 02:A850: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A863 02:A853: F0 0F     BEQ bra_A864
C - - - - - 0x00A865 02:A855: B5 B1     LDA ram_current_player,X
C - - - - - 0x00A867 02:A857: 29 02     AND #$02
C - - - - - 0x00A869 02:A859: 18        CLC
C - - - - - 0x00A86A 02:A85A: 69 02     ADC #$02
C - - - - - 0x00A86C 02:A85C: 0A        ASL
C - - - - - 0x00A86D 02:A85D: 1D 34 06  ORA ram_obj_animation_hi,X
C - - - - - 0x00A870 02:A860: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00A873 02:A863: 60        RTS
bra_A864:
C - - - - - 0x00A874 02:A864: A9 00     LDA #$00
C - - - - - 0x00A876 02:A866: 9D 54 03  STA ram_0354,X
C - - - - - 0x00A879 02:A869: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A87C 02:A86C: A8        TAY
C - - - - - 0x00A87D 02:A86D: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A880 02:A870: 29 08     AND #$08
C - - - - - 0x00A882 02:A872: F0 16     BEQ bra_A88A_RTS
C - - - - - 0x00A884 02:A874: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A887 02:A877: F0 11     BEQ bra_A88A_RTS
C - - - - - 0x00A889 02:A879: FE 54 03  INC ram_0354,X
C - - - - - 0x00A88C 02:A87C: A5 23     LDA ram_0023
C - - - - - 0x00A88E 02:A87E: 29 07     AND #$07
C - - - - - 0x00A890 02:A880: F0 08     BEQ bra_A88A_RTS
C - - - - - 0x00A892 02:A882: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00A895 02:A885: 09 03     ORA #$03
C - - - - - 0x00A897 02:A887: 9D 34 06  STA ram_obj_animation_hi,X
bra_A88A_RTS:
C - - - - - 0x00A89A 02:A88A: 60        RTS



sub_A88B:
loc_A88B:
bra_A88B_loop:
C D 1 - - - 0x00A89B 02:A88B: 4A        LSR
C - - - - - 0x00A89C 02:A88C: B0 03     BCS bra_A891
C - - - - - 0x00A89E 02:A88E: C8        INY
C - - - - - 0x00A89F 02:A88F: D0 FA     BNE bra_A88B_loop    ; jmp
bra_A891:
C - - - - - 0x00A8A1 02:A891: 85 1D     STA ram_001D
C - - - - - 0x00A8A3 02:A893: 84 18     STY ram_0018
C - - - - - 0x00A8A5 02:A895: 84 1C     STY ram_001C
C - - - - - 0x00A8A7 02:A897: 20 E7 F8  JSR sub_0x01F8F7
C - - - - - 0x00A8AA 02:A89A: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A8AD 02:A89D: D0 1B     BNE bra_A8BA
C - - - - - 0x00A8AF 02:A89F: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A8B2 02:A8A2: A8        TAY
C - - - - - 0x00A8B3 02:A8A3: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A8B6 02:A8A6: 29 08     AND #$08
C - - - - - 0x00A8B8 02:A8A8: F0 10     BEQ bra_A8BA
C - - - - - 0x00A8BA 02:A8AA: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00A8BD 02:A8AD: F0 0B     BEQ bra_A8BA
C - - - - - 0x00A8BF 02:A8AF: A4 1C     LDY ram_001C
C - - - - - 0x00A8C1 02:A8B1: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00A8C4 02:A8B4: 4C CD A8  JMP loc_A8CD
bra_A8B7:
C - - - - - 0x00A8C7 02:A8B7: 4C 57 A9  JMP loc_A957
bra_A8BA:
C - - - - - 0x00A8CA 02:A8BA: A4 1C     LDY ram_001C
C - - - - - 0x00A8CC 02:A8BC: C0 0A     CPY #$0A
C - - - - - 0x00A8CE 02:A8BE: B0 F7     BCS bra_A8B7
C - - - - - 0x00A8D0 02:A8C0: 20 0A A6  JSR sub_A60A
C - - - - - 0x00A8D3 02:A8C3: D0 08     BNE bra_A8CD
C - - - - - 0x00A8D5 02:A8C5: 8C A2 03  STY ram_03A2
C - - - - - 0x00A8D8 02:A8C8: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00A8DB 02:A8CB: 10 7E     BPL bra_A94B
bra_A8CD:
loc_A8CD:
C D 1 - - - 0x00A8DD 02:A8CD: 29 7F     AND #$7F
C - - - - - 0x00A8DF 02:A8CF: C9 19     CMP #$19
C - - - - - 0x00A8E1 02:A8D1: F0 44     BEQ bra_A917
C - - - - - 0x00A8E3 02:A8D3: C9 01     CMP #$01
C - - - - - 0x00A8E5 02:A8D5: F0 1A     BEQ bra_A8F1
C - - - - - 0x00A8E7 02:A8D7: C9 32     CMP #$32
C - - - - - 0x00A8E9 02:A8D9: D0 2F     BNE bra_A90A
C - - - - - 0x00A8EB 02:A8DB: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A8EE 02:A8DE: D0 2A     BNE bra_A90A
C - - - - - 0x00A8F0 02:A8E0: B9 20 07  LDA ram_0720_obj,Y
C - - - - - 0x00A8F3 02:A8E3: C9 05     CMP #$05
C - - - - - 0x00A8F5 02:A8E5: D0 06     BNE bra_A8ED
C - - - - - 0x00A8F7 02:A8E7: A5 00     LDA ram_0000
C - - - - - 0x00A8F9 02:A8E9: C9 02     CMP #$02
C - - - - - 0x00A8FB 02:A8EB: F0 6A     BEQ bra_A957
bra_A8ED:
C - - - - - 0x00A8FD 02:A8ED: A9 20     LDA #$20
C - - - - - 0x00A8FF 02:A8EF: D0 02     BNE bra_A8F3    ; jmp
bra_A8F1:
C - - - - - 0x00A901 02:A8F1: A9 0F     LDA #$0F
bra_A8F3:
C - - - - - 0x00A903 02:A8F3: 85 01     STA ram_0001
C - - - - - 0x00A905 02:A8F5: A5 00     LDA ram_0000
C - - - - - 0x00A907 02:A8F7: C9 04     CMP #$04
C - - - - - 0x00A909 02:A8F9: D0 0F     BNE bra_A90A
C - - - - - 0x00A90B 02:A8FB: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00A90E 02:A8FE: 38        SEC
C - - - - - 0x00A90F 02:A8FF: FD 4E 06  SBC ram_obj_pos_X,X
C - - - - - 0x00A912 02:A902: B0 02     BCS bra_A906
C - - - - - 0x00A914 02:A904: 49 FF     EOR #$FF
bra_A906:
C - - - - - 0x00A916 02:A906: C5 01     CMP ram_0001
C - - - - - 0x00A918 02:A908: 90 4D     BCC bra_A957
bra_A90A:
C - - - - - 0x00A91A 02:A90A: A4 00     LDY ram_0000
C - - - - - 0x00A91C 02:A90C: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A91F 02:A90F: F0 0A     BEQ bra_A91B
C - - - - - 0x00A921 02:A911: B9 15 AB  LDA tbl_AB15,Y
C - - - - - 0x00A924 02:A914: 4C 3A A9  JMP loc_A93A
bra_A917:
C - - - - - 0x00A927 02:A917: A9 08     LDA #$08
C - - - - - 0x00A929 02:A919: D0 1F     BNE bra_A93A    ; jmp
bra_A91B:
C - - - - - 0x00A92B 02:A91B: B9 1D AB  LDA tbl_AB1D,Y
C - - - - - 0x00A92E 02:A91E: C9 22     CMP #$22
C - - - - - 0x00A930 02:A920: D0 18     BNE bra_A93A
C - - - - - 0x00A932 02:A922: 85 08     STA ram_0008
C - - - - - 0x00A934 02:A924: A9 25     LDA #con_F3D6_25
C - - - - - 0x00A936 02:A926: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x00A939 02:A929: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00A93C 02:A92C: A8        TAY
C - - - - - 0x00A93D 02:A92D: B9 25 AB  LDA tbl_AB25,Y
C - - - - - 0x00A940 02:A930: C5 00     CMP ram_0000
C - - - - - 0x00A942 02:A932: F0 04     BEQ bra_A938
C - - - - - 0x00A944 02:A934: A9 00     LDA #$00
C - - - - - 0x00A946 02:A936: F0 02     BEQ bra_A93A    ; jmp
bra_A938:
C - - - - - 0x00A948 02:A938: A5 08     LDA ram_0008
bra_A93A:
loc_A93A:
C D 1 - - - 0x00A94A 02:A93A: 20 9D A1  JSR sub_A19D
C - - - - - 0x00A94D 02:A93D: A5 1D     LDA ram_001D
C - - - - - 0x00A94F 02:A93F: F0 08     BEQ bra_A949
C - - - - - 0x00A951 02:A941: A4 1C     LDY ram_001C
C - - - - - 0x00A953 02:A943: C8        INY
C - - - - - 0x00A954 02:A944: F0 03     BEQ bra_A949
C - - - - - 0x00A956 02:A946: 4C 8B A8  JMP loc_A88B
bra_A949:
C - - - - - 0x00A959 02:A949: 18        CLC
C - - - - - 0x00A95A 02:A94A: 60        RTS
bra_A94B:
C - - - - - 0x00A95B 02:A94B: C9 15     CMP #$15
C - - - - - 0x00A95D 02:A94D: D0 08     BNE bra_A957
- - - - - - 0x00A95F 02:A94F: A5 00     LDA ram_0000
- - - - - - 0x00A961 02:A951: F0 F6     BEQ bra_A949
- - - - - - 0x00A963 02:A953: C9 05     CMP #$05
- - - - - - 0x00A965 02:A955: B0 F2     BCS bra_A949
bra_A957:
loc_A957:
sub_A957:
C D 1 - - - 0x00A967 02:A957: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00A96A 02:A95A: A8        TAY
C - - - - - 0x00A96B 02:A95B: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00A96E 02:A95E: C9 30     CMP #$30
C - - - - - 0x00A970 02:A960: 90 01     BCC bra_A963
C - - - - - 0x00A972 02:A962: 60        RTS
bra_A963:
C - - - - - 0x00A973 02:A963: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00A976 02:A966: F0 01     BEQ bra_A969
C - - - - - 0x00A978 02:A968: 60        RTS
bra_A969:
C - - - - - 0x00A979 02:A969: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00A97C 02:A96C: D0 27     BNE bra_A995
C - - - - - 0x00A97E 02:A96E: A0 03     LDY #$03
C - - - - - 0x00A980 02:A970: A5 00     LDA ram_0000
C - - - - - 0x00A982 02:A972: C9 04     CMP #$04
C - - - - - 0x00A984 02:A974: 90 02     BCC bra_A978
C - - - - - 0x00A986 02:A976: A0 07     LDY #$07
bra_A978:
C - - - - - 0x00A988 02:A978: 98        TYA
C - - - - - 0x00A989 02:A979: 09 60     ORA #$60
loc_A97B:
C D 1 - - - 0x00A98B 02:A97B: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00A98E 02:A97E: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00A991 02:A981: 29 F7     AND #$F7
C - - - - - 0x00A993 02:A983: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00A996 02:A986: 20 92 A0  JSR sub_A092
; player was killed with a bullet, enemy or object
C - - - - - 0x00A999 02:A989: A9 80     LDA #$80
C - - - - - 0x00A99B 02:A98B: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00A99E 02:A98E: A9 5D     LDA #con_music_5D
C - - - - - 0x00A9A0 02:A990: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x00A9A3 02:A993: 38        SEC
C - - - - - 0x00A9A4 02:A994: 60        RTS
bra_A995:
C - - - - - 0x00A9A5 02:A995: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00A9A8 02:A998: 29 F0     AND #$F0
C - - - - - 0x00A9AA 02:A99A: 4C 7B A9  JMP loc_A97B



tbl_A99D:
- D 1 - - - 0x00A9AD 02:A99D: AD A9     .word _off020_A9AD_00
- D 1 - - - 0x00A9AF 02:A99F: D1 A9     .word _off020_A9D1_01
- D 1 - - - 0x00A9B1 02:A9A1: F5 A9     .word _off020_A9F5_02
- D 1 - - - 0x00A9B3 02:A9A3: 19 AA     .word _off020_AA19_03
- D 1 - - - 0x00A9B5 02:A9A5: 61 AA     .word _off020_AA61_04
- D 1 - - - 0x00A9B7 02:A9A7: 85 AA     .word _off020_AA85_05
- D 1 - - - 0x00A9B9 02:A9A9: A9 AA     .word _off020_AAA9_06
- D 1 - - - 0x00A9BB 02:A9AB: CD AA     .word _off020_AACD_07



_off020_A9AD_00:
- D 1 - I - 0x00A9BD 02:A9AD: 0D        .byte $0D   ; 
- D 1 - I - 0x00A9BE 02:A9AE: 08        .byte $08   ; 
- D 1 - I - 0x00A9BF 02:A9AF: 03        .byte $03   ; 
- D 1 - I - 0x00A9C0 02:A9B0: 01        .byte $01   ; 
- D 1 - I - 0x00A9C1 02:A9B1: 01        .byte $01   ; 
- D 1 - I - 0x00A9C2 02:A9B2: 11        .byte $11   ; 
- - - - - - 0x00A9C3 02:A9B3: 02        .byte $02   ; 
- - - - - - 0x00A9C4 02:A9B4: 02        .byte $02   ; 
- - - - - - 0x00A9C5 02:A9B5: 04        .byte $04   ; 
- D 1 - I - 0x00A9C6 02:A9B6: 0E        .byte $0E   ; 
- D 1 - I - 0x00A9C7 02:A9B7: 0A        .byte $0A   ; 
- - - - - - 0x00A9C8 02:A9B8: 03        .byte $03   ; 
- - - - - - 0x00A9C9 02:A9B9: 01        .byte $01   ; 
- - - - - - 0x00A9CA 02:A9BA: 01        .byte $01   ; 
- D 1 - I - 0x00A9CB 02:A9BB: 12        .byte $12   ; 
- - - - - - 0x00A9CC 02:A9BC: 02        .byte $02   ; 
- D 1 - I - 0x00A9CD 02:A9BD: 02        .byte $02   ; 
- - - - - - 0x00A9CE 02:A9BE: 04        .byte $04   ; 
- D 1 - I - 0x00A9CF 02:A9BF: 0B        .byte $0B   ; 
- D 1 - I - 0x00A9D0 02:A9C0: 07        .byte $07   ; 
- D 1 - I - 0x00A9D1 02:A9C1: 03        .byte $03   ; 
- D 1 - I - 0x00A9D2 02:A9C2: 01        .byte $01   ; 
- D 1 - I - 0x00A9D3 02:A9C3: 01        .byte $01   ; 
- D 1 - I - 0x00A9D4 02:A9C4: 0F        .byte $0F   ; 
- - - - - - 0x00A9D5 02:A9C5: 02        .byte $02   ; 
- - - - - - 0x00A9D6 02:A9C6: 02        .byte $02   ; 
- - - - - - 0x00A9D7 02:A9C7: 04        .byte $04   ; 
- D 1 - I - 0x00A9D8 02:A9C8: 0C        .byte $0C   ; 
- D 1 - I - 0x00A9D9 02:A9C9: 09        .byte $09   ; 
- - - - - - 0x00A9DA 02:A9CA: 03        .byte $03   ; 
- - - - - - 0x00A9DB 02:A9CB: 01        .byte $01   ; 
- - - - - - 0x00A9DC 02:A9CC: 01        .byte $01   ; 
- D 1 - I - 0x00A9DD 02:A9CD: 10        .byte $10   ; 
- D 1 - I - 0x00A9DE 02:A9CE: 02        .byte $02   ; 
- D 1 - I - 0x00A9DF 02:A9CF: 02        .byte $02   ; 
- D 1 - I - 0x00A9E0 02:A9D0: 04        .byte $04   ; 



_off020_A9D1_01:
- D 1 - I - 0x00A9E1 02:A9D1: 28        .byte $28   ; 
- D 1 - I - 0x00A9E2 02:A9D2: 24        .byte $24   ; 
- D 1 - I - 0x00A9E3 02:A9D3: 20        .byte $20   ; 
- D 1 - I - 0x00A9E4 02:A9D4: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9E5 02:A9D5: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9E6 02:A9D6: 2C        .byte $2C   ; 
- - - - - - 0x00A9E7 02:A9D7: 1F        .byte $1F   ; 
- - - - - - 0x00A9E8 02:A9D8: 1F        .byte $1F   ; 
- - - - - - 0x00A9E9 02:A9D9: 21        .byte $21   ; 
- D 1 - I - 0x00A9EA 02:A9DA: 29        .byte $29   ; 
- D 1 - I - 0x00A9EB 02:A9DB: 25        .byte $25   ; 
- - - - - - 0x00A9EC 02:A9DC: 20        .byte $20   ; 
- - - - - - 0x00A9ED 02:A9DD: 1E        .byte $1E   ; 
- - - - - - 0x00A9EE 02:A9DE: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9EF 02:A9DF: 2D        .byte $2D   ; 
- D 1 - I - 0x00A9F0 02:A9E0: 1F        .byte $1F   ; 
- D 1 - I - 0x00A9F1 02:A9E1: 1F        .byte $1F   ; 
- D 1 - I - 0x00A9F2 02:A9E2: 21        .byte $21   ; 
- D 1 - I - 0x00A9F3 02:A9E3: 26        .byte $26   ; 
- D 1 - I - 0x00A9F4 02:A9E4: 22        .byte $22   ; 
- D 1 - I - 0x00A9F5 02:A9E5: 20        .byte $20   ; 
- D 1 - I - 0x00A9F6 02:A9E6: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9F7 02:A9E7: 1E        .byte $1E   ; 
- D 1 - I - 0x00A9F8 02:A9E8: 2A        .byte $2A   ; 
- - - - - - 0x00A9F9 02:A9E9: 1F        .byte $1F   ; 
- - - - - - 0x00A9FA 02:A9EA: 1F        .byte $1F   ; 
- - - - - - 0x00A9FB 02:A9EB: 21        .byte $21   ; 
- D 1 - I - 0x00A9FC 02:A9EC: 27        .byte $27   ; 
- D 1 - I - 0x00A9FD 02:A9ED: 23        .byte $23   ; 
- - - - - - 0x00A9FE 02:A9EE: 20        .byte $20   ; 
- - - - - - 0x00A9FF 02:A9EF: 1E        .byte $1E   ; 
- - - - - - 0x00AA00 02:A9F0: 1E        .byte $1E   ; 
- D 1 - I - 0x00AA01 02:A9F1: 2B        .byte $2B   ; 
- D 1 - I - 0x00AA02 02:A9F2: 1F        .byte $1F   ; 
- D 1 - I - 0x00AA03 02:A9F3: 1F        .byte $1F   ; 
- D 1 - I - 0x00AA04 02:A9F4: 21        .byte $21   ; 



_off020_A9F5_02:
- D 1 - I - 0x00AA05 02:A9F5: 3D        .byte $3D   ; 
- D 1 - I - 0x00AA06 02:A9F6: 39        .byte $39   ; 
- D 1 - I - 0x00AA07 02:A9F7: 37        .byte $37   ; 
- D 1 - I - 0x00AA08 02:A9F8: 35        .byte $35   ; 
- D 1 - I - 0x00AA09 02:A9F9: 35        .byte $35   ; 
- D 1 - I - 0x00AA0A 02:A9FA: 43        .byte $43   ; 
- - - - - - 0x00AA0B 02:A9FB: 36        .byte $36   ; 
- - - - - - 0x00AA0C 02:A9FC: 36        .byte $36   ; 
- - - - - - 0x00AA0D 02:A9FD: 38        .byte $38   ; 
- D 1 - I - 0x00AA0E 02:A9FE: 3F        .byte $3F   ; 
- D 1 - I - 0x00AA0F 02:A9FF: 3B        .byte $3B   ; 
- - - - - - 0x00AA10 02:AA00: 37        .byte $37   ; 
- - - - - - 0x00AA11 02:AA01: 35        .byte $35   ; 
- - - - - - 0x00AA12 02:AA02: 35        .byte $35   ; 
- D 1 - I - 0x00AA13 02:AA03: 41        .byte $41   ; 
- D 1 - I - 0x00AA14 02:AA04: 36        .byte $36   ; 
- D 1 - I - 0x00AA15 02:AA05: 36        .byte $36   ; 
- D 1 - I - 0x00AA16 02:AA06: 38        .byte $38   ; 
- D 1 - I - 0x00AA17 02:AA07: 3E        .byte $3E   ; 
- D 1 - I - 0x00AA18 02:AA08: 3A        .byte $3A   ; 
- D 1 - I - 0x00AA19 02:AA09: 37        .byte $37   ; 
- D 1 - I - 0x00AA1A 02:AA0A: 35        .byte $35   ; 
- D 1 - I - 0x00AA1B 02:AA0B: 35        .byte $35   ; 
- D 1 - I - 0x00AA1C 02:AA0C: 44        .byte $44   ; 
- - - - - - 0x00AA1D 02:AA0D: 36        .byte $36   ; 
- - - - - - 0x00AA1E 02:AA0E: 36        .byte $36   ; 
- - - - - - 0x00AA1F 02:AA0F: 38        .byte $38   ; 
- D 1 - I - 0x00AA20 02:AA10: 40        .byte $40   ; 
- D 1 - I - 0x00AA21 02:AA11: 3C        .byte $3C   ; 
- - - - - - 0x00AA22 02:AA12: 37        .byte $37   ; 
- - - - - - 0x00AA23 02:AA13: 35        .byte $35   ; 
- - - - - - 0x00AA24 02:AA14: 35        .byte $35   ; 
- D 1 - I - 0x00AA25 02:AA15: 42        .byte $42   ; 
- D 1 - I - 0x00AA26 02:AA16: 36        .byte $36   ; 
- D 1 - I - 0x00AA27 02:AA17: 36        .byte $36   ; 
- D 1 - I - 0x00AA28 02:AA18: 38        .byte $38   ; 



_off020_AA19_03:
- D 1 - I - 0x00AA29 02:AA19: 54        .byte $54   ; 
- D 1 - I - 0x00AA2A 02:AA1A: 50        .byte $50   ; 
- - - - - - 0x00AA2B 02:AA1B: 4E        .byte $4E   ; 
- D 1 - I - 0x00AA2C 02:AA1C: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA2D 02:AA1D: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA2E 02:AA1E: 58        .byte $58   ; 
- - - - - - 0x00AA2F 02:AA1F: 4D        .byte $4D   ; 
- - - - - - 0x00AA30 02:AA20: 4D        .byte $4D   ; 
- - - - - - 0x00AA31 02:AA21: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA32 02:AA22: 56        .byte $56   ; 
- D 1 - I - 0x00AA33 02:AA23: 52        .byte $52   ; 
- - - - - - 0x00AA34 02:AA24: 4E        .byte $4E   ; 
- - - - - - 0x00AA35 02:AA25: 4C        .byte $4C   ; 
- - - - - - 0x00AA36 02:AA26: 4C        .byte $4C   ; 
- - - - - - 0x00AA37 02:AA27: 5A        .byte $5A   ; 
- - - - - - 0x00AA38 02:AA28: 4D        .byte $4D   ; 
- D 1 - I - 0x00AA39 02:AA29: 4D        .byte $4D   ; 
- D 1 - I - 0x00AA3A 02:AA2A: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA3B 02:AA2B: 55        .byte $55   ; 
- D 1 - I - 0x00AA3C 02:AA2C: 51        .byte $51   ; 
- - - - - - 0x00AA3D 02:AA2D: 4E        .byte $4E   ; 
- D 1 - I - 0x00AA3E 02:AA2E: 4C        .byte $4C   ; 
- - - - - - 0x00AA3F 02:AA2F: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA40 02:AA30: 59        .byte $59   ; 
- - - - - - 0x00AA41 02:AA31: 4D        .byte $4D   ; 
- - - - - - 0x00AA42 02:AA32: 4D        .byte $4D   ; 
- - - - - - 0x00AA43 02:AA33: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA44 02:AA34: 57        .byte $57   ; 
- D 1 - I - 0x00AA45 02:AA35: 53        .byte $53   ; 
- - - - - - 0x00AA46 02:AA36: 4E        .byte $4E   ; 
- - - - - - 0x00AA47 02:AA37: 4C        .byte $4C   ; 
- - - - - - 0x00AA48 02:AA38: 4C        .byte $4C   ; 
- D 1 - I - 0x00AA49 02:AA39: 5B        .byte $5B   ; 
- - - - - - 0x00AA4A 02:AA3A: 4D        .byte $4D   ; 
- - - - - - 0x00AA4B 02:AA3B: 4D        .byte $4D   ; 
- - - - - - 0x00AA4C 02:AA3C: 4F        .byte $4F   ; 
- D 1 - I - 0x00AA4D 02:AA3D: 5E        .byte $5E   ; 
- - - - - - 0x00AA4E 02:AA3E: 5E        .byte $5E   ; 
- - - - - - 0x00AA4F 02:AA3F: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA50 02:AA40: 5C        .byte $5C   ; 
- - - - - - 0x00AA51 02:AA41: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA52 02:AA42: 5E        .byte $5E   ; 
- - - - - - 0x00AA53 02:AA43: 5D        .byte $5D   ; 
- - - - - - 0x00AA54 02:AA44: 5D        .byte $5D   ; 
- - - - - - 0x00AA55 02:AA45: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA56 02:AA46: 60        .byte $60   ; 
- - - - - - 0x00AA57 02:AA47: 60        .byte $60   ; 
- - - - - - 0x00AA58 02:AA48: 5C        .byte $5C   ; 
- - - - - - 0x00AA59 02:AA49: 5C        .byte $5C   ; 
- - - - - - 0x00AA5A 02:AA4A: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA5B 02:AA4B: 60        .byte $60   ; 
- - - - - - 0x00AA5C 02:AA4C: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA5D 02:AA4D: 5D        .byte $5D   ; 
- - - - - - 0x00AA5E 02:AA4E: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA5F 02:AA4F: 5F        .byte $5F   ; 
- - - - - - 0x00AA60 02:AA50: 5F        .byte $5F   ; 
- - - - - - 0x00AA61 02:AA51: 5C        .byte $5C   ; 
- - - - - - 0x00AA62 02:AA52: 5C        .byte $5C   ; 
- - - - - - 0x00AA63 02:AA53: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA64 02:AA54: 5F        .byte $5F   ; 
- - - - - - 0x00AA65 02:AA55: 5D        .byte $5D   ; 
- - - - - - 0x00AA66 02:AA56: 5D        .byte $5D   ; 
- - - - - - 0x00AA67 02:AA57: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA68 02:AA58: 61        .byte $61   ; 
- - - - - - 0x00AA69 02:AA59: 61        .byte $61   ; 
- - - - - - 0x00AA6A 02:AA5A: 5C        .byte $5C   ; 
- - - - - - 0x00AA6B 02:AA5B: 5C        .byte $5C   ; 
- - - - - - 0x00AA6C 02:AA5C: 5C        .byte $5C   ; 
- D 1 - I - 0x00AA6D 02:AA5D: 61        .byte $61   ; 
- - - - - - 0x00AA6E 02:AA5E: 5D        .byte $5D   ; 
- D 1 - I - 0x00AA6F 02:AA5F: 5D        .byte $5D   ; 
- - - - - - 0x00AA70 02:AA60: 5D        .byte $5D   ; 



_off020_AA61_04:
- - - - - - 0x00AA71 02:AA61: 01        .byte $01   ; 
- D 1 - I - 0x00AA72 02:AA62: 01        .byte $01   ; 
- D 1 - I - 0x00AA73 02:AA63: 03        .byte $03   ; 
- D 1 - I - 0x00AA74 02:AA64: 05        .byte $05   ; 
- D 1 - I - 0x00AA75 02:AA65: 07        .byte $07   ; 
- D 1 - I - 0x00AA76 02:AA66: 08        .byte $08   ; 
- D 1 - I - 0x00AA77 02:AA67: 06        .byte $06   ; 
- D 1 - I - 0x00AA78 02:AA68: 04        .byte $04   ; 
- D 1 - I - 0x00AA79 02:AA69: 02        .byte $02   ; 
- - - - - - 0x00AA7A 02:AA6A: 11        .byte $11   ; 
- D 1 - I - 0x00AA7B 02:AA6B: 11        .byte $11   ; 
- D 1 - I - 0x00AA7C 02:AA6C: 13        .byte $13   ; 
- D 1 - I - 0x00AA7D 02:AA6D: 15        .byte $15   ; 
- D 1 - I - 0x00AA7E 02:AA6E: 17        .byte $17   ; 
- D 1 - I - 0x00AA7F 02:AA6F: 18        .byte $18   ; 
- - - - - - 0x00AA80 02:AA70: 16        .byte $16   ; 
- D 1 - I - 0x00AA81 02:AA71: 14        .byte $14   ; 
- - - - - - 0x00AA82 02:AA72: 12        .byte $12   ; 
- - - - - - 0x00AA83 02:AA73: 01        .byte $01   ; 
- D 1 - I - 0x00AA84 02:AA74: 01        .byte $01   ; 
- D 1 - I - 0x00AA85 02:AA75: 03        .byte $03   ; 
- D 1 - I - 0x00AA86 02:AA76: 05        .byte $05   ; 
- D 1 - I - 0x00AA87 02:AA77: 07        .byte $07   ; 
- - - - - - 0x00AA88 02:AA78: 08        .byte $08   ; 
- D 1 - I - 0x00AA89 02:AA79: 06        .byte $06   ; 
- - - - - - 0x00AA8A 02:AA7A: 04        .byte $04   ; 
- D 1 - I - 0x00AA8B 02:AA7B: 02        .byte $02   ; 
- - - - - - 0x00AA8C 02:AA7C: 09        .byte $09   ; 
- D 1 - I - 0x00AA8D 02:AA7D: 09        .byte $09   ; 
- - - - - - 0x00AA8E 02:AA7E: 0B        .byte $0B   ; 
- - - - - - 0x00AA8F 02:AA7F: 0D        .byte $0D   ; 
- D 1 - I - 0x00AA90 02:AA80: 0F        .byte $0F   ; 
- - - - - - 0x00AA91 02:AA81: 10        .byte $10   ; 
- - - - - - 0x00AA92 02:AA82: 0E        .byte $0E   ; 
- - - - - - 0x00AA93 02:AA83: 0C        .byte $0C   ; 
- - - - - - 0x00AA94 02:AA84: 0A        .byte $0A   ; 



_off020_AA85_05:
- - - - - - 0x00AA95 02:AA85: 1E        .byte $1E   ; 
- D 1 - I - 0x00AA96 02:AA86: 1E        .byte $1E   ; 
- D 1 - I - 0x00AA97 02:AA87: 20        .byte $20   ; 
- D 1 - I - 0x00AA98 02:AA88: 22        .byte $22   ; 
- D 1 - I - 0x00AA99 02:AA89: 24        .byte $24   ; 
- D 1 - I - 0x00AA9A 02:AA8A: 25        .byte $25   ; 
- D 1 - I - 0x00AA9B 02:AA8B: 23        .byte $23   ; 
- D 1 - I - 0x00AA9C 02:AA8C: 21        .byte $21   ; 
- D 1 - I - 0x00AA9D 02:AA8D: 1F        .byte $1F   ; 
- - - - - - 0x00AA9E 02:AA8E: 2E        .byte $2E   ; 
- D 1 - I - 0x00AA9F 02:AA8F: 2E        .byte $2E   ; 
- D 1 - I - 0x00AAA0 02:AA90: 30        .byte $30   ; 
- D 1 - I - 0x00AAA1 02:AA91: 32        .byte $32   ; 
- D 1 - I - 0x00AAA2 02:AA92: 34        .byte $34   ; 
- D 1 - I - 0x00AAA3 02:AA93: 35        .byte $35   ; 
- D 1 - I - 0x00AAA4 02:AA94: 33        .byte $33   ; 
- D 1 - I - 0x00AAA5 02:AA95: 31        .byte $31   ; 
- D 1 - I - 0x00AAA6 02:AA96: 2F        .byte $2F   ; 
- - - - - - 0x00AAA7 02:AA97: 1E        .byte $1E   ; 
- D 1 - I - 0x00AAA8 02:AA98: 1E        .byte $1E   ; 
- D 1 - I - 0x00AAA9 02:AA99: 20        .byte $20   ; 
- D 1 - I - 0x00AAAA 02:AA9A: 22        .byte $22   ; 
- D 1 - I - 0x00AAAB 02:AA9B: 24        .byte $24   ; 
- D 1 - I - 0x00AAAC 02:AA9C: 25        .byte $25   ; 
- D 1 - I - 0x00AAAD 02:AA9D: 23        .byte $23   ; 
- D 1 - I - 0x00AAAE 02:AA9E: 21        .byte $21   ; 
- D 1 - I - 0x00AAAF 02:AA9F: 1F        .byte $1F   ; 
- - - - - - 0x00AAB0 02:AAA0: 26        .byte $26   ; 
- D 1 - I - 0x00AAB1 02:AAA1: 26        .byte $26   ; 
- D 1 - I - 0x00AAB2 02:AAA2: 28        .byte $28   ; 
- D 1 - I - 0x00AAB3 02:AAA3: 2A        .byte $2A   ; 
- D 1 - I - 0x00AAB4 02:AAA4: 2C        .byte $2C   ; 
- D 1 - I - 0x00AAB5 02:AAA5: 2D        .byte $2D   ; 
- - - - - - 0x00AAB6 02:AAA6: 2B        .byte $2B   ; 
- D 1 - I - 0x00AAB7 02:AAA7: 29        .byte $29   ; 
- D 1 - I - 0x00AAB8 02:AAA8: 27        .byte $27   ; 



_off020_AAA9_06:
- - - - - - 0x00AAB9 02:AAA9: 01        .byte $01   ; 
- D 1 - I - 0x00AABA 02:AAAA: 01        .byte $01   ; 
- - - - - - 0x00AABB 02:AAAB: 03        .byte $03   ; 
- - - - - - 0x00AABC 02:AAAC: 05        .byte $05   ; 
- - - - - - 0x00AABD 02:AAAD: 07        .byte $07   ; 
- - - - - - 0x00AABE 02:AAAE: 08        .byte $08   ; 
- - - - - - 0x00AABF 02:AAAF: 06        .byte $06   ; 
- D 1 - I - 0x00AAC0 02:AAB0: 04        .byte $04   ; 
- D 1 - I - 0x00AAC1 02:AAB1: 02        .byte $02   ; 
- - - - - - 0x00AAC2 02:AAB2: 09        .byte $09   ; 
- D 1 - I - 0x00AAC3 02:AAB3: 09        .byte $09   ; 
- - - - - - 0x00AAC4 02:AAB4: 0B        .byte $0B   ; 
- - - - - - 0x00AAC5 02:AAB5: 0D        .byte $0D   ; 
- - - - - - 0x00AAC6 02:AAB6: 0F        .byte $0F   ; 
- - - - - - 0x00AAC7 02:AAB7: 10        .byte $10   ; 
- - - - - - 0x00AAC8 02:AAB8: 0E        .byte $0E   ; 
- - - - - - 0x00AAC9 02:AAB9: 0C        .byte $0C   ; 
- - - - - - 0x00AACA 02:AABA: 0A        .byte $0A   ; 
- - - - - - 0x00AACB 02:AABB: 01        .byte $01   ; 
- - - - - - 0x00AACC 02:AABC: 01        .byte $01   ; 
- - - - - - 0x00AACD 02:AABD: 03        .byte $03   ; 
- - - - - - 0x00AACE 02:AABE: 05        .byte $05   ; 
- - - - - - 0x00AACF 02:AABF: 07        .byte $07   ; 
- - - - - - 0x00AAD0 02:AAC0: 08        .byte $08   ; 
- - - - - - 0x00AAD1 02:AAC1: 06        .byte $06   ; 
- - - - - - 0x00AAD2 02:AAC2: 04        .byte $04   ; 
- D 1 - I - 0x00AAD3 02:AAC3: 02        .byte $02   ; 
- - - - - - 0x00AAD4 02:AAC4: 11        .byte $11   ; 
- - - - - - 0x00AAD5 02:AAC5: 11        .byte $11   ; 
- - - - - - 0x00AAD6 02:AAC6: 13        .byte $13   ; 
- - - - - - 0x00AAD7 02:AAC7: 15        .byte $15   ; 
- - - - - - 0x00AAD8 02:AAC8: 17        .byte $17   ; 
- - - - - - 0x00AAD9 02:AAC9: 18        .byte $18   ; 
- - - - - - 0x00AADA 02:AACA: 16        .byte $16   ; 
- - - - - - 0x00AADB 02:AACB: 14        .byte $14   ; 
- - - - - - 0x00AADC 02:AACC: 12        .byte $12   ; 



_off020_AACD_07:
- - - - - - 0x00AADD 02:AACD: 1F        .byte $1F   ; 
- D 1 - I - 0x00AADE 02:AACE: 1F        .byte $1F   ; 
- D 1 - I - 0x00AADF 02:AACF: 21        .byte $21   ; 
- D 1 - I - 0x00AAE0 02:AAD0: 23        .byte $23   ; 
- D 1 - I - 0x00AAE1 02:AAD1: 25        .byte $25   ; 
- D 1 - I - 0x00AAE2 02:AAD2: 26        .byte $26   ; 
- D 1 - I - 0x00AAE3 02:AAD3: 24        .byte $24   ; 
- D 1 - I - 0x00AAE4 02:AAD4: 22        .byte $22   ; 
- D 1 - I - 0x00AAE5 02:AAD5: 20        .byte $20   ; 
- - - - - - 0x00AAE6 02:AAD6: 2F        .byte $2F   ; 
- D 1 - I - 0x00AAE7 02:AAD7: 2F        .byte $2F   ; 
- - - - - - 0x00AAE8 02:AAD8: 31        .byte $31   ; 
- D 1 - I - 0x00AAE9 02:AAD9: 33        .byte $33   ; 
- - - - - - 0x00AAEA 02:AADA: 35        .byte $35   ; 
- D 1 - I - 0x00AAEB 02:AADB: 36        .byte $36   ; 
- - - - - - 0x00AAEC 02:AADC: 34        .byte $34   ; 
- D 1 - I - 0x00AAED 02:AADD: 32        .byte $32   ; 
- - - - - - 0x00AAEE 02:AADE: 30        .byte $30   ; 
- - - - - - 0x00AAEF 02:AADF: 1F        .byte $1F   ; 
- D 1 - I - 0x00AAF0 02:AAE0: 1F        .byte $1F   ; 
- D 1 - I - 0x00AAF1 02:AAE1: 21        .byte $21   ; 
- D 1 - I - 0x00AAF2 02:AAE2: 23        .byte $23   ; 
- - - - - - 0x00AAF3 02:AAE3: 25        .byte $25   ; 
- D 1 - I - 0x00AAF4 02:AAE4: 26        .byte $26   ; 
- - - - - - 0x00AAF5 02:AAE5: 24        .byte $24   ; 
- D 1 - I - 0x00AAF6 02:AAE6: 22        .byte $22   ; 
- D 1 - I - 0x00AAF7 02:AAE7: 20        .byte $20   ; 
- - - - - - 0x00AAF8 02:AAE8: 27        .byte $27   ; 
- D 1 - I - 0x00AAF9 02:AAE9: 27        .byte $27   ; 
- - - - - - 0x00AAFA 02:AAEA: 29        .byte $29   ; 
- D 1 - I - 0x00AAFB 02:AAEB: 2B        .byte $2B   ; 
- - - - - - 0x00AAFC 02:AAEC: 2D        .byte $2D   ; 
- D 1 - I - 0x00AAFD 02:AAED: 2E        .byte $2E   ; 
- - - - - - 0x00AAFE 02:AAEE: 2C        .byte $2C   ; 
- D 1 - I - 0x00AAFF 02:AAEF: 2A        .byte $2A   ; 
- - - - - - 0x00AB00 02:AAF0: 28        .byte $28   ; 
- - - - - - 0x00AB01 02:AAF1: 3D        .byte $3D   ; 
- D 1 - I - 0x00AB02 02:AAF2: 3D        .byte $3D   ; 
- D 1 - I - 0x00AB03 02:AAF3: 3F        .byte $3F   ; 
- D 1 - I - 0x00AB04 02:AAF4: 41        .byte $41   ; 
- D 1 - I - 0x00AB05 02:AAF5: 43        .byte $43   ; 
- D 1 - I - 0x00AB06 02:AAF6: 44        .byte $44   ; 
- D 1 - I - 0x00AB07 02:AAF7: 42        .byte $42   ; 
- D 1 - I - 0x00AB08 02:AAF8: 40        .byte $40   ; 
- D 1 - I - 0x00AB09 02:AAF9: 3E        .byte $3E   ; 
- - - - - - 0x00AB0A 02:AAFA: 49        .byte $49   ; 
- D 1 - I - 0x00AB0B 02:AAFB: 49        .byte $49   ; 
- - - - - - 0x00AB0C 02:AAFC: 49        .byte $49   ; 
- D 1 - I - 0x00AB0D 02:AAFD: 4C        .byte $4C   ; 
- - - - - - 0x00AB0E 02:AAFE: 4C        .byte $4C   ; 
- D 1 - I - 0x00AB0F 02:AAFF: 4B        .byte $4B   ; 
- - - - - - 0x00AB10 02:AB00: 4B        .byte $4B   ; 
- D 1 - I - 0x00AB11 02:AB01: 4A        .byte $4A   ; 
- - - - - - 0x00AB12 02:AB02: 4A        .byte $4A   ; 
- - - - - - 0x00AB13 02:AB03: 3D        .byte $3D   ; 
- D 1 - I - 0x00AB14 02:AB04: 3D        .byte $3D   ; 
- - - - - - 0x00AB15 02:AB05: 3F        .byte $3F   ; 
- D 1 - I - 0x00AB16 02:AB06: 41        .byte $41   ; 
- D 1 - I - 0x00AB17 02:AB07: 43        .byte $43   ; 
- D 1 - I - 0x00AB18 02:AB08: 44        .byte $44   ; 
- - - - - - 0x00AB19 02:AB09: 42        .byte $42   ; 
- D 1 - I - 0x00AB1A 02:AB0A: 40        .byte $40   ; 
- D 1 - I - 0x00AB1B 02:AB0B: 3E        .byte $3E   ; 
- - - - - - 0x00AB1C 02:AB0C: 45        .byte $45   ; 
- - - - - - 0x00AB1D 02:AB0D: 45        .byte $45   ; 
- - - - - - 0x00AB1E 02:AB0E: 45        .byte $45   ; 
- - - - - - 0x00AB1F 02:AB0F: 45        .byte $45   ; 
- - - - - - 0x00AB20 02:AB10: 48        .byte $48   ; 
- D 1 - I - 0x00AB21 02:AB11: 47        .byte $47   ; 
- - - - - - 0x00AB22 02:AB12: 47        .byte $47   ; 
- D 1 - I - 0x00AB23 02:AB13: 46        .byte $46   ; 
- - - - - - 0x00AB24 02:AB14: 46        .byte $46   ; 



tbl_AB15:
- D 1 - - - 0x00AB25 02:AB15: 44        .byte $44   ; 00
- - - - - - 0x00AB26 02:AB16: 44        .byte $44   ; 01
- D 1 - - - 0x00AB27 02:AB17: 00        .byte $00   ; 02
- D 1 - - - 0x00AB28 02:AB18: 11        .byte $11   ; 03
- D 1 - - - 0x00AB29 02:AB19: 11        .byte $11   ; 04
- D 1 - - - 0x00AB2A 02:AB1A: 11        .byte $11   ; 05
- D 1 - - - 0x00AB2B 02:AB1B: 00        .byte $00   ; 06
- - - - - - 0x00AB2C 02:AB1C: 44        .byte $44   ; 07



tbl_AB1D:
- D 1 - - - 0x00AB2D 02:AB1D: 11        .byte $11   ; 00
- D 1 - - - 0x00AB2E 02:AB1E: 11        .byte $11   ; 01
- D 1 - - - 0x00AB2F 02:AB1F: 22        .byte $22   ; 02
- D 1 - - - 0x00AB30 02:AB20: 44        .byte $44   ; 03
- D 1 - - - 0x00AB31 02:AB21: 44        .byte $44   ; 04
- D 1 - - - 0x00AB32 02:AB22: 44        .byte $44   ; 05
- D 1 - - - 0x00AB33 02:AB23: 22        .byte $22   ; 06
- D 1 - - - 0x00AB34 02:AB24: 11        .byte $11   ; 07



tbl_AB25:
- D 1 - - - 0x00AB35 02:AB25: 00        .byte $00   ; 00
- D 1 - - - 0x00AB36 02:AB26: 04        .byte $04   ; 01
- D 1 - - - 0x00AB37 02:AB27: 06        .byte $06   ; 02
- D 1 - - - 0x00AB38 02:AB28: 06        .byte $06   ; 03
- D 1 - - - 0x00AB39 02:AB29: 06        .byte $06   ; 04
- D 1 - - - 0x00AB3A 02:AB2A: 00        .byte $00   ; 05
- D 1 - - - 0x00AB3B 02:AB2B: 02        .byte $02   ; 06
- D 1 - - - 0x00AB3C 02:AB2C: 02        .byte $02   ; 07
- D 1 - - - 0x00AB3D 02:AB2D: 02        .byte $02   ; 08
- - - - - - 0x00AB3E 02:AB2E: 0C        .byte $0C   ; 09
- - - - - - 0x00AB3F 02:AB2F: 0E        .byte $0E   ; 0A
- - - - - - 0x00AB40 02:AB30: 10        .byte $10   ; 0B
- - - - - - 0x00AB41 02:AB31: 12        .byte $12   ; 0C
- - - - - - 0x00AB42 02:AB32: 00        .byte $00   ; 0D
- - - - - - 0x00AB43 02:AB33: 03        .byte $03   ; 0E
- - - - - - 0x00AB44 02:AB34: 04        .byte $04   ; 0F


; bzk garbage
- - - - - - 0x00AB45 02:AB35: 02        .byte $02   ; 
- - - - - - 0x00AB46 02:AB36: 01        .byte $01   ; 
- - - - - - 0x00AB47 02:AB37: 00        .byte $00   ; 
- - - - - - 0x00AB48 02:AB38: 00        .byte $00   ; 
- - - - - - 0x00AB49 02:AB39: 00        .byte $00   ; 



tbl_AB3A:
- D 1 - - - 0x00AB4A 02:AB3A: 01        .byte $01   ; 
- D 1 - - - 0x00AB4B 02:AB3B: 0D        .byte $0D   ; 
- D 1 - - - 0x00AB4C 02:AB3C: 0B        .byte $0B   ; 
- D 1 - - - 0x00AB4D 02:AB3D: 03        .byte $03   ; 
- D 1 - - - 0x00AB4E 02:AB3E: 02        .byte $02   ; 
- D 1 - - - 0x00AB4F 02:AB3F: 04        .byte $04   ; 
- D 1 - - - 0x00AB50 02:AB40: 0C        .byte $0C   ; 
- D 1 - - - 0x00AB51 02:AB41: 06        .byte $06   ; 



sub_AB42:
C - - - - - 0x00AB52 02:AB42: 86 1F     STX ram_001F
C - - - - - 0x00AB54 02:AB44: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00AB57 02:AB47: F0 1C     BEQ bra_AB65
C - - - - - 0x00AB59 02:AB49: A9 00     LDA #$00
C - - - - - 0x00AB5B 02:AB4B: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00AB5E 02:AB4E: A0 08     LDY #$08
C - - - - - 0x00AB60 02:AB50: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB63 02:AB53: 10 0A     BPL bra_AB5F
C - - - - - 0x00AB65 02:AB55: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB68 02:AB58: C9 94     CMP #$94
C - - - - - 0x00AB6A 02:AB5A: 90 29     BCC bra_AB85
C - - - - - 0x00AB6C 02:AB5C: 4C 6D AC  JMP loc_AC6D
bra_AB5F:
C - - - - - 0x00AB6F 02:AB5F: C9 10     CMP #$10
C - - - - - 0x00AB71 02:AB61: B0 1A     BCS bra_AB7D
C - - - - - 0x00AB73 02:AB63: 90 20     BCC bra_AB85    ; jmp
bra_AB65:
C - - - - - 0x00AB75 02:AB65: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB78 02:AB68: 30 07     BMI bra_AB71
C - - - - - 0x00AB7A 02:AB6A: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AB7D 02:AB6D: 29 0C     AND #$0C
C - - - - - 0x00AB7F 02:AB6F: D0 0C     BNE bra_AB7D
bra_AB71:
C - - - - - 0x00AB81 02:AB71: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00AB84 02:AB74: 29 20     AND #$20
C - - - - - 0x00AB86 02:AB76: D0 08     BNE bra_AB80
C - - - - - 0x00AB88 02:AB78: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB8B 02:AB7B: 30 03     BMI bra_AB80
bra_AB7D:
C - - - - - 0x00AB8D 02:AB7D: 20 96 A0  JSR sub_A096
bra_AB80:
C - - - - - 0x00AB90 02:AB80: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00AB93 02:AB83: 0A        ASL
C - - - - - 0x00AB94 02:AB84: A8        TAY
bra_AB85:
C - - - - - 0x00AB95 02:AB85: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00AB98 02:AB88: 29 7C     AND #$7C
C - - - - - 0x00AB9A 02:AB8A: 85 1B     STA ram_001B
C - - - - - 0x00AB9C 02:AB8C: A9 00     LDA #$00
C - - - - - 0x00AB9E 02:AB8E: 46 1B     LSR ram_001B
C - - - - - 0x00ABA0 02:AB90: 6A        ROR
C - - - - - 0x00ABA1 02:AB91: 46 1B     LSR ram_001B
C - - - - - 0x00ABA3 02:AB93: 6A        ROR
C - - - - - 0x00ABA4 02:AB94: 46 1B     LSR ram_001B
C - - - - - 0x00ABA6 02:AB96: 6A        ROR
C - - - - - 0x00ABA7 02:AB97: 85 1A     STA ram_001A
C - - - - - 0x00ABA9 02:AB99: B5 CD     LDA ram_00CD,X
C - - - - - 0x00ABAB 02:AB9B: 29 01     AND #$01
C - - - - - 0x00ABAD 02:AB9D: F0 08     BEQ bra_ABA7
C - - - - - 0x00ABAF 02:AB9F: 46 1B     LSR ram_001B
C - - - - - 0x00ABB1 02:ABA1: 66 1A     ROR ram_001A
C - - - - - 0x00ABB3 02:ABA3: 46 1B     LSR ram_001B
C - - - - - 0x00ABB5 02:ABA5: 66 1A     ROR ram_001A
bra_ABA7:
C - - - - - 0x00ABB7 02:ABA7: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00ABBA 02:ABAA: 30 28     BMI bra_ABD4
C - - - - - 0x00ABBC 02:ABAC: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00ABBF 02:ABAF: C9 08     CMP #$08
C - - - - - 0x00ABC1 02:ABB1: B0 05     BCS bra_ABB8
C - - - - - 0x00ABC3 02:ABB3: A9 08     LDA #$08
C - - - - - 0x00ABC5 02:ABB5: 9D 68 06  STA ram_obj_pos_Y,X
bra_ABB8:
C - - - - - 0x00ABC8 02:ABB8: B9 CE AC  LDA tbl_ACCE,Y
C - - - - - 0x00ABCB 02:ABBB: 38        SEC
C - - - - - 0x00ABCC 02:ABBC: E5 1A     SBC ram_001A
C - - - - - 0x00ABCE 02:ABBE: 85 1A     STA ram_001A
C - - - - - 0x00ABD0 02:ABC0: B9 CF AC  LDA tbl_ACCE + $01,Y
C - - - - - 0x00ABD3 02:ABC3: E5 1B     SBC ram_001B
C - - - - - 0x00ABD5 02:ABC5: 85 1B     STA ram_001B
C - - - - - 0x00ABD7 02:ABC7: 10 31     BPL bra_ABFA
C - - - - - 0x00ABD9 02:ABC9: 20 96 A0  JSR sub_A096
C - - - - - 0x00ABDC 02:ABCC: A9 00     LDA #$00
C - - - - - 0x00ABDE 02:ABCE: 85 1A     STA ram_001A
C - - - - - 0x00ABE0 02:ABD0: 85 1B     STA ram_001B
C - - - - - 0x00ABE2 02:ABD2: F0 26     BEQ bra_ABFA    ; jmp
bra_ABD4:
C - - - - - 0x00ABE4 02:ABD4: B9 CF AC  LDA tbl_ACCE + $01,Y
C - - - - - 0x00ABE7 02:ABD7: C5 1B     CMP ram_001B
C - - - - - 0x00ABE9 02:ABD9: D0 0D     BNE bra_ABE8
C - - - - - 0x00ABEB 02:ABDB: B9 CE AC  LDA tbl_ACCE,Y
C - - - - - 0x00ABEE 02:ABDE: C5 1A     CMP ram_001A
C - - - - - 0x00ABF0 02:ABE0: B0 0F     BCS bra_ABF1
C - - - - - 0x00ABF2 02:ABE2: B9 CF AC  LDA tbl_ACCE + $01,Y
C - - - - - 0x00ABF5 02:ABE5: 4C EA AB  JMP loc_ABEA
bra_ABE8:
C - - - - - 0x00ABF8 02:ABE8: B0 07     BCS bra_ABF1
loc_ABEA:
C D 1 - - - 0x00ABFA 02:ABEA: 85 1B     STA ram_001B
C - - - - - 0x00ABFC 02:ABEC: B9 CE AC  LDA tbl_ACCE,Y
C - - - - - 0x00ABFF 02:ABEF: 85 1A     STA ram_001A
bra_ABF1:
C - - - - - 0x00AC01 02:ABF1: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AC04 02:ABF4: 29 09     AND #$09
C - - - - - 0x00AC06 02:ABF6: D0 26     BNE bra_AC1E
C - - - - - 0x00AC08 02:ABF8: F0 11     BEQ bra_AC0B    ; jmp
bra_ABFA:
C - - - - - 0x00AC0A 02:ABFA: A5 1A     LDA ram_001A
C - - - - - 0x00AC0C 02:ABFC: 49 FF     EOR #$FF
C - - - - - 0x00AC0E 02:ABFE: 18        CLC
C - - - - - 0x00AC0F 02:ABFF: 69 01     ADC #< $0001
C - - - - - 0x00AC11 02:AC01: 85 1A     STA ram_001A
C - - - - - 0x00AC13 02:AC03: A5 1B     LDA ram_001B
C - - - - - 0x00AC15 02:AC05: 49 FF     EOR #$FF
C - - - - - 0x00AC17 02:AC07: 69 00     ADC #> $0001
C - - - - - 0x00AC19 02:AC09: 85 1B     STA ram_001B
bra_AC0B:
C - - - - - 0x00AC1B 02:AC0B: A6 1F     LDX ram_001F
C - - - - - 0x00AC1D 02:AC0D: FE B4 07  INC ram_07B4_unk,X
C - - - - - 0x00AC20 02:AC10: D0 03     BNE bra_AC15
- - - - - - 0x00AC22 02:AC12: DE B4 07  DEC ram_07B4_unk,X
bra_AC15:
C - - - - - 0x00AC25 02:AC15: A9 00     LDA #$00
C - - - - - 0x00AC27 02:AC17: 85 18     STA ram_0018
C - - - - - 0x00AC29 02:AC19: 85 19     STA ram_0019
C - - - - - 0x00AC2B 02:AC1B: 4C 69 AE  JMP loc_AE69
bra_AC1E:
C - - - - - 0x00AC2E 02:AC1E: 29 08     AND #$08
C - - - - - 0x00AC30 02:AC20: F0 05     BEQ bra_AC27
C - - - - - 0x00AC32 02:AC22: A9 1C     LDA #con_music_1C
C - - - - - 0x00AC34 02:AC24: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_AC27:
C - - - - - 0x00AC37 02:AC27: A6 1F     LDX ram_001F
C - - - - - 0x00AC39 02:AC29: B5 CD     LDA ram_00CD,X
C - - - - - 0x00AC3B 02:AC2B: 29 FC     AND #$FC
C - - - - - 0x00AC3D 02:AC2D: 95 CD     STA ram_00CD,X
C - - - - - 0x00AC3F 02:AC2F: 20 92 A0  JSR sub_A092
C - - - - - 0x00AC42 02:AC32: A9 BF     LDA #$BF
C - - - - - 0x00AC44 02:AC34: 3D AA 07  AND ram_07AA_unk,X
C - - - - - 0x00AC47 02:AC37: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00AC4A 02:AC3A: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AC4D 02:AC3D: 29 08     AND #$08
C - - - - - 0x00AC4F 02:AC3F: D0 2C     BNE bra_AC6D
C - - - - - 0x00AC51 02:AC41: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00AC54 02:AC44: D0 05     BNE bra_AC4B
C - - - - - 0x00AC56 02:AC46: A9 06     LDA #con_music_06
C - - - - - 0x00AC58 02:AC48: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
bra_AC4B:
C - - - - - 0x00AC5B 02:AC4B: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AC5E 02:AC4E: 29 10     AND #$10
C - - - - - 0x00AC60 02:AC50: D0 1B     BNE bra_AC6D
C - - - - - 0x00AC62 02:AC52: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00AC65 02:AC55: D0 16     BNE bra_AC6D
C - - - - - 0x00AC67 02:AC57: A5 D0     LDA ram_00D0
C - - - - - 0x00AC69 02:AC59: D0 12     BNE bra_AC6D
C - - - - - 0x00AC6B 02:AC5B: A5 64     LDA ram_0064
C - - - - - 0x00AC6D 02:AC5D: 29 07     AND #$07
C - - - - - 0x00AC6F 02:AC5F: 85 02     STA ram_0002
C - - - - - 0x00AC71 02:AC61: 18        CLC
C - - - - - 0x00AC72 02:AC62: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00AC75 02:AC65: 29 F8     AND #$F8
C - - - - - 0x00AC77 02:AC67: 38        SEC
C - - - - - 0x00AC78 02:AC68: E5 02     SBC ram_0002
C - - - - - 0x00AC7A 02:AC6A: 9D 68 06  STA ram_obj_pos_Y,X
bra_AC6D:
loc_AC6D:
C D 1 - - - 0x00AC7D 02:AC6D: 20 0A A6  JSR sub_A60A
C - - - - - 0x00AC80 02:AC70: F0 4F     BEQ bra_ACC1_RTS
; player invincibility timer
C - - - - - 0x00AC82 02:AC72: A9 5F     LDA #$5F
C - - - - - 0x00AC84 02:AC74: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00AC87 02:AC77: A9 00     LDA #$00
C - - - - - 0x00AC89 02:AC79: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00AC8C 02:AC7C: BC 0A 07  LDY ram_070A_obj,X
C - - - - - 0x00AC8F 02:AC7F: C8        INY
C - - - - - 0x00AC90 02:AC80: 98        TYA
C - - - - - 0x00AC91 02:AC81: 20 B9 A7  JSR sub_A7B9
loc_AC84:
C D 1 - - - 0x00AC94 02:AC84: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00AC97 02:AC87: 95 B1     STA ram_current_player,X
C - - - - - 0x00AC99 02:AC89: A8        TAY
C - - - - - 0x00AC9A 02:AC8A: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00AC9D 02:AC8D: 29 F0     AND #$F0
C - - - - - 0x00AC9F 02:AC8F: 99 7F 00  STA ram_player_stats,Y
C - - - - - 0x00ACA2 02:AC92: C9 30     CMP #$30
C - - - - - 0x00ACA4 02:AC94: B0 28     BCS bra_ACBE
C - - - - - 0x00ACA6 02:AC96: 20 76 E0  JSR sub_0x01E086
C - - - - - 0x00ACA9 02:AC99: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00ACAC 02:AC9C: A5 0A     LDA ram_000A
C - - - - - 0x00ACAE 02:AC9E: 99 B3 00  STA ram_lives,Y
C - - - - - 0x00ACB1 02:ACA1: D0 1E     BNE bra_ACC1_RTS
C - - - - - 0x00ACB3 02:ACA3: 8A        TXA
C - - - - - 0x00ACB4 02:ACA4: 49 01     EOR #$01
C - - - - - 0x00ACB6 02:ACA6: A8        TAY
C - - - - - 0x00ACB7 02:ACA7: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00ACBA 02:ACAA: F0 16     BEQ bra_ACC2
- - - - - - 0x00ACBC 02:ACAC: B9 B1 00  LDA ram_current_player,Y
- - - - - - 0x00ACBF 02:ACAF: 29 0F     AND #$0F
- - - - - - 0x00ACC1 02:ACB1: A8        TAY
- - - - - - 0x00ACC2 02:ACB2: B9 7F 00  LDA ram_player_stats,Y
- - - - - - 0x00ACC5 02:ACB5: C9 30     CMP #$30
- - - - - - 0x00ACC7 02:ACB7: B0 09     BCS bra_ACC2
- - - - - - 0x00ACC9 02:ACB9: B9 B3 00  LDA ram_lives,Y
- - - - - - 0x00ACCC 02:ACBC: F0 04     BEQ bra_ACC2
bra_ACBE:
loc_ACBE:
C D 1 - - - 0x00ACCE 02:ACBE: 20 4F F6  JSR sub_0x01F65F
bra_ACC1_RTS:
C - - - - - 0x00ACD1 02:ACC1: 60        RTS
bra_ACC2:
C - - - - - 0x00ACD2 02:ACC2: 20 62 D0  JSR sub_0x01D072
C - - - - - 0x00ACD5 02:ACC5: A9 05     LDA #$05
C - - - - - 0x00ACD7 02:ACC7: 85 20     STA ram_script_hi
C - - - - - 0x00ACD9 02:ACC9: A9 30     LDA #$30
C - - - - - 0x00ACDB 02:ACCB: 85 4A     STA ram_004A
C - - - - - 0x00ACDD 02:ACCD: 60        RTS



tbl_ACCE:
- D 1 - - - 0x00ACDE 02:ACCE: C0        .byte $C0, $03   ; 00
- D 1 - - - 0x00ACE0 02:ACD0: 80        .byte $80, $03   ; 01
- D 1 - - - 0x00ACE2 02:ACD2: 40        .byte $40, $03   ; 02
- D 1 - - - 0x00ACE4 02:ACD4: A0        .byte $A0, $03   ; 03
- D 1 - - - 0x00ACE6 02:ACD6: 00        .byte $00, $02   ; 04


; bzk garbage?
- - - - - - 0x00ACE8 02:ACD8: 30        .byte $30   ; 
- - - - - - 0x00ACE9 02:ACD9: 2C        .byte $2C   ; 
- - - - - - 0x00ACEA 02:ACDA: 34        .byte $34   ; 
- - - - - - 0x00ACEB 02:ACDB: 18        .byte $18   ; 



sub_ACDC:
C - - - - - 0x00ACEC 02:ACDC: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00ACEF 02:ACDF: A8        TAY
C - - - - - 0x00ACF0 02:ACE0: B9 7F 00  LDA ram_player_stats,Y
C - - - - - 0x00ACF3 02:ACE3: 29 F0     AND #$F0
C - - - - - 0x00ACF5 02:ACE5: C9 30     CMP #$30
C - - - - - 0x00ACF7 02:ACE7: 90 0C     BCC bra_ACF5_RTS
- - - - - - 0x00ACF9 02:ACE9: BD C8 07  LDA ram_07C8_unk,X
- - - - - - 0x00ACFC 02:ACEC: 29 1F     AND #$1F
- - - - - - 0x00ACFE 02:ACEE: C9 1C     CMP #$1C
- - - - - - 0x00AD00 02:ACF0: D0 03     BNE bra_ACF5_RTS
- - - - - - 0x00AD02 02:ACF2: 4C BE AC  JMP loc_ACBE
bra_ACF5_RTS:
C - - - - - 0x00AD05 02:ACF5: 60        RTS



sub_ACF6:
C - - - - - 0x00AD06 02:ACF6: 84 00     STY ram_0000
C - - - - - 0x00AD08 02:ACF8: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00AD0B 02:ACFB: F0 0D     BEQ bra_AD0A
C - - - - - 0x00AD0D 02:ACFD: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00AD10 02:AD00: D0 31     BNE bra_AD33
C - - - - - 0x00AD12 02:AD02: 20 AA A1  JSR sub_A1AA
C - - - - - 0x00AD15 02:AD05: 18        CLC
C - - - - - 0x00AD16 02:AD06: 69 01     ADC #$01
C - - - - - 0x00AD18 02:AD08: D0 2C     BNE bra_AD36
bra_AD0A:
C - - - - - 0x00AD1A 02:AD0A: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00AD1D 02:AD0D: D0 1F     BNE bra_AD2E
C - - - - - 0x00AD1F 02:AD0F: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00AD22 02:AD12: F0 0B     BEQ bra_AD1F
C - - - - - 0x00AD24 02:AD14: A8        TAY
C - - - - - 0x00AD25 02:AD15: 88        DEY
C - - - - - 0x00AD26 02:AD16: F0 1B     BEQ bra_AD33
C - - - - - 0x00AD28 02:AD18: B9 AE F5  LDA tbl_0x01F5BE,Y
C - - - - - 0x00AD2B 02:AD1B: 29 C6     AND #$C6
C - - - - - 0x00AD2D 02:AD1D: D0 14     BNE bra_AD33
bra_AD1F:
C - - - - - 0x00AD2F 02:AD1F: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00AD32 02:AD22: 29 10     AND #$10
C - - - - - 0x00AD34 02:AD24: F0 04     BEQ bra_AD2A
C - - - - - 0x00AD36 02:AD26: A9 07     LDA #$07
C - - - - - 0x00AD38 02:AD28: D0 0C     BNE bra_AD36    ; jmp
bra_AD2A:
C - - - - - 0x00AD3A 02:AD2A: A9 03     LDA #$03
C - - - - - 0x00AD3C 02:AD2C: D0 08     BNE bra_AD36    ; jmp
bra_AD2E:
C - - - - - 0x00AD3E 02:AD2E: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00AD41 02:AD31: F0 EC     BEQ bra_AD1F
bra_AD33:
C - - - - - 0x00AD43 02:AD33: BD AA 07  LDA ram_07AA_unk,X
bra_AD36:
C - - - - - 0x00AD46 02:AD36: 29 0F     AND #$0F
C - - - - - 0x00AD48 02:AD38: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00AD4B 02:AD3B: A9 00     LDA #$00
C - - - - - 0x00AD4D 02:AD3D: 85 0A     STA ram_000A
C - - - - - 0x00AD4F 02:AD3F: A5 00     LDA ram_0000
C - - - - - 0x00AD51 02:AD41: 85 0B     STA ram_000B
C - - - - - 0x00AD53 02:AD43: A9 01     LDA #$01
C - - - - - 0x00AD55 02:AD45: 85 0C     STA ram_000C
C - - - - - 0x00AD57 02:AD47: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x00AD5A 02:AD4A: B9 51 AD  LDA tbl_AD51,Y
C - - - - - 0x00AD5D 02:AD4D: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00AD60 02:AD50: 60        RTS



tbl_AD51:
- - - - - - 0x00AD61 02:AD51: 00        .byte $00   ; 00
- D 1 - - - 0x00AD62 02:AD52: C0        .byte $C0   ; 01
- D 1 - - - 0x00AD63 02:AD53: E0        .byte $E0   ; 02
- D 1 - - - 0x00AD64 02:AD54: 00        .byte $00   ; 03
- D 1 - - - 0x00AD65 02:AD55: 20        .byte $20   ; 04
- D 1 - - - 0x00AD66 02:AD56: 40        .byte $40   ; 05
- D 1 - - - 0x00AD67 02:AD57: 60        .byte $60   ; 06
- D 1 - - - 0x00AD68 02:AD58: 80        .byte $80   ; 07
- D 1 - - - 0x00AD69 02:AD59: A0        .byte $A0   ; 08



sub_AD5A:
C - - - - - 0x00AD6A 02:AD5A: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AD6C 02:AD5C: 10 46     BPL bra_ADA4
C - - - - - 0x00AD6E 02:AD5E: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00AD71 02:AD61: A4 75     LDY ram_stage
C - - - - - 0x00AD73 02:AD63: F0 03     BEQ bra_AD68
C - - - - - 0x00AD75 02:AD65: 18        CLC
C - - - - - 0x00AD76 02:AD66: 69 09     ADC #$09
bra_AD68:
C - - - - - 0x00AD78 02:AD68: A8        TAY
C - - - - - 0x00AD79 02:AD69: A5 69     LDA ram_0069
C - - - - - 0x00AD7B 02:AD6B: 05 6A     ORA ram_006A
C - - - - - 0x00AD7D 02:AD6D: D0 2C     BNE bra_AD9B
C - - - - - 0x00AD7F 02:AD6F: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00AD82 02:AD72: C9 11     CMP #$11
C - - - - - 0x00AD84 02:AD74: 90 0F     BCC bra_AD85
C - - - - - 0x00AD86 02:AD76: C9 F0     CMP #$F0
C - - - - - 0x00AD88 02:AD78: B0 14     BCS bra_AD8E
C - - - - - 0x00AD8A 02:AD7A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00AD8D 02:AD7D: C9 11     CMP #$11
C - - - - - 0x00AD8F 02:AD7F: 90 0D     BCC bra_AD8E
C - - - - - 0x00AD91 02:AD81: C9 B8     CMP #$B8
C - - - - - 0x00AD93 02:AD83: 90 16     BCC bra_AD9B
bra_AD85:
- - - - - - 0x00AD95 02:AD85: 20 A2 A0  JSR sub_A0A2
- - - - - - 0x00AD98 02:AD88: C9 05     CMP #$05
- - - - - - 0x00AD9A 02:AD8A: B0 09     BCS bra_AD95
- - - - - - 0x00AD9C 02:AD8C: 90 0D     BCC bra_AD9B    ; jmp
bra_AD8E:
- - - - - - 0x00AD9E 02:AD8E: 20 A2 A0  JSR sub_A0A2
- - - - - - 0x00ADA1 02:AD91: C9 06     CMP #$06
- - - - - - 0x00ADA3 02:AD93: B0 06     BCS bra_AD9B
bra_AD95:
- - - - - - 0x00ADA5 02:AD95: A0 00     LDY #$00
- - - - - - 0x00ADA7 02:AD97: 98        TYA
- - - - - - 0x00ADA8 02:AD98: 9D EA 07  STA ram_07EA,X
bra_AD9B:
C - - - - - 0x00ADAB 02:AD9B: B9 22 AE  LDA tbl_AE22,Y
C - - - - - 0x00ADAE 02:AD9E: 20 13 AE  JSR sub_AE13
C - - - - - 0x00ADB1 02:ADA1: 4C AA AD  JMP loc_ADAA
bra_ADA4:
C - - - - - 0x00ADB4 02:ADA4: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00ADB7 02:ADA7: 20 13 AE  JSR sub_AE13
loc_ADAA:
C D 1 - - - 0x00ADBA 02:ADAA: B5 BE     LDA ram_00BE,X
C - - - - - 0x00ADBC 02:ADAC: 29 10     AND #$10
C - - - - - 0x00ADBE 02:ADAE: D0 05     BNE bra_ADB5
C - - - - - 0x00ADC0 02:ADB0: 20 43 A0  JSR sub_A043_00B1x_AND_0F
C - - - - - 0x00ADC3 02:ADB3: 0A        ASL
C - - - - - 0x00ADC4 02:ADB4: 0A        ASL
bra_ADB5:
C - - - - - 0x00ADC5 02:ADB5: 85 1C     STA ram_001C
C - - - - - 0x00ADC7 02:ADB7: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00ADCA 02:ADBA: D0 09     BNE bra_ADC5
C - - - - - 0x00ADCC 02:ADBC: 20 A4 A1  JSR sub_A1A4
C - - - - - 0x00ADCF 02:ADBF: F0 04     BEQ bra_ADC5
C - - - - - 0x00ADD1 02:ADC1: A9 00     LDA #$00
C - - - - - 0x00ADD3 02:ADC3: F0 02     BEQ bra_ADC7
bra_ADC5:
C - - - - - 0x00ADD5 02:ADC5: A5 1A     LDA ram_001A
bra_ADC7:
C - - - - - 0x00ADD7 02:ADC7: 20 DD AD  JSR sub_ADDD
C - - - - - 0x00ADDA 02:ADCA: A5 18     LDA ram_0018
C - - - - - 0x00ADDC 02:ADCC: 85 1A     STA ram_001A
C - - - - - 0x00ADDE 02:ADCE: A5 19     LDA ram_0019
C - - - - - 0x00ADE0 02:ADD0: 85 1B     STA ram_001B
C - - - - - 0x00ADE2 02:ADD2: A5 1D     LDA ram_001D
C - - - - - 0x00ADE4 02:ADD4: 20 DD AD  JSR sub_ADDD
C - - - - - 0x00ADE7 02:ADD7: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00ADEA 02:ADDA: 4C 36 AE  JMP loc_AE36



sub_ADDD:
C - - - - - 0x00ADED 02:ADDD: F0 2E     BEQ bra_AE0D
C - - - - - 0x00ADEF 02:ADDF: 10 1A     BPL bra_ADFB
C - - - - - 0x00ADF1 02:ADE1: 49 FF     EOR #$FF
C - - - - - 0x00ADF3 02:ADE3: 18        CLC
C - - - - - 0x00ADF4 02:ADE4: 65 1C     ADC ram_001C
C - - - - - 0x00ADF6 02:ADE6: A8        TAY
C - - - - - 0x00ADF7 02:ADE7: B9 7B F6  LDA tbl_0x01F68B,Y
C - - - - - 0x00ADFA 02:ADEA: 49 FF     EOR #$FF
C - - - - - 0x00ADFC 02:ADEC: 18        CLC
C - - - - - 0x00ADFD 02:ADED: 69 01     ADC #< $0001
C - - - - - 0x00ADFF 02:ADEF: 85 18     STA ram_0018
C - - - - - 0x00AE01 02:ADF1: B9 7C F6  LDA tbl_0x01F68B + $01,Y
C - - - - - 0x00AE04 02:ADF4: 49 FF     EOR #$FF
C - - - - - 0x00AE06 02:ADF6: 69 00     ADC #> $0001
C - - - - - 0x00AE08 02:ADF8: 85 19     STA ram_0019
C - - - - - 0x00AE0A 02:ADFA: 60        RTS
bra_ADFB:
C - - - - - 0x00AE0B 02:ADFB: 38        SEC
C - - - - - 0x00AE0C 02:ADFC: E9 02     SBC #$02
C - - - - - 0x00AE0E 02:ADFE: 18        CLC
C - - - - - 0x00AE0F 02:ADFF: 65 1C     ADC ram_001C
C - - - - - 0x00AE11 02:AE01: A8        TAY
C - - - - - 0x00AE12 02:AE02: B9 7B F6  LDA tbl_0x01F68B,Y
C - - - - - 0x00AE15 02:AE05: 85 18     STA ram_0018
C - - - - - 0x00AE17 02:AE07: B9 7C F6  LDA tbl_0x01F68B + $01,Y
bra_AE0A:
C - - - - - 0x00AE1A 02:AE0A: 85 19     STA ram_0019
C - - - - - 0x00AE1C 02:AE0C: 60        RTS
bra_AE0D:
C - - - - - 0x00AE1D 02:AE0D: A9 00     LDA #$00
C - - - - - 0x00AE1F 02:AE0F: 85 18     STA ram_0018
C - - - - - 0x00AE21 02:AE11: F0 F7     BEQ bra_AE0A    ; jmp



sub_AE13:
C - - - - - 0x00AE23 02:AE13: 29 0F     AND #$0F
C - - - - - 0x00AE25 02:AE15: 0A        ASL
C - - - - - 0x00AE26 02:AE16: A8        TAY
C - - - - - 0x00AE27 02:AE17: B9 69 F6  LDA tbl_0x01F679,Y
C - - - - - 0x00AE2A 02:AE1A: 85 1D     STA ram_001D
C - - - - - 0x00AE2C 02:AE1C: B9 6A F6  LDA tbl_0x01F679 + $01,Y
C - - - - - 0x00AE2F 02:AE1F: 85 1A     STA ram_001A
C - - - - - 0x00AE31 02:AE21: 60        RTS



tbl_AE22:
- D 1 - - - 0x00AE32 02:AE22: 00        .byte $00   ; 00
- - - - - - 0x00AE33 02:AE23: 00        .byte $00   ; 01
- - - - - - 0x00AE34 02:AE24: 04        .byte $04   ; 02
- D 1 - - - 0x00AE35 02:AE25: 04        .byte $04   ; 03
- - - - - - 0x00AE36 02:AE26: 04        .byte $04   ; 04
- - - - - - 0x00AE37 02:AE27: 00        .byte $00   ; 05
- - - - - - 0x00AE38 02:AE28: 08        .byte $08   ; 06
- D 1 - - - 0x00AE39 02:AE29: 08        .byte $08   ; 07
- - - - - - 0x00AE3A 02:AE2A: 08        .byte $08   ; 08
- D 1 - - - 0x00AE3B 02:AE2B: 00        .byte $00   ; 09
- D 1 - - - 0x00AE3C 02:AE2C: 00        .byte $00   ; 0A
- D 1 - - - 0x00AE3D 02:AE2D: 02        .byte $02   ; 0B
- D 1 - - - 0x00AE3E 02:AE2E: 02        .byte $02   ; 0C
- D 1 - - - 0x00AE3F 02:AE2F: 02        .byte $02   ; 0D
- - - - - - 0x00AE40 02:AE30: 00        .byte $00   ; 0E
- - - - - - 0x00AE41 02:AE31: 06        .byte $06   ; 0F
- D 1 - - - 0x00AE42 02:AE32: 06        .byte $06   ; 10
- - - - - - 0x00AE43 02:AE33: 06        .byte $06   ; 11



loc_AE34:
ofs_006_0x00AE44_09:
C D 1 J - - 0x00AE44 02:AE34: A9 00     LDA #$00
loc_AE36:
C D 1 - - - 0x00AE46 02:AE36: 85 1D     STA ram_001D
loc_AE38:
C D 1 - - - 0x00AE48 02:AE38: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AE4A 02:AE3A: 30 06     BMI bra_AE42
C - - - - - 0x00AE4C 02:AE3C: A5 1D     LDA ram_001D
C - - - - - 0x00AE4E 02:AE3E: 29 02     AND #$02
C - - - - - 0x00AE50 02:AE40: D0 11     BNE bra_AE53
bra_AE42:
C - - - - - 0x00AE52 02:AE42: A5 18     LDA ram_0018
C - - - - - 0x00AE54 02:AE44: 18        CLC
C - - - - - 0x00AE55 02:AE45: 7D E6 07  ADC ram_07E6,X
C - - - - - 0x00AE58 02:AE48: 9D E6 07  STA ram_07E6,X
C - - - - - 0x00AE5B 02:AE4B: A5 19     LDA ram_0019
C - - - - - 0x00AE5D 02:AE4D: 7D E8 07  ADC ram_07E8,X
C - - - - - 0x00AE60 02:AE50: 9D E8 07  STA ram_07E8,X
bra_AE53:
C - - - - - 0x00AE63 02:AE53: 20 D1 F6  JSR sub_0x01F6E1
C - - - - - 0x00AE66 02:AE56: 90 22     BCC bra_AE7A_RTS
C - - - - - 0x00AE68 02:AE58: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00AE6B 02:AE5B: 29 01     AND #$01
C - - - - - 0x00AE6D 02:AE5D: D0 0A     BNE bra_AE69
C - - - - - 0x00AE6F 02:AE5F: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AE71 02:AE61: 30 06     BMI bra_AE69
C - - - - - 0x00AE73 02:AE63: A5 1D     LDA ram_001D
C - - - - - 0x00AE75 02:AE65: 29 05     AND #$05
C - - - - - 0x00AE77 02:AE67: D0 11     BNE bra_AE7A_RTS
bra_AE69:
loc_AE69:
C D 1 - - - 0x00AE79 02:AE69: A5 1A     LDA ram_001A
C - - - - - 0x00AE7B 02:AE6B: 18        CLC
C - - - - - 0x00AE7C 02:AE6C: 7D EA 07  ADC ram_07EA,X
C - - - - - 0x00AE7F 02:AE6F: 9D EA 07  STA ram_07EA,X
C - - - - - 0x00AE82 02:AE72: A5 1B     LDA ram_001B
C - - - - - 0x00AE84 02:AE74: 7D EC 07  ADC ram_07EC,X
C - - - - - 0x00AE87 02:AE77: 9D EC 07  STA ram_07EC,X
bra_AE7A_RTS:
C - - - - - 0x00AE8A 02:AE7A: 60        RTS



loc_AE7B:
C D 1 - - - 0x00AE8B 02:AE7B: A5 75     LDA ram_stage
C - - - - - 0x00AE8D 02:AE7D: C9 03     CMP #$03
C - - - - - 0x00AE8F 02:AE7F: D0 6E     BNE bra_AEEF_RTS
C - - - - - 0x00AE91 02:AE81: AD 40 03  LDA ram_0340
C - - - - - 0x00AE94 02:AE84: 30 69     BMI bra_AEEF_RTS
C - - - - - 0x00AE96 02:AE86: C9 02     CMP #$02
C - - - - - 0x00AE98 02:AE88: F0 65     BEQ bra_AEEF_RTS
C - - - - - 0x00AE9A 02:AE8A: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00AE9D 02:AE8D: 85 03     STA ram_0003
C - - - - - 0x00AE9F 02:AE8F: 20 0F F6  JSR sub_0x01F61F
C - - - - - 0x00AEA2 02:AE92: A4 02     LDY ram_0002
C - - - - - 0x00AEA4 02:AE94: B9 DB B1  LDA tbl_B1DE - $03,Y
C - - - - - 0x00AEA7 02:AE97: D0 56     BNE bra_AEEF_RTS
C - - - - - 0x00AEA9 02:AE99: A5 3B     LDA ram_003B
C - - - - - 0x00AEAB 02:AE9B: C9 01     CMP #$01
C - - - - - 0x00AEAD 02:AE9D: F0 50     BEQ bra_AEEF_RTS
C - - - - - 0x00AEAF 02:AE9F: A9 40     LDA #$40
C - - - - - 0x00AEB1 02:AEA1: 85 18     STA ram_0018
C - - - - - 0x00AEB3 02:AEA3: A9 00     LDA #$00
C - - - - - 0x00AEB5 02:AEA5: 85 19     STA ram_0019
C - - - - - 0x00AEB7 02:AEA7: 85 1B     STA ram_001B
C - - - - - 0x00AEB9 02:AEA9: 85 1A     STA ram_001A
C - - - - - 0x00AEBB 02:AEAB: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00AEBE 02:AEAE: 4C 36 AE  JMP loc_AE36



loc_AEB1:
C D 1 - - - 0x00AEC1 02:AEB1: A5 75     LDA ram_stage
C - - - - - 0x00AEC3 02:AEB3: C9 03     CMP #$03
C - - - - - 0x00AEC5 02:AEB5: D0 38     BNE bra_AEEF_RTS
C - - - - - 0x00AEC7 02:AEB7: AD 40 03  LDA ram_0340
C - - - - - 0x00AECA 02:AEBA: 30 33     BMI bra_AEEF_RTS
C - - - - - 0x00AECC 02:AEBC: C9 02     CMP #$02
C - - - - - 0x00AECE 02:AEBE: F0 2F     BEQ bra_AEEF_RTS
C - - - - - 0x00AED0 02:AEC0: A9 E7     LDA #$E7
C - - - - - 0x00AED2 02:AEC2: CD 4E 06  CMP ram_obj_pos_X
C - - - - - 0x00AED5 02:AEC5: 90 28     BCC bra_AEEF_RTS
C - - - - - 0x00AED7 02:AEC7: CD 4F 06  CMP ram_obj_pos_X + $01
C - - - - - 0x00AEDA 02:AECA: 90 23     BCC bra_AEEF_RTS
C - - - - - 0x00AEDC 02:AECC: A9 00     LDA #$00
C - - - - - 0x00AEDE 02:AECE: 85 D5     STA ram_00D5
C - - - - - 0x00AEE0 02:AED0: AD 58 03  LDA ram_0358
C - - - - - 0x00AEE3 02:AED3: D0 08     BNE bra_AEDD
C - - - - - 0x00AEE5 02:AED5: A9 08     LDA #$08
C - - - - - 0x00AEE7 02:AED7: 8D 58 03  STA ram_0358
C - - - - - 0x00AEEA 02:AEDA: EE 57 03  INC ram_0357
bra_AEDD:
C - - - - - 0x00AEED 02:AEDD: AD 57 03  LDA ram_0357
C - - - - - 0x00AEF0 02:AEE0: 29 07     AND #$07
C - - - - - 0x00AEF2 02:AEE2: 8D 57 03  STA ram_0357
C - - - - - 0x00AEF5 02:AEE5: A8        TAY
C - - - - - 0x00AEF6 02:AEE6: B9 9C B2  LDA tbl_B29C,Y
C - - - - - 0x00AEF9 02:AEE9: 10 02     BPL bra_AEED
C - - - - - 0x00AEFB 02:AEEB: C6 D5     DEC ram_00D5
bra_AEED:
C - - - - - 0x00AEFD 02:AEED: 85 D4     STA ram_00D4
bra_AEEF_RTS:
C - - - - - 0x00AEFF 02:AEEF: 60        RTS



sub_AEF0:
ofs_006_0x00AF00_0B:
C - - - - - 0x00AF00 02:AEF0: E0 02     CPX #$02
C - - - - - 0x00AF02 02:AEF2: B0 10     BCS bra_AF04
C - - - - - 0x00AF04 02:AEF4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AF06 02:AEF6: 29 EF     AND #$EF
C - - - - - 0x00AF08 02:AEF8: 95 BE     STA ram_00BE,X
C - - - - - 0x00AF0A 02:AEFA: 29 80     AND #$80
C - - - - - 0x00AF0C 02:AEFC: F0 06     BEQ bra_AF04
C - - - - - 0x00AF0E 02:AEFE: 20 3A B0  JSR sub_B03A
C - - - - - 0x00AF11 02:AF01: 4C 0F AF  JMP loc_AF0F
bra_AF04:
C - - - - - 0x00AF14 02:AF04: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x00AF17 02:AF07: 49 FF     EOR #$FF
C - - - - - 0x00AF19 02:AF09: 2D 5A 03  AND ram_035A
C - - - - - 0x00AF1C 02:AF0C: 8D 5A 03  STA ram_035A
loc_AF0F:
C D 1 - - - 0x00AF1F 02:AF0F: A4 75     LDY ram_stage
C - - - - - 0x00AF21 02:AF11: C0 03     CPY #$03
C - - - - - 0x00AF23 02:AF13: B0 DA     BCS bra_AEEF_RTS
C - - - - - 0x00AF25 02:AF15: A4 88     LDY ram_x2_stage
C - - - - - 0x00AF27 02:AF17: B9 55 B1  LDA tbl_B155,Y
C - - - - - 0x00AF2A 02:AF1A: 85 00     STA ram_0000
C - - - - - 0x00AF2C 02:AF1C: B9 56 B1  LDA tbl_B155 + $01,Y
C - - - - - 0x00AF2F 02:AF1F: 85 01     STA ram_0001
C - - - - - 0x00AF31 02:AF21: A0 00     LDY #$00
C - - - - - 0x00AF33 02:AF23: B1 00     LDA (ram_0000),Y
C - - - - - 0x00AF35 02:AF25: 85 04     STA ram_0004
C - - - - - 0x00AF37 02:AF27: AD 42 03  LDA ram_0342
C - - - - - 0x00AF3A 02:AF2A: 85 05     STA ram_0005
C - - - - - 0x00AF3C 02:AF2C: A5 DD     LDA ram_00DD
C - - - - - 0x00AF3E 02:AF2E: 18        CLC
C - - - - - 0x00AF3F 02:AF2F: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00AF42 02:AF32: 85 03     STA ram_0003
C - - - - - 0x00AF44 02:AF34: 90 0C     BCC bra_AF42
C - - - - - 0x00AF46 02:AF36: 18        CLC
C - - - - - 0x00AF47 02:AF37: 69 10     ADC #$10
C - - - - - 0x00AF49 02:AF39: 85 03     STA ram_0003
C - - - - - 0x00AF4B 02:AF3B: A5 05     LDA ram_0005
C - - - - - 0x00AF4D 02:AF3D: 18        CLC
C - - - - - 0x00AF4E 02:AF3E: 65 04     ADC ram_0004
C - - - - - 0x00AF50 02:AF40: 85 05     STA ram_0005
bra_AF42:
C - - - - - 0x00AF52 02:AF42: A5 61     LDA ram_0061
C - - - - - 0x00AF54 02:AF44: 18        CLC
C - - - - - 0x00AF55 02:AF45: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00AF58 02:AF48: 85 06     STA ram_0006
C - - - - - 0x00AF5A 02:AF4A: 90 02     BCC bra_AF4E
C - - - - - 0x00AF5C 02:AF4C: E6 05     INC ram_0005
bra_AF4E:
C - - - - - 0x00AF5E 02:AF4E: A4 05     LDY ram_0005
C - - - - - 0x00AF60 02:AF50: C8        INY
C - - - - - 0x00AF61 02:AF51: B1 00     LDA (ram_0000),Y
C - - - - - 0x00AF63 02:AF53: F0 59     BEQ bra_AFAE
C - - - - - 0x00AF65 02:AF55: A8        TAY
C - - - - - 0x00AF66 02:AF56: B9 09 B0  LDA tbl_B009,Y
C - - - - - 0x00AF69 02:AF59: 85 07     STA ram_0007
C - - - - - 0x00AF6B 02:AF5B: B9 F1 AF  LDA tbl_AFF1,Y
C - - - - - 0x00AF6E 02:AF5E: 85 05     STA ram_0005
C - - - - - 0x00AF70 02:AF60: A9 00     LDA #$00
C - - - - - 0x00AF72 02:AF62: 85 02     STA ram_0002
bra_AF64_loop:
C - - - - - 0x00AF74 02:AF64: A5 05     LDA ram_0005
C - - - - - 0x00AF76 02:AF66: 0A        ASL
C - - - - - 0x00AF77 02:AF67: 0A        ASL
C - - - - - 0x00AF78 02:AF68: A8        TAY
C - - - - - 0x00AF79 02:AF69: B9 FC B1  LDA tbl_B1FC,Y
C - - - - - 0x00AF7C 02:AF6C: 38        SEC
C - - - - - 0x00AF7D 02:AF6D: E5 06     SBC ram_0006
C - - - - - 0x00AF7F 02:AF6F: B0 02     BCS bra_AF73
C - - - - - 0x00AF81 02:AF71: 49 FF     EOR #$FF
bra_AF73:
C - - - - - 0x00AF83 02:AF73: D9 FD B1  CMP tbl_B1FC + $01,Y
C - - - - - 0x00AF86 02:AF76: B0 15     BCS bra_AF8D
C - - - - - 0x00AF88 02:AF78: B9 FE B1  LDA tbl_B1FC + $02,Y
C - - - - - 0x00AF8B 02:AF7B: 38        SEC
C - - - - - 0x00AF8C 02:AF7C: E5 03     SBC ram_0003
C - - - - - 0x00AF8E 02:AF7E: B0 02     BCS bra_AF82
C - - - - - 0x00AF90 02:AF80: 49 FF     EOR #$FF
bra_AF82:
C - - - - - 0x00AF92 02:AF82: D9 FF B1  CMP tbl_B1FC + $03,Y
C - - - - - 0x00AF95 02:AF85: B0 06     BCS bra_AF8D
C - - - - - 0x00AF97 02:AF87: 20 B7 AF  JSR sub_AFB7
C - - - - - 0x00AF9A 02:AF8A: 4C 94 AF  JMP loc_AF94
bra_AF8D:
C - - - - - 0x00AF9D 02:AF8D: E0 02     CPX #$02
C - - - - - 0x00AF9F 02:AF8F: 90 03     BCC bra_AF94
C - - - - - 0x00AFA1 02:AF91: 20 AE AF  JSR sub_AFAE
bra_AF94:
loc_AF94:
C D 1 - - - 0x00AFA4 02:AF94: E6 05     INC ram_0005
C - - - - - 0x00AFA6 02:AF96: C6 07     DEC ram_0007
C - - - - - 0x00AFA8 02:AF98: D0 CA     BNE bra_AF64_loop
C - - - - - 0x00AFAA 02:AF9A: E0 02     CPX #$02
C - - - - - 0x00AFAC 02:AF9C: B0 0C     BCS bra_AFAA
C - - - - - 0x00AFAE 02:AF9E: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AFB0 02:AFA0: 29 02     AND #$02
C - - - - - 0x00AFB2 02:AFA2: D0 12     BNE bra_AFB6_RTS
C - - - - - 0x00AFB4 02:AFA4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00AFB6 02:AFA6: 29 FC     AND #$FC
C - - - - - 0x00AFB8 02:AFA8: 95 BE     STA ram_00BE,X
bra_AFAA:
C - - - - - 0x00AFBA 02:AFAA: A5 02     LDA ram_0002
C - - - - - 0x00AFBC 02:AFAC: D0 08     BNE bra_AFB6_RTS
bra_AFAE:
sub_AFAE:
C - - - - - 0x00AFBE 02:AFAE: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00AFC1 02:AFB1: 29 7F     AND #$7F
C - - - - - 0x00AFC3 02:AFB3: 9D 34 06  STA ram_obj_animation_hi,X
bra_AFB6_RTS:
C - - - - - 0x00AFC6 02:AFB6: 60        RTS



sub_AFB7:
C - - - - - 0x00AFC7 02:AFB7: A4 05     LDY ram_0005
C - - - - - 0x00AFC9 02:AFB9: B9 CA AF  LDA tbl_AFCA,Y
C - - - - - 0x00AFCC 02:AFBC: A8        TAY
C - - - - - 0x00AFCD 02:AFBD: B9 22 B0  LDA tbl_B022,Y
C - - - - - 0x00AFD0 02:AFC0: 85 00     STA ram_0000
C - - - - - 0x00AFD2 02:AFC2: B9 23 B0  LDA tbl_B022 + $01,Y
C - - - - - 0x00AFD5 02:AFC5: 85 01     STA ram_0001
C - - - - - 0x00AFD7 02:AFC7: 6C 00 00  JMP (ram_0000)



tbl_AFCA:
- D 1 - - - 0x00AFDA 02:AFCA: 00        .byte $00   ; 
- D 1 - - - 0x00AFDB 02:AFCB: 02        .byte $02   ; 
- D 1 - - - 0x00AFDC 02:AFCC: 02        .byte $02   ; 
- D 1 - - - 0x00AFDD 02:AFCD: 02        .byte $02   ; 
- D 1 - - - 0x00AFDE 02:AFCE: 02        .byte $02   ; 
- D 1 - - - 0x00AFDF 02:AFCF: 02        .byte $02   ; 
- D 1 - - - 0x00AFE0 02:AFD0: 02        .byte $02   ; 
- - - - - - 0x00AFE1 02:AFD1: 06        .byte $06   ; 
- - - - - - 0x00AFE2 02:AFD2: 08        .byte $08   ; 
- D 1 - - - 0x00AFE3 02:AFD3: 0E        .byte $0E   ; 
- - - - - - 0x00AFE4 02:AFD4: 06        .byte $06   ; 
- - - - - - 0x00AFE5 02:AFD5: 08        .byte $08   ; 
- - - - - - 0x00AFE6 02:AFD6: 0E        .byte $0E   ; 
- D 1 - - - 0x00AFE7 02:AFD7: 06        .byte $06   ; 
- D 1 - - - 0x00AFE8 02:AFD8: 08        .byte $08   ; 
- D 1 - - - 0x00AFE9 02:AFD9: 0E        .byte $0E   ; 
- D 1 - - - 0x00AFEA 02:AFDA: 06        .byte $06   ; 
- D 1 - - - 0x00AFEB 02:AFDB: 08        .byte $08   ; 
- D 1 - - - 0x00AFEC 02:AFDC: 0A        .byte $0A   ; 
- D 1 - - - 0x00AFED 02:AFDD: 0A        .byte $0A   ; 
- D 1 - - - 0x00AFEE 02:AFDE: 0C        .byte $0C   ; 
- - - - - - 0x00AFEF 02:AFDF: 0C        .byte $0C   ; 
- D 1 - - - 0x00AFF0 02:AFE0: 0A        .byte $0A   ; 
- D 1 - - - 0x00AFF1 02:AFE1: 0C        .byte $0C   ; 
- - - - - - 0x00AFF2 02:AFE2: 0E        .byte $0E   ; 
- - - - - - 0x00AFF3 02:AFE3: 0E        .byte $0E   ; 
- - - - - - 0x00AFF4 02:AFE4: 0E        .byte $0E   ; 
- - - - - - 0x00AFF5 02:AFE5: 0E        .byte $0E   ; 
- D 1 - - - 0x00AFF6 02:AFE6: 02        .byte $02   ; 
- D 1 - - - 0x00AFF7 02:AFE7: 02        .byte $02   ; 
- D 1 - - - 0x00AFF8 02:AFE8: 02        .byte $02   ; 
- D 1 - - - 0x00AFF9 02:AFE9: 02        .byte $02   ; 
- - - - - - 0x00AFFA 02:AFEA: 02        .byte $02   ; 
- D 1 - - - 0x00AFFB 02:AFEB: 02        .byte $02   ; 
- D 1 - - - 0x00AFFC 02:AFEC: 02        .byte $02   ; 
- D 1 - - - 0x00AFFD 02:AFED: 02        .byte $02   ; 
- D 1 - - - 0x00AFFE 02:AFEE: 0A        .byte $0A   ; 
- D 1 - - - 0x00AFFF 02:AFEF: 04        .byte $04   ; 
- - - - - - 0x00B000 02:AFF0: 02        .byte $02   ; 



tbl_AFF1:
- - - - - - 0x00B001 02:AFF1: 02        .byte $02   ; 
- D 1 - - - 0x00B002 02:AFF2: 00        .byte $00   ; 
- D 1 - - - 0x00B003 02:AFF3: 01        .byte $01   ; 
- D 1 - - - 0x00B004 02:AFF4: 02        .byte $02   ; 
- D 1 - - - 0x00B005 02:AFF5: 03        .byte $03   ; 
- D 1 - - - 0x00B006 02:AFF6: 04        .byte $04   ; 
- D 1 - - - 0x00B007 02:AFF7: 05        .byte $05   ; 
- D 1 - - - 0x00B008 02:AFF8: 06        .byte $06   ; 
- D 1 - - - 0x00B009 02:AFF9: 07        .byte $07   ; 
- D 1 - - - 0x00B00A 02:AFFA: 0A        .byte $0A   ; 
- D 1 - - - 0x00B00B 02:AFFB: 0D        .byte $0D   ; 
- D 1 - - - 0x00B00C 02:AFFC: 10        .byte $10   ; 
- D 1 - - - 0x00B00D 02:AFFD: 12        .byte $12   ; 
- D 1 - - - 0x00B00E 02:AFFE: 13        .byte $13   ; 
- D 1 - - - 0x00B00F 02:AFFF: 16        .byte $16   ; 
- D 1 - - - 0x00B010 02:B000: 18        .byte $18   ; 
- D 1 - - - 0x00B011 02:B001: 1A        .byte $1A   ; 
- D 1 - - - 0x00B012 02:B002: 1C        .byte $1C   ; 
- D 1 - - - 0x00B013 02:B003: 1D        .byte $1D   ; 
- D 1 - - - 0x00B014 02:B004: 1F        .byte $1F   ; 
- D 1 - - - 0x00B015 02:B005: 23        .byte $23   ; 
- D 1 - - - 0x00B016 02:B006: 24        .byte $24   ; 
- D 1 - - - 0x00B017 02:B007: 25        .byte $25   ; 
- D 1 - - - 0x00B018 02:B008: 26        .byte $26   ; 



tbl_B009:
- D 1 - - - 0x00B019 02:B009: 27        .byte $27   ; 
- D 1 - - - 0x00B01A 02:B00A: 01        .byte $01   ; 
- D 1 - - - 0x00B01B 02:B00B: 01        .byte $01   ; 
- D 1 - - - 0x00B01C 02:B00C: 01        .byte $01   ; 
- D 1 - - - 0x00B01D 02:B00D: 01        .byte $01   ; 
- D 1 - - - 0x00B01E 02:B00E: 01        .byte $01   ; 
- D 1 - - - 0x00B01F 02:B00F: 01        .byte $01   ; 
- D 1 - - - 0x00B020 02:B010: 01        .byte $01   ; 
- D 1 - - - 0x00B021 02:B011: 03        .byte $03   ; 
- D 1 - - - 0x00B022 02:B012: 03        .byte $03   ; 
- D 1 - - - 0x00B023 02:B013: 03        .byte $03   ; 
- D 1 - - - 0x00B024 02:B014: 02        .byte $02   ; 
- D 1 - - - 0x00B025 02:B015: 01        .byte $01   ; 
- D 1 - - - 0x00B026 02:B016: 03        .byte $03   ; 
- D 1 - - - 0x00B027 02:B017: 02        .byte $02   ; 
- D 1 - - - 0x00B028 02:B018: 02        .byte $02   ; 
- D 1 - - - 0x00B029 02:B019: 02        .byte $02   ; 
- D 1 - - - 0x00B02A 02:B01A: 01        .byte $01   ; 
- D 1 - - - 0x00B02B 02:B01B: 02        .byte $02   ; 
- D 1 - - - 0x00B02C 02:B01C: 04        .byte $04   ; 
- D 1 - - - 0x00B02D 02:B01D: 01        .byte $01   ; 
- D 1 - - - 0x00B02E 02:B01E: 01        .byte $01   ; 
- D 1 - - - 0x00B02F 02:B01F: 01        .byte $01   ; 
- D 1 - - - 0x00B030 02:B020: 01        .byte $01   ; 
- D 1 - - - 0x00B031 02:B021: 01        .byte $01   ; 



tbl_B022:
- D 1 - - - 0x00B032 02:B022: 47 B1     .word ofs_015_B147_00
- D 1 - - - 0x00B034 02:B024: 38 B1     .word ofs_015_B138_01
- D 1 - - - 0x00B036 02:B026: 4E B1     .word ofs_015_B14E_02
- D 1 - - - 0x00B038 02:B028: 1E B1     .word ofs_015_B11E_03
- D 1 - - - 0x00B03A 02:B02A: 2C B1     .word ofs_015_B12C_04
- D 1 - - - 0x00B03C 02:B02C: E3 B0     .word ofs_015_B0E3_05
- D 1 - - - 0x00B03E 02:B02E: DB B0     .word ofs_015_B0DB_06
- D 1 - - - 0x00B040 02:B030: D4 B0     .word ofs_015_B0D4_07



sub_B032:
C - - - - - 0x00B042 02:B032: 18        CLC
C - - - - - 0x00B043 02:B033: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00B046 02:B036: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00B049 02:B039: 60        RTS
sub_B03A:
C - - - - - 0x00B04A 02:B03A: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x00B04D 02:B03D: 2D 5A 03  AND ram_035A
C - - - - - 0x00B050 02:B040: D0 66     BNE bra_B0A8
C - - - - - 0x00B052 02:B042: BD AE F5  LDA tbl_0x01F5BE,X
C - - - - - 0x00B055 02:B045: 0D 5A 03  ORA ram_035A
C - - - - - 0x00B058 02:B048: 8D 5A 03  STA ram_035A
C - - - - - 0x00B05B 02:B04B: A9 F8     LDA #$F8
C - - - - - 0x00B05D 02:B04D: 20 32 B0  JSR sub_B032
C - - - - - 0x00B060 02:B050: A0 00     LDY #$00
C - - - - - 0x00B062 02:B052: 20 A3 A4  JSR sub_A4A3
C - - - - - 0x00B065 02:B055: C0 05     CPY #$05
C - - - - - 0x00B067 02:B057: F0 05     BEQ bra_B05E
C - - - - - 0x00B069 02:B059: A9 08     LDA #$08
C - - - - - 0x00B06B 02:B05B: 20 32 B0  JSR sub_B032
bra_B05E:
C - - - - - 0x00B06E 02:B05E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B071 02:B061: 29 07     AND #$07
C - - - - - 0x00B073 02:B063: 85 19     STA ram_0019
C - - - - - 0x00B075 02:B065: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B078 02:B068: 29 F8     AND #$F8
C - - - - - 0x00B07A 02:B06A: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00B07D 02:B06D: A5 61     LDA ram_0061
C - - - - - 0x00B07F 02:B06F: 18        CLC
C - - - - - 0x00B080 02:B070: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00B083 02:B073: 29 07     AND #$07
C - - - - - 0x00B085 02:B075: A4 75     LDY ram_stage
C - - - - - 0x00B087 02:B077: F0 05     BEQ bra_B07E
C - - - - - 0x00B089 02:B079: 49 07     EOR #$07
C - - - - - 0x00B08B 02:B07B: 18        CLC
C - - - - - 0x00B08C 02:B07C: 69 01     ADC #$01
bra_B07E:
C - - - - - 0x00B08E 02:B07E: 38        SEC
C - - - - - 0x00B08F 02:B07F: E5 64     SBC ram_0064
C - - - - - 0x00B091 02:B081: 29 07     AND #$07
C - - - - - 0x00B093 02:B083: A4 75     LDY ram_stage
C - - - - - 0x00B095 02:B085: F0 06     BEQ bra_B08D
C - - - - - 0x00B097 02:B087: C5 19     CMP ram_0019
C - - - - - 0x00B099 02:B089: B0 08     BCS bra_B093
C - - - - - 0x00B09B 02:B08B: 09 08     ORA #$08
bra_B08D:
C - - - - - 0x00B09D 02:B08D: C5 19     CMP ram_0019
C - - - - - 0x00B09F 02:B08F: 90 02     BCC bra_B093
C - - - - - 0x00B0A1 02:B091: 69 01     ADC #$01
bra_B093:
C - - - - - 0x00B0A3 02:B093: 20 32 B0  JSR sub_B032
C - - - - - 0x00B0A6 02:B096: A5 75     LDA ram_stage
C - - - - - 0x00B0A8 02:B098: C9 04     CMP #$04
C - - - - - 0x00B0AA 02:B09A: D0 0C     BNE bra_B0A8
C - - - - - 0x00B0AC 02:B09C: 20 D1 A2  JSR sub_A2D1
C - - - - - 0x00B0AF 02:B09F: C9 01     CMP #$01
C - - - - - 0x00B0B1 02:B0A1: D0 05     BNE bra_B0A8
- - - - - - 0x00B0B3 02:B0A3: A9        .byte $A9   ; 
- - - - - - 0x00B0B4 02:B0A4: F8        .byte $F8   ; 
- - - - - - 0x00B0B5 02:B0A5: 20        .byte $20   ; 
- - - - - - 0x00B0B6 02:B0A6: 32        .byte $32   ; 
- - - - - - 0x00B0B7 02:B0A7: B0        .byte $B0   ; 
bra_B0A8:
C - - - - - 0x00B0B8 02:B0A8: A5 75     LDA ram_stage
C - - - - - 0x00B0BA 02:B0AA: D0 2E     BNE bra_B0DA_RTS
C - - - - - 0x00B0BC 02:B0AC: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00B0BF 02:B0AF: F0 0B     BEQ bra_B0BC
C - - - - - 0x00B0C1 02:B0B1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B0C4 02:B0B4: C9 12     CMP #$12
C - - - - - 0x00B0C6 02:B0B6: B0 04     BCS bra_B0BC
- - - - - - 0x00B0C8 02:B0B8: A5        .byte $A5   ; 
- - - - - - 0x00B0C9 02:B0B9: 69        .byte $69   ; 
- - - - - - 0x00B0CA 02:B0BA: F0        .byte $F0   ; 
- - - - - - 0x00B0CB 02:B0BB: 1E        .byte $1E   ; 
bra_B0BC:
C - - - - - 0x00B0CC 02:B0BC: A9 04     LDA #$04
C - - - - - 0x00B0CE 02:B0BE: 85 1C     STA ram_001C
C - - - - - 0x00B0D0 02:B0C0: A9 00     LDA #$00
C - - - - - 0x00B0D2 02:B0C2: 85 19     STA ram_0019
C - - - - - 0x00B0D4 02:B0C4: 85 1B     STA ram_001B
C - - - - - 0x00B0D6 02:B0C6: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00B0D9 02:B0C9: 85 1D     STA ram_001D
C - - - - - 0x00B0DB 02:B0CB: A0 80     LDY #$80
C - - - - - 0x00B0DD 02:B0CD: 84 18     STY ram_0018
C - - - - - 0x00B0DF 02:B0CF: 84 1A     STY ram_001A
bra_B0D1:
C - - - - - 0x00B0E1 02:B0D1: 4C 34 AE  JMP loc_AE34
ofs_015_B0D4_07:
C - - J - - 0x00B0E4 02:B0D4: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B0E6 02:B0D6: 09 10     ORA #$10
C - - - - - 0x00B0E8 02:B0D8: 95 BE     STA ram_00BE,X
bra_B0DA_RTS:
C - - - - - 0x00B0EA 02:B0DA: 60        RTS
ofs_015_B0DB_06:
C - - J - - 0x00B0EB 02:B0DB: A9 03     LDA #$03
C - - - - - 0x00B0ED 02:B0DD: 85 1C     STA ram_001C
C - - - - - 0x00B0EF 02:B0DF: A9 00     LDA #$00
C - - - - - 0x00B0F1 02:B0E1: F0 06     BEQ bra_B0E9    ; jmp
ofs_015_B0E3_05:
C - - J - - 0x00B0F3 02:B0E3: A9 07     LDA #$07
C - - - - - 0x00B0F5 02:B0E5: 85 1C     STA ram_001C
C - - - - - 0x00B0F7 02:B0E7: A9 FF     LDA #$FF
bra_B0E9:
C - - - - - 0x00B0F9 02:B0E9: 85 19     STA ram_0019
C - - - - - 0x00B0FB 02:B0EB: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00B0FE 02:B0EE: 85 1D     STA ram_001D
C - - - - - 0x00B100 02:B0F0: A9 80     LDA #$80
C - - - - - 0x00B102 02:B0F2: 85 18     STA ram_0018
C - - - - - 0x00B104 02:B0F4: A9 00     LDA #$00
C - - - - - 0x00B106 02:B0F6: 85 1A     STA ram_001A
C - - - - - 0x00B108 02:B0F8: 85 1B     STA ram_001B
C - - - - - 0x00B10A 02:B0FA: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B10C 02:B0FC: 29 04     AND #$04
C - - - - - 0x00B10E 02:B0FE: F0 DA     BEQ bra_B0DA_RTS
C - - - - - 0x00B110 02:B100: 20 A8 A0  JSR sub_A0A8
C - - - - - 0x00B113 02:B103: D0 06     BNE bra_B10B
- - - - - - 0x00B115 02:B105: A5 1D     LDA ram_001D
- - - - - - 0x00B117 02:B107: 29 FD     AND #$FD
- - - - - - 0x00B119 02:B109: 85 1D     STA ram_001D
bra_B10B:
C - - - - - 0x00B11B 02:B10B: 20 A2 A0  JSR sub_A0A2_07AAx_AND_0F
C - - - - - 0x00B11E 02:B10E: 38        SEC
C - - - - - 0x00B11F 02:B10F: E5 1C     SBC ram_001C
C - - - - - 0x00B121 02:B111: B0 02     BCS bra_B115
C - - - - - 0x00B123 02:B113: 49 FF     EOR #$FF
bra_B115:
C - - - - - 0x00B125 02:B115: C9 02     CMP #$02
C - - - - - 0x00B127 02:B117: 90 02     BCC bra_B11B
C - - - - - 0x00B129 02:B119: B0 B6     BCS bra_B0D1    ; jmp
bra_B11B:
C - - - - - 0x00B12B 02:B11B: 4C 38 AE  JMP loc_AE38
ofs_015_B11E_03:
C - - J - - 0x00B12E 02:B11E: A5 02     LDA ram_0002
C - - - - - 0x00B130 02:B120: D0 16     BNE bra_B138
C - - - - - 0x00B132 02:B122: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B134 02:B124: 29 FC     AND #$FC
C - - - - - 0x00B136 02:B126: 09 01     ORA #$01
C - - - - - 0x00B138 02:B128: 95 BE     STA ram_00BE,X
C - - - - - 0x00B13A 02:B12A: D0 0C     BNE bra_B138    ; jmp
ofs_015_B12C_04:
C - - J - - 0x00B13C 02:B12C: B5 BE     LDA ram_00BE,X
C - - - - - 0x00B13E 02:B12E: 29 01     AND #$01
C - - - - - 0x00B140 02:B130: F0 A8     BEQ bra_B0DA_RTS
C - - - - - 0x00B142 02:B132: A9 03     LDA #$03
C - - - - - 0x00B144 02:B134: 15 BE     ORA ram_00BE,X
C - - - - - 0x00B146 02:B136: 95 BE     STA ram_00BE,X
bra_B138:
ofs_015_B138_01:
C - - - - - 0x00B148 02:B138: E6 02     INC ram_0002
C - - - - - 0x00B14A 02:B13A: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00B14D 02:B13D: 09 80     ORA #$80
C - - - - - 0x00B14F 02:B13F: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00B152 02:B142: A9 00     LDA #$00
C - - - - - 0x00B154 02:B144: 85 BC     STA ram_00BC
C - - - - - 0x00B156 02:B146: 60        RTS
ofs_015_B147_00:
C - - J - - 0x00B157 02:B147: A5 BB     LDA ram_00BB
C - - - - - 0x00B159 02:B149: D0 02     BNE bra_B14D_RTS
C - - - - - 0x00B15B 02:B14B: E6 BB     INC ram_00BB
bra_B14D_RTS:
C - - - - - 0x00B15D 02:B14D: 60        RTS
ofs_015_B14E_02:
C - - J - - 0x00B15E 02:B14E: A5 BC     LDA ram_00BC
C - - - - - 0x00B160 02:B150: D0 FB     BNE bra_B14D_RTS
C - - - - - 0x00B162 02:B152: E6 BC     INC ram_00BC
C - - - - - 0x00B164 02:B154: 60        RTS



tbl_B155:
- D 1 - - - 0x00B165 02:B155: C5 B1     .word _off021_B1C5_00
- D 1 - - - 0x00B167 02:B157: 5F B1     .word _off021_B15F_02
- D 1 - - - 0x00B169 02:B159: A1 B1     .word _off021_B1A1_04
- - - - - - 0x00B16B 02:B15B: 5F B1     .word _off021_B15F_06
- - - - - - 0x00B16D 02:B15D: 5F B1     .word _off021_B15F_08



_off021_B15F_02:
_off021_B15F_06:
_off021_B15F_08:
- D 1 - I - 0x00B16F 02:B15F: 05        .byte $05   ; 
- - - - - - 0x00B170 02:B160: 00        .byte $00   ; 
- D 1 - I - 0x00B171 02:B161: 01        .byte $01   ; 
- - - - - - 0x00B172 02:B162: 00        .byte $00   ; 
- - - - - - 0x00B173 02:B163: 00        .byte $00   ; 
- D 1 - I - 0x00B174 02:B164: 14        .byte $14   ; 
- - - - - - 0x00B175 02:B165: 00        .byte $00   ; 
- D 1 - I - 0x00B176 02:B166: 16        .byte $16   ; 
- - - - - - 0x00B177 02:B167: 16        .byte $16   ; 
- - - - - - 0x00B178 02:B168: 00        .byte $00   ; 
- D 1 - I - 0x00B179 02:B169: 13        .byte $13   ; 
- - - - - - 0x00B17A 02:B16A: 00        .byte $00   ; 
- D 1 - I - 0x00B17B 02:B16B: 00        .byte $00   ; 
- D 1 - I - 0x00B17C 02:B16C: 00        .byte $00   ; 
- - - - - - 0x00B17D 02:B16D: 00        .byte $00   ; 
- D 1 - I - 0x00B17E 02:B16E: 12        .byte $12   ; 
- - - - - - 0x00B17F 02:B16F: 00        .byte $00   ; 
- D 1 - I - 0x00B180 02:B170: 00        .byte $00   ; 
- D 1 - I - 0x00B181 02:B171: 00        .byte $00   ; 
- - - - - - 0x00B182 02:B172: 00        .byte $00   ; 
- D 1 - I - 0x00B183 02:B173: 11        .byte $11   ; 
- - - - - - 0x00B184 02:B174: 00        .byte $00   ; 
- - - - - - 0x00B185 02:B175: 00        .byte $00   ; 
- D 1 - I - 0x00B186 02:B176: 00        .byte $00   ; 
- - - - - - 0x00B187 02:B177: 00        .byte $00   ; 
- - - - - - 0x00B188 02:B178: 00        .byte $00   ; 
- - - - - - 0x00B189 02:B179: 00        .byte $00   ; 
- D 1 - I - 0x00B18A 02:B17A: 00        .byte $00   ; 
- D 1 - I - 0x00B18B 02:B17B: 00        .byte $00   ; 
- - - - - - 0x00B18C 02:B17C: 00        .byte $00   ; 
- - - - - - 0x00B18D 02:B17D: 00        .byte $00   ; 
- - - - - - 0x00B18E 02:B17E: 00        .byte $00   ; 
- D 1 - I - 0x00B18F 02:B17F: 0B        .byte $0B   ; 
- D 1 - I - 0x00B190 02:B180: 0A        .byte $0A   ; 
- - - - - - 0x00B191 02:B181: 00        .byte $00   ; 
- - - - - - 0x00B192 02:B182: 00        .byte $00   ; 
- - - - - - 0x00B193 02:B183: 00        .byte $00   ; 
- D 1 - I - 0x00B194 02:B184: 09        .byte $09   ; 
- D 1 - I - 0x00B195 02:B185: 08        .byte $08   ; 
- - - - - - 0x00B196 02:B186: 00        .byte $00   ; 
- - - - - - 0x00B197 02:B187: 00        .byte $00   ; 
- - - - - - 0x00B198 02:B188: 00        .byte $00   ; 
- D 1 - I - 0x00B199 02:B189: 00        .byte $00   ; 
- D 1 - I - 0x00B19A 02:B18A: 00        .byte $00   ; 
- D 1 - I - 0x00B19B 02:B18B: 00        .byte $00   ; 
- - - - - - 0x00B19C 02:B18C: 00        .byte $00   ; 
- - - - - - 0x00B19D 02:B18D: 00        .byte $00   ; 
- - - - - - 0x00B19E 02:B18E: 00        .byte $00   ; 
- - - - - - 0x00B19F 02:B18F: 00        .byte $00   ; 
- D 1 - I - 0x00B1A0 02:B190: 00        .byte $00   ; 
- - - - - - 0x00B1A1 02:B191: 00        .byte $00   ; 
- - - - - - 0x00B1A2 02:B192: 00        .byte $00   ; 
- - - - - - 0x00B1A3 02:B193: 00        .byte $00   ; 
- - - - - - 0x00B1A4 02:B194: 00        .byte $00   ; 
- D 1 - I - 0x00B1A5 02:B195: 10        .byte $10   ; 
- - - - - - 0x00B1A6 02:B196: 00        .byte $00   ; 
- - - - - - 0x00B1A7 02:B197: 00        .byte $00   ; 
- - - - - - 0x00B1A8 02:B198: 00        .byte $00   ; 
- - - - - - 0x00B1A9 02:B199: 00        .byte $00   ; 
- D 1 - I - 0x00B1AA 02:B19A: 0F        .byte $0F   ; 
- - - - - - 0x00B1AB 02:B19B: 00        .byte $00   ; 
- - - - - - 0x00B1AC 02:B19C: 00        .byte $00   ; 
- - - - - - 0x00B1AD 02:B19D: 00        .byte $00   ; 
- - - - - - 0x00B1AE 02:B19E: 00        .byte $00   ; 
- D 1 - I - 0x00B1AF 02:B19F: 00        .byte $00   ; 
- D 1 - I - 0x00B1B0 02:B1A0: 00        .byte $00   ; 



_off021_B1A1_04:
- D 1 - I - 0x00B1B1 02:B1A1: 05        .byte $05   ; 
- - - - - - 0x00B1B2 02:B1A2: 00        .byte $00   ; 
- - - - - - 0x00B1B3 02:B1A3: 00        .byte $00   ; 
- - - - - - 0x00B1B4 02:B1A4: 00        .byte $00   ; 
- - - - - - 0x00B1B5 02:B1A5: 00        .byte $00   ; 
- - - - - - 0x00B1B6 02:B1A6: 00        .byte $00   ; 
- D 1 - I - 0x00B1B7 02:B1A7: 00        .byte $00   ; 
- D 1 - I - 0x00B1B8 02:B1A8: 00        .byte $00   ; 
- D 1 - I - 0x00B1B9 02:B1A9: 00        .byte $00   ; 
- D 1 - I - 0x00B1BA 02:B1AA: 00        .byte $00   ; 
- - - - - - 0x00B1BB 02:B1AB: 00        .byte $00   ; 
- D 1 - I - 0x00B1BC 02:B1AC: 00        .byte $00   ; 
- D 1 - I - 0x00B1BD 02:B1AD: 00        .byte $00   ; 
- - - - - - 0x00B1BE 02:B1AE: 00        .byte $00   ; 
- D 1 - I - 0x00B1BF 02:B1AF: 00        .byte $00   ; 
- D 1 - I - 0x00B1C0 02:B1B0: 00        .byte $00   ; 
- - - - - - 0x00B1C1 02:B1B1: 00        .byte $00   ; 
- D 1 - I - 0x00B1C2 02:B1B2: 00        .byte $00   ; 
- D 1 - I - 0x00B1C3 02:B1B3: 18        .byte $18   ; 
- D 1 - I - 0x00B1C4 02:B1B4: 17        .byte $17   ; 
- D 1 - I - 0x00B1C5 02:B1B5: 00        .byte $00   ; 
- - - - - - 0x00B1C6 02:B1B6: 00        .byte $00   ; 
- D 1 - I - 0x00B1C7 02:B1B7: 00        .byte $00   ; 
- D 1 - I - 0x00B1C8 02:B1B8: 06        .byte $06   ; 
- D 1 - I - 0x00B1C9 02:B1B9: 07        .byte $07   ; 
- D 1 - I - 0x00B1CA 02:B1BA: 00        .byte $00   ; 
- - - - - - 0x00B1CB 02:B1BB: 00        .byte $00   ; 
- - - - - - 0x00B1CC 02:B1BC: 00        .byte $00   ; 
- D 1 - I - 0x00B1CD 02:B1BD: 04        .byte $04   ; 
- D 1 - I - 0x00B1CE 02:B1BE: 05        .byte $05   ; 
- D 1 - I - 0x00B1CF 02:B1BF: 00        .byte $00   ; 
- - - - - - 0x00B1D0 02:B1C0: 00        .byte $00   ; 
- - - - - - 0x00B1D1 02:B1C1: 00        .byte $00   ; 
- D 1 - I - 0x00B1D2 02:B1C2: 02        .byte $02   ; 
- D 1 - I - 0x00B1D3 02:B1C3: 03        .byte $03   ; 
- D 1 - I - 0x00B1D4 02:B1C4: 00        .byte $00   ; 



_off021_B1C5_00:
- D 1 - I - 0x00B1D5 02:B1C5: 18        .byte $18   ; 
- D 1 - I - 0x00B1D6 02:B1C6: 00        .byte $00   ; 
- D 1 - I - 0x00B1D7 02:B1C7: 00        .byte $00   ; 
- D 1 - I - 0x00B1D8 02:B1C8: 00        .byte $00   ; 
- D 1 - I - 0x00B1D9 02:B1C9: 00        .byte $00   ; 
- D 1 - I - 0x00B1DA 02:B1CA: 00        .byte $00   ; 
- D 1 - I - 0x00B1DB 02:B1CB: 00        .byte $00   ; 
- D 1 - I - 0x00B1DC 02:B1CC: 0C        .byte $0C   ; 
- D 1 - I - 0x00B1DD 02:B1CD: 0D        .byte $0D   ; 
- D 1 - I - 0x00B1DE 02:B1CE: 0E        .byte $0E   ; 
- D 1 - I - 0x00B1DF 02:B1CF: 15        .byte $15   ; 
- D 1 - I - 0x00B1E0 02:B1D0: 00        .byte $00   ; 
- D 1 - I - 0x00B1E1 02:B1D1: 00        .byte $00   ; 
- D 1 - I - 0x00B1E2 02:B1D2: 00        .byte $00   ; 
- D 1 - I - 0x00B1E3 02:B1D3: 00        .byte $00   ; 
- D 1 - I - 0x00B1E4 02:B1D4: 00        .byte $00   ; 
- D 1 - I - 0x00B1E5 02:B1D5: 00        .byte $00   ; 
- D 1 - I - 0x00B1E6 02:B1D6: 00        .byte $00   ; 
- D 1 - I - 0x00B1E7 02:B1D7: 00        .byte $00   ; 
- D 1 - I - 0x00B1E8 02:B1D8: 00        .byte $00   ; 
- D 1 - I - 0x00B1E9 02:B1D9: 00        .byte $00   ; 
- D 1 - I - 0x00B1EA 02:B1DA: 00        .byte $00   ; 
- D 1 - I - 0x00B1EB 02:B1DB: 00        .byte $00   ; 
- D 1 - I - 0x00B1EC 02:B1DC: 00        .byte $00   ; 
- D 1 - I - 0x00B1ED 02:B1DD: 00        .byte $00   ; 



tbl_B1DE:
; bzk warning, the table could be starting from B1DF, not sure
; in that case B1DE byte is a part of B1C5 table
- - - - - - 0x00B1EE 02:B1DE: 00        .byte $00   ; 03
- D 1 - - - 0x00B1EF 02:B1DF: 01        .byte $01   ; 04
- D 1 - - - 0x00B1F0 02:B1E0: 00        .byte $00   ; 05
- D 1 - - - 0x00B1F1 02:B1E1: 00        .byte $00   ; 06
- D 1 - - - 0x00B1F2 02:B1E2: 00        .byte $00   ; 07
- D 1 - - - 0x00B1F3 02:B1E3: 00        .byte $00   ; 08
- D 1 - - - 0x00B1F4 02:B1E4: 00        .byte $00   ; 09
- D 1 - - - 0x00B1F5 02:B1E5: 00        .byte $00   ; 0A
- D 1 - - - 0x00B1F6 02:B1E6: 00        .byte $00   ; 0B
- D 1 - - - 0x00B1F7 02:B1E7: 00        .byte $00   ; 0C
- D 1 - - - 0x00B1F8 02:B1E8: 00        .byte $00   ; 0D
- D 1 - - - 0x00B1F9 02:B1E9: 00        .byte $00   ; 0E
- D 1 - - - 0x00B1FA 02:B1EA: 00        .byte $00   ; 0F
- D 1 - - - 0x00B1FB 02:B1EB: 00        .byte $00   ; 10
- D 1 - - - 0x00B1FC 02:B1EC: 00        .byte $00   ; 11
- D 1 - - - 0x00B1FD 02:B1ED: 00        .byte $00   ; 12
- D 1 - - - 0x00B1FE 02:B1EE: 01        .byte $01   ; 13
- D 1 - - - 0x00B1FF 02:B1EF: 00        .byte $00   ; 14
- D 1 - - - 0x00B200 02:B1F0: 00        .byte $00   ; 15
- D 1 - - - 0x00B201 02:B1F1: 00        .byte $00   ; 16
- D 1 - - - 0x00B202 02:B1F2: 00        .byte $00   ; 17
- D 1 - - - 0x00B203 02:B1F3: 00        .byte $00   ; 18
- D 1 - - - 0x00B204 02:B1F4: 00        .byte $00   ; 19
- D 1 - - - 0x00B205 02:B1F5: 00        .byte $00   ; 1A
- D 1 - - - 0x00B206 02:B1F6: 00        .byte $00   ; 1B
- D 1 - - - 0x00B207 02:B1F7: 01        .byte $01   ; 1C
- D 1 - - - 0x00B208 02:B1F8: 00        .byte $00   ; 1D
- D 1 - - - 0x00B209 02:B1F9: 00        .byte $00   ; 1E
- D 1 - - - 0x00B20A 02:B1FA: 00        .byte $00   ; 1F
- D 1 - - - 0x00B20B 02:B1FB: 00        .byte $00   ; 20



tbl_B1FC:
; 00
- D 1 - - - 0x00B20C 02:B1FC: 80        .byte $80   ; 
- D 1 - - - 0x00B20D 02:B1FD: 10        .byte $10   ; 
- D 1 - - - 0x00B20E 02:B1FE: 40        .byte $40   ; 
- D 1 - - - 0x00B20F 02:B1FF: 10        .byte $10   ; 
; 01
- D 1 - - - 0x00B210 02:B200: F8        .byte $F8   ; 
- D 1 - - - 0x00B211 02:B201: 08        .byte $08   ; 
- D 1 - - - 0x00B212 02:B202: A0        .byte $A0   ; 
- D 1 - - - 0x00B213 02:B203: 48        .byte $48   ; 
; 02
- D 1 - - - 0x00B214 02:B204: 0E        .byte $0E   ; 
- D 1 - - - 0x00B215 02:B205: 20        .byte $20   ; 
- D 1 - - - 0x00B216 02:B206: A0        .byte $A0   ; 
- D 1 - - - 0x00B217 02:B207: 48        .byte $48   ; 
; 03
- D 1 - - - 0x00B218 02:B208: F8        .byte $F8   ; 
- D 1 - - - 0x00B219 02:B209: 08        .byte $08   ; 
- D 1 - - - 0x00B21A 02:B20A: B0        .byte $B0   ; 
- D 1 - - - 0x00B21B 02:B20B: 30        .byte $30   ; 
; 04
- D 1 - - - 0x00B21C 02:B20C: 0E        .byte $0E   ; 
- D 1 - - - 0x00B21D 02:B20D: 20        .byte $20   ; 
- D 1 - - - 0x00B21E 02:B20E: B0        .byte $B0   ; 
- D 1 - - - 0x00B21F 02:B20F: 30        .byte $30   ; 
; 05
- D 1 - - - 0x00B220 02:B210: F8        .byte $F8   ; 
- D 1 - - - 0x00B221 02:B211: 08        .byte $08   ; 
- D 1 - - - 0x00B222 02:B212: 30        .byte $30   ; 
- D 1 - - - 0x00B223 02:B213: 30        .byte $30   ; 
; 06
- D 1 - - - 0x00B224 02:B214: 0E        .byte $0E   ; 
- D 1 - - - 0x00B225 02:B215: 20        .byte $20   ; 
- D 1 - - - 0x00B226 02:B216: 30        .byte $30   ; 
- D 1 - - - 0x00B227 02:B217: 30        .byte $30   ; 
; 07
- D 1 - - - 0x00B228 02:B218: 10        .byte $10   ; 
- D 1 - - - 0x00B229 02:B219: 10        .byte $10   ; 
- D 1 - - - 0x00B22A 02:B21A: 90        .byte $90   ; 
- D 1 - - - 0x00B22B 02:B21B: 10        .byte $10   ; 
; 08
- D 1 - - - 0x00B22C 02:B21C: 10        .byte $10   ; 
- D 1 - - - 0x00B22D 02:B21D: 10        .byte $10   ; 
- D 1 - - - 0x00B22E 02:B21E: 80        .byte $80   ; 
- D 1 - - - 0x00B22F 02:B21F: 10        .byte $10   ; 
; 09
- D 1 - - - 0x00B230 02:B220: 70        .byte $70   ; 
- D 1 - - - 0x00B231 02:B221: 10        .byte $10   ; 
- D 1 - - - 0x00B232 02:B222: A8        .byte $A8   ; 
- D 1 - - - 0x00B233 02:B223: 30        .byte $30   ; 
; 0A
- D 1 - - - 0x00B234 02:B224: 70        .byte $70   ; 
- D 1 - - - 0x00B235 02:B225: 10        .byte $10   ; 
- - - - - - 0x00B236 02:B226: 90        .byte $90   ; 
- - - - - - 0x00B237 02:B227: 10        .byte $10   ; 
; 0B
- D 1 - - - 0x00B238 02:B228: 70        .byte $70   ; 
- D 1 - - - 0x00B239 02:B229: 10        .byte $10   ; 
- - - - - - 0x00B23A 02:B22A: 80        .byte $80   ; 
- - - - - - 0x00B23B 02:B22B: 10        .byte $10   ; 
; 0C
- D 1 - - - 0x00B23C 02:B22C: 90        .byte $90   ; 
- D 1 - - - 0x00B23D 02:B22D: 10        .byte $10   ; 
- - - - - - 0x00B23E 02:B22E: A8        .byte $A8   ; 
- - - - - - 0x00B23F 02:B22F: 30        .byte $30   ; 
; 0D
- D 1 - - - 0x00B240 02:B230: 50        .byte $50   ; 
- D 1 - - - 0x00B241 02:B231: 10        .byte $10   ; 
- D 1 - - - 0x00B242 02:B232: 80        .byte $80   ; 
- D 1 - - - 0x00B243 02:B233: 0F        .byte $0F   ; 
; 0E
- D 1 - - - 0x00B244 02:B234: 50        .byte $50   ; 
- D 1 - - - 0x00B245 02:B235: 10        .byte $10   ; 
- D 1 - - - 0x00B246 02:B236: 90        .byte $90   ; 
- D 1 - - - 0x00B247 02:B237: 0F        .byte $0F   ; 
; 0F
- D 1 - - - 0x00B248 02:B238: 10        .byte $10   ; 
- D 1 - - - 0x00B249 02:B239: 10        .byte $10   ; 
- D 1 - - - 0x00B24A 02:B23A: 60        .byte $60   ; 
- D 1 - - - 0x00B24B 02:B23B: 10        .byte $10   ; 
; 10
- D 1 - - - 0x00B24C 02:B23C: B0        .byte $B0   ; 
- D 1 - - - 0x00B24D 02:B23D: 10        .byte $10   ; 
- D 1 - - - 0x00B24E 02:B23E: 80        .byte $80   ; 
- D 1 - - - 0x00B24F 02:B23F: 0F        .byte $0F   ; 
; 11
- D 1 - - - 0x00B250 02:B240: B0        .byte $B0   ; 
- D 1 - - - 0x00B251 02:B241: 10        .byte $10   ; 
- D 1 - - - 0x00B252 02:B242: 90        .byte $90   ; 
- D 1 - - - 0x00B253 02:B243: 0F        .byte $0F   ; 
; 12
- D 1 - - - 0x00B254 02:B244: C0        .byte $C0   ; 
- D 1 - - - 0x00B255 02:B245: 40        .byte $40   ; 
- D 1 - - - 0x00B256 02:B246: 78        .byte $78   ; 
- D 1 - - - 0x00B257 02:B247: 10        .byte $10   ; 
; 13
- D 1 - - - 0x00B258 02:B248: 30        .byte $30   ; 
- D 1 - - - 0x00B259 02:B249: 38        .byte $38   ; 
- D 1 - - - 0x00B25A 02:B24A: 78        .byte $78   ; 
- D 1 - - - 0x00B25B 02:B24B: 10        .byte $10   ; 
; 14
- D 1 - - - 0x00B25C 02:B24C: B0        .byte $B0   ; 
- D 1 - - - 0x00B25D 02:B24D: 30        .byte $30   ; 
- D 1 - - - 0x00B25E 02:B24E: 58        .byte $58   ; 
- D 1 - - - 0x00B25F 02:B24F: 10        .byte $10   ; 
; 15
- D 1 - - - 0x00B260 02:B250: A8        .byte $A8   ; 
- D 1 - - - 0x00B261 02:B251: 50        .byte $50   ; 
- D 1 - - - 0x00B262 02:B252: 98        .byte $98   ; 
- D 1 - - - 0x00B263 02:B253: 10        .byte $10   ; 
; 16
- D 1 - - - 0x00B264 02:B254: 30        .byte $30   ; 
- D 1 - - - 0x00B265 02:B255: 38        .byte $38   ; 
- D 1 - - - 0x00B266 02:B256: 78        .byte $78   ; 
- D 1 - - - 0x00B267 02:B257: 10        .byte $10   ; 
; 17
- D 1 - - - 0x00B268 02:B258: A0        .byte $A0   ; 
- D 1 - - - 0x00B269 02:B259: 48        .byte $48   ; 
- D 1 - - - 0x00B26A 02:B25A: 78        .byte $78   ; 
- D 1 - - - 0x00B26B 02:B25B: 10        .byte $10   ; 
; 18
- D 1 - - - 0x00B26C 02:B25C: 40        .byte $40   ; 
- D 1 - - - 0x00B26D 02:B25D: 10        .byte $10   ; 
- D 1 - - - 0x00B26E 02:B25E: 78        .byte $78   ; 
- D 1 - - - 0x00B26F 02:B25F: 10        .byte $10   ; 
; 19
- D 1 - - - 0x00B270 02:B260: C0        .byte $C0   ; 
- D 1 - - - 0x00B271 02:B261: 10        .byte $10   ; 
- D 1 - - - 0x00B272 02:B262: 78        .byte $78   ; 
- D 1 - - - 0x00B273 02:B263: 10        .byte $10   ; 
; 1A
- D 1 - - - 0x00B274 02:B264: 40        .byte $40   ; 
- D 1 - - - 0x00B275 02:B265: 10        .byte $10   ; 
- D 1 - - - 0x00B276 02:B266: D0        .byte $D0   ; 
- D 1 - - - 0x00B277 02:B267: 10        .byte $10   ; 
; 1B
- D 1 - - - 0x00B278 02:B268: C0        .byte $C0   ; 
- D 1 - - - 0x00B279 02:B269: 10        .byte $10   ; 
- D 1 - - - 0x00B27A 02:B26A: D0        .byte $D0   ; 
- D 1 - - - 0x00B27B 02:B26B: 10        .byte $10   ; 
; 1C
- D 1 - - - 0x00B27C 02:B26C: 70        .byte $70   ; 
- D 1 - - - 0x00B27D 02:B26D: 10        .byte $10   ; 
- D 1 - - - 0x00B27E 02:B26E: 10        .byte $10   ; 
- D 1 - - - 0x00B27F 02:B26F: 20        .byte $20   ; 
; 1D
- D 1 - - - 0x00B280 02:B270: 70        .byte $70   ; 
- D 1 - - - 0x00B281 02:B271: 10        .byte $10   ; 
- D 1 - - - 0x00B282 02:B272: E8        .byte $E8   ; 
- D 1 - - - 0x00B283 02:B273: 18        .byte $18   ; 
; 1E
- D 1 - - - 0x00B284 02:B274: 90        .byte $90   ; 
- D 1 - - - 0x00B285 02:B275: 10        .byte $10   ; 
- D 1 - - - 0x00B286 02:B276: 10        .byte $10   ; 
- D 1 - - - 0x00B287 02:B277: 20        .byte $20   ; 
; 1F
- D 1 - - - 0x00B288 02:B278: 90        .byte $90   ; 
- D 1 - - - 0x00B289 02:B279: 10        .byte $10   ; 
- D 1 - - - 0x00B28A 02:B27A: E8        .byte $E8   ; 
- D 1 - - - 0x00B28B 02:B27B: 18        .byte $18   ; 
; 20
- D 1 - - - 0x00B28C 02:B27C: 50        .byte $50   ; 
- D 1 - - - 0x00B28D 02:B27D: 10        .byte $10   ; 
- D 1 - - - 0x00B28E 02:B27E: 70        .byte $70   ; 
- D 1 - - - 0x00B28F 02:B27F: 28        .byte $28   ; 
; 21
- D 1 - - - 0x00B290 02:B280: D0        .byte $D0   ; 
- D 1 - - - 0x00B291 02:B281: 10        .byte $10   ; 
- D 1 - - - 0x00B292 02:B282: 70        .byte $70   ; 
- D 1 - - - 0x00B293 02:B283: 28        .byte $28   ; 
; 22
- D 1 - - - 0x00B294 02:B284: 70        .byte $70   ; 
- D 1 - - - 0x00B295 02:B285: 10        .byte $10   ; 
- D 1 - - - 0x00B296 02:B286: 08        .byte $08   ; 
- D 1 - - - 0x00B297 02:B287: 08        .byte $08   ; 
; 23
- D 1 - - - 0x00B298 02:B288: 70        .byte $70   ; 
- D 1 - - - 0x00B299 02:B289: 10        .byte $10   ; 
- D 1 - - - 0x00B29A 02:B28A: E8        .byte $E8   ; 
- D 1 - - - 0x00B29B 02:B28B: 18        .byte $18   ; 
; 24
- D 1 - - - 0x00B29C 02:B28C: 40        .byte $40   ; 
- D 1 - - - 0x00B29D 02:B28D: 48        .byte $48   ; 
- D 1 - - - 0x00B29E 02:B28E: 68        .byte $68   ; 
- D 1 - - - 0x00B29F 02:B28F: 10        .byte $10   ; 
; 25
- D 1 - - - 0x00B2A0 02:B290: 80        .byte $80   ; 
- D 1 - - - 0x00B2A1 02:B291: 80        .byte $80   ; 
- D 1 - - - 0x00B2A2 02:B292: 80        .byte $80   ; 
- D 1 - - - 0x00B2A3 02:B293: 10        .byte $10   ; 
; 26
- D 1 - - - 0x00B2A4 02:B294: 0E        .byte $0E   ; 
- D 1 - - - 0x00B2A5 02:B295: 20        .byte $20   ; 
- D 1 - - - 0x00B2A6 02:B296: DF        .byte $DF   ; 
- D 1 - - - 0x00B2A7 02:B297: 20        .byte $20   ; 
; 27
- D 1 - - - 0x00B2A8 02:B298: F8        .byte $F8   ; 
- D 1 - - - 0x00B2A9 02:B299: 08        .byte $08   ; 
- D 1 - - - 0x00B2AA 02:B29A: DF        .byte $DF   ; 
- D 1 - - - 0x00B2AB 02:B29B: 20        .byte $20   ; 



tbl_B29C:
- - - - - - 0x00B2AC 02:B29C: 10        .byte $10   ; 00
- D 1 - - - 0x00B2AD 02:B29D: E0        .byte $E0   ; 01
- - - - - - 0x00B2AE 02:B29E: 20        .byte $20   ; 02
- - - - - - 0x00B2AF 02:B29F: F0        .byte $F0   ; 03
- - - - - - 0x00B2B0 02:B2A0: 08        .byte $08   ; 04
- - - - - - 0x00B2B1 02:B2A1: F8        .byte $F8   ; 05
- - - - - - 0x00B2B2 02:B2A2: 10        .byte $10   ; 06
- - - - - - 0x00B2B3 02:B2A3: F0        .byte $F0   ; 07



sub_0x00B2B4:
C - - - - - 0x00B2B4 02:B2A4: A5 CF     LDA ram_00CF
C - - - - - 0x00B2B6 02:B2A6: F0 47     BEQ bra_B2EF_RTS
C - - - - - 0x00B2B8 02:B2A8: A5 63     LDA ram_0063
C - - - - - 0x00B2BA 02:B2AA: C9 04     CMP #$04
C - - - - - 0x00B2BC 02:B2AC: 90 23     BCC bra_B2D1
C - - - - - 0x00B2BE 02:B2AE: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00B2C1 02:B2B1: A4 39     LDY ram_buffer_index_2
C - - - - - 0x00B2C3 02:B2B3: C0 20     CPY #$20
C - - - - - 0x00B2C5 02:B2B5: B0 38     BCS bra_B2EF_RTS
C - - - - - 0x00B2C7 02:B2B7: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00B2CA 02:B2BA: F0 1B     BEQ bra_B2D7
C - - - - - 0x00B2CC 02:B2BC: C9 03     CMP #$03
C - - - - - 0x00B2CE 02:B2BE: 90 2C     BCC bra_B2EC
C - - - - - 0x00B2D0 02:B2C0: A0 00     LDY #$00
C - - - - - 0x00B2D2 02:B2C2: A9 1B     LDA #$1B
C - - - - - 0x00B2D4 02:B2C4: 20 F0 B2  JSR sub_B2F0
C - - - - - 0x00B2D7 02:B2C7: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x00B2DA 02:B2CA: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B2DD 02:B2CD: C9 05     CMP #$05
C - - - - - 0x00B2DF 02:B2CF: D0 1B     BNE bra_B2EC
bra_B2D1:
C - - - - - 0x00B2E1 02:B2D1: 20 17 9A  JSR sub_0x009A27
C - - - - - 0x00B2E4 02:B2D4: 85 CF     STA ram_00CF
C - - - - - 0x00B2E6 02:B2D6: 60        RTS
bra_B2D7:
C - - - - - 0x00B2E7 02:B2D7: A0 06     LDY #$06
C - - - - - 0x00B2E9 02:B2D9: A9 15     LDA #$15
C - - - - - 0x00B2EB 02:B2DB: 20 F0 B2  JSR sub_B2F0
C - - - - - 0x00B2EE 02:B2DE: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00B2F1 02:B2E1: 88        DEY
C - - - - - 0x00B2F2 02:B2E2: D0 03     BNE bra_B2E7
C - - - - - 0x00B2F4 02:B2E4: 20 38 B3  JSR sub_B338
bra_B2E7:
C - - - - - 0x00B2F7 02:B2E7: A9 04     LDA #$04
C - - - - - 0x00B2F9 02:B2E9: 9D B4 07  STA ram_07B4_unk,X
bra_B2EC:
C - - - - - 0x00B2FC 02:B2EC: DE B4 07  DEC ram_07B4_unk,X
bra_B2EF_RTS:
C - - - - - 0x00B2FF 02:B2EF: 60        RTS



sub_B2F0:
; A = 1B, Y = 00
; A = 15, Y = 06
C - - - - - 0x00B300 02:B2F0: 84 00     STY ram_0000
C - - - - - 0x00B302 02:B2F2: 85 06     STA ram_0006
C - - - - - 0x00B304 02:B2F4: A9 2D     LDA #$2D
C - - - - - 0x00B306 02:B2F6: 85 07     STA ram_0007
C - - - - - 0x00B308 02:B2F8: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B30B 02:B2FB: C9 D0     CMP #$D0
C - - - - - 0x00B30D 02:B2FD: B0 27     BCS bra_B326_RTS
C - - - - - 0x00B30F 02:B2FF: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00B312 02:B302: B9 27 B3  LDA tbl_B327,Y
C - - - - - 0x00B315 02:B305: 0A        ASL
C - - - - - 0x00B316 02:B306: 18        CLC
C - - - - - 0x00B317 02:B307: 65 00     ADC ram_0000
C - - - - - 0x00B319 02:B309: A8        TAY
C - - - - - 0x00B31A 02:B30A: B9 2C B3  LDA tbl_B32C,Y
C - - - - - 0x00B31D 02:B30D: 85 02     STA ram_0002
C - - - - - 0x00B31F 02:B30F: B9 2D B3  LDA tbl_B32C + $01,Y
C - - - - - 0x00B322 02:B312: 85 03     STA ram_0003
C - - - - - 0x00B324 02:B314: A9 06     LDA #con_DA9D_06
C - - - - - 0x00B326 02:B316: 85 1F     STA ram_001F
C - - - - - 0x00B328 02:B318: A9 01     LDA #$01
C - - - - - 0x00B32A 02:B31A: 8D 56 03  STA ram_0356
C - - - - - 0x00B32D 02:B31D: 8A        TXA
C - - - - - 0x00B32E 02:B31E: 48        PHA
C - - - - - 0x00B32F 02:B31F: A9 1C     LDA #con_F3D6_1C
C - - - - - 0x00B331 02:B321: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x00B334 02:B324: 68        PLA
C - - - - - 0x00B335 02:B325: AA        TAX
bra_B326_RTS:
C - - - - - 0x00B336 02:B326: 60        RTS



tbl_B327:
- D 1 - - - 0x00B337 02:B327: 00        .byte $00   ; 00
- D 1 - - - 0x00B338 02:B328: 01        .byte $01   ; 01
- D 1 - - - 0x00B339 02:B329: 02        .byte $02   ; 02
- D 1 - - - 0x00B33A 02:B32A: 01        .byte $01   ; 03
- D 1 - - - 0x00B33B 02:B32B: 00        .byte $00   ; 04



tbl_B32C:
; 00
- D 1 - - - 0x00B33C 02:B32C: 36 A9     .word _off022_0x016946_00
- D 1 - - - 0x00B33E 02:B32E: 48 A9     .word _off022_0x016958_01
- D 1 - - - 0x00B340 02:B330: 5A A9     .word _off022_0x01696A_02
; 06
- D 1 - - - 0x00B342 02:B332: 90 A9     .word _off022_0x0169A0_03
- D 1 - - - 0x00B344 02:B334: 7E A9     .word _off022_0x01698E_04
- D 1 - - - 0x00B346 02:B336: 6C A9     .word _off022_0x01697C_05



sub_B338:
bra_B338_loop:
C - - - - - 0x00B348 02:B338: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00B34B 02:B33B: 18        CLC
C - - - - - 0x00B34C 02:B33C: 65 61     ADC ram_0061
C - - - - - 0x00B34E 02:B33E: 85 00     STA ram_0000
C - - - - - 0x00B350 02:B340: A5 60     LDA ram_0060
C - - - - - 0x00B352 02:B342: 69 00     ADC #$00
C - - - - - 0x00B354 02:B344: C9 02     CMP #$02
C - - - - - 0x00B356 02:B346: D0 2C     BNE bra_B374
C - - - - - 0x00B358 02:B348: A5 00     LDA ram_0000
C - - - - - 0x00B35A 02:B34A: C9 A8     CMP #$A8
C - - - - - 0x00B35C 02:B34C: 90 26     BCC bra_B374
C - - - - - 0x00B35E 02:B34E: C9 C0     CMP #$C0
C - - - - - 0x00B360 02:B350: B0 22     BCS bra_B374
C - - - - - 0x00B362 02:B352: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00B365 02:B355: 18        CLC
C - - - - - 0x00B366 02:B356: 65 64     ADC ram_0064
C - - - - - 0x00B368 02:B358: 85 00     STA ram_0000
C - - - - - 0x00B36A 02:B35A: A5 63     LDA ram_0063
C - - - - - 0x00B36C 02:B35C: 69 00     ADC #$00
C - - - - - 0x00B36E 02:B35E: C9 04     CMP #$04
C - - - - - 0x00B370 02:B360: D0 12     BNE bra_B374
C - - - - - 0x00B372 02:B362: A5 00     LDA ram_0000
C - - - - - 0x00B374 02:B364: C9 EC     CMP #$EC
C - - - - - 0x00B376 02:B366: 90 0C     BCC bra_B374
C - - - - - 0x00B378 02:B368: B9 AA 07  LDA ram_07AA_unk,Y
C - - - - - 0x00B37B 02:B36B: 29 40     AND #$40
C - - - - - 0x00B37D 02:B36D: D0 05     BNE bra_B374
C - - - - - 0x00B37F 02:B36F: A9 03     LDA #$03
C - - - - - 0x00B381 02:B371: 99 CD 00  STA ram_00CD,Y
bra_B374:
C - - - - - 0x00B384 02:B374: C8        INY
C - - - - - 0x00B385 02:B375: C0 02     CPY #$02
C - - - - - 0x00B387 02:B377: 90 BF     BCC bra_B338_loop
C - - - - - 0x00B389 02:B379: 60        RTS



loc_0x00B38A:
C D 1 - - - 0x00B38A 02:B37A: A2 16     LDX #$16
bra_B37C_loop:
C - - - - - 0x00B38C 02:B37C: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00B38F 02:B37F: F0 0B     BEQ bra_B38C
C - - - - - 0x00B391 02:B381: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00B394 02:B384: 49 01     EOR #$01
C - - - - - 0x00B396 02:B386: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00B399 02:B389: 20 92 B3  JSR sub_B392
bra_B38C:
C - - - - - 0x00B39C 02:B38C: E8        INX
C - - - - - 0x00B39D 02:B38D: E0 1A     CPX #$1A
C - - - - - 0x00B39F 02:B38F: 90 EB     BCC bra_B37C_loop
C - - - - - 0x00B3A1 02:B391: 60        RTS



sub_B392:
C - - - - - 0x00B3A2 02:B392: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B3A5 02:B395: 29 20     AND #$20
C - - - - - 0x00B3A7 02:B397: D0 10     BNE bra_B3A9
C - - - - - 0x00B3A9 02:B399: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00B3AC 02:B39C: B0 03     BCS bra_B3A1
C - - - - - 0x00B3AE 02:B39E: 4C EB B3  JMP loc_B3EB
bra_B3A1:
C - - - - - 0x00B3B1 02:B3A1: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B3B4 02:B3A4: 09 20     ORA #$20
C - - - - - 0x00B3B6 02:B3A6: 9D 82 06  STA ram_0682_obj,X
bra_B3A9:
C - - - - - 0x00B3B9 02:B3A9: A5 6A     LDA ram_006A
C - - - - - 0x00B3BB 02:B3AB: 05 69     ORA ram_0069
C - - - - - 0x00B3BD 02:B3AD: F0 17     BEQ bra_B3C6
C - - - - - 0x00B3BF 02:B3AF: A9 00     LDA #$00
C - - - - - 0x00B3C1 02:B3B1: 85 00     STA ram_0000
C - - - - - 0x00B3C3 02:B3B3: 85 01     STA ram_0001
C - - - - - 0x00B3C5 02:B3B5: 20 C8 99  JSR sub_0x0099D8
C - - - - - 0x00B3C8 02:B3B8: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B3CB 02:B3BB: 65 01     ADC ram_0001
C - - - - - 0x00B3CD 02:B3BD: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00B3D0 02:B3C0: 6A        ROR
C - - - - - 0x00B3D1 02:B3C1: 45 01     EOR ram_0001
C - - - - - 0x00B3D3 02:B3C3: 2A        ROL
C - - - - - 0x00B3D4 02:B3C4: B0 25     BCS bra_B3EB
bra_B3C6:
C - - - - - 0x00B3D6 02:B3C6: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00B3D9 02:B3C9: A0 00     LDY #$00
C - - - - - 0x00B3DB 02:B3CB: 84 00     STY ram_0000
C - - - - - 0x00B3DD 02:B3CD: 84 01     STY ram_0001
C - - - - - 0x00B3DF 02:B3CF: 90 09     BCC bra_B3DA
C - - - - - 0x00B3E1 02:B3D1: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B3E4 02:B3D4: D0 04     BNE bra_B3DA
C - - - - - 0x00B3E6 02:B3D6: A9 04     LDA #$04
C - - - - - 0x00B3E8 02:B3D8: 85 01     STA ram_0001
bra_B3DA:
C - - - - - 0x00B3EA 02:B3DA: 20 D5 99  JSR sub_0x0099E5
C - - - - - 0x00B3ED 02:B3DD: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B3F0 02:B3E0: 65 01     ADC ram_0001
C - - - - - 0x00B3F2 02:B3E2: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00B3F5 02:B3E5: 6A        ROR
C - - - - - 0x00B3F6 02:B3E6: 45 01     EOR ram_0001
C - - - - - 0x00B3F8 02:B3E8: 2A        ROL
C - - - - - 0x00B3F9 02:B3E9: 90 06     BCC bra_B3F1_RTS
bra_B3EB:
loc_B3EB:
C D 1 - - - 0x00B3FB 02:B3EB: 20 4C 9A  JSR sub_0x009A5C
C - - - - - 0x00B3FE 02:B3EE: 9D 82 06  STA ram_0682_obj,X
bra_B3F1_RTS:
C - - - - - 0x00B401 02:B3F1: 60        RTS



sub_0x00B402:
C - - - - - 0x00B402 02:B3F2: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B405 02:B3F5: C9 2A     CMP #$2A
C - - - - - 0x00B407 02:B3F7: D0 4B     BNE bra_B444_RTS
C - - - - - 0x00B409 02:B3F9: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00B40C 02:B3FC: 0A        ASL
C - - - - - 0x00B40D 02:B3FD: A8        TAY
C - - - - - 0x00B40E 02:B3FE: B9 76 B4  LDA tbl_B476,Y
C - - - - - 0x00B411 02:B401: 85 00     STA ram_0000
C - - - - - 0x00B413 02:B403: B9 77 B4  LDA tbl_B476 + $01,Y
C - - - - - 0x00B416 02:B406: 85 01     STA ram_0001
C - - - - - 0x00B418 02:B408: A4 3C     LDY ram_003C
C - - - - - 0x00B41A 02:B40A: B1 00     LDA (ram_0000),Y
C - - - - - 0x00B41C 02:B40C: F0 36     BEQ bra_B444_RTS
C - - - - - 0x00B41E 02:B40E: C9 FF     CMP #$FF
C - - - - - 0x00B420 02:B410: F0 47     BEQ bra_B459
C - - - - - 0x00B422 02:B412: C9 FE     CMP #$FE
C - - - - - 0x00B424 02:B414: F0 5D     BEQ bra_B473
C - - - - - 0x00B426 02:B416: 85 1F     STA ram_001F
C - - - - - 0x00B428 02:B418: 29 7F     AND #$7F
C - - - - - 0x00B42A 02:B41A: DD 0A 07  CMP ram_070A_obj,X
C - - - - - 0x00B42D 02:B41D: F0 25     BEQ bra_B444_RTS
C - - - - - 0x00B42F 02:B41F: 48        PHA
C - - - - - 0x00B430 02:B420: A0 04     LDY #$04
C - - - - - 0x00B432 02:B422: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B435 02:B425: F0 01     BEQ bra_B428
C - - - - - 0x00B437 02:B427: 88        DEY
bra_B428:
C - - - - - 0x00B438 02:B428: 68        PLA
C - - - - - 0x00B439 02:B429: 20 62 97  JSR sub_0x009772
C - - - - - 0x00B43C 02:B42C: A5 1F     LDA ram_001F
C - - - - - 0x00B43E 02:B42E: 10 15     BPL bra_B445
C - - - - - 0x00B440 02:B430: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B443 02:B433: 29 40     AND #$40
C - - - - - 0x00B445 02:B435: D0 0D     BNE bra_B444_RTS
C - - - - - 0x00B447 02:B437: A9 04     LDA #$04
C - - - - - 0x00B449 02:B439: 20 62 88  JSR sub_0x008872
C - - - - - 0x00B44C 02:B43C: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B44F 02:B43F: 09 40     ORA #$40
loc_B441:
C D 1 - - - 0x00B451 02:B441: 9D AA 07  STA ram_07AA_unk,X
bra_B444_RTS:
C - - - - - 0x00B454 02:B444: 60        RTS
bra_B445:
C - - - - - 0x00B455 02:B445: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B458 02:B448: 29 40     AND #$40
C - - - - - 0x00B45A 02:B44A: F0 F8     BEQ bra_B444_RTS
C - - - - - 0x00B45C 02:B44C: A9 FC     LDA #$FC
C - - - - - 0x00B45E 02:B44E: 20 62 88  JSR sub_0x008872
C - - - - - 0x00B461 02:B451: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B464 02:B454: 29 BF     AND #$BF
C - - - - - 0x00B466 02:B456: 4C 41 B4  JMP loc_B441
bra_B459:
C - - - - - 0x00B469 02:B459: BD 34 06  LDA ram_obj_animation_hi,X
C - - - - - 0x00B46C 02:B45C: 29 3C     AND #$3C
C - - - - - 0x00B46E 02:B45E: C9 1C     CMP #$1C
C - - - - - 0x00B470 02:B460: D0 07     BNE bra_B469
- - - - - - 0x00B472 02:B462: BD 0A 07  LDA ram_070A_obj,X
- - - - - - 0x00B475 02:B465: C9 01     CMP #$01
- - - - - - 0x00B477 02:B467: F0 DB     BEQ bra_B444_RTS
bra_B469:
C - - - - - 0x00B479 02:B469: A9 00     LDA #$00
C - - - - - 0x00B47B 02:B46B: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00B47E 02:B46E: A9 13     LDA #$13
C - - - - - 0x00B480 02:B470: 4C A1 89  JMP loc_0x0089B1
bra_B473:
- - - - - - 0x00B483 02:B473: 4C 47 9A  JMP loc_0x009A57



tbl_B476:
- D 1 - - - 0x00B486 02:B476: 88 B4     .word _off023_B488_00
- D 1 - - - 0x00B488 02:B478: B8 B4     .word _off023_B4B8_01
- D 1 - - - 0x00B48A 02:B47A: E8 B4     .word _off023_B4E8_02
- D 1 - - - 0x00B48C 02:B47C: 18 B5     .word _off023_B518_03
- D 1 - - - 0x00B48E 02:B47E: 48 B5     .word _off023_B548_04
- D 1 - - - 0x00B490 02:B480: 78 B5     .word _off023_B578_05
- D 1 - - - 0x00B492 02:B482: A8 B5     .word _off023_B5A8_06
- D 1 - - - 0x00B494 02:B484: D2 B5     .word _off023_B5D2_07
- D 1 - - - 0x00B496 02:B486: FC B5     .word _off023_B5FC_08



_off023_B488_00:
- - - - - - 0x00B498 02:B488: 0C        .byte $0C   ; 
- - - - - - 0x00B499 02:B489: 00        .byte $00   ; 
- - - - - - 0x00B49A 02:B48A: 00        .byte $00   ; 
- - - - - - 0x00B49B 02:B48B: 00        .byte $00   ; 
- - - - - - 0x00B49C 02:B48C: 0B        .byte $0B   ; 
- - - - - - 0x00B49D 02:B48D: 00        .byte $00   ; 
- - - - - - 0x00B49E 02:B48E: 00        .byte $00   ; 
- - - - - - 0x00B49F 02:B48F: 00        .byte $00   ; 
- D 1 - I - 0x00B4A0 02:B490: 02        .byte $02   ; 
- - - - - - 0x00B4A1 02:B491: 00        .byte $00   ; 
- - - - - - 0x00B4A2 02:B492: 00        .byte $00   ; 
- - - - - - 0x00B4A3 02:B493: 00        .byte $00   ; 
- D 1 - I - 0x00B4A4 02:B494: 01        .byte $01   ; 
- - - - - - 0x00B4A5 02:B495: 00        .byte $00   ; 
- - - - - - 0x00B4A6 02:B496: 00        .byte $00   ; 
- - - - - - 0x00B4A7 02:B497: 00        .byte $00   ; 
- D 1 - I - 0x00B4A8 02:B498: 04        .byte $04   ; 
- - - - - - 0x00B4A9 02:B499: 00        .byte $00   ; 
- - - - - - 0x00B4AA 02:B49A: 00        .byte $00   ; 
- - - - - - 0x00B4AB 02:B49B: 00        .byte $00   ; 
- - - - - - 0x00B4AC 02:B49C: 03        .byte $03   ; 
- - - - - - 0x00B4AD 02:B49D: 00        .byte $00   ; 
- - - - - - 0x00B4AE 02:B49E: 00        .byte $00   ; 
- - - - - - 0x00B4AF 02:B49F: 00        .byte $00   ; 
- D 1 - I - 0x00B4B0 02:B4A0: 06        .byte $06   ; 
- D 1 - I - 0x00B4B1 02:B4A1: 05        .byte $05   ; 
- D 1 - I - 0x00B4B2 02:B4A2: 07        .byte $07   ; 
- D 1 - I - 0x00B4B3 02:B4A3: 00        .byte $00   ; 
- - - - - - 0x00B4B4 02:B4A4: 00        .byte $00   ; 
- - - - - - 0x00B4B5 02:B4A5: 00        .byte $00   ; 
- D 1 - I - 0x00B4B6 02:B4A6: 09        .byte $09   ; 
- - - - - - 0x00B4B7 02:B4A7: 00        .byte $00   ; 
- - - - - - 0x00B4B8 02:B4A8: 00        .byte $00   ; 
- - - - - - 0x00B4B9 02:B4A9: 00        .byte $00   ; 
- D 1 - I - 0x00B4BA 02:B4AA: 08        .byte $08   ; 
- D 1 - I - 0x00B4BB 02:B4AB: 00        .byte $00   ; 
- - - - - - 0x00B4BC 02:B4AC: 00        .byte $00   ; 
- - - - - - 0x00B4BD 02:B4AD: 00        .byte $00   ; 
- D 1 - I - 0x00B4BE 02:B4AE: 0A        .byte $0A   ; 
- - - - - - 0x00B4BF 02:B4AF: 00        .byte $00   ; 
- - - - - - 0x00B4C0 02:B4B0: 00        .byte $00   ; 
- - - - - - 0x00B4C1 02:B4B1: 00        .byte $00   ; 
- D 1 - I - 0x00B4C2 02:B4B2: 0E        .byte $0E   ; 
- D 1 - I - 0x00B4C3 02:B4B3: 0D        .byte $0D   ; 
- D 1 - I - 0x00B4C4 02:B4B4: 10        .byte $10   ; 
- D 1 - I - 0x00B4C5 02:B4B5: 0F        .byte $0F   ; 
- D 1 - I - 0x00B4C6 02:B4B6: 12        .byte $12   ; 
- D 1 - I - 0x00B4C7 02:B4B7: 11        .byte $11   ; 



_off023_B4B8_01:
- - - - - - 0x00B4C8 02:B4B8: 50        .byte $50   ; 
- - - - - - 0x00B4C9 02:B4B9: 00        .byte $00   ; 
- - - - - - 0x00B4CA 02:B4BA: 00        .byte $00   ; 
- - - - - - 0x00B4CB 02:B4BB: 00        .byte $00   ; 
- - - - - - 0x00B4CC 02:B4BC: 4F        .byte $4F   ; 
- - - - - - 0x00B4CD 02:B4BD: 00        .byte $00   ; 
- - - - - - 0x00B4CE 02:B4BE: 00        .byte $00   ; 
- - - - - - 0x00B4CF 02:B4BF: 00        .byte $00   ; 
- - - - - - 0x00B4D0 02:B4C0: 14        .byte $14   ; 
- - - - - - 0x00B4D1 02:B4C1: 00        .byte $00   ; 
- - - - - - 0x00B4D2 02:B4C2: 00        .byte $00   ; 
- - - - - - 0x00B4D3 02:B4C3: 00        .byte $00   ; 
- - - - - - 0x00B4D4 02:B4C4: 13        .byte $13   ; 
- - - - - - 0x00B4D5 02:B4C5: 00        .byte $00   ; 
- - - - - - 0x00B4D6 02:B4C6: 00        .byte $00   ; 
- - - - - - 0x00B4D7 02:B4C7: 00        .byte $00   ; 
- D 1 - I - 0x00B4D8 02:B4C8: 16        .byte $16   ; 
- - - - - - 0x00B4D9 02:B4C9: 00        .byte $00   ; 
- - - - - - 0x00B4DA 02:B4CA: 00        .byte $00   ; 
- - - - - - 0x00B4DB 02:B4CB: 00        .byte $00   ; 
- D 1 - I - 0x00B4DC 02:B4CC: 15        .byte $15   ; 
- - - - - - 0x00B4DD 02:B4CD: 00        .byte $00   ; 
- - - - - - 0x00B4DE 02:B4CE: 00        .byte $00   ; 
- - - - - - 0x00B4DF 02:B4CF: 00        .byte $00   ; 
- D 1 - I - 0x00B4E0 02:B4D0: 9F        .byte $9F   ; 
- D 1 - I - 0x00B4E1 02:B4D1: 9E        .byte $9E   ; 
- D 1 - I - 0x00B4E2 02:B4D2: 1A        .byte $1A   ; 
- - - - - - 0x00B4E3 02:B4D3: 00        .byte $00   ; 
- D 1 - I - 0x00B4E4 02:B4D4: 00        .byte $00   ; 
- - - - - - 0x00B4E5 02:B4D5: 00        .byte $00   ; 
- D 1 - I - 0x00B4E6 02:B4D6: 1C        .byte $1C   ; 
- - - - - - 0x00B4E7 02:B4D7: 00        .byte $00   ; 
- - - - - - 0x00B4E8 02:B4D8: 00        .byte $00   ; 
- - - - - - 0x00B4E9 02:B4D9: 00        .byte $00   ; 
- D 1 - I - 0x00B4EA 02:B4DA: 1B        .byte $1B   ; 
- - - - - - 0x00B4EB 02:B4DB: 00        .byte $00   ; 
- D 1 - I - 0x00B4EC 02:B4DC: 00        .byte $00   ; 
- - - - - - 0x00B4ED 02:B4DD: 00        .byte $00   ; 
- D 1 - I - 0x00B4EE 02:B4DE: 1D        .byte $1D   ; 
- - - - - - 0x00B4EF 02:B4DF: 00        .byte $00   ; 
- - - - - - 0x00B4F0 02:B4E0: 00        .byte $00   ; 
- - - - - - 0x00B4F1 02:B4E1: 00        .byte $00   ; 
- D 1 - I - 0x00B4F2 02:B4E2: 50        .byte $50   ; 
- D 1 - I - 0x00B4F3 02:B4E3: 4F        .byte $4F   ; 
- D 1 - I - 0x00B4F4 02:B4E4: D2        .byte $D2   ; 
- D 1 - I - 0x00B4F5 02:B4E5: D1        .byte $D1   ; 
- D 1 - I - 0x00B4F6 02:B4E6: 19        .byte $19   ; 
- D 1 - I - 0x00B4F7 02:B4E7: 18        .byte $18   ; 



_off023_B4E8_02:
- - - - - - 0x00B4F8 02:B4E8: 54        .byte $54   ; 
- - - - - - 0x00B4F9 02:B4E9: 00        .byte $00   ; 
- - - - - - 0x00B4FA 02:B4EA: 00        .byte $00   ; 
- - - - - - 0x00B4FB 02:B4EB: 00        .byte $00   ; 
- - - - - - 0x00B4FC 02:B4EC: 53        .byte $53   ; 
- - - - - - 0x00B4FD 02:B4ED: 00        .byte $00   ; 
- - - - - - 0x00B4FE 02:B4EE: 00        .byte $00   ; 
- - - - - - 0x00B4FF 02:B4EF: 00        .byte $00   ; 
- D 1 - I - 0x00B500 02:B4F0: 21        .byte $21   ; 
- - - - - - 0x00B501 02:B4F1: 00        .byte $00   ; 
- - - - - - 0x00B502 02:B4F2: 00        .byte $00   ; 
- - - - - - 0x00B503 02:B4F3: 00        .byte $00   ; 
- D 1 - I - 0x00B504 02:B4F4: 20        .byte $20   ; 
- - - - - - 0x00B505 02:B4F5: 00        .byte $00   ; 
- - - - - - 0x00B506 02:B4F6: 00        .byte $00   ; 
- - - - - - 0x00B507 02:B4F7: 00        .byte $00   ; 
- - - - - - 0x00B508 02:B4F8: 23        .byte $23   ; 
- - - - - - 0x00B509 02:B4F9: 00        .byte $00   ; 
- - - - - - 0x00B50A 02:B4FA: 00        .byte $00   ; 
- - - - - - 0x00B50B 02:B4FB: 00        .byte $00   ; 
- D 1 - I - 0x00B50C 02:B4FC: 22        .byte $22   ; 
- - - - - - 0x00B50D 02:B4FD: 00        .byte $00   ; 
- - - - - - 0x00B50E 02:B4FE: 00        .byte $00   ; 
- - - - - - 0x00B50F 02:B4FF: 00        .byte $00   ; 
- - - - - - 0x00B510 02:B500: A6        .byte $A6   ; 
- D 1 - I - 0x00B511 02:B501: A5        .byte $A5   ; 
- D 1 - I - 0x00B512 02:B502: FF        .byte $FF   ; 
- D 1 - I - 0x00B513 02:B503: 00        .byte $00   ; 
- - - - - - 0x00B514 02:B504: 00        .byte $00   ; 
- - - - - - 0x00B515 02:B505: 00        .byte $00   ; 
- D 1 - I - 0x00B516 02:B506: FF        .byte $FF   ; 
- - - - - - 0x00B517 02:B507: 00        .byte $00   ; 
- - - - - - 0x00B518 02:B508: 00        .byte $00   ; 
- - - - - - 0x00B519 02:B509: 00        .byte $00   ; 
- - - - - - 0x00B51A 02:B50A: FE        .byte $FE   ; 
- - - - - - 0x00B51B 02:B50B: 00        .byte $00   ; 
- - - - - - 0x00B51C 02:B50C: 00        .byte $00   ; 
- - - - - - 0x00B51D 02:B50D: 00        .byte $00   ; 
- - - - - - 0x00B51E 02:B50E: FE        .byte $FE   ; 
- - - - - - 0x00B51F 02:B50F: 00        .byte $00   ; 
- - - - - - 0x00B520 02:B510: 00        .byte $00   ; 
- - - - - - 0x00B521 02:B511: 00        .byte $00   ; 
- D 1 - I - 0x00B522 02:B512: 54        .byte $54   ; 
- D 1 - I - 0x00B523 02:B513: 53        .byte $53   ; 
- D 1 - I - 0x00B524 02:B514: D6        .byte $D6   ; 
- D 1 - I - 0x00B525 02:B515: D5        .byte $D5   ; 
- D 1 - I - 0x00B526 02:B516: 28        .byte $28   ; 
- D 1 - I - 0x00B527 02:B517: 27        .byte $27   ; 



_off023_B518_03:
- - - - - - 0x00B528 02:B518: 2C        .byte $2C   ; 
- - - - - - 0x00B529 02:B519: 00        .byte $00   ; 
- - - - - - 0x00B52A 02:B51A: 00        .byte $00   ; 
- - - - - - 0x00B52B 02:B51B: 00        .byte $00   ; 
- - - - - - 0x00B52C 02:B51C: 2B        .byte $2B   ; 
- - - - - - 0x00B52D 02:B51D: 00        .byte $00   ; 
- - - - - - 0x00B52E 02:B51E: 00        .byte $00   ; 
- - - - - - 0x00B52F 02:B51F: 00        .byte $00   ; 
- - - - - - 0x00B530 02:B520: 2A        .byte $2A   ; 
- - - - - - 0x00B531 02:B521: 00        .byte $00   ; 
- - - - - - 0x00B532 02:B522: 00        .byte $00   ; 
- - - - - - 0x00B533 02:B523: 00        .byte $00   ; 
- D 1 - I - 0x00B534 02:B524: 29        .byte $29   ; 
- - - - - - 0x00B535 02:B525: 00        .byte $00   ; 
- - - - - - 0x00B536 02:B526: 00        .byte $00   ; 
- - - - - - 0x00B537 02:B527: 00        .byte $00   ; 
- - - - - - 0x00B538 02:B528: 2E        .byte $2E   ; 
- - - - - - 0x00B539 02:B529: 00        .byte $00   ; 
- - - - - - 0x00B53A 02:B52A: 00        .byte $00   ; 
- - - - - - 0x00B53B 02:B52B: 00        .byte $00   ; 
- - - - - - 0x00B53C 02:B52C: 2D        .byte $2D   ; 
- - - - - - 0x00B53D 02:B52D: 00        .byte $00   ; 
- - - - - - 0x00B53E 02:B52E: 00        .byte $00   ; 
- - - - - - 0x00B53F 02:B52F: 00        .byte $00   ; 
- - - - - - 0x00B540 02:B530: 2E        .byte $2E   ; 
- - - - - - 0x00B541 02:B531: 2D        .byte $2D   ; 
- D 1 - I - 0x00B542 02:B532: 31        .byte $31   ; 
- - - - - - 0x00B543 02:B533: 00        .byte $00   ; 
- - - - - - 0x00B544 02:B534: 00        .byte $00   ; 
- - - - - - 0x00B545 02:B535: 00        .byte $00   ; 
- - - - - - 0x00B546 02:B536: 32        .byte $32   ; 
- - - - - - 0x00B547 02:B537: 00        .byte $00   ; 
- - - - - - 0x00B548 02:B538: 00        .byte $00   ; 
- - - - - - 0x00B549 02:B539: 00        .byte $00   ; 
- D 1 - I - 0x00B54A 02:B53A: 33        .byte $33   ; 
- - - - - - 0x00B54B 02:B53B: 00        .byte $00   ; 
- - - - - - 0x00B54C 02:B53C: 00        .byte $00   ; 
- - - - - - 0x00B54D 02:B53D: 00        .byte $00   ; 
- - - - - - 0x00B54E 02:B53E: 34        .byte $34   ; 
- - - - - - 0x00B54F 02:B53F: 00        .byte $00   ; 
- - - - - - 0x00B550 02:B540: 00        .byte $00   ; 
- - - - - - 0x00B551 02:B541: 00        .byte $00   ; 
- - - - - - 0x00B552 02:B542: 5A        .byte $5A   ; 
- - - - - - 0x00B553 02:B543: 59        .byte $59   ; 
- - - - - - 0x00B554 02:B544: 5A        .byte $5A   ; 
- - - - - - 0x00B555 02:B545: 59        .byte $59   ; 
- - - - - - 0x00B556 02:B546: 30        .byte $30   ; 
- D 1 - I - 0x00B557 02:B547: 2F        .byte $2F   ; 



_off023_B548_04:
- - - - - - 0x00B558 02:B548: 5C        .byte $5C   ; 
- - - - - - 0x00B559 02:B549: 00        .byte $00   ; 
- - - - - - 0x00B55A 02:B54A: 00        .byte $00   ; 
- - - - - - 0x00B55B 02:B54B: 00        .byte $00   ; 
- - - - - - 0x00B55C 02:B54C: 5B        .byte $5B   ; 
- - - - - - 0x00B55D 02:B54D: 00        .byte $00   ; 
- - - - - - 0x00B55E 02:B54E: 00        .byte $00   ; 
- - - - - - 0x00B55F 02:B54F: 00        .byte $00   ; 
- D 1 - I - 0x00B560 02:B550: 36        .byte $36   ; 
- - - - - - 0x00B561 02:B551: 00        .byte $00   ; 
- - - - - - 0x00B562 02:B552: 00        .byte $00   ; 
- - - - - - 0x00B563 02:B553: 00        .byte $00   ; 
- D 1 - I - 0x00B564 02:B554: 35        .byte $35   ; 
- - - - - - 0x00B565 02:B555: 00        .byte $00   ; 
- - - - - - 0x00B566 02:B556: 00        .byte $00   ; 
- - - - - - 0x00B567 02:B557: 00        .byte $00   ; 
- - - - - - 0x00B568 02:B558: B8        .byte $B8   ; 
- - - - - - 0x00B569 02:B559: 00        .byte $00   ; 
- - - - - - 0x00B56A 02:B55A: 00        .byte $00   ; 
- - - - - - 0x00B56B 02:B55B: 00        .byte $00   ; 
- D 1 - I - 0x00B56C 02:B55C: B7        .byte $B7   ; 
- - - - - - 0x00B56D 02:B55D: 00        .byte $00   ; 
- - - - - - 0x00B56E 02:B55E: 00        .byte $00   ; 
- - - - - - 0x00B56F 02:B55F: 00        .byte $00   ; 
- - - - - - 0x00B570 02:B560: B8        .byte $B8   ; 
- - - - - - 0x00B571 02:B561: B7        .byte $B7   ; 
- D 1 - I - 0x00B572 02:B562: 39        .byte $39   ; 
- - - - - - 0x00B573 02:B563: 00        .byte $00   ; 
- - - - - - 0x00B574 02:B564: 00        .byte $00   ; 
- - - - - - 0x00B575 02:B565: 00        .byte $00   ; 
- D 1 - I - 0x00B576 02:B566: 3A        .byte $3A   ; 
- - - - - - 0x00B577 02:B567: 00        .byte $00   ; 
- - - - - - 0x00B578 02:B568: 00        .byte $00   ; 
- - - - - - 0x00B579 02:B569: 00        .byte $00   ; 
- D 1 - I - 0x00B57A 02:B56A: 3B        .byte $3B   ; 
- - - - - - 0x00B57B 02:B56B: 00        .byte $00   ; 
- - - - - - 0x00B57C 02:B56C: 00        .byte $00   ; 
- - - - - - 0x00B57D 02:B56D: 00        .byte $00   ; 
- D 1 - I - 0x00B57E 02:B56E: 3C        .byte $3C   ; 
- - - - - - 0x00B57F 02:B56F: 00        .byte $00   ; 
- - - - - - 0x00B580 02:B570: 00        .byte $00   ; 
- - - - - - 0x00B581 02:B571: 00        .byte $00   ; 
- D 1 - I - 0x00B582 02:B572: DC        .byte $DC   ; 
- D 1 - I - 0x00B583 02:B573: DB        .byte $DB   ; 
- - - - - - 0x00B584 02:B574: DC        .byte $DC   ; 
- D 1 - I - 0x00B585 02:B575: DB        .byte $DB   ; 
- D 1 - I - 0x00B586 02:B576: 3E        .byte $3E   ; 
- D 1 - I - 0x00B587 02:B577: 3D        .byte $3D   ; 



_off023_B578_05:
- - - - - - 0x00B588 02:B578: C8        .byte $C8   ; 
- - - - - - 0x00B589 02:B579: 00        .byte $00   ; 
- - - - - - 0x00B58A 02:B57A: 00        .byte $00   ; 
- - - - - - 0x00B58B 02:B57B: 00        .byte $00   ; 
- - - - - - 0x00B58C 02:B57C: C7        .byte $C7   ; 
- - - - - - 0x00B58D 02:B57D: 00        .byte $00   ; 
- - - - - - 0x00B58E 02:B57E: 00        .byte $00   ; 
- - - - - - 0x00B58F 02:B57F: 00        .byte $00   ; 
- D 1 - I - 0x00B590 02:B580: 60        .byte $60   ; 
- - - - - - 0x00B591 02:B581: 00        .byte $00   ; 
- - - - - - 0x00B592 02:B582: 00        .byte $00   ; 
- - - - - - 0x00B593 02:B583: 00        .byte $00   ; 
- D 1 - I - 0x00B594 02:B584: 5F        .byte $5F   ; 
- - - - - - 0x00B595 02:B585: 00        .byte $00   ; 
- - - - - - 0x00B596 02:B586: 00        .byte $00   ; 
- - - - - - 0x00B597 02:B587: 00        .byte $00   ; 
- - - - - - 0x00B598 02:B588: C2        .byte $C2   ; 
- - - - - - 0x00B599 02:B589: 40        .byte $40   ; 
- - - - - - 0x00B59A 02:B58A: 00        .byte $00   ; 
- - - - - - 0x00B59B 02:B58B: 3F        .byte $3F   ; 
- D 1 - I - 0x00B59C 02:B58C: C1        .byte $C1   ; 
- - - - - - 0x00B59D 02:B58D: 43        .byte $43   ; 
- - - - - - 0x00B59E 02:B58E: 00        .byte $00   ; 
- - - - - - 0x00B59F 02:B58F: 44        .byte $44   ; 
- D 1 - I - 0x00B5A0 02:B590: C2        .byte $C2   ; 
- D 1 - I - 0x00B5A1 02:B591: C1        .byte $C1   ; 
- D 1 - I - 0x00B5A2 02:B592: 4B        .byte $4B   ; 
- - - - - - 0x00B5A3 02:B593: 00        .byte $00   ; 
- - - - - - 0x00B5A4 02:B594: 00        .byte $00   ; 
- - - - - - 0x00B5A5 02:B595: 00        .byte $00   ; 
- D 1 - I - 0x00B5A6 02:B596: 4C        .byte $4C   ; 
- - - - - - 0x00B5A7 02:B597: 00        .byte $00   ; 
- - - - - - 0x00B5A8 02:B598: 00        .byte $00   ; 
- - - - - - 0x00B5A9 02:B599: 00        .byte $00   ; 
- D 1 - I - 0x00B5AA 02:B59A: 4D        .byte $4D   ; 
- - - - - - 0x00B5AB 02:B59B: 00        .byte $00   ; 
- - - - - - 0x00B5AC 02:B59C: 00        .byte $00   ; 
- - - - - - 0x00B5AD 02:B59D: 00        .byte $00   ; 
- D 1 - I - 0x00B5AE 02:B59E: 4E        .byte $4E   ; 
- - - - - - 0x00B5AF 02:B59F: 00        .byte $00   ; 
- - - - - - 0x00B5B0 02:B5A0: 00        .byte $00   ; 
- - - - - - 0x00B5B1 02:B5A1: 00        .byte $00   ; 
- D 1 - I - 0x00B5B2 02:B5A2: 46        .byte $46   ; 
- D 1 - I - 0x00B5B3 02:B5A3: 45        .byte $45   ; 
- D 1 - I - 0x00B5B4 02:B5A4: C8        .byte $C8   ; 
- D 1 - I - 0x00B5B5 02:B5A5: C7        .byte $C7   ; 
- D 1 - I - 0x00B5B6 02:B5A6: 46        .byte $46   ; 
- D 1 - I - 0x00B5B7 02:B5A7: 45        .byte $45   ; 



_off023_B5A8_06:
- D 1 - I - 0x00B5B8 02:B5A8: 48        .byte $48   ; 
- D 1 - I - 0x00B5B9 02:B5A9: 4A        .byte $4A   ; 
- D 1 - I - 0x00B5BA 02:B5AA: 4B        .byte $4B   ; 
- D 1 - I - 0x00B5BB 02:B5AB: 49        .byte $49   ; 
- D 1 - I - 0x00B5BC 02:B5AC: 47        .byte $47   ; 
- D 1 - I - 0x00B5BD 02:B5AD: 45        .byte $45   ; 
- D 1 - I - 0x00B5BE 02:B5AE: 44        .byte $44   ; 
- D 1 - I - 0x00B5BF 02:B5AF: 46        .byte $46   ; 
- D 1 - I - 0x00B5C0 02:B5B0: 05        .byte $05   ; 
- D 1 - I - 0x00B5C1 02:B5B1: 07        .byte $07   ; 
- D 1 - I - 0x00B5C2 02:B5B2: 08        .byte $08   ; 
- D 1 - I - 0x00B5C3 02:B5B3: 06        .byte $06   ; 
- D 1 - I - 0x00B5C4 02:B5B4: 04        .byte $04   ; 
- D 1 - I - 0x00B5C5 02:B5B5: 02        .byte $02   ; 
- D 1 - I - 0x00B5C6 02:B5B6: 01        .byte $01   ; 
- D 1 - I - 0x00B5C7 02:B5B7: 03        .byte $03   ; 
- D 1 - I - 0x00B5C8 02:B5B8: 0D        .byte $0D   ; 
- D 1 - I - 0x00B5C9 02:B5B9: 0F        .byte $0F   ; 
- D 1 - I - 0x00B5CA 02:B5BA: 10        .byte $10   ; 
- D 1 - I - 0x00B5CB 02:B5BB: 0E        .byte $0E   ; 
- - - - - - 0x00B5CC 02:B5BC: 0C        .byte $0C   ; 
- - - - - - 0x00B5CD 02:B5BD: 0A        .byte $0A   ; 
- D 1 - I - 0x00B5CE 02:B5BE: 09        .byte $09   ; 
- D 1 - I - 0x00B5CF 02:B5BF: 0B        .byte $0B   ; 
- - - - - - 0x00B5D0 02:B5C0: 00        .byte $00   ; 
- - - - - - 0x00B5D1 02:B5C1: 00        .byte $00   ; 
- D 1 - I - 0x00B5D2 02:B5C2: FF        .byte $FF   ; 
- D 1 - I - 0x00B5D3 02:B5C3: FF        .byte $FF   ; 
- D 1 - I - 0x00B5D4 02:B5C4: FF        .byte $FF   ; 
- - - - - - 0x00B5D5 02:B5C5: FF        .byte $FF   ; 
- D 1 - I - 0x00B5D6 02:B5C6: FF        .byte $FF   ; 
- D 1 - I - 0x00B5D7 02:B5C7: FF        .byte $FF   ; 
- D 1 - I - 0x00B5D8 02:B5C8: FF        .byte $FF   ; 
- D 1 - I - 0x00B5D9 02:B5C9: FF        .byte $FF   ; 
- - - - - - 0x00B5DA 02:B5CA: FE        .byte $FE   ; 
- - - - - - 0x00B5DB 02:B5CB: FE        .byte $FE   ; 
- - - - - - 0x00B5DC 02:B5CC: FE        .byte $FE   ; 
- - - - - - 0x00B5DD 02:B5CD: FE        .byte $FE   ; 
- - - - - - 0x00B5DE 02:B5CE: FE        .byte $FE   ; 
- - - - - - 0x00B5DF 02:B5CF: FE        .byte $FE   ; 
- - - - - - 0x00B5E0 02:B5D0: FE        .byte $FE   ; 
- - - - - - 0x00B5E1 02:B5D1: FE        .byte $FE   ; 



_off023_B5D2_07:
- D 1 - I - 0x00B5E2 02:B5D2: 50        .byte $50   ; 
- D 1 - I - 0x00B5E3 02:B5D3: 52        .byte $52   ; 
- D 1 - I - 0x00B5E4 02:B5D4: 53        .byte $53   ; 
- D 1 - I - 0x00B5E5 02:B5D5: 51        .byte $51   ; 
- D 1 - I - 0x00B5E6 02:B5D6: 4F        .byte $4F   ; 
- D 1 - I - 0x00B5E7 02:B5D7: 4D        .byte $4D   ; 
- D 1 - I - 0x00B5E8 02:B5D8: 4C        .byte $4C   ; 
- D 1 - I - 0x00B5E9 02:B5D9: 4E        .byte $4E   ; 
- D 1 - I - 0x00B5EA 02:B5DA: 1E        .byte $1E   ; 
- D 1 - I - 0x00B5EB 02:B5DB: 20        .byte $20   ; 
- D 1 - I - 0x00B5EC 02:B5DC: 21        .byte $21   ; 
- D 1 - I - 0x00B5ED 02:B5DD: 1F        .byte $1F   ; 
- D 1 - I - 0x00B5EE 02:B5DE: 1D        .byte $1D   ; 
- D 1 - I - 0x00B5EF 02:B5DF: 1B        .byte $1B   ; 
- D 1 - I - 0x00B5F0 02:B5E0: 1A        .byte $1A   ; 
- D 1 - I - 0x00B5F1 02:B5E1: 1C        .byte $1C   ; 
- D 1 - I - 0x00B5F2 02:B5E2: 26        .byte $26   ; 
- D 1 - I - 0x00B5F3 02:B5E3: 28        .byte $28   ; 
- D 1 - I - 0x00B5F4 02:B5E4: 29        .byte $29   ; 
- D 1 - I - 0x00B5F5 02:B5E5: 27        .byte $27   ; 
- - - - - - 0x00B5F6 02:B5E6: 25        .byte $25   ; 
- D 1 - I - 0x00B5F7 02:B5E7: 23        .byte $23   ; 
- D 1 - I - 0x00B5F8 02:B5E8: 22        .byte $22   ; 
- D 1 - I - 0x00B5F9 02:B5E9: 24        .byte $24   ; 
- - - - - - 0x00B5FA 02:B5EA: 00        .byte $00   ; 
- - - - - - 0x00B5FB 02:B5EB: 00        .byte $00   ; 
- D 1 - I - 0x00B5FC 02:B5EC: 2A        .byte $2A   ; 
- D 1 - I - 0x00B5FD 02:B5ED: 2B        .byte $2B   ; 
- D 1 - I - 0x00B5FE 02:B5EE: 2B        .byte $2B   ; 
- D 1 - I - 0x00B5FF 02:B5EF: 2B        .byte $2B   ; 
- D 1 - I - 0x00B600 02:B5F0: 2B        .byte $2B   ; 
- D 1 - I - 0x00B601 02:B5F1: 2A        .byte $2A   ; 
- D 1 - I - 0x00B602 02:B5F2: 2A        .byte $2A   ; 
- D 1 - I - 0x00B603 02:B5F3: 2A        .byte $2A   ; 
- D 1 - I - 0x00B604 02:B5F4: 2C        .byte $2C   ; 
- D 1 - I - 0x00B605 02:B5F5: 2D        .byte $2D   ; 
- D 1 - I - 0x00B606 02:B5F6: 2D        .byte $2D   ; 
- D 1 - I - 0x00B607 02:B5F7: 2D        .byte $2D   ; 
- D 1 - I - 0x00B608 02:B5F8: 2D        .byte $2D   ; 
- D 1 - I - 0x00B609 02:B5F9: 2C        .byte $2C   ; 
- D 1 - I - 0x00B60A 02:B5FA: 2C        .byte $2C   ; 
- D 1 - I - 0x00B60B 02:B5FB: 2C        .byte $2C   ; 



_off023_B5FC_08:
- D 1 - I - 0x00B60C 02:B5FC: 3E        .byte $3E   ; 
- D 1 - I - 0x00B60D 02:B5FD: 3E        .byte $3E   ; 
- D 1 - I - 0x00B60E 02:B5FE: 3F        .byte $3F   ; 
- D 1 - I - 0x00B60F 02:B5FF: 3F        .byte $3F   ; 
- D 1 - I - 0x00B610 02:B600: 3F        .byte $3F   ; 
- D 1 - I - 0x00B611 02:B601: 3F        .byte $3F   ; 
- D 1 - I - 0x00B612 02:B602: 3E        .byte $3E   ; 
- - - - - - 0x00B613 02:B603: 3E        .byte $3E   ; 
- D 1 - I - 0x00B614 02:B604: 32        .byte $32   ; 
- - - - - - 0x00B615 02:B605: 34        .byte $34   ; 
- D 1 - I - 0x00B616 02:B606: 35        .byte $35   ; 
- - - - - - 0x00B617 02:B607: 33        .byte $33   ; 
- D 1 - I - 0x00B618 02:B608: 31        .byte $31   ; 
- - - - - - 0x00B619 02:B609: 2F        .byte $2F   ; 
- D 1 - I - 0x00B61A 02:B60A: 2E        .byte $2E   ; 
- D 1 - I - 0x00B61B 02:B60B: 30        .byte $30   ; 
- D 1 - I - 0x00B61C 02:B60C: 3A        .byte $3A   ; 
- D 1 - I - 0x00B61D 02:B60D: 3C        .byte $3C   ; 
- D 1 - I - 0x00B61E 02:B60E: 3D        .byte $3D   ; 
- D 1 - I - 0x00B61F 02:B60F: 3B        .byte $3B   ; 
- D 1 - I - 0x00B620 02:B610: 39        .byte $39   ; 
- D 1 - I - 0x00B621 02:B611: 38        .byte $38   ; 
- D 1 - I - 0x00B622 02:B612: 36        .byte $36   ; 
- - - - - - 0x00B623 02:B613: 37        .byte $37   ; 
- - - - - - 0x00B624 02:B614: 00        .byte $00   ; 
- - - - - - 0x00B625 02:B615: 00        .byte $00   ; 
- D 1 - I - 0x00B626 02:B616: 42        .byte $42   ; 
- D 1 - I - 0x00B627 02:B617: 42        .byte $42   ; 
- - - - - - 0x00B628 02:B618: 42        .byte $42   ; 
- D 1 - I - 0x00B629 02:B619: 42        .byte $42   ; 
- D 1 - I - 0x00B62A 02:B61A: 40        .byte $40   ; 
- D 1 - I - 0x00B62B 02:B61B: 40        .byte $40   ; 
- D 1 - I - 0x00B62C 02:B61C: 40        .byte $40   ; 
- D 1 - I - 0x00B62D 02:B61D: 40        .byte $40   ; 
- D 1 - I - 0x00B62E 02:B61E: 43        .byte $43   ; 
- D 1 - I - 0x00B62F 02:B61F: 43        .byte $43   ; 
- - - - - - 0x00B630 02:B620: 43        .byte $43   ; 
- D 1 - I - 0x00B631 02:B621: 43        .byte $43   ; 
- D 1 - I - 0x00B632 02:B622: 41        .byte $41   ; 
- D 1 - I - 0x00B633 02:B623: 41        .byte $41   ; 
- - - - - - 0x00B634 02:B624: 41        .byte $41   ; 
- D 1 - I - 0x00B635 02:B625: 41        .byte $41   ; 



sub_0x00B636:
C - - - - - 0x00B636 02:B626: BD DC 07  LDA ram_07DC_unk,X
C - - - - - 0x00B639 02:B629: D0 16     BNE bra_B641
C - - - - - 0x00B63B 02:B62B: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B63E 02:B62E: B9 38 B8  LDA tbl_B83A - $02,Y
C - - - - - 0x00B641 02:B631: D0 11     BNE bra_B644
C - - - - - 0x00B643 02:B633: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B646 02:B636: F0 04     BEQ bra_B63C
C - - - - - 0x00B648 02:B638: A9 0A     LDA #$0A
C - - - - - 0x00B64A 02:B63A: D0 02     BNE bra_B63E    ; jmp
bra_B63C:
C - - - - - 0x00B64C 02:B63C: A9 09     LDA #$09
bra_B63E:
loc_B63E:   ; bzk optimize
C - - - - - 0x00B64E 02:B63E: 4C B0 B7  JMP loc_B7B0
bra_B641:
C - - - - - 0x00B651 02:B641: DE DC 07  DEC ram_07DC_unk,X
bra_B644:
C - - - - - 0x00B654 02:B644: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B657 02:B647: B9 0C B8  LDA tbl_B80E - $02,Y
C - - - - - 0x00B65A 02:B64A: F0 1D     BEQ bra_B669
C - - - - - 0x00B65C 02:B64C: 85 3A     STA ram_003A
C - - - - - 0x00B65E 02:B64E: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00B661 02:B651: 29 03     AND #$03
C - - - - - 0x00B663 02:B653: F0 14     BEQ bra_B669
C - - - - - 0x00B665 02:B655: A5 3A     LDA ram_003A
C - - - - - 0x00B667 02:B657: 10 05     BPL bra_B65E
- - - - - - 0x00B669 02:B659: 29 7F     AND #$7F
- - - - - - 0x00B66B 02:B65B: 4C 3E B6  JMP loc_B63E
bra_B65E:
C - - - - - 0x00B66E 02:B65E: A5 23     LDA ram_0023
C - - - - - 0x00B670 02:B660: 4A        LSR
C - - - - - 0x00B671 02:B661: 29 01     AND #$01
C - - - - - 0x00B673 02:B663: A8        TAY
C - - - - - 0x00B674 02:B664: B9 54 03  LDA ram_0354,Y
C - - - - - 0x00B677 02:B667: D0 11     BNE bra_B67A
bra_B669:
C - - - - - 0x00B679 02:B669: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B67C 02:B66C: B9 12 B8  LDA tbl_B814 - $02,Y
C - - - - - 0x00B67F 02:B66F: F0 27     BEQ bra_B698
C - - - - - 0x00B681 02:B671: 85 3A     STA ram_003A
C - - - - - 0x00B683 02:B673: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x00B686 02:B676: 29 FC     AND #$FC
C - - - - - 0x00B688 02:B678: F0 1E     BEQ bra_B698
bra_B67A:
C - - - - - 0x00B68A 02:B67A: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00B68D 02:B67D: 30 18     BMI bra_B697_RTS
C - - - - - 0x00B68F 02:B67F: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B692 02:B682: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B695 02:B685: 29 7F     AND #$7F
C - - - - - 0x00B697 02:B687: D9 32 B8  CMP tbl_B834 - $02,Y
C - - - - - 0x00B69A 02:B68A: B0 08     BCS bra_B694
- - - - - - 0x00B69C 02:B68C: BD BE 07  LDA ram_07BE_unk,X
- - - - - - 0x00B69F 02:B68F: 09 80     ORA #$80
- - - - - - 0x00B6A1 02:B691: 9D BE 07  STA ram_07BE_unk,X
bra_B694:
C - - - - - 0x00B6A4 02:B694: 4C AE B7  JMP loc_B7AE
bra_B697_RTS:
- - - - - - 0x00B6A7 02:B697: 60        RTS
bra_B698:
C - - - - - 0x00B6A8 02:B698: A9 00     LDA #$00
C - - - - - 0x00B6AA 02:B69A: 85 3B     STA ram_003B
C - - - - - 0x00B6AC 02:B69C: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B6AF 02:B69F: B9 18 B8  LDA tbl_B81A - $02,Y
C - - - - - 0x00B6B2 02:B6A2: F0 1B     BEQ bra_B6BF_RTS
C - - - - - 0x00B6B4 02:B6A4: 85 3A     STA ram_003A
C - - - - - 0x00B6B6 02:B6A6: BD 4C 07  LDA ram_074C_obj,X
C - - - - - 0x00B6B9 02:B6A9: 29 03     AND #$03
C - - - - - 0x00B6BB 02:B6AB: 85 00     STA ram_0000
C - - - - - 0x00B6BD 02:B6AD: BD 62 07  LDA ram_0762_obj,X
C - - - - - 0x00B6C0 02:B6B0: 29 FC     AND #$FC
C - - - - - 0x00B6C2 02:B6B2: 05 00     ORA ram_0000
C - - - - - 0x00B6C4 02:B6B4: F0 09     BEQ bra_B6BF_RTS
- - - - - - 0x00B6C6 02:B6B6: E6 3B     INC ram_003B
- - - - - - 0x00B6C8 02:B6B8: BD 00 06  LDA ram_0600_obj,X
- - - - - - 0x00B6CB 02:B6BB: 29 04     AND #$04
- - - - - - 0x00B6CD 02:B6BD: D0 D5     BNE bra_B694
bra_B6BF_RTS:
C - - - - - 0x00B6CF 02:B6BF: 60        RTS



loc_0x00B6D0:
C D 1 - - - 0x00B6D0 02:B6C0: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00B6D3 02:B6C3: F0 FA     BEQ bra_B6BF_RTS
C - - - - - 0x00B6D5 02:B6C5: A5 3B     LDA ram_003B
C - - - - - 0x00B6D7 02:B6C7: D0 08     BNE bra_B6D1
C - - - - - 0x00B6D9 02:B6C9: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B6DC 02:B6CC: B9 FA B7  LDA tbl_B7FC - $02,Y
C - - - - - 0x00B6DF 02:B6CF: D0 03     BNE bra_B6D4
bra_B6D1:
C - - - - - 0x00B6E1 02:B6D1: 4C 4A B7  JMP loc_B74A
bra_B6D4:
C - - - - - 0x00B6E4 02:B6D4: 85 3A     STA ram_003A
C - - - - - 0x00B6E6 02:B6D6: A9 00     LDA #$00
C - - - - - 0x00B6E8 02:B6D8: 85 00     STA ram_0000
C - - - - - 0x00B6EA 02:B6DA: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B6ED 02:B6DD: F0 04     BEQ bra_B6E3
- - - - - - 0x00B6EF 02:B6DF: A9 10     LDA #$10
- - - - - - 0x00B6F1 02:B6E1: D0 0C     BNE bra_B6EF    ; jmp
bra_B6E3:
C - - - - - 0x00B6F3 02:B6E3: A0 08     LDY #$08
C - - - - - 0x00B6F5 02:B6E5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B6F8 02:B6E8: 29 40     AND #$40
C - - - - - 0x00B6FA 02:B6EA: F0 02     BEQ bra_B6EE
C - - - - - 0x00B6FC 02:B6EC: A0 04     LDY #$04
bra_B6EE:
C - - - - - 0x00B6FE 02:B6EE: 98        TYA
bra_B6EF:
C - - - - - 0x00B6FF 02:B6EF: 85 01     STA ram_0001
C - - - - - 0x00B701 02:B6F1: 20 C0 8F  JSR sub_0x008FD0
C - - - - - 0x00B704 02:B6F4: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B707 02:B6F7: D0 06     BNE bra_B6FF
C - - - - - 0x00B709 02:B6F9: A5 01     LDA ram_0001
C - - - - - 0x00B70B 02:B6FB: F0 29     BEQ bra_B726
C - - - - - 0x00B70D 02:B6FD: D0 07     BNE bra_B706    ; jmp
bra_B6FF:
- - - - - - 0x00B70F 02:B6FF: A4 01     LDY ram_0001
- - - - - - 0x00B711 02:B701: B9 E2 B7  LDA tbl_B7E2,Y
- - - - - - 0x00B714 02:B704: F0 20     BEQ bra_B726
bra_B706:
C - - - - - 0x00B716 02:B706: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B719 02:B709: 29 01     AND #$01
C - - - - - 0x00B71B 02:B70B: D0 3D     BNE bra_B74A
C - - - - - 0x00B71D 02:B70D: A0 00     LDY #$00
C - - - - - 0x00B71F 02:B70F: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B722 02:B712: 29 08     AND #$08
C - - - - - 0x00B724 02:B714: F0 0D     BEQ bra_B723
C - - - - - 0x00B726 02:B716: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B729 02:B719: C9 08     CMP #$08
C - - - - - 0x00B72B 02:B71B: D0 03     BNE bra_B720
C - - - - - 0x00B72D 02:B71D: FE 78 07  INC ram_0778_unk,X
bra_B720:
C - - - - - 0x00B730 02:B720: 4C D7 B7  JMP loc_B7D7
bra_B723:
C - - - - - 0x00B733 02:B723: 4C AE B7  JMP loc_B7AE
bra_B726:
C - - - - - 0x00B736 02:B726: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B739 02:B729: 29 02     AND #$02
C - - - - - 0x00B73B 02:B72B: D0 1D     BNE bra_B74A
C - - - - - 0x00B73D 02:B72D: A0 00     LDY #$00
C - - - - - 0x00B73F 02:B72F: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B742 02:B732: D0 02     BNE bra_B736
C - - - - - 0x00B744 02:B734: A0 48     LDY #$48
bra_B736:
C - - - - - 0x00B746 02:B736: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B749 02:B739: 29 08     AND #$08
C - - - - - 0x00B74B 02:B73B: D0 E3     BNE bra_B720
C - - - - - 0x00B74D 02:B73D: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B750 02:B740: B9 00 B8  LDA tbl_B802 - $02,Y
C - - - - - 0x00B753 02:B743: F0 05     BEQ bra_B74A
C - - - - - 0x00B755 02:B745: 85 3A     STA ram_003A
C - - - - - 0x00B757 02:B747: 4C AE B7  JMP loc_B7AE
bra_B74A:
loc_B74A:
C D 1 - - - 0x00B75A 02:B74A: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B75D 02:B74D: 29 DF     AND #$DF
C - - - - - 0x00B75F 02:B74F: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00B762 02:B752: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00B765 02:B755: C9 08     CMP #$08
C - - - - - 0x00B767 02:B757: F0 0A     BEQ bra_B763
C - - - - - 0x00B769 02:B759: BC 82 07  LDY ram_0782_unk,X
C - - - - - 0x00B76C 02:B75C: B9 06 B8  LDA tbl_B808 - $02,Y
C - - - - - 0x00B76F 02:B75F: F0 3E     BEQ bra_B79F_RTS
C - - - - - 0x00B771 02:B761: 85 3A     STA ram_003A
bra_B763:
C - - - - - 0x00B773 02:B763: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B776 02:B766: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B779 02:B769: D0 12     BNE bra_B77D
C - - - - - 0x00B77B 02:B76B: C8        INY
C - - - - - 0x00B77C 02:B76C: C8        INY
C - - - - - 0x00B77D 02:B76D: A9 00     LDA #$00
C - - - - - 0x00B77F 02:B76F: 85 01     STA ram_0001
C - - - - - 0x00B781 02:B771: A9 0C     LDA #$0C
C - - - - - 0x00B783 02:B773: C0 06     CPY #$06
C - - - - - 0x00B785 02:B775: 90 02     BCC bra_B779
C - - - - - 0x00B787 02:B777: 49 FF     EOR #$FF
bra_B779:
C - - - - - 0x00B789 02:B779: 85 00     STA ram_0000
C - - - - - 0x00B78B 02:B77B: D0 0A     BNE bra_B787    ; jmp
bra_B77D:
C - - - - - 0x00B78D 02:B77D: B9 EC B7  LDA tbl_B7EC,Y
C - - - - - 0x00B790 02:B780: 85 00     STA ram_0000
C - - - - - 0x00B792 02:B782: B9 ED B7  LDA tbl_B7EC + $01,Y
C - - - - - 0x00B795 02:B785: 85 01     STA ram_0001
bra_B787:
C - - - - - 0x00B797 02:B787: 20 C0 8F  JSR sub_0x008FD0
C - - - - - 0x00B79A 02:B78A: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00B79D 02:B78D: D0 11     BNE bra_B7A0
C - - - - - 0x00B79F 02:B78F: A5 01     LDA ram_0001
C - - - - - 0x00B7A1 02:B791: F0 0C     BEQ bra_B79F_RTS
C - - - - - 0x00B7A3 02:B793: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B7A6 02:B796: 09 20     ORA #$20
C - - - - - 0x00B7A8 02:B798: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00B7AB 02:B79B: 29 10     AND #$10
C - - - - - 0x00B7AD 02:B79D: F0 08     BEQ bra_B7A7
bra_B79F_RTS:
C - - - - - 0x00B7AF 02:B79F: 60        RTS
bra_B7A0:
C - - - - - 0x00B7B0 02:B7A0: A4 01     LDY ram_0001
C - - - - - 0x00B7B2 02:B7A2: B9 E2 B7  LDA tbl_B7E2,Y
C - - - - - 0x00B7B5 02:B7A5: F0 F8     BEQ bra_B79F_RTS
bra_B7A7:
C - - - - - 0x00B7B7 02:B7A7: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B7BA 02:B7AA: 29 04     AND #$04
C - - - - - 0x00B7BC 02:B7AC: D0 F1     BNE bra_B79F_RTS
loc_B7AE:
C D 1 - - - 0x00B7BE 02:B7AE: A5 3A     LDA ram_003A
loc_B7B0:
C D 1 - - - 0x00B7C0 02:B7B0: 38        SEC
C - - - - - 0x00B7C1 02:B7B1: E9 01     SBC #$01
C - - - - - 0x00B7C3 02:B7B3: 0A        ASL
C - - - - - 0x00B7C4 02:B7B4: A8        TAY
C - - - - - 0x00B7C5 02:B7B5: B9 20 B8  LDA tbl_B820,Y
C - - - - - 0x00B7C8 02:B7B8: 85 3A     STA ram_003A
C - - - - - 0x00B7CA 02:B7BA: B9 21 B8  LDA tbl_B820 + $01,Y
C - - - - - 0x00B7CD 02:B7BD: DD 82 07  CMP ram_0782_unk,X
C - - - - - 0x00B7D0 02:B7C0: D0 09     BNE bra_B7CB
C - - - - - 0x00B7D2 02:B7C2: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B7D5 02:B7C5: 29 7F     AND #$7F
C - - - - - 0x00B7D7 02:B7C7: C5 3A     CMP ram_003A
C - - - - - 0x00B7D9 02:B7C9: F0 0B     BEQ bra_B7D6_RTS
bra_B7CB:
C - - - - - 0x00B7DB 02:B7CB: B9 21 B8  LDA tbl_B820 + $01,Y
C - - - - - 0x00B7DE 02:B7CE: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00B7E1 02:B7D1: A5 3A     LDA ram_003A
C - - - - - 0x00B7E3 02:B7D3: 9D 78 07  STA ram_0778_unk,X
bra_B7D6_RTS:
C - - - - - 0x00B7E6 02:B7D6: 60        RTS
loc_B7D7:
C D 1 - - - 0x00B7E7 02:B7D7: 98        TYA
C - - - - - 0x00B7E8 02:B7D8: D0 05     BNE bra_B7DF
C - - - - - 0x00B7EA 02:B7DA: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00B7ED 02:B7DD: 29 F0     AND #$F0
bra_B7DF:
C - - - - - 0x00B7EF 02:B7DF: 4C EE 95  JMP loc_0x0095FE_sta_06B2x



tbl_B7E2:
- D 1 - - - 0x00B7F2 02:B7E2: 01        .byte $01   ; 00
- D 1 - - - 0x00B7F3 02:B7E3: 01        .byte $01   ; 01
- - - - - - 0x00B7F4 02:B7E4: 01        .byte $01   ; 02
- - - - - - 0x00B7F5 02:B7E5: 01        .byte $01   ; 03
- - - - - - 0x00B7F6 02:B7E6: 01        .byte $01   ; 04
- - - - - - 0x00B7F7 02:B7E7: 01        .byte $01   ; 05
- D 1 - - - 0x00B7F8 02:B7E8: 00        .byte $00   ; 06
- - - - - - 0x00B7F9 02:B7E9: 00        .byte $00   ; 07
- D 1 - - - 0x00B7FA 02:B7EA: 00        .byte $00   ; 08
- D 1 - - - 0x00B7FB 02:B7EB: 01        .byte $01   ; 09



tbl_B7EC:
- D 1 - - - 0x00B7FC 02:B7EC: 08        .byte $08, $10   ; 00
- D 1 - - - 0x00B7FE 02:B7EE: 08        .byte $08, $18   ; 02
- D 1 - - - 0x00B800 02:B7F0: 00        .byte $00, $18   ; 04
- D 1 - - - 0x00B802 02:B7F2: F8        .byte $F8, $18   ; 06
- D 1 - - - 0x00B804 02:B7F4: F8        .byte $F8, $10   ; 08
- D 1 - - - 0x00B806 02:B7F6: F8        .byte $F8, $08   ; 0A
- D 1 - - - 0x00B808 02:B7F8: 00        .byte $00, $08   ; 0C
- D 1 - - - 0x00B80A 02:B7FA: 08        .byte $08, $08   ; 0E



tbl_B7FC:
- D 1 - - - 0x00B80C 02:B7FC: 01        .byte $01   ; 02
- D 1 - - - 0x00B80D 02:B7FD: 01        .byte $01   ; 03
- D 1 - - - 0x00B80E 02:B7FE: 01        .byte $01   ; 04
- D 1 - - - 0x00B80F 02:B7FF: 00        .byte $00   ; 05
- D 1 - - - 0x00B810 02:B800: 00        .byte $00   ; 06
- D 1 - - - 0x00B811 02:B801: 00        .byte $00   ; 07



tbl_B802:
- D 1 - - - 0x00B812 02:B802: 02        .byte $02   ; 02
- D 1 - - - 0x00B813 02:B803: 02        .byte $02   ; 03
- D 1 - - - 0x00B814 02:B804: 02        .byte $02   ; 04
- - - - - - 0x00B815 02:B805: 06        .byte $06   ; 05
- - - - - - 0x00B816 02:B806: 06        .byte $06   ; 06
- - - - - - 0x00B817 02:B807: 06        .byte $06   ; 07



tbl_B808:
- D 1 - - - 0x00B818 02:B808: 03        .byte $03   ; 02
- D 1 - - - 0x00B819 02:B809: 03        .byte $03   ; 03
- D 1 - - - 0x00B81A 02:B80A: 00        .byte $00   ; 04
- D 1 - - - 0x00B81B 02:B80B: 05        .byte $05   ; 05
- D 1 - - - 0x00B81C 02:B80C: 05        .byte $05   ; 06
- D 1 - - - 0x00B81D 02:B80D: 00        .byte $00   ; 07



tbl_B80E:
- D 1 - - - 0x00B81E 02:B80E: 04        .byte $04   ; 02
- D 1 - - - 0x00B81F 02:B80F: 04        .byte $04   ; 03
- D 1 - - - 0x00B820 02:B810: 04        .byte $04   ; 04
- D 1 - - - 0x00B821 02:B811: 08        .byte $08   ; 05
- D 1 - - - 0x00B822 02:B812: 08        .byte $08   ; 06
- D 1 - - - 0x00B823 02:B813: 08        .byte $08   ; 07



tbl_B814:
- D 1 - - - 0x00B824 02:B814: 04        .byte $04   ; 02
- D 1 - - - 0x00B825 02:B815: 04        .byte $04   ; 03
- D 1 - - - 0x00B826 02:B816: 04        .byte $04   ; 04
- D 1 - - - 0x00B827 02:B817: 08        .byte $08   ; 05
- D 1 - - - 0x00B828 02:B818: 08        .byte $08   ; 06
- D 1 - - - 0x00B829 02:B819: 08        .byte $08   ; 07



tbl_B81A:
- D 1 - - - 0x00B82A 02:B81A: 03        .byte $03   ; 02
- D 1 - - - 0x00B82B 02:B81B: 03        .byte $03   ; 03
- D 1 - - - 0x00B82C 02:B81C: 00        .byte $00   ; 04
- D 1 - - - 0x00B82D 02:B81D: 07        .byte $07   ; 05
- D 1 - - - 0x00B82E 02:B81E: 07        .byte $07   ; 06
- D 1 - - - 0x00B82F 02:B81F: 00        .byte $00   ; 07



tbl_B820:
- D 1 - - - 0x00B830 02:B820: 14        .byte $14, $04   ; 01
- D 1 - - - 0x00B832 02:B822: 11        .byte $11, $04   ; 02
- D 1 - - - 0x00B834 02:B824: 1D        .byte $1D, $04   ; 03
- D 1 - - - 0x00B836 02:B826: 00        .byte $00, $04   ; 04
- D 1 - - - 0x00B838 02:B828: 10        .byte $10, $07   ; 05
- - - - - - 0x00B83A 02:B82A: 10        .byte $10, $07   ; 06
- - - - - - 0x00B83C 02:B82C: 10        .byte $10, $07   ; 07
- D 1 - - - 0x00B83E 02:B82E: 00        .byte $00, $07   ; 08
- D 1 - - - 0x00B840 02:B830: 25        .byte $25, $04   ; 09
- D 1 - - - 0x00B842 02:B832: 14        .byte $14, $07   ; 0A



tbl_B834:
- D 1 - - - 0x00B844 02:B834: 00        .byte $00   ; 02
- D 1 - - - 0x00B845 02:B835: 00        .byte $00   ; 03
- D 1 - - - 0x00B846 02:B836: 0B        .byte $0B   ; 04
- D 1 - - - 0x00B847 02:B837: 00        .byte $00   ; 05
- D 1 - - - 0x00B848 02:B838: 00        .byte $00   ; 06
- D 1 - - - 0x00B849 02:B839: 0A        .byte $0A   ; 07



tbl_B83A:
- D 1 - - - 0x00B84A 02:B83A: 00        .byte $00   ; 02
- D 1 - - - 0x00B84B 02:B83B: 00        .byte $00   ; 03
- D 1 - - - 0x00B84C 02:B83C: 01        .byte $01   ; 04
- D 1 - - - 0x00B84D 02:B83D: 00        .byte $00   ; 05
- D 1 - - - 0x00B84E 02:B83E: 01        .byte $01   ; 06
; bzk bug, reading B83F as index 07



ofs_016_0x00B84F_09:
C D 1 J - - 0x00B84F 02:B83F: 20 45 B8  JSR sub_B845
C - - - - - 0x00B852 02:B842: 4C 10 8E  JMP loc_0x008E20
sub_B845:
C - - - - - 0x00B855 02:B845: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B858 02:B848: D0 0D     BNE bra_B857
C - - - - - 0x00B85A 02:B84A: A9 00     LDA #$00
C - - - - - 0x00B85C 02:B84C: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00B85F 02:B84F: A9 08     LDA #$08
C - - - - - 0x00B861 02:B851: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00B864 02:B854: FE 78 07  INC ram_0778_unk,X
bra_B857:
C - - - - - 0x00B867 02:B857: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B86A 02:B85A: B9 CC B8  LDA tbl_B8CC_index,Y
C - - - - - 0x00B86D 02:B85D: 85 91     STA ram_0091
C - - - - - 0x00B86F 02:B85F: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00B872 02:B862: A4 91     LDY ram_0091
C - - - - - 0x00B874 02:B864: D9 CF B8  CMP tbl_B8CF,Y
C - - - - - 0x00B877 02:B867: D0 3B     BNE bra_B8A4
C - - - - - 0x00B879 02:B869: A2 00     LDX #$00
bra_B86B_loop:
C - - - - - 0x00B87B 02:B86B: 86 90     STX ram_0090
C - - - - - 0x00B87D 02:B86D: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00B880 02:B870: F0 28     BEQ bra_B89A
C - - - - - 0x00B882 02:B872: 20 A7 B8  JSR sub_B8A7
C - - - - - 0x00B885 02:B875: 90 23     BCC bra_B89A
C - - - - - 0x00B887 02:B877: 20 AF B8  JSR sub_B8AF
C - - - - - 0x00B88A 02:B87A: 90 1E     BCC bra_B89A
C - - - - - 0x00B88C 02:B87C: A2 00     LDX #$00
bra_B87E_loop:
C - - - - - 0x00B88E 02:B87E: B9 D8 B8  LDA tbl_B8D8,Y
C - - - - - 0x00B891 02:B881: 95 18     STA ram_0018,X
C - - - - - 0x00B893 02:B883: C8        INY
C - - - - - 0x00B894 02:B884: E8        INX
C - - - - - 0x00B895 02:B885: E0 04     CPX #$04
C - - - - - 0x00B897 02:B887: 90 F5     BCC bra_B87E_loop
C - - - - - 0x00B899 02:B889: A4 90     LDY ram_0090
C - - - - - 0x00B89B 02:B88B: A9 01     LDA #$01
C - - - - - 0x00B89D 02:B88D: C0 01     CPY #$01
C - - - - - 0x00B89F 02:B88F: D0 02     BNE bra_B893
- - - - - - 0x00B8A1 02:B891: A9 02     LDA #$02
bra_B893:
C - - - - - 0x00B8A3 02:B893: 85 00     STA ram_0000
C - - - - - 0x00B8A5 02:B895: A6 53     LDX ram_0053
C - - - - - 0x00B8A7 02:B897: 20 15 9E  JSR sub_0x009E25
bra_B89A:
C - - - - - 0x00B8AA 02:B89A: 20 F6 B8  JSR sub_B8F6
C - - - - - 0x00B8AD 02:B89D: A6 90     LDX ram_0090
C - - - - - 0x00B8AF 02:B89F: E8        INX
C - - - - - 0x00B8B0 02:B8A0: E0 02     CPX #$02
C - - - - - 0x00B8B2 02:B8A2: 90 C7     BCC bra_B86B_loop
bra_B8A4:
C - - - - - 0x00B8B4 02:B8A4: A6 53     LDX ram_0053
C - - - - - 0x00B8B6 02:B8A6: 60        RTS



sub_B8A7:
C - - - - - 0x00B8B7 02:B8A7: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x00B8BA 02:B8AA: A4 91     LDY ram_0091
C - - - - - 0x00B8BC 02:B8AC: 4C B8 B8  JMP loc_B8B8



sub_B8AF:
C - - - - - 0x00B8BF 02:B8AF: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00B8C2 02:B8B2: A4 91     LDY ram_0091
C - - - - - 0x00B8C4 02:B8B4: C8        INY
C - - - - - 0x00B8C5 02:B8B5: C8        INY
C - - - - - 0x00B8C6 02:B8B6: C8        INY
C - - - - - 0x00B8C7 02:B8B7: C8        INY
loc_B8B8:
C D 1 - - - 0x00B8C8 02:B8B8: A2 00     LDX #$00
bra_B8BA_loop:
C - - - - - 0x00B8CA 02:B8BA: B9 D0 B8  LDA tbl_B8D0,Y
C - - - - - 0x00B8CD 02:B8BD: 95 08     STA ram_0008,X
C - - - - - 0x00B8CF 02:B8BF: C8        INY
C - - - - - 0x00B8D0 02:B8C0: E8        INX
C - - - - - 0x00B8D1 02:B8C1: E0 04     CPX #$04
C - - - - - 0x00B8D3 02:B8C3: 90 F5     BCC bra_B8BA_loop
C - - - - - 0x00B8D5 02:B8C5: A4 91     LDY ram_0091
C - - - - - 0x00B8D7 02:B8C7: A6 90     LDX ram_0090
C - - - - - 0x00B8D9 02:B8C9: 4C 83 80  JMP loc_0x008093



tbl_B8CC_index:
- D 1 - - - 0x00B8DC 02:B8CC: 00        .byte $00   ; 00
- D 1 - - - 0x00B8DD 02:B8CD: 0D        .byte $0D   ; 01
- D 1 - - - 0x00B8DE 02:B8CE: 1A        .byte $1A   ; 02



tbl_B8CF:
; 0x00B874
- D 1 - - - 0x00B8DF 02:B8CF: 85        .byte $85   ; 00
tbl_B8D0:
; 0x00B8CA 00
- D 1 - - - 0x00B8E0 02:B8D0: 5C        .byte $5C   ; 01
- D 1 - - - 0x00B8E1 02:B8D1: 0C        .byte $0C   ; 02
- D 1 - - - 0x00B8E2 02:B8D2: DC        .byte $DC   ; 03
- D 1 - - - 0x00B8E3 02:B8D3: 0C        .byte $0C   ; 04
; 0x00B8CA 04
- - - - - - 0x00B8E4 02:B8D4: 40        .byte $40   ; 05
- - - - - - 0x00B8E5 02:B8D5: 00        .byte $00   ; 06
- - - - - - 0x00B8E6 02:B8D6: 50        .byte $50   ; 07
- - - - - - 0x00B8E7 02:B8D7: 00        .byte $00   ; 08
tbl_B8D8:
; 0x00B88E
- - - - - - 0x00B8E8 02:B8D8: 00        .byte $00   ; 09
- - - - - - 0x00B8E9 02:B8D9: 01        .byte $01   ; 0A
- - - - - - 0x00B8EA 02:B8DA: 00        .byte $00   ; 0B
- - - - - - 0x00B8EB 02:B8DB: 00        .byte $00   ; 0C
; 0x00B874
- D 1 - - - 0x00B8EC 02:B8DC: 86        .byte $86   ; 0D
; 0x00B8CA 00
- D 1 - - - 0x00B8ED 02:B8DD: 7E        .byte $7E   ; 0E
- D 1 - - - 0x00B8EE 02:B8DE: 0C        .byte $0C   ; 0F
- D 1 - - - 0x00B8EF 02:B8DF: 9E        .byte $9E   ; 10
- D 1 - - - 0x00B8F0 02:B8E0: 0C        .byte $0C   ; 11
; 0x00B8CA 04
- D 1 - - - 0x00B8F1 02:B8E1: 40        .byte $40   ; 12
- D 1 - - - 0x00B8F2 02:B8E2: 00        .byte $00   ; 13
- D 1 - - - 0x00B8F3 02:B8E3: A8        .byte $A8   ; 14
- D 1 - - - 0x00B8F4 02:B8E4: 00        .byte $00   ; 15
; 0x00B88E
- D 1 - - - 0x00B8F5 02:B8E5: 00        .byte $00   ; 16
- D 1 - - - 0x00B8F6 02:B8E6: 00        .byte $00   ; 17
- D 1 - - - 0x00B8F7 02:B8E7: 00        .byte $00   ; 18
- D 1 - - - 0x00B8F8 02:B8E8: FD        .byte $FD   ; 19
; 0x00B874
- D 1 - - - 0x00B8F9 02:B8E9: 86        .byte $86   ; 1A
; 0x00B8CA 00
- D 1 - - - 0x00B8FA 02:B8EA: C2        .byte $C2   ; 1B
- D 1 - - - 0x00B8FB 02:B8EB: 0C        .byte $0C   ; 1C
- D 1 - - - 0x00B8FC 02:B8EC: E2        .byte $E2   ; 1D
- D 1 - - - 0x00B8FD 02:B8ED: 0C        .byte $0C   ; 1E
; 0x00B8CA 04
- D 1 - - - 0x00B8FE 02:B8EE: 40        .byte $40   ; 1F
- D 1 - - - 0x00B8FF 02:B8EF: 00        .byte $00   ; 20
- D 1 - - - 0x00B900 02:B8F0: A8        .byte $A8   ; 21
- D 1 - - - 0x00B901 02:B8F1: 00        .byte $00   ; 22
; 0x00B88E
- D 1 - - - 0x00B902 02:B8F2: 00        .byte $00   ; 23
- D 1 - - - 0x00B903 02:B8F3: 00        .byte $00   ; 24
- D 1 - - - 0x00B904 02:B8F4: 00        .byte $00   ; 25
- D 1 - - - 0x00B905 02:B8F5: FD        .byte $FD   ; 26



sub_B8F6:
C - - - - - 0x00B906 02:B8F6: A6 53     LDX ram_0053
C - - - - - 0x00B908 02:B8F8: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00B90B 02:B8FB: B0 23     BCS bra_B920_RTS
C - - - - - 0x00B90D 02:B8FD: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x00B910 02:B900: D0 1E     BNE bra_B920_RTS
C - - - - - 0x00B912 02:B902: A9 08     LDA #$08
C - - - - - 0x00B914 02:B904: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00B917 02:B907: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B91A 02:B90A: 0A        ASL
C - - - - - 0x00B91B 02:B90B: 85 00     STA ram_0000
C - - - - - 0x00B91D 02:B90D: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00B920 02:B910: 29 01     AND #$01
C - - - - - 0x00B922 02:B912: 18        CLC
C - - - - - 0x00B923 02:B913: 65 00     ADC ram_0000
C - - - - - 0x00B925 02:B915: A8        TAY
C - - - - - 0x00B926 02:B916: B9 21 B9  LDA tbl_B921,Y
C - - - - - 0x00B929 02:B919: A8        TAY
C - - - - - 0x00B92A 02:B91A: 20 37 8F  JSR sub_0x008F47
C - - - - - 0x00B92D 02:B91D: FE AA 07  INC ram_07AA_unk,X
bra_B920_RTS:
C - - - - - 0x00B930 02:B920: 60        RTS



tbl_B921:
- D 1 - - - 0x00B931 02:B921: 10        .byte con_8F57_10   ; 
- D 1 - - - 0x00B932 02:B922: 14        .byte con_8F57_14   ; 
- D 1 - - - 0x00B933 02:B923: 18        .byte con_8F57_18   ; 
- D 1 - - - 0x00B934 02:B924: 1C        .byte con_8F57_1C   ; 
- D 1 - - - 0x00B935 02:B925: 20        .byte con_8F57_20   ; 
- D 1 - - - 0x00B936 02:B926: 24        .byte con_8F57_24   ; 



ofs_016_0x00B937_05:
C - - J - - 0x00B937 02:B927: 20 2D B9  JSR sub_B92D
C - - - - - 0x00B93A 02:B92A: 4C 10 8E  JMP loc_0x008E20



sub_B92D:
C - - - - - 0x00B93D 02:B92D: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00B940 02:B930: D0 0F     BNE bra_B941
C - - - - - 0x00B942 02:B932: A5 69     LDA ram_0069
C - - - - - 0x00B944 02:B934: 30 20     BMI bra_B956
C - - - - - 0x00B946 02:B936: 20 AC B9  JSR sub_B9AC
C - - - - - 0x00B949 02:B939: B0 1B     BCS bra_B956
C - - - - - 0x00B94B 02:B93B: 20 D4 B9  JSR sub_B9D4
C - - - - - 0x00B94E 02:B93E: FE 78 07  INC ram_0778_unk,X
bra_B941:
C - - - - - 0x00B951 02:B941: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00B954 02:B944: F0 19     BEQ bra_B95F
C - - - - - 0x00B956 02:B946: C9 04     CMP #$04
C - - - - - 0x00B958 02:B948: F0 0F     BEQ bra_B959
C - - - - - 0x00B95A 02:B94A: C9 08     CMP #$08
C - - - - - 0x00B95C 02:B94C: F0 47     BEQ bra_B995
bra_B94E:
C - - - - - 0x00B95E 02:B94E: 20 D4 B9  JSR sub_B9D4
C - - - - - 0x00B961 02:B951: A9 00     LDA #$00
bra_B953:
C - - - - - 0x00B963 02:B953: 4C EE 95  JMP loc_0x0095FE_sta_06B2x
bra_B956:
- - - - - - 0x00B966 02:B956: 4C 17 9A  JMP loc_0x009A27
bra_B959:
C - - - - - 0x00B969 02:B959: 20 AC B9  JSR sub_B9AC
C - - - - - 0x00B96C 02:B95C: 90 F0     BCC bra_B94E
bra_B95E_RTS:
C - - - - - 0x00B96E 02:B95E: 60        RTS
bra_B95F:
C - - - - - 0x00B96F 02:B95F: 20 AC B9  JSR sub_B9AC
C - - - - - 0x00B972 02:B962: 90 07     BCC bra_B96B
bra_B964:
C - - - - - 0x00B974 02:B964: 20 D4 B9  JSR sub_B9D4
C - - - - - 0x00B977 02:B967: A9 46     LDA #$46
C - - - - - 0x00B979 02:B969: D0 E8     BNE bra_B953    ; jmp
bra_B96B:
C - - - - - 0x00B97B 02:B96B: 20 B3 B9  JSR sub_B9B3
C - - - - - 0x00B97E 02:B96E: 90 EE     BCC bra_B95E_RTS
C - - - - - 0x00B980 02:B970: 20 BA B9  JSR sub_B9BA
C - - - - - 0x00B983 02:B973: B0 12     BCS bra_B987
C - - - - - 0x00B985 02:B975: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00B988 02:B978: 38        SEC
C - - - - - 0x00B989 02:B979: E9 18     SBC #$18
C - - - - - 0x00B98B 02:B97B: 85 00     STA ram_0000
C - - - - - 0x00B98D 02:B97D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B990 02:B980: 38        SEC
C - - - - - 0x00B991 02:B981: E5 00     SBC ram_0000
C - - - - - 0x00B993 02:B983: C9 40     CMP #$40
C - - - - - 0x00B995 02:B985: 90 D7     BCC bra_B95E_RTS
bra_B987:
C - - - - - 0x00B997 02:B987: A9 36     LDA #con_music_36
C - - - - - 0x00B999 02:B989: 20 D8 95  JSR sub_0x0095E8_play_music
C - - - - - 0x00B99C 02:B98C: A9 31     LDA #$31
C - - - - - 0x00B99E 02:B98E: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00B9A1 02:B991: A9 84     LDA #$84
C - - - - - 0x00B9A3 02:B993: D0 BE     BNE bra_B953    ; jmp
bra_B995:
C - - - - - 0x00B9A5 02:B995: A9 10     LDA #$10
C - - - - - 0x00B9A7 02:B997: A0 10     LDY #$10
C - - - - - 0x00B9A9 02:B999: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00B9AC 02:B99C: B0 C6     BCS bra_B964
C - - - - - 0x00B9AE 02:B99E: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00B9B1 02:B9A1: C9 10     CMP #$10
C - - - - - 0x00B9B3 02:B9A3: 90 B9     BCC bra_B95E_RTS
C - - - - - 0x00B9B5 02:B9A5: 20 B3 B9  JSR sub_B9B3
C - - - - - 0x00B9B8 02:B9A8: 90 A4     BCC bra_B94E
bra_B9AA:
C - - - - - 0x00B9BA 02:B9AA: 38        SEC
C - - - - - 0x00B9BB 02:B9AB: 60        RTS



sub_B9AC:
C - - - - - 0x00B9BC 02:B9AC: A9 00     LDA #$00
C - - - - - 0x00B9BE 02:B9AE: A0 10     LDY #$10
C - - - - - 0x00B9C0 02:B9B0: 4C BC 8F  JMP loc_0x008FCC



sub_B9B3:
C - - - - - 0x00B9C3 02:B9B3: A9 F0     LDA #$F0
C - - - - - 0x00B9C5 02:B9B5: A0 00     LDY #$00
C - - - - - 0x00B9C7 02:B9B7: 4C BC 8F  JMP loc_0x008FCC



sub_B9BA:
C - - - - - 0x00B9CA 02:B9BA: 20 D9 B9  JSR sub_B9D9
C - - - - - 0x00B9CD 02:B9BD: B0 14     BCS bra_B9D3_RTS
C - - - - - 0x00B9CF 02:B9BF: E0 03     CPX #$03
C - - - - - 0x00B9D1 02:B9C1: 90 E7     BCC bra_B9AA
C - - - - - 0x00B9D3 02:B9C3: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00B9D6 02:B9C6: 38        SEC
C - - - - - 0x00B9D7 02:B9C7: E9 18     SBC #$18
C - - - - - 0x00B9D9 02:B9C9: 85 00     STA ram_0000
C - - - - - 0x00B9DB 02:B9CB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00B9DE 02:B9CE: 38        SEC
C - - - - - 0x00B9DF 02:B9CF: E5 00     SBC ram_0000
C - - - - - 0x00B9E1 02:B9D1: C9 30     CMP #$30
bra_B9D3_RTS:
C - - - - - 0x00B9E3 02:B9D3: 60        RTS



sub_B9D4:
C - - - - - 0x00B9E4 02:B9D4: A9 0C     LDA #$0C
C - - - - - 0x00B9E6 02:B9D6: 4C A1 89  JMP loc_0x0089B1



sub_B9D9:
C - - - - - 0x00B9E9 02:B9D9: A0 02     LDY #$02
bra_B9DB_loop:
C - - - - - 0x00B9EB 02:B9DB: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00B9EE 02:B9DE: DD 82 07  CMP ram_0782_unk,X
C - - - - - 0x00B9F1 02:B9E1: D0 06     BNE bra_B9E9
C - - - - - 0x00B9F3 02:B9E3: 84 00     STY ram_0000
C - - - - - 0x00B9F5 02:B9E5: E4 00     CPX ram_0000
C - - - - - 0x00B9F7 02:B9E7: D0 06     BNE bra_B9EF
bra_B9E9:
C - - - - - 0x00B9F9 02:B9E9: C8        INY
C - - - - - 0x00B9FA 02:B9EA: C0 0A     CPY #$0A
C - - - - - 0x00B9FC 02:B9EC: 90 ED     BCC bra_B9DB_loop
C - - - - - 0x00B9FE 02:B9EE: 60        RTS
bra_B9EF:
C - - - - - 0x00B9FF 02:B9EF: 18        CLC
C - - - - - 0x00BA00 02:B9F0: 60        RTS



ofs_016_0x00BA01_08:
C - - J - - 0x00BA01 02:B9F1: 20 F7 B9  JSR sub_B9F7
C - - - - - 0x00BA04 02:B9F4: 4C 10 8E  JMP loc_0x008E20



sub_B9F7:
C - - - - - 0x00BA07 02:B9F7: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00BA0A 02:B9FA: C9 C0     CMP #$C0
C - - - - - 0x00BA0C 02:B9FC: 90 04     BCC bra_BA02
C - - - - - 0x00BA0E 02:B9FE: C9 F8     CMP #$F8
C - - - - - 0x00BA10 02:BA00: 90 1A     BCC bra_BA1C
bra_BA02:
C - - - - - 0x00BA12 02:BA02: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00BA15 02:BA05: D0 10     BNE bra_BA17
C - - - - - 0x00BA17 02:BA07: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00BA1A 02:BA0A: A9 0F     LDA #$0F
C - - - - - 0x00BA1C 02:BA0C: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00BA1F 02:BA0F: A9 00     LDA #$00
C - - - - - 0x00BA21 02:BA11: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00BA24 02:BA14: FE 78 07  INC ram_0778_unk,X
bra_BA17:
C - - - - - 0x00BA27 02:BA17: AD 84 07  LDA ram_0782_unk + $02
C - - - - - 0x00BA2A 02:BA1A: D0 03     BNE bra_BA1F
bra_BA1C:
C - - - - - 0x00BA2C 02:BA1C: 4C 17 9A  JMP loc_0x009A27
bra_BA1F:
C - - - - - 0x00BA2F 02:BA1F: AD 02 06  LDA ram_0600_obj + $02
C - - - - - 0x00BA32 02:BA22: 29 F0     AND #$F0
C - - - - - 0x00BA34 02:BA24: D0 41     BNE bra_BA67_RTS
C - - - - - 0x00BA36 02:BA26: E0 02     CPX #$02
C - - - - - 0x00BA38 02:BA28: D0 0A     BNE bra_BA34
C - - - - - 0x00BA3A 02:BA2A: AD 8E 07  LDA ram_078C_unk + $02
C - - - - - 0x00BA3D 02:BA2D: 29 E7     AND #$E7
C - - - - - 0x00BA3F 02:BA2F: 8D 8E 07  STA ram_078C_unk + $02
C - - - - - 0x00BA42 02:BA32: F0 03     BEQ bra_BA37
bra_BA34:
C - - - - - 0x00BA44 02:BA34: 20 AE BA  JSR sub_BAAE
bra_BA37:
C - - - - - 0x00BA47 02:BA37: E0 03     CPX #$03
C - - - - - 0x00BA49 02:BA39: B0 3D     BCS bra_BA78
C - - - - - 0x00BA4B 02:BA3B: 20 90 BA  JSR sub_BA90
C - - - - - 0x00BA4E 02:BA3E: 20 1C BB  JSR sub_BB1C
C - - - - - 0x00BA51 02:BA41: A9 00     LDA #$00
C - - - - - 0x00BA53 02:BA43: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00BA56 02:BA46: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00BA59 02:BA49: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00BA5C 02:BA4C: 29 07     AND #$07
C - - - - - 0x00BA5E 02:BA4E: D0 17     BNE bra_BA67_RTS
C - - - - - 0x00BA60 02:BA50: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00BA63 02:BA53: 29 02     AND #$02
C - - - - - 0x00BA65 02:BA55: D0 11     BNE bra_BA68
C - - - - - 0x00BA67 02:BA57: FE BE 07  INC ram_07BE_unk,X
C - - - - - 0x00BA6A 02:BA5A: 20 A3 BA  JSR sub_BAA3
C - - - - - 0x00BA6D 02:BA5D: 90 08     BCC bra_BA67_RTS
C - - - - - 0x00BA6F 02:BA5F: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00BA72 02:BA62: 09 02     ORA #$02
loc_BA64:
C D 1 - - - 0x00BA74 02:BA64: 9D 8C 07  STA ram_078C_unk,X
bra_BA67_RTS:
C - - - - - 0x00BA77 02:BA67: 60        RTS
bra_BA68:
C - - - - - 0x00BA78 02:BA68: DE BE 07  DEC ram_07BE_unk,X
C - - - - - 0x00BA7B 02:BA6B: 20 A3 BA  JSR sub_BAA3
C - - - - - 0x00BA7E 02:BA6E: 90 F7     BCC bra_BA67_RTS
C - - - - - 0x00BA80 02:BA70: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00BA83 02:BA73: 29 FD     AND #$FD
C - - - - - 0x00BA85 02:BA75: 4C 64 BA  JMP loc_BA64
bra_BA78:
C - - - - - 0x00BA88 02:BA78: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00BA8B 02:BA7B: 20 95 BA  JSR sub_BA95
C - - - - - 0x00BA8E 02:BA7E: 20 7A 99  JSR sub_0x00998A
C - - - - - 0x00BA91 02:BA81: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BA94 02:BA84: 20 95 BA  JSR sub_BA95
C - - - - - 0x00BA97 02:BA87: 20 B2 98  JSR sub_0x0098C2
C - - - - - 0x00BA9A 02:BA8A: A9 0E     LDA #$0E
C - - - - - 0x00BA9C 02:BA8C: E0 05     CPX #$05
C - - - - - 0x00BA9E 02:BA8E: F0 02     BEQ bra_BA92
sub_BA90:
C - - - - - 0x00BAA0 02:BA90: A9 0D     LDA #$0D
bra_BA92:
C - - - - - 0x00BAA2 02:BA92: 4C A1 89  JMP loc_0x0089B1



sub_BA95:
C - - - - - 0x00BAA5 02:BA95: BC 78 07  LDY ram_0778_unk,X
C - - - - - 0x00BAA8 02:BA98: C0 02     CPY #$02
C - - - - - 0x00BAAA 02:BA9A: 90 00     BCC bra_BA9C
bra_BA9C:
C - - - - - 0x00BAAC 02:BA9C: 85 01     STA ram_0001
C - - - - - 0x00BAAE 02:BA9E: A9 00     LDA #$00
C - - - - - 0x00BAB0 02:BAA0: 85 00     STA ram_0000
C - - - - - 0x00BAB2 02:BAA2: 60        RTS



sub_BAA3:
C - - - - - 0x00BAB3 02:BAA3: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BAB6 02:BAA6: 10 03     BPL bra_BAAB
C - - - - - 0x00BAB8 02:BAA8: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
bra_BAAB:
C - - - - - 0x00BABB 02:BAAB: C9 04     CMP #$04
bra_BAAD_RTS:
C - - - - - 0x00BABD 02:BAAD: 60        RTS



sub_BAAE:
C - - - - - 0x00BABE 02:BAAE: E0 05     CPX #$05
C - - - - - 0x00BAC0 02:BAB0: D0 58     BNE bra_BB0A
C - - - - - 0x00BAC2 02:BAB2: AD 8E 07  LDA ram_078C_unk + $02
C - - - - - 0x00BAC5 02:BAB5: 29 18     AND #$18
C - - - - - 0x00BAC7 02:BAB7: D0 05     BNE bra_BABE
C - - - - - 0x00BAC9 02:BAB9: 20 0A BB  JSR sub_BB0A
C - - - - - 0x00BACC 02:BABC: 90 A9     BCC bra_BA67_RTS
bra_BABE:
C - - - - - 0x00BACE 02:BABE: A0 00     LDY #$00
C - - - - - 0x00BAD0 02:BAC0: A9 08     LDA #$08
C - - - - - 0x00BAD2 02:BAC2: 20 C9 BA  JSR sub_BAC9
C - - - - - 0x00BAD5 02:BAC5: A0 01     LDY #$01
C - - - - - 0x00BAD7 02:BAC7: A9 10     LDA #$10
sub_BAC9:
C - - - - - 0x00BAD9 02:BAC9: 84 91     STY ram_0091
C - - - - - 0x00BADB 02:BACB: E6 91     INC ram_0091
C - - - - - 0x00BADD 02:BACD: 2D 8E 07  AND ram_078C_unk + $02
C - - - - - 0x00BAE0 02:BAD0: F0 DB     BEQ bra_BAAD_RTS
C - - - - - 0x00BAE2 02:BAD2: A2 02     LDX #$02
C - - - - - 0x00BAE4 02:BAD4: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00BAE7 02:BAD7: A0 00     LDY #$00
bra_BAD9_loop:
C - - - - - 0x00BAE9 02:BAD9: D9 EF BB  CMP tbl_BBEF,Y
C - - - - - 0x00BAEC 02:BADC: 90 06     BCC bra_BAE4
C - - - - - 0x00BAEE 02:BADE: C8        INY
C - - - - - 0x00BAEF 02:BADF: C8        INY
C - - - - - 0x00BAF0 02:BAE0: C0 0A     CPY #$0A
C - - - - - 0x00BAF2 02:BAE2: 90 F5     BCC bra_BAD9_loop
bra_BAE4:
C - - - - - 0x00BAF4 02:BAE4: B9 F0 BB  LDA tbl_BBEF + $01,Y
C - - - - - 0x00BAF7 02:BAE7: A8        TAY
C - - - - - 0x00BAF8 02:BAE8: AD 8E 07  LDA ram_078C_unk + $02
C - - - - - 0x00BAFB 02:BAEB: 29 02     AND #$02
C - - - - - 0x00BAFD 02:BAED: D0 02     BNE bra_BAF1
C - - - - - 0x00BAFF 02:BAEF: C8        INY
C - - - - - 0x00BB00 02:BAF0: C8        INY
bra_BAF1:
C - - - - - 0x00BB01 02:BAF1: B9 FB BB  LDA tbl_BBFB,Y
C - - - - - 0x00BB04 02:BAF4: 85 18     STA ram_0018
C - - - - - 0x00BB06 02:BAF6: B9 FC BB  LDA tbl_BBFB + $01,Y
C - - - - - 0x00BB09 02:BAF9: 85 19     STA ram_0019
C - - - - - 0x00BB0B 02:BAFB: A9 00     LDA #$00
C - - - - - 0x00BB0D 02:BAFD: 85 1A     STA ram_001A
C - - - - - 0x00BB0F 02:BAFF: 85 1B     STA ram_001B
C - - - - - 0x00BB11 02:BB01: A5 91     LDA ram_0091
C - - - - - 0x00BB13 02:BB03: 85 00     STA ram_0000
C - - - - - 0x00BB15 02:BB05: A6 53     LDX ram_0053
C - - - - - 0x00BB17 02:BB07: 4C 15 9E  JMP loc_0x009E25
bra_BB0A:
sub_BB0A:
C - - - - - 0x00BB1A 02:BB0A: 20 03 90  JSR sub_0x009013
C - - - - - 0x00BB1D 02:BB0D: 90 0C     BCC bra_BB1B_RTS
C - - - - - 0x00BB1F 02:BB0F: 0A        ASL
C - - - - - 0x00BB20 02:BB10: 0A        ASL
C - - - - - 0x00BB21 02:BB11: 0A        ASL
C - - - - - 0x00BB22 02:BB12: 29 18     AND #$18
C - - - - - 0x00BB24 02:BB14: 0D 8E 07  ORA ram_078C_unk + $02
C - - - - - 0x00BB27 02:BB17: 8D 8E 07  STA ram_078C_unk + $02
C - - - - - 0x00BB2A 02:BB1A: 38        SEC
bra_BB1B_RTS:
C - - - - - 0x00BB2B 02:BB1B: 60        RTS



sub_BB1C:
C - - - - - 0x00BB2C 02:BB1C: A0 03     LDY #$03
C - - - - - 0x00BB2E 02:BB1E: 20 6B BB  JSR sub_BB6B
C - - - - - 0x00BB31 02:BB21: A0 04     LDY #$04
C - - - - - 0x00BB33 02:BB23: 20 6B BB  JSR sub_BB6B
C - - - - - 0x00BB36 02:BB26: A0 05     LDY #$05
C - - - - - 0x00BB38 02:BB28: 20 6B BB  JSR sub_BB6B
C - - - - - 0x00BB3B 02:BB2B: AD 93 BB  LDA tbl_BB93
C - - - - - 0x00BB3E 02:BB2E: 85 0A     STA ram_000A
C - - - - - 0x00BB40 02:BB30: AD 94 BB  LDA tbl_BB93 + $01
C - - - - - 0x00BB43 02:BB33: 85 0B     STA ram_000B
C - - - - - 0x00BB45 02:BB35: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BB48 02:BB38: 18        CLC
C - - - - - 0x00BB49 02:BB39: 69 04     ADC #$04
C - - - - - 0x00BB4B 02:BB3B: 0A        ASL
C - - - - - 0x00BB4C 02:BB3C: 85 0C     STA ram_000C
C - - - - - 0x00BB4E 02:BB3E: 0A        ASL
C - - - - - 0x00BB4F 02:BB3F: 0A        ASL
C - - - - - 0x00BB50 02:BB40: 18        CLC
C - - - - - 0x00BB51 02:BB41: 65 0C     ADC ram_000C
C - - - - - 0x00BB53 02:BB43: 85 0C     STA ram_000C
C - - - - - 0x00BB55 02:BB45: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00BB58 02:BB48: 29 01     AND #$01
C - - - - - 0x00BB5A 02:BB4A: 0A        ASL
C - - - - - 0x00BB5B 02:BB4B: 18        CLC
C - - - - - 0x00BB5C 02:BB4C: 65 0C     ADC ram_000C
C - - - - - 0x00BB5E 02:BB4E: A8        TAY
C - - - - - 0x00BB5F 02:BB4F: A2 03     LDX #$03
C - - - - - 0x00BB61 02:BB51: 20 7B BB  JSR sub_BB7B
C - - - - - 0x00BB64 02:BB54: C8        INY
C - - - - - 0x00BB65 02:BB55: C8        INY
C - - - - - 0x00BB66 02:BB56: C8        INY
C - - - - - 0x00BB67 02:BB57: E8        INX
C - - - - - 0x00BB68 02:BB58: 20 7B BB  JSR sub_BB7B
C - - - - - 0x00BB6B 02:BB5B: A5 0C     LDA ram_000C
C - - - - - 0x00BB6D 02:BB5D: 18        CLC
C - - - - - 0x00BB6E 02:BB5E: 69 08     ADC #$08
C - - - - - 0x00BB70 02:BB60: A8        TAY
C - - - - - 0x00BB71 02:BB61: E8        INX
C - - - - - 0x00BB72 02:BB62: 20 7B BB  JSR sub_BB7B
C - - - - - 0x00BB75 02:BB65: A6 53     LDX ram_0053
C - - - - - 0x00BB77 02:BB67: FE B4 07  INC ram_07B4_unk,X
C - - - - - 0x00BB7A 02:BB6A: 60        RTS



sub_BB6B:
C - - - - - 0x00BB7B 02:BB6B: A9 99     LDA #$99
C - - - - - 0x00BB7D 02:BB6D: 85 0A     STA ram_000A
C - - - - - 0x00BB7F 02:BB6F: B9 36 07  LDA ram_0736_obj,Y
C - - - - - 0x00BB82 02:BB72: 48        PHA
C - - - - - 0x00BB83 02:BB73: 20 D0 8B  JSR sub_0x008BE0
C - - - - - 0x00BB86 02:BB76: 68        PLA
C - - - - - 0x00BB87 02:BB77: 99 36 07  STA ram_0736_obj,Y
C - - - - - 0x00BB8A 02:BB7A: 60        RTS



sub_BB7B:
C - - - - - 0x00BB8B 02:BB7B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00BB8E 02:BB7E: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00BB91 02:BB81: B1 0A     LDA (ram_000A),Y
C - - - - - 0x00BB93 02:BB83: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00BB96 02:BB86: C8        INY
C - - - - - 0x00BB97 02:BB87: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00BB9A 02:BB8A: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00BB9D 02:BB8D: B1 0A     LDA (ram_000A),Y
C - - - - - 0x00BB9F 02:BB8F: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00BBA2 02:BB92: 60        RTS



tbl_BB93:
- D 1 - - - 0x00BBA3 02:BB93: 95 BB     .word off_BB95

off_BB95:
- D 1 - I - 0x00BBA5 02:BB95: 04        .byte $04   ; 
- D 1 - I - 0x00BBA6 02:BB96: 06        .byte $06   ; 
- D 1 - I - 0x00BBA7 02:BB97: 08        .byte $08   ; 
- D 1 - I - 0x00BBA8 02:BB98: 0B        .byte $0B   ; 
- D 1 - I - 0x00BBA9 02:BB99: 0A        .byte $0A   ; 
- D 1 - I - 0x00BBAA 02:BB9A: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBAB 02:BB9B: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBAC 02:BB9C: 17        .byte $17   ; 
- D 1 - I - 0x00BBAD 02:BB9D: 18        .byte $18   ; 
- D 1 - I - 0x00BBAE 02:BB9E: 23        .byte $23   ; 
- D 1 - I - 0x00BBAF 02:BB9F: 03        .byte $03   ; 
- D 1 - I - 0x00BBB0 02:BBA0: 07        .byte $07   ; 
- D 1 - I - 0x00BBB1 02:BBA1: 06        .byte $06   ; 
- D 1 - I - 0x00BBB2 02:BBA2: 0C        .byte $0C   ; 
- D 1 - I - 0x00BBB3 02:BBA3: 09        .byte $09   ; 
- D 1 - I - 0x00BBB4 02:BBA4: 12        .byte $12   ; 
- D 1 - I - 0x00BBB5 02:BBA5: 0D        .byte $0D   ; 
- D 1 - I - 0x00BBB6 02:BBA6: 1A        .byte $1A   ; 
- D 1 - I - 0x00BBB7 02:BBA7: 12        .byte $12   ; 
- D 1 - I - 0x00BBB8 02:BBA8: 26        .byte $26   ; 
- D 1 - I - 0x00BBB9 02:BBA9: 02        .byte $02   ; 
- D 1 - I - 0x00BBBA 02:BBAA: 08        .byte $08   ; 
- D 1 - I - 0x00BBBB 02:BBAB: 04        .byte $04   ; 
- D 1 - I - 0x00BBBC 02:BBAC: 0D        .byte $0D   ; 
- D 1 - I - 0x00BBBD 02:BBAD: 06        .byte $06   ; 
- D 1 - I - 0x00BBBE 02:BBAE: 15        .byte $15   ; 
- D 1 - I - 0x00BBBF 02:BBAF: 09        .byte $09   ; 
- D 1 - I - 0x00BBC0 02:BBB0: 1D        .byte $1D   ; 
- D 1 - I - 0x00BBC1 02:BBB1: 0C        .byte $0C   ; 
- D 1 - I - 0x00BBC2 02:BBB2: 29        .byte $29   ; 
- D 1 - I - 0x00BBC3 02:BBB3: 01        .byte $01   ; 
- D 1 - I - 0x00BBC4 02:BBB4: 08        .byte $08   ; 
- D 1 - I - 0x00BBC5 02:BBB5: 02        .byte $02   ; 
- D 1 - I - 0x00BBC6 02:BBB6: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBC7 02:BBB7: 03        .byte $03   ; 
- D 1 - I - 0x00BBC8 02:BBB8: 17        .byte $17   ; 
- D 1 - I - 0x00BBC9 02:BBB9: 04        .byte $04   ; 
- D 1 - I - 0x00BBCA 02:BBBA: 1F        .byte $1F   ; 
- D 1 - I - 0x00BBCB 02:BBBB: 06        .byte $06   ; 
- D 1 - I - 0x00BBCC 02:BBBC: 2B        .byte $2B   ; 
- D 1 - I - 0x00BBCD 02:BBBD: 00        .byte $00   ; 
- D 1 - I - 0x00BBCE 02:BBBE: 08        .byte $08   ; 
- D 1 - I - 0x00BBCF 02:BBBF: 00        .byte $00   ; 
- D 1 - I - 0x00BBD0 02:BBC0: 10        .byte $10   ; 
- D 1 - I - 0x00BBD1 02:BBC1: 00        .byte $00   ; 
- D 1 - I - 0x00BBD2 02:BBC2: 18        .byte $18   ; 
- D 1 - I - 0x00BBD3 02:BBC3: 00        .byte $00   ; 
- D 1 - I - 0x00BBD4 02:BBC4: 20        .byte $20   ; 
- D 1 - I - 0x00BBD5 02:BBC5: 00        .byte $00   ; 
- D 1 - I - 0x00BBD6 02:BBC6: 2C        .byte $2C   ; 
- D 1 - I - 0x00BBD7 02:BBC7: FF        .byte $FF   ; 
- D 1 - I - 0x00BBD8 02:BBC8: 08        .byte $08   ; 
- D 1 - I - 0x00BBD9 02:BBC9: FE        .byte $FE   ; 
- D 1 - I - 0x00BBDA 02:BBCA: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBDB 02:BBCB: FD        .byte $FD   ; 
- D 1 - I - 0x00BBDC 02:BBCC: 17        .byte $17   ; 
- D 1 - I - 0x00BBDD 02:BBCD: FC        .byte $FC   ; 
- D 1 - I - 0x00BBDE 02:BBCE: 1F        .byte $1F   ; 
- D 1 - I - 0x00BBDF 02:BBCF: FA        .byte $FA   ; 
- D 1 - I - 0x00BBE0 02:BBD0: 2B        .byte $2B   ; 
- D 1 - I - 0x00BBE1 02:BBD1: FE        .byte $FE   ; 
- D 1 - I - 0x00BBE2 02:BBD2: 08        .byte $08   ; 
- D 1 - I - 0x00BBE3 02:BBD3: FC        .byte $FC   ; 
- D 1 - I - 0x00BBE4 02:BBD4: 0D        .byte $0D   ; 
- D 1 - I - 0x00BBE5 02:BBD5: FA        .byte $FA   ; 
- D 1 - I - 0x00BBE6 02:BBD6: 15        .byte $15   ; 
- D 1 - I - 0x00BBE7 02:BBD7: F7        .byte $F7   ; 
- D 1 - I - 0x00BBE8 02:BBD8: 1D        .byte $1D   ; 
- D 1 - I - 0x00BBE9 02:BBD9: F4        .byte $F4   ; 
- D 1 - I - 0x00BBEA 02:BBDA: 29        .byte $29   ; 
- D 1 - I - 0x00BBEB 02:BBDB: FD        .byte $FD   ; 
- D 1 - I - 0x00BBEC 02:BBDC: 07        .byte $07   ; 
- D 1 - I - 0x00BBED 02:BBDD: FA        .byte $FA   ; 
- D 1 - I - 0x00BBEE 02:BBDE: 0C        .byte $0C   ; 
- D 1 - I - 0x00BBEF 02:BBDF: F7        .byte $F7   ; 
- D 1 - I - 0x00BBF0 02:BBE0: 12        .byte $12   ; 
- D 1 - I - 0x00BBF1 02:BBE1: F3        .byte $F3   ; 
- D 1 - I - 0x00BBF2 02:BBE2: 1A        .byte $1A   ; 
- D 1 - I - 0x00BBF3 02:BBE3: EE        .byte $EE   ; 
- D 1 - I - 0x00BBF4 02:BBE4: 26        .byte $26   ; 
- D 1 - I - 0x00BBF5 02:BBE5: FC        .byte $FC   ; 
- D 1 - I - 0x00BBF6 02:BBE6: 06        .byte $06   ; 
- D 1 - I - 0x00BBF7 02:BBE7: F8        .byte $F8   ; 
- D 1 - I - 0x00BBF8 02:BBE8: 0B        .byte $0B   ; 
- D 1 - I - 0x00BBF9 02:BBE9: F6        .byte $F6   ; 
- D 1 - I - 0x00BBFA 02:BBEA: 0F        .byte $0F   ; 
- D 1 - I - 0x00BBFB 02:BBEB: F1        .byte $F1   ; 
- D 1 - I - 0x00BBFC 02:BBEC: 17        .byte $17   ; 
- D 1 - I - 0x00BBFD 02:BBED: E9        .byte $E9   ; 
- D 1 - I - 0x00BBFE 02:BBEE: 23        .byte $23   ; 



tbl_BBEF:
- D 1 - - - 0x00BBFF 02:BBEF: 08        .byte $08, $00   ; 00
- D 1 - - - 0x00BC01 02:BBF1: 10        .byte $10, $04   ; 01
- D 1 - - - 0x00BC03 02:BBF3: 18        .byte $18, $08   ; 02
- D 1 - - - 0x00BC05 02:BBF5: 20        .byte $20, $0C   ; 03
- D 1 - - - 0x00BC07 02:BBF7: 28        .byte $28, $10   ; 04
- - - - - - 0x00BC09 02:BBF9: 30        .byte $30, $14   ; 05



tbl_BBFB:
; 00
- - - - - - 0x00BC0B 02:BBFB: 10        .byte $10, $00   ; 
- - - - - - 0x00BC0D 02:BBFD: F0        .byte $F0, $FF   ; 
; 04
- - - - - - 0x00BC0F 02:BBFF: 30        .byte $30, $00   ; 
- - - - - - 0x00BC11 02:BC01: D0        .byte $D0, $FF   ; 
; 08
- - - - - - 0x00BC13 02:BC03: 50        .byte $50, $00   ; 
- - - - - - 0x00BC15 02:BC05: B0        .byte $B0, $FF   ; 
; 0C
- D 1 - - - 0x00BC17 02:BC07: 70        .byte $70, $00   ; 
- D 1 - - - 0x00BC19 02:BC09: 90        .byte $90, $FF   ; 
; 10
- - - - - - 0x00BC1B 02:BC0B: 98        .byte $98, $00   ; 
- D 1 - - - 0x00BC1D 02:BC0D: 68        .byte $68, $FF   ; 
; 14
- - - - - - 0x00BC1F 02:BC0F: A8        .byte $A8, $00   ; 
- - - - - - 0x00BC21 02:BC11: 58        .byte $58, $FF   ; 



tbl_0x00BC23:
- - - - - - 0x00BC23 02:BC13: 31 BF     .word _off024_BF31_01
- D 1 - - - 0x00BC25 02:BC15: 8D BC     .word _off024_BC8D_02
- D 1 - - - 0x00BC27 02:BC17: C1 BC     .word _off024_BCC1_03
- D 1 - - - 0x00BC29 02:BC19: 13 BD     .word _off024_BD13_04
- D 1 - - - 0x00BC2B 02:BC1B: 6D BD     .word _off024_BD6D_05
- D 1 - - - 0x00BC2D 02:BC1D: 1D BE     .word _off024_BE1D_06
- D 1 - - - 0x00BC2F 02:BC1F: F9 BE     .word _off024_BEF9_07
- - - - - - 0x00BC31 02:BC21: FF FF     .word $FFFF      ; 08
- D 1 - - - 0x00BC33 02:BC23: E1 BF     .word _off024_BFE1_09
- - - - - - 0x00BC35 02:BC25: FF FF     .word $FFFF      ; 0A
- - - - - - 0x00BC37 02:BC27: 31 BF     .word _off024_BF31_0B
- - - - - - 0x00BC39 02:BC29: 31 BF     .word _off024_BF31_0C
- - - - - - 0x00BC3B 02:BC2B: FF FF     .word $FFFF      ; 0D
- - - - - - 0x00BC3D 02:BC2D: FF FF     .word $FFFF      ; 0E
- - - - - - 0x00BC3F 02:BC2F: FF FF     .word $FFFF      ; 0F
- - - - - - 0x00BC41 02:BC31: FF FF     .word $FFFF      ; 10
- - - - - - 0x00BC43 02:BC33: FF FF     .word $FFFF      ; 11
- - - - - - 0x00BC45 02:BC35: FF FF     .word $FFFF      ; 12
- - - - - - 0x00BC47 02:BC37: 31 BF     .word _off024_BF31_13
- - - - - - 0x00BC49 02:BC39: 31 BF     .word _off024_BF31_14
- - - - - - 0x00BC4B 02:BC3B: 31 BF     .word _off024_BF31_15
- - - - - - 0x00BC4D 02:BC3D: 31 BF     .word _off024_BF31_16
- - - - - - 0x00BC4F 02:BC3F: 31 BF     .word _off024_BF31_17
- - - - - - 0x00BC51 02:BC41: 4B BF     .word _off024_BF4B_18
- - - - - - 0x00BC53 02:BC43: 4B BF     .word _off024_BF4B_19
- - - - - - 0x00BC55 02:BC45: 4B BF     .word _off024_BF4B_1A
- - - - - - 0x00BC57 02:BC47: 4B BF     .word _off024_BF4B_1B
- D 1 - - - 0x00BC59 02:BC49: 4B BF     .word _off024_BF4B_1C
- - - - - - 0x00BC5B 02:BC4B: FF FF     .word $FFFF      ; 1D
- - - - - - 0x00BC5D 02:BC4D: 59 BF     .word _off024_BF59_1E
- D 1 - - - 0x00BC5F 02:BC4F: 59 BF     .word _off024_BF59_1F
- - - - - - 0x00BC61 02:BC51: 7B BF     .word _off024_BF7B_20
- - - - - - 0x00BC63 02:BC53: 7B BF     .word _off024_BF7B_21
- - - - - - 0x00BC65 02:BC55: 7B BF     .word _off024_BF7B_22
- - - - - - 0x00BC67 02:BC57: 7B BF     .word _off024_BF7B_23
- - - - - - 0x00BC69 02:BC59: 7B BF     .word _off024_BF7B_24
- D 1 - - - 0x00BC6B 02:BC5B: 7B BF     .word _off024_BF7B_25
- - - - - - 0x00BC6D 02:BC5D: 91 BF     .word _off024_BF91_26
- D 1 - - - 0x00BC6F 02:BC5F: 91 BF     .word _off024_BF91_27
- - - - - - 0x00BC71 02:BC61: 9B BF     .word _off024_BF9B_28
- - - - - - 0x00BC73 02:BC63: 9B BF     .word _off024_BF9B_29
- D 1 - - - 0x00BC75 02:BC65: 9F BF     .word _off024_BF9F_2A
- - - - - - 0x00BC77 02:BC67: FF FF     .word $FFFF      ; 2C
- D 1 - - - 0x00BC79 02:BC69: B4 BF     .word _off024_BFB4_2C
- D 1 - - - 0x00BC7B 02:BC6B: BD BF     .word _off024_BFBD_2D
- - - - - - 0x00BC7D 02:BC6D: BD BF     .word _off024_BFBD_2E
- - - - - - 0x00BC7F 02:BC6F: FF FF     .word $FFFF      ; 2F
- - - - - - 0x00BC81 02:BC71: FF FF     .word $FFFF      ; 30
- D 1 - - - 0x00BC83 02:BC73: 31 BF     .word _off024_BF31_31
- - - - - - 0x00BC85 02:BC75: 31 BF     .word _off024_BF31_32
- - - - - - 0x00BC87 02:BC77: FF FF     .word $FFFF      ; 33
- - - - - - 0x00BC89 02:BC79: 7B BF     .word _off024_BF7B_34
- - - - - - 0x00BC8B 02:BC7B: 31 BF     .word _off024_BF31_35
- - - - - - 0x00BC8D 02:BC7D: 31 BF     .word _off024_BF31_36
- - - - - - 0x00BC8F 02:BC7F: 31 BF     .word _off024_BF31_37
- D 1 - - - 0x00BC91 02:BC81: DD BF     .word _off024_BFDD_38
- - - - - - 0x00BC93 02:BC83: E1 BF     .word _off024_BFE1_39
- - - - - - 0x00BC95 02:BC85: 31 BF     .word _off024_BF31_3A
- - - - - - 0x00BC97 02:BC87: 31 BF     .word _off024_BF31_3B
- - - - - - 0x00BC99 02:BC89: FF FF     .word $FFFF      ; 3C
- - - - - - 0x00BC9B 02:BC8B: FF FF     .word $FFFF      ; 3D



_off024_BC8D_02:
- D 1 - I - 0x00BC9D 02:BC8D: 0E        .byte $0E   ; 
- D 1 - I - 0x00BC9E 02:BC8E: 00        .byte $00   ; 
- D 1 - I - 0x00BC9F 02:BC8F: 11        .byte $11   ; 
- D 1 - I - 0x00BCA0 02:BC90: 00        .byte $00   ; 
- D 1 - I - 0x00BCA1 02:BC91: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCA2 02:BC92: 08        .byte $08   ; 
- D 1 - I - 0x00BCA3 02:BC93: 03        .byte $03   ; 
- D 1 - I - 0x00BCA4 02:BC94: 01        .byte $01   ; 
- D 1 - I - 0x00BCA5 02:BC95: 0F        .byte $0F   ; 
- D 1 - I - 0x00BCA6 02:BC96: 11        .byte $11   ; 
- D 1 - I - 0x00BCA7 02:BC97: 07        .byte $07   ; 
- D 1 - I - 0x00BCA8 02:BC98: 01        .byte $01   ; 
- - - - - - 0x00BCA9 02:BC99: 2A        .byte $2A   ; 
- - - - - - 0x00BCAA 02:BC9A: AA        .byte $AA   ; 
- - - - - - 0x00BCAB 02:BC9B: 01        .byte $01   ; 
- - - - - - 0x00BCAC 02:BC9C: 10        .byte $10   ; 
- - - - - - 0x00BCAD 02:BC9D: 2A        .byte $2A   ; 
- - - - - - 0x00BCAE 02:BC9E: 10        .byte $10   ; 
- - - - - - 0x00BCAF 02:BC9F: 1D        .byte $1D   ; 
- - - - - - 0x00BCB0 02:BCA0: 00        .byte $00   ; 
- - - - - - 0x00BCB1 02:BCA1: 2A        .byte $2A   ; 
- - - - - - 0x00BCB2 02:BCA2: AA        .byte $AA   ; 
- - - - - - 0x00BCB3 02:BCA3: 01        .byte $01   ; 
- - - - - - 0x00BCB4 02:BCA4: 04        .byte $04   ; 
- - - - - - 0x00BCB5 02:BCA5: 2A        .byte $2A   ; 
- - - - - - 0x00BCB6 02:BCA6: 08        .byte $08   ; 
- - - - - - 0x00BCB7 02:BCA7: 03        .byte $03   ; 
- - - - - - 0x00BCB8 02:BCA8: 0A        .byte $0A   ; 
- - - - - - 0x00BCB9 02:BCA9: 07        .byte $07   ; 
- - - - - - 0x00BCBA 02:BCAA: 01        .byte $01   ; 
- D 1 - I - 0x00BCBB 02:BCAB: 11        .byte $11   ; 
- D 1 - I - 0x00BCBC 02:BCAC: 00        .byte $00   ; 
- D 1 - I - 0x00BCBD 02:BCAD: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCBE 02:BCAE: AA        .byte $AA   ; 
- D 1 - I - 0x00BCBF 02:BCAF: 01        .byte $01   ; 
- D 1 - I - 0x00BCC0 02:BCB0: 14        .byte $14   ; 
- D 1 - I - 0x00BCC1 02:BCB1: 11        .byte $11   ; 
- D 1 - I - 0x00BCC2 02:BCB2: 00        .byte $00   ; 
- D 1 - I - 0x00BCC3 02:BCB3: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCC4 02:BCB4: AC        .byte $AC   ; 
- D 1 - I - 0x00BCC5 02:BCB5: 01        .byte $01   ; 
- D 1 - I - 0x00BCC6 02:BCB6: 10        .byte $10   ; 
- D 1 - I - 0x00BCC7 02:BCB7: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCC8 02:BCB8: 98        .byte $98   ; 
- D 1 - I - 0x00BCC9 02:BCB9: 1D        .byte $1D   ; 
- D 1 - I - 0x00BCCA 02:BCBA: 00        .byte $00   ; 
- D 1 - I - 0x00BCCB 02:BCBB: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCCC 02:BCBC: AA        .byte $AA   ; 
- D 1 - I - 0x00BCCD 02:BCBD: 01        .byte $01   ; 
- D 1 - I - 0x00BCCE 02:BCBE: 04        .byte $04   ; 
- D 1 - I - 0x00BCCF 02:BCBF: 07        .byte $07   ; 
- D 1 - I - 0x00BCD0 02:BCC0: 10        .byte $10   ; 



_off024_BCC1_03:
- D 1 - I - 0x00BCD1 02:BCC1: 0E        .byte $0E   ; 
- D 1 - I - 0x00BCD2 02:BCC2: 01        .byte $01   ; 
- D 1 - I - 0x00BCD3 02:BCC3: 11        .byte $11   ; 
- D 1 - I - 0x00BCD4 02:BCC4: 00        .byte $00   ; 
- D 1 - I - 0x00BCD5 02:BCC5: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCD6 02:BCC6: AC        .byte $AC   ; 
- D 1 - I - 0x00BCD7 02:BCC7: 01        .byte $01   ; 
- D 1 - I - 0x00BCD8 02:BCC8: 10        .byte $10   ; 
- D 1 - I - 0x00BCD9 02:BCC9: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCDA 02:BCCA: 10        .byte $10   ; 
- D 1 - I - 0x00BCDB 02:BCCB: 1D        .byte $1D   ; 
- D 1 - I - 0x00BCDC 02:BCCC: 04        .byte $04   ; 
- D 1 - I - 0x00BCDD 02:BCCD: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCDE 02:BCCE: AC        .byte $AC   ; 
- D 1 - I - 0x00BCDF 02:BCCF: 01        .byte $01   ; 
- D 1 - I - 0x00BCE0 02:BCD0: 10        .byte $10   ; 
- D 1 - I - 0x00BCE1 02:BCD1: 0F        .byte $0F   ; 
- D 1 - I - 0x00BCE2 02:BCD2: 31        .byte $31   ; 
- D 1 - I - 0x00BCE3 02:BCD3: 11        .byte $11   ; 
- D 1 - I - 0x00BCE4 02:BCD4: 00        .byte $00   ; 
- D 1 - I - 0x00BCE5 02:BCD5: 07        .byte $07   ; 
- D 1 - I - 0x00BCE6 02:BCD6: 01        .byte $01   ; 
- - - - - - 0x00BCE7 02:BCD7: 11        .byte $11   ; 
- - - - - - 0x00BCE8 02:BCD8: 00        .byte $00   ; 
- - - - - - 0x00BCE9 02:BCD9: 06        .byte $06   ; 
- - - - - - 0x00BCEA 02:BCDA: 00        .byte $00   ; 
- - - - - - 0x00BCEB 02:BCDB: 07        .byte $07   ; 
- - - - - - 0x00BCEC 02:BCDC: 01        .byte $01   ; 
- D 1 - I - 0x00BCED 02:BCDD: 11        .byte $11   ; 
- D 1 - I - 0x00BCEE 02:BCDE: 00        .byte $00   ; 
- D 1 - I - 0x00BCEF 02:BCDF: 2A        .byte $2A   ; 
- D 1 - I - 0x00BCF0 02:BCE0: 08        .byte $08   ; 
- D 1 - I - 0x00BCF1 02:BCE1: 03        .byte $03   ; 
- D 1 - I - 0x00BCF2 02:BCE2: 01        .byte $01   ; 
- D 1 - I - 0x00BCF3 02:BCE3: 0F        .byte $0F   ; 
- D 1 - I - 0x00BCF4 02:BCE4: 11        .byte $11   ; 
- D 1 - I - 0x00BCF5 02:BCE5: 07        .byte $07   ; 
- D 1 - I - 0x00BCF6 02:BCE6: 0E        .byte $0E   ; 
- - - - - - 0x00BCF7 02:BCE7: 2A        .byte $2A   ; 
- - - - - - 0x00BCF8 02:BCE8: AC        .byte $AC   ; 
- - - - - - 0x00BCF9 02:BCE9: 01        .byte $01   ; 
- - - - - - 0x00BCFA 02:BCEA: 10        .byte $10   ; 
- - - - - - 0x00BCFB 02:BCEB: 2A        .byte $2A   ; 
- - - - - - 0x00BCFC 02:BCEC: 10        .byte $10   ; 
- - - - - - 0x00BCFD 02:BCED: 1D        .byte $1D   ; 
- - - - - - 0x00BCFE 02:BCEE: 00        .byte $00   ; 
- - - - - - 0x00BCFF 02:BCEF: 2A        .byte $2A   ; 
- - - - - - 0x00BD00 02:BCF0: AC        .byte $AC   ; 
- - - - - - 0x00BD01 02:BCF1: 01        .byte $01   ; 
- - - - - - 0x00BD02 02:BCF2: 04        .byte $04   ; 
- - - - - - 0x00BD03 02:BCF3: 2A        .byte $2A   ; 
- - - - - - 0x00BD04 02:BCF4: 08        .byte $08   ; 
- - - - - - 0x00BD05 02:BCF5: 03        .byte $03   ; 
- - - - - - 0x00BD06 02:BCF6: 0A        .byte $0A   ; 
- - - - - - 0x00BD07 02:BCF7: 07        .byte $07   ; 
- - - - - - 0x00BD08 02:BCF8: 0E        .byte $0E   ; 
- - - - - - 0x00BD09 02:BCF9: 11        .byte $11   ; 
- - - - - - 0x00BD0A 02:BCFA: 00        .byte $00   ; 
- - - - - - 0x00BD0B 02:BCFB: 2A        .byte $2A   ; 
- - - - - - 0x00BD0C 02:BCFC: 08        .byte $08   ; 
- - - - - - 0x00BD0D 02:BCFD: 03        .byte $03   ; 
- - - - - - 0x00BD0E 02:BCFE: 01        .byte $01   ; 
- - - - - - 0x00BD0F 02:BCFF: 0F        .byte $0F   ; 
- - - - - - 0x00BD10 02:BD00: 11        .byte $11   ; 
- - - - - - 0x00BD11 02:BD01: 07        .byte $07   ; 
- - - - - - 0x00BD12 02:BD02: 1C        .byte $1C   ; 
- - - - - - 0x00BD13 02:BD03: 11        .byte $11   ; 
- - - - - - 0x00BD14 02:BD04: 00        .byte $00   ; 
- - - - - - 0x00BD15 02:BD05: 2A        .byte $2A   ; 
- - - - - - 0x00BD16 02:BD06: AA        .byte $AA   ; 
- - - - - - 0x00BD17 02:BD07: 01        .byte $01   ; 
- - - - - - 0x00BD18 02:BD08: 10        .byte $10   ; 
- - - - - - 0x00BD19 02:BD09: 2A        .byte $2A   ; 
- - - - - - 0x00BD1A 02:BD0A: 10        .byte $10   ; 
- - - - - - 0x00BD1B 02:BD0B: 1D        .byte $1D   ; 
- - - - - - 0x00BD1C 02:BD0C: 00        .byte $00   ; 
- - - - - - 0x00BD1D 02:BD0D: 2A        .byte $2A   ; 
- - - - - - 0x00BD1E 02:BD0E: AA        .byte $AA   ; 
- - - - - - 0x00BD1F 02:BD0F: 01        .byte $01   ; 
- - - - - - 0x00BD20 02:BD10: 04        .byte $04   ; 
- - - - - - 0x00BD21 02:BD11: 07        .byte $07   ; 
- - - - - - 0x00BD22 02:BD12: 1C        .byte $1C   ; 



_off024_BD13_04:
- D 1 - I - 0x00BD23 02:BD13: 15        .byte $15   ; 
- D 1 - I - 0x00BD24 02:BD14: 00        .byte $00   ; 
- D 1 - I - 0x00BD25 02:BD15: 30        .byte $30   ; 
- D 1 - I - 0x00BD26 02:BD16: 00        .byte $00   ; 
- D 1 - I - 0x00BD27 02:BD17: 05        .byte $05   ; 
- D 1 - I - 0x00BD28 02:BD18: 09        .byte $09   ; 
- D 1 - I - 0x00BD29 02:BD19: 0B        .byte $0B   ; 
- D 1 - I - 0x00BD2A 02:BD1A: 30        .byte $30   ; 
- D 1 - I - 0x00BD2B 02:BD1B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD2C 02:BD1C: 1A        .byte $1A   ; 
- D 1 - I - 0x00BD2D 02:BD1D: 08        .byte $08   ; 
- D 1 - I - 0x00BD2E 02:BD1E: 00        .byte $00   ; 
- D 1 - I - 0x00BD2F 02:BD1F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD30 02:BD20: 22        .byte $22   ; 
- D 1 - I - 0x00BD31 02:BD21: 0C        .byte $0C   ; 
- D 1 - I - 0x00BD32 02:BD22: 0D        .byte $0D   ; 
- D 1 - I - 0x00BD33 02:BD23: 01        .byte $01   ; 
- D 1 - I - 0x00BD34 02:BD24: 20        .byte $20   ; 
- D 1 - I - 0x00BD35 02:BD25: 02        .byte $02   ; 
- D 1 - I - 0x00BD36 02:BD26: 00        .byte $00   ; 
- - - - - - 0x00BD37 02:BD27: FE        .byte $FE   ; 
- - - - - - 0x00BD38 02:BD28: FE        .byte $FE   ; 
- D 1 - I - 0x00BD39 02:BD29: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD3A 02:BD2A: 1A        .byte $1A   ; 
- D 1 - I - 0x00BD3B 02:BD2B: 05        .byte $05   ; 
- D 1 - I - 0x00BD3C 02:BD2C: 09        .byte $09   ; 
- D 1 - I - 0x00BD3D 02:BD2D: 0B        .byte $0B   ; 
- D 1 - I - 0x00BD3E 02:BD2E: 30        .byte $30   ; 
- D 1 - I - 0x00BD3F 02:BD2F: 01        .byte $01   ; 
- D 1 - I - 0x00BD40 02:BD30: 14        .byte $14   ; 
- D 1 - I - 0x00BD41 02:BD31: 02        .byte $02   ; 
- D 1 - I - 0x00BD42 02:BD32: 00        .byte $00   ; 
- - - - - - 0x00BD43 02:BD33: FE        .byte $FE   ; 
- - - - - - 0x00BD44 02:BD34: FE        .byte $FE   ; 
- D 1 - I - 0x00BD45 02:BD35: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD46 02:BD36: AE        .byte $AE   ; 
- D 1 - I - 0x00BD47 02:BD37: 09        .byte $09   ; 
- D 1 - I - 0x00BD48 02:BD38: 00        .byte $00   ; 
- - - - - - 0x00BD49 02:BD39: 07        .byte $07   ; 
- - - - - - 0x00BD4A 02:BD3A: 11        .byte $11   ; 
- D 1 - I - 0x00BD4B 02:BD3B: 41        .byte $41   ; 
- D 1 - I - 0x00BD4C 02:BD3C: 00        .byte $00   ; 
- D 1 - I - 0x00BD4D 02:BD3D: 11        .byte $11   ; 
- D 1 - I - 0x00BD4E 02:BD3E: 00        .byte $00   ; 
- D 1 - I - 0x00BD4F 02:BD3F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD50 02:BD40: AA        .byte $AA   ; 
- D 1 - I - 0x00BD51 02:BD41: 01        .byte $01   ; 
- D 1 - I - 0x00BD52 02:BD42: 08        .byte $08   ; 
- D 1 - I - 0x00BD53 02:BD43: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD54 02:BD44: AC        .byte $AC   ; 
- D 1 - I - 0x00BD55 02:BD45: 01        .byte $01   ; 
- D 1 - I - 0x00BD56 02:BD46: 18        .byte $18   ; 
- D 1 - I - 0x00BD57 02:BD47: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD58 02:BD48: AA        .byte $AA   ; 
- D 1 - I - 0x00BD59 02:BD49: 01        .byte $01   ; 
- D 1 - I - 0x00BD5A 02:BD4A: 04        .byte $04   ; 
- D 1 - I - 0x00BD5B 02:BD4B: 07        .byte $07   ; 
- D 1 - I - 0x00BD5C 02:BD4C: FF        .byte $FF   ; 
- D 1 - I - 0x00BD5D 02:BD4D: 31        .byte $31   ; 
- D 1 - I - 0x00BD5E 02:BD4E: 00        .byte $00   ; 
- D 1 - I - 0x00BD5F 02:BD4F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD60 02:BD50: AA        .byte $AA   ; 
- D 1 - I - 0x00BD61 02:BD51: 01        .byte $01   ; 
- D 1 - I - 0x00BD62 02:BD52: 20        .byte $20   ; 
- - - - - - 0x00BD63 02:BD53: 06        .byte $06   ; 
- - - - - - 0x00BD64 02:BD54: 00        .byte $00   ; 
- - - - - - 0x00BD65 02:BD55: 07        .byte $07   ; 
- - - - - - 0x00BD66 02:BD56: FF        .byte $FF   ; 
- D 1 - I - 0x00BD67 02:BD57: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD68 02:BD58: AE        .byte $AE   ; 
- D 1 - I - 0x00BD69 02:BD59: 08        .byte $08   ; 
- D 1 - I - 0x00BD6A 02:BD5A: 01        .byte $01   ; 
- - - - - - 0x00BD6B 02:BD5B: 07        .byte $07   ; 
- - - - - - 0x00BD6C 02:BD5C: 1E        .byte $1E   ; 
- D 1 - I - 0x00BD6D 02:BD5D: 11        .byte $11   ; 
- D 1 - I - 0x00BD6E 02:BD5E: 00        .byte $00   ; 
- D 1 - I - 0x00BD6F 02:BD5F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD70 02:BD60: AA        .byte $AA   ; 
- D 1 - I - 0x00BD71 02:BD61: 01        .byte $01   ; 
- D 1 - I - 0x00BD72 02:BD62: 10        .byte $10   ; 
- D 1 - I - 0x00BD73 02:BD63: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD74 02:BD64: 10        .byte $10   ; 
- D 1 - I - 0x00BD75 02:BD65: 1D        .byte $1D   ; 
- D 1 - I - 0x00BD76 02:BD66: 01        .byte $01   ; 
- D 1 - I - 0x00BD77 02:BD67: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD78 02:BD68: AA        .byte $AA   ; 
- D 1 - I - 0x00BD79 02:BD69: 01        .byte $01   ; 
- D 1 - I - 0x00BD7A 02:BD6A: 20        .byte $20   ; 
- D 1 - I - 0x00BD7B 02:BD6B: 07        .byte $07   ; 
- D 1 - I - 0x00BD7C 02:BD6C: 25        .byte $25   ; 



_off024_BD6D_05:
- D 1 - I - 0x00BD7D 02:BD6D: 0E        .byte $0E   ; 
- D 1 - I - 0x00BD7E 02:BD6E: 02        .byte $02   ; 
- D 1 - I - 0x00BD7F 02:BD6F: 12        .byte $12   ; 
- D 1 - I - 0x00BD80 02:BD70: 00        .byte $00   ; 
- D 1 - I - 0x00BD81 02:BD71: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD82 02:BD72: 08        .byte $08   ; 
- D 1 - I - 0x00BD83 02:BD73: 03        .byte $03   ; 
- D 1 - I - 0x00BD84 02:BD74: 08        .byte $08   ; 
- D 1 - I - 0x00BD85 02:BD75: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD86 02:BD76: 00        .byte $00   ; 
- D 1 - I - 0x00BD87 02:BD77: 01        .byte $01   ; 
- D 1 - I - 0x00BD88 02:BD78: 10        .byte $10   ; 
- D 1 - I - 0x00BD89 02:BD79: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD8A 02:BD7A: 10        .byte $10   ; 
- D 1 - I - 0x00BD8B 02:BD7B: 1D        .byte $1D   ; 
- D 1 - I - 0x00BD8C 02:BD7C: 01        .byte $01   ; 
- D 1 - I - 0x00BD8D 02:BD7D: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD8E 02:BD7E: 00        .byte $00   ; 
- D 1 - I - 0x00BD8F 02:BD7F: 01        .byte $01   ; 
- D 1 - I - 0x00BD90 02:BD80: 08        .byte $08   ; 
- D 1 - I - 0x00BD91 02:BD81: 07        .byte $07   ; 
- D 1 - I - 0x00BD92 02:BD82: 01        .byte $01   ; 
- D 1 - I - 0x00BD93 02:BD83: 12        .byte $12   ; 
- D 1 - I - 0x00BD94 02:BD84: 00        .byte $00   ; 
- D 1 - I - 0x00BD95 02:BD85: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD96 02:BD86: 08        .byte $08   ; 
- D 1 - I - 0x00BD97 02:BD87: 03        .byte $03   ; 
- D 1 - I - 0x00BD98 02:BD88: 08        .byte $08   ; 
- D 1 - I - 0x00BD99 02:BD89: 32        .byte $32   ; 
- D 1 - I - 0x00BD9A 02:BD8A: 00        .byte $00   ; 
- D 1 - I - 0x00BD9B 02:BD8B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BD9C 02:BD8C: 08        .byte $08   ; 
- D 1 - I - 0x00BD9D 02:BD8D: 03        .byte $03   ; 
- D 1 - I - 0x00BD9E 02:BD8E: 08        .byte $08   ; 
- D 1 - I - 0x00BD9F 02:BD8F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDA0 02:BD90: 00        .byte $00   ; 
- D 1 - I - 0x00BDA1 02:BD91: 01        .byte $01   ; 
- D 1 - I - 0x00BDA2 02:BD92: 10        .byte $10   ; 
- D 1 - I - 0x00BDA3 02:BD93: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDA4 02:BD94: 10        .byte $10   ; 
- D 1 - I - 0x00BDA5 02:BD95: 1D        .byte $1D   ; 
- D 1 - I - 0x00BDA6 02:BD96: 01        .byte $01   ; 
- D 1 - I - 0x00BDA7 02:BD97: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDA8 02:BD98: 00        .byte $00   ; 
- D 1 - I - 0x00BDA9 02:BD99: 01        .byte $01   ; 
- D 1 - I - 0x00BDAA 02:BD9A: 08        .byte $08   ; 
- D 1 - I - 0x00BDAB 02:BD9B: 07        .byte $07   ; 
- D 1 - I - 0x00BDAC 02:BD9C: 0B        .byte $0B   ; 
- D 1 - I - 0x00BDAD 02:BD9D: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDAE 02:BD9E: 03        .byte $03   ; 
- D 1 - I - 0x00BDAF 02:BD9F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDB0 02:BDA0: 08        .byte $08   ; 
- D 1 - I - 0x00BDB1 02:BDA1: 03        .byte $03   ; 
- D 1 - I - 0x00BDB2 02:BDA2: 01        .byte $01   ; 
- D 1 - I - 0x00BDB3 02:BDA3: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDB4 02:BDA4: 40        .byte $40   ; 
- D 1 - I - 0x00BDB5 02:BDA5: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDB6 02:BDA6: 00        .byte $00   ; 
- D 1 - I - 0x00BDB7 02:BDA7: 01        .byte $01   ; 
- D 1 - I - 0x00BDB8 02:BDA8: 10        .byte $10   ; 
- D 1 - I - 0x00BDB9 02:BDA9: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDBA 02:BDAA: 10        .byte $10   ; 
- D 1 - I - 0x00BDBB 02:BDAB: 1D        .byte $1D   ; 
- D 1 - I - 0x00BDBC 02:BDAC: 01        .byte $01   ; 
- D 1 - I - 0x00BDBD 02:BDAD: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDBE 02:BDAE: 00        .byte $00   ; 
- D 1 - I - 0x00BDBF 02:BDAF: 01        .byte $01   ; 
- D 1 - I - 0x00BDC0 02:BDB0: 08        .byte $08   ; 
- D 1 - I - 0x00BDC1 02:BDB1: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDC2 02:BDB2: 83        .byte $83   ; 
- D 1 - I - 0x00BDC3 02:BDB3: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDC4 02:BDB4: 08        .byte $08   ; 
- D 1 - I - 0x00BDC5 02:BDB5: 03        .byte $03   ; 
- D 1 - I - 0x00BDC6 02:BDB6: 01        .byte $01   ; 
- D 1 - I - 0x00BDC7 02:BDB7: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDC8 02:BDB8: 40        .byte $40   ; 
- - - - - - 0x00BDC9 02:BDB9: 2A        .byte $2A   ; 
- - - - - - 0x00BDCA 02:BDBA: 00        .byte $00   ; 
- - - - - - 0x00BDCB 02:BDBB: 01        .byte $01   ; 
- - - - - - 0x00BDCC 02:BDBC: 20        .byte $20   ; 
- - - - - - 0x00BDCD 02:BDBD: 07        .byte $07   ; 
- - - - - - 0x00BDCE 02:BDBE: 18        .byte $18   ; 
- D 1 - I - 0x00BDCF 02:BDBF: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDD0 02:BDC0: 83        .byte $83   ; 
- D 1 - I - 0x00BDD1 02:BDC1: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDD2 02:BDC2: 08        .byte $08   ; 
- D 1 - I - 0x00BDD3 02:BDC3: 03        .byte $03   ; 
- D 1 - I - 0x00BDD4 02:BDC4: 01        .byte $01   ; 
- D 1 - I - 0x00BDD5 02:BDC5: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDD6 02:BDC6: 40        .byte $40   ; 
- D 1 - I - 0x00BDD7 02:BDC7: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDD8 02:BDC8: 00        .byte $00   ; 
- D 1 - I - 0x00BDD9 02:BDC9: 01        .byte $01   ; 
- D 1 - I - 0x00BDDA 02:BDCA: 10        .byte $10   ; 
- D 1 - I - 0x00BDDB 02:BDCB: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDDC 02:BDCC: 10        .byte $10   ; 
- D 1 - I - 0x00BDDD 02:BDCD: 1D        .byte $1D   ; 
- D 1 - I - 0x00BDDE 02:BDCE: 01        .byte $01   ; 
- D 1 - I - 0x00BDDF 02:BDCF: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDE0 02:BDD0: 00        .byte $00   ; 
- D 1 - I - 0x00BDE1 02:BDD1: 01        .byte $01   ; 
- D 1 - I - 0x00BDE2 02:BDD2: 08        .byte $08   ; 
- D 1 - I - 0x00BDE3 02:BDD3: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDE4 02:BDD4: 03        .byte $03   ; 
- D 1 - I - 0x00BDE5 02:BDD5: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDE6 02:BDD6: 08        .byte $08   ; 
- D 1 - I - 0x00BDE7 02:BDD7: 03        .byte $03   ; 
- D 1 - I - 0x00BDE8 02:BDD8: 01        .byte $01   ; 
- D 1 - I - 0x00BDE9 02:BDD9: 4F        .byte $4F   ; 
- D 1 - I - 0x00BDEA 02:BDDA: 40        .byte $40   ; 
- D 1 - I - 0x00BDEB 02:BDDB: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDEC 02:BDDC: 00        .byte $00   ; 
- D 1 - I - 0x00BDED 02:BDDD: 01        .byte $01   ; 
- D 1 - I - 0x00BDEE 02:BDDE: 20        .byte $20   ; 
- - - - - - 0x00BDEF 02:BDDF: 07        .byte $07   ; 
- - - - - - 0x00BDF0 02:BDE0: 29        .byte $29   ; 
- D 1 - I - 0x00BDF1 02:BDE1: 12        .byte $12   ; 
- D 1 - I - 0x00BDF2 02:BDE2: 00        .byte $00   ; 
- D 1 - I - 0x00BDF3 02:BDE3: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDF4 02:BDE4: 08        .byte $08   ; 
- D 1 - I - 0x00BDF5 02:BDE5: 03        .byte $03   ; 
- D 1 - I - 0x00BDF6 02:BDE6: 08        .byte $08   ; 
- D 1 - I - 0x00BDF7 02:BDE7: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDF8 02:BDE8: 00        .byte $00   ; 
- D 1 - I - 0x00BDF9 02:BDE9: 01        .byte $01   ; 
- D 1 - I - 0x00BDFA 02:BDEA: 10        .byte $10   ; 
- D 1 - I - 0x00BDFB 02:BDEB: 2A        .byte $2A   ; 
- D 1 - I - 0x00BDFC 02:BDEC: 10        .byte $10   ; 
- D 1 - I - 0x00BDFD 02:BDED: 1D        .byte $1D   ; 
- D 1 - I - 0x00BDFE 02:BDEE: 01        .byte $01   ; 
- D 1 - I - 0x00BDFF 02:BDEF: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE00 02:BDF0: 00        .byte $00   ; 
- D 1 - I - 0x00BE01 02:BDF1: 01        .byte $01   ; 
- D 1 - I - 0x00BE02 02:BDF2: 08        .byte $08   ; 
- D 1 - I - 0x00BE03 02:BDF3: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE04 02:BDF4: 08        .byte $08   ; 
- D 1 - I - 0x00BE05 02:BDF5: 03        .byte $03   ; 
- D 1 - I - 0x00BE06 02:BDF6: 0B        .byte $0B   ; 
- - - - - - 0x00BE07 02:BDF7: 03        .byte $03   ; 
- - - - - - 0x00BE08 02:BDF8: 0B        .byte $0B   ; 
- - - - - - 0x00BE09 02:BDF9: 07        .byte $07   ; 
- - - - - - 0x00BE0A 02:BDFA: 3A        .byte $3A   ; 
- D 1 - I - 0x00BE0B 02:BDFB: 12        .byte $12   ; 
- D 1 - I - 0x00BE0C 02:BDFC: 00        .byte $00   ; 
- D 1 - I - 0x00BE0D 02:BDFD: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE0E 02:BDFE: 08        .byte $08   ; 
- D 1 - I - 0x00BE0F 02:BDFF: 03        .byte $03   ; 
- D 1 - I - 0x00BE10 02:BE00: 08        .byte $08   ; 
- D 1 - I - 0x00BE11 02:BE01: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE12 02:BE02: 00        .byte $00   ; 
- D 1 - I - 0x00BE13 02:BE03: 01        .byte $01   ; 
- D 1 - I - 0x00BE14 02:BE04: 10        .byte $10   ; 
- D 1 - I - 0x00BE15 02:BE05: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE16 02:BE06: 10        .byte $10   ; 
- D 1 - I - 0x00BE17 02:BE07: 1D        .byte $1D   ; 
- D 1 - I - 0x00BE18 02:BE08: 01        .byte $01   ; 
- D 1 - I - 0x00BE19 02:BE09: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE1A 02:BE0A: 08        .byte $08   ; 
- D 1 - I - 0x00BE1B 02:BE0B: 03        .byte $03   ; 
- D 1 - I - 0x00BE1C 02:BE0C: 08        .byte $08   ; 
- D 1 - I - 0x00BE1D 02:BE0D: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE1E 02:BE0E: 00        .byte $00   ; 
- D 1 - I - 0x00BE1F 02:BE0F: 01        .byte $01   ; 
- D 1 - I - 0x00BE20 02:BE10: 10        .byte $10   ; 
- D 1 - I - 0x00BE21 02:BE11: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE22 02:BE12: 10        .byte $10   ; 
- D 1 - I - 0x00BE23 02:BE13: 1D        .byte $1D   ; 
- D 1 - I - 0x00BE24 02:BE14: 01        .byte $01   ; 
- D 1 - I - 0x00BE25 02:BE15: 06        .byte $06   ; 
- D 1 - I - 0x00BE26 02:BE16: 00        .byte $00   ; 
- D 1 - I - 0x00BE27 02:BE17: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE28 02:BE18: 08        .byte $08   ; 
- D 1 - I - 0x00BE29 02:BE19: 03        .byte $03   ; 
- D 1 - I - 0x00BE2A 02:BE1A: 0E        .byte $0E   ; 
- D 1 - I - 0x00BE2B 02:BE1B: 07        .byte $07   ; 
- D 1 - I - 0x00BE2C 02:BE1C: 47        .byte $47   ; 



_off024_BE1D_06:
- D 1 - I - 0x00BE2D 02:BE1D: 0E        .byte $0E   ; 
- D 1 - I - 0x00BE2E 02:BE1E: 03        .byte $03   ; 
- D 1 - I - 0x00BE2F 02:BE1F: 4F        .byte $4F   ; 
- D 1 - I - 0x00BE30 02:BE20: 43        .byte $43   ; 
- D 1 - I - 0x00BE31 02:BE21: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE32 02:BE22: 08        .byte $08   ; 
- D 1 - I - 0x00BE33 02:BE23: 03        .byte $03   ; 
- D 1 - I - 0x00BE34 02:BE24: 01        .byte $01   ; 
- D 1 - I - 0x00BE35 02:BE25: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE36 02:BE26: 00        .byte $00   ; 
- D 1 - I - 0x00BE37 02:BE27: 01        .byte $01   ; 
- D 1 - I - 0x00BE38 02:BE28: 10        .byte $10   ; 
- D 1 - I - 0x00BE39 02:BE29: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE3A 02:BE2A: 10        .byte $10   ; 
- D 1 - I - 0x00BE3B 02:BE2B: 1D        .byte $1D   ; 
- D 1 - I - 0x00BE3C 02:BE2C: 01        .byte $01   ; 
- D 1 - I - 0x00BE3D 02:BE2D: 01        .byte $01   ; 
- D 1 - I - 0x00BE3E 02:BE2E: 10        .byte $10   ; 
- D 1 - I - 0x00BE3F 02:BE2F: 1D        .byte $1D   ; 
- D 1 - I - 0x00BE40 02:BE30: 01        .byte $01   ; 
- D 1 - I - 0x00BE41 02:BE31: 4F        .byte $4F   ; 
- D 1 - I - 0x00BE42 02:BE32: C3        .byte $C3   ; 
- D 1 - I - 0x00BE43 02:BE33: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE44 02:BE34: 00        .byte $00   ; 
- D 1 - I - 0x00BE45 02:BE35: 01        .byte $01   ; 
- D 1 - I - 0x00BE46 02:BE36: 08        .byte $08   ; 
- D 1 - I - 0x00BE47 02:BE37: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE48 02:BE38: 08        .byte $08   ; 
- D 1 - I - 0x00BE49 02:BE39: 03        .byte $03   ; 
- D 1 - I - 0x00BE4A 02:BE3A: 01        .byte $01   ; 
- D 1 - I - 0x00BE4B 02:BE3B: 01        .byte $01   ; 
- D 1 - I - 0x00BE4C 02:BE3C: 10        .byte $10   ; 
- D 1 - I - 0x00BE4D 02:BE3D: 07        .byte $07   ; 
- D 1 - I - 0x00BE4E 02:BE3E: 01        .byte $01   ; 
- D 1 - I - 0x00BE4F 02:BE3F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE50 02:BE40: 08        .byte $08   ; 
- D 1 - I - 0x00BE51 02:BE41: 03        .byte $03   ; 
- D 1 - I - 0x00BE52 02:BE42: 01        .byte $01   ; 
- D 1 - I - 0x00BE53 02:BE43: 4F        .byte $4F   ; 
- D 1 - I - 0x00BE54 02:BE44: 03        .byte $03   ; 
- D 1 - I - 0x00BE55 02:BE45: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE56 02:BE46: 08        .byte $08   ; 
- D 1 - I - 0x00BE57 02:BE47: 03        .byte $03   ; 
- D 1 - I - 0x00BE58 02:BE48: 01        .byte $01   ; 
- D 1 - I - 0x00BE59 02:BE49: 12        .byte $12   ; 
- D 1 - I - 0x00BE5A 02:BE4A: 00        .byte $00   ; 
- D 1 - I - 0x00BE5B 02:BE4B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE5C 02:BE4C: 00        .byte $00   ; 
- D 1 - I - 0x00BE5D 02:BE4D: 01        .byte $01   ; 
- D 1 - I - 0x00BE5E 02:BE4E: 10        .byte $10   ; 
- - - - - - 0x00BE5F 02:BE4F: 2A        .byte $2A   ; 
- - - - - - 0x00BE60 02:BE50: 10        .byte $10   ; 
- - - - - - 0x00BE61 02:BE51: 1D        .byte $1D   ; 
- - - - - - 0x00BE62 02:BE52: 01        .byte $01   ; 
- - - - - - 0x00BE63 02:BE53: 4F        .byte $4F   ; 
- - - - - - 0x00BE64 02:BE54: 43        .byte $43   ; 
- - - - - - 0x00BE65 02:BE55: 2A        .byte $2A   ; 
- - - - - - 0x00BE66 02:BE56: 08        .byte $08   ; 
- - - - - - 0x00BE67 02:BE57: 03        .byte $03   ; 
- - - - - - 0x00BE68 02:BE58: 01        .byte $01   ; 
- - - - - - 0x00BE69 02:BE59: 12        .byte $12   ; 
- - - - - - 0x00BE6A 02:BE5A: 00        .byte $00   ; 
- - - - - - 0x00BE6B 02:BE5B: 2A        .byte $2A   ; 
- - - - - - 0x00BE6C 02:BE5C: 00        .byte $00   ; 
- - - - - - 0x00BE6D 02:BE5D: 01        .byte $01   ; 
- - - - - - 0x00BE6E 02:BE5E: 10        .byte $10   ; 
- - - - - - 0x00BE6F 02:BE5F: 2A        .byte $2A   ; 
- - - - - - 0x00BE70 02:BE60: 10        .byte $10   ; 
- - - - - - 0x00BE71 02:BE61: 1D        .byte $1D   ; 
- - - - - - 0x00BE72 02:BE62: 01        .byte $01   ; 
- - - - - - 0x00BE73 02:BE63: 07        .byte $07   ; 
- - - - - - 0x00BE74 02:BE64: 11        .byte $11   ; 
- D 1 - I - 0x00BE75 02:BE65: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE76 02:BE66: 08        .byte $08   ; 
- D 1 - I - 0x00BE77 02:BE67: 03        .byte $03   ; 
- D 1 - I - 0x00BE78 02:BE68: 01        .byte $01   ; 
- D 1 - I - 0x00BE79 02:BE69: 4F        .byte $4F   ; 
- D 1 - I - 0x00BE7A 02:BE6A: 40        .byte $40   ; 
- D 1 - I - 0x00BE7B 02:BE6B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE7C 02:BE6C: 00        .byte $00   ; 
- D 1 - I - 0x00BE7D 02:BE6D: 33        .byte $33   ; 
- D 1 - I - 0x00BE7E 02:BE6E: 20        .byte $20   ; 
- D 1 - I - 0x00BE7F 02:BE6F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE80 02:BE70: 10        .byte $10   ; 
- D 1 - I - 0x00BE81 02:BE71: 1D        .byte $1D   ; 
- D 1 - I - 0x00BE82 02:BE72: 01        .byte $01   ; 
- D 1 - I - 0x00BE83 02:BE73: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE84 02:BE74: 00        .byte $00   ; 
- D 1 - I - 0x00BE85 02:BE75: 33        .byte $33   ; 
- D 1 - I - 0x00BE86 02:BE76: 20        .byte $20   ; 
- D 1 - I - 0x00BE87 02:BE77: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE88 02:BE78: 10        .byte $10   ; 
- D 1 - I - 0x00BE89 02:BE79: 1D        .byte $1D   ; 
- D 1 - I - 0x00BE8A 02:BE7A: 01        .byte $01   ; 
- D 1 - I - 0x00BE8B 02:BE7B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE8C 02:BE7C: 00        .byte $00   ; 
- D 1 - I - 0x00BE8D 02:BE7D: 33        .byte $33   ; 
- D 1 - I - 0x00BE8E 02:BE7E: 20        .byte $20   ; 
- D 1 - I - 0x00BE8F 02:BE7F: 2A        .byte $2A   ; 
- D 1 - I - 0x00BE90 02:BE80: 10        .byte $10   ; 
- - - - - - 0x00BE91 02:BE81: 1D        .byte $1D   ; 
- - - - - - 0x00BE92 02:BE82: 01        .byte $01   ; 
- - - - - - 0x00BE93 02:BE83: 4F        .byte $4F   ; 
- - - - - - 0x00BE94 02:BE84: 83        .byte $83   ; 
- - - - - - 0x00BE95 02:BE85: 2A        .byte $2A   ; 
- - - - - - 0x00BE96 02:BE86: 08        .byte $08   ; 
- - - - - - 0x00BE97 02:BE87: 03        .byte $03   ; 
- - - - - - 0x00BE98 02:BE88: 01        .byte $01   ; 
- - - - - - 0x00BE99 02:BE89: 03        .byte $03   ; 
- - - - - - 0x00BE9A 02:BE8A: 01        .byte $01   ; 
- - - - - - 0x00BE9B 02:BE8B: 07        .byte $07   ; 
- - - - - - 0x00BE9C 02:BE8C: 24        .byte $24   ; 
- - - - - - 0x00BE9D 02:BE8D: 12        .byte $12   ; 
- - - - - - 0x00BE9E 02:BE8E: 00        .byte $00   ; 
- - - - - - 0x00BE9F 02:BE8F: 2A        .byte $2A   ; 
- - - - - - 0x00BEA0 02:BE90: 00        .byte $00   ; 
- - - - - - 0x00BEA1 02:BE91: 01        .byte $01   ; 
- - - - - - 0x00BEA2 02:BE92: 10        .byte $10   ; 
- - - - - - 0x00BEA3 02:BE93: 2A        .byte $2A   ; 
- - - - - - 0x00BEA4 02:BE94: 10        .byte $10   ; 
- - - - - - 0x00BEA5 02:BE95: 1D        .byte $1D   ; 
- - - - - - 0x00BEA6 02:BE96: 01        .byte $01   ; 
- - - - - - 0x00BEA7 02:BE97: 2A        .byte $2A   ; 
- - - - - - 0x00BEA8 02:BE98: 00        .byte $00   ; 
- - - - - - 0x00BEA9 02:BE99: 01        .byte $01   ; 
- - - - - - 0x00BEAA 02:BE9A: 10        .byte $10   ; 
- - - - - - 0x00BEAB 02:BE9B: 32        .byte $32   ; 
- - - - - - 0x00BEAC 02:BE9C: 01        .byte $01   ; 
- - - - - - 0x00BEAD 02:BE9D: 07        .byte $07   ; 
- - - - - - 0x00BEAE 02:BE9E: 38        .byte $38   ; 
- - - - - - 0x00BEAF 02:BE9F: 2A        .byte $2A   ; 
- - - - - - 0x00BEB0 02:BEA0: 08        .byte $08   ; 
- - - - - - 0x00BEB1 02:BEA1: 03        .byte $03   ; 
- - - - - - 0x00BEB2 02:BEA2: 08        .byte $08   ; 
- - - - - - 0x00BEB3 02:BEA3: 2A        .byte $2A   ; 
- - - - - - 0x00BEB4 02:BEA4: 08        .byte $08   ; 
- - - - - - 0x00BEB5 02:BEA5: 03        .byte $03   ; 
- - - - - - 0x00BEB6 02:BEA6: 08        .byte $08   ; 
- - - - - - 0x00BEB7 02:BEA7: 2A        .byte $2A   ; 
- - - - - - 0x00BEB8 02:BEA8: 00        .byte $00   ; 
- - - - - - 0x00BEB9 02:BEA9: 01        .byte $01   ; 
- - - - - - 0x00BEBA 02:BEAA: 10        .byte $10   ; 
- - - - - - 0x00BEBB 02:BEAB: 2A        .byte $2A   ; 
- - - - - - 0x00BEBC 02:BEAC: 10        .byte $10   ; 
- - - - - - 0x00BEBD 02:BEAD: 1D        .byte $1D   ; 
- - - - - - 0x00BEBE 02:BEAE: 01        .byte $01   ; 
- - - - - - 0x00BEBF 02:BEAF: 2A        .byte $2A   ; 
- - - - - - 0x00BEC0 02:BEB0: 00        .byte $00   ; 
- - - - - - 0x00BEC1 02:BEB1: 01        .byte $01   ; 
- - - - - - 0x00BEC2 02:BEB2: 08        .byte $08   ; 
- - - - - - 0x00BEC3 02:BEB3: 07        .byte $07   ; 
- - - - - - 0x00BEC4 02:BEB4: 0B        .byte $0B   ; 
- D 1 - I - 0x00BEC5 02:BEB5: 12        .byte $12   ; 
- D 1 - I - 0x00BEC6 02:BEB6: 00        .byte $00   ; 
- D 1 - I - 0x00BEC7 02:BEB7: 2A        .byte $2A   ; 
- D 1 - I - 0x00BEC8 02:BEB8: 00        .byte $00   ; 
- D 1 - I - 0x00BEC9 02:BEB9: 01        .byte $01   ; 
- D 1 - I - 0x00BECA 02:BEBA: 10        .byte $10   ; 
- D 1 - I - 0x00BECB 02:BEBB: 2A        .byte $2A   ; 
- D 1 - I - 0x00BECC 02:BEBC: 10        .byte $10   ; 
- D 1 - I - 0x00BECD 02:BEBD: 1D        .byte $1D   ; 
- D 1 - I - 0x00BECE 02:BEBE: 01        .byte $01   ; 
- D 1 - I - 0x00BECF 02:BEBF: 2A        .byte $2A   ; 
- D 1 - I - 0x00BED0 02:BEC0: 00        .byte $00   ; 
- D 1 - I - 0x00BED1 02:BEC1: 01        .byte $01   ; 
- D 1 - I - 0x00BED2 02:BEC2: 10        .byte $10   ; 
- D 1 - I - 0x00BED3 02:BEC3: 07        .byte $07   ; 
- D 1 - I - 0x00BED4 02:BEC4: 4C        .byte $4C   ; 
- D 1 - I - 0x00BED5 02:BEC5: 2A        .byte $2A   ; 
- D 1 - I - 0x00BED6 02:BEC6: 08        .byte $08   ; 
- D 1 - I - 0x00BED7 02:BEC7: 03        .byte $03   ; 
- D 1 - I - 0x00BED8 02:BEC8: 01        .byte $01   ; 
- D 1 - I - 0x00BED9 02:BEC9: 4F        .byte $4F   ; 
- D 1 - I - 0x00BEDA 02:BECA: 43        .byte $43   ; 
- D 1 - I - 0x00BEDB 02:BECB: 2A        .byte $2A   ; 
- D 1 - I - 0x00BEDC 02:BECC: 08        .byte $08   ; 
- D 1 - I - 0x00BEDD 02:BECD: 03        .byte $03   ; 
- D 1 - I - 0x00BEDE 02:BECE: 0E        .byte $0E   ; 
- - - - - - 0x00BEDF 02:BECF: 4F        .byte $4F   ; 
- - - - - - 0x00BEE0 02:BED0: 40        .byte $40   ; 
- - - - - - 0x00BEE1 02:BED1: 2A        .byte $2A   ; 
- - - - - - 0x00BEE2 02:BED2: 00        .byte $00   ; 
- - - - - - 0x00BEE3 02:BED3: 01        .byte $01   ; 
- - - - - - 0x00BEE4 02:BED4: 10        .byte $10   ; 
- - - - - - 0x00BEE5 02:BED5: 2A        .byte $2A   ; 
- - - - - - 0x00BEE6 02:BED6: 10        .byte $10   ; 
- - - - - - 0x00BEE7 02:BED7: 1D        .byte $1D   ; 
- - - - - - 0x00BEE8 02:BED8: 01        .byte $01   ; 
- - - - - - 0x00BEE9 02:BED9: 4F        .byte $4F   ; 
- - - - - - 0x00BEEA 02:BEDA: 43        .byte $43   ; 
- - - - - - 0x00BEEB 02:BEDB: 2A        .byte $2A   ; 
- - - - - - 0x00BEEC 02:BEDC: 08        .byte $08   ; 
- - - - - - 0x00BEED 02:BEDD: 03        .byte $03   ; 
- - - - - - 0x00BEEE 02:BEDE: 0E        .byte $0E   ; 
- - - - - - 0x00BEEF 02:BEDF: 4F        .byte $4F   ; 
- - - - - - 0x00BEF0 02:BEE0: 40        .byte $40   ; 
- - - - - - 0x00BEF1 02:BEE1: 2A        .byte $2A   ; 
- - - - - - 0x00BEF2 02:BEE2: 00        .byte $00   ; 
- - - - - - 0x00BEF3 02:BEE3: 01        .byte $01   ; 
- - - - - - 0x00BEF4 02:BEE4: 10        .byte $10   ; 
- - - - - - 0x00BEF5 02:BEE5: 2A        .byte $2A   ; 
- - - - - - 0x00BEF6 02:BEE6: 10        .byte $10   ; 
- - - - - - 0x00BEF7 02:BEE7: 1D        .byte $1D   ; 
- - - - - - 0x00BEF8 02:BEE8: 01        .byte $01   ; 
- - - - - - 0x00BEF9 02:BEE9: 12        .byte $12   ; 
- - - - - - 0x00BEFA 02:BEEA: 00        .byte $00   ; 
- - - - - - 0x00BEFB 02:BEEB: 2A        .byte $2A   ; 
- - - - - - 0x00BEFC 02:BEEC: 00        .byte $00   ; 
- - - - - - 0x00BEFD 02:BEED: 01        .byte $01   ; 
- - - - - - 0x00BEFE 02:BEEE: 10        .byte $10   ; 
- - - - - - 0x00BEFF 02:BEEF: 2A        .byte $2A   ; 
- - - - - - 0x00BF00 02:BEF0: 10        .byte $10   ; 
- - - - - - 0x00BF01 02:BEF1: 1D        .byte $1D   ; 
- - - - - - 0x00BF02 02:BEF2: 01        .byte $01   ; 
- - - - - - 0x00BF03 02:BEF3: 2A        .byte $2A   ; 
- - - - - - 0x00BF04 02:BEF4: 00        .byte $00   ; 
- - - - - - 0x00BF05 02:BEF5: 01        .byte $01   ; 
- - - - - - 0x00BF06 02:BEF6: 10        .byte $10   ; 
- - - - - - 0x00BF07 02:BEF7: 07        .byte $07   ; 
- - - - - - 0x00BF08 02:BEF8: 54        .byte $54   ; 



_off024_BEF9_07:
- D 1 - I - 0x00BF09 02:BEF9: 15        .byte $15   ; 
- D 1 - I - 0x00BF0A 02:BEFA: 00        .byte $00   ; 
- D 1 - I - 0x00BF0B 02:BEFB: 30        .byte $30   ; 
- D 1 - I - 0x00BF0C 02:BEFC: 01        .byte $01   ; 
- D 1 - I - 0x00BF0D 02:BEFD: 05        .byte $05   ; 
- D 1 - I - 0x00BF0E 02:BEFE: 09        .byte $09   ; 
- D 1 - I - 0x00BF0F 02:BEFF: 0B        .byte $0B   ; 
- D 1 - I - 0x00BF10 02:BF00: 30        .byte $30   ; 
- D 1 - I - 0x00BF11 02:BF01: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF12 02:BF02: 1A        .byte $1A   ; 
- D 1 - I - 0x00BF13 02:BF03: 03        .byte $03   ; 
- D 1 - I - 0x00BF14 02:BF04: 05        .byte $05   ; 
- D 1 - I - 0x00BF15 02:BF05: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF16 02:BF06: 22        .byte $22   ; 
- D 1 - I - 0x00BF17 02:BF07: 01        .byte $01   ; 
- D 1 - I - 0x00BF18 02:BF08: 22        .byte $22   ; 
- D 1 - I - 0x00BF19 02:BF09: 02        .byte $02   ; 
- D 1 - I - 0x00BF1A 02:BF0A: 00        .byte $00   ; 
- - - - - - 0x00BF1B 02:BF0B: FE        .byte $FE   ; 
- - - - - - 0x00BF1C 02:BF0C: FE        .byte $FE   ; 
- D 1 - I - 0x00BF1D 02:BF0D: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF1E 02:BF0E: 1A        .byte $1A   ; 
- D 1 - I - 0x00BF1F 02:BF0F: 05        .byte $05   ; 
- D 1 - I - 0x00BF20 02:BF10: 09        .byte $09   ; 
- D 1 - I - 0x00BF21 02:BF11: 0B        .byte $0B   ; 
- D 1 - I - 0x00BF22 02:BF12: 30        .byte $30   ; 
- D 1 - I - 0x00BF23 02:BF13: 01        .byte $01   ; 
- D 1 - I - 0x00BF24 02:BF14: 14        .byte $14   ; 
- D 1 - I - 0x00BF25 02:BF15: 02        .byte $02   ; 
- D 1 - I - 0x00BF26 02:BF16: 00        .byte $00   ; 
- - - - - - 0x00BF27 02:BF17: FE        .byte $FE   ; 
- - - - - - 0x00BF28 02:BF18: FE        .byte $FE   ; 
- D 1 - I - 0x00BF29 02:BF19: 13        .byte $13   ; 
- D 1 - I - 0x00BF2A 02:BF1A: 00        .byte $00   ; 
- D 1 - I - 0x00BF2B 02:BF1B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF2C 02:BF1C: 00        .byte $00   ; 
- D 1 - I - 0x00BF2D 02:BF1D: 01        .byte $01   ; 
- D 1 - I - 0x00BF2E 02:BF1E: 28        .byte $28   ; 
- D 1 - I - 0x00BF2F 02:BF1F: 07        .byte $07   ; 
- D 1 - I - 0x00BF30 02:BF20: FF        .byte $FF   ; 
- D 1 - I - 0x00BF31 02:BF21: 12        .byte $12   ; 
- D 1 - I - 0x00BF32 02:BF22: 00        .byte $00   ; 
- D 1 - I - 0x00BF33 02:BF23: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF34 02:BF24: 00        .byte $00   ; 
- D 1 - I - 0x00BF35 02:BF25: 01        .byte $01   ; 
- D 1 - I - 0x00BF36 02:BF26: 10        .byte $10   ; 
- D 1 - I - 0x00BF37 02:BF27: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF38 02:BF28: 10        .byte $10   ; 
- D 1 - I - 0x00BF39 02:BF29: 1D        .byte $1D   ; 
- D 1 - I - 0x00BF3A 02:BF2A: 01        .byte $01   ; 
- D 1 - I - 0x00BF3B 02:BF2B: 2A        .byte $2A   ; 
- D 1 - I - 0x00BF3C 02:BF2C: 00        .byte $00   ; 
- D 1 - I - 0x00BF3D 02:BF2D: 01        .byte $01   ; 
- D 1 - I - 0x00BF3E 02:BF2E: 20        .byte $20   ; 
- D 1 - I - 0x00BF3F 02:BF2F: 07        .byte $07   ; 
- D 1 - I - 0x00BF40 02:BF30: 14        .byte $14   ; 



_off024_BF31_01:
_off024_BF31_0B:
_off024_BF31_0C:
_off024_BF31_13:
_off024_BF31_14:
_off024_BF31_15:
_off024_BF31_16:
_off024_BF31_17:
_off024_BF31_31:
_off024_BF31_32:
_off024_BF31_35:
_off024_BF31_36:
_off024_BF31_37:
_off024_BF31_3A:
_off024_BF31_3B:
- D 1 - I - 0x00BF41 02:BF31: 01        .byte $01   ; 
- D 1 - I - 0x00BF42 02:BF32: 10        .byte $10   ; 
- D 1 - I - 0x00BF43 02:BF33: 0D        .byte $0D   ; 
- D 1 - I - 0x00BF44 02:BF34: 00        .byte $00   ; 
- D 1 - I - 0x00BF45 02:BF35: 01        .byte $01   ; 
- D 1 - I - 0x00BF46 02:BF36: 10        .byte $10   ; 
- D 1 - I - 0x00BF47 02:BF37: 0D        .byte $0D   ; 
- D 1 - I - 0x00BF48 02:BF38: 01        .byte $01   ; 
- D 1 - I - 0x00BF49 02:BF39: 01        .byte $01   ; 
- D 1 - I - 0x00BF4A 02:BF3A: 10        .byte $10   ; 
- D 1 - I - 0x00BF4B 02:BF3B: 0D        .byte $0D   ; 
- D 1 - I - 0x00BF4C 02:BF3C: 02        .byte $02   ; 
- D 1 - I - 0x00BF4D 02:BF3D: 01        .byte $01   ; 
- D 1 - I - 0x00BF4E 02:BF3E: 10        .byte $10   ; 
- D 1 - I - 0x00BF4F 02:BF3F: 0D        .byte $0D   ; 
- D 1 - I - 0x00BF50 02:BF40: 03        .byte $03   ; 
- D 1 - I - 0x00BF51 02:BF41: 01        .byte $01   ; 
- D 1 - I - 0x00BF52 02:BF42: 10        .byte $10   ; 
- D 1 - I - 0x00BF53 02:BF43: 0D        .byte $0D   ; 
- D 1 - I - 0x00BF54 02:BF44: 02        .byte $02   ; 
- D 1 - I - 0x00BF55 02:BF45: 01        .byte $01   ; 
- D 1 - I - 0x00BF56 02:BF46: 10        .byte $10   ; 
- D 1 - I - 0x00BF57 02:BF47: 0D        .byte $0D   ; 
- D 1 - I - 0x00BF58 02:BF48: 01        .byte $01   ; 
- D 1 - I - 0x00BF59 02:BF49: 07        .byte $07   ; 
- D 1 - I - 0x00BF5A 02:BF4A: 00        .byte $00   ; 



_off024_BF4B_18:
_off024_BF4B_19:
_off024_BF4B_1A:
_off024_BF4B_1B:
_off024_BF4B_1C:
- D 1 - I - 0x00BF5B 02:BF4B: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF5C 02:BF4C: 00        .byte $00   ; 
- D 1 - I - 0x00BF5D 02:BF4D: 22        .byte $22   ; 
- D 1 - I - 0x00BF5E 02:BF4E: 07        .byte $07   ; 
- D 1 - I - 0x00BF5F 02:BF4F: 20        .byte $20   ; 
- D 1 - I - 0x00BF60 02:BF50: 00        .byte $00   ; 
- D 1 - I - 0x00BF61 02:BF51: 3F        .byte $3F   ; 
- D 1 - I - 0x00BF62 02:BF52: 00        .byte $00   ; 
- D 1 - I - 0x00BF63 02:BF53: 01        .byte $01   ; 
- D 1 - I - 0x00BF64 02:BF54: 18        .byte $18   ; 
- D 1 - I - 0x00BF65 02:BF55: 20        .byte $20   ; 
- D 1 - I - 0x00BF66 02:BF56: 43        .byte $43   ; 
- D 1 - I - 0x00BF67 02:BF57: 07        .byte $07   ; 
- D 1 - I - 0x00BF68 02:BF58: 06        .byte $06   ; 


_off024_BF59_1E:
_off024_BF59_1F:
- D 1 - I - 0x00BF69 02:BF59: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF6A 02:BF5A: 00        .byte $00   ; 
- D 1 - I - 0x00BF6B 02:BF5B: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF6C 02:BF5C: 02        .byte $02   ; 
- D 1 - I - 0x00BF6D 02:BF5D: 01        .byte $01   ; 
- D 1 - I - 0x00BF6E 02:BF5E: 10        .byte $10   ; 
- D 1 - I - 0x00BF6F 02:BF5F: 03        .byte $03   ; 
- D 1 - I - 0x00BF70 02:BF60: 00        .byte $00   ; 
- - - - - - 0x00BF71 02:BF61: 07        .byte $07   ; 
- - - - - - 0x00BF72 02:BF62: 02        .byte $02   ; 
- D 1 - I - 0x00BF73 02:BF63: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF74 02:BF64: 00        .byte $00   ; 
- D 1 - I - 0x00BF75 02:BF65: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF76 02:BF66: 02        .byte $02   ; 
- D 1 - I - 0x00BF77 02:BF67: 01        .byte $01   ; 
- D 1 - I - 0x00BF78 02:BF68: 10        .byte $10   ; 
- D 1 - I - 0x00BF79 02:BF69: 0B        .byte $0B   ; 
- D 1 - I - 0x00BF7A 02:BF6A: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF7B 02:BF6B: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF7C 02:BF6C: 00        .byte $00   ; 
- D 1 - I - 0x00BF7D 02:BF6D: 04        .byte $04   ; 
- D 1 - I - 0x00BF7E 02:BF6E: 03        .byte $03   ; 
- D 1 - I - 0x00BF7F 02:BF6F: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF80 02:BF70: 00        .byte $00   ; 
- D 1 - I - 0x00BF81 02:BF71: 04        .byte $04   ; 
- D 1 - I - 0x00BF82 02:BF72: 03        .byte $03   ; 
- D 1 - I - 0x00BF83 02:BF73: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF84 02:BF74: 00        .byte $00   ; 
- D 1 - I - 0x00BF85 02:BF75: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF86 02:BF76: 02        .byte $02   ; 
- D 1 - I - 0x00BF87 02:BF77: 01        .byte $01   ; 
- D 1 - I - 0x00BF88 02:BF78: 10        .byte $10   ; 
- D 1 - I - 0x00BF89 02:BF79: 07        .byte $07   ; 
- D 1 - I - 0x00BF8A 02:BF7A: 00        .byte $00   ; 



_off024_BF7B_20:
_off024_BF7B_21:
_off024_BF7B_22:
_off024_BF7B_23:
_off024_BF7B_24:
_off024_BF7B_25:
_off024_BF7B_34:
- D 1 - I - 0x00BF8B 02:BF7B: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF8C 02:BF7C: 05        .byte $05   ; 
- D 1 - I - 0x00BF8D 02:BF7D: 5B        .byte $5B   ; 
- D 1 - I - 0x00BF8E 02:BF7E: 00        .byte $00   ; 
- D 1 - I - 0x00BF8F 02:BF7F: 0B        .byte $0B   ; 
- D 1 - I - 0x00BF90 02:BF80: 38        .byte $38   ; 
- D 1 - I - 0x00BF91 02:BF81: 22        .byte $22   ; 
- D 1 - I - 0x00BF92 02:BF82: 14        .byte $14   ; 
- D 1 - I - 0x00BF93 02:BF83: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF94 02:BF84: 00        .byte $00   ; 
- D 1 - I - 0x00BF95 02:BF85: 01        .byte $01   ; 
- D 1 - I - 0x00BF96 02:BF86: 1E        .byte $1E   ; 
- D 1 - I - 0x00BF97 02:BF87: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF98 02:BF88: 01        .byte $01   ; 
- D 1 - I - 0x00BF99 02:BF89: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF9A 02:BF8A: 02        .byte $02   ; 
- D 1 - I - 0x00BF9B 02:BF8B: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF9C 02:BF8C: 03        .byte $03   ; 
- D 1 - I - 0x00BF9D 02:BF8D: 01        .byte $01   ; 
- D 1 - I - 0x00BF9E 02:BF8E: 60        .byte $60   ; 
- D 1 - I - 0x00BF9F 02:BF8F: 07        .byte $07   ; 
- D 1 - I - 0x00BFA0 02:BF90: 00        .byte $00   ; 



_off024_BF91_26:
_off024_BF91_27:
- D 1 - I - 0x00BFA1 02:BF91: 22        .byte $22   ; 
- D 1 - I - 0x00BFA2 02:BF92: 02        .byte $02   ; 
- D 1 - I - 0x00BFA3 02:BF93: 03        .byte $03   ; 
- D 1 - I - 0x00BFA4 02:BF94: 00        .byte $00   ; 
- D 1 - I - 0x00BFA5 02:BF95: 07        .byte $07   ; 
- D 1 - I - 0x00BFA6 02:BF96: 01        .byte $01   ; 
- D 1 - I - 0x00BFA7 02:BF97: 01        .byte $01   ; 
- D 1 - I - 0x00BFA8 02:BF98: 40        .byte $40   ; 
- D 1 - I - 0x00BFA9 02:BF99: 07        .byte $07   ; 
- D 1 - I - 0x00BFAA 02:BF9A: 01        .byte $01   ; 



_off024_BF9B_28:
_off024_BF9B_29:
- - - - - - 0x00BFAB 02:BF9B: 22        .byte $22   ; 
- - - - - - 0x00BFAC 02:BF9C: 09        .byte $09   ; 
- - - - - - 0x00BFAD 02:BF9D: 07        .byte $07   ; 
- - - - - - 0x00BFAE 02:BF9E: 01        .byte $01   ; 



_off024_BF9F_2A:
- D 1 - I - 0x00BFAF 02:BF9F: 22        .byte $22   ; 
- D 1 - I - 0x00BFB0 02:BFA0: 03        .byte $03   ; 
- D 1 - I - 0x00BFB1 02:BFA1: 03        .byte $03   ; 
- D 1 - I - 0x00BFB2 02:BFA2: 00        .byte $00   ; 
- D 1 - I - 0x00BFB3 02:BFA3: 07        .byte $07   ; 
- D 1 - I - 0x00BFB4 02:BFA4: 01        .byte $01   ; 
- D 1 - I - 0x00BFB5 02:BFA5: 01        .byte $01   ; 
- D 1 - I - 0x00BFB6 02:BFA6: 40        .byte $40   ; 
- D 1 - I - 0x00BFB7 02:BFA7: 07        .byte $07   ; 
- D 1 - I - 0x00BFB8 02:BFA8: 01        .byte $01   ; 
- D 1 - I - 0x00BFB9 02:BFA9: 22        .byte $22   ; 
- D 1 - I - 0x00BFBA 02:BFAA: 13        .byte $13   ; 
- D 1 - I - 0x00BFBB 02:BFAB: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFBC 02:BFAC: 01        .byte $01   ; 
- D 1 - I - 0x00BFBD 02:BFAD: 0B        .byte $0B   ; 
- D 1 - I - 0x00BFBE 02:BFAE: 2C        .byte $2C   ; 
- D 1 - I - 0x00BFBF 02:BFAF: 01        .byte $01   ; 
- D 1 - I - 0x00BFC0 02:BFB0: 14        .byte $14   ; 
- D 1 - I - 0x00BFC1 02:BFB1: 02        .byte $02   ; 
- D 1 - I - 0x00BFC2 02:BFB2: 00        .byte $00   ; 
- - - - - - 0x00BFC3 02:BFB3: FE        .byte $FE   ; 



_off024_BFB4_2C:
- D 1 - I - 0x00BFC4 02:BFB4: 0B        .byte $0B   ; 
- D 1 - I - 0x00BFC5 02:BFB5: 2C        .byte $2C   ; 
- D 1 - I - 0x00BFC6 02:BFB6: 22        .byte $22   ; 
- D 1 - I - 0x00BFC7 02:BFB7: 13        .byte $13   ; 
- D 1 - I - 0x00BFC8 02:BFB8: 01        .byte $01   ; 
- D 1 - I - 0x00BFC9 02:BFB9: 14        .byte $14   ; 
- D 1 - I - 0x00BFCA 02:BFBA: 02        .byte $02   ; 
- D 1 - I - 0x00BFCB 02:BFBB: 00        .byte $00   ; 
- - - - - - 0x00BFCC 02:BFBC: FE        .byte $FE   ; 



_off024_BFBD_2D:
_off024_BFBD_2E:
- D 1 - I - 0x00BFCD 02:BFBD: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFCE 02:BFBE: 01        .byte $01   ; 
- D 1 - I - 0x00BFCF 02:BFBF: 01        .byte $01   ; 
- D 1 - I - 0x00BFD0 02:BFC0: 01        .byte $01   ; 
- D 1 - I - 0x00BFD1 02:BFC1: 07        .byte $07   ; 
- D 1 - I - 0x00BFD2 02:BFC2: 01        .byte $01   ; 
- D 1 - I - 0x00BFD3 02:BFC3: 01        .byte $01   ; 
- D 1 - I - 0x00BFD4 02:BFC4: 04        .byte $04   ; 
- D 1 - I - 0x00BFD5 02:BFC5: 22        .byte $22   ; 
- D 1 - I - 0x00BFD6 02:BFC6: 15        .byte $15   ; 
- D 1 - I - 0x00BFD7 02:BFC7: 20        .byte $20   ; 
- D 1 - I - 0x00BFD8 02:BFC8: 40        .byte $40   ; 
- D 1 - I - 0x00BFD9 02:BFC9: 01        .byte $01   ; 
- D 1 - I - 0x00BFDA 02:BFCA: 18        .byte $18   ; 
- D 1 - I - 0x00BFDB 02:BFCB: 0B        .byte $0B   ; 
- D 1 - I - 0x00BFDC 02:BFCC: 2E        .byte $2E   ; 
- D 1 - I - 0x00BFDD 02:BFCD: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFDE 02:BFCE: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFDF 02:BFCF: 22        .byte $22   ; 
- D 1 - I - 0x00BFE0 02:BFD0: 16        .byte $16   ; 
- D 1 - I - 0x00BFE1 02:BFD1: 01        .byte $01   ; 
- D 1 - I - 0x00BFE2 02:BFD2: 38        .byte $38   ; 
- D 1 - I - 0x00BFE3 02:BFD3: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFE4 02:BFD4: 01        .byte $01   ; 
- D 1 - I - 0x00BFE5 02:BFD5: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFE6 02:BFD6: 02        .byte $02   ; 
- D 1 - I - 0x00BFE7 02:BFD7: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFE8 02:BFD8: 03        .byte $03   ; 
- D 1 - I - 0x00BFE9 02:BFD9: 01        .byte $01   ; 
- D 1 - I - 0x00BFEA 02:BFDA: 40        .byte $40   ; 
- - - - - - 0x00BFEB 02:BFDB: 07        .byte $07   ; 
- - - - - - 0x00BFEC 02:BFDC: 01        .byte $01   ; 



_off024_BFDD_38:
- D 1 - I - 0x00BFED 02:BFDD: 22        .byte $22   ; 
- D 1 - I - 0x00BFEE 02:BFDE: 04        .byte $04   ; 
- D 1 - I - 0x00BFEF 02:BFDF: 07        .byte $07   ; 
- D 1 - I - 0x00BFF0 02:BFE0: 01        .byte $01   ; 



_off024_BFE1_09:
_off024_BFE1_39:
- D 1 - I - 0x00BFF1 02:BFE1: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFF2 02:BFE2: 0B        .byte $0B   ; 
- D 1 - I - 0x00BFF3 02:BFE3: 0B        .byte $0B   ; 
- D 1 - I - 0x00BFF4 02:BFE4: 2E        .byte $2E   ; 
- D 1 - I - 0x00BFF5 02:BFE5: 20        .byte $20   ; 
- D 1 - I - 0x00BFF6 02:BFE6: 86        .byte $86   ; 
- D 1 - I - 0x00BFF7 02:BFE7: 22        .byte $22   ; 
- D 1 - I - 0x00BFF8 02:BFE8: 30        .byte $30   ; 
- D 1 - I - 0x00BFF9 02:BFE9: 57        .byte $57   ; 
- D 1 - I - 0x00BFFA 02:BFEA: 00        .byte $00   ; 
- D 1 - I - 0x00BFFB 02:BFEB: 0C        .byte $0C   ; 
- D 1 - I - 0x00BFFC 02:BFEC: 01        .byte $01   ; 
- D 1 - I - 0x00BFFD 02:BFED: 05        .byte $05   ; 
- D 1 - I - 0x00BFFE 02:BFEE: 09        .byte $09   ; 
- D 1 - I - 0x00BFFF 02:BFEF: 0B        .byte $0B   ; 
- D 1 - I - 0x00C000 02:BFF0: 2C        .byte $2C   ; 
- D 1 - I - 0x00C001 02:BFF1: 22        .byte $22   ; 
- D 1 - I - 0x00C002 02:BFF2: 13        .byte $13   ; 
- D 1 - I - 0x00C003 02:BFF3: 01        .byte $01   ; 
- D 1 - I - 0x00C004 02:BFF4: 14        .byte $14   ; 
- D 1 - I - 0x00C005 02:BFF5: 02        .byte $02   ; 
- D 1 - I - 0x00C006 02:BFF6: 00        .byte $00   ; 
- - - - - - 0x00C007 02:BFF7: FE        .byte $FE   ; 


; bzk garbage
- - - - - - 0x00C008 02:BFF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 05: 0x%04X [%d]", ($C000 - *), ($C000 - *))



