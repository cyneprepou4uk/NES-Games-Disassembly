.segment "BANK_0D_1"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $A000  ; for listing file
; 0x01A010-0x01A80F

; this bank can be in pair with bank 0A

.export sub_0x01A010
.export sub_0x01A013
.export sub_0x01A01F
.export sub_0x01A022
.export tbl_0x01B28C_positions
.export tbl_0x01B5E8
.export tbl_0x01B6AC_positions
.export sub_0x01B748_damage
.export sub_0x01B765
.export sub_0x01B772
.export sub_0x01B77B
.export sub_0x01B78A
.export sub_0x01B78F
.export sub_0x01B7CA
.export sub_0x01B7CE
.export sub_0x01B7EC
.export sub_0x01B7FB
.export sub_0x01B80B
.export loc_0x01B80B
.export sub_0x01B821
.export sub_0x01B836
.export sub_0x01B84B
.export sub_0x01B854
.export sub_0x01B85C
.export sub_0x01B862
.export sub_0x01B86A
.export sub_0x01B86E
.export sub_0x01B87C
.export sub_0x01B882
.export sub_0x01B893
.export sub_0x01B899
.export sub_0x01B8A0
.export sub_0x01B8AB
.export loc_0x01B8B5
.export sub_0x01B8BC
.export sub_0x01B8D5
.export sub_0x01B8DE
.export sub_0x01B8EA
.export sub_0x01B8F2
.export sub_0x01B8FB
.export sub_0x01B903
.export sub_0x01B90D
.export sub_0x01B913
.export sub_0x01B91A
.export tbl_0x01B92A_addresses
.export loc_0x01B952
.export sub_0x01B986
.export loc_0x01B986
.export loc_0x01B993
.export sub_0x01BA53
.export sub_0x01BA71
.export sub_0x01BA7B
.export loc_0x01BA7B
.export sub_0x01BA7E
.export loc_0x01BA7E
.export loc_0x01BAEC
.export sub_0x01BAEE
.export sub_0x01BAF0_clear_obj_data
.export sub_0x01BB10
.export sub_0x01BB13_clear_speed_X
.export sub_0x01BB1C_clear_speed_Y
.export sub_0x01BB25
.export loc_0x01BB25
.export sub_0x01BB3C
.export loc_0x01BB3C
.export sub_0x01BB47
.export sub_0x01BB4A
.export loc_0x01BB4A
.export loc_0x01BB50
.export sub_0x01BB55
.export sub_0x01BB71
.export sub_0x01BB79
.export sub_0x01BB9C
.export loc_0x01BB9C
.export sub_0x01BBB6
.export sub_0x01BBB9
.export loc_0x01BBD0
.export sub_0x01BBE6_EOR_obj_flag
.export sub_0x01BBEF
.export loc_0x01BBEF
.export sub_0x01BBF5
.export sub_0x01BBFB
.export sub_0x01BC08
.export sub_0x01BC27
.export sub_0x01BC2F
.export loc_0x01BC2F
.export sub_0x01BC51
.export loc_0x01BC51
.export sub_0x01BC60_get_jump_table_index_1
.export sub_0x01BC66_get_jump_table_index_2
.export sub_0x01BC6C
.export sub_0x01BC8E
.export sub_0x01BC95
.export loc_0x01BC95
.export sub_0x01BC9E
.export loc_0x01BCAE
.export loc_0x01BCB5
.export sub_0x01BCBC
.export sub_0x01BD4F
.export ofs_052_0x01BD85_04
.export ofs_059_0x01BD85_04
.export ofs_067_0x01BD85_04
.export ofs_080_0x01BD85_04
.export ofs_082_0x01BD85_04
.export ofs_091_0x01BD85_04
.export loc_0x01BD8A
.export ofs_058_0x01BD93_00
.export ofs_079_0x01BD93_00
.export ofs_051_0x01BDB9_00
.export ofs_052_0x01BDB9_00
.export ofs_058_0x01BDB9_01
.export ofs_059_0x01BDB9_00
.export ofs_066_0x01BDB9_00
.export ofs_067_0x01BDB9_00
.export ofs_079_0x01BDB9_01
.export ofs_080_0x01BDB9_00
.export ofs_081_0x01BDB9_00
.export ofs_082_0x01BDB9_00
.export ofs_090_0x01BDB9_00
.export ofs_091_0x01BDB9_00
.export ofs_051_0x01BDCA_01
.export ofs_052_0x01BDCA_01
.export ofs_058_0x01BDCA_02
.export ofs_059_0x01BDCA_01
.export ofs_066_0x01BDCA_01
.export ofs_067_0x01BDCA_01
.export ofs_079_0x01BDCA_02
.export ofs_080_0x01BDCA_01
.export ofs_081_0x01BDCA_01
.export ofs_082_0x01BDCA_01
.export ofs_090_0x01BDCA_01
.export ofs_091_0x01BDCA_01
.export loc_0x01BDD2
.export ofs_052_0x01BDD2_02
.export ofs_059_0x01BDD2_02
.export ofs_067_0x01BDD2_02
.export ofs_080_0x01BDD2_02
.export ofs_091_0x01BDD2_02
.export loc_0x01BDE8
.export ofs_059_0x01BDE8_03
.export ofs_067_0x01BDE8_03
.export ofs_080_0x01BDE8_03
.export ofs_082_0x01BDE8_03
.export ofs_091_0x01BDE8_03
.export sub_0x01BDF3
.export loc_0x01BDF3
.export loc_0x01BE06
.export loc_0x01BE0A
.export sub_0x01BE10
.export loc_0x01BE10
.export loc_0x01BE39_set_speed_Y
.export sub_0x01BE5B
.export loc_0x01BE6B
.export sub_0x01BE82
.export loc_0x01BE82
.export sub_0x01BE88
.export loc_0x01BE88
.export sub_0x01BE97_play_sound
.export sub_0x01BE9C
.export loc_0x01BE9C
.export loc_0x01BEA0
.export sub_0x01BEA4
.export loc_0x01BEA4
.export loc_0x01BEA8
.export sub_0x01BEAC
.export sub_0x01BEB0
.export loc_0x01BEB0
.export loc_0x01BEBC
.export sub_0x01BEC1
.export loc_0x01BEC1
.export sub_0x01BEC7
.export loc_0x01BEC7
.export sub_0x01BED0
.export sub_0x01BEFB
.export sub_0x01BF4D
.export sub_0x01BF58
.export sub_0x01BF69_increase_X_by_04
.export sub_0x01BF6F
.export sub_0x01BF7B
.export sub_0x01BF84
.export sub_0x01BF90_prepare_adresses_with_buttons_values
.export sub_0x01BFA5
.export sub_0x01BFB7
.export sub_0x01BFE5
.export sub_0x01BFEE
.export sub_0x01C001



sub_0x01A010:
; bzk optimize
C - - - - - 0x01A010 06:A000: 4C 9E A4  JMP loc_A49E



sub_0x01A013:
; bzk optimize
C - - - - - 0x01A013 06:A003: 4C 86 A6  JMP loc_A686



loc_A006:
; bzk optimize
- - - - - - 0x01A016 06:A006: 4C 06 A0  JMP loc_A006



loc_A009:
; bzk optimize
- - - - - - 0x01A019 06:A009: 4C 09 A0  JMP loc_A009



loc_A00C:
; bzk optimize
- - - - - - 0x01A01C 06:A00C: 4C 0C A0  JMP loc_A00C



sub_0x01A01F:
; bzk optimize
C - - - - - 0x01A01F 06:A00F: 4C 18 A0  JMP loc_A018



sub_0x01A022:
; bzk optimize
C - - - - - 0x01A022 06:A012: 4C 87 A1  JMP loc_A187



loc_A015:
; bzk optimize
- - - - - - 0x01A025 06:A015: 4C 15 A0  JMP loc_A015



loc_A018:
C D 1 - - - 0x01A028 06:A018: 20 24 A0  JSR sub_A024
C - - - - - 0x01A02B 06:A01B: 90 03     BCC bra_A020
C - - - - - 0x01A02D 06:A01D: 20 CF A0  JSR sub_A0CF
bra_A020:
; bzk optimize, JMP
C - - - - - 0x01A030 06:A020: 20 BB A0  JSR sub_A0BB
C - - - - - 0x01A033 06:A023: 60        RTS



sub_A024:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01A034 06:A024: 20 A7 A0  JSR sub_A0A7_prepare_city_drops
C - - - - - 0x01A037 06:A027: A5 70     LDA ram_0070_t02_drop_id
C - - - - - 0x01A039 06:A029: C9 03     CMP #con_drop_exit
C - - - - - 0x01A03B 06:A02B: D0 07     BNE bra_A034
; if exit item
C - - - - - 0x01A03D 06:A02D: AD E8 06  LDA ram_06E8_exit_item
C - - - - - 0x01A040 06:A030: D0 5F     BNE bra_A091    ; if have item
C - - - - - 0x01A042 06:A032: F0 5B     BEQ bra_A08F    ; jmp if don't have item
bra_A034:
C - - - - - 0x01A044 06:A034: A5 6C     LDA ram_006C_t03_city_sector
C - - - - - 0x01A046 06:A036: 48        PHA
; / 04
C - - - - - 0x01A047 06:A037: 4A        LSR
C - - - - - 0x01A048 06:A038: 4A        LSR
; 
C - - - - - 0x01A049 06:A039: 85 67     STA ram_0067_t09
C - - - - - 0x01A04B 06:A03B: AA        TAX
C - - - - - 0x01A04C 06:A03C: BD F0 06  LDA ram_06F0_array,X
C - - - - - 0x01A04F 06:A03F: 85 68     STA ram_0068_t40
C - - - - - 0x01A051 06:A041: 68        PLA
C - - - - - 0x01A052 06:A042: 29 03     AND #$03
C - - - - - 0x01A054 06:A044: AA        TAX
C - - - - - 0x01A055 06:A045: BD 9F A0  LDA tbl_A09F_attributes,X
C - - - - - 0x01A058 06:A048: 85 69     STA ram_0069_t21
C - - - - - 0x01A05A 06:A04A: BD A3 A0  LDA tbl_A0A3,X
C - - - - - 0x01A05D 06:A04D: 85 6A     STA ram_006A_t20
C - - - - - 0x01A05F 06:A04F: A5 68     LDA ram_0068_t40
C - - - - - 0x01A061 06:A051: A6 6A     LDX ram_006A_t20
C - - - - - 0x01A063 06:A053: F0 04     BEQ bra_A059
bra_A055_loop:
C - - - - - 0x01A065 06:A055: 4A        LSR
C - - - - - 0x01A066 06:A056: CA        DEX
C - - - - - 0x01A067 06:A057: D0 FC     BNE bra_A055_loop
bra_A059:
C - - - - - 0x01A069 06:A059: 85 6B     STA ram_006B_t16
C - - - - - 0x01A06B 06:A05B: A5 6D     LDA ram_006D_t03
C - - - - - 0x01A06D 06:A05D: 30 0E     BMI bra_A06D
C - - - - - 0x01A06F 06:A05F: A5 6B     LDA ram_006B_t16
C - - - - - 0x01A071 06:A061: 29 01     AND #$01
C - - - - - 0x01A073 06:A063: D0 2C     BNE bra_A091
C - - - - - 0x01A075 06:A065: A5 6B     LDA ram_006B_t16
C - - - - - 0x01A077 06:A067: 29 02     AND #$02
C - - - - - 0x01A079 06:A069: 09 01     ORA #$01
C - - - - - 0x01A07B 06:A06B: D0 0C     BNE bra_A079    ; jmp
bra_A06D:
C - - - - - 0x01A07D 06:A06D: A5 6B     LDA ram_006B_t16
C - - - - - 0x01A07F 06:A06F: 29 02     AND #$02
C - - - - - 0x01A081 06:A071: D0 1E     BNE bra_A091
C - - - - - 0x01A083 06:A073: A5 6B     LDA ram_006B_t16
C - - - - - 0x01A085 06:A075: 29 01     AND #$01
C - - - - - 0x01A087 06:A077: 09 02     ORA #$02
bra_A079:
C - - - - - 0x01A089 06:A079: A6 6A     LDX ram_006A_t20
C - - - - - 0x01A08B 06:A07B: F0 04     BEQ bra_A081
bra_A07D_loop:
C - - - - - 0x01A08D 06:A07D: 0A        ASL
C - - - - - 0x01A08E 06:A07E: CA        DEX
C - - - - - 0x01A08F 06:A07F: D0 FC     BNE bra_A07D_loop
bra_A081:
C - - - - - 0x01A091 06:A081: 85 6B     STA ram_006B_t17
C - - - - - 0x01A093 06:A083: A6 67     LDX ram_0067_t09
C - - - - - 0x01A095 06:A085: BD F0 06  LDA ram_06F0_array,X
C - - - - - 0x01A098 06:A088: 25 69     AND ram_0069_t21
C - - - - - 0x01A09A 06:A08A: 05 6B     ORA ram_006B_t17
C - - - - - 0x01A09C 06:A08C: 9D F0 06  STA ram_06F0_array,X
bra_A08F:
C - - - - - 0x01A09F 06:A08F: 38        SEC
C - - - - - 0x01A0A0 06:A090: 60        RTS
bra_A091:
C - - - - - 0x01A0A1 06:A091: A5 E8     LDA ram_00E8_counter
C - - - - - 0x01A0A3 06:A093: D0 02     BNE bra_A097
C - - - - - 0x01A0A5 06:A095: 18        CLC
C - - - - - 0x01A0A6 06:A096: 60        RTS
bra_A097:
C - - - - - 0x01A0A7 06:A097: C6 E8     DEC ram_00E8_counter
C - - - - - 0x01A0A9 06:A099: A9 04     LDA #con_drop_5_stars
C - - - - - 0x01A0AB 06:A09B: 85 70     STA ram_0070_t02_drop_id
C - - - - - 0x01A0AD 06:A09D: D0 F0     BNE bra_A08F    ; jmp



tbl_A09F_attributes:
- D 1 - - - 0x01A0AF 06:A09F: 3F        .byte $3F   ; 00 
- D 1 - - - 0x01A0B0 06:A0A0: CF        .byte $CF   ; 01 
- D 1 - - - 0x01A0B1 06:A0A1: F3        .byte $F3   ; 02 
- D 1 - - - 0x01A0B2 06:A0A2: FC        .byte $FC   ; 03 



tbl_A0A3:
- D 1 - - - 0x01A0B3 06:A0A3: 06        .byte $06   ; 00 
- D 1 - - - 0x01A0B4 06:A0A4: 04        .byte $04   ; 01 
- D 1 - - - 0x01A0B5 06:A0A5: 02        .byte $02   ; 02 
- D 1 - - - 0x01A0B6 06:A0A6: 00        .byte $00   ; 03 



sub_A0A7_prepare_city_drops:
C - - - - - 0x01A0B7 06:A0A7: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01A0B9 06:A0A9: 48        PHA
C - - - - - 0x01A0BA 06:A0AA: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x01A0BC 06:A0AC: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01A0BE 06:A0AE: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A0C1 06:A0B1: 20 80 98  JSR sub_0x013890_prepare_city_drops
C - - - - - 0x01A0C4 06:A0B4: 68        PLA
C - - - - - 0x01A0C5 06:A0B5: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01A0C7 06:A0B7: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A0CA 06:A0BA: 60        RTS



sub_A0BB:
C - - - - - 0x01A0CB 06:A0BB: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01A0CD 06:A0BD: 48        PHA
C - - - - - 0x01A0CE 06:A0BE: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x01A0D0 06:A0C0: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01A0D2 06:A0C2: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A0D5 06:A0C5: 20 83 98  JSR sub_0x013893
C - - - - - 0x01A0D8 06:A0C8: 68        PLA
C - - - - - 0x01A0D9 06:A0C9: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01A0DB 06:A0CB: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A0DE 06:A0CE: 60        RTS



sub_A0CF:
C - - - - - 0x01A0DF 06:A0CF: A5 CD     LDA ram_drop_objects_counter
C - - - - - 0x01A0E1 06:A0D1: C9 03     CMP #$03
C - - - - - 0x01A0E3 06:A0D3: B0 0C     BCS bra_A0E1_RTS
C - - - - - 0x01A0E5 06:A0D5: A2 00     LDX #$00
bra_A0D7_loop:
C - - - - - 0x01A0E7 06:A0D7: BD 3A 04  LDA ram_043A_obj_flags,X
C - - - - - 0x01A0EA 06:A0DA: 10 06     BPL bra_A0E2
C - - - - - 0x01A0EC 06:A0DC: E8        INX
C - - - - - 0x01A0ED 06:A0DD: E0 03     CPX #$03
C - - - - - 0x01A0EF 06:A0DF: 90 F6     BCC bra_A0D7_loop
bra_A0E1_RTS:
C - - - - - 0x01A0F1 06:A0E1: 60        RTS
bra_A0E2:
C - - - - - 0x01A0F2 06:A0E2: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01A0F4 06:A0E4: 48        PHA
C - - - - - 0x01A0F5 06:A0E5: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01A0F7 06:A0E7: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01A0F9 06:A0E9: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A0FC 06:A0EC: A9 71     LDA #< tbl_0x00B881_drop_items_data
C - - - - - 0x01A0FE 06:A0EE: 85 5B     STA ram_005B_t29_data
C - - - - - 0x01A100 06:A0F0: A9 98     LDA #> tbl_0x00B881_drop_items_data
C - - - - - 0x01A102 06:A0F2: 85 5C     STA ram_005B_t29_data + $01
C - - - - - 0x01A104 06:A0F4: A5 70     LDA ram_0070_t02_drop_id
C - - - - - 0x01A106 06:A0F6: 9D 47 04  STA ram_obj_drop_id,X
C - - - - - 0x01A109 06:A0F9: 0A        ASL
C - - - - - 0x01A10A 06:A0FA: A8        TAY
C - - - - - 0x01A10B 06:A0FB: B1 5B     LDA (ram_005B_t29_data),Y
C - - - - - 0x01A10D 06:A0FD: 85 5D     STA ram_005D_t16_data
C - - - - - 0x01A10F 06:A0FF: C8        INY
C - - - - - 0x01A110 06:A100: B1 5B     LDA (ram_005B_t29_data),Y
C - - - - - 0x01A112 06:A102: 85 5E     STA ram_005D_t16_data + $01
C - - - - - 0x01A114 06:A104: 20 11 A1  JSR sub_A111
C - - - - - 0x01A117 06:A107: 20 37 A1  JSR sub_A137
C - - - - - 0x01A11A 06:A10A: 68        PLA
C - - - - - 0x01A11B 06:A10B: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01A11D 06:A10D: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A120 06:A110: 60        RTS



sub_A111:
; in
    ; ram_005D_t16_data
C - - - - - 0x01A121 06:A111: A0 02     LDY #$02
C - - - - - 0x01A123 06:A113: B1 5D     LDA (ram_005D_t16_data),Y   ; read from 0x00B897
C - - - - - 0x01A125 06:A115: 9D E3 04  STA ram_04E3_obj_delay,X
C - - - - - 0x01A128 06:A118: C8        INY ; 03
C - - - - - 0x01A129 06:A119: B1 5D     LDA (ram_005D_t16_data),Y   ; read from 0x00B898
C - - - - - 0x01A12B 06:A11B: 9D A2 04  STA ram_spr_data_ptr_lo_obj,X
C - - - - - 0x01A12E 06:A11E: C8        INY ; 04
C - - - - - 0x01A12F 06:A11F: B1 5D     LDA (ram_005D_t16_data),Y   ; read from 0x00B899
C - - - - - 0x01A131 06:A121: 9D AF 04  STA ram_spr_data_ptr_hi_obj,X
; bzk optimize, useless INY x3 + LDA + STA
C - - - - - 0x01A134 06:A124: C8        INY
C - - - - - 0x01A135 06:A125: C8        INY
C - - - - - 0x01A136 06:A126: C8        INY ; 07
C - - - - - 0x01A137 06:A127: B1 5D     LDA (ram_005D_t16_data),Y   ; read from 0x00B89C
C - - - - - 0x01A139 06:A129: 9D 69 05  STA ram_0569_useless,X
; 
C - - - - - 0x01A13C 06:A12C: A5 5D     LDA ram_005D_t16_data
C - - - - - 0x01A13E 06:A12E: 9D BC 04  STA ram_04BC_data_ptr_lo_obj,X
C - - - - - 0x01A141 06:A131: A5 5E     LDA ram_005D_t16_data + $01
C - - - - - 0x01A143 06:A133: 9D C9 04  STA ram_04C9_data_ptr_hi_obj,X
C - - - - - 0x01A146 06:A136: 60        RTS



sub_A137:
C - - - - - 0x01A147 06:A137: A5 6D     LDA ram_006D_t03
C - - - - - 0x01A149 06:A139: 48        PHA
C - - - - - 0x01A14A 06:A13A: 29 0F     AND #$0F
; * 10
C - - - - - 0x01A14C 06:A13C: 0A        ASL
C - - - - - 0x01A14D 06:A13D: 0A        ASL
C - - - - - 0x01A14E 06:A13E: 0A        ASL
C - - - - - 0x01A14F 06:A13F: 0A        ASL
; 
C - - - - - 0x01A150 06:A140: 09 08     ORA #$08
C - - - - - 0x01A152 06:A142: 38        SEC
C - - - - - 0x01A153 06:A143: E5 43     SBC ram_scroll_X_lo
C - - - - - 0x01A155 06:A145: 9D 61 04  STA ram_pos_X_lo_obj,X
C - - - - - 0x01A158 06:A148: 68        PLA
C - - - - - 0x01A159 06:A149: 29 F0     AND #$F0
C - - - - - 0x01A15B 06:A14B: 09 08     ORA #$08
C - - - - - 0x01A15D 06:A14D: 38        SEC
C - - - - - 0x01A15E 06:A14E: E5 40     SBC ram_scroll_Y_lo
C - - - - - 0x01A160 06:A150: B0 02     BCS bra_A154
C - - - - - 0x01A162 06:A152: E9 10     SBC #$10
bra_A154:
C - - - - - 0x01A164 06:A154: 9D 88 04  STA ram_pos_Y_lo_obj,X
C - - - - - 0x01A167 06:A157: A9 00     LDA #$00
C - - - - - 0x01A169 06:A159: 9D 6E 04  STA ram_pos_X_hi_obj,X
C - - - - - 0x01A16C 06:A15C: 9D 95 04  STA ram_pos_Y_hi_obj,X
C - - - - - 0x01A16F 06:A15F: 9D 54 04  STA ram_0454_useless,X
C - - - - - 0x01A172 06:A162: 9D 7B 04  STA ram_047B_useless,X
C - - - - - 0x01A175 06:A165: 9D 17 05  STA ram_0517_useless,X
C - - - - - 0x01A178 06:A168: 9D D6 04  STA ram_04D6_obj,X
C - - - - - 0x01A17B 06:A16B: 9D 31 05  STA ram_0531_obj,X
C - - - - - 0x01A17E 06:A16E: A9 FA     LDA #$FA
C - - - - - 0x01A180 06:A170: 9D 4B 05  STA ram_054B_obj,X
C - - - - - 0x01A183 06:A173: A9 FE     LDA #$FE
C - - - - - 0x01A185 06:A175: 9D 24 05  STA ram_0524_obj_lo,X
C - - - - - 0x01A188 06:A178: A9 0A     LDA #$0A
C - - - - - 0x01A18A 06:A17A: 9D 3E 05  STA ram_053E_obj,X
C - - - - - 0x01A18D 06:A17D: A9 81     LDA #$81
C - - - - - 0x01A18F 06:A17F: 9D 3A 04  STA ram_043A_obj_flags,X
C - - - - - 0x01A192 06:A182: E6 CD     INC ram_drop_objects_counter
C - - - - - 0x01A194 06:A184: E6 CE     INC ram_all_objects_counter
C - - - - - 0x01A196 06:A186: 60        RTS



loc_A187:
; bzk optimize, check 00CD before JSR to here
C D 1 - - - 0x01A197 06:A187: A5 CD     LDA ram_drop_objects_counter
C - - - - - 0x01A199 06:A189: F0 0E     BEQ bra_A199_RTS
C - - - - - 0x01A19B 06:A18B: 85 71     STA ram_0071_t11_obj_counter
C - - - - - 0x01A19D 06:A18D: A2 00     LDX #$00
bra_A18F_loop:
C - - - - - 0x01A19F 06:A18F: BD 3A 04  LDA ram_043A_obj_flags,X
C - - - - - 0x01A1A2 06:A192: 30 06     BMI bra_A19A
bra_A194:
C - - - - - 0x01A1A4 06:A194: E8        INX
C - - - - - 0x01A1A5 06:A195: E0 03     CPX #$03
C - - - - - 0x01A1A7 06:A197: 90 F6     BCC bra_A18F_loop
bra_A199_RTS:
C - - - - - 0x01A1A9 06:A199: 60        RTS
bra_A19A:
C - - - - - 0x01A1AA 06:A19A: 86 72     STX ram_0072_t09_obj_item_index
C - - - - - 0x01A1AC 06:A19C: 20 AF A1  JSR sub_A1AF
C - - - - - 0x01A1AF 06:A19F: 20 E6 A1  JSR sub_A1E6
C - - - - - 0x01A1B2 06:A1A2: 90 06     BCC bra_A1AA
C - - - - - 0x01A1B4 06:A1A4: 20 E0 A2  JSR sub_A2E0
C - - - - - 0x01A1B7 06:A1A7: 20 8B A2  JSR sub_A28B_pick_up_item
bra_A1AA:
C - - - - - 0x01A1BA 06:A1AA: C6 71     DEC ram_0071_t11_obj_counter
C - - - - - 0x01A1BC 06:A1AC: D0 E6     BNE bra_A194
C - - - - - 0x01A1BE 06:A1AE: 60        RTS



sub_A1AF:
C - - - - - 0x01A1BF 06:A1AF: BD 31 05  LDA ram_0531_obj,X
C - - - - - 0x01A1C2 06:A1B2: 29 C0     AND #$C0
C - - - - - 0x01A1C4 06:A1B4: D0 1C     BNE bra_A1D2_RTS
C - - - - - 0x01A1C6 06:A1B6: DE 3E 05  DEC ram_053E_obj,X
C - - - - - 0x01A1C9 06:A1B9: D0 17     BNE bra_A1D2_RTS
C - - - - - 0x01A1CB 06:A1BB: BC D6 04  LDY ram_04D6_obj,X
C - - - - - 0x01A1CE 06:A1BE: B9 DC A1  LDA tbl_A1DC,Y
C - - - - - 0x01A1D1 06:A1C1: 30 10     BMI bra_A1D3_FF_end_token
C - - - - - 0x01A1D3 06:A1C3: 9D D6 04  STA ram_04D6_obj,X
C - - - - - 0x01A1D6 06:A1C6: B9 E0 A1  LDA tbl_A1E0,Y
C - - - - - 0x01A1D9 06:A1C9: 9D 3E 05  STA ram_053E_obj,X
C - - - - - 0x01A1DC 06:A1CC: B9 E3 A1  LDA tbl_A1E3,Y
C - - - - - 0x01A1DF 06:A1CF: 9D 24 05  STA ram_0524_obj_lo,X
bra_A1D2_RTS:
C - - - - - 0x01A1E2 06:A1D2: 60        RTS
bra_A1D3_FF_end_token:
C - - - - - 0x01A1E3 06:A1D3: BD 31 05  LDA ram_0531_obj,X
C - - - - - 0x01A1E6 06:A1D6: 09 80     ORA #$80
C - - - - - 0x01A1E8 06:A1D8: 9D 31 05  STA ram_0531_obj,X
C - - - - - 0x01A1EB 06:A1DB: 60        RTS



tbl_A1DC:
- D 1 - - - 0x01A1EC 06:A1DC: 01        .byte $01   ; 00 
- D 1 - - - 0x01A1ED 06:A1DD: 02        .byte $02   ; 01 
- D 1 - - - 0x01A1EE 06:A1DE: 03        .byte $03   ; 02 
- D 1 - - - 0x01A1EF 06:A1DF: FF        .byte $FF   ; 03 end token



tbl_A1E0:
- D 1 - - - 0x01A1F0 06:A1E0: 08        .byte $08   ; 00 
- D 1 - - - 0x01A1F1 06:A1E1: 1C        .byte $1C   ; 01 
- D 1 - - - 0x01A1F2 06:A1E2: 01        .byte $01   ; 02 



tbl_A1E3:
- D 1 - - - 0x01A1F3 06:A1E3: 01        .byte $01   ; 00 
- D 1 - - - 0x01A1F4 06:A1E4: 02        .byte $02   ; 01 
- D 1 - - - 0x01A1F5 06:A1E5: 03        .byte $03   ; 02 



sub_A1E6:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01A1F6 06:A1E6: BD 31 05  LDA ram_0531_obj,X
C - - - - - 0x01A1F9 06:A1E9: 29 40     AND #$40
C - - - - - 0x01A1FB 06:A1EB: D0 69     BNE bra_A256
C - - - - - 0x01A1FD 06:A1ED: A9 00     LDA #$00
C - - - - - 0x01A1FF 06:A1EF: 85 67     STA ram_0067_t5E_hi
C - - - - - 0x01A201 06:A1F1: BD 24 05  LDA ram_0524_obj_lo,X
C - - - - - 0x01A204 06:A1F4: 48        PHA
C - - - - - 0x01A205 06:A1F5: 10 04     BPL bra_A1FB
; bzk optimize, DEC
C - - - - - 0x01A207 06:A1F7: A9 FF     LDA #$FF
C - - - - - 0x01A209 06:A1F9: 85 67     STA ram_0067_t5E_hi
bra_A1FB:
C - - - - - 0x01A20B 06:A1FB: 68        PLA
C - - - - - 0x01A20C 06:A1FC: 18        CLC
C - - - - - 0x01A20D 06:A1FD: 7D 88 04  ADC ram_pos_Y_lo_obj,X
C - - - - - 0x01A210 06:A200: 9D 88 04  STA ram_pos_Y_lo_obj,X
C - - - - - 0x01A213 06:A203: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x01A215 06:A205: BD 95 04  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x01A218 06:A208: 65 67     ADC ram_0067_t5E_hi
C - - - - - 0x01A21A 06:A20A: 9D 95 04  STA ram_pos_Y_hi_obj,X
C - - - - - 0x01A21D 06:A20D: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x01A21F 06:A20F: BD 61 04  LDA ram_pos_X_lo_obj,X
C - - - - - 0x01A222 06:A212: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x01A224 06:A214: BD 6E 04  LDA ram_pos_X_hi_obj,X
C - - - - - 0x01A227 06:A217: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x01A229 06:A219: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x01A22C 06:A21C: A6 72     LDX ram_0072_t09_obj_item_index
C - - - - - 0x01A22E 06:A21E: A5 BC     LDA ram_00BC
; bzk optimize, there are probably no such values
C - - - - - 0x01A230 06:A220: 29 37     AND #$37
C - - - - - 0x01A232 06:A222: F0 32     BEQ bra_A256
C - - - - - 0x01A234 06:A224: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01A236 06:A226: 29 0F     AND #$0F
C - - - - - 0x01A238 06:A228: 49 FF     EOR #$FF
C - - - - - 0x01A23A 06:A22A: 85 67     STA ram_0067_t5F
C - - - - - 0x01A23C 06:A22C: E6 67     INC ram_0067_t5F
C - - - - - 0x01A23E 06:A22E: A5 67     LDA ram_0067_t5F
C - - - - - 0x01A240 06:A230: 29 0F     AND #$0F
C - - - - - 0x01A242 06:A232: 85 67     STA ram_0067_t60
C - - - - - 0x01A244 06:A234: BD 88 04  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x01A247 06:A237: 38        SEC
C - - - - - 0x01A248 06:A238: E5 67     SBC ram_0067_t60
C - - - - - 0x01A24A 06:A23A: 85 68     STA ram_0068_t36
C - - - - - 0x01A24C 06:A23C: 29 0F     AND #$0F
C - - - - - 0x01A24E 06:A23E: F0 09     BEQ bra_A249
C - - - - - 0x01A250 06:A240: A5 68     LDA ram_0068_t36
C - - - - - 0x01A252 06:A242: 29 F0     AND #$F0
C - - - - - 0x01A254 06:A244: 05 67     ORA ram_0067_t60
C - - - - - 0x01A256 06:A246: 9D 88 04  STA ram_pos_Y_lo_obj,X
bra_A249:
C - - - - - 0x01A259 06:A249: BD 31 05  LDA ram_0531_obj,X
C - - - - - 0x01A25C 06:A24C: 09 40     ORA #$40
C - - - - - 0x01A25E 06:A24E: 9D 31 05  STA ram_0531_obj,X
C - - - - - 0x01A261 06:A251: A9 00     LDA #$00
C - - - - - 0x01A263 06:A253: 9D 24 05  STA ram_0524_obj_lo,X
bra_A256:
C - - - - - 0x01A266 06:A256: BD 3A 04  LDA ram_043A_obj_flags,X
C - - - - - 0x01A269 06:A259: 29 02     AND #$02
C - - - - - 0x01A26B 06:A25B: D0 12     BNE bra_A26F
C - - - - - 0x01A26D 06:A25D: DE 4B 05  DEC ram_054B_obj,X
C - - - - - 0x01A270 06:A260: D0 12     BNE bra_A274
C - - - - - 0x01A272 06:A262: A9 7D     LDA #$7D
C - - - - - 0x01A274 06:A264: 9D 4B 05  STA ram_054B_obj,X
C - - - - - 0x01A277 06:A267: BD 3A 04  LDA ram_043A_obj_flags,X
C - - - - - 0x01A27A 06:A26A: 09 02     ORA #$02
C - - - - - 0x01A27C 06:A26C: 9D 3A 04  STA ram_043A_obj_flags,X
bra_A26F:
C - - - - - 0x01A27F 06:A26F: DE 4B 05  DEC ram_054B_obj,X
C - - - - - 0x01A282 06:A272: F0 0C     BEQ bra_A280
bra_A274:
C - - - - - 0x01A284 06:A274: BD 95 04  LDA ram_pos_Y_hi_obj,X
C - - - - - 0x01A287 06:A277: D0 07     BNE bra_A280
C - - - - - 0x01A289 06:A279: BD 6E 04  LDA ram_pos_X_hi_obj,X
C - - - - - 0x01A28C 06:A27C: D0 02     BNE bra_A280
C - - - - - 0x01A28E 06:A27E: 38        SEC
C - - - - - 0x01A28F 06:A27F: 60        RTS
bra_A280:
C - - - - - 0x01A290 06:A280: C6 CD     DEC ram_drop_objects_counter
C - - - - - 0x01A292 06:A282: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x01A294 06:A284: A9 00     LDA #$00
C - - - - - 0x01A296 06:A286: 9D 3A 04  STA ram_043A_obj_flags,X
C - - - - - 0x01A299 06:A289: 18        CLC
C - - - - - 0x01A29A 06:A28A: 60        RTS



sub_A28B_pick_up_item:
C - - - - - 0x01A29B 06:A28B: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01A29E 06:A28E: 29 18     AND #$18
C - - - - - 0x01A2A0 06:A290: D0 37     BNE bra_A2C9_RTS
; check X hitbox 8 pixels
C - - - - - 0x01A2A2 06:A292: BD 61 04  LDA ram_pos_X_lo_obj,X
C - - - - - 0x01A2A5 06:A295: 38        SEC
C - - - - - 0x01A2A6 06:A296: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01A2A9 06:A299: 10 05     BPL bra_A2A0
C - - - - - 0x01A2AB 06:A29B: 49 FF     EOR #$FF
C - - - - - 0x01A2AD 06:A29D: 18        CLC
C - - - - - 0x01A2AE 06:A29E: 69 01     ADC #$01
bra_A2A0:
C - - - - - 0x01A2B0 06:A2A0: C9 08     CMP #$08
C - - - - - 0x01A2B2 06:A2A2: B0 25     BCS bra_A2C9_RTS
; check Y hitbox
C - - - - - 0x01A2B4 06:A2A4: BD 88 04  LDA ram_pos_Y_lo_obj,X
C - - - - - 0x01A2B7 06:A2A7: 48        PHA
C - - - - - 0x01A2B8 06:A2A8: 38        SEC
C - - - - - 0x01A2B9 06:A2A9: ED 07 04  SBC ram_pos_Y_lo_player
C - - - - - 0x01A2BC 06:A2AC: 10 05     BPL bra_A2B3
C - - - - - 0x01A2BE 06:A2AE: 49 FF     EOR #$FF
C - - - - - 0x01A2C0 06:A2B0: 18        CLC
C - - - - - 0x01A2C1 06:A2B1: 69 01     ADC #$01
bra_A2B3:
C - - - - - 0x01A2C3 06:A2B3: 85 67     STA ram_0067_t61_hitbox
C - - - - - 0x01A2C5 06:A2B5: 68        PLA
C - - - - - 0x01A2C6 06:A2B6: CD 07 04  CMP ram_pos_Y_lo_player
C - - - - - 0x01A2C9 06:A2B9: B0 08     BCS bra_A2C3
C - - - - - 0x01A2CB 06:A2BB: A5 67     LDA ram_0067_t61_hitbox
C - - - - - 0x01A2CD 06:A2BD: C9 20     CMP #$20
C - - - - - 0x01A2CF 06:A2BF: 90 09     BCC bra_A2CA_pick_up_item
C - - - - - 0x01A2D1 06:A2C1: B0 06     BCS bra_A2C9_RTS    ; jmp
bra_A2C3:
C - - - - - 0x01A2D3 06:A2C3: A5 67     LDA ram_0067_t61_hitbox
C - - - - - 0x01A2D5 06:A2C5: C9 05     CMP #$05
C - - - - - 0x01A2D7 06:A2C7: 90 01     BCC bra_A2CA_pick_up_item
bra_A2C9_RTS:
C - - - - - 0x01A2D9 06:A2C9: 60        RTS
bra_A2CA_pick_up_item:
C - - - - - 0x01A2DA 06:A2CA: A9 0C     LDA #con_sfx_pick_up_drop
C - - - - - 0x01A2DC 06:A2CC: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01A2DE 06:A2CE: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01A2E1 06:A2D1: 20 0E A3  JSR sub_A30E_pick_up_item_handler
C - - - - - 0x01A2E4 06:A2D4: A6 72     LDX ram_0072_t09_obj_item_index
C - - - - - 0x01A2E6 06:A2D6: C6 CD     DEC ram_drop_objects_counter
C - - - - - 0x01A2E8 06:A2D8: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x01A2EA 06:A2DA: A9 00     LDA #$00
C - - - - - 0x01A2EC 06:A2DC: 9D 3A 04  STA ram_043A_obj_flags,X
C - - - - - 0x01A2EF 06:A2DF: 60        RTS



sub_A2E0:
C - - - - - 0x01A2F0 06:A2E0: DE E3 04  DEC ram_04E3_obj_delay,X
C - - - - - 0x01A2F3 06:A2E3: D0 28     BNE bra_A30D_RTS
C - - - - - 0x01A2F5 06:A2E5: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01A2F7 06:A2E7: 48        PHA
C - - - - - 0x01A2F8 06:A2E8: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01A2FA 06:A2EA: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01A2FC 06:A2EC: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A2FF 06:A2EF: BD BC 04  LDA ram_04BC_data_ptr_lo_obj,X
C - - - - - 0x01A302 06:A2F2: 85 5B     STA ram_005B_t28_data
C - - - - - 0x01A304 06:A2F4: BD C9 04  LDA ram_04C9_data_ptr_hi_obj,X
C - - - - - 0x01A307 06:A2F7: 85 5C     STA ram_005B_t28_data + $01
C - - - - - 0x01A309 06:A2F9: A0 05     LDY #$05
C - - - - - 0x01A30B 06:A2FB: B1 5B     LDA (ram_005B_t28_data),Y   ; read from 0x00B89A
C - - - - - 0x01A30D 06:A2FD: 85 5D     STA ram_005D_t16_data
C - - - - - 0x01A30F 06:A2FF: C8        INY ; 06
C - - - - - 0x01A310 06:A300: B1 5B     LDA (ram_005B_t28_data),Y   ; read from 0x00B89B
C - - - - - 0x01A312 06:A302: 85 5E     STA ram_005D_t16_data + $01
C - - - - - 0x01A314 06:A304: 20 11 A1  JSR sub_A111
C - - - - - 0x01A317 06:A307: 68        PLA
C - - - - - 0x01A318 06:A308: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01A31A 06:A30A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
bra_A30D_RTS:
C - - - - - 0x01A31D 06:A30D: 60        RTS



sub_A30E_pick_up_item_handler:
C - - - - - 0x01A31E 06:A30E: BD 47 04  LDA ram_obj_drop_id,X
C - - - - - 0x01A321 06:A311: 0A        ASL
C - - - - - 0x01A322 06:A312: AA        TAX
C - - - - - 0x01A323 06:A313: BD 20 A3  LDA tbl_A320_items_handler,X
C - - - - - 0x01A326 06:A316: 85 5B     STA ram_005B_t50_jmp
C - - - - - 0x01A328 06:A318: BD 21 A3  LDA tbl_A320_items_handler + $01,X
C - - - - - 0x01A32B 06:A31B: 85 5C     STA ram_005B_t50_jmp + $01
C - - - - - 0x01A32D 06:A31D: 6C 5B 00  JMP (ram_005B_t50_jmp)



tbl_A320_items_handler:
- D 1 - - - 0x01A330 06:A320: 34 A3     .word ofs_item_handler_A334_00_small_crystal_1
- D 1 - - - 0x01A332 06:A322: 34 A3     .word ofs_item_handler_A334_01_small_crystal_2
- D 1 - - - 0x01A334 06:A324: 7C A3     .word ofs_item_handler_A37C_02_big_crystal
- D 1 - - - 0x01A336 06:A326: 83 A3     .word ofs_item_handler_A383_03_exit
- D 1 - - - 0x01A338 06:A328: 17 A4     .word ofs_item_handler_A417_04_5_points
- - - - - - 0x01A33A 06:A32A: 83 A3     .word ofs_item_handler_A383_05 ; unused, index doesn't exist
- D 1 - - - 0x01A33C 06:A32C: 95 A3     .word ofs_item_handler_A395_06_small_heart
- D 1 - - - 0x01A33E 06:A32E: C7 A3     .word ofs_item_handler_A3C7_07_big_heart
- D 1 - - - 0x01A340 06:A330: CE A3     .word ofs_item_handler_A3CE_08_continue
- D 1 - - - 0x01A342 06:A332: DD A3     .word ofs_item_handler_A3DD_09_resque



ofs_item_handler_A334_00_small_crystal_1:
; con_drop_small_crystal_1
ofs_item_handler_A334_01_small_crystal_2:
; con_drop_small_crystal_2
C - - J - - 0x01A344 06:A334: A9 01     LDA #$01    ; 1
C - - - - - 0x01A346 06:A336: 85 67     STA ram_0067_t62_add_crystals
loc_A338:
C D 1 - - - 0x01A348 06:A338: A4 A8     LDY ram_plr_index
C - - - - - 0x01A34A 06:A33A: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01A34D 06:A33D: C9 03     CMP #$03
C - - - - - 0x01A34F 06:A33F: 90 07     BCC bra_A348
C - - - - - 0x01A351 06:A341: B9 DD 03  LDA ram_plr_crystals,Y
C - - - - - 0x01A354 06:A344: C9 63     CMP #$63
C - - - - - 0x01A356 06:A346: F0 29     BEQ bra_A371_skip_power
bra_A348:
C - - - - - 0x01A358 06:A348: B9 DD 03  LDA ram_plr_crystals,Y
C - - - - - 0x01A35B 06:A34B: 18        CLC
C - - - - - 0x01A35C 06:A34C: 65 67     ADC ram_0067_t62_add_crystals
C - - - - - 0x01A35E 06:A34E: 99 DD 03  STA ram_plr_crystals,Y
C - - - - - 0x01A361 06:A351: C9 64     CMP #$64
C - - - - - 0x01A363 06:A353: 90 1C     BCC bra_A371_skip_power
; if >= 100, increase power
C - - - - - 0x01A365 06:A355: E9 64     SBC #$64
C - - - - - 0x01A367 06:A357: 99 DD 03  STA ram_plr_crystals,Y
C - - - - - 0x01A36A 06:A35A: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01A36D 06:A35D: C9 03     CMP #$03
C - - - - - 0x01A36F 06:A35F: B0 13     BCS bra_A374_overflow
; if not overflow
C - - - - - 0x01A371 06:A361: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01A374 06:A364: 18        CLC
C - - - - - 0x01A375 06:A365: 69 01     ADC #$01
C - - - - - 0x01A377 06:A367: 99 D7 03  STA ram_player_power,Y
; 
C - - - - - 0x01A37A 06:A36A: A9 2B     LDA #con_sfx_power_increase
C - - - - - 0x01A37C 06:A36C: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01A37E 06:A36E: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_A371_skip_power:
C - - - - - 0x01A381 06:A371: 4C 1D A4  JMP loc_A41D_add_88_points
bra_A374_overflow:
C - - - - - 0x01A384 06:A374: A9 63     LDA #$63
C - - - - - 0x01A386 06:A376: 99 DD 03  STA ram_plr_crystals,Y
C - - - - - 0x01A389 06:A379: 4C 1D A4  JMP loc_A41D_add_88_points



ofs_item_handler_A37C_02_big_crystal:
; con_drop_big_crystal
C - - J - - 0x01A38C 06:A37C: A9 0A     LDA #$0A    ; 10
C - - - - - 0x01A38E 06:A37E: 85 67     STA ram_0067_t62_add_crystals
C - - - - - 0x01A390 06:A380: 4C 38 A3  JMP loc_A338



ofs_item_handler_A383_03_exit:
; con_drop_exit
ofs_item_handler_A383_05:
; con_drop_05
C - - J - - 0x01A393 06:A383: 20 62 A4  JSR sub_A462
C - - - - - 0x01A396 06:A386: A9 01     LDA #$01    ; have item
C - - - - - 0x01A398 06:A388: 8D E8 06  STA ram_06E8_exit_item
C - - - - - 0x01A39B 06:A38B: A9 12     LDA #con_sfx_exit_found
C - - - - - 0x01A39D 06:A38D: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01A39F 06:A38F: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01A3A2 06:A392: 4C 1D A4  JMP loc_A41D_add_88_points



ofs_item_handler_A395_06_small_heart:
; con_drop_small_heart
C - - J - - 0x01A3A5 06:A395: A9 02     LDA #$02
C - - - - - 0x01A3A7 06:A397: 85 68     STA ram_0068_t31_gain_health
loc_A399:
C D 1 - - - 0x01A3A9 06:A399: A4 A8     LDY ram_plr_index
; bzk optimize, LDX,Y
C - - - - - 0x01A3AB 06:A39B: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01A3AE 06:A39E: AA        TAX
C - - - - - 0x01A3AF 06:A39F: BD C3 A3  LDA tbl_A3C3_player_max_life,X
C - - - - - 0x01A3B2 06:A3A2: 85 67     STA ram_0067_t43_max_life
C - - - - - 0x01A3B4 06:A3A4: B9 D9 03  LDA ram_player_hp,Y
C - - - - - 0x01A3B7 06:A3A7: C5 67     CMP ram_0067_t43_max_life
C - - - - - 0x01A3B9 06:A3A9: F0 0E     BEQ bra_A3B9
C - - - - - 0x01A3BB 06:A3AB: 18        CLC
C - - - - - 0x01A3BC 06:A3AC: 65 68     ADC ram_0068_t31_gain_health
C - - - - - 0x01A3BE 06:A3AE: C5 67     CMP ram_0067_t43_max_life
C - - - - - 0x01A3C0 06:A3B0: F0 04     BEQ bra_A3B6
C - - - - - 0x01A3C2 06:A3B2: 90 02     BCC bra_A3B6
C - - - - - 0x01A3C4 06:A3B4: A5 67     LDA ram_0067_t43_max_life
bra_A3B6:
C - - - - - 0x01A3C6 06:A3B6: 99 D9 03  STA ram_player_hp,Y
bra_A3B9:
C - - - - - 0x01A3C9 06:A3B9: A9 11     LDA #con_sfx_restore_health
C - - - - - 0x01A3CB 06:A3BB: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01A3CD 06:A3BD: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01A3D0 06:A3C0: 4C 1D A4  JMP loc_A41D_add_88_points



tbl_A3C3_player_max_life:
- D 1 - - - 0x01A3D3 06:A3C3: 08        .byte $08   ; 00 
- D 1 - - - 0x01A3D4 06:A3C4: 0C        .byte $0C   ; 01 
- D 1 - - - 0x01A3D5 06:A3C5: 10        .byte $10   ; 02 
- D 1 - - - 0x01A3D6 06:A3C6: 14        .byte $14   ; 03 



ofs_item_handler_A3C7_07_big_heart:
; con_drop_big_heart
C - - J - - 0x01A3D7 06:A3C7: A9 0A     LDA #$0A
C - - - - - 0x01A3D9 06:A3C9: 85 68     STA ram_0068_t31_gain_health
C - - - - - 0x01A3DB 06:A3CB: 4C 99 A3  JMP loc_A399



ofs_item_handler_A3CE_08_continue:
; con_drop_continue
C - - J - - 0x01A3DE 06:A3CE: E6 E5     INC ram_continues
C - - - - - 0x01A3E0 06:A3D0: A5 E5     LDA ram_continues
C - - - - - 0x01A3E2 06:A3D2: C9 0A     CMP #$0A
C - - - - - 0x01A3E4 06:A3D4: 90 04     BCC bra_A3DA_not_overflow
; if overflow
- - - - - - 0x01A3E6 06:A3D6: A9 09     LDA #$09
- - - - - - 0x01A3E8 06:A3D8: 85 E5     STA ram_continues
bra_A3DA_not_overflow:
C - - - - - 0x01A3EA 06:A3DA: 4C 1D A4  JMP loc_A41D_add_88_points



ofs_item_handler_A3DD_09_resque:
; con_drop_resque
C - - J - - 0x01A3ED 06:A3DD: A5 A8     LDA ram_plr_index
C - - - - - 0x01A3EF 06:A3DF: 49 01     EOR #$01
C - - - - - 0x01A3F1 06:A3E1: A8        TAY
C - - - - - 0x01A3F2 06:A3E2: B9 D4 05  LDA ram_05D4_plr_flags,Y
C - - - - - 0x01A3F5 06:A3E5: 30 20     BMI bra_A407
; if not con_05D4_80
C - - - - - 0x01A3F7 06:A3E7: 09 80     ORA #con_05D4_80
C - - - - - 0x01A3F9 06:A3E9: 99 D4 05  STA ram_05D4_plr_flags,Y
C - - - - - 0x01A3FC 06:A3EC: B9 D6 05  LDA ram_05D6_plr,Y
C - - - - - 0x01A3FF 06:A3EF: 09 80     ORA #$80
C - - - - - 0x01A401 06:A3F1: 99 D6 05  STA ram_05D6_plr,Y
C - - - - - 0x01A404 06:A3F4: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01A407 06:A3F7: 39 11 A4  AND tbl_A411_clear_dead_flag,Y
C - - - - - 0x01A40A 06:A3FA: 8D B5 05  STA ram_05B5_player_flags
; bzk optimize, LDX,Y
C - - - - - 0x01A40D 06:A3FD: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01A410 06:A400: AA        TAX
C - - - - - 0x01A411 06:A401: BD 13 A4  LDA tbl_A413_max_life,X
C - - - - - 0x01A414 06:A404: 99 D9 03  STA ram_player_hp,Y
bra_A407:
C - - - - - 0x01A417 06:A407: A9 2C     LDA #con_sfx_resque
C - - - - - 0x01A419 06:A409: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01A41B 06:A40B: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01A41E 06:A40E: 4C 1D A4  JMP loc_A41D_add_88_points



tbl_A411_clear_dead_flag:
- D 1 - - - 0x01A421 06:A411: 7F        .byte con_05B5_captured_captain ^ $FF   ; 00 captain
- D 1 - - - 0x01A422 06:A412: BF        .byte con_05B5_captured_hawk ^ $FF   ; 01 hawk



tbl_A413_max_life:
; bzk optimize, same table as 0x01A3D3
- D 1 - - - 0x01A423 06:A413: 08        .byte $08   ; 00 
- D 1 - - - 0x01A424 06:A414: 0C        .byte $0C   ; 01 
- - - - - - 0x01A425 06:A415: 10        .byte $10   ; 02 
- - - - - - 0x01A426 06:A416: 14        .byte $14   ; 03 



ofs_item_handler_A417_04_5_points:
; con_drop_5_stars
C - - J - - 0x01A427 06:A417: A9 05     LDA #$05
C - - - - - 0x01A429 06:A419: 85 67     STA ram_0067_t44_points
C - - - - - 0x01A42B 06:A41B: D0 04     BNE bra_A421    ; jmp



loc_A41D_add_88_points:
C D 1 - - - 0x01A42D 06:A41D: A9 58     LDA #$58
C - - - - - 0x01A42F 06:A41F: 85 67     STA ram_0067_t44_points
bra_A421:
C - - - - - 0x01A431 06:A421: AD E4 03  LDA ram_plr_score + $02
C - - - - - 0x01A434 06:A424: 18        CLC
C - - - - - 0x01A435 06:A425: 65 67     ADC ram_0067_t44_points
C - - - - - 0x01A437 06:A427: 8D E4 03  STA ram_plr_score + $02
C - - - - - 0x01A43A 06:A42A: AD E3 03  LDA ram_plr_score + $01
C - - - - - 0x01A43D 06:A42D: 69 00     ADC #< $0000
C - - - - - 0x01A43F 06:A42F: 8D E3 03  STA ram_plr_score + $01
C - - - - - 0x01A442 06:A432: AD E2 03  LDA ram_plr_score
C - - - - - 0x01A445 06:A435: 69 00     ADC #> $0000
C - - - - - 0x01A447 06:A437: 8D E2 03  STA ram_plr_score
; bzk optimize, useless LDA
; bzk optimize, same code as 0x017F3C
C - - - - - 0x01A44A 06:A43A: AD E2 03  LDA ram_plr_score
C - - - - - 0x01A44D 06:A43D: C9 0F     CMP #$0F
C - - - - - 0x01A44F 06:A43F: 90 20     BCC bra_A461_RTS    ; if < 99x.xxx
; if 99x.xxx+, check for 999.999
- - - - - - 0x01A451 06:A441: A9 3F     LDA #< $0F423F
- - - - - - 0x01A453 06:A443: ED E4 03  SBC ram_plr_score + $02
- - - - - - 0x01A456 06:A446: A9 42     LDA #> $0F423F
- - - - - - 0x01A458 06:A448: ED E3 03  SBC ram_plr_score + $01
- - - - - - 0x01A45B 06:A44B: A9 0F     LDA #^ $0F423F
- - - - - - 0x01A45D 06:A44D: ED E2 03  SBC ram_plr_score
- - - - - - 0x01A460 06:A450: B0 0F     BCS bra_A461_RTS    ; if < 999.999
; if >= 999.999, set 999.999
- - - - - - 0x01A462 06:A452: A9 3F     LDA #< $0F423F
- - - - - - 0x01A464 06:A454: 8D E4 03  STA ram_plr_score + $02
- - - - - - 0x01A467 06:A457: A9 42     LDA #> $0F423F
- - - - - - 0x01A469 06:A459: 8D E3 03  STA ram_plr_score + $01
- - - - - - 0x01A46C 06:A45C: A9 0F     LDA #^ $0F423F
- - - - - - 0x01A46E 06:A45E: 8D E2 03  STA ram_plr_score
bra_A461_RTS:
C - - - - - 0x01A471 06:A461: 60        RTS



sub_A462:
C - - - - - 0x01A472 06:A462: AD E8 06  LDA ram_06E8_exit_item
C - - - - - 0x01A475 06:A465: D0 13     BNE bra_A47A_RTS
; if don't have item
C - - - - - 0x01A477 06:A467: AD F2 03  LDA ram_03F2_counter
C - - - - - 0x01A47A 06:A46A: C9 0A     CMP #$0A
C - - - - - 0x01A47C 06:A46C: B0 0C     BCS bra_A47A_RTS
C - - - - - 0x01A47E 06:A46E: A2 00     LDX #$00
bra_A470_loop:
C - - - - - 0x01A480 06:A470: BD 87 05  LDA ram_0587_obj,X
C - - - - - 0x01A483 06:A473: 10 06     BPL bra_A47B
C - - - - - 0x01A485 06:A475: E8        INX
C - - - - - 0x01A486 06:A476: E0 0A     CPX #$0A
C - - - - - 0x01A488 06:A478: 90 F6     BCC bra_A470_loop
bra_A47A_RTS:
C - - - - - 0x01A48A 06:A47A: 60        RTS
bra_A47B:
C - - - - - 0x01A48B 06:A47B: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01A48E 06:A47E: 9D 91 05  STA ram_0591_obj_spr_X,X
C - - - - - 0x01A491 06:A481: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01A494 06:A484: 38        SEC
C - - - - - 0x01A495 06:A485: E9 30     SBC #$30
C - - - - - 0x01A497 06:A487: 9D 9B 05  STA ram_059B_obj_spr_Y,X
C - - - - - 0x01A49A 06:A48A: 90 04     BCC bra_A490
C - - - - - 0x01A49C 06:A48C: C9 20     CMP #$20
C - - - - - 0x01A49E 06:A48E: B0 05     BCS bra_A495
bra_A490:
C - - - - - 0x01A4A0 06:A490: A9 20     LDA #$20
C - - - - - 0x01A4A2 06:A492: 9D 9B 05  STA ram_059B_obj_spr_Y,X
bra_A495:
C - - - - - 0x01A4A5 06:A495: A9 B5     LDA #$35 + $80
C - - - - - 0x01A4A7 06:A497: 9D 87 05  STA ram_0587_obj,X
C - - - - - 0x01A4AA 06:A49A: EE F2 03  INC ram_03F2_counter
C - - - - - 0x01A4AD 06:A49D: 60        RTS



loc_A49E:
C D 1 - - - 0x01A4AE 06:A49E: A5 3C     LDA ram_city
C - - - - - 0x01A4B0 06:A4A0: C9 03     CMP #$03
C - - - - - 0x01A4B2 06:A4A2: F0 07     BEQ bra_A4AB
C - - - - - 0x01A4B4 06:A4A4: A5 DB     LDA ram_00DB_flag
C - - - - - 0x01A4B6 06:A4A6: 30 48     BMI bra_A4F0
C - - - - - 0x01A4B8 06:A4A8: 4C 12 A5  JMP loc_A512
bra_A4AB:
C - - - - - 0x01A4BB 06:A4AB: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01A4BE 06:A4AE: 29 01     AND #con_05B5_together
C - - - - - 0x01A4C0 06:A4B0: F0 04     BEQ bra_A4B6_separate
; if together
C - - - - - 0x01A4C2 06:A4B2: A2 00     LDX #$00
C - - - - - 0x01A4C4 06:A4B4: F0 02     BEQ bra_A4B8    ; jmp
bra_A4B6_separate:
C - - - - - 0x01A4C6 06:A4B6: A6 A8     LDX ram_plr_index
bra_A4B8:
C - - - - - 0x01A4C8 06:A4B8: 86 67     STX ram_0067_t63_plr_index
C - - - - - 0x01A4CA 06:A4BA: AD F5 05  LDA ram_05F5_flag
C - - - - - 0x01A4CD 06:A4BD: 10 0E     BPL bra_A4CD
C - - - - - 0x01A4CF 06:A4BF: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01A4D2 06:A4C2: 29 18     AND #$18
C - - - - - 0x01A4D4 06:A4C4: D0 26     BNE bra_A4EC
C - - - - - 0x01A4D6 06:A4C6: CE F6 05  DEC ram_05F6_timer
C - - - - - 0x01A4D9 06:A4C9: D0 21     BNE bra_A4EC
C - - - - - 0x01A4DB 06:A4CB: F0 0B     BEQ bra_A4D8    ; jmp
bra_A4CD:
C - - - - - 0x01A4DD 06:A4CD: AD E2 05  LDA ram_05E2_counter
C - - - - - 0x01A4E0 06:A4D0: 10 1A     BPL bra_A4EC
C - - - - - 0x01A4E2 06:A4D2: 20 B4 A5  JSR sub_A5B4
C - - - - - 0x01A4E5 06:A4D5: 4C EC A4  JMP loc_A4EC
bra_A4D8:
loc_A4D8:
C D 1 - - - 0x01A4E8 06:A4D8: A9 00     LDA #con_03D5_00
C - - - - - 0x01A4EA 06:A4DA: 8D D5 03  STA ram_03D5_script
; bzk optimize, loading the same A
C - - - - - 0x01A4ED 06:A4DD: A9 00     LDA #con_03D6_00
; 
C - - - - - 0x01A4EF 06:A4DF: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01A4F2 06:A4E2: A9 06     LDA #con_script_06
C - - - - - 0x01A4F4 06:A4E4: 8D D4 03  STA ram_script
bra_A4E7:
C - - - - - 0x01A4F7 06:A4E7: A9 01     LDA #$01
bra_A4E9:
C - - - - - 0x01A4F9 06:A4E9: 85 68     STA ram_0068_t41_flag
C - - - - - 0x01A4FB 06:A4EB: 60        RTS
bra_A4EC:
loc_A4EC:
C D 1 - - - 0x01A4FC 06:A4EC: A9 00     LDA #$00
C - - - - - 0x01A4FE 06:A4EE: F0 F9     BEQ bra_A4E9    ; jmp
bra_A4F0:
C - - - - - 0x01A500 06:A4F0: AD 53 04  LDA ram_0453_t02
C - - - - - 0x01A503 06:A4F3: D0 F7     BNE bra_A4EC
C - - - - - 0x01A505 06:A4F5: AD 4A 04  LDA ram_obj_id
C - - - - - 0x01A508 06:A4F8: 38        SEC
C - - - - - 0x01A509 06:A4F9: E9 50     SBC #$50    ; con_enemy_id_50
C - - - - - 0x01A50B 06:A4FB: A8        TAY
C - - - - - 0x01A50C 06:A4FC: B9 AE A5  LDA tbl_A5AE,Y
C - - - - - 0x01A50F 06:A4FF: 8D E1 05  STA ram_05E1_flags
C - - - - - 0x01A512 06:A502: A5 D2     LDA ram_00D2_data_index
C - - - - - 0x01A514 06:A504: C9 04     CMP #$04
C - - - - - 0x01A516 06:A506: B0 02     BCS bra_A50A_overflow
; if not overflow
C - - - - - 0x01A518 06:A508: E6 D2     INC ram_00D2_data_index
bra_A50A_overflow:
C - - - - - 0x01A51A 06:A50A: A9 00     LDA #con_05E0_00
C - - - - - 0x01A51C 06:A50C: 8D E0 05  STA ram_05E0_flags
; bzk optimize, BEQ
C - - - - - 0x01A51F 06:A50F: 4C 27 A5  JMP loc_A527
loc_A512:
C D 1 - - - 0x01A522 06:A512: A5 3C     LDA ram_city
C - - - - - 0x01A524 06:A514: F0 05     BEQ bra_A51B
C - - - - - 0x01A526 06:A516: AD E8 06  LDA ram_06E8_exit_item
C - - - - - 0x01A529 06:A519: F0 D1     BEQ bra_A4EC    ; if don't have item
bra_A51B:
C - - - - - 0x01A52B 06:A51B: 20 F6 A5  JSR sub_A5F6
C - - - - - 0x01A52E 06:A51E: 90 CC     BCC bra_A4EC
C - - - - - 0x01A530 06:A520: 20 34 A6  JSR sub_A634
C - - - - - 0x01A533 06:A523: 90 02     BCC bra_A527
C - - - - - 0x01A535 06:A525: B0 C0     BCS bra_A4E7    ; jmp
bra_A527:
loc_A527:
C D 1 - - - 0x01A537 06:A527: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A53A 06:A52A: 29 40     AND #con_05D4_40
C - - - - - 0x01A53C 06:A52C: F0 04     BEQ bra_A532
C - - - - - 0x01A53E 06:A52E: A2 00     LDX #$00
C - - - - - 0x01A540 06:A530: F0 02     BEQ bra_A534    ; jmp
bra_A532:
C - - - - - 0x01A542 06:A532: A6 A8     LDX ram_plr_index
bra_A534:
C - - - - - 0x01A544 06:A534: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x01A547 06:A537: 9D DA 05  STA ram_05DA_plr,X
C - - - - - 0x01A54A 06:A53A: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x01A54D 06:A53D: 09 80     ORA #$80
C - - - - - 0x01A54F 06:A53F: 9D D6 05  STA ram_05D6_plr,X
C - - - - - 0x01A552 06:A542: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x01A555 06:A545: 29 EF     AND #con_05D4_10 ^ $FF
C - - - - - 0x01A557 06:A547: 9D D4 05  STA ram_05D4_plr_flags,X
C - - - - - 0x01A55A 06:A54A: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A55D 06:A54D: 29 40     AND #con_05D4_40
C - - - - - 0x01A55F 06:A54F: F0 0C     BEQ bra_A55D
C - - - - - 0x01A561 06:A551: AD DA 05  LDA ram_05DA_plr
C - - - - - 0x01A564 06:A554: 8D DB 05  STA ram_05DA_plr + $01
C - - - - - 0x01A567 06:A557: AD D6 05  LDA ram_05D6_plr
C - - - - - 0x01A56A 06:A55A: 8D D7 05  STA ram_05D6_plr + $01
bra_A55D:
C - - - - - 0x01A56D 06:A55D: A5 3C     LDA ram_city
C - - - - - 0x01A56F 06:A55F: C9 16     CMP #$16
C - - - - - 0x01A571 06:A561: F0 20     BEQ bra_A583
C - - - - - 0x01A573 06:A563: C9 22     CMP #$22
C - - - - - 0x01A575 06:A565: F0 1C     BEQ bra_A583
C - - - - - 0x01A577 06:A567: C9 14     CMP #$14
C - - - - - 0x01A579 06:A569: D0 2A     BNE bra_A595
C - - - - - 0x01A57B 06:A56B: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01A57E 06:A56E: 29 08     AND #con_05E1_08
C - - - - - 0x01A580 06:A570: F0 23     BEQ bra_A595
C - - - - - 0x01A582 06:A572: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x01A585 06:A575: 29 20     AND #con_05D4_20
C - - - - - 0x01A587 06:A577: F0 1C     BEQ bra_A595
C - - - - - 0x01A589 06:A579: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x01A58C 06:A57C: 09 10     ORA #con_05D4_10
C - - - - - 0x01A58E 06:A57E: 9D D4 05  STA ram_05D4_plr_flags,X
C - - - - - 0x01A591 06:A581: D0 12     BNE bra_A595    ; jmp
bra_A583:
C - - - - - 0x01A593 06:A583: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A596 06:A586: 0D D5 05  ORA ram_05D4_plr_flags + $01
C - - - - - 0x01A599 06:A589: 29 20     AND #con_05D4_20
C - - - - - 0x01A59B 06:A58B: D0 08     BNE bra_A595
C - - - - - 0x01A59D 06:A58D: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x01A5A0 06:A590: 09 20     ORA #con_05D4_20
C - - - - - 0x01A5A2 06:A592: 9D D4 05  STA ram_05D4_plr_flags,X
bra_A595:
C - - - - - 0x01A5A5 06:A595: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A5A8 06:A598: 29 40     AND #con_05D4_40
C - - - - - 0x01A5AA 06:A59A: F0 0C     BEQ bra_A5A8
C - - - - - 0x01A5AC 06:A59C: AD D6 05  LDA ram_05D6_plr
C - - - - - 0x01A5AF 06:A59F: 8D D7 05  STA ram_05D6_plr + $01
C - - - - - 0x01A5B2 06:A5A2: AD DA 05  LDA ram_05DA_plr
C - - - - - 0x01A5B5 06:A5A5: 8D DB 05  STA ram_05DA_plr + $01
bra_A5A8:
C - - - - - 0x01A5B8 06:A5A8: 4C D8 A4  JMP loc_A4D8



tbl_A5AB_add_flags:
- D 1 - - - 0x01A5BB 06:A5AB: 01        .byte con_05E0_01   ; 00 
- D 1 - - - 0x01A5BC 06:A5AC: 02        .byte con_05E0_02   ; 01 
- D 1 - - - 0x01A5BD 06:A5AD: 04        .byte con_05E0_04   ; 02 



tbl_A5AE:
; bzk optimize, 00/10 at the beginning is an unused flag, delete it
- D 1 - - - 0x01A5BE 06:A5AE: 01        .byte $00 + con_05E1_01   ; 50 con_enemy_id_50
- D 1 - - - 0x01A5BF 06:A5AF: 03        .byte $00 + con_05E1_01 + con_05E1_02   ; 51 con_enemy_id_51
- D 1 - - - 0x01A5C0 06:A5B0: 0F        .byte $00 + con_05E1_01 + con_05E1_02 + con_05E1_04 + con_05E1_08   ; 52 con_enemy_id_52
- D 1 - - - 0x01A5C1 06:A5B1: 07        .byte $00 + con_05E1_01 + con_05E1_02 + con_05E1_04   ; 53 con_enemy_id_53
- D 1 - - - 0x01A5C2 06:A5B2: 1F        .byte $10 + con_05E1_01 + con_05E1_02 + con_05E1_04 + con_05E1_08   ; 54 con_enemy_id_54
- D 1 - - - 0x01A5C3 06:A5B3: 3F        .byte $10 + con_05E1_01 + con_05E1_02 + con_05E1_04 + con_05E1_08 + con_05E1_20   ; 55 con_enemy_id_55



sub_A5B4:
C - - - - - 0x01A5C4 06:A5B4: A9 80     LDA #$80
C - - - - - 0x01A5C6 06:A5B6: 8D F5 05  STA ram_05F5_flag
C - - - - - 0x01A5C9 06:A5B9: A9 C0     LDA #$C0
C - - - - - 0x01A5CB 06:A5BB: 8D F6 05  STA ram_05F6_timer
; bzk optimize, move LDX before 0x01A5DC for readability
C - - - - - 0x01A5CE 06:A5BE: A6 67     LDX ram_0067_t63_plr_index
; 
C - - - - - 0x01A5D0 06:A5C0: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x01A5D3 06:A5C3: 29 FE     AND #con_05DC_player_index ^ $FF
C - - - - - 0x01A5D5 06:A5C5: 09 20     ORA #con_05DC_20
C - - - - - 0x01A5D7 06:A5C7: 05 67     ORA ram_0067_t63_plr_index
C - - - - - 0x01A5D9 06:A5C9: 8D DC 05  STA ram_05DC_flags
; 
C - - - - - 0x01A5DC 06:A5CC: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x01A5DF 06:A5CF: 9D DA 05  STA ram_05DA_plr,X
C - - - - - 0x01A5E2 06:A5D2: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x01A5E5 06:A5D5: 29 7F     AND #$7F
C - - - - - 0x01A5E7 06:A5D7: 9D D6 05  STA ram_05D6_plr,X
C - - - - - 0x01A5EA 06:A5DA: A0 00     LDY #$00
bra_A5DC_loop:
C - - - - - 0x01A5EC 06:A5DC: B9 DD 05  LDA ram_05DD_obj,Y
C - - - - - 0x01A5EF 06:A5DF: 30 06     BMI bra_A5E7
C - - - - - 0x01A5F1 06:A5E1: C8        INY
C - - - - - 0x01A5F2 06:A5E2: C0 03     CPY #$03
C - - - - - 0x01A5F4 06:A5E4: 90 F6     BCC bra_A5DC_loop
- - - - - - 0x01A5F6 06:A5E6: 60        RTS
bra_A5E7:
C - - - - - 0x01A5F7 06:A5E7: B9 AB A5  LDA tbl_A5AB_add_flags,Y
C - - - - - 0x01A5FA 06:A5EA: 0D E0 05  ORA ram_05E0_flags
C - - - - - 0x01A5FD 06:A5ED: 8D E0 05  STA ram_05E0_flags
C - - - - - 0x01A600 06:A5F0: A9 00     LDA #$00
C - - - - - 0x01A602 06:A5F2: 99 DD 05  STA ram_05DD_obj,Y
C - - - - - 0x01A605 06:A5F5: 60        RTS



sub_A5F6:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01A606 06:A5F6: AD 01 04  LDA ram_player_state_1
C - - - - - 0x01A609 06:A5F9: C9 02     CMP #$02
C - - - - - 0x01A60B 06:A5FB: B0 33     BCS bra_A630
; if
    ; con_plr_state_idle
    ; con_plr_state_walk
    ; con_plr_state_jump
C - - - - - 0x01A60D 06:A5FD: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01A610 06:A600: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x01A612 06:A602: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01A615 06:A605: 18        CLC
C - - - - - 0x01A616 06:A606: 69 04     ADC #$04
C - - - - - 0x01A618 06:A608: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x01A61A 06:A60A: A9 00     LDA #$00
C - - - - - 0x01A61C 06:A60C: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x01A61E 06:A60E: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x01A620 06:A610: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x01A623 06:A613: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01A625 06:A615: 48        PHA
C - - - - - 0x01A626 06:A616: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01A628 06:A618: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01A62A 06:A61A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A62D 06:A61D: A6 3C     LDX ram_city
C - - - - - 0x01A62F 06:A61F: BD 94 9B  LDA tbl_0x005BA4_city_byte,X
C - - - - - 0x01A632 06:A622: 85 67     STA ram_0067_t64
C - - - - - 0x01A634 06:A624: 68        PLA
C - - - - - 0x01A635 06:A625: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01A637 06:A627: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01A63A 06:A62A: A5 67     LDA ram_0067_t64
C - - - - - 0x01A63C 06:A62C: C5 BB     CMP ram_00BB_data_index
C - - - - - 0x01A63E 06:A62E: F0 02     BEQ bra_A632
bra_A630:
C - - - - - 0x01A640 06:A630: 18        CLC
C - - - - - 0x01A641 06:A631: 60        RTS
bra_A632:
C - - - - - 0x01A642 06:A632: 38        SEC
C - - - - - 0x01A643 06:A633: 60        RTS



sub_A634:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01A644 06:A634: A5 3C     LDA ram_city
C - - - - - 0x01A646 06:A636: C9 00     CMP #$00
C - - - - - 0x01A648 06:A638: F0 1E     BEQ bra_A658
C - - - - - 0x01A64A 06:A63A: C9 02     CMP #$02
C - - - - - 0x01A64C 06:A63C: F0 25     BEQ bra_A663
C - - - - - 0x01A64E 06:A63E: C9 0A     CMP #$0A
C - - - - - 0x01A650 06:A640: F0 2C     BEQ bra_A66E
C - - - - - 0x01A652 06:A642: C9 12     CMP #$12
C - - - - - 0x01A654 06:A644: F0 33     BEQ bra_A679
C - - - - - 0x01A656 06:A646: C9 1F     CMP #$1F
C - - - - - 0x01A658 06:A648: F0 2F     BEQ bra_A679
bra_A64A:
C - - - - - 0x01A65A 06:A64A: 18        CLC
C - - - - - 0x01A65B 06:A64B: 60        RTS
bra_A64C:
C - - - - - 0x01A65C 06:A64C: A9 00     LDA #con_03D5_00
C - - - - - 0x01A65E 06:A64E: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01A661 06:A651: A9 01     LDA #con_03D6_01
C - - - - - 0x01A663 06:A653: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01A666 06:A656: 38        SEC
C - - - - - 0x01A667 06:A657: 60        RTS
bra_A658:
C - - - - - 0x01A668 06:A658: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01A66B 06:A65B: 29 02     AND #con_05E1_02
C - - - - - 0x01A66D 06:A65D: D0 EB     BNE bra_A64A
C - - - - - 0x01A66F 06:A65F: A9 18     LDA #$18
C - - - - - 0x01A671 06:A661: D0 1F     BNE bra_A682    ; jmp
bra_A663:
- - - - - - 0x01A673 06:A663: AD E1 05  LDA ram_05E1_flags
- - - - - - 0x01A676 06:A666: 29 20     AND #con_05E1_20
- - - - - - 0x01A678 06:A668: D0 E0     BNE bra_A64A
- - - - - - 0x01A67A 06:A66A: A9 19     LDA #$19
- - - - - - 0x01A67C 06:A66C: D0 14     BNE bra_A682    ; jmp
bra_A66E:
C - - - - - 0x01A67E 06:A66E: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01A681 06:A671: 29 01     AND #con_05E1_01
C - - - - - 0x01A683 06:A673: D0 D5     BNE bra_A64A
C - - - - - 0x01A685 06:A675: A9 1A     LDA #$1A
C - - - - - 0x01A687 06:A677: D0 09     BNE bra_A682    ; jmp
bra_A679:
C - - - - - 0x01A689 06:A679: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01A68C 06:A67C: 29 04     AND #con_05E1_04
C - - - - - 0x01A68E 06:A67E: D0 CA     BNE bra_A64A
C - - - - - 0x01A690 06:A680: A9 1B     LDA #$1B
bra_A682:
C - - - - - 0x01A692 06:A682: 85 3C     STA ram_city
C - - - - - 0x01A694 06:A684: D0 C6     BNE bra_A64C    ; jmp



loc_A686:
C D 1 - - - 0x01A696 06:A686: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A699 06:A689: 85 67     STA ram_0067_t65_plr_flag
C - - - - - 0x01A69B 06:A68B: A4 A8     LDY ram_plr_index
C - - - - - 0x01A69D 06:A68D: B9 D4 05  LDA ram_05D4_plr_flags,Y
C - - - - - 0x01A6A0 06:A690: 29 6F     AND #(con_05D4_10 + con_05D4_80) ^ $FF
C - - - - - 0x01A6A2 06:A692: 99 D4 05  STA ram_05D4_plr_flags,Y
C - - - - - 0x01A6A5 06:A695: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A6A8 06:A698: 29 40     AND #con_05D4_40
C - - - - - 0x01A6AA 06:A69A: F0 21     BEQ bra_A6BD
C - - - - - 0x01A6AC 06:A69C: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A6AF 06:A69F: 29 AF     AND #(con_05D4_10 + con_05D4_40) ^ $FF
C - - - - - 0x01A6B1 06:A6A1: 8D D4 05  STA ram_05D4_plr_flags
C - - - - - 0x01A6B4 06:A6A4: B9 D4 05  LDA ram_05D4_plr_flags,Y
C - - - - - 0x01A6B7 06:A6A7: 29 20     AND #con_05D4_20
C - - - - - 0x01A6B9 06:A6A9: 48        PHA
C - - - - - 0x01A6BA 06:A6AA: 98        TYA
C - - - - - 0x01A6BB 06:A6AB: 49 01     EOR #$01
C - - - - - 0x01A6BD 06:A6AD: AA        TAX
C - - - - - 0x01A6BE 06:A6AE: 68        PLA
C - - - - - 0x01A6BF 06:A6AF: 1D D4 05  ORA ram_05D4_plr_flags,X
C - - - - - 0x01A6C2 06:A6B2: 9D D4 05  STA ram_05D4_plr_flags,X
C - - - - - 0x01A6C5 06:A6B5: B9 D4 05  LDA ram_05D4_plr_flags,Y
C - - - - - 0x01A6C8 06:A6B8: 29 CF     AND #(con_05D4_10 + con_05D4_20) ^ $FF
C - - - - - 0x01A6CA 06:A6BA: 99 D4 05  STA ram_05D4_plr_flags,Y
bra_A6BD:
C - - - - - 0x01A6CD 06:A6BD: A5 3C     LDA ram_city
C - - - - - 0x01A6CF 06:A6BF: C9 03     CMP #$03
C - - - - - 0x01A6D1 06:A6C1: D0 06     BNE bra_A6C9
C - - - - - 0x01A6D3 06:A6C3: A5 67     LDA ram_0067_t65_plr_flag
C - - - - - 0x01A6D5 06:A6C5: 29 40     AND #$40
C - - - - - 0x01A6D7 06:A6C7: D0 05     BNE bra_A6CE
bra_A6C9:
C - - - - - 0x01A6D9 06:A6C9: A9 00     LDA #con_05DC_00
C - - - - - 0x01A6DB 06:A6CB: 8D DC 05  STA ram_05DC_flags
bra_A6CE:
C - - - - - 0x01A6DE 06:A6CE: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x01A6E1 06:A6D1: 39 F5 A6  AND tbl_A6F5_clear_flag,Y
C - - - - - 0x01A6E4 06:A6D4: 19 F7 A6  ORA tbl_A6F7_set_dead_flag,Y
C - - - - - 0x01A6E7 06:A6D7: 8D B5 05  STA ram_05B5_player_flags
C - - - - - 0x01A6EA 06:A6DA: A5 D2     LDA ram_00D2_data_index
C - - - - - 0x01A6EC 06:A6DC: 0A        ASL
C - - - - - 0x01A6ED 06:A6DD: 85 69     STA ram_0069_t22
C - - - - - 0x01A6EF 06:A6DF: AD E4 05  LDA ram_05E4_counter
C - - - - - 0x01A6F2 06:A6E2: 29 01     AND #$01
C - - - - - 0x01A6F4 06:A6E4: 18        CLC
C - - - - - 0x01A6F5 06:A6E5: 65 69     ADC ram_0069_t22
C - - - - - 0x01A6F7 06:A6E7: AA        TAX
C - - - - - 0x01A6F8 06:A6E8: BD F9 A6  LDA tbl_A6F9,X
C - - - - - 0x01A6FB 06:A6EB: 99 D6 05  STA ram_05D6_plr,Y
C - - - - - 0x01A6FE 06:A6EE: EE E4 05  INC ram_05E4_counter
; bzk optimize, JMP
C - - - - - 0x01A701 06:A6F1: 20 03 A7  JSR sub_A703
C - - - - - 0x01A704 06:A6F4: 60        RTS



tbl_A6F5_clear_flag:
- D 1 - - - 0x01A705 06:A6F5: 7E        .byte (con_05B5_together + con_05B5_captured_captain) ^ $FF   ; 00 captain
- D 1 - - - 0x01A706 06:A6F6: BE        .byte (con_05B5_together + con_05B5_captured_hawk) ^ $FF   ; 01 hawk



tbl_A6F7_set_dead_flag:
- D 1 - - - 0x01A707 06:A6F7: 80        .byte con_05B5_captured_captain   ; 00 captain
- D 1 - - - 0x01A708 06:A6F8: 40        .byte con_05B5_captured_hawk   ; 01 hawk



tbl_A6F9:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x01A709 06:A6F9: 00        .byte $00, $05   ; 00 
- D 1 - - - 0x01A70B 06:A6FB: 06        .byte $06, $05   ; 01 
- D 1 - - - 0x01A70D 06:A6FD: 0C        .byte $0C, $14   ; 02 
- D 1 - - - 0x01A70F 06:A6FF: 06        .byte $06, $14   ; 03 
- - - - - - 0x01A711 06:A701: 06        .byte $06, $14   ; 04 



sub_A703:
C - - - - - 0x01A713 06:A703: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01A716 06:A706: 0D D5 05  ORA ram_05D4_plr_flags + $01
C - - - - - 0x01A719 06:A709: 30 06     BMI bra_A711
; if not con_05D4_80
C - - - - - 0x01A71B 06:A70B: A9 04     LDA #con_03D5_04
C - - - - - 0x01A71D 06:A70D: 8D D5 03  STA ram_03D5_script
bra_A710_RTS:
C - - - - - 0x01A720 06:A710: 60        RTS
bra_A711:
C - - - - - 0x01A721 06:A711: A5 67     LDA ram_0067_t65_plr_flag
C - - - - - 0x01A723 06:A713: 29 40     AND #$40
C - - - - - 0x01A725 06:A715: F0 18     BEQ bra_A72F
C - - - - - 0x01A727 06:A717: A5 A8     LDA ram_plr_index
C - - - - - 0x01A729 06:A719: 49 01     EOR #$01
C - - - - - 0x01A72B 06:A71B: 85 A8     STA ram_plr_index
C - - - - - 0x01A72D 06:A71D: 20 38 A7  JSR sub_A738
C - - - - - 0x01A730 06:A720: A9 00     LDA #$00
C - - - - - 0x01A732 06:A722: 8D 1F 04  STA ram_041F_player_flags
                                       ;LDA #con_03D5_00
C - - - - - 0x01A735 06:A725: 8D D5 03  STA ram_03D5_script
C - - - - - 0x01A738 06:A728: A9 01     LDA #con_03D6_01
C - - - - - 0x01A73A 06:A72A: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01A73D 06:A72D: D0 E1     BNE bra_A710_RTS    ; jmp
bra_A72F:
C - - - - - 0x01A73F 06:A72F: A9 00     LDA #con_03D5_00
C - - - - - 0x01A741 06:A731: 8D D5 03  STA ram_03D5_script
                                       ;LDA #con_03D6_00
C - - - - - 0x01A744 06:A734: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01A747 06:A737: 60        RTS



sub_A738:
C - - - - - 0x01A748 06:A738: A5 3C     LDA ram_city
C - - - - - 0x01A74A 06:A73A: C9 1C     CMP #$1C
C - - - - - 0x01A74C 06:A73C: 90 09     BCC bra_A747_RTS
- - - - - - 0x01A74E 06:A73E: 38        SEC
- - - - - - 0x01A74F 06:A73F: E9 1C     SBC #$1C
- - - - - - 0x01A751 06:A741: AA        TAX
- - - - - - 0x01A752 06:A742: BD 48 A7  LDA tbl_A748,X
- - - - - - 0x01A755 06:A745: 85 3C     STA ram_city
bra_A747_RTS:
C - - - - - 0x01A757 06:A747: 60        RTS



tbl_A748:
- - - - - - 0x01A758 06:A748: 0B        .byte $0B   ; 1C 
- - - - - - 0x01A759 06:A749: 1D        .byte $1D   ; 1D 
- - - - - - 0x01A75A 06:A74A: 0E        .byte $0E   ; 1E 
- - - - - - 0x01A75B 06:A74B: 12        .byte $12   ; 1F 
- - - - - - 0x01A75C 06:A74C: 13        .byte $13   ; 20 
- - - - - - 0x01A75D 06:A74D: 15        .byte $15   ; 21 
- - - - - - 0x01A75E 06:A74E: 16        .byte $16   ; 22 


; bzk garbage
- - - - - - 0x01A75F 06:A74F: FF        .byte $FF   ; 
- - - - - - 0x01A760 06:A750: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A770 06:A760: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A780 06:A770: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A790 06:A780: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A7A0 06:A790: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A7B0 06:A7A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A7C0 06:A7B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A7D0 06:A7C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A7E0 06:A7D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A7F0 06:A7E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A800 06:A7F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 0D_1: 0x%04X [%d]", ($A800 - *), ($A800 - *))



.segment "BANK_0D_2"
; 0x01A810-0x01C00F
.org $8800  ; for listing file



tbl_8800:
- D 0 - - - 0x01A810 06:8800: 16 88     .word _off019_8816_50
- D 0 - - - 0x01A812 06:8802: 4E 88     .word _off019_884E_51
- D 0 - - - 0x01A814 06:8804: 8A 88     .word _off019_888A_52
- D 0 - - - 0x01A816 06:8806: AA 88     .word _off019_88AA_53
- D 0 - - - 0x01A818 06:8808: AA 88     .word _off019_88AA_54
- D 0 - - - 0x01A81A 06:880A: D6 88     .word _off019_88D6_55
- D 0 - - - 0x01A81C 06:880C: 02 89     .word _off019_8902_56
- D 0 - - - 0x01A81E 06:880E: 04 89     .word _off019_8904_57
- D 0 - - - 0x01A820 06:8810: 06 89     .word _off019_8906_58
- D 0 - - - 0x01A822 06:8812: 08 89     .word _off019_8908_59
- D 0 - - - 0x01A824 06:8814: 0A 89     .word _off019_890A_5A



_off019_8816_50:
; con_enemy_id_50
- D 0 - I - 0x01A826 06:8816: BE 8A     .word _off020_8ABE_50_00
- D 0 - I - 0x01A828 06:8818: C7 8A     .word _off020_8AC7_50_01
- D 0 - I - 0x01A82A 06:881A: 68 89     .word _off020_8968_50_02
- D 0 - I - 0x01A82C 06:881C: 71 89     .word _off020_8971_50_03
- - - - - - 0x01A82E 06:881E: D0 8A     .word _off020_8AD0_50_04
- D 0 - I - 0x01A830 06:8820: D9 8A     .word _off020_8AD9_50_05
- D 0 - I - 0x01A832 06:8822: C2 89     .word _off020_89C2_50_06
- D 0 - I - 0x01A834 06:8824: CB 89     .word _off020_89CB_50_07
- D 0 - I - 0x01A836 06:8826: F8 89     .word _off020_89F8_50_08
- D 0 - I - 0x01A838 06:8828: 01 8A     .word _off020_8A01_50_09
- D 0 - I - 0x01A83A 06:882A: 2E 8A     .word _off020_8A2E_50_0A
- D 0 - I - 0x01A83C 06:882C: 37 8A     .word _off020_8A37_50_0B
- D 0 - I - 0x01A83E 06:882E: 64 8A     .word _off020_8A64_50_0C
- D 0 - I - 0x01A840 06:8830: 6D 8A     .word _off020_8A6D_50_0D
- D 0 - I - 0x01A842 06:8832: 76 8A     .word _off020_8A76_50_0E
- D 0 - I - 0x01A844 06:8834: 7F 8A     .word _off020_8A7F_50_0F
- - - - - - 0x01A846 06:8836: 88 8A     .word _off020_8A88_50_10
- - - - - - 0x01A848 06:8838: 91 8A     .word _off020_8A91_50_11
- D 0 - I - 0x01A84A 06:883A: B0 89     .word _off020_89B0_50_12
- D 0 - I - 0x01A84C 06:883C: B9 89     .word _off020_89B9_50_13
- D 0 - I - 0x01A84E 06:883E: F4 8A     .word _off020_8AF4_50_14
- D 0 - I - 0x01A850 06:8840: FD 8A     .word _off020_8AFD_50_15
- D 0 - I - 0x01A852 06:8842: D4 89     .word _off020_89D4_50_16
- D 0 - I - 0x01A854 06:8844: DD 89     .word _off020_89DD_50_17
- D 0 - I - 0x01A856 06:8846: 1C 8A     .word _off020_8A1C_50_18
- D 0 - I - 0x01A858 06:8848: 25 8A     .word _off020_8A25_50_19
- D 0 - I - 0x01A85A 06:884A: 9A 8A     .word _off020_8A9A_50_1A
- D 0 - I - 0x01A85C 06:884C: A3 8A     .word _off020_8AA3_50_1B



_off019_884E_51:
; con_enemy_id_51
- D 0 - I - 0x01A85E 06:884E: 80 8B     .word _off020_8B80_51_00
- D 0 - I - 0x01A860 06:8850: 89 8B     .word _off020_8B89_51_01
- D 0 - I - 0x01A862 06:8852: 92 8B     .word _off020_8B92_51_02
- - - - - - 0x01A864 06:8854: 9B 8B     .word _off020_8B9B_51_03
- D 0 - I - 0x01A866 06:8856: EC 8B     .word _off020_8BEC_51_04
- D 0 - I - 0x01A868 06:8858: F5 8B     .word _off020_8BF5_51_05
- D 0 - I - 0x01A86A 06:885A: 58 8C     .word _off020_8C58_51_06
- D 0 - I - 0x01A86C 06:885C: 61 8C     .word _off020_8C61_51_07
- D 0 - I - 0x01A86E 06:885E: 97 8C     .word _off020_8C97_51_08
- D 0 - I - 0x01A870 06:8860: 8E 8C     .word _off020_8C8E_51_09
- D 0 - I - 0x01A872 06:8862: A4 8B     .word _off020_8BA4_51_0A
- D 0 - I - 0x01A874 06:8864: AD 8B     .word _off020_8BAD_51_0B
- - - - - - 0x01A876 06:8866: 10 8C     .word _off020_8C10_51_0C
- - - - - - 0x01A878 06:8868: 19 8C     .word _off020_8C19_51_0D
- - - - - - 0x01A87A 06:886A: 6A 8C     .word _off020_8C6A_51_0E
- - - - - - 0x01A87C 06:886C: 73 8C     .word _off020_8C73_51_0F
- - - - - - 0x01A87E 06:886E: B2 8C     .word _off020_8CB2_51_10
- - - - - - 0x01A880 06:8870: BB 8C     .word _off020_8CBB_51_11
- D 0 - I - 0x01A882 06:8872: DA 8B     .word _off020_8BDA_51_12
- D 0 - I - 0x01A884 06:8874: E3 8B     .word _off020_8BE3_51_13
- - - - - - 0x01A886 06:8876: B6 8B     .word _off020_8BB6_51_14
- D 0 - I - 0x01A888 06:8878: BF 8B     .word _off020_8BBF_51_15
- D 0 - I - 0x01A88A 06:887A: FE 8B     .word _off020_8BFE_51_16
- D 0 - I - 0x01A88C 06:887C: 07 8C     .word _off020_8C07_51_17
- D 0 - I - 0x01A88E 06:887E: A0 8C     .word _off020_8CA0_51_18
- D 0 - I - 0x01A890 06:8880: A9 8C     .word _off020_8CA9_51_19
- D 0 - I - 0x01A892 06:8882: D6 8C     .word _off020_8CD6_51_1A
- D 0 - I - 0x01A894 06:8884: DF 8C     .word _off020_8CDF_51_1B
- D 0 - I - 0x01A896 06:8886: 8E 8C     .word _off020_8C8E_51_1C
- D 0 - I - 0x01A898 06:8888: 97 8C     .word _off020_8C97_51_1D



_off019_888A_52:
; con_enemy_id_52
- D 0 - I - 0x01A89A 06:888A: 15 8F     .word _off020_8F15_52_00
- D 0 - I - 0x01A89C 06:888C: 1E 8F     .word _off020_8F1E_52_01
- - - - - - 0x01A89E 06:888E: 27 8F     .word _off020_8F27_52_02
- - - - - - 0x01A8A0 06:8890: 27 8F     .word _off020_8F27_52_03
- D 0 - I - 0x01A8A2 06:8892: 27 8F     .word _off020_8F27_52_04
- D 0 - I - 0x01A8A4 06:8894: 30 8F     .word _off020_8F30_52_05
- D 0 - I - 0x01A8A6 06:8896: 93 8F     .word _off020_8F93_52_06
- D 0 - I - 0x01A8A8 06:8898: 9C 8F     .word _off020_8F9C_52_07
- D 0 - I - 0x01A8AA 06:889A: 5D 8F     .word _off020_8F5D_52_08
- - - - - - 0x01A8AC 06:889C: 66 8F     .word _off020_8F66_52_09
- D 0 - I - 0x01A8AE 06:889E: B7 8F     .word _off020_8FB7_52_0A
- D 0 - I - 0x01A8B0 06:88A0: C0 8F     .word _off020_8FC0_52_0B
- D 0 - I - 0x01A8B2 06:88A2: C9 8F     .word _off020_8FC9_52_0C
- - - - - - 0x01A8B4 06:88A4: D2 8F     .word _off020_8FD2_52_0D
- D 0 - I - 0x01A8B6 06:88A6: A5 8F     .word _off020_8FA5_52_0E
- D 0 - I - 0x01A8B8 06:88A8: AE 8F     .word _off020_8FAE_52_0F



_off019_88AA_53:
; con_enemy_id_53
_off019_88AA_54:
; con_enemy_id_54
- D 0 - I - 0x01A8BA 06:88AA: AA 8D     .word _off020_8DAA_53_00
- D 0 - I - 0x01A8BC 06:88AC: B3 8D     .word _off020_8DB3_53_01
- D 0 - I - 0x01A8BE 06:88AE: 3E 8D     .word _off020_8D3E_53_02
- D 0 - I - 0x01A8C0 06:88B0: 47 8D     .word _off020_8D47_53_03
- D 0 - I - 0x01A8C2 06:88B2: 98 8D     .word _off020_8D98_53_04
- D 0 - I - 0x01A8C4 06:88B4: A1 8D     .word _off020_8DA1_53_05
- D 0 - I - 0x01A8C6 06:88B6: 86 8D     .word _off020_8D86_53_06
- D 0 - I - 0x01A8C8 06:88B8: 8F 8D     .word _off020_8D8F_53_07
- D 0 - I - 0x01A8CA 06:88BA: BC 8D     .word _off020_8DBC_53_08
- D 0 - I - 0x01A8CC 06:88BC: C5 8D     .word _off020_8DC5_53_09
- D 0 - I - 0x01A8CE 06:88BE: F2 8D     .word _off020_8DF2_53_0A
- D 0 - I - 0x01A8D0 06:88C0: FB 8D     .word _off020_8DFB_53_0B
- - - - - - 0x01A8D2 06:88C2: 28 8E     .word _off020_8E28_53_0C
- D 0 - I - 0x01A8D4 06:88C4: 31 8E     .word _off020_8E31_53_0D
- D 0 - I - 0x01A8D6 06:88C6: 04 8E     .word _off020_8E04_53_0E
- D 0 - I - 0x01A8D8 06:88C8: 0D 8E     .word _off020_8E0D_53_0F
- D 0 - I - 0x01A8DA 06:88CA: 3A 8E     .word _off020_8E3A_53_10
- D 0 - I - 0x01A8DC 06:88CC: 43 8E     .word _off020_8E43_53_11
- D 0 - I - 0x01A8DE 06:88CE: 4C 8E     .word _off020_8E4C_53_12
- D 0 - I - 0x01A8E0 06:88D0: 55 8E     .word _off020_8E55_53_13
- D 0 - I - 0x01A8E2 06:88D2: CE 8D     .word _off020_8DCE_53_14
- D 0 - I - 0x01A8E4 06:88D4: D7 8D     .word _off020_8DD7_53_15



_off019_88D6_55:
; con_enemy_id_55
- D 0 - I - 0x01A8E6 06:88D6: 09 91     .word _off020_9109_55_00
- D 0 - I - 0x01A8E8 06:88D8: 12 91     .word _off020_9112_55_01
- D 0 - I - 0x01A8EA 06:88DA: 9D 90     .word _off020_909D_55_02
- D 0 - I - 0x01A8EC 06:88DC: A6 90     .word _off020_90A6_55_03
- D 0 - I - 0x01A8EE 06:88DE: E5 90     .word _off020_90E5_55_04
- D 0 - I - 0x01A8F0 06:88E0: EE 90     .word _off020_90EE_55_05
- - - - - - 0x01A8F2 06:88E2: CF 91     .word _off020_91CF_55_06
- - - - - - 0x01A8F4 06:88E4: D8 91     .word _off020_91D8_55_07
- D 0 - I - 0x01A8F6 06:88E6: 75 91     .word _off020_9175_55_08
- D 0 - I - 0x01A8F8 06:88E8: 7E 91     .word _off020_917E_55_09
- D 0 - I - 0x01A8FA 06:88EA: 63 91     .word _off020_9163_55_0A
- D 0 - I - 0x01A8FC 06:88EC: 6C 91     .word _off020_916C_55_0B
- D 0 - I - 0x01A8FE 06:88EE: 2D 91     .word _off020_912D_55_0C
- D 0 - I - 0x01A900 06:88F0: 36 91     .word _off020_9136_55_0D
- D 0 - I - 0x01A902 06:88F2: F7 90     .word _off020_90F7_55_0E
- D 0 - I - 0x01A904 06:88F4: 00 91     .word _off020_9100_55_0F
- D 0 - I - 0x01A906 06:88F6: 87 91     .word _off020_9187_55_10
- - - - - - 0x01A908 06:88F8: 90 91     .word _off020_9190_55_11
- D 0 - I - 0x01A90A 06:88FA: B4 91     .word _off020_91B4_55_12
- - - - - - 0x01A90C 06:88FC: BD 91     .word _off020_91BD_55_13
- D 0 - I - 0x01A90E 06:88FE: C6 91     .word _off020_91C6_55_14
; bzk garbage?
- - - - - - 0x01A910 06:8900: 00 00     .word $0000 ;         15



_off019_8902_56:
; con_enemy_id_56
- D 0 - I - 0x01A912 06:8902: A6 8E     .word _off020_8EA6_56_00



_off019_8904_57:
; con_enemy_id_57
- D 0 - I - 0x01A914 06:8904: D3 8E     .word _off020_8ED3_57_00



_off019_8906_58:
; con_enemy_id_58
- D 0 - I - 0x01A916 06:8906: F3 91     .word _off020_91F3_58_00



_off019_8908_59:
; con_enemy_id_59
- D 0 - I - 0x01A918 06:8908: B8 8E     .word _off020_8EB8_59_00



_off019_890A_5A:
; con_enemy_id_5A
- D 0 - I - 0x01A91A 06:890A: AF 8E     .word _off020_8EAF_5A_00



tbl_890C:
- D 0 - I - 0x01A91C 06:890C: 38 8B     .word _off020_8B38_xx_00
- D 0 - I - 0x01A91E 06:890E: 40 8B     .word _off020_8B40_xx_01
- D 0 - I - 0x01A920 06:8910: 28 8B     .word _off020_8B28_xx_02
- D 0 - I - 0x01A922 06:8912: 30 8B     .word _off020_8B30_xx_03
- - - - - - 0x01A924 06:8914: 18 8B     .word _off020_8B18_xx_04
- D 0 - I - 0x01A926 06:8916: 20 8B     .word _off020_8B20_xx_05
- D 0 - I - 0x01A928 06:8918: 58 8B     .word _off020_8B58_xx_06
- D 0 - I - 0x01A92A 06:891A: 60 8B     .word _off020_8B60_xx_07
- - - - - - 0x01A92C 06:891C: 68 8B     .word _off020_8B68_xx_08
- - - - - - 0x01A92E 06:891E: 70 8B     .word _off020_8B70_xx_09
- D 0 - I - 0x01A930 06:8920: 78 8B     .word _off020_8B78_xx_0A
- - - - - - 0x01A932 06:8922: 00 00     .word $0000 ;         0B
- D 0 - I - 0x01A934 06:8924: 48 8B     .word _off020_8B48_xx_0C
- - - - - - 0x01A936 06:8926: 50 8B     .word _off020_8B50_xx_0D
- D 0 - I - 0x01A938 06:8928: 1E 8D     .word _off020_8D1E_xx_0E
- D 0 - I - 0x01A93A 06:892A: 26 8D     .word _off020_8D26_xx_0F
- D 0 - I - 0x01A93C 06:892C: 2E 8D     .word _off020_8D2E_xx_10
- D 0 - I - 0x01A93E 06:892E: 36 8D     .word _off020_8D36_xx_11
- - - - - - 0x01A940 06:8930: 75 90     .word _off020_9075_xx_12
- - - - - - 0x01A942 06:8932: 7D 90     .word _off020_907D_xx_13
- - - - - - 0x01A944 06:8934: 8D 90     .word _off020_908D_xx_14
- - - - - - 0x01A946 06:8936: 95 90     .word _off020_9095_xx_15
- D 0 - I - 0x01A948 06:8938: 85 90     .word _off020_9085_xx_16
- - - - - - 0x01A94A 06:893A: 5D 90     .word _off020_905D_xx_17
- D 0 - I - 0x01A94C 06:893C: ED 8F     .word _off020_8FED_xx_18
- - - - - - 0x01A94E 06:893E: F5 8F     .word _off020_8FF5_xx_19
- D 0 - I - 0x01A950 06:8940: FD 8F     .word _off020_8FFD_xx_1A
- - - - - - 0x01A952 06:8942: 05 90     .word _off020_9005_xx_1B
- - - - - - 0x01A954 06:8944: 0D 90     .word _off020_900D_xx_1C
- D 0 - I - 0x01A956 06:8946: 15 90     .word _off020_9015_xx_1D
- - - - - - 0x01A958 06:8948: 1D 90     .word _off020_901D_xx_1E
- - - - - - 0x01A95A 06:894A: 25 90     .word _off020_9025_xx_1F
- - - - - - 0x01A95C 06:894C: 2D 90     .word _off020_902D_xx_20
- - - - - - 0x01A95E 06:894E: 2D 90     .word _off020_902D_xx_21
- D 0 - I - 0x01A960 06:8950: 2D 90     .word _off020_902D_xx_22
- D 0 - I - 0x01A962 06:8952: 35 90     .word _off020_9035_xx_23
- D 0 - I - 0x01A964 06:8954: 7E 8E     .word _off020_8E7E_xx_24
- D 0 - I - 0x01A966 06:8956: 86 8E     .word _off020_8E86_xx_25
- D 0 - I - 0x01A968 06:8958: 8E 8E     .word _off020_8E8E_xx_26
- D 0 - I - 0x01A96A 06:895A: E5 8E     .word _off020_8EE5_xx_27
- D 0 - I - 0x01A96C 06:895C: ED 8E     .word _off020_8EED_xx_28
- D 0 - I - 0x01A96E 06:895E: 05 8F     .word _off020_8F05_xx_29
- D 0 - I - 0x01A970 06:8960: 5E 8E     .word _off020_8E5E_xx_2A
- D 0 - I - 0x01A972 06:8962: 66 8E     .word _off020_8E66_xx_2B
- D 0 - I - 0x01A974 06:8964: 6E 8E     .word _off020_8E6E_xx_2C
- D 0 - I - 0x01A976 06:8966: 76 8E     .word _off020_8E76_xx_2D



_off020_8968_50_02:
loc_8968_00_02_loop:
- D 0 - I - 0x01A978 06:8968: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A979 06:8969: 68        .byte con_chr_bank_spr + $68   ; 01 
- D 0 - I - 0x01A97A 06:896A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A97B 06:896B: DE 94     .word _off053_spr_data_0x00D4EE_50_02_00
- D 0 - I - 0x01A97D 06:896D: 7A 89     .word loc_897A_00_02_next
- D 0 - I - 0x01A97F 06:896F: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A980 06:8970: 04        .byte $04   ; 08 



_off020_8971_50_03:
loc_8971_00_03_loop:
- D 0 - I - 0x01A981 06:8971: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A982 06:8972: E8        .byte con_chr_bank_spr + $E8   ; 01 
- D 0 - I - 0x01A983 06:8973: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A984 06:8974: DE 94     .word _off053_spr_data_0x00D4EE_50_03_00
- D 0 - I - 0x01A986 06:8976: 83 89     .word loc_8983_00_03_next
- D 0 - I - 0x01A988 06:8978: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A989 06:8979: 15        .byte $15   ; 08 



loc_897A_00_02_next:
- D 0 - I - 0x01A98A 06:897A: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A98B 06:897B: 68        .byte con_chr_bank_spr + $68   ; 01 
- D 0 - I - 0x01A98C 06:897C: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A98D 06:897D: FE 94     .word _off053_spr_data_0x00D50E_50_02_01
- D 0 - I - 0x01A98F 06:897F: 8C 89     .word loc_898C_00_02_next
- D 0 - I - 0x01A991 06:8981: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01A992 06:8982: 84        .byte $84   ; 08 



loc_8983_00_03_next:
- D 0 - I - 0x01A993 06:8983: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A994 06:8984: E8        .byte con_chr_bank_spr + $E8   ; 01 
- D 0 - I - 0x01A995 06:8985: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A996 06:8986: FE 94     .word _off053_spr_data_0x00D50E_50_03_01
- D 0 - I - 0x01A998 06:8988: 95 89     .word loc_8995_00_03_next
- D 0 - I - 0x01A99A 06:898A: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01A99B 06:898B: 95        .byte $95   ; 08 



loc_898C_00_02_next:
- D 0 - I - 0x01A99C 06:898C: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A99D 06:898D: 68        .byte con_chr_bank_spr + $68   ; 01 
- D 0 - I - 0x01A99E 06:898E: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A99F 06:898F: 12 95     .word _off053_spr_data_0x00D522_50_02_02
- D 0 - I - 0x01A9A1 06:8991: 9E 89     .word loc_899E_00_02_next
- D 0 - I - 0x01A9A3 06:8993: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01A9A4 06:8994: 04        .byte $04   ; 08 



loc_8995_00_03_next:
- D 0 - I - 0x01A9A5 06:8995: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9A6 06:8996: E8        .byte con_chr_bank_spr + $E8   ; 01 
- D 0 - I - 0x01A9A7 06:8997: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9A8 06:8998: 12 95     .word _off053_spr_data_0x00D522_50_03_02
- D 0 - I - 0x01A9AA 06:899A: A7 89     .word loc_89A7_00_03_next
- D 0 - I - 0x01A9AC 06:899C: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01A9AD 06:899D: 15        .byte $15   ; 08 



loc_899E_00_02_next:
- D 0 - I - 0x01A9AE 06:899E: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9AF 06:899F: 68        .byte con_chr_bank_spr + $68   ; 01 
- D 0 - I - 0x01A9B0 06:89A0: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9B1 06:89A1: FE 94     .word _off053_spr_data_0x00D50E_50_02_03
- D 0 - I - 0x01A9B3 06:89A3: 68 89     .word loc_8968_00_02_loop
- D 0 - I - 0x01A9B5 06:89A5: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01A9B6 06:89A6: 84        .byte $84   ; 08 



loc_89A7_00_03_next:
- D 0 - I - 0x01A9B7 06:89A7: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9B8 06:89A8: E8        .byte con_chr_bank_spr + $E8   ; 01 
- D 0 - I - 0x01A9B9 06:89A9: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9BA 06:89AA: FE 94     .word _off053_spr_data_0x00D50E_50_03_03
- D 0 - I - 0x01A9BC 06:89AC: 71 89     .word loc_8971_00_03_loop
- D 0 - I - 0x01A9BE 06:89AE: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01A9BF 06:89AF: 95        .byte $95   ; 08 



_off020_89B0_50_12:
- D 0 - I - 0x01A9C0 06:89B0: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9C1 06:89B1: 68        .byte con_chr_bank_spr + $68   ; 01 
- D 0 - I - 0x01A9C2 06:89B2: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01A9C3 06:89B3: 2F 95     .word _off053_spr_data_0x00D53F_50_12_00
- - - - - - 0x01A9C5 06:89B5: BE 8A     .word loc_8ABE_00_12_next
- D 0 - I - 0x01A9C7 06:89B7: 00        .byte $00   ; 07 
- D 0 - I - 0x01A9C8 06:89B8: 0A        .byte $0A   ; 08 



_off020_89B9_50_13:
- D 0 - I - 0x01A9C9 06:89B9: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9CA 06:89BA: E8        .byte con_chr_bank_spr + $E8   ; 01 
- D 0 - I - 0x01A9CB 06:89BB: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01A9CC 06:89BC: 2F 95     .word _off053_spr_data_0x00D53F_50_13_00
- - - - - - 0x01A9CE 06:89BE: C7 8A     .word loc_8AC7_00_13_next
- D 0 - I - 0x01A9D0 06:89C0: 00        .byte $00   ; 07 
- D 0 - I - 0x01A9D1 06:89C1: 1B        .byte $1B   ; 08 



_off020_89C2_50_06:
loc_89C2_00_16_next:
- D 0 - I - 0x01A9D2 06:89C2: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9D3 06:89C3: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01A9D4 06:89C4: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9D5 06:89C5: 49 95     .word _off053_spr_data_0x00D559_50_06_00
- D 0 - I - 0x01A9D7 06:89C7: D4 89     .word loc_89D4_00_06_next
- D 0 - I - 0x01A9D9 06:89C9: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A9DA 06:89CA: 00        .byte $00   ; 08 



_off020_89CB_50_07:
loc_89CB_00_17_next:
- D 0 - I - 0x01A9DB 06:89CB: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9DC 06:89CC: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01A9DD 06:89CD: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9DE 06:89CE: 49 95     .word _off053_spr_data_0x00D559_50_07_00
- D 0 - I - 0x01A9E0 06:89D0: DD 89     .word loc_89DD_00_07_next
- D 0 - I - 0x01A9E2 06:89D2: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A9E3 06:89D3: 10        .byte $10   ; 08 



_off020_89D4_50_16:
loc_89D4_00_06_next:
- D 0 - I - 0x01A9E4 06:89D4: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9E5 06:89D5: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01A9E6 06:89D6: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9E7 06:89D7: 63 95     .word _off053_spr_data_0x00D573_50_16_00
- D 0 - I - 0x01A9E9 06:89D9: E6 89     .word loc_89E6_00_16_next
- D 0 - I - 0x01A9EB 06:89DB: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A9EC 06:89DC: 80        .byte $80   ; 08 



_off020_89DD_50_17:
loc_89DD_00_07_next:
- D 0 - I - 0x01A9ED 06:89DD: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9EE 06:89DE: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01A9EF 06:89DF: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9F0 06:89E0: 63 95     .word _off053_spr_data_0x00D573_50_17_00
- D 0 - I - 0x01A9F2 06:89E2: EF 89     .word loc_89EF_00_17_next
- D 0 - I - 0x01A9F4 06:89E4: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A9F5 06:89E5: 90        .byte $90   ; 08 



loc_89E6_00_16_next:
- D 0 - I - 0x01A9F6 06:89E6: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01A9F7 06:89E7: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01A9F8 06:89E8: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01A9F9 06:89E9: 83 95     .word _off053_spr_data_0x00D593_50_16_01
- D 0 - I - 0x01A9FB 06:89EB: C2 89     .word loc_89C2_00_16_next
- D 0 - I - 0x01A9FD 06:89ED: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01A9FE 06:89EE: C0        .byte $C0   ; 08 



loc_89EF_00_17_next:
- D 0 - I - 0x01A9FF 06:89EF: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA00 06:89F0: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01AA01 06:89F1: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA02 06:89F2: 83 95     .word _off053_spr_data_0x00D593_50_17_01
- D 0 - I - 0x01AA04 06:89F4: CB 89     .word loc_89CB_00_17_next
- D 0 - I - 0x01AA06 06:89F6: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA07 06:89F7: D0        .byte $D0   ; 08 



_off020_89F8_50_08:
loc_89F8_00_18_next:
- D 0 - I - 0x01AA08 06:89F8: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA09 06:89F9: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01AA0A 06:89FA: 0C        .byte $0C   ; 02 next animation delay
- D 0 - I - 0x01AA0B 06:89FB: 49 95     .word _off053_spr_data_0x00D559_50_08_00
- D 0 - I - 0x01AA0D 06:89FD: 0A 8A     .word loc_8A0A_00_08_next
- D 0 - I - 0x01AA0F 06:89FF: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA10 06:8A00: 00        .byte $00   ; 08 



_off020_8A01_50_09:
loc_8A01_00_19_next:
- D 0 - I - 0x01AA11 06:8A01: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA12 06:8A02: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01AA13 06:8A03: 0C        .byte $0C   ; 02 next animation delay
- D 0 - I - 0x01AA14 06:8A04: 49 95     .word _off053_spr_data_0x00D559_50_09_00
- D 0 - I - 0x01AA16 06:8A06: 13 8A     .word loc_8A13_00_09_next
- D 0 - I - 0x01AA18 06:8A08: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA19 06:8A09: 10        .byte $10   ; 08 



loc_8A0A_00_08_next:
- D 0 - I - 0x01AA1A 06:8A0A: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA1B 06:8A0B: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01AA1C 06:8A0C: 0C        .byte $0C   ; 02 next animation delay
- D 0 - I - 0x01AA1D 06:8A0D: A0 95     .word _off053_spr_data_0x00D5B0_50_08_01
- D 0 - I - 0x01AA1F 06:8A0F: 1C 8A     .word loc_8A1C_00_08_next
- D 0 - I - 0x01AA21 06:8A11: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA22 06:8A12: 80        .byte $80   ; 08 



loc_8A13_00_09_next:
- D 0 - I - 0x01AA23 06:8A13: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA24 06:8A14: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01AA25 06:8A15: 0C        .byte $0C   ; 02 next animation delay
- D 0 - I - 0x01AA26 06:8A16: A0 95     .word _off053_spr_data_0x00D5B0_50_09_01
- - - - - - 0x01AA28 06:8A18: 25 8A     .word loc_8A25_00_09_next
- D 0 - I - 0x01AA2A 06:8A1A: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA2B 06:8A1B: 90        .byte $90   ; 08 



_off020_8A1C_50_18:
loc_8A1C_00_08_next:
loc_8A1C_00_0A_next:
- D 0 - I - 0x01AA2C 06:8A1C: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA2D 06:8A1D: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01AA2E 06:8A1E: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AA2F 06:8A1F: C0 95     .word _off053_spr_data_0x00D5D0_50_18_00
- - - - - - 0x01AA31 06:8A21: F8 89     .word loc_89F8_00_18_next
- D 0 - I - 0x01AA33 06:8A23: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA34 06:8A24: C0        .byte $C0   ; 08 



_off020_8A25_50_19:
loc_8A25_00_09_next:
loc_8A25_00_0B_next:
- D 0 - I - 0x01AA35 06:8A25: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA36 06:8A26: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01AA37 06:8A27: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AA38 06:8A28: C0 95     .word _off053_spr_data_0x00D5D0_50_19_00
- - - - - - 0x01AA3A 06:8A2A: 01 8A     .word loc_8A01_00_19_next
- D 0 - I - 0x01AA3C 06:8A2C: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA3D 06:8A2D: D0        .byte $D0   ; 08 



_off020_8A2E_50_0A:
- D 0 - I - 0x01AA3E 06:8A2E: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA3F 06:8A2F: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01AA40 06:8A30: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA41 06:8A31: 49 95     .word _off053_spr_data_0x00D559_50_0A_00
- D 0 - I - 0x01AA43 06:8A33: 40 8A     .word loc_8A40_00_0A_next
- D 0 - I - 0x01AA45 06:8A35: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA46 06:8A36: 00        .byte $00   ; 08 



_off020_8A37_50_0B:
- D 0 - I - 0x01AA47 06:8A37: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA48 06:8A38: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01AA49 06:8A39: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA4A 06:8A3A: 49 95     .word _off053_spr_data_0x00D559_50_0B_00
- D 0 - I - 0x01AA4C 06:8A3C: 49 8A     .word loc_8A49_00_0B_next
- D 0 - I - 0x01AA4E 06:8A3E: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA4F 06:8A3F: 10        .byte $10   ; 08 



loc_8A40_00_0A_next:
- D 0 - I - 0x01AA50 06:8A40: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA51 06:8A41: 69        .byte con_chr_bank_spr + $69   ; 01 
- D 0 - I - 0x01AA52 06:8A42: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA53 06:8A43: DD 95     .word _off053_spr_data_0x00D5ED_50_0A_01
- D 0 - I - 0x01AA55 06:8A45: 1C 8A     .word loc_8A1C_00_0A_next
- D 0 - I - 0x01AA57 06:8A47: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA58 06:8A48: 80        .byte $80   ; 08 



loc_8A49_00_0B_next:
- D 0 - I - 0x01AA59 06:8A49: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA5A 06:8A4A: E9        .byte con_chr_bank_spr + $E9   ; 01 
- D 0 - I - 0x01AA5B 06:8A4B: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA5C 06:8A4C: DD 95     .word _off053_spr_data_0x00D5ED_50_0B_01
- D 0 - I - 0x01AA5E 06:8A4E: 25 8A     .word loc_8A25_00_0B_next
- D 0 - I - 0x01AA60 06:8A50: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AA61 06:8A51: 90        .byte $90   ; 08 


; bzk garbage
- - - - - - 0x01AA62 06:8A52: EA        .byte con_chr_bank_spr + $EA   ; 00 
- - - - - - 0x01AA63 06:8A53: 69        .byte con_chr_bank_spr + $69   ; 01 
- - - - - - 0x01AA64 06:8A54: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AA65 06:8A55: C0 95     .word $95C0 ; 
- - - - - - 0x01AA67 06:8A57: 2E 8A     .word $8A2E ; 
- - - - - - 0x01AA69 06:8A59: 1C        .byte $1C   ; 07 
- - - - - - 0x01AA6A 06:8A5A: C0        .byte $C0   ; 08 


; bzk garbage
- - - - - - 0x01AA6B 06:8A5B: EA        .byte con_chr_bank_spr + $EA   ; 00 
- - - - - - 0x01AA6C 06:8A5C: E9        .byte con_chr_bank_spr + $E9   ; 01 
- - - - - - 0x01AA6D 06:8A5D: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AA6E 06:8A5E: C0 95     .word $95C0 ; 
- - - - - - 0x01AA70 06:8A60: 37 8A     .word $8A37 ; 
- - - - - - 0x01AA72 06:8A62: 1C        .byte $1C   ; 07 
- - - - - - 0x01AA73 06:8A63: D0        .byte $D0   ; 08 



_off020_8A64_50_0C:
- D 0 - I - 0x01AA74 06:8A64: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA75 06:8A65: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AA76 06:8A66: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA77 06:8A67: FF 95     .word _off053_spr_data_0x00D60F_50_0C_00
- D 0 - I - 0x01AA79 06:8A69: 88 8A     .word loc_8A88_00_0C_next
- D 0 - I - 0x01AA7B 06:8A6B: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AA7C 06:8A6C: 02        .byte $02   ; 08 



_off020_8A6D_50_0D:
- D 0 - I - 0x01AA7D 06:8A6D: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA7E 06:8A6E: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AA7F 06:8A6F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA80 06:8A70: FF 95     .word _off053_spr_data_0x00D60F_50_0D_00
- D 0 - I - 0x01AA82 06:8A72: 91 8A     .word loc_8A91_00_0D_next
- D 0 - I - 0x01AA84 06:8A74: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AA85 06:8A75: 13        .byte $13   ; 08 



_off020_8A76_50_0E:
- D 0 - I - 0x01AA86 06:8A76: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA87 06:8A77: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AA88 06:8A78: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA89 06:8A79: 22 96     .word _off053_spr_data_0x00D632_50_0E_00
- - - - - - 0x01AA8B 06:8A7B: 88 8A     .word loc_8A88_00_0E_next
- D 0 - I - 0x01AA8D 06:8A7D: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AA8E 06:8A7E: 01        .byte $01   ; 08 



_off020_8A7F_50_0F:
- D 0 - I - 0x01AA8F 06:8A7F: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA90 06:8A80: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AA91 06:8A81: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA92 06:8A82: 22 96     .word _off053_spr_data_0x00D632_50_0F_00
- - - - - - 0x01AA94 06:8A84: 91 8A     .word loc_8A91_00_0F_next
- D 0 - I - 0x01AA96 06:8A86: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AA97 06:8A87: 11        .byte $11   ; 08 



_off020_8A88_50_10:
loc_8A88_00_0C_next:
loc_8A88_00_0E_next:
loc_8A88_00_1A_next:
- D 0 - I - 0x01AA98 06:8A88: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AA99 06:8A89: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AA9A 06:8A8A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AA9B 06:8A8B: 45 96     .word _off053_spr_data_0x00D655_50_10_00
- D 0 - I - 0x01AA9D 06:8A8D: 9A 8A     .word loc_8A9A_00_10_next
- D 0 - I - 0x01AA9F 06:8A8F: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AAA0 06:8A90: 06        .byte $06   ; 08 



_off020_8A91_50_11:
loc_8A91_00_0D_next:
loc_8A91_00_0F_next:
loc_8A91_00_1B_next:
- D 0 - I - 0x01AAA1 06:8A91: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAA2 06:8A92: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AAA3 06:8A93: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AAA4 06:8A94: 45 96     .word _off053_spr_data_0x00D655_50_11_00
- D 0 - I - 0x01AAA6 06:8A96: A3 8A     .word loc_8AA3_00_11_next
- D 0 - I - 0x01AAA8 06:8A98: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AAA9 06:8A99: 17        .byte $17   ; 08 



_off020_8A9A_50_1A:
loc_8A9A_00_10_next:
- D 0 - I - 0x01AAAA 06:8A9A: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAAB 06:8A9B: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AAAC 06:8A9C: 04        .byte $04   ; 02 next animation delay
- D 0 - I - 0x01AAAD 06:8A9D: 6B 96     .word _off053_spr_data_0x00D67B_50_1A_00
- D 0 - I - 0x01AAAF 06:8A9F: AC 8A     .word loc_8AAC_00_1A_next
- D 0 - I - 0x01AAB1 06:8AA1: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AAB2 06:8AA2: 86        .byte $86   ; 08 



_off020_8AA3_50_1B:
loc_8AA3_00_11_next:
- D 0 - I - 0x01AAB3 06:8AA3: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAB4 06:8AA4: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AAB5 06:8AA5: 04        .byte $04   ; 02 next animation delay
- D 0 - I - 0x01AAB6 06:8AA6: 6B 96     .word _off053_spr_data_0x00D67B_50_1B_00
- D 0 - I - 0x01AAB8 06:8AA8: B5 8A     .word loc_8AB5_00_1B_next
- D 0 - I - 0x01AABA 06:8AAA: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AABB 06:8AAB: 97        .byte $97   ; 08 



loc_8AAC_00_1A_next:
- D 0 - I - 0x01AABC 06:8AAC: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AABD 06:8AAD: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AABE 06:8AAE: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AABF 06:8AAF: 45 96     .word _off053_spr_data_0x00D655_50_1A_01
- - - - - - 0x01AAC1 06:8AB1: 88 8A     .word loc_8A88_00_1A_next
- D 0 - I - 0x01AAC3 06:8AB3: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AAC4 06:8AB4: C6        .byte $C6   ; 08 



loc_8AB5_00_1B_next:
- D 0 - I - 0x01AAC5 06:8AB5: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAC6 06:8AB6: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AAC7 06:8AB7: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AAC8 06:8AB8: 45 96     .word _off053_spr_data_0x00D655_50_1B_01
- - - - - - 0x01AACA 06:8ABA: 91 8A     .word loc_8A91_00_1B_next
- D 0 - I - 0x01AACC 06:8ABC: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AACD 06:8ABD: D7        .byte $D7   ; 08 



_off020_8ABE_50_00:
loc_8ABE_00_00_loop:
loc_8ABE_00_12_next:
- D 0 - I - 0x01AACE 06:8ABE: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AACF 06:8ABF: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AAD0 06:8AC0: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AAD1 06:8AC1: 93 96     .word _off053_spr_data_0x00D6A3_50_00_00
- - - - - - 0x01AAD3 06:8AC3: BE 8A     .word loc_8ABE_00_00_loop
- D 0 - I - 0x01AAD5 06:8AC5: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AAD6 06:8AC6: 00        .byte $00   ; 08 



_off020_8AC7_50_01:
loc_8AC7_00_13_next:
loc_8AC7_00_01_loop:
- D 0 - I - 0x01AAD7 06:8AC7: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAD8 06:8AC8: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AAD9 06:8AC9: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AADA 06:8ACA: 93 96     .word _off053_spr_data_0x00D6A3_50_01_00
- - - - - - 0x01AADC 06:8ACC: C7 8A     .word loc_8AC7_00_01_loop
- D 0 - I - 0x01AADE 06:8ACE: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AADF 06:8ACF: 10        .byte $10   ; 08 



_off020_8AD0_50_04:
loc_8AD0_00_04_next:
- - - - - - 0x01AAE0 06:8AD0: EA        .byte con_chr_bank_spr + $EA   ; 00 
- - - - - - 0x01AAE1 06:8AD1: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- - - - - - 0x01AAE2 06:8AD2: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AAE3 06:8AD3: B0 96     .word _off053_spr_data_0x00D6C0_50_04_00
- - - - - - 0x01AAE5 06:8AD5: E2 8A     .word loc_8AE2_00_04_next
- - - - - - 0x01AAE7 06:8AD7: 1E        .byte $1E   ; 07 
- - - - - - 0x01AAE8 06:8AD8: 00        .byte $00   ; 08 



_off020_8AD9_50_05:
loc_8AD9_00_05_loop:
- D 0 - I - 0x01AAE9 06:8AD9: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAEA 06:8ADA: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AAEB 06:8ADB: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AAEC 06:8ADC: B0 96     .word _off053_spr_data_0x00D6C0_50_05_00
- D 0 - I - 0x01AAEE 06:8ADE: EB 8A     .word loc_8AEB_00_05_next
- D 0 - I - 0x01AAF0 06:8AE0: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AAF1 06:8AE1: 10        .byte $10   ; 08 



loc_8AE2_00_04_next:
- - - - - - 0x01AAF2 06:8AE2: EA        .byte con_chr_bank_spr + $EA   ; 00 
- - - - - - 0x01AAF3 06:8AE3: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- - - - - - 0x01AAF4 06:8AE4: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AAF5 06:8AE5: D3 96     .word _off053_spr_data_0x00D6E3_50_04_01
- - - - - - 0x01AAF7 06:8AE7: D0 8A     .word loc_8AD0_00_04_next
- - - - - - 0x01AAF9 06:8AE9: 1E        .byte $1E   ; 07 
- - - - - - 0x01AAFA 06:8AEA: 00        .byte $00   ; 08 



loc_8AEB_00_05_next:
- D 0 - I - 0x01AAFB 06:8AEB: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AAFC 06:8AEC: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AAFD 06:8AED: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AAFE 06:8AEE: D3 96     .word _off053_spr_data_0x00D6E3_50_05_01
- D 0 - I - 0x01AB00 06:8AF0: D9 8A     .word loc_8AD9_00_05_loop
- D 0 - I - 0x01AB02 06:8AF2: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AB03 06:8AF3: 10        .byte $10   ; 08 



_off020_8AF4_50_14:
loc_8AF4_00_14_loop:
- D 0 - I - 0x01AB04 06:8AF4: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AB05 06:8AF5: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AB06 06:8AF6: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB07 06:8AF7: F6 96     .word _off053_spr_data_0x00D706_50_14_00
- D 0 - I - 0x01AB09 06:8AF9: 06 8B     .word loc_8B06_00_14_next
- D 0 - I - 0x01AB0B 06:8AFB: 00        .byte $00   ; 07 
- D 0 - I - 0x01AB0C 06:8AFC: 00        .byte $00   ; 08 



_off020_8AFD_50_15:
loc_8AFD_00_15_loop:
- D 0 - I - 0x01AB0D 06:8AFD: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AB0E 06:8AFE: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AB0F 06:8AFF: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB10 06:8B00: F6 96     .word _off053_spr_data_0x00D706_50_15_00
- D 0 - I - 0x01AB12 06:8B02: 0F 8B     .word loc_8B0F_00_15_next
- D 0 - I - 0x01AB14 06:8B04: 00        .byte $00   ; 07 
- D 0 - I - 0x01AB15 06:8B05: 10        .byte $10   ; 08 



loc_8B06_00_14_next:
- D 0 - I - 0x01AB16 06:8B06: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AB17 06:8B07: 6B        .byte con_chr_bank_spr + $6B   ; 01 
- D 0 - I - 0x01AB18 06:8B08: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AB19 06:8B09: 10 97     .word _off053_spr_data_0x00D720_50_14_01
- D 0 - I - 0x01AB1B 06:8B0B: F4 8A     .word loc_8AF4_00_14_loop
- D 0 - I - 0x01AB1D 06:8B0D: 00        .byte $00   ; 07 
- D 0 - I - 0x01AB1E 06:8B0E: 80        .byte $80   ; 08 



loc_8B0F_00_15_next:
- D 0 - I - 0x01AB1F 06:8B0F: EA        .byte con_chr_bank_spr + $EA   ; 00 
- D 0 - I - 0x01AB20 06:8B10: EB        .byte con_chr_bank_spr + $EB   ; 01 
- D 0 - I - 0x01AB21 06:8B11: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AB22 06:8B12: 10 97     .word _off053_spr_data_0x00D720_50_15_01
- D 0 - I - 0x01AB24 06:8B14: FD 8A     .word loc_8AFD_00_15_loop
- D 0 - I - 0x01AB26 06:8B16: 00        .byte $00   ; 07 
- D 0 - I - 0x01AB27 06:8B17: 90        .byte $90   ; 08 



_off020_8B18_xx_04:
loc_8B18_xx_04_loop:
- - - - - - 0x01AB28 06:8B18: EA        .byte $EA   ; 00 
- - - - - - 0x01AB29 06:8B19: 69        .byte $69   ; 01 
- - - - - - 0x01AB2A 06:8B1A: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AB2B 06:8B1B: 27 97     .word _off053_spr_data_0x00D737_xx_04_00
- - - - - - 0x01AB2D 06:8B1D: 18 8B     .word loc_8B18_xx_04_loop
- - - - - - 0x01AB2F 06:8B1F: 03        .byte $03   ; 07 


_off020_8B20_xx_05:
loc_8B20_xx_05_loop:
- - - - - - 0x01AB30 06:8B20: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB31 06:8B21: E9        .byte $E9   ; 01 
- D 0 - I - 0x01AB32 06:8B22: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB33 06:8B23: 27 97     .word _off053_spr_data_0x00D737_xx_05_00
- - - - - - 0x01AB35 06:8B25: 20 8B     .word loc_8B20_xx_05_loop
- D 0 - I - 0x01AB37 06:8B27: 03        .byte $03   ; 07 



_off020_8B28_xx_02:
loc_8B28_xx_02_loop:
- - - - - - 0x01AB38 06:8B28: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB39 06:8B29: 69        .byte $69   ; 01 
- D 0 - I - 0x01AB3A 06:8B2A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB3B 06:8B2B: 2C 97     .word _off053_spr_data_0x00D73C_xx_02_00
- - - - - - 0x01AB3D 06:8B2D: 28 8B     .word loc_8B28_xx_02_loop
- D 0 - I - 0x01AB3F 06:8B2F: 03        .byte $03   ; 07 



_off020_8B30_xx_03:
loc_8B30_xx_03_loop:
- - - - - - 0x01AB40 06:8B30: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB41 06:8B31: E9        .byte $E9   ; 01 
- D 0 - I - 0x01AB42 06:8B32: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB43 06:8B33: 2C 97     .word _off053_spr_data_0x00D73C_xx_03_00
- - - - - - 0x01AB45 06:8B35: 30 8B     .word loc_8B30_xx_03_loop
- D 0 - I - 0x01AB47 06:8B37: 03        .byte $03   ; 07 



_off020_8B38_xx_00:
loc_8B38_xx_00_loop:
- - - - - - 0x01AB48 06:8B38: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB49 06:8B39: 69        .byte $69   ; 01 
- D 0 - I - 0x01AB4A 06:8B3A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB4B 06:8B3B: 31 97     .word _off053_spr_data_0x00D741_xx_00_00
- - - - - - 0x01AB4D 06:8B3D: 38 8B     .word loc_8B38_xx_00_loop
- D 0 - I - 0x01AB4F 06:8B3F: 03        .byte $03   ; 07 



_off020_8B40_xx_01:
loc_8B40_xx_01_loop:
- - - - - - 0x01AB50 06:8B40: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB51 06:8B41: E9        .byte $E9   ; 01 
- D 0 - I - 0x01AB52 06:8B42: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB53 06:8B43: 31 97     .word _off053_spr_data_0x00D741_xx_01_00
- - - - - - 0x01AB55 06:8B45: 40 8B     .word loc_8B40_xx_01_loop
- D 0 - I - 0x01AB57 06:8B47: 03        .byte $03   ; 07 



_off020_8B48_xx_0C:
loc_8B48_xx_0C_loop:
- - - - - - 0x01AB58 06:8B48: 80        .byte $80   ; 00 
- D 0 - I - 0x01AB59 06:8B49: 00        .byte $00   ; 01 
- D 0 - I - 0x01AB5A 06:8B4A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB5B 06:8B4B: 36 97     .word _off053_spr_data_0x00D746_xx_0C_00
- - - - - - 0x01AB5D 06:8B4D: 48 8B     .word loc_8B48_xx_0C_loop
- D 0 - I - 0x01AB5F 06:8B4F: 03        .byte $03   ; 07 



_off020_8B50_xx_0D:
loc_8B50_xx_0D_loop:
- - - - - - 0x01AB60 06:8B50: 80        .byte $80   ; 00 
- - - - - - 0x01AB61 06:8B51: 80        .byte $80   ; 01 
- - - - - - 0x01AB62 06:8B52: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AB63 06:8B53: 36 97     .word _off053_spr_data_0x00D746_xx_0D_00
- - - - - - 0x01AB65 06:8B55: 50 8B     .word loc_8B50_xx_0D_loop
- - - - - - 0x01AB67 06:8B57: 03        .byte $03   ; 07 



_off020_8B58_xx_06:
loc_8B58_xx_06_loop:
- - - - - - 0x01AB68 06:8B58: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB69 06:8B59: 69        .byte $69   ; 01 
- D 0 - I - 0x01AB6A 06:8B5A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB6B 06:8B5B: 3B 97     .word _off053_spr_data_0x00D74B_xx_06_00
- - - - - - 0x01AB6D 06:8B5D: 58 8B     .word loc_8B58_xx_06_loop
- D 0 - I - 0x01AB6F 06:8B5F: 03        .byte $03   ; 07 



_off020_8B60_xx_07:
loc_8B60_xx_07_loop:
- - - - - - 0x01AB70 06:8B60: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB71 06:8B61: E9        .byte $E9   ; 01 
- D 0 - I - 0x01AB72 06:8B62: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB73 06:8B63: 3B 97     .word _off053_spr_data_0x00D74B_xx_07_00
- - - - - - 0x01AB75 06:8B65: 60 8B     .word loc_8B60_xx_07_loop
- D 0 - I - 0x01AB77 06:8B67: 03        .byte $03   ; 07 



_off020_8B68_xx_08:
loc_8B68_xx_08_loop:
- - - - - - 0x01AB78 06:8B68: EA        .byte $EA   ; 00 
- - - - - - 0x01AB79 06:8B69: 69        .byte $69   ; 01 
- - - - - - 0x01AB7A 06:8B6A: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AB7B 06:8B6B: 43 97     .word _off053_spr_data_0x00D753_xx_08_00
- - - - - - 0x01AB7D 06:8B6D: 68 8B     .word loc_8B68_xx_08_loop
- - - - - - 0x01AB7F 06:8B6F: 03        .byte $03   ; 07 



_off020_8B70_xx_09:
loc_8B70_xx_09_loop:
- - - - - - 0x01AB80 06:8B70: EA        .byte $EA   ; 00 
- - - - - - 0x01AB81 06:8B71: E9        .byte $E9   ; 01 
- - - - - - 0x01AB82 06:8B72: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AB83 06:8B73: 43 97     .word _off053_spr_data_0x00D753_xx_09_00
- - - - - - 0x01AB85 06:8B75: 70 8B     .word loc_8B70_xx_09_loop
- - - - - - 0x01AB87 06:8B77: 03        .byte $03   ; 07 



_off020_8B78_xx_0A:
loc_8B78_xx_0A_loop:
- - - - - - 0x01AB88 06:8B78: EA        .byte $EA   ; 00 
- D 0 - I - 0x01AB89 06:8B79: 69        .byte $69   ; 01 
- D 0 - I - 0x01AB8A 06:8B7A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AB8B 06:8B7B: 4B 97     .word _off053_spr_data_0x00D75B_xx_0A_00
- - - - - - 0x01AB8D 06:8B7D: 78 8B     .word loc_8B78_xx_0A_loop
- D 0 - I - 0x01AB8F 06:8B7F: 03        .byte $03   ; 07 



_off020_8B80_51_00:
loc_8B80_02_00_loop:
loc_8B80_02_00_next:
loc_8B80_02_0A_next:
loc_8B80_02_12_next:
loc_8B80_xx_0E_next:
loc_8B80_xx_0F_next:
loc_8B80_xx_10_next:
loc_8B80_xx_11_next:
- D 0 - I - 0x01AB90 06:8B80: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01AB91 06:8B81: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AB92 06:8B82: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AB93 06:8B83: 50 97     .word _off053_spr_data_0x00D760_51_00_00
- - - - - - 0x01AB95 06:8B85: 80 8B     .word loc_8B80_02_00_loop
- D 0 - I - 0x01AB97 06:8B87: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01AB98 06:8B88: 00        .byte $00   ; 08 



_off020_8B89_51_01:
loc_8B89_02_01_loop:
loc_8B89_02_03_next:
loc_8B89_02_0B_next:
loc_8B89_02_13_next:
- D 0 - I - 0x01AB99 06:8B89: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01AB9A 06:8B8A: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AB9B 06:8B8B: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AB9C 06:8B8C: 50 97     .word _off053_spr_data_0x00D760_51_01_00
- - - - - - 0x01AB9E 06:8B8E: 89 8B     .word loc_8B89_02_01_loop
- D 0 - I - 0x01ABA0 06:8B90: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01ABA1 06:8B91: 10        .byte $10   ; 08 



_off020_8B92_51_02:
- D 0 - I - 0x01ABA2 06:8B92: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01ABA3 06:8B93: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ABA4 06:8B94: 40        .byte $40   ; 02 next animation delay
- D 0 - I - 0x01ABA5 06:8B95: 73 97     .word _off053_spr_data_0x00D783_51_02_00
- D 0 - I - 0x01ABA7 06:8B97: 80 8B     .word loc_8B80_02_00_next
- D 0 - I - 0x01ABA9 06:8B99: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01ABAA 06:8B9A: 01        .byte $01   ; 08 



_off020_8B9B_51_03:
- - - - - - 0x01ABAB 06:8B9B: EC        .byte con_chr_bank_spr + $EC   ; 00 
- - - - - - 0x01ABAC 06:8B9C: ED        .byte con_chr_bank_spr + $ED   ; 01 
- - - - - - 0x01ABAD 06:8B9D: 40        .byte $40   ; 02 next animation delay
- - - - - - 0x01ABAE 06:8B9E: 73 97     .word _off053_spr_data_0x00D783_51_03_00
- - - - - - 0x01ABB0 06:8BA0: 89 8B     .word loc_8B89_02_03_next
- - - - - - 0x01ABB2 06:8BA2: 1D        .byte $1D   ; 07 
- - - - - - 0x01ABB3 06:8BA3: 11        .byte $11   ; 08 



_off020_8BA4_51_0A:
- D 0 - I - 0x01ABB4 06:8BA4: C9        .byte con_chr_bank_spr + $C9   ; 00 
- D 0 - I - 0x01ABB5 06:8BA5: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ABB6 06:8BA6: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABB7 06:8BA7: 99 97     .word _off053_spr_data_0x00D7A9_51_0A_00
- D 0 - I - 0x01ABB9 06:8BA9: 80 8B     .word loc_8B80_02_0A_next
- D 0 - I - 0x01ABBB 06:8BAB: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01ABBC 06:8BAC: C0        .byte $C0   ; 08 



_off020_8BAD_51_0B:
- D 0 - I - 0x01ABBD 06:8BAD: C9        .byte con_chr_bank_spr + $C9   ; 00 
- D 0 - I - 0x01ABBE 06:8BAE: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ABBF 06:8BAF: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABC0 06:8BB0: 99 97     .word _off053_spr_data_0x00D7A9_51_0B_00
- D 0 - I - 0x01ABC2 06:8BB2: 89 8B     .word loc_8B89_02_0B_next
- D 0 - I - 0x01ABC4 06:8BB4: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01ABC5 06:8BB5: D0        .byte $D0   ; 08 



_off020_8BB6_51_14:
loc_8BB6_02_14_loop:
- - - - - - 0x01ABC6 06:8BB6: EC        .byte con_chr_bank_spr + $EC   ; 00 
- - - - - - 0x01ABC7 06:8BB7: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- - - - - - 0x01ABC8 06:8BB8: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01ABC9 06:8BB9: C1 97     .word _off053_spr_data_0x00D7D1_51_14_00
- - - - - - 0x01ABCB 06:8BBB: C8 8B     .word loc_8BC8_02_14_next
- - - - - - 0x01ABCD 06:8BBD: 00        .byte $00   ; 07 
- - - - - - 0x01ABCE 06:8BBE: 00        .byte $00   ; 08 



_off020_8BBF_51_15:
loc_8BBF_02_15_loop:
- D 0 - I - 0x01ABCF 06:8BBF: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01ABD0 06:8BC0: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ABD1 06:8BC1: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABD2 06:8BC2: C1 97     .word _off053_spr_data_0x00D7D1_51_15_00
- D 0 - I - 0x01ABD4 06:8BC4: D1 8B     .word loc_8BD1_02_15_next
- D 0 - I - 0x01ABD6 06:8BC6: 00        .byte $00   ; 07 
- D 0 - I - 0x01ABD7 06:8BC7: 10        .byte $10   ; 08 



loc_8BC8_02_14_next:
- - - - - - 0x01ABD8 06:8BC8: EE        .byte con_chr_bank_spr + $EE   ; 00 
- - - - - - 0x01ABD9 06:8BC9: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- - - - - - 0x01ABDA 06:8BCA: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01ABDB 06:8BCB: DB 97     .word _off053_spr_data_0x00D7EB_51_14_01
- - - - - - 0x01ABDD 06:8BCD: B6 8B     .word loc_8BB6_02_14_loop
- - - - - - 0x01ABDF 06:8BCF: 00        .byte $00   ; 07 
- - - - - - 0x01ABE0 06:8BD0: 80        .byte $80   ; 08 



loc_8BD1_02_15_next:
- D 0 - I - 0x01ABE1 06:8BD1: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ABE2 06:8BD2: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ABE3 06:8BD3: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABE4 06:8BD4: DB 97     .word _off053_spr_data_0x00D7EB_51_15_01
- D 0 - I - 0x01ABE6 06:8BD6: BF 8B     .word loc_8BBF_02_15_loop
- D 0 - I - 0x01ABE8 06:8BD8: 00        .byte $00   ; 07 
- D 0 - I - 0x01ABE9 06:8BD9: 90        .byte $90   ; 08 



_off020_8BDA_51_12:
- D 0 - I - 0x01ABEA 06:8BDA: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ABEB 06:8BDB: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ABEC 06:8BDC: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABED 06:8BDD: F2 97     .word _off053_spr_data_0x00D802_51_12_00
- - - - - - 0x01ABEF 06:8BDF: 80 8B     .word loc_8B80_02_12_next
- D 0 - I - 0x01ABF1 06:8BE1: 00        .byte $00   ; 07 
- D 0 - I - 0x01ABF2 06:8BE2: 0A        .byte $0A   ; 08 



_off020_8BE3_51_13:
- D 0 - I - 0x01ABF3 06:8BE3: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ABF4 06:8BE4: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ABF5 06:8BE5: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABF6 06:8BE6: F2 97     .word _off053_spr_data_0x00D802_51_13_00
- - - - - - 0x01ABF8 06:8BE8: 89 8B     .word loc_8B89_02_13_next
- D 0 - I - 0x01ABFA 06:8BEA: 00        .byte $00   ; 07 
- D 0 - I - 0x01ABFB 06:8BEB: 1B        .byte $1B   ; 08 



_off020_8BEC_51_04:
loc_8BEC_02_0C_next:
- D 0 - I - 0x01ABFC 06:8BEC: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ABFD 06:8BED: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ABFE 06:8BEE: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ABFF 06:8BEF: 12 98     .word _off053_spr_data_0x00D822_51_04_00
- D 0 - I - 0x01AC01 06:8BF1: 10 8C     .word loc_8C10_02_04_next
- D 0 - I - 0x01AC03 06:8BF3: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC04 06:8BF4: 02        .byte $02   ; 08 



_off020_8BF5_51_05:
loc_8BF5_02_0D_next:
- D 0 - I - 0x01AC05 06:8BF5: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC06 06:8BF6: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC07 06:8BF7: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC08 06:8BF8: 12 98     .word _off053_spr_data_0x00D822_51_05_00
- D 0 - I - 0x01AC0A 06:8BFA: 19 8C     .word loc_8C19_02_05_next
- D 0 - I - 0x01AC0C 06:8BFC: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC0D 06:8BFD: 13        .byte $13   ; 08 



_off020_8BFE_51_16:
loc_8BFE_02_16_loop:
- D 0 - I - 0x01AC0E 06:8BFE: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC0F 06:8BFF: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC10 06:8C00: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC11 06:8C01: 12 98     .word _off053_spr_data_0x00D822_51_16_00
- D 0 - I - 0x01AC13 06:8C03: 34 8C     .word loc_8C34_02_16_next
- D 0 - I - 0x01AC15 06:8C05: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC16 06:8C06: 01        .byte $01   ; 08 



_off020_8C07_51_17:
loc_8C07_02_17_loop:
- D 0 - I - 0x01AC17 06:8C07: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC18 06:8C08: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC19 06:8C09: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC1A 06:8C0A: 12 98     .word _off053_spr_data_0x00D822_51_17_00
- D 0 - I - 0x01AC1C 06:8C0C: 3D 8C     .word loc_8C3D_02_17_next
- D 0 - I - 0x01AC1E 06:8C0E: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC1F 06:8C0F: 11        .byte $11   ; 08 



_off020_8C10_51_0C:
loc_8C10_02_04_next:
- D 0 - I - 0x01AC20 06:8C10: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC21 06:8C11: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC22 06:8C12: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC23 06:8C13: 32 98     .word _off053_spr_data_0x00D842_51_0C_00
- D 0 - I - 0x01AC25 06:8C15: 22 8C     .word loc_8C22_02_0C_next
- D 0 - I - 0x01AC27 06:8C17: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC28 06:8C18: 20        .byte $20   ; 08 



_off020_8C19_51_0D:
loc_8C19_02_05_next:
- D 0 - I - 0x01AC29 06:8C19: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC2A 06:8C1A: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC2B 06:8C1B: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC2C 06:8C1C: 32 98     .word _off053_spr_data_0x00D842_51_0D_00
- D 0 - I - 0x01AC2E 06:8C1E: 2B 8C     .word loc_8C2B_02_0D_next
- D 0 - I - 0x01AC30 06:8C20: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC31 06:8C21: 30        .byte $30   ; 08 



loc_8C22_02_0C_next:
- D 0 - I - 0x01AC32 06:8C22: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC33 06:8C23: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC34 06:8C24: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AC35 06:8C25: 12 98     .word _off053_spr_data_0x00D822_51_0C_01
- D 0 - I - 0x01AC37 06:8C27: EC 8B     .word loc_8BEC_02_0C_next
- D 0 - I - 0x01AC39 06:8C29: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC3A 06:8C2A: 60        .byte $60   ; 08 



loc_8C2B_02_0D_next:
- D 0 - I - 0x01AC3B 06:8C2B: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC3C 06:8C2C: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC3D 06:8C2D: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AC3E 06:8C2E: 12 98     .word _off053_spr_data_0x00D822_51_0D_01
- D 0 - I - 0x01AC40 06:8C30: F5 8B     .word loc_8BF5_02_0D_next
- D 0 - I - 0x01AC42 06:8C32: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC43 06:8C33: 70        .byte $70   ; 08 



loc_8C34_02_16_next:
- D 0 - I - 0x01AC44 06:8C34: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC45 06:8C35: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC46 06:8C36: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC47 06:8C37: 32 98     .word _off053_spr_data_0x00D842_51_16_01
- D 0 - I - 0x01AC49 06:8C39: 46 8C     .word loc_8C46_02_16_next
- D 0 - I - 0x01AC4B 06:8C3B: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC4C 06:8C3C: 20        .byte $20   ; 08 



loc_8C3D_02_17_next:
- D 0 - I - 0x01AC4D 06:8C3D: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC4E 06:8C3E: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC4F 06:8C3F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC50 06:8C40: 32 98     .word _off053_spr_data_0x00D842_51_17_01
- D 0 - I - 0x01AC52 06:8C42: 4F 8C     .word loc_8C4F_02_17_next
- D 0 - I - 0x01AC54 06:8C44: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC55 06:8C45: 30        .byte $30   ; 08 



loc_8C46_02_16_next:
- D 0 - I - 0x01AC56 06:8C46: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC57 06:8C47: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC58 06:8C48: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AC59 06:8C49: 12 98     .word _off053_spr_data_0x00D822_51_16_02
- - - - - - 0x01AC5B 06:8C4B: FE 8B     .word loc_8BFE_02_16_loop
- D 0 - I - 0x01AC5D 06:8C4D: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC5E 06:8C4E: 60        .byte $60   ; 08 



loc_8C4F_02_17_next:
- D 0 - I - 0x01AC5F 06:8C4F: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC60 06:8C50: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC61 06:8C51: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AC62 06:8C52: 12 98     .word _off053_spr_data_0x00D822_51_17_02
- D 0 - I - 0x01AC64 06:8C54: 07 8C     .word loc_8C07_02_17_loop
- D 0 - I - 0x01AC66 06:8C56: 21        .byte $21   ; 07 
- D 0 - I - 0x01AC67 06:8C57: 70        .byte $70   ; 08 



_off020_8C58_51_06:
loc_8C58_02_0E_next:
- D 0 - I - 0x01AC68 06:8C58: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC69 06:8C59: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC6A 06:8C5A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC6B 06:8C5B: 5A 98     .word _off053_spr_data_0x00D86A_51_06_00
- D 0 - I - 0x01AC6D 06:8C5D: 6A 8C     .word loc_8C6A_02_06_next
- D 0 - I - 0x01AC6F 06:8C5F: 22        .byte $22   ; 07 
- D 0 - I - 0x01AC70 06:8C60: 06        .byte $06   ; 08 



_off020_8C61_51_07:
loc_8C61_02_0F_next:
- D 0 - I - 0x01AC71 06:8C61: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC72 06:8C62: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC73 06:8C63: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC74 06:8C64: 5A 98     .word _off053_spr_data_0x00D86A_51_07_00
- D 0 - I - 0x01AC76 06:8C66: 73 8C     .word loc_8C73_02_07_next
- D 0 - I - 0x01AC78 06:8C68: 22        .byte $22   ; 07 
- D 0 - I - 0x01AC79 06:8C69: 17        .byte $17   ; 08 



_off020_8C6A_51_0E:
loc_8C6A_02_06_next:
- D 0 - I - 0x01AC7A 06:8C6A: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC7B 06:8C6B: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC7C 06:8C6C: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC7D 06:8C6D: 77 98     .word _off053_spr_data_0x00D887_51_0E_00
- D 0 - I - 0x01AC7F 06:8C6F: 7C 8C     .word loc_8C7C_02_0E_next
- D 0 - I - 0x01AC81 06:8C71: 22        .byte $22   ; 07 
- D 0 - I - 0x01AC82 06:8C72: 20        .byte $20   ; 08 



_off020_8C73_51_0F:
loc_8C73_02_07_next:
- D 0 - I - 0x01AC83 06:8C73: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC84 06:8C74: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC85 06:8C75: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AC86 06:8C76: 77 98     .word _off053_spr_data_0x00D887_51_0F_00
- D 0 - I - 0x01AC88 06:8C78: 85 8C     .word loc_8C85_02_0F_next
- D 0 - I - 0x01AC8A 06:8C7A: 22        .byte $22   ; 07 
- D 0 - I - 0x01AC8B 06:8C7B: 30        .byte $30   ; 08 



loc_8C7C_02_0E_next:
- D 0 - I - 0x01AC8C 06:8C7C: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC8D 06:8C7D: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01AC8E 06:8C7E: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AC8F 06:8C7F: 5A 98     .word _off053_spr_data_0x00D86A_51_0E_01
- D 0 - I - 0x01AC91 06:8C81: 58 8C     .word loc_8C58_02_0E_next
- D 0 - I - 0x01AC93 06:8C83: 22        .byte $22   ; 07 
- D 0 - I - 0x01AC94 06:8C84: 60        .byte $60   ; 08 



loc_8C85_02_0F_next:
- D 0 - I - 0x01AC95 06:8C85: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC96 06:8C86: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01AC97 06:8C87: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AC98 06:8C88: 5A 98     .word _off053_spr_data_0x00D86A_51_0F_01
- D 0 - I - 0x01AC9A 06:8C8A: 61 8C     .word loc_8C61_02_0F_next
- D 0 - I - 0x01AC9C 06:8C8C: 22        .byte $22   ; 07 
- D 0 - I - 0x01AC9D 06:8C8D: 70        .byte $70   ; 08 



_off020_8C8E_51_09:
_off020_8C8E_51_1C:
loc_8C8E_02_10_next:
- D 0 - I - 0x01AC9E 06:8C8E: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01AC9F 06:8C8F: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ACA0 06:8C90: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACA1 06:8C91: 9C 98     .word _off053_spr_data_0x00D8AC_51_09_00
- D 0 - I - 0x01ACA3 06:8C93: B2 8C     .word loc_8CB2_02_09_next
- D 0 - I - 0x01ACA5 06:8C95: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACA6 06:8C96: 07        .byte $07   ; 08 



_off020_8C97_51_08:
_off020_8C97_51_1D:
loc_8C97_02_11_next:
- D 0 - I - 0x01ACA7 06:8C97: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACA8 06:8C98: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ACA9 06:8C99: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACAA 06:8C9A: 9C 98     .word _off053_spr_data_0x00D8AC_51_08_00
- D 0 - I - 0x01ACAC 06:8C9C: BB 8C     .word loc_8CBB_02_08_next
- D 0 - I - 0x01ACAE 06:8C9E: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACAF 06:8C9F: 16        .byte $16   ; 08 



_off020_8CA0_51_18:
- D 0 - I - 0x01ACB0 06:8CA0: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACB1 06:8CA1: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ACB2 06:8CA2: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACB3 06:8CA3: 9C 98     .word _off053_spr_data_0x00D8AC_51_18_00
- - - - - - 0x01ACB5 06:8CA5: B2 8C     .word loc_8CB2_02_18_next
- D 0 - I - 0x01ACB7 06:8CA7: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACB8 06:8CA8: 26        .byte $26   ; 08 



_off020_8CA9_51_19:
- D 0 - I - 0x01ACB9 06:8CA9: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACBA 06:8CAA: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ACBB 06:8CAB: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACBC 06:8CAC: 9C 98     .word _off053_spr_data_0x00D8AC_51_19_00
- - - - - - 0x01ACBE 06:8CAE: BB 8C     .word loc_8CBB_02_19_next
- D 0 - I - 0x01ACC0 06:8CB0: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACC1 06:8CB1: 37        .byte $37   ; 08 



_off020_8CB2_51_10:
loc_8CB2_02_09_next:
loc_8CB2_02_18_next:
- D 0 - I - 0x01ACC2 06:8CB2: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACC3 06:8CB3: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ACC4 06:8CB4: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACC5 06:8CB5: B9 98     .word _off053_spr_data_0x00D8C9_51_10_00
- D 0 - I - 0x01ACC7 06:8CB7: C4 8C     .word loc_8CC4_02_10_next
- D 0 - I - 0x01ACC9 06:8CB9: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACCA 06:8CBA: 20        .byte $20   ; 08 



_off020_8CBB_51_11:
loc_8CBB_02_08_next:
loc_8CBB_02_19_next:
- D 0 - I - 0x01ACCB 06:8CBB: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACCC 06:8CBC: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ACCD 06:8CBD: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACCE 06:8CBE: B9 98     .word _off053_spr_data_0x00D8C9_51_11_00
- D 0 - I - 0x01ACD0 06:8CC0: CD 8C     .word loc_8CCD_02_11_next
- D 0 - I - 0x01ACD2 06:8CC2: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACD3 06:8CC3: 30        .byte $30   ; 08 



loc_8CC4_02_10_next:
- D 0 - I - 0x01ACD4 06:8CC4: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACD5 06:8CC5: 6D        .byte con_chr_bank_spr + $6D   ; 01 
- D 0 - I - 0x01ACD6 06:8CC6: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01ACD7 06:8CC7: 9C 98     .word _off053_spr_data_0x00D8AC_51_10_01
- D 0 - I - 0x01ACD9 06:8CC9: 8E 8C     .word loc_8C8E_02_10_next
- D 0 - I - 0x01ACDB 06:8CCB: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACDC 06:8CCC: 60        .byte $60   ; 08 



loc_8CCD_02_11_next:
- D 0 - I - 0x01ACDD 06:8CCD: EE        .byte con_chr_bank_spr + $EE   ; 00 
- D 0 - I - 0x01ACDE 06:8CCE: ED        .byte con_chr_bank_spr + $ED   ; 01 
- D 0 - I - 0x01ACDF 06:8CCF: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01ACE0 06:8CD0: 9C 98     .word _off053_spr_data_0x00D8AC_51_11_01
- D 0 - I - 0x01ACE2 06:8CD2: 97 8C     .word loc_8C97_02_11_next
- D 0 - I - 0x01ACE4 06:8CD4: 22        .byte $22   ; 07 
- D 0 - I - 0x01ACE5 06:8CD5: 70        .byte $70   ; 08 



_off020_8CD6_51_1A:
loc_8CD6_02_1A_loop:
- D 0 - I - 0x01ACE6 06:8CD6: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01ACE7 06:8CD7: 6F        .byte con_chr_bank_spr + $6F   ; 01 
- D 0 - I - 0x01ACE8 06:8CD8: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACE9 06:8CD9: DB 98     .word _off053_spr_data_0x00D8EB_51_1A_00
- D 0 - I - 0x01ACEB 06:8CDB: E8 8C     .word loc_8CE8_02_1A_next
- D 0 - I - 0x01ACED 06:8CDD: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01ACEE 06:8CDE: 04        .byte $04   ; 08 



_off020_8CDF_51_1B:
loc_8CDF_02_1B_loop:
- D 0 - I - 0x01ACEF 06:8CDF: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01ACF0 06:8CE0: EF        .byte con_chr_bank_spr + $EF   ; 01 
- D 0 - I - 0x01ACF1 06:8CE1: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACF2 06:8CE2: DB 98     .word _off053_spr_data_0x00D8EB_51_1B_00
- - - - - - 0x01ACF4 06:8CE4: F1 8C     .word loc_8CF1_02_1B_next
- D 0 - I - 0x01ACF6 06:8CE6: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01ACF7 06:8CE7: 15        .byte $15   ; 08 



loc_8CE8_02_1A_next:
- D 0 - I - 0x01ACF8 06:8CE8: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01ACF9 06:8CE9: 6F        .byte con_chr_bank_spr + $6F   ; 01 
- D 0 - I - 0x01ACFA 06:8CEA: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ACFB 06:8CEB: 01 99     .word _off053_spr_data_0x00D911_51_1A_01
- D 0 - I - 0x01ACFD 06:8CED: FA 8C     .word loc_8CFA_02_1A_next
- D 0 - I - 0x01ACFF 06:8CEF: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AD00 06:8CF0: 04        .byte $04   ; 08 



loc_8CF1_02_1B_next:
- - - - - - 0x01AD01 06:8CF1: EC        .byte con_chr_bank_spr + $EC   ; 00 
- - - - - - 0x01AD02 06:8CF2: EF        .byte con_chr_bank_spr + $EF   ; 01 
- - - - - - 0x01AD03 06:8CF3: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AD04 06:8CF4: 01 99     .word _off053_spr_data_0x00D911_51_1B_01
- - - - - - 0x01AD06 06:8CF6: 03 8D     .word loc_8D03_02_1B_next
- - - - - - 0x01AD08 06:8CF8: 1D        .byte $1D   ; 07 
- - - - - - 0x01AD09 06:8CF9: 15        .byte $15   ; 08 



loc_8CFA_02_1A_next:
- D 0 - I - 0x01AD0A 06:8CFA: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01AD0B 06:8CFB: 6F        .byte con_chr_bank_spr + $6F   ; 01 
- D 0 - I - 0x01AD0C 06:8CFC: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD0D 06:8CFD: 1B 99     .word _off053_spr_data_0x00D92B_51_1A_02
- D 0 - I - 0x01AD0F 06:8CFF: 0C 8D     .word loc_8D0C_02_1A_next
- D 0 - I - 0x01AD11 06:8D01: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AD12 06:8D02: 84        .byte $84   ; 08 



loc_8D03_02_1B_next:
- - - - - - 0x01AD13 06:8D03: EC        .byte con_chr_bank_spr + $EC   ; 00 
- - - - - - 0x01AD14 06:8D04: EF        .byte con_chr_bank_spr + $EF   ; 01 
- - - - - - 0x01AD15 06:8D05: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AD16 06:8D06: 1B 99     .word _off053_spr_data_0x00D92B_51_1B_02
- - - - - - 0x01AD18 06:8D08: 15 8D     .word loc_8D15_02_1B_next
- - - - - - 0x01AD1A 06:8D0A: 1D        .byte $1D   ; 07 
- - - - - - 0x01AD1B 06:8D0B: 95        .byte $95   ; 08 



loc_8D0C_02_1A_next:
- D 0 - I - 0x01AD1C 06:8D0C: EC        .byte con_chr_bank_spr + $EC   ; 00 
- D 0 - I - 0x01AD1D 06:8D0D: 6F        .byte con_chr_bank_spr + $6F   ; 01 
- D 0 - I - 0x01AD1E 06:8D0E: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD1F 06:8D0F: 01 99     .word _off053_spr_data_0x00D911_51_1A_03
- D 0 - I - 0x01AD21 06:8D11: D6 8C     .word loc_8CD6_02_1A_loop
- D 0 - I - 0x01AD23 06:8D13: 1D        .byte $1D   ; 07 
- D 0 - I - 0x01AD24 06:8D14: 44        .byte $44   ; 08 



loc_8D15_02_1B_next:
- - - - - - 0x01AD25 06:8D15: EC        .byte con_chr_bank_spr + $EC   ; 00 
- - - - - - 0x01AD26 06:8D16: EF        .byte con_chr_bank_spr + $EF   ; 01 
- - - - - - 0x01AD27 06:8D17: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AD28 06:8D18: 01 99     .word _off053_spr_data_0x00D911_51_1B_03
- - - - - - 0x01AD2A 06:8D1A: DF 8C     .word loc_8CDF_02_1B_loop
- - - - - - 0x01AD2C 06:8D1C: 1D        .byte $1D   ; 07 
- - - - - - 0x01AD2D 06:8D1D: 55        .byte $55   ; 08 



_off020_8D1E_xx_0E:
- - - - - - 0x01AD2E 06:8D1E: EE        .byte $EE   ; 00 
- D 0 - I - 0x01AD2F 06:8D1F: 6D        .byte $6D   ; 01 
- D 0 - I - 0x01AD30 06:8D20: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD31 06:8D21: 38 99     .word _off053_spr_data_0x00D948_xx_0E_00
- - - - - - 0x01AD33 06:8D23: 80 8B     .word loc_8B80_xx_0E_next
- D 0 - I - 0x01AD35 06:8D25: 03        .byte $03   ; 07 



_off020_8D26_xx_0F:
- - - - - - 0x01AD36 06:8D26: EE        .byte $EE   ; 00 
- D 0 - I - 0x01AD37 06:8D27: ED        .byte $ED   ; 01 
- D 0 - I - 0x01AD38 06:8D28: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD39 06:8D29: 38 99     .word _off053_spr_data_0x00D948_xx_0F_00
- - - - - - 0x01AD3B 06:8D2B: 80 8B     .word loc_8B80_xx_0F_next
- D 0 - I - 0x01AD3D 06:8D2D: 03        .byte $03   ; 07 



_off020_8D2E_xx_10:
- - - - - - 0x01AD3E 06:8D2E: EE        .byte $EE   ; 00 
- D 0 - I - 0x01AD3F 06:8D2F: 6D        .byte $6D   ; 01 
- D 0 - I - 0x01AD40 06:8D30: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD41 06:8D31: 40 99     .word _off053_spr_data_0x00D950_xx_10_00
- - - - - - 0x01AD43 06:8D33: 80 8B     .word loc_8B80_xx_10_next
- D 0 - I - 0x01AD45 06:8D35: 03        .byte $03   ; 07 



_off020_8D36_xx_11:
- - - - - - 0x01AD46 06:8D36: EE        .byte $EE   ; 00 
- D 0 - I - 0x01AD47 06:8D37: ED        .byte $ED   ; 01 
- D 0 - I - 0x01AD48 06:8D38: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD49 06:8D39: 40 99     .word _off053_spr_data_0x00D950_xx_11_00
- - - - - - 0x01AD4B 06:8D3B: 80 8B     .word loc_8B80_xx_11_next
- D 0 - I - 0x01AD4D 06:8D3D: 03        .byte $03   ; 07 



_off020_8D3E_53_02:
loc_8D3E_06_02_loop:
- D 0 - I - 0x01AD4E 06:8D3E: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD4F 06:8D3F: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AD50 06:8D40: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD51 06:8D41: 48 99     .word _off053_spr_data_0x00D958_53_02_00
- D 0 - I - 0x01AD53 06:8D43: 50 8D     .word loc_8D50_06_02_next
- D 0 - I - 0x01AD55 06:8D45: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD56 06:8D46: 0C        .byte $0C   ; 08 



_off020_8D47_53_03:
loc_8D47_06_03_loop:
- D 0 - I - 0x01AD57 06:8D47: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD58 06:8D48: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AD59 06:8D49: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD5A 06:8D4A: 48 99     .word _off053_spr_data_0x00D958_53_03_00
- D 0 - I - 0x01AD5C 06:8D4C: 59 8D     .word loc_8D59_06_03_next
- D 0 - I - 0x01AD5E 06:8D4E: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD5F 06:8D4F: 1D        .byte $1D   ; 08 



loc_8D50_06_02_next:
- D 0 - I - 0x01AD60 06:8D50: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD61 06:8D51: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AD62 06:8D52: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD63 06:8D53: 6B 99     .word _off053_spr_data_0x00D97B_53_02_01
- D 0 - I - 0x01AD65 06:8D55: 62 8D     .word loc_8D62_06_02_next
- D 0 - I - 0x01AD67 06:8D57: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD68 06:8D58: 0C        .byte $0C   ; 08 



loc_8D59_06_03_next:
- D 0 - I - 0x01AD69 06:8D59: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD6A 06:8D5A: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AD6B 06:8D5B: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD6C 06:8D5C: 6B 99     .word _off053_spr_data_0x00D97B_53_03_01
- D 0 - I - 0x01AD6E 06:8D5E: 6B 8D     .word loc_8D6B_06_03_next
- D 0 - I - 0x01AD70 06:8D60: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD71 06:8D61: 1D        .byte $1D   ; 08 



loc_8D62_06_02_next:
- D 0 - I - 0x01AD72 06:8D62: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD73 06:8D63: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AD74 06:8D64: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD75 06:8D65: 88 99     .word _off053_spr_data_0x00D998_53_02_02
- D 0 - I - 0x01AD77 06:8D67: 74 8D     .word loc_8D74_06_02_next
- D 0 - I - 0x01AD79 06:8D69: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD7A 06:8D6A: 8C        .byte $8C   ; 08 



loc_8D6B_06_03_next:
- D 0 - I - 0x01AD7B 06:8D6B: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD7C 06:8D6C: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AD7D 06:8D6D: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD7E 06:8D6E: 88 99     .word _off053_spr_data_0x00D998_53_03_02
- D 0 - I - 0x01AD80 06:8D70: 7D 8D     .word loc_8D7D_06_03_next
- D 0 - I - 0x01AD82 06:8D72: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD83 06:8D73: 9D        .byte $9D   ; 08 



loc_8D74_06_02_next:
- D 0 - I - 0x01AD84 06:8D74: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD85 06:8D75: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AD86 06:8D76: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD87 06:8D77: 6B 99     .word _off053_spr_data_0x00D97B_53_02_03
- D 0 - I - 0x01AD89 06:8D79: 3E 8D     .word loc_8D3E_06_02_loop
- D 0 - I - 0x01AD8B 06:8D7B: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD8C 06:8D7C: 4C        .byte $4C   ; 08 



loc_8D7D_06_03_next:
- D 0 - I - 0x01AD8D 06:8D7D: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD8E 06:8D7E: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AD8F 06:8D7F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD90 06:8D80: 6B 99     .word _off053_spr_data_0x00D97B_53_03_03
- D 0 - I - 0x01AD92 06:8D82: 47 8D     .word loc_8D47_06_03_loop
- D 0 - I - 0x01AD94 06:8D84: 24        .byte $24   ; 07 
- D 0 - I - 0x01AD95 06:8D85: 5D        .byte $5D   ; 08 



_off020_8D86_53_06:
loc_8D86_06_06_loop:
loc_8D86_06_04_next:
- D 0 - I - 0x01AD96 06:8D86: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AD97 06:8D87: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AD98 06:8D88: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AD99 06:8D89: AB 99     .word _off053_spr_data_0x00D9BB_53_06_00
- - - - - - 0x01AD9B 06:8D8B: 86 8D     .word loc_8D86_06_06_loop
- D 0 - I - 0x01AD9D 06:8D8D: 25        .byte $25   ; 07 
- D 0 - I - 0x01AD9E 06:8D8E: 0C        .byte $0C   ; 08 



_off020_8D8F_53_07:
loc_8D8F_06_07_loop:
loc_8D8F_06_05_next:
- D 0 - I - 0x01AD9F 06:8D8F: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01ADA0 06:8D90: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01ADA1 06:8D91: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ADA2 06:8D92: AB 99     .word _off053_spr_data_0x00D9BB_53_07_00
- - - - - - 0x01ADA4 06:8D94: 8F 8D     .word loc_8D8F_06_07_loop
- D 0 - I - 0x01ADA6 06:8D96: 25        .byte $25   ; 07 
- D 0 - I - 0x01ADA7 06:8D97: 1D        .byte $1D   ; 08 



_off020_8D98_53_04:
- D 0 - I - 0x01ADA8 06:8D98: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01ADA9 06:8D99: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01ADAA 06:8D9A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ADAB 06:8D9B: D0 99     .word _off053_spr_data_0x00D9E0_53_04_00
- - - - - - 0x01ADAD 06:8D9D: 86 8D     .word loc_8D86_06_04_next
- D 0 - I - 0x01ADAF 06:8D9F: 26        .byte $26   ; 07 
- D 0 - I - 0x01ADB0 06:8DA0: 02        .byte $02   ; 08 



_off020_8DA1_53_05:
- D 0 - I - 0x01ADB1 06:8DA1: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01ADB2 06:8DA2: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01ADB3 06:8DA3: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01ADB4 06:8DA4: D0 99     .word _off053_spr_data_0x00D9E0_53_05_00
- - - - - - 0x01ADB6 06:8DA6: 8F 8D     .word loc_8D8F_06_05_next
- D 0 - I - 0x01ADB8 06:8DA8: 26        .byte $26   ; 07 
- D 0 - I - 0x01ADB9 06:8DA9: 13        .byte $13   ; 08 



_off020_8DAA_53_00:
loc_8DAA_06_14_next:
- D 0 - I - 0x01ADBA 06:8DAA: F1        .byte con_chr_bank_spr + $F1   ; 00 
- D 0 - I - 0x01ADBB 06:8DAB: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01ADBC 06:8DAC: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01ADBD 06:8DAD: F0 99     .word _off053_spr_data_0x00DA00_53_00_00
- - - - - - 0x01ADBF 06:8DAF: BC 8D     .word loc_8DBC_06_00_next
- D 0 - I - 0x01ADC1 06:8DB1: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01ADC2 06:8DB2: 00        .byte $00   ; 08 



_off020_8DB3_53_01:
loc_8DB3_06_15_next:
- D 0 - I - 0x01ADC3 06:8DB3: F1        .byte con_chr_bank_spr + $F1   ; 00 
- D 0 - I - 0x01ADC4 06:8DB4: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01ADC5 06:8DB5: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01ADC6 06:8DB6: F0 99     .word _off053_spr_data_0x00DA00_53_01_00
- - - - - - 0x01ADC8 06:8DB8: C5 8D     .word loc_8DC5_06_01_next
- D 0 - I - 0x01ADCA 06:8DBA: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01ADCB 06:8DBB: 10        .byte $10   ; 08 



_off020_8DBC_53_08:
loc_8DBC_06_00_next:
- D 0 - I - 0x01ADCC 06:8DBC: F1        .byte con_chr_bank_spr + $F1   ; 00 
- D 0 - I - 0x01ADCD 06:8DBD: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01ADCE 06:8DBE: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01ADCF 06:8DBF: 16 9A     .word _off053_spr_data_0x00DA26_53_08_00
- D 0 - I - 0x01ADD1 06:8DC1: CE 8D     .word loc_8DCE_06_08_next
- D 0 - I - 0x01ADD3 06:8DC3: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01ADD4 06:8DC4: 00        .byte $00   ; 08 



_off020_8DC5_53_09:
loc_8DC5_06_01_next:
- D 0 - I - 0x01ADD5 06:8DC5: F1        .byte con_chr_bank_spr + $F1   ; 00 
- D 0 - I - 0x01ADD6 06:8DC6: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01ADD7 06:8DC7: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01ADD8 06:8DC8: 16 9A     .word _off053_spr_data_0x00DA26_53_09_00
- D 0 - I - 0x01ADDA 06:8DCA: D7 8D     .word loc_8DD7_06_09_next
- D 0 - I - 0x01ADDC 06:8DCC: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01ADDD 06:8DCD: 10        .byte $10   ; 08 



_off020_8DCE_53_14:
loc_8DCE_06_08_next:
- D 0 - I - 0x01ADDE 06:8DCE: F1        .byte con_chr_bank_spr + $F1   ; 00 
- D 0 - I - 0x01ADDF 06:8DCF: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01ADE0 06:8DD0: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01ADE1 06:8DD1: 39 9A     .word _off053_spr_data_0x00DA49_53_14_00
- - - - - - 0x01ADE3 06:8DD3: E0 8D     .word loc_8DE0_06_14_next
- D 0 - I - 0x01ADE5 06:8DD5: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01ADE6 06:8DD6: 80        .byte $80   ; 08 



_off020_8DD7_53_15:
loc_8DD7_06_09_next:
- D 0 - I - 0x01ADE7 06:8DD7: F1        .byte con_chr_bank_spr + $F1   ; 00 
- D 0 - I - 0x01ADE8 06:8DD8: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01ADE9 06:8DD9: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01ADEA 06:8DDA: 39 9A     .word _off053_spr_data_0x00DA49_53_15_00
- - - - - - 0x01ADEC 06:8DDC: E9 8D     .word loc_8DE9_06_15_next
- D 0 - I - 0x01ADEE 06:8DDE: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01ADEF 06:8DDF: 90        .byte $90   ; 08 



loc_8DE0_06_14_next:
- - - - - - 0x01ADF0 06:8DE0: F1        .byte con_chr_bank_spr + $F1   ; 00 
- - - - - - 0x01ADF1 06:8DE1: 73        .byte con_chr_bank_spr + $73   ; 01 
- - - - - - 0x01ADF2 06:8DE2: 10        .byte $10   ; 02 next animation delay
- - - - - - 0x01ADF3 06:8DE3: 16 9A     .word _off053_spr_data_0x00DA26_53_14_01
- - - - - - 0x01ADF5 06:8DE5: AA 8D     .word loc_8DAA_06_14_next
- - - - - - 0x01ADF7 06:8DE7: 1E        .byte $1E   ; 07 
- - - - - - 0x01ADF8 06:8DE8: 40        .byte $40   ; 08 



loc_8DE9_06_15_next:
- - - - - - 0x01ADF9 06:8DE9: F1        .byte con_chr_bank_spr + $F1   ; 00 
- - - - - - 0x01ADFA 06:8DEA: F3        .byte con_chr_bank_spr + $F3   ; 01 
- - - - - - 0x01ADFB 06:8DEB: 10        .byte $10   ; 02 next animation delay
- - - - - - 0x01ADFC 06:8DEC: 16 9A     .word _off053_spr_data_0x00DA26_53_15_01
- - - - - - 0x01ADFE 06:8DEE: B3 8D     .word loc_8DB3_06_15_next
- - - - - - 0x01AE00 06:8DF0: 1E        .byte $1E   ; 07 
- - - - - - 0x01AE01 06:8DF1: 50        .byte $50   ; 08 



_off020_8DF2_53_0A:
loc_8DF2_06_0A_loop:
loc_8DF2_06_0B_next:
- D 0 - I - 0x01AE02 06:8DF2: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE03 06:8DF3: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AE04 06:8DF4: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AE05 06:8DF5: 64 9A     .word _off053_spr_data_0x00DA74_53_0A_00
- - - - - - 0x01AE07 06:8DF7: F2 8D     .word loc_8DF2_06_0A_loop
- D 0 - I - 0x01AE09 06:8DF9: 27        .byte $27   ; 07 
- D 0 - I - 0x01AE0A 06:8DFA: 00        .byte $00   ; 08 



_off020_8DFB_53_0B:
- D 0 - I - 0x01AE0B 06:8DFB: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE0C 06:8DFC: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AE0D 06:8DFD: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AE0E 06:8DFE: 64 9A     .word _off053_spr_data_0x00DA74_53_0B_00
- - - - - - 0x01AE10 06:8E00: F2 8D     .word loc_8DF2_06_0B_next
- D 0 - I - 0x01AE12 06:8E02: 27        .byte $27   ; 07 
- D 0 - I - 0x01AE13 06:8E03: 10        .byte $10   ; 08 



_off020_8E04_53_0E:
loc_8E04_06_0E_loop:
- D 0 - I - 0x01AE14 06:8E04: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE15 06:8E05: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AE16 06:8E06: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE17 06:8E07: 81 9A     .word _off053_spr_data_0x00DA91_53_0E_00
- - - - - - 0x01AE19 06:8E09: 04 8E     .word loc_8E04_06_0E_loop
- D 0 - I - 0x01AE1B 06:8E0B: 00        .byte $00   ; 07 
- D 0 - I - 0x01AE1C 06:8E0C: 0A        .byte $0A   ; 08 



_off020_8E0D_53_0F:
loc_8E0D_06_0F_loop:
- D 0 - I - 0x01AE1D 06:8E0D: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE1E 06:8E0E: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AE1F 06:8E0F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE20 06:8E10: 81 9A     .word _off053_spr_data_0x00DA91_53_0F_00
- - - - - - 0x01AE22 06:8E12: 0D 8E     .word loc_8E0D_06_0F_loop
- D 0 - I - 0x01AE24 06:8E14: 00        .byte $00   ; 07 
- D 0 - I - 0x01AE25 06:8E15: 1B        .byte $1B   ; 08 



loc_8E16_06_0C_next:
- - - - - - 0x01AE26 06:8E16: F2        .byte con_chr_bank_spr + $F2   ; 00 
- - - - - - 0x01AE27 06:8E17: 73        .byte con_chr_bank_spr + $73   ; 01 
- - - - - - 0x01AE28 06:8E18: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AE29 06:8E19: 9E 9A     .word _off053_spr_data_0x00DAAE_53_0C_01
- - - - - - 0x01AE2B 06:8E1B: 28 8E     .word loc_8E28_06_0C_loop
- - - - - - 0x01AE2D 06:8E1D: 00        .byte $00   ; 07 
- - - - - - 0x01AE2E 06:8E1E: 00        .byte $00   ; 08 



loc_8E1F_06_0D_next:
- D 0 - I - 0x01AE2F 06:8E1F: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE30 06:8E20: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AE31 06:8E21: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE32 06:8E22: 9E 9A     .word _off053_spr_data_0x00DAAE_53_0D_01
- D 0 - I - 0x01AE34 06:8E24: 31 8E     .word loc_8E31_06_0D_loop
- D 0 - I - 0x01AE36 06:8E26: 00        .byte $00   ; 07 
- D 0 - I - 0x01AE37 06:8E27: 10        .byte $10   ; 08 



_off020_8E28_53_0C:
loc_8E28_06_0C_loop:
- - - - - - 0x01AE38 06:8E28: F2        .byte con_chr_bank_spr + $F2   ; 00 
- - - - - - 0x01AE39 06:8E29: 73        .byte con_chr_bank_spr + $73   ; 01 
- - - - - - 0x01AE3A 06:8E2A: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AE3B 06:8E2B: B8 9A     .word _off053_spr_data_0x00DAC8_53_0C_00
- - - - - - 0x01AE3D 06:8E2D: 16 8E     .word loc_8E16_06_0C_next
- - - - - - 0x01AE3F 06:8E2F: 00        .byte $00   ; 07 
- - - - - - 0x01AE40 06:8E30: 00        .byte $00   ; 08 



_off020_8E31_53_0D:
loc_8E31_06_0D_loop:
- D 0 - I - 0x01AE41 06:8E31: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE42 06:8E32: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AE43 06:8E33: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE44 06:8E34: B8 9A     .word _off053_spr_data_0x00DAC8_53_0D_00
- D 0 - I - 0x01AE46 06:8E36: 1F 8E     .word loc_8E1F_06_0D_next
- D 0 - I - 0x01AE48 06:8E38: 00        .byte $00   ; 07 
- D 0 - I - 0x01AE49 06:8E39: 10        .byte $10   ; 08 



_off020_8E3A_53_10:
loc_8E3A_06_10_loop:
- D 0 - I - 0x01AE4A 06:8E3A: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE4B 06:8E3B: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AE4C 06:8E3C: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE4D 06:8E3D: D2 9A     .word _off053_spr_data_0x00DAE2_53_10_00
- D 0 - I - 0x01AE4F 06:8E3F: 3A 8E     .word loc_8E3A_06_10_loop
- D 0 - I - 0x01AE51 06:8E41: 00        .byte $00   ; 07 
- D 0 - I - 0x01AE52 06:8E42: 80        .byte $80   ; 08 



_off020_8E43_53_11:
loc_8E43_06_11_loop:
- D 0 - I - 0x01AE53 06:8E43: F2        .byte con_chr_bank_spr + $F2   ; 00 
- D 0 - I - 0x01AE54 06:8E44: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AE55 06:8E45: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE56 06:8E46: D2 9A     .word _off053_spr_data_0x00DAE2_53_11_00
- D 0 - I - 0x01AE58 06:8E48: 43 8E     .word loc_8E43_06_11_loop
- D 0 - I - 0x01AE5A 06:8E4A: 00        .byte $00   ; 07 
- D 0 - I - 0x01AE5B 06:8E4B: 90        .byte $90   ; 08 



_off020_8E4C_53_12:
loc_8E4C_06_12_loop:
- D 0 - I - 0x01AE5C 06:8E4C: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AE5D 06:8E4D: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AE5E 06:8E4E: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE5F 06:8E4F: E6 9A     .word _off053_spr_data_0x00DAF6_53_12_00
- D 0 - I - 0x01AE61 06:8E51: 4C 8E     .word loc_8E4C_06_12_loop
- D 0 - I - 0x01AE63 06:8E53: 9C        .byte $9C   ; 07 
- D 0 - I - 0x01AE64 06:8E54: 08        .byte $08   ; 08 



_off020_8E55_53_13:
loc_8E55_06_13_loop:
- D 0 - I - 0x01AE65 06:8E55: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AE66 06:8E56: F3        .byte con_chr_bank_spr + $F3   ; 01 
- D 0 - I - 0x01AE67 06:8E57: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE68 06:8E58: E6 9A     .word _off053_spr_data_0x00DAF6_53_13_00
- D 0 - I - 0x01AE6A 06:8E5A: 55 8E     .word loc_8E55_06_13_loop
- D 0 - I - 0x01AE6C 06:8E5C: 9C        .byte $9C   ; 07 
- D 0 - I - 0x01AE6D 06:8E5D: 19        .byte $19   ; 08 



_off020_8E5E_xx_2A:
loc_8E5E_xx_2A_loop:
- - - - - - 0x01AE6E 06:8E5E: 80        .byte $80   ; 00 
- D 0 - I - 0x01AE6F 06:8E5F: 00        .byte $00   ; 01 
- D 0 - I - 0x01AE70 06:8E60: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE71 06:8E61: 5F 9A     .word _off053_spr_data_0x00DA6F_xx_2A_00
- - - - - - 0x01AE73 06:8E63: 5E 8E     .word loc_8E5E_xx_2A_loop
- D 0 - I - 0x01AE75 06:8E65: 03        .byte $03   ; 07 



_off020_8E66_xx_2B:
loc_8E66_xx_2B_loop:
- - - - - - 0x01AE76 06:8E66: 80        .byte $80   ; 00 
- D 0 - I - 0x01AE77 06:8E67: 80        .byte $80   ; 01 
- D 0 - I - 0x01AE78 06:8E68: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE79 06:8E69: 5F 9A     .word _off053_spr_data_0x00DA6F_xx_2B_00
- - - - - - 0x01AE7B 06:8E6B: 66 8E     .word loc_8E66_xx_2B_loop
- D 0 - I - 0x01AE7D 06:8E6D: 03        .byte $03   ; 07 



_off020_8E6E_xx_2C:
loc_8E6E_xx_2C_loop:
- - - - - - 0x01AE7E 06:8E6E: 80        .byte $80   ; 00 
- D 0 - I - 0x01AE7F 06:8E6F: 00        .byte $00   ; 01 
- D 0 - I - 0x01AE80 06:8E70: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE81 06:8E71: CB 99     .word _off053_spr_data_0x00D9DB_xx_2C_00
- - - - - - 0x01AE83 06:8E73: 6E 8E     .word loc_8E6E_xx_2C_loop
- D 0 - I - 0x01AE85 06:8E75: 03        .byte $03   ; 07 



_off020_8E76_xx_2D:
loc_8E76_xx_2D_loop:
- - - - - - 0x01AE86 06:8E76: 80        .byte $80   ; 00 
- D 0 - I - 0x01AE87 06:8E77: 80        .byte $80   ; 01 
- D 0 - I - 0x01AE88 06:8E78: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE89 06:8E79: CB 99     .word _off053_spr_data_0x00D9DB_xx_2D_00
- - - - - - 0x01AE8B 06:8E7B: 76 8E     .word loc_8E76_xx_2D_loop
- D 0 - I - 0x01AE8D 06:8E7D: 03        .byte $03   ; 07 



_off020_8E7E_xx_24:
loc_8E7E_xx_24_loop:
- - - - - - 0x01AE8E 06:8E7E: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AE8F 06:8E7F: 73        .byte $73   ; 01 
- D 0 - I - 0x01AE90 06:8E80: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AE91 06:8E81: 06 9B     .word _off053_spr_data_0x00DB16_xx_24_00
- - - - - - 0x01AE93 06:8E83: 7E 8E     .word loc_8E7E_xx_24_loop
- D 0 - I - 0x01AE95 06:8E85: 2D        .byte $2D   ; 07 



_off020_8E86_xx_25:
- - - - - - 0x01AE96 06:8E86: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AE97 06:8E87: 73        .byte $73   ; 01 
- D 0 - I - 0x01AE98 06:8E88: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AE99 06:8E89: 0E 9B     .word _off053_spr_data_0x00DB1E_xx_25_00
- D 0 - I - 0x01AE9B 06:8E8B: 96 8E     .word loc_8E96_xx_25_next
- D 0 - I - 0x01AE9D 06:8E8D: 00        .byte $00   ; 07 



_off020_8E8E_xx_26:
- - - - - - 0x01AE9E 06:8E8E: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AE9F 06:8E8F: F3        .byte $F3   ; 01 
- D 0 - I - 0x01AEA0 06:8E90: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AEA1 06:8E91: 13 9B     .word _off053_spr_data_0x00DB23_xx_26_00
- D 0 - I - 0x01AEA3 06:8E93: 9E 8E     .word loc_8E9E_xx_26_next
- D 0 - I - 0x01AEA5 06:8E95: 00        .byte $00   ; 07 



loc_8E96_xx_25_next:
loc_8E96_xx_25_loop:
- - - - - - 0x01AEA6 06:8E96: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AEA7 06:8E97: 73        .byte $73   ; 01 
- D 0 - I - 0x01AEA8 06:8E98: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AEA9 06:8E99: 18 9B     .word _off053_spr_data_0x00DB28_xx_25_01
- D 0 - I - 0x01AEAB 06:8E9B: 96 8E     .word loc_8E96_xx_25_loop
- D 0 - I - 0x01AEAD 06:8E9D: 00        .byte $00   ; 07 



loc_8E9E_xx_26_next:
loc_8E9E_xx_26_loop:
- - - - - - 0x01AEAE 06:8E9E: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AEAF 06:8E9F: F3        .byte $F3   ; 01 
- D 0 - I - 0x01AEB0 06:8EA0: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AEB1 06:8EA1: 1D 9B     .word _off053_spr_data_0x00DB2D_xx_26_02
- D 0 - I - 0x01AEB3 06:8EA3: 9E 8E     .word loc_8E9E_xx_26_loop
- D 0 - I - 0x01AEB5 06:8EA5: 00        .byte $00   ; 07 



_off020_8EA6_56_00:
loc_8EA6_0C_00_loop:
- - - - - - 0x01AEB6 06:8EA6: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AEB7 06:8EA7: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AEB8 06:8EA8: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AEB9 06:8EA9: 22 9B     .word _off053_spr_data_0x00DB32_56_00_00
- - - - - - 0x01AEBB 06:8EAB: A6 8E     .word loc_8EA6_0C_00_loop
- D 0 - I - 0x01AEBD 06:8EAD: 00        .byte $00   ; 07 
- D 0 - I - 0x01AEBE 06:8EAE: 00        .byte $00   ; 08 



_off020_8EAF_5A_00:
loc_8EAF_14_00_loop:
- - - - - - 0x01AEBF 06:8EAF: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AEC0 06:8EB0: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AEC1 06:8EB1: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AEC2 06:8EB2: 2A 9B     .word _off053_spr_data_0x00DB3A_5A_00_00
- - - - - - 0x01AEC4 06:8EB4: AF 8E     .word loc_8EAF_14_00_loop
- D 0 - I - 0x01AEC6 06:8EB6: 00        .byte $00   ; 07 
- D 0 - I - 0x01AEC7 06:8EB7: 00        .byte $00   ; 08 



_off020_8EB8_59_00:
loc_8EB8_12_00_loop:
- - - - - - 0x01AEC8 06:8EB8: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AEC9 06:8EB9: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AECA 06:8EBA: 05        .byte $05   ; 02 next animation delay
- D 0 - I - 0x01AECB 06:8EBB: 35 9B     .word _off053_spr_data_0x00DB45_59_00_00
- D 0 - I - 0x01AECD 06:8EBD: C1 8E     .word loc_8EC1_12_00_next
- D 0 - I - 0x01AECF 06:8EBF: AD        .byte $AD   ; 07 
- D 0 - I - 0x01AED0 06:8EC0: 00        .byte $00   ; 08 



loc_8EC1_12_00_next:
- - - - - - 0x01AED1 06:8EC1: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AED2 06:8EC2: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AED3 06:8EC3: 05        .byte $05   ; 02 next animation delay
- D 0 - I - 0x01AED4 06:8EC4: 3A 9B     .word _off053_spr_data_0x00DB4A_59_00_01
- D 0 - I - 0x01AED6 06:8EC6: CA 8E     .word loc_8ECA_12_00_next
- D 0 - I - 0x01AED8 06:8EC8: AD        .byte $AD   ; 07 
- D 0 - I - 0x01AED9 06:8EC9: 00        .byte $00   ; 08 



loc_8ECA_12_00_next:
- - - - - - 0x01AEDA 06:8ECA: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AEDB 06:8ECB: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AEDC 06:8ECC: 05        .byte $05   ; 02 next animation delay
- D 0 - I - 0x01AEDD 06:8ECD: 42 9B     .word _off053_spr_data_0x00DB52_59_00_02
- D 0 - I - 0x01AEDF 06:8ECF: B8 8E     .word loc_8EB8_12_00_loop
- D 0 - I - 0x01AEE1 06:8ED1: AD        .byte $AD   ; 07 
- D 0 - I - 0x01AEE2 06:8ED2: 40        .byte $40   ; 08 



_off020_8ED3_57_00:
loc_8ED3_0E_00_loop:
- - - - - - 0x01AEE3 06:8ED3: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AEE4 06:8ED4: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AEE5 06:8ED5: 68        .byte $68   ; 02 next animation delay
- D 0 - I - 0x01AEE6 06:8ED6: 4A 9B     .word _off053_spr_data_0x00DB5A_57_00_00
- D 0 - I - 0x01AEE8 06:8ED8: DC 8E     .word loc_8EDC_0E_00_next
- D 0 - I - 0x01AEEA 06:8EDA: 2D        .byte $2D   ; 07 
- D 0 - I - 0x01AEEB 06:8EDB: 00        .byte $00   ; 08 



loc_8EDC_0E_00_next:
- - - - - - 0x01AEEC 06:8EDC: F0        .byte con_chr_bank_spr + $F0   ; 00 
- D 0 - I - 0x01AEED 06:8EDD: 73        .byte con_chr_bank_spr + $73   ; 01 
- D 0 - I - 0x01AEEE 06:8EDE: 18        .byte $18   ; 02 next animation delay
- D 0 - I - 0x01AEEF 06:8EDF: 4A 9B     .word _off053_spr_data_0x00DB5A_57_00_01
- D 0 - I - 0x01AEF1 06:8EE1: D3 8E     .word loc_8ED3_0E_00_loop
- D 0 - I - 0x01AEF3 06:8EE3: 2D        .byte $2D   ; 07 
- D 0 - I - 0x01AEF4 06:8EE4: A0        .byte $A0   ; 08 



_off020_8EE5_xx_27:
loc_8EE5_xx_27_loop:
- - - - - - 0x01AEF5 06:8EE5: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AEF6 06:8EE6: 73        .byte $73   ; 01 
- D 0 - I - 0x01AEF7 06:8EE7: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01AEF8 06:8EE8: 52 9B     .word _off053_spr_data_0x00DB62_xx_27_00
- D 0 - I - 0x01AEFA 06:8EEA: F5 8E     .word loc_8EF5_xx_27_next
- D 0 - I - 0x01AEFC 06:8EEC: 03        .byte $03   ; 07 



_off020_8EED_xx_28:
loc_8EED_xx_28_loop:
- - - - - - 0x01AEFD 06:8EED: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AEFE 06:8EEE: F3        .byte $F3   ; 01 
- D 0 - I - 0x01AEFF 06:8EEF: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01AF00 06:8EF0: 52 9B     .word _off053_spr_data_0x00DB62_xx_28_00
- D 0 - I - 0x01AF02 06:8EF2: FD 8E     .word loc_8EFD_xx_28_next
- D 0 - I - 0x01AF04 06:8EF4: 03        .byte $03   ; 07 



loc_8EF5_xx_27_next:
- - - - - - 0x01AF05 06:8EF5: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AF06 06:8EF6: 73        .byte $73   ; 01 
- D 0 - I - 0x01AF07 06:8EF7: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01AF08 06:8EF8: 57 9B     .word _off053_spr_data_0x00DB67_xx_27_01
- D 0 - I - 0x01AF0A 06:8EFA: E5 8E     .word loc_8EE5_xx_27_loop
- D 0 - I - 0x01AF0C 06:8EFC: 03        .byte $03   ; 07 



loc_8EFD_xx_28_next:
- - - - - - 0x01AF0D 06:8EFD: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AF0E 06:8EFE: F3        .byte $F3   ; 01 
- D 0 - I - 0x01AF0F 06:8EFF: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01AF10 06:8F00: 57 9B     .word _off053_spr_data_0x00DB67_xx_28_01
- D 0 - I - 0x01AF12 06:8F02: ED 8E     .word loc_8EED_xx_28_loop
- D 0 - I - 0x01AF14 06:8F04: 03        .byte $03   ; 07 



_off020_8F05_xx_29:
loc_8F05_xx_29_loop:
- - - - - - 0x01AF15 06:8F05: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AF16 06:8F06: 73        .byte $73   ; 01 
- D 0 - I - 0x01AF17 06:8F07: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01AF18 06:8F08: 5C 9B     .word _off053_spr_data_0x00DB6C_xx_29_00
- D 0 - I - 0x01AF1A 06:8F0A: 0D 8F     .word loc_8F0D_xx_29_next
- D 0 - I - 0x01AF1C 06:8F0C: 03        .byte $03   ; 07 



loc_8F0D_xx_29_next:
- - - - - - 0x01AF1D 06:8F0D: F0        .byte $F0   ; 00 
- D 0 - I - 0x01AF1E 06:8F0E: 73        .byte $73   ; 01 
- D 0 - I - 0x01AF1F 06:8F0F: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01AF20 06:8F10: 61 9B     .word _off053_spr_data_0x00DB71_xx_29_01
- D 0 - I - 0x01AF22 06:8F12: 05 8F     .word loc_8F05_xx_29_loop
- D 0 - I - 0x01AF24 06:8F14: 03        .byte $03   ; 07 



_off020_8F15_52_00:
loc_8F15_04_0A_next:
loc_8F15_04_0E_next:
- D 0 - I - 0x01AF25 06:8F15: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF26 06:8F16: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF27 06:8F17: 04        .byte $04   ; 02 next animation delay
- D 0 - I - 0x01AF28 06:8F18: 66 9B     .word _off053_spr_data_0x00DB76_52_00_00
- - - - - - 0x01AF2A 06:8F1A: 27 8F     .word loc_8F27_04_00_next
- D 0 - I - 0x01AF2C 06:8F1C: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF2D 06:8F1D: 00        .byte $00   ; 08 



_off020_8F1E_52_01:
loc_8F1E_04_0B_next:
loc_8F1E_04_0F_next:
- D 0 - I - 0x01AF2E 06:8F1E: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF2F 06:8F1F: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF30 06:8F20: 04        .byte $04   ; 02 next animation delay
- D 0 - I - 0x01AF31 06:8F21: 66 9B     .word _off053_spr_data_0x00DB76_52_01_00
- - - - - - 0x01AF33 06:8F23: 30 8F     .word loc_8F30_04_05_loop
- D 0 - I - 0x01AF35 06:8F25: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF36 06:8F26: 10        .byte $10   ; 08 



_off020_8F27_52_02:
_off020_8F27_52_03:
_off020_8F27_52_04:
loc_8F27_04_00_next:
loc_8F27_04_04_loop:
- D 0 - I - 0x01AF37 06:8F27: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF38 06:8F28: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF39 06:8F29: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AF3A 06:8F2A: 8C 9B     .word _off053_spr_data_0x00DB9C_52_04_00
- D 0 - I - 0x01AF3C 06:8F2C: 39 8F     .word loc_8F39_04_04_next
- D 0 - I - 0x01AF3E 06:8F2E: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AF3F 06:8F2F: 00        .byte $00   ; 08 



_off020_8F30_52_05:
loc_8F30_04_05_loop:
- D 0 - I - 0x01AF40 06:8F30: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF41 06:8F31: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF42 06:8F32: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01AF43 06:8F33: 8C 9B     .word _off053_spr_data_0x00DB9C_52_05_00
- D 0 - I - 0x01AF45 06:8F35: 42 8F     .word loc_8F42_04_05_next
- D 0 - I - 0x01AF47 06:8F37: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AF48 06:8F38: 10        .byte $10   ; 08 



loc_8F39_04_04_next:
- D 0 - I - 0x01AF49 06:8F39: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF4A 06:8F3A: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF4B 06:8F3B: 0C        .byte $0C   ; 02 next animation delay
- D 0 - I - 0x01AF4C 06:8F3C: AF 9B     .word _off053_spr_data_0x00DBBF_52_04_01
- D 0 - I - 0x01AF4E 06:8F3E: 4B 8F     .word loc_8F4B_04_04_next
- D 0 - I - 0x01AF50 06:8F40: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AF51 06:8F41: 80        .byte $80   ; 08 



loc_8F42_04_05_next:
- D 0 - I - 0x01AF52 06:8F42: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF53 06:8F43: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF54 06:8F44: 0C        .byte $0C   ; 02 next animation delay
- D 0 - I - 0x01AF55 06:8F45: AF 9B     .word _off053_spr_data_0x00DBBF_52_05_01
- D 0 - I - 0x01AF57 06:8F47: 54 8F     .word loc_8F54_04_05_next
- D 0 - I - 0x01AF59 06:8F49: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AF5A 06:8F4A: 90        .byte $90   ; 08 



loc_8F4B_04_04_next:
- D 0 - I - 0x01AF5B 06:8F4B: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF5C 06:8F4C: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF5D 06:8F4D: 20        .byte $20   ; 02 next animation delay
- D 0 - I - 0x01AF5E 06:8F4E: 8C 9B     .word _off053_spr_data_0x00DB9C_52_04_02
- - - - - - 0x01AF60 06:8F50: 27 8F     .word loc_8F27_04_04_loop
- D 0 - I - 0x01AF62 06:8F52: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AF63 06:8F53: 40        .byte $40   ; 08 



loc_8F54_04_05_next:
- D 0 - I - 0x01AF64 06:8F54: F4        .byte con_chr_bank_spr + $F4   ; 00 
- D 0 - I - 0x01AF65 06:8F55: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF66 06:8F56: 20        .byte $20   ; 02 next animation delay
- D 0 - I - 0x01AF67 06:8F57: 8C 9B     .word _off053_spr_data_0x00DB9C_52_05_02
- D 0 - I - 0x01AF69 06:8F59: 30 8F     .word loc_8F30_04_05_loop
- D 0 - I - 0x01AF6B 06:8F5B: 1E        .byte $1E   ; 07 
- D 0 - I - 0x01AF6C 06:8F5C: 50        .byte $50   ; 08 



_off020_8F5D_52_08:
loc_8F5D_04_06_next:
loc_8F5D_04_08_loop:
- D 0 - I - 0x01AF6D 06:8F5D: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AF6E 06:8F5E: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF6F 06:8F5F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AF70 06:8F60: D5 9B     .word _off053_spr_data_0x00DBE5_52_08_00
- D 0 - I - 0x01AF72 06:8F62: 6F 8F     .word loc_8F6F_04_08_next
- D 0 - I - 0x01AF74 06:8F64: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF75 06:8F65: 06        .byte $06   ; 08 



_off020_8F66_52_09:
loc_8F66_04_07_next:
loc_8F66_04_09_loop:
- D 0 - I - 0x01AF76 06:8F66: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AF77 06:8F67: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF78 06:8F68: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AF79 06:8F69: D5 9B     .word _off053_spr_data_0x00DBE5_52_09_00
- D 0 - I - 0x01AF7B 06:8F6B: 78 8F     .word loc_8F78_04_09_next
- D 0 - I - 0x01AF7D 06:8F6D: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF7E 06:8F6E: 17        .byte $17   ; 08 



loc_8F6F_04_08_next:
- D 0 - I - 0x01AF7F 06:8F6F: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AF80 06:8F70: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF81 06:8F71: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AF82 06:8F72: FE 9B     .word _off053_spr_data_0x00DC0E_52_08_01
- D 0 - I - 0x01AF84 06:8F74: 81 8F     .word loc_8F81_04_08_next
- D 0 - I - 0x01AF86 06:8F76: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF87 06:8F77: 86        .byte $86   ; 08 



loc_8F78_04_09_next:
- D 0 - I - 0x01AF88 06:8F78: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AF89 06:8F79: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF8A 06:8F7A: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AF8B 06:8F7B: FE 9B     .word _off053_spr_data_0x00DC0E_52_09_01
- D 0 - I - 0x01AF8D 06:8F7D: 8A 8F     .word loc_8F8A_04_09_next
- D 0 - I - 0x01AF8F 06:8F7F: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF90 06:8F80: 97        .byte $97   ; 08 



loc_8F81_04_08_next:
- D 0 - I - 0x01AF91 06:8F81: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AF92 06:8F82: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AF93 06:8F83: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01AF94 06:8F84: D5 9B     .word _off053_spr_data_0x00DBE5_52_08_02
- D 0 - I - 0x01AF96 06:8F86: 5D 8F     .word loc_8F5D_04_08_loop
- D 0 - I - 0x01AF98 06:8F88: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AF99 06:8F89: 46        .byte $46   ; 08 



loc_8F8A_04_09_next:
- D 0 - I - 0x01AF9A 06:8F8A: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AF9B 06:8F8B: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AF9C 06:8F8C: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01AF9D 06:8F8D: D5 9B     .word _off053_spr_data_0x00DBE5_52_09_02
- D 0 - I - 0x01AF9F 06:8F8F: 66 8F     .word loc_8F66_04_09_loop
- D 0 - I - 0x01AFA1 06:8F91: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01AFA2 06:8F92: 57        .byte $57   ; 08 



_off020_8F93_52_06:
- D 0 - I - 0x01AFA3 06:8F93: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AFA4 06:8F94: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AFA5 06:8F95: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFA6 06:8F96: 2A 9C     .word _off053_spr_data_0x00DC3A_52_06_00
- D 0 - I - 0x01AFA8 06:8F98: 5D 8F     .word loc_8F5D_04_08_loop
- D 0 - I - 0x01AFAA 06:8F9A: 23        .byte $23   ; 07 
- D 0 - I - 0x01AFAB 06:8F9B: 02        .byte $02   ; 08 



_off020_8F9C_52_07:
- D 0 - I - 0x01AFAC 06:8F9C: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AFAD 06:8F9D: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AFAE 06:8F9E: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFAF 06:8F9F: 2A 9C     .word _off053_spr_data_0x00DC3A_52_07_00
- D 0 - I - 0x01AFB1 06:8FA1: 66 8F     .word loc_8F66_04_07_next
- D 0 - I - 0x01AFB3 06:8FA3: 23        .byte $23   ; 07 
- D 0 - I - 0x01AFB4 06:8FA4: 13        .byte $13   ; 08 



_off020_8FA5_52_0E:
- D 0 - I - 0x01AFB5 06:8FA5: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AFB6 06:8FA6: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AFB7 06:8FA7: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFB8 06:8FA8: 2A 9C     .word _off053_spr_data_0x00DC3A_52_0E_00
- - - - - - 0x01AFBA 06:8FAA: 15 8F     .word loc_8F15_04_0E_next
- D 0 - I - 0x01AFBC 06:8FAC: 23        .byte $23   ; 07 
- D 0 - I - 0x01AFBD 06:8FAD: 01        .byte $01   ; 08 



_off020_8FAE_52_0F:
- D 0 - I - 0x01AFBE 06:8FAE: F5        .byte con_chr_bank_spr + $F5   ; 00 
- D 0 - I - 0x01AFBF 06:8FAF: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AFC0 06:8FB0: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFC1 06:8FB1: 2A 9C     .word _off053_spr_data_0x00DC3A_52_0F_00
- - - - - - 0x01AFC3 06:8FB3: 1E 8F     .word loc_8F1E_04_0F_next
- D 0 - I - 0x01AFC5 06:8FB5: 23        .byte $23   ; 07 
- D 0 - I - 0x01AFC6 06:8FB6: 11        .byte $11   ; 08 



_off020_8FB7_52_0A:
- D 0 - I - 0x01AFC7 06:8FB7: F6        .byte con_chr_bank_spr + $F6   ; 00 
- D 0 - I - 0x01AFC8 06:8FB8: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AFC9 06:8FB9: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFCA 06:8FBA: 4D 9C     .word _off053_spr_data_0x00DC5D_52_0A_00
- - - - - - 0x01AFCC 06:8FBC: 15 8F     .word loc_8F15_04_0A_next
- D 0 - I - 0x01AFCE 06:8FBE: 00        .byte $00   ; 07 
- D 0 - I - 0x01AFCF 06:8FBF: 0A        .byte $0A   ; 08 



_off020_8FC0_52_0B:
- D 0 - I - 0x01AFD0 06:8FC0: F6        .byte con_chr_bank_spr + $F6   ; 00 
- D 0 - I - 0x01AFD1 06:8FC1: F7        .byte con_chr_bank_spr + $F7   ; 01 
- D 0 - I - 0x01AFD2 06:8FC2: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFD3 06:8FC3: 4D 9C     .word _off053_spr_data_0x00DC5D_52_0B_00
- - - - - - 0x01AFD5 06:8FC5: 1E 8F     .word loc_8F1E_04_0B_next
- D 0 - I - 0x01AFD7 06:8FC7: 00        .byte $00   ; 07 
- D 0 - I - 0x01AFD8 06:8FC8: 1B        .byte $1B   ; 08 



_off020_8FC9_52_0C:
loc_8FC9_04_0C_loop:
- D 0 - I - 0x01AFD9 06:8FC9: F6        .byte con_chr_bank_spr + $F6   ; 00 
- D 0 - I - 0x01AFDA 06:8FCA: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AFDB 06:8FCB: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFDC 06:8FCC: 70 9C     .word _off053_spr_data_0x00DC80_52_0C_00
- D 0 - I - 0x01AFDE 06:8FCE: DB 8F     .word loc_8FDB_04_0C_next
- D 0 - I - 0x01AFE0 06:8FD0: 00        .byte $00   ; 07 
- D 0 - I - 0x01AFE1 06:8FD1: 00        .byte $00   ; 08 



_off020_8FD2_52_0D:
loc_8FD2_04_0D_loop:
- - - - - - 0x01AFE2 06:8FD2: F6        .byte con_chr_bank_spr + $F6   ; 00 
- - - - - - 0x01AFE3 06:8FD3: F7        .byte con_chr_bank_spr + $F7   ; 01 
- - - - - - 0x01AFE4 06:8FD4: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AFE5 06:8FD5: 70 9C     .word _off053_spr_data_0x00DC80_52_0D_00
- - - - - - 0x01AFE7 06:8FD7: E4 8F     .word loc_8FE4_04_0D_next
- - - - - - 0x01AFE9 06:8FD9: 00        .byte $00   ; 07 
- - - - - - 0x01AFEA 06:8FDA: 10        .byte $10   ; 08 



loc_8FDB_04_0C_next:
- D 0 - I - 0x01AFEB 06:8FDB: F6        .byte con_chr_bank_spr + $F6   ; 00 
- D 0 - I - 0x01AFEC 06:8FDC: 77        .byte con_chr_bank_spr + $77   ; 01 
- D 0 - I - 0x01AFED 06:8FDD: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01AFEE 06:8FDE: 93 9C     .word _off053_spr_data_0x00DCA3_52_0C_01
- D 0 - I - 0x01AFF0 06:8FE0: C9 8F     .word loc_8FC9_04_0C_loop
- D 0 - I - 0x01AFF2 06:8FE2: 00        .byte $00   ; 07 
- D 0 - I - 0x01AFF3 06:8FE3: 80        .byte $80   ; 08 



loc_8FE4_04_0D_next:
- - - - - - 0x01AFF4 06:8FE4: F6        .byte con_chr_bank_spr + $F6   ; 00 
- - - - - - 0x01AFF5 06:8FE5: F7        .byte con_chr_bank_spr + $F7   ; 01 
- - - - - - 0x01AFF6 06:8FE6: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01AFF7 06:8FE7: 93 9C     .word _off053_spr_data_0x00DCA3_52_0D_01
- - - - - - 0x01AFF9 06:8FE9: D2 8F     .word loc_8FD2_04_0D_loop
- - - - - - 0x01AFFB 06:8FEB: 00        .byte $00   ; 07 
- - - - - - 0x01AFFC 06:8FEC: 90        .byte $90   ; 08 



_off020_8FED_xx_18:
loc_8FED_xx_18_loop:
- - - - - - 0x01AFFD 06:8FED: F4        .byte $F4   ; 00 
- D 0 - I - 0x01AFFE 06:8FEE: 77        .byte $77   ; 01 
- D 0 - I - 0x01AFFF 06:8FEF: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B000 06:8FF0: AD 9C     .word _off053_spr_data_0x00DCBD_xx_18_00
- - - - - - 0x01B002 06:8FF2: ED 8F     .word loc_8FED_xx_18_loop
- D 0 - I - 0x01B004 06:8FF4: 03        .byte $03   ; 07 



_off020_8FF5_xx_19:
loc_8FF5_xx_19_loop:
- - - - - - 0x01B005 06:8FF5: F4        .byte $F4   ; 00 
- - - - - - 0x01B006 06:8FF6: F7        .byte $F7   ; 01 
- - - - - - 0x01B007 06:8FF7: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B008 06:8FF8: AD 9C     .word _off053_spr_data_0x00DCBD_xx_19_00
- - - - - - 0x01B00A 06:8FFA: F5 8F     .word loc_8FF5_xx_19_loop
- - - - - - 0x01B00C 06:8FFC: 03        .byte $03   ; 07 



_off020_8FFD_xx_1A:
loc_8FFD_xx_1A_loop:
- - - - - - 0x01B00D 06:8FFD: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B00E 06:8FFE: 77        .byte $77   ; 01 
- D 0 - I - 0x01B00F 06:8FFF: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B010 06:9000: B5 9C     .word _off053_spr_data_0x00DCC5_xx_1A_00
- - - - - - 0x01B012 06:9002: FD 8F     .word loc_8FFD_xx_1A_loop
- D 0 - I - 0x01B014 06:9004: 03        .byte $03   ; 07 



_off020_9005_xx_1B:
loc_9005_xx_1B_loop:
- - - - - - 0x01B015 06:9005: F4        .byte $F4   ; 00 
- - - - - - 0x01B016 06:9006: F7        .byte $F7   ; 01 
- - - - - - 0x01B017 06:9007: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B018 06:9008: B5 9C     .word _off053_spr_data_0x00DCC5_xx_1B_00
- - - - - - 0x01B01A 06:900A: 05 90     .word loc_9005_xx_1B_loop
- - - - - - 0x01B01C 06:900C: 03        .byte $03   ; 07 



_off020_900D_xx_1C:
loc_900D_xx_1C_loop:
loc_900D_xx_1E_next:
- - - - - - 0x01B01D 06:900D: F4        .byte $F4   ; 00 
- - - - - - 0x01B01E 06:900E: 77        .byte $77   ; 01 
- - - - - - 0x01B01F 06:900F: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B020 06:9010: BD 9C     .word _off053_spr_data_0x00DCCD_xx_1C_00
- - - - - - 0x01B022 06:9012: 0D 90     .word loc_900D_xx_1C_loop
- - - - - - 0x01B024 06:9014: 03        .byte $03   ; 07 



_off020_9015_xx_1D:
loc_9015_xx_1D_loop:
loc_9015_xx_1F_next:
- - - - - - 0x01B025 06:9015: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B026 06:9016: F7        .byte $F7   ; 01 
- D 0 - I - 0x01B027 06:9017: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B028 06:9018: BD 9C     .word _off053_spr_data_0x00DCCD_xx_1D_00
- - - - - - 0x01B02A 06:901A: 15 90     .word loc_9015_xx_1D_loop
- D 0 - I - 0x01B02C 06:901C: 03        .byte $03   ; 07 



_off020_901D_xx_1E:
- - - - - - 0x01B02D 06:901D: F4        .byte $F4   ; 00 
- - - - - - 0x01B02E 06:901E: 77        .byte $77   ; 01 
- - - - - - 0x01B02F 06:901F: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B030 06:9020: C5 9C     .word _off053_spr_data_0x00DCD5_xx_1E_00
- - - - - - 0x01B032 06:9022: 0D 90     .word loc_900D_xx_1E_next
- - - - - - 0x01B034 06:9024: 03        .byte $03   ; 07 



_off020_9025_xx_1F:
- - - - - - 0x01B035 06:9025: F4        .byte $F4   ; 00 
- - - - - - 0x01B036 06:9026: F7        .byte $F7   ; 01 
- - - - - - 0x01B037 06:9027: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B038 06:9028: C5 9C     .word _off053_spr_data_0x00DCD5_xx_1F_00
- - - - - - 0x01B03A 06:902A: 15 90     .word loc_9015_xx_1F_next
- - - - - - 0x01B03C 06:902C: 03        .byte $03   ; 07 



_off020_902D_xx_20:
_off020_902D_xx_21:
_off020_902D_xx_22:
- - - - - - 0x01B03D 06:902D: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B03E 06:902E: 77        .byte $77   ; 01 
- D 0 - I - 0x01B03F 06:902F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B040 06:9030: D5 9C     .word _off053_spr_data_0x00DCE5_xx_22_00
- D 0 - I - 0x01B042 06:9032: 3D 90     .word loc_903D_xx_22_next
- D 0 - I - 0x01B044 06:9034: 03        .byte $03   ; 07 



_off020_9035_xx_23:
- - - - - - 0x01B045 06:9035: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B046 06:9036: F7        .byte $F7   ; 01 
- D 0 - I - 0x01B047 06:9037: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B048 06:9038: D5 9C     .word _off053_spr_data_0x00DCE5_xx_23_00
- D 0 - I - 0x01B04A 06:903A: 45 90     .word loc_9045_xx_23_next
- D 0 - I - 0x01B04C 06:903C: 03        .byte $03   ; 07 



loc_903D_xx_22_next:
- - - - - - 0x01B04D 06:903D: F4        .byte $F4   ; 00 
- - - - - - 0x01B04E 06:903E: 77        .byte $77   ; 01 
- D 0 - I - 0x01B04F 06:903F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B050 06:9040: DA 9C     .word _off053_spr_data_0x00DCEA_xx_22_01
- - - - - - 0x01B052 06:9042: 4D 90     .word loc_904D_xx_22_next
- D 0 - I - 0x01B054 06:9044: 03        .byte $03   ; 07 



loc_9045_xx_23_next:
- - - - - - 0x01B055 06:9045: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B056 06:9046: F7        .byte $F7   ; 01 
- D 0 - I - 0x01B057 06:9047: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B058 06:9048: DA 9C     .word _off053_spr_data_0x00DCEA_xx_23_01
- D 0 - I - 0x01B05A 06:904A: 55 90     .word loc_9055_xx_23_next
- D 0 - I - 0x01B05C 06:904C: 03        .byte $03   ; 07 



loc_904D_xx_22_next:
loc_904D_xx_22_loop:
- - - - - - 0x01B05D 06:904D: F4        .byte $F4   ; 00 
- - - - - - 0x01B05E 06:904E: 77        .byte $77   ; 01 
- - - - - - 0x01B05F 06:904F: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B060 06:9050: E2 9C     .word _off053_spr_data_0x00DCF2_xx_22_02
- - - - - - 0x01B062 06:9052: 4D 90     .word loc_904D_xx_22_loop
- - - - - - 0x01B064 06:9054: 03        .byte $03   ; 07 



loc_9055_xx_23_next:
loc_9055_xx_23_loop:
- - - - - - 0x01B065 06:9055: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B066 06:9056: F7        .byte $F7   ; 01 
- D 0 - I - 0x01B067 06:9057: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B068 06:9058: E2 9C     .word _off053_spr_data_0x00DCF2_xx_23_02
- D 0 - I - 0x01B06A 06:905A: 55 90     .word loc_9055_xx_23_loop
- D 0 - I - 0x01B06C 06:905C: 03        .byte $03   ; 07 



_off020_905D_xx_17:
loc_905D_xx_17_loop:
- - - - - - 0x01B06D 06:905D: F4        .byte $F4   ; 00 
- - - - - - 0x01B06E 06:905E: 77        .byte $77   ; 01 
- - - - - - 0x01B06F 06:905F: 02        .byte $02   ; 02 next animation delay
- - - - - - 0x01B070 06:9060: ED 9C     .word _off053_spr_data_0x00DCFD_xx_17_00
- - - - - - 0x01B072 06:9062: 65 90     .word loc_9065_xx_17_next
- - - - - - 0x01B074 06:9064: 03        .byte $03   ; 07 



loc_9065_xx_17_next:
- - - - - - 0x01B075 06:9065: F4        .byte $F4   ; 00 
- - - - - - 0x01B076 06:9066: 77        .byte $77   ; 01 
- - - - - - 0x01B077 06:9067: 02        .byte $02   ; 02 next animation delay
- - - - - - 0x01B078 06:9068: F2 9C     .word _off053_spr_data_0x00DD02_xx_17_01
- - - - - - 0x01B07A 06:906A: 6D 90     .word loc_906D_xx_17_next
- - - - - - 0x01B07C 06:906C: 03        .byte $03   ; 07 



loc_906D_xx_17_next:
- - - - - - 0x01B07D 06:906D: F4        .byte $F4   ; 00 
- - - - - - 0x01B07E 06:906E: 77        .byte $77   ; 01 
- - - - - - 0x01B07F 06:906F: 02        .byte $02   ; 02 next animation delay
- - - - - - 0x01B080 06:9070: F7 9C     .word _off053_spr_data_0x00DD07_xx_17_02
- - - - - - 0x01B082 06:9072: 5D 90     .word loc_905D_xx_17_loop
- - - - - - 0x01B084 06:9074: 03        .byte $03   ; 07 



_off020_9075_xx_12:
loc_9075_xx_12_loop:
- - - - - - 0x01B085 06:9075: F4        .byte $F4   ; 00 
- - - - - - 0x01B086 06:9076: 77        .byte $77   ; 01 
- - - - - - 0x01B087 06:9077: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B088 06:9078: FC 9C     .word _off053_spr_data_0x00DD0C_xx_12_00
- - - - - - 0x01B08A 06:907A: 75 90     .word loc_9075_xx_12_loop
- - - - - - 0x01B08C 06:907C: 03        .byte $03   ; 07 



_off020_907D_xx_13:
loc_907D_xx_13_loop:
- - - - - - 0x01B08D 06:907D: F4        .byte $F4   ; 00 
- - - - - - 0x01B08E 06:907E: F7        .byte $F7   ; 01 
- - - - - - 0x01B08F 06:907F: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B090 06:9080: FC 9C     .word _off053_spr_data_0x00DD0C_xx_13_00
- - - - - - 0x01B092 06:9082: 7D 90     .word loc_907D_xx_13_loop
- - - - - - 0x01B094 06:9084: 03        .byte $03   ; 07 



_off020_9085_xx_16:
loc_9085_xx_16_loop:
- - - - - - 0x01B095 06:9085: F4        .byte $F4   ; 00 
- D 0 - I - 0x01B096 06:9086: 77        .byte $77   ; 01 
- D 0 - I - 0x01B097 06:9087: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B098 06:9088: 04 9D     .word _off053_spr_data_0x00DD14_xx_16_00
- - - - - - 0x01B09A 06:908A: 85 90     .word loc_9085_xx_16_loop
- D 0 - I - 0x01B09C 06:908C: 03        .byte $03   ; 07 



_off020_908D_xx_14:
loc_908D_xx_14_loop:
- - - - - - 0x01B09D 06:908D: F4        .byte $F4   ; 00 
- - - - - - 0x01B09E 06:908E: 77        .byte $77   ; 01 
- - - - - - 0x01B09F 06:908F: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B0A0 06:9090: 09 9D     .word _off053_spr_data_0x00DD19_xx_14_00
- - - - - - 0x01B0A2 06:9092: 8D 90     .word loc_908D_xx_14_loop
- - - - - - 0x01B0A4 06:9094: 03        .byte $03   ; 07 



_off020_9095_xx_15:
loc_9095_xx_15_loop:
- - - - - - 0x01B0A5 06:9095: F4        .byte $F4   ; 00 
- - - - - - 0x01B0A6 06:9096: F7        .byte $F7   ; 01 
- - - - - - 0x01B0A7 06:9097: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B0A8 06:9098: 09 9D     .word _off053_spr_data_0x00DD19_xx_15_00
- - - - - - 0x01B0AA 06:909A: 95 90     .word loc_9095_xx_15_loop
- - - - - - 0x01B0AC 06:909C: 03        .byte $03   ; 07 



_off020_909D_55_02:
loc_909D_0A_02_loop:
- D 0 - I - 0x01B0AD 06:909D: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0AE 06:909E: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B0AF 06:909F: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0B0 06:90A0: 11 9D     .word _off053_spr_data_0x00DD21_55_02_00
- D 0 - I - 0x01B0B2 06:90A2: AF 90     .word loc_90AF_0A_02_next
- D 0 - I - 0x01B0B4 06:90A4: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0B5 06:90A5: 0C        .byte $0C   ; 08 



_off020_90A6_55_03:
loc_90A6_0A_03_loop:
- D 0 - I - 0x01B0B6 06:90A6: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0B7 06:90A7: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B0B8 06:90A8: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0B9 06:90A9: 11 9D     .word _off053_spr_data_0x00DD21_55_03_00
- D 0 - I - 0x01B0BB 06:90AB: B8 90     .word loc_90B8_0A_03_next
- D 0 - I - 0x01B0BD 06:90AD: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0BE 06:90AE: 1D        .byte $1D   ; 08 



loc_90AF_0A_02_next:
- D 0 - I - 0x01B0BF 06:90AF: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0C0 06:90B0: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B0C1 06:90B1: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0C2 06:90B2: 36 9D     .word _off053_spr_data_0x00DD46_55_02_01
- D 0 - I - 0x01B0C4 06:90B4: C1 90     .word loc_90C1_0A_02_next
- D 0 - I - 0x01B0C6 06:90B6: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0C7 06:90B7: 8C        .byte $8C   ; 08 



loc_90B8_0A_03_next:
- D 0 - I - 0x01B0C8 06:90B8: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0C9 06:90B9: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B0CA 06:90BA: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0CB 06:90BB: 36 9D     .word _off053_spr_data_0x00DD46_55_03_01
- D 0 - I - 0x01B0CD 06:90BD: CA 90     .word loc_90CA_0A_03_next
- D 0 - I - 0x01B0CF 06:90BF: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0D0 06:90C0: 9D        .byte $9D   ; 08 



loc_90C1_0A_02_next:
- D 0 - I - 0x01B0D1 06:90C1: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0D2 06:90C2: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B0D3 06:90C3: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0D4 06:90C4: 55 9D     .word _off053_spr_data_0x00DD65_55_02_02
- D 0 - I - 0x01B0D6 06:90C6: D3 90     .word loc_90D3_0A_02_next
- D 0 - I - 0x01B0D8 06:90C8: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0D9 06:90C9: 0C        .byte $0C   ; 08 



loc_90CA_0A_03_next:
- D 0 - I - 0x01B0DA 06:90CA: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0DB 06:90CB: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B0DC 06:90CC: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0DD 06:90CD: 55 9D     .word _off053_spr_data_0x00DD65_55_03_02
- D 0 - I - 0x01B0DF 06:90CF: DC 90     .word loc_90DC_0A_03_next
- D 0 - I - 0x01B0E1 06:90D1: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0E2 06:90D2: 1D        .byte $1D   ; 08 



loc_90D3_0A_02_next:
- D 0 - I - 0x01B0E3 06:90D3: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0E4 06:90D4: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B0E5 06:90D5: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0E6 06:90D6: 36 9D     .word _off053_spr_data_0x00DD46_55_02_03
- D 0 - I - 0x01B0E8 06:90D8: 9D 90     .word loc_909D_0A_02_loop
- D 0 - I - 0x01B0EA 06:90DA: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0EB 06:90DB: 8C        .byte $8C   ; 08 



loc_90DC_0A_03_next:
- D 0 - I - 0x01B0EC 06:90DC: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0ED 06:90DD: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B0EE 06:90DE: 06        .byte $06   ; 02 next animation delay
- D 0 - I - 0x01B0EF 06:90DF: 36 9D     .word _off053_spr_data_0x00DD46_55_03_03
- D 0 - I - 0x01B0F1 06:90E1: A6 90     .word loc_90A6_0A_03_loop
- D 0 - I - 0x01B0F3 06:90E3: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0F4 06:90E4: 9D        .byte $9D   ; 08 



_off020_90E5_55_04:
- D 0 - I - 0x01B0F5 06:90E5: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0F6 06:90E6: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B0F7 06:90E7: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01B0F8 06:90E8: 7A 9D     .word _off053_spr_data_0x00DD8A_55_04_00
- D 0 - I - 0x01B0FA 06:90EA: CF 91     .word loc_91CF_0A_04_next
- D 0 - I - 0x01B0FC 06:90EC: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B0FD 06:90ED: 02        .byte $02   ; 08 



_off020_90EE_55_05:
- D 0 - I - 0x01B0FE 06:90EE: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B0FF 06:90EF: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B100 06:90F0: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01B101 06:90F1: 7A 9D     .word _off053_spr_data_0x00DD8A_55_05_00
- D 0 - I - 0x01B103 06:90F3: D8 91     .word loc_91D8_0A_07_loop
- D 0 - I - 0x01B105 06:90F5: 1F        .byte $1F   ; 07 
- D 0 - I - 0x01B106 06:90F6: 13        .byte $13   ; 08 



_off020_90F7_55_0E:
loc_90F7_0A_0E_loop:
- D 0 - I - 0x01B107 06:90F7: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B108 06:90F8: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B109 06:90F9: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B10A 06:90FA: 96 9D     .word _off053_spr_data_0x00DDA6_55_0E_00
- - - - - - 0x01B10C 06:90FC: F7 90     .word loc_90F7_0A_0E_loop
- D 0 - I - 0x01B10E 06:90FE: 00        .byte $00   ; 07 
- D 0 - I - 0x01B10F 06:90FF: 0A        .byte $0A   ; 08 



_off020_9100_55_0F:
loc_9100_0A_0F_loop:
- D 0 - I - 0x01B110 06:9100: 78        .byte con_chr_bank_spr + $78   ; 00 
- D 0 - I - 0x01B111 06:9101: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B112 06:9102: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B113 06:9103: 96 9D     .word _off053_spr_data_0x00DDA6_55_0F_00
- - - - - - 0x01B115 06:9105: 00 91     .word loc_9100_0A_0F_loop
- D 0 - I - 0x01B117 06:9107: 00        .byte $00   ; 07 
- D 0 - I - 0x01B118 06:9108: 1B        .byte $1B   ; 08 



_off020_9109_55_00:
loc_9109_0A_14_next:
- D 0 - I - 0x01B119 06:9109: 79        .byte con_chr_bank_spr + $79   ; 00 
- D 0 - I - 0x01B11A 06:910A: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B11B 06:910B: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01B11C 06:910C: B8 9D     .word _off053_spr_data_0x00DDC8_55_00_00
- D 0 - I - 0x01B11E 06:910E: 9D 90     .word loc_909D_0A_02_loop
- D 0 - I - 0x01B120 06:9110: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01B121 06:9111: 00        .byte $00   ; 08 



_off020_9112_55_01:
- D 0 - I - 0x01B122 06:9112: 79        .byte con_chr_bank_spr + $79   ; 00 
- D 0 - I - 0x01B123 06:9113: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B124 06:9114: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01B125 06:9115: B8 9D     .word _off053_spr_data_0x00DDC8_55_01_00
- - - - - - 0x01B127 06:9117: 9D 90     .word loc_909D_0A_02_loop
- D 0 - I - 0x01B129 06:9119: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01B12A 06:911A: 10        .byte $10   ; 08 



loc_911B_0A_14_next:
- D 0 - I - 0x01B12B 06:911B: 79        .byte con_chr_bank_spr + $79   ; 00 
- D 0 - I - 0x01B12C 06:911C: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B12D 06:911D: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B12E 06:911E: E0 9D     .word _off053_spr_data_0x00DDF0_55_14_01
- D 0 - I - 0x01B130 06:9120: 24 91     .word loc_9124_0A_14_next
- D 0 - I - 0x01B132 06:9122: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01B133 06:9123: 80        .byte $80   ; 08 



loc_9124_0A_14_next:
- D 0 - I - 0x01B134 06:9124: 79        .byte con_chr_bank_spr + $79   ; 00 
- D 0 - I - 0x01B135 06:9125: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B136 06:9126: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B137 06:9127: 1A 9E     .word _off053_spr_data_0x00DE2A_55_14_02
- D 0 - I - 0x01B139 06:9129: 09 91     .word loc_9109_0A_14_next
- D 0 - I - 0x01B13B 06:912B: 1C        .byte $1C   ; 07 
- D 0 - I - 0x01B13C 06:912C: 80        .byte $80   ; 08 



_off020_912D_55_0C:
loc_912D_0A_0C_loop:
- D 0 - I - 0x01B13D 06:912D: 79        .byte con_chr_bank_spr + $79   ; 00 
- D 0 - I - 0x01B13E 06:912E: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B13F 06:912F: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B140 06:9130: 4E 9E     .word _off053_spr_data_0x00DE5E_55_0C_00
- - - - - - 0x01B142 06:9132: 2D 91     .word loc_912D_0A_0C_loop
- D 0 - I - 0x01B144 06:9134: A9        .byte $A9   ; 07 
- D 0 - I - 0x01B145 06:9135: 0C        .byte $0C   ; 08 



_off020_9136_55_0D:
loc_9136_0A_0D_loop:
- D 0 - I - 0x01B146 06:9136: 79        .byte con_chr_bank_spr + $79   ; 00 
- D 0 - I - 0x01B147 06:9137: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B148 06:9138: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B149 06:9139: 4E 9E     .word _off053_spr_data_0x00DE5E_55_0D_00
- - - - - - 0x01B14B 06:913B: 36 91     .word loc_9136_0A_0D_loop
- D 0 - I - 0x01B14D 06:913D: A9        .byte $A9   ; 07 
- D 0 - I - 0x01B14E 06:913E: 1D        .byte $1D   ; 08 



loc_913F_0A_06_next:
- D 0 - I - 0x01B14F 06:913F: 7A        .byte con_chr_bank_spr + $7A   ; 00 
- D 0 - I - 0x01B150 06:9140: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B151 06:9141: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B152 06:9142: 6A 9E     .word _off053_spr_data_0x00DE7A_55_06_03
- D 0 - I - 0x01B154 06:9144: CF 91     .word loc_91CF_0A_06_loop
- D 0 - I - 0x01B156 06:9146: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B157 06:9147: 00        .byte $00   ; 08 



loc_9148_0A_07_next:
- D 0 - I - 0x01B158 06:9148: 7A        .byte con_chr_bank_spr + $7A   ; 00 
- D 0 - I - 0x01B159 06:9149: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B15A 06:914A: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B15B 06:914B: 6A 9E     .word _off053_spr_data_0x00DE7A_55_07_03
- D 0 - I - 0x01B15D 06:914D: D8 91     .word loc_91D8_0A_07_loop
- D 0 - I - 0x01B15F 06:914F: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B160 06:9150: 10        .byte $10   ; 08 



loc_9151_0A_06_next:
- D 0 - I - 0x01B161 06:9151: 7A        .byte con_chr_bank_spr + $7A   ; 00 
- D 0 - I - 0x01B162 06:9152: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B163 06:9153: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B164 06:9154: 83 9E     .word _off053_spr_data_0x00DE93_55_06_02
- D 0 - I - 0x01B166 06:9156: 3F 91     .word loc_913F_0A_06_next
- D 0 - I - 0x01B168 06:9158: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B169 06:9159: 00        .byte $00   ; 08 



loc_915A_0A_07_next:
- D 0 - I - 0x01B16A 06:915A: 7A        .byte con_chr_bank_spr + $7A   ; 00 
- D 0 - I - 0x01B16B 06:915B: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B16C 06:915C: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B16D 06:915D: 83 9E     .word _off053_spr_data_0x00DE93_55_07_02
- D 0 - I - 0x01B16F 06:915F: 48 91     .word loc_9148_0A_07_next
- D 0 - I - 0x01B171 06:9161: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B172 06:9162: 10        .byte $10   ; 08 



_off020_9163_55_0A:
loc_9163_0A_08_next:
loc_9163_0A_0B_next:
- D 0 - I - 0x01B173 06:9163: 7A        .byte con_chr_bank_spr + $7A   ; 00 
- D 0 - I - 0x01B174 06:9164: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B175 06:9165: 04        .byte $04   ; 02 next animation delay
- D 0 - I - 0x01B176 06:9166: 9C 9E     .word _off053_spr_data_0x00DEAC_55_0A_00
- D 0 - I - 0x01B178 06:9168: 6C 91     .word loc_916C_0A_0A_next
- D 0 - I - 0x01B17A 06:916A: A6        .byte $A6   ; 07 
- D 0 - I - 0x01B17B 06:916B: 00        .byte $00   ; 08 



_off020_916C_55_0B:
loc_916C_0A_0A_next:
- D 0 - I - 0x01B17C 06:916C: 7A        .byte con_chr_bank_spr + $7A   ; 00 
- D 0 - I - 0x01B17D 06:916D: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B17E 06:916E: 04        .byte $04   ; 02 next animation delay
- D 0 - I - 0x01B17F 06:916F: BB 9E     .word _off053_spr_data_0x00DECB_55_0B_00
- D 0 - I - 0x01B181 06:9171: 63 91     .word loc_9163_0A_0B_next
- D 0 - I - 0x01B183 06:9173: A6        .byte $A6   ; 07 
- D 0 - I - 0x01B184 06:9174: 00        .byte $00   ; 08 



_off020_9175_55_08:
- D 0 - I - 0x01B185 06:9175: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- D 0 - I - 0x01B186 06:9176: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B187 06:9177: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B188 06:9178: DA 9E     .word _off053_spr_data_0x00DEEA_55_08_00
- - - - - - 0x01B18A 06:917A: 63 91     .word loc_9163_0A_08_next
- D 0 - I - 0x01B18C 06:917C: AC        .byte $AC   ; 07 
- D 0 - I - 0x01B18D 06:917D: 0C        .byte $0C   ; 08 



_off020_917E_55_09:
- D 0 - I - 0x01B18E 06:917E: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- D 0 - I - 0x01B18F 06:917F: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B190 06:9180: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B191 06:9181: DA 9E     .word _off053_spr_data_0x00DEEA_55_09_00
- - - - - - 0x01B193 06:9183: 6C 91     .word loc_916C_0A_0A_next
- D 0 - I - 0x01B195 06:9185: AC        .byte $AC   ; 07 
- D 0 - I - 0x01B196 06:9186: 1D        .byte $1D   ; 08 



_off020_9187_55_10:
loc_9187_0A_10_loop:
- D 0 - I - 0x01B197 06:9187: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- D 0 - I - 0x01B198 06:9188: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B199 06:9189: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01B19A 06:918A: FF 9E     .word _off053_spr_data_0x00DF0F_55_10_00
- D 0 - I - 0x01B19C 06:918C: 87 91     .word loc_9187_0A_10_loop
- D 0 - I - 0x01B19E 06:918E: 00        .byte $00   ; 07 
- D 0 - I - 0x01B19F 06:918F: 80        .byte $80   ; 08 



_off020_9190_55_11:
loc_9190_0A_11_loop:
- - - - - - 0x01B1A0 06:9190: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- - - - - - 0x01B1A1 06:9191: 80        .byte con_chr_bank_spr + $80   ; 01 
- - - - - - 0x01B1A2 06:9192: 10        .byte $10   ; 02 next animation delay
- - - - - - 0x01B1A3 06:9193: FF 9E     .word _off053_spr_data_0x00DF0F_55_11_00
- - - - - - 0x01B1A5 06:9195: 90 91     .word loc_9190_0A_11_loop
- - - - - - 0x01B1A7 06:9197: 00        .byte $00   ; 07 
- - - - - - 0x01B1A8 06:9198: 90        .byte $90   ; 08 


; bzk garbage
- - - - - - 0x01B1A9 06:9199: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- - - - - - 0x01B1AA 06:919A: 00        .byte con_chr_bank_spr + $00   ; 01 
- - - - - - 0x01B1AB 06:919B: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B1AC 06:919C: 15 9F     .word $9F15 ; 
- - - - - - 0x01B1AE 06:919E: A2 91     .word $91A2 ; 
- - - - - - 0x01B1B0 06:91A0: 00        .byte $00   ; 07 
- - - - - - 0x01B1B1 06:91A1: 00        .byte $00   ; 08 


; bzk garbage
- - - - - - 0x01B1B2 06:91A2: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- - - - - - 0x01B1B3 06:91A3: 00        .byte con_chr_bank_spr + $00   ; 01 
- - - - - - 0x01B1B4 06:91A4: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B1B5 06:91A5: 38 9F     .word $9F38 ; 
- - - - - - 0x01B1B7 06:91A7: AB 91     .word $91AB ; 
- - - - - - 0x01B1B9 06:91A9: 00        .byte $00   ; 07 
- - - - - - 0x01B1BA 06:91AA: 00        .byte $00   ; 08 


; bzk garbage
- - - - - - 0x01B1BB 06:91AB: 7B        .byte con_chr_bank_spr + $7B   ; 00 
- - - - - - 0x01B1BC 06:91AC: 00        .byte con_chr_bank_spr + $00   ; 01 
- - - - - - 0x01B1BD 06:91AD: 08        .byte $08   ; 02 next animation delay
- - - - - - 0x01B1BE 06:91AE: 5E        .byte $5E   ; 
- - - - - - 0x01B1BF 06:91AF: 9F        .byte $9F   ; 
- - - - - - 0x01B1C0 06:91B0: 99 91     .word $9199 ; 
- - - - - - 0x01B1C2 06:91B2: 00        .byte $00   ; 07 
- - - - - - 0x01B1C3 06:91B3: 00        .byte $00   ; 08 



_off020_91B4_55_12:
loc_91B4_0A_12_loop:
- D 0 - I - 0x01B1C4 06:91B4: 63        .byte con_chr_bank_spr + $63   ; 00 
- D 0 - I - 0x01B1C5 06:91B5: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B1C6 06:91B6: 10        .byte $10   ; 02 next animation delay
- D 0 - I - 0x01B1C7 06:91B7: 84 9F     .word _off053_spr_data_0x00DF94_55_12_00
- - - - - - 0x01B1C9 06:91B9: B4 91     .word loc_91B4_0A_12_loop
- D 0 - I - 0x01B1CB 06:91BB: 00        .byte $00   ; 07 
- D 0 - I - 0x01B1CC 06:91BC: 00        .byte $00   ; 08 



_off020_91BD_55_13:
loc_91BD_0A_13_loop:
- - - - - - 0x01B1CD 06:91BD: 63        .byte con_chr_bank_spr + $63   ; 00 
- - - - - - 0x01B1CE 06:91BE: 80        .byte con_chr_bank_spr + $80   ; 01 
- - - - - - 0x01B1CF 06:91BF: 10        .byte $10   ; 02 next animation delay
- - - - - - 0x01B1D0 06:91C0: 84 9F     .word _off053_spr_data_0x00DF94_55_13_00
- - - - - - 0x01B1D2 06:91C2: BD 91     .word loc_91BD_0A_13_loop
- - - - - - 0x01B1D4 06:91C4: 00        .byte $00   ; 07 
- - - - - - 0x01B1D5 06:91C5: 10        .byte $10   ; 08 



_off020_91C6_55_14:
- D 0 - I - 0x01B1D6 06:91C6: 63        .byte con_chr_bank_spr + $63   ; 00 
- D 0 - I - 0x01B1D7 06:91C7: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B1D8 06:91C8: 08        .byte $08   ; 02 next animation delay
- D 0 - I - 0x01B1D9 06:91C9: 9B 9F     .word _off053_spr_data_0x00DFAB_55_14_00
- D 0 - I - 0x01B1DB 06:91CB: 1B 91     .word loc_911B_0A_14_next
- D 0 - I - 0x01B1DD 06:91CD: 00        .byte $00   ; 07 
- D 0 - I - 0x01B1DE 06:91CE: 20        .byte $20   ; 08 



_off020_91CF_55_06:
loc_91CF_0A_04_next:
loc_91CF_0A_06_loop:
- D 0 - I - 0x01B1DF 06:91CF: 28        .byte con_chr_bank_spr + $28   ; 00 
- D 0 - I - 0x01B1E0 06:91D0: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B1E1 06:91D1: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B1E2 06:91D2: BE 9F     .word _off053_spr_data_0x00DFCE_55_06_00
- D 0 - I - 0x01B1E4 06:91D4: E1 91     .word loc_91E1_0A_06_next
- D 0 - I - 0x01B1E6 06:91D6: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B1E7 06:91D7: 00        .byte $00   ; 08 



_off020_91D8_55_07:
loc_91D8_0A_07_loop:
- D 0 - I - 0x01B1E8 06:91D8: 28        .byte con_chr_bank_spr + $28   ; 00 
- D 0 - I - 0x01B1E9 06:91D9: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B1EA 06:91DA: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B1EB 06:91DB: BE 9F     .word _off053_spr_data_0x00DFCE_55_07_00
- D 0 - I - 0x01B1ED 06:91DD: EA 91     .word loc_91EA_0A_07_next
- D 0 - I - 0x01B1EF 06:91DF: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B1F0 06:91E0: 10        .byte $10   ; 08 



loc_91E1_0A_06_next:
- D 0 - I - 0x01B1F1 06:91E1: 28        .byte con_chr_bank_spr + $28   ; 00 
- D 0 - I - 0x01B1F2 06:91E2: 00        .byte con_chr_bank_spr + $00   ; 01 
- D 0 - I - 0x01B1F3 06:91E3: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B1F4 06:91E4: D7 9F     .word _off053_spr_data_0x00DFE7_55_06_01
- D 0 - I - 0x01B1F6 06:91E6: 51 91     .word loc_9151_0A_06_next
- D 0 - I - 0x01B1F8 06:91E8: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B1F9 06:91E9: 00        .byte $00   ; 08 



loc_91EA_0A_07_next:
- D 0 - I - 0x01B1FA 06:91EA: 28        .byte con_chr_bank_spr + $28   ; 00 
- D 0 - I - 0x01B1FB 06:91EB: 80        .byte con_chr_bank_spr + $80   ; 01 
- D 0 - I - 0x01B1FC 06:91EC: 02        .byte $02   ; 02 next animation delay
- D 0 - I - 0x01B1FD 06:91ED: D7 9F     .word _off053_spr_data_0x00DFE7_55_07_01
- D 0 - I - 0x01B1FF 06:91EF: 5A 91     .word loc_915A_0A_07_next
- D 0 - I - 0x01B201 06:91F1: 2A        .byte $2A   ; 07 
- D 0 - I - 0x01B202 06:91F2: 10        .byte $10   ; 08 



_off020_91F3_58_00:
loc_91F3_10_00_loop:
- - - - - - 0x01B203 06:91F3: 00        .byte $00   ; 00 
- D 0 - I - 0x01B204 06:91F4: 00        .byte $00   ; 01 
- D 0 - I - 0x01B205 06:91F5: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01B206 06:91F6: F0 9F     .word _off053_spr_data_0x00E000_58_00_00
- D 0 - I - 0x01B208 06:91F8: FB 91     .word loc_91FB_10_00_next
- D 0 - I - 0x01B20A 06:91FA: 00        .byte $00   ; 07 



loc_91FB_10_00_next:
- D 0 - I - 0x01B20B 06:91FB: 00        .byte $00   ; 08/00 
- D 0 - I - 0x01B20C 06:91FC: 00        .byte $00   ; 01 
- D 0 - I - 0x01B20D 06:91FD: 01        .byte $01   ; 02 next animation delay
- D 0 - I - 0x01B20E 06:91FE: F8 9F     .word _off053_spr_data_0x00E008_58_00_01
- D 0 - I - 0x01B210 06:9200: F3 91     .word loc_91F3_10_00_loop
- D 0 - I - 0x01B212 06:9202: 00        .byte $00   ; 07 
- D 0 - I - 0x01B213 06:9203: 00        .byte $00   ; 08 



tbl_9204:
; 00 
- D 0 - - - 0x01B214 06:9204: 80        .byte $80   ; 
- D 0 - - - 0x01B215 06:9205: 50        .byte con_enemy_id_50   ; 
- D 0 - - - 0x01B216 06:9206: 50        .byte $50   ; damage
- D 0 - - - 0x01B217 06:9207: 0E        .byte $0E   ; 
- D 0 - - - 0x01B218 06:9208: 80        .byte $80   ; pos_X_lo
- D 0 - - - 0x01B219 06:9209: 00        .byte $00   ; pos_Y_lo
- D 0 - - - 0x01B21A 06:920A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B21B 06:920B: 05        .byte $05   ; spd_Y_lo
; 08 
- D 0 - - - 0x01B21C 06:920C: 80        .byte $80   ; 
- D 0 - - - 0x01B21D 06:920D: 51        .byte con_enemy_id_51   ; 
- D 0 - - - 0x01B21E 06:920E: 64        .byte $64   ; damage
- D 0 - - - 0x01B21F 06:920F: 04        .byte $04   ; 
- D 0 - - - 0x01B220 06:9210: D0        .byte $D0   ; pos_X_lo
- D 0 - - - 0x01B221 06:9211: 00        .byte $00   ; pos_Y_lo
- D 0 - - - 0x01B222 06:9212: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B223 06:9213: 04        .byte $04   ; spd_Y_lo
; 10 
- D 0 - - - 0x01B224 06:9214: 80        .byte $80   ; 
- D 0 - - - 0x01B225 06:9215: 52        .byte con_enemy_id_52   ; 
- D 0 - - - 0x01B226 06:9216: 7F        .byte $7F   ; damage
- D 0 - - - 0x01B227 06:9217: 0E        .byte $0E   ; 
- D 0 - - - 0x01B228 06:9218: 90        .byte $90   ; pos_X_lo
- D 0 - - - 0x01B229 06:9219: 00        .byte $00   ; pos_Y_lo
- D 0 - - - 0x01B22A 06:921A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B22B 06:921B: 03        .byte $03   ; spd_Y_lo
; 18 
- D 0 - - - 0x01B22C 06:921C: 81        .byte $81   ; 
- D 0 - - - 0x01B22D 06:921D: 53        .byte con_enemy_id_53   ; 
- D 0 - - - 0x01B22E 06:921E: 64        .byte $64   ; damage
- D 0 - - - 0x01B22F 06:921F: 00        .byte $00   ; 
- D 0 - - - 0x01B230 06:9220: E8        .byte $E8   ; pos_X_lo
- D 0 - - - 0x01B231 06:9221: C0        .byte $C0   ; pos_Y_lo
- D 0 - - - 0x01B232 06:9222: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B233 06:9223: 00        .byte $00   ; spd_Y_lo
; 20 
- D 0 - - - 0x01B234 06:9224: 80        .byte $80   ; 
- D 0 - - - 0x01B235 06:9225: 54        .byte con_enemy_id_54   ; 
- D 0 - - - 0x01B236 06:9226: 64        .byte $64   ; damage
- D 0 - - - 0x01B237 06:9227: 00        .byte $00   ; 
- D 0 - - - 0x01B238 06:9228: E0        .byte $E0   ; pos_X_lo
- D 0 - - - 0x01B239 06:9229: 00        .byte $00   ; pos_Y_lo
- D 0 - - - 0x01B23A 06:922A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B23B 06:922B: 02        .byte $02   ; spd_Y_lo
; 28 
- D 0 - - - 0x01B23C 06:922C: 80        .byte $80   ; 
- D 0 - - - 0x01B23D 06:922D: 55        .byte con_enemy_id_55   ; 
- D 0 - - - 0x01B23E 06:922E: 7F        .byte $7F   ; damage
- D 0 - - - 0x01B23F 06:922F: 12        .byte $12   ; 
- D 0 - - - 0x01B240 06:9230: 80        .byte $80   ; pos_X_lo
- D 0 - - - 0x01B241 06:9231: C0        .byte $C0   ; pos_Y_lo
- D 0 - - - 0x01B242 06:9232: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B243 06:9233: 00        .byte $00   ; spd_Y_lo
; 30 
- D 0 - - - 0x01B244 06:9234: 81        .byte $81   ; 
- D 0 - - - 0x01B245 06:9235: 56        .byte con_enemy_id_56   ; 
- D 0 - - - 0x01B246 06:9236: 00        .byte $00   ; damage
- D 0 - - - 0x01B247 06:9237: 00        .byte $00   ; 
- D 0 - - - 0x01B248 06:9238: 38        .byte $38   ; pos_X_lo
- D 0 - - - 0x01B249 06:9239: 28        .byte $28   ; pos_Y_lo
- D 0 - - - 0x01B24A 06:923A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B24B 06:923B: 00        .byte $00   ; spd_Y_lo
; 38 
- D 0 - - - 0x01B24C 06:923C: 81        .byte $81   ; 
- D 0 - - - 0x01B24D 06:923D: 56        .byte con_enemy_id_56   ; 
- D 0 - - - 0x01B24E 06:923E: 00        .byte $00   ; damage
- D 0 - - - 0x01B24F 06:923F: 00        .byte $00   ; 
- D 0 - - - 0x01B250 06:9240: 78        .byte $78   ; pos_X_lo
- D 0 - - - 0x01B251 06:9241: 88        .byte $88   ; pos_Y_lo
- D 0 - - - 0x01B252 06:9242: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B253 06:9243: 00        .byte $00   ; spd_Y_lo
; 40 
- D 0 - - - 0x01B254 06:9244: 81        .byte $81   ; 
- D 0 - - - 0x01B255 06:9245: 56        .byte con_enemy_id_56   ; 
- D 0 - - - 0x01B256 06:9246: 00        .byte $00   ; damage
- D 0 - - - 0x01B257 06:9247: 00        .byte $00   ; 
- D 0 - - - 0x01B258 06:9248: B8        .byte $B8   ; pos_X_lo
- D 0 - - - 0x01B259 06:9249: 88        .byte $88   ; pos_Y_lo
- D 0 - - - 0x01B25A 06:924A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B25B 06:924B: 00        .byte $00   ; spd_Y_lo
; 48 
- D 0 - - - 0x01B25C 06:924C: 80        .byte $80   ; 
- D 0 - - - 0x01B25D 06:924D: 57        .byte con_enemy_id_57   ; 
- D 0 - - - 0x01B25E 06:924E: 1E        .byte $1E   ; damage
- D 0 - - - 0x01B25F 06:924F: 00        .byte $00   ; 
- D 0 - - - 0x01B260 06:9250: A8        .byte $A8   ; pos_X_lo
- D 0 - - - 0x01B261 06:9251: 8B        .byte $8B   ; pos_Y_lo
- D 0 - - - 0x01B262 06:9252: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B263 06:9253: 00        .byte $00   ; spd_Y_lo
; 50 
- D 0 - - - 0x01B264 06:9254: 80        .byte $80   ; 
- D 0 - - - 0x01B265 06:9255: 58        .byte con_enemy_id_58   ; 
- D 0 - - - 0x01B266 06:9256: 00        .byte $00   ; damage
- D 0 - - - 0x01B267 06:9257: 00        .byte $00   ; 
- D 0 - - - 0x01B268 06:9258: 28        .byte $28   ; pos_X_lo
- D 0 - - - 0x01B269 06:9259: 10        .byte $10   ; pos_Y_lo
- D 0 - - - 0x01B26A 06:925A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B26B 06:925B: 00        .byte $00   ; spd_Y_lo
; 58 
- D 0 - - - 0x01B26C 06:925C: 80        .byte $80   ; 
- D 0 - - - 0x01B26D 06:925D: 58        .byte con_enemy_id_58   ; 
- D 0 - - - 0x01B26E 06:925E: 00        .byte $00   ; damage
- D 0 - - - 0x01B26F 06:925F: 00        .byte $00   ; 
- D 0 - - - 0x01B270 06:9260: 80        .byte $80   ; pos_X_lo
- D 0 - - - 0x01B271 06:9261: 10        .byte $10   ; pos_Y_lo
- D 0 - - - 0x01B272 06:9262: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B273 06:9263: 00        .byte $00   ; spd_Y_lo
; 60 
- D 0 - - - 0x01B274 06:9264: 80        .byte $80   ; 
- D 0 - - - 0x01B275 06:9265: 58        .byte con_enemy_id_58   ; 
- D 0 - - - 0x01B276 06:9266: 00        .byte $00   ; damage
- D 0 - - - 0x01B277 06:9267: 00        .byte $00   ; 
- D 0 - - - 0x01B278 06:9268: D8        .byte $D8   ; pos_X_lo
- D 0 - - - 0x01B279 06:9269: 10        .byte $10   ; pos_Y_lo
- D 0 - - - 0x01B27A 06:926A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B27B 06:926B: 00        .byte $00   ; spd_Y_lo
; 68 
- D 0 - - - 0x01B27C 06:926C: 80        .byte $80   ; 
- D 0 - - - 0x01B27D 06:926D: 59        .byte con_enemy_id_59   ; 
- D 0 - - - 0x01B27E 06:926E: 02        .byte $02   ; damage
- D 0 - - - 0x01B27F 06:926F: 00        .byte $00   ; 
- D 0 - - - 0x01B280 06:9270: 68        .byte $68   ; pos_X_lo
- D 0 - - - 0x01B281 06:9271: 20        .byte $20   ; pos_Y_lo
- D 0 - - - 0x01B282 06:9272: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B283 06:9273: 02        .byte $02   ; spd_Y_lo
; 70 
- D 0 - - - 0x01B284 06:9274: 80        .byte $80   ; 
- D 0 - - - 0x01B285 06:9275: 5A        .byte con_enemy_id_5A   ; 
- D 0 - - - 0x01B286 06:9276: 00        .byte $00   ; damage
- D 0 - - - 0x01B287 06:9277: 00        .byte $00   ; 
- D 0 - - - 0x01B288 06:9278: 00        .byte $00   ; pos_X_lo
- D 0 - - - 0x01B289 06:9279: 00        .byte $00   ; pos_Y_lo
- D 0 - - - 0x01B28A 06:927A: 00        .byte $00   ; spd_X_lo
- D 0 - - - 0x01B28B 06:927B: 00        .byte $00   ; spd_Y_lo



tbl_0x01B28C_positions:
; 
- D 0 - - - 0x01B28C 06:927C: F8 FF     .word $FFF8 ; 00 X
- D 0 - - - 0x01B28E 06:927E: 08 00     .word $0008 ; 02 X
- D 0 - - - 0x01B290 06:9280: D8 FF     .word $FFD8 ; 04 Y
; 
- D 0 - - - 0x01B292 06:9282: F8 FF     .word $FFF8 ; 06 X
- D 0 - - - 0x01B294 06:9284: 08 00     .word $0008 ; 08 X
- D 0 - - - 0x01B296 06:9286: F8 FF     .word $FFF8 ; 0A Y



tbl_9288_speed:
; 00 
- D 0 - - - 0x01B298 06:9288: 00 00     .word $0000 ; X
- D 0 - - - 0x01B29A 06:928A: 00 00     .word $0000 ; Y
; 01 
- D 0 - - - 0x01B29C 06:928C: 00 00     .word $0000 ; X
- D 0 - - - 0x01B29E 06:928E: 00 03     .word $0300 ; Y
; 02 
- D 0 - - - 0x01B2A0 06:9290: 00 00     .word $0000 ; X
- D 0 - - - 0x01B2A2 06:9292: 00 FD     .word $FD00 ; Y
; 03 
- D 0 - - - 0x01B2A4 06:9294: 00 00     .word $0000 ; X
- D 0 - - - 0x01B2A6 06:9296: 00 FD     .word $FD00 ; Y
; 04 
- D 0 - - - 0x01B2A8 06:9298: 80 FE     .word $FE80 ; X
- D 0 - - - 0x01B2AA 06:929A: 00 00     .word $0000 ; Y
; 05 
- D 0 - - - 0x01B2AC 06:929C: 80 01     .word $0180 ; X
- D 0 - - - 0x01B2AE 06:929E: 00 00     .word $0000 ; Y
; 06 
- D 0 - - - 0x01B2B0 06:92A0: 00 FD     .word $FD00 ; X
- D 0 - - - 0x01B2B2 06:92A2: 00 00     .word $0000 ; Y
; 07 
- D 0 - - - 0x01B2B4 06:92A4: 00 03     .word $0300 ; X
- D 0 - - - 0x01B2B6 06:92A6: 00 00     .word $0000 ; Y
; 08 
- D 0 - - - 0x01B2B8 06:92A8: 60 FE     .word $FE60 ; X
- D 0 - - - 0x01B2BA 06:92AA: 00 00     .word $0000 ; Y
; 09 
- D 0 - - - 0x01B2BC 06:92AC: A0 01     .word $01A0 ; X
- D 0 - - - 0x01B2BE 06:92AE: 00 00     .word $0000 ; Y
; 0A 
- D 0 - - - 0x01B2C0 06:92B0: 00 02     .word $0200 ; X
- D 0 - - - 0x01B2C2 06:92B2: 00 FE     .word $FE00 ; Y
; 0B 
- D 0 - - - 0x01B2C4 06:92B4: 00 FE     .word $FE00 ; X
- D 0 - - - 0x01B2C6 06:92B6: 00 FE     .word $FE00 ; Y
; 0C 
- D 0 - - - 0x01B2C8 06:92B8: 00 FE     .word $FE00 ; X
- D 0 - - - 0x01B2CA 06:92BA: 00 00     .word $0000 ; Y
; 0D 
- D 0 - - - 0x01B2CC 06:92BC: 00 02     .word $0200 ; X
- D 0 - - - 0x01B2CE 06:92BE: 00 00     .word $0000 ; Y
; 0E 
- - - - - - 0x01B2D0 06:92C0: A0 FE     .word $FEA0 ; X
- - - - - - 0x01B2D2 06:92C2: 40 FD     .word $FD40 ; Y
; 0F 
- - - - - - 0x01B2D4 06:92C4: A0 FE     .word $FEA0 ; X
- - - - - - 0x01B2D6 06:92C6: C0 02     .word $02C0 ; Y
; 10 
- - - - - - 0x01B2D8 06:92C8: 60 01     .word $0160 ; X
- - - - - - 0x01B2DA 06:92CA: 40 FD     .word $FD40 ; Y
; 11 
- - - - - - 0x01B2DC 06:92CC: 60 01     .word $0160 ; X
- - - - - - 0x01B2DE 06:92CE: C0 02     .word $02C0 ; Y
; 12 
- - - - - - 0x01B2E0 06:92D0: 20 FE     .word $FE20 ; X
- - - - - - 0x01B2E2 06:92D2: 60 FC     .word $FC60 ; Y
; 13 
- - - - - - 0x01B2E4 06:92D4: 20 FE     .word $FE20 ; X
- - - - - - 0x01B2E6 06:92D6: A0 03     .word $03A0 ; Y
; 14 
- - - - - - 0x01B2E8 06:92D8: E0 01     .word $01E0 ; X
- - - - - - 0x01B2EA 06:92DA: 60 FC     .word $FC60 ; Y
; 15 
- - - - - - 0x01B2EC 06:92DC: E0 01     .word $01E0 ; X
- - - - - - 0x01B2EE 06:92DE: A0 03     .word $03A0 ; Y
; 16 
- D 0 - - - 0x01B2F0 06:92E0: 00 00     .word $0000 ; X
- D 0 - - - 0x01B2F2 06:92E2: 00 FD     .word $FD00 ; Y
; 17 
- D 0 - - - 0x01B2F4 06:92E4: 00 00     .word $0000 ; X
- D 0 - - - 0x01B2F6 06:92E6: 00 03     .word $0300 ; Y
; 18 
- D 0 - - - 0x01B2F8 06:92E8: 00 FD     .word $FD00 ; X
- D 0 - - - 0x01B2FA 06:92EA: 00 00     .word $0000 ; Y
; 19 
- D 0 - - - 0x01B2FC 06:92EC: 00 03     .word $0300 ; X
- D 0 - - - 0x01B2FE 06:92EE: 00 00     .word $0000 ; Y
; 1A 
- D 0 - - - 0x01B300 06:92F0: E0 01     .word $01E0 ; X
- D 0 - - - 0x01B302 06:92F2: 20 FE     .word $FE20 ; Y
; 1B 
- D 0 - - - 0x01B304 06:92F4: E0 01     .word $01E0 ; X
- D 0 - - - 0x01B306 06:92F6: E0 01     .word $01E0 ; Y
; 1C 
- D 0 - - - 0x01B308 06:92F8: 20 FE     .word $FE20 ; X
- D 0 - - - 0x01B30A 06:92FA: E0 01     .word $01E0 ; Y
; 1D 
- D 0 - - - 0x01B30C 06:92FC: 20 FE     .word $FE20 ; X
- D 0 - - - 0x01B30E 06:92FE: 20 FE     .word $FE20 ; Y



; 00 (1E) 
- D 0 - - - 0x01B310 06:9300: 00 FE     .word $FE00 ; 
- D 0 - - - 0x01B312 06:9302: 00 00     .word $0000 ; 
; 01 (1F) 
- D 0 - - - 0x01B314 06:9304: 00 02     .word $0200 ; 
- D 0 - - - 0x01B316 06:9306: 00 00     .word $0000 ; 
; 02 (20) 
- D 0 - - - 0x01B318 06:9308: 30 FE     .word $FE30 ; 
- D 0 - - - 0x01B31A 06:930A: 00 FF     .word $FF00 ; 
; 03 (21) 
- D 0 - - - 0x01B31C 06:930C: D0 01     .word $01D0 ; 
- D 0 - - - 0x01B31E 06:930E: 00 FF     .word $FF00 ; 
; 04 (22) 
- - - - - - 0x01B320 06:9310: 80 FE     .word $FE80 ; 
- - - - - - 0x01B322 06:9312: 80 FE     .word $FE80 ; 
; 05 (23) 
- D 0 - - - 0x01B324 06:9314: 80 01     .word $0180 ; 
- D 0 - - - 0x01B326 06:9316: 80 FE     .word $FE80 ; 
; 06 (24) 
- D 0 - - - 0x01B328 06:9318: 00 FA     .word $FA00 ; 
- D 0 - - - 0x01B32A 06:931A: 00 00     .word $0000 ; 
; 07 (25) 
- D 0 - - - 0x01B32C 06:931C: 00 06     .word $0600 ; 
- D 0 - - - 0x01B32E 06:931E: 00 00     .word $0000 ; 
; 08 (26) 
- - - - - - 0x01B330 06:9320: D0 FB     .word $FBD0 ; 
- - - - - - 0x01B332 06:9322: 30 04     .word $0430 ; 
; 09 (27) 
- D 0 - - - 0x01B334 06:9324: 30 04     .word $0430 ; 
- D 0 - - - 0x01B336 06:9326: 30 04     .word $0430 ; 
; 0A (28) 
- D 0 - - - 0x01B338 06:9328: 00 00     .word $0000 ; 
- D 0 - - - 0x01B33A 06:932A: 00 06     .word $0600 ; 
; 0B (29) 
- D 0 - - - 0x01B33C 06:932C: 00 00     .word $0000 ; 
- D 0 - - - 0x01B33E 06:932E: 00 00     .word $0000 ; 
; 0C (2A) 
- - - - - - 0x01B340 06:9330: A0 FE     .word $FEA0 ; 
- - - - - - 0x01B342 06:9332: C0 02     .word $02C0 ; 
; 0D (2B) 
- - - - - - 0x01B344 06:9334: 60 01     .word $0160 ; 
- - - - - - 0x01B346 06:9336: C0 02     .word $02C0 ; 
; 0E (2C) 
- D 0 - - - 0x01B348 06:9338: 00 FC     .word $FC00 ; 
- D 0 - - - 0x01B34A 06:933A: 00 00     .word $0000 ; 
; 0F (2D) 
- D 0 - - - 0x01B34C 06:933C: 00 04     .word $0400 ; 
- D 0 - - - 0x01B34E 06:933E: 00 00     .word $0000 ; 
; 10 (2E) 
- D 0 - - - 0x01B350 06:9340: 40 FD     .word $FD40 ; 
- D 0 - - - 0x01B352 06:9342: 40 FD     .word $FD40 ; 
; 11 (2F) 
- - - - - - 0x01B354 06:9344: C0 02     .word $02C0 ; 
- - - - - - 0x01B356 06:9346: 40 FD     .word $FD40 ; 
; 12 (30) 
- D 0 - - - 0x01B358 06:9348: 00 00     .word $0000 ; 
- D 0 - - - 0x01B35A 06:934A: 00 04     .word $0400 ; 
; 13 (31) 
- D 0 - - - 0x01B35C 06:934C: 30 FE     .word $FE30 ; 
- D 0 - - - 0x01B35E 06:934E: 10 FF     .word $FF10 ; 
; 14 (32) 
- D 0 - - - 0x01B360 06:9350: D0 01     .word $01D0 ; 
- D 0 - - - 0x01B362 06:9352: 10 FF     .word $FF10 ; 
; 15 (33) 
- D 0 - - - 0x01B364 06:9354: 00 00     .word $0000 ; 
- D 0 - - - 0x01B366 06:9356: 00 07     .word $0700 ; 
; 16 (34) 
- - - - - - 0x01B368 06:9358: 00 F9     .word $F900 ; 
- - - - - - 0x01B36A 06:935A: 00 00     .word $0000 ; 
; 17 (35) 
- - - - - - 0x01B36C 06:935C: 00 07     .word $0700 ; 
- - - - - - 0x01B36E 06:935E: 00 00     .word $0000 ; 
; 18 (36) 
- - - - - - 0x01B370 06:9360: 20 FB     .word $FB20 ; 
- - - - - - 0x01B372 06:9362: E0 04     .word $04E0 ; 
; 19 (37) 
- - - - - - 0x01B374 06:9364: E0 04     .word $04E0 ; 
- - - - - - 0x01B376 06:9366: E0 04     .word $04E0 ; 
; 1A (38) 
- D 0 - - - 0x01B378 06:9368: 30 FD     .word $FD30 ; 
- D 0 - - - 0x01B37A 06:936A: 80 05     .word $0580 ; 
; 1B (39) 
- D 0 - - - 0x01B37C 06:936C: D0 02     .word $02D0 ; 
- D 0 - - - 0x01B37E 06:936E: 80 05     .word $0580 ; 



tbl_9370_table_index:
; index for 0x01B3E8
- D 0 - - - 0x01B380 06:9370: 00        .byte $00   ; 00 
- D 0 - - - 0x01B381 06:9371: 04        .byte $04   ; 01 
- D 0 - - - 0x01B382 06:9372: 04        .byte $04   ; 02 
- D 0 - - - 0x01B383 06:9373: 00        .byte $00   ; 03 
- D 0 - - - 0x01B384 06:9374: 08        .byte $08   ; 04 
- - - - - - 0x01B385 06:9375: 0C        .byte $0C   ; 05 
- D 0 - - - 0x01B386 06:9376: 0C        .byte $0C   ; 06 
- D 0 - - - 0x01B387 06:9377: 08        .byte $08   ; 07 
- D 0 - - - 0x01B388 06:9378: 10        .byte $10   ; 08 
- D 0 - - - 0x01B389 06:9379: 14        .byte $14   ; 09 
- D 0 - - - 0x01B38A 06:937A: 18        .byte $18   ; 0A 
- D 0 - - - 0x01B38B 06:937B: 1C        .byte $1C   ; 0B 
- D 0 - - - 0x01B38C 06:937C: 1C        .byte $1C   ; 0C 
- - - - - - 0x01B38D 06:937D: 18        .byte $18   ; 0D 
- D 0 - - - 0x01B38E 06:937E: 14        .byte $14   ; 0E 
- D 0 - - - 0x01B38F 06:937F: 0C        .byte $0C   ; 0F 
- D 0 - - - 0x01B390 06:9380: 20        .byte $20   ; 10 
- - - - - - 0x01B391 06:9381: 24        .byte $24   ; 11 
- D 0 - - - 0x01B392 06:9382: 24        .byte $24   ; 12 
- - - - - - 0x01B393 06:9383: 20        .byte $20   ; 13 
- - - - - - 0x01B394 06:9384: 2C        .byte $2C   ; 14 
- - - - - - 0x01B395 06:9385: 28        .byte $28   ; 15 
- - - - - - 0x01B396 06:9386: 24        .byte $24   ; 16 
- - - - - - 0x01B397 06:9387: 20        .byte $20   ; 17 
- D 0 - - - 0x01B398 06:9388: 30        .byte $30   ; 18 
- D 0 - - - 0x01B399 06:9389: 34        .byte $34   ; 19 
- - - - - - 0x01B39A 06:938A: 34        .byte $34   ; 1A 
- - - - - - 0x01B39B 06:938B: 30        .byte $30   ; 1B 
- D 0 - - - 0x01B39C 06:938C: 38        .byte $38   ; 1C 
- D 0 - - - 0x01B39D 06:938D: 3C        .byte $3C   ; 1D 
- D 0 - - - 0x01B39E 06:938E: 3C        .byte $3C   ; 1E 
- D 0 - - - 0x01B39F 06:938F: 38        .byte $38   ; 1F 
- D 0 - - - 0x01B3A0 06:9390: 40        .byte $40   ; 20 
- D 0 - - - 0x01B3A1 06:9391: 44        .byte $44   ; 21 
- D 0 - - - 0x01B3A2 06:9392: 44        .byte $44   ; 22 
- D 0 - - - 0x01B3A3 06:9393: 40        .byte $40   ; 23 
- D 0 - - - 0x01B3A4 06:9394: 48        .byte $48   ; 24 
- D 0 - - - 0x01B3A5 06:9395: 4C        .byte $4C   ; 25 
- - - - - - 0x01B3A6 06:9396: 4C        .byte $4C   ; 26 
- - - - - - 0x01B3A7 06:9397: 48        .byte $48   ; 27 
- D 0 - - - 0x01B3A8 06:9398: 50        .byte $50   ; 28 
- D 0 - - - 0x01B3A9 06:9399: 54        .byte $54   ; 29 
- D 0 - - - 0x01B3AA 06:939A: 54        .byte $54   ; 2A 
- D 0 - - - 0x01B3AB 06:939B: 50        .byte $50   ; 2B 
- D 0 - - - 0x01B3AC 06:939C: 58        .byte $58   ; 2C 
- D 0 - - - 0x01B3AD 06:939D: 5C        .byte $5C   ; 2D 
- D 0 - - - 0x01B3AE 06:939E: 5C        .byte $5C   ; 2E 
- D 0 - - - 0x01B3AF 06:939F: 58        .byte $58   ; 2F 
- D 0 - - - 0x01B3B0 06:93A0: 60        .byte $60   ; 30 
- D 0 - - - 0x01B3B1 06:93A1: 64        .byte $64   ; 31 
- - - - - - 0x01B3B2 06:93A2: 64        .byte $64   ; 32 
- - - - - - 0x01B3B3 06:93A3: 60        .byte $60   ; 33 
- D 0 - - - 0x01B3B4 06:93A4: 68        .byte $68   ; 34 
- D 0 - - - 0x01B3B5 06:93A5: 6C        .byte $6C   ; 35 
- D 0 - - - 0x01B3B6 06:93A6: 6C        .byte $6C   ; 36 
- - - - - - 0x01B3B7 06:93A7: 68        .byte $68   ; 37 
- - - - - - 0x01B3B8 06:93A8: 70        .byte $70   ; 38 
- - - - - - 0x01B3B9 06:93A9: 74        .byte $74   ; 39 
- D 0 - - - 0x01B3BA 06:93AA: 74        .byte $74   ; 3A 
- - - - - - 0x01B3BB 06:93AB: 70        .byte $70   ; 3B 
- D 0 - - - 0x01B3BC 06:93AC: 78        .byte $78   ; 3C 
- - - - - - 0x01B3BD 06:93AD: 7C        .byte $7C   ; 3D 
- D 0 - - - 0x01B3BE 06:93AE: 7C        .byte $7C   ; 3E 
- - - - - - 0x01B3BF 06:93AF: 78        .byte $78   ; 3F 
- - - - - - 0x01B3C0 06:93B0: 80        .byte $80   ; 40 
- - - - - - 0x01B3C1 06:93B1: 84        .byte $84   ; 41 
- - - - - - 0x01B3C2 06:93B2: 84        .byte $84   ; 42 
- - - - - - 0x01B3C3 06:93B3: 80        .byte $80   ; 43 
- - - - - - 0x01B3C4 06:93B4: 88        .byte $88   ; 44 
- - - - - - 0x01B3C5 06:93B5: 8C        .byte $8C   ; 45 
- - - - - - 0x01B3C6 06:93B6: 8C        .byte $8C   ; 46 
- - - - - - 0x01B3C7 06:93B7: 88        .byte $88   ; 47 
- - - - - - 0x01B3C8 06:93B8: 90        .byte $90   ; 48 
- - - - - - 0x01B3C9 06:93B9: 94        .byte $94   ; 49 
- - - - - - 0x01B3CA 06:93BA: 94        .byte $94   ; 4A 
- - - - - - 0x01B3CB 06:93BB: 90        .byte $90   ; 4B 
- - - - - - 0x01B3CC 06:93BC: 98        .byte $98   ; 4C 
- - - - - - 0x01B3CD 06:93BD: 9C        .byte $9C   ; 4D 
- - - - - - 0x01B3CE 06:93BE: 9C        .byte $9C   ; 4E 
- - - - - - 0x01B3CF 06:93BF: 98        .byte $98   ; 4F 
- D 0 - - - 0x01B3D0 06:93C0: A0        .byte $A0   ; 50 
- D 0 - - - 0x01B3D1 06:93C1: A4        .byte $A4   ; 51 
- D 0 - - - 0x01B3D2 06:93C2: A8        .byte $A8   ; 52 
- D 0 - - - 0x01B3D3 06:93C3: AC        .byte $AC   ; 53 
- D 0 - - - 0x01B3D4 06:93C4: B0        .byte $B0   ; 54 
- D 0 - - - 0x01B3D5 06:93C5: B4        .byte $B4   ; 55 
- D 0 - - - 0x01B3D6 06:93C6: B8        .byte $B8   ; 56 
- D 0 - - - 0x01B3D7 06:93C7: BC        .byte $BC   ; 57 
- D 0 - - - 0x01B3D8 06:93C8: C0        .byte $C0   ; 58 
- D 0 - - - 0x01B3D9 06:93C9: C4        .byte $C4   ; 59 
- D 0 - - - 0x01B3DA 06:93CA: C8        .byte $C8   ; 5A 
- D 0 - - - 0x01B3DB 06:93CB: CC        .byte $CC   ; 5B 
- D 0 - - - 0x01B3DC 06:93CC: D0        .byte $D0   ; 5C 
- D 0 - - - 0x01B3DD 06:93CD: D4        .byte $D4   ; 5D 
- D 0 - - - 0x01B3DE 06:93CE: D8        .byte $D8   ; 5E 
- D 0 - - - 0x01B3DF 06:93CF: DC        .byte $DC   ; 5F 
- D 0 - - - 0x01B3E0 06:93D0: E0        .byte $E0   ; 60 
- D 0 - - - 0x01B3E1 06:93D1: E4        .byte $E4   ; 61 
- D 0 - - - 0x01B3E2 06:93D2: E8        .byte $E8   ; 62 
- D 0 - - - 0x01B3E3 06:93D3: EC        .byte $EC   ; 63 
- D 0 - - - 0x01B3E4 06:93D4: F0        .byte $F0   ; 64 
- D 0 - - - 0x01B3E5 06:93D5: F4        .byte $F4   ; 65 
- D 0 - - - 0x01B3E6 06:93D6: F8        .byte $F8   ; 66 
- D 0 - - - 0x01B3E7 06:93D7: FC        .byte $FC   ; 67 



tbl_93D8_speed:
; index from 0x01B380
; 00 
- D 0 - - - 0x01B3E8 06:93D8: D0 FF     .word $FFD0 ; X
- D 0 - - - 0x01B3EA 06:93DA: 30 00     .word $0030 ; Y
; 04 
- D 0 - - - 0x01B3EC 06:93DC: 30 00     .word $0030 ; X
- D 0 - - - 0x01B3EE 06:93DE: 30 00     .word $0030 ; Y
; 08 
- D 0 - - - 0x01B3F0 06:93E0: E0 FF     .word $FFE0 ; X
- D 0 - - - 0x01B3F2 06:93E2: 30 00     .word $0030 ; Y
; 0C 
- D 0 - - - 0x01B3F4 06:93E4: 20 00     .word $0020 ; X
- D 0 - - - 0x01B3F6 06:93E6: 30 00     .word $0030 ; Y
; 10 
- D 0 - - - 0x01B3F8 06:93E8: 18 00     .word $0018 ; X
- D 0 - - - 0x01B3FA 06:93EA: 18 00     .word $0018 ; Y
; 14 
- D 0 - - - 0x01B3FC 06:93EC: 18 00     .word $0018 ; X
- D 0 - - - 0x01B3FE 06:93EE: E8 FF     .word $FFE8 ; Y
; 18 
- D 0 - - - 0x01B400 06:93F0: E8 FF     .word $FFE8 ; X
- D 0 - - - 0x01B402 06:93F2: 18 00     .word $0018 ; Y
; 1C 
- D 0 - - - 0x01B404 06:93F4: E8 FF     .word $FFE8 ; X
- D 0 - - - 0x01B406 06:93F6: E8 FF     .word $FFE8 ; Y
; 20 
- D 0 - - - 0x01B408 06:93F8: E0 FF     .word $FFE0 ; X
- D 0 - - - 0x01B40A 06:93FA: 40 00     .word $0040 ; Y
; 24 
- D 0 - - - 0x01B40C 06:93FC: 20 00     .word $0020 ; X
- D 0 - - - 0x01B40E 06:93FE: 40 00     .word $0040 ; Y
; 28 
- - - - - - 0x01B410 06:9400: E0 FF     .word $FFE0 ; X
- - - - - - 0x01B412 06:9402: 20 00     .word $0020 ; Y
; 2C 
- - - - - - 0x01B414 06:9404: E0 FF     .word $FFE0 ; X
- - - - - - 0x01B416 06:9406: E0 FF     .word $FFE0 ; Y
; 30 
- D 0 - - - 0x01B418 06:9408: FE FF     .word $FFFE ; X
- D 0 - - - 0x01B41A 06:940A: 20 00     .word $0020 ; Y
; 34 
- D 0 - - - 0x01B41C 06:940C: 02 00     .word $0002 ; X
- D 0 - - - 0x01B41E 06:940E: 20 00     .word $0020 ; Y
; 38 
- D 0 - - - 0x01B420 06:9410: FB FF     .word $FFFB ; X
- D 0 - - - 0x01B422 06:9412: 20 00     .word $0020 ; Y
; 3C 
- D 0 - - - 0x01B424 06:9414: 05 00     .word $0005 ; X
- D 0 - - - 0x01B426 06:9416: 20 00     .word $0020 ; Y
; 40 
- D 0 - - - 0x01B428 06:9418: F6 FF     .word $FFF6 ; X
- D 0 - - - 0x01B42A 06:941A: 20 00     .word $0020 ; Y
; 44 
- D 0 - - - 0x01B42C 06:941C: 0A 00     .word $000A ; X
- D 0 - - - 0x01B42E 06:941E: 20 00     .word $0020 ; Y
; 48 
- D 0 - - - 0x01B430 06:9420: F4 FF     .word $FFF4 ; X
- D 0 - - - 0x01B432 06:9422: 24 00     .word $0024 ; Y
; 4C 
- D 0 - - - 0x01B434 06:9424: 0C 00     .word $000C ; X
- D 0 - - - 0x01B436 06:9426: 24 00     .word $0024 ; Y
; 50 
- D 0 - - - 0x01B438 06:9428: F2 FF     .word $FFF2 ; X
- D 0 - - - 0x01B43A 06:942A: 24 00     .word $0024 ; Y
; 54 
- D 0 - - - 0x01B43C 06:942C: 0E 00     .word $000E ; X
- D 0 - - - 0x01B43E 06:942E: 24 00     .word $0024 ; Y
; 58 
- D 0 - - - 0x01B440 06:9430: F0 FF     .word $FFF0 ; X
- D 0 - - - 0x01B442 06:9432: 24 00     .word $0024 ; Y
; 5C 
- D 0 - - - 0x01B444 06:9434: 10 00     .word $0010 ; X
- D 0 - - - 0x01B446 06:9436: 24 00     .word $0024 ; Y
; 60 
- D 0 - - - 0x01B448 06:9438: EE FF     .word $FFEE ; X
- D 0 - - - 0x01B44A 06:943A: 24 00     .word $0024 ; Y
; 64 
- D 0 - - - 0x01B44C 06:943C: 12 00     .word $0012 ; X
- D 0 - - - 0x01B44E 06:943E: 24 00     .word $0024 ; Y
; 68 
- D 0 - - - 0x01B450 06:9440: EC FF     .word $FFEC ; X
- D 0 - - - 0x01B452 06:9442: 24 00     .word $0024 ; Y
; 6C 
- D 0 - - - 0x01B454 06:9444: 14 00     .word $0014 ; X
- D 0 - - - 0x01B456 06:9446: 24 00     .word $0024 ; Y
; 70 
- - - - - - 0x01B458 06:9448: E6 FF     .word $FFE6 ; X
- - - - - - 0x01B45A 06:944A: 24 00     .word $0024 ; Y
; 74 
- D 0 - - - 0x01B45C 06:944C: 1A 00     .word $001A ; X
- D 0 - - - 0x01B45E 06:944E: 24 00     .word $0024 ; Y
; 78 
- D 0 - - - 0x01B460 06:9450: E2 FF     .word $FFE2 ; X
- D 0 - - - 0x01B462 06:9452: 24 00     .word $0024 ; Y
; 7C 
- D 0 - - - 0x01B464 06:9454: 1E 00     .word $001E ; X
- D 0 - - - 0x01B466 06:9456: 24 00     .word $0024 ; Y
; 80 
- - - - - - 0x01B468 06:9458: DE FF     .word $FFDE ; X
- - - - - - 0x01B46A 06:945A: 24 00     .word $0024 ; Y
; 84 
- - - - - - 0x01B46C 06:945C: 22 00     .word $0022 ; X
- - - - - - 0x01B46E 06:945E: 24 00     .word $0024 ; Y
; 88 
- - - - - - 0x01B470 06:9460: DA FF     .word $FFDA ; X
- - - - - - 0x01B472 06:9462: 24 00     .word $0024 ; Y
; 8C 
- - - - - - 0x01B474 06:9464: 26 00     .word $0026 ; X
- - - - - - 0x01B476 06:9466: 24 00     .word $0024 ; Y
; 90 
- - - - - - 0x01B478 06:9468: 00 00     .word $0000 ; X
- - - - - - 0x01B47A 06:946A: 00 00     .word $0000 ; Y
; 94 
- - - - - - 0x01B47C 06:946C: 00 00     .word $0000 ; X
- - - - - - 0x01B47E 06:946E: 00 00     .word $0000 ; Y
; 98 
- - - - - - 0x01B480 06:9470: 00 00     .word $0000 ; X
- - - - - - 0x01B482 06:9472: F0 FF     .word $FFF0 ; Y
; 9C 
- - - - - - 0x01B484 06:9474: 00 00     .word $0000 ; X
- - - - - - 0x01B486 06:9476: E8 FF     .word $FFE8 ; Y
; A0 
- D 0 - - - 0x01B488 06:9478: 07 00     .word $0007 ; X
- D 0 - - - 0x01B48A 06:947A: 0E 00     .word $000E ; Y
; A4 
- D 0 - - - 0x01B48C 06:947C: 00 00     .word $0000 ; X
- D 0 - - - 0x01B48E 06:947E: 10 00     .word $0010 ; Y
; A8 
- D 0 - - - 0x01B490 06:9480: F9 FF     .word $FFF9 ; X
- D 0 - - - 0x01B492 06:9482: 0E 00     .word $000E ; Y
; AC 
- D 0 - - - 0x01B494 06:9484: 0F 00     .word $000F ; X
- D 0 - - - 0x01B496 06:9486: 1D 00     .word $001D ; Y
; B0 
- D 0 - - - 0x01B498 06:9488: 00 00     .word $0000 ; X
- D 0 - - - 0x01B49A 06:948A: 20 00     .word $0020 ; Y
; B4 
- D 0 - - - 0x01B49C 06:948C: F1 FF     .word $FFF1 ; X
- D 0 - - - 0x01B49E 06:948E: 1D 00     .word $001D ; Y
; B8 
- D 0 - - - 0x01B4A0 06:9490: 16 00     .word $0016 ; X
- D 0 - - - 0x01B4A2 06:9492: 2C 00     .word $002C ; Y
; BC 
- D 0 - - - 0x01B4A4 06:9494: 00 00     .word $0000 ; X
- D 0 - - - 0x01B4A6 06:9496: 30 00     .word $0030 ; Y
; C0 
- D 0 - - - 0x01B4A8 06:9498: EA FF     .word $FFEA ; X
- D 0 - - - 0x01B4AA 06:949A: 2C 00     .word $002C ; Y
; C4 
- D 0 - - - 0x01B4AC 06:949C: 1E 00     .word $001E ; X
- D 0 - - - 0x01B4AE 06:949E: 3B 00     .word $003B ; Y
; C8 
- D 0 - - - 0x01B4B0 06:94A0: 00 00     .word $0000 ; X
- D 0 - - - 0x01B4B2 06:94A2: 40 00     .word $0040 ; Y
; CC 
- D 0 - - - 0x01B4B4 06:94A4: E2 FF     .word $FFE2 ; X
- D 0 - - - 0x01B4B6 06:94A6: 3B 00     .word $003B ; Y
; D0 
- D 0 - - - 0x01B4B8 06:94A8: 25 00     .word $0025 ; X
- D 0 - - - 0x01B4BA 06:94AA: 49 00     .word $0049 ; Y
; D4 
- D 0 - - - 0x01B4BC 06:94AC: 00 00     .word $0000 ; X
- D 0 - - - 0x01B4BE 06:94AE: 50 00     .word $0050 ; Y
; D8 
- D 0 - - - 0x01B4C0 06:94B0: DB FF     .word $FFDB ; X
- D 0 - - - 0x01B4C2 06:94B2: 49 00     .word $0049 ; Y
; DC 
- D 0 - - - 0x01B4C4 06:94B4: 2D 00     .word $002D ; X
- D 0 - - - 0x01B4C6 06:94B6: 58 00     .word $0058 ; Y
; E0 
- D 0 - - - 0x01B4C8 06:94B8: 00 00     .word $0000 ; X
- D 0 - - - 0x01B4CA 06:94BA: 60 00     .word $0060 ; Y
; E4 
- D 0 - - - 0x01B4CC 06:94BC: D3 FF     .word $FFD3 ; X
- D 0 - - - 0x01B4CE 06:94BE: 58 00     .word $0058 ; Y
; E8 
- D 0 - - - 0x01B4D0 06:94C0: 35 00     .word $0035 ; X
- D 0 - - - 0x01B4D2 06:94C2: 67 00     .word $0067 ; Y
; EC 
- D 0 - - - 0x01B4D4 06:94C4: 00 00     .word $0000 ; X
- D 0 - - - 0x01B4D6 06:94C6: 70 00     .word $0070 ; Y
; F0 
- D 0 - - - 0x01B4D8 06:94C8: CB FF     .word $FFCB ; X
- D 0 - - - 0x01B4DA 06:94CA: 67 00     .word $0067 ; Y
; F4 
- D 0 - - - 0x01B4DC 06:94CC: 3C 00     .word $003C ; X
- D 0 - - - 0x01B4DE 06:94CE: 76 00     .word $0076 ; Y
; F8 
- D 0 - - - 0x01B4E0 06:94D0: 00 00     .word $0000 ; X
- D 0 - - - 0x01B4E2 06:94D2: 80 00     .word $0080 ; Y
; FC 
- D 0 - - - 0x01B4E4 06:94D4: C4 FF     .word $FFC4 ; X
- D 0 - - - 0x01B4E6 06:94D6: 76 00     .word $0076 ; Y



tbl_94D8:
;                                              +-------------------------------------------- index for 0x01B678
;                                              |          +--------------------------------- 
;                                              |          |    +---------------------------- index will be for 0x01B6B0 (00) or 0x01B6E0 (80)
;                                              |          |    |     +---------------------- index for 0x01B6B0 / 0x01B6E0
;                                              |          |    |     |          +----------- index for 0x01B310
;                                              |          |    |     |          |
- D 0 - - - 0x01B4E8 06:94D8: 00        .byte $00 * $04, $00, $00 + $00 * $04, $00 * $04   ; 00 
- D 0 - - - 0x01B4EC 06:94DC: 00        .byte $00 * $04, $02, $00 + $01 * $04, $01 * $04   ; 04 
- D 0 - - - 0x01B4F0 06:94E0: 00        .byte $00 * $04, $04, $00 + $00 * $04, $02 * $04   ; 08 
- D 0 - - - 0x01B4F4 06:94E4: 00        .byte $00 * $04, $06, $00 + $01 * $04, $03 * $04   ; 0C 
- - - - - - 0x01B4F8 06:94E8: 00        .byte $00 * $04, $08, $00 + $00 * $04, $04 * $04   ; 10 
- D 0 - - - 0x01B4FC 06:94EC: 00        .byte $00 * $04, $0A, $00 + $01 * $04, $05 * $04   ; 14 
- D 0 - - - 0x01B500 06:94F0: 00        .byte $00 * $04, $00, $80 + $02 * $02, $00 * $04   ; 18 
- D 0 - - - 0x01B504 06:94F4: 00        .byte $00 * $04, $02, $80 + $03 * $02, $01 * $04   ; 1C 
- D 0 - - - 0x01B508 06:94F8: 00        .byte $00 * $04, $04, $80 + $02 * $02, $02 * $04   ; 20 
- D 0 - - - 0x01B50C 06:94FC: 00        .byte $00 * $04, $06, $80 + $03 * $02, $03 * $04   ; 24 
- - - - - - 0x01B510 06:9500: 00        .byte $00 * $04, $08, $80 + $02 * $02, $04 * $04   ; 28 
- D 0 - - - 0x01B514 06:9504: 00        .byte $00 * $04, $0A, $80 + $03 * $02, $05 * $04   ; 2C 
- D 0 - - - 0x01B518 06:9508: 04        .byte $01 * $04, $14, $80 + $00 * $02, $0A * $04   ; 30 
- D 0 - - - 0x01B51C 06:950C: 04        .byte $01 * $04, $14, $80 + $01 * $02, $0A * $04   ; 34 
- D 0 - - - 0x01B520 06:9510: 04        .byte $01 * $04, $0C, $80 + $02 * $02, $06 * $04   ; 38 
- D 0 - - - 0x01B524 06:9514: 04        .byte $01 * $04, $0E, $80 + $03 * $02, $07 * $04   ; 3C 
- - - - - - 0x01B528 06:9518: 04        .byte $01 * $04, $10, $80 + $00 * $02, $08 * $04   ; 40 
- - - - - - 0x01B52C 06:951C: 04        .byte $01 * $04, $12, $80 + $01 * $02, $09 * $04   ; 44 
- D 0 - - - 0x01B530 06:9520: 08        .byte $02 * $04, $18, $80 + $02 * $02, $0B * $04   ; 48 
- - - - - - 0x01B534 06:9524: 08        .byte $02 * $04, $1A, $80 + $03 * $02, $0B * $04   ; 4C 
- - - - - - 0x01B538 06:9528: 0C        .byte $03 * $04, $20, $80 + $04 * $02, $08 * $04   ; 50 
- D 0 - - - 0x01B53C 06:952C: 0C        .byte $03 * $04, $20, $80 + $04 * $02, $1A * $04   ; 54 
- D 0 - - - 0x01B540 06:9530: 0C        .byte $03 * $04, $22, $80 + $05 * $02, $09 * $04   ; 58 
- D 0 - - - 0x01B544 06:9534: 0C        .byte $03 * $04, $22, $80 + $05 * $02, $1B * $04   ; 5C 
- D 0 - - - 0x01B548 06:9538: 0C        .byte $03 * $04, $1C, $80 + $06 * $02, $06 * $04   ; 60 
- D 0 - - - 0x01B54C 06:953C: 0C        .byte $03 * $04, $1E, $80 + $07 * $02, $07 * $04   ; 64 
- D 0 - - - 0x01B550 06:9540: 10        .byte $04 * $04, $2C, $80 + $08 * $02, $15 * $04   ; 68 
- D 0 - - - 0x01B554 06:9544: 10        .byte $04 * $04, $2C, $80 + $09 * $02, $15 * $04   ; 6C 
- - - - - - 0x01B558 06:9548: 10        .byte $04 * $04, $24, $80 + $0A * $02, $16 * $04   ; 70 
- - - - - - 0x01B55C 06:954C: 10        .byte $04 * $04, $26, $80 + $0B * $02, $17 * $04   ; 74 
- - - - - - 0x01B560 06:9550: 10        .byte $04 * $04, $28, $80 + $0A * $02, $18 * $04   ; 78 
- - - - - - 0x01B564 06:9554: 10        .byte $04 * $04, $2A, $80 + $0B * $02, $19 * $04   ; 7C 
- D 0 - - - 0x01B568 06:9558: 14        .byte $05 * $04, $30, $80 + $0A * $02, $0E * $04   ; 80 
- - - - - - 0x01B56C 06:955C: 14        .byte $05 * $04, $32, $80 + $0B * $02, $0F * $04   ; 84 
- D 0 - - - 0x01B570 06:9560: 14        .byte $05 * $04, $34, $80 + $0A * $02, $10 * $04   ; 88 
- - - - - - 0x01B574 06:9564: 14        .byte $05 * $04, $36, $80 + $0B * $02, $11 * $04   ; 8C 
- - - - - - 0x01B578 06:9568: 18        .byte $06 * $04, $38, $80 + $0A * $02, $0E * $04   ; 90 
- D 0 - - - 0x01B57C 06:956C: 18        .byte $06 * $04, $3A, $80 + $0B * $02, $0F * $04   ; 94 
- - - - - - 0x01B580 06:9570: 18        .byte $06 * $04, $3C, $80 + $0A * $02, $10 * $04   ; 98 
- - - - - - 0x01B584 06:9574: 18        .byte $06 * $04, $3E, $80 + $0B * $02, $11 * $04   ; 9C 
- D 0 - - - 0x01B588 06:9578: 30        .byte $0C * $04, $58, $80 + $14 * $02, $0B * $04   ; A0 
- D 0 - - - 0x01B58C 06:957C: 30        .byte $0C * $04, $5A, $80 + $15 * $02, $0B * $04   ; A4 
- D 0 - - - 0x01B590 06:9580: 1C        .byte $07 * $04, $44, $80 + $12 * $02, $06 * $04   ; A8 
- D 0 - - - 0x01B594 06:9584: 1C        .byte $07 * $04, $46, $80 + $13 * $02, $07 * $04   ; AC 
- D 0 - - - 0x01B598 06:9588: 20        .byte $08 * $04, $48, $00 + $02 * $04, $12 * $04   ; B0 
- D 0 - - - 0x01B59C 06:958C: 20        .byte $08 * $04, $48, $00 + $03 * $04, $12 * $04   ; B4 
- D 0 - - - 0x01B5A0 06:9590: 20        .byte $08 * $04, $48, $00 + $04 * $04, $12 * $04   ; B8 
- D 0 - - - 0x01B5A4 06:9594: 20        .byte $08 * $04, $48, $00 + $05 * $04, $12 * $04   ; BC 
- D 0 - - - 0x01B5A8 06:9598: 20        .byte $08 * $04, $48, $00 + $06 * $04, $12 * $04   ; C0 
- D 0 - - - 0x01B5AC 06:959C: 20        .byte $08 * $04, $48, $00 + $07 * $04, $12 * $04   ; C4 
- D 0 - - - 0x01B5B0 06:95A0: 20        .byte $08 * $04, $48, $00 + $08 * $04, $12 * $04   ; C8 
- D 0 - - - 0x01B5B4 06:95A4: 20        .byte $08 * $04, $48, $00 + $09 * $04, $12 * $04   ; CC 
- D 0 - - - 0x01B5B8 06:95A8: 20        .byte $08 * $04, $48, $00 + $0A * $04, $12 * $04   ; D0 
- D 0 - - - 0x01B5BC 06:95AC: 20        .byte $08 * $04, $48, $00 + $0B * $04, $12 * $04   ; D4 
- D 0 - - - 0x01B5C0 06:95B0: 20        .byte $08 * $04, $48, $00 + $0C * $04, $12 * $04   ; D8 
- D 0 - - - 0x01B5C4 06:95B4: 24        .byte $09 * $04, $4A, $80 + $0C * $02, $13 * $04   ; DC 
- D 0 - - - 0x01B5C8 06:95B8: 24        .byte $09 * $04, $4C, $80 + $0C * $02, $14 * $04   ; E0 
- D 0 - - - 0x01B5CC 06:95BC: 2C        .byte $0B * $04, $4E, $80 + $0D * $02, $0B * $04   ; E4 
- D 0 - - - 0x01B5D0 06:95C0: 2C        .byte $0B * $04, $50, $80 + $0E * $02, $0B * $04   ; E8 
- D 0 - - - 0x01B5D4 06:95C4: 2C        .byte $0B * $04, $52, $80 + $0F * $02, $0B * $04   ; EC 
- D 0 - - - 0x01B5D8 06:95C8: 28        .byte $0A * $04, $54, $80 + $02 * $02, $0B * $04   ; F0 
- D 0 - - - 0x01B5DC 06:95CC: 28        .byte $0A * $04, $56, $80 + $03 * $02, $0B * $04   ; F4 
- D 0 - - - 0x01B5E0 06:95D0: 0C        .byte $03 * $04, $1C, $80 + $10 * $02, $06 * $04   ; F8 
- D 0 - - - 0x01B5E4 06:95D4: 0C        .byte $03 * $04, $1E, $80 + $11 * $02, $07 * $04   ; FC 



tbl_0x01B5E8:
;                                              00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F
- - - - - - 0x01B5E8 06:95D8: FF        .byte $FF, $0A, $0A, $08, $06, $06, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 00 
- D 0 - - - 0x01B5F8 06:95E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $07, $07, $09, $0B, $0B   ; 10 
- D 0 - - - 0x01B608 06:95F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $14, $15, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 20 
- D 0 - - - 0x01B618 06:9608: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $17, $16, $FF, $FF, $FF, $FF, $FF   ; 30 
- D 0 - - - 0x01B628 06:9618: FF        .byte $FF, $22, $22, $22, $20, $20, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 40 
- - - - - - 0x01B638 06:9628: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $21, $21, $23, $23, $23   ; 50 
- - - - - - 0x01B648 06:9638: FF        .byte $FF, $26, $26, $26, $24, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 60 
- - - - - - 0x01B658 06:9648: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $25, $27, $27, $27   ; 70 
- D 0 - - - 0x01B668 06:9658: 00        .byte $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0A, $0B, $0C, $0D, $0E, $0F   ; 80 




tbl_9668:
; 00 
- D 0 - - - 0x01B678 06:9668: 80        .byte $80   ; 
- D 0 - - - 0x01B679 06:9669: 24        .byte con_enemy_id_24   ; 
- D 0 - - - 0x01B67A 06:966A: 05        .byte $05   ; 
- D 0 - - - 0x01B67B 06:966B: 00        .byte con_000D_00   ; 
; 01 
- D 0 - - - 0x01B67C 06:966C: 80        .byte $80   ; 
- D 0 - - - 0x01B67D 06:966D: 25        .byte con_enemy_id_25   ; 
- D 0 - - - 0x01B67E 06:966E: 03        .byte $03   ; 
- D 0 - - - 0x01B67F 06:966F: 00        .byte con_000D_00   ; 
; 02 
- D 0 - - - 0x01B680 06:9670: 80        .byte $80   ; 
- D 0 - - - 0x01B681 06:9671: 26        .byte con_enemy_id_26   ; 
- D 0 - - - 0x01B682 06:9672: 03        .byte $03   ; 
- D 0 - - - 0x01B683 06:9673: 00        .byte con_000D_00   ; 
; 03 
- D 0 - - - 0x01B684 06:9674: 80        .byte $80   ; 
- D 0 - - - 0x01B685 06:9675: 27        .byte con_enemy_id_27   ; 
- D 0 - - - 0x01B686 06:9676: 03        .byte $03   ; 
- D 0 - - - 0x01B687 06:9677: 00        .byte con_000D_00   ; 
; 04 
- D 0 - - - 0x01B688 06:9678: 80        .byte $80   ; 
- D 0 - - - 0x01B689 06:9679: 28        .byte con_enemy_id_28   ; 
- D 0 - - - 0x01B68A 06:967A: 04        .byte $04   ; 
- D 0 - - - 0x01B68B 06:967B: 01        .byte con_000D_01   ; 
; 05 
- D 0 - - - 0x01B68C 06:967C: 80        .byte $80   ; 
- D 0 - - - 0x01B68D 06:967D: 29        .byte con_enemy_id_29   ; 
- D 0 - - - 0x01B68E 06:967E: 04        .byte $04   ; 
- D 0 - - - 0x01B68F 06:967F: 09        .byte con_000D_09   ; 
; 06 
- D 0 - - - 0x01B690 06:9680: 80        .byte $80   ; 
- D 0 - - - 0x01B691 06:9681: 2A        .byte con_enemy_id_2A   ; 
- D 0 - - - 0x01B692 06:9682: 04        .byte $04   ; 
- D 0 - - - 0x01B693 06:9683: 01        .byte con_000D_01   ; 
; 07 
- D 0 - - - 0x01B694 06:9684: 80        .byte $80   ; 
- D 0 - - - 0x01B695 06:9685: 2B        .byte con_enemy_id_2B   ; 
- D 0 - - - 0x01B696 06:9686: 08        .byte $08   ; 
- D 0 - - - 0x01B697 06:9687: 0A        .byte con_000D_0A   ; 
; 08 
- D 0 - - - 0x01B698 06:9688: 81        .byte $81   ; 
- D 0 - - - 0x01B699 06:9689: 2C        .byte con_enemy_id_2C   ; 
- D 0 - - - 0x01B69A 06:968A: 02        .byte $02   ; 
- D 0 - - - 0x01B69B 06:968B: 00        .byte con_000D_00   ; 
; 09 
- D 0 - - - 0x01B69C 06:968C: 81        .byte $81   ; 
- D 0 - - - 0x01B69D 06:968D: 2D        .byte con_enemy_id_2D   ; 
- D 0 - - - 0x01B69E 06:968E: 00        .byte $00   ; 
- D 0 - - - 0x01B69F 06:968F: 00        .byte con_000D_00   ; 
; 0A 
- D 0 - - - 0x01B6A0 06:9690: 80        .byte $80   ; 
- D 0 - - - 0x01B6A1 06:9691: 2E        .byte con_enemy_id_2E   ; 
- D 0 - - - 0x01B6A2 06:9692: 03        .byte $03   ; 
- D 0 - - - 0x01B6A3 06:9693: 00        .byte con_000D_00   ; 
; 0B 
- D 0 - - - 0x01B6A4 06:9694: 80        .byte $80   ; 
- D 0 - - - 0x01B6A5 06:9695: 2F        .byte con_enemy_id_2F   ; 
- D 0 - - - 0x01B6A6 06:9696: 04        .byte $04   ; 
- D 0 - - - 0x01B6A7 06:9697: 00        .byte con_000D_00   ; 
; 0C 
- D 0 - - - 0x01B6A8 06:9698: 80        .byte $80   ; 
- D 0 - - - 0x01B6A9 06:9699: 30        .byte con_enemy_id_30   ; 
- D 0 - - - 0x01B6AA 06:969A: 04        .byte $04   ; 
- D 0 - - - 0x01B6AB 06:969B: 00        .byte con_000D_00   ; 



tbl_969C_positions:
tbl_0x01B6AC_positions:
; 00 
- D 0 - - - 0x01B6AC 06:969C: 10 01     .word $0110 ; X
- D 0 - - - 0x01B6AE 06:969E: A4 00     .word $00A4 ; Y
; 01 
- D 0 - - - 0x01B6B0 06:96A0: F0 FF     .word $FFF0 ; X
- D 0 - - - 0x01B6B2 06:96A2: A4 00     .word $00A4 ; Y
; 02 
- D 0 - - - 0x01B6B4 06:96A4: 90 00     .word $0090 ; X
- D 0 - - - 0x01B6B6 06:96A6: 00 00     .word $0000 ; Y
; 03 
- D 0 - - - 0x01B6B8 06:96A8: C0 00     .word $00C0 ; X
- D 0 - - - 0x01B6BA 06:96AA: F0 FF     .word $FFF0 ; Y
; 04 
- D 0 - - - 0x01B6BC 06:96AC: 60 00     .word $0060 ; X
- D 0 - - - 0x01B6BE 06:96AE: E0 FF     .word $FFE0 ; Y
; 05 
- D 0 - - - 0x01B6C0 06:96B0: 50 00     .word $0050 ; X
- D 0 - - - 0x01B6C2 06:96B2: 00 00     .word $0000 ; Y
; 06 
- D 0 - - - 0x01B6C4 06:96B4: 90 00     .word $0090 ; X
- D 0 - - - 0x01B6C6 06:96B6: F0 FF     .word $FFF0 ; Y
; 07 
- D 0 - - - 0x01B6C8 06:96B8: 20 00     .word $0020 ; X
- D 0 - - - 0x01B6CA 06:96BA: E0 FF     .word $FFE0 ; Y
; 08 
- D 0 - - - 0x01B6CC 06:96BC: 60 00     .word $0060 ; X
- D 0 - - - 0x01B6CE 06:96BE: 00 00     .word $0000 ; Y
; 09 
- D 0 - - - 0x01B6D0 06:96C0: A0 00     .word $00A0 ; X
- D 0 - - - 0x01B6D2 06:96C2: F0 FF     .word $FFF0 ; Y
; 0A 
- D 0 - - - 0x01B6D4 06:96C4: A0 00     .word $00A0 ; X
- D 0 - - - 0x01B6D6 06:96C6: 00 00     .word $0000 ; Y
; 0B 
- D 0 - - - 0x01B6D8 06:96C8: 60 00     .word $0060 ; X
- D 0 - - - 0x01B6DA 06:96CA: E0 FF     .word $FFE0 ; Y
; 0C 
- D 0 - - - 0x01B6DC 06:96CC: E0 00     .word $00E0 ; X
- D 0 - - - 0x01B6DE 06:96CE: F0 FF     .word $FFF0 ; Y



tbl_96D0_speed_lo:
;                                              +---------- spd_X_lo
;                                              |    +----- spd_Y_lo
;                                              |    |
- D 0 - - - 0x01B6E0 06:96D0: F4        .byte $F4, $F8   ; 80 
- D 0 - - - 0x01B6E2 06:96D2: 0C        .byte $0C, $F8   ; 82 
- D 0 - - - 0x01B6E4 06:96D4: E8        .byte $E8, $E4   ; 84 
- D 0 - - - 0x01B6E6 06:96D6: 18        .byte $18, $E4   ; 86 
- D 0 - - - 0x01B6E8 06:96D8: E8        .byte $E8, $F4   ; 88 
- D 0 - - - 0x01B6EA 06:96DA: 18        .byte $18, $F4   ; 8A 
- D 0 - - - 0x01B6EC 06:96DC: E8        .byte $E8, $DA   ; 8C 
- D 0 - - - 0x01B6EE 06:96DE: 18        .byte $18, $DA   ; 8E 
- D 0 - - - 0x01B6F0 06:96E0: F4        .byte $F4, $00   ; 90 
- D 0 - - - 0x01B6F2 06:96E2: 0C        .byte $0C, $00   ; 92 
- D 0 - - - 0x01B6F4 06:96E4: E4        .byte $E4, $E4   ; 94 
- D 0 - - - 0x01B6F6 06:96E6: 1C        .byte $1C, $E4   ; 96 
- D 0 - - - 0x01B6F8 06:96E8: 00        .byte $00, $00   ; 98 
- D 0 - - - 0x01B6FA 06:96EA: F8        .byte $F8, $0D   ; 9A 
- D 0 - - - 0x01B6FC 06:96EC: 08        .byte $08, $0D   ; 9C 
- D 0 - - - 0x01B6FE 06:96EE: 00        .byte $00, $10   ; 9E 
- D 0 - - - 0x01B700 06:96F0: EC        .byte $EC, $E2   ; A0 
- D 0 - - - 0x01B702 06:96F2: 14        .byte $14, $E2   ; A2 
- D 0 - - - 0x01B704 06:96F4: E4        .byte $E4, $EC   ; A4 
- D 0 - - - 0x01B706 06:96F6: 1C        .byte $1C, $EC   ; A6 
- D 0 - - - 0x01B708 06:96F8: EC        .byte $EC, $F4   ; A8 
- D 0 - - - 0x01B70A 06:96FA: 14        .byte $14, $F4   ; AA 



tbl_96FC:
- D 0 - - - 0x01B70C 06:96FC: 08 97     .word _off021_9708_00
- D 0 - - - 0x01B70E 06:96FE: 10 97     .word _off021_9710_02
- D 0 - - - 0x01B710 06:9700: 22 97     .word _off021_9722_04
- - - - - - 0x01B712 06:9702: 25 97     .word _off021_9725_06
- D 0 - - - 0x01B714 06:9704: 22 97     .word _off021_9722_08
- - - - - - 0x01B716 06:9706: 32 97     .word _off021_9732_0A



_off021_9708_00:
- D 0 - I - 0x01B718 06:9708: 18        .byte $18   ; 
- D 0 - I - 0x01B719 06:9709: 17        .byte $17   ; 
- D 0 - I - 0x01B71A 06:970A: 10        .byte $10   ; 
- D 0 - I - 0x01B71B 06:970B: 0F        .byte $0F   ; 
- D 0 - I - 0x01B71C 06:970C: 04        .byte $04   ; 
- D 0 - I - 0x01B71D 06:970D: 02        .byte $02   ; 
- D 0 - I - 0x01B71E 06:970E: 01        .byte $01   ; 
- D 0 - I - 0x01B71F 06:970F: FF        .byte $FF   ; end token



_off021_9710_02:
- D 0 - I - 0x01B720 06:9710: 32        .byte $32   ; 
- D 0 - I - 0x01B721 06:9711: 31        .byte $31   ; 
- D 0 - I - 0x01B722 06:9712: 30        .byte $30   ; 
- D 0 - I - 0x01B723 06:9713: 28        .byte $28   ; 
- D 0 - I - 0x01B724 06:9714: 27        .byte $27   ; 
- D 0 - I - 0x01B725 06:9715: 26        .byte $26   ; 
- D 0 - I - 0x01B726 06:9716: 1E        .byte $1E   ; 
- D 0 - I - 0x01B727 06:9717: 1D        .byte $1D   ; 
- D 0 - I - 0x01B728 06:9718: 1C        .byte $1C   ; 
- D 0 - I - 0x01B729 06:9719: 14        .byte $14   ; 
- D 0 - I - 0x01B72A 06:971A: 13        .byte $13   ; 
- D 0 - I - 0x01B72B 06:971B: 12        .byte $12   ; 
- D 0 - I - 0x01B72C 06:971C: 0A        .byte $0A   ; 
- D 0 - I - 0x01B72D 06:971D: 09        .byte $09   ; 
- D 0 - I - 0x01B72E 06:971E: 08        .byte $08   ; 
- D 0 - I - 0x01B72F 06:971F: 07        .byte $07   ; 
- D 0 - I - 0x01B730 06:9720: 03        .byte $03   ; 
- D 0 - I - 0x01B731 06:9721: FF        .byte $FF   ; end token



_off021_9722_04:
_off021_9722_08:
- D 0 - I - 0x01B732 06:9722: 3C        .byte $3C   ; 
- D 0 - I - 0x01B733 06:9723: 3B        .byte $3B   ; 
- D 0 - I - 0x01B734 06:9724: 3A        .byte $3A   ; 
_off021_9725_06:
- D 0 - I - 0x01B735 06:9725: 32        .byte $32   ; 
- D 0 - I - 0x01B736 06:9726: 31        .byte $31   ; 
- D 0 - I - 0x01B737 06:9727: 30        .byte $30   ; 
- D 0 - I - 0x01B738 06:9728: 28        .byte $28   ; 
- D 0 - I - 0x01B739 06:9729: 27        .byte $27   ; 
- D 0 - I - 0x01B73A 06:972A: 26        .byte $26   ; 
- D 0 - I - 0x01B73B 06:972B: 1E        .byte $1E   ; 
- D 0 - I - 0x01B73C 06:972C: 1D        .byte $1D   ; 
- D 0 - I - 0x01B73D 06:972D: 1C        .byte $1C   ; 
- D 0 - I - 0x01B73E 06:972E: 14        .byte $14   ; 
- D 0 - I - 0x01B73F 06:972F: 13        .byte $13   ; 
- D 0 - I - 0x01B740 06:9730: 12        .byte $12   ; 
- D 0 - I - 0x01B741 06:9731: FF        .byte $FF   ; end token



_off021_9732_0A:
- - - - - - 0x01B742 06:9732: 32        .byte $32   ; 
- - - - - - 0x01B743 06:9733: 28        .byte $28   ; 
- - - - - - 0x01B744 06:9734: 1E        .byte $1E   ; 
- - - - - - 0x01B745 06:9735: 14        .byte $14   ; 
- - - - - - 0x01B746 06:9736: 0A        .byte $0A   ; 
- - - - - - 0x01B747 06:9737: FF        .byte $FF   ; end token



sub_0x01B748_damage:
; in
    ; Y = table index
C - - - - - 0x01B748 06:9738: B9 FC 96  LDA tbl_96FC,Y
C - - - - - 0x01B74B 06:973B: 85 5B     STA ram_005B_t02_data
C - - - - - 0x01B74D 06:973D: B9 FD 96  LDA tbl_96FC + $01,Y
C - - - - - 0x01B750 06:9740: 85 5C     STA ram_005B_t02_data + $01
C - - - - - 0x01B752 06:9742: A4 79     LDY ram_0079_obj_index
C - - - - - 0x01B754 06:9744: B9 79 05  LDA ram_obj_hp,Y
C - - - - - 0x01B757 06:9747: 85 71     STA ram_0071_t19_damage_to_player
C - - - - - 0x01B759 06:9749: A0 FF     LDY #$FF
bra_974B_loop:
C - - - - - 0x01B75B 06:974B: C8        INY
C - - - - - 0x01B75C 06:974C: B1 5B     LDA (ram_005B_t02_data),Y
C - - - - - 0x01B75E 06:974E: 30 04     BMI bra_9754_RTS
C - - - - - 0x01B760 06:9750: C5 71     CMP ram_0071_t19_damage_to_player
C - - - - - 0x01B762 06:9752: D0 F7     BNE bra_974B_loop
bra_9754_RTS:
C - - - - - 0x01B764 06:9754: 60        RTS



sub_9755:
sub_0x01B765:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B765 06:9755: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01B768 06:9758: 29 80     AND #$80
C - - - - - 0x01B76A 06:975A: 85 72     STA ram_0072_t02
C - - - - - 0x01B76C 06:975C: 20 6B 97  JSR sub_976B
C - - - - - 0x01B76F 06:975F: C5 72     CMP ram_0072_t02
C - - - - - 0x01B771 06:9761: 60        RTS



sub_0x01B772:
C - - - - - 0x01B772 06:9762: 20 55 97  JSR sub_9755
C - - - - - 0x01B775 06:9765: F0 03     BEQ bra_976A_RTS
C - - - - - 0x01B777 06:9767: FE F3 04  INC ram_04F3_obj,X
bra_976A_RTS:
C - - - - - 0x01B77A 06:976A: 60        RTS



sub_976B:
sub_0x01B77B:
; in
    ; ram_0071_t01
; out
    ; A
        ; 00 = 
        ; 80 = 
    ; ram_0071_t01
; bzk bug? value in 0071 can be from
    ; ram_0071_t05_spr_A
    ; ram_0071_t04_hi
    ; ram_0071_t07
    ; ram_0071_tFF_useless
C - - - - - 0x01B77B 06:976B: A9 00     LDA #$00
C - - - - - 0x01B77D 06:976D: BC 64 04  LDY ram_pos_X_lo_obj + $03,X
C - - - - - 0x01B780 06:9770: CC 04 04  CPY ram_pos_X_lo_player
C - - - - - 0x01B783 06:9773: B0 04     BCS bra_9779_RTS
C - - - - - 0x01B785 06:9775: E6 71     INC ram_0071_t01
C - - - - - 0x01B787 06:9777: A9 80     LDA #$80
bra_9779_RTS:
C - - - - - 0x01B789 06:9779: 60        RTS



sub_0x01B78A:
; in
    ; X = 
; out
    ; X = 
C - - - - - 0x01B78A 06:977A: AD 16 05  LDA ram_0516_t03_flag
C - - - - - 0x01B78D 06:977D: D0 37     BNE bra_97B6
sub_0x01B78F:
; in
    ; X = 
; out
    ; X = 
C - - - - - 0x01B78F 06:977F: A9 20     LDA #$20
bra_9781:
C - - - - - 0x01B791 06:9781: 85 72     STA ram_0072_t05
C - - - - - 0x01B793 06:9783: A4 79     LDY ram_0079_obj_index
C - - - - - 0x01B795 06:9785: B9 41 05  LDA ram_0541_obj_flags,Y
C - - - - - 0x01B798 06:9788: 10 10     BPL bra_979A
C - - - - - 0x01B79A 06:978A: B9 64 04  LDA ram_pos_X_lo_obj + $03,Y
C - - - - - 0x01B79D 06:978D: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x01B7A0 06:9790: B0 24     BCS bra_97B6
C - - - - - 0x01B7A2 06:9792: 85 71     STA ram_0071_t20_pos_X_lo
C - - - - - 0x01B7A4 06:9794: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01B7A7 06:9797: 4C A7 97  JMP loc_97A7
bra_979A:
C - - - - - 0x01B7AA 06:979A: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01B7AD 06:979D: D9 64 04  CMP ram_pos_X_lo_obj + $03,Y
C - - - - - 0x01B7B0 06:97A0: B0 14     BCS bra_97B6
C - - - - - 0x01B7B2 06:97A2: 85 71     STA ram_0071_t20_pos_X_lo
C - - - - - 0x01B7B4 06:97A4: B9 64 04  LDA ram_pos_X_lo_obj + $03,Y
loc_97A7:
C D 0 - - - 0x01B7B7 06:97A7: 38        SEC
C - - - - - 0x01B7B8 06:97A8: E5 71     SBC ram_0071_t20_pos_X_lo
C - - - - - 0x01B7BA 06:97AA: C5 72     CMP ram_0072_t05
C - - - - - 0x01B7BC 06:97AC: 90 0A     BCC bra_97B8
C - - - - - 0x01B7BE 06:97AE: E8        INX
C - - - - - 0x01B7BF 06:97AF: C9 60     CMP #$60
C - - - - - 0x01B7C1 06:97B1: 90 05     BCC bra_97B8
C - - - - - 0x01B7C3 06:97B3: E8        INX
C - - - - - 0x01B7C4 06:97B4: D0 02     BNE bra_97B8    ; jmp
bra_97B6:
C - - - - - 0x01B7C6 06:97B6: A2 00     LDX #$00
bra_97B8:
C - - - - - 0x01B7C8 06:97B8: 8A        TXA
C - - - - - 0x01B7C9 06:97B9: 60        RTS



sub_0x01B7CA:
; in
    ; X = 
; out
    ; X = 
C - - - - - 0x01B7CA 06:97BA: A9 40     LDA #$40
C - - - - - 0x01B7CC 06:97BC: D0 C3     BNE bra_9781    ; jmp



sub_0x01B7CE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B7CE 06:97BE: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01B7D1 06:97C1: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01B7D4 06:97C4: 30 0A     BMI bra_97D0
C - - - - - 0x01B7D6 06:97C6: 38        SEC
C - - - - - 0x01B7D7 06:97C7: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01B7DA 06:97CA: C9 20     CMP #$20
C - - - - - 0x01B7DC 06:97CC: 90 0A     BCC bra_97D8
C - - - - - 0x01B7DE 06:97CE: B0 0A     BCS bra_97DA
bra_97D0:
C - - - - - 0x01B7E0 06:97D0: 38        SEC
C - - - - - 0x01B7E1 06:97D1: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01B7E4 06:97D4: C9 E0     CMP #$E0
C - - - - - 0x01B7E6 06:97D6: 90 02     BCC bra_97DA
bra_97D8:
C - - - - - 0x01B7E8 06:97D8: 38        SEC
C - - - - - 0x01B7E9 06:97D9: 60        RTS
bra_97DA:
C - - - - - 0x01B7EA 06:97DA: 18        CLC
C - - - - - 0x01B7EB 06:97DB: 60        RTS



sub_0x01B7EC:
C - - - - - 0x01B7EC 06:97DC: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01B7EF 06:97DF: 29 F0     AND #$F0
C - - - - - 0x01B7F1 06:97E1: 85 71     STA ram_0071_t01
C - - - - - 0x01B7F3 06:97E3: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
loc_97E6:
C D 0 - - - 0x01B7F6 06:97E6: 29 F0     AND #$F0
C - - - - - 0x01B7F8 06:97E8: C5 71     CMP ram_0071_t01
C - - - - - 0x01B7FA 06:97EA: 60        RTS



sub_0x01B7FB:
C - - - - - 0x01B7FB 06:97EB: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01B7FE 06:97EE: 18        CLC
C - - - - - 0x01B7FF 06:97EF: 69 18     ADC #$18
C - - - - - 0x01B801 06:97F1: 29 F0     AND #$F0
C - - - - - 0x01B803 06:97F3: 85 71     STA ram_0071_t01
C - - - - - 0x01B805 06:97F5: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B808 06:97F8: 4C E6 97  JMP loc_97E6



sub_97FB:
sub_0x01B80B:
loc_0x01B80B:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x01B80B 06:97FB: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01B80E 06:97FE: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01B811 06:9801: 30 06     BMI bra_9809
C - - - - - 0x01B813 06:9803: C9 19     CMP #$19
C - - - - - 0x01B815 06:9805: 90 06     BCC bra_980D
C - - - - - 0x01B817 06:9807: B0 06     BCS bra_980F    ; jmp
bra_9809:
C - - - - - 0x01B819 06:9809: C9 E7     CMP #$E7
C - - - - - 0x01B81B 06:980B: 90 02     BCC bra_980F
bra_980D:
C - - - - - 0x01B81D 06:980D: 38        SEC
C - - - - - 0x01B81E 06:980E: 60        RTS
bra_980F:
C - - - - - 0x01B81F 06:980F: 18        CLC
C - - - - - 0x01B820 06:9810: 60        RTS



sub_9811:
sub_0x01B821:
; in
    ; A = 30 40 50 60
    ; X = 00 only?
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B821 06:9811: 85 73     STA ram_0073_t06_pos_X_lo
C - - - - - 0x01B823 06:9813: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01B826 06:9816: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01B829 06:9819: 30 07     BMI bra_9822
C - - - - - 0x01B82B 06:981B: 38        SEC
C - - - - - 0x01B82C 06:981C: E5 73     SBC ram_0073_t06_pos_X_lo
C - - - - - 0x01B82E 06:981E: B0 EF     BCS bra_980F
C - - - - - 0x01B830 06:9820: 90 EB     BCC bra_980D    ; jmp
bra_9822:
C - - - - - 0x01B832 06:9822: 18        CLC
C - - - - - 0x01B833 06:9823: 65 73     ADC ram_0073_t06_pos_X_lo
C - - - - - 0x01B835 06:9825: 60        RTS



sub_0x01B836:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B836 06:9826: 20 31 98  JSR sub_9831
C - - - - - 0x01B839 06:9829: 30 05     BMI bra_9830_RTS
- - - - - - 0x01B83B 06:982B: B0 02     BCS bra_982F
- - - - - - 0x01B83D 06:982D: 38        SEC
- - - - - - 0x01B83E 06:982E: 60        RTS
bra_982F:
- - - - - - 0x01B83F 06:982F: 18        CLC
bra_9830_RTS:
C - - - - - 0x01B840 06:9830: 60        RTS



sub_9831:
; out
    ; N
        ; 0 = 
        ; 1 = 
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B841 06:9831: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01B844 06:9834: DD 4E 05  CMP ram_054E_obj,X
C - - - - - 0x01B847 06:9837: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01B84A 06:983A: 60        RTS



sub_0x01B84B:
C - - - - - 0x01B84B 06:983B: A9 50     LDA #$50
C - - - - - 0x01B84D 06:983D: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B850 06:9840: 90 67     BCC bra_98A9
C - - - - - 0x01B852 06:9842: B0 61     BCS bra_98A5    ; jmp



sub_0x01B854:
C - - - - - 0x01B854 06:9844: A9 40     LDA #$40
C - - - - - 0x01B856 06:9846: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B859 06:9849: 90 5E     BCC bra_98A9
C - - - - - 0x01B85B 06:984B: 60        RTS



sub_0x01B85C:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B85C 06:984C: A9 CF     LDA #$CF
C - - - - - 0x01B85E 06:984E: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B861 06:9851: 60        RTS



sub_9852:
sub_0x01B862:
C - - - - - 0x01B862 06:9852: A9 BF     LDA #$BF
bra_9854:
C - - - - - 0x01B864 06:9854: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B867 06:9857: B0 50     BCS bra_98A9
; C = 0
C - - - - - 0x01B869 06:9859: 60        RTS



sub_0x01B86A:
C - - - - - 0x01B86A 06:985A: A9 AF     LDA #$AF
C - - - - - 0x01B86C 06:985C: D0 F6     BNE bra_9854    ; jmp



sub_0x01B86E:
C - - - - - 0x01B86E 06:985E: A9 CF     LDA #$CF
C - - - - - 0x01B870 06:9860: D0 F2     BNE bra_9854    ; jmp



sub_9862:
C - - - - - 0x01B872 06:9862: 20 69 9B  JSR sub_9B69
C - - - - - 0x01B875 06:9865: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x01B878 06:9868: 1D 27 05  ORA ram_spd_Y_lo_obj,X
C - - - - - 0x01B87B 06:986B: 60        RTS



sub_0x01B87C:
C - - - - - 0x01B87C 06:986C: 20 62 98  JSR sub_9862
C - - - - - 0x01B87F 06:986F: D0 38     BNE bra_98A9
C - - - - - 0x01B881 06:9871: 60        RTS



sub_0x01B882:
C - - - - - 0x01B882 06:9872: 20 62 98  JSR sub_9862
C - - - - - 0x01B885 06:9875: D0 32     BNE bra_98A9
C - - - - - 0x01B887 06:9877: F0 2C     BEQ bra_98A5    ; jmp



sub_9879:
C - - - - - 0x01B889 06:9879: 20 69 9B  JSR sub_9B69
C - - - - - 0x01B88C 06:987C: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x01B88F 06:987F: 1D 0D 05  ORA ram_spd_X_lo_obj,X
C - - - - - 0x01B892 06:9882: 60        RTS



sub_9883:
sub_0x01B893:
C - - - - - 0x01B893 06:9883: 20 79 98  JSR sub_9879
C - - - - - 0x01B896 06:9886: D0 21     BNE bra_98A9
; Z = 0
C - - - - - 0x01B898 06:9888: 60        RTS



sub_0x01B899:
C - - - - - 0x01B899 06:9889: 20 79 98  JSR sub_9879
C - - - - - 0x01B89C 06:988C: D0 1B     BNE bra_98A9
C - - - - - 0x01B89E 06:988E: F0 15     BEQ bra_98A5    ; jmp



sub_0x01B8A0:
C - - - - - 0x01B8A0 06:9890: 20 31 98  JSR sub_9831
C - - - - - 0x01B8A3 06:9893: 10 03     BPL bra_9898
C - - - - - 0x01B8A5 06:9895: B0 03     BCS bra_989A_RTS
C - - - - - 0x01B8A7 06:9897: 38        SEC
bra_9898:
C - - - - - 0x01B8A8 06:9898: B0 0F     BCS bra_98A9
bra_989A_RTS:
C - - - - - 0x01B8AA 06:989A: 60        RTS



sub_0x01B8AB:
C - - - - - 0x01B8AB 06:989B: 20 31 98  JSR sub_9831
C - - - - - 0x01B8AE 06:989E: 10 03     BPL bra_98A3
C - - - - - 0x01B8B0 06:98A0: B0 03     BCS bra_98A5
C - - - - - 0x01B8B2 06:98A2: 38        SEC
bra_98A3:
C - - - - - 0x01B8B3 06:98A3: B0 04     BCS bra_98A9
bra_98A5:
loc_98A5:
loc_0x01B8B5:
C D 0 - - - 0x01B8B5 06:98A5: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01B8B8 06:98A8: 60        RTS



bra_98A9:
C - - - - - 0x01B8B9 06:98A9: 68        PLA
C - - - - - 0x01B8BA 06:98AA: 68        PLA
C - - - - - 0x01B8BB 06:98AB: 60        RTS



sub_0x01B8BC:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01B8BC 06:98AC: BD 41 05  LDA ram_0541_obj_flags,X
; / 04
C - - - - - 0x01B8BF 06:98AF: 4A        LSR
C - - - - - 0x01B8C0 06:98B0: 4A        LSR
; 
C - - - - - 0x01B8C1 06:98B1: 90 11     BCC bra_98C4_RTS
bra_98B3:
; * 04
C - - - - - 0x01B8C3 06:98B3: 0A        ASL
C - - - - - 0x01B8C4 06:98B4: 0A        ASL
; 
C - - - - - 0x01B8C5 06:98B5: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01B8C8 06:98B8: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B8CB 06:98BB: 29 F0     AND #$F0
C - - - - - 0x01B8CD 06:98BD: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B8D0 06:98C0: 20 A4 9E  JSR sub_9EA4
C - - - - - 0x01B8D3 06:98C3: 38        SEC
bra_98C4_RTS:
C - - - - - 0x01B8D4 06:98C4: 60        RTS



sub_0x01B8D5:
C - - - - - 0x01B8D5 06:98C5: BD 41 05  LDA ram_0541_obj_flags,X
; / 04
C - - - - - 0x01B8D8 06:98C8: 4A        LSR
C - - - - - 0x01B8D9 06:98C9: 4A        LSR
; 
C - - - - - 0x01B8DA 06:98CA: 90 DD     BCC bra_98A9
C - - - - - 0x01B8DC 06:98CC: B0 E5     BCS bra_98B3    ; jmp



sub_0x01B8DE:
C - - - - - 0x01B8DE 06:98CE: BD 41 05  LDA ram_0541_obj_flags,X
; / 04
C - - - - - 0x01B8E1 06:98D1: 4A        LSR
C - - - - - 0x01B8E2 06:98D2: 4A        LSR
; 
C - - - - - 0x01B8E3 06:98D3: 90 D4     BCC bra_98A9
C - - - - - 0x01B8E5 06:98D5: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01B8E8 06:98D8: D0 D9     BNE bra_98B3    ; jmp?



sub_0x01B8EA:
C - - - - - 0x01B8EA 06:98DA: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01B8ED 06:98DD: 29 40     AND #$40
C - - - - - 0x01B8EF 06:98DF: F0 C8     BEQ bra_98A9
C - - - - - 0x01B8F1 06:98E1: 60        RTS



sub_0x01B8F2:
; out
    ; Z = 0?
        ; unless PLA PLA
C - - - - - 0x01B8F2 06:98E2: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01B8F5 06:98E5: 29 40     AND #$40
C - - - - - 0x01B8F7 06:98E7: F0 C0     BEQ bra_98A9
C - - - - - 0x01B8F9 06:98E9: D0 BA     BNE bra_98A5    ; jmp



sub_0x01B8FB:
C - - - - - 0x01B8FB 06:98EB: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x01B8FE 06:98EE: D0 B9     BNE bra_98A9
C - - - - - 0x01B900 06:98F0: 4C 6E 9A  JMP loc_9A6E



sub_0x01B903:
C - - - - - 0x01B903 06:98F3: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x01B906 06:98F6: D0 B1     BNE bra_98A9
C - - - - - 0x01B908 06:98F8: 20 6E 9A  JSR sub_9A6E
C - - - - - 0x01B90B 06:98FB: F0 A8     BEQ bra_98A5    ; jmp



sub_98FD:
sub_0x01B90D:
C - - - - - 0x01B90D 06:98FD: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x01B910 06:9900: D0 A7     BNE bra_98A9
; Z = 1
C - - - - - 0x01B912 06:9902: 60        RTS



sub_0x01B913:
C - - - - - 0x01B913 06:9903: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x01B916 06:9906: D0 A1     BNE bra_98A9
C - - - - - 0x01B918 06:9908: F0 9B     BEQ bra_98A5    ; jmp



sub_990A:
sub_0x01B91A:
C - - - - - 0x01B91A 06:990A: 20 6B 9A  JSR sub_9A6B
C - - - - - 0x01B91D 06:990D: D0 9A     BNE bra_98A9
C - - - - - 0x01B91F 06:990F: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01B922 06:9912: 10 95     BPL bra_98A9
C - - - - - 0x01B924 06:9914: DE 83 05  DEC ram_0583_obj,X
C - - - - - 0x01B927 06:9917: D0 90     BNE bra_98A9
C - - - - - 0x01B929 06:9919: 60        RTS



tbl_0x01B92A_addresses:
; 14h addresses (table size 28h at 0x01402F)
- D 0 - - - 0x01B92A 06:991A: 53 04     .word ram_obj_id + $09 ; bzk optimize, useless clearing of this address? (judging by logs)
- D 0 - - - 0x01B92C 06:991C: 60 04     .word ram_0460 ; 
- D 0 - - - 0x01B92E 06:991E: 6D 04     .word ram_pos_X_lo_obj + $0C ; bzk optimize, useless clearing of this address? (judging by logs)
- D 0 - - - 0x01B930 06:9920: 7A 04     .word ram_047A_t02 ; 
- D 0 - - - 0x01B932 06:9922: 87 04     .word ram_0487_t02 ; 
- D 0 - - - 0x01B934 06:9924: 94 04     .word ram_0494_t02 ; 
- D 0 - - - 0x01B936 06:9926: A1 04     .word ram_04A1_t02 ; 
- D 0 - - - 0x01B938 06:9928: AE 04     .word ram_04AE_t02 ; 
- D 0 - - - 0x01B93A 06:992A: BB 04     .word ram_04BB_t02 ; 
- D 0 - - - 0x01B93C 06:992C: C8 04     .word ram_04C8_t02 ; 
- D 0 - - - 0x01B93E 06:992E: D5 04     .word ram_04D5_t03 ; 
- D 0 - - - 0x01B940 06:9930: 09 05     .word ram_0509_t02 ; 
- D 0 - - - 0x01B942 06:9932: 16 05     .word ram_0516_t04 ; bzk optimize, useless clearing of this address? (judging by logs)
- D 0 - - - 0x01B944 06:9934: 23 05     .word ram_0523_t03 ; 
- D 0 - - - 0x01B946 06:9936: 30 05     .word ram_spd_Y_lo_obj + $09 ; bzk optimize, useless clearing of this address? (judging by logs)
- D 0 - - - 0x01B948 06:9938: E2 04     .word ram_04E2_tFE_useless_00 ; 
- D 0 - - - 0x01B94A 06:993A: FC 04     .word ram_04F3_obj + $09 ; 
- D 0 - - - 0x01B94C 06:993C: 3D 05     .word ram_053D_t01 ; 
- D 0 - - - 0x01B94E 06:993E: 4A 05     .word ram_054A_tFF_useless ; bzk optimize, useless clearing of this address? (judging by logs)
- D 0 - - - 0x01B950 06:9940: 57 05     .word ram_0557_t01_damage_to_enemy ; 



loc_0x01B952:
C D 0 - - - 0x01B952 06:9942: A2 00     LDX #$00
C - - - - - 0x01B954 06:9944: AD 22 04  LDA ram_0422_flag
C - - - - - 0x01B957 06:9947: 0A        ASL
C - - - - - 0x01B958 06:9948: 90 28     BCC bra_9972
C - - - - - 0x01B95A 06:994A: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x01B95D 06:994D: 38        SEC
C - - - - - 0x01B95E 06:994E: ED 8B 04  SBC ram_pos_Y_lo_obj + $03
C - - - - - 0x01B961 06:9951: 10 05     BPL bra_9958
C - - - - - 0x01B963 06:9953: 49 FF     EOR #$FF
C - - - - - 0x01B965 06:9955: 18        CLC
C - - - - - 0x01B966 06:9956: 69 01     ADC #$01
bra_9958:
C - - - - - 0x01B968 06:9958: C9 20     CMP #$20
C - - - - - 0x01B96A 06:995A: B0 16     BCS bra_9972
C - - - - - 0x01B96C 06:995C: AC 31 04  LDY ram_0431_pos_X_lo_projectile
C - - - - - 0x01B96F 06:995F: F0 11     BEQ bra_9972
C - - - - - 0x01B971 06:9961: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x01B974 06:9964: CD 64 04  CMP ram_pos_X_lo_obj + $03
C - - - - - 0x01B977 06:9967: B0 05     BCS bra_996E
C - - - - - 0x01B979 06:9969: 98        TYA
C - - - - - 0x01B97A 06:996A: 30 06     BMI bra_9972
C - - - - - 0x01B97C 06:996C: 10 03     BPL bra_9971    ; jmp
bra_996E:
C - - - - - 0x01B97E 06:996E: 98        TYA
C - - - - - 0x01B97F 06:996F: 10 01     BPL bra_9972
bra_9971:
C - - - - - 0x01B981 06:9971: E8        INX ; 01
bra_9972:
C - - - - - 0x01B982 06:9972: 8E 30 05  STX ram_0530_t02_flag
C - - - - - 0x01B985 06:9975: 60        RTS



sub_0x01B986:
loc_0x01B986:
C D 0 - - - 0x01B986 06:9976: A2 FF     LDX #$FF
bra_9978_loop:
C - - - - - 0x01B988 06:9978: E8        INX
C - - - - - 0x01B989 06:9979: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01B98C 06:997C: 30 FA     BMI bra_9978_loop
; bzk optimize, useless STX?
C - - - - - 0x01B98E 06:997E: 86 79     STX ram_0079_obj_index
C - - - - - 0x01B990 06:9980: 20 8B 99  JSR sub_998B
loc_0x01B993:
C D 0 - - - 0x01B993 06:9983: 20 7C 9A  JSR sub_9A7C
C - - - - - 0x01B996 06:9986: E6 CA     INC ram_00CA_objects_counter
C - - - - - 0x01B998 06:9988: E6 CE     INC ram_all_objects_counter
C - - - - - 0x01B99A 06:998A: 60        RTS



sub_998B:
C - - - - - 0x01B99B 06:998B: 20 E0 9A  JSR sub_9AE0_clear_obj_data
C - - - - - 0x01B99E 06:998E: B9 04 92  LDA tbl_9204,Y
C - - - - - 0x01B9A1 06:9991: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01B9A4 06:9994: B9 05 92  LDA tbl_9204 + $01,Y
C - - - - - 0x01B9A7 06:9997: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x01B9AA 06:999A: 20 61 9A  JSR sub_9A61
C - - - - - 0x01B9AD 06:999D: B9 06 92  LDA tbl_9204 + $02,Y
C - - - - - 0x01B9B0 06:99A0: 9D 79 05  STA ram_obj_hp,X
C - - - - - 0x01B9B3 06:99A3: E0 00     CPX #$00
C - - - - - 0x01B9B5 06:99A5: D0 03     BNE bra_99AA
C - - - - - 0x01B9B7 06:99A7: 8D 57 05  STA ram_0557_t01_damage_to_enemy
bra_99AA:
C - - - - - 0x01B9BA 06:99AA: B9 07 92  LDA tbl_9204 + $03,Y
C - - - - - 0x01B9BD 06:99AD: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x01B9C0 06:99B0: B9 08 92  LDA tbl_9204 + $04,Y
C - - - - - 0x01B9C3 06:99B3: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01B9C6 06:99B6: B9 09 92  LDA tbl_9204 + $05,Y
C - - - - - 0x01B9C9 06:99B9: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01B9CC 06:99BC: B9 0A 92  LDA tbl_9204 + $06,Y
C - - - - - 0x01B9CF 06:99BF: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01B9D2 06:99C2: B9 0B 92  LDA tbl_9204 + $07,Y
C - - - - - 0x01B9D5 06:99C5: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01B9D8 06:99C8: A4 75     LDY ram_0075_t03_obj_id
C - - - - - 0x01B9DA 06:99CA: B9 D4 99  LDA tbl_99D3 + $01,Y
C - - - - - 0x01B9DD 06:99CD: 48        PHA
C - - - - - 0x01B9DE 06:99CE: B9 D3 99  LDA tbl_99D3,Y
C - - - - - 0x01B9E1 06:99D1: 48        PHA
ofs_104_99D2_51_RTS:
; con_enemy_id_51
ofs_104_99D2_54_RTS:
; con_enemy_id_54
ofs_104_99D2_55_RTS:
; con_enemy_id_55
ofs_104_99D2_57_RTS:
; con_enemy_id_57
C - - - - - 0x01B9E2 06:99D2: 60        RTS



tbl_99D3:
- D 0 - - - 0x01B9E3 06:99D3: E8 99     .word ofs_104_99E9_50 - $01
- D 0 - - - 0x01B9E5 06:99D5: D1 99     .word ofs_104_99D2_51_RTS - $01
- D 0 - - - 0x01B9E7 06:99D7: 05 9A     .word ofs_104_9A06_52 - $01
- D 0 - - - 0x01B9E9 06:99D9: 1D 9A     .word ofs_104_9A1E_53 - $01
- D 0 - - - 0x01B9EB 06:99DB: D1 99     .word ofs_104_99D2_54_RTS - $01
- D 0 - - - 0x01B9ED 06:99DD: D1 99     .word ofs_104_99D2_55_RTS - $01
- D 0 - - - 0x01B9EF 06:99DF: 0C 9A     .word ofs_104_9A0D_56 - $01
- D 0 - - - 0x01B9F1 06:99E1: D1 99     .word ofs_104_99D2_57_RTS - $01
- D 0 - - - 0x01B9F3 06:99E3: 2E 9A     .word ofs_104_9A2F_58 - $01
- D 0 - - - 0x01B9F5 06:99E5: 42 9A     .word ofs_104_9A43_59 - $01
- D 0 - - - 0x01B9F7 06:99E7: 48 9A     .word ofs_104_9A49_5A - $01



ofs_104_99E9_50:
; con_enemy_id_50
C - - - - - 0x01B9F9 06:99E9: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01B9FC 06:99EC: 18        CLC
C - - - - - 0x01B9FD 06:99ED: 69 60     ADC #$60
C - - - - - 0x01B9FF 06:99EF: 90 07     BCC bra_99F8
C - - - - - 0x01BA01 06:99F1: 49 FF     EOR #$FF
C - - - - - 0x01BA03 06:99F3: 18        CLC
C - - - - - 0x01BA04 06:99F4: 69 01     ADC #$01
C - - - - - 0x01BA06 06:99F6: F0 04     BEQ bra_99FC
bra_99F8:
C - - - - - 0x01BA08 06:99F8: C9 F8     CMP #$F8
C - - - - - 0x01BA0A 06:99FA: 90 04     BCC bra_9A00
bra_99FC:
- - - - - - 0x01BA0C 06:99FC: A9 F8     LDA #$F8
- - - - - - 0x01BA0E 06:99FE: D0 00     BNE bra_9A00    ; jmp
bra_9A00:
C - - - - - 0x01BA10 06:9A00: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BA13 06:9A03: 4C DF 9B  JMP loc_9BDF



ofs_104_9A06_52:
; con_enemy_id_52
C - - - - - 0x01BA16 06:9A06: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01BA19 06:9A09: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BA1C 06:9A0C: 60        RTS



ofs_104_9A0D_56:
; con_enemy_id_56
C - - - - - 0x01BA1D 06:9A0D: CA        DEX
C - - - - - 0x01BA1E 06:9A0E: 8A        TXA
C - - - - - 0x01BA1F 06:9A0F: E8        INX
C - - - - - 0x01BA20 06:9A10: 0A        ASL
C - - - - - 0x01BA21 06:9A11: A8        TAY
C - - - - - 0x01BA22 06:9A12: B9 29 9A  LDA tbl_9A29_speed_Y,Y
C - - - - - 0x01BA25 06:9A15: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x01BA28 06:9A18: B9 2A 9A  LDA tbl_9A29_speed_Y + $01,Y
C - - - - - 0x01BA2B 06:9A1B: 9D 27 05  STA ram_spd_Y_lo_obj,X
ofs_104_9A1E_53:
; con_enemy_id_53
C - - - - - 0x01BA2E 06:9A1E: A9 80     LDA #$80
C - - - - - 0x01BA30 06:9A20: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01BA33 06:9A23: A9 01     LDA #$01
C - - - - - 0x01BA35 06:9A25: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01BA38 06:9A28: 60        RTS



tbl_9A29_speed_Y:
- D 0 - - - 0x01BA39 06:9A29: 80 00     .word $0080 ; 01 
- D 0 - - - 0x01BA3B 06:9A2B: 80 FF     .word $FF80 ; 02 
- D 0 - - - 0x01BA3D 06:9A2D: 80 00     .word $0080 ; 03 



ofs_104_9A2F_58:
; con_enemy_id_58
C - - - - - 0x01BA3F 06:9A2F: AD AE 04  LDA ram_04AE_t03
C - - - - - 0x01BA42 06:9A32: 0A        ASL
C - - - - - 0x01BA43 06:9A33: 6D AE 04  ADC ram_04AE_t03
C - - - - - 0x01BA46 06:9A36: 85 71     STA ram_0071_t21
C - - - - - 0x01BA48 06:9A38: CA        DEX
C - - - - - 0x01BA49 06:9A39: 8A        TXA
C - - - - - 0x01BA4A 06:9A3A: 65 71     ADC ram_0071_t21
C - - - - - 0x01BA4C 06:9A3C: 69 50     ADC #$50
C - - - - - 0x01BA4E 06:9A3E: E8        INX
C - - - - - 0x01BA4F 06:9A3F: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01BA52 06:9A42: 60        RTS



sub_0x01BA53:
ofs_104_9A43_59:
; con_enemy_id_59
C - - - - - 0x01BA53 06:9A43: A9 08     LDA #$08
C - - - - - 0x01BA55 06:9A45: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01BA58 06:9A48: 60        RTS



ofs_104_9A49_5A:
; con_enemy_id_5A
C - - - - - 0x01BA59 06:9A49: AD 64 04  LDA ram_pos_X_lo_obj + $03
C - - - - - 0x01BA5C 06:9A4C: AC 41 05  LDY ram_0541_obj_flags
C - - - - - 0x01BA5F 06:9A4F: 10 03     BPL bra_9A54
C - - - - - 0x01BA61 06:9A51: 18        CLC
C - - - - - 0x01BA62 06:9A52: 69 18     ADC #$18
bra_9A54:
C - - - - - 0x01BA64 06:9A54: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BA67 06:9A57: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
C - - - - - 0x01BA6A 06:9A5A: 38        SEC
C - - - - - 0x01BA6B 06:9A5B: E9 20     SBC #$20
C - - - - - 0x01BA6D 06:9A5D: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01BA70 06:9A60: 60        RTS



sub_9A61:
sub_0x01BA71:
; out
    ; ram_0075_t03_obj_id
C - - - - - 0x01BA71 06:9A61: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01BA74 06:9A64: 38        SEC
C - - - - - 0x01BA75 06:9A65: E9 50     SBC #$50    ; con_enemy_id_50
C - - - - - 0x01BA77 06:9A67: 0A        ASL
C - - - - - 0x01BA78 06:9A68: 85 75     STA ram_0075_t03_obj_id
C - - - - - 0x01BA7A 06:9A6A: 60        RTS



sub_9A6B:
sub_0x01BA7B:
loc_0x01BA7B:
C D 0 - - - 0x01BA7B 06:9A6B: 20 FD 98  JSR sub_98FD
loc_9A6E:
sub_9A6E:
sub_0x01BA7E:
loc_0x01BA7E:
C D 0 - - - 0x01BA7E 06:9A6E: BD BF 04  LDA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x01BA81 06:9A71: 85 5D     STA ram_005D_t17_data
C - - - - - 0x01BA83 06:9A73: BD CC 04  LDA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x01BA86 06:9A76: 85 5E     STA ram_005D_t17_data + $01
C - - - - - 0x01BA88 06:9A78: A0 05     LDY #$05
C - - - - - 0x01BA8A 06:9A7A: D0 11     BNE bra_9A8D    ; jmp



sub_9A7C:
; in
    ; X = 00 only?
C - - - - - 0x01BA8C 06:9A7C: A4 75     LDY ram_0075_t03_obj_id
C - - - - - 0x01BA8E 06:9A7E: B9 00 88  LDA tbl_8800,Y
C - - - - - 0x01BA91 06:9A81: 85 5D     STA ram_005D_t17_data
C - - - - - 0x01BA93 06:9A83: B9 01 88  LDA tbl_8800 + $01,Y
C - - - - - 0x01BA96 06:9A86: 85 5E     STA ram_005D_t17_data + $01
C - - - - - 0x01BA98 06:9A88: BD 34 05  LDA ram_0534_obj,X  ; ram_0534_t04
C - - - - - 0x01BA9B 06:9A8B: 0A        ASL
C - - - - - 0x01BA9C 06:9A8C: A8        TAY
bra_9A8D:
loc_9A8D:
; in
    ; ram_005D_t17_data
C D 0 - - - 0x01BA9D 06:9A8D: B1 5D     LDA (ram_005D_t17_data),Y
C - - - - - 0x01BA9F 06:9A8F: 9D BF 04  STA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x01BAA2 06:9A92: 85 5F     STA ram_005F_t01_data
C - - - - - 0x01BAA4 06:9A94: C8        INY
C - - - - - 0x01BAA5 06:9A95: B1 5D     LDA (ram_005D_t17_data),Y
C - - - - - 0x01BAA7 06:9A97: 9D CC 04  STA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x01BAAA 06:9A9A: 85 60     STA ram_005F_t01_data + $01
C - - - - - 0x01BAAC 06:9A9C: A0 02     LDY #$02
C - - - - - 0x01BAAE 06:9A9E: B1 5F     LDA (ram_005F_t01_data),Y
C - - - - - 0x01BAB0 06:9AA0: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x01BAB3 06:9AA3: C8        INY ; 03
C - - - - - 0x01BAB4 06:9AA4: B1 5F     LDA (ram_005F_t01_data),Y
C - - - - - 0x01BAB6 06:9AA6: 9D A5 04  STA ram_spr_data_ptr_lo_obj + $03,X
C - - - - - 0x01BAB9 06:9AA9: C8        INY ; 04
C - - - - - 0x01BABA 06:9AAA: B1 5F     LDA (ram_005F_t01_data),Y
C - - - - - 0x01BABC 06:9AAC: 9D B2 04  STA ram_spr_data_ptr_hi_obj + $03,X
C - - - - - 0x01BABF 06:9AAF: A0 07     LDY #$07
C - - - - - 0x01BAC1 06:9AB1: B1 5F     LDA (ram_005F_t01_data),Y
; also ram_056C_obj + $04
C - - - - - 0x01BAC3 06:9AB3: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01BAC6 06:9AB6: E0 04     CPX #$04
C - - - - - 0x01BAC8 06:9AB8: B0 1F     BCS bra_9AD9
C - - - - - 0x01BACA 06:9ABA: E0 00     CPX #$00
C - - - - - 0x01BACC 06:9ABC: D0 03     BNE bra_9AC1
C - - - - - 0x01BACE 06:9ABE: 8D 4A 05  STA ram_054A_t01
bra_9AC1:
C - - - - - 0x01BAD1 06:9AC1: C8        INY ; 08
C - - - - - 0x01BAD2 06:9AC2: B1 5F     LDA (ram_005F_t01_data),Y
C - - - - - 0x01BAD4 06:9AC4: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x01BAD7 06:9AC7: 8A        TXA
C - - - - - 0x01BAD8 06:9AC8: D0 0F     BNE bra_9AD9
C - - - - - 0x01BADA 06:9ACA: A0 00     LDY #$00
C - - - - - 0x01BADC 06:9ACC: B1 5F     LDA (ram_005F_t01_data),Y
C - - - - - 0x01BADE 06:9ACE: 29 7F     AND #$7F
C - - - - - 0x01BAE0 06:9AD0: 85 26     STA ram_chr_bank_spr + $02
C - - - - - 0x01BAE2 06:9AD2: C8        INY ; 01
C - - - - - 0x01BAE3 06:9AD3: B1 5F     LDA (ram_005F_t01_data),Y
C - - - - - 0x01BAE5 06:9AD5: 29 7F     AND #$7F
C - - - - - 0x01BAE7 06:9AD7: 85 27     STA ram_chr_bank_spr + $03
bra_9AD9:
C - - - - - 0x01BAE9 06:9AD9: A9 00     LDA #$00
; Z = 0
C - - - - - 0x01BAEB 06:9ADB: 60        RTS



sub_9ADC:
loc_0x01BAEC:
C D 0 - - - 0x01BAEC 06:9ADC: C6 CA     DEC ram_00CA_objects_counter
sub_0x01BAEE:
C - - - - - 0x01BAEE 06:9ADE: C6 CE     DEC ram_all_objects_counter
sub_9AE0_clear_obj_data:
sub_0x01BAF0_clear_obj_data:
; in
    ; X = 
C - - - - - 0x01BAF0 06:9AE0: A9 00     LDA #$00
C - - - - - 0x01BAF2 06:9AE2: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01BAF5 06:9AE5: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01BAF8 06:9AE8: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01BAFB 06:9AEB: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x01BAFE 06:9AEE: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x01BB01 06:9AF1: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01BB04 06:9AF4: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01BB07 06:9AF7: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01BB0A 06:9AFA: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01BB0D 06:9AFD: 9D 5B 05  STA ram_055B_obj_anim_counter,X
sub_0x01BB10:
C - - - - - 0x01BB10 06:9B00: 20 0C 9B  JSR sub_9B0C_clear_speed_Y
sub_9B03_clear_speed_X:
sub_0x01BB13_clear_speed_X:
C - - - - - 0x01BB13 06:9B03: A9 00     LDA #$00
C - - - - - 0x01BB15 06:9B05: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01BB18 06:9B08: 9D 0D 05  STA ram_spd_X_lo_obj,X
; Z = 1
C - - - - - 0x01BB1B 06:9B0B: 60        RTS



sub_9B0C_clear_speed_Y:
sub_0x01BB1C_clear_speed_Y:
C - - - - - 0x01BB1C 06:9B0C: A9 00     LDA #$00
C - - - - - 0x01BB1E 06:9B0E: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01BB21 06:9B11: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x01BB24 06:9B14: 60        RTS



sub_9B15:
sub_0x01BB25:
loc_0x01BB25:
; in
    ; A = 
    ; X = 00 only?
C D 0 - - - 0x01BB25 06:9B15: 48        PHA
C - - - - - 0x01BB26 06:9B16: 85 71     STA ram_0071_t01
C - - - - - 0x01BB28 06:9B18: 20 DF 9B  JSR sub_9BDF
C - - - - - 0x01BB2B 06:9B1B: A5 71     LDA ram_0071_t01
bra_9B1D:
C - - - - - 0x01BB2D 06:9B1D: 29 7F     AND #$7F
C - - - - - 0x01BB2F 06:9B1F: 9D 34 05  STA ram_0534_obj,X  ; ram_0534_t04
C - - - - - 0x01BB32 06:9B22: 20 7C 9A  JSR sub_9A7C
C - - - - - 0x01BB35 06:9B25: 68        PLA
C - - - - - 0x01BB36 06:9B26: 30 03     BMI bra_9B2B_RTS
; bzk optimize, JMP
C - - - - - 0x01BB38 06:9B28: 20 40 9B  JSR sub_9B40
bra_9B2B_RTS:
C - - - - - 0x01BB3B 06:9B2B: 60        RTS



bra_9B2C:
sub_9B2C:
loc_9B2C:
sub_0x01BB3C:
loc_0x01BB3C:
C D 0 - - - 0x01BB3C 06:9B2C: 48        PHA
C - - - - - 0x01BB3D 06:9B2D: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BB40 06:9B30: 10 EB     BPL bra_9B1D
C - - - - - 0x01BB42 06:9B32: 18        CLC
C - - - - - 0x01BB43 06:9B33: 69 01     ADC #$01
C - - - - - 0x01BB45 06:9B35: D0 E6     BNE bra_9B1D    ; jmp



sub_0x01BB47:
C - - - - - 0x01BB47 06:9B37: 48        PHA
C - - - - - 0x01BB48 06:9B38: D0 E3     BNE bra_9B1D    ; jmp



sub_0x01BB4A:
loc_0x01BB4A:
C D 0 - - - 0x01BB4A 06:9B3A: A2 00     LDX #$00
C - - - - - 0x01BB4C 06:9B3C: 09 80     ORA #$80
C - - - - - 0x01BB4E 06:9B3E: D0 EC     BNE bra_9B2C    ; jmp



sub_9B40:
loc_0x01BB50:
C D 0 - - - 0x01BB50 06:9B40: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01BB53 06:9B43: 29 0F     AND #$0F
bra_9B45:
sub_0x01BB55:
; in
    ; A = 
; * 04
C - - - - - 0x01BB55 06:9B45: 0A        ASL
C - - - - - 0x01BB56 06:9B46: 0A        ASL
loc_9B47:
; in
    ; A = 
C D 0 - - - 0x01BB57 06:9B47: A8        TAY
C - - - - - 0x01BB58 06:9B48: B9 88 92  LDA tbl_9288_speed,Y
C - - - - - 0x01BB5B 06:9B4B: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01BB5E 06:9B4E: B9 89 92  LDA tbl_9288_speed + $01,Y
C - - - - - 0x01BB61 06:9B51: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01BB64 06:9B54: B9 8A 92  LDA tbl_9288_speed + $02,Y
C - - - - - 0x01BB67 06:9B57: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x01BB6A 06:9B5A: B9 8B 92  LDA tbl_9288_speed + $03,Y
C - - - - - 0x01BB6D 06:9B5D: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01BB70 06:9B60: 60        RTS



sub_0x01BB71:
- - - - - - 0x01BB71 06:9B61: 20 7B 9B  JSR sub_9B7B
- - - - - - 0x01BB74 06:9B64: 18        CLC
- - - - - - 0x01BB75 06:9B65: 69 0E     ADC #$0E
- - - - - - 0x01BB77 06:9B67: D0 DC     BNE bra_9B45



sub_9B69:
sub_0x01BB79:
C - - - - - 0x01BB79 06:9B69: 20 8C 9B  JSR sub_9B8C
C - - - - - 0x01BB7C 06:9B6C: 4C AC 9B  JMP loc_9BAC



sub_9B6F:
C - - - - - 0x01BB7F 06:9B6F: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x01BB82 06:9B72: 10 07     BPL bra_9B7B
C - - - - - 0x01BB84 06:9B74: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BB87 06:9B77: 30 0A     BMI bra_9B83
C - - - - - 0x01BB89 06:9B79: 10 05     BPL bra_9B80    ; jmp
bra_9B7B:
sub_9B7B:
C - - - - - 0x01BB8B 06:9B7B: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BB8E 06:9B7E: 10 03     BPL bra_9B83
bra_9B80:
C - - - - - 0x01BB90 06:9B80: 18        CLC
C - - - - - 0x01BB91 06:9B81: 69 02     ADC #$02
bra_9B83:
C - - - - - 0x01BB93 06:9B83: 29 7F     AND #$7F
C - - - - - 0x01BB95 06:9B85: 60        RTS



sub_9B86_get_table_index:
; in
    ; A = 
C - - - - - 0x01BB96 06:9B86: A8        TAY
C - - - - - 0x01BB97 06:9B87: B9 70 93  LDA tbl_9370_table_index,Y
C - - - - - 0x01BB9A 06:9B8A: A8        TAY
C - - - - - 0x01BB9B 06:9B8B: 60        RTS



sub_9B8C:
sub_0x01BB9C:
loc_0x01BB9C:
C D 0 - - - 0x01BB9C 06:9B8C: 20 6F 9B  JSR sub_9B6F
C - - - - - 0x01BB9F 06:9B8F: 20 86 9B  JSR sub_9B86_get_table_index
C - - - - - 0x01BBA2 06:9B92: B9 D8 93  LDA tbl_93D8_speed,Y
C - - - - - 0x01BBA5 06:9B95: 18        CLC
C - - - - - 0x01BBA6 06:9B96: 7D 00 05  ADC ram_spd_X_fr_obj,X
C - - - - - 0x01BBA9 06:9B99: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01BBAC 06:9B9C: B9 D9 93  LDA tbl_93D8_speed + $01,Y
C - - - - - 0x01BBAF 06:9B9F: 7D 0D 05  ADC ram_spd_X_lo_obj,X
C - - - - - 0x01BBB2 06:9BA2: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01BBB5 06:9BA5: 60        RTS



sub_9BA6:
sub_0x01BBB6:
C - - - - - 0x01BBB6 06:9BA6: 20 6F 9B  JSR sub_9B6F
sub_0x01BBB9:
C - - - - - 0x01BBB9 06:9BA9: 20 86 9B  JSR sub_9B86_get_table_index
loc_9BAC:
C D 0 - - - 0x01BBBC 06:9BAC: B9 DA 93  LDA tbl_93D8_speed + $02,Y
C - - - - - 0x01BBBF 06:9BAF: 18        CLC
C - - - - - 0x01BBC0 06:9BB0: 7D 1A 05  ADC ram_spd_Y_fr_obj,X
C - - - - - 0x01BBC3 06:9BB3: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x01BBC6 06:9BB6: B9 DB 93  LDA tbl_93D8_speed + $03,Y
C - - - - - 0x01BBC9 06:9BB9: 7D 27 05  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x01BBCC 06:9BBC: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01BBCF 06:9BBF: 60        RTS



loc_0x01BBD0:
C D 0 - - - 0x01BBD0 06:9BC0: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x01BBD3 06:9BC3: 49 FF     EOR #$FF
C - - - - - 0x01BBD5 06:9BC5: 18        CLC
C - - - - - 0x01BBD6 06:9BC6: 69 01     ADC #< $0001
C - - - - - 0x01BBD8 06:9BC8: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01BBDB 06:9BCB: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x01BBDE 06:9BCE: 49 FF     EOR #$FF
C - - - - - 0x01BBE0 06:9BD0: 69 00     ADC #> $0001
C - - - - - 0x01BBE2 06:9BD2: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01BBE5 06:9BD5: 60        RTS



sub_9BD6_EOR_obj_flag:
sub_0x01BBE6_EOR_obj_flag:
C - - - - - 0x01BBE6 06:9BD6: BD 41 05  LDA ram_0541_obj_flags,X
loc_9BD9:
C D 0 - - - 0x01BBE9 06:9BD9: 49 80     EOR #$80
bra_9BDB:
loc_9BDB:
; in
    ; A = 
C D 0 - - - 0x01BBEB 06:9BDB: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01BBEE 06:9BDE: 60        RTS



loc_9BDF:
sub_9BDF:
sub_0x01BBEF:
loc_0x01BBEF:
C D 0 - - - 0x01BBEF 06:9BDF: 20 6B 97  JSR sub_976B
C - - - - - 0x01BBF2 06:9BE2: 4C DB 9B  JMP loc_9BDB



sub_0x01BBF5:
C - - - - - 0x01BBF5 06:9BE5: 20 6B 97  JSR sub_976B
C - - - - - 0x01BBF8 06:9BE8: 4C D9 9B  JMP loc_9BD9



sub_0x01BBFB:
C - - - - - 0x01BBFB 06:9BEB: A0 00     LDY #$00
C - - - - - 0x01BBFD 06:9BED: DD 64 04  CMP ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BC00 06:9BF0: 90 02     BCC bra_9BF4
C - - - - - 0x01BC02 06:9BF2: A0 80     LDY #$80
bra_9BF4:
C - - - - - 0x01BC04 06:9BF4: 98        TYA
C - - - - - 0x01BC05 06:9BF5: 4C DB 9B  JMP loc_9BDB



sub_0x01BC08:
C - - - - - 0x01BC08 06:9BF8: A9 00     LDA #$00
C - - - - - 0x01BC0A 06:9BFA: AC 04 04  LDY ram_pos_X_lo_player
C - - - - - 0x01BC0D 06:9BFD: 30 02     BMI bra_9C01
C - - - - - 0x01BC0F 06:9BFF: A9 80     LDA #$80
bra_9C01:
C - - - - - 0x01BC11 06:9C01: 4C DB 9B  JMP loc_9BDB



sub_9C04:
C - - - - - 0x01BC14 06:9C04: BC 64 04  LDY ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BC17 06:9C07: C0 19     CPY #$19
C - - - - - 0x01BC19 06:9C09: B0 04     BCS bra_9C0F
C - - - - - 0x01BC1B 06:9C0B: A9 00     LDA #$00
C - - - - - 0x01BC1D 06:9C0D: F0 CC     BEQ bra_9BDB    ; jmp
bra_9C0F:
C - - - - - 0x01BC1F 06:9C0F: C0 E7     CPY #$E7
C - - - - - 0x01BC21 06:9C11: 90 04     BCC bra_9C17
C - - - - - 0x01BC23 06:9C13: A9 80     LDA #$80
C - - - - - 0x01BC25 06:9C15: D0 C4     BNE bra_9BDB    ; jmp
bra_9C17:
sub_0x01BC27:
C - - - - - 0x01BC27 06:9C17: AD 41 05  LDA ram_0541_obj_flags
C - - - - - 0x01BC2A 06:9C1A: 29 80     AND #$80
C - - - - - 0x01BC2C 06:9C1C: 4C DB 9B  JMP loc_9BDB



sub_0x01BC2F:
loc_0x01BC2F:
; in
    ; A = 
C D 0 - - - 0x01BC2F 06:9C1F: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BC32 06:9C22: 30 02     BMI bra_9C26
C - - - - - 0x01BC34 06:9C24: 49 FF     EOR #$FF
bra_9C26:
C - - - - - 0x01BC36 06:9C26: 18        CLC
C - - - - - 0x01BC37 06:9C27: 6D 64 04  ADC ram_pos_X_lo_obj + $03
C - - - - - 0x01BC3A 06:9C2A: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01BC3D 06:9C2D: 18        CLC
C - - - - - 0x01BC3E 06:9C2E: 69 30     ADC #$30
C - - - - - 0x01BC40 06:9C30: C9 60     CMP #$60
C - - - - - 0x01BC42 06:9C32: B0 0C     BCS bra_9C40_RTS
C - - - - - 0x01BC44 06:9C34: A9 18     LDA #$18
C - - - - - 0x01BC46 06:9C36: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BC49 06:9C39: 10 02     BPL bra_9C3D
C - - - - - 0x01BC4B 06:9C3B: A9 E8     LDA #$E8
bra_9C3D:
C - - - - - 0x01BC4D 06:9C3D: 9D 4E 05  STA ram_054E_obj,X
bra_9C40_RTS:
C - - - - - 0x01BC50 06:9C40: 60        RTS



sub_0x01BC51:
loc_0x01BC51:
C D 0 - - - 0x01BC51 06:9C41: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BC54 06:9C44: 30 02     BMI bra_9C48
C - - - - - 0x01BC56 06:9C46: 49 FF     EOR #$FF
bra_9C48:
C - - - - - 0x01BC58 06:9C48: 18        CLC
C - - - - - 0x01BC59 06:9C49: 6D 64 04  ADC ram_pos_X_lo_obj + $03
C - - - - - 0x01BC5C 06:9C4C: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01BC5F 06:9C4F: 60        RTS



sub_0x01BC60_get_jump_table_index_1:
; in
    ; X = object index
; out
    ; Y = table index
C - - - - - 0x01BC60 06:9C50: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x01BC63 06:9C53: 0A        ASL
C - - - - - 0x01BC64 06:9C54: A8        TAY
C - - - - - 0x01BC65 06:9C55: 60        RTS



sub_0x01BC66_get_jump_table_index_2:
; in
    ; X = object index
; out
    ; Y = table index
C - - - - - 0x01BC66 06:9C56: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x01BC69 06:9C59: 0A        ASL
C - - - - - 0x01BC6A 06:9C5A: A8        TAY
C - - - - - 0x01BC6B 06:9C5B: 60        RTS



sub_0x01BC6C:
; in
    ; X = 00
C - - - - - 0x01BC6C 06:9C5C: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x01BC6F 06:9C5F: D0 14     BNE bra_9C75
C - - - - - 0x01BC71 06:9C61: A5 75     LDA ram_0075_t03_obj_id
C - - - - - 0x01BC73 06:9C63: 4A        LSR
C - - - - - 0x01BC74 06:9C64: A8        TAY
C - - - - - 0x01BC75 06:9C65: B9 78 9C  LDA tbl_9C78,Y
C - - - - - 0x01BC78 06:9C68: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x01BC7B 06:9C6B: 20 55 97  JSR sub_9755
C - - - - - 0x01BC7E 06:9C6E: F0 07     BEQ bra_9C77_RTS
C - - - - - 0x01BC80 06:9C70: A9 00     LDA #$00
C - - - - - 0x01BC82 06:9C72: 20 15 9B  JSR sub_9B15
bra_9C75:
C - - - - - 0x01BC85 06:9C75: 68        PLA
C - - - - - 0x01BC86 06:9C76: 68        PLA
bra_9C77_RTS:
C - - - - - 0x01BC87 06:9C77: 60        RTS



tbl_9C78:
- D 0 - - - 0x01BC88 06:9C78: 10        .byte $10   ; 50 con_enemy_id_50
- - - - - - 0x01BC89 06:9C79: 10        .byte $10   ; 51 con_enemy_id_51
- D 0 - - - 0x01BC8A 06:9C7A: 08        .byte $08   ; 52 con_enemy_id_52
- D 0 - - - 0x01BC8B 06:9C7B: 18        .byte $18   ; 53 con_enemy_id_53
- D 0 - - - 0x01BC8C 06:9C7C: 10        .byte $10   ; 54 con_enemy_id_54
- D 0 - - - 0x01BC8D 06:9C7D: 08        .byte $08   ; 55 con_enemy_id_55



sub_0x01BC8E:
C - - - - - 0x01BC8E 06:9C7E: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01BC91 06:9C81: 09 20     ORA #$20
C - - - - - 0x01BC93 06:9C83: D0 05     BNE bra_9C8A    ; jmp



sub_0x01BC95:
loc_0x01BC95:
C D 0 - - - 0x01BC95 06:9C85: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01BC98 06:9C88: 29 DF     AND #$20 ^ $FF
bra_9C8A:
C - - - - - 0x01BC9A 06:9C8A: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x01BC9D 06:9C8D: 60        RTS



sub_0x01BC9E:
C - - - - - 0x01BC9E 06:9C8E: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x01BCA1 06:9C91: 09 80     ORA #$80
; bzk optimize, useless BNE after deleting 0x01BCA5
C - - - - - 0x01BCA3 06:9C93: D0 05     BNE bra_9C9A    ; jmp


; bzk garbage
- - - - - - 0x01BCA5 06:9C95: BD F3 04  LDA ram_04F3_obj,X
- - - - - - 0x01BCA8 06:9C98: 29 7F     AND #$7F



bra_9C9A:
C - - - - - 0x01BCAA 06:9C9A: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01BCAD 06:9C9D: 60        RTS



sub_9C9E:
loc_0x01BCAE:
C D 0 - - - 0x01BCAE 06:9C9E: A9 00     LDA #$00
C - - - - - 0x01BCB0 06:9CA0: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01BCB3 06:9CA3: F0 F5     BEQ bra_9C9A    ; jmp



loc_0x01BCB5:
C D 0 - - - 0x01BCB5 06:9CA5: 20 9E 9C  JSR sub_9C9E
C - - - - - 0x01BCB8 06:9CA8: A9 80     LDA #$80
C - - - - - 0x01BCBA 06:9CAA: D0 EE     BNE bra_9C9A    ; jmp



sub_0x01BCBC:
; in
    ; X = 
C - - - - - 0x01BCBC 06:9CAC: E0 00     CPX #$00
C - - - - - 0x01BCBE 06:9CAE: D0 4B     BNE bra_9CFB_RTS
C - - - - - 0x01BCC0 06:9CB0: AC 3D 05  LDY ram_053D_t01
C - - - - - 0x01BCC3 06:9CB3: F0 1E     BEQ bra_9CD3
C - - - - - 0x01BCC5 06:9CB5: CE 3D 05  DEC ram_053D_t01
C - - - - - 0x01BCC8 06:9CB8: D0 41     BNE bra_9CFB_RTS
C - - - - - 0x01BCCA 06:9CBA: BC 79 05  LDY ram_obj_hp,X
C - - - - - 0x01BCCD 06:9CBD: 30 3C     BMI bra_9CFB_RTS
C - - - - - 0x01BCCF 06:9CBF: F0 3A     BEQ bra_9CFB_RTS
C - - - - - 0x01BCD1 06:9CC1: AD 4A 05  LDA ram_054A_t01
C - - - - - 0x01BCD4 06:9CC4: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01BCD7 06:9CC7: C0 0A     CPY #$0A
C - - - - - 0x01BCD9 06:9CC9: 90 08     BCC bra_9CD3
C - - - - - 0x01BCDB 06:9CCB: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01BCDE 06:9CCE: 29 FD     AND #$02 ^ $FF
C - - - - - 0x01BCE0 06:9CD0: 9D 3D 04  STA ram_043A_obj_flags + $03,X
bra_9CD3:
C - - - - - 0x01BCE3 06:9CD3: AD BB 04  LDA ram_04BB_t02
C - - - - - 0x01BCE6 06:9CD6: F0 23     BEQ bra_9CFB_RTS
C - - - - - 0x01BCE8 06:9CD8: 20 08 9D  JSR sub_9D08    ; possible PLA PLA
C - - - - - 0x01BCEB 06:9CDB: 20 14 9D  JSR sub_9D14
C - - - - - 0x01BCEE 06:9CDE: A4 75     LDY ram_0075_t03_obj_id
C - - - - - 0x01BCF0 06:9CE0: 18        CLC
C - - - - - 0x01BCF1 06:9CE1: 79 FC 9C  ADC tbl_9CFC,Y
C - - - - - 0x01BCF4 06:9CE4: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01BCF7 06:9CE7: B9 FD 9C  LDA tbl_9CFC + $01,Y
C - - - - - 0x01BCFA 06:9CEA: 20 1F 9D  JSR sub_9D1F
C - - - - - 0x01BCFD 06:9CED: 20 6C 9D  JSR sub_9D6C
C - - - - - 0x01BD00 06:9CF0: AD 7A 04  LDA ram_047A_t02
C - - - - - 0x01BD03 06:9CF3: 30 03     BMI bra_9CF8
C - - - - - 0x01BD05 06:9CF5: 20 B7 9E  JSR sub_9EB7
bra_9CF8:
; bzk optimize, JMP
C - - - - - 0x01BD08 06:9CF8: 20 A8 9E  JSR sub_9EA8
bra_9CFB_RTS:
C - - - - - 0x01BD0B 06:9CFB: 60        RTS



tbl_9CFC:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 0 - - - 0x01BD0C 06:9CFC: 0A        .byte $0A, $12   ; 50 con_enemy_id_50
- D 0 - - - 0x01BD0E 06:9CFE: 07        .byte $07, $12   ; 51 con_enemy_id_51
- D 0 - - - 0x01BD10 06:9D00: 08        .byte $08, $0A   ; 52 con_enemy_id_52
- D 0 - - - 0x01BD12 06:9D02: 08        .byte $08, $0E   ; 53 con_enemy_id_53
- D 0 - - - 0x01BD14 06:9D04: 08        .byte $08, $0E   ; 54 con_enemy_id_54
- D 0 - - - 0x01BD16 06:9D06: 0C        .byte $0C, $0E   ; 55 con_enemy_id_55



sub_9D08:
; out
    ; ram_0071_t01
C - - - - - 0x01BD18 06:9D08: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01BD1B 06:9D0B: 29 1C     AND #$1C
C - - - - - 0x01BD1D 06:9D0D: 85 71     STA ram_0071_t01
C - - - - - 0x01BD1F 06:9D0F: D0 02     BNE bra_9D13_RTS
C - - - - - 0x01BD21 06:9D11: 68        PLA
C - - - - - 0x01BD22 06:9D12: 68        PLA
bra_9D13_RTS:
C - - - - - 0x01BD23 06:9D13: 60        RTS



sub_9D14:
; in
    ; ram_0071_t01
; out
    ; A
        ; 00 = 
        ; 01 = 
C - - - - - 0x01BD24 06:9D14: A5 71     LDA ram_0071_t01
C - - - - - 0x01BD26 06:9D16: A0 00     LDY #$00
C - - - - - 0x01BD28 06:9D18: 29 0C     AND #$0C
C - - - - - 0x01BD2A 06:9D1A: D0 01     BNE bra_9D1D
C - - - - - 0x01BD2C 06:9D1C: C8        INY ; 01
bra_9D1D:
C - - - - - 0x01BD2D 06:9D1D: 98        TYA
C - - - - - 0x01BD2E 06:9D1E: 60        RTS



sub_9D1F:
C - - - - - 0x01BD2F 06:9D1F: 48        PHA
C - - - - - 0x01BD30 06:9D20: 20 04 9C  JSR sub_9C04
C - - - - - 0x01BD33 06:9D23: 68        PLA
C - - - - - 0x01BD34 06:9D24: 20 2C 9B  JSR sub_9B2C
C - - - - - 0x01BD37 06:9D27: A9 80     LDA #$80
C - - - - - 0x01BD39 06:9D29: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01BD3C 06:9D2C: A9 04     LDA #$04
C - - - - - 0x01BD3E 06:9D2E: A4 75     LDY ram_0075_t03_obj_id
C - - - - - 0x01BD40 06:9D30: C0 04     CPY #(con_enemy_id_52 - $50) * $02
C - - - - - 0x01BD42 06:9D32: D0 02     BNE bra_9D36
C - - - - - 0x01BD44 06:9D34: A9 10     LDA #$10
bra_9D36:
C - - - - - 0x01BD46 06:9D36: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01BD49 06:9D39: A9 00     LDA #$00
C - - - - - 0x01BD4B 06:9D3B: 8D 94 04  STA ram_0494_t02
C - - - - - 0x01BD4E 06:9D3E: 60        RTS



sub_0x01BD4F:
C - - - - - 0x01BD4F 06:9D3F: 20 08 9D  JSR sub_9D08    ; possible PLA PLA
C - - - - - 0x01BD52 06:9D42: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x01BD55 06:9D45: 30 24     BMI bra_9D6B_RTS
C - - - - - 0x01BD57 06:9D47: 20 14 9D  JSR sub_9D14
C - - - - - 0x01BD5A 06:9D4A: 18        CLC
C - - - - - 0x01BD5B 06:9D4B: 69 06     ADC #$06
C - - - - - 0x01BD5D 06:9D4D: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01BD60 06:9D50: A9 12     LDA #$12
C - - - - - 0x01BD62 06:9D52: AC BB 04  LDY ram_04BB_t03
C - - - - - 0x01BD65 06:9D55: C0 04     CPY #$04
C - - - - - 0x01BD67 06:9D57: D0 02     BNE bra_9D5B
C - - - - - 0x01BD69 06:9D59: A9 0E     LDA #$0E
bra_9D5B:
C - - - - - 0x01BD6B 06:9D5B: 20 1F 9D  JSR sub_9D1F
C - - - - - 0x01BD6E 06:9D5E: 20 6C 9D  JSR sub_9D6C
C - - - - - 0x01BD71 06:9D61: A9 80     LDA #$80
C - - - - - 0x01BD73 06:9D63: 8D 60 04  STA ram_0460
C - - - - - 0x01BD76 06:9D66: A9 01     LDA #$01
C - - - - - 0x01BD78 06:9D68: 8D C8 04  STA ram_04C8_t03
bra_9D6B_RTS:
C - - - - - 0x01BD7B 06:9D6B: 60        RTS



sub_9D6C:
C - - - - - 0x01BD7C 06:9D6C: A9 02     LDA #$02
C - - - - - 0x01BD7E 06:9D6E: 1D 3D 04  ORA ram_043A_obj_flags + $03,X
C - - - - - 0x01BD81 06:9D71: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01BD84 06:9D74: 60        RTS



ofs_052_0x01BD85_04:
ofs_059_0x01BD85_04:
ofs_067_0x01BD85_04:
ofs_080_0x01BD85_04:
ofs_082_0x01BD85_04:
ofs_091_0x01BD85_04:
C - - - - - 0x01BD85 06:9D75: CE AE 04  DEC ram_04AE_t03
C - - - - - 0x01BD88 06:9D78: D0 08     BNE bra_9D82_RTS
loc_0x01BD8A:
C D 0 - - - 0x01BD8A 06:9D7A: 20 DC 9A  JSR sub_9ADC
C - - - - - 0x01BD8D 06:9D7D: A9 00     LDA #$00
C - - - - - 0x01BD8F 06:9D7F: 8D 53 04  STA ram_0453_t02
bra_9D82_RTS:
C - - - - - 0x01BD92 06:9D82: 60        RTS



ofs_058_0x01BD93_00:
ofs_079_0x01BD93_00:
C - - - - - 0x01BD93 06:9D83: AD 57 05  LDA ram_0557_t01_damage_to_enemy
C - - - - - 0x01BD96 06:9D86: 38        SEC
C - - - - - 0x01BD97 06:9D87: FD 79 05  SBC ram_obj_hp,X
C - - - - - 0x01BD9A 06:9D8A: C9 01     CMP #$01
C - - - - - 0x01BD9C 06:9D8C: F0 14     BEQ bra_9DA2
; bzk optimize
C - - - - - 0x01BD9E 06:9D8E: AD A8 00  LDA a: ram_plr_index
; 
C - - - - - 0x01BDA1 06:9D91: 29 01     AND #$01
C - - - - - 0x01BDA3 06:9D93: A8        TAY
C - - - - - 0x01BDA4 06:9D94: B9 D7 03  LDA ram_player_power,Y
C - - - - - 0x01BDA7 06:9D97: A8        TAY
C - - - - - 0x01BDA8 06:9D98: B9 A5 9D  LDA tbl_9DA5,Y
C - - - - - 0x01BDAB 06:9D9B: 18        CLC
C - - - - - 0x01BDAC 06:9D9C: 7D 79 05  ADC ram_obj_hp,X
C - - - - - 0x01BDAF 06:9D9F: 9D 79 05  STA ram_obj_hp,X
bra_9DA2:
C - - - - - 0x01BDB2 06:9DA2: 4C A5 98  JMP loc_98A5



tbl_9DA5:
- - - - - - 0x01BDB5 06:9DA5: 00        .byte $00   ; 00 
- - - - - - 0x01BDB6 06:9DA6: 01        .byte $01   ; 01 
- - - - - - 0x01BDB7 06:9DA7: 03        .byte $03   ; 02 
- D 0 - - - 0x01BDB8 06:9DA8: 04        .byte $04   ; 03 



ofs_051_0x01BDB9_00:
ofs_052_0x01BDB9_00:
ofs_058_0x01BDB9_01:
ofs_059_0x01BDB9_00:
ofs_066_0x01BDB9_00:
ofs_067_0x01BDB9_00:
ofs_079_0x01BDB9_01:
ofs_080_0x01BDB9_00:
ofs_081_0x01BDB9_00:
ofs_082_0x01BDB9_00:
ofs_090_0x01BDB9_00:
ofs_091_0x01BDB9_00:
C - - - - - 0x01BDB9 06:9DA9: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01BDBC 06:9DAC: 29 01     AND #$01
C - - - - - 0x01BDBE 06:9DAE: F0 05     BEQ bra_9DB5
- - - - - - 0x01BDC0 06:9DB0: 20 03 9B  JSR sub_9B03_clear_speed_X
- - - - - - 0x01BDC3 06:9DB3: F0 ED     BEQ bra_9DA2
bra_9DB5:
C - - - - - 0x01BDC5 06:9DB5: 20 83 98  JSR sub_9883
C - - - - - 0x01BDC8 06:9DB8: F0 E8     BEQ bra_9DA2    ; jmp



ofs_051_0x01BDCA_01:
ofs_052_0x01BDCA_01:
ofs_058_0x01BDCA_02:
ofs_059_0x01BDCA_01:
ofs_066_0x01BDCA_01:
ofs_067_0x01BDCA_01:
ofs_079_0x01BDCA_02:
ofs_080_0x01BDCA_01:
ofs_081_0x01BDCA_01:
ofs_082_0x01BDCA_01:
ofs_090_0x01BDCA_01:
ofs_091_0x01BDCA_01:
C - - - - - 0x01BDCA 06:9DBA: 20 A6 9B  JSR sub_9BA6
C - - - - - 0x01BDCD 06:9DBD: 20 52 98  JSR sub_9852
C - - - - - 0x01BDD0 06:9DC0: 90 E0     BCC bra_9DA2    ; jmp



loc_0x01BDD2:
ofs_052_0x01BDD2_02:
ofs_059_0x01BDD2_02:
ofs_067_0x01BDD2_02:
ofs_080_0x01BDD2_02:
ofs_091_0x01BDD2_02:
C D 0 - - - 0x01BDD2 06:9DC2: 20 72 9E  JSR sub_9E72
C - - - - - 0x01BDD5 06:9DC5: FE F3 04  INC ram_04F3_obj,X
C - - - - - 0x01BDD8 06:9DC8: A5 75     LDA ram_0075_t03_obj_id
C - - - - - 0x01BDDA 06:9DCA: 4A        LSR
C - - - - - 0x01BDDB 06:9DCB: A8        TAY
C - - - - - 0x01BDDC 06:9DCC: B9 D2 9D  LDA tbl_9DD2,Y
C - - - - - 0x01BDDF 06:9DCF: 4C 2C 9B  JMP loc_9B2C



tbl_9DD2:
- D 0 - - - 0x01BDE2 06:9DD2: 14        .byte $14   ; 50 con_enemy_id_50
- D 0 - - - 0x01BDE3 06:9DD3: 14        .byte $14   ; 51 con_enemy_id_51
- D 0 - - - 0x01BDE4 06:9DD4: 0C        .byte $0C   ; 52 con_enemy_id_52
- D 0 - - - 0x01BDE5 06:9DD5: 10        .byte $10   ; 53 con_enemy_id_53
- D 0 - - - 0x01BDE6 06:9DD6: 10        .byte $10   ; 54 con_enemy_id_54
- D 0 - - - 0x01BDE7 06:9DD7: 10        .byte $10   ; 55 con_enemy_id_55



loc_0x01BDE8:
ofs_059_0x01BDE8_03:
ofs_067_0x01BDE8_03:
ofs_080_0x01BDE8_03:
ofs_082_0x01BDE8_03:
ofs_091_0x01BDE8_03:
C D 0 - - - 0x01BDE8 06:9DD8: 20 0A 99  JSR sub_990A
C - - - - - 0x01BDEB 06:9DDB: A9 40     LDA #$40
C - - - - - 0x01BDED 06:9DDD: 8D AE 04  STA ram_04AE_t03
C - - - - - 0x01BDF0 06:9DE0: 4C A5 98  JMP loc_98A5



bra_9DE3:
sub_0x01BDF3:
loc_0x01BDF3:
C D 0 - - - 0x01BDF3 06:9DE3: A9 00     LDA #$00
bra_9DE5:
C - - - - - 0x01BDF5 06:9DE5: A0 00     LDY #$00
bra_9DE7:
C - - - - - 0x01BDF7 06:9DE7: 85 71     STA ram_0071_t09
C - - - - - 0x01BDF9 06:9DE9: 20 29 9E  JSR sub_9E29_set_speed_Y
C - - - - - 0x01BDFC 06:9DEC: 20 40 9E  JSR sub_9E40
C - - - - - 0x01BDFF 06:9DEF: A9 20     LDA #$20
C - - - - - 0x01BE01 06:9DF1: C0 05     CPY #$05
C - - - - - 0x01BE03 06:9DF3: 4C 14 9E  JMP loc_9E14



loc_0x01BE06:
C D 0 - - - 0x01BE06 06:9DF6: A9 80     LDA #$80
C - - - - - 0x01BE08 06:9DF8: D0 EB     BNE bra_9DE5    ; jmp



loc_0x01BE0A:
- - - - - - 0x01BE0A 06:9DFA: A9 00     LDA #$00
- - - - - - 0x01BE0C 06:9DFC: A0 02     LDY #$02
- - - - - - 0x01BE0E 06:9DFE: D0 E7     BNE bra_9DE7    ; jmp



sub_0x01BE10:
loc_0x01BE10:
C D 0 - - - 0x01BE10 06:9E00: A9 00     LDA #$00
C - - - - - 0x01BE12 06:9E02: 85 71     STA ram_0071_t09
C - - - - - 0x01BE14 06:9E04: A0 02     LDY #$02
C - - - - - 0x01BE16 06:9E06: 20 29 9E  JSR sub_9E29_set_speed_Y
C - - - - - 0x01BE19 06:9E09: 20 40 9E  JSR sub_9E40
C - - - - - 0x01BE1C 06:9E0C: C0 05     CPY #$05
C - - - - - 0x01BE1E 06:9E0E: 90 D3     BCC bra_9DE3
C - - - - - 0x01BE20 06:9E10: A9 34     LDA #$34
C - - - - - 0x01BE22 06:9E12: C0 0A     CPY #$0A
loc_9E14:
; in
    ; C
        ; 0 = 
        ; 1 = 
    ; A = 
    ; ram_0071_t09
C D 0 - - - 0x01BE24 06:9E14: B0 03     BCS bra_9E19
C - - - - - 0x01BE26 06:9E16: B9 1F 9E  LDA tbl_9E1F,Y
bra_9E19:
C - - - - - 0x01BE29 06:9E19: 05 71     ORA ram_0071_t09
C - - - - - 0x01BE2B 06:9E1B: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01BE2E 06:9E1E: 60        RTS



tbl_9E1F:
- - - - - - 0x01BE2F 06:9E1F: 18        .byte $18   ; 00 
- D 0 - - - 0x01BE30 06:9E20: 18        .byte $18   ; 01 
- D 0 - - - 0x01BE31 06:9E21: 18        .byte $18   ; 02 
- D 0 - - - 0x01BE32 06:9E22: 1C        .byte $1C   ; 03 
- D 0 - - - 0x01BE33 06:9E23: 1C        .byte $1C   ; 04 
- - - - - - 0x01BE34 06:9E24: 24        .byte $24   ; 05 
- D 0 - - - 0x01BE35 06:9E25: 24        .byte $24   ; 06 
- D 0 - - - 0x01BE36 06:9E26: 28        .byte $28   ; 07 
- D 0 - - - 0x01BE37 06:9E27: 2C        .byte $2C   ; 08 
- D 0 - - - 0x01BE38 06:9E28: 30        .byte $30   ; 09 



sub_9E29_set_speed_Y:
loc_9E29_set_speed_Y:
loc_0x01BE39_set_speed_Y:
; in
    ; Y = table index 00 02 04
C D 0 - - - 0x01BE39 06:9E29: B9 36 9E  LDA tbl_9E36_speed_Y,Y
C - - - - - 0x01BE3C 06:9E2C: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x01BE3F 06:9E2F: B9 37 9E  LDA tbl_9E36_speed_Y + $01,Y
C - - - - - 0x01BE42 06:9E32: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01BE45 06:9E35: 60        RTS



tbl_9E36_speed_Y:
- D 0 - - - 0x01BE46 06:9E36: 00 FB     .word $FB00 ; 00 
- D 0 - - - 0x01BE48 06:9E38: 60 FA     .word $FA60 ; 02 
- D 0 - - - 0x01BE4A 06:9E3A: C0 FD     .word $FDC0 ; 04 


; bzk garbage, no such indexes
- - - - - - 0x01BE4C 06:9E3C: 00 06     .word $0600 ; 06 
- - - - - - 0x01BE4E 06:9E3E: 80 FF     .word $FF80 ; 08 



sub_9E40:
; out
    ; Y = 
C - - - - - 0x01BE50 06:9E40: 20 FB 97  JSR sub_97FB
C - - - - - 0x01BE53 06:9E43: 90 03     BCC bra_9E48
C - - - - - 0x01BE55 06:9E45: 20 D6 9B  JSR sub_9BD6_EOR_obj_flag
bra_9E48:
C - - - - - 0x01BE58 06:9E48: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
sub_0x01BE5B:
; out
    ; Y = 
C - - - - - 0x01BE5B 06:9E4B: BC 41 05  LDY ram_0541_obj_flags,X
C - - - - - 0x01BE5E 06:9E4E: 10 05     BPL bra_9E55
C - - - - - 0x01BE60 06:9E50: 49 FF     EOR #$FF
C - - - - - 0x01BE62 06:9E52: 18        CLC
C - - - - - 0x01BE63 06:9E53: 69 01     ADC #$01
bra_9E55:
; / 10
C - - - - - 0x01BE65 06:9E55: 4A        LSR
C - - - - - 0x01BE66 06:9E56: 4A        LSR
C - - - - - 0x01BE67 06:9E57: 4A        LSR
C - - - - - 0x01BE68 06:9E58: 4A        LSR
; 
C - - - - - 0x01BE69 06:9E59: A8        TAY
C - - - - - 0x01BE6A 06:9E5A: 60        RTS



loc_0x01BE6B:
; in
    ; A = 50 60
    ; X = 00 only?
C D 0 - - - 0x01BE6B 06:9E5B: 20 11 98  JSR sub_9811
C - - - - - 0x01BE6E 06:9E5E: B0 08     BCS bra_9E68
C - - - - - 0x01BE70 06:9E60: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01BE73 06:9E63: DD 5B 05  CMP ram_055B_obj_anim_counter,X
C - - - - - 0x01BE76 06:9E66: F0 05     BEQ bra_9E6D
bra_9E68:
C - - - - - 0x01BE78 06:9E68: A9 00     LDA #$00
C - - - - - 0x01BE7A 06:9E6A: 9D 0D 05  STA ram_spd_X_lo_obj,X
bra_9E6D:
C - - - - - 0x01BE7D 06:9E6D: A0 04     LDY #$04
C - - - - - 0x01BE7F 06:9E6F: 4C 29 9E  JMP loc_9E29_set_speed_Y



sub_9E72:
sub_0x01BE82:
loc_0x01BE82:
C D 0 - - - 0x01BE82 06:9E72: A9 04     LDA #$04
C - - - - - 0x01BE84 06:9E74: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01BE87 06:9E77: 60        RTS



sub_0x01BE88:
loc_0x01BE88:
; in
    ; A = 
    ; Y = 
C D 0 - - - 0x01BE88 06:9E78: 84 68     STY ram_0068_t06_pos_X_lo
C - - - - - 0x01BE8A 06:9E7A: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x01BE8C 06:9E7C: A9 00     LDA #$00
C - - - - - 0x01BE8E 06:9E7E: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x01BE90 06:9E80: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x01BE92 06:9E82: 20 B6 FF  JSR sub_0x01FFC6
C - - - - - 0x01BE95 06:9E85: A9 1B     LDA #con_sfx_explosion
bra_9E87_play_sound:
sub_0x01BE97_play_sound:    ; bzk optimize
C - - - - - 0x01BE97 06:9E87: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01BE99 06:9E89: 4C AD FF  JMP loc_0x01FFBD_play_sound



sub_0x01BE9C:
loc_0x01BE9C:
C D 0 - - - 0x01BE9C 06:9E8C: A9 07     LDA #$07
C - - - - - 0x01BE9E 06:9E8E: D0 F7     BNE bra_9E87_play_sound    ; jmp



loc_0x01BEA0:
C D 0 - - - 0x01BEA0 06:9E90: A9 08     LDA #$08
C - - - - - 0x01BEA2 06:9E92: D0 F3     BNE bra_9E87_play_sound    ; jmp



sub_0x01BEA4:
loc_0x01BEA4:
C D 0 - - - 0x01BEA4 06:9E94: A9 14     LDA #$14
C - - - - - 0x01BEA6 06:9E96: D0 EF     BNE bra_9E87_play_sound    ; jmp



loc_0x01BEA8:
C D 0 - - - 0x01BEA8 06:9E98: A9 06     LDA #$06
C - - - - - 0x01BEAA 06:9E9A: D0 EB     BNE bra_9E87_play_sound    ; jmp



sub_0x01BEAC:
C - - - - - 0x01BEAC 06:9E9C: A9 05     LDA #$05
C - - - - - 0x01BEAE 06:9E9E: D0 E7     BNE bra_9E87_play_sound    ; jmp



sub_0x01BEB0:
loc_0x01BEB0:
C D 0 - - - 0x01BEB0 06:9EA0: A9 10     LDA #$10
C - - - - - 0x01BEB2 06:9EA2: D0 E3     BNE bra_9E87_play_sound    ; jmp



sub_9EA4:
C - - - - - 0x01BEB4 06:9EA4: A9 0A     LDA #$0A
C - - - - - 0x01BEB6 06:9EA6: D0 DF     BNE bra_9E87_play_sound    ; jmp



sub_9EA8:
C - - - - - 0x01BEB8 06:9EA8: A9 0E     LDA #$0E
C - - - - - 0x01BEBA 06:9EAA: D0 DB     BNE bra_9E87_play_sound    ; jmp



loc_0x01BEBC:
C D 0 - - - 0x01BEBC 06:9EAC: A9 40     LDA #$40
C - - - - - 0x01BEBE 06:9EAE: 8D 3D 05  STA ram_053D_t01
sub_0x01BEC1:
loc_0x01BEC1:
C D 0 - - - 0x01BEC1 06:9EB1: A9 00     LDA #$00
C - - - - - 0x01BEC3 06:9EB3: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01BEC6 06:9EB6: 60        RTS



sub_9EB7:
sub_0x01BEC7:
loc_0x01BEC7:
C D 0 - - - 0x01BEC7 06:9EB7: A9 80     LDA #$80
C - - - - - 0x01BEC9 06:9EB9: 8D 7A 04  STA ram_047A_t02
C - - - - - 0x01BECC 06:9EBC: EE BB 04  INC ram_04BB_t02
C - - - - - 0x01BECF 06:9EBF: 60        RTS



sub_0x01BED0:
; in
    ; ram_0074_t01_table_index
    ; X = 04-08
C - - - - - 0x01BED0 06:9EC0: A4 74     LDY ram_0074_t01_table_index
C - - - - - 0x01BED2 06:9EC2: B9 D8 94  LDA tbl_94D8,Y
C - - - - - 0x01BED5 06:9EC5: A8        TAY
C - - - - - 0x01BED6 06:9EC6: B9 68 96  LDA tbl_9668,Y
C - - - - - 0x01BED9 06:9EC9: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01BEDC 06:9ECC: B9 69 96  LDA tbl_9668 + $01,Y
C - - - - - 0x01BEDF 06:9ECF: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x01BEE2 06:9ED2: B9 6A 96  LDA tbl_9668 + $02,Y
C - - - - - 0x01BEE5 06:9ED5: 9D 79 05  STA ram_obj_hp,X
C - - - - - 0x01BEE8 06:9ED8: B9 6B 96  LDA tbl_9668 + $03,Y
C - - - - - 0x01BEEB 06:9EDB: CD FC 04  CMP ram_04F3_obj + $09
C - - - - - 0x01BEEE 06:9EDE: F0 0A     BEQ bra_9EEA_RTS
C - - - - - 0x01BEF0 06:9EE0: 8D FC 04  STA ram_04F3_obj + $09
C - - - - - 0x01BEF3 06:9EE3: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01BEF5 06:9EE5: 20 F1 9F  JSR sub_9FF1
C - - - - - 0x01BEF8 06:9EE8: A6 7A     LDX ram_007A_t03_object_index
bra_9EEA_RTS:
C - - - - - 0x01BEFA 06:9EEA: 60        RTS



sub_0x01BEFB:
; in
    ; ram_0074_t01_table_index
C - - - - - 0x01BEFB 06:9EEB: A4 74     LDY ram_0074_t01_table_index
C - - - - - 0x01BEFD 06:9EED: B9 DA 94  LDA tbl_94D8 + $02,Y
C - - - - - 0x01BF00 06:9EF0: 30 1A     BMI bra_9F0C_80_FF
; 00-7F
C - - - - - 0x01BF02 06:9EF2: A8        TAY
C - - - - - 0x01BF03 06:9EF3: B9 9C 96  LDA tbl_969C_positions,Y
C - - - - - 0x01BF06 06:9EF6: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BF09 06:9EF9: B9 9D 96  LDA tbl_969C_positions + $01,Y
C - - - - - 0x01BF0C 06:9EFC: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01BF0F 06:9EFF: B9 9E 96  LDA tbl_969C_positions + $02,Y
C - - - - - 0x01BF12 06:9F02: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01BF15 06:9F05: B9 9F 96  LDA tbl_969C_positions + $03,Y
C - - - - - 0x01BF18 06:9F08: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01BF1B 06:9F0B: 60        RTS
bra_9F0C_80_FF:
; bzk optimize, rewrite without 0071
    ; move LDY 0079 to 0x01BF35
    ; move LDA 00 + STA 0073 after TAY
C - - - - - 0x01BF1C 06:9F0C: 29 7F     AND #$7F
C - - - - - 0x01BF1E 06:9F0E: A8        TAY
C - - - - - 0x01BF1F 06:9F0F: B9 D0 96  LDA tbl_96D0_speed_lo,Y
C - - - - - 0x01BF22 06:9F12: 85 71     STA ram_0071_t22_spd_X_lo
C - - - - - 0x01BF24 06:9F14: B9 D1 96  LDA tbl_96D0_speed_lo + $01,Y
C - - - - - 0x01BF27 06:9F17: 85 72     STA ram_0072_t06_spd_Y_lo
C - - - - - 0x01BF29 06:9F19: A4 79     LDY ram_0079_obj_index
C - - - - - 0x01BF2B 06:9F1B: A9 00     LDA #$00
C - - - - - 0x01BF2D 06:9F1D: 85 73     STA ram_0073_t07_pos_X_hi
C - - - - - 0x01BF2F 06:9F1F: A5 71     LDA ram_0071_t22_spd_X_lo
C - - - - - 0x01BF31 06:9F21: 10 02     BPL bra_9F25
C - - - - - 0x01BF33 06:9F23: C6 73     DEC ram_0073_t07_pos_X_hi   ; -> FF
bra_9F25:
C - - - - - 0x01BF35 06:9F25: 18        CLC
C - - - - - 0x01BF36 06:9F26: 79 64 04  ADC ram_pos_X_lo_obj + $03,Y
C - - - - - 0x01BF39 06:9F29: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BF3C 06:9F2C: A9 00     LDA #$00
C - - - - - 0x01BF3E 06:9F2E: 65 73     ADC ram_0073_t07_pos_X_hi
C - - - - - 0x01BF40 06:9F30: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
; 
C - - - - - 0x01BF43 06:9F33: B9 8B 04  LDA ram_pos_Y_lo_obj + $03,Y
C - - - - - 0x01BF46 06:9F36: 18        CLC
C - - - - - 0x01BF47 06:9F37: 65 72     ADC ram_0072_t06_spd_Y_lo
C - - - - - 0x01BF49 06:9F39: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01BF4C 06:9F3C: 60        RTS



sub_0x01BF4D:
; in
    ; ram_0074_t01_table_index
C - - - - - 0x01BF4D 06:9F3D: A4 74     LDY ram_0074_t01_table_index
C - - - - - 0x01BF4F 06:9F3F: B9 DB 94  LDA tbl_94D8 + $03,Y
C - - - - - 0x01BF52 06:9F42: 18        CLC
C - - - - - 0x01BF53 06:9F43: 69 78     ADC #$1E * $04
C - - - - - 0x01BF55 06:9F45: 4C 47 9B  JMP loc_9B47



sub_0x01BF58:
; in
    ; ram_0074_t01_table_index
C - - - - - 0x01BF58 06:9F48: A4 74     LDY ram_0074_t01_table_index
C - - - - - 0x01BF5A 06:9F4A: B9 D9 94  LDA tbl_94D8 + $01,Y
C - - - - - 0x01BF5D 06:9F4D: A8        TAY
C - - - - - 0x01BF5E 06:9F4E: A9 0C     LDA #< tbl_890C
C - - - - - 0x01BF60 06:9F50: 85 5D     STA ram_005D_t17_data
C - - - - - 0x01BF62 06:9F52: A9 89     LDA #> tbl_890C
C - - - - - 0x01BF64 06:9F54: 85 5E     STA ram_005D_t17_data + $01
C - - - - - 0x01BF66 06:9F56: 4C 8D 9A  JMP loc_9A8D



sub_0x01BF69_increase_X_by_04:
C - - - - - 0x01BF69 06:9F59: 8A        TXA
C - - - - - 0x01BF6A 06:9F5A: 18        CLC
C - - - - - 0x01BF6B 06:9F5B: 69 04     ADC #$04
C - - - - - 0x01BF6D 06:9F5D: AA        TAX
C - - - - - 0x01BF6E 06:9F5E: 60        RTS



sub_0x01BF6F:
C - - - - - 0x01BF6F 06:9F5F: AD 41 05  LDA ram_0541_obj_flags
C - - - - - 0x01BF72 06:9F62: 29 7F     AND #$80 ^ $FF
C - - - - - 0x01BF74 06:9F64: 0D 4E 05  ORA ram_054E_obj
C - - - - - 0x01BF77 06:9F67: 8D 41 05  STA ram_0541_obj_flags
C - - - - - 0x01BF7A 06:9F6A: 60        RTS



sub_0x01BF7B:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x01BF7B 06:9F6B: AD 41 05  LDA ram_0541_obj_flags
C - - - - - 0x01BF7E 06:9F6E: 29 80     AND #$80
C - - - - - 0x01BF80 06:9F70: CD 4E 05  CMP ram_054E_obj
C - - - - - 0x01BF83 06:9F73: 60        RTS



sub_0x01BF84:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01BF84 06:9F74: AC 8B 04  LDY ram_pos_Y_lo_obj + $03
C - - - - - 0x01BF87 06:9F77: CC 6D 04  CPY ram_046D_t02
C - - - - - 0x01BF8A 06:9F7A: B0 02     BCS bra_9F7E
- - - - - - 0x01BF8C 06:9F7C: 38        SEC
- - - - - - 0x01BF8D 06:9F7D: 60        RTS
bra_9F7E:
C - - - - - 0x01BF8E 06:9F7E: 18        CLC
C - - - - - 0x01BF8F 06:9F7F: 60        RTS



sub_0x01BF90_prepare_adresses_with_buttons_values:
C - - - - - 0x01BF90 06:9F80: A9 08     LDA #con_btn_Up
C - - - - - 0x01BF92 06:9F82: 85 67     STA ram_0067_t4A_btn_Up
C - - - - - 0x01BF94 06:9F84: A9 04     LDA #con_btn_Down
C - - - - - 0x01BF96 06:9F86: 85 68     STA ram_0068_t13_btn_Down
C - - - - - 0x01BF98 06:9F88: A9 03     LDA #con_btns_LR
C - - - - - 0x01BF9A 06:9F8A: 85 6B     STA ram_006B_t14_btns_LR
C - - - - - 0x01BF9C 06:9F8C: A9 40     LDA #con_btn_B
C - - - - - 0x01BF9E 06:9F8E: 85 6C     STA ram_006C_t07_button_B
; bzk optimize, useless LDA + STA
C - - - - - 0x01BFA0 06:9F90: A9 80     LDA #$80    ; con_btn_A ?
C - - - - - 0x01BFA2 06:9F92: 85 6D     STA ram_006D_tFF_useless
; 
C - - - - - 0x01BFA4 06:9F94: 60        RTS



sub_0x01BFA5:
C - - - - - 0x01BFA5 06:9F95: A5 37     LDA ram_buttons + $01
C - - - - - 0x01BFA7 06:9F97: A0 00     LDY #$00    ; left
C - - - - - 0x01BFA9 06:9F99: 29 03     AND #con_btns_LR
C - - - - - 0x01BFAB 06:9F9B: F0 09     BEQ bra_9FA6_RTS
C - - - - - 0x01BFAD 06:9F9D: 29 01     AND #con_btn_Right
C - - - - - 0x01BFAF 06:9F9F: F0 02     BEQ bra_9FA3_pressed_Left
; if Right
C - - - - - 0x01BFB1 06:9FA1: A0 80     LDY #$80    ; right
bra_9FA3_pressed_Left:
C - - - - - 0x01BFB3 06:9FA3: 8C 4E 05  STY ram_054E_obj
bra_9FA6_RTS:
C - - - - - 0x01BFB6 06:9FA6: 60        RTS



sub_0x01BFB7:
C - - - - - 0x01BFB7 06:9FA7: AD 6C 05  LDA ram_056C_obj
C - - - - - 0x01BFBA 06:9FAA: 30 28     BMI bra_9FD4_RTS
C - - - - - 0x01BFBC 06:9FAC: AD 71 04  LDA ram_pos_X_hi_obj + $03
C - - - - - 0x01BFBF 06:9FAF: D0 23     BNE bra_9FD4_RTS
C - - - - - 0x01BFC1 06:9FB1: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01BFC4 06:9FB4: D0 1E     BNE bra_9FD4_RTS
C - - - - - 0x01BFC6 06:9FB6: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
C - - - - - 0x01BFC9 06:9FB9: 38        SEC
C - - - - - 0x01BFCA 06:9FBA: FD 8B 04  SBC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01BFCD 06:9FBD: 30 15     BMI bra_9FD4_RTS
C - - - - - 0x01BFCF 06:9FBF: C9 2C     CMP #$2C
C - - - - - 0x01BFD1 06:9FC1: B0 11     BCS bra_9FD4_RTS
C - - - - - 0x01BFD3 06:9FC3: AD 64 04  LDA ram_pos_X_lo_obj + $03
C - - - - - 0x01BFD6 06:9FC6: 38        SEC
C - - - - - 0x01BFD7 06:9FC7: FD 64 04  SBC ram_pos_X_lo_obj + $03,X
C - - - - - 0x01BFDA 06:9FCA: 18        CLC
C - - - - - 0x01BFDB 06:9FCB: 69 10     ADC #$10
C - - - - - 0x01BFDD 06:9FCD: C9 20     CMP #$20
C - - - - - 0x01BFDF 06:9FCF: B0 03     BCS bra_9FD4_RTS
C - - - - - 0x01BFE1 06:9FD1: FE 41 05  INC ram_0541_obj_flags,X
bra_9FD4_RTS:
C - - - - - 0x01BFE4 06:9FD4: 60        RTS



sub_0x01BFE5:
C - - - - - 0x01BFE5 06:9FD5: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01BFE8 06:9FD8: 09 02     ORA #$02
C - - - - - 0x01BFEA 06:9FDA: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01BFED 06:9FDD: 60        RTS



sub_0x01BFEE:
; in
    ; Y = 
C - - - - - 0x01BFEE 06:9FDE: AD C7 05  LDA ram_05C7_flags
C - - - - - 0x01BFF1 06:9FE1: D0 09     BNE bra_9FEC_RTS
C - - - - - 0x01BFF3 06:9FE3: B9 ED 9F  LDA tbl_9FED,Y
C - - - - - 0x01BFF6 06:9FE6: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x01BFF9 06:9FE9: 99 B1 05  STA ram_05B1_array,Y
bra_9FEC_RTS:
C - - - - - 0x01BFFC 06:9FEC: 60        RTS



tbl_9FED:
;                                              +----------------- 
;                                              |     +----------- 
;                                              |     |     +----- 
;                                              |     |     |
- D 0 - - - 0x01BFFD 06:9FED: CD        .byte $80 + $40 + $0D   ; 00 
- D 0 - - - 0x01BFFE 06:9FEE: CA        .byte $80 + $40 + $0A   ; 01 
- D 0 - - - 0x01BFFF 06:9FEF: CB        .byte $80 + $40 + $0B   ; 02 
- D 0 - - - 0x01C000 06:9FF0: CC        .byte $80 + $40 + $0C   ; 03 



sub_9FF1:
sub_0x01C001:
C - - - - - 0x01C001 06:9FF1: 20 DA FF  JSR sub_0x01FFEA_prepare_sprite_palette
C - - - - - 0x01C004 06:9FF4: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x01C006 06:9FF6: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x01C008 06:9FF8: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01C00A 06:9FFA: 05 02     ORA ram_buffers_flags
C - - - - - 0x01C00C 06:9FFC: 85 02     STA ram_buffers_flags
C - - - - - 0x01C00E 06:9FFE: 60        RTS


; bzk garbage
- - - - - - 0x01C00F 06:9FFF: 00        .byte $00   ; 



.out .sprintf("Free bytes in bank 0D_2: 0x%04X [%d]", ($A000 - *), ($A000 - *))



