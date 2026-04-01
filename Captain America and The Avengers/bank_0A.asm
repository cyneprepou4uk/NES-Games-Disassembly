.segment "BANK_0A"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $A000  ; for listing file
; 0x014010-0x01600F

; this bank is in pair with bank 0D

.export sub_0x014010
.export sub_0x014013



sub_0x014010:
; bzk optimize
C - - - - - 0x014010 05:A000: 4C 06 A0  JMP loc_A006



sub_0x014013:
; bzk optimize
C - - - - - 0x014013 05:A003: 4C 56 A0  JMP loc_A056



loc_A006:
C D 1 - - - 0x014016 05:A006: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x014018 05:A008: 48        PHA
C - - - - - 0x014019 05:A009: 20 7B A4  JSR sub_A47B
; clear specific addresses
C - - - - - 0x01401C 05:A00C: A0 00     LDY #$00
C - - - - - 0x01401E 05:A00E: A2 00     LDX #$00
bra_A010_loop:
C - - - - - 0x014020 05:A010: B9 1A 99  LDA tbl_0x01B92A_addresses,Y
C - - - - - 0x014023 05:A013: 85 5B     STA ram_005B_t3F_data
C - - - - - 0x014025 05:A015: B9 1B 99  LDA tbl_0x01B92A_addresses + $01,Y
C - - - - - 0x014028 05:A018: 85 5C     STA ram_005B_t3F_data + $01
C - - - - - 0x01402A 05:A01A: 8A        TXA
C - - - - - 0x01402B 05:A01B: 81 5B     STA (ram_005B_t3F_data,X)
C - - - - - 0x01402D 05:A01D: C8        INY
C - - - - - 0x01402E 05:A01E: C8        INY
C - - - - - 0x01402F 05:A01F: C0 28     CPY #$28
C - - - - - 0x014031 05:A021: D0 ED     BNE bra_A010_loop
; 
C - - - - - 0x014033 05:A023: A5 DB     LDA ram_00DB_flag
C - - - - - 0x014035 05:A025: 10 20     BPL bra_A047
C - - - - - 0x014037 05:A027: C9 80     CMP #$80
C - - - - - 0x014039 05:A029: F0 03     BEQ bra_A02E
C - - - - - 0x01403B 05:A02B: 4C 92 BB  JMP loc_BB92_clear_custom_addresses
bra_A02E:
C - - - - - 0x01403E 05:A02E: A2 FE     LDX #$FE
bra_A030_loop:
C - - - - - 0x014040 05:A030: E8        INX
C - - - - - 0x014041 05:A031: E8        INX
C - - - - - 0x014042 05:A032: BD 4A A0  LDA tbl_A04A,X
C - - - - - 0x014045 05:A035: C5 3C     CMP ram_city
C - - - - - 0x014047 05:A037: D0 F7     BNE bra_A030_loop
C - - - - - 0x014049 05:A039: 8A        TXA
C - - - - - 0x01404A 05:A03A: 09 C0     ORA #$C0
C - - - - - 0x01404C 05:A03C: 8D 53 04  STA ram_0453_t02
C - - - - - 0x01404F 05:A03F: BD 4B A0  LDA tbl_A04A + $01,X
C - - - - - 0x014052 05:A042: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x014054 05:A044: 20 F1 9F  JSR sub_0x01C001
bra_A047:
C - - - - - 0x014057 05:A047: 4C 99 A0  JMP loc_A099_restore_prg_bank



tbl_A04A:
; 00 
- D 1 - - - 0x01405A 05:A04A: 1A        .byte $1A   ; 
- D 1 - - - 0x01405B 05:A04B: 05        .byte con_000D_05   ; 
; 01 
- D 1 - - - 0x01405C 05:A04C: 18        .byte $18   ; 
- D 1 - - - 0x01405D 05:A04D: 06        .byte con_000D_06   ; 
; 02 
- D 1 - - - 0x01405E 05:A04E: 01        .byte $01   ; 
- D 1 - - - 0x01405F 05:A04F: 01        .byte con_000D_01   ; 
; 03 
- D 1 - - - 0x014060 05:A050: 1B        .byte $1B   ; 
- D 1 - - - 0x014061 05:A051: 03        .byte con_000D_03   ; 
; 04 
- D 1 - - - 0x014062 05:A052: 02        .byte $02   ; 
- D 1 - - - 0x014063 05:A053: 04        .byte con_000D_04   ; 
; 05 
- D 1 - - - 0x014064 05:A054: 19        .byte $19   ; 
- D 1 - - - 0x014065 05:A055: 02        .byte con_000D_02   ; 



loc_A056:
C D 1 - - - 0x014066 05:A056: AC 53 04  LDY ram_0453_t02
C - - - - - 0x014069 05:A059: 30 01     BMI bra_A05C
- - - - - - 0x01406B 05:A05B: 60        RTS
bra_A05C:
C - - - - - 0x01406C 05:A05C: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01406E 05:A05E: 48        PHA
C - - - - - 0x01406F 05:A05F: 20 7B A4  JSR sub_A47B
C - - - - - 0x014072 05:A062: AD 53 04  LDA ram_0453_t02
C - - - - - 0x014075 05:A065: 29 40     AND #$40
C - - - - - 0x014077 05:A067: D0 09     BNE bra_A072
C - - - - - 0x014079 05:A069: 20 CA BB  JSR sub_BBCA
C - - - - - 0x01407C 05:A06C: 20 32 A2  JSR sub_A232
C - - - - - 0x01407F 05:A06F: 4C 99 A0  JMP loc_A099_restore_prg_bank
bra_A072:
C - - - - - 0x014082 05:A072: 20 E6 A1  JSR sub_A1E6
C - - - - - 0x014085 05:A075: AD 53 04  LDA ram_0453_t02
C - - - - - 0x014088 05:A078: 29 3F     AND #$3F
C - - - - - 0x01408A 05:A07A: A8        TAY
C - - - - - 0x01408B 05:A07B: B9 9F A0  LDA tbl_A09F,Y
C - - - - - 0x01408E 05:A07E: 85 5B     STA ram_005B_t00_data
C - - - - - 0x014090 05:A080: B9 A0 A0  LDA tbl_A09F + $01,Y
C - - - - - 0x014093 05:A083: 85 5C     STA ram_005B_t00_data + $01
C - - - - - 0x014095 05:A085: AD 60 04  LDA ram_0460
C - - - - - 0x014098 05:A088: 0A        ASL
C - - - - - 0x014099 05:A089: A8        TAY
C - - - - - 0x01409A 05:A08A: A9 A0     LDA #> (ofs_A099_return___restore_prg_bank - $01)
C - - - - - 0x01409C 05:A08C: 48        PHA
C - - - - - 0x01409D 05:A08D: A9 98     LDA #< (ofs_A099_return___restore_prg_bank - $01)
C - - - - - 0x01409F 05:A08F: 48        PHA
C - - - - - 0x0140A0 05:A090: C8        INY
C - - - - - 0x0140A1 05:A091: B1 5B     LDA (ram_005B_t00_data),Y
C - - - - - 0x0140A3 05:A093: 48        PHA
C - - - - - 0x0140A4 05:A094: 88        DEY
C - - - - - 0x0140A5 05:A095: B1 5B     LDA (ram_005B_t00_data),Y
C - - - - - 0x0140A7 05:A097: 48        PHA
C - - - - - 0x0140A8 05:A098: 60        RTS



loc_A099_restore_prg_bank:
ofs_A099_return___restore_prg_bank:
C D 1 - - - 0x0140A9 05:A099: 68        PLA
C - - - - - 0x0140AA 05:A09A: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0140AC 05:A09C: 4C 9E FF  JMP loc_0x01FFAE_prg_bankswitch_8000



tbl_A09F:
- D 1 - - - 0x0140AF 05:A09F: AB A0     .word _off008_A0AB_00
- D 1 - - - 0x0140B1 05:A0A1: B5 A0     .word _off008_A0B5_01
- D 1 - - - 0x0140B3 05:A0A3: B9 A0     .word _off008_A0B9_02
- D 1 - - - 0x0140B5 05:A0A5: BD A0     .word _off008_A0BD_03
- D 1 - - - 0x0140B7 05:A0A7: C5 A0     .word _off008_A0C5_04
- D 1 - - - 0x0140B9 05:A0A9: CB A0     .word _off008_A0CB_05



_off008_A0AB_00:
- D 1 - I - 0x0140BB 05:A0AB: D4 A0     .word ofs_047_00_A0D5_00 - $01
- D 1 - I - 0x0140BD 05:A0AD: F2 A0     .word ofs_047_00_A0F3_01 - $01
- D 1 - I - 0x0140BF 05:A0AF: FE A0     .word ofs_047_00_A0FF_02 - $01
- D 1 - I - 0x0140C1 05:A0B1: 05 A1     .word ofs_047_00_A106_03 - $01
- D 1 - I - 0x0140C3 05:A0B3: 15 A1     .word ofs_047_00_A116_04 - $01



_off008_A0B5_01:
- D 1 - I - 0x0140C5 05:A0B5: 20 A1     .word ofs_047_01_A121_00 - $01
- D 1 - I - 0x0140C7 05:A0B7: 30 A1     .word ofs_047_01_A131_01 - $01



_off008_A0B9_02:
- D 1 - I - 0x0140C9 05:A0B9: 46 A1     .word ofs_047_02_A147_00 - $01
- D 1 - I - 0x0140CB 05:A0BB: 4B A1     .word ofs_047_02_A14C_01 - $01



_off008_A0BD_03:
- D 1 - I - 0x0140CD 05:A0BD: 51 A1     .word ofs_047_03_A152_00 - $01
- D 1 - I - 0x0140CF 05:A0BF: 4B A1     .word ofs_047_03_A14C_01 - $01
- D 1 - I - 0x0140D1 05:A0C1: 65 A1     .word ofs_047_03_A166_02 - $01
- D 1 - I - 0x0140D3 05:A0C3: F1 A0     .word ofs_047_03_A0F2_03_RTS - $01



_off008_A0C5_04:
- D 1 - I - 0x0140D5 05:A0C5: 6C A1     .word ofs_047_04_A16D_00 - $01
- D 1 - I - 0x0140D7 05:A0C7: 76 A1     .word ofs_047_04_A177_01 - $01
- D 1 - I - 0x0140D9 05:A0C9: 4B A1     .word ofs_047_04_A14C_02 - $01



_off008_A0CB_05:
- D 1 - I - 0x0140DB 05:A0CB: 86 A1     .word ofs_047_05_A187_00 - $01
- D 1 - I - 0x0140DD 05:A0CD: 8E A1     .word ofs_047_05_A18F_01 - $01
- D 1 - I - 0x0140DF 05:A0CF: B2 A1     .word ofs_047_05_A1B3_02 - $01
- D 1 - I - 0x0140E1 05:A0D1: BB A1     .word ofs_047_05_A1BC_03 - $01
- D 1 - I - 0x0140E3 05:A0D3: D7 A1     .word ofs_047_05_A1D8_04 - $01



ofs_047_00_A0D5_00:
C - - - - - 0x0140E5 05:A0D5: EE AE 04  INC ram_04AE_t02
C - - - - - 0x0140E8 05:A0D8: 10 18     BPL bra_A0F2_RTS
C - - - - - 0x0140EA 05:A0DA: A9 6A     LDA #con_chr_bank_spr + $6A
C - - - - - 0x0140EC 05:A0DC: 85 26     STA ram_chr_bank_spr + $02
bra_A0DE:
C - - - - - 0x0140EE 05:A0DE: A0 00     LDY #$00
C - - - - - 0x0140F0 05:A0E0: A9 00     LDA #$00
loc_A0E2:
C D 1 - - - 0x0140F2 05:A0E2: 20 F7 B8  JSR sub_B8F7
loc_A0E5:
C D 1 - - - 0x0140F5 05:A0E5: A9 00     LDA #$00
C - - - - - 0x0140F7 05:A0E7: 8D AE 04  STA ram_04AE_t03
C - - - - - 0x0140FA 05:A0EA: EE 60 04  INC ram_0460
C - - - - - 0x0140FD 05:A0ED: A9 C0     LDA #$C0
C - - - - - 0x0140FF 05:A0EF: 8D 6D 04  STA ram_046D_t02
bra_A0F2_RTS:
ofs_047_03_A0F2_03_RTS:
C - - - - - 0x014102 05:A0F2: 60        RTS



ofs_047_00_A0F3_01:
C - - - - - 0x014103 05:A0F3: EE AE 04  INC ram_04AE_t03
C - - - - - 0x014106 05:A0F6: D0 FA     BNE bra_A0F2_RTS
C - - - - - 0x014108 05:A0F8: A0 04     LDY #$04
C - - - - - 0x01410A 05:A0FA: A9 10     LDA #$10
C - - - - - 0x01410C 05:A0FC: 4C E2 A0  JMP loc_A0E2



ofs_047_00_A0FF_02:
C - - - - - 0x01410F 05:A0FF: EE AE 04  INC ram_04AE_t03
C - - - - - 0x014112 05:A102: D0 EE     BNE bra_A0F2_RTS
C - - - - - 0x014114 05:A104: F0 D8     BEQ bra_A0DE    ; jmp



ofs_047_00_A106_03:
C - - - - - 0x014116 05:A106: EE AE 04  INC ram_04AE_t03
C - - - - - 0x014119 05:A109: 10 E7     BPL bra_A0F2_RTS
C - - - - - 0x01411B 05:A10B: A0 00     LDY #$00
sub_A10D:
loc_A10D:
C D 1 - - - 0x01411D 05:A10D: EE BB 04  INC ram_04BB_t02
C - - - - - 0x014120 05:A110: 20 76 99  JSR sub_0x01B986
C - - - - - 0x014123 05:A113: 4C E5 A0  JMP loc_A0E5



ofs_047_00_A116_04:
C - - - - - 0x014126 05:A116: 20 82 A4  JSR sub_A482
C - - - - - 0x014129 05:A119: A5 D7     LDA ram_00D7
C - - - - - 0x01412B 05:A11B: 8D 23 05  STA ram_0523_t02
C - - - - - 0x01412E 05:A11E: 4C 42 99  JMP loc_0x01B952



ofs_047_01_A121_00:
C - - - - - 0x014131 05:A121: EE AE 04  INC ram_04AE_t02
C - - - - - 0x014134 05:A124: 10 0A     BPL bra_A130_RTS
C - - - - - 0x014136 05:A126: A0 08     LDY #$08
C - - - - - 0x014138 05:A128: 20 0D A1  JSR sub_A10D
C - - - - - 0x01413B 05:A12B: A9 D0     LDA #$D0
C - - - - - 0x01413D 05:A12D: 8D 6D 04  STA ram_046D_t02
bra_A130_RTS:
C - - - - - 0x014140 05:A130: 60        RTS



ofs_047_01_A131_01:
C - - - - - 0x014141 05:A131: A0 00     LDY #$00
C - - - - - 0x014143 05:A133: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x014146 05:A136: C9 D0     CMP #$D0
C - - - - - 0x014148 05:A138: 90 01     BCC bra_A13B
C - - - - - 0x01414A 05:A13A: C8        INY ; 01
bra_A13B:
C - - - - - 0x01414B 05:A13B: 8C 16 05  STY ram_0516_t02
C - - - - - 0x01414E 05:A13E: EE C8 04  INC ram_04C8_t02
C - - - - - 0x014151 05:A141: D0 03     BNE bra_A146_RTS
C - - - - - 0x014153 05:A143: EE D5 04  INC ram_04D5_t03
bra_A146_RTS:
C - - - - - 0x014156 05:A146: 60        RTS



ofs_047_02_A147_00:
C - - - - - 0x014157 05:A147: A0 10     LDY #$10
C - - - - - 0x014159 05:A149: 4C 0D A1  JMP loc_A10D



ofs_047_02_A14C_01:
ofs_047_03_A14C_01:
ofs_047_04_A14C_02:
C - - - - - 0x01415C 05:A14C: 20 82 A4  JSR sub_A482
C - - - - - 0x01415F 05:A14F: 4C 42 99  JMP loc_0x01B952



ofs_047_03_A152_00:
C - - - - - 0x014162 05:A152: A0 18     LDY #$18
C - - - - - 0x014164 05:A154: 20 0D A1  JSR sub_A10D
C - - - - - 0x014167 05:A157: A0 30     LDY #$30
C - - - - - 0x014169 05:A159: 20 76 99  JSR sub_0x01B986
C - - - - - 0x01416C 05:A15C: A0 38     LDY #$38
C - - - - - 0x01416E 05:A15E: 20 76 99  JSR sub_0x01B986
C - - - - - 0x014171 05:A161: A0 40     LDY #$40
bra_A163:
C - - - - - 0x014173 05:A163: 4C 76 99  JMP loc_0x01B986



ofs_047_03_A166_02:
C - - - - - 0x014176 05:A166: EE 60 04  INC ram_0460
C - - - - - 0x014179 05:A169: A0 70     LDY #$70
C - - - - - 0x01417B 05:A16B: D0 F6     BNE bra_A163    ; jmp



ofs_047_04_A16D_00:
C - - - - - 0x01417D 05:A16D: A0 20     LDY #$20
C - - - - - 0x01417F 05:A16F: 20 0D A1  JSR sub_A10D
C - - - - - 0x014182 05:A172: A0 48     LDY #$48
C - - - - - 0x014184 05:A174: 4C 76 99  JMP loc_0x01B986



ofs_047_04_A177_01:
C - - - - - 0x014187 05:A177: AD AE 04  LDA ram_04AE_t03
C - - - - - 0x01418A 05:A17A: F0 0A     BEQ bra_A186_RTS
C - - - - - 0x01418C 05:A17C: A9 00     LDA #$00
C - - - - - 0x01418E 05:A17E: 8D AE 04  STA ram_04AE_t03
C - - - - - 0x014191 05:A181: A0 68     LDY #$68
C - - - - - 0x014193 05:A183: 4C 76 99  JMP loc_0x01B986
bra_A186_RTS:
C - - - - - 0x014196 05:A186: 60        RTS



ofs_047_05_A187_00:
C - - - - - 0x014197 05:A187: A0 28     LDY #$28
C - - - - - 0x014199 05:A189: 20 76 99  JSR sub_0x01B986
C - - - - - 0x01419C 05:A18C: 4C E5 A0  JMP loc_A0E5



ofs_047_05_A18F_01:
C - - - - - 0x01419F 05:A18F: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x0141A1 05:A191: C9 01     CMP #$01
C - - - - - 0x0141A3 05:A193: D0 26     BNE bra_A1BB_RTS
C - - - - - 0x0141A5 05:A195: AD AE 04  LDA ram_04AE_t03
C - - - - - 0x0141A8 05:A198: C9 08     CMP #$08
C - - - - - 0x0141AA 05:A19A: F0 14     BEQ bra_A1B0
C - - - - - 0x0141AC 05:A19C: A0 50     LDY #$50
C - - - - - 0x0141AE 05:A19E: 20 76 99  JSR sub_0x01B986
C - - - - - 0x0141B1 05:A1A1: A0 58     LDY #$58
C - - - - - 0x0141B3 05:A1A3: 20 76 99  JSR sub_0x01B986
C - - - - - 0x0141B6 05:A1A6: A0 60     LDY #$60
C - - - - - 0x0141B8 05:A1A8: 20 76 99  JSR sub_0x01B986
C - - - - - 0x0141BB 05:A1AB: EE AE 04  INC ram_04AE_t03
C - - - - - 0x0141BE 05:A1AE: D0 0B     BNE bra_A1BB_RTS
bra_A1B0:
C - - - - - 0x0141C0 05:A1B0: EE 60 04  INC ram_0460
ofs_047_05_A1B3_02:
C - - - - - 0x0141C3 05:A1B3: EE AE 04  INC ram_04AE_t03
C - - - - - 0x0141C6 05:A1B6: 10 03     BPL bra_A1BB_RTS
C - - - - - 0x0141C8 05:A1B8: EE 60 04  INC ram_0460
bra_A1BB_RTS:
C - - - - - 0x0141CB 05:A1BB: 60        RTS



ofs_047_05_A1BC_03:
C - - - - - 0x0141CC 05:A1BC: AD F3 03  LDA ram_03F3
C - - - - - 0x0141CF 05:A1BF: D0 0A     BNE bra_A1CB
C - - - - - 0x0141D1 05:A1C1: A9 81     LDA #$81
C - - - - - 0x0141D3 05:A1C3: 8D F3 03  STA ram_03F3
C - - - - - 0x0141D6 05:A1C6: A9 02     LDA #$02
C - - - - - 0x0141D8 05:A1C8: 8D F4 03  STA ram_03F4
bra_A1CB:
C - - - - - 0x0141DB 05:A1CB: EE AE 04  INC ram_04AE_t03
C - - - - - 0x0141DE 05:A1CE: D0 EB     BNE bra_A1BB_RTS
C - - - - - 0x0141E0 05:A1D0: A0 00     LDY #$00
C - - - - - 0x0141E2 05:A1D2: 20 DE 9F  JSR sub_0x01BFEE
C - - - - - 0x0141E5 05:A1D5: EE 60 04  INC ram_0460
ofs_047_05_A1D8_04:
C - - - - - 0x0141E8 05:A1D8: EE C8 04  INC ram_04C8_t02
C - - - - - 0x0141EB 05:A1DB: D0 03     BNE bra_A1E0
C - - - - - 0x0141ED 05:A1DD: EE D5 04  INC ram_04D5_t03
bra_A1E0:
C - - - - - 0x0141F0 05:A1E0: 20 82 A4  JSR sub_A482
C - - - - - 0x0141F3 05:A1E3: 4C 42 99  JMP loc_0x01B952



sub_A1E6:
C - - - - - 0x0141F6 05:A1E6: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x0141F8 05:A1E8: F0 48     BEQ bra_A232
C - - - - - 0x0141FA 05:A1EA: 85 78     STA ram_0078_t01_loop_counter
C - - - - - 0x0141FC 05:A1EC: A2 FF     LDX #$FF
bra_A1EE:
bra_A1EE_loop:
C - - - - - 0x0141FE 05:A1EE: E8        INX
C - - - - - 0x0141FF 05:A1EF: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x014202 05:A1F2: 10 FA     BPL bra_A1EE_loop
C - - - - - 0x014204 05:A1F4: 86 79     STX ram_0079_obj_index
C - - - - - 0x014206 05:A1F6: 20 61 9A  JSR sub_0x01BA71
; bzk optimize, useless LDA + STA
C - - - - - 0x014209 05:A1F9: A9 00     LDA #$00
C - - - - - 0x01420B 05:A1FB: 85 74     STA ram_0074_tFF_useless
; 
C - - - - - 0x01420D 05:A1FD: 20 60 A3  JSR sub_A360
C - - - - - 0x014210 05:A200: 20 AC 9C  JSR sub_0x01BCBC
C - - - - - 0x014213 05:A203: A4 75     LDY ram_0075_t03_obj_id
C - - - - - 0x014215 05:A205: A9 A2     LDA #> (ofs_A214_return - $01)
C - - - - - 0x014217 05:A207: 48        PHA
C - - - - - 0x014218 05:A208: A9 13     LDA #< (ofs_A214_return - $01)
C - - - - - 0x01421A 05:A20A: 48        PHA
C - - - - - 0x01421B 05:A20B: B9 78 A2  LDA tbl_A277 + $01,Y
C - - - - - 0x01421E 05:A20E: 48        PHA
C - - - - - 0x01421F 05:A20F: B9 77 A2  LDA tbl_A277,Y
C - - - - - 0x014222 05:A212: 48        PHA
C - - - - - 0x014223 05:A213: 60        RTS



ofs_A214_return:
C - - - - - 0x014224 05:A214: A6 79     LDX ram_0079_obj_index
C - - - - - 0x014226 05:A216: D0 06     BNE bra_A21E
C - - - - - 0x014228 05:A218: AD 79 05  LDA ram_obj_hp
C - - - - - 0x01422B 05:A21B: 8D 57 05  STA ram_0557_t01_damage_to_enemy
bra_A21E:
C - - - - - 0x01422E 05:A21E: 20 17 9C  JSR sub_0x01BC27
C - - - - - 0x014231 05:A221: AD BB 04  LDA ram_04BB_t02
C - - - - - 0x014234 05:A224: F0 05     BEQ bra_A22B
C - - - - - 0x014236 05:A226: AD 3D 05  LDA ram_053D_t01
C - - - - - 0x014239 05:A229: F0 03     BEQ bra_A22E
bra_A22B:
C - - - - - 0x01423B 05:A22B: 20 B1 9E  JSR sub_0x01BEC1
bra_A22E:
C - - - - - 0x01423E 05:A22E: C6 78     DEC ram_0078_t01_loop_counter
C - - - - - 0x014240 05:A230: D0 BC     BNE bra_A1EE
bra_A232:
sub_A232:
C - - - - - 0x014242 05:A232: A5 CB     LDA ram_00CB_t01
C - - - - - 0x014244 05:A234: F0 40     BEQ bra_A276_RTS
C - - - - - 0x014246 05:A236: 85 78     STA ram_0078_t02_loop_counter
; bzk optimize, just use LDX 03
C - - - - - 0x014248 05:A238: A2 FF     LDX #$FF
C - - - - - 0x01424A 05:A23A: 20 59 9F  JSR sub_0x01BF69_increase_X_by_04
bra_A23D_loop:
C - - - - - 0x01424D 05:A23D: E8        INX
C - - - - - 0x01424E 05:A23E: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x014251 05:A241: 10 FA     BPL bra_A23D_loop
C - - - - - 0x014253 05:A243: 86 7A     STX ram_007A_t02_object_index
C - - - - - 0x014255 05:A245: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x014258 05:A248: 38        SEC
C - - - - - 0x014259 05:A249: E9 24     SBC #$24    ; con_enemy_id_24
C - - - - - 0x01425B 05:A24B: 0A        ASL
C - - - - - 0x01425C 05:A24C: 85 75     STA ram_0075_t04_obj_id
C - - - - - 0x01425E 05:A24E: 20 F9 B9  JSR sub_B9F9
C - - - - - 0x014261 05:A251: 20 D3 B9  JSR sub_B9D3
C - - - - - 0x014264 05:A254: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x014267 05:A257: F0 11     BEQ bra_A26A
C - - - - - 0x014269 05:A259: A4 75     LDY ram_0075_t04_obj_id
C - - - - - 0x01426B 05:A25B: A9 A2     LDA #> (ofs_A26A_return - $01)
C - - - - - 0x01426D 05:A25D: 48        PHA
C - - - - - 0x01426E 05:A25E: A9 69     LDA #< (ofs_A26A_return - $01)
C - - - - - 0x014270 05:A260: 48        PHA
C - - - - - 0x014271 05:A261: B9 21 BA  LDA tbl_BA20 + $01,Y
C - - - - - 0x014274 05:A264: 48        PHA
C - - - - - 0x014275 05:A265: B9 20 BA  LDA tbl_BA20,Y
C - - - - - 0x014278 05:A268: 48        PHA
C - - - - - 0x014279 05:A269: 60        RTS
bra_A26A:
ofs_A26A_return:
C - - - - - 0x01427A 05:A26A: C6 78     DEC ram_0078_t02_loop_counter
C - - - - - 0x01427C 05:A26C: D0 CF     BNE bra_A23D_loop
C - - - - - 0x01427E 05:A26E: AD 09 05  LDA ram_0509_t02
C - - - - - 0x014281 05:A271: F0 03     BEQ bra_A276_RTS
; bzk optimize, JMP
C - - - - - 0x014283 05:A273: 20 A6 B9  JSR sub_B9A6
bra_A276_RTS:
ofs_105_A276_14_RTS:
C - - - - - 0x014286 05:A276: 60        RTS



tbl_A277:
- D 1 - - - 0x014287 05:A277: 8C A2     .word ofs_105_A28D_00 - $01
- D 1 - - - 0x014289 05:A279: B0 A2     .word ofs_105_A2B1_02 - $01
- D 1 - - - 0x01428B 05:A27B: D8 A2     .word ofs_105_A2D9_04 - $01
- D 1 - - - 0x01428D 05:A27D: F8 A2     .word ofs_105_A2F9_06 - $01
- D 1 - - - 0x01428F 05:A27F: F8 A2     .word ofs_105_A2F9_08 - $01
- D 1 - - - 0x014291 05:A281: 18 A3     .word ofs_105_A319_0A - $01
- D 1 - - - 0x014293 05:A283: 40 A3     .word ofs_105_A341_0C - $01
- D 1 - - - 0x014295 05:A285: 43 A3     .word ofs_105_A344_0E - $01
- D 1 - - - 0x014297 05:A287: 46 A3     .word ofs_105_A347_10 - $01
- D 1 - - - 0x014299 05:A289: 49 A3     .word ofs_105_A34A_12 - $01
- D 1 - - - 0x01429B 05:A28B: 75 A2     .word ofs_105_A276_14_RTS - $01



ofs_105_A28D_00:
C - - - - - 0x01429D 05:A28D: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x0142A0 05:A290: B9 9A A2  LDA tbl_A299 + $01,Y
C - - - - - 0x0142A3 05:A293: 48        PHA
C - - - - - 0x0142A4 05:A294: B9 99 A2  LDA tbl_A299,Y
C - - - - - 0x0142A7 05:A297: 48        PHA
C - - - - - 0x0142A8 05:A298: 60        RTS



tbl_A299:
- D 1 - - - 0x0142A9 05:A299: 8F A4     .word ofs_097_A490_00 - $01
- D 1 - - - 0x0142AB 05:A29B: 42 A5     .word ofs_097_A543_01 - $01
- D 1 - - - 0x0142AD 05:A29D: 59 A5     .word ofs_097_A55A_02 - $01
- D 1 - - - 0x0142AF 05:A29F: C7 A5     .word ofs_097_A5C8_03 - $01
- D 1 - - - 0x0142B1 05:A2A1: 4D A6     .word ofs_097_A64E_04 - $01
- D 1 - - - 0x0142B3 05:A2A3: 91 A6     .word ofs_097_A692_05 - $01
- D 1 - - - 0x0142B5 05:A2A5: CF A6     .word ofs_097_A6D0_06 - $01
- D 1 - - - 0x0142B7 05:A2A7: 33 A7     .word ofs_097_A734_07 - $01
- D 1 - - - 0x0142B9 05:A2A9: 93 A7     .word ofs_097_A794_08 - $01
- D 1 - - - 0x0142BB 05:A2AB: AD A7     .word ofs_097_A7AE_09 - $01
- D 1 - - - 0x0142BD 05:A2AD: C5 A7     .word ofs_097_A7C6_0A - $01
- D 1 - - - 0x0142BF 05:A2AF: E4 A7     .word ofs_097_A7E5_0B - $01



ofs_105_A2B1_02:
C - - - - - 0x0142C1 05:A2B1: AD 23 05  LDA ram_0523_t03
C - - - - - 0x0142C4 05:A2B4: 10 05     BPL bra_A2BB
C - - - - - 0x0142C6 05:A2B6: A9 00     LDA #$00
C - - - - - 0x0142C8 05:A2B8: 8D 23 05  STA ram_0523_t03
bra_A2BB:
C - - - - - 0x0142CB 05:A2BB: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x0142CE 05:A2BE: B9 C8 A2  LDA tbl_A2C7 + $01,Y
C - - - - - 0x0142D1 05:A2C1: 48        PHA
C - - - - - 0x0142D2 05:A2C2: B9 C7 A2  LDA tbl_A2C7,Y
C - - - - - 0x0142D5 05:A2C5: 48        PHA
C - - - - - 0x0142D6 05:A2C6: 60        RTS



tbl_A2C7:
- D 1 - - - 0x0142D7 05:A2C7: 36 A8     .word ofs_098_A837_00 - $01
- D 1 - - - 0x0142D9 05:A2C9: 9E A8     .word ofs_098_A89F_01 - $01
- - - - - - 0x0142DB 05:A2CB: 19 A9     .word ofs_098_A91A_02 - $01
- D 1 - - - 0x0142DD 05:A2CD: B6 A9     .word ofs_098_A9B7_03 - $01
- D 1 - - - 0x0142DF 05:A2CF: 17 AA     .word ofs_098_AA18_04 - $01
- D 1 - - - 0x0142E1 05:A2D1: C9 AA     .word ofs_098_AACA_05 - $01
- D 1 - - - 0x0142E3 05:A2D3: 59 AB     .word ofs_098_AB5A_06 - $01
- D 1 - - - 0x0142E5 05:A2D5: 9A AB     .word ofs_098_AB9B_07 - $01
- D 1 - - - 0x0142E7 05:A2D7: D1 AB     .word ofs_098_ABD2_08 - $01



ofs_105_A2D9_04:
C - - - - - 0x0142E9 05:A2D9: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x0142EC 05:A2DC: B9 E6 A2  LDA tbl_A2E5 + $01,Y
C - - - - - 0x0142EF 05:A2DF: 48        PHA
C - - - - - 0x0142F0 05:A2E0: B9 E5 A2  LDA tbl_A2E5,Y
C - - - - - 0x0142F3 05:A2E3: 48        PHA
C - - - - - 0x0142F4 05:A2E4: 60        RTS



tbl_A2E5:
- D 1 - - - 0x0142F5 05:A2E5: 05 AD     .word ofs_099_AD06_00 - $01
- D 1 - - - 0x0142F7 05:A2E7: 88 AD     .word ofs_099_AD89_01 - $01
- - - - - - 0x0142F9 05:A2E9: 61 AE     .word ofs_099_AE62_02_RTS - $01
- D 1 - - - 0x0142FB 05:A2EB: 7E AE     .word ofs_099_AE7F_03 - $01
- D 1 - - - 0x0142FD 05:A2ED: B9 AE     .word ofs_099_AEBA_04 - $01
- D 1 - - - 0x0142FF 05:A2EF: FB AE     .word ofs_099_AEFC_05 - $01
- D 1 - - - 0x014301 05:A2F1: 1B AF     .word ofs_099_AF1C_06 - $01
- D 1 - - - 0x014303 05:A2F3: 46 AF     .word ofs_099_AF47_07 - $01
- D 1 - - - 0x014305 05:A2F5: 69 AF     .word ofs_099_AF6A_08 - $01
- D 1 - - - 0x014307 05:A2F7: 88 AF     .word ofs_099_AF89_09 - $01



ofs_105_A2F9_06:
ofs_105_A2F9_08:
C - - - - - 0x014309 05:A2F9: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x01430C 05:A2FC: B9 06 A3  LDA tbl_A305 + $01,Y
C - - - - - 0x01430F 05:A2FF: 48        PHA
C - - - - - 0x014310 05:A300: B9 05 A3  LDA tbl_A305,Y
C - - - - - 0x014313 05:A303: 48        PHA
C - - - - - 0x014314 05:A304: 60        RTS



tbl_A305:
- D 1 - - - 0x014315 05:A305: E9 AF     .word ofs_100_AFEA_00 - $01
- D 1 - - - 0x014317 05:A307: 64 B0     .word ofs_100_B065_01 - $01
- D 1 - - - 0x014319 05:A309: DD B0     .word ofs_100_B0DE_02 - $01
- D 1 - - - 0x01431B 05:A30B: 24 B1     .word ofs_100_B125_03 - $01
- D 1 - - - 0x01431D 05:A30D: 40 B1     .word ofs_100_B141_04 - $01
- D 1 - - - 0x01431F 05:A30F: 6B B1     .word ofs_100_B16C_05 - $01
- D 1 - - - 0x014321 05:A311: B5 B1     .word ofs_100_B1B6_06 - $01
- D 1 - - - 0x014323 05:A313: FE B1     .word ofs_100_B1FF_07 - $01
- D 1 - - - 0x014325 05:A315: 19 B2     .word ofs_100_B21A_08 - $01
- D 1 - - - 0x014327 05:A317: 35 B2     .word ofs_100_B236_09 - $01



ofs_105_A319_0A:
C - - - - - 0x014329 05:A319: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x01432C 05:A31C: B9 26 A3  LDA tbl_A325 + $01,Y
C - - - - - 0x01432F 05:A31F: 48        PHA
C - - - - - 0x014330 05:A320: B9 25 A3  LDA tbl_A325,Y
C - - - - - 0x014333 05:A323: 48        PHA
C - - - - - 0x014334 05:A324: 60        RTS



tbl_A325:
- D 1 - - - 0x014335 05:A325: 75 B4     .word ofs_101_B476_00 - $01
- - - - - - 0x014337 05:A327: 28 B5     .word ofs_101_B529_01 - $01
- D 1 - - - 0x014339 05:A329: 44 B5     .word ofs_101_B545_02 - $01
- D 1 - - - 0x01433B 05:A32B: B3 B5     .word ofs_101_B5B4_03 - $01
- D 1 - - - 0x01433D 05:A32D: 0A B6     .word ofs_101_B60B_04 - $01
- D 1 - - - 0x01433F 05:A32F: 36 B6     .word ofs_101_B637_05 - $01
- D 1 - - - 0x014341 05:A331: 9B B6     .word ofs_101_B69C_06 - $01
- D 1 - - - 0x014343 05:A333: E4 B6     .word ofs_101_B6E5_07 - $01
- D 1 - - - 0x014345 05:A335: 5D B7     .word ofs_101_B75E_08 - $01
- - - - - - 0x014347 05:A337: CE B7     .word ofs_101_B7CF_09 - $01
- D 1 - - - 0x014349 05:A339: 9E B7     .word ofs_101_B79F_0A - $01
- D 1 - - - 0x01434B 05:A33B: FC B7     .word ofs_101_B7FD_0B - $01
- D 1 - - - 0x01434D 05:A33D: 32 B8     .word ofs_101_B833_0C - $01
- D 1 - - - 0x01434F 05:A33F: 51 B8     .word ofs_101_B852_0D - $01



ofs_105_A341_0C:
; bzk optimize
C - - - - - 0x014351 05:A341: 4C 55 B2  JMP loc_B255



ofs_105_A344_0E:
; bzk optimize
C - - - - - 0x014354 05:A344: 4C 62 B3  JMP loc_B362



ofs_105_A347_10:
; bzk optimize
C - - - - - 0x014357 05:A347: 4C EB B8  JMP loc_B8EB



ofs_105_A34A_12:
; bzk optimize
C - - - - - 0x01435A 05:A34A: 4C ED B3  JMP loc_B3ED



bra_A34D:
C - - - - - 0x01435D 05:A34D: E0 00     CPX #$00
C - - - - - 0x01435F 05:A34F: D0 0E     BNE bra_A35F_RTS
C - - - - - 0x014361 05:A351: A5 14     LDA ram_frm_cnt
C - - - - - 0x014363 05:A353: 29 03     AND #$03
C - - - - - 0x014365 05:A355: D0 08     BNE bra_A35F_RTS
C - - - - - 0x014367 05:A357: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01436A 05:A35A: 49 01     EOR #$01
C - - - - - 0x01436C 05:A35C: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
bra_A35F_RTS:
C - - - - - 0x01436F 05:A35F: 60        RTS



sub_A360:
C - - - - - 0x014370 05:A360: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x014373 05:A363: 29 20     AND #$20
C - - - - - 0x014375 05:A365: D0 E6     BNE bra_A34D
C - - - - - 0x014377 05:A367: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x01437A 05:A36A: 1D 0D 05  ORA ram_spd_X_lo_obj,X
C - - - - - 0x01437D 05:A36D: F0 2D     BEQ bra_A39C
C - - - - - 0x01437F 05:A36F: 20 16 A4  JSR sub_A416
C - - - - - 0x014382 05:A372: F0 0F     BEQ bra_A383
C - - - - - 0x014384 05:A374: 29 02     AND #$02
C - - - - - 0x014386 05:A376: D0 0B     BNE bra_A383
C - - - - - 0x014388 05:A378: 20 03 9B  JSR sub_0x01BB13_clear_speed_X
C - - - - - 0x01438B 05:A37B: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01438E 05:A37E: 09 01     ORA #$01
C - - - - - 0x014390 05:A380: 9D 41 05  STA ram_0541_obj_flags,X
bra_A383:
C - - - - - 0x014393 05:A383: 20 C6 A3  JSR sub_A3C6
C - - - - - 0x014396 05:A386: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x014399 05:A389: 30 11     BMI bra_A39C
C - - - - - 0x01439B 05:A38B: A9 17     LDA #$17
C - - - - - 0x01439D 05:A38D: DD 64 04  CMP ram_pos_X_lo_obj + $03,X
C - - - - - 0x0143A0 05:A390: B0 07     BCS bra_A399
C - - - - - 0x0143A2 05:A392: A9 E8     LDA #$E8
C - - - - - 0x0143A4 05:A394: DD 64 04  CMP ram_pos_X_lo_obj + $03,X
C - - - - - 0x0143A7 05:A397: B0 03     BCS bra_A39C
bra_A399:
C - - - - - 0x0143A9 05:A399: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
bra_A39C:
C - - - - - 0x0143AC 05:A39C: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x0143AF 05:A39F: 1D 27 05  ORA ram_spd_Y_lo_obj,X
C - - - - - 0x0143B2 05:A3A2: F0 21     BEQ bra_A3C5_RTS
C - - - - - 0x0143B4 05:A3A4: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x0143B7 05:A3A7: 30 0B     BMI bra_A3B4
C - - - - - 0x0143B9 05:A3A9: 20 4F A4  JSR sub_A44F
C - - - - - 0x0143BC 05:A3AC: F0 06     BEQ bra_A3B4
C - - - - - 0x0143BE 05:A3AE: 20 0C 9B  JSR sub_0x01BB1C_clear_speed_Y
C - - - - - 0x0143C1 05:A3B1: 20 D5 9F  JSR sub_0x01BFE5
bra_A3B4:
C - - - - - 0x0143C4 05:A3B4: 20 EE A3  JSR sub_A3EE
C - - - - - 0x0143C7 05:A3B7: AD 6D 04  LDA ram_046D_t02
C - - - - - 0x0143CA 05:A3BA: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0143CD 05:A3BD: B0 06     BCS bra_A3C5_RTS
C - - - - - 0x0143CF 05:A3BF: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
; bzk optimize, JMP
C - - - - - 0x0143D2 05:A3C2: 20 D5 9F  JSR sub_0x01BFE5
bra_A3C5_RTS:
C - - - - - 0x0143D5 05:A3C5: 60        RTS



sub_A3C6:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x0143D6 05:A3C6: A0 00     LDY #$00
C - - - - - 0x0143D8 05:A3C8: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x0143DB 05:A3CB: 48        PHA
C - - - - - 0x0143DC 05:A3CC: 10 01     BPL bra_A3CF
C - - - - - 0x0143DE 05:A3CE: 88        DEY ; FF
bra_A3CF:
C - - - - - 0x0143DF 05:A3CF: 84 71     STY ram_0071_t04_hi
C - - - - - 0x0143E1 05:A3D1: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x0143E4 05:A3D4: 18        CLC
C - - - - - 0x0143E5 05:A3D5: 7D 57 04  ADC ram_pos_X_fr_obj,X
C - - - - - 0x0143E8 05:A3D8: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x0143EB 05:A3DB: 68        PLA
C - - - - - 0x0143EC 05:A3DC: 7D 64 04  ADC ram_pos_X_lo_obj + $03,X
C - - - - - 0x0143EF 05:A3DF: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0143F2 05:A3E2: 85 72     STA ram_0072_t10_lo
C - - - - - 0x0143F4 05:A3E4: A5 71     LDA ram_0071_t04_hi
C - - - - - 0x0143F6 05:A3E6: 7D 71 04  ADC ram_pos_X_hi_obj + $03,X
C - - - - - 0x0143F9 05:A3E9: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
; bzk optimize, useless TAY?
C - - - - - 0x0143FC 05:A3EC: A8        TAY
C - - - - - 0x0143FD 05:A3ED: 60        RTS



sub_A3EE:
C - - - - - 0x0143FE 05:A3EE: A0 00     LDY #$00
C - - - - - 0x014400 05:A3F0: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x014403 05:A3F3: 48        PHA
C - - - - - 0x014404 05:A3F4: 10 01     BPL bra_A3F7
C - - - - - 0x014406 05:A3F6: 88        DEY ; FF
bra_A3F7:
C - - - - - 0x014407 05:A3F7: 84 71     STY ram_0071_t12_hi
C - - - - - 0x014409 05:A3F9: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x01440C 05:A3FC: 18        CLC
C - - - - - 0x01440D 05:A3FD: 7D 7E 04  ADC ram_pos_Y_fr_obj,X
C - - - - - 0x014410 05:A400: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x014413 05:A403: 68        PLA
C - - - - - 0x014414 05:A404: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014417 05:A407: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
; bzk optimize, useless STA
C - - - - - 0x01441A 05:A40A: 85 72     STA ram_0072_tFF_useless
C - - - - - 0x01441C 05:A40C: A5 71     LDA ram_0071_t12_hi
C - - - - - 0x01441E 05:A40E: 7D 98 04  ADC ram_pos_Y_hi_obj + $03,X
C - - - - - 0x014421 05:A411: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x014424 05:A414: A8        TAY
C - - - - - 0x014425 05:A415: 60        RTS



sub_A416:
C - - - - - 0x014426 05:A416: 20 34 A4  JSR sub_A434
C - - - - - 0x014429 05:A419: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01442C 05:A41C: 30 02     BMI bra_A420
C - - - - - 0x01442E 05:A41E: C8        INY
C - - - - - 0x01442F 05:A41F: C8        INY
bra_A420:
C - - - - - 0x014430 05:A420: B9 7C 92  LDA tbl_0x01B28C_positions,Y
C - - - - - 0x014433 05:A423: 18        CLC
C - - - - - 0x014434 05:A424: 7D 64 04  ADC ram_pos_X_lo_obj + $03,X
C - - - - - 0x014437 05:A427: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x014439 05:A429: B9 7D 92  LDA tbl_0x01B28C_positions + $01,Y
C - - - - - 0x01443C 05:A42C: 7D 71 04  ADC ram_pos_X_hi_obj + $03,X
C - - - - - 0x01443F 05:A42F: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x014441 05:A431: 4C 71 A4  JMP loc_A471



sub_A434:
; out
    ; Y = 
C - - - - - 0x014444 05:A434: A0 00     LDY #$00
C - - - - - 0x014446 05:A436: A5 75     LDA ram_0075_t03_obj_id
C - - - - - 0x014448 05:A438: C9 0C     CMP #$0C
C - - - - - 0x01444A 05:A43A: 90 02     BCC bra_A43E
C - - - - - 0x01444C 05:A43C: A0 06     LDY #$06
bra_A43E:
C - - - - - 0x01444E 05:A43E: B9 80 92  LDA tbl_0x01B28C_positions + $04,Y
C - - - - - 0x014451 05:A441: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014454 05:A444: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x014456 05:A446: B9 81 92  LDA tbl_0x01B28C_positions + $05,Y
C - - - - - 0x014459 05:A449: 7D 98 04  ADC ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01445C 05:A44C: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x01445E 05:A44E: 60        RTS



sub_A44F:
C - - - - - 0x01445F 05:A44F: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x014462 05:A452: 10 09     BPL bra_A45D
C - - - - - 0x014464 05:A454: 8A        TXA
C - - - - - 0x014465 05:A455: F0 23     BEQ bra_A47A_RTS
C - - - - - 0x014467 05:A457: 20 34 A4  JSR sub_A434
C - - - - - 0x01446A 05:A45A: 4C 67 A4  JMP loc_A467
bra_A45D:
C - - - - - 0x01446D 05:A45D: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014470 05:A460: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x014472 05:A462: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x014475 05:A465: 85 BA     STA ram_00BA_pos_Y_hi
loc_A467:
C D 1 - - - 0x014477 05:A467: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01447A 05:A46A: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x01447C 05:A46C: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01447F 05:A46F: 85 B8     STA ram_00B8_pos_X_hi
loc_A471:
C D 1 - - - 0x014481 05:A471: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x014484 05:A474: A6 79     LDX ram_0079_obj_index
C - - - - - 0x014486 05:A476: A5 BC     LDA ram_00BC
C - - - - - 0x014488 05:A478: 29 03     AND #$03
bra_A47A_RTS:
C - - - - - 0x01448A 05:A47A: 60        RTS



sub_A47B:
C - - - - - 0x01448B 05:A47B: A9 0D     LDA #con_prg_bank + $0D
C - - - - - 0x01448D 05:A47D: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01448F 05:A47F: 4C 9E FF  JMP loc_0x01FFAE_prg_bankswitch_8000



sub_A482:
C - - - - - 0x014492 05:A482: A2 00     LDX #$00
C - - - - - 0x014494 05:A484: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x014497 05:A487: C9 A0     CMP #$A0
C - - - - - 0x014499 05:A489: B0 01     BCS bra_A48C
C - - - - - 0x01449B 05:A48B: E8        INX ; 01
bra_A48C:
C - - - - - 0x01449C 05:A48C: 8E 16 05  STX ram_0516_t03_flag
C - - - - - 0x01449F 05:A48F: 60        RTS



ofs_097_A490_00:
C - - - - - 0x0144A0 05:A490: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x0144A3 05:A493: 30 2F     BMI bra_A4C4
C - - - - - 0x0144A5 05:A495: D0 10     BNE bra_A4A7
C - - - - - 0x0144A7 05:A497: 20 5A 98  JSR sub_0x01B86A
C - - - - - 0x0144AA 05:A49A: 20 FF A7  JSR sub_A7FF
C - - - - - 0x0144AD 05:A49D: A9 03     LDA #$03
C - - - - - 0x0144AF 05:A49F: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0144B2 05:A4A2: EE 7A 04  INC ram_047A_t02
C - - - - - 0x0144B5 05:A4A5: D0 1C     BNE bra_A4C3_RTS
bra_A4A7:
C - - - - - 0x0144B7 05:A4A7: C9 01     CMP #$01
C - - - - - 0x0144B9 05:A4A9: D0 0D     BNE bra_A4B8
C - - - - - 0x0144BB 05:A4AB: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x0144BE 05:A4AE: D0 13     BNE bra_A4C3_RTS
C - - - - - 0x0144C0 05:A4B0: 20 04 A8  JSR sub_A804
C - - - - - 0x0144C3 05:A4B3: EE 7A 04  INC ram_047A_t02
C - - - - - 0x0144C6 05:A4B6: D0 0B     BNE bra_A4C3_RTS
bra_A4B8:
C - - - - - 0x0144C8 05:A4B8: 20 85 A7  JSR sub_A785
C - - - - - 0x0144CB 05:A4BB: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0144CE 05:A4BE: F0 03     BEQ bra_A4C3_RTS
; bzk optimize, JMP
C - - - - - 0x0144D0 05:A4C0: 20 B7 9E  JSR sub_0x01BEC7
bra_A4C3_RTS:
C - - - - - 0x0144D3 05:A4C3: 60        RTS
bra_A4C4:
C - - - - - 0x0144D4 05:A4C4: 20 5C 9C  JSR sub_0x01BC6C    ; possible PLA PLA
C - - - - - 0x0144D7 05:A4C7: AD 87 04  LDA ram_0487_t02
C - - - - - 0x0144DA 05:A4CA: F0 13     BEQ bra_A4DF
C - - - - - 0x0144DC 05:A4CC: A2 02     LDX #$02
C - - - - - 0x0144DE 05:A4CE: A5 14     LDA ram_frm_cnt
C - - - - - 0x0144E0 05:A4D0: 4A        LSR
C - - - - - 0x0144E1 05:A4D1: 90 57     BCC bra_A52A
C - - - - - 0x0144E3 05:A4D3: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
C - - - - - 0x0144E6 05:A4D6: CD 6D 04  CMP ram_046D_t02
C - - - - - 0x0144E9 05:A4D9: 90 04     BCC bra_A4DF
C - - - - - 0x0144EB 05:A4DB: A2 07     LDX #$07
C - - - - - 0x0144ED 05:A4DD: D0 4B     BNE bra_A52A    ; jmp
bra_A4DF:
C - - - - - 0x0144EF 05:A4DF: AC F3 04  LDY ram_04F3_obj
C - - - - - 0x0144F2 05:A4E2: B9 EC A4  LDA tbl_A4EB + $01,Y
C - - - - - 0x0144F5 05:A4E5: 48        PHA
C - - - - - 0x0144F6 05:A4E6: B9 EB A4  LDA tbl_A4EB,Y
C - - - - - 0x0144F9 05:A4E9: 48        PHA
C - - - - - 0x0144FA 05:A4EA: 60        RTS



tbl_A4EB:
- D 1 - - - 0x0144FB 05:A4EB: F2 A4     .word ofs_106_A4F3_00 - $01
- D 1 - - - 0x0144FD 05:A4ED: F9 A4     .word ofs_106_A4FA_02 - $01
- - - - - - 0x0144FF 05:A4EF: 0F A5     .word ofs_106_A510_04 - $01
- - - - - - 0x014501 05:A4F1: 16 A5     .word ofs_106_A517_06 - $01



ofs_106_A4F3_00:
C - - - - - 0x014503 05:A4F3: A2 01     LDX #$01
; bzk optimize, always 00
C - - - - - 0x014505 05:A4F5: AD E2 04  LDA ram_04E2_tFE_useless_00
C - - - - - 0x014508 05:A4F8: D0 30     BNE bra_A52A
ofs_106_A4FA_02:
C - - - - - 0x01450A 05:A4FA: A2 02     LDX #$02
C - - - - - 0x01450C 05:A4FC: A0 00     LDY #$00
C - - - - - 0x01450E 05:A4FE: 20 38 97  JSR sub_0x01B748_damage
C - - - - - 0x014511 05:A501: F0 27     BEQ bra_A52A
C - - - - - 0x014513 05:A503: E8        INX ; 03
C - - - - - 0x014514 05:A504: A0 02     LDY #$02
C - - - - - 0x014516 05:A506: 20 38 97  JSR sub_0x01B748_damage
C - - - - - 0x014519 05:A509: 30 05     BMI bra_A510
C - - - - - 0x01451B 05:A50B: AD 23 05  LDA ram_0523_t02
C - - - - - 0x01451E 05:A50E: F0 1A     BEQ bra_A52A
bra_A510:
ofs_106_A510_04:
C - - - - - 0x014520 05:A510: A2 04     LDX #$04
C - - - - - 0x014522 05:A512: AD 30 05  LDA ram_0530_t02_flag
C - - - - - 0x014525 05:A515: D0 13     BNE bra_A52A
ofs_106_A517_06:
C - - - - - 0x014527 05:A517: A2 08     LDX #$08
C - - - - - 0x014529 05:A519: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
C - - - - - 0x01452C 05:A51C: CD 6D 04  CMP ram_046D_t02
C - - - - - 0x01452F 05:A51F: 90 09     BCC bra_A52A
C - - - - - 0x014531 05:A521: A2 05     LDX #$05
C - - - - - 0x014533 05:A523: 20 7A 97  JSR sub_0x01B78A
C - - - - - 0x014536 05:A526: D0 02     BNE bra_A52A
C - - - - - 0x014538 05:A528: A2 01     LDX #$01
bra_A52A:
C - - - - - 0x01453A 05:A52A: 8A        TXA
C - - - - - 0x01453B 05:A52B: A8        TAY
C - - - - - 0x01453C 05:A52C: A6 79     LDX ram_0079_obj_index
C - - - - - 0x01453E 05:A52E: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x014541 05:A531: B9 3A A5  LDA tbl_A53A,Y
C - - - - - 0x014544 05:A534: 20 15 9B  JSR sub_0x01BB25
loc_A537:   ; bzk optimize
C D 1 - - - 0x014547 05:A537: 4C 9E 9C  JMP loc_0x01BCAE



tbl_A53A:
- - - - - - 0x01454A 05:A53A: 00        .byte $00   ; 00 
- D 1 - - - 0x01454B 05:A53B: 04        .byte $04   ; 01 
- D 1 - - - 0x01454C 05:A53C: 0C        .byte $0C   ; 02 
- D 1 - - - 0x01454D 05:A53D: 00        .byte $00   ; 03 
- D 1 - - - 0x01454E 05:A53E: 0C        .byte $0C   ; 04 
- D 1 - - - 0x01454F 05:A53F: 08        .byte $08   ; 05 
- D 1 - - - 0x014550 05:A540: 0A        .byte $0A   ; 06 
- D 1 - - - 0x014551 05:A541: 02        .byte $02   ; 07 
- D 1 - - - 0x014552 05:A542: 0C        .byte $0C   ; 08 



ofs_097_A543_01:
C - - - - - 0x014553 05:A543: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x014556 05:A546: AD 16 05  LDA ram_0516_t03_flag
C - - - - - 0x014559 05:A549: 4C B0 A7  JMP loc_A7B0



tbl_A54C:
- D 1 - - - 0x01455C 05:A54C: 15 A8     .word ofs_084_A816_00 - $01
- D 1 - - - 0x01455E 05:A54E: 18 A8     .word ofs_084_A819_01 - $01
- D 1 - - - 0x014560 05:A550: 71 A5     .word ofs_084_A572_02 - $01
- D 1 - - - 0x014562 05:A552: 7E A5     .word ofs_084_A57F_03 - $01
- D 1 - - - 0x014564 05:A554: 8C A5     .word ofs_084_A58D_04 - $01
- D 1 - - - 0x014566 05:A556: 92 A5     .word ofs_084_A593_05 - $01
- D 1 - - - 0x014568 05:A558: 21 A8     .word ofs_084_A822_06 - $01



ofs_097_A55A_02:
C - - - - - 0x01456A 05:A55A: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x01456D 05:A55D: F0 07     BEQ bra_A566
C - - - - - 0x01456F 05:A55F: C9 06     CMP #$06
C - - - - - 0x014571 05:A561: F0 03     BEQ bra_A566
C - - - - - 0x014573 05:A563: 20 F1 A7  JSR sub_A7F1
bra_A566:
C - - - - - 0x014576 05:A566: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014579 05:A569: B9 4D A5  LDA tbl_A54C + $01,Y
C - - - - - 0x01457C 05:A56C: 48        PHA
C - - - - - 0x01457D 05:A56D: B9 4C A5  LDA tbl_A54C,Y
C - - - - - 0x014580 05:A570: 48        PHA
bra_A571_RTS:
C - - - - - 0x014581 05:A571: 60        RTS



ofs_084_A572_02:
C - - - - - 0x014582 05:A572: 20 62 97  JSR sub_0x01B772
C - - - - - 0x014585 05:A575: D0 0E     BNE bra_A585
C - - - - - 0x014587 05:A577: 20 BE 97  JSR sub_0x01B7CE
C - - - - - 0x01458A 05:A57A: 90 F5     BCC bra_A571_RTS
C - - - - - 0x01458C 05:A57C: 4C 1C A8  JMP loc_A81C



ofs_084_A57F_03:
C - - - - - 0x01458F 05:A57F: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014592 05:A582: 20 27 BB  JSR sub_BB27
bra_A585:
C - - - - - 0x014595 05:A585: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014598 05:A588: A9 60     LDA #$60
C - - - - - 0x01459A 05:A58A: 20 1F 9C  JSR sub_0x01BC2F
ofs_084_A58D_04:
C - - - - - 0x01459D 05:A58D: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
C - - - - - 0x0145A0 05:A590: FE 83 05  INC ram_0583_obj,X
ofs_084_A593_05:
ofs_086_A593_05:
C - - - - - 0x0145A3 05:A593: 20 89 98  JSR sub_0x01B899
C - - - - - 0x0145A6 05:A596: 4C 0C A8  JMP loc_A80C



tbl_A599:
- D 1 - - - 0x0145A9 05:A599: AC A5     .word ofs_085_A5AD_00 - $01
- D 1 - - - 0x0145AB 05:A59B: D3 A5     .word ofs_085_A5D4_01 - $01
- D 1 - - - 0x0145AD 05:A59D: D6 A5     .word ofs_085_A5D7_02 - $01
- D 1 - - - 0x0145AF 05:A59F: E1 A5     .word ofs_085_A5E2_03 - $01
- - - - - - 0x0145B1 05:A5A1: EC A5     .word ofs_085_A5ED_04 - $01
- D 1 - - - 0x0145B3 05:A5A3: F7 A5     .word ofs_085_A5F8_05 - $01
- D 1 - - - 0x0145B5 05:A5A5: 0A A6     .word ofs_085_A60B_06 - $01
- D 1 - - - 0x0145B7 05:A5A7: 15 A6     .word ofs_085_A616_07 - $01
- D 1 - - - 0x0145B9 05:A5A9: 24 A6     .word ofs_085_A625_08 - $01
- D 1 - - - 0x0145BB 05:A5AB: 2A A6     .word ofs_085_A62B_09 - $01



ofs_085_A5AD_00:
C - - - - - 0x0145BD 05:A5AD: A9 00     LDA #$00
C - - - - - 0x0145BF 05:A5AF: BC 64 04  LDY ram_pos_X_lo_obj + $03,X
C - - - - - 0x0145C2 05:A5B2: C0 44     CPY #$44
C - - - - - 0x0145C4 05:A5B4: B0 02     BCS bra_A5B8
C - - - - - 0x0145C6 05:A5B6: A9 80     LDA #$80
bra_A5B8:
C - - - - - 0x0145C8 05:A5B8: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x0145CB 05:A5BB: A9 44     LDA #$44
C - - - - - 0x0145CD 05:A5BD: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x0145D0 05:A5C0: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x0145D3 05:A5C3: A9 0C     LDA #$0C
C - - - - - 0x0145D5 05:A5C5: 4C 2C 9B  JMP loc_0x01BB3C



ofs_097_A5C8_03:
C - - - - - 0x0145D8 05:A5C8: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0145DB 05:A5CB: B9 9A A5  LDA tbl_A599 + $01,Y
C - - - - - 0x0145DE 05:A5CE: 48        PHA
C - - - - - 0x0145DF 05:A5CF: B9 99 A5  LDA tbl_A599,Y
C - - - - - 0x0145E2 05:A5D2: 48        PHA
C - - - - - 0x0145E3 05:A5D3: 60        RTS



ofs_085_A5D4_01:
C - - - - - 0x0145E4 05:A5D4: 20 3B 98  JSR sub_0x01B84B
ofs_085_A5D7_02:
C - - - - - 0x0145E7 05:A5D7: 20 26 98  JSR sub_0x01B836
C - - - - - 0x0145EA 05:A5DA: B0 03     BCS bra_A5DF
C - - - - - 0x0145EC 05:A5DC: 20 6C 98  JSR sub_0x01B87C
bra_A5DF:
C - - - - - 0x0145EF 05:A5DF: 20 1C A8  JSR sub_A81C
ofs_085_A5E2_03:
C - - - - - 0x0145F2 05:A5E2: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
C - - - - - 0x0145F5 05:A5E5: A9 44     LDA #$44
C - - - - - 0x0145F7 05:A5E7: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x0145FA 05:A5EA: FE 83 05  INC ram_0583_obj,X
ofs_085_A5ED_04:
C - - - - - 0x0145FD 05:A5ED: 20 26 98  JSR sub_0x01B836
C - - - - - 0x014600 05:A5F0: B0 03     BCS bra_A5F5
- - - - - - 0x014602 05:A5F2: 20 83 98  JSR sub_0x01B893
bra_A5F5:
C - - - - - 0x014605 05:A5F5: 20 09 A8  JSR sub_A809
ofs_085_A5F8_05:
C - - - - - 0x014608 05:A5F8: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x01460B 05:A5FB: A9 80     LDA #$80
C - - - - - 0x01460D 05:A5FD: 9D 41 05  STA ram_0541_obj_flags,X
loc_A600:
C D 1 - - - 0x014610 05:A600: A9 00     LDA #$00
C - - - - - 0x014612 05:A602: 20 2C 9B  JSR sub_0x01BB3C
C - - - - - 0x014615 05:A605: A9 20     LDA #$20
C - - - - - 0x014617 05:A607: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x01461A 05:A60A: 60        RTS



ofs_085_A60B_06:
C - - - - - 0x01461B 05:A60B: 20 03 99  JSR sub_0x01B913
C - - - - - 0x01461E 05:A60E: A9 08     LDA #$08
C - - - - - 0x014620 05:A610: 20 2C 9B  JSR sub_0x01BB3C
C - - - - - 0x014623 05:A613: 20 8C 9E  JSR sub_0x01BE9C
ofs_085_A616_07:
C - - - - - 0x014626 05:A616: 20 F3 98  JSR sub_0x01B903
; bzk optimize, useless INC?
C - - - - - 0x014629 05:A619: EE 23 05  INC ram_0523_t02
; 
C - - - - - 0x01462C 05:A61C: A9 80     LDA #$80
C - - - - - 0x01462E 05:A61E: 85 E7     STA ram_00E7_flag
C - - - - - 0x014630 05:A620: A9 16     LDA #con_sfx_toggle_switch
C - - - - - 0x014632 05:A622: 20 87 9E  JSR sub_0x01BE97_play_sound
ofs_085_A625_08:
C - - - - - 0x014635 05:A625: 20 03 99  JSR sub_0x01B913
C - - - - - 0x014638 05:A628: 4C 00 A6  JMP loc_A600



ofs_085_A62B_09:
C - - - - - 0x01463B 05:A62B: 20 03 99  JSR sub_0x01B913
C - - - - - 0x01463E 05:A62E: 20 11 A8  JSR sub_A811
C - - - - - 0x014641 05:A631: A9 08     LDA #$08
C - - - - - 0x014643 05:A633: AC 30 05  LDY ram_0530_t02_flag
C - - - - - 0x014646 05:A636: F0 02     BEQ bra_A63A
loc_A638:
- - - - - - 0x014648 05:A638: A9 04     LDA #$04
bra_A63A:
C - - - - - 0x01464A 05:A63A: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01464D 05:A63D: 4C 37 A5  JMP loc_A537



tbl_A640:
- D 1 - - - 0x014650 05:A640: 15 A8     .word ofs_086_A816_00 - $01
- - - - - - 0x014652 05:A642: 18 A8     .word ofs_086_A819_01 - $01
- - - - - - 0x014654 05:A644: 63 A6     .word ofs_086_A664_02 - $01
- - - - - - 0x014656 05:A646: 78 A6     .word ofs_086_A679_03 - $01
- - - - - - 0x014658 05:A648: 80 A6     .word ofs_086_A681_04 - $01
- - - - - - 0x01465A 05:A64A: 92 A5     .word ofs_086_A593_05 - $01
- - - - - - 0x01465C 05:A64C: 21 A8     .word ofs_086_A822_06 - $01



ofs_097_A64E_04:
C - - - - - 0x01465E 05:A64E: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014661 05:A651: C9 06     CMP #$06
C - - - - - 0x014663 05:A653: F0 03     BEQ bra_A658
C - - - - - 0x014665 05:A655: 20 F1 A7  JSR sub_A7F1
bra_A658:
C - - - - - 0x014668 05:A658: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x01466B 05:A65B: B9 41 A6  LDA tbl_A640 + $01,Y
C - - - - - 0x01466E 05:A65E: 48        PHA
C - - - - - 0x01466F 05:A65F: B9 40 A6  LDA tbl_A640,Y
C - - - - - 0x014672 05:A662: 48        PHA
C - - - - - 0x014673 05:A663: 60        RTS



ofs_086_A664_02:
- - - - - - 0x014674 05:A664: 20 EB 98  JSR sub_0x01B8FB
- - - - - - 0x014677 05:A667: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
- - - - - - 0x01467A 05:A66A: A9 50     LDA #$50
- - - - - - 0x01467C 05:A66C: 20 1F 9C  JSR sub_0x01BC2F
- - - - - - 0x01467F 05:A66F: AD 16 05  LDA ram_0516_t04    ; ??? bzk not sure since it wasn't logged
- - - - - - 0x014682 05:A672: 9D 4E 05  STA ram_054E_obj,X
bra_A675:
; bzk optimize, JMP
- - - - - - 0x014685 05:A675: 20 87 A6  JSR sub_A687
- - - - - - 0x014688 05:A678: 60        RTS



ofs_086_A679_03:
- - - - - - 0x014689 05:A679: 20 EB 98  JSR sub_0x01B8FB
- - - - - - 0x01468C 05:A67C: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
- - - - - - 0x01468F 05:A67F: D0 F4     BNE bra_A675
ofs_086_A681_04:
- - - - - - 0x014691 05:A681: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
- - - - - - 0x014694 05:A684: FE 83 05  INC ram_0583_obj,X
sub_A687:
- - - - - - 0x014697 05:A687: BD 4E 05  LDA ram_054E_obj,X
- - - - - - 0x01469A 05:A68A: F0 03     BEQ bra_A68F
- - - - - - 0x01469C 05:A68C: 4C 2F BB  JMP loc_BB2F
bra_A68F:
- - - - - - 0x01469F 05:A68F: 4C 27 BB  JMP loc_BB27



ofs_097_A692_05:
C - - - - - 0x0146A2 05:A692: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x0146A5 05:A695: C9 02     CMP #$02
C - - - - - 0x0146A7 05:A697: D0 0E     BNE bra_A6A7
C - - - - - 0x0146A9 05:A699: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x0146AC 05:A69C: FE E6 04  INC ram_04E6_obj_anim_timer,X
C - - - - - 0x0146AF 05:A69F: A9 00     LDA #$00
C - - - - - 0x0146B1 05:A6A1: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0146B4 05:A6A4: 4C 37 A5  JMP loc_A537
bra_A6A7:
C - - - - - 0x0146B7 05:A6A7: 20 F3 98  JSR sub_0x01B903
C - - - - - 0x0146BA 05:A6AA: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x0146BD 05:A6AD: C9 01     CMP #$01
C - - - - - 0x0146BF 05:A6AF: D0 0B     BNE bra_A6BC
C - - - - - 0x0146C1 05:A6B1: EE 94 04  INC ram_0494_t02
C - - - - - 0x0146C4 05:A6B4: A0 48     LDY #$48
C - - - - - 0x0146C6 05:A6B6: 20 8A B9  JSR sub_B98A
C - - - - - 0x0146C9 05:A6B9: 4C 8C 9E  JMP loc_0x01BE9C
bra_A6BC:
C - - - - - 0x0146CC 05:A6BC: CE 94 04  DEC ram_0494_t02
C - - - - - 0x0146CF 05:A6BF: 60        RTS



tbl_A6C0:
- D 1 - - - 0x0146D0 05:A6C0: DB A6     .word ofs_087_A6DC_00 - $01
- D 1 - - - 0x0146D2 05:A6C2: E4 A6     .word ofs_087_A6E5_01 - $01
- D 1 - - - 0x0146D4 05:A6C4: FE A6     .word ofs_087_A6FF_02 - $01
- D 1 - - - 0x0146D6 05:A6C6: CB A6     .word ofs_087_A6CC_03 - $01
- D 1 - - - 0x0146D8 05:A6C8: 09 A7     .word ofs_087_A70A_04 - $01
- D 1 - - - 0x0146DA 05:A6CA: 21 A7     .word ofs_087_A722_05 - $01



ofs_087_A6CC_03:
ofs_089_A6CC_02:
; bzk optimize, JMP
C - - - - - 0x0146DC 05:A6CC: 20 89 98  JSR sub_0x01B899
C - - - - - 0x0146DF 05:A6CF: 60        RTS



ofs_097_A6D0_06:
C - - - - - 0x0146E0 05:A6D0: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0146E3 05:A6D3: B9 C1 A6  LDA tbl_A6C0 + $01,Y
C - - - - - 0x0146E6 05:A6D6: 48        PHA
C - - - - - 0x0146E7 05:A6D7: B9 C0 A6  LDA tbl_A6C0,Y
C - - - - - 0x0146EA 05:A6DA: 48        PHA
C - - - - - 0x0146EB 05:A6DB: 60        RTS



ofs_087_A6DC_00:
C - - - - - 0x0146EC 05:A6DC: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x0146EF 05:A6DF: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x0146F2 05:A6E2: 20 37 BB  JSR sub_BB37
ofs_087_A6E5_01:
C - - - - - 0x0146F5 05:A6E5: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x0146F8 05:A6E8: 20 11 A8  JSR sub_A811
C - - - - - 0x0146FB 05:A6EB: AD 30 05  LDA ram_0530_t02_flag
C - - - - - 0x0146FE 05:A6EE: F0 03     BEQ bra_A6F3
- - - - - - 0x014700 05:A6F0: 4C 38 A6  JMP loc_A638
bra_A6F3:
C - - - - - 0x014703 05:A6F3: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014706 05:A6F6: 18        CLC
C - - - - - 0x014707 05:A6F7: 69 81     ADC #$81
C - - - - - 0x014709 05:A6F9: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01470C 05:A6FC: 20 E3 9D  JSR sub_0x01BDF3
ofs_087_A6FF_02:
ofs_089_A6FF_01:
C - - - - - 0x01470F 05:A6FF: 20 72 98  JSR sub_0x01B882
C - - - - - 0x014712 05:A702: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x014715 05:A705: A9 8E     LDA #$8E
C - - - - - 0x014717 05:A707: 4C 2C 9B  JMP loc_0x01BB3C



ofs_087_A70A_04:
C - - - - - 0x01471A 05:A70A: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x01471D 05:A70D: A9 02     LDA #$02
C - - - - - 0x01471F 05:A70F: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x014722 05:A712: A9 03     LDA #$03
C - - - - - 0x014724 05:A714: 90 02     BCC bra_A718
- - - - - - 0x014726 05:A716: A9 01     LDA #$01
bra_A718:
C - - - - - 0x014728 05:A718: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01472B 05:A71B: A9 40     LDA #$40
C - - - - - 0x01472D 05:A71D: 20 11 98  JSR sub_0x01B821
C - - - - - 0x014730 05:A720: B0 03     BCS bra_A725
ofs_087_A722_05:
C - - - - - 0x014732 05:A722: 20 0A 99  JSR sub_0x01B91A
bra_A725:
C - - - - - 0x014735 05:A725: 4C B2 A7  JMP loc_A7B2



tbl_A728:
- D 1 - - - 0x014738 05:A728: 3F A7     .word ofs_088_A740_00 - $01
- D 1 - - - 0x01473A 05:A72A: 5E A7     .word ofs_088_A75F_01 - $01
- D 1 - - - 0x01473C 05:A72C: 5E A7     .word ofs_088_A75F_02 - $01
- D 1 - - - 0x01473E 05:A72E: 67 A7     .word ofs_088_A768_03 - $01
- D 1 - - - 0x014740 05:A730: 78 A7     .word ofs_088_A779_04 - $01
- D 1 - - - 0x014742 05:A732: 84 A7     .word ofs_088_A785_05 - $01



ofs_097_A734_07:
C - - - - - 0x014744 05:A734: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014747 05:A737: B9 29 A7  LDA tbl_A728 + $01,Y
C - - - - - 0x01474A 05:A73A: 48        PHA
C - - - - - 0x01474B 05:A73B: B9 28 A7  LDA tbl_A728,Y
C - - - - - 0x01474E 05:A73E: 48        PHA
bra_A73F_RTS:
C - - - - - 0x01474F 05:A73F: 60        RTS



ofs_088_A740_00:
C - - - - - 0x014750 05:A740: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014753 05:A743: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x014756 05:A746: 10 F7     BPL bra_A73F_RTS
C - - - - - 0x014758 05:A748: AD 87 04  LDA ram_0487_t02
C - - - - - 0x01475B 05:A74B: D0 0A     BNE bra_A757
C - - - - - 0x01475D 05:A74D: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x014760 05:A750: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x014763 05:A753: C9 02     CMP #$02
C - - - - - 0x014765 05:A755: D0 E8     BNE bra_A73F_RTS
bra_A757:
C - - - - - 0x014767 05:A757: A9 06     LDA #$06
C - - - - - 0x014769 05:A759: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x01476C 05:A75C: FE F3 04  INC ram_04F3_obj,X
ofs_088_A75F_01:
ofs_088_A75F_02:
C - - - - - 0x01476F 05:A75F: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014772 05:A762: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014775 05:A765: 4C 3B BB  JMP loc_BB3B



ofs_088_A768_03:
C - - - - - 0x014778 05:A768: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01477B 05:A76B: AC 87 04  LDY ram_0487_t02
C - - - - - 0x01477E 05:A76E: A9 00     LDA #$00
C - - - - - 0x014780 05:A770: 8D 87 04  STA ram_0487_t02
C - - - - - 0x014783 05:A773: 98        TYA
C - - - - - 0x014784 05:A774: D0 C9     BNE bra_A73F_RTS
C - - - - - 0x014786 05:A776: 4C A5 98  JMP loc_0x01B8B5



ofs_088_A779_04:
C - - - - - 0x014789 05:A779: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x01478C 05:A77C: 20 DA 98  JSR sub_0x01B8EA
C - - - - - 0x01478F 05:A77F: 20 37 BB  JSR sub_BB37
C - - - - - 0x014792 05:A782: 4C 8E A7  JMP loc_A78E



sub_A785:
ofs_088_A785_05:
C - - - - - 0x014795 05:A785: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014798 05:A788: 20 DA 98  JSR sub_0x01B8EA
C - - - - - 0x01479B 05:A78B: 20 3B BB  JSR sub_BB3B
loc_A78E:
C D 1 - - - 0x01479E 05:A78E: A9 09     LDA #$09
C - - - - - 0x0147A0 05:A790: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0147A3 05:A793: 60        RTS



ofs_097_A794_08:
C - - - - - 0x0147A4 05:A794: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0147A7 05:A797: B9 A1 A7  LDA tbl_A7A0 + $01,Y
C - - - - - 0x0147AA 05:A79A: 48        PHA
C - - - - - 0x0147AB 05:A79B: B9 A0 A7  LDA tbl_A7A0,Y
C - - - - - 0x0147AE 05:A79E: 48        PHA
C - - - - - 0x0147AF 05:A79F: 60        RTS



tbl_A7A0:
- D 1 - - - 0x0147B0 05:A7A0: A7 A7     .word ofs_089_A7A8_00 - $01
- D 1 - - - 0x0147B2 05:A7A2: FE A6     .word ofs_089_A6FF_01 - $01
- D 1 - - - 0x0147B4 05:A7A4: CB A6     .word ofs_089_A6CC_02 - $01
- D 1 - - - 0x0147B6 05:A7A6: 21 A8     .word ofs_089_A822_03 - $01



ofs_089_A7A8_00:
C - - - - - 0x0147B8 05:A7A8: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x0147BB 05:A7AB: 4C 72 9E  JMP loc_0x01BE82



ofs_097_A7AE_09:
C - - - - - 0x0147BE 05:A7AE: A5 CB     LDA ram_00CB_t01
loc_A7B0:
; in
    ; Z
        ; 0 = 
        ; 1 = 
C D 1 - - - 0x0147C0 05:A7B0: D0 0D     BNE bra_A7BF_RTS
loc_A7B2:
sub_A7B2:
C D 1 - - - 0x0147C2 05:A7B2: A9 00     LDA #$00
loc_A7B4:
C D 1 - - - 0x0147C4 05:A7B4: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x0147C7 05:A7B7: A9 00     LDA #$00
C - - - - - 0x0147C9 05:A7B9: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0147CC 05:A7BC: 4C FF A7  JMP loc_A7FF
bra_A7BF_RTS:
C - - - - - 0x0147CF 05:A7BF: 60        RTS



tbl_A7C0:
- D 1 - - - 0x0147D0 05:A7C0: A8 9D     .word ofs_090_0x01BDB9_00 - $01
- D 1 - - - 0x0147D2 05:A7C2: B9 9D     .word ofs_090_0x01BDCA_01 - $01
- D 1 - - - 0x0147D4 05:A7C4: D1 A7     .word ofs_090_A7D2_02 - $01



ofs_097_A7C6_0A:
C - - - - - 0x0147D6 05:A7C6: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0147D9 05:A7C9: B9 C1 A7  LDA tbl_A7C0 + $01,Y
C - - - - - 0x0147DC 05:A7CC: 48        PHA
C - - - - - 0x0147DD 05:A7CD: B9 C0 A7  LDA tbl_A7C0,Y
C - - - - - 0x0147E0 05:A7D0: 48        PHA
C - - - - - 0x0147E1 05:A7D1: 60        RTS



ofs_090_A7D2_02:
C - - - - - 0x0147E2 05:A7D2: 20 B2 A7  JSR sub_A7B2
C - - - - - 0x0147E5 05:A7D5: EE 87 04  INC ram_0487_t02
C - - - - - 0x0147E8 05:A7D8: 4C AC 9E  JMP loc_0x01BEBC



tbl_A7DB:
- D 1 - - - 0x0147EB 05:A7DB: A8 9D     .word ofs_091_0x01BDB9_00 - $01
- D 1 - - - 0x0147ED 05:A7DD: B9 9D     .word ofs_091_0x01BDCA_01 - $01
- D 1 - - - 0x0147EF 05:A7DF: C1 9D     .word ofs_091_0x01BDD2_02 - $01
- D 1 - - - 0x0147F1 05:A7E1: D7 9D     .word ofs_091_0x01BDE8_03 - $01
- D 1 - - - 0x0147F3 05:A7E3: 74 9D     .word ofs_091_0x01BD85_04 - $01



ofs_097_A7E5_0B:
C - - - - - 0x0147F5 05:A7E5: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0147F8 05:A7E8: B9 DC A7  LDA tbl_A7DB + $01,Y
C - - - - - 0x0147FB 05:A7EB: 48        PHA
C - - - - - 0x0147FC 05:A7EC: B9 DB A7  LDA tbl_A7DB,Y
C - - - - - 0x0147FF 05:A7EF: 48        PHA
C - - - - - 0x014800 05:A7F0: 60        RTS



sub_A7F1:
C - - - - - 0x014801 05:A7F1: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x014804 05:A7F4: 90 08     BCC bra_A7FE_RTS
C - - - - - 0x014806 05:A7F6: A9 06     LDA #$06
C - - - - - 0x014808 05:A7F8: 9D F3 04  STA ram_04F3_obj,X
; bzk optimize, JMP
C - - - - - 0x01480B 05:A7FB: 20 0C A8  JSR sub_A80C
bra_A7FE_RTS:
C - - - - - 0x01480E 05:A7FE: 60        RTS



sub_A7FF:
loc_A7FF:
C D 1 - - - 0x01480F 05:A7FF: A9 00     LDA #$00
C - - - - - 0x014811 05:A801: 4C 15 9B  JMP loc_0x01BB25



sub_A804:
C - - - - - 0x014814 05:A804: A9 06     LDA #$06
C - - - - - 0x014816 05:A806: 4C 15 9B  JMP loc_0x01BB25



sub_A809:
C - - - - - 0x014819 05:A809: FE F3 04  INC ram_04F3_obj,X
loc_A80C:
sub_A80C:
C D 1 - - - 0x01481C 05:A80C: A9 0E     LDA #$0E
C - - - - - 0x01481E 05:A80E: 4C 2C 9B  JMP loc_0x01BB3C



sub_A811:
C - - - - - 0x014821 05:A811: A9 0C     LDA #$0C
C - - - - - 0x014823 05:A813: 20 15 9B  JSR sub_0x01BB25



ofs_084_A816_00:
ofs_086_A816_00:
C - - - - - 0x014826 05:A816: 20 3B 98  JSR sub_0x01B84B
ofs_084_A819_01:
ofs_086_A819_01:
C - - - - - 0x014829 05:A819: 20 6C 98  JSR sub_0x01B87C
loc_A81C:
sub_A81C:
C D 1 - - - 0x01482C 05:A81C: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01482F 05:A81F: 4C 6E 9A  JMP loc_0x01BA7E



ofs_084_A822_06:
ofs_086_A822_06:
ofs_089_A822_03:
C - - - - - 0x014832 05:A822: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x014835 05:A825: BC D9 04  LDY ram_04D9_obj,X
C - - - - - 0x014838 05:A828: B9 2E A8  LDA tbl_A82E,Y
C - - - - - 0x01483B 05:A82B: 4C B4 A7  JMP loc_A7B4



tbl_A82E:
- - - - - - 0x01483E 05:A82E: 00        .byte $00   ; 00 
- - - - - - 0x01483F 05:A82F: 00        .byte $00   ; 01 
- D 1 - - - 0x014840 05:A830: 02        .byte $02   ; 02 
- - - - - - 0x014841 05:A831: 00        .byte $00   ; 03 
- - - - - - 0x014842 05:A832: 06        .byte $06   ; 04 
- - - - - - 0x014843 05:A833: 00        .byte $00   ; 05 
- - - - - - 0x014844 05:A834: 00        .byte $00   ; 06 
- - - - - - 0x014845 05:A835: 00        .byte $00   ; 07 
- D 1 - - - 0x014846 05:A836: 00        .byte $00   ; 08 



ofs_098_A837_00:
C - - - - - 0x014847 05:A837: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x01484A 05:A83A: 30 0D     BMI bra_A849
C - - - - - 0x01484C 05:A83C: A9 01     LDA #$01
C - - - - - 0x01484E 05:A83E: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x014851 05:A841: A9 03     LDA #$03
C - - - - - 0x014853 05:A843: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014856 05:A846: 4C B7 9E  JMP loc_0x01BEC7
bra_A849:
C - - - - - 0x014859 05:A849: 20 E6 AB  JSR sub_ABE6
C - - - - - 0x01485C 05:A84C: A2 01     LDX #$01
C - - - - - 0x01485E 05:A84E: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x014861 05:A851: C9 83     CMP #$83
C - - - - - 0x014863 05:A853: F0 17     BEQ bra_A86C
C - - - - - 0x014865 05:A855: AD D5 04  LDA ram_04D5_t03
C - - - - - 0x014868 05:A858: C9 04     CMP #$04
C - - - - - 0x01486A 05:A85A: 90 10     BCC bra_A86C
C - - - - - 0x01486C 05:A85C: A9 00     LDA #$00
C - - - - - 0x01486E 05:A85E: 8D D5 04  STA ram_04D5_t03
C - - - - - 0x014871 05:A861: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x014874 05:A864: 29 C0     AND #$C0
C - - - - - 0x014876 05:A866: C9 C0     CMP #$C0
C - - - - - 0x014878 05:A868: F0 02     BEQ bra_A86C
C - - - - - 0x01487A 05:A86A: D0 19     BNE bra_A885    ; jmp
bra_A86C:
C - - - - - 0x01487C 05:A86C: E8        INX ; 01
C - - - - - 0x01487D 05:A86D: AD 16 05  LDA ram_0516_t02
C - - - - - 0x014880 05:A870: D0 13     BNE bra_A885
C - - - - - 0x014882 05:A872: E8        INX ; 02
C - - - - - 0x014883 05:A873: A0 04     LDY #$04
C - - - - - 0x014885 05:A875: 20 38 97  JSR sub_0x01B748_damage
C - - - - - 0x014888 05:A878: F0 0B     BEQ bra_A885
C - - - - - 0x01488A 05:A87A: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01488D 05:A87D: E8        INX ; 03
; / 10
C - - - - - 0x01488E 05:A87E: 4A        LSR
C - - - - - 0x01488F 05:A87F: 4A        LSR
C - - - - - 0x014890 05:A880: 4A        LSR
C - - - - - 0x014891 05:A881: 4A        LSR
; 
C - - - - - 0x014892 05:A882: B0 01     BCS bra_A885
C - - - - - 0x014894 05:A884: E8        INX ; 04
bra_A885:
C - - - - - 0x014895 05:A885: 8A        TXA
C - - - - - 0x014896 05:A886: A6 79     LDX ram_0079_obj_index
bra_A888:
C - - - - - 0x014898 05:A888: 9D D9 04  STA ram_04D9_obj,X
loc_A88B:
C D 1 - - - 0x01489B 05:A88B: 4C A5 9C  JMP loc_0x01BCB5



loc_A88E:
C D 1 - - - 0x01489E 05:A88E: 20 00 9B  JSR sub_0x01BB10
C - - - - - 0x0148A1 05:A891: F0 F5     BEQ bra_A888    ; jmp



tbl_A893:
- D 1 - - - 0x0148A3 05:A893: AA A8     .word ofs_092_A8AB_00 - $01
- D 1 - - - 0x0148A5 05:A895: DC A8     .word ofs_092_A8DD_01 - $01
- D 1 - - - 0x0148A7 05:A897: EF A8     .word ofs_092_A8F0_02 - $01
- D 1 - - - 0x0148A9 05:A899: F5 A8     .word ofs_092_A8F6_03 - $01
- D 1 - - - 0x0148AB 05:A89B: FB A8     .word ofs_092_A8FC_04 - $01
- D 1 - - - 0x0148AD 05:A89D: 07 A9     .word ofs_092_A908_05 - $01



ofs_098_A89F_01:
C - - - - - 0x0148AF 05:A89F: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0148B2 05:A8A2: B9 94 A8  LDA tbl_A893 + $01,Y
C - - - - - 0x0148B5 05:A8A5: 48        PHA
C - - - - - 0x0148B6 05:A8A6: B9 93 A8  LDA tbl_A893,Y
C - - - - - 0x0148B9 05:A8A9: 48        PHA
C - - - - - 0x0148BA 05:A8AA: 60        RTS



ofs_092_A8AB_00:
C - - - - - 0x0148BB 05:A8AB: A9 00     LDA #$00
C - - - - - 0x0148BD 05:A8AD: BC 64 04  LDY ram_pos_X_lo_obj + $03,X
C - - - - - 0x0148C0 05:A8B0: C0 D0     CPY #$D0
C - - - - - 0x0148C2 05:A8B2: F0 2F     BEQ bra_A8E3
C - - - - - 0x0148C4 05:A8B4: B0 02     BCS bra_A8B8
C - - - - - 0x0148C6 05:A8B6: A9 80     LDA #$80
bra_A8B8:
C - - - - - 0x0148C8 05:A8B8: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x0148CB 05:A8BB: A9 D0     LDA #$D0
C - - - - - 0x0148CD 05:A8BD: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x0148D0 05:A8C0: A0 02     LDY #$02
C - - - - - 0x0148D2 05:A8C2: 38        SEC
C - - - - - 0x0148D3 05:A8C3: ED 64 04  SBC ram_pos_X_lo_obj + $03
C - - - - - 0x0148D6 05:A8C6: 10 07     BPL bra_A8CF
C - - - - - 0x0148D8 05:A8C8: 49 FF     EOR #$FF
C - - - - - 0x0148DA 05:A8CA: 18        CLC
C - - - - - 0x0148DB 05:A8CB: 69 01     ADC #$01
C - - - - - 0x0148DD 05:A8CD: A0 FE     LDY #$FE
bra_A8CF:
C - - - - - 0x0148DF 05:A8CF: C9 10     CMP #$10
C - - - - - 0x0148E1 05:A8D1: 90 03     BCC bra_A8D6
C - - - - - 0x0148E3 05:A8D3: 4C A5 AC  JMP loc_ACA5
bra_A8D6:
C - - - - - 0x0148E6 05:A8D6: 98        TYA
C - - - - - 0x0148E7 05:A8D7: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0148EA 05:A8DA: FE F3 04  INC ram_04F3_obj,X
ofs_092_A8DD_01:
C - - - - - 0x0148ED 05:A8DD: 20 B5 AC  JSR sub_ACB5
C - - - - - 0x0148F0 05:A8E0: 20 90 98  JSR sub_0x01B8A0
bra_A8E3:
C - - - - - 0x0148F3 05:A8E3: A9 02     LDA #$02
C - - - - - 0x0148F5 05:A8E5: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x0148F8 05:A8E8: A9 20     LDA #$20
C - - - - - 0x0148FA 05:A8EA: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x0148FD 05:A8ED: 20 7E 9C  JSR sub_0x01BC8E
ofs_092_A8F0_02:
C - - - - - 0x014900 05:A8F0: 20 03 99  JSR sub_0x01B913
C - - - - - 0x014903 05:A8F3: 4C C2 AC  JMP loc_ACC2



ofs_092_A8F6_03:
C - - - - - 0x014906 05:A8F6: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x014909 05:A8F9: 4C CF AC  JMP loc_ACCF



ofs_092_A8FC_04:
C - - - - - 0x01490C 05:A8FC: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01490F 05:A8FF: 18        CLC
C - - - - - 0x014910 05:A900: 69 20     ADC #$20
C - - - - - 0x014912 05:A902: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014915 05:A905: FE F3 04  INC ram_04F3_obj,X
ofs_092_A908_05:
C - - - - - 0x014918 05:A908: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x01491B 05:A90B: 4C 8F AC  JMP loc_AC8F



tbl_A90E:
- - - - - - 0x01491E 05:A90E: 2E A9     .word ofs_107_A92F_00 - $01
- - - - - - 0x014920 05:A910: 4C A9     .word ofs_107_A94D_01 - $01
- - - - - - 0x014922 05:A912: 58 A9     .word ofs_107_A959_02 - $01
- - - - - - 0x014924 05:A914: 73 A9     .word ofs_107_A974_03 - $01
- - - - - - 0x014926 05:A916: 8C A9     .word ofs_107_A98D_04 - $01
- - - - - - 0x014928 05:A918: 9D A9     .word ofs_107_A99E_05 - $01



ofs_098_A91A_02:
- - - - - - 0x01492A 05:A91A: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
- - - - - - 0x01492D 05:A91D: A9 A9     LDA #> (ofs_A92C_return - $01)
- - - - - - 0x01492F 05:A91F: 48        PHA
- - - - - - 0x014930 05:A920: A9 2B     LDA #< (ofs_A92C_return - $01)
- - - - - - 0x014932 05:A922: 48        PHA
- - - - - - 0x014933 05:A923: B9 0F A9  LDA tbl_A90E + $01,Y
- - - - - - 0x014936 05:A926: 48        PHA
- - - - - - 0x014937 05:A927: B9 0E A9  LDA tbl_A90E,Y
- - - - - - 0x01493A 05:A92A: 48        PHA
- - - - - - 0x01493B 05:A92B: 60        RTS



ofs_A92C_return:
; bzk optimize
- - - - - - 0x01493C 05:A92C: 4C F1 AB  JMP loc_ABF1



sub_A92F:
ofs_107_A92F_00:
- - - - - - 0x01493F 05:A92F: A9 02     LDA #$02
- - - - - - 0x014941 05:A931: 9D 83 05  STA ram_0583_obj,X
bra_A934:
- - - - - - 0x014944 05:A934: A9 80     LDA #$80
- - - - - - 0x014946 05:A936: A0 E0     LDY #$E0
bra_A938:
- - - - - - 0x014948 05:A938: 9D 41 05  STA ram_0541_obj_flags,X
- - - - - - 0x01494B 05:A93B: 98        TYA
- - - - - - 0x01494C 05:A93C: 9D 4E 05  STA ram_054E_obj,X
- - - - - - 0x01494F 05:A93F: AD 16 05  LDA ram_0516_t04    ; ??? bzk not sure since it wasn't logged
- - - - - - 0x014952 05:A942: F0 06     BEQ bra_A94A
- - - - - - 0x014954 05:A944: FE F3 04  INC ram_04F3_obj,X
- - - - - - 0x014957 05:A947: 4C 5B AC  JMP loc_AC5B
bra_A94A:
- - - - - - 0x01495A 05:A94A: 4C 8E A8  JMP loc_A88E



ofs_107_A94D_01:
- - - - - - 0x01495D 05:A94D: 20 DF AC  JSR sub_ACDF
- - - - - - 0x014960 05:A950: 20 90 98  JSR sub_0x01B8A0
bra_A953:
- - - - - - 0x014963 05:A953: A9 00     LDA #$00
- - - - - - 0x014965 05:A955: A0 20     LDY #$20
- - - - - - 0x014967 05:A957: D0 DF     BNE bra_A938    ; jmp



ofs_107_A959_02:
- - - - - - 0x014969 05:A959: 20 DF AC  JSR sub_ACDF
- - - - - - 0x01496C 05:A95C: 20 90 98  JSR sub_0x01B8A0
- - - - - - 0x01496F 05:A95F: DE 83 05  DEC ram_0583_obj,X
- - - - - - 0x014972 05:A962: F0 07     BEQ bra_A96B
- - - - - - 0x014974 05:A964: A9 80     LDA #$80
- - - - - - 0x014976 05:A966: 9D F3 04  STA ram_04F3_obj,X
- - - - - - 0x014979 05:A969: D0 C9     BNE bra_A934    ; jmp
bra_A96B:
- - - - - - 0x01497B 05:A96B: 20 2F A9  JSR sub_A92F
- - - - - - 0x01497E 05:A96E: A9 02     LDA #$02
- - - - - - 0x014980 05:A970: 9D 27 05  STA ram_spd_Y_lo_obj,X
- - - - - - 0x014983 05:A973: 60        RTS



ofs_107_A974_03:
- - - - - - 0x014984 05:A974: BD 65 05  LDA ram_0565_obj,X
- - - - - - 0x014987 05:A977: 29 20     AND #$20
- - - - - - 0x014989 05:A979: D0 05     BNE bra_A980
- - - - - - 0x01498B 05:A97B: A9 4C     LDA #$4C
- - - - - - 0x01498D 05:A97D: 20 A9 9B  JSR sub_0x01BBB9
bra_A980:
- - - - - - 0x014990 05:A980: 20 DF AC  JSR sub_ACDF
- - - - - - 0x014993 05:A983: 20 90 98  JSR sub_0x01B8A0
- - - - - - 0x014996 05:A986: A9 80     LDA #$80
- - - - - - 0x014998 05:A988: 9D F3 04  STA ram_04F3_obj,X
- - - - - - 0x01499B 05:A98B: D0 C6     BNE bra_A953    ; jmp



ofs_049_A98D_0A:
ofs_107_A98D_04:
C - - - - - 0x01499D 05:A98D: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x0149A0 05:A990: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x0149A3 05:A993: AD A1 04  LDA ram_04A1_t02
; * 04
C - - - - - 0x0149A6 05:A996: 0A        ASL
C - - - - - 0x0149A7 05:A997: 0A        ASL
; 
C - - - - - 0x0149A8 05:A998: 20 5F B9  JSR sub_B95F
C - - - - - 0x0149AB 05:A99B: 4C 98 9E  JMP loc_0x01BEA8



ofs_049_A99E_0B:
ofs_107_A99E_05:
C - - - - - 0x0149AE 05:A99E: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x0149B1 05:A9A1: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x0149B4 05:A9A4: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x0149B7 05:A9A7: A9 1A     LDA #$1A
C - - - - - 0x0149B9 05:A9A9: 8D A1 04  STA ram_04A1_t02
C - - - - - 0x0149BC 05:A9AC: 60        RTS



tbl_A9AD:
- D 1 - - - 0x0149BD 05:A9AD: CB A9     .word ofs_093_A9CC_00 - $01
- D 1 - - - 0x0149BF 05:A9AF: CE A9     .word ofs_093_A9CF_01 - $01
- D 1 - - - 0x0149C1 05:A9B1: D9 A9     .word ofs_093_A9DA_02 - $01
- D 1 - - - 0x0149C3 05:A9B3: F9 A9     .word ofs_093_A9FA_03 - $01
- D 1 - - - 0x0149C5 05:A9B5: 02 AA     .word ofs_093_AA03_04 - $01



ofs_098_A9B7_03:
C - - - - - 0x0149C7 05:A9B7: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0149CA 05:A9BA: A9 A9     LDA #> (ofs_A9C9_return - $01)
C - - - - - 0x0149CC 05:A9BC: 48        PHA
C - - - - - 0x0149CD 05:A9BD: A9 C8     LDA #< (ofs_A9C9_return - $01)
C - - - - - 0x0149CF 05:A9BF: 48        PHA
C - - - - - 0x0149D0 05:A9C0: B9 AE A9  LDA tbl_A9AD + $01,Y
C - - - - - 0x0149D3 05:A9C3: 48        PHA
C - - - - - 0x0149D4 05:A9C4: B9 AD A9  LDA tbl_A9AD,Y
C - - - - - 0x0149D7 05:A9C7: 48        PHA
bra_A9C8_RTS:
C - - - - - 0x0149D8 05:A9C8: 60        RTS



ofs_A9C9_return:
; bzk optimize
C - - - - - 0x0149D9 05:A9C9: 4C F1 AB  JMP loc_ABF1



ofs_093_A9CC_00:
; bzk optimize
C - - - - - 0x0149DC 05:A9CC: 4C 35 AC  JMP loc_AC35



ofs_093_A9CF_01:
C - - - - - 0x0149DF 05:A9CF: 20 90 98  JSR sub_0x01B8A0
loc_A9D2:
C D 1 - - - 0x0149E2 05:A9D2: A9 00     LDA #$00
C - - - - - 0x0149E4 05:A9D4: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x0149E7 05:A9D7: 4C C7 AC  JMP loc_ACC7



ofs_093_A9DA_02:
C - - - - - 0x0149EA 05:A9DA: 20 4C 98  JSR sub_0x01B85C
C - - - - - 0x0149ED 05:A9DD: B0 03     BCS bra_A9E2
C - - - - - 0x0149EF 05:A9DF: 4C 8F AC  JMP loc_AC8F
bra_A9E2:
C - - - - - 0x0149F2 05:A9E2: BC 5B 05  LDY ram_055B_obj_anim_counter,X
C - - - - - 0x0149F5 05:A9E5: B9 F6 A9  LDA tbl_A9F6,Y
C - - - - - 0x0149F8 05:A9E8: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0149FB 05:A9EB: B0 DB     BCS bra_A9C8_RTS
C - - - - - 0x0149FD 05:A9ED: FE 5B 05  INC ram_055B_obj_anim_counter,X
C - - - - - 0x014A00 05:A9F0: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014A03 05:A9F3: 4C 6E 9A  JMP loc_0x01BA7E



tbl_A9F6:
- D 1 - - - 0x014A06 05:A9F6: 88        .byte $88   ; 00 
- D 1 - - - 0x014A07 05:A9F7: A4        .byte $A4   ; 01 
- D 1 - - - 0x014A08 05:A9F8: C0        .byte $C0   ; 02 
- D 1 - - - 0x014A09 05:A9F9: FF        .byte $FF   ; 03 



ofs_093_A9FA_03:
C - - - - - 0x014A0A 05:A9FA: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014A0D 05:A9FD: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014A10 05:AA00: 4C 5A BB  JMP loc_BB5A



ofs_093_AA03_04:
C - - - - - 0x014A13 05:AA03: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014A16 05:AA06: A9 82     LDA #$82
C - - - - - 0x014A18 05:AA08: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014A1B 05:AA0B: 60        RTS



tbl_AA0C:
- D 1 - - - 0x014A1C 05:AA0C: 23 AA     .word ofs_094_AA24_00 - $01
- D 1 - - - 0x014A1E 05:AA0E: 26 AA     .word ofs_094_AA27_01 - $01
- D 1 - - - 0x014A20 05:AA10: 2F AA     .word ofs_094_AA30_02 - $01
- D 1 - - - 0x014A22 05:AA12: 4A AA     .word ofs_094_AA4B_03 - $01
- D 1 - - - 0x014A24 05:AA14: 56 AA     .word ofs_094_AA57_04 - $01
- D 1 - - - 0x014A26 05:AA16: 89 AB     .word ofs_094_AB8A_05 - $01



ofs_098_AA18_04:
C - - - - - 0x014A28 05:AA18: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014A2B 05:AA1B: B9 0D AA  LDA tbl_AA0C + $01,Y
C - - - - - 0x014A2E 05:AA1E: 48        PHA
C - - - - - 0x014A2F 05:AA1F: B9 0C AA  LDA tbl_AA0C,Y
C - - - - - 0x014A32 05:AA22: 48        PHA
bra_AA23_RTS:
C - - - - - 0x014A33 05:AA23: 60        RTS



ofs_094_AA24_00:
; bzk optimize
C - - - - - 0x014A34 05:AA24: 4C 62 AC  JMP loc_AC62



ofs_094_AA27_01:
C - - - - - 0x014A37 05:AA27: 20 B5 AC  JSR sub_ACB5
C - - - - - 0x014A3A 05:AA2A: 20 90 98  JSR sub_0x01B8A0
C - - - - - 0x014A3D 05:AA2D: 4C C7 AC  JMP loc_ACC7



ofs_094_AA30_02:
C - - - - - 0x014A40 05:AA30: 20 4C 98  JSR sub_0x01B85C
C - - - - - 0x014A43 05:AA33: 90 0B     BCC bra_AA40
C - - - - - 0x014A45 05:AA35: 20 EB 97  JSR sub_0x01B7FB
C - - - - - 0x014A48 05:AA38: D0 E9     BNE bra_AA23_RTS
C - - - - - 0x014A4A 05:AA3A: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014A4D 05:AA3D: 4C 6E 9A  JMP loc_0x01BA7E
bra_AA40:
loc_AA40:
C D 1 - - - 0x014A50 05:AA40: A9 84     LDA #$84
C - - - - - 0x014A52 05:AA42: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014A55 05:AA45: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x014A58 05:AA48: 4C A0 AC  JMP loc_ACA0



ofs_094_AA4B_03:
C - - - - - 0x014A5B 05:AA4B: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014A5E 05:AA4E: 20 DA 98  JSR sub_0x01B8EA
C - - - - - 0x014A61 05:AA51: 20 5A BB  JSR sub_BB5A
C - - - - - 0x014A64 05:AA54: 4C 40 AA  JMP loc_AA40



ofs_094_AA57_04:
C - - - - - 0x014A67 05:AA57: 20 44 98  JSR sub_0x01B854
C - - - - - 0x014A6A 05:AA5A: 20 F8 9B  JSR sub_0x01BC08
C - - - - - 0x014A6D 05:AA5D: A9 20     LDA #$20
C - - - - - 0x014A6F 05:AA5F: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x014A72 05:AA62: 10 02     BPL bra_AA66
C - - - - - 0x014A74 05:AA64: A9 E0     LDA #$E0
bra_AA66:
C - - - - - 0x014A76 05:AA66: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x014A79 05:AA69: 4C A5 AC  JMP loc_ACA5



tbl_AA6C:
- D 1 - - - 0x014A7C 05:AA6C: 83 AA     .word ofs_049_AA84_00 - $01
- D 1 - - - 0x014A7E 05:AA6E: 86 AA     .word ofs_049_AA87_01 - $01
- D 1 - - - 0x014A80 05:AA70: B3 AA     .word ofs_049_AAB4_02 - $01
- D 1 - - - 0x014A82 05:AA72: E1 AA     .word ofs_049_AAE2_03 - $01
- D 1 - - - 0x014A84 05:AA74: EB AA     .word ofs_049_AAEC_04 - $01
- D 1 - - - 0x014A86 05:AA76: E1 AA     .word ofs_049_AAE2_05 - $01
- D 1 - - - 0x014A88 05:AA78: FB AA     .word ofs_049_AAFC_06 - $01
- D 1 - - - 0x014A8A 05:AA7A: 0D AB     .word ofs_049_AB0E_07 - $01
- D 1 - - - 0x014A8C 05:AA7C: 20 AB     .word ofs_049_AB21_08 - $01
- D 1 - - - 0x014A8E 05:AA7E: 28 AB     .word ofs_049_AB29_09 - $01
- D 1 - - - 0x014A90 05:AA80: 8C A9     .word ofs_049_A98D_0A - $01
- D 1 - - - 0x014A92 05:AA82: 9D A9     .word ofs_049_A99E_0B - $01



ofs_049_AA84_00:
; bzk optimize
C - - - - - 0x014A94 05:AA84: 4C AD AC  JMP loc_ACAD



ofs_049_AA87_01:
C - - - - - 0x014A97 05:AA87: 20 DC 97  JSR sub_0x01B7EC
C - - - - - 0x014A9A 05:AA8A: D0 52     BNE bra_AADE_RTS
C - - - - - 0x014A9C 05:AA8C: 20 43 9A  JSR sub_0x01BA53
C - - - - - 0x014A9F 05:AA8F: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014AA2 05:AA92: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x014AA5 05:AA95: 38        SEC
C - - - - - 0x014AA6 05:AA96: FD 8B 04  SBC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014AA9 05:AA99: 10 07     BPL bra_AAA2
C - - - - - 0x014AAB 05:AA9B: A9 87     LDA #$87
C - - - - - 0x014AAD 05:AA9D: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014AB0 05:AAA0: D0 60     BNE bra_AB02    ; jmp
bra_AAA2:
; bzk optimize, useless STA?
; next read is at 0x01B785 as ram_0071_t01,
; but it's most likely a bug
C - - - - - 0x014AB2 05:AAA2: 85 71     STA ram_0071_tFF_useless
C - - - - - 0x014AB4 05:AAA4: C9 41     CMP #$41
C - - - - - 0x014AB6 05:AAA6: 90 1F     BCC bra_AAC7
C - - - - - 0x014AB8 05:AAA8: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x014ABB 05:AAAB: 38        SEC
C - - - - - 0x014ABC 05:AAAC: E9 40     SBC #$40
C - - - - - 0x014ABE 05:AAAE: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x014AC1 05:AAB1: 20 2F AB  JSR sub_AB2F
ofs_049_AAB4_02:
C - - - - - 0x014AC4 05:AAB4: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x014AC7 05:AAB7: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014ACA 05:AABA: B0 22     BCS bra_AADE_RTS
C - - - - - 0x014ACC 05:AABC: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x014ACF 05:AABF: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x014AD2 05:AAC2: A9 00     LDA #$00
C - - - - - 0x014AD4 05:AAC4: 9D 27 05  STA ram_spd_Y_lo_obj,X
bra_AAC7:
C - - - - - 0x014AD7 05:AAC7: 4C A5 98  JMP loc_0x01B8B5



ofs_098_AACA_05:
C - - - - - 0x014ADA 05:AACA: 20 E6 AB  JSR sub_ABE6
C - - - - - 0x014ADD 05:AACD: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014AE0 05:AAD0: A9 AA     LDA #> (ofs_AADF_return - $01)
C - - - - - 0x014AE2 05:AAD2: 48        PHA
C - - - - - 0x014AE3 05:AAD3: A9 DE     LDA #< (ofs_AADF_return - $01)
C - - - - - 0x014AE5 05:AAD5: 48        PHA
C - - - - - 0x014AE6 05:AAD6: B9 6D AA  LDA tbl_AA6C + $01,Y
C - - - - - 0x014AE9 05:AAD9: 48        PHA
C - - - - - 0x014AEA 05:AADA: B9 6C AA  LDA tbl_AA6C,Y
C - - - - - 0x014AED 05:AADD: 48        PHA
bra_AADE_RTS:
C - - - - - 0x014AEE 05:AADE: 60        RTS



ofs_AADF_return:
; bzk optimize
C - - - - - 0x014AEF 05:AADF: 4C 0E AC  JMP loc_AC0E



ofs_049_AAE2_03:
ofs_049_AAE2_05:
C - - - - - 0x014AF2 05:AAE2: 20 DF AC  JSR sub_ACDF
C - - - - - 0x014AF5 05:AAE5: 20 89 98  JSR sub_0x01B899
C - - - - - 0x014AF8 05:AAE8: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x014AFB 05:AAEB: 60        RTS



ofs_049_AAEC_04:
C - - - - - 0x014AFC 05:AAEC: 20 DF AC  JSR sub_ACDF
C - - - - - 0x014AFF 05:AAEF: 20 72 98  JSR sub_0x01B882
C - - - - - 0x014B02 05:AAF2: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x014B05 05:AAF5: 18        CLC
C - - - - - 0x014B06 05:AAF6: 69 03     ADC #$03
C - - - - - 0x014B08 05:AAF8: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x014B0B 05:AAFB: 60        RTS



ofs_049_AAFC_06:
C - - - - - 0x014B0C 05:AAFC: 20 DF AC  JSR sub_ACDF
C - - - - - 0x014B0F 05:AAFF: 20 72 98  JSR sub_0x01B882
bra_AB02:
C - - - - - 0x014B12 05:AB02: A9 20     LDA #$20
C - - - - - 0x014B14 05:AB04: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x014B17 05:AB07: 10 02     BPL bra_AB0B
C - - - - - 0x014B19 05:AB09: A9 E0     LDA #$E0
bra_AB0B:
C - - - - - 0x014B1B 05:AB0B: 9D 4E 05  STA ram_054E_obj,X
ofs_049_AB0E_07:
C - - - - - 0x014B1E 05:AB0E: 20 DF AC  JSR sub_ACDF
C - - - - - 0x014B21 05:AB11: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
C - - - - - 0x014B24 05:AB14: 20 7E 9C  JSR sub_0x01BC8E
; bzk optimize
C - - - - - 0x014B27 05:AB17: AD A8 00  LDA a: ram_plr_index
; 
C - - - - - 0x014B2A 05:AB1A: F0 05     BEQ bra_AB21
C - - - - - 0x014B2C 05:AB1C: A9 C0     LDA #$C0
C - - - - - 0x014B2E 05:AB1E: 9D 83 05  STA ram_0583_obj,X
bra_AB21:
ofs_049_AB21_08:
C - - - - - 0x014B31 05:AB21: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x014B34 05:AB24: D0 B8     BNE bra_AADE_RTS
C - - - - - 0x014B36 05:AB26: 4C C7 AC  JMP loc_ACC7



ofs_049_AB29_09:
C - - - - - 0x014B39 05:AB29: 20 5E 98  JSR sub_0x01B86E
C - - - - - 0x014B3C 05:AB2C: 4C 8F AC  JMP loc_AC8F



sub_AB2F:
C - - - - - 0x014B3F 05:AB2F: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x014B42 05:AB32: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x014B45 05:AB35: A9 00     LDA #$00
C - - - - - 0x014B47 05:AB37: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x014B4A 05:AB3A: A9 02     LDA #$02
C - - - - - 0x014B4C 05:AB3C: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x014B4F 05:AB3F: 60        RTS



loc_AB40:
C D 1 - - - 0x014B50 05:AB40: A9 06     LDA #$06
C - - - - - 0x014B52 05:AB42: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x014B55 05:AB45: A9 80     LDA #$80
C - - - - - 0x014B57 05:AB47: 20 EB 9B  JSR sub_0x01BBFB
C - - - - - 0x014B5A 05:AB4A: 20 C2 AC  JSR sub_ACC2
C - - - - - 0x014B5D 05:AB4D: 4C 8B A8  JMP loc_A88B



tbl_AB50:
- D 1 - - - 0x014B60 05:AB50: 65 AB     .word ofs_050_AB66_00 - $01
- D 1 - - - 0x014B62 05:AB52: 6F AB     .word ofs_050_AB70_01 - $01
- - - - - - 0x014B64 05:AB54: 7F AB     .word ofs_050_AB80_02 - $01
- - - - - - 0x014B66 05:AB56: 89 AB     .word ofs_050_AB8A_03 - $01
- D 1 - - - 0x014B68 05:AB58: 88 AC     .word ofs_050_AC89_04 - $01



ofs_098_AB5A_06:
C - - - - - 0x014B6A 05:AB5A: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014B6D 05:AB5D: B9 51 AB  LDA tbl_AB50 + $01,Y
C - - - - - 0x014B70 05:AB60: 48        PHA
C - - - - - 0x014B71 05:AB61: B9 50 AB  LDA tbl_AB50,Y
C - - - - - 0x014B74 05:AB64: 48        PHA
C - - - - - 0x014B75 05:AB65: 60        RTS



ofs_050_AB66_00:
C - - - - - 0x014B76 05:AB66: 20 5E 98  JSR sub_0x01B86E
C - - - - - 0x014B79 05:AB69: 20 A5 AC  JSR sub_ACA5
C - - - - - 0x014B7C 05:AB6C: A9 20     LDA #$20
C - - - - - 0x014B7E 05:AB6E: D0 0D     BNE bra_AB7D    ; jmp



ofs_050_AB70_01:
C - - - - - 0x014B80 05:AB70: 20 B5 AC  JSR sub_ACB5
C - - - - - 0x014B83 05:AB73: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
- - - - - - 0x014B86 05:AB76: A9 00     LDA #$00
- - - - - - 0x014B88 05:AB78: 20 61 9B  JSR sub_0x01BB71
- - - - - - 0x014B8B 05:AB7B: A9 18     LDA #$18
bra_AB7D:
C - - - - - 0x014B8D 05:AB7D: 4C 41 9C  JMP loc_0x01BC51



ofs_050_AB80_02:
- - - - - - 0x014B90 05:AB80: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
- - - - - - 0x014B93 05:AB83: 20 BC AC  JSR sub_ACBC
- - - - - - 0x014B96 05:AB86: A9 20     LDA #$20
- - - - - - 0x014B98 05:AB88: D0 F3     BNE bra_AB7D    ; jmp



ofs_050_AB8A_03:
ofs_094_AB8A_05:
C - - - - - 0x014B9A 05:AB8A: 20 B5 AC  JSR sub_ACB5
C - - - - - 0x014B9D 05:AB8D: 20 90 98  JSR sub_0x01B8A0
C - - - - - 0x014BA0 05:AB90: 4C 8F AC  JMP loc_AC8F



tbl_AB93:
- D 1 - - - 0x014BA3 05:AB93: A8 9D     .word ofs_051_0x01BDB9_00 - $01
- D 1 - - - 0x014BA5 05:AB95: B9 9D     .word ofs_051_0x01BDCA_01 - $01
- D 1 - - - 0x014BA7 05:AB97: A6 AB     .word ofs_051_ABA7_02 - $01
- D 1 - - - 0x014BA9 05:AB99: BE AB     .word ofs_051_ABBF_03 - $01



ofs_098_AB9B_07:
C - - - - - 0x014BAB 05:AB9B: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014BAE 05:AB9E: B9 94 AB  LDA tbl_AB93 + $01,Y
C - - - - - 0x014BB1 05:ABA1: 48        PHA
C - - - - - 0x014BB2 05:ABA2: B9 93 AB  LDA tbl_AB93,Y
C - - - - - 0x014BB5 05:ABA5: 48        PHA
C - - - - - 0x014BB6 05:ABA6: 60        RTS



ofs_051_ABA7_02:
C - - - - - 0x014BB7 05:ABA7: 20 E5 9B  JSR sub_0x01BBF5
C - - - - - 0x014BBA 05:ABAA: A9 60     LDA #$60
C - - - - - 0x014BBC 05:ABAC: 20 11 98  JSR sub_0x01B821
C - - - - - 0x014BBF 05:ABAF: 90 03     BCC bra_ABB4
C - - - - - 0x014BC1 05:ABB1: 20 D6 9B  JSR sub_0x01BBE6_EOR_obj_flag
bra_ABB4:
C - - - - - 0x014BC4 05:ABB4: A9 40     LDA #$40
C - - - - - 0x014BC6 05:ABB6: 20 41 9C  JSR sub_0x01BC51
C - - - - - 0x014BC9 05:ABB9: 20 A5 AC  JSR sub_ACA5
C - - - - - 0x014BCC 05:ABBC: 4C AC 9E  JMP loc_0x01BEBC



ofs_051_ABBF_03:
C - - - - - 0x014BCF 05:ABBF: 20 B5 AC  JSR sub_ACB5
C - - - - - 0x014BD2 05:ABC2: 20 90 98  JSR sub_0x01B8A0
C - - - - - 0x014BD5 05:ABC5: 4C 8F AC  JMP loc_AC8F



tbl_ABC8:
- D 1 - - - 0x014BD8 05:ABC8: A8 9D     .word ofs_052_0x01BDB9_00 - $01
- D 1 - - - 0x014BDA 05:ABCA: B9 9D     .word ofs_052_0x01BDCA_01 - $01
- D 1 - - - 0x014BDC 05:ABCC: C1 9D     .word ofs_052_0x01BDD2_02 - $01
- D 1 - - - 0x014BDE 05:ABCE: DD AB     .word ofs_052_ABDE_03 - $01
- D 1 - - - 0x014BE0 05:ABD0: 74 9D     .word ofs_052_0x01BD85_04 - $01



ofs_098_ABD2_08:
C - - - - - 0x014BE2 05:ABD2: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014BE5 05:ABD5: B9 C9 AB  LDA tbl_ABC8 + $01,Y
C - - - - - 0x014BE8 05:ABD8: 48        PHA
C - - - - - 0x014BE9 05:ABD9: B9 C8 AB  LDA tbl_ABC8,Y
C - - - - - 0x014BEC 05:ABDC: 48        PHA
C - - - - - 0x014BED 05:ABDD: 60        RTS



ofs_052_ABDE_03:
C - - - - - 0x014BEE 05:ABDE: A9 D0     LDA #$D0
C - - - - - 0x014BF0 05:ABE0: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014BF3 05:ABE3: 4C D8 9D  JMP loc_0x01BDE8



sub_ABE6:
C - - - - - 0x014BF6 05:ABE6: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x014BF9 05:ABE9: 90 05     BCC bra_ABF0_RTS
C - - - - - 0x014BFB 05:ABEB: 68        PLA
C - - - - - 0x014BFC 05:ABEC: 68        PLA
C - - - - - 0x014BFD 05:ABED: 4C 40 AB  JMP loc_AB40
bra_ABF0_RTS:
C - - - - - 0x014C00 05:ABF0: 60        RTS



bra_ABF1:
loc_ABF1:
C D 1 - - - 0x014C01 05:ABF1: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x014C04 05:ABF4: 29 06     AND #$06
C - - - - - 0x014C06 05:ABF6: C9 06     CMP #$06
C - - - - - 0x014C08 05:ABF8: D0 13     BNE bra_AC0D_RTS
C - - - - - 0x014C0A 05:ABFA: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x014C0D 05:ABFD: 20 6B 97  JSR sub_0x01B77B
C - - - - - 0x014C10 05:AC00: A0 86     LDY #$86
bra_AC02:
C - - - - - 0x014C12 05:AC02: DD 41 05  CMP ram_0541_obj_flags,X
C - - - - - 0x014C15 05:AC05: F0 02     BEQ bra_AC09
C - - - - - 0x014C17 05:AC07: C8        INY
C - - - - - 0x014C18 05:AC08: C8        INY
bra_AC09:
C - - - - - 0x014C19 05:AC09: 98        TYA
; bzk optimize, JMP
C - - - - - 0x014C1A 05:AC0A: 20 2C 9B  JSR sub_0x01BB3C
bra_AC0D_RTS:
C - - - - - 0x014C1D 05:AC0D: 60        RTS



loc_AC0E:
C D 1 - - - 0x014C1E 05:AC0E: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014C21 05:AC11: C9 83     CMP #$83
C - - - - - 0x014C23 05:AC13: 90 DC     BCC bra_ABF1
C - - - - - 0x014C25 05:AC15: C9 89     CMP #$89
C - - - - - 0x014C27 05:AC17: B0 D8     BCS bra_ABF1
C - - - - - 0x014C29 05:AC19: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x014C2C 05:AC1C: 20 6B 97  JSR sub_0x01B77B
C - - - - - 0x014C2F 05:AC1F: A0 88     LDY #$88
C - - - - - 0x014C31 05:AC21: 29 80     AND #$80
C - - - - - 0x014C33 05:AC23: D0 01     BNE bra_AC26
C - - - - - 0x014C35 05:AC25: C8        INY ; 89
bra_AC26:
C - - - - - 0x014C36 05:AC26: 98        TYA
C - - - - - 0x014C37 05:AC27: 20 37 9B  JSR sub_0x01BB47
C - - - - - 0x014C3A 05:AC2A: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014C3D 05:AC2D: C9 88     CMP #$88
C - - - - - 0x014C3F 05:AC2F: D0 03     BNE bra_AC34_RTS
; bzk optimize, JMP
C - - - - - 0x014C41 05:AC31: 20 7E 9C  JSR sub_0x01BC8E
bra_AC34_RTS:
C - - - - - 0x014C44 05:AC34: 60        RTS



loc_AC35:
C D 1 - - - 0x014C45 05:AC35: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014C48 05:AC38: A9 60     LDA #$60
C - - - - - 0x014C4A 05:AC3A: AC 04 04  LDY ram_pos_X_lo_player
C - - - - - 0x014C4D 05:AC3D: 10 02     BPL bra_AC41
C - - - - - 0x014C4F 05:AC3F: A9 A0     LDA #$A0
bra_AC41:
C - - - - - 0x014C51 05:AC41: 18        CLC
C - - - - - 0x014C52 05:AC42: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x014C55 05:AC45: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x014C58 05:AC48: 20 EB 9B  JSR sub_0x01BBFB
C - - - - - 0x014C5B 05:AC4B: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x014C5E 05:AC4E: 38        SEC
C - - - - - 0x014C5F 05:AC4F: ED 64 04  SBC ram_pos_X_lo_obj + $03
C - - - - - 0x014C62 05:AC52: 69 10     ADC #$10
C - - - - - 0x014C64 05:AC54: C9 20     CMP #$20
C - - - - - 0x014C66 05:AC56: B0 03     BCS bra_AC5B
C - - - - - 0x014C68 05:AC58: 4C D2 A9  JMP loc_A9D2
bra_AC5B:
loc_AC5B:
C - - - - - 0x014C6B 05:AC5B: 20 6B 97  JSR sub_0x01B77B
C - - - - - 0x014C6E 05:AC5E: A0 06     LDY #$06
C - - - - - 0x014C70 05:AC60: D0 A0     BNE bra_AC02    ; jmp



loc_AC62:
C D 1 - - - 0x014C72 05:AC62: AD 04 04  LDA ram_pos_X_lo_player
; bzk optimize
C - - - - - 0x014C75 05:AC65: AC A4 00  LDY a: ram_plr_direction
; 
C - - - - - 0x014C78 05:AC68: F0 08     BEQ bra_AC72_left
; if right
C - - - - - 0x014C7A 05:AC6A: C9 58     CMP #$58
C - - - - - 0x014C7C 05:AC6C: B0 0C     BCS bra_AC7A
- - - - - - 0x014C7E 05:AC6E: A9 18     LDA #$18
- - - - - - 0x014C80 05:AC70: D0 0C     BNE bra_AC7E    ; jmp
bra_AC72_left:
C - - - - - 0x014C82 05:AC72: C9 A8     CMP #$A8
C - - - - - 0x014C84 05:AC74: 90 04     BCC bra_AC7A
C - - - - - 0x014C86 05:AC76: A9 E8     LDA #$E8
C - - - - - 0x014C88 05:AC78: D0 04     BNE bra_AC7E    ; jmp
bra_AC7A:
C - - - - - 0x014C8A 05:AC7A: 18        CLC
C - - - - - 0x014C8B 05:AC7B: 79 87 AC  ADC tbl_AC87,Y
bra_AC7E:
C - - - - - 0x014C8E 05:AC7E: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x014C91 05:AC81: 20 EB 9B  JSR sub_0x01BBFB
C - - - - - 0x014C94 05:AC84: 4C A5 AC  JMP loc_ACA5



tbl_AC87:
- D 1 - - - 0x014C97 05:AC87: 40        .byte $40   ; 00 left
- D 1 - - - 0x014C98 05:AC88: C0        .byte $C0   ; 01 right



ofs_050_AC89_04:
C - - - - - 0x014C99 05:AC89: 20 44 98  JSR sub_0x01B854
bra_AC8C:
C - - - - - 0x014C9C 05:AC8C: 4C 8E A8  JMP loc_A88E



loc_AC8F:
C D 1 - - - 0x014C9F 05:AC8F: A9 06     LDA #$06
C - - - - - 0x014CA1 05:AC91: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x014CA4 05:AC94: A9 84     LDA #$84
C - - - - - 0x014CA6 05:AC96: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014CA9 05:AC99: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x014CAC 05:AC9C: C9 48     CMP #$48
C - - - - - 0x014CAE 05:AC9E: 90 EC     BCC bra_AC8C
loc_ACA0:
C D 1 - - - 0x014CB0 05:ACA0: A9 04     LDA #$04
C - - - - - 0x014CB2 05:ACA2: 4C 15 9B  JMP loc_0x01BB25



loc_ACA5:
sub_ACA5:
C D 1 - - - 0x014CB5 05:ACA5: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014CB8 05:ACA8: A9 18     LDA #$18
C - - - - - 0x014CBA 05:ACAA: 4C 2C 9B  JMP loc_0x01BB3C



loc_ACAD:
C D 1 - - - 0x014CBD 05:ACAD: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014CC0 05:ACB0: A9 18     LDA #$18
C - - - - - 0x014CC2 05:ACB2: 4C 15 9B  JMP loc_0x01BB25



sub_ACB5:
C - - - - - 0x014CC5 05:ACB5: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x014CC8 05:ACB8: 29 20     AND #$20
C - - - - - 0x014CCA 05:ACBA: F0 05     BEQ bra_ACC1_RTS
sub_ACBC:
C - - - - - 0x014CCC 05:ACBC: A9 06     LDA #$06
C - - - - - 0x014CCE 05:ACBE: 4C 2C 9B  JMP loc_0x01BB3C
bra_ACC1_RTS:
C - - - - - 0x014CD1 05:ACC1: 60        RTS



loc_ACC2:
sub_ACC2:
C D 1 - - - 0x014CD2 05:ACC2: A9 16     LDA #$16
C - - - - - 0x014CD4 05:ACC4: 4C 2C 9B  JMP loc_0x01BB3C



loc_ACC7:
C D 1 - - - 0x014CD7 05:ACC7: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014CDA 05:ACCA: A9 16     LDA #$16
C - - - - - 0x014CDC 05:ACCC: 4C 15 9B  JMP loc_0x01BB25



loc_ACCF:
C D 1 - - - 0x014CDF 05:ACCF: A9 80     LDA #$80
C - - - - - 0x014CE1 05:ACD1: 8D 23 05  STA ram_0523_t03
C - - - - - 0x014CE4 05:ACD4: EE 7A 04  INC ram_047A_t02
C - - - - - 0x014CE7 05:ACD7: A9 02     LDA #$02
C - - - - - 0x014CE9 05:ACD9: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x014CEC 05:ACDC: 4C 90 9E  JMP loc_0x01BEA0



sub_ACDF:
C - - - - - 0x014CEF 05:ACDF: CE A1 04  DEC ram_04A1_t02
C - - - - - 0x014CF2 05:ACE2: 10 21     BPL bra_AD05_RTS
C - - - - - 0x014CF4 05:ACE4: 20 47 BB  JSR sub_BB47
C - - - - - 0x014CF7 05:ACE7: 30 1C     BMI bra_AD05_RTS
C - - - - - 0x014CF9 05:ACE9: 8C A1 04  STY ram_04A1_t02
C - - - - - 0x014CFC 05:ACEC: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014CFF 05:ACEF: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x014D02 05:ACF2: 20 6E 9A  JSR sub_0x01BA7E
C - - - - - 0x014D05 05:ACF5: A9 84     LDA #$84
C - - - - - 0x014D07 05:ACF7: BC D9 04  LDY ram_04D9_obj,X
C - - - - - 0x014D0A 05:ACFA: C0 02     CPY #$02
C - - - - - 0x014D0C 05:ACFC: F0 02     BEQ bra_AD00
C - - - - - 0x014D0E 05:ACFE: A9 8A     LDA #$8A
bra_AD00:
C - - - - - 0x014D10 05:AD00: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014D13 05:AD03: 68        PLA
C - - - - - 0x014D14 05:AD04: 68        PLA
bra_AD05_RTS:
C - - - - - 0x014D15 05:AD05: 60        RTS



ofs_099_AD06_00:
C - - - - - 0x014D16 05:AD06: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x014D19 05:AD09: 30 0A     BMI bra_AD15
C - - - - - 0x014D1B 05:AD0B: 20 C5 98  JSR sub_0x01B8D5
C - - - - - 0x014D1E 05:AD0E: 20 B7 AF  JSR sub_AFB7
; bzk optimize, JMP
C - - - - - 0x014D21 05:AD11: 20 B7 9E  JSR sub_0x01BEC7
C - - - - - 0x014D24 05:AD14: 60        RTS
bra_AD15:
C - - - - - 0x014D25 05:AD15: 20 5C 9C  JSR sub_0x01BC6C    ; possible PLA PLA
C - - - - - 0x014D28 05:AD18: AD 87 04  LDA ram_0487_t02
C - - - - - 0x014D2B 05:AD1B: F0 22     BEQ bra_AD3F
C - - - - - 0x014D2D 05:AD1D: A9 40     LDA #$40
C - - - - - 0x014D2F 05:AD1F: 20 11 98  JSR sub_0x01B821
C - - - - - 0x014D32 05:AD22: 90 0C     BCC bra_AD30
C - - - - - 0x014D34 05:AD24: 20 71 AD  JSR sub_AD71
C - - - - - 0x014D37 05:AD27: A9 03     LDA #$03
C - - - - - 0x014D39 05:AD29: 8D F3 04  STA ram_04F3_obj
C - - - - - 0x014D3C 05:AD2C: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x014D3F 05:AD2F: 60        RTS
bra_AD30:
C - - - - - 0x014D40 05:AD30: A2 03     LDX #$03
C - - - - - 0x014D42 05:AD32: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x014D45 05:AD35: 65 14     ADC ram_frm_cnt
C - - - - - 0x014D47 05:AD37: 29 03     AND #$03
C - - - - - 0x014D49 05:AD39: F0 29     BEQ bra_AD64
C - - - - - 0x014D4B 05:AD3B: A2 01     LDX #$01
C - - - - - 0x014D4D 05:AD3D: D0 25     BNE bra_AD64    ; jmp
bra_AD3F:
C - - - - - 0x014D4F 05:AD3F: A2 01     LDX #$01
C - - - - - 0x014D51 05:AD41: AD 79 05  LDA ram_obj_hp
C - - - - - 0x014D54 05:AD44: C9 0A     CMP #$0A
C - - - - - 0x014D56 05:AD46: 90 1C     BCC bra_AD64
C - - - - - 0x014D58 05:AD48: A2 03     LDX #$03
C - - - - - 0x014D5A 05:AD4A: AD 30 05  LDA ram_0530_t02_flag
C - - - - - 0x014D5D 05:AD4D: D0 15     BNE bra_AD64
C - - - - - 0x014D5F 05:AD4F: E8        INX ; 04
C - - - - - 0x014D60 05:AD50: AD 16 05  LDA ram_0516_t03_flag
C - - - - - 0x014D63 05:AD53: D0 0F     BNE bra_AD64
C - - - - - 0x014D65 05:AD55: A2 00     LDX #$00
C - - - - - 0x014D67 05:AD57: 20 7A 97  JSR sub_0x01B78A
C - - - - - 0x014D6A 05:AD5A: E0 02     CPX #$02
C - - - - - 0x014D6C 05:AD5C: D0 04     BNE bra_AD62
C - - - - - 0x014D6E 05:AD5E: A2 05     LDX #$05
C - - - - - 0x014D70 05:AD60: D0 02     BNE bra_AD64    ; jmp
bra_AD62:
C - - - - - 0x014D72 05:AD62: A2 06     LDX #$06
bra_AD64:
C - - - - - 0x014D74 05:AD64: 8A        TXA
C - - - - - 0x014D75 05:AD65: A8        TAY
C - - - - - 0x014D76 05:AD66: A6 79     LDX ram_0079_obj_index
C - - - - - 0x014D78 05:AD68: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x014D7B 05:AD6B: B9 74 AD  LDA tbl_AD74,Y
C - - - - - 0x014D7E 05:AD6E: 20 15 9B  JSR sub_0x01BB25
sub_AD71:
loc_AD71:
; bzk optimize
C D 1 - - - 0x014D81 05:AD71: 4C 9E 9C  JMP loc_0x01BCAE



tbl_AD74:
- - - - - - 0x014D84 05:AD74: 00        .byte $00   ; 00 
- D 1 - - - 0x014D85 05:AD75: 06        .byte $06   ; 01 
- - - - - - 0x014D86 05:AD76: 06        .byte $06   ; 02 
- D 1 - - - 0x014D87 05:AD77: 06        .byte $06   ; 03 
- D 1 - - - 0x014D88 05:AD78: 06        .byte $06   ; 04 
- D 1 - - - 0x014D89 05:AD79: 04        .byte $04   ; 05 
- D 1 - - - 0x014D8A 05:AD7A: 04        .byte $04   ; 06 



tbl_AD7B:
- D 1 - - - 0x014D8B 05:AD7B: 97 AD     .word ofs_053_AD98_00 - $01
- D 1 - - - 0x014D8D 05:AD7D: A7 AD     .word ofs_053_ADA8_01 - $01
- D 1 - - - 0x014D8F 05:AD7F: AD AD     .word ofs_053_ADAE_02 - $01
- D 1 - - - 0x014D91 05:AD81: D2 AD     .word ofs_053_ADD3_03 - $01
- D 1 - - - 0x014D93 05:AD83: D5 AD     .word ofs_053_ADD6_04 - $01
- - - - - - 0x014D95 05:AD85: 0C AE     .word ofs_053_AE0D_05 - $01
- D 1 - - - 0x014D97 05:AD87: 12 AE     .word ofs_053_AE13_06 - $01



ofs_099_AD89_01:
C - - - - - 0x014D99 05:AD89: 20 95 AF  JSR sub_AF95
C - - - - - 0x014D9C 05:AD8C: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014D9F 05:AD8F: B9 7C AD  LDA tbl_AD7B + $01,Y
C - - - - - 0x014DA2 05:AD92: 48        PHA
C - - - - - 0x014DA3 05:AD93: B9 7B AD  LDA tbl_AD7B,Y
C - - - - - 0x014DA6 05:AD96: 48        PHA
C - - - - - 0x014DA7 05:AD97: 60        RTS



ofs_053_AD98_00:
ofs_055_AD98_00:
C - - - - - 0x014DA8 05:AD98: 20 3B 98  JSR sub_0x01B84B
C - - - - - 0x014DAB 05:AD9B: A9 30     LDA #$30
C - - - - - 0x014DAD 05:AD9D: 20 11 98  JSR sub_0x01B821
C - - - - - 0x014DB0 05:ADA0: 90 06     BCC bra_ADA8
- - - - - - 0x014DB2 05:ADA2: 20 D6 9B  JSR sub_0x01BBE6_EOR_obj_flag
- - - - - - 0x014DB5 05:ADA5: 20 C5 AF  JSR sub_AFC5
bra_ADA8:
ofs_053_ADA8_01:
ofs_055_ADA8_01:
C - - - - - 0x014DB8 05:ADA8: 20 72 98  JSR sub_0x01B882
C - - - - - 0x014DBB 05:ADAB: 4C 6E 9A  JMP loc_0x01BA7E



ofs_053_ADAE_02:
C - - - - - 0x014DBE 05:ADAE: 20 2C AE  JSR sub_AE2C
C - - - - - 0x014DC1 05:ADB1: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014DC4 05:ADB4: 20 55 97  JSR sub_0x01B765
C - - - - - 0x014DC7 05:ADB7: F0 0F     BEQ bra_ADC8
C - - - - - 0x014DC9 05:ADB9: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x014DCC 05:ADBC: 29 C0     AND #$C0
C - - - - - 0x014DCE 05:ADBE: D0 08     BNE bra_ADC8
sub_ADC0:
C - - - - - 0x014DD0 05:ADC0: A9 88     LDA #$88
C - - - - - 0x014DD2 05:ADC2: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x014DD5 05:ADC5: 4C 57 AE  JMP loc_AE57
bra_ADC8:
C - - - - - 0x014DD8 05:ADC8: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014DDB 05:ADCB: 20 CF AF  JSR sub_AFCF
loc_ADCE:
C D 1 - - - 0x014DDE 05:ADCE: A9 60     LDA #$60
C - - - - - 0x014DE0 05:ADD0: 4C 1F 9C  JMP loc_0x01BC2F



ofs_053_ADD3_03:
C - - - - - 0x014DE3 05:ADD3: FE F3 04  INC ram_04F3_obj,X
ofs_053_ADD6_04:
C - - - - - 0x014DE6 05:ADD6: 20 2C AE  JSR sub_AE2C
C - - - - - 0x014DE9 05:ADD9: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x014DEC 05:ADDC: D0 18     BNE bra_ADF6
C - - - - - 0x014DEE 05:ADDE: 20 55 97  JSR sub_0x01B765
C - - - - - 0x014DF1 05:ADE1: F0 0D     BEQ bra_ADF0
C - - - - - 0x014DF3 05:ADE3: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x014DF6 05:ADE6: 29 C0     AND #$C0
C - - - - - 0x014DF8 05:ADE8: D0 06     BNE bra_ADF0
C - - - - - 0x014DFA 05:ADEA: 20 C0 AD  JSR sub_ADC0
C - - - - - 0x014DFD 05:ADED: 4C CE AD  JMP loc_ADCE
bra_ADF0:
C - - - - - 0x014E00 05:ADF0: 20 DA 98  JSR sub_0x01B8EA
C - - - - - 0x014E03 05:ADF3: 4C CF AF  JMP loc_AFCF
bra_ADF6:
C - - - - - 0x014E06 05:ADF6: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA


; bzk garbage
- - - - - - 0x014E09 05:ADF9: A9 00     LDA #$00
- - - - - - 0x014E0B 05:ADFB: 9D 5B 05  STA ram_055B_obj_anim_counter,X
- - - - - - 0x014E0E 05:ADFE: FE 83 05  INC ram_0583_obj,X
- - - - - - 0x014E11 05:AE01: A9 03     LDA #$03
- - - - - - 0x014E13 05:AE03: BC 41 05  LDY ram_0541_obj_flags,X
- - - - - - 0x014E16 05:AE06: 30 02     BMI bra_AE0A
- - - - - - 0x014E18 05:AE08: A9 FD     LDA #$FD
bra_AE0A:
- - - - - - 0x014E1A 05:AE0A: 9D 0D 05  STA ram_spd_X_lo_obj,X



ofs_053_AE0D_05:
- - - - - - 0x014E1D 05:AE0D: 20 89 98  JSR sub_0x01B899
- - - - - - 0x014E20 05:AE10: 20 CA AF  JSR sub_AFCA



ofs_053_AE13_06:
C - - - - - 0x014E23 05:AE13: 20 A6 9B  JSR sub_0x01BBB6
C - - - - - 0x014E26 05:AE16: 20 C5 98  JSR sub_0x01B8D5
; bzk optimize
C - - - - - 0x014E29 05:AE19: AD A8 00  LDA a: ram_plr_index
; 
C - - - - - 0x014E2C 05:AE1C: F0 0B     BEQ bra_AE29
- - - - - - 0x014E2E 05:AE1E: A9 03     LDA #$03
- - - - - - 0x014E30 05:AE20: 9D F3 04  STA ram_04F3_obj,X
- - - - - - 0x014E33 05:AE23: 9D D9 04  STA ram_04D9_obj,X
- - - - - - 0x014E36 05:AE26: 4C 91 AE  JMP loc_AE91
bra_AE29:
C - - - - - 0x014E39 05:AE29: 4C AF AF  JMP loc_AFAF



sub_AE2C:
C - - - - - 0x014E3C 05:AE2C: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x014E3F 05:AE2F: F0 25     BEQ bra_AE56_RTS
C - - - - - 0x014E41 05:AE31: DE 5B 05  DEC ram_055B_obj_anim_counter,X
C - - - - - 0x014E44 05:AE34: D0 20     BNE bra_AE56_RTS
C - - - - - 0x014E46 05:AE36: 20 57 AE  JSR sub_AE57
C - - - - - 0x014E49 05:AE39: BC 0D 05  LDY ram_spd_X_lo_obj,X
C - - - - - 0x014E4C 05:AE3C: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x014E4F 05:AE3F: 30 07     BMI bra_AE48
C - - - - - 0x014E51 05:AE41: 88        DEY
C - - - - - 0x014E52 05:AE42: C0 FD     CPY #$FD
C - - - - - 0x014E54 05:AE44: D0 0C     BNE bra_AE52
C - - - - - 0x014E56 05:AE46: F0 05     BEQ bra_AE4D    ; jmp
bra_AE48:
- - - - - - 0x014E58 05:AE48: C8        INY
- - - - - - 0x014E59 05:AE49: C0 03     CPY #$03
- - - - - - 0x014E5B 05:AE4B: D0 05     BNE bra_AE52
bra_AE4D:
C - - - - - 0x014E5D 05:AE4D: A9 00     LDA #$00
C - - - - - 0x014E5F 05:AE4F: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_AE52:
C - - - - - 0x014E62 05:AE52: 98        TYA
C - - - - - 0x014E63 05:AE53: 9D 0D 05  STA ram_spd_X_lo_obj,X
bra_AE56_RTS:
C - - - - - 0x014E66 05:AE56: 60        RTS



loc_AE57:
sub_AE57:
C D 1 - - - 0x014E67 05:AE57: A5 14     LDA ram_frm_cnt
C - - - - - 0x014E69 05:AE59: 29 03     AND #$03
C - - - - - 0x014E6B 05:AE5B: 18        CLC
C - - - - - 0x014E6C 05:AE5C: 69 08     ADC #$08
C - - - - - 0x014E6E 05:AE5E: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x014E71 05:AE61: 60        RTS



ofs_099_AE62_02_RTS:
- - - - - - 0x014E72 05:AE62: 60        RTS



ofs_054_AE63_01:
ofs_057_AE63_01:
C - - - - - 0x014E73 05:AE63: 20 72 98  JSR sub_0x01B882
C - - - - - 0x014E76 05:AE66: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x014E79 05:AE69: 60        RTS



ofs_054_AE6A_02:
ofs_057_AE6A_02:
C - - - - - 0x014E7A 05:AE6A: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x014E7D 05:AE6D: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x014E80 05:AE70: 4C BC AF  JMP loc_AFBC



tbl_AE73:
- D 1 - - - 0x014E83 05:AE73: 8A AE     .word ofs_054_AE8B_00 - $01
- D 1 - - - 0x014E85 05:AE75: 62 AE     .word ofs_054_AE63_01 - $01
- D 1 - - - 0x014E87 05:AE77: 69 AE     .word ofs_054_AE6A_02 - $01
- D 1 - - - 0x014E89 05:AE79: 90 AE     .word ofs_054_AE91_03 - $01
- D 1 - - - 0x014E8B 05:AE7B: A2 AE     .word ofs_054_AEA3_04 - $01
- D 1 - - - 0x014E8D 05:AE7D: AE AF     .word ofs_054_AFAF_05 - $01



ofs_099_AE7F_03:
C - - - - - 0x014E8F 05:AE7F: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014E92 05:AE82: B9 74 AE  LDA tbl_AE73 + $01,Y
C - - - - - 0x014E95 05:AE85: 48        PHA
C - - - - - 0x014E96 05:AE86: B9 73 AE  LDA tbl_AE73,Y
C - - - - - 0x014E99 05:AE89: 48        PHA
C - - - - - 0x014E9A 05:AE8A: 60        RTS



ofs_054_AE8B_00:
C - - - - - 0x014E9B 05:AE8B: 20 E3 9D  JSR sub_0x01BDF3
bra_AE8E:
C - - - - - 0x014E9E 05:AE8E: 4C A5 98  JMP loc_0x01B8B5



loc_AE91:
ofs_054_AE91_03:
C - - - - - 0x014EA1 05:AE91: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x014EA4 05:AE94: AD 87 04  LDA ram_0487_t02
C - - - - - 0x014EA7 05:AE97: F0 F5     BEQ bra_AE8E
C - - - - - 0x014EA9 05:AE99: A9 00     LDA #$00
C - - - - - 0x014EAB 05:AE9B: 8D 87 04  STA ram_0487_t02
C - - - - - 0x014EAE 05:AE9E: A9 04     LDA #$04
C - - - - - 0x014EB0 05:AEA0: 4C 15 9B  JMP loc_0x01BB25



ofs_054_AEA3_04:
C - - - - - 0x014EB3 05:AEA3: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014EB6 05:AEA6: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014EB9 05:AEA9: 4C E5 AF  JMP loc_AFE5



tbl_AEAC:
- D 1 - - - 0x014EBC 05:AEAC: 97 AD     .word ofs_055_AD98_00 - $01
- D 1 - - - 0x014EBE 05:AEAE: A7 AD     .word ofs_055_ADA8_01 - $01
- D 1 - - - 0x014EC0 05:AEB0: C8 AE     .word ofs_055_AEC9_02 - $01
- D 1 - - - 0x014EC2 05:AEB2: D6 AE     .word ofs_055_AED7_03 - $01
- D 1 - - - 0x014EC4 05:AEB4: DE AE     .word ofs_055_AEDF_04 - $01
- D 1 - - - 0x014EC6 05:AEB6: E4 AE     .word ofs_055_AEE5_05 - $01
- D 1 - - - 0x014EC8 05:AEB8: EA AE     .word ofs_055_AEEB_06 - $01



ofs_099_AEBA_04:
C - - - - - 0x014ECA 05:AEBA: 20 95 AF  JSR sub_AF95
C - - - - - 0x014ECD 05:AEBD: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014ED0 05:AEC0: B9 AD AE  LDA tbl_AEAC + $01,Y
C - - - - - 0x014ED3 05:AEC3: 48        PHA
C - - - - - 0x014ED4 05:AEC4: B9 AC AE  LDA tbl_AEAC,Y
C - - - - - 0x014ED7 05:AEC7: 48        PHA
C - - - - - 0x014ED8 05:AEC8: 60        RTS



ofs_055_AEC9_02:
C - - - - - 0x014ED9 05:AEC9: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014EDC 05:AECC: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014EDF 05:AECF: A9 50     LDA #$50
C - - - - - 0x014EE1 05:AED1: 20 1F 9C  JSR sub_0x01BC2F
bra_AED4:
C - - - - - 0x014EE4 05:AED4: 4C CF AF  JMP loc_AFCF



ofs_055_AED7_03:
C - - - - - 0x014EE7 05:AED7: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014EEA 05:AEDA: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014EED 05:AEDD: D0 F5     BNE bra_AED4    ; jmp?



ofs_055_AEDF_04:
C - - - - - 0x014EEF 05:AEDF: 20 9B 98  JSR sub_0x01B8AB    ; possible PLA PLA
C - - - - - 0x014EF2 05:AEE2: FE 83 05  INC ram_0583_obj,X
ofs_055_AEE5_05:
C - - - - - 0x014EF5 05:AEE5: 20 89 98  JSR sub_0x01B899
C - - - - - 0x014EF8 05:AEE8: 20 CA AF  JSR sub_AFCA
ofs_055_AEEB_06:
C - - - - - 0x014EFB 05:AEEB: 20 A6 9B  JSR sub_0x01BBB6
C - - - - - 0x014EFE 05:AEEE: 20 C5 98  JSR sub_0x01B8D5
C - - - - - 0x014F01 05:AEF1: 4C AF AF  JMP loc_AFAF



tbl_AEF4:
- D 1 - - - 0x014F04 05:AEF4: 07 AF     .word ofs_056_AF08_00 - $01
- D 1 - - - 0x014F06 05:AEF6: 07 AF     .word ofs_056_AF08_01 - $01
- D 1 - - - 0x014F08 05:AEF8: 07 AF     .word ofs_056_AF08_02 - $01
- D 1 - - - 0x014F0A 05:AEFA: 15 AF     .word ofs_056_AF16_03 - $01



ofs_099_AEFC_05:
C - - - - - 0x014F0C 05:AEFC: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014F0F 05:AEFF: B9 F5 AE  LDA tbl_AEF4 + $01,Y
C - - - - - 0x014F12 05:AF02: 48        PHA
C - - - - - 0x014F13 05:AF03: B9 F4 AE  LDA tbl_AEF4,Y
C - - - - - 0x014F16 05:AF06: 48        PHA
C - - - - - 0x014F17 05:AF07: 60        RTS



ofs_056_AF08_00:
ofs_056_AF08_01:
ofs_056_AF08_02:
C - - - - - 0x014F18 05:AF08: 20 55 97  JSR sub_0x01B765
C - - - - - 0x014F1B 05:AF0B: D0 09     BNE bra_AF16
C - - - - - 0x014F1D 05:AF0D: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014F20 05:AF10: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014F23 05:AF13: 4C D9 AF  JMP loc_AFD9
bra_AF16:
ofs_056_AF16_03:
C - - - - - 0x014F26 05:AF16: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x014F29 05:AF19: 4C AF AF  JMP loc_AFAF



ofs_099_AF1C_06:
C - - - - - 0x014F2C 05:AF1C: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014F2F 05:AF1F: D0 09     BNE bra_AF2A
C - - - - - 0x014F31 05:AF21: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x014F34 05:AF24: 20 E2 98  JSR sub_0x01B8F2    ; possible PLA PLA
C - - - - - 0x014F37 05:AF27: 4C D4 AF  JMP loc_AFD4
bra_AF2A:
C - - - - - 0x014F3A 05:AF2A: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x014F3D 05:AF2D: 20 C1 AF  JSR sub_AFC1
C - - - - - 0x014F40 05:AF30: A9 07     LDA #$07
C - - - - - 0x014F42 05:AF32: AC 30 05  LDY ram_0530_t02_flag
C - - - - - 0x014F45 05:AF35: F0 02     BEQ bra_AF39
- - - - - - 0x014F47 05:AF37: A9 03     LDA #$03
bra_AF39:
C - - - - - 0x014F49 05:AF39: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x014F4C 05:AF3C: 4C 71 AD  JMP loc_AD71



tbl_AF3F:
- D 1 - - - 0x014F4F 05:AF3F: 52 AF     .word ofs_057_AF53_00 - $01
- D 1 - - - 0x014F51 05:AF41: 62 AE     .word ofs_057_AE63_01 - $01
- D 1 - - - 0x014F53 05:AF43: 69 AE     .word ofs_057_AE6A_02 - $01
- D 1 - - - 0x014F55 05:AF45: AE AF     .word ofs_057_AFAF_03 - $01



ofs_099_AF47_07:
C - - - - - 0x014F57 05:AF47: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014F5A 05:AF4A: B9 40 AF  LDA tbl_AF3F + $01,Y
C - - - - - 0x014F5D 05:AF4D: 48        PHA
C - - - - - 0x014F5E 05:AF4E: B9 3F AF  LDA tbl_AF3F,Y
C - - - - - 0x014F61 05:AF51: 48        PHA
C - - - - - 0x014F62 05:AF52: 60        RTS



ofs_057_AF53_00:
C - - - - - 0x014F63 05:AF53: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x014F66 05:AF56: 90 03     BCC bra_AF5B
- - - - - - 0x014F68 05:AF58: 20 D6 9B  JSR sub_0x01BBE6_EOR_obj_flag
bra_AF5B:
C - - - - - 0x014F6B 05:AF5B: 20 00 9E  JSR sub_0x01BE10
C - - - - - 0x014F6E 05:AF5E: 4C A5 98  JMP loc_0x01B8B5


; bzk garbage
- - - - - - 0x014F71 05:AF61: 60        RTS



tbl_AF62:
- D 1 - - - 0x014F72 05:AF62: 82 9D     .word ofs_058_0x01BD93_00 - $01
- D 1 - - - 0x014F74 05:AF64: A8 9D     .word ofs_058_0x01BDB9_01 - $01
- D 1 - - - 0x014F76 05:AF66: B9 9D     .word ofs_058_0x01BDCA_02 - $01
- D 1 - - - 0x014F78 05:AF68: 75 AF     .word ofs_058_AF76_03 - $01



ofs_099_AF6A_08:
C - - - - - 0x014F7A 05:AF6A: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014F7D 05:AF6D: B9 63 AF  LDA tbl_AF62 + $01,Y
C - - - - - 0x014F80 05:AF70: 48        PHA
C - - - - - 0x014F81 05:AF71: B9 62 AF  LDA tbl_AF62,Y
C - - - - - 0x014F84 05:AF74: 48        PHA
C - - - - - 0x014F85 05:AF75: 60        RTS



ofs_058_AF76_03:
C - - - - - 0x014F86 05:AF76: 20 AF AF  JSR sub_AFAF
C - - - - - 0x014F89 05:AF79: EE 87 04  INC ram_0487_t02
C - - - - - 0x014F8C 05:AF7C: 4C AC 9E  JMP loc_0x01BEBC



tbl_AF7F:
- D 1 - - - 0x014F8F 05:AF7F: A8 9D     .word ofs_059_0x01BDB9_00 - $01
- D 1 - - - 0x014F91 05:AF81: B9 9D     .word ofs_059_0x01BDCA_01 - $01
- D 1 - - - 0x014F93 05:AF83: C1 9D     .word ofs_059_0x01BDD2_02 - $01
- D 1 - - - 0x014F95 05:AF85: D7 9D     .word ofs_059_0x01BDE8_03 - $01
- D 1 - - - 0x014F97 05:AF87: 74 9D     .word ofs_059_0x01BD85_04 - $01



ofs_099_AF89_09:
C - - - - - 0x014F99 05:AF89: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x014F9C 05:AF8C: B9 80 AF  LDA tbl_AF7F + $01,Y
C - - - - - 0x014F9F 05:AF8F: 48        PHA
C - - - - - 0x014FA0 05:AF90: B9 7F AF  LDA tbl_AF7F,Y
C - - - - - 0x014FA3 05:AF93: 48        PHA
C - - - - - 0x014FA4 05:AF94: 60        RTS



sub_AF95:
C - - - - - 0x014FA5 05:AF95: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014FA8 05:AF98: F0 14     BEQ bra_AFAE_RTS
C - - - - - 0x014FAA 05:AF9A: C9 06     CMP #$06
C - - - - - 0x014FAC 05:AF9C: F0 10     BEQ bra_AFAE_RTS
C - - - - - 0x014FAE 05:AF9E: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x014FB1 05:AFA1: 90 0B     BCC bra_AFAE_RTS
C - - - - - 0x014FB3 05:AFA3: A9 06     LDA #$06
C - - - - - 0x014FB5 05:AFA5: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x014FB8 05:AFA8: 20 CA AF  JSR sub_AFCA
; bzk optimize, JMP
C - - - - - 0x014FBB 05:AFAB: 20 72 9E  JSR sub_0x01BE82
bra_AFAE_RTS:
C - - - - - 0x014FBE 05:AFAE: 60        RTS



loc_AFAF:
sub_AFAF:
ofs_054_AFAF_05:
ofs_057_AFAF_03:
C D 1 - - - 0x014FBF 05:AFAF: 20 71 AD  JSR sub_AD71
C - - - - - 0x014FC2 05:AFB2: A9 00     LDA #$00
C - - - - - 0x014FC4 05:AFB4: 9D D9 04  STA ram_04D9_obj,X
sub_AFB7:
C - - - - - 0x014FC7 05:AFB7: A9 00     LDA #$00
bra_AFB9:
C - - - - - 0x014FC9 05:AFB9: 4C 15 9B  JMP loc_0x01BB25



loc_AFBC:
C D 1 - - - 0x014FCC 05:AFBC: A9 00     LDA #$00
C - - - - - 0x014FCE 05:AFBE: 4C 2C 9B  JMP loc_0x01BB3C



sub_AFC1:
C - - - - - 0x014FD1 05:AFC1: A9 06     LDA #$06
C - - - - - 0x014FD3 05:AFC3: D0 F4     BNE bra_AFB9    ; jmp



sub_AFC5:
- - - - - - 0x014FD5 05:AFC5: A9 06     LDA #$06
- - - - - - 0x014FD7 05:AFC7: 4C 2C 9B  JMP loc_0x01BB3C



sub_AFCA:
C - - - - - 0x014FDA 05:AFCA: A9 0E     LDA #$0E
C - - - - - 0x014FDC 05:AFCC: 4C 15 9B  JMP loc_0x01BB25



sub_AFCF:
loc_AFCF:
C D 1 - - - 0x014FDF 05:AFCF: A0 68     LDY #$68
C - - - - - 0x014FE1 05:AFD1: 4C 8A B9  JMP loc_B98A



loc_AFD4:
C D 1 - - - 0x014FE4 05:AFD4: A9 40     LDA #$40
C - - - - - 0x014FE6 05:AFD6: 4C 95 B9  JMP loc_B995



loc_AFD9:
C D 1 - - - 0x014FE9 05:AFD9: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x014FEC 05:AFDC: C9 03     CMP #$03
C - - - - - 0x014FEE 05:AFDE: F0 05     BEQ bra_AFE5
C - - - - - 0x014FF0 05:AFE0: A9 60     LDA #$60
C - - - - - 0x014FF2 05:AFE2: 4C 95 B9  JMP loc_B995
bra_AFE5:
loc_AFE5:
C D 1 - - - 0x014FF5 05:AFE5: A0 A8     LDY #$A8
C - - - - - 0x014FF7 05:AFE7: 4C 8A B9  JMP loc_B98A



ofs_100_AFEA_00:
C - - - - - 0x014FFA 05:AFEA: AD 53 04  LDA ram_0453_t02
C - - - - - 0x014FFD 05:AFED: C9 C6     CMP #$C6
C - - - - - 0x014FFF 05:AFEF: F0 03     BEQ bra_AFF4
C - - - - - 0x015001 05:AFF1: 4C F5 B2  JMP loc_B2F5
bra_AFF4:
C - - - - - 0x015004 05:AFF4: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x015007 05:AFF7: 30 15     BMI bra_B00E
C - - - - - 0x015009 05:AFF9: A0 00     LDY #$00
C - - - - - 0x01500B 05:AFFB: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01500E 05:AFFE: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x015010 05:B000: F0 08     BEQ bra_B00A
C - - - - - 0x015012 05:B002: 1E D9 04  ASL ram_04D9_obj,X
C - - - - - 0x015015 05:B005: 20 B7 9E  JSR sub_0x01BEC7
C - - - - - 0x015018 05:B008: A0 80     LDY #$80
bra_B00A:
C - - - - - 0x01501A 05:B00A: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01501D 05:B00D: 60        RTS
bra_B00E:
loc_B00E:
C D 1 - - - 0x01501E 05:B00E: 20 5C 9C  JSR sub_0x01BC6C    ; possible PLA PLA
C - - - - - 0x015021 05:B011: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x015024 05:B014: C9 01     CMP #$01
C - - - - - 0x015026 05:B016: F0 1B     BEQ bra_B033
C - - - - - 0x015028 05:B018: C9 02     CMP #$02
C - - - - - 0x01502A 05:B01A: F0 1E     BEQ bra_B03A
C - - - - - 0x01502C 05:B01C: A2 01     LDX #$01
C - - - - - 0x01502E 05:B01E: A5 75     LDA ram_0075_t03_obj_id
C - - - - - 0x015030 05:B020: C9 08     CMP #$08
C - - - - - 0x015032 05:B022: F0 07     BEQ bra_B02B
C - - - - - 0x015034 05:B024: AD 79 05  LDA ram_obj_hp
C - - - - - 0x015037 05:B027: C9 0A     CMP #$0A
C - - - - - 0x015039 05:B029: 90 21     BCC bra_B04C
bra_B02B:
C - - - - - 0x01503B 05:B02B: E8        INX
C - - - - - 0x01503C 05:B02C: A0 08     LDY #$08
C - - - - - 0x01503E 05:B02E: 20 38 97  JSR sub_0x01B748_damage
C - - - - - 0x015041 05:B031: F0 19     BEQ bra_B04C
bra_B033:
C - - - - - 0x015043 05:B033: A2 03     LDX #$03
C - - - - - 0x015045 05:B035: AD 30 05  LDA ram_0530_t02_flag
C - - - - - 0x015048 05:B038: D0 12     BNE bra_B04C
bra_B03A:
C - - - - - 0x01504A 05:B03A: A2 04     LDX #$04
C - - - - - 0x01504C 05:B03C: 20 7A 97  JSR sub_0x01B78A
C - - - - - 0x01504F 05:B03F: E0 05     CPX #$05
C - - - - - 0x015051 05:B041: D0 09     BNE bra_B04C
C - - - - - 0x015053 05:B043: AD 79 05  LDA ram_obj_hp
C - - - - - 0x015056 05:B046: C9 15     CMP #$15
C - - - - - 0x015058 05:B048: B0 02     BCS bra_B04C
C - - - - - 0x01505A 05:B04A: A2 07     LDX #$07
bra_B04C:
C - - - - - 0x01505C 05:B04C: 8A        TXA
C - - - - - 0x01505D 05:B04D: A6 79     LDX ram_0079_obj_index
C - - - - - 0x01505F 05:B04F: 9D D9 04  STA ram_04D9_obj,X
sub_B052:   ; bzk optimize
C - - - - - 0x015062 05:B052: 4C A5 9C  JMP loc_0x01BCB5



tbl_B055:
- D 1 - - - 0x015065 05:B055: 78 B0     .word ofs_048_B079_00 - $01
- D 1 - - - 0x015067 05:B057: 8C B0     .word ofs_048_B08D_01 - $01
- D 1 - - - 0x015069 05:B059: 93 B0     .word ofs_048_B094_02 - $01
- D 1 - - - 0x01506B 05:B05B: 9C B0     .word ofs_048_B09D_03 - $01
- D 1 - - - 0x01506D 05:B05D: AC B0     .word ofs_048_B0AD_04 - $01
- D 1 - - - 0x01506F 05:B05F: 8C B0     .word ofs_048_B08D_05 - $01
- D 1 - - - 0x015071 05:B061: 93 B0     .word ofs_048_B094_06 - $01
- D 1 - - - 0x015073 05:B063: C2 B0     .word ofs_048_B0C3_07 - $01



ofs_100_B065_01:
C - - - - - 0x015075 05:B065: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x015078 05:B068: F0 03     BEQ bra_B06D
C - - - - - 0x01507A 05:B06A: 4C 7A 9D  JMP loc_0x01BD8A
bra_B06D:
C - - - - - 0x01507D 05:B06D: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015080 05:B070: B9 56 B0  LDA tbl_B055 + $01,Y
C - - - - - 0x015083 05:B073: 48        PHA
C - - - - - 0x015084 05:B074: B9 55 B0  LDA tbl_B055,Y
C - - - - - 0x015087 05:B077: 48        PHA
C - - - - - 0x015088 05:B078: 60        RTS



ofs_048_B079_00:
C - - - - - 0x015089 05:B079: EE A1 04  INC ram_04A1_t02
C - - - - - 0x01508C 05:B07C: A9 00     LDA #$00
C - - - - - 0x01508E 05:B07E: 8D BB 04  STA ram_04BB_t02
ofs_061_B081_00:
C - - - - - 0x015091 05:B081: 20 8E 9C  JSR sub_0x01BC9E
C - - - - - 0x015094 05:B084: 20 4D B2  JSR sub_B24D
C - - - - - 0x015097 05:B087: 20 8E 9C  JSR sub_0x01BC9E
C - - - - - 0x01509A 05:B08A: 4C F6 9D  JMP loc_0x01BE06



ofs_048_B08D_01:
ofs_048_B08D_05:
ofs_061_B08D_01:
ofs_063_B08D_01:
ofs_064_B08D_02:
ofs_065_B08D_01:
ofs_065_B08D_04:
ofs_065_B08D_07:
C - - - - - 0x01509D 05:B08D: 20 72 98  JSR sub_0x01B882
C - - - - - 0x0150A0 05:B090: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x0150A3 05:B093: 60        RTS



ofs_048_B094_02:
ofs_048_B094_06:
C - - - - - 0x0150A4 05:B094: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x0150A7 05:B097: 20 52 98  JSR sub_0x01B862
C - - - - - 0x0150AA 05:B09A: 4C A5 98  JMP loc_0x01B8B5



ofs_048_B09D_03:
C - - - - - 0x0150AD 05:B09D: A9 80     LDA #$80
C - - - - - 0x0150AF 05:B09F: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0150B2 05:B0A2: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x0150B5 05:B0A5: A9 0C     LDA #$0C
C - - - - - 0x0150B7 05:B0A7: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x0150BA 05:B0AA: EE 60 04  INC ram_0460
ofs_048_B0AD_04:
C - - - - - 0x0150BD 05:B0AD: DE 83 05  DEC ram_0583_obj,X
C - - - - - 0x0150C0 05:B0B0: F0 03     BEQ bra_B0B5
C - - - - - 0x0150C2 05:B0B2: 4C 6B 9A  JMP loc_0x01BA7B
bra_B0B5:
C - - - - - 0x0150C5 05:B0B5: A9 81     LDA #$81
C - - - - - 0x0150C7 05:B0B7: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0150CA 05:B0BA: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x0150CC 05:B0BC: A9 00     LDA #$00
C - - - - - 0x0150CE 05:B0BE: 8D 3E 04  STA ram_043A_obj_flags + $03 + $01
C - - - - - 0x0150D1 05:B0C1: C6 78     DEC ram_0078_t01_loop_counter
ofs_048_B0C3_07:
C - - - - - 0x0150D3 05:B0C3: 20 4D B2  JSR sub_B24D
C - - - - - 0x0150D6 05:B0C6: 20 E5 9B  JSR sub_0x01BBF5
C - - - - - 0x0150D9 05:B0C9: A9 85     LDA #$85
C - - - - - 0x0150DB 05:B0CB: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x0150DE 05:B0CE: A9 34     LDA #$34
C - - - - - 0x0150E0 05:B0D0: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0150E3 05:B0D3: A0 02     LDY #$02
C - - - - - 0x0150E5 05:B0D5: 4C 29 9E  JMP loc_0x01BE39_set_speed_Y



tbl_B0D8:
- D 1 - - - 0x0150E8 05:B0D8: E9 B0     .word ofs_060_B0EA_00 - $01
- D 1 - - - 0x0150EA 05:B0DA: F9 B0     .word ofs_060_B0FA_01 - $01
- - - - - - 0x0150EC 05:B0DC: 10 B1     .word ofs_060_B111_02 - $01



ofs_100_B0DE_02:
C - - - - - 0x0150EE 05:B0DE: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0150F1 05:B0E1: B9 D9 B0  LDA tbl_B0D8 + $01,Y
C - - - - - 0x0150F4 05:B0E4: 48        PHA
C - - - - - 0x0150F5 05:B0E5: B9 D8 B0  LDA tbl_B0D8,Y
C - - - - - 0x0150F8 05:B0E8: 48        PHA
bra_B0E9_RTS:
C - - - - - 0x0150F9 05:B0E9: 60        RTS



ofs_060_B0EA_00:
C - - - - - 0x0150FA 05:B0EA: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x0150FD 05:B0ED: B0 28     BCS bra_B117
C - - - - - 0x0150FF 05:B0EF: 20 72 9E  JSR sub_0x01BE82
C - - - - - 0x015102 05:B0F2: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015105 05:B0F5: A9 12     LDA #$12
C - - - - - 0x015107 05:B0F7: 4C 2C 9B  JMP loc_0x01BB3C
ofs_060_B0FA_01:
C - - - - - 0x01510A 05:B0FA: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x01510D 05:B0FD: B0 18     BCS bra_B117
C - - - - - 0x01510F 05:B0FF: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x015112 05:B102: C9 82     CMP #$82
C - - - - - 0x015114 05:B104: D0 0B     BNE bra_B111
- - - - - - 0x015116 05:B106: 20 8C 9B  JSR sub_0x01BB9C
- - - - - - 0x015119 05:B109: 20 62 97  JSR sub_0x01B772
- - - - - - 0x01511C 05:B10C: F0 DB     BEQ bra_B0E9_RTS
- - - - - - 0x01511E 05:B10E: FE 83 05  INC ram_0583_obj,X
bra_B111:
ofs_060_B111_02:
C - - - - - 0x015121 05:B111: 20 94 9E  JSR sub_0x01BEA4
C - - - - - 0x015124 05:B114: 20 83 98  JSR sub_0x01B893
bra_B117:
C - - - - - 0x015127 05:B117: A9 01     LDA #$01
bra_B119:
C - - - - - 0x015129 05:B119: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01512C 05:B11C: 4C 45 B2  JMP loc_B245



tbl_B11F:
- D 1 - - - 0x01512F 05:B11F: 80 B0     .word ofs_061_B081_00 - $01
- D 1 - - - 0x015131 05:B121: 8C B0     .word ofs_061_B08D_01 - $01
- D 1 - - - 0x015133 05:B123: 30 B1     .word ofs_061_B131_02 - $01



ofs_100_B125_03:
C - - - - - 0x015135 05:B125: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015138 05:B128: B9 20 B1  LDA tbl_B11F + $01,Y
C - - - - - 0x01513B 05:B12B: 48        PHA
C - - - - - 0x01513C 05:B12C: B9 1F B1  LDA tbl_B11F,Y
C - - - - - 0x01513F 05:B12F: 48        PHA
C - - - - - 0x015140 05:B130: 60        RTS



ofs_061_B131_02:
C - - - - - 0x015141 05:B131: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x015144 05:B134: 20 52 98  JSR sub_0x01B862
C - - - - - 0x015147 05:B137: A9 02     LDA #$02
C - - - - - 0x015149 05:B139: D0 DE     BNE bra_B119    ; jmp



tbl_B13B:
- D 1 - - - 0x01514B 05:B13B: 4C B1     .word ofs_062_B14D_00 - $01
- D 1 - - - 0x01514D 05:B13D: 54 B1     .word ofs_062_B155_01 - $01
- D 1 - - - 0x01514F 05:B13F: 5A B1     .word ofs_062_B15B_02 - $01



ofs_100_B141_04:
C - - - - - 0x015151 05:B141: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015154 05:B144: B9 3C B1  LDA tbl_B13B + $01,Y
C - - - - - 0x015157 05:B147: 48        PHA
C - - - - - 0x015158 05:B148: B9 3B B1  LDA tbl_B13B,Y
C - - - - - 0x01515B 05:B14B: 48        PHA
C - - - - - 0x01515C 05:B14C: 60        RTS



ofs_062_B14D_00:
C - - - - - 0x01515D 05:B14D: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015160 05:B150: A9 08     LDA #$08
C - - - - - 0x015162 05:B152: 4C 15 9B  JMP loc_0x01BB25



ofs_062_B155_01:
C - - - - - 0x015165 05:B155: 20 F3 98  JSR sub_0x01B903
C - - - - - 0x015168 05:B158: 4C 76 BB  JMP loc_BB76



ofs_062_B15B_02:
C - - - - - 0x01516B 05:B15B: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x01516E 05:B15E: CE 94 04  DEC ram_0494_t02
C - - - - - 0x015171 05:B161: 4C 42 B2  JMP loc_B242



tbl_B164:
- D 1 - - - 0x015174 05:B164: 7A B1     .word ofs_063_B17B_00 - $01
- D 1 - - - 0x015176 05:B166: 8C B0     .word ofs_063_B08D_01 - $01
- D 1 - - - 0x015178 05:B168: 95 B1     .word ofs_063_B196_02 - $01
- D 1 - - - 0x01517A 05:B16A: A5 B1     .word ofs_063_B1A6_03 - $01



ofs_100_B16C_05:
C - - - - - 0x01517C 05:B16C: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x01517F 05:B16F: B9 65 B1  LDA tbl_B164 + $01,Y
C - - - - - 0x015182 05:B172: 48        PHA
C - - - - - 0x015183 05:B173: B9 64 B1  LDA tbl_B164,Y
C - - - - - 0x015186 05:B176: 48        PHA
C - - - - - 0x015187 05:B177: 60        RTS



ofs_065_B178_03:
C - - - - - 0x015188 05:B178: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
ofs_063_B17B_00:
ofs_065_B17B_00:
C - - - - - 0x01518B 05:B17B: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01518E 05:B17E: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x015191 05:B181: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x015194 05:B184: A9 06     LDA #$06
C - - - - - 0x015196 05:B186: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x015199 05:B189: 20 81 BB  JSR sub_BB81
C - - - - - 0x01519C 05:B18C: A9 2C     LDA #$2C
C - - - - - 0x01519E 05:B18E: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0151A1 05:B191: A9 60     LDA #$60
C - - - - - 0x0151A3 05:B193: 4C 5B 9E  JMP loc_0x01BE6B



ofs_063_B196_02:
ofs_064_B196_03:
ofs_065_B196_02:
ofs_065_B196_05:
ofs_065_B196_08:
C - - - - - 0x0151A6 05:B196: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x0151A9 05:B199: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x0151AC 05:B19C: A9 00     LDA #$00
C - - - - - 0x0151AE 05:B19E: 8D 94 04  STA ram_0494_t02
C - - - - - 0x0151B1 05:B1A1: A9 0A     LDA #$0A
C - - - - - 0x0151B3 05:B1A3: 4C 2C 9B  JMP loc_0x01BB3C



ofs_063_B1A6_03:
ofs_064_B1A6_04:
ofs_065_B1A6_09:
C - - - - - 0x0151B6 05:B1A6: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x0151B9 05:B1A9: 4C 42 B2  JMP loc_B242



tbl_B1AC:
- D 1 - - - 0x0151BC 05:B1AC: C1 B1     .word ofs_064_B1C2_00 - $01
- - - - - - 0x0151BE 05:B1AE: DB B1     .word ofs_064_B1DC_01 - $01
- D 1 - - - 0x0151C0 05:B1B0: 8C B0     .word ofs_064_B08D_02 - $01
- D 1 - - - 0x0151C2 05:B1B2: 95 B1     .word ofs_064_B196_03 - $01
- D 1 - - - 0x0151C4 05:B1B4: A5 B1     .word ofs_064_B1A6_04 - $01



ofs_100_B1B6_06:
C - - - - - 0x0151C6 05:B1B6: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0151C9 05:B1B9: B9 AD B1  LDA tbl_B1AC + $01,Y
C - - - - - 0x0151CC 05:B1BC: 48        PHA
C - - - - - 0x0151CD 05:B1BD: B9 AC B1  LDA tbl_B1AC,Y
C - - - - - 0x0151D0 05:B1C0: 48        PHA
bra_B1C1_RTS:
C - - - - - 0x0151D1 05:B1C1: 60        RTS



ofs_064_B1C2_00:
C - - - - - 0x0151D2 05:B1C2: AD 30 05  LDA ram_0530_t02_flag
C - - - - - 0x0151D5 05:B1C5: D0 1B     BNE bra_B1E2
; bzk optimize
C - - - - - 0x0151D7 05:B1C7: AD A8 00  LDA a: ram_plr_index
; 
C - - - - - 0x0151DA 05:B1CA: D0 05     BNE bra_B1D1
C - - - - - 0x0151DC 05:B1CC: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x0151DF 05:B1CF: 10 F0     BPL bra_B1C1_RTS
bra_B1D1:
- - - - - - 0x0151E1 05:B1D1: 20 72 9E  JSR sub_0x01BE82
- - - - - - 0x0151E4 05:B1D4: FE F3 04  INC ram_04F3_obj,X
- - - - - - 0x0151E7 05:B1D7: A9 02     LDA #$02
- - - - - - 0x0151E9 05:B1D9: 4C 15 9B  JMP loc_0x01BB25



ofs_064_B1DC_01:
- - - - - - 0x0151EC 05:B1DC: 20 0A 99  JSR sub_0x01B91A
- - - - - - 0x0151EF 05:B1DF: 4C 42 B2  JMP loc_B242



bra_B1E2:
C - - - - - 0x0151F2 05:B1E2: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x0151F5 05:B1E5: 20 4D B2  JSR sub_B24D
C - - - - - 0x0151F8 05:B1E8: 4C E3 9D  JMP loc_0x01BDF3



tbl_B1EB:
- D 1 - - - 0x0151FB 05:B1EB: 7A B1     .word ofs_065_B17B_00 - $01
- D 1 - - - 0x0151FD 05:B1ED: 8C B0     .word ofs_065_B08D_01 - $01
- D 1 - - - 0x0151FF 05:B1EF: 95 B1     .word ofs_065_B196_02 - $01
- D 1 - - - 0x015201 05:B1F1: 77 B1     .word ofs_065_B178_03 - $01
- D 1 - - - 0x015203 05:B1F3: 8C B0     .word ofs_065_B08D_04 - $01
- - - - - - 0x015205 05:B1F5: 95 B1     .word ofs_065_B196_05 - $01
- - - - - - 0x015207 05:B1F7: 0A B2     .word ofs_065_B20B_06 - $01
- - - - - - 0x015209 05:B1F9: 8C B0     .word ofs_065_B08D_07 - $01
- - - - - - 0x01520B 05:B1FB: 95 B1     .word ofs_065_B196_08 - $01
- - - - - - 0x01520D 05:B1FD: A5 B1     .word ofs_065_B1A6_09 - $01



ofs_100_B1FF_07:
C - - - - - 0x01520F 05:B1FF: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015212 05:B202: B9 EC B1  LDA tbl_B1EB + $01,Y
C - - - - - 0x015215 05:B205: 48        PHA
C - - - - - 0x015216 05:B206: B9 EB B1  LDA tbl_B1EB,Y
C - - - - - 0x015219 05:B209: 48        PHA
C - - - - - 0x01521A 05:B20A: 60        RTS



ofs_065_B20B_06:
- - - - - - 0x01521B 05:B20B: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
- - - - - - 0x01521E 05:B20E: 20 4D B2  JSR sub_B24D
- - - - - - 0x015221 05:B211: 4C F6 9D  JMP loc_0x01BE06



tbl_B214:
- D 1 - - - 0x015224 05:B214: A8 9D     .word ofs_066_0x01BDB9_00 - $01
- D 1 - - - 0x015226 05:B216: B9 9D     .word ofs_066_0x01BDCA_01 - $01
- D 1 - - - 0x015228 05:B218: 25 B2     .word ofs_066_B226_02 - $01



ofs_100_B21A_08:
C - - - - - 0x01522A 05:B21A: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x01522D 05:B21D: B9 15 B2  LDA tbl_B214 + $01,Y
C - - - - - 0x015230 05:B220: 48        PHA
C - - - - - 0x015231 05:B221: B9 14 B2  LDA tbl_B214,Y
C - - - - - 0x015234 05:B224: 48        PHA
C - - - - - 0x015235 05:B225: 60        RTS



ofs_066_B226_02:
C - - - - - 0x015236 05:B226: 20 42 B2  JSR sub_B242
C - - - - - 0x015239 05:B229: 4C AC 9E  JMP loc_0x01BEBC



tbl_B22C:
- D 1 - - - 0x01523C 05:B22C: A8 9D     .word ofs_067_0x01BDB9_00 - $01
- D 1 - - - 0x01523E 05:B22E: B9 9D     .word ofs_067_0x01BDCA_01 - $01
- D 1 - - - 0x015240 05:B230: C1 9D     .word ofs_067_0x01BDD2_02 - $01
- D 1 - - - 0x015242 05:B232: D7 9D     .word ofs_067_0x01BDE8_03 - $01
- D 1 - - - 0x015244 05:B234: 74 9D     .word ofs_067_0x01BD85_04 - $01



ofs_100_B236_09:
C - - - - - 0x015246 05:B236: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015249 05:B239: B9 2D B2  LDA tbl_B22C + $01,Y
C - - - - - 0x01524C 05:B23C: 48        PHA
C - - - - - 0x01524D 05:B23D: B9 2C B2  LDA tbl_B22C,Y
C - - - - - 0x015250 05:B240: 48        PHA
C - - - - - 0x015251 05:B241: 60        RTS



loc_B242:
sub_B242:
C D 1 - - - 0x015252 05:B242: 20 52 B0  JSR sub_B052
loc_B245:
sub_B245:
C D 1 - - - 0x015255 05:B245: A9 00     LDA #$00
C - - - - - 0x015257 05:B247: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01525A 05:B24A: 4C 15 9B  JMP loc_0x01BB25



sub_B24D:
C - - - - - 0x01525D 05:B24D: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015260 05:B250: A9 04     LDA #$04
C - - - - - 0x015262 05:B252: 4C 15 9B  JMP loc_0x01BB25



loc_B255:
C D 1 - - - 0x015265 05:B255: AD A1 04  LDA ram_04A1_t02
C - - - - - 0x015268 05:B258: D0 4B     BNE bra_B2A5
C - - - - - 0x01526A 05:B25A: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01526D 05:B25D: 29 20     AND #$20
C - - - - - 0x01526F 05:B25F: F0 05     BEQ bra_B266
C - - - - - 0x015271 05:B261: DE 65 05  DEC ram_0565_obj,X
C - - - - - 0x015274 05:B264: D0 3E     BNE bra_B2A4_RTS
bra_B266:
C - - - - - 0x015276 05:B266: BD 7E 04  LDA ram_pos_Y_fr_obj,X
C - - - - - 0x015279 05:B269: D0 28     BNE bra_B293
C - - - - - 0x01527B 05:B26B: BC 8B 04  LDY ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01527E 05:B26E: C0 B8     CPY #$B8
C - - - - - 0x015280 05:B270: F0 0C     BEQ bra_B27E
C - - - - - 0x015282 05:B272: C0 28     CPY #$28
C - - - - - 0x015284 05:B274: D0 1D     BNE bra_B293
C - - - - - 0x015286 05:B276: FE 4E 05  INC ram_054E_obj,X
C - - - - - 0x015289 05:B279: A9 3F     LDA #$3F
C - - - - - 0x01528B 05:B27B: 9D 65 05  STA ram_0565_obj,X
bra_B27E:
C - - - - - 0x01528E 05:B27E: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x015291 05:B281: 49 FF     EOR #$FF
C - - - - - 0x015293 05:B283: 18        CLC
C - - - - - 0x015294 05:B284: 69 01     ADC #< $0001
C - - - - - 0x015296 05:B286: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x015299 05:B289: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x01529C 05:B28C: 49 FF     EOR #$FF
C - - - - - 0x01529E 05:B28E: 69 00     ADC #> $0001
C - - - - - 0x0152A0 05:B290: 9D 27 05  STA ram_spd_Y_lo_obj,X
bra_B293:
C - - - - - 0x0152A3 05:B293: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x0152A6 05:B296: F0 0C     BEQ bra_B2A4_RTS
C - - - - - 0x0152A8 05:B298: DE 4E 05  DEC ram_054E_obj,X
C - - - - - 0x0152AB 05:B29B: A5 CB     LDA ram_00CB_t01
C - - - - - 0x0152AD 05:B29D: C9 03     CMP #$03
C - - - - - 0x0152AF 05:B29F: B0 03     BCS bra_B2A4_RTS
; bzk optimize, JMP
C - - - - - 0x0152B1 05:B2A1: 20 B1 B2  JSR sub_B2B1
bra_B2A4_RTS:
C - - - - - 0x0152B4 05:B2A4: 60        RTS
bra_B2A5:
loc_B2A5:
C D 1 - - - 0x0152B5 05:B2A5: BC 64 04  LDY ram_pos_X_lo_obj + $03,X
C - - - - - 0x0152B8 05:B2A8: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0152BB 05:B2AB: 20 78 9E  JSR sub_0x01BE88
C - - - - - 0x0152BE 05:B2AE: 4C DC 9A  JMP loc_0x01BAEC



sub_B2B1:
; in
    ; X = 
C - - - - - 0x0152C1 05:B2B1: A9 00     LDA #$00
C - - - - - 0x0152C3 05:B2B3: AC 7A 04  LDY ram_047A_t02
C - - - - - 0x0152C6 05:B2B6: 10 03     BPL bra_B2BB
C - - - - - 0x0152C8 05:B2B8: 8A        TXA
; * 04
C - - - - - 0x0152C9 05:B2B9: 0A        ASL
C - - - - - 0x0152CA 05:B2BA: 0A        ASL
bra_B2BB:
C - - - - - 0x0152CB 05:B2BB: A8        TAY
C - - - - - 0x0152CC 05:B2BC: 8C 87 04  STY ram_0487_t03_table_index
C - - - - - 0x0152CF 05:B2BF: B9 D7 B2  LDA tbl_B2D7,Y
C - - - - - 0x0152D2 05:B2C2: 20 E7 B2  JSR sub_B2E7
C - - - - - 0x0152D5 05:B2C5: AC 87 04  LDY ram_0487_t03_table_index
C - - - - - 0x0152D8 05:B2C8: B9 D8 B2  LDA tbl_B2D7 + $01,Y
C - - - - - 0x0152DB 05:B2CB: 20 E7 B2  JSR sub_B2E7
C - - - - - 0x0152DE 05:B2CE: AC 87 04  LDY ram_0487_t03_table_index
C - - - - - 0x0152E1 05:B2D1: B9 D9 B2  LDA tbl_B2D7 + $02,Y
C - - - - - 0x0152E4 05:B2D4: 4C E7 B2  JMP loc_B2E7



tbl_B2D7:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- placeholder
;                                              |    |    |    |
- D 1 - - - 0x0152E7 05:B2D7: B0        .byte $B0, $B4, $B8, $00   ; 00 
- D 1 - - - 0x0152EB 05:B2DB: BC        .byte $BC, $C0, $C4, $00   ; 01 
- D 1 - - - 0x0152EF 05:B2DF: C8        .byte $C8, $CC, $C4, $00   ; 02 
- D 1 - - - 0x0152F3 05:B2E3: D0        .byte $D0, $D4, $D8, $00   ; 03 



sub_B2E7:
loc_B2E7:
C D 1 - - - 0x0152F7 05:B2E7: 20 5F B9  JSR sub_B95F
C - - - - - 0x0152FA 05:B2EA: A4 7A     LDY ram_007A_t03_object_index
C - - - - - 0x0152FC 05:B2EC: B9 64 04  LDA ram_pos_X_lo_obj + $03,Y
C - - - - - 0x0152FF 05:B2EF: A8        TAY
C - - - - - 0x015300 05:B2F0: A9 08     LDA #$08
C - - - - - 0x015302 05:B2F2: 4C 78 9E  JMP loc_0x01BE88



loc_B2F5:
C D 1 - - - 0x015305 05:B2F5: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x015308 05:B2F8: 10 03     BPL bra_B2FD
C - - - - - 0x01530A 05:B2FA: 4C 0E B0  JMP loc_B00E
bra_B2FD:
C - - - - - 0x01530D 05:B2FD: 0A        ASL
C - - - - - 0x01530E 05:B2FE: A8        TAY
C - - - - - 0x01530F 05:B2FF: B9 09 B3  LDA tbl_B308 + $01,Y
C - - - - - 0x015312 05:B302: 48        PHA
C - - - - - 0x015313 05:B303: B9 08 B3  LDA tbl_B308,Y
C - - - - - 0x015316 05:B306: 48        PHA
ofs_103_B307_03_RTS:
C - - - - - 0x015317 05:B307: 60        RTS



tbl_B308:
- D 1 - - - 0x015318 05:B308: 15 B3     .word ofs_103_B316_00 - $01
- D 1 - - - 0x01531A 05:B30A: 1F B3     .word ofs_103_B320_01 - $01
- D 1 - - - 0x01531C 05:B30C: 1B B3     .word ofs_103_B31C_02 - $01
- D 1 - - - 0x01531E 05:B30E: 06 B3     .word ofs_103_B307_03_RTS - $01
- D 1 - - - 0x015320 05:B310: 22 B3     .word ofs_103_B323_04 - $01
- D 1 - - - 0x015322 05:B312: 39 B3     .word ofs_103_B33A_05 - $01
- D 1 - - - 0x015324 05:B314: 3E B3     .word ofs_103_B33F_06 - $01



ofs_103_B316_00:
C - - - - - 0x015326 05:B316: 20 C5 98  JSR sub_0x01B8D5
C - - - - - 0x015329 05:B319: 20 45 B2  JSR sub_B245
bra_B31C:
ofs_103_B31C_02:
C - - - - - 0x01532C 05:B31C: EE 7A 04  INC ram_047A_t02
C - - - - - 0x01532F 05:B31F: 60        RTS



ofs_103_B320_01:
C - - - - - 0x015330 05:B320: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
ofs_103_B323_04:
C - - - - - 0x015333 05:B323: A9 80     LDA #$80
C - - - - - 0x015335 05:B325: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x015338 05:B328: A9 08     LDA #$08
C - - - - - 0x01533A 05:B32A: 20 2C 9B  JSR sub_0x01BB3C
C - - - - - 0x01533D 05:B32D: 20 8C 9E  JSR sub_0x01BE9C
C - - - - - 0x015340 05:B330: A9 04     LDA #$04
C - - - - - 0x015342 05:B332: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x015345 05:B335: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015348 05:B338: D0 E2     BNE bra_B31C    ; jmp?



ofs_103_B33A_05:
C - - - - - 0x01534A 05:B33A: EE AE 04  INC ram_04AE_t03
C - - - - - 0x01534D 05:B33D: D0 DD     BNE bra_B31C    ; jmp?



ofs_103_B33F_06:
C - - - - - 0x01534F 05:B33F: AD 87 04  LDA ram_0487_t02
C - - - - - 0x015352 05:B342: C9 03     CMP #$03
C - - - - - 0x015354 05:B344: D0 1B     BNE bra_B361_RTS
C - - - - - 0x015356 05:B346: 20 4D B2  JSR sub_B24D
C - - - - - 0x015359 05:B349: A9 00     LDA #$00
C - - - - - 0x01535B 05:B34B: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01535E 05:B34E: A9 08     LDA #$08
C - - - - - 0x015360 05:B350: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x015363 05:B353: A9 81     LDA #$81
C - - - - - 0x015365 05:B355: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x015368 05:B358: 20 72 9E  JSR sub_0x01BE82
C - - - - - 0x01536B 05:B35B: EE 60 04  INC ram_0460
; bzk optimize, JMP
C - - - - - 0x01536E 05:B35E: 20 B7 9E  JSR sub_0x01BEC7
bra_B361_RTS:
C - - - - - 0x015371 05:B361: 60        RTS



loc_B362:
C D 1 - - - 0x015372 05:B362: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x015375 05:B365: C9 03     CMP #$03
C - - - - - 0x015377 05:B367: D0 4C     BNE bra_B3B5_RTS
C - - - - - 0x015379 05:B369: BD 79 05  LDA ram_obj_hp,X
C - - - - - 0x01537C 05:B36C: 30 5D     BMI bra_B3CB
C - - - - - 0x01537E 05:B36E: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x015381 05:B371: D0 05     BNE bra_B378
C - - - - - 0x015383 05:B373: FE D9 04  INC ram_04D9_obj,X
C - - - - - 0x015386 05:B376: D0 2A     BNE bra_B3A2    ; jmp?
bra_B378:
C - - - - - 0x015388 05:B378: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x01538B 05:B37B: D0 08     BNE bra_B385
C - - - - - 0x01538D 05:B37D: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x015390 05:B380: 10 03     BPL bra_B385
C - - - - - 0x015392 05:B382: 20 B6 B3  JSR sub_B3B6
bra_B385:
C - - - - - 0x015395 05:B385: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015398 05:B388: B9 DB B3  LDA tbl_B3DB,Y
C - - - - - 0x01539B 05:B38B: DD 64 04  CMP ram_pos_X_lo_obj + $03,X
C - - - - - 0x01539E 05:B38E: D0 25     BNE bra_B3B5_RTS
C - - - - - 0x0153A0 05:B390: B9 DC B3  LDA tbl_B3DB + $01,Y
C - - - - - 0x0153A3 05:B393: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0153A6 05:B396: D0 1D     BNE bra_B3B5_RTS
C - - - - - 0x0153A8 05:B398: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x0153AB 05:B39B: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x0153AE 05:B39E: C9 05     CMP #$05
C - - - - - 0x0153B0 05:B3A0: D0 05     BNE bra_B3A7
bra_B3A2:
C - - - - - 0x0153B2 05:B3A2: A9 00     LDA #$00
C - - - - - 0x0153B4 05:B3A4: 9D F3 04  STA ram_04F3_obj,X
bra_B3A7:
C - - - - - 0x0153B7 05:B3A7: 0A        ASL
C - - - - - 0x0153B8 05:B3A8: A8        TAY
C - - - - - 0x0153B9 05:B3A9: B9 D1 B3  LDA tbl_B3D1,Y
C - - - - - 0x0153BC 05:B3AC: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0153BF 05:B3AF: B9 D2 B3  LDA tbl_B3D1 + $01,Y
C - - - - - 0x0153C2 05:B3B2: 9D 27 05  STA ram_spd_Y_lo_obj,X
bra_B3B5_RTS:
C - - - - - 0x0153C5 05:B3B5: 60        RTS



sub_B3B6:
C - - - - - 0x0153C6 05:B3B6: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x0153C9 05:B3B9: FE 4E 05  INC ram_054E_obj,X
C - - - - - 0x0153CC 05:B3BC: 29 07     AND #$07
C - - - - - 0x0153CE 05:B3BE: A8        TAY
C - - - - - 0x0153CF 05:B3BF: B9 E5 B3  LDA tbl_B3E5,Y
C - - - - - 0x0153D2 05:B3C2: 8D 23 05  STA ram_0523_t04
C - - - - - 0x0153D5 05:B3C5: 20 5F B9  JSR sub_B95F
C - - - - - 0x0153D8 05:B3C8: 4C 98 9E  JMP loc_0x01BEA8
bra_B3CB:
C - - - - - 0x0153DB 05:B3CB: EE 7A 04  INC ram_047A_t02
C - - - - - 0x0153DE 05:B3CE: 4C A5 B2  JMP loc_B2A5


; ???
tbl_B3D1:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x0153E1 05:B3D1: FE        .byte $FE, $00   ; 
- D 1 - - - 0x0153E3 05:B3D3: 00        .byte $00, $FE   ; 
- D 1 - - - 0x0153E5 05:B3D5: FE        .byte $FE, $00   ; 
- D 1 - - - 0x0153E7 05:B3D7: 00        .byte $00, $02   ; 
- D 1 - - - 0x0153E9 05:B3D9: 02        .byte $02, $00   ; 

; ???

tbl_B3DB:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x0153EB 05:B3DB: 7C        .byte $7C, $8B   ; 
- D 1 - - - 0x0153ED 05:B3DD: 7C        .byte $7C, $63   ; 
- D 1 - - - 0x0153EF 05:B3DF: 24        .byte $24, $63   ; 
- D 1 - - - 0x0153F1 05:B3E1: 24        .byte $24, $8B   ; 
- D 1 - - - 0x0153F3 05:B3E3: A8        .byte $A8, $8B   ; 



tbl_B3E5:
- D 1 - - - 0x0153F5 05:B3E5: E4        .byte $E4   ; 00 
- D 1 - - - 0x0153F6 05:B3E6: E8        .byte $E8   ; 01 
- D 1 - - - 0x0153F7 05:B3E7: EC        .byte $EC   ; 02 
- D 1 - - - 0x0153F8 05:B3E8: E8        .byte $E8   ; 03 
- D 1 - - - 0x0153F9 05:B3E9: E4        .byte $E4   ; 04 
- - - - - - 0x0153FA 05:B3EA: EC        .byte $EC   ; 05 
- - - - - - 0x0153FB 05:B3EB: E4        .byte $E4   ; 06 
- - - - - - 0x0153FC 05:B3EC: EC        .byte $EC   ; 07 



loc_B3ED:
C D 1 - - - 0x0153FD 05:B3ED: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x015400 05:B3F0: D0 0A     BNE bra_B3FC
C - - - - - 0x015402 05:B3F2: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x015405 05:B3F5: 20 DA 98  JSR sub_0x01B8EA
C - - - - - 0x015408 05:B3F8: DE D9 04  DEC ram_04D9_obj,X
C - - - - - 0x01540B 05:B3FB: 60        RTS
bra_B3FC:
C - - - - - 0x01540C 05:B3FC: BD 79 05  LDA ram_obj_hp,X
C - - - - - 0x01540F 05:B3FF: 30 1E     BMI bra_B41F
C - - - - - 0x015411 05:B401: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x015414 05:B404: 29 03     AND #$03
C - - - - - 0x015416 05:B406: F0 24     BEQ bra_B42C
C - - - - - 0x015418 05:B408: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01541B 05:B40B: C9 A8     CMP #$A8
C - - - - - 0x01541D 05:B40D: 90 10     BCC bra_B41F
C - - - - - 0x01541F 05:B40F: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x015422 05:B412: C9 70     CMP #$70
C - - - - - 0x015424 05:B414: B0 09     BCS bra_B41F
C - - - - - 0x015426 05:B416: EE 87 04  INC ram_0487_t02
C - - - - - 0x015429 05:B419: AC 87 04  LDY ram_0487_t02
C - - - - - 0x01542C 05:B41C: 20 DE 9F  JSR sub_0x01BFEE
bra_B41F:
C - - - - - 0x01542F 05:B41F: AD 87 04  LDA ram_0487_t02
C - - - - - 0x015432 05:B422: C9 03     CMP #$03
C - - - - - 0x015434 05:B424: F0 03     BEQ bra_B429
C - - - - - 0x015436 05:B426: EE AE 04  INC ram_04AE_t03
bra_B429:
C - - - - - 0x015439 05:B429: 4C DC 9A  JMP loc_0x01BAEC
bra_B42C:
C - - - - - 0x01543C 05:B42C: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x01543F 05:B42F: A9 80     LDA #$80
C - - - - - 0x015441 05:B431: 20 47 B9  JSR sub_B947
C - - - - - 0x015444 05:B434: A6 79     LDX ram_0079_obj_index
C - - - - - 0x015446 05:B436: A0 00     LDY #$00
bra_B438_loop:
C - - - - - 0x015448 05:B438: DD 83 05  CMP ram_0583_obj,X
C - - - - - 0x01544B 05:B43B: F0 08     BEQ bra_B445
C - - - - - 0x01544D 05:B43D: 18        CLC
C - - - - - 0x01544E 05:B43E: 69 01     ADC #$01
C - - - - - 0x015450 05:B440: 29 0F     AND #$0F
C - - - - - 0x015452 05:B442: C8        INY
C - - - - - 0x015453 05:B443: D0 F3     BNE bra_B438_loop    ; jmp
bra_B445:
C - - - - - 0x015455 05:B445: A9 01     LDA #$01
C - - - - - 0x015457 05:B447: C0 08     CPY #$08
C - - - - - 0x015459 05:B449: B0 02     BCS bra_B44D
C - - - - - 0x01545B 05:B44B: A9 FF     LDA #$FF
bra_B44D:
C - - - - - 0x01545D 05:B44D: 18        CLC
C - - - - - 0x01545E 05:B44E: 7D 83 05  ADC ram_0583_obj,X
C - - - - - 0x015461 05:B451: 29 0F     AND #$0F
C - - - - - 0x015463 05:B453: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x015466 05:B456: 85 68     STA ram_0068_t08
C - - - - - 0x015468 05:B458: A9 02     LDA #con_0067_t12_02
C - - - - - 0x01546A 05:B45A: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x01546C 05:B45C: 20 A7 FF  JSR sub_0x01FFB7
C - - - - - 0x01546F 05:B45F: A6 79     LDX ram_0079_obj_index
C - - - - - 0x015471 05:B461: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x015473 05:B463: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x015476 05:B466: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x015478 05:B468: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01547B 05:B46B: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x01547D 05:B46D: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x015480 05:B470: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x015482 05:B472: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x015485 05:B475: 60        RTS



ofs_101_B476_00:
C - - - - - 0x015486 05:B476: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x015489 05:B479: 30 34     BMI bra_B4AF
C - - - - - 0x01548B 05:B47B: D0 0D     BNE bra_B48A
C - - - - - 0x01548D 05:B47D: AD AE 04  LDA ram_04AE_t03
C - - - - - 0x015490 05:B480: 10 2C     BPL bra_B4AE_RTS
C - - - - - 0x015492 05:B482: EE 7A 04  INC ram_047A_t02
C - - - - - 0x015495 05:B485: A9 14     LDA #$14
C - - - - - 0x015497 05:B487: 4C 2C 9B  JMP loc_0x01BB3C
bra_B48A:
C - - - - - 0x01549A 05:B48A: C9 02     CMP #$02
C - - - - - 0x01549C 05:B48C: F0 15     BEQ bra_B4A3
C - - - - - 0x01549E 05:B48E: AC AE 04  LDY ram_04AE_t03
C - - - - - 0x0154A1 05:B491: D0 1B     BNE bra_B4AE_RTS
C - - - - - 0x0154A3 05:B493: 20 9C 9E  JSR sub_0x01BEAC
C - - - - - 0x0154A6 05:B496: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x0154A9 05:B499: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x0154AC 05:B49C: 30 10     BMI bra_B4AE_RTS
C - - - - - 0x0154AE 05:B49E: EE 7A 04  INC ram_047A_t02
C - - - - - 0x0154B1 05:B4A1: D0 0B     BNE bra_B4AE_RTS
bra_B4A3:
C - - - - - 0x0154B3 05:B4A3: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x0154B6 05:B4A6: A9 0B     LDA #$0B
C - - - - - 0x0154B8 05:B4A8: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0154BB 05:B4AB: 4C 16 B5  JMP loc_B516
bra_B4AE_RTS:
C - - - - - 0x0154BE 05:B4AE: 60        RTS
bra_B4AF:
C - - - - - 0x0154BF 05:B4AF: 20 5C 9C  JSR sub_0x01BC6C    ; possible PLA PLA
C - - - - - 0x0154C2 05:B4B2: AD 87 04  LDA ram_0487_t02
C - - - - - 0x0154C5 05:B4B5: F0 0D     BEQ bra_B4C4
C - - - - - 0x0154C7 05:B4B7: A2 02     LDX #$02
C - - - - - 0x0154C9 05:B4B9: A5 14     LDA ram_frm_cnt
C - - - - - 0x0154CB 05:B4BB: 29 03     AND #$03
C - - - - - 0x0154CD 05:B4BD: D0 47     BNE bra_B506
C - - - - - 0x0154CF 05:B4BF: A9 00     LDA #$00
C - - - - - 0x0154D1 05:B4C1: 8D 87 04  STA ram_0487_t02
bra_B4C4:
C - - - - - 0x0154D4 05:B4C4: A2 01     LDX #$01
C - - - - - 0x0154D6 05:B4C6: AD 30 05  LDA ram_0530_t02_flag
C - - - - - 0x0154D9 05:B4C9: D0 3B     BNE bra_B506
C - - - - - 0x0154DB 05:B4CB: E8        INX ; 02
C - - - - - 0x0154DC 05:B4CC: AD D5 04  LDA ram_04D5_t03
C - - - - - 0x0154DF 05:B4CF: C9 04     CMP #$04
C - - - - - 0x0154E1 05:B4D1: 90 07     BCC bra_B4DA
C - - - - - 0x0154E3 05:B4D3: A9 00     LDA #$00
C - - - - - 0x0154E5 05:B4D5: 8D D5 04  STA ram_04D5_t03
C - - - - - 0x0154E8 05:B4D8: F0 2C     BEQ bra_B506    ; jmp
bra_B4DA:
C - - - - - 0x0154EA 05:B4DA: E8        INX ; 03
C - - - - - 0x0154EB 05:B4DB: A0 08     LDY #$08
C - - - - - 0x0154ED 05:B4DD: 20 38 97  JSR sub_0x01B748_damage
C - - - - - 0x0154F0 05:B4E0: F0 24     BEQ bra_B506
C - - - - - 0x0154F2 05:B4E2: AD 79 05  LDA ram_obj_hp
C - - - - - 0x0154F5 05:B4E5: C9 14     CMP #$14
C - - - - - 0x0154F7 05:B4E7: B0 08     BCS bra_B4F1
C - - - - - 0x0154F9 05:B4E9: A2 01     LDX #$01
C - - - - - 0x0154FB 05:B4EB: 20 BA 97  JSR sub_0x01B7CA
C - - - - - 0x0154FE 05:B4EE: 4C 02 B5  JMP loc_B502
bra_B4F1:
C - - - - - 0x015501 05:B4F1: C9 32     CMP #$32
C - - - - - 0x015503 05:B4F3: B0 08     BCS bra_B4FD
C - - - - - 0x015505 05:B4F5: A2 04     LDX #$04
C - - - - - 0x015507 05:B4F7: 20 7F 97  JSR sub_0x01B78F
C - - - - - 0x01550A 05:B4FA: 4C 02 B5  JMP loc_B502
bra_B4FD:
C - - - - - 0x01550D 05:B4FD: A2 07     LDX #$07
C - - - - - 0x01550F 05:B4FF: 20 7F 97  JSR sub_0x01B78F
loc_B502:
C D 1 - - - 0x015512 05:B502: BD 19 B5  LDA tbl_B519,X
C - - - - - 0x015515 05:B505: AA        TAX
bra_B506:
C - - - - - 0x015516 05:B506: 8A        TXA
C - - - - - 0x015517 05:B507: A8        TAY
C - - - - - 0x015518 05:B508: A6 79     LDX ram_0079_obj_index
C - - - - - 0x01551A 05:B50A: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01551D 05:B50D: C9 07     CMP #$07
C - - - - - 0x01551F 05:B50F: 90 05     BCC bra_B516
C - - - - - 0x015521 05:B511: A9 02     LDA #$02
C - - - - - 0x015523 05:B513: 20 15 9B  JSR sub_0x01BB25
bra_B516:
loc_B516:   ; bzk optimize
C D 1 - - - 0x015526 05:B516: 4C 9E 9C  JMP loc_0x01BCAE



tbl_B519:
- D 1 - - - 0x015529 05:B519: 00        .byte $00   ; 00 
- D 1 - - - 0x01552A 05:B51A: 04        .byte $04   ; 01 
- - - - - - 0x01552B 05:B51B: 09        .byte $09   ; 02 
- D 1 - - - 0x01552C 05:B51C: 06        .byte $06   ; 03 
- - - - - - 0x01552D 05:B51D: 04        .byte $04   ; 04 
- D 1 - - - 0x01552E 05:B51E: 0A        .byte $0A   ; 05 
- D 1 - - - 0x01552F 05:B51F: 05        .byte $05   ; 06 
- D 1 - - - 0x015530 05:B520: 04        .byte $04   ; 07 
- D 1 - - - 0x015531 05:B521: 08        .byte $08   ; 08 
- D 1 - - - 0x015532 05:B522: 07        .byte $07   ; 09 



tbl_B523:
- - - - - - 0x015533 05:B523: 34 B5     .word ofs_068_B535_00 - $01
- - - - - - 0x015535 05:B525: 11 B8     .word ofs_068_B812_01 - $01
- - - - - - 0x015537 05:B527: 8A B8     .word ofs_068_B88B_02 - $01



ofs_101_B529_01:
- - - - - - 0x015539 05:B529: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
- - - - - - 0x01553C 05:B52C: B9 24 B5  LDA tbl_B523 + $01,Y
- - - - - - 0x01553F 05:B52F: 48        PHA
- - - - - - 0x015540 05:B530: B9 23 B5  LDA tbl_B523,Y
- - - - - - 0x015543 05:B533: 48        PHA
- - - - - - 0x015544 05:B534: 60        RTS



ofs_068_B535_00:
ofs_074_B535_01:
ofs_075_B535_01:
ofs_076_B535_01:
ofs_077_B535_01:
C - - - - - 0x015545 05:B535: 20 66 B8  JSR sub_B866
C - - - - - 0x015548 05:B538: 4C 00 9E  JMP loc_0x01BE10



tbl_B53B:
- D 1 - - - 0x01554B 05:B53B: 50 B5     .word ofs_069_B551_00 - $01
- D 1 - - - 0x01554D 05:B53D: 72 B5     .word ofs_069_B573_01 - $01
- D 1 - - - 0x01554F 05:B53F: 80 B5     .word ofs_069_B581_02 - $01
- D 1 - - - 0x015551 05:B541: 8C B5     .word ofs_069_B58D_03 - $01
- D 1 - - - 0x015553 05:B543: 9A B5     .word ofs_069_B59B_04 - $01



ofs_101_B545_02:
C - - - - - 0x015555 05:B545: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015558 05:B548: B9 3C B5  LDA tbl_B53B + $01,Y
C - - - - - 0x01555B 05:B54B: 48        PHA
C - - - - - 0x01555C 05:B54C: B9 3B B5  LDA tbl_B53B,Y
C - - - - - 0x01555F 05:B54F: 48        PHA
bra_B550_RTS:
C - - - - - 0x015560 05:B550: 60        RTS



ofs_069_B551_00:
ofs_073_B551_06:
ofs_077_B551_05:
C - - - - - 0x015561 05:B551: AD 87 04  LDA ram_0487_t02
C - - - - - 0x015564 05:B554: F0 17     BEQ bra_B56D
C - - - - - 0x015566 05:B556: A9 00     LDA #$00
C - - - - - 0x015568 05:B558: 8D 87 04  STA ram_0487_t02
C - - - - - 0x01556B 05:B55B: A9 40     LDA #$40
C - - - - - 0x01556D 05:B55D: 20 11 98  JSR sub_0x01B821
C - - - - - 0x015570 05:B560: B0 0B     BCS bra_B56D
C - - - - - 0x015572 05:B562: A9 08     LDA #$08
C - - - - - 0x015574 05:B564: 8D 87 04  STA ram_0487_t02
C - - - - - 0x015577 05:B567: 4A        LSR
C - - - - - 0x015578 05:B568: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01557B 05:B56B: D0 0C     BNE bra_B579
bra_B56D:
C - - - - - 0x01557D 05:B56D: 20 66 B8  JSR sub_B866
C - - - - - 0x015580 05:B570: 4C E3 9D  JMP loc_0x01BDF3



ofs_069_B573_01:
ofs_073_B573_07:
ofs_077_B573_06:
C - - - - - 0x015583 05:B573: 20 72 98  JSR sub_0x01B882
C - - - - - 0x015586 05:B576: FE 83 05  INC ram_0583_obj,X
bra_B579:
C - - - - - 0x015589 05:B579: A9 8A     LDA #$8A
C - - - - - 0x01558B 05:B57B: 20 2C 9B  JSR sub_0x01BB3C
C - - - - - 0x01558E 05:B57E: 4C A0 9E  JMP loc_0x01BEB0



ofs_069_B581_02:
C - - - - - 0x015591 05:B581: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x015594 05:B584: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x015597 05:B587: 20 CE 98  JSR sub_0x01B8DE
bra_B58A:
C - - - - - 0x01559A 05:B58A: 4C 72 9E  JMP loc_0x01BE82



ofs_069_B58D_03:
C - - - - - 0x01559D 05:B58D: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x0155A0 05:B590: 90 03     BCC bra_B595
C - - - - - 0x0155A2 05:B592: 4C 91 B8  JMP loc_B891
bra_B595:
C - - - - - 0x0155A5 05:B595: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x0155A8 05:B598: 4C 8C 9B  JMP loc_0x01BB9C



ofs_069_B59B_04:
C - - - - - 0x0155AB 05:B59B: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x0155AE 05:B59E: CE 87 04  DEC ram_0487_t02
C - - - - - 0x0155B1 05:B5A1: D0 AD     BNE bra_B550_RTS
C - - - - - 0x0155B3 05:B5A3: DE F3 04  DEC ram_04F3_obj,X
C - - - - - 0x0155B6 05:B5A6: D0 E2     BNE bra_B58A    ; jmp



tbl_B5A8:
- D 1 - - - 0x0155B8 05:B5A8: BF B5     .word ofs_070_B5C0_00 - $01
- D 1 - - - 0x0155BA 05:B5AA: 11 B8     .word ofs_070_B812_01 - $01
- D 1 - - - 0x0155BC 05:B5AC: 18 B8     .word ofs_070_B819_02 - $01
- D 1 - - - 0x0155BE 05:B5AE: D6 B5     .word ofs_070_B5D7_03 - $01
- - - - - - 0x0155C0 05:B5B0: DC B5     .word ofs_070_B5DD_04 - $01
- - - - - - 0x0155C2 05:B5B2: DC B5     .word ofs_070_B5DD_05 - $01



ofs_101_B5B4_03:
C - - - - - 0x0155C4 05:B5B4: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0155C7 05:B5B7: B9 A9 B5  LDA tbl_B5A8 + $01,Y
C - - - - - 0x0155CA 05:B5BA: 48        PHA
C - - - - - 0x0155CB 05:B5BB: B9 A8 B5  LDA tbl_B5A8,Y
C - - - - - 0x0155CE 05:B5BE: 48        PHA
bra_B5BF_RTS:
C - - - - - 0x0155CF 05:B5BF: 60        RTS



ofs_070_B5C0_00:
C - - - - - 0x0155D0 05:B5C0: 20 F8 9B  JSR sub_0x01BC08
C - - - - - 0x0155D3 05:B5C3: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x0155D6 05:B5C6: B0 09     BCS bra_B5D1
C - - - - - 0x0155D8 05:B5C8: 20 66 B8  JSR sub_B866
C - - - - - 0x0155DB 05:B5CB: 20 F8 9B  JSR sub_0x01BC08
C - - - - - 0x0155DE 05:B5CE: 4C 00 9E  JMP loc_0x01BE10
bra_B5D1:
- - - - - - 0x0155E1 05:B5D1: A9 03     LDA #$03
- - - - - - 0x0155E3 05:B5D3: 9D F3 04  STA ram_04F3_obj,X
- - - - - - 0x0155E6 05:B5D6: 60        RTS



ofs_070_B5D7_03:
C - - - - - 0x0155E7 05:B5D7: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
; bzk was not logged
- - - - - - 0x0155EA 05:B5DA: 4C 78 B8  JMP loc_B878



ofs_070_B5DD_04:
ofs_070_B5DD_05:
- - - - - - 0x0155ED 05:B5DD: 20 FB 97  JSR sub_0x01B80B
- - - - - - 0x0155F0 05:B5E0: 90 03     BCC bra_B5E5
- - - - - - 0x0155F2 05:B5E2: 4C 91 B8  JMP loc_B891
bra_B5E5:
- - - - - - 0x0155F5 05:B5E5: BD F3 04  LDA ram_04F3_obj,X
- - - - - - 0x0155F8 05:B5E8: C9 04     CMP #$04
- - - - - - 0x0155FA 05:B5EA: D0 0B     BNE bra_B5F7
- - - - - - 0x0155FC 05:B5EC: 20 8C 9B  JSR sub_0x01BB9C
- - - - - - 0x0155FF 05:B5EF: 20 62 97  JSR sub_0x01B772
- - - - - - 0x015602 05:B5F2: F0 CB     BEQ bra_B5BF_RTS
- - - - - - 0x015604 05:B5F4: FE 83 05  INC ram_0583_obj,X
bra_B5F7:
- - - - - - 0x015607 05:B5F7: 20 FB 97  JSR sub_0x01B80B
- - - - - - 0x01560A 05:B5FA: B0 03     BCS bra_B5FF
- - - - - - 0x01560C 05:B5FC: 20 83 98  JSR sub_0x01B893
bra_B5FF:
- - - - - - 0x01560F 05:B5FF: 20 6E B8  JSR sub_B86E
- - - - - - 0x015612 05:B602: 4C 16 B5  JMP loc_B516



tbl_B605:
- D 1 - - - 0x015615 05:B605: 16 B6     .word ofs_071_B617_00 - $01
- D 1 - - - 0x015617 05:B607: 11 B8     .word ofs_071_B812_01 - $01
- D 1 - - - 0x015619 05:B609: 8A B8     .word ofs_071_B88B_02 - $01



ofs_101_B60B_04:
C - - - - - 0x01561B 05:B60B: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x01561E 05:B60E: B9 06 B6  LDA tbl_B605 + $01,Y
C - - - - - 0x015621 05:B611: 48        PHA
C - - - - - 0x015622 05:B612: B9 05 B6  LDA tbl_B605,Y
C - - - - - 0x015625 05:B615: 48        PHA
C - - - - - 0x015626 05:B616: 60        RTS



ofs_071_B617_00:
ofs_072_B617_06:
C - - - - - 0x015627 05:B617: 20 A0 B8  JSR sub_B8A0
C - - - - - 0x01562A 05:B61A: 4C E3 9D  JMP loc_0x01BDF3



tbl_B61D:
- D 1 - - - 0x01562D 05:B61D: 77 B8     .word ofs_072_B878_00 - $01
- D 1 - - - 0x01562F 05:B61F: 42 B6     .word ofs_072_B643_01 - $01
- D 1 - - - 0x015631 05:B621: 50 B6     .word ofs_072_B651_02 - $01
- D 1 - - - 0x015633 05:B623: 64 B6     .word ofs_072_B665_03 - $01
- D 1 - - - 0x015635 05:B625: 73 B6     .word ofs_072_B674_04 - $01
- D 1 - - - 0x015637 05:B627: 9B B8     .word ofs_072_B89C_05 - $01
- D 1 - - - 0x015639 05:B629: 16 B6     .word ofs_072_B617_06 - $01
- D 1 - - - 0x01563B 05:B62B: 11 B8     .word ofs_072_B812_07 - $01
- D 1 - - - 0x01563D 05:B62D: 18 B8     .word ofs_072_B819_08 - $01
- D 1 - - - 0x01563F 05:B62F: 9B B8     .word ofs_072_B89C_09 - $01
- D 1 - - - 0x015641 05:B631: 77 B8     .word ofs_072_B878_0A - $01
- D 1 - - - 0x015643 05:B633: 42 B6     .word ofs_072_B643_0B - $01
- D 1 - - - 0x015645 05:B635: 90 B8     .word ofs_072_B891_0C - $01



ofs_101_B637_05:
C - - - - - 0x015647 05:B637: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x01564A 05:B63A: B9 1E B6  LDA tbl_B61D + $01,Y
C - - - - - 0x01564D 05:B63D: 48        PHA
C - - - - - 0x01564E 05:B63E: B9 1D B6  LDA tbl_B61D,Y
C - - - - - 0x015651 05:B641: 48        PHA
bra_B642_RTS:
C - - - - - 0x015652 05:B642: 60        RTS



ofs_072_B643_01:
ofs_072_B643_0B:
ofs_073_B643_01:
C - - - - - 0x015653 05:B643: 20 8C 9B  JSR sub_0x01BB9C
C - - - - - 0x015656 05:B646: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x015659 05:B649: 90 F7     BCC bra_B642_RTS
C - - - - - 0x01565B 05:B64B: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01565E 05:B64E: 4C 6E B8  JMP loc_B86E



ofs_072_B651_02:
C - - - - - 0x015661 05:B651: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x015664 05:B654: 20 AF B8  JSR sub_B8AF
C - - - - - 0x015667 05:B657: B0 06     BCS bra_B65F
C - - - - - 0x015669 05:B659: 20 66 B8  JSR sub_B866
C - - - - - 0x01566C 05:B65C: 4C E3 9D  JMP loc_0x01BDF3
bra_B65F:
C - - - - - 0x01566F 05:B65F: A9 06     LDA #$06
C - - - - - 0x015671 05:B661: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x015674 05:B664: 60        RTS



ofs_072_B665_03:
ofs_073_B665_03:
ofs_074_B665_06:
ofs_077_B665_09:
C - - - - - 0x015675 05:B665: 20 A0 9E  JSR sub_0x01BEB0
C - - - - - 0x015678 05:B668: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x01567B 05:B66B: 20 72 98  JSR sub_0x01B882
C - - - - - 0x01567E 05:B66E: 20 86 B8  JSR sub_B886
C - - - - - 0x015681 05:B671: 4C B5 B8  JMP loc_B8B5



ofs_072_B674_04:
ofs_073_B674_04:
ofs_074_B674_07:
ofs_075_B674_07:
ofs_076_B674_07:
ofs_076_B674_0B:
ofs_077_B674_0A:
C - - - - - 0x015684 05:B674: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x015687 05:B677: 20 52 98  JSR sub_0x01B862
C - - - - - 0x01568A 05:B67A: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01568D 05:B67D: A9 0A     LDA #$0A
C - - - - - 0x01568F 05:B67F: 4C 2C 9B  JMP loc_0x01BB3C



tbl_B682:
- D 1 - - - 0x015692 05:B682: 77 B8     .word ofs_073_B878_00 - $01
- D 1 - - - 0x015694 05:B684: 42 B6     .word ofs_073_B643_01 - $01
- D 1 - - - 0x015696 05:B686: A7 B6     .word ofs_073_B6A8_02 - $01
- - - - - - 0x015698 05:B688: 64 B6     .word ofs_073_B665_03 - $01
- - - - - - 0x01569A 05:B68A: 73 B6     .word ofs_073_B674_04 - $01
- - - - - - 0x01569C 05:B68C: 9B B8     .word ofs_073_B89C_05 - $01
- D 1 - - - 0x01569E 05:B68E: 50 B5     .word ofs_073_B551_06 - $01
- D 1 - - - 0x0156A0 05:B690: 72 B5     .word ofs_073_B573_07 - $01
- - - - - - 0x0156A2 05:B692: BB B6     .word ofs_073_B6BC_08 - $01
- - - - - - 0x0156A4 05:B694: 9B B8     .word ofs_073_B89C_09 - $01
- - - - - - 0x0156A6 05:B696: C7 B6     .word ofs_073_B6C8_0A - $01
- - - - - - 0x0156A8 05:B698: 11 B8     .word ofs_073_B812_0B - $01
- - - - - - 0x0156AA 05:B69A: 8A B8     .word ofs_073_B88B_0C - $01



ofs_101_B69C_06:
C - - - - - 0x0156AC 05:B69C: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0156AF 05:B69F: B9 83 B6  LDA tbl_B682 + $01,Y
C - - - - - 0x0156B2 05:B6A2: 48        PHA
C - - - - - 0x0156B3 05:B6A3: B9 82 B6  LDA tbl_B682,Y
C - - - - - 0x0156B6 05:B6A6: 48        PHA
C - - - - - 0x0156B7 05:B6A7: 60        RTS



ofs_073_B6A8_02:
C - - - - - 0x0156B8 05:B6A8: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x0156BB 05:B6AB: 20 AF B8  JSR sub_B8AF
C - - - - - 0x0156BE 05:B6AE: B0 06     BCS bra_B6B6
- - - - - - 0x0156C0 05:B6B0: 20 66 B8  JSR sub_B866
- - - - - - 0x0156C3 05:B6B3: 4C FA 9D  JMP loc_0x01BE0A
bra_B6B6:
C - - - - - 0x0156C6 05:B6B6: A9 06     LDA #$06
C - - - - - 0x0156C8 05:B6B8: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x0156CB 05:B6BB: 60        RTS



ofs_073_B6BC_08:
ofs_077_B6BC_07:
- - - - - - 0x0156CC 05:B6BC: 20 6B 9A  JSR sub_0x01BA7B
- - - - - - 0x0156CF 05:B6BF: 20 69 9B  JSR sub_0x01BB79
- - - - - - 0x0156D2 05:B6C2: 20 CE 98  JSR sub_0x01B8DE
- - - - - - 0x0156D5 05:B6C5: 4C 73 B8  JMP loc_B873



ofs_073_B6C8_0A:
- - - - - - 0x0156D8 05:B6C8: 20 E5 9B  JSR sub_0x01BBF5
- - - - - - 0x0156DB 05:B6CB: 20 5E B8  JSR sub_B85E
- - - - - - 0x0156DE 05:B6CE: 4C 00 9E  JMP loc_0x01BE10



tbl_B6D1:
- D 1 - - - 0x0156E1 05:B6D1: F0 B6     .word ofs_074_B6F1_00 - $01
- D 1 - - - 0x0156E3 05:B6D3: 34 B5     .word ofs_074_B535_01 - $01
- D 1 - - - 0x0156E5 05:B6D5: 11 B8     .word ofs_074_B812_02 - $01
- D 1 - - - 0x0156E7 05:B6D7: 18 B8     .word ofs_074_B819_03 - $01
- D 1 - - - 0x0156E9 05:B6D9: 9B B8     .word ofs_074_B89C_04 - $01
- D 1 - - - 0x0156EB 05:B6DB: 2F B7     .word ofs_074_B730_05 - $01
- D 1 - - - 0x0156ED 05:B6DD: 64 B6     .word ofs_074_B665_06 - $01
- D 1 - - - 0x0156EF 05:B6DF: 73 B6     .word ofs_074_B674_07 - $01
- D 1 - - - 0x0156F1 05:B6E1: 9B B8     .word ofs_074_B89C_08 - $01
- D 1 - - - 0x0156F3 05:B6E3: 3E B7     .word ofs_074_B73F_09 - $01



ofs_101_B6E5_07:
C - - - - - 0x0156F5 05:B6E5: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0156F8 05:B6E8: B9 D2 B6  LDA tbl_B6D1 + $01,Y
C - - - - - 0x0156FB 05:B6EB: 48        PHA
C - - - - - 0x0156FC 05:B6EC: B9 D1 B6  LDA tbl_B6D1,Y
C - - - - - 0x0156FF 05:B6EF: 48        PHA
bra_B6F0_RTS:
C - - - - - 0x015700 05:B6F0: 60        RTS



ofs_074_B6F1_00:
ofs_075_B6F1_00:
ofs_076_B6F1_00:
ofs_077_B6F1_00:
C - - - - - 0x015701 05:B6F1: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x015704 05:B6F4: A9 01     LDA #$01
C - - - - - 0x015706 05:B6F6: AC 30 05  LDY ram_0530_t02_flag
C - - - - - 0x015709 05:B6F9: D0 31     BNE bra_B72C
C - - - - - 0x01570B 05:B6FB: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01570E 05:B6FE: 10 F0     BPL bra_B6F0_RTS
C - - - - - 0x015710 05:B700: 20 55 97  JSR sub_0x01B765
C - - - - - 0x015713 05:B703: D0 1E     BNE bra_B723
C - - - - - 0x015715 05:B705: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x015718 05:B708: 38        SEC
C - - - - - 0x015719 05:B709: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01571C 05:B70C: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01571F 05:B70F: 10 02     BPL bra_B713
C - - - - - 0x015721 05:B711: 49 FF     EOR #$FF
bra_B713:
C - - - - - 0x015723 05:B713: 85 71     STA ram_0071_t13
C - - - - - 0x015725 05:B715: A0 60     LDY #$60
C - - - - - 0x015727 05:B717: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x01572A 05:B71A: 4A        LSR
C - - - - - 0x01572B 05:B71B: B0 02     BCS bra_B71F
C - - - - - 0x01572D 05:B71D: A0 20     LDY #$20
bra_B71F:
C - - - - - 0x01572F 05:B71F: C4 71     CPY ram_0071_t13
C - - - - - 0x015731 05:B721: 90 CD     BCC bra_B6F0_RTS
bra_B723:
C - - - - - 0x015733 05:B723: A9 01     LDA #$01
C - - - - - 0x015735 05:B725: AC 30 05  LDY ram_0530_t02_flag
C - - - - - 0x015738 05:B728: D0 02     BNE bra_B72C
C - - - - - 0x01573A 05:B72A: A9 05     LDA #$05
bra_B72C:
C - - - - - 0x01573C 05:B72C: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01573F 05:B72F: 60        RTS



ofs_074_B730_05:
C - - - - - 0x015740 05:B730: 20 AF B8  JSR sub_B8AF
C - - - - - 0x015743 05:B733: B0 06     BCS bra_B73B
C - - - - - 0x015745 05:B735: 20 66 B8  JSR sub_B866
C - - - - - 0x015748 05:B738: 4C E3 9D  JMP loc_0x01BDF3
bra_B73B:
- - - - - - 0x01574B 05:B73B: A9 09     LDA #$09
- - - - - - 0x01574D 05:B73D: D0 ED     BNE bra_B72C    ; jmp



ofs_074_B73F_09:
ofs_075_B73F_09:
ofs_076_B73F_0D:
C - - - - - 0x01574F 05:B73F: 20 DF 9B  JSR sub_0x01BBEF
C - - - - - 0x015752 05:B742: A9 04     LDA #$04
C - - - - - 0x015754 05:B744: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x015757 05:B747: 4C 16 B5  JMP loc_B516



tbl_B74A:
- D 1 - - - 0x01575A 05:B74A: F0 B6     .word ofs_075_B6F1_00 - $01
- - - - - - 0x01575C 05:B74C: 34 B5     .word ofs_075_B535_01 - $01
- - - - - - 0x01575E 05:B74E: 11 B8     .word ofs_075_B812_02 - $01
- - - - - - 0x015760 05:B750: 18 B8     .word ofs_075_B819_03 - $01
- - - - - - 0x015762 05:B752: 9B B8     .word ofs_075_B89C_04 - $01
- D 1 - - - 0x015764 05:B754: 69 B7     .word ofs_075_B76A_05 - $01
- D 1 - - - 0x015766 05:B756: 11 B8     .word ofs_075_B812_06 - $01
- D 1 - - - 0x015768 05:B758: 73 B6     .word ofs_075_B674_07 - $01
- D 1 - - - 0x01576A 05:B75A: 9B B8     .word ofs_075_B89C_08 - $01
- D 1 - - - 0x01576C 05:B75C: 3E B7     .word ofs_075_B73F_09 - $01



ofs_101_B75E_08:
C - - - - - 0x01576E 05:B75E: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015771 05:B761: B9 4B B7  LDA tbl_B74A + $01,Y
C - - - - - 0x015774 05:B764: 48        PHA
C - - - - - 0x015775 05:B765: B9 4A B7  LDA tbl_B74A,Y
C - - - - - 0x015778 05:B768: 48        PHA
C - - - - - 0x015779 05:B769: 60        RTS



ofs_075_B76A_05:
ofs_076_B76A_05:
ofs_076_B76A_09:
C - - - - - 0x01577A 05:B76A: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01577D 05:B76D: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x015780 05:B770: 20 DF 9B  JSR sub_0x01BBEF
C - - - - - 0x015783 05:B773: 20 86 B8  JSR sub_B886
C - - - - - 0x015786 05:B776: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015789 05:B779: A9 28     LDA #$28
C - - - - - 0x01578B 05:B77B: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01578E 05:B77E: A9 50     LDA #$50
C - - - - - 0x015790 05:B780: 4C 5B 9E  JMP loc_0x01BE6B



tbl_B783:
- D 1 - - - 0x015793 05:B783: F0 B6     .word ofs_076_B6F1_00 - $01
- - - - - - 0x015795 05:B785: 34 B5     .word ofs_076_B535_01 - $01
- - - - - - 0x015797 05:B787: 11 B8     .word ofs_076_B812_02 - $01
- - - - - - 0x015799 05:B789: 18 B8     .word ofs_076_B819_03 - $01
- - - - - - 0x01579B 05:B78B: 9B B8     .word ofs_076_B89C_04 - $01
- D 1 - - - 0x01579D 05:B78D: 69 B7     .word ofs_076_B76A_05 - $01
- D 1 - - - 0x01579F 05:B78F: 11 B8     .word ofs_076_B812_06 - $01
- D 1 - - - 0x0157A1 05:B791: 73 B6     .word ofs_076_B674_07 - $01
- D 1 - - - 0x0157A3 05:B793: AA B7     .word ofs_076_B7AB_08 - $01
- D 1 - - - 0x0157A5 05:B795: 69 B7     .word ofs_076_B76A_09 - $01
- D 1 - - - 0x0157A7 05:B797: 11 B8     .word ofs_076_B812_0A - $01
- D 1 - - - 0x0157A9 05:B799: 73 B6     .word ofs_076_B674_0B - $01
- D 1 - - - 0x0157AB 05:B79B: 9B B8     .word ofs_076_B89C_0C - $01
- D 1 - - - 0x0157AD 05:B79D: 3E B7     .word ofs_076_B73F_0D - $01



ofs_101_B79F_0A:
C - - - - - 0x0157AF 05:B79F: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x0157B2 05:B7A2: B9 84 B7  LDA tbl_B783 + $01,Y
C - - - - - 0x0157B5 05:B7A5: 48        PHA
C - - - - - 0x0157B6 05:B7A6: B9 83 B7  LDA tbl_B783,Y
C - - - - - 0x0157B9 05:B7A9: 48        PHA
C - - - - - 0x0157BA 05:B7AA: 60        RTS



ofs_076_B7AB_08:
C - - - - - 0x0157BB 05:B7AB: 20 03 99  JSR sub_0x01B913
C - - - - - 0x0157BE 05:B7AE: 4C DF 9B  JMP loc_0x01BBEF



tbl_B7B1:
- - - - - - 0x0157C1 05:B7B1: F0 B6     .word ofs_077_B6F1_00 - $01
- - - - - - 0x0157C3 05:B7B3: 34 B5     .word ofs_077_B535_01 - $01
- - - - - - 0x0157C5 05:B7B5: 11 B8     .word ofs_077_B812_02 - $01
- - - - - - 0x0157C7 05:B7B7: 18 B8     .word ofs_077_B819_03 - $01
- - - - - - 0x0157C9 05:B7B9: 9B B8     .word ofs_077_B89C_04 - $01
- - - - - - 0x0157CB 05:B7BB: 50 B5     .word ofs_077_B551_05 - $01
- - - - - - 0x0157CD 05:B7BD: 72 B5     .word ofs_077_B573_06 - $01
- - - - - - 0x0157CF 05:B7BF: BB B6     .word ofs_077_B6BC_07 - $01
- - - - - - 0x0157D1 05:B7C1: DA B7     .word ofs_077_B7DB_08 - $01
- - - - - - 0x0157D3 05:B7C3: 64 B6     .word ofs_077_B665_09 - $01
- - - - - - 0x0157D5 05:B7C5: 73 B6     .word ofs_077_B674_0A - $01
- - - - - - 0x0157D7 05:B7C7: 9B B8     .word ofs_077_B89C_0B - $01
- - - - - - 0x0157D9 05:B7C9: EE B7     .word ofs_077_B7EF_0C - $01
- - - - - - 0x0157DB 05:B7CB: 11 B8     .word ofs_077_B812_0D - $01
- - - - - - 0x0157DD 05:B7CD: 8A B8     .word ofs_077_B88B_0E - $01



ofs_101_B7CF_09:
- - - - - - 0x0157DF 05:B7CF: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
- - - - - - 0x0157E2 05:B7D2: B9 B2 B7  LDA tbl_B7B1 + $01,Y
- - - - - - 0x0157E5 05:B7D5: 48        PHA
- - - - - - 0x0157E6 05:B7D6: B9 B1 B7  LDA tbl_B7B1,Y
- - - - - - 0x0157E9 05:B7D9: 48        PHA
- - - - - - 0x0157EA 05:B7DA: 60        RTS



ofs_077_B7DB_08:
- - - - - - 0x0157EB 05:B7DB: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
- - - - - - 0x0157EE 05:B7DE: 20 AF B8  JSR sub_B8AF
- - - - - - 0x0157F1 05:B7E1: B0 06     BCS bra_B7E9
- - - - - - 0x0157F3 05:B7E3: 20 66 B8  JSR sub_B866
- - - - - - 0x0157F6 05:B7E6: 4C FA 9D  JMP loc_0x01BE0A
bra_B7E9:
- - - - - - 0x0157F9 05:B7E9: A9 0C     LDA #$0C
- - - - - - 0x0157FB 05:B7EB: 9D F3 04  STA ram_04F3_obj,X
- - - - - - 0x0157FE 05:B7EE: 60        RTS



ofs_077_B7EF_0C:
- - - - - - 0x0157FF 05:B7EF: 20 A0 B8  JSR sub_B8A0
- - - - - - 0x015802 05:B7F2: 4C 00 9E  JMP loc_0x01BE10



tbl_B7F5:
- D 1 - - - 0x015805 05:B7F5: 08 B8     .word ofs_078_B809_00 - $01
- D 1 - - - 0x015807 05:B7F7: 11 B8     .word ofs_078_B812_01 - $01
- D 1 - - - 0x015809 05:B7F9: 18 B8     .word ofs_078_B819_02 - $01
- D 1 - - - 0x01580B 05:B7FB: 21 B8     .word ofs_078_B822_03 - $01



ofs_101_B7FD_0B:
C - - - - - 0x01580D 05:B7FD: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015810 05:B800: B9 F6 B7  LDA tbl_B7F5 + $01,Y
C - - - - - 0x015813 05:B803: 48        PHA
C - - - - - 0x015814 05:B804: B9 F5 B7  LDA tbl_B7F5,Y
C - - - - - 0x015817 05:B807: 48        PHA
C - - - - - 0x015818 05:B808: 60        RTS



ofs_078_B809_00:
C - - - - - 0x015819 05:B809: 20 5E B8  JSR sub_B85E
C - - - - - 0x01581C 05:B80C: 20 D6 9B  JSR sub_0x01BBE6_EOR_obj_flag
C - - - - - 0x01581F 05:B80F: 4C 00 9E  JMP loc_0x01BE10



ofs_068_B812_01:
ofs_070_B812_01:
ofs_071_B812_01:
ofs_072_B812_07:
ofs_073_B812_0B:
ofs_074_B812_02:
ofs_075_B812_02:
ofs_075_B812_06:
ofs_076_B812_02:
ofs_076_B812_06:
ofs_076_B812_0A:
ofs_077_B812_02:
ofs_077_B812_0D:
ofs_078_B812_01:
C - - - - - 0x015822 05:B812: 20 72 98  JSR sub_0x01B882
C - - - - - 0x015825 05:B815: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x015828 05:B818: 60        RTS



ofs_070_B819_02:
ofs_072_B819_08:
ofs_074_B819_03:
ofs_075_B819_03:
ofs_076_B819_03:
ofs_077_B819_03:
ofs_078_B819_02:
C - - - - - 0x015829 05:B819: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x01582C 05:B81C: 20 CE 98  JSR sub_0x01B8DE
C - - - - - 0x01582F 05:B81F: 4C 6E B8  JMP loc_B86E



ofs_078_B822_03:
C - - - - - 0x015832 05:B822: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x015835 05:B825: 20 B7 9E  JSR sub_0x01BEC7
C - - - - - 0x015838 05:B828: 4C 91 B8  JMP loc_B891



tbl_B82B:
- D 1 - - - 0x01583B 05:B82B: 82 9D     .word ofs_079_0x01BD93_00 - $01
- D 1 - - - 0x01583D 05:B82D: A8 9D     .word ofs_079_0x01BDB9_01 - $01
- D 1 - - - 0x01583F 05:B82F: B9 9D     .word ofs_079_0x01BDCA_02 - $01
- D 1 - - - 0x015841 05:B831: 3E B8     .word ofs_079_B83F_03 - $01



ofs_101_B833_0C:
C - - - - - 0x015843 05:B833: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015846 05:B836: B9 2C B8  LDA tbl_B82B + $01,Y
C - - - - - 0x015849 05:B839: 48        PHA
C - - - - - 0x01584A 05:B83A: B9 2B B8  LDA tbl_B82B,Y
C - - - - - 0x01584D 05:B83D: 48        PHA
C - - - - - 0x01584E 05:B83E: 60        RTS



ofs_079_B83F_03:
C - - - - - 0x01584F 05:B83F: 20 91 B8  JSR sub_B891
C - - - - - 0x015852 05:B842: EE 87 04  INC ram_0487_t02
C - - - - - 0x015855 05:B845: 4C AC 9E  JMP loc_0x01BEBC



tbl_B848:
- D 1 - - - 0x015858 05:B848: A8 9D     .word ofs_080_0x01BDB9_00 - $01
- D 1 - - - 0x01585A 05:B84A: B9 9D     .word ofs_080_0x01BDCA_01 - $01
- D 1 - - - 0x01585C 05:B84C: C1 9D     .word ofs_080_0x01BDD2_02 - $01
- D 1 - - - 0x01585E 05:B84E: D7 9D     .word ofs_080_0x01BDE8_03 - $01
- D 1 - - - 0x015860 05:B850: 74 9D     .word ofs_080_0x01BD85_04 - $01



ofs_101_B852_0D:
C - - - - - 0x015862 05:B852: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015865 05:B855: B9 49 B8  LDA tbl_B848 + $01,Y
C - - - - - 0x015868 05:B858: 48        PHA
C - - - - - 0x015869 05:B859: B9 48 B8  LDA tbl_B848,Y
C - - - - - 0x01586C 05:B85C: 48        PHA
C - - - - - 0x01586D 05:B85D: 60        RTS



sub_B85E:
C - - - - - 0x01586E 05:B85E: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015871 05:B861: A9 04     LDA #$04
C - - - - - 0x015873 05:B863: 4C 2C 9B  JMP loc_0x01BB3C



sub_B866:
C - - - - - 0x015876 05:B866: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x015879 05:B869: A9 04     LDA #$04
C - - - - - 0x01587B 05:B86B: 4C 15 9B  JMP loc_0x01BB25



loc_B86E:
sub_B86E:
C D 1 - - - 0x01587E 05:B86E: A9 00     LDA #$00
C - - - - - 0x015880 05:B870: 4C 15 9B  JMP loc_0x01BB25



loc_B873:
- - - - - - 0x015883 05:B873: A9 00     LDA #$00
- - - - - - 0x015885 05:B875: 4C 2C 9B  JMP loc_0x01BB3C



loc_B878:
ofs_072_B878_00:
ofs_072_B878_0A:
ofs_073_B878_00:
C - - - - - 0x015888 05:B878: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01588B 05:B87B: 20 72 9E  JSR sub_0x01BE82
C - - - - - 0x01588E 05:B87E: A9 0C     LDA #$0C
C - - - - - 0x015890 05:B880: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x015893 05:B883: 4C 94 9E  JMP loc_0x01BEA4



sub_B886:
C - - - - - 0x015896 05:B886: A9 08     LDA #$08
C - - - - - 0x015898 05:B888: 4C 2C 9B  JMP loc_0x01BB3C



ofs_068_B88B_02:
ofs_071_B88B_02:
ofs_073_B88B_0C:
ofs_077_B88B_0E:
C - - - - - 0x01589B 05:B88B: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x01589E 05:B88E: 20 CE 98  JSR sub_0x01B8DE
loc_B891:
sub_B891:
ofs_072_B891_0C:
C D 1 - - - 0x0158A1 05:B891: A9 00     LDA #$00
C - - - - - 0x0158A3 05:B893: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0158A6 05:B896: 20 15 9B  JSR sub_0x01BB25
C - - - - - 0x0158A9 05:B899: 4C 16 B5  JMP loc_B516



ofs_072_B89C_05:
ofs_072_B89C_09:
ofs_073_B89C_05:
ofs_073_B89C_09:
ofs_074_B89C_04:
ofs_074_B89C_08:
ofs_075_B89C_04:
ofs_075_B89C_08:
ofs_076_B89C_04:
ofs_076_B89C_0C:
ofs_077_B89C_04:
ofs_077_B89C_0B:
; bzk optimize, JMP
C - - - - - 0x0158AC 05:B89C: 20 03 99  JSR sub_0x01B913
C - - - - - 0x0158AF 05:B89F: 60        RTS



sub_B8A0:
C - - - - - 0x0158B0 05:B8A0: 20 E5 9B  JSR sub_0x01BBF5
C - - - - - 0x0158B3 05:B8A3: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x0158B6 05:B8A6: 90 03     BCC bra_B8AB
C - - - - - 0x0158B8 05:B8A8: 20 D6 9B  JSR sub_0x01BBE6_EOR_obj_flag
bra_B8AB:
; bzk optimize, JMP
C - - - - - 0x0158BB 05:B8AB: 20 5E B8  JSR sub_B85E
C - - - - - 0x0158BE 05:B8AE: 60        RTS



sub_B8AF:
C - - - - - 0x0158BF 05:B8AF: 20 DF 9B  JSR sub_0x01BBEF
C - - - - - 0x0158C2 05:B8B2: 4C FB 97  JMP loc_0x01B80B



loc_B8B5:
C D 1 - - - 0x0158C5 05:B8B5: A9 00     LDA #$00
C - - - - - 0x0158C7 05:B8B7: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0158CA 05:B8BA: 20 55 97  JSR sub_0x01B765
C - - - - - 0x0158CD 05:B8BD: F0 04     BEQ bra_B8C3
- - - - - - 0x0158CF 05:B8BF: A9 00     LDA #$00
- - - - - - 0x0158D1 05:B8C1: F0 0B     BEQ bra_B8CE    ; jmp
bra_B8C3:
C - - - - - 0x0158D3 05:B8C3: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0158D6 05:B8C6: 38        SEC
C - - - - - 0x0158D7 05:B8C7: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x0158DA 05:B8CA: 20 4B 9E  JSR sub_0x01BE5B
C - - - - - 0x0158DD 05:B8CD: 98        TYA
bra_B8CE:
C - - - - - 0x0158DE 05:B8CE: A0 00     LDY #$00
C - - - - - 0x0158E0 05:B8D0: C9 08     CMP #$08
C - - - - - 0x0158E2 05:B8D2: 90 03     BCC bra_B8D7
- - - - - - 0x0158E4 05:B8D4: C8        INY ; 01
- - - - - - 0x0158E5 05:B8D5: D0 08     BNE bra_B8DF    ; jmp
bra_B8D7:
C - - - - - 0x0158E7 05:B8D7: C9 05     CMP #$05
C - - - - - 0x0158E9 05:B8D9: 90 04     BCC bra_B8DF
; if 05-07
C - - - - - 0x0158EB 05:B8DB: 38        SEC
C - - - - - 0x0158EC 05:B8DC: E9 03     SBC #$03
C - - - - - 0x0158EE 05:B8DE: A8        TAY
bra_B8DF:
C - - - - - 0x0158EF 05:B8DF: B9 E6 B8  LDA tbl_B8E6,Y
C - - - - - 0x0158F2 05:B8E2: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0158F5 05:B8E5: 60        RTS



tbl_B8E6:
; 
- D 1 - - - 0x0158F6 05:B8E6: 34        .byte $34   ; 00 
- - - - - - 0x0158F7 05:B8E7: 44        .byte $44   ; 01 
; 
- D 1 - - - 0x0158F8 05:B8E8: 38        .byte $38   ; 02 
- D 1 - - - 0x0158F9 05:B8E9: 3C        .byte $3C   ; 03 
- - - - - - 0x0158FA 05:B8EA: 40        .byte $40   ; 04 



loc_B8EB:
C D 1 - - - 0x0158FB 05:B8EB: 20 6B 9A  JSR sub_0x01BA7B
C - - - - - 0x0158FE 05:B8EE: 20 69 9B  JSR sub_0x01BB79
C - - - - - 0x015901 05:B8F1: 20 5A 98  JSR sub_0x01B86A
C - - - - - 0x015904 05:B8F4: 4C DC 9A  JMP loc_0x01BAEC



sub_B8F7:
; in
    ; A = 
    ; Y = 
C - - - - - 0x015907 05:B8F7: 85 71     STA ram_0071_t07
C - - - - - 0x015909 05:B8F9: B9 9C 96  LDA tbl_0x01B6AC_positions,Y
C - - - - - 0x01590C 05:B8FC: 85 C2     STA ram_00C2_pos_X_lo_shield_boomerang
C - - - - - 0x01590E 05:B8FE: B9 9D 96  LDA tbl_0x01B6AC_positions + $01,Y
C - - - - - 0x015911 05:B901: 85 C1     STA ram_00C1_pos_X_hi_shield_boomerang
C - - - - - 0x015913 05:B903: B9 9E 96  LDA tbl_0x01B6AC_positions + $02,Y
C - - - - - 0x015916 05:B906: 85 BF     STA ram_00BF_pos_Y_lo_shield_boomerang
C - - - - - 0x015918 05:B908: B9 9F 96  LDA tbl_0x01B6AC_positions + $03,Y
C - - - - - 0x01591B 05:B90B: 85 BE     STA ram_00BE_pos_Y_hi_shield_boomerang
C - - - - - 0x01591D 05:B90D: 20 18 B9  JSR sub_B918
C - - - - - 0x015920 05:B910: 30 34     BMI bra_B946_RTS
C - - - - - 0x015922 05:B912: 38        SEC
C - - - - - 0x015923 05:B913: E9 06     SBC #$06
C - - - - - 0x015925 05:B915: 4C 5D B9  JMP loc_B95D



bra_B918:
sub_B918:
; out
    ; A = 
C - - - - - 0x015928 05:B918: A9 00     LDA #$00
C - - - - - 0x01592A 05:B91A: 85 C3     STA ram_00C3_pos_X_fr_shield_boomerang
C - - - - - 0x01592C 05:B91C: 85 C0     STA ram_00C0_pos_Y_fr_shield_boomerang
C - - - - - 0x01592E 05:B91E: AD 03 04  LDA ram_pos_X_fr_player
C - - - - - 0x015931 05:B921: 85 C9     STA ram_00C9_pos_X_fr_shield_aim
C - - - - - 0x015933 05:B923: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x015936 05:B926: 85 C8     STA ram_00C8_pos_X_lo_shield_aim
C - - - - - 0x015938 05:B928: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x01593B 05:B92B: 85 C7     STA ram_00C7_pos_X_hi_shield_aim
C - - - - - 0x01593D 05:B92D: AD 06 04  LDA ram_pos_Y_fr_player
C - - - - - 0x015940 05:B930: 85 C6     STA ram_00C6_pos_Y_fr_shield_aim
C - - - - - 0x015942 05:B932: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x015945 05:B935: 85 C5     STA ram_00C5_pos_Y_lo_shield_aim
C - - - - - 0x015947 05:B937: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x01594A 05:B93A: 85 C4     STA ram_00C4_pos_Y_hi_shield_aim
C - - - - - 0x01594C 05:B93C: 20 A4 FF  JSR sub_0x01FFB4_shield_boomerang_handler
; A = 00-0F
C - - - - - 0x01594F 05:B93F: 18        CLC
C - - - - - 0x015950 05:B940: 65 71     ADC ram_0071_t07
C - - - - - 0x015952 05:B942: A8        TAY
C - - - - - 0x015953 05:B943: B9 D8 95  LDA tbl_0x01B5E8,Y
bra_B946_RTS:
C - - - - - 0x015956 05:B946: 60        RTS



sub_B947:
; in
    ; A = 
; out
    ; A = 
C - - - - - 0x015957 05:B947: 85 71     STA ram_0071_t07
C - - - - - 0x015959 05:B949: A4 79     LDY ram_0079_obj_index
C - - - - - 0x01595B 05:B94B: B9 64 04  LDA ram_pos_X_lo_obj + $03,Y
C - - - - - 0x01595E 05:B94E: 85 C2     STA ram_00C2_pos_X_lo_shield_boomerang
C - - - - - 0x015960 05:B950: B9 8B 04  LDA ram_pos_Y_lo_obj + $03,Y
C - - - - - 0x015963 05:B953: 85 BF     STA ram_00BF_pos_Y_lo_shield_boomerang
C - - - - - 0x015965 05:B955: A9 00     LDA #$00
C - - - - - 0x015967 05:B957: 85 C1     STA ram_00C1_pos_X_hi_shield_boomerang
C - - - - - 0x015969 05:B959: 85 BE     STA ram_00BE_pos_Y_hi_shield_boomerang
C - - - - - 0x01596B 05:B95B: F0 BB     BEQ bra_B918    ; jmp



loc_B95D:
; in
    ; A = 
; * 04
C D 1 - - - 0x01596D 05:B95D: 0A        ASL
C - - - - - 0x01596E 05:B95E: 0A        ASL
bra_B95F:
sub_B95F:
; in
    ; A = 
C - - - - - 0x01596F 05:B95F: 85 74     STA ram_0074_t01_table_index
C - - - - - 0x015971 05:B961: A5 CB     LDA ram_00CB_t01
C - - - - - 0x015973 05:B963: C9 05     CMP #$05
C - - - - - 0x015975 05:B965: F0 20     BEQ bra_B987
C - - - - - 0x015977 05:B967: A2 FF     LDX #$FF
bra_B969_loop:
C - - - - - 0x015979 05:B969: E8        INX
C - - - - - 0x01597A 05:B96A: BD 41 04  LDA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x01597D 05:B96D: 30 FA     BMI bra_B969_loop
C - - - - - 0x01597F 05:B96F: 20 59 9F  JSR sub_0x01BF69_increase_X_by_04
; X = 04 05 06 07 08 
C - - - - - 0x015982 05:B972: 86 7A     STX ram_007A_t03_object_index
C - - - - - 0x015984 05:B974: 20 E0 9A  JSR sub_0x01BAF0_clear_obj_data
C - - - - - 0x015987 05:B977: 20 C0 9E  JSR sub_0x01BED0
C - - - - - 0x01598A 05:B97A: 20 48 9F  JSR sub_0x01BF58
C - - - - - 0x01598D 05:B97D: 20 EB 9E  JSR sub_0x01BEFB
C - - - - - 0x015990 05:B980: 20 3D 9F  JSR sub_0x01BF4D
C - - - - - 0x015993 05:B983: E6 CB     INC ram_00CB_t01
C - - - - - 0x015995 05:B985: E6 CE     INC ram_all_objects_counter
bra_B987:
C - - - - - 0x015997 05:B987: A6 79     LDX ram_0079_obj_index
C - - - - - 0x015999 05:B989: 60        RTS



sub_B98A:
loc_B98A:
C D 1 - - - 0x01599A 05:B98A: 98        TYA
C - - - - - 0x01599B 05:B98B: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01599E 05:B98E: 10 CF     BPL bra_B95F
C - - - - - 0x0159A0 05:B990: 18        CLC
C - - - - - 0x0159A1 05:B991: 69 04     ADC #$04
C - - - - - 0x0159A3 05:B993: D0 CA     BNE bra_B95F    ; jmp



loc_B995:
sub_B995:
; in
    ; A = 
C D 1 - - - 0x0159A5 05:B995: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x0159A8 05:B998: 10 03     BPL bra_B99D
C - - - - - 0x0159AA 05:B99A: 18        CLC
C - - - - - 0x0159AB 05:B99B: 69 10     ADC #$10
bra_B99D:
C - - - - - 0x0159AD 05:B99D: 20 47 B9  JSR sub_B947
C - - - - - 0x0159B0 05:B9A0: 30 03     BMI bra_B9A5_RTS
C - - - - - 0x0159B2 05:B9A2: 4C 5D B9  JMP loc_B95D
bra_B9A5_RTS:
C - - - - - 0x0159B5 05:B9A5: 60        RTS



sub_B9A6:
C - - - - - 0x0159B6 05:B9A6: 85 79     STA ram_0079_obj_index
C - - - - - 0x0159B8 05:B9A8: AD 53 04  LDA ram_0453_t02
C - - - - - 0x0159BB 05:B9AB: C9 C8     CMP #$C8
C - - - - - 0x0159BD 05:B9AD: F0 10     BEQ bra_B9BF
C - - - - - 0x0159BF 05:B9AF: A0 DC     LDY #$DC
C - - - - - 0x0159C1 05:B9B1: 20 8A B9  JSR sub_B98A
C - - - - - 0x0159C4 05:B9B4: A0 E0     LDY #$E0
C - - - - - 0x0159C6 05:B9B6: 20 8A B9  JSR sub_B98A
bra_B9B9:
C - - - - - 0x0159C9 05:B9B9: A9 00     LDA #$00
C - - - - - 0x0159CB 05:B9BB: 8D 09 05  STA ram_0509_t02
C - - - - - 0x0159CE 05:B9BE: 60        RTS
bra_B9BF:
C - - - - - 0x0159CF 05:B9BF: A5 CB     LDA ram_00CB_t01
C - - - - - 0x0159D1 05:B9C1: C9 04     CMP #$04
C - - - - - 0x0159D3 05:B9C3: F0 F4     BEQ bra_B9B9
C - - - - - 0x0159D5 05:B9C5: AD 23 05  LDA ram_0523_t04
C - - - - - 0x0159D8 05:B9C8: 20 5F B9  JSR sub_B95F
C - - - - - 0x0159DB 05:B9CB: A6 7A     LDX ram_007A_t03_object_index
C - - - - - 0x0159DD 05:B9CD: 20 6E 9A  JSR sub_0x01BA7E
C - - - - - 0x0159E0 05:B9D0: 4C 13 BB  JMP loc_BB13



sub_B9D3:
C - - - - - 0x0159E3 05:B9D3: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x0159E6 05:B9D6: 30 20     BMI bra_B9F8_RTS
C - - - - - 0x0159E8 05:B9D8: 20 C6 A3  JSR sub_A3C6
C - - - - - 0x0159EB 05:B9DB: F0 09     BEQ bra_B9E6
C - - - - - 0x0159ED 05:B9DD: A5 72     LDA ram_0072_t10_lo
C - - - - - 0x0159EF 05:B9DF: 18        CLC
C - - - - - 0x0159F0 05:B9E0: 69 10     ADC #$10
C - - - - - 0x0159F2 05:B9E2: C9 20     CMP #$20
C - - - - - 0x0159F4 05:B9E4: B0 0D     BCS bra_B9F3
bra_B9E6:
C - - - - - 0x0159F6 05:B9E6: 20 EE A3  JSR sub_A3EE
C - - - - - 0x0159F9 05:B9E9: F0 0D     BEQ bra_B9F8_RTS
C - - - - - 0x0159FB 05:B9EB: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0159FE 05:B9EE: 4A        LSR
C - - - - - 0x0159FF 05:B9EF: B0 07     BCS bra_B9F8_RTS
; bzk optimize, useless BCC
- - - - - - 0x015A01 05:B9F1: 90 00     BCC bra_B9F3    ; jmp
bra_B9F3:
sub_B9F3:
loc_B9F3:
C D 1 - - - 0x015A03 05:B9F3: 20 DE 9A  JSR sub_0x01BAEE
C - - - - - 0x015A06 05:B9F6: C6 CB     DEC ram_00CB_t01
bra_B9F8_RTS:
C - - - - - 0x015A08 05:B9F8: 60        RTS



sub_B9F9:
C - - - - - 0x015A09 05:B9F9: 8A        TXA
C - - - - - 0x015A0A 05:B9FA: 38        SEC
C - - - - - 0x015A0B 05:B9FB: E9 04     SBC #$04
C - - - - - 0x015A0D 05:B9FD: AA        TAX
C - - - - - 0x015A0E 05:B9FE: 20 BF FF  JSR sub_0x01FFCF
C - - - - - 0x015A11 05:BA01: A6 7A     LDX ram_007A_t02_object_index
C - - - - - 0x015A13 05:BA03: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x015A16 05:BA06: F0 09     BEQ bra_BA11_RTS
C - - - - - 0x015A18 05:BA08: A5 75     LDA ram_0075_t04_obj_id
C - - - - - 0x015A1A 05:BA0A: 4A        LSR
C - - - - - 0x015A1B 05:BA0B: A8        TAY
C - - - - - 0x015A1C 05:BA0C: B9 12 BA  LDA tbl_BA12,Y
C - - - - - 0x015A1F 05:BA0F: F0 E2     BEQ bra_B9F3
bra_BA11_RTS:
C - - - - - 0x015A21 05:BA11: 60        RTS



tbl_BA12:
- D 1 - - - 0x015A22 05:BA12: 01        .byte $01   ; 24 
- D 1 - - - 0x015A23 05:BA13: 00        .byte $00   ; 25 
- - - - - - 0x015A24 05:BA14: 01        .byte $01   ; 26 
- D 1 - - - 0x015A25 05:BA15: 00        .byte $00   ; 27 
- D 1 - - - 0x015A26 05:BA16: 00        .byte $00   ; 28 
- - - - - - 0x015A27 05:BA17: 00        .byte $00   ; 29 
- - - - - - 0x015A28 05:BA18: 00        .byte $00   ; 2A 
- - - - - - 0x015A29 05:BA19: 00        .byte $00   ; 2B 
- D 1 - - - 0x015A2A 05:BA1A: 01        .byte $01   ; 2C 
- - - - - - 0x015A2B 05:BA1B: 01        .byte $01   ; 2D 
- D 1 - - - 0x015A2C 05:BA1C: 01        .byte $01   ; 2E 
- D 1 - - - 0x015A2D 05:BA1D: 01        .byte $01   ; 2F 
- D 1 - - - 0x015A2E 05:BA1E: 01        .byte $01   ; 30 
- D 1 - - - 0x015A2F 05:BA1F: 01        .byte $01   ; 31 



tbl_BA20:
- D 1 - - - 0x015A30 05:BA20: 3B BA     .word ofs_046_BA3C_24 - $01
- D 1 - - - 0x015A32 05:BA22: B3 BA     .word ofs_046_BAB4_25 - $01
- D 1 - - - 0x015A34 05:BA24: 6C BA     .word ofs_046_BA6D_26 - $01
- D 1 - - - 0x015A36 05:BA26: AD BA     .word ofs_046_BAAE_27 - $01
- D 1 - - - 0x015A38 05:BA28: B3 BA     .word ofs_046_BAB4_28 - $01
- D 1 - - - 0x015A3A 05:BA2A: 6B BA     .word ofs_046_BA6C_29_RTS - $01
- D 1 - - - 0x015A3C 05:BA2C: B3 BA     .word ofs_046_BAB4_2A - $01
- D 1 - - - 0x015A3E 05:BA2E: 68 BA     .word ofs_046_BA69_2B - $01
- D 1 - - - 0x015A40 05:BA30: B9 BA     .word ofs_046_BABA_2C - $01
- D 1 - - - 0x015A42 05:BA32: D5 BA     .word ofs_046_BAD6_2D - $01
- D 1 - - - 0x015A44 05:BA34: 6C BA     .word ofs_046_BA6D_2E - $01
- D 1 - - - 0x015A46 05:BA36: E6 BA     .word ofs_046_BAE7_2F - $01
- D 1 - - - 0x015A48 05:BA38: 75 BA     .word ofs_046_BA76_30 - $01
- D 1 - - - 0x015A4A 05:BA3A: A7 BA     .word ofs_046_BAA8_31 - $01



ofs_046_BA3C_24:
; con_enemy_id_24
; in
    ; X = 04 05 06 07 08 
C - - - - - 0x015A4C 05:BA3C: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x015A4F 05:BA3F: D0 14     BNE bra_BA55
C - - - - - 0x015A51 05:BA41: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x015A54 05:BA44: F0 26     BEQ bra_BA6C_RTS
C - - - - - 0x015A56 05:BA46: C9 02     CMP #$02
C - - - - - 0x015A58 05:BA48: D0 A9     BNE bra_B9F3
C - - - - - 0x015A5A 05:BA4A: FE 5B 05  INC ram_055B_obj_anim_counter,X
C - - - - - 0x015A5D 05:BA4D: A9 FE     LDA #$FE
C - - - - - 0x015A5F 05:BA4F: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x015A62 05:BA52: 4C C0 9B  JMP loc_0x01BBD0
bra_BA55:
C - - - - - 0x015A65 05:BA55: A9 40     LDA #< $0040
C - - - - - 0x015A67 05:BA57: 18        CLC
C - - - - - 0x015A68 05:BA58: 7D 1A 05  ADC ram_spd_Y_fr_obj,X
C - - - - - 0x015A6B 05:BA5B: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x015A6E 05:BA5E: A9 00     LDA #> $0040
C - - - - - 0x015A70 05:BA60: 7D 27 05  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x015A73 05:BA63: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x015A76 05:BA66: 4C B4 BA  JMP loc_BAB4



ofs_046_BA69_2B:
; con_enemy_id_2B
; in
    ; X = 04 
; bzk optimize, JMP
C - - - - - 0x015A79 05:BA69: 20 6B 9A  JSR sub_0x01BA7B
bra_BA6C_RTS:
ofs_046_BA6C_29_RTS:
; con_enemy_id_29
C - - - - - 0x015A7C 05:BA6C: 60        RTS



ofs_046_BA6D_26:
; con_enemy_id_26
ofs_046_BA6D_2E:
; con_enemy_id_2E
bra_BA6D:
; X = 04 07 08 
C - - - - - 0x015A7D 05:BA6D: AD 94 04  LDA ram_0494_t02
C - - - - - 0x015A80 05:BA70: D0 03     BNE bra_BA75_RTS
; bzk optimize, JMP
C - - - - - 0x015A82 05:BA72: 20 F3 B9  JSR sub_B9F3
bra_BA75_RTS:
C - - - - - 0x015A85 05:BA75: 60        RTS



ofs_046_BA76_30:
; con_enemy_id_30
; in
    ; X = 04 07 
C - - - - - 0x015A86 05:BA76: A9 EC     LDA #$EC
C - - - - - 0x015A88 05:BA78: A0 F4     LDY #$F4
bra_BA7A:
C - - - - - 0x015A8A 05:BA7A: 85 71     STA ram_0071_t14_lo
C - - - - - 0x015A8C 05:BA7C: 84 72     STY ram_0072_t04_lo
C - - - - - 0x015A8E 05:BA7E: AD 57 04  LDA ram_pos_X_fr_obj
C - - - - - 0x015A91 05:BA81: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x015A94 05:BA84: AD 7E 04  LDA ram_pos_Y_fr_obj
C - - - - - 0x015A97 05:BA87: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x015A9A 05:BA8A: A5 71     LDA ram_0071_t14_lo
C - - - - - 0x015A9C 05:BA8C: AC 41 05  LDY ram_0541_obj_flags
C - - - - - 0x015A9F 05:BA8F: 10 05     BPL bra_BA96
C - - - - - 0x015AA1 05:BA91: 49 FF     EOR #$FF
C - - - - - 0x015AA3 05:BA93: 18        CLC
C - - - - - 0x015AA4 05:BA94: 69 01     ADC #$01
bra_BA96:
C - - - - - 0x015AA6 05:BA96: 18        CLC
C - - - - - 0x015AA7 05:BA97: 6D 64 04  ADC ram_pos_X_lo_obj + $03
C - - - - - 0x015AAA 05:BA9A: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x015AAD 05:BA9D: A5 72     LDA ram_0072_t04_lo
C - - - - - 0x015AAF 05:BA9F: 18        CLC
C - - - - - 0x015AB0 05:BAA0: 6D 8B 04  ADC ram_pos_Y_lo_obj + $03
C - - - - - 0x015AB3 05:BAA3: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x015AB6 05:BAA6: D0 C5     BNE bra_BA6D    ; jmp?



ofs_046_BAA8_31:
; con_enemy_id_31
; in
    ; X = 04 
C - - - - - 0x015AB8 05:BAA8: A9 EE     LDA #$EE
C - - - - - 0x015ABA 05:BAAA: A0 EC     LDY #$EC
C - - - - - 0x015ABC 05:BAAC: D0 CC     BNE bra_BA7A    ; jmp



ofs_046_BAAE_27:
; con_enemy_id_27
; in
    ; X = 04 05 06 07 
C - - - - - 0x015ABE 05:BAAE: 20 5E 98  JSR sub_0x01B86E
C - - - - - 0x015AC1 05:BAB1: 4C F3 B9  JMP loc_B9F3



loc_BAB4:
ofs_046_BAB4_25:
; con_enemy_id_25
ofs_046_BAB4_28:
; con_enemy_id_28
ofs_046_BAB4_2A:
; con_enemy_id_2A
; in
    ; X = 04 05 06 07 08 
C D 1 - - - 0x015AC4 05:BAB4: 20 52 98  JSR sub_0x01B862
C - - - - - 0x015AC7 05:BAB7: 4C F3 B9  JMP loc_B9F3



ofs_046_BABA_2C:
; con_enemy_id_2C
; in
    ; X = 04 05 06 07 
C - - - - - 0x015ACA 05:BABA: AD A1 04  LDA ram_04A1_t02
C - - - - - 0x015ACD 05:BABD: D0 13     BNE bra_BAD2
C - - - - - 0x015ACF 05:BABF: 20 A7 9F  JSR sub_0x01BFB7
C - - - - - 0x015AD2 05:BAC2: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x015AD5 05:BAC5: D0 08     BNE bra_BACF
C - - - - - 0x015AD7 05:BAC7: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x015ADA 05:BACA: D0 09     BNE bra_BAD5_RTS
C - - - - - 0x015ADC 05:BACC: 20 52 98  JSR sub_0x01B862
bra_BACF:
C - - - - - 0x015ADF 05:BACF: 8E 09 05  STX ram_0509_t02
bra_BAD2:
C - - - - - 0x015AE2 05:BAD2: 4C F3 B9  JMP loc_B9F3
bra_BAD5_RTS:
C - - - - - 0x015AE5 05:BAD5: 60        RTS



ofs_046_BAD6_2D:
; con_enemy_id_2D
; in
    ; X = 04 05 06 07 08 
C - - - - - 0x015AE6 05:BAD6: AD A1 04  LDA ram_04A1_t02
C - - - - - 0x015AE9 05:BAD9: D0 F7     BNE bra_BAD2
C - - - - - 0x015AEB 05:BADB: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x015AEE 05:BADE: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x015AF1 05:BAE1: D0 EF     BNE bra_BAD2
C - - - - - 0x015AF3 05:BAE3: FE 5B 05  INC ram_055B_obj_anim_counter,X
C - - - - - 0x015AF6 05:BAE6: 60        RTS



ofs_046_BAE7_2F:
; con_enemy_id_2F
; in
    ; X = 04 05 06 07 
C - - - - - 0x015AF7 05:BAE7: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x015AFA 05:BAEA: D0 33     BNE bra_BB1F
C - - - - - 0x015AFC 05:BAEC: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x015AFF 05:BAEF: 30 12     BMI bra_BB03
C - - - - - 0x015B01 05:BAF1: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x015B04 05:BAF4: FE 4E 05  INC ram_054E_obj,X
C - - - - - 0x015B07 05:BAF7: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x015B0A 05:BAFA: C9 07     CMP #$07
C - - - - - 0x015B0C 05:BAFC: D0 0F     BNE bra_BB0D_RTS
C - - - - - 0x015B0E 05:BAFE: A9 FF     LDA #$FF
C - - - - - 0x015B10 05:BB00: 9D 4E 05  STA ram_054E_obj,X
bra_BB03:
C - - - - - 0x015B13 05:BB03: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x015B16 05:BB06: C9 08     CMP #$08
C - - - - - 0x015B18 05:BB08: F0 04     BEQ bra_BB0E
C - - - - - 0x015B1A 05:BB0A: FE 71 04  INC ram_pos_X_hi_obj + $03,X
bra_BB0D_RTS:
C - - - - - 0x015B1D 05:BB0D: 60        RTS
bra_BB0E:
C - - - - - 0x015B1E 05:BB0E: A9 00     LDA #$00
C - - - - - 0x015B20 05:BB10: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
loc_BB13:
C D 1 - - - 0x015B23 05:BB13: 8E 09 05  STX ram_0509_t02
C - - - - - 0x015B26 05:BB16: FE D9 04  INC ram_04D9_obj,X
C - - - - - 0x015B29 05:BB19: A9 0A     LDA #$0A
C - - - - - 0x015B2B 05:BB1B: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_BB1E_RTS:
C - - - - - 0x015B2E 05:BB1E: 60        RTS
bra_BB1F:
C - - - - - 0x015B2F 05:BB1F: DE 5B 05  DEC ram_055B_obj_anim_counter,X
C - - - - - 0x015B32 05:BB22: D0 FA     BNE bra_BB1E_RTS
C - - - - - 0x015B34 05:BB24: 4C F3 B9  JMP loc_B9F3



sub_BB27:
loc_BB27:
C D 1 - - - 0x015B37 05:BB27: A0 30     LDY #$30
C - - - - - 0x015B39 05:BB29: 20 8A B9  JSR sub_B98A
loc_BB2C:
; bzk optimize
C D 1 - - - 0x015B3C 05:BB2C: 4C 98 9E  JMP loc_0x01BEA8



loc_BB2F:
- - - - - - 0x015B3F 05:BB2F: A0 40     LDY #$40
bra_BB31:
C - - - - - 0x015B41 05:BB31: 20 8A B9  JSR sub_B98A
C - - - - - 0x015B44 05:BB34: 4C 2C BB  JMP loc_BB2C



sub_BB37:
C - - - - - 0x015B47 05:BB37: A0 38     LDY #$38
C - - - - - 0x015B49 05:BB39: D0 F6     BNE bra_BB31    ; jmp



loc_BB3B:
sub_BB3B:
C D 1 - - - 0x015B4B 05:BB3B: A9 00     LDA #$00
C - - - - - 0x015B4D 05:BB3D: 20 95 B9  JSR sub_B995
C - - - - - 0x015B50 05:BB40: 4C 8C 9E  JMP loc_0x01BE9C



loc_BB43:
C D 1 - - - 0x015B53 05:BB43: A0 18     LDY #$18
C - - - - - 0x015B55 05:BB45: D0 EA     BNE bra_BB31    ; jmp



sub_BB47:
; out
    ; Y = 
C - - - - - 0x015B57 05:BB47: A0 20     LDY #$20
C - - - - - 0x015B59 05:BB49: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x015B5C 05:BB4C: 29 10     AND #$10
C - - - - - 0x015B5E 05:BB4E: F0 02     BEQ bra_BB52
C - - - - - 0x015B60 05:BB50: A0 30     LDY #$30
bra_BB52:
C - - - - - 0x015B62 05:BB52: 98        TYA
C - - - - - 0x015B63 05:BB53: 20 47 B9  JSR sub_B947
C - - - - - 0x015B66 05:BB56: A6 79     LDX ram_0079_obj_index
C - - - - - 0x015B68 05:BB58: A8        TAY
C - - - - - 0x015B69 05:BB59: 60        RTS



loc_BB5A:
sub_BB5A:
C D 1 - - - 0x015B6A 05:BB5A: A0 60     LDY #$60
bra_BB5C:
C - - - - - 0x015B6C 05:BB5C: 20 8A B9  JSR sub_B98A
loc_BB5F:
; bzk optimize
C D 1 - - - 0x015B6F 05:BB5F: 4C 98 9E  JMP loc_0x01BEA8



loc_BB62:
C D 1 - - - 0x015B72 05:BB62: A0 F8     LDY #$F8
C - - - - - 0x015B74 05:BB64: D0 F6     BNE bra_BB5C    ; jmp



loc_BB66:
C D 1 - - - 0x015B76 05:BB66: A9 54     LDA #$54
C - - - - - 0x015B78 05:BB68: AC 41 05  LDY ram_0541_obj_flags
C - - - - - 0x015B7B 05:BB6B: 10 03     BPL bra_BB70
C - - - - - 0x015B7D 05:BB6D: 18        CLC
C - - - - - 0x015B7E 05:BB6E: 69 08     ADC #$08
bra_BB70:
C - - - - - 0x015B80 05:BB70: 20 5F B9  JSR sub_B95F
C - - - - - 0x015B83 05:BB73: 4C 5F BB  JMP loc_BB5F



loc_BB76:
C D 1 - - - 0x015B86 05:BB76: A0 F0     LDY #$F0
C - - - - - 0x015B88 05:BB78: EE 94 04  INC ram_0494_t02
C - - - - - 0x015B8B 05:BB7B: 20 8A B9  JSR sub_B98A
C - - - - - 0x015B8E 05:BB7E: 4C 8C 9E  JMP loc_0x01BE9C



sub_BB81:
loc_BB81:
C D 1 - - - 0x015B91 05:BB81: A0 A0     LDY #$A0
C - - - - - 0x015B93 05:BB83: EE 94 04  INC ram_0494_t02
C - - - - - 0x015B96 05:BB86: 4C 8A B9  JMP loc_B98A



sub_BB89:
C - - - - - 0x015B99 05:BB89: 20 81 BB  JSR sub_BB81
C - - - - - 0x015B9C 05:BB8C: A9 31     LDA #con_enemy_id_31
C - - - - - 0x015B9E 05:BB8E: 8D 4E 04  STA ram_obj_id + $04
C - - - - - 0x015BA1 05:BB91: 60        RTS



loc_BB92_clear_custom_addresses:
; in
    ; A = 
C D 1 - - - 0x015BA2 05:BB92: 38        SEC
C - - - - - 0x015BA3 05:BB93: E9 81     SBC #$81
C - - - - - 0x015BA5 05:BB95: C9 03     CMP #$03
C - - - - - 0x015BA7 05:BB97: 90 06     BCC bra_BB9F
C - - - - - 0x015BA9 05:BB99: EE 3D 05  INC ram_053D_t01
C - - - - - 0x015BAC 05:BB9C: 38        SEC
C - - - - - 0x015BAD 05:BB9D: E9 03     SBC #$03
bra_BB9F:
C - - - - - 0x015BAF 05:BB9F: A8        TAY
C - - - - - 0x015BB0 05:BBA0: 0A        ASL
C - - - - - 0x015BB1 05:BBA1: 8D BB 04  STA ram_04BB_t03
C - - - - - 0x015BB4 05:BBA4: B9 C4 BB  LDA tbl_BBC4,Y
C - - - - - 0x015BB7 05:BBA7: 09 80     ORA #$80
C - - - - - 0x015BB9 05:BBA9: 8D 53 04  STA ram_0453_t02
C - - - - - 0x015BBC 05:BBAC: A9 C0     LDA #$C0
C - - - - - 0x015BBE 05:BBAE: 8D 6D 04  STA ram_046D_t02
C - - - - - 0x015BC1 05:BBB1: B9 C7 BB  LDA tbl_BBC7,Y
C - - - - - 0x015BC4 05:BBB4: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x015BC6 05:BBB6: 20 F1 9F  JSR sub_0x01C001
C - - - - - 0x015BC9 05:BBB9: AD 3D 05  LDA ram_053D_t01
C - - - - - 0x015BCC 05:BBBC: F0 03     BEQ bra_BBC1
C - - - - - 0x015BCE 05:BBBE: 20 18 BC  JSR sub_BC18
bra_BBC1:
C - - - - - 0x015BD1 05:BBC1: 4C 99 A0  JMP loc_A099_restore_prg_bank



tbl_BBC4:
- D 1 - - - 0x015BD4 05:BBC4: 00        .byte $00   ; 00 
- D 1 - - - 0x015BD5 05:BBC5: 01        .byte $01   ; 01 
- D 1 - - - 0x015BD6 05:BBC6: 03        .byte $03   ; 02 



tbl_BBC7:
- D 1 - - - 0x015BD7 05:BBC7: 05        .byte con_000D_05   ; 00 
- D 1 - - - 0x015BD8 05:BBC8: 06        .byte con_000D_06   ; 01 
- D 1 - - - 0x015BD9 05:BBC9: 03        .byte con_000D_03   ; 02 



sub_BBCA:
C - - - - - 0x015BDA 05:BBCA: AD 3D 05  LDA ram_053D_t01
C - - - - - 0x015BDD 05:BBCD: D0 48     BNE bra_BC17_RTS
C - - - - - 0x015BDF 05:BBCF: 20 18 BC  JSR sub_BC18
C - - - - - 0x015BE2 05:BBD2: 20 3F 9D  JSR sub_0x01BD4F
C - - - - - 0x015BE5 05:BBD5: 20 D0 BF  JSR sub_BFD0
C - - - - - 0x015BE8 05:BBD8: 20 80 9F  JSR sub_0x01BF90_prepare_adresses_with_buttons_values
C - - - - - 0x015BEB 05:BBDB: 20 95 9F  JSR sub_0x01BFA5
C - - - - - 0x015BEE 05:BBDE: AC BB 04  LDY ram_04BB_t03
C - - - - - 0x015BF1 05:BBE1: A9 BB     LDA #> (ofs_BBF0_return - $01)
C - - - - - 0x015BF3 05:BBE3: 48        PHA
C - - - - - 0x015BF4 05:BBE4: A9 EF     LDA #< (ofs_BBF0_return - $01)
C - - - - - 0x015BF6 05:BBE6: 48        PHA
C - - - - - 0x015BF7 05:BBE7: B9 2E BC  LDA tbl_BC2D + $01,Y
C - - - - - 0x015BFA 05:BBEA: 48        PHA
C - - - - - 0x015BFB 05:BBEB: B9 2D BC  LDA tbl_BC2D,Y
C - - - - - 0x015BFE 05:BBEE: 48        PHA
C - - - - - 0x015BFF 05:BBEF: 60        RTS



ofs_BBF0_return:
C - - - - - 0x015C00 05:BBF0: 20 17 9C  JSR sub_0x01BC27
C - - - - - 0x015C03 05:BBF3: AD 60 04  LDA ram_0460
C - - - - - 0x015C06 05:BBF6: F0 1F     BEQ bra_BC17_RTS
C - - - - - 0x015C08 05:BBF8: CE 60 04  DEC ram_0460
C - - - - - 0x015C0B 05:BBFB: F0 03     BEQ bra_BC00
C - - - - - 0x015C0D 05:BBFD: 4C B1 9E  JMP loc_0x01BEC1
bra_BC00:
C - - - - - 0x015C10 05:BC00: A9 80     LDA #$80
C - - - - - 0x015C12 05:BC02: 8D 3D 04  STA ram_043A_obj_flags + $03
C - - - - - 0x015C15 05:BC05: AD 6C 05  LDA ram_056C_obj
C - - - - - 0x015C18 05:BC08: D0 0D     BNE bra_BC17_RTS
C - - - - - 0x015C1A 05:BC0A: AD 79 05  LDA ram_obj_hp
C - - - - - 0x015C1D 05:BC0D: F0 08     BEQ bra_BC17_RTS
C - - - - - 0x015C1F 05:BC0F: 30 06     BMI bra_BC17_RTS
C - - - - - 0x015C21 05:BC11: AD 4A 05  LDA ram_054A_t01
C - - - - - 0x015C24 05:BC14: 8D 6C 05  STA ram_056C_obj
bra_BC17_RTS:
C - - - - - 0x015C27 05:BC17: 60        RTS



sub_BC18:
C - - - - - 0x015C28 05:BC18: AD 53 04  LDA ram_0453_t02
C - - - - - 0x015C2B 05:BC1B: 29 0F     AND #$0F
C - - - - - 0x015C2D 05:BC1D: 0A        ASL
C - - - - - 0x015C2E 05:BC1E: 85 75     STA ram_0075_t03_obj_id
C - - - - - 0x015C30 05:BC20: A2 00     LDX #$00
C - - - - - 0x015C32 05:BC22: 86 79     STX ram_0079_obj_index
C - - - - - 0x015C34 05:BC24: AD 3D 04  LDA ram_043A_obj_flags + $03
C - - - - - 0x015C37 05:BC27: 30 03     BMI bra_BC2C_RTS
; bzk optimize, JMP
C - - - - - 0x015C39 05:BC29: 20 ED BE  JSR sub_BEED
bra_BC2C_RTS:
C - - - - - 0x015C3C 05:BC2C: 60        RTS



tbl_BC2D:
- D 1 - - - 0x015C3D 05:BC2D: 42 BC     .word ofs_044_BC43_00 - $01
- D 1 - - - 0x015C3F 05:BC2F: 94 BD     .word ofs_044_BD95_02 - $01
- D 1 - - - 0x015C41 05:BC31: E6 BD     .word ofs_044_BDE7_04 - $01



tbl_BC33:
- D 1 - - - 0x015C43 05:BC33: 50 BC     .word ofs_045_BC51_00 - $01
- D 1 - - - 0x015C45 05:BC35: 67 BC     .word ofs_045_BC68_01 - $01
- D 1 - - - 0x015C47 05:BC37: 84 BC     .word ofs_045_BC85_02 - $01
- D 1 - - - 0x015C49 05:BC39: D2 BC     .word ofs_045_BCD3_03 - $01
- D 1 - - - 0x015C4B 05:BC3B: E7 BC     .word ofs_045_BCE8_04 - $01
- D 1 - - - 0x015C4D 05:BC3D: AF BC     .word ofs_045_BCB0_05 - $01
- D 1 - - - 0x015C4F 05:BC3F: 13 BD     .word ofs_045_BD14_06 - $01
- D 1 - - - 0x015C51 05:BC41: 25 BD     .word ofs_045_BD26_07 - $01



ofs_044_BC43_00:
C - - - - - 0x015C53 05:BC43: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x015C56 05:BC46: B9 34 BC  LDA tbl_BC33 + $01,Y
C - - - - - 0x015C59 05:BC49: 48        PHA
C - - - - - 0x015C5A 05:BC4A: B9 33 BC  LDA tbl_BC33,Y
C - - - - - 0x015C5D 05:BC4D: 48        PHA
C - - - - - 0x015C5E 05:BC4E: A5 37     LDA ram_buttons + $01
C - - - - - 0x015C60 05:BC50: 60        RTS



ofs_045_BC51_00:
ofs_095_BC51_00:
C - - - - - 0x015C61 05:BC51: AC 8B 04  LDY ram_pos_Y_lo_obj + $03
C - - - - - 0x015C64 05:BC54: 8C 5B 05  STY ram_055B_obj_anim_counter
loc_BC57:
C D 1 - - - 0x015C67 05:BC57: A0 81     LDY #$81
C - - - - - 0x015C69 05:BC59: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015C6B 05:BC5B: D0 72     BNE bra_BCCF
C - - - - - 0x015C6D 05:BC5D: C8        INY ; 82
C - - - - - 0x015C6E 05:BC5E: 24 67     BIT ram_0067_t4A_btn_Up
C - - - - - 0x015C70 05:BC60: D0 6D     BNE bra_BCCF
C - - - - - 0x015C72 05:BC62: C8        INY ; 83
C - - - - - 0x015C73 05:BC63: 24 6B     BIT ram_006B_t14_btns_LR
C - - - - - 0x015C75 05:BC65: D0 68     BNE bra_BCCF
C - - - - - 0x015C77 05:BC67: 60        RTS



ofs_045_BC68_01:
ofs_095_BC68_01:
C - - - - - 0x015C78 05:BC68: A0 80     LDY #$80
C - - - - - 0x015C7A 05:BC6A: 24 6B     BIT ram_006B_t14_btns_LR
C - - - - - 0x015C7C 05:BC6C: F0 61     BEQ bra_BCCF
C - - - - - 0x015C7E 05:BC6E: C8        INY ; 81
C - - - - - 0x015C7F 05:BC6F: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015C81 05:BC71: D0 5C     BNE bra_BCCF
C - - - - - 0x015C83 05:BC73: C8        INY ; 82
C - - - - - 0x015C84 05:BC74: 24 67     BIT ram_0067_t4A_btn_Up
C - - - - - 0x015C86 05:BC76: D0 57     BNE bra_BCCF
C - - - - - 0x015C88 05:BC78: 20 6B 9F  JSR sub_0x01BF7B
C - - - - - 0x015C8B 05:BC7B: D0 52     BNE bra_BCCF
C - - - - - 0x015C8D 05:BC7D: 20 4F A4  JSR sub_A44F
C - - - - - 0x015C90 05:BC80: F0 62     BEQ bra_BCE4
C - - - - - 0x015C92 05:BC82: 4C 6B 9A  JMP loc_0x01BA7B



ofs_045_BC85_02:
C - - - - - 0x015C95 05:BC85: AC F3 04  LDY ram_04F3_obj
C - - - - - 0x015C98 05:BC88: D0 0F     BNE bra_BC99
C - - - - - 0x015C9A 05:BC8A: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015C9C 05:BC8C: F0 1B     BEQ bra_BCA9
C - - - - - 0x015C9E 05:BC8E: 20 F3 98  JSR sub_0x01B903
C - - - - - 0x015CA1 05:BC91: A9 18     LDA #$18
C - - - - - 0x015CA3 05:BC93: 20 3A 9B  JSR sub_0x01BB4A
C - - - - - 0x015CA6 05:BC96: 4C 43 BB  JMP loc_BB43
bra_BC99:
C - - - - - 0x015CA9 05:BC99: A5 37     LDA ram_buttons + $01
C - - - - - 0x015CAB 05:BC9B: 29 08     AND #con_btn_Up
C - - - - - 0x015CAD 05:BC9D: D0 07     BNE bra_BCA6_pressed_Up
C - - - - - 0x015CAF 05:BC9F: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x015CB2 05:BCA2: C0 01     CPY #$01
C - - - - - 0x015CB4 05:BCA4: F0 03     BEQ bra_BCA9
bra_BCA6_pressed_Up:
C - - - - - 0x015CB6 05:BCA6: 4C 60 BD  JMP loc_BD60
bra_BCA9:
C - - - - - 0x015CB9 05:BCA9: A9 00     LDA #$00
bra_BCAB:
C - - - - - 0x015CBB 05:BCAB: EE F3 04  INC ram_04F3_obj
C - - - - - 0x015CBE 05:BCAE: D0 61     BNE bra_BD11    ; jmp?



ofs_045_BCB0_05:
C - - - - - 0x015CC0 05:BCB0: AC F3 04  LDY ram_04F3_obj
C - - - - - 0x015CC3 05:BCB3: D0 0A     BNE bra_BCBF
C - - - - - 0x015CC5 05:BCB5: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015CC7 05:BCB7: F0 0D     BEQ bra_BCC6
C - - - - - 0x015CC9 05:BCB9: 20 F3 98  JSR sub_0x01B903
C - - - - - 0x015CCC 05:BCBC: 4C 27 BB  JMP loc_BB27
bra_BCBF:
C - - - - - 0x015CCF 05:BCBF: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x015CD2 05:BCC2: C0 01     CPY #$01
C - - - - - 0x015CD4 05:BCC4: D0 04     BNE bra_BCCA
bra_BCC6:
C - - - - - 0x015CD6 05:BCC6: A9 0E     LDA #$0E
C - - - - - 0x015CD8 05:BCC8: D0 E1     BNE bra_BCAB    ; jmp
bra_BCCA:
C - - - - - 0x015CDA 05:BCCA: A9 04     LDA #$04
C - - - - - 0x015CDC 05:BCCC: 4C 62 BD  JMP loc_BD62
bra_BCCF:
C - - - - - 0x015CDF 05:BCCF: 4C 2D BF  JMP loc_BF2D
bra_BCD2_RTS:
C - - - - - 0x015CE2 05:BCD2: 60        RTS



ofs_045_BCD3_03:
ofs_095_BCD3_03:
C - - - - - 0x015CE3 05:BCD3: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
C - - - - - 0x015CE6 05:BCD6: C9 40     CMP #$40
C - - - - - 0x015CE8 05:BCD8: F0 0A     BEQ bra_BCE4
C - - - - - 0x015CEA 05:BCDA: AD 5B 05  LDA ram_055B_obj_anim_counter
C - - - - - 0x015CED 05:BCDD: ED 8B 04  SBC ram_pos_Y_lo_obj + $03
C - - - - - 0x015CF0 05:BCE0: C9 20     CMP #$20
C - - - - - 0x015CF2 05:BCE2: 90 EE     BCC bra_BCD2_RTS
bra_BCE4:
C - - - - - 0x015CF4 05:BCE4: A0 84     LDY #$84
C - - - - - 0x015CF6 05:BCE6: D0 E7     BNE bra_BCCF    ; jmp



ofs_045_BCE8_04:
C - - - - - 0x015CF8 05:BCE8: A0 0C     LDY #$0C
C - - - - - 0x015CFA 05:BCEA: 24 67     BIT ram_0067_t4A_btn_Up
C - - - - - 0x015CFC 05:BCEC: D0 0D     BNE bra_BCFB
C - - - - - 0x015CFE 05:BCEE: 24 68     BIT ram_0068_t13_btn_Down
C - - - - - 0x015D00 05:BCF0: F0 0C     BEQ bra_BCFE
C - - - - - 0x015D02 05:BCF2: A0 80     LDY #$80
C - - - - - 0x015D04 05:BCF4: 20 AC 98  JSR sub_0x01B8BC
C - - - - - 0x015D07 05:BCF7: B0 D6     BCS bra_BCCF
C - - - - - 0x015D09 05:BCF9: A0 0E     LDY #$0E
bra_BCFB:
C - - - - - 0x015D0B 05:BCFB: 98        TYA
C - - - - - 0x015D0C 05:BCFC: D0 13     BNE bra_BD11    ; jmp
bra_BCFE:
C - - - - - 0x015D0E 05:BCFE: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015D10 05:BD00: F0 07     BEQ bra_BD09
C - - - - - 0x015D12 05:BD02: EE D9 04  INC ram_04D9_obj
C - - - - - 0x015D15 05:BD05: A9 1A     LDA #$1A
C - - - - - 0x015D17 05:BD07: D0 08     BNE bra_BD11    ; jmp
bra_BD09:
C - - - - - 0x015D19 05:BD09: 20 5F 9F  JSR sub_0x01BF6F
C - - - - - 0x015D1C 05:BD0C: AD 34 05  LDA ram_0534_t04
C - - - - - 0x015D1F 05:BD0F: 29 FE     AND #$FE
bra_BD11:
C - - - - - 0x015D21 05:BD11: 4C 3A 9B  JMP loc_0x01BB4A



ofs_045_BD14_06:
ofs_095_BD14_06:
ofs_096_BD14_06:
C - - - - - 0x015D24 05:BD14: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015D27 05:BD17: B9 21 BD  LDA tbl_BD20 + $01,Y
C - - - - - 0x015D2A 05:BD1A: 48        PHA
C - - - - - 0x015D2B 05:BD1B: B9 20 BD  LDA tbl_BD20,Y
C - - - - - 0x015D2E 05:BD1E: 48        PHA
C - - - - - 0x015D2F 05:BD1F: 60        RTS



tbl_BD20:
- D 1 - - - 0x015D30 05:BD20: A8 9D     .word ofs_081_0x01BDB9_00 - $01
- D 1 - - - 0x015D32 05:BD22: B9 9D     .word ofs_081_0x01BDCA_01 - $01
- D 1 - - - 0x015D34 05:BD24: EF BF     .word ofs_081_BFF0_02 - $01



ofs_045_BD26_07:
ofs_095_BD26_07:
ofs_096_BD26_07:
C - - - - - 0x015D36 05:BD26: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015D39 05:BD29: B9 33 BD  LDA tbl_BD32 + $01,Y
C - - - - - 0x015D3C 05:BD2C: 48        PHA
C - - - - - 0x015D3D 05:BD2D: B9 32 BD  LDA tbl_BD32,Y
C - - - - - 0x015D40 05:BD30: 48        PHA
C - - - - - 0x015D41 05:BD31: 60        RTS



tbl_BD32:
- D 1 - - - 0x015D42 05:BD32: A8 9D     .word ofs_082_0x01BDB9_00 - $01
- D 1 - - - 0x015D44 05:BD34: B9 9D     .word ofs_082_0x01BDCA_01 - $01
- D 1 - - - 0x015D46 05:BD36: F7 BF     .word ofs_082_BFF8_02 - $01
- D 1 - - - 0x015D48 05:BD38: D7 9D     .word ofs_082_0x01BDE8_03 - $01
- D 1 - - - 0x015D4A 05:BD3A: 74 9D     .word ofs_082_0x01BD85_04 - $01



tbl_BD3C:
- D 1 - - - 0x015D4C 05:BD3C: 50 BC     .word ofs_095_BC51_00 - $01
- D 1 - - - 0x015D4E 05:BD3E: 67 BC     .word ofs_095_BC68_01 - $01
- D 1 - - - 0x015D50 05:BD40: 4B BD     .word ofs_095_BD4C_02 - $01
- D 1 - - - 0x015D52 05:BD42: D2 BC     .word ofs_095_BCD3_03 - $01
- D 1 - - - 0x015D54 05:BD44: A2 BD     .word ofs_095_BDA3_04 - $01
- D 1 - - - 0x015D56 05:BD46: 6A BD     .word ofs_095_BD6B_05 - $01
- D 1 - - - 0x015D58 05:BD48: 13 BD     .word ofs_095_BD14_06 - $01
- D 1 - - - 0x015D5A 05:BD4A: 25 BD     .word ofs_095_BD26_07 - $01



ofs_095_BD4C_02:
C - - - - - 0x015D5C 05:BD4C: AC F3 04  LDY ram_04F3_obj
C - - - - - 0x015D5F 05:BD4F: D0 06     BNE bra_BD57
C - - - - - 0x015D61 05:BD51: 20 F3 98  JSR sub_0x01B903
C - - - - - 0x015D64 05:BD54: 4C 62 BB  JMP loc_BB62
bra_BD57:
C - - - - - 0x015D67 05:BD57: A5 37     LDA ram_buttons + $01
C - - - - - 0x015D69 05:BD59: 29 08     AND #con_btn_Up
C - - - - - 0x015D6B 05:BD5B: D0 03     BNE bra_BD60_pressed_Up
C - - - - - 0x015D6D 05:BD5D: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
bra_BD60_pressed_Up:
loc_BD60:
C D 1 - - - 0x015D70 05:BD60: A9 00     LDA #$00
bra_BD62:
loc_BD62:
C D 1 - - - 0x015D72 05:BD62: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x015D75 05:BD65: A9 00     LDA #$00
C - - - - - 0x015D77 05:BD67: 8D F3 04  STA ram_04F3_obj
C - - - - - 0x015D7A 05:BD6A: 60        RTS



ofs_095_BD6B_05:
C - - - - - 0x015D7B 05:BD6B: A0 80     LDY #$80
C - - - - - 0x015D7D 05:BD6D: 20 AC 98  JSR sub_0x01B8BC
C - - - - - 0x015D80 05:BD70: B0 20     BCS bra_BD92
C - - - - - 0x015D82 05:BD72: AC F3 04  LDY ram_04F3_obj
C - - - - - 0x015D85 05:BD75: D0 11     BNE bra_BD88
C - - - - - 0x015D87 05:BD77: 20 F3 98  JSR sub_0x01B903
C - - - - - 0x015D8A 05:BD7A: 20 85 9C  JSR sub_0x01BC95
C - - - - - 0x015D8D 05:BD7D: AD 5B 05  LDA ram_055B_obj_anim_counter
C - - - - - 0x015D90 05:BD80: D0 03     BNE bra_BD85
C - - - - - 0x015D92 05:BD82: 4C 5A BB  JMP loc_BB5A
bra_BD85:
C - - - - - 0x015D95 05:BD85: 4C 66 BB  JMP loc_BB66
bra_BD88:
C - - - - - 0x015D98 05:BD88: 20 EB 98  JSR sub_0x01B8FB
C - - - - - 0x015D9B 05:BD8B: 20 85 9C  JSR sub_0x01BC95
C - - - - - 0x015D9E 05:BD8E: A9 04     LDA #$04
C - - - - - 0x015DA0 05:BD90: D0 D0     BNE bra_BD62    ; jmp
bra_BD92:
C - - - - - 0x015DA2 05:BD92: 4C 2D BF  JMP loc_BF2D



ofs_044_BD95_02:
C - - - - - 0x015DA5 05:BD95: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x015DA8 05:BD98: B9 3D BD  LDA tbl_BD3C + $01,Y
C - - - - - 0x015DAB 05:BD9B: 48        PHA
C - - - - - 0x015DAC 05:BD9C: B9 3C BD  LDA tbl_BD3C,Y
C - - - - - 0x015DAF 05:BD9F: 48        PHA
C - - - - - 0x015DB0 05:BDA0: A5 37     LDA ram_buttons + $01
bra_BDA2_RTS:
C - - - - - 0x015DB2 05:BDA2: 60        RTS



ofs_095_BDA3_04:
C - - - - - 0x015DB3 05:BDA3: A0 00     LDY #$00
C - - - - - 0x015DB5 05:BDA5: 8C 5B 05  STY ram_055B_obj_anim_counter
C - - - - - 0x015DB8 05:BDA8: 24 67     BIT ram_0067_t4A_btn_Up
C - - - - - 0x015DBA 05:BDAA: D0 15     BNE bra_BDC1
C - - - - - 0x015DBC 05:BDAC: 24 68     BIT ram_0068_t13_btn_Down
C - - - - - 0x015DBE 05:BDAE: F0 0E     BEQ bra_BDBE
C - - - - - 0x015DC0 05:BDB0: A0 80     LDY #$80
C - - - - - 0x015DC2 05:BDB2: 20 AC 98  JSR sub_0x01B8BC
C - - - - - 0x015DC5 05:BDB5: B0 DB     BCS bra_BD92
C - - - - - 0x015DC7 05:BDB7: EE 5B 05  INC ram_055B_obj_anim_counter
C - - - - - 0x015DCA 05:BDBA: A9 1C     LDA #$1C
C - - - - - 0x015DCC 05:BDBC: D0 05     BNE bra_BDC3    ; jmp
bra_BDBE:
C - - - - - 0x015DCE 05:BDBE: 20 5F 9F  JSR sub_0x01BF6F
bra_BDC1:
C - - - - - 0x015DD1 05:BDC1: A9 04     LDA #$04
bra_BDC3:
C - - - - - 0x015DD3 05:BDC3: 20 3A 9B  JSR sub_0x01BB4A
C - - - - - 0x015DD6 05:BDC6: A5 37     LDA ram_buttons + $01
C - - - - - 0x015DD8 05:BDC8: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015DDA 05:BDCA: F0 D6     BEQ bra_BDA2_RTS
C - - - - - 0x015DDC 05:BDCC: EE D9 04  INC ram_04D9_obj
C - - - - - 0x015DDF 05:BDCF: 20 6E 9A  JSR sub_0x01BA7E
C - - - - - 0x015DE2 05:BDD2: 4C 85 9C  JMP loc_0x01BC95



tbl_BDD5:
- D 1 - - - 0x015DE5 05:BDD5: FC BD     .word ofs_096_BDFD_00 - $01
- D 1 - - - 0x015DE7 05:BDD7: A4 BE     .word ofs_096_BEA5_01 - $01
- D 1 - - - 0x015DE9 05:BDD9: 13 BE     .word ofs_096_BE14_02 - $01
- D 1 - - - 0x015DEB 05:BDDB: 27 BE     .word ofs_096_BE28_03 - $01
- D 1 - - - 0x015DED 05:BDDD: BE BE     .word ofs_096_BEBF_04 - $01
- D 1 - - - 0x015DEF 05:BDDF: 79 BE     .word ofs_096_BE7A_05 - $01
- D 1 - - - 0x015DF1 05:BDE1: 13 BD     .word ofs_096_BD14_06 - $01
- D 1 - - - 0x015DF3 05:BDE3: 25 BD     .word ofs_096_BD26_07 - $01
- D 1 - - - 0x015DF5 05:BDE5: 98 BE     .word ofs_096_BE99_08 - $01



ofs_044_BDE7_04:
C - - - - - 0x015DF7 05:BDE7: AD 23 05  LDA ram_0523_t03
C - - - - - 0x015DFA 05:BDEA: F0 03     BEQ bra_BDEF
C - - - - - 0x015DFC 05:BDEC: CE 23 05  DEC ram_0523_t03
bra_BDEF:
C - - - - - 0x015DFF 05:BDEF: 20 50 9C  JSR sub_0x01BC60_get_jump_table_index_1
C - - - - - 0x015E02 05:BDF2: B9 D6 BD  LDA tbl_BDD5 + $01,Y
C - - - - - 0x015E05 05:BDF5: 48        PHA
C - - - - - 0x015E06 05:BDF6: B9 D5 BD  LDA tbl_BDD5,Y
C - - - - - 0x015E09 05:BDF9: 48        PHA
C - - - - - 0x015E0A 05:BDFA: A5 37     LDA ram_buttons + $01
C - - - - - 0x015E0C 05:BDFC: 60        RTS



ofs_096_BDFD_00:
C - - - - - 0x015E0D 05:BDFD: AC F3 04  LDY ram_04F3_obj
C - - - - - 0x015E10 05:BE00: F0 09     BEQ bra_BE0B
- - - - - - 0x015E12 05:BE02: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
- - - - - - 0x015E15 05:BE05: A9 00     LDA #$00
- - - - - - 0x015E17 05:BE07: 8D F3 04  STA ram_04F3_obj
- - - - - - 0x015E1A 05:BE0A: 60        RTS
bra_BE0B:
C - - - - - 0x015E1B 05:BE0B: A0 84     LDY #$84
C - - - - - 0x015E1D 05:BE0D: 24 68     BIT ram_0068_t13_btn_Down
C - - - - - 0x015E1F 05:BE0F: D0 50     BNE bra_BE61
C - - - - - 0x015E21 05:BE11: 4C 57 BC  JMP loc_BC57



ofs_096_BE14_02:
C - - - - - 0x015E24 05:BE14: AD F3 04  LDA ram_04F3_obj
C - - - - - 0x015E27 05:BE17: D0 06     BNE bra_BE1F
C - - - - - 0x015E29 05:BE19: EE F3 04  INC ram_04F3_obj
C - - - - - 0x015E2C 05:BE1C: 4C 76 BB  JMP loc_BB76
bra_BE1F:
C - - - - - 0x015E2F 05:BE1F: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
; bzk optimize, useless DEC?
C - - - - - 0x015E32 05:BE22: CE 94 04  DEC ram_0494_t02
; 
C - - - - - 0x015E35 05:BE25: 4C C5 BE  JMP loc_BEC5



ofs_096_BE28_03:
C - - - - - 0x015E38 05:BE28: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015E3A 05:BE2A: F0 24     BEQ bra_BE50
C - - - - - 0x015E3C 05:BE2C: 20 00 9B  JSR sub_0x01BB10
C - - - - - 0x015E3F 05:BE2F: A9 03     LDA #$03
C - - - - - 0x015E41 05:BE31: 8D 27 05  STA ram_spd_Y_lo_obj
C - - - - - 0x015E44 05:BE34: AC 41 05  LDY ram_0541_obj_flags
C - - - - - 0x015E47 05:BE37: 30 02     BMI bra_BE3B
C - - - - - 0x015E49 05:BE39: A9 FD     LDA #$FD
bra_BE3B:
C - - - - - 0x015E4B 05:BE3B: 8D 0D 05  STA ram_spd_X_lo_obj
C - - - - - 0x015E4E 05:BE3E: A9 05     LDA #$05
C - - - - - 0x015E50 05:BE40: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x015E53 05:BE43: A9 80     LDA #$80
C - - - - - 0x015E55 05:BE45: 8D F3 04  STA ram_04F3_obj
C - - - - - 0x015E58 05:BE48: A9 06     LDA #$06
C - - - - - 0x015E5A 05:BE4A: 20 EA BE  JSR sub_BEEA
C - - - - - 0x015E5D 05:BE4D: 4C 81 BB  JMP loc_BB81
bra_BE50:
C - - - - - 0x015E60 05:BE50: 20 AC 98  JSR sub_0x01B8BC
C - - - - - 0x015E63 05:BE53: B0 2F     BCS bra_BE84
C - - - - - 0x015E65 05:BE55: 20 56 9C  JSR sub_0x01BC66_get_jump_table_index_2
C - - - - - 0x015E68 05:BE58: B9 6A BE  LDA tbl_BE69 + $01,Y
C - - - - - 0x015E6B 05:BE5B: 48        PHA
C - - - - - 0x015E6C 05:BE5C: B9 69 BE  LDA tbl_BE69,Y
C - - - - - 0x015E6F 05:BE5F: 48        PHA
bra_BE60_RTS:
C - - - - - 0x015E70 05:BE60: 60        RTS



bra_BE61:
C - - - - - 0x015E71 05:BE61: A9 00     LDA #$00
C - - - - - 0x015E73 05:BE63: 8D 94 04  STA ram_0494_t02
C - - - - - 0x015E76 05:BE66: 4C 2D BF  JMP loc_BF2D



tbl_BE69:
- D 1 - - - 0x015E79 05:BE69: 6E BE     .word ofs_083_BE6F_00 - $01
- D 1 - - - 0x015E7B 05:BE6B: 75 BE     .word ofs_083_BE76_01 - $01
- D 1 - - - 0x015E7D 05:BE6D: 80 BE     .word ofs_083_BE81_02 - $01



ofs_083_BE6F_00:
C - - - - - 0x015E7F 05:BE6F: 20 72 98  JSR sub_0x01B882
C - - - - - 0x015E82 05:BE72: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x015E85 05:BE75: 60        RTS



ofs_083_BE76_01:
; bzk optimize, JMP
C - - - - - 0x015E86 05:BE76: 20 89 98  JSR sub_0x01B899
C - - - - - 0x015E89 05:BE79: 60        RTS



ofs_096_BE7A_05:
C - - - - - 0x015E8A 05:BE7A: AD F3 04  LDA ram_04F3_obj
C - - - - - 0x015E8D 05:BE7D: 29 0F     AND #$0F
C - - - - - 0x015E8F 05:BE7F: D0 13     BNE bra_BE94
ofs_083_BE81_02:
C - - - - - 0x015E91 05:BE81: 20 C5 98  JSR sub_0x01B8D5
bra_BE84:
C - - - - - 0x015E94 05:BE84: A9 05     LDA #$05
C - - - - - 0x015E96 05:BE86: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x015E99 05:BE89: A9 03     LDA #$03
C - - - - - 0x015E9B 05:BE8B: 8D F3 04  STA ram_04F3_obj
C - - - - - 0x015E9E 05:BE8E: 20 00 9B  JSR sub_0x01BB10
C - - - - - 0x015EA1 05:BE91: 4C EA BE  JMP loc_BEEA
bra_BE94:
C - - - - - 0x015EA4 05:BE94: 20 FD 98  JSR sub_0x01B90D    ; possible PLA PLA
C - - - - - 0x015EA7 05:BE97: F0 2C     BEQ bra_BEC5    ; jmp



ofs_096_BE99_08:
C - - - - - 0x015EA9 05:BE99: 20 8C 9B  JSR sub_0x01BB9C
C - - - - - 0x015EAC 05:BE9C: 20 FB 97  JSR sub_0x01B80B
C - - - - - 0x015EAF 05:BE9F: 90 04     BCC bra_BEA5
C - - - - - 0x015EB1 05:BEA1: A0 83     LDY #$83
C - - - - - 0x015EB3 05:BEA3: D0 BC     BNE bra_BE61    ; jmp
bra_BEA5:
ofs_096_BEA5_01:
C - - - - - 0x015EB5 05:BEA5: A5 37     LDA ram_buttons + $01
C - - - - - 0x015EB7 05:BEA7: A0 81     LDY #$81
C - - - - - 0x015EB9 05:BEA9: 24 6C     BIT ram_006C_t07_button_B
C - - - - - 0x015EBB 05:BEAB: D0 B4     BNE bra_BE61
C - - - - - 0x015EBD 05:BEAD: 88        DEY ; 80
C - - - - - 0x015EBE 05:BEAE: 24 6B     BIT ram_006B_t14_btns_LR
C - - - - - 0x015EC0 05:BEB0: F0 AF     BEQ bra_BE61
C - - - - - 0x015EC2 05:BEB2: 20 6B 9F  JSR sub_0x01BF7B
C - - - - - 0x015EC5 05:BEB5: D0 AA     BNE bra_BE61
C - - - - - 0x015EC7 05:BEB7: 20 4F A4  JSR sub_A44F
C - - - - - 0x015ECA 05:BEBA: F0 12     BEQ bra_BECE
C - - - - - 0x015ECC 05:BEBC: 4C 6B 9A  JMP loc_0x01BA7B



ofs_096_BEBF_04:
C - - - - - 0x015ECF 05:BEBF: A5 37     LDA ram_buttons + $01
C - - - - - 0x015ED1 05:BEC1: 24 68     BIT ram_0068_t13_btn_Down
C - - - - - 0x015ED3 05:BEC3: D0 04     BNE bra_BEC9
bra_BEC5:
loc_BEC5:
C D 1 - - - 0x015ED5 05:BEC5: A0 80     LDY #$80
C - - - - - 0x015ED7 05:BEC7: D0 98     BNE bra_BE61    ; jmp
bra_BEC9:
C - - - - - 0x015ED9 05:BEC9: 20 74 9F  JSR sub_0x01BF84
C - - - - - 0x015EDC 05:BECC: 90 92     BCC bra_BE60_RTS
bra_BECE:
- - - - - - 0x015EDE 05:BECE: 20 00 9B  JSR sub_0x01BB10
- - - - - - 0x015EE1 05:BED1: A9 05     LDA #$05
- - - - - - 0x015EE3 05:BED3: 8D D9 04  STA ram_04D9_obj
- - - - - - 0x015EE6 05:BED6: A9 80     LDA #$80
- - - - - - 0x015EE8 05:BED8: 8D F3 04  STA ram_04F3_obj
- - - - - - 0x015EEB 05:BEDB: A9 03     LDA #$03
- - - - - - 0x015EED 05:BEDD: 8D 27 05  STA ram_spd_Y_lo_obj
- - - - - - 0x015EF0 05:BEE0: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
- - - - - - 0x015EF3 05:BEE3: 69 10     ADC #$10
- - - - - - 0x015EF5 05:BEE5: 8D 8B 04  STA ram_pos_Y_lo_obj + $03
- - - - - - 0x015EF8 05:BEE8: A9 04     LDA #$04
sub_BEEA:
loc_BEEA:
; bzk optimize
C D 1 - - - 0x015EFA 05:BEEA: 4C 3A 9B  JMP loc_0x01BB4A



sub_BEED:
C - - - - - 0x015EFD 05:BEED: A2 00     LDX #$00
C - - - - - 0x015EFF 05:BEEF: 20 E0 9A  JSR sub_0x01BAF0_clear_obj_data
C - - - - - 0x015F02 05:BEF2: A9 80     LDA #$80
C - - - - - 0x015F04 05:BEF4: 8D 3D 04  STA ram_043A_obj_flags + $03
C - - - - - 0x015F07 05:BEF7: A9 14     LDA #$14
C - - - - - 0x015F09 05:BEF9: 8D 79 05  STA ram_obj_hp
C - - - - - 0x015F0C 05:BEFC: AD BB 04  LDA ram_04BB_t03
C - - - - - 0x015F0F 05:BEFF: 0A        ASL
C - - - - - 0x015F10 05:BF00: A8        TAY
C - - - - - 0x015F11 05:BF01: B9 21 BF  LDA tbl_BF21,Y
C - - - - - 0x015F14 05:BF04: 8D 4A 04  STA ram_obj_id
C - - - - - 0x015F17 05:BF07: B9 22 BF  LDA tbl_BF21 + $01,Y
C - - - - - 0x015F1A 05:BF0A: 8D 34 05  STA ram_0534_t04
C - - - - - 0x015F1D 05:BF0D: B9 23 BF  LDA tbl_BF21 + $02,Y
C - - - - - 0x015F20 05:BF10: 8D 64 04  STA ram_pos_X_lo_obj + $03
C - - - - - 0x015F23 05:BF13: B9 24 BF  LDA tbl_BF21 + $03,Y
C - - - - - 0x015F26 05:BF16: 8D 8B 04  STA ram_pos_Y_lo_obj + $03
C - - - - - 0x015F29 05:BF19: A9 01     LDA #$01
C - - - - - 0x015F2B 05:BF1B: 8D C8 04  STA ram_04C8_t03
C - - - - - 0x015F2E 05:BF1E: 4C 83 99  JMP loc_0x01B993



tbl_BF21:
; 00 
- D 1 - - - 0x015F31 05:BF21: 50        .byte con_enemy_id_50   ; 
- D 1 - - - 0x015F32 05:BF22: 00        .byte $00   ; 
- D 1 - - - 0x015F33 05:BF23: C0        .byte $C0   ; 
- D 1 - - - 0x015F34 05:BF24: C0        .byte $C0   ; 
; 02 
- D 1 - - - 0x015F35 05:BF25: 51        .byte con_enemy_id_51   ; 
- D 1 - - - 0x015F36 05:BF26: 00        .byte $00   ; 
- D 1 - - - 0x015F37 05:BF27: C0        .byte $C0   ; 
- D 1 - - - 0x015F38 05:BF28: C0        .byte $C0   ; 
; 04 
- D 1 - - - 0x015F39 05:BF29: 53        .byte con_enemy_id_53   ; 
- D 1 - - - 0x015F3A 05:BF2A: 00        .byte $00   ; 
- D 1 - - - 0x015F3B 05:BF2B: C0        .byte $C0   ; 
- D 1 - - - 0x015F3C 05:BF2C: C0        .byte $C0   ; 



loc_BF2D:
; in
    ; Y = 
C D 1 - - - 0x015F3D 05:BF2D: 98        TYA
C - - - - - 0x015F3E 05:BF2E: 29 0F     AND #$0F
C - - - - - 0x015F40 05:BF30: A8        TAY
C - - - - - 0x015F41 05:BF31: AE BB 04  LDX ram_04BB_t03
C - - - - - 0x015F44 05:BF34: B9 AB BF  LDA tbl_BFAB,Y
C - - - - - 0x015F47 05:BF37: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x015F4A 05:BF3A: C9 01     CMP #$01
C - - - - - 0x015F4C 05:BF3C: D0 24     BNE bra_BF62
C - - - - - 0x015F4E 05:BF3E: E0 04     CPX #$04
C - - - - - 0x015F50 05:BF40: D0 20     BNE bra_BF62
C - - - - - 0x015F52 05:BF42: AD 23 05  LDA ram_0523_t03
C - - - - - 0x015F55 05:BF45: F0 16     BEQ bra_BF5D
C - - - - - 0x015F57 05:BF47: A9 08     LDA #$08
C - - - - - 0x015F59 05:BF49: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x015F5C 05:BF4C: A9 00     LDA #$00
C - - - - - 0x015F5E 05:BF4E: 8D 23 05  STA ram_0523_t03
C - - - - - 0x015F61 05:BF51: A9 04     LDA #$04
C - - - - - 0x015F63 05:BF53: 8D 83 05  STA ram_0583_obj
C - - - - - 0x015F66 05:BF56: 20 89 BB  JSR sub_BB89
C - - - - - 0x015F69 05:BF59: A0 0A     LDY #$0A
C - - - - - 0x015F6B 05:BF5B: D0 08     BNE bra_BF65    ; jmp
bra_BF5D:
C - - - - - 0x015F6D 05:BF5D: A9 10     LDA #$10
C - - - - - 0x015F6F 05:BF5F: 8D 23 05  STA ram_0523_t03
bra_BF62:
C - - - - - 0x015F72 05:BF62: 98        TYA
C - - - - - 0x015F73 05:BF63: 0A        ASL
C - - - - - 0x015F74 05:BF64: A8        TAY
bra_BF65:
C - - - - - 0x015F75 05:BF65: A9 00     LDA #$00
C - - - - - 0x015F77 05:BF67: 8D 41 05  STA ram_0541_obj_flags
; bzk optimize, move LDX before 0x015F80 for readability
C - - - - - 0x015F7A 05:BF6A: AE BB 04  LDX ram_04BB_t03
; 
C - - - - - 0x015F7D 05:BF6D: 20 5F 9F  JSR sub_0x01BF6F
C - - - - - 0x015F80 05:BF70: BD A5 BF  LDA tbl_BFA5,X
C - - - - - 0x015F83 05:BF73: 85 5B     STA ram_005B_t0C_data
C - - - - - 0x015F85 05:BF75: BD A6 BF  LDA tbl_BFA5 + $01,X
C - - - - - 0x015F88 05:BF78: 85 5C     STA ram_005B_t0C_data + $01
C - - - - - 0x015F8A 05:BF7A: B1 5B     LDA (ram_005B_t0C_data),Y
C - - - - - 0x015F8C 05:BF7C: 8D C8 04  STA ram_04C8_t03
C - - - - - 0x015F8F 05:BF7F: C8        INY
C - - - - - 0x015F90 05:BF80: B1 5B     LDA (ram_005B_t0C_data),Y
C - - - - - 0x015F92 05:BF82: 20 3A 9B  JSR sub_0x01BB4A
C - - - - - 0x015F95 05:BF85: A9 00     LDA #$00
C - - - - - 0x015F97 05:BF87: 8D F3 04  STA ram_04F3_obj
C - - - - - 0x015F9A 05:BF8A: AC C8 04  LDY ram_04C8_t03
C - - - - - 0x015F9D 05:BF8D: F0 07     BEQ bra_BF96_RTS
C - - - - - 0x015F9F 05:BF8F: C0 03     CPY #$03
C - - - - - 0x015FA1 05:BF91: F0 04     BEQ bra_BF97
C - - - - - 0x015FA3 05:BF93: 4C 40 9B  JMP loc_0x01BB50
bra_BF96_RTS:
C - - - - - 0x015FA6 05:BF96: 60        RTS
bra_BF97:
C - - - - - 0x015FA7 05:BF97: 20 E3 9D  JSR sub_0x01BDF3
C - - - - - 0x015FAA 05:BF9A: 20 74 9F  JSR sub_0x01BF84
C - - - - - 0x015FAD 05:BF9D: 90 05     BCC bra_BFA4_RTS
- - - - - - 0x015FAF 05:BF9F: A0 04     LDY #$04
- - - - - - 0x015FB1 05:BFA1: 4C 29 9E  JMP loc_0x01BE39_set_speed_Y
bra_BFA4_RTS:
C - - - - - 0x015FB4 05:BFA4: 60        RTS



tbl_BFA5:
- D 1 - - - 0x015FB5 05:BFA5: B0 BF     .word off_BFB0_00
- D 1 - - - 0x015FB7 05:BFA7: BA BF     .word off_BFBA_01
- D 1 - - - 0x015FB9 05:BFA9: C4 BF     .word off_BFC4_02



tbl_BFAB:
- D 1 - - - 0x015FBB 05:BFAB: 00        .byte $00   ; 00 
- D 1 - - - 0x015FBC 05:BFAC: 02        .byte $02   ; 01 
- D 1 - - - 0x015FBD 05:BFAD: 03        .byte $03   ; 02 
- D 1 - - - 0x015FBE 05:BFAE: 01        .byte $01   ; 03 
- D 1 - - - 0x015FBF 05:BFAF: 04        .byte $04   ; 04 


; ???
off_BFB0_00:
- D 1 - I - 0x015FC0 05:BFB0: 01        .byte $01   ; 
- D 1 - I - 0x015FC1 05:BFB1: 00        .byte $00   ; 
- D 1 - I - 0x015FC2 05:BFB2: 01        .byte $01   ; 
- D 1 - I - 0x015FC3 05:BFB3: 16        .byte $16   ; 
- D 1 - I - 0x015FC4 05:BFB4: 02        .byte $02   ; 
- D 1 - I - 0x015FC5 05:BFB5: 0C        .byte $0C   ; 
- D 1 - I - 0x015FC6 05:BFB6: 02        .byte $02   ; 
- D 1 - I - 0x015FC7 05:BFB7: 02        .byte $02   ; 
- D 1 - I - 0x015FC8 05:BFB8: 00        .byte $00   ; 
- D 1 - I - 0x015FC9 05:BFB9: 0C        .byte $0C   ; 



off_BFBA_01:
- D 1 - I - 0x015FCA 05:BFBA: 01        .byte $01   ; 
- D 1 - I - 0x015FCB 05:BFBB: 00        .byte $00   ; 
- D 1 - I - 0x015FCC 05:BFBC: 01        .byte $01   ; 
- D 1 - I - 0x015FCD 05:BFBD: 0A        .byte $0A   ; 
- D 1 - I - 0x015FCE 05:BFBE: 02        .byte $02   ; 
- D 1 - I - 0x015FCF 05:BFBF: 04        .byte $04   ; 
- D 1 - I - 0x015FD0 05:BFC0: 02        .byte $02   ; 
- D 1 - I - 0x015FD1 05:BFC1: 1A        .byte $1A   ; 
- D 1 - I - 0x015FD2 05:BFC2: 00        .byte $00   ; 
- D 1 - I - 0x015FD3 05:BFC3: 04        .byte $04   ; 



off_BFC4_02:
- D 1 - I - 0x015FD4 05:BFC4: 01        .byte $01   ; 
- D 1 - I - 0x015FD5 05:BFC5: 00        .byte $00   ; 
- D 1 - I - 0x015FD6 05:BFC6: 01        .byte $01   ; 
- D 1 - I - 0x015FD7 05:BFC7: 14        .byte $14   ; 
- D 1 - I - 0x015FD8 05:BFC8: 03        .byte $03   ; 
- D 1 - I - 0x015FD9 05:BFC9: 04        .byte $04   ; 
- D 1 - I - 0x015FDA 05:BFCA: 02        .byte $02   ; 
- D 1 - I - 0x015FDB 05:BFCB: 02        .byte $02   ; 
- D 1 - I - 0x015FDC 05:BFCC: 01        .byte $01   ; 
- D 1 - I - 0x015FDD 05:BFCD: 0A        .byte $0A   ; 
- D 1 - I - 0x015FDE 05:BFCE: 01        .byte $01   ; 
- D 1 - I - 0x015FDF 05:BFCF: 12        .byte $12   ; 



sub_BFD0:
C - - - - - 0x015FE0 05:BFD0: AC C8 04  LDY ram_04C8_t03
C - - - - - 0x015FE3 05:BFD3: D0 11     BNE bra_BFE6
C - - - - - 0x015FE5 05:BFD5: A4 1C     LDY ram_001C_useless
C - - - - - 0x015FE7 05:BFD7: D0 05     BNE bra_BFDE
C - - - - - 0x015FE9 05:BFD9: 20 7E 9C  JSR sub_0x01BC8E
C - - - - - 0x015FEC 05:BFDC: D0 08     BNE bra_BFE6
bra_BFDE:
C - - - - - 0x015FEE 05:BFDE: 88        DEY
C - - - - - 0x015FEF 05:BFDF: 98        TYA
C - - - - - 0x015FF0 05:BFE0: 18        CLC
C - - - - - 0x015FF1 05:BFE1: 69 16     ADC #$16
C - - - - - 0x015FF3 05:BFE3: 20 45 9B  JSR sub_0x01BB55
bra_BFE6:
C - - - - - 0x015FF6 05:BFE6: 20 60 A3  JSR sub_A360
C - - - - - 0x015FF9 05:BFE9: 20 44 98  JSR sub_0x01B854
C - - - - - 0x015FFC 05:BFEC: 8D 8B 04  STA ram_pos_Y_lo_obj + $03
C - - - - - 0x015FFF 05:BFEF: 60        RTS



ofs_081_BFF0_02:
C - - - - - 0x016000 05:BFF0: CE 7A 04  DEC ram_047A_t02
C - - - - - 0x016003 05:BFF3: A0 80     LDY #$80
C - - - - - 0x016005 05:BFF5: 4C 2D BF  JMP loc_BF2D



ofs_082_BFF8_02:
; bzk optimize
C - - - - - 0x016008 05:BFF8: 4C C2 9D  JMP loc_0x01BDD2


; bzk garbage
- - - - - - 0x01600B 05:BFFB: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 0A: 0x%04X [%d]", ($C000 - *), ($C000 - *))



