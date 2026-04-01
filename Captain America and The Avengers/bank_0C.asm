.segment "BANK_0C"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $A000  ; for listing file
; 0x018010-0x01A00F



.export sub_0x018010
.export sub_0x018013_map_movement_handler
.export sub_0x018016
.export sub_0x018019_move_portraits_in_pause_menu
.export sub_0x01801C
.export sub_0x01801F
.export sub_0x018022
.export sub_0x018025
.export sub_0x018028
.export sub_0x01802B
.export sub_0x01802E_print_cutscene_text
.export sub_0x018031
.export sub_0x018034
.export sub_0x018037
.export sub_0x01803A
.export sub_0x01803D
.export sub_0x018040
.export sub_0x018043
.export sub_0x018046
.export sub_0x018049
.export sub_0x01804C



sub_0x018010:
; bzk optimize
C - - - - - 0x018010 06:A000: 4C 3F A0  JMP loc_A03F



sub_0x018013_map_movement_handler:
; bzk optimize
C - - - - - 0x018013 06:A003: 4C 28 A3  JMP loc_A328_map_movement_handler



sub_0x018016:
; bzk optimize
C - - - - - 0x018016 06:A006: 4C 74 AB  JMP loc_AB74



sub_0x018019_move_portraits_in_pause_menu:
; bzk optimize
C - - - - - 0x018019 06:A009: 4C C3 AB  JMP loc_ABC3_move_portraits_in_pause_menu



sub_0x01801C:
; bzk optimize
C - - - - - 0x01801C 06:A00C: 4C 12 AC  JMP loc_AC12



sub_0x01801F:
; bzk optimize
C - - - - - 0x01801F 06:A00F: 4C 8C AC  JMP loc_AC8C



sub_0x018022:
; bzk optimize
C - - - - - 0x018022 06:A012: 4C C8 AC  JMP loc_ACC8



sub_0x018025:
; bzk optimize
C - - - - - 0x018025 06:A015: 4C 38 AD  JMP loc_AD38



sub_0x018028:
; bzk optimize
C - - - - - 0x018028 06:A018: 4C 99 B3  JMP loc_B399



sub_0x01802B:
; bzk optimize
C - - - - - 0x01802B 06:A01B: 4C 93 AE  JMP loc_AE93



sub_0x01802E_print_cutscene_text:
; bzk optimize
C - - - - - 0x01802E 06:A01E: 4C 97 AF  JMP loc_AF97



sub_0x018031:
; bzk optimize
C - - - - - 0x018031 06:A021: 4C 37 B1  JMP loc_B137



sub_0x018034:
; bzk optimize
C - - - - - 0x018034 06:A024: 4C 9C B2  JMP loc_B29C



sub_0x018037:
; bzk optimize
C - - - - - 0x018037 06:A027: 4C E2 B6  JMP loc_B6E2



sub_0x01803A:
; bzk optimize
C - - - - - 0x01803A 06:A02A: 4C 97 AD  JMP loc_AD97



sub_0x01803D:
; bzk optimize
C - - - - - 0x01803D 06:A02D: 4C B6 B9  JMP loc_B9B6



sub_0x018040:
; bzk optimize
C - - - - - 0x018040 06:A030: 4C B9 B9  JMP loc_B9B9



sub_0x018043:
; bzk optimize
C - - - - - 0x018043 06:A033: 4C 00 BB  JMP loc_BB00



sub_0x018046:
; bzk optimize
C - - - - - 0x018046 06:A036: 4C 19 BC  JMP loc_BC19



sub_0x018049:
; bzk optimize
C - - - - - 0x018049 06:A039: 4C 86 B5  JMP loc_B586



sub_0x01804C:
; bzk optimize
C - - - - - 0x01804C 06:A03C: 4C 5C BE  JMP loc_BE5C



loc_A03F:
C D 1 - - - 0x01804F 06:A03F: A9 1E     LDA #con_chr_bank_bg + $1E
C - - - - - 0x018051 06:A041: 85 20     STA ram_chr_bank_bg
C - - - - - 0x018053 06:A043: A9 19     LDA #con_chr_bank_bg + $19
C - - - - - 0x018055 06:A045: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x018057 06:A047: A9 29     LDA #con_chr_bank_spr + $29
C - - - - - 0x018059 06:A049: 85 24     STA ram_chr_bank_spr
C - - - - - 0x01805B 06:A04B: A9 5D     LDA #con_chr_bank_spr + $5D
C - - - - - 0x01805D 06:A04D: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x01805F 06:A04F: A9 00     LDA #$00
C - - - - - 0x018061 06:A051: 85 7D     STA ram_007D_unk_language
C - - - - - 0x018063 06:A053: 85 49     STA ram_0049_useless_00
C - - - - - 0x018065 06:A055: 20 9A A0  JSR sub_A09A
C - - - - - 0x018068 06:A058: 20 01 A1  JSR sub_A101_write_fixed_palette_to_buffer
C - - - - - 0x01806B 06:A05B: AD E5 03  LDA ram_03E5
C - - - - - 0x01806E 06:A05E: 29 01     AND #$01
C - - - - - 0x018070 06:A060: F0 24     BEQ bra_A086
C - - - - - 0x018072 06:A062: AD E5 03  LDA ram_03E5
C - - - - - 0x018075 06:A065: 29 FE     AND #$01 ^ $FF
C - - - - - 0x018077 06:A067: 8D E5 03  STA ram_03E5
C - - - - - 0x01807A 06:A06A: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x01807D 06:A06D: 29 20     AND #con_05DC_20
C - - - - - 0x01807F 06:A06F: F0 15     BEQ bra_A086
C - - - - - 0x018081 06:A071: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x018084 06:A074: 29 01     AND #con_05B5_together
C - - - - - 0x018086 06:A076: F0 04     BEQ bra_A07C_separate
; if together
C - - - - - 0x018088 06:A078: A2 00     LDX #$00
C - - - - - 0x01808A 06:A07A: F0 02     BEQ bra_A07E    ; jmp
bra_A07C_separate:
C - - - - - 0x01808C 06:A07C: A6 A8     LDX ram_plr_index
bra_A07E:
C - - - - - 0x01808E 06:A07E: BD DA 05  LDA ram_05DA_plr,X
C - - - - - 0x018091 06:A081: 09 80     ORA #$80
C - - - - - 0x018093 06:A083: 9D D6 05  STA ram_05D6_plr,X
bra_A086:
C - - - - - 0x018096 06:A086: 20 62 AA  JSR sub_AA62
C - - - - - 0x018099 06:A089: A9 00     LDA #$00
C - - - - - 0x01809B 06:A08B: 8D 00 04  STA ram_0400_flag
C - - - - - 0x01809E 06:A08E: 8D 22 04  STA ram_0422_flag
C - - - - - 0x0180A1 06:A091: 20 2F A1  JSR sub_A12F
C - - - - - 0x0180A4 06:A094: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x0180A6 06:A096: 8D 4E 05  STA ram_054E_t01_prev_obj_index
C - - - - - 0x0180A9 06:A099: 60        RTS



sub_A09A:
C - - - - - 0x0180AA 06:A09A: A9 30     LDA #$30
C - - - - - 0x0180AC 06:A09C: 8D 00 20  STA $2000
C - - - - - 0x0180AF 06:A09F: A9 00     LDA #$00
C - - - - - 0x0180B1 06:A0A1: 8D 01 20  STA $2001
C - - - - - 0x0180B4 06:A0A4: 85 3B     STA ram_for_2001
C - - - - - 0x0180B6 06:A0A6: 85 50     STA ram_0050_data_index
C - - - - - 0x0180B8 06:A0A8: A9 24     LDA #< tbl_0x007134_metatiles
C - - - - - 0x0180BA 06:A0AA: 85 80     STA ram_0080_t01_metatiles_ptr_lo
C - - - - - 0x0180BC 06:A0AC: A9 91     LDA #> tbl_0x007134_metatiles
C - - - - - 0x0180BE 06:A0AE: 85 81     STA ram_0081_t01_metatiles_ptr_hi
C - - - - - 0x0180C0 06:A0B0: A9 A0     LDA #< tbl_0x0045B0
C - - - - - 0x0180C2 06:A0B2: 85 7E     STA ram_007E_t01_data
C - - - - - 0x0180C4 06:A0B4: A9 85     LDA #> tbl_0x0045B0
C - - - - - 0x0180C6 06:A0B6: 85 7F     STA ram_007E_t01_data + $01
C - - - - - 0x0180C8 06:A0B8: A9 49     LDA #< tbl_0x005459
C - - - - - 0x0180CA 06:A0BA: 85 82     STA ram_0082_t01_data
C - - - - - 0x0180CC 06:A0BC: A9 94     LDA #> tbl_0x005459
C - - - - - 0x0180CE 06:A0BE: 85 83     STA ram_0082_t01_data + $01
C - - - - - 0x0180D0 06:A0C0: A9 1D     LDA #$1D
C - - - - - 0x0180D2 06:A0C2: 85 3C     STA ram_city
C - - - - - 0x0180D4 06:A0C4: 20 C2 FF  JSR sub_0x01FFD2
; bzk optimize, JMP
C - - - - - 0x0180D7 06:A0C7: 20 CB A0  JSR sub_A0CB
C - - - - - 0x0180DA 06:A0CA: 60        RTS



sub_A0CB:
C - - - - - 0x0180DB 06:A0CB: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0180DD 06:A0CD: 48        PHA
C - - - - - 0x0180DE 06:A0CE: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x0180E0 06:A0D0: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0180E2 06:A0D2: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0180E5 06:A0D5: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x0180E8 06:A0D8: 29 08     AND #con_05E1_08
C - - - - - 0x0180EA 06:A0DA: F0 1E     BEQ bra_A0FA
C - - - - - 0x0180EC 06:A0DC: A2 00     LDX #$00
C - - - - - 0x0180EE 06:A0DE: AD 02 20  LDA $2002
bra_A0E1_loop:
C - - - - - 0x0180F1 06:A0E1: BD BB 9A  LDA tbl_0x00BACB,X
C - - - - - 0x0180F4 06:A0E4: 8D 06 20  STA $2006
C - - - - - 0x0180F7 06:A0E7: BD BC 9A  LDA tbl_0x00BACB + $01,X
C - - - - - 0x0180FA 06:A0EA: 8D 06 20  STA $2006
C - - - - - 0x0180FD 06:A0ED: BD BD 9A  LDA tbl_0x00BACB + $02,X
C - - - - - 0x018100 06:A0F0: 8D 07 20  STA $2007
C - - - - - 0x018103 06:A0F3: E8        INX
C - - - - - 0x018104 06:A0F4: E8        INX
C - - - - - 0x018105 06:A0F5: E8        INX
C - - - - - 0x018106 06:A0F6: E0 2A     CPX #$2A
C - - - - - 0x018108 06:A0F8: 90 E7     BCC bra_A0E1_loop
bra_A0FA:
C - - - - - 0x01810A 06:A0FA: 68        PLA
C - - - - - 0x01810B 06:A0FB: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01810D 06:A0FD: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018110 06:A100: 60        RTS



sub_A101_write_fixed_palette_to_buffer:
C - - - - - 0x018111 06:A101: A2 00     LDX #$00
bra_A103_loop:
C - - - - - 0x018113 06:A103: BD 0F A1  LDA tbl_A10F_palette,X
C - - - - - 0x018116 06:A106: 9D 80 02  STA ram_pal_buffer,X
C - - - - - 0x018119 06:A109: E8        INX
C - - - - - 0x01811A 06:A10A: E0 20     CPX #$20
C - - - - - 0x01811C 06:A10C: 90 F5     BCC bra_A103_loop
C - - - - - 0x01811E 06:A10E: 60        RTS



tbl_A10F_palette:
; background
- D 1 - - - 0x01811F 06:A10F: 0F        .byte $0F, $11, $21, $30   ; 
- D 1 - - - 0x018123 06:A113: 0F        .byte $0F, $21, $17, $30   ; 
- D 1 - - - 0x018127 06:A117: 0F        .byte $0F, $01, $01, $01   ; 
- D 1 - - - 0x01812B 06:A11B: 0F        .byte $0F, $05, $25, $30   ; 
; sprites
- D 1 - - - 0x01812F 06:A11F: 0F        .byte $0F, $0F, $36, $16   ; 
- D 1 - - - 0x018133 06:A123: 0F        .byte $0F, $0F, $02, $36   ; 
- D 1 - - - 0x018137 06:A127: 0F        .byte $0F, $0F, $21, $30   ; 
- D 1 - - - 0x01813B 06:A12B: 0F        .byte $0F, $0F, $00, $30   ; 



sub_A12F:
C - - - - - 0x01813F 06:A12F: 20 E0 A1  JSR sub_A1E0_clear_043A_0539___053B_0568
C - - - - - 0x018142 06:A132: A2 00     LDX #$00
C - - - - - 0x018144 06:A134: 20 47 A1  JSR sub_A147
C - - - - - 0x018147 06:A137: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01814A 06:A13A: 29 40     AND #con_05D4_40
C - - - - - 0x01814C 06:A13C: D0 05     BNE bra_A143
C - - - - - 0x01814E 06:A13E: A2 01     LDX #$01
C - - - - - 0x018150 06:A140: 20 47 A1  JSR sub_A147
bra_A143:
; bzk optimize, JMP
C - - - - - 0x018153 06:A143: 20 F3 A1  JSR sub_A1F3
C - - - - - 0x018156 06:A146: 60        RTS



sub_A147:
; in
    ; X = player index
C - - - - - 0x018157 06:A147: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018159 06:A149: 48        PHA
C - - - - - 0x01815A 06:A14A: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01815C 06:A14C: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01815E 06:A14E: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018161 06:A151: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x018164 06:A154: 0A        ASL
C - - - - - 0x018165 06:A155: A8        TAY
C - - - - - 0x018166 06:A156: B9 1B 9A  LDA tbl_0x00BA2B_map_cursor_position,Y
C - - - - - 0x018169 06:A159: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x01816C 06:A15C: B9 1C 9A  LDA tbl_0x00BA2B_map_cursor_position + $01,Y
C - - - - - 0x01816F 06:A15F: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x018172 06:A162: 68        PLA
C - - - - - 0x018173 06:A163: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018175 06:A165: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018178 06:A168: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x01817B 06:A16B: 10 17     BPL bra_A184_captured   ; if not con_05D4_80
C - - - - - 0x01817D 06:A16D: 29 10     AND #con_05D4_10
C - - - - - 0x01817F 06:A16F: D0 0F     BNE bra_A180
C - - - - - 0x018181 06:A171: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x018184 06:A174: 29 60     AND #con_05D4_20 + con_05D4_40
C - - - - - 0x018186 06:A176: F0 15     BEQ bra_A18D
C - - - - - 0x018188 06:A178: 29 20     AND #con_05D4_20
C - - - - - 0x01818A 06:A17A: D0 0D     BNE bra_A189
C - - - - - 0x01818C 06:A17C: A9 04     LDA #con_icon_id_avengers
C - - - - - 0x01818E 06:A17E: D0 10     BNE bra_A190    ; jmp
bra_A180:
C - - - - - 0x018190 06:A180: A9 0B     LDA #con_icon_id_rocked_big
C - - - - - 0x018192 06:A182: D0 0C     BNE bra_A190    ; jmp
bra_A184_captured:
C - - - - - 0x018194 06:A184: BD 9F A1  LDA tbl_A19F_gray_player_icon,X
C - - - - - 0x018197 06:A187: D0 07     BNE bra_A190
bra_A189:
C - - - - - 0x018199 06:A189: A9 05     LDA #con_icon_id_rocket_idle
C - - - - - 0x01819B 06:A18B: D0 03     BNE bra_A190    ; jmp
bra_A18D:
C - - - - - 0x01819D 06:A18D: BD A1 A1  LDA tbl_A1A1_normal_player_icon,X
bra_A190:
C - - - - - 0x0181A0 06:A190: 85 67     STA ram_0067_t40_icon_id
C - - - - - 0x0181A2 06:A192: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x0181A5 06:A195: A9 80     LDA #$80
C - - - - - 0x0181A7 06:A197: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x0181AA 06:A19A: E6 CA     INC ram_00CA_objects_counter
C - - - - - 0x0181AC 06:A19C: E6 CE     INC ram_all_objects_counter
C - - - - - 0x0181AE 06:A19E: 60        RTS



tbl_A19F_gray_player_icon:
- D 1 - - - 0x0181AF 06:A19F: 01        .byte con_icon_id_captain_grey   ; 00 
- D 1 - - - 0x0181B0 06:A1A0: 03        .byte con_icon_id_hawk_grey   ; 01 



tbl_A1A1_normal_player_icon:
- D 1 - - - 0x0181B1 06:A1A1: 00        .byte con_icon_id_captain_idle   ; 00 
- D 1 - - - 0x0181B2 06:A1A2: 02        .byte con_icon_id_hawk_idle   ; 01 



sub_A1A3:
C - - - - - 0x0181B3 06:A1A3: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0181B5 06:A1A5: 48        PHA
C - - - - - 0x0181B6 06:A1A6: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x0181B8 06:A1A8: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0181BA 06:A1AA: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0181BD 06:A1AD: A5 67     LDA ram_0067_t40_icon_id
C - - - - - 0x0181BF 06:A1AF: 0A        ASL
C - - - - - 0x0181C0 06:A1B0: A8        TAY
C - - - - - 0x0181C1 06:A1B1: B9 DD 98  LDA tbl_0x00B8ED,Y
C - - - - - 0x0181C4 06:A1B4: 85 5B     STA ram_005B_t2E_data
C - - - - - 0x0181C6 06:A1B6: 9D BF 04  STA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x0181C9 06:A1B9: B9 DE 98  LDA tbl_0x00B8ED + $01,Y
C - - - - - 0x0181CC 06:A1BC: 85 5C     STA ram_005B_t2E_data + $01
C - - - - - 0x0181CE 06:A1BE: 9D CC 04  STA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x0181D1 06:A1C1: A0 02     LDY #$02
C - - - - - 0x0181D3 06:A1C3: B1 5B     LDA (ram_005B_t2E_data),Y
C - - - - - 0x0181D5 06:A1C5: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x0181D8 06:A1C8: C8        INY ; 03
C - - - - - 0x0181D9 06:A1C9: B1 5B     LDA (ram_005B_t2E_data),Y
C - - - - - 0x0181DB 06:A1CB: 9D A5 04  STA ram_spr_data_ptr_lo_obj + $03,X
C - - - - - 0x0181DE 06:A1CE: C8        INY ; 04
C - - - - - 0x0181DF 06:A1CF: B1 5B     LDA (ram_005B_t2E_data),Y
C - - - - - 0x0181E1 06:A1D1: 9D B2 04  STA ram_spr_data_ptr_hi_obj + $03,X
C - - - - - 0x0181E4 06:A1D4: A5 67     LDA ram_0067_t40_icon_id
C - - - - - 0x0181E6 06:A1D6: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x0181E9 06:A1D9: 68        PLA
C - - - - - 0x0181EA 06:A1DA: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0181EC 06:A1DC: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0181EF 06:A1DF: 60        RTS



sub_A1E0_clear_043A_0539___053B_0568:
; bzk bug? 053A is not cleared
C - - - - - 0x0181F0 06:A1E0: A2 00     LDX #$00
; bzk optimize, TXA
; clear 043A-0539
; starting with ram_043A_obj_flags
C - - - - - 0x0181F2 06:A1E2: A9 00     LDA #$00
bra_A1E4_loop:
C - - - - - 0x0181F4 06:A1E4: 9D 3A 04  STA $043A,X
C - - - - - 0x0181F7 06:A1E7: E8        INX
C - - - - - 0x0181F8 06:A1E8: D0 FA     BNE bra_A1E4_loop
; clear 053B-0568
C - - - - - 0x0181FA 06:A1EA: A2 2E     LDX #$2E
bra_A1EC_loop:
C - - - - - 0x0181FC 06:A1EC: 9D 3A 05  STA $053B - $01,X
C - - - - - 0x0181FF 06:A1EF: CA        DEX
C - - - - - 0x018200 06:A1F0: D0 FA     BNE bra_A1EC_loop
C - - - - - 0x018202 06:A1F2: 60        RTS



sub_A1F3:
C - - - - - 0x018203 06:A1F3: AD E0 05  LDA ram_05E0_flags
C - - - - - 0x018206 06:A1F6: 30 06     BMI bra_A1FE
; if not con_05E0_80
C - - - - - 0x018208 06:A1F8: 20 05 A2  JSR sub_A205
C - - - - - 0x01820B 06:A1FB: 4C 01 A2  JMP loc_A201
bra_A1FE:
C - - - - - 0x01820E 06:A1FE: 20 60 A2  JSR sub_A260
loc_A201:
; bzk optimize, JMP
C D 1 - - - 0x018211 06:A201: 20 E2 A2  JSR sub_A2E2
C - - - - - 0x018214 06:A204: 60        RTS



sub_A205:
C - - - - - 0x018215 06:A205: A6 D2     LDX ram_00D2_data_index
C - - - - - 0x018217 06:A207: BD 56 A2  LDA tbl_A256,X
C - - - - - 0x01821A 06:A20A: 8D E0 05  STA ram_05E0_flags
C - - - - - 0x01821D 06:A20D: BD 5B A2  LDA tbl_A25B_loop_counter,X
; bzk optimize, STA after BEQ
C - - - - - 0x018220 06:A210: 85 67     STA ram_0067_t17_loop_counter
C - - - - - 0x018222 06:A212: F0 41     BEQ bra_A255_RTS
C - - - - - 0x018224 06:A214: 8A        TXA
C - - - - - 0x018225 06:A215: 0A        ASL
C - - - - - 0x018226 06:A216: AA        TAX
C - - - - - 0x018227 06:A217: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018229 06:A219: 48        PHA
C - - - - - 0x01822A 06:A21A: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01822C 06:A21C: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01822E 06:A21E: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018231 06:A221: BD 79 9A  LDA tbl_0x00BA89,X
C - - - - - 0x018234 06:A224: 85 5B     STA ram_005B_t2D_data
C - - - - - 0x018236 06:A226: BD 7A 9A  LDA tbl_0x00BA89 + $01,X
C - - - - - 0x018239 06:A229: 85 5C     STA ram_005B_t2D_data + $01
C - - - - - 0x01823B 06:A22B: A2 00     LDX #$00
C - - - - - 0x01823D 06:A22D: A0 00     LDY #$00
bra_A22F_loop:
C - - - - - 0x01823F 06:A22F: B1 5B     LDA (ram_005B_t2D_data),Y
C - - - - - 0x018241 06:A231: C8        INY
C - - - - - 0x018242 06:A232: 9D 8F 04  STA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x018245 06:A235: B1 5B     LDA (ram_005B_t2D_data),Y
C - - - - - 0x018247 06:A237: C8        INY
C - - - - - 0x018248 06:A238: 9D 68 04  STA ram_pos_X_lo_obj + $07,X
C - - - - - 0x01824B 06:A23B: B1 5B     LDA (ram_005B_t2D_data),Y
C - - - - - 0x01824D 06:A23D: C8        INY
C - - - - - 0x01824E 06:A23E: 9D DD 05  STA ram_05DD_obj,X
C - - - - - 0x018251 06:A241: A9 80     LDA #$80
C - - - - - 0x018253 06:A243: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x018256 06:A246: E6 CB     INC ram_00CB_t01
C - - - - - 0x018258 06:A248: E6 CE     INC ram_all_objects_counter
C - - - - - 0x01825A 06:A24A: E8        INX
C - - - - - 0x01825B 06:A24B: E4 67     CPX ram_0067_t17_loop_counter
C - - - - - 0x01825D 06:A24D: 90 E0     BCC bra_A22F_loop
C - - - - - 0x01825F 06:A24F: 68        PLA
C - - - - - 0x018260 06:A250: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018262 06:A252: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
bra_A255_RTS:
C - - - - - 0x018265 06:A255: 60        RTS



tbl_A256:
- D 1 - - - 0x018266 06:A256: 84        .byte con_05E0_80 + con_05E0_04   ; 00 
- D 1 - - - 0x018267 06:A257: 84        .byte con_05E0_80 + con_05E0_04   ; 01 
- D 1 - - - 0x018268 06:A258: 80        .byte con_05E0_80   ; 02 
- D 1 - - - 0x018269 06:A259: 87        .byte con_05E0_80 + con_05E0_04 + con_05E0_02 + con_05E0_01   ; 03 
- D 1 - - - 0x01826A 06:A25A: 87        .byte con_05E0_80 + con_05E0_04 + con_05E0_02 + con_05E0_01   ; 04 



tbl_A25B_loop_counter:
- D 1 - - - 0x01826B 06:A25B: 02        .byte $02   ; 00 
- D 1 - - - 0x01826C 06:A25C: 02        .byte $02   ; 01 
- D 1 - - - 0x01826D 06:A25D: 03        .byte $03   ; 02 
- D 1 - - - 0x01826E 06:A25E: 00        .byte $00   ; 03 
- D 1 - - - 0x01826F 06:A25F: 00        .byte $00   ; 04 



sub_A260:
C - - - - - 0x018270 06:A260: A2 00     LDX #$00
C - - - - - 0x018272 06:A262: AD E0 05  LDA ram_05E0_flags
C - - - - - 0x018275 06:A265: 29 01     AND #con_05E0_01
C - - - - - 0x018277 06:A267: D0 03     BNE bra_A26C
C - - - - - 0x018279 06:A269: 20 83 A2  JSR sub_A283
bra_A26C:
C - - - - - 0x01827C 06:A26C: E8        INX
C - - - - - 0x01827D 06:A26D: AD E0 05  LDA ram_05E0_flags
C - - - - - 0x018280 06:A270: 29 02     AND #con_05E0_02
C - - - - - 0x018282 06:A272: D0 03     BNE bra_A277
C - - - - - 0x018284 06:A274: 20 83 A2  JSR sub_A283
bra_A277:
C - - - - - 0x018287 06:A277: E8        INX
C - - - - - 0x018288 06:A278: AD E0 05  LDA ram_05E0_flags
C - - - - - 0x01828B 06:A27B: 29 04     AND #con_05E0_04
C - - - - - 0x01828D 06:A27D: D0 03     BNE bra_A282_RTS
; bzk optimize, JMP
C - - - - - 0x01828F 06:A27F: 20 83 A2  JSR sub_A283
bra_A282_RTS:
C - - - - - 0x018292 06:A282: 60        RTS



sub_A283:
C - - - - - 0x018293 06:A283: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018295 06:A285: 48        PHA
C - - - - - 0x018296 06:A286: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018298 06:A288: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01829A 06:A28A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01829D 06:A28D: BD DD 05  LDA ram_05DD_obj,X
C - - - - - 0x0182A0 06:A290: 29 0F     AND #$0F
C - - - - - 0x0182A2 06:A292: 0A        ASL
C - - - - - 0x0182A3 06:A293: A8        TAY
C - - - - - 0x0182A4 06:A294: B9 AD 9A  LDA tbl_0x00BABD,Y
C - - - - - 0x0182A7 06:A297: 85 5B     STA ram_005B_t2C_data
C - - - - - 0x0182A9 06:A299: B9 AE 9A  LDA tbl_0x00BABD + $01,Y
C - - - - - 0x0182AC 06:A29C: 85 5C     STA ram_005B_t2C_data + $01
C - - - - - 0x0182AE 06:A29E: BD DD 05  LDA ram_05DD_obj,X
C - - - - - 0x0182B1 06:A2A1: 29 70     AND #$70
; / 10
C - - - - - 0x0182B3 06:A2A3: 4A        LSR
C - - - - - 0x0182B4 06:A2A4: 4A        LSR
C - - - - - 0x0182B5 06:A2A5: 4A        LSR
C - - - - - 0x0182B6 06:A2A6: 4A        LSR
; 
C - - - - - 0x0182B7 06:A2A7: A8        TAY
C - - - - - 0x0182B8 06:A2A8: B1 5B     LDA (ram_005B_t2C_data),Y
C - - - - - 0x0182BA 06:A2AA: 0A        ASL
C - - - - - 0x0182BB 06:A2AB: A8        TAY
C - - - - - 0x0182BC 06:A2AC: B9 7F 9A  LDA tbl_0x00BA8F_positions_YX,Y
C - - - - - 0x0182BF 06:A2AF: 9D 8F 04  STA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x0182C2 06:A2B2: B9 80 9A  LDA tbl_0x00BA8F_positions_YX + $01,Y
C - - - - - 0x0182C5 06:A2B5: 9D 68 04  STA ram_pos_X_lo_obj + $07,X
C - - - - - 0x0182C8 06:A2B8: AD E0 05  LDA ram_05E0_flags
C - - - - - 0x0182CB 06:A2BB: 29 07     AND #con_05E0_01 + con_05E0_02 + con_05E0_04
C - - - - - 0x0182CD 06:A2BD: F0 13     BEQ bra_A2D2
C - - - - - 0x0182CF 06:A2BF: BD DD 05  LDA ram_05DD_obj,X
C - - - - - 0x0182D2 06:A2C2: 48        PHA
C - - - - - 0x0182D3 06:A2C3: 29 0F     AND #$0F
C - - - - - 0x0182D5 06:A2C5: 85 67     STA ram_0067_t4B
C - - - - - 0x0182D7 06:A2C7: 68        PLA
C - - - - - 0x0182D8 06:A2C8: 29 F0     AND #$F0
C - - - - - 0x0182DA 06:A2CA: 18        CLC
C - - - - - 0x0182DB 06:A2CB: 69 10     ADC #$10
C - - - - - 0x0182DD 06:A2CD: 05 67     ORA ram_0067_t4B
C - - - - - 0x0182DF 06:A2CF: 9D DD 05  STA ram_05DD_obj,X
bra_A2D2:
C - - - - - 0x0182E2 06:A2D2: A9 80     LDA #$80
C - - - - - 0x0182E4 06:A2D4: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x0182E7 06:A2D7: E6 CB     INC ram_00CB_t01
C - - - - - 0x0182E9 06:A2D9: E6 CE     INC ram_all_objects_counter
C - - - - - 0x0182EB 06:A2DB: 68        PLA
C - - - - - 0x0182EC 06:A2DC: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0182EE 06:A2DE: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0182F1 06:A2E1: 60        RTS



sub_A2E2:
C - - - - - 0x0182F2 06:A2E2: A2 00     LDX #$00
bra_A2E4_loop:
C - - - - - 0x0182F4 06:A2E4: BD 41 04  LDA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x0182F7 06:A2E7: 10 03     BPL bra_A2EC
C - - - - - 0x0182F9 06:A2E9: 20 F2 A2  JSR sub_A2F2
bra_A2EC:
C - - - - - 0x0182FC 06:A2EC: E8        INX
C - - - - - 0x0182FD 06:A2ED: E0 03     CPX #$03
C - - - - - 0x0182FF 06:A2EF: 90 F3     BCC bra_A2E4_loop
C - - - - - 0x018301 06:A2F1: 60        RTS



sub_A2F2:
C - - - - - 0x018302 06:A2F2: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018304 06:A2F4: 48        PHA
C - - - - - 0x018305 06:A2F5: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018307 06:A2F7: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018309 06:A2F9: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01830C 06:A2FC: A0 0C     LDY #$06 * $02
; bzk optimize, Y is always 0C
C - - - - - 0x01830E 06:A2FE: B9 DD 98  LDA tbl_0x00B8ED,Y
C - - - - - 0x018311 06:A301: 85 5B     STA ram_005B_t2B_data
C - - - - - 0x018313 06:A303: 9D C3 04  STA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x018316 06:A306: B9 DE 98  LDA tbl_0x00B8ED + $01,Y
C - - - - - 0x018319 06:A309: 85 5C     STA ram_005B_t2B_data + $01
C - - - - - 0x01831B 06:A30B: 9D D0 04  STA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x01831E 06:A30E: A0 02     LDY #$02
C - - - - - 0x018320 06:A310: B1 5B     LDA (ram_005B_t2B_data),Y
C - - - - - 0x018322 06:A312: 9D EA 04  STA ram_04E6_obj_anim_timer + $04,X
C - - - - - 0x018325 06:A315: C8        INY ; 03
C - - - - - 0x018326 06:A316: B1 5B     LDA (ram_005B_t2B_data),Y
C - - - - - 0x018328 06:A318: 9D A9 04  STA ram_spr_data_ptr_lo_obj + $07,X
C - - - - - 0x01832B 06:A31B: C8        INY ; 04
C - - - - - 0x01832C 06:A31C: B1 5B     LDA (ram_005B_t2B_data),Y
C - - - - - 0x01832E 06:A31E: 9D B6 04  STA ram_spr_data_ptr_hi_obj + $07,X
C - - - - - 0x018331 06:A321: 68        PLA
C - - - - - 0x018332 06:A322: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018334 06:A324: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018337 06:A327: 60        RTS



loc_A328_map_movement_handler:
C D 1 - - - 0x018338 06:A328: AD 34 05  LDA ram_0534_t01_map_movement_handler_index
C - - - - - 0x01833B 06:A32B: 0A        ASL
C - - - - - 0x01833C 06:A32C: AA        TAX
C - - - - - 0x01833D 06:A32D: BD 44 A3  LDA tbl_A344_map_movement_handler,X
C - - - - - 0x018340 06:A330: 85 5B     STA ram_005B_t55_jmp
C - - - - - 0x018342 06:A332: BD 45 A3  LDA tbl_A344_map_movement_handler + $01,X
C - - - - - 0x018345 06:A335: 85 5C     STA ram_005B_t55_jmp + $01
C - - - - - 0x018347 06:A337: A9 A3     LDA #> (ofs_A340_return - $01)
C - - - - - 0x018349 06:A339: 48        PHA
C - - - - - 0x01834A 06:A33A: A9 3F     LDA #< (ofs_A340_return - $01)
C - - - - - 0x01834C 06:A33C: 48        PHA
C - - - - - 0x01834D 06:A33D: 6C 5B 00  JMP (ram_005B_t55_jmp)



ofs_A340_return:
; bzk optimize
C - - - - - 0x018350 06:A340: 20 54 A3  JSR sub_A354
C - - - - - 0x018353 06:A343: 60        RTS



tbl_A344_map_movement_handler:
; see con_0534
- D 1 - - - 0x018354 06:A344: 01 A4     .word ofs_024_map_movement_A401_00
- D 1 - - - 0x018356 06:A346: 3F A4     .word ofs_024_map_movement_A43F_01
- D 1 - - - 0x018358 06:A348: 53 A4     .word ofs_024_map_movement_A453_02
- D 1 - - - 0x01835A 06:A34A: B5 A4     .word ofs_024_map_movement_A4B5_03
- D 1 - - - 0x01835C 06:A34C: FF A4     .word ofs_024_map_movement_A4FF_04
- D 1 - - - 0x01835E 06:A34E: 25 A5     .word ofs_024_map_movement_A525_05
- D 1 - - - 0x018360 06:A350: D2 A5     .word ofs_024_map_movement_A5D2_06
- D 1 - - - 0x018362 06:A352: 9F AA     .word ofs_024_map_movement_AA9F_07



sub_A354:
C - - - - - 0x018364 06:A354: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018366 06:A356: 48        PHA ; 1
C - - - - - 0x018367 06:A357: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018369 06:A359: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01836B 06:A35B: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01836E 06:A35E: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x018370 06:A360: 85 67     STA ram_0067_t4C_loop_counter
C - - - - - 0x018372 06:A362: A2 00     LDX #$00
bra_A364_loop:
C - - - - - 0x018374 06:A364: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x018377 06:A367: 30 07     BMI bra_A370
bra_A369:
C - - - - - 0x018379 06:A369: E8        INX
C - - - - - 0x01837A 06:A36A: E0 04     CPX #$04
C - - - - - 0x01837C 06:A36C: 90 F6     BCC bra_A364_loop
C - - - - - 0x01837E 06:A36E: B0 0C     BCS bra_A37C    ; jmp
bra_A370:
C - - - - - 0x018380 06:A370: DE E6 04  DEC ram_04E6_obj_anim_timer,X
C - - - - - 0x018383 06:A373: D0 03     BNE bra_A378
C - - - - - 0x018385 06:A375: 20 A3 A3  JSR sub_A3A3
bra_A378:
C - - - - - 0x018388 06:A378: C6 67     DEC ram_0067_t4C_loop_counter
C - - - - - 0x01838A 06:A37A: D0 ED     BNE bra_A369
bra_A37C:
C - - - - - 0x01838C 06:A37C: A5 CB     LDA ram_00CB_t01
C - - - - - 0x01838E 06:A37E: F0 1C     BEQ bra_A39C
C - - - - - 0x018390 06:A380: 85 67     STA ram_0067_t4D_loop_counter
C - - - - - 0x018392 06:A382: A2 00     LDX #$00
bra_A384_loop:
C - - - - - 0x018394 06:A384: BD 41 04  LDA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x018397 06:A387: 30 07     BMI bra_A390
bra_A389:
C - - - - - 0x018399 06:A389: E8        INX
C - - - - - 0x01839A 06:A38A: E0 06     CPX #$06
C - - - - - 0x01839C 06:A38C: 90 F6     BCC bra_A384_loop
- - - - - - 0x01839E 06:A38E: B0 0C     BCS bra_A39C    ; jmp
bra_A390:
C - - - - - 0x0183A0 06:A390: DE EA 04  DEC ram_04E6_obj_anim_timer + $04,X
C - - - - - 0x0183A3 06:A393: D0 03     BNE bra_A398
C - - - - - 0x0183A5 06:A395: 20 D2 A3  JSR sub_A3D2
bra_A398:
C - - - - - 0x0183A8 06:A398: C6 67     DEC ram_0067_t4D_loop_counter
C - - - - - 0x0183AA 06:A39A: D0 ED     BNE bra_A389
bra_A39C:
C - - - - - 0x0183AC 06:A39C: 68        PLA ; 1
C - - - - - 0x0183AD 06:A39D: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0183AF 06:A39F: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0183B2 06:A3A2: 60        RTS



sub_A3A3:
C - - - - - 0x0183B3 06:A3A3: BD BF 04  LDA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x0183B6 06:A3A6: 85 5B     STA ram_005B_t2A_data
C - - - - - 0x0183B8 06:A3A8: BD CC 04  LDA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x0183BB 06:A3AB: 85 5C     STA ram_005B_t2A_data + $01
C - - - - - 0x0183BD 06:A3AD: A0 05     LDY #$05
C - - - - - 0x0183BF 06:A3AF: B1 5B     LDA (ram_005B_t2A_data),Y
C - - - - - 0x0183C1 06:A3B1: 85 5D     STA ram_005D_t09_data
C - - - - - 0x0183C3 06:A3B3: 9D BF 04  STA ram_04BC_data_ptr_lo_obj + $03,X
C - - - - - 0x0183C6 06:A3B6: C8        INY ; 06
C - - - - - 0x0183C7 06:A3B7: B1 5B     LDA (ram_005B_t2A_data),Y
C - - - - - 0x0183C9 06:A3B9: 85 5E     STA ram_005D_t09_data + $01
C - - - - - 0x0183CB 06:A3BB: 9D CC 04  STA ram_04C9_data_ptr_hi_obj + $03,X
C - - - - - 0x0183CE 06:A3BE: A0 02     LDY #$02
C - - - - - 0x0183D0 06:A3C0: B1 5D     LDA (ram_005D_t09_data),Y
C - - - - - 0x0183D2 06:A3C2: 9D E6 04  STA ram_04E6_obj_anim_timer,X
C - - - - - 0x0183D5 06:A3C5: C8        INY ; 03
C - - - - - 0x0183D6 06:A3C6: B1 5D     LDA (ram_005D_t09_data),Y
C - - - - - 0x0183D8 06:A3C8: 9D A5 04  STA ram_spr_data_ptr_lo_obj + $03,X
C - - - - - 0x0183DB 06:A3CB: C8        INY ; 04
C - - - - - 0x0183DC 06:A3CC: B1 5D     LDA (ram_005D_t09_data),Y
C - - - - - 0x0183DE 06:A3CE: 9D B2 04  STA ram_spr_data_ptr_hi_obj + $03,X
C - - - - - 0x0183E1 06:A3D1: 60        RTS



sub_A3D2:
C - - - - - 0x0183E2 06:A3D2: BD C3 04  LDA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x0183E5 06:A3D5: 85 5B     STA ram_005B_t3E_data
C - - - - - 0x0183E7 06:A3D7: BD D0 04  LDA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x0183EA 06:A3DA: 85 5C     STA ram_005B_t3E_data + $01
; 
C - - - - - 0x0183EC 06:A3DC: A0 05     LDY #$05
C - - - - - 0x0183EE 06:A3DE: B1 5B     LDA (ram_005B_t3E_data),Y
C - - - - - 0x0183F0 06:A3E0: 85 5D     STA ram_005D_t10_data
C - - - - - 0x0183F2 06:A3E2: 9D C3 04  STA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x0183F5 06:A3E5: C8        INY ; 06
C - - - - - 0x0183F6 06:A3E6: B1 5B     LDA (ram_005B_t3E_data),Y
C - - - - - 0x0183F8 06:A3E8: 85 5E     STA ram_005D_t10_data + $01
C - - - - - 0x0183FA 06:A3EA: 9D D0 04  STA ram_04C9_data_ptr_hi_obj + $07,X
; 
C - - - - - 0x0183FD 06:A3ED: A0 02     LDY #$02
C - - - - - 0x0183FF 06:A3EF: B1 5D     LDA (ram_005D_t10_data),Y
C - - - - - 0x018401 06:A3F1: 9D EA 04  STA ram_04E6_obj_anim_timer + $04,X
; 
C - - - - - 0x018404 06:A3F4: C8        INY ; 03
C - - - - - 0x018405 06:A3F5: B1 5D     LDA (ram_005D_t10_data),Y
C - - - - - 0x018407 06:A3F7: 9D A9 04  STA ram_spr_data_ptr_lo_obj + $07,X
C - - - - - 0x01840A 06:A3FA: C8        INY ; 04
C - - - - - 0x01840B 06:A3FB: B1 5D     LDA (ram_005D_t10_data),Y
C - - - - - 0x01840D 06:A3FD: 9D B6 04  STA ram_spr_data_ptr_hi_obj + $07,X
C - - - - - 0x018410 06:A400: 60        RTS



ofs_024_map_movement_A401_00:
; con_0534_00
C - - J - - 0x018411 06:A401: AD 37 05  LDA ram_0537_t01
C - - - - - 0x018414 06:A404: 30 03     BMI bra_A409
C - - - - - 0x018416 06:A406: 20 87 A6  JSR sub_A687
bra_A409:
C - - - - - 0x018419 06:A409: 20 82 A8  JSR sub_A882
C - - - - - 0x01841C 06:A40C: AD 37 05  LDA ram_0537_t01
C - - - - - 0x01841F 06:A40F: 30 25     BMI bra_A436
C - - - - - 0x018421 06:A411: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x018424 06:A414: 30 20     BMI bra_A436
; if not con_05DC_has_player_index
C - - - - - 0x018426 06:A416: A5 36     LDA ram_buttons
C - - - - - 0x018428 06:A418: C5 38     CMP ram_prev_buttons
C - - - - - 0x01842A 06:A41A: F0 19     BEQ bra_A435_RTS
C - - - - - 0x01842C 06:A41C: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x01842E 06:A41E: F0 15     BEQ bra_A435_RTS
C - - - - - 0x018430 06:A420: EE 34 05  INC ram_0534_t01_map_movement_handler_index ; -> con_0534_01
; confirm player on map
C - - - - - 0x018433 06:A423: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x018435 06:A425: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x018437 06:A427: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01843A 06:A42A: 20 A0 A7  JSR sub_A7A0
C - - - - - 0x01843D 06:A42D: 20 71 A8  JSR sub_A871
C - - - - - 0x018440 06:A430: A9 00     LDA #$00
C - - - - - 0x018442 06:A432: 8D 43 05  STA ram_0541_obj_flags + $02
bra_A435_RTS:
C - - - - - 0x018445 06:A435: 60        RTS
bra_A436:
C - - - - - 0x018446 06:A436: CE 5E 05  DEC ram_055E_t02_counter
C - - - - - 0x018449 06:A439: D0 FA     BNE bra_A435_RTS
C - - - - - 0x01844B 06:A43B: EE 34 05  INC ram_0534_t01_map_movement_handler_index ; -> con_0534_01
C - - - - - 0x01844E 06:A43E: 60        RTS



ofs_024_map_movement_A43F_01:
; con_0534_01
C - - J - - 0x01844F 06:A43F: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x018452 06:A442: 10 0B     BPL bra_A44F
; if con_05DC_has_player_index
C - - - - - 0x018454 06:A444: A9 04     LDA #con_0534_04
C - - - - - 0x018456 06:A446: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
C - - - - - 0x018459 06:A449: A9 40     LDA #$40
C - - - - - 0x01845B 06:A44B: 8D 5E 05  STA ram_055E_t01_counter
C - - - - - 0x01845E 06:A44E: 60        RTS
bra_A44F:
C - - - - - 0x01845F 06:A44F: EE 34 05  INC ram_0534_t01_map_movement_handler_index ; -> con_0534_02
C - - - - - 0x018462 06:A452: 60        RTS



ofs_024_map_movement_A453_02:
; con_0534_02
C - - J - - 0x018463 06:A453: AD 51 05  LDA ram_0551_t01
C - - - - - 0x018466 06:A456: 30 49     BMI bra_A4A1
C - - - - - 0x018468 06:A458: 20 92 A7  JSR sub_A792
C - - - - - 0x01846B 06:A45B: B0 29     BCS bra_A486
C - - - - - 0x01846D 06:A45D: AD 37 05  LDA ram_0537_t01
C - - - - - 0x018470 06:A460: 30 03     BMI bra_A465
C - - - - - 0x018472 06:A462: 20 D3 A7  JSR sub_A7D3
bra_A465:
C - - - - - 0x018475 06:A465: 20 82 A8  JSR sub_A882
bra_A468:
C - - - - - 0x018478 06:A468: AD 37 05  LDA ram_0537_t01
C - - - - - 0x01847B 06:A46B: 30 18     BMI bra_A485_RTS
C - - - - - 0x01847D 06:A46D: A5 36     LDA ram_buttons
C - - - - - 0x01847F 06:A46F: C5 38     CMP ram_prev_buttons
C - - - - - 0x018481 06:A471: F0 12     BEQ bra_A485_RTS
C - - - - - 0x018483 06:A473: C9 80     CMP #con_btn_A
C - - - - - 0x018485 06:A475: F0 04     BEQ bra_A47B
C - - - - - 0x018487 06:A477: C9 10     CMP #con_btn_Start
C - - - - - 0x018489 06:A479: D0 0A     BNE bra_A485_RTS
bra_A47B:
; confirm map location and move to it
C - - - - - 0x01848B 06:A47B: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x01848D 06:A47D: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01848F 06:A47F: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x018492 06:A482: EE 34 05  INC ram_0534_t01_map_movement_handler_index ; -> con_0534_03
bra_A485_RTS:
C - - - - - 0x018495 06:A485: 60        RTS
bra_A486:
C - - - - - 0x018496 06:A486: A9 97     LDA #$17 + $80
C - - - - - 0x018498 06:A488: 8D 37 05  STA ram_0537_t01
C - - - - - 0x01849B 06:A48B: A9 80     LDA #$80
C - - - - - 0x01849D 06:A48D: 8D 51 05  STA ram_0551_t01
C - - - - - 0x0184A0 06:A490: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x0184A2 06:A492: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x0184A4 06:A494: A9 00     LDA #$00
C - - - - - 0x0184A6 06:A496: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x0184A9 06:A499: 8D 44 05  STA ram_0544_t01_data_index
C - - - - - 0x0184AC 06:A49C: 8D 3F 04  STA ram_043A_obj_flags + $05
C - - - - - 0x0184AF 06:A49F: F0 C7     BEQ bra_A468    ; jmp
bra_A4A1:
C - - - - - 0x0184B1 06:A4A1: AD 37 05  LDA ram_0537_t01
C - - - - - 0x0184B4 06:A4A4: 30 BF     BMI bra_A465
C - - - - - 0x0184B6 06:A4A6: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x0184B8 06:A4A8: 8D 4E 05  STA ram_054E_t01_prev_obj_index
C - - - - - 0x0184BB 06:A4AB: A9 00     LDA #con_0534_00
C - - - - - 0x0184BD 06:A4AD: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
                                       ;LDA #$00
C - - - - - 0x0184C0 06:A4B0: 8D 51 05  STA ram_0551_t01
C - - - - - 0x0184C3 06:A4B3: F0 B3     BEQ bra_A468    ; jmp



ofs_024_map_movement_A4B5_03:
; con_0534_03
C - - J - - 0x0184C5 06:A4B5: 20 07 A9  JSR sub_A907
C - - - - - 0x0184C8 06:A4B8: 20 84 A9  JSR sub_A984
C - - - - - 0x0184CB 06:A4BB: 20 05 AA  JSR sub_AA05
C - - - - - 0x0184CE 06:A4BE: B0 17     BCS bra_A4D7
C - - - - - 0x0184D0 06:A4C0: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x0184D3 06:A4C3: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x0184D6 06:A4C6: 29 C0     AND #$80 + con_enemy_id_40
C - - - - - 0x0184D8 06:A4C8: F0 15     BEQ bra_A4DF_RTS
C - - - - - 0x0184DA 06:A4CA: 20 D8 A9  JSR sub_A9D8
C - - - - - 0x0184DD 06:A4CD: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x0184E0 06:A4D0: BD D4 05  LDA ram_05D4_plr_flags,X
C - - - - - 0x0184E3 06:A4D3: 29 20     AND #con_05D4_20
C - - - - - 0x0184E5 06:A4D5: D0 09     BNE bra_A4E0
bra_A4D7:
C - - - - - 0x0184E7 06:A4D7: EE 34 05  INC ram_0534_t01_map_movement_handler_index ; -> con_0534_04
C - - - - - 0x0184EA 06:A4DA: A9 40     LDA #$40
C - - - - - 0x0184EC 06:A4DC: 8D 5E 05  STA ram_055E_t01_counter
bra_A4DF_RTS:
C - - - - - 0x0184EF 06:A4DF: 60        RTS
bra_A4E0:
C - - - - - 0x0184F0 06:A4E0: A9 96     LDA #$16 + $80
C - - - - - 0x0184F2 06:A4E2: 8D 37 05  STA ram_0537_t01
; bzk optimize, useless LDA + STA
C - - - - - 0x0184F5 06:A4E5: A9 80     LDA #$80
C - - - - - 0x0184F7 06:A4E7: 8D 51 05  STA ram_0551_tFF_useless
C - - - - - 0x0184FA 06:A4EA: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x0184FC 06:A4EC: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x0184FE 06:A4EE: A9 00     LDA #$00
C - - - - - 0x018500 06:A4F0: 8D 3F 04  STA ram_043A_obj_flags + $05
C - - - - - 0x018503 06:A4F3: 8D 38 05  STA ram_0538_t01
C - - - - - 0x018506 06:A4F6: 8D 44 05  STA ram_0544_t01_data_index
C - - - - - 0x018509 06:A4F9: A9 05     LDA #con_0534_05
C - - - - - 0x01850B 06:A4FB: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
C - - - - - 0x01850E 06:A4FE: 60        RTS



ofs_024_map_movement_A4FF_04:
; con_0534_04
C - - J - - 0x01850F 06:A4FF: AD 3F 04  LDA ram_043A_obj_flags + $05
C - - - - - 0x018512 06:A502: 10 09     BPL bra_A50D
C - - - - - 0x018514 06:A504: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x018516 06:A506: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x018518 06:A508: A9 00     LDA #$00
C - - - - - 0x01851A 06:A50A: 8D 3F 04  STA ram_043A_obj_flags + $05
bra_A50D:
C - - - - - 0x01851D 06:A50D: CE 5E 05  DEC ram_055E_t01_counter
C - - - - - 0x018520 06:A510: D0 0F     BNE bra_A521
C - - - - - 0x018522 06:A512: 20 73 A6  JSR sub_A673
C - - - - - 0x018525 06:A515: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x018528 06:A518: 30 0A     BMI bra_A524_RTS
; if not con_05DC_has_player_index
C - - - - - 0x01852A 06:A51A: 29 7F     AND #con_05DC_has_player_index ^ $FF
C - - - - - 0x01852C 06:A51C: 09 40     ORA #con_05DC_40
C - - - - - 0x01852E 06:A51E: 8D DC 05  STA ram_05DC_flags
bra_A521:
; bzk optimize, JMP
C - - - - - 0x018531 06:A521: 20 82 A8  JSR sub_A882
bra_A524_RTS:
C - - - - - 0x018534 06:A524: 60        RTS



ofs_024_map_movement_A525_05:
; con_0534_05
C - - J - - 0x018535 06:A525: AD 37 05  LDA ram_0537_t01
C - - - - - 0x018538 06:A528: 30 15     BMI bra_A53F
C - - - - - 0x01853A 06:A52A: AD 38 05  LDA ram_0538_t01
C - - - - - 0x01853D 06:A52D: 10 03     BPL bra_A532
C - - - - - 0x01853F 06:A52F: 4C B7 A5  JMP loc_A5B7
bra_A532:
C - - - - - 0x018542 06:A532: A9 80     LDA #$80
C - - - - - 0x018544 06:A534: 8D 38 05  STA ram_0538_t01
C - - - - - 0x018547 06:A537: A9 00     LDA #$00
C - - - - - 0x018549 06:A539: 8D 39 05  STA ram_0539_t01
C - - - - - 0x01854C 06:A53C: 20 30 A6  JSR sub_A630
bra_A53F:
loc_A53F:
C D 1 - - - 0x01854F 06:A53F: 20 82 A8  JSR sub_A882
C - - - - - 0x018552 06:A542: AD 37 05  LDA ram_0537_t01
C - - - - - 0x018555 06:A545: 30 6F     BMI bra_A5B6_RTS
C - - - - - 0x018557 06:A547: A5 02     LDA ram_buffers_flags
C - - - - - 0x018559 06:A549: D0 6B     BNE bra_A5B6_RTS
C - - - - - 0x01855B 06:A54B: A5 36     LDA ram_buttons
C - - - - - 0x01855D 06:A54D: C5 38     CMP ram_prev_buttons
C - - - - - 0x01855F 06:A54F: F0 65     BEQ bra_A5B6_RTS
C - - - - - 0x018561 06:A551: C9 80     CMP #con_btn_A
C - - - - - 0x018563 06:A553: F0 04     BEQ bra_A559
C - - - - - 0x018565 06:A555: C9 10     CMP #con_btn_Start
C - - - - - 0x018567 06:A557: D0 5D     BNE bra_A5B6_RTS
bra_A559:
C - - - - - 0x018569 06:A559: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x01856B 06:A55B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01856D 06:A55D: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x018570 06:A560: A9 02     LDA #$02
C - - - - - 0x018572 06:A562: 20 30 A6  JSR sub_A630
C - - - - - 0x018575 06:A565: AD 39 05  LDA ram_0539_t01
C - - - - - 0x018578 06:A568: D0 1F     BNE bra_A589
C - - - - - 0x01857A 06:A56A: 20 0D A6  JSR sub_A60D
; 
C - - - - - 0x01857D 06:A56D: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x018580 06:A570: BD 4A 04  LDA ram_obj_id,X
; A = 8A 
C - - - - - 0x018583 06:A573: 29 0F     AND #$0F
C - - - - - 0x018585 06:A575: 9D 4A 04  STA ram_obj_id,X
; 
C - - - - - 0x018588 06:A578: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x01858A 06:A57A: 8D 4E 05  STA ram_054E_t01_prev_obj_index
C - - - - - 0x01858D 06:A57D: A9 80     LDA #$80
C - - - - - 0x01858F 06:A57F: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x018592 06:A582: A9 00     LDA #$00
C - - - - - 0x018594 06:A584: 8D 51 05  STA ram_0551_t01
                                       ;LDA #con_0534_00
C - - - - - 0x018597 06:A587: F0 2A     BEQ bra_A5B3    ; jmp
bra_A589:
C - - - - - 0x018599 06:A589: A9 00     LDA #$00
C - - - - - 0x01859B 06:A58B: 8D 44 05  STA ram_0544_t01_data_index
C - - - - - 0x01859E 06:A58E: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x0185A1 06:A591: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x0185A4 06:A594: 9D DA 05  STA ram_05DA_plr,X
C - - - - - 0x0185A7 06:A597: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x0185AA 06:A59A: 29 40     AND #con_05D4_40
C - - - - - 0x0185AC 06:A59C: F0 06     BEQ bra_A5A4
C - - - - - 0x0185AE 06:A59E: AD D6 05  LDA ram_05D6_plr
C - - - - - 0x0185B1 06:A5A1: 8D DA 05  STA ram_05DA_plr
bra_A5A4:
C - - - - - 0x0185B4 06:A5A4: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x0185B7 06:A5A7: 09 80     ORA #$80
C - - - - - 0x0185B9 06:A5A9: 8D 37 05  STA ram_0537_t01
C - - - - - 0x0185BC 06:A5AC: A9 40     LDA #$40
C - - - - - 0x0185BE 06:A5AE: 8D 5E 05  STA ram_055E_t01_counter
C - - - - - 0x0185C1 06:A5B1: A9 04     LDA #con_0534_04
bra_A5B3:
C - - - - - 0x0185C3 06:A5B3: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
bra_A5B6_RTS:
C - - - - - 0x0185C6 06:A5B6: 60        RTS



loc_A5B7:
C D 1 - - - 0x0185C7 06:A5B7: A5 36     LDA ram_buttons
C - - - - - 0x0185C9 06:A5B9: C5 38     CMP ram_prev_buttons
C - - - - - 0x0185CB 06:A5BB: F0 82     BEQ bra_A53F
C - - - - - 0x0185CD 06:A5BD: 29 03     AND #con_btns_LR
C - - - - - 0x0185CF 06:A5BF: F0 0A     BEQ bra_A5CB
C - - - - - 0x0185D1 06:A5C1: AA        TAX
C - - - - - 0x0185D2 06:A5C2: BD CE A5  LDA tbl_A5CF - $01,X
C - - - - - 0x0185D5 06:A5C5: 8D 39 05  STA ram_0539_t01
C - - - - - 0x0185D8 06:A5C8: 20 30 A6  JSR sub_A630
bra_A5CB:
C - - - - - 0x0185DB 06:A5CB: 4C 3F A5  JMP loc_A53F


; bzk garbage
- - - - - - 0x0185DE 06:A5CE: 00        .byte $00   ; 



tbl_A5CF:
- D 1 - - - 0x0185DF 06:A5CF: 01        .byte $01   ; 01 right
- - - - - - 0x0185E0 06:A5D0: 00        .byte $00   ; 02 left
; bzk garbage
- - - - - - 0x0185E1 06:A5D1: 00        .byte $00   ; 03 right + left (not possible)



ofs_024_map_movement_A5D2_06:
; con_0534_06
C - - J - - 0x0185E2 06:A5D2: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x0185E5 06:A5D5: 29 40     AND #$40
C - - - - - 0x0185E7 06:A5D7: D0 1C     BNE bra_A5F5
C - - - - - 0x0185E9 06:A5D9: A9 00     LDA #$00
C - - - - - 0x0185EB 06:A5DB: 8D 41 05  STA ram_0541_t01_plr_index
C - - - - - 0x0185EE 06:A5DE: 8D 5C 05  STA ram_055C_t01_plr_index
C - - - - - 0x0185F1 06:A5E1: A9 01     LDA #$01
C - - - - - 0x0185F3 06:A5E3: 8D 5B 05  STA ram_055B_obj_anim_counter
C - - - - - 0x0185F6 06:A5E6: 20 36 A7  JSR sub_A736
C - - - - - 0x0185F9 06:A5E9: 20 71 A8  JSR sub_A871
C - - - - - 0x0185FC 06:A5EC: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x0185FF 06:A5EF: 09 40     ORA #$40
C - - - - - 0x018601 06:A5F1: 8D D9 04  STA ram_04D9_obj
bra_A5F4_RTS:
C - - - - - 0x018604 06:A5F4: 60        RTS
bra_A5F5:
C - - - - - 0x018605 06:A5F5: 20 82 A8  JSR sub_A882
C - - - - - 0x018608 06:A5F8: AD 37 05  LDA ram_0537_t01
C - - - - - 0x01860B 06:A5FB: 30 F7     BMI bra_A5F4_RTS
C - - - - - 0x01860D 06:A5FD: A9 16     LDA #$16
C - - - - - 0x01860F 06:A5FF: 8D F3 04  STA ram_04F3_obj
C - - - - - 0x018612 06:A602: A9 22     LDA #$22
C - - - - - 0x018614 06:A604: 8D 6C 05  STA ram_056C_obj
C - - - - - 0x018617 06:A607: A9 03     LDA #con_0534_03
C - - - - - 0x018619 06:A609: 8D 34 05  STA ram_0534_t01_map_movement_handler_index
C - - - - - 0x01861C 06:A60C: 60        RTS



sub_A60D:
C - - - - - 0x01861D 06:A60D: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x018620 06:A610: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x018623 06:A613: 9D DA 05  STA ram_05DA_plr,X
C - - - - - 0x018626 06:A616: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x018629 06:A619: 9D D6 05  STA ram_05D6_plr,X
C - - - - - 0x01862C 06:A61C: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01862F 06:A61F: 29 40     AND #con_05D4_40
C - - - - - 0x018631 06:A621: F0 0C     BEQ bra_A62F_RTS
C - - - - - 0x018633 06:A623: AD D6 05  LDA ram_05D6_plr
C - - - - - 0x018636 06:A626: 8D D7 05  STA ram_05D6_plr + $01
C - - - - - 0x018639 06:A629: AD DA 05  LDA ram_05DA_plr
C - - - - - 0x01863C 06:A62C: 8D DB 05  STA ram_05DA_plr + $01
bra_A62F_RTS:
C - - - - - 0x01863F 06:A62F: 60        RTS



sub_A630:
; in
    ; A = 
C - - - - - 0x018640 06:A630: 85 67     STA ram_0067_t4E_table_index
C - - - - - 0x018642 06:A632: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018644 06:A634: 48        PHA
C - - - - - 0x018645 06:A635: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018647 06:A637: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018649 06:A639: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01864C 06:A63C: A5 67     LDA ram_0067_t4E_table_index
C - - - - - 0x01864E 06:A63E: 0A        ASL
C - - - - - 0x01864F 06:A63F: AA        TAX
C - - - - - 0x018650 06:A640: BD 73 9A  LDA tbl_0x00BA83,X
C - - - - - 0x018653 06:A643: 85 5B     STA ram_005B_t3D_ppu_data
C - - - - - 0x018655 06:A645: BD 74 9A  LDA tbl_0x00BA83 + $01,X
C - - - - - 0x018658 06:A648: 85 5C     STA ram_005B_t3D_ppu_data + $01
C - - - - - 0x01865A 06:A64A: A0 00     LDY #$00
C - - - - - 0x01865C 06:A64C: A2 00     LDX #$00
bra_A64E_loop:
C - - - - - 0x01865E 06:A64E: A9 23     LDA #$23
C - - - - - 0x018660 06:A650: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x018663 06:A653: B1 5B     LDA (ram_005B_t3D_ppu_data),Y
C - - - - - 0x018665 06:A655: C8        INY
C - - - - - 0x018666 06:A656: E8        INX
C - - - - - 0x018667 06:A657: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01866A 06:A65A: B1 5B     LDA (ram_005B_t3D_ppu_data),Y
C - - - - - 0x01866C 06:A65C: C8        INY
C - - - - - 0x01866D 06:A65D: E8        INX
C - - - - - 0x01866E 06:A65E: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x018671 06:A661: E8        INX
C - - - - - 0x018672 06:A662: C0 18     CPY #$18
C - - - - - 0x018674 06:A664: 90 E8     BCC bra_A64E_loop
C - - - - - 0x018676 06:A666: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x018678 06:A668: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x01867A 06:A66A: 85 02     STA ram_buffers_flags
C - - - - - 0x01867C 06:A66C: 68        PLA
C - - - - - 0x01867D 06:A66D: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01867F 06:A66F: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018682 06:A672: 60        RTS



sub_A673:
C - - - - - 0x018683 06:A673: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018685 06:A675: 48        PHA
C - - - - - 0x018686 06:A676: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018688 06:A678: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01868A 06:A67A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01868D 06:A67D: 20 30 9E  JSR sub_0x00BE40
C - - - - - 0x018690 06:A680: 68        PLA
C - - - - - 0x018691 06:A681: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018693 06:A683: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018696 06:A686: 60        RTS



sub_A687:
C - - - - - 0x018697 06:A687: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x01869A 06:A68A: 30 2F     BMI bra_A6BB
C - - - - - 0x01869C 06:A68C: A9 80     LDA #$80
C - - - - - 0x01869E 06:A68E: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x0186A1 06:A691: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x0186A4 06:A694: 10 04     BPL bra_A69A
; if con_05DC_has_player_index
C - - - - - 0x0186A6 06:A696: 29 01     AND #con_05DC_player_index
C - - - - - 0x0186A8 06:A698: D0 05     BNE bra_A69F_hawk
; if captain
bra_A69A:
C - - - - - 0x0186AA 06:A69A: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x0186AD 06:A69D: 30 0F     BMI bra_A6AE    ; if con_05D4_80
bra_A69F_hawk:
C - - - - - 0x0186AF 06:A69F: A9 01     LDA #$01
C - - - - - 0x0186B1 06:A6A1: 8D 41 05  STA ram_0541_t01_plr_index
C - - - - - 0x0186B4 06:A6A4: 8D 5C 05  STA ram_055C_t01_plr_index
C - - - - - 0x0186B7 06:A6A7: A9 00     LDA #$00
C - - - - - 0x0186B9 06:A6A9: 8D 5B 05  STA ram_055B_obj_anim_counter
C - - - - - 0x0186BC 06:A6AC: F0 0D     BEQ bra_A6BB    ; jmp
bra_A6AE:
C - - - - - 0x0186BE 06:A6AE: A9 00     LDA #$00
C - - - - - 0x0186C0 06:A6B0: 8D 41 05  STA ram_0541_t01_plr_index
C - - - - - 0x0186C3 06:A6B3: 8D 5C 05  STA ram_055C_t01_plr_index
C - - - - - 0x0186C6 06:A6B6: A9 01     LDA #$01
C - - - - - 0x0186C8 06:A6B8: 8D 5B 05  STA ram_055B_obj_anim_counter
bra_A6BB:
C - - - - - 0x0186CB 06:A6BB: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x0186CE 06:A6BE: 10 08     BPL bra_A6C8
; if con_05DC_has_player_index
C - - - - - 0x0186D0 06:A6C0: 29 01     AND #con_05DC_player_index
C - - - - - 0x0186D2 06:A6C2: 8D 41 05  STA ram_0541_t01_plr_index
C - - - - - 0x0186D5 06:A6C5: 4C 0C A7  JMP loc_A70C
bra_A6C8:
C - - - - - 0x0186D8 06:A6C8: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x0186DB 06:A6CB: 10 3F     BPL bra_A70C    ; if not con_05D4_80
C - - - - - 0x0186DD 06:A6CD: 29 40     AND #con_05D4_40
C - - - - - 0x0186DF 06:A6CF: D0 3B     BNE bra_A70C
C - - - - - 0x0186E1 06:A6D1: AD D5 05  LDA ram_05D4_plr_flags + $01
C - - - - - 0x0186E4 06:A6D4: 10 36     BPL bra_A70C    ; if not con_05D4_80
C - - - - - 0x0186E6 06:A6D6: A5 36     LDA ram_buttons
C - - - - - 0x0186E8 06:A6D8: C5 38     CMP ram_prev_buttons
C - - - - - 0x0186EA 06:A6DA: F0 1D     BEQ bra_A6F9
C - - - - - 0x0186EC 06:A6DC: 29 03     AND #con_btns_LR
C - - - - - 0x0186EE 06:A6DE: F0 19     BEQ bra_A6F9
; select player on map
C - - - - - 0x0186F0 06:A6E0: A9 13     LDA #con_sfx_move_cursor
C - - - - - 0x0186F2 06:A6E2: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0186F4 06:A6E4: 20 AD FF  JSR sub_0x01FFBD_play_sound
; swap player index
C - - - - - 0x0186F7 06:A6E7: AD 41 05  LDA ram_0541_t01_plr_index
C - - - - - 0x0186FA 06:A6EA: 49 01     EOR #$01
C - - - - - 0x0186FC 06:A6EC: 8D 41 05  STA ram_0541_t01_plr_index
; 
C - - - - - 0x0186FF 06:A6EF: 49 01     EOR #$01
C - - - - - 0x018701 06:A6F1: 8D 5B 05  STA ram_055B_obj_anim_counter
; bzk optimize, remove EOR, move STA after 0x0186FC
C - - - - - 0x018704 06:A6F4: 49 01     EOR #$01
C - - - - - 0x018706 06:A6F6: 8D 5C 05  STA ram_055C_t01_plr_index
bra_A6F9:
C - - - - - 0x018709 06:A6F9: AD 41 05  LDA ram_0541_t01_plr_index
C - - - - - 0x01870C 06:A6FC: CD 4E 05  CMP ram_054E_t01_prev_obj_index
C - - - - - 0x01870F 06:A6FF: F0 34     BEQ bra_A735_RTS
; save current flags
C - - - - - 0x018711 06:A701: 8D 4E 05  STA ram_054E_t01_prev_obj_index
; 
C - - - - - 0x018714 06:A704: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x018717 06:A707: 29 BF     AND #$BF
C - - - - - 0x018719 06:A709: 8D D9 04  STA ram_04D9_obj
bra_A70C:
loc_A70C:
C D 1 - - - 0x01871C 06:A70C: 20 36 A7  JSR sub_A736
C - - - - - 0x01871F 06:A70F: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x018722 06:A712: 29 40     AND #$40
C - - - - - 0x018724 06:A714: D0 1F     BNE bra_A735_RTS
C - - - - - 0x018726 06:A716: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x018729 06:A719: 09 40     ORA #$40
C - - - - - 0x01872B 06:A71B: 8D D9 04  STA ram_04D9_obj
C - - - - - 0x01872E 06:A71E: A9 00     LDA #$00
C - - - - - 0x018730 06:A720: 8D 44 05  STA ram_0544_t01_data_index
C - - - - - 0x018733 06:A723: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x018736 06:A726: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x018739 06:A729: 29 7F     AND #$7F
C - - - - - 0x01873B 06:A72B: 09 80     ORA #$80
C - - - - - 0x01873D 06:A72D: 8D 37 05  STA ram_0537_t01
C - - - - - 0x018740 06:A730: A9 40     LDA #$40
C - - - - - 0x018742 06:A732: 8D 5E 05  STA ram_055E_t02_counter
bra_A735_RTS:
C - - - - - 0x018745 06:A735: 60        RTS



sub_A736:
C - - - - - 0x018746 06:A736: AD 5B 05  LDA ram_055B_obj_anim_counter
C - - - - - 0x018749 06:A739: 30 3E     BMI bra_A779_RTS
C - - - - - 0x01874B 06:A73B: 09 80     ORA #$80
C - - - - - 0x01874D 06:A73D: 8D 5B 05  STA ram_055B_obj_anim_counter
C - - - - - 0x018750 06:A740: AD 5B 05  LDA ram_055B_obj_anim_counter
C - - - - - 0x018753 06:A743: 29 0F     AND #$0F
C - - - - - 0x018755 06:A745: 85 68     STA ram_0068_t23
C - - - - - 0x018757 06:A747: AD 4A 04  LDA ram_obj_id
C - - - - - 0x01875A 06:A74A: 0A        ASL
C - - - - - 0x01875B 06:A74B: 18        CLC
C - - - - - 0x01875C 06:A74C: 65 68     ADC ram_0068_t23
C - - - - - 0x01875E 06:A74E: AA        TAX
C - - - - - 0x01875F 06:A74F: BD 7A A7  LDA tbl_A77A_swap_icon_id,X
C - - - - - 0x018762 06:A752: 85 67     STA ram_0067_t40_icon_id
C - - - - - 0x018764 06:A754: A2 00     LDX #$00
C - - - - - 0x018766 06:A756: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x018769 06:A759: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x01876C 06:A75C: 29 40     AND #con_05D4_40
C - - - - - 0x01876E 06:A75E: D0 19     BNE bra_A779_RTS
; bzk optimize, remove LDA + AND + STA, replace 0068 with 055C at 0x01877C
C - - - - - 0x018770 06:A760: AD 5C 05  LDA ram_055C_t01_plr_index
; A = 00 01 
C - - - - - 0x018773 06:A763: 29 0F     AND #$0F
C - - - - - 0x018775 06:A765: 85 68     STA ram_0068_t62_plr_index
C - - - - - 0x018777 06:A767: AD 4B 04  LDA ram_obj_id + $01
C - - - - - 0x01877A 06:A76A: 0A        ASL
C - - - - - 0x01877B 06:A76B: 18        CLC
C - - - - - 0x01877C 06:A76C: 65 68     ADC ram_0068_t62_plr_index
C - - - - - 0x01877E 06:A76E: AA        TAX
C - - - - - 0x01877F 06:A76F: BD 7A A7  LDA tbl_A77A_swap_icon_id,X
C - - - - - 0x018782 06:A772: 85 67     STA ram_0067_t40_icon_id
C - - - - - 0x018784 06:A774: A2 01     LDX #$01
; bzk optimize, JMP
C - - - - - 0x018786 06:A776: 20 A3 A1  JSR sub_A1A3
bra_A779_RTS:
C - - - - - 0x018789 06:A779: 60        RTS



tbl_A77A_swap_icon_id:
; 00 con_icon_id_captain_idle
- - - - - - 0x01878A 06:A77A: 00        .byte con_icon_id_captain_idle   ; 
- D 1 - - - 0x01878B 06:A77B: 08        .byte con_icon_id_captain_selected   ; 
; 01 con_icon_id_captain_grey
- D 1 - - - 0x01878C 06:A77C: 01        .byte con_icon_id_captain_grey   ; 
- - - - - - 0x01878D 06:A77D: 01        .byte con_icon_id_captain_grey   ; 
; 02 con_icon_id_hawk_idle
- D 1 - - - 0x01878E 06:A77E: 02        .byte con_icon_id_hawk_idle   ; 
- D 1 - - - 0x01878F 06:A77F: 09        .byte con_icon_id_hawk_selected   ; 
; 03 con_icon_id_hawk_grey
- D 1 - - - 0x018790 06:A780: 03        .byte con_icon_id_hawk_grey   ; 
- - - - - - 0x018791 06:A781: 03        .byte con_icon_id_hawk_grey   ; 
; 04 con_icon_id_avengers
- - - - - - 0x018792 06:A782: 04        .byte con_icon_id_avengers   ; 
- D 1 - - - 0x018793 06:A783: 04        .byte con_icon_id_avengers   ; 
; 05 con_icon_id_rocket_idle
- D 1 - - - 0x018794 06:A784: 05        .byte con_icon_id_rocket_idle   ; 
- D 1 - - - 0x018795 06:A785: 0A        .byte con_icon_id_rocket_selected   ; 
; 06 con_icon_id_red_alert
- - - - - - 0x018796 06:A786: 06        .byte con_icon_id_red_alert   ; 
- - - - - - 0x018797 06:A787: 06        .byte con_icon_id_red_alert   ; 
; 07 con_icon_id_circle
- - - - - - 0x018798 06:A788: 07        .byte con_icon_id_circle   ; 
- - - - - - 0x018799 06:A789: 07        .byte con_icon_id_circle   ; 
; 08 con_icon_id_captain_selected
- D 1 - - - 0x01879A 06:A78A: 00        .byte con_icon_id_captain_idle   ; 
- D 1 - - - 0x01879B 06:A78B: 08        .byte con_icon_id_captain_selected   ; 
; 09 con_icon_id_hawk_selected
- - - - - - 0x01879C 06:A78C: 02        .byte con_icon_id_hawk_idle   ; 
- - - - - - 0x01879D 06:A78D: 09        .byte con_icon_id_hawk_selected   ; 
; 0A con_icon_id_rocket_selected
- D 1 - - - 0x01879E 06:A78E: 05        .byte con_icon_id_rocket_idle   ; 
- - - - - - 0x01879F 06:A78F: 0A        .byte con_icon_id_rocket_selected   ; 
; 0B con_icon_id_rocked_big
- - - - - - 0x0187A0 06:A790: 0B        .byte con_icon_id_rocked_big   ; 
- D 1 - - - 0x0187A1 06:A791: 0B        .byte con_icon_id_rocked_big   ; 



sub_A792:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0187A2 06:A792: A5 36     LDA ram_buttons
C - - - - - 0x0187A4 06:A794: C5 38     CMP ram_prev_buttons
C - - - - - 0x0187A6 06:A796: F0 06     BEQ bra_A79E
C - - - - - 0x0187A8 06:A798: C9 40     CMP #con_btn_B
C - - - - - 0x0187AA 06:A79A: D0 02     BNE bra_A79E
C - - - - - 0x0187AC 06:A79C: 38        SEC
C - - - - - 0x0187AD 06:A79D: 60        RTS
bra_A79E:
C - - - - - 0x0187AE 06:A79E: 18        CLC
C - - - - - 0x0187AF 06:A79F: 60        RTS



sub_A7A0:
C - - - - - 0x0187B0 06:A7A0: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0187B2 06:A7A2: 48        PHA
C - - - - - 0x0187B3 06:A7A3: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x0187B5 06:A7A5: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0187B7 06:A7A7: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0187BA 06:A7AA: 20 33 9E  JSR sub_0x00BE43
C - - - - - 0x0187BD 06:A7AD: 68        PLA
C - - - - - 0x0187BE 06:A7AE: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0187C0 06:A7B0: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0187C3 06:A7B3: A9 07     LDA #con_icon_id_circle
C - - - - - 0x0187C5 06:A7B5: 85 67     STA ram_0067_t40_icon_id
C - - - - - 0x0187C7 06:A7B7: A2 02     LDX #$02
C - - - - - 0x0187C9 06:A7B9: 20 A3 A1  JSR sub_A1A3
C - - - - - 0x0187CC 06:A7BC: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x0187CF 06:A7BF: 29 40     AND #con_05D4_40
C - - - - - 0x0187D1 06:A7C1: F0 06     BEQ bra_A7C9
C - - - - - 0x0187D3 06:A7C3: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x0187D6 06:A7C6: 8D D9 05  STA ram_05D8_plr + $01
bra_A7C9:
; enable object
C - - - - - 0x0187D9 06:A7C9: A9 80     LDA #$80
C - - - - - 0x0187DB 06:A7CB: 8D 3F 04  STA ram_043A_obj_flags + $05
; 
C - - - - - 0x0187DE 06:A7CE: E6 CA     INC ram_00CA_objects_counter
C - - - - - 0x0187E0 06:A7D0: E6 CE     INC ram_all_objects_counter
C - - - - - 0x0187E2 06:A7D2: 60        RTS



sub_A7D3:
C - - - - - 0x0187E3 06:A7D3: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0187E5 06:A7D5: 48        PHA
C - - - - - 0x0187E6 06:A7D6: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x0187E8 06:A7D8: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0187EA 06:A7DA: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0187ED 06:A7DD: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x0187F0 06:A7E0: BD D6 05  LDA ram_05D6_plr,X
C - - - - - 0x0187F3 06:A7E3: 29 7F     AND #$7F
C - - - - - 0x0187F5 06:A7E5: AA        TAX
C - - - - - 0x0187F6 06:A7E6: BD 5B A8  LDA tbl_A85B,X
C - - - - - 0x0187F9 06:A7E9: D0 03     BNE bra_A7EE
C - - - - - 0x0187FB 06:A7EB: 4C 41 A8  JMP loc_A841
bra_A7EE:
C - - - - - 0x0187FE 06:A7EE: 8D 36 05  STA ram_0536_t01
C - - - - - 0x018801 06:A7F1: E0 0A     CPX #$0A
C - - - - - 0x018803 06:A7F3: F0 04     BEQ bra_A7F9
C - - - - - 0x018805 06:A7F5: E0 14     CPX #$14
C - - - - - 0x018807 06:A7F7: D0 0A     BNE bra_A803
bra_A7F9:
C - - - - - 0x018809 06:A7F9: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x01880C 06:A7FC: 29 08     AND #con_05E1_08
C - - - - - 0x01880E 06:A7FE: D0 03     BNE bra_A803
C - - - - - 0x018810 06:A800: CE 36 05  DEC ram_0536_t01
bra_A803:
C - - - - - 0x018813 06:A803: A5 36     LDA ram_buttons
C - - - - - 0x018815 06:A805: C5 38     CMP ram_prev_buttons
C - - - - - 0x018817 06:A807: D0 03     BNE bra_A80C
bra_A809:
C - - - - - 0x018819 06:A809: 4C 41 A8  JMP loc_A841
bra_A80C:
C - - - - - 0x01881C 06:A80C: C9 02     CMP #$02
C - - - - - 0x01881E 06:A80E: F0 16     BEQ bra_A826
C - - - - - 0x018820 06:A810: C9 01     CMP #$01
C - - - - - 0x018822 06:A812: D0 F5     BNE bra_A809
C - - - - - 0x018824 06:A814: EE 43 05  INC ram_0541_obj_flags + $02
C - - - - - 0x018827 06:A817: AD 43 05  LDA ram_0541_obj_flags + $02
C - - - - - 0x01882A 06:A81A: CD 36 05  CMP ram_0536_t01
C - - - - - 0x01882D 06:A81D: 90 15     BCC bra_A834
C - - - - - 0x01882F 06:A81F: A9 00     LDA #$00
C - - - - - 0x018831 06:A821: 8D 43 05  STA ram_0541_obj_flags + $02
C - - - - - 0x018834 06:A824: F0 0E     BEQ bra_A834    ; jmp
bra_A826:
C - - - - - 0x018836 06:A826: CE 43 05  DEC ram_0541_obj_flags + $02
C - - - - - 0x018839 06:A829: 10 09     BPL bra_A834
C - - - - - 0x01883B 06:A82B: AD 36 05  LDA ram_0536_t01
C - - - - - 0x01883E 06:A82E: 38        SEC
C - - - - - 0x01883F 06:A82F: E9 01     SBC #$01
C - - - - - 0x018841 06:A831: 8D 43 05  STA ram_0541_obj_flags + $02
bra_A834:
C - - - - - 0x018844 06:A834: 20 36 9E  JSR sub_0x00BE46
C - - - - - 0x018847 06:A837: A9 13     LDA #con_sfx_move_cursor
C - - - - - 0x018849 06:A839: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01884B 06:A83B: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01884E 06:A83E: 20 71 A8  JSR sub_A871
loc_A841:
C D 1 - - - 0x018851 06:A841: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x018854 06:A844: 29 40     AND #con_05D4_40
C - - - - - 0x018856 06:A846: F0 0C     BEQ bra_A854
C - - - - - 0x018858 06:A848: AD D8 05  LDA ram_05D8_plr
C - - - - - 0x01885B 06:A84B: 8D D9 05  STA ram_05D8_plr + $01
C - - - - - 0x01885E 06:A84E: AD DA 05  LDA ram_05DA_plr
C - - - - - 0x018861 06:A851: 8D DB 05  STA ram_05DA_plr + $01
bra_A854:
C - - - - - 0x018864 06:A854: 68        PLA
C - - - - - 0x018865 06:A855: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018867 06:A857: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01886A 06:A85A: 60        RTS



tbl_A85B:
- D 1 - - - 0x01886B 06:A85B: 00        .byte $00   ; 00 
- D 1 - - - 0x01886C 06:A85C: 03        .byte $03   ; 01 
- D 1 - - - 0x01886D 06:A85D: 00        .byte $00   ; 02 
- D 1 - - - 0x01886E 06:A85E: 03        .byte $03   ; 03 
- D 1 - - - 0x01886F 06:A85F: 03        .byte $03   ; 04 
- D 1 - - - 0x018870 06:A860: 03        .byte $03   ; 05 
- D 1 - - - 0x018871 06:A861: 03        .byte $03   ; 06 
- D 1 - - - 0x018872 06:A862: 04        .byte $04   ; 07 
- D 1 - - - 0x018873 06:A863: 03        .byte $03   ; 08 
- D 1 - - - 0x018874 06:A864: 03        .byte $03   ; 09 
- D 1 - - - 0x018875 06:A865: 03        .byte $03   ; 0A 
- D 1 - - - 0x018876 06:A866: 00        .byte $00   ; 0B 
- D 1 - - - 0x018877 06:A867: 04        .byte $04   ; 0C 
- D 1 - - - 0x018878 06:A868: 04        .byte $04   ; 0D 
- D 1 - - - 0x018879 06:A869: 00        .byte $00   ; 0E 
- D 1 - - - 0x01887A 06:A86A: 04        .byte $04   ; 0F 
- D 1 - - - 0x01887B 06:A86B: 00        .byte $00   ; 10 
- D 1 - - - 0x01887C 06:A86C: 04        .byte $04   ; 11 
- D 1 - - - 0x01887D 06:A86D: 00        .byte $00   ; 12 
- D 1 - - - 0x01887E 06:A86E: 03        .byte $03   ; 13 
- D 1 - - - 0x01887F 06:A86F: 04        .byte $04   ; 14 
- - - - - - 0x018880 06:A870: 00        .byte $00   ; 15 



sub_A871:
C - - - - - 0x018881 06:A871: A9 00     LDA #$00
C - - - - - 0x018883 06:A873: 8D 44 05  STA ram_0544_t01_data_index
C - - - - - 0x018886 06:A876: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x018889 06:A879: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x01888C 06:A87C: 09 80     ORA #$80
C - - - - - 0x01888E 06:A87E: 8D 37 05  STA ram_0537_t01
C - - - - - 0x018891 06:A881: 60        RTS



sub_A882:
C - - - - - 0x018892 06:A882: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018894 06:A884: 48        PHA
C - - - - - 0x018895 06:A885: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018897 06:A887: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018899 06:A889: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01889C 06:A88C: AD 37 05  LDA ram_0537_t01
C - - - - - 0x01889F 06:A88F: 10 2C     BPL bra_A8BD
C - - - - - 0x0188A1 06:A891: AD 44 05  LDA ram_0544_t01_data_index
C - - - - - 0x0188A4 06:A894: C9 0E     CMP #$0E
C - - - - - 0x0188A6 06:A896: F0 2C     BEQ bra_A8C4
C - - - - - 0x0188A8 06:A898: AD 37 05  LDA ram_0537_t01
C - - - - - 0x0188AB 06:A89B: 29 1F     AND #$1F
C - - - - - 0x0188AD 06:A89D: 0A        ASL
C - - - - - 0x0188AE 06:A89E: AA        TAX
C - - - - - 0x0188AF 06:A89F: BD BD 9B  LDA tbl_0x00BBCD_metatile_id,X
C - - - - - 0x0188B2 06:A8A2: 85 5B     STA ram_005B_t3C_metatile_id_data
C - - - - - 0x0188B4 06:A8A4: BD BE 9B  LDA tbl_0x00BBCD_metatile_id + $01,X
C - - - - - 0x0188B7 06:A8A7: 85 5C     STA ram_005B_t3C_metatile_id_data + $01
C - - - - - 0x0188B9 06:A8A9: AC 44 05  LDY ram_0544_t01_data_index
C - - - - - 0x0188BC 06:A8AC: B1 5B     LDA (ram_005B_t3C_metatile_id_data),Y
C - - - - - 0x0188BE 06:A8AE: 85 67     STA ram_0067_t4F_metatile_table_index
C - - - - - 0x0188C0 06:A8B0: 98        TYA
C - - - - - 0x0188C1 06:A8B1: 0A        ASL
C - - - - - 0x0188C2 06:A8B2: 18        CLC
C - - - - - 0x0188C3 06:A8B3: 69 22     ADC #$22
C - - - - - 0x0188C5 06:A8B5: 85 68     STA ram_0068_t25_ppu_lo
C - - - - - 0x0188C7 06:A8B7: 20 CB A8  JSR sub_A8CB
C - - - - - 0x0188CA 06:A8BA: EE 44 05  INC ram_0544_t01_data_index
bra_A8BD:
C - - - - - 0x0188CD 06:A8BD: 68        PLA
C - - - - - 0x0188CE 06:A8BE: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0188D0 06:A8C0: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0188D3 06:A8C3: 60        RTS
bra_A8C4:
C - - - - - 0x0188D4 06:A8C4: A9 00     LDA #$00
C - - - - - 0x0188D6 06:A8C6: 8D 37 05  STA ram_0537_t01
C - - - - - 0x0188D9 06:A8C9: F0 F2     BEQ bra_A8BD    ; jmp



sub_A8CB:
; in
    ; ram_0067_t4F_metatile_table_index
        ; value = AND FC
    ; ram_0068_t25_ppu_lo
C - - - - - 0x0188DB 06:A8CB: A2 00     LDX #$00
C - - - - - 0x0188DD 06:A8CD: 86 69     STX ram_0069_t20_table_index
C - - - - - 0x0188DF 06:A8CF: A5 68     LDA ram_0068_t25_ppu_lo
C - - - - - 0x0188E1 06:A8D1: 85 6A     STA ram_006A_t15_ppu_lo
bra_A8D3_loop:
C - - - - - 0x0188E3 06:A8D3: A9 23     LDA #$23    ; ppu hi
C - - - - - 0x0188E5 06:A8D5: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0188E8 06:A8D8: A5 6A     LDA ram_006A_t15_ppu_lo
C - - - - - 0x0188EA 06:A8DA: 9D C1 02  STA ram_02C0_ppu_buffer + $01,X
C - - - - - 0x0188ED 06:A8DD: A4 67     LDY ram_0067_t4F_metatile_table_index
C - - - - - 0x0188EF 06:A8DF: B9 59 9B  LDA tbl_0x00BB69_metatiles,Y
C - - - - - 0x0188F2 06:A8E2: 9D C2 02  STA ram_02C0_ppu_buffer + $02,X
C - - - - - 0x0188F5 06:A8E5: E6 67     INC ram_0067_t4F_metatile_table_index
C - - - - - 0x0188F7 06:A8E7: E6 69     INC ram_0069_t20_table_index
C - - - - - 0x0188F9 06:A8E9: A4 69     LDY ram_0069_t20_table_index
C - - - - - 0x0188FB 06:A8EB: B9 03 A9  LDA tbl_A903_metatile_ppu_address_lo_offset,Y
C - - - - - 0x0188FE 06:A8EE: 18        CLC
C - - - - - 0x0188FF 06:A8EF: 65 68     ADC ram_0068_t25_ppu_lo
C - - - - - 0x018901 06:A8F1: 85 6A     STA ram_006A_t15_ppu_lo
C - - - - - 0x018903 06:A8F3: E8        INX
C - - - - - 0x018904 06:A8F4: E8        INX
C - - - - - 0x018905 06:A8F5: E8        INX
C - - - - - 0x018906 06:A8F6: E0 0C     CPX #$0C
C - - - - - 0x018908 06:A8F8: 90 D9     BCC bra_A8D3_loop
C - - - - - 0x01890A 06:A8FA: A9 0C     LDA #$0C
C - - - - - 0x01890C 06:A8FC: 85 0E     STA ram_000E_buffer_index
C - - - - - 0x01890E 06:A8FE: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x018910 06:A900: 85 02     STA ram_buffers_flags
C - - - - - 0x018912 06:A902: 60        RTS



tbl_A903_metatile_ppu_address_lo_offset:
- - - - - - 0x018913 06:A903: 00        .byte $00   ; 00 
- D 1 - - - 0x018914 06:A904: 01        .byte $01   ; 01 
- D 1 - - - 0x018915 06:A905: 20        .byte $20   ; 02 
- D 1 - - - 0x018916 06:A906: 21        .byte $21   ; 03 



sub_A907:
C D 1 - - - 0x018917 06:A907: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018919 06:A909: 48        PHA
C - - - - - 0x01891A 06:A90A: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x01891C 06:A90C: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01891E 06:A90E: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018921 06:A911: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x018924 06:A914: BD F3 04  LDA ram_04F3_obj,X
C - - - - - 0x018927 06:A917: F0 31     BEQ bra_A94A
C - - - - - 0x018929 06:A919: DE F3 04  DEC ram_04F3_obj,X
bra_A91C:
C - - - - - 0x01892C 06:A91C: BD 6C 05  LDA ram_056C_obj,X
; / 10
C - - - - - 0x01892F 06:A91F: 4A        LSR
C - - - - - 0x018930 06:A920: 4A        LSR
C - - - - - 0x018931 06:A921: 4A        LSR
C - - - - - 0x018932 06:A922: 4A        LSR
; 
C - - - - - 0x018933 06:A923: 85 68     STA ram_0068_t08
C - - - - - 0x018935 06:A925: A9 00     LDA #con_0067_t12_00
C - - - - - 0x018937 06:A927: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x018939 06:A929: 20 A7 FF  JSR sub_0x01FFB7
C - - - - - 0x01893C 06:A92C: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x01893F 06:A92F: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x018941 06:A931: 9D 0D 05  STA ram_spd_X_lo_obj,X
C - - - - - 0x018944 06:A934: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x018946 06:A936: 9D 00 05  STA ram_spd_X_fr_obj,X
C - - - - - 0x018949 06:A939: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x01894B 06:A93B: 9D 27 05  STA ram_spd_Y_lo_obj,X
C - - - - - 0x01894E 06:A93E: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x018950 06:A940: 9D 1A 05  STA ram_spd_Y_fr_obj,X
bra_A943:
C - - - - - 0x018953 06:A943: 68        PLA
C - - - - - 0x018954 06:A944: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018956 06:A946: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018959 06:A949: 60        RTS
bra_A94A:
C - - - - - 0x01895A 06:A94A: BD 65 05  LDA ram_0565_obj,X
C - - - - - 0x01895D 06:A94D: 0A        ASL
C - - - - - 0x01895E 06:A94E: A8        TAY
C - - - - - 0x01895F 06:A94F: B9 47 9A  LDA tbl_0x00BA57,Y
C - - - - - 0x018962 06:A952: 85 5F     STA ram_005F_t06_data
C - - - - - 0x018964 06:A954: B9 48 9A  LDA tbl_0x00BA57 + $01,Y
C - - - - - 0x018967 06:A957: 85 60     STA ram_005F_t06_data + $01
C - - - - - 0x018969 06:A959: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x01896C 06:A95C: 29 0F     AND #$0F
C - - - - - 0x01896E 06:A95E: A8        TAY ; 02/04
C - - - - - 0x01896F 06:A95F: B1 5F     LDA (ram_005F_t06_data),Y
C - - - - - 0x018971 06:A961: 30 17     BMI bra_A97A_FF
; A = 06/0C
; * 10
C - - - - - 0x018973 06:A963: 0A        ASL
C - - - - - 0x018974 06:A964: 0A        ASL
C - - - - - 0x018975 06:A965: 0A        ASL
C - - - - - 0x018976 06:A966: 0A        ASL
; A = 60/C0
C - - - - - 0x018977 06:A967: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x01897A 06:A96A: C8        INY
C - - - - - 0x01897B 06:A96B: B1 5F     LDA (ram_005F_t06_data),Y
C - - - - - 0x01897D 06:A96D: 9D F3 04  STA ram_04F3_obj,X
C - - - - - 0x018980 06:A970: C8        INY
C - - - - - 0x018981 06:A971: 98        TYA
C - - - - - 0x018982 06:A972: 1D 6C 05  ORA ram_056C_obj,X
C - - - - - 0x018985 06:A975: 9D 6C 05  STA ram_056C_obj,X
C - - - - - 0x018988 06:A978: D0 A2     BNE bra_A91C    ; jmp?
bra_A97A_FF:
C - - - - - 0x01898A 06:A97A: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x01898D 06:A97D: 09 80     ORA #con_id_flag_80
C - - - - - 0x01898F 06:A97F: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x018992 06:A982: D0 BF     BNE bra_A943    ; jmp



sub_A984:
C - - - - - 0x018994 06:A984: A9 00     LDA #$00
C - - - - - 0x018996 06:A986: 85 67     STA ram_0067_t50_pos_X_hi
C - - - - - 0x018998 06:A988: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x01899B 06:A98B: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x01899E 06:A98E: 10 04     BPL bra_A994
; bzk optimize, DEC
C - - - - - 0x0189A0 06:A990: A9 FF     LDA #$FF
C - - - - - 0x0189A2 06:A992: 85 67     STA ram_0067_t50_pos_X_hi
bra_A994:
C - - - - - 0x0189A4 06:A994: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x0189A7 06:A997: 18        CLC
C - - - - - 0x0189A8 06:A998: 7D 57 04  ADC ram_pos_X_fr_obj,X
C - - - - - 0x0189AB 06:A99B: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x0189AE 06:A99E: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x0189B1 06:A9A1: 7D 64 04  ADC ram_pos_X_lo_obj + $03,X
C - - - - - 0x0189B4 06:A9A4: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0189B7 06:A9A7: A5 67     LDA ram_0067_t50_pos_X_hi
C - - - - - 0x0189B9 06:A9A9: 7D 71 04  ADC ram_pos_X_hi_obj + $03,X
C - - - - - 0x0189BC 06:A9AC: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
; 
C - - - - - 0x0189BF 06:A9AF: A9 00     LDA #$00
C - - - - - 0x0189C1 06:A9B1: 85 67     STA ram_0067_t51_hi
C - - - - - 0x0189C3 06:A9B3: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x0189C6 06:A9B6: 10 04     BPL bra_A9BC
; bzk optimize, DEC
C - - - - - 0x0189C8 06:A9B8: A9 FF     LDA #$FF
C - - - - - 0x0189CA 06:A9BA: 85 67     STA ram_0067_t51_hi
bra_A9BC:
C - - - - - 0x0189CC 06:A9BC: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x0189CF 06:A9BF: 18        CLC
C - - - - - 0x0189D0 06:A9C0: 7D 7E 04  ADC ram_pos_Y_fr_obj,X
C - - - - - 0x0189D3 06:A9C3: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x0189D6 06:A9C6: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x0189D9 06:A9C9: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0189DC 06:A9CC: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x0189DF 06:A9CF: A5 67     LDA ram_0067_t51_hi
C - - - - - 0x0189E1 06:A9D1: 7D 98 04  ADC ram_pos_Y_hi_obj + $03,X
C - - - - - 0x0189E4 06:A9D4: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x0189E7 06:A9D7: 60        RTS



sub_A9D8:
C - - - - - 0x0189E8 06:A9D8: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0189EA 06:A9DA: 48        PHA
C - - - - - 0x0189EB 06:A9DB: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x0189ED 06:A9DD: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0189EF 06:A9DF: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0189F2 06:A9E2: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x0189F5 06:A9E5: BD D8 05  LDA ram_05D8_plr,X
C - - - - - 0x0189F8 06:A9E8: 0A        ASL
C - - - - - 0x0189F9 06:A9E9: A8        TAY
C - - - - - 0x0189FA 06:A9EA: B9 1B 9A  LDA tbl_0x00BA2B_map_cursor_position,Y
C - - - - - 0x0189FD 06:A9ED: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x018A00 06:A9F0: B9 1C 9A  LDA tbl_0x00BA2B_map_cursor_position + $01,Y
C - - - - - 0x018A03 06:A9F3: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x018A06 06:A9F6: A9 00     LDA #$00
C - - - - - 0x018A08 06:A9F8: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x018A0B 06:A9FB: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x018A0E 06:A9FE: 68        PLA
C - - - - - 0x018A0F 06:A9FF: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018A11 06:AA01: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018A14 06:AA04: 60        RTS



sub_AA05:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x018A15 06:AA05: A5 CB     LDA ram_00CB_t01
C - - - - - 0x018A17 06:AA07: F0 11     BEQ bra_AA1A
C - - - - - 0x018A19 06:AA09: 85 67     STA ram_0067_t52_counter
C - - - - - 0x018A1B 06:AA0B: AE 41 05  LDX ram_0541_t01_plr_index
C - - - - - 0x018A1E 06:AA0E: A0 00     LDY #$00
bra_AA10_loop:
C - - - - - 0x018A20 06:AA10: B9 41 04  LDA ram_043A_obj_flags + $03 + $04,Y
C - - - - - 0x018A23 06:AA13: 30 0D     BMI bra_AA22
bra_AA15:
C - - - - - 0x018A25 06:AA15: C8        INY
C - - - - - 0x018A26 06:AA16: C0 03     CPY #$03
C - - - - - 0x018A28 06:AA18: 90 F6     BCC bra_AA10_loop
bra_AA1A:
C - - - - - 0x018A2A 06:AA1A: 18        CLC
C - - - - - 0x018A2B 06:AA1B: 60        RTS
bra_AA1C:
C - - - - - 0x018A2C 06:AA1C: C6 67     DEC ram_0067_t52_counter
C - - - - - 0x018A2E 06:AA1E: F0 FA     BEQ bra_AA1A
C - - - - - 0x018A30 06:AA20: D0 F3     BNE bra_AA15    ; jmp
bra_AA22:
C - - - - - 0x018A32 06:AA22: B9 68 04  LDA ram_pos_X_lo_obj + $07,Y
C - - - - - 0x018A35 06:AA25: 38        SEC
C - - - - - 0x018A36 06:AA26: FD 64 04  SBC ram_pos_X_lo_obj + $03,X
C - - - - - 0x018A39 06:AA29: 10 04     BPL bra_AA2F
C - - - - - 0x018A3B 06:AA2B: 49 FF     EOR #$FF
C - - - - - 0x018A3D 06:AA2D: 69 01     ADC #$01
bra_AA2F:
C - - - - - 0x018A3F 06:AA2F: C9 03     CMP #$03
C - - - - - 0x018A41 06:AA31: B0 E9     BCS bra_AA1C
C - - - - - 0x018A43 06:AA33: B9 8F 04  LDA ram_pos_Y_lo_obj + $07,Y
C - - - - - 0x018A46 06:AA36: 38        SEC
C - - - - - 0x018A47 06:AA37: FD 8B 04  SBC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x018A4A 06:AA3A: 10 04     BPL bra_AA40
C - - - - - 0x018A4C 06:AA3C: 49 FF     EOR #$FF
C - - - - - 0x018A4E 06:AA3E: 69 01     ADC #$01
bra_AA40:
C - - - - - 0x018A50 06:AA40: C9 03     CMP #$03
C - - - - - 0x018A52 06:AA42: B0 D8     BCS bra_AA1C
C - - - - - 0x018A54 06:AA44: B9 DD 05  LDA ram_05DD_obj,Y
C - - - - - 0x018A57 06:AA47: 09 80     ORA #$80
C - - - - - 0x018A59 06:AA49: 99 DD 05  STA ram_05DD_obj,Y
; 
C - - - - - 0x018A5C 06:AA4C: AD DC 05  LDA ram_05DC_flags
C - - - - - 0x018A5F 06:AA4F: 29 DF     AND #con_05DC_20 ^ $FF
C - - - - - 0x018A61 06:AA51: 09 80     ORA #con_05DC_has_player_index
C - - - - - 0x018A63 06:AA53: 8D DC 05  STA ram_05DC_flags
; 
C - - - - - 0x018A66 06:AA56: A9 98     LDA #$18 + $80
C - - - - - 0x018A68 06:AA58: 8D 37 05  STA ram_0537_t01
C - - - - - 0x018A6B 06:AA5B: A9 00     LDA #$00
C - - - - - 0x018A6D 06:AA5D: 8D 44 05  STA ram_0544_t01_data_index
C - - - - - 0x018A70 06:AA60: 38        SEC
C - - - - - 0x018A71 06:AA61: 60        RTS



sub_AA62:
C - - - - - 0x018A72 06:AA62: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x018A75 06:AA65: 29 01     AND #con_05B5_together
C - - - - - 0x018A77 06:AA67: D0 35     BNE bra_AA9E_RTS    ; if together
; if separate
C - - - - - 0x018A79 06:AA69: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x018A7C 06:AA6C: 10 30     BPL bra_AA9E_RTS    ; if not con_05D4_80
C - - - - - 0x018A7E 06:AA6E: AD D5 05  LDA ram_05D4_plr_flags + $01
C - - - - - 0x018A81 06:AA71: 10 2B     BPL bra_AA9E_RTS    ; if not con_05D4_80
C - - - - - 0x018A83 06:AA73: AD D6 05  LDA ram_05D6_plr
C - - - - - 0x018A86 06:AA76: CD D7 05  CMP ram_05D6_plr + $01
C - - - - - 0x018A89 06:AA79: D0 23     BNE bra_AA9E_RTS
; 
C - - - - - 0x018A8B 06:AA7B: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x018A8E 06:AA7E: 09 40     ORA #con_05D4_40
C - - - - - 0x018A90 06:AA80: 8D D4 05  STA ram_05D4_plr_flags
; 
C - - - - - 0x018A93 06:AA83: AD D5 05  LDA ram_05D4_plr_flags + $01
C - - - - - 0x018A96 06:AA86: 29 20     AND #con_05D4_20
C - - - - - 0x018A98 06:AA88: 0D D4 05  ORA ram_05D4_plr_flags
C - - - - - 0x018A9B 06:AA8B: 8D D4 05  STA ram_05D4_plr_flags
; 
C - - - - - 0x018A9E 06:AA8E: 29 20     AND #con_05D4_20
C - - - - - 0x018AA0 06:AA90: 0D D5 05  ORA ram_05D4_plr_flags + $01
C - - - - - 0x018AA3 06:AA93: 8D D5 05  STA ram_05D4_plr_flags + $01
; 
C - - - - - 0x018AA6 06:AA96: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x018AA9 06:AA99: 09 01     ORA #con_05B5_together
C - - - - - 0x018AAB 06:AA9B: 8D B5 05  STA ram_05B5_player_flags
bra_AA9E_RTS:
C - - - - - 0x018AAE 06:AA9E: 60        RTS



ofs_024_map_movement_AA9F_07:
; con_0534_07
C - - J - - 0x018AAF 06:AA9F: AE 41 05  LDX ram_0541_t02_obj_index
C - - - - - 0x018AB2 06:AAA2: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x018AB5 06:AAA5: 29 40     AND #$40
C - - - - - 0x018AB7 06:AAA7: D0 25     BNE bra_AACE
C - - - - - 0x018AB9 06:AAA9: A9 0B     LDA #con_enemy_id_0B
C - - - - - 0x018ABB 06:AAAB: 9D 4A 04  STA ram_obj_id,X
C - - - - - 0x018ABE 06:AAAE: A9 01     LDA #$01
C - - - - - 0x018AC0 06:AAB0: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x018AC3 06:AAB3: 8A        TXA
C - - - - - 0x018AC4 06:AAB4: 49 01     EOR #$01
C - - - - - 0x018AC6 06:AAB6: AA        TAX
C - - - - - 0x018AC7 06:AAB7: A9 00     LDA #$00
C - - - - - 0x018AC9 06:AAB9: 9D 5B 05  STA ram_055B_obj_anim_counter,X
C - - - - - 0x018ACC 06:AABC: 8D 65 05  STA ram_0565_t01_handler_index
C - - - - - 0x018ACF 06:AABF: 8D 66 05  STA ram_0566_t01_counter
C - - - - - 0x018AD2 06:AAC2: 20 36 A7  JSR sub_A736
C - - - - - 0x018AD5 06:AAC5: AD D9 04  LDA ram_04D9_obj
C - - - - - 0x018AD8 06:AAC8: 09 40     ORA #$40
C - - - - - 0x018ADA 06:AACA: 8D D9 04  STA ram_04D9_obj
bra_AACD_RTS:
C - - - - - 0x018ADD 06:AACD: 60        RTS
bra_AACE:
C - - - - - 0x018ADE 06:AACE: 20 E3 AA  JSR sub_AAE3
C - - - - - 0x018AE1 06:AAD1: 90 FA     BCC bra_AACD_RTS
C - - - - - 0x018AE3 06:AAD3: AE 41 05  LDX ram_0541_t02_obj_index
C - - - - - 0x018AE6 06:AAD6: 86 A8     STX ram_plr_index
; 
C - - - - - 0x018AE8 06:AAD8: 8A        TXA
C - - - - - 0x018AE9 06:AAD9: 09 C0     ORA #con_05DC_has_player_index + con_05DC_40
C - - - - - 0x018AEB 06:AADB: 8D DC 05  STA ram_05DC_flags
; 
C - - - - - 0x018AEE 06:AADE: A9 02     LDA #$02
C - - - - - 0x018AF0 06:AAE0: 85 3C     STA ram_city
C - - - - - 0x018AF2 06:AAE2: 60        RTS



sub_AAE3:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x018AF3 06:AAE3: AD 65 05  LDA ram_0565_t01_handler_index
C - - - - - 0x018AF6 06:AAE6: 0A        ASL
C - - - - - 0x018AF7 06:AAE7: AA        TAX
C - - - - - 0x018AF8 06:AAE8: BD F5 AA  LDA tbl_AAF5,X
C - - - - - 0x018AFB 06:AAEB: 85 5B     STA ram_005B_t54_jmp
C - - - - - 0x018AFD 06:AAED: BD F6 AA  LDA tbl_AAF5 + $01,X
C - - - - - 0x018B00 06:AAF0: 85 5C     STA ram_005B_t54_jmp + $01
C - - - - - 0x018B02 06:AAF2: 6C 5B 00  JMP (ram_005B_t54_jmp)



tbl_AAF5:
- D 1 - - - 0x018B05 06:AAF5: FB AA     .word ofs_023_AAFB_00
- D 1 - - - 0x018B07 06:AAF7: 0A AB     .word ofs_023_AB0A_01
- D 1 - - - 0x018B09 06:AAF9: 3B AB     .word ofs_023_AB3B_02



ofs_023_AAFB_00:
C - - J - - 0x018B0B 06:AAFB: EE 66 05  INC ram_0566_t01_counter
C - - - - - 0x018B0E 06:AAFE: AD 66 05  LDA ram_0566_t01_counter
C - - - - - 0x018B11 06:AB01: C9 60     CMP #$60
C - - - - - 0x018B13 06:AB03: 90 04     BCC bra_AB09_RTS
C - - - - - 0x018B15 06:AB05: EE 65 05  INC ram_0565_t01_handler_index    ; -> 01
C - - - - - 0x018B18 06:AB08: 18        CLC
bra_AB09_RTS:
C - - - - - 0x018B19 06:AB09: 60        RTS



ofs_023_AB0A_01:
C - - J - - 0x018B1A 06:AB0A: AE 41 05  LDX ram_0541_t02_obj_index
C - - - - - 0x018B1D 06:AB0D: EE 66 05  INC ram_0566_t01_counter
C - - - - - 0x018B20 06:AB10: AD 66 05  LDA ram_0566_t01_counter
C - - - - - 0x018B23 06:AB13: C9 90     CMP #$90
C - - - - - 0x018B25 06:AB15: B0 11     BCS bra_AB28
C - - - - - 0x018B27 06:AB17: A5 14     LDA ram_frm_cnt
C - - - - - 0x018B29 06:AB19: 29 01     AND #$01
C - - - - - 0x018B2B 06:AB1B: A8        TAY
C - - - - - 0x018B2C 06:AB1C: B9 39 AB  LDA tbl_AB39,Y
C - - - - - 0x018B2F 06:AB1F: 18        CLC
C - - - - - 0x018B30 06:AB20: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x018B33 06:AB23: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
bra_AB26:
C - - - - - 0x018B36 06:AB26: 18        CLC
C - - - - - 0x018B37 06:AB27: 60        RTS
bra_AB28:
C - - - - - 0x018B38 06:AB28: A9 17     LDA #con_sfx_open_door
C - - - - - 0x018B3A 06:AB2A: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x018B3C 06:AB2C: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x018B3F 06:AB2F: A9 00     LDA #$00
C - - - - - 0x018B41 06:AB31: 8D 66 05  STA ram_0566_t02_counter
C - - - - - 0x018B44 06:AB34: EE 65 05  INC ram_0565_t01_handler_index    ; -> 02
C - - - - - 0x018B47 06:AB37: D0 ED     BNE bra_AB26    ; jmp



tbl_AB39:
- D 1 - - - 0x018B49 06:AB39: 01        .byte $01   ; 00 
- D 1 - - - 0x018B4A 06:AB3A: FF        .byte $FF   ; 01 



ofs_023_AB3B_02:
C - - J - - 0x018B4B 06:AB3B: AE 41 05  LDX ram_0541_t02_obj_index
C - - - - - 0x018B4E 06:AB3E: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x018B51 06:AB41: 10 21     BPL bra_AB64_RTS
C - - - - - 0x018B53 06:AB43: EE 66 05  INC ram_0566_t02_counter
C - - - - - 0x018B56 06:AB46: AD 66 05  LDA ram_0566_t02_counter
C - - - - - 0x018B59 06:AB49: C9 18     CMP #$18
C - - - - - 0x018B5B 06:AB4B: 90 04     BCC bra_AB51
C - - - - - 0x018B5D 06:AB4D: A0 03     LDY #$18 / $08  ; 03
C - - - - - 0x018B5F 06:AB4F: D0 04     BNE bra_AB55    ; jmp
bra_AB51:
; / 08
C - - - - - 0x018B61 06:AB51: 4A        LSR
C - - - - - 0x018B62 06:AB52: 4A        LSR
C - - - - - 0x018B63 06:AB53: 4A        LSR
; 
C - - - - - 0x018B64 06:AB54: A8        TAY
bra_AB55:
C - - - - - 0x018B65 06:AB55: B9 70 AB  LDA tbl_AB70,Y
C - - - - - 0x018B68 06:AB58: 18        CLC
C - - - - - 0x018B69 06:AB59: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x018B6C 06:AB5C: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x018B6F 06:AB5F: C9 08     CMP #$08
C - - - - - 0x018B71 06:AB61: 90 02     BCC bra_AB65
C - - - - - 0x018B73 06:AB63: 18        CLC
bra_AB64_RTS:
C - - - - - 0x018B74 06:AB64: 60        RTS
bra_AB65:
C - - - - - 0x018B75 06:AB65: A9 00     LDA #$00
C - - - - - 0x018B77 06:AB67: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x018B7A 06:AB6A: C6 CA     DEC ram_00CA_objects_counter
C - - - - - 0x018B7C 06:AB6C: C6 CE     DEC ram_all_objects_counter
C - - - - - 0x018B7E 06:AB6E: 38        SEC
C - - - - - 0x018B7F 06:AB6F: 60        RTS



tbl_AB70:
- D 1 - - - 0x018B80 06:AB70: FF        .byte $FF   ; 00 
- D 1 - - - 0x018B81 06:AB71: FE        .byte $FE   ; 08 
- D 1 - - - 0x018B82 06:AB72: FC        .byte $FC   ; 10 
- D 1 - - - 0x018B83 06:AB73: FA        .byte $FA   ; 18 



loc_AB74:
sub_AB74:
C D 1 - - - 0x018B84 06:AB74: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018B86 06:AB76: 48        PHA
C - - - - - 0x018B87 06:AB77: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x018B89 06:AB79: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018B8B 06:AB7B: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018B8E 06:AB7E: 20 8B AB  JSR sub_AB8B
C - - - - - 0x018B91 06:AB81: 20 A7 AB  JSR sub_ABA7_player_background_palette_8_colors
C - - - - - 0x018B94 06:AB84: 68        PLA
C - - - - - 0x018B95 06:AB85: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018B97 06:AB87: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018B9A 06:AB8A: 60        RTS



sub_AB8B:
C - - - - - 0x018B9B 06:AB8B: A5 A8     LDA ram_plr_index
C - - - - - 0x018B9D 06:AB8D: 0A        ASL
C - - - - - 0x018B9E 06:AB8E: AA        TAX
C - - - - - 0x018B9F 06:AB8F: BD E2 9B  LDA tbl_0x005BF2_player_background_palette_10_colors,X
C - - - - - 0x018BA2 06:AB92: 85 5B     STA ram_005B_t3B_bg_pal_data
C - - - - - 0x018BA4 06:AB94: BD E3 9B  LDA tbl_0x005BF2_player_background_palette_10_colors + $01,X
C - - - - - 0x018BA7 06:AB97: 85 5C     STA ram_005B_t3B_bg_pal_data + $01
C - - - - - 0x018BA9 06:AB99: A0 00     LDY #$00
C - - - - - 0x018BAB 06:AB9B: A2 10     LDX #$10
bra_AB9D_loop:
C - - - - - 0x018BAD 06:AB9D: B1 5B     LDA (ram_005B_t3B_bg_pal_data),Y
C - - - - - 0x018BAF 06:AB9F: 99 80 02  STA ram_pal_buffer,Y
C - - - - - 0x018BB2 06:ABA2: C8        INY
C - - - - - 0x018BB3 06:ABA3: CA        DEX
C - - - - - 0x018BB4 06:ABA4: D0 F7     BNE bra_AB9D_loop
C - - - - - 0x018BB6 06:ABA6: 60        RTS



sub_ABA7_player_background_palette_8_colors:
C - - - - - 0x018BB7 06:ABA7: A5 A8     LDA ram_plr_index
C - - - - - 0x018BB9 06:ABA9: 0A        ASL
C - - - - - 0x018BBA 06:ABAA: AA        TAX
C - - - - - 0x018BBB 06:ABAB: BD E6 9B  LDA tbl_0x005BF6_player_background_palette_8_colors,X
C - - - - - 0x018BBE 06:ABAE: 85 5B     STA ram_005B_t3A_bg_pal_data
C - - - - - 0x018BC0 06:ABB0: BD E7 9B  LDA tbl_0x005BF6_player_background_palette_8_colors + $01,X
C - - - - - 0x018BC3 06:ABB3: 85 5C     STA ram_005B_t3A_bg_pal_data + $01
C - - - - - 0x018BC5 06:ABB5: A0 00     LDY #$00
C - - - - - 0x018BC7 06:ABB7: A2 08     LDX #$08
bra_ABB9_loop:
C - - - - - 0x018BC9 06:ABB9: B1 5B     LDA (ram_005B_t3A_bg_pal_data),Y
C - - - - - 0x018BCB 06:ABBB: 99 90 02  STA ram_pal_buffer + $10,Y
C - - - - - 0x018BCE 06:ABBE: C8        INY
C - - - - - 0x018BCF 06:ABBF: CA        DEX
C - - - - - 0x018BD0 06:ABC0: D0 F7     BNE bra_ABB9_loop
C - - - - - 0x018BD2 06:ABC2: 60        RTS



loc_ABC3_move_portraits_in_pause_menu:
C D 1 - - - 0x018BD3 06:ABC3: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x018BD5 06:ABC5: 38        SEC
C - - - - - 0x018BD6 06:ABC6: E9 10     SBC #< $0010
C - - - - - 0x018BD8 06:ABC8: 85 43     STA ram_scroll_X_lo
C - - - - - 0x018BDA 06:ABCA: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x018BDC 06:ABCC: E9 00     SBC #> $0010
C - - - - - 0x018BDE 06:ABCE: 85 42     STA ram_scroll_X_hi
C - - - - - 0x018BE0 06:ABD0: 29 01     AND #$01
C - - - - - 0x018BE2 06:ABD2: 85 67     STA ram_0067_t53_nametable
C - - - - - 0x018BE4 06:ABD4: A5 3A     LDA ram_for_2000
C - - - - - 0x018BE6 06:ABD6: 29 FE     AND #$FE
C - - - - - 0x018BE8 06:ABD8: 05 67     ORA ram_0067_t53_nametable
C - - - - - 0x018BEA 06:ABDA: 85 3A     STA ram_for_2000
C - - - - - 0x018BEC 06:ABDC: A5 35     LDA ram_0035_scroll_X_lo
C - - - - - 0x018BEE 06:ABDE: 18        CLC
C - - - - - 0x018BEF 06:ABDF: 69 10     ADC #< $0010
C - - - - - 0x018BF1 06:ABE1: 85 35     STA ram_0035_scroll_X_lo
C - - - - - 0x018BF3 06:ABE3: A5 34     LDA ram_0034_scroll_X_hi
C - - - - - 0x018BF5 06:ABE5: 69 00     ADC #> $0010
C - - - - - 0x018BF7 06:ABE7: 29 01     AND #$01
C - - - - - 0x018BF9 06:ABE9: 85 34     STA ram_0034_scroll_X_hi
; bzk optimize, useless JSR + RTS
C - - - - - 0x018BFB 06:ABEB: 20 EF AB  JSR sub_ABEF_move_portraits_position
C - - - - - 0x018BFE 06:ABEE: 60        RTS



sub_ABEF_move_portraits_position:
; captain
C - - - - - 0x018BFF 06:ABEF: AD B8 05  LDA ram_05B8_spr_X_lo_player
C - - - - - 0x018C02 06:ABF2: 18        CLC
C - - - - - 0x018C03 06:ABF3: 69 10     ADC #< $0010
C - - - - - 0x018C05 06:ABF5: 8D B8 05  STA ram_05B8_spr_X_lo_player
C - - - - - 0x018C08 06:ABF8: AD BA 05  LDA ram_05BA_spr_X_hi_player
C - - - - - 0x018C0B 06:ABFB: 69 00     ADC #> $0010
C - - - - - 0x018C0D 06:ABFD: 8D BA 05  STA ram_05BA_spr_X_hi_player
; hawk
C - - - - - 0x018C10 06:AC00: AD B9 05  LDA ram_05B8_spr_X_lo_player + $01
C - - - - - 0x018C13 06:AC03: 38        SEC
C - - - - - 0x018C14 06:AC04: E9 10     SBC #< $0010
C - - - - - 0x018C16 06:AC06: 8D B9 05  STA ram_05B8_spr_X_lo_player + $01
C - - - - - 0x018C19 06:AC09: AD BB 05  LDA ram_05BA_spr_X_hi_player + $01
C - - - - - 0x018C1C 06:AC0C: E9 00     SBC #> $0010
C - - - - - 0x018C1E 06:AC0E: 8D BB 05  STA ram_05BA_spr_X_hi_player + $01
C - - - - - 0x018C21 06:AC11: 60        RTS



loc_AC12:
; out
    ; ram_0067_t54_flag
        ; 00 = 
        ; 01 = 
C D 1 - - - 0x018C22 06:AC12: A5 36     LDA ram_buttons
C - - - - - 0x018C24 06:AC14: C5 38     CMP ram_prev_buttons
C - - - - - 0x018C26 06:AC16: F0 11     BEQ bra_AC29
C - - - - - 0x018C28 06:AC18: 29 40     AND #con_btn_B
C - - - - - 0x018C2A 06:AC1A: F0 0D     BEQ bra_AC29
C - - - - - 0x018C2C 06:AC1C: A9 0A     LDA #$0A
C - - - - - 0x018C2E 06:AC1E: 8D E5 03  STA ram_03E5
C - - - - - 0x018C31 06:AC21: 20 2D AC  JSR sub_AC2D_write_metatiles_to_buffer
C - - - - - 0x018C34 06:AC24: A9 01     LDA #$01
bra_AC26:
C - - - - - 0x018C36 06:AC26: 85 67     STA ram_0067_t54_flag
C - - - - - 0x018C38 06:AC28: 60        RTS
bra_AC29:
C - - - - - 0x018C39 06:AC29: A9 00     LDA #$00
C - - - - - 0x018C3B 06:AC2B: F0 F9     BEQ bra_AC26    ; jmp



sub_AC2D_write_metatiles_to_buffer:
C - - - - - 0x018C3D 06:AC2D: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018C3F 06:AC2F: 48        PHA
C - - - - - 0x018C40 06:AC30: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x018C42 06:AC32: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018C44 06:AC34: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018C47 06:AC37: AD E5 03  LDA ram_03E5
C - - - - - 0x018C4A 06:AC3A: 29 0C     AND #$0C
C - - - - - 0x018C4C 06:AC3C: 0A        ASL
C - - - - - 0x018C4D 06:AC3D: AA        TAX
C - - - - - 0x018C4E 06:AC3E: A0 00     LDY #$00
C - - - - - 0x018C50 06:AC40: A9 08     LDA #$08
C - - - - - 0x018C52 06:AC42: 85 67     STA ram_0067_t14_loop_counter
C - - - - - 0x018C54 06:AC44: A9 21     LDA #$21
C - - - - - 0x018C56 06:AC46: 85 68     STA ram_0068_t26_ppu_hi
bra_AC48_loop:
C - - - - - 0x018C58 06:AC48: A5 68     LDA ram_0068_t26_ppu_hi
C - - - - - 0x018C5A 06:AC4A: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018C5D 06:AC4D: C8        INY
C - - - - - 0x018C5E 06:AC4E: BD 32 9C  LDA tbl_0x005C42_metatile_ppu_address_lo,X
C - - - - - 0x018C61 06:AC51: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018C64 06:AC54: C8        INY
C - - - - - 0x018C65 06:AC55: BD 1A 9C  LDA tbl_0x005C2A_metatiles,X
C - - - - - 0x018C68 06:AC58: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018C6B 06:AC5B: C8        INY
C - - - - - 0x018C6C 06:AC5C: E8        INX
C - - - - - 0x018C6D 06:AC5D: C6 67     DEC ram_0067_t14_loop_counter
C - - - - - 0x018C6F 06:AC5F: F0 0C     BEQ bra_AC6D_next___write_attributes
C - - - - - 0x018C71 06:AC61: A5 67     LDA ram_0067_t14_loop_counter
C - - - - - 0x018C73 06:AC63: C9 05     CMP #$05
C - - - - - 0x018C75 06:AC65: B0 E1     BCS bra_AC48_loop
C - - - - - 0x018C77 06:AC67: A9 22     LDA #$22
C - - - - - 0x018C79 06:AC69: 85 68     STA ram_0068_t26_ppu_hi
C - - - - - 0x018C7B 06:AC6B: D0 DB     BNE bra_AC48_loop    ; jmp
bra_AC6D_next___write_attributes:
C - - - - - 0x018C7D 06:AC6D: A9 23     LDA #> $23E0
C - - - - - 0x018C7F 06:AC6F: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018C82 06:AC72: C8        INY
C - - - - - 0x018C83 06:AC73: A9 E0     LDA #< $23E0
C - - - - - 0x018C85 06:AC75: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018C88 06:AC78: C8        INY
C - - - - - 0x018C89 06:AC79: A9 04     LDA #$04
C - - - - - 0x018C8B 06:AC7B: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018C8E 06:AC7E: C8        INY
C - - - - - 0x018C8F 06:AC7F: 84 0E     STY ram_000E_buffer_index
C - - - - - 0x018C91 06:AC81: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x018C93 06:AC83: 85 02     STA ram_buffers_flags
C - - - - - 0x018C95 06:AC85: 68        PLA
C - - - - - 0x018C96 06:AC86: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018C98 06:AC88: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018C9B 06:AC8B: 60        RTS



loc_AC8C:
sub_AC8C:
; in
    ; ram_0067_t55_table_index
C D 1 - - - 0x018C9C 06:AC8C: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018C9E 06:AC8E: 48        PHA
C - - - - - 0x018C9F 06:AC8F: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x018CA1 06:AC91: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018CA3 06:AC93: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018CA6 06:AC96: A5 67     LDA ram_0067_t55_table_index
; * 08
C - - - - - 0x018CA8 06:AC98: 0A        ASL
C - - - - - 0x018CA9 06:AC99: 0A        ASL
C - - - - - 0x018CAA 06:AC9A: 0A        ASL
; 
C - - - - - 0x018CAB 06:AC9B: AA        TAX
C - - - - - 0x018CAC 06:AC9C: A4 0E     LDY ram_000E_buffer_index
C - - - - - 0x018CAE 06:AC9E: A9 06     LDA #$06
C - - - - - 0x018CB0 06:ACA0: 85 67     STA ram_0067_t56_attributes_counter
bra_ACA2_loop:
C - - - - - 0x018CB2 06:ACA2: A9 23     LDA #$23
C - - - - - 0x018CB4 06:ACA4: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018CB7 06:ACA7: C8        INY
C - - - - - 0x018CB8 06:ACA8: BD 4A 9C  LDA tbl_0x005C5A_ppu_address_lo,X
C - - - - - 0x018CBB 06:ACAB: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018CBE 06:ACAE: C8        INY
C - - - - - 0x018CBF 06:ACAF: BD 62 9C  LDA tbl_0x005C72_attributes,X
C - - - - - 0x018CC2 06:ACB2: 99 C0 02  STA ram_02C0_ppu_buffer,Y
C - - - - - 0x018CC5 06:ACB5: C8        INY
C - - - - - 0x018CC6 06:ACB6: E8        INX
C - - - - - 0x018CC7 06:ACB7: C6 67     DEC ram_0067_t56_attributes_counter
C - - - - - 0x018CC9 06:ACB9: D0 E7     BNE bra_ACA2_loop
C - - - - - 0x018CCB 06:ACBB: 84 0E     STY ram_000E_buffer_index
C - - - - - 0x018CCD 06:ACBD: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x018CCF 06:ACBF: 85 02     STA ram_buffers_flags
C - - - - - 0x018CD1 06:ACC1: 68        PLA
C - - - - - 0x018CD2 06:ACC2: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018CD4 06:ACC4: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018CD7 06:ACC7: 60        RTS



loc_ACC8:
C D 1 - - - 0x018CD8 06:ACC8: A5 36     LDA ram_buttons
C - - - - - 0x018CDA 06:ACCA: 29 0C     AND #con_btns_UD
C - - - - - 0x018CDC 06:ACCC: F0 40     BEQ bra_AD0E
C - - - - - 0x018CDE 06:ACCE: 48        PHA ; copy buttons 1
C - - - - - 0x018CDF 06:ACCF: 48        PHA ; copy buttons 2
C - - - - - 0x018CE0 06:ACD0: AD E5 03  LDA ram_03E5
C - - - - - 0x018CE3 06:ACD3: 29 F0     AND #$F0
C - - - - - 0x018CE5 06:ACD5: 8D E5 03  STA ram_03E5
C - - - - - 0x018CE8 06:ACD8: 68        PLA ; copy buttons 2
C - - - - - 0x018CE9 06:ACD9: 0D E5 03  ORA ram_03E5
C - - - - - 0x018CEC 06:ACDC: 8D E5 03  STA ram_03E5
C - - - - - 0x018CEF 06:ACDF: 68        PLA ; copy buttons 1
; / 04
C - - - - - 0x018CF0 06:ACE0: 4A        LSR
C - - - - - 0x018CF1 06:ACE1: 4A        LSR
; 
C - - - - - 0x018CF2 06:ACE2: 0D E5 03  ORA ram_03E5
C - - - - - 0x018CF5 06:ACE5: 8D E5 03  STA ram_03E5
C - - - - - 0x018CF8 06:ACE8: 48        PHA
C - - - - - 0x018CF9 06:ACE9: 29 30     AND #$30
; / 04
C - - - - - 0x018CFB 06:ACEB: 4A        LSR
C - - - - - 0x018CFC 06:ACEC: 4A        LSR
; 
C - - - - - 0x018CFD 06:ACED: 85 67     STA ram_0067_t57
C - - - - - 0x018CFF 06:ACEF: 68        PLA
C - - - - - 0x018D00 06:ACF0: 29 0C     AND #$0C
C - - - - - 0x018D02 06:ACF2: C5 67     CMP ram_0067_t57
C - - - - - 0x018D04 06:ACF4: F0 18     BEQ bra_AD0E
; * 04
C - - - - - 0x018D06 06:ACF6: 0A        ASL
C - - - - - 0x018D07 06:ACF7: 0A        ASL
; 
C - - - - - 0x018D08 06:ACF8: 85 67     STA ram_0067_t58
C - - - - - 0x018D0A 06:ACFA: AD E5 03  LDA ram_03E5
C - - - - - 0x018D0D 06:ACFD: 29 CF     AND #$30 ^ $FF
C - - - - - 0x018D0F 06:ACFF: 05 67     ORA ram_0067_t58
C - - - - - 0x018D11 06:AD01: 8D E5 03  STA ram_03E5
C - - - - - 0x018D14 06:AD04: 20 2D AC  JSR sub_AC2D_write_metatiles_to_buffer
C - - - - - 0x018D17 06:AD07: A9 13     LDA #con_sfx_move_cursor
C - - - - - 0x018D19 06:AD09: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x018D1B 06:AD0B: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_AD0E:
C - - - - - 0x018D1E 06:AD0E: A5 36     LDA ram_buttons
C - - - - - 0x018D20 06:AD10: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x018D22 06:AD12: F0 14     BEQ bra_AD28
C - - - - - 0x018D24 06:AD14: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x018D26 06:AD16: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x018D28 06:AD18: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x018D2B 06:AD1B: A9 40     LDA #$40
C - - - - - 0x018D2D 06:AD1D: 0D E5 03  ORA ram_03E5
C - - - - - 0x018D30 06:AD20: 29 F3     AND #$0C ^ $FF
C - - - - - 0x018D32 06:AD22: 8D E5 03  STA ram_03E5
C - - - - - 0x018D35 06:AD25: 20 2D AC  JSR sub_AC2D_write_metatiles_to_buffer
bra_AD28:
C - - - - - 0x018D38 06:AD28: 2C E5 03  BIT ram_03E5
C - - - - - 0x018D3B 06:AD2B: 50 0A     BVC bra_AD37_RTS
C - - - - - 0x018D3D 06:AD2D: AD E5 03  LDA ram_03E5
C - - - - - 0x018D40 06:AD30: 29 03     AND #$03
C - - - - - 0x018D42 06:AD32: 85 67     STA ram_0067_t55_table_index
; bzk optimize, JMP
C - - - - - 0x018D44 06:AD34: 20 8C AC  JSR sub_AC8C
bra_AD37_RTS:
C - - - - - 0x018D47 06:AD37: 60        RTS



loc_AD38:
C D 1 - - - 0x018D48 06:AD38: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x018D4B 06:AD3B: 29 C0     AND #con_05B5_captured_hawk + con_05B5_captured_captain
C - - - - - 0x018D4D 06:AD3D: D0 38     BNE bra_AD77    ; if one of the players is dead
; if both players are alive
C - - - - - 0x018D4F 06:AD3F: AD B5 05  LDA ram_05B5_player_flags
C - - - - - 0x018D52 06:AD42: 4A        LSR
C - - - - - 0x018D53 06:AD43: 90 32     BCC bra_AD77    ; if separate
; if con_05B5_together
C - - - - - 0x018D55 06:AD45: A5 A8     LDA ram_plr_index
C - - - - - 0x018D57 06:AD47: 85 67     STA ram_0067_t1B_copy_current_plr_index
C - - - - - 0x018D59 06:AD49: A5 36     LDA ram_buttons
C - - - - - 0x018D5B 06:AD4B: 29 0C     AND #con_btns_UD
C - - - - - 0x018D5D 06:AD4D: F0 28     BEQ bra_AD77
; / 08
C - - - - - 0x018D5F 06:AD4F: 4A        LSR
C - - - - - 0x018D60 06:AD50: 4A        LSR
C - - - - - 0x018D61 06:AD51: 4A        LSR
; 
C - - - - - 0x018D62 06:AD52: B0 07     BCS bra_AD5B    ; if con_btn_Down
; / 02 (10)
C - - - - - 0x018D64 06:AD54: 4A        LSR
; 
C - - - - - 0x018D65 06:AD55: 90 08     BCC bra_AD5F    ; if not con_btn_Up
; if con_btn_Up
C - - - - - 0x018D67 06:AD57: A9 00     LDA #$00
C - - - - - 0x018D69 06:AD59: F0 02     BEQ bra_AD5D    ; jmp
bra_AD5B:
C - - - - - 0x018D6B 06:AD5B: A9 01     LDA #$01
bra_AD5D:
C - - - - - 0x018D6D 06:AD5D: 85 A8     STA ram_plr_index
bra_AD5F:
C - - - - - 0x018D6F 06:AD5F: A5 A8     LDA ram_plr_index
C - - - - - 0x018D71 06:AD61: C5 67     CMP ram_0067_t1B_copy_current_plr_index
C - - - - - 0x018D73 06:AD63: F0 12     BEQ bra_AD77
C - - - - - 0x018D75 06:AD65: A9 13     LDA #con_sfx_move_cursor
C - - - - - 0x018D77 06:AD67: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x018D79 06:AD69: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x018D7C 06:AD6C: 20 74 AB  JSR sub_AB74
C - - - - - 0x018D7F 06:AD6F: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x018D81 06:AD71: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x018D83 06:AD73: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x018D85 06:AD75: 85 02     STA ram_buffers_flags
bra_AD77:
; bzk optimize, useless JSR + RTS
C - - - - - 0x018D87 06:AD77: 20 7B AD  JSR sub_AD7B
C - - - - - 0x018D8A 06:AD7A: 60        RTS



sub_AD7B:
C - - - - - 0x018D8B 06:AD7B: A5 36     LDA ram_buttons
C - - - - - 0x018D8D 06:AD7D: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x018D8F 06:AD7F: F0 15     BEQ bra_AD96_RTS
C - - - - - 0x018D91 06:AD81: A5 38     LDA ram_prev_buttons
C - - - - - 0x018D93 06:AD83: 29 90     AND #con_btn_A + con_btn_Start
C - - - - - 0x018D95 06:AD85: D0 0F     BNE bra_AD96_RTS
C - - - - - 0x018D97 06:AD87: A9 80     LDA #$80
C - - - - - 0x018D99 06:AD89: 0D E5 03  ORA ram_03E5
C - - - - - 0x018D9C 06:AD8C: 8D E5 03  STA ram_03E5
C - - - - - 0x018D9F 06:AD8F: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x018DA1 06:AD91: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x018DA3 06:AD93: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_AD96_RTS:
C - - - - - 0x018DA6 06:AD96: 60        RTS



loc_AD97:
C D 1 - - - 0x018DA7 06:AD97: 20 6B AE  JSR sub_AE6B_update_hiscore
C - - - - - 0x018DAA 06:AD9A: 20 A1 AD  JSR sub_ADA1
; bzk optimize, JMP
C - - - - - 0x018DAD 06:AD9D: 20 CA AD  JSR sub_ADCA
C - - - - - 0x018DB0 06:ADA0: 60        RTS



sub_ADA1:
C - - - - - 0x018DB1 06:ADA1: AD DF 03  LDA ram_hi_score
C - - - - - 0x018DB4 06:ADA4: 85 6E     STA ram_006E_t14_score_hi
C - - - - - 0x018DB6 06:ADA6: AD E0 03  LDA ram_hi_score + $01
C - - - - - 0x018DB9 06:ADA9: 85 6F     STA ram_006F_t08_score_lo
C - - - - - 0x018DBB 06:ADAB: AD E1 03  LDA ram_hi_score + $02
C - - - - - 0x018DBE 06:ADAE: 85 70     STA ram_0070_t03_tens_digit
C - - - - - 0x018DC0 06:ADB0: 20 E3 FF  JSR sub_0x01FFF3_prepare_big_digits_for_score
C - - - - - 0x018DC3 06:ADB3: A9 71     LDA #< ram_0071_t18_score_array
C - - - - - 0x018DC5 06:ADB5: 85 5B     STA ram_005B_t39_data
C - - - - - 0x018DC7 06:ADB7: A9 00     LDA #> ram_0071_t18_score_array
C - - - - - 0x018DC9 06:ADB9: 85 5C     STA ram_005B_t39_data + $01
C - - - - - 0x018DCB 06:ADBB: 20 F3 AD  JSR sub_ADF3_calculate_score_big_numbers
C - - - - - 0x018DCE 06:ADBE: A9 21     LDA #> $21B2
C - - - - - 0x018DD0 06:ADC0: 85 5C     STA ram_005C_t01_ppu_hi
C - - - - - 0x018DD2 06:ADC2: A9 B2     LDA #< $21B2
C - - - - - 0x018DD4 06:ADC4: 85 5B     STA ram_005B_t68_ppu_lo
; bzk optimize, JMP
C - - - - - 0x018DD6 06:ADC6: 20 0D AE  JSR sub_AE0D_draw_big_score_numbers
C - - - - - 0x018DD9 06:ADC9: 60        RTS



sub_ADCA:
C - - - - - 0x018DDA 06:ADCA: AD E2 03  LDA ram_plr_score
C - - - - - 0x018DDD 06:ADCD: 85 6E     STA ram_006E_t14_score_hi
C - - - - - 0x018DDF 06:ADCF: AD E3 03  LDA ram_plr_score + $01
C - - - - - 0x018DE2 06:ADD2: 85 6F     STA ram_006F_t08_score_lo
C - - - - - 0x018DE4 06:ADD4: AD E4 03  LDA ram_plr_score + $02
C - - - - - 0x018DE7 06:ADD7: 85 70     STA ram_0070_t03_tens_digit
C - - - - - 0x018DE9 06:ADD9: 20 E3 FF  JSR sub_0x01FFF3_prepare_big_digits_for_score
C - - - - - 0x018DEC 06:ADDC: A9 71     LDA #< ram_0071_t18_score_array
C - - - - - 0x018DEE 06:ADDE: 85 5B     STA ram_005B_t39_data
C - - - - - 0x018DF0 06:ADE0: A9 00     LDA #> ram_0071_t18_score_array
C - - - - - 0x018DF2 06:ADE2: 85 5C     STA ram_005B_t39_data + $01
C - - - - - 0x018DF4 06:ADE4: 20 F3 AD  JSR sub_ADF3_calculate_score_big_numbers
C - - - - - 0x018DF7 06:ADE7: A9 22     LDA #> $2212
C - - - - - 0x018DF9 06:ADE9: 85 5C     STA ram_005C_t01_ppu_hi
C - - - - - 0x018DFB 06:ADEB: A9 12     LDA #< $2212
C - - - - - 0x018DFD 06:ADED: 85 5B     STA ram_005B_t68_ppu_lo
; bzk optimize, JMP
C - - - - - 0x018DFF 06:ADEF: 20 0D AE  JSR sub_AE0D_draw_big_score_numbers
C - - - - - 0x018E02 06:ADF2: 60        RTS



sub_ADF3_calculate_score_big_numbers:
; in
    ; ram_005B_t39_data
; bzk optimize, same pointers are written before JSR,
; write them here instead
C - - - - - 0x018E03 06:ADF3: A0 00     LDY #$00
C - - - - - 0x018E05 06:ADF5: A2 00     LDX #$00
bra_ADF7_loop:
C - - - - - 0x018E07 06:ADF7: B1 5B     LDA (ram_005B_t39_data),Y
C - - - - - 0x018E09 06:ADF9: 48        PHA
; / 10
C - - - - - 0x018E0A 06:ADFA: 4A        LSR
C - - - - - 0x018E0B 06:ADFB: 4A        LSR
C - - - - - 0x018E0C 06:ADFC: 4A        LSR
C - - - - - 0x018E0D 06:ADFD: 4A        LSR
; 
C - - - - - 0x018E0E 06:ADFE: 95 67     STA ram_0067_t46_score_array,X
C - - - - - 0x018E10 06:AE00: E8        INX
C - - - - - 0x018E11 06:AE01: 68        PLA
C - - - - - 0x018E12 06:AE02: 29 0F     AND #$0F
C - - - - - 0x018E14 06:AE04: 95 67     STA ram_0067_t46_score_array,X
C - - - - - 0x018E16 06:AE06: E8        INX
C - - - - - 0x018E17 06:AE07: C8        INY
C - - - - - 0x018E18 06:AE08: C0 03     CPY #$03
C - - - - - 0x018E1A 06:AE0A: 90 EB     BCC bra_ADF7_loop
C - - - - - 0x018E1C 06:AE0C: 60        RTS



sub_AE0D_draw_big_score_numbers:
C - - - - - 0x018E1D 06:AE0D: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018E1F 06:AE0F: 48        PHA
C - - - - - 0x018E20 06:AE10: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x018E22 06:AE12: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018E24 06:AE14: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018E27 06:AE17: A9 00     LDA #$00
C - - - - - 0x018E29 06:AE19: 85 6D     STA ram_006D_t06_digits_counter
bra_AE1B_loop:
C - - - - - 0x018E2B 06:AE1B: A0 02     LDY #$02
C - - - - - 0x018E2D 06:AE1D: A6 6D     LDX ram_006D_t06_digits_counter
C - - - - - 0x018E2F 06:AE1F: B5 67     LDA ram_0067_t46_score_array,X
; * 04
C - - - - - 0x018E31 06:AE21: 0A        ASL
C - - - - - 0x018E32 06:AE22: 0A        ASL
; 
C - - - - - 0x018E33 06:AE23: AA        TAX
bra_AE24_loop:
C - - - - - 0x018E34 06:AE24: AD 02 20  LDA $2002
C - - - - - 0x018E37 06:AE27: A5 5C     LDA ram_005C_t01_ppu_hi
C - - - - - 0x018E39 06:AE29: 8D 06 20  STA $2006
C - - - - - 0x018E3C 06:AE2C: A5 5B     LDA ram_005B_t68_ppu_lo
C - - - - - 0x018E3E 06:AE2E: 8D 06 20  STA $2006
C - - - - - 0x018E41 06:AE31: BD 7A 9C  LDA tbl_0x005C8A_big_numbers_metatiles,X
C - - - - - 0x018E44 06:AE34: 8D 07 20  STA $2007
C - - - - - 0x018E47 06:AE37: E8        INX
C - - - - - 0x018E48 06:AE38: BD 7A 9C  LDA tbl_0x005C8A_big_numbers_metatiles,X
C - - - - - 0x018E4B 06:AE3B: 8D 07 20  STA $2007
C - - - - - 0x018E4E 06:AE3E: E8        INX
C - - - - - 0x018E4F 06:AE3F: A5 5B     LDA ram_005B_t68_ppu_lo
C - - - - - 0x018E51 06:AE41: 18        CLC
C - - - - - 0x018E52 06:AE42: 69 20     ADC #< $0020
C - - - - - 0x018E54 06:AE44: 85 5B     STA ram_005B_t68_ppu_lo
C - - - - - 0x018E56 06:AE46: A5 5C     LDA ram_005C_t01_ppu_hi
C - - - - - 0x018E58 06:AE48: 69 00     ADC #> $0020
C - - - - - 0x018E5A 06:AE4A: 85 5C     STA ram_005C_t01_ppu_hi
C - - - - - 0x018E5C 06:AE4C: 88        DEY
C - - - - - 0x018E5D 06:AE4D: D0 D5     BNE bra_AE24_loop
C - - - - - 0x018E5F 06:AE4F: A5 5B     LDA ram_005B_t68_ppu_lo
C - - - - - 0x018E61 06:AE51: 38        SEC
C - - - - - 0x018E62 06:AE52: E9 3E     SBC #< $003E
C - - - - - 0x018E64 06:AE54: 85 5B     STA ram_005B_t68_ppu_lo
C - - - - - 0x018E66 06:AE56: A5 5C     LDA ram_005C_t01_ppu_hi
C - - - - - 0x018E68 06:AE58: E9 00     SBC #> $003E
C - - - - - 0x018E6A 06:AE5A: 85 5C     STA ram_005C_t01_ppu_hi
C - - - - - 0x018E6C 06:AE5C: E6 6D     INC ram_006D_t06_digits_counter
C - - - - - 0x018E6E 06:AE5E: A5 6D     LDA ram_006D_t06_digits_counter
C - - - - - 0x018E70 06:AE60: C9 06     CMP #$06
C - - - - - 0x018E72 06:AE62: 90 B7     BCC bra_AE1B_loop
C - - - - - 0x018E74 06:AE64: 68        PLA
C - - - - - 0x018E75 06:AE65: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018E77 06:AE67: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018E7A 06:AE6A: 60        RTS



sub_AE6B_update_hiscore:
; check if hi-score is less than player score
C - - - - - 0x018E7B 06:AE6B: AD E1 03  LDA ram_hi_score + $02
C - - - - - 0x018E7E 06:AE6E: 38        SEC
C - - - - - 0x018E7F 06:AE6F: ED E4 03  SBC ram_plr_score + $02
C - - - - - 0x018E82 06:AE72: AD E0 03  LDA ram_hi_score + $01
C - - - - - 0x018E85 06:AE75: ED E3 03  SBC ram_plr_score + $01
C - - - - - 0x018E88 06:AE78: AD DF 03  LDA ram_hi_score
C - - - - - 0x018E8B 06:AE7B: ED E2 03  SBC ram_plr_score
C - - - - - 0x018E8E 06:AE7E: B0 12     BCS bra_AE92_RTS
; if hi-score < player score, write new hi-score
C - - - - - 0x018E90 06:AE80: AD E2 03  LDA ram_plr_score
C - - - - - 0x018E93 06:AE83: 8D DF 03  STA ram_hi_score
C - - - - - 0x018E96 06:AE86: AD E3 03  LDA ram_plr_score + $01
C - - - - - 0x018E99 06:AE89: 8D E0 03  STA ram_hi_score + $01
C - - - - - 0x018E9C 06:AE8C: AD E4 03  LDA ram_plr_score + $02
C - - - - - 0x018E9F 06:AE8F: 8D E1 03  STA ram_hi_score + $02
bra_AE92_RTS:
C - - - - - 0x018EA2 06:AE92: 60        RTS



loc_AE93:
C D 1 - - - 0x018EA3 06:AE93: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x018EA6 06:AE96: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x018EA9 06:AE99: A9 02     LDA #> $0201
C - - - - - 0x018EAB 06:AE9B: 85 A2     STA ram_00A2_t01_delay_hi
C - - - - - 0x018EAD 06:AE9D: A9 01     LDA #< $0201
C - - - - - 0x018EAF 06:AE9F: 85 A3     STA ram_00A3_t01_delay_lo
C - - - - - 0x018EB1 06:AEA1: A9 00     LDA #$00
C - - - - - 0x018EB3 06:AEA3: 85 D2     STA ram_00D2_data_index
C - - - - - 0x018EB5 06:AEA5: A9 1C     LDA #con_chr_bank_bg + $1C
C - - - - - 0x018EB7 06:AEA7: 85 20     STA ram_chr_bank_bg
C - - - - - 0x018EB9 06:AEA9: A9 1A     LDA #con_chr_bank_bg + $1A
C - - - - - 0x018EBB 06:AEAB: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x018EBD 06:AEAD: 20 F8 AE  JSR sub_AEF8
C - - - - - 0x018EC0 06:AEB0: 20 83 AF  JSR sub_AF83_draw_options
C - - - - - 0x018EC3 06:AEB3: 20 5B AF  JSR sub_AF5B
C - - - - - 0x018EC6 06:AEB6: 20 D4 FF  JSR sub_0x01FFE4
C - - - - - 0x018EC9 06:AEB9: 20 57 B0  JSR sub_B057
C - - - - - 0x018ECC 06:AEBC: 20 53 AF  JSR sub_AF53
C - - - - - 0x018ECF 06:AEBF: 20 CB FF  JSR sub_0x01FFDB
; title screen
C - - - - - 0x018ED2 06:AEC2: A9 01     LDA #con_script_title_screen
C - - - - - 0x018ED4 06:AEC4: 8D D4 03  STA ram_script
bra_AEC7_loop:
C - - - - - 0x018ED7 06:AEC7: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x018EDA 06:AECA: 20 D4 FF  JSR sub_0x01FFE4
C - - - - - 0x018EDD 06:AECD: C6 A3     DEC ram_00A3_t01_delay_lo
C - - - - - 0x018EDF 06:AECF: D0 04     BNE bra_AED5
C - - - - - 0x018EE1 06:AED1: C6 A2     DEC ram_00A2_t01_delay_hi
C - - - - - 0x018EE3 06:AED3: F0 1A     BEQ bra_AEEF
bra_AED5:
C - - - - - 0x018EE5 06:AED5: 20 7D B0  JSR sub_B07D
C - - - - - 0x018EE8 06:AED8: A5 36     LDA ram_buttons
C - - - - - 0x018EEA 06:AEDA: C5 38     CMP ram_prev_buttons
C - - - - - 0x018EEC 06:AEDC: F0 E9     BEQ bra_AEC7_loop
C - - - - - 0x018EEE 06:AEDE: C9 10     CMP #con_btn_Start
C - - - - - 0x018EF0 06:AEE0: D0 E5     BNE bra_AEC7_loop
C - - - - - 0x018EF2 06:AEE2: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x018EF4 06:AEE4: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x018EF6 06:AEE6: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x018EF9 06:AEE9: A9 80     LDA #$80
C - - - - - 0x018EFB 06:AEEB: 85 DC     STA ram_00DC_flag
C - - - - - 0x018EFD 06:AEED: D0 05     BNE bra_AEF4    ; jmp
bra_AEEF:
; cutscene starts automatically
C - - - - - 0x018EFF 06:AEEF: A9 01     LDA #con_script_title_screen
C - - - - - 0x018F01 06:AEF1: 8D D4 03  STA ram_script
bra_AEF4:
; bzk optimize, JMP
C - - - - - 0x018F04 06:AEF4: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x018F07 06:AEF7: 60        RTS



sub_AEF8:
C - - - - - 0x018F08 06:AEF8: 20 4A B0  JSR sub_B04A
C - - - - - 0x018F0B 06:AEFB: A9 00     LDA #con_0067_t1C_00
C - - - - - 0x018F0D 06:AEFD: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x018F0F 06:AEFF: 20 06 AF  JSR sub_AF06
; bzk optimize, JMP
C - - - - - 0x018F12 06:AF02: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
C - - - - - 0x018F15 06:AF05: 60        RTS



sub_AF06:
; in
    ; ram_0067_t1C_table_index
C - - - - - 0x018F16 06:AF06: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018F18 06:AF08: 48        PHA
C - - - - - 0x018F19 06:AF09: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x018F1B 06:AF0B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018F1D 06:AF0D: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018F20 06:AF10: A5 67     LDA ram_0067_t1C_table_index
C - - - - - 0x018F22 06:AF12: 0A        ASL
C - - - - - 0x018F23 06:AF13: AA        TAX
C - - - - - 0x018F24 06:AF14: BD 41 89  LDA tbl_0x008951,X
C - - - - - 0x018F27 06:AF17: 85 5F     STA ram_005F_t07_data
C - - - - - 0x018F29 06:AF19: BD 42 89  LDA tbl_0x008951 + $01,X
C - - - - - 0x018F2C 06:AF1C: 85 60     STA ram_005F_t07_data + $01
C - - - - - 0x018F2E 06:AF1E: A0 00     LDY #$00
C - - - - - 0x018F30 06:AF20: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F32 06:AF22: 85 51     STA ram_0051_t01
C - - - - - 0x018F34 06:AF24: C8        INY ; 01
C - - - - - 0x018F35 06:AF25: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F37 06:AF27: 85 5B     STA ram_005B_t69_ppu_lo
C - - - - - 0x018F39 06:AF29: C8        INY ; 02
C - - - - - 0x018F3A 06:AF2A: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F3C 06:AF2C: 85 5C     STA ram_005C_t02_ppu_hi
C - - - - - 0x018F3E 06:AF2E: C8        INY ; 03
C - - - - - 0x018F3F 06:AF2F: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F41 06:AF31: 85 7E     STA ram_007E_t02_metatile_id_data
C - - - - - 0x018F43 06:AF33: C8        INY ; 04
C - - - - - 0x018F44 06:AF34: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F46 06:AF36: 85 7F     STA ram_007E_t02_metatile_id_data + $01
C - - - - - 0x018F48 06:AF38: C8        INY ; 05
C - - - - - 0x018F49 06:AF39: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F4B 06:AF3B: 85 80     STA ram_0080_t03_ptr_lo
C - - - - - 0x018F4D 06:AF3D: C8        INY ; 06
C - - - - - 0x018F4E 06:AF3E: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F50 06:AF40: 85 81     STA ram_0081_t03_ptr_hi
C - - - - - 0x018F52 06:AF42: C8        INY ; 07
C - - - - - 0x018F53 06:AF43: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F55 06:AF45: 85 82     STA ram_0082_t02_data
C - - - - - 0x018F57 06:AF47: C8        INY ; 08
C - - - - - 0x018F58 06:AF48: B1 5F     LDA (ram_005F_t07_data),Y
C - - - - - 0x018F5A 06:AF4A: 85 83     STA ram_0082_t02_data + $01
C - - - - - 0x018F5C 06:AF4C: 68        PLA
C - - - - - 0x018F5D 06:AF4D: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018F5F 06:AF4F: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018F62 06:AF52: 60        RTS



sub_AF53:
C - - - - - 0x018F63 06:AF53: A9 00     LDA #con_0067_t1C_00
C - - - - - 0x018F65 06:AF55: 85 67     STA ram_0067_t1C_table_index
; bzk optimize, JMP
C - - - - - 0x018F67 06:AF57: 20 E0 B5  JSR sub_B5E0
C - - - - - 0x018F6A 06:AF5A: 60        RTS



sub_AF5B:
C - - - - - 0x018F6B 06:AF5B: 20 D1 FF  JSR sub_0x01FFE1
C - - - - - 0x018F6E 06:AF5E: A9 80     LDA #$80
C - - - - - 0x018F70 06:AF60: 8D B6 05  STA ram_05B6_player_dead_flag
C - - - - - 0x018F73 06:AF63: 8D B7 05  STA ram_05B6_player_dead_flag + $01
C - - - - - 0x018F76 06:AF66: A9 28     LDA #$28
C - - - - - 0x018F78 06:AF68: 8D B8 05  STA ram_05B8_spr_X_lo_player
C - - - - - 0x018F7B 06:AF6B: A9 D0     LDA #$D0
C - - - - - 0x018F7D 06:AF6D: 8D B9 05  STA ram_05B8_spr_X_lo_player + $01
C - - - - - 0x018F80 06:AF70: A9 B7     LDA #$B7
C - - - - - 0x018F82 06:AF72: 8D BD 05  STA ram_05BC_spr_Y_player + $01
C - - - - - 0x018F85 06:AF75: A9 AF     LDA #$AF
C - - - - - 0x018F87 06:AF77: 8D BC 05  STA ram_05BC_spr_Y_player
C - - - - - 0x018F8A 06:AF7A: A9 00     LDA #$00
C - - - - - 0x018F8C 06:AF7C: 8D BA 05  STA ram_05BA_spr_X_hi_player
C - - - - - 0x018F8F 06:AF7F: 8D BB 05  STA ram_05BA_spr_X_hi_player + $01
C - - - - - 0x018F92 06:AF82: 60        RTS



sub_AF83_draw_options:
C - - - - - 0x018F93 06:AF83: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018F95 06:AF85: 48        PHA
C - - - - - 0x018F96 06:AF86: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x018F98 06:AF88: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018F9A 06:AF8A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018F9D 06:AF8D: 20 39 9E  JSR sub_0x00BE49_draw_options
C - - - - - 0x018FA0 06:AF90: 68        PLA
C - - - - - 0x018FA1 06:AF91: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x018FA3 06:AF93: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018FA6 06:AF96: 60        RTS



loc_AF97:
C D 1 - - - 0x018FA7 06:AF97: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x018FAA 06:AF9A: A9 1F     LDA #con_chr_bank_bg + $1F
C - - - - - 0x018FAC 06:AF9C: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x018FAE 06:AF9E: A9 80     LDA #$80
C - - - - - 0x018FB0 06:AFA0: 85 A2     STA ram_00A2_t05_delay_lo
C - - - - - 0x018FB2 06:AFA2: 20 BD AF  JSR sub_AFBD_print_cutscene_text
C - - - - - 0x018FB5 06:AFA5: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x018FB8 06:AFA8: A9 18     LDA #con_chr_bank_bg + $18
C - - - - - 0x018FBA 06:AFAA: 85 20     STA ram_chr_bank_bg
C - - - - - 0x018FBC 06:AFAC: A9 BC     LDA #$BC
C - - - - - 0x018FBE 06:AFAE: 85 A2     STA ram_00A2_t06_delay_lo
C - - - - - 0x018FC0 06:AFB0: 20 22 B0  JSR sub_B022
C - - - - - 0x018FC3 06:AFB3: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x018FC6 06:AFB6: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
; bzk optimize, JMP
C - - - - - 0x018FC9 06:AFB9: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x018FCC 06:AFBC: 60        RTS



sub_AFBD_print_cutscene_text:
C - - - - - 0x018FCD 06:AFBD: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x018FD0 06:AFC0: A9 00     LDA #con_0067_t1C_00
C - - - - - 0x018FD2 06:AFC2: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x018FD4 06:AFC4: 20 E0 B5  JSR sub_B5E0
C - - - - - 0x018FD7 06:AFC7: 20 57 B0  JSR sub_B057
C - - - - - 0x018FDA 06:AFCA: 20 CB FF  JSR sub_0x01FFDB
C - - - - - 0x018FDD 06:AFCD: A9 B0     LDA #$B0
C - - - - - 0x018FDF 06:AFCF: 8D 53 04  STA ram_0453_t01_cutscene_index
bra_AFD2_loop:
C - - - - - 0x018FE2 06:AFD2: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x018FE5 06:AFD5: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x018FE7 06:AFD7: 48        PHA
C - - - - - 0x018FE8 06:AFD8: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x018FEA 06:AFDA: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018FEC 06:AFDC: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018FEF 06:AFDF: 20 58 8E  JSR sub_0x008E68_print_cutscene_text
C - - - - - 0x018FF2 06:AFE2: 68        PLA
C - - - - - 0x018FF3 06:AFE3: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x018FF5 06:AFE5: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x018FF8 06:AFE8: AD 53 04  LDA ram_0453_t01_cutscene_index
C - - - - - 0x018FFB 06:AFEB: D0 E5     BNE bra_AFD2_loop
C - - - - - 0x018FFD 06:AFED: A9 B1     LDA #$B1
C - - - - - 0x018FFF 06:AFEF: 8D 53 04  STA ram_0453_t01_cutscene_index
bra_AFF2_loop:
C - - - - - 0x019002 06:AFF2: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019005 06:AFF5: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019007 06:AFF7: 48        PHA
C - - - - - 0x019008 06:AFF8: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01900A 06:AFFA: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01900C 06:AFFC: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01900F 06:AFFF: 20 58 8E  JSR sub_0x008E68_print_cutscene_text
C - - - - - 0x019012 06:B002: 68        PLA
C - - - - - 0x019013 06:B003: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019015 06:B005: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019018 06:B008: AD 53 04  LDA ram_0453_t01_cutscene_index
C - - - - - 0x01901B 06:B00B: D0 E5     BNE bra_AFF2_loop
bra_B00D_loop:
C - - - - - 0x01901D 06:B00D: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019020 06:B010: C6 A2     DEC ram_00A2_t05_delay_lo
C - - - - - 0x019022 06:B012: F0 0A     BEQ bra_B01E
C - - - - - 0x019024 06:B014: A5 36     LDA ram_buttons
C - - - - - 0x019026 06:B016: C5 38     CMP ram_prev_buttons
C - - - - - 0x019028 06:B018: F0 F3     BEQ bra_B00D_loop
C - - - - - 0x01902A 06:B01A: C9 10     CMP #con_btn_Start
C - - - - - 0x01902C 06:B01C: D0 EF     BNE bra_B00D_loop
bra_B01E:
; bzk optimize, JMP
C - - - - - 0x01902E 06:B01E: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019031 06:B021: 60        RTS



sub_B022:
C - - - - - 0x019032 06:B022: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019035 06:B025: 20 6F B0  JSR sub_B06F
C - - - - - 0x019038 06:B028: A9 01     LDA #con_0067_t1C_01
C - - - - - 0x01903A 06:B02A: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x01903C 06:B02C: 20 E0 B5  JSR sub_B5E0
C - - - - - 0x01903F 06:B02F: 20 57 B0  JSR sub_B057
C - - - - - 0x019042 06:B032: 20 CB FF  JSR sub_0x01FFDB
bra_B035_loop:
C - - - - - 0x019045 06:B035: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019048 06:B038: C6 A2     DEC ram_00A2_t06_delay_lo
C - - - - - 0x01904A 06:B03A: F0 0A     BEQ bra_B046
C - - - - - 0x01904C 06:B03C: A5 36     LDA ram_buttons
C - - - - - 0x01904E 06:B03E: C5 38     CMP ram_prev_buttons
C - - - - - 0x019050 06:B040: F0 F3     BEQ bra_B035_loop
C - - - - - 0x019052 06:B042: C9 10     CMP #con_btn_Start
C - - - - - 0x019054 06:B044: D0 EF     BNE bra_B035_loop
bra_B046:
; bzk optimize, JMP
C - - - - - 0x019056 06:B046: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019059 06:B049: 60        RTS



sub_B04A:
C - - - - - 0x01905A 06:B04A: A9 30     LDA #$30
C - - - - - 0x01905C 06:B04C: 8D 00 20  STA $2000
C - - - - - 0x01905F 06:B04F: A9 00     LDA #$00
C - - - - - 0x019061 06:B051: 8D 01 20  STA $2001
C - - - - - 0x019064 06:B054: 85 3B     STA ram_for_2001
C - - - - - 0x019066 06:B056: 60        RTS



sub_B057:
C - - - - - 0x019067 06:B057: A5 3A     LDA ram_for_2000
C - - - - - 0x019069 06:B059: 8D 00 20  STA $2000
C - - - - - 0x01906C 06:B05C: A5 3B     LDA ram_for_2001
C - - - - - 0x01906E 06:B05E: 8D 01 20  STA $2001
C - - - - - 0x019071 06:B061: A5 43     LDA ram_scroll_X_lo
C - - - - - 0x019073 06:B063: 8D 05 20  STA $2005
C - - - - - 0x019076 06:B066: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x019078 06:B068: 8D 05 20  STA $2005
; bzk optimize, JMP
C - - - - - 0x01907B 06:B06B: 20 8C FF  JSR sub_0x01FF9C_enable_rendering
C - - - - - 0x01907E 06:B06E: 60        RTS



sub_B06F:
C - - - - - 0x01907F 06:B06F: 20 4A B0  JSR sub_B04A
C - - - - - 0x019082 06:B072: A9 01     LDA #con_0067_t1C_01
C - - - - - 0x019084 06:B074: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x019086 06:B076: 20 06 AF  JSR sub_AF06
; bzk optimize, JMP
C - - - - - 0x019089 06:B079: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
C - - - - - 0x01908C 06:B07C: 60        RTS



sub_B07D:
C - - - - - 0x01908D 06:B07D: A5 36     LDA ram_buttons
C - - - - - 0x01908F 06:B07F: C9 08     CMP #con_btn_Up
C - - - - - 0x019091 06:B081: F0 05     BEQ bra_B088_pressed_Up
C - - - - - 0x019093 06:B083: C9 04     CMP #con_btn_Down
C - - - - - 0x019095 06:B085: F0 17     BEQ bra_B09E_pressed_Down
bra_B087_RTS:
C - - - - - 0x019097 06:B087: 60        RTS
bra_B088_pressed_Up:
C - - - - - 0x019098 06:B088: A9 02     LDA #$02
C - - - - - 0x01909A 06:B08A: 85 A2     STA ram_00A2_t01_delay_hi
C - - - - - 0x01909C 06:B08C: AD D4 03  LDA ram_script
C - - - - - 0x01909F 06:B08F: C9 01     CMP #con_script_title_screen
C - - - - - 0x0190A1 06:B091: F0 F4     BEQ bra_B087_RTS
C - - - - - 0x0190A3 06:B093: A9 00     LDA #$00
C - - - - - 0x0190A5 06:B095: 20 B4 B0  JSR sub_B0B4
; move cursor to "1p game mode" option
C - - - - - 0x0190A8 06:B098: A9 01     LDA #con_script_title_screen
C - - - - - 0x0190AA 06:B09A: 8D D4 03  STA ram_script
C - - - - - 0x0190AD 06:B09D: 60        RTS
bra_B09E_pressed_Down:
C - - - - - 0x0190AE 06:B09E: A9 02     LDA #$02
C - - - - - 0x0190B0 06:B0A0: 85 A2     STA ram_00A2_t01_delay_hi
C - - - - - 0x0190B2 06:B0A2: AD D4 03  LDA ram_script
C - - - - - 0x0190B5 06:B0A5: C9 04     CMP #con_script_battle_mode
C - - - - - 0x0190B7 06:B0A7: F0 DE     BEQ bra_B087_RTS
C - - - - - 0x0190B9 06:B0A9: A9 01     LDA #$01
C - - - - - 0x0190BB 06:B0AB: 20 B4 B0  JSR sub_B0B4
; move cursor to "battle mode" option
C - - - - - 0x0190BE 06:B0AE: A9 04     LDA #con_script_battle_mode
C - - - - - 0x0190C0 06:B0B0: 8D D4 03  STA ram_script
C - - - - - 0x0190C3 06:B0B3: 60        RTS



sub_B0B4:
; in
    ; Y = 
; bzk optimize, delete TAY, use LDY instead of LDA before JSR to here
C - - - - - 0x0190C4 06:B0B4: A8        TAY
C - - - - - 0x0190C5 06:B0B5: A2 00     LDX #$00
C - - - - - 0x0190C7 06:B0B7: A9 21     LDA #> $21C9
C - - - - - 0x0190C9 06:B0B9: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0190CC 06:B0BC: E8        INX
C - - - - - 0x0190CD 06:B0BD: A9 C9     LDA #< $21C9
C - - - - - 0x0190CF 06:B0BF: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0190D2 06:B0C2: E8        INX
C - - - - - 0x0190D3 06:B0C3: B9 2F B1  LDA tbl_B12F_counter,Y
C - - - - - 0x0190D6 06:B0C6: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0190D9 06:B0C9: E8        INX
C - - - - - 0x0190DA 06:B0CA: A9 22     LDA #> $2209
C - - - - - 0x0190DC 06:B0CC: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0190DF 06:B0CF: E8        INX
C - - - - - 0x0190E0 06:B0D0: A9 09     LDA #< $2209
C - - - - - 0x0190E2 06:B0D2: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0190E5 06:B0D5: E8        INX
C - - - - - 0x0190E6 06:B0D6: B9 31 B1  LDA tbl_B131_counter,Y
C - - - - - 0x0190E9 06:B0D9: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x0190EC 06:B0DC: E8        INX
C - - - - - 0x0190ED 06:B0DD: B9 33 B1  LDA tbl_B133_tile_1,Y
C - - - - - 0x0190F0 06:B0E0: 85 67     STA ram_0067_t15_tile_1
C - - - - - 0x0190F2 06:B0E2: B9 35 B1  LDA tbl_B135_tile_2,Y
C - - - - - 0x0190F5 06:B0E5: 85 69     STA ram_0069_t05_tile_2
; 
C - - - - - 0x0190F7 06:B0E7: A9 DA     LDA #$DA    ; < 23DA
C - - - - - 0x0190F9 06:B0E9: 85 68     STA ram_0068_t27_ppu_lo
C - - - - - 0x0190FB 06:B0EB: A0 04     LDY #$04
bra_B0ED_loop:
C - - - - - 0x0190FD 06:B0ED: A9 23     LDA #$23
C - - - - - 0x0190FF 06:B0EF: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019102 06:B0F2: E8        INX
C - - - - - 0x019103 06:B0F3: A5 68     LDA ram_0068_t27_ppu_lo
C - - - - - 0x019105 06:B0F5: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019108 06:B0F8: E8        INX
C - - - - - 0x019109 06:B0F9: E6 68     INC ram_0068_t27_ppu_lo
C - - - - - 0x01910B 06:B0FB: A5 67     LDA ram_0067_t15_tile_1
C - - - - - 0x01910D 06:B0FD: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019110 06:B100: E8        INX
C - - - - - 0x019111 06:B101: 88        DEY
C - - - - - 0x019112 06:B102: D0 E9     BNE bra_B0ED_loop
; 
C - - - - - 0x019114 06:B104: A9 E2     LDA #$E2    ; < 23E2
C - - - - - 0x019116 06:B106: 85 68     STA ram_0068_t28_ppu_lo
C - - - - - 0x019118 06:B108: A0 04     LDY #$04
bra_B10A_loop:
C - - - - - 0x01911A 06:B10A: A9 23     LDA #$23
C - - - - - 0x01911C 06:B10C: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01911F 06:B10F: E8        INX
C - - - - - 0x019120 06:B110: A5 68     LDA ram_0068_t28_ppu_lo
C - - - - - 0x019122 06:B112: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019125 06:B115: E8        INX
C - - - - - 0x019126 06:B116: E6 68     INC ram_0068_t28_ppu_lo
C - - - - - 0x019128 06:B118: A5 69     LDA ram_0069_t05_tile_2
C - - - - - 0x01912A 06:B11A: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01912D 06:B11D: E8        INX
C - - - - - 0x01912E 06:B11E: 88        DEY
C - - - - - 0x01912F 06:B11F: D0 E9     BNE bra_B10A_loop
; 
C - - - - - 0x019131 06:B121: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x019133 06:B123: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x019135 06:B125: 85 02     STA ram_buffers_flags
C - - - - - 0x019137 06:B127: A9 13     LDA #con_sfx_move_cursor
C - - - - - 0x019139 06:B129: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x01913B 06:B12B: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01913E 06:B12E: 60        RTS



tbl_B12F_counter:
- D 1 - - - 0x01913F 06:B12F: A7        .byte $A7   ; 00 
- D 1 - - - 0x019140 06:B130: 80        .byte $80   ; 01 



tbl_B131_counter:
- D 1 - - - 0x019141 06:B131: 80        .byte $80   ; 00 
- D 1 - - - 0x019142 06:B132: A7        .byte $A7   ; 01 



tbl_B133_tile_1:
- D 1 - - - 0x019143 06:B133: F0        .byte $F0   ; 00 
- D 1 - - - 0x019144 06:B134: 00        .byte $00   ; 01 



tbl_B135_tile_2:
- D 1 - - - 0x019145 06:B135: 00        .byte $00   ; 00 
- D 1 - - - 0x019146 06:B136: 0F        .byte $0F   ; 01 



loc_B137:
C D 1 - - - 0x019147 06:B137: AD C7 05  LDA ram_05C7_flags
C - - - - - 0x01914A 06:B13A: C9 C0     CMP #$40 + $80
C - - - - - 0x01914C 06:B13C: 90 16     BCC bra_B154
C - - - - - 0x01914E 06:B13E: A9 00     LDA #$00
C - - - - - 0x019150 06:B140: 8D C8 05  STA ram_05C8_t01_data_index
C - - - - - 0x019153 06:B143: 8D C9 05  STA ram_05C9_t01_timer
C - - - - - 0x019156 06:B146: 8D CA 05  STA ram_05CA_t02_flag
C - - - - - 0x019159 06:B149: 8D CB 05  STA ram_05CB_t02_nametable
C - - - - - 0x01915C 06:B14C: AD C7 05  LDA ram_05C7_flags
C - - - - - 0x01915F 06:B14F: 29 BF     AND #$40 ^ $FF
C - - - - - 0x019161 06:B151: 8D C7 05  STA ram_05C7_flags
bra_B154:
C - - - - - 0x019164 06:B154: 29 0F     AND #$0F
C - - - - - 0x019166 06:B156: F0 04     BEQ bra_B15C
C - - - - - 0x019168 06:B158: 4C D4 B1  JMP loc_B1D4


; bzk garbage
- - - - - - 0x01916B 06:B15B: 60        RTS



bra_B15C:
C - - - - - 0x01916C 06:B15C: AD CD 05  LDA ram_05CD_city_sector
C - - - - - 0x01916F 06:B15F: 29 F0     AND #$F0
; / 10
C - - - - - 0x019171 06:B161: 4A        LSR
C - - - - - 0x019172 06:B162: 4A        LSR
C - - - - - 0x019173 06:B163: 4A        LSR
C - - - - - 0x019174 06:B164: 4A        LSR
; 
C - - - - - 0x019175 06:B165: C5 3F     CMP ram_scroll_Y_hi
C - - - - - 0x019177 06:B167: D0 0B     BNE bra_B174
C - - - - - 0x019179 06:B169: AD CE 05  LDA ram_05CE_sector_drop
C - - - - - 0x01917C 06:B16C: 29 F0     AND #$F0
C - - - - - 0x01917E 06:B16E: C5 40     CMP ram_scroll_Y_lo
C - - - - - 0x019180 06:B170: F0 5C     BEQ bra_B1CE
C - - - - - 0x019182 06:B172: 90 5A     BCC bra_B1CE
bra_B174:
C - - - - - 0x019184 06:B174: AD C9 05  LDA ram_05C9_t02_timer
C - - - - - 0x019187 06:B177: D0 51     BNE bra_B1CA
C - - - - - 0x019189 06:B179: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x01918B 06:B17B: 48        PHA
C - - - - - 0x01918C 06:B17C: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x01918E 06:B17E: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019190 06:B180: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019193 06:B183: AD CC 05  LDA ram_05CC_table_index
C - - - - - 0x019196 06:B186: 0A        ASL
C - - - - - 0x019197 06:B187: AA        TAX
C - - - - - 0x019198 06:B188: BD F4 98  LDA tbl_0x007904_metatiles,X
C - - - - - 0x01919B 06:B18B: 85 5B     STA ram_005B_t38_data
C - - - - - 0x01919D 06:B18D: BD F5 98  LDA tbl_0x007904_metatiles + $01,X
C - - - - - 0x0191A0 06:B190: 85 5C     STA ram_005B_t38_data + $01
C - - - - - 0x0191A2 06:B192: AD C8 05  LDA ram_05C8_t02_data_index
C - - - - - 0x0191A5 06:B195: 0A        ASL
C - - - - - 0x0191A6 06:B196: A8        TAY
C - - - - - 0x0191A7 06:B197: B1 5B     LDA (ram_005B_t38_data),Y
C - - - - - 0x0191A9 06:B199: 85 5D     STA ram_005D_t19_data_metatiles
C - - - - - 0x0191AB 06:B19B: C8        INY
C - - - - - 0x0191AC 06:B19C: B1 5B     LDA (ram_005B_t38_data),Y
C - - - - - 0x0191AE 06:B19E: 85 5E     STA ram_005D_t19_data_metatiles + $01
C - - - - - 0x0191B0 06:B1A0: AD CA 05  LDA ram_05CA_t01_ppu_lo
C - - - - - 0x0191B3 06:B1A3: 85 67     STA ram_0067_t16_ppu_lo_init
C - - - - - 0x0191B5 06:B1A5: AD CB 05  LDA ram_05CB_t01_ppu_hi
C - - - - - 0x0191B8 06:B1A8: 85 68     STA ram_0068_t29_ppu_hi_init
C - - - - - 0x0191BA 06:B1AA: 20 DD FF  JSR sub_0x01FFED
C - - - - - 0x0191BD 06:B1AD: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x0191BF 06:B1AF: A5 02     LDA ram_buffers_flags
C - - - - - 0x0191C1 06:B1B1: 09 04     ORA #con_buffer_ready_04
C - - - - - 0x0191C3 06:B1B3: 85 02     STA ram_buffers_flags
C - - - - - 0x0191C5 06:B1B5: 68        PLA
C - - - - - 0x0191C6 06:B1B6: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0191C8 06:B1B8: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0191CB 06:B1BB: A9 10     LDA #$10
C - - - - - 0x0191CD 06:B1BD: 8D C9 05  STA ram_05C9_t02_timer
C - - - - - 0x0191D0 06:B1C0: EE C8 05  INC ram_05C8_t02_data_index
C - - - - - 0x0191D3 06:B1C3: AD C8 05  LDA ram_05C8_t02_data_index
C - - - - - 0x0191D6 06:B1C6: C9 02     CMP #$02
C - - - - - 0x0191D8 06:B1C8: B0 04     BCS bra_B1CE
bra_B1CA:
C - - - - - 0x0191DA 06:B1CA: CE C9 05  DEC ram_05C9_t02_timer
C - - - - - 0x0191DD 06:B1CD: 60        RTS
bra_B1CE:
C - - - - - 0x0191DE 06:B1CE: A9 00     LDA #$00
C - - - - - 0x0191E0 06:B1D0: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x0191E3 06:B1D3: 60        RTS



loc_B1D4:
C D 1 - - - 0x0191E4 06:B1D4: AD C9 05  LDA ram_05C9_t01_timer
C - - - - - 0x0191E7 06:B1D7: D0 05     BNE bra_B1DE
C - - - - - 0x0191E9 06:B1D9: 20 EC B1  JSR sub_B1EC
C - - - - - 0x0191EC 06:B1DC: 90 0D     BCC bra_B1EB_RTS
bra_B1DE:
C - - - - - 0x0191EE 06:B1DE: CE C9 05  DEC ram_05C9_t01_timer
C - - - - - 0x0191F1 06:B1E1: AD CA 05  LDA ram_05CA_t02_flag
C - - - - - 0x0191F4 06:B1E4: F0 05     BEQ bra_B1EB_RTS
C - - - - - 0x0191F6 06:B1E6: A9 00     LDA #$00
C - - - - - 0x0191F8 06:B1E8: 8D C7 05  STA ram_05C7_flags
bra_B1EB_RTS:
C - - - - - 0x0191FB 06:B1EB: 60        RTS



sub_B1EC:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0191FC 06:B1EC: A5 02     LDA ram_buffers_flags
C - - - - - 0x0191FE 06:B1EE: D0 15     BNE bra_B205
C - - - - - 0x019200 06:B1F0: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019202 06:B1F2: 48        PHA
C - - - - - 0x019203 06:B1F3: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x019205 06:B1F5: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019207 06:B1F7: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01920A 06:B1FA: 20 07 B2  JSR sub_B207
C - - - - - 0x01920D 06:B1FD: 68        PLA
C - - - - - 0x01920E 06:B1FE: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019210 06:B200: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019213 06:B203: 38        SEC
C - - - - - 0x019214 06:B204: 60        RTS
bra_B205:
C - - - - - 0x019215 06:B205: 18        CLC
C - - - - - 0x019216 06:B206: 60        RTS



sub_B207:
C - - - - - 0x019217 06:B207: AD C7 05  LDA ram_05C7_flags
C - - - - - 0x01921A 06:B20A: 29 0F     AND #$0F
C - - - - - 0x01921C 06:B20C: 0A        ASL
C - - - - - 0x01921D 06:B20D: AA        TAX
C - - - - - 0x01921E 06:B20E: BD 02 99  LDA tbl_0x007912_metatiles,X
C - - - - - 0x019221 06:B211: 85 5F     STA ram_005F_t08_data
C - - - - - 0x019223 06:B213: BD 03 99  LDA tbl_0x007912_metatiles + $01,X
C - - - - - 0x019226 06:B216: 85 60     STA ram_005F_t08_data + $01
C - - - - - 0x019228 06:B218: AD C8 05  LDA ram_05C8_t01_data_index
C - - - - - 0x01922B 06:B21B: 0A        ASL
C - - - - - 0x01922C 06:B21C: A8        TAY
C - - - - - 0x01922D 06:B21D: B1 5F     LDA (ram_005F_t08_data),Y
C - - - - - 0x01922F 06:B21F: 85 5B     STA ram_005B_t37_data
C - - - - - 0x019231 06:B221: C8        INY
C - - - - - 0x019232 06:B222: B1 5F     LDA (ram_005F_t08_data),Y
C - - - - - 0x019234 06:B224: 85 5C     STA ram_005B_t37_data + $01
C - - - - - 0x019236 06:B226: A0 00     LDY #$00
C - - - - - 0x019238 06:B228: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x01923A 06:B22A: 85 67     STA ram_0067_t16_ppu_lo_init
C - - - - - 0x01923C 06:B22C: C8        INY ; 01
C - - - - - 0x01923D 06:B22D: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x01923F 06:B22F: 85 68     STA ram_0068_t30_ppu_hi
C - - - - - 0x019241 06:B231: C8        INY ; 02
C - - - - - 0x019242 06:B232: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x019244 06:B234: 85 5D     STA ram_005D_t19_data_metatiles
C - - - - - 0x019246 06:B236: C8        INY ; 03
C - - - - - 0x019247 06:B237: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x019249 06:B239: 85 5E     STA ram_005D_t19_data_metatiles + $01
C - - - - - 0x01924B 06:B23B: C8        INY ; 04
C - - - - - 0x01924C 06:B23C: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x01924E 06:B23E: 85 6F     STA ram_006F_t10_buffer_index_offset
C - - - - - 0x019250 06:B240: AD CB 05  LDA ram_05CB_t02_nametable
; A = 00/01
C - - - - - 0x019253 06:B243: 48        PHA
; * 04
C - - - - - 0x019254 06:B244: 0A        ASL
C - - - - - 0x019255 06:B245: 0A        ASL
; 
C - - - - - 0x019256 06:B246: 18        CLC
C - - - - - 0x019257 06:B247: 65 68     ADC ram_0068_t30_ppu_hi
C - - - - - 0x019259 06:B249: 85 68     STA ram_0068_t29_ppu_hi_init
C - - - - - 0x01925B 06:B24B: 68        PLA
; bzk optimize, delete CLC here and at 0x019260,
; use ASL instead of ROR
C - - - - - 0x01925C 06:B24C: 18        CLC
C - - - - - 0x01925D 06:B24D: 6A        ROR
C - - - - - 0x01925E 06:B24E: 6A        ROR
C - - - - - 0x01925F 06:B24F: 6A        ROR
; A = 00/40
C - - - - - 0x019260 06:B250: 18        CLC
C - - - - - 0x019261 06:B251: 65 6F     ADC ram_006F_t10_buffer_index_offset
C - - - - - 0x019263 06:B253: AA        TAX
C - - - - - 0x019264 06:B254: BD 00 02  LDA ram_attr_buffer,X
C - - - - - 0x019267 06:B257: C8        INY ; 05
C - - - - - 0x019268 06:B258: 31 5B     AND (ram_005B_t37_data),Y
C - - - - - 0x01926A 06:B25A: C8        INY ; 06
C - - - - - 0x01926B 06:B25B: 11 5B     ORA (ram_005B_t37_data),Y
C - - - - - 0x01926D 06:B25D: 85 70     STA ram_0070_t13_attribute
C - - - - - 0x01926F 06:B25F: 9D 00 02  STA ram_attr_buffer,X
C - - - - - 0x019272 06:B262: C8        INY ; 07
C - - - - - 0x019273 06:B263: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x019275 06:B265: 10 07     BPL bra_B26E
; FF
C - - - - - 0x019277 06:B267: A9 01     LDA #$01
C - - - - - 0x019279 06:B269: 8D CA 05  STA ram_05CA_t02_flag
C - - - - - 0x01927C 06:B26C: D0 09     BNE bra_B277    ; jmp
bra_B26E:
C - - - - - 0x01927E 06:B26E: 8D C8 05  STA ram_05C8_t01_data_index
C - - - - - 0x019281 06:B271: C8        INY ; 08
C - - - - - 0x019282 06:B272: B1 5B     LDA (ram_005B_t37_data),Y
C - - - - - 0x019284 06:B274: 8D C9 05  STA ram_05C9_t01_timer
bra_B277:
C - - - - - 0x019287 06:B277: 20 DD FF  JSR sub_0x01FFED
C - - - - - 0x01928A 06:B27A: AC CB 05  LDY ram_05CB_t02_nametable
C - - - - - 0x01928D 06:B27D: B9 9A B2  LDA tbl_B29A_ppu_address_hi,Y
C - - - - - 0x019290 06:B280: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019293 06:B283: A5 6F     LDA ram_006F_t10_buffer_index_offset
C - - - - - 0x019295 06:B285: 18        CLC
C - - - - - 0x019296 06:B286: 69 C0     ADC #$C0
C - - - - - 0x019298 06:B288: 9D C1 02  STA ram_02C0_ppu_buffer + $01,X
C - - - - - 0x01929B 06:B28B: A5 70     LDA ram_0070_t13_attribute
C - - - - - 0x01929D 06:B28D: 9D C2 02  STA ram_02C0_ppu_buffer + $02,X
C - - - - - 0x0192A0 06:B290: E8        INX
C - - - - - 0x0192A1 06:B291: E8        INX
C - - - - - 0x0192A2 06:B292: E8        INX
C - - - - - 0x0192A3 06:B293: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x0192A5 06:B295: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x0192A7 06:B297: 85 02     STA ram_buffers_flags
C - - - - - 0x0192A9 06:B299: 60        RTS



tbl_B29A_ppu_address_hi:
- D 1 - - - 0x0192AA 06:B29A: 23        .byte $23   ; 00 
- D 1 - - - 0x0192AB 06:B29B: 27        .byte $27   ; 01 



loc_B29C:
C D 1 - - - 0x0192AC 06:B29C: 20 A3 B2  JSR sub_B2A3
; bzk optimize, JMP
C - - - - - 0x0192AF 06:B29F: 20 FD B2  JSR sub_B2FD
C - - - - - 0x0192B2 06:B2A2: 60        RTS



sub_B2A3:
C - - - - - 0x0192B3 06:B2A3: A5 DA     LDA ram_00DA_flags
C - - - - - 0x0192B5 06:B2A5: 29 20     AND #con_00DA_20
C - - - - - 0x0192B7 06:B2A7: D0 2C     BNE bra_B2D5_RTS
C - - - - - 0x0192B9 06:B2A9: AD AD 05  LDA ram_05AD
C - - - - - 0x0192BC 06:B2AC: 29 01     AND #$01
C - - - - - 0x0192BE 06:B2AE: 8D C7 05  STA ram_05C7_flags
C - - - - - 0x0192C1 06:B2B1: A9 00     LDA #$00
C - - - - - 0x0192C3 06:B2B3: 8D C8 05  STA ram_05C8_t03_data_index
C - - - - - 0x0192C6 06:B2B6: A9 01     LDA #$01
C - - - - - 0x0192C8 06:B2B8: 8D C9 05  STA ram_05C9_t03_timer
C - - - - - 0x0192CB 06:B2BB: A9 20     LDA #$20
C - - - - - 0x0192CD 06:B2BD: 8D CA 05  STA ram_05CA_t03_timer
C - - - - - 0x0192D0 06:B2C0: A6 3C     LDX ram_city
C - - - - - 0x0192D2 06:B2C2: BD D6 B2  LDA tbl_B2D6_table_index,X
C - - - - - 0x0192D5 06:B2C5: 8D CB 05  STA ram_05CB_t03_table_index
C - - - - - 0x0192D8 06:B2C8: A9 20     LDA #con_00DA_20
C - - - - - 0x0192DA 06:B2CA: 05 DA     ORA ram_00DA_flags
C - - - - - 0x0192DC 06:B2CC: 85 DA     STA ram_00DA_flags
C - - - - - 0x0192DE 06:B2CE: A9 17     LDA #con_sfx_open_door
C - - - - - 0x0192E0 06:B2D0: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x0192E2 06:B2D2: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_B2D5_RTS:
C - - - - - 0x0192E5 06:B2D5: 60        RTS



tbl_B2D6_table_index:
; index for 0x0059AD
; 00 = 
; 01 = 
; FF = placeholder, should be never used
- - - - - - 0x0192E6 06:B2D6: FF        .byte $FF   ; 00 
- - - - - - 0x0192E7 06:B2D7: FF        .byte $FF   ; 01 
- - - - - - 0x0192E8 06:B2D8: FF        .byte $FF   ; 02 
- - - - - - 0x0192E9 06:B2D9: FF        .byte $FF   ; 03 
- D 1 - - - 0x0192EA 06:B2DA: 00        .byte $00   ; 04 
- - - - - - 0x0192EB 06:B2DB: FF        .byte $FF   ; 05 
- D 1 - - - 0x0192EC 06:B2DC: 01        .byte $01   ; 06 
- D 1 - - - 0x0192ED 06:B2DD: 01        .byte $01   ; 07 
- D 1 - - - 0x0192EE 06:B2DE: 00        .byte $00   ; 08 
- - - - - - 0x0192EF 06:B2DF: FF        .byte $FF   ; 09 
- - - - - - 0x0192F0 06:B2E0: FF        .byte $FF   ; 0A 
- D 1 - - - 0x0192F1 06:B2E1: 01        .byte $01   ; 0B 
- D 1 - - - 0x0192F2 06:B2E2: 01        .byte $01   ; 0C 
- - - - - - 0x0192F3 06:B2E3: FF        .byte $FF   ; 0D 
- - - - - - 0x0192F4 06:B2E4: 01        .byte $01   ; 0E 
- D 1 - - - 0x0192F5 06:B2E5: 00        .byte $00   ; 0F 
- - - - - - 0x0192F6 06:B2E6: FF        .byte $FF   ; 10 
- - - - - - 0x0192F7 06:B2E7: FF        .byte $FF   ; 11 
- - - - - - 0x0192F8 06:B2E8: 01        .byte $01   ; 12 
- D 1 - - - 0x0192F9 06:B2E9: 01        .byte $01   ; 13 
- D 1 - - - 0x0192FA 06:B2EA: 01        .byte $01   ; 14 
- D 1 - - - 0x0192FB 06:B2EB: 01        .byte $01   ; 15 
- D 1 - - - 0x0192FC 06:B2EC: 01        .byte $01   ; 16 
- - - - - - 0x0192FD 06:B2ED: FF        .byte $FF   ; 17 
- - - - - - 0x0192FE 06:B2EE: FF        .byte $FF   ; 18 
- - - - - - 0x0192FF 06:B2EF: FF        .byte $FF   ; 19 
- - - - - - 0x019300 06:B2F0: FF        .byte $FF   ; 1A 
- - - - - - 0x019301 06:B2F1: FF        .byte $FF   ; 1B 
- - - - - - 0x019302 06:B2F2: 01        .byte $01   ; 1C 
- - - - - - 0x019303 06:B2F3: FF        .byte $FF   ; 1D 
- D 1 - - - 0x019304 06:B2F4: 01        .byte $01   ; 1E 
- D 1 - - - 0x019305 06:B2F5: 01        .byte $01   ; 1F 
- D 1 - - - 0x019306 06:B2F6: 01        .byte $01   ; 20 
- D 1 - - - 0x019307 06:B2F7: 01        .byte $01   ; 21 
- D 1 - - - 0x019308 06:B2F8: 01        .byte $01   ; 22 
; bzk garbage
- - - - - - 0x019309 06:B2F9: FF        .byte $FF   ; 23 
- - - - - - 0x01930A 06:B2FA: FF        .byte $FF   ; 24 
- - - - - - 0x01930B 06:B2FB: FF        .byte $FF   ; 25 
- - - - - - 0x01930C 06:B2FC: FF        .byte $FF   ; 26 



sub_B2FD:
C - - - - - 0x01930D 06:B2FD: CE CA 05  DEC ram_05CA_t03_timer
C - - - - - 0x019310 06:B300: F0 04     BEQ bra_B306
; bzk optimize, JMP
C - - - - - 0x019312 06:B302: 20 0D B3  JSR sub_B30D
C - - - - - 0x019315 06:B305: 60        RTS
bra_B306:
C - - - - - 0x019316 06:B306: A9 10     LDA #con_00DA_10
C - - - - - 0x019318 06:B308: 05 DA     ORA ram_00DA_flags
C - - - - - 0x01931A 06:B30A: 85 DA     STA ram_00DA_flags
C - - - - - 0x01931C 06:B30C: 60        RTS



sub_B30D:
C - - - - - 0x01931D 06:B30D: CE C9 05  DEC ram_05C9_t03_timer
C - - - - - 0x019320 06:B310: F0 03     BEQ bra_B315
C - - - - - 0x019322 06:B312: 4C 96 B3  JMP loc_B396_RTS
bra_B315:
C - - - - - 0x019325 06:B315: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019327 06:B317: 48        PHA
C - - - - - 0x019328 06:B318: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x01932A 06:B31A: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01932C 06:B31C: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01932F 06:B31F: A9 04     LDA #$04
C - - - - - 0x019331 06:B321: 8D C9 05  STA ram_05C9_t03_timer
C - - - - - 0x019334 06:B324: AD CB 05  LDA ram_05CB_t03_table_index
C - - - - - 0x019337 06:B327: 0A        ASL
C - - - - - 0x019338 06:B328: AA        TAX
C - - - - - 0x019339 06:B329: BD 9B 99  LDA tbl_0x0059AB_metatiles,X
C - - - - - 0x01933C 06:B32C: 85 5B     STA ram_005B_t36_data
C - - - - - 0x01933E 06:B32E: BD 9C 99  LDA tbl_0x0059AB_metatiles + $01,X
C - - - - - 0x019341 06:B331: 85 5C     STA ram_005B_t36_data + $01
C - - - - - 0x019343 06:B333: AD C8 05  LDA ram_05C8_t03_data_index
C - - - - - 0x019346 06:B336: 0A        ASL
C - - - - - 0x019347 06:B337: A8        TAY
C - - - - - 0x019348 06:B338: B1 5B     LDA (ram_005B_t36_data),Y
C - - - - - 0x01934A 06:B33A: 85 5D     STA ram_005D_t11_ppu_data
C - - - - - 0x01934C 06:B33C: C8        INY
C - - - - - 0x01934D 06:B33D: B1 5B     LDA (ram_005B_t36_data),Y
C - - - - - 0x01934F 06:B33F: 85 5E     STA ram_005D_t11_ppu_data + $01
C - - - - - 0x019351 06:B341: AE C7 05  LDX ram_05C7_flags
C - - - - - 0x019354 06:B344: BD 97 B3  LDA tbl_B397_ppu_address_hi,X
C - - - - - 0x019357 06:B347: 85 67     STA ram_0067_t59_ppu_hi
C - - - - - 0x019359 06:B349: A9 46     LDA #$46    ; < xx46
C - - - - - 0x01935B 06:B34B: 85 68     STA ram_0068_t34_ppu_lo
C - - - - - 0x01935D 06:B34D: A0 00     LDY #$00
C - - - - - 0x01935F 06:B34F: A2 00     LDX #$00
bra_B351_loop:
C - - - - - 0x019361 06:B351: A9 04     LDA #$04
C - - - - - 0x019363 06:B353: 85 69     STA ram_0069_t11_tiles_counter
bra_B355_loop:
C - - - - - 0x019365 06:B355: A5 67     LDA ram_0067_t59_ppu_hi
C - - - - - 0x019367 06:B357: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01936A 06:B35A: A5 68     LDA ram_0068_t34_ppu_lo
C - - - - - 0x01936C 06:B35C: 9D C1 02  STA ram_02C0_ppu_buffer + $01,X
C - - - - - 0x01936F 06:B35F: B1 5D     LDA (ram_005D_t11_ppu_data),Y
C - - - - - 0x019371 06:B361: 9D C2 02  STA ram_02C0_ppu_buffer + $02,X
C - - - - - 0x019374 06:B364: E6 68     INC ram_0068_t34_ppu_lo
C - - - - - 0x019376 06:B366: C8        INY
C - - - - - 0x019377 06:B367: E8        INX
C - - - - - 0x019378 06:B368: E8        INX
C - - - - - 0x019379 06:B369: E8        INX
C - - - - - 0x01937A 06:B36A: E0 48     CPX #$48
C - - - - - 0x01937C 06:B36C: B0 0D     BCS bra_B37B
C - - - - - 0x01937E 06:B36E: C6 69     DEC ram_0069_t11_tiles_counter
C - - - - - 0x019380 06:B370: D0 E3     BNE bra_B355_loop
C - - - - - 0x019382 06:B372: A5 68     LDA ram_0068_t34_ppu_lo
C - - - - - 0x019384 06:B374: 18        CLC
C - - - - - 0x019385 06:B375: 69 1C     ADC #$1C
C - - - - - 0x019387 06:B377: 85 68     STA ram_0068_t34_ppu_lo
C - - - - - 0x019389 06:B379: D0 D6     BNE bra_B351_loop   ; jmp
bra_B37B:
C - - - - - 0x01938B 06:B37B: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x01938D 06:B37D: A9 04     LDA #con_buffer_ready_04
C - - - - - 0x01938F 06:B37F: 85 02     STA ram_buffers_flags
C - - - - - 0x019391 06:B381: EE C8 05  INC ram_05C8_t03_data_index
C - - - - - 0x019394 06:B384: AD C8 05  LDA ram_05C8_t03_data_index
C - - - - - 0x019397 06:B387: C9 05     CMP #$05
C - - - - - 0x019399 06:B389: 90 05     BCC bra_B390
C - - - - - 0x01939B 06:B38B: A9 05     LDA #$05
C - - - - - 0x01939D 06:B38D: 8D C8 05  STA ram_05C8_t03_data_index
bra_B390:
C - - - - - 0x0193A0 06:B390: 68        PLA
C - - - - - 0x0193A1 06:B391: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0193A3 06:B393: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
loc_B396_RTS:   ; bzk optimize
C D 1 - - - 0x0193A6 06:B396: 60        RTS



tbl_B397_ppu_address_hi:
- D 1 - - - 0x0193A7 06:B397: 22        .byte > $2246   ; 00 
- D 1 - - - 0x0193A8 06:B398: 26        .byte > $2646   ; 01 



loc_B399:
C D 1 - - - 0x0193A9 06:B399: A9 1C     LDA #con_music_cutscene
C - - - - - 0x0193AB 06:B39B: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0193AD 06:B39D: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0193B0 06:B3A0: A9 00     LDA #$00
C - - - - - 0x0193B2 06:B3A2: 85 DB     STA ram_00DB_flag
C - - - - - 0x0193B4 06:B3A4: 8D EC 05  STA ram_05EC_table_index
bra_B3A7_loop:
C - - - - - 0x0193B7 06:B3A7: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x0193BA 06:B3AA: 20 E7 B4  JSR sub_B4E7_clear_some_addresses
C - - - - - 0x0193BD 06:B3AD: AE EC 05  LDX ram_05EC_table_index
C - - - - - 0x0193C0 06:B3B0: BD F0 B3  LDA tbl_B3F0_delay,X
C - - - - - 0x0193C3 06:B3B3: 85 A2     STA ram_00A2_t07_delay_lo
C - - - - - 0x0193C5 06:B3B5: 20 F5 B3  JSR sub_B3F5
C - - - - - 0x0193C8 06:B3B8: AD EC 05  LDA ram_05EC_table_index
C - - - - - 0x0193CB 06:B3BB: C9 05     CMP #$05
C - - - - - 0x0193CD 06:B3BD: 90 E8     BCC bra_B3A7_loop
C - - - - - 0x0193CF 06:B3BF: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x0193D2 06:B3C2: 20 E7 B4  JSR sub_B4E7_clear_some_addresses
C - - - - - 0x0193D5 06:B3C5: A9 01     LDA #con_sfx_disable_se_1
C - - - - - 0x0193D7 06:B3C7: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0193D9 06:B3C9: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0193DC 06:B3CC: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x0193DF 06:B3CF: A5 DC     LDA ram_00DC_flag
C - - - - - 0x0193E1 06:B3D1: 10 04     BPL bra_B3D7
C - - - - - 0x0193E3 06:B3D3: A9 03     LDA #con_script_gameplay
C - - - - - 0x0193E5 06:B3D5: D0 0D     BNE bra_B3E4    ; jmp
bra_B3D7:
C - - - - - 0x0193E7 06:B3D7: AD EC 05  LDA ram_05EC_table_index
C - - - - - 0x0193EA 06:B3DA: C9 06     CMP #$06
C - - - - - 0x0193EC 06:B3DC: D0 04     BNE bra_B3E2
C - - - - - 0x0193EE 06:B3DE: A9 00     LDA #con_script_00
C - - - - - 0x0193F0 06:B3E0: F0 02     BEQ bra_B3E4    ; jmp
bra_B3E2:
C - - - - - 0x0193F2 06:B3E2: A9 02     LDA #con_script_demo
bra_B3E4:
C - - - - - 0x0193F4 06:B3E4: 8D D4 03  STA ram_script
C - - - - - 0x0193F7 06:B3E7: A9 00     LDA #con_03D6_00
C - - - - - 0x0193F9 06:B3E9: 8D D6 03  STA ram_03D6_subscript
                                       ;LDA #con_03D5_gameplay
C - - - - - 0x0193FC 06:B3EC: 8D D5 03  STA ram_03D5_script
C - - - - - 0x0193FF 06:B3EF: 60        RTS



tbl_B3F0_delay:
- D 1 - - - 0x019400 06:B3F0: DA        .byte $DA   ; 00 218
- D 1 - - - 0x019401 06:B3F1: 8C        .byte $8C   ; 01 140
- D 1 - - - 0x019402 06:B3F2: FA        .byte $FA   ; 02 250
- D 1 - - - 0x019403 06:B3F3: FA        .byte $FA   ; 03 250
- D 1 - - - 0x019404 06:B3F4: BC        .byte $BC   ; 04 188



sub_B3F5:
C - - - - - 0x019405 06:B3F5: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019408 06:B3F8: AE EC 05  LDX ram_05EC_table_index
C - - - - - 0x01940B 06:B3FB: BD 36 B4  LDA tbl_B436,X
C - - - - - 0x01940E 06:B3FE: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x019410 06:B400: 20 9F B5  JSR sub_B59F
C - - - - - 0x019413 06:B403: 20 3B B4  JSR sub_B43B
C - - - - - 0x019416 06:B406: 20 57 B0  JSR sub_B057
C - - - - - 0x019419 06:B409: A9 00     LDA #$00
C - - - - - 0x01941B 06:B40B: 85 0C     STA ram_nmi_flag
C - - - - - 0x01941D 06:B40D: 20 D7 FF  JSR sub_0x01FFE7
C - - - - - 0x019420 06:B410: 20 CB FF  JSR sub_0x01FFDB
bra_B413_loop:
C - - - - - 0x019423 06:B413: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019426 06:B416: 20 D7 FF  JSR sub_0x01FFE7
C - - - - - 0x019429 06:B419: 20 6E B4  JSR sub_B46E
C - - - - - 0x01942C 06:B41C: C6 A2     DEC ram_00A2_t07_delay_lo
C - - - - - 0x01942E 06:B41E: F0 0F     BEQ bra_B42F
C - - - - - 0x019430 06:B420: A5 36     LDA ram_buttons
C - - - - - 0x019432 06:B422: C5 38     CMP ram_prev_buttons
C - - - - - 0x019434 06:B424: F0 ED     BEQ bra_B413_loop
C - - - - - 0x019436 06:B426: C9 10     CMP #con_btn_Start
C - - - - - 0x019438 06:B428: D0 E9     BNE bra_B413_loop
C - - - - - 0x01943A 06:B42A: A9 05     LDA #$05
C - - - - - 0x01943C 06:B42C: 8D EC 05  STA ram_05EC_table_index
bra_B42F:
C - - - - - 0x01943F 06:B42F: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019442 06:B432: EE EC 05  INC ram_05EC_table_index
C - - - - - 0x019445 06:B435: 60        RTS



tbl_B436:
- D 1 - - - 0x019446 06:B436: 02        .byte con_0067_t1C_02   ; 00 
- D 1 - - - 0x019447 06:B437: 03        .byte con_0067_t1C_03   ; 01 
- D 1 - - - 0x019448 06:B438: 04        .byte con_0067_t1C_04   ; 02 
- D 1 - - - 0x019449 06:B439: 05        .byte con_0067_t1C_05   ; 03 
- D 1 - - - 0x01944A 06:B43A: 02        .byte con_0067_t1C_02   ; 04 



sub_B43B:
C - - - - - 0x01944B 06:B43B: AE EC 05  LDX ram_05EC_table_index
C - - - - - 0x01944E 06:B43E: BD 64 B4  LDA tbl_B464,X
C - - - - - 0x019451 06:B441: 30 05     BMI bra_B448
C - - - - - 0x019453 06:B443: 85 67     STA ram_0067_t1D_table_index
C - - - - - 0x019455 06:B445: 20 21 B6  JSR sub_B621
bra_B448:
C - - - - - 0x019458 06:B448: AE EC 05  LDX ram_05EC_table_index
C - - - - - 0x01945B 06:B44B: BD 69 B4  LDA tbl_B469,X
C - - - - - 0x01945E 06:B44E: 30 03     BMI bra_B453
C - - - - - 0x019460 06:B450: 20 99 B6  JSR sub_B699
bra_B453:
C - - - - - 0x019463 06:B453: A9 00     LDA #$00
C - - - - - 0x019465 06:B455: 8D F3 04  STA ram_04F3_t01_palette_index
; bzk optimize, useless STA + STA
C - - - - - 0x019468 06:B458: 8D F5 04  STA ram_04F3_obj + $02
C - - - - - 0x01946B 06:B45B: 8D F6 04  STA ram_04F3_obj + $03
; 
C - - - - - 0x01946E 06:B45E: A9 04     LDA #$04
C - - - - - 0x019470 06:B460: 8D F4 04  STA ram_04F4_t01_delay
C - - - - - 0x019473 06:B463: 60        RTS



tbl_B464:
- D 1 - - - 0x019474 06:B464: 01        .byte $01   ; 00 
- D 1 - - - 0x019475 06:B465: 02        .byte $02   ; 01 
- D 1 - - - 0x019476 06:B466: FF        .byte $FF   ; 02 
- D 1 - - - 0x019477 06:B467: FF        .byte $FF   ; 03 
- D 1 - - - 0x019478 06:B468: FF        .byte $FF   ; 04 



tbl_B469:
- D 1 - - - 0x019479 06:B469: 00        .byte $00   ; 00 
- D 1 - - - 0x01947A 06:B46A: FF        .byte $FF   ; 01 
- D 1 - - - 0x01947B 06:B46B: FF        .byte $FF   ; 02 
- D 1 - - - 0x01947C 06:B46C: FF        .byte $FF   ; 03 
- D 1 - - - 0x01947D 06:B46D: 01        .byte $01   ; 04 



sub_B46E:
C - - - - - 0x01947E 06:B46E: AD EC 05  LDA ram_05EC_table_index
C - - - - - 0x019481 06:B471: 0A        ASL
C - - - - - 0x019482 06:B472: AA        TAX
C - - - - - 0x019483 06:B473: BD 80 B4  LDA tbl_B480,X
C - - - - - 0x019486 06:B476: 85 5B     STA ram_005B_t53_jmp
C - - - - - 0x019488 06:B478: BD 81 B4  LDA tbl_B480 + $01,X
C - - - - - 0x01948B 06:B47B: 85 5C     STA ram_005B_t53_jmp + $01
C - - - - - 0x01948D 06:B47D: 6C 5B 00  JMP (ram_005B_t53_jmp)



tbl_B480:
- D 1 - - - 0x019490 06:B480: 8A B4     .word ofs_022_B48A_00
- D 1 - - - 0x019492 06:B482: 91 B4     .word ofs_022_B491_01
- D 1 - - - 0x019494 06:B484: 98 B4     .word ofs_022_B498_02
- D 1 - - - 0x019496 06:B486: 9C B4     .word ofs_022_B49C_03_RTS
- D 1 - - - 0x019498 06:B488: 9C B4     .word ofs_022_B49C_04_RTS



ofs_022_B48A_00:
C - - J - - 0x01949A 06:B48A: 20 9D B4  JSR sub_B49D
; bzk optimize, JMP
C - - - - - 0x01949D 06:B48D: 20 00 B5  JSR sub_B500_change_background_color
C - - - - - 0x0194A0 06:B490: 60        RTS



ofs_022_B491_01:
C - - J - - 0x0194A1 06:B491: 20 BF B4  JSR sub_B4BF
; bzk optimize, JMP
C - - - - - 0x0194A4 06:B494: 20 2E B5  JSR sub_B52E
C - - - - - 0x0194A7 06:B497: 60        RTS



ofs_022_B498_02:
; bzk optimize, JMP
C - - J - - 0x0194A8 06:B498: 20 4F B5  JSR sub_B54F_write_palette_to_buffer
C - - - - - 0x0194AB 06:B49B: 60        RTS



ofs_022_B49C_03_RTS:
ofs_022_B49C_04_RTS:
C - - J - - 0x0194AC 06:B49C: 60        RTS



sub_B49D:
C - - - - - 0x0194AD 06:B49D: AD 45 05  LDA ram_0545_t02
C - - - - - 0x0194B0 06:B4A0: 30 16     BMI bra_B4B8_RTS
C - - - - - 0x0194B2 06:B4A2: EE 38 05  INC ram_0538_t03
C - - - - - 0x0194B5 06:B4A5: AD 38 05  LDA ram_0538_t03
C - - - - - 0x0194B8 06:B4A8: C9 1D     CMP #$1D
C - - - - - 0x0194BA 06:B4AA: B0 0D     BCS bra_B4B9
C - - - - - 0x0194BC 06:B4AC: CE 8F 04  DEC ram_pos_Y_lo_obj + $07
C - - - - - 0x0194BF 06:B4AF: CE 90 04  DEC ram_pos_Y_lo_obj + $08
C - - - - - 0x0194C2 06:B4B2: CE 91 04  DEC ram_pos_Y_lo_obj + $09
C - - - - - 0x0194C5 06:B4B5: CE 92 04  DEC ram_pos_Y_lo_obj + $0A
bra_B4B8_RTS:
C - - - - - 0x0194C8 06:B4B8: 60        RTS
bra_B4B9:
C - - - - - 0x0194C9 06:B4B9: A9 80     LDA #$80
C - - - - - 0x0194CB 06:B4BB: 8D 45 05  STA ram_0545_t02
C - - - - - 0x0194CE 06:B4BE: 60        RTS



sub_B4BF:
C - - - - - 0x0194CF 06:B4BF: AD 45 05  LDA ram_0545_t02
C - - - - - 0x0194D2 06:B4C2: 30 13     BMI bra_B4D7_RTS
C - - - - - 0x0194D4 06:B4C4: EE 38 05  INC ram_0538_t03
C - - - - - 0x0194D7 06:B4C7: AD 38 05  LDA ram_0538_t03
C - - - - - 0x0194DA 06:B4CA: C9 26     CMP #$26
C - - - - - 0x0194DC 06:B4CC: B0 0A     BCS bra_B4D8
C - - - - - 0x0194DE 06:B4CE: AD 68 04  LDA ram_pos_X_lo_obj + $07
C - - - - - 0x0194E1 06:B4D1: 38        SEC
C - - - - - 0x0194E2 06:B4D2: E9 06     SBC #$06
C - - - - - 0x0194E4 06:B4D4: 8D 68 04  STA ram_pos_X_lo_obj + $07
bra_B4D7_RTS:
C - - - - - 0x0194E7 06:B4D7: 60        RTS
bra_B4D8:
C - - - - - 0x0194E8 06:B4D8: A9 80     LDA #$80
C - - - - - 0x0194EA 06:B4DA: 8D 45 05  STA ram_0545_t02
C - - - - - 0x0194ED 06:B4DD: A9 00     LDA #$00
; bzk optimize, useless STA
C - - - - - 0x0194EF 06:B4DF: 85 CB     STA ram_00CB_tFF_useless
; 
C - - - - - 0x0194F1 06:B4E1: 85 CE     STA ram_all_objects_counter
C - - - - - 0x0194F3 06:B4E3: 8D 41 04  STA ram_043A_obj_flags + $03 + $04
C - - - - - 0x0194F6 06:B4E6: 60        RTS



sub_B4E7_clear_some_addresses:
C - - - - - 0x0194F7 06:B4E7: A9 00     LDA #$00
C - - - - - 0x0194F9 06:B4E9: 85 CA     STA ram_00CA_objects_counter
C - - - - - 0x0194FB 06:B4EB: 85 CB     STA ram_00CB_t02_flag
C - - - - - 0x0194FD 06:B4ED: 85 CD     STA ram_drop_objects_counter
C - - - - - 0x0194FF 06:B4EF: 85 CE     STA ram_all_objects_counter
C - - - - - 0x019501 06:B4F1: 8D 00 04  STA ram_0400_flag
C - - - - - 0x019504 06:B4F4: 8D 22 04  STA ram_0422_flag
C - - - - - 0x019507 06:B4F7: A2 0D     LDX #$0D
bra_B4F9_loop:
C - - - - - 0x019509 06:B4F9: 9D 3A 04  STA ram_043A_obj_flags,X
C - - - - - 0x01950C 06:B4FC: CA        DEX
C - - - - - 0x01950D 06:B4FD: D0 FA     BNE bra_B4F9_loop
C - - - - - 0x01950F 06:B4FF: 60        RTS



sub_B500_change_background_color:
C - - - - - 0x019510 06:B500: A5 A2     LDA ram_00A2_t07_delay_lo
C - - - - - 0x019512 06:B502: 30 1C     BMI bra_B520_RTS
C - - - - - 0x019514 06:B504: CE F4 04  DEC ram_04F4_t01_delay
C - - - - - 0x019517 06:B507: D0 17     BNE bra_B520_RTS
C - - - - - 0x019519 06:B509: A9 04     LDA #$04
C - - - - - 0x01951B 06:B50B: 8D F4 04  STA ram_04F4_t01_delay
C - - - - - 0x01951E 06:B50E: AD F3 04  LDA ram_04F3_t01_palette_index
C - - - - - 0x019521 06:B511: 29 03     AND #$03
C - - - - - 0x019523 06:B513: AA        TAX
C - - - - - 0x019524 06:B514: BD 21 B5  LDA tbl_B521_background_color,X
C - - - - - 0x019527 06:B517: 8D 8A 02  STA ram_pal_buffer + $0A
C - - - - - 0x01952A 06:B51A: EE F3 04  INC ram_04F3_t01_palette_index
; bzk optimize, JMP
C - - - - - 0x01952D 06:B51D: 20 25 B5  JSR sub_B525_enable_palette_buffer
bra_B520_RTS:
C - - - - - 0x019530 06:B520: 60        RTS



tbl_B521_background_color:
- D 1 - - - 0x019531 06:B521: 14        .byte $14   ; 00 
- D 1 - - - 0x019532 06:B522: 24        .byte $24   ; 01 
- D 1 - - - 0x019533 06:B523: 34        .byte $34   ; 02 
- D 1 - - - 0x019534 06:B524: 30        .byte $30   ; 03 



sub_B525_enable_palette_buffer:
C - - - - - 0x019535 06:B525: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x019537 06:B527: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x019539 06:B529: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x01953B 06:B52B: 85 02     STA ram_buffers_flags
C - - - - - 0x01953D 06:B52D: 60        RTS



sub_B52E:
C - - - - - 0x01953E 06:B52E: CE F4 04  DEC ram_04F4_t01_delay
C - - - - - 0x019541 06:B531: D0 17     BNE bra_B54A_RTS
C - - - - - 0x019543 06:B533: A9 04     LDA #$04
C - - - - - 0x019545 06:B535: 8D F4 04  STA ram_04F4_t01_delay
C - - - - - 0x019548 06:B538: AD F3 04  LDA ram_04F3_t01_palette_index
C - - - - - 0x01954B 06:B53B: 29 03     AND #$03
C - - - - - 0x01954D 06:B53D: AA        TAX
C - - - - - 0x01954E 06:B53E: BD 4B B5  LDA tbl_B54B,X
C - - - - - 0x019551 06:B541: 8D 82 02  STA ram_pal_buffer + $02
C - - - - - 0x019554 06:B544: EE F3 04  INC ram_04F3_t01_palette_index
; bzk optimize, JMP
C - - - - - 0x019557 06:B547: 20 25 B5  JSR sub_B525_enable_palette_buffer
bra_B54A_RTS:
C - - - - - 0x01955A 06:B54A: 60        RTS



tbl_B54B:
- D 1 - - - 0x01955B 06:B54B: 31        .byte $31   ; 00 
- D 1 - - - 0x01955C 06:B54C: 21        .byte $21   ; 01 
- D 1 - - - 0x01955D 06:B54D: 11        .byte $11   ; 02 
- D 1 - - - 0x01955E 06:B54E: 01        .byte $01   ; 03 



sub_B54F_write_palette_to_buffer:
C - - - - - 0x01955F 06:B54F: CE F4 04  DEC ram_04F4_t01_delay
C - - - - - 0x019562 06:B552: D0 F6     BNE bra_B54A_RTS
C - - - - - 0x019564 06:B554: A9 04     LDA #$04
C - - - - - 0x019566 06:B556: 8D F4 04  STA ram_04F4_t01_delay
C - - - - - 0x019569 06:B559: AE F3 04  LDX ram_04F3_t01_palette_index
C - - - - - 0x01956C 06:B55C: A0 00     LDY #$00
bra_B55E_loop:
C - - - - - 0x01956E 06:B55E: BD 76 B5  LDA tbl_B576_palette,X
C - - - - - 0x019571 06:B561: 99 80 02  STA ram_pal_buffer,Y
C - - - - - 0x019574 06:B564: E8        INX
C - - - - - 0x019575 06:B565: C8        INY
C - - - - - 0x019576 06:B566: C0 08     CPY #$08
C - - - - - 0x019578 06:B568: 90 F4     BCC bra_B55E_loop
C - - - - - 0x01957A 06:B56A: AD F3 04  LDA ram_04F3_t01_palette_index
C - - - - - 0x01957D 06:B56D: 49 08     EOR #$08
C - - - - - 0x01957F 06:B56F: 8D F3 04  STA ram_04F3_t01_palette_index
; bzk optimize, JMP
C - - - - - 0x019582 06:B572: 20 25 B5  JSR sub_B525_enable_palette_buffer
C - - - - - 0x019585 06:B575: 60        RTS



tbl_B576_palette:
; 00 
- D 1 - - - 0x019586 06:B576: 0F        .byte $0F, $00, $10, $30   ; 
- D 1 - - - 0x01958A 06:B57A: 0F        .byte $0F, $16, $27, $37   ; 
; 08 
- D 1 - - - 0x01958E 06:B57E: 0F        .byte $0F, $01, $11, $31   ; 
- D 1 - - - 0x019592 06:B582: 0F        .byte $0F, $30, $15, $20   ; 



loc_B586:
C D 1 - - - 0x019596 06:B586: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019598 06:B588: 48        PHA
C - - - - - 0x019599 06:B589: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01959B 06:B58B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01959D 06:B58D: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0195A0 06:B590: A9 01     LDA #con_05EE_01
C - - - - - 0x0195A2 06:B592: 8D EE 05  STA ram_05EE_table_index
C - - - - - 0x0195A5 06:B595: 20 02 BD  JSR sub_BD02
C - - - - - 0x0195A8 06:B598: 68        PLA
C - - - - - 0x0195A9 06:B599: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0195AB 06:B59B: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0195AE 06:B59E: 60        RTS



sub_B59F:
C - - - - - 0x0195AF 06:B59F: 20 4A B0  JSR sub_B04A
C - - - - - 0x0195B2 06:B5A2: 20 AF B5  JSR sub_B5AF
C - - - - - 0x0195B5 06:B5A5: 20 06 AF  JSR sub_AF06
C - - - - - 0x0195B8 06:B5A8: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
; bzk optimize, JMP
C - - - - - 0x0195BB 06:B5AB: 20 E0 B5  JSR sub_B5E0
C - - - - - 0x0195BE 06:B5AE: 60        RTS



sub_B5AF:
C - - - - - 0x0195BF 06:B5AF: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0195C1 06:B5B1: 48        PHA
C - - - - - 0x0195C2 06:B5B2: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x0195C4 06:B5B4: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0195C6 06:B5B6: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0195C9 06:B5B9: A6 67     LDX ram_0067_t1C_table_index
C - - - - - 0x0195CB 06:B5BB: BD A2 95  LDA tbl_0x0135B2_chr_banks_background_00,X
C - - - - - 0x0195CE 06:B5BE: 85 20     STA ram_chr_bank_bg
C - - - - - 0x0195D0 06:B5C0: BD B2 95  LDA tbl_0x0135C2_chr_banks_background_01,X
C - - - - - 0x0195D3 06:B5C3: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x0195D5 06:B5C5: BD C2 95  LDA tbl_0x0135D2_chr_banks_sprites_00,X
C - - - - - 0x0195D8 06:B5C8: 85 24     STA ram_chr_bank_spr
C - - - - - 0x0195DA 06:B5CA: BD D2 95  LDA tbl_0x0135E2_chr_banks_sprites_01,X
C - - - - - 0x0195DD 06:B5CD: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x0195DF 06:B5CF: BD E2 95  LDA tbl_0x0135F2_chr_banks_sprites_02,X
C - - - - - 0x0195E2 06:B5D2: 85 26     STA ram_chr_bank_spr + $02
C - - - - - 0x0195E4 06:B5D4: BD F2 95  LDA tbl_0x013602_chr_banks_sprites_03,X
C - - - - - 0x0195E7 06:B5D7: 85 27     STA ram_chr_bank_spr + $03
C - - - - - 0x0195E9 06:B5D9: 68        PLA
C - - - - - 0x0195EA 06:B5DA: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0195EC 06:B5DC: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0195EF 06:B5DF: 60        RTS



sub_B5E0:
; in
    ; ram_0067_t1C_table_index
C - - - - - 0x0195F0 06:B5E0: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0195F2 06:B5E2: 48        PHA
C - - - - - 0x0195F3 06:B5E3: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x0195F5 06:B5E5: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0195F7 06:B5E7: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0195FA 06:B5EA: A5 67     LDA ram_0067_t1C_table_index
C - - - - - 0x0195FC 06:B5EC: 0A        ASL
C - - - - - 0x0195FD 06:B5ED: AA        TAX
C - - - - - 0x0195FE 06:B5EE: BD 02 96  LDA tbl_0x013612_background_palette,X
C - - - - - 0x019601 06:B5F1: 85 5B     STA ram_005B_t35_bg_pal_data
C - - - - - 0x019603 06:B5F3: BD 03 96  LDA tbl_0x013612_background_palette + $01,X
C - - - - - 0x019606 06:B5F6: 85 5C     STA ram_005B_t35_bg_pal_data + $01
C - - - - - 0x019608 06:B5F8: BD 24 96  LDA tbl_0x013634_sprite_palette,X
C - - - - - 0x01960B 06:B5FB: 85 5D     STA ram_005D_t12_spr_pal_data
C - - - - - 0x01960D 06:B5FD: BD 25 96  LDA tbl_0x013634_sprite_palette + $01,X
C - - - - - 0x019610 06:B600: 85 5E     STA ram_005D_t12_spr_pal_data + $01
C - - - - - 0x019612 06:B602: A0 00     LDY #$00
bra_B604_loop:
C - - - - - 0x019614 06:B604: B1 5B     LDA (ram_005B_t35_bg_pal_data),Y
C - - - - - 0x019616 06:B606: 99 80 02  STA ram_pal_buffer,Y
C - - - - - 0x019619 06:B609: C8        INY
C - - - - - 0x01961A 06:B60A: C0 10     CPY #$10
C - - - - - 0x01961C 06:B60C: 90 F6     BCC bra_B604_loop
C - - - - - 0x01961E 06:B60E: A0 00     LDY #$00
bra_B610_loop:
C - - - - - 0x019620 06:B610: B1 5D     LDA (ram_005D_t12_spr_pal_data),Y
C - - - - - 0x019622 06:B612: 99 90 02  STA ram_pal_buffer + $10,Y
C - - - - - 0x019625 06:B615: C8        INY
C - - - - - 0x019626 06:B616: C0 10     CPY #$10
C - - - - - 0x019628 06:B618: 90 F6     BCC bra_B610_loop
C - - - - - 0x01962A 06:B61A: 68        PLA
C - - - - - 0x01962B 06:B61B: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01962D 06:B61D: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019630 06:B620: 60        RTS



sub_B621:
C - - - - - 0x019631 06:B621: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019633 06:B623: 48        PHA
C - - - - - 0x019634 06:B624: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x019636 06:B626: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019638 06:B628: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01963B 06:B62B: A5 67     LDA ram_0067_t1D_table_index
; bzk optimize, useless LDA
C - - - - - 0x01963D 06:B62D: A5 67     LDA ram_0067_t1D_table_index
C - - - - - 0x01963F 06:B62F: F0 61     BEQ bra_B692
C - - - - - 0x019641 06:B631: 0A        ASL
C - - - - - 0x019642 06:B632: A8        TAY
C - - - - - 0x019643 06:B633: B9 42 97  LDA tbl_0x013752,Y
C - - - - - 0x019646 06:B636: 85 5B     STA ram_005B_t34_data
C - - - - - 0x019648 06:B638: B9 43 97  LDA tbl_0x013752 + $01,Y
C - - - - - 0x01964B 06:B63B: 85 5C     STA ram_005B_t34_data + $01
C - - - - - 0x01964D 06:B63D: A0 00     LDY #$00
C - - - - - 0x01964F 06:B63F: A2 00     LDX #$00
C - - - - - 0x019651 06:B641: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x019653 06:B643: 85 68     STA ram_0068_t35_loop_counter
C - - - - - 0x019655 06:B645: C8        INY ; 01
bra_B646_loop:
C - - - - - 0x019656 06:B646: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x019658 06:B648: 9D C3 04  STA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x01965B 06:B64B: C8        INY
C - - - - - 0x01965C 06:B64C: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x01965E 06:B64E: 9D D0 04  STA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x019661 06:B651: C8        INY
C - - - - - 0x019662 06:B652: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x019664 06:B654: 9D A9 04  STA ram_spr_data_ptr_lo_obj + $07,X
C - - - - - 0x019667 06:B657: C8        INY
C - - - - - 0x019668 06:B658: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x01966A 06:B65A: 9D B6 04  STA ram_spr_data_ptr_hi_obj + $07,X
C - - - - - 0x01966D 06:B65D: C8        INY
C - - - - - 0x01966E 06:B65E: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x019670 06:B660: 9D 68 04  STA ram_pos_X_lo_obj + $07,X
C - - - - - 0x019673 06:B663: C8        INY
C - - - - - 0x019674 06:B664: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x019676 06:B666: 9D 8F 04  STA ram_pos_Y_lo_obj + $07,X
C - - - - - 0x019679 06:B669: C8        INY
C - - - - - 0x01967A 06:B66A: B1 5B     LDA (ram_005B_t34_data),Y
C - - - - - 0x01967C 06:B66C: 9D DD 04  STA ram_04D9_obj + $04,X
C - - - - - 0x01967F 06:B66F: C8        INY
C - - - - - 0x019680 06:B670: A9 00     LDA #$00
C - - - - - 0x019682 06:B672: 9D 75 04  STA ram_pos_X_hi_obj + $07,X
C - - - - - 0x019685 06:B675: 9D 9C 04  STA ram_pos_Y_hi_obj + $07,X
; also ram_0538_t03
C - - - - - 0x019688 06:B678: 9D 38 05  STA ram_0534_obj + $04,X
; also ram_0545_t02
C - - - - - 0x01968B 06:B67B: 9D 45 05  STA ram_0541_obj_flags + $04,X
C - - - - - 0x01968E 06:B67E: 9D 52 05  STA ram_054E_obj + $04,X
C - - - - - 0x019691 06:B681: 9D 5F 05  STA ram_055B_obj_anim_counter + $04,X
C - - - - - 0x019694 06:B684: A9 80     LDA #$80
C - - - - - 0x019696 06:B686: 9D 41 04  STA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x019699 06:B689: E8        INX
C - - - - - 0x01969A 06:B68A: E6 CB     INC ram_00CB_t02_flag
C - - - - - 0x01969C 06:B68C: E6 CE     INC ram_all_objects_counter
C - - - - - 0x01969E 06:B68E: C6 68     DEC ram_0068_t35_loop_counter
C - - - - - 0x0196A0 06:B690: D0 B4     BNE bra_B646_loop
bra_B692:
C - - - - - 0x0196A2 06:B692: 68        PLA
C - - - - - 0x0196A3 06:B693: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0196A5 06:B695: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0196A8 06:B698: 60        RTS



sub_B699:
C - - - - - 0x0196A9 06:B699: 0A        ASL
C - - - - - 0x0196AA 06:B69A: AA        TAX
C - - - - - 0x0196AB 06:B69B: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x0196AD 06:B69D: 48        PHA
C - - - - - 0x0196AE 06:B69E: A9 09     LDA #con_prg_bank + $09
C - - - - - 0x0196B0 06:B6A0: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x0196B2 06:B6A2: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0196B5 06:B6A5: BD 9E 95  LDA tbl_0x0135AE,X
C - - - - - 0x0196B8 06:B6A8: 85 5B     STA ram_005B_t33_ppu_data
C - - - - - 0x0196BA 06:B6AA: BD 9F 95  LDA tbl_0x0135AE + $01,X
C - - - - - 0x0196BD 06:B6AD: 85 5C     STA ram_005B_t33_ppu_data + $01
C - - - - - 0x0196BF 06:B6AF: A9 00     LDA #$00
C - - - - - 0x0196C1 06:B6B1: 85 68     STA ram_0068_t37_data_index
C - - - - - 0x0196C3 06:B6B3: A2 22     LDX #> $2267
C - - - - - 0x0196C5 06:B6B5: A0 67     LDY #< $2267
bra_B6B7:
C - - - - - 0x0196C7 06:B6B7: AD 02 20  LDA $2002
C - - - - - 0x0196CA 06:B6BA: 8E 06 20  STX $2006
C - - - - - 0x0196CD 06:B6BD: 8C 06 20  STY $2006
bra_B6C0_loop:
C - - - - - 0x0196D0 06:B6C0: A4 68     LDY ram_0068_t37_data_index
C - - - - - 0x0196D2 06:B6C2: B1 5B     LDA (ram_005B_t33_ppu_data),Y
C - - - - - 0x0196D4 06:B6C4: C9 FE     CMP #$FE
C - - - - - 0x0196D6 06:B6C6: F0 0B     BEQ bra_B6D3_FE
C - - - - - 0x0196D8 06:B6C8: C9 FF     CMP #$FF
C - - - - - 0x0196DA 06:B6CA: F0 0F     BEQ bra_B6DB_FF
C - - - - - 0x0196DC 06:B6CC: 8D 07 20  STA $2007
C - - - - - 0x0196DF 06:B6CF: E6 68     INC ram_0068_t37_data_index
C - - - - - 0x0196E1 06:B6D1: D0 ED     BNE bra_B6C0_loop    ; jmp
bra_B6D3_FE:
C - - - - - 0x0196E3 06:B6D3: E6 68     INC ram_0068_t37_data_index
C - - - - - 0x0196E5 06:B6D5: A2 22     LDX #> $22A7
C - - - - - 0x0196E7 06:B6D7: A0 A7     LDY #< $22A7
C - - - - - 0x0196E9 06:B6D9: D0 DC     BNE bra_B6B7    ; jmp
bra_B6DB_FF:
C - - - - - 0x0196EB 06:B6DB: 68        PLA
C - - - - - 0x0196EC 06:B6DC: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x0196EE 06:B6DE: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x0196F1 06:B6E1: 60        RTS



loc_B6E2:
C D 1 - - - 0x0196F2 06:B6E2: A9 01     LDA #con_sfx_disable_se_1
C - - - - - 0x0196F4 06:B6E4: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0196F6 06:B6E6: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0196F9 06:B6E9: 20 6B AE  JSR sub_AE6B_update_hiscore
C - - - - - 0x0196FC 06:B6EC: A9 19     LDA #con_chr_bank_bg + $19
C - - - - - 0x0196FE 06:B6EE: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x019700 06:B6F0: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x019703 06:B6F3: 20 E7 B4  JSR sub_B4E7_clear_some_addresses
C - - - - - 0x019706 06:B6F6: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019709 06:B6F9: 20 B9 B7  JSR sub_B7B9_write_palette_to_buffer
C - - - - - 0x01970C 06:B6FC: 20 D7 B7  JSR sub_B7D7
C - - - - - 0x01970F 06:B6FF: 20 C2 B8  JSR sub_B8C2_print_score_and_continues
C - - - - - 0x019712 06:B702: A5 E5     LDA ram_continues
C - - - - - 0x019714 06:B704: F0 69     BEQ bra_B76F
C - - - - - 0x019716 06:B706: 20 57 B0  JSR sub_B057
C - - - - - 0x019719 06:B709: A9 FF     LDA #$FF
C - - - - - 0x01971B 06:B70B: 8D 38 05  STA ram_0538_t02
C - - - - - 0x01971E 06:B70E: A9 09     LDA #$09
C - - - - - 0x019720 06:B710: 8D 45 05  STA ram_0545_t01_timer
C - - - - - 0x019723 06:B713: A9 00     LDA #$00
C - - - - - 0x019725 06:B715: 85 0C     STA ram_nmi_flag
C - - - - - 0x019727 06:B717: 20 D7 FF  JSR sub_0x01FFE7
C - - - - - 0x01972A 06:B71A: 20 CB FF  JSR sub_0x01FFDB
bra_B71D_loop:
C - - - - - 0x01972D 06:B71D: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019730 06:B720: 20 22 B8  JSR sub_B822
C - - - - - 0x019733 06:B723: AD 45 05  LDA ram_0545_t01_timer
C - - - - - 0x019736 06:B726: 30 41     BMI bra_B769
C - - - - - 0x019738 06:B728: A5 36     LDA ram_buttons
C - - - - - 0x01973A 06:B72A: C5 38     CMP ram_prev_buttons
C - - - - - 0x01973C 06:B72C: F0 EF     BEQ bra_B71D_loop
C - - - - - 0x01973E 06:B72E: C9 10     CMP #con_btn_Start
C - - - - - 0x019740 06:B730: D0 EB     BNE bra_B71D_loop
C - - - - - 0x019742 06:B732: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019745 06:B735: A9 00     LDA #con_03D5_00
C - - - - - 0x019747 06:B737: 8D D5 03  STA ram_03D5_script
                                       ;LDA #con_03D6_00
C - - - - - 0x01974A 06:B73A: 8D D6 03  STA ram_03D6_subscript
C - - - - - 0x01974D 06:B73D: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019750 06:B740: 09 80     ORA #con_05D4_80
C - - - - - 0x019752 06:B742: 8D D4 05  STA ram_05D4_plr_flags
C - - - - - 0x019755 06:B745: 29 20     AND #con_05D4_20
C - - - - - 0x019757 06:B747: F0 08     BEQ bra_B751
- - - - - - 0x019759 06:B749: AD D5 05  LDA ram_05D4_plr_flags + $01
- - - - - - 0x01975C 06:B74C: 29 DF     AND #con_05D4_20 ^ $FF
- - - - - - 0x01975E 06:B74E: 8D D5 05  STA ram_05D4_plr_flags + $01
bra_B751:
C - - - - - 0x019761 06:B751: A9 40     LDA #con_05B5_captured_hawk
C - - - - - 0x019763 06:B753: 8D B5 05  STA ram_05B5_player_flags
C - - - - - 0x019766 06:B756: A9 08     LDA #$08
C - - - - - 0x019768 06:B758: 8D D9 03  STA ram_captain_hp
C - - - - - 0x01976B 06:B75B: C6 E5     DEC ram_continues
; clear score
C - - - - - 0x01976D 06:B75D: A9 00     LDA #$00
C - - - - - 0x01976F 06:B75F: 8D E2 03  STA ram_plr_score
C - - - - - 0x019772 06:B762: 8D E3 03  STA ram_plr_score + $01
C - - - - - 0x019775 06:B765: 8D E4 03  STA ram_plr_score + $02
C - - - - - 0x019778 06:B768: 60        RTS
bra_B769:
C - - - - - 0x019779 06:B769: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x01977C 06:B76C: 20 4A B0  JSR sub_B04A
bra_B76F:
C - - - - - 0x01977F 06:B76F: 20 AA B8  JSR sub_B8AA_clear_nametable_2186_2245
; bzk optimize, useless code up to 0x01978C
C - - - - - 0x019782 06:B772: A9 09     LDA #$09
C - - - - - 0x019784 06:B774: 85 6C     STA ram_006C_tFE_useless
C - - - - - 0x019786 06:B776: A9 21     LDA #$21
C - - - - - 0x019788 06:B778: 85 67     STA ram_0067_tFF_useless
C - - - - - 0x01978A 06:B77A: A9 C6     LDA #$C6
C - - - - - 0x01978C 06:B77C: 85 68     STA ram_0068_tFC_useless
; 
C - - - - - 0x01978E 06:B77E: A9 03     LDA #$03
C - - - - - 0x019790 06:B780: 8D 52 05  STA ram_0552_t01_number_index
C - - - - - 0x019793 06:B783: A0 0A     LDY #$0A
C - - - - - 0x019795 06:B785: 84 6D     STY ram_006D_t04_max_numbers
C - - - - - 0x019797 06:B787: 20 8E B9  JSR sub_B98E
C - - - - - 0x01979A 06:B78A: 20 8A B8  JSR sub_B88A
C - - - - - 0x01979D 06:B78D: 20 57 B0  JSR sub_B057
C - - - - - 0x0197A0 06:B790: 20 B9 B7  JSR sub_B7B9_write_palette_to_buffer
C - - - - - 0x0197A3 06:B793: 20 CB FF  JSR sub_0x01FFDB
C - - - - - 0x0197A6 06:B796: A9 1E     LDA #con_music_game_over
C - - - - - 0x0197A8 06:B798: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0197AA 06:B79A: 20 AD FF  JSR sub_0x01FFBD_play_sound
; almost 21 seconds delay
C - - - - - 0x0197AD 06:B79D: A9 04     LDA #> $04E8
C - - - - - 0x0197AF 06:B79F: 85 A2     STA ram_00A2_t02_delay_hi
C - - - - - 0x0197B1 06:B7A1: A9 E8     LDA #< $04E8
C - - - - - 0x0197B3 06:B7A3: 85 A3     STA ram_00A3_t02_delay_lo
bra_B7A5_loop:
C - - - - - 0x0197B5 06:B7A5: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x0197B8 06:B7A8: C6 A3     DEC ram_00A3_t02_delay_lo
C - - - - - 0x0197BA 06:B7AA: D0 F9     BNE bra_B7A5_loop
C - - - - - 0x0197BC 06:B7AC: C6 A2     DEC ram_00A2_t02_delay_hi
C - - - - - 0x0197BE 06:B7AE: D0 F5     BNE bra_B7A5_loop
C - - - - - 0x0197C0 06:B7B0: A9 00     LDA #con_script_00
C - - - - - 0x0197C2 06:B7B2: 8D D4 03  STA ram_script
                                       ;LDA #con_03D5_00
C - - - - - 0x0197C5 06:B7B5: 8D D5 03  STA ram_03D5_script
C - - - - - 0x0197C8 06:B7B8: 60        RTS



sub_B7B9_write_palette_to_buffer:
C - - - - - 0x0197C9 06:B7B9: A2 00     LDX #$00
bra_B7BB_loop:
C - - - - - 0x0197CB 06:B7BB: BD C7 B7  LDA tbl_B7C7_palette,X
C - - - - - 0x0197CE 06:B7BE: 9D 80 02  STA ram_pal_buffer,X
C - - - - - 0x0197D1 06:B7C1: E8        INX
C - - - - - 0x0197D2 06:B7C2: E0 10     CPX #$10
C - - - - - 0x0197D4 06:B7C4: 90 F5     BCC bra_B7BB_loop
C - - - - - 0x0197D6 06:B7C6: 60        RTS



tbl_B7C7_palette:
- D 1 - - - 0x0197D7 06:B7C7: 0F        .byte $0F, $11, $21, $30   ; 
- D 1 - - - 0x0197DB 06:B7CB: 0F        .byte $0F, $13, $23, $30   ; 
- D 1 - - - 0x0197DF 06:B7CF: 0F        .byte $0F, $16, $26, $30   ; 
- D 1 - - - 0x0197E3 06:B7D3: 0F        .byte $0F, $00, $00, $00   ; 



sub_B7D7:
C - - - - - 0x0197E7 06:B7D7: A9 0F     LDA #con_0067_t1C_0F
C - - - - - 0x0197E9 06:B7D9: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x0197EB 06:B7DB: 20 06 AF  JSR sub_AF06
; bzk optimize, JMP
C - - - - - 0x0197EE 06:B7DE: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
C - - - - - 0x0197F1 06:B7E1: 60        RTS



tbl_B7E2_metatile_index:
- D 1 - - - 0x0197F2 06:B7E2: 0F        .byte $0F   ; 00 
- D 1 - - - 0x0197F3 06:B7E3: 10        .byte $10   ; 01 
- D 1 - - - 0x0197F4 06:B7E4: 11        .byte $11   ; 02 
- D 1 - - - 0x0197F5 06:B7E5: 12        .byte $12   ; 03 
- D 1 - - - 0x0197F6 06:B7E6: 13        .byte $13   ; 04 
- D 1 - - - 0x0197F7 06:B7E7: 14        .byte $14   ; 05 
- D 1 - - - 0x0197F8 06:B7E8: 15        .byte $15   ; 06 
- D 1 - - - 0x0197F9 06:B7E9: 16        .byte $16   ; 07 
- D 1 - - - 0x0197FA 06:B7EA: 17        .byte $17   ; 08 
- D 1 - - - 0x0197FB 06:B7EB: 18        .byte $18   ; 09 
- D 1 - - - 0x0197FC 06:B7EC: 1B        .byte $1B   ; 0A 
- D 1 - - - 0x0197FD 06:B7ED: 19        .byte $19   ; 0B 
- D 1 - - - 0x0197FE 06:B7EE: 1C        .byte $1C   ; 0C 
- D 1 - - - 0x0197FF 06:B7EF: 1A        .byte $1A   ; 0D 
- D 1 - - - 0x019800 06:B7F0: 00        .byte $00   ; 0E 
- D 1 - - - 0x019801 06:B7F1: 1D        .byte $1D   ; 0F 
- D 1 - - - 0x019802 06:B7F2: 1F        .byte $1F   ; 10 
- D 1 - - - 0x019803 06:B7F3: 1A        .byte $1A   ; 11 
- D 1 - - - 0x019804 06:B7F4: 1E        .byte $1E   ; 12 
- D 1 - - - 0x019805 06:B7F5: 00        .byte $00   ; 13 



tbl_B7F6:
- D 1 - - - 0x019806 06:B7F6: 02 B8     .word ofs_021_B802_00
- D 1 - - - 0x019808 06:B7F8: 09 B8     .word ofs_021_B809_01
- D 1 - - - 0x01980A 06:B7FA: 0E B8     .word ofs_021_B80E_02
- D 1 - - - 0x01980C 06:B7FC: 13 B8     .word ofs_021_B813_03
- D 1 - - - 0x01980E 06:B7FE: 18 B8     .word ofs_021_B818_04
- D 1 - - - 0x019810 06:B800: 1D B8     .word ofs_021_B81D_05



ofs_021_B802_00:
C - - J - - 0x019812 06:B802: A5 71     LDA ram_0071_t18_score_array
loc_B804_divide_by_10h:
; / 10
C D 1 - - - 0x019814 06:B804: 4A        LSR
C - - - - - 0x019815 06:B805: 4A        LSR
C - - - - - 0x019816 06:B806: 4A        LSR
C - - - - - 0x019817 06:B807: 4A        LSR
; 
C - - - - - 0x019818 06:B808: 60        RTS



ofs_021_B809_01:
C - - J - - 0x019819 06:B809: A5 71     LDA ram_0071_t18_score_array
C - - - - - 0x01981B 06:B80B: 29 0F     AND #$0F
C - - - - - 0x01981D 06:B80D: 60        RTS



ofs_021_B80E_02:
C - - J - - 0x01981E 06:B80E: A5 72     LDA ram_0071_t18_score_array + $01
C - - - - - 0x019820 06:B810: 4C 04 B8  JMP loc_B804_divide_by_10h



ofs_021_B813_03:
C - - J - - 0x019823 06:B813: A5 72     LDA ram_0071_t18_score_array + $01
C - - - - - 0x019825 06:B815: 29 0F     AND #$0F
C - - - - - 0x019827 06:B817: 60        RTS



ofs_021_B818_04:
C - - J - - 0x019828 06:B818: A5 73     LDA ram_0071_t18_score_array + $02
C - - - - - 0x01982A 06:B81A: 4C 04 B8  JMP loc_B804_divide_by_10h



ofs_021_B81D_05:
C - - J - - 0x01982D 06:B81D: A5 73     LDA ram_0071_t18_score_array + $02
C - - - - - 0x01982F 06:B81F: 29 0F     AND #$0F
C - - - - - 0x019831 06:B821: 60        RTS



sub_B822:
C - - - - - 0x019832 06:B822: CE 38 05  DEC ram_0538_t02
C - - - - - 0x019835 06:B825: AD 38 05  LDA ram_0538_t02
C - - - - - 0x019838 06:B828: 29 3F     AND #$3F
C - - - - - 0x01983A 06:B82A: D0 14     BNE bra_B840_RTS
C - - - - - 0x01983C 06:B82C: CE 45 05  DEC ram_0545_t01_timer
C - - - - - 0x01983F 06:B82F: AD 45 05  LDA ram_0545_t01_timer
C - - - - - 0x019842 06:B832: 30 0C     BMI bra_B840_RTS
C - - - - - 0x019844 06:B834: 85 67     STA ram_0067_t11_table_index
C - - - - - 0x019846 06:B836: A9 13     LDA #con_sfx_move_cursor
C - - - - - 0x019848 06:B838: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01984A 06:B83A: 20 AD FF  JSR sub_0x01FFBD_play_sound
; bzk optimize, JMP
C - - - - - 0x01984D 06:B83D: 20 41 B8  JSR sub_B841
bra_B840_RTS:
C - - - - - 0x019850 06:B840: 60        RTS



sub_B841:
; in
    ; ram_0067_t11_table_index
C - - - - - 0x019851 06:B841: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019853 06:B843: 48        PHA
C - - - - - 0x019854 06:B844: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x019856 06:B846: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019858 06:B848: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
; bzk optimize, LDY
C - - - - - 0x01985B 06:B84B: A5 67     LDA ram_0067_t11_table_index
C - - - - - 0x01985D 06:B84D: A8        TAY
C - - - - - 0x01985E 06:B84E: B9 E2 B7  LDA tbl_B7E2_metatile_index,Y
; * 04
C - - - - - 0x019861 06:B851: 0A        ASL
C - - - - - 0x019862 06:B852: 0A        ASL
; 
C - - - - - 0x019863 06:B853: A8        TAY
C - - - - - 0x019864 06:B854: A2 00     LDX #$00
bra_B856_loop:
C - - - - - 0x019866 06:B856: A9 22     LDA #$22
C - - - - - 0x019868 06:B858: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01986B 06:B85B: E8        INX
C - - - - - 0x01986C 06:B85C: BD 7E B8  LDA tbl_B87E_ppu_address_lo,X
C - - - - - 0x01986F 06:B85F: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019872 06:B862: E8        INX
C - - - - - 0x019873 06:B863: B9 64 98  LDA tbl_0x007874_metatiles,Y
C - - - - - 0x019876 06:B866: C8        INY
C - - - - - 0x019877 06:B867: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x01987A 06:B86A: E8        INX
C - - - - - 0x01987B 06:B86B: E0 0C     CPX #$0C
C - - - - - 0x01987D 06:B86D: 90 E7     BCC bra_B856_loop
C - - - - - 0x01987F 06:B86F: 86 0E     STX ram_000E_buffer_index
C - - - - - 0x019881 06:B871: A5 02     LDA ram_buffers_flags
C - - - - - 0x019883 06:B873: 09 04     ORA #con_buffer_ready_04
C - - - - - 0x019885 06:B875: 85 02     STA ram_buffers_flags
C - - - - - 0x019887 06:B877: 68        PLA
C - - - - - 0x019888 06:B878: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01988A 06:B87A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01988D 06:B87D: 60        RTS



tbl_B87E_ppu_address_lo:
- - - - - - 0x01988E 06:B87E: 00        .byte < $2200   ; 00 
- D 1 - - - 0x01988F 06:B87F: 10        .byte < $2210   ; 01 
- - - - - - 0x019890 06:B880: 00        .byte < $2200   ; 02 
- - - - - - 0x019891 06:B881: 00        .byte < $2200   ; 03 
- D 1 - - - 0x019892 06:B882: 11        .byte < $2211   ; 04 
- - - - - - 0x019893 06:B883: 00        .byte < $2200   ; 05 
- - - - - - 0x019894 06:B884: 00        .byte < $2200   ; 06 
- D 1 - - - 0x019895 06:B885: 30        .byte < $2230   ; 07 
- - - - - - 0x019896 06:B886: 00        .byte < $2200   ; 08 
- - - - - - 0x019897 06:B887: 00        .byte < $2200   ; 09 
- D 1 - - - 0x019898 06:B888: 31        .byte < $2231   ; 0A 
- - - - - - 0x019899 06:B889: 00        .byte < $2200   ; 0B 



sub_B88A:
C - - - - - 0x01989A 06:B88A: A2 23     LDX #> $23D9
C - - - - - 0x01989C 06:B88C: A0 D9     LDY #< $23D9
C - - - - - 0x01989E 06:B88E: AD 02 20  LDA $2002
C - - - - - 0x0198A1 06:B891: 8E 06 20  STX $2006
C - - - - - 0x0198A4 06:B894: 8C 06 20  STY $2006
C - - - - - 0x0198A7 06:B897: A2 00     LDX #$00
bra_B899_loop:
C - - - - - 0x0198A9 06:B899: BD A5 B8  LDA tbl_B8A5,X
C - - - - - 0x0198AC 06:B89C: 8D 07 20  STA $2007
C - - - - - 0x0198AF 06:B89F: E8        INX
C - - - - - 0x0198B0 06:B8A0: E0 05     CPX #$05
C - - - - - 0x0198B2 06:B8A2: D0 F5     BNE bra_B899_loop
C - - - - - 0x0198B4 06:B8A4: 60        RTS



tbl_B8A5:
- D 1 - - - 0x0198B5 06:B8A5: 80        .byte $80, $A0, $20, $A0, $A0   ; 



sub_B8AA_clear_nametable_2186_2245:
C - - - - - 0x0198BA 06:B8AA: A2 21     LDX #> $2186
C - - - - - 0x0198BC 06:B8AC: A0 86     LDY #< $2186
C - - - - - 0x0198BE 06:B8AE: AD 02 20  LDA $2002
C - - - - - 0x0198C1 06:B8B1: 8E 06 20  STX $2006
C - - - - - 0x0198C4 06:B8B4: 8C 06 20  STY $2006
; clear 2186-2245
C - - - - - 0x0198C7 06:B8B7: A2 C0     LDX #$C0
bra_B8B9_loop:
C - - - - - 0x0198C9 06:B8B9: A9 00     LDA #$00
C - - - - - 0x0198CB 06:B8BB: 8D 07 20  STA $2007
C - - - - - 0x0198CE 06:B8BE: CA        DEX
C - - - - - 0x0198CF 06:B8BF: D0 F8     BNE bra_B8B9_loop
C - - - - - 0x0198D1 06:B8C1: 60        RTS



sub_B8C2_print_score_and_continues:
; print hi-score
C - - - - - 0x0198D2 06:B8C2: A9 00     LDA #$00
C - - - - - 0x0198D4 06:B8C4: 8D 52 05  STA ram_0552_t01_number_index
C - - - - - 0x0198D7 06:B8C7: A2 00     LDX #$00    ; hi-score
C - - - - - 0x0198D9 06:B8C9: 20 E1 B8  JSR sub_B8E1
; print player score
C - - - - - 0x0198DC 06:B8CC: EE 52 05  INC ram_0552_t01_number_index   ; -> 01
C - - - - - 0x0198DF 06:B8CF: A2 03     LDX #$03    ; player score
C - - - - - 0x0198E1 06:B8D1: 20 E1 B8  JSR sub_B8E1
; print continues
C - - - - - 0x0198E4 06:B8D4: EE 52 05  INC ram_0552_t01_number_index   ; -> 02
C - - - - - 0x0198E7 06:B8D7: A4 E5     LDY ram_continues
C - - - - - 0x0198E9 06:B8D9: A9 01     LDA #$01
C - - - - - 0x0198EB 06:B8DB: 85 6D     STA ram_006D_t04_max_numbers
; bzk optimize, JMP
C - - - - - 0x0198ED 06:B8DD: 20 8E B9  JSR sub_B98E
C - - - - - 0x0198F0 06:B8E0: 60        RTS



sub_B8E1:
; in
    ; ram_0552_t01_number_index
C - - - - - 0x0198F1 06:B8E1: BD DF 03  LDA ram_score,X
C - - - - - 0x0198F4 06:B8E4: 85 6E     STA ram_006E_t14_score_hi
C - - - - - 0x0198F6 06:B8E6: BD E0 03  LDA ram_score + $01,X
C - - - - - 0x0198F9 06:B8E9: 85 6F     STA ram_006F_t08_score_lo
C - - - - - 0x0198FB 06:B8EB: BD E1 03  LDA ram_score + $02,X
C - - - - - 0x0198FE 06:B8EE: 85 70     STA ram_0070_t03_tens_digit
C - - - - - 0x019900 06:B8F0: 20 E3 FF  JSR sub_0x01FFF3_prepare_big_digits_for_score
C - - - - - 0x019903 06:B8F3: AE 52 05  LDX ram_0552_t01_number_index
C - - - - - 0x019906 06:B8F6: BD 2D B9  LDA tbl_B92D_ppu_address_hi,X
C - - - - - 0x019909 06:B8F9: 85 60     STA ram_0060_t02_ppu_hi
C - - - - - 0x01990B 06:B8FB: BD 31 B9  LDA tbl_B931_ppu_address_lo,X
C - - - - - 0x01990E 06:B8FE: 85 5F     STA ram_005F_t16_ppu_lo
C - - - - - 0x019910 06:B900: A9 00     LDA #$00
C - - - - - 0x019912 06:B902: 85 6B     STA ram_006B_t15_handler_index
bra_B904_loop:
C - - - - - 0x019914 06:B904: A5 6B     LDA ram_006B_t15_handler_index
C - - - - - 0x019916 06:B906: 0A        ASL
C - - - - - 0x019917 06:B907: A8        TAY
C - - - - - 0x019918 06:B908: B9 F6 B7  LDA tbl_B7F6,Y
C - - - - - 0x01991B 06:B90B: 85 5B     STA ram_005B_t52_jmp
C - - - - - 0x01991D 06:B90D: B9 F7 B7  LDA tbl_B7F6 + $01,Y
C - - - - - 0x019920 06:B910: 85 5C     STA ram_005B_t52_jmp + $01
C - - - - - 0x019922 06:B912: A9 B9     LDA #> (ofs_B91B_return - $01)
C - - - - - 0x019924 06:B914: 48        PHA
C - - - - - 0x019925 06:B915: A9 1A     LDA #< (ofs_B91B_return - $01)
C - - - - - 0x019927 06:B917: 48        PHA
C - - - - - 0x019928 06:B918: 6C 5B 00  JMP (ram_005B_t52_jmp)



ofs_B91B_return:
; in
    ; A = digit
C - - - - - 0x01992B 06:B91B: A8        TAY
C - - - - - 0x01992C 06:B91C: B9 E2 B7  LDA tbl_B7E2_metatile_index,Y
C - - - - - 0x01992F 06:B91F: 85 6C     STA ram_006C_t19_metatile_id
C - - - - - 0x019931 06:B921: 20 35 B9  JSR sub_B935
C - - - - - 0x019934 06:B924: E6 6B     INC ram_006B_t15_handler_index
C - - - - - 0x019936 06:B926: A5 6B     LDA ram_006B_t15_handler_index
C - - - - - 0x019938 06:B928: C9 06     CMP #$06
C - - - - - 0x01993A 06:B92A: 90 D8     BCC bra_B904_loop
C - - - - - 0x01993C 06:B92C: 60        RTS



tbl_B92D_ppu_address_hi:
- D 1 - - - 0x01993D 06:B92D: 21        .byte > $2106   ; 00 
- D 1 - - - 0x01993E 06:B92E: 23        .byte > $2312   ; 01 
- D 1 - - - 0x01993F 06:B92F: 21        .byte > $2198   ; 02 
- D 1 - - - 0x019940 06:B930: 21        .byte > $21C6   ; 03 



tbl_B931_ppu_address_lo:
- D 1 - - - 0x019941 06:B931: 06        .byte < $2106   ; 00 
- D 1 - - - 0x019942 06:B932: 12        .byte < $2312   ; 01 
- D 1 - - - 0x019943 06:B933: 98        .byte < $2198   ; 02 
- D 1 - - - 0x019944 06:B934: C6        .byte < $21C6   ; 03 



sub_B935:
; in
    ; ram_006C_t19_metatile_id
; bzk optimize, useless LDX?
C - - - - - 0x019945 06:B935: AE 52 05  LDX ram_0552_t01_number_index
; 
C - - - - - 0x019948 06:B938: A9 64     LDA #< tbl_0x007874_metatiles
C - - - - - 0x01994A 06:B93A: 85 5D     STA ram_005D_t25_metatiles_data_ptr_lo
C - - - - - 0x01994C 06:B93C: A9 98     LDA #> tbl_0x007874_metatiles
C - - - - - 0x01994E 06:B93E: 85 5E     STA ram_005E_t11_metatiles_data_ptr_hi
C - - - - - 0x019950 06:B940: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019952 06:B942: 48        PHA
C - - - - - 0x019953 06:B943: A9 03     LDA #con_prg_bank + $03
C - - - - - 0x019955 06:B945: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019957 06:B947: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01995A 06:B94A: A5 6C     LDA ram_006C_t19_metatile_id
; * 04
C - - - - - 0x01995C 06:B94C: 0A        ASL
C - - - - - 0x01995D 06:B94D: 0A        ASL
; 
C - - - - - 0x01995E 06:B94E: 18        CLC
C - - - - - 0x01995F 06:B94F: 65 5D     ADC ram_005D_t25_metatiles_data_ptr_lo
C - - - - - 0x019961 06:B951: 85 61     STA ram_0061_t07_data
C - - - - - 0x019963 06:B953: A5 5E     LDA ram_005E_t11_metatiles_data_ptr_hi
C - - - - - 0x019965 06:B955: 69 00     ADC #$00
C - - - - - 0x019967 06:B957: 85 62     STA ram_0061_t07_data + $01
C - - - - - 0x019969 06:B959: A0 00     LDY #$00
C - - - - - 0x01996B 06:B95B: AD 02 20  LDA $2002
bra_B95E_loop:
C - - - - - 0x01996E 06:B95E: A5 60     LDA ram_0060_t02_ppu_hi
C - - - - - 0x019970 06:B960: 8D 06 20  STA $2006
C - - - - - 0x019973 06:B963: A5 5F     LDA ram_005F_t16_ppu_lo
C - - - - - 0x019975 06:B965: 18        CLC
C - - - - - 0x019976 06:B966: 79 8A B9  ADC tbl_B98A_ppu_address_lo_offset,Y
C - - - - - 0x019979 06:B969: 8D 06 20  STA $2006
C - - - - - 0x01997C 06:B96C: B1 61     LDA (ram_0061_t07_data),Y
C - - - - - 0x01997E 06:B96E: 8D 07 20  STA $2007
C - - - - - 0x019981 06:B971: C8        INY
C - - - - - 0x019982 06:B972: C0 04     CPY #$04
C - - - - - 0x019984 06:B974: 90 E8     BCC bra_B95E_loop
C - - - - - 0x019986 06:B976: A5 5F     LDA ram_005F_t16_ppu_lo
C - - - - - 0x019988 06:B978: 18        CLC
C - - - - - 0x019989 06:B979: 69 02     ADC #< $0002
C - - - - - 0x01998B 06:B97B: 85 5F     STA ram_005F_t16_ppu_lo
C - - - - - 0x01998D 06:B97D: A5 60     LDA ram_0060_t02_ppu_hi
C - - - - - 0x01998F 06:B97F: 69 00     ADC #> $0002
C - - - - - 0x019991 06:B981: 85 60     STA ram_0060_t02_ppu_hi
C - - - - - 0x019993 06:B983: 68        PLA
C - - - - - 0x019994 06:B984: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x019996 06:B986: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019999 06:B989: 60        RTS



tbl_B98A_ppu_address_lo_offset:
; bzk optimize, same table as 0x018913
- D 1 - - - 0x01999A 06:B98A: 00        .byte $00   ; 00 
- D 1 - - - 0x01999B 06:B98B: 01        .byte $01   ; 01 
- D 1 - - - 0x01999C 06:B98C: 20        .byte $20   ; 02 
- D 1 - - - 0x01999D 06:B98D: 21        .byte $21   ; 03 



sub_B98E:
; in
    ; Y = 
    ; ram_006D_t04_max_numbers
    ; ram_0552_t01_number_index
C - - - - - 0x01999E 06:B98E: 84 6E     STY ram_006E_t03_number
C - - - - - 0x0199A0 06:B990: A9 00     LDA #$00
C - - - - - 0x0199A2 06:B992: 85 6B     STA ram_006B_t06_numbers_counter
C - - - - - 0x0199A4 06:B994: AE 52 05  LDX ram_0552_t01_number_index
C - - - - - 0x0199A7 06:B997: BD 2D B9  LDA tbl_B92D_ppu_address_hi,X
C - - - - - 0x0199AA 06:B99A: 85 60     STA ram_0060_t02_ppu_hi
C - - - - - 0x0199AC 06:B99C: BD 31 B9  LDA tbl_B931_ppu_address_lo,X
C - - - - - 0x0199AF 06:B99F: 85 5F     STA ram_005F_t16_ppu_lo
bra_B9A1_loop:
C - - - - - 0x0199B1 06:B9A1: A4 6E     LDY ram_006E_t03_number
C - - - - - 0x0199B3 06:B9A3: B9 E2 B7  LDA tbl_B7E2_metatile_index,Y
C - - - - - 0x0199B6 06:B9A6: 85 6C     STA ram_006C_t19_metatile_id
C - - - - - 0x0199B8 06:B9A8: 20 35 B9  JSR sub_B935
C - - - - - 0x0199BB 06:B9AB: E6 6E     INC ram_006E_t03_number
C - - - - - 0x0199BD 06:B9AD: E6 6B     INC ram_006B_t06_numbers_counter
C - - - - - 0x0199BF 06:B9AF: A5 6B     LDA ram_006B_t06_numbers_counter
C - - - - - 0x0199C1 06:B9B1: C5 6D     CMP ram_006D_t04_max_numbers
C - - - - - 0x0199C3 06:B9B3: 90 EC     BCC bra_B9A1_loop
C - - - - - 0x0199C5 06:B9B5: 60        RTS



loc_B9B6:
C D 1 - - - 0x0199C6 06:B9B6: 20 E8 B9  JSR sub_B9E8
loc_B9B9:
C D 1 - - - 0x0199C9 06:B9B9: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x0199CC 06:B9BC: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x0199CF 06:B9BF: A9 18     LDA #con_chr_bank_bg + $18
C - - - - - 0x0199D1 06:B9C1: 85 20     STA ram_chr_bank_bg
C - - - - - 0x0199D3 06:B9C3: A9 19     LDA #con_chr_bank_bg + $19
C - - - - - 0x0199D5 06:B9C5: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x0199D7 06:B9C7: 20 4A B0  JSR sub_B04A
C - - - - - 0x0199DA 06:B9CA: A9 10     LDA #con_0067_t1C_10
C - - - - - 0x0199DC 06:B9CC: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x0199DE 06:B9CE: 20 06 AF  JSR sub_AF06
C - - - - - 0x0199E1 06:B9D1: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
C - - - - - 0x0199E4 06:B9D4: A9 10     LDA #con_0067_t1C_10
C - - - - - 0x0199E6 06:B9D6: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x0199E8 06:B9D8: 20 E0 B5  JSR sub_B5E0
C - - - - - 0x0199EB 06:B9DB: 20 07 BA  JSR sub_BA07
C - - - - - 0x0199EE 06:B9DE: 20 57 B0  JSR sub_B057
C - - - - - 0x0199F1 06:B9E1: 20 CB FF  JSR sub_0x01FFDB
; bzk optimize, JMP
C - - - - - 0x0199F4 06:B9E4: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x0199F7 06:B9E7: 60        RTS



sub_B9E8:
C - - - - - 0x0199F8 06:B9E8: A9 00     LDA #$00
C - - - - - 0x0199FA 06:B9EA: 8D E7 05  STA ram_05E7_counter_1
C - - - - - 0x0199FD 06:B9ED: 8D E8 05  STA ram_05E8_counter_2
C - - - - - 0x019A00 06:B9F0: 8D E9 05  STA ram_05E9_flag_and_plr_index
C - - - - - 0x019A03 06:B9F3: 8D E6 05  STA ram_05E6_script
C - - - - - 0x019A06 06:B9F6: 8D EA 05  STA ram_05EA_table_index
C - - - - - 0x019A09 06:B9F9: 8D EB 05  STA ram_05EB_table_index
C - - - - - 0x019A0C 06:B9FC: A9 02     LDA #$02
C - - - - - 0x019A0E 06:B9FE: 8D D7 03  STA ram_captain_power
C - - - - - 0x019A11 06:BA01: A9 01     LDA #$01
C - - - - - 0x019A13 06:BA03: 8D D8 03  STA ram_hawk_power
C - - - - - 0x019A16 06:BA06: 60        RTS



sub_BA07:
C - - - - - 0x019A17 06:BA07: AD E6 05  LDA ram_05E6_script
C - - - - - 0x019A1A 06:BA0A: F0 0D     BEQ bra_BA19
C - - - - - 0x019A1C 06:BA0C: 20 30 BA  JSR sub_BA30_clear_nametable_2280_233F
C - - - - - 0x019A1F 06:BA0F: AD E6 05  LDA ram_05E6_script
C - - - - - 0x019A22 06:BA12: C9 02     CMP #$02
C - - - - - 0x019A24 06:BA14: D0 07     BNE bra_BA1D
C - - - - - 0x019A26 06:BA16: 20 48 BA  JSR sub_BA48
bra_BA19:
; bzk optimize, JMP
C - - - - - 0x019A29 06:BA19: 20 CD BB  JSR sub_BBCD
C - - - - - 0x019A2C 06:BA1C: 60        RTS
bra_BA1D:
C - - - - - 0x019A2D 06:BA1D: AD E6 05  LDA ram_05E6_script
C - - - - - 0x019A30 06:BA20: C9 03     CMP #$03
C - - - - - 0x019A32 06:BA22: D0 F5     BNE bra_BA19
C - - - - - 0x019A34 06:BA24: 20 48 BA  JSR sub_BA48
C - - - - - 0x019A37 06:BA27: 20 C5 BA  JSR sub_BAC5
C - - - - - 0x019A3A 06:BA2A: A9 00     LDA #$00
C - - - - - 0x019A3C 06:BA2C: 85 DC     STA ram_00DC_flag
C - - - - - 0x019A3E 06:BA2E: F0 E9     BEQ bra_BA19    ; jmp



sub_BA30_clear_nametable_2280_233F:
C - - - - - 0x019A40 06:BA30: A2 22     LDX #> $2280
C - - - - - 0x019A42 06:BA32: A0 80     LDY #< $2280
C - - - - - 0x019A44 06:BA34: AD 02 20  LDA $2002
C - - - - - 0x019A47 06:BA37: 8E 06 20  STX $2006
C - - - - - 0x019A4A 06:BA3A: 8C 06 20  STY $2006
C - - - - - 0x019A4D 06:BA3D: A2 C0     LDX #$C0
; clear 2280-233F
C - - - - - 0x019A4F 06:BA3F: A9 00     LDA #$00
bra_BA41_loop:
C - - - - - 0x019A51 06:BA41: 8D 07 20  STA $2007
C - - - - - 0x019A54 06:BA44: CA        DEX
C - - - - - 0x019A55 06:BA45: D0 FA     BNE bra_BA41_loop
C - - - - - 0x019A57 06:BA47: 60        RTS



sub_BA48:
C - - - - - 0x019A58 06:BA48: A9 B5     LDA #< tbl_BAB5
C - - - - - 0x019A5A 06:BA4A: 85 5B     STA ram_005B_t6A_data_ptr_lo
C - - - - - 0x019A5C 06:BA4C: A9 BA     LDA #> tbl_BAB5
C - - - - - 0x019A5E 06:BA4E: 85 5C     STA ram_005C_t06_data_ptr_hi
; 
C - - - - - 0x019A60 06:BA50: AD E7 05  LDA ram_05E7_counter_1
; * 04
C - - - - - 0x019A63 06:BA53: 0A        ASL
C - - - - - 0x019A64 06:BA54: 0A        ASL
; 
C - - - - - 0x019A65 06:BA55: 18        CLC
C - - - - - 0x019A66 06:BA56: 65 5B     ADC ram_005B_t6A_data_ptr_lo
C - - - - - 0x019A68 06:BA58: 85 5D     STA ram_005D_t13_data
C - - - - - 0x019A6A 06:BA5A: A5 5C     LDA ram_005C_t06_data_ptr_hi
C - - - - - 0x019A6C 06:BA5C: 69 00     ADC #$00
C - - - - - 0x019A6E 06:BA5E: 85 5E     STA ram_005D_t13_data + $01
C - - - - - 0x019A70 06:BA60: A9 22     LDA #$22
C - - - - - 0x019A72 06:BA62: 85 68     STA ram_0068_t38_ppu_hi
C - - - - - 0x019A74 06:BA64: A0 00     LDY #$00
bra_BA66_loop:
C - - - - - 0x019A76 06:BA66: AD 02 20  LDA $2002
C - - - - - 0x019A79 06:BA69: A5 68     LDA ram_0068_t38_ppu_hi
C - - - - - 0x019A7B 06:BA6B: 8D 06 20  STA $2006
C - - - - - 0x019A7E 06:BA6E: B9 A9 BA  LDA tbl_BAA9_ppu_address_lo,Y
C - - - - - 0x019A81 06:BA71: 8D 06 20  STA $2006
C - - - - - 0x019A84 06:BA74: B1 5D     LDA (ram_005D_t13_data),Y
C - - - - - 0x019A86 06:BA76: 8D 07 20  STA $2007
C - - - - - 0x019A89 06:BA79: C8        INY
C - - - - - 0x019A8A 06:BA7A: C0 04     CPY #$04
C - - - - - 0x019A8C 06:BA7C: 90 E8     BCC bra_BA66_loop
; 
C - - - - - 0x019A8E 06:BA7E: AD E8 05  LDA ram_05E8_counter_2
; * 04
C - - - - - 0x019A91 06:BA81: 0A        ASL
C - - - - - 0x019A92 06:BA82: 0A        ASL
; 
C - - - - - 0x019A93 06:BA83: 18        CLC
C - - - - - 0x019A94 06:BA84: 65 5B     ADC ram_005B_t6A_data_ptr_lo
C - - - - - 0x019A96 06:BA86: 85 5D     STA ram_005D_t14_data
C - - - - - 0x019A98 06:BA88: A5 5C     LDA ram_005C_t06_data_ptr_hi
C - - - - - 0x019A9A 06:BA8A: 69 00     ADC #$00
C - - - - - 0x019A9C 06:BA8C: 85 5E     STA ram_005D_t14_data + $01
C - - - - - 0x019A9E 06:BA8E: A0 00     LDY #$00
bra_BA90_loop:
C - - - - - 0x019AA0 06:BA90: AD 02 20  LDA $2002
C - - - - - 0x019AA3 06:BA93: A5 68     LDA ram_0068_t38_ppu_hi
C - - - - - 0x019AA5 06:BA95: 8D 06 20  STA $2006
C - - - - - 0x019AA8 06:BA98: B9 AD BA  LDA tbl_BAAD_ppu_address_lo,Y
C - - - - - 0x019AAB 06:BA9B: 8D 06 20  STA $2006
C - - - - - 0x019AAE 06:BA9E: B1 5D     LDA (ram_005D_t14_data),Y
C - - - - - 0x019AB0 06:BAA0: 8D 07 20  STA $2007
C - - - - - 0x019AB3 06:BAA3: C8        INY
C - - - - - 0x019AB4 06:BAA4: C0 04     CPY #$04
C - - - - - 0x019AB6 06:BAA6: 90 E8     BCC bra_BA90_loop
C - - - - - 0x019AB8 06:BAA8: 60        RTS



tbl_BAA9_ppu_address_lo:
- D 1 - - - 0x019AB9 06:BAA9: 0A        .byte < $220A   ; 00 
- D 1 - - - 0x019ABA 06:BAAA: 0B        .byte < $220B   ; 01 
- D 1 - - - 0x019ABB 06:BAAB: 2A        .byte < $222A   ; 02 
- D 1 - - - 0x019ABC 06:BAAC: 2B        .byte < $222B   ; 03 



tbl_BAAD_ppu_address_lo:
- D 1 - - - 0x019ABD 06:BAAD: 1C        .byte < $221C   ; 00 
- D 1 - - - 0x019ABE 06:BAAE: 1D        .byte < $221D   ; 01 
- D 1 - - - 0x019ABF 06:BAAF: 3C        .byte < $223C   ; 02 
- D 1 - - - 0x019AC0 06:BAB0: 3D        .byte < $223D   ; 03 



tbl_BAB1_ppu_address_lo:
- D 1 - - - 0x019AC1 06:BAB1: 86        .byte < $2286   ; 00 
- D 1 - - - 0x019AC2 06:BAB2: 87        .byte < $2287   ; 01 
- D 1 - - - 0x019AC3 06:BAB3: A6        .byte < $22A6   ; 02 
- D 1 - - - 0x019AC4 06:BAB4: A7        .byte < $22A7   ; 03 



tbl_BAB5:
- D 1 - I - 0x019AC5 06:BAB5: E4        .byte $E4, $E5, $F4, $F5   ; 00 
- D 1 - I - 0x019AC9 06:BAB9: A0        .byte $A0, $A1, $B0, $B1   ; 01 
- D 1 - I - 0x019ACD 06:BABD: C4        .byte $C4, $C5, $D4, $D5   ; 02 
- D 1 - I - 0x019AD1 06:BAC1: C6        .byte $C6, $C7, $D6, $D7   ; 03 



sub_BAC5:
C - - - - - 0x019AD5 06:BAC5: A9 11     LDA #con_0067_t1C_11
C - - - - - 0x019AD7 06:BAC7: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x019AD9 06:BAC9: 20 06 AF  JSR sub_AF06
C - - - - - 0x019ADC 06:BACC: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
C - - - - - 0x019ADF 06:BACF: AD E7 05  LDA ram_05E7_counter_1
C - - - - - 0x019AE2 06:BAD2: C9 03     CMP #$03
C - - - - - 0x019AE4 06:BAD4: F0 04     BEQ bra_BADA
C - - - - - 0x019AE6 06:BAD6: A9 02     LDA #$02
C - - - - - 0x019AE8 06:BAD8: D0 02     BNE bra_BADC    ; jmp
bra_BADA:
C - - - - - 0x019AEA 06:BADA: A9 01     LDA #$01
bra_BADC:
; * 04
C - - - - - 0x019AEC 06:BADC: 0A        ASL
C - - - - - 0x019AED 06:BADD: 0A        ASL
; 
C - - - - - 0x019AEE 06:BADE: AA        TAX
C - - - - - 0x019AEF 06:BADF: A9 22     LDA #$22
C - - - - - 0x019AF1 06:BAE1: 85 68     STA ram_0068_t39_ppu_hi
C - - - - - 0x019AF3 06:BAE3: A0 00     LDY #$00
bra_BAE5_loop:
C - - - - - 0x019AF5 06:BAE5: AD 02 20  LDA $2002
C - - - - - 0x019AF8 06:BAE8: A5 68     LDA ram_0068_t39_ppu_hi
C - - - - - 0x019AFA 06:BAEA: 8D 06 20  STA $2006
C - - - - - 0x019AFD 06:BAED: B9 B1 BA  LDA tbl_BAB1_ppu_address_lo,Y
C - - - - - 0x019B00 06:BAF0: 8D 06 20  STA $2006
C - - - - - 0x019B03 06:BAF3: BD B5 BA  LDA tbl_BAB5,X
C - - - - - 0x019B06 06:BAF6: 8D 07 20  STA $2007
C - - - - - 0x019B09 06:BAF9: E8        INX
C - - - - - 0x019B0A 06:BAFA: C8        INY
C - - - - - 0x019B0B 06:BAFB: C0 04     CPY #$04
C - - - - - 0x019B0D 06:BAFD: 90 E6     BCC bra_BAE5_loop
C - - - - - 0x019B0F 06:BAFF: 60        RTS



loc_BB00:
; out
    ; ram_0067_t5A_flag
        ; 00 = repeat
        ; 01 = continue
C D 1 - - - 0x019B10 06:BB00: AD E9 05  LDA ram_05E9_flag_and_plr_index
C - - - - - 0x019B13 06:BB03: 30 1A     BMI bra_BB1F
C - - - - - 0x019B15 06:BB05: A5 36     LDA ram_buttons
C - - - - - 0x019B17 06:BB07: C5 38     CMP ram_prev_buttons
C - - - - - 0x019B19 06:BB09: F0 14     BEQ bra_BB1F
C - - - - - 0x019B1B 06:BB0B: C9 80     CMP #con_btn_A
C - - - - - 0x019B1D 06:BB0D: D0 10     BNE bra_BB1F
C - - - - - 0x019B1F 06:BB0F: 0D E9 05  ORA ram_05E9_flag_and_plr_index
C - - - - - 0x019B22 06:BB12: 8D E9 05  STA ram_05E9_flag_and_plr_index
C - - - - - 0x019B25 06:BB15: 20 57 BB  JSR sub_BB57
C - - - - - 0x019B28 06:BB18: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x019B2A 06:BB1A: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x019B2C 06:BB1C: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_BB1F:
C - - - - - 0x019B2F 06:BB1F: AD EA 05  LDA ram_05EA_table_index
C - - - - - 0x019B32 06:BB22: 30 20     BMI bra_BB44
C - - - - - 0x019B34 06:BB24: A5 02     LDA ram_buffers_flags
C - - - - - 0x019B36 06:BB26: 29 04     AND #con_buffer_ready_04
C - - - - - 0x019B38 06:BB28: D0 24     BNE bra_BB4E
C - - - - - 0x019B3A 06:BB2A: A5 37     LDA ram_buttons + $01
C - - - - - 0x019B3C 06:BB2C: C5 39     CMP ram_prev_buttons + $01
C - - - - - 0x019B3E 06:BB2E: F0 14     BEQ bra_BB44
C - - - - - 0x019B40 06:BB30: C9 80     CMP #con_btn_A
C - - - - - 0x019B42 06:BB32: D0 10     BNE bra_BB44
C - - - - - 0x019B44 06:BB34: 0D EA 05  ORA ram_05EA_table_index
C - - - - - 0x019B47 06:BB37: 8D EA 05  STA ram_05EA_table_index
C - - - - - 0x019B4A 06:BB3A: 20 5B BB  JSR sub_BB5B
C - - - - - 0x019B4D 06:BB3D: A9 1A     LDA #con_sfx_option_selected
C - - - - - 0x019B4F 06:BB3F: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x019B51 06:BB41: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_BB44:
C - - - - - 0x019B54 06:BB44: AD E9 05  LDA ram_05E9_flag_and_plr_index
C - - - - - 0x019B57 06:BB47: 10 05     BPL bra_BB4E
C - - - - - 0x019B59 06:BB49: AD EA 05  LDA ram_05EA_table_index
C - - - - - 0x019B5C 06:BB4C: 30 05     BMI bra_BB53
bra_BB4E:
C - - - - - 0x019B5E 06:BB4E: A9 00     LDA #$00
bra_BB50:
C - - - - - 0x019B60 06:BB50: 85 67     STA ram_0067_t5A_flag
C - - - - - 0x019B62 06:BB52: 60        RTS
bra_BB53:
C - - - - - 0x019B63 06:BB53: A9 01     LDA #$01
C - - - - - 0x019B65 06:BB55: D0 F9     BNE bra_BB50    ; jmp



sub_BB57:
C - - - - - 0x019B67 06:BB57: A2 00     LDX #$00
C - - - - - 0x019B69 06:BB59: F0 02     BEQ bra_BB5D    ; jmp



sub_BB5B:
C - - - - - 0x019B6B 06:BB5B: A2 02     LDX #$02
bra_BB5D:
C - - - - - 0x019B6D 06:BB5D: BD B1 BB  LDA tbl_BBB1_ppu_address,X
C - - - - - 0x019B70 06:BB60: 85 5B     STA ram_005B_t6B_ppu_lo
C - - - - - 0x019B72 06:BB62: BD B2 BB  LDA tbl_BBB1_ppu_address + $01,X
C - - - - - 0x019B75 06:BB65: 85 5C     STA ram_005C_t03_ppu_hi
C - - - - - 0x019B77 06:BB67: A9 B5     LDA #< tbl_BBB5
C - - - - - 0x019B79 06:BB69: 85 5D     STA ram_005D_t15_data
C - - - - - 0x019B7B 06:BB6B: A9 BB     LDA #> tbl_BBB5
C - - - - - 0x019B7D 06:BB6D: 85 5E     STA ram_005D_t15_data + $01
C - - - - - 0x019B7F 06:BB6F: A2 00     LDX #$00
loc_BB71_loop:
C D 1 - - - 0x019B81 06:BB71: E6 5B     INC ram_005B_t6B_ppu_lo
C - - - - - 0x019B83 06:BB73: E6 5B     INC ram_005B_t6B_ppu_lo
C - - - - - 0x019B85 06:BB75: A0 00     LDY #$00
bra_BB77_loop:
C - - - - - 0x019B87 06:BB77: A5 5C     LDA ram_005C_t03_ppu_hi
C - - - - - 0x019B89 06:BB79: 9D C0 02  STA ram_02C0_ppu_buffer,X
C - - - - - 0x019B8C 06:BB7C: A5 5B     LDA ram_005B_t6B_ppu_lo
C - - - - - 0x019B8E 06:BB7E: 18        CLC
C - - - - - 0x019B8F 06:BB7F: 79 C9 BB  ADC tbl_BBC9_ppu_address_lo_offset,Y
C - - - - - 0x019B92 06:BB82: 9D C1 02  STA ram_02C0_ppu_buffer + $01,X
C - - - - - 0x019B95 06:BB85: B1 5D     LDA (ram_005D_t15_data),Y
C - - - - - 0x019B97 06:BB87: 9D C2 02  STA ram_02C0_ppu_buffer + $02,X
C - - - - - 0x019B9A 06:BB8A: E8        INX
C - - - - - 0x019B9B 06:BB8B: E8        INX
C - - - - - 0x019B9C 06:BB8C: E8        INX
C - - - - - 0x019B9D 06:BB8D: E0 3F     CPX #$3F
C - - - - - 0x019B9F 06:BB8F: B0 15     BCS bra_BBA6_buffer_is_full
C - - - - - 0x019BA1 06:BB91: C8        INY
C - - - - - 0x019BA2 06:BB92: C0 04     CPY #$04
C - - - - - 0x019BA4 06:BB94: 90 E1     BCC bra_BB77_loop
C - - - - - 0x019BA6 06:BB96: A5 5D     LDA ram_005D_t15_data
C - - - - - 0x019BA8 06:BB98: 18        CLC
C - - - - - 0x019BA9 06:BB99: 69 04     ADC #< $0004
C - - - - - 0x019BAB 06:BB9B: 85 5D     STA ram_005D_t15_data
C - - - - - 0x019BAD 06:BB9D: A5 5E     LDA ram_005D_t15_data + $01
C - - - - - 0x019BAF 06:BB9F: 69 00     ADC #> $0004
C - - - - - 0x019BB1 06:BBA1: 85 5E     STA ram_005D_t15_data + $01
C - - - - - 0x019BB3 06:BBA3: 4C 71 BB  JMP loc_BB71_loop
bra_BBA6_buffer_is_full:
C - - - - - 0x019BB6 06:BBA6: A9 3C     LDA #$3C
C - - - - - 0x019BB8 06:BBA8: 85 0E     STA ram_000E_buffer_index
C - - - - - 0x019BBA 06:BBAA: A5 02     LDA ram_buffers_flags
C - - - - - 0x019BBC 06:BBAC: 09 04     ORA #con_buffer_ready_04
C - - - - - 0x019BBE 06:BBAE: 85 02     STA ram_buffers_flags
C - - - - - 0x019BC0 06:BBB0: 60        RTS



tbl_BBB1_ppu_address:
- D 1 - - - 0x019BC1 06:BBB1: 00 22     .word $2200 ; 00 
- D 1 - - - 0x019BC3 06:BBB3: 12 22     .word $2212 ; 02 



tbl_BBB5:
- D 1 - I - 0x019BC5 06:BBB5: E4        .byte $E4, $E5, $F4, $F5   ; 
- D 1 - I - 0x019BC9 06:BBB9: 00        .byte $00, $00, $BD, $00   ; 
- D 1 - I - 0x019BCD 06:BBBD: 8C        .byte $8C, $E9, $9C, $F9   ; 
- D 1 - I - 0x019BD1 06:BBC1: 00        .byte $00, $00, $BD, $00   ; 
- D 1 - I - 0x019BD5 06:BBC5: 00        .byte $00, $00, $00, $00   ; 



tbl_BBC9_ppu_address_lo_offset:
; bzk optimize, same table as 0x018913
- D 1 - - - 0x019BD9 06:BBC9: 00        .byte $00   ; 00 
- D 1 - - - 0x019BDA 06:BBCA: 01        .byte $01   ; 01 
- D 1 - - - 0x019BDB 06:BBCB: 20        .byte $20   ; 02 
- D 1 - - - 0x019BDC 06:BBCC: 21        .byte $21   ; 03 



sub_BBCD:
C - - - - - 0x019BDD 06:BBCD: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019BDF 06:BBCF: 48        PHA
C - - - - - 0x019BE0 06:BBD0: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x019BE2 06:BBD2: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019BE4 06:BBD4: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019BE7 06:BBD7: AD EB 05  LDA ram_05EB_table_index
C - - - - - 0x019BEA 06:BBDA: F0 36     BEQ bra_BC12
C - - - - - 0x019BEC 06:BBDC: 0A        ASL
C - - - - - 0x019BED 06:BBDD: AA        TAX
C - - - - - 0x019BEE 06:BBDE: BD A2 9C  LDA tbl_0x005CB2_nametable_attributes,X
C - - - - - 0x019BF1 06:BBE1: 85 5B     STA ram_005B_t32_ppu_data
C - - - - - 0x019BF3 06:BBE3: BD A3 9C  LDA tbl_0x005CB2_nametable_attributes + $01,X
C - - - - - 0x019BF6 06:BBE6: 85 5C     STA ram_005B_t32_ppu_data + $01
C - - - - - 0x019BF8 06:BBE8: A2 23     LDX #> $23C8
C - - - - - 0x019BFA 06:BBEA: A0 C8     LDY #< $23C8
C - - - - - 0x019BFC 06:BBEC: AD 02 20  LDA $2002
C - - - - - 0x019BFF 06:BBEF: 8E 06 20  STX $2006
C - - - - - 0x019C02 06:BBF2: 8C 06 20  STY $2006
C - - - - - 0x019C05 06:BBF5: A0 00     LDY #$00
bra_BBF7_loop:
C - - - - - 0x019C07 06:BBF7: B1 5B     LDA (ram_005B_t32_ppu_data),Y
C - - - - - 0x019C09 06:BBF9: 8D 07 20  STA $2007
C - - - - - 0x019C0C 06:BBFC: C8        INY
C - - - - - 0x019C0D 06:BBFD: C0 18     CPY #$18
C - - - - - 0x019C0F 06:BBFF: 90 F6     BCC bra_BBF7_loop
C - - - - - 0x019C11 06:BC01: AD EB 05  LDA ram_05EB_table_index
C - - - - - 0x019C14 06:BC04: C9 03     CMP #$03
C - - - - - 0x019C16 06:BC06: D0 0A     BNE bra_BC12
- - - - - - 0x019C18 06:BC08: A9 12     LDA #con_0067_t1C_12
- - - - - - 0x019C1A 06:BC0A: 85 67     STA ram_0067_t1C_table_index
- - - - - - 0x019C1C 06:BC0C: 20 06 AF  JSR sub_AF06
- - - - - - 0x019C1F 06:BC0F: 20 C8 FF  JSR sub_0x01FFD8_write_metatiles
bra_BC12:
C - - - - - 0x019C22 06:BC12: 68        PLA
C - - - - - 0x019C23 06:BC13: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x019C25 06:BC15: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019C28 06:BC18: 60        RTS



loc_BC19:
C D 1 - - - 0x019C29 06:BC19: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019C2B 06:BC1B: 48        PHA
C - - - - - 0x019C2C 06:BC1C: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x019C2E 06:BC1E: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019C30 06:BC20: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019C33 06:BC23: A5 3C     LDA ram_city
C - - - - - 0x019C35 06:BC25: 0A        ASL
C - - - - - 0x019C36 06:BC26: AA        TAX
C - - - - - 0x019C37 06:BC27: BD 49 8B  LDA tbl_0x008B59,X
C - - - - - 0x019C3A 06:BC2A: 85 DD     STA ram_00DD_t01_data
C - - - - - 0x019C3C 06:BC2C: BD 4A 8B  LDA tbl_0x008B59 + $01,X
C - - - - - 0x019C3F 06:BC2F: 85 DE     STA ram_00DD_t01_data + $01
C - - - - - 0x019C41 06:BC31: A9 00     LDA #$00
C - - - - - 0x019C43 06:BC33: 8D EF 05  STA ram_05EF_data_index
C - - - - - 0x019C46 06:BC36: 85 DB     STA ram_00DB_flag
loc_BC38_loop:
C D 1 - - - 0x019C48 06:BC38: AC EF 05  LDY ram_05EF_data_index
C - - - - - 0x019C4B 06:BC3B: B1 DD     LDA (ram_00DD_t01_data),Y
C - - - - - 0x019C4D 06:BC3D: 30 13     BMI bra_BC52
C - - - - - 0x019C4F 06:BC3F: 8D ED 05  STA ram_05ED_handler_index
C - - - - - 0x019C52 06:BC42: C8        INY
C - - - - - 0x019C53 06:BC43: B1 DD     LDA (ram_00DD_t01_data),Y
C - - - - - 0x019C55 06:BC45: 8D EE 05  STA ram_05EE_table_index
C - - - - - 0x019C58 06:BC48: C8        INY
C - - - - - 0x019C59 06:BC49: 8C EF 05  STY ram_05EF_data_index
C - - - - - 0x019C5C 06:BC4C: 20 6D BC  JSR sub_BC6D
C - - - - - 0x019C5F 06:BC4F: 4C 38 BC  JMP loc_BC38_loop
bra_BC52:
C - - - - - 0x019C62 06:BC52: 68        PLA
C - - - - - 0x019C63 06:BC53: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019C65 06:BC55: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019C68 06:BC58: A5 3C     LDA ram_city
C - - - - - 0x019C6A 06:BC5A: C9 02     CMP #$02
C - - - - - 0x019C6C 06:BC5C: D0 09     BNE bra_BC67
C - - - - - 0x019C6E 06:BC5E: A9 19     LDA #$19
C - - - - - 0x019C70 06:BC60: 85 3C     STA ram_city
C - - - - - 0x019C72 06:BC62: A9 01     LDA #con_03D6_01
C - - - - - 0x019C74 06:BC64: 8D D6 03  STA ram_03D6_subscript
bra_BC67:
C - - - - - 0x019C77 06:BC67: A9 03     LDA #con_script_gameplay
C - - - - - 0x019C79 06:BC69: 8D D4 03  STA ram_script
C - - - - - 0x019C7C 06:BC6C: 60        RTS



sub_BC6D:
C - - - - - 0x019C7D 06:BC6D: AD ED 05  LDA ram_05ED_handler_index
C - - - - - 0x019C80 06:BC70: 0A        ASL
C - - - - - 0x019C81 06:BC71: AA        TAX
C - - - - - 0x019C82 06:BC72: BD 8D BC  LDA tbl_BC8D,X
C - - - - - 0x019C85 06:BC75: 85 5B     STA ram_005B_t51_jmp
C - - - - - 0x019C87 06:BC77: BD 8E BC  LDA tbl_BC8D + $01,X
C - - - - - 0x019C8A 06:BC7A: 85 5C     STA ram_005B_t51_jmp + $01
C - - - - - 0x019C8C 06:BC7C: A9 BC     LDA #> (ofs_BC85_return - $01)
C - - - - - 0x019C8E 06:BC7E: 48        PHA
C - - - - - 0x019C8F 06:BC7F: A9 84     LDA #< (ofs_BC85_return - $01)
C - - - - - 0x019C91 06:BC81: 48        PHA
C - - - - - 0x019C92 06:BC82: 6C 5B 00  JMP (ram_005B_t51_jmp)



ofs_BC85_return:
C - - - - - 0x019C95 06:BC85: A5 67     LDA ram_0067_t5B_flag
C - - - - - 0x019C97 06:BC87: F0 03     BEQ bra_BC8C_RTS
; bzk optimize, JMP
C - - - - - 0x019C99 06:BC89: 20 02 BD  JSR sub_BD02
bra_BC8C_RTS:
C - - - - - 0x019C9C 06:BC8C: 60        RTS



tbl_BC8D:
- D 1 - - - 0x019C9D 06:BC8D: A1 BC     .word ofs_020_BCA1_00
- D 1 - - - 0x019C9F 06:BC8F: A6 BC     .word ofs_020_BCA6_01
- D 1 - - - 0x019CA1 06:BC91: B5 BC     .word ofs_020_BCB5_02
- D 1 - - - 0x019CA3 06:BC93: C0 BC     .word ofs_020_BCC0_03
- D 1 - - - 0x019CA5 06:BC95: D3 BC     .word ofs_020_BCD3_04
- D 1 - - - 0x019CA7 06:BC97: DC BC     .word ofs_020_BCDC_05
- D 1 - - - 0x019CA9 06:BC99: C7 BC     .word ofs_020_BCC7_06
- D 1 - - - 0x019CAB 06:BC9B: E5 BC     .word ofs_020_BCE5_07
- D 1 - - - 0x019CAD 06:BC9D: F1 BC     .word ofs_020_BCF1_08
- D 1 - - - 0x019CAF 06:BC9F: FD BC     .word ofs_020_BCFD_09



ofs_020_BCA1_00:
; con_05ED_00
bra_BCA1:
C - - - - - 0x019CB1 06:BCA1: A9 01     LDA #$01
C - - - - - 0x019CB3 06:BCA3: 85 67     STA ram_0067_t5B_flag
C - - - - - 0x019CB5 06:BCA5: 60        RTS
ofs_020_BCA6_01:
; con_05ED_01
C - - J - - 0x019CB6 06:BCA6: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019CB9 06:BCA9: 10 F6     BPL bra_BCA1    ; if not con_05D4_80
C - - - - - 0x019CBB 06:BCAB: AD D5 05  LDA ram_05D4_plr_flags + $01
C - - - - - 0x019CBE 06:BCAE: 10 F1     BPL bra_BCA1    ; if not con_05D4_80
bra_BCB0:
C - - - - - 0x019CC0 06:BCB0: A9 00     LDA #$00
C - - - - - 0x019CC2 06:BCB2: 85 67     STA ram_0067_t5B_flag
C - - - - - 0x019CC4 06:BCB4: 60        RTS



ofs_020_BCB5_02:
; con_05ED_02
C - - J - - 0x019CC5 06:BCB5: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019CC8 06:BCB8: 10 F6     BPL bra_BCB0    ; if not con_05D4_80
C - - - - - 0x019CCA 06:BCBA: 29 40     AND #con_05D4_40
C - - - - - 0x019CCC 06:BCBC: D0 E3     BNE bra_BCA1
C - - - - - 0x019CCE 06:BCBE: F0 F0     BEQ bra_BCB0    ; jmp



ofs_020_BCC0_03:
; con_05ED_03
C - - J - - 0x019CD0 06:BCC0: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019CD3 06:BCC3: 29 40     AND #con_05D4_40
C - - - - - 0x019CD5 06:BCC5: D0 E9     BNE bra_BCB0
ofs_020_BCC7_06:
; con_05ED_06
C - - - - - 0x019CD7 06:BCC7: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019CDA 06:BCCA: 10 E4     BPL bra_BCB0    ; if not con_05D4_80
C - - - - - 0x019CDC 06:BCCC: AD D5 05  LDA ram_05D4_plr_flags + $01
C - - - - - 0x019CDF 06:BCCF: 10 DF     BPL bra_BCB0    ; if not con_05D4_80
C - - - - - 0x019CE1 06:BCD1: 30 CE     BMI bra_BCA1    ; jmp if con_05D4_80



ofs_020_BCD3_04:
; con_05ED_04
C - - J - - 0x019CE3 06:BCD3: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x019CE6 06:BCD6: 29 08     AND #con_05E1_08
C - - - - - 0x019CE8 06:BCD8: F0 C7     BEQ bra_BCA1
- - - - - - 0x019CEA 06:BCDA: D0 D4     BNE bra_BCB0    ; jmp



ofs_020_BCDC_05:
; con_05ED_05
C - - J - - 0x019CEC 06:BCDC: AD E1 05  LDA ram_05E1_flags
C - - - - - 0x019CEF 06:BCDF: 29 08     AND #con_05E1_08
C - - - - - 0x019CF1 06:BCE1: F0 CD     BEQ bra_BCB0
- - - - - - 0x019CF3 06:BCE3: D0 BC     BNE bra_BCA1    ; jmp



ofs_020_BCE5_07:
; con_05ED_07
C - - J - - 0x019CF5 06:BCE5: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019CF8 06:BCE8: 0D D5 05  ORA ram_05D4_plr_flags + $01
C - - - - - 0x019CFB 06:BCEB: 29 20     AND #con_05D4_20
C - - - - - 0x019CFD 06:BCED: D0 B2     BNE bra_BCA1
- - - - - - 0x019CFF 06:BCEF: F0 BF     BEQ bra_BCB0    ; jmp



ofs_020_BCF1_08:
; con_05ED_08
C - - J - - 0x019D01 06:BCF1: AD D4 05  LDA ram_05D4_plr_flags
C - - - - - 0x019D04 06:BCF4: 0D D5 05  ORA ram_05D4_plr_flags + $01
C - - - - - 0x019D07 06:BCF7: 29 20     AND #con_05D4_20
C - - - - - 0x019D09 06:BCF9: D0 B5     BNE bra_BCB0
- - - - - - 0x019D0B 06:BCFB: F0 A4     BEQ bra_BCA1    ; jmp



ofs_020_BCFD_09:
; con_05ED_09
C - - J - - 0x019D0D 06:BCFD: A9 01     LDA #$01
C - - - - - 0x019D0F 06:BCFF: 85 67     STA ram_0067_t5B_flag
C - - - - - 0x019D11 06:BD01: 60        RTS



sub_BD02:
C - - - - - 0x019D12 06:BD02: AD EE 05  LDA ram_05EE_table_index
C - - - - - 0x019D15 06:BD05: 0A        ASL
C - - - - - 0x019D16 06:BD06: AA        TAX
C - - - - - 0x019D17 06:BD07: BD 16 8C  LDA tbl_0x008C26,X
C - - - - - 0x019D1A 06:BD0A: 85 DF     STA ram_00DF_t01_data
C - - - - - 0x019D1C 06:BD0C: BD 17 8C  LDA tbl_0x008C26 + $01,X
C - - - - - 0x019D1F 06:BD0F: 85 E0     STA ram_00DF_t01_data + $01
C - - - - - 0x019D21 06:BD11: A9 00     LDA #$00
C - - - - - 0x019D23 06:BD13: A8        TAY ; 00
C - - - - - 0x019D24 06:BD14: 8D F0 05  STA ram_05F0_data_index
C - - - - - 0x019D27 06:BD17: B1 DF     LDA (ram_00DF_t01_data),Y
C - - - - - 0x019D29 06:BD19: 8D F1 05  STA ram_05F1_loop_counter
C - - - - - 0x019D2C 06:BD1C: EE F0 05  INC ram_05F0_data_index
C - - - - - 0x019D2F 06:BD1F: AE EE 05  LDX ram_05EE_table_index
C - - - - - 0x019D32 06:BD22: BD BA BD  LDA tbl_BDBA,X
C - - - - - 0x019D35 06:BD25: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x019D37 06:BD27: 20 AD FF  JSR sub_0x01FFBD_play_sound
loc_BD2A_loop:
C D 1 - - - 0x019D3A 06:BD2A: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x019D3D 06:BD2D: 20 E7 B4  JSR sub_B4E7_clear_some_addresses
C - - - - - 0x019D40 06:BD30: AC F0 05  LDY ram_05F0_data_index
C - - - - - 0x019D43 06:BD33: B1 DF     LDA (ram_00DF_t01_data),Y
C - - - - - 0x019D45 06:BD35: 10 16     BPL bra_BD4D_00_7F
; 80-FF
C - - - - - 0x019D47 06:BD37: C9 FF     CMP #$FF
C - - - - - 0x019D49 06:BD39: D0 0D     BNE bra_BD48_80
; FF
C - - - - - 0x019D4B 06:BD3B: EE F0 05  INC ram_05F0_data_index
C - - - - - 0x019D4E 06:BD3E: EE F0 05  INC ram_05F0_data_index
; 
C - - - - - 0x019D51 06:BD41: A9 30     LDA #$30
C - - - - - 0x019D53 06:BD43: 8D 83 02  STA ram_pal_buffer + $03
C - - - - - 0x019D56 06:BD46: D0 21     BNE bra_BD69    ; jmp
bra_BD48_80:
C - - - - - 0x019D58 06:BD48: A6 A8     LDX ram_plr_index
C - - - - - 0x019D5A 06:BD4A: BD B6 BD  LDA tbl_BDB6,X
bra_BD4D_00_7F:
C - - - - - 0x019D5D 06:BD4D: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x019D5F 06:BD4F: 20 9F B5  JSR sub_B59F
C - - - - - 0x019D62 06:BD52: EE F0 05  INC ram_05F0_data_index
C - - - - - 0x019D65 06:BD55: AC F0 05  LDY ram_05F0_data_index
C - - - - - 0x019D68 06:BD58: B1 DF     LDA (ram_00DF_t01_data),Y
; bzk optimize, A is always 80?
C - - - - - 0x019D6A 06:BD5A: 10 05     BPL bra_BD61_00_7F
; 80
C - - - - - 0x019D6C 06:BD5C: A6 A8     LDX ram_plr_index
C - - - - - 0x019D6E 06:BD5E: BD B8 BD  LDA tbl_BDB8,X
bra_BD61_00_7F:
C - - - - - 0x019D71 06:BD61: 85 67     STA ram_0067_t1D_table_index
C - - - - - 0x019D73 06:BD63: 20 21 B6  JSR sub_B621
C - - - - - 0x019D76 06:BD66: EE F0 05  INC ram_05F0_data_index
bra_BD69:
C - - - - - 0x019D79 06:BD69: AC F0 05  LDY ram_05F0_data_index
C - - - - - 0x019D7C 06:BD6C: B1 DF     LDA (ram_00DF_t01_data),Y
; bzk optimize, swap INC and STA for readability
C - - - - - 0x019D7E 06:BD6E: EE F0 05  INC ram_05F0_data_index
C - - - - - 0x019D81 06:BD71: 8D 53 04  STA ram_0453_t01_cutscene_index
; 
C - - - - - 0x019D84 06:BD74: 20 57 B0  JSR sub_B057
C - - - - - 0x019D87 06:BD77: A9 00     LDA #$00
C - - - - - 0x019D89 06:BD79: 85 0C     STA ram_nmi_flag
C - - - - - 0x019D8B 06:BD7B: 20 D7 FF  JSR sub_0x01FFE7
C - - - - - 0x019D8E 06:BD7E: 20 CB FF  JSR sub_0x01FFDB
C - - - - - 0x019D91 06:BD81: A9 80     LDA #$80
C - - - - - 0x019D93 06:BD83: 85 A2     STA ram_00A2_t08_delay_lo
bra_BD85_loop:
C - - - - - 0x019D95 06:BD85: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019D98 06:BD88: 20 E2 BD  JSR sub_BDE2
C - - - - - 0x019D9B 06:BD8B: 20 D7 FF  JSR sub_0x01FFE7
C - - - - - 0x019D9E 06:BD8E: A5 21     LDA ram_chr_bank_bg + $01
C - - - - - 0x019DA0 06:BD90: 48        PHA
C - - - - - 0x019DA1 06:BD91: 20 CE BD  JSR sub_BDCE_print_cutscene_text
C - - - - - 0x019DA4 06:BD94: 68        PLA
C - - - - - 0x019DA5 06:BD95: 85 21     STA ram_chr_bank_bg + $01
C - - - - - 0x019DA7 06:BD97: AD 53 04  LDA ram_0453_t01_cutscene_index
C - - - - - 0x019DAA 06:BD9A: D0 04     BNE bra_BDA0
C - - - - - 0x019DAC 06:BD9C: C6 A2     DEC ram_00A2_t08_delay_lo
C - - - - - 0x019DAE 06:BD9E: F0 0A     BEQ bra_BDAA
bra_BDA0:
C - - - - - 0x019DB0 06:BDA0: A5 36     LDA ram_buttons
C - - - - - 0x019DB2 06:BDA2: C5 38     CMP ram_prev_buttons
C - - - - - 0x019DB4 06:BDA4: F0 DF     BEQ bra_BD85_loop
C - - - - - 0x019DB6 06:BDA6: 29 10     AND #con_btn_Start
C - - - - - 0x019DB8 06:BDA8: F0 DB     BEQ bra_BD85_loop
bra_BDAA:
C - - - - - 0x019DBA 06:BDAA: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019DBD 06:BDAD: CE F1 05  DEC ram_05F1_loop_counter
C - - - - - 0x019DC0 06:BDB0: F0 03     BEQ bra_BDB5_RTS
C - - - - - 0x019DC2 06:BDB2: 4C 2A BD  JMP loc_BD2A_loop
bra_BDB5_RTS:
C - - - - - 0x019DC5 06:BDB5: 60        RTS



tbl_BDB6:
- D 1 - - - 0x019DC6 06:BDB6: 07        .byte con_0067_t1C_07   ; 00 
- D 1 - - - 0x019DC7 06:BDB7: 08        .byte con_0067_t1C_08   ; 01 



tbl_BDB8:
- D 1 - - - 0x019DC8 06:BDB8: 04        .byte $04   ; 00 
- D 1 - - - 0x019DC9 06:BDB9: 05        .byte $05   ; 01 



tbl_BDBA:
- - - - - - 0x019DCA 06:BDBA: 00        .byte $00   ; 00 con_05EE_00 unused
- D 1 - - - 0x019DCB 06:BDBB: 24        .byte con_music_dialogue_1   ; 01 con_05EE_01
- D 1 - - - 0x019DCC 06:BDBC: 24        .byte con_music_dialogue_1   ; 02 con_05EE_02
- D 1 - - - 0x019DCD 06:BDBD: 24        .byte con_music_dialogue_1   ; 03 con_05EE_03
- D 1 - - - 0x019DCE 06:BDBE: 25        .byte con_music_dialogue_2   ; 04 con_05EE_04
- D 1 - - - 0x019DCF 06:BDBF: 25        .byte con_music_dialogue_2   ; 05 con_05EE_05
- D 1 - - - 0x019DD0 06:BDC0: 24        .byte con_music_dialogue_1   ; 06 con_05EE_06
- D 1 - - - 0x019DD1 06:BDC1: 25        .byte con_music_dialogue_2   ; 07 con_05EE_07
- D 1 - - - 0x019DD2 06:BDC2: 25        .byte con_music_dialogue_2   ; 08 con_05EE_08
- D 1 - - - 0x019DD3 06:BDC3: 25        .byte con_music_dialogue_2   ; 09 con_05EE_09
- D 1 - - - 0x019DD4 06:BDC4: 24        .byte con_music_dialogue_1   ; 0A con_05EE_0A
- D 1 - - - 0x019DD5 06:BDC5: 24        .byte con_music_dialogue_1   ; 0B con_05EE_0B
- D 1 - - - 0x019DD6 06:BDC6: 24        .byte con_music_dialogue_1   ; 0C con_05EE_0C
- - - - - - 0x019DD7 06:BDC7: 25        .byte con_music_dialogue_2   ; 0D con_05EE_0D
- D 1 - - - 0x019DD8 06:BDC8: 25        .byte con_music_dialogue_2   ; 0E con_05EE_0E
- D 1 - - - 0x019DD9 06:BDC9: 25        .byte con_music_dialogue_2   ; 0F con_05EE_0F
- - - - - - 0x019DDA 06:BDCA: 25        .byte con_music_dialogue_2   ; 10 con_05EE_10
- D 1 - - - 0x019DDB 06:BDCB: 24        .byte con_music_dialogue_1   ; 11 con_05EE_11
- D 1 - - - 0x019DDC 06:BDCC: 24        .byte con_music_dialogue_1   ; 12 con_05EE_12
- D 1 - - - 0x019DDD 06:BDCD: 01        .byte con_sfx_disable_se_1   ; 13 con_05EE_13



sub_BDCE_print_cutscene_text:
C - - - - - 0x019DDE 06:BDCE: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019DE0 06:BDD0: 48        PHA
C - - - - - 0x019DE1 06:BDD1: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x019DE3 06:BDD3: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019DE5 06:BDD5: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019DE8 06:BDD8: 20 58 8E  JSR sub_0x008E68_print_cutscene_text
C - - - - - 0x019DEB 06:BDDB: 68        PLA
C - - - - - 0x019DEC 06:BDDC: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x019DEE 06:BDDE: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019DF1 06:BDE1: 60        RTS



sub_BDE2:
C - - - - - 0x019DF2 06:BDE2: A5 CB     LDA ram_00CB_t02_flag
C - - - - - 0x019DF4 06:BDE4: F0 0C     BEQ bra_BDF2_RTS
C - - - - - 0x019DF6 06:BDE6: A2 00     LDX #$00
bra_BDE8_loop:
C - - - - - 0x019DF8 06:BDE8: BD 41 04  LDA ram_043A_obj_flags + $03 + $04,X
C - - - - - 0x019DFB 06:BDEB: 30 06     BMI bra_BDF3
loc_BDED:
bra_BDED:
C D 1 - - - 0x019DFD 06:BDED: E8        INX
C - - - - - 0x019DFE 06:BDEE: E0 06     CPX #$06
C - - - - - 0x019E00 06:BDF0: 90 F6     BCC bra_BDE8_loop
bra_BDF2_RTS:
C - - - - - 0x019E02 06:BDF2: 60        RTS



bra_BDF3:
C - - - - - 0x019E03 06:BDF3: BD DD 04  LDA ram_04D9_obj + $04,X
C - - - - - 0x019E06 06:BDF6: F0 F5     BEQ bra_BDED
C - - - - - 0x019E08 06:BDF8: C9 01     CMP #$01
C - - - - - 0x019E0A 06:BDFA: F0 06     BEQ bra_BE02
C - - - - - 0x019E0C 06:BDFC: 20 08 BE  JSR sub_BE08
C - - - - - 0x019E0F 06:BDFF: 4C ED BD  JMP loc_BDED
bra_BE02:
C - - - - - 0x019E12 06:BE02: 20 26 BE  JSR sub_BE26
C - - - - - 0x019E15 06:BE05: 4C ED BD  JMP loc_BDED



sub_BE08:
C - - - - - 0x019E18 06:BE08: A5 36     LDA ram_buttons
C - - - - - 0x019E1A 06:BE0A: 29 80     AND #con_btn_A
C - - - - - 0x019E1C 06:BE0C: D0 04     BNE bra_BE12
C - - - - - 0x019E1E 06:BE0E: A9 08     LDA #$08    ; each 8 frames
C - - - - - 0x019E20 06:BE10: D0 02     BNE bra_BE14    ; jmp
bra_BE12:
C - - - - - 0x019E22 06:BE12: A9 02     LDA #$02    ; each 2 frames
bra_BE14:
C - - - - - 0x019E24 06:BE14: 85 67     STA ram_0067_t5C_frm_cnt_mask
C - - - - - 0x019E26 06:BE16: AD 60 04  LDA ram_0460
C - - - - - 0x019E29 06:BE19: C9 03     CMP #$03
C - - - - - 0x019E2B 06:BE1B: F0 05     BEQ bra_BE22
C - - - - - 0x019E2D 06:BE1D: AD 53 04  LDA ram_0453_t01_cutscene_index
C - - - - - 0x019E30 06:BE20: D0 08     BNE bra_BE2A
bra_BE22:
C - - - - - 0x019E32 06:BE22: A0 02     LDY #$02
C - - - - - 0x019E34 06:BE24: D0 10     BNE bra_BE36    ; jmp
sub_BE26:
C - - - - - 0x019E36 06:BE26: A9 20     LDA #$20    ; each 32 frames
C - - - - - 0x019E38 06:BE28: 85 67     STA ram_0067_t5C_frm_cnt_mask
bra_BE2A:
C - - - - - 0x019E3A 06:BE2A: A5 14     LDA ram_frm_cnt
C - - - - - 0x019E3C 06:BE2C: 25 67     AND ram_0067_t5C_frm_cnt_mask
C - - - - - 0x019E3E 06:BE2E: D0 04     BNE bra_BE34
C - - - - - 0x019E40 06:BE30: A0 04     LDY #$04
C - - - - - 0x019E42 06:BE32: D0 02     BNE bra_BE36    ; jmp
bra_BE34:
C - - - - - 0x019E44 06:BE34: A0 02     LDY #$02
bra_BE36:
C - - - - - 0x019E46 06:BE36: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019E48 06:BE38: 48        PHA
C - - - - - 0x019E49 06:BE39: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x019E4B 06:BE3B: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019E4D 06:BE3D: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019E50 06:BE40: BD C3 04  LDA ram_04BC_data_ptr_lo_obj + $07,X
C - - - - - 0x019E53 06:BE43: 85 5B     STA ram_005B_t31_data
C - - - - - 0x019E55 06:BE45: BD D0 04  LDA ram_04C9_data_ptr_hi_obj + $07,X
C - - - - - 0x019E58 06:BE48: 85 5C     STA ram_005B_t31_data + $01
C - - - - - 0x019E5A 06:BE4A: B1 5B     LDA (ram_005B_t31_data),Y
C - - - - - 0x019E5C 06:BE4C: 9D A9 04  STA ram_spr_data_ptr_lo_obj + $07,X
C - - - - - 0x019E5F 06:BE4F: C8        INY
C - - - - - 0x019E60 06:BE50: B1 5B     LDA (ram_005B_t31_data),Y
C - - - - - 0x019E62 06:BE52: 9D B6 04  STA ram_spr_data_ptr_hi_obj + $07,X
C - - - - - 0x019E65 06:BE55: 68        PLA
C - - - - - 0x019E66 06:BE56: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x019E68 06:BE58: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019E6B 06:BE5B: 60        RTS



loc_BE5C:
C D 1 - - - 0x019E6C 06:BE5C: A9 1D     LDA #con_music_credits
C - - - - - 0x019E6E 06:BE5E: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x019E70 06:BE60: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x019E73 06:BE63: 20 E7 B4  JSR sub_B4E7_clear_some_addresses
C - - - - - 0x019E76 06:BE66: A9 00     LDA #$00
C - - - - - 0x019E78 06:BE68: 8D 34 05  STA ram_0534_t02
bra_BE6B_loop:
C - - - - - 0x019E7B 06:BE6B: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x019E7E 06:BE6E: AE 34 05  LDX ram_0534_t02
C - - - - - 0x019E81 06:BE71: BD AE BE  LDA tbl_BEAE,X
C - - - - - 0x019E84 06:BE74: 85 67     STA ram_0067_t1C_table_index
C - - - - - 0x019E86 06:BE76: 20 9F B5  JSR sub_B59F
C - - - - - 0x019E89 06:BE79: 20 57 B0  JSR sub_B057
C - - - - - 0x019E8C 06:BE7C: 20 CB FF  JSR sub_0x01FFDB
C - - - - - 0x019E8F 06:BE7F: A9 02     LDA #> $0280
C - - - - - 0x019E91 06:BE81: 85 A2     STA ram_00A2_t03_delay_hi
C - - - - - 0x019E93 06:BE83: A9 80     LDA #< $0280
C - - - - - 0x019E95 06:BE85: 85 A3     STA ram_00A3_t03_delay_lo
C - - - - - 0x019E97 06:BE87: 20 B0 BE  JSR sub_BEB0_wait
C - - - - - 0x019E9A 06:BE8A: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019E9D 06:BE8D: EE 34 05  INC ram_0534_t02
C - - - - - 0x019EA0 06:BE90: AD 34 05  LDA ram_0534_t02
C - - - - - 0x019EA3 06:BE93: C9 02     CMP #$02
C - - - - - 0x019EA5 06:BE95: 90 D4     BCC bra_BE6B_loop
C - - - - - 0x019EA7 06:BE97: A9 00     LDA #$00
C - - - - - 0x019EA9 06:BE99: 8D 34 05  STA ram_0534_t03
C - - - - - 0x019EAC 06:BE9C: A9 21     LDA #con_music_ost_captain
C - - - - - 0x019EAE 06:BE9E: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x019EB0 06:BEA0: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x019EB3 06:BEA3: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x019EB6 06:BEA6: A9 1F     LDA #con_chr_bank_bg + $1F
C - - - - - 0x019EB8 06:BEA8: 85 21     STA ram_chr_bank_bg + $01
; bzk optimize, JMP
C - - - - - 0x019EBA 06:BEAA: 20 BC BE  JSR sub_BEBC_credits
C - - - - - 0x019EBD 06:BEAD: 60        RTS



tbl_BEAE:
- D 1 - - - 0x019EBE 06:BEAE: 0D        .byte con_0067_t1C_0D   ; 00 
- D 1 - - - 0x019EBF 06:BEAF: 0E        .byte con_0067_t1C_0E   ; 01 



sub_BEB0_wait:
bra_BEB0_loop:
C - - - - - 0x019EC0 06:BEB0: 20 83 FF  JSR sub_0x01FF93_wait_1_frm
C - - - - - 0x019EC3 06:BEB3: C6 A3     DEC ram_00A3_t03_delay_lo
C - - - - - 0x019EC5 06:BEB5: D0 F9     BNE bra_BEB0_loop
C - - - - - 0x019EC7 06:BEB7: C6 A2     DEC ram_00A2_t03_delay_hi
C - - - - - 0x019EC9 06:BEB9: D0 F5     BNE bra_BEB0_loop
C - - - - - 0x019ECB 06:BEBB: 60        RTS



sub_BEBC_credits:
bra_BEBC_loop:
C - - - - - 0x019ECC 06:BEBC: 20 80 FF  JSR sub_0x01FF90_turn_screen_off
C - - - - - 0x019ECF 06:BEBF: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x019ED1 06:BEC1: 48        PHA
C - - - - - 0x019ED2 06:BEC2: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x019ED4 06:BEC4: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019ED6 06:BEC6: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x019ED9 06:BEC9: 20 F1 BE  JSR sub_BEF1_write_nametable_attributes_credits_to_ppu
C - - - - - 0x019EDC 06:BECC: 20 0A BF  JSR sub_BF0A_write_credits_text_to_ppu
C - - - - - 0x019EDF 06:BECF: 20 49 BF  JSR sub_BF49
C - - - - - 0x019EE2 06:BED2: 68        PLA
C - - - - - 0x019EE3 06:BED3: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x019EE5 06:BED5: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
; since 00A3 decreases before checking for 00,
; this makes 0200 frames delay, not 0100
C - - - - - 0x019EE8 06:BED8: A9 01     LDA #> $0100
C - - - - - 0x019EEA 06:BEDA: 85 A2     STA ram_00A2_t03_delay_hi
C - - - - - 0x019EEC 06:BEDC: A9 00     LDA #< $0100
C - - - - - 0x019EEE 06:BEDE: 85 A3     STA ram_00A3_t03_delay_lo
C - - - - - 0x019EF0 06:BEE0: 20 B0 BE  JSR sub_BEB0_wait
C - - - - - 0x019EF3 06:BEE3: 20 CE FF  JSR sub_0x01FFDE
C - - - - - 0x019EF6 06:BEE6: EE 34 05  INC ram_0534_t03
C - - - - - 0x019EF9 06:BEE9: AD 34 05  LDA ram_0534_t03
C - - - - - 0x019EFC 06:BEEC: C9 07     CMP #$07
C - - - - - 0x019EFE 06:BEEE: 90 CC     BCC bra_BEBC_loop
C - - - - - 0x019F00 06:BEF0: 60        RTS



sub_BEF1_write_nametable_attributes_credits_to_ppu:
C - - - - - 0x019F01 06:BEF1: A2 23     LDX #> $23D1
C - - - - - 0x019F03 06:BEF3: 86 5E     STX ram_005E_t02_ppu_hi
C - - - - - 0x019F05 06:BEF5: A0 D1     LDY #< $23D1
C - - - - - 0x019F07 06:BEF7: 84 5D     STY ram_005D_t26_ppu_lo
C - - - - - 0x019F09 06:BEF9: 20 9B BF  JSR sub_BF9B_set_ppu_address
C - - - - - 0x019F0C 06:BEFC: A2 00     LDX #$00
bra_BEFE_loop:
C - - - - - 0x019F0E 06:BEFE: BD F1 8C  LDA tbl_0x008D01_nametable_attributes_credits,X
C - - - - - 0x019F11 06:BF01: 8D 07 20  STA $2007
C - - - - - 0x019F14 06:BF04: E8        INX
C - - - - - 0x019F15 06:BF05: E0 25     CPX #$25
C - - - - - 0x019F17 06:BF07: 90 F5     BCC bra_BEFE_loop
C - - - - - 0x019F19 06:BF09: 60        RTS



sub_BF0A_write_credits_text_to_ppu:
C - - - - - 0x019F1A 06:BF0A: AD 34 05  LDA ram_0534_t03
C - - - - - 0x019F1D 06:BF0D: 0A        ASL
C - - - - - 0x019F1E 06:BF0E: AA        TAX
C - - - - - 0x019F1F 06:BF0F: BD 16 8D  LDA tbl_0x008D26_text_credits,X
C - - - - - 0x019F22 06:BF12: 85 5B     STA ram_005B_t30_credit_text_data
C - - - - - 0x019F24 06:BF14: BD 17 8D  LDA tbl_0x008D26_text_credits + $01,X
C - - - - - 0x019F27 06:BF17: 85 5C     STA ram_005B_t30_credit_text_data + $01
C - - - - - 0x019F29 06:BF19: BD 24 8D  LDA tbl_0x008D34_ppu_address_credits,X
C - - - - - 0x019F2C 06:BF1C: 85 5D     STA ram_005D_t26_ppu_lo
C - - - - - 0x019F2E 06:BF1E: BD 25 8D  LDA tbl_0x008D34_ppu_address_credits + $01,X
C - - - - - 0x019F31 06:BF21: 85 5E     STA ram_005E_t02_ppu_hi
C - - - - - 0x019F33 06:BF23: A0 00     LDY #$00
bra_BF25_loop:
C - - - - - 0x019F35 06:BF25: 20 9B BF  JSR sub_BF9B_set_ppu_address
bra_BF28_loop:
C - - - - - 0x019F38 06:BF28: B1 5B     LDA (ram_005B_t30_credit_text_data),Y
C - - - - - 0x019F3A 06:BF2A: C9 FE     CMP #$FE
C - - - - - 0x019F3C 06:BF2C: F0 0A     BEQ bra_BF38_FE
C - - - - - 0x019F3E 06:BF2E: C9 FF     CMP #$FF
C - - - - - 0x019F40 06:BF30: F0 16     BEQ bra_BF48_RTS
C - - - - - 0x019F42 06:BF32: 8D 07 20  STA $2007
C - - - - - 0x019F45 06:BF35: C8        INY
C - - - - - 0x019F46 06:BF36: D0 F0     BNE bra_BF28_loop    ; jmp
bra_BF38_FE:
C - - - - - 0x019F48 06:BF38: A5 5D     LDA ram_005D_t26_ppu_lo
C - - - - - 0x019F4A 06:BF3A: 18        CLC
C - - - - - 0x019F4B 06:BF3B: 69 20     ADC #< $0020
C - - - - - 0x019F4D 06:BF3D: 85 5D     STA ram_005D_t26_ppu_lo
C - - - - - 0x019F4F 06:BF3F: A5 5E     LDA ram_005E_t02_ppu_hi
C - - - - - 0x019F51 06:BF41: 69 00     ADC #> $0020
C - - - - - 0x019F53 06:BF43: 85 5E     STA ram_005E_t02_ppu_hi
C - - - - - 0x019F55 06:BF45: C8        INY
C - - - - - 0x019F56 06:BF46: D0 DD     BNE bra_BF25_loop    ; jmp
bra_BF48_RTS:
C - - - - - 0x019F58 06:BF48: 60        RTS



sub_BF49:
C - - - - - 0x019F59 06:BF49: 20 57 B0  JSR sub_B057
C - - - - - 0x019F5C 06:BF4C: A9 00     LDA #$00
C - - - - - 0x019F5E 06:BF4E: 8D 41 05  STA ram_0541_t03
bra_BF51_loop:
C - - - - - 0x019F61 06:BF51: AE 41 05  LDX ram_0541_t03
C - - - - - 0x019F64 06:BF54: BD 8F BF  LDA tbl_BF8F_colors,X
C - - - - - 0x019F67 06:BF57: 85 67     STA ram_0067_t5D_color
C - - - - - 0x019F69 06:BF59: BD 93 BF  LDA tbl_BF93_palette_buffer_index,X
C - - - - - 0x019F6C 06:BF5C: AA        TAX
C - - - - - 0x019F6D 06:BF5D: A0 00     LDY #$00
bra_BF5F_loop:
C - - - - - 0x019F6F 06:BF5F: A5 67     LDA ram_0067_t5D_color
C - - - - - 0x019F71 06:BF61: 38        SEC
C - - - - - 0x019F72 06:BF62: F9 97 BF  SBC tbl_BF97_brightness,Y
C - - - - - 0x019F75 06:BF65: 10 02     BPL bra_BF69
C - - - - - 0x019F77 06:BF67: A9 0F     LDA #$0F
bra_BF69:
C - - - - - 0x019F79 06:BF69: 9D 80 02  STA ram_pal_buffer,X
C - - - - - 0x019F7C 06:BF6C: A9 20     LDA #$20    ; background + sprite colors
C - - - - - 0x019F7E 06:BF6E: 85 4F     STA ram_004F_pal_buffer_size
C - - - - - 0x019F80 06:BF70: A9 01     LDA #con_buffer_ready_palette
C - - - - - 0x019F82 06:BF72: 85 02     STA ram_buffers_flags
C - - - - - 0x019F84 06:BF74: A9 01     LDA #> $010C
C - - - - - 0x019F86 06:BF76: 85 A2     STA ram_00A2_t03_delay_hi
C - - - - - 0x019F88 06:BF78: A9 0C     LDA #< $010C
C - - - - - 0x019F8A 06:BF7A: 85 A3     STA ram_00A3_t03_delay_lo
C - - - - - 0x019F8C 06:BF7C: 20 B0 BE  JSR sub_BEB0_wait
C - - - - - 0x019F8F 06:BF7F: C8        INY
C - - - - - 0x019F90 06:BF80: C0 04     CPY #$04
C - - - - - 0x019F92 06:BF82: 90 DB     BCC bra_BF5F_loop
C - - - - - 0x019F94 06:BF84: EE 41 05  INC ram_0541_t03
C - - - - - 0x019F97 06:BF87: AD 41 05  LDA ram_0541_t03
C - - - - - 0x019F9A 06:BF8A: C9 04     CMP #$04
C - - - - - 0x019F9C 06:BF8C: 90 C3     BCC bra_BF51_loop
C - - - - - 0x019F9E 06:BF8E: 60        RTS



tbl_BF8F_colors:
- D 1 - - - 0x019F9F 06:BF8F: 25        .byte $25   ; 00 
- D 1 - - - 0x019FA0 06:BF90: 23        .byte $23   ; 01 
- D 1 - - - 0x019FA1 06:BF91: 29        .byte $29   ; 02 
- D 1 - - - 0x019FA2 06:BF92: 28        .byte $28   ; 03 



tbl_BF93_palette_buffer_index:
- D 1 - - - 0x019FA3 06:BF93: 03        .byte $03   ; 00 
- D 1 - - - 0x019FA4 06:BF94: 07        .byte $07   ; 01 
- D 1 - - - 0x019FA5 06:BF95: 0B        .byte $0B   ; 02 
- D 1 - - - 0x019FA6 06:BF96: 0F        .byte $0F   ; 03 



tbl_BF97_brightness:
- D 1 - - - 0x019FA7 06:BF97: 30        .byte $30   ; 00 
- D 1 - - - 0x019FA8 06:BF98: 20        .byte $20   ; 01 
- D 1 - - - 0x019FA9 06:BF99: 10        .byte $10   ; 02 
- D 1 - - - 0x019FAA 06:BF9A: 00        .byte $00   ; 03 



sub_BF9B_set_ppu_address:
; in
    ; ram_005D_t26_ppu_lo
    ; ram_005E_t02_ppu_hi
C - - - - - 0x019FAB 06:BF9B: AD 02 20  LDA $2002
C - - - - - 0x019FAE 06:BF9E: A5 5E     LDA ram_005E_t02_ppu_hi
C - - - - - 0x019FB0 06:BFA0: 8D 06 20  STA $2006
C - - - - - 0x019FB3 06:BFA3: A5 5D     LDA ram_005D_t26_ppu_lo
C - - - - - 0x019FB5 06:BFA5: 8D 06 20  STA $2006
C - - - - - 0x019FB8 06:BFA8: 60        RTS


; bzk garbage
- - - - - - 0x019FB9 06:BFA9: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FC0 06:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FD0 06:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FE0 06:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x019FF0 06:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01A000 06:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 0C: 0x%04X [%d]", ($C000 - *), ($C000 - *))



