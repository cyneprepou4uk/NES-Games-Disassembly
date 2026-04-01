.segment "BANK_0B"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $A000  ; for listing file
; 0x016010-0x01800F



.export ofs_004_0x016010_00_captain_handler
.export sub_0x016013
.export ofs_004_0x016016_01_hawk_handler
.export sub_0x016019_deal_damage_to_player



ofs_004_0x016010_00_captain_handler:
; bzk optimize
C - - J - - 0x016010 05:A000: 4C 18 A0  JMP loc_A018_captain_handler



sub_0x016013:
; bzk optimize
C - - - - - 0x016013 05:A003: 4C 92 AE  JMP loc_AE92



ofs_004_0x016016_01_hawk_handler:
; bzk optimize
C - - J - - 0x016016 05:A006: 4C D5 B2  JMP loc_B2D5_hawk_handler



sub_0x016019_deal_damage_to_player:
; bzk optimize
C - - - - - 0x016019 05:A009: 4C 46 B8  JMP loc_B846_deal_damage_to_player



loc_A00C:
; bzk garbage
- - - - - - 0x01601C 05:A00C: 4C 0C A0  JMP loc_A00C



loc_A00F:
; bzk garbage
- - - - - - 0x01601F 05:A00F: 4C 0F A0  JMP loc_A00F



loc_A012:
; bzk garbage
- - - - - - 0x016022 05:A012: 4C 12 A0  JMP loc_A012



loc_A015:
; bzk garbage
- - - - - - 0x016025 05:A015: 4C 15 A0  JMP loc_A015



loc_A018_captain_handler:
C D 1 - - - 0x016028 05:A018: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01602B 05:A01B: 29 04     AND #$04
C - - - - - 0x01602D 05:A01D: D0 33     BNE bra_A052
C - - - - - 0x01602F 05:A01F: 20 03 B2  JSR sub_B203
C - - - - - 0x016032 05:A022: 20 A1 A0  JSR sub_A0A1
C - - - - - 0x016035 05:A025: A9 00     LDA #$00
C - - - - - 0x016037 05:A027: 85 AF     STA ram_00AF_flag
C - - - - - 0x016039 05:A029: 20 5C BF  JSR sub_BF5C
C - - - - - 0x01603C 05:A02C: 20 50 B1  JSR sub_B150
C - - - - - 0x01603F 05:A02F: AD CF 05  LDA ram_05CF_flag_and_obj_index
C - - - - - 0x016042 05:A032: 30 06     BMI bra_A03A
C - - - - - 0x016044 05:A034: 20 07 AF  JSR sub_AF07
C - - - - - 0x016047 05:A037: 20 95 B1  JSR sub_B195
bra_A03A:
C - - - - - 0x01604A 05:A03A: 20 83 B9  JSR sub_B983
C - - - - - 0x01604D 05:A03D: 20 9B A1  JSR sub_A19B_captain_state_handler
C - - - - - 0x016050 05:A040: 20 BD B6  JSR sub_B6BD
C - - - - - 0x016053 05:A043: 20 51 BE  JSR sub_BE51
C - - - - - 0x016056 05:A046: 20 73 A7  JSR sub_A773_shield_handler
C - - - - - 0x016059 05:A049: 20 95 AA  JSR sub_AA95
C - - - - - 0x01605C 05:A04C: 20 72 A0  JSR sub_A072
C - - - - - 0x01605F 05:A04F: 20 E3 B8  JSR sub_B8E3
bra_A052:
; bzk optimize, JMP
C - - - - - 0x016062 05:A052: 20 91 BE  JSR sub_BE91
C - - - - - 0x016065 05:A055: 60        RTS


; bzk garbage
- - - - - - 0x016066 05:A056: A5 36     LDA ram_buttons
- - - - - - 0x016068 05:A058: 8D FA 03  STA $03FA
- - - - - - 0x01606B 05:A05B: A5 1B     LDA ram_001B_player_angle
- - - - - - 0x01606D 05:A05D: 8D FB 03  STA $03FB
- - - - - - 0x016070 05:A060: A9 00     LDA #$00
- - - - - - 0x016072 05:A062: 85 36     STA ram_buttons
- - - - - - 0x016074 05:A064: 85 1B     STA ram_001B_player_angle
- - - - - - 0x016076 05:A066: 60        RTS


; bzk garbage
- - - - - - 0x016077 05:A067: AD FA 03  LDA $03FA
- - - - - - 0x01607A 05:A06A: 85 36     STA ram_buttons
- - - - - - 0x01607C 05:A06C: AD FB 03  LDA $03FB
- - - - - - 0x01607F 05:A06F: 85 1B     STA ram_001B_player_angle
- - - - - - 0x016081 05:A071: 60        RTS



sub_A072:
C - - - - - 0x016082 05:A072: A9 00     LDA #$00
C - - - - - 0x016084 05:A074: 85 67     STA ram_0067_t3F_btns
C - - - - - 0x016086 05:A076: A5 36     LDA ram_buttons
C - - - - - 0x016088 05:A078: 29 80     AND #con_btn_A
C - - - - - 0x01608A 05:A07A: F0 02     BEQ bra_A07E
C - - - - - 0x01608C 05:A07C: 85 67     STA ram_0067_t3F_btns
bra_A07E:
C - - - - - 0x01608E 05:A07E: A5 36     LDA ram_buttons
C - - - - - 0x016090 05:A080: 29 40     AND #con_btn_B
C - - - - - 0x016092 05:A082: F0 06     BEQ bra_A08A
C - - - - - 0x016094 05:A084: A9 40     LDA #con_btn_B
C - - - - - 0x016096 05:A086: 05 67     ORA ram_0067_t3F_btns
C - - - - - 0x016098 05:A088: 85 67     STA ram_0067_t3F_btns
bra_A08A:
C - - - - - 0x01609A 05:A08A: A5 AC     LDA ram_00AC_angle_and_flags
; bzk optimize, AND 0F for readability
C - - - - - 0x01609C 05:A08C: 29 3F     AND #$3F
; 
C - - - - - 0x01609E 05:A08E: 05 67     ORA ram_0067_t3F_btns
C - - - - - 0x0160A0 05:A090: 85 AC     STA ram_00AC_angle_and_flags
C - - - - - 0x0160A2 05:A092: 29 0F     AND #con_btns_Dpad
C - - - - - 0x0160A4 05:A094: C5 1B     CMP ram_001B_player_angle
C - - - - - 0x0160A6 05:A096: F0 08     BEQ bra_A0A0_RTS
C - - - - - 0x0160A8 05:A098: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x0160AA 05:A09A: 29 F0     AND #$F0
C - - - - - 0x0160AC 05:A09C: 05 1B     ORA ram_001B_player_angle
C - - - - - 0x0160AE 05:A09E: 85 AC     STA ram_00AC_angle_and_flags
bra_A0A0_RTS:
C - - - - - 0x0160B0 05:A0A0: 60        RTS



sub_A0A1:
C - - - - - 0x0160B1 05:A0A1: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x0160B3 05:A0A3: A5 AA     LDA ram_00AA_plr_flags
; bzk optimize, value can be 00-03
C - - - - - 0x0160B5 05:A0A5: 29 0F     AND #con_00AA_flag_jump + con_00AA_flag_duck_attack + $0C
C - - - - - 0x0160B7 05:A0A7: D0 1B     BNE bra_A0C4
C - - - - - 0x0160B9 05:A0A9: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0160BC 05:A0AC: 29 98     AND #$80 + $10 + $08
C - - - - - 0x0160BE 05:A0AE: F0 03     BEQ bra_A0B3
C - - - - - 0x0160C0 05:A0B0: 4C 7F A1  JMP loc_A17F_RTS
bra_A0B3:
C - - - - - 0x0160C3 05:A0B3: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0160C6 05:A0B6: C9 0A     CMP #con_plr_state_land
C - - - - - 0x0160C8 05:A0B8: F0 0A     BEQ bra_A0C4
C - - - - - 0x0160CA 05:A0BA: C9 0E     CMP #con_plr_state_throw_shield
C - - - - - 0x0160CC 05:A0BC: F0 06     BEQ bra_A0C4
C - - - - - 0x0160CE 05:A0BE: BD 89 A1  LDA tbl_A189,X
C - - - - - 0x0160D1 05:A0C1: 8D 01 04  STA ram_player_state_1
bra_A0C4:
C - - - - - 0x0160D4 05:A0C4: A5 AA     LDA ram_00AA_plr_flags
; bzk optimize, value can be 00-03
C - - - - - 0x0160D6 05:A0C6: 29 0E     AND #con_00AA_flag_jump + con_00AA_flag_duck_attack + $0B
C - - - - - 0x0160D8 05:A0C8: D0 09     BNE bra_A0D3
C - - - - - 0x0160DA 05:A0CA: BD 80 A1  LDA tbl_A180_direction,X
C - - - - - 0x0160DD 05:A0CD: C9 FF     CMP #$FF
C - - - - - 0x0160DF 05:A0CF: F0 02     BEQ bra_A0D3    ; skip
C - - - - - 0x0160E1 05:A0D1: 85 A4     STA ram_plr_direction
bra_A0D3:
C - - - - - 0x0160E3 05:A0D3: A5 36     LDA ram_buttons
C - - - - - 0x0160E5 05:A0D5: 29 80     AND #con_btn_A
C - - - - - 0x0160E7 05:A0D7: F0 6E     BEQ bra_A147
C - - - - - 0x0160E9 05:A0D9: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x0160EB 05:A0DB: 29 80     AND #$80
C - - - - - 0x0160ED 05:A0DD: D0 68     BNE bra_A147
C - - - - - 0x0160EF 05:A0DF: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x0160F1 05:A0E1: 29 01     AND #con_00AA_flag_jump
C - - - - - 0x0160F3 05:A0E3: D0 62     BNE bra_A147
C - - - - - 0x0160F5 05:A0E5: A9 02     LDA #con_plr_state_jump
C - - - - - 0x0160F7 05:A0E7: 8D 01 04  STA ram_player_state_1
C - - - - - 0x0160FA 05:A0EA: A9 00     LDA #con_plr_state_idle
C - - - - - 0x0160FC 05:A0EC: 8D 02 04  STA ram_prev_player_state_1
                                       ;LDA #$00
C - - - - - 0x0160FF 05:A0EF: 8D 15 04  STA ram_0415_player_counter
                                       ;LDA #con_00AB_00
C - - - - - 0x016102 05:A0F2: 85 AB     STA ram_00AB_handler
; bzk optimize, useless STA
C - - - - - 0x016104 05:A0F4: 8D 19 04  STA ram_0419_tFF_useless
; 
C - - - - - 0x016107 05:A0F7: 8D 1A 04  STA ram_player_jump_timer
C - - - - - 0x01610A 05:A0FA: 8D 1B 04  STA ram_041B_player_flags   ; con_041B_flag_00
C - - - - - 0x01610D 05:A0FD: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x016110 05:A100: AD CF 05  LDA ram_05CF_flag_and_obj_index
C - - - - - 0x016113 05:A103: 10 10     BPL bra_A115
C - - - - - 0x016115 05:A105: 29 0F     AND #$0F
C - - - - - 0x016117 05:A107: AA        TAX
C - - - - - 0x016118 05:A108: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01611B 05:A10B: 29 DF     AND #$20 ^ $FF
C - - - - - 0x01611D 05:A10D: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x016120 05:A110: A9 00     LDA #$00
C - - - - - 0x016122 05:A112: 8D CF 05  STA ram_05CF_flag_and_obj_index
bra_A115:
C - - - - - 0x016125 05:A115: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x016127 05:A117: D0 1E     BNE bra_A137_swimming
; if not swimming
C - - - - - 0x016129 05:A119: AD 0E 04  LDA ram_player_state_2
C - - - - - 0x01612C 05:A11C: C9 13     CMP #$13
C - - - - - 0x01612E 05:A11E: B0 21     BCS bra_A141    ; if sitting on shield (also on water)
C - - - - - 0x016130 05:A120: A5 AF     LDA ram_00AF_flag
C - - - - - 0x016132 05:A122: 4A        LSR
C - - - - - 0x016133 05:A123: B0 1C     BCS bra_A141
C - - - - - 0x016135 05:A125: 4A        LSR
C - - - - - 0x016136 05:A126: 90 19     BCC bra_A141
C - - - - - 0x016138 05:A128: A5 1B     LDA ram_001B_player_angle
C - - - - - 0x01613A 05:A12A: C9 02     CMP #$02
C - - - - - 0x01613C 05:A12C: D0 13     BNE bra_A141
C - - - - - 0x01613E 05:A12E: A9 10     LDA #$10
C - - - - - 0x016140 05:A130: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x016143 05:A133: A9 20     LDA #$20
C - - - - - 0x016145 05:A135: D0 02     BNE bra_A139    ; jmp
bra_A137_swimming:
C - - - - - 0x016147 05:A137: A9 09     LDA #$09
bra_A139:
C - - - - - 0x016149 05:A139: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x01614C 05:A13C: A9 01     LDA #con_041B_flag_01
C - - - - - 0x01614E 05:A13E: 8D 1B 04  STA ram_041B_player_flags
bra_A141:
C - - - - - 0x016151 05:A141: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x016153 05:A143: 05 AA     ORA ram_00AA_plr_flags
C - - - - - 0x016155 05:A145: 85 AA     STA ram_00AA_plr_flags
bra_A147:
C - - - - - 0x016157 05:A147: A5 36     LDA ram_buttons
C - - - - - 0x016159 05:A149: 29 40     AND #con_btn_B
C - - - - - 0x01615B 05:A14B: F0 32     BEQ bra_A17F_RTS
C - - - - - 0x01615D 05:A14D: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x01615F 05:A14F: D0 2E     BNE bra_A17F_RTS    ; if swimming
; if not swimming
C - - - - - 0x016161 05:A151: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016164 05:A154: C9 04     CMP #con_plr_state_grab
C - - - - - 0x016166 05:A156: F0 27     BEQ bra_A17F_RTS
C - - - - - 0x016168 05:A158: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x01616A 05:A15A: 29 40     AND #$40
C - - - - - 0x01616C 05:A15C: D0 21     BNE bra_A17F_RTS
C - - - - - 0x01616E 05:A15E: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x016170 05:A160: 29 03     AND #con_00AA_flag_jump + con_00AA_flag_duck_attack
C - - - - - 0x016172 05:A162: D0 1B     BNE bra_A17F_RTS
C - - - - - 0x016174 05:A164: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x016176 05:A166: BD 92 A1  LDA tbl_A192,X
C - - - - - 0x016179 05:A169: 8D 01 04  STA ram_player_state_1
C - - - - - 0x01617C 05:A16C: A9 07     LDA #con_sfx_attack
C - - - - - 0x01617E 05:A16E: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x016180 05:A170: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x016183 05:A173: A9 0C     LDA #$0C
C - - - - - 0x016185 05:A175: 85 AD     STA ram_00AD_counter
C - - - - - 0x016187 05:A177: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x016189 05:A179: 09 02     ORA #con_00AA_flag_duck_attack
C - - - - - 0x01618B 05:A17B: 85 AA     STA ram_00AA_plr_flags
; bzk optimize, useless BNE
C - - - - - 0x01618D 05:A17D: D0 00     BNE bra_A17F_RTS    ; jmp
bra_A17F_RTS:
loc_A17F_RTS:   ; bzk optimize
C D 1 - - - 0x01618F 05:A17F: 60        RTS



tbl_A180_direction:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x016190 05:A180: FF        .byte $FF   ; 00 skip
- D 1 - - - 0x016191 05:A181: FF        .byte $FF   ; 01 skip
- D 1 - - - 0x016192 05:A182: FF        .byte $FF   ; 02 skip
; straight left/right
- D 1 - - - 0x016193 05:A183: 00        .byte $00   ; 03 left
- D 1 - - - 0x016194 05:A184: 01        .byte $01   ; 04 right
; diagonal left/right
- D 1 - - - 0x016195 05:A185: 01        .byte $01   ; 05 right
- D 1 - - - 0x016196 05:A186: 01        .byte $01   ; 06 right
- D 1 - - - 0x016197 05:A187: 00        .byte $00   ; 07 left
- D 1 - - - 0x016198 05:A188: 00        .byte $00   ; 08 left



tbl_A189:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x016199 05:A189: 00        .byte con_plr_state_idle   ; 00 
- D 1 - - - 0x01619A 05:A18A: 0D        .byte con_plr_state_look_up_cap   ; 01 
- D 1 - - - 0x01619B 05:A18B: 05        .byte con_plr_state_duck   ; 02 
- D 1 - - - 0x01619C 05:A18C: 01        .byte con_plr_state_walk   ; 03 
- D 1 - - - 0x01619D 05:A18D: 01        .byte con_plr_state_walk   ; 04 
- D 1 - - - 0x01619E 05:A18E: 01        .byte con_plr_state_walk   ; 05 
- D 1 - - - 0x01619F 05:A18F: 01        .byte con_plr_state_walk   ; 06 
- D 1 - - - 0x0161A0 05:A190: 01        .byte con_plr_state_walk   ; 07 
- D 1 - - - 0x0161A1 05:A191: 01        .byte con_plr_state_walk   ; 08 



tbl_A192:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x0161A2 05:A192: 03        .byte con_plr_state_attack_up   ; 00 
- D 1 - - - 0x0161A3 05:A193: 03        .byte con_plr_state_attack_up   ; 01 
- D 1 - - - 0x0161A4 05:A194: 06        .byte con_plr_state_attack_ducking   ; 02 
- D 1 - - - 0x0161A5 05:A195: 03        .byte con_plr_state_attack_up   ; 03 
- D 1 - - - 0x0161A6 05:A196: 03        .byte con_plr_state_attack_up   ; 04 
- D 1 - - - 0x0161A7 05:A197: 03        .byte con_plr_state_attack_up   ; 05 
- D 1 - - - 0x0161A8 05:A198: 03        .byte con_plr_state_attack_up   ; 06 
- D 1 - - - 0x0161A9 05:A199: 03        .byte con_plr_state_attack_up   ; 07 
- D 1 - - - 0x0161AA 05:A19A: 03        .byte con_plr_state_attack_up   ; 08 



sub_A19B_captain_state_handler:
C - - - - - 0x0161AB 05:A19B: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0161AE 05:A19E: 0A        ASL
C - - - - - 0x0161AF 05:A19F: AA        TAX
C - - - - - 0x0161B0 05:A1A0: BD BD A1  LDA tbl_A1BD_captain_state_handlers,X
C - - - - - 0x0161B3 05:A1A3: 85 5B     STA ram_005B_t5A_jmp
C - - - - - 0x0161B5 05:A1A5: BD BE A1  LDA tbl_A1BD_captain_state_handlers + $01,X
C - - - - - 0x0161B8 05:A1A8: 85 5C     STA ram_005B_t5A_jmp + $01
C - - - - - 0x0161BA 05:A1AA: A9 A1     LDA #> (ofs_A1B3_return - $01)
C - - - - - 0x0161BC 05:A1AC: 48        PHA
C - - - - - 0x0161BD 05:A1AD: A9 B2     LDA #< (ofs_A1B3_return - $01)
C - - - - - 0x0161BF 05:A1AF: 48        PHA
C - - - - - 0x0161C0 05:A1B0: 6C 5B 00  JMP (ram_005B_t5A_jmp)



ofs_A1B3_return:
C - - - - - 0x0161C3 05:A1B3: 20 5C BA  JSR sub_BA5C
C - - - - - 0x0161C6 05:A1B6: 20 A6 BE  JSR sub_BEA6
; bzk optimize, JMP
C - - - - - 0x0161C9 05:A1B9: 20 F0 A6  JSR sub_A6F0
C - - - - - 0x0161CC 05:A1BC: 60        RTS



tbl_A1BD_captain_state_handlers:
- D 1 - - - 0x0161CD 05:A1BD: DD A1     .word ofs_029_captain_state_A1DD_00_idle
- D 1 - - - 0x0161CF 05:A1BF: 0E A2     .word ofs_029_captain_state_A20E_01_walk
- D 1 - - - 0x0161D1 05:A1C1: 88 A2     .word ofs_029_captain_state_A288_02_jump
- D 1 - - - 0x0161D3 05:A1C3: 0D A3     .word ofs_029_captain_state_A30D_03_punch
- D 1 - - - 0x0161D5 05:A1C5: 4D A3     .word ofs_029_captain_state_A34D_04
- D 1 - - - 0x0161D7 05:A1C7: BE A3     .word ofs_029_captain_state_A3BE_05_duck
- D 1 - - - 0x0161D9 05:A1C9: 01 A4     .word ofs_029_captain_state_A401_06_punch_while_ducking
- D 1 - - - 0x0161DB 05:A1CB: 46 A4     .word ofs_029_captain_state_A446_07
- - - - - - 0x0161DD 05:A1CD: 95 A4     .word ofs_029_captain_state_A495_08   ; unused, undex doesn't exist
- D 1 - - - 0x0161DF 05:A1CF: AE A4     .word ofs_029_captain_state_A4AE_09
- D 1 - - - 0x0161E1 05:A1D1: DE A4     .word ofs_029_captain_state_A4DE_0A_land
- - - - - - 0x0161E3 05:A1D3: 4F A5     .word ofs_029_captain_state_A54F_0B_unused
- D 1 - - - 0x0161E5 05:A1D5: AE A5     .word ofs_029_captain_state_A5AE_0C
- D 1 - - - 0x0161E7 05:A1D7: E6 A5     .word ofs_029_captain_state_A5E6_0D_look_up
- D 1 - - - 0x0161E9 05:A1D9: 18 A6     .word ofs_029_captain_state_A618_0E_throw_shield
- - - - - - 0x0161EB 05:A1DB: 37 A6     .word ofs_029_captain_state_A637_0F   ; unused, undex doesn't exist



ofs_026_hawk_state_A1DD_00_idle:
; con_plr_state_idle
ofs_029_captain_state_A1DD_00_idle:
; con_plr_state_idle
C - - J - - 0x0161ED 05:A1DD: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x0161F0 05:A1E0: 10 08     BPL bra_A1EA
; if con_0416_80
C - - - - - 0x0161F2 05:A1E2: A9 02     LDA #con_0416_02
C - - - - - 0x0161F4 05:A1E4: 0D 16 04  ORA ram_0416_player_flags
C - - - - - 0x0161F7 05:A1E7: 8D 16 04  STA ram_0416_player_flags
bra_A1EA:
C - - - - - 0x0161FA 05:A1EA: AD 17 04  LDA ram_0417_player_counter
C - - - - - 0x0161FD 05:A1ED: D0 03     BNE bra_A1F2
; A = 00
                                       ;LDA #con_0416_00
C - - - - - 0x0161FF 05:A1EF: 8D 16 04  STA ram_0416_player_flags
bra_A1F2:
C - - - - - 0x016202 05:A1F2: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016205 05:A1F5: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x016208 05:A1F8: F0 10     BEQ bra_A20A
; save current state
C - - - - - 0x01620A 05:A1FA: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x01620D 05:A1FD: A9 00     LDA #con_040E_plr_state_idle
C - - - - - 0x01620F 05:A1FF: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016212 05:A202: 20 92 AE  JSR sub_AE92
C - - - - - 0x016215 05:A205: A9 00     LDA #con_041B_flag_00
C - - - - - 0x016217 05:A207: 8D 1B 04  STA ram_041B_player_flags
bra_A20A:
; bzk optimize, JMP
C - - - - - 0x01621A 05:A20A: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x01621D 05:A20D: 60        RTS



ofs_026_hawk_state_A20E_01_walk:
; con_plr_state_walk
ofs_029_captain_state_A20E_01_walk:
; con_plr_state_walk
C - - J - - 0x01621E 05:A20E: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x016221 05:A211: 4A        LSR
C - - - - - 0x016222 05:A212: 90 08     BCC bra_A21C
; if con_0416_01
C - - - - - 0x016224 05:A214: A9 0B     LDA #con_plr_state_look_up_hawk
C - - - - - 0x016226 05:A216: 8D 01 04  STA ram_player_state_1
C - - - - - 0x016229 05:A219: 4C 4F A5  JMP loc_A54F_look_up_hawk
bra_A21C:
C - - - - - 0x01622C 05:A21C: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01622F 05:A21F: 29 DF     AND #$20 ^ $FF
C - - - - - 0x016231 05:A221: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x016234 05:A224: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016237 05:A227: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x01623A 05:A22A: D0 06     BNE bra_A232
C - - - - - 0x01623C 05:A22C: A5 A4     LDA ram_plr_direction
C - - - - - 0x01623E 05:A22E: C5 A5     CMP ram_00A5_t01_plr_dir
C - - - - - 0x016240 05:A230: F0 12     BEQ bra_A244_same_direction
; if direction changed
bra_A232:
; save current direction
C - - - - - 0x016242 05:A232: A5 A4     LDA ram_plr_direction
C - - - - - 0x016244 05:A234: 85 A5     STA ram_00A5_t01_plr_dir
; save current state
C - - - - - 0x016246 05:A236: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016249 05:A239: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x01624C 05:A23C: A9 01     LDA #con_040E_plr_state_walk
C - - - - - 0x01624E 05:A23E: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016251 05:A241: 20 92 AE  JSR sub_AE92
bra_A244_same_direction:
C - - - - - 0x016254 05:A244: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x016256 05:A246: D0 17     BNE bra_A25F_swimming
; if not swimming
C - - - - - 0x016258 05:A248: A6 A4     LDX ram_plr_direction
C - - - - - 0x01625A 05:A24A: BD 7C A2  LDA tbl_A27C_spd_X_hi,X
C - - - - - 0x01625D 05:A24D: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x016260 05:A250: BD 7E A2  LDA tbl_A27E_spd_X_lo,X
C - - - - - 0x016263 05:A253: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x016266 05:A256: BD 80 A2  LDA tbl_A280_spd_X_fr,X
C - - - - - 0x016269 05:A259: 8D 0F 04  STA ram_spd_X_fr_player
C - - - - - 0x01626C 05:A25C: 4C 73 A2  JMP loc_A273
bra_A25F_swimming:
C - - - - - 0x01626F 05:A25F: A6 A4     LDX ram_plr_direction
C - - - - - 0x016271 05:A261: BD 82 A2  LDA tbl_A282_spd_X_hi,X
C - - - - - 0x016274 05:A264: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x016277 05:A267: BD 84 A2  LDA tbl_A284_spd_X_lo,X
C - - - - - 0x01627A 05:A26A: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x01627D 05:A26D: BD 86 A2  LDA tbl_A286_spd_X_fr,X
C - - - - - 0x016280 05:A270: 8D 0F 04  STA ram_spd_X_fr_player
loc_A273:
C D 1 - - - 0x016283 05:A273: 20 67 A6  JSR sub_A667_clear_player_speed_Y
C - - - - - 0x016286 05:A276: A9 00     LDA #con_041B_flag_00
C - - - - - 0x016288 05:A278: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x01628B 05:A27B: 60        RTS



tbl_A27C_spd_X_hi:
- D 1 - - - 0x01628C 05:A27C: FF        .byte ^ $FFFF00   ; 00 left
- D 1 - - - 0x01628D 05:A27D: 00        .byte ^ $000100   ; 01 right



tbl_A27E_spd_X_lo:
- D 1 - - - 0x01628E 05:A27E: FF        .byte > $FFFF00   ; 00 left
- D 1 - - - 0x01628F 05:A27F: 01        .byte > $000100   ; 01 right



tbl_A280_spd_X_fr:
; bzk optimize, same values
- D 1 - - - 0x016290 05:A280: 00        .byte < $FFFF00   ; 00 left
- D 1 - - - 0x016291 05:A281: 00        .byte < $000100   ; 01 right



tbl_A282_spd_X_hi:
; bzk optmize, same table as 0x01628C
- D 1 - - - 0x016292 05:A282: FF        .byte ^ $FFFF00   ; 00 left
- D 1 - - - 0x016293 05:A283: 00        .byte ^ $000100   ; 01 right



tbl_A284_spd_X_lo:
; bzk optmize, same table as 0x01628E
- D 1 - - - 0x016294 05:A284: FF        .byte > $FFFF00   ; 00 left
- D 1 - - - 0x016295 05:A285: 01        .byte > $000100   ; 01 right



tbl_A286_spd_X_fr:
; bzk optimize, same values
; bzk optmize, same table as 0x016290
- D 1 - - - 0x016296 05:A286: 00        .byte < $FFFF00   ; 00 left
- D 1 - - - 0x016297 05:A287: 00        .byte < $000100   ; 01 right



ofs_029_captain_state_A288_02_jump:
; con_plr_state_jump
C - - J - - 0x016298 05:A288: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x01629A 05:A28A: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x01629C 05:A28C: A9 00     LDA #con_0416_00
C - - - - - 0x01629E 05:A28E: 8D 16 04  STA ram_0416_player_flags
                                       ;LDA #$00
; bzk optimize, useless STA + STA
C - - - - - 0x0162A1 05:A291: 8D 17 04  STA ram_0417_player_counter
C - - - - - 0x0162A4 05:A294: 8D 18 04  STA ram_0418_player_counter
; 
C - - - - - 0x0162A7 05:A297: 85 B2     STA ram_00B2_useless_00
C - - - - - 0x0162A9 05:A299: A5 AB     LDA ram_00AB_handler
C - - - - - 0x0162AB 05:A29B: D0 27     BNE bra_A2C4
; if con_00AB_00
C - - - - - 0x0162AD 05:A29D: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0162B0 05:A2A0: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x0162B3 05:A2A3: D0 06     BNE bra_A2AB
C - - - - - 0x0162B5 05:A2A5: A5 A4     LDA ram_plr_direction
C - - - - - 0x0162B7 05:A2A7: C5 A5     CMP ram_00A5_t02_plr_dir
C - - - - - 0x0162B9 05:A2A9: F0 19     BEQ bra_A2C4    ; if same direction
; if direction changed
bra_A2AB:
C - - - - - 0x0162BB 05:A2AB: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0162BE 05:A2AE: 29 20     AND #$20
C - - - - - 0x0162C0 05:A2B0: D0 12     BNE bra_A2C4
; save current direction
C - - - - - 0x0162C2 05:A2B2: A5 A4     LDA ram_plr_direction
C - - - - - 0x0162C4 05:A2B4: 85 A5     STA ram_00A5_t02_plr_dir
; save current state
C - - - - - 0x0162C6 05:A2B6: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0162C9 05:A2B9: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x0162CC 05:A2BC: A9 02     LDA #con_040E_plr_state_jump
C - - - - - 0x0162CE 05:A2BE: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x0162D1 05:A2C1: 20 92 AE  JSR sub_AE92
bra_A2C4:
C - - - - - 0x0162D4 05:A2C4: 20 27 AB  JSR sub_AB27
C - - - - - 0x0162D7 05:A2C7: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0162DA 05:A2CA: 29 20     AND #$20
C - - - - - 0x0162DC 05:A2CC: F0 1A     BEQ bra_A2E8
C - - - - - 0x0162DE 05:A2CE: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0162E1 05:A2D1: 29 01     AND #$01
C - - - - - 0x0162E3 05:A2D3: AA        TAX
C - - - - - 0x0162E4 05:A2D4: BD 93 A4  LDA tbl_A493,X
C - - - - - 0x0162E7 05:A2D7: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x0162EA 05:A2DA: 10 04     BPL bra_A2E0_moving_right
; if moving left
C - - - - - 0x0162EC 05:A2DC: A9 FF     LDA #$FF    ; move left
C - - - - - 0x0162EE 05:A2DE: D0 02     BNE bra_A2E2    ; jmp
bra_A2E0_moving_right:
C - - - - - 0x0162F0 05:A2E0: A9 00     LDA #$00    ; move right
bra_A2E2:
C - - - - - 0x0162F2 05:A2E2: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x0162F5 05:A2E5: 4C F4 A2  JMP loc_A2F4
bra_A2E8:
C - - - - - 0x0162F8 05:A2E8: 20 D1 AF  JSR sub_AFD1
C - - - - - 0x0162FB 05:A2EB: 20 0C AC  JSR sub_AC0C
C - - - - - 0x0162FE 05:A2EE: 20 75 AC  JSR sub_AC75
C - - - - - 0x016301 05:A2F1: 20 E9 AD  JSR sub_ADE9
loc_A2F4:
C D 1 - - - 0x016304 05:A2F4: 20 15 AD  JSR sub_AD15
C - - - - - 0x016307 05:A2F7: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01630A 05:A2FA: 29 20     AND #$20
C - - - - - 0x01630C 05:A2FC: D0 03     BNE bra_A301
C - - - - - 0x01630E 05:A2FE: 20 08 AE  JSR sub_AE08
bra_A301:
C - - - - - 0x016311 05:A301: AD 1C 04  LDA ram_041C_player_timer
C - - - - - 0x016314 05:A304: F0 03     BEQ bra_A309
C - - - - - 0x016316 05:A306: CE 1C 04  DEC ram_041C_player_timer
bra_A309:
; bzk optimize, JMP
C - - - - - 0x016319 05:A309: 20 69 BE  JSR sub_BE69
C - - - - - 0x01631C 05:A30C: 60        RTS



ofs_029_captain_state_A30D_03_punch:
; con_plr_state_attack_up
C - - J - - 0x01631D 05:A30D: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016320 05:A310: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x016323 05:A313: D0 0C     BNE bra_A321
C - - - - - 0x016325 05:A315: A5 A4     LDA ram_plr_direction
C - - - - - 0x016327 05:A317: C5 A5     CMP ram_00A5_t03_plr_dir
C - - - - - 0x016329 05:A319: D0 06     BNE bra_A321    ; if direction changed
; if same direction
C - - - - - 0x01632B 05:A31B: A5 AD     LDA ram_00AD_counter
C - - - - - 0x01632D 05:A31D: C9 0C     CMP #$0C
C - - - - - 0x01632F 05:A31F: D0 1E     BNE bra_A33F
bra_A321:
; save current direction
C - - - - - 0x016331 05:A321: A5 A4     LDA ram_plr_direction
C - - - - - 0x016333 05:A323: 85 A5     STA ram_00A5_t03_plr_dir
; save current state
C - - - - - 0x016335 05:A325: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016338 05:A328: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x01633B 05:A32B: A9 03     LDA #con_040E_plr_state_punch
C - - - - - 0x01633D 05:A32D: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016340 05:A330: 20 92 AE  JSR sub_AE92
C - - - - - 0x016343 05:A333: A9 00     LDA #$00
C - - - - - 0x016345 05:A335: 20 73 A6  JSR sub_A673
C - - - - - 0x016348 05:A338: A9 00     LDA #$00
C - - - - - 0x01634A 05:A33A: 85 67     STA ram_0067_t32_table_index
C - - - - - 0x01634C 05:A33C: 20 F5 BA  JSR sub_BAF5_melee_damage_to_enemy
bra_A33F:
C - - - - - 0x01634F 05:A33F: C6 AD     DEC ram_00AD_counter
C - - - - - 0x016351 05:A341: D0 06     BNE bra_A349
C - - - - - 0x016353 05:A343: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x016355 05:A345: 29 FD     AND #con_00AA_flag_duck_attack ^ $FF
C - - - - - 0x016357 05:A347: 85 AA     STA ram_00AA_plr_flags
bra_A349:
; bzk optimize, JMP
C - - - - - 0x016359 05:A349: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x01635C 05:A34C: 60        RTS



ofs_029_captain_state_A34D_04:
; con_plr_state_grab
C - - J - - 0x01635D 05:A34D: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016360 05:A350: 29 DF     AND #$20 ^ $FF
C - - - - - 0x016362 05:A352: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x016365 05:A355: 29 10     AND #$10
C - - - - - 0x016367 05:A357: F0 0B     BEQ bra_A364
- - - - - - 0x016369 05:A359: A9 07     LDA #con_040E_plr_state_get_hit_and_lean
- - - - - - 0x01636B 05:A35B: 8D 0E 04  STA ram_player_state_2
- - - - - - 0x01636E 05:A35E: 20 92 AE  JSR sub_AE92
- - - - - - 0x016371 05:A361: 4C A0 A3  JMP loc_A3A0
bra_A364:
C - - - - - 0x016374 05:A364: A5 A4     LDA ram_plr_direction
C - - - - - 0x016376 05:A366: C5 A5     CMP ram_00A5_t02_plr_dir
C - - - - - 0x016378 05:A368: F0 12     BEQ bra_A37C_same_direction
; if direction changed
; save current direction
C - - - - - 0x01637A 05:A36A: A5 A4     LDA ram_plr_direction
C - - - - - 0x01637C 05:A36C: 85 A5     STA ram_00A5_t02_plr_dir
; save current state
C - - - - - 0x01637E 05:A36E: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016381 05:A371: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x016384 05:A374: A9 11     LDA #con_040E_plr_state_capt_grab_rope
C - - - - - 0x016386 05:A376: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016389 05:A379: 20 92 AE  JSR sub_AE92
bra_A37C_same_direction:
C - - - - - 0x01638C 05:A37C: A5 36     LDA ram_buttons
C - - - - - 0x01638E 05:A37E: 29 80     AND #con_btn_A
C - - - - - 0x016390 05:A380: F0 18     BEQ bra_A39A
C - - - - - 0x016392 05:A382: A5 AC     LDA ram_00AC_angle_and_flags
; bzk optimize, BMI
C - - - - - 0x016394 05:A384: 0A        ASL
C - - - - - 0x016395 05:A385: B0 13     BCS bra_A39A    ; if was 80
C - - - - - 0x016397 05:A387: A9 08     LDA #$08
C - - - - - 0x016399 05:A389: 8D 1D 04  STA ram_041D_player_timer
C - - - - - 0x01639C 05:A38C: A9 0C     LDA #con_plr_state_0C
C - - - - - 0x01639E 05:A38E: 8D 01 04  STA ram_player_state_1
C - - - - - 0x0163A1 05:A391: A9 12     LDA #con_040E_plr_state_capt_grab_jump
bra_A393:
C - - - - - 0x0163A3 05:A393: 8D 0E 04  STA ram_player_state_2
; bzk optimize, JMP
C - - - - - 0x0163A6 05:A396: 20 92 AE  JSR sub_AE92
bra_A399_RTS:
C - - - - - 0x0163A9 05:A399: 60        RTS
bra_A39A:
C - - - - - 0x0163AA 05:A39A: A5 1B     LDA ram_001B_player_angle
C - - - - - 0x0163AC 05:A39C: C9 02     CMP #$02
C - - - - - 0x0163AE 05:A39E: D0 F9     BNE bra_A399_RTS
loc_A3A0:
C - - - - - 0x0163B0 05:A3A0: A9 10     LDA #$10
C - - - - - 0x0163B2 05:A3A2: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x0163B5 05:A3A5: A9 20     LDA #$20
C - - - - - 0x0163B7 05:A3A7: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x0163BA 05:A3AA: A9 01     LDA #con_041B_flag_01
C - - - - - 0x0163BC 05:A3AC: 8D 1B 04  STA ram_041B_player_flags
                                       ;LDA #con_00AA_flag_jump
C - - - - - 0x0163BF 05:A3AF: 05 AA     ORA ram_00AA_plr_flags
C - - - - - 0x0163C1 05:A3B1: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x0163C3 05:A3B3: A9 00     LDA #con_00AB_00
C - - - - - 0x0163C5 05:A3B5: 85 AB     STA ram_00AB_handler
C - - - - - 0x0163C7 05:A3B7: A9 02     LDA #$02    ; con_040E_plr_state_jump
C - - - - - 0x0163C9 05:A3B9: 8D 01 04  STA ram_player_state_1  ; con_plr_state_jump
C - - - - - 0x0163CC 05:A3BC: D0 D5     BNE bra_A393    ; jmp



ofs_029_captain_state_A3BE_05_duck:
; con_plr_state_duck
C - - J - - 0x0163CE 05:A3BE: A9 00     LDA #con_0416_00
C - - - - - 0x0163D0 05:A3C0: 8D 16 04  STA ram_0416_player_flags
C - - - - - 0x0163D3 05:A3C3: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x0163D5 05:A3C5: 29 0F     AND #$0F
C - - - - - 0x0163D7 05:A3C7: C5 1B     CMP ram_001B_player_angle
C - - - - - 0x0163D9 05:A3C9: D0 0F     BNE bra_A3DA
C - - - - - 0x0163DB 05:A3CB: AD 0E 04  LDA ram_player_state_2
C - - - - - 0x0163DE 05:A3CE: C9 13     CMP #con_040E_plr_state_capt_sit_on_shield
C - - - - - 0x0163E0 05:A3D0: F0 04     BEQ bra_A3D6
C - - - - - 0x0163E2 05:A3D2: C9 14     CMP #con_040E_plr_state_capt_water_sit_on_shield
C - - - - - 0x0163E4 05:A3D4: D0 04     BNE bra_A3DA
bra_A3D6:
C - - - - - 0x0163E6 05:A3D6: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x0163E8 05:A3D8: F0 23     BEQ bra_A3FD    ; if not swimming
; if swimming
bra_A3DA:
C - - - - - 0x0163EA 05:A3DA: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0163ED 05:A3DD: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x0163F0 05:A3E0: F0 1B     BEQ bra_A3FD
; save current state
C - - - - - 0x0163F2 05:A3E2: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x0163F5 05:A3E5: A9 05     LDA #con_040E_plr_state_duck_or_dive
C - - - - - 0x0163F7 05:A3E7: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x0163FA 05:A3EA: 20 92 AE  JSR sub_AE92
C - - - - - 0x0163FD 05:A3ED: A9 01     LDA #con_041B_flag_01
C - - - - - 0x0163FF 05:A3EF: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016402 05:A3F2: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x016404 05:A3F4: F0 07     BEQ bra_A3FD    ; if not swimming
; if swimming
C - - - - - 0x016406 05:A3F6: A9 29     LDA #con_sfx_dive_under_water
C - - - - - 0x016408 05:A3F8: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01640A 05:A3FA: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_A3FD:
; bzk optimize, JMP
C - - - - - 0x01640D 05:A3FD: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x016410 05:A400: 60        RTS



ofs_029_captain_state_A401_06_punch_while_ducking:
; con_plr_state_attack_ducking
C - - J - - 0x016411 05:A401: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016414 05:A404: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x016417 05:A407: D0 0C     BNE bra_A415
C - - - - - 0x016419 05:A409: A5 A4     LDA ram_plr_direction
C - - - - - 0x01641B 05:A40B: C5 A5     CMP ram_00A5_t04_plr_dir
C - - - - - 0x01641D 05:A40D: D0 06     BNE bra_A415    ; if direction changed
; if same direction
C - - - - - 0x01641F 05:A40F: A5 AD     LDA ram_00AD_counter
C - - - - - 0x016421 05:A411: C9 0C     CMP #$0C
C - - - - - 0x016423 05:A413: D0 1E     BNE bra_A433
bra_A415:
; save current direction
C - - - - - 0x016425 05:A415: A5 A4     LDA ram_plr_direction
C - - - - - 0x016427 05:A417: 85 A5     STA ram_00A5_t04_plr_dir
; save current state
C - - - - - 0x016429 05:A419: AD 01 04  LDA ram_player_state_1
C - - - - - 0x01642C 05:A41C: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x01642F 05:A41F: A9 06     LDA #con_040E_plr_state_ducking_punch
C - - - - - 0x016431 05:A421: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016434 05:A424: 20 92 AE  JSR sub_AE92
C - - - - - 0x016437 05:A427: A9 02     LDA #$02
C - - - - - 0x016439 05:A429: 20 73 A6  JSR sub_A673
C - - - - - 0x01643C 05:A42C: A9 02     LDA #$02
C - - - - - 0x01643E 05:A42E: 85 67     STA ram_0067_t32_table_index
C - - - - - 0x016440 05:A430: 20 F5 BA  JSR sub_BAF5_melee_damage_to_enemy
bra_A433:
C - - - - - 0x016443 05:A433: C6 AD     DEC ram_00AD_counter
C - - - - - 0x016445 05:A435: D0 06     BNE bra_A43D
C - - - - - 0x016447 05:A437: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x016449 05:A439: 29 FD     AND #con_00AA_flag_duck_attack ^ $FF
C - - - - - 0x01644B 05:A43B: 85 AA     STA ram_00AA_plr_flags
bra_A43D:
C - - - - - 0x01644D 05:A43D: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x016450 05:A440: A9 00     LDA #con_041B_flag_00
C - - - - - 0x016452 05:A442: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016455 05:A445: 60        RTS



ofs_026_hawk_state_A446_07:
; con_plr_state_07
ofs_029_captain_state_A446_07:
; con_plr_state_07
C - - J - - 0x016456 05:A446: CE 19 04  DEC ram_0419_t01_player_stun_timer
C - - - - - 0x016459 05:A449: F0 2D     BEQ bra_A478
C - - - - - 0x01645B 05:A44B: A6 A4     LDX ram_plr_direction
C - - - - - 0x01645D 05:A44D: BD 93 A4  LDA tbl_A493,X
C - - - - - 0x016460 05:A450: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x016463 05:A453: 10 07     BPL bra_A45C_moving_right
; if moving left
C - - - - - 0x016465 05:A455: A9 FF     LDA #$FF    ; move left
C - - - - - 0x016467 05:A457: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x01646A 05:A45A: D0 05     BNE bra_A461    ; jmp
bra_A45C_moving_right:
C - - - - - 0x01646C 05:A45C: A9 00     LDA #$00    ; move right
C - - - - - 0x01646E 05:A45E: 8D 11 04  STA ram_spd_X_hi_player
bra_A461:
C - - - - - 0x016471 05:A461: A9 00     LDA #$00
C - - - - - 0x016473 05:A463: 8D 0F 04  STA ram_spd_X_fr_player
loc_A466:
C D 1 - - - 0x016476 05:A466: A9 00     LDA #con_041B_flag_00
C - - - - - 0x016478 05:A468: 8D 1B 04  STA ram_041B_player_flags
                                       ;LDA #con_0416_00
C - - - - - 0x01647B 05:A46B: 8D 16 04  STA ram_0416_player_flags
                                       ;LDA #$00
; bzk optimize, useless STA + STA
C - - - - - 0x01647E 05:A46E: 8D 17 04  STA ram_0417_player_counter
C - - - - - 0x016481 05:A471: 8D 18 04  STA ram_0418_player_counter
; 
; bzk optimize, JMP
C - - - - - 0x016484 05:A474: 20 67 A6  JSR sub_A667_clear_player_speed_Y
C - - - - - 0x016487 05:A477: 60        RTS
bra_A478:
C - - - - - 0x016488 05:A478: A9 00     LDA #con_040E_plr_state_idle
C - - - - - 0x01648A 05:A47A: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01648D 05:A47D: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x01648F 05:A47F: 8D 02 04  STA ram_prev_player_state_1
C - - - - - 0x016492 05:A482: 20 92 AE  JSR sub_AE92
C - - - - - 0x016495 05:A485: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016498 05:A488: 29 7F     AND #$80 ^ $FF
C - - - - - 0x01649A 05:A48A: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x01649D 05:A48D: 20 5B A6  JSR sub_A65B_clear_player_speed_X
C - - - - - 0x0164A0 05:A490: 4C 66 A4  JMP loc_A466



tbl_A493:
- D 1 - - - 0x0164A3 05:A493: 01        .byte $01   ; 00 left
- D 1 - - - 0x0164A4 05:A494: FF        .byte $FF   ; 01 right



ofs_026_hawk_state_A495_08:
; con_plr_state_08
ofs_029_captain_state_A495_08:
; con_plr_state_08
- - - - - - 0x0164A5 05:A495: AD 01 04  LDA ram_player_state_1
- - - - - - 0x0164A8 05:A498: CD 02 04  CMP ram_prev_player_state_1
- - - - - - 0x0164AB 05:A49B: F0 0B     BEQ bra_A4A8
; save current state
- - - - - - 0x0164AD 05:A49D: 8D 02 04  STA ram_prev_player_state_1
; 
- - - - - - 0x0164B0 05:A4A0: A9 08     LDA #con_040E_plr_state_get_hit_and_sit
- - - - - - 0x0164B2 05:A4A2: 8D 0E 04  STA ram_player_state_2
- - - - - - 0x0164B5 05:A4A5: 20 92 AE  JSR sub_AE92
bra_A4A8:
- - - - - - 0x0164B8 05:A4A8: A9 00     LDA #con_041B_flag_00
- - - - - - 0x0164BA 05:A4AA: 8D 1B 04  STA ram_041B_player_flags
- - - - - - 0x0164BD 05:A4AD: 60        RTS



ofs_026_hawk_state_A4AE_09:
; con_plr_state_09
ofs_029_captain_state_A4AE_09:
; con_plr_state_09
C - - J - - 0x0164BE 05:A4AE: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0164C1 05:A4B1: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x0164C4 05:A4B4: F0 12     BEQ bra_A4C8
; save current state
C - - - - - 0x0164C6 05:A4B6: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x0164C9 05:A4B9: A9 09     LDA #con_040E_plr_state_dead
C - - - - - 0x0164CB 05:A4BB: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x0164CE 05:A4BE: 20 92 AE  JSR sub_AE92
C - - - - - 0x0164D1 05:A4C1: A9 1F     LDA #con_music_player_dead
C - - - - - 0x0164D3 05:A4C3: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0164D5 05:A4C5: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_A4C8:
C - - - - - 0x0164D8 05:A4C8: CE 19 04  DEC ram_0419_t02_player_timer
C - - - - - 0x0164DB 05:A4CB: D0 08     BNE bra_A4D5
C - - - - - 0x0164DD 05:A4CD: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0164E0 05:A4D0: 09 08     ORA #$08
C - - - - - 0x0164E2 05:A4D2: 8D 1F 04  STA ram_041F_player_flags
bra_A4D5:
C - - - - - 0x0164E5 05:A4D5: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x0164E8 05:A4D8: A9 00     LDA #con_041B_flag_00
C - - - - - 0x0164EA 05:A4DA: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x0164ED 05:A4DD: 60        RTS



ofs_029_captain_state_A4DE_0A_land:
; con_plr_state_land
C - - J - - 0x0164EE 05:A4DE: A5 AA     LDA ram_00AA_plr_flags
; bzk optimize, value can be 00-03
C - - - - - 0x0164F0 05:A4E0: 29 F0     AND #(con_00AA_flag_jump + con_00AA_flag_duck_attack + $0C) ^ $FF
C - - - - - 0x0164F2 05:A4E2: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x0164F4 05:A4E4: CE 19 04  DEC ram_0419_t03_player_land_timer
C - - - - - 0x0164F7 05:A4E7: D0 05     BNE bra_A4EE
C - - - - - 0x0164F9 05:A4E9: A9 00     LDA #con_plr_state_idle
C - - - - - 0x0164FB 05:A4EB: 8D 01 04  STA ram_player_state_1
bra_A4EE:
C - - - - - 0x0164FE 05:A4EE: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x016500 05:A4F0: F0 0B     BEQ bra_A4FD_not_swimming
; if swimming
C - - - - - 0x016502 05:A4F2: AD 0E 04  LDA ram_player_state_2
C - - - - - 0x016505 05:A4F5: C9 0A     CMP #con_040E_plr_state_land
C - - - - - 0x016507 05:A4F7: F0 37     BEQ bra_A530
- - - - - - 0x016509 05:A4F9: A9 0A     LDA #con_040E_plr_state_land
- - - - - - 0x01650B 05:A4FB: D0 2D     BNE bra_A52A    ; jmp
bra_A4FD_not_swimming:
C - - - - - 0x01650D 05:A4FD: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016510 05:A500: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016512 05:A502: F0 2C     BEQ bra_A530    ; if shield not down
; if shield down
C - - - - - 0x016514 05:A504: AD 0E 04  LDA ram_player_state_2
C - - - - - 0x016517 05:A507: C9 14     CMP #con_040E_plr_state_capt_water_sit_on_shield
C - - - - - 0x016519 05:A509: F0 25     BEQ bra_A530
C - - - - - 0x01651B 05:A50B: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01651E 05:A50E: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x016520 05:A510: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x016523 05:A513: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x016525 05:A515: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016528 05:A518: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x01652A 05:A51A: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x01652D 05:A51D: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x01652F 05:A51F: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x016532 05:A522: A5 BC     LDA ram_00BC
C - - - - - 0x016534 05:A524: 29 04     AND #$04
C - - - - - 0x016536 05:A526: F0 08     BEQ bra_A530
C - - - - - 0x016538 05:A528: A9 14     LDA #con_040E_plr_state_capt_water_sit_on_shield
bra_A52A:
C - - - - - 0x01653A 05:A52A: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01653D 05:A52D: 20 92 AE  JSR sub_AE92
bra_A530:
C - - - - - 0x016540 05:A530: 20 50 A6  JSR sub_A650_clear_player_speed_XY
; bzk optimize, JMP
C - - - - - 0x016543 05:A533: 20 37 A5  JSR sub_A537
C - - - - - 0x016546 05:A536: 60        RTS



sub_A537:
C - - - - - 0x016547 05:A537: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01654A 05:A53A: 29 10     AND #$10
C - - - - - 0x01654C 05:A53C: F0 10     BEQ bra_A54E_RTS
C - - - - - 0x01654E 05:A53E: A9 09     LDA #con_plr_state_09
C - - - - - 0x016550 05:A540: 8D 01 04  STA ram_player_state_1
                                       ;LDA #con_040E_plr_state_dead
C - - - - - 0x016553 05:A543: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016556 05:A546: A9 80     LDA #$80
C - - - - - 0x016558 05:A548: 8D 19 04  STA ram_0419_t02_player_timer
; bzk optimize, JMP
C - - - - - 0x01655B 05:A54B: 20 92 AE  JSR sub_AE92
bra_A54E_RTS:
C - - - - - 0x01655E 05:A54E: 60        RTS



loc_A54F_look_up_hawk:
ofs_029_captain_state_A54F_0B_unused:
; con_plr_state_look_up_hawk
C D 1 - - - 0x01655F 05:A54F: AD 1D 04  LDA ram_041D_player_timer
C - - - - - 0x016562 05:A552: F0 07     BEQ bra_A55B
C - - - - - 0x016564 05:A554: CE 1D 04  DEC ram_041D_player_timer
C - - - - - 0x016567 05:A557: A2 02     LDX #$02
C - - - - - 0x016569 05:A559: D0 02     BNE bra_A55D    ; jmp
bra_A55B:
C - - - - - 0x01656B 05:A55B: A6 A4     LDX ram_plr_direction
bra_A55D:
C - - - - - 0x01656D 05:A55D: BD A5 A5  LDA tbl_A5A5_spd_X_hi,X
C - - - - - 0x016570 05:A560: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x016573 05:A563: BD A8 A5  LDA tbl_A5A8_spd_X_lo,X
C - - - - - 0x016576 05:A566: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x016579 05:A569: BD AB A5  LDA tbl_A5AB_spd_X_fr,X
C - - - - - 0x01657C 05:A56C: 8D 0F 04  STA ram_spd_X_fr_player
; 
C - - - - - 0x01657F 05:A56F: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016582 05:A572: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x016585 05:A575: D0 06     BNE bra_A57D
C - - - - - 0x016587 05:A577: A5 A4     LDA ram_plr_direction
C - - - - - 0x016589 05:A579: C5 A5     CMP ram_00A5_t05_plr_dir
C - - - - - 0x01658B 05:A57B: F0 12     BEQ bra_A58F_same_direction
; if direction changed
bra_A57D:
; save current direction
C - - - - - 0x01658D 05:A57D: A5 A4     LDA ram_plr_direction
C - - - - - 0x01658F 05:A57F: 85 A5     STA ram_00A5_t05_plr_dir
; save current state
C - - - - - 0x016591 05:A581: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016594 05:A584: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x016597 05:A587: A9 0B     LDA #con_040E_plr_state_capt_slide
C - - - - - 0x016599 05:A589: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01659C 05:A58C: 20 92 AE  JSR sub_AE92
bra_A58F_same_direction:
C - - - - - 0x01659F 05:A58F: AD 18 04  LDA ram_0418_player_counter
C - - - - - 0x0165A2 05:A592: F0 07     BEQ bra_A59B
bra_A594:
C - - - - - 0x0165A4 05:A594: 20 67 A6  JSR sub_A667_clear_player_speed_Y
C - - - - - 0x0165A7 05:A597: CE 18 04  DEC ram_0418_player_counter
C - - - - - 0x0165AA 05:A59A: 60        RTS
bra_A59B:
C - - - - - 0x0165AB 05:A59B: A9 00     LDA #con_0416_00
C - - - - - 0x0165AD 05:A59D: 8D 16 04  STA ram_0416_player_flags
                                       ;LDA #$00
; bzk optimize, useless STA
C - - - - - 0x0165B0 05:A5A0: 8D 17 04  STA ram_0417_player_counter
; 
C - - - - - 0x0165B3 05:A5A3: F0 EF     BEQ bra_A594    ; jmp



tbl_A5A5_spd_X_hi:
- D 1 - - - 0x0165B5 05:A5A5: FF        .byte ^ $FFFC00   ; 00 left
- D 1 - - - 0x0165B6 05:A5A6: 00        .byte ^ $000400   ; 01 right
- D 1 - - - 0x0165B7 05:A5A7: 00        .byte ^ $000000   ; 02 



tbl_A5A8_spd_X_lo:
- D 1 - - - 0x0165B8 05:A5A8: FC        .byte > $FFFC00   ; 00 left
- D 1 - - - 0x0165B9 05:A5A9: 04        .byte > $000400   ; 01 right
- D 1 - - - 0x0165BA 05:A5AA: 00        .byte > $000000   ; 02 



tbl_A5AB_spd_X_fr:
; bzk optimize, asame values
- D 1 - - - 0x0165BB 05:A5AB: 00        .byte < $FFFC00   ; 00 left
- D 1 - - - 0x0165BC 05:A5AC: 00        .byte < $000400   ; 01 right
- D 1 - - - 0x0165BD 05:A5AD: 00        .byte < $000000   ; 02 



ofs_029_captain_state_A5AE_0C:
; con_plr_state_0C
C - - J - - 0x0165BE 05:A5AE: CE 1D 04  DEC ram_041D_player_timer
C - - - - - 0x0165C1 05:A5B1: D0 32     BNE bra_A5E5_RTS
C - - - - - 0x0165C3 05:A5B3: A9 00     LDA #con_plr_state_idle
C - - - - - 0x0165C5 05:A5B5: 8D 02 04  STA ram_prev_player_state_1
;                                      ;LDA #$00
C - - - - - 0x0165C8 05:A5B8: 8D 15 04  STA ram_0415_player_counter
;                                      ;LDA #con_00AB_00
C - - - - - 0x0165CB 05:A5BB: 85 AB     STA ram_00AB_handler
; bzk optimize, useless STA
C - - - - - 0x0165CD 05:A5BD: 8D 19 04  STA ram_0419_tFE_useless
; 
C - - - - - 0x0165D0 05:A5C0: 8D 1A 04  STA ram_player_jump_timer
C - - - - - 0x0165D3 05:A5C3: 8D 1B 04  STA ram_041B_player_flags   ; con_041B_flag_00
C - - - - - 0x0165D6 05:A5C6: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x0165D9 05:A5C9: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x0165DB 05:A5CB: 05 AA     ORA ram_00AA_plr_flags
C - - - - - 0x0165DD 05:A5CD: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x0165DF 05:A5CF: A9 02     LDA #con_plr_state_jump
C - - - - - 0x0165E1 05:A5D1: 8D 01 04  STA ram_player_state_1
C - - - - - 0x0165E4 05:A5D4: AD 06 04  LDA ram_pos_Y_fr_player
C - - - - - 0x0165E7 05:A5D7: 38        SEC
C - - - - - 0x0165E8 05:A5D8: E9 08     SBC #< $0008
C - - - - - 0x0165EA 05:A5DA: 8D 06 04  STA ram_pos_Y_fr_player
C - - - - - 0x0165ED 05:A5DD: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0165F0 05:A5E0: E9 00     SBC #> $0008
C - - - - - 0x0165F2 05:A5E2: 8D 07 04  STA ram_pos_Y_lo_player
bra_A5E5_RTS:
C - - - - - 0x0165F5 05:A5E5: 60        RTS



ofs_029_captain_state_A5E6_0D_look_up:
; con_plr_state_look_up_cap
C - - J - - 0x0165F6 05:A5E6: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x0165F8 05:A5E8: D0 27     BNE bra_A611_swimming
; if not swimming
C - - - - - 0x0165FA 05:A5EA: 20 79 B2  JSR sub_B279
C - - - - - 0x0165FD 05:A5ED: A5 DA     LDA ram_00DA_flags
C - - - - - 0x0165FF 05:A5EF: 10 04     BPL bra_A5F5
; if con_00DA_80
C - - - - - 0x016601 05:A5F1: A9 00     LDA #con_040E_plr_state_idle
C - - - - - 0x016603 05:A5F3: F0 0D     BEQ bra_A602    ; jmp
bra_A5F5:
C - - - - - 0x016605 05:A5F5: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016608 05:A5F8: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x01660B 05:A5FB: F0 10     BEQ bra_A60D
; save current state
C - - - - - 0x01660D 05:A5FD: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x016610 05:A600: A9 0C     LDA #con_040E_plr_state_look_up
bra_A602:
C - - - - - 0x016612 05:A602: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016615 05:A605: 20 92 AE  JSR sub_AE92
C - - - - - 0x016618 05:A608: A9 00     LDA #con_041B_flag_00
C - - - - - 0x01661A 05:A60A: 8D 1B 04  STA ram_041B_player_flags
bra_A60D:
; bzk optimize, JMP
C - - - - - 0x01661D 05:A60D: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x016620 05:A610: 60        RTS
bra_A611_swimming:
- - - - - - 0x016621 05:A611: A9 00     LDA #$00    ; con_040E_plr_state_idle
- - - - - - 0x016623 05:A613: 8D 01 04  STA ram_player_state_1  ; con_plr_state_idle
- - - - - - 0x016626 05:A616: F0 EA     BEQ bra_A602    ; jmp



ofs_029_captain_state_A618_0E_throw_shield:
; con_plr_state_throw_shield
C - - J - - 0x016628 05:A618: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01662B 05:A61B: 29 7F     AND #$80 ^ $FF
C - - - - - 0x01662D 05:A61D: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x016630 05:A620: AD 19 04  LDA ram_0419_t04_player_shield_launch_timer
C - - - - - 0x016633 05:A623: F0 07     BEQ bra_A62C
C - - - - - 0x016635 05:A625: CE 19 04  DEC ram_0419_t04_player_shield_launch_timer
; bzk optimize, JMP
C - - - - - 0x016638 05:A628: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x01663B 05:A62B: 60        RTS
bra_A62C:
C - - - - - 0x01663C 05:A62C: A9 0E     LDA #con_plr_state_throw_shield
C - - - - - 0x01663E 05:A62E: 8D 02 04  STA ram_prev_player_state_1
C - - - - - 0x016641 05:A631: A9 00     LDA #con_plr_state_idle
C - - - - - 0x016643 05:A633: 8D 01 04  STA ram_player_state_1
C - - - - - 0x016646 05:A636: 60        RTS



ofs_029_captain_state_A637_0F:
; con_plr_state_0F
- - - - - - 0x016647 05:A637: AD 01 04  LDA ram_player_state_1
- - - - - - 0x01664A 05:A63A: CD 02 04  CMP ram_prev_player_state_1
- - - - - - 0x01664D 05:A63D: F0 0B     BEQ bra_A64A
; save current state
- - - - - - 0x01664F 05:A63F: 8D 02 04  STA ram_prev_player_state_1
; 
- - - - - - 0x016652 05:A642: A9 0E     LDA #con_040E_plr_state_hawk_shoot_arrow_diagonal_on_ground
- - - - - - 0x016654 05:A644: 8D 0E 04  STA ram_player_state_2
- - - - - - 0x016657 05:A647: 20 92 AE  JSR sub_AE92
bra_A64A:
- - - - - - 0x01665A 05:A64A: A9 00     LDA #con_041B_flag_00
- - - - - - 0x01665C 05:A64C: 8D 1B 04  STA ram_041B_player_flags
- - - - - - 0x01665F 05:A64F: 60        RTS



sub_A650_clear_player_speed_XY:
C - - - - - 0x016660 05:A650: A9 00     LDA #$00
C - - - - - 0x016662 05:A652: 8D 12 04  STA ram_spd_Y_fr_player
C - - - - - 0x016665 05:A655: 8D 13 04  STA ram_spd_Y_lo_player
C - - - - - 0x016668 05:A658: 8D 14 04  STA ram_spd_Y_hi_player
sub_A65B_clear_player_speed_X:
C - - - - - 0x01666B 05:A65B: A9 00     LDA #$00
C - - - - - 0x01666D 05:A65D: 8D 0F 04  STA ram_spd_X_fr_player
C - - - - - 0x016670 05:A660: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x016673 05:A663: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x016676 05:A666: 60        RTS



sub_A667_clear_player_speed_Y:
C - - - - - 0x016677 05:A667: A9 00     LDA #$00
C - - - - - 0x016679 05:A669: 8D 12 04  STA ram_spd_Y_fr_player
C - - - - - 0x01667C 05:A66C: 8D 13 04  STA ram_spd_Y_lo_player
C - - - - - 0x01667F 05:A66F: 8D 14 04  STA ram_spd_Y_hi_player
C - - - - - 0x016682 05:A672: 60        RTS



sub_A673:
; in
    ; A = 
C - - - - - 0x016683 05:A673: 0A        ASL
C - - - - - 0x016684 05:A674: AA        TAX
C - - - - - 0x016685 05:A675: BD CE A6  LDA tbl_A6CE,X
C - - - - - 0x016688 05:A678: 85 5B     STA ram_005B_t0B_data
C - - - - - 0x01668A 05:A67A: BD CF A6  LDA tbl_A6CE + $01,X
C - - - - - 0x01668D 05:A67D: 85 5C     STA ram_005B_t0B_data + $01
C - - - - - 0x01668F 05:A67F: A5 A4     LDA ram_plr_direction
; * 04
C - - - - - 0x016691 05:A681: 0A        ASL
C - - - - - 0x016692 05:A682: 0A        ASL
; 
C - - - - - 0x016693 05:A683: A8        TAY
C - - - - - 0x016694 05:A684: B1 5B     LDA (ram_005B_t0B_data),Y
C - - - - - 0x016696 05:A686: 18        CLC
C - - - - - 0x016697 05:A687: 6D 07 04  ADC ram_pos_Y_lo_player
C - - - - - 0x01669A 05:A68A: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x01669C 05:A68C: C8        INY
C - - - - - 0x01669D 05:A68D: B1 5B     LDA (ram_005B_t0B_data),Y
C - - - - - 0x01669F 05:A68F: 6D 08 04  ADC ram_pos_Y_hi_player
C - - - - - 0x0166A2 05:A692: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x0166A4 05:A694: C8        INY
C - - - - - 0x0166A5 05:A695: B1 5B     LDA (ram_005B_t0B_data),Y
C - - - - - 0x0166A7 05:A697: 18        CLC
C - - - - - 0x0166A8 05:A698: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x0166AB 05:A69B: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x0166AD 05:A69D: C8        INY
C - - - - - 0x0166AE 05:A69E: B1 5B     LDA (ram_005B_t0B_data),Y
C - - - - - 0x0166B0 05:A6A0: 6D 05 04  ADC ram_pos_X_hi_player
C - - - - - 0x0166B3 05:A6A3: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x0166B5 05:A6A5: 30 07     BMI bra_A6AE
C - - - - - 0x0166B7 05:A6A7: 20 B9 FF  JSR sub_0x01FFC9
C - - - - - 0x0166BA 05:A6AA: A5 6E     LDA ram_006E_t01
C - - - - - 0x0166BC 05:A6AC: D0 1C     BNE bra_A6CA
bra_A6AE:
C - - - - - 0x0166BE 05:A6AE: A5 A4     LDA ram_plr_direction
C - - - - - 0x0166C0 05:A6B0: 0A        ASL
C - - - - - 0x0166C1 05:A6B1: A8        TAY
C - - - - - 0x0166C2 05:A6B2: B9 EC A6  LDA tbl_A6EC,Y
C - - - - - 0x0166C5 05:A6B5: 18        CLC
C - - - - - 0x0166C6 05:A6B6: 65 B7     ADC ram_00B7_pos_X_lo
C - - - - - 0x0166C8 05:A6B8: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x0166CA 05:A6BA: B9 ED A6  LDA tbl_A6EC + $01,Y
C - - - - - 0x0166CD 05:A6BD: 65 B8     ADC ram_00B8_pos_X_hi
C - - - - - 0x0166CF 05:A6BF: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x0166D1 05:A6C1: 30 0A     BMI bra_A6CD_RTS
C - - - - - 0x0166D3 05:A6C3: 20 B9 FF  JSR sub_0x01FFC9
C - - - - - 0x0166D6 05:A6C6: A5 6E     LDA ram_006E_t01
C - - - - - 0x0166D8 05:A6C8: F0 03     BEQ bra_A6CD_RTS
bra_A6CA:
; bzk optimize, JMP
C - - - - - 0x0166DA 05:A6CA: 20 BC FF  JSR sub_0x01FFCC
bra_A6CD_RTS:
C - - - - - 0x0166DD 05:A6CD: 60        RTS



tbl_A6CE:
- D 1 - - - 0x0166DE 05:A6CE: D4 A6     .word off_A6D4_00
- D 1 - - - 0x0166E0 05:A6D0: DC A6     .word off_A6DC_01
- D 1 - - - 0x0166E2 05:A6D2: E4 A6     .word off_A6E4_02



off_A6D4_00:
; 00 left
- D 1 - I - 0x0166E4 05:A6D4: E4 FF     .word $FFE4 ; Y
- D 1 - I - 0x0166E6 05:A6D6: E8 FF     .word $FFE8 ; X
; 01 right
- D 1 - I - 0x0166E8 05:A6D8: E4 FF     .word $FFE4 ; Y
- D 1 - I - 0x0166EA 05:A6DA: 18 00     .word $0018 ; X



off_A6DC_01:
; 00 left
- D 1 - I - 0x0166EC 05:A6DC: F0 FF     .word $FFF0 ; Y
- D 1 - I - 0x0166EE 05:A6DE: E8 FF     .word $FFE8 ; X
; 01 right
- D 1 - I - 0x0166F0 05:A6E0: F0 FF     .word $FFF0 ; Y
- D 1 - I - 0x0166F2 05:A6E2: 18 00     .word $0018 ; X



off_A6E4_02:
; 00 left
- D 1 - I - 0x0166F4 05:A6E4: F0 FF     .word $FFF0 ; Y
- D 1 - I - 0x0166F6 05:A6E6: EC FF     .word $FFEC ; X
; 01 right
- D 1 - I - 0x0166F8 05:A6E8: F0 FF     .word $FFF0 ; Y
- D 1 - I - 0x0166FA 05:A6EA: 14 00     .word $0014 ; X



tbl_A6EC:
- D 1 - - - 0x0166FC 05:A6EC: 08 00     .word $0008 ; 00 left
- D 1 - - - 0x0166FE 05:A6EE: F8 FF     .word $FFF8 ; 01 right



sub_A6F0:
C - - - - - 0x016700 05:A6F0: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x016703 05:A6F3: 0D 0F 04  ORA ram_spd_X_fr_player
C - - - - - 0x016706 05:A6F6: 0D 11 04  ORA ram_spd_X_hi_player
C - - - - - 0x016709 05:A6F9: F0 60     BEQ bra_A75B
; if moving by X axis
C - - - - - 0x01670B 05:A6FB: A9 00     LDA #$00
C - - - - - 0x01670D 05:A6FD: 85 6C     STA ram_006C_t08
C - - - - - 0x01670F 05:A6FF: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x016712 05:A702: 10 04     BPL bra_A708
C - - - - - 0x016714 05:A704: A2 00     LDX #$00
C - - - - - 0x016716 05:A706: F0 02     BEQ bra_A70A    ; jmp
bra_A708:
C - - - - - 0x016718 05:A708: A2 02     LDX #$02
bra_A70A:
C - - - - - 0x01671A 05:A70A: BD 5F A7  LDA tbl_A75F,X
C - - - - - 0x01671D 05:A70D: 85 5F     STA ram_005F_t04_data
C - - - - - 0x01671F 05:A70F: BD 60 A7  LDA tbl_A75F + $01,X
C - - - - - 0x016722 05:A712: 85 60     STA ram_005F_t04_data + $01
bra_A714_loop:
C - - - - - 0x016724 05:A714: A5 6C     LDA ram_006C_t08
; * 04
C - - - - - 0x016726 05:A716: 0A        ASL
C - - - - - 0x016727 05:A717: 0A        ASL
; 
C - - - - - 0x016728 05:A718: A8        TAY
C - - - - - 0x016729 05:A719: B1 5F     LDA (ram_005F_t04_data),Y
C - - - - - 0x01672B 05:A71B: 18        CLC
C - - - - - 0x01672C 05:A71C: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x01672F 05:A71F: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x016731 05:A721: C8        INY
C - - - - - 0x016732 05:A722: B1 5F     LDA (ram_005F_t04_data),Y
C - - - - - 0x016734 05:A724: 6D 05 04  ADC ram_pos_X_hi_player
C - - - - - 0x016737 05:A727: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x016739 05:A729: C8        INY
C - - - - - 0x01673A 05:A72A: B1 5F     LDA (ram_005F_t04_data),Y
C - - - - - 0x01673C 05:A72C: 18        CLC
C - - - - - 0x01673D 05:A72D: 6D 07 04  ADC ram_pos_Y_lo_player
C - - - - - 0x016740 05:A730: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x016742 05:A732: C8        INY
C - - - - - 0x016743 05:A733: B1 5F     LDA (ram_005F_t04_data),Y
C - - - - - 0x016745 05:A735: 6D 08 04  ADC ram_pos_Y_hi_player
C - - - - - 0x016748 05:A738: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x01674A 05:A73A: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x01674D 05:A73D: A5 BC     LDA ram_00BC
C - - - - - 0x01674F 05:A73F: 29 01     AND #$01
C - - - - - 0x016751 05:A741: D0 0A     BNE bra_A74D
C - - - - - 0x016753 05:A743: E6 6C     INC ram_006C_t08
C - - - - - 0x016755 05:A745: A5 6C     LDA ram_006C_t08
C - - - - - 0x016757 05:A747: C9 02     CMP #$02
C - - - - - 0x016759 05:A749: 90 C9     BCC bra_A714_loop
C - - - - - 0x01675B 05:A74B: B0 0E     BCS bra_A75B    ; jmp
bra_A74D:
C - - - - - 0x01675D 05:A74D: 20 5B A6  JSR sub_A65B_clear_player_speed_X
C - - - - - 0x016760 05:A750: A9 00     LDA #con_0416_00
C - - - - - 0x016762 05:A752: 8D 16 04  STA ram_0416_player_flags
                                       ;LDA #$00
; bzk optimize, useless STA + STA
C - - - - - 0x016765 05:A755: 8D 17 04  STA ram_0417_player_counter
C - - - - - 0x016768 05:A758: 8D 18 04  STA ram_0418_player_counter
; 
bra_A75B:
; bzk optimize, JMP
C - - - - - 0x01676B 05:A75B: 20 33 B0  JSR sub_B033
C - - - - - 0x01676E 05:A75E: 60        RTS



tbl_A75F:
- D 1 - - - 0x01676F 05:A75F: 63 A7     .word off_A763_00
- D 1 - - - 0x016771 05:A761: 6B A7     .word off_A76B_02



off_A763_00:
; 00 
- D 1 - I - 0x016773 05:A763: F6 FF     .word $FFF6 ; X
- D 1 - I - 0x016775 05:A765: FC FF     .word $FFFC ; Y
; 01 
- D 1 - I - 0x016777 05:A767: F6 FF     .word $FFF6 ; X
- D 1 - I - 0x016779 05:A769: E8 FF     .word $FFE8 ; Y



off_A76B_02:
; 00 
- D 1 - I - 0x01677B 05:A76B: 09 00     .word $0009 ; X
- D 1 - I - 0x01677D 05:A76D: FC FF     .word $FFFC ; Y
; 01 
- D 1 - I - 0x01677F 05:A76F: 09 00     .word $0009 ; X
- D 1 - I - 0x016781 05:A771: E8 FF     .word $FFE8 ; Y



sub_A773_shield_handler:
C - - - - - 0x016783 05:A773: AD 2F 04  LDA ram_042F_shield_script
C - - - - - 0x016786 05:A776: 0A        ASL
C - - - - - 0x016787 05:A777: AA        TAX
C - - - - - 0x016788 05:A778: BD 85 A7  LDA tbl_A785,X
C - - - - - 0x01678B 05:A77B: 85 5B     STA ram_005B_t59_jmp
C - - - - - 0x01678D 05:A77D: BD 86 A7  LDA tbl_A785 + $01,X
C - - - - - 0x016790 05:A780: 85 5C     STA ram_005B_t59_jmp + $01
C - - - - - 0x016792 05:A782: 6C 5B 00  JMP (ram_005B_t59_jmp)



tbl_A785:
- D 1 - - - 0x016795 05:A785: 93 A7     .word ofs_028_shield_handler_A793_00
- D 1 - - - 0x016797 05:A787: C9 A7     .word ofs_028_shield_handler_A7C9_01
- D 1 - - - 0x016799 05:A789: E9 A7     .word ofs_028_shield_handler_A7E9_02
- D 1 - - - 0x01679B 05:A78B: 1D A8     .word ofs_028_shield_handler_A81D_03
- D 1 - - - 0x01679D 05:A78D: E9 A7     .word ofs_028_shield_handler_A7E9_04
- D 1 - - - 0x01679F 05:A78F: 1D A8     .word ofs_028_shield_handler_A81D_05
- D 1 - - - 0x0167A1 05:A791: 96 A8     .word ofs_028_shield_handler_A896_06



ofs_028_shield_handler_A793_00:
; copy X
C - - J - - 0x0167A3 05:A793: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x0167A6 05:A796: 8D 26 04  STA ram_pos_X_hi_shield
C - - - - - 0x0167A9 05:A799: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x0167AC 05:A79C: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x0167AF 05:A79F: AD 03 04  LDA ram_pos_X_fr_player
C - - - - - 0x0167B2 05:A7A2: 8D 24 04  STA ram_pos_X_fr_shield
; copy Y
C - - - - - 0x0167B5 05:A7A5: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x0167B8 05:A7A8: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x0167BB 05:A7AB: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0167BE 05:A7AE: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x0167C1 05:A7B1: AD 06 04  LDA ram_pos_Y_fr_player
C - - - - - 0x0167C4 05:A7B4: 8D 27 04  STA ram_pos_Y_fr_shield
; 
C - - - - - 0x0167C7 05:A7B7: A9 00     LDA #$00
C - - - - - 0x0167C9 05:A7B9: 8D 30 04  STA ram_0430_pos_X_fr_projectile
C - - - - - 0x0167CC 05:A7BC: 8D 31 04  STA ram_0431_pos_X_lo_projectile
C - - - - - 0x0167CF 05:A7BF: 8D 32 04  STA ram_0432_pos_Y_fr_projectile
C - - - - - 0x0167D2 05:A7C2: 8D 33 04  STA ram_0433_pos_Y_lo_projectile
C - - - - - 0x0167D5 05:A7C5: 8D 36 04  STA ram_0436_shield_capsule_hit_delay_timer
C - - - - - 0x0167D8 05:A7C8: 60        RTS



ofs_028_shield_handler_A7C9_01:
; shield is launching
C - - J - - 0x0167D9 05:A7C9: CE 34 04  DEC ram_0434_shield_fly_timer
C - - - - - 0x0167DC 05:A7CC: D0 1A     BNE bra_A7E8_RTS
C - - - - - 0x0167DE 05:A7CE: EE 2F 04  INC ram_042F_shield_script    ; -> 02
C - - - - - 0x0167E1 05:A7D1: A9 01     LDA #$01
C - - - - - 0x0167E3 05:A7D3: 0D 22 04  ORA ram_0422_flag
C - - - - - 0x0167E6 05:A7D6: 8D 22 04  STA ram_0422_flag
C - - - - - 0x0167E9 05:A7D9: A9 0E     LDA #$0E
C - - - - - 0x0167EB 05:A7DB: 8D 34 04  STA ram_0434_shield_fly_timer
C - - - - - 0x0167EE 05:A7DE: 20 04 A9  JSR sub_A904
C - - - - - 0x0167F1 05:A7E1: A9 15     LDA #con_sfx_throw_shield
C - - - - - 0x0167F3 05:A7E3: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x0167F5 05:A7E5: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_A7E8_RTS:
C - - - - - 0x0167F8 05:A7E8: 60        RTS



ofs_028_shield_handler_A7E9_02:
; shield is flying foward
ofs_028_shield_handler_A7E9_04:
; shield is flying back 1st time
C - - J - - 0x0167F9 05:A7E9: A9 81     LDA #$80 + $01
C - - - - - 0x0167FB 05:A7EB: 8D 22 04  STA ram_0422_flag
C - - - - - 0x0167FE 05:A7EE: CE 34 04  DEC ram_0434_shield_fly_timer
C - - - - - 0x016801 05:A7F1: F0 21     BEQ bra_A814_next_script
C - - - - - 0x016803 05:A7F3: AE 35 04  LDX ram_0435_shield_fly_direction
C - - - - - 0x016806 05:A7F6: BD 1B A8  LDA tbl_A81B_pox_X_fr,X
C - - - - - 0x016809 05:A7F9: 8D 30 04  STA ram_0430_pos_X_fr_projectile
C - - - - - 0x01680C 05:A7FC: BD 19 A8  LDA tbl_A819_pox_X_lo,X
C - - - - - 0x01680F 05:A7FF: 8D 31 04  STA ram_0431_pos_X_lo_projectile
C - - - - - 0x016812 05:A802: A9 00     LDA #$00
C - - - - - 0x016814 05:A804: 8D 32 04  STA ram_0432_pos_Y_fr_projectile
C - - - - - 0x016817 05:A807: 8D 33 04  STA ram_0433_pos_Y_lo_projectile
bra_A80A:
C - - - - - 0x01681A 05:A80A: 20 E8 A9  JSR sub_A9E8
C - - - - - 0x01681D 05:A80D: 20 87 A9  JSR sub_A987
; bzk optimize, JMP
C - - - - - 0x016820 05:A810: 20 C2 BD  JSR sub_BDC2
C - - - - - 0x016823 05:A813: 60        RTS
bra_A814_next_script:
C - - - - - 0x016824 05:A814: EE 2F 04  INC ram_042F_shield_script    ; -> 03/05
C - - - - - 0x016827 05:A817: D0 F1     BNE bra_A80A    ; jmp



tbl_A819_pox_X_lo:
- D 1 - - - 0x016829 05:A819: FA        .byte > $FA00   ; 00 
- D 1 - - - 0x01682A 05:A81A: 06        .byte > $0600   ; 01 



tbl_A81B_pox_X_fr:
; bzk optimize, same values
- D 1 - - - 0x01682B 05:A81B: 00        .byte < $FA00   ; 00 left
- D 1 - - - 0x01682C 05:A81C: 00        .byte < $0600   ; 01 right



ofs_028_shield_handler_A81D_03:
; shield is slowind down 1st time
ofs_028_shield_handler_A81D_05:
; shield is slowind down 2nd time
C - - J - - 0x01682D 05:A81D: EE 34 04  INC ram_0434_shield_fly_timer
C - - - - - 0x016830 05:A820: AE 34 04  LDX ram_0434_shield_fly_timer
C - - - - - 0x016833 05:A823: E0 08     CPX #$08
C - - - - - 0x016835 05:A825: B0 34     BCS bra_A85B
C - - - - - 0x016837 05:A827: AD 35 04  LDA ram_0435_shield_fly_direction
C - - - - - 0x01683A 05:A82A: D0 14     BNE bra_A840
C - - - - - 0x01683C 05:A82C: A9 00     LDA #$00
C - - - - - 0x01683E 05:A82E: 18        CLC
C - - - - - 0x01683F 05:A82F: 7D 86 A8  ADC tbl_A886_pox_X_fr,X
C - - - - - 0x016842 05:A832: 8D 30 04  STA ram_0430_pos_X_fr_projectile
C - - - - - 0x016845 05:A835: A9 FC     LDA #$FC
C - - - - - 0x016847 05:A837: 7D 8E A8  ADC tbl_A88E_pos_X_lo,X
C - - - - - 0x01684A 05:A83A: 8D 31 04  STA ram_0431_pos_X_lo_projectile
C - - - - - 0x01684D 05:A83D: 4C 51 A8  JMP loc_A851
bra_A840:
C - - - - - 0x016850 05:A840: A9 00     LDA #$00
C - - - - - 0x016852 05:A842: 38        SEC
C - - - - - 0x016853 05:A843: FD 86 A8  SBC tbl_A886_pox_X_fr,X
C - - - - - 0x016856 05:A846: 8D 30 04  STA ram_0430_pos_X_fr_projectile
C - - - - - 0x016859 05:A849: A9 04     LDA #$04
C - - - - - 0x01685B 05:A84B: FD 8E A8  SBC tbl_A88E_pos_X_lo,X
C - - - - - 0x01685E 05:A84E: 8D 31 04  STA ram_0431_pos_X_lo_projectile
bra_A851:
loc_A851:
C D 1 - - - 0x016861 05:A851: 20 E8 A9  JSR sub_A9E8
C - - - - - 0x016864 05:A854: 20 87 A9  JSR sub_A987
; bzk optimize, JMP
C - - - - - 0x016867 05:A857: 20 C2 BD  JSR sub_BDC2
C - - - - - 0x01686A 05:A85A: 60        RTS
bra_A85B:
C - - - - - 0x01686B 05:A85B: AD 2F 04  LDA ram_042F_shield_script
; bzk optimize, CMP 03 + BEQ for readability
C - - - - - 0x01686E 05:A85E: C9 05     CMP #$05
C - - - - - 0x016870 05:A860: 90 05     BCC bra_A867_03
; if 05
C - - - - - 0x016872 05:A862: EE 2F 04  INC ram_042F_shield_script    ; -> 06
C - - - - - 0x016875 05:A865: D0 EA     BNE bra_A851    ; jmp
bra_A867_03:
C - - - - - 0x016877 05:A867: AD D7 03  LDA ram_captain_power
C - - - - - 0x01687A 05:A86A: C9 02     CMP #$02
C - - - - - 0x01687C 05:A86C: B0 04     BCS bra_A872
C - - - - - 0x01687E 05:A86E: A9 06     LDA #$06
C - - - - - 0x016880 05:A870: D0 0F     BNE bra_A881    ; jmp
bra_A872:
C - - - - - 0x016882 05:A872: AD 35 04  LDA ram_0435_shield_fly_direction
C - - - - - 0x016885 05:A875: 49 01     EOR #$01
C - - - - - 0x016887 05:A877: 8D 35 04  STA ram_0435_shield_fly_direction
C - - - - - 0x01688A 05:A87A: A9 22     LDA #$22
C - - - - - 0x01688C 05:A87C: 8D 34 04  STA ram_0434_shield_fly_timer
C - - - - - 0x01688F 05:A87F: A9 04     LDA #$04
bra_A881:
C - - - - - 0x016891 05:A881: 8D 2F 04  STA ram_042F_shield_script
C - - - - - 0x016894 05:A884: D0 CB     BNE bra_A851    ; jmp



tbl_A886_pox_X_fr:
- - - - - - 0x016896 05:A886: 00        .byte < $0100   ; 00 
- D 1 - - - 0x016897 05:A887: 80        .byte < $0180   ; 01 
- D 1 - - - 0x016898 05:A888: 80        .byte < $0180   ; 02 
- D 1 - - - 0x016899 05:A889: 00        .byte < $0200   ; 03 
- D 1 - - - 0x01689A 05:A88A: 00        .byte < $0200   ; 04 
- D 1 - - - 0x01689B 05:A88B: 00        .byte < $0200   ; 05 
- D 1 - - - 0x01689C 05:A88C: 00        .byte < $0300   ; 06 
- D 1 - - - 0x01689D 05:A88D: 00        .byte < $0300   ; 07 



tbl_A88E_pos_X_lo:
- - - - - - 0x01689E 05:A88E: 01        .byte > $0100   ; 00 
- D 1 - - - 0x01689F 05:A88F: 01        .byte > $0180   ; 01 
- D 1 - - - 0x0168A0 05:A890: 01        .byte > $0180   ; 02 
- D 1 - - - 0x0168A1 05:A891: 02        .byte > $0200   ; 03 
- D 1 - - - 0x0168A2 05:A892: 02        .byte > $0200   ; 04 
- D 1 - - - 0x0168A3 05:A893: 02        .byte > $0200   ; 05 
- D 1 - - - 0x0168A4 05:A894: 03        .byte > $0300   ; 06 
- D 1 - - - 0x0168A5 05:A895: 03        .byte > $0300   ; 07 



ofs_028_shield_handler_A896_06:
; shield is flying back 2nd time
C - - J - - 0x0168A6 05:A896: AD 27 04  LDA ram_pos_Y_fr_shield
C - - - - - 0x0168A9 05:A899: 85 C0     STA ram_00C0_pos_Y_fr_shield_boomerang
C - - - - - 0x0168AB 05:A89B: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x0168AE 05:A89E: 85 BF     STA ram_00BF_pos_Y_lo_shield_boomerang
C - - - - - 0x0168B0 05:A8A0: AD 29 04  LDA ram_pos_Y_hi_shield
C - - - - - 0x0168B3 05:A8A3: 85 BE     STA ram_00BE_pos_Y_hi_shield_boomerang
C - - - - - 0x0168B5 05:A8A5: AD 24 04  LDA ram_pos_X_fr_shield
C - - - - - 0x0168B8 05:A8A8: 85 C3     STA ram_00C3_pos_X_fr_shield_boomerang
C - - - - - 0x0168BA 05:A8AA: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x0168BD 05:A8AD: 85 C2     STA ram_00C2_pos_X_lo_shield_boomerang
C - - - - - 0x0168BF 05:A8AF: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x0168C2 05:A8B2: 85 C1     STA ram_00C1_pos_X_hi_shield_boomerang
C - - - - - 0x0168C4 05:A8B4: AD 06 04  LDA ram_pos_Y_fr_player
C - - - - - 0x0168C7 05:A8B7: 85 C6     STA ram_00C6_pos_Y_fr_shield_aim
C - - - - - 0x0168C9 05:A8B9: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0168CC 05:A8BC: 38        SEC
C - - - - - 0x0168CD 05:A8BD: E9 10     SBC #< $0010
C - - - - - 0x0168CF 05:A8BF: 85 C5     STA ram_00C5_pos_Y_lo_shield_aim
C - - - - - 0x0168D1 05:A8C1: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x0168D4 05:A8C4: E9 00     SBC #> $0010
C - - - - - 0x0168D6 05:A8C6: 85 C4     STA ram_00C4_pos_Y_hi_shield_aim
C - - - - - 0x0168D8 05:A8C8: AD 03 04  LDA ram_pos_X_fr_player
C - - - - - 0x0168DB 05:A8CB: 85 C9     STA ram_00C9_pos_X_fr_shield_aim
C - - - - - 0x0168DD 05:A8CD: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x0168E0 05:A8D0: 85 C8     STA ram_00C8_pos_X_lo_shield_aim
C - - - - - 0x0168E2 05:A8D2: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x0168E5 05:A8D5: 85 C7     STA ram_00C7_pos_X_hi_shield_aim
C - - - - - 0x0168E7 05:A8D7: 20 A4 FF  JSR sub_0x01FFB4_shield_boomerang_handler
C - - - - - 0x0168EA 05:A8DA: 85 68     STA ram_0068_t08
C - - - - - 0x0168EC 05:A8DC: A9 05     LDA #con_0067_t12_05
C - - - - - 0x0168EE 05:A8DE: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x0168F0 05:A8E0: 20 A7 FF  JSR sub_0x01FFB7
C - - - - - 0x0168F3 05:A8E3: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x0168F5 05:A8E5: 8D 31 04  STA ram_0431_pos_X_lo_projectile
C - - - - - 0x0168F8 05:A8E8: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x0168FA 05:A8EA: 8D 30 04  STA ram_0430_pos_X_fr_projectile
C - - - - - 0x0168FD 05:A8ED: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x0168FF 05:A8EF: 8D 33 04  STA ram_0433_pos_Y_lo_projectile
C - - - - - 0x016902 05:A8F2: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x016904 05:A8F4: 8D 32 04  STA ram_0432_pos_Y_fr_projectile
C - - - - - 0x016907 05:A8F7: 20 E8 A9  JSR sub_A9E8
C - - - - - 0x01690A 05:A8FA: 20 38 AA  JSR sub_AA38
C - - - - - 0x01690D 05:A8FD: 20 87 A9  JSR sub_A987
; bzk optimize, JMP
C - - - - - 0x016910 05:A900: 20 C2 BD  JSR sub_BDC2
C - - - - - 0x016913 05:A903: 60        RTS



sub_A904:
C - - - - - 0x016914 05:A904: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x016916 05:A906: 48        PHA
C - - - - - 0x016917 05:A907: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x016919 05:A909: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01691B 05:A90B: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01691E 05:A90E: AD 35 04  LDA ram_0435_shield_fly_direction
C - - - - - 0x016921 05:A911: 0A        ASL
C - - - - - 0x016922 05:A912: AA        TAX
C - - - - - 0x016923 05:A913: BD E6 89  LDA tbl_0x00A9F6,X
C - - - - - 0x016926 05:A916: 85 5B     STA ram_005B_t0A_data
C - - - - - 0x016928 05:A918: BD E7 89  LDA tbl_0x00A9F6 + $01,X
C - - - - - 0x01692B 05:A91B: 85 5C     STA ram_005B_t0A_data + $01
; bzk optimize, write to 042C and 042D right away,
; don't copy them from pointers
C - - - - - 0x01692D 05:A91D: A5 5B     LDA ram_005B_t0A_data
C - - - - - 0x01692F 05:A91F: 8D 2C 04  STA ram_042C_ptr_lo
C - - - - - 0x016932 05:A922: A5 5C     LDA ram_005B_t0A_data + $01
C - - - - - 0x016934 05:A924: 8D 2D 04  STA ram_042D_ptr_hi
C - - - - - 0x016937 05:A927: A0 00     LDY #$00
C - - - - - 0x016939 05:A929: B1 5B     LDA (ram_005B_t0A_data),Y
C - - - - - 0x01693B 05:A92B: 29 7F     AND #$7F
C - - - - - 0x01693D 05:A92D: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x01693F 05:A92F: C8        INY
C - - - - - 0x016940 05:A930: C8        INY ; 02
C - - - - - 0x016941 05:A931: B1 5B     LDA (ram_005B_t0A_data),Y
C - - - - - 0x016943 05:A933: 8D 2E 04  STA ram_042E_player_timer
C - - - - - 0x016946 05:A936: C8        INY ; 02
C - - - - - 0x016947 05:A937: B1 5B     LDA (ram_005B_t0A_data),Y
C - - - - - 0x016949 05:A939: 8D 2A 04  STA ram_042A_spr_data_ptr_lo
C - - - - - 0x01694C 05:A93C: C8        INY ; 04
C - - - - - 0x01694D 05:A93D: B1 5B     LDA (ram_005B_t0A_data),Y
C - - - - - 0x01694F 05:A93F: 8D 2B 04  STA ram_042B_spr_data_ptr_hi
C - - - - - 0x016952 05:A942: C8        INY ; 05
C - - - - - 0x016953 05:A943: B1 5B     LDA (ram_005B_t0A_data),Y
C - - - - - 0x016955 05:A945: AD 35 04  LDA ram_0435_shield_fly_direction
C - - - - - 0x016958 05:A948: F0 14     BEQ bra_A95E
C - - - - - 0x01695A 05:A94A: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01695D 05:A94D: 18        CLC
C - - - - - 0x01695E 05:A94E: 69 16     ADC #< $0016
C - - - - - 0x016960 05:A950: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x016963 05:A953: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x016966 05:A956: 69 00     ADC #> $0016
C - - - - - 0x016968 05:A958: 8D 26 04  STA ram_pos_X_hi_shield
C - - - - - 0x01696B 05:A95B: 4C 6F A9  JMP loc_A96F
bra_A95E:
C - - - - - 0x01696E 05:A95E: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x016971 05:A961: 38        SEC
C - - - - - 0x016972 05:A962: E9 16     SBC #< $0016
C - - - - - 0x016974 05:A964: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x016977 05:A967: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x01697A 05:A96A: E9 00     SBC #> $0016
C - - - - - 0x01697C 05:A96C: 8D 26 04  STA ram_pos_X_hi_shield
loc_A96F:
C D 1 - - - 0x01697F 05:A96F: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016982 05:A972: 38        SEC
C - - - - - 0x016983 05:A973: E9 16     SBC #< $0016
C - - - - - 0x016985 05:A975: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x016988 05:A978: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x01698B 05:A97B: E9 00     SBC #> $0016
C - - - - - 0x01698D 05:A97D: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x016990 05:A980: 68        PLA
C - - - - - 0x016991 05:A981: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x016993 05:A983: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x016996 05:A986: 60        RTS



sub_A987:
C - - - - - 0x016997 05:A987: AD 30 04  LDA ram_0430_pos_X_fr_projectile
C - - - - - 0x01699A 05:A98A: 0D 31 04  ORA ram_0431_pos_X_lo_projectile
C - - - - - 0x01699D 05:A98D: F0 28     BEQ bra_A9B7_not_moving_horisontally
; if moving by X axis
C - - - - - 0x01699F 05:A98F: AD 31 04  LDA ram_0431_pos_X_lo_projectile
C - - - - - 0x0169A2 05:A992: 10 04     BPL bra_A998_moving_right
; if moving left
C - - - - - 0x0169A4 05:A994: A9 FF     LDA #$FF    ; move left
C - - - - - 0x0169A6 05:A996: D0 02     BNE bra_A99A    ; jmp
bra_A998_moving_right:
C - - - - - 0x0169A8 05:A998: A9 00     LDA #$00    ; move right
bra_A99A:
C - - - - - 0x0169AA 05:A99A: 85 67     STA ram_0067_t2F_pos_X_hi
C - - - - - 0x0169AC 05:A99C: AD 24 04  LDA ram_pos_X_fr_shield
C - - - - - 0x0169AF 05:A99F: 18        CLC
C - - - - - 0x0169B0 05:A9A0: 6D 30 04  ADC ram_0430_pos_X_fr_projectile
C - - - - - 0x0169B3 05:A9A3: 8D 24 04  STA ram_pos_X_fr_shield
C - - - - - 0x0169B6 05:A9A6: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x0169B9 05:A9A9: 6D 31 04  ADC ram_0431_pos_X_lo_projectile
C - - - - - 0x0169BC 05:A9AC: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x0169BF 05:A9AF: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x0169C2 05:A9B2: 65 67     ADC ram_0067_t2F_pos_X_hi
C - - - - - 0x0169C4 05:A9B4: 8D 26 04  STA ram_pos_X_hi_shield
bra_A9B7_not_moving_horisontally:
C - - - - - 0x0169C7 05:A9B7: AD 32 04  LDA ram_0432_pos_Y_fr_projectile
C - - - - - 0x0169CA 05:A9BA: 0D 33 04  ORA ram_0433_pos_Y_lo_projectile
C - - - - - 0x0169CD 05:A9BD: F0 28     BEQ bra_A9E7_RTS
C - - - - - 0x0169CF 05:A9BF: AD 33 04  LDA ram_0433_pos_Y_lo_projectile
C - - - - - 0x0169D2 05:A9C2: 10 04     BPL bra_A9C8
C - - - - - 0x0169D4 05:A9C4: A9 FF     LDA #$FF
C - - - - - 0x0169D6 05:A9C6: D0 02     BNE bra_A9CA    ; jmp
bra_A9C8:
C - - - - - 0x0169D8 05:A9C8: A9 00     LDA #$00
bra_A9CA:
C - - - - - 0x0169DA 05:A9CA: 85 67     STA ram_0067_t30_pos_Y_hi
C - - - - - 0x0169DC 05:A9CC: AD 27 04  LDA ram_pos_Y_fr_shield
C - - - - - 0x0169DF 05:A9CF: 18        CLC
C - - - - - 0x0169E0 05:A9D0: 6D 32 04  ADC ram_0432_pos_Y_fr_projectile
C - - - - - 0x0169E3 05:A9D3: 8D 27 04  STA ram_pos_Y_fr_shield
C - - - - - 0x0169E6 05:A9D6: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x0169E9 05:A9D9: 6D 33 04  ADC ram_0433_pos_Y_lo_projectile
C - - - - - 0x0169EC 05:A9DC: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x0169EF 05:A9DF: AD 29 04  LDA ram_pos_Y_hi_shield
C - - - - - 0x0169F2 05:A9E2: 65 67     ADC ram_0067_t30_pos_Y_hi
C - - - - - 0x0169F4 05:A9E4: 8D 29 04  STA ram_pos_Y_hi_shield
bra_A9E7_RTS:
C - - - - - 0x0169F7 05:A9E7: 60        RTS



sub_A9E8:
C - - - - - 0x0169F8 05:A9E8: AD 2E 04  LDA ram_042E_player_timer
C - - - - - 0x0169FB 05:A9EB: F0 04     BEQ bra_A9F1
C - - - - - 0x0169FD 05:A9ED: CE 2E 04  DEC ram_042E_player_timer
C - - - - - 0x016A00 05:A9F0: 60        RTS
bra_A9F1:
C - - - - - 0x016A01 05:A9F1: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x016A03 05:A9F3: 48        PHA
C - - - - - 0x016A04 05:A9F4: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x016A06 05:A9F6: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x016A08 05:A9F8: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x016A0B 05:A9FB: AD 2C 04  LDA ram_042C_ptr_lo
C - - - - - 0x016A0E 05:A9FE: 85 5B     STA ram_005B_t1F_data
C - - - - - 0x016A10 05:AA00: AD 2D 04  LDA ram_042D_ptr_hi
C - - - - - 0x016A13 05:AA03: 85 5C     STA ram_005B_t1F_data + $01
C - - - - - 0x016A15 05:AA05: A0 05     LDY #$05
C - - - - - 0x016A17 05:AA07: B1 5B     LDA (ram_005B_t1F_data),Y
C - - - - - 0x016A19 05:AA09: 85 5D     STA ram_005D_t06_data
C - - - - - 0x016A1B 05:AA0B: 8D 2C 04  STA ram_042C_ptr_lo
C - - - - - 0x016A1E 05:AA0E: C8        INY ; 06
C - - - - - 0x016A1F 05:AA0F: B1 5B     LDA (ram_005B_t1F_data),Y
C - - - - - 0x016A21 05:AA11: 85 5E     STA ram_005D_t06_data + $01
C - - - - - 0x016A23 05:AA13: 8D 2D 04  STA ram_042D_ptr_hi
C - - - - - 0x016A26 05:AA16: A0 00     LDY #$00
C - - - - - 0x016A28 05:AA18: B1 5D     LDA (ram_005D_t06_data),Y
C - - - - - 0x016A2A 05:AA1A: 29 7F     AND #$7F
C - - - - - 0x016A2C 05:AA1C: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x016A2E 05:AA1E: C8        INY
C - - - - - 0x016A2F 05:AA1F: C8        INY ; 02
C - - - - - 0x016A30 05:AA20: B1 5D     LDA (ram_005D_t06_data),Y
C - - - - - 0x016A32 05:AA22: 8D 2E 04  STA ram_042E_player_timer
C - - - - - 0x016A35 05:AA25: C8        INY ; 03
C - - - - - 0x016A36 05:AA26: B1 5D     LDA (ram_005D_t06_data),Y
C - - - - - 0x016A38 05:AA28: 8D 2A 04  STA ram_042A_spr_data_ptr_lo
C - - - - - 0x016A3B 05:AA2B: C8        INY ; 04
C - - - - - 0x016A3C 05:AA2C: B1 5D     LDA (ram_005D_t06_data),Y
C - - - - - 0x016A3E 05:AA2E: 8D 2B 04  STA ram_042B_spr_data_ptr_hi
C - - - - - 0x016A41 05:AA31: 68        PLA
C - - - - - 0x016A42 05:AA32: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x016A44 05:AA34: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x016A47 05:AA37: 60        RTS



sub_AA38:
C - - - - - 0x016A48 05:AA38: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x016A4B 05:AA3B: 29 F0     AND #$F0
C - - - - - 0x016A4D 05:AA3D: 85 67     STA ram_0067_t31
C - - - - - 0x016A4F 05:AA3F: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x016A52 05:AA42: 29 F0     AND #$F0
C - - - - - 0x016A54 05:AA44: C5 67     CMP ram_0067_t31
C - - - - - 0x016A56 05:AA46: D0 4C     BNE bra_AA94_RTS
C - - - - - 0x016A58 05:AA48: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x016A5B 05:AA4B: CD 29 04  CMP ram_pos_Y_hi_shield
C - - - - - 0x016A5E 05:AA4E: D0 44     BNE bra_AA94_RTS
C - - - - - 0x016A60 05:AA50: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016A63 05:AA53: 38        SEC
C - - - - - 0x016A64 05:AA54: ED 28 04  SBC ram_pos_Y_lo_shield
C - - - - - 0x016A67 05:AA57: B0 04     BCS bra_AA5D
C - - - - - 0x016A69 05:AA59: 49 FF     EOR #$FF
C - - - - - 0x016A6B 05:AA5B: 69 01     ADC #$01
bra_AA5D:
C - - - - - 0x016A6D 05:AA5D: C9 1C     CMP #$1C
C - - - - - 0x016A6F 05:AA5F: B0 33     BCS bra_AA94_RTS
C - - - - - 0x016A71 05:AA61: A9 00     LDA #$00
C - - - - - 0x016A73 05:AA63: 8D 2F 04  STA ram_042F_shield_script
C - - - - - 0x016A76 05:AA66: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x016A79 05:AA69: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x016A7C 05:AA6C: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x016A7F 05:AA6F: 8D 26 04  STA ram_pos_X_hi_shield
C - - - - - 0x016A82 05:AA72: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016A85 05:AA75: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x016A88 05:AA78: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x016A8B 05:AA7B: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x016A8E 05:AA7E: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016A91 05:AA81: 29 18     AND #$10 + $08
C - - - - - 0x016A93 05:AA83: F0 07     BEQ bra_AA8C
C - - - - - 0x016A95 05:AA85: A9 00     LDA #$00
C - - - - - 0x016A97 05:AA87: 8D 22 04  STA ram_0422_flag
C - - - - - 0x016A9A 05:AA8A: F0 08     BEQ bra_AA94_RTS    ; jmp
bra_AA8C:
C - - - - - 0x016A9C 05:AA8C: A9 FF     LDA #$FF    ; unspecified
C - - - - - 0x016A9E 05:AA8E: 8D 02 04  STA ram_prev_player_state_1
; bzk optimize, JMP
C - - - - - 0x016AA1 05:AA91: 20 92 AE  JSR sub_AE92
bra_AA94_RTS:
C - - - - - 0x016AA4 05:AA94: 60        RTS



sub_AA95:
C - - - - - 0x016AA5 05:AA95: CE 0D 04  DEC ram_player_animation_timer
C - - - - - 0x016AA8 05:AA98: D0 56     BNE bra_AAF0_RTS
C - - - - - 0x016AAA 05:AA9A: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x016AAC 05:AA9C: 48        PHA
C - - - - - 0x016AAD 05:AA9D: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x016AAF 05:AA9F: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x016AB1 05:AAA1: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x016AB4 05:AAA4: AD 0B 04  LDA ram_040B_player_state_data_ptr_lo
C - - - - - 0x016AB7 05:AAA7: 85 5B     STA ram_005B_t1E_data
C - - - - - 0x016AB9 05:AAA9: AD 0C 04  LDA ram_040C_player_state_data_ptr_hi
C - - - - - 0x016ABC 05:AAAC: 85 5C     STA ram_005B_t1E_data + $01
C - - - - - 0x016ABE 05:AAAE: A0 05     LDY #$05
C - - - - - 0x016AC0 05:AAB0: B1 5B     LDA (ram_005B_t1E_data),Y
C - - - - - 0x016AC2 05:AAB2: 85 5D     STA ram_005D_t07_plr_state_data
C - - - - - 0x016AC4 05:AAB4: C8        INY ; 06
C - - - - - 0x016AC5 05:AAB5: B1 5B     LDA (ram_005B_t1E_data),Y
C - - - - - 0x016AC7 05:AAB7: 85 5E     STA ram_005D_t07_plr_state_data + $01
C - - - - - 0x016AC9 05:AAB9: A0 00     LDY #$00
C - - - - - 0x016ACB 05:AABB: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016ACD 05:AABD: 29 7F     AND #$7F
C - - - - - 0x016ACF 05:AABF: 85 24     STA ram_chr_bank_spr
C - - - - - 0x016AD1 05:AAC1: C8        INY
C - - - - - 0x016AD2 05:AAC2: C8        INY ; 02
C - - - - - 0x016AD3 05:AAC3: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016AD5 05:AAC5: 8D 0D 04  STA ram_player_animation_timer
C - - - - - 0x016AD8 05:AAC8: C8        INY ; 03
C - - - - - 0x016AD9 05:AAC9: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016ADB 05:AACB: 8D 09 04  STA ram_0409_spr_data_ptr_lo
C - - - - - 0x016ADE 05:AACE: C8        INY ; 04
C - - - - - 0x016ADF 05:AACF: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016AE1 05:AAD1: 8D 0A 04  STA ram_040A_spr_data_ptr_hi
C - - - - - 0x016AE4 05:AAD4: A5 5D     LDA ram_005D_t07_plr_state_data
C - - - - - 0x016AE6 05:AAD6: 8D 0B 04  STA ram_040B_player_state_data_ptr_lo
C - - - - - 0x016AE9 05:AAD9: A5 5E     LDA ram_005D_t07_plr_state_data + $01
C - - - - - 0x016AEB 05:AADB: 8D 0C 04  STA ram_040C_player_state_data_ptr_hi
C - - - - - 0x016AEE 05:AADE: C8        INY
C - - - - - 0x016AEF 05:AADF: C8        INY
C - - - - - 0x016AF0 05:AAE0: C8        INY ; 07
C - - - - - 0x016AF1 05:AAE1: 20 F1 AA  JSR sub_AAF1_prepare_data_pointers_for_captain
C - - - - - 0x016AF4 05:AAE4: C8        INY ; 08
C - - - - - 0x016AF5 05:AAE5: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016AF7 05:AAE7: 8D 1E 04  STA ram_041E_player_flags
C - - - - - 0x016AFA 05:AAEA: 68        PLA
C - - - - - 0x016AFB 05:AAEB: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x016AFD 05:AAED: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
bra_AAF0_RTS:
C - - - - - 0x016B00 05:AAF0: 60        RTS



sub_AAF1_prepare_data_pointers_for_captain:
; in
    ; ram_005D_t07_plr_state_data
; out
    ; ram_042A_spr_data_ptr_lo
    ; ram_042B_spr_data_ptr_hi
    ; ram_042C_ptr_lo
    ; ram_042D_ptr_hi
    ; ram_0422_flag
C - - - - - 0x016B01 05:AAF1: A5 A8     LDA ram_plr_index
C - - - - - 0x016B03 05:AAF3: D0 31     BNE bra_AB26_RTS
; if captain
C - - - - - 0x016B05 05:AAF5: AD 2F 04  LDA ram_042F_shield_script
C - - - - - 0x016B08 05:AAF8: C9 02     CMP #$02
C - - - - - 0x016B0A 05:AAFA: B0 2A     BCS bra_AB26_RTS
C - - - - - 0x016B0C 05:AAFC: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016B0E 05:AAFE: F0 23     BEQ bra_AB23
C - - - - - 0x016B10 05:AB00: 0A        ASL
C - - - - - 0x016B11 05:AB01: AA        TAX
C - - - - - 0x016B12 05:AB02: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x016B14 05:AB04: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x016B16 05:AB06: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x016B19 05:AB09: BD 52 89  LDA tbl_0x00A962_spr_data,X
C - - - - - 0x016B1C 05:AB0C: 8D 2A 04  STA ram_042A_spr_data_ptr_lo
C - - - - - 0x016B1F 05:AB0F: BD 53 89  LDA tbl_0x00A962_spr_data + $01,X
C - - - - - 0x016B22 05:AB12: 8D 2B 04  STA ram_042B_spr_data_ptr_hi
C - - - - - 0x016B25 05:AB15: BD 9C 89  LDA tbl_0x00A9AC_byte_00_or_80,X
C - - - - - 0x016B28 05:AB18: 8D 2C 04  STA ram_042C_ptr_lo
C - - - - - 0x016B2B 05:AB1B: BD 9D 89  LDA tbl_0x00A9AC_byte_00_or_80 + $01,X
C - - - - - 0x016B2E 05:AB1E: 8D 2D 04  STA ram_042D_ptr_hi
C - - - - - 0x016B31 05:AB21: A9 80     LDA #$80
bra_AB23:   ; A = 00
C - - - - - 0x016B33 05:AB23: 8D 22 04  STA ram_0422_flag
bra_AB26_RTS:
C - - - - - 0x016B36 05:AB26: 60        RTS



sub_AB27:
C - - - - - 0x016B37 05:AB27: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016B3A 05:AB2A: 29 20     AND #$20
C - - - - - 0x016B3C 05:AB2C: F0 07     BEQ bra_AB35
C - - - - - 0x016B3E 05:AB2E: A9 40     LDA #$40
C - - - - - 0x016B40 05:AB30: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x016B43 05:AB33: D0 0C     BNE bra_AB41    ; jmp
bra_AB35:
C - - - - - 0x016B45 05:AB35: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x016B48 05:AB38: C9 41     CMP #$41
C - - - - - 0x016B4A 05:AB3A: 90 05     BCC bra_AB41
C - - - - - 0x016B4C 05:AB3C: A9 40     LDA #$40
C - - - - - 0x016B4E 05:AB3E: 8D 15 04  STA ram_0415_player_counter
bra_AB41:
C - - - - - 0x016B51 05:AB41: 0A        ASL
C - - - - - 0x016B52 05:AB42: AA        TAX
C - - - - - 0x016B53 05:AB43: BD 8A AB  LDA tbl_AB8A_gravity,X
C - - - - - 0x016B56 05:AB46: 8D 12 04  STA ram_spd_Y_fr_player
C - - - - - 0x016B59 05:AB49: BD 8B AB  LDA tbl_AB8A_gravity + $01,X
C - - - - - 0x016B5C 05:AB4C: 8D 13 04  STA ram_spd_Y_lo_player
C - - - - - 0x016B5F 05:AB4F: 10 04     BPL bra_AB55
C - - - - - 0x016B61 05:AB51: A9 FF     LDA #$FF    ; gaining height
C - - - - - 0x016B63 05:AB53: D0 02     BNE bra_AB57    ; jmp
bra_AB55:
C - - - - - 0x016B65 05:AB55: A9 00     LDA #$00    ; falling
bra_AB57:
C - - - - - 0x016B67 05:AB57: 8D 14 04  STA ram_spd_Y_hi_player
C - - - - - 0x016B6A 05:AB5A: A5 36     LDA ram_buttons
C - - - - - 0x016B6C 05:AB5C: 29 80     AND #con_btn_A
C - - - - - 0x016B6E 05:AB5E: D0 23     BNE bra_AB83
C - - - - - 0x016B70 05:AB60: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016B73 05:AB63: 29 80     AND #con_041B_flag_release_B
C - - - - - 0x016B75 05:AB65: D0 1C     BNE bra_AB83
C - - - - - 0x016B77 05:AB67: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016B7A 05:AB6A: 09 80     ORA #con_041B_flag_release_B
C - - - - - 0x016B7C 05:AB6C: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016B7F 05:AB6F: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x016B82 05:AB72: C9 13     CMP #$13
C - - - - - 0x016B84 05:AB74: B0 0D     BCS bra_AB83
C - - - - - 0x016B86 05:AB76: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016B89 05:AB79: 09 01     ORA #con_041B_flag_01
C - - - - - 0x016B8B 05:AB7B: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016B8E 05:AB7E: A9 13     LDA #$13
C - - - - - 0x016B90 05:AB80: 8D 15 04  STA ram_0415_player_counter
bra_AB83:
C - - - - - 0x016B93 05:AB83: EE 15 04  INC ram_0415_player_counter
C - - - - - 0x016B96 05:AB86: EE 1A 04  INC ram_player_jump_timer
C - - - - - 0x016B99 05:AB89: 60        RTS



tbl_AB8A_gravity:
- D 1 - - - 0x016B9A 05:AB8A: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016B9C 05:AB8C: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016B9E 05:AB8E: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BA0 05:AB90: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BA2 05:AB92: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BA4 05:AB94: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BA6 05:AB96: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BA8 05:AB98: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BAA 05:AB9A: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BAC 05:AB9C: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BAE 05:AB9E: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BB0 05:ABA0: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BB2 05:ABA2: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BB4 05:ABA4: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BB6 05:ABA6: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BB8 05:ABA8: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BBA 05:ABAA: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BBC 05:ABAC: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BBE 05:ABAE: 80 FC     .word $FC80 ; 
- D 1 - - - 0x016BC0 05:ABB0: 00 FD     .word $FD00 ; 
- D 1 - - - 0x016BC2 05:ABB2: 00 FD     .word $FD00 ; 
- D 1 - - - 0x016BC4 05:ABB4: 00 FD     .word $FD00 ; 
- D 1 - - - 0x016BC6 05:ABB6: 40 FD     .word $FD40 ; 
- D 1 - - - 0x016BC8 05:ABB8: 80 FD     .word $FD80 ; 
- D 1 - - - 0x016BCA 05:ABBA: 80 FD     .word $FD80 ; 
- D 1 - - - 0x016BCC 05:ABBC: C0 FD     .word $FDC0 ; 
- D 1 - - - 0x016BCE 05:ABBE: 00 FE     .word $FE00 ; 
- D 1 - - - 0x016BD0 05:ABC0: 00 FE     .word $FE00 ; 
- D 1 - - - 0x016BD2 05:ABC2: 40 FE     .word $FE40 ; 
- D 1 - - - 0x016BD4 05:ABC4: 80 FE     .word $FE80 ; 
- D 1 - - - 0x016BD6 05:ABC6: C0 FE     .word $FEC0 ; 
- D 1 - - - 0x016BD8 05:ABC8: C0 FE     .word $FEC0 ; 
- D 1 - - - 0x016BDA 05:ABCA: 00 00     .word $0000 ; 
- D 1 - - - 0x016BDC 05:ABCC: 40 01     .word $0140 ; 
- D 1 - - - 0x016BDE 05:ABCE: 40 01     .word $0140 ; 
- D 1 - - - 0x016BE0 05:ABD0: 80 01     .word $0180 ; 
- D 1 - - - 0x016BE2 05:ABD2: C0 01     .word $01C0 ; 
- D 1 - - - 0x016BE4 05:ABD4: 00 02     .word $0200 ; 
- D 1 - - - 0x016BE6 05:ABD6: 00 02     .word $0200 ; 
- D 1 - - - 0x016BE8 05:ABD8: 40 02     .word $0240 ; 
- D 1 - - - 0x016BEA 05:ABDA: 80 02     .word $0280 ; 
- D 1 - - - 0x016BEC 05:ABDC: 80 02     .word $0280 ; 
- D 1 - - - 0x016BEE 05:ABDE: C0 02     .word $02C0 ; 
- D 1 - - - 0x016BF0 05:ABE0: 00 03     .word $0300 ; 
- D 1 - - - 0x016BF2 05:ABE2: 00 03     .word $0300 ; 
- D 1 - - - 0x016BF4 05:ABE4: 00 03     .word $0300 ; 
- D 1 - - - 0x016BF6 05:ABE6: 80 03     .word $0380 ; 
- D 1 - - - 0x016BF8 05:ABE8: 80 03     .word $0380 ; 
- D 1 - - - 0x016BFA 05:ABEA: 80 03     .word $0380 ; 
- D 1 - - - 0x016BFC 05:ABEC: 80 03     .word $0380 ; 
- D 1 - - - 0x016BFE 05:ABEE: 80 03     .word $0380 ; 
- D 1 - - - 0x016C00 05:ABF0: 80 03     .word $0380 ; 
- D 1 - - - 0x016C02 05:ABF2: 80 03     .word $0380 ; 
- D 1 - - - 0x016C04 05:ABF4: 80 03     .word $0380 ; 
- D 1 - - - 0x016C06 05:ABF6: 80 03     .word $0380 ; 
- D 1 - - - 0x016C08 05:ABF8: 80 03     .word $0380 ; 
- D 1 - - - 0x016C0A 05:ABFA: 80 03     .word $0380 ; 
- D 1 - - - 0x016C0C 05:ABFC: 80 03     .word $0380 ; 
- D 1 - - - 0x016C0E 05:ABFE: 80 03     .word $0380 ; 
- D 1 - - - 0x016C10 05:AC00: 80 03     .word $0380 ; 
- D 1 - - - 0x016C12 05:AC02: 80 03     .word $0380 ; 
- D 1 - - - 0x016C14 05:AC04: 80 03     .word $0380 ; 
- D 1 - - - 0x016C16 05:AC06: 80 03     .word $0380 ; 
- D 1 - - - 0x016C18 05:AC08: 80 03     .word $0380 ; 
- D 1 - - - 0x016C1A 05:AC0A: 80 03     .word $0380 ; 



sub_AC0C:
C - - - - - 0x016C1C 05:AC0C: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016C1F 05:AC0F: 29 01     AND #con_041B_flag_01
C - - - - - 0x016C21 05:AC11: D0 55     BNE bra_AC68_RTS
C - - - - - 0x016C23 05:AC13: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x016C26 05:AC16: C9 20     CMP #$20
C - - - - - 0x016C28 05:AC18: B0 25     BCS bra_AC3F
C - - - - - 0x016C2A 05:AC1A: AD 1A 04  LDA ram_player_jump_timer
C - - - - - 0x016C2D 05:AC1D: C9 14     CMP #$14
C - - - - - 0x016C2F 05:AC1F: 90 47     BCC bra_AC68_RTS
C - - - - - 0x016C31 05:AC21: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016C34 05:AC24: 29 40     AND #con_041B_flag_somersault
C - - - - - 0x016C36 05:AC26: D0 41     BNE bra_AC69    ; if somersault
; if not somersault
C - - - - - 0x016C38 05:AC28: A9 10     LDA #con_sfx_somersault
C - - - - - 0x016C3A 05:AC2A: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x016C3C 05:AC2C: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x016C3F 05:AC2F: A9 40     LDA #con_041B_flag_somersault
C - - - - - 0x016C41 05:AC31: 0D 1B 04  ORA ram_041B_player_flags
C - - - - - 0x016C44 05:AC34: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016C47 05:AC37: A9 03     LDA #con_00AB_03
C - - - - - 0x016C49 05:AC39: 85 AB     STA ram_00AB_handler
C - - - - - 0x016C4B 05:AC3B: A9 0F     LDA #con_040E_plr_state_capt_somersault
C - - - - - 0x016C4D 05:AC3D: D0 23     BNE bra_AC62    ; jmp
bra_AC3F:
C - - - - - 0x016C4F 05:AC3F: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016C52 05:AC42: 29 40     AND #con_041B_flag_somersault
C - - - - - 0x016C54 05:AC44: F0 22     BEQ bra_AC68_RTS    ; if not somersault
; if somersault
C - - - - - 0x016C56 05:AC46: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016C59 05:AC49: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016C5B 05:AC4B: D0 1B     BNE bra_AC68_RTS    ; if shield down
; if shield not down
C - - - - - 0x016C5D 05:AC4D: AD 1A 04  LDA ram_player_jump_timer
C - - - - - 0x016C60 05:AC50: C9 30     CMP #$30
C - - - - - 0x016C62 05:AC52: 90 15     BCC bra_AC69
; clear some flags
C - - - - - 0x016C64 05:AC54: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016C67 05:AC57: 29 9F     AND #(con_041B_flag_somersault + con_041B_flag_20) ^ $FF
C - - - - - 0x016C69 05:AC59: 8D 1B 04  STA ram_041B_player_flags
; 
C - - - - - 0x016C6C 05:AC5C: A9 00     LDA #con_00AB_00
C - - - - - 0x016C6E 05:AC5E: 85 AB     STA ram_00AB_handler
C - - - - - 0x016C70 05:AC60: A9 02     LDA #con_040E_plr_state_jump
bra_AC62:
C - - - - - 0x016C72 05:AC62: 8D 0E 04  STA ram_player_state_2
; bzk optimize, JMP
C - - - - - 0x016C75 05:AC65: 20 92 AE  JSR sub_AE92
bra_AC68_RTS:
C - - - - - 0x016C78 05:AC68: 60        RTS
bra_AC69:
C - - - - - 0x016C79 05:AC69: A5 A4     LDA ram_plr_direction
C - - - - - 0x016C7B 05:AC6B: C5 A5     CMP ram_00A5_t02_plr_dir
C - - - - - 0x016C7D 05:AC6D: F0 F9     BEQ bra_AC68_RTS    ; if same direction
; if direction changed
; save current direction
C - - - - - 0x016C7F 05:AC6F: 85 A5     STA ram_00A5_t02_plr_dir
; 
C - - - - - 0x016C81 05:AC71: A9 0F     LDA #con_040E_plr_state_capt_somersault
C - - - - - 0x016C83 05:AC73: D0 ED     BNE bra_AC62    ; jmp



sub_AC75:
C - - - - - 0x016C85 05:AC75: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016C88 05:AC78: 29 20     AND #con_041B_flag_20
C - - - - - 0x016C8A 05:AC7A: F0 03     BEQ bra_AC7F
C - - - - - 0x016C8C 05:AC7C: 4C 0B AD  JMP loc_AD0B_RTS
bra_AC7F:
C - - - - - 0x016C8F 05:AC7F: A5 36     LDA ram_buttons
C - - - - - 0x016C91 05:AC81: 29 40     AND #con_btn_B
C - - - - - 0x016C93 05:AC83: F0 34     BEQ bra_ACB9
C - - - - - 0x016C95 05:AC85: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x016C97 05:AC87: 29 40     AND #$40
C - - - - - 0x016C99 05:AC89: D0 36     BNE bra_ACC1
C - - - - - 0x016C9B 05:AC8B: A9 01     LDA #con_00AB_01
C - - - - - 0x016C9D 05:AC8D: 85 AB     STA ram_00AB_handler
C - - - - - 0x016C9F 05:AC8F: A9 30     LDA #con_041B_flag_20 + con_041B_flag_useless_release_A
C - - - - - 0x016CA1 05:AC91: 0D 1B 04  ORA ram_041B_player_flags
C - - - - - 0x016CA4 05:AC94: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016CA7 05:AC97: A9 04     LDA #con_040E_plr_state_capt_kick
C - - - - - 0x016CA9 05:AC99: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016CAC 05:AC9C: 20 92 AE  JSR sub_AE92
C - - - - - 0x016CAF 05:AC9F: A9 07     LDA #con_sfx_attack
C - - - - - 0x016CB1 05:ACA1: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x016CB3 05:ACA3: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x016CB6 05:ACA6: A9 01     LDA #$01
C - - - - - 0x016CB8 05:ACA8: 20 73 A6  JSR sub_A673
C - - - - - 0x016CBB 05:ACAB: A9 01     LDA #$01
C - - - - - 0x016CBD 05:ACAD: 85 67     STA ram_0067_t32_table_index
C - - - - - 0x016CBF 05:ACAF: 20 F5 BA  JSR sub_BAF5_melee_damage_to_enemy
C - - - - - 0x016CC2 05:ACB2: A9 0C     LDA #$0C
C - - - - - 0x016CC4 05:ACB4: 8D 19 04  STA ram_0419_t03_player_land_timer
C - - - - - 0x016CC7 05:ACB7: D0 52     BNE bra_AD0B_RTS    ; jmp
bra_ACB9:
C - - - - - 0x016CC9 05:ACB9: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016CCC 05:ACBC: 29 EF     AND #con_041B_flag_useless_release_A ^ $FF
C - - - - - 0x016CCE 05:ACBE: 8D 1B 04  STA ram_041B_player_flags
bra_ACC1:
C - - - - - 0x016CD1 05:ACC1: A5 A8     LDA ram_plr_index
C - - - - - 0x016CD3 05:ACC3: D0 46     BNE bra_AD0B_RTS
C - - - - - 0x016CD5 05:ACC5: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016CD8 05:ACC8: 29 21     AND #con_041B_flag_20 + con_041B_flag_01
C - - - - - 0x016CDA 05:ACCA: D0 3F     BNE bra_AD0B_RTS
C - - - - - 0x016CDC 05:ACCC: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x016CDF 05:ACCF: C9 20     CMP #$20
C - - - - - 0x016CE1 05:ACD1: 90 38     BCC bra_AD0B_RTS
C - - - - - 0x016CE3 05:ACD3: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x016CE5 05:ACD5: BD 0C AD  LDA tbl_AD0C,X
C - - - - - 0x016CE8 05:ACD8: F0 29     BEQ bra_AD03
C - - - - - 0x016CEA 05:ACDA: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016CED 05:ACDD: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016CEF 05:ACDF: D0 2A     BNE bra_AD0B_RTS    ; if shield down
; if shield not down
C - - - - - 0x016CF1 05:ACE1: A5 AB     LDA ram_00AB_handler
C - - - - - 0x016CF3 05:ACE3: C9 02     CMP #con_00AB_02
C - - - - - 0x016CF5 05:ACE5: F0 24     BEQ bra_AD0B_RTS
C - - - - - 0x016CF7 05:ACE7: AD 2F 04  LDA ram_042F_shield_script
C - - - - - 0x016CFA 05:ACEA: D0 1F     BNE bra_AD0B_RTS
C - - - - - 0x016CFC 05:ACEC: A9 08     LDA #con_041B_flag_shield_down
C - - - - - 0x016CFE 05:ACEE: 0D 1B 04  ORA ram_041B_player_flags
C - - - - - 0x016D01 05:ACF1: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x016D04 05:ACF4: A9 02     LDA #con_00AB_02
C - - - - - 0x016D06 05:ACF6: 85 AB     STA ram_00AB_handler
C - - - - - 0x016D08 05:ACF8: A9 13     LDA #con_040E_plr_state_capt_sit_on_shield
C - - - - - 0x016D0A 05:ACFA: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016D0D 05:ACFD: 20 92 AE  JSR sub_AE92
C - - - - - 0x016D10 05:AD00: 4C 0B AD  JMP loc_AD0B_RTS
bra_AD03:
C - - - - - 0x016D13 05:AD03: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016D16 05:AD06: 29 F7     AND #con_041B_flag_shield_down ^ $FF
C - - - - - 0x016D18 05:AD08: 8D 1B 04  STA ram_041B_player_flags
bra_AD0B_RTS:
loc_AD0B_RTS:   ; bzk optimize
C D 1 - - - 0x016D1B 05:AD0B: 60        RTS



tbl_AD0C:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x016D1C 05:AD0C: 00        .byte $00   ; 00 
- - - - - - 0x016D1D 05:AD0D: 00        .byte $00   ; 01 
- D 1 - - - 0x016D1E 05:AD0E: 01        .byte $01   ; 02 
- D 1 - - - 0x016D1F 05:AD0F: 00        .byte $00   ; 03 
- D 1 - - - 0x016D20 05:AD10: 00        .byte $00   ; 04 
- D 1 - - - 0x016D21 05:AD11: 00        .byte $00   ; 05 
- D 1 - - - 0x016D22 05:AD12: 01        .byte $01   ; 06 
- D 1 - - - 0x016D23 05:AD13: 01        .byte $01   ; 07 
- D 1 - - - 0x016D24 05:AD14: 00        .byte $00   ; 08 



sub_AD15:
C - - - - - 0x016D25 05:AD15: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x016D28 05:AD18: C9 21     CMP #$21
C - - - - - 0x016D2A 05:AD1A: B0 03     BCS bra_AD1F
bra_AD1C:
C - - - - - 0x016D2C 05:AD1C: 4C E8 AD  JMP loc_ADE8_RTS
bra_AD1F:
C - - - - - 0x016D2F 05:AD1F: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016D32 05:AD22: 29 30     AND #$20 + $10
C - - - - - 0x016D34 05:AD24: D0 05     BNE bra_AD2B
C - - - - - 0x016D36 05:AD26: AD 1C 04  LDA ram_041C_player_timer
C - - - - - 0x016D39 05:AD29: D0 F1     BNE bra_AD1C
bra_AD2B:
C - - - - - 0x016D3B 05:AD2B: 20 A4 AF  JSR sub_AFA4
C - - - - - 0x016D3E 05:AD2E: A9 00     LDA #$00
C - - - - - 0x016D40 05:AD30: 85 6C     STA ram_006C_t09
C - - - - - 0x016D42 05:AD32: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016D45 05:AD35: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x016D47 05:AD37: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x016D4A 05:AD3A: 85 BA     STA ram_00BA_pos_Y_hi
bra_AD3C_loop:
C - - - - - 0x016D4C 05:AD3C: A5 6C     LDA ram_006C_t09
C - - - - - 0x016D4E 05:AD3E: 0A        ASL
C - - - - - 0x016D4F 05:AD3F: AA        TAX
C - - - - - 0x016D50 05:AD40: BD 9E AF  LDA tbl_AF9E,X
C - - - - - 0x016D53 05:AD43: 18        CLC
C - - - - - 0x016D54 05:AD44: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x016D57 05:AD47: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x016D59 05:AD49: BD 9F AF  LDA tbl_AF9E + $01,X
C - - - - - 0x016D5C 05:AD4C: 6D 05 04  ADC ram_pos_X_hi_player
C - - - - - 0x016D5F 05:AD4F: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x016D61 05:AD51: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x016D64 05:AD54: 20 C1 AF  JSR sub_AFC1_restore_original_scroll
C - - - - - 0x016D67 05:AD57: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016D6A 05:AD5A: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016D6C 05:AD5C: F0 06     BEQ bra_AD64_shield_not_down
; if shield down
C - - - - - 0x016D6E 05:AD5E: A5 BC     LDA ram_00BC
C - - - - - 0x016D70 05:AD60: 29 04     AND #$04
C - - - - - 0x016D72 05:AD62: D0 10     BNE bra_AD74
bra_AD64_shield_not_down:
C - - - - - 0x016D74 05:AD64: A5 BC     LDA ram_00BC
C - - - - - 0x016D76 05:AD66: 29 03     AND #$03
C - - - - - 0x016D78 05:AD68: D0 0A     BNE bra_AD74
C - - - - - 0x016D7A 05:AD6A: E6 6C     INC ram_006C_t09
C - - - - - 0x016D7C 05:AD6C: A5 6C     LDA ram_006C_t09
C - - - - - 0x016D7E 05:AD6E: C9 03     CMP #$03
C - - - - - 0x016D80 05:AD70: 90 CA     BCC bra_AD3C_loop
C - - - - - 0x016D82 05:AD72: B0 74     BCS bra_ADE8_RTS    ; jmp
bra_AD74:
C - - - - - 0x016D84 05:AD74: A9 0A     LDA #con_plr_state_land
C - - - - - 0x016D86 05:AD76: 8D 01 04  STA ram_player_state_1
C - - - - - 0x016D89 05:AD79: A9 00     LDA #con_00AA_flag_00
C - - - - - 0x016D8B 05:AD7B: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x016D8D 05:AD7D: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x016D8F 05:AD7F: 29 0F     AND #$0F
C - - - - - 0x016D91 05:AD81: 49 FF     EOR #$FF
C - - - - - 0x016D93 05:AD83: 85 67     STA ram_0067_t33
C - - - - - 0x016D95 05:AD85: E6 67     INC ram_0067_t33
C - - - - - 0x016D97 05:AD87: A5 67     LDA ram_0067_t33
C - - - - - 0x016D99 05:AD89: 29 0F     AND #$0F
C - - - - - 0x016D9B 05:AD8B: 85 67     STA ram_0067_t34
C - - - - - 0x016D9D 05:AD8D: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016DA0 05:AD90: 38        SEC
C - - - - - 0x016DA1 05:AD91: E5 67     SBC ram_0067_t34
C - - - - - 0x016DA3 05:AD93: 85 68     STA ram_0068_t14
C - - - - - 0x016DA5 05:AD95: 29 0F     AND #$0F
C - - - - - 0x016DA7 05:AD97: F0 09     BEQ bra_ADA2
C - - - - - 0x016DA9 05:AD99: A5 68     LDA ram_0068_t14
C - - - - - 0x016DAB 05:AD9B: 29 F0     AND #$F0
C - - - - - 0x016DAD 05:AD9D: 05 67     ORA ram_0067_t34
C - - - - - 0x016DAF 05:AD9F: 8D 07 04  STA ram_pos_Y_lo_player
bra_ADA2:
C - - - - - 0x016DB2 05:ADA2: 20 67 A6  JSR sub_A667_clear_player_speed_Y
C - - - - - 0x016DB5 05:ADA5: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016DB8 05:ADA8: 29 5F     AND #($80 + $20) ^ $FF
C - - - - - 0x016DBA 05:ADAA: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x016DBD 05:ADAD: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016DC0 05:ADB0: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016DC2 05:ADB2: D0 08     BNE bra_ADBC_shield_down
; if shield not down
C - - - - - 0x016DC4 05:ADB4: A9 0A     LDA #con_040E_plr_state_land
C - - - - - 0x016DC6 05:ADB6: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016DC9 05:ADB9: 20 92 AE  JSR sub_AE92
bra_ADBC_shield_down:
C - - - - - 0x016DCC 05:ADBC: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x016DCE 05:ADBE: F0 04     BEQ bra_ADC4_not_swimming
; if swimming
C - - - - - 0x016DD0 05:ADC0: A9 0C     LDA #$0C
C - - - - - 0x016DD2 05:ADC2: D0 1E     BNE bra_ADE2    ; jmp
bra_ADC4_not_swimming:
C - - - - - 0x016DD4 05:ADC4: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016DD7 05:ADC7: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016DD9 05:ADC9: D0 04     BNE bra_ADCF_shield_down
; if shield not down
C - - - - - 0x016DDB 05:ADCB: A9 0A     LDA #con_sfx_land_on_ground
C - - - - - 0x016DDD 05:ADCD: D0 0C     BNE bra_ADDB_play_sfx    ; jmp
bra_ADCF_shield_down:
C - - - - - 0x016DDF 05:ADCF: A5 BC     LDA ram_00BC
C - - - - - 0x016DE1 05:ADD1: 29 04     AND #$04
C - - - - - 0x016DE3 05:ADD3: D0 04     BNE bra_ADD9
C - - - - - 0x016DE5 05:ADD5: A9 04     LDA #con_sfx_shield_bounce
C - - - - - 0x016DE7 05:ADD7: D0 02     BNE bra_ADDB_play_sfx    ; jmp
bra_ADD9:
C - - - - - 0x016DE9 05:ADD9: A9 0F     LDA #con_sfx_water_splash
bra_ADDB_play_sfx:
C - - - - - 0x016DEB 05:ADDB: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x016DED 05:ADDD: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x016DF0 05:ADE0: A9 04     LDA #$04
bra_ADE2:
C - - - - - 0x016DF2 05:ADE2: 8D 19 04  STA ram_0419_t03_player_land_timer
; bzk optimize, JMP
C - - - - - 0x016DF5 05:ADE5: 20 5B A6  JSR sub_A65B_clear_player_speed_X
bra_ADE8_RTS:
loc_ADE8_RTS:   ; bzk optimize
C D 1 - - - 0x016DF8 05:ADE8: 60        RTS



sub_ADE9:
C - - - - - 0x016DF9 05:ADE9: A5 1B     LDA ram_001B_player_angle
C - - - - - 0x016DFB 05:ADEB: C9 03     CMP #$03
C - - - - - 0x016DFD 05:ADED: 90 15     BCC bra_AE04
C - - - - - 0x016DFF 05:ADEF: A6 A4     LDX ram_plr_direction
C - - - - - 0x016E01 05:ADF1: BD 7C A2  LDA tbl_A27C_spd_X_hi,X
C - - - - - 0x016E04 05:ADF4: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x016E07 05:ADF7: BD 7E A2  LDA tbl_A27E_spd_X_lo,X
C - - - - - 0x016E0A 05:ADFA: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x016E0D 05:ADFD: BD 80 A2  LDA tbl_A280_spd_X_fr,X
C - - - - - 0x016E10 05:AE00: 8D 0F 04  STA ram_spd_X_fr_player
C - - - - - 0x016E13 05:AE03: 60        RTS
bra_AE04:
; bzk optimize, JMP
C - - - - - 0x016E14 05:AE04: 20 5B A6  JSR sub_A65B_clear_player_speed_X
C - - - - - 0x016E17 05:AE07: 60        RTS



sub_AE08:
C - - - - - 0x016E18 05:AE08: A5 AB     LDA ram_00AB_handler
C - - - - - 0x016E1A 05:AE0A: 0A        ASL
C - - - - - 0x016E1B 05:AE0B: AA        TAX
C - - - - - 0x016E1C 05:AE0C: BD 19 AE  LDA tbl_AE19,X
C - - - - - 0x016E1F 05:AE0F: 85 5B     STA ram_005B_t58_jmp
C - - - - - 0x016E21 05:AE11: BD 1A AE  LDA tbl_AE19 + $01,X
C - - - - - 0x016E24 05:AE14: 85 5C     STA ram_005B_t58_jmp + $01
C - - - - - 0x016E26 05:AE16: 6C 5B 00  JMP (ram_005B_t58_jmp)



tbl_AE19:
- D 1 - - - 0x016E29 05:AE19: 21 AE     .word ofs_027_AE21_00
- D 1 - - - 0x016E2B 05:AE1B: 39 AE     .word ofs_027_AE39_01
- D 1 - - - 0x016E2D 05:AE1D: 62 AE     .word ofs_027_AE62_02
- D 1 - - - 0x016E2F 05:AE1F: 91 AE     .word ofs_027_AE91_03_RTS



ofs_027_AE21_00:
; con_00AB_00
C - - J - - 0x016E31 05:AE21: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x016E34 05:AE24: 29 C0     AND #$40 + $80
C - - - - - 0x016E36 05:AE26: D0 10     BNE bra_AE38_RTS
C - - - - - 0x016E38 05:AE28: A5 A4     LDA ram_plr_direction
C - - - - - 0x016E3A 05:AE2A: C5 A5     CMP ram_00A5_t02_plr_dir
C - - - - - 0x016E3C 05:AE2C: F0 0A     BEQ bra_AE38_RTS    ; if same direction
; if direction changed
; save current direction
C - - - - - 0x016E3E 05:AE2E: 85 A5     STA ram_00A5_t02_plr_dir
; 
C - - - - - 0x016E40 05:AE30: A9 02     LDA #con_040E_plr_state_jump
C - - - - - 0x016E42 05:AE32: 8D 0E 04  STA ram_player_state_2
; bzk optimize, JMP
C - - - - - 0x016E45 05:AE35: 20 92 AE  JSR sub_AE92
bra_AE38_RTS:
C - - - - - 0x016E48 05:AE38: 60        RTS



ofs_027_AE39_01:
; con_00AB_01
C - - J - - 0x016E49 05:AE39: CE 19 04  DEC ram_0419_t03_player_land_timer
C - - - - - 0x016E4C 05:AE3C: D0 23     BNE bra_AE61_RTS
C - - - - - 0x016E4E 05:AE3E: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016E51 05:AE41: 29 40     AND #con_041B_flag_somersault
C - - - - - 0x016E53 05:AE43: F0 08     BEQ bra_AE4D_not_somersault
; if somersault
C - - - - - 0x016E55 05:AE45: A9 03     LDA #con_00AB_03
C - - - - - 0x016E57 05:AE47: 85 AB     STA ram_00AB_handler
C - - - - - 0x016E59 05:AE49: A9 0F     LDA #con_040E_plr_state_capt_somersault
C - - - - - 0x016E5B 05:AE4B: D0 06     BNE bra_AE53    ; jmp
bra_AE4D_not_somersault:
C - - - - - 0x016E5D 05:AE4D: A9 00     LDA #con_00AB_00
C - - - - - 0x016E5F 05:AE4F: 85 AB     STA ram_00AB_handler
C - - - - - 0x016E61 05:AE51: A9 02     LDA #con_040E_plr_state_jump
bra_AE53:
C - - - - - 0x016E63 05:AE53: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x016E66 05:AE56: 20 92 AE  JSR sub_AE92
; clear some flags
C - - - - - 0x016E69 05:AE59: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016E6C 05:AE5C: 29 D7     AND #(con_041B_flag_20 + con_041B_flag_shield_down) ^ $FF
C - - - - - 0x016E6E 05:AE5E: 8D 1B 04  STA ram_041B_player_flags
bra_AE61_RTS:
C - - - - - 0x016E71 05:AE61: 60        RTS



ofs_027_AE62_02:
; con_00AB_02
C - - J - - 0x016E72 05:AE62: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016E75 05:AE65: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016E77 05:AE67: D0 1C     BNE bra_AE85_shield_down
; if shield not down
C - - - - - 0x016E79 05:AE69: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016E7C 05:AE6C: 29 40     AND #con_041B_flag_somersault
C - - - - - 0x016E7E 05:AE6E: F0 08     BEQ bra_AE78_not_somersault
; if somersault
C - - - - - 0x016E80 05:AE70: A9 03     LDA #con_00AB_03
C - - - - - 0x016E82 05:AE72: 85 AB     STA ram_00AB_handler
C - - - - - 0x016E84 05:AE74: A9 0F     LDA #con_040E_plr_state_capt_somersault
C - - - - - 0x016E86 05:AE76: D0 06     BNE bra_AE7E    ; jmp
bra_AE78_not_somersault:
C - - - - - 0x016E88 05:AE78: A9 00     LDA #con_00AB_00
C - - - - - 0x016E8A 05:AE7A: 85 AB     STA ram_00AB_handler
C - - - - - 0x016E8C 05:AE7C: A9 02     LDA #con_040E_plr_state_jump
bra_AE7E:
C - - - - - 0x016E8E 05:AE7E: 8D 0E 04  STA ram_player_state_2
; bzk optimize, JMP
C - - - - - 0x016E91 05:AE81: 20 92 AE  JSR sub_AE92
bra_AE84_RTS:
C - - - - - 0x016E94 05:AE84: 60        RTS
bra_AE85_shield_down:
C - - - - - 0x016E95 05:AE85: A5 A4     LDA ram_plr_direction
C - - - - - 0x016E97 05:AE87: C5 A5     CMP ram_00A5_t02_plr_dir
C - - - - - 0x016E99 05:AE89: F0 F9     BEQ bra_AE84_RTS    ; if same direction
; if direction changed
; save current direction
C - - - - - 0x016E9B 05:AE8B: 85 A5     STA ram_00A5_t02_plr_dir
; 
C - - - - - 0x016E9D 05:AE8D: A9 10     LDA #con_040E_plr_state_capt_on_shield_change_dir
C - - - - - 0x016E9F 05:AE8F: D0 ED     BNE bra_AE7E    ; jmp
ofs_027_AE91_03_RTS:
; con_00AB_03
C - - J - - 0x016EA1 05:AE91: 60        RTS



loc_AE92:
sub_AE92:
C D 1 - - - 0x016EA2 05:AE92: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x016EA4 05:AE94: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x016EA6 05:AE96: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x016EA9 05:AE99: A5 A8     LDA ram_plr_index
C - - - - - 0x016EAB 05:AE9B: 48        PHA
C - - - - - 0x016EAC 05:AE9C: AA        TAX
C - - - - - 0x016EAD 05:AE9D: BD 05 AF  LDA tbl_AF05_chr_banks_sprites,X
C - - - - - 0x016EB0 05:AEA0: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x016EB2 05:AEA2: 68        PLA
C - - - - - 0x016EB3 05:AEA3: 0A        ASL
C - - - - - 0x016EB4 05:AEA4: AA        TAX
C - - - - - 0x016EB5 05:AEA5: BD 00 80  LDA tbl_0x00A010_player_state_spite_data,X
C - - - - - 0x016EB8 05:AEA8: 85 61     STA ram_0061_t04_data
C - - - - - 0x016EBA 05:AEAA: BD 01 80  LDA tbl_0x00A010_player_state_spite_data + $01,X
C - - - - - 0x016EBD 05:AEAD: 85 62     STA ram_0061_t04_data + $01
C - - - - - 0x016EBF 05:AEAF: AD 0E 04  LDA ram_player_state_2
C - - - - - 0x016EC2 05:AEB2: 0A        ASL
C - - - - - 0x016EC3 05:AEB3: A8        TAY
C - - - - - 0x016EC4 05:AEB4: B1 61     LDA (ram_0061_t04_data),Y
C - - - - - 0x016EC6 05:AEB6: 85 5B     STA ram_005B_t1D_data
C - - - - - 0x016EC8 05:AEB8: C8        INY
C - - - - - 0x016EC9 05:AEB9: B1 61     LDA (ram_0061_t04_data),Y
C - - - - - 0x016ECB 05:AEBB: 85 5C     STA ram_005B_t1D_data + $01
C - - - - - 0x016ECD 05:AEBD: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x016ECF 05:AEBF: 0A        ASL
C - - - - - 0x016ED0 05:AEC0: A8        TAY
C - - - - - 0x016ED1 05:AEC1: B1 5B     LDA (ram_005B_t1D_data),Y
C - - - - - 0x016ED3 05:AEC3: 85 5F     STA ram_005F_t05_player_state_data_ptr
C - - - - - 0x016ED5 05:AEC5: C8        INY
C - - - - - 0x016ED6 05:AEC6: B1 5B     LDA (ram_005B_t1D_data),Y
C - - - - - 0x016ED8 05:AEC8: 85 60     STA ram_005F_t05_player_state_data_ptr + $01
C - - - - - 0x016EDA 05:AECA: A5 A4     LDA ram_plr_direction
C - - - - - 0x016EDC 05:AECC: 0A        ASL
C - - - - - 0x016EDD 05:AECD: A8        TAY
C - - - - - 0x016EDE 05:AECE: B1 5F     LDA (ram_005F_t05_player_state_data_ptr),Y
C - - - - - 0x016EE0 05:AED0: 8D 0B 04  STA ram_040B_player_state_data_ptr_lo
C - - - - - 0x016EE3 05:AED3: 85 5D     STA ram_005D_t07_plr_state_data
C - - - - - 0x016EE5 05:AED5: C8        INY
C - - - - - 0x016EE6 05:AED6: B1 5F     LDA (ram_005F_t05_player_state_data_ptr),Y
C - - - - - 0x016EE8 05:AED8: 8D 0C 04  STA ram_040C_player_state_data_ptr_hi
C - - - - - 0x016EEB 05:AEDB: 85 5E     STA ram_005D_t07_plr_state_data + $01
C - - - - - 0x016EED 05:AEDD: A0 00     LDY #$00
C - - - - - 0x016EEF 05:AEDF: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016EF1 05:AEE1: 29 7F     AND #$7F
C - - - - - 0x016EF3 05:AEE3: 85 24     STA ram_chr_bank_spr
C - - - - - 0x016EF5 05:AEE5: C8        INY
C - - - - - 0x016EF6 05:AEE6: C8        INY ; 02
C - - - - - 0x016EF7 05:AEE7: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016EF9 05:AEE9: 8D 0D 04  STA ram_player_animation_timer
C - - - - - 0x016EFC 05:AEEC: C8        INY ; 03
C - - - - - 0x016EFD 05:AEED: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016EFF 05:AEEF: 8D 09 04  STA ram_0409_spr_data_ptr_lo
C - - - - - 0x016F02 05:AEF2: C8        INY ; 04
C - - - - - 0x016F03 05:AEF3: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016F05 05:AEF5: 8D 0A 04  STA ram_040A_spr_data_ptr_hi
C - - - - - 0x016F08 05:AEF8: C8        INY
C - - - - - 0x016F09 05:AEF9: C8        INY
C - - - - - 0x016F0A 05:AEFA: C8        INY ; 07
C - - - - - 0x016F0B 05:AEFB: 20 F1 AA  JSR sub_AAF1_prepare_data_pointers_for_captain
C - - - - - 0x016F0E 05:AEFE: C8        INY ; 08
C - - - - - 0x016F0F 05:AEFF: B1 5D     LDA (ram_005D_t07_plr_state_data),Y
C - - - - - 0x016F11 05:AF01: 8D 1E 04  STA ram_041E_player_flags
C - - - - - 0x016F14 05:AF04: 60        RTS



tbl_AF05_chr_banks_sprites:
- D 1 - - - 0x016F15 05:AF05: 54        .byte con_chr_bank_spr + $54   ; 00 
- D 1 - - - 0x016F16 05:AF06: 55        .byte con_chr_bank_spr + $55   ; 01 



sub_AF07:
C - - - - - 0x016F17 05:AF07: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016F1A 05:AF0A: C9 02     CMP #con_plr_state_jump
C - - - - - 0x016F1C 05:AF0C: D0 03     BNE bra_AF11
C - - - - - 0x016F1E 05:AF0E: 4C 93 AF  JMP loc_AF93_RTS
bra_AF11:
C - - - - - 0x016F21 05:AF11: A5 A8     LDA ram_plr_index
C - - - - - 0x016F23 05:AF13: D0 20     BNE bra_AF35
C - - - - - 0x016F25 05:AF15: AD F7 05  LDA ram_05F7_scroll_flag
C - - - - - 0x016F28 05:AF18: F0 09     BEQ bra_AF23
C - - - - - 0x016F2A 05:AF1A: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016F2D 05:AF1D: C9 D0     CMP #$D0
C - - - - - 0x016F2F 05:AF1F: 90 14     BCC bra_AF35
C - - - - - 0x016F31 05:AF21: B0 0B     BCS bra_AF2E    ; jmp
bra_AF23:
C - - - - - 0x016F33 05:AF23: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016F36 05:AF26: C9 0C     CMP #con_plr_state_0C
C - - - - - 0x016F38 05:AF28: F0 69     BEQ bra_AF93_RTS
C - - - - - 0x016F3A 05:AF2A: C9 04     CMP #con_plr_state_grab
C - - - - - 0x016F3C 05:AF2C: F0 65     BEQ bra_AF93_RTS
bra_AF2E:
C - - - - - 0x016F3E 05:AF2E: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x016F41 05:AF31: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x016F43 05:AF33: D0 5E     BNE bra_AF93_RTS    ; if shield down
; if shield not down
bra_AF35:
C - - - - - 0x016F45 05:AF35: 20 A4 AF  JSR sub_AFA4
C - - - - - 0x016F48 05:AF38: A9 00     LDA #$00
C - - - - - 0x016F4A 05:AF3A: 85 6C     STA ram_006C_t10
C - - - - - 0x016F4C 05:AF3C: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016F4F 05:AF3F: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x016F51 05:AF41: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x016F54 05:AF44: 85 BA     STA ram_00BA_pos_Y_hi
bra_AF46_loop:
C - - - - - 0x016F56 05:AF46: A5 6C     LDA ram_006C_t10
C - - - - - 0x016F58 05:AF48: 0A        ASL
C - - - - - 0x016F59 05:AF49: AA        TAX
C - - - - - 0x016F5A 05:AF4A: BD 9E AF  LDA tbl_AF9E,X
C - - - - - 0x016F5D 05:AF4D: 18        CLC
C - - - - - 0x016F5E 05:AF4E: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x016F61 05:AF51: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x016F63 05:AF53: BD 9F AF  LDA tbl_AF9E + $01,X
C - - - - - 0x016F66 05:AF56: 6D 05 04  ADC ram_pos_X_hi_player
C - - - - - 0x016F69 05:AF59: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x016F6B 05:AF5B: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x016F6E 05:AF5E: 20 C1 AF  JSR sub_AFC1_restore_original_scroll
C - - - - - 0x016F71 05:AF61: A5 BC     LDA ram_00BC
C - - - - - 0x016F73 05:AF63: 48        PHA
C - - - - - 0x016F74 05:AF64: 05 AF     ORA ram_00AF_flag
C - - - - - 0x016F76 05:AF66: 85 AF     STA ram_00AF_flag
C - - - - - 0x016F78 05:AF68: 68        PLA
C - - - - - 0x016F79 05:AF69: 29 03     AND #$03
C - - - - - 0x016F7B 05:AF6B: D0 27     BNE bra_AF94
C - - - - - 0x016F7D 05:AF6D: E6 6C     INC ram_006C_t10
C - - - - - 0x016F7F 05:AF6F: A5 6C     LDA ram_006C_t10
C - - - - - 0x016F81 05:AF71: C9 03     CMP #$03
C - - - - - 0x016F83 05:AF73: 90 D1     BCC bra_AF46_loop
C - - - - - 0x016F85 05:AF75: AD 01 04  LDA ram_player_state_1
C - - - - - 0x016F88 05:AF78: C9 04     CMP #con_plr_state_grab
C - - - - - 0x016F8A 05:AF7A: F0 17     BEQ bra_AF93_RTS
C - - - - - 0x016F8C 05:AF7C: A9 02     LDA #con_plr_state_jump
C - - - - - 0x016F8E 05:AF7E: 8D 01 04  STA ram_player_state_1
C - - - - - 0x016F91 05:AF81: A9 20     LDA #$20
C - - - - - 0x016F93 05:AF83: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x016F96 05:AF86: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x016F98 05:AF88: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x016F9A 05:AF8A: A9 00     LDA #con_00AB_00
C - - - - - 0x016F9C 05:AF8C: 85 AB     STA ram_00AB_handler
C - - - - - 0x016F9E 05:AF8E: A9 01     LDA #con_041B_flag_01
C - - - - - 0x016FA0 05:AF90: 8D 1B 04  STA ram_041B_player_flags
bra_AF93_RTS:
loc_AF93_RTS:   ; bzk optimize
C D 1 - - - 0x016FA3 05:AF93: 60        RTS
bra_AF94:
C - - - - - 0x016FA4 05:AF94: 20 67 A6  JSR sub_A667_clear_player_speed_Y
C - - - - - 0x016FA7 05:AF97: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x016FA9 05:AF99: 29 02     AND #con_00AA_flag_duck_attack
C - - - - - 0x016FAB 05:AF9B: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x016FAD 05:AF9D: 60        RTS



tbl_AF9E:
- D 1 - - - 0x016FAE 05:AF9E: 00 00     .word $0000 ; 00 
- D 1 - - - 0x016FB0 05:AFA0: FC FF     .word $FFFC ; 01 
- D 1 - - - 0x016FB2 05:AFA2: 03 00     .word $0003 ; 02 



sub_AFA4:
C - - - - - 0x016FB4 05:AFA4: AD F7 05  LDA ram_05F7_scroll_flag
C - - - - - 0x016FB7 05:AFA7: F0 17     BEQ bra_AFC0_RTS
C - - - - - 0x016FB9 05:AFA9: A5 3F     LDA ram_scroll_Y_hi
C - - - - - 0x016FBB 05:AFAB: 8D F8 05  STA ram_05F8_t02_save_scroll_Y_hi
C - - - - - 0x016FBE 05:AFAE: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x016FC0 05:AFB0: 8D F9 05  STA ram_05F9_t02_save_scroll_Y_lo
C - - - - - 0x016FC3 05:AFB3: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016FC6 05:AFB6: C9 D8     CMP #$D8
C - - - - - 0x016FC8 05:AFB8: 90 06     BCC bra_AFC0_RTS
C - - - - - 0x016FCA 05:AFBA: A9 00     LDA #$00
C - - - - - 0x016FCC 05:AFBC: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x016FCE 05:AFBE: 85 40     STA ram_scroll_Y_lo
bra_AFC0_RTS:
C - - - - - 0x016FD0 05:AFC0: 60        RTS



sub_AFC1_restore_original_scroll:
C - - - - - 0x016FD1 05:AFC1: AD F7 05  LDA ram_05F7_scroll_flag
C - - - - - 0x016FD4 05:AFC4: F0 0A     BEQ bra_AFD0_RTS
C - - - - - 0x016FD6 05:AFC6: AD F8 05  LDA ram_05F8_t02_save_scroll_Y_hi
C - - - - - 0x016FD9 05:AFC9: 85 3F     STA ram_scroll_Y_hi
C - - - - - 0x016FDB 05:AFCB: AD F9 05  LDA ram_05F9_t02_save_scroll_Y_lo
C - - - - - 0x016FDE 05:AFCE: 85 40     STA ram_scroll_Y_lo
bra_AFD0_RTS:
C - - - - - 0x016FE0 05:AFD0: 60        RTS



sub_AFD1:
C - - - - - 0x016FE1 05:AFD1: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x016FE4 05:AFD4: C9 21     CMP #$21
C - - - - - 0x016FE6 05:AFD6: B0 40     BCS bra_B018_RTS
C - - - - - 0x016FE8 05:AFD8: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016FEB 05:AFDB: C9 28     CMP #$28
C - - - - - 0x016FED 05:AFDD: 90 3A     BCC bra_B019
C - - - - - 0x016FEF 05:AFDF: A9 00     LDA #$00
C - - - - - 0x016FF1 05:AFE1: 85 6C     STA ram_006C_t14
C - - - - - 0x016FF3 05:AFE3: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x016FF6 05:AFE6: 38        SEC
C - - - - - 0x016FF7 05:AFE7: E9 20     SBC #< $0020
C - - - - - 0x016FF9 05:AFE9: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x016FFB 05:AFEB: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x016FFE 05:AFEE: E9 00     SBC #> $0020
C - - - - - 0x017000 05:AFF0: 85 BA     STA ram_00BA_pos_Y_hi
bra_AFF2_loop:
C - - - - - 0x017002 05:AFF2: A5 6C     LDA ram_006C_t14
C - - - - - 0x017004 05:AFF4: 0A        ASL
C - - - - - 0x017005 05:AFF5: AA        TAX
C - - - - - 0x017006 05:AFF6: BD 9E AF  LDA tbl_AF9E,X
C - - - - - 0x017009 05:AFF9: 18        CLC
C - - - - - 0x01700A 05:AFFA: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x01700D 05:AFFD: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x01700F 05:AFFF: BD 9F AF  LDA tbl_AF9E + $01,X
C - - - - - 0x017012 05:B002: 6D 05 04  ADC ram_pos_X_hi_player
C - - - - - 0x017015 05:B005: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x017017 05:B007: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x01701A 05:B00A: A5 BC     LDA ram_00BC
C - - - - - 0x01701C 05:B00C: 29 01     AND #$01
C - - - - - 0x01701E 05:B00E: D0 09     BNE bra_B019
C - - - - - 0x017020 05:B010: E6 6C     INC ram_006C_t14
C - - - - - 0x017022 05:B012: A5 6C     LDA ram_006C_t14
C - - - - - 0x017024 05:B014: C9 03     CMP #$03
C - - - - - 0x017026 05:B016: 90 DA     BCC bra_AFF2_loop
bra_B018_RTS:
C - - - - - 0x017028 05:B018: 60        RTS
bra_B019:
C - - - - - 0x017029 05:B019: A9 20     LDA #$20
C - - - - - 0x01702B 05:B01B: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x01702E 05:B01E: 20 67 A6  JSR sub_A667_clear_player_speed_Y
C - - - - - 0x017031 05:B021: A9 00     LDA #$00
C - - - - - 0x017033 05:B023: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x017036 05:B026: 29 40     AND #con_041B_flag_somersault
C - - - - - 0x017038 05:B028: D0 EE     BNE bra_B018_RTS    ; if somersault
; if not somersault
; bzk optimize, ORA con_041B_flag + STA
C - - - - - 0x01703A 05:B02A: A9 01     LDA #con_041B_flag_01
C - - - - - 0x01703C 05:B02C: 0D 1B 04  ORA ram_041B_player_flags
C - - - - - 0x01703F 05:B02F: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x017042 05:B032: 60        RTS



sub_B033:
C - - - - - 0x017043 05:B033: A9 00     LDA #$00
; bzk optimize, useless STAs
C - - - - - 0x017045 05:B035: 85 47     STA ram_0047_tFF_useless
C - - - - - 0x017047 05:B037: 85 48     STA ram_0048_tFD_useless
C - - - - - 0x017049 05:B039: 85 45     STA ram_0045_tFE_useless
C - - - - - 0x01704B 05:B03B: 85 46     STA ram_0046_tFF_useless
; 
                                       ;LDA #con_004B_00
C - - - - - 0x01704D 05:B03D: 85 4B     STA ram_004B_script
                                       ;LDA #$00
C - - - - - 0x01704F 05:B03F: 85 67     STA ram_0067_t02_combined_scroll_direction
C - - - - - 0x017051 05:B041: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x017054 05:B044: 0D 0F 04  ORA ram_spd_X_fr_player
C - - - - - 0x017057 05:B047: 0D 11 04  ORA ram_spd_X_hi_player
C - - - - - 0x01705A 05:B04A: F0 74     BEQ bra_B0C0_not_moving_horisontally
; if moving by X axis
C - - - - - 0x01705C 05:B04C: AD 11 04  LDA ram_spd_X_hi_player
C - - - - - 0x01705F 05:B04F: 30 28     BMI bra_B079_moving_left
; if moving right
C - - - - - 0x017061 05:B051: A5 96     LDA ram_0096_t04
C - - - - - 0x017063 05:B053: 29 01     AND #$01
C - - - - - 0x017065 05:B055: D0 19     BNE bra_B070
C - - - - - 0x017067 05:B057: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01706A 05:B05A: C9 90     CMP #$90
C - - - - - 0x01706C 05:B05C: 90 46     BCC bra_B0A4
C - - - - - 0x01706E 05:B05E: AD 0F 04  LDA ram_spd_X_fr_player
C - - - - - 0x017071 05:B061: 85 48     STA ram_0048_t02_scroll_X_fr
C - - - - - 0x017073 05:B063: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x017076 05:B066: 85 47     STA ram_0047_t01_scroll_X_lo
C - - - - - 0x017078 05:B068: A9 01     LDA #$01
C - - - - - 0x01707A 05:B06A: 85 67     STA ram_0067_t02_combined_scroll_direction
; set scroll right
                                       ;LDA #$01
C - - - - - 0x01707C 05:B06C: 85 94     STA ram_0094_scroll_X_direction
; 
C - - - - - 0x01707E 05:B06E: D0 31     BNE bra_B0A1    ; jmp
bra_B070:
C - - - - - 0x017080 05:B070: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x017083 05:B073: C9 E8     CMP #$E8
C - - - - - 0x017085 05:B075: B0 2A     BCS bra_B0A1
C - - - - - 0x017087 05:B077: 90 2B     BCC bra_B0A4    ; jmp
bra_B079_moving_left:
C - - - - - 0x017089 05:B079: A5 96     LDA ram_0096_t04
C - - - - - 0x01708B 05:B07B: 29 02     AND #$02
C - - - - - 0x01708D 05:B07D: D0 1B     BNE bra_B09A
C - - - - - 0x01708F 05:B07F: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x017092 05:B082: C9 60     CMP #$60
C - - - - - 0x017094 05:B084: B0 1E     BCS bra_B0A4
C - - - - - 0x017096 05:B086: AD 0F 04  LDA ram_spd_X_fr_player
C - - - - - 0x017099 05:B089: 85 48     STA ram_0048_t01_scroll_X_fr
C - - - - - 0x01709B 05:B08B: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x01709E 05:B08E: 85 47     STA ram_0047_t02_scroll_X_lo
; set scroll left
C - - - - - 0x0170A0 05:B090: A9 02     LDA #$02
C - - - - - 0x0170A2 05:B092: 85 94     STA ram_0094_scroll_X_direction
                                       ;LDA #$02
C - - - - - 0x0170A4 05:B094: 05 67     ORA ram_0067_t02_combined_scroll_direction
C - - - - - 0x0170A6 05:B096: 85 67     STA ram_0067_t02_combined_scroll_direction
C - - - - - 0x0170A8 05:B098: D0 07     BNE bra_B0A1    ; jmp
bra_B09A:
C - - - - - 0x0170AA 05:B09A: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x0170AD 05:B09D: C9 18     CMP #$18
C - - - - - 0x0170AF 05:B09F: B0 03     BCS bra_B0A4
bra_B0A1:
C - - - - - 0x0170B1 05:B0A1: 20 5B A6  JSR sub_A65B_clear_player_speed_X
bra_B0A4:
C - - - - - 0x0170B4 05:B0A4: AD 0F 04  LDA ram_spd_X_fr_player
C - - - - - 0x0170B7 05:B0A7: 18        CLC
C - - - - - 0x0170B8 05:B0A8: 6D 03 04  ADC ram_pos_X_fr_player
C - - - - - 0x0170BB 05:B0AB: 8D 03 04  STA ram_pos_X_fr_player
C - - - - - 0x0170BE 05:B0AE: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x0170C1 05:B0B1: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x0170C4 05:B0B4: 8D 04 04  STA ram_pos_X_lo_player
C - - - - - 0x0170C7 05:B0B7: AD 11 04  LDA ram_spd_X_hi_player
C - - - - - 0x0170CA 05:B0BA: 6D 05 04  ADC ram_pos_X_hi_player
C - - - - - 0x0170CD 05:B0BD: 8D 05 04  STA ram_pos_X_hi_player
bra_B0C0_not_moving_horisontally:
C - - - - - 0x0170D0 05:B0C0: AD 13 04  LDA ram_spd_Y_lo_player
C - - - - - 0x0170D3 05:B0C3: 0D 12 04  ORA ram_spd_Y_fr_player
C - - - - - 0x0170D6 05:B0C6: 0D 14 04  ORA ram_spd_Y_hi_player
C - - - - - 0x0170D9 05:B0C9: F0 47     BEQ bra_B112
; if jumping
C - - - - - 0x0170DB 05:B0CB: AD 14 04  LDA ram_spd_Y_hi_player
C - - - - - 0x0170DE 05:B0CE: 30 4A     BMI bra_B11A_gaining_height
; if falling
C - - - - - 0x0170E0 05:B0D0: A5 96     LDA ram_0096_t04
C - - - - - 0x0170E2 05:B0D2: 29 04     AND #$04
C - - - - - 0x0170E4 05:B0D4: D0 20     BNE bra_B0F6
C - - - - - 0x0170E6 05:B0D6: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0170E9 05:B0D9: C9 C0     CMP #$C0
C - - - - - 0x0170EB 05:B0DB: 90 19     BCC bra_B0F6
C - - - - - 0x0170ED 05:B0DD: AD 12 04  LDA ram_spd_Y_fr_player
C - - - - - 0x0170F0 05:B0E0: 85 46     STA ram_0046_t02_scroll_Y_fr
C - - - - - 0x0170F2 05:B0E2: AD 13 04  LDA ram_spd_Y_lo_player
C - - - - - 0x0170F5 05:B0E5: 85 45     STA ram_0045_t01_scroll_Y_lo
C - - - - - 0x0170F7 05:B0E7: 20 67 A6  JSR sub_A667_clear_player_speed_Y
; set scroll up
C - - - - - 0x0170FA 05:B0EA: A9 01     LDA #$01
C - - - - - 0x0170FC 05:B0EC: 85 92     STA ram_0092_scroll_Y_direction
; 
C - - - - - 0x0170FE 05:B0EE: A9 04     LDA #$04
C - - - - - 0x017100 05:B0F0: 05 67     ORA ram_0067_t02_combined_scroll_direction
C - - - - - 0x017102 05:B0F2: 85 67     STA ram_0067_t02_combined_scroll_direction
C - - - - - 0x017104 05:B0F4: D0 1C     BNE bra_B112    ; jmp
bra_B0F6:
C - - - - - 0x017106 05:B0F6: AD 12 04  LDA ram_spd_Y_fr_player
C - - - - - 0x017109 05:B0F9: 18        CLC
C - - - - - 0x01710A 05:B0FA: 6D 06 04  ADC ram_pos_Y_fr_player
C - - - - - 0x01710D 05:B0FD: 8D 06 04  STA ram_pos_Y_fr_player
C - - - - - 0x017110 05:B100: AD 13 04  LDA ram_spd_Y_lo_player
C - - - - - 0x017113 05:B103: 6D 07 04  ADC ram_pos_Y_lo_player
C - - - - - 0x017116 05:B106: 8D 07 04  STA ram_pos_Y_lo_player
C - - - - - 0x017119 05:B109: AD 14 04  LDA ram_spd_Y_hi_player
C - - - - - 0x01711C 05:B10C: 6D 08 04  ADC ram_pos_Y_hi_player
C - - - - - 0x01711F 05:B10F: 8D 08 04  STA ram_pos_Y_hi_player
bra_B112:
C - - - - - 0x017122 05:B112: A6 67     LDX ram_0067_t02_combined_scroll_direction
C - - - - - 0x017124 05:B114: BD 40 B1  LDA tbl_B140,X
C - - - - - 0x017127 05:B117: 85 4B     STA ram_004B_script
C - - - - - 0x017129 05:B119: 60        RTS
bra_B11A_gaining_height:
C - - - - - 0x01712A 05:B11A: A5 96     LDA ram_0096_t04
C - - - - - 0x01712C 05:B11C: 29 08     AND #$08
C - - - - - 0x01712E 05:B11E: D0 D6     BNE bra_B0F6
C - - - - - 0x017130 05:B120: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x017133 05:B123: C9 60     CMP #$60
C - - - - - 0x017135 05:B125: B0 CF     BCS bra_B0F6
C - - - - - 0x017137 05:B127: AD 12 04  LDA ram_spd_Y_fr_player
C - - - - - 0x01713A 05:B12A: 85 46     STA ram_0046_t01_scroll_Y_fr
C - - - - - 0x01713C 05:B12C: AD 13 04  LDA ram_spd_Y_lo_player
C - - - - - 0x01713F 05:B12F: 85 45     STA ram_0045_t02_scroll_Y_lo
C - - - - - 0x017141 05:B131: 20 67 A6  JSR sub_A667_clear_player_speed_Y
; set scroll down
C - - - - - 0x017144 05:B134: A9 02     LDA #$02
C - - - - - 0x017146 05:B136: 85 92     STA ram_0092_scroll_Y_direction
; 
C - - - - - 0x017148 05:B138: A9 08     LDA #$08
C - - - - - 0x01714A 05:B13A: 05 67     ORA ram_0067_t02_combined_scroll_direction
C - - - - - 0x01714C 05:B13C: 85 67     STA ram_0067_t02_combined_scroll_direction
C - - - - - 0x01714E 05:B13E: D0 D2     BNE bra_B112    ; jmp



tbl_B140:
;     08
;   0A  09
; 02  00  01
;   06  05
;     04
- D 1 - - - 0x017150 05:B140: 00        .byte con_004B_00   ; 00 
- D 1 - - - 0x017151 05:B141: 04        .byte con_004B_04   ; 01 
- D 1 - - - 0x017152 05:B142: 03        .byte con_004B_03   ; 02 
- - - - - - 0x017153 05:B143: 00        .byte con_004B_00   ; 03 unused (left + right)
- D 1 - - - 0x017154 05:B144: 02        .byte con_004B_02   ; 04 
- D 1 - - - 0x017155 05:B145: 06        .byte con_004B_06   ; 05 
- D 1 - - - 0x017156 05:B146: 07        .byte con_004B_07   ; 06 
- - - - - - 0x017157 05:B147: 00        .byte con_004B_00   ; 07 unused (left + right + down)
- D 1 - - - 0x017158 05:B148: 01        .byte con_004B_01   ; 08 
- D 1 - - - 0x017159 05:B149: 05        .byte con_004B_05   ; 09 
- D 1 - - - 0x01715A 05:B14A: 08        .byte con_004B_08   ; 0A 
; bzk garbage, impossible directions
- - - - - - 0x01715B 05:B14B: 00        .byte con_004B_00   ; 0B 
- - - - - - 0x01715C 05:B14C: 00        .byte con_004B_00   ; 0C 
- - - - - - 0x01715D 05:B14D: 00        .byte con_004B_00   ; 0D 
- - - - - - 0x01715E 05:B14E: 00        .byte con_004B_00   ; 0E 
- - - - - - 0x01715F 05:B14F: 00        .byte con_004B_00   ; 0F 



sub_B150:
C - - - - - 0x017160 05:B150: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x017163 05:B153: 38        SEC
C - - - - - 0x017164 05:B154: E9 04     SBC #< $0004
C - - - - - 0x017166 05:B156: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x017168 05:B158: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x01716B 05:B15B: E9 00     SBC #> $0004
C - - - - - 0x01716D 05:B15D: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x01716F 05:B15F: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x017172 05:B162: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x017174 05:B164: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x017177 05:B167: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x017179 05:B169: 20 A4 AF  JSR sub_AFA4
C - - - - - 0x01717C 05:B16C: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x01717F 05:B16F: 20 C1 AF  JSR sub_AFC1_restore_original_scroll
C - - - - - 0x017182 05:B172: A5 BC     LDA ram_00BC
C - - - - - 0x017184 05:B174: 29 04     AND #$04
C - - - - - 0x017186 05:B176: F0 15     BEQ bra_B18D
C - - - - - 0x017188 05:B178: A9 01     LDA #$01
bra_B17A:
C - - - - - 0x01718A 05:B17A: 85 A6     STA ram_plr_swimming_state
C - - - - - 0x01718C 05:B17C: C5 A7     CMP ram_plr_prev_swimming_state
C - - - - - 0x01718E 05:B17E: F0 0C     BEQ bra_B18C_RTS
; save swiming state
C - - - - - 0x017190 05:B180: 85 A7     STA ram_plr_prev_swimming_state
; 
C - - - - - 0x017192 05:B182: 20 92 AE  JSR sub_AE92
C - - - - - 0x017195 05:B185: A9 0F     LDA #con_sfx_water_splash
C - - - - - 0x017197 05:B187: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x017199 05:B189: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_B18C_RTS:
C - - - - - 0x01719C 05:B18C: 60        RTS
bra_B18D:
C - - - - - 0x01719D 05:B18D: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x01719F 05:B18F: F0 FB     BEQ bra_B18C_RTS    ; if not swimming
; if swimming
C - - - - - 0x0171A1 05:B191: A9 00     LDA #$00
C - - - - - 0x0171A3 05:B193: F0 E5     BEQ bra_B17A    ; jmp



sub_B195:
C - - - - - 0x0171A5 05:B195: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0171A8 05:B198: C9 02     CMP #con_plr_state_jump
C - - - - - 0x0171AA 05:B19A: D0 66     BNE bra_B202_RTS
C - - - - - 0x0171AC 05:B19C: C9 04     CMP #con_plr_state_grab
C - - - - - 0x0171AE 05:B19E: F0 62     BEQ bra_B202_RTS
C - - - - - 0x0171B0 05:B1A0: C9 0C     CMP #con_plr_state_0C
C - - - - - 0x0171B2 05:B1A2: F0 5E     BEQ bra_B202_RTS
C - - - - - 0x0171B4 05:B1A4: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x0171B7 05:B1A7: C9 20     CMP #$20
C - - - - - 0x0171B9 05:B1A9: 90 57     BCC bra_B202_RTS
C - - - - - 0x0171BB 05:B1AB: AD 1C 04  LDA ram_041C_player_timer
C - - - - - 0x0171BE 05:B1AE: D0 52     BNE bra_B202_RTS
C - - - - - 0x0171C0 05:B1B0: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0171C3 05:B1B3: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x0171C5 05:B1B5: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x0171C8 05:B1B8: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x0171CA 05:B1BA: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x0171CD 05:B1BD: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x0171CF 05:B1BF: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x0171D2 05:B1C2: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x0171D4 05:B1C4: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x0171D7 05:B1C7: A5 BC     LDA ram_00BC
C - - - - - 0x0171D9 05:B1C9: 29 08     AND #$08
C - - - - - 0x0171DB 05:B1CB: F0 35     BEQ bra_B202_RTS
C - - - - - 0x0171DD 05:B1CD: A5 40     LDA ram_scroll_Y_lo
C - - - - - 0x0171DF 05:B1CF: 29 0F     AND #$0F
C - - - - - 0x0171E1 05:B1D1: 49 FF     EOR #$FF
C - - - - - 0x0171E3 05:B1D3: 85 67     STA ram_0067_t35
C - - - - - 0x0171E5 05:B1D5: E6 67     INC ram_0067_t35
C - - - - - 0x0171E7 05:B1D7: A5 67     LDA ram_0067_t35
C - - - - - 0x0171E9 05:B1D9: 29 0F     AND #$0F
C - - - - - 0x0171EB 05:B1DB: 85 67     STA ram_0067_t36
C - - - - - 0x0171ED 05:B1DD: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x0171F0 05:B1E0: 38        SEC
C - - - - - 0x0171F1 05:B1E1: E5 67     SBC ram_0067_t36
C - - - - - 0x0171F3 05:B1E3: 85 68     STA ram_0068_t15
C - - - - - 0x0171F5 05:B1E5: 29 0F     AND #$0F
C - - - - - 0x0171F7 05:B1E7: F0 09     BEQ bra_B1F2
C - - - - - 0x0171F9 05:B1E9: A5 68     LDA ram_0068_t15
C - - - - - 0x0171FB 05:B1EB: 29 F0     AND #$F0
C - - - - - 0x0171FD 05:B1ED: 05 67     ORA ram_0067_t36
C - - - - - 0x0171FF 05:B1EF: 8D 07 04  STA ram_pos_Y_lo_player
bra_B1F2:
C - - - - - 0x017202 05:B1F2: A9 04     LDA #con_plr_state_grab
C - - - - - 0x017204 05:B1F4: 8D 01 04  STA ram_player_state_1
C - - - - - 0x017207 05:B1F7: A9 11     LDA #con_040E_plr_state_capt_grab_rope
C - - - - - 0x017209 05:B1F9: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01720C 05:B1FC: 20 92 AE  JSR sub_AE92
; bzk optimize, JMP
C - - - - - 0x01720F 05:B1FF: 20 50 A6  JSR sub_A650_clear_player_speed_XY
bra_B202_RTS:
C - - - - - 0x017212 05:B202: 60        RTS



sub_B203:
C - - - - - 0x017213 05:B203: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x017215 05:B205: D0 58     BNE bra_B25F    ; if swimming
; if not swimming
C - - - - - 0x017217 05:B207: A5 36     LDA ram_buttons
C - - - - - 0x017219 05:B209: 29 C0     AND #con_btns_AB
C - - - - - 0x01721B 05:B20B: D0 52     BNE bra_B25F
C - - - - - 0x01721D 05:B20D: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x017220 05:B210: 30 05     BMI bra_B217    ; if con_0416_80
C - - - - - 0x017222 05:B212: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017225 05:B215: D0 48     BNE bra_B25F
; if con_plr_state_idle
bra_B217:
C - - - - - 0x017227 05:B217: A5 36     LDA ram_buttons
C - - - - - 0x017229 05:B219: 4A        LSR
C - - - - - 0x01722A 05:B21A: B0 05     BCS bra_B221    ; if con_btn_Right
C - - - - - 0x01722C 05:B21C: 4A        LSR
C - - - - - 0x01722D 05:B21D: B0 3C     BCS bra_B25B    ; if con_btn_Left
C - - - - - 0x01722F 05:B21F: 90 4F     BCC bra_B270    ; jmp if not con_btns_LR
bra_B221:
C - - - - - 0x017231 05:B221: A5 A4     LDA ram_plr_direction
C - - - - - 0x017233 05:B223: F0 3A     BEQ bra_B25F    ; if left
; if right
bra_B225_left:
C - - - - - 0x017235 05:B225: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x017238 05:B228: F0 3C     BEQ bra_B266    ; if con_0416_00
C - - - - - 0x01723A 05:B22A: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x01723D 05:B22D: 29 02     AND #con_0416_02
C - - - - - 0x01723F 05:B22F: F0 3F     BEQ bra_B270
C - - - - - 0x017241 05:B231: AD 17 04  LDA ram_0417_player_counter
C - - - - - 0x017244 05:B234: C9 04     CMP #$04
C - - - - - 0x017246 05:B236: B0 38     BCS bra_B270
C - - - - - 0x017248 05:B238: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x01724B 05:B23B: 29 01     AND #con_0416_01
C - - - - - 0x01724D 05:B23D: D0 31     BNE bra_B270
C - - - - - 0x01724F 05:B23F: A9 08     LDA #$08
C - - - - - 0x017251 05:B241: 8D 1D 04  STA ram_041D_player_timer
C - - - - - 0x017254 05:B244: A9 20     LDA #$20
C - - - - - 0x017256 05:B246: 8D 18 04  STA ram_0418_player_counter
C - - - - - 0x017259 05:B249: A9 01     LDA #con_0416_01
C - - - - - 0x01725B 05:B24B: 0D 16 04  ORA ram_0416_player_flags
C - - - - - 0x01725E 05:B24E: 8D 16 04  STA ram_0416_player_flags
C - - - - - 0x017261 05:B251: A9 14     LDA #con_sfx_dash
C - - - - - 0x017263 05:B253: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x017265 05:B255: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x017268 05:B258: 4C 70 B2  JMP loc_B270
bra_B25B:
C - - - - - 0x01726B 05:B25B: A5 A4     LDA ram_plr_direction
C - - - - - 0x01726D 05:B25D: F0 C6     BEQ bra_B225_left
; if right
bra_B25F:
C - - - - - 0x01726F 05:B25F: A9 00     LDA #con_0416_00
C - - - - - 0x017271 05:B261: 8D 16 04  STA ram_0416_player_flags
C - - - - - 0x017274 05:B264: F0 07     BEQ bra_B26D    ; jmp
bra_B266:
C - - - - - 0x017276 05:B266: A9 80     LDA #con_0416_80
C - - - - - 0x017278 05:B268: 8D 16 04  STA ram_0416_player_flags
C - - - - - 0x01727B 05:B26B: A9 10     LDA #$10
bra_B26D:
C - - - - - 0x01727D 05:B26D: 8D 17 04  STA ram_0417_player_counter
bra_B270:
loc_B270:
C D 1 - - - 0x017280 05:B270: AD 17 04  LDA ram_0417_player_counter
C - - - - - 0x017283 05:B273: F0 03     BEQ bra_B278_RTS
C - - - - - 0x017285 05:B275: CE 17 04  DEC ram_0417_player_counter
bra_B278_RTS:
C - - - - - 0x017288 05:B278: 60        RTS



sub_B279:
C - - - - - 0x017289 05:B279: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01728C 05:B27C: 18        CLC
C - - - - - 0x01728D 05:B27D: 69 04     ADC #< $0004
C - - - - - 0x01728F 05:B27F: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x017291 05:B281: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x017294 05:B284: 69 00     ADC #> $0004
C - - - - - 0x017296 05:B286: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x017298 05:B288: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01729B 05:B28B: 38        SEC
C - - - - - 0x01729C 05:B28C: E9 0A     SBC #< $000A
C - - - - - 0x01729E 05:B28E: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x0172A0 05:B290: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x0172A3 05:B293: E9 00     SBC #> $000A
C - - - - - 0x0172A5 05:B295: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x0172A7 05:B297: 20 B3 FF  JSR sub_0x01FFC3
C - - - - - 0x0172AA 05:B29A: A5 BD     LDA ram_00BD_flag
; bzk optimize, useless AND (only 00/01 values)
C - - - - - 0x0172AC 05:B29C: 29 01     AND #$01
C - - - - - 0x0172AE 05:B29E: F0 29     BEQ bra_B2C9_RTS
C - - - - - 0x0172B0 05:B2A0: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x0172B3 05:B2A3: 18        CLC
C - - - - - 0x0172B4 05:B2A4: 69 0A     ADC #< $000A
C - - - - - 0x0172B6 05:B2A6: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x0172B8 05:B2A8: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x0172BB 05:B2AB: 69 00     ADC #> $000A
C - - - - - 0x0172BD 05:B2AD: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x0172BF 05:B2AF: 20 B3 FF  JSR sub_0x01FFC3
C - - - - - 0x0172C2 05:B2B2: A5 BD     LDA ram_00BD_flag
; bzk optimize, useless AND (only 00/01 values)
C - - - - - 0x0172C4 05:B2B4: 29 01     AND #$01
C - - - - - 0x0172C6 05:B2B6: F0 11     BEQ bra_B2C9_RTS
C - - - - - 0x0172C8 05:B2B8: A5 42     LDA ram_scroll_X_hi
C - - - - - 0x0172CA 05:B2BA: C9 0C     CMP #$0C
C - - - - - 0x0172CC 05:B2BC: B0 0C     BCS bra_B2CA
C - - - - - 0x0172CE 05:B2BE: A9 80     LDA #con_00DA_80
C - - - - - 0x0172D0 05:B2C0: 85 DA     STA ram_00DA_flags
C - - - - - 0x0172D2 05:B2C2: A9 03     LDA #$03
C - - - - - 0x0172D4 05:B2C4: 85 D9     STA ram_00D9_array_index
; bzk optimize, JMP
C - - - - - 0x0172D6 05:B2C6: 20 0C B9  JSR sub_B90C
bra_B2C9_RTS:
C - - - - - 0x0172D9 05:B2C9: 60        RTS
bra_B2CA:
C - - - - - 0x0172DA 05:B2CA: 20 3E B9  JSR sub_B93E
C - - - - - 0x0172DD 05:B2CD: 8D AD 05  STA ram_05AD
C - - - - - 0x0172E0 05:B2D0: A9 C0     LDA #con_00DA_80 + con_00DA_40
C - - - - - 0x0172E2 05:B2D2: 85 DA     STA ram_00DA_flags
C - - - - - 0x0172E4 05:B2D4: 60        RTS



loc_B2D5_hawk_handler:
C D 1 - - - 0x0172E5 05:B2D5: A9 00     LDA #con_0416_00
C - - - - - 0x0172E7 05:B2D7: 8D 16 04  STA ram_0416_player_flags
                                       ;LDA #$00
C - - - - - 0x0172EA 05:B2DA: 8D 17 04  STA ram_0417_player_counter
C - - - - - 0x0172ED 05:B2DD: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0172F0 05:B2E0: 29 04     AND #$04
C - - - - - 0x0172F2 05:B2E2: D0 2A     BNE bra_B30E
C - - - - - 0x0172F4 05:B2E4: 20 12 B3  JSR sub_B312
C - - - - - 0x0172F7 05:B2E7: A9 00     LDA #$00
C - - - - - 0x0172F9 05:B2E9: 85 AF     STA ram_00AF_flag
C - - - - - 0x0172FB 05:B2EB: 20 50 B1  JSR sub_B150
C - - - - - 0x0172FE 05:B2EE: AD CF 05  LDA ram_05CF_flag_and_obj_index
C - - - - - 0x017301 05:B2F1: 30 03     BMI bra_B2F6
C - - - - - 0x017303 05:B2F3: 20 07 AF  JSR sub_AF07
bra_B2F6:
C - - - - - 0x017306 05:B2F6: 20 83 B9  JSR sub_B983
C - - - - - 0x017309 05:B2F9: 20 E7 B3  JSR sub_B3E7_hawk_state_handler
C - - - - - 0x01730C 05:B2FC: 20 BD B6  JSR sub_B6BD
C - - - - - 0x01730F 05:B2FF: 20 51 BE  JSR sub_BE51
C - - - - - 0x017312 05:B302: 20 92 BB  JSR sub_BB92
C - - - - - 0x017315 05:B305: 20 95 AA  JSR sub_AA95
C - - - - - 0x017318 05:B308: 20 72 A0  JSR sub_A072
C - - - - - 0x01731B 05:B30B: 20 E3 B8  JSR sub_B8E3
bra_B30E:
; bzk optimize, JMP
C - - - - - 0x01731E 05:B30E: 20 91 BE  JSR sub_BE91
C - - - - - 0x017321 05:B311: 60        RTS



sub_B312:
C - - - - - 0x017322 05:B312: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x017324 05:B314: A5 AA     LDA ram_00AA_plr_flags
; bzk optimize, value can be 00-03
C - - - - - 0x017326 05:B316: 29 0F     AND #con_00AA_flag_jump + con_00AA_flag_duck_attack + $0C
C - - - - - 0x017328 05:B318: D0 1B     BNE bra_B335
C - - - - - 0x01732A 05:B31A: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01732D 05:B31D: 29 98     AND #$80 + $10 + $08
C - - - - - 0x01732F 05:B31F: F0 03     BEQ bra_B324
C - - - - - 0x017331 05:B321: 4C DD B3  JMP loc_B3DD_RTS
bra_B324:
C - - - - - 0x017334 05:B324: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017337 05:B327: C9 0A     CMP #con_plr_state_land
C - - - - - 0x017339 05:B329: F0 0A     BEQ bra_B335
C - - - - - 0x01733B 05:B32B: C9 0E     CMP #con_plr_state_throw_shield
C - - - - - 0x01733D 05:B32D: F0 06     BEQ bra_B335
C - - - - - 0x01733F 05:B32F: BD DE B3  LDA tbl_B3DE,X
C - - - - - 0x017342 05:B332: 8D 01 04  STA ram_player_state_1
bra_B335:
C - - - - - 0x017345 05:B335: A5 AA     LDA ram_00AA_plr_flags
; bzk optimize, value can be 00-03
C - - - - - 0x017347 05:B337: 29 0E     AND #con_00AA_flag_jump + con_00AA_flag_duck_attack + $0B
C - - - - - 0x017349 05:B339: D0 09     BNE bra_B344
C - - - - - 0x01734B 05:B33B: BD 80 A1  LDA tbl_A180_direction,X
C - - - - - 0x01734E 05:B33E: C9 FF     CMP #$FF
C - - - - - 0x017350 05:B340: F0 02     BEQ bra_B344    ; skip
C - - - - - 0x017352 05:B342: 85 A4     STA ram_plr_direction
bra_B344:
C - - - - - 0x017354 05:B344: A5 36     LDA ram_buttons
C - - - - - 0x017356 05:B346: 29 80     AND #con_btn_A
C - - - - - 0x017358 05:B348: F0 62     BEQ bra_B3AC
C - - - - - 0x01735A 05:B34A: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x01735C 05:B34C: 29 80     AND #$80
C - - - - - 0x01735E 05:B34E: D0 5C     BNE bra_B3AC
C - - - - - 0x017360 05:B350: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x017362 05:B352: 29 01     AND #con_00AA_flag_jump
C - - - - - 0x017364 05:B354: D0 56     BNE bra_B3AC
C - - - - - 0x017366 05:B356: A9 02     LDA #con_plr_state_jump
C - - - - - 0x017368 05:B358: 8D 01 04  STA ram_player_state_1
C - - - - - 0x01736B 05:B35B: A9 00     LDA #con_plr_state_idle
C - - - - - 0x01736D 05:B35D: 8D 02 04  STA ram_prev_player_state_1
                                       ;LDA #$00
C - - - - - 0x017370 05:B360: 8D 15 04  STA ram_0415_player_counter
                                       ;LDA #con_00AB_00
C - - - - - 0x017373 05:B363: 85 AB     STA ram_00AB_handler
; bzk optimize, useless STA
C - - - - - 0x017375 05:B365: 8D 19 04  STA ram_0419_tFD_useless
; 
C - - - - - 0x017378 05:B368: 8D 1A 04  STA ram_player_jump_timer
C - - - - - 0x01737B 05:B36B: 8D 1B 04  STA ram_041B_player_flags   ; con_041B_flag_00
C - - - - - 0x01737E 05:B36E: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x017381 05:B371: AD CF 05  LDA ram_05CF_flag_and_obj_index
C - - - - - 0x017384 05:B374: 10 10     BPL bra_B386
C - - - - - 0x017386 05:B376: 29 0F     AND #$0F
C - - - - - 0x017388 05:B378: AA        TAX
C - - - - - 0x017389 05:B379: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01738C 05:B37C: 29 DF     AND #$20 ^ $FF
C - - - - - 0x01738E 05:B37E: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x017391 05:B381: A9 00     LDA #$00
C - - - - - 0x017393 05:B383: 8D CF 05  STA ram_05CF_flag_and_obj_index
bra_B386:
C - - - - - 0x017396 05:B386: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x017398 05:B388: D0 17     BNE bra_B3A1_swimming
; if not swimming
C - - - - - 0x01739A 05:B38A: A5 AF     LDA ram_00AF_flag
C - - - - - 0x01739C 05:B38C: 4A        LSR
C - - - - - 0x01739D 05:B38D: B0 17     BCS bra_B3A6
C - - - - - 0x01739F 05:B38F: 4A        LSR
C - - - - - 0x0173A0 05:B390: 90 14     BCC bra_B3A6
C - - - - - 0x0173A2 05:B392: A5 1B     LDA ram_001B_player_angle
C - - - - - 0x0173A4 05:B394: C9 02     CMP #$02
C - - - - - 0x0173A6 05:B396: D0 0E     BNE bra_B3A6
C - - - - - 0x0173A8 05:B398: A9 10     LDA #$10
C - - - - - 0x0173AA 05:B39A: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x0173AD 05:B39D: A9 20     LDA #$20
C - - - - - 0x0173AF 05:B39F: D0 02     BNE bra_B3A3    ; jmp
bra_B3A1_swimming:
C - - - - - 0x0173B1 05:B3A1: A9 09     LDA #$09
bra_B3A3:
C - - - - - 0x0173B3 05:B3A3: 8D 15 04  STA ram_0415_player_counter
bra_B3A6:
C - - - - - 0x0173B6 05:B3A6: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x0173B8 05:B3A8: 05 AA     ORA ram_00AA_plr_flags
C - - - - - 0x0173BA 05:B3AA: 85 AA     STA ram_00AA_plr_flags
bra_B3AC:
C - - - - - 0x0173BC 05:B3AC: A5 36     LDA ram_buttons
C - - - - - 0x0173BE 05:B3AE: 29 40     AND #con_btn_B
C - - - - - 0x0173C0 05:B3B0: F0 2B     BEQ bra_B3DD_RTS
C - - - - - 0x0173C2 05:B3B2: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x0173C4 05:B3B4: D0 27     BNE bra_B3DD_RTS    ; if swimming
; if not swimming
C - - - - - 0x0173C6 05:B3B6: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x0173C8 05:B3B8: 29 40     AND #$40
C - - - - - 0x0173CA 05:B3BA: D0 21     BNE bra_B3DD_RTS
C - - - - - 0x0173CC 05:B3BC: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x0173CE 05:B3BE: 29 03     AND #con_00AA_flag_jump + con_00AA_flag_duck_attack
C - - - - - 0x0173D0 05:B3C0: D0 1B     BNE bra_B3DD_RTS
C - - - - - 0x0173D2 05:B3C2: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x0173D4 05:B3C4: BD 92 A1  LDA tbl_A192,X
C - - - - - 0x0173D7 05:B3C7: 8D 01 04  STA ram_player_state_1
C - - - - - 0x0173DA 05:B3CA: A9 07     LDA #con_sfx_attack
C - - - - - 0x0173DC 05:B3CC: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0173DE 05:B3CE: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0173E1 05:B3D1: A9 0C     LDA #$0C
C - - - - - 0x0173E3 05:B3D3: 85 AD     STA ram_00AD_counter
C - - - - - 0x0173E5 05:B3D5: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x0173E7 05:B3D7: 09 02     ORA #con_00AA_flag_duck_attack
C - - - - - 0x0173E9 05:B3D9: 85 AA     STA ram_00AA_plr_flags
; bzk optimize, useless BNE
C - - - - - 0x0173EB 05:B3DB: D0 00     BNE bra_B3DD_RTS    ; jmp
bra_B3DD_RTS:
loc_B3DD_RTS:   ; bzk optimize
C D 1 - - - 0x0173ED 05:B3DD: 60        RTS



tbl_B3DE:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x0173EE 05:B3DE: 00        .byte con_plr_state_idle   ; 00 
- D 1 - - - 0x0173EF 05:B3DF: 0B        .byte con_plr_state_look_up_hawk   ; 01 
- D 1 - - - 0x0173F0 05:B3E0: 05        .byte con_plr_state_duck   ; 02 
- D 1 - - - 0x0173F1 05:B3E1: 01        .byte con_plr_state_walk   ; 03 
- D 1 - - - 0x0173F2 05:B3E2: 01        .byte con_plr_state_walk   ; 04 
- D 1 - - - 0x0173F3 05:B3E3: 01        .byte con_plr_state_walk   ; 05 
- D 1 - - - 0x0173F4 05:B3E4: 01        .byte con_plr_state_walk   ; 06 
- D 1 - - - 0x0173F5 05:B3E5: 01        .byte con_plr_state_walk   ; 07 
- D 1 - - - 0x0173F6 05:B3E6: 01        .byte con_plr_state_walk   ; 08 



sub_B3E7_hawk_state_handler:
C - - - - - 0x0173F7 05:B3E7: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0173FA 05:B3EA: 0A        ASL
C - - - - - 0x0173FB 05:B3EB: AA        TAX
C - - - - - 0x0173FC 05:B3EC: BD 09 B4  LDA tbl_B409_hawk_state_handlers,X
C - - - - - 0x0173FF 05:B3EF: 85 5B     STA ram_005B_t57_jmp
C - - - - - 0x017401 05:B3F1: BD 0A B4  LDA tbl_B409_hawk_state_handlers + $01,X
C - - - - - 0x017404 05:B3F4: 85 5C     STA ram_005B_t57_jmp + $01
C - - - - - 0x017406 05:B3F6: A9 B3     LDA #> (ofs_B3FF_return - $01)
C - - - - - 0x017408 05:B3F8: 48        PHA
C - - - - - 0x017409 05:B3F9: A9 FE     LDA #< (ofs_B3FF_return - $01)
C - - - - - 0x01740B 05:B3FB: 48        PHA
C - - - - - 0x01740C 05:B3FC: 6C 5B 00  JMP (ram_005B_t57_jmp)



ofs_B3FF_return:
C - - - - - 0x01740F 05:B3FF: 20 5C BA  JSR sub_BA5C
C - - - - - 0x017412 05:B402: 20 A6 BE  JSR sub_BEA6
; bzk optimize, JMP
C - - - - - 0x017415 05:B405: 20 F0 A6  JSR sub_A6F0
ofs_026_hawk_state_B408_04_RTS:
ofs_026_hawk_state_B408_0C_RTS:
ofs_026_hawk_state_B408_0D_RTS:
ofs_026_hawk_state_B408_0E_RTS:
ofs_026_hawk_state_B408_0F_RTS:
C - - - - - 0x017418 05:B408: 60        RTS



tbl_B409_hawk_state_handlers:
- D 1 - - - 0x017419 05:B409: DD A1     .word ofs_026_hawk_state_A1DD_00_idle
- D 1 - - - 0x01741B 05:B40B: 0E A2     .word ofs_026_hawk_state_A20E_01_walk
- D 1 - - - 0x01741D 05:B40D: 29 B4     .word ofs_026_hawk_state_B429_02_jump
- D 1 - - - 0x01741F 05:B40F: 43 B5     .word ofs_026_hawk_state_B543_03_shoot_arrow_while_standing
- - - - - - 0x017421 05:B411: 08 B4     .word ofs_026_hawk_state_B408_04_RTS
- D 1 - - - 0x017423 05:B413: E4 B5     .word ofs_026_hawk_state_B5E4_05_duck
- D 1 - - - 0x017425 05:B415: 06 B6     .word ofs_026_hawk_state_B606_06_shoot_arrow_while_ducking
- D 1 - - - 0x017427 05:B417: 46 A4     .word ofs_026_hawk_state_A446_07
- - - - - - 0x017429 05:B419: 95 A4     .word ofs_026_hawk_state_A495_08   ; unused, undex doesn't exist
- D 1 - - - 0x01742B 05:B41B: AE A4     .word ofs_026_hawk_state_A4AE_09
- D 1 - - - 0x01742D 05:B41D: 74 B6     .word ofs_026_hawk_state_B674_0A_land
- D 1 - - - 0x01742F 05:B41F: 8B B6     .word ofs_026_hawk_state_B68B_0B_look_up
- - - - - - 0x017431 05:B421: 08 B4     .word ofs_026_hawk_state_B408_0C_RTS
- - - - - - 0x017433 05:B423: 08 B4     .word ofs_026_hawk_state_B408_0D_RTS
- - - - - - 0x017435 05:B425: 08 B4     .word ofs_026_hawk_state_B408_0E_RTS
- - - - - - 0x017437 05:B427: 08 B4     .word ofs_026_hawk_state_B408_0F_RTS   ; unused, undex doesn't exist



ofs_026_hawk_state_B429_02_jump:
; con_plr_state_jump
C - - J - - 0x017439 05:B429: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x01743B 05:B42B: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x01743D 05:B42D: A9 00     LDA #$00
C - - - - - 0x01743F 05:B42F: 85 B2     STA ram_00B2_useless_00
C - - - - - 0x017441 05:B431: A5 AB     LDA ram_00AB_handler
C - - - - - 0x017443 05:B433: D0 27     BNE bra_B45C
; if con_00AB_00
C - - - - - 0x017445 05:B435: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017448 05:B438: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x01744B 05:B43B: D0 06     BNE bra_B443
C - - - - - 0x01744D 05:B43D: A5 A4     LDA ram_plr_direction
C - - - - - 0x01744F 05:B43F: C5 A5     CMP ram_00A5_t02_plr_dir
C - - - - - 0x017451 05:B441: F0 19     BEQ bra_B45C    ; if same direction
; if direction changed
bra_B443:
C - - - - - 0x017453 05:B443: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017456 05:B446: 29 20     AND #$20
C - - - - - 0x017458 05:B448: D0 12     BNE bra_B45C
; save current direction
C - - - - - 0x01745A 05:B44A: A5 A4     LDA ram_plr_direction
C - - - - - 0x01745C 05:B44C: 85 A5     STA ram_00A5_t02_plr_dir
; save current state
C - - - - - 0x01745E 05:B44E: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017461 05:B451: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x017464 05:B454: A9 02     LDA #con_040E_plr_state_jump
C - - - - - 0x017466 05:B456: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x017469 05:B459: 20 92 AE  JSR sub_AE92
bra_B45C:
C - - - - - 0x01746C 05:B45C: 20 27 AB  JSR sub_AB27
C - - - - - 0x01746F 05:B45F: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017472 05:B462: 29 20     AND #$20
C - - - - - 0x017474 05:B464: F0 1A     BEQ bra_B480
C - - - - - 0x017476 05:B466: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017479 05:B469: 29 01     AND #$01
C - - - - - 0x01747B 05:B46B: AA        TAX
C - - - - - 0x01747C 05:B46C: BD 93 A4  LDA tbl_A493,X
C - - - - - 0x01747F 05:B46F: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x017482 05:B472: 10 04     BPL bra_B478
C - - - - - 0x017484 05:B474: A9 FF     LDA #$FF    ; move left
C - - - - - 0x017486 05:B476: D0 02     BNE bra_B47A    ; jmp
bra_B478:
C - - - - - 0x017488 05:B478: A9 00     LDA #$00    ; move right
bra_B47A:
C - - - - - 0x01748A 05:B47A: 8D 11 04  STA ram_spd_X_hi_player
C - - - - - 0x01748D 05:B47D: 4C 89 B4  JMP loc_B489
bra_B480:
C - - - - - 0x017490 05:B480: 20 D1 AF  JSR sub_AFD1
C - - - - - 0x017493 05:B483: 20 A2 B4  JSR sub_B4A2
C - - - - - 0x017496 05:B486: 20 E9 AD  JSR sub_ADE9
loc_B489:
C D 1 - - - 0x017499 05:B489: 20 15 AD  JSR sub_AD15
C - - - - - 0x01749C 05:B48C: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x01749F 05:B48F: 29 20     AND #$20
C - - - - - 0x0174A1 05:B491: D0 03     BNE bra_B496
C - - - - - 0x0174A3 05:B493: 20 08 AE  JSR sub_AE08
bra_B496:
C - - - - - 0x0174A6 05:B496: AD 1C 04  LDA ram_041C_player_timer
C - - - - - 0x0174A9 05:B499: F0 03     BEQ bra_B49E
C - - - - - 0x0174AB 05:B49B: CE 1C 04  DEC ram_041C_player_timer
bra_B49E:
; bzk optimize, JMP
C - - - - - 0x0174AE 05:B49E: 20 69 BE  JSR sub_BE69
C - - - - - 0x0174B1 05:B4A1: 60        RTS



sub_B4A2:
C - - - - - 0x0174B2 05:B4A2: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x0174B5 05:B4A5: 29 20     AND #con_041B_flag_20
C - - - - - 0x0174B7 05:B4A7: F0 03     BEQ bra_B4AC
C - - - - - 0x0174B9 05:B4A9: 4C 0B B5  JMP loc_B50B_RTS
bra_B4AC:
C - - - - - 0x0174BC 05:B4AC: A5 36     LDA ram_buttons
C - - - - - 0x0174BE 05:B4AE: 29 40     AND #con_btn_B
C - - - - - 0x0174C0 05:B4B0: F0 39     BEQ bra_B4EB
C - - - - - 0x0174C2 05:B4B2: A5 AC     LDA ram_00AC_angle_and_flags
C - - - - - 0x0174C4 05:B4B4: 29 40     AND #$40
C - - - - - 0x0174C6 05:B4B6: D0 53     BNE bra_B50B_RTS
C - - - - - 0x0174C8 05:B4B8: A9 01     LDA #con_00AB_01
C - - - - - 0x0174CA 05:B4BA: 85 AB     STA ram_00AB_handler
C - - - - - 0x0174CC 05:B4BC: A9 30     LDA #con_041B_flag_20 + con_041B_flag_useless_release_A
C - - - - - 0x0174CE 05:B4BE: 0D 1B 04  ORA ram_041B_player_flags
C - - - - - 0x0174D1 05:B4C1: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x0174D4 05:B4C4: AD 22 04  LDA ram_0422_flag
C - - - - - 0x0174D7 05:B4C7: 10 2D     BPL bra_B4F6
C - - - - - 0x0174D9 05:B4C9: A9 04     LDA #con_040E_plr_state_capt_kick
C - - - - - 0x0174DB 05:B4CB: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x0174DE 05:B4CE: 20 92 AE  JSR sub_AE92
C - - - - - 0x0174E1 05:B4D1: A9 07     LDA #con_sfx_attack
C - - - - - 0x0174E3 05:B4D3: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x0174E5 05:B4D5: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x0174E8 05:B4D8: A9 01     LDA #$01
C - - - - - 0x0174EA 05:B4DA: 20 73 A6  JSR sub_A673
C - - - - - 0x0174ED 05:B4DD: A9 01     LDA #$01
C - - - - - 0x0174EF 05:B4DF: 85 67     STA ram_0067_t32_table_index
C - - - - - 0x0174F1 05:B4E1: 20 F5 BA  JSR sub_BAF5_melee_damage_to_enemy
C - - - - - 0x0174F4 05:B4E4: A9 0C     LDA #$0C
C - - - - - 0x0174F6 05:B4E6: 8D 19 04  STA ram_0419_t03_player_land_timer
C - - - - - 0x0174F9 05:B4E9: D0 20     BNE bra_B50B_RTS    ; jmp
bra_B4EB:
; clear flag
C - - - - - 0x0174FB 05:B4EB: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x0174FE 05:B4EE: 29 EF     AND #con_041B_flag_useless_release_A ^ $FF
C - - - - - 0x017500 05:B4F0: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x017503 05:B4F3: 4C 0B B5  JMP loc_B50B_RTS
bra_B4F6:
C - - - - - 0x017506 05:B4F6: 20 0C B5  JSR sub_B50C_hawk_shoot_arrow_midair
C - - - - - 0x017509 05:B4F9: 20 92 AE  JSR sub_AE92
C - - - - - 0x01750C 05:B4FC: 20 47 BC  JSR sub_BC47
C - - - - - 0x01750F 05:B4FF: A9 0D     LDA #con_sfx_shoot_arrow
C - - - - - 0x017511 05:B501: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x017513 05:B503: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x017516 05:B506: A9 0C     LDA #$0C
C - - - - - 0x017518 05:B508: 8D 19 04  STA ram_0419_t03_player_land_timer
bra_B50B_RTS:
loc_B50B_RTS:   ; bzk optimize
C D 1 - - - 0x01751B 05:B50B: 60        RTS



sub_B50C_hawk_shoot_arrow_midair:
C - - - - - 0x01751C 05:B50C: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x01751E 05:B50E: BD 31 B5  LDA tbl_B531_hawk_shoot_arrow_midair_state,X
C - - - - - 0x017521 05:B511: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x017524 05:B514: BD 3A B5  LDA tbl_B53A,X
C - - - - - 0x017527 05:B517: 8D 34 04  STA ram_0434_shield_fly_timer
C - - - - - 0x01752A 05:B51A: BD DB B5  LDA tbl_B5DB,X
C - - - - - 0x01752D 05:B51D: 30 09     BMI bra_B528
C - - - - - 0x01752F 05:B51F: BD D0 B5  LDA tbl_B5D0,X
C - - - - - 0x017532 05:B522: 8D 35 04  STA ram_0435_shield_fly_direction
C - - - - - 0x017535 05:B525: 4C 30 B5  JMP loc_B530_RTS
bra_B528:
C - - - - - 0x017538 05:B528: A6 A4     LDX ram_plr_direction
C - - - - - 0x01753A 05:B52A: BD D9 B5  LDA tbl_B5D9,X
C - - - - - 0x01753D 05:B52D: 8D 35 04  STA ram_0435_shield_fly_direction
loc_B530_RTS:
C D 1 - - - 0x017540 05:B530: 60        RTS



tbl_B531_hawk_shoot_arrow_midair_state:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x017541 05:B531: 0F        .byte con_040E_plr_state_hawk_shoot_arrow_midair_foward   ; 00 
- D 1 - - - 0x017542 05:B532: 10        .byte con_040E_plr_state_hawk_shoot_arrow_midair_up   ; 01 
- D 1 - - - 0x017543 05:B533: 0F        .byte con_040E_plr_state_hawk_shoot_arrow_midair_foward   ; 02 
- D 1 - - - 0x017544 05:B534: 0F        .byte con_040E_plr_state_hawk_shoot_arrow_midair_foward   ; 03 
- D 1 - - - 0x017545 05:B535: 0F        .byte con_040E_plr_state_hawk_shoot_arrow_midair_foward   ; 04 
- D 1 - - - 0x017546 05:B536: 11        .byte con_040E_plr_state_hawk_shoot_arrow_midair_diagonal   ; 05 
- D 1 - - - 0x017547 05:B537: 0F        .byte con_040E_plr_state_hawk_shoot_arrow_midair_foward   ; 06 
- D 1 - - - 0x017548 05:B538: 0F        .byte con_040E_plr_state_hawk_shoot_arrow_midair_foward   ; 07 
- D 1 - - - 0x017549 05:B539: 11        .byte con_040E_plr_state_hawk_shoot_arrow_midair_diagonal   ; 08 



tbl_B53A:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x01754A 05:B53A: 04        .byte $04   ; 00 
- D 1 - - - 0x01754B 05:B53B: 06        .byte $06   ; 01 
- D 1 - - - 0x01754C 05:B53C: 04        .byte $04   ; 02 
- D 1 - - - 0x01754D 05:B53D: 04        .byte $04   ; 03 
- D 1 - - - 0x01754E 05:B53E: 04        .byte $04   ; 04 
- D 1 - - - 0x01754F 05:B53F: 05        .byte $05   ; 05 
- D 1 - - - 0x017550 05:B540: 04        .byte $04   ; 06 
- D 1 - - - 0x017551 05:B541: 04        .byte $04   ; 07 
- D 1 - - - 0x017552 05:B542: 05        .byte $05   ; 08 



ofs_026_hawk_state_B543_03_shoot_arrow_while_standing:
; con_plr_state_attack_up
C - - J - - 0x017553 05:B543: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017556 05:B546: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x017559 05:B549: D0 0C     BNE bra_B557
C - - - - - 0x01755B 05:B54B: A5 A4     LDA ram_plr_direction
C - - - - - 0x01755D 05:B54D: C5 A5     CMP ram_00A5_t06_plr_dir
C - - - - - 0x01755F 05:B54F: D0 06     BNE bra_B557    ; if direction changed
; if same direction
C - - - - - 0x017561 05:B551: A5 AD     LDA ram_00AD_counter
C - - - - - 0x017563 05:B553: C9 0C     CMP #$0C
C - - - - - 0x017565 05:B555: D0 36     BNE bra_B58D
bra_B557:
; save current direction
C - - - - - 0x017567 05:B557: A5 A4     LDA ram_plr_direction
C - - - - - 0x017569 05:B559: 85 A5     STA ram_00A5_t06_plr_dir
; save current state
C - - - - - 0x01756B 05:B55B: AD 01 04  LDA ram_player_state_1
C - - - - - 0x01756E 05:B55E: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x017571 05:B561: AD 22 04  LDA ram_0422_flag
C - - - - - 0x017574 05:B564: 10 17     BPL bra_B57D
C - - - - - 0x017576 05:B566: A9 03     LDA #con_040E_plr_state_punch
C - - - - - 0x017578 05:B568: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01757B 05:B56B: 20 92 AE  JSR sub_AE92
C - - - - - 0x01757E 05:B56E: A9 00     LDA #$00
C - - - - - 0x017580 05:B570: 20 73 A6  JSR sub_A673
C - - - - - 0x017583 05:B573: A9 00     LDA #$00
C - - - - - 0x017585 05:B575: 85 67     STA ram_0067_t32_table_index
C - - - - - 0x017587 05:B577: 20 F5 BA  JSR sub_BAF5_melee_damage_to_enemy
C - - - - - 0x01758A 05:B57A: 4C 8D B5  JMP loc_B58D
bra_B57D:
C - - - - - 0x01758D 05:B57D: 20 9B B5  JSR sub_B59B
C - - - - - 0x017590 05:B580: 20 92 AE  JSR sub_AE92
C - - - - - 0x017593 05:B583: 20 47 BC  JSR sub_BC47
C - - - - - 0x017596 05:B586: A9 0D     LDA #con_sfx_shoot_arrow
C - - - - - 0x017598 05:B588: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01759A 05:B58A: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_B58D:
loc_B58D:
C D 1 - - - 0x01759D 05:B58D: C6 AD     DEC ram_00AD_counter
C - - - - - 0x01759F 05:B58F: D0 06     BNE bra_B597
C - - - - - 0x0175A1 05:B591: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x0175A3 05:B593: 29 FD     AND #con_00AA_flag_duck_attack ^ $FF
C - - - - - 0x0175A5 05:B595: 85 AA     STA ram_00AA_plr_flags
bra_B597:
; bzk optimize, JMP
C - - - - - 0x0175A7 05:B597: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x0175AA 05:B59A: 60        RTS



sub_B59B:
C - - - - - 0x0175AB 05:B59B: A6 1B     LDX ram_001B_player_angle
C - - - - - 0x0175AD 05:B59D: BD BE B5  LDA tbl_B5BE_hawk_state,X
C - - - - - 0x0175B0 05:B5A0: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x0175B3 05:B5A3: BD C7 B5  LDA tbl_B5C7,X
C - - - - - 0x0175B6 05:B5A6: 8D 34 04  STA ram_0434_shield_fly_timer
C - - - - - 0x0175B9 05:B5A9: BD DB B5  LDA tbl_B5DB,X
C - - - - - 0x0175BC 05:B5AC: 30 07     BMI bra_B5B5
C - - - - - 0x0175BE 05:B5AE: BD D0 B5  LDA tbl_B5D0,X
C - - - - - 0x0175C1 05:B5B1: 8D 35 04  STA ram_0435_shield_fly_direction
C - - - - - 0x0175C4 05:B5B4: 60        RTS
bra_B5B5:
C - - - - - 0x0175C5 05:B5B5: A6 A4     LDX ram_plr_direction
C - - - - - 0x0175C7 05:B5B7: BD D9 B5  LDA tbl_B5D9,X
C - - - - - 0x0175CA 05:B5BA: 8D 35 04  STA ram_0435_shield_fly_direction
C - - - - - 0x0175CD 05:B5BD: 60        RTS



tbl_B5BE_hawk_state:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x0175CE 05:B5BE: 0B        .byte con_040E_plr_state_hawk_shoot_arrow_on_ground   ; 00 
- D 1 - - - 0x0175CF 05:B5BF: 0D        .byte con_040E_plr_state_capt_throw_shield   ; 01 
- - - - - - 0x0175D0 05:B5C0: 0B        .byte con_040E_plr_state_hawk_shoot_arrow_on_ground   ; 02 
- D 1 - - - 0x0175D1 05:B5C1: 0B        .byte con_040E_plr_state_hawk_shoot_arrow_on_ground   ; 03 
- D 1 - - - 0x0175D2 05:B5C2: 0B        .byte con_040E_plr_state_hawk_shoot_arrow_on_ground   ; 04 
- D 1 - - - 0x0175D3 05:B5C3: 0E        .byte con_040E_plr_state_hawk_shoot_arrow_diagonal_on_ground   ; 05 
- D 1 - - - 0x0175D4 05:B5C4: 0B        .byte con_040E_plr_state_hawk_shoot_arrow_on_ground   ; 06 
- D 1 - - - 0x0175D5 05:B5C5: 0B        .byte con_040E_plr_state_hawk_shoot_arrow_on_ground   ; 07 
- D 1 - - - 0x0175D6 05:B5C6: 0E        .byte con_040E_plr_state_hawk_shoot_arrow_diagonal_on_ground   ; 08 



tbl_B5C7:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x0175D7 05:B5C7: 00        .byte $00   ; 00 
- D 1 - - - 0x0175D8 05:B5C8: 02        .byte $02   ; 01 
- - - - - - 0x0175D9 05:B5C9: 00        .byte $00   ; 02 
- D 1 - - - 0x0175DA 05:B5CA: 00        .byte $00   ; 03 
- D 1 - - - 0x0175DB 05:B5CB: 00        .byte $00   ; 04 
- D 1 - - - 0x0175DC 05:B5CC: 01        .byte $01   ; 05 
- D 1 - - - 0x0175DD 05:B5CD: 00        .byte $00   ; 06 
- D 1 - - - 0x0175DE 05:B5CE: 00        .byte $00   ; 07 
- D 1 - - - 0x0175DF 05:B5CF: 01        .byte $01   ; 08 



tbl_B5D0:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- - - - - - 0x0175E0 05:B5D0: 02        .byte $02   ; 00 
- D 1 - - - 0x0175E1 05:B5D1: 00        .byte $00   ; 01 
- - - - - - 0x0175E2 05:B5D2: 02        .byte $02   ; 02 
- D 1 - - - 0x0175E3 05:B5D3: 02        .byte $02   ; 03 
- D 1 - - - 0x0175E4 05:B5D4: 03        .byte $03   ; 04 
- D 1 - - - 0x0175E5 05:B5D5: 04        .byte $04   ; 05 
- - - - - - 0x0175E6 05:B5D6: 02        .byte $02   ; 06 
- - - - - - 0x0175E7 05:B5D7: 02        .byte $02   ; 07 
- D 1 - - - 0x0175E8 05:B5D8: 01        .byte $01   ; 08 



tbl_B5D9:
- D 1 - - - 0x0175E9 05:B5D9: 02        .byte $02   ; 00 left
- D 1 - - - 0x0175EA 05:B5DA: 03        .byte $03   ; 01 right



tbl_B5DB:
;     01
;   08  05
; 03  00  04
;   07  06
;     02
- D 1 - - - 0x0175EB 05:B5DB: FF        .byte $FF   ; 00 
- D 1 - - - 0x0175EC 05:B5DC: 00        .byte $00   ; 01 
- D 1 - - - 0x0175ED 05:B5DD: FF        .byte $FF   ; 02 
- D 1 - - - 0x0175EE 05:B5DE: 00        .byte $00   ; 03 
- D 1 - - - 0x0175EF 05:B5DF: 00        .byte $00   ; 04 
- D 1 - - - 0x0175F0 05:B5E0: 00        .byte $00   ; 05 
- D 1 - - - 0x0175F1 05:B5E1: FF        .byte $FF   ; 06 
- D 1 - - - 0x0175F2 05:B5E2: FF        .byte $FF   ; 07 
- D 1 - - - 0x0175F3 05:B5E3: 00        .byte $00   ; 08 



ofs_026_hawk_state_B5E4_05_duck:
; con_plr_state_duck
C - - J - - 0x0175F4 05:B5E4: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0175F7 05:B5E7: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x0175FA 05:B5EA: F0 16     BEQ bra_B602
; save current state
C - - - - - 0x0175FC 05:B5EC: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x0175FF 05:B5EF: A9 05     LDA #con_040E_plr_state_duck_or_dive
C - - - - - 0x017601 05:B5F1: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x017604 05:B5F4: 20 92 AE  JSR sub_AE92
C - - - - - 0x017607 05:B5F7: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x017609 05:B5F9: F0 07     BEQ bra_B602    ; if not swimming
; if swimming
C - - - - - 0x01760B 05:B5FB: A9 29     LDA #con_sfx_dive_under_water
C - - - - - 0x01760D 05:B5FD: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01760F 05:B5FF: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_B602:
; bzk optimize, JMP
C - - - - - 0x017612 05:B602: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x017615 05:B605: 60        RTS



ofs_026_hawk_state_B606_06_shoot_arrow_while_ducking:
; con_plr_state_attack_ducking
C - - J - - 0x017616 05:B606: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017619 05:B609: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x01761C 05:B60C: D0 0C     BNE bra_B61A
C - - - - - 0x01761E 05:B60E: A5 A4     LDA ram_plr_direction
C - - - - - 0x017620 05:B610: C5 A5     CMP ram_00A5_t07_plr_dir
C - - - - - 0x017622 05:B612: D0 06     BNE bra_B61A    ; if direction changed
; if same direction
C - - - - - 0x017624 05:B614: A5 AD     LDA ram_00AD_counter
C - - - - - 0x017626 05:B616: C9 0C     CMP #$0C
C - - - - - 0x017628 05:B618: D0 45     BNE bra_B65F
bra_B61A:
; save current direction
C - - - - - 0x01762A 05:B61A: A5 A4     LDA ram_plr_direction
C - - - - - 0x01762C 05:B61C: 85 A5     STA ram_00A5_t07_plr_dir
; save current state
C - - - - - 0x01762E 05:B61E: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017631 05:B621: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x017634 05:B624: AD 22 04  LDA ram_0422_flag
C - - - - - 0x017637 05:B627: 10 17     BPL bra_B640
C - - - - - 0x017639 05:B629: A9 06     LDA #con_040E_plr_state_ducking_punch
C - - - - - 0x01763B 05:B62B: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x01763E 05:B62E: 20 92 AE  JSR sub_AE92
C - - - - - 0x017641 05:B631: A9 02     LDA #$02
C - - - - - 0x017643 05:B633: 20 73 A6  JSR sub_A673
C - - - - - 0x017646 05:B636: A9 02     LDA #$02
C - - - - - 0x017648 05:B638: 85 67     STA ram_0067_t32_table_index
C - - - - - 0x01764A 05:B63A: 20 F5 BA  JSR sub_BAF5_melee_damage_to_enemy
C - - - - - 0x01764D 05:B63D: 4C 5F B6  JMP loc_B65F
bra_B640:
C - - - - - 0x017650 05:B640: A9 12     LDA #con_040E_plr_state_hawk_shoot_arrow_ducking
C - - - - - 0x017652 05:B642: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x017655 05:B645: 20 92 AE  JSR sub_AE92
C - - - - - 0x017658 05:B648: A9 03     LDA #$03
C - - - - - 0x01765A 05:B64A: 8D 34 04  STA ram_0434_shield_fly_timer
C - - - - - 0x01765D 05:B64D: A6 A4     LDX ram_plr_direction
C - - - - - 0x01765F 05:B64F: BD 72 B6  LDA tbl_B672,X
C - - - - - 0x017662 05:B652: 8D 35 04  STA ram_0435_shield_fly_direction
C - - - - - 0x017665 05:B655: 20 47 BC  JSR sub_BC47
C - - - - - 0x017668 05:B658: A9 0D     LDA #con_sfx_shoot_arrow
C - - - - - 0x01766A 05:B65A: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01766C 05:B65C: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_B65F:
loc_B65F:
C D 1 - - - 0x01766F 05:B65F: C6 AD     DEC ram_00AD_counter
C - - - - - 0x017671 05:B661: D0 06     BNE bra_B669
C - - - - - 0x017673 05:B663: A5 AA     LDA ram_00AA_plr_flags
C - - - - - 0x017675 05:B665: 29 FD     AND #con_00AA_flag_duck_attack ^ $FF
C - - - - - 0x017677 05:B667: 85 AA     STA ram_00AA_plr_flags
bra_B669:
C - - - - - 0x017679 05:B669: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x01767C 05:B66C: A9 00     LDA #con_041B_flag_00
C - - - - - 0x01767E 05:B66E: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x017681 05:B671: 60        RTS



tbl_B672:
; bzk optimize, same table as 0x0175E9
- D 1 - - - 0x017682 05:B672: 02        .byte $02   ; 00 left
- D 1 - - - 0x017683 05:B673: 03        .byte $03   ; 01 right



ofs_026_hawk_state_B674_0A_land:
; con_plr_state_land
C - - J - - 0x017684 05:B674: A5 AA     LDA ram_00AA_plr_flags
; bzk optimize, value can be 00-03
C - - - - - 0x017686 05:B676: 29 F0     AND #(con_00AA_flag_jump + con_00AA_flag_duck_attack + $0C) ^ $FF
C - - - - - 0x017688 05:B678: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x01768A 05:B67A: CE 19 04  DEC ram_0419_t03_player_land_timer
C - - - - - 0x01768D 05:B67D: D0 05     BNE bra_B684
C - - - - - 0x01768F 05:B67F: A9 00     LDA #con_plr_state_idle
C - - - - - 0x017691 05:B681: 8D 01 04  STA ram_player_state_1
bra_B684:
C - - - - - 0x017694 05:B684: 20 50 A6  JSR sub_A650_clear_player_speed_XY
; bzk optimize, JMP
C - - - - - 0x017697 05:B687: 20 37 A5  JSR sub_A537
C - - - - - 0x01769A 05:B68A: 60        RTS



ofs_026_hawk_state_B68B_0B_look_up:
; con_plr_state_look_up_hawk
C - - J - - 0x01769B 05:B68B: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x01769D 05:B68D: D0 27     BNE bra_B6B6_swimming
; if not swimming
C - - - - - 0x01769F 05:B68F: 20 79 B2  JSR sub_B279
C - - - - - 0x0176A2 05:B692: A5 DA     LDA ram_00DA_flags
C - - - - - 0x0176A4 05:B694: 10 04     BPL bra_B69A
; if con_00DA_80
C - - - - - 0x0176A6 05:B696: A9 00     LDA #con_040E_plr_state_idle
C - - - - - 0x0176A8 05:B698: F0 0D     BEQ bra_B6A7    ; jmp
bra_B69A:
C - - - - - 0x0176AA 05:B69A: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0176AD 05:B69D: CD 02 04  CMP ram_prev_player_state_1
C - - - - - 0x0176B0 05:B6A0: F0 10     BEQ bra_B6B2
; save current state
C - - - - - 0x0176B2 05:B6A2: 8D 02 04  STA ram_prev_player_state_1
; 
C - - - - - 0x0176B5 05:B6A5: A9 0C     LDA #con_040E_plr_state_look_up
bra_B6A7:
C - - - - - 0x0176B7 05:B6A7: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x0176BA 05:B6AA: 20 92 AE  JSR sub_AE92
C - - - - - 0x0176BD 05:B6AD: A9 00     LDA #con_041B_flag_00
C - - - - - 0x0176BF 05:B6AF: 8D 1B 04  STA ram_041B_player_flags
bra_B6B2:
; bzk optimize, JMP
C - - - - - 0x0176C2 05:B6B2: 20 50 A6  JSR sub_A650_clear_player_speed_XY
C - - - - - 0x0176C5 05:B6B5: 60        RTS
bra_B6B6_swimming:
C - - - - - 0x0176C6 05:B6B6: A9 00     LDA #$00    ; con_040E_plr_state_idle
C - - - - - 0x0176C8 05:B6B8: 8D 01 04  STA ram_player_state_1  ; con_plr_state_idle
C - - - - - 0x0176CB 05:B6BB: F0 EA     BEQ bra_B6A7    ; jmp



sub_B6BD:
C - - - - - 0x0176CD 05:B6BD: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0176D0 05:B6C0: 29 E0     AND #$80 + $40 + $20
C - - - - - 0x0176D2 05:B6C2: D0 17     BNE bra_B6DB_RTS
C - - - - - 0x0176D4 05:B6C4: AD 1E 04  LDA ram_041E_player_flags
C - - - - - 0x0176D7 05:B6C7: F0 12     BEQ bra_B6DB_RTS
C - - - - - 0x0176D9 05:B6C9: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x0176DB 05:B6CB: F0 0E     BEQ bra_B6DB_RTS
C - - - - - 0x0176DD 05:B6CD: 85 67     STA ram_0067_t37_counter
C - - - - - 0x0176DF 05:B6CF: A2 00     LDX #$00
bra_B6D1_loop:
C - - - - - 0x0176E1 05:B6D1: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0176E4 05:B6D4: 30 06     BMI bra_B6DC
bra_B6D6:
C - - - - - 0x0176E6 05:B6D6: E8        INX
C - - - - - 0x0176E7 05:B6D7: E0 04     CPX #$04
C - - - - - 0x0176E9 05:B6D9: 90 F6     BCC bra_B6D1_loop
bra_B6DB_RTS:
C - - - - - 0x0176EB 05:B6DB: 60        RTS
bra_B6DC:
C - - - - - 0x0176EC 05:B6DC: 29 50     AND #$50
C - - - - - 0x0176EE 05:B6DE: D0 2A     BNE bra_B70A
C - - - - - 0x0176F0 05:B6E0: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0176F3 05:B6E3: 29 08     AND #$08
C - - - - - 0x0176F5 05:B6E5: D0 EF     BNE bra_B6D6
C - - - - - 0x0176F7 05:B6E7: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x0176FA 05:B6EA: F0 1E     BEQ bra_B70A
C - - - - - 0x0176FC 05:B6EC: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0176FF 05:B6EF: 1D 98 04  ORA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x017702 05:B6F2: D0 16     BNE bra_B70A
C - - - - - 0x017704 05:B6F4: AD 1E 04  LDA ram_041E_player_flags
C - - - - - 0x017707 05:B6F7: 29 1F     AND #$1F
C - - - - - 0x017709 05:B6F9: 85 68     STA ram_0068_t16
C - - - - - 0x01770B 05:B6FB: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x01770E 05:B6FE: 85 69     STA ram_0069_t18_pos_X_lo
C - - - - - 0x017710 05:B700: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x017713 05:B703: 85 6A     STA ram_006A_t16_pos_Y_lo
C - - - - - 0x017715 05:B705: 20 98 FF  JSR sub_0x01FFA8_objects_collision
C - - - - - 0x017718 05:B708: B0 06     BCS bra_B710
bra_B70A:
C - - - - - 0x01771A 05:B70A: C6 67     DEC ram_0067_t37_counter
C - - - - - 0x01771C 05:B70C: D0 C8     BNE bra_B6D6
C - - - - - 0x01771E 05:B70E: F0 CB     BEQ bra_B6DB_RTS    ; jmp
bra_B710:
C - - - - - 0x017720 05:B710: AD 1E 04  LDA ram_041E_player_flags
C - - - - - 0x017723 05:B713: 29 60     AND #$20 + $40
C - - - - - 0x017725 05:B715: F0 0C     BEQ bra_B723
C - - - - - 0x017727 05:B717: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x01772A 05:B71A: 30 17     BMI bra_B733
C - - - - - 0x01772C 05:B71C: AD 01 04  LDA ram_player_state_1
C - - - - - 0x01772F 05:B71F: C9 02     CMP #con_plr_state_jump
C - - - - - 0x017731 05:B721: F0 2D     BEQ bra_B750
bra_B723:
C - - - - - 0x017733 05:B723: AD 1E 04  LDA ram_041E_player_flags
C - - - - - 0x017736 05:B726: 30 28     BMI bra_B750
C - - - - - 0x017738 05:B728: AD D4 03  LDA ram_script
C - - - - - 0x01773B 05:B72B: C9 04     CMP #con_script_battle_mode
C - - - - - 0x01773D 05:B72D: D0 04     BNE bra_B733
C - - - - - 0x01773F 05:B72F: A9 00     LDA #$00
C - - - - - 0x017741 05:B731: F0 0C     BEQ bra_B73F    ; jmp
bra_B733:
C - - - - - 0x017743 05:B733: BC 4A 04  LDY ram_obj_id,X
C - - - - - 0x017746 05:B736: B9 96 B7  LDA tbl_B796,Y
C - - - - - 0x017749 05:B739: A4 D2     LDY ram_00D2_data_index
C - - - - - 0x01774B 05:B73B: 18        CLC
C - - - - - 0x01774C 05:B73C: 79 F6 B7  ADC tbl_B7F6,Y
bra_B73F:
C - - - - - 0x01774F 05:B73F: 20 46 B8  JSR sub_B846_deal_damage_to_player
C - - - - - 0x017752 05:B742: A9 0E     LDA #con_sfx_player_hit
C - - - - - 0x017754 05:B744: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x017756 05:B746: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x017759 05:B749: 8A        TXA
C - - - - - 0x01775A 05:B74A: 48        PHA
C - - - - - 0x01775B 05:B74B: 20 92 AE  JSR sub_AE92
C - - - - - 0x01775E 05:B74E: 68        PLA
C - - - - - 0x01775F 05:B74F: AA        TAX
bra_B750:
C - - - - - 0x017760 05:B750: A5 A8     LDA ram_plr_index
C - - - - - 0x017762 05:B752: D0 2E     BNE bra_B782
C - - - - - 0x017764 05:B754: AD 16 04  LDA ram_0416_player_flags
C - - - - - 0x017767 05:B757: 29 01     AND #con_0416_01
C - - - - - 0x017769 05:B759: D0 0E     BNE bra_B769
C - - - - - 0x01776B 05:B75B: AD 1E 04  LDA ram_041E_player_flags
C - - - - - 0x01776E 05:B75E: 29 20     AND #$20
C - - - - - 0x017770 05:B760: F0 20     BEQ bra_B782
C - - - - - 0x017772 05:B762: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017775 05:B765: C9 02     CMP #con_plr_state_jump
C - - - - - 0x017777 05:B767: D0 19     BNE bra_B782
bra_B769:
C - - - - - 0x017779 05:B769: 8A        TXA
C - - - - - 0x01777A 05:B76A: 48        PHA
C - - - - - 0x01777B 05:B76B: AC D7 03  LDY ram_captain_power
C - - - - - 0x01777E 05:B76E: B9 FB B7  LDA tbl_B7FB_captain_special_damage_to_enemy,Y
C - - - - - 0x017781 05:B771: 85 67     STA ram_0067_t38_damage
C - - - - - 0x017783 05:B773: A0 01     LDY #$01
C - - - - - 0x017785 05:B775: 68        PLA
C - - - - - 0x017786 05:B776: AA        TAX
C - - - - - 0x017787 05:B777: A9 07     LDA #con_sfx_attack
C - - - - - 0x017789 05:B779: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x01778B 05:B77B: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x01778E 05:B77E: A5 67     LDA ram_0067_t38_damage
C - - - - - 0x017790 05:B780: D0 10     BNE bra_B792    ; jmp
bra_B782:
C - - - - - 0x017792 05:B782: AD D4 03  LDA ram_script
C - - - - - 0x017795 05:B785: C9 04     CMP #con_script_battle_mode
C - - - - - 0x017797 05:B787: D0 06     BNE bra_B78F
C - - - - - 0x017799 05:B789: A0 01     LDY #$01
C - - - - - 0x01779B 05:B78B: A9 00     LDA #$00
C - - - - - 0x01779D 05:B78D: F0 03     BEQ bra_B792    ; jmp
bra_B78F:
C - - - - - 0x01779F 05:B78F: A9 01     LDA #$01
C - - - - - 0x0177A1 05:B791: A8        TAY ; 01
bra_B792:
; bzk optimize, JMP
C - - - - - 0x0177A2 05:B792: 20 FF B7  JSR sub_B7FF_deal_damage_to_enemy
C - - - - - 0x0177A5 05:B795: 60        RTS



tbl_B796:
- - - - - - 0x0177A6 05:B796: 01        .byte $01   ; 00 con_enemy_id_00
- D 1 - - - 0x0177A7 05:B797: 01        .byte $01   ; 01 con_enemy_id_01
- - - - - - 0x0177A8 05:B798: 01        .byte $01   ; 02 con_enemy_id_02
- - - - - - 0x0177A9 05:B799: 01        .byte $01   ; 03 con_enemy_id_03
- - - - - - 0x0177AA 05:B79A: 01        .byte $01   ; 04 con_enemy_id_04
- D 1 - - - 0x0177AB 05:B79B: 01        .byte $01   ; 05 con_enemy_id_05
- D 1 - - - 0x0177AC 05:B79C: 01        .byte $01   ; 06 con_enemy_id_06
- D 1 - - - 0x0177AD 05:B79D: 01        .byte $01   ; 07 con_enemy_id_07
- - - - - - 0x0177AE 05:B79E: 01        .byte $01   ; 08 con_enemy_id_08
- D 1 - - - 0x0177AF 05:B79F: 01        .byte $01   ; 09 con_enemy_id_09
- - - - - - 0x0177B0 05:B7A0: 01        .byte $01   ; 0A con_enemy_id_0A
- D 1 - - - 0x0177B1 05:B7A1: 01        .byte $01   ; 0B con_enemy_id_0B
- - - - - - 0x0177B2 05:B7A2: 01        .byte $01   ; 0C con_enemy_id_0C
- D 1 - - - 0x0177B3 05:B7A3: 01        .byte $01   ; 0D con_enemy_id_0D
- - - - - - 0x0177B4 05:B7A4: 01        .byte $01   ; 0E con_enemy_id_0E
- D 1 - - - 0x0177B5 05:B7A5: 01        .byte $01   ; 0F con_enemy_id_0F
- - - - - - 0x0177B6 05:B7A6: 01        .byte $01   ; 10 con_enemy_id_10
- D 1 - - - 0x0177B7 05:B7A7: 01        .byte $01   ; 11 con_enemy_id_11
- - - - - - 0x0177B8 05:B7A8: 01        .byte $01   ; 12 con_enemy_id_12
- D 1 - - - 0x0177B9 05:B7A9: 01        .byte $01   ; 13 con_enemy_id_13
- - - - - - 0x0177BA 05:B7AA: 01        .byte $01   ; 14 con_enemy_id_14
- D 1 - - - 0x0177BB 05:B7AB: 01        .byte $01   ; 15 con_enemy_id_15
- - - - - - 0x0177BC 05:B7AC: 01        .byte $01   ; 16 con_enemy_id_16
- - - - - - 0x0177BD 05:B7AD: 01        .byte $01   ; 17 con_enemy_id_17
- - - - - - 0x0177BE 05:B7AE: 04        .byte $04   ; 18 con_enemy_id_18
- - - - - - 0x0177BF 05:B7AF: 04        .byte $04   ; 19 con_enemy_id_19
- - - - - - 0x0177C0 05:B7B0: 04        .byte $04   ; 1A con_enemy_id_1A
- - - - - - 0x0177C1 05:B7B1: 01        .byte $01   ; 1B con_enemy_id_1B
- - - - - - 0x0177C2 05:B7B2: 01        .byte $01   ; 1C con_enemy_id_1C
- - - - - - 0x0177C3 05:B7B3: 01        .byte $01   ; 1D con_enemy_id_1D
- - - - - - 0x0177C4 05:B7B4: 01        .byte $01   ; 1E con_enemy_id_1E
- D 1 - - - 0x0177C5 05:B7B5: 01        .byte $01   ; 1F con_enemy_id_1F
- D 1 - - - 0x0177C6 05:B7B6: 01        .byte $01   ; 20 con_enemy_id_20
- - - - - - 0x0177C7 05:B7B7: 01        .byte $01   ; 21 con_enemy_id_21
- - - - - - 0x0177C8 05:B7B8: 01        .byte $01   ; 22 con_enemy_id_22
- D 1 - - - 0x0177C9 05:B7B9: 01        .byte $01   ; 23 con_enemy_id_23
- - - - - - 0x0177CA 05:B7BA: 01        .byte $01   ; 24 con_enemy_id_24
- D 1 - - - 0x0177CB 05:B7BB: 01        .byte $01   ; 25 con_enemy_id_25
- - - - - - 0x0177CC 05:B7BC: 01        .byte $01   ; 26 con_enemy_id_26
- D 1 - - - 0x0177CD 05:B7BD: 82        .byte $82   ; 27 con_enemy_id_27
- - - - - - 0x0177CE 05:B7BE: 02        .byte $02   ; 28 con_enemy_id_28
- D 1 - - - 0x0177CF 05:B7BF: 02        .byte $02   ; 29 con_enemy_id_29
- D 1 - - - 0x0177D0 05:B7C0: 02        .byte $02   ; 2A con_enemy_id_2A
- D 1 - - - 0x0177D1 05:B7C1: 84        .byte $04 + $80   ; 2B con_enemy_id_2B
- D 1 - - - 0x0177D2 05:B7C2: 01        .byte $01   ; 2C con_enemy_id_2C
- D 1 - - - 0x0177D3 05:B7C3: 02        .byte $02   ; 2D con_enemy_id_2D
- D 1 - - - 0x0177D4 05:B7C4: 04        .byte $04   ; 2E con_enemy_id_2E
- - - - - - 0x0177D5 05:B7C5: 00        .byte $00   ; 2F con_enemy_id_2F
- - - - - - 0x0177D6 05:B7C6: 01        .byte $01   ; 30 con_enemy_id_30
- - - - - - 0x0177D7 05:B7C7: 01        .byte $01   ; 31 con_enemy_id_31
- - - - - - 0x0177D8 05:B7C8: 01        .byte $01   ; 32 con_enemy_id_32
- - - - - - 0x0177D9 05:B7C9: 01        .byte $01   ; 33 con_enemy_id_33
- - - - - - 0x0177DA 05:B7CA: 01        .byte $01   ; 34 con_enemy_id_34
- - - - - - 0x0177DB 05:B7CB: 01        .byte $01   ; 35 con_enemy_id_35
- D 1 - - - 0x0177DC 05:B7CC: 01        .byte $01   ; 36 con_enemy_id_36
- - - - - - 0x0177DD 05:B7CD: 01        .byte $01   ; 37 con_enemy_id_37
- D 1 - - - 0x0177DE 05:B7CE: 01        .byte $01   ; 38 con_enemy_id_38
- - - - - - 0x0177DF 05:B7CF: 01        .byte $01   ; 39 con_enemy_id_39
- D 1 - - - 0x0177E0 05:B7D0: 01        .byte $01   ; 3A con_enemy_id_3A
- - - - - - 0x0177E1 05:B7D1: 01        .byte $01   ; 3B con_enemy_id_3B
- - - - - - 0x0177E2 05:B7D2: 01        .byte $01   ; 3C con_enemy_id_3C
- D 1 - - - 0x0177E3 05:B7D3: 01        .byte $01   ; 3D con_enemy_id_3D
- D 1 - - - 0x0177E4 05:B7D4: 01        .byte $01   ; 3E con_enemy_id_3E
- D 1 - - - 0x0177E5 05:B7D5: 01        .byte $01   ; 3F con_enemy_id_3F
- D 1 - - - 0x0177E6 05:B7D6: 01        .byte $01   ; 40 con_enemy_id_40
- - - - - - 0x0177E7 05:B7D7: 94        .byte $14 + $80   ; 41 con_enemy_id_41
- D 1 - - - 0x0177E8 05:B7D8: 94        .byte $14 + $80   ; 42 con_enemy_id_42
- - - - - - 0x0177E9 05:B7D9: 00        .byte $00   ; 43 con_enemy_id_43
- - - - - - 0x0177EA 05:B7DA: 00        .byte $00   ; 44 con_enemy_id_44
- - - - - - 0x0177EB 05:B7DB: 00        .byte $00   ; 45 con_enemy_id_45
- - - - - - 0x0177EC 05:B7DC: 00        .byte $00   ; 46 con_enemy_id_46
- - - - - - 0x0177ED 05:B7DD: 00        .byte $00   ; 47 con_enemy_id_47
- - - - - - 0x0177EE 05:B7DE: 00        .byte $00   ; 48 con_enemy_id_48
- - - - - - 0x0177EF 05:B7DF: 00        .byte $00   ; 49 con_enemy_id_49
- - - - - - 0x0177F0 05:B7E0: 00        .byte $00   ; 4A con_enemy_id_4A
- - - - - - 0x0177F1 05:B7E1: 00        .byte $00   ; 4B con_enemy_id_4B
- - - - - - 0x0177F2 05:B7E2: 00        .byte $00   ; 4C con_enemy_id_4C
- - - - - - 0x0177F3 05:B7E3: 00        .byte $00   ; 4D con_enemy_id_4D
- - - - - - 0x0177F4 05:B7E4: 00        .byte $00   ; 4E con_enemy_id_4E
- - - - - - 0x0177F5 05:B7E5: 00        .byte $00   ; 4F con_enemy_id_4F
- D 1 - - - 0x0177F6 05:B7E6: 02        .byte $02   ; 50 con_enemy_id_50
- D 1 - - - 0x0177F7 05:B7E7: 02        .byte $02   ; 51 con_enemy_id_51
- D 1 - - - 0x0177F8 05:B7E8: 03        .byte $03   ; 52 con_enemy_id_52
- D 1 - - - 0x0177F9 05:B7E9: 02        .byte $02   ; 53 con_enemy_id_53
- D 1 - - - 0x0177FA 05:B7EA: 02        .byte $02   ; 54 con_enemy_id_54
- D 1 - - - 0x0177FB 05:B7EB: 03        .byte $03   ; 55 con_enemy_id_55
- - - - - - 0x0177FC 05:B7EC: 00        .byte $00   ; 56 con_enemy_id_56
- - - - - - 0x0177FD 05:B7ED: 02        .byte $02   ; 57 con_enemy_id_57
- - - - - - 0x0177FE 05:B7EE: 00        .byte $00   ; 58 con_enemy_id_58
- D 1 - - - 0x0177FF 05:B7EF: 02        .byte $02   ; 59 con_enemy_id_59
- - - - - - 0x017800 05:B7F0: 00        .byte $00   ; 5A con_enemy_id_5A
- - - - - - 0x017801 05:B7F1: 00        .byte $00   ; 5B con_enemy_id_5B
- - - - - - 0x017802 05:B7F2: 00        .byte $00   ; 5C con_enemy_id_5C
- - - - - - 0x017803 05:B7F3: 00        .byte $00   ; 5D con_enemy_id_5D
- - - - - - 0x017804 05:B7F4: 00        .byte $00   ; 5E con_enemy_id_5E
- - - - - - 0x017805 05:B7F5: 00        .byte $00   ; 5F con_enemy_id_5F



tbl_B7F6:
- D 1 - - - 0x017806 05:B7F6: 00        .byte $00   ; 00 
- D 1 - - - 0x017807 05:B7F7: 00        .byte $00   ; 01 
- D 1 - - - 0x017808 05:B7F8: 01        .byte $01   ; 02 
- D 1 - - - 0x017809 05:B7F9: 02        .byte $02   ; 03 
- D 1 - - - 0x01780A 05:B7FA: 00        .byte $00   ; 04 



tbl_B7FB_captain_special_damage_to_enemy:
; slide, sit on shield
- D 1 - - - 0x01780B 05:B7FB: 06        .byte $06   ; 00 
- D 1 - - - 0x01780C 05:B7FC: 06        .byte $06   ; 01 
- D 1 - - - 0x01780D 05:B7FD: 07        .byte $07   ; 02 
- D 1 - - - 0x01780E 05:B7FE: 08        .byte $08   ; 03 



sub_B7FF_deal_damage_to_enemy:
; in
    ; A = damage
    ; Y = flag
        ; 00 = 
        ; 01 = 
C - - - - - 0x01780F 05:B7FF: 85 6D     STA ram_006D_t11_damage
C - - - - - 0x017811 05:B801: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x017814 05:B804: 30 3F     BMI bra_B845_RTS
C - - - - - 0x017816 05:B806: BD 79 05  LDA ram_obj_hp,X
C - - - - - 0x017819 05:B809: 38        SEC
C - - - - - 0x01781A 05:B80A: E5 6D     SBC ram_006D_t11_damage
C - - - - - 0x01781C 05:B80C: 9D 79 05  STA ram_obj_hp,X
C - - - - - 0x01781F 05:B80F: F0 02     BEQ bra_B813_kill_enemy
C - - - - - 0x017821 05:B811: 10 1C     BPL bra_B82F_enemy_still_alive
; if negative HP, kill enemy
bra_B813_kill_enemy:
C - - - - - 0x017823 05:B813: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x017826 05:B816: C9 2C     CMP #con_enemy_id_2C
C - - - - - 0x017828 05:B818: F0 07     BEQ bra_B821
C - - - - - 0x01782A 05:B81A: C9 2A     CMP #con_enemy_id_2A
C - - - - - 0x01782C 05:B81C: F0 03     BEQ bra_B821
C - - - - - 0x01782E 05:B81E: EE E2 05  INC ram_05E2_counter
bra_B821:
C - - - - - 0x017831 05:B821: AD D4 03  LDA ram_script
C - - - - - 0x017834 05:B824: C9 04     CMP #con_script_battle_mode
C - - - - - 0x017836 05:B826: F0 03     BEQ bra_B82B
C - - - - - 0x017838 05:B828: 20 00 BF  JSR sub_BF00_add_score_to_player
bra_B82B:
C - - - - - 0x01783B 05:B82B: A9 10     LDA #$10
C - - - - - 0x01783D 05:B82D: D0 0A     BNE bra_B839    ; jmp
bra_B82F_enemy_still_alive:
C - - - - - 0x01783F 05:B82F: C0 01     CPY #$01
C - - - - - 0x017841 05:B831: F0 04     BEQ bra_B837
C - - - - - 0x017843 05:B833: A9 04     LDA #$04
C - - - - - 0x017845 05:B835: D0 02     BNE bra_B839    ; jmp
bra_B837:
C - - - - - 0x017847 05:B837: A9 08     LDA #$08
bra_B839:
C - - - - - 0x017849 05:B839: 85 6D     STA ram_006D_t12_obj_flag
C - - - - - 0x01784B 05:B83B: BD 41 05  LDA ram_0541_obj_flags,X
C - - - - - 0x01784E 05:B83E: 29 E3     AND #$E3
C - - - - - 0x017850 05:B840: 05 6D     ORA ram_006D_t12_obj_flag
C - - - - - 0x017852 05:B842: 9D 41 05  STA ram_0541_obj_flags,X
bra_B845_RTS:
C - - - - - 0x017855 05:B845: 60        RTS



loc_B846_deal_damage_to_player:
sub_B846_deal_damage_to_player:
; in
    ; A
        ; .xxx xxxx = dagame
        ; x... .... = flag
C D 1 - - - 0x017856 05:B846: 85 6D     STA ram_006D_t02_flagged_damage
C - - - - - 0x017858 05:B848: 30 04     BMI bra_B84E
C - - - - - 0x01785A 05:B84A: A9 07     LDA #con_040E_plr_state_get_hit_and_lean
C - - - - - 0x01785C 05:B84C: D0 02     BNE bra_B850    ; jmp
bra_B84E:
C - - - - - 0x01785E 05:B84E: A9 08     LDA #con_040E_plr_state_get_hit_and_sit
bra_B850:
C - - - - - 0x017860 05:B850: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x017863 05:B853: A9 C0     LDA #$C0
C - - - - - 0x017865 05:B855: 85 68     STA ram_0068_t17_flags
C - - - - - 0x017867 05:B857: A9 00     LDA #con_00AA_flag_00
C - - - - - 0x017869 05:B859: 85 AA     STA ram_00AA_plr_flags
                                       ;LDA #$00
C - - - - - 0x01786B 05:B85B: 85 B1     STA ram_00B1_counter
                                       ;LDA #con_00AB_00
C - - - - - 0x01786D 05:B85D: 85 AB     STA ram_00AB_handler
                                       ;LDA #$00
C - - - - - 0x01786F 05:B85F: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x017872 05:B862: A9 08     LDA #$08
C - - - - - 0x017874 05:B864: 8D 19 04  STA ram_0419_t01_player_stun_timer
C - - - - - 0x017877 05:B867: A9 80     LDA #$80
C - - - - - 0x017879 05:B869: 85 B6     STA ram_00B6_plr_invinc_timer
C - - - - - 0x01787B 05:B86B: A4 A8     LDY ram_plr_index
C - - - - - 0x01787D 05:B86D: A5 E1     LDA ram_cheat_invinc_flag
C - - - - - 0x01787F 05:B86F: 30 11     BMI bra_B882_skip_damage_to_player
; if no cheat
C - - - - - 0x017881 05:B871: A5 6D     LDA ram_006D_t02_flagged_damage
C - - - - - 0x017883 05:B873: 29 7F     AND #$7F
C - - - - - 0x017885 05:B875: 85 6E     STA ram_006E_t02_damage_to_player
C - - - - - 0x017887 05:B877: A4 A8     LDY ram_plr_index
C - - - - - 0x017889 05:B879: B9 D9 03  LDA ram_player_hp,Y
C - - - - - 0x01788C 05:B87C: 38        SEC
C - - - - - 0x01788D 05:B87D: E5 6E     SBC ram_006E_t02_damage_to_player
C - - - - - 0x01788F 05:B87F: 99 D9 03  STA ram_player_hp,Y
bra_B882_skip_damage_to_player:
C - - - - - 0x017892 05:B882: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017895 05:B885: C9 02     CMP #con_plr_state_jump
C - - - - - 0x017897 05:B887: F0 0B     BEQ bra_B894
C - - - - - 0x017899 05:B889: C9 04     CMP #con_plr_state_grab
C - - - - - 0x01789B 05:B88B: F0 07     BEQ bra_B894
C - - - - - 0x01789D 05:B88D: A9 07     LDA #con_plr_state_07
C - - - - - 0x01789F 05:B88F: 8D 01 04  STA ram_player_state_1
C - - - - - 0x0178A2 05:B892: D0 06     BNE bra_B89A    ; jmp
bra_B894:
C - - - - - 0x0178A4 05:B894: A9 20     LDA #$20
C - - - - - 0x0178A6 05:B896: 05 68     ORA ram_0068_t17_flags
C - - - - - 0x0178A8 05:B898: 85 68     STA ram_0068_t17_flags
bra_B89A:
C - - - - - 0x0178AA 05:B89A: B9 D9 03  LDA ram_player_hp,Y
C - - - - - 0x0178AD 05:B89D: F0 02     BEQ bra_B8A1_dead
C - - - - - 0x0178AF 05:B89F: 10 19     BPL bra_B8BA
bra_B8A1_dead:
C - - - - - 0x0178B1 05:B8A1: A5 68     LDA ram_0068_t17_flags
C - - - - - 0x0178B3 05:B8A3: 09 10     ORA #$10
C - - - - - 0x0178B5 05:B8A5: 85 68     STA ram_0068_t17_flags
; 
C - - - - - 0x0178B7 05:B8A7: 29 20     AND #$20
C - - - - - 0x0178B9 05:B8A9: D0 0F     BNE bra_B8BA
C - - - - - 0x0178BB 05:B8AB: A9 80     LDA #$80
C - - - - - 0x0178BD 05:B8AD: 8D 19 04  STA ram_0419_t02_player_timer
C - - - - - 0x0178C0 05:B8B0: A9 09     LDA #con_040E_plr_state_dead
C - - - - - 0x0178C2 05:B8B2: 8D 0E 04  STA ram_player_state_2
                                       ;LDA #con_plr_state_09
C - - - - - 0x0178C5 05:B8B5: 8D 01 04  STA ram_player_state_1
C - - - - - 0x0178C8 05:B8B8: D0 1C     BNE bra_B8D6    ; jmp
bra_B8BA:
C - - - - - 0x0178CA 05:B8BA: AD 01 04  LDA ram_player_state_1
C - - - - - 0x0178CD 05:B8BD: C9 04     CMP #con_plr_state_grab
C - - - - - 0x0178CF 05:B8BF: D0 15     BNE bra_B8D6
C - - - - - 0x0178D1 05:B8C1: A9 01     LDA #con_00AA_flag_jump
C - - - - - 0x0178D3 05:B8C3: 05 AA     ORA ram_00AA_plr_flags
C - - - - - 0x0178D5 05:B8C5: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x0178D7 05:B8C7: A9 10     LDA #$10
C - - - - - 0x0178D9 05:B8C9: 8D 1C 04  STA ram_041C_player_timer
C - - - - - 0x0178DC 05:B8CC: A9 20     LDA #$20
C - - - - - 0x0178DE 05:B8CE: 8D 15 04  STA ram_0415_player_counter
C - - - - - 0x0178E1 05:B8D1: A9 02     LDA #con_plr_state_jump
C - - - - - 0x0178E3 05:B8D3: 8D 01 04  STA ram_player_state_1
bra_B8D6:
C - - - - - 0x0178E6 05:B8D6: A9 01     LDA #con_041B_flag_01
C - - - - - 0x0178E8 05:B8D8: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x0178EB 05:B8DB: A5 68     LDA ram_0068_t17_flags
C - - - - - 0x0178ED 05:B8DD: 05 A4     ORA ram_plr_direction
C - - - - - 0x0178EF 05:B8DF: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x0178F2 05:B8E2: 60        RTS



sub_B8E3:
C - - - - - 0x0178F3 05:B8E3: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x0178F6 05:B8E6: 29 F0     AND #$F0
C - - - - - 0x0178F8 05:B8E8: F0 19     BEQ bra_B903_RTS
C - - - - - 0x0178FA 05:B8EA: 29 10     AND #$10
C - - - - - 0x0178FC 05:B8EC: D0 04     BNE bra_B8F2
C - - - - - 0x0178FE 05:B8EE: C6 B6     DEC ram_00B6_plr_invinc_timer
C - - - - - 0x017900 05:B8F0: F0 12     BEQ bra_B904
bra_B8F2:
C - - - - - 0x017902 05:B8F2: E6 B1     INC ram_00B1_counter
C - - - - - 0x017904 05:B8F4: A5 B1     LDA ram_00B1_counter
C - - - - - 0x017906 05:B8F6: 29 03     AND #$03
C - - - - - 0x017908 05:B8F8: 4A        LSR
; A = 00 01 
C - - - - - 0x017909 05:B8F9: 85 67     STA ram_0067_t39
C - - - - - 0x01790B 05:B8FB: A5 B0     LDA ram_00B0
; A = 00 01 
; bzk optimize, useless AND FC, rewrite this code
C - - - - - 0x01790D 05:B8FD: 29 FC     AND #$FC
C - - - - - 0x01790F 05:B8FF: 05 67     ORA ram_0067_t39
C - - - - - 0x017911 05:B901: 85 B0     STA ram_00B0
bra_B903_RTS:
C - - - - - 0x017913 05:B903: 60        RTS
bra_B904:
C - - - - - 0x017914 05:B904: A9 00     LDA #$00
C - - - - - 0x017916 05:B906: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x017919 05:B909: 85 B0     STA ram_00B0
C - - - - - 0x01791B 05:B90B: 60        RTS



sub_B90C:
C - - - - - 0x01791C 05:B90C: 20 3E B9  JSR sub_B93E
C - - - - - 0x01791F 05:B90F: 8D AC 05  STA ram_05AC_scroll_XY
C - - - - - 0x017922 05:B912: 8D AD 05  STA ram_05AD
C - - - - - 0x017925 05:B915: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x017927 05:B917: 48        PHA
C - - - - - 0x017928 05:B918: A9 04     LDA #con_prg_bank + $04
C - - - - - 0x01792A 05:B91A: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x01792C 05:B91C: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01792F 05:B91F: A5 3C     LDA ram_city
C - - - - - 0x017931 05:B921: 0A        ASL
C - - - - - 0x017932 05:B922: AA        TAX
C - - - - - 0x017933 05:B923: BD 92 88  LDA tbl_0x0088A2,X
C - - - - - 0x017936 05:B926: 85 5B     STA ram_005B_t1C_data
C - - - - - 0x017938 05:B928: BD 93 88  LDA tbl_0x0088A2 + $01,X
C - - - - - 0x01793B 05:B92B: 85 5C     STA ram_005B_t1C_data + $01
C - - - - - 0x01793D 05:B92D: A4 68     LDY ram_0068_t18_data_index
C - - - - - 0x01793F 05:B92F: A5 DA     LDA ram_00DA_flags
C - - - - - 0x017941 05:B931: 29 F0     AND #$F0
C - - - - - 0x017943 05:B933: 11 5B     ORA (ram_005B_t1C_data),Y
C - - - - - 0x017945 05:B935: 85 DA     STA ram_00DA_flags
C - - - - - 0x017947 05:B937: 68        PLA
C - - - - - 0x017948 05:B938: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x01794A 05:B93A: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x01794D 05:B93D: 60        RTS



sub_B93E:
; out
    ; A = scroll XY
    ; ram_0068_t18_data_index
C - - - - - 0x01794E 05:B93E: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x017951 05:B941: 18        CLC
C - - - - - 0x017952 05:B942: 65 43     ADC ram_scroll_X_lo
C - - - - - 0x017954 05:B944: AD 05 04  LDA ram_pos_X_hi_player
C - - - - - 0x017957 05:B947: 65 42     ADC ram_scroll_X_hi
C - - - - - 0x017959 05:B949: 85 67     STA ram_0067_t3A_pos_X_hi
C - - - - - 0x01795B 05:B94B: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x01795E 05:B94E: 18        CLC
C - - - - - 0x01795F 05:B94F: 65 40     ADC ram_scroll_Y_lo
C - - - - - 0x017961 05:B951: 85 68     STA ram_0068_t19_lo
C - - - - - 0x017963 05:B953: B0 09     BCS bra_B95E
C - - - - - 0x017965 05:B955: C9 F0     CMP #$F0
C - - - - - 0x017967 05:B957: B0 04     BCS bra_B95D
C - - - - - 0x017969 05:B959: A9 00     LDA #$00
C - - - - - 0x01796B 05:B95B: F0 03     BEQ bra_B960    ; jmp
bra_B95D:
- - - - - - 0x01796D 05:B95D: 18        CLC
bra_B95E:   ; C = 1
C - - - - - 0x01796E 05:B95E: A9 10     LDA #$10
bra_B960:   ; C = 0
C - - - - - 0x017970 05:B960: 85 69     STA ram_0069_t19_lo
C - - - - - 0x017972 05:B962: AD 08 04  LDA ram_pos_Y_hi_player
C - - - - - 0x017975 05:B965: 65 3F     ADC ram_scroll_Y_hi
C - - - - - 0x017977 05:B967: 85 6A     STA ram_006A_t19_hi
C - - - - - 0x017979 05:B969: A5 69     LDA ram_0069_t19_lo
C - - - - - 0x01797B 05:B96B: 18        CLC
C - - - - - 0x01797C 05:B96C: 65 68     ADC ram_0068_t19_lo
C - - - - - 0x01797E 05:B96E: A9 00     LDA #$00
C - - - - - 0x017980 05:B970: 65 6A     ADC ram_006A_t19_hi
C - - - - - 0x017982 05:B972: 29 0F     AND #$0F
; * 10
C - - - - - 0x017984 05:B974: 0A        ASL
C - - - - - 0x017985 05:B975: 0A        ASL
C - - - - - 0x017986 05:B976: 0A        ASL
C - - - - - 0x017987 05:B977: 0A        ASL
; 
C - - - - - 0x017988 05:B978: 85 68     STA ram_0068_t20
C - - - - - 0x01798A 05:B97A: A5 67     LDA ram_0067_t3A_pos_X_hi
C - - - - - 0x01798C 05:B97C: 29 0F     AND #$0F
C - - - - - 0x01798E 05:B97E: 65 68     ADC ram_0068_t20
C - - - - - 0x017990 05:B980: 85 68     STA ram_0068_t18_data_index
C - - - - - 0x017992 05:B982: 60        RTS



sub_B983:
C - - - - - 0x017993 05:B983: AD CF 05  LDA ram_05CF_flag_and_obj_index
C - - - - - 0x017996 05:B986: 10 33     BPL bra_B9BB
C - - - - - 0x017998 05:B988: 29 0F     AND #$0F
C - - - - - 0x01799A 05:B98A: AA        TAX
C - - - - - 0x01799B 05:B98B: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x01799E 05:B98E: 10 15     BPL bra_B9A5
C - - - - - 0x0179A0 05:B990: 29 40     AND #$40
C - - - - - 0x0179A2 05:B992: F0 11     BEQ bra_B9A5
C - - - - - 0x0179A4 05:B994: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x0179A7 05:B997: 38        SEC
C - - - - - 0x0179A8 05:B998: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x0179AB 05:B99B: B0 04     BCS bra_B9A1
C - - - - - 0x0179AD 05:B99D: 49 FF     EOR #$FF
C - - - - - 0x0179AF 05:B99F: 69 01     ADC #$01
bra_B9A1:
C - - - - - 0x0179B1 05:B9A1: C9 16     CMP #$16
C - - - - - 0x0179B3 05:B9A3: 90 15     BCC bra_B9BA_RTS
bra_B9A5:
C - - - - - 0x0179B5 05:B9A5: A9 00     LDA #$00
C - - - - - 0x0179B7 05:B9A7: 8D CF 05  STA ram_05CF_flag_and_obj_index
; clear
    ; con_041B_flag_01
    ; con_041B_flag_shield_down
C - - - - - 0x0179BA 05:B9AA: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x0179BD 05:B9AD: 29 F0     AND #con_041B_flag_20 + con_041B_flag_somersault + con_041B_flag_release_B + con_041B_flag_useless_release_A
C - - - - - 0x0179BF 05:B9AF: 8D 1B 04  STA ram_041B_player_flags
C - - - - - 0x0179C2 05:B9B2: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0179C5 05:B9B5: 29 DF     AND #$20 ^ $FF
C - - - - - 0x0179C7 05:B9B7: 9D 3D 04  STA ram_043A_obj_flags + $03,X
bra_B9BA_RTS:
C - - - - - 0x0179CA 05:B9BA: 60        RTS
bra_B9BB:
C - - - - - 0x0179CB 05:B9BB: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x0179CD 05:B9BD: F0 FB     BEQ bra_B9BA_RTS
C - - - - - 0x0179CF 05:B9BF: 85 70     STA ram_0070_t09_counter
C - - - - - 0x0179D1 05:B9C1: A2 00     LDX #$00
bra_B9C3_loop:
C - - - - - 0x0179D3 05:B9C3: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x0179D6 05:B9C6: 30 07     BMI bra_B9CF
bra_B9C8:
C - - - - - 0x0179D8 05:B9C8: E8        INX
C - - - - - 0x0179D9 05:B9C9: E0 04     CPX #$04
C - - - - - 0x0179DB 05:B9CB: 90 F6     BCC bra_B9C3_loop
- - - - - - 0x0179DD 05:B9CD: B0 EB     BCS bra_B9BA_RTS    ; jmp
bra_B9CF:
C - - - - - 0x0179DF 05:B9CF: 29 40     AND #$40
C - - - - - 0x0179E1 05:B9D1: D0 06     BNE bra_B9D9
bra_B9D3:
C - - - - - 0x0179E3 05:B9D3: C6 70     DEC ram_0070_t09_counter
C - - - - - 0x0179E5 05:B9D5: F0 E3     BEQ bra_B9BA_RTS
C - - - - - 0x0179E7 05:B9D7: D0 EF     BNE bra_B9C8    ; jmp
bra_B9D9:
C - - - - - 0x0179E9 05:B9D9: 20 DF B9  JSR sub_B9DF
C - - - - - 0x0179EC 05:B9DC: 90 F5     BCC bra_B9D3
C - - - - - 0x0179EE 05:B9DE: 60        RTS



sub_B9DF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0179EF 05:B9DF: AD 15 04  LDA ram_0415_player_counter
C - - - - - 0x0179F2 05:B9E2: C9 20     CMP #$20
C - - - - - 0x0179F4 05:B9E4: 90 74     BCC bra_BA5A
C - - - - - 0x0179F6 05:B9E6: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x0179F9 05:B9E9: 1D 98 04  ORA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x0179FC 05:B9EC: D0 6C     BNE bra_BA5A
C - - - - - 0x0179FE 05:B9EE: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x017A01 05:B9F1: 38        SEC
C - - - - - 0x017A02 05:B9F2: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x017A05 05:B9F5: B0 04     BCS bra_B9FB
C - - - - - 0x017A07 05:B9F7: 49 FF     EOR #$FF
C - - - - - 0x017A09 05:B9F9: 69 01     ADC #$01
bra_B9FB:
C - - - - - 0x017A0B 05:B9FB: C9 15     CMP #$15
C - - - - - 0x017A0D 05:B9FD: B0 5B     BCS bra_BA5A
C - - - - - 0x017A0F 05:B9FF: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017A12 05:BA02: CD 07 04  CMP ram_pos_Y_lo_player
C - - - - - 0x017A15 05:BA05: 90 53     BCC bra_BA5A
C - - - - - 0x017A17 05:BA07: E9 08     SBC #$08
C - - - - - 0x017A19 05:BA09: CD 07 04  CMP ram_pos_Y_lo_player
C - - - - - 0x017A1C 05:BA0C: B0 4C     BCS bra_BA5A
C - - - - - 0x017A1E 05:BA0E: 8A        TXA
C - - - - - 0x017A1F 05:BA0F: 09 80     ORA #$80
C - - - - - 0x017A21 05:BA11: 8D CF 05  STA ram_05CF_flag_and_obj_index
C - - - - - 0x017A24 05:BA14: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017A27 05:BA17: 38        SEC
C - - - - - 0x017A28 05:BA18: E9 07     SBC #$07
C - - - - - 0x017A2A 05:BA1A: 8D 07 04  STA ram_pos_Y_lo_player
C - - - - - 0x017A2D 05:BA1D: BD 57 04  LDA ram_pos_X_fr_obj,X
C - - - - - 0x017A30 05:BA20: 8D 03 04  STA ram_pos_X_fr_player
C - - - - - 0x017A33 05:BA23: BD 7E 04  LDA ram_pos_Y_fr_obj,X
C - - - - - 0x017A36 05:BA26: 8D 06 04  STA ram_pos_Y_fr_player
C - - - - - 0x017A39 05:BA29: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x017A3C 05:BA2C: 09 20     ORA #$20
C - - - - - 0x017A3E 05:BA2E: 9D 3D 04  STA ram_043A_obj_flags + $03,X
C - - - - - 0x017A41 05:BA31: A9 0A     LDA #con_sfx_land_on_ground
C - - - - - 0x017A43 05:BA33: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x017A45 05:BA35: 20 AD FF  JSR sub_0x01FFBD_play_sound
C - - - - - 0x017A48 05:BA38: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017A4B 05:BA3B: 29 5F     AND #($80 + $20) ^ $FF
C - - - - - 0x017A4D 05:BA3D: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x017A50 05:BA40: A9 0A     LDA #con_plr_state_land
C - - - - - 0x017A52 05:BA42: 8D 01 04  STA ram_player_state_1
C - - - - - 0x017A55 05:BA45: 8D 02 04  STA ram_prev_player_state_1
                                       ;LDA #con_040E_plr_state_land
C - - - - - 0x017A58 05:BA48: 8D 0E 04  STA ram_player_state_2
C - - - - - 0x017A5B 05:BA4B: A9 00     LDA #con_00AA_flag_00
C - - - - - 0x017A5D 05:BA4D: 85 AA     STA ram_00AA_plr_flags
C - - - - - 0x017A5F 05:BA4F: A9 08     LDA #$08
C - - - - - 0x017A61 05:BA51: 8D 19 04  STA ram_0419_t03_player_land_timer
C - - - - - 0x017A64 05:BA54: 20 92 AE  JSR sub_AE92
C - - - - - 0x017A67 05:BA57: 38        SEC
; bzk optimize, RTS
C - - - - - 0x017A68 05:BA58: B0 01     BCS bra_BA5B_RTS    ; jmp
bra_BA5A:
C - - - - - 0x017A6A 05:BA5A: 18        CLC
bra_BA5B_RTS:
C - - - - - 0x017A6B 05:BA5B: 60        RTS



sub_BA5C:
C - - - - - 0x017A6C 05:BA5C: AD CF 05  LDA ram_05CF_flag_and_obj_index
C - - - - - 0x017A6F 05:BA5F: 10 42     BPL bra_BAA3_RTS
C - - - - - 0x017A71 05:BA61: 29 0F     AND #$0F
C - - - - - 0x017A73 05:BA63: AA        TAX
C - - - - - 0x017A74 05:BA64: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x017A77 05:BA67: 18        CLC
C - - - - - 0x017A78 05:BA68: 6D 0F 04  ADC ram_spd_X_fr_player
C - - - - - 0x017A7B 05:BA6B: 8D 0F 04  STA ram_spd_X_fr_player
C - - - - - 0x017A7E 05:BA6E: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x017A81 05:BA71: 6D 10 04  ADC ram_spd_X_lo_player
C - - - - - 0x017A84 05:BA74: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x017A87 05:BA77: 10 04     BPL bra_BA7D
C - - - - - 0x017A89 05:BA79: A9 FF     LDA #$FF    ; move left
C - - - - - 0x017A8B 05:BA7B: D0 02     BNE bra_BA7F    ; jmp
bra_BA7D:
C - - - - - 0x017A8D 05:BA7D: A9 00     LDA #$00    ; move right
bra_BA7F:
C - - - - - 0x017A8F 05:BA7F: 8D 11 04  STA ram_spd_X_hi_player
; 
C - - - - - 0x017A92 05:BA82: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x017A95 05:BA85: 18        CLC
C - - - - - 0x017A96 05:BA86: 6D 12 04  ADC ram_spd_Y_fr_player
C - - - - - 0x017A99 05:BA89: 8D 12 04  STA ram_spd_Y_fr_player
C - - - - - 0x017A9C 05:BA8C: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x017A9F 05:BA8F: 6D 13 04  ADC ram_spd_Y_lo_player
C - - - - - 0x017AA2 05:BA92: 8D 13 04  STA ram_spd_Y_lo_player
C - - - - - 0x017AA5 05:BA95: 10 04     BPL bra_BA9B
C - - - - - 0x017AA7 05:BA97: A9 FF     LDA #$FF    ; gaining height
C - - - - - 0x017AA9 05:BA99: D0 02     BNE bra_BA9D    ; jmp
bra_BA9B:
C - - - - - 0x017AAB 05:BA9B: A9 00     LDA #$00    ; falling
bra_BA9D:
C - - - - - 0x017AAD 05:BA9D: 8D 14 04  STA ram_spd_Y_hi_player
; bzk optimize, JMP
C - - - - - 0x017AB0 05:BAA0: 20 A4 BA  JSR sub_BAA4
bra_BAA3_RTS:
C - - - - - 0x017AB3 05:BAA3: 60        RTS



sub_BAA4:
C - - - - - 0x017AB4 05:BAA4: A9 00     LDA #$00
C - - - - - 0x017AB6 05:BAA6: 85 67     STA ram_0067_t3B_hi
C - - - - - 0x017AB8 05:BAA8: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x017ABB 05:BAAB: 10 04     BPL bra_BAB1
; bzk optimize, DEC
C - - - - - 0x017ABD 05:BAAD: A9 FF     LDA #$FF
C - - - - - 0x017ABF 05:BAAF: 85 67     STA ram_0067_t3B_hi
bra_BAB1:
C - - - - - 0x017AC1 05:BAB1: BD 00 05  LDA ram_spd_X_fr_obj,X
C - - - - - 0x017AC4 05:BAB4: 18        CLC
C - - - - - 0x017AC5 05:BAB5: 7D 57 04  ADC ram_pos_X_fr_obj,X
C - - - - - 0x017AC8 05:BAB8: 9D 57 04  STA ram_pos_X_fr_obj,X
C - - - - - 0x017ACB 05:BABB: BD 0D 05  LDA ram_spd_X_lo_obj,X
C - - - - - 0x017ACE 05:BABE: 7D 64 04  ADC ram_pos_X_lo_obj + $03,X
C - - - - - 0x017AD1 05:BAC1: 9D 64 04  STA ram_pos_X_lo_obj + $03,X
C - - - - - 0x017AD4 05:BAC4: A5 67     LDA ram_0067_t3B_hi
C - - - - - 0x017AD6 05:BAC6: 7D 71 04  ADC ram_pos_X_hi_obj + $03,X
C - - - - - 0x017AD9 05:BAC9: 9D 71 04  STA ram_pos_X_hi_obj + $03,X
C - - - - - 0x017ADC 05:BACC: A9 00     LDA #$00
C - - - - - 0x017ADE 05:BACE: 85 67     STA ram_0067_t3C_hi
C - - - - - 0x017AE0 05:BAD0: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x017AE3 05:BAD3: 10 04     BPL bra_BAD9
; bzk optimize, DEC
C - - - - - 0x017AE5 05:BAD5: A9 FF     LDA #$FF
C - - - - - 0x017AE7 05:BAD7: 85 67     STA ram_0067_t3C_hi
bra_BAD9:
C - - - - - 0x017AE9 05:BAD9: BD 1A 05  LDA ram_spd_Y_fr_obj,X
C - - - - - 0x017AEC 05:BADC: 18        CLC
C - - - - - 0x017AED 05:BADD: 7D 7E 04  ADC ram_pos_Y_fr_obj,X
C - - - - - 0x017AF0 05:BAE0: 9D 7E 04  STA ram_pos_Y_fr_obj,X
C - - - - - 0x017AF3 05:BAE3: BD 27 05  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x017AF6 05:BAE6: 7D 8B 04  ADC ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017AF9 05:BAE9: 9D 8B 04  STA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017AFC 05:BAEC: A5 67     LDA ram_0067_t3C_hi
C - - - - - 0x017AFE 05:BAEE: 7D 98 04  ADC ram_pos_Y_hi_obj + $03,X
C - - - - - 0x017B01 05:BAF1: 9D 98 04  STA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x017B04 05:BAF4: 60        RTS



sub_BAF5_melee_damage_to_enemy:
C - - - - - 0x017B05 05:BAF5: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x017B07 05:BAF7: F0 7D     BEQ bra_BB76_RTS
C - - - - - 0x017B09 05:BAF9: 85 70     STA ram_0070_t10_counter
C - - - - - 0x017B0B 05:BAFB: A2 00     LDX #$00
bra_BAFD_loop:
C - - - - - 0x017B0D 05:BAFD: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x017B10 05:BB00: 30 07     BMI bra_BB09_enemy_exists
bra_BB02_loop:
C - - - - - 0x017B12 05:BB02: E8        INX
C - - - - - 0x017B13 05:BB03: E0 04     CPX #$04
C - - - - - 0x017B15 05:BB05: 90 F6     BCC bra_BAFD_loop
- - - - - - 0x017B17 05:BB07: B0 6D     BCS bra_BB76_RTS    ; jmp
bra_BB09_enemy_exists:
C - - - - - 0x017B19 05:BB09: 29 50     AND #$40 + $10
C - - - - - 0x017B1B 05:BB0B: D0 0D     BNE bra_BB1A_next_object
C - - - - - 0x017B1D 05:BB0D: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x017B20 05:BB10: F0 08     BEQ bra_BB1A_next_object
C - - - - - 0x017B22 05:BB12: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x017B25 05:BB15: 1D 98 04  ORA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x017B28 05:BB18: F0 06     BEQ bra_BB20
bra_BB1A_next_object:
C - - - - - 0x017B2A 05:BB1A: C6 70     DEC ram_0070_t10_counter
C - - - - - 0x017B2C 05:BB1C: D0 E4     BNE bra_BB02_loop
C - - - - - 0x017B2E 05:BB1E: F0 56     BEQ bra_BB76_RTS    ; jmp if no more objects
bra_BB20:
C - - - - - 0x017B30 05:BB20: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x017B33 05:BB23: 38        SEC
C - - - - - 0x017B34 05:BB24: ED 04 04  SBC ram_pos_X_lo_player
C - - - - - 0x017B37 05:BB27: B0 04     BCS bra_BB2D
C - - - - - 0x017B39 05:BB29: 49 FF     EOR #$FF
C - - - - - 0x017B3B 05:BB2B: 69 01     ADC #$01
bra_BB2D:
C - - - - - 0x017B3D 05:BB2D: C9 34     CMP #$34    ; hitbox X
C - - - - - 0x017B3F 05:BB2F: B0 E9     BCS bra_BB1A_next_object
C - - - - - 0x017B41 05:BB31: 86 71     STX ram_0071_t15_obj_index
C - - - - - 0x017B43 05:BB33: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017B46 05:BB36: 38        SEC
C - - - - - 0x017B47 05:BB37: ED 07 04  SBC ram_pos_Y_lo_player
C - - - - - 0x017B4A 05:BB3A: B0 04     BCS bra_BB40
C - - - - - 0x017B4C 05:BB3C: 49 FF     EOR #$FF
C - - - - - 0x017B4E 05:BB3E: 69 01     ADC #$01
bra_BB40:
C - - - - - 0x017B50 05:BB40: C9 30     CMP #$30    ; hitbox Y
C - - - - - 0x017B52 05:BB42: B0 D6     BCS bra_BB1A_next_object
C - - - - - 0x017B54 05:BB44: A5 67     LDA ram_0067_t32_table_index
C - - - - - 0x017B56 05:BB46: 0A        ASL
C - - - - - 0x017B57 05:BB47: AA        TAX
C - - - - - 0x017B58 05:BB48: BD CE A6  LDA tbl_A6CE,X
C - - - - - 0x017B5B 05:BB4B: 85 5B     STA ram_005B_t1B_data
C - - - - - 0x017B5D 05:BB4D: BD CF A6  LDA tbl_A6CE + $01,X
C - - - - - 0x017B60 05:BB50: 85 5C     STA ram_005B_t1B_data + $01
C - - - - - 0x017B62 05:BB52: A5 A4     LDA ram_plr_direction
; * 04
C - - - - - 0x017B64 05:BB54: 0A        ASL
C - - - - - 0x017B65 05:BB55: 0A        ASL
; 
C - - - - - 0x017B66 05:BB56: A8        TAY
C - - - - - 0x017B67 05:BB57: B1 5B     LDA (ram_005B_t1B_data),Y
C - - - - - 0x017B69 05:BB59: 18        CLC
C - - - - - 0x017B6A 05:BB5A: 6D 07 04  ADC ram_pos_Y_lo_player
C - - - - - 0x017B6D 05:BB5D: 85 6A     STA ram_006A_t16_pos_Y_lo
C - - - - - 0x017B6F 05:BB5F: C8        INY
C - - - - - 0x017B70 05:BB60: C8        INY
C - - - - - 0x017B71 05:BB61: B1 5B     LDA (ram_005B_t1B_data),Y
C - - - - - 0x017B73 05:BB63: 18        CLC
C - - - - - 0x017B74 05:BB64: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x017B77 05:BB67: 85 69     STA ram_0069_t18_pos_X_lo
C - - - - - 0x017B79 05:BB69: A9 02     LDA #$02
C - - - - - 0x017B7B 05:BB6B: 85 68     STA ram_0068_t16
C - - - - - 0x017B7D 05:BB6D: A6 71     LDX ram_0071_t15_obj_index
C - - - - - 0x017B7F 05:BB6F: 20 98 FF  JSR sub_0x01FFA8_objects_collision
C - - - - - 0x017B82 05:BB72: B0 03     BCS bra_BB77
C - - - - - 0x017B84 05:BB74: 90 A4     BCC bra_BB1A_next_object    ; jmp
bra_BB76_RTS:
C - - - - - 0x017B86 05:BB76: 60        RTS
bra_BB77:
C - - - - - 0x017B87 05:BB77: A5 A8     LDA ram_plr_index
C - - - - - 0x017B89 05:BB79: A8        TAY
; * 04
C - - - - - 0x017B8A 05:BB7A: 0A        ASL
C - - - - - 0x017B8B 05:BB7B: 0A        ASL
; 
C - - - - - 0x017B8C 05:BB7C: 18        CLC
C - - - - - 0x017B8D 05:BB7D: 79 D7 03  ADC ram_player_power,Y
C - - - - - 0x017B90 05:BB80: A8        TAY
C - - - - - 0x017B91 05:BB81: B9 8A BB  LDA tbl_BB8A_melee_damage_to_enemy,Y
C - - - - - 0x017B94 05:BB84: A0 00     LDY #$00
; bzk optimize, JMP
C - - - - - 0x017B96 05:BB86: 20 FF B7  JSR sub_B7FF_deal_damage_to_enemy
C - - - - - 0x017B99 05:BB89: 60        RTS



tbl_BB8A_melee_damage_to_enemy:
; punch/kick
; 00 captain
- D 1 - - - 0x017B9A 05:BB8A: 02        .byte $02   ; 00 
- D 1 - - - 0x017B9B 05:BB8B: 03        .byte $03   ; 01 
- D 1 - - - 0x017B9C 05:BB8C: 05        .byte $05   ; 02 
- D 1 - - - 0x017B9D 05:BB8D: 07        .byte $07   ; 03 
; 01 hawk
- D 1 - - - 0x017B9E 05:BB8E: 01        .byte $01   ; 00 
- D 1 - - - 0x017B9F 05:BB8F: 02        .byte $02   ; 01 
- - - - - - 0x017BA0 05:BB90: 03        .byte $03   ; 02 
- - - - - - 0x017BA1 05:BB91: 04        .byte $04   ; 03 



sub_BB92:
C - - - - - 0x017BA2 05:BB92: AD 22 04  LDA ram_0422_flag
C - - - - - 0x017BA5 05:BB95: 10 12     BPL bra_BBA9_RTS
C - - - - - 0x017BA7 05:BB97: AD 23 04  LDA ram_copy_hawk_power
C - - - - - 0x017BAA 05:BB9A: 0A        ASL
C - - - - - 0x017BAB 05:BB9B: AA        TAX
C - - - - - 0x017BAC 05:BB9C: BD AA BB  LDA tbl_BBAA,X
C - - - - - 0x017BAF 05:BB9F: 85 5B     STA ram_005B_t56_jmp
C - - - - - 0x017BB1 05:BBA1: BD AB BB  LDA tbl_BBAA + $01,X
C - - - - - 0x017BB4 05:BBA4: 85 5C     STA ram_005B_t56_jmp + $01
C - - - - - 0x017BB6 05:BBA6: 6C 5B 00  JMP (ram_005B_t56_jmp)
bra_BBA9_RTS:
C - - - - - 0x017BB9 05:BBA9: 60        RTS



tbl_BBAA:
- D 1 - - - 0x017BBA 05:BBAA: B2 BB     .word ofs_025_BBB2_00
- D 1 - - - 0x017BBC 05:BBAC: B2 BB     .word ofs_025_BBB2_01
- D 1 - - - 0x017BBE 05:BBAE: B2 BB     .word ofs_025_BBB2_02
- D 1 - - - 0x017BC0 05:BBB0: B2 BB     .word ofs_025_BBB2_03



ofs_025_BBB2_00:
ofs_025_BBB2_01:
ofs_025_BBB2_02:
ofs_025_BBB2_03:
C - - J - - 0x017BC2 05:BBB2: 20 87 A9  JSR sub_A987
C - - - - - 0x017BC5 05:BBB5: 20 E8 A9  JSR sub_A9E8
C - - - - - 0x017BC8 05:BBB8: 20 1A BD  JSR sub_BD1A
C - - - - - 0x017BCB 05:BBBB: B0 03     BCS bra_BBC0_RTS
; bzk optimize, JMP
C - - - - - 0x017BCD 05:BBBD: 20 C1 BB  JSR sub_BBC1
bra_BBC0_RTS:
C - - - - - 0x017BD0 05:BBC0: 60        RTS



sub_BBC1:
C - - - - - 0x017BD1 05:BBC1: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x017BD4 05:BBC4: 0D 29 04  ORA ram_pos_Y_hi_shield
C - - - - - 0x017BD7 05:BBC7: D0 3F     BNE bra_BC08
C - - - - - 0x017BD9 05:BBC9: 20 0E BC  JSR sub_BC0E_check_shield_capsule_hit
C - - - - - 0x017BDC 05:BBCC: B0 19     BCS bra_BBE7
C - - - - - 0x017BDE 05:BBCE: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017BE1 05:BBD1: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x017BE3 05:BBD3: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x017BE6 05:BBD6: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x017BE8 05:BBD8: A9 00     LDA #$00
C - - - - - 0x017BEA 05:BBDA: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x017BEC 05:BBDC: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x017BEE 05:BBDE: 20 A1 FF  JSR sub_0x01FFB1
C - - - - - 0x017BF1 05:BBE1: A5 BC     LDA ram_00BC
C - - - - - 0x017BF3 05:BBE3: 29 05     AND #$05
C - - - - - 0x017BF5 05:BBE5: F0 26     BEQ bra_BC0D_RTS
bra_BBE7:
C - - - - - 0x017BF7 05:BBE7: AD 23 04  LDA ram_copy_hawk_power
C - - - - - 0x017BFA 05:BBEA: C9 02     CMP #$02
C - - - - - 0x017BFC 05:BBEC: 90 1A     BCC bra_BC08
C - - - - - 0x017BFE 05:BBEE: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017C01 05:BBF1: 85 68     STA ram_0068_t06_pos_X_lo
C - - - - - 0x017C03 05:BBF3: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x017C06 05:BBF6: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x017C08 05:BBF8: A9 00     LDA #$00
C - - - - - 0x017C0A 05:BBFA: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x017C0C 05:BBFC: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x017C0E 05:BBFE: 20 B6 FF  JSR sub_0x01FFC6
C - - - - - 0x017C11 05:BC01: A9 1B     LDA #con_sfx_explosion
C - - - - - 0x017C13 05:BC03: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x017C15 05:BC05: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_BC08:
C - - - - - 0x017C18 05:BC08: A9 00     LDA #$00
C - - - - - 0x017C1A 05:BC0A: 8D 22 04  STA ram_0422_flag
bra_BC0D_RTS:
C - - - - - 0x017C1D 05:BC0D: 60        RTS



sub_BC0E_check_shield_capsule_hit:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x017C1E 05:BC0E: AD 29 04  LDA ram_pos_Y_hi_shield
C - - - - - 0x017C21 05:BC11: 0D 26 04  ORA ram_pos_X_hi_shield
C - - - - - 0x017C24 05:BC14: D0 2F     BNE bra_BC45
C - - - - - 0x017C26 05:BC16: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017C29 05:BC19: C9 0A     CMP #$0A
C - - - - - 0x017C2B 05:BC1B: 90 28     BCC bra_BC45
C - - - - - 0x017C2D 05:BC1D: C9 F6     CMP #$F6
C - - - - - 0x017C2F 05:BC1F: B0 24     BCS bra_BC45
C - - - - - 0x017C31 05:BC21: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x017C34 05:BC24: 85 B9     STA ram_00B9_pos_Y_lo
C - - - - - 0x017C36 05:BC26: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017C39 05:BC29: C9 04     CMP #$04
C - - - - - 0x017C3B 05:BC2B: 90 17     BCC bra_BC44_RTS
C - - - - - 0x017C3D 05:BC2D: C9 FC     CMP #$FC
C - - - - - 0x017C3F 05:BC2F: B0 14     BCS bra_BC45
C - - - - - 0x017C41 05:BC31: 85 B7     STA ram_00B7_pos_X_lo
C - - - - - 0x017C43 05:BC33: A9 00     LDA #$00
C - - - - - 0x017C45 05:BC35: 85 BA     STA ram_00BA_pos_Y_hi
C - - - - - 0x017C47 05:BC37: 85 B8     STA ram_00B8_pos_X_hi
C - - - - - 0x017C49 05:BC39: 20 B9 FF  JSR sub_0x01FFC9
C - - - - - 0x017C4C 05:BC3C: A5 6E     LDA ram_006E_t01
C - - - - - 0x017C4E 05:BC3E: F0 05     BEQ bra_BC45
C - - - - - 0x017C50 05:BC40: 20 BC FF  JSR sub_0x01FFCC
C - - - - - 0x017C53 05:BC43: 38        SEC
bra_BC44_RTS:
C - - - - - 0x017C54 05:BC44: 60        RTS
bra_BC45:
C - - - - - 0x017C55 05:BC45: 18        CLC
C - - - - - 0x017C56 05:BC46: 60        RTS



sub_BC47:
C - - - - - 0x017C57 05:BC47: AD 34 04  LDA ram_0434_shield_fly_timer
C - - - - - 0x017C5A 05:BC4A: 0A        ASL
C - - - - - 0x017C5B 05:BC4B: AA        TAX
C - - - - - 0x017C5C 05:BC4C: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x017C5F 05:BC4F: 38        SEC
C - - - - - 0x017C60 05:BC50: FD B4 BC  SBC tbl_BCB4,X
C - - - - - 0x017C63 05:BC53: 8D 28 04  STA ram_pos_Y_lo_shield
C - - - - - 0x017C66 05:BC56: BD B5 BC  LDA tbl_BCB4 + $01,X
C - - - - - 0x017C69 05:BC59: 85 67     STA ram_0067_t3D_pos_X_lo
C - - - - - 0x017C6B 05:BC5B: A5 A4     LDA ram_plr_direction
C - - - - - 0x017C6D 05:BC5D: D0 0C     BNE bra_BC6B_right
; if left
C - - - - - 0x017C6F 05:BC5F: AD 04 04  LDA ram_pos_X_lo_player
C - - - - - 0x017C72 05:BC62: 38        SEC
C - - - - - 0x017C73 05:BC63: E5 67     SBC ram_0067_t3D_pos_X_lo
C - - - - - 0x017C75 05:BC65: 8D 25 04  STA ram_pos_X_lo_shield
C - - - - - 0x017C78 05:BC68: 4C 74 BC  JMP loc_BC74
bra_BC6B_right:
C - - - - - 0x017C7B 05:BC6B: A5 67     LDA ram_0067_t3D_pos_X_lo
C - - - - - 0x017C7D 05:BC6D: 18        CLC
C - - - - - 0x017C7E 05:BC6E: 6D 04 04  ADC ram_pos_X_lo_player
C - - - - - 0x017C81 05:BC71: 8D 25 04  STA ram_pos_X_lo_shield
loc_BC74:
C D 1 - - - 0x017C84 05:BC74: A9 00     LDA #$00
C - - - - - 0x017C86 05:BC76: 8D 26 04  STA ram_pos_X_hi_shield
C - - - - - 0x017C89 05:BC79: 8D 24 04  STA ram_pos_X_fr_shield
C - - - - - 0x017C8C 05:BC7C: 8D 29 04  STA ram_pos_Y_hi_shield
C - - - - - 0x017C8F 05:BC7F: 8D 27 04  STA ram_pos_Y_fr_shield
C - - - - - 0x017C92 05:BC82: A9 03     LDA #con_0067_t12_03
C - - - - - 0x017C94 05:BC84: 85 67     STA ram_0067_t12_table_index
C - - - - - 0x017C96 05:BC86: AE 35 04  LDX ram_0435_shield_fly_direction
C - - - - - 0x017C99 05:BC89: BD C2 BC  LDA tbl_BCC2,X
C - - - - - 0x017C9C 05:BC8C: 85 68     STA ram_0068_t08
C - - - - - 0x017C9E 05:BC8E: 20 A7 FF  JSR sub_0x01FFB7
C - - - - - 0x017CA1 05:BC91: A5 6A     LDA ram_006A_t06_spd_X_lo_bullet_bounce
C - - - - - 0x017CA3 05:BC93: 8D 31 04  STA ram_0431_pos_X_lo_projectile
C - - - - - 0x017CA6 05:BC96: A5 6B     LDA ram_006B_t13_spd_X_fr_bullet_bounce
C - - - - - 0x017CA8 05:BC98: 8D 30 04  STA ram_0430_pos_X_fr_projectile
C - - - - - 0x017CAB 05:BC9B: A5 6D     LDA ram_006D_t09_spd_Y_lo_bullet_bounce
C - - - - - 0x017CAD 05:BC9D: 8D 33 04  STA ram_0433_pos_Y_lo_projectile
C - - - - - 0x017CB0 05:BCA0: A5 6E     LDA ram_006E_t09_pos_Y_fr_bullet_bounce
C - - - - - 0x017CB2 05:BCA2: 8D 32 04  STA ram_0432_pos_Y_fr_projectile
C - - - - - 0x017CB5 05:BCA5: AD D8 03  LDA ram_hawk_power
C - - - - - 0x017CB8 05:BCA8: 8D 23 04  STA ram_copy_hawk_power
C - - - - - 0x017CBB 05:BCAB: 20 C7 BC  JSR sub_BCC7
C - - - - - 0x017CBE 05:BCAE: A9 81     LDA #$80 + $01
C - - - - - 0x017CC0 05:BCB0: 8D 22 04  STA ram_0422_flag
C - - - - - 0x017CC3 05:BCB3: 60        RTS



tbl_BCB4:
;                                              +---------- Y
;                                              |    +----- X
;                                              |    |
- D 1 - - - 0x017CC4 05:BCB4: 21        .byte $21, $0E   ; 00 
- D 1 - - - 0x017CC6 05:BCB6: 1D        .byte $1D, $0A   ; 01 
- D 1 - - - 0x017CC8 05:BCB8: 24        .byte $24, $00   ; 02 
- D 1 - - - 0x017CCA 05:BCBA: 12        .byte $12, $0C   ; 03 
- D 1 - - - 0x017CCC 05:BCBC: 1C        .byte $1C, $0D   ; 04 
- D 1 - - - 0x017CCE 05:BCBE: 20        .byte $20, $0A   ; 05 
- D 1 - - - 0x017CD0 05:BCC0: 24        .byte $24, $00   ; 06 



tbl_BCC2:
- D 1 - - - 0x017CD2 05:BCC2: 00        .byte $00   ; 00 
- D 1 - - - 0x017CD3 05:BCC3: 02        .byte $02   ; 01 
- D 1 - - - 0x017CD4 05:BCC4: 04        .byte $04   ; 02 
- D 1 - - - 0x017CD5 05:BCC5: 0C        .byte $0C   ; 03 
- D 1 - - - 0x017CD6 05:BCC6: 0E        .byte $0E   ; 04 



sub_BCC7:
C - - - - - 0x017CD7 05:BCC7: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x017CD9 05:BCC9: 48        PHA
C - - - - - 0x017CDA 05:BCCA: A9 05     LDA #con_prg_bank + $05
C - - - - - 0x017CDC 05:BCCC: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x017CDE 05:BCCE: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x017CE1 05:BCD1: AD 23 04  LDA ram_copy_hawk_power
C - - - - - 0x017CE4 05:BCD4: 0A        ASL
C - - - - - 0x017CE5 05:BCD5: AA        TAX
C - - - - - 0x017CE6 05:BCD6: BD FC 89  LDA tbl_0x00AA0C,X
C - - - - - 0x017CE9 05:BCD9: 85 5D     STA ram_005D_t08_data
C - - - - - 0x017CEB 05:BCDB: BD FD 89  LDA tbl_0x00AA0C + $01,X
C - - - - - 0x017CEE 05:BCDE: 85 5E     STA ram_005D_t08_data + $01
C - - - - - 0x017CF0 05:BCE0: AD 35 04  LDA ram_0435_shield_fly_direction
C - - - - - 0x017CF3 05:BCE3: 0A        ASL
C - - - - - 0x017CF4 05:BCE4: A8        TAY
C - - - - - 0x017CF5 05:BCE5: B1 5D     LDA (ram_005D_t08_data),Y
C - - - - - 0x017CF7 05:BCE7: 85 5B     STA ram_005B_t2F_data
C - - - - - 0x017CF9 05:BCE9: C8        INY
C - - - - - 0x017CFA 05:BCEA: B1 5D     LDA (ram_005D_t08_data),Y
C - - - - - 0x017CFC 05:BCEC: 85 5C     STA ram_005B_t2F_data + $01
C - - - - - 0x017CFE 05:BCEE: A0 00     LDY #$00
C - - - - - 0x017D00 05:BCF0: B1 5B     LDA (ram_005B_t2F_data),Y
C - - - - - 0x017D02 05:BCF2: 29 7F     AND #$7F
C - - - - - 0x017D04 05:BCF4: 85 25     STA ram_chr_bank_spr + $01
C - - - - - 0x017D06 05:BCF6: C8        INY
C - - - - - 0x017D07 05:BCF7: C8        INY ; 02
C - - - - - 0x017D08 05:BCF8: B1 5B     LDA (ram_005B_t2F_data),Y
C - - - - - 0x017D0A 05:BCFA: 8D 2E 04  STA ram_042E_player_timer
C - - - - - 0x017D0D 05:BCFD: C8        INY ; 03
C - - - - - 0x017D0E 05:BCFE: B1 5B     LDA (ram_005B_t2F_data),Y
C - - - - - 0x017D10 05:BD00: 8D 2A 04  STA ram_042A_spr_data_ptr_lo
C - - - - - 0x017D13 05:BD03: C8        INY ; 04
C - - - - - 0x017D14 05:BD04: B1 5B     LDA (ram_005B_t2F_data),Y
C - - - - - 0x017D16 05:BD06: 8D 2B 04  STA ram_042B_spr_data_ptr_hi
C - - - - - 0x017D19 05:BD09: A5 5B     LDA ram_005B_t2F_data
C - - - - - 0x017D1B 05:BD0B: 8D 2C 04  STA ram_042C_ptr_lo
C - - - - - 0x017D1E 05:BD0E: A5 5C     LDA ram_005B_t2F_data + $01
C - - - - - 0x017D20 05:BD10: 8D 2D 04  STA ram_042D_ptr_hi
C - - - - - 0x017D23 05:BD13: 68        PLA
C - - - - - 0x017D24 05:BD14: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x017D26 05:BD16: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x017D29 05:BD19: 60        RTS



sub_BD1A:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x017D2A 05:BD1A: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x017D2C 05:BD1C: F0 2D     BEQ bra_BD4B
C - - - - - 0x017D2E 05:BD1E: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x017D31 05:BD21: 0D 29 04  ORA ram_pos_Y_hi_shield
C - - - - - 0x017D34 05:BD24: D0 25     BNE bra_BD4B
; A = 00
C - - - - - 0x017D36 05:BD26: 85 70     STA ram_0070_t15_counter
C - - - - - 0x017D38 05:BD28: A2 00     LDX #$00
bra_BD2A_loop:
C - - - - - 0x017D3A 05:BD2A: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x017D3D 05:BD2D: 30 07     BMI bra_BD36
bra_BD2F:
C - - - - - 0x017D3F 05:BD2F: E8        INX
C - - - - - 0x017D40 05:BD30: E0 04     CPX #$04
C - - - - - 0x017D42 05:BD32: 90 F6     BCC bra_BD2A_loop
C - - - - - 0x017D44 05:BD34: B0 15     BCS bra_BD4B    ; jmp
bra_BD36:
C - - - - - 0x017D46 05:BD36: 29 50     AND #$50
C - - - - - 0x017D48 05:BD38: D0 0D     BNE bra_BD47
C - - - - - 0x017D4A 05:BD3A: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x017D4D 05:BD3D: F0 08     BEQ bra_BD47
C - - - - - 0x017D4F 05:BD3F: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x017D52 05:BD42: 1D 98 04  ORA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x017D55 05:BD45: F0 06     BEQ bra_BD4D
bra_BD47:
; bzk optimize, repalce with JMP or something, remove 0070
C - - - - - 0x017D57 05:BD47: C6 70     DEC ram_0070_t15_counter
C - - - - - 0x017D59 05:BD49: D0 E4     BNE bra_BD2F    ; jmp
bra_BD4B:
C - - - - - 0x017D5B 05:BD4B: 18        CLC
C - - - - - 0x017D5C 05:BD4C: 60        RTS
bra_BD4D:
C - - - - - 0x017D5D 05:BD4D: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x017D60 05:BD50: 38        SEC
C - - - - - 0x017D61 05:BD51: ED 25 04  SBC ram_pos_X_lo_shield
C - - - - - 0x017D64 05:BD54: B0 04     BCS bra_BD5A
C - - - - - 0x017D66 05:BD56: 49 FF     EOR #$FF
C - - - - - 0x017D68 05:BD58: 69 01     ADC #$01
bra_BD5A:
C - - - - - 0x017D6A 05:BD5A: C9 14     CMP #$14
C - - - - - 0x017D6C 05:BD5C: B0 E9     BCS bra_BD47
C - - - - - 0x017D6E 05:BD5E: 86 71     STX ram_0071_t16_obj_index
C - - - - - 0x017D70 05:BD60: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017D73 05:BD63: 38        SEC
C - - - - - 0x017D74 05:BD64: ED 28 04  SBC ram_pos_Y_lo_shield
C - - - - - 0x017D77 05:BD67: B0 04     BCS bra_BD6D
C - - - - - 0x017D79 05:BD69: 49 FF     EOR #$FF
C - - - - - 0x017D7B 05:BD6B: 69 01     ADC #$01
bra_BD6D:
C - - - - - 0x017D7D 05:BD6D: C9 30     CMP #$30
C - - - - - 0x017D7F 05:BD6F: B0 D6     BCS bra_BD47
C - - - - - 0x017D81 05:BD71: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017D84 05:BD74: 85 69     STA ram_0069_t18_pos_X_lo
C - - - - - 0x017D86 05:BD76: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x017D89 05:BD79: 85 6A     STA ram_006A_t16_pos_Y_lo
C - - - - - 0x017D8B 05:BD7B: A9 02     LDA #$02
C - - - - - 0x017D8D 05:BD7D: 85 68     STA ram_0068_t16
C - - - - - 0x017D8F 05:BD7F: 20 98 FF  JSR sub_0x01FFA8_objects_collision
C - - - - - 0x017D92 05:BD82: 90 C3     BCC bra_BD47
C - - - - - 0x017D94 05:BD84: AE D8 03  LDX ram_hawk_power
C - - - - - 0x017D97 05:BD87: BD BA BD  LDA tbl_BDBA_hawk_arrow_damage,X
C - - - - - 0x017D9A 05:BD8A: BC BE BD  LDY tbl_BDBE,X
C - - - - - 0x017D9D 05:BD8D: A6 71     LDX ram_0071_t16_obj_index
C - - - - - 0x017D9F 05:BD8F: 20 FF B7  JSR sub_B7FF_deal_damage_to_enemy
C - - - - - 0x017DA2 05:BD92: AD 23 04  LDA ram_copy_hawk_power
C - - - - - 0x017DA5 05:BD95: C9 02     CMP #$02
C - - - - - 0x017DA7 05:BD97: 90 1A     BCC bra_BDB3
C - - - - - 0x017DA9 05:BD99: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017DAC 05:BD9C: 85 68     STA ram_0068_t06_pos_X_lo
C - - - - - 0x017DAE 05:BD9E: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x017DB1 05:BDA1: 85 6A     STA ram_006A_t04_pos_Y_lo
C - - - - - 0x017DB3 05:BDA3: A9 00     LDA #$00
C - - - - - 0x017DB5 05:BDA5: 85 67     STA ram_0067_t0B_pos_X_hi
C - - - - - 0x017DB7 05:BDA7: 85 69     STA ram_0069_t15_pos_Y_hi
C - - - - - 0x017DB9 05:BDA9: 20 B6 FF  JSR sub_0x01FFC6
C - - - - - 0x017DBC 05:BDAC: A9 1B     LDA #con_sfx_explosion
C - - - - - 0x017DBE 05:BDAE: 85 77     STA ram_0077_t03_sound_id
C - - - - - 0x017DC0 05:BDB0: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_BDB3:
C - - - - - 0x017DC3 05:BDB3: A9 00     LDA #$00
C - - - - - 0x017DC5 05:BDB5: 8D 22 04  STA ram_0422_flag
C - - - - - 0x017DC8 05:BDB8: 38        SEC
C - - - - - 0x017DC9 05:BDB9: 60        RTS



tbl_BDBA_hawk_arrow_damage:
- D 1 - - - 0x017DCA 05:BDBA: 01        .byte $01   ; 00 
- D 1 - - - 0x017DCB 05:BDBB: 02        .byte $02   ; 01 
- D 1 - - - 0x017DCC 05:BDBC: 04        .byte $04   ; 02 
- D 1 - - - 0x017DCD 05:BDBD: 06        .byte $06   ; 03 



tbl_BDBE:
- D 1 - - - 0x017DCE 05:BDBE: 00        .byte $00   ; 00 
- D 1 - - - 0x017DCF 05:BDBF: 00        .byte $00   ; 01 
- D 1 - - - 0x017DD0 05:BDC0: 01        .byte $01   ; 02 
- D 1 - - - 0x017DD1 05:BDC1: 01        .byte $01   ; 03 



sub_BDC2:
C - - - - - 0x017DD2 05:BDC2: A5 CA     LDA ram_00CA_objects_counter
C - - - - - 0x017DD4 05:BDC4: F0 2D     BEQ bra_BDF3
C - - - - - 0x017DD6 05:BDC6: AD 26 04  LDA ram_pos_X_hi_shield
C - - - - - 0x017DD9 05:BDC9: 0D 29 04  ORA ram_pos_Y_hi_shield
C - - - - - 0x017DDC 05:BDCC: D0 25     BNE bra_BDF3
; A = 00
C - - - - - 0x017DDE 05:BDCE: 85 70     STA ram_0070_t16_counter
C - - - - - 0x017DE0 05:BDD0: A2 00     LDX #$00
bra_BDD2_loop:
C - - - - - 0x017DE2 05:BDD2: BD 3D 04  LDA ram_043A_obj_flags + $03,X
C - - - - - 0x017DE5 05:BDD5: 30 07     BMI bra_BDDE
bra_BDD7:
C - - - - - 0x017DE7 05:BDD7: E8        INX
C - - - - - 0x017DE8 05:BDD8: E0 04     CPX #$04
C - - - - - 0x017DEA 05:BDDA: 90 F6     BCC bra_BDD2_loop
C - - - - - 0x017DEC 05:BDDC: B0 15     BCS bra_BDF3    ; jmp
bra_BDDE:
C - - - - - 0x017DEE 05:BDDE: 29 50     AND #$50
C - - - - - 0x017DF0 05:BDE0: D0 0D     BNE bra_BDEF
C - - - - - 0x017DF2 05:BDE2: BD 6C 05  LDA ram_056C_obj,X
C - - - - - 0x017DF5 05:BDE5: F0 08     BEQ bra_BDEF
C - - - - - 0x017DF7 05:BDE7: BD 71 04  LDA ram_pos_X_hi_obj + $03,X
C - - - - - 0x017DFA 05:BDEA: 1D 98 04  ORA ram_pos_Y_hi_obj + $03,X
C - - - - - 0x017DFD 05:BDED: F0 17     BEQ bra_BE06
bra_BDEF:
; bzk optimize, repalce with JMP or something, remove 0070
C - - - - - 0x017DFF 05:BDEF: C6 70     DEC ram_0070_t16_counter
C - - - - - 0x017E01 05:BDF1: D0 E4     BNE bra_BDD7    ; jmp
bra_BDF3:
loc_BDF3:
C D 1 - - - 0x017E03 05:BDF3: AD 36 04  LDA ram_0436_shield_capsule_hit_delay_timer
C - - - - - 0x017E06 05:BDF6: D0 0A     BNE bra_BE02
C - - - - - 0x017E08 05:BDF8: 20 0E BC  JSR sub_BC0E_check_shield_capsule_hit
C - - - - - 0x017E0B 05:BDFB: 90 08     BCC bra_BE05_RTS
C - - - - - 0x017E0D 05:BDFD: A9 08     LDA #$08
C - - - - - 0x017E0F 05:BDFF: 8D 36 04  STA ram_0436_shield_capsule_hit_delay_timer
bra_BE02:
C - - - - - 0x017E12 05:BE02: CE 36 04  DEC ram_0436_shield_capsule_hit_delay_timer
bra_BE05_RTS:
C - - - - - 0x017E15 05:BE05: 60        RTS
bra_BE06:
C - - - - - 0x017E16 05:BE06: BD 64 04  LDA ram_pos_X_lo_obj + $03,X
C - - - - - 0x017E19 05:BE09: 38        SEC
C - - - - - 0x017E1A 05:BE0A: ED 25 04  SBC ram_pos_X_lo_shield
C - - - - - 0x017E1D 05:BE0D: B0 04     BCS bra_BE13
C - - - - - 0x017E1F 05:BE0F: 49 FF     EOR #$FF
C - - - - - 0x017E21 05:BE11: 69 01     ADC #$01
bra_BE13:
C - - - - - 0x017E23 05:BE13: C9 14     CMP #$14
C - - - - - 0x017E25 05:BE15: B0 D8     BCS bra_BDEF
C - - - - - 0x017E27 05:BE17: BD 8B 04  LDA ram_pos_Y_lo_obj + $03,X
C - - - - - 0x017E2A 05:BE1A: 38        SEC
C - - - - - 0x017E2B 05:BE1B: ED 28 04  SBC ram_pos_Y_lo_shield
C - - - - - 0x017E2E 05:BE1E: B0 04     BCS bra_BE24
C - - - - - 0x017E30 05:BE20: 49 FF     EOR #$FF
C - - - - - 0x017E32 05:BE22: 69 01     ADC #$01
bra_BE24:
C - - - - - 0x017E34 05:BE24: C9 30     CMP #$30
C - - - - - 0x017E36 05:BE26: B0 C7     BCS bra_BDEF
C - - - - - 0x017E38 05:BE28: AD 25 04  LDA ram_pos_X_lo_shield
C - - - - - 0x017E3B 05:BE2B: 85 69     STA ram_0069_t18_pos_X_lo
C - - - - - 0x017E3D 05:BE2D: AD 28 04  LDA ram_pos_Y_lo_shield
C - - - - - 0x017E40 05:BE30: 85 6A     STA ram_006A_t16_pos_Y_lo
C - - - - - 0x017E42 05:BE32: A9 02     LDA #$02
C - - - - - 0x017E44 05:BE34: 85 68     STA ram_0068_t16
C - - - - - 0x017E46 05:BE36: 86 71     STX ram_0071_t17_save_obj_index
C - - - - - 0x017E48 05:BE38: 20 98 FF  JSR sub_0x01FFA8_objects_collision
C - - - - - 0x017E4B 05:BE3B: 90 B2     BCC bra_BDEF
C - - - - - 0x017E4D 05:BE3D: AE D7 03  LDX ram_captain_power
C - - - - - 0x017E50 05:BE40: BD 4D BE  LDA tbl_BE4D_captain_normal_damage_to_enemy,X
C - - - - - 0x017E53 05:BE43: A0 00     LDY #$00
C - - - - - 0x017E55 05:BE45: A6 71     LDX ram_0071_t17_save_obj_index
C - - - - - 0x017E57 05:BE47: 20 FF B7  JSR sub_B7FF_deal_damage_to_enemy
C - - - - - 0x017E5A 05:BE4A: 4C F3 BD  JMP loc_BDF3



tbl_BE4D_captain_normal_damage_to_enemy:
- D 1 - - - 0x017E5D 05:BE4D: 02        .byte $02   ; 00 
- D 1 - - - 0x017E5E 05:BE4E: 04        .byte $04   ; 01 
- D 1 - - - 0x017E5F 05:BE4F: 06        .byte $06   ; 02 
- D 1 - - - 0x017E60 05:BE50: 08        .byte $08   ; 03 



sub_BE51:
C - - - - - 0x017E61 05:BE51: A5 AF     LDA ram_00AF_flag
C - - - - - 0x017E63 05:BE53: 29 20     AND #$20
C - - - - - 0x017E65 05:BE55: F0 11     BEQ bra_BE68_RTS
C - - - - - 0x017E67 05:BE57: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017E6A 05:BE5A: 29 C0     AND #$40 + $80
C - - - - - 0x017E6C 05:BE5C: D0 0A     BNE bra_BE68_RTS
C - - - - - 0x017E6E 05:BE5E: A9 02     LDA #$02
; bzk optimize, useless STA (there is the same STA in JSR)
C - - - - - 0x017E70 05:BE60: 85 6D     STA ram_006D_tFE_useless
C - - - - - 0x017E72 05:BE62: 20 46 B8  JSR sub_B846_deal_damage_to_player
; bzk optimize, JMP
C - - - - - 0x017E75 05:BE65: 20 92 AE  JSR sub_AE92
bra_BE68_RTS:
C - - - - - 0x017E78 05:BE68: 60        RTS



sub_BE69:
C - - - - - 0x017E79 05:BE69: AD 07 04  LDA ram_pos_Y_lo_player
C - - - - - 0x017E7C 05:BE6C: C9 F0     CMP #$F0
C - - - - - 0x017E7E 05:BE6E: 90 20     BCC bra_BE90_RTS
C - - - - - 0x017E80 05:BE70: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017E83 05:BE73: 29 04     AND #$04
C - - - - - 0x017E85 05:BE75: D0 19     BNE bra_BE90_RTS
C - - - - - 0x017E87 05:BE77: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017E8A 05:BE7A: 09 04     ORA #$04
C - - - - - 0x017E8C 05:BE7C: 8D 1F 04  STA ram_041F_player_flags
C - - - - - 0x017E8F 05:BE7F: A9 80     LDA #$80
C - - - - - 0x017E91 05:BE81: 8D E5 05  STA ram_05E5_timer
C - - - - - 0x017E94 05:BE84: A9 00     LDA #$00
C - - - - - 0x017E96 05:BE86: 8D 00 04  STA ram_0400_flag
C - - - - - 0x017E99 05:BE89: A9 1F     LDA #con_music_player_dead
C - - - - - 0x017E9B 05:BE8B: 85 77     STA ram_0077_t03_sound_id
; bzk optimize, JMP
C - - - - - 0x017E9D 05:BE8D: 20 AD FF  JSR sub_0x01FFBD_play_sound
bra_BE90_RTS:
C - - - - - 0x017EA0 05:BE90: 60        RTS



sub_BE91:
C - - - - - 0x017EA1 05:BE91: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017EA4 05:BE94: 29 04     AND #$04
C - - - - - 0x017EA6 05:BE96: F0 0D     BEQ bra_BEA5_RTS
C - - - - - 0x017EA8 05:BE98: CE E5 05  DEC ram_05E5_timer
C - - - - - 0x017EAB 05:BE9B: D0 08     BNE bra_BEA5_RTS
C - - - - - 0x017EAD 05:BE9D: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017EB0 05:BEA0: 09 08     ORA #$08
C - - - - - 0x017EB2 05:BEA2: 8D 1F 04  STA ram_041F_player_flags
bra_BEA5_RTS:
C - - - - - 0x017EB5 05:BEA5: 60        RTS



sub_BEA6:
C - - - - - 0x017EB6 05:BEA6: A5 A6     LDA ram_plr_swimming_state
C - - - - - 0x017EB8 05:BEA8: F0 55     BEQ bra_BEFF_RTS    ; if not swimming
; if swimming
C - - - - - 0x017EBA 05:BEAA: AD F7 05  LDA ram_05F7_scroll_flag
C - - - - - 0x017EBD 05:BEAD: F0 07     BEQ bra_BEB6
C - - - - - 0x017EBF 05:BEAF: AD 1B 04  LDA ram_041B_player_flags
C - - - - - 0x017EC2 05:BEB2: 29 08     AND #con_041B_flag_shield_down
C - - - - - 0x017EC4 05:BEB4: D0 49     BNE bra_BEFF_RTS    ; if shield down
; if shield not down
bra_BEB6:
C - - - - - 0x017EC6 05:BEB6: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x017EC8 05:BEB8: 48        PHA
C - - - - - 0x017EC9 05:BEB9: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x017ECB 05:BEBB: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x017ECD 05:BEBD: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x017ED0 05:BEC0: A6 3C     LDX ram_city
C - - - - - 0x017ED2 05:BEC2: BD BB 9B  LDA tbl_0x005BCB_city_byte,X
; bzk optimize, BMI to 0x017EF4 first, then STA
C - - - - - 0x017ED5 05:BEC5: 85 67     STA ram_0067_t3E
C - - - - - 0x017ED7 05:BEC7: 30 19     BMI bra_BEE2_80_FF
; if 01
C - - - - - 0x017ED9 05:BEC9: AD 0F 04  LDA ram_spd_X_fr_player
C - - - - - 0x017EDC 05:BECC: 38        SEC
C - - - - - 0x017EDD 05:BECD: E9 80     SBC #< $000080
C - - - - - 0x017EDF 05:BECF: 8D 0F 04  STA ram_spd_X_fr_player
C - - - - - 0x017EE2 05:BED2: AD 10 04  LDA ram_spd_X_lo_player
C - - - - - 0x017EE5 05:BED5: E9 00     SBC #> $000080
C - - - - - 0x017EE7 05:BED7: 8D 10 04  STA ram_spd_X_lo_player
C - - - - - 0x017EEA 05:BEDA: AD 11 04  LDA ram_spd_X_hi_player
C - - - - - 0x017EED 05:BEDD: E9 00     SBC #^ $000080
C - - - - - 0x017EEF 05:BEDF: 8D 11 04  STA ram_spd_X_hi_player
bra_BEE2_80_FF:
C - - - - - 0x017EF2 05:BEE2: A5 67     LDA ram_0067_t3E
C - - - - - 0x017EF4 05:BEE4: C9 80     CMP #$80
C - - - - - 0x017EF6 05:BEE6: D0 11     BNE bra_BEF9
; 80
C - - - - - 0x017EF8 05:BEE8: AD 1F 04  LDA ram_041F_player_flags
C - - - - - 0x017EFB 05:BEEB: 29 C0     AND #$40 + $80
C - - - - - 0x017EFD 05:BEED: D0 0A     BNE bra_BEF9
C - - - - - 0x017EFF 05:BEEF: A9 02     LDA #$02
; bzk optimize, useless STA (there is the same STA in JSR)
C - - - - - 0x017F01 05:BEF1: 85 6D     STA ram_006D_tFD_useless
C - - - - - 0x017F03 05:BEF3: 20 46 B8  JSR sub_B846_deal_damage_to_player
C - - - - - 0x017F06 05:BEF6: 20 92 AE  JSR sub_AE92
bra_BEF9:
C - - - - - 0x017F09 05:BEF9: 68        PLA
C - - - - - 0x017F0A 05:BEFA: 85 9C     STA ram_prg_bank_8000
; bzk optimize, JMP
C - - - - - 0x017F0C 05:BEFC: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
bra_BEFF_RTS:
C - - - - - 0x017F0F 05:BEFF: 60        RTS



sub_BF00_add_score_to_player:
; in
    ; X = enemy index
C - - - - - 0x017F10 05:BF00: 8A        TXA
C - - - - - 0x017F11 05:BF01: 48        PHA ; 1 (object index)
C - - - - - 0x017F12 05:BF02: A5 9C     LDA ram_prg_bank_8000
C - - - - - 0x017F14 05:BF04: 48        PHA ; 2 (prg bank)
C - - - - - 0x017F15 05:BF05: A9 02     LDA #con_prg_bank + $02
C - - - - - 0x017F17 05:BF07: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x017F19 05:BF09: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x017F1C 05:BF0C: BD 4A 04  LDA ram_obj_id,X
C - - - - - 0x017F1F 05:BF0F: 0A        ASL
C - - - - - 0x017F20 05:BF10: AA        TAX
C - - - - - 0x017F21 05:BF11: BD 89 8E  LDA tbl_0x004E99_enemy_points,X
C - - - - - 0x017F24 05:BF14: 18        CLC
C - - - - - 0x017F25 05:BF15: 6D E4 03  ADC ram_plr_score + $02
C - - - - - 0x017F28 05:BF18: 8D E4 03  STA ram_plr_score + $02
C - - - - - 0x017F2B 05:BF1B: BD 8A 8E  LDA tbl_0x004E99_enemy_points + $01,X
C - - - - - 0x017F2E 05:BF1E: 6D E3 03  ADC ram_plr_score + $01
C - - - - - 0x017F31 05:BF21: 8D E3 03  STA ram_plr_score + $01
C - - - - - 0x017F34 05:BF24: A9 00     LDA #$00
C - - - - - 0x017F36 05:BF26: 6D E2 03  ADC ram_plr_score
C - - - - - 0x017F39 05:BF29: 8D E2 03  STA ram_plr_score
; bzk optimize, useless LDA
; bzk optimize, same code as 0x01A44A
C - - - - - 0x017F3C 05:BF2C: AD E2 03  LDA ram_plr_score
C - - - - - 0x017F3F 05:BF2F: C9 0F     CMP #$0F
C - - - - - 0x017F41 05:BF31: 90 20     BCC bra_BF53    ; if < 99x.xxx
; if 99x.xxx+, check for 999.999
- - - - - - 0x017F43 05:BF33: A9 3F     LDA #< $0F423F
- - - - - - 0x017F45 05:BF35: ED E4 03  SBC ram_plr_score + $02
- - - - - - 0x017F48 05:BF38: A9 42     LDA #> $0F423F
- - - - - - 0x017F4A 05:BF3A: ED E3 03  SBC ram_plr_score + $01
- - - - - - 0x017F4D 05:BF3D: A9 0F     LDA #^ $0F423F
- - - - - - 0x017F4F 05:BF3F: ED E2 03  SBC ram_plr_score
- - - - - - 0x017F52 05:BF42: B0 0F     BCS bra_BF53    ; if < 999.999
; if >= 999.999, set 999.999
- - - - - - 0x017F54 05:BF44: A9 3F     LDA #< $0F423F
- - - - - - 0x017F56 05:BF46: 8D E4 03  STA ram_plr_score + $02
- - - - - - 0x017F59 05:BF49: A9 42     LDA #> $0F423F
- - - - - - 0x017F5B 05:BF4B: 8D E3 03  STA ram_plr_score + $01
- - - - - - 0x017F5E 05:BF4E: A9 0F     LDA #^ $0F423F
- - - - - - 0x017F60 05:BF50: 8D E2 03  STA ram_plr_score
bra_BF53:
C - - - - - 0x017F63 05:BF53: 68        PLA ; 2 (prg bank)
C - - - - - 0x017F64 05:BF54: 85 9C     STA ram_prg_bank_8000
C - - - - - 0x017F66 05:BF56: 20 9E FF  JSR sub_0x01FFAE_prg_bankswitch_8000
C - - - - - 0x017F69 05:BF59: 68        PLA ; 1 (object index)
C - - - - - 0x017F6A 05:BF5A: AA        TAX
C - - - - - 0x017F6B 05:BF5B: 60        RTS



sub_BF5C:
C - - - - - 0x017F6C 05:BF5C: AD 2F 04  LDA ram_042F_shield_script
C - - - - - 0x017F6F 05:BF5F: D0 2E     BNE bra_BF8F_RTS
C - - - - - 0x017F71 05:BF61: AD 01 04  LDA ram_player_state_1
C - - - - - 0x017F74 05:BF64: C9 03     CMP #con_plr_state_attack_up
C - - - - - 0x017F76 05:BF66: D0 27     BNE bra_BF8F_RTS
C - - - - - 0x017F78 05:BF68: A9 00     LDA #con_00AA_flag_00
C - - - - - 0x017F7A 05:BF6A: 85 AA     STA ram_00AA_plr_flags
                                       ;LDA #$00
C - - - - - 0x017F7C 05:BF6C: 85 B2     STA ram_00B2_useless_00
C - - - - - 0x017F7E 05:BF6E: A9 01     LDA #$01
C - - - - - 0x017F80 05:BF70: 8D 2F 04  STA ram_042F_shield_script
C - - - - - 0x017F83 05:BF73: A9 08     LDA #$08
C - - - - - 0x017F85 05:BF75: 8D 34 04  STA ram_0434_shield_fly_timer
C - - - - - 0x017F88 05:BF78: A5 A4     LDA ram_plr_direction
C - - - - - 0x017F8A 05:BF7A: 8D 35 04  STA ram_0435_shield_fly_direction
C - - - - - 0x017F8D 05:BF7D: A9 10     LDA #$10
C - - - - - 0x017F8F 05:BF7F: 8D 19 04  STA ram_0419_t04_player_shield_launch_timer
C - - - - - 0x017F92 05:BF82: A9 0E     LDA #con_plr_state_throw_shield
C - - - - - 0x017F94 05:BF84: 8D 01 04  STA ram_player_state_1
C - - - - - 0x017F97 05:BF87: A9 0D     LDA #con_040E_plr_state_capt_throw_shield
C - - - - - 0x017F99 05:BF89: 8D 0E 04  STA ram_player_state_2
; bzk optimize, JMP
C - - - - - 0x017F9C 05:BF8C: 20 92 AE  JSR sub_AE92
bra_BF8F_RTS:
C - - - - - 0x017F9F 05:BF8F: 60        RTS


; bzk garbage
- - - - - - 0x017FA0 05:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FB0 05:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FC0 05:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FD0 05:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FE0 05:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017FF0 05:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x018000 05:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 0B: 0x%04X [%d]", ($C000 - *), ($C000 - *))



