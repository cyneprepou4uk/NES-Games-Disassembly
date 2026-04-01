.segment "BANK_08"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $A000  ; for listing file
; 0x010010-0x01200F



.export sub_0x010010
.export sub_0x010013
.export sub_0x010016
.export sub_0x010019_shot_handler
.export sub_0x01001F



sub_0x010010:
; bzk optimize
C - - - - - 0x010010 04:A000: 4C 45 B2  JMP loc_B245



sub_0x010013:
; bzk optimize
C - - - - - 0x010013 04:A003: 4C 18 A0  JMP loc_A018



sub_0x010016:
; bzk optimize
C - - - - - 0x010016 04:A006: 4C D3 BB  JMP loc_BBD3



sub_0x010019_shot_handler:
; bzk optimize
C - - - - - 0x010019 04:A009: 4C 0D B7  JMP loc_B70D_shot_handler


; bzk garbage
- - - - - - 0x01001C 04:A00C: 4C 20 BF  JMP loc_BF20



sub_0x01001F:
; bzk optimize
C - - - - - 0x01001F 04:A00F: 4C C5 B5  JMP loc_B5C5



loc_A012:
; bzk garbage
- - - - - - 0x010022 04:A012: 4C 12 A0  JMP loc_A012



loc_A015:
; bzk garbage
- - - - - - 0x010025 04:A015: 4C 15 A0  JMP loc_A015



loc_A018:
C D 1 - - - 0x010028 04:A018: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x01002A 04:A01A: F0 3D     BEQ bra_A059_RTS
C - - - - - 0x01002C 04:A01C: 85 75     STA ram_0075_t02_loop_counter
C - - - - - 0x01002E 04:A01E: A9 00     LDA #$00
C - - - - - 0x010030 04:A020: 85 76     STA ram_obj_index
bra_A022_loop:
C - - - - - 0x010032 04:A022: A6 76     LDX ram_obj_index
C - - - - - 0x010034 04:A024: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x010037 04:A027: 30 04     BMI bra_A02D
bra_A029_loop:
C - - - - - 0x010039 04:A029: E6 76     INC ram_obj_index
C - - - - - 0x01003B 04:A02B: D0 F5     BNE bra_A022_loop    ; jmp
bra_A02D:
C - - - - - 0x01003D 04:A02D: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x010040 04:A030: 48        PHA
C - - - - - 0x010041 04:A031: 29 01     AND #$01
C - - - - - 0x010043 04:A033: 0A        ASL
C - - - - - 0x010044 04:A034: 85 67     STA ram_0067_t08
C - - - - - 0x010046 04:A036: 68        PLA
C - - - - - 0x010047 04:A037: 29 FD     AND #$FD
C - - - - - 0x010049 04:A039: 05 67     ORA ram_0067_t08
C - - - - - 0x01004B 04:A03B: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01004E 04:A03E: 20 98 A2  JSR sub_A298
C - - - - - 0x010051 04:A041: 20 20 B3  JSR sub_B320
C - - - - - 0x010054 04:A044: 20 64 AD  JSR sub_AD64
C - - - - - 0x010057 04:A047: 90 09     BCC bra_A052
C - - - - - 0x010059 04:A049: 20 5A A0  JSR sub_A05A_object_handler
C - - - - - 0x01005C 04:A04C: 20 3D A1  JSR sub_A13D
C - - - - - 0x01005F 04:A04F: 20 0C A1  JSR sub_A10C
bra_A052:
C - - - - - 0x010062 04:A052: C6 75     DEC ram_0075_t02_loop_counter
C - - - - - 0x010064 04:A054: D0 D3     BNE bra_A029_loop
; bzk optimize, JMP
C - - - - - 0x010066 04:A056: 20 28 AE  JSR sub_AE28
bra_A059_RTS:
C - - - - - 0x010069 04:A059: 60        RTS



sub_A05A_object_handler:
C - - - - - 0x01006A 04:A05A: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01006D 04:A05D: 0A        ASL
C - - - - - 0x01006E 04:A05E: AA        TAX
C - - - - - 0x01006F 04:A05F: BD 6C A0  LDA tbl_A06C,X
C - - - - - 0x010072 04:A062: 85 5B     STA ram_005B_t67_jmp
C - - - - - 0x010074 04:A064: BD 6D A0  LDA tbl_A06C + $01,X
C - - - - - 0x010077 04:A067: 85 5C     STA ram_005B_t67_jmp + $01
C - - - - - 0x010079 04:A069: 6C 5B 00  JMP (ram_005B_t67_jmp)



tbl_A06C:
- - - - - - 0x01007C 04:A06C: A3 A1     .word ofs_042_A1A3_00
- D 1 - - - 0x01007E 04:A06E: A3 A1     .word ofs_042_A1A3_01
- - - - - - 0x010080 04:A070: A3 A1     .word ofs_042_A1A3_02
- - - - - - 0x010082 04:A072: A7 A1     .word ofs_042_A1A7_03
- - - - - - 0x010084 04:A074: A7 A1     .word ofs_042_A1A7_04
- D 1 - - - 0x010086 04:A076: A3 A1     .word ofs_042_A1A3_05
- D 1 - - - 0x010088 04:A078: A3 A1     .word ofs_042_A1A3_06
- D 1 - - - 0x01008A 04:A07A: AE A1     .word ofs_042_A1AE_07
- D 1 - - - 0x01008C 04:A07C: AE A1     .word ofs_042_A1AE_08
- D 1 - - - 0x01008E 04:A07E: A3 A1     .word ofs_042_A1A3_09
- D 1 - - - 0x010090 04:A080: A3 A1     .word ofs_042_A1A3_0A
- D 1 - - - 0x010092 04:A082: A3 A1     .word ofs_042_A1A3_0B
- - - - - - 0x010094 04:A084: A3 A1     .word ofs_042_A1A3_0C
- D 1 - - - 0x010096 04:A086: BC A1     .word ofs_042_A1BC_0D
- D 1 - - - 0x010098 04:A088: BC A1     .word ofs_042_A1BC_0E
- D 1 - - - 0x01009A 04:A08A: BF A1     .word ofs_042_A1BF_0F
- D 1 - - - 0x01009C 04:A08C: BF A1     .word ofs_042_A1BF_10
- D 1 - - - 0x01009E 04:A08E: C6 A1     .word ofs_042_A1C6_11
- - - - - - 0x0100A0 04:A090: C6 A1     .word ofs_042_A1C6_12
- D 1 - - - 0x0100A2 04:A092: C6 A1     .word ofs_042_A1C6_13
- - - - - - 0x0100A4 04:A094: C6 A1     .word ofs_042_A1C6_14
- D 1 - - - 0x0100A6 04:A096: CA A1     .word ofs_042_A1CA_15
- - - - - - 0x0100A8 04:A098: CA A1     .word ofs_042_A1CA_16
- - - - - - 0x0100AA 04:A09A: A6 A1     .word ofs_042_A1A6_17_RTS
- - - - - - 0x0100AC 04:A09C: A3 A1     .word ofs_042_A1A3_18
- - - - - - 0x0100AE 04:A09E: A3 A1     .word ofs_042_A1A3_19
- - - - - - 0x0100B0 04:A0A0: A3 A1     .word ofs_042_A1A3_1A
- - - - - - 0x0100B2 04:A0A2: CA A1     .word ofs_042_A1CA_1B
- - - - - - 0x0100B4 04:A0A4: CA A1     .word ofs_042_A1CA_1C
- - - - - - 0x0100B6 04:A0A6: CA A1     .word ofs_042_A1CA_1D
- - - - - - 0x0100B8 04:A0A8: CA A1     .word ofs_042_A1CA_1E
- D 1 - - - 0x0100BA 04:A0AA: CA A1     .word ofs_042_A1CA_1F
- D 1 - - - 0x0100BC 04:A0AC: CA A1     .word ofs_042_A1CA_20
- - - - - - 0x0100BE 04:A0AE: CA A1     .word ofs_042_A1CA_21
- - - - - - 0x0100C0 04:A0B0: CA A1     .word ofs_042_A1CA_22
- D 1 - - - 0x0100C2 04:A0B2: CA A1     .word ofs_042_A1CA_23
- - - - - - 0x0100C4 04:A0B4: CA A1     .word ofs_042_A1CA_24
- D 1 - - - 0x0100C6 04:A0B6: CA A1     .word ofs_042_A1CA_25
- D 1 - - - 0x0100C8 04:A0B8: CA A1     .word ofs_042_A1CA_26
- D 1 - - - 0x0100CA 04:A0BA: CA A1     .word ofs_042_A1CA_27
- - - - - - 0x0100CC 04:A0BC: CA A1     .word ofs_042_A1CA_28
- D 1 - - - 0x0100CE 04:A0BE: CA A1     .word ofs_042_A1CA_29
- D 1 - - - 0x0100D0 04:A0C0: A3 A1     .word ofs_042_A1A3_2A
- D 1 - - - 0x0100D2 04:A0C2: A3 A1     .word ofs_042_A1A3_2B
- D 1 - - - 0x0100D4 04:A0C4: A3 A1     .word ofs_042_A1A3_2C
- D 1 - - - 0x0100D6 04:A0C6: A3 A1     .word ofs_042_A1A3_2D
- D 1 - - - 0x0100D8 04:A0C8: A3 A1     .word ofs_042_A1A3_2E
- - - - - - 0x0100DA 04:A0CA: A3 A1     .word ofs_042_A1A3_2F
- D 1 - - - 0x0100DC 04:A0CC: A3 A1     .word ofs_042_A1A3_30
- - - - - - 0x0100DE 04:A0CE: A3 A1     .word ofs_042_A1A3_31
- D 1 - - - 0x0100E0 04:A0D0: A3 A1     .word ofs_042_A1A3_32
- D 1 - - - 0x0100E2 04:A0D2: A3 A1     .word ofs_042_A1A3_33
- - - - - - 0x0100E4 04:A0D4: A3 A1     .word ofs_042_A1A3_34
- - - - - - 0x0100E6 04:A0D6: A3 A1     .word ofs_042_A1A3_35
- D 1 - - - 0x0100E8 04:A0D8: A3 A1     .word ofs_042_A1A3_36
- D 1 - - - 0x0100EA 04:A0DA: A3 A1     .word ofs_042_A1A3_37
- D 1 - - - 0x0100EC 04:A0DC: A3 A1     .word ofs_042_A1A3_38
- D 1 - - - 0x0100EE 04:A0DE: A3 A1     .word ofs_042_A1A3_39
- D 1 - - - 0x0100F0 04:A0E0: A3 A1     .word ofs_042_A1A3_3A
- D 1 - - - 0x0100F2 04:A0E2: A3 A1     .word ofs_042_A1A3_3B
- - - - - - 0x0100F4 04:A0E4: A3 A1     .word ofs_042_A1A3_3C
- D 1 - - - 0x0100F6 04:A0E6: CE A1     .word ofs_042_A1CE_3D
- D 1 - - - 0x0100F8 04:A0E8: CE A1     .word ofs_042_A1CE_3E
- D 1 - - - 0x0100FA 04:A0EA: CE A1     .word ofs_042_A1CE_3F
- D 1 - - - 0x0100FC 04:A0EC: CE A1     .word ofs_042_A1CE_40
- D 1 - - - 0x0100FE 04:A0EE: A3 A1     .word ofs_042_A1A3_41
- D 1 - - - 0x010100 04:A0F0: A3 A1     .word ofs_042_A1A3_42
- D 1 - - - 0x010102 04:A0F2: D2 A1     .word ofs_042_A1D2_43
- D 1 - - - 0x010104 04:A0F4: D2 A1     .word ofs_042_A1D2_44
- D 1 - - - 0x010106 04:A0F6: D2 A1     .word ofs_042_A1D2_45
- D 1 - - - 0x010108 04:A0F8: D2 A1     .word ofs_042_A1D2_46
- D 1 - - - 0x01010A 04:A0FA: D2 A1     .word ofs_042_A1D2_47
- D 1 - - - 0x01010C 04:A0FC: D2 A1     .word ofs_042_A1D2_48
- D 1 - - - 0x01010E 04:A0FE: D2 A1     .word ofs_042_A1D2_49
- - - - - - 0x010110 04:A100: D2 A1     .word ofs_042_A1D2_4A
- D 1 - - - 0x010112 04:A102: D2 A1     .word ofs_042_A1D2_4B
- D 1 - - - 0x010114 04:A104: A3 A1     .word ofs_042_A1A3_4C
- D 1 - - - 0x010116 04:A106: A3 A1     .word ofs_042_A1A3_4D
- D 1 - - - 0x010118 04:A108: A3 A1     .word ofs_042_A1A3_4E
- D 1 - - - 0x01011A 04:A10A: A3 A1     .word ofs_042_A1A3_4F



sub_A10C:
C - - - - - 0x01011C 04:A10C: A6 76     LDX ram_obj_index
C - - - - - 0x01011E 04:A10E: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010121 04:A111: C9 2A     CMP #con_enemy_id_2A
C - - - - - 0x010123 04:A113: F0 27     BEQ bra_A13C_RTS
C - - - - - 0x010125 04:A115: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x010128 04:A118: F0 22     BEQ bra_A13C_RTS
C - - - - - 0x01012A 04:A11A: A9 00     LDA #$00
C - - - - - 0x01012C 04:A11C: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01012F 04:A11F: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010132 04:A122: 29 3F     AND #$3F
C - - - - - 0x010134 04:A124: C9 03     CMP #$03
C - - - - - 0x010136 04:A126: D0 07     BNE bra_A12F
C - - - - - 0x010138 04:A128: BD 4E 05  LDA ram_054E_obj,X
C - - - - - 0x01013B 04:A12B: C9 01     CMP #$01
C - - - - - 0x01013D 04:A12D: D0 00     BNE bra_A12F
bra_A12F:
C - - - - - 0x01013F 04:A12F: DE F3 04  DEC ram_04F3_obj,X
C - - - - - 0x010142 04:A132: D0 08     BNE bra_A13C_RTS
C - - - - - 0x010144 04:A134: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x010147 04:A137: 29 FD     AND #$02 ^ $FF
C - - - - - 0x010149 04:A139: 9D 3D 04  STA ram_043A_obj_flags + $03,X
bra_A13C_RTS:
C - - - - - 0x01014C 04:A13C: 60        RTS



sub_A13D:
C - - - - - 0x01014D 04:A13D: A6 76     LDX ram_obj_index
C - - - - - 0x01014F 04:A13F: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x010152 04:A142: D0 5E     BNE bra_A1A2_RTS
C - - - - - 0x010154 04:A144: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x010156 04:A146: 48        PHA
C - - - - - 0x010157 04:A147: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x010159 04:A149: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01015B 04:A14B: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01015E 04:A14E: BD BF 04  LDA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x010161 04:A151: 85 5B     STA ram_005B_t07_data
C - - - - - 0x010163 04:A153: BD CC 04  LDA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x010166 04:A156: 85 5C     STA ram_005B_t07_data + $01
C - - - - - 0x010168 04:A158: A0 00     LDY #$00
C - - - - - 0x01016A 04:A15A: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x01016C 04:A15C: 10 09     BPL bra_A167
C - - - - - 0x01016E 04:A15E: C8        INY ; 01
C - - - - - 0x01016F 04:A15F: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x010171 04:A161: 29 7F     AND #$7F
C - - - - - 0x010173 04:A163: 85 27     STA ram_chr_bank_spr + $03
C - - - - - 0x010175 04:A165: D0 03     BNE bra_A16A    ; jmp
bra_A167:
C - - - - - 0x010177 04:A167: 85 26     STA ram_chr_bank_spr + $02
C - - - - - 0x010179 04:A169: C8        INY ; 01
bra_A16A:
C - - - - - 0x01017A 04:A16A: C8        INY ; 02
C - - - - - 0x01017B 04:A16B: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x01017D 04:A16D: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x010180 04:A170: C8        INY ; 03
C - - - - - 0x010181 04:A171: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x010183 04:A173: 9D A5 04  STA ram_spr_data_ptr_lo_obj + $03,X
C - - - - - 0x010186 04:A176: C8        INY ; 04
C - - - - - 0x010187 04:A177: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x010189 04:A179: 9D B2 04  STA ram_spr_data_ptr_hi_obj + $03,X
C - - - - - 0x01018C 04:A17C: C8        INY ; 05
C - - - - - 0x01018D 04:A17D: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x01018F 04:A17F: 9D BF 04  STA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x010192 04:A182: C8        INY ; 06
C - - - - - 0x010193 04:A183: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x010195 04:A185: 9D CC 04  STA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x010198 04:A188: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01019B 04:A18B: 29 02     AND #$02
C - - - - - 0x01019D 04:A18D: F0 07     BEQ bra_A196
C - - - - - 0x01019F 04:A18F: A9 00     LDA #$00
C - - - - - 0x0101A1 04:A191: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x0101A4 04:A194: F0 06     BEQ bra_A19C    ; jmp
bra_A196:
C - - - - - 0x0101A6 04:A196: C8        INY ; 07
C - - - - - 0x0101A7 04:A197: B1 5B     LDA (ram_005B_t07_data),Y
C - - - - - 0x0101A9 04:A199: 9D 6C 05  STA ram_056C_obj,X
bra_A19C:
C - - - - - 0x0101AC 04:A19C: 68        PLA
C - - - - - 0x0101AD 04:A19D: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0101AF 04:A19F: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
bra_A1A2_RTS:
C - - - - - 0x0101B2 04:A1A2: 60        RTS



ofs_042_A1A3_00:
; con_enemy_id_00
ofs_042_A1A3_01:
; con_enemy_id_01
ofs_042_A1A3_02:
; con_enemy_id_02
ofs_042_A1A3_05:
; con_enemy_id_05
ofs_042_A1A3_06:
; con_enemy_id_06
ofs_042_A1A3_09:
; con_enemy_id_09
ofs_042_A1A3_0A:
; con_enemy_id_0A
ofs_042_A1A3_0B:
; con_enemy_id_0B
ofs_042_A1A3_0C:
; con_enemy_id_0C
ofs_042_A1A3_18:
; con_enemy_id_18
ofs_042_A1A3_19:
; con_enemy_id_19
ofs_042_A1A3_1A:
; con_enemy_id_1A
ofs_042_A1A3_2A:
; con_enemy_id_2A
ofs_042_A1A3_2B:
; con_enemy_id_2B
ofs_042_A1A3_2C:
; con_enemy_id_2C
ofs_042_A1A3_2D:
; con_enemy_id_2D
ofs_042_A1A3_2E:
; con_enemy_id_2E
ofs_042_A1A3_2F:
; con_enemy_id_2F
ofs_042_A1A3_30:
; con_enemy_id_30
ofs_042_A1A3_31:
; con_enemy_id_31
ofs_042_A1A3_32:
; con_enemy_id_32
ofs_042_A1A3_33:
; con_enemy_id_33
ofs_042_A1A3_34:
; con_enemy_id_34
ofs_042_A1A3_35:
; con_enemy_id_35
ofs_042_A1A3_36:
; con_enemy_id_36
ofs_042_A1A3_37:
; con_enemy_id_37
ofs_042_A1A3_38:
; con_enemy_id_38
ofs_042_A1A3_39:
; con_enemy_id_39
ofs_042_A1A3_3A:
; con_enemy_id_3A
ofs_042_A1A3_3B:
; con_enemy_id_3B
ofs_042_A1A3_3C:
; con_enemy_id_3C
ofs_042_A1A3_41:
; con_enemy_id_41
ofs_042_A1A3_42:
; con_enemy_id_42
ofs_042_A1A3_4C:
; con_enemy_id_4C
ofs_042_A1A3_4D:
; con_enemy_id_4D
ofs_042_A1A3_4E:
; con_enemy_id_4E
ofs_042_A1A3_4F:
; con_enemy_id_4F
; bzk optimize, JMP
C - - J - - 0x0101B3 04:A1A3: 20 3D A3  JSR sub_A33D
ofs_042_A1A6_17_RTS:
; con_enemy_id_17
C - - - - - 0x0101B6 04:A1A6: 60        RTS



ofs_042_A1A7_03:
; con_enemy_id_03
ofs_042_A1A7_04:
; con_enemy_id_04
- - - - - - 0x0101B7 04:A1A7: 20 27 B0  JSR sub_B027
; bzk optimize, JMP
- - - - - - 0x0101BA 04:A1AA: 20 3D A3  JSR sub_A33D
- - - - - - 0x0101BD 04:A1AD: 60        RTS



ofs_042_A1AE_07:
; con_enemy_id_07
ofs_042_A1AE_08:
; con_enemy_id_08
C - - J - - 0x0101BE 04:A1AE: A9 09     LDA #$09
C - - - - - 0x0101C0 04:A1B0: 85 6C     STA ram_006C_t01
C - - - - - 0x0101C2 04:A1B2: 20 B3 B0  JSR sub_B0B3
C - - - - - 0x0101C5 04:A1B5: 20 DF B0  JSR sub_B0DF
; bzk optimize, JMP
C - - - - - 0x0101C8 04:A1B8: 20 3D A3  JSR sub_A33D
C - - - - - 0x0101CB 04:A1BB: 60        RTS



ofs_042_A1BC_0D:
; con_enemy_id_0D
ofs_042_A1BC_0E:
; con_enemy_id_0E
C - - J - - 0x0101CC 04:A1BC: 20 9F B0  JSR sub_B09F
ofs_042_A1BF_0F:
; con_enemy_id_0F
ofs_042_A1BF_10:
; con_enemy_id_10
C - - - - - 0x0101CF 04:A1BF: A9 0B     LDA #$0B
C - - - - - 0x0101D1 04:A1C1: 85 6C     STA ram_006C_t01
C - - - - - 0x0101D3 04:A1C3: 20 B3 B0  JSR sub_B0B3
ofs_042_A1C6_11:
; con_enemy_id_11
ofs_042_A1C6_12:
; con_enemy_id_12
ofs_042_A1C6_13:
; con_enemy_id_13
ofs_042_A1C6_14:
; con_enemy_id_14
; bzk optimize, JMP
C - - - - - 0x0101D6 04:A1C6: 20 3D A3  JSR sub_A33D
C - - - - - 0x0101D9 04:A1C9: 60        RTS



ofs_042_A1CA_15:
; con_enemy_id_15
ofs_042_A1CA_16:
; con_enemy_id_16
ofs_042_A1CA_1B:
; con_enemy_id_1B
ofs_042_A1CA_1C:
; con_enemy_id_1C
ofs_042_A1CA_1D:
; con_enemy_id_1D
ofs_042_A1CA_1E:
; con_enemy_id_1E
ofs_042_A1CA_1F:
; con_enemy_id_1F
ofs_042_A1CA_20:
; con_enemy_id_20
ofs_042_A1CA_21:
; con_enemy_id_21
ofs_042_A1CA_22:
; con_enemy_id_22
ofs_042_A1CA_23:
; con_enemy_id_23
ofs_042_A1CA_24:
; con_enemy_id_24
ofs_042_A1CA_25:
; con_enemy_id_25
ofs_042_A1CA_26:
; con_enemy_id_26
ofs_042_A1CA_27:
; con_enemy_id_27
ofs_042_A1CA_28:
; con_enemy_id_28
ofs_042_A1CA_29:
; con_enemy_id_29
; bzk optimize, JMP
C - - J - - 0x0101DA 04:A1CA: 20 71 A3  JSR sub_A371
C - - - - - 0x0101DD 04:A1CD: 60        RTS



ofs_042_A1CE_3D:
; con_enemy_id_3D
ofs_042_A1CE_3E:
; con_enemy_id_3E
ofs_042_A1CE_3F:
; con_enemy_id_3F
ofs_042_A1CE_40:
; con_enemy_id_40
; bzk optimize, JMP
C - - J - - 0x0101DE 04:A1CE: 20 C7 A3  JSR sub_A3C7
C - - - - - 0x0101E1 04:A1D1: 60        RTS



ofs_042_A1D2_43:
; con_enemy_id_43
ofs_042_A1D2_44:
; con_enemy_id_44
ofs_042_A1D2_45:
; con_enemy_id_45
ofs_042_A1D2_46:
; con_enemy_id_46
ofs_042_A1D2_47:
; con_enemy_id_47
ofs_042_A1D2_48:
; con_enemy_id_48
ofs_042_A1D2_49:
; con_enemy_id_49
ofs_042_A1D2_4A:
; con_enemy_id_4A
ofs_042_A1D2_4B:
; con_enemy_id_4B
C - - J - - 0x0101E2 04:A1D2: 20 A5 A3  JSR sub_A3A5
; bzk optimize, JMP
C - - - - - 0x0101E5 04:A1D5: 20 08 B3  JSR sub_B308
C - - - - - 0x0101E8 04:A1D8: 60        RTS



sub_A1D9:
C - - - - - 0x0101E9 04:A1D9: A6 76     LDX ram_obj_index
C - - - - - 0x0101EB 04:A1DB: A9 01     LDA #$01
C - - - - - 0x0101ED 04:A1DD: 85 70     STA ram_0070_t05_loop_counter
bra_A1DF_loop:
C - - - - - 0x0101EF 04:A1DF: A4 70     LDY ram_0070_t05_loop_counter
C - - - - - 0x0101F1 04:A1E1: B9 F6 A1  LDA tbl_A1F6,Y
C - - - - - 0x0101F4 04:A1E4: 85 6E     STA ram_006E_t08_pos_X_lo
C - - - - - 0x0101F6 04:A1E6: 20 2A AD  JSR sub_AD2A
C - - - - - 0x0101F9 04:A1E9: A6 76     LDX ram_obj_index
C - - - - - 0x0101FB 04:A1EB: A5 BC     LDA ram_00BC
C - - - - - 0x0101FD 04:A1ED: 29 03     AND #$03
C - - - - - 0x0101FF 04:A1EF: D0 04     BNE bra_A1F5_RTS
C - - - - - 0x010201 04:A1F1: C6 70     DEC ram_0070_t05_loop_counter
C - - - - - 0x010203 04:A1F3: 10 EA     BPL bra_A1DF_loop
bra_A1F5_RTS:
C - - - - - 0x010205 04:A1F5: 60        RTS



tbl_A1F6:
- D 1 - - - 0x010206 04:A1F6: FD        .byte $FD   ; 00 
- D 1 - - - 0x010207 04:A1F7: 02        .byte $02   ; 01 



sub_A1F8:
C - - - - - 0x010208 04:A1F8: A6 76     LDX ram_obj_index
C - - - - - 0x01020A 04:A1FA: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01020D 04:A1FD: 29 01     AND #$01
C - - - - - 0x01020F 04:A1FF: A8        TAY
C - - - - - 0x010210 04:A200: A9 FC     LDA #$FC
C - - - - - 0x010212 04:A202: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010214 04:A204: B9 64 A2  LDA tbl_A264,Y
C - - - - - 0x010217 04:A207: 85 6E     STA ram_006E_t08_pos_X_lo
C - - - - - 0x010219 04:A209: 20 2A AD  JSR sub_AD2A
C - - - - - 0x01021C 04:A20C: A6 76     LDX ram_obj_index
C - - - - - 0x01021E 04:A20E: A5 BC     LDA ram_00BC
C - - - - - 0x010220 04:A210: 29 03     AND #$03
C - - - - - 0x010222 04:A212: F0 4F     BEQ bra_A263_RTS
C - - - - - 0x010224 04:A214: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010227 04:A217: C9 09     CMP #con_enemy_id_09
C - - - - - 0x010229 04:A219: F0 04     BEQ bra_A21F
C - - - - - 0x01022B 04:A21B: C9 0A     CMP #con_enemy_id_0A
C - - - - - 0x01022D 04:A21D: D0 12     BNE bra_A231
bra_A21F:
C - - - - - 0x01022F 04:A21F: A9 10     LDA #$10
C - - - - - 0x010231 04:A221: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x010234 04:A224: A9 00     LDA #$00
C - - - - - 0x010236 04:A226: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x010239 04:A229: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01023C 04:A22C: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01023F 04:A22F: F0 32     BEQ bra_A263_RTS    ; jmp
bra_A231:
C - - - - - 0x010241 04:A231: 18        CLC
C - - - - - 0x010242 04:A232: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010245 04:A235: 29 C0     AND #$C0
C - - - - - 0x010247 04:A237: 2A        ROL
C - - - - - 0x010248 04:A238: 2A        ROL
C - - - - - 0x010249 04:A239: 2A        ROL
C - - - - - 0x01024A 04:A23A: A8        TAY
C - - - - - 0x01024B 04:A23B: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x01024E 04:A23E: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010251 04:A241: A9 04     LDA #$04
C - - - - - 0x010253 04:A243: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x010256 04:A246: A9 00     LDA #$00
C - - - - - 0x010258 04:A248: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01025B 04:A24B: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01025E 04:A24E: F0 13     BEQ bra_A263_RTS    ; jmp


; bzk garbage
- - - - - - 0x010260 04:A250: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x010263 04:A253: 29 FE     AND #$FE
- - - - - - 0x010265 04:A255: 85 67     STA ram_0067_temp
- - - - - - 0x010267 04:A257: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x01026A 04:A25A: 49 01     EOR #$01
- - - - - - 0x01026C 04:A25C: 29 01     AND #$01
- - - - - - 0x01026E 04:A25E: 05 67     ORA ram_0067_temp
- - - - - - 0x010270 04:A260: 9D 41 05  STA ram_0541_obj_flags,X



bra_A263_RTS:
C - - - - - 0x010273 04:A263: 60        RTS



tbl_A264:
- D 1 - - - 0x010274 04:A264: F4        .byte $F4   ; 00 
- D 1 - - - 0x010275 04:A265: 0D        .byte $0D   ; 01 



sub_A266:
C - - - - - 0x010276 04:A266: A6 76     LDX ram_obj_index
C - - - - - 0x010278 04:A268: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x01027A 04:A26A: 29 0F     AND #$0F
C - - - - - 0x01027C 04:A26C: 49 FF     EOR #$FF
C - - - - - 0x01027E 04:A26E: 85 67     STA ram_0067_t03
C - - - - - 0x010280 04:A270: E6 67     INC ram_0067_t03
C - - - - - 0x010282 04:A272: A5 67     LDA ram_0067_t03
C - - - - - 0x010284 04:A274: 29 0F     AND #$0F
C - - - - - 0x010286 04:A276: 85 67     STA ram_0067_t04
C - - - - - 0x010288 04:A278: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01028B 04:A27B: 38        SEC
C - - - - - 0x01028C 04:A27C: E5 67     SBC ram_0067_t04
C - - - - - 0x01028E 04:A27E: 85 68     STA ram_0068_t07
C - - - - - 0x010290 04:A280: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010293 04:A283: E9 00     SBC #$00
C - - - - - 0x010295 04:A285: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010298 04:A288: A5 68     LDA ram_0068_t07
C - - - - - 0x01029A 04:A28A: 29 0F     AND #$0F
C - - - - - 0x01029C 04:A28C: F0 09     BEQ bra_A297_RTS
C - - - - - 0x01029E 04:A28E: A5 68     LDA ram_0068_t07
C - - - - - 0x0102A0 04:A290: 29 F0     AND #$F0
C - - - - - 0x0102A2 04:A292: 05 67     ORA ram_0067_t04
C - - - - - 0x0102A4 04:A294: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
bra_A297_RTS:
C - - - - - 0x0102A7 04:A297: 60        RTS



sub_A298:
C - - - - - 0x0102A8 04:A298: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0102AA 04:A29A: 48        PHA
C - - - - - 0x0102AB 04:A29B: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x0102AD 04:A29D: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0102AF 04:A29F: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0102B2 04:A2A2: A6 76     LDX ram_obj_index
C - - - - - 0x0102B4 04:A2A4: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0102B7 04:A2A7: 10 03     BPL bra_A2AC
C - - - - - 0x0102B9 04:A2A9: 4C 36 A3  JMP loc_A336
bra_A2AC:
C - - - - - 0x0102BC 04:A2AC: C9 04     CMP #$04
C - - - - - 0x0102BE 04:A2AE: D0 03     BNE bra_A2B3
C - - - - - 0x0102C0 04:A2B0: 4C 36 A3  JMP loc_A336
bra_A2B3:
C - - - - - 0x0102C3 04:A2B3: C9 02     CMP #$02
C - - - - - 0x0102C5 04:A2B5: D0 03     BNE bra_A2BA
C - - - - - 0x0102C7 04:A2B7: 4C 36 A3  JMP loc_A336
bra_A2BA:
C - - - - - 0x0102CA 04:A2BA: DE 4E 05  DEC ram_054E_obj,X
C - - - - - 0x0102CD 04:A2BD: D0 77     BNE bra_A336_skip
C - - - - - 0x0102CF 04:A2BF: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0102D2 04:A2C2: 0A        ASL
C - - - - - 0x0102D3 04:A2C3: AA        TAX
C - - - - - 0x0102D4 04:A2C4: BD 73 8F  LDA tbl_0x012F83,X
C - - - - - 0x0102D7 04:A2C7: 85 5B     STA ram_005B_t08_data
C - - - - - 0x0102D9 04:A2C9: BD 74 8F  LDA tbl_0x012F83 + $01,X
C - - - - - 0x0102DC 04:A2CC: 85 5C     STA ram_005B_t08_data + $01
C - - - - - 0x0102DE 04:A2CE: A6 76     LDX ram_obj_index
loc_A2D0_loop:
C D 1 - - - 0x0102E0 04:A2D0: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x0102E3 04:A2D3: 29 F0     AND #$F0
; A = 00/10
; / 08
C - - - - - 0x0102E5 04:A2D5: 4A        LSR
C - - - - - 0x0102E6 04:A2D6: 4A        LSR
C - - - - - 0x0102E7 04:A2D7: 4A        LSR
; 
C - - - - - 0x0102E8 04:A2D8: A8        TAY
; Y = 00/02
C - - - - - 0x0102E9 04:A2D9: B1 5B     LDA (ram_005B_t08_data),Y
C - - - - - 0x0102EB 04:A2DB: 85 5D     STA ram_005D_t02_data
C - - - - - 0x0102ED 04:A2DD: C8        INY
C - - - - - 0x0102EE 04:A2DE: B1 5B     LDA (ram_005B_t08_data),Y
C - - - - - 0x0102F0 04:A2E0: 85 5E     STA ram_005D_t02_data + $01
C - - - - - 0x0102F2 04:A2E2: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x0102F5 04:A2E5: 29 0F     AND #$0F
C - - - - - 0x0102F7 04:A2E7: 0A        ASL
C - - - - - 0x0102F8 04:A2E8: A8        TAY
C - - - - - 0x0102F9 04:A2E9: B1 5D     LDA (ram_005D_t02_data),Y
C - - - - - 0x0102FB 04:A2EB: C9 80     CMP #$80
C - - - - - 0x0102FD 04:A2ED: F0 1D     BEQ bra_A30C_80
C - - - - - 0x0102FF 04:A2EF: C9 FF     CMP #$FF
C - - - - - 0x010301 04:A2F1: F0 21     BEQ bra_A314_FF
C - - - - - 0x010303 04:A2F3: C9 FE     CMP #$FE
C - - - - - 0x010305 04:A2F5: F0 28     BEQ bra_A31F_FE
C - - - - - 0x010307 04:A2F7: 29 40     AND #$40
C - - - - - 0x010309 04:A2F9: F0 2D     BEQ bra_A328_40
; bzk garbage? up to 0x010319
; there is only a single byte at 0x0131F5 (con_enemy_id_34), which
; meets this AND 40 condition, but this object most likely doens't exist
- - - - - - 0x01030B 04:A2FB: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x01030E 04:A2FE: 49 21     EOR #$21
- - - - - - 0x010310 04:A300: 9D 41 05  STA ram_0541_obj_flags,X
- - - - - - 0x010313 04:A303: C8        INY
- - - - - - 0x010314 04:A304: B1 5D     LDA (ram_005D_t02_data),Y
- - - - - - 0x010316 04:A306: 9D 5B 05  STA ram_055B_obj_anim_counter,X
- - - - - - 0x010319 04:A309: 4C D0 A2  JMP loc_A2D0_loop
bra_A30C_80:
- - - - - - 0x01031C 04:A30C: A9 00     LDA #$00
- - - - - - 0x01031E 04:A30E: 9D 5B 05  STA ram_055B_obj_anim_counter,X
- - - - - - 0x010321 04:A311: 4C D0 A2  JMP loc_A2D0_loop
bra_A314_FF:
C - - - - - 0x010324 04:A314: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x010327 04:A317: 29 F0     AND #$F0
C - - - - - 0x010329 04:A319: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x01032C 04:A31C: 4C D0 A2  JMP loc_A2D0_loop
bra_A31F_FE:
C - - - - - 0x01032F 04:A31F: C8        INY
C - - - - - 0x010330 04:A320: B1 5D     LDA (ram_005D_t02_data),Y
C - - - - - 0x010332 04:A322: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x010335 04:A325: 4C D0 A2  JMP loc_A2D0_loop
bra_A328_40:
; bzk optimize, useless LDA
C - - - - - 0x010338 04:A328: B1 5D     LDA (ram_005D_t02_data),Y
; 
C - - - - - 0x01033A 04:A32A: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01033D 04:A32D: C8        INY
C - - - - - 0x01033E 04:A32E: B1 5D     LDA (ram_005D_t02_data),Y
C - - - - - 0x010340 04:A330: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x010343 04:A333: FE 5B 05  INC ram_055B_obj_anim_counter,X
bra_A336_skip:
loc_A336:
C D 1 - - - 0x010346 04:A336: 68        PLA
C - - - - - 0x010347 04:A337: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x010349 04:A339: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01034C 04:A33C: 60        RTS



sub_A33D:
C - - - - - 0x01034D 04:A33D: A6 76     LDX ram_obj_index
C - - - - - 0x01034F 04:A33F: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010352 04:A342: 29 7F     AND #$7F
C - - - - - 0x010354 04:A344: 0A        ASL
C - - - - - 0x010355 04:A345: AA        TAX
C - - - - - 0x010356 04:A346: BD 53 A3  LDA tbl_A353,X
C - - - - - 0x010359 04:A349: 85 5B     STA ram_005B_t66_jmp
C - - - - - 0x01035B 04:A34B: BD 54 A3  LDA tbl_A353 + $01,X
C - - - - - 0x01035E 04:A34E: 85 5C     STA ram_005B_t66_jmp + $01
C - - - - - 0x010360 04:A350: 6C 5B 00  JMP (ram_005B_t66_jmp)



tbl_A353:
- D 1 - - - 0x010363 04:A353: EB A3     .word ofs_041_A3EB_00
- D 1 - - - 0x010365 04:A355: 69 A4     .word ofs_041_A469_01
- D 1 - - - 0x010367 04:A357: 46 A5     .word ofs_041_A546_02
- D 1 - - - 0x010369 04:A359: 79 A6     .word ofs_041_A679_03
- D 1 - - - 0x01036B 04:A35B: A6 A6     .word ofs_041_A6A6_04
- D 1 - - - 0x01036D 04:A35D: 89 A7     .word ofs_041_A789_05
- D 1 - - - 0x01036F 04:A35F: C3 A7     .word ofs_041_A7C3_06
- D 1 - - - 0x010371 04:A361: 8C A8     .word ofs_041_A88C_07
- D 1 - - - 0x010373 04:A363: AC A8     .word ofs_041_A8AC_08
- D 1 - - - 0x010375 04:A365: C0 A7     .word ofs_041_A7C0_09
- - - - - - 0x010377 04:A367: 05 A9     .word ofs_041_A905_0A
- D 1 - - - 0x010379 04:A369: 46 AB     .word ofs_041_AB46_0B
- D 1 - - - 0x01037B 04:A36B: 64 AB     .word ofs_041_AB64_0C
- D 1 - - - 0x01037D 04:A36D: 16 A5     .word ofs_041_A516_0D
- D 1 - - - 0x01037F 04:A36F: 38 A5     .word ofs_041_A538_0E



sub_A371:
C - - - - - 0x010381 04:A371: A6 76     LDX ram_obj_index
C - - - - - 0x010383 04:A373: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010386 04:A376: 0A        ASL
C - - - - - 0x010387 04:A377: AA        TAX
C - - - - - 0x010388 04:A378: BD 85 A3  LDA tbl_A385,X
C - - - - - 0x01038B 04:A37B: 85 5B     STA ram_005B_t65_jmp
C - - - - - 0x01038D 04:A37D: BD 86 A3  LDA tbl_A385 + $01,X
C - - - - - 0x010390 04:A380: 85 5C     STA ram_005B_t65_jmp + $01
C - - - - - 0x010392 04:A382: 6C 5B 00  JMP (ram_005B_t65_jmp)



tbl_A385:
- D 1 - - - 0x010395 04:A385: 1B A9     .word ofs_040_A91B_00
- D 1 - - - 0x010397 04:A387: 57 A9     .word ofs_040_A957_01
- D 1 - - - 0x010399 04:A389: 76 A9     .word ofs_040_A976_02
- D 1 - - - 0x01039B 04:A38B: 32 AA     .word ofs_040_AA32_03
- D 1 - - - 0x01039D 04:A38D: CB A9     .word ofs_040_A9CB_04
- D 1 - - - 0x01039F 04:A38F: 4A AA     .word ofs_040_AA4A_05
- - - - - - 0x0103A1 04:A391: C3 A7     .word ofs_040_A7C3_06
- - - - - - 0x0103A3 04:A393: 07 AA     .word ofs_040_AA07_07
- D 1 - - - 0x0103A5 04:A395: D5 AA     .word ofs_040_AAD5_08
- D 1 - - - 0x0103A7 04:A397: E3 AA     .word ofs_040_AAE3_09
- D 1 - - - 0x0103A9 04:A399: 01 AB     .word ofs_040_AB01_0A
- D 1 - - - 0x0103AB 04:A39B: 43 AB     .word ofs_040_AB43_0B
- D 1 - - - 0x0103AD 04:A39D: 6E AB     .word ofs_040_AB6E_0C
- D 1 - - - 0x0103AF 04:A39F: 99 AB     .word ofs_040_AB99_0D
- D 1 - - - 0x0103B1 04:A3A1: 4A AA     .word ofs_040_AA4A_0E
- - - - - - 0x0103B3 04:A3A3: AB AB     .word ofs_040_ABAB_0F



sub_A3A5:
C - - - - - 0x0103B5 04:A3A5: A6 76     LDX ram_obj_index
C - - - - - 0x0103B7 04:A3A7: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0103BA 04:A3AA: 29 7F     AND #$7F
C - - - - - 0x0103BC 04:A3AC: 0A        ASL
C - - - - - 0x0103BD 04:A3AD: AA        TAX
C - - - - - 0x0103BE 04:A3AE: BD BB A3  LDA tbl_A3BB,X
C - - - - - 0x0103C1 04:A3B1: 85 5B     STA ram_005B_t64_jmp
C - - - - - 0x0103C3 04:A3B3: BD BC A3  LDA tbl_A3BB + $01,X
C - - - - - 0x0103C6 04:A3B6: 85 5C     STA ram_005B_t64_jmp + $01
C - - - - - 0x0103C8 04:A3B8: 6C 5B 00  JMP (ram_005B_t64_jmp)



tbl_A3BB:
- - - - - - 0x0103CB 04:A3BB: CB B3     .word ofs_039_B3CB_00
- - - - - - 0x0103CD 04:A3BD: E0 B3     .word ofs_039_B3E0_01
- D 1 - - - 0x0103CF 04:A3BF: 06 B4     .word ofs_039_B406_02
- - - - - - 0x0103D1 04:A3C1: 43 B4     .word ofs_039_B443_03
- D 1 - - - 0x0103D3 04:A3C3: 5C B4     .word ofs_039_B45C_04
- D 1 - - - 0x0103D5 04:A3C5: 87 B4     .word ofs_039_B487_05



sub_A3C7:
C - - - - - 0x0103D7 04:A3C7: A6 76     LDX ram_obj_index
C - - - - - 0x0103D9 04:A3C9: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0103DC 04:A3CC: 29 7F     AND #$7F
C - - - - - 0x0103DE 04:A3CE: 0A        ASL
C - - - - - 0x0103DF 04:A3CF: AA        TAX
C - - - - - 0x0103E0 04:A3D0: BD DD A3  LDA tbl_A3DD,X
C - - - - - 0x0103E3 04:A3D3: 85 5B     STA ram_005B_t63_jmp
C - - - - - 0x0103E5 04:A3D5: BD DE A3  LDA tbl_A3DD + $01,X
C - - - - - 0x0103E8 04:A3D8: 85 5C     STA ram_005B_t63_jmp + $01
C - - - - - 0x0103EA 04:A3DA: 6C 5B 00  JMP (ram_005B_t63_jmp)



tbl_A3DD:
- D 1 - - - 0x0103ED 04:A3DD: 4A B5     .word ofs_038_B54A_00
- D 1 - - - 0x0103EF 04:A3DF: 5B B5     .word ofs_038_B55B_01
- D 1 - - - 0x0103F1 04:A3E1: 73 B5     .word ofs_038_B573_02
- D 1 - - - 0x0103F3 04:A3E3: 78 B5     .word ofs_038_B578_03
- - - - - - 0x0103F5 04:A3E5: 65 B5     .word ofs_038_B565_04_RTS
- - - - - - 0x0103F7 04:A3E7: 65 B5     .word ofs_038_B565_05_RTS
- D 1 - - - 0x0103F9 04:A3E9: 66 B5     .word ofs_038_B566_06



loc_A3EB:
ofs_041_A3EB_00:
C D 1 J - - 0x0103FB 04:A3EB: A6 76     LDX ram_obj_index
C - - - - - 0x0103FD 04:A3ED: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010400 04:A3F0: C9 2D     CMP #con_enemy_id_2D
C - - - - - 0x010402 04:A3F2: D0 03     BNE bra_A3F7
C - - - - - 0x010404 04:A3F4: 20 C0 AF  JSR sub_AFC0
bra_A3F7:
C - - - - - 0x010407 04:A3F7: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01040A 04:A3FA: 29 3F     AND #$3F
C - - - - - 0x01040C 04:A3FC: C9 2D     CMP #con_enemy_id_2D
C - - - - - 0x01040E 04:A3FE: D0 0A     BNE bra_A40A
C - - - - - 0x010410 04:A400: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x010413 04:A403: 29 10     AND #$10
C - - - - - 0x010415 04:A405: D0 03     BNE bra_A40A
C - - - - - 0x010417 04:A407: 20 C7 AB  JSR sub_ABC7
bra_A40A:
C - - - - - 0x01041A 04:A40A: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01041D 04:A40D: C9 0D     CMP #con_enemy_id_0D
C - - - - - 0x01041F 04:A40F: F0 04     BEQ bra_A415
C - - - - - 0x010421 04:A411: C9 0E     CMP #con_enemy_id_0E
C - - - - - 0x010423 04:A413: D0 03     BNE bra_A418
bra_A415:
C - - - - - 0x010425 04:A415: 20 04 AD  JSR sub_AD04
bra_A418:
C - - - - - 0x010428 04:A418: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01042B 04:A41B: F0 18     BEQ bra_A435
; bzk optimize, useless AND + STA
C - - - - - 0x01042D 04:A41D: 29 C0     AND #$C0
C - - - - - 0x01042F 04:A41F: 9D 34 05  STA ram_0534_obj,X
; 
C - - - - - 0x010432 04:A422: A9 00     LDA #$00
C - - - - - 0x010434 04:A424: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x010437 04:A427: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x01043A 04:A42A: 20 3B B5  JSR sub_B53B_clear_object_data
C - - - - - 0x01043D 04:A42D: A9 01     LDA #$01
C - - - - - 0x01043F 04:A42F: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x010442 04:A432: 20 45 B2  JSR sub_B245
bra_A435:
C - - - - - 0x010445 04:A435: A9 04     LDA #$04
C - - - - - 0x010447 04:A437: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010449 04:A439: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x01044C 04:A43C: A6 76     LDX ram_obj_index
C - - - - - 0x01044E 04:A43E: 20 5F A7  JSR sub_A75F
C - - - - - 0x010451 04:A441: A5 BC     LDA ram_00BC
C - - - - - 0x010453 04:A443: D0 1B     BNE bra_A460_RTS
C - - - - - 0x010455 04:A445: 29 03     AND #$03
C - - - - - 0x010457 04:A447: D0 17     BNE bra_A460_RTS
C - - - - - 0x010459 04:A449: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01045C 04:A44C: C9 30     CMP #$30    ; con_enemy_id_30
C - - - - - 0x01045E 04:A44E: B0 10     BCS bra_A460_RTS
C - - - - - 0x010460 04:A450: C9 2C     CMP #con_enemy_id_2C
C - - - - - 0x010462 04:A452: F0 0C     BEQ bra_A460_RTS
C - - - - - 0x010464 04:A454: A9 20     LDA #$20
C - - - - - 0x010466 04:A456: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x010469 04:A459: A9 04     LDA #$04
C - - - - - 0x01046B 04:A45B: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01046E 04:A45E: D0 00     BNE bra_A460_RTS    ; jmp
bra_A460_RTS:
C - - - - - 0x010470 04:A460: 60        RTS



sub_A461:
; bzk optimize useless code
C - - - - - 0x010471 04:A461: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x010474 04:A464: 29 10     AND #$10
C - - - - - 0x010476 04:A466: D0 00     BNE bra_A468_RTS
bra_A468_RTS:
C - - - - - 0x010478 04:A468: 60        RTS



ofs_041_A469_01:
C - - J - - 0x010479 04:A469: A9 04     LDA #$04
C - - - - - 0x01047B 04:A46B: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x01047D 04:A46D: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x010480 04:A470: A6 76     LDX ram_obj_index
C - - - - - 0x010482 04:A472: 20 5F A7  JSR sub_A75F
C - - - - - 0x010485 04:A475: D0 58     BNE bra_A4CF_RTS
C - - - - - 0x010487 04:A477: A5 BC     LDA ram_00BC
C - - - - - 0x010489 04:A479: 29 03     AND #$03
C - - - - - 0x01048B 04:A47B: D0 03     BNE bra_A480
C - - - - - 0x01048D 04:A47D: 20 6F B1  JSR sub_B16F
bra_A480:
C - - - - - 0x010490 04:A480: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010493 04:A483: C9 2A     CMP #$2A    ; con_enemy_id_2A
C - - - - - 0x010495 04:A485: B0 06     BCS bra_A48D
C - - - - - 0x010497 04:A487: 20 F8 A1  JSR sub_A1F8
C - - - - - 0x01049A 04:A48A: 4C 93 A4  JMP loc_A493
bra_A48D:
C - - - - - 0x01049D 04:A48D: 20 C3 B1  JSR sub_B1C3
C - - - - - 0x0104A0 04:A490: 20 FB B1  JSR sub_B1FB
loc_A493:
C D 1 - - - 0x0104A3 04:A493: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0104A6 04:A496: 29 3F     AND #$3F
C - - - - - 0x0104A8 04:A498: C9 2A     CMP #$2A    ; con_enemy_id_2A
C - - - - - 0x0104AA 04:A49A: B0 03     BCS bra_A49F
C - - - - - 0x0104AC 04:A49C: 20 C0 AF  JSR sub_AFC0
bra_A49F:
C - - - - - 0x0104AF 04:A49F: 20 06 B1  JSR sub_B106
C - - - - - 0x0104B2 04:A4A2: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x0104B5 04:A4A5: 90 28     BCC bra_A4CF_RTS
C - - - - - 0x0104B7 04:A4A7: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0104BA 04:A4AA: 29 3F     AND #$3F
C - - - - - 0x0104BC 04:A4AC: C9 2A     CMP #$2A    ; con_enemy_id_2A
C - - - - - 0x0104BE 04:A4AE: B0 16     BCS bra_A4C6
C - - - - - 0x0104C0 04:A4B0: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x0104C3 04:A4B3: 29 20     AND #$20
; / 20
C - - - - - 0x0104C5 04:A4B5: 4A        LSR
C - - - - - 0x0104C6 04:A4B6: 4A        LSR
C - - - - - 0x0104C7 04:A4B7: 4A        LSR
C - - - - - 0x0104C8 04:A4B8: 4A        LSR
C - - - - - 0x0104C9 04:A4B9: 4A        LSR
; 
C - - - - - 0x0104CA 04:A4BA: 85 67     STA ram_0067_t0A
C - - - - - 0x0104CC 04:A4BC: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x0104CF 04:A4BF: 29 FE     AND #$FE
C - - - - - 0x0104D1 04:A4C1: 05 67     ORA ram_0067_t0A
C - - - - - 0x0104D3 04:A4C3: 9D 41 05  STA ram_0541_obj_flags,X
bra_A4C6:
C - - - - - 0x0104D6 04:A4C6: 20 1D A5  JSR sub_A51D
C - - - - - 0x0104D9 04:A4C9: 20 D0 A4  JSR sub_A4D0
loc_A4CC:
; bzk optimize, JMP
C D 1 - - - 0x0104DC 04:A4CC: 20 45 B2  JSR sub_B245
bra_A4CF_RTS:
C - - - - - 0x0104DF 04:A4CF: 60        RTS



sub_A4D0:
C - - - - - 0x0104E0 04:A4D0: 18        CLC
C - - - - - 0x0104E1 04:A4D1: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0104E4 04:A4D4: 29 C0     AND #$C0
C - - - - - 0x0104E6 04:A4D6: 2A        ROL
C - - - - - 0x0104E7 04:A4D7: 2A        ROL
C - - - - - 0x0104E8 04:A4D8: 2A        ROL
C - - - - - 0x0104E9 04:A4D9: A8        TAY
C - - - - - 0x0104EA 04:A4DA: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0104ED 04:A4DD: 29 3F     AND #$3F
C - - - - - 0x0104EF 04:A4DF: C9 09     CMP #con_enemy_id_09
C - - - - - 0x0104F1 04:A4E1: F0 11     BEQ bra_A4F4
C - - - - - 0x0104F3 04:A4E3: C9 0A     CMP #con_enemy_id_0A
C - - - - - 0x0104F5 04:A4E5: F0 0D     BEQ bra_A4F4
C - - - - - 0x0104F7 04:A4E7: C9 2D     CMP #con_enemy_id_2D
C - - - - - 0x0104F9 04:A4E9: F0 12     BEQ bra_A4FD
C - - - - - 0x0104FB 04:A4EB: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x0104FE 04:A4EE: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010501 04:A4F1: 4C 0A A5  JMP loc_A50A
bra_A4F4:
C - - - - - 0x010504 04:A4F4: B9 B4 AF  LDA tbl_AFB4,Y
C - - - - - 0x010507 04:A4F7: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01050A 04:A4FA: 4C 0A A5  JMP loc_A50A
bra_A4FD:
C - - - - - 0x01050D 04:A4FD: B9 BD AF  LDA tbl_AFBD,Y
C - - - - - 0x010510 04:A500: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010513 04:A503: A9 14     LDA #con_sfx_dash
C - - - - - 0x010515 04:A505: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x010517 04:A507: 20 AD FF  JSR sub_0x01FFBD_play_sound
loc_A50A:
C D 1 - - - 0x01051A 04:A50A: A9 00     LDA #$00
C - - - - - 0x01051C 04:A50C: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01051F 04:A50F: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x010522 04:A512: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010525 04:A515: 60        RTS



ofs_041_A516_0D:
C - - J - - 0x010526 04:A516: A6 76     LDX ram_obj_index
C - - - - - 0x010528 04:A518: A9 00     LDA #$00
C - - - - - 0x01052A 04:A51A: 9D 83 05  STA ram_0583_obj,X
sub_A51D:
C - - - - - 0x01052D 04:A51D: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010530 04:A520: 29 3F     AND #$3F
C - - - - - 0x010532 04:A522: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x010535 04:A525: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x010538 04:A528: 29 01     AND #$01
C - - - - - 0x01053A 04:A52A: 18        CLC
C - - - - - 0x01053B 04:A52B: 69 01     ADC #$01
C - - - - - 0x01053D 04:A52D: 18        CLC
C - - - - - 0x01053E 04:A52E: 6A        ROR
C - - - - - 0x01053F 04:A52F: 6A        ROR
C - - - - - 0x010540 04:A530: 6A        ROR
C - - - - - 0x010541 04:A531: 1D 34 05  ORA ram_0534_obj,X
C - - - - - 0x010544 04:A534: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x010547 04:A537: 60        RTS



ofs_041_A538_0E:
C - - J - - 0x010548 04:A538: A6 76     LDX ram_obj_index
C - - - - - 0x01054A 04:A53A: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x01054D 04:A53D: 90 06     BCC bra_A545_RTS
C - - - - - 0x01054F 04:A53F: 20 45 B2  JSR sub_B245
; bzk optimize, JMP
C - - - - - 0x010552 04:A542: 20 E8 B6  JSR sub_B6E8
bra_A545_RTS:
C - - - - - 0x010555 04:A545: 60        RTS



ofs_041_A546_02:
C - - J - - 0x010556 04:A546: A6 76     LDX ram_obj_index
C - - - - - 0x010558 04:A548: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01055B 04:A54B: 29 3F     AND #$3F
C - - - - - 0x01055D 04:A54D: C9 02     CMP #$02
C - - - - - 0x01055F 04:A54F: F0 38     BEQ bra_A589
C - - - - - 0x010561 04:A551: A9 10     LDA #$10
C - - - - - 0x010563 04:A553: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x010566 04:A556: A9 00     LDA #$00
C - - - - - 0x010568 04:A558: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01056B 04:A55B: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01056E 04:A55E: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x010571 04:A561: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x010574 04:A564: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010577 04:A567: C9 2B     CMP #con_enemy_id_2B
C - - - - - 0x010579 04:A569: D0 07     BNE bra_A572
C - - - - - 0x01057B 04:A56B: A9 80     LDA #$80
C - - - - - 0x01057D 04:A56D: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x010580 04:A570: D0 09     BNE bra_A57B    ; jmp
bra_A572:
C - - - - - 0x010582 04:A572: C9 2C     CMP #$2C
C - - - - - 0x010584 04:A574: 90 05     BCC bra_A57B
C - - - - - 0x010586 04:A576: A9 01     LDA #$01
C - - - - - 0x010588 04:A578: 9D 4E 05  STA ram_054E_obj,X
bra_A57B:
loc_A57B:
C D 1 - - - 0x01058B 04:A57B: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01058E 04:A57E: 29 F0     AND #$F0
C - - - - - 0x010590 04:A580: 09 02     ORA #$02
C - - - - - 0x010592 04:A582: 9D 34 05  STA ram_0534_obj,X
; bzk optimize, JMP
C - - - - - 0x010595 04:A585: 20 45 B2  JSR sub_B245
C - - - - - 0x010598 04:A588: 60        RTS
bra_A589:
C - - - - - 0x010599 04:A589: A5 D8     LDA ram_00D8
C - - - - - 0x01059B 04:A58B: F0 0A     BEQ bra_A597
C - - - - - 0x01059D 04:A58D: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0105A0 04:A590: C9 4C     CMP #$4C    ; con_enemy_id_4C
C - - - - - 0x0105A2 04:A592: 90 03     BCC bra_A597
C - - - - - 0x0105A4 04:A594: 20 16 AF  JSR sub_AF16
bra_A597:
C - - - - - 0x0105A7 04:A597: 20 20 A6  JSR sub_A620
C - - - - - 0x0105AA 04:A59A: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0105AD 04:A59D: F0 06     BEQ bra_A5A5_RTS
C - - - - - 0x0105AF 04:A59F: 20 A6 A5  JSR sub_A5A6
; bzk optimize, JMP
C - - - - - 0x0105B2 04:A5A2: 20 D7 A5  JSR sub_A5D7
bra_A5A5_RTS:
C - - - - - 0x0105B5 04:A5A5: 60        RTS



sub_A5A6:
C - - - - - 0x0105B6 04:A5A6: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0105B9 04:A5A9: C9 2C     CMP #con_enemy_id_2C
C - - - - - 0x0105BB 04:A5AB: D0 29     BNE bra_A5D6_RTS
C - - - - - 0x0105BD 04:A5AD: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0105C0 04:A5B0: CD 64 04  CMP ram_pos_X_lo_obj + $03
C - - - - - 0x0105C3 04:A5B3: D0 21     BNE bra_A5D6_RTS
C - - - - - 0x0105C5 04:A5B5: A9 03     LDA #$03
C - - - - - 0x0105C7 04:A5B7: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x0105CA 04:A5BA: EE F3 04  INC ram_04F3_obj
C - - - - - 0x0105CD 04:A5BD: AD F3 04  LDA ram_04F3_obj
C - - - - - 0x0105D0 04:A5C0: C9 03     CMP #$03
C - - - - - 0x0105D2 04:A5C2: D0 12     BNE bra_A5D6_RTS
C - - - - - 0x0105D4 04:A5C4: A9 2B     LDA #con_enemy_id_2B
C - - - - - 0x0105D6 04:A5C6: 8D 4A 04  STA ram_obj_id
C - - - - - 0x0105D9 04:A5C9: A9 40     LDA #$40
C - - - - - 0x0105DB 04:A5CB: 8D 4E 05  STA ram_054E_obj
C - - - - - 0x0105DE 04:A5CE: A9 00     LDA #$00
C - - - - - 0x0105E0 04:A5D0: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x0105E3 04:A5D3: 8D 5B 05  STA ram_055B_obj_anim_counter
bra_A5D6_RTS:
C - - - - - 0x0105E6 04:A5D6: 60        RTS



sub_A5D7:
C - - - - - 0x0105E7 04:A5D7: A6 76     LDX ram_obj_index
C - - - - - 0x0105E9 04:A5D9: DE 4E 05  DEC ram_054E_obj,X
C - - - - - 0x0105EC 04:A5DC: D0 C7     BNE bra_A5A5_RTS
C - - - - - 0x0105EE 04:A5DE: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0105F1 04:A5E1: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x0105F3 04:A5E3: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0105F6 04:A5E6: 85 68     STA ram_0068_t06_pos_X_lo
C - - - - - 0x0105F8 04:A5E8: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x0105FB 04:A5EB: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x0105FD 04:A5ED: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010600 04:A5F0: C9 30     CMP #$30    ; con_enemy_id_30
C - - - - - 0x010602 04:A5F2: 90 04     BCC bra_A5F8
C - - - - - 0x010604 04:A5F4: A9 00     LDA #$00
C - - - - - 0x010606 04:A5F6: F0 04     BEQ bra_A5FC    ; jmp
bra_A5F8:
C - - - - - 0x010608 04:A5F8: A8        TAY
C - - - - - 0x010609 04:A5F9: B9 49 A6  LDA tbl_A649,Y
bra_A5FC:
C - - - - - 0x01060C 04:A5FC: 85 6A     STA ram_006A_t03
C - - - - - 0x01060E 04:A5FE: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x010611 04:A601: 38        SEC
C - - - - - 0x010612 04:A602: E5 6A     SBC ram_006A_t03
C - - - - - 0x010614 04:A604: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x010616 04:A606: 20 B6 FF  JSR sub_0x01FFC6
C - - - - - 0x010619 04:A609: A9 1B     LDA #con_sfx_explosion
C - - - - - 0x01061B 04:A60B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01061D 04:A60D: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x010620 04:A610: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010623 04:A613: C9 4C     CMP #$4C    ; con_enemy_id_4C
C - - - - - 0x010625 04:A615: 90 06     BCC bra_A61D
C - - - - - 0x010627 04:A617: A9 40     LDA #$40
C - - - - - 0x010629 04:A619: 05 D8     ORA ram_00D8
C - - - - - 0x01062B 04:A61B: 85 D8     STA ram_00D8
bra_A61D:
C - - - - - 0x01062D 04:A61D: 4C CF AE  JMP loc_AECF



sub_A620:
C - - - - - 0x010630 04:A620: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010633 04:A623: 29 3F     AND #$3F
C - - - - - 0x010635 04:A625: C9 2D     CMP #con_enemy_id_2D
C - - - - - 0x010637 04:A627: D0 1F     BNE bra_A648_RTS
C - - - - - 0x010639 04:A629: A9 2E     LDA #con_enemy_id_2E
C - - - - - 0x01063B 04:A62B: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x01063E 04:A62E: A9 00     LDA #$00
C - - - - - 0x010640 04:A630: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x010643 04:A633: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x010646 04:A636: A9 01     LDA #$01
C - - - - - 0x010648 04:A638: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01064B 04:A63B: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01064E 04:A63E: 29 EF     AND #$EF
C - - - - - 0x010650 04:A640: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x010653 04:A643: A9 30     LDA #$30
C - - - - - 0x010655 04:A645: 9D 79 05  STA ram_obj_hp,X
bra_A648_RTS:
C - - - - - 0x010658 04:A648: 60        RTS



tbl_A649:
- - - - - - 0x010659 04:A649: 10        .byte $10   ; 00 
- D 1 - - - 0x01065A 04:A64A: 10        .byte $10   ; 01 
- - - - - - 0x01065B 04:A64B: 10        .byte $10   ; 02 
- - - - - - 0x01065C 04:A64C: 10        .byte $10   ; 03 
- - - - - - 0x01065D 04:A64D: 10        .byte $10   ; 04 
- D 1 - - - 0x01065E 04:A64E: 10        .byte $10   ; 05 
- D 1 - - - 0x01065F 04:A64F: 10        .byte $10   ; 06 
- D 1 - - - 0x010660 04:A650: 10        .byte $10   ; 07 
- D 1 - - - 0x010661 04:A651: 10        .byte $10   ; 08 
- D 1 - - - 0x010662 04:A652: 10        .byte $10   ; 09 
- D 1 - - - 0x010663 04:A653: 10        .byte $10   ; 0A 
- D 1 - - - 0x010664 04:A654: 10        .byte $10   ; 0B 
- - - - - - 0x010665 04:A655: 10        .byte $10   ; 0C 
- D 1 - - - 0x010666 04:A656: 10        .byte $10   ; 0D 
- D 1 - - - 0x010667 04:A657: 10        .byte $10   ; 0E 
- D 1 - - - 0x010668 04:A658: 10        .byte $10   ; 0F 
- D 1 - - - 0x010669 04:A659: 10        .byte $10   ; 10 
- D 1 - - - 0x01066A 04:A65A: 10        .byte $10   ; 11 
- - - - - - 0x01066B 04:A65B: 10        .byte $10   ; 12 
- D 1 - - - 0x01066C 04:A65C: 10        .byte $10   ; 13 
- - - - - - 0x01066D 04:A65D: 10        .byte $10   ; 14 
- - - - - - 0x01066E 04:A65E: 10        .byte $10   ; 15 
- - - - - - 0x01066F 04:A65F: 10        .byte $10   ; 16 
- - - - - - 0x010670 04:A660: 10        .byte $10   ; 17 
- - - - - - 0x010671 04:A661: 10        .byte $10   ; 18 
- - - - - - 0x010672 04:A662: 10        .byte $10   ; 19 
- - - - - - 0x010673 04:A663: 10        .byte $10   ; 1A 
- - - - - - 0x010674 04:A664: 10        .byte $10   ; 1B 
- - - - - - 0x010675 04:A665: 10        .byte $10   ; 1C 
- - - - - - 0x010676 04:A666: 10        .byte $10   ; 1D 
- - - - - - 0x010677 04:A667: 10        .byte $10   ; 1E 
- D 1 - - - 0x010678 04:A668: 10        .byte $10   ; 1F 
- D 1 - - - 0x010679 04:A669: 10        .byte $10   ; 20 
- - - - - - 0x01067A 04:A66A: 10        .byte $10   ; 21 
- - - - - - 0x01067B 04:A66B: 10        .byte $10   ; 22 
- - - - - - 0x01067C 04:A66C: 10        .byte $10   ; 23 
- - - - - - 0x01067D 04:A66D: 10        .byte $10   ; 24 
- - - - - - 0x01067E 04:A66E: 10        .byte $10   ; 25 
- - - - - - 0x01067F 04:A66F: 10        .byte $10   ; 26 
- - - - - - 0x010680 04:A670: 00        .byte $00   ; 27 
- - - - - - 0x010681 04:A671: 00        .byte $00   ; 28 
- D 1 - - - 0x010682 04:A672: 00        .byte $00   ; 29 
- - - - - - 0x010683 04:A673: 18        .byte $18   ; 2A 
- D 1 - - - 0x010684 04:A674: 10        .byte $10   ; 2B 
- D 1 - - - 0x010685 04:A675: 00        .byte $00   ; 2C 
- - - - - - 0x010686 04:A676: 10        .byte $10   ; 2D 
- D 1 - - - 0x010687 04:A677: 10        .byte $10   ; 2E 
- - - - - - 0x010688 04:A678: 10        .byte $10   ; 2F 



ofs_041_A679_03:
C - - J - - 0x010689 04:A679: A6 76     LDX ram_obj_index
C - - - - - 0x01068B 04:A67B: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x01068E 04:A67E: 90 13     BCC bra_A693_RTS
C - - - - - 0x010690 04:A680: 20 45 B2  JSR sub_B245
C - - - - - 0x010693 04:A683: 20 61 A4  JSR sub_A461
C - - - - - 0x010696 04:A686: 20 94 A6  JSR sub_A694
C - - - - - 0x010699 04:A689: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01069C 04:A68C: C9 2B     CMP #con_enemy_id_2B
C - - - - - 0x01069E 04:A68E: F0 03     BEQ bra_A693_RTS
; bzk optimize, JMP
C - - - - - 0x0106A0 04:A690: 20 3B B5  JSR sub_B53B_clear_object_data
bra_A693_RTS:
C - - - - - 0x0106A3 04:A693: 60        RTS



sub_A694:
C - - - - - 0x0106A4 04:A694: AD 3E 04  LDA ram_043A_obj_flags + $03 + $01
C - - - - - 0x0106A7 04:A697: F0 0C     BEQ bra_A6A5_RTS
C - - - - - 0x0106A9 04:A699: AD 4B 04  LDA ram_obj_id + $01
C - - - - - 0x0106AC 04:A69C: C9 2C     CMP #con_enemy_id_2C
C - - - - - 0x0106AE 04:A69E: D0 05     BNE bra_A6A5_RTS
- - - - - - 0x0106B0 04:A6A0: A9 00     LDA #$00
- - - - - - 0x0106B2 04:A6A2: 8D D9 04  STA ram_04D9_obj
bra_A6A5_RTS:
C - - - - - 0x0106B5 04:A6A5: 60        RTS



ofs_041_A6A6_04:
C - - J - - 0x0106B6 04:A6A6: A6 76     LDX ram_obj_index
C - - - - - 0x0106B8 04:A6A8: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x0106BB 04:A6AB: C9 18     CMP #$18
C - - - - - 0x0106BD 04:A6AD: F0 0A     BEQ bra_A6B9
sub_A6AF:
C - - - - - 0x0106BF 04:A6AF: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0106C2 04:A6B2: C9 2A     CMP #$2A    ; con_enemy_id_2A
C - - - - - 0x0106C4 04:A6B4: 90 03     BCC bra_A6B9
C - - - - - 0x0106C6 04:A6B6: 20 C3 B1  JSR sub_B1C3
bra_A6B9:
C - - - - - 0x0106C9 04:A6B9: 20 2C AF  JSR sub_AF2C
C - - - - - 0x0106CC 04:A6BC: 20 4D A7  JSR sub_A74D
C - - - - - 0x0106CF 04:A6BF: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x0106D2 04:A6C2: 30 42     BMI bra_A706_moving_up
; if moving down
C - - - - - 0x0106D4 04:A6C4: A9 00     LDA #$00
C - - - - - 0x0106D6 04:A6C6: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x0106D8 04:A6C8: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x0106DB 04:A6CB: A6 76     LDX ram_obj_index
C - - - - - 0x0106DD 04:A6CD: 20 5F A7  JSR sub_A75F
C - - - - - 0x0106E0 04:A6D0: D0 32     BNE bra_A704
C - - - - - 0x0106E2 04:A6D2: A5 BC     LDA ram_00BC
C - - - - - 0x0106E4 04:A6D4: 29 03     AND #$03
C - - - - - 0x0106E6 04:A6D6: F0 44     BEQ bra_A71C
C - - - - - 0x0106E8 04:A6D8: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0106EB 04:A6DB: C9 2C     CMP #con_enemy_id_2C
C - - - - - 0x0106ED 04:A6DD: D0 08     BNE bra_A6E7
C - - - - - 0x0106EF 04:A6DF: A9 00     LDA #$00
C - - - - - 0x0106F1 04:A6E1: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0106F4 04:A6E4: 4C AA A9  JMP loc_A9AA
bra_A6E7:
C - - - - - 0x0106F7 04:A6E7: 20 66 A2  JSR sub_A266
C - - - - - 0x0106FA 04:A6EA: A9 10     LDA #$10
C - - - - - 0x0106FC 04:A6EC: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0106FF 04:A6EF: 20 3B B5  JSR sub_B53B_clear_object_data
C - - - - - 0x010702 04:A6F2: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x010705 04:A6F5: 20 70 A7  JSR sub_A770
C - - - - - 0x010708 04:A6F8: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01070B 04:A6FB: C9 2D     CMP #con_enemy_id_2D
C - - - - - 0x01070D 04:A6FD: D0 4D     BNE bra_A74C_RTS
C - - - - - 0x01070F 04:A6FF: A9 09     LDA #$09
C - - - - - 0x010711 04:A701: 9D D9 04  STA ram_04D9_obj,X
bra_A704:
C - - - - - 0x010714 04:A704: D0 46     BNE bra_A74C_RTS    ; jmp
bra_A706_moving_up:
C - - - - - 0x010716 04:A706: A9 E8     LDA #$E8
C - - - - - 0x010718 04:A708: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x01071A 04:A70A: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x01071D 04:A70D: A6 76     LDX ram_obj_index
C - - - - - 0x01071F 04:A70F: A5 BC     LDA ram_00BC
C - - - - - 0x010721 04:A711: 29 01     AND #$01
C - - - - - 0x010723 04:A713: F0 26     BEQ bra_A73B
C - - - - - 0x010725 04:A715: A9 19     LDA #$19
C - - - - - 0x010727 04:A717: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x01072A 04:A71A: D0 1F     BNE bra_A73B    ; jmp
bra_A71C:
C - - - - - 0x01072C 04:A71C: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01072F 04:A71F: 29 1C     AND #$1C
C - - - - - 0x010731 04:A721: F0 08     BEQ bra_A72B
- - - - - - 0x010733 04:A723: BD 34 05  LDA ram_0534_obj,X
- - - - - - 0x010736 04:A726: 29 3F     AND #$3F
- - - - - - 0x010738 04:A728: 9D 34 05  STA ram_0534_obj,X
bra_A72B:
C - - - - - 0x01073B 04:A72B: 18        CLC
C - - - - - 0x01073C 04:A72C: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01073F 04:A72F: 29 C0     AND #$C0
C - - - - - 0x010741 04:A731: 2A        ROL
C - - - - - 0x010742 04:A732: 2A        ROL
C - - - - - 0x010743 04:A733: 2A        ROL
C - - - - - 0x010744 04:A734: A8        TAY
C - - - - - 0x010745 04:A735: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x010748 04:A738: 9D 0D 05  STA ram_spd_X_lo_obj,X
bra_A73B:
C - - - - - 0x01074B 04:A73B: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x01074E 04:A73E: 29 3F     AND #$3F
C - - - - - 0x010750 04:A740: C9 02     CMP #$02
C - - - - - 0x010752 04:A742: F0 08     BEQ bra_A74C_RTS
C - - - - - 0x010754 04:A744: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x010757 04:A747: 90 03     BCC bra_A74C_RTS
; bzk optimize, JMP
C - - - - - 0x010759 04:A749: 20 45 B2  JSR sub_B245
bra_A74C_RTS:
C - - - - - 0x01075C 04:A74C: 60        RTS



sub_A74D:
C - - - - - 0x01075D 04:A74D: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010760 04:A750: C9 2E     CMP #con_enemy_id_2E
C - - - - - 0x010762 04:A752: D0 0A     BNE bra_A75E_RTS
C - - - - - 0x010764 04:A754: DE 65 05  DEC ram_0565_obj,X
C - - - - - 0x010767 04:A757: D0 05     BNE bra_A75E_RTS
C - - - - - 0x010769 04:A759: A9 02     LDA #$02
C - - - - - 0x01076B 04:A75B: 9D D9 04  STA ram_04D9_obj,X
bra_A75E_RTS:
C - - - - - 0x01076E 04:A75E: 60        RTS



sub_A75F:
C - - - - - 0x01076F 04:A75F: A5 BC     LDA ram_00BC
; bzk optimize, there are probably no such values
C - - - - - 0x010771 04:A761: 29 24     AND #$24
C - - - - - 0x010773 04:A763: F0 0A     BEQ bra_A76F_RTS
C - - - - - 0x010775 04:A765: A9 02     LDA #$02
C - - - - - 0x010777 04:A767: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01077A 04:A76A: A9 00     LDA #$00
C - - - - - 0x01077C 04:A76C: 9D 0D 05  STA ram_spd_X_lo_obj,X
bra_A76F_RTS:
C - - - - - 0x01077F 04:A76F: 60        RTS



sub_A770:
C - - - - - 0x010780 04:A770: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010783 04:A773: C9 2A     CMP #con_enemy_id_2A
C - - - - - 0x010785 04:A775: D0 11     BNE bra_A788_RTS
C - - - - - 0x010787 04:A777: A9 81     LDA #$81
C - - - - - 0x010789 04:A779: 8D F3 03  STA ram_03F3
C - - - - - 0x01078C 04:A77C: A9 02     LDA #$02
C - - - - - 0x01078E 04:A77E: 8D F4 03  STA ram_03F4
C - - - - - 0x010791 04:A781: A9 08     LDA #con_sfx_earthquake
C - - - - - 0x010793 04:A783: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x010795 04:A785: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_A788_RTS:
C - - - - - 0x010798 04:A788: 60        RTS



loc_A789:
ofs_041_A789_05:
C D 1 J - - 0x010799 04:A789: A6 76     LDX ram_obj_index
C - - - - - 0x01079B 04:A78B: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01079E 04:A78E: C9 11     CMP #con_enemy_id_11
C - - - - - 0x0107A0 04:A790: F0 07     BEQ bra_A799
C - - - - - 0x0107A2 04:A792: C9 12     CMP #con_enemy_id_12
C - - - - - 0x0107A4 04:A794: F0 03     BEQ bra_A799
C - - - - - 0x0107A6 04:A796: 20 04 AD  JSR sub_AD04
bra_A799:
C - - - - - 0x0107A9 04:A799: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x0107AC 04:A79C: 48        PHA
C - - - - - 0x0107AD 04:A79D: 29 02     AND #$02
C - - - - - 0x0107AF 04:A79F: 4A        LSR
C - - - - - 0x0107B0 04:A7A0: 85 67     STA ram_0067_t0C
C - - - - - 0x0107B2 04:A7A2: 68        PLA
C - - - - - 0x0107B3 04:A7A3: 29 01     AND #$01
C - - - - - 0x0107B5 04:A7A5: 45 67     EOR ram_0067_t0C
C - - - - - 0x0107B7 04:A7A7: D0 09     BNE bra_A7B2
C - - - - - 0x0107B9 04:A7A9: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0107BC 04:A7AC: 29 3F     AND #$3F
C - - - - - 0x0107BE 04:A7AE: C9 05     CMP #$05
C - - - - - 0x0107C0 04:A7B0: F0 0D     BEQ bra_A7BF_RTS
bra_A7B2:
C - - - - - 0x0107C2 04:A7B2: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0107C5 04:A7B5: 29 F0     AND #$F0
C - - - - - 0x0107C7 04:A7B7: 09 05     ORA #$05
C - - - - - 0x0107C9 04:A7B9: 9D 34 05  STA ram_0534_obj,X
; bzk optimize, JMP
C - - - - - 0x0107CC 04:A7BC: 20 45 B2  JSR sub_B245
bra_A7BF_RTS:
C - - - - - 0x0107CF 04:A7BF: 60        RTS



ofs_041_A7C0_09:
C - - J - - 0x0107D0 04:A7C0: 20 04 AD  JSR sub_AD04
sub_A7C3:
ofs_040_A7C3_06:
ofs_041_A7C3_06:
C - - J - - 0x0107D3 04:A7C3: A6 76     LDX ram_obj_index
C - - - - - 0x0107D5 04:A7C5: 20 7B A8  JSR sub_A87B
C - - - - - 0x0107D8 04:A7C8: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0107DB 04:A7CB: C9 2B     CMP #con_enemy_id_2B
C - - - - - 0x0107DD 04:A7CD: D0 03     BNE bra_A7D2
C - - - - - 0x0107DF 04:A7CF: 20 C3 B1  JSR sub_B1C3
bra_A7D2:
C - - - - - 0x0107E2 04:A7D2: A9 06     LDA #$06
C - - - - - 0x0107E4 04:A7D4: 20 CE B6  JSR sub_B6CE
C - - - - - 0x0107E7 04:A7D7: 90 E6     BCC bra_A7BF_RTS
C - - - - - 0x0107E9 04:A7D9: 20 45 B2  JSR sub_B245
loc_A7DC:
C D 1 - - - 0x0107EC 04:A7DC: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0107EE 04:A7DE: 48        PHA
C - - - - - 0x0107EF 04:A7DF: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x0107F1 04:A7E1: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0107F3 04:A7E3: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0107F6 04:A7E6: BC 4A 04  LDY ram_obj_id,X
C - - - - - 0x0107F9 04:A7E9: B9 12 8A  LDA tbl_0x008A22_object_byte,Y
C - - - - - 0x0107FC 04:A7EC: 85 67     STA ram_0067_t0D
loc_A7EE:
C D 1 - - - 0x0107FE 04:A7EE: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010801 04:A7F1: C9 2D     CMP #con_enemy_id_2D
C - - - - - 0x010803 04:A7F3: F0 11     BEQ bra_A806
C - - - - - 0x010805 04:A7F5: C9 41     CMP #$41    ; con_enemy_id_41
C - - - - - 0x010807 04:A7F7: 90 04     BCC bra_A7FD_00_41
; if 41+
C - - - - - 0x010809 04:A7F9: A9 00     LDA #$00
C - - - - - 0x01080B 04:A7FB: F0 04     BEQ bra_A801    ; jmp
bra_A7FD_00_41:
; except 2D
C - - - - - 0x01080D 04:A7FD: A8        TAY
C - - - - - 0x01080E 04:A7FE: B9 83 8A  LDA tbl_0x008A93_shot_id,Y
bra_A801:
C - - - - - 0x010811 04:A801: 85 6F     STA ram_006F_t01_shot_id
C - - - - - 0x010813 04:A803: 4C 11 A8  JMP loc_A811
bra_A806:
C - - - - - 0x010816 04:A806: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010819 04:A809: 29 3F     AND #$3F
C - - - - - 0x01081B 04:A80B: A8        TAY
C - - - - - 0x01081C 04:A80C: B9 B9 B5  LDA tbl_B5B9_shot_id,Y
C - - - - - 0x01081F 04:A80F: 85 6F     STA ram_006F_t01_shot_id
loc_A811:
C D 1 - - - 0x010821 04:A811: 68        PLA
C - - - - - 0x010822 04:A812: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x010824 04:A814: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x010827 04:A817: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01082A 04:A81A: 29 01     AND #$01
C - - - - - 0x01082C 04:A81C: 0A        ASL
C - - - - - 0x01082D 04:A81D: A8        TAY
C - - - - - 0x01082E 04:A81E: B9 00 AD  LDA tbl_AD00,Y
C - - - - - 0x010831 04:A821: 18        CLC
C - - - - - 0x010832 04:A822: 7D 64 04  ADC ram_pos_X_lo_obj + $03,X
C - - - - - 0x010835 04:A825: 8D EF 03  STA ram_03EF_pos_X_lo
C - - - - - 0x010838 04:A828: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x01083B 04:A82B: D0 4D     BNE bra_A87A_RTS
C - - - - - 0x01083D 04:A82D: 79 01 AD  ADC tbl_AD00 + $01,Y
C - - - - - 0x010840 04:A830: 8D EE 03  STA ram_03EE_useless
C - - - - - 0x010843 04:A833: D0 45     BNE bra_A87A_RTS
C - - - - - 0x010845 04:A835: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010848 04:A838: C9 30     CMP #$30    ; con_enemy_id_30
C - - - - - 0x01084A 04:A83A: 90 10     BCC bra_A84C
C - - - - - 0x01084C 04:A83C: C9 3A     CMP #con_enemy_id_3A
C - - - - - 0x01084E 04:A83E: F0 0C     BEQ bra_A84C
C - - - - - 0x010850 04:A840: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010853 04:A843: 8D EF 03  STA ram_03EF_pos_X_lo
C - - - - - 0x010856 04:A846: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010859 04:A849: 8D EE 03  STA ram_03EE_useless
bra_A84C:
C - - - - - 0x01085C 04:A84C: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01085F 04:A84F: 38        SEC
C - - - - - 0x010860 04:A850: E5 67     SBC ram_0067_t0D
C - - - - - 0x010862 04:A852: 90 26     BCC bra_A87A_RTS
C - - - - - 0x010864 04:A854: C9 F1     CMP #$F1
C - - - - - 0x010866 04:A856: B0 22     BCS bra_A87A_RTS
C - - - - - 0x010868 04:A858: 8D F1 03  STA ram_03F1_pos_Y_lo
C - - - - - 0x01086B 04:A85B: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x01086E 04:A85E: D0 1A     BNE bra_A87A_RTS
C - - - - - 0x010870 04:A860: A9 00     LDA #$00
C - - - - - 0x010872 04:A862: 8D F0 03  STA ram_03F0_useless
C - - - - - 0x010875 04:A865: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010878 04:A868: C9 27     CMP #$27    ; con_enemy_id_27
C - - - - - 0x01087A 04:A86A: B0 04     BCS bra_A870
C - - - - - 0x01087C 04:A86C: C9 1B     CMP #$1B    ; con_enemy_id_1B
C - - - - - 0x01087E 04:A86E: B0 07     BCS bra_A877
bra_A870:
C - - - - - 0x010880 04:A870: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x010883 04:A873: 29 02     AND #$02
C - - - - - 0x010885 04:A875: D0 03     BNE bra_A87A_RTS
bra_A877:
; bzk optimize, JMP
C - - - - - 0x010887 04:A877: 20 0D B7  JSR sub_B70D_shot_handler
bra_A87A_RTS:
C - - - - - 0x01088A 04:A87A: 60        RTS



sub_A87B:
C - - - - - 0x01088B 04:A87B: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01088E 04:A87E: C9 41     CMP #con_enemy_id_41
C - - - - - 0x010890 04:A880: D0 09     BNE bra_A88B_RTS
C - - - - - 0x010892 04:A882: A5 D8     LDA ram_00D8
C - - - - - 0x010894 04:A884: 29 40     AND #$40
C - - - - - 0x010896 04:A886: F0 03     BEQ bra_A88B_RTS
C - - - - - 0x010898 04:A888: 4C CF AE  JMP loc_AECF
bra_A88B_RTS:
C - - - - - 0x01089B 04:A88B: 60        RTS



ofs_041_A88C_07:
C - - J - - 0x01089C 04:A88C: A6 76     LDX ram_obj_index
C - - - - - 0x01089E 04:A88E: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x0108A1 04:A891: 90 18     BCC bra_A8AB_RTS
C - - - - - 0x0108A3 04:A893: 20 45 B2  JSR sub_B245
C - - - - - 0x0108A6 04:A896: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0108A8 04:A898: 48        PHA
C - - - - - 0x0108A9 04:A899: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x0108AB 04:A89B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0108AD 04:A89D: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0108B0 04:A8A0: BC 4A 04  LDY ram_obj_id,X
C - - - - - 0x0108B3 04:A8A3: B9 53 8A  LDA tbl_0x008A63_object_byte,Y
C - - - - - 0x0108B6 04:A8A6: 85 67     STA ram_0067_t0D
C - - - - - 0x0108B8 04:A8A8: 4C EE A7  JMP loc_A7EE
bra_A8AB_RTS:
C - - - - - 0x0108BB 04:A8AB: 60        RTS



ofs_041_A8AC_08:
C - - J - - 0x0108BC 04:A8AC: A9 04     LDA #$04
C - - - - - 0x0108BE 04:A8AE: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x0108C0 04:A8B0: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x0108C3 04:A8B3: A5 BC     LDA ram_00BC
C - - - - - 0x0108C5 04:A8B5: 29 03     AND #$03
C - - - - - 0x0108C7 04:A8B7: D0 0A     BNE bra_A8C3
C - - - - - 0x0108C9 04:A8B9: A9 04     LDA #$04
C - - - - - 0x0108CB 04:A8BB: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0108CE 04:A8BE: A9 18     LDA #$18
C - - - - - 0x0108D0 04:A8C0: 9D 83 05  STA ram_0583_obj,X
bra_A8C3:
C - - - - - 0x0108D3 04:A8C3: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0108D6 04:A8C6: 29 3F     AND #$3F
C - - - - - 0x0108D8 04:A8C8: C9 01     CMP #$01
C - - - - - 0x0108DA 04:A8CA: F0 38     BEQ bra_A904_RTS
C - - - - - 0x0108DC 04:A8CC: A9 01     LDA #$01
C - - - - - 0x0108DE 04:A8CE: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x0108E1 04:A8D1: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x0108E4 04:A8D4: 29 01     AND #$01
C - - - - - 0x0108E6 04:A8D6: 49 01     EOR #$01
C - - - - - 0x0108E8 04:A8D8: 18        CLC
C - - - - - 0x0108E9 04:A8D9: 69 01     ADC #$01
C - - - - - 0x0108EB 04:A8DB: 6A        ROR
C - - - - - 0x0108EC 04:A8DC: 6A        ROR
C - - - - - 0x0108ED 04:A8DD: 6A        ROR
C - - - - - 0x0108EE 04:A8DE: 1D 34 05  ORA ram_0534_obj,X
C - - - - - 0x0108F1 04:A8E1: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x0108F4 04:A8E4: 20 45 B2  JSR sub_B245
C - - - - - 0x0108F7 04:A8E7: A6 76     LDX ram_obj_index
C - - - - - 0x0108F9 04:A8E9: 18        CLC
C - - - - - 0x0108FA 04:A8EA: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0108FD 04:A8ED: 29 C0     AND #$C0
C - - - - - 0x0108FF 04:A8EF: 2A        ROL
C - - - - - 0x010900 04:A8F0: 2A        ROL
C - - - - - 0x010901 04:A8F1: 2A        ROL
C - - - - - 0x010902 04:A8F2: A8        TAY
C - - - - - 0x010903 04:A8F3: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x010906 04:A8F6: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010909 04:A8F9: A9 00     LDA #$00
C - - - - - 0x01090B 04:A8FB: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x01090E 04:A8FE: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x010911 04:A901: 9D 27 05  STA ram_spd_Y_lo_obj,X
bra_A904_RTS:
C - - - - - 0x010914 04:A904: 60        RTS



ofs_041_A905_0A:
- - - - - - 0x010915 04:A905: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x010918 04:A908: 29 DF     AND #$DF
- - - - - - 0x01091A 04:A90A: 9D 41 05  STA ram_0541_obj_flags,X
- - - - - - 0x01091D 04:A90D: 29 01     AND #$01
; * 20
- - - - - - 0x01091F 04:A90F: 0A        ASL
- - - - - - 0x010920 04:A910: 0A        ASL
- - - - - - 0x010921 04:A911: 0A        ASL
- - - - - - 0x010922 04:A912: 0A        ASL
- - - - - - 0x010923 04:A913: 0A        ASL
; 
- - - - - - 0x010924 04:A914: 1D 41 05  ORA ram_0541_obj_flags,X
- - - - - - 0x010927 04:A917: 9D 41 05  STA ram_0541_obj_flags,X
- - - - - - 0x01092A 04:A91A: 60        RTS



ofs_040_A91B_00:
C - - J - - 0x01092B 04:A91B: A6 76     LDX ram_obj_index
C - - - - - 0x01092D 04:A91D: 20 2C A9  JSR sub_A92C
C - - - - - 0x010930 04:A920: F0 07     BEQ bra_A929
C - - - - - 0x010932 04:A922: A9 07     LDA #$07
C - - - - - 0x010934 04:A924: 85 6C     STA ram_006C_t01
C - - - - - 0x010936 04:A926: 20 B3 B0  JSR sub_B0B3
bra_A929:
C - - - - - 0x010939 04:A929: 4C EB A3  JMP loc_A3EB



sub_A92C:
C - - - - - 0x01093C 04:A92C: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01093F 04:A92F: C9 15     CMP #con_enemy_id_15
C - - - - - 0x010941 04:A931: D0 23     BNE bra_A956_RTS
C - - - - - 0x010943 04:A933: A9 07     LDA #con_enemy_id_07
C - - - - - 0x010945 04:A935: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x010948 04:A938: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01094B 04:A93B: DD 64 04  CMP ram_pos_X_lo_obj + $03,X
C - - - - - 0x01094E 04:A93E: 90 07     BCC bra_A947
C - - - - - 0x010950 04:A940: A9 21     LDA #$21
C - - - - - 0x010952 04:A942: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x010955 04:A945: D0 05     BNE bra_A94C    ; jmp
bra_A947:
C - - - - - 0x010957 04:A947: A9 00     LDA #$00
C - - - - - 0x010959 04:A949: 9D 41 05  STA ram_0541_obj_flags,X
bra_A94C:
C - - - - - 0x01095C 04:A94C: A9 00     LDA #$00
C - - - - - 0x01095E 04:A94E: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x010961 04:A951: A9 01     LDA #$01
C - - - - - 0x010963 04:A953: 9D 4E 05  STA ram_054E_obj,X
bra_A956_RTS:
C - - - - - 0x010966 04:A956: 60        RTS



ofs_040_A957_01:
C - - J - - 0x010967 04:A957: A6 76     LDX ram_obj_index
C - - - - - 0x010969 04:A959: 20 04 AD  JSR sub_AD04
C - - - - - 0x01096C 04:A95C: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x01096F 04:A95F: 90 14     BCC bra_A975_RTS
C - - - - - 0x010971 04:A961: 20 45 B2  JSR sub_B245
C - - - - - 0x010974 04:A964: 20 04 AD  JSR sub_AD04
C - - - - - 0x010977 04:A967: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01097A 04:A96A: C9 18     CMP #$18    ; con_enemy_id_18
C - - - - - 0x01097C 04:A96C: B0 07     BCS bra_A975_RTS
C - - - - - 0x01097E 04:A96E: A9 27     LDA #con_sfx_ambush
C - - - - - 0x010980 04:A970: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x010982 04:A972: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_A975_RTS:
C - - - - - 0x010985 04:A975: 60        RTS



ofs_040_A976_02:
C - - J - - 0x010986 04:A976: A6 76     LDX ram_obj_index
C - - - - - 0x010988 04:A978: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01098B 04:A97B: 29 3F     AND #$3F
C - - - - - 0x01098D 04:A97D: C9 02     CMP #$02
C - - - - - 0x01098F 04:A97F: F0 10     BEQ bra_A991
C - - - - - 0x010991 04:A981: A9 40     LDA #$40
C - - - - - 0x010993 04:A983: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x010996 04:A986: 20 3B B5  JSR sub_B53B_clear_object_data
C - - - - - 0x010999 04:A989: A9 02     LDA #$02
C - - - - - 0x01099B 04:A98B: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01099E 04:A98E: 4C 7B A5  JMP loc_A57B
bra_A991:
C - - - - - 0x0109A1 04:A991: 20 D7 A5  JSR sub_A5D7
; bzk optimize, JMP
C - - - - - 0x0109A4 04:A994: 20 98 A9  JSR sub_A998
bra_A997_RTS:
C - - - - - 0x0109A7 04:A997: 60        RTS



sub_A998:
C - - - - - 0x0109A8 04:A998: A6 76     LDX ram_obj_index
C - - - - - 0x0109AA 04:A99A: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0109AD 04:A99D: 10 F8     BPL bra_A997_RTS
C - - - - - 0x0109AF 04:A99F: A9 00     LDA #$00
C - - - - - 0x0109B1 04:A9A1: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x0109B3 04:A9A3: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x0109B6 04:A9A6: A5 BC     LDA ram_00BC
C - - - - - 0x0109B8 04:A9A8: F0 ED     BEQ bra_A997_RTS
loc_A9AA:
C D 1 - - - 0x0109BA 04:A9AA: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0109BD 04:A9AD: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x0109BF 04:A9AF: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0109C2 04:A9B2: 85 68     STA ram_0068_t06_pos_X_lo
C - - - - - 0x0109C4 04:A9B4: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x0109C7 04:A9B7: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x0109C9 04:A9B9: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0109CC 04:A9BC: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x0109CE 04:A9BE: 20 B6 FF  JSR sub_0x01FFC6
C - - - - - 0x0109D1 04:A9C1: A9 1B     LDA #con_sfx_explosion
C - - - - - 0x0109D3 04:A9C3: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0109D5 04:A9C5: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0109D8 04:A9C8: 4C CF AE  JMP loc_AECF



ofs_040_A9CB_04:
C - - J - - 0x0109DB 04:A9CB: A6 76     LDX ram_obj_index
C - - - - - 0x0109DD 04:A9CD: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0109E0 04:A9D0: C9 18     CMP #$18    ; con_enemy_id_18
C - - - - - 0x0109E2 04:A9D2: B0 08     BCS bra_A9DC
C - - - - - 0x0109E4 04:A9D4: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0109E7 04:A9D7: 29 3F     AND #$3F
C - - - - - 0x0109E9 04:A9D9: 9D 34 05  STA ram_0534_obj,X
bra_A9DC:
C - - - - - 0x0109EC 04:A9DC: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0109EF 04:A9DF: 29 C0     AND #$C0
C - - - - - 0x0109F1 04:A9E1: 18        CLC
C - - - - - 0x0109F2 04:A9E2: 2A        ROL
C - - - - - 0x0109F3 04:A9E3: 2A        ROL
C - - - - - 0x0109F4 04:A9E4: 2A        ROL
C - - - - - 0x0109F5 04:A9E5: A8        TAY
C - - - - - 0x0109F6 04:A9E6: B9 B4 AF  LDA tbl_AFB4,Y
C - - - - - 0x0109F9 04:A9E9: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0109FC 04:A9EC: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x0109FF 04:A9EF: C9 17     CMP #$17
C - - - - - 0x010A01 04:A9F1: 90 10     BCC bra_AA03
C - - - - - 0x010A03 04:A9F3: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010A06 04:A9F6: C9 18     CMP #$18    ; con_enemy_id_18
C - - - - - 0x010A08 04:A9F8: B0 04     BCS bra_A9FE
C - - - - - 0x010A0A 04:A9FA: A9 30     LDA #$30
C - - - - - 0x010A0C 04:A9FC: D0 02     BNE bra_AA00    ; jmp
bra_A9FE:
- - - - - - 0x010A0E 04:A9FE: A9 19     LDA #$19
bra_AA00:
C - - - - - 0x010A10 04:AA00: 9D 83 05  STA ram_0583_obj,X
bra_AA03:
; bzk optimize, JMP
C - - - - - 0x010A13 04:AA03: 20 AF A6  JSR sub_A6AF
C - - - - - 0x010A16 04:AA06: 60        RTS



ofs_040_AA07_07:
- - - - - - 0x010A17 04:AA07: 20 AC AC  JSR sub_ACAC
- - - - - - 0x010A1A 04:AA0A: A6 76     LDX ram_obj_index
- - - - - - 0x010A1C 04:AA0C: 20 C9 B6  JSR sub_B6C9
- - - - - - 0x010A1F 04:AA0F: 90 20     BCC bra_AA31_RTS
- - - - - - 0x010A21 04:AA11: A9 01     LDA #$01
- - - - - - 0x010A23 04:AA13: 9D 83 05  STA ram_0583_obj,X
loc_AA16:
C D 1 - - - 0x010A26 04:AA16: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x010A29 04:AA19: 29 DF     AND #$20 ^ $FF
C - - - - - 0x010A2B 04:AA1B: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x010A2E 04:AA1E: 29 01     AND #$01
; * 20
C - - - - - 0x010A30 04:AA20: 0A        ASL
C - - - - - 0x010A31 04:AA21: 0A        ASL
C - - - - - 0x010A32 04:AA22: 0A        ASL
C - - - - - 0x010A33 04:AA23: 0A        ASL
C - - - - - 0x010A34 04:AA24: 0A        ASL
; 
C - - - - - 0x010A35 04:AA25: 1D 41 05  ORA ram_0541_obj_flags,X
C - - - - - 0x010A38 04:AA28: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x010A3B 04:AA2B: 20 04 AD  JSR sub_AD04
; bzk optimize, JMP
C - - - - - 0x010A3E 04:AA2E: 20 45 B2  JSR sub_B245
bra_AA31_RTS:
C - - - - - 0x010A41 04:AA31: 60        RTS



ofs_040_AA32_03:
C - - J - - 0x010A42 04:AA32: A6 76     LDX ram_obj_index
C - - - - - 0x010A44 04:AA34: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010A47 04:AA37: C9 29     CMP #con_enemy_id_29
C - - - - - 0x010A49 04:AA39: D0 0A     BNE bra_AA45
C - - - - - 0x010A4B 04:AA3B: A9 10     LDA #$10
C - - - - - 0x010A4D 04:AA3D: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x010A50 04:AA40: A9 01     LDA #$01
C - - - - - 0x010A52 04:AA42: 9D 79 05  STA ram_obj_hp,X
bra_AA45:
C - - - - - 0x010A55 04:AA45: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010A58 04:AA48: 10 E7     BPL bra_AA31_RTS
ofs_040_AA4A_05:
ofs_040_AA4A_0E:
C - - J - - 0x010A5A 04:AA4A: A6 76     LDX ram_obj_index
C - - - - - 0x010A5C 04:AA4C: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010A5F 04:AA4F: C9 27     CMP #$27    ; con_enemy_id_27
C - - - - - 0x010A61 04:AA51: 90 14     BCC bra_AA67
C - - - - - 0x010A63 04:AA53: A9 00     LDA #$00
C - - - - - 0x010A65 04:AA55: 85 6E     STA ram_006E_t08_pos_X_lo
C - - - - - 0x010A67 04:AA57: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010A69 04:AA59: 20 2A AD  JSR sub_AD2A
C - - - - - 0x010A6C 04:AA5C: A5 BC     LDA ram_00BC
C - - - - - 0x010A6E 04:AA5E: 29 07     AND #$07
C - - - - - 0x010A70 04:AA60: F0 05     BEQ bra_AA67
C - - - - - 0x010A72 04:AA62: A6 76     LDX ram_obj_index
C - - - - - 0x010A74 04:AA64: 4C AA A9  JMP loc_A9AA
bra_AA67:
C - - - - - 0x010A77 04:AA67: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x010A79 04:AA69: 48        PHA
C - - - - - 0x010A7A 04:AA6A: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x010A7C 04:AA6C: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x010A7E 04:AA6E: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x010A81 04:AA71: A9 1B     LDA #$1B    ; con_enemy_id_1B
C - - - - - 0x010A83 04:AA73: 85 67     STA ram_0067_t0E_obj_id_offset
; bzk optimize, X is always 00
C - - - - - 0x010A85 04:AA75: A2 00     LDX #$00
C - - - - - 0x010A87 04:AA77: BD FD 91  LDA tbl_0x01320D,X
C - - - - - 0x010A8A 04:AA7A: 85 5D     STA ram_005D_t03_data
C - - - - - 0x010A8C 04:AA7C: BD FE 91  LDA tbl_0x01320D + $01,X
C - - - - - 0x010A8F 04:AA7F: 85 5E     STA ram_005D_t03_data + $01
C - - - - - 0x010A91 04:AA81: 20 E4 AB  JSR sub_ABE4
C - - - - - 0x010A94 04:AA84: 68        PLA
C - - - - - 0x010A95 04:AA85: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x010A97 04:AA87: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x010A9A 04:AA8A: A6 76     LDX ram_obj_index
C - - - - - 0x010A9C 04:AA8C: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010A9F 04:AA8F: 29 3F     AND #$3F
C - - - - - 0x010AA1 04:AA91: C9 0E     CMP #$0E
C - - - - - 0x010AA3 04:AA93: D0 03     BNE bra_AA98
C - - - - - 0x010AA5 04:AA95: 4C 8D AB  JMP loc_AB8D
bra_AA98:
C - - - - - 0x010AA8 04:AA98: 20 B4 AA  JSR sub_AAB4
; bzk bug? value can be from
    ; ram_0071_t18_score_array + $01
    ; ram_0072_t03
    ; ram_0072_t09_obj_item_index
    ; ram_0072_t12_data_index
C - - - - - 0x010AAB 04:AA9B: A5 72     LDA ram_0072_t11
C - - - - - 0x010AAD 04:AA9D: C9 10     CMP #$10
C - - - - - 0x010AAF 04:AA9F: F0 12     BEQ bra_AAB3_RTS
C - - - - - 0x010AB1 04:AAA1: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010AB4 04:AAA4: C9 27     CMP #$27    ; con_enemy_id_27
C - - - - - 0x010AB6 04:AAA6: B0 03     BCS bra_AAAB
C - - - - - 0x010AB8 04:AAA8: 4C 89 A7  JMP loc_A789
bra_AAAB:
C - - - - - 0x010ABB 04:AAAB: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x010ABE 04:AAAE: 90 03     BCC bra_AAB3_RTS
; bzk optimize, JMP
C - - - - - 0x010AC0 04:AAB0: 20 45 B2  JSR sub_B245
bra_AAB3_RTS:
C - - - - - 0x010AC3 04:AAB3: 60        RTS



sub_AAB4:
C - - - - - 0x010AC4 04:AAB4: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010AC7 04:AAB7: C9 27     CMP #con_enemy_id_27
C - - - - - 0x010AC9 04:AAB9: D0 19     BNE bra_AAD4_RTS
C - - - - - 0x010ACB 04:AABB: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x010ACE 04:AABE: C9 17     CMP #$17
C - - - - - 0x010AD0 04:AAC0: D0 12     BNE bra_AAD4_RTS
C - - - - - 0x010AD2 04:AAC2: A9 00     LDA #$00
C - - - - - 0x010AD4 04:AAC4: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x010AD7 04:AAC7: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x010ADA 04:AACA: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010ADD 04:AACD: 29 80     AND #$80
C - - - - - 0x010ADF 04:AACF: 09 08     ORA #$08
C - - - - - 0x010AE1 04:AAD1: 9D D9 04  STA ram_04D9_obj,X
bra_AAD4_RTS:
C - - - - - 0x010AE4 04:AAD4: 60        RTS



ofs_040_AAD5_08:
C - - J - - 0x010AE5 04:AAD5: A6 76     LDX ram_obj_index
C - - - - - 0x010AE7 04:AAD7: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x010AEA 04:AADA: 90 06     BCC bra_AAE2_RTS
- - - - - - 0x010AEC 04:AADC: 20 45 B2  JSR sub_B245
loc_AADF:
; bzk optimize, JMP
C D 1 - - - 0x010AEF 04:AADF: 20 3B B5  JSR sub_B53B_clear_object_data
bra_AAE2_RTS:
C - - - - - 0x010AF2 04:AAE2: 60        RTS



ofs_040_AAE3_09:
C - - J - - 0x010AF3 04:AAE3: A6 76     LDX ram_obj_index
C - - - - - 0x010AF5 04:AAE5: 20 B6 AB  JSR sub_ABB6
C - - - - - 0x010AF8 04:AAE8: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010AFB 04:AAEB: C9 29     CMP #con_enemy_id_29
C - - - - - 0x010AFD 04:AAED: D0 06     BNE bra_AAF5
C - - - - - 0x010AFF 04:AAEF: 20 04 AD  JSR sub_AD04
C - - - - - 0x010B02 04:AAF2: 20 1D A5  JSR sub_A51D
bra_AAF5:
C - - - - - 0x010B05 04:AAF5: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x010B08 04:AAF8: 90 06     BCC bra_AB00_RTS
C - - - - - 0x010B0A 04:AAFA: 20 45 B2  JSR sub_B245
C - - - - - 0x010B0D 04:AAFD: 4C DF AA  JMP loc_AADF
bra_AB00_RTS:
C - - - - - 0x010B10 04:AB00: 60        RTS



ofs_040_AB01_0A:
C - - J - - 0x010B11 04:AB01: A6 76     LDX ram_obj_index
C - - - - - 0x010B13 04:AB03: A9 0C     LDA #$0C
C - - - - - 0x010B15 04:AB05: 85 6C     STA ram_006C_t01
C - - - - - 0x010B17 04:AB07: 20 B3 B0  JSR sub_B0B3
C - - - - - 0x010B1A 04:AB0A: A6 76     LDX ram_obj_index
C - - - - - 0x010B1C 04:AB0C: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B1F 04:AB0F: 29 3F     AND #$3F
C - - - - - 0x010B21 04:AB11: C9 0A     CMP #$0A
C - - - - - 0x010B23 04:AB13: F0 2D     BEQ bra_AB42_RTS
C - - - - - 0x010B25 04:AB15: A9 0A     LDA #$0A
C - - - - - 0x010B27 04:AB17: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x010B2A 04:AB1A: 20 1D A5  JSR sub_A51D
C - - - - - 0x010B2D 04:AB1D: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B30 04:AB20: 29 C0     AND #$C0
C - - - - - 0x010B32 04:AB22: 18        CLC
C - - - - - 0x010B33 04:AB23: 2A        ROL
C - - - - - 0x010B34 04:AB24: 2A        ROL
C - - - - - 0x010B35 04:AB25: 2A        ROL
C - - - - - 0x010B36 04:AB26: 2A        ROL
C - - - - - 0x010B37 04:AB27: A8        TAY
C - - - - - 0x010B38 04:AB28: B9 B7 AF  LDA tbl_AFB7,Y
C - - - - - 0x010B3B 04:AB2B: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010B3E 04:AB2E: B9 B8 AF  LDA tbl_AFB7 + $01,Y
C - - - - - 0x010B41 04:AB31: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x010B44 04:AB34: A9 00     LDA #$00
C - - - - - 0x010B46 04:AB36: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x010B49 04:AB39: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010B4C 04:AB3C: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x010B4F 04:AB3F: 4C CC A4  JMP loc_A4CC
bra_AB42_RTS:
C - - - - - 0x010B52 04:AB42: 60        RTS



ofs_040_AB43_0B:
C - - J - - 0x010B53 04:AB43: 20 AC AC  JSR sub_ACAC
ofs_041_AB46_0B:
C - - - - - 0x010B56 04:AB46: A6 76     LDX ram_obj_index
C - - - - - 0x010B58 04:AB48: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B5B 04:AB4B: 29 3F     AND #$3F
C - - - - - 0x010B5D 04:AB4D: C9 0B     CMP #$0B
C - - - - - 0x010B5F 04:AB4F: F0 12     BEQ bra_AB63_RTS
C - - - - - 0x010B61 04:AB51: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B64 04:AB54: 29 F0     AND #$F0
C - - - - - 0x010B66 04:AB56: 09 0B     ORA #$0B
C - - - - - 0x010B68 04:AB58: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x010B6B 04:AB5B: A9 01     LDA #$01
C - - - - - 0x010B6D 04:AB5D: 9D 83 05  STA ram_0583_obj,X
; bzk optimize, JMP
C - - - - - 0x010B70 04:AB60: 20 45 B2  JSR sub_B245
bra_AB63_RTS:
C - - - - - 0x010B73 04:AB63: 60        RTS



ofs_041_AB64_0C:
C - - J - - 0x010B74 04:AB64: A6 76     LDX ram_obj_index
C - - - - - 0x010B76 04:AB66: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B79 04:AB69: 29 3F     AND #$3F
C - - - - - 0x010B7B 04:AB6B: 9D 34 05  STA ram_0534_obj,X
ofs_040_AB6E_0C:
C - - - - - 0x010B7E 04:AB6E: A6 76     LDX ram_obj_index
C - - - - - 0x010B80 04:AB70: 20 04 AD  JSR sub_AD04
C - - - - - 0x010B83 04:AB73: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B86 04:AB76: 29 3F     AND #$3F
C - - - - - 0x010B88 04:AB78: C9 0C     CMP #$0C
C - - - - - 0x010B8A 04:AB7A: F0 10     BEQ bra_AB8C_RTS
C - - - - - 0x010B8C 04:AB7C: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010B8F 04:AB7F: 29 F0     AND #$F0
C - - - - - 0x010B91 04:AB81: 09 0C     ORA #$0C
C - - - - - 0x010B93 04:AB83: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x010B96 04:AB86: 20 3B B5  JSR sub_B53B_clear_object_data
C - - - - - 0x010B99 04:AB89: 4C 16 AA  JMP loc_AA16
bra_AB8C_RTS:
C - - - - - 0x010B9C 04:AB8C: 60        RTS



loc_AB8D:
C D 1 - - - 0x010B9D 04:AB8D: 20 B4 AA  JSR sub_AAB4
C - - - - - 0x010BA0 04:AB90: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x010BA3 04:AB93: 90 03     BCC bra_AB98_RTS
; bzk optimize, JMP
C - - - - - 0x010BA5 04:AB95: 20 45 B2  JSR sub_B245
bra_AB98_RTS:
C - - - - - 0x010BA8 04:AB98: 60        RTS



ofs_040_AB99_0D:
C - - J - - 0x010BA9 04:AB99: A6 76     LDX ram_obj_index
C - - - - - 0x010BAB 04:AB9B: 20 C9 B6  JSR sub_B6C9
C - - - - - 0x010BAE 04:AB9E: 90 0A     BCC bra_ABAA_RTS
C - - - - - 0x010BB0 04:ABA0: 20 45 B2  JSR sub_B245
C - - - - - 0x010BB3 04:ABA3: A9 0F     LDA #con_sfx_water_splash
C - - - - - 0x010BB5 04:ABA5: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x010BB7 04:ABA7: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_ABAA_RTS:
C - - - - - 0x010BBA 04:ABAA: 60        RTS



ofs_040_ABAB_0F:
- - - - - - 0x010BBB 04:ABAB: A6 76     LDX ram_obj_index
- - - - - - 0x010BBD 04:ABAD: 20 1D A5  JSR sub_A51D
- - - - - - 0x010BC0 04:ABB0: A9 10     LDA #$10
- - - - - - 0x010BC2 04:ABB2: 9D 83 05  STA ram_0583_obj,X
- - - - - - 0x010BC5 04:ABB5: 60        RTS



sub_ABB6:
C - - - - - 0x010BC6 04:ABB6: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010BC9 04:ABB9: C9 24     CMP #$24    ; con_enemy_id_24
C - - - - - 0x010BCB 04:ABBB: B0 02     BCS bra_ABBF
C - - - - - 0x010BCD 04:ABBD: 90 08     BCC bra_ABC7    ; jmp
bra_ABBF:
C - - - - - 0x010BCF 04:ABBF: C9 27     CMP #$27
C - - - - - 0x010BD1 04:ABC1: 90 20     BCC bra_ABE3_RTS
C - - - - - 0x010BD3 04:ABC3: C9 29     CMP #$29
C - - - - - 0x010BD5 04:ABC5: F0 1C     BEQ bra_ABE3_RTS
bra_ABC7:
sub_ABC7:
C - - - - - 0x010BD7 04:ABC7: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010BDA 04:ABCA: D0 17     BNE bra_ABE3_RTS
C - - - - - 0x010BDC 04:ABCC: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010BDF 04:ABCF: 38        SEC
C - - - - - 0x010BE0 04:ABD0: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x010BE3 04:ABD3: B0 05     BCS bra_ABDA
C - - - - - 0x010BE5 04:ABD5: 49 FF     EOR #$FF
C - - - - - 0x010BE7 04:ABD7: 18        CLC
C - - - - - 0x010BE8 04:ABD8: 69 01     ADC #$01
bra_ABDA:
C - - - - - 0x010BEA 04:ABDA: C9 40     CMP #$40
C - - - - - 0x010BEC 04:ABDC: B0 05     BCS bra_ABE3_RTS
C - - - - - 0x010BEE 04:ABDE: A9 10     LDA #$10
C - - - - - 0x010BF0 04:ABE0: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_ABE3_RTS:
C - - - - - 0x010BF3 04:ABE3: 60        RTS



sub_ABE4:
C - - - - - 0x010BF4 04:ABE4: A6 76     LDX ram_obj_index
C - - - - - 0x010BF6 04:ABE6: DE 83 05  DEC ram_0583_obj,X
C - - - - - 0x010BF9 04:ABE9: F0 01     BEQ bra_ABEC
C - - - - - 0x010BFB 04:ABEB: 60        RTS
bra_ABEC:
C - - - - - 0x010BFC 04:ABEC: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010BFF 04:ABEF: 38        SEC
C - - - - - 0x010C00 04:ABF0: E5 67     SBC ram_0067_t0E_obj_id_offset
C - - - - - 0x010C02 04:ABF2: 0A        ASL
C - - - - - 0x010C03 04:ABF3: A8        TAY
C - - - - - 0x010C04 04:ABF4: B1 5D     LDA (ram_005D_t03_data),Y
C - - - - - 0x010C06 04:ABF6: 85 5B     STA ram_005B_t09_data
C - - - - - 0x010C08 04:ABF8: C8        INY
C - - - - - 0x010C09 04:ABF9: B1 5D     LDA (ram_005D_t03_data),Y
C - - - - - 0x010C0B 04:ABFB: 85 5C     STA ram_005B_t09_data + $01
bra_ABFD_loop:
C - - - - - 0x010C0D 04:ABFD: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x010C10 04:AC00: 29 C0     AND #$C0
; A = 40/80
C - - - - - 0x010C12 04:AC02: 18        CLC
C - - - - - 0x010C13 04:AC03: 2A        ROL
C - - - - - 0x010C14 04:AC04: 2A        ROL
C - - - - - 0x010C15 04:AC05: 2A        ROL
; A = 01/02
C - - - - - 0x010C16 04:AC06: 85 6A     STA ram_006A_t05_data_index_offset
C - - - - - 0x010C18 04:AC08: BD 65 05  LDA ram_0565_obj,X
; * 04
C - - - - - 0x010C1B 04:AC0B: 0A        ASL
C - - - - - 0x010C1C 04:AC0C: 0A        ASL
; 
C - - - - - 0x010C1D 04:AC0D: 85 69     STA ram_0069_t13_data_index
C - - - - - 0x010C1F 04:AC0F: A8        TAY
C - - - - - 0x010C20 04:AC10: B1 5B     LDA (ram_005B_t09_data),Y
C - - - - - 0x010C22 04:AC12: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x010C24 04:AC14: A5 69     LDA ram_0069_t13_data_index
C - - - - - 0x010C26 04:AC16: 18        CLC
C - - - - - 0x010C27 04:AC17: 65 6A     ADC ram_006A_t05_data_index_offset
C - - - - - 0x010C29 04:AC19: A8        TAY
C - - - - - 0x010C2A 04:AC1A: B1 5B     LDA (ram_005B_t09_data),Y
C - - - - - 0x010C2C 04:AC1C: 10 0D     BPL bra_AC2B
C - - - - - 0x010C2E 04:AC1E: A5 69     LDA ram_0069_t13_data_index
C - - - - - 0x010C30 04:AC20: 18        CLC
C - - - - - 0x010C31 04:AC21: 69 03     ADC #$03
C - - - - - 0x010C33 04:AC23: A8        TAY
C - - - - - 0x010C34 04:AC24: B1 5B     LDA (ram_005B_t09_data),Y
C - - - - - 0x010C36 04:AC26: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x010C39 04:AC29: D0 D2     BNE bra_ABFD_loop   ; jmp
bra_AC2B:
C - - - - - 0x010C3B 04:AC2B: 85 68     STA ram_0068_t08
C - - - - - 0x010C3D 04:AC2D: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010C40 04:AC30: 10 04     BPL bra_AC36
C - - - - - 0x010C42 04:AC32: A5 68     LDA ram_0068_t08
C - - - - - 0x010C44 04:AC34: 85 72     STA ram_0072_t11
bra_AC36:
C - - - - - 0x010C46 04:AC36: A5 69     LDA ram_0069_t13_data_index
C - - - - - 0x010C48 04:AC38: 18        CLC
C - - - - - 0x010C49 04:AC39: 69 03     ADC #$03
C - - - - - 0x010C4B 04:AC3B: A8        TAY
C - - - - - 0x010C4C 04:AC3C: B1 5B     LDA (ram_005B_t09_data),Y
C - - - - - 0x010C4E 04:AC3E: 20 6B AC  JSR sub_AC6B
C - - - - - 0x010C51 04:AC41: A5 6B     LDA ram_006B_t12
C - - - - - 0x010C53 04:AC43: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x010C56 04:AC46: FE 65 05  INC ram_0565_obj,X
C - - - - - 0x010C59 04:AC49: A5 68     LDA ram_0068_t08
C - - - - - 0x010C5B 04:AC4B: 29 10     AND #$10
C - - - - - 0x010C5D 04:AC4D: F0 14     BEQ bra_AC63
C - - - - - 0x010C5F 04:AC4F: 20 3B B5  JSR sub_B53B_clear_object_data
C - - - - - 0x010C62 04:AC52: A5 68     LDA ram_0068_t08
C - - - - - 0x010C64 04:AC54: C9 11     CMP #$11
C - - - - - 0x010C66 04:AC56: B0 0E     BCS bra_AC66
C - - - - - 0x010C68 04:AC58: A9 85     LDA #$85
C - - - - - 0x010C6A 04:AC5A: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x010C6D 04:AC5D: 20 C3 A7  JSR sub_A7C3
C - - - - - 0x010C70 04:AC60: 4C 66 AC  JMP loc_AC66
bra_AC63:
C - - - - - 0x010C73 04:AC63: 20 92 AC  JSR sub_AC92
bra_AC66:
loc_AC66:
C D 1 - - - 0x010C76 04:AC66: A9 00     LDA #$00    ; con_enemy_id_00
C - - - - - 0x010C78 04:AC68: 85 67     STA ram_0067_t0E_obj_id_offset
C - - - - - 0x010C7A 04:AC6A: 60        RTS



sub_AC6B:
; in
    ; A = 
    ; ram_0068_t08
; out
    ; ram_006B_t12
C - - - - - 0x010C7B 04:AC6B: 85 6B     STA ram_006B_t12
C - - - - - 0x010C7D 04:AC6D: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010C80 04:AC70: C9 4A     CMP #con_enemy_id_4A
C - - - - - 0x010C82 04:AC72: D0 1D     BNE bra_AC91_RTS
- - - - - - 0x010C84 04:AC74: A5 68     LDA ram_0068_t08
- - - - - - 0x010C86 04:AC76: 29 10     AND #$10
- - - - - - 0x010C88 04:AC78: F0 17     BEQ bra_AC91_RTS
- - - - - - 0x010C8A 04:AC7A: A5 14     LDA ram_frm_cnt
- - - - - - 0x010C8C 04:AC7C: 48        PHA ; 1
- - - - - - 0x010C8D 04:AC7D: 29 01     AND #$01
- - - - - - 0x010C8F 04:AC7F: F0 0A     BEQ bra_AC8B
- - - - - - 0x010C91 04:AC81: 68        PLA ; 1
- - - - - - 0x010C92 04:AC82: 29 0F     AND #$0F
loc_AC84_loop:
- - - - - - 0x010C94 04:AC84: 18        CLC
- - - - - - 0x010C95 04:AC85: 65 6B     ADC ram_006B_t12
- - - - - - 0x010C97 04:AC87: 85 6B     STA ram_006B_t12
; bzk optimize, replace with RTS if it's actually a jump
- - - - - - 0x010C99 04:AC89: D0 06     BNE bra_AC91_RTS    ; jmp?
bra_AC8B:
- - - - - - 0x010C9B 04:AC8B: 68        PLA ; 1
- - - - - - 0x010C9C 04:AC8C: 29 1F     AND #$1F
- - - - - - 0x010C9E 04:AC8E: 4C 84 AC  JMP loc_AC84_loop
bra_AC91_RTS:
C - - - - - 0x010CA1 04:AC91: 60        RTS



sub_AC92:
C - - - - - 0x010CA2 04:AC92: 20 A7 FF  JSR sub_0x01FFB7
C - - - - - 0x010CA5 04:AC95: A6 76     LDX ram_obj_index
C - - - - - 0x010CA7 04:AC97: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x010CA9 04:AC99: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010CAC 04:AC9C: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x010CAE 04:AC9E: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x010CB1 04:ACA1: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x010CB3 04:ACA3: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010CB6 04:ACA6: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x010CB8 04:ACA8: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x010CBB 04:ACAB: 60        RTS



sub_ACAC:
C - - - - - 0x010CBC 04:ACAC: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x010CBE 04:ACAE: F0 07     BEQ bra_ACB7_not_swimming
; if swimming
C - - - - - 0x010CC0 04:ACB0: AD 01 04  LDA ram_player_state_1
C - - - - - 0x010CC3 04:ACB3: C9 05     CMP #con_plr_state_duck
C - - - - - 0x010CC5 04:ACB5: F0 1A     BEQ bra_ACD1_RTS
bra_ACB7_not_swimming:
C - - - - - 0x010CC7 04:ACB7: A6 76     LDX ram_obj_index
C - - - - - 0x010CC9 04:ACB9: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010CCC 04:ACBC: D0 13     BNE bra_ACD1_RTS
C - - - - - 0x010CCE 04:ACBE: A5 A4     LDA ram_plr_direction
; bzk optimize, useless AND 01
C - - - - - 0x010CD0 04:ACC0: 29 01     AND #$01
C - - - - - 0x010CD2 04:ACC2: 0A        ASL
C - - - - - 0x010CD3 04:ACC3: AA        TAX
C - - - - - 0x010CD4 04:ACC4: BD D2 AC  LDA tbl_ACD2,X
C - - - - - 0x010CD7 04:ACC7: 85 5B     STA ram_005B_t62_jmp
C - - - - - 0x010CD9 04:ACC9: BD D3 AC  LDA tbl_ACD2 + $01,X
C - - - - - 0x010CDC 04:ACCC: 85 5C     STA ram_005B_t62_jmp + $01
C - - - - - 0x010CDE 04:ACCE: 6C 5B 00  JMP (ram_005B_t62_jmp)
bra_ACD1_RTS:
C - - - - - 0x010CE1 04:ACD1: 60        RTS



tbl_ACD2:
- D 1 - - - 0x010CE2 04:ACD2: D6 AC     .word ofs_037_ACD6_00
- D 1 - - - 0x010CE4 04:ACD4: EB AC     .word ofs_037_ACEB_01



ofs_037_ACD6_00:
C - - J - - 0x010CE6 04:ACD6: A6 76     LDX ram_obj_index
C - - - - - 0x010CE8 04:ACD8: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010CEB 04:ACDB: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x010CEE 04:ACDE: B0 0A     BCS bra_ACEA_RTS
C - - - - - 0x010CF0 04:ACE0: A9 01     LDA #$01
C - - - - - 0x010CF2 04:ACE2: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x010CF5 04:ACE5: A9 10     LDA #$10
C - - - - - 0x010CF7 04:ACE7: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_ACEA_RTS:
C - - - - - 0x010CFA 04:ACEA: 60        RTS



ofs_037_ACEB_01:
C - - J - - 0x010CFB 04:ACEB: A6 76     LDX ram_obj_index
C - - - - - 0x010CFD 04:ACED: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010D00 04:ACF0: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x010D03 04:ACF3: 90 0A     BCC bra_ACFF_RTS
C - - - - - 0x010D05 04:ACF5: A9 01     LDA #$01
C - - - - - 0x010D07 04:ACF7: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x010D0A 04:ACFA: A9 10     LDA #$10
C - - - - - 0x010D0C 04:ACFC: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_ACFF_RTS:
C - - - - - 0x010D0F 04:ACFF: 60        RTS



tbl_AD00:
; bzk optimize, 2nd byte is useless
;                                              +---------- 
;                                              |    +----- useless
;                                              |    |
- D 1 - - - 0x010D10 04:AD00: F6        .byte $F6, $FF   ; 00 
- D 1 - - - 0x010D12 04:AD02: 09        .byte $09, $00   ; 01 



sub_AD04:
C - - - - - 0x010D14 04:AD04: A6 76     LDX ram_obj_index
C - - - - - 0x010D16 04:AD06: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010D19 04:AD09: F0 06     BEQ bra_AD11
C - - - - - 0x010D1B 04:AD0B: 30 0C     BMI bra_AD19
bra_AD0D:
C - - - - - 0x010D1D 04:AD0D: A9 00     LDA #$00
C - - - - - 0x010D1F 04:AD0F: F0 0C     BEQ bra_AD1D    ; jmp
bra_AD11:
C - - - - - 0x010D21 04:AD11: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x010D24 04:AD14: DD 64 04  CMP ram_pos_X_lo_obj + $03,X
C - - - - - 0x010D27 04:AD17: 90 F4     BCC bra_AD0D
bra_AD19:
C - - - - - 0x010D29 04:AD19: A9 01     LDA #$01
C - - - - - 0x010D2B 04:AD1B: D0 00     BNE bra_AD1D    ; jmp
bra_AD1D:
C - - - - - 0x010D2D 04:AD1D: 85 67     STA ram_0067_t18
C - - - - - 0x010D2F 04:AD1F: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x010D32 04:AD22: 29 FE     AND #$FE
C - - - - - 0x010D34 04:AD24: 05 67     ORA ram_0067_t18
C - - - - - 0x010D36 04:AD26: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x010D39 04:AD29: 60        RTS



sub_AD2A:
; in
    ; ram_006E_t08_pos_X_lo
    ; ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010D3A 04:AD2A: A9 00     LDA #$00
C - - - - - 0x010D3C 04:AD2C: 85 67     STA ram_0067_t19_pos_X_hi
C - - - - - 0x010D3E 04:AD2E: A5 6E     LDA ram_006E_t08_pos_X_lo
C - - - - - 0x010D40 04:AD30: 10 04     BPL bra_AD36
; bzk optimize, DEC
C - - - - - 0x010D42 04:AD32: A9 FF     LDA #$FF
C - - - - - 0x010D44 04:AD34: 85 67     STA ram_0067_t19_pos_X_hi
bra_AD36:
C - - - - - 0x010D46 04:AD36: A5 6E     LDA ram_006E_t08_pos_X_lo
C - - - - - 0x010D48 04:AD38: 18        CLC
C - - - - - 0x010D49 04:AD39: 7D 64 04  ADC ram_pos_X_lo_obj + $03,X
C - - - - - 0x010D4C 04:AD3C: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x010D4E 04:AD3E: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010D51 04:AD41: 65 67     ADC ram_0067_t19_pos_X_hi
C - - - - - 0x010D53 04:AD43: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x010D55 04:AD45: A9 00     LDA #$00
C - - - - - 0x010D57 04:AD47: 85 67     STA ram_0067_t1A_hi
C - - - - - 0x010D59 04:AD49: A5 6F     LDA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010D5B 04:AD4B: 10 04     BPL bra_AD51
; bzk optimize, DEC
C - - - - - 0x010D5D 04:AD4D: A9 FF     LDA #$FF
C - - - - - 0x010D5F 04:AD4F: 85 67     STA ram_0067_t1A_hi
bra_AD51:
C - - - - - 0x010D61 04:AD51: A5 6F     LDA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010D63 04:AD53: 18        CLC
C - - - - - 0x010D64 04:AD54: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x010D67 04:AD57: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x010D69 04:AD59: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010D6C 04:AD5C: 65 67     ADC ram_0067_t1A_hi
C - - - - - 0x010D6E 04:AD5E: 85 BA     STA ram_00BA_pos_Y_hi
; bzk optimize, JMP
C - - - - - 0x010D70 04:AD60: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x010D73 04:AD63: 60        RTS



sub_AD64:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x010D74 04:AD64: A6 76     LDX ram_obj_index
C - - - - - 0x010D76 04:AD66: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x010D79 04:AD69: 29 20     AND #$20
C - - - - - 0x010D7B 04:AD6B: F0 03     BEQ bra_AD70
C - - - - - 0x010D7D 04:AD6D: 4C 23 AE  JMP loc_AE23
bra_AD70:
C - - - - - 0x010D80 04:AD70: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x010D83 04:AD73: 1D 0D 05  ORA ram_spd_X_lo_obj,X
C - - - - - 0x010D86 04:AD76: F0 68     BEQ bra_ADE0
C - - - - - 0x010D88 04:AD78: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010D8B 04:AD7B: 30 27     BMI bra_ADA4
C - - - - - 0x010D8D 04:AD7D: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x010D90 04:AD80: 30 04     BMI bra_AD86
C - - - - - 0x010D92 04:AD82: A0 01     LDY #$01
C - - - - - 0x010D94 04:AD84: D0 02     BNE bra_AD88    ; jmp
bra_AD86:
C - - - - - 0x010D96 04:AD86: A0 00     LDY #$00
bra_AD88:
C - - - - - 0x010D98 04:AD88: A9 FC     LDA #$FC
C - - - - - 0x010D9A 04:AD8A: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x010D9C 04:AD8C: B9 26 AE  LDA tbl_AE26,Y
C - - - - - 0x010D9F 04:AD8F: 85 6E     STA ram_006E_t08_pos_X_lo
C - - - - - 0x010DA1 04:AD91: 20 2A AD  JSR sub_AD2A
C - - - - - 0x010DA4 04:AD94: A6 76     LDX ram_obj_index
C - - - - - 0x010DA6 04:AD96: A5 BC     LDA ram_00BC
C - - - - - 0x010DA8 04:AD98: 29 01     AND #$01
C - - - - - 0x010DAA 04:AD9A: F0 08     BEQ bra_ADA4
C - - - - - 0x010DAC 04:AD9C: A9 00     LDA #$00
C - - - - - 0x010DAE 04:AD9E: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x010DB1 04:ADA1: 9D 00 05  STA ram_spd_X_fr_obj,X
bra_ADA4:
C - - - - - 0x010DB4 04:ADA4: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x010DB7 04:ADA7: 10 04     BPL bra_ADAD
C - - - - - 0x010DB9 04:ADA9: A9 FF     LDA #$FF
C - - - - - 0x010DBB 04:ADAB: D0 02     BNE bra_ADAF    ; jmp
bra_ADAD:
C - - - - - 0x010DBD 04:ADAD: A9 00     LDA #$00
bra_ADAF:
C - - - - - 0x010DBF 04:ADAF: 85 67     STA ram_0067_t1F
C - - - - - 0x010DC1 04:ADB1: BD 57 04  LDA ram_pos_X_fr_obj,X
C - - - - - 0x010DC4 04:ADB4: 18        CLC
C - - - - - 0x010DC5 04:ADB5: 7D 00 05  ADC ram_spd_X_fr_obj,X
C - - - - - 0x010DC8 04:ADB8: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x010DCB 04:ADBB: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010DCE 04:ADBE: 7D 0D 05  ADC ram_spd_X_lo_obj,X
C - - - - - 0x010DD1 04:ADC1: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010DD4 04:ADC4: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010DD7 04:ADC7: 65 67     ADC ram_0067_t1F
C - - - - - 0x010DD9 04:ADC9: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010DDC 04:ADCC: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010DDF 04:ADCF: C9 43     CMP #$43    ; con_enemy_id_43
C - - - - - 0x010DE1 04:ADD1: B0 0D     BCS bra_ADE0
C - - - - - 0x010DE3 04:ADD3: A9 19     LDA #$19
C - - - - - 0x010DE5 04:ADD5: 85 67     STA ram_0067_t20
C - - - - - 0x010DE7 04:ADD7: A9 E8     LDA #$E8
C - - - - - 0x010DE9 04:ADD9: 85 68     STA ram_0068_t09
C - - - - - 0x010DEB 04:ADDB: 20 C6 B2  JSR sub_B2C6
C - - - - - 0x010DEE 04:ADDE: 90 42     BCC bra_AE22_RTS
bra_ADE0:
C - - - - - 0x010DF0 04:ADE0: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x010DF3 04:ADE3: 1D 27 05  ORA ram_spd_Y_lo_obj,X
C - - - - - 0x010DF6 04:ADE6: F0 3B     BEQ bra_AE23_not_moving_vertically
; if moving by Y axis
C - - - - - 0x010DF8 04:ADE8: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x010DFB 04:ADEB: 10 04     BPL bra_ADF1_moving_down
; if moving up
C - - - - - 0x010DFD 04:ADED: A9 FF     LDA #$FF    ; move up
C - - - - - 0x010DFF 04:ADEF: D0 02     BNE bra_ADF3    ; jmp
bra_ADF1_moving_down:
C - - - - - 0x010E01 04:ADF1: A9 00     LDA #$00    ; move down
bra_ADF3:
C - - - - - 0x010E03 04:ADF3: 85 67     STA ram_0067_t21_spd_Y_hi
C - - - - - 0x010E05 04:ADF5: BD 7E 04  LDA ram_pos_Y_fr_obj,X
C - - - - - 0x010E08 04:ADF8: 18        CLC
C - - - - - 0x010E09 04:ADF9: 7D 1A 05  ADC ram_spd_Y_fr_obj,X
C - - - - - 0x010E0C 04:ADFC: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x010E0F 04:ADFF: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x010E12 04:AE02: 7D 27 05  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x010E15 04:AE05: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x010E18 04:AE08: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010E1B 04:AE0B: 65 67     ADC ram_0067_t21_spd_Y_hi
C - - - - - 0x010E1D 04:AE0D: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010E20 04:AE10: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010E23 04:AE13: C9 43     CMP #$43    ; con_enemy_id_43
C - - - - - 0x010E25 04:AE15: B0 0B     BCS bra_AE22_RTS
C - - - - - 0x010E27 04:AE17: A9 19     LDA #$19
C - - - - - 0x010E29 04:AE19: 85 67     STA ram_0067_t20
C - - - - - 0x010E2B 04:AE1B: A9 E8     LDA #$E8
C - - - - - 0x010E2D 04:AE1D: 85 68     STA ram_0068_t09
; bzk optimize, JMP
C - - - - - 0x010E2F 04:AE1F: 20 ED B2  JSR sub_B2ED
bra_AE22_RTS:
C - - - - - 0x010E32 04:AE22: 60        RTS
bra_AE23_not_moving_vertically:
loc_AE23:
C D 1 - - - 0x010E33 04:AE23: 38        SEC
; bzk optimize, RTS
C - - - - - 0x010E34 04:AE24: B0 FC     BCS bra_AE22_RTS    ; jmp



tbl_AE26:
- D 1 - - - 0x010E36 04:AE26: F4        .byte $F4   ; 00 
- D 1 - - - 0x010E37 04:AE27: 0B        .byte $0B   ; 01 



sub_AE28:
C - - - - - 0x010E38 04:AE28: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x010E3A 04:AE2A: F0 39     BEQ bra_AE65_RTS
C - - - - - 0x010E3C 04:AE2C: 85 75     STA ram_0075_t01_loop_counter
C - - - - - 0x010E3E 04:AE2E: A9 00     LDA #$00
C - - - - - 0x010E40 04:AE30: 85 76     STA ram_obj_index
bra_AE32_loop:
C - - - - - 0x010E42 04:AE32: A6 76     LDX ram_obj_index
C - - - - - 0x010E44 04:AE34: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x010E47 04:AE37: 10 0D     BPL bra_AE46
C - - - - - 0x010E49 04:AE39: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010E4C 04:AE3C: C9 4C     CMP #$4C    ; con_enemy_id_4C
C - - - - - 0x010E4E 04:AE3E: B0 0A     BCS bra_AE4A
C - - - - - 0x010E50 04:AE40: C9 43     CMP #$43    ; con_enemy_id_43
C - - - - - 0x010E52 04:AE42: B0 1D     BCS bra_AE61
C - - - - - 0x010E54 04:AE44: 90 04     BCC bra_AE4A    ; jmp
bra_AE46:
bra_AE46_loop:
C - - - - - 0x010E56 04:AE46: E6 76     INC ram_obj_index
C - - - - - 0x010E58 04:AE48: D0 E8     BNE bra_AE32_loop    ; jmp
bra_AE4A:
C - - - - - 0x010E5A 04:AE4A: A5 4B     LDA ram_004B_script
C - - - - - 0x010E5C 04:AE4C: 0A        ASL
C - - - - - 0x010E5D 04:AE4D: AA        TAX
C - - - - - 0x010E5E 04:AE4E: BD 66 AE  LDA tbl_AE66,X
C - - - - - 0x010E61 04:AE51: 85 5B     STA ram_005B_t61_jmp
C - - - - - 0x010E63 04:AE53: BD 67 AE  LDA tbl_AE66 + $01,X
C - - - - - 0x010E66 04:AE56: 85 5C     STA ram_005B_t61_jmp + $01
C - - - - - 0x010E68 04:AE58: A9 AE     LDA #> (ofs_AE61_return - $01)
C - - - - - 0x010E6A 04:AE5A: 48        PHA
C - - - - - 0x010E6B 04:AE5B: A9 60     LDA #< (ofs_AE61_return - $01)
C - - - - - 0x010E6D 04:AE5D: 48        PHA
C - - - - - 0x010E6E 04:AE5E: 6C 5B 00  JMP (ram_005B_t61_jmp)
bra_AE61:
ofs_AE61_return:
C - - - - - 0x010E71 04:AE61: C6 75     DEC ram_0075_t01_loop_counter
C - - - - - 0x010E73 04:AE63: D0 E1     BNE bra_AE46_loop
bra_AE65_RTS:
C - - - - - 0x010E75 04:AE65: 60        RTS



tbl_AE66:
- D 1 - - - 0x010E76 04:AE66: 78 AE     .word ofs_036_AE78_00
- D 1 - - - 0x010E78 04:AE68: 7C AE     .word ofs_036_AE7C_01
- D 1 - - - 0x010E7A 04:AE6A: 80 AE     .word ofs_036_AE80_02
- D 1 - - - 0x010E7C 04:AE6C: 84 AE     .word ofs_036_AE84_03
- D 1 - - - 0x010E7E 04:AE6E: 88 AE     .word ofs_036_AE88_04
- D 1 - - - 0x010E80 04:AE70: 8C AE     .word ofs_036_AE8C_05
- D 1 - - - 0x010E82 04:AE72: 95 AE     .word ofs_036_AE95_06
- D 1 - - - 0x010E84 04:AE74: 9E AE     .word ofs_036_AE9E_07
- D 1 - - - 0x010E86 04:AE76: A7 AE     .word ofs_036_AEA7_08



ofs_036_AE78_00:
; con_004B_00
; bzk optimize
C - - J - - 0x010E88 04:AE78: 20 B0 AE  JSR sub_AEB0
C - - - - - 0x010E8B 04:AE7B: 60        RTS



ofs_036_AE7C_01:
; con_004B_01
; bzk optimize
C - - J - - 0x010E8C 04:AE7C: 20 F0 AE  JSR sub_AEF0
C - - - - - 0x010E8F 04:AE7F: 60        RTS



ofs_036_AE80_02:
; con_004B_02
; bzk optimize
C - - J - - 0x010E90 04:AE80: 20 04 AF  JSR sub_AF04
C - - - - - 0x010E93 04:AE83: 60        RTS



ofs_036_AE84_03:
; con_004B_03
; bzk optimize
C - - J - - 0x010E94 04:AE84: 20 BD AE  JSR sub_AEBD
C - - - - - 0x010E97 04:AE87: 60        RTS



ofs_036_AE88_04:
; con_004B_04
; bzk optimize
C - - J - - 0x010E98 04:AE88: 20 DF AE  JSR sub_AEDF
C - - - - - 0x010E9B 04:AE8B: 60        RTS



ofs_036_AE8C_05:
; con_004B_05
C - - J - - 0x010E9C 04:AE8C: 20 F0 AE  JSR sub_AEF0
C - - - - - 0x010E9F 04:AE8F: 90 03     BCC bra_AE94_RTS
; bzk optimize, JMP
C - - - - - 0x010EA1 04:AE91: 20 DF AE  JSR sub_AEDF
bra_AE94_RTS:
C - - - - - 0x010EA4 04:AE94: 60        RTS



ofs_036_AE95_06:
; con_004B_06
C - - J - - 0x010EA5 04:AE95: 20 04 AF  JSR sub_AF04
C - - - - - 0x010EA8 04:AE98: 90 FA     BCC bra_AE94_RTS
; bzk optimize, JMP
C - - - - - 0x010EAA 04:AE9A: 20 DF AE  JSR sub_AEDF
C - - - - - 0x010EAD 04:AE9D: 60        RTS



ofs_036_AE9E_07:
; con_004B_07
C - - J - - 0x010EAE 04:AE9E: 20 04 AF  JSR sub_AF04
C - - - - - 0x010EB1 04:AEA1: 90 F1     BCC bra_AE94_RTS
; bzk optimize, JMP
C - - - - - 0x010EB3 04:AEA3: 20 BD AE  JSR sub_AEBD
C - - - - - 0x010EB6 04:AEA6: 60        RTS



ofs_036_AEA7_08:
; con_004B_08
C - - J - - 0x010EB7 04:AEA7: 20 F0 AE  JSR sub_AEF0
C - - - - - 0x010EBA 04:AEAA: 90 E8     BCC bra_AE94_RTS
; bzk optimize, JMP
C - - - - - 0x010EBC 04:AEAC: 20 BD AE  JSR sub_AEBD
C - - - - - 0x010EBF 04:AEAF: 60        RTS



sub_AEB0:
C - - - - - 0x010EC0 04:AEB0: A6 76     LDX ram_obj_index
C - - - - - 0x010EC2 04:AEB2: A5 D9     LDA ram_00D9_array_index
C - - - - - 0x010EC4 04:AEB4: F0 05     BEQ bra_AEBB
C - - - - - 0x010EC6 04:AEB6: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010EC9 04:AEB9: D0 14     BNE bra_AECF
bra_AEBB:
; bzk optimize, useless CLC
C - - - - - 0x010ECB 04:AEBB: 18        CLC
C - - - - - 0x010ECC 04:AEBC: 60        RTS



sub_AEBD:
; bzk optimize, C flag is not checked anywhere
C - - - - - 0x010ECD 04:AEBD: A6 76     LDX ram_obj_index
C - - - - - 0x010ECF 04:AEBF: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010ED2 04:AEC2: F0 19     BEQ bra_AEDD
C - - - - - 0x010ED4 04:AEC4: 29 08     AND #$08
C - - - - - 0x010ED6 04:AEC6: D0 15     BNE bra_AEDD
C - - - - - 0x010ED8 04:AEC8: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010EDB 04:AECB: C9 09     CMP #$09
C - - - - - 0x010EDD 04:AECD: 90 0E     BCC bra_AEDD
bra_AECF:
loc_AECF:
C D 1 - - - 0x010EDF 04:AECF: A6 76     LDX ram_obj_index
C - - - - - 0x010EE1 04:AED1: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x010EE3 04:AED3: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x010EE5 04:AED5: A9 00     LDA #$00
C - - - - - 0x010EE7 04:AED7: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x010EEA 04:AEDA: 18        CLC
; bzk optimize, RTS
C - - - - - 0x010EEB 04:AEDB: 90 01     BCC bra_AEDE_RTS    ; jmp
bra_AEDD:
C - - - - - 0x010EED 04:AEDD: 38        SEC
bra_AEDE_RTS:
C - - - - - 0x010EEE 04:AEDE: 60        RTS



sub_AEDF:
C - - - - - 0x010EEF 04:AEDF: A6 76     LDX ram_obj_index
C - - - - - 0x010EF1 04:AEE1: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x010EF4 04:AEE4: 29 08     AND #$08
C - - - - - 0x010EF6 04:AEE6: F0 F5     BEQ bra_AEDD
C - - - - - 0x010EF8 04:AEE8: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x010EFB 04:AEEB: C9 F9     CMP #$F9
C - - - - - 0x010EFD 04:AEED: 90 E0     BCC bra_AECF
C - - - - - 0x010EFF 04:AEEF: 60        RTS



sub_AEF0:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x010F00 04:AEF0: A6 76     LDX ram_obj_index
C - - - - - 0x010F02 04:AEF2: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010F05 04:AEF5: F0 E6     BEQ bra_AEDD
C - - - - - 0x010F07 04:AEF7: 29 08     AND #$08
C - - - - - 0x010F09 04:AEF9: D0 E2     BNE bra_AEDD
C - - - - - 0x010F0B 04:AEFB: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x010F0E 04:AEFE: C9 01     CMP #$01
C - - - - - 0x010F10 04:AF00: B0 CD     BCS bra_AECF
C - - - - - 0x010F12 04:AF02: 38        SEC
C - - - - - 0x010F13 04:AF03: 60        RTS



sub_AF04:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x010F14 04:AF04: A6 76     LDX ram_obj_index
C - - - - - 0x010F16 04:AF06: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x010F19 04:AF09: 29 08     AND #$08
C - - - - - 0x010F1B 04:AF0B: F0 D0     BEQ bra_AEDD
C - - - - - 0x010F1D 04:AF0D: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x010F20 04:AF10: C9 F1     CMP #$F1
C - - - - - 0x010F22 04:AF12: 90 BB     BCC bra_AECF
C - - - - - 0x010F24 04:AF14: 38        SEC
C - - - - - 0x010F25 04:AF15: 60        RTS



sub_AF16:
C - - - - - 0x010F26 04:AF16: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x010F29 04:AF19: 38        SEC
C - - - - - 0x010F2A 04:AF1A: E9 4C     SBC #$4C    ; con_enemy_id_4C
C - - - - - 0x010F2C 04:AF1C: 85 67     STA ram_0067_t22_counter
C - - - - - 0x010F2E 04:AF1E: A9 01     LDA #$01
bra_AF20_loop:
C - - - - - 0x010F30 04:AF20: C6 67     DEC ram_0067_t22_counter
C - - - - - 0x010F32 04:AF22: 30 03     BMI bra_AF27
C - - - - - 0x010F34 04:AF24: 0A        ASL
C - - - - - 0x010F35 04:AF25: D0 F9     BNE bra_AF20_loop
bra_AF27:
C - - - - - 0x010F37 04:AF27: 05 D8     ORA ram_00D8
C - - - - - 0x010F39 04:AF29: 85 D8     STA ram_00D8
C - - - - - 0x010F3B 04:AF2B: 60        RTS



sub_AF2C:
C - - - - - 0x010F3C 04:AF2C: 20 F2 B1  JSR sub_B1F2
C - - - - - 0x010F3F 04:AF2F: A6 76     LDX ram_obj_index
C - - - - - 0x010F41 04:AF31: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x010F44 04:AF34: C9 31     CMP #$31
C - - - - - 0x010F46 04:AF36: 90 02     BCC bra_AF3A_not_overflow
; if overflow
C - - - - - 0x010F48 04:AF38: A9 30     LDA #$30
bra_AF3A_not_overflow:
C - - - - - 0x010F4A 04:AF3A: 0A        ASL
C - - - - - 0x010F4B 04:AF3B: A8        TAY
C - - - - - 0x010F4C 04:AF3C: B9 4C AF  LDA tbl_AF4C_pos_Y,Y
C - - - - - 0x010F4F 04:AF3F: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x010F52 04:AF42: B9 4D AF  LDA tbl_AF4C_pos_Y + $01,Y
C - - - - - 0x010F55 04:AF45: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x010F58 04:AF48: FE 83 05  INC ram_0583_obj,X
C - - - - - 0x010F5B 04:AF4B: 60        RTS



tbl_AF4C_pos_Y:
- D 1 - - - 0x010F5C 04:AF4C: 80 FC     .word $FC80 ; 00 
- D 1 - - - 0x010F5E 04:AF4E: 80 FC     .word $FC80 ; 01 
- D 1 - - - 0x010F60 04:AF50: 80 FC     .word $FC80 ; 02 
- D 1 - - - 0x010F62 04:AF52: 80 FC     .word $FC80 ; 03 
- D 1 - - - 0x010F64 04:AF54: 80 FC     .word $FC80 ; 04 
- D 1 - - - 0x010F66 04:AF56: 80 FC     .word $FC80 ; 05 
- D 1 - - - 0x010F68 04:AF58: 80 FC     .word $FC80 ; 06 
- D 1 - - - 0x010F6A 04:AF5A: 80 FC     .word $FC80 ; 07 
- D 1 - - - 0x010F6C 04:AF5C: 80 FC     .word $FC80 ; 08 
- D 1 - - - 0x010F6E 04:AF5E: 80 FC     .word $FC80 ; 09 
- D 1 - - - 0x010F70 04:AF60: 80 FC     .word $FC80 ; 0A 
- D 1 - - - 0x010F72 04:AF62: 00 FD     .word $FD00 ; 0B 
- D 1 - - - 0x010F74 04:AF64: 00 FD     .word $FD00 ; 0C 
- D 1 - - - 0x010F76 04:AF66: 00 FD     .word $FD00 ; 0D 
- D 1 - - - 0x010F78 04:AF68: 40 FD     .word $FD40 ; 0E 
- D 1 - - - 0x010F7A 04:AF6A: 80 FD     .word $FD80 ; 0F 
- D 1 - - - 0x010F7C 04:AF6C: 80 FD     .word $FD80 ; 10 
- D 1 - - - 0x010F7E 04:AF6E: C0 FD     .word $FDC0 ; 11 
- D 1 - - - 0x010F80 04:AF70: 00 FE     .word $FE00 ; 12 
- D 1 - - - 0x010F82 04:AF72: 40 FE     .word $FE40 ; 13 
- D 1 - - - 0x010F84 04:AF74: 40 FE     .word $FE40 ; 14 
- D 1 - - - 0x010F86 04:AF76: 80 FE     .word $FE80 ; 15 
- D 1 - - - 0x010F88 04:AF78: C0 FE     .word $FEC0 ; 16 
- D 1 - - - 0x010F8A 04:AF7A: F0 FE     .word $FEF0 ; 17 
- D 1 - - - 0x010F8C 04:AF7C: 00 00     .word $0000 ; 18 
- D 1 - - - 0x010F8E 04:AF7E: 10 01     .word $0110 ; 19 
- D 1 - - - 0x010F90 04:AF80: 40 01     .word $0140 ; 1A 
- D 1 - - - 0x010F92 04:AF82: 80 01     .word $0180 ; 1B 
- D 1 - - - 0x010F94 04:AF84: C0 01     .word $01C0 ; 1C 
- D 1 - - - 0x010F96 04:AF86: C0 01     .word $01C0 ; 1D 
- D 1 - - - 0x010F98 04:AF88: 00 02     .word $0200 ; 1E 
- D 1 - - - 0x010F9A 04:AF8A: 40 02     .word $0240 ; 1F 
- D 1 - - - 0x010F9C 04:AF8C: 80 02     .word $0280 ; 20 
- D 1 - - - 0x010F9E 04:AF8E: 80 02     .word $0280 ; 21 
- D 1 - - - 0x010FA0 04:AF90: C0 02     .word $02C0 ; 22 
- D 1 - - - 0x010FA2 04:AF92: 00 03     .word $0300 ; 23 
- D 1 - - - 0x010FA4 04:AF94: 00 03     .word $0300 ; 24 
- D 1 - - - 0x010FA6 04:AF96: 00 03     .word $0300 ; 25 
- D 1 - - - 0x010FA8 04:AF98: 80 03     .word $0380 ; 26 
- D 1 - - - 0x010FAA 04:AF9A: 80 03     .word $0380 ; 27 
- D 1 - - - 0x010FAC 04:AF9C: 80 03     .word $0380 ; 28 
- D 1 - - - 0x010FAE 04:AF9E: 80 03     .word $0380 ; 29 
- D 1 - - - 0x010FB0 04:AFA0: 80 03     .word $0380 ; 2A 
- D 1 - - - 0x010FB2 04:AFA2: 80 03     .word $0380 ; 2B 
- D 1 - - - 0x010FB4 04:AFA4: 80 03     .word $0380 ; 2C 
- D 1 - - - 0x010FB6 04:AFA6: 80 03     .word $0380 ; 2D 
- D 1 - - - 0x010FB8 04:AFA8: 80 03     .word $0380 ; 2E 
- D 1 - - - 0x010FBA 04:AFAA: 80 03     .word $0380 ; 2F 
- D 1 - - - 0x010FBC 04:AFAC: 80 03     .word $0380 ; 30 



tbl_AFAE:
- D 1 - - - 0x010FBE 04:AFAE: 00        .byte $00   ; 00 
- D 1 - - - 0x010FBF 04:AFAF: FF        .byte $FF   ; 40 
- D 1 - - - 0x010FC0 04:AFB0: 01        .byte $01   ; 80 


; bzk garbage
- - - - - - 0x010FC1 04:AFB1: 00        .byte $00   ; 
- - - - - - 0x010FC2 04:AFB2: 01        .byte $01   ; 
- - - - - - 0x010FC3 04:AFB3: FF        .byte $FF   ; 



tbl_AFB4:
- D 1 - - - 0x010FC4 04:AFB4: 00        .byte $00   ; 00 
- D 1 - - - 0x010FC5 04:AFB5: FE        .byte $FE   ; 40 
- D 1 - - - 0x010FC6 04:AFB6: 02        .byte $02   ; 80 



tbl_AFB7:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- - - - - - 0x010FC7 04:AFB7: 00        .byte $00, $00   ; 00 
- D 1 - - - 0x010FC9 04:AFB9: FF        .byte $FF, $80   ; 40 
- D 1 - - - 0x010FCB 04:AFBB: 00        .byte $00, $80   ; 80 



tbl_AFBD:
- - - - - - 0x010FCD 04:AFBD: 00        .byte $00   ; 00 
- D 1 - - - 0x010FCE 04:AFBE: FD        .byte $FD   ; 40 
- D 1 - - - 0x010FCF 04:AFBF: 03        .byte $03   ; 80 



sub_AFC0:
C - - - - - 0x010FD0 04:AFC0: A5 A8     LDA ram_plr_index
C - - - - - 0x010FD2 04:AFC2: F0 07     BEQ bra_AFCB
C - - - - - 0x010FD4 04:AFC4: AD 22 04  LDA ram_0422_flag
C - - - - - 0x010FD7 04:AFC7: F0 23     BEQ bra_AFEC_RTS
C - - - - - 0x010FD9 04:AFC9: D0 05     BNE bra_AFD0    ; jmp
bra_AFCB:
C - - - - - 0x010FDB 04:AFCB: AD 2F 04  LDA ram_042F_shield_script
C - - - - - 0x010FDE 04:AFCE: F0 1C     BEQ bra_AFEC_RTS
bra_AFD0:
C - - - - - 0x010FE0 04:AFD0: A6 76     LDX ram_obj_index
C - - - - - 0x010FE2 04:AFD2: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x010FE5 04:AFD5: C9 04     CMP #$04
C - - - - - 0x010FE7 04:AFD7: F0 13     BEQ bra_AFEC_RTS
C - - - - - 0x010FE9 04:AFD9: A5 A4     LDA ram_plr_direction
; bzk optimize, useless AND 01
C - - - - - 0x010FEB 04:AFDB: 29 01     AND #$01
C - - - - - 0x010FED 04:AFDD: 0A        ASL
C - - - - - 0x010FEE 04:AFDE: AA        TAX
C - - - - - 0x010FEF 04:AFDF: BD ED AF  LDA tbl_AFED,X
C - - - - - 0x010FF2 04:AFE2: 85 5B     STA ram_005B_t60_jmp
C - - - - - 0x010FF4 04:AFE4: BD EE AF  LDA tbl_AFED + $01,X
C - - - - - 0x010FF7 04:AFE7: 85 5C     STA ram_005B_t60_jmp + $01
C - - - - - 0x010FF9 04:AFE9: 6C 5B 00  JMP (ram_005B_t60_jmp)
bra_AFEC_RTS:
C - - - - - 0x010FFC 04:AFEC: 60        RTS



tbl_AFED:
- D 1 - - - 0x010FFD 04:AFED: F1 AF     .word ofs_035_AFF1_00_left
- D 1 - - - 0x010FFF 04:AFEF: 05 B0     .word ofs_035_B005_01_right



ofs_035_AFF1_00_left:
C - - J - - 0x011001 04:AFF1: A6 76     LDX ram_obj_index
C - - - - - 0x011003 04:AFF3: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x011006 04:AFF6: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x011009 04:AFF9: B0 2B     BCS bra_B026_RTS
C - - - - - 0x01100B 04:AFFB: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01100E 04:AFFE: 29 01     AND #$01
C - - - - - 0x011010 04:B000: F0 24     BEQ bra_B026_RTS
C - - - - - 0x011012 04:B002: 4C 16 B0  JMP loc_B016



ofs_035_B005_01_right:
C - - J - - 0x011015 04:B005: A6 76     LDX ram_obj_index
C - - - - - 0x011017 04:B007: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01101A 04:B00A: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x01101D 04:B00D: 90 17     BCC bra_B026_RTS
C - - - - - 0x01101F 04:B00F: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011022 04:B012: 29 01     AND #$01
C - - - - - 0x011024 04:B014: D0 10     BNE bra_B026_RTS
loc_B016:
C D 1 - - - 0x011026 04:B016: A9 04     LDA #$04
C - - - - - 0x011028 04:B018: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x01102B 04:B01B: A9 00     LDA #$00
C - - - - - 0x01102D 04:B01D: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x011030 04:B020: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x011033 04:B023: 9D 00 05  STA ram_spd_X_fr_obj,X
bra_B026_RTS:
C - - - - - 0x011036 04:B026: 60        RTS



sub_B027:
- - - - - - 0x011037 04:B027: A6 76     LDX ram_obj_index
- - - - - - 0x011039 04:B029: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x01103C 04:B02C: 10 3A     BPL bra_B068_RTS
- - - - - - 0x01103E 04:B02E: BD D9 04  LDA ram_04D9_obj,X
- - - - - - 0x011041 04:B031: C9 01     CMP #$01
- - - - - - 0x011043 04:B033: D0 33     BNE bra_B068_RTS
- - - - - - 0x011045 04:B035: AD 01 04  LDA ram_player_state_1
- - - - - - 0x011048 04:B038: C9 02     CMP #con_plr_state_jump
- - - - - - 0x01104A 04:B03A: D0 2C     BNE bra_B068_RTS
- - - - - - 0x01104C 04:B03C: AD 13 04  LDA ram_spd_Y_lo_player
- - - - - - 0x01104F 04:B03F: 10 27     BPL bra_B068_RTS
- - - - - - 0x011051 04:B041: AD 15 04  LDA ram_0415_player_counter
- - - - - - 0x011054 04:B044: C9 04     CMP #$04
- - - - - - 0x011056 04:B046: B0 20     BCS bra_B068_RTS
- - - - - - 0x011058 04:B048: BD 5B 05  LDA ram_055B_obj_anim_counter,X
- - - - - - 0x01105B 04:B04B: 29 F0     AND #$F0
- - - - - - 0x01105D 04:B04D: D0 19     BNE bra_B068_RTS
- - - - - - 0x01105F 04:B04F: A9 00     LDA #$00
- - - - - - 0x011061 04:B051: 9D 34 05  STA ram_0534_obj,X
- - - - - - 0x011064 04:B054: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x011067 04:B057: 29 20     AND #$20
- - - - - - 0x011069 04:B059: 49 20     EOR #$20
- - - - - - 0x01106B 04:B05B: 9D 41 05  STA ram_0541_obj_flags,X
- - - - - - 0x01106E 04:B05E: A9 01     LDA #$01
- - - - - - 0x011070 04:B060: 9D 4E 05  STA ram_054E_obj,X
- - - - - - 0x011073 04:B063: A9 10     LDA #$10
- - - - - - 0x011075 04:B065: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_B068_RTS:
- - - - - - 0x011078 04:B068: 60        RTS


; bzk garbage
- - - - - - 0x011079 04:B069: A6 76     LDX ram_obj_index
- - - - - - 0x01107B 04:B06B: BD 5B 05  LDA ram_055B_obj_anim_counter,X
- - - - - - 0x01107E 04:B06E: 29 0F     AND #$0F
- - - - - - 0x011080 04:B070: C9 09     CMP #$09
- - - - - - 0x011082 04:B072: D0 03     BNE bra_B077_RTS
- - - - - - 0x011084 04:B074: 4C 15 B2  JMP loc_B215
bra_B077_RTS:
- - - - - - 0x011087 04:B077: 60        RTS


; bzk garbage
- - - - - - 0x011088 04:B078: A6 76     LDX ram_obj_index
- - - - - - 0x01108A 04:B07A: BD D9 04  LDA ram_04D9_obj,X
- - - - - - 0x01108D 04:B07D: C9 06     CMP #$06
- - - - - - 0x01108F 04:B07F: F0 1A     BEQ bra_B09B
- - - - - - 0x011091 04:B081: BD D9 04  LDA ram_04D9_obj,X
- - - - - - 0x011094 04:B084: C9 01     CMP #$01
- - - - - - 0x011096 04:B086: D0 16     BNE bra_B09E_RTS
- - - - - - 0x011098 04:B088: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x01109B 04:B08B: 29 02     AND #$02
- - - - - - 0x01109D 04:B08D: 4A        LSR
- - - - - - 0x01109E 04:B08E: 85 67     STA ram_0067_temp
- - - - - - 0x0110A0 04:B090: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x0110A3 04:B093: 29 FE     AND #$FE
- - - - - - 0x0110A5 04:B095: 05 67     ORA ram_0067_temp
- - - - - - 0x0110A7 04:B097: 9D 41 05  STA ram_0541_obj_flags,X
- - - - - - 0x0110AA 04:B09A: 60        RTS
bra_B09B:
; bzk optimize, JMP
- - - - - - 0x0110AB 04:B09B: 20 04 AD  JSR sub_AD04
bra_B09E_RTS:
- - - - - - 0x0110AE 04:B09E: 60        RTS



sub_B09F:
C - - - - - 0x0110AF 04:B09F: A6 76     LDX ram_obj_index
C - - - - - 0x0110B1 04:B0A1: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x0110B4 04:B0A4: 30 0C     BMI bra_B0B2_RTS
C - - - - - 0x0110B6 04:B0A6: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x0110B9 04:B0A9: C9 02     CMP #$02
C - - - - - 0x0110BB 04:B0AB: D0 05     BNE bra_B0B2_RTS
C - - - - - 0x0110BD 04:B0AD: A9 10     LDA #$10
C - - - - - 0x0110BF 04:B0AF: 9D 5B 05  STA ram_055B_obj_anim_counter,X
bra_B0B2_RTS:
C - - - - - 0x0110C2 04:B0B2: 60        RTS



sub_B0B3:
C - - - - - 0x0110C3 04:B0B3: A6 76     LDX ram_obj_index
C - - - - - 0x0110C5 04:B0B5: BD 5B 05  LDA ram_055B_obj_anim_counter,X
C - - - - - 0x0110C8 04:B0B8: 29 0F     AND #$0F
C - - - - - 0x0110CA 04:B0BA: C5 6C     CMP ram_006C_t01
C - - - - - 0x0110CC 04:B0BC: D0 20     BNE bra_B0DE_RTS
C - - - - - 0x0110CE 04:B0BE: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x0110D1 04:B0C1: 29 FE     AND #$FE
C - - - - - 0x0110D3 04:B0C3: 85 67     STA ram_0067_t23
C - - - - - 0x0110D5 04:B0C5: 29 DE     AND #$DE
C - - - - - 0x0110D7 04:B0C7: 85 69     STA ram_0069_t16_flag_1
C - - - - - 0x0110D9 04:B0C9: A5 67     LDA ram_0067_t23
C - - - - - 0x0110DB 04:B0CB: 18        CLC
C - - - - - 0x0110DC 04:B0CC: 69 20     ADC #$20
C - - - - - 0x0110DE 04:B0CE: 29 20     AND #$20
C - - - - - 0x0110E0 04:B0D0: 85 68     STA ram_0068_t11_flag_2
; / 20
C - - - - - 0x0110E2 04:B0D2: 4A        LSR
C - - - - - 0x0110E3 04:B0D3: 4A        LSR
C - - - - - 0x0110E4 04:B0D4: 4A        LSR
C - - - - - 0x0110E5 04:B0D5: 4A        LSR
C - - - - - 0x0110E6 04:B0D6: 4A        LSR
; 
C - - - - - 0x0110E7 04:B0D7: 05 69     ORA ram_0069_t16_flag_1
C - - - - - 0x0110E9 04:B0D9: 05 68     ORA ram_0068_t11_flag_2
C - - - - - 0x0110EB 04:B0DB: 9D 41 05  STA ram_0541_obj_flags,X
bra_B0DE_RTS:
C - - - - - 0x0110EE 04:B0DE: 60        RTS



sub_B0DF:
C - - - - - 0x0110EF 04:B0DF: A6 76     LDX ram_obj_index
C - - - - - 0x0110F1 04:B0E1: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0110F4 04:B0E4: C9 06     CMP #$06
C - - - - - 0x0110F6 04:B0E6: F0 04     BEQ bra_B0EC
C - - - - - 0x0110F8 04:B0E8: C9 09     CMP #$09
C - - - - - 0x0110FA 04:B0EA: D0 19     BNE bra_B105_RTS
bra_B0EC:
C - - - - - 0x0110FC 04:B0EC: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0110FF 04:B0EF: 29 0F     AND #$0F
C - - - - - 0x011101 04:B0F1: C9 06     CMP #$06
C - - - - - 0x011103 04:B0F3: F0 10     BEQ bra_B105_RTS
C - - - - - 0x011105 04:B0F5: AD 01 04  LDA ram_player_state_1
C - - - - - 0x011108 04:B0F8: C9 05     CMP #con_plr_state_duck
C - - - - - 0x01110A 04:B0FA: F0 04     BEQ bra_B100
C - - - - - 0x01110C 04:B0FC: C9 06     CMP #con_plr_state_attack_ducking
C - - - - - 0x01110E 04:B0FE: D0 05     BNE bra_B105_RTS
bra_B100:
C - - - - - 0x011110 04:B100: A9 07     LDA #$07
C - - - - - 0x011112 04:B102: 9D D9 04  STA ram_04D9_obj,X
bra_B105_RTS:
C - - - - - 0x011115 04:B105: 60        RTS



sub_B106:
C - - - - - 0x011116 04:B106: A6 76     LDX ram_obj_index
C - - - - - 0x011118 04:B108: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01111B 04:B10B: C9 03     CMP #con_enemy_id_03
C - - - - - 0x01111D 04:B10D: F0 0B     BEQ bra_B11A
C - - - - - 0x01111F 04:B10F: C9 04     CMP #con_enemy_id_04
C - - - - - 0x011121 04:B111: D0 1F     BNE bra_B132_RTS
- - - - - - 0x011123 04:B113: BD 5B 05  LDA ram_055B_obj_anim_counter,X
- - - - - - 0x011126 04:B116: 29 F0     AND #$F0
- - - - - - 0x011128 04:B118: D0 18     BNE bra_B132_RTS
bra_B11A:
- - - - - - 0x01112A 04:B11A: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
- - - - - - 0x01112D 04:B11D: D0 13     BNE bra_B132_RTS
- - - - - - 0x01112F 04:B11F: A5 A4     LDA ram_plr_direction
; bzk optimize, useless AND 01
- - - - - - 0x011131 04:B121: 29 01     AND #$01
- - - - - - 0x011133 04:B123: 0A        ASL
- - - - - - 0x011134 04:B124: AA        TAX
- - - - - - 0x011135 04:B125: BD 33 B1  LDA tbl_B133,X
- - - - - - 0x011138 04:B128: 85 5B     STA ram_005B_t5F_jmp
- - - - - - 0x01113A 04:B12A: BD 34 B1  LDA tbl_B133 + $01,X
- - - - - - 0x01113D 04:B12D: 85 5C     STA ram_005B_t5F_jmp + $01
- - - - - - 0x01113F 04:B12F: 6C 5B 00  JMP (ram_005B_t5F_jmp)
bra_B132_RTS:
C - - - - - 0x011142 04:B132: 60        RTS



tbl_B133:
- - - - - - 0x011143 04:B133: 37 B1     .word ofs_034_B137_00_left
- - - - - - 0x011145 04:B135: 53 B1     .word ofs_034_B153_01_right



ofs_034_B137_00_left:
- - - - - - 0x011147 04:B137: A6 76     LDX ram_obj_index
- - - - - - 0x011149 04:B139: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
- - - - - - 0x01114C 04:B13C: CD 04 04  CMP ram_pos_X_lo_player
- - - - - - 0x01114F 04:B13F: B0 11     BCS bra_B152_RTS
- - - - - - 0x011151 04:B141: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x011154 04:B144: 29 01     AND #$01
- - - - - - 0x011156 04:B146: F0 0A     BEQ bra_B152_RTS
- - - - - - 0x011158 04:B148: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x01115B 04:B14B: 29 7F     AND #$7F
- - - - - - 0x01115D 04:B14D: 09 80     ORA #$80
- - - - - - 0x01115F 04:B14F: 9D 41 05  STA ram_0541_obj_flags,X
bra_B152_RTS:
- - - - - - 0x011162 04:B152: 60        RTS



ofs_034_B153_01_right:
- - - - - - 0x011163 04:B153: A6 76     LDX ram_obj_index
- - - - - - 0x011165 04:B155: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
- - - - - - 0x011168 04:B158: CD 04 04  CMP ram_pos_X_lo_player
- - - - - - 0x01116B 04:B15B: 90 11     BCC bra_B16E_RTS
- - - - - - 0x01116D 04:B15D: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x011170 04:B160: 29 01     AND #$01
- - - - - - 0x011172 04:B162: D0 0A     BNE bra_B16E_RTS
- - - - - - 0x011174 04:B164: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x011177 04:B167: 29 7F     AND #$7F
- - - - - - 0x011179 04:B169: 09 80     ORA #$80
- - - - - - 0x01117B 04:B16B: 9D 41 05  STA ram_0541_obj_flags,X
bra_B16E_RTS:
- - - - - - 0x01117E 04:B16E: 60        RTS



sub_B16F:
C - - - - - 0x01117F 04:B16F: A6 76     LDX ram_obj_index
C - - - - - 0x011181 04:B171: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x011184 04:B174: D0 4C     BNE bra_B1C2_RTS
C - - - - - 0x011186 04:B176: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x011189 04:B179: C9 07     CMP #con_enemy_id_07
C - - - - - 0x01118B 04:B17B: F0 08     BEQ bra_B185
C - - - - - 0x01118D 04:B17D: C9 08     CMP #con_enemy_id_08
C - - - - - 0x01118F 04:B17F: F0 04     BEQ bra_B185
C - - - - - 0x011191 04:B181: C9 2C     CMP #con_enemy_id_2C
C - - - - - 0x011193 04:B183: D0 23     BNE bra_B1A8
bra_B185:
C - - - - - 0x011195 04:B185: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x011198 04:B188: 38        SEC
C - - - - - 0x011199 04:B189: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x01119C 04:B18C: 10 07     BPL bra_B195
; bzk optimize, EOR FF + CLC + ADC 01
C - - - - - 0x01119E 04:B18E: 85 67     STA ram_0067_t24
C - - - - - 0x0111A0 04:B190: A9 00     LDA #$00
C - - - - - 0x0111A2 04:B192: 38        SEC
C - - - - - 0x0111A3 04:B193: E5 67     SBC ram_0067_t24
bra_B195:
C - - - - - 0x0111A5 04:B195: C9 40     CMP #$40
C - - - - - 0x0111A7 04:B197: B0 0F     BCS bra_B1A8
C - - - - - 0x0111A9 04:B199: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0111AC 04:B19C: DD 8B 04  CMP ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0111AF 04:B19F: 90 07     BCC bra_B1A8
C - - - - - 0x0111B1 04:B1A1: A9 18     LDA #$18
C - - - - - 0x0111B3 04:B1A3: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0111B6 04:B1A6: D0 05     BNE bra_B1AD    ; jmp
bra_B1A8:
C - - - - - 0x0111B8 04:B1A8: A9 00     LDA #$00
C - - - - - 0x0111BA 04:B1AA: 9D 83 05  STA ram_0583_obj,X
bra_B1AD:
C - - - - - 0x0111BD 04:B1AD: 18        CLC
C - - - - - 0x0111BE 04:B1AE: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0111C1 04:B1B1: 29 C0     AND #$C0
C - - - - - 0x0111C3 04:B1B3: 2A        ROL
C - - - - - 0x0111C4 04:B1B4: 2A        ROL
C - - - - - 0x0111C5 04:B1B5: 2A        ROL
C - - - - - 0x0111C6 04:B1B6: A8        TAY
C - - - - - 0x0111C7 04:B1B7: B9 AE AF  LDA tbl_AFAE,Y
C - - - - - 0x0111CA 04:B1BA: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0111CD 04:B1BD: A9 04     LDA #$04
C - - - - - 0x0111CF 04:B1BF: 9D D9 04  STA ram_04D9_obj,X
bra_B1C2_RTS:
C - - - - - 0x0111D2 04:B1C2: 60        RTS



sub_B1C3:
C - - - - - 0x0111D3 04:B1C3: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0111D6 04:B1C6: C9 30     CMP #$30    ; con_enemy_id_30
C - - - - - 0x0111D8 04:B1C8: B0 27     BCS bra_B1F1_RTS
C - - - - - 0x0111DA 04:B1CA: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0111DD 04:B1CD: D0 22     BNE bra_B1F1_RTS
C - - - - - 0x0111DF 04:B1CF: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0111E2 04:B1D2: C9 F0     CMP #$F0
C - - - - - 0x0111E4 04:B1D4: 90 07     BCC bra_B1DD
C - - - - - 0x0111E6 04:B1D6: A9 ED     LDA #$ED
C - - - - - 0x0111E8 04:B1D8: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0111EB 04:B1DB: D0 09     BNE bra_B1E6    ; jmp
bra_B1DD:
C - - - - - 0x0111ED 04:B1DD: C9 10     CMP #$10
C - - - - - 0x0111EF 04:B1DF: B0 63     BCS bra_B244_RTS
C - - - - - 0x0111F1 04:B1E1: A9 13     LDA #$13
C - - - - - 0x0111F3 04:B1E3: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
bra_B1E6:
C - - - - - 0x0111F6 04:B1E6: A9 00     LDA #$00
C - - - - - 0x0111F8 04:B1E8: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0111FB 04:B1EB: 20 15 B2  JSR sub_B215
; bzk optimize, JMP
C - - - - - 0x0111FE 04:B1EE: 20 D0 A4  JSR sub_A4D0
bra_B1F1_RTS:
C - - - - - 0x011201 04:B1F1: 60        RTS



sub_B1F2:
C - - - - - 0x011202 04:B1F2: A6 76     LDX ram_obj_index
C - - - - - 0x011204 04:B1F4: BD 83 05  LDA ram_0583_obj,X
C - - - - - 0x011207 04:B1F7: C9 18     CMP #$18
C - - - - - 0x011209 04:B1F9: D0 49     BNE bra_B244_RTS
sub_B1FB:
C - - - - - 0x01120B 04:B1FB: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01120E 04:B1FE: 29 01     AND #$01
C - - - - - 0x011210 04:B200: A8        TAY
C - - - - - 0x011211 04:B201: A9 FC     LDA #$FC
C - - - - - 0x011213 04:B203: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x011215 04:B205: B9 26 AE  LDA tbl_AE26,Y
C - - - - - 0x011218 04:B208: 85 6E     STA ram_006E_t08_pos_X_lo
C - - - - - 0x01121A 04:B20A: 20 2A AD  JSR sub_AD2A
C - - - - - 0x01121D 04:B20D: A6 76     LDX ram_obj_index
C - - - - - 0x01121F 04:B20F: A5 BC     LDA ram_00BC
C - - - - - 0x011221 04:B211: 29 01     AND #$01
C - - - - - 0x011223 04:B213: F0 2F     BEQ bra_B244_RTS
sub_B215:
loc_B215:
C - - - - - 0x011225 04:B215: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011228 04:B218: 29 01     AND #$01
C - - - - - 0x01122A 04:B21A: 49 01     EOR #$01
C - - - - - 0x01122C 04:B21C: 85 67     STA ram_0067_t25
C - - - - - 0x01122E 04:B21E: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011231 04:B221: 29 FE     AND #$FE
C - - - - - 0x011233 04:B223: 05 67     ORA ram_0067_t25
C - - - - - 0x011235 04:B225: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x011238 04:B228: 20 1D A5  JSR sub_A51D
C - - - - - 0x01123B 04:B22B: 20 45 B2  JSR sub_B245
C - - - - - 0x01123E 04:B22E: 18        CLC
C - - - - - 0x01123F 04:B22F: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011242 04:B232: 29 01     AND #$01
C - - - - - 0x011244 04:B234: 6A        ROR
C - - - - - 0x011245 04:B235: 6A        ROR
C - - - - - 0x011246 04:B236: 6A        ROR
C - - - - - 0x011247 04:B237: 6A        ROR
C - - - - - 0x011248 04:B238: 85 67     STA ram_0067_t26
C - - - - - 0x01124A 04:B23A: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01124D 04:B23D: 29 DF     AND #$DF
C - - - - - 0x01124F 04:B23F: 05 67     ORA ram_0067_t26
C - - - - - 0x011251 04:B241: 9D 41 05  STA ram_0541_obj_flags,X
bra_B244_RTS:
C - - - - - 0x011254 04:B244: 60        RTS



loc_B245:
sub_B245:
C D 1 - - - 0x011255 04:B245: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x011257 04:B247: 48        PHA
C - - - - - 0x011258 04:B248: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01125A 04:B24A: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01125C 04:B24C: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01125F 04:B24F: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x011262 04:B252: 0A        ASL
C - - - - - 0x011263 04:B253: A8        TAY
C - - - - - 0x011264 04:B254: B9 81 8A  LDA tbl_0x00AA91,Y
C - - - - - 0x011267 04:B257: 85 5B     STA ram_005B_t10_data
C - - - - - 0x011269 04:B259: C8        INY
C - - - - - 0x01126A 04:B25A: B9 81 8A  LDA tbl_0x00AA91,Y
C - - - - - 0x01126D 04:B25D: 85 5C     STA ram_005B_t10_data + $01
C - - - - - 0x01126F 04:B25F: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x011272 04:B262: 29 3F     AND #$3F
C - - - - - 0x011274 04:B264: 0A        ASL
C - - - - - 0x011275 04:B265: A8        TAY
C - - - - - 0x011276 04:B266: B1 5B     LDA (ram_005B_t10_data),Y
C - - - - - 0x011278 04:B268: 85 5F     STA ram_005F_t03_data
C - - - - - 0x01127A 04:B26A: C8        INY
C - - - - - 0x01127B 04:B26B: B1 5B     LDA (ram_005B_t10_data),Y
C - - - - - 0x01127D 04:B26D: 85 60     STA ram_005F_t03_data + $01
C - - - - - 0x01127F 04:B26F: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011282 04:B272: 29 01     AND #$01
C - - - - - 0x011284 04:B274: 0A        ASL
C - - - - - 0x011285 04:B275: A8        TAY
C - - - - - 0x011286 04:B276: B1 5F     LDA (ram_005F_t03_data),Y
C - - - - - 0x011288 04:B278: 9D BF 04  STA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x01128B 04:B27B: 85 61     STA ram_0061_t02_data
C - - - - - 0x01128D 04:B27D: C8        INY
C - - - - - 0x01128E 04:B27E: B1 5F     LDA (ram_005F_t03_data),Y
C - - - - - 0x011290 04:B280: 9D CC 04  STA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x011293 04:B283: 85 62     STA ram_0061_t02_data + $01
C - - - - - 0x011295 04:B285: A0 00     LDY #$00
C - - - - - 0x011297 04:B287: B1 61     LDA (ram_0061_t02_data),Y
C - - - - - 0x011299 04:B289: 10 09     BPL bra_B294
C - - - - - 0x01129B 04:B28B: C8        INY ; 01
C - - - - - 0x01129C 04:B28C: B1 61     LDA (ram_0061_t02_data),Y
C - - - - - 0x01129E 04:B28E: 29 7F     AND #$7F
C - - - - - 0x0112A0 04:B290: 85 27     STA ram_chr_bank_spr + $03
C - - - - - 0x0112A2 04:B292: D0 03     BNE bra_B297    ; jmp
bra_B294:
C - - - - - 0x0112A4 04:B294: 85 26     STA ram_chr_bank_spr + $02
C - - - - - 0x0112A6 04:B296: C8        INY ; 01
bra_B297:
C - - - - - 0x0112A7 04:B297: C8        INY ; 02
C - - - - - 0x0112A8 04:B298: B1 61     LDA (ram_0061_t02_data),Y
C - - - - - 0x0112AA 04:B29A: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x0112AD 04:B29D: C8        INY ; 03
C - - - - - 0x0112AE 04:B29E: B1 61     LDA (ram_0061_t02_data),Y
C - - - - - 0x0112B0 04:B2A0: 9D A5 04  STA ram_spr_data_ptr_lo_obj + $03,X
C - - - - - 0x0112B3 04:B2A3: C8        INY ; 04
C - - - - - 0x0112B4 04:B2A4: B1 61     LDA (ram_0061_t02_data),Y
C - - - - - 0x0112B6 04:B2A6: 9D B2 04  STA ram_spr_data_ptr_hi_obj + $03,X
C - - - - - 0x0112B9 04:B2A9: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0112BC 04:B2AC: 29 02     AND #$02
C - - - - - 0x0112BE 04:B2AE: F0 07     BEQ bra_B2B7
C - - - - - 0x0112C0 04:B2B0: A9 00     LDA #$00
C - - - - - 0x0112C2 04:B2B2: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x0112C5 04:B2B5: F0 08     BEQ bra_B2BF    ; jmp
bra_B2B7:
C - - - - - 0x0112C7 04:B2B7: C8        INY
C - - - - - 0x0112C8 04:B2B8: C8        INY
C - - - - - 0x0112C9 04:B2B9: C8        INY ; 07
C - - - - - 0x0112CA 04:B2BA: B1 61     LDA (ram_0061_t02_data),Y
C - - - - - 0x0112CC 04:B2BC: 9D 6C 05  STA ram_056C_obj,X
bra_B2BF:
C - - - - - 0x0112CF 04:B2BF: 68        PLA
C - - - - - 0x0112D0 04:B2C0: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0112D2 04:B2C2: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0112D5 04:B2C5: 60        RTS



sub_B2C6:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0112D6 04:B2C6: A6 76     LDX ram_obj_index
C - - - - - 0x0112D8 04:B2C8: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0112DB 04:B2CB: F0 1E     BEQ bra_B2EB
C - - - - - 0x0112DD 04:B2CD: 30 09     BMI bra_B2D8
C - - - - - 0x0112DF 04:B2CF: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0112E2 04:B2D2: C5 67     CMP ram_0067_t20
C - - - - - 0x0112E4 04:B2D4: B0 09     BCS bra_B2DF
C - - - - - 0x0112E6 04:B2D6: 90 13     BCC bra_B2EB    ; jmp
bra_B2D8:
C - - - - - 0x0112E8 04:B2D8: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0112EB 04:B2DB: C5 68     CMP ram_0068_t09
C - - - - - 0x0112ED 04:B2DD: B0 0C     BCS bra_B2EB
bra_B2DF:
C - - - - - 0x0112EF 04:B2DF: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x0112F1 04:B2E1: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x0112F3 04:B2E3: A9 00     LDA #$00
C - - - - - 0x0112F5 04:B2E5: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x0112F8 04:B2E8: 18        CLC
; bzk optimize, RTS
C - - - - - 0x0112F9 04:B2E9: 90 01     BCC bra_B2EC_RTS    ; jmp
bra_B2EB:
C - - - - - 0x0112FB 04:B2EB: 38        SEC
bra_B2EC_RTS:
C - - - - - 0x0112FC 04:B2EC: 60        RTS



sub_B2ED:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0112FD 04:B2ED: A6 76     LDX ram_obj_index
C - - - - - 0x0112FF 04:B2EF: BD 98 04  LDA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x011302 04:B2F2: F0 12     BEQ bra_B306
C - - - - - 0x011304 04:B2F4: 30 09     BMI bra_B2FF
C - - - - - 0x011306 04:B2F6: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x011309 04:B2F9: C5 67     CMP ram_0067_t20
C - - - - - 0x01130B 04:B2FB: B0 E2     BCS bra_B2DF
C - - - - - 0x01130D 04:B2FD: 90 07     BCC bra_B306    ; jmp
bra_B2FF:
C - - - - - 0x01130F 04:B2FF: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x011312 04:B302: C5 68     CMP ram_0068_t09
C - - - - - 0x011314 04:B304: 90 D9     BCC bra_B2DF
bra_B306:
C - - - - - 0x011316 04:B306: 38        SEC
C - - - - - 0x011317 04:B307: 60        RTS



sub_B308:
C - - - - - 0x011318 04:B308: A6 76     LDX ram_obj_index
C - - - - - 0x01131A 04:B30A: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01131D 04:B30D: 10 10     BPL bra_B31F_RTS
C - - - - - 0x01131F 04:B30F: A9 40     LDA #$40
C - - - - - 0x011321 04:B311: 85 67     STA ram_0067_t20
C - - - - - 0x011323 04:B313: A9 C0     LDA #$C0
C - - - - - 0x011325 04:B315: 85 68     STA ram_0068_t09
C - - - - - 0x011327 04:B317: 20 C6 B2  JSR sub_B2C6
C - - - - - 0x01132A 04:B31A: 90 03     BCC bra_B31F_RTS
; bzk optimize, JMP
C - - - - - 0x01132C 04:B31C: 20 ED B2  JSR sub_B2ED
bra_B31F_RTS:
C - - - - - 0x01132F 04:B31F: 60        RTS



sub_B320:
C - - - - - 0x011330 04:B320: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x011333 04:B323: 29 3F     AND #$3F
C - - - - - 0x011335 04:B325: C9 02     CMP #$02
C - - - - - 0x011337 04:B327: F0 F6     BEQ bra_B31F_RTS
C - - - - - 0x011339 04:B329: C9 03     CMP #$03
C - - - - - 0x01133B 04:B32B: F0 F2     BEQ bra_B31F_RTS
C - - - - - 0x01133D 04:B32D: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011340 04:B330: 29 1C     AND #$1C
C - - - - - 0x011342 04:B332: 85 67     STA ram_0067_t27_flag
C - - - - - 0x011344 04:B334: F0 E9     BEQ bra_B31F_RTS
C - - - - - 0x011346 04:B336: C9 10     CMP #$10
C - - - - - 0x011348 04:B338: D0 28     BNE bra_B362
C - - - - - 0x01134A 04:B33A: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01134D 04:B33D: C9 2A     CMP #$2A    ; con_enemy_id_2A
C - - - - - 0x01134F 04:B33F: 90 04     BCC bra_B345
C - - - - - 0x011351 04:B341: A9 00     LDA #$00
C - - - - - 0x011353 04:B343: F0 13     BEQ bra_B358    ; jmp
bra_B345:
C - - - - - 0x011355 04:B345: A9 00     LDA #$00
C - - - - - 0x011357 04:B347: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01135A 04:B34A: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x01135D 04:B34D: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x011360 04:B350: 90 04     BCC bra_B356
C - - - - - 0x011362 04:B352: A9 02     LDA #$02
C - - - - - 0x011364 04:B354: D0 02     BNE bra_B358    ; jmp
bra_B356:
C - - - - - 0x011366 04:B356: A9 FE     LDA #$FE
bra_B358:
C - - - - - 0x011368 04:B358: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x01136B 04:B35B: A9 02     LDA #$02
C - - - - - 0x01136D 04:B35D: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x011370 04:B360: D0 5B     BNE bra_B3BD_RTS    ; jmp
bra_B362:
C - - - - - 0x011372 04:B362: 20 2C A9  JSR sub_A92C
C - - - - - 0x011375 04:B365: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x011378 04:B368: 29 E3     AND #$E3
C - - - - - 0x01137A 04:B36A: 9D 41 05  STA ram_0541_obj_flags,X
C - - - - - 0x01137D 04:B36D: A9 08     LDA #$08
C - - - - - 0x01137F 04:B36F: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x011382 04:B372: A9 20     LDA #$20
C - - - - - 0x011384 04:B374: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x011387 04:B377: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01138A 04:B37A: 09 02     ORA #$02
C - - - - - 0x01138C 04:B37C: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01138F 04:B37F: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x011392 04:B382: C9 27     CMP #con_enemy_id_27
C - - - - - 0x011394 04:B384: F0 37     BEQ bra_B3BD_RTS
C - - - - - 0x011396 04:B386: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x011399 04:B389: 30 32     BMI bra_B3BD_RTS
C - - - - - 0x01139B 04:B38B: 29 3F     AND #$3F
C - - - - - 0x01139D 04:B38D: C9 04     CMP #$04
C - - - - - 0x01139F 04:B38F: F0 2C     BEQ bra_B3BD_RTS
C - - - - - 0x0113A1 04:B391: 29 C0     AND #$C0
C - - - - - 0x0113A3 04:B393: 09 03     ORA #$03
C - - - - - 0x0113A5 04:B395: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0113A8 04:B398: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0113AB 04:B39B: C9 1B     CMP #$1B    ; con_enemy_id_1B
C - - - - - 0x0113AD 04:B39D: B0 1E     BCS bra_B3BD_RTS
C - - - - - 0x0113AF 04:B39F: A5 67     LDA ram_0067_t27_flag
C - - - - - 0x0113B1 04:B3A1: 29 04     AND #$04
C - - - - - 0x0113B3 04:B3A3: F0 07     BEQ bra_B3AC
C - - - - - 0x0113B5 04:B3A5: A9 00     LDA #$00
C - - - - - 0x0113B7 04:B3A7: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x0113BA 04:B3AA: F0 11     BEQ bra_B3BD_RTS    ; jmp
bra_B3AC:
C - - - - - 0x0113BC 04:B3AC: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0113BF 04:B3AF: CD 04 04  CMP ram_pos_X_lo_player
C - - - - - 0x0113C2 04:B3B2: 90 04     BCC bra_B3B8
C - - - - - 0x0113C4 04:B3B4: A9 01     LDA #$01
C - - - - - 0x0113C6 04:B3B6: D0 02     BNE bra_B3BA    ; jmp
bra_B3B8:
C - - - - - 0x0113C8 04:B3B8: A9 FF     LDA #$FF
bra_B3BA:
C - - - - - 0x0113CA 04:B3BA: 9D 0D 05  STA ram_spd_X_lo_obj,X
bra_B3BD_RTS:
C - - - - - 0x0113CD 04:B3BD: 60        RTS


; bzk garbage
- - - - - - 0x0113CE 04:B3BE: BD 4A 04  LDA ram_obj_id,X
- - - - - - 0x0113D1 04:B3C1: C9 3D     CMP #$3D    ; con_enemy_id_3D
- - - - - - 0x0113D3 04:B3C3: 90 05     BCC bra_B3CA_RTS
- - - - - - 0x0113D5 04:B3C5: A9 40     LDA #$40
- - - - - - 0x0113D7 04:B3C7: 9D 4E 05  STA ram_054E_obj,X
bra_B3CA_RTS:
- - - - - - 0x0113DA 04:B3CA: 60        RTS



ofs_039_B3CB_00:
- - - - - - 0x0113DB 04:B3CB: A6 76     LDX ram_obj_index
- - - - - - 0x0113DD 04:B3CD: BD 34 05  LDA ram_0534_obj,X
- - - - - - 0x0113E0 04:B3D0: 29 3F     AND #$3F
- - - - - - 0x0113E2 04:B3D2: F0 0B     BEQ bra_B3DF_RTS
- - - - - - 0x0113E4 04:B3D4: A9 00     LDA #$00
- - - - - - 0x0113E6 04:B3D6: 9D 34 05  STA ram_0534_obj,X
- - - - - - 0x0113E9 04:B3D9: 20 3B B5  JSR sub_B53B_clear_object_data
; bzk optimize, JMP
- - - - - - 0x0113EC 04:B3DC: 20 45 B2  JSR sub_B245
bra_B3DF_RTS:
- - - - - - 0x0113EF 04:B3DF: 60        RTS



ofs_039_B3E0_01:
- - - - - - 0x0113F0 04:B3E0: A6 76     LDX ram_obj_index
- - - - - - 0x0113F2 04:B3E2: BD 34 05  LDA ram_0534_obj,X
- - - - - - 0x0113F5 04:B3E5: 29 3F     AND #$3F
- - - - - - 0x0113F7 04:B3E7: C9 01     CMP #$01
- - - - - - 0x0113F9 04:B3E9: F0 1A     BEQ bra_B405_RTS
- - - - - - 0x0113FB 04:B3EB: BD 34 05  LDA ram_0534_obj,X
- - - - - - 0x0113FE 04:B3EE: 29 F0     AND #$F0
- - - - - - 0x011400 04:B3F0: 09 01     ORA #$01
- - - - - - 0x011402 04:B3F2: 9D 34 05  STA ram_0534_obj,X
- - - - - - 0x011405 04:B3F5: BD 41 05  LDA ram_0541_obj_flags,X
- - - - - - 0x011408 04:B3F8: 29 01     AND #$01
- - - - - - 0x01140A 04:B3FA: A8        TAY
- - - - - - 0x01140B 04:B3FB: C8        INY
- - - - - - 0x01140C 04:B3FC: B9 B4 AF  LDA tbl_AFB4,Y
- - - - - - 0x01140F 04:B3FF: 9D 0D 05  STA ram_spd_X_lo_obj,X
- - - - - - 0x011412 04:B402: 4C CC A4  JMP loc_A4CC
bra_B405_RTS:
- - - - - - 0x011415 04:B405: 60        RTS



ofs_039_B406_02:
C - - J - - 0x011416 04:B406: A6 76     LDX ram_obj_index
C - - - - - 0x011418 04:B408: 20 22 B4  JSR sub_B422
C - - - - - 0x01141B 04:B40B: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01141E 04:B40E: 29 3F     AND #$3F
C - - - - - 0x011420 04:B410: C9 12     CMP #$12
C - - - - - 0x011422 04:B412: F0 0D     BEQ bra_B421_RTS
C - - - - - 0x011424 04:B414: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x011427 04:B417: 29 C0     AND #$C0
C - - - - - 0x011429 04:B419: 09 12     ORA #$12
C - - - - - 0x01142B 04:B41B: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x01142E 04:B41E: 4C D1 B4  JMP loc_B4D1
bra_B421_RTS:
C - - - - - 0x011431 04:B421: 60        RTS



sub_B422:
C - - - - - 0x011432 04:B422: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x011435 04:B425: 29 20     AND #$20
C - - - - - 0x011437 04:B427: F0 05     BEQ bra_B42E_RTS
C - - - - - 0x011439 04:B429: A9 85     LDA #$85
C - - - - - 0x01143B 04:B42B: 9D D9 04  STA ram_04D9_obj,X
bra_B42E_RTS:
C - - - - - 0x01143E 04:B42E: 60        RTS



sub_B42F:
C - - - - - 0x01143F 04:B42F: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x011442 04:B432: C9 45     CMP #con_enemy_id_45
C - - - - - 0x011444 04:B434: D0 0C     BNE bra_B442_RTS
C - - - - - 0x011446 04:B436: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x011449 04:B439: 29 20     AND #$20
C - - - - - 0x01144B 04:B43B: D0 05     BNE bra_B442_RTS
C - - - - - 0x01144D 04:B43D: A9 84     LDA #$84
C - - - - - 0x01144F 04:B43F: 9D D9 04  STA ram_04D9_obj,X
bra_B442_RTS:
C - - - - - 0x011452 04:B442: 60        RTS



ofs_039_B443_03:
- - - - - - 0x011453 04:B443: A6 76     LDX ram_obj_index
- - - - - - 0x011455 04:B445: BD 34 05  LDA ram_0534_obj,X
- - - - - - 0x011458 04:B448: 29 3F     AND #$3F
- - - - - - 0x01145A 04:B44A: C9 13     CMP #$13
- - - - - - 0x01145C 04:B44C: F0 D3     BEQ bra_B421_RTS
- - - - - - 0x01145E 04:B44E: BD 34 05  LDA ram_0534_obj,X
- - - - - - 0x011461 04:B451: 29 C0     AND #$C0
- - - - - - 0x011463 04:B453: 09 13     ORA #$13
- - - - - - 0x011465 04:B455: 9D 34 05  STA ram_0534_obj,X
- - - - - - 0x011468 04:B458: 4C D1 B4  JMP loc_B4D1


; bzk garbage
- - - - - - 0x01146B 04:B45B: 60        RTS



ofs_039_B45C_04:
C - - J - - 0x01146C 04:B45C: A6 76     LDX ram_obj_index
C - - - - - 0x01146E 04:B45E: 20 22 B4  JSR sub_B422
C - - - - - 0x011471 04:B461: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x011474 04:B464: 29 3F     AND #$3F
C - - - - - 0x011476 04:B466: C9 11     CMP #$11
C - - - - - 0x011478 04:B468: F0 B7     BEQ bra_B421_RTS
C - - - - - 0x01147A 04:B46A: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01147D 04:B46D: 29 C0     AND #$C0
C - - - - - 0x01147F 04:B46F: 09 11     ORA #$11
C - - - - - 0x011481 04:B471: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x011484 04:B474: A9 01     LDA #$01
C - - - - - 0x011486 04:B476: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x011489 04:B479: A9 00     LDA #$00
C - - - - - 0x01148B 04:B47B: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01148E 04:B47E: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x011491 04:B481: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x011494 04:B484: 4C D1 B4  JMP loc_B4D1



ofs_039_B487_05:
C - - J - - 0x011497 04:B487: 20 1A B5  JSR sub_B51A
C - - - - - 0x01149A 04:B48A: 20 D5 B4  JSR sub_B4D5
C - - - - - 0x01149D 04:B48D: 90 45     BCC bra_B4D4_RTS
C - - - - - 0x01149F 04:B48F: 20 2F B4  JSR sub_B42F
C - - - - - 0x0114A2 04:B492: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0114A4 04:B494: 48        PHA
C - - - - - 0x0114A5 04:B495: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x0114A7 04:B497: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0114A9 04:B499: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0114AC 04:B49C: A9 43     LDA #$43    ; con_enemy_id_43
C - - - - - 0x0114AE 04:B49E: 85 67     STA ram_0067_t0E_obj_id_offset
; bzk optimize, X is always 02
C - - - - - 0x0114B0 04:B4A0: A2 02     LDX #$02
C - - - - - 0x0114B2 04:B4A2: BD FD 91  LDA tbl_0x01320D,X
C - - - - - 0x0114B5 04:B4A5: 85 5D     STA ram_005D_t03_data
C - - - - - 0x0114B7 04:B4A7: BD FE 91  LDA tbl_0x01320D + $01,X
C - - - - - 0x0114BA 04:B4AA: 85 5E     STA ram_005D_t03_data + $01
C - - - - - 0x0114BC 04:B4AC: 20 E4 AB  JSR sub_ABE4
C - - - - - 0x0114BF 04:B4AF: 68        PLA
C - - - - - 0x0114C0 04:B4B0: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0114C2 04:B4B2: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0114C5 04:B4B5: A5 67     LDA ram_0067_t0E_obj_id_offset
C - - - - - 0x0114C7 04:B4B7: D0 1B     BNE bra_B4D4_RTS
C - - - - - 0x0114C9 04:B4B9: 20 F1 B4  JSR sub_B4F1
C - - - - - 0x0114CC 04:B4BC: A6 76     LDX ram_obj_index
C - - - - - 0x0114CE 04:B4BE: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0114D1 04:B4C1: 29 3F     AND #$3F
C - - - - - 0x0114D3 04:B4C3: C5 72     CMP ram_0072_t11
C - - - - - 0x0114D5 04:B4C5: F0 0D     BEQ bra_B4D4_RTS
C - - - - - 0x0114D7 04:B4C7: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0114DA 04:B4CA: 29 C0     AND #$C0
C - - - - - 0x0114DC 04:B4CC: 05 72     ORA ram_0072_t11
C - - - - - 0x0114DE 04:B4CE: 9D 34 05  STA ram_0534_obj,X
loc_B4D1:   ; bzk optimize
; bzk optimize, JMP
C D 1 - - - 0x0114E1 04:B4D1: 20 45 B2  JSR sub_B245
bra_B4D4_RTS:
C - - - - - 0x0114E4 04:B4D4: 60        RTS



sub_B4D5:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0114E5 04:B4D5: A6 76     LDX ram_obj_index
C - - - - - 0x0114E7 04:B4D7: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0114EA 04:B4DA: C9 45     CMP #con_enemy_id_45
C - - - - - 0x0114EC 04:B4DC: D0 11     BNE bra_B4EF
C - - - - - 0x0114EE 04:B4DE: A9 04     LDA #$04
C - - - - - 0x0114F0 04:B4E0: 85 6F     STA ram_006F_t09_pos_Y_lo_add
C - - - - - 0x0114F2 04:B4E2: 20 D9 A1  JSR sub_A1D9
C - - - - - 0x0114F5 04:B4E5: A5 BC     LDA ram_00BC
C - - - - - 0x0114F7 04:B4E7: 29 07     AND #$07
C - - - - - 0x0114F9 04:B4E9: F0 04     BEQ bra_B4EF
; bzk optimize, useless CLC
C - - - - - 0x0114FB 04:B4EB: 18        CLC
C - - - - - 0x0114FC 04:B4EC: 4C CF AE  JMP loc_AECF
bra_B4EF:
C - - - - - 0x0114FF 04:B4EF: 38        SEC
C - - - - - 0x011500 04:B4F0: 60        RTS



sub_B4F1:
C - - - - - 0x011501 04:B4F1: A5 72     LDA ram_0072_t11
C - - - - - 0x011503 04:B4F3: C9 13     CMP #$13
C - - - - - 0x011505 04:B4F5: B0 0C     BCS bra_B503
C - - - - - 0x011507 04:B4F7: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01150A 04:B4FA: 29 FD     AND #$02 ^ $FF
C - - - - - 0x01150C 04:B4FC: 09 40     ORA #$40
C - - - - - 0x01150E 04:B4FE: 9D 3D 04  STA ram_043A_obj_flags + $03,X
; bzk optimize, RTS
C - - - - - 0x011511 04:B501: D0 16     BNE bra_B519_RTS    ; jmp
bra_B503:
C - - - - - 0x011513 04:B503: A9 02     LDA #$02
C - - - - - 0x011515 04:B505: 1D 3D 04  ORA ram_043A_obj_flags + $03,X
C - - - - - 0x011518 04:B508: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x01151B 04:B50B: A5 72     LDA ram_0072_t11
C - - - - - 0x01151D 04:B50D: C9 14     CMP #$14
C - - - - - 0x01151F 04:B50F: 90 08     BCC bra_B519_RTS
C - - - - - 0x011521 04:B511: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x011524 04:B514: 29 BF     AND #$40 ^ $FF
C - - - - - 0x011526 04:B516: 9D 3D 04  STA ram_043A_obj_flags + $03,X
bra_B519_RTS:
C - - - - - 0x011529 04:B519: 60        RTS



sub_B51A:
C - - - - - 0x01152A 04:B51A: A6 76     LDX ram_obj_index
C - - - - - 0x01152C 04:B51C: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01152F 04:B51F: C9 4A     CMP #con_enemy_id_4A
C - - - - - 0x011531 04:B521: D0 17     BNE bra_B53A_RTS
- - - - - - 0x011533 04:B523: BD 6C 05  LDA ram_056C_obj,X
- - - - - - 0x011536 04:B526: D0 0A     BNE bra_B532
- - - - - - 0x011538 04:B528: BD 3D 04  LDA ram_043A_obj_flags + $03,X
- - - - - - 0x01153B 04:B52B: 29 BF     AND #$40 ^ $FF
- - - - - - 0x01153D 04:B52D: 9D 3D 04  STA ram_043A_obj_flags + $03,X
- - - - - - 0x011540 04:B530: D0 08     BNE bra_B53A_RTS
bra_B532:
- - - - - - 0x011542 04:B532: BD 3D 04  LDA ram_043A_obj_flags + $03,X
- - - - - - 0x011545 04:B535: 09 40     ORA #$40
- - - - - - 0x011547 04:B537: 9D 3D 04  STA ram_043A_obj_flags + $03,X
bra_B53A_RTS:
C - - - - - 0x01154A 04:B53A: 60        RTS



sub_B53B_clear_object_data:
C - - - - - 0x01154B 04:B53B: A9 00     LDA #$00
C - - - - - 0x01154D 04:B53D: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x011550 04:B540: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x011553 04:B543: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x011556 04:B546: 9D 1A 05  STA ram_spd_Y_fr_obj,X
C - - - - - 0x011559 04:B549: 60        RTS



ofs_038_B54A_00:
C - - J - - 0x01155A 04:B54A: A6 76     LDX ram_obj_index
C - - - - - 0x01155C 04:B54C: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01155F 04:B54F: 38        SEC
C - - - - - 0x011560 04:B550: E9 3D     SBC #$3D    ; con_enemy_id_3D
C - - - - - 0x011562 04:B552: 0A        ASL
C - - - - - 0x011563 04:B553: 20 CE B6  JSR sub_B6CE
C - - - - - 0x011566 04:B556: 90 03     BCC bra_B55B
C - - - - - 0x011568 04:B558: 20 45 B2  JSR sub_B245
bra_B55B:
ofs_038_B55B_01:
C - - - - - 0x01156B 04:B55B: A6 76     LDX ram_obj_index
C - - - - - 0x01156D 04:B55D: A9 FD     LDA #$02 ^ $FF
C - - - - - 0x01156F 04:B55F: 3D 3D 04  AND ram_043A_obj_flags + $03,X
C - - - - - 0x011572 04:B562: 9D 3D 04  STA ram_043A_obj_flags + $03,X
ofs_038_B565_04_RTS:
ofs_038_B565_05_RTS:
C - - - - - 0x011575 04:B565: 60        RTS



ofs_038_B566_06:
C - - J - - 0x011576 04:B566: A6 76     LDX ram_obj_index
C - - - - - 0x011578 04:B568: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x01157B 04:B56B: 29 0F     AND #$0F
C - - - - - 0x01157D 04:B56D: 0A        ASL
C - - - - - 0x01157E 04:B56E: 85 68     STA ram_0068_t08
C - - - - - 0x011580 04:B570: 4C DC A7  JMP loc_A7DC



ofs_038_B573_02:
C - - J - - 0x011583 04:B573: A6 76     LDX ram_obj_index
C - - - - - 0x011585 04:B575: 4C AA A9  JMP loc_A9AA



ofs_038_B578_03:
C - - J - - 0x011588 04:B578: A6 76     LDX ram_obj_index
C - - - - - 0x01158A 04:B57A: 20 98 B5  JSR sub_B598
C - - - - - 0x01158D 04:B57D: 20 CE B6  JSR sub_B6CE
C - - - - - 0x011590 04:B580: 90 15     BCC bra_B597_RTS
C - - - - - 0x011592 04:B582: 20 45 B2  JSR sub_B245
C - - - - - 0x011595 04:B585: A9 20     LDA #$20
C - - - - - 0x011597 04:B587: 9D 4E 05  STA ram_054E_obj,X
C - - - - - 0x01159A 04:B58A: A9 01     LDA #$01
C - - - - - 0x01159C 04:B58C: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x01159F 04:B58F: A9 02     LDA #$02
C - - - - - 0x0115A1 04:B591: 1D 3D 04  ORA ram_043A_obj_flags + $03,X
C - - - - - 0x0115A4 04:B594: 9D 3D 04  STA ram_043A_obj_flags + $03,X
bra_B597_RTS:
C - - - - - 0x0115A7 04:B597: 60        RTS



sub_B598:
C - - - - - 0x0115A8 04:B598: FE 65 05  INC ram_0565_obj,X
C - - - - - 0x0115AB 04:B59B: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x0115AE 04:B59E: C9 3A     CMP #$3A
C - - - - - 0x0115B0 04:B5A0: D0 0E     BNE bra_B5B0
C - - - - - 0x0115B2 04:B5A2: A9 01     LDA #$01
C - - - - - 0x0115B4 04:B5A4: 9D D9 04  STA ram_04D9_obj,X
C - - - - - 0x0115B7 04:B5A7: A9 00     LDA #$00
C - - - - - 0x0115B9 04:B5A9: 9D 65 05  STA ram_0565_obj,X
C - - - - - 0x0115BC 04:B5AC: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0115BF 04:B5AF: 60        RTS
bra_B5B0:
C - - - - - 0x0115C0 04:B5B0: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0115C3 04:B5B3: 18        CLC
C - - - - - 0x0115C4 04:B5B4: 69 01     ADC #$01
C - - - - - 0x0115C6 04:B5B6: 29 07     AND #$07
C - - - - - 0x0115C8 04:B5B8: 60        RTS



tbl_B5B9_shot_id:
- - - - - - 0x0115C9 04:B5B9: 00        .byte con_shot_id_00   ; 00 
- - - - - - 0x0115CA 04:B5BA: 00        .byte con_shot_id_00   ; 01 
- - - - - - 0x0115CB 04:B5BB: 00        .byte con_shot_id_00   ; 02 
- - - - - - 0x0115CC 04:B5BC: 00        .byte con_shot_id_00   ; 03 
- - - - - - 0x0115CD 04:B5BD: 00        .byte con_shot_id_00   ; 04 
- - - - - - 0x0115CE 04:B5BE: 00        .byte con_shot_id_00   ; 05 
- D 1 - - - 0x0115CF 04:B5BF: 16        .byte con_shot_id_16   ; 06 
- D 1 - - - 0x0115D0 04:B5C0: 17        .byte con_shot_id_17   ; 07 
- - - - - - 0x0115D1 04:B5C1: 00        .byte con_shot_id_00   ; 08 
- D 1 - - - 0x0115D2 04:B5C2: 15        .byte con_shot_id_15   ; 09 
- - - - - - 0x0115D3 04:B5C3: 00        .byte con_shot_id_00   ; 0A 
- - - - - - 0x0115D4 04:B5C4: 00        .byte con_shot_id_00   ; 0B 



loc_B5C5:
C D 1 - - - 0x0115D5 04:B5C5: AD E3 05  LDA ram_05E3_flag
C - - - - - 0x0115D8 04:B5C8: 30 0B     BMI bra_B5D5
C - - - - - 0x0115DA 04:B5CA: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x0115DC 04:B5CC: 05 CB     ORA ram_00CB_t01
C - - - - - 0x0115DE 04:B5CE: D0 1C     BNE bra_B5EC_RTS
C - - - - - 0x0115E0 04:B5D0: A9 80     LDA #$80
C - - - - - 0x0115E2 04:B5D2: 8D E3 05  STA ram_05E3_flag
bra_B5D5:
C - - - - - 0x0115E5 04:B5D5: A2 00     LDX #$00
; bzk optimize, useless STX. LDX 00 also seems useless
C - - - - - 0x0115E7 04:B5D7: 86 68     STX ram_0068_tFE_useless
; bzk optimize, LDY + STY, delete TAY
C - - - - - 0x0115E9 04:B5D9: AD FD 03  LDA ram_03FD_t01_table_index
C - - - - - 0x0115EC 04:B5DC: A8        TAY
C - - - - - 0x0115ED 04:B5DD: 85 67     STA ram_0067_t01
C - - - - - 0x0115EF 04:B5DF: B9 ED B5  LDA tbl_B5ED,Y
C - - - - - 0x0115F2 04:B5E2: 85 68     STA ram_0068_t12
C - - - - - 0x0115F4 04:B5E4: B9 F6 B5  LDA tbl_B5F6,Y
C - - - - - 0x0115F7 04:B5E7: 85 69     STA ram_0069_t04_loop_counter
; bzk optimize, JMP
C - - - - - 0x0115F9 04:B5E9: 20 FF B5  JSR sub_B5FF
bra_B5EC_RTS:
C - - - - - 0x0115FC 04:B5EC: 60        RTS



tbl_B5ED:
- D 1 - - - 0x0115FD 04:B5ED: 01        .byte $01   ; 00 
- D 1 - - - 0x0115FE 04:B5EE: 07        .byte $07   ; 01 
- D 1 - - - 0x0115FF 04:B5EF: 07        .byte $07   ; 02 
- D 1 - - - 0x011600 04:B5F0: 03        .byte $03   ; 03 
- - - - - - 0x011601 04:B5F1: 00        .byte $00   ; 04 
- D 1 - - - 0x011602 04:B5F2: 00        .byte $00   ; 05 
- D 1 - - - 0x011603 04:B5F3: 00        .byte $00   ; 06 
- - - - - - 0x011604 04:B5F4: 00        .byte $00   ; 07 
- D 1 - - - 0x011605 04:B5F5: 01        .byte $01   ; 08 



tbl_B5F6:
- D 1 - - - 0x011606 04:B5F6: 02        .byte $02   ; 00 
- D 1 - - - 0x011607 04:B5F7: 02        .byte $02   ; 01 
- D 1 - - - 0x011608 04:B5F8: 02        .byte $02   ; 02 
- D 1 - - - 0x011609 04:B5F9: 02        .byte $02   ; 03 
- - - - - - 0x01160A 04:B5FA: 01        .byte $01   ; 04 
- D 1 - - - 0x01160B 04:B5FB: 01        .byte $01   ; 05 
- D 1 - - - 0x01160C 04:B5FC: 01        .byte $01   ; 06 
- - - - - - 0x01160D 04:B5FD: 01        .byte $01   ; 07 
- D 1 - - - 0x01160E 04:B5FE: 01        .byte $01   ; 08 



sub_B5FF:
C - - - - - 0x01160F 04:B5FF: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x011611 04:B601: C5 69     CMP ram_0069_t04_loop_counter
C - - - - - 0x011613 04:B603: F0 E7     BEQ bra_B5EC_RTS
C - - - - - 0x011615 04:B605: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x011617 04:B607: 48        PHA
C - - - - - 0x011618 04:B608: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01161A 04:B60A: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01161C 04:B60C: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01161F 04:B60F: A5 67     LDA ram_0067_t01
C - - - - - 0x011621 04:B611: 0A        ASL
C - - - - - 0x011622 04:B612: AA        TAX
C - - - - - 0x011623 04:B613: BD C7 8A  LDA tbl_0x008AD7,X
C - - - - - 0x011626 04:B616: 85 63     STA ram_0063_t01_data
C - - - - - 0x011628 04:B618: BD C8 8A  LDA tbl_0x008AD7 + $01,X
C - - - - - 0x01162B 04:B61B: 85 64     STA ram_0063_t01_data + $01
C - - - - - 0x01162D 04:B61D: A2 00     LDX #$00
bra_B61F_loop:
C - - - - - 0x01162F 04:B61F: A5 67     LDA ram_0067_t01
C - - - - - 0x011631 04:B621: C9 08     CMP #$08
C - - - - - 0x011633 04:B623: D0 06     BNE bra_B62B
C - - - - - 0x011635 04:B625: AD FE 03  LDA ram_03FE_table_index
C - - - - - 0x011638 04:B628: 4C 2D B6  JMP loc_B62D
bra_B62B:
C - - - - - 0x01163B 04:B62B: A5 14     LDA ram_frm_cnt
loc_B62D:
C D 1 - - - 0x01163D 04:B62D: 25 68     AND ram_0068_t12
; * 04
C - - - - - 0x01163F 04:B62F: 0A        ASL
C - - - - - 0x011640 04:B630: 0A        ASL
; 
C - - - - - 0x011641 04:B631: A8        TAY
; bzk optimize, useless STY
C - - - - - 0x011642 04:B632: 84 70     STY ram_0070_tFF_useless
; 
C - - - - - 0x011644 04:B634: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x011647 04:B637: D0 40     BNE bra_B679
C - - - - - 0x011649 04:B639: B1 63     LDA (ram_0063_t01_data),Y
C - - - - - 0x01164B 04:B63B: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x01164E 04:B63E: C9 2A     CMP #con_enemy_id_2A
C - - - - - 0x011650 04:B640: D0 04     BNE bra_B646
C - - - - - 0x011652 04:B642: A9 07     LDA #con_000D_07
C - - - - - 0x011654 04:B644: D0 06     BNE bra_B64C    ; jmp
bra_B646:
C - - - - - 0x011656 04:B646: C9 2D     CMP #$2D
C - - - - - 0x011658 04:B648: D0 07     BNE bra_B651
C - - - - - 0x01165A 04:B64A: A9 08     LDA #con_000D_08
bra_B64C:
C - - - - - 0x01165C 04:B64C: 85 0D     STA ram_000D_spr_pal_index
C - - - - - 0x01165E 04:B64E: 20 B3 B6  JSR sub_B6B3
bra_B651:
C - - - - - 0x011661 04:B651: C8        INY
C - - - - - 0x011662 04:B652: B1 63     LDA (ram_0063_t01_data),Y
C - - - - - 0x011664 04:B654: 29 01     AND #$01
C - - - - - 0x011666 04:B656: 85 67     STA ram_0067_t01
C - - - - - 0x011668 04:B658: 8A        TXA
C - - - - - 0x011669 04:B659: C5 67     CMP ram_0067_t01
C - - - - - 0x01166B 04:B65B: D0 1C     BNE bra_B679
C - - - - - 0x01166D 04:B65D: B1 63     LDA (ram_0063_t01_data),Y
C - - - - - 0x01166F 04:B65F: 29 F0     AND #$F0
C - - - - - 0x011671 04:B661: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x011674 04:B664: C8        INY
C - - - - - 0x011675 04:B665: B1 63     LDA (ram_0063_t01_data),Y
C - - - - - 0x011677 04:B667: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01167A 04:B66A: C8        INY
C - - - - - 0x01167B 04:B66B: B1 63     LDA (ram_0063_t01_data),Y
C - - - - - 0x01167D 04:B66D: 9D 41 05  STA ram_0541_obj_flags,X
; bzk optimize, useless INY + STY
C - - - - - 0x011680 04:B670: C8        INY
C - - - - - 0x011681 04:B671: 84 70     STY ram_0070_tFE_useless
; 
C - - - - - 0x011683 04:B673: 20 85 B6  JSR sub_B685
C - - - - - 0x011686 04:B676: EE FE 03  INC ram_03FE_table_index
bra_B679:
C - - - - - 0x011689 04:B679: E8        INX
C - - - - - 0x01168A 04:B67A: E4 69     CPX ram_0069_t04_loop_counter
C - - - - - 0x01168C 04:B67C: D0 A1     BNE bra_B61F_loop
C - - - - - 0x01168E 04:B67E: 68        PLA
C - - - - - 0x01168F 04:B67F: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x011691 04:B681: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x011694 04:B684: 60        RTS



sub_B685:
C - - - - - 0x011695 04:B685: A9 00     LDA #$00
C - - - - - 0x011697 04:B687: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x01169A 04:B68A: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01169D 04:B68D: C9 15     CMP #con_enemy_id_15
C - - - - - 0x01169F 04:B68F: D0 09     BNE bra_B69A
C - - - - - 0x0116A1 04:B691: A9 10     LDA #$10
C - - - - - 0x0116A3 04:B693: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x0116A6 04:B696: A5 CB     LDA ram_00CB_t01
C - - - - - 0x0116A8 04:B698: D0 18     BNE bra_B6B2_RTS
bra_B69A:
C - - - - - 0x0116AA 04:B69A: A9 00     LDA #$00
C - - - - - 0x0116AC 04:B69C: 9D 83 05  STA ram_0583_obj,X
C - - - - - 0x0116AF 04:B69F: 85 6B     STA ram_006B_t04_obj_flags
C - - - - - 0x0116B1 04:B6A1: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x0116B4 04:B6A4: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0116B7 04:B6A7: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x0116BA 04:B6AA: A9 01     LDA #$01
C - - - - - 0x0116BC 04:B6AC: 9D 4E 05  STA ram_054E_obj,X
; bzk optimize, JMP
C - - - - - 0x0116BF 04:B6AF: 20 C5 FF  JSR sub_0x01FFD5
bra_B6B2_RTS:
C - - - - - 0x0116C2 04:B6B2: 60        RTS



sub_B6B3:
C - - - - - 0x0116C3 04:B6B3: 8A        TXA
C - - - - - 0x0116C4 04:B6B4: 48        PHA
C - - - - - 0x0116C5 04:B6B5: 98        TYA
C - - - - - 0x0116C6 04:B6B6: 48        PHA
C - - - - - 0x0116C7 04:B6B7: 20 DA FF  JSR sub_0x01FFEA_prepare_sprite_palette
C - - - - - 0x0116CA 04:B6BA: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x0116CC 04:B6BC: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x0116CE 04:B6BE: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x0116D0 04:B6C0: 05 02     ORA ram_buffers_flags
C - - - - - 0x0116D2 04:B6C2: 85 02     STA ram_buffers_flags
C - - - - - 0x0116D4 04:B6C4: 68        PLA
C - - - - - 0x0116D5 04:B6C5: A8        TAY
C - - - - - 0x0116D6 04:B6C6: 68        PLA
C - - - - - 0x0116D7 04:B6C7: AA        TAX
C - - - - - 0x0116D8 04:B6C8: 60        RTS



sub_B6C9:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0116D9 04:B6C9: BD D9 04  LDA ram_04D9_obj,X
C - - - - - 0x0116DC 04:B6CC: 29 3F     AND #$3F
sub_B6CE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0116DE 04:B6CE: 85 67     STA ram_0067_t28
C - - - - - 0x0116E0 04:B6D0: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0116E3 04:B6D3: 29 3F     AND #$3F
C - - - - - 0x0116E5 04:B6D5: C5 67     CMP ram_0067_t28
C - - - - - 0x0116E7 04:B6D7: F0 0D     BEQ bra_B6E6
C - - - - - 0x0116E9 04:B6D9: BD 34 05  LDA ram_0534_obj,X
C - - - - - 0x0116EC 04:B6DC: 29 F0     AND #$F0
C - - - - - 0x0116EE 04:B6DE: 05 67     ORA ram_0067_t28
C - - - - - 0x0116F0 04:B6E0: 9D 34 05  STA ram_0534_obj,X
C - - - - - 0x0116F3 04:B6E3: 38        SEC
; bzk optimize, RTS
C - - - - - 0x0116F4 04:B6E4: B0 01     BCS bra_B6E7_RTS    ; jmp
bra_B6E6:
C - - - - - 0x0116F6 04:B6E6: 18        CLC
bra_B6E7_RTS:
C - - - - - 0x0116F7 04:B6E7: 60        RTS



sub_B6E8:
C - - - - - 0x0116F8 04:B6E8: A2 01     LDX #$01
C - - - - - 0x0116FA 04:B6EA: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0116FD 04:B6ED: 30 1D     BMI bra_B70C_RTS
C - - - - - 0x0116FF 04:B6EF: AD 64 04  LDA ram_pos_X_lo_obj + $03
C - - - - - 0x011702 04:B6F2: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x011705 04:B6F5: AD 8B 04  LDA ram_pos_Y_lo_obj + $03
C - - - - - 0x011708 04:B6F8: 38        SEC
C - - - - - 0x011709 04:B6F9: E9 30     SBC #$30
C - - - - - 0x01170B 04:B6FB: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01170E 04:B6FE: A9 2C     LDA #con_enemy_id_2C
C - - - - - 0x011710 04:B700: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x011713 04:B703: AD 41 05  LDA ram_0541_obj_flags
C - - - - - 0x011716 04:B706: 9D 41 05  STA ram_0541_obj_flags,X
; bzk optimize, JMP
C - - - - - 0x011719 04:B709: 20 85 B6  JSR sub_B685
bra_B70C_RTS:
C - - - - - 0x01171C 04:B70C: 60        RTS



loc_B70D_shot_handler:
sub_B70D_shot_handler:
C D 1 - - - 0x01171D 04:B70D: A5 CB     LDA ram_00CB_t01
C - - - - - 0x01171F 04:B70F: C9 06     CMP #$06
C - - - - - 0x011721 04:B711: B0 11     BCS bra_B724_RTS
C - - - - - 0x011723 04:B713: A5 6F     LDA ram_006F_t01_shot_id
C - - - - - 0x011725 04:B715: 0A        ASL
C - - - - - 0x011726 04:B716: AA        TAX
C - - - - - 0x011727 04:B717: BD 25 B7  LDA tbl_B725_shot_handler,X
C - - - - - 0x01172A 04:B71A: 85 5B     STA ram_005B_t5E_jmp
C - - - - - 0x01172C 04:B71C: BD 26 B7  LDA tbl_B725_shot_handler + $01,X
C - - - - - 0x01172F 04:B71F: 85 5C     STA ram_005B_t5E_jmp + $01
C - - - - - 0x011731 04:B721: 6C 5B 00  JMP (ram_005B_t5E_jmp)
bra_B724_RTS:
ofs_033_shot_handler_B724_00_RTS:
; con_shot_id_00
ofs_033_shot_handler_B724_0B_RTS:
; con_shot_id_0B
ofs_033_shot_handler_B724_0C_RTS:
; con_shot_id_0C
ofs_033_shot_handler_B724_13_RTS:
; con_shot_id_13
ofs_033_shot_handler_B724_14_RTS:
; con_shot_id_14
C - - J - - 0x011734 04:B724: 60        RTS



tbl_B725_shot_handler:
- D 1 - - - 0x011735 04:B725: 24 B7     .word ofs_033_shot_handler_B724_00_RTS
- D 1 - - - 0x011737 04:B727: 8A B7     .word ofs_033_shot_handler_B78A_01
- D 1 - - - 0x011739 04:B729: 43 B8     .word ofs_033_shot_handler_B843_02
- D 1 - - - 0x01173B 04:B72B: 43 B8     .word ofs_033_shot_handler_B843_03
- D 1 - - - 0x01173D 04:B72D: 43 B8     .word ofs_033_shot_handler_B843_04
- D 1 - - - 0x01173F 04:B72F: 9F B8     .word ofs_033_shot_handler_B89F_05
- D 1 - - - 0x011741 04:B731: 8A B7     .word ofs_033_shot_handler_B78A_06
- D 1 - - - 0x011743 04:B733: 09 B9     .word ofs_033_shot_handler_B909_07
- D 1 - - - 0x011745 04:B735: 09 B9     .word ofs_033_shot_handler_B909_08
- D 1 - - - 0x011747 04:B737: 09 B9     .word ofs_033_shot_handler_B909_09
- - - - - - 0x011749 04:B739: 09 B9     .word ofs_033_shot_handler_B909_0A
- - - - - - 0x01174B 04:B73B: 24 B7     .word ofs_033_shot_handler_B724_0B_RTS
- - - - - - 0x01174D 04:B73D: 24 B7     .word ofs_033_shot_handler_B724_0C_RTS
- - - - - - 0x01174F 04:B73F: A7 B9     .word ofs_033_shot_handler_B9A7_0D
- D 1 - - - 0x011751 04:B741: B5 B9     .word ofs_033_shot_handler_B9B5_0E
- D 1 - - - 0x011753 04:B743: A7 B9     .word ofs_033_shot_handler_B9A7_0F
- - - - - - 0x011755 04:B745: A7 B9     .word ofs_033_shot_handler_B9A7_10
- D 1 - - - 0x011757 04:B747: B5 B9     .word ofs_033_shot_handler_B9B5_11
- D 1 - - - 0x011759 04:B749: A7 B9     .word ofs_033_shot_handler_B9A7_12
- - - - - - 0x01175B 04:B74B: 24 B7     .word ofs_033_shot_handler_B724_13_RTS
- - - - - - 0x01175D 04:B74D: 24 B7     .word ofs_033_shot_handler_B724_14_RTS
- D 1 - - - 0x01175F 04:B74F: 6F B9     .word ofs_033_shot_handler_B96F_15
- D 1 - - - 0x011761 04:B751: 6F B9     .word ofs_033_shot_handler_B96F_16
- D 1 - - - 0x011763 04:B753: 6F B9     .word ofs_033_shot_handler_B96F_17
- - - - - - 0x011765 04:B755: 6F B9     .word ofs_033_shot_handler_B96F_18
- D 1 - - - 0x011767 04:B757: 79 B9     .word ofs_033_shot_handler_B979_19
- - - - - - 0x011769 04:B759: E4 B7     .word ofs_033_shot_handler_B7E4_1A_RTS
- - - - - - 0x01176B 04:B75B: E4 B7     .word ofs_033_shot_handler_B7E4_1B_RTS
- - - - - - 0x01176D 04:B75D: E4 B7     .word ofs_033_shot_handler_B7E4_1C_RTS
- - - - - - 0x01176F 04:B75F: E4 B7     .word ofs_033_shot_handler_B7E4_1D_RTS
- - - - - - 0x011771 04:B761: E4 B7     .word ofs_033_shot_handler_B7E4_1E_RTS
- - - - - - 0x011773 04:B763: E4 B7     .word ofs_033_shot_handler_B7E4_1F_RTS
- D 1 - - - 0x011775 04:B765: 84 BF     .word ofs_033_shot_handler_BF84_20
- D 1 - - - 0x011777 04:B767: 84 BF     .word ofs_033_shot_handler_BF84_21
- - - - - - 0x011779 04:B769: 84 BF     .word ofs_033_shot_handler_BF84_22
- - - - - - 0x01177B 04:B76B: 84 BF     .word ofs_033_shot_handler_BF84_23



sub_B76D:
; out
    ; X = 
C - - - - - 0x01177D 04:B76D: A5 CB     LDA ram_00CB_t01
C - - - - - 0x01177F 04:B76F: C9 06     CMP #$06
; bzk warning, if BCS will branch, what will be in X?
; bzk optimize, useless CMP + BCS?
C - - - - - 0x011781 04:B771: B0 14     BCS bra_B787
C - - - - - 0x011783 04:B773: A2 00     LDX #$00
bra_B775_loop:
C - - - - - 0x011785 04:B775: BD 41 04  LDA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x011788 04:B778: 10 07     BPL bra_B781
C - - - - - 0x01178A 04:B77A: E8        INX
C - - - - - 0x01178B 04:B77B: E0 06     CPX #$06
C - - - - - 0x01178D 04:B77D: 90 F6     BCC bra_B775_loop
- - - - - - 0x01178F 04:B77F: B0 05     BCS bra_B786_RTS    ; jmp
bra_B781:
C - - - - - 0x011791 04:B781: A5 6F     LDA ram_006F_t01_shot_id
C - - - - - 0x011793 04:B783: 9D 4E 04  STA ram_obj_id + $04,X
bra_B786_RTS:
C - - - - - 0x011796 04:B786: 60        RTS
bra_B787:
- - - - - - 0x011797 04:B787: AA        TAX
- - - - - - 0x011798 04:B788: D0 FC     BNE bra_B786_RTS    ; jmp?



ofs_033_shot_handler_B78A_01:
; con_shot_id_01
ofs_033_shot_handler_B78A_06:
; con_shot_id_06
C - - J - - 0x01179A 04:B78A: A9 03     LDA #con_sfx_shoot_bullet
C - - - - - 0x01179C 04:B78C: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01179E 04:B78E: 20 AD FF  JSR sub_0x01FFBD_play_sound
loc_B791:
C D 1 - - - 0x0117A1 04:B791: 20 F5 B7  JSR sub_B7F5
C - - - - - 0x0117A4 04:B794: B0 4E     BCS bra_B7E4_RTS
C - - - - - 0x0117A6 04:B796: A5 6F     LDA ram_006F_t01_shot_id
C - - - - - 0x0117A8 04:B798: C9 06     CMP #con_enemy_id_06
C - - - - - 0x0117AA 04:B79A: F0 0D     BEQ bra_B7A9
C - - - - - 0x0117AC 04:B79C: A4 76     LDY ram_obj_index
C - - - - - 0x0117AE 04:B79E: B9 41 05  LDA ram_0541_obj_flags,Y
C - - - - - 0x0117B1 04:B7A1: 29 01     AND #$01
C - - - - - 0x0117B3 04:B7A3: 0A        ASL
C - - - - - 0x0117B4 04:B7A4: A8        TAY
C - - - - - 0x0117B5 04:B7A5: B1 5B     LDA (ram_005B_t11_data),Y
C - - - - - 0x0117B7 04:B7A7: 85 68     STA ram_0068_t08
bra_B7A9:
C - - - - - 0x0117B9 04:B7A9: A5 68     LDA ram_0068_t08
C - - - - - 0x0117BB 04:B7AB: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x0117BE 04:B7AE: 20 E5 B7  JSR sub_B7E5
C - - - - - 0x0117C1 04:B7B1: A9 0C     LDA #$0C
C - - - - - 0x0117C3 04:B7B3: 9D 52 05  STA ram_054E_obj + $04,X
C - - - - - 0x0117C6 04:B7B6: A9 80     LDA #$80
C - - - - - 0x0117C8 04:B7B8: 9D 5F 05  STA ram_055B_obj_anim_counter + $04,X
C - - - - - 0x0117CB 04:B7BB: D0 05     BNE bra_B7C2    ; jmp


; bzk garbage
- - - - - - 0x0117CD 04:B7BD: A9 18     LDA #$18
- - - - - - 0x0117CF 04:B7BF: 9D 52 05  STA ram_054E_obj + $04,X



bra_B7C2:
sub_B7C2:
C - - - - - 0x0117D2 04:B7C2: 20 19 B8  JSR sub_B819
C - - - - - 0x0117D5 04:B7C5: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x0117D8 04:B7C8: 29 3F     AND #$3F
C - - - - - 0x0117DA 04:B7CA: A8        TAY
C - - - - - 0x0117DB 04:B7CB: B9 83 B9  LDA tbl_B983,Y
C - - - - - 0x0117DE 04:B7CE: 85 67     STA ram_0067_t12_table_index
loc_B7D0:
C D 1 - - - 0x0117E0 04:B7D0: 20 80 BA  JSR sub_BA80
C - - - - - 0x0117E3 04:B7D3: 20 A2 BA  JSR sub_BAA2_calculate_damage_amount_to_player
C - - - - - 0x0117E6 04:B7D6: A9 00     LDA #$00
C - - - - - 0x0117E8 04:B7D8: 9D F7 04  STA ram_04F3_obj + $04,X
C - - - - - 0x0117EB 04:B7DB: E6 CB     INC ram_00CB_t01
C - - - - - 0x0117ED 04:B7DD: E6 CE     INC ram_all_objects_counter
C - - - - - 0x0117EF 04:B7DF: A9 81     LDA #$80 + $01
C - - - - - 0x0117F1 04:B7E1: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
bra_B7E4_RTS:
ofs_033_shot_handler_B7E4_1A_RTS:
; con_shot_id_1A
ofs_033_shot_handler_B7E4_1B_RTS:
; con_shot_id_1B
ofs_033_shot_handler_B7E4_1C_RTS:
; con_shot_id_1C
ofs_033_shot_handler_B7E4_1D_RTS:
; con_shot_id_1D
ofs_033_shot_handler_B7E4_1E_RTS:
; con_shot_id_1E
ofs_033_shot_handler_B7E4_1F_RTS:
; con_shot_id_1F
C - - - - - 0x0117F4 04:B7E4: 60        RTS



sub_B7E5:
C - - - - - 0x0117F5 04:B7E5: A9 00     LDA #$00
C - - - - - 0x0117F7 04:B7E7: 85 69     STA ram_0069_t03_pos_X_lo
C - - - - - 0x0117F9 04:B7E9: 85 6A     STA ram_006A_t07_pos_X_hi
C - - - - - 0x0117FB 04:B7EB: 85 6B     STA ram_006B_t01_pos_Y_lo
C - - - - - 0x0117FD 04:B7ED: 85 6C     STA ram_006C_tFF_useless
C - - - - - 0x0117FF 04:B7EF: A9 08     LDA #$08
C - - - - - 0x011801 04:B7F1: 9D 38 05  STA ram_0534_obj + $04,X
C - - - - - 0x011804 04:B7F4: 60        RTS



sub_B7F5:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x011805 04:B7F5: A5 CB     LDA ram_00CB_t01
C - - - - - 0x011807 04:B7F7: C9 06     CMP #$06
C - - - - - 0x011809 04:B7F9: B0 1D     BCS bra_B818_RTS
sub_B7FB:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x01180B 04:B7FB: 20 6D B7  JSR sub_B76D
C - - - - - 0x01180E 04:B7FE: E0 07     CPX #$07
C - - - - - 0x011810 04:B800: B0 16     BCS bra_B818_RTS
C - - - - - 0x011812 04:B802: 86 70     STX ram_0070_t06_obj_index
C - - - - - 0x011814 04:B804: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011817 04:B807: 29 3F     AND #$3F
C - - - - - 0x011819 04:B809: 0A        ASL
C - - - - - 0x01181A 04:B80A: AA        TAX
C - - - - - 0x01181B 04:B80B: BD E3 BA  LDA tbl_BAE3,X
C - - - - - 0x01181E 04:B80E: 85 5B     STA ram_005B_t11_data
C - - - - - 0x011820 04:B810: BD E4 BA  LDA tbl_BAE3 + $01,X
C - - - - - 0x011823 04:B813: 85 5C     STA ram_005B_t11_data + $01
C - - - - - 0x011825 04:B815: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011827 04:B817: 18        CLC
bra_B818_RTS:
C - - - - - 0x011828 04:B818: 60        RTS



sub_B819:
C - - - - - 0x011829 04:B819: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x01182B 04:B81B: AD EF 03  LDA ram_03EF_pos_X_lo
C - - - - - 0x01182E 04:B81E: 18        CLC
C - - - - - 0x01182F 04:B81F: 65 69     ADC ram_0069_t03_pos_X_lo
C - - - - - 0x011831 04:B821: 9D 68 04  STA ram_pos_X_lo_obj + $07,X
C - - - - - 0x011834 04:B824: A9 00     LDA #$00
C - - - - - 0x011836 04:B826: 65 6A     ADC ram_006A_t07_pos_X_hi
C - - - - - 0x011838 04:B828: 9D 75 04  STA ram_pos_X_hi_obj + $07,X
C - - - - - 0x01183B 04:B82B: A9 00     LDA #$00
C - - - - - 0x01183D 04:B82D: 9D 9C 04  STA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x011840 04:B830: 9D 5B 04  STA ram_pos_X_fr_obj + $04,X
C - - - - - 0x011843 04:B833: 9D 82 04  STA ram_pos_Y_fr_obj + $04,X
C - - - - - 0x011846 04:B836: AD F1 03  LDA ram_03F1_pos_Y_lo
C - - - - - 0x011849 04:B839: 18        CLC
C - - - - - 0x01184A 04:B83A: 65 6B     ADC ram_006B_t01_pos_Y_lo
C - - - - - 0x01184C 04:B83C: 9D 8F 04  STA ram_pos_Y_lo_obj + $07,X
; bzk optimize, JMP
C - - - - - 0x01184F 04:B83F: 20 03 BA  JSR sub_BA03
C - - - - - 0x011852 04:B842: 60        RTS



ofs_033_shot_handler_B843_02:
; con_shot_id_02
ofs_033_shot_handler_B843_03:
; con_shot_id_03
ofs_033_shot_handler_B843_04:
; con_shot_id_04
C - - J - - 0x011853 04:B843: A9 03     LDA #con_sfx_shoot_bullet
C - - - - - 0x011855 04:B845: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x011857 04:B847: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01185A 04:B84A: A9 02     LDA #$02
C - - - - - 0x01185C 04:B84C: 85 73     STA ram_0073_t02_loop_counter
bra_B84E_loop:
C - - - - - 0x01185E 04:B84E: 20 F5 B7  JSR sub_B7F5
C - - - - - 0x011861 04:B851: B0 4B     BCS bra_B89E_RTS
C - - - - - 0x011863 04:B853: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011866 04:B856: 29 80     AND #con_id_flag_80
; / 20
C - - - - - 0x011868 04:B858: 4A        LSR
C - - - - - 0x011869 04:B859: 4A        LSR
C - - - - - 0x01186A 04:B85A: 4A        LSR
C - - - - - 0x01186B 04:B85B: 4A        LSR
C - - - - - 0x01186C 04:B85C: 4A        LSR
; 
C - - - - - 0x01186D 04:B85D: 85 67     STA ram_0067_t29
C - - - - - 0x01186F 04:B85F: A5 73     LDA ram_0073_t02_loop_counter
C - - - - - 0x011871 04:B861: 18        CLC
C - - - - - 0x011872 04:B862: 65 67     ADC ram_0067_t29
C - - - - - 0x011874 04:B864: A8        TAY
C - - - - - 0x011875 04:B865: B1 5B     LDA (ram_005B_t11_data),Y
C - - - - - 0x011877 04:B867: 85 68     STA ram_0068_t08
C - - - - - 0x011879 04:B869: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x01187B 04:B86B: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x01187E 04:B86E: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011881 04:B871: 29 3F     AND #$3F
C - - - - - 0x011883 04:B873: 0A        ASL
C - - - - - 0x011884 04:B874: AA        TAX
C - - - - - 0x011885 04:B875: BD 67 BB  LDA tbl_BB67,X
C - - - - - 0x011888 04:B878: 85 5B     STA ram_005B_t12_data
C - - - - - 0x01188A 04:B87A: BD 68 BB  LDA tbl_BB67 + $01,X
C - - - - - 0x01188D 04:B87D: 85 5C     STA ram_005B_t12_data + $01
C - - - - - 0x01188F 04:B87F: A5 73     LDA ram_0073_t02_loop_counter
; * 04
C - - - - - 0x011891 04:B881: 0A        ASL
C - - - - - 0x011892 04:B882: 0A        ASL
; 
C - - - - - 0x011893 04:B883: A8        TAY
C - - - - - 0x011894 04:B884: B1 5B     LDA (ram_005B_t12_data),Y
C - - - - - 0x011896 04:B886: 85 69     STA ram_0069_t03_pos_X_lo
C - - - - - 0x011898 04:B888: C8        INY
C - - - - - 0x011899 04:B889: B1 5B     LDA (ram_005B_t12_data),Y
C - - - - - 0x01189B 04:B88B: 85 6A     STA ram_006A_t07_pos_X_hi
C - - - - - 0x01189D 04:B88D: C8        INY
C - - - - - 0x01189E 04:B88E: B1 5B     LDA (ram_005B_t12_data),Y
C - - - - - 0x0118A0 04:B890: 85 6B     STA ram_006B_t01_pos_Y_lo
C - - - - - 0x0118A2 04:B892: C8        INY
C - - - - - 0x0118A3 04:B893: B1 5B     LDA (ram_005B_t12_data),Y
C - - - - - 0x0118A5 04:B895: 85 6C     STA ram_006C_tFF_useless
C - - - - - 0x0118A7 04:B897: 20 C2 B7  JSR sub_B7C2
C - - - - - 0x0118AA 04:B89A: C6 73     DEC ram_0073_t02_loop_counter
C - - - - - 0x0118AC 04:B89C: 10 B0     BPL bra_B84E_loop
bra_B89E_RTS:
C - - - - - 0x0118AE 04:B89E: 60        RTS



ofs_033_shot_handler_B89F_05:
; con_shot_id_05
C - - J - - 0x0118AF 04:B89F: A9 03     LDA #con_sfx_shoot_bullet
C - - - - - 0x0118B1 04:B8A1: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0118B3 04:B8A3: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0118B6 04:B8A6: A9 02     LDA #$02
C - - - - - 0x0118B8 04:B8A8: 85 73     STA ram_0073_t03_loop_counter
loc_B8AA:
loc_B8AA_loop:
C D 1 - - - 0x0118BA 04:B8AA: 20 F5 B7  JSR sub_B7F5
C - - - - - 0x0118BD 04:B8AD: B0 59     BCS bra_B908_RTS
C - - - - - 0x0118BF 04:B8AF: A4 76     LDY ram_obj_index
C - - - - - 0x0118C1 04:B8B1: B9 4A 04  LDA ram_obj_id,Y
C - - - - - 0x0118C4 04:B8B4: C9 36     CMP #$36    ; con_enemy_id_36
C - - - - - 0x0118C6 04:B8B6: 90 09     BCC bra_B8C1
C - - - - - 0x0118C8 04:B8B8: C9 3A     CMP #con_enemy_id_3A
C - - - - - 0x0118CA 04:B8BA: F0 05     BEQ bra_B8C1
C - - - - - 0x0118CC 04:B8BC: 29 02     AND #$02
C - - - - - 0x0118CE 04:B8BE: 4C C7 B8  JMP loc_B8C7
bra_B8C1:
C - - - - - 0x0118D1 04:B8C1: B9 41 05  LDA ram_0541_obj_flags,Y
C - - - - - 0x0118D4 04:B8C4: 29 01     AND #$01
C - - - - - 0x0118D6 04:B8C6: 0A        ASL
loc_B8C7:
C D 1 - - - 0x0118D7 04:B8C7: 85 67     STA ram_0067_t2A
C - - - - - 0x0118D9 04:B8C9: A5 73     LDA ram_0073_t03_loop_counter
; * 04
C - - - - - 0x0118DB 04:B8CB: 0A        ASL
C - - - - - 0x0118DC 04:B8CC: 0A        ASL
; 
C - - - - - 0x0118DD 04:B8CD: 18        CLC
C - - - - - 0x0118DE 04:B8CE: 65 67     ADC ram_0067_t2A
C - - - - - 0x0118E0 04:B8D0: A8        TAY
C - - - - - 0x0118E1 04:B8D1: B1 5B     LDA (ram_005B_t11_data),Y
C - - - - - 0x0118E3 04:B8D3: 85 68     STA ram_0068_t08
C - - - - - 0x0118E5 04:B8D5: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x0118E7 04:B8D7: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x0118EA 04:B8DA: 20 E5 B7  JSR sub_B7E5
C - - - - - 0x0118ED 04:B8DD: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x0118F0 04:B8E0: 29 70     AND #$70
C - - - - - 0x0118F2 04:B8E2: D0 07     BNE bra_B8EB
C - - - - - 0x0118F4 04:B8E4: A9 0C     LDA #$0C
C - - - - - 0x0118F6 04:B8E6: 9D 52 05  STA ram_054E_obj + $04,X
C - - - - - 0x0118F9 04:B8E9: D0 05     BNE bra_B8F0    ; jmp
bra_B8EB:
C - - - - - 0x0118FB 04:B8EB: A9 18     LDA #$18
C - - - - - 0x0118FD 04:B8ED: 9D 52 05  STA ram_054E_obj + $04,X
bra_B8F0:
C - - - - - 0x011900 04:B8F0: A4 76     LDY ram_obj_index
C - - - - - 0x011902 04:B8F2: B9 4A 04  LDA ram_obj_id,Y
C - - - - - 0x011905 04:B8F5: C9 3A     CMP #con_enemy_id_3A
C - - - - - 0x011907 04:B8F7: D0 05     BNE bra_B8FE
C - - - - - 0x011909 04:B8F9: A9 04     LDA #con_enemy_id_04
C - - - - - 0x01190B 04:B8FB: 9D 4E 04  STA ram_obj_id + $04,X
bra_B8FE:
C - - - - - 0x01190E 04:B8FE: 20 C2 B7  JSR sub_B7C2
C - - - - - 0x011911 04:B901: C6 73     DEC ram_0073_t03_loop_counter
C - - - - - 0x011913 04:B903: 30 03     BMI bra_B908_RTS
C - - - - - 0x011915 04:B905: 4C AA B8  JMP loc_B8AA_loop
bra_B908_RTS:
C - - - - - 0x011918 04:B908: 60        RTS



ofs_033_shot_handler_B909_07:
; con_shot_id_07
ofs_033_shot_handler_B909_08:
; con_shot_id_08
ofs_033_shot_handler_B909_09:
; con_shot_id_09
ofs_033_shot_handler_B909_0A:
; con_shot_id_0A
C - - J - - 0x011919 04:B909: A9 0D     LDA #con_sfx_shoot_arrow
C - - - - - 0x01191B 04:B90B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01191D 04:B90D: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x011920 04:B910: 20 FB B7  JSR sub_B7FB
C - - - - - 0x011923 04:B913: B0 59     BCS bra_B96E_RTS
C - - - - - 0x011925 04:B915: A4 76     LDY ram_obj_index
C - - - - - 0x011927 04:B917: B9 41 05  LDA ram_0541_obj_flags,Y
C - - - - - 0x01192A 04:B91A: 29 01     AND #$01
; bzk optimize, useless STA
C - - - - - 0x01192C 04:B91C: 85 67     STA ram_0067_tFE_useless
C - - - - - 0x01192E 04:B91E: 0A        ASL
C - - - - - 0x01192F 04:B91F: A8        TAY
C - - - - - 0x011930 04:B920: B1 5B     LDA (ram_005B_t11_data),Y
C - - - - - 0x011932 04:B922: 85 68     STA ram_0068_t08
C - - - - - 0x011934 04:B924: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x011937 04:B927: B9 BF B9  LDA tbl_B9BF,Y
C - - - - - 0x01193A 04:B92A: 85 61     STA ram_0061_t03_data
C - - - - - 0x01193C 04:B92C: B9 C0 B9  LDA tbl_B9BF + $01,Y
C - - - - - 0x01193F 04:B92F: 85 62     STA ram_0061_t03_data + $01
C - - - - - 0x011941 04:B931: A9 08     LDA #$08
C - - - - - 0x011943 04:B933: 9D 38 05  STA ram_0534_obj + $04,X
C - - - - - 0x011946 04:B936: A9 80     LDA #$80
C - - - - - 0x011948 04:B938: 9D 5F 05  STA ram_055B_obj_anim_counter + $04,X
C - - - - - 0x01194B 04:B93B: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x01194E 04:B93E: 29 70     AND #$70
C - - - - - 0x011950 04:B940: D0 07     BNE bra_B949
C - - - - - 0x011952 04:B942: A9 1E     LDA #$1E
C - - - - - 0x011954 04:B944: 9D 52 05  STA ram_054E_obj + $04,X
C - - - - - 0x011957 04:B947: D0 05     BNE bra_B94E    ; jmp
bra_B949:
- - - - - - 0x011959 04:B949: A9 32     LDA #$32
- - - - - - 0x01195B 04:B94B: 9D 52 05  STA ram_054E_obj + $04,X
bra_B94E:
C - - - - - 0x01195E 04:B94E: A9 00     LDA #$00
C - - - - - 0x011960 04:B950: 85 69     STA ram_0069_t03_pos_X_lo
C - - - - - 0x011962 04:B952: 85 6A     STA ram_006A_t07_pos_X_hi
C - - - - - 0x011964 04:B954: 85 6B     STA ram_006B_t01_pos_Y_lo
C - - - - - 0x011966 04:B956: 85 6C     STA ram_006C_tFF_useless
C - - - - - 0x011968 04:B958: 20 19 B8  JSR sub_B819
C - - - - - 0x01196B 04:B95B: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x01196E 04:B95E: 29 3F     AND #$3F
C - - - - - 0x011970 04:B960: A8        TAY
C - - - - - 0x011971 04:B961: B1 61     LDA (ram_0061_t03_data),Y
C - - - - - 0x011973 04:B963: 9D 45 05  STA ram_0541_obj_flags + $04,X
C - - - - - 0x011976 04:B966: B9 83 B9  LDA tbl_B983,Y
C - - - - - 0x011979 04:B969: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x01197B 04:B96B: 4C D0 B7  JMP loc_B7D0
bra_B96E_RTS:
- - - - - - 0x01197E 04:B96E: 60        RTS



ofs_033_shot_handler_B96F_15:
; con_shot_id_15
ofs_033_shot_handler_B96F_16:
; con_shot_id_16
ofs_033_shot_handler_B96F_17:
; con_shot_id_17
ofs_033_shot_handler_B96F_18:
; con_shot_id_18
C - - J - - 0x01197F 04:B96F: A9 09     LDA #con_sfx_shoot_fire
C - - - - - 0x011981 04:B971: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x011983 04:B973: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x011986 04:B976: 4C 91 B7  JMP loc_B791



ofs_033_shot_handler_B979_19:
; con_shot_id_19
C - - J - - 0x011989 04:B979: A9 06     LDA #con_sfx_shoot_laser
C - - - - - 0x01198B 04:B97B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01198D 04:B97D: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x011990 04:B980: 4C 91 B7  JMP loc_B791



tbl_B983:
- - - - - - 0x011993 04:B983: 02        .byte con_0067_t12_02   ; 00 con_enemy_id_00
- D 1 - - - 0x011994 04:B984: 02        .byte con_0067_t12_02   ; 01 con_enemy_id_01
- D 1 - - - 0x011995 04:B985: 02        .byte con_0067_t12_02   ; 02 con_enemy_id_02
- D 1 - - - 0x011996 04:B986: 02        .byte con_0067_t12_02   ; 03 con_enemy_id_03
- D 1 - - - 0x011997 04:B987: 02        .byte con_0067_t12_02   ; 04 con_enemy_id_04
- D 1 - - - 0x011998 04:B988: 02        .byte con_0067_t12_02   ; 05 con_enemy_id_05
- D 1 - - - 0x011999 04:B989: 02        .byte con_0067_t12_02   ; 06 con_enemy_id_06
- D 1 - - - 0x01199A 04:B98A: 01        .byte con_0067_t12_01   ; 07 con_enemy_id_07
- D 1 - - - 0x01199B 04:B98B: 01        .byte con_0067_t12_01   ; 08 con_enemy_id_08
- D 1 - - - 0x01199C 04:B98C: 03        .byte con_0067_t12_03   ; 09 con_enemy_id_09
- - - - - - 0x01199D 04:B98D: 03        .byte con_0067_t12_03   ; 0A con_enemy_id_0A
- - - - - - 0x01199E 04:B98E: 00        .byte con_0067_t12_00   ; 0B con_enemy_id_0B
- - - - - - 0x01199F 04:B98F: 00        .byte con_0067_t12_00   ; 0C con_enemy_id_0C
- - - - - - 0x0119A0 04:B990: 01        .byte con_0067_t12_01   ; 0D con_enemy_id_0D
- D 1 - - - 0x0119A1 04:B991: 01        .byte con_0067_t12_01   ; 0E con_enemy_id_0E
- D 1 - - - 0x0119A2 04:B992: 01        .byte con_0067_t12_01   ; 0F con_enemy_id_0F
- - - - - - 0x0119A3 04:B993: 02        .byte con_0067_t12_02   ; 10 con_enemy_id_10
- D 1 - - - 0x0119A4 04:B994: 02        .byte con_0067_t12_02   ; 11 con_enemy_id_11
- D 1 - - - 0x0119A5 04:B995: 02        .byte con_0067_t12_02   ; 12 con_enemy_id_12
- - - - - - 0x0119A6 04:B996: 00        .byte con_0067_t12_00   ; 13 con_enemy_id_13
- - - - - - 0x0119A7 04:B997: 00        .byte con_0067_t12_00   ; 14 con_enemy_id_14
- D 1 - - - 0x0119A8 04:B998: 01        .byte con_0067_t12_01   ; 15 con_enemy_id_15
- D 1 - - - 0x0119A9 04:B999: 01        .byte con_0067_t12_01   ; 16 con_enemy_id_16
- D 1 - - - 0x0119AA 04:B99A: 01        .byte con_0067_t12_01   ; 17 con_enemy_id_17
- - - - - - 0x0119AB 04:B99B: 01        .byte con_0067_t12_01   ; 18 con_enemy_id_18
- D 1 - - - 0x0119AC 04:B99C: 03        .byte con_0067_t12_03   ; 19 con_enemy_id_19
- - - - - - 0x0119AD 04:B99D: 00        .byte con_0067_t12_00   ; 1A con_enemy_id_1A
- - - - - - 0x0119AE 04:B99E: 00        .byte con_0067_t12_00   ; 1B con_enemy_id_1B
- - - - - - 0x0119AF 04:B99F: 02        .byte con_0067_t12_02   ; 1C con_enemy_id_1C
- - - - - - 0x0119B0 04:B9A0: 00        .byte con_0067_t12_00   ; 1D con_enemy_id_1D
- - - - - - 0x0119B1 04:B9A1: 00        .byte con_0067_t12_00   ; 1E con_enemy_id_1E
- - - - - - 0x0119B2 04:B9A2: 00        .byte con_0067_t12_00   ; 1F con_enemy_id_1F
- - - - - - 0x0119B3 04:B9A3: 00        .byte con_0067_t12_00   ; 20 con_enemy_id_20
- - - - - - 0x0119B4 04:B9A4: 00        .byte con_0067_t12_00   ; 21 con_enemy_id_21
- - - - - - 0x0119B5 04:B9A5: 00        .byte con_0067_t12_00   ; 22 con_enemy_id_22
- - - - - - 0x0119B6 04:B9A6: 00        .byte con_0067_t12_00   ; 23 con_enemy_id_23



ofs_033_shot_handler_B9A7_0D:
; con_shot_id_0D
ofs_033_shot_handler_B9A7_0F:
; con_shot_id_0F
ofs_033_shot_handler_B9A7_10:
; con_shot_id_10
ofs_033_shot_handler_B9A7_12:
; con_shot_id_12
C - - J - - 0x0119B7 04:B9A7: A9 0D     LDA #con_sfx_shoot_arrow
C - - - - - 0x0119B9 04:B9A9: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0119BB 04:B9AB: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0119BE 04:B9AE: A9 01     LDA #$01
C - - - - - 0x0119C0 04:B9B0: 85 73     STA ram_0073_t03_loop_counter
C - - - - - 0x0119C2 04:B9B2: 4C AA B8  JMP loc_B8AA



ofs_033_shot_handler_B9B5_0E:
; con_shot_id_0E
ofs_033_shot_handler_B9B5_11:
; con_shot_id_11
C - - J - - 0x0119C5 04:B9B5: A9 0D     LDA #con_sfx_shoot_arrow
C - - - - - 0x0119C7 04:B9B7: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0119C9 04:B9B9: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0119CC 04:B9BC: 4C 91 B7  JMP loc_B791



tbl_B9BF:
- D 1 - - - 0x0119CF 04:B9BF: C3 B9     .word off_B9C3_00
- D 1 - - - 0x0119D1 04:B9C1: E3 B9     .word off_B9E3_01



off_B9C3_00:
- - - - - - 0x0119D3 04:B9C3: 00        .byte $00   ; 00 
- - - - - - 0x0119D4 04:B9C4: 00        .byte $00   ; 01 
- - - - - - 0x0119D5 04:B9C5: 00        .byte $00   ; 02 
- - - - - - 0x0119D6 04:B9C6: 00        .byte $00   ; 03 
- - - - - - 0x0119D7 04:B9C7: 00        .byte $00   ; 04 
- - - - - - 0x0119D8 04:B9C8: 00        .byte $00   ; 05 
- - - - - - 0x0119D9 04:B9C9: 00        .byte $00   ; 06 
- D 1 - I - 0x0119DA 04:B9CA: 00        .byte $00   ; 07 
- D 1 - I - 0x0119DB 04:B9CB: 00        .byte $00   ; 08 
- D 1 - I - 0x0119DC 04:B9CC: 00        .byte $00   ; 09 
- - - - - - 0x0119DD 04:B9CD: 00        .byte $00   ; 0A 
- - - - - - 0x0119DE 04:B9CE: 00        .byte $00   ; 0B 
- - - - - - 0x0119DF 04:B9CF: 00        .byte $00   ; 0C 
- - - - - - 0x0119E0 04:B9D0: 00        .byte $00   ; 0D 
- - - - - - 0x0119E1 04:B9D1: 00        .byte $00   ; 0E 
- - - - - - 0x0119E2 04:B9D2: 00        .byte $00   ; 0F 
- - - - - - 0x0119E3 04:B9D3: 00        .byte $00   ; 10 
- - - - - - 0x0119E4 04:B9D4: 00        .byte $00   ; 11 
- - - - - - 0x0119E5 04:B9D5: 00        .byte $00   ; 12 
- - - - - - 0x0119E6 04:B9D6: 00        .byte $00   ; 13 
- - - - - - 0x0119E7 04:B9D7: 00        .byte $00   ; 14 
- - - - - - 0x0119E8 04:B9D8: 00        .byte $00   ; 15 
- - - - - - 0x0119E9 04:B9D9: 00        .byte $00   ; 16 
- - - - - - 0x0119EA 04:B9DA: 00        .byte $00   ; 17 
- - - - - - 0x0119EB 04:B9DB: 00        .byte $00   ; 18 
- - - - - - 0x0119EC 04:B9DC: 00        .byte $00   ; 19 
- - - - - - 0x0119ED 04:B9DD: 00        .byte $00   ; 1A 
- - - - - - 0x0119EE 04:B9DE: 00        .byte $00   ; 1B 
- - - - - - 0x0119EF 04:B9DF: 00        .byte $00   ; 1C 
- - - - - - 0x0119F0 04:B9E0: 00        .byte $00   ; 1D 
- - - - - - 0x0119F1 04:B9E1: 00        .byte $00   ; 1E 
- - - - - - 0x0119F2 04:B9E2: 00        .byte $00   ; 1F 



off_B9E3_01:
- - - - - - 0x0119F3 04:B9E3: 00        .byte $00   ; 00 
- - - - - - 0x0119F4 04:B9E4: 00        .byte $00   ; 01 
- - - - - - 0x0119F5 04:B9E5: 00        .byte $00   ; 02 
- - - - - - 0x0119F6 04:B9E6: 00        .byte $00   ; 03 
- - - - - - 0x0119F7 04:B9E7: 00        .byte $00   ; 04 
- - - - - - 0x0119F8 04:B9E8: 00        .byte $00   ; 05 
- - - - - - 0x0119F9 04:B9E9: 00        .byte $00   ; 06 
- D 1 - I - 0x0119FA 04:B9EA: 10        .byte $10   ; 07 
- D 1 - I - 0x0119FB 04:B9EB: 10        .byte $10   ; 08 
- D 1 - I - 0x0119FC 04:B9EC: 10        .byte $10   ; 09 
- - - - - - 0x0119FD 04:B9ED: 10        .byte $10   ; 0A 
- - - - - - 0x0119FE 04:B9EE: 00        .byte $00   ; 0B 
- - - - - - 0x0119FF 04:B9EF: 00        .byte $00   ; 0C 
- - - - - - 0x011A00 04:B9F0: 10        .byte $10   ; 0D 
- - - - - - 0x011A01 04:B9F1: 10        .byte $10   ; 0E 
- - - - - - 0x011A02 04:B9F2: 10        .byte $10   ; 0F 
- - - - - - 0x011A03 04:B9F3: 10        .byte $10   ; 10 
- - - - - - 0x011A04 04:B9F4: 10        .byte $10   ; 11 
- - - - - - 0x011A05 04:B9F5: 10        .byte $10   ; 12 
- - - - - - 0x011A06 04:B9F6: 00        .byte $00   ; 13 
- - - - - - 0x011A07 04:B9F7: 00        .byte $00   ; 14 
- - - - - - 0x011A08 04:B9F8: 00        .byte $00   ; 15 
- - - - - - 0x011A09 04:B9F9: 00        .byte $00   ; 16 
- - - - - - 0x011A0A 04:B9FA: 00        .byte $00   ; 17 
- - - - - - 0x011A0B 04:B9FB: 00        .byte $00   ; 18 
- - - - - - 0x011A0C 04:B9FC: 00        .byte $00   ; 19 
- - - - - - 0x011A0D 04:B9FD: 00        .byte $00   ; 1A 
- - - - - - 0x011A0E 04:B9FE: 00        .byte $00   ; 1B 
- - - - - - 0x011A0F 04:B9FF: 00        .byte $00   ; 1C 
- - - - - - 0x011A10 04:BA00: 00        .byte $00   ; 1D 
- - - - - - 0x011A11 04:BA01: 00        .byte $00   ; 1E 
- - - - - - 0x011A12 04:BA02: 00        .byte $00   ; 1F 



sub_BA03:
C - - - - - 0x011A13 04:BA03: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x011A15 04:BA05: 48        PHA
C - - - - - 0x011A16 04:BA06: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x011A18 04:BA08: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x011A1A 04:BA0A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x011A1D 04:BA0D: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011A20 04:BA10: 29 3F     AND #$3F
C - - - - - 0x011A22 04:BA12: 0A        ASL
C - - - - - 0x011A23 04:BA13: A8        TAY
C - - - - - 0x011A24 04:BA14: B9 E3 95  LDA tbl_0x00B5F3,Y
C - - - - - 0x011A27 04:BA17: 85 5B     STA ram_005B_t13_data
C - - - - - 0x011A29 04:BA19: C8        INY
C - - - - - 0x011A2A 04:BA1A: B9 E3 95  LDA tbl_0x00B5F3,Y
C - - - - - 0x011A2D 04:BA1D: 85 5C     STA ram_005B_t13_data + $01
C - - - - - 0x011A2F 04:BA1F: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011A32 04:BA22: 29 7F     AND #$7F
C - - - - - 0x011A34 04:BA24: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x011A36 04:BA26: B0 04     BCS bra_BA2C
C - - - - - 0x011A38 04:BA28: A9 00     LDA #$00
C - - - - - 0x011A3A 04:BA2A: F0 03     BEQ bra_BA2F    ; jmp
bra_BA2C:
C - - - - - 0x011A3C 04:BA2C: BD DD 04  LDA ram_04D9_obj + $04,X
bra_BA2F:
C - - - - - 0x011A3F 04:BA2F: 0A        ASL
C - - - - - 0x011A40 04:BA30: A8        TAY
C - - - - - 0x011A41 04:BA31: B1 5B     LDA (ram_005B_t13_data),Y
C - - - - - 0x011A43 04:BA33: 85 5D     STA ram_005D_t04_data
C - - - - - 0x011A45 04:BA35: C8        INY
C - - - - - 0x011A46 04:BA36: B1 5B     LDA (ram_005B_t13_data),Y
C - - - - - 0x011A48 04:BA38: 85 5E     STA ram_005D_t04_data + $01
; bzk optimize, LDY 02
C - - - - - 0x011A4A 04:BA3A: A0 00     LDY #$00
C - - - - - 0x011A4C 04:BA3C: C8        INY
C - - - - - 0x011A4D 04:BA3D: C8        INY ; 02
C - - - - - 0x011A4E 04:BA3E: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A50 04:BA40: 9D EA 04  STA ram_04E6_obj_anim_timer + $04,X
C - - - - - 0x011A53 04:BA43: C8        INY ; 03
C - - - - - 0x011A54 04:BA44: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A56 04:BA46: 9D A9 04  STA ram_spr_data_ptr_lo_obj + $07,X
C - - - - - 0x011A59 04:BA49: C8        INY ; 04
C - - - - - 0x011A5A 04:BA4A: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A5C 04:BA4C: 9D B6 04  STA ram_spr_data_ptr_hi_obj + $07,X
C - - - - - 0x011A5F 04:BA4F: C8        INY ; 05
C - - - - - 0x011A60 04:BA50: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A62 04:BA52: 9D C3 04  STA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x011A65 04:BA55: C8        INY ; 06
C - - - - - 0x011A66 04:BA56: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A68 04:BA58: 9D D0 04  STA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x011A6B 04:BA5B: C8        INY ; 07
C - - - - - 0x011A6C 04:BA5C: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A6E 04:BA5E: 9D 70 05  STA ram_056C_obj + $04,X
C - - - - - 0x011A71 04:BA61: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011A74 04:BA64: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x011A76 04:BA66: 90 11     BCC bra_BA79
C - - - - - 0x011A78 04:BA68: A0 00     LDY #$00
C - - - - - 0x011A7A 04:BA6A: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A7C 04:BA6C: 10 09     BPL bra_BA77
C - - - - - 0x011A7E 04:BA6E: C8        INY ; 01
C - - - - - 0x011A7F 04:BA6F: B1 5D     LDA (ram_005D_t04_data),Y
C - - - - - 0x011A81 04:BA71: 29 7F     AND #$7F
C - - - - - 0x011A83 04:BA73: 85 27     STA ram_chr_bank_spr + $03
C - - - - - 0x011A85 04:BA75: D0 02     BNE bra_BA79    ; jmp
bra_BA77:
C - - - - - 0x011A87 04:BA77: 85 26     STA ram_chr_bank_spr + $02
bra_BA79:
C - - - - - 0x011A89 04:BA79: 68        PLA
C - - - - - 0x011A8A 04:BA7A: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x011A8C 04:BA7C: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x011A8F 04:BA7F: 60        RTS



sub_BA80:
C - - - - - 0x011A90 04:BA80: 20 A7 FF  JSR sub_0x01FFB7
C - - - - - 0x011A93 04:BA83: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011A95 04:BA85: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x011A97 04:BA87: 9D 11 05  STA ram_spd_X_lo_obj + $04,X
C - - - - - 0x011A9A 04:BA8A: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x011A9C 04:BA8C: 9D 04 05  STA ram_spd_X_fr_obj + $04,X
C - - - - - 0x011A9F 04:BA8F: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x011AA1 04:BA91: 9D 2B 05  STA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011AA4 04:BA94: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x011AA6 04:BA96: 9D 1E 05  STA ram_spd_Y_fr_obj + $04,X
C - - - - - 0x011AA9 04:BA99: A9 00     LDA #$00
C - - - - - 0x011AAB 04:BA9B: 8D 5B 04  STA ram_pos_X_fr_obj + $04
C - - - - - 0x011AAE 04:BA9E: 8D 82 04  STA ram_pos_Y_fr_obj + $04
C - - - - - 0x011AB1 04:BAA1: 60        RTS



sub_BAA2_calculate_damage_amount_to_player:
; bzk optimize, LDY
C - - - - - 0x011AB2 04:BAA2: A5 D2     LDA ram_00D2_data_index
C - - - - - 0x011AB4 04:BAA4: A8        TAY
C - - - - - 0x011AB5 04:BAA5: B9 DE BA  LDA tbl_BADE,Y
C - - - - - 0x011AB8 04:BAA8: 85 67     STA ram_0067_t2B
C - - - - - 0x011ABA 04:BAAA: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011ABD 04:BAAD: 29 3F     AND #$3F
C - - - - - 0x011ABF 04:BAAF: A8        TAY
C - - - - - 0x011AC0 04:BAB0: B9 BA BA  LDA tbl_BABA_damage_to_player,Y
C - - - - - 0x011AC3 04:BAB3: 18        CLC
C - - - - - 0x011AC4 04:BAB4: 65 67     ADC ram_0067_t2B
C - - - - - 0x011AC6 04:BAB6: 9D 7D 05  STA ram_obj_damage + $04,X
C - - - - - 0x011AC9 04:BAB9: 60        RTS



tbl_BABA_damage_to_player:
- - - - - - 0x011ACA 04:BABA: 01        .byte $01   ; 00 con_enemy_id_00
- D 1 - - - 0x011ACB 04:BABB: 01        .byte $01   ; 01 con_enemy_id_01
- D 1 - - - 0x011ACC 04:BABC: 01        .byte $01   ; 02 con_enemy_id_02
- D 1 - - - 0x011ACD 04:BABD: 01        .byte $01   ; 03 con_enemy_id_03
- D 1 - - - 0x011ACE 04:BABE: 01        .byte $01   ; 04 con_enemy_id_04
- D 1 - - - 0x011ACF 04:BABF: 01        .byte $01   ; 05 con_enemy_id_05
- D 1 - - - 0x011AD0 04:BAC0: 01        .byte $01   ; 06 con_enemy_id_06
- D 1 - - - 0x011AD1 04:BAC1: 01        .byte $01   ; 07 con_enemy_id_07
- D 1 - - - 0x011AD2 04:BAC2: 01        .byte $01   ; 08 con_enemy_id_08
- D 1 - - - 0x011AD3 04:BAC3: 01        .byte $01   ; 09 con_enemy_id_09
- - - - - - 0x011AD4 04:BAC4: 01        .byte $01   ; 0A con_enemy_id_0A
- - - - - - 0x011AD5 04:BAC5: 01        .byte $01   ; 0B con_enemy_id_0B
- - - - - - 0x011AD6 04:BAC6: 01        .byte $01   ; 0C con_enemy_id_0C
- - - - - - 0x011AD7 04:BAC7: 01        .byte $01   ; 0D con_enemy_id_0D
- D 1 - - - 0x011AD8 04:BAC8: 01        .byte $01   ; 0E con_enemy_id_0E
- D 1 - - - 0x011AD9 04:BAC9: 01        .byte $01   ; 0F con_enemy_id_0F
- - - - - - 0x011ADA 04:BACA: 01        .byte $01   ; 10 con_enemy_id_10
- D 1 - - - 0x011ADB 04:BACB: 01        .byte $01   ; 11 con_enemy_id_11
- D 1 - - - 0x011ADC 04:BACC: 01        .byte $01   ; 12 con_enemy_id_12
- - - - - - 0x011ADD 04:BACD: 00        .byte $00   ; 13 con_enemy_id_13
- - - - - - 0x011ADE 04:BACE: 00        .byte $00   ; 14 con_enemy_id_14
- D 1 - - - 0x011ADF 04:BACF: 01        .byte $01   ; 15 con_enemy_id_15
- D 1 - - - 0x011AE0 04:BAD0: 01        .byte $01   ; 16 con_enemy_id_16
- D 1 - - - 0x011AE1 04:BAD1: 01        .byte $01   ; 17 con_enemy_id_17
- - - - - - 0x011AE2 04:BAD2: 01        .byte $01   ; 18 con_enemy_id_18
- D 1 - - - 0x011AE3 04:BAD3: 02        .byte $02   ; 19 con_enemy_id_19
- - - - - - 0x011AE4 04:BAD4: 01        .byte $01   ; 1A con_enemy_id_1A
- - - - - - 0x011AE5 04:BAD5: 00        .byte $00   ; 1B con_enemy_id_1B
- - - - - - 0x011AE6 04:BAD6: 00        .byte $00   ; 1C con_enemy_id_1C
- - - - - - 0x011AE7 04:BAD7: 00        .byte $00   ; 1D con_enemy_id_1D
- - - - - - 0x011AE8 04:BAD8: 00        .byte $00   ; 1E con_enemy_id_1E
- - - - - - 0x011AE9 04:BAD9: 00        .byte $00   ; 1F con_enemy_id_1F
- - - - - - 0x011AEA 04:BADA: 00        .byte $00   ; 20 con_enemy_id_20
- - - - - - 0x011AEB 04:BADB: 00        .byte $00   ; 21 con_enemy_id_21
- - - - - - 0x011AEC 04:BADC: 00        .byte $00   ; 22 con_enemy_id_22
- - - - - - 0x011AED 04:BADD: 00        .byte $00   ; 23 con_enemy_id_23



tbl_BADE:
- D 1 - - - 0x011AEE 04:BADE: 00        .byte $00   ; 00 
- D 1 - - - 0x011AEF 04:BADF: 01        .byte $01   ; 01 
- D 1 - - - 0x011AF0 04:BAE0: 03        .byte $03   ; 02 
- D 1 - - - 0x011AF1 04:BAE1: 05        .byte $05   ; 03 
- D 1 - - - 0x011AF2 04:BAE2: 00        .byte $00   ; 04 



tbl_BAE3:
- - - - - - 0x011AF3 04:BAE3: 23 BB     .word _off018_BB23_00
- D 1 - - - 0x011AF5 04:BAE5: 23 BB     .word _off018_BB23_01
- D 1 - - - 0x011AF7 04:BAE7: 27 BB     .word _off018_BB27_02
- D 1 - - - 0x011AF9 04:BAE9: 2F BB     .word _off018_BB2F_03
- D 1 - - - 0x011AFB 04:BAEB: 37 BB     .word _off018_BB37_04
- D 1 - - - 0x011AFD 04:BAED: 3F BB     .word _off018_BB3F_05
- D 1 - - - 0x011AFF 04:BAEF: 3F BB     .word _off018_BB3F_06
- D 1 - - - 0x011B01 04:BAF1: 3F BB     .word _off018_BB3F_07
- D 1 - - - 0x011B03 04:BAF3: 3F BB     .word _off018_BB3F_08
- D 1 - - - 0x011B05 04:BAF5: 3F BB     .word _off018_BB3F_09
- - - - - - 0x011B07 04:BAF7: 3F BB     .word _off018_BB3F_0A
- - - - - - 0x011B09 04:BAF9: 3F BB     .word _off018_BB3F_0B
- - - - - - 0x011B0B 04:BAFB: 3F BB     .word _off018_BB3F_0C
- - - - - - 0x011B0D 04:BAFD: 4B BB     .word _off018_BB4B_0D
- D 1 - - - 0x011B0F 04:BAFF: 4B BB     .word _off018_BB4B_0E
- D 1 - - - 0x011B11 04:BB01: 53 BB     .word _off018_BB53_0F
- - - - - - 0x011B13 04:BB03: 63 BB     .word _off018_BB63_10
- D 1 - - - 0x011B15 04:BB05: 63 BB     .word _off018_BB63_11
- D 1 - - - 0x011B17 04:BB07: 53 BB     .word _off018_BB53_12
- - - - - - 0x011B19 04:BB09: 63 BB     .word _off018_BB63_13
- - - - - - 0x011B1B 04:BB0B: 63 BB     .word _off018_BB63_14
- D 1 - - - 0x011B1D 04:BB0D: 23 BB     .word _off018_BB23_15
- D 1 - - - 0x011B1F 04:BB0F: 5B BB     .word _off018_BB5B_16
- D 1 - - - 0x011B21 04:BB11: 5F BB     .word _off018_BB5F_17
- - - - - - 0x011B23 04:BB13: 63 BB     .word _off018_BB63_18
- D 1 - - - 0x011B25 04:BB15: 23 BB     .word _off018_BB23_19
- - - - - - 0x011B27 04:BB17: 63 BB     .word _off018_BB63_1A
- - - - - - 0x011B29 04:BB19: 63 BB     .word _off018_BB63_1B
- - - - - - 0x011B2B 04:BB1B: 63 BB     .word _off018_BB63_1C
- - - - - - 0x011B2D 04:BB1D: 63 BB     .word _off018_BB63_1D
- - - - - - 0x011B2F 04:BB1F: 63 BB     .word _off018_BB63_1E
- - - - - - 0x011B31 04:BB21: 63 BB     .word _off018_BB63_1F



_off018_BB23_00:
; con_enemy_id_00
_off018_BB23_01:
; con_enemy_id_01
_off018_BB23_15:
; con_enemy_id_15
_off018_BB23_19:
; con_enemy_id_19
- D 1 - I - 0x011B33 04:BB23: 04        .byte $04   ; 
- - - - - - 0x011B34 04:BB24: 04        .byte $04   ; 
- D 1 - I - 0x011B35 04:BB25: 0C        .byte $0C   ; 
- - - - - - 0x011B36 04:BB26: 0C        .byte $0C   ; 



_off018_BB27_02:
; con_enemy_id_02
- D 1 - I - 0x011B37 04:BB27: 06        .byte $06   ; 
- D 1 - I - 0x011B38 04:BB28: 08        .byte $08   ; 
- D 1 - I - 0x011B39 04:BB29: 0A        .byte $0A   ; 
- - - - - - 0x011B3A 04:BB2A: 00        .byte $00   ; 
- - - - - - 0x011B3B 04:BB2B: 02        .byte $02   ; 
- - - - - - 0x011B3C 04:BB2C: 00        .byte $00   ; 
- - - - - - 0x011B3D 04:BB2D: 0E        .byte $0E   ; 
- - - - - - 0x011B3E 04:BB2E: 00        .byte $00   ; 



_off018_BB2F_03:
; con_enemy_id_03
- D 1 - I - 0x011B3F 04:BB2F: 07        .byte $07   ; 
- D 1 - I - 0x011B40 04:BB30: 08        .byte $08   ; 
- D 1 - I - 0x011B41 04:BB31: 09        .byte $09   ; 
- - - - - - 0x011B42 04:BB32: 00        .byte $00   ; 
- - - - - - 0x011B43 04:BB33: 01        .byte $01   ; 
- - - - - - 0x011B44 04:BB34: 00        .byte $00   ; 
- - - - - - 0x011B45 04:BB35: 0F        .byte $0F   ; 
- - - - - - 0x011B46 04:BB36: 00        .byte $00   ; 



_off018_BB37_04:
; con_enemy_id_04
- D 1 - I - 0x011B47 04:BB37: 0E        .byte $0E   ; 
- D 1 - I - 0x011B48 04:BB38: 0C        .byte $0C   ; 
- D 1 - I - 0x011B49 04:BB39: 0A        .byte $0A   ; 
- - - - - - 0x011B4A 04:BB3A: 00        .byte $00   ; 
- D 1 - I - 0x011B4B 04:BB3B: 02        .byte $02   ; 
- D 1 - I - 0x011B4C 04:BB3C: 04        .byte $04   ; 
- D 1 - I - 0x011B4D 04:BB3D: 06        .byte $06   ; 
- - - - - - 0x011B4E 04:BB3E: 00        .byte $00   ; 



_off018_BB3F_05:
; con_enemy_id_05
_off018_BB3F_06:
; con_enemy_id_06
_off018_BB3F_07:
; con_enemy_id_07
_off018_BB3F_08:
; con_enemy_id_08
_off018_BB3F_09:
; con_enemy_id_09
_off018_BB3F_0A:
; con_enemy_id_0A
_off018_BB3F_0B:
; con_enemy_id_0B
_off018_BB3F_0C:
; con_enemy_id_0C
- D 1 - I - 0x011B4F 04:BB3F: 04        .byte $04   ; 
- - - - - - 0x011B50 04:BB40: 04        .byte $04   ; 
- D 1 - I - 0x011B51 04:BB41: 0C        .byte $0C   ; 
- - - - - - 0x011B52 04:BB42: 0C        .byte $0C   ; 
- D 1 - I - 0x011B53 04:BB43: 03        .byte $03   ; 
- - - - - - 0x011B54 04:BB44: 03        .byte $03   ; 
- D 1 - I - 0x011B55 04:BB45: 0D        .byte $0D   ; 
- - - - - - 0x011B56 04:BB46: 0D        .byte $0D   ; 
- D 1 - I - 0x011B57 04:BB47: 05        .byte $05   ; 
- - - - - - 0x011B58 04:BB48: 05        .byte $05   ; 
- D 1 - I - 0x011B59 04:BB49: 0B        .byte $0B   ; 
- - - - - - 0x011B5A 04:BB4A: 0B        .byte $0B   ; 



_off018_BB4B_0D:
; con_enemy_id_0D
_off018_BB4B_0E:
; con_enemy_id_0E
- D 1 - I - 0x011B5B 04:BB4B: 03        .byte $03   ; 
- - - - - - 0x011B5C 04:BB4C: 03        .byte $03   ; 
- D 1 - I - 0x011B5D 04:BB4D: 0D        .byte $0D   ; 
- - - - - - 0x011B5E 04:BB4E: 0D        .byte $0D   ; 
- - - - - - 0x011B5F 04:BB4F: 05        .byte $05   ; 
- - - - - - 0x011B60 04:BB50: 05        .byte $05   ; 
- - - - - - 0x011B61 04:BB51: 0B        .byte $0B   ; 
- - - - - - 0x011B62 04:BB52: 0B        .byte $0B   ; 



_off018_BB53_0F:
; con_enemy_id_0F
_off018_BB53_12:
; con_enemy_id_12
- D 1 - I - 0x011B63 04:BB53: 02        .byte $02   ; 
- - - - - - 0x011B64 04:BB54: 02        .byte $02   ; 
- D 1 - I - 0x011B65 04:BB55: 06        .byte $06   ; 
- - - - - - 0x011B66 04:BB56: 06        .byte $06   ; 
- D 1 - I - 0x011B67 04:BB57: 0E        .byte $0E   ; 
- - - - - - 0x011B68 04:BB58: 0E        .byte $0E   ; 
- D 1 - I - 0x011B69 04:BB59: 0A        .byte $0A   ; 
- - - - - - 0x011B6A 04:BB5A: 0A        .byte $0A   ; 



_off018_BB5B_16:
; con_enemy_id_16
- D 1 - I - 0x011B6B 04:BB5B: 05        .byte $05   ; 
- - - - - - 0x011B6C 04:BB5C: 05        .byte $05   ; 
- - - - - - 0x011B6D 04:BB5D: 0B        .byte $0B   ; 
- - - - - - 0x011B6E 04:BB5E: 0B        .byte $0B   ; 



_off018_BB5F_17:
; con_enemy_id_17
- D 1 - I - 0x011B6F 04:BB5F: 02        .byte $02   ; 
- - - - - - 0x011B70 04:BB60: 02        .byte $02   ; 
- D 1 - I - 0x011B71 04:BB61: 0E        .byte $0E   ; 
- - - - - - 0x011B72 04:BB62: 0E        .byte $0E   ; 



_off018_BB63_10:
; con_enemy_id_10
_off018_BB63_11:
; con_enemy_id_11
_off018_BB63_13:
; con_enemy_id_13
_off018_BB63_14:
; con_enemy_id_14
_off018_BB63_18:
; con_enemy_id_18
_off018_BB63_1A:
; con_enemy_id_1A
_off018_BB63_1B:
; con_enemy_id_1B
_off018_BB63_1C:
; con_enemy_id_1C
_off018_BB63_1D:
; con_enemy_id_1D
_off018_BB63_1E:
; con_enemy_id_1E
_off018_BB63_1F:
; con_enemy_id_1F
- D 1 - I - 0x011B73 04:BB63: 05        .byte $05   ; 
- - - - - - 0x011B74 04:BB64: 05        .byte $05   ; 
- D 1 - I - 0x011B75 04:BB65: 0B        .byte $0B   ; 
- - - - - - 0x011B76 04:BB66: 0B        .byte $0B   ; 



tbl_BB67:
- - - - - - 0x011B77 04:BB67: 9F BB     .word _off017_BB9F_00
- - - - - - 0x011B79 04:BB69: 9F BB     .word _off017_BB9F_01
- D 1 - - - 0x011B7B 04:BB6B: 9F BB     .word _off017_BB9F_02
- D 1 - - - 0x011B7D 04:BB6D: AB BB     .word _off017_BBAB_03
- D 1 - - - 0x011B7F 04:BB6F: B7 BB     .word _off017_BBB7_04
- - - - - - 0x011B81 04:BB71: C3 BB     .word _off017_BBC3_05
- - - - - - 0x011B83 04:BB73: C3 BB     .word _off017_BBC3_06
- - - - - - 0x011B85 04:BB75: C3 BB     .word _off017_BBC3_07
- - - - - - 0x011B87 04:BB77: C3 BB     .word _off017_BBC3_08
- - - - - - 0x011B89 04:BB79: C3 BB     .word _off017_BBC3_09
- - - - - - 0x011B8B 04:BB7B: C3 BB     .word _off017_BBC3_0A
- - - - - - 0x011B8D 04:BB7D: C3 BB     .word _off017_BBC3_0B
- - - - - - 0x011B8F 04:BB7F: C3 BB     .word _off017_BBC3_0C
- - - - - - 0x011B91 04:BB81: C3 BB     .word _off017_BBC3_0D
- - - - - - 0x011B93 04:BB83: C3 BB     .word _off017_BBC3_0E
- - - - - - 0x011B95 04:BB85: C3 BB     .word _off017_BBC3_0F
- - - - - - 0x011B97 04:BB87: CB BB     .word _off017_BBCB_10
- - - - - - 0x011B99 04:BB89: CB BB     .word _off017_BBCB_11
- - - - - - 0x011B9B 04:BB8B: CB BB     .word _off017_BBCB_12


; bzk garbage, pointers to BBD3 (0x011BE3)
- - - - - - 0x011B9D 04:BB8D: D3        .byte $D3   ; 
- - - - - - 0x011B9E 04:BB8E: BB        .byte $BB   ; 
- - - - - - 0x011B9F 04:BB8F: D3        .byte $D3   ; 
- - - - - - 0x011BA0 04:BB90: BB        .byte $BB   ; 
- - - - - - 0x011BA1 04:BB91: D3        .byte $D3   ; 
- - - - - - 0x011BA2 04:BB92: BB        .byte $BB   ; 
- - - - - - 0x011BA3 04:BB93: D3        .byte $D3   ; 
- - - - - - 0x011BA4 04:BB94: BB        .byte $BB   ; 
- - - - - - 0x011BA5 04:BB95: D3        .byte $D3   ; 
- - - - - - 0x011BA6 04:BB96: BB        .byte $BB   ; 
- - - - - - 0x011BA7 04:BB97: D3        .byte $D3   ; 
- - - - - - 0x011BA8 04:BB98: BB        .byte $BB   ; 
- - - - - - 0x011BA9 04:BB99: D3        .byte $D3   ; 
- - - - - - 0x011BAA 04:BB9A: BB        .byte $BB   ; 
- - - - - - 0x011BAB 04:BB9B: D3        .byte $D3   ; 
- - - - - - 0x011BAC 04:BB9C: BB        .byte $BB   ; 
- - - - - - 0x011BAD 04:BB9D: D3        .byte $D3   ; 
- - - - - - 0x011BAE 04:BB9E: BB        .byte $BB   ; 



_off017_BB9F_00:
; con_enemy_id_00
_off017_BB9F_01:
; con_enemy_id_01
_off017_BB9F_02:
; con_enemy_id_02
; 
- D 1 - I - 0x011BAF 04:BB9F: FB FF     .word $FFFB ; pos_X
- D 1 - I - 0x011BB1 04:BBA1: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BB2 04:BBA2: 00        .byte $00   ; useless
; 
- D 1 - I - 0x011BB3 04:BBA3: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BB5 04:BBA5: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BB6 04:BBA6: 00        .byte $00   ; useless
; 
- D 1 - I - 0x011BB7 04:BBA7: 05 00     .word $0005 ; pos_X
- D 1 - I - 0x011BB9 04:BBA9: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BBA 04:BBAA: 00        .byte $00   ; useless



_off017_BBAB_03:
; con_enemy_id_03
; 
- D 1 - I - 0x011BBB 04:BBAB: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BBD 04:BBAD: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BBE 04:BBAE: 00        .byte $00   ; useless
; 
- D 1 - I - 0x011BBF 04:BBAF: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BC1 04:BBB1: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BC2 04:BBB2: 00        .byte $00   ; useless
; 
- D 1 - I - 0x011BC3 04:BBB3: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BC5 04:BBB5: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BC6 04:BBB6: 00        .byte $00   ; useless



_off017_BBB7_04:
; con_enemy_id_04
; 
- D 1 - I - 0x011BC7 04:BBB7: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BC9 04:BBB9: FB        .byte $FB   ; pos_Y_lo
- D 1 - I - 0x011BCA 04:BBBA: FF        .byte $FF   ; useless
; 
- D 1 - I - 0x011BCB 04:BBBB: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BCD 04:BBBD: 00        .byte $00   ; pos_Y_lo
- D 1 - I - 0x011BCE 04:BBBE: 00        .byte $00   ; useless
; 
- D 1 - I - 0x011BCF 04:BBBF: 00 00     .word $0000 ; pos_X
- D 1 - I - 0x011BD1 04:BBC1: 05        .byte $05   ; pos_Y_lo
- D 1 - I - 0x011BD2 04:BBC2: 00        .byte $00   ; useless



_off017_BBC3_05:
; con_enemy_id_05
_off017_BBC3_06:
; con_enemy_id_06
_off017_BBC3_07:
; con_enemy_id_07
_off017_BBC3_08:
; con_enemy_id_08
_off017_BBC3_09:
; con_enemy_id_09
_off017_BBC3_0A:
; con_enemy_id_0A
_off017_BBC3_0B:
; con_enemy_id_0B
_off017_BBC3_0C:
; con_enemy_id_0C
_off017_BBC3_0D:
; con_enemy_id_0D
_off017_BBC3_0E:
; con_enemy_id_0E
_off017_BBC3_0F:
; con_enemy_id_0F
; 
- - - - - - 0x011BD3 04:BBC3: FD FF     .word $FFFD ; pos_X
- - - - - - 0x011BD5 04:BBC5: 00        .byte $00   ; pos_Y_lo
- - - - - - 0x011BD6 04:BBC6: 00        .byte $00   ; useless
; 
- - - - - - 0x011BD7 04:BBC7: 03 00     .word $0003 ; pos_X
- - - - - - 0x011BD9 04:BBC9: 00        .byte $00   ; pos_Y_lo
- - - - - - 0x011BDA 04:BBCA: 00        .byte $00   ; useless



_off017_BBCB_10:
; con_enemy_id_10
_off017_BBCB_11:
; con_enemy_id_11
_off017_BBCB_12:
; con_enemy_id_12
; 
- - - - - - 0x011BDB 04:BBCB: FD FF     .word $FFFD ; pos_X
- - - - - - 0x011BDD 04:BBCD: 00        .byte $00   ; pos_Y_lo
- - - - - - 0x011BDE 04:BBCE: 00        .byte $00   ; useless
; 
- - - - - - 0x011BDF 04:BBCF: 03 00     .word $0003 ; pos_X
- - - - - - 0x011BE1 04:BBD1: 00        .byte $00   ; pos_Y_lo
- - - - - - 0x011BE2 04:BBD2: 00        .byte $00   ; useless



loc_BBD3:
; bzk optimize, check 00CB before JSR to here
C D 1 - - - 0x011BE3 04:BBD3: A5 CB     LDA ram_00CB_t01
C - - - - - 0x011BE5 04:BBD5: F0 20     BEQ bra_BBF7_RTS
C - - - - - 0x011BE7 04:BBD7: 85 71     STA ram_0071_t06_loop_counter
C - - - - - 0x011BE9 04:BBD9: A9 00     LDA #$00
C - - - - - 0x011BEB 04:BBDB: 85 70     STA ram_0070_t06_obj_index
bra_BBDD_loop:
C - - - - - 0x011BED 04:BBDD: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011BEF 04:BBDF: BD 41 04  LDA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x011BF2 04:BBE2: 30 04     BMI bra_BBE8
bra_BBE4_loop:
C - - - - - 0x011BF4 04:BBE4: E6 70     INC ram_0070_t06_obj_index
C - - - - - 0x011BF6 04:BBE6: D0 F5     BNE bra_BBDD_loop    ; jmp
bra_BBE8:
C - - - - - 0x011BF8 04:BBE8: 20 BF FF  JSR sub_0x01FFCF
C - - - - - 0x011BFB 04:BBEB: 90 06     BCC bra_BBF3
C - - - - - 0x011BFD 04:BBED: 20 F8 BB  JSR sub_BBF8
C - - - - - 0x011C00 04:BBF0: 20 46 BC  JSR sub_BC46_object_handler
bra_BBF3:
C - - - - - 0x011C03 04:BBF3: C6 71     DEC ram_0071_t06_loop_counter
C - - - - - 0x011C05 04:BBF5: D0 ED     BNE bra_BBE4_loop
bra_BBF7_RTS:
C - - - - - 0x011C07 04:BBF7: 60        RTS



sub_BBF8:
C - - - - - 0x011C08 04:BBF8: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011C0A 04:BBFA: A0 00     LDY #$00
C - - - - - 0x011C0C 04:BBFC: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011C0F 04:BBFF: C9 06     CMP #con_enemy_id_06
C - - - - - 0x011C11 04:BC01: D0 42     BNE bra_BC45_RTS
bra_BC03_loop:
C - - - - - 0x011C13 04:BC03: B9 3D 04  LDA ram_043A_obj_flags + $03,Y
C - - - - - 0x011C16 04:BC06: 10 38     BPL bra_BC40
C - - - - - 0x011C18 04:BC08: B9 4A 04  LDA ram_obj_id,Y
C - - - - - 0x011C1B 04:BC0B: C9 4C     CMP #$4C    ; con_enemy_id_4C
C - - - - - 0x011C1D 04:BC0D: 90 31     BCC bra_BC40
C - - - - - 0x011C1F 04:BC0F: B9 64 04  LDA ram_pos_X_lo_obj + $03,Y
C - - - - - 0x011C22 04:BC12: 18        CLC
C - - - - - 0x011C23 04:BC13: 69 07     ADC #$07
C - - - - - 0x011C25 04:BC15: DD 68 04  CMP ram_pos_X_lo_obj + $07,X
C - - - - - 0x011C28 04:BC18: 90 2B     BCC bra_BC45_RTS
C - - - - - 0x011C2A 04:BC1A: B9 64 04  LDA ram_pos_X_lo_obj + $03,Y
C - - - - - 0x011C2D 04:BC1D: 38        SEC
C - - - - - 0x011C2E 04:BC1E: E9 08     SBC #$08
C - - - - - 0x011C30 04:BC20: DD 68 04  CMP ram_pos_X_lo_obj + $07,X
C - - - - - 0x011C33 04:BC23: B0 20     BCS bra_BC45_RTS
C - - - - - 0x011C35 04:BC25: B9 8B 04  LDA ram_pos_Y_lo_obj + $03,Y
C - - - - - 0x011C38 04:BC28: 18        CLC
C - - - - - 0x011C39 04:BC29: 69 07     ADC #$07
C - - - - - 0x011C3B 04:BC2B: DD 8F 04  CMP ram_pos_Y_lo_obj + $07,X
C - - - - - 0x011C3E 04:BC2E: 90 15     BCC bra_BC45_RTS
C - - - - - 0x011C40 04:BC30: B9 8B 04  LDA ram_pos_Y_lo_obj + $03,Y
C - - - - - 0x011C43 04:BC33: 38        SEC
C - - - - - 0x011C44 04:BC34: E9 08     SBC #$08
C - - - - - 0x011C46 04:BC36: DD 8F 04  CMP ram_pos_Y_lo_obj + $07,X
C - - - - - 0x011C49 04:BC39: B0 0A     BCS bra_BC45_RTS
C - - - - - 0x011C4B 04:BC3B: A9 02     LDA #$02
C - - - - - 0x011C4D 04:BC3D: 99 D9 04  STA ram_04D9_obj,Y
bra_BC40:
C - - - - - 0x011C50 04:BC40: C8        INY
C - - - - - 0x011C51 04:BC41: C0 04     CPY #$04
C - - - - - 0x011C53 04:BC43: D0 BE     BNE bra_BC03_loop
bra_BC45_RTS:
C - - - - - 0x011C55 04:BC45: 60        RTS



sub_BC46_object_handler:
C - - - - - 0x011C56 04:BC46: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011C58 04:BC48: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011C5B 04:BC4B: 29 7F     AND #$7F
C - - - - - 0x011C5D 04:BC4D: 0A        ASL
C - - - - - 0x011C5E 04:BC4E: AA        TAX
C - - - - - 0x011C5F 04:BC4F: BD 5C BC  LDA tbl_BC5C,X
C - - - - - 0x011C62 04:BC52: 85 5B     STA ram_005B_t5D_jmp
C - - - - - 0x011C64 04:BC54: BD 5D BC  LDA tbl_BC5C + $01,X
C - - - - - 0x011C67 04:BC57: 85 5C     STA ram_005B_t5D_jmp + $01
C - - - - - 0x011C69 04:BC59: 6C 5B 00  JMP (ram_005B_t5D_jmp)



tbl_BC5C:
- - - - - - 0x011C6C 04:BC5C: BE BC     .word ofs_032_BCBE_00_RTS
- D 1 - - - 0x011C6E 04:BC5E: A4 BC     .word ofs_032_BCA4_01
- D 1 - - - 0x011C70 04:BC60: A4 BC     .word ofs_032_BCA4_02
- D 1 - - - 0x011C72 04:BC62: A4 BC     .word ofs_032_BCA4_03
- D 1 - - - 0x011C74 04:BC64: A4 BC     .word ofs_032_BCA4_04
- D 1 - - - 0x011C76 04:BC66: A4 BC     .word ofs_032_BCA4_05
- D 1 - - - 0x011C78 04:BC68: A4 BC     .word ofs_032_BCA4_06
- D 1 - - - 0x011C7A 04:BC6A: C4 BC     .word ofs_032_BCC4_07
- D 1 - - - 0x011C7C 04:BC6C: BF BC     .word ofs_032_BCBF_08
- D 1 - - - 0x011C7E 04:BC6E: C4 BC     .word ofs_032_BCC4_09
- - - - - - 0x011C80 04:BC70: BF BC     .word ofs_032_BCBF_0A
- - - - - - 0x011C82 04:BC72: BE BC     .word ofs_032_BCBE_0B_RTS
- - - - - - 0x011C84 04:BC74: BE BC     .word ofs_032_BCBE_0C_RTS
- - - - - - 0x011C86 04:BC76: DB BC     .word ofs_032_BCDB_0D
- D 1 - - - 0x011C88 04:BC78: DB BC     .word ofs_032_BCDB_0E
- D 1 - - - 0x011C8A 04:BC7A: DB BC     .word ofs_032_BCDB_0F
- - - - - - 0x011C8C 04:BC7C: DB BC     .word ofs_032_BCDB_10
- D 1 - - - 0x011C8E 04:BC7E: DB BC     .word ofs_032_BCDB_11
- D 1 - - - 0x011C90 04:BC80: DB BC     .word ofs_032_BCDB_12
- - - - - - 0x011C92 04:BC82: BE BC     .word ofs_032_BCBE_13_RTS
- - - - - - 0x011C94 04:BC84: BE BC     .word ofs_032_BCBE_14_RTS
- D 1 - - - 0x011C96 04:BC86: A4 BC     .word ofs_032_BCA4_15
- D 1 - - - 0x011C98 04:BC88: A4 BC     .word ofs_032_BCA4_16
- D 1 - - - 0x011C9A 04:BC8A: A4 BC     .word ofs_032_BCA4_17
- - - - - - 0x011C9C 04:BC8C: A4 BC     .word ofs_032_BCA4_18
- D 1 - - - 0x011C9E 04:BC8E: A4 BC     .word ofs_032_BCA4_19
- - - - - - 0x011CA0 04:BC90: A4 BC     .word ofs_032_BCA4_1A
- - - - - - 0x011CA2 04:BC92: A4 BC     .word ofs_032_BCA4_1B
- - - - - - 0x011CA4 04:BC94: A4 BC     .word ofs_032_BCA4_1C
- - - - - - 0x011CA6 04:BC96: A4 BC     .word ofs_032_BCA4_1D
- - - - - - 0x011CA8 04:BC98: A4 BC     .word ofs_032_BCA4_1E
- - - - - - 0x011CAA 04:BC9A: A4 BC     .word ofs_032_BCA4_1F
- D 1 - - - 0x011CAC 04:BC9C: CC BF     .word ofs_032_BFCC_20
- D 1 - - - 0x011CAE 04:BC9E: CC BF     .word ofs_032_BFCC_21
- - - - - - 0x011CB0 04:BCA0: CC BF     .word ofs_032_BFCC_22
- - - - - - 0x011CB2 04:BCA2: CC BF     .word ofs_032_BFCC_23



ofs_032_BCA4_01:
; con_enemy_id_01
ofs_032_BCA4_02:
; con_enemy_id_02
ofs_032_BCA4_03:
; con_enemy_id_03
ofs_032_BCA4_04:
; con_enemy_id_04
ofs_032_BCA4_05:
; con_enemy_id_05
ofs_032_BCA4_06:
; con_enemy_id_06
ofs_032_BCA4_15:
; con_enemy_id_15
ofs_032_BCA4_16:
; con_enemy_id_16
ofs_032_BCA4_17:
; con_enemy_id_17
ofs_032_BCA4_18:
; con_enemy_id_18
ofs_032_BCA4_19:
; con_enemy_id_19
ofs_032_BCA4_1A:
; con_enemy_id_1A
ofs_032_BCA4_1B:
; con_enemy_id_1B
ofs_032_BCA4_1C:
; con_enemy_id_1C
ofs_032_BCA4_1D:
; con_enemy_id_1D
ofs_032_BCA4_1E:
; con_enemy_id_1E
ofs_032_BCA4_1F:
; con_enemy_id_1F
C - - J - - 0x011CB4 04:BCA4: 20 46 BD  JSR sub_BD46
C - - - - - 0x011CB7 04:BCA7: 90 15     BCC bra_BCBE_RTS
C - - - - - 0x011CB9 04:BCA9: A9 07     LDA #$07
C - - - - - 0x011CBB 04:BCAB: 85 6C     STA ram_006C_t02
C - - - - - 0x011CBD 04:BCAD: 20 FF BE  JSR sub_BEFF
C - - - - - 0x011CC0 04:BCB0: 90 0C     BCC bra_BCBE_RTS
C - - - - - 0x011CC2 04:BCB2: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011CC4 04:BCB4: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011CC7 04:BCB7: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x011CC9 04:BCB9: 90 03     BCC bra_BCBE_RTS
; bzk optimize, JMP
C - - - - - 0x011CCB 04:BCBB: 20 CC BD  JSR sub_BDCC
bra_BCBE_RTS:
ofs_032_BCBE_00_RTS:
; con_enemy_id_00
ofs_032_BCBE_0B_RTS:
; con_enemy_id_0B
ofs_032_BCBE_0C_RTS:
; con_enemy_id_0C
ofs_032_BCBE_13_RTS:
; con_enemy_id_13
ofs_032_BCBE_14_RTS:
; con_enemy_id_14
C - - - - - 0x011CCE 04:BCBE: 60        RTS



ofs_032_BCBF_08:
; con_enemy_id_08
ofs_032_BCBF_0A:
; con_enemy_id_0A
C - - J - - 0x011CCF 04:BCBF: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011CD1 04:BCC1: 20 F5 BC  JSR sub_BCF5
ofs_032_BCC4_07:
; con_enemy_id_07
ofs_032_BCC4_09:
; con_enemy_id_09
C - - J - - 0x011CD4 04:BCC4: 20 46 BD  JSR sub_BD46
C - - - - - 0x011CD7 04:BCC7: 90 F5     BCC bra_BCBE_RTS
C - - - - - 0x011CD9 04:BCC9: A9 07     LDA #$07
C - - - - - 0x011CDB 04:BCCB: 85 6C     STA ram_006C_t02
C - - - - - 0x011CDD 04:BCCD: 20 FF BE  JSR sub_BEFF
C - - - - - 0x011CE0 04:BCD0: 90 EC     BCC bra_BCBE_RTS
C - - - - - 0x011CE2 04:BCD2: 20 DF BE  JSR sub_BEDF
C - - - - - 0x011CE5 04:BCD5: 90 E7     BCC bra_BCBE_RTS
; bzk optimize, JMP
C - - - - - 0x011CE7 04:BCD7: 20 CC BD  JSR sub_BDCC
C - - - - - 0x011CEA 04:BCDA: 60        RTS



ofs_032_BCDB_0D:
; con_enemy_id_0D
ofs_032_BCDB_0E:
; con_enemy_id_0E
ofs_032_BCDB_0F:
; con_enemy_id_0F
ofs_032_BCDB_10:
; con_enemy_id_10
ofs_032_BCDB_11:
; con_enemy_id_11
ofs_032_BCDB_12:
; con_enemy_id_12
C - - J - - 0x011CEB 04:BCDB: 20 46 BD  JSR sub_BD46
C - - - - - 0x011CEE 04:BCDE: 90 DE     BCC bra_BCBE_RTS
C - - - - - 0x011CF0 04:BCE0: A9 05     LDA #$05
C - - - - - 0x011CF2 04:BCE2: 85 6C     STA ram_006C_t02
C - - - - - 0x011CF4 04:BCE4: 20 FF BE  JSR sub_BEFF
C - - - - - 0x011CF7 04:BCE7: 90 D5     BCC bra_BCBE_RTS
C - - - - - 0x011CF9 04:BCE9: 20 29 BE  JSR sub_BE29_shield_boomerang_handler
C - - - - - 0x011CFC 04:BCEC: 20 E9 BE  JSR sub_BEE9
C - - - - - 0x011CFF 04:BCEF: 90 CD     BCC bra_BCBE_RTS
; bzk optimize, JMP
C - - - - - 0x011D01 04:BCF1: 20 CC BD  JSR sub_BDCC
C - - - - - 0x011D04 04:BCF4: 60        RTS



sub_BCF5:
C - - - - - 0x011D05 04:BCF5: DE 38 05  DEC ram_0534_obj + $04,X
C - - - - - 0x011D08 04:BCF8: D0 3D     BNE bra_BD37_RTS
C - - - - - 0x011D0A 04:BCFA: BD 45 05  LDA ram_0541_obj_flags + $04,X
C - - - - - 0x011D0D 04:BCFD: 29 F0     AND #$F0
; / 08
C - - - - - 0x011D0F 04:BCFF: 4A        LSR
C - - - - - 0x011D10 04:BD00: 4A        LSR
C - - - - - 0x011D11 04:BD01: 4A        LSR
; 
C - - - - - 0x011D12 04:BD02: A8        TAY
C - - - - - 0x011D13 04:BD03: B9 38 BD  LDA tbl_BD38,Y
C - - - - - 0x011D16 04:BD06: 85 5B     STA ram_005B_t14_data
C - - - - - 0x011D18 04:BD08: B9 39 BD  LDA tbl_BD38 + $01,Y
C - - - - - 0x011D1B 04:BD0B: 85 5C     STA ram_005B_t14_data + $01
C - - - - - 0x011D1D 04:BD0D: BD 45 05  LDA ram_0541_obj_flags + $04,X
C - - - - - 0x011D20 04:BD10: 29 0F     AND #$0F
C - - - - - 0x011D22 04:BD12: 0A        ASL
C - - - - - 0x011D23 04:BD13: A8        TAY
C - - - - - 0x011D24 04:BD14: B1 5B     LDA (ram_005B_t14_data),Y
C - - - - - 0x011D26 04:BD16: 30 1F     BMI bra_BD37_RTS
C - - - - - 0x011D28 04:BD18: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x011D2B 04:BD1B: 85 68     STA ram_0068_t08
C - - - - - 0x011D2D 04:BD1D: C8        INY
C - - - - - 0x011D2E 04:BD1E: B1 5B     LDA (ram_005B_t14_data),Y
C - - - - - 0x011D30 04:BD20: 9D 38 05  STA ram_0534_obj + $04,X
C - - - - - 0x011D33 04:BD23: FE 45 05  INC ram_0541_obj_flags + $04,X
C - - - - - 0x011D36 04:BD26: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011D39 04:BD29: 29 7F     AND #$7F
C - - - - - 0x011D3B 04:BD2B: A8        TAY
C - - - - - 0x011D3C 04:BD2C: B9 83 B9  LDA tbl_B983,Y
C - - - - - 0x011D3F 04:BD2F: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x011D41 04:BD31: 20 80 BA  JSR sub_BA80
; bzk optimize, JMP
C - - - - - 0x011D44 04:BD34: 20 03 BA  JSR sub_BA03
bra_BD37_RTS:
C - - - - - 0x011D47 04:BD37: 60        RTS



tbl_BD38:
- D 1 - - - 0x011D48 04:BD38: 3C BD     .word off_BD3C_00
- D 1 - - - 0x011D4A 04:BD3A: 41 BD     .word off_BD41_10



off_BD3C_00:
- D 1 - I - 0x011D4C 04:BD3C: 04        .byte $04   ; 
- D 1 - I - 0x011D4D 04:BD3D: 01        .byte $01   ; 
- D 1 - I - 0x011D4E 04:BD3E: 02        .byte $02   ; 
- D 1 - I - 0x011D4F 04:BD3F: 80        .byte $80   ; end token


; bzk garbage
- - - - - - 0x011D50 04:BD40: FF        .byte $FF   ; 



off_BD41_10:
- D 1 - I - 0x011D51 04:BD41: 0C        .byte $0C   ; 
- D 1 - I - 0x011D52 04:BD42: 01        .byte $01   ; 
- D 1 - I - 0x011D53 04:BD43: 0E        .byte $0E   ; 
- D 1 - I - 0x011D54 04:BD44: 80        .byte $80   ; end token


; bzk garbage
- - - - - - 0x011D55 04:BD45: FF        .byte $FF   ; 



sub_BD46:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x011D56 04:BD46: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011D58 04:BD48: BD 04 05  LDA ram_spd_X_fr_obj + $04,X
C - - - - - 0x011D5B 04:BD4B: 1D 11 05  ORA ram_spd_X_lo_obj + $04,X
C - - - - - 0x011D5E 04:BD4E: F0 2D     BEQ bra_BD7D_not_moving_horisontally
; if moving by X axis
C - - - - - 0x011D60 04:BD50: BD 11 05  LDA ram_spd_X_lo_obj + $04,X
C - - - - - 0x011D63 04:BD53: 10 04     BPL bra_BD59_moving_right
; if moving left
C - - - - - 0x011D65 04:BD55: A9 FF     LDA #$FF    ; move left
C - - - - - 0x011D67 04:BD57: D0 02     BNE bra_BD5B    ; jmp
bra_BD59_moving_right:
C - - - - - 0x011D69 04:BD59: A9 00     LDA #$00    ; move right
bra_BD5B:
C - - - - - 0x011D6B 04:BD5B: 85 67     STA ram_0067_t2C_spd_X_hi
C - - - - - 0x011D6D 04:BD5D: BD 5B 04  LDA ram_pos_X_fr_obj + $04,X
C - - - - - 0x011D70 04:BD60: 18        CLC
C - - - - - 0x011D71 04:BD61: 7D 04 05  ADC ram_spd_X_fr_obj + $04,X
C - - - - - 0x011D74 04:BD64: 9D 5B 04  STA ram_pos_X_fr_obj + $04,X
C - - - - - 0x011D77 04:BD67: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x011D7A 04:BD6A: 7D 11 05  ADC ram_spd_X_lo_obj + $04,X
C - - - - - 0x011D7D 04:BD6D: 9D 68 04  STA ram_pos_X_lo_obj + $07,X
C - - - - - 0x011D80 04:BD70: BD 75 04  LDA ram_pos_X_hi_obj + $07,X
C - - - - - 0x011D83 04:BD73: 65 67     ADC ram_0067_t2C_spd_X_hi
C - - - - - 0x011D85 04:BD75: 9D 75 04  STA ram_pos_X_hi_obj + $07,X
C - - - - - 0x011D88 04:BD78: 20 B4 BD  JSR sub_BDB4
C - - - - - 0x011D8B 04:BD7B: 90 33     BCC bra_BDB0_RTS
bra_BD7D_not_moving_horisontally:
C - - - - - 0x011D8D 04:BD7D: BD 1E 05  LDA ram_spd_Y_fr_obj + $04,X
C - - - - - 0x011D90 04:BD80: 1D 2B 05  ORA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011D93 04:BD83: F0 2C     BEQ bra_BDB1
C - - - - - 0x011D95 04:BD85: BD 2B 05  LDA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011D98 04:BD88: 10 04     BPL bra_BD8E
C - - - - - 0x011D9A 04:BD8A: A9 FF     LDA #$FF
C - - - - - 0x011D9C 04:BD8C: D0 02     BNE bra_BD90    ; jmp
bra_BD8E:
C - - - - - 0x011D9E 04:BD8E: A9 00     LDA #$00
bra_BD90:
C - - - - - 0x011DA0 04:BD90: 85 67     STA ram_0067_t2D_pos_Y_hi
C - - - - - 0x011DA2 04:BD92: BD 82 04  LDA ram_pos_Y_fr_obj + $04,X
C - - - - - 0x011DA5 04:BD95: 18        CLC
C - - - - - 0x011DA6 04:BD96: 7D 1E 05  ADC ram_spd_Y_fr_obj + $04,X
C - - - - - 0x011DA9 04:BD99: 9D 82 04  STA ram_pos_Y_fr_obj + $04,X
C - - - - - 0x011DAC 04:BD9C: BD 8F 04  LDA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x011DAF 04:BD9F: 7D 2B 05  ADC ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011DB2 04:BDA2: 9D 8F 04  STA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x011DB5 04:BDA5: BD 9C 04  LDA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x011DB8 04:BDA8: 65 67     ADC ram_0067_t2D_pos_Y_hi
C - - - - - 0x011DBA 04:BDAA: 9D 9C 04  STA ram_pos_Y_hi_obj + $07,X
; bzk optimize, JMP
C - - - - - 0x011DBD 04:BDAD: 20 B4 BD  JSR sub_BDB4
bra_BDB0_RTS:
C - - - - - 0x011DC0 04:BDB0: 60        RTS
bra_BDB1:
C - - - - - 0x011DC1 04:BDB1: 38        SEC
; bzk optimize, RTS
C - - - - - 0x011DC2 04:BDB2: B0 FC     BCS bra_BDB0_RTS    ; jmp



sub_BDB4:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x011DC4 04:BDB4: BD 75 04  LDA ram_pos_X_hi_obj + $07,X
C - - - - - 0x011DC7 04:BDB7: D0 05     BNE bra_BDBE
C - - - - - 0x011DC9 04:BDB9: BD 9C 04  LDA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x011DCC 04:BDBC: F0 0C     BEQ bra_BDCA
bra_BDBE:
loc_BDBE:
C D 1 - - - 0x011DCE 04:BDBE: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x011DD0 04:BDC0: C6 CB     DEC ram_00CB_t01
C - - - - - 0x011DD2 04:BDC2: A9 00     LDA #$00
C - - - - - 0x011DD4 04:BDC4: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x011DD7 04:BDC7: 18        CLC
; bzk optimize, RTS
C - - - - - 0x011DD8 04:BDC8: 90 01     BCC bra_BDCB_RTS    ; jmp
bra_BDCA:
C - - - - - 0x011DDA 04:BDCA: 38        SEC
bra_BDCB_RTS:
C - - - - - 0x011DDB 04:BDCB: 60        RTS



sub_BDCC:
C - - - - - 0x011DDC 04:BDCC: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011DDF 04:BDCF: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x011DE1 04:BDD1: 90 55     BCC bra_BE28_RTS
C - - - - - 0x011DE3 04:BDD3: DE EA 04  DEC ram_04E6_obj_anim_timer + $04,X
C - - - - - 0x011DE6 04:BDD6: D0 50     BNE bra_BE28_RTS
C - - - - - 0x011DE8 04:BDD8: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x011DEA 04:BDDA: 48        PHA
C - - - - - 0x011DEB 04:BDDB: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x011DED 04:BDDD: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x011DEF 04:BDDF: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x011DF2 04:BDE2: BD C3 04  LDA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x011DF5 04:BDE5: 85 5B     STA ram_005B_t1A_data
C - - - - - 0x011DF7 04:BDE7: BD D0 04  LDA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x011DFA 04:BDEA: 85 5C     STA ram_005B_t1A_data + $01
C - - - - - 0x011DFC 04:BDEC: A0 00     LDY #$00
C - - - - - 0x011DFE 04:BDEE: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E00 04:BDF0: 10 09     BPL bra_BDFB
C - - - - - 0x011E02 04:BDF2: C8        INY ; 01
C - - - - - 0x011E03 04:BDF3: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E05 04:BDF5: 29 7F     AND #$7F
C - - - - - 0x011E07 04:BDF7: 85 27     STA ram_chr_bank_spr + $03
C - - - - - 0x011E09 04:BDF9: D0 03     BNE bra_BDFE    ; jmp
bra_BDFB:
C - - - - - 0x011E0B 04:BDFB: 85 26     STA ram_chr_bank_spr + $02
C - - - - - 0x011E0D 04:BDFD: C8        INY ; 01
bra_BDFE:
C - - - - - 0x011E0E 04:BDFE: C8        INY ; 02
C - - - - - 0x011E0F 04:BDFF: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E11 04:BE01: 9D EA 04  STA ram_04E6_obj_anim_timer + $04,X
C - - - - - 0x011E14 04:BE04: C8        INY ; 03
C - - - - - 0x011E15 04:BE05: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E17 04:BE07: 9D A9 04  STA ram_spr_data_ptr_lo_obj + $07,X
C - - - - - 0x011E1A 04:BE0A: C8        INY ; 04
C - - - - - 0x011E1B 04:BE0B: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E1D 04:BE0D: 9D B6 04  STA ram_spr_data_ptr_hi_obj + $07,X
C - - - - - 0x011E20 04:BE10: C8        INY ; 05
C - - - - - 0x011E21 04:BE11: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E23 04:BE13: 9D C3 04  STA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x011E26 04:BE16: C8        INY ; 06
C - - - - - 0x011E27 04:BE17: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E29 04:BE19: 9D D0 04  STA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x011E2C 04:BE1C: C8        INY ; 07
C - - - - - 0x011E2D 04:BE1D: B1 5B     LDA (ram_005B_t1A_data),Y
C - - - - - 0x011E2F 04:BE1F: 9D 70 05  STA ram_056C_obj + $04,X
C - - - - - 0x011E32 04:BE22: 68        PLA
C - - - - - 0x011E33 04:BE23: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x011E35 04:BE25: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
bra_BE28_RTS:
C - - - - - 0x011E38 04:BE28: 60        RTS



sub_BE29_shield_boomerang_handler:
C - - - - - 0x011E39 04:BE29: BD 38 05  LDA ram_0534_obj + $04,X
C - - - - - 0x011E3C 04:BE2C: C9 18     CMP #$18
C - - - - - 0x011E3E 04:BE2E: B0 F8     BCS bra_BE28_RTS
C - - - - - 0x011E40 04:BE30: DE 38 05  DEC ram_0534_obj + $04,X
C - - - - - 0x011E43 04:BE33: D0 F3     BNE bra_BE28_RTS
C - - - - - 0x011E45 04:BE35: DE 52 05  DEC ram_054E_obj + $04,X
C - - - - - 0x011E48 04:BE38: D0 0C     BNE bra_BE46
C - - - - - 0x011E4A 04:BE3A: A9 01     LDA #$01
C - - - - - 0x011E4C 04:BE3C: 9D 52 05  STA ram_054E_obj + $04,X
C - - - - - 0x011E4F 04:BE3F: A9 60     LDA #$60
C - - - - - 0x011E51 04:BE41: 9D 38 05  STA ram_0534_obj + $04,X
C - - - - - 0x011E54 04:BE44: D0 E2     BNE bra_BE28_RTS    ; jmp
bra_BE46:
C - - - - - 0x011E56 04:BE46: A9 08     LDA #$08
C - - - - - 0x011E58 04:BE48: 9D 38 05  STA ram_0534_obj + $04,X
; copy shield X position
C - - - - - 0x011E5B 04:BE4B: BD 75 04  LDA ram_pos_X_hi_obj + $03 + $04,X
C - - - - - 0x011E5E 04:BE4E: 85 C1     STA ram_00C1_pos_X_hi_shield_boomerang
C - - - - - 0x011E60 04:BE50: BD 68 04  LDA ram_pos_X_lo_obj + $03 + $04,X
C - - - - - 0x011E63 04:BE53: 85 C2     STA ram_00C2_pos_X_lo_shield_boomerang
C - - - - - 0x011E65 04:BE55: BD 5B 04  LDA ram_pos_X_fr_obj + $04,X
C - - - - - 0x011E68 04:BE58: 85 C3     STA ram_00C3_pos_X_fr_shield_boomerang
; copy shield Y position
C - - - - - 0x011E6A 04:BE5A: BD 9C 04  LDA ram_pos_Y_hi_obj + $03 + $04,X
C - - - - - 0x011E6D 04:BE5D: 85 BE     STA ram_00BE_pos_Y_hi_shield_boomerang
C - - - - - 0x011E6F 04:BE5F: BD 8F 04  LDA ram_pos_Y_lo_obj + $03 + $04,X
C - - - - - 0x011E72 04:BE62: 85 BF     STA ram_00BF_pos_Y_lo_shield_boomerang
C - - - - - 0x011E74 04:BE64: BD 82 04  LDA ram_pos_Y_fr_obj + $04,X
C - - - - - 0x011E77 04:BE67: 85 C0     STA ram_00C0_pos_Y_fr_shield_boomerang
; copy player X position
C - - - - - 0x011E79 04:BE69: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x011E7C 04:BE6C: 85 C7     STA ram_00C7_pos_X_hi_shield_aim
C - - - - - 0x011E7E 04:BE6E: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x011E81 04:BE71: 85 C8     STA ram_00C8_pos_X_lo_shield_aim
C - - - - - 0x011E83 04:BE73: AD 03 04  LDA ram_pos_X_fr_player
C - - - - - 0x011E86 04:BE76: 85 C9     STA ram_00C9_pos_X_fr_shield_aim
; copy player Y position
C - - - - - 0x011E88 04:BE78: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x011E8B 04:BE7B: 85 C4     STA ram_00C4_pos_Y_hi_shield_aim
C - - - - - 0x011E8D 04:BE7D: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x011E90 04:BE80: 38        SEC
C - - - - - 0x011E91 04:BE81: E9 0A     SBC #$0A
C - - - - - 0x011E93 04:BE83: 85 C5     STA ram_00C5_pos_Y_lo_shield_aim
C - - - - - 0x011E95 04:BE85: AD 06 04  LDA ram_pos_Y_fr_player
C - - - - - 0x011E98 04:BE88: 85 C6     STA ram_00C6_pos_Y_fr_shield_aim
; 
C - - - - - 0x011E9A 04:BE8A: 20 A4 FF  JSR sub_0x01FFB4_shield_boomerang_handler
C - - - - - 0x011E9D 04:BE8D: 85 67     STA ram_0067_t2E
; 
C - - - - - 0x011E9F 04:BE8F: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011EA1 04:BE91: BD DD 04  LDA ram_04D9_obj + $04,X
C - - - - - 0x011EA4 04:BE94: C5 67     CMP ram_0067_t2E
C - - - - - 0x011EA6 04:BE96: F0 46     BEQ bra_BEDE_RTS
C - - - - - 0x011EA8 04:BE98: C9 08     CMP #$08
C - - - - - 0x011EAA 04:BE9A: B0 15     BCS bra_BEB1
C - - - - - 0x011EAC 04:BE9C: C5 67     CMP ram_0067_t2E
C - - - - - 0x011EAE 04:BE9E: B0 20     BCS bra_BEC0
C - - - - - 0x011EB0 04:BEA0: 18        CLC
C - - - - - 0x011EB1 04:BEA1: 69 08     ADC #$08
C - - - - - 0x011EB3 04:BEA3: 29 0F     AND #$0F
C - - - - - 0x011EB5 04:BEA5: C5 67     CMP ram_0067_t2E
C - - - - - 0x011EB7 04:BEA7: F0 17     BEQ bra_BEC0
C - - - - - 0x011EB9 04:BEA9: 90 15     BCC bra_BEC0
bra_BEAB:
C - - - - - 0x011EBB 04:BEAB: FE DD 04  INC ram_04D9_obj + $04,X
C - - - - - 0x011EBE 04:BEAE: 4C C3 BE  JMP loc_BEC3
bra_BEB1:
C - - - - - 0x011EC1 04:BEB1: C5 67     CMP ram_0067_t2E
C - - - - - 0x011EC3 04:BEB3: 90 F6     BCC bra_BEAB
C - - - - - 0x011EC5 04:BEB5: 18        CLC
C - - - - - 0x011EC6 04:BEB6: 69 08     ADC #$08
C - - - - - 0x011EC8 04:BEB8: 29 0F     AND #$0F
C - - - - - 0x011ECA 04:BEBA: C5 67     CMP ram_0067_t2E
C - - - - - 0x011ECC 04:BEBC: B0 ED     BCS bra_BEAB
C - - - - - 0x011ECE 04:BEBE: 90 00     BCC bra_BEC0    ; jmp
bra_BEC0:
C - - - - - 0x011ED0 04:BEC0: DE DD 04  DEC ram_04D9_obj + $04,X
loc_BEC3:
C D 1 - - - 0x011ED3 04:BEC3: BD DD 04  LDA ram_04D9_obj + $04,X
C - - - - - 0x011ED6 04:BEC6: 29 0F     AND #$0F
C - - - - - 0x011ED8 04:BEC8: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x011EDB 04:BECB: 85 68     STA ram_0068_t08
; 
C - - - - - 0x011EDD 04:BECD: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011EE0 04:BED0: 29 7F     AND #$7F
C - - - - - 0x011EE2 04:BED2: A8        TAY
C - - - - - 0x011EE3 04:BED3: B9 83 B9  LDA tbl_B983,Y
C - - - - - 0x011EE6 04:BED6: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x011EE8 04:BED8: 20 80 BA  JSR sub_BA80
; bzk optimize, JMP
C - - - - - 0x011EEB 04:BEDB: 20 03 BA  JSR sub_BA03
bra_BEDE_RTS:
C - - - - - 0x011EEE 04:BEDE: 60        RTS



sub_BEDF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x011EEF 04:BEDF: DE 5F 05  DEC ram_055B_obj_anim_counter + $04,X
C - - - - - 0x011EF2 04:BEE2: D0 03     BNE bra_BEE7
- - - - - - 0x011EF4 04:BEE4: 4C 20 BF  JMP loc_BF20
bra_BEE7:
C - - - - - 0x011EF7 04:BEE7: 38        SEC
C - - - - - 0x011EF8 04:BEE8: 60        RTS



sub_BEE9:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x011EF9 04:BEE9: BD 38 05  LDA ram_0534_obj + $04,X
C - - - - - 0x011EFC 04:BEEC: C9 18     CMP #$18
C - - - - - 0x011EFE 04:BEEE: 90 0D     BCC bra_BEFD
C - - - - - 0x011F00 04:BEF0: DE 38 05  DEC ram_0534_obj + $04,X
C - - - - - 0x011F03 04:BEF3: BD 38 05  LDA ram_0534_obj + $04,X
C - - - - - 0x011F06 04:BEF6: C9 20     CMP #$20
C - - - - - 0x011F08 04:BEF8: D0 03     BNE bra_BEFD
C - - - - - 0x011F0A 04:BEFA: 4C 20 BF  JMP loc_BF20
bra_BEFD:
C - - - - - 0x011F0D 04:BEFD: 38        SEC
C - - - - - 0x011F0E 04:BEFE: 60        RTS



sub_BEFF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x011F0F 04:BEFF: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x011F12 04:BF02: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x011F14 04:BF04: BD 75 04  LDA ram_pos_X_hi_obj + $07,X
C - - - - - 0x011F17 04:BF07: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x011F19 04:BF09: BD 8F 04  LDA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x011F1C 04:BF0C: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x011F1E 04:BF0E: BD 9C 04  LDA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x011F21 04:BF11: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x011F23 04:BF13: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x011F26 04:BF16: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011F28 04:BF18: A5 BC     LDA ram_00BC
C - - - - - 0x011F2A 04:BF1A: 25 6C     AND ram_006C_t02
C - - - - - 0x011F2C 04:BF1C: D0 02     BNE bra_BF20
C - - - - - 0x011F2E 04:BF1E: 38        SEC
C - - - - - 0x011F2F 04:BF1F: 60        RTS
bra_BF20:
loc_BF20:
C D 1 - - - 0x011F30 04:BF20: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011F33 04:BF23: 29 7F     AND #$7F
C - - - - - 0x011F35 04:BF25: C9 07     CMP #$07    ; con_enemy_id_07
C - - - - - 0x011F37 04:BF27: 90 26     BCC bra_BF4F
C - - - - - 0x011F39 04:BF29: C9 15     CMP #$15    ; con_enemy_id_15
C - - - - - 0x011F3B 04:BF2B: 90 04     BCC bra_BF31
C - - - - - 0x011F3D 04:BF2D: C9 18     CMP #$18    ; con_enemy_id_18
C - - - - - 0x011F3F 04:BF2F: 90 21     BCC bra_BF52
bra_BF31:
C - - - - - 0x011F41 04:BF31: BD 75 04  LDA ram_pos_X_hi_obj + $07,X
C - - - - - 0x011F44 04:BF34: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x011F46 04:BF36: BD 68 04  LDA ram_pos_X_lo_obj + $07,X
C - - - - - 0x011F49 04:BF39: 85 68     STA ram_0068_t06_pos_X_lo
C - - - - - 0x011F4B 04:BF3B: BD 9C 04  LDA ram_pos_Y_hi_obj + $07,X
C - - - - - 0x011F4E 04:BF3E: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x011F50 04:BF40: BD 8F 04  LDA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x011F53 04:BF43: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x011F55 04:BF45: 20 B6 FF  JSR sub_0x01FFC6
C - - - - - 0x011F58 04:BF48: A9 1B     LDA #con_sfx_explosion
C - - - - - 0x011F5A 04:BF4A: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x011F5C 04:BF4C: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_BF4F:
C - - - - - 0x011F5F 04:BF4F: 4C BE BD  JMP loc_BDBE
bra_BF52:
C - - - - - 0x011F62 04:BF52: DE 5F 05  DEC ram_055B_obj_anim_counter + $04,X
C - - - - - 0x011F65 04:BF55: BD 5F 05  LDA ram_055B_obj_anim_counter + $04,X
C - - - - - 0x011F68 04:BF58: F0 F5     BEQ bra_BF4F
C - - - - - 0x011F6A 04:BF5A: C9 20     CMP #$20
C - - - - - 0x011F6C 04:BF5C: B0 08     BCS bra_BF66
C - - - - - 0x011F6E 04:BF5E: A9 02     LDA #$02
C - - - - - 0x011F70 04:BF60: 1D 41 04  ORA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x011F73 04:BF63: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
bra_BF66:
C - - - - - 0x011F76 04:BF66: BD DD 04  LDA ram_04D9_obj + $04,X
C - - - - - 0x011F79 04:BF69: C9 10     CMP #$10
C - - - - - 0x011F7B 04:BF6B: F0 16     BEQ bra_BF83_RTS
C - - - - - 0x011F7D 04:BF6D: A9 10     LDA #$10
C - - - - - 0x011F7F 04:BF6F: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x011F82 04:BF72: A9 00     LDA #$00
C - - - - - 0x011F84 04:BF74: 9D 11 05  STA ram_spd_X_lo_obj + $04,X
C - - - - - 0x011F87 04:BF77: 9D 04 05  STA ram_spd_X_fr_obj + $04,X
C - - - - - 0x011F8A 04:BF7A: 9D 2B 05  STA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011F8D 04:BF7D: 9D 1E 05  STA ram_spd_Y_fr_obj + $04,X
; bzk optimize, JMP
C - - - - - 0x011F90 04:BF80: 20 03 BA  JSR sub_BA03
bra_BF83_RTS:
C - - - - - 0x011F93 04:BF83: 60        RTS



ofs_033_shot_handler_BF84_20:
; con_shot_id_20
ofs_033_shot_handler_BF84_21:
; con_shot_id_21
ofs_033_shot_handler_BF84_22:
; con_shot_id_22
ofs_033_shot_handler_BF84_23:
; con_shot_id_23
C - - J - - 0x011F94 04:BF84: 20 6D B7  JSR sub_B76D
C - - - - - 0x011F97 04:BF87: E0 06     CPX #$06
C - - - - - 0x011F99 04:BF89: B0 40     BCS bra_BFCB_RTS
C - - - - - 0x011F9B 04:BF8B: 86 70     STX ram_0070_t06_obj_index
C - - - - - 0x011F9D 04:BF8D: A9 00     LDA #$00
C - - - - - 0x011F9F 04:BF8F: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x011FA2 04:BF92: 85 69     STA ram_0069_t03_pos_X_lo
C - - - - - 0x011FA4 04:BF94: 85 6A     STA ram_006A_t07_pos_X_hi
C - - - - - 0x011FA6 04:BF96: 85 6B     STA ram_006B_t01_pos_Y_lo
C - - - - - 0x011FA8 04:BF98: 85 6C     STA ram_006C_tFF_useless
C - - - - - 0x011FAA 04:BF9A: 20 19 B8  JSR sub_B819
C - - - - - 0x011FAD 04:BF9D: A9 00     LDA #$00
C - - - - - 0x011FAF 04:BF9F: 9D 11 05  STA ram_spd_X_lo_obj + $04,X
C - - - - - 0x011FB2 04:BFA2: 9D 04 05  STA ram_spd_X_fr_obj + $04,X
C - - - - - 0x011FB5 04:BFA5: 9D 1E 05  STA ram_spd_Y_fr_obj + $04,X
C - - - - - 0x011FB8 04:BFA8: BD 4E 04  LDA ram_obj_id + $04,X
C - - - - - 0x011FBB 04:BFAB: C9 21     CMP #$21    ; con_enemy_id_21
C - - - - - 0x011FBD 04:BFAD: B0 09     BCS bra_BFB8
C - - - - - 0x011FBF 04:BFAF: A9 00     LDA #$00
C - - - - - 0x011FC1 04:BFB1: 9D 2B 05  STA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011FC4 04:BFB4: A9 10     LDA #$10
C - - - - - 0x011FC6 04:BFB6: D0 07     BNE bra_BFBF    ; jmp
bra_BFB8:
C - - - - - 0x011FC8 04:BFB8: A9 FE     LDA #$FE
C - - - - - 0x011FCA 04:BFBA: 9D 2B 05  STA ram_spd_Y_lo_obj + $04,X
C - - - - - 0x011FCD 04:BFBD: A9 40     LDA #$40
bra_BFBF:
C - - - - - 0x011FCF 04:BFBF: 9D 38 05  STA ram_0534_obj + $04,X
C - - - - - 0x011FD2 04:BFC2: E6 CB     INC ram_00CB_t01
C - - - - - 0x011FD4 04:BFC4: E6 CE     INC ram_all_objects_counter
C - - - - - 0x011FD6 04:BFC6: A9 81     LDA #$80 + $01
C - - - - - 0x011FD8 04:BFC8: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
bra_BFCB_RTS:
C - - - - - 0x011FDB 04:BFCB: 60        RTS



ofs_032_BFCC_20:
; con_enemy_id_20
ofs_032_BFCC_21:
; con_enemy_id_21
ofs_032_BFCC_22:
; con_enemy_id_22
ofs_032_BFCC_23:
; con_enemy_id_23
C - - J - - 0x011FDC 04:BFCC: A6 70     LDX ram_0070_t06_obj_index
C - - - - - 0x011FDE 04:BFCE: DE 38 05  DEC ram_0534_obj + $04,X
C - - - - - 0x011FE1 04:BFD1: F0 0B     BEQ bra_BFDE
C - - - - - 0x011FE3 04:BFD3: 20 46 BD  JSR sub_BD46
C - - - - - 0x011FE6 04:BFD6: 90 05     BCC bra_BFDD_RTS
C - - - - - 0x011FE8 04:BFD8: A6 70     LDX ram_0070_t06_obj_index
; bzk optimize, JMP
C - - - - - 0x011FEA 04:BFDA: 20 CC BD  JSR sub_BDCC
bra_BFDD_RTS:
C - - - - - 0x011FED 04:BFDD: 60        RTS
bra_BFDE:
C - - - - - 0x011FEE 04:BFDE: A9 00     LDA #$00
C - - - - - 0x011FF0 04:BFE0: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x011FF3 04:BFE3: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x011FF5 04:BFE5: C6 CB     DEC ram_00CB_t01
C - - - - - 0x011FF7 04:BFE7: 60        RTS


; bzk garbage
- - - - - - 0x011FF8 04:BFE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x012000 04:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 08: 0x%04X [%d]", ($C000 - *), ($C000 - *))



