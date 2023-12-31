.segment "BANK_07"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $A000  ; for listing file
; 0x00E010-0x01000F



.export ofs_016_0x00E011_1E
.export ofs_016_0x00E02B_1F
.export ofs_016_0x00E034_24
.export ofs_016_0x00E03D_20
.export ofs_016_0x00E046_21
.export ofs_016_0x00E04F_22
.export ofs_016_0x00E065_11
.export ofs_017_0x00E2F1_3E
.export ofs_017_0x00E2FB_16
.export ofs_017_0x00E33D_17
.export ofs_017_0x00E36F_18
.export ofs_017_0x00E405_19
.export ofs_017_0x00E447_1A
.export ofs_017_0x00E46A_1B
.export ofs_017_0x00E486_1C
.export ofs_017_0x00E49B_1E
.export ofs_017_0x00E4B1_1F
.export ofs_017_0x00E4D2_21
.export ofs_017_0x00E4E7_23
.export ofs_017_0x00E508_24
.export ofs_017_0x00E54C_61
.export ofs_017_0x00E565_25
.export ofs_017_0x00E585_26
.export ofs_017_0x00E59C_27
.export ofs_017_0x00E5C5_28
.export ofs_017_0x00E5F1_29
.export ofs_017_0x00E618_2D
.export ofs_017_0x00E632_2E
.export ofs_017_0x00E670_2F
.export ofs_017_0x00E696_34
.export ofs_017_0x00E6B6_35
.export ofs_017_0x00E6FA_36
.export ofs_017_0x00E70C_37
.export ofs_017_0x00E71C_38
.export ofs_017_0x00E731_39
.export ofs_017_0x00E73E_3A
.export ofs_017_0x00E748_3B
.export ofs_017_0x00E755_3C
.export ofs_017_0x00E755_3D
.export ofs_017_0x00E7DA_40
.export ofs_017_0x00E805_43
.export ofs_017_0x00E81C_44
.export ofs_017_0x00E82B_45
.export ofs_017_0x00E839_46
.export ofs_017_0x00E85F_47
.export ofs_017_0x00E8EA_48
.export ofs_017_0x00E923_5F
.export ofs_017_0x00E996_49
.export ofs_017_0x00EAC9_4C
.export ofs_017_0x00EB0B_4A
.export ofs_017_0x00EB19_4B
.export ofs_017_0x00EB41_4D
.export ofs_017_0x00EB60_4E
.export ofs_017_0x00EB66_50
.export ofs_017_0x00EBBE_53
.export ofs_017_0x00ED01_54
.export ofs_017_0x00ED33_51
.export ofs_017_0x00ED33_52
.export ofs_017_0x00ED33_55
.export ofs_017_0x00EDC9_59
.export ofs_017_0x00EDD7_5A
.export ofs_017_0x00EDE5_5C
.export ofs_017_0x00EE15_5D
.export ofs_017_0x00EE3D_58
.export ofs_017_0x00EE49_5E
.export ofs_017_0x00EE77_60
.export ofs_017_0x00EE82_62
.export ofs_017_0x00EEB0_56
.export ofs_017_0x00EEC9_10
.export ofs_016_0x00F3AF_18
.export ofs_016_0x00F3C2_04
.export ofs_016_0x00F5F1_01
.export ofs_016_0x00F6E2_1C
.export ofs_016_0x00F72A_26
.export ofs_016_0x00F8AA_06
.export ofs_016_0x00F9E2_16
.export ofs_016_0x00FA55_03
.export ofs_016_0x00FB4C_17
.export ofs_016_0x00FBAF_07
.export ofs_016_0x00FC33_0A
.export ofs_016_0x00FCDA_15



; bzk garbage, unused bank id
- D 1 - - - 0x00E010 03:A000: 07        .byte con_prg_bank + $07   ; 



ofs_016_0x00E011_1E:
C - - J - - 0x00E011 03:A001: A9 00     LDA #$00
C - - - - - 0x00E013 03:A003: 20 5E A0  JSR sub_A05E
C - - - - - 0x00E016 03:A006: A0 00     LDY #$00
bra_A008:
C - - - - - 0x00E018 03:A008: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00E01B 03:A00B: 30 0D     BMI bra_A01A_RTS
C - - - - - 0x00E01D 03:A00D: B9 81 AF  LDA tbl_AF81,Y
C - - - - - 0x00E020 03:A010: 85 00     STA ram_0000
C - - - - - 0x00E022 03:A012: B9 82 AF  LDA tbl_AF81 + $01,Y
C - - - - - 0x00E025 03:A015: 85 01     STA ram_0001
C - - - - - 0x00E027 03:A017: 4C BC 81  JMP loc_0x0081CC
bra_A01A_RTS:
C - - - - - 0x00E02A 03:A01A: 60        RTS



ofs_016_0x00E02B_1F:
C - - J - - 0x00E02B 03:A01B: A9 01     LDA #$01
C - - - - - 0x00E02D 03:A01D: 20 5E A0  JSR sub_A05E
C - - - - - 0x00E030 03:A020: A0 02     LDY #$02
C - - - - - 0x00E032 03:A022: D0 E4     BNE bra_A008    ; jmp



ofs_016_0x00E034_24:
C - - J - - 0x00E034 03:A024: A9 02     LDA #$02
C - - - - - 0x00E036 03:A026: 20 5E A0  JSR sub_A05E
C - - - - - 0x00E039 03:A029: A0 04     LDY #$04
C - - - - - 0x00E03B 03:A02B: D0 DB     BNE bra_A008    ; jmp



ofs_016_0x00E03D_20:
C - - J - - 0x00E03D 03:A02D: A9 05     LDA #$05
C - - - - - 0x00E03F 03:A02F: 20 5E A0  JSR sub_A05E
C - - - - - 0x00E042 03:A032: A0 0C     LDY #$0C
C - - - - - 0x00E044 03:A034: D0 D2     BNE bra_A008    ; jmp



ofs_016_0x00E046_21:
C - - J - - 0x00E046 03:A036: A9 03     LDA #$03
C - - - - - 0x00E048 03:A038: 20 5E A0  JSR sub_A05E
C - - - - - 0x00E04B 03:A03B: A0 06     LDY #$06
C - - - - - 0x00E04D 03:A03D: D0 C9     BNE bra_A008    ; jmp



ofs_016_0x00E04F_22:
C - - J - - 0x00E04F 03:A03F: 20 2F B3  JSR sub_B32F
C - - - - - 0x00E052 03:A042: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E055 03:A045: C9 D0     CMP #$D0
C - - - - - 0x00E057 03:A047: 90 03     BCC bra_A04C
; D0+
- - - - - - 0x00E059 03:A049: 20 47 9A  JSR sub_0x009A57
bra_A04C:
C - - - - - 0x00E05C 03:A04C: A9 04     LDA #$04
C - - - - - 0x00E05E 03:A04E: 20 5E A0  JSR sub_A05E
C - - - - - 0x00E061 03:A051: A0 08     LDY #$08
C - - - - - 0x00E063 03:A053: D0 B3     BNE bra_A008    ; jmp



ofs_016_0x00E065_11:
C - - J - - 0x00E065 03:A055: A9 06     LDA #$06
C - - - - - 0x00E067 03:A057: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00E06A 03:A05A: A0 0A     LDY #$0A
C - - - - - 0x00E06C 03:A05C: D0 AA     BNE bra_A008    ; jmp



sub_A05E:
C - - - - - 0x00E06E 03:A05E: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00E071 03:A061: A5 8C     LDA ram_008C
C - - - - - 0x00E073 03:A063: C9 03     CMP #$03
C - - - - - 0x00E075 03:A065: F0 55     BEQ bra_A0BC
C - - - - - 0x00E077 03:A067: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00E07A 03:A06A: F0 50     BEQ bra_A0BC
C - - - - - 0x00E07C 03:A06C: A5 75     LDA ram_stage
C - - - - - 0x00E07E 03:A06E: C9 02     CMP #$02
C - - - - - 0x00E080 03:A070: F0 4A     BEQ bra_A0BC
C - - - - - 0x00E082 03:A072: 29 01     AND #$01
C - - - - - 0x00E084 03:A074: D0 46     BNE bra_A0BC
C - - - - - 0x00E086 03:A076: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x00E089 03:A079: F0 41     BEQ bra_A0BC
C - - - - - 0x00E08B 03:A07B: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00E08E 03:A07E: F0 3C     BEQ bra_A0BC
C - - - - - 0x00E090 03:A080: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00E093 03:A083: 29 7F     AND #$7F
C - - - - - 0x00E095 03:A085: C9 08     CMP #$08
C - - - - - 0x00E097 03:A087: F0 33     BEQ bra_A0BC
C - - - - - 0x00E099 03:A089: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00E09C 03:A08C: D0 2E     BNE bra_A0BC
C - - - - - 0x00E09E 03:A08E: 20 E1 AE  JSR sub_AEE1
C - - - - - 0x00E0A1 03:A091: 90 29     BCC bra_A0BC
C - - - - - 0x00E0A3 03:A093: F0 08     BEQ bra_A09D
C - - - - - 0x00E0A5 03:A095: A0 28     LDY #$28
C - - - - - 0x00E0A7 03:A097: 20 86 A1  JSR sub_A186
C - - - - - 0x00E0AA 03:A09A: 4C BC A0  JMP loc_A0BC
bra_A09D:
C - - - - - 0x00E0AD 03:A09D: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x00E0B0 03:A0A0: B9 25 B3  LDA tbl_B325,Y
C - - - - - 0x00E0B3 03:A0A3: F0 06     BEQ bra_A0AB
C - - - - - 0x00E0B5 03:A0A5: C5 7B     CMP ram_chr_bank + $04
C - - - - - 0x00E0B7 03:A0A7: F0 02     BEQ bra_A0AB
C - - - - - 0x00E0B9 03:A0A9: 85 7B     STA ram_chr_bank + $04
bra_A0AB:
C - - - - - 0x00E0BB 03:A0AB: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x00E0BE 03:A0AE: B9 2A B3  LDA tbl_B32A,Y
C - - - - - 0x00E0C1 03:A0B1: 20 E9 88  JSR sub_0x0088F9
C - - - - - 0x00E0C4 03:A0B4: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00E0C7 03:A0B7: 09 80     ORA #$80
C - - - - - 0x00E0C9 03:A0B9: 9D 0A 07  STA ram_070A_obj,X
bra_A0BC:
loc_A0BC:
C D 1 - - - 0x00E0CC 03:A0BC: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00E0CF 03:A0BF: 0A        ASL
C - - - - - 0x00E0D0 03:A0C0: A8        TAY
C - - - - - 0x00E0D1 03:A0C1: B9 FF B2  LDA tbl_B2FF,Y
C - - - - - 0x00E0D4 03:A0C4: 85 3C     STA ram_003C
C - - - - - 0x00E0D6 03:A0C6: B9 00 B3  LDA tbl_B2FF + $01,Y
C - - - - - 0x00E0D9 03:A0C9: 0A        ASL
C - - - - - 0x00E0DA 03:A0CA: A8        TAY
C - - - - - 0x00E0DB 03:A0CB: B9 D8 A0  LDA tbl_A0D8,Y
C - - - - - 0x00E0DE 03:A0CE: 85 00     STA ram_0000
C - - - - - 0x00E0E0 03:A0D0: B9 D9 A0  LDA tbl_A0D8 + $01,Y
C - - - - - 0x00E0E3 03:A0D3: 85 01     STA ram_0001
C - - - - - 0x00E0E5 03:A0D5: 6C 00 00  JMP (ram_0000)



tbl_A0D8:
- D 1 - - - 0x00E0E8 03:A0D8: E6 A0     .word ofs_012_A0E6_00
- D 1 - - - 0x00E0EA 03:A0DA: 71 A1     .word ofs_012_A171_01
- D 1 - - - 0x00E0EC 03:A0DC: 7F A1     .word ofs_012_A17F_02
- D 1 - - - 0x00E0EE 03:A0DE: CF A1     .word ofs_012_A1CF_03
- D 1 - - - 0x00E0F0 03:A0E0: D8 A1     .word ofs_012_A1D8_04
- D 1 - - - 0x00E0F2 03:A0E2: F8 A1     .word ofs_012_A1F8_05
- D 1 - - - 0x00E0F4 03:A0E4: 30 A1     .word ofs_012_A130_06



ofs_012_A0E6_00:
C - - J - - 0x00E0F6 03:A0E6: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00E0F9 03:A0E9: F0 45     BEQ bra_A130
C - - - - - 0x00E0FB 03:A0EB: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00E0FE 03:A0EE: D0 40     BNE bra_A130
C - - - - - 0x00E100 03:A0F0: 20 99 94  JSR sub_0x0094A9
C - - - - - 0x00E103 03:A0F3: 90 2A     BCC bra_A11F
C - - - - - 0x00E105 03:A0F5: B9 82 06  LDA ram_0682_obj,Y
C - - - - - 0x00E108 03:A0F8: 29 0F     AND #$0F
C - - - - - 0x00E10A 03:A0FA: C9 0D     CMP #$0D
C - - - - - 0x00E10C 03:A0FC: F0 21     BEQ bra_A11F
C - - - - - 0x00E10E 03:A0FE: A5 75     LDA ram_stage
C - - - - - 0x00E110 03:A100: C9 04     CMP #$04
C - - - - - 0x00E112 03:A102: D0 05     BNE bra_A109
C - - - - - 0x00E114 03:A104: AD 40 03  LDA ram_0340
C - - - - - 0x00E117 03:A107: F0 05     BEQ bra_A10E
bra_A109:
C - - - - - 0x00E119 03:A109: DE 96 07  DEC ram_0796_unk,X
C - - - - - 0x00E11C 03:A10C: F0 28     BEQ bra_A136
bra_A10E:
C - - - - - 0x00E11E 03:A10E: 20 F3 8F  JSR sub_0x009003
C - - - - - 0x00E121 03:A111: A0 03     LDY #$03
C - - - - - 0x00E123 03:A113: 20 3E 85  JSR sub_0x00854E
C - - - - - 0x00E126 03:A116: A9 2A     LDA #con_music_2A
C - - - - - 0x00E128 03:A118: 20 D8 95  JSR sub_0x0095E8_play_music
C - - - - - 0x00E12B 03:A11B: A0 03     LDY #$03
C - - - - - 0x00E12D 03:A11D: D0 0E     BNE bra_A12D    ; jmp
bra_A11F:
C - - - - - 0x00E12F 03:A11F: A0 00     LDY #$00
C - - - - - 0x00E131 03:A121: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00E134 03:A124: C9 02     CMP #$02
C - - - - - 0x00E136 03:A126: D0 05     BNE bra_A12D
C - - - - - 0x00E138 03:A128: 8A        TXA
C - - - - - 0x00E139 03:A129: 29 01     AND #$01
C - - - - - 0x00E13B 03:A12B: 0A        ASL
C - - - - - 0x00E13C 03:A12C: A8        TAY
bra_A12D:
C - - - - - 0x00E13D 03:A12D: 20 DD 95  JSR sub_0x0095ED
bra_A130:
loc_A130:
ofs_012_A130_06:
C D 1 - - - 0x00E140 03:A130: A5 3C     LDA ram_003C
C - - - - - 0x00E142 03:A132: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00E145 03:A135: 60        RTS
bra_A136:
C - - - - - 0x00E146 03:A136: 20 F3 8F  JSR sub_0x009003
C - - - - - 0x00E149 03:A139: A0 00     LDY #$00
C - - - - - 0x00E14B 03:A13B: 20 DD 95  JSR sub_0x0095ED
C - - - - - 0x00E14E 03:A13E: A0 1E     LDY #$1E
C - - - - - 0x00E150 03:A140: 20 86 A1  JSR sub_A186
C - - - - - 0x00E153 03:A143: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x00E156 03:A146: A5 75     LDA ram_stage
C - - - - - 0x00E158 03:A148: C9 04     CMP #$04
C - - - - - 0x00E15A 03:A14A: D0 08     BNE bra_A154
C - - - - - 0x00E15C 03:A14C: A5 8D     LDA ram_008D
C - - - - - 0x00E15E 03:A14E: 30 04     BMI bra_A154
C - - - - - 0x00E160 03:A150: A0 02     LDY #$02
C - - - - - 0x00E162 03:A152: D0 09     BNE bra_A15D    ; jmp
bra_A154:
C - - - - - 0x00E164 03:A154: C0 02     CPY #$02
C - - - - - 0x00E166 03:A156: F0 05     BEQ bra_A15D
C - - - - - 0x00E168 03:A158: A9 80     LDA #$80
C - - - - - 0x00E16A 03:A15A: 8D 40 03  STA ram_0340
bra_A15D:
C - - - - - 0x00E16D 03:A15D: B9 6C A1  LDA tbl_A16C,Y
C - - - - - 0x00E170 03:A160: 20 D8 95  JSR sub_0x0095E8_play_music
C - - - - - 0x00E173 03:A163: 20 F2 95  JSR sub_0x009602
C - - - - - 0x00E176 03:A166: A9 00     LDA #$00
C - - - - - 0x00E178 03:A168: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E17B 03:A16B: 60        RTS



tbl_A16C:
- D 1 - - - 0x00E17C 03:A16C: 50        .byte con_music_50   ; 00
- D 1 - - - 0x00E17D 03:A16D: 50        .byte con_music_50   ; 01
- D 1 - - - 0x00E17E 03:A16E: 4A        .byte con_music_4A   ; 02
- D 1 - - - 0x00E17F 03:A16F: 50        .byte con_music_50   ; 03
- - - - - - 0x00E180 03:A170: 50        .byte con_music_50   ; 04



ofs_012_A171_01:
C - - J - - 0x00E181 03:A171: A5 75     LDA ram_stage
C - - - - - 0x00E183 03:A173: F0 04     BEQ bra_A179
C - - - - - 0x00E185 03:A175: C9 04     CMP #$04
C - - - - - 0x00E187 03:A177: D0 03     BNE bra_A17C
bra_A179:
C - - - - - 0x00E189 03:A179: 20 E1 AE  JSR sub_AEE1
bra_A17C:
C - - - - - 0x00E18C 03:A17C: 4C 30 A1  JMP loc_A130



ofs_012_A17F_02:
C - - J - - 0x00E18F 03:A17F: 20 2E AF  JSR sub_AF2E
C - - - - - 0x00E192 03:A182: B0 F8     BCS bra_A17C
C - - - - - 0x00E194 03:A184: A0 00     LDY #$00
bra_A186:
sub_A186:
C - - - - - 0x00E196 03:A186: 84 00     STY ram_0000
; X = 02 03 04
C - - - - - 0x00E198 03:A188: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00E19B 03:A18B: 0A        ASL
C - - - - - 0x00E19C 03:A18C: 18        CLC
C - - - - - 0x00E19D 03:A18D: 65 00     ADC ram_0000
C - - - - - 0x00E19F 03:A18F: A8        TAY
C - - - - - 0x00E1A0 03:A190: B9 9D A1  LDA tbl_A19D,Y
C - - - - - 0x00E1A3 03:A193: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x00E1A6 03:A196: B9 9E A1  LDA tbl_A19D + $01,Y
C - - - - - 0x00E1A9 03:A199: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00E1AC 03:A19C: 60        RTS



tbl_A19D:
; 00
- - - - - - 0x00E1AD 03:A19D: 4E        .byte $4E, $0C   ; 00
- D 1 - - - 0x00E1AF 03:A19F: 2A        .byte $2A, $06   ; 01
- - - - - - 0x00E1B1 03:A1A1: 14        .byte $14, $0F   ; 02
- D 1 - - - 0x00E1B3 03:A1A3: 32        .byte $32, $0C   ; 03
- D 1 - - - 0x00E1B5 03:A1A5: 28        .byte $28, $0C   ; 04
; 0A
- D 1 - - - 0x00E1B7 03:A1A7: 0F        .byte $0F, $0C   ; 00
- - - - - - 0x00E1B9 03:A1A9: 00        .byte $00, $00   ; 01
- - - - - - 0x00E1BB 03:A1AB: 00        .byte $00, $00   ; 02
- - - - - - 0x00E1BD 03:A1AD: 0B        .byte $0B, $06   ; 03
- - - - - - 0x00E1BF 03:A1AF: 00        .byte $00, $00   ; 04
; 14
- D 1 - - - 0x00E1C1 03:A1B1: 53        .byte $53, $05   ; 00
- - - - - - 0x00E1C3 03:A1B3: 00        .byte $00, $00   ; 01
- - - - - - 0x00E1C5 03:A1B5: 00        .byte $00, $00   ; 02
- - - - - - 0x00E1C7 03:A1B7: 4A        .byte $4A, $05   ; 03
- D 1 - - - 0x00E1C9 03:A1B9: 35        .byte $35, $12   ; 04
; 1E
- D 1 - - - 0x00E1CB 03:A1BB: 15        .byte $15, $01   ; 00
- D 1 - - - 0x00E1CD 03:A1BD: 17        .byte $17, $01   ; 01
- D 1 - - - 0x00E1CF 03:A1BF: 19        .byte $19, $01   ; 02
- D 1 - - - 0x00E1D1 03:A1C1: 12        .byte $12, $01   ; 03
- D 1 - - - 0x00E1D3 03:A1C3: 1B        .byte $1B, $01   ; 04
; 28
- D 1 - - - 0x00E1D5 03:A1C5: 0C        .byte $0C, $06   ; 00
- - - - - - 0x00E1D7 03:A1C7: 00        .byte $00, $00   ; 01
- - - - - - 0x00E1D9 03:A1C9: 00        .byte $00, $00   ; 02
- - - - - - 0x00E1DB 03:A1CB: 00        .byte $00, $00   ; 03
- D 1 - - - 0x00E1DD 03:A1CD: 31        .byte $31, $0C   ; 04



ofs_012_A1CF_03:
C - - J - - 0x00E1DF 03:A1CF: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00E1E2 03:A1D2: D0 A8     BNE bra_A17C
C - - - - - 0x00E1E4 03:A1D4: A0 0A     LDY #$0A
C - - - - - 0x00E1E6 03:A1D6: D0 AE     BNE bra_A186    ; jmp



ofs_012_A1D8_04:
C - - J - - 0x00E1E8 03:A1D8: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E1EB 03:A1DB: C9 C0     CMP #$C0
C - - - - - 0x00E1ED 03:A1DD: B0 05     BCS bra_A1E4
C - - - - - 0x00E1EF 03:A1DF: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00E1F2 03:A1E2: F0 98     BEQ bra_A17C
bra_A1E4:
C - - - - - 0x00E1F4 03:A1E4: A5 75     LDA ram_stage
C - - - - - 0x00E1F6 03:A1E6: C9 04     CMP #$04
C - - - - - 0x00E1F8 03:A1E8: F0 05     BEQ bra_A1EF
C - - - - - 0x00E1FA 03:A1EA: AD 40 03  LDA ram_0340
C - - - - - 0x00E1FD 03:A1ED: F0 04     BEQ bra_A1F3
bra_A1EF:
C - - - - - 0x00E1FF 03:A1EF: A0 14     LDY #$14
C - - - - - 0x00E201 03:A1F1: D0 93     BNE bra_A186    ; jmp
bra_A1F3:
- - - - - - 0x00E203 03:A1F3: A9 39     LDA #con_A36F_39
- - - - - - 0x00E205 03:A1F5: 4C 61 A3  JMP loc_A361



ofs_012_A1F8_05:
C - - J - - 0x00E208 03:A1F8: BC C8 07  LDY ram_07C8_unk,X
C - - - - - 0x00E20B 03:A1FB: B9 7B A2  LDA tbl_A27B,Y
C - - - - - 0x00E20E 03:A1FE: A8        TAY
bra_A1FF_loop:
C - - - - - 0x00E20F 03:A1FF: B9 80 A2  LDA tbl_A280,Y
C - - - - - 0x00E212 03:A202: C9 FF     CMP #$FF
C - - - - - 0x00E214 03:A204: F0 5F     BEQ bra_A265
C - - - - - 0x00E216 03:A206: DD 1A 06  CMP ram_obj_animation_lo,X
C - - - - - 0x00E219 03:A209: F0 03     BEQ bra_A20E_match_found
C - - - - - 0x00E21B 03:A20B: C8        INY
C - - - - - 0x00E21C 03:A20C: D0 F1     BNE bra_A1FF_loop    ; jmp always?
bra_A20E_match_found:
C - - - - - 0x00E21E 03:A20E: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E221 03:A211: C9 C0     CMP #$C0
C - - - - - 0x00E223 03:A213: B0 50     BCS bra_A265
; 00-BF
C - - - - - 0x00E225 03:A215: 84 3D     STY ram_003D
C - - - - - 0x00E227 03:A217: B9 C9 A2  LDA tbl_A2C9,Y
C - - - - - 0x00E22A 03:A21A: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00E22D 03:A21D: B0 46     BCS bra_A265
C - - - - - 0x00E22F 03:A21F: 20 6A A2  JSR sub_A26A
C - - - - - 0x00E232 03:A222: 98        TYA
C - - - - - 0x00E233 03:A223: AA        TAX
C - - - - - 0x00E234 03:A224: A5 3D     LDA ram_003D
C - - - - - 0x00E236 03:A226: 0A        ASL
C - - - - - 0x00E237 03:A227: A8        TAY
C - - - - - 0x00E238 03:A228: B9 99 A2  LDA tbl_A299,Y
C - - - - - 0x00E23B 03:A22B: 18        CLC
C - - - - - 0x00E23C 03:A22C: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00E23F 03:A22F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E242 03:A232: 6A        ROR
C - - - - - 0x00E243 03:A233: 59 99 A2  EOR tbl_A299,Y
C - - - - - 0x00E246 03:A236: 2A        ROL
C - - - - - 0x00E247 03:A237: 90 06     BCC bra_A23F
- - - - - - 0x00E249 03:A239: 20 52 9A  JSR sub_0x009A62
- - - - - - 0x00E24C 03:A23C: 4C 65 A2  JMP loc_A265
bra_A23F:
C - - - - - 0x00E24F 03:A23F: B9 9A A2  LDA tbl_A299 + $01,Y
C - - - - - 0x00E252 03:A242: 18        CLC
C - - - - - 0x00E253 03:A243: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00E256 03:A246: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E259 03:A249: A5 3D     LDA ram_003D
C - - - - - 0x00E25B 03:A24B: C9 04     CMP #$04
C - - - - - 0x00E25D 03:A24D: D0 16     BNE bra_A265
C - - - - - 0x00E25F 03:A24F: A9 41     LDA #$41
C - - - - - 0x00E261 03:A251: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00E264 03:A254: B0 0F     BCS bra_A265
C - - - - - 0x00E266 03:A256: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E269 03:A259: 38        SEC
C - - - - - 0x00E26A 03:A25A: E9 20     SBC #$20
C - - - - - 0x00E26C 03:A25C: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00E26F 03:A25F: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E272 03:A262: 99 68 06  STA ram_obj_pos_Y,Y
bra_A265:
loc_A265:
C - - - - - 0x00E275 03:A265: A6 53     LDX ram_0053
C - - - - - 0x00E277 03:A267: 4C 30 A1  JMP loc_A130



sub_A26A:
C - - - - - 0x00E27A 03:A26A: A5 3D     LDA ram_003D
C - - - - - 0x00E27C 03:A26C: C9 0D     CMP #$0D
C - - - - - 0x00E27E 03:A26E: 90 07     BCC bra_A277
C - - - - - 0x00E280 03:A270: BD B2 06  LDA ram_06B2_obj,X
bra_A273:
C - - - - - 0x00E283 03:A273: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00E286 03:A276: 60        RTS
bra_A277:
C - - - - - 0x00E287 03:A277: A9 40     LDA #$40
C - - - - - 0x00E289 03:A279: D0 F8     BNE bra_A273    ; jmp



tbl_A27B:
- D 1 - - - 0x00E28B 03:A27B: 16        .byte $16   ; 00
- D 1 - - - 0x00E28C 03:A27C: 00        .byte $00   ; 01
- D 1 - - - 0x00E28D 03:A27D: 06        .byte $06   ; 02
- D 1 - - - 0x00E28E 03:A27E: 0B        .byte $0B   ; 03
- D 1 - - - 0x00E28F 03:A27F: 11        .byte $11   ; 04



tbl_A280:
; 00
- D 1 - - - 0x00E290 03:A280: 17        .byte $17   ; 
- D 1 - - - 0x00E291 03:A281: 1B        .byte $1B   ; 
- D 1 - - - 0x00E292 03:A282: 0A        .byte $0A   ; 
- D 1 - - - 0x00E293 03:A283: 0E        .byte $0E   ; 
- D 1 - - - 0x00E294 03:A284: 11        .byte $11   ; 
- D 1 - - - 0x00E295 03:A285: FF        .byte $FF   ; 
; 06
- D 1 - - - 0x00E296 03:A286: 36        .byte $36   ; 
- D 1 - - - 0x00E297 03:A287: 3A        .byte $3A   ; 
- D 1 - - - 0x00E298 03:A288: 3F        .byte $3F   ; 
- D 1 - - - 0x00E299 03:A289: 43        .byte $43   ; 
- D 1 - - - 0x00E29A 03:A28A: FF        .byte $FF   ; 
; 0B
- D 1 - - - 0x00E29B 03:A28B: 11        .byte $11   ; 
- D 1 - - - 0x00E29C 03:A28C: 15        .byte $15   ; 
- D 1 - - - 0x00E29D 03:A28D: 01        .byte $01   ; 
- D 1 - - - 0x00E29E 03:A28E: 05        .byte $05   ; 
- D 1 - - - 0x00E29F 03:A28F: 07        .byte $07   ; 
- D 1 - - - 0x00E2A0 03:A290: FF        .byte $FF   ; 
; 11
- D 1 - - - 0x00E2A1 03:A291: 01        .byte $01   ; 
- D 1 - - - 0x00E2A2 03:A292: 05        .byte $05   ; 
- D 1 - - - 0x00E2A3 03:A293: 1B        .byte $1B   ; 
- D 1 - - - 0x00E2A4 03:A294: 20        .byte $20   ; 
- D 1 - - - 0x00E2A5 03:A295: FF        .byte $FF   ; 
; 16
- D 1 - - - 0x00E2A6 03:A296: 0D        .byte $0D   ; 
- D 1 - - - 0x00E2A7 03:A297: 11        .byte $11   ; 
- D 1 - - - 0x00E2A8 03:A298: FF        .byte $FF   ; 



tbl_A299:
- D 1 - - - 0x00E2A9 03:A299: F0        .byte $F0, $24   ; 00
- D 1 - - - 0x00E2AB 03:A29B: 0D        .byte $0D, $24   ; 01
- D 1 - - - 0x00E2AD 03:A29D: F0        .byte $F0, $24   ; 02
- D 1 - - - 0x00E2AF 03:A29F: 10        .byte $10, $24   ; 03
- D 1 - - - 0x00E2B1 03:A2A1: 10        .byte $10, $24   ; 04
- - - - - - 0x00E2B3 03:A2A3: 00        .byte $00, $00   ; 05
- D 1 - - - 0x00E2B5 03:A2A5: F9        .byte $F9, $16   ; 06
- D 1 - - - 0x00E2B7 03:A2A7: 04        .byte $04, $16   ; 07
- D 1 - - - 0x00E2B9 03:A2A9: 05        .byte $05, $1A   ; 08
- D 1 - - - 0x00E2BB 03:A2AB: F8        .byte $F8, $1A   ; 09
- - - - - - 0x00E2BD 03:A2AD: 00        .byte $00, $00   ; 0A
- D 1 - - - 0x00E2BF 03:A2AF: 00        .byte $00, $18   ; 0B
- D 1 - - - 0x00E2C1 03:A2B1: 01        .byte $01, $18   ; 0C
- D 1 - - - 0x00E2C3 03:A2B3: 00        .byte $00, $18   ; 0D
- D 1 - - - 0x00E2C5 03:A2B5: E4        .byte $E4, $F8   ; 0E
- D 1 - - - 0x00E2C7 03:A2B7: 1B        .byte $1B, $F8   ; 0F
- - - - - - 0x00E2C9 03:A2B9: 00        .byte $00, $00   ; 10
- D 1 - - - 0x00E2CB 03:A2BB: E4        .byte $E4, $08   ; 11
- D 1 - - - 0x00E2CD 03:A2BD: 1C        .byte $1C, $08   ; 12
- D 1 - - - 0x00E2CF 03:A2BF: 00        .byte $00, $ED   ; 13
- D 1 - - - 0x00E2D1 03:A2C1: 06        .byte $06, $ED   ; 14
- - - - - - 0x00E2D3 03:A2C3: 00        .byte $00, $00   ; 15
- D 1 - - - 0x00E2D5 03:A2C5: DD        .byte $DD, $F2   ; 16
- D 1 - - - 0x00E2D7 03:A2C7: 23        .byte $23, $F2   ; 17



tbl_A2C9:
- D 1 - - - 0x00E2D9 03:A2C9: 41        .byte $41   ; 00
- D 1 - - - 0x00E2DA 03:A2CA: 41        .byte $41   ; 01
- D 1 - - - 0x00E2DB 03:A2CB: 41        .byte $41   ; 02
- D 1 - - - 0x00E2DC 03:A2CC: 41        .byte $41   ; 03
- D 1 - - - 0x00E2DD 03:A2CD: 41        .byte $41   ; 04
- - - - - - 0x00E2DE 03:A2CE: 41        .byte $41   ; 05
- D 1 - - - 0x00E2DF 03:A2CF: D1        .byte $D1   ; 06
- D 1 - - - 0x00E2E0 03:A2D0: D1        .byte $D1   ; 07
- D 1 - - - 0x00E2E1 03:A2D1: D1        .byte $D1   ; 08
- D 1 - - - 0x00E2E2 03:A2D2: D1        .byte $D1   ; 09
- - - - - - 0x00E2E3 03:A2D3: D1        .byte $D1   ; 0A
- D 1 - - - 0x00E2E4 03:A2D4: D1        .byte $D1   ; 0B
- D 1 - - - 0x00E2E5 03:A2D5: D1        .byte $D1   ; 0C
- D 1 - - - 0x00E2E6 03:A2D6: D1        .byte $D1   ; 0D
- D 1 - - - 0x00E2E7 03:A2D7: D1        .byte $D1   ; 0E
- D 1 - - - 0x00E2E8 03:A2D8: D1        .byte $D1   ; 0F
- - - - - - 0x00E2E9 03:A2D9: D1        .byte $D1   ; 10
- D 1 - - - 0x00E2EA 03:A2DA: D1        .byte $D1   ; 11
- D 1 - - - 0x00E2EB 03:A2DB: D1        .byte $D1   ; 12
- D 1 - - - 0x00E2EC 03:A2DC: 11        .byte $11   ; 13
- D 1 - - - 0x00E2ED 03:A2DD: 11        .byte $11   ; 14
- - - - - - 0x00E2EE 03:A2DE: D1        .byte $D1   ; 15
- D 1 - - - 0x00E2EF 03:A2DF: D1        .byte $D1   ; 16
- D 1 - - - 0x00E2F0 03:A2E0: D1        .byte $D1   ; 17



ofs_017_0x00E2F1_3E:
C - - J - - 0x00E2F1 03:A2E1: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E2F4 03:A2E4: 29 80     AND #$80
C - - - - - 0x00E2F6 03:A2E6: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E2F9 03:A2E9: 38        SEC
C - - - - - 0x00E2FA 03:A2EA: 60        RTS



ofs_017_0x00E2FB_16:
C - - J - - 0x00E2FB 03:A2EB: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E2FE 03:A2EE: C9 50     CMP #$50
C - - - - - 0x00E300 03:A2F0: 90 38     BCC bra_A32A
; 50+
C - - - - - 0x00E302 03:A2F2: A9 00     LDA #$00
C - - - - - 0x00E304 03:A2F4: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E307 03:A2F7: A8        TAY
C - - - - - 0x00E308 03:A2F8: 20 12 A3  JSR sub_A312
C - - - - - 0x00E30B 03:A2FB: B0 05     BCS bra_A302
C - - - - - 0x00E30D 03:A2FD: A9 01     LDA #$01
C - - - - - 0x00E30F 03:A2FF: 9D AA 07  STA ram_07AA_unk,X
bra_A302:
C - - - - - 0x00E312 03:A302: C8        INY
C - - - - - 0x00E313 03:A303: 20 12 A3  JSR sub_A312
C - - - - - 0x00E316 03:A306: B0 08     BCS bra_A310
- - - - - - 0x00E318 03:A308: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x00E31B 03:A30B: 09 02     ORA #$02
loc_A30D:
- - - - - - 0x00E31D 03:A30D: 9D AA 07  STA ram_07AA_unk,X
bra_A310:
C - - - - - 0x00E320 03:A310: 38        SEC
C - - - - - 0x00E321 03:A311: 60        RTS



sub_A312:
C - - - - - 0x00E322 03:A312: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E325 03:A315: F0 F9     BEQ bra_A310
C - - - - - 0x00E327 03:A317: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E32A 03:A31A: C9 18     CMP #$18
C - - - - - 0x00E32C 03:A31C: B0 0B     BCS bra_A329_RTS
C - - - - - 0x00E32E 03:A31E: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E331 03:A321: D9 4E 06  CMP ram_obj_pos_X,Y
loc_A324:
C D 1 - - - 0x00E334 03:A324: 6A        ROR
C - - - - - 0x00E335 03:A325: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x00E338 03:A328: 2A        ROL
bra_A329_RTS:
C - - - - - 0x00E339 03:A329: 60        RTS



bra_A32A:
C - - - - - 0x00E33A 03:A32A: 4C 5F A3  JMP loc_A35F



ofs_017_0x00E33D_17:
C - - J - - 0x00E33D 03:A32D: A0 00     LDY #$00
C - - - - - 0x00E33F 03:A32F: 20 4A A3  JSR sub_A34A
C - - - - - 0x00E342 03:A332: B0 08     BCS bra_A33C
C - - - - - 0x00E344 03:A334: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E347 03:A337: 09 04     ORA #$04
C - - - - - 0x00E349 03:A339: 9D AA 07  STA ram_07AA_unk,X
bra_A33C:
C - - - - - 0x00E34C 03:A33C: C8        INY
C - - - - - 0x00E34D 03:A33D: 20 4A A3  JSR sub_A34A
C - - - - - 0x00E350 03:A340: B0 CE     BCS bra_A310
- - - - - - 0x00E352 03:A342: BD AA 07  LDA ram_07AA_unk,X
- - - - - - 0x00E355 03:A345: 09 08     ORA #$08
- - - - - - 0x00E357 03:A347: 4C 0D A3  JMP loc_A30D



sub_A34A:
C - - - - - 0x00E35A 03:A34A: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E35D 03:A34D: F0 C1     BEQ bra_A310
C - - - - - 0x00E35F 03:A34F: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E362 03:A352: C9 18     CMP #$18
C - - - - - 0x00E364 03:A354: B0 D3     BCS bra_A329_RTS
C - - - - - 0x00E366 03:A356: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00E369 03:A359: DD 4E 06  CMP ram_obj_pos_X,X
C - - - - - 0x00E36C 03:A35C: 4C 24 A3  JMP loc_A324



loc_A35F:
ofs_017_0x00E36F_18:
C D 1 J - - 0x00E36F 03:A35F: A5 0A     LDA ram_000A
loc_A361:
sub_A361:
C D 1 - - - 0x00E371 03:A361: 0A        ASL
C - - - - - 0x00E372 03:A362: A8        TAY
C - - - - - 0x00E373 03:A363: B9 70 A3  LDA tbl_A36F + $01,Y
C - - - - - 0x00E376 03:A366: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00E379 03:A369: B9 6F A3  LDA tbl_A36F,Y
C - - - - - 0x00E37C 03:A36C: 4C 10 8C  JMP loc_0x008C20
; bzk optimize, write - 01 values and jump to 0x008C23 instead



tbl_A36F:
; see con_A36F
- D 1 - - - 0x00E37F 03:A36F: 0F        .byte $0F, $06   ; 00
- D 1 - - - 0x00E381 03:A371: 08        .byte $08, $05   ; 01
- D 1 - - - 0x00E383 03:A373: 55        .byte $55, $08   ; 02
- D 1 - - - 0x00E385 03:A375: 49        .byte $49, $02   ; 03
- D 1 - - - 0x00E387 03:A377: 08        .byte $08, $06   ; 04
- D 1 - - - 0x00E389 03:A379: 08        .byte $08, $06   ; 05
- D 1 - - - 0x00E38B 03:A37B: 25        .byte $25, $08   ; 06
- - - - - - 0x00E38D 03:A37D: 35        .byte $35, $06   ; 07
- D 1 - - - 0x00E38F 03:A37F: 11        .byte $11, $06   ; 08
- D 1 - - - 0x00E391 03:A381: 35        .byte $35, $0C   ; 09
- D 1 - - - 0x00E393 03:A383: 3D        .byte $3D, $0C   ; 0A
- D 1 - - - 0x00E395 03:A385: 26        .byte $26, $08   ; 0B
- D 1 - - - 0x00E397 03:A387: 42        .byte $42, $08   ; 0C
- D 1 - - - 0x00E399 03:A389: 5A        .byte $5A, $08   ; 0D
- D 1 - - - 0x00E39B 03:A38B: 02        .byte $02, $0F   ; 0E
- D 1 - - - 0x00E39D 03:A38D: 01        .byte $01, $12   ; 0F
- D 1 - - - 0x00E39F 03:A38F: 08        .byte $08, $02   ; 10
- D 1 - - - 0x00E3A1 03:A391: 0B        .byte $0B, $06   ; 11
- D 1 - - - 0x00E3A3 03:A393: 24        .byte $24, $06   ; 12
- - - - - - 0x00E3A5 03:A395: 2F        .byte $2F, $08   ; 13
- D 1 - - - 0x00E3A7 03:A397: 31        .byte $31, $0C   ; 14
- D 1 - - - 0x00E3A9 03:A399: 3A        .byte $3A, $0C   ; 15
- D 1 - - - 0x00E3AB 03:A39B: 40        .byte $40, $08   ; 16
- D 1 - - - 0x00E3AD 03:A39D: 44        .byte $44, $0C   ; 17
- - - - - - 0x00E3AF 03:A39F: 2F        .byte $2F, $08   ; 18
- D 1 - - - 0x00E3B1 03:A3A1: 03        .byte $03, $12   ; 19
- D 1 - - - 0x00E3B3 03:A3A3: 0C        .byte $0C, $12   ; 1A
- D 1 - - - 0x00E3B5 03:A3A5: 01        .byte $01, $12   ; 1B
- D 1 - - - 0x00E3B7 03:A3A7: 2F        .byte $2F, $0C   ; 1C
- D 1 - - - 0x00E3B9 03:A3A9: 2E        .byte $2E, $06   ; 1D
- - - - - - 0x00E3BB 03:A3AB: 47        .byte $47, $08   ; 1E
- - - - - - 0x00E3BD 03:A3AD: 4C        .byte $4C, $08   ; 1F
- D 1 - - - 0x00E3BF 03:A3AF: 18        .byte $18, $02   ; 20
- D 1 - - - 0x00E3C1 03:A3B1: 23        .byte $23, $06   ; 21
- D 1 - - - 0x00E3C3 03:A3B3: 31        .byte $31, $06   ; 22
- D 1 - - - 0x00E3C5 03:A3B5: 34        .byte $34, $0C   ; 23
- - - - - - 0x00E3C7 03:A3B7: 2A        .byte $2A, $0C   ; 24
- - - - - - 0x00E3C9 03:A3B9: 38        .byte $38, $0C   ; 25
- D 1 - - - 0x00E3CB 03:A3BB: 03        .byte $03, $12   ; 26
- - - - - - 0x00E3CD 03:A3BD: 29        .byte $29, $0C   ; 27
- D 1 - - - 0x00E3CF 03:A3BF: 3F        .byte $3F, $0C   ; 28
- - - - - - 0x00E3D1 03:A3C1: 1A        .byte $1A, $12   ; 29
- D 1 - - - 0x00E3D3 03:A3C3: 2D        .byte $2D, $0C   ; 2A
- - - - - - 0x00E3D5 03:A3C5: 2E        .byte $2E, $0C   ; 2B
- - - - - - 0x00E3D7 03:A3C7: 3A        .byte $3A, $0C   ; 2C
- - - - - - 0x00E3D9 03:A3C9: 40        .byte $40, $0C   ; 2D
- D 1 - - - 0x00E3DB 03:A3CB: 45        .byte $45, $0C   ; 2E
- - - - - - 0x00E3DD 03:A3CD: 45        .byte $45, $0C   ; 2F
- - - - - - 0x00E3DF 03:A3CF: 45        .byte $45, $0C   ; 30
- - - - - - 0x00E3E1 03:A3D1: 45        .byte $45, $0C   ; 31
- D 1 - - - 0x00E3E3 03:A3D3: 47        .byte $47, $0C   ; 32
- D 1 - - - 0x00E3E5 03:A3D5: 19        .byte $19, $02   ; 33
- D 1 - - - 0x00E3E7 03:A3D7: 22        .byte $22, $0C   ; 34
- - - - - - 0x00E3E9 03:A3D9: 49        .byte $49, $0C   ; 35
- D 1 - - - 0x00E3EB 03:A3DB: 49        .byte $49, $0C   ; 36
- D 1 - - - 0x00E3ED 03:A3DD: 15        .byte $15, $06   ; 37
- D 1 - - - 0x00E3EF 03:A3DF: 4B        .byte $4B, $0C   ; 38
- - - - - - 0x00E3F1 03:A3E1: 00        .byte $00, $12   ; 39
- D 1 - - - 0x00E3F3 03:A3E3: 34        .byte $34, $06   ; 3A
- D 1 - - - 0x00E3F5 03:A3E5: 40        .byte $40, $0C   ; 3B
- D 1 - - - 0x00E3F7 03:A3E7: 3D        .byte $3D, $02   ; 3C
- D 1 - - - 0x00E3F9 03:A3E9: 61        .byte $61, $06   ; 3D
- - - - - - 0x00E3FB 03:A3EB: 51        .byte $51, $06   ; 3E
- D 1 - - - 0x00E3FD 03:A3ED: 23        .byte $23, $06   ; 3F
- D 1 - - - 0x00E3FF 03:A3EF: 24        .byte $24, $06   ; 40
- - - - - - 0x00E401 03:A3F1: 25        .byte $25, $0C   ; 41
- D 1 - - - 0x00E403 03:A3F3: 33        .byte $33, $06   ; 42



ofs_017_0x00E405_19:
C - - J - - 0x00E405 03:A3F5: A5 42     LDA ram_btn_hold_1
C - - - - - 0x00E407 03:A3F7: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x00E409 03:A3F9: 29 04     AND #con_btn_Down
C - - - - - 0x00E40B 03:A3FB: D0 15     BNE bra_A412
C - - - - - 0x00E40D 03:A3FD: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E410 03:A400: 29 0F     AND #$0F
C - - - - - 0x00E412 03:A402: A8        TAY
C - - - - - 0x00E413 03:A403: B9 27 A4  LDA tbl_A427,Y
C - - - - - 0x00E416 03:A406: 9D AA 07  STA ram_07AA_unk,X
; bzk optimize, since this table is not used anywhere else,
; you can LDA proper bytes directly without ADC
C - - - - - 0x00E419 03:A409: B9 17 A4  LDA tbl_A417,Y
C - - - - - 0x00E41C 03:A40C: 18        CLC
C - - - - - 0x00E41D 03:A40D: 69 3F     ADC #$3F
; con_A36F_3F   con_A36F_40   con_A36F_41   con_A36F_42
C - - - - - 0x00E41F 03:A40F: 4C 61 A3  JMP loc_A361
bra_A412:
C - - - - - 0x00E422 03:A412: A9 3C     LDA #con_A36F_3C
C - - - - - 0x00E424 03:A414: 4C 61 A3  JMP loc_A361



tbl_A417:
- D 1 - - - 0x00E427 03:A417: 03        .byte $03   ; 00 con_A36F_42
- D 1 - - - 0x00E428 03:A418: 01        .byte $01   ; 01 con_A36F_40
- - - - - - 0x00E429 03:A419: 01        .byte $01   ; 02 con_A36F_40
- - - - - - 0x00E42A 03:A41A: 01        .byte $01   ; 03 con_A36F_40
- D 1 - - - 0x00E42B 03:A41B: 00        .byte $00   ; 04 con_A36F_3F
- - - - - - 0x00E42C 03:A41C: 03        .byte $03   ; 05 con_A36F_42
- - - - - - 0x00E42D 03:A41D: 02        .byte $02   ; 06 con_A36F_41
- - - - - - 0x00E42E 03:A41E: 03        .byte $03   ; 07 con_A36F_42
- - - - - - 0x00E42F 03:A41F: 00        .byte $00   ; 08 con_A36F_3F
- - - - - - 0x00E430 03:A420: 02        .byte $02   ; 09 con_A36F_41
- - - - - - 0x00E431 03:A421: 03        .byte $03   ; 0A con_A36F_42
- - - - - - 0x00E432 03:A422: 03        .byte $03   ; 0B con_A36F_42
- - - - - - 0x00E433 03:A423: 02        .byte $02   ; 0C con_A36F_41
- - - - - - 0x00E434 03:A424: 03        .byte $03   ; 0D con_A36F_42
- - - - - - 0x00E435 03:A425: 03        .byte $03   ; 0E con_A36F_42
- - - - - - 0x00E436 03:A426: 03        .byte $03   ; 0F con_A36F_42



tbl_A427:
- D 1 - - - 0x00E437 03:A427: 00        .byte $00   ; 00
- D 1 - - - 0x00E438 03:A428: 00        .byte $00   ; 01
- - - - - - 0x00E439 03:A429: 01        .byte $01   ; 02
- - - - - - 0x00E43A 03:A42A: 00        .byte $00   ; 03
- D 1 - - - 0x00E43B 03:A42B: 00        .byte $00   ; 04
- - - - - - 0x00E43C 03:A42C: 00        .byte $00   ; 05
- - - - - - 0x00E43D 03:A42D: 00        .byte $00   ; 06
- - - - - - 0x00E43E 03:A42E: 00        .byte $00   ; 07
- - - - - - 0x00E43F 03:A42F: 01        .byte $01   ; 08
- - - - - - 0x00E440 03:A430: 00        .byte $00   ; 09
- - - - - - 0x00E441 03:A431: 00        .byte $00   ; 0A
- - - - - - 0x00E442 03:A432: 00        .byte $00   ; 0B
- - - - - - 0x00E443 03:A433: 00        .byte $00   ; 0C
- - - - - - 0x00E444 03:A434: 00        .byte $00   ; 0D
- - - - - - 0x00E445 03:A435: 00        .byte $00   ; 0E
- - - - - - 0x00E446 03:A436: 00        .byte $00   ; 0F



ofs_017_0x00E447_1A:
C - - J - - 0x00E447 03:A437: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E44A 03:A43A: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E44D 03:A43D: C9 20     CMP #$20
C - - - - - 0x00E44F 03:A43F: 90 09     BCC bra_A44A
; 20+
C - - - - - 0x00E451 03:A441: C9 60     CMP #$60
C - - - - - 0x00E453 03:A443: B0 09     BCS bra_A44E
; 20-5F
C - - - - - 0x00E455 03:A445: A9 3B     LDA #con_A36F_3B
bra_A447:
C - - - - - 0x00E457 03:A447: 4C 61 A3  JMP loc_A361
bra_A44A:
- - - - - - 0x00E45A 03:A44A: A9 3A     LDA #con_A36F_3A
- - - - - - 0x00E45C 03:A44C: D0 F9     BNE bra_A447    ; jmp
bra_A44E:
; 60+
C - - - - - 0x00E45E 03:A44E: C9 80     CMP #$80
C - - - - - 0x00E460 03:A450: B0 04     BCS bra_A456
; 60-7F
C - - - - - 0x00E462 03:A452: A9 3C     LDA #con_A36F_3C
C - - - - - 0x00E464 03:A454: D0 F1     BNE bra_A447    ; jmp
bra_A456:
; 80+
C - - - - - 0x00E466 03:A456: A9 03     LDA #con_A36F_03
C - - - - - 0x00E468 03:A458: D0 ED     BNE bra_A447    ; jmp



ofs_017_0x00E46A_1B:
C - - J - - 0x00E46A 03:A45A: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E46D 03:A45D: 18        CLC
C - - - - - 0x00E46E 03:A45E: 69 18     ADC #$18
C - - - - - 0x00E470 03:A460: C9 30     CMP #$30
C - - - - - 0x00E472 03:A462: B0 3B     BCS bra_A49F
C - - - - - 0x00E474 03:A464: A0 00     LDY #$00
C - - - - - 0x00E476 03:A466: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E479 03:A469: 10 02     BPL bra_A46D
C - - - - - 0x00E47B 03:A46B: A0 80     LDY #$80
bra_A46D:
C - - - - - 0x00E47D 03:A46D: 98        TYA
C - - - - - 0x00E47E 03:A46E: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E481 03:A471: A9 02     LDA #con_A36F_02
C - - - - - 0x00E483 03:A473: 4C 61 A3  JMP loc_A361



ofs_017_0x00E486_1C:
C - - J - - 0x00E486 03:A476: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E489 03:A479: C9 A0     CMP #$A0
C - - - - - 0x00E48B 03:A47B: 90 08     BCC bra_A485
C - - - - - 0x00E48D 03:A47D: A0 3A     LDY #con_A36F_3A
C - - - - - 0x00E48F 03:A47F: A5 29     LDA ram_0029
C - - - - - 0x00E491 03:A481: C9 80     CMP #$80
C - - - - - 0x00E493 03:A483: 90 02     BCC bra_A487
bra_A485:
C - - - - - 0x00E495 03:A485: A0 03     LDY #con_A36F_03
bra_A487:
C - - - - - 0x00E497 03:A487: 98        TYA
C - - - - - 0x00E498 03:A488: 4C 61 A3  JMP loc_A361



ofs_017_0x00E49B_1E:
C - - J - - 0x00E49B 03:A48B: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00E49E 03:A48E: 10 08     BPL bra_A498
C - - - - - 0x00E4A0 03:A490: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E4A3 03:A493: C9 40     CMP #$40
C - - - - - 0x00E4A5 03:A495: 90 EE     BCC bra_A485
C - - - - - 0x00E4A7 03:A497: 60        RTS
bra_A498:
C - - - - - 0x00E4A8 03:A498: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E4AB 03:A49B: C9 C0     CMP #$C0
C - - - - - 0x00E4AD 03:A49D: B0 E6     BCS bra_A485
bra_A49F:
C - - - - - 0x00E4AF 03:A49F: 38        SEC
C - - - - - 0x00E4B0 03:A4A0: 60        RTS



ofs_017_0x00E4B1_1F:
C - - J - - 0x00E4B1 03:A4A1: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00E4B4 03:A4A4: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x00E4B7 03:A4A7: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00E4BA 03:A4AA: 19 B2 A4  ORA tbl_A4B2,Y
C - - - - - 0x00E4BD 03:A4AD: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E4C0 03:A4B0: 38        SEC
C - - - - - 0x00E4C1 03:A4B1: 60        RTS



tbl_A4B2:
- - - - - - 0x00E4C2 03:A4B2: 00        .byte $00   ; 00
- - - - - - 0x00E4C3 03:A4B3: 80        .byte $80   ; 01
- D 1 - - - 0x00E4C4 03:A4B4: 00        .byte $00   ; 02
- - - - - - 0x00E4C5 03:A4B5: 00        .byte $00   ; 03
- - - - - - 0x00E4C6 03:A4B6: C0        .byte $C0   ; 04
- - - - - - 0x00E4C7 03:A4B7: A0        .byte $A0   ; 05
- - - - - - 0x00E4C8 03:A4B8: E0        .byte $E0   ; 06
- - - - - - 0x00E4C9 03:A4B9: E0        .byte $E0   ; 07
- - - - - - 0x00E4CA 03:A4BA: 40        .byte $40   ; 08
- - - - - - 0x00E4CB 03:A4BB: 60        .byte $60   ; 09
- - - - - - 0x00E4CC 03:A4BC: 20        .byte $20   ; 0A
- - - - - - 0x00E4CD 03:A4BD: 20        .byte $20   ; 0B
- - - - - - 0x00E4CE 03:A4BE: 00        .byte $00   ; 0C
- - - - - - 0x00E4CF 03:A4BF: 00        .byte $00   ; 0D
- - - - - - 0x00E4D0 03:A4C0: 00        .byte $00   ; 0E
- - - - - - 0x00E4D1 03:A4C1: 00        .byte $00   ; 0F



ofs_017_0x00E4D2_21:
C - - J - - 0x00E4D2 03:A4C2: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00E4D5 03:A4C5: 30 07     BMI bra_A4CE
C - - - - - 0x00E4D7 03:A4C7: A5 0A     LDA ram_000A
C - - - - - 0x00E4D9 03:A4C9: 8D A1 05  STA ram_05A1
bra_A4CC:
C - - - - - 0x00E4DC 03:A4CC: 18        CLC
C - - - - - 0x00E4DD 03:A4CD: 60        RTS
bra_A4CE:
C - - - - - 0x00E4DE 03:A4CE: AD A1 05  LDA ram_05A1
C - - - - - 0x00E4E1 03:A4D1: C9 01     CMP #$01
C - - - - - 0x00E4E3 03:A4D3: B0 F7     BCS bra_A4CC
C - - - - - 0x00E4E5 03:A4D5: 38        SEC
C - - - - - 0x00E4E6 03:A4D6: 60        RTS



ofs_017_0x00E4E7_23:
C - - J - - 0x00E4E7 03:A4D7: A5 0A     LDA ram_000A
C - - - - - 0x00E4E9 03:A4D9: F0 09     BEQ bra_A4E4
C - - - - - 0x00E4EB 03:A4DB: 10 0C     BPL bra_A4E9
C - - - - - 0x00E4ED 03:A4DD: A9 02     LDA #$02
C - - - - - 0x00E4EF 03:A4DF: 8D 40 03  STA ram_0340
C - - - - - 0x00E4F2 03:A4E2: D0 05     BNE bra_A4E9    ; jmp
bra_A4E4:
C - - - - - 0x00E4F4 03:A4E4: A9 01     LDA #$01
C - - - - - 0x00E4F6 03:A4E6: 8D 40 03  STA ram_0340
bra_A4E9:
C - - - - - 0x00E4F9 03:A4E9: A9 01     LDA #$01
C - - - - - 0x00E4FB 03:A4EB: 85 8C     STA ram_008C
C - - - - - 0x00E4FD 03:A4ED: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x00E500 03:A4F0: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E503 03:A4F3: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00E506 03:A4F6: 38        SEC
C - - - - - 0x00E507 03:A4F7: 60        RTS



ofs_017_0x00E508_24:
C - - J - - 0x00E508 03:A4F8: A5 0A     LDA ram_000A
C - - - - - 0x00E50A 03:A4FA: C9 02     CMP #$02
C - - - - - 0x00E50C 03:A4FC: F0 32     BEQ bra_A530
C - - - - - 0x00E50E 03:A4FE: C9 03     CMP #$03
C - - - - - 0x00E510 03:A500: D0 03     BNE bra_A505
C - - - - - 0x00E512 03:A502: 20 13 A9  JSR sub_A913
bra_A505:
C - - - - - 0x00E515 03:A505: A9 04     LDA #$04
C - - - - - 0x00E517 03:A507: 85 20     STA ram_0020
C - - - - - 0x00E519 03:A509: A9 00     LDA #$00
C - - - - - 0x00E51B 03:A50B: 85 22     STA ram_0022
C - - - - - 0x00E51D 03:A50D: 8D 6E 03  STA ram_036E
C - - - - - 0x00E520 03:A510: 8D 6F 03  STA ram_036F
C - - - - - 0x00E523 03:A513: A9 C0     LDA #$C0
C - - - - - 0x00E525 03:A515: 8D 70 03  STA ram_0370
C - - - - - 0x00E528 03:A518: A0 16     LDY #$16
bra_A51A_loop:
C - - - - - 0x00E52A 03:A51A: A9 00     LDA #$00
C - - - - - 0x00E52C 03:A51C: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00E52F 03:A51F: 99 82 06  STA ram_0682_obj,Y
C - - - - - 0x00E532 03:A522: C8        INY
C - - - - - 0x00E533 03:A523: C0 1A     CPY #$1A
C - - - - - 0x00E535 03:A525: 90 F3     BCC bra_A51A_loop
C - - - - - 0x00E537 03:A527: A5 0A     LDA ram_000A
C - - - - - 0x00E539 03:A529: F0 03     BEQ bra_A52E
C - - - - - 0x00E53B 03:A52B: 20 47 9A  JSR sub_0x009A57
bra_A52E:
C - - - - - 0x00E53E 03:A52E: 38        SEC
C - - - - - 0x00E53F 03:A52F: 60        RTS
bra_A530:
C - - - - - 0x00E540 03:A530: A9 A0     LDA #$A0
C - - - - - 0x00E542 03:A532: 85 AF     STA ram_00AF
C - - - - - 0x00E544 03:A534: A9 00     LDA #$00
C - - - - - 0x00E546 03:A536: 85 AB     STA ram_00AB
C - - - - - 0x00E548 03:A538: 85 AC     STA ram_00AC
C - - - - - 0x00E54A 03:A53A: 38        SEC
C - - - - - 0x00E54B 03:A53B: 60        RTS



ofs_017_0x00E54C_61:
C - - J - - 0x00E54C 03:A53C: A5 63     LDA ram_0063
C - - - - - 0x00E54E 03:A53E: C9 02     CMP #$02
C - - - - - 0x00E550 03:A540: B0 5F     BCS bra_A5A1
C - - - - - 0x00E552 03:A542: A5 64     LDA ram_0064
C - - - - - 0x00E554 03:A544: C9 20     CMP #$20
C - - - - - 0x00E556 03:A546: B0 59     BCS bra_A5A1
C - - - - - 0x00E558 03:A548: A5 60     LDA ram_0060
C - - - - - 0x00E55A 03:A54A: C9 02     CMP #$02
C - - - - - 0x00E55C 03:A54C: B0 53     BCS bra_A5A1
C - - - - - 0x00E55E 03:A54E: A9 01     LDA #$01
C - - - - - 0x00E560 03:A550: 8D 40 03  STA ram_0340
C - - - - - 0x00E563 03:A553: 38        SEC
C - - - - - 0x00E564 03:A554: 60        RTS



ofs_017_0x00E565_25:
C - - J - - 0x00E565 03:A555: A0 00     LDY #$00
C - - - - - 0x00E567 03:A557: 20 6A A5  JSR sub_A56A
C - - - - - 0x00E56A 03:A55A: 90 07     BCC bra_A563
C - - - - - 0x00E56C 03:A55C: C8        INY
C - - - - - 0x00E56D 03:A55D: 20 6A A5  JSR sub_A56A
C - - - - - 0x00E570 03:A560: 90 01     BCC bra_A563
C - - - - - 0x00E572 03:A562: 60        RTS
bra_A563:
C - - - - - 0x00E573 03:A563: 98        TYA
C - - - - - 0x00E574 03:A564: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E577 03:A567: 4C 5F A3  JMP loc_A35F



sub_A56A:
C - - - - - 0x00E57A 03:A56A: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E57D 03:A56D: F0 BF     BEQ bra_A52E
C - - - - - 0x00E57F 03:A56F: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E582 03:A572: C9 18     CMP #$18
C - - - - - 0x00E584 03:A574: 60        RTS



ofs_017_0x00E585_26:
C - - J - - 0x00E585 03:A575: A9 86     LDA #$86
C - - - - - 0x00E587 03:A577: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E58A 03:A57A: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E58D 03:A57D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E590 03:A580: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00E593 03:A583: B0 05     BCS bra_A58A
C - - - - - 0x00E595 03:A585: A9 06     LDA #$06
C - - - - - 0x00E597 03:A587: 9D B2 06  STA ram_06B2_obj,X
bra_A58A:
C - - - - - 0x00E59A 03:A58A: 38        SEC
C - - - - - 0x00E59B 03:A58B: 60        RTS



ofs_017_0x00E59C_27:
C - - J - - 0x00E59C 03:A58C: A4 8C     LDY ram_008C
C - - - - - 0x00E59E 03:A58E: C0 05     CPY #$05
C - - - - - 0x00E5A0 03:A590: 90 13     BCC bra_A5A5
C - - - - - 0x00E5A2 03:A592: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E5A5 03:A595: 18        CLC
C - - - - - 0x00E5A6 03:A596: 69 30     ADC #$30
C - - - - - 0x00E5A8 03:A598: C9 60     CMP #$60
C - - - - - 0x00E5AA 03:A59A: 38        SEC
C - - - - - 0x00E5AB 03:A59B: 60        RTS


; bzk garbage
- - - - - - 0x00E5AC 03:A59C: A9 36     LDA #con_A36F_36



bra_A59E:
- - - - - - 0x00E5AE 03:A59E: 4C 61 A3  JMP loc_A361



bra_A5A1:
C - - - - - 0x00E5B1 03:A5A1: 18        CLC
C - - - - - 0x00E5B2 03:A5A2: 60        RTS



bra_A5A3:
C - - - - - 0x00E5B3 03:A5A3: 38        SEC
C - - - - - 0x00E5B4 03:A5A4: 60        RTS



bra_A5A5:
C - - - - - 0x00E5B5 03:A5A5: A9 03     LDA #$03
C - - - - - 0x00E5B7 03:A5A7: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E5BA 03:A5AA: BC 0A 07  LDY ram_070A_obj,X
C - - - - - 0x00E5BD 03:A5AD: C0 06     CPY #$06
C - - - - - 0x00E5BF 03:A5AF: F0 F2     BEQ bra_A5A3
- - - - - - 0x00E5C1 03:A5B1: A9 20     LDA #con_A36F_20
- - - - - - 0x00E5C3 03:A5B3: D0 E9     BNE bra_A59E    ; jmp



ofs_017_0x00E5C5_28:
C - - J - - 0x00E5C5 03:A5B5: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E5C8 03:A5B8: 20 B5 93  JSR sub_0x0093C4_LSRx3_TAY
C - - - - - 0x00E5CB 03:A5BB: B9 C1 A5  LDA tbl_A5C1,Y
C - - - - - 0x00E5CE 03:A5BE: 4C 61 A3  JMP loc_A361



tbl_A5C1:
- - - - - - 0x00E5D1 03:A5C1: 0B        .byte con_A36F_0B   ; 00
- - - - - - 0x00E5D2 03:A5C2: 0B        .byte con_A36F_0B   ; 01
- - - - - - 0x00E5D3 03:A5C3: 0B        .byte con_A36F_0B   ; 02
- - - - - - 0x00E5D4 03:A5C4: 0B        .byte con_A36F_0B   ; 03
- - - - - - 0x00E5D5 03:A5C5: 0B        .byte con_A36F_0B   ; 04
- - - - - - 0x00E5D6 03:A5C6: 0C        .byte con_A36F_0C   ; 05
- - - - - - 0x00E5D7 03:A5C7: 0C        .byte con_A36F_0C   ; 06
- D 1 - - - 0x00E5D8 03:A5C8: 0B        .byte con_A36F_0B   ; 07
- - - - - - 0x00E5D9 03:A5C9: 09        .byte con_A36F_09   ; 08
- D 1 - - - 0x00E5DA 03:A5CA: 09        .byte con_A36F_09   ; 09
- - - - - - 0x00E5DB 03:A5CB: 0B        .byte con_A36F_0B   ; 0A
- - - - - - 0x00E5DC 03:A5CC: 0B        .byte con_A36F_0B   ; 0B
- - - - - - 0x00E5DD 03:A5CD: 0B        .byte con_A36F_0B   ; 0C
- - - - - - 0x00E5DE 03:A5CE: 0B        .byte con_A36F_0B   ; 0D
- - - - - - 0x00E5DF 03:A5CF: 0A        .byte con_A36F_0A   ; 0E
- - - - - - 0x00E5E0 03:A5D0: 0A        .byte con_A36F_0A   ; 0F
- D 1 - - - 0x00E5E1 03:A5D1: 0A        .byte con_A36F_0A   ; 10
- - - - - - 0x00E5E2 03:A5D2: 0C        .byte con_A36F_0C   ; 11
- D 1 - - - 0x00E5E3 03:A5D3: 0C        .byte con_A36F_0C   ; 12
- D 1 - - - 0x00E5E4 03:A5D4: 0C        .byte con_A36F_0C   ; 13
- - - - - - 0x00E5E5 03:A5D5: 09        .byte con_A36F_09   ; 14
- - - - - - 0x00E5E6 03:A5D6: 09        .byte con_A36F_09   ; 15
- - - - - - 0x00E5E7 03:A5D7: 0A        .byte con_A36F_0A   ; 16
- - - - - - 0x00E5E8 03:A5D8: 0A        .byte con_A36F_0A   ; 17
- - - - - - 0x00E5E9 03:A5D9: 0A        .byte con_A36F_0A   ; 18
- - - - - - 0x00E5EA 03:A5DA: 0C        .byte con_A36F_0C   ; 19
- - - - - - 0x00E5EB 03:A5DB: 0C        .byte con_A36F_0C   ; 1A
- - - - - - 0x00E5EC 03:A5DC: 0B        .byte con_A36F_0B   ; 1B
- - - - - - 0x00E5ED 03:A5DD: 0B        .byte con_A36F_0B   ; 1C
- - - - - - 0x00E5EE 03:A5DE: 0B        .byte con_A36F_0B   ; 1D
- - - - - - 0x00E5EF 03:A5DF: 0B        .byte con_A36F_0B   ; 1E
- - - - - - 0x00E5F0 03:A5E0: 0B        .byte con_A36F_0B   ; 1F



ofs_017_0x00E5F1_29:
C - - J - - 0x00E5F1 03:A5E1: A9 00     LDA #$00
C - - - - - 0x00E5F3 03:A5E3: 20 D1 A7  JSR sub_A7D1
C - - - - - 0x00E5F6 03:A5E6: 90 10     BCC bra_A5F8
C - - - - - 0x00E5F8 03:A5E8: A0 00     LDY #$00
C - - - - - 0x00E5FA 03:A5EA: 20 FD A5  JSR sub_A5FD
C - - - - - 0x00E5FD 03:A5ED: 90 06     BCC bra_A5F5
C - - - - - 0x00E5FF 03:A5EF: C8        INY
C - - - - - 0x00E600 03:A5F0: 20 FD A5  JSR sub_A5FD
C - - - - - 0x00E603 03:A5F3: B0 AE     BCS bra_A5A3
bra_A5F5:
C - - - - - 0x00E605 03:A5F5: 4C 5F A3  JMP loc_A35F
bra_A5F8:
C - - - - - 0x00E608 03:A5F8: A9 3D     LDA #con_A36F_3D
C - - - - - 0x00E60A 03:A5FA: 4C 61 A3  JMP loc_A361



sub_A5FD:
C - - - - - 0x00E60D 03:A5FD: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E610 03:A600: F0 A1     BEQ bra_A5A3
C - - - - - 0x00E612 03:A602: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E615 03:A605: C9 20     CMP #$20
C - - - - - 0x00E617 03:A607: 60        RTS



ofs_017_0x00E618_2D:
C - - J - - 0x00E618 03:A608: A0 00     LDY #$00
C - - - - - 0x00E61A 03:A60A: 20 16 A6  JSR sub_A616
C - - - - - 0x00E61D 03:A60D: 90 E6     BCC bra_A5F5
C - - - - - 0x00E61F 03:A60F: C8        INY
C - - - - - 0x00E620 03:A610: 20 16 A6  JSR sub_A616
C - - - - - 0x00E623 03:A613: 90 E0     BCC bra_A5F5
C - - - - - 0x00E625 03:A615: 60        RTS



sub_A616:
C - - - - - 0x00E626 03:A616: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E629 03:A619: F0 3F     BEQ bra_A65A
C - - - - - 0x00E62B 03:A61B: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E62E 03:A61E: DD 68 06  CMP ram_obj_pos_Y,X
C - - - - - 0x00E631 03:A621: 60        RTS



ofs_017_0x00E632_2E:
C - - J - - 0x00E632 03:A622: A0 00     LDY #$00
C - - - - - 0x00E634 03:A624: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E637 03:A627: F0 33     BEQ bra_A65C
C - - - - - 0x00E639 03:A629: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E63C 03:A62C: 85 0B     STA ram_000B
C - - - - - 0x00E63E 03:A62E: A0 01     LDY #$01
C - - - - - 0x00E640 03:A630: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E643 03:A633: F0 07     BEQ bra_A63C
- - - - - - 0x00E645 03:A635: 20 F4 94  JSR sub_0x009504
- - - - - - 0x00E648 03:A638: C5 0B     CMP ram_000B
- - - - - - 0x00E64A 03:A63A: B0 02     BCS bra_A63E
bra_A63C:
C - - - - - 0x00E64C 03:A63C: A0 00     LDY #$00
bra_A63E:
C - - - - - 0x00E64E 03:A63E: 98        TYA
C - - - - - 0x00E64F 03:A63F: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00E652 03:A642: A9 00     LDA #$00
C - - - - - 0x00E654 03:A644: 85 0B     STA ram_000B
C - - - - - 0x00E656 03:A646: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E659 03:A649: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00E65C 03:A64C: 90 04     BCC bra_A652
C - - - - - 0x00E65E 03:A64E: A9 80     LDA #$80
C - - - - - 0x00E660 03:A650: 85 0B     STA ram_000B
bra_A652:
C - - - - - 0x00E662 03:A652: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00E665 03:A655: 05 0B     ORA ram_000B
C - - - - - 0x00E667 03:A657: 9D B2 06  STA ram_06B2_obj,X
bra_A65A:
C - - - - - 0x00E66A 03:A65A: 38        SEC
C - - - - - 0x00E66B 03:A65B: 60        RTS
bra_A65C:
- - - - - - 0x00E66C 03:A65C: A0 01     LDY #$01
- - - - - - 0x00E66E 03:A65E: D0 DE     BNE bra_A63E    ; jmp



ofs_017_0x00E670_2F:
C - - J - - 0x00E670 03:A660: A0 00     LDY #$00
C - - - - - 0x00E672 03:A662: 20 6E A6  JSR sub_A66E
C - - - - - 0x00E675 03:A665: B0 06     BCS bra_A66D_RTS
- - - - - - 0x00E677 03:A667: C8        INY
- - - - - - 0x00E678 03:A668: 20 6E A6  JSR sub_A66E
- - - - - - 0x00E67B 03:A66B: 90 88     BCC bra_A5F5
bra_A66D_RTS:
C - - - - - 0x00E67D 03:A66D: 60        RTS



sub_A66E:
C - - - - - 0x00E67E 03:A66E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00E681 03:A671: F0 11     BEQ bra_A684
C - - - - - 0x00E683 03:A673: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E686 03:A676: DD 68 06  CMP ram_obj_pos_Y,X
C - - - - - 0x00E689 03:A679: 90 09     BCC bra_A684
C - - - - - 0x00E68B 03:A67B: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E68E 03:A67E: C9 20     CMP #$20
C - - - - - 0x00E690 03:A680: B0 02     BCS bra_A684
bra_A682:
C - - - - - 0x00E692 03:A682: 38        SEC
C - - - - - 0x00E693 03:A683: 60        RTS
bra_A684:
C - - - - - 0x00E694 03:A684: 18        CLC
C - - - - - 0x00E695 03:A685: 60        RTS



ofs_017_0x00E696_34:
C - - J - - 0x00E696 03:A686: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00E699 03:A689: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E69C 03:A68C: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x00E69F 03:A68F: B0 0E     BCS bra_A69F
C - - - - - 0x00E6A1 03:A691: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00E6A4 03:A694: C9 40     CMP #$40
C - - - - - 0x00E6A6 03:A696: B0 07     BCS bra_A69F
C - - - - - 0x00E6A8 03:A698: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E6AB 03:A69B: C9 30     CMP #$30
C - - - - - 0x00E6AD 03:A69D: 90 E3     BCC bra_A682
bra_A69F:
loc_A69F:
C D 1 - - - 0x00E6AF 03:A69F: 98        TYA
C - - - - - 0x00E6B0 03:A6A0: 9D AA 07  STA ram_07AA_unk,X
bra_A6A3:
C - - - - - 0x00E6B3 03:A6A3: 4C 5F A3  JMP loc_A35F



ofs_017_0x00E6B6_35:
C - - J - - 0x00E6B6 03:A6A6: 20 C9 A6  JSR sub_A6C9
C - - - - - 0x00E6B9 03:A6A9: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00E6BC 03:A6AC: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00E6BF 03:A6AF: F0 0D     BEQ bra_A6BE
C - - - - - 0x00E6C1 03:A6B1: C9 08     CMP #$08
C - - - - - 0x00E6C3 03:A6B3: F0 09     BEQ bra_A6BE
C - - - - - 0x00E6C5 03:A6B5: 90 09     BCC bra_A6C0
C - - - - - 0x00E6C7 03:A6B7: A0 00     LDY #$00
C - - - - - 0x00E6C9 03:A6B9: 20 EA A6  JSR sub_A6EA
C - - - - - 0x00E6CC 03:A6BC: 90 E5     BCC bra_A6A3
bra_A6BE:
C - - - - - 0x00E6CE 03:A6BE: 38        SEC
C - - - - - 0x00E6CF 03:A6BF: 60        RTS
bra_A6C0:
C - - - - - 0x00E6D0 03:A6C0: A0 02     LDY #$02
C - - - - - 0x00E6D2 03:A6C2: 20 EA A6  JSR sub_A6EA
C - - - - - 0x00E6D5 03:A6C5: B0 DC     BCS bra_A6A3
C - - - - - 0x00E6D7 03:A6C7: 38        SEC
C - - - - - 0x00E6D8 03:A6C8: 60        RTS



sub_A6C9:
C - - - - - 0x00E6D9 03:A6C9: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E6DC 03:A6CC: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E6DF 03:A6CF: DD 68 06  CMP ram_obj_pos_Y,X
C - - - - - 0x00E6E2 03:A6D2: B0 07     BCS bra_A6DB
C - - - - - 0x00E6E4 03:A6D4: A9 C3     LDA #$C3
C - - - - - 0x00E6E6 03:A6D6: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E6E9 03:A6D9: 38        SEC
C - - - - - 0x00E6EA 03:A6DA: 60        RTS
bra_A6DB:
C - - - - - 0x00E6EB 03:A6DB: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00E6EE 03:A6DE: 85 90     STA ram_0090
C - - - - - 0x00E6F0 03:A6E0: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00E6F3 03:A6E3: 85 91     STA ram_0091
C - - - - - 0x00E6F5 03:A6E5: 20 F5 91  JSR sub_0x009205
bra_A6E8:
C - - - - - 0x00E6F8 03:A6E8: 38        SEC
C - - - - - 0x00E6F9 03:A6E9: 60        RTS



sub_A6EA:
ofs_017_0x00E6FA_36:
C - - - - - 0x00E6FA 03:A6EA: A5 01     LDA ram_0001
C - - - - - 0x00E6FC 03:A6EC: D9 F9 A6  CMP tbl_A6F8 + $01,Y
C - - - - - 0x00E6FF 03:A6EF: F0 01     BEQ bra_A6F2
C - - - - - 0x00E701 03:A6F1: 60        RTS
bra_A6F2:
C - - - - - 0x00E702 03:A6F2: A5 00     LDA ram_0000
C - - - - - 0x00E704 03:A6F4: D9 F8 A6  CMP tbl_A6F8,Y
C - - - - - 0x00E707 03:A6F7: 60        RTS



tbl_A6F8:
- D 1 - - - 0x00E708 03:A6F8: 08        .byte $08, $04   ; 00
- D 1 - - - 0x00E70A 03:A6FA: 28        .byte $28, $04   ; 02



ofs_017_0x00E70C_37:
C - - J - - 0x00E70C 03:A6FC: A0 00     LDY #$00
C - - - - - 0x00E70E 03:A6FE: 20 6E A6  JSR sub_A66E
C - - - - - 0x00E711 03:A701: B0 06     BCS bra_A709
C - - - - - 0x00E713 03:A703: C8        INY
C - - - - - 0x00E714 03:A704: 20 6E A6  JSR sub_A66E
C - - - - - 0x00E717 03:A707: 90 DF     BCC bra_A6E8
bra_A709:
C - - - - - 0x00E719 03:A709: 4C 9F A6  JMP loc_A69F



ofs_017_0x00E71C_38:
C - - J - - 0x00E71C 03:A70C: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E71F 03:A70F: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00E722 03:A712: C9 10     CMP #$10
C - - - - - 0x00E724 03:A714: A0 00     LDY #$00
C - - - - - 0x00E726 03:A716: 90 01     BCC bra_A719
C - - - - - 0x00E728 03:A718: C8        INY ; 01
bra_A719:
C - - - - - 0x00E729 03:A719: B9 1F A7  LDA tbl_A71F,Y
C - - - - - 0x00E72C 03:A71C: 4C 61 A3  JMP loc_A361



tbl_A71F:
- D 1 - - - 0x00E72F 03:A71F: 15        .byte con_A36F_15   ; 00
- D 1 - - - 0x00E730 03:A720: 16        .byte con_A36F_16   ; 01



ofs_017_0x00E731_39:
- - - - - - 0x00E731 03:A721: BC AA 07  LDY ram_07AA_unk,X
- - - - - - 0x00E734 03:A724: 20 F4 94  JSR sub_0x009504
- - - - - - 0x00E737 03:A727: C9 90     CMP #$90
- - - - - - 0x00E739 03:A729: 90 BD     BCC bra_A6E8
; 90+
bra_A72B:
C - - - - - 0x00E73B 03:A72B: 4C 9F A6  JMP loc_A69F



ofs_017_0x00E73E_3A:
C - - J - - 0x00E73E 03:A72E: A4 8C     LDY ram_008C
C - - - - - 0x00E740 03:A730: B9 36 A7  LDA tbl_A736,Y
C - - - - - 0x00E743 03:A733: 4C 61 A3  JMP loc_A361



tbl_A736:
- D 1 - - - 0x00E746 03:A736: 19        .byte con_A36F_19   ; 00
- - - - - - 0x00E747 03:A737: 00        .byte con_A36F_00   ; 01



ofs_017_0x00E748_3B:
C - - J - - 0x00E748 03:A738: A9 00     LDA #$00
C - - - - - 0x00E74A 03:A73A: 85 8D     STA ram_008D
C - - - - - 0x00E74C 03:A73C: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E74F 03:A73F: C9 0E     CMP #$0E
C - - - - - 0x00E751 03:A741: B0 E8     BCS bra_A72B
C - - - - - 0x00E753 03:A743: 38        SEC
C - - - - - 0x00E754 03:A744: 60        RTS



ofs_017_0x00E755_3C:
ofs_017_0x00E755_3D:
C - - J - - 0x00E755 03:A745: 20 1D AD  JSR sub_AD1D
C - - - - - 0x00E758 03:A748: B0 54     BCS bra_A79E
C - - - - - 0x00E75A 03:A74A: A9 02     LDA #$02
C - - - - - 0x00E75C 03:A74C: 20 72 93  JSR sub_0x009382
C - - - - - 0x00E75F 03:A74F: B0 4D     BCS bra_A79E
C - - - - - 0x00E761 03:A751: 84 91     STY ram_0091
C - - - - - 0x00E763 03:A753: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E766 03:A756: 0A        ASL
C - - - - - 0x00E767 03:A757: A8        TAY
C - - - - - 0x00E768 03:A758: B9 AE A7  LDA tbl_A7AE,Y
C - - - - - 0x00E76B 03:A75B: 38        SEC
C - - - - - 0x00E76C 03:A75C: E5 61     SBC ram_0061
C - - - - - 0x00E76E 03:A75E: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E771 03:A761: B9 AF A7  LDA tbl_A7AE + $01,Y
C - - - - - 0x00E774 03:A764: 38        SEC
C - - - - - 0x00E775 03:A765: E5 64     SBC ram_0064
C - - - - - 0x00E777 03:A767: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E77A 03:A76A: A4 91     LDY ram_0091
C - - - - - 0x00E77C 03:A76C: A9 92     LDA #$92
C - - - - - 0x00E77E 03:A76E: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x00E781 03:A771: 98        TYA
C - - - - - 0x00E782 03:A772: AA        TAX
C - - - - - 0x00E783 03:A773: A0 07     LDY #$07
C - - - - - 0x00E785 03:A775: 29 01     AND #$01
C - - - - - 0x00E787 03:A777: D0 01     BNE bra_A77A
C - - - - - 0x00E789 03:A779: C8        INY ; 08
bra_A77A:
C - - - - - 0x00E78A 03:A77A: 98        TYA
C - - - - - 0x00E78B 03:A77B: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x00E78E 03:A77E: A9 12     LDA #$12
C - - - - - 0x00E790 03:A780: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00E793 03:A783: A9 00     LDA #$00
C - - - - - 0x00E795 03:A785: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E798 03:A788: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00E79B 03:A78B: A6 53     LDX ram_0053
C - - - - - 0x00E79D 03:A78D: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00E7A0 03:A790: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E7A3 03:A793: B9 A0 A7  LDA tbl_A7A0,Y
C - - - - - 0x00E7A6 03:A796: 20 0E FC  JSR sub_0x01FC1E
C - - - - - 0x00E7A9 03:A799: FE AA 07  INC ram_07AA_unk,X
C - - - - - 0x00E7AC 03:A79C: 38        SEC
C - - - - - 0x00E7AD 03:A79D: 60        RTS
bra_A79E:
C - - - - - 0x00E7AE 03:A79E: 18        CLC
C - - - - - 0x00E7AF 03:A79F: 60        RTS



tbl_A7A0:
- D 1 - - - 0x00E7B0 03:A7A0: 78        .byte $78   ; 00
- D 1 - - - 0x00E7B1 03:A7A1: 78        .byte $78   ; 01
- D 1 - - - 0x00E7B2 03:A7A2: 7D        .byte $7D   ; 02
- D 1 - - - 0x00E7B3 03:A7A3: 7D        .byte $7D   ; 03
- D 1 - - - 0x00E7B4 03:A7A4: 7E        .byte $7E   ; 04
- D 1 - - - 0x00E7B5 03:A7A5: 7E        .byte $7E   ; 05
- D 1 - - - 0x00E7B6 03:A7A6: 78        .byte $78   ; 06
- D 1 - - - 0x00E7B7 03:A7A7: 78        .byte $78   ; 07
- D 1 - - - 0x00E7B8 03:A7A8: 7D        .byte $7D   ; 08
- D 1 - - - 0x00E7B9 03:A7A9: 7D        .byte $7D   ; 09
- D 1 - - - 0x00E7BA 03:A7AA: 7E        .byte $7E   ; 0A
- D 1 - - - 0x00E7BB 03:A7AB: 7E        .byte $7E   ; 0B
- D 1 - - - 0x00E7BC 03:A7AC: 7C        .byte $7C   ; 0C
- D 1 - - - 0x00E7BD 03:A7AD: 7C        .byte $7C   ; 0D



tbl_A7AE:
- D 1 - - - 0x00E7BE 03:A7AE: 30        .byte $30, $01   ; 00
- D 1 - - - 0x00E7C0 03:A7B0: 30        .byte $30, $21   ; 01
- D 1 - - - 0x00E7C2 03:A7B2: 50        .byte $50, $01   ; 02
- D 1 - - - 0x00E7C4 03:A7B4: 50        .byte $50, $21   ; 03
- D 1 - - - 0x00E7C6 03:A7B6: 70        .byte $70, $01   ; 04
- D 1 - - - 0x00E7C8 03:A7B8: 70        .byte $70, $21   ; 05
- D 1 - - - 0x00E7CA 03:A7BA: 90        .byte $90, $01   ; 06
- D 1 - - - 0x00E7CC 03:A7BC: 90        .byte $90, $21   ; 07
- D 1 - - - 0x00E7CE 03:A7BE: F0        .byte $F0, $01   ; 08
- D 1 - - - 0x00E7D0 03:A7C0: F0        .byte $F0, $21   ; 09
- D 1 - - - 0x00E7D2 03:A7C2: D0        .byte $D0, $01   ; 0A
- D 1 - - - 0x00E7D4 03:A7C4: D0        .byte $D0, $21   ; 0B
- D 1 - - - 0x00E7D6 03:A7C6: B0        .byte $B0, $01   ; 0C
- D 1 - - - 0x00E7D8 03:A7C8: B0        .byte $B0, $21   ; 0D



ofs_017_0x00E7DA_40:
C - - J - - 0x00E7DA 03:A7CA: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00E7DD 03:A7CD: 30 05     BMI bra_A7D4
C - - - - - 0x00E7DF 03:A7CF: A5 0A     LDA ram_000A
sub_A7D1:
C - - - - - 0x00E7E1 03:A7D1: 9D AA 07  STA ram_07AA_unk,X
bra_A7D4:
C - - - - - 0x00E7E4 03:A7D4: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00E7E7 03:A7D7: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00E7EA 03:A7DA: 0A        ASL
C - - - - - 0x00E7EB 03:A7DB: A8        TAY
C - - - - - 0x00E7EC 03:A7DC: A5 01     LDA ram_0001
C - - - - - 0x00E7EE 03:A7DE: D9 F2 A7  CMP tbl_A7F1 + $01,Y
C - - - - - 0x00E7F1 03:A7E1: F0 06     BEQ bra_A7E9
loc_A7E3:
C D 1 - - - 0x00E7F3 03:A7E3: 6A        ROR
C - - - - - 0x00E7F4 03:A7E4: 5D AA 07  EOR ram_07AA_unk,X
C - - - - - 0x00E7F7 03:A7E7: 2A        ROL
bra_A7E8_RTS:
C - - - - - 0x00E7F8 03:A7E8: 60        RTS
bra_A7E9:
C - - - - - 0x00E7F9 03:A7E9: A5 00     LDA ram_0000
C - - - - - 0x00E7FB 03:A7EB: D9 F1 A7  CMP tbl_A7F1,Y
C - - - - - 0x00E7FE 03:A7EE: 4C E3 A7  JMP loc_A7E3



tbl_A7F1:
- D 1 - - - 0x00E801 03:A7F1: 4D        .byte $4D, $00   ; 00
- - - - - - 0x00E803 03:A7F3: D0        .byte $D0, $00   ; 01



ofs_017_0x00E805_43:
C - - J - - 0x00E805 03:A7F5: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E808 03:A7F8: 30 0D     BMI bra_A807
C - - - - - 0x00E80A 03:A7FA: A0 00     LDY #$00
C - - - - - 0x00E80C 03:A7FC: 20 6E A6  JSR sub_A66E
C - - - - - 0x00E80F 03:A7FF: B0 E7     BCS bra_A7E8_RTS
C - - - - - 0x00E811 03:A801: C8        INY
C - - - - - 0x00E812 03:A802: 20 6E A6  JSR sub_A66E
C - - - - - 0x00E815 03:A805: B0 E1     BCS bra_A7E8_RTS
bra_A807:
C - - - - - 0x00E817 03:A807: A5 0A     LDA ram_000A
loc_A809:
sub_A809:
; bzk optimize
C D 1 - - - 0x00E819 03:A809: 4C 10 8C  JMP loc_0x008C20



ofs_017_0x00E81C_44:
C - - J - - 0x00E81C 03:A80C: A5 8C     LDA ram_008C
C - - - - - 0x00E81E 03:A80E: C9 05     CMP #$05
C - - - - - 0x00E820 03:A810: B0 04     BCS bra_A816
; 00-04
C - - - - - 0x00E822 03:A812: A9 21     LDA #con_A36F_21
C - - - - - 0x00E824 03:A814: D0 02     BNE bra_A818    ; jmp
bra_A816:
C - - - - - 0x00E826 03:A816: A9 36     LDA #con_A36F_36
bra_A818:
C - - - - - 0x00E828 03:A818: 4C 61 A3  JMP loc_A361



ofs_017_0x00E82B_45:
C - - J - - 0x00E82B 03:A81B: A4 8C     LDY ram_008C
C - - - - - 0x00E82D 03:A81D: B9 23 A8  LDA tbl_A823,Y
C - - - - - 0x00E830 03:A820: 4C 61 A3  JMP loc_A361



tbl_A823:
- - - - - - 0x00E833 03:A823: 37        .byte con_A36F_37   ; 00
- D 1 - - - 0x00E834 03:A824: 37        .byte con_A36F_37   ; 01
- - - - - - 0x00E835 03:A825: 2F        .byte con_A36F_2F   ; 02
- - - - - - 0x00E836 03:A826: 30        .byte con_A36F_30   ; 03
- D 1 - - - 0x00E837 03:A827: 37        .byte con_A36F_37   ; 04
- - - - - - 0x00E838 03:A828: 20        .byte con_A36F_20   ; 05



ofs_017_0x00E839_46:
C - - J - - 0x00E839 03:A829: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x00E83C 03:A82C: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x00E83F 03:A82F: A4 8C     LDY ram_008C
C - - - - - 0x00E841 03:A831: B9 49 A8  LDA tbl_A849,Y
C - - - - - 0x00E844 03:A834: D0 0E     BNE bra_A844
C - - - - - 0x00E846 03:A836: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E849 03:A839: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00E84C 03:A83C: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00E84F 03:A83F: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00E852 03:A842: 38        SEC
C - - - - - 0x00E853 03:A843: 60        RTS
bra_A844:
C - - - - - 0x00E854 03:A844: A5 0A     LDA ram_000A
C - - - - - 0x00E856 03:A846: 4C 09 A8  JMP loc_A809



tbl_A849:
- D 1 - - - 0x00E859 03:A849: 00        .byte $00   ; 00
- D 1 - - - 0x00E85A 03:A84A: 00        .byte $00   ; 01
- D 1 - - - 0x00E85B 03:A84B: 00        .byte $00   ; 02
- - - - - - 0x00E85C 03:A84C: 00        .byte $00   ; 03
- D 1 - - - 0x00E85D 03:A84D: 00        .byte $00   ; 04
- D 1 - - - 0x00E85E 03:A84E: 01        .byte $01   ; 05



ofs_017_0x00E85F_47:
C - - J - - 0x00E85F 03:A84F: 20 47 9A  JSR sub_0x009A57
C - - - - - 0x00E862 03:A852: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E865 03:A855: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E868 03:A858: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E86B 03:A85B: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00E86E 03:A85E: A0 00     LDY #$00
bra_A860_loop:
C - - - - - 0x00E870 03:A860: A2 02     LDX #$02
C - - - - - 0x00E872 03:A862: 20 63 B3  JSR sub_B363
C - - - - - 0x00E875 03:A865: B0 58     BCS bra_A8BF
C - - - - - 0x00E877 03:A867: A2 04     LDX #$04
bra_A869_loop:
C - - - - - 0x00E879 03:A869: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00E87C 03:A86C: D0 51     BNE bra_A8BF
C - - - - - 0x00E87E 03:A86E: E8        INX
C - - - - - 0x00E87F 03:A86F: E0 0A     CPX #$0A
C - - - - - 0x00E881 03:A871: 90 F6     BCC bra_A869_loop
C - - - - - 0x00E883 03:A873: A2 02     LDX #$02
C - - - - - 0x00E885 03:A875: A9 12     LDA #$12
C - - - - - 0x00E887 03:A877: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00E88A 03:A87A: 98        TYA
C - - - - - 0x00E88B 03:A87B: 4A        LSR
C - - - - - 0x00E88C 03:A87C: A8        TAY
C - - - - - 0x00E88D 03:A87D: C8        INY
C - - - - - 0x00E88E 03:A87E: B9 D4 A8  LDA tbl_A8D5 - $01,Y
C - - - - - 0x00E891 03:A881: F0 1A     BEQ bra_A89D
C - - - - - 0x00E893 03:A883: C9 02     CMP #$02
C - - - - - 0x00E895 03:A885: D0 12     BNE bra_A899
C - - - - - 0x00E897 03:A887: A9 08     LDA #$08
C - - - - - 0x00E899 03:A889: 85 00     STA ram_0000
C - - - - - 0x00E89B 03:A88B: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E89E 03:A88E: 10 04     BPL bra_A894
C - - - - - 0x00E8A0 03:A890: A9 F8     LDA #$F8
C - - - - - 0x00E8A2 03:A892: 85 00     STA ram_0000
bra_A894:
C - - - - - 0x00E8A4 03:A894: A5 00     LDA ram_0000
C - - - - - 0x00E8A6 03:A896: 9D 4E 06  STA ram_obj_pos_X,X
bra_A899:
C - - - - - 0x00E8A9 03:A899: C4 8C     CPY ram_008C
C - - - - - 0x00E8AB 03:A89B: F0 2D     BEQ bra_A8CA
bra_A89D:
C - - - - - 0x00E8AD 03:A89D: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00E8B0 03:A8A0: 18        CLC
C - - - - - 0x00E8B1 03:A8A1: 69 18     ADC #$18
C - - - - - 0x00E8B3 03:A8A3: C9 30     CMP #$30
C - - - - - 0x00E8B5 03:A8A5: B0 23     BCS bra_A8CA
C - - - - - 0x00E8B7 03:A8A7: B9 CE A8  LDA tbl_A8CF - $01,Y
C - - - - - 0x00E8BA 03:A8AA: 84 8C     STY ram_008C
C - - - - - 0x00E8BC 03:A8AC: 20 61 A3  JSR sub_A361
C - - - - - 0x00E8BF 03:A8AF: A9 16     LDA #$16
C - - - - - 0x00E8C1 03:A8B1: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E8C4 03:A8B4: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00E8C7 03:A8B7: 29 0F     AND #$0F
C - - - - - 0x00E8C9 03:A8B9: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00E8CC 03:A8BC: 4C CA A8  JMP loc_A8CA
bra_A8BF:
C - - - - - 0x00E8CF 03:A8BF: C8        INY
C - - - - - 0x00E8D0 03:A8C0: C8        INY
C - - - - - 0x00E8D1 03:A8C1: C0 0A     CPY #$0A
C - - - - - 0x00E8D3 03:A8C3: 90 9B     BCC bra_A860_loop
C - - - - - 0x00E8D5 03:A8C5: A9 08     LDA #$08
C - - - - - 0x00E8D7 03:A8C7: 9D 68 06  STA ram_obj_pos_Y,X
bra_A8CA:
loc_A8CA:
C D 1 - - - 0x00E8DA 03:A8CA: A6 53     LDX ram_0053
C - - - - - 0x00E8DC 03:A8CC: 38        SEC
C - - - - - 0x00E8DD 03:A8CD: 60        RTS


; bzk garbage
- - - - - - 0x00E8DE 03:A8CE: 2D        .byte $2D   ; 



tbl_A8CF:
- D 1 - - - 0x00E8DF 03:A8CF: 2A        .byte con_A36F_2A   ; 00
- D 1 - - - 0x00E8E0 03:A8D0: 28        .byte con_A36F_28   ; 02
- - - - - - 0x00E8E1 03:A8D1: 2C        .byte con_A36F_2C   ; 04
- D 1 - - - 0x00E8E2 03:A8D2: 2A        .byte con_A36F_2A   ; 06
- - - - - - 0x00E8E3 03:A8D3: 32        .byte con_A36F_32   ; 08



; bzk garbage
- - - - - - 0x00E8E4 03:A8D4: 01        .byte $01   ; 



tbl_A8D5:
- D 1 - - - 0x00E8E5 03:A8D5: 01        .byte $01   ; 00
- D 1 - - - 0x00E8E6 03:A8D6: 01        .byte $01   ; 02
- D 1 - - - 0x00E8E7 03:A8D7: 01        .byte $01   ; 04
- D 1 - - - 0x00E8E8 03:A8D8: 02        .byte $02   ; 06
- - - - - - 0x00E8E9 03:A8D9: 01        .byte $01   ; 08



ofs_017_0x00E8EA_48:
C - - J - - 0x00E8EA 03:A8DA: A5 8D     LDA ram_008D
C - - - - - 0x00E8EC 03:A8DC: 30 30     BMI bra_A90E
C - - - - - 0x00E8EE 03:A8DE: 20 50 AB  JSR sub_AB50
C - - - - - 0x00E8F1 03:A8E1: 90 2E     BCC bra_A911
C - - - - - 0x00E8F3 03:A8E3: A9 01     LDA #$01
C - - - - - 0x00E8F5 03:A8E5: 8D 40 03  STA ram_0340
C - - - - - 0x00E8F8 03:A8E8: A5 60     LDA ram_0060
C - - - - - 0x00E8FA 03:A8EA: D0 25     BNE bra_A911
C - - - - - 0x00E8FC 03:A8EC: A5 61     LDA ram_0061
C - - - - - 0x00E8FE 03:A8EE: C9 02     CMP #$02
C - - - - - 0x00E900 03:A8F0: B0 1F     BCS bra_A911
C - - - - - 0x00E902 03:A8F2: 4C 49 AB  JMP loc_AB49



loc_A8F5:
C D 1 - - - 0x00E905 03:A8F5: A9 00     LDA #$00
C - - - - - 0x00E907 03:A8F7: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00E90A 03:A8FA: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00E90D 03:A8FD: A0 00     LDY #$00
C - - - - - 0x00E90F 03:A8FF: 20 23 A9  JSR sub_A923
C - - - - - 0x00E912 03:A902: A9 27     LDA #$27
C - - - - - 0x00E914 03:A904: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00E917 03:A907: A9 60     LDA #$60
C - - - - - 0x00E919 03:A909: 9D 96 07  STA ram_0796_unk,X
C - - - - - 0x00E91C 03:A90C: 38        SEC
C - - - - - 0x00E91D 03:A90D: 60        RTS
bra_A90E:
- - - - - - 0x00E91E 03:A90E: 20 13 A9  JSR sub_A913
bra_A911:
C - - - - - 0x00E921 03:A911: 18        CLC
C - - - - - 0x00E922 03:A912: 60        RTS



sub_A913:
ofs_017_0x00E923_5F:
C - - - - - 0x00E923 03:A913: A9 00     LDA #$00
C - - - - - 0x00E925 03:A915: 8D 43 03  STA ram_0343
C - - - - - 0x00E928 03:A918: 8D 44 03  STA ram_0344
C - - - - - 0x00E92B 03:A91B: 8D 45 03  STA ram_0345
C - - - - - 0x00E92E 03:A91E: 8D 32 03  STA ram_0332
C - - - - - 0x00E931 03:A921: 38        SEC
C - - - - - 0x00E932 03:A922: 60        RTS



sub_A923:
C - - - - - 0x00E933 03:A923: B9 45 A9  LDA tbl_A945,Y
C - - - - - 0x00E936 03:A926: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00E939 03:A929: 98        TYA
C - - - - - 0x00E93A 03:A92A: 0A        ASL
C - - - - - 0x00E93B 03:A92B: A8        TAY
C - - - - - 0x00E93C 03:A92C: B9 52 A9  LDA tbl_A952,Y
C - - - - - 0x00E93F 03:A92F: 8D 47 03  STA ram_0347
C - - - - - 0x00E942 03:A932: B9 53 A9  LDA tbl_A952 + $01,Y
C - - - - - 0x00E945 03:A935: 8D 46 03  STA ram_0346
C - - - - - 0x00E948 03:A938: B9 6C A9  LDA tbl_A96C,Y
C - - - - - 0x00E94B 03:A93B: 8D 49 03  STA ram_0349
C - - - - - 0x00E94E 03:A93E: B9 6D A9  LDA tbl_A96C + $01,Y
C - - - - - 0x00E951 03:A941: 8D 48 03  STA ram_0348
C - - - - - 0x00E954 03:A944: 60        RTS



tbl_A945:
- D 1 - - - 0x00E955 03:A945: 70        .byte $70   ; 00
- D 1 - - - 0x00E956 03:A946: 40        .byte $40   ; 01
- D 1 - - - 0x00E957 03:A947: 30        .byte $30   ; 02
- D 1 - - - 0x00E958 03:A948: 16        .byte $16   ; 03
- D 1 - - - 0x00E959 03:A949: 28        .byte $28   ; 04
- D 1 - - - 0x00E95A 03:A94A: 16        .byte $16   ; 05
- D 1 - - - 0x00E95B 03:A94B: 0A        .byte $0A   ; 06
- D 1 - - - 0x00E95C 03:A94C: 31        .byte $31   ; 07
- D 1 - - - 0x00E95D 03:A94D: FF        .byte $FF   ; 08
- D 1 - - - 0x00E95E 03:A94E: 40        .byte $40   ; 09
- D 1 - - - 0x00E95F 03:A94F: FF        .byte $FF   ; 0A
- D 1 - - - 0x00E960 03:A950: 40        .byte $40   ; 0B
- D 1 - - - 0x00E961 03:A951: FF        .byte $FF   ; 0C



tbl_A952:
- D 1 - - - 0x00E962 03:A952: 00        .byte $00, $FE   ; 00
- D 1 - - - 0x00E964 03:A954: 00        .byte $00, $00   ; 01
- D 1 - - - 0x00E966 03:A956: 00        .byte $00, $FE   ; 02
- D 1 - - - 0x00E968 03:A958: 80        .byte $80, $01   ; 03
- D 1 - - - 0x00E96A 03:A95A: 00        .byte $00, $02   ; 04
- D 1 - - - 0x00E96C 03:A95C: 80        .byte $80, $FE   ; 05
- D 1 - - - 0x00E96E 03:A95E: 00        .byte $00, $02   ; 06
- D 1 - - - 0x00E970 03:A960: 00        .byte $00, $FE   ; 07
- D 1 - - - 0x00E972 03:A962: 80        .byte $80, $FF   ; 08
- D 1 - - - 0x00E974 03:A964: 00        .byte $00, $00   ; 09
- D 1 - - - 0x00E976 03:A966: 80        .byte $80, $00   ; 0A
- D 1 - - - 0x00E978 03:A968: 00        .byte $00, $00   ; 0B
- D 1 - - - 0x00E97A 03:A96A: 00        .byte $00, $FF   ; 0C



tbl_A96C:
- D 1 - - - 0x00E97C 03:A96C: 00        .byte $00, $00   ; 00
- D 1 - - - 0x00E97E 03:A96E: 00        .byte $00, $00   ; 01
- D 1 - - - 0x00E980 03:A970: 00        .byte $00, $00   ; 02
- D 1 - - - 0x00E982 03:A972: 80        .byte $80, $FE   ; 03
- D 1 - - - 0x00E984 03:A974: 00        .byte $00, $00   ; 04
- D 1 - - - 0x00E986 03:A976: 80        .byte $80, $01   ; 05
- D 1 - - - 0x00E988 03:A978: 00        .byte $00, $00   ; 06
- D 1 - - - 0x00E98A 03:A97A: 00        .byte $00, $00   ; 07
- D 1 - - - 0x00E98C 03:A97C: 00        .byte $00, $FF   ; 08
- D 1 - - - 0x00E98E 03:A97E: 00        .byte $00, $FE   ; 09
- D 1 - - - 0x00E990 03:A980: 00        .byte $00, $00   ; 0A
- D 1 - - - 0x00E992 03:A982: 00        .byte $00, $02   ; 0B
- D 1 - - - 0x00E994 03:A984: 00        .byte $00, $00   ; 0C



ofs_017_0x00E996_49:
C - - J - - 0x00E996 03:A986: 20 BD A9  JSR sub_A9BD
C - - - - - 0x00E999 03:A989: B0 30     BCS bra_A9BB
sub_A98B:
C - - - - - 0x00E99B 03:A98B: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00E99E 03:A98E: 30 05     BMI bra_A995
C - - - - - 0x00E9A0 03:A990: A5 0A     LDA ram_000A
C - - - - - 0x00E9A2 03:A992: 9D AA 07  STA ram_07AA_unk,X
bra_A995:
C - - - - - 0x00E9A5 03:A995: 20 06 AA  JSR sub_AA06
C - - - - - 0x00E9A8 03:A998: A9 12     LDA #$12
C - - - - - 0x00E9AA 03:A99A: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00E9AD 03:A99D: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00E9B0 03:A9A0: F0 02     BEQ bra_A9A4
C - - - - - 0x00E9B2 03:A9A2: 18        CLC
C - - - - - 0x00E9B3 03:A9A3: 60        RTS
bra_A9A4:
loc_A9A4:
C D 1 - - - 0x00E9B4 03:A9A4: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00E9B7 03:A9A7: C9 06     CMP #$06
C - - - - - 0x00E9B9 03:A9A9: D0 10     BNE bra_A9BB
C - - - - - 0x00E9BB 03:A9AB: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00E9BE 03:A9AE: 20 23 A9  JSR sub_A923
C - - - - - 0x00E9C1 03:A9B1: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x00E9C4 03:A9B4: D0 05     BNE bra_A9BB
C - - - - - 0x00E9C6 03:A9B6: A9 1A     LDA #$1A
C - - - - - 0x00E9C8 03:A9B8: 9D 20 07  STA ram_0720_obj,X
bra_A9BB:
C - - - - - 0x00E9CB 03:A9BB: 38        SEC
C - - - - - 0x00E9CC 03:A9BC: 60        RTS



sub_A9BD:
C - - - - - 0x00E9CD 03:A9BD: A5 75     LDA ram_stage
C - - - - - 0x00E9CF 03:A9BF: C9 04     CMP #$04
C - - - - - 0x00E9D1 03:A9C1: D0 09     BNE bra_A9CC
C - - - - - 0x00E9D3 03:A9C3: AD 7A 07  LDA ram_0778_unk + $02
C - - - - - 0x00E9D6 03:A9C6: 29 7F     AND #$7F
C - - - - - 0x00E9D8 03:A9C8: C9 20     CMP #$20
C - - - - - 0x00E9DA 03:A9CA: F0 1D     BEQ bra_A9E9
bra_A9CC:
C - - - - - 0x00E9DC 03:A9CC: 20 99 94  JSR sub_0x0094A9
C - - - - - 0x00E9DF 03:A9CF: 90 16     BCC bra_A9E7
C - - - - - 0x00E9E1 03:A9D1: A5 0A     LDA ram_000A
C - - - - - 0x00E9E3 03:A9D3: 48        PHA
C - - - - - 0x00E9E4 03:A9D4: A9 2A     LDA #con_music_2A
C - - - - - 0x00E9E6 03:A9D6: 20 D8 95  JSR sub_0x0095E8_play_music
C - - - - - 0x00E9E9 03:A9D9: 68        PLA
C - - - - - 0x00E9EA 03:A9DA: 85 0A     STA ram_000A
C - - - - - 0x00E9EC 03:A9DC: DE 96 07  DEC ram_0796_unk,X
C - - - - - 0x00E9EF 03:A9DF: 20 F3 8F  JSR sub_0x009003
C - - - - - 0x00E9F2 03:A9E2: A0 03     LDY #$03
C - - - - - 0x00E9F4 03:A9E4: 20 3E 85  JSR sub_0x00854E
bra_A9E7:
C - - - - - 0x00E9F7 03:A9E7: 18        CLC
C - - - - - 0x00E9F8 03:A9E8: 60        RTS
bra_A9E9:
C - - - - - 0x00E9F9 03:A9E9: A9 00     LDA #$00
C - - - - - 0x00E9FB 03:A9EB: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00E9FE 03:A9EE: A9 12     LDA #$12
C - - - - - 0x00EA00 03:A9F0: 20 09 A8  JSR sub_A809
C - - - - - 0x00EA03 03:A9F3: A5 8D     LDA ram_008D
C - - - - - 0x00EA05 03:A9F5: 09 80     ORA #$80
C - - - - - 0x00EA07 03:A9F7: 85 8D     STA ram_008D
C - - - - - 0x00EA09 03:A9F9: AD 98 07  LDA ram_0796_unk + $02
C - - - - - 0x00EA0C 03:A9FC: D0 05     BNE bra_AA03
C - - - - - 0x00EA0E 03:A9FE: A9 80     LDA #$80
C - - - - - 0x00EA10 03:AA00: 8D 40 03  STA ram_0340
bra_AA03:
C - - - - - 0x00EA13 03:AA03: 4C 16 AD  JMP loc_AD16



sub_AA06:
C - - - - - 0x00EA16 03:AA06: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00EA19 03:AA09: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00EA1C 03:AA0C: C9 05     CMP #$05
C - - - - - 0x00EA1E 03:AA0E: F0 1D     BEQ bra_AA2D
C - - - - - 0x00EA20 03:AA10: A9 FF     LDA #$FF
C - - - - - 0x00EA22 03:AA12: 38        SEC
C - - - - - 0x00EA23 03:AA13: E5 AB     SBC ram_00AB
C - - - - - 0x00EA25 03:AA15: A9 78     LDA #$78
C - - - - - 0x00EA27 03:AA17: E5 AC     SBC ram_00AC
C - - - - - 0x00EA29 03:AA19: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00EA2C 03:AA1C: A9 67     LDA #$67
C - - - - - 0x00EA2E 03:AA1E: 38        SEC
C - - - - - 0x00EA2F 03:AA1F: E5 AF     SBC ram_00AF
C - - - - - 0x00EA31 03:AA21: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00EA34 03:AA24: A9 68     LDA #con_chr_bank + $68
C - - - - - 0x00EA36 03:AA26: 85 77     STA ram_chr_bank
C - - - - - 0x00EA38 03:AA28: A9 6A     LDA #con_chr_bank + $6A
C - - - - - 0x00EA3A 03:AA2A: 85 78     STA ram_chr_bank + $01
C - - - - - 0x00EA3C 03:AA2C: 60        RTS
bra_AA2D:
C - - - - - 0x00EA3D 03:AA2D: A9 54     LDA #con_chr_bank + $54
C - - - - - 0x00EA3F 03:AA2F: 85 77     STA ram_chr_bank
C - - - - - 0x00EA41 03:AA31: A9 22     LDA #con_chr_bank + $22
C - - - - - 0x00EA43 03:AA33: 85 78     STA ram_chr_bank + $01
C - - - - - 0x00EA45 03:AA35: A9 FF     LDA #$FF
C - - - - - 0x00EA47 03:AA37: 38        SEC
C - - - - - 0x00EA48 03:AA38: E5 AB     SBC ram_00AB
C - - - - - 0x00EA4A 03:AA3A: A9 7D     LDA #$7D
C - - - - - 0x00EA4C 03:AA3C: E5 AC     SBC ram_00AC
C - - - - - 0x00EA4E 03:AA3E: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00EA51 03:AA41: A9 68     LDA #$68
C - - - - - 0x00EA53 03:AA43: 38        SEC
C - - - - - 0x00EA54 03:AA44: E5 AF     SBC ram_00AF
C - - - - - 0x00EA56 03:AA46: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00EA59 03:AA49: AD 22 07  LDA ram_0720_obj + $02
C - - - - - 0x00EA5C 03:AA4C: F0 5C     BEQ bra_AAAA_RTS
C - - - - - 0x00EA5E 03:AA4E: A0 03     LDY #$03
bra_AA50_loop:
C - - - - - 0x00EA60 03:AA50: A5 8D     LDA ram_008D
C - - - - - 0x00EA62 03:AA52: 39 3E 99  AND tbl_0x009950_bits - $03 + $01,Y
C - - - - - 0x00EA65 03:AA55: D9 3E 99  CMP tbl_0x009950_bits - $03 + $01,Y
C - - - - - 0x00EA68 03:AA58: F0 4B     BEQ bra_AAA5
C - - - - - 0x00EA6A 03:AA5A: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EA6D 03:AA5D: 18        CLC
C - - - - - 0x00EA6E 03:AA5E: 79 A8 AA  ADC tbl_AAAB - $03,Y
C - - - - - 0x00EA71 03:AA61: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00EA74 03:AA64: B9 78 07  LDA ram_0778_unk,Y
C - - - - - 0x00EA77 03:AA67: 29 7F     AND #$7F
C - - - - - 0x00EA79 03:AA69: 38        SEC
C - - - - - 0x00EA7A 03:AA6A: E9 11     SBC #$11
C - - - - - 0x00EA7C 03:AA6C: C9 08     CMP #$08
C - - - - - 0x00EA7E 03:AA6E: 90 35     BCC bra_AAA5
C - - - - - 0x00EA80 03:AA70: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00EA83 03:AA73: 18        CLC
C - - - - - 0x00EA84 03:AA74: 79 AF AA  ADC tbl_AAB2 - $03,Y
C - - - - - 0x00EA87 03:AA77: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00EA8A 03:AA7A: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00EA8D 03:AA7D: C9 10     CMP #$10
C - - - - - 0x00EA8F 03:AA7F: F0 15     BEQ bra_AA96
C - - - - - 0x00EA91 03:AA81: A9 10     LDA #$10
C - - - - - 0x00EA93 03:AA83: C0 03     CPY #$03
C - - - - - 0x00EA95 03:AA85: D0 02     BNE bra_AA89
C - - - - - 0x00EA97 03:AA87: A9 20     LDA #$20
bra_AA89:
C - - - - - 0x00EA99 03:AA89: 99 96 07  STA ram_0796_unk,Y
C - - - - - 0x00EA9C 03:AA8C: A9 0C     LDA #$0C
C - - - - - 0x00EA9E 03:AA8E: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00EAA1 03:AA91: A9 06     LDA #$06
C - - - - - 0x00EAA3 03:AA93: 99 20 07  STA ram_0720_obj,Y
bra_AA96:
C - - - - - 0x00EAA6 03:AA96: A9 08     LDA #$08
C - - - - - 0x00EAA8 03:AA98: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x00EAAB 03:AA9B: A9 12     LDA #$12
C - - - - - 0x00EAAD 03:AA9D: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00EAB0 03:AAA0: A9 10     LDA #$10
C - - - - - 0x00EAB2 03:AAA2: 99 82 07  STA ram_0782_unk,Y
bra_AAA5:
C - - - - - 0x00EAB5 03:AAA5: C8        INY
C - - - - - 0x00EAB6 03:AAA6: C0 0A     CPY #$0A
C - - - - - 0x00EAB8 03:AAA8: 90 A6     BCC bra_AA50_loop
bra_AAAA_RTS:
C - - - - - 0x00EABA 03:AAAA: 60        RTS



tbl_AAAB:
- D 1 - - - 0x00EABB 03:AAAB: 04        .byte $04   ; 03
- D 1 - - - 0x00EABC 03:AAAC: E0        .byte $E0   ; 04
- D 1 - - - 0x00EABD 03:AAAD: 20        .byte $20   ; 05
- D 1 - - - 0x00EABE 03:AAAE: CC        .byte $CC   ; 06
- D 1 - - - 0x00EABF 03:AAAF: 3C        .byte $3C   ; 07
- D 1 - - - 0x00EAC0 03:AAB0: AC        .byte $AC   ; 08
- D 1 - - - 0x00EAC1 03:AAB1: 5C        .byte $5C   ; 09

tbl_AAB2:
- D 1 - - - 0x00EAC2 03:AAB2: 30        .byte $30   ; 03
- D 1 - - - 0x00EAC3 03:AAB3: 08        .byte $08   ; 04
- D 1 - - - 0x00EAC4 03:AAB4: 08        .byte $08   ; 05
- D 1 - - - 0x00EAC5 03:AAB5: 14        .byte $14   ; 06
- D 1 - - - 0x00EAC6 03:AAB6: 14        .byte $14   ; 07
- D 1 - - - 0x00EAC7 03:AAB7: 14        .byte $14   ; 08
- D 1 - - - 0x00EAC8 03:AAB8: 14        .byte $14   ; 09



ofs_017_0x00EAC9_4C:
C - - J - - 0x00EAC9 03:AAB9: 20 BD A9  JSR sub_A9BD
C - - - - - 0x00EACC 03:AABC: B0 EC     BCS bra_AAAA_RTS
C - - - - - 0x00EACE 03:AABE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EAD1 03:AAC1: 30 05     BMI bra_AAC8
C - - - - - 0x00EAD3 03:AAC3: A5 0A     LDA ram_000A
C - - - - - 0x00EAD5 03:AAC5: 9D AA 07  STA ram_07AA_unk,X
bra_AAC8:
C - - - - - 0x00EAD8 03:AAC8: 20 06 AA  JSR sub_AA06
C - - - - - 0x00EADB 03:AACB: A5 23     LDA ram_0023
C - - - - - 0x00EADD 03:AACD: 29 3F     AND #$3F
C - - - - - 0x00EADF 03:AACF: D0 28     BNE bra_AAF9
C - - - - - 0x00EAE1 03:AAD1: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00EAE4 03:AAD4: A2 03     LDX #$03
C - - - - - 0x00EAE6 03:AAD6: A9 41     LDA #$41
C - - - - - 0x00EAE8 03:AAD8: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00EAEB 03:AADB: 90 05     BCC bra_AAE2
C - - - - - 0x00EAED 03:AADD: A6 53     LDX ram_0053
C - - - - - 0x00EAEF 03:AADF: 4C A4 A9  JMP loc_A9A4
bra_AAE2:
C - - - - - 0x00EAF2 03:AAE2: A6 53     LDX ram_0053
C - - - - - 0x00EAF4 03:AAE4: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00EAF7 03:AAE7: 18        CLC
C - - - - - 0x00EAF8 03:AAE8: 69 D8     ADC #$D8
C - - - - - 0x00EAFA 03:AAEA: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00EAFD 03:AAED: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00EB00 03:AAF0: 18        CLC
C - - - - - 0x00EB01 03:AAF1: 69 18     ADC #$18
C - - - - - 0x00EB03 03:AAF3: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00EB06 03:AAF6: 4C A4 A9  JMP loc_A9A4
bra_AAF9:
C - - - - - 0x00EB09 03:AAF9: 18        CLC
C - - - - - 0x00EB0A 03:AAFA: 60        RTS



ofs_017_0x00EB0B_4A:
C - - J - - 0x00EB0B 03:AAFB: A4 8C     LDY ram_008C
C - - - - - 0x00EB0D 03:AAFD: B9 03 AB  LDA tbl_AB03,Y
C - - - - - 0x00EB10 03:AB00: 4C 61 A3  JMP loc_A361



tbl_AB03:
- D 1 - - - 0x00EB13 03:AB03: 2E        .byte con_A36F_2E   ; 00
- D 1 - - - 0x00EB14 03:AB04: 2E        .byte con_A36F_2E   ; 01
- - - - - - 0x00EB15 03:AB05: 2F        .byte con_A36F_2F   ; 02
- - - - - - 0x00EB16 03:AB06: 30        .byte con_A36F_30   ; 03
- D 1 - - - 0x00EB17 03:AB07: 2E        .byte con_A36F_2E   ; 04
- D 1 - - - 0x00EB18 03:AB08: 32        .byte con_A36F_32   ; 05



ofs_017_0x00EB19_4B:
C - - J - - 0x00EB19 03:AB09: A0 02     LDY #$02
C - - - - - 0x00EB1B 03:AB0B: 20 54 91  JSR sub_0x009164_copy_position
C - - - - - 0x00EB1E 03:AB0E: A5 8C     LDA ram_008C
C - - - - - 0x00EB20 03:AB10: C9 05     CMP #$05
C - - - - - 0x00EB22 03:AB12: F0 1B     BEQ bra_AB2F
C - - - - - 0x00EB24 03:AB14: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00EB27 03:AB17: 29 0F     AND #$0F
C - - - - - 0x00EB29 03:AB19: 99 00 06  STA ram_0600_obj,Y
C - - - - - 0x00EB2C 03:AB1C: A9 0E     LDA #$0E
C - - - - - 0x00EB2E 03:AB1E: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00EB31 03:AB21: A9 12     LDA #$12
C - - - - - 0x00EB33 03:AB23: 99 D2 07  STA ram_07D2_unk,Y
C - - - - - 0x00EB36 03:AB26: A9 16     LDA #$16
C - - - - - 0x00EB38 03:AB28: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00EB3B 03:AB2B: A9 05     LDA #$05
C - - - - - 0x00EB3D 03:AB2D: 85 8C     STA ram_008C
bra_AB2F:
C - - - - - 0x00EB3F 03:AB2F: 38        SEC
C - - - - - 0x00EB40 03:AB30: 60        RTS



ofs_017_0x00EB41_4D:
C - - J - - 0x00EB41 03:AB31: 20 B1 91  JSR sub_0x0091C1
C - - - - - 0x00EB44 03:AB34: A6 53     LDX ram_0053
C - - - - - 0x00EB46 03:AB36: A5 60     LDA ram_0060
C - - - - - 0x00EB48 03:AB38: D0 59     BNE bra_AB93
C - - - - - 0x00EB4A 03:AB3A: A5 61     LDA ram_0061
C - - - - - 0x00EB4C 03:AB3C: C9 02     CMP #$02
C - - - - - 0x00EB4E 03:AB3E: B0 53     BCS bra_AB93
C - - - - - 0x00EB50 03:AB40: A9 00     LDA #$00
C - - - - - 0x00EB52 03:AB42: 85 8D     STA ram_008D
C - - - - - 0x00EB54 03:AB44: A9 80     LDA #$80
C - - - - - 0x00EB56 03:AB46: 8D B5 06  STA ram_06B2_obj + $03
loc_AB49:
C D 1 - - - 0x00EB59 03:AB49: A0 0C     LDY #$0C
C - - - - - 0x00EB5B 03:AB4B: 20 23 A9  JSR sub_A923
C - - - - - 0x00EB5E 03:AB4E: 38        SEC
C - - - - - 0x00EB5F 03:AB4F: 60        RTS



sub_AB50:
ofs_017_0x00EB60_4E:
C - - J - - 0x00EB60 03:AB50: AD 43 03  LDA ram_0343
C - - - - - 0x00EB63 03:AB53: C9 07     CMP #$07
C - - - - - 0x00EB65 03:AB55: 60        RTS



ofs_017_0x00EB66_50:
C - - J - - 0x00EB66 03:AB56: AD 46 03  LDA ram_0346
C - - - - - 0x00EB69 03:AB59: 0D 47 03  ORA ram_0347
C - - - - - 0x00EB6C 03:AB5C: D0 1E     BNE bra_AB7C
C - - - - - 0x00EB6E 03:AB5E: A5 75     LDA ram_stage
C - - - - - 0x00EB70 03:AB60: C9 04     CMP #$04
C - - - - - 0x00EB72 03:AB62: F0 0F     BEQ bra_AB73
C - - - - - 0x00EB74 03:AB64: A5 AF     LDA ram_00AF
C - - - - - 0x00EB76 03:AB66: C9 50     CMP #$50
C - - - - - 0x00EB78 03:AB68: 90 29     BCC bra_AB93
C - - - - - 0x00EB7A 03:AB6A: 20 16 AD  JSR sub_AD16
loc_AB6D:
C D 1 - - - 0x00EB7D 03:AB6D: A9 00     LDA #$00
C - - - - - 0x00EB7F 03:AB6F: 85 98     STA ram_0098
C - - - - - 0x00EB81 03:AB71: 38        SEC
C - - - - - 0x00EB82 03:AB72: 60        RTS
bra_AB73:
C - - - - - 0x00EB83 03:AB73: A5 AF     LDA ram_00AF
C - - - - - 0x00EB85 03:AB75: C9 39     CMP #$39
C - - - - - 0x00EB87 03:AB77: 90 1A     BCC bra_AB93
C - - - - - 0x00EB89 03:AB79: 4C F5 A8  JMP loc_A8F5
bra_AB7C:
C - - - - - 0x00EB8C 03:AB7C: A5 75     LDA ram_stage
C - - - - - 0x00EB8E 03:AB7E: C9 04     CMP #$04
C - - - - - 0x00EB90 03:AB80: B0 13     BCS bra_AB95
C - - - - - 0x00EB92 03:AB82: A5 A0     LDA ram_00A0
C - - - - - 0x00EB94 03:AB84: C9 04     CMP #$04
C - - - - - 0x00EB96 03:AB86: B0 0B     BCS bra_AB93
C - - - - - 0x00EB98 03:AB88: A5 A1     LDA ram_00A1
C - - - - - 0x00EB9A 03:AB8A: C9 10     CMP #$10
loc_AB8C:
C D 1 - - - 0x00EB9C 03:AB8C: B0 05     BCS bra_AB93
C - - - - - 0x00EB9E 03:AB8E: A0 0B     LDY #$0B
C - - - - - 0x00EBA0 03:AB90: 20 23 A9  JSR sub_A923
bra_AB93:
C - - - - - 0x00EBA3 03:AB93: 18        CLC
C - - - - - 0x00EBA4 03:AB94: 60        RTS
bra_AB95:
C - - - - - 0x00EBA5 03:AB95: A5 A0     LDA ram_00A0
C - - - - - 0x00EBA7 03:AB97: C9 02     CMP #$02
C - - - - - 0x00EBA9 03:AB99: B0 F8     BCS bra_AB93
C - - - - - 0x00EBAB 03:AB9B: A5 A1     LDA ram_00A1
C - - - - - 0x00EBAD 03:AB9D: C9 FE     CMP #$FE
C - - - - - 0x00EBAF 03:AB9F: 4C 8C AB  JMP loc_AB8C



sub_ABA2:
C - - - - - 0x00EBB2 03:ABA2: 20 8B A9  JSR sub_A98B
C - - - - - 0x00EBB5 03:ABA5: 20 23 AD  JSR sub_AD23
C - - - - - 0x00EBB8 03:ABA8: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EBBB 03:ABAB: C9 19     CMP #$19
C - - - - - 0x00EBBD 03:ABAD: 60        RTS



ofs_017_0x00EBBE_53:
C - - J - - 0x00EBBE 03:ABAE: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EBC1 03:ABB1: 30 05     BMI bra_ABB8
C - - - - - 0x00EBC3 03:ABB3: A4 0A     LDY ram_000A
C - - - - - 0x00EBC5 03:ABB5: 20 23 A9  JSR sub_A923
bra_ABB8:
C - - - - - 0x00EBC8 03:ABB8: 20 24 AC  JSR sub_AC24
C - - - - - 0x00EBCB 03:ABBB: 20 A2 AB  JSR sub_ABA2
C - - - - - 0x00EBCE 03:ABBE: F0 20     BEQ bra_ABE0
C - - - - - 0x00EBD0 03:ABC0: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x00EBD3 03:ABC3: D0 0F     BNE bra_ABD4
C - - - - - 0x00EBD5 03:ABC5: A5 AB     LDA ram_00AB
C - - - - - 0x00EBD7 03:ABC7: 10 19     BPL bra_ABE2
C - - - - - 0x00EBD9 03:ABC9: A5 AC     LDA ram_00AC
C - - - - - 0x00EBDB 03:ABCB: C9 08     CMP #$08
C - - - - - 0x00EBDD 03:ABCD: B0 13     BCS bra_ABE2
C - - - - - 0x00EBDF 03:ABCF: A9 0E     LDA #$0E
C - - - - - 0x00EBE1 03:ABD1: 9D 20 07  STA ram_0720_obj,X
bra_ABD4:
C - - - - - 0x00EBE4 03:ABD4: AD 46 03  LDA ram_0346
C - - - - - 0x00EBE7 03:ABD7: 30 10     BMI bra_ABE9
C - - - - - 0x00EBE9 03:ABD9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EBEC 03:ABDC: C9 60     CMP #$60
C - - - - - 0x00EBEE 03:ABDE: B0 07     BCS bra_ABE7
bra_ABE0:
C - - - - - 0x00EBF0 03:ABE0: 38        SEC
C - - - - - 0x00EBF1 03:ABE1: 60        RTS
bra_ABE2:
C - - - - - 0x00EBF2 03:ABE2: AD 46 03  LDA ram_0346
C - - - - - 0x00EBF5 03:ABE5: 30 09     BMI bra_ABF0
bra_ABE7:
loc_ABE7:
C D 1 - - - 0x00EBF7 03:ABE7: 18        CLC
bra_ABE8_RTS:
C - - - - - 0x00EBF8 03:ABE8: 60        RTS
bra_ABE9:
C - - - - - 0x00EBF9 03:ABE9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EBFC 03:ABEC: C9 9F     CMP #$9F
C - - - - - 0x00EBFE 03:ABEE: B0 F8     BCS bra_ABE8_RTS
bra_ABF0:
C - - - - - 0x00EC00 03:ABF0: AD 48 03  LDA ram_0348
C - - - - - 0x00EC03 03:ABF3: 30 08     BMI bra_ABFD
C - - - - - 0x00EC05 03:ABF5: A5 AF     LDA ram_00AF
C - - - - - 0x00EC07 03:ABF7: C9 50     CMP #$50
C - - - - - 0x00EC09 03:ABF9: 90 27     BCC bra_AC22
C - - - - - 0x00EC0B 03:ABFB: B0 06     BCS bra_AC03    ; jmp
bra_ABFD:
C - - - - - 0x00EC0D 03:ABFD: A5 AF     LDA ram_00AF
C - - - - - 0x00EC0F 03:ABFF: C9 32     CMP #$32
C - - - - - 0x00EC11 03:AC01: B0 1F     BCS bra_AC22
bra_AC03:
C - - - - - 0x00EC13 03:AC03: A5 AF     LDA ram_00AF
C - - - - - 0x00EC15 03:AC05: 38        SEC
C - - - - - 0x00EC16 03:AC06: E9 40     SBC #$40
C - - - - - 0x00EC18 03:AC08: C9 10     CMP #$10
C - - - - - 0x00EC1A 03:AC0A: 90 16     BCC bra_AC22
C - - - - - 0x00EC1C 03:AC0C: AD 48 03  LDA ram_0348
C - - - - - 0x00EC1F 03:AC0F: 49 FF     EOR #$FF
C - - - - - 0x00EC21 03:AC11: 8D 48 03  STA ram_0348
C - - - - - 0x00EC24 03:AC14: AD 49 03  LDA ram_0349
C - - - - - 0x00EC27 03:AC17: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
C - - - - - 0x00EC2A 03:AC1A: 8D 49 03  STA ram_0349
C - - - - - 0x00EC2D 03:AC1D: 90 03     BCC bra_AC22
C - - - - - 0x00EC2F 03:AC1F: EE 48 03  INC ram_0348
bra_AC22:
C - - - - - 0x00EC32 03:AC22: 18        CLC
C - - - - - 0x00EC33 03:AC23: 60        RTS



sub_AC24:
C - - - - - 0x00EC34 03:AC24: AD 46 03  LDA ram_0346
C - - - - - 0x00EC37 03:AC27: 30 24     BMI bra_AC4D
C - - - - - 0x00EC39 03:AC29: 20 4D AC  JSR sub_AC4D
C - - - - - 0x00EC3C 03:AC2C: A0 08     LDY #$08
C - - - - - 0x00EC3E 03:AC2E: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00EC41 03:AC31: C9 F8     CMP #$F8
C - - - - - 0x00EC43 03:AC33: F0 0C     BEQ bra_AC41
C - - - - - 0x00EC45 03:AC35: C9 40     CMP #$40
C - - - - - 0x00EC47 03:AC37: F0 08     BEQ bra_AC41
C - - - - - 0x00EC49 03:AC39: A0 06     LDY #$06
C - - - - - 0x00EC4B 03:AC3B: C9 C0     CMP #$C0
C - - - - - 0x00EC4D 03:AC3D: F0 02     BEQ bra_AC41
C - - - - - 0x00EC4F 03:AC3F: 18        CLC
C - - - - - 0x00EC50 03:AC40: 60        RTS
bra_AC41:
C - - - - - 0x00EC51 03:AC41: A9 0D     LDA #$0D
C - - - - - 0x00EC53 03:AC43: 99 78 07  STA ram_0778_unk,Y
C - - - - - 0x00EC56 03:AC46: 99 79 07  STA ram_0778_unk + $01,Y
bra_AC49:
loc_AC49:
C D 1 - - - 0x00EC59 03:AC49: A6 53     LDX ram_0053
C - - - - - 0x00EC5B 03:AC4B: 18        CLC
C - - - - - 0x00EC5C 03:AC4C: 60        RTS
bra_AC4D:
sub_AC4D:
C - - - - - 0x00EC5D 03:AC4D: BD 20 07  LDA ram_0720_obj,X
C - - - - - 0x00EC60 03:AC50: F0 F7     BEQ bra_AC49
C - - - - - 0x00EC62 03:AC52: AD B5 06  LDA ram_06B2_obj + $03
C - - - - - 0x00EC65 03:AC55: 8D AD 07  STA ram_07AA_unk + $03
C - - - - - 0x00EC68 03:AC58: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00EC6B 03:AC5B: 29 7F     AND #$7F
C - - - - - 0x00EC6D 03:AC5D: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00EC70 03:AC60: A0 00     LDY #$00
C - - - - - 0x00EC72 03:AC62: AD AD 07  LDA ram_07AA_unk + $03
C - - - - - 0x00EC75 03:AC65: CD B5 06  CMP ram_06B2_obj + $03
C - - - - - 0x00EC78 03:AC68: 90 01     BCC bra_AC6B
C - - - - - 0x00EC7A 03:AC6A: C8        INY
bra_AC6B:
C - - - - - 0x00EC7B 03:AC6B: 98        TYA
C - - - - - 0x00EC7C 03:AC6C: 8D B7 07  STA ram_07B4_unk + $03
C - - - - - 0x00EC7F 03:AC6F: A5 8D     LDA ram_008D
C - - - - - 0x00EC81 03:AC71: 29 40     AND #$40
C - - - - - 0x00EC83 03:AC73: D0 D4     BNE bra_AC49
C - - - - - 0x00EC85 03:AC75: AD AD 07  LDA ram_07AA_unk + $03
C - - - - - 0x00EC88 03:AC78: CD B5 06  CMP ram_06B2_obj + $03
C - - - - - 0x00EC8B 03:AC7B: F0 2A     BEQ bra_ACA7
C - - - - - 0x00EC8D 03:AC7D: 20 1D AD  JSR sub_AD1D
C - - - - - 0x00EC90 03:AC80: 90 08     BCC bra_AC8A
C - - - - - 0x00EC92 03:AC82: AD AD 07  LDA ram_07AA_unk + $03
C - - - - - 0x00EC95 03:AC85: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00EC98 03:AC88: 18        CLC
C - - - - - 0x00EC99 03:AC89: 60        RTS
bra_AC8A:
C - - - - - 0x00EC9A 03:AC8A: A9 20     LDA #$20
C - - - - - 0x00EC9C 03:AC8C: AC B7 07  LDY ram_07B4_unk + $03
C - - - - - 0x00EC9F 03:AC8F: F0 02     BEQ bra_AC93
C - - - - - 0x00ECA1 03:AC91: A9 E0     LDA #$E0
bra_AC93:
C - - - - - 0x00ECA3 03:AC93: 18        CLC
C - - - - - 0x00ECA4 03:AC94: 6D AD 07  ADC ram_07AA_unk + $03
C - - - - - 0x00ECA7 03:AC97: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00ECAA 03:AC9A: AD B5 06  LDA ram_06B2_obj + $03
C - - - - - 0x00ECAD 03:AC9D: 4A        LSR
C - - - - - 0x00ECAE 03:AC9E: 20 B4 93  JSR sub_0x0093C4_LSRx4_TAY
C - - - - - 0x00ECB1 03:ACA1: B9 E6 AC  LDA tbl_ACE6,Y
C - - - - - 0x00ECB4 03:ACA4: 20 DC AC  JSR sub_ACDC
bra_ACA7:
C - - - - - 0x00ECB7 03:ACA7: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00ECBA 03:ACAA: 29 07     AND #$07
C - - - - - 0x00ECBC 03:ACAC: D0 9B     BNE bra_AC49
C - - - - - 0x00ECBE 03:ACAE: AD B5 06  LDA ram_06B2_obj + $03
C - - - - - 0x00ECC1 03:ACB1: 29 F0     AND #$F0
C - - - - - 0x00ECC3 03:ACB3: F0 94     BEQ bra_AC49
C - - - - - 0x00ECC5 03:ACB5: C9 80     CMP #$80
C - - - - - 0x00ECC7 03:ACB7: F0 90     BEQ bra_AC49
C - - - - - 0x00ECC9 03:ACB9: A2 03     LDX #$03
C - - - - - 0x00ECCB 03:ACBB: A9 41     LDA #$41
C - - - - - 0x00ECCD 03:ACBD: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00ECD0 03:ACC0: 98        TYA
C - - - - - 0x00ECD1 03:ACC1: AA        TAX
C - - - - - 0x00ECD2 03:ACC2: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00ECD5 03:ACC5: AD 51 06  LDA ram_obj_pos_X + $03
C - - - - - 0x00ECD8 03:ACC8: 18        CLC
C - - - - - 0x00ECD9 03:ACC9: 79 E9 AC  ADC tbl_ACEB - $02,Y
C - - - - - 0x00ECDC 03:ACCC: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00ECDF 03:ACCF: AD 6B 06  LDA ram_obj_pos_Y + $03
C - - - - - 0x00ECE2 03:ACD2: 18        CLC
C - - - - - 0x00ECE3 03:ACD3: 79 EA AC  ADC tbl_ACEB - $01,Y
C - - - - - 0x00ECE6 03:ACD6: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00ECE9 03:ACD9: 4C 49 AC  JMP loc_AC49



sub_ACDC:
loc_ACDC:
C D 1 - - - 0x00ECEC 03:ACDC: A8        TAY
C - - - - - 0x00ECED 03:ACDD: A5 A0     LDA ram_00A0
C - - - - - 0x00ECEF 03:ACDF: C9 04     CMP #$04
C - - - - - 0x00ECF1 03:ACE1: B0 32     BCS bra_AD15_RTS
C - - - - - 0x00ECF3 03:ACE3: 4C 37 8F  JMP loc_0x008F47



tbl_ACE6:
- - - - - - 0x00ECF6 03:ACE6: 38        .byte con_8F57_38   ; 00
- D 1 - - - 0x00ECF7 03:ACE7: 34        .byte con_8F57_34   ; 01
- D 1 - - - 0x00ECF8 03:ACE8: 30        .byte con_8F57_30   ; 02
- D 1 - - - 0x00ECF9 03:ACE9: 2C        .byte con_8F57_2C   ; 03
- - - - - - 0x00ECFA 03:ACEA: 28        .byte con_8F57_28   ; 04


tbl_ACEB:
- D 1 - - - 0x00ECFB 03:ACEB: 10        .byte $10, $0E   ; 01
- D 1 - - - 0x00ECFD 03:ACED: 00        .byte $00, $10   ; 02
- - - - - - 0x00ECFF 03:ACEF: F6        .byte $F6, $0E   ; 03



ofs_017_0x00ED01_54:
C - - J - - 0x00ED01 03:ACF1: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00ED04 03:ACF4: 30 05     BMI bra_ACFB
C - - - - - 0x00ED06 03:ACF6: A4 0A     LDY ram_000A
C - - - - - 0x00ED08 03:ACF8: 20 23 A9  JSR sub_A923
bra_ACFB:
C - - - - - 0x00ED0B 03:ACFB: 20 A2 AB  JSR sub_ABA2
C - - - - - 0x00ED0E 03:ACFE: F0 1B     BEQ bra_AD1B
C - - - - - 0x00ED10 03:AD00: AD 48 03  LDA ram_0348
C - - - - - 0x00ED13 03:AD03: 30 09     BMI bra_AD0E
C - - - - - 0x00ED15 03:AD05: A5 AF     LDA ram_00AF
C - - - - - 0x00ED17 03:AD07: C9 50     CMP #$50
C - - - - - 0x00ED19 03:AD09: B0 0B     BCS bra_AD16
C - - - - - 0x00ED1B 03:AD0B: 4C E7 AB  JMP loc_ABE7
bra_AD0E:
C - - - - - 0x00ED1E 03:AD0E: A5 AF     LDA ram_00AF
C - - - - - 0x00ED20 03:AD10: C9 32     CMP #$32
C - - - - - 0x00ED22 03:AD12: 90 02     BCC bra_AD16
C - - - - - 0x00ED24 03:AD14: 18        CLC
bra_AD15_RTS:
C - - - - - 0x00ED25 03:AD15: 60        RTS
bra_AD16:
loc_AD16:
sub_AD16:
C D 1 - - - 0x00ED26 03:AD16: A0 01     LDY #$01
C - - - - - 0x00ED28 03:AD18: 20 23 A9  JSR sub_A923
bra_AD1B:
C - - - - - 0x00ED2B 03:AD1B: 38        SEC
C - - - - - 0x00ED2C 03:AD1C: 60        RTS



sub_AD1D:
C - - - - - 0x00ED2D 03:AD1D: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00ED30 03:AD20: 4C BA 93  JMP loc_0x0093CA



sub_AD23:
ofs_017_0x00ED33_51:
ofs_017_0x00ED33_52:
ofs_017_0x00ED33_55:
C - - - - - 0x00ED33 03:AD23: 20 1D AD  JSR sub_AD1D
C - - - - - 0x00ED36 03:AD26: B0 5B     BCS bra_AD83
C - - - - - 0x00ED38 03:AD28: 20 8D AD  JSR sub_AD8D
C - - - - - 0x00ED3B 03:AD2B: 20 BD A9  JSR sub_A9BD
C - - - - - 0x00ED3E 03:AD2E: E0 02     CPX #$02
C - - - - - 0x00ED40 03:AD30: D0 2D     BNE bra_AD5F
C - - - - - 0x00ED42 03:AD32: A5 8D     LDA ram_008D
C - - - - - 0x00ED44 03:AD34: 29 4F     AND #$4F
C - - - - - 0x00ED46 03:AD36: C9 4F     CMP #$4F
C - - - - - 0x00ED48 03:AD38: D0 49     BNE bra_AD83
C - - - - - 0x00ED4A 03:AD3A: AD 85 AD  LDA tbl_AD85
C - - - - - 0x00ED4D 03:AD3D: 20 DC AC  JSR sub_ACDC
C - - - - - 0x00ED50 03:AD40: A9 51     LDA #$51
C - - - - - 0x00ED52 03:AD42: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00ED55 03:AD45: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00ED58 03:AD48: 20 16 AD  JSR sub_AD16
C - - - - - 0x00ED5B 03:AD4B: A9 80     LDA #$80
C - - - - - 0x00ED5D 03:AD4D: 8D 40 03  STA ram_0340
C - - - - - 0x00ED60 03:AD50: 20 BF FE  JSR sub_0x01FECF
C - - - - - 0x00ED63 03:AD53: A6 53     LDX ram_0053
C - - - - - 0x00ED65 03:AD55: A9 1A     LDA #$1A
C - - - - - 0x00ED67 03:AD57: 38        SEC
C - - - - - 0x00ED68 03:AD58: E9 01     SBC #$01
C - - - - - 0x00ED6A 03:AD5A: 8D 7A 07  STA ram_0778_unk + $02
C - - - - - 0x00ED6D 03:AD5D: 38        SEC
C - - - - - 0x00ED6E 03:AD5E: 60        RTS
bra_AD5F:
C - - - - - 0x00ED6F 03:AD5F: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00ED72 03:AD62: 29 7F     AND #$7F
C - - - - - 0x00ED74 03:AD64: C9 0D     CMP #$0D
C - - - - - 0x00ED76 03:AD66: B0 1B     BCS bra_AD83
C - - - - - 0x00ED78 03:AD68: BD 96 07  LDA ram_0796_unk,X
C - - - - - 0x00ED7B 03:AD6B: D0 16     BNE bra_AD83
C - - - - - 0x00ED7D 03:AD6D: 8A        TXA
C - - - - - 0x00ED7E 03:AD6E: A8        TAY
C - - - - - 0x00ED7F 03:AD6F: 20 B3 AD  JSR sub_ADB3
C - - - - - 0x00ED82 03:AD72: A9 51     LDA #$51
C - - - - - 0x00ED84 03:AD74: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00ED87 03:AD77: 20 17 9A  JSR sub_0x009A27
C - - - - - 0x00ED8A 03:AD7A: 8A        TXA
C - - - - - 0x00ED8B 03:AD7B: A8        TAY
C - - - - - 0x00ED8C 03:AD7C: B9 3E 99  LDA tbl_0x009950_bits - $03 + $01,Y
C - - - - - 0x00ED8F 03:AD7F: 05 8D     ORA ram_008D
C - - - - - 0x00ED91 03:AD81: 85 8D     STA ram_008D
bra_AD83:
C - - - - - 0x00ED93 03:AD83: 18        CLC
C - - - - - 0x00ED94 03:AD84: 60        RTS



tbl_AD85:   ; bzk optimize
- D 1 - - - 0x00ED95 03:AD85: 58        .byte con_8F57_58   ; 



tbl_AD86:
- D 1 - - - 0x00ED96 03:AD86: 4C        .byte con_8F57_4C   ; 03
- D 1 - - - 0x00ED97 03:AD87: 50        .byte con_8F57_50   ; 04
- D 1 - - - 0x00ED98 03:AD88: 54        .byte con_8F57_54   ; 05
- D 1 - - - 0x00ED99 03:AD89: 40        .byte con_8F57_40   ; 06
- D 1 - - - 0x00ED9A 03:AD8A: 44        .byte con_8F57_44   ; 07
- D 1 - - - 0x00ED9B 03:AD8B: 3C        .byte con_8F57_3C   ; 08
- D 1 - - - 0x00ED9C 03:AD8C: 48        .byte con_8F57_48   ; 09



sub_AD8D:
C - - - - - 0x00ED9D 03:AD8D: E0 03     CPX #$03
C - - - - - 0x00ED9F 03:AD8F: B0 F2     BCS bra_AD83
C - - - - - 0x00EDA1 03:AD91: A4 98     LDY ram_0098
C - - - - - 0x00EDA3 03:AD93: C0 08     CPY #$08
C - - - - - 0x00EDA5 03:AD95: B0 14     BCS bra_ADAB
C - - - - - 0x00EDA7 03:AD97: C8        INY
C - - - - - 0x00EDA8 03:AD98: C8        INY
C - - - - - 0x00EDA9 03:AD99: B9 3E 99  LDA tbl_0x009950_bits - $02,Y
C - - - - - 0x00EDAC 03:AD9C: 25 8D     AND ram_008D
C - - - - - 0x00EDAE 03:AD9E: F0 03     BEQ bra_ADA3
C - - - - - 0x00EDB0 03:ADA0: 20 B3 AD  JSR sub_ADB3
bra_ADA3:
C - - - - - 0x00EDB3 03:ADA3: E6 98     INC ram_0098
C - - - - - 0x00EDB5 03:ADA5: A5 98     LDA ram_0098
C - - - - - 0x00EDB7 03:ADA7: C9 08     CMP #$08
C - - - - - 0x00EDB9 03:ADA9: 90 D8     BCC bra_AD83
bra_ADAB:
C - - - - - 0x00EDBB 03:ADAB: A9 80     LDA #$80
C - - - - - 0x00EDBD 03:ADAD: 8D B5 06  STA ram_06B2_obj + $03
C - - - - - 0x00EDC0 03:ADB0: 4C 6D AB  JMP loc_AB6D



sub_ADB3:
C - - - - - 0x00EDC3 03:ADB3: B9 83 AD  LDA tbl_AD86 - $03,Y
C - - - - - 0x00EDC6 03:ADB6: 4C DC AC  JMP loc_ACDC



ofs_017_0x00EDC9_59:
C - - J - - 0x00EDC9 03:ADB9: A4 8C     LDY ram_008C
C - - - - - 0x00EDCB 03:ADBB: B9 C1 AD  LDA tbl_ADC1,Y
C - - - - - 0x00EDCE 03:ADBE: 4C 61 A3  JMP loc_A361



tbl_ADC1:
- - - - - - 0x00EDD1 03:ADC1: 21        .byte con_A36F_21   ; 00
- - - - - - 0x00EDD2 03:ADC2: 21        .byte con_A36F_21   ; 01
- D 1 - - - 0x00EDD3 03:ADC3: 34        .byte con_A36F_34   ; 02
- - - - - - 0x00EDD4 03:ADC4: 34        .byte con_A36F_34   ; 03
- - - - - - 0x00EDD5 03:ADC5: 21        .byte con_A36F_21   ; 04
- D 1 - - - 0x00EDD6 03:ADC6: 38        .byte con_A36F_38   ; 05



ofs_017_0x00EDD7_5A:
C - - J - - 0x00EDD7 03:ADC7: A4 8C     LDY ram_008C
C - - - - - 0x00EDD9 03:ADC9: B9 CF AD  LDA tbl_ADCF,Y
C - - - - - 0x00EDDC 03:ADCC: 4C 61 A3  JMP loc_A361



tbl_ADCF:
- D 1 - - - 0x00EDDF 03:ADCF: 20        .byte con_A36F_20   ; 00
- - - - - - 0x00EDE0 03:ADD0: 20        .byte con_A36F_20   ; 01
- - - - - - 0x00EDE1 03:ADD1: 34        .byte con_A36F_34   ; 02
- - - - - - 0x00EDE2 03:ADD2: 2C        .byte con_A36F_2C   ; 03
- D 1 - - - 0x00EDE3 03:ADD3: 2A        .byte con_A36F_2A   ; 04
- D 1 - - - 0x00EDE4 03:ADD4: 32        .byte con_A36F_32   ; 05



ofs_017_0x00EDE5_5C:
C - - J - - 0x00EDE5 03:ADD5: A0 00     LDY #$00
C - - - - - 0x00EDE7 03:ADD7: 20 EB AD  JSR sub_ADEB
C - - - - - 0x00EDEA 03:ADDA: 90 0A     BCC bra_ADE6
C - - - - - 0x00EDEC 03:ADDC: C8        INY
C - - - - - 0x00EDED 03:ADDD: 20 EB AD  JSR sub_ADEB
C - - - - - 0x00EDF0 03:ADE0: 90 04     BCC bra_ADE6
C - - - - - 0x00EDF2 03:ADE2: A9 28     LDA #con_A36F_28
C - - - - - 0x00EDF4 03:ADE4: D0 02     BNE bra_ADE8    ; jmp
bra_ADE6:
C - - - - - 0x00EDF6 03:ADE6: A9 37     LDA #con_A36F_37
bra_ADE8:
C - - - - - 0x00EDF8 03:ADE8: 4C 61 A3  JMP loc_A361



sub_ADEB:
C - - - - - 0x00EDFB 03:ADEB: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00EDFE 03:ADEE: F0 13     BEQ bra_AE03
C - - - - - 0x00EE00 03:ADF0: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE03 03:ADF3: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00EE06 03:ADF6: 6A        ROR
C - - - - - 0x00EE07 03:ADF7: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x00EE0A 03:ADFA: 2A        ROL
C - - - - - 0x00EE0B 03:ADFB: B0 06     BCS bra_AE03
C - - - - - 0x00EE0D 03:ADFD: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00EE10 03:AE00: C9 18     CMP #$18
C - - - - - 0x00EE12 03:AE02: 60        RTS
bra_AE03:
C - - - - - 0x00EE13 03:AE03: 38        SEC
C - - - - - 0x00EE14 03:AE04: 60        RTS



ofs_017_0x00EE15_5D:
C - - J - - 0x00EE15 03:AE05: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE18 03:AE08: 18        CLC
C - - - - - 0x00EE19 03:AE09: 69 30     ADC #$30
C - - - - - 0x00EE1B 03:AE0B: C9 60     CMP #$60
C - - - - - 0x00EE1D 03:AE0D: 90 14     BCC bra_AE23
C - - - - - 0x00EE1F 03:AE0F: A0 03     LDY #$03
C - - - - - 0x00EE21 03:AE11: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00EE24 03:AE14: 5D 4E 06  EOR ram_obj_pos_X,X
C - - - - - 0x00EE27 03:AE17: 10 0A     BPL bra_AE23
C - - - - - 0x00EE29 03:AE19: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE2C 03:AE1C: 29 80     AND #$80
C - - - - - 0x00EE2E 03:AE1E: 49 80     EOR #$80
C - - - - - 0x00EE30 03:AE20: 4C 28 AE  JMP loc_AE28
bra_AE23:
C - - - - - 0x00EE33 03:AE23: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EE36 03:AE26: 29 80     AND #$80
loc_AE28:
C D 1 - - - 0x00EE38 03:AE28: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00EE3B 03:AE2B: 38        SEC
C - - - - - 0x00EE3C 03:AE2C: 60        RTS



ofs_017_0x00EE3D_58:
C - - J - - 0x00EE3D 03:AE2D: A5 0A     LDA ram_000A
C - - - - - 0x00EE3F 03:AE2F: 20 00 97  JSR sub_0x009710
C - - - - - 0x00EE42 03:AE32: A9 00     LDA #$00
C - - - - - 0x00EE44 03:AE34: 99 20 07  STA ram_0720_obj,Y
C - - - - - 0x00EE47 03:AE37: 38        SEC
C - - - - - 0x00EE48 03:AE38: 60        RTS



ofs_017_0x00EE49_5E:
- - - - - - 0x00EE49 03:AE39: A9 A9     LDA #$A9
- - - - - - 0x00EE4B 03:AE3B: CD 8B 07  CMP ram_0782_unk + $09
- - - - - - 0x00EE4E 03:AE3E: F0 6E     BEQ bra_AEAE
- - - - - - 0x00EE50 03:AE40: 8D 8B 07  STA ram_0782_unk + $09
- - - - - - 0x00EE53 03:AE43: AD 50 06  LDA ram_obj_pos_X + $02
- - - - - - 0x00EE56 03:AE46: 8D 57 06  STA ram_obj_pos_X + $09
- - - - - - 0x00EE59 03:AE49: AD CA 06  LDA ram_obj_spd_X + $02
- - - - - - 0x00EE5C 03:AE4C: 8D D1 06  STA ram_obj_spd_X + $09
- - - - - - 0x00EE5F 03:AE4F: AD 6A 06  LDA ram_obj_pos_Y + $02
- - - - - - 0x00EE62 03:AE52: 8D 71 06  STA ram_obj_pos_Y + $09
- - - - - - 0x00EE65 03:AE55: AD E0 06  LDA ram_obj_spd_Y + $02
- - - - - - 0x00EE68 03:AE58: 8D E7 06  STA ram_obj_spd_Y + $09
- - - - - - 0x00EE6B 03:AE5B: A9 00     LDA #$00
- - - - - - 0x00EE6D 03:AE5D: 8D 81 07  STA ram_0778_unk + $09
- - - - - - 0x00EE70 03:AE60: A9 C2     LDA #$C2
- - - - - - 0x00EE72 03:AE62: 8D BB 06  STA ram_06B2_obj + $09
- - - - - - 0x00EE75 03:AE65: 38        SEC
- - - - - - 0x00EE76 03:AE66: 60        RTS



ofs_017_0x00EE77_60:
- - - - - - 0x00EE77 03:AE67: A5 8D     LDA ram_008D
- - - - - - 0x00EE79 03:AE69: 10 43     BPL bra_AEAE
- - - - - - 0x00EE7B 03:AE6B: AD 43 03  LDA ram_0343
- - - - - - 0x00EE7E 03:AE6E: D0 3E     BNE bra_AEAE
- - - - - - 0x00EE80 03:AE70: 38        SEC
- - - - - - 0x00EE81 03:AE71: 60        RTS



ofs_017_0x00EE82_62:
C - - J - - 0x00EE82 03:AE72: A5 64     LDA ram_0064
C - - - - - 0x00EE84 03:AE74: C9 02     CMP #$02
C - - - - - 0x00EE86 03:AE76: 90 14     BCC bra_AE8C
C - - - - - 0x00EE88 03:AE78: 20 58 97  JSR sub_0x009768
C - - - - - 0x00EE8B 03:AE7B: 90 0D     BCC bra_AE8A
- - - - - - 0x00EE8D 03:AE7D: A0 00     LDY #$00
- - - - - - 0x00EE8F 03:AE7F: 20 92 AE  JSR sub_AE92
- - - - - - 0x00EE92 03:AE82: B0 2A     BCS bra_AEAE
- - - - - - 0x00EE94 03:AE84: C8        INY
- - - - - - 0x00EE95 03:AE85: 20 92 AE  JSR sub_AE92
- - - - - - 0x00EE98 03:AE88: B0 24     BCS bra_AEAE
bra_AE8A:
C - - - - - 0x00EE9A 03:AE8A: 38        SEC
C - - - - - 0x00EE9B 03:AE8B: 60        RTS
bra_AE8C:
- - - - - - 0x00EE9C 03:AE8C: FE 78 07  INC ram_0778_unk,X
- - - - - - 0x00EE9F 03:AE8F: 4C B4 AE  JMP loc_AEB4



sub_AE92:
- - - - - - 0x00EEA2 03:AE92: B9 82 07  LDA ram_0782_unk,Y
- - - - - - 0x00EEA5 03:AE95: F0 17     BEQ bra_AEAE
- - - - - - 0x00EEA7 03:AE97: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x00EEAA 03:AE9A: 18        CLC
- - - - - - 0x00EEAB 03:AE9B: 69 50     ADC #$50
- - - - - - 0x00EEAD 03:AE9D: C9 10     CMP #$10
- - - - - - 0x00EEAF 03:AE9F: 60        RTS



ofs_017_0x00EEB0_56:
C - - J - - 0x00EEB0 03:AEA0: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00EEB3 03:AEA3: 30 0B     BMI bra_AEB0
C - - - - - 0x00EEB5 03:AEA5: A9 0A     LDA #$0A
C - - - - - 0x00EEB7 03:AEA7: 8D A1 05  STA ram_05A1
bra_AEAA:
C - - - - - 0x00EEBA 03:AEAA: A9 FF     LDA #$FF
C - - - - - 0x00EEBC 03:AEAC: 85 D3     STA ram_00D3
bra_AEAE:
C - - - - - 0x00EEBE 03:AEAE: 18        CLC
C - - - - - 0x00EEBF 03:AEAF: 60        RTS
bra_AEB0:
C - - - - - 0x00EEC0 03:AEB0: A5 64     LDA ram_0064
C - - - - - 0x00EEC2 03:AEB2: D0 F6     BNE bra_AEAA
loc_AEB4:
C - - - - - 0x00EEC4 03:AEB4: 20 AF F6  JSR sub_0x01F6BF
C - - - - - 0x00EEC7 03:AEB7: 38        SEC
C - - - - - 0x00EEC8 03:AEB8: 60        RTS



ofs_017_0x00EEC9_10:
C - - J - - 0x00EEC9 03:AEB9: A5 0A     LDA ram_000A
C - - - - - 0x00EECB 03:AEBB: 0A        ASL
C - - - - - 0x00EECC 03:AEBC: A8        TAY
C - - - - - 0x00EECD 03:AEBD: B9 CC AE  LDA tbl_AECB + $01,Y
C - - - - - 0x00EED0 03:AEC0: 48        PHA
C - - - - - 0x00EED1 03:AEC1: B9 CB AE  LDA tbl_AECB,Y
C - - - - - 0x00EED4 03:AEC4: 20 E6 86  JSR sub_0x0086F6
C - - - - - 0x00EED7 03:AEC7: 68        PLA
C - - - - - 0x00EED8 03:AEC8: 4C E9 88  JMP loc_0x0088F9



tbl_AECB:
; 00
- D 1 - - - 0x00EEDB 03:AECB: 2E        .byte con_chr_bank + $2E   ; 
- D 1 - - - 0x00EEDC 03:AECC: 00        .byte $00   ; 
; 01
- D 1 - - - 0x00EEDD 03:AECD: 6C        .byte con_chr_bank + $6C   ; 
- D 1 - - - 0x00EEDE 03:AECE: 06        .byte $06   ; 
; 02
- D 1 - - - 0x00EEDF 03:AECF: 2F        .byte con_chr_bank + $2F   ; 
- D 1 - - - 0x00EEE0 03:AED0: 08        .byte $08   ; 
; 03
- D 1 - - - 0x00EEE1 03:AED1: 6C        .byte con_chr_bank + $6C   ; 
- D 1 - - - 0x00EEE2 03:AED2: 02        .byte $02   ; 
; 04
- D 1 - - - 0x00EEE3 03:AED3: 2F        .byte con_chr_bank + $2F   ; 
- D 1 - - - 0x00EEE4 03:AED4: 01        .byte $01   ; 
; 05
- - - - - - 0x00EEE5 03:AED5: 2F        .byte con_chr_bank + $2F   ; 
- - - - - - 0x00EEE6 03:AED6: 05        .byte $05   ; 
; 06
- D 1 - - - 0x00EEE7 03:AED7: 29        .byte con_chr_bank + $29   ; 
- D 1 - - - 0x00EEE8 03:AED8: 14        .byte $14   ; 
; 07
- D 1 - - - 0x00EEE9 03:AED9: 2C        .byte con_chr_bank + $2C   ; 
- D 1 - - - 0x00EEEA 03:AEDA: 15        .byte $15   ; 
; 08
- D 1 - - - 0x00EEEB 03:AEDB: 2B        .byte con_chr_bank + $2B   ; 
- D 1 - - - 0x00EEEC 03:AEDC: 1A        .byte $1A   ; 
; 09
- D 1 - - - 0x00EEED 03:AEDD: 2A        .byte con_chr_bank + $2A   ; 
- D 1 - - - 0x00EEEE 03:AEDE: 18        .byte $18   ; 
; 0A
- D 1 - - - 0x00EEEF 03:AEDF: 2C        .byte con_chr_bank + $2C   ; 
- D 1 - - - 0x00EEF0 03:AEE0: 1B        .byte $1B   ; 



sub_AEE1:
C - - - - - 0x00EEF1 03:AEE1: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00EEF4 03:AEE4: C9 E0     CMP #$E0
C - - - - - 0x00EEF6 03:AEE6: B0 C6     BCS bra_AEAE
C - - - - - 0x00EEF8 03:AEE8: A4 75     LDY ram_stage
C - - - - - 0x00EEFA 03:AEEA: B9 29 AF  LDA tbl_AF29,Y
C - - - - - 0x00EEFD 03:AEED: A8        TAY
C - - - - - 0x00EEFE 03:AEEE: 84 91     STY ram_0091
C - - - - - 0x00EF00 03:AEF0: A9 00     LDA #$00
C - - - - - 0x00EF02 03:AEF2: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00EF05 03:AEF5: 90 24     BCC bra_AF1B
C - - - - - 0x00EF07 03:AEF7: A5 75     LDA ram_stage
C - - - - - 0x00EF09 03:AEF9: F0 12     BEQ bra_AF0D
C - - - - - 0x00EF0B 03:AEFB: A4 91     LDY ram_0091
C - - - - - 0x00EF0D 03:AEFD: A9 08     LDA #$08
C - - - - - 0x00EF0F 03:AEFF: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00EF12 03:AF02: 90 17     BCC bra_AF1B
C - - - - - 0x00EF14 03:AF04: A4 91     LDY ram_0091
C - - - - - 0x00EF16 03:AF06: A9 F8     LDA #$F8
C - - - - - 0x00EF18 03:AF08: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00EF1B 03:AF0B: 90 0E     BCC bra_AF1B
bra_AF0D:
C - - - - - 0x00EF1D 03:AF0D: A9 04     LDA #$04
C - - - - - 0x00EF1F 03:AF0F: 20 62 88  JSR sub_0x008872
C - - - - - 0x00EF22 03:AF12: A9 0C     LDA #$0C
C - - - - - 0x00EF24 03:AF14: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00EF27 03:AF17: A9 00     LDA #$00
C - - - - - 0x00EF29 03:AF19: 38        SEC
C - - - - - 0x00EF2A 03:AF1A: 60        RTS
bra_AF1B:
C - - - - - 0x00EF2B 03:AF1B: BD 0A 07  LDA ram_070A_obj,X
C - - - - - 0x00EF2E 03:AF1E: 10 8E     BPL bra_AEAE
C - - - - - 0x00EF30 03:AF20: 29 7F     AND #$7F
C - - - - - 0x00EF32 03:AF22: 9D 0A 07  STA ram_070A_obj,X
C - - - - - 0x00EF35 03:AF25: A9 FF     LDA #$FF
C - - - - - 0x00EF37 03:AF27: 38        SEC
C - - - - - 0x00EF38 03:AF28: 60        RTS



tbl_AF29:
- D 1 - - - 0x00EF39 03:AF29: 08        .byte $08   ; 00
- - - - - - 0x00EF3A 03:AF2A: 08        .byte $08   ; 01
- - - - - - 0x00EF3B 03:AF2B: 08        .byte $08   ; 02
- - - - - - 0x00EF3C 03:AF2C: 08        .byte $08   ; 03
- D 1 - - - 0x00EF3D 03:AF2D: 18        .byte $18   ; 04



sub_AF2E:
C - - - - - 0x00EF3E 03:AF2E: 20 34 AF  JSR sub_AF34
C - - - - - 0x00EF41 03:AF31: 4C C0 8F  JMP loc_0x008FD0



sub_AF34:
C - - - - - 0x00EF44 03:AF34: 20 78 91  JSR sub_0x009188_stage_AND_01
C - - - - - 0x00EF47 03:AF37: F0 0E     BEQ bra_AF47
C - - - - - 0x00EF49 03:AF39: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00EF4C 03:AF3C: B9 71 AF  LDA tbl_AF71,Y
C - - - - - 0x00EF4F 03:AF3F: 85 00     STA ram_0000
C - - - - - 0x00EF51 03:AF41: B9 72 AF  LDA tbl_AF71 + $01,Y
C - - - - - 0x00EF54 03:AF44: 85 01     STA ram_0001
C - - - - - 0x00EF56 03:AF46: 60        RTS
bra_AF47:
C - - - - - 0x00EF57 03:AF47: A9 F0     LDA #$F0
C - - - - - 0x00EF59 03:AF49: BC B2 06  LDY ram_06B2_obj,X
C - - - - - 0x00EF5C 03:AF4C: 30 02     BMI bra_AF50
C - - - - - 0x00EF5E 03:AF4E: A9 10     LDA #$10
bra_AF50:
C - - - - - 0x00EF60 03:AF50: 85 00     STA ram_0000
C - - - - - 0x00EF62 03:AF52: A0 08     LDY #$08
C - - - - - 0x00EF64 03:AF54: A5 75     LDA ram_stage
C - - - - - 0x00EF66 03:AF56: D0 02     BNE bra_AF5A
C - - - - - 0x00EF68 03:AF58: A0 00     LDY #$00
bra_AF5A:
C - - - - - 0x00EF6A 03:AF5A: 84 01     STY ram_0001
C - - - - - 0x00EF6C 03:AF5C: A5 75     LDA ram_stage
C - - - - - 0x00EF6E 03:AF5E: C9 04     CMP #$04
C - - - - - 0x00EF70 03:AF60: D0 0E     BNE bra_AF70_RTS
C - - - - - 0x00EF72 03:AF62: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00EF75 03:AF65: 18        CLC
C - - - - - 0x00EF76 03:AF66: 69 10     ADC #$10
C - - - - - 0x00EF78 03:AF68: C9 20     CMP #$20
C - - - - - 0x00EF7A 03:AF6A: B0 04     BCS bra_AF70_RTS
C - - - - - 0x00EF7C 03:AF6C: A9 00     LDA #$00
C - - - - - 0x00EF7E 03:AF6E: 85 00     STA ram_0000
bra_AF70_RTS:
C - - - - - 0x00EF80 03:AF70: 60        RTS



tbl_AF71:
- D 1 - - - 0x00EF81 03:AF71: 18        .byte $18, $0C   ; 00
- - - - - - 0x00EF83 03:AF73: 18        .byte $18, $18   ; 10
- D 1 - - - 0x00EF85 03:AF75: 00        .byte $00, $18   ; 20
- - - - - - 0x00EF87 03:AF77: E8        .byte $E8, $18   ; 30
- D 1 - - - 0x00EF89 03:AF79: E8        .byte $E8, $0C   ; 40
- - - - - - 0x00EF8B 03:AF7B: E8        .byte $E8, $00   ; 50
- D 1 - - - 0x00EF8D 03:AF7D: 00        .byte $00, $00   ; 60
- - - - - - 0x00EF8F 03:AF7F: 18        .byte $18, $00   ; 70



tbl_AF81:
- D 1 - - - 0x00EF91 03:AF81: 8F AF     .word _off010_AF8F_00
- D 1 - - - 0x00EF93 03:AF83: 43 B0     .word _off010_B043_02
- D 1 - - - 0x00EF95 03:AF85: 0F B1     .word _off010_B10F_04
- D 1 - - - 0x00EF97 03:AF87: 92 B1     .word _off010_B192_06
- D 1 - - - 0x00EF99 03:AF89: 30 B2     .word _off010_B230_08
- D 1 - - - 0x00EF9B 03:AF8B: CA B2     .word _off010_B2CA_0A
- D 1 - - - 0x00EF9D 03:AF8D: 4A B1     .word _off010_B14A_0C



_off010_AF8F_00:
- D 1 - I - 0x00EF9F 03:AF8F: 18        .byte $18   ; 
- D 1 - I - 0x00EFA0 03:AF90: 1B        .byte $1B   ; 
- D 1 - I - 0x00EFA1 03:AF91: 23        .byte $23   ; 
- D 1 - I - 0x00EFA2 03:AF92: 00        .byte $00   ; 
- D 1 - I - 0x00EFA3 03:AF93: 21        .byte $21   ; 
- D 1 - I - 0x00EFA4 03:AF94: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFA5 03:AF95: 0B        .byte $0B   ; 
- D 1 - I - 0x00EFA6 03:AF96: 90        .byte $90   ; 
- D 1 - I - 0x00EFA7 03:AF97: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFA8 03:AF98: 11        .byte $11   ; 
- D 1 - I - 0x00EFA9 03:AF99: 0C        .byte $0C   ; 
- D 1 - I - 0x00EFAA 03:AF9A: 06        .byte $06   ; 
- D 1 - I - 0x00EFAB 03:AF9B: 20        .byte $20   ; 
- D 1 - I - 0x00EFAC 03:AF9C: 83        .byte $83   ; 
- D 1 - I - 0x00EFAD 03:AF9D: 18        .byte $18   ; 
- D 1 - I - 0x00EFAE 03:AF9E: 04        .byte $04   ; 
- D 1 - I - 0x00EFAF 03:AF9F: 10        .byte $10   ; 
- D 1 - I - 0x00EFB0 03:AFA0: 00        .byte $00   ; 
- D 1 - I - 0x00EFB1 03:AFA1: 03        .byte $03   ; 
- D 1 - I - 0x00EFB2 03:AFA2: 12        .byte $12   ; 
- D 1 - I - 0x00EFB3 03:AFA3: 03        .byte $03   ; 
- D 1 - I - 0x00EFB4 03:AFA4: 00        .byte $00   ; 
- - - - - - 0x00EFB5 03:AFA5: 07        .byte $07   ; 
- - - - - - 0x00EFB6 03:AFA6: 0B        .byte $0B   ; 
- D 1 - I - 0x00EFB7 03:AFA7: 10        .byte $10   ; 
- D 1 - I - 0x00EFB8 03:AFA8: 01        .byte $01   ; 
- D 1 - I - 0x00EFB9 03:AFA9: 01        .byte $01   ; 
- D 1 - I - 0x00EFBA 03:AFAA: 21        .byte $21   ; 
- D 1 - I - 0x00EFBB 03:AFAB: 18        .byte $18   ; 
- D 1 - I - 0x00EFBC 03:AFAC: 00        .byte $00   ; 
- D 1 - I - 0x00EFBD 03:AFAD: 0C        .byte $0C   ; 
- D 1 - I - 0x00EFBE 03:AFAE: 02        .byte $02   ; 
- D 1 - I - 0x00EFBF 03:AFAF: 01        .byte $01   ; 
- D 1 - I - 0x00EFC0 03:AFB0: 08        .byte $08   ; 
- D 1 - I - 0x00EFC1 03:AFB1: 16        .byte $16   ; 
- D 1 - I - 0x00EFC2 03:AFB2: 04        .byte $04   ; 
- D 1 - I - 0x00EFC3 03:AFB3: 17        .byte $17   ; 
- D 1 - I - 0x00EFC4 03:AFB4: 00        .byte $00   ; 
- D 1 - I - 0x00EFC5 03:AFB5: 1B        .byte $1B   ; 
- D 1 - I - 0x00EFC6 03:AFB6: 00        .byte $00   ; 
- D 1 - I - 0x00EFC7 03:AFB7: 19        .byte $19   ; 
- D 1 - I - 0x00EFC8 03:AFB8: 00        .byte $00   ; 
- D 1 - I - 0x00EFC9 03:AFB9: 05        .byte $05   ; 
- D 1 - I - 0x00EFCA 03:AFBA: 0F        .byte $0F   ; 
- D 1 - I - 0x00EFCB 03:AFBB: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFCC 03:AFBC: 2F        .byte $2F   ; 
- D 1 - I - 0x00EFCD 03:AFBD: 22        .byte $22   ; 
- D 1 - I - 0x00EFCE 03:AFBE: 11        .byte $11   ; 
- D 1 - I - 0x00EFCF 03:AFBF: 01        .byte $01   ; 
- D 1 - I - 0x00EFD0 03:AFC0: 20        .byte $20   ; 
- D 1 - I - 0x00EFD1 03:AFC1: 0A        .byte $0A   ; 
- D 1 - I - 0x00EFD2 03:AFC2: 6D        .byte $6D   ; 
- D 1 - I - 0x00EFD3 03:AFC3: 22        .byte $22   ; 
- D 1 - I - 0x00EFD4 03:AFC4: 12        .byte $12   ; 
- D 1 - I - 0x00EFD5 03:AFC5: 01        .byte $01   ; 
- D 1 - I - 0x00EFD6 03:AFC6: 3F        .byte $3F   ; 
- D 1 - I - 0x00EFD7 03:AFC7: 0C        .byte $0C   ; 
- D 1 - I - 0x00EFD8 03:AFC8: 02        .byte $02   ; 
- D 1 - I - 0x00EFD9 03:AFC9: 22        .byte $22   ; 
- D 1 - I - 0x00EFDA 03:AFCA: 01        .byte $01   ; 
- D 1 - I - 0x00EFDB 03:AFCB: 01        .byte $01   ; 
- D 1 - I - 0x00EFDC 03:AFCC: 10        .byte $10   ; 
- D 1 - I - 0x00EFDD 03:AFCD: 0B        .byte $0B   ; 
- D 1 - I - 0x00EFDE 03:AFCE: 9C        .byte $9C   ; 
- D 1 - I - 0x00EFDF 03:AFCF: 24        .byte $24   ; 
- D 1 - I - 0x00EFE0 03:AFD0: 01        .byte $01   ; 
- - - - - - 0x00EFE1 03:AFD1: 02        .byte $02   ; 
- - - - - - 0x00EFE2 03:AFD2: 00        .byte $00   ; 
- - - - - - 0x00EFE3 03:AFD3: FE        .byte $FE   ; 
- - - - - - 0x00EFE4 03:AFD4: FE        .byte $FE   ; 
- D 1 - I - 0x00EFE5 03:AFD5: 06        .byte $06   ; 
- D 1 - I - 0x00EFE6 03:AFD6: 00        .byte $00   ; 
- D 1 - I - 0x00EFE7 03:AFD7: 1A        .byte $1A   ; 
- D 1 - I - 0x00EFE8 03:AFD8: 00        .byte $00   ; 
- - - - - - 0x00EFE9 03:AFD9: 10        .byte $10   ; 
- - - - - - 0x00EFEA 03:AFDA: 02        .byte $02   ; 
- - - - - - 0x00EFEB 03:AFDB: 01        .byte $01   ; 
- - - - - - 0x00EFEC 03:AFDC: 10        .byte $10   ; 
- - - - - - 0x00EFED 03:AFDD: 2B        .byte $2B   ; 
- - - - - - 0x00EFEE 03:AFDE: 05        .byte $05   ; 
- - - - - - 0x00EFEF 03:AFDF: 01        .byte $01   ; 
- - - - - - 0x00EFF0 03:AFE0: 0E        .byte $0E   ; 
- - - - - - 0x00EFF1 03:AFE1: 2B        .byte $2B   ; 
- - - - - - 0x00EFF2 03:AFE2: 08        .byte $08   ; 
- - - - - - 0x00EFF3 03:AFE3: 01        .byte $01   ; 
- - - - - - 0x00EFF4 03:AFE4: 10        .byte $10   ; 
- - - - - - 0x00EFF5 03:AFE5: 06        .byte $06   ; 
- - - - - - 0x00EFF6 03:AFE6: 00        .byte $00   ; 
- - - - - - 0x00EFF7 03:AFE7: 2B        .byte $2B   ; 
- - - - - - 0x00EFF8 03:AFE8: 08        .byte $08   ; 
- - - - - - 0x00EFF9 03:AFE9: 01        .byte $01   ; 
- - - - - - 0x00EFFA 03:AFEA: 10        .byte $10   ; 
- - - - - - 0x00EFFB 03:AFEB: 2B        .byte $2B   ; 
- - - - - - 0x00EFFC 03:AFEC: 05        .byte $05   ; 
- - - - - - 0x00EFFD 03:AFED: 01        .byte $01   ; 
- - - - - - 0x00EFFE 03:AFEE: 0E        .byte $0E   ; 
- - - - - - 0x00EFFF 03:AFEF: 2B        .byte $2B   ; 
- - - - - - 0x00F000 03:AFF0: 08        .byte $08   ; 
- - - - - - 0x00F001 03:AFF1: 01        .byte $01   ; 
- - - - - - 0x00F002 03:AFF2: 10        .byte $10   ; 
- - - - - - 0x00F003 03:AFF3: 18        .byte $18   ; 
- - - - - - 0x00F004 03:AFF4: 00        .byte $00   ; 
- D 1 - I - 0x00F005 03:AFF5: 1C        .byte $1C   ; 
- D 1 - I - 0x00F006 03:AFF6: 00        .byte $00   ; 
- D 1 - I - 0x00F007 03:AFF7: 06        .byte $06   ; 
- D 1 - I - 0x00F008 03:AFF8: 00        .byte $00   ; 
- D 1 - I - 0x00F009 03:AFF9: 1E        .byte $1E   ; 
- D 1 - I - 0x00F00A 03:AFFA: 00        .byte $00   ; 
- D 1 - I - 0x00F00B 03:AFFB: 10        .byte $10   ; 
- D 1 - I - 0x00F00C 03:AFFC: 03        .byte $03   ; 
- D 1 - I - 0x00F00D 03:AFFD: 01        .byte $01   ; 
- D 1 - I - 0x00F00E 03:AFFE: 20        .byte $20   ; 
- D 1 - I - 0x00F00F 03:AFFF: 2B        .byte $2B   ; 
- D 1 - I - 0x00F010 03:B000: 04        .byte $04   ; 
- D 1 - I - 0x00F011 03:B001: 08        .byte $08   ; 
- D 1 - I - 0x00F012 03:B002: 02        .byte $02   ; 
- D 1 - I - 0x00F013 03:B003: 2B        .byte $2B   ; 
- D 1 - I - 0x00F014 03:B004: 03        .byte $03   ; 
- D 1 - I - 0x00F015 03:B005: 01        .byte $01   ; 
- D 1 - I - 0x00F016 03:B006: 21        .byte $21   ; 
- D 1 - I - 0x00F017 03:B007: 18        .byte $18   ; 
- D 1 - I - 0x00F018 03:B008: 00        .byte $00   ; 
- D 1 - I - 0x00F019 03:B009: 10        .byte $10   ; 
- D 1 - I - 0x00F01A 03:B00A: 04        .byte $04   ; 
- D 1 - I - 0x00F01B 03:B00B: 03        .byte $03   ; 
- D 1 - I - 0x00F01C 03:B00C: 02        .byte $02   ; 
- D 1 - I - 0x00F01D 03:B00D: 18        .byte $18   ; 
- D 1 - I - 0x00F01E 03:B00E: 00        .byte $00   ; 
- D 1 - I - 0x00F01F 03:B00F: 10        .byte $10   ; 
- D 1 - I - 0x00F020 03:B010: 02        .byte $02   ; 
- D 1 - I - 0x00F021 03:B011: 01        .byte $01   ; 
- D 1 - I - 0x00F022 03:B012: 10        .byte $10   ; 
- D 1 - I - 0x00F023 03:B013: 2B        .byte $2B   ; 
- D 1 - I - 0x00F024 03:B014: 05        .byte $05   ; 
- D 1 - I - 0x00F025 03:B015: 01        .byte $01   ; 
- D 1 - I - 0x00F026 03:B016: 0E        .byte $0E   ; 
- D 1 - I - 0x00F027 03:B017: 2B        .byte $2B   ; 
- D 1 - I - 0x00F028 03:B018: 05        .byte $05   ; 
- D 1 - I - 0x00F029 03:B019: 01        .byte $01   ; 
- D 1 - I - 0x00F02A 03:B01A: 0E        .byte $0E   ; 
- D 1 - I - 0x00F02B 03:B01B: 2B        .byte $2B   ; 
- D 1 - I - 0x00F02C 03:B01C: 08        .byte $08   ; 
- D 1 - I - 0x00F02D 03:B01D: 01        .byte $01   ; 
- D 1 - I - 0x00F02E 03:B01E: 10        .byte $10   ; 
- D 1 - I - 0x00F02F 03:B01F: 18        .byte $18   ; 
- D 1 - I - 0x00F030 03:B020: 00        .byte $00   ; 
- D 1 - I - 0x00F031 03:B021: 11        .byte $11   ; 
- D 1 - I - 0x00F032 03:B022: 00        .byte $00   ; 
- D 1 - I - 0x00F033 03:B023: 10        .byte $10   ; 
- D 1 - I - 0x00F034 03:B024: 00        .byte $00   ; 
- D 1 - I - 0x00F035 03:B025: 03        .byte $03   ; 
- D 1 - I - 0x00F036 03:B026: 12        .byte $12   ; 
- D 1 - I - 0x00F037 03:B027: 03        .byte $03   ; 
- D 1 - I - 0x00F038 03:B028: 03        .byte $03   ; 
- D 1 - I - 0x00F039 03:B029: 18        .byte $18   ; 
- D 1 - I - 0x00F03A 03:B02A: 00        .byte $00   ; 
- - - - - - 0x00F03B 03:B02B: 10        .byte $10   ; 
- - - - - - 0x00F03C 03:B02C: 05        .byte $05   ; 
- - - - - - 0x00F03D 03:B02D: 01        .byte $01   ; 
- - - - - - 0x00F03E 03:B02E: 0E        .byte $0E   ; 
- - - - - - 0x00F03F 03:B02F: 18        .byte $18   ; 
- - - - - - 0x00F040 03:B030: 3E        .byte $3E   ; 
- - - - - - 0x00F041 03:B031: 06        .byte $06   ; 
- - - - - - 0x00F042 03:B032: 00        .byte $00   ; 
- - - - - - 0x00F043 03:B033: 18        .byte $18   ; 
- - - - - - 0x00F044 03:B034: 00        .byte $00   ; 
- D 1 - I - 0x00F045 03:B035: 1F        .byte $1F   ; 
- D 1 - I - 0x00F046 03:B036: 00        .byte $00   ; 
- D 1 - I - 0x00F047 03:B037: 18        .byte $18   ; 
- D 1 - I - 0x00F048 03:B038: 01        .byte $01   ; 
- D 1 - I - 0x00F049 03:B039: 10        .byte $10   ; 
- D 1 - I - 0x00F04A 03:B03A: 02        .byte $02   ; 
- D 1 - I - 0x00F04B 03:B03B: 01        .byte $01   ; 
- D 1 - I - 0x00F04C 03:B03C: 10        .byte $10   ; 
- D 1 - I - 0x00F04D 03:B03D: 2B        .byte $2B   ; 
- D 1 - I - 0x00F04E 03:B03E: 05        .byte $05   ; 
- D 1 - I - 0x00F04F 03:B03F: 01        .byte $01   ; 
- D 1 - I - 0x00F050 03:B040: 0E        .byte $0E   ; 
- D 1 - I - 0x00F051 03:B041: 18        .byte $18   ; 
- D 1 - I - 0x00F052 03:B042: 03        .byte $03   ; 



_off010_B043_02:
- D 1 - I - 0x00F053 03:B043: 23        .byte $23   ; 
- D 1 - I - 0x00F054 03:B044: 00        .byte $00   ; 
- D 1 - I - 0x00F055 03:B045: 22        .byte $22   ; 
- D 1 - I - 0x00F056 03:B046: 00        .byte $00   ; 
- D 1 - I - 0x00F057 03:B047: 0C        .byte $0C   ; 
- D 1 - I - 0x00F058 03:B048: 05        .byte $05   ; 
- D 1 - I - 0x00F059 03:B049: 62        .byte $62   ; 
- D 1 - I - 0x00F05A 03:B04A: 00        .byte $00   ; 
- D 1 - I - 0x00F05B 03:B04B: 56        .byte $56   ; 
- D 1 - I - 0x00F05C 03:B04C: 00        .byte $00   ; 
- D 1 - I - 0x00F05D 03:B04D: 0B        .byte $0B   ; 
- D 1 - I - 0x00F05E 03:B04E: 90        .byte $90   ; 
- D 1 - I - 0x00F05F 03:B04F: 0C        .byte $0C   ; 
- D 1 - I - 0x00F060 03:B050: 08        .byte $08   ; 
- D 1 - I - 0x00F061 03:B051: 18        .byte $18   ; 
- D 1 - I - 0x00F062 03:B052: 05        .byte $05   ; 
- D 1 - I - 0x00F063 03:B053: 22        .byte $22   ; 
- D 1 - I - 0x00F064 03:B054: 17        .byte $17   ; 
- D 1 - I - 0x00F065 03:B055: 01        .byte $01   ; 
- D 1 - I - 0x00F066 03:B056: 10        .byte $10   ; 
- D 1 - I - 0x00F067 03:B057: 22        .byte $22   ; 
- D 1 - I - 0x00F068 03:B058: 18        .byte $18   ; 
- D 1 - I - 0x00F069 03:B059: 01        .byte $01   ; 
- D 1 - I - 0x00F06A 03:B05A: 04        .byte $04   ; 
- D 1 - I - 0x00F06B 03:B05B: 22        .byte $22   ; 
- D 1 - I - 0x00F06C 03:B05C: 19        .byte $19   ; 
- D 1 - I - 0x00F06D 03:B05D: 01        .byte $01   ; 
- D 1 - I - 0x00F06E 03:B05E: 28        .byte $28   ; 
- D 1 - I - 0x00F06F 03:B05F: 22        .byte $22   ; 
- D 1 - I - 0x00F070 03:B060: 1A        .byte $1A   ; 
- D 1 - I - 0x00F071 03:B061: 01        .byte $01   ; 
- D 1 - I - 0x00F072 03:B062: 06        .byte $06   ; 
- D 1 - I - 0x00F073 03:B063: 18        .byte $18   ; 
- D 1 - I - 0x00F074 03:B064: 06        .byte $06   ; 
- D 1 - I - 0x00F075 03:B065: 0C        .byte $0C   ; 
- D 1 - I - 0x00F076 03:B066: 02        .byte $02   ; 
- D 1 - I - 0x00F077 03:B067: 01        .byte $01   ; 
- D 1 - I - 0x00F078 03:B068: 08        .byte $08   ; 
- D 1 - I - 0x00F079 03:B069: 25        .byte $25   ; 
- D 1 - I - 0x00F07A 03:B06A: 06        .byte $06   ; 
- D 1 - I - 0x00F07B 03:B06B: 2D        .byte $2D   ; 
- D 1 - I - 0x00F07C 03:B06C: 0D        .byte $0D   ; 
- D 1 - I - 0x00F07D 03:B06D: 29        .byte $29   ; 
- D 1 - I - 0x00F07E 03:B06E: 1D        .byte $1D   ; 
- D 1 - I - 0x00F07F 03:B06F: 18        .byte $18   ; 
- D 1 - I - 0x00F080 03:B070: 0B        .byte $0B   ; 
- D 1 - I - 0x00F081 03:B071: 05        .byte $05   ; 
- D 1 - I - 0x00F082 03:B072: 0F        .byte $0F   ; 
- D 1 - I - 0x00F083 03:B073: 22        .byte $22   ; 
- D 1 - I - 0x00F084 03:B074: 1B        .byte $1B   ; 
- D 1 - I - 0x00F085 03:B075: 01        .byte $01   ; 
- D 1 - I - 0x00F086 03:B076: 3C        .byte $3C   ; 
- D 1 - I - 0x00F087 03:B077: 22        .byte $22   ; 
- D 1 - I - 0x00F088 03:B078: 1C        .byte $1C   ; 
- D 1 - I - 0x00F089 03:B079: 01        .byte $01   ; 
- D 1 - I - 0x00F08A 03:B07A: 42        .byte $42   ; 
- D 1 - I - 0x00F08B 03:B07B: 0B        .byte $0B   ; 
- D 1 - I - 0x00F08C 03:B07C: 53        .byte $53   ; 
- D 1 - I - 0x00F08D 03:B07D: 0A        .byte $0A   ; 
- D 1 - I - 0x00F08E 03:B07E: 21        .byte $21   ; 
- D 1 - I - 0x00F08F 03:B07F: 22        .byte $22   ; 
- D 1 - I - 0x00F090 03:B080: 1D        .byte $1D   ; 
- D 1 - I - 0x00F091 03:B081: 01        .byte $01   ; 
- D 1 - I - 0x00F092 03:B082: 18        .byte $18   ; 
- D 1 - I - 0x00F093 03:B083: 0C        .byte $0C   ; 
- D 1 - I - 0x00F094 03:B084: 02        .byte $02   ; 
- D 1 - I - 0x00F095 03:B085: 22        .byte $22   ; 
- D 1 - I - 0x00F096 03:B086: 05        .byte $05   ; 
- D 1 - I - 0x00F097 03:B087: 0B        .byte $0B   ; 
- D 1 - I - 0x00F098 03:B088: 9C        .byte $9C   ; 
- D 1 - I - 0x00F099 03:B089: 24        .byte $24   ; 
- D 1 - I - 0x00F09A 03:B08A: 00        .byte $00   ; 
- - - - - - 0x00F09B 03:B08B: FE        .byte $FE   ; 
- - - - - - 0x00F09C 03:B08C: FE        .byte $FE   ; 
- D 1 - I - 0x00F09D 03:B08D: 26        .byte $26   ; 
- D 1 - I - 0x00F09E 03:B08E: 00        .byte $00   ; 
- D 1 - I - 0x00F09F 03:B08F: 22        .byte $22   ; 
- D 1 - I - 0x00F0A0 03:B090: 1E        .byte $1E   ; 
- D 1 - I - 0x00F0A1 03:B091: 03        .byte $03   ; 
- D 1 - I - 0x00F0A2 03:B092: 04        .byte $04   ; 
- D 1 - I - 0x00F0A3 03:B093: 29        .byte $29   ; 
- D 1 - I - 0x00F0A4 03:B094: 1C        .byte $1C   ; 
- D 1 - I - 0x00F0A5 03:B095: 07        .byte $07   ; 
- D 1 - I - 0x00F0A6 03:B096: 27        .byte $27   ; 
- D 1 - I - 0x00F0A7 03:B097: 06        .byte $06   ; 
- D 1 - I - 0x00F0A8 03:B098: 00        .byte $00   ; 
- D 1 - I - 0x00F0A9 03:B099: 22        .byte $22   ; 
- D 1 - I - 0x00F0AA 03:B09A: 1B        .byte $1B   ; 
- D 1 - I - 0x00F0AB 03:B09B: 01        .byte $01   ; 
- D 1 - I - 0x00F0AC 03:B09C: 28        .byte $28   ; 
- D 1 - I - 0x00F0AD 03:B09D: 18        .byte $18   ; 
- D 1 - I - 0x00F0AE 03:B09E: 08        .byte $08   ; 
- D 1 - I - 0x00F0AF 03:B09F: 28        .byte $28   ; 
- D 1 - I - 0x00F0B0 03:B0A0: 00        .byte $00   ; 
- D 1 - I - 0x00F0B1 03:B0A1: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0B2 03:B0A2: 02        .byte $02   ; 
- D 1 - I - 0x00F0B3 03:B0A3: 01        .byte $01   ; 
- D 1 - I - 0x00F0B4 03:B0A4: 08        .byte $08   ; 
- D 1 - I - 0x00F0B5 03:B0A5: 22        .byte $22   ; 
- D 1 - I - 0x00F0B6 03:B0A6: 1B        .byte $1B   ; 
- D 1 - I - 0x00F0B7 03:B0A7: 01        .byte $01   ; 
- D 1 - I - 0x00F0B8 03:B0A8: 28        .byte $28   ; 
- D 1 - I - 0x00F0B9 03:B0A9: 2E        .byte $2E   ; 
- D 1 - I - 0x00F0BA 03:B0AA: 00        .byte $00   ; 
- D 1 - I - 0x00F0BB 03:B0AB: 18        .byte $18   ; 
- D 1 - I - 0x00F0BC 03:B0AC: 08        .byte $08   ; 
- D 1 - I - 0x00F0BD 03:B0AD: 22        .byte $22   ; 
- D 1 - I - 0x00F0BE 03:B0AE: 20        .byte $20   ; 
- D 1 - I - 0x00F0BF 03:B0AF: 01        .byte $01   ; 
- D 1 - I - 0x00F0C0 03:B0B0: 14        .byte $14   ; 
- D 1 - I - 0x00F0C1 03:B0B1: 22        .byte $22   ; 
- D 1 - I - 0x00F0C2 03:B0B2: 20        .byte $20   ; 
- D 1 - I - 0x00F0C3 03:B0B3: 01        .byte $01   ; 
- D 1 - I - 0x00F0C4 03:B0B4: 14        .byte $14   ; 
- D 1 - I - 0x00F0C5 03:B0B5: 22        .byte $22   ; 
- D 1 - I - 0x00F0C6 03:B0B6: 19        .byte $19   ; 
- D 1 - I - 0x00F0C7 03:B0B7: 01        .byte $01   ; 
- D 1 - I - 0x00F0C8 03:B0B8: 28        .byte $28   ; 
- D 1 - I - 0x00F0C9 03:B0B9: 2E        .byte $2E   ; 
- D 1 - I - 0x00F0CA 03:B0BA: 00        .byte $00   ; 
- D 1 - I - 0x00F0CB 03:B0BB: 18        .byte $18   ; 
- D 1 - I - 0x00F0CC 03:B0BC: 0B        .byte $0B   ; 
- D 1 - I - 0x00F0CD 03:B0BD: 22        .byte $22   ; 
- D 1 - I - 0x00F0CE 03:B0BE: 21        .byte $21   ; 
- D 1 - I - 0x00F0CF 03:B0BF: 01        .byte $01   ; 
- D 1 - I - 0x00F0D0 03:B0C0: 14        .byte $14   ; 
- D 1 - I - 0x00F0D1 03:B0C1: 22        .byte $22   ; 
- D 1 - I - 0x00F0D2 03:B0C2: 21        .byte $21   ; 
- D 1 - I - 0x00F0D3 03:B0C3: 01        .byte $01   ; 
- D 1 - I - 0x00F0D4 03:B0C4: 11        .byte $11   ; 
- D 1 - I - 0x00F0D5 03:B0C5: 07        .byte $07   ; 
- D 1 - I - 0x00F0D6 03:B0C6: 3B        .byte $3B   ; 
- D 1 - I - 0x00F0D7 03:B0C7: 20        .byte $20   ; 
- D 1 - I - 0x00F0D8 03:B0C8: 42        .byte $42   ; 
- D 1 - I - 0x00F0D9 03:B0C9: 2F        .byte $2F   ; 
- D 1 - I - 0x00F0DA 03:B0CA: 06        .byte $06   ; 
- D 1 - I - 0x00F0DB 03:B0CB: 22        .byte $22   ; 
- D 1 - I - 0x00F0DC 03:B0CC: 1E        .byte $1E   ; 
- D 1 - I - 0x00F0DD 03:B0CD: 43        .byte $43   ; 
- D 1 - I - 0x00F0DE 03:B0CE: 47        .byte $47   ; 
- D 1 - I - 0x00F0DF 03:B0CF: 07        .byte $07   ; 
- D 1 - I - 0x00F0E0 03:B0D0: 45        .byte $45   ; 
- D 1 - I - 0x00F0E1 03:B0D1: 20        .byte $20   ; 
- D 1 - I - 0x00F0E2 03:B0D2: C4        .byte $C4   ; 
- D 1 - I - 0x00F0E3 03:B0D3: 40        .byte $40   ; 
- D 1 - I - 0x00F0E4 03:B0D4: 80        .byte $80   ; 
- D 1 - I - 0x00F0E5 03:B0D5: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0E6 03:B0D6: 02        .byte $02   ; 
- D 1 - I - 0x00F0E7 03:B0D7: 22        .byte $22   ; 
- D 1 - I - 0x00F0E8 03:B0D8: 00        .byte $00   ; 
- D 1 - I - 0x00F0E9 03:B0D9: 01        .byte $01   ; 
- D 1 - I - 0x00F0EA 03:B0DA: 06        .byte $06   ; 
- D 1 - I - 0x00F0EB 03:B0DB: 22        .byte $22   ; 
- D 1 - I - 0x00F0EC 03:B0DC: 17        .byte $17   ; 
- D 1 - I - 0x00F0ED 03:B0DD: 01        .byte $01   ; 
- D 1 - I - 0x00F0EE 03:B0DE: 18        .byte $18   ; 
- D 1 - I - 0x00F0EF 03:B0DF: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0F0 03:B0E0: 02        .byte $02   ; 
- D 1 - I - 0x00F0F1 03:B0E1: 22        .byte $22   ; 
- D 1 - I - 0x00F0F2 03:B0E2: 06        .byte $06   ; 
- D 1 - I - 0x00F0F3 03:B0E3: 01        .byte $01   ; 
- D 1 - I - 0x00F0F4 03:B0E4: 09        .byte $09   ; 
- D 1 - I - 0x00F0F5 03:B0E5: 22        .byte $22   ; 
- D 1 - I - 0x00F0F6 03:B0E6: 22        .byte $22   ; 
- D 1 - I - 0x00F0F7 03:B0E7: 01        .byte $01   ; 
- D 1 - I - 0x00F0F8 03:B0E8: 1C        .byte $1C   ; 
- D 1 - I - 0x00F0F9 03:B0E9: 22        .byte $22   ; 
- D 1 - I - 0x00F0FA 03:B0EA: 22        .byte $22   ; 
- D 1 - I - 0x00F0FB 03:B0EB: 01        .byte $01   ; 
- D 1 - I - 0x00F0FC 03:B0EC: 1C        .byte $1C   ; 
- D 1 - I - 0x00F0FD 03:B0ED: 0C        .byte $0C   ; 
- D 1 - I - 0x00F0FE 03:B0EE: 02        .byte $02   ; 
- D 1 - I - 0x00F0FF 03:B0EF: 22        .byte $22   ; 
- D 1 - I - 0x00F100 03:B0F0: 00        .byte $00   ; 
- D 1 - I - 0x00F101 03:B0F1: 01        .byte $01   ; 
- D 1 - I - 0x00F102 03:B0F2: 08        .byte $08   ; 
- D 1 - I - 0x00F103 03:B0F3: 2E        .byte $2E   ; 
- D 1 - I - 0x00F104 03:B0F4: 00        .byte $00   ; 
- D 1 - I - 0x00F105 03:B0F5: 18        .byte $18   ; 
- D 1 - I - 0x00F106 03:B0F6: 0B        .byte $0B   ; 
- D 1 - I - 0x00F107 03:B0F7: 20        .byte $20   ; 
- D 1 - I - 0x00F108 03:B0F8: C4        .byte $C4   ; 
- D 1 - I - 0x00F109 03:B0F9: 22        .byte $22   ; 
- D 1 - I - 0x00F10A 03:B0FA: 1E        .byte $1E   ; 
- D 1 - I - 0x00F10B 03:B0FB: 03        .byte $03   ; 
- D 1 - I - 0x00F10C 03:B0FC: 04        .byte $04   ; 
- D 1 - I - 0x00F10D 03:B0FD: 22        .byte $22   ; 
- D 1 - I - 0x00F10E 03:B0FE: 1F        .byte $1F   ; 
- D 1 - I - 0x00F10F 03:B0FF: 03        .byte $03   ; 
- D 1 - I - 0x00F110 03:B100: 04        .byte $04   ; 
- D 1 - I - 0x00F111 03:B101: 25        .byte $25   ; 
- D 1 - I - 0x00F112 03:B102: 06        .byte $06   ; 
- - - - - - 0x00F113 03:B103: 07        .byte $07   ; 
- - - - - - 0x00F114 03:B104: 5B        .byte $5B   ; 
- D 1 - I - 0x00F115 03:B105: 20        .byte $20   ; 
- D 1 - I - 0x00F116 03:B106: 42        .byte $42   ; 
- D 1 - I - 0x00F117 03:B107: 22        .byte $22   ; 
- D 1 - I - 0x00F118 03:B108: 1E        .byte $1E   ; 
- D 1 - I - 0x00F119 03:B109: 40        .byte $40   ; 
- D 1 - I - 0x00F11A 03:B10A: 00        .byte $00   ; 
- D 1 - I - 0x00F11B 03:B10B: 2E        .byte $2E   ; 
- D 1 - I - 0x00F11C 03:B10C: 00        .byte $00   ; 
- D 1 - I - 0x00F11D 03:B10D: 18        .byte $18   ; 
- D 1 - I - 0x00F11E 03:B10E: 0B        .byte $0B   ; 



_off010_B10F_04:
- D 1 - I - 0x00F11F 03:B10F: 3E        .byte $3E   ; 
- D 1 - I - 0x00F120 03:B110: 00        .byte $00   ; 
- D 1 - I - 0x00F121 03:B111: 18        .byte $18   ; 
- D 1 - I - 0x00F122 03:B112: 0E        .byte $0E   ; 
- D 1 - I - 0x00F123 03:B113: 2B        .byte $2B   ; 
- D 1 - I - 0x00F124 03:B114: 09        .byte $09   ; 
- D 1 - I - 0x00F125 03:B115: 01        .byte $01   ; 
- D 1 - I - 0x00F126 03:B116: 40        .byte $40   ; 
- D 1 - I - 0x00F127 03:B117: 2B        .byte $2B   ; 
- D 1 - I - 0x00F128 03:B118: 0A        .byte $0A   ; 
- D 1 - I - 0x00F129 03:B119: 03        .byte $03   ; 
- D 1 - I - 0x00F12A 03:B11A: 09        .byte $09   ; 
- D 1 - I - 0x00F12B 03:B11B: 2B        .byte $2B   ; 
- D 1 - I - 0x00F12C 03:B11C: 09        .byte $09   ; 
- D 1 - I - 0x00F12D 03:B11D: 01        .byte $01   ; 
- D 1 - I - 0x00F12E 03:B11E: 20        .byte $20   ; 
- D 1 - I - 0x00F12F 03:B11F: 2B        .byte $2B   ; 
- D 1 - I - 0x00F130 03:B120: 0B        .byte $0B   ; 
- D 1 - I - 0x00F131 03:B121: 01        .byte $01   ; 
- D 1 - I - 0x00F132 03:B122: 18        .byte $18   ; 
- D 1 - I - 0x00F133 03:B123: 2B        .byte $2B   ; 
- D 1 - I - 0x00F134 03:B124: 0C        .byte $0C   ; 
- D 1 - I - 0x00F135 03:B125: 01        .byte $01   ; 
- D 1 - I - 0x00F136 03:B126: 15        .byte $15   ; 
- D 1 - I - 0x00F137 03:B127: 2B        .byte $2B   ; 
- D 1 - I - 0x00F138 03:B128: 0D        .byte $0D   ; 
- D 1 - I - 0x00F139 03:B129: 01        .byte $01   ; 
- D 1 - I - 0x00F13A 03:B12A: 02        .byte $02   ; 
- D 1 - I - 0x00F13B 03:B12B: 2B        .byte $2B   ; 
- D 1 - I - 0x00F13C 03:B12C: 0E        .byte $0E   ; 
- D 1 - I - 0x00F13D 03:B12D: 01        .byte $01   ; 
- D 1 - I - 0x00F13E 03:B12E: 10        .byte $10   ; 
- D 1 - I - 0x00F13F 03:B12F: 2B        .byte $2B   ; 
- D 1 - I - 0x00F140 03:B130: 0B        .byte $0B   ; 
- D 1 - I - 0x00F141 03:B131: 01        .byte $01   ; 
- D 1 - I - 0x00F142 03:B132: 18        .byte $18   ; 
- D 1 - I - 0x00F143 03:B133: 2E        .byte $2E   ; 
- D 1 - I - 0x00F144 03:B134: 00        .byte $00   ; 
- D 1 - I - 0x00F145 03:B135: 07        .byte $07   ; 
- D 1 - I - 0x00F146 03:B136: 02        .byte $02   ; 
- - - - - - 0x00F147 03:B137: 06        .byte $06   ; 
- - - - - - 0x00F148 03:B138: 00        .byte $00   ; 
- - - - - - 0x00F149 03:B139: 2B        .byte $2B   ; 
- - - - - - 0x00F14A 03:B13A: 0E        .byte $0E   ; 
- - - - - - 0x00F14B 03:B13B: 01        .byte $01   ; 
- - - - - - 0x00F14C 03:B13C: 10        .byte $10   ; 
- - - - - - 0x00F14D 03:B13D: 3E        .byte $3E   ; 
- - - - - - 0x00F14E 03:B13E: 00        .byte $00   ; 
- - - - - - 0x00F14F 03:B13F: 07        .byte $07   ; 
- - - - - - 0x00F150 03:B140: 02        .byte $02   ; 
- D 1 - I - 0x00F151 03:B141: 05        .byte $05   ; 
- D 1 - I - 0x00F152 03:B142: 0C        .byte $0C   ; 
- D 1 - I - 0x00F153 03:B143: 22        .byte $22   ; 
- D 1 - I - 0x00F154 03:B144: 13        .byte $13   ; 
- D 1 - I - 0x00F155 03:B145: 01        .byte $01   ; 
- D 1 - I - 0x00F156 03:B146: 14        .byte $14   ; 
- D 1 - I - 0x00F157 03:B147: 02        .byte $02   ; 
- D 1 - I - 0x00F158 03:B148: 00        .byte $00   ; 
- - - - - - 0x00F159 03:B149: FE        .byte $FE   ; 



_off010_B14A_0C:
- D 1 - I - 0x00F15A 03:B14A: 23        .byte $23   ; 
- D 1 - I - 0x00F15B 03:B14B: 00        .byte $00   ; 
- D 1 - I - 0x00F15C 03:B14C: 4E        .byte $4E   ; 
- D 1 - I - 0x00F15D 03:B14D: 00        .byte $00   ; 
- D 1 - I - 0x00F15E 03:B14E: 18        .byte $18   ; 
- D 1 - I - 0x00F15F 03:B14F: 26        .byte $26   ; 
- D 1 - I - 0x00F160 03:B150: 4D        .byte $4D   ; 
- D 1 - I - 0x00F161 03:B151: 00        .byte $00   ; 
- D 1 - I - 0x00F162 03:B152: 21        .byte $21   ; 
- D 1 - I - 0x00F163 03:B153: 04        .byte $04   ; 
- D 1 - I - 0x00F164 03:B154: 0B        .byte $0B   ; 
- D 1 - I - 0x00F165 03:B155: 90        .byte $90   ; 
- D 1 - I - 0x00F166 03:B156: 50        .byte $50   ; 
- D 1 - I - 0x00F167 03:B157: 00        .byte $00   ; 
- D 1 - I - 0x00F168 03:B158: 53        .byte $53   ; 
- D 1 - I - 0x00F169 03:B159: 08        .byte $08   ; 
- D 1 - I - 0x00F16A 03:B15A: 54        .byte $54   ; 
- D 1 - I - 0x00F16B 03:B15B: 09        .byte $09   ; 
- D 1 - I - 0x00F16C 03:B15C: 53        .byte $53   ; 
- D 1 - I - 0x00F16D 03:B15D: 0A        .byte $0A   ; 
- D 1 - I - 0x00F16E 03:B15E: 54        .byte $54   ; 
- D 1 - I - 0x00F16F 03:B15F: 0B        .byte $0B   ; 
- D 1 - I - 0x00F170 03:B160: 07        .byte $07   ; 
- D 1 - I - 0x00F171 03:B161: 07        .byte $07   ; 
- D 1 - I - 0x00F172 03:B162: 52        .byte $52   ; 
- D 1 - I - 0x00F173 03:B163: 00        .byte $00   ; 
- D 1 - I - 0x00F174 03:B164: 0A        .byte $0A   ; 
- D 1 - I - 0x00F175 03:B165: 11        .byte $11   ; 
- D 1 - I - 0x00F176 03:B166: 22        .byte $22   ; 
- D 1 - I - 0x00F177 03:B167: 2E        .byte $2E   ; 
- D 1 - I - 0x00F178 03:B168: 01        .byte $01   ; 
- D 1 - I - 0x00F179 03:B169: 0C        .byte $0C   ; 
- D 1 - I - 0x00F17A 03:B16A: 0C        .byte $0C   ; 
- D 1 - I - 0x00F17B 03:B16B: 03        .byte $03   ; 
- D 1 - I - 0x00F17C 03:B16C: 14        .byte $14   ; 
- D 1 - I - 0x00F17D 03:B16D: 28        .byte $28   ; 
- D 1 - I - 0x00F17E 03:B16E: 22        .byte $22   ; 
- D 1 - I - 0x00F17F 03:B16F: 2F        .byte $2F   ; 
- D 1 - I - 0x00F180 03:B170: 0C        .byte $0C   ; 
- D 1 - I - 0x00F181 03:B171: 0A        .byte $0A   ; 
- D 1 - I - 0x00F182 03:B172: 0B        .byte $0B   ; 
- D 1 - I - 0x00F183 03:B173: 2E        .byte $2E   ; 
- D 1 - I - 0x00F184 03:B174: 01        .byte $01   ; 
- D 1 - I - 0x00F185 03:B175: 22        .byte $22   ; 
- D 1 - I - 0x00F186 03:B176: 0C        .byte $0C   ; 
- D 1 - I - 0x00F187 03:B177: 02        .byte $02   ; 
- D 1 - I - 0x00F188 03:B178: 0C        .byte $0C   ; 
- D 1 - I - 0x00F189 03:B179: 03        .byte $03   ; 
- D 1 - I - 0x00F18A 03:B17A: 0C        .byte $0C   ; 
- D 1 - I - 0x00F18B 03:B17B: 09        .byte $09   ; 
- D 1 - I - 0x00F18C 03:B17C: 07        .byte $07   ; 
- D 1 - I - 0x00F18D 03:B17D: 0C        .byte $0C   ; 
- D 1 - I - 0x00F18E 03:B17E: 0C        .byte $0C   ; 
- D 1 - I - 0x00F18F 03:B17F: 01        .byte $01   ; 
- D 1 - I - 0x00F190 03:B180: 05        .byte $05   ; 
- D 1 - I - 0x00F191 03:B181: 0F        .byte $0F   ; 
- D 1 - I - 0x00F192 03:B182: 58        .byte $58   ; 
- D 1 - I - 0x00F193 03:B183: 05        .byte $05   ; 
- D 1 - I - 0x00F194 03:B184: 01        .byte $01   ; 
- D 1 - I - 0x00F195 03:B185: 70        .byte $70   ; 
- D 1 - I - 0x00F196 03:B186: 24        .byte $24   ; 
- D 1 - I - 0x00F197 03:B187: 02        .byte $02   ; 
- D 1 - I - 0x00F198 03:B188: 01        .byte $01   ; 
- D 1 - I - 0x00F199 03:B189: 40        .byte $40   ; 
- D 1 - I - 0x00F19A 03:B18A: 0B        .byte $0B   ; 
- D 1 - I - 0x00F19B 03:B18B: 9C        .byte $9C   ; 
- D 1 - I - 0x00F19C 03:B18C: 24        .byte $24   ; 
- D 1 - I - 0x00F19D 03:B18D: 01        .byte $01   ; 
- - - - - - 0x00F19E 03:B18E: 02        .byte $02   ; 
- - - - - - 0x00F19F 03:B18F: 00        .byte $00   ; 
- - - - - - 0x00F1A0 03:B190: FE        .byte $FE   ; 
- - - - - - 0x00F1A1 03:B191: FE        .byte $FE   ; 



_off010_B192_06:
- D 1 - I - 0x00F1A2 03:B192: 18        .byte $18   ; 
- D 1 - I - 0x00F1A3 03:B193: 0F        .byte $0F   ; 
- D 1 - I - 0x00F1A4 03:B194: 23        .byte $23   ; 
- D 1 - I - 0x00F1A5 03:B195: FF        .byte $FF   ; 
- D 1 - I - 0x00F1A6 03:B196: 22        .byte $22   ; 
- D 1 - I - 0x00F1A7 03:B197: 08        .byte $08   ; 
- D 1 - I - 0x00F1A8 03:B198: 21        .byte $21   ; 
- D 1 - I - 0x00F1A9 03:B199: 08        .byte $08   ; 
- D 1 - I - 0x00F1AA 03:B19A: 0B        .byte $0B   ; 
- D 1 - I - 0x00F1AB 03:B19B: 90        .byte $90   ; 
- D 1 - I - 0x00F1AC 03:B19C: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1AD 03:B19D: 06        .byte $06   ; 
- D 1 - I - 0x00F1AE 03:B19E: 20        .byte $20   ; 
- D 1 - I - 0x00F1AF 03:B19F: 83        .byte $83   ; 
- D 1 - I - 0x00F1B0 03:B1A0: 18        .byte $18   ; 
- D 1 - I - 0x00F1B1 03:B1A1: 10        .byte $10   ; 
- D 1 - I - 0x00F1B2 03:B1A2: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1B3 03:B1A3: 10        .byte $10   ; 
- D 1 - I - 0x00F1B4 03:B1A4: 03        .byte $03   ; 
- D 1 - I - 0x00F1B5 03:B1A5: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1B6 03:B1A6: 18        .byte $18   ; 
- D 1 - I - 0x00F1B7 03:B1A7: 14        .byte $14   ; 
- D 1 - I - 0x00F1B8 03:B1A8: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1B9 03:B1A9: 02        .byte $02   ; 
- D 1 - I - 0x00F1BA 03:B1AA: 01        .byte $01   ; 
- D 1 - I - 0x00F1BB 03:B1AB: 10        .byte $10   ; 
- D 1 - I - 0x00F1BC 03:B1AC: 34        .byte $34   ; 
- D 1 - I - 0x00F1BD 03:B1AD: 12        .byte $12   ; 
- D 1 - I - 0x00F1BE 03:B1AE: 25        .byte $25   ; 
- D 1 - I - 0x00F1BF 03:B1AF: 17        .byte $17   ; 
- D 1 - I - 0x00F1C0 03:B1B0: 37        .byte $37   ; 
- D 1 - I - 0x00F1C1 03:B1B1: 14        .byte $14   ; 
- D 1 - I - 0x00F1C2 03:B1B2: 2E        .byte $2E   ; 
- D 1 - I - 0x00F1C3 03:B1B3: 00        .byte $00   ; 
- D 1 - I - 0x00F1C4 03:B1B4: 18        .byte $18   ; 
- D 1 - I - 0x00F1C5 03:B1B5: 10        .byte $10   ; 
- D 1 - I - 0x00F1C6 03:B1B6: 05        .byte $05   ; 
- D 1 - I - 0x00F1C7 03:B1B7: 0F        .byte $0F   ; 
- D 1 - I - 0x00F1C8 03:B1B8: 22        .byte $22   ; 
- D 1 - I - 0x00F1C9 03:B1B9: 23        .byte $23   ; 
- D 1 - I - 0x00F1CA 03:B1BA: 01        .byte $01   ; 
- D 1 - I - 0x00F1CB 03:B1BB: 08        .byte $08   ; 
- D 1 - I - 0x00F1CC 03:B1BC: 0A        .byte $0A   ; 
- D 1 - I - 0x00F1CD 03:B1BD: 25        .byte $25   ; 
- D 1 - I - 0x00F1CE 03:B1BE: 22        .byte $22   ; 
- D 1 - I - 0x00F1CF 03:B1BF: 24        .byte $24   ; 
- D 1 - I - 0x00F1D0 03:B1C0: 01        .byte $01   ; 
- D 1 - I - 0x00F1D1 03:B1C1: 78        .byte $78   ; 
- D 1 - I - 0x00F1D2 03:B1C2: 22        .byte $22   ; 
- D 1 - I - 0x00F1D3 03:B1C3: 25        .byte $25   ; 
- D 1 - I - 0x00F1D4 03:B1C4: 01        .byte $01   ; 
- D 1 - I - 0x00F1D5 03:B1C5: 87        .byte $87   ; 
- D 1 - I - 0x00F1D6 03:B1C6: 22        .byte $22   ; 
- D 1 - I - 0x00F1D7 03:B1C7: 26        .byte $26   ; 
- D 1 - I - 0x00F1D8 03:B1C8: 01        .byte $01   ; 
- D 1 - I - 0x00F1D9 03:B1C9: 25        .byte $25   ; 
- D 1 - I - 0x00F1DA 03:B1CA: 58        .byte $58   ; 
- D 1 - I - 0x00F1DB 03:B1CB: 05        .byte $05   ; 
- D 1 - I - 0x00F1DC 03:B1CC: 01        .byte $01   ; 
- D 1 - I - 0x00F1DD 03:B1CD: B0        .byte $B0   ; 
- D 1 - I - 0x00F1DE 03:B1CE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1DF 03:B1CF: 02        .byte $02   ; 
- D 1 - I - 0x00F1E0 03:B1D0: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1E1 03:B1D1: 03        .byte $03   ; 
- D 1 - I - 0x00F1E2 03:B1D2: 0B        .byte $0B   ; 
- D 1 - I - 0x00F1E3 03:B1D3: 9C        .byte $9C   ; 
- D 1 - I - 0x00F1E4 03:B1D4: 24        .byte $24   ; 
- D 1 - I - 0x00F1E5 03:B1D5: 00        .byte $00   ; 
- - - - - - 0x00F1E6 03:B1D6: 02        .byte $02   ; 
- - - - - - 0x00F1E7 03:B1D7: 00        .byte $00   ; 
- - - - - - 0x00F1E8 03:B1D8: FE        .byte $FE   ; 
- - - - - - 0x00F1E9 03:B1D9: FE        .byte $FE   ; 
- D 1 - I - 0x00F1EA 03:B1DA: 35        .byte $35   ; 
- D 1 - I - 0x00F1EB 03:B1DB: 13        .byte $13   ; 
- D 1 - I - 0x00F1EC 03:B1DC: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1ED 03:B1DD: 11        .byte $11   ; 
- D 1 - I - 0x00F1EE 03:B1DE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1EF 03:B1DF: 02        .byte $02   ; 
- D 1 - I - 0x00F1F0 03:B1E0: 01        .byte $01   ; 
- D 1 - I - 0x00F1F1 03:B1E1: 04        .byte $04   ; 
- D 1 - I - 0x00F1F2 03:B1E2: 22        .byte $22   ; 
- D 1 - I - 0x00F1F3 03:B1E3: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1F4 03:B1E4: 42        .byte $42   ; 
- D 1 - I - 0x00F1F5 03:B1E5: 00        .byte $00   ; 
- D 1 - I - 0x00F1F6 03:B1E6: 2E        .byte $2E   ; 
- D 1 - I - 0x00F1F7 03:B1E7: 00        .byte $00   ; 
- D 1 - I - 0x00F1F8 03:B1E8: 2B        .byte $2B   ; 
- D 1 - I - 0x00F1F9 03:B1E9: 11        .byte $11   ; 
- D 1 - I - 0x00F1FA 03:B1EA: 0C        .byte $0C   ; 
- D 1 - I - 0x00F1FB 03:B1EB: 02        .byte $02   ; 
- D 1 - I - 0x00F1FC 03:B1EC: 01        .byte $01   ; 
- D 1 - I - 0x00F1FD 03:B1ED: 04        .byte $04   ; 
- D 1 - I - 0x00F1FE 03:B1EE: 18        .byte $18   ; 
- D 1 - I - 0x00F1FF 03:B1EF: 17        .byte $17   ; 
- - - - - - 0x00F200 03:B1F0: 26        .byte $26   ; 
- - - - - - 0x00F201 03:B1F1: 00        .byte $00   ; 
- - - - - - 0x00F202 03:B1F2: 18        .byte $18   ; 
- - - - - - 0x00F203 03:B1F3: 10        .byte $10   ; 
- D 1 - I - 0x00F204 03:B1F4: 38        .byte $38   ; 
- D 1 - I - 0x00F205 03:B1F5: 00        .byte $00   ; 
- D 1 - I - 0x00F206 03:B1F6: 2B        .byte $2B   ; 
- D 1 - I - 0x00F207 03:B1F7: 11        .byte $11   ; 
- D 1 - I - 0x00F208 03:B1F8: 01        .byte $01   ; 
- D 1 - I - 0x00F209 03:B1F9: 04        .byte $04   ; 
- D 1 - I - 0x00F20A 03:B1FA: 2B        .byte $2B   ; 
- D 1 - I - 0x00F20B 03:B1FB: 12        .byte $12   ; 
- D 1 - I - 0x00F20C 03:B1FC: 01        .byte $01   ; 
- D 1 - I - 0x00F20D 03:B1FD: 0C        .byte $0C   ; 
- D 1 - I - 0x00F20E 03:B1FE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F20F 03:B1FF: 02        .byte $02   ; 
- D 1 - I - 0x00F210 03:B200: 01        .byte $01   ; 
- D 1 - I - 0x00F211 03:B201: 08        .byte $08   ; 
- D 1 - I - 0x00F212 03:B202: 06        .byte $06   ; 
- D 1 - I - 0x00F213 03:B203: 00        .byte $00   ; 
- D 1 - I - 0x00F214 03:B204: 18        .byte $18   ; 
- D 1 - I - 0x00F215 03:B205: 10        .byte $10   ; 
- D 1 - I - 0x00F216 03:B206: 20        .byte $20   ; 
- D 1 - I - 0x00F217 03:B207: 40        .byte $40   ; 
- D 1 - I - 0x00F218 03:B208: 22        .byte $22   ; 
- D 1 - I - 0x00F219 03:B209: 27        .byte $27   ; 
- D 1 - I - 0x00F21A 03:B20A: 01        .byte $01   ; 
- D 1 - I - 0x00F21B 03:B20B: 04        .byte $04   ; 
- D 1 - I - 0x00F21C 03:B20C: 22        .byte $22   ; 
- D 1 - I - 0x00F21D 03:B20D: 28        .byte $28   ; 
- D 1 - I - 0x00F21E 03:B20E: 01        .byte $01   ; 
- D 1 - I - 0x00F21F 03:B20F: 0E        .byte $0E   ; 
- D 1 - I - 0x00F220 03:B210: 18        .byte $18   ; 
- D 1 - I - 0x00F221 03:B211: 12        .byte $12   ; 
- D 1 - I - 0x00F222 03:B212: 2E        .byte $2E   ; 
- D 1 - I - 0x00F223 03:B213: 00        .byte $00   ; 
- D 1 - I - 0x00F224 03:B214: 2B        .byte $2B   ; 
- D 1 - I - 0x00F225 03:B215: 13        .byte $13   ; 
- D 1 - I - 0x00F226 03:B216: 03        .byte $03   ; 
- D 1 - I - 0x00F227 03:B217: 02        .byte $02   ; 
- D 1 - I - 0x00F228 03:B218: 18        .byte $18   ; 
- D 1 - I - 0x00F229 03:B219: 11        .byte $11   ; 
- D 1 - I - 0x00F22A 03:B21A: 2E        .byte $2E   ; 
- D 1 - I - 0x00F22B 03:B21B: 00        .byte $00   ; 
- D 1 - I - 0x00F22C 03:B21C: 2B        .byte $2B   ; 
- D 1 - I - 0x00F22D 03:B21D: 11        .byte $11   ; 
- D 1 - I - 0x00F22E 03:B21E: 01        .byte $01   ; 
- D 1 - I - 0x00F22F 03:B21F: 04        .byte $04   ; 
- D 1 - I - 0x00F230 03:B220: 2B        .byte $2B   ; 
- D 1 - I - 0x00F231 03:B221: 12        .byte $12   ; 
- D 1 - I - 0x00F232 03:B222: 01        .byte $01   ; 
- D 1 - I - 0x00F233 03:B223: 0E        .byte $0E   ; 
- D 1 - I - 0x00F234 03:B224: 18        .byte $18   ; 
- D 1 - I - 0x00F235 03:B225: 10        .byte $10   ; 
- - - - - - 0x00F236 03:B226: 1F        .byte $1F   ; 
- - - - - - 0x00F237 03:B227: 00        .byte $00   ; 
- - - - - - 0x00F238 03:B228: 18        .byte $18   ; 
- - - - - - 0x00F239 03:B229: 10        .byte $10   ; 
- - - - - - 0x00F23A 03:B22A: 2B        .byte $2B   ; 
- - - - - - 0x00F23B 03:B22B: 10        .byte $10   ; 
- - - - - - 0x00F23C 03:B22C: 03        .byte $03   ; 
- - - - - - 0x00F23D 03:B22D: 0C        .byte $0C   ; 
- - - - - - 0x00F23E 03:B22E: 18        .byte $18   ; 
- - - - - - 0x00F23F 03:B22F: 11        .byte $11   ; 



_off010_B230_08:
- D 1 - I - 0x00F240 03:B230: 0C        .byte $0C   ; 
- D 1 - I - 0x00F241 03:B231: 01        .byte $01   ; 
- D 1 - I - 0x00F242 03:B232: 0C        .byte $0C   ; 
- D 1 - I - 0x00F243 03:B233: 05        .byte $05   ; 
- D 1 - I - 0x00F244 03:B234: 3A        .byte $3A   ; 
- D 1 - I - 0x00F245 03:B235: 00        .byte $00   ; 
- D 1 - I - 0x00F246 03:B236: 0C        .byte $0C   ; 
- D 1 - I - 0x00F247 03:B237: 07        .byte $07   ; 
- D 1 - I - 0x00F248 03:B238: 3B        .byte $3B   ; 
- D 1 - I - 0x00F249 03:B239: 1A        .byte $1A   ; 
- D 1 - I - 0x00F24A 03:B23A: 3D        .byte $3D   ; 
- D 1 - I - 0x00F24B 03:B23B: 00        .byte $00   ; 
- D 1 - I - 0x00F24C 03:B23C: 07        .byte $07   ; 
- D 1 - I - 0x00F24D 03:B23D: 04        .byte $04   ; 
- D 1 - I - 0x00F24E 03:B23E: 0B        .byte $0B   ; 
- D 1 - I - 0x00F24F 03:B23F: 34        .byte $34   ; 
- D 1 - I - 0x00F250 03:B240: 22        .byte $22   ; 
- D 1 - I - 0x00F251 03:B241: 29        .byte $29   ; 
- D 1 - I - 0x00F252 03:B242: 01        .byte $01   ; 
- D 1 - I - 0x00F253 03:B243: 10        .byte $10   ; 
- D 1 - I - 0x00F254 03:B244: 02        .byte $02   ; 
- D 1 - I - 0x00F255 03:B245: 00        .byte $00   ; 
- - - - - - 0x00F256 03:B246: FE        .byte $FE   ; 
- - - - - - 0x00F257 03:B247: FE        .byte $FE   ; 
- D 1 - I - 0x00F258 03:B248: 14        .byte $14   ; 
- D 1 - I - 0x00F259 03:B249: 08        .byte $08   ; 
- D 1 - I - 0x00F25A 03:B24A: 0B        .byte $0B   ; 
- D 1 - I - 0x00F25B 03:B24B: 88        .byte con_music_88   ; 
- D 1 - I - 0x00F25C 03:B24C: 0A        .byte $0A   ; 
- D 1 - I - 0x00F25D 03:B24D: 28        .byte $28   ; 
- D 1 - I - 0x00F25E 03:B24E: 22        .byte $22   ; 
- D 1 - I - 0x00F25F 03:B24F: 2A        .byte $2A   ; 
- D 1 - I - 0x00F260 03:B250: 01        .byte $01   ; 
- D 1 - I - 0x00F261 03:B251: 55        .byte $55   ; 
- D 1 - I - 0x00F262 03:B252: 0A        .byte $0A   ; 
- D 1 - I - 0x00F263 03:B253: 29        .byte $29   ; 
- D 1 - I - 0x00F264 03:B254: 14        .byte $14   ; 
- D 1 - I - 0x00F265 03:B255: 30        .byte $30   ; 
- D 1 - I - 0x00F266 03:B256: 2B        .byte $2B   ; 
- D 1 - I - 0x00F267 03:B257: 14        .byte $14   ; 
- D 1 - I - 0x00F268 03:B258: 0C        .byte $0C   ; 
- D 1 - I - 0x00F269 03:B259: 08        .byte $08   ; 
- D 1 - I - 0x00F26A 03:B25A: 20        .byte $20   ; 
- D 1 - I - 0x00F26B 03:B25B: 04        .byte $04   ; 
- D 1 - I - 0x00F26C 03:B25C: 10        .byte $10   ; 
- D 1 - I - 0x00F26D 03:B25D: 06        .byte $06   ; 
- D 1 - I - 0x00F26E 03:B25E: 18        .byte $18   ; 
- D 1 - I - 0x00F26F 03:B25F: 33        .byte $33   ; 
- D 1 - I - 0x00F270 03:B260: 10        .byte $10   ; 
- D 1 - I - 0x00F271 03:B261: 06        .byte $06   ; 
- D 1 - I - 0x00F272 03:B262: 03        .byte $03   ; 
- D 1 - I - 0x00F273 03:B263: 10        .byte $10   ; 
- D 1 - I - 0x00F274 03:B264: 18        .byte $18   ; 
- D 1 - I - 0x00F275 03:B265: 23        .byte $23   ; 
- D 1 - I - 0x00F276 03:B266: 05        .byte $05   ; 
- D 1 - I - 0x00F277 03:B267: 0F        .byte $0F   ; 
- D 1 - I - 0x00F278 03:B268: 0A        .byte $0A   ; 
- D 1 - I - 0x00F279 03:B269: 2D        .byte $2D   ; 
- D 1 - I - 0x00F27A 03:B26A: 22        .byte $22   ; 
- D 1 - I - 0x00F27B 03:B26B: 2C        .byte $2C   ; 
- D 1 - I - 0x00F27C 03:B26C: 01        .byte $01   ; 
- D 1 - I - 0x00F27D 03:B26D: 8A        .byte $8A   ; 
- D 1 - I - 0x00F27E 03:B26E: 22        .byte $22   ; 
- D 1 - I - 0x00F27F 03:B26F: 2D        .byte $2D   ; 
- D 1 - I - 0x00F280 03:B270: 01        .byte $01   ; 
- D 1 - I - 0x00F281 03:B271: 36        .byte $36   ; 
- D 1 - I - 0x00F282 03:B272: FE        .byte $FE   ; 
- - - - - - 0x00F283 03:B273: FE        .byte $FE   ; 
- D 1 - I - 0x00F284 03:B274: 06        .byte $06   ; 
- D 1 - I - 0x00F285 03:B275: 00        .byte $00   ; 
- D 1 - I - 0x00F286 03:B276: 10        .byte $10   ; 
- D 1 - I - 0x00F287 03:B277: 07        .byte $07   ; 
- D 1 - I - 0x00F288 03:B278: 01        .byte $01   ; 
- D 1 - I - 0x00F289 03:B279: 11        .byte $11   ; 
- D 1 - I - 0x00F28A 03:B27A: 2B        .byte $2B   ; 
- D 1 - I - 0x00F28B 03:B27B: 16        .byte $16   ; 
- D 1 - I - 0x00F28C 03:B27C: 08        .byte $08   ; 
- D 1 - I - 0x00F28D 03:B27D: 02        .byte $02   ; 
- D 1 - I - 0x00F28E 03:B27E: 18        .byte $18   ; 
- D 1 - I - 0x00F28F 03:B27F: 22        .byte $22   ; 
- D 1 - I - 0x00F290 03:B280: 44        .byte $44   ; 
- D 1 - I - 0x00F291 03:B281: 00        .byte $00   ; 
- - - - - - 0x00F292 03:B282: 2E        .byte $2E   ; 
- - - - - - 0x00F293 03:B283: 00        .byte $00   ; 
- - - - - - 0x00F294 03:B284: 10        .byte $10   ; 
- - - - - - 0x00F295 03:B285: 08        .byte $08   ; 
- - - - - - 0x00F296 03:B286: 01        .byte $01   ; 
- - - - - - 0x00F297 03:B287: 34        .byte $34   ; 
- - - - - - 0x00F298 03:B288: 45        .byte $45   ; 
- - - - - - 0x00F299 03:B289: 00        .byte $00   ; 
- D 1 - I - 0x00F29A 03:B28A: 2E        .byte $2E   ; 
- D 1 - I - 0x00F29B 03:B28B: 00        .byte $00   ; 
- D 1 - I - 0x00F29C 03:B28C: 10        .byte $10   ; 
- D 1 - I - 0x00F29D 03:B28D: 09        .byte $09   ; 
- D 1 - I - 0x00F29E 03:B28E: 01        .byte $01   ; 
- D 1 - I - 0x00F29F 03:B28F: 19        .byte $19   ; 
- D 1 - I - 0x00F2A0 03:B290: 45        .byte $45   ; 
- D 1 - I - 0x00F2A1 03:B291: 00        .byte $00   ; 
- D 1 - I - 0x00F2A2 03:B292: 10        .byte $10   ; 
- D 1 - I - 0x00F2A3 03:B293: 0A        .byte $0A   ; 
- D 1 - I - 0x00F2A4 03:B294: 01        .byte $01   ; 
- D 1 - I - 0x00F2A5 03:B295: 12        .byte $12   ; 
- D 1 - I - 0x00F2A6 03:B296: 5A        .byte $5A   ; 
- D 1 - I - 0x00F2A7 03:B297: 00        .byte $00   ; 
- D 1 - I - 0x00F2A8 03:B298: 4A        .byte $4A   ; 
- D 1 - I - 0x00F2A9 03:B299: 00        .byte $00   ; 
- D 1 - I - 0x00F2AA 03:B29A: 46        .byte $46   ; 
- D 1 - I - 0x00F2AB 03:B29B: 38        .byte $38   ; 
- D 1 - I - 0x00F2AC 03:B29C: 47        .byte $47   ; 
- D 1 - I - 0x00F2AD 03:B29D: 00        .byte $00   ; 
- D 1 - I - 0x00F2AE 03:B29E: 07        .byte $07   ; 
- D 1 - I - 0x00F2AF 03:B29F: 36        .byte $36   ; 
- D 1 - I - 0x00F2B0 03:B2A0: 1F        .byte $1F   ; 
- D 1 - I - 0x00F2B1 03:B2A1: 00        .byte $00   ; 
- D 1 - I - 0x00F2B2 03:B2A2: 07        .byte $07   ; 
- D 1 - I - 0x00F2B3 03:B2A3: 23        .byte $23   ; 
- - - - - - 0x00F2B4 03:B2A4: 5E        .byte $5E   ; 
- - - - - - 0x00F2B5 03:B2A5: 00        .byte $00   ; 
- - - - - - 0x00F2B6 03:B2A6: 2E        .byte $2E   ; 
- - - - - - 0x00F2B7 03:B2A7: 00        .byte $00   ; 
- - - - - - 0x00F2B8 03:B2A8: 10        .byte $10   ; 
- - - - - - 0x00F2B9 03:B2A9: 09        .byte $09   ; 
- - - - - - 0x00F2BA 03:B2AA: 01        .byte $01   ; 
- - - - - - 0x00F2BB 03:B2AB: 19        .byte $19   ; 
- - - - - - 0x00F2BC 03:B2AC: 07        .byte $07   ; 
- - - - - - 0x00F2BD 03:B2AD: 3C        .byte $3C   ; 
- D 1 - I - 0x00F2BE 03:B2AE: 2E        .byte $2E   ; 
- D 1 - I - 0x00F2BF 03:B2AF: 00        .byte $00   ; 
- D 1 - I - 0x00F2C0 03:B2B0: 10        .byte $10   ; 
- D 1 - I - 0x00F2C1 03:B2B1: 09        .byte $09   ; 
- D 1 - I - 0x00F2C2 03:B2B2: 01        .byte $01   ; 
- D 1 - I - 0x00F2C3 03:B2B3: 19        .byte $19   ; 
- D 1 - I - 0x00F2C4 03:B2B4: 10        .byte $10   ; 
- D 1 - I - 0x00F2C5 03:B2B5: 08        .byte $08   ; 
- D 1 - I - 0x00F2C6 03:B2B6: 01        .byte $01   ; 
- D 1 - I - 0x00F2C7 03:B2B7: 34        .byte $34   ; 
- D 1 - I - 0x00F2C8 03:B2B8: 59        .byte $59   ; 
- D 1 - I - 0x00F2C9 03:B2B9: 00        .byte $00   ; 
- D 1 - I - 0x00F2CA 03:B2BA: 27        .byte $27   ; 
- D 1 - I - 0x00F2CB 03:B2BB: 00        .byte $00   ; 
- D 1 - I - 0x00F2CC 03:B2BC: 18        .byte $18   ; 
- D 1 - I - 0x00F2CD 03:B2BD: 33        .byte $33   ; 
- D 1 - I - 0x00F2CE 03:B2BE: 27        .byte $27   ; 
- D 1 - I - 0x00F2CF 03:B2BF: 00        .byte $00   ; 
- D 1 - I - 0x00F2D0 03:B2C0: 5C        .byte $5C   ; 
- D 1 - I - 0x00F2D1 03:B2C1: 00        .byte $00   ; 
- D 1 - I - 0x00F2D2 03:B2C2: 2E        .byte $2E   ; 
- D 1 - I - 0x00F2D3 03:B2C3: 00        .byte $00   ; 
- D 1 - I - 0x00F2D4 03:B2C4: 07        .byte $07   ; 
- D 1 - I - 0x00F2D5 03:B2C5: 23        .byte $23   ; 
- D 1 - I - 0x00F2D6 03:B2C6: 5D        .byte $5D   ; 
- D 1 - I - 0x00F2D7 03:B2C7: 00        .byte $00   ; 
- D 1 - I - 0x00F2D8 03:B2C8: 07        .byte $07   ; 
- D 1 - I - 0x00F2D9 03:B2C9: 23        .byte $23   ; 



_off010_B2CA_0A:
- D 1 - I - 0x00F2DA 03:B2CA: 61        .byte $61   ; 
- D 1 - I - 0x00F2DB 03:B2CB: 00        .byte $00   ; 
- D 1 - I - 0x00F2DC 03:B2CC: 48        .byte $48   ; 
- D 1 - I - 0x00F2DD 03:B2CD: 00        .byte $00   ; 
- D 1 - I - 0x00F2DE 03:B2CE: 50        .byte $50   ; 
- D 1 - I - 0x00F2DF 03:B2CF: 00        .byte $00   ; 
- D 1 - I - 0x00F2E0 03:B2D0: 49        .byte $49   ; 
- D 1 - I - 0x00F2E1 03:B2D1: 01        .byte $01   ; 
- D 1 - I - 0x00F2E2 03:B2D2: 4B        .byte $4B   ; 
- D 1 - I - 0x00F2E3 03:B2D3: 02        .byte $02   ; 
- D 1 - I - 0x00F2E4 03:B2D4: 49        .byte $49   ; 
- D 1 - I - 0x00F2E5 03:B2D5: 02        .byte $02   ; 
- D 1 - I - 0x00F2E6 03:B2D6: 49        .byte $49   ; 
- D 1 - I - 0x00F2E7 03:B2D7: 01        .byte $01   ; 
- D 1 - I - 0x00F2E8 03:B2D8: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2E9 03:B2D9: 01        .byte $01   ; 
- D 1 - I - 0x00F2EA 03:B2DA: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2EB 03:B2DB: 01        .byte $01   ; 
- D 1 - I - 0x00F2EC 03:B2DC: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2ED 03:B2DD: 03        .byte $03   ; 
- D 1 - I - 0x00F2EE 03:B2DE: 49        .byte $49   ; 
- D 1 - I - 0x00F2EF 03:B2DF: 04        .byte $04   ; 
- D 1 - I - 0x00F2F0 03:B2E0: 49        .byte $49   ; 
- D 1 - I - 0x00F2F1 03:B2E1: 05        .byte $05   ; 
- D 1 - I - 0x00F2F2 03:B2E2: 49        .byte $49   ; 
- D 1 - I - 0x00F2F3 03:B2E3: 06        .byte $06   ; 
- D 1 - I - 0x00F2F4 03:B2E4: 49        .byte $49   ; 
- D 1 - I - 0x00F2F5 03:B2E5: 01        .byte $01   ; 
- D 1 - I - 0x00F2F6 03:B2E6: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2F7 03:B2E7: 01        .byte $01   ; 
- D 1 - I - 0x00F2F8 03:B2E8: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2F9 03:B2E9: 01        .byte $01   ; 
- D 1 - I - 0x00F2FA 03:B2EA: 4C        .byte $4C   ; 
- D 1 - I - 0x00F2FB 03:B2EB: 07        .byte $07   ; 
- D 1 - I - 0x00F2FC 03:B2EC: 07        .byte $07   ; 
- D 1 - I - 0x00F2FD 03:B2ED: 06        .byte $06   ; 
- D 1 - I - 0x00F2FE 03:B2EE: 0C        .byte $0C   ; 
- D 1 - I - 0x00F2FF 03:B2EF: 01        .byte $01   ; 
- D 1 - I - 0x00F300 03:B2F0: 0B        .byte $0B   ; 
- D 1 - I - 0x00F301 03:B2F1: 55        .byte $55   ; 
- D 1 - I - 0x00F302 03:B2F2: 58        .byte $58   ; 
- D 1 - I - 0x00F303 03:B2F3: 05        .byte $05   ; 
- D 1 - I - 0x00F304 03:B2F4: 01        .byte $01   ; 
- D 1 - I - 0x00F305 03:B2F5: 70        .byte $70   ; 
- D 1 - I - 0x00F306 03:B2F6: 24        .byte $24   ; 
- D 1 - I - 0x00F307 03:B2F7: 02        .byte $02   ; 
- D 1 - I - 0x00F308 03:B2F8: 01        .byte $01   ; 
- D 1 - I - 0x00F309 03:B2F9: 40        .byte $40   ; 
- D 1 - I - 0x00F30A 03:B2FA: 0B        .byte $0B   ; 
- D 1 - I - 0x00F30B 03:B2FB: 9C        .byte $9C   ; 
- D 1 - I - 0x00F30C 03:B2FC: 24        .byte $24   ; 
- D 1 - I - 0x00F30D 03:B2FD: 03        .byte $03   ; 
- - - - - - 0x00F30E 03:B2FE: FE        .byte $FE   ; 



tbl_B2FF:
- D 1 - - - 0x00F30F 03:B2FF: 00        .byte $00, $00   ; 00
- D 1 - - - 0x00F311 03:B301: 01        .byte $01, $01   ; 01
- D 1 - - - 0x00F313 03:B303: 03        .byte $03, $00   ; 02
- D 1 - - - 0x00F315 03:B305: 04        .byte $04, $02   ; 03
- D 1 - - - 0x00F317 03:B307: 02        .byte $02, $04   ; 04
- D 1 - - - 0x00F319 03:B309: 05        .byte $05, $03   ; 05
- D 1 - - - 0x00F31B 03:B30B: 07        .byte $07, $00   ; 06
- D 1 - - - 0x00F31D 03:B30D: 06        .byte $06, $04   ; 07
- D 1 - - - 0x00F31F 03:B30F: 09        .byte $09, $00   ; 08
- D 1 - - - 0x00F321 03:B311: 0A        .byte $0A, $02   ; 09
- D 1 - - - 0x00F323 03:B313: 0B        .byte $0B, $04   ; 0A
- D 1 - - - 0x00F325 03:B315: 08        .byte $08, $05   ; 0B
- D 1 - - - 0x00F327 03:B317: 0D        .byte $0D, $00   ; 0C
- D 1 - - - 0x00F329 03:B319: 0E        .byte $0E, $04   ; 0D
- D 1 - - - 0x00F32B 03:B31B: 0C        .byte $0C, $05   ; 0E
- D 1 - - - 0x00F32D 03:B31D: 10        .byte $10, $00   ; 0F
- D 1 - - - 0x00F32F 03:B31F: 11        .byte $11, $02   ; 10
- D 1 - - - 0x00F331 03:B321: 0F        .byte $0F, $05   ; 11
- D 1 - - - 0x00F333 03:B323: 12        .byte $12, $06   ; 12



tbl_B325:
- D 1 - - - 0x00F335 03:B325: 6C        .byte con_chr_bank + $6C   ; 00
- - - - - - 0x00F336 03:B326: 00        .byte $00   ; 01
- - - - - - 0x00F337 03:B327: 00        .byte $00   ; 02
- - - - - - 0x00F338 03:B328: 00        .byte $00   ; 03
- D 1 - - - 0x00F339 03:B329: 2C        .byte con_chr_bank + $2C   ; 04



tbl_B32A:
- D 1 - - - 0x00F33A 03:B32A: 07        .byte $07   ; 00
- - - - - - 0x00F33B 03:B32B: 00        .byte $00   ; 01
- - - - - - 0x00F33C 03:B32C: 00        .byte $00   ; 02
- - - - - - 0x00F33D 03:B32D: 00        .byte $00   ; 03
- D 1 - - - 0x00F33E 03:B32E: 16        .byte $16   ; 04



sub_B32F:
C - - - - - 0x00F33F 03:B32F: A2 09     LDX #$09
C - - - - - 0x00F341 03:B331: BD 82 07  LDA ram_0782_unk,X
C - - - - - 0x00F344 03:B334: C9 A9     CMP #$A9
C - - - - - 0x00F346 03:B336: D0 28     BNE bra_B360
- - - - - - 0x00F348 03:B338: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x00F34B 03:B33B: 8D 50 06  STA ram_obj_pos_X + $02
- - - - - - 0x00F34E 03:B33E: BD C8 06  LDA ram_obj_spd_X,X
- - - - - - 0x00F351 03:B341: 8D CA 06  STA ram_obj_spd_X + $02
- - - - - - 0x00F354 03:B344: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x00F357 03:B347: 38        SEC
- - - - - - 0x00F358 03:B348: E9 08     SBC #$08
- - - - - - 0x00F35A 03:B34A: 8D 6A 06  STA ram_obj_pos_Y + $02
- - - - - - 0x00F35D 03:B34D: BD DE 06  LDA ram_obj_spd_Y,X
- - - - - - 0x00F360 03:B350: 8D E0 06  STA ram_obj_spd_Y + $02
- - - - - - 0x00F363 03:B353: BD 00 06  LDA ram_0600_obj,X
- - - - - - 0x00F366 03:B356: 8D 02 06  STA ram_0600_obj + $02
- - - - - - 0x00F369 03:B359: 29 F0     AND #$F0
- - - - - - 0x00F36B 03:B35B: F0 03     BEQ bra_B360
- - - - - - 0x00F36D 03:B35D: 20 17 9A  JSR sub_0x009A27
bra_B360:
C - - - - - 0x00F370 03:B360: A6 53     LDX ram_0053
C - - - - - 0x00F372 03:B362: 60        RTS



sub_B363:
C - - - - - 0x00F373 03:B363: B9 8F B3  LDA tbl_B38F,Y
C - - - - - 0x00F376 03:B366: 38        SEC
C - - - - - 0x00F377 03:B367: E5 61     SBC ram_0061
C - - - - - 0x00F379 03:B369: 85 00     STA ram_0000
C - - - - - 0x00F37B 03:B36B: B9 90 B3  LDA tbl_B38F + $01,Y
C - - - - - 0x00F37E 03:B36E: E5 60     SBC ram_0060
C - - - - - 0x00F380 03:B370: D0 1B     BNE bra_B38D
C - - - - - 0x00F382 03:B372: B9 97 B3  LDA tbl_B397,Y
C - - - - - 0x00F385 03:B375: 38        SEC
C - - - - - 0x00F386 03:B376: E5 64     SBC ram_0064
C - - - - - 0x00F388 03:B378: 85 01     STA ram_0001
C - - - - - 0x00F38A 03:B37A: B9 98 B3  LDA tbl_B397 + $01,Y
C - - - - - 0x00F38D 03:B37D: E5 63     SBC ram_0063
C - - - - - 0x00F38F 03:B37F: D0 0C     BNE bra_B38D
C - - - - - 0x00F391 03:B381: A5 00     LDA ram_0000
C - - - - - 0x00F393 03:B383: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00F396 03:B386: A5 01     LDA ram_0001
C - - - - - 0x00F398 03:B388: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00F39B 03:B38B: 18        CLC
C - - - - - 0x00F39C 03:B38C: 60        RTS
bra_B38D:
C - - - - - 0x00F39D 03:B38D: 38        SEC
C - - - - - 0x00F39E 03:B38E: 60        RTS



tbl_B38F:
- D 1 - - - 0x00F39F 03:B38F: 89        .byte $89, $01   ; 00
- D 1 - - - 0x00F3A1 03:B391: E8        .byte $E8, $02   ; 02
- D 1 - - - 0x00F3A3 03:B393: 0E        .byte $0E, $02   ; 04
- D 1 - - - 0x00F3A5 03:B395: 9D        .byte $9D, $02   ; 06

tbl_B397:
- D 1 - - - 0x00F3A7 03:B397: 5C        .byte $5C, $04   ; 00
- D 1 - - - 0x00F3A9 03:B399: 45        .byte $45, $04   ; 02
- D 1 - - - 0x00F3AB 03:B39B: 80        .byte $80, $03   ; 04
- D 1 - - - 0x00F3AD 03:B39D: 95        .byte $95, $02   ; 06



ofs_016_0x00F3AF_18:
C D 1 J - - 0x00F3AF 03:B39F: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00F3B2 03:B3A2: 20 83 91  JSR sub_0x009193_0782x_AND_7F
C - - - - - 0x00F3B5 03:B3A5: C9 32     CMP #$32
C - - - - - 0x00F3B7 03:B3A7: F0 06     BEQ bra_B3AF
C - - - - - 0x00F3B9 03:B3A9: 20 F1 BC  JSR sub_BCF1
C - - - - - 0x00F3BC 03:B3AC: 4C 10 8E  JMP loc_0x008E20
bra_B3AF:
C - - - - - 0x00F3BF 03:B3AF: 4C 1B BF  JMP loc_BF1B



ofs_016_0x00F3C2_04:
C - - J - - 0x00F3C2 03:B3B2: 20 C1 F6  JSR sub_0x01F6D1
C - - - - - 0x00F3C5 03:B3B5: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00F3C8 03:B3B8: 20 10 8E  JSR sub_0x008E20
C - - - - - 0x00F3CB 03:B3BB: 20 BA 93  JSR sub_0x0093CA
C - - - - - 0x00F3CE 03:B3BE: 90 01     BCC bra_B3C1
C - - - - - 0x00F3D0 03:B3C0: 60        RTS
bra_B3C1:
C - - - - - 0x00F3D1 03:B3C1: A5 9F     LDA ram_009F
C - - - - - 0x00F3D3 03:B3C3: 29 7F     AND #$7F
C - - - - - 0x00F3D5 03:B3C5: C9 28     CMP #$28
C - - - - - 0x00F3D7 03:B3C7: 90 1E     BCC bra_B3E7
C - - - - - 0x00F3D9 03:B3C9: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00F3DC 03:B3CC: BC A0 07  LDY ram_07A0_unk,X
C - - - - - 0x00F3DF 03:B3CF: D9 E4 B3  CMP tbl_B3E5 - $01,Y
C - - - - - 0x00F3E2 03:B3D2: D0 03     BNE bra_B3D7
C - - - - - 0x00F3E4 03:B3D4: 20 0A 96  JSR sub_0x00961A
bra_B3D7:
C - - - - - 0x00F3E7 03:B3D7: A9 20     LDA #$20
C - - - - - 0x00F3E9 03:B3D9: 20 62 88  JSR sub_0x008872
C - - - - - 0x00F3EC 03:B3DC: DE A0 07  DEC ram_07A0_unk,X
C - - - - - 0x00F3EF 03:B3DF: D0 03     BNE bra_B3E4_RTS
C - - - - - 0x00F3F1 03:B3E1: 4C 7E B4  JMP loc_B47E
bra_B3E4_RTS:
C - - - - - 0x00F3F4 03:B3E4: 60        RTS



tbl_B3E5:
- D 1 - - - 0x00F3F5 03:B3E5: 6B        .byte $6B   ; 01
- D 1 - - - 0x00F3F6 03:B3E6: 6A        .byte $6A   ; 02



bra_B3E7:
C - - - - - 0x00F3F7 03:B3E7: A4 94     LDY ram_0094
C - - - - - 0x00F3F9 03:B3E9: B9 F0 03  LDA ram_03F0,Y
C - - - - - 0x00F3FC 03:B3EC: 9D 8C 07  STA ram_078C_unk,X
C - - - - - 0x00F3FF 03:B3EF: A5 9F     LDA ram_009F
C - - - - - 0x00F401 03:B3F1: D0 03     BNE bra_B3F6
- - - - - - 0x00F403 03:B3F3: 4C 7E B4  JMP loc_B47E
bra_B3F6:
C - - - - - 0x00F406 03:B3F6: 20 36 B5  JSR sub_B536
C - - - - - 0x00F409 03:B3F9: 20 81 B4  JSR sub_B481
C - - - - - 0x00F40C 03:B3FC: 10 0A     BPL bra_B408
C - - - - - 0x00F40E 03:B3FE: 29 7F     AND #$7F
C - - - - - 0x00F410 03:B400: A8        TAY
C - - - - - 0x00F411 03:B401: 20 30 B5  JSR sub_B530
C - - - - - 0x00F414 03:B404: F0 01     BEQ bra_B407
C - - - - - 0x00F416 03:B406: C8        INY
bra_B407:
C - - - - - 0x00F417 03:B407: 98        TYA
bra_B408:
C - - - - - 0x00F418 03:B408: A8        TAY
C - - - - - 0x00F419 03:B409: B9 D5 B4  LDA tbl_B4D5_index,Y
C - - - - - 0x00F41C 03:B40C: A8        TAY
C - - - - - 0x00F41D 03:B40D: 20 87 B4  JSR sub_B487
C - - - - - 0x00F420 03:B410: 20 81 B4  JSR sub_B481
C - - - - - 0x00F423 03:B413: 10 05     BPL bra_B41A
C - - - - - 0x00F425 03:B415: 20 30 B5  JSR sub_B530
C - - - - - 0x00F428 03:B418: F0 05     BEQ bra_B41F
bra_B41A:
C - - - - - 0x00F42A 03:B41A: A9 20     LDA #$20
C - - - - - 0x00F42C 03:B41C: 20 D4 B5  JSR sub_B5D4
bra_B41F:
C - - - - - 0x00F42F 03:B41F: DE A0 07  DEC ram_07A0_unk,X
C - - - - - 0x00F432 03:B422: D0 59     BNE bra_B47D_RTS
C - - - - - 0x00F434 03:B424: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x00F437 03:B427: C0 07     CPY #$07
C - - - - - 0x00F439 03:B429: 90 1C     BCC bra_B447
C - - - - - 0x00F43B 03:B42B: A9 00     LDA #$00
C - - - - - 0x00F43D 03:B42D: C0 09     CPY #$09
C - - - - - 0x00F43F 03:B42F: 90 18     BCC bra_B449
C - - - - - 0x00F441 03:B431: C0 25     CPY #$25
C - - - - - 0x00F443 03:B433: B0 14     BCS bra_B449
C - - - - - 0x00F445 03:B435: A9 FF     LDA #$FF
C - - - - - 0x00F447 03:B437: C0 1E     CPY #$1E
C - - - - - 0x00F449 03:B439: 90 0E     BCC bra_B449
C - - - - - 0x00F44B 03:B43B: A9 00     LDA #$00
C - - - - - 0x00F44D 03:B43D: C0 20     CPY #$20
C - - - - - 0x00F44F 03:B43F: 90 08     BCC bra_B449
C - - - - - 0x00F451 03:B441: A9 0A     LDA #$0A
C - - - - - 0x00F453 03:B443: C0 23     CPY #$23
C - - - - - 0x00F455 03:B445: B0 02     BCS bra_B449
bra_B447:
C - - - - - 0x00F457 03:B447: A9 55     LDA #$55
bra_B449:
C - - - - - 0x00F459 03:B449: 20 11 B5  JSR sub_B511
C - - - - - 0x00F45C 03:B44C: 20 BE B6  JSR sub_B6BE
C - - - - - 0x00F45F 03:B44F: A5 9F     LDA ram_009F
C - - - - - 0x00F461 03:B451: 38        SEC
C - - - - - 0x00F462 03:B452: E9 21     SBC #$21
C - - - - - 0x00F464 03:B454: C9 03     CMP #$03
C - - - - - 0x00F466 03:B456: B0 26     BCS bra_B47E
C - - - - - 0x00F468 03:B458: BD 8C 07  LDA ram_078C_unk,X
C - - - - - 0x00F46B 03:B45B: C9 69     CMP #$69
C - - - - - 0x00F46D 03:B45D: D0 1F     BNE bra_B47E
C - - - - - 0x00F46F 03:B45F: A0 09     LDY #$09
C - - - - - 0x00F471 03:B461: A9 81     LDA #$81
C - - - - - 0x00F473 03:B463: 85 0A     STA ram_000A
C - - - - - 0x00F475 03:B465: 20 D0 8B  JSR sub_0x008BE0
C - - - - - 0x00F478 03:B468: A9 20     LDA #$20
C - - - - - 0x00F47A 03:B46A: 99 B2 06  STA ram_06B2_obj,Y
C - - - - - 0x00F47D 03:B46D: A9 EF     LDA #$EF
C - - - - - 0x00F47F 03:B46F: 38        SEC
C - - - - - 0x00F480 03:B470: E5 61     SBC ram_0061
C - - - - - 0x00F482 03:B472: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00F485 03:B475: A9 A2     LDA #$A2
C - - - - - 0x00F487 03:B477: 38        SEC
C - - - - - 0x00F488 03:B478: E5 64     SBC ram_0064
C - - - - - 0x00F48A 03:B47A: 99 68 06  STA ram_obj_pos_Y,Y
bra_B47D_RTS:
C - - - - - 0x00F48D 03:B47D: 60        RTS
bra_B47E:
loc_B47E:   ; bzk optimize
C D 1 - - - 0x00F48E 03:B47E: 4C 17 9A  JMP loc_0x009A27



sub_B481:
C - - - - - 0x00F491 03:B481: A5 9F     LDA ram_009F
C - - - - - 0x00F493 03:B483: 38        SEC
C - - - - - 0x00F494 03:B484: E9 01     SBC #$01
C - - - - - 0x00F496 03:B486: 60        RTS



sub_B487:
C - - - - - 0x00F497 03:B487: B9 BB B4  LDA tbl_B4BB,Y
C - - - - - 0x00F49A 03:B48A: 85 02     STA ram_0002
C - - - - - 0x00F49C 03:B48C: B9 BC B4  LDA tbl_B4BB + $01,Y
C - - - - - 0x00F49F 03:B48F: 85 03     STA ram_0003
C - - - - - 0x00F4A1 03:B491: A9 00     LDA #$00
C - - - - - 0x00F4A3 03:B493: 85 06     STA ram_0006
C - - - - - 0x00F4A5 03:B495: 85 07     STA ram_0007
C - - - - - 0x00F4A7 03:B497: 20 81 B4  JSR sub_B481
C - - - - - 0x00F4AA 03:B49A: 10 0D     BPL bra_B4A9
C - - - - - 0x00F4AC 03:B49C: 20 30 B5  JSR sub_B530
C - - - - - 0x00F4AF 03:B49F: F0 08     BEQ bra_B4A9
C - - - - - 0x00F4B1 03:B4A1: A9 60     LDA #$60
C - - - - - 0x00F4B3 03:B4A3: 85 06     STA ram_0006
C - - - - - 0x00F4B5 03:B4A5: A9 01     LDA #$01
C - - - - - 0x00F4B7 03:B4A7: 85 07     STA ram_0007
bra_B4A9:
C - - - - - 0x00F4B9 03:B4A9: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00F4BC 03:B4AC: 18        CLC
C - - - - - 0x00F4BD 03:B4AD: 65 06     ADC ram_0006
C - - - - - 0x00F4BF 03:B4AF: 85 06     STA ram_0006
C - - - - - 0x00F4C1 03:B4B1: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00F4C4 03:B4B4: 65 07     ADC ram_0007
C - - - - - 0x00F4C6 03:B4B6: 85 07     STA ram_0007
C - - - - - 0x00F4C8 03:B4B8: 4C 92 87  JMP loc_0x0087A2



tbl_B4BB:
- D 1 - - - 0x00F4CB 03:B4BB: 52 AB     .word _off011_0x016B62_00
- D 1 - - - 0x00F4CD 03:B4BD: 24 AB     .word _off011_0x016B34_02
- D 1 - - - 0x00F4CF 03:B4BF: 70 AB     .word _off011_0x016B80_04
- D 1 - - - 0x00F4D1 03:B4C1: 8A AB     .word _off011_0x016B9A_06
- - - - - - 0x00F4D3 03:B4C3: A4 AB     .word _off011_0x016BB4_08   ; never used, no such index
- D 1 - - - 0x00F4D5 03:B4C5: 06 AC     .word _off011_0x016C16_0A
- D 1 - - - 0x00F4D7 03:B4C7: D8 AB     .word _off011_0x016BE8_0C
- D 1 - - - 0x00F4D9 03:B4C9: 58 AC     .word _off011_0x016C68_0E
- D 1 - - - 0x00F4DB 03:B4CB: 72 AC     .word _off011_0x016C82_10
- D 1 - - - 0x00F4DD 03:B4CD: B6 AB     .word _off011_0x016BC6_12
- D 1 - - - 0x00F4DF 03:B4CF: 8C AC     .word _off011_0x016C9C_14
- D 1 - - - 0x00F4E1 03:B4D1: 46 AC     .word _off011_0x016C56_16
- D 1 - - - 0x00F4E3 03:B4D3: 24 AC     .word _off011_0x016C34_18



tbl_B4D5_index:
- D 1 - - - 0x00F4E5 03:B4D5: 06        .byte $06   ; 00
- D 1 - - - 0x00F4E6 03:B4D6: 06        .byte $06   ; 01
- - - - - - 0x00F4E7 03:B4D7: 00        .byte $00   ; 02
- D 1 - - - 0x00F4E8 03:B4D8: 02        .byte $02   ; 03
- D 1 - - - 0x00F4E9 03:B4D9: 06        .byte $06   ; 04
- D 1 - - - 0x00F4EA 03:B4DA: 06        .byte $06   ; 05
- D 1 - - - 0x00F4EB 03:B4DB: 00        .byte $00   ; 06
- D 1 - - - 0x00F4EC 03:B4DC: 04        .byte $04   ; 07
- D 1 - - - 0x00F4ED 03:B4DD: 04        .byte $04   ; 08
- - - - - - 0x00F4EE 03:B4DE: 10        .byte $10   ; 09
- D 1 - - - 0x00F4EF 03:B4DF: 10        .byte $10   ; 0A
- - - - - - 0x00F4F0 03:B4E0: 0A        .byte $0A   ; 0B
- D 1 - - - 0x00F4F1 03:B4E1: 0C        .byte $0C   ; 0C
- D 1 - - - 0x00F4F2 03:B4E2: 0C        .byte $0C   ; 0D
- D 1 - - - 0x00F4F3 03:B4E3: 16        .byte $16   ; 0E
- D 1 - - - 0x00F4F4 03:B4E4: 0C        .byte $0C   ; 0F
- D 1 - - - 0x00F4F5 03:B4E5: 18        .byte $18   ; 10
- D 1 - - - 0x00F4F6 03:B4E6: 10        .byte $10   ; 11
- D 1 - - - 0x00F4F7 03:B4E7: 10        .byte $10   ; 12
- D 1 - - - 0x00F4F8 03:B4E8: 0A        .byte $0A   ; 13
- D 1 - - - 0x00F4F9 03:B4E9: 0C        .byte $0C   ; 14
- D 1 - - - 0x00F4FA 03:B4EA: 0C        .byte $0C   ; 15
- D 1 - - - 0x00F4FB 03:B4EB: 16        .byte $16   ; 16
- - - - - - 0x00F4FC 03:B4EC: 10        .byte $10   ; 17
- D 1 - - - 0x00F4FD 03:B4ED: 10        .byte $10   ; 18
- D 1 - - - 0x00F4FE 03:B4EE: 0A        .byte $0A   ; 19
- D 1 - - - 0x00F4FF 03:B4EF: 0C        .byte $0C   ; 1A
- D 1 - - - 0x00F500 03:B4F0: 10        .byte $10   ; 1B
- D 1 - - - 0x00F501 03:B4F1: 10        .byte $10   ; 1C
- D 1 - - - 0x00F502 03:B4F2: 0A        .byte $0A   ; 1D
- D 1 - - - 0x00F503 03:B4F3: 0E        .byte $0E   ; 1E
- D 1 - - - 0x00F504 03:B4F4: 0E        .byte $0E   ; 1F
- - - - - - 0x00F505 03:B4F5: 14        .byte $14   ; 20
- - - - - - 0x00F506 03:B4F6: 14        .byte $14   ; 21
- D 1 - - - 0x00F507 03:B4F7: 14        .byte $14   ; 22
- D 1 - - - 0x00F508 03:B4F8: 12        .byte $12   ; 23
- - - - - - 0x00F509 03:B4F9: 12        .byte $12   ; 24
- D 1 - - - 0x00F50A 03:B4FA: 04        .byte $04   ; 25
- D 1 - - - 0x00F50B 03:B4FB: 04        .byte $04   ; 26



bra_B4FC_loop:
C - - - - - 0x00F50C 03:B4FC: A9 F0     LDA #$F0
C - - - - - 0x00F50E 03:B4FE: 20 11 B5  JSR sub_B511
C - - - - - 0x00F511 03:B501: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00F514 03:B504: 38        SEC
C - - - - - 0x00F515 03:B505: E9 08     SBC #$08
C - - - - - 0x00F517 03:B507: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00F51A 03:B50A: B0 03     BCS bra_B50F
- - - - - - 0x00F51C 03:B50C: DE D2 07  DEC ram_07D2_unk,X
bra_B50F:
C - - - - - 0x00F51F 03:B50F: A9 55     LDA #$55
sub_B511:
C - - - - - 0x00F521 03:B511: C9 0A     CMP #$0A
C - - - - - 0x00F523 03:B513: F0 E7     BEQ bra_B4FC_loop
C - - - - - 0x00F525 03:B515: 48        PHA
C - - - - - 0x00F526 03:B516: A9 04     LDA #$04
C - - - - - 0x00F528 03:B518: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F52B 03:B51B: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00F52E 03:B51E: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F531 03:B521: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00F534 03:B524: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F537 03:B527: A9 01     LDA #$01
C - - - - - 0x00F539 03:B529: 20 A3 90  JSR sub_0x0090B3
C - - - - - 0x00F53C 03:B52C: 68        PLA
C - - - - - 0x00F53D 03:B52D: 4C A3 90  JMP loc_0x0090B3



sub_B530:
C - - - - - 0x00F540 03:B530: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x00F543 03:B533: 29 01     AND #$01
C - - - - - 0x00F545 03:B535: 60        RTS



sub_B536:
C - - - - - 0x00F546 03:B536: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F549 03:B539: D0 3D     BNE bra_B578_RTS
C - - - - - 0x00F54B 03:B53B: 20 C9 8D  JSR sub_0x008DD9_009F_AND_7F_TAY_DEY
C - - - - - 0x00F54E 03:B53E: B9 AD B5  LDA tbl_B5AD,Y
C - - - - - 0x00F551 03:B541: 48        PHA
C - - - - - 0x00F552 03:B542: 20 54 B5  JSR sub_B554
C - - - - - 0x00F555 03:B545: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00F558 03:B548: 38        SEC
C - - - - - 0x00F559 03:B549: E9 40     SBC #$40
C - - - - - 0x00F55B 03:B54B: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00F55E 03:B54E: 68        PLA
C - - - - - 0x00F55F 03:B54F: 10 22     BPL bra_B573
C - - - - - 0x00F561 03:B551: 18        CLC
C - - - - - 0x00F562 03:B552: 69 01     ADC #$01
sub_B554:
C - - - - - 0x00F564 03:B554: 0A        ASL
C - - - - - 0x00F565 03:B555: 0A        ASL
C - - - - - 0x00F566 03:B556: A8        TAY
C - - - - - 0x00F567 03:B557: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00F56A 03:B55A: AA        TAX
C - - - - - 0x00F56B 03:B55B: A9 04     LDA #$04
C - - - - - 0x00F56D 03:B55D: 85 1F     STA ram_001F
bra_B55F_loop:
C - - - - - 0x00F56F 03:B55F: B9 79 B5  LDA tbl_B579,Y
C - - - - - 0x00F572 03:B562: C9 FF     CMP #$FF
C - - - - - 0x00F574 03:B564: F0 0D     BEQ bra_B573
C - - - - - 0x00F576 03:B566: 9D 00 04  STA ram_0400,X
C - - - - - 0x00F579 03:B569: C8        INY
C - - - - - 0x00F57A 03:B56A: 8A        TXA
C - - - - - 0x00F57B 03:B56B: 38        SEC
C - - - - - 0x00F57C 03:B56C: E9 10     SBC #$10
C - - - - - 0x00F57E 03:B56E: AA        TAX
C - - - - - 0x00F57F 03:B56F: C6 1F     DEC ram_001F
C - - - - - 0x00F581 03:B571: D0 EC     BNE bra_B55F_loop
bra_B573:
C - - - - - 0x00F583 03:B573: A6 53     LDX ram_0053
C - - - - - 0x00F585 03:B575: FE 78 07  INC ram_0778_unk,X
bra_B578_RTS:
C - - - - - 0x00F588 03:B578: 60        RTS



tbl_B579:
; 00
- D 1 - - - 0x00F589 03:B579: 76        .byte $76   ; 
- D 1 - - - 0x00F58A 03:B57A: 76        .byte $76   ; 
- D 1 - - - 0x00F58B 03:B57B: 75        .byte $75   ; 
- D 1 - - - 0x00F58C 03:B57C: 00        .byte $00   ; 
; 01
- D 1 - - - 0x00F58D 03:B57D: 76        .byte $76   ; 
- D 1 - - - 0x00F58E 03:B57E: 75        .byte $75   ; 
- D 1 - - - 0x00F58F 03:B57F: 00        .byte $00   ; 
- D 1 - - - 0x00F590 03:B580: FF        .byte $FF   ; 
; 02
- D 1 - - - 0x00F591 03:B581: 6D        .byte $6D   ; 
- D 1 - - - 0x00F592 03:B582: 00        .byte $00   ; 
- D 1 - - - 0x00F593 03:B583: 00        .byte $00   ; 
- D 1 - - - 0x00F594 03:B584: FF        .byte $FF   ; 
; 03
- D 1 - - - 0x00F595 03:B585: 69        .byte $69   ; 
- D 1 - - - 0x00F596 03:B586: 69        .byte $69   ; 
- D 1 - - - 0x00F597 03:B587: 69        .byte $69   ; 
- D 1 - - - 0x00F598 03:B588: 69        .byte $69   ; 
; 04
- D 1 - - - 0x00F599 03:B589: 68        .byte $68   ; 
- D 1 - - - 0x00F59A 03:B58A: 00        .byte $00   ; 
- D 1 - - - 0x00F59B 03:B58B: 00        .byte $00   ; 
- D 1 - - - 0x00F59C 03:B58C: 00        .byte $00   ; 
; 05
- D 1 - - - 0x00F59D 03:B58D: 69        .byte $69   ; 
- D 1 - - - 0x00F59E 03:B58E: 69        .byte $69   ; 
- D 1 - - - 0x00F59F 03:B58F: 69        .byte $69   ; 
- D 1 - - - 0x00F5A0 03:B590: 68        .byte $68   ; 
; 06
- D 1 - - - 0x00F5A1 03:B591: 00        .byte $00   ; 
- D 1 - - - 0x00F5A2 03:B592: 00        .byte $00   ; 
- D 1 - - - 0x00F5A3 03:B593: 00        .byte $00   ; 
- D 1 - - - 0x00F5A4 03:B594: 00        .byte $00   ; 
; 07
- D 1 - - - 0x00F5A5 03:B595: 69        .byte $69   ; 
- D 1 - - - 0x00F5A6 03:B596: 69        .byte $69   ; 
- D 1 - - - 0x00F5A7 03:B597: 68        .byte $68   ; 
- D 1 - - - 0x00F5A8 03:B598: 00        .byte $00   ; 
; 08
- D 1 - - - 0x00F5A9 03:B599: 69        .byte $69   ; 
- D 1 - - - 0x00F5AA 03:B59A: 68        .byte $68   ; 
- D 1 - - - 0x00F5AB 03:B59B: 00        .byte $00   ; 
- D 1 - - - 0x00F5AC 03:B59C: FF        .byte $FF   ; 
; 09
- D 1 - - - 0x00F5AD 03:B59D: 77        .byte $77   ; 
- D 1 - - - 0x00F5AE 03:B59E: 00        .byte $00   ; 
- D 1 - - - 0x00F5AF 03:B59F: FF        .byte $FF   ; 
- - - - - - 0x00F5B0 03:B5A0: FF        .byte $FF   ; 
; 0A
- D 1 - - - 0x00F5B1 03:B5A1: 00        .byte $00   ; 
- D 1 - - - 0x00F5B2 03:B5A2: 00        .byte $00   ; 
- D 1 - - - 0x00F5B3 03:B5A3: 00        .byte $00   ; 
- D 1 - - - 0x00F5B4 03:B5A4: FF        .byte $FF   ; 
; 0B
- D 1 - - - 0x00F5B5 03:B5A5: 8A        .byte $8A   ; 
- D 1 - - - 0x00F5B6 03:B5A6: 8B        .byte $8B   ; 
- D 1 - - - 0x00F5B7 03:B5A7: FF        .byte $FF   ; 
- - - - - - 0x00F5B8 03:B5A8: FF        .byte $FF   ; 
; 0C
- D 1 - - - 0x00F5B9 03:B5A9: 6D        .byte $6D   ; 
- D 1 - - - 0x00F5BA 03:B5AA: 00        .byte $00   ; 
- D 1 - - - 0x00F5BB 03:B5AB: FF        .byte $FF   ; 
- - - - - - 0x00F5BC 03:B5AC: FF        .byte $FF   ; 



tbl_B5AD:
- D 1 - - - 0x00F5BD 03:B5AD: 00        .byte $00 + $00   ; 01
- D 1 - - - 0x00F5BE 03:B5AE: 00        .byte $00 + $00   ; 02
- - - - - - 0x00F5BF 03:B5AF: 00        .byte $00 + $00   ; 03
- D 1 - - - 0x00F5C0 03:B5B0: 00        .byte $00 + $00   ; 04
- D 1 - - - 0x00F5C1 03:B5B1: 01        .byte $00 + $01   ; 05
- D 1 - - - 0x00F5C2 03:B5B2: 01        .byte $00 + $01   ; 06
- D 1 - - - 0x00F5C3 03:B5B3: 01        .byte $00 + $01   ; 07
- D 1 - - - 0x00F5C4 03:B5B4: 02        .byte $00 + $02   ; 08
- D 1 - - - 0x00F5C5 03:B5B5: 02        .byte $00 + $02   ; 09
- - - - - - 0x00F5C6 03:B5B6: 83        .byte $80 + $03   ; 0A
- D 1 - - - 0x00F5C7 03:B5B7: 83        .byte $80 + $03   ; 0B
- - - - - - 0x00F5C8 03:B5B8: 83        .byte $80 + $03   ; 0C
- D 1 - - - 0x00F5C9 03:B5B9: 83        .byte $80 + $03   ; 0D
- D 1 - - - 0x00F5CA 03:B5BA: 83        .byte $80 + $03   ; 0E
- - - - - - 0x00F5CB 03:B5BB: 83        .byte $80 + $03   ; 0F
- D 1 - - - 0x00F5CC 03:B5BC: 83        .byte $80 + $03   ; 10
- - - - - - 0x00F5CD 03:B5BD: 83        .byte $80 + $03   ; 11
- D 1 - - - 0x00F5CE 03:B5BE: 85        .byte $80 + $05   ; 12
- D 1 - - - 0x00F5CF 03:B5BF: 85        .byte $80 + $05   ; 13
- D 1 - - - 0x00F5D0 03:B5C0: 85        .byte $80 + $05   ; 14
- D 1 - - - 0x00F5D1 03:B5C1: 85        .byte $80 + $05   ; 15
- D 1 - - - 0x00F5D2 03:B5C2: 85        .byte $80 + $05   ; 16
- - - - - - 0x00F5D3 03:B5C3: 85        .byte $80 + $05   ; 17
- - - - - - 0x00F5D4 03:B5C4: 07        .byte $00 + $07   ; 18
- D 1 - - - 0x00F5D5 03:B5C5: 07        .byte $00 + $07   ; 19
- D 1 - - - 0x00F5D6 03:B5C6: 07        .byte $00 + $07   ; 1A
- D 1 - - - 0x00F5D7 03:B5C7: 07        .byte $00 + $07   ; 1B
- D 1 - - - 0x00F5D8 03:B5C8: 08        .byte $00 + $08   ; 1C
- D 1 - - - 0x00F5D9 03:B5C9: 08        .byte $00 + $08   ; 1D
- D 1 - - - 0x00F5DA 03:B5CA: 08        .byte $00 + $08   ; 1E
- D 1 - - - 0x00F5DB 03:B5CB: 09        .byte $00 + $09   ; 1F
- D 1 - - - 0x00F5DC 03:B5CC: 09        .byte $00 + $09   ; 20
- - - - - - 0x00F5DD 03:B5CD: 0A        .byte $00 + $0A   ; 21
- - - - - - 0x00F5DE 03:B5CE: 0A        .byte $00 + $0A   ; 22
- D 1 - - - 0x00F5DF 03:B5CF: 0A        .byte $00 + $0A   ; 23
- D 1 - - - 0x00F5E0 03:B5D0: 0B        .byte $00 + $0B   ; 24
- - - - - - 0x00F5E1 03:B5D1: 0B        .byte $00 + $0B   ; 25
- D 1 - - - 0x00F5E2 03:B5D2: 0C        .byte $00 + $0C   ; 26
- D 1 - - - 0x00F5E3 03:B5D3: 0C        .byte $00 + $0C   ; 27



sub_B5D4:
C - - - - - 0x00F5E4 03:B5D4: 18        CLC
C - - - - - 0x00F5E5 03:B5D5: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x00F5E8 03:B5D8: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00F5EB 03:B5DB: 90 03     BCC bra_B5E0_RTS
C - - - - - 0x00F5ED 03:B5DD: FE B4 07  INC ram_07B4_unk,X
bra_B5E0_RTS:
C - - - - - 0x00F5F0 03:B5E0: 60        RTS



ofs_016_0x00F5F1_01:
C - - J - - 0x00F5F1 03:B5E1: 20 E7 B5  JSR sub_B5E7
C - - - - - 0x00F5F4 03:B5E4: 4C 10 8E  JMP loc_0x008E20



sub_B5E7:
C - - - - - 0x00F5F7 03:B5E7: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F5FA 03:B5EA: D0 19     BNE bra_B605
C - - - - - 0x00F5FC 03:B5EC: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F5FF 03:B5EF: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00F602 03:B5F2: A9 1C     LDA #$1C
C - - - - - 0x00F604 03:B5F4: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00F607 03:B5F7: A9 0F     LDA #$0F
C - - - - - 0x00F609 03:B5F9: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00F60C 03:B5FC: A9 46     LDA #$46
C - - - - - 0x00F60E 03:B5FE: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00F611 03:B601: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x00F614 03:B604: 60        RTS
bra_B605:
C - - - - - 0x00F615 03:B605: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00F618 03:B608: F0 30     BEQ bra_B63A
C - - - - - 0x00F61A 03:B60A: A9 00     LDA #$00
C - - - - - 0x00F61C 03:B60C: A0 10     LDY #$10
C - - - - - 0x00F61E 03:B60E: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00F621 03:B611: B0 54     BCS bra_B667_RTS
C - - - - - 0x00F623 03:B613: A5 00     LDA ram_0000
C - - - - - 0x00F625 03:B615: C9 21     CMP #$21
C - - - - - 0x00F627 03:B617: D0 4E     BNE bra_B667_RTS
C - - - - - 0x00F629 03:B619: A9 01     LDA #$01
C - - - - - 0x00F62B 03:B61B: 85 CF     STA ram_00CF
C - - - - - 0x00F62D 03:B61D: A0 07     LDY #$07
C - - - - - 0x00F62F 03:B61F: A9 A6     LDA #$A6
C - - - - - 0x00F631 03:B621: 20 D8 93  JSR sub_0x0093E8
C - - - - - 0x00F634 03:B624: 20 9D F6  JSR sub_0x01F6AD
C - - - - - 0x00F637 03:B627: 4C 3A 97  JMP loc_0x00974A
bra_B62A:
C - - - - - 0x00F63A 03:B62A: A9 00     LDA #$00
C - - - - - 0x00F63C 03:B62C: C0 0E     CPY #$0E
C - - - - - 0x00F63E 03:B62E: 90 02     BCC bra_B632
C - - - - - 0x00F640 03:B630: A9 02     LDA #$02
bra_B632:
C - - - - - 0x00F642 03:B632: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00F645 03:B635: A0 06     LDY #$06
C - - - - - 0x00F647 03:B637: 4C 37 97  JMP loc_0x009747
bra_B63A:
C - - - - - 0x00F64A 03:B63A: A9 10     LDA #$10
C - - - - - 0x00F64C 03:B63C: A0 10     LDY #$10
C - - - - - 0x00F64E 03:B63E: 20 4B 90  JSR sub_0x00905B
C - - - - - 0x00F651 03:B641: 90 E7     BCC bra_B62A
C - - - - - 0x00F653 03:B643: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00F656 03:B646: F0 1F     BEQ bra_B667_RTS
C - - - - - 0x00F658 03:B648: 29 F0     AND #$F0
C - - - - - 0x00F65A 03:B64A: C9 40     CMP #$40
C - - - - - 0x00F65C 03:B64C: F0 2F     BEQ bra_B67D
C - - - - - 0x00F65E 03:B64E: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x00F661 03:B651: A5 01     LDA ram_0001
C - - - - - 0x00F663 03:B653: C9 07     CMP #$07
C - - - - - 0x00F665 03:B655: D0 11     BNE bra_B668
C - - - - - 0x00F667 03:B657: A5 00     LDA ram_0000
C - - - - - 0x00F669 03:B659: C9 F0     CMP #$F0
C - - - - - 0x00F66B 03:B65B: 6A        ROR
C - - - - - 0x00F66C 03:B65C: 5D B2 06  EOR ram_06B2_obj,X
C - - - - - 0x00F66F 03:B65F: 2A        ROL
C - - - - - 0x00F670 03:B660: 90 06     BCC bra_B668
C - - - - - 0x00F672 03:B662: A9 46     LDA #$46
loc_B664:
C D 1 - - - 0x00F674 03:B664: 9D B2 06  STA ram_06B2_obj,X
bra_B667_RTS:
C - - - - - 0x00F677 03:B667: 60        RTS
bra_B668:
C - - - - - 0x00F678 03:B668: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00F67B 03:B66B: 90 FA     BCC bra_B667_RTS
C - - - - - 0x00F67D 03:B66D: 84 18     STY ram_0018
C - - - - - 0x00F67F 03:B66F: A0 00     LDY #$00
C - - - - - 0x00F681 03:B671: 20 0F F7  JSR sub_0x01F71F
C - - - - - 0x00F684 03:B674: C8        INY
C - - - - - 0x00F685 03:B675: 20 0F F7  JSR sub_0x01F71F
C - - - - - 0x00F688 03:B678: A4 18     LDY ram_0018
C - - - - - 0x00F68A 03:B67A: 4C 05 9E  JMP loc_0x009E15
bra_B67D:
C - - - - - 0x00F68D 03:B67D: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F690 03:B680: C9 D8     CMP #$D8
C - - - - - 0x00F692 03:B682: 90 03     BCC bra_B687
C - - - - - 0x00F694 03:B684: 4C 17 9A  JMP loc_0x009A27
bra_B687:
C - - - - - 0x00F697 03:B687: A9 00     LDA #$00
C - - - - - 0x00F699 03:B689: A0 10     LDY #$10
C - - - - - 0x00F69B 03:B68B: 20 BC 8F  JSR sub_0x008FCC
C - - - - - 0x00F69E 03:B68E: A5 01     LDA ram_0001
C - - - - - 0x00F6A0 03:B690: C9 03     CMP #$03
C - - - - - 0x00F6A2 03:B692: D0 D3     BNE bra_B667_RTS
C - - - - - 0x00F6A4 03:B694: 20 7C 96  JSR sub_0x00968C
C - - - - - 0x00F6A7 03:B697: A0 00     LDY #$00
bra_B699:
C - - - - - 0x00F6A9 03:B699: A2 00     LDX #$00
bra_B69B_loop:
C - - - - - 0x00F6AB 03:B69B: B9 C8 B6  LDA tbl_B6C8,Y
C - - - - - 0x00F6AE 03:B69E: 95 08     STA ram_0008,X
C - - - - - 0x00F6B0 03:B6A0: C8        INY
C - - - - - 0x00F6B1 03:B6A1: E8        INX
C - - - - - 0x00F6B2 03:B6A2: E0 05     CPX #$05
C - - - - - 0x00F6B4 03:B6A4: 90 F5     BCC bra_B69B_loop
C - - - - - 0x00F6B6 03:B6A6: A6 53     LDX ram_0053
C - - - - - 0x00F6B8 03:B6A8: 20 83 80  JSR sub_0x008093
C - - - - - 0x00F6BB 03:B6AB: 90 16     BCC bra_B6C3
C - - - - - 0x00F6BD 03:B6AD: 20 D6 90  JSR sub_0x0090E6_0600x_AND_F0
C - - - - - 0x00F6C0 03:B6B0: F0 07     BEQ bra_B6B9
- - - - - - 0x00F6C2 03:B6B2: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x00F6C5 03:B6B5: C9 90     CMP #$90
- - - - - - 0x00F6C7 03:B6B7: B0 0A     BCS bra_B6C3
bra_B6B9:
C - - - - - 0x00F6C9 03:B6B9: A5 0C     LDA ram_000C
C - - - - - 0x00F6CB 03:B6BB: 4C 64 B6  JMP loc_B664



sub_B6BE:
C - - - - - 0x00F6CE 03:B6BE: A9 24     LDA #con_music_24
C - - - - - 0x00F6D0 03:B6C0: 4C D8 95  JMP loc_0x0095E8_play_music



bra_B6C3:
C - - - - - 0x00F6D3 03:B6C3: C0 0A     CPY #$0A
C - - - - - 0x00F6D5 03:B6C5: 90 D2     BCC bra_B699
- - - - - - 0x00F6D7 03:B6C7: 60        RTS



tbl_B6C8:
- D 1 - - - 0x00F6D8 03:B6C8: 7C        .byte $7C   ; 00
- D 1 - - - 0x00F6D9 03:B6C9: 07        .byte $07   ; 01
- D 1 - - - 0x00F6DA 03:B6CA: FB        .byte $FB   ; 02
- D 1 - - - 0x00F6DB 03:B6CB: 07        .byte $07   ; 03
- D 1 - - - 0x00F6DC 03:B6CC: 01        .byte $01   ; 04
- D 1 - - - 0x00F6DD 03:B6CD: 24        .byte $24   ; 05
- D 1 - - - 0x00F6DE 03:B6CE: 08        .byte $08   ; 06
- D 1 - - - 0x00F6DF 03:B6CF: 95        .byte $95   ; 07
- D 1 - - - 0x00F6E0 03:B6D0: 08        .byte $08   ; 08
- D 1 - - - 0x00F6E1 03:B6D1: 81        .byte $81   ; 09



ofs_016_0x00F6E2_1C:
C - - J - - 0x00F6E2 03:B6D2: 20 D8 B6  JSR sub_B6D8
C - - - - - 0x00F6E5 03:B6D5: 4C B6 81  JMP loc_0x0081C6



sub_B6D8:
C - - - - - 0x00F6E8 03:B6D8: 20 E3 8F  JSR sub_0x008FF3
C - - - - - 0x00F6EB 03:B6DB: B0 16     BCS bra_B6F3
C - - - - - 0x00F6ED 03:B6DD: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F6F0 03:B6E0: 29 7F     AND #$7F
C - - - - - 0x00F6F2 03:B6E2: C9 03     CMP #$03
C - - - - - 0x00F6F4 03:B6E4: F0 15     BEQ bra_B6FB
C - - - - - 0x00F6F6 03:B6E6: C9 04     CMP #$04
C - - - - - 0x00F6F8 03:B6E8: D0 08     BNE bra_B6F2_RTS
C - - - - - 0x00F6FA 03:B6EA: 20 E2 90  JSR sub_0x0090F2
C - - - - - 0x00F6FD 03:B6ED: A9 05     LDA #$05
C - - - - - 0x00F6FF 03:B6EF: 9D 78 07  STA ram_0778_unk,X
bra_B6F2_RTS:
C - - - - - 0x00F702 03:B6F2: 60        RTS
bra_B6F3:
C - - - - - 0x00F703 03:B6F3: 20 F3 8F  JSR sub_0x009003
C - - - - - 0x00F706 03:B6F6: A0 06     LDY #$06
C - - - - - 0x00F708 03:B6F8: 4C 37 97  JMP loc_0x009747
bra_B6FB:
C - - - - - 0x00F70B 03:B6FB: BD 1A 06  LDA ram_obj_animation_lo,X
C - - - - - 0x00F70E 03:B6FE: F0 06     BEQ bra_B706
C - - - - - 0x00F710 03:B700: A5 23     LDA ram_0023
C - - - - - 0x00F712 03:B702: 29 0F     AND #$0F
C - - - - - 0x00F714 03:B704: D0 EC     BNE bra_B6F2_RTS
bra_B706:
C - - - - - 0x00F716 03:B706: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00F719 03:B709: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00F71C 03:B70C: 20 E2 90  JSR sub_0x0090F2
C - - - - - 0x00F71F 03:B70F: A9 00     LDA #$00
C - - - - - 0x00F721 03:B711: 20 59 89  JSR sub_0x008969
C - - - - - 0x00F724 03:B714: A9 00     LDA #$00
C - - - - - 0x00F726 03:B716: 9D 0A 07  STA ram_070A_obj,X
C - - - - - 0x00F729 03:B719: 60        RTS



ofs_016_0x00F72A_26:
C - - J - - 0x00F72A 03:B71A: 20 20 B7  JSR sub_B720
C - - - - - 0x00F72D 03:B71D: 4C 10 8E  JMP loc_0x008E20



sub_B720:
C - - - - - 0x00F730 03:B720: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F733 03:B723: D0 28     BNE bra_B74D
C - - - - - 0x00F735 03:B725: 20 83 91  JSR sub_0x009193_0782x_AND_7F
C - - - - - 0x00F738 03:B728: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00F73B 03:B72B: A9 01     LDA #$01
C - - - - - 0x00F73D 03:B72D: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00F740 03:B730: 20 14 B8  JSR sub_B814
C - - - - - 0x00F743 03:B733: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F746 03:B736: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00F749 03:B739: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00F74C 03:B73C: A9 80     LDA #$80
C - - - - - 0x00F74E 03:B73E: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00F751 03:B741: FE 78 07  INC ram_0778_unk,X
loc_B744:
C D 1 - - - 0x00F754 03:B744: 20 23 B8  JSR sub_B823
C - - - - - 0x00F757 03:B747: 20 E1 B7  JSR sub_B7E1
C - - - - - 0x00F75A 03:B74A: 4C 47 96  JMP loc_0x009657



bra_B74D:
C - - - - - 0x00F75D 03:B74D: 20 E3 8F  JSR sub_0x008FF3
C - - - - - 0x00F760 03:B750: B0 A1     BCS bra_B6F3
C - - - - - 0x00F762 03:B752: 20 23 B8  JSR sub_B823
C - - - - - 0x00F765 03:B755: 20 EE B7  JSR sub_B7EE
C - - - - - 0x00F768 03:B758: 20 E1 B7  JSR sub_B7E1
C - - - - - 0x00F76B 03:B75B: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F76E 03:B75E: 85 1F     STA ram_001F
C - - - - - 0x00F770 03:B760: 20 1E 96  JSR sub_0x00962E
C - - - - - 0x00F773 03:B763: E0 07     CPX #$07
C - - - - - 0x00F775 03:B765: 90 27     BCC bra_B78E_RTS
C - - - - - 0x00F777 03:B767: F0 26     BEQ bra_B78F
C - - - - - 0x00F779 03:B769: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F77C 03:B76C: C5 1F     CMP ram_001F
C - - - - - 0x00F77E 03:B76E: F0 1E     BEQ bra_B78E_RTS
C - - - - - 0x00F780 03:B770: A5 1F     LDA ram_001F
C - - - - - 0x00F782 03:B772: C9 04     CMP #$04
C - - - - - 0x00F784 03:B774: F0 18     BEQ bra_B78E_RTS
C - - - - - 0x00F786 03:B776: C9 0C     CMP #$0C
C - - - - - 0x00F788 03:B778: F0 14     BEQ bra_B78E_RTS
C - - - - - 0x00F78A 03:B77A: A9 00     LDA #$00
C - - - - - 0x00F78C 03:B77C: 85 1E     STA ram_001E
C - - - - - 0x00F78E 03:B77E: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00F791 03:B781: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F794 03:B784: D9 68 06  CMP ram_obj_pos_Y,Y
C - - - - - 0x00F797 03:B787: B0 02     BCS bra_B78B
bra_B789:
C - - - - - 0x00F799 03:B789: E6 1E     INC ram_001E
bra_B78B:
C - - - - - 0x00F79B 03:B78B: 20 AF B7  JSR sub_B7AF
bra_B78E_RTS:
C - - - - - 0x00F79E 03:B78E: 60        RTS
bra_B78F:
C - - - - - 0x00F79F 03:B78F: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F7A2 03:B792: C5 1F     CMP ram_001F
C - - - - - 0x00F7A4 03:B794: F0 F8     BEQ bra_B78E_RTS
- - - - - - 0x00F7A6 03:B796: A5 1F     LDA ram_001F
- - - - - - 0x00F7A8 03:B798: F0 F4     BEQ bra_B78E_RTS
- - - - - - 0x00F7AA 03:B79A: C9 08     CMP #$08
- - - - - - 0x00F7AC 03:B79C: F0 F0     BEQ bra_B78E_RTS
- - - - - - 0x00F7AE 03:B79E: A9 00     LDA #$00
- - - - - - 0x00F7B0 03:B7A0: 85 1E     STA ram_001E
- - - - - - 0x00F7B2 03:B7A2: 20 2E 94  JSR sub_0x00943E
- - - - - - 0x00F7B5 03:B7A5: BD 4E 06  LDA ram_obj_pos_X,X
- - - - - - 0x00F7B8 03:B7A8: D9 4E 06  CMP ram_obj_pos_X,Y
- - - - - - 0x00F7BB 03:B7AB: 90 DE     BCC bra_B78B
- - - - - - 0x00F7BD 03:B7AD: B0 DA     BCS bra_B789    ; jmp



sub_B7AF:
C - - - - - 0x00F7BF 03:B7AF: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00F7C2 03:B7B2: 38        SEC
C - - - - - 0x00F7C3 03:B7B3: E9 01     SBC #$01
C - - - - - 0x00F7C5 03:B7B5: 10 02     BPL bra_B7B9
- - - - - - 0x00F7C7 03:B7B7: A9 17     LDA #$17
bra_B7B9:
C - - - - - 0x00F7C9 03:B7B9: 0A        ASL
C - - - - - 0x00F7CA 03:B7BA: 18        CLC
C - - - - - 0x00F7CB 03:B7BB: 65 1E     ADC ram_001E
C - - - - - 0x00F7CD 03:B7BD: A8        TAY
C - - - - - 0x00F7CE 03:B7BE: B9 C7 B7  LDA tbl_B7C7,Y
C - - - - - 0x00F7D1 03:B7C1: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00F7D4 03:B7C4: 4C 44 B7  JMP loc_B744



tbl_B7C7:
- - - - - - 0x00F7D7 03:B7C7: 00        .byte $00   ; 00
- - - - - - 0x00F7D8 03:B7C8: 00        .byte $00   ; 01
- - - - - - 0x00F7D9 03:B7C9: 01        .byte $01   ; 02
- - - - - - 0x00F7DA 03:B7CA: 01        .byte $01   ; 03
- - - - - - 0x00F7DB 03:B7CB: 02        .byte $02   ; 04
- - - - - - 0x00F7DC 03:B7CC: 0A        .byte $0A   ; 05
- - - - - - 0x00F7DD 03:B7CD: 03        .byte $03   ; 06
- - - - - - 0x00F7DE 03:B7CE: 03        .byte $03   ; 07
- - - - - - 0x00F7DF 03:B7CF: 04        .byte $04   ; 08
- - - - - - 0x00F7E0 03:B7D0: 08        .byte $08   ; 09
- - - - - - 0x00F7E1 03:B7D1: 05        .byte $05   ; 0A
- - - - - - 0x00F7E2 03:B7D2: 05        .byte $05   ; 0B
- - - - - - 0x00F7E3 03:B7D3: 06        .byte $06   ; 0C
- - - - - - 0x00F7E4 03:B7D4: 06        .byte $06   ; 0D
- - - - - - 0x00F7E5 03:B7D5: 07        .byte $07   ; 0E
- D 1 - - - 0x00F7E6 03:B7D6: 07        .byte $07   ; 0F
- - - - - - 0x00F7E7 03:B7D7: 04        .byte $04   ; 10
- - - - - - 0x00F7E8 03:B7D8: 08        .byte $08   ; 11
- D 1 - - - 0x00F7E9 03:B7D9: 09        .byte $09   ; 12
- - - - - - 0x00F7EA 03:B7DA: 09        .byte $09   ; 13
- - - - - - 0x00F7EB 03:B7DB: 02        .byte $02   ; 14
- - - - - - 0x00F7EC 03:B7DC: 0A        .byte $0A   ; 15
- - - - - - 0x00F7ED 03:B7DD: 0B        .byte $0B   ; 16
- - - - - - 0x00F7EE 03:B7DE: 0B        .byte $0B   ; 17
- - - - - - 0x00F7EF 03:B7DF: 0C        .byte $0C   ; 18
- - - - - - 0x00F7F0 03:B7E0: 0C        .byte $0C   ; 19



sub_B7E1:
C - - - - - 0x00F7F1 03:B7E1: AD 64 B8  LDA tbl_B864
C - - - - - 0x00F7F4 03:B7E4: 85 00     STA ram_0000
C - - - - - 0x00F7F6 03:B7E6: AD 65 B8  LDA tbl_B864 + $01
C - - - - - 0x00F7F9 03:B7E9: 85 01     STA ram_0001
C - - - - - 0x00F7FB 03:B7EB: 4C 62 96  JMP loc_0x009672



sub_B7EE:
C - - - - - 0x00F7FE 03:B7EE: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00F801 03:B7F1: 48        PHA
C - - - - - 0x00F802 03:B7F2: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00F805 03:B7F5: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00F808 03:B7F8: DE B4 07  DEC ram_07B4_unk,X
C - - - - - 0x00F80B 03:B7FB: D0 13     BNE bra_B810
C - - - - - 0x00F80D 03:B7FD: A9 D1     LDA #$D1
C - - - - - 0x00F80F 03:B7FF: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x00F812 03:B802: 20 94 84  JSR sub_0x0084A4
C - - - - - 0x00F815 03:B805: A5 1E     LDA ram_001E
C - - - - - 0x00F817 03:B807: D0 04     BNE bra_B80D
C - - - - - 0x00F819 03:B809: 8A        TXA
C - - - - - 0x00F81A 03:B80A: 99 F4 06  STA ram_06F4_obj,Y
bra_B80D:
C - - - - - 0x00F81D 03:B80D: 20 14 B8  JSR sub_B814
bra_B810:
C - - - - - 0x00F820 03:B810: 68        PLA
C - - - - - 0x00F821 03:B811: 4C EE 95  JMP loc_0x0095FE_sta_06B2x



sub_B814:
C - - - - - 0x00F824 03:B814: A5 29     LDA ram_0029
C - - - - - 0x00F826 03:B816: 29 3F     AND #$3F
C - - - - - 0x00F828 03:B818: 18        CLC
C - - - - - 0x00F829 03:B819: 69 38     ADC #$38
C - - - - - 0x00F82B 03:B81B: 90 02     BCC bra_B81F
- - - - - - 0x00F82D 03:B81D: A9 80     LDA #$80
bra_B81F:
C - - - - - 0x00F82F 03:B81F: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00F832 03:B822: 60        RTS



sub_B823:
C - - - - - 0x00F833 03:B823: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00F836 03:B826: F0 05     BEQ bra_B82D
C - - - - - 0x00F838 03:B828: DE D2 07  DEC ram_07D2_unk,X
C - - - - - 0x00F83B 03:B82B: D0 2E     BNE bra_B85B_RTS
bra_B82D:
C - - - - - 0x00F83D 03:B82D: A9 20     LDA #$20
C - - - - - 0x00F83F 03:B82F: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00F842 03:B832: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00F845 03:B835: 48        PHA
C - - - - - 0x00F846 03:B836: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00F849 03:B839: 85 0D     STA ram_000D
C - - - - - 0x00F84B 03:B83B: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00F84E 03:B83E: 20 F1 90  JSR sub_0x009101
C - - - - - 0x00F851 03:B841: BD B2 06  LDA ram_06B2_obj,X
C - - - - - 0x00F854 03:B844: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00F857 03:B847: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F85A 03:B84A: 4A        LSR
C - - - - - 0x00F85B 03:B84B: A8        TAY
C - - - - - 0x00F85C 03:B84C: B9 5C B8  LDA tbl_B85C,Y
C - - - - - 0x00F85F 03:B84F: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x00F862 03:B852: A9 20     LDA #$20
C - - - - - 0x00F864 03:B854: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00F867 03:B857: 68        PLA
C - - - - - 0x00F868 03:B858: 9D B2 06  STA ram_06B2_obj,X
bra_B85B_RTS:
C - - - - - 0x00F86B 03:B85B: 60        RTS



tbl_B85C:
- D 1 - - - 0x00F86C 03:B85C: 0F        .byte $0F   ; 00
- D 1 - - - 0x00F86D 03:B85D: 10        .byte $10   ; 02
- D 1 - - - 0x00F86E 03:B85E: 09        .byte $09   ; 04
- D 1 - - - 0x00F86F 03:B85F: 0A        .byte $0A   ; 06
- D 1 - - - 0x00F870 03:B860: 0B        .byte $0B   ; 08
- D 1 - - - 0x00F871 03:B861: 0C        .byte $0C   ; 0A
- D 1 - - - 0x00F872 03:B862: 0D        .byte $0D   ; 0C
- D 1 - - - 0x00F873 03:B863: 0E        .byte $0E   ; 0E



tbl_B864:   ; bzk optimize
- D 1 - - - 0x00F874 03:B864: 66 B8     .word tbl_B866



tbl_B866:
; read via 0x009672
; 00
- D 1 - I - 0x00F876 03:B866: 52        .byte $52   ; 
- D 1 - I - 0x00F877 03:B867: 86        .byte $86   ; 
- D 1 - I - 0x00F878 03:B868: 01        .byte $01   ; 
- D 1 - I - 0x00F879 03:B869: 01        .byte $01   ; 
; 01
- D 1 - I - 0x00F87A 03:B86A: B3        .byte $B3   ; 
- D 1 - I - 0x00F87B 03:B86B: 00        .byte $00   ; 
- D 1 - I - 0x00F87C 03:B86C: 41        .byte $41   ; 
- D 1 - I - 0x00F87D 03:B86D: 02        .byte $02   ; 
; 02
- - - - - - 0x00F87E 03:B86E: A4        .byte $A4   ; 
- - - - - - 0x00F87F 03:B86F: 86        .byte $86   ; 
- - - - - - 0x00F880 03:B870: 01        .byte $01   ; 
- - - - - - 0x00F881 03:B871: 03        .byte $03   ; 
; 03
- - - - - - 0x00F882 03:B872: 54        .byte $54   ; 
- - - - - - 0x00F883 03:B873: 01        .byte $01   ; 
- - - - - - 0x00F884 03:B874: C1        .byte $C1   ; 
- - - - - - 0x00F885 03:B875: 04        .byte $04   ; 
; 04
- - - - - - 0x00F886 03:B876: 52        .byte $52   ; 
- - - - - - 0x00F887 03:B877: 86        .byte $86   ; 
- - - - - - 0x00F888 03:B878: 01        .byte $01   ; 
- - - - - - 0x00F889 03:B879: 05        .byte $05   ; 
; 05
- - - - - - 0x00F88A 03:B87A: C5        .byte $C5   ; 
- - - - - - 0x00F88B 03:B87B: 01        .byte $01   ; 
- - - - - - 0x00F88C 03:B87C: 41        .byte $41   ; 
- - - - - - 0x00F88D 03:B87D: 06        .byte $06   ; 
; 06
- D 1 - I - 0x00F88E 03:B87E: A4        .byte $A4   ; 
- D 1 - I - 0x00F88F 03:B87F: 86        .byte $86   ; 
- D 1 - I - 0x00F890 03:B880: 81        .byte $81   ; 
- D 1 - I - 0x00F891 03:B881: 07        .byte $07   ; 
; 07
- D 1 - I - 0x00F892 03:B882: 54        .byte $54   ; 
- D 1 - I - 0x00F893 03:B883: 01        .byte $01   ; 
- D 1 - I - 0x00F894 03:B884: C1        .byte $C1   ; 
- D 1 - I - 0x00F895 03:B885: 08        .byte $08   ; 
; 08
- D 1 - I - 0x00F896 03:B886: 52        .byte $52   ; 
- D 1 - I - 0x00F897 03:B887: 86        .byte $86   ; 
- D 1 - I - 0x00F898 03:B888: 81        .byte $81   ; 
- D 1 - I - 0x00F899 03:B889: 09        .byte $09   ; 
; 09
- D 1 - I - 0x00F89A 03:B88A: B3        .byte $B3   ; 
- D 1 - I - 0x00F89B 03:B88B: 00        .byte $00   ; 
- D 1 - I - 0x00F89C 03:B88C: 41        .byte $41   ; 
- D 1 - I - 0x00F89D 03:B88D: 0A        .byte $0A   ; 
; 0A
- D 1 - I - 0x00F89E 03:B88E: A4        .byte $A4   ; 
- D 1 - I - 0x00F89F 03:B88F: 86        .byte $86   ; 
- D 1 - I - 0x00F8A0 03:B890: 81        .byte $81   ; 
- D 1 - I - 0x00F8A1 03:B891: 0B        .byte $0B   ; 
; 0B
- - - - - - 0x00F8A2 03:B892: 33        .byte $33   ; 
- - - - - - 0x00F8A3 03:B893: 00        .byte $00   ; 
- - - - - - 0x00F8A4 03:B894: C1        .byte $C1   ; 
- - - - - - 0x00F8A5 03:B895: 00        .byte $00   ; 
; 0C
- - - - - - 0x00F8A6 03:B896: 33        .byte $33   ; 
- - - - - - 0x00F8A7 03:B897: 00        .byte $00   ; 
- - - - - - 0x00F8A8 03:B898: C1        .byte $C1   ; 
- - - - - - 0x00F8A9 03:B899: 00        .byte $00   ; 



ofs_016_0x00F8AA_06:
C - - J - - 0x00F8AA 03:B89A: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F8AD 03:B89D: D0 10     BNE bra_B8AF
C - - - - - 0x00F8AF 03:B89F: A9 00     LDA #$00
C - - - - - 0x00F8B1 03:B8A1: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00F8B4 03:B8A4: A9 20     LDA #$20
C - - - - - 0x00F8B6 03:B8A6: 4C 25 B9  JMP loc_B925



bra_B8A9:
C - - - - - 0x00F8B9 03:B8A9: 4C 17 9A  JMP loc_0x009A27



bra_B8AC:
C - - - - - 0x00F8BC 03:B8AC: 4C C8 90  JMP loc_0x0090D8_0600x_write_08



bra_B8AF:
C - - - - - 0x00F8BF 03:B8AF: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x00F8C2 03:B8B2: B0 F5     BCS bra_B8A9
C - - - - - 0x00F8C4 03:B8B4: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00F8C7 03:B8B7: 30 F3     BMI bra_B8AC
C - - - - - 0x00F8C9 03:B8B9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00F8CC 03:B8BC: 18        CLC
C - - - - - 0x00F8CD 03:B8BD: 69 20     ADC #$20
C - - - - - 0x00F8CF 03:B8BF: C9 40     CMP #$40
C - - - - - 0x00F8D1 03:B8C1: 90 E9     BCC bra_B8AC
C - - - - - 0x00F8D3 03:B8C3: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F8D6 03:B8C6: C9 C0     CMP #$C0
C - - - - - 0x00F8D8 03:B8C8: B0 E2     BCS bra_B8AC
C - - - - - 0x00F8DA 03:B8CA: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00F8DD 03:B8CD: C9 BD     CMP #$BD
C - - - - - 0x00F8DF 03:B8CF: F0 D8     BEQ bra_B8A9
C - - - - - 0x00F8E1 03:B8D1: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00F8E4 03:B8D4: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00F8E7 03:B8D7: 0A        ASL
C - - - - - 0x00F8E8 03:B8D8: A8        TAY
C - - - - - 0x00F8E9 03:B8D9: B9 E4 B8  LDA tbl_B8E6 - $02,Y
C - - - - - 0x00F8EC 03:B8DC: 85 02     STA ram_0002
C - - - - - 0x00F8EE 03:B8DE: B9 E5 B8  LDA tbl_B8E6 - $01,Y
C - - - - - 0x00F8F1 03:B8E1: 85 03     STA ram_0003
C - - - - - 0x00F8F3 03:B8E3: 6C 02 00  JMP (ram_0002)



tbl_B8E6:
- D 1 - - - 0x00F8F6 03:B8E6: F2 B8     .word ofs_013_B8F2_01
- D 1 - - - 0x00F8F8 03:B8E8: F9 B8     .word ofs_013_B8F9_02
- D 1 - - - 0x00F8FA 03:B8EA: 2C B9     .word ofs_013_B92C_03
- D 1 - - - 0x00F8FC 03:B8EC: 56 B9     .word ofs_013_B956_04
- D 1 - - - 0x00F8FE 03:B8EE: 69 B9     .word ofs_013_B969_05
- D 1 - - - 0x00F900 03:B8F0: 83 B9     .word ofs_013_B983_06



ofs_013_B8F2_01:
C - - J - - 0x00F902 03:B8F2: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F905 03:B8F5: D0 34     BNE bra_B92B_RTS
C - - - - - 0x00F907 03:B8F7: F0 2F     BEQ bra_B928    ; jmp



ofs_013_B8F9_02:
C - - J - - 0x00F909 03:B8F9: 20 DC 90  JSR sub_0x0090EC
C - - - - - 0x00F90C 03:B8FC: C9 AB     CMP #$AB
C - - - - - 0x00F90E 03:B8FE: F0 04     BEQ bra_B904
C - - - - - 0x00F910 03:B900: C9 03     CMP #$03
C - - - - - 0x00F912 03:B902: D0 A5     BNE bra_B8A9
bra_B904:
C - - - - - 0x00F914 03:B904: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F916 03:B906: D0 23     BNE bra_B92B_RTS
C - - - - - 0x00F918 03:B908: A9 AB     LDA #$AB
C - - - - - 0x00F91A 03:B90A: 20 85 90  JSR sub_0x009095
C - - - - - 0x00F91D 03:B90D: B0 1C     BCS bra_B92B_RTS
C - - - - - 0x00F91F 03:B90F: A9 E1     LDA #$E1
C - - - - - 0x00F921 03:B911: 20 70 90  JSR sub_0x009080
C - - - - - 0x00F924 03:B914: A6 53     LDX ram_0053
C - - - - - 0x00F926 03:B916: 9D A0 07  STA ram_07A0_unk,X
C - - - - - 0x00F929 03:B919: A9 E2     LDA #$E2
C - - - - - 0x00F92B 03:B91B: 20 70 90  JSR sub_0x009080
C - - - - - 0x00F92E 03:B91E: A6 53     LDX ram_0053
C - - - - - 0x00F930 03:B920: 9D 82 06  STA ram_0682_obj,X
loc_B923:
C D 1 - - - 0x00F933 03:B923: A9 18     LDA #$18
loc_B925:
C D 1 - - - 0x00F935 03:B925: 9D 9C 06  STA ram_069C_obj,X
bra_B928:
C - - - - - 0x00F938 03:B928: FE 78 07  INC ram_0778_unk,X
bra_B92B_RTS:
C - - - - - 0x00F93B 03:B92B: 60        RTS



ofs_013_B92C_03:
C - - J - - 0x00F93C 03:B92C: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00F93F 03:B92F: F0 05     BEQ bra_B936
C - - - - - 0x00F941 03:B931: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F944 03:B934: D0 F5     BNE bra_B92B_RTS
bra_B936:
C - - - - - 0x00F946 03:B936: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F948 03:B938: D0 F1     BNE bra_B92B_RTS
C - - - - - 0x00F94A 03:B93A: BD A0 07  LDA ram_07A0_unk,X
C - - - - - 0x00F94D 03:B93D: 85 06     STA ram_0006
C - - - - - 0x00F94F 03:B93F: BD 82 06  LDA ram_0682_obj,X
C - - - - - 0x00F952 03:B942: 85 07     STA ram_0007
; breakpoint hits during green cannons on the plane wing
C - - - - - 0x00F954 03:B944: AD 54 B9  LDA tbl_B954
C - - - - - 0x00F957 03:B947: 85 02     STA ram_0002
C - - - - - 0x00F959 03:B949: AD 55 B9  LDA tbl_B954 + $01
C - - - - - 0x00F95C 03:B94C: 85 03     STA ram_0003
C - - - - - 0x00F95E 03:B94E: 20 92 87  JSR sub_0x0087A2
C - - - - - 0x00F961 03:B951: 4C 23 B9  JMP loc_B923



tbl_B954:
- D 1 - - - 0x00F964 03:B954: B6 AC     .word off_0x016CC6



ofs_013_B956_04:
C - - J - - 0x00F966 03:B956: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F969 03:B959: D0 D0     BNE bra_B92B_RTS
C - - - - - 0x00F96B 03:B95B: 20 E8 91  JSR sub_0x0091F8
C - - - - - 0x00F96E 03:B95E: A9 D1     LDA #$D1
C - - - - - 0x00F970 03:B960: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00F973 03:B963: 20 A6 B9  JSR sub_B9A6
bra_B966:
C - - - - - 0x00F976 03:B966: 4C 23 B9  JMP loc_B923



ofs_013_B969_05:
C - - J - - 0x00F979 03:B969: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00F97C 03:B96C: F0 05     BEQ bra_B973
C - - - - - 0x00F97E 03:B96E: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F981 03:B971: D0 B8     BNE bra_B92B_RTS
bra_B973:
C - - - - - 0x00F983 03:B973: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F985 03:B975: D0 B4     BNE bra_B92B_RTS
C - - - - - 0x00F987 03:B977: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00F98A 03:B97A: A9 AB     LDA #$AB
C - - - - - 0x00F98C 03:B97C: 20 85 90  JSR sub_0x009095
C - - - - - 0x00F98F 03:B97F: B0 AA     BCS bra_B92B_RTS
C - - - - - 0x00F991 03:B981: 90 E3     BCC bra_B966    ; jmp



ofs_013_B983_06:
C - - J - - 0x00F993 03:B983: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00F996 03:B986: F0 05     BEQ bra_B98D
C - - - - - 0x00F998 03:B988: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00F99B 03:B98B: D0 34     BNE bra_B9C1_RTS
bra_B98D:
C - - - - - 0x00F99D 03:B98D: A5 39     LDA ram_buffer_index_2
C - - - - - 0x00F99F 03:B98F: D0 30     BNE bra_B9C1_RTS
C - - - - - 0x00F9A1 03:B991: 20 B9 8F  JSR sub_0x008FC9
C - - - - - 0x00F9A4 03:B994: A9 03     LDA #$03
C - - - - - 0x00F9A6 03:B996: 20 85 90  JSR sub_0x009095
C - - - - - 0x00F9A9 03:B999: B0 90     BCS bra_B92B_RTS
C - - - - - 0x00F9AB 03:B99B: A9 30     LDA #$30
C - - - - - 0x00F9AD 03:B99D: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00F9B0 03:B9A0: A9 00     LDA #$00
C - - - - - 0x00F9B2 03:B9A2: 9D 78 07  STA ram_0778_unk,X
C - - - - - 0x00F9B5 03:B9A5: 60        RTS



sub_B9A6:
C - - - - - 0x00F9B6 03:B9A6: 98        TYA
C - - - - - 0x00F9B7 03:B9A7: AA        TAX
C - - - - - 0x00F9B8 03:B9A8: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00F9BB 03:B9AB: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00F9BE 03:B9AE: 18        CLC
C - - - - - 0x00F9BF 03:B9AF: 79 C2 B9  ADC tbl_B9C2,Y
C - - - - - 0x00F9C2 03:B9B2: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00F9C5 03:B9B5: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00F9C8 03:B9B8: 18        CLC
C - - - - - 0x00F9C9 03:B9B9: 79 C3 B9  ADC tbl_B9C2 + $01,Y
C - - - - - 0x00F9CC 03:B9BC: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00F9CF 03:B9BF: A6 53     LDX ram_0053
bra_B9C1_RTS:
C - - - - - 0x00F9D1 03:B9C1: 60        RTS



tbl_B9C2:
- D 1 - - - 0x00F9D2 03:B9C2: 08        .byte $08, $00   ; 00
- D 1 - - - 0x00F9D4 03:B9C4: 08        .byte $08, $08   ; 10
- - - - - - 0x00F9D6 03:B9C6: 00        .byte $00, $08   ; 20
- D 1 - - - 0x00F9D8 03:B9C8: F8        .byte $F8, $08   ; 30
- D 1 - - - 0x00F9DA 03:B9CA: F8        .byte $F8, $00   ; 40
- - - - - - 0x00F9DC 03:B9CC: F8        .byte $F8, $F8   ; 50
- - - - - - 0x00F9DE 03:B9CE: 00        .byte $00, $F8   ; 60
- D 1 - - - 0x00F9E0 03:B9D0: 08        .byte $08, $F8   ; 70



ofs_016_0x00F9E2_16:
C - - J - - 0x00F9E2 03:B9D2: 20 D8 B9  JSR sub_B9D8
C - - - - - 0x00F9E5 03:B9D5: 4C 10 8E  JMP loc_0x008E20



sub_B9D8:
C - - - - - 0x00F9E8 03:B9D8: 20 CE 90  JSR sub_0x0090DE_0600x_ORA_08
C - - - - - 0x00F9EB 03:B9DB: A0 00     LDY #$00
C - - - - - 0x00F9ED 03:B9DD: 98        TYA
C - - - - - 0x00F9EE 03:B9DE: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00F9F1 03:B9E1: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00F9F4 03:B9E4: D0 07     BNE bra_B9ED
- - - - - - 0x00F9F6 03:B9E6: B9 68 06  LDA ram_obj_pos_Y,Y
- - - - - - 0x00F9F9 03:B9E9: C9 30     CMP #$30
- - - - - - 0x00F9FB 03:B9EB: 90 50     BCC bra_BA3D_RTS
bra_B9ED:
C - - - - - 0x00F9FD 03:B9ED: C8        INY
C - - - - - 0x00F9FE 03:B9EE: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FA01 03:B9F1: D0 07     BNE bra_B9FA
C - - - - - 0x00FA03 03:B9F3: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00FA06 03:B9F6: C9 30     CMP #$30
C - - - - - 0x00FA08 03:B9F8: 90 43     BCC bra_BA3D_RTS
bra_B9FA:
C - - - - - 0x00FA0A 03:B9FA: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00FA0D 03:B9FD: D0 0E     BNE bra_BA0D
C - - - - - 0x00FA0F 03:B9FF: A5 23     LDA ram_0023
C - - - - - 0x00FA11 03:BA01: 29 1F     AND #$1F
C - - - - - 0x00FA13 03:BA03: D0 38     BNE bra_BA3D_RTS
C - - - - - 0x00FA15 03:BA05: A5 29     LDA ram_0029
C - - - - - 0x00FA17 03:BA07: 29 01     AND #$01
C - - - - - 0x00FA19 03:BA09: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00FA1C 03:BA0C: 60        RTS
bra_BA0D:
C - - - - - 0x00FA1D 03:BA0D: A9 82     LDA #$82
C - - - - - 0x00FA1F 03:BA0F: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00FA22 03:BA12: B0 29     BCS bra_BA3D_RTS
C - - - - - 0x00FA24 03:BA14: C0 08     CPY #$08
C - - - - - 0x00FA26 03:BA16: B0 1B     BCS bra_BA33
C - - - - - 0x00FA28 03:BA18: A9 FF     LDA #$FF
C - - - - - 0x00FA2A 03:BA1A: 99 4E 06  STA ram_obj_pos_X,Y
C - - - - - 0x00FA2D 03:BA1D: A5 29     LDA ram_0029
C - - - - - 0x00FA2F 03:BA1F: 29 03     AND #$03
C - - - - - 0x00FA31 03:BA21: AA        TAX
C - - - - - 0x00FA32 03:BA22: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00FA35 03:BA25: 18        CLC
C - - - - - 0x00FA36 03:BA26: 7D 3E BA  ADC tbl_BA3E,X
C - - - - - 0x00FA39 03:BA29: 99 68 06  STA ram_obj_pos_Y,Y
C - - - - - 0x00FA3C 03:BA2C: 18        CLC
C - - - - - 0x00FA3D 03:BA2D: 69 20     ADC #$20
C - - - - - 0x00FA3F 03:BA2F: C9 40     CMP #$40
C - - - - - 0x00FA41 03:BA31: B0 05     BCS bra_BA38
bra_BA33:
C - - - - - 0x00FA43 03:BA33: 98        TYA
C - - - - - 0x00FA44 03:BA34: AA        TAX
C - - - - - 0x00FA45 03:BA35: 20 17 9A  JSR sub_0x009A27
bra_BA38:
C - - - - - 0x00FA48 03:BA38: A6 53     LDX ram_0053
C - - - - - 0x00FA4A 03:BA3A: DE D2 07  DEC ram_07D2_unk,X
bra_BA3D_RTS:
C - - - - - 0x00FA4D 03:BA3D: 60        RTS



tbl_BA3E:
- D 1 - - - 0x00FA4E 03:BA3E: C4        .byte $C4   ; 00
- D 1 - - - 0x00FA4F 03:BA3F: D8        .byte $D8   ; 01
- D 1 - - - 0x00FA50 03:BA40: 00        .byte $00   ; 02
- D 1 - - - 0x00FA51 03:BA41: 28        .byte $28   ; 03



bra_BA42:
C - - - - - 0x00FA52 03:BA42: 4C 17 9A  JMP loc_0x009A27



ofs_016_0x00FA55_03:
C - - J - - 0x00FA55 03:BA45: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00FA58 03:BA48: D0 0D     BNE bra_BA57
C - - - - - 0x00FA5A 03:BA4A: A9 00     LDA #$00
C - - - - - 0x00FA5C 03:BA4C: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FA5F 03:BA4F: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x00FA62 03:BA52: A9 10     LDA #$10
C - - - - - 0x00FA64 03:BA54: 9D 9C 06  STA ram_069C_obj,X
bra_BA57:
C - - - - - 0x00FA67 03:BA57: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x00FA6A 03:BA5A: B0 E6     BCS bra_BA42
C - - - - - 0x00FA6C 03:BA5C: 20 1E 91  JSR sub_0x00912E
C - - - - - 0x00FA6F 03:BA5F: 90 0A     BCC bra_BA6B
C - - - - - 0x00FA71 03:BA61: A5 00     LDA ram_0000
C - - - - - 0x00FA73 03:BA63: C9 04     CMP #$04
C - - - - - 0x00FA75 03:BA65: F0 04     BEQ bra_BA6B
C - - - - - 0x00FA77 03:BA67: C9 A0     CMP #$A0
C - - - - - 0x00FA79 03:BA69: D0 D7     BNE bra_BA42
bra_BA6B:
C - - - - - 0x00FA7B 03:BA6B: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FA7E 03:BA6E: 10 06     BPL bra_BA76
bra_BA70:
C - - - - - 0x00FA80 03:BA70: 20 4C 9A  JSR sub_0x009A5C



bra_BA73:
loc_BA73:   ; bzk optimize
C D 1 - - - 0x00FA83 03:BA73: 4C C8 90  JMP loc_0x0090D8_0600x_write_08



bra_BA76:
C - - - - - 0x00FA86 03:BA76: DE 9C 06  DEC ram_069C_obj,X
C - - - - - 0x00FA89 03:BA79: D0 0F     BNE bra_BA8A
C - - - - - 0x00FA8B 03:BA7B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FA8E 03:BA7E: 18        CLC
C - - - - - 0x00FA8F 03:BA7F: 69 01     ADC #$01
C - - - - - 0x00FA91 03:BA81: C9 0C     CMP #$0C
C - - - - - 0x00FA93 03:BA83: 90 02     BCC bra_BA87
- - - - - - 0x00FA95 03:BA85: A9 00     LDA #$00
bra_BA87:
C - - - - - 0x00FA97 03:BA87: 9D B4 07  STA ram_07B4_unk,X
bra_BA8A:
C - - - - - 0x00FA9A 03:BA8A: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FA9D 03:BA8D: 0A        ASL
C - - - - - 0x00FA9E 03:BA8E: 0A        ASL
C - - - - - 0x00FA9F 03:BA8F: A8        TAY
C - - - - - 0x00FAA0 03:BA90: B9 05 BB  LDA tbl_BB03 + $02,Y
C - - - - - 0x00FAA3 03:BA93: 9D 1A 06  STA ram_obj_animation_lo,X
C - - - - - 0x00FAA6 03:BA96: A9 20     LDA #$20
C - - - - - 0x00FAA8 03:BA98: 9D 34 06  STA ram_obj_animation_hi,X
C - - - - - 0x00FAAB 03:BA9B: B9 03 BB  LDA tbl_BB03,Y
C - - - - - 0x00FAAE 03:BA9E: 18        CLC
C - - - - - 0x00FAAF 03:BA9F: 7D 4E 06  ADC ram_obj_pos_X,X
C - - - - - 0x00FAB2 03:BAA2: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FAB5 03:BAA5: 6A        ROR
C - - - - - 0x00FAB6 03:BAA6: 59 03 BB  EOR tbl_BB03,Y
C - - - - - 0x00FAB9 03:BAA9: 2A        ROL
C - - - - - 0x00FABA 03:BAAA: B0 C4     BCS bra_BA70
C - - - - - 0x00FABC 03:BAAC: B9 04 BB  LDA tbl_BB03 + $01,Y
C - - - - - 0x00FABF 03:BAAF: 18        CLC
C - - - - - 0x00FAC0 03:BAB0: 7D 68 06  ADC ram_obj_pos_Y,X
C - - - - - 0x00FAC3 03:BAB3: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FAC6 03:BAB6: 6A        ROR
C - - - - - 0x00FAC7 03:BAB7: 59 04 BB  EOR tbl_BB03 + $01,Y
C - - - - - 0x00FACA 03:BABA: 2A        ROL
C - - - - - 0x00FACB 03:BABB: B0 B3     BCS bra_BA70
C - - - - - 0x00FACD 03:BABD: B9 06 BB  LDA tbl_BB03 + $03,Y
C - - - - - 0x00FAD0 03:BAC0: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00FAD3 03:BAC3: BD 9C 06  LDA ram_069C_obj,X
C - - - - - 0x00FAD6 03:BAC6: D0 AB     BNE bra_BA73
C - - - - - 0x00FAD8 03:BAC8: A9 10     LDA #$10
C - - - - - 0x00FADA 03:BACA: 9D 9C 06  STA ram_069C_obj,X
C - - - - - 0x00FADD 03:BACD: A9 D1     LDA #$D1
C - - - - - 0x00FADF 03:BACF: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00FAE2 03:BAD2: B0 9F     BCS bra_BA73
C - - - - - 0x00FAE4 03:BAD4: 98        TYA
C - - - - - 0x00FAE5 03:BAD5: AA        TAX
C - - - - - 0x00FAE6 03:BAD6: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00FAE9 03:BAD9: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FAEC 03:BADC: 18        CLC
C - - - - - 0x00FAED 03:BADD: 79 31 BB  ADC tbl_BB33 - $02,Y
C - - - - - 0x00FAF0 03:BAE0: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FAF3 03:BAE3: 6A        ROR
C - - - - - 0x00FAF4 03:BAE4: 59 31 BB  EOR tbl_BB33 - $02,Y
C - - - - - 0x00FAF7 03:BAE7: 2A        ROL
C - - - - - 0x00FAF8 03:BAE8: B0 11     BCS bra_BAFB
C - - - - - 0x00FAFA 03:BAEA: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00FAFD 03:BAED: 18        CLC
C - - - - - 0x00FAFE 03:BAEE: 79 32 BB  ADC tbl_BB33 - $01,Y
C - - - - - 0x00FB01 03:BAF1: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FB04 03:BAF4: 6A        ROR
C - - - - - 0x00FB05 03:BAF5: 59 32 BB  EOR tbl_BB33 - $01,Y
C - - - - - 0x00FB08 03:BAF8: 2A        ROL
C - - - - - 0x00FB09 03:BAF9: 90 03     BCC bra_BAFE
bra_BAFB:
- - - - - - 0x00FB0B 03:BAFB: 20 52 9A  JSR sub_0x009A62
bra_BAFE:
C - - - - - 0x00FB0E 03:BAFE: A6 53     LDX ram_0053
C - - - - - 0x00FB10 03:BB00: 4C 73 BA  JMP loc_BA73



tbl_BB03:
; 00
- D 1 - - - 0x00FB13 03:BB03: 04        .byte $04   ; 
- D 1 - - - 0x00FB14 03:BB04: 00        .byte $00   ; 
- D 1 - - - 0x00FB15 03:BB05: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB16 03:BB06: 40        .byte $40   ; 
; 01
- D 1 - - - 0x00FB17 03:BB07: 08        .byte $08   ; 
- D 1 - - - 0x00FB18 03:BB08: 00        .byte $00   ; 
- D 1 - - - 0x00FB19 03:BB09: 3F        .byte $3F   ; 
- D 1 - - - 0x00FB1A 03:BB0A: 20        .byte $20   ; 
; 02
- D 1 - - - 0x00FB1B 03:BB0B: 0C        .byte $0C   ; 
- D 1 - - - 0x00FB1C 03:BB0C: FC        .byte $FC   ; 
- D 1 - - - 0x00FB1D 03:BB0D: 3F        .byte $3F   ; 
- D 1 - - - 0x00FB1E 03:BB0E: 20        .byte $20   ; 
; 03
- D 1 - - - 0x00FB1F 03:BB0F: 08        .byte $08   ; 
- D 1 - - - 0x00FB20 03:BB10: 00        .byte $00   ; 
- D 1 - - - 0x00FB21 03:BB11: 3F        .byte $3F   ; 
- D 1 - - - 0x00FB22 03:BB12: 20        .byte $20   ; 
; 04
- D 1 - - - 0x00FB23 03:BB13: 04        .byte $04   ; 
- D 1 - - - 0x00FB24 03:BB14: 00        .byte $00   ; 
- D 1 - - - 0x00FB25 03:BB15: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB26 03:BB16: 40        .byte $40   ; 
; 05
- D 1 - - - 0x00FB27 03:BB17: 00        .byte $00   ; 
- D 1 - - - 0x00FB28 03:BB18: 00        .byte $00   ; 
- D 1 - - - 0x00FB29 03:BB19: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB2A 03:BB1A: 40        .byte $40   ; 
; 06
- D 1 - - - 0x00FB2B 03:BB1B: FC        .byte $FC   ; 
- D 1 - - - 0x00FB2C 03:BB1C: 00        .byte $00   ; 
- D 1 - - - 0x00FB2D 03:BB1D: 3E        .byte $3E   ; 
- D 1 - - - 0x00FB2E 03:BB1E: 40        .byte $40   ; 
; 07
- - - - - - 0x00FB2F 03:BB1F: F8        .byte $F8   ; 
- - - - - - 0x00FB30 03:BB20: 00        .byte $00   ; 
- - - - - - 0x00FB31 03:BB21: 3D        .byte $3D   ; 
- - - - - - 0x00FB32 03:BB22: 60        .byte $60   ; 
; 08
- - - - - - 0x00FB33 03:BB23: F4        .byte $F4   ; 
- - - - - - 0x00FB34 03:BB24: FC        .byte $FC   ; 
- - - - - - 0x00FB35 03:BB25: 3D        .byte $3D   ; 
- - - - - - 0x00FB36 03:BB26: 60        .byte $60   ; 
; 09
- - - - - - 0x00FB37 03:BB27: F8        .byte $F8   ; 
- - - - - - 0x00FB38 03:BB28: 00        .byte $00   ; 
- - - - - - 0x00FB39 03:BB29: 3D        .byte $3D   ; 
- - - - - - 0x00FB3A 03:BB2A: 60        .byte $60   ; 
; 0A
- - - - - - 0x00FB3B 03:BB2B: FC        .byte $FC   ; 
- - - - - - 0x00FB3C 03:BB2C: 00        .byte $00   ; 
- - - - - - 0x00FB3D 03:BB2D: 3E        .byte $3E   ; 
- - - - - - 0x00FB3E 03:BB2E: 40        .byte $40   ; 
; 0B
- - - - - - 0x00FB3F 03:BB2F: 00        .byte $00   ; 
- - - - - - 0x00FB40 03:BB30: 00        .byte $00   ; 
- - - - - - 0x00FB41 03:BB31: 3E        .byte $3E   ; 
- - - - - - 0x00FB42 03:BB32: 40        .byte $40   ; 



tbl_BB33:
- D 1 - - - 0x00FB43 03:BB33: 0C        .byte $0C, $0C   ; 10
- D 1 - - - 0x00FB45 03:BB35: 00        .byte $00, $0C   ; 20
- - - - - - 0x00FB47 03:BB37: F4        .byte $F4, $0C   ; 30



bra_BB39:
C - - - - - 0x00FB49 03:BB39: 4C 17 9A  JMP loc_0x009A27



ofs_016_0x00FB4C_17:
C - - J - - 0x00FB4C 03:BB3C: 20 1E 91  JSR sub_0x00912E
C - - - - - 0x00FB4F 03:BB3F: 90 06     BCC bra_BB47
C - - - - - 0x00FB51 03:BB41: A5 00     LDA ram_0000
C - - - - - 0x00FB53 03:BB43: C9 AC     CMP #$AC
C - - - - - 0x00FB55 03:BB45: D0 F2     BNE bra_BB39
bra_BB47:
C - - - - - 0x00FB57 03:BB47: 20 81 8D  JSR sub_0x008D91
C - - - - - 0x00FB5A 03:BB4A: B0 ED     BCS bra_BB39
C - - - - - 0x00FB5C 03:BB4C: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FB5F 03:BB4F: 30 49     BMI bra_BB9A
C - - - - - 0x00FB61 03:BB51: A5 23     LDA ram_0023
C - - - - - 0x00FB63 03:BB53: 29 0F     AND #$0F
C - - - - - 0x00FB65 03:BB55: D0 43     BNE bra_BB9A
C - - - - - 0x00FB67 03:BB57: A9 70     LDA #$70
C - - - - - 0x00FB69 03:BB59: A0 60     LDY #$60
C - - - - - 0x00FB6B 03:BB5B: 20 0D 95  JSR sub_0x00951D
C - - - - - 0x00FB6E 03:BB5E: B0 3A     BCS bra_BB9A
C - - - - - 0x00FB70 03:BB60: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00FB73 03:BB63: A9 E1     LDA #$E1
C - - - - - 0x00FB75 03:BB65: 20 1F 97  JSR sub_0x00972F
C - - - - - 0x00FB78 03:BB68: B0 30     BCS bra_BB9A
C - - - - - 0x00FB7A 03:BB6A: 98        TYA
C - - - - - 0x00FB7B 03:BB6B: AA        TAX
C - - - - - 0x00FB7C 03:BB6C: 20 2E 94  JSR sub_0x00943E
C - - - - - 0x00FB7F 03:BB6F: A9 00     LDA #$00
C - - - - - 0x00FB81 03:BB71: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00FB84 03:BB74: A9 16     LDA #$16
C - - - - - 0x00FB86 03:BB76: 85 00     STA ram_0000
C - - - - - 0x00FB88 03:BB78: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FB8B 03:BB7B: D9 4E 06  CMP ram_obj_pos_X,Y
C - - - - - 0x00FB8E 03:BB7E: 90 09     BCC bra_BB89
C - - - - - 0x00FB90 03:BB80: A9 80     LDA #$80
C - - - - - 0x00FB92 03:BB82: 9D B2 06  STA ram_06B2_obj,X
C - - - - - 0x00FB95 03:BB85: A9 F4     LDA #$F4
C - - - - - 0x00FB97 03:BB87: 85 00     STA ram_0000
bra_BB89:
C - - - - - 0x00FB99 03:BB89: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FB9C 03:BB8C: 18        CLC
C - - - - - 0x00FB9D 03:BB8D: 65 00     ADC ram_0000
C - - - - - 0x00FB9F 03:BB8F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FBA2 03:BB92: 6A        ROR
C - - - - - 0x00FBA3 03:BB93: 45 00     EOR ram_0000
C - - - - - 0x00FBA5 03:BB95: 90 03     BCC bra_BB9A
C - - - - - 0x00FBA7 03:BB97: 20 52 9A  JSR sub_0x009A62
bra_BB9A:
C - - - - - 0x00FBAA 03:BB9A: A6 53     LDX ram_0053
C - - - - - 0x00FBAC 03:BB9C: 4C C8 90  JMP loc_0x0090D8_0600x_write_08



ofs_016_0x00FBAF_07:
C - - J - - 0x00FBAF 03:BB9F: 20 A5 BB  JSR sub_BBA5
C - - - - - 0x00FBB2 03:BBA2: 4C 10 8E  JMP loc_0x008E20



sub_BBA5:
C - - - - - 0x00FBB5 03:BBA5: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00FBB8 03:BBA8: D0 1C     BNE bra_BBC6
C - - - - - 0x00FBBA 03:BBAA: FE 78 07  INC ram_0778_unk,X
C - - - - - 0x00FBBD 03:BBAD: 20 C8 90  JSR sub_0x0090D8_0600x_write_08
C - - - - - 0x00FBC0 03:BBB0: A9 06     LDA #$06
C - - - - - 0x00FBC2 03:BBB2: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00FBC5 03:BBB5: A9 07     LDA #$07
C - - - - - 0x00FBC7 03:BBB7: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00FBCA 03:BBBA: 20 B1 93  JSR sub_0x0093C1_06B2x_LSRx4_TAY
C - - - - - 0x00FBCD 03:BBBD: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FBD0 03:BBC0: 20 D5 BB  JSR sub_BBD5
C - - - - - 0x00FBD3 03:BBC3: 4C 47 96  JMP loc_0x009657
bra_BBC6:
C - - - - - 0x00FBD6 03:BBC6: 20 D5 BB  JSR sub_BBD5
C - - - - - 0x00FBD9 03:BBC9: 20 1E 96  JSR sub_0x00962E
C - - - - - 0x00FBDC 03:BBCC: 20 55 9E  JSR sub_0x009E65
C - - - - - 0x00FBDF 03:BBCF: 90 03     BCC bra_BBD4_RTS
C - - - - - 0x00FBE1 03:BBD1: 4C 05 9E  JMP loc_0x009E15
bra_BBD4_RTS:
C - - - - - 0x00FBE4 03:BBD4: 60        RTS



sub_BBD5:
C - - - - - 0x00FBE5 03:BBD5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FBE8 03:BBD8: 0A        ASL
C - - - - - 0x00FBE9 03:BBD9: A8        TAY
C - - - - - 0x00FBEA 03:BBDA: B9 E7 BB  LDA tbl_BBE7,Y
C - - - - - 0x00FBED 03:BBDD: 85 00     STA ram_0000
C - - - - - 0x00FBEF 03:BBDF: B9 E8 BB  LDA tbl_BBE7 + $01,Y
C - - - - - 0x00FBF2 03:BBE2: 85 01     STA ram_0001
C - - - - - 0x00FBF4 03:BBE4: 4C 62 96  JMP loc_0x009672



tbl_BBE7:
- D 1 - - - 0x00FBF7 03:BBE7: F3 BB     .word _off013_BBF3_00
- D 1 - - - 0x00FBF9 03:BBE9: FB BB     .word _off013_BBFB_01
- D 1 - - - 0x00FBFB 03:BBEB: 03 BC     .word _off013_BC03_02
- D 1 - - - 0x00FBFD 03:BBED: 0B BC     .word _off013_BC0B_03
- D 1 - - - 0x00FBFF 03:BBEF: 13 BC     .word _off013_BC13_04
- D 1 - - - 0x00FC01 03:BBF1: 1B BC     .word _off013_BC1B_05



_off013_BBF3_00:
- D 1 - I - 0x00FC03 03:BBF3: 7F        .byte $7F   ; 
- D 1 - I - 0x00FC04 03:BBF4: 09        .byte $09   ; 
- D 1 - I - 0x00FC05 03:BBF5: 05        .byte $05   ; 
- D 1 - I - 0x00FC06 03:BBF6: 01        .byte $01   ; 
- D 1 - I - 0x00FC07 03:BBF7: BF        .byte $BF   ; 
- D 1 - I - 0x00FC08 03:BBF8: 09        .byte $09   ; 
- D 1 - I - 0x00FC09 03:BBF9: 85        .byte $85   ; 
- D 1 - I - 0x00FC0A 03:BBFA: 00        .byte $00   ; 



_off013_BBFB_01:
- D 1 - I - 0x00FC0B 03:BBFB: 2F        .byte $2F   ; 
- D 1 - I - 0x00FC0C 03:BBFC: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC0D 03:BBFD: 05        .byte $05   ; 
- D 1 - I - 0x00FC0E 03:BBFE: 01        .byte $01   ; 
- D 1 - I - 0x00FC0F 03:BBFF: 4F        .byte $4F   ; 
- D 1 - I - 0x00FC10 03:BC00: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC11 03:BC01: 85        .byte $85   ; 
- D 1 - I - 0x00FC12 03:BC02: 00        .byte $00   ; 



_off013_BC03_02:
- D 1 - I - 0x00FC13 03:BC03: 4F        .byte $4F   ; 
- D 1 - I - 0x00FC14 03:BC04: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC15 03:BC05: 01        .byte $01   ; 
- D 1 - I - 0x00FC16 03:BC06: 01        .byte $01   ; 
- D 1 - I - 0x00FC17 03:BC07: 6F        .byte $6F   ; 
- D 1 - I - 0x00FC18 03:BC08: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC19 03:BC09: 81        .byte $81   ; 
- D 1 - I - 0x00FC1A 03:BC0A: 00        .byte $00   ; 



_off013_BC0B_03:
- D 1 - I - 0x00FC1B 03:BC0B: 7F        .byte $7F   ; 
- D 1 - I - 0x00FC1C 03:BC0C: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC1D 03:BC0D: 05        .byte $05   ; 
- D 1 - I - 0x00FC1E 03:BC0E: 01        .byte $01   ; 
- D 1 - I - 0x00FC1F 03:BC0F: BF        .byte $BF   ; 
- D 1 - I - 0x00FC20 03:BC10: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC21 03:BC11: 85        .byte $85   ; 
- D 1 - I - 0x00FC22 03:BC12: 00        .byte $00   ; 



_off013_BC13_04:
- D 1 - I - 0x00FC23 03:BC13: CF        .byte $CF   ; 
- D 1 - I - 0x00FC24 03:BC14: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC25 03:BC15: 05        .byte $05   ; 
- D 1 - I - 0x00FC26 03:BC16: 01        .byte $01   ; 
- D 1 - I - 0x00FC27 03:BC17: EF        .byte $EF   ; 
- D 1 - I - 0x00FC28 03:BC18: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC29 03:BC19: 85        .byte $85   ; 
- D 1 - I - 0x00FC2A 03:BC1A: 00        .byte $00   ; 



_off013_BC1B_05:
- D 1 - I - 0x00FC2B 03:BC1B: EF        .byte $EF   ; 
- D 1 - I - 0x00FC2C 03:BC1C: 0E        .byte $0E   ; 
- D 1 - I - 0x00FC2D 03:BC1D: 01        .byte $01   ; 
- D 1 - I - 0x00FC2E 03:BC1E: 01        .byte $01   ; 
- D 1 - I - 0x00FC2F 03:BC1F: 0F        .byte $0F   ; 
- D 1 - I - 0x00FC30 03:BC20: 0F        .byte $0F   ; 
- D 1 - I - 0x00FC31 03:BC21: 81        .byte $81   ; 
- D 1 - I - 0x00FC32 03:BC22: 00        .byte $00   ; 



ofs_016_0x00FC33_0A:
C - - J - - 0x00FC33 03:BC23: 20 29 BC  JSR sub_BC29
C - - - - - 0x00FC36 03:BC26: 4C 10 8E  JMP loc_0x008E20



sub_BC29:
C - - - - - 0x00FC39 03:BC29: BD 78 07  LDA ram_0778_unk,X
C - - - - - 0x00FC3C 03:BC2C: D0 74     BNE bra_BCA2
C - - - - - 0x00FC3E 03:BC2E: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FC41 03:BC31: 38        SEC
C - - - - - 0x00FC42 03:BC32: E5 61     SBC ram_0061
C - - - - - 0x00FC44 03:BC34: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FC47 03:BC37: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00FC4A 03:BC3A: E5 60     SBC ram_0060
C - - - - - 0x00FC4C 03:BC3C: 85 01     STA ram_0001
C - - - - - 0x00FC4E 03:BC3E: 10 12     BPL bra_BC52
C - - - - - 0x00FC50 03:BC40: A5 01     LDA ram_0001
C - - - - - 0x00FC52 03:BC42: 49 FF     EOR #$FF
C - - - - - 0x00FC54 03:BC44: 85 01     STA ram_0001
C - - - - - 0x00FC56 03:BC46: BD 4E 06  LDA ram_obj_pos_X,X
C - - - - - 0x00FC59 03:BC49: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
C - - - - - 0x00FC5C 03:BC4C: 85 00     STA ram_0000
C - - - - - 0x00FC5E 03:BC4E: 90 02     BCC bra_BC52
- - - - - - 0x00FC60 03:BC50: E6 01     INC ram_0001
bra_BC52:
C - - - - - 0x00FC62 03:BC52: A5 01     LDA ram_0001
C - - - - - 0x00FC64 03:BC54: D0 74     BNE bra_BCCA
C - - - - - 0x00FC66 03:BC56: A5 69     LDA ram_0069
C - - - - - 0x00FC68 03:BC58: 10 04     BPL bra_BC5E
C - - - - - 0x00FC6A 03:BC5A: A9 08     LDA #$08
C - - - - - 0x00FC6C 03:BC5C: D0 02     BNE bra_BC60    ; jmp
bra_BC5E:
C - - - - - 0x00FC6E 03:BC5E: A9 F8     LDA #$F8
bra_BC60:
C - - - - - 0x00FC70 03:BC60: 20 C5 91  JSR sub_0x0091D5
C - - - - - 0x00FC73 03:BC63: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FC76 03:BC66: 38        SEC
C - - - - - 0x00FC77 03:BC67: E5 64     SBC ram_0064
C - - - - - 0x00FC79 03:BC69: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FC7C 03:BC6C: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FC7F 03:BC6F: E5 63     SBC ram_0063
C - - - - - 0x00FC81 03:BC71: 85 01     STA ram_0001
C - - - - - 0x00FC83 03:BC73: 10 12     BPL bra_BC87
- - - - - - 0x00FC85 03:BC75: A5 01     LDA ram_0001
- - - - - - 0x00FC87 03:BC77: 49 FF     EOR #$FF
- - - - - - 0x00FC89 03:BC79: 85 01     STA ram_0001
- - - - - - 0x00FC8B 03:BC7B: BD 68 06  LDA ram_obj_pos_Y,X
- - - - - - 0x00FC8E 03:BC7E: 20 07 95  JSR sub_0x009517_EOR_FF_CLC_ADC_01
- - - - - - 0x00FC91 03:BC81: 85 00     STA ram_0000
- - - - - - 0x00FC93 03:BC83: 90 02     BCC bra_BC87
- - - - - - 0x00FC95 03:BC85: E6 01     INC ram_0001
bra_BC87:
C - - - - - 0x00FC97 03:BC87: A5 01     LDA ram_0001
C - - - - - 0x00FC99 03:BC89: D0 3F     BNE bra_BCCA
C - - - - - 0x00FC9B 03:BC8B: 20 D0 BC  JSR sub_BCD0
C - - - - - 0x00FC9E 03:BC8E: B0 3A     BCS bra_BCCA
C - - - - - 0x00FCA0 03:BC90: A9 20     LDA #$20
C - - - - - 0x00FCA2 03:BC92: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FCA5 03:BC95: A9 14     LDA #$14
C - - - - - 0x00FCA7 03:BC97: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00FCAA 03:BC9A: A9 0B     LDA #$0B
C - - - - - 0x00FCAC 03:BC9C: 20 A1 89  JSR sub_0x0089B1
C - - - - - 0x00FCAF 03:BC9F: FE 78 07  INC ram_0778_unk,X
bra_BCA2:
C - - - - - 0x00FCB2 03:BCA2: A5 7B     LDA ram_chr_bank + $04
C - - - - - 0x00FCB4 03:BCA4: C9 6E     CMP #con_chr_bank + $6E
C - - - - - 0x00FCB6 03:BCA6: F0 06     BEQ bra_BCAE
- - - - - - 0x00FCB8 03:BCA8: 20 47 9A  JSR sub_0x009A57
- - - - - - 0x00FCBB 03:BCAB: 4C CD BC  JMP loc_BCCD
bra_BCAE:
C - - - - - 0x00FCBE 03:BCAE: 20 72 91  JSR sub_0x009182_06B2x_AND_0F
C - - - - - 0x00FCC1 03:BCB1: D0 05     BNE bra_BCB8
C - - - - - 0x00FCC3 03:BCB3: A9 42     LDA #$42
C - - - - - 0x00FCC5 03:BCB5: 9D B2 06  STA ram_06B2_obj,X
bra_BCB8:
C - - - - - 0x00FCC8 03:BCB8: 20 BA 96  JSR sub_0x0096CA
C - - - - - 0x00FCCB 03:BCBB: A5 01     LDA ram_0001
C - - - - - 0x00FCCD 03:BCBD: C9 04     CMP #$04
C - - - - - 0x00FCCF 03:BCBF: 90 02     BCC bra_BCC3
C - - - - - 0x00FCD1 03:BCC1: B0 0A     BCS bra_BCCD    ; jmp
bra_BCC3:
C - - - - - 0x00FCD3 03:BCC3: BD 68 06  LDA ram_obj_pos_Y,X
C - - - - - 0x00FCD6 03:BCC6: C9 E8     CMP #$E8
C - - - - - 0x00FCD8 03:BCC8: 90 20     BCC bra_BCEA_RTS
bra_BCCA:
ofs_016_0x00FCDA_15:
C - - - - - 0x00FCDA 03:BCCA: 4C 17 9A  JMP loc_0x009A27
bra_BCCD:
loc_BCCD:   ; bzk optimize
C - - - - - 0x00FCDD 03:BCCD: 4C 3A 97  JMP loc_0x00974A



sub_BCD0:
C - - - - - 0x00FCE0 03:BCD0: A0 00     LDY #$00
bra_BCD2_loop:
C - - - - - 0x00FCE2 03:BCD2: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FCE5 03:BCD5: F0 0E     BEQ bra_BCE5
C - - - - - 0x00FCE7 03:BCD7: 20 FE 94  JSR sub_0x00950E
C - - - - - 0x00FCEA 03:BCDA: C9 40     CMP #$40
C - - - - - 0x00FCEC 03:BCDC: B0 07     BCS bra_BCE5
C - - - - - 0x00FCEE 03:BCDE: 20 F4 94  JSR sub_0x009504
C - - - - - 0x00FCF1 03:BCE1: C9 68     CMP #$68
C - - - - - 0x00FCF3 03:BCE3: 90 05     BCC bra_BCEA_RTS
bra_BCE5:
C - - - - - 0x00FCF5 03:BCE5: C8        INY
C - - - - - 0x00FCF6 03:BCE6: C0 02     CPY #$02
C - - - - - 0x00FCF8 03:BCE8: 90 E8     BCC bra_BCD2_loop
bra_BCEA_RTS:
C - - - - - 0x00FCFA 03:BCEA: 60        RTS



bra_BCEB:
C - - - - - 0x00FCFB 03:BCEB: 4C F0 BE  JMP loc_BEF0



bra_BCEE:
C - - - - - 0x00FCFE 03:BCEE: 4C EF BE  JMP loc_BEEF_RTS



sub_BCF1:
C - - - - - 0x00FD01 03:BCF1: A9 07     LDA #$07
C - - - - - 0x00FD03 03:BCF3: 9D 20 07  STA ram_0720_obj,X
C - - - - - 0x00FD06 03:BCF6: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FD09 03:BCF9: 29 3F     AND #$3F
C - - - - - 0x00FD0B 03:BCFB: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FD0E 03:BCFE: A5 60     LDA ram_0060
C - - - - - 0x00FD10 03:BD00: C9 03     CMP #$03
C - - - - - 0x00FD12 03:BD02: 90 E7     BCC bra_BCEB
C - - - - - 0x00FD14 03:BD04: A5 60     LDA ram_0060
C - - - - - 0x00FD16 03:BD06: C9 04     CMP #$04
C - - - - - 0x00FD18 03:BD08: 90 08     BCC bra_BD12
C - - - - - 0x00FD1A 03:BD0A: D0 DF     BNE bra_BCEB
C - - - - - 0x00FD1C 03:BD0C: A5 61     LDA ram_0061
C - - - - - 0x00FD1E 03:BD0E: C9 E0     CMP #$E0
C - - - - - 0x00FD20 03:BD10: B0 D9     BCS bra_BCEB
bra_BD12:
C - - - - - 0x00FD22 03:BD12: BD D2 07  LDA ram_07D2_unk,X
C - - - - - 0x00FD25 03:BD15: 29 80     AND #$80
C - - - - - 0x00FD27 03:BD17: D0 61     BNE bra_BD7A
C - - - - - 0x00FD29 03:BD19: A5 60     LDA ram_0060
C - - - - - 0x00FD2B 03:BD1B: C9 03     CMP #$03
C - - - - - 0x00FD2D 03:BD1D: 90 CF     BCC bra_BCEE
C - - - - - 0x00FD2F 03:BD1F: D0 06     BNE bra_BD27
C - - - - - 0x00FD31 03:BD21: A5 61     LDA ram_0061
C - - - - - 0x00FD33 03:BD23: C9 80     CMP #$80
C - - - - - 0x00FD35 03:BD25: 90 C7     BCC bra_BCEE
bra_BD27:
C - - - - - 0x00FD37 03:BD27: A9 26     LDA #con_music_26
C - - - - - 0x00FD39 03:BD29: 20 CA FE  JSR sub_0x01FEDA_add_music_to_queue
C - - - - - 0x00FD3C 03:BD2C: A0 04     LDY #$04
C - - - - - 0x00FD3E 03:BD2E: 20 CA F8  JSR sub_0x01F8DA
C - - - - - 0x00FD41 03:BD31: A5 61     LDA ram_0061
C - - - - - 0x00FD43 03:BD33: 85 50     STA ram_0050
C - - - - - 0x00FD45 03:BD35: A9 00     LDA #$00
C - - - - - 0x00FD47 03:BD37: 85 51     STA ram_0051
C - - - - - 0x00FD49 03:BD39: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FD4C 03:BD3C: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FD4F 03:BD3F: A5 FF     LDA ram_for_2000
C - - - - - 0x00FD51 03:BD41: 85 52     STA ram_0052
C - - - - - 0x00FD53 03:BD43: A9 80     LDA #$80
C - - - - - 0x00FD55 03:BD45: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00FD58 03:BD48: A9 04     LDA #$04
C - - - - - 0x00FD5A 03:BD4A: 85 1E     STA ram_001E
bra_BD4C_loop:
C - - - - - 0x00FD5C 03:BD4C: A9 02     LDA #$02
C - - - - - 0x00FD5E 03:BD4E: 20 72 93  JSR sub_0x009382
C - - - - - 0x00FD61 03:BD51: B0 27     BCS bra_BD7A
C - - - - - 0x00FD63 03:BD53: 84 0B     STY ram_000B
C - - - - - 0x00FD65 03:BD55: A9 32     LDA #$32
C - - - - - 0x00FD67 03:BD57: 85 0A     STA ram_000A
C - - - - - 0x00FD69 03:BD59: 20 C9 8B  JSR sub_0x008BD9
C - - - - - 0x00FD6C 03:BD5C: B0 18     BCS bra_BD76
C - - - - - 0x00FD6E 03:BD5E: A9 00     LDA #$00
C - - - - - 0x00FD70 03:BD60: 99 1A 06  STA ram_obj_animation_lo,Y
C - - - - - 0x00FD73 03:BD63: 8A        TXA
C - - - - - 0x00FD74 03:BD64: 99 AA 07  STA ram_07AA_unk,Y
C - - - - - 0x00FD77 03:BD67: A5 1E     LDA ram_001E
C - - - - - 0x00FD79 03:BD69: 99 B4 07  STA ram_07B4_unk,Y
C - - - - - 0x00FD7C 03:BD6C: F0 08     BEQ bra_BD76
C - - - - - 0x00FD7E 03:BD6E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FD81 03:BD71: 09 80     ORA #$80
C - - - - - 0x00FD83 03:BD73: 99 82 07  STA ram_0782_unk,Y
bra_BD76:
C - - - - - 0x00FD86 03:BD76: C6 1E     DEC ram_001E
C - - - - - 0x00FD88 03:BD78: 10 D2     BPL bra_BD4C_loop
bra_BD7A:
C - - - - - 0x00FD8A 03:BD7A: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FD8D 03:BD7D: 1D B4 07  ORA ram_07B4_unk,X
C - - - - - 0x00FD90 03:BD80: D0 19     BNE bra_BD9B
C - - - - - 0x00FD92 03:BD82: A5 60     LDA ram_0060
C - - - - - 0x00FD94 03:BD84: C9 03     CMP #$03
C - - - - - 0x00FD96 03:BD86: 90 08     BCC bra_BD90
C - - - - - 0x00FD98 03:BD88: D0 11     BNE bra_BD9B
C - - - - - 0x00FD9A 03:BD8A: A5 61     LDA ram_0061
C - - - - - 0x00FD9C 03:BD8C: C9 80     CMP #$80
C - - - - - 0x00FD9E 03:BD8E: B0 0B     BCS bra_BD9B
bra_BD90:
- - - - - - 0x00FDA0 03:BD90: A9 80     LDA #$80
- - - - - - 0x00FDA2 03:BD92: 85 00     STA ram_0000
- - - - - - 0x00FDA4 03:BD94: A9 03     LDA #$03
- - - - - - 0x00FDA6 03:BD96: 85 01     STA ram_0001
- - - - - - 0x00FDA8 03:BD98: 4C 1C BE  JMP loc_BE1C
bra_BD9B:
C - - - - - 0x00FDAB 03:BD9B: A9 00     LDA #$00
C - - - - - 0x00FDAD 03:BD9D: 85 02     STA ram_0002
C - - - - - 0x00FDAF 03:BD9F: A9 80     LDA #$80
C - - - - - 0x00FDB1 03:BDA1: 18        CLC
C - - - - - 0x00FDB2 03:BDA2: 7D B4 07  ADC ram_07B4_unk,X
C - - - - - 0x00FDB5 03:BDA5: 85 00     STA ram_0000
C - - - - - 0x00FDB7 03:BDA7: A9 03     LDA #$03
C - - - - - 0x00FDB9 03:BDA9: 7D AA 07  ADC ram_07AA_unk,X
C - - - - - 0x00FDBC 03:BDAC: 85 01     STA ram_0001
C - - - - - 0x00FDBE 03:BDAE: A9 01     LDA #$01
C - - - - - 0x00FDC0 03:BDB0: 85 04     STA ram_0004
C - - - - - 0x00FDC2 03:BDB2: A5 6A     LDA ram_006A
C - - - - - 0x00FDC4 03:BDB4: 05 69     ORA ram_0069
C - - - - - 0x00FDC6 03:BDB6: F0 02     BEQ bra_BDBA
C - - - - - 0x00FDC8 03:BDB8: 06 04     ASL ram_0004
bra_BDBA:
C - - - - - 0x00FDCA 03:BDBA: A5 60     LDA ram_0060
C - - - - - 0x00FDCC 03:BDBC: C9 03     CMP #$03
C - - - - - 0x00FDCE 03:BDBE: D0 06     BNE bra_BDC6
C - - - - - 0x00FDD0 03:BDC0: A5 61     LDA ram_0061
C - - - - - 0x00FDD2 03:BDC2: C9 40     CMP #$40
C - - - - - 0x00FDD4 03:BDC4: 90 08     BCC bra_BDCE
bra_BDC6:
C - - - - - 0x00FDD6 03:BDC6: A5 42     LDA ram_btn_hold_1
C - - - - - 0x00FDD8 03:BDC8: 05 43     ORA ram_btn_hold_1 + $01
C - - - - - 0x00FDDA 03:BDCA: 29 02     AND #con_btn_Left
C - - - - - 0x00FDDC 03:BDCC: F0 2F     BEQ bra_BDFD
bra_BDCE:
C - - - - - 0x00FDDE 03:BDCE: A9 03     LDA #$03
C - - - - - 0x00FDE0 03:BDD0: C5 01     CMP ram_0001
C - - - - - 0x00FDE2 03:BDD2: 90 08     BCC bra_BDDC
C - - - - - 0x00FDE4 03:BDD4: D0 46     BNE bra_BE1C
C - - - - - 0x00FDE6 03:BDD6: A5 00     LDA ram_0000
C - - - - - 0x00FDE8 03:BDD8: C9 50     CMP #$50
C - - - - - 0x00FDEA 03:BDDA: 90 40     BCC bra_BE1C
bra_BDDC:
C - - - - - 0x00FDEC 03:BDDC: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FDEF 03:BDDF: 38        SEC
C - - - - - 0x00FDF0 03:BDE0: E5 04     SBC ram_0004
C - - - - - 0x00FDF2 03:BDE2: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FDF5 03:BDE5: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FDF8 03:BDE8: E9 00     SBC #$00
C - - - - - 0x00FDFA 03:BDEA: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FDFD 03:BDED: 10 2D     BPL bra_BE1C
C - - - - - 0x00FDFF 03:BDEF: A9 00     LDA #$00
C - - - - - 0x00FE01 03:BDF1: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FE04 03:BDF4: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FE07 03:BDF7: 4C 1C BE  JMP loc_BE1C


; bzk garbage
- - - - - - 0x00FE0A 03:BDFA: 4C EF BE  JMP loc_BEEF_RTS



bra_BDFD:
C - - - - - 0x00FE0D 03:BDFD: A5 01     LDA ram_0001
C - - - - - 0x00FE0F 03:BDFF: C9 04     CMP #$04
C - - - - - 0x00FE11 03:BE01: 90 08     BCC bra_BE0B
C - - - - - 0x00FE13 03:BE03: D0 17     BNE bra_BE1C
C - - - - - 0x00FE15 03:BE05: A5 00     LDA ram_0000
C - - - - - 0x00FE17 03:BE07: C9 00     CMP #$00
C - - - - - 0x00FE19 03:BE09: B0 11     BCS bra_BE1C
bra_BE0B:
C - - - - - 0x00FE1B 03:BE0B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FE1E 03:BE0E: 18        CLC
C - - - - - 0x00FE1F 03:BE0F: 65 04     ADC ram_0004
C - - - - - 0x00FE21 03:BE11: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FE24 03:BE14: BD AA 07  LDA ram_07AA_unk,X
C - - - - - 0x00FE27 03:BE17: 69 00     ADC #$00
C - - - - - 0x00FE29 03:BE19: 9D AA 07  STA ram_07AA_unk,X
bra_BE1C:
loc_BE1C:
C D 1 - - - 0x00FE2C 03:BE1C: A5 61     LDA ram_0061
C - - - - - 0x00FE2E 03:BE1E: 38        SEC
C - - - - - 0x00FE2F 03:BE1F: E9 80     SBC #$80
C - - - - - 0x00FE31 03:BE21: 85 02     STA ram_0002
C - - - - - 0x00FE33 03:BE23: A5 60     LDA ram_0060
C - - - - - 0x00FE35 03:BE25: E9 03     SBC #$03
C - - - - - 0x00FE37 03:BE27: 85 03     STA ram_0003
C - - - - - 0x00FE39 03:BE29: 30 10     BMI bra_BE3B
C - - - - - 0x00FE3B 03:BE2B: D0 06     BNE bra_BE33
C - - - - - 0x00FE3D 03:BE2D: A5 02     LDA ram_0002
C - - - - - 0x00FE3F 03:BE2F: C9 F8     CMP #$F8
C - - - - - 0x00FE41 03:BE31: 90 08     BCC bra_BE3B
bra_BE33:
C - - - - - 0x00FE43 03:BE33: A9 F8     LDA #$F8
C - - - - - 0x00FE45 03:BE35: 85 02     STA ram_0002
C - - - - - 0x00FE47 03:BE37: A9 00     LDA #$00
C - - - - - 0x00FE49 03:BE39: 85 03     STA ram_0003
bra_BE3B:
C - - - - - 0x00FE4B 03:BE3B: A5 00     LDA ram_0000
C - - - - - 0x00FE4D 03:BE3D: 18        CLC
C - - - - - 0x00FE4E 03:BE3E: 65 02     ADC ram_0002
C - - - - - 0x00FE50 03:BE40: 85 02     STA ram_0002
C - - - - - 0x00FE52 03:BE42: 85 50     STA ram_0050
C - - - - - 0x00FE54 03:BE44: A5 01     LDA ram_0001
C - - - - - 0x00FE56 03:BE46: 65 03     ADC ram_0003
C - - - - - 0x00FE58 03:BE48: 85 03     STA ram_0003
C - - - - - 0x00FE5A 03:BE4A: 29 01     AND #$01
C - - - - - 0x00FE5C 03:BE4C: 85 00     STA ram_0000
C - - - - - 0x00FE5E 03:BE4E: A5 52     LDA ram_0052
C - - - - - 0x00FE60 03:BE50: 29 FC     AND #$FC
C - - - - - 0x00FE62 03:BE52: 05 00     ORA ram_0000
C - - - - - 0x00FE64 03:BE54: 85 52     STA ram_0052
C - - - - - 0x00FE66 03:BE56: A9 40     LDA #$40
C - - - - - 0x00FE68 03:BE58: 38        SEC
C - - - - - 0x00FE69 03:BE59: E5 02     SBC ram_0002
C - - - - - 0x00FE6B 03:BE5B: 85 02     STA ram_0002
C - - - - - 0x00FE6D 03:BE5D: A9 04     LDA #$04
C - - - - - 0x00FE6F 03:BE5F: E5 03     SBC ram_0003
C - - - - - 0x00FE71 03:BE61: 85 03     STA ram_0003
C - - - - - 0x00FE73 03:BE63: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FE76 03:BE66: 29 0F     AND #$0F
C - - - - - 0x00FE78 03:BE68: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00FE7B 03:BE6B: A5 03     LDA ram_0003
C - - - - - 0x00FE7D 03:BE6D: F0 0E     BEQ bra_BE7D
C - - - - - 0x00FE7F 03:BE6F: 10 04     BPL bra_BE75
C - - - - - 0x00FE81 03:BE71: A9 20     LDA #$20
C - - - - - 0x00FE83 03:BE73: D0 02     BNE bra_BE77    ; jmp
bra_BE75:
- - - - - - 0x00FE85 03:BE75: A9 10     LDA #$10
bra_BE77:
C - - - - - 0x00FE87 03:BE77: 1D 00 06  ORA ram_0600_obj,X
C - - - - - 0x00FE8A 03:BE7A: 9D 00 06  STA ram_0600_obj,X
bra_BE7D:
C - - - - - 0x00FE8D 03:BE7D: A5 02     LDA ram_0002
C - - - - - 0x00FE8F 03:BE7F: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FE92 03:BE82: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FE95 03:BE85: F0 68     BEQ bra_BEEF_RTS
C - - - - - 0x00FE97 03:BE87: 30 66     BMI bra_BEEF_RTS
C - - - - - 0x00FE99 03:BE89: A5 03     LDA ram_0003
C - - - - - 0x00FE9B 03:BE8B: F0 0A     BEQ bra_BE97
C - - - - - 0x00FE9D 03:BE8D: C9 FF     CMP #$FF
C - - - - - 0x00FE9F 03:BE8F: D0 5E     BNE bra_BEEF_RTS
C - - - - - 0x00FEA1 03:BE91: A5 02     LDA ram_0002
C - - - - - 0x00FEA3 03:BE93: C9 A0     CMP #$A0
C - - - - - 0x00FEA5 03:BE95: 90 58     BCC bra_BEEF_RTS
bra_BE97:
C - - - - - 0x00FEA7 03:BE97: A5 26     LDA ram_buffer_index
C - - - - - 0x00FEA9 03:BE99: C9 20     CMP #$20
C - - - - - 0x00FEAB 03:BE9B: B0 52     BCS bra_BEEF_RTS
C - - - - - 0x00FEAD 03:BE9D: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FEB0 03:BEA0: 29 03     AND #$03
C - - - - - 0x00FEB2 03:BEA2: D0 48     BNE bra_BEEC
C - - - - - 0x00FEB4 03:BEA4: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FEB7 03:BEA7: 29 04     AND #$04
C - - - - - 0x00FEB9 03:BEA9: D0 10     BNE bra_BEBB
C - - - - - 0x00FEBB 03:BEAB: A0 02     LDY #$02
C - - - - - 0x00FEBD 03:BEAD: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FEC0 03:BEB0: 49 01     EOR #$01
C - - - - - 0x00FEC2 03:BEB2: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FEC5 03:BEB5: 29 01     AND #$01
C - - - - - 0x00FEC7 03:BEB7: 0A        ASL
C - - - - - 0x00FEC8 03:BEB8: 4C C7 BE  JMP loc_BEC7
bra_BEBB:
C - - - - - 0x00FECB 03:BEBB: A0 00     LDY #$00
C - - - - - 0x00FECD 03:BEBD: BD C8 07  LDA ram_07C8_unk,X
C - - - - - 0x00FED0 03:BEC0: 49 02     EOR #$02
C - - - - - 0x00FED2 03:BEC2: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FED5 03:BEC5: 29 02     AND #$02
loc_BEC7:
C D 1 - - - 0x00FED7 03:BEC7: 85 00     STA ram_0000
C - - - - - 0x00FED9 03:BEC9: B9 13 BF  LDA tbl_BF13,Y
C - - - - - 0x00FEDC 03:BECC: 85 06     STA ram_0006
C - - - - - 0x00FEDE 03:BECE: B9 14 BF  LDA tbl_BF13 + $01,Y
C - - - - - 0x00FEE1 03:BED1: 85 07     STA ram_0007
C - - - - - 0x00FEE3 03:BED3: A4 00     LDY ram_0000
C - - - - - 0x00FEE5 03:BED5: B9 17 BF  LDA tbl_BF17,Y
C - - - - - 0x00FEE8 03:BED8: 85 02     STA ram_0002
C - - - - - 0x00FEEA 03:BEDA: B9 18 BF  LDA tbl_BF17 + $01,Y
C - - - - - 0x00FEED 03:BEDD: 85 03     STA ram_0003
C - - - - - 0x00FEEF 03:BEDF: 8A        TXA
C - - - - - 0x00FEF0 03:BEE0: 48        PHA
C - - - - - 0x00FEF1 03:BEE1: A9 06     LDA #con_DA9D_06
C - - - - - 0x00FEF3 03:BEE3: 85 1F     STA ram_001F
C - - - - - 0x00FEF5 03:BEE5: A9 06     LDA #con_F3D6_06
C - - - - - 0x00FEF7 03:BEE7: 20 B3 F3  JSR sub_0x01F3C3
C - - - - - 0x00FEFA 03:BEEA: 68        PLA
C - - - - - 0x00FEFB 03:BEEB: AA        TAX
bra_BEEC:
C - - - - - 0x00FEFC 03:BEEC: FE BE 07  INC ram_07BE_unk,X
bra_BEEF_RTS:
loc_BEEF_RTS:   ; bzk optimize
C D 1 - - - 0x00FEFF 03:BEEF: 60        RTS



loc_BEF0:
C D 1 - - - 0x00FF00 03:BEF0: 20 C8 F8  JSR sub_0x01F8D8
C - - - - - 0x00FF03 03:BEF3: A5 FD     LDA ram_00FD
C - - - - - 0x00FF05 03:BEF5: 85 50     STA ram_0050
C - - - - - 0x00FF07 03:BEF7: A5 FF     LDA ram_for_2000
C - - - - - 0x00FF09 03:BEF9: 85 52     STA ram_0052
bra_BEFB:
C - - - - - 0x00FF0B 03:BEFB: A9 00     LDA #$00
C - - - - - 0x00FF0D 03:BEFD: 9D 82 07  STA ram_0782_unk,X
C - - - - - 0x00FF10 03:BF00: 9D 82 06  STA ram_0682_obj,X
C - - - - - 0x00FF13 03:BF03: 9D AA 07  STA ram_07AA_unk,X
C - - - - - 0x00FF16 03:BF06: 9D B4 07  STA ram_07B4_unk,X
C - - - - - 0x00FF19 03:BF09: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00FF1C 03:BF0C: 9D C8 07  STA ram_07C8_unk,X
C - - - - - 0x00FF1F 03:BF0F: 9D D2 07  STA ram_07D2_unk,X
C - - - - - 0x00FF22 03:BF12: 60        RTS



tbl_BF13:
- D 1 - - - 0x00FF23 03:BF13: B1 22     .word $22B1 ; 00
- D 1 - - - 0x00FF25 03:BF15: B9 22     .word $22B9 ; 02

tbl_BF17:
- D 1 - - - 0x00FF27 03:BF17: 30 A9     .word off_0x016940_00
- D 1 - - - 0x00FF29 03:BF19: 2A A9     .word off_0x01693A_02



loc_BF1B:
C D 1 - - - 0x00FF2B 03:BF1B: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FF2E 03:BF1E: B9 82 07  LDA ram_0782_unk,Y
C - - - - - 0x00FF31 03:BF21: F0 D8     BEQ bra_BEFB
C - - - - - 0x00FF33 03:BF23: B9 4E 06  LDA ram_obj_pos_X,Y
C - - - - - 0x00FF36 03:BF26: 85 00     STA ram_0000
C - - - - - 0x00FF38 03:BF28: B9 68 06  LDA ram_obj_pos_Y,Y
C - - - - - 0x00FF3B 03:BF2B: 85 01     STA ram_0001
C - - - - - 0x00FF3D 03:BF2D: A9 00     LDA #$00
C - - - - - 0x00FF3F 03:BF2F: 85 03     STA ram_0003
C - - - - - 0x00FF41 03:BF31: BD 00 06  LDA ram_0600_obj,X
C - - - - - 0x00FF44 03:BF34: 29 CF     AND #$CF
C - - - - - 0x00FF46 03:BF36: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00FF49 03:BF39: B9 00 06  LDA ram_0600_obj,Y
C - - - - - 0x00FF4C 03:BF3C: 29 30     AND #$30
C - - - - - 0x00FF4E 03:BF3E: F0 09     BEQ bra_BF49
C - - - - - 0x00FF50 03:BF40: A0 01     LDY #$01
C - - - - - 0x00FF52 03:BF42: C9 10     CMP #$10
C - - - - - 0x00FF54 03:BF44: F0 02     BEQ bra_BF48
C - - - - - 0x00FF56 03:BF46: A0 FF     LDY #$FF
bra_BF48:
C - - - - - 0x00FF58 03:BF48: 98        TYA
bra_BF49:
C - - - - - 0x00FF59 03:BF49: 85 03     STA ram_0003
C - - - - - 0x00FF5B 03:BF4B: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FF5E 03:BF4E: A8        TAY
C - - - - - 0x00FF5F 03:BF4F: B9 EE BF  LDA tbl_BFEE,Y
C - - - - - 0x00FF62 03:BF52: 9D 20 07  STA ram_0720_obj,X
; bzk optimize, TYA instead
C - - - - - 0x00FF65 03:BF55: BD B4 07  LDA ram_07B4_unk,X
C - - - - - 0x00FF68 03:BF58: 0A        ASL
C - - - - - 0x00FF69 03:BF59: A8        TAY
C - - - - - 0x00FF6A 03:BF5A: B9 E4 BF  LDA tbl_BFE4,Y
C - - - - - 0x00FF6D 03:BF5D: 18        CLC
C - - - - - 0x00FF6E 03:BF5E: 65 00     ADC ram_0000
C - - - - - 0x00FF70 03:BF60: 9D 4E 06  STA ram_obj_pos_X,X
C - - - - - 0x00FF73 03:BF63: A5 03     LDA ram_0003
C - - - - - 0x00FF75 03:BF65: 69 00     ADC #$00
C - - - - - 0x00FF77 03:BF67: 85 04     STA ram_0004
C - - - - - 0x00FF79 03:BF69: F0 0A     BEQ bra_BF75
C - - - - - 0x00FF7B 03:BF6B: 29 80     AND #$80
C - - - - - 0x00FF7D 03:BF6D: F0 04     BEQ bra_BF73
C - - - - - 0x00FF7F 03:BF6F: A9 20     LDA #$20
C - - - - - 0x00FF81 03:BF71: D0 02     BNE bra_BF75    ; jmp
bra_BF73:
C - - - - - 0x00FF83 03:BF73: A9 10     LDA #$10
bra_BF75:
C - - - - - 0x00FF85 03:BF75: 1D 00 06  ORA ram_0600_obj,X
C - - - - - 0x00FF88 03:BF78: 9D 00 06  STA ram_0600_obj,X
C - - - - - 0x00FF8B 03:BF7B: B9 E5 BF  LDA tbl_BFE4 + $01,Y
C - - - - - 0x00FF8E 03:BF7E: 18        CLC
C - - - - - 0x00FF8F 03:BF7F: 65 01     ADC ram_0001
C - - - - - 0x00FF91 03:BF81: 9D 68 06  STA ram_obj_pos_Y,X
C - - - - - 0x00FF94 03:BF84: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00FF97 03:BF87: 29 03     AND #$03
C - - - - - 0x00FF99 03:BF89: F0 4F     BEQ bra_BFDA
C - - - - - 0x00FF9B 03:BF8B: A9 03     LDA #$03
C - - - - - 0x00FF9D 03:BF8D: 85 1C     STA ram_001C
C - - - - - 0x00FF9F 03:BF8F: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FFA2 03:BF92: BD BE 07  LDA ram_07BE_unk,X
C - - - - - 0x00FFA5 03:BF95: 38        SEC
C - - - - - 0x00FFA6 03:BF96: F9 B4 07  SBC ram_07B4_unk,Y
C - - - - - 0x00FFA9 03:BF99: 85 19     STA ram_0019
C - - - - - 0x00FFAB 03:BF9B: 10 04     BPL bra_BFA1
C - - - - - 0x00FFAD 03:BF9D: A9 07     LDA #$07
C - - - - - 0x00FFAF 03:BF9F: 85 1C     STA ram_001C
bra_BFA1:
C - - - - - 0x00FFB1 03:BFA1: A9 00     LDA #$00
C - - - - - 0x00FFB3 03:BFA3: 85 18     STA ram_0018
C - - - - - 0x00FFB5 03:BFA5: 85 1A     STA ram_001A
C - - - - - 0x00FFB7 03:BFA7: 85 1B     STA ram_001B
C - - - - - 0x00FFB9 03:BFA9: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FFBC 03:BFAC: 84 1E     STY ram_001E
C - - - - - 0x00FFBE 03:BFAE: BD 36 07  LDA ram_0736_obj,X
C - - - - - 0x00FFC1 03:BFB1: 85 1F     STA ram_001F
C - - - - - 0x00FFC3 03:BFB3: 8A        TXA
C - - - - - 0x00FFC4 03:BFB4: 48        PHA
C - - - - - 0x00FFC5 03:BFB5: A2 00     LDX #$00
bra_BFB7_loop:
C - - - - - 0x00FFC7 03:BFB7: 46 1F     LSR ram_001F
C - - - - - 0x00FFC9 03:BFB9: 90 18     BCC bra_BFD3
C - - - - - 0x00FFCB 03:BFBB: A4 1E     LDY ram_001E
C - - - - - 0x00FFCD 03:BFBD: BD F3 BF  LDA tbl_BFF3,X
C - - - - - 0x00FFD0 03:BFC0: 39 C8 07  AND ram_07C8_unk,Y
C - - - - - 0x00FFD3 03:BFC3: D0 0E     BNE bra_BFD3
C - - - - - 0x00FFD5 03:BFC5: BD F3 BF  LDA tbl_BFF3,X
C - - - - - 0x00FFD8 03:BFC8: 19 C8 07  ORA ram_07C8_unk,Y
C - - - - - 0x00FFDB 03:BFCB: 99 C8 07  STA ram_07C8_unk,Y
C - - - - - 0x00FFDE 03:BFCE: A9 09     LDA #con_F3D6_09
C - - - - - 0x00FFE0 03:BFD0: 20 B3 F3  JSR sub_0x01F3C3
bra_BFD3:
C - - - - - 0x00FFE3 03:BFD3: E8        INX
C - - - - - 0x00FFE4 03:BFD4: E0 02     CPX #$02
C - - - - - 0x00FFE6 03:BFD6: 90 DF     BCC bra_BFB7_loop
C - - - - - 0x00FFE8 03:BFD8: 68        PLA
C - - - - - 0x00FFE9 03:BFD9: AA        TAX
bra_BFDA:
C - - - - - 0x00FFEA 03:BFDA: BC AA 07  LDY ram_07AA_unk,X
C - - - - - 0x00FFED 03:BFDD: B9 B4 07  LDA ram_07B4_unk,Y
C - - - - - 0x00FFF0 03:BFE0: 9D BE 07  STA ram_07BE_unk,X
C - - - - - 0x00FFF3 03:BFE3: 60        RTS



tbl_BFE4:
- D 1 - - - 0x00FFF4 03:BFE4: 30        .byte $30, $18   ; 00
- D 1 - - - 0x00FFF6 03:BFE6: 28        .byte $28, $00   ; 01
- D 1 - - - 0x00FFF8 03:BFE8: 48        .byte $48, $08   ; 02
- D 1 - - - 0x00FFFA 03:BFEA: 70        .byte $70, $10   ; 03
- D 1 - - - 0x00FFFC 03:BFEC: 60        .byte $60, $F8   ; 04



tbl_BFEE:
- D 1 - - - 0x00FFFE 03:BFEE: 01        .byte $01   ; 00
- D 1 - - - 0x00FFFF 03:BFEF: 02        .byte $02   ; 01
- D 1 - - - 0x010000 03:BFF0: 03        .byte $03   ; 02
- D 1 - - - 0x010001 03:BFF1: 05        .byte $05   ; 03
- D 1 - - - 0x010002 03:BFF2: 04        .byte $04   ; 04



tbl_BFF3:
- D 1 - - - 0x010003 03:BFF3: 40        .byte $40   ; 00
- - - - - - 0x010004 03:BFF4: 80        .byte $80   ; 01
- - - - - - 0x010005 03:BFF5: FF        .byte $FF   ; 02


; bzk garbage
- - - - - - 0x010006 03:BFF6: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 07: %Xh [%d]", ($C000 - *), ($C000 - *))



