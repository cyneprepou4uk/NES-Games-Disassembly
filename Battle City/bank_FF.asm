.segment "BANK_FF"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $C000  ; for listing file
; 0x000010-0x00400F


; bzk garbage text
- - - - - - 0x000010 00:C000: 43        .byte "COPYRIGHT 1981 1"
- - - - - - 0x000020 00:C010: 39        .byte "985 NAMCO LTD."      , $0D, $0A  ; end of the line symbols or something (ASCII)
- - - - - - 0x000030 00:C020: 41        .byte "ALL RIGHTS RESER"
- - - - - - 0x000040 00:C030: 56        .byte "VED           "      , $0D, $0A



tbl_C040_copyrights:
- D 2 - - - 0x000050 00:C040: 52        .byte "RYOUITI OOKUBO  "


; bzk garbage text
- - - - - - 0x000060 00:C050: 54        .byte "TAKEFUMI HYOUDOU"
- - - - - - 0x000070 00:C060: 4A        .byte "JUNKO OZAWA     "



vec_C070_RESET:
C - - - - - 0x000080 00:C070: 78        SEI
C - - - - - 0x000081 00:C071: A9 10     LDA #$10
C - - - - - 0x000083 00:C073: 8D 00 20  STA $2000
C - - - - - 0x000086 00:C076: D8        CLD
C - - - - - 0x000087 00:C077: A2 02     LDX #$02
bra_C079_loop:
bra_C079_infinite_loop:
C - - - - - 0x000089 00:C079: AD 02 20  LDA $2002
C - - - - - 0x00008C 00:C07C: 10 FB     BPL bra_C079_infinite_loop
C - - - - - 0x00008E 00:C07E: A9 06     LDA #$06
C - - - - - 0x000090 00:C080: 8D 01 20  STA $2001
C - - - - - 0x000093 00:C083: CA        DEX
C - - - - - 0x000094 00:C084: D0 F3     BNE bra_C079_loop
C - - - - - 0x000096 00:C086: A2 7F     LDX #$7F
C - - - - - 0x000098 00:C088: 9A        TXS
C - - - - - 0x000099 00:C089: 20 91 D4  JSR sub_D491_clear_stuff_and_prepare_title_screen
C - - - - - 0x00009C 00:C08C: A9 00     LDA #$00
C - - - - - 0x00009E 00:C08E: 85 4F     STA ram_scroll_Y
C - - - - - 0x0000A0 00:C090: 85 50     STA ram_base_nmt
C - - - - - 0x0000A2 00:C092: 20 67 D4  JSR sub_D467_enable_nmi
loc_C095_go_to_title_screen_loop:
C D 2 - - - 0x0000A5 00:C095: 20 7F D1  JSR sub_D17F_draw_title_screen
C - - - - - 0x0000A8 00:C098: A9 00     LDA #$00
C - - - - - 0x0000AA 00:C09A: 85 4B     STA ram_constr_usage_cnt
loc_C09C_infinite_loop:
C D 2 - - - 0x0000AC 00:C09C: 20 6A D1  JSR sub_D16A
C - - - - - 0x0000AF 00:C09F: 20 AB C7  JSR sub_C7AB_scroll_title_screen
loc_C0A2_title_screen_and_demo_loop:
C D 2 - - - 0x0000B2 00:C0A2: 20 C0 C9  JSR sub_C9C0_title_screen_handler
C - - - - - 0x0000B5 00:C0A5: 20 B5 C3  JSR sub_C3B5_demo_settings
C - - - - - 0x0000B8 00:C0A8: 20 1D C4  JSR sub_C41D_demo_handler
C - - - - - 0x0000BB 00:C0AB: 4C 9C C0  JMP loc_C09C_infinite_loop



loc_C0AE_construction_handler:
C D 2 - - - 0x0000BE 00:C0AE: A5 4B     LDA ram_constr_usage_cnt
C - - - - - 0x0000C0 00:C0B0: D0 0C     BNE bra_C0BE_constructor_was_already_used
C - - - - - 0x0000C2 00:C0B2: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x0000C5 00:C0B5: 20 B0 C9  JSR sub_C9B0_create_default_stage_field
C - - - - - 0x0000C8 00:C0B8: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x0000CB 00:C0BB: 20 67 D4  JSR sub_D467_enable_nmi
bra_C0BE_constructor_was_already_used:
C - - - - - 0x0000CE 00:C0BE: 20 13 E4  JSR sub_E413_clear_some_tank_addresses
; set cursor position
C - - - - - 0x0000D1 00:C0C1: A9 10     LDA #$10
C - - - - - 0x0000D3 00:C0C3: 85 90     STA ram_tank_pos_X
C - - - - - 0x0000D5 00:C0C5: A9 18     LDA #$18
C - - - - - 0x0000D7 00:C0C7: 85 98     STA ram_tank_pos_Y
; set cursor graphics
C - - - - - 0x0000D9 00:C0C9: A9 84     LDA #con_tank_flag_80 + $04
C - - - - - 0x0000DB 00:C0CB: 85 A0     STA ram_tank_flags
C - - - - - 0x0000DD 00:C0CD: A9 00     LDA #$00
C - - - - - 0x0000DF 00:C0CF: 85 A8     STA ram_tank_type
; bzk optimize, useless STA
C - - - - - 0x0000E1 00:C0D1: 85 6E     STA ram_priority_spr_A
C - - - - - 0x0000E3 00:C0D3: 85 B0     STA ram_tank_wheels
C - - - - - 0x0000E5 00:C0D5: 85 81     STA ram_0081_flag
C - - - - - 0x0000E7 00:C0D7: 85 7B     STA ram_constr_hold_Dpad_timer
C - - - - - 0x0000E9 00:C0D9: 85 5C     STA ram_constr_block_id
C - - - - - 0x0000EB 00:C0DB: 85 4F     STA ram_scroll_Y
C - - - - - 0x0000ED 00:C0DD: 85 50     STA ram_base_nmt
C - - - - - 0x0000EF 00:C0DF: 85 6F     STA ram_plr_stun_timer
C - - - - - 0x0000F1 00:C0E1: 85 70     STA ram_plr_stun_timer + $01
C - - - - - 0x0000F3 00:C0E3: A5 4B     LDA ram_constr_usage_cnt
C - - - - - 0x0000F5 00:C0E5: D0 03     BNE bra_C0EA_constructor_was_already_used
C - - - - - 0x0000F7 00:C0E7: 20 F5 CA  JSR sub_CAF5_draw_default_base
bra_C0EA_constructor_was_already_used:
loc_C0EA_construction_loop:
C D 2 - - - 0x0000FA 00:C0EA: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x0000FD 00:C0ED: 20 D2 C6  JSR sub_C6D2_move_construction_cursor
C - - - - - 0x000100 00:C0F0: 20 D0 C8  JSR sub_C8D0_screen_borders_for_construction_tank_icon
C - - - - - 0x000103 00:C0F3: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x000105 00:C0F5: 29 10     AND #$10
C - - - - - 0x000107 00:C0F7: F0 03     BEQ bra_C0FC
C - - - - - 0x000109 00:C0F9: 20 A6 DE  JSR sub_DEA6_tanks_handler
bra_C0FC:
C - - - - - 0x00010C 00:C0FC: A5 06     LDA ram_btn_hold
C - - - - - 0x00010E 00:C0FE: 29 F0     AND #con_btns_Dpad
C - - - - - 0x000110 00:C100: D0 3C     BNE bra_C13E
C - - - - - 0x000112 00:C102: A5 08     LDA ram_btn_press
C - - - - - 0x000114 00:C104: 29 01     AND #con_btn_A
C - - - - - 0x000116 00:C106: F0 18     BEQ bra_C120
C - - - - - 0x000118 00:C108: A5 81     LDA ram_0081_flag
C - - - - - 0x00011A 00:C10A: D0 05     BNE bra_C111
C - - - - - 0x00011C 00:C10C: E6 81     INC ram_0081_flag
C - - - - - 0x00011E 00:C10E: 4C 44 C1  JMP loc_C144
bra_C111:
C - - - - - 0x000121 00:C111: E6 5C     INC ram_constr_block_id
C - - - - - 0x000123 00:C113: A5 5C     LDA ram_constr_block_id
C - - - - - 0x000125 00:C115: C9 0E     CMP #$0E
C - - - - - 0x000127 00:C117: D0 2B     BNE bra_C144
; if overflow
C - - - - - 0x000129 00:C119: A9 00     LDA #$00
C - - - - - 0x00012B 00:C11B: 85 5C     STA ram_constr_block_id
C - - - - - 0x00012D 00:C11D: 4C 44 C1  JMP loc_C144
bra_C120:
C - - - - - 0x000130 00:C120: A5 08     LDA ram_btn_press
C - - - - - 0x000132 00:C122: 29 02     AND #con_btn_B
C - - - - - 0x000134 00:C124: F0 18     BEQ bra_C13E
C - - - - - 0x000136 00:C126: A5 81     LDA ram_0081_flag
C - - - - - 0x000138 00:C128: D0 05     BNE bra_C12F
C - - - - - 0x00013A 00:C12A: E6 81     INC ram_0081_flag
C - - - - - 0x00013C 00:C12C: 4C 44 C1  JMP loc_C144
bra_C12F:
C - - - - - 0x00013F 00:C12F: C6 5C     DEC ram_constr_block_id
C - - - - - 0x000141 00:C131: A5 5C     LDA ram_constr_block_id
C - - - - - 0x000143 00:C133: C9 FF     CMP #$FF
C - - - - - 0x000145 00:C135: D0 0D     BNE bra_C144
; if underflow
C - - - - - 0x000147 00:C137: A9 0D     LDA #$0D
C - - - - - 0x000149 00:C139: 85 5C     STA ram_constr_block_id
C - - - - - 0x00014B 00:C13B: 4C 44 C1  JMP loc_C144
bra_C13E:
C - - - - - 0x00014E 00:C13E: A5 06     LDA ram_btn_hold
C - - - - - 0x000150 00:C140: 29 03     AND #con_btns_AB
C - - - - - 0x000152 00:C142: F0 03     BEQ bra_C147
bra_C144:
loc_C144:
C D 2 - - - 0x000154 00:C144: 20 C6 C6  JSR sub_C6C6_paste_created_block
bra_C147:
C - - - - - 0x000157 00:C147: A5 08     LDA ram_btn_press
C - - - - - 0x000159 00:C149: 29 08     AND #con_btn_Start
C - - - - - 0x00015B 00:C14B: D0 03     BNE bra_C150_return_to_title_screen
C - - - - - 0x00015D 00:C14D: 4C EA C0  JMP loc_C0EA_construction_loop
bra_C150_return_to_title_screen:
; bzk optimize, useless LDA + STA (only if you delete STA at 0x0000E1 as well)
C - - - - - 0x000160 00:C150: A9 20     LDA #$20
C - - - - - 0x000162 00:C152: 85 6E     STA ram_priority_spr_A
C - - - - - 0x000164 00:C154: E6 4B     INC ram_constr_usage_cnt
C - - - - - 0x000166 00:C156: 4C A2 C0  JMP loc_C0A2_title_screen_and_demo_loop



loc_C159:
C D 2 - - - 0x000169 00:C159: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00016C 00:C15C: 20 51 EA  JSR sub_EA51_clear_sound_engine_data
C - - - - - 0x00016F 00:C15F: A9 1C     LDA #con_ppu_offset_2000
C - - - - - 0x000171 00:C161: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x000173 00:C163: A9 00     LDA #$00
C - - - - - 0x000175 00:C165: 85 4F     STA ram_scroll_Y
C - - - - - 0x000177 00:C167: 85 50     STA ram_base_nmt
C - - - - - 0x000179 00:C169: 85 6D     STA ram_pause_flag
C - - - - - 0x00017B 00:C16B: A9 04     LDA #con_bg_pal_04
C - - - - - 0x00017D 00:C16D: 85 4D     STA ram_bg_palette_id
C - - - - - 0x00017F 00:C16F: 20 90 CC  JSR sub_CC90_close_grey_curtain
loc_C172_loop:
bra_C172_loop:
C D 2 - - - 0x000182 00:C172: 20 91 CA  JSR sub_CA91_print_word_stage_and_number
C - - - - - 0x000185 00:C175: A5 4C     LDA ram_004C_flag
C - - - - - 0x000187 00:C177: D0 4C     BNE bra_C1C5
C - - - - - 0x000189 00:C179: A5 08     LDA ram_btn_press
C - - - - - 0x00018B 00:C17B: 29 08     AND #con_btn_Start
C - - - - - 0x00018D 00:C17D: D0 46     BNE bra_C1C5
C - - - - - 0x00018F 00:C17F: A5 08     LDA ram_btn_press
C - - - - - 0x000191 00:C181: 29 01     AND #con_btn_A
C - - - - - 0x000193 00:C183: D0 0C     BNE bra_C191
C - - - - - 0x000195 00:C185: A5 06     LDA ram_btn_hold
C - - - - - 0x000197 00:C187: 29 01     AND #con_btn_A
C - - - - - 0x000199 00:C189: F0 19     BEQ bra_C1A4
- - - - - - 0x00019B 00:C18B: A5 0B     LDA ram_frm_cnt_lo
- - - - - - 0x00019D 00:C18D: 29 07     AND #$07
- - - - - - 0x00019F 00:C18F: D0 13     BNE bra_C1A4
bra_C191:
C - - - - - 0x0001A1 00:C191: A9 00     LDA #$00
C - - - - - 0x0001A3 00:C193: 85 0B     STA ram_frm_cnt_lo
C - - - - - 0x0001A5 00:C195: E6 85     INC ram_stage
C - - - - - 0x0001A7 00:C197: A5 85     LDA ram_stage
C - - - - - 0x0001A9 00:C199: C9 24     CMP #$24
C - - - - - 0x0001AB 00:C19B: D0 D5     BNE bra_C172_loop
C - - - - - 0x0001AD 00:C19D: A9 23     LDA #$23
C - - - - - 0x0001AF 00:C19F: 85 85     STA ram_stage
C - - - - - 0x0001B1 00:C1A1: 4C 72 C1  JMP loc_C172_loop
bra_C1A4:
C - - - - - 0x0001B4 00:C1A4: A5 08     LDA ram_btn_press
C - - - - - 0x0001B6 00:C1A6: 29 02     AND #con_btn_B
C - - - - - 0x0001B8 00:C1A8: D0 0C     BNE bra_C1B6
C - - - - - 0x0001BA 00:C1AA: A5 06     LDA ram_btn_hold
C - - - - - 0x0001BC 00:C1AC: 29 02     AND #con_btn_B
C - - - - - 0x0001BE 00:C1AE: F0 C2     BEQ bra_C172_loop
- - - - - - 0x0001C0 00:C1B0: A5 0B     LDA ram_frm_cnt_lo
- - - - - - 0x0001C2 00:C1B2: 29 07     AND #$07
- - - - - - 0x0001C4 00:C1B4: D0 BC     BNE bra_C172_loop
bra_C1B6:
C - - - - - 0x0001C6 00:C1B6: A9 00     LDA #$00
C - - - - - 0x0001C8 00:C1B8: 85 0B     STA ram_frm_cnt_lo
C - - - - - 0x0001CA 00:C1BA: C6 85     DEC ram_stage
C - - - - - 0x0001CC 00:C1BC: D0 B4     BNE bra_C172_loop
C - - - - - 0x0001CE 00:C1BE: A9 01     LDA #$01
C - - - - - 0x0001D0 00:C1C0: 85 85     STA ram_stage
C - - - - - 0x0001D2 00:C1C2: 4C 72 C1  JMP loc_C172_loop
bra_C1C5:
C - - - - - 0x0001D5 00:C1C5: A9 01     LDA #$01
C - - - - - 0x0001D7 00:C1C7: 8D 01 03  STA ram_sfx_stage_load_1
C - - - - - 0x0001DA 00:C1CA: 8D 02 03  STA ram_sfx_stage_load_2
C - - - - - 0x0001DD 00:C1CD: 8D 03 03  STA ram_sfx_stage_load_3
C - - - - - 0x0001E0 00:C1D0: A5 4B     LDA ram_constr_usage_cnt
C - - - - - 0x0001E2 00:C1D2: D0 0E     BNE bra_C1E2_something_was_constructed
C - - - - - 0x0001E4 00:C1D4: 20 B0 C9  JSR sub_C9B0_create_default_stage_field
C - - - - - 0x0001E7 00:C1D7: A5 85     LDA ram_stage
C - - - - - 0x0001E9 00:C1D9: 20 00 F0  JSR sub_F000_draw_stage
C - - - - - 0x0001EC 00:C1DC: 20 F5 CA  JSR sub_CAF5_draw_default_base
C - - - - - 0x0001EF 00:C1DF: 4C E5 C1  JMP loc_C1E5
bra_C1E2_something_was_constructed:
C - - - - - 0x0001F2 00:C1E2: 20 5D CB  JSR sub_CB5D_draw_default_eagle
loc_C1E5:
C D 2 - - - 0x0001F5 00:C1E5: A9 00     LDA #$00
C - - - - - 0x0001F7 00:C1E7: 85 0C     STA ram_buffer_index
C - - - - - 0x0001F9 00:C1E9: 20 27 CC  JSR sub_CC27_write_nametable_attributes_to_ppu_buffer
C - - - - - 0x0001FC 00:C1EC: 20 B2 CC  JSR sub_CCB2_open_grey_curtain
C - - - - - 0x0001FF 00:C1EF: A9 00     LDA #con_bg_pal_00
C - - - - - 0x000201 00:C1F1: 85 4D     STA ram_bg_palette_id
C - - - - - 0x000203 00:C1F3: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000206 00:C1F6: 20 31 C3  JSR sub_C331
bra_C1F9_loop:
C - - - - - 0x000209 00:C1F9: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00020C 00:C1FC: A5 6D     LDA ram_pause_flag
C - - - - - 0x00020E 00:C1FE: D0 03     BNE bra_C203_game_is_paused
; if not paused
C - - - - - 0x000210 00:C200: 20 E6 C2  JSR sub_C2E6_main_battle_script
bra_C203_game_is_paused:
C - - - - - 0x000213 00:C203: 20 3B E2  JSR sub_E23B_display_bonus_on_screen
C - - - - - 0x000216 00:C206: 20 D8 E0  JSR sub_E0D8_bullets_status_handler
C - - - - - 0x000219 00:C209: 20 A6 DE  JSR sub_DEA6_tanks_handler
C - - - - - 0x00021C 00:C20C: A5 08     LDA ram_btn_press
C - - - - - 0x00021E 00:C20E: 29 08     AND #con_btn_Start
C - - - - - 0x000220 00:C210: F0 09     BEQ bra_C21B_do_not_set_pause
; swap pause flag
C - - - - - 0x000222 00:C212: A9 01     LDA #$01
C - - - - - 0x000224 00:C214: 45 6D     EOR ram_pause_flag
C - - - - - 0x000226 00:C216: 85 6D     STA ram_pause_flag
C - - - - - 0x000228 00:C218: 8D 00 03  STA ram_sfx_pause
bra_C21B_do_not_set_pause:
C - - - - - 0x00022B 00:C21B: 20 F9 C8  JSR sub_C8F9_display_pause_text
C - - - - - 0x00022E 00:C21E: 20 28 C7  JSR sub_C728_check_condition_for_stage_ending
C - - - - - 0x000231 00:C221: F0 D6     BEQ bra_C1F9_loop   ; stage is not finished
C - - - - - 0x000233 00:C223: A9 00     LDA #$00
C - - - - - 0x000235 00:C225: 85 0A     STA ram_frm_cnt_hi
C - - - - - 0x000237 00:C227: 85 0B     STA ram_frm_cnt_lo
C - - - - - 0x000239 00:C229: 8D 11 03  STA ram_sfx_movement_player
C - - - - - 0x00023C 00:C22C: 8D 12 03  STA ram_sfx_movement_enemy
C - - - - - 0x00023F 00:C22F: AD 08 01  LDA ram_game_over_msg_timer
C - - - - - 0x000242 00:C232: F0 04     BEQ bra_C238
C - - - - - 0x000244 00:C234: A9 FE     LDA #$FE    ; additional time if game over message
C - - - - - 0x000246 00:C236: 85 0A     STA ram_frm_cnt_hi
bra_C238:
bra_C238_loop:  ; gameplay is still going for some time before stange ends
C - - - - - 0x000248 00:C238: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00024B 00:C23B: 20 A2 C2  JSR sub_C2A2_disable_buttons_if_game_over
C - - - - - 0x00024E 00:C23E: 20 E6 C2  JSR sub_C2E6_main_battle_script
C - - - - - 0x000251 00:C241: 20 3B E2  JSR sub_E23B_display_bonus_on_screen
C - - - - - 0x000254 00:C244: 20 A6 DE  JSR sub_DEA6_tanks_handler
C - - - - - 0x000257 00:C247: 20 D8 E0  JSR sub_E0D8_bullets_status_handler
C - - - - - 0x00025A 00:C24A: 20 1D C3  JSR sub_C31D_water_palette_swap_handler
C - - - - - 0x00025D 00:C24D: A5 0A     LDA ram_frm_cnt_hi
C - - - - - 0x00025F 00:C24F: C9 02     CMP #$02
C - - - - - 0x000261 00:C251: D0 E5     BNE bra_C238_loop
C - - - - - 0x000263 00:C253: 20 51 EA  JSR sub_EA51_clear_sound_engine_data
C - - - - - 0x000266 00:C256: 20 D4 CC  JSR sub_CCD4_score_after_stage_handler
C - - - - - 0x000269 00:C259: E6 85     INC ram_stage
C - - - - - 0x00026B 00:C25B: A5 85     LDA ram_stage
C - - - - - 0x00026D 00:C25D: C9 47     CMP #$47
C - - - - - 0x00026F 00:C25F: D0 08     BNE bra_C269_game_is_not_completed
C - - - - - 0x000271 00:C261: A9 01     LDA #$01    ; set 1st stage again
C - - - - - 0x000273 00:C263: 85 85     STA ram_stage
C - - - - - 0x000275 00:C265: A9 00     LDA #$00
C - - - - - 0x000277 00:C267: 85 46     STA ram_2nd_loop_flag
bra_C269_game_is_not_completed:
C - - - - - 0x000279 00:C269: A5 85     LDA ram_stage
C - - - - - 0x00027B 00:C26B: C9 24     CMP #$24
C - - - - - 0x00027D 00:C26D: D0 04     BNE bra_C273_still_1st_loop
C - - - - - 0x00027F 00:C26F: A9 01     LDA #$01
C - - - - - 0x000281 00:C271: 85 46     STA ram_2nd_loop_flag
bra_C273_still_1st_loop:
C - - - - - 0x000283 00:C273: A5 51     LDA ram_lives
C - - - - - 0x000285 00:C275: 18        CLC
C - - - - - 0x000286 00:C276: 65 52     ADC ram_lives + $01
C - - - - - 0x000288 00:C278: F0 09     BEQ bra_C283_game_over    ; both players are dead
C - - - - - 0x00028A 00:C27A: A5 68     LDA ram_game_over_flag
C - - - - - 0x00028C 00:C27C: C9 80     CMP #con_not_game_over
C - - - - - 0x00028E 00:C27E: D0 03     BNE bra_C283_game_over
; if not game over
C - - - - - 0x000290 00:C280: 4C 59 C1  JMP loc_C159    ; launch next stage
bra_C283_game_over:     ; game over screen
C - - - - - 0x000293 00:C283: 20 D9 C5  JSR sub_C5D9
C - - - - - 0x000296 00:C286: 20 7D D9  JSR sub_D97D_check_hiscore_beaten
C - - - - - 0x000299 00:C289: 98        TYA
C - - - - - 0x00029A 00:C28A: F0 06     BEQ bra_C292_hiscore_not_beaten
C - - - - - 0x00029C 00:C28C: 20 4B C4  JSR sub_C44B
C - - - - - 0x00029F 00:C28F: 20 95 C2  JSR sub_C295
bra_C292_hiscore_not_beaten:
C - - - - - 0x0002A2 00:C292: 4C 95 C0  JMP loc_C095_go_to_title_screen_loop



sub_C295:
C - - - - - 0x0002A5 00:C295: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x0002A8 00:C298: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x0002AB 00:C29B: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
; bzk optimize, JMP
C - - - - - 0x0002AE 00:C29E: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x0002B1 00:C2A1: 60        RTS



sub_C2A2_disable_buttons_if_game_over:
C - - - - - 0x0002B2 00:C2A2: A5 68     LDA ram_game_over_flag
C - - - - - 0x0002B4 00:C2A4: C9 80     CMP #con_not_game_over
C - - - - - 0x0002B6 00:C2A6: F0 0A     BEQ bra_C2B2_RTS
; if game over, block input for both players
C - - - - - 0x0002B8 00:C2A8: A9 00     LDA #$00
C - - - - - 0x0002BA 00:C2AA: 85 06     STA ram_btn_hold
C - - - - - 0x0002BC 00:C2AC: 85 07     STA ram_btn_hold + $01
C - - - - - 0x0002BE 00:C2AE: 85 08     STA ram_btn_press
C - - - - - 0x0002C0 00:C2B0: 85 09     STA ram_btn_press + $01
bra_C2B2_RTS:
C - - - - - 0x0002C2 00:C2B2: 60        RTS



sub_C2B3_clear_score_and_prepare_player_data:
C - - - - - 0x0002C3 00:C2B3: A2 15     LDX #< ram_p1_score
C - - - - - 0x0002C5 00:C2B5: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x0002C8 00:C2B8: A2 1D     LDX #< ram_p2_score
C - - - - - 0x0002CA 00:C2BA: 20 FE D9  JSR sub_D9FE_clear_bcd_number
sub_C2BD_prepare_player_data:
C - - - - - 0x0002CD 00:C2BD: A9 00     LDA #$00
C - - - - - 0x0002CF 00:C2BF: 8D 01 01  STA ram_tank_upgrade
C - - - - - 0x0002D2 00:C2C2: 8D 02 01  STA ram_tank_upgrade + $01
C - - - - - 0x0002D5 00:C2C5: A9 00     LDA #$00
C - - - - - 0x0002D7 00:C2C7: 85 66     STA ram_p1_extra_life
C - - - - - 0x0002D9 00:C2C9: 85 67     STA ram_p2_extra_life
C - - - - - 0x0002DB 00:C2CB: 85 4C     STA ram_004C_flag
C - - - - - 0x0002DD 00:C2CD: A9 03     LDA #$03
C - - - - - 0x0002DF 00:C2CF: 85 51     STA ram_lives
C - - - - - 0x0002E1 00:C2D1: 85 52     STA ram_lives + $01
; bzk optimize, useless write, it won't be read and will be overwritten
C - - - - - 0x0002E3 00:C2D3: 85 6A     STA ram_enemy_spawn_pos
C - - - - - 0x0002E5 00:C2D5: A5 83     LDA ram_game_mode
C - - - - - 0x0002E7 00:C2D7: D0 04     BNE bra_C2DD_skip_disabling_player_2    ; if 2p mode
; if 1p mode, clear lives for player 2,
; he won't spawn if his lives are 00
C - - - - - 0x0002E9 00:C2D9: A9 00     LDA #$00
C - - - - - 0x0002EB 00:C2DB: 85 52     STA ram_lives + $01
bra_C2DD_skip_disabling_player_2:
C - - - - - 0x0002ED 00:C2DD: A9 01     LDA #$01
C - - - - - 0x0002EF 00:C2DF: 85 85     STA ram_stage
C - - - - - 0x0002F1 00:C2E1: A9 00     LDA #$00
C - - - - - 0x0002F3 00:C2E3: 85 46     STA ram_2nd_loop_flag
C - - - - - 0x0002F5 00:C2E5: 60        RTS



sub_C2E6_main_battle_script:
; line 1815 in russian disassembly
C - - - - - 0x0002F6 00:C2E6: 20 81 E1  JSR sub_E181_ice_detection
C - - - - - 0x0002F9 00:C2E9: 20 75 DB  JSR sub_DB75_ice_movement
C - - - - - 0x0002FC 00:C2EC: 20 F1 DB  JSR sub_DBF1_tank_movement
C - - - - - 0x0002FF 00:C2EF: 20 FA E1  JSR sub_E1FA
C - - - - - 0x000302 00:C2F2: 20 2E E0  JSR sub_E02E_bullets_status_handler
C - - - - - 0x000305 00:C2F5: 20 A9 E2  JSR sub_E2A9_HQ_handler
C - - - - - 0x000308 00:C2F8: 20 7C E2  JSR sub_E27C_players_invincibility_handler
C - - - - - 0x00030B 00:C2FB: 20 22 E1  JSR sub_E122
C - - - - - 0x00030E 00:C2FE: 20 62 E1  JSR sub_E162
C - - - - - 0x000311 00:C301: 20 48 DB  JSR sub_DB48_enemy_spawn_handler
C - - - - - 0x000314 00:C304: 20 04 E6  JSR sub_E604_bullets_movement
C - - - - - 0x000317 00:C307: 20 10 E9  JSR sub_E910_bullets_collision_with_bullets
C - - - - - 0x00031A 00:C30A: 20 0C E7  JSR sub_E70C_bullets_collision_with_tanks
C - - - - - 0x00031D 00:C30D: 20 72 E9  JSR sub_E972_try_to_pick_up_bonus
C - - - - - 0x000320 00:C310: 20 72 C9  JSR sub_C972_game_over_text_handler
C - - - - - 0x000323 00:C313: 20 0B DB  JSR sub_DB0B_plr_movement_sfx_handler
C - - - - - 0x000326 00:C316: 20 C8 C7  JSR sub_C7C8_print_lives_handler
; bzk optimize, JMP
C - - - - - 0x000329 00:C319: 20 1D C3  JSR sub_C31D_water_palette_swap_handler
C - - - - - 0x00032C 00:C31C: 60        RTS



sub_C31D_water_palette_swap_handler:
; swap every 32 frames
C - - - - - 0x00032D 00:C31D: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x00032F 00:C31F: 29 3F     AND #$3F
C - - - - - 0x000331 00:C321: F0 09     BEQ bra_C32C
C - - - - - 0x000333 00:C323: C9 20     CMP #$20
C - - - - - 0x000335 00:C325: D0 09     BNE bra_C330_RTS
C - - - - - 0x000337 00:C327: A9 01     LDA #con_bg_pal_01
C - - - - - 0x000339 00:C329: 85 4D     STA ram_bg_palette_id
C - - - - - 0x00033B 00:C32B: 60        RTS
bra_C32C:
C - - - - - 0x00033C 00:C32C: A9 02     LDA #con_bg_pal_02
C - - - - - 0x00033E 00:C32E: 85 4D     STA ram_bg_palette_id
bra_C330_RTS:
C - - - - - 0x000340 00:C330: 60        RTS



sub_C331:
C - - - - - 0x000341 00:C331: 20 09 E4  JSR sub_E409_clear_bullet_status
C - - - - - 0x000344 00:C334: 20 13 E4  JSR sub_E413_clear_some_tank_addresses
C - - - - - 0x000347 00:C337: A9 F0     LDA #$F0
C - - - - - 0x000349 00:C339: 8D 06 01  STA ram_game_over_msg_pos_Y
C - - - - - 0x00034C 00:C33C: A9 00     LDA #$00
C - - - - - 0x00034E 00:C33E: 8D 08 01  STA ram_game_over_msg_timer
C - - - - - 0x000351 00:C341: A5 51     LDA ram_lives
C - - - - - 0x000353 00:C343: F0 05     BEQ bra_C34A
C - - - - - 0x000355 00:C345: A2 00     LDX #$00
C - - - - - 0x000357 00:C347: 20 63 E3  JSR sub_E363_tank_spawn_handler
bra_C34A:
C - - - - - 0x00035A 00:C34A: A5 52     LDA ram_lives + $01
C - - - - - 0x00035C 00:C34C: F0 05     BEQ bra_C353
C - - - - - 0x00035E 00:C34E: A2 01     LDX #$01
C - - - - - 0x000360 00:C350: 20 63 E3  JSR sub_E363_tank_spawn_handler
bra_C353:
C - - - - - 0x000363 00:C353: A9 14     LDA #$14
C - - - - - 0x000365 00:C355: 85 7F     STA ram_enemy_spawn_cnt
C - - - - - 0x000367 00:C357: 85 80     STA ram_enemies_left_cnt
C - - - - - 0x000369 00:C359: A9 00     LDA #$00
C - - - - - 0x00036B 00:C35B: 85 8F     STA ram_enemy_type_offset
C - - - - - 0x00036D 00:C35D: 85 0A     STA ram_frm_cnt_hi
C - - - - - 0x00036F 00:C35F: 85 4B     STA ram_constr_usage_cnt
C - - - - - 0x000371 00:C361: 85 45     STA ram_shovel_timer
C - - - - - 0x000373 00:C363: 85 6F     STA ram_plr_stun_timer
C - - - - - 0x000375 00:C365: 85 70     STA ram_plr_stun_timer + $01
C - - - - - 0x000377 00:C367: 85 89     STA ram_helmet_timer
C - - - - - 0x000379 00:C369: 85 8A     STA ram_helmet_timer + $01
C - - - - - 0x00037B 00:C36B: 85 82     STA ram_enemy_timer_before_spawn
C - - - - - 0x00037D 00:C36D: 85 86     STA ram_bonus_pos_X
C - - - - - 0x00037F 00:C36F: 8D 00 01  STA ram_clock_timer
C - - - - - 0x000382 00:C372: 85 6A     STA ram_enemy_spawn_pos
C - - - - - 0x000384 00:C374: 20 1E C7  JSR sub_C71E_clear_kill_counters
C - - - - - 0x000387 00:C377: 20 C0 C8  JSR sub_C8C0_draw_20_enemy_icons
C - - - - - 0x00038A 00:C37A: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00038D 00:C37D: 20 30 C8  JSR sub_C830_draw_Ip_IIp_icons
C - - - - - 0x000390 00:C380: 20 59 C8  JSR sub_C859_draw_flag_above_stage_number
C - - - - - 0x000393 00:C383: 20 2B E4  JSR sub_E42B_prepare_enemy_tanks_for_stage
C - - - - - 0x000396 00:C386: A9 80     LDA #con_not_game_over
C - - - - - 0x000398 00:C388: 85 68     STA ram_game_over_flag
C - - - - - 0x00039A 00:C38A: A9 01     LDA #$01
C - - - - - 0x00039C 00:C38C: 8D 12 03  STA ram_sfx_movement_enemy
C - - - - - 0x00039F 00:C38F: 85 4C     STA ram_004C_flag
C - - - - - 0x0003A1 00:C391: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x0003A3 00:C393: C9 01     CMP #$01
C - - - - - 0x0003A5 00:C395: D0 05     BNE bra_C39C_not_max_speed_spawn
; if 2nd loop
C - - - - - 0x0003A7 00:C397: A9 23     LDA #$23
; bzk optimize, BNE
C - - - - - 0x0003A9 00:C399: 4C 9E C3  JMP loc_C39E
bra_C39C_not_max_speed_spawn:
C - - - - - 0x0003AC 00:C39C: A5 85     LDA ram_stage
loc_C39E:
; * 04
C D 2 - - - 0x0003AE 00:C39E: 0A        ASL
C - - - - - 0x0003AF 00:C39F: 0A        ASL
C - - - - - 0x0003B0 00:C3A0: 85 00     STA ram_0000_t01
C - - - - - 0x0003B2 00:C3A2: A9 BE     LDA #$BE
C - - - - - 0x0003B4 00:C3A4: 38        SEC
C - - - - - 0x0003B5 00:C3A5: E5 00     SBC ram_0000_t01
C - - - - - 0x0003B7 00:C3A7: 85 84     STA ram_enemy_spawn_interval
C - - - - - 0x0003B9 00:C3A9: A5 83     LDA ram_game_mode
C - - - - - 0x0003BB 00:C3AB: F0 07     BEQ bra_C3B4_RTS    ; if 1p mode
; if 2p mode
C - - - - - 0x0003BD 00:C3AD: A5 84     LDA ram_enemy_spawn_interval
C - - - - - 0x0003BF 00:C3AF: 38        SEC
C - - - - - 0x0003C0 00:C3B0: E9 14     SBC #$14
C - - - - - 0x0003C2 00:C3B2: 85 84     STA ram_enemy_spawn_interval
bra_C3B4_RTS:
C - - - - - 0x0003C4 00:C3B4: 60        RTS



sub_C3B5_demo_settings:
C - - - - - 0x0003C5 00:C3B5: A9 01     LDA #$01
C - - - - - 0x0003C7 00:C3B7: 85 6D     STA ram_pause_flag
C - - - - - 0x0003C9 00:C3B9: A9 00     LDA #con_bg_pal_00
C - - - - - 0x0003CB 00:C3BB: 85 4D     STA ram_bg_palette_id
C - - - - - 0x0003CD 00:C3BD: 20 BD C2  JSR sub_C2BD_prepare_player_data
C - - - - - 0x0003D0 00:C3C0: A9 03     LDA #$03
C - - - - - 0x0003D2 00:C3C2: 85 52     STA ram_lives + $01
C - - - - - 0x0003D4 00:C3C4: A9 00     LDA #$00
C - - - - - 0x0003D6 00:C3C6: 85 4F     STA ram_scroll_Y
C - - - - - 0x0003D8 00:C3C8: 85 50     STA ram_base_nmt
C - - - - - 0x0003DA 00:C3CA: 85 0A     STA ram_frm_cnt_hi
C - - - - - 0x0003DC 00:C3CC: 85 0B     STA ram_frm_cnt_lo
C - - - - - 0x0003DE 00:C3CE: 20 B0 C9  JSR sub_C9B0_create_default_stage_field
C - - - - - 0x0003E1 00:C3D1: A9 FF     LDA #$FF    ; demo stage
C - - - - - 0x0003E3 00:C3D3: 85 85     STA ram_stage
C - - - - - 0x0003E5 00:C3D5: 20 00 F0  JSR sub_F000_draw_stage
C - - - - - 0x0003E8 00:C3D8: A9 1E     LDA #$1E    ; display 30 stage
C - - - - - 0x0003EA 00:C3DA: 85 85     STA ram_stage
C - - - - - 0x0003EC 00:C3DC: A9 02     LDA #con_flag_demo
C - - - - - 0x0003EE 00:C3DE: 85 46     STA ram_2nd_loop_flag
C - - - - - 0x0003F0 00:C3E0: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x0003F3 00:C3E3: A2 1A     LDX #$1A
C - - - - - 0x0003F5 00:C3E5: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x0003F7 00:C3E7: A0 46     LDY #$46
C - - - - - 0x0003F9 00:C3E9: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x0003FB 00:C3EB: A9 D2     LDA #> tbl_D299_huge_text___battle
C - - - - - 0x0003FD 00:C3ED: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x0003FF 00:C3EF: A9 99     LDA #< tbl_D299_huge_text___battle
C - - - - - 0x000401 00:C3F1: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x000403 00:C3F3: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x000406 00:C3F6: A2 3C     LDX #$3C
C - - - - - 0x000408 00:C3F8: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x00040A 00:C3FA: A0 78     LDY #$78
C - - - - - 0x00040C 00:C3FC: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x00040E 00:C3FE: A9 D2     LDA #> tbl_D2A0_hige_text___city
C - - - - - 0x000410 00:C400: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x000412 00:C402: A9 A0     LDA #< tbl_D2A0_hige_text___city
C - - - - - 0x000414 00:C404: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x000416 00:C406: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x000419 00:C409: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x00041C 00:C40C: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x00041F 00:C40F: 20 31 C3  JSR sub_C331
C - - - - - 0x000422 00:C412: 20 F5 CA  JSR sub_CAF5_draw_default_base
C - - - - - 0x000425 00:C415: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000428 00:C418: A9 05     LDA #$05
C - - - - - 0x00042A 00:C41A: 85 6C     STA ram_enemy_limit
C - - - - - 0x00042C 00:C41C: 60        RTS



sub_C41D_demo_handler:
bra_C41D_loop:
C - - - - - 0x00042D 00:C41D: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000430 00:C420: A5 08     LDA ram_btn_press
C - - - - - 0x000432 00:C422: 29 0C     AND #con_btns_SS
C - - - - - 0x000434 00:C424: D0 19     BNE bra_C43F
C - - - - - 0x000436 00:C426: 20 42 C6  JSR sub_C642
C - - - - - 0x000439 00:C429: 20 E6 C2  JSR sub_C2E6_main_battle_script
C - - - - - 0x00043C 00:C42C: 20 3B E2  JSR sub_E23B_display_bonus_on_screen
C - - - - - 0x00043F 00:C42F: 20 A6 DE  JSR sub_DEA6_tanks_handler
C - - - - - 0x000442 00:C432: 20 D8 E0  JSR sub_E0D8_bullets_status_handler
C - - - - - 0x000445 00:C435: 20 28 C7  JSR sub_C728_check_condition_for_stage_ending
C - - - - - 0x000448 00:C438: F0 E3     BEQ bra_C41D_loop
C - - - - - 0x00044A 00:C43A: A9 00     LDA #$00
C - - - - - 0x00044C 00:C43C: 85 0C     STA ram_buffer_index
C - - - - - 0x00044E 00:C43E: 60        RTS
bra_C43F:
C - - - - - 0x00044F 00:C43F: 68        PLA
C - - - - - 0x000450 00:C440: 68        PLA
C - - - - - 0x000451 00:C441: A9 00     LDA #$00
C - - - - - 0x000453 00:C443: 85 0C     STA ram_buffer_index
C - - - - - 0x000455 00:C445: 20 6A D1  JSR sub_D16A
C - - - - - 0x000458 00:C448: 4C A2 C0  JMP loc_C0A2_title_screen_and_demo_loop



sub_C44B:
C - - - - - 0x00045B 00:C44B: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x00045E 00:C44E: A9 1C     LDA #con_ppu_offset_2000
C - - - - - 0x000460 00:C450: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x000462 00:C452: A9 00     LDA #$00
C - - - - - 0x000464 00:C454: 85 4F     STA ram_scroll_Y
C - - - - - 0x000466 00:C456: 85 50     STA ram_base_nmt
C - - - - - 0x000468 00:C458: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x00046B 00:C45B: A2 10     LDX #$10
C - - - - - 0x00046D 00:C45D: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x00046F 00:C45F: A0 32     LDY #$32
C - - - - - 0x000471 00:C461: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x000473 00:C463: A9 D2     LDA #> tbl_D2B5_huge_text___hiscore
C - - - - - 0x000475 00:C465: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x000477 00:C467: A9 B5     LDA #< tbl_D2B5_huge_text___hiscore
C - - - - - 0x000479 00:C469: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x00047B 00:C46B: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x00047E 00:C46E: 20 51 D9  JSR sub_D951_draw_huge_hiscore
C - - - - - 0x000481 00:C471: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x000484 00:C474: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x000487 00:C477: A9 00     LDA #$00
C - - - - - 0x000489 00:C479: 85 0A     STA ram_frm_cnt_hi
C - - - - - 0x00048B 00:C47B: A9 01     LDA #$01
C - - - - - 0x00048D 00:C47D: 8D 15 03  STA ram_sfx_hiscore_1
C - - - - - 0x000490 00:C480: 8D 16 03  STA ram_sfx_hiscore_2
C - - - - - 0x000493 00:C483: 8D 17 03  STA ram_sfx_hiscore_3
bra_C486_loop:
C - - - - - 0x000496 00:C486: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000499 00:C489: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x00049B 00:C48B: 29 03     AND #$03
C - - - - - 0x00049D 00:C48D: 18        CLC
C - - - - - 0x00049E 00:C48E: 69 05     ADC #$05
; con_bg_pal_05
; con_bg_pal_06
; con_bg_pal_07
; con_bg_pal_08
C - - - - - 0x0004A0 00:C490: 85 4D     STA ram_bg_palette_id
C - - - - - 0x0004A2 00:C492: AD 15 03  LDA ram_sfx_hiscore_1
C - - - - - 0x0004A5 00:C495: D0 EF     BNE bra_C486_loop   ; wait until sound is played
C - - - - - 0x0004A7 00:C497: A9 00     LDA #con_bg_pal_00
C - - - - - 0x0004A9 00:C499: 85 4D     STA ram_bg_palette_id
C - - - - - 0x0004AB 00:C49B: 60        RTS



sub_C49C_play_hidden_cutscene:
C - - - - - 0x0004AC 00:C49C: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x0004AF 00:C49F: A9 1C     LDA #con_ppu_offset_2000
C - - - - - 0x0004B1 00:C4A1: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x0004B3 00:C4A3: A9 00     LDA #$00
C - - - - - 0x0004B5 00:C4A5: 85 4F     STA ram_scroll_Y
C - - - - - 0x0004B7 00:C4A7: 85 50     STA ram_base_nmt
C - - - - - 0x0004B9 00:C4A9: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x0004BC 00:C4AC: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x0004BF 00:C4AF: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x0004C2 00:C4B2: 20 67 C5  JSR sub_C567_wait_64_frm
C - - - - - 0x0004C5 00:C4B5: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x0004C8 00:C4B8: A9 D3     LDA #> tbl_D30F_text___this_progrm_was
C - - - - - 0x0004CA 00:C4BA: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0004CC 00:C4BC: A9 0F     LDA #< tbl_D30F_text___this_progrm_was
C - - - - - 0x0004CE 00:C4BE: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0004D0 00:C4C0: A2 08     LDX #($0508 & $001F)    ; 2108
C - - - - - 0x0004D2 00:C4C2: A0 08     LDY #($0508 - $0400) / $20
C - - - - - 0x0004D4 00:C4C4: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0004D7 00:C4C7: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x0004DA 00:C4CA: A9 D2     LDA #> tbl_D284_text___written_by
C - - - - - 0x0004DC 00:C4CC: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0004DE 00:C4CE: A9 84     LDA #< tbl_D284_text___written_by
C - - - - - 0x0004E0 00:C4D0: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0004E2 00:C4D2: A2 08     LDX #($0548 & $001F)    ; 2148
C - - - - - 0x0004E4 00:C4D4: A0 0A     LDY #($0548 - $0400) / $20
C - - - - - 0x0004E6 00:C4D6: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0004E9 00:C4D9: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x0004EC 00:C4DC: A9 D3     LDA #> tbl_D334_text___open_reach
C - - - - - 0x0004EE 00:C4DE: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0004F0 00:C4E0: A9 34     LDA #< tbl_D334_text___open_reach
C - - - - - 0x0004F2 00:C4E2: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0004F4 00:C4E4: A2 08     LDX #($0588 & $001F)    ; 2188
C - - - - - 0x0004F6 00:C4E6: A0 0C     LDY #($0588 - $0400) / $20
C - - - - - 0x0004F8 00:C4E8: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0004FB 00:C4EB: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x0004FE 00:C4EE: A9 D3     LDA #> tbl_D34D_text___who_loves_noriko
C - - - - - 0x000500 00:C4F0: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000502 00:C4F2: A9 4D     LDA #< tbl_D34D_text___who_loves_noriko
C - - - - - 0x000504 00:C4F4: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000506 00:C4F6: A2 08     LDX #($05C8 & $001F)    ; 21C8
C - - - - - 0x000508 00:C4F8: A0 0E     LDY #($05C8 - $0400) / $20
C - - - - - 0x00050A 00:C4FA: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x00050D 00:C4FD: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x000510 00:C500: A9 D3     LDA #> tbl_D341_tile___dot
C - - - - - 0x000512 00:C502: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000514 00:C504: A9 3F     LDA #< tbl_D341_tile___dot
C - - - - - 0x000516 00:C506: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000518 00:C508: A2 08     LDX #($0608 & $001F)    ; 2208
C - - - - - 0x00051A 00:C50A: A0 10     LDY #($0608 - $0400) / $20
C - - - - - 0x00051C 00:C50C: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x00051F 00:C50F: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x000522 00:C512: A9 D3     LDA #> tbl_D341_tile___dot
C - - - - - 0x000524 00:C514: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000526 00:C516: A9 3F     LDA #< tbl_D341_tile___dot
C - - - - - 0x000528 00:C518: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00052A 00:C51A: A2 09     LDX #($0609 & $001F)    ; 2209
C - - - - - 0x00052C 00:C51C: A0 10     LDY #($0609 - $0400) / $20
C - - - - - 0x00052E 00:C51E: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000531 00:C521: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x000534 00:C524: A9 D3     LDA #> tbl_D341_tile___dot
C - - - - - 0x000536 00:C526: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000538 00:C528: A9 3F     LDA #< tbl_D341_tile___dot
C - - - - - 0x00053A 00:C52A: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00053C 00:C52C: A2 0A     LDX #($060A & $001F)    ; 220A
C - - - - - 0x00053E 00:C52E: A0 10     LDY #($060A - $0400) / $20
C - - - - - 0x000540 00:C530: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000543 00:C533: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x000546 00:C536: A9 D3     LDA #> tbl_D341_tile___dot
C - - - - - 0x000548 00:C538: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00054A 00:C53A: A9 3F     LDA #< tbl_D341_tile___dot
C - - - - - 0x00054C 00:C53C: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00054E 00:C53E: A2 0B     LDX #($060B & $001F)    ; 220B
C - - - - - 0x000550 00:C540: A0 10     LDY #($060B - $0400) / $20
C - - - - - 0x000552 00:C542: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000555 00:C545: 20 67 C5  JSR sub_C567_wait_64_frm
; 
C - - - - - 0x000558 00:C548: A9 D3     LDA #> tbl_D341_tile___dot
C - - - - - 0x00055A 00:C54A: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00055C 00:C54C: A9 3F     LDA #< tbl_D341_tile___dot
C - - - - - 0x00055E 00:C54E: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000560 00:C550: A2 0C     LDX #($060C & $001F)    ; 220C
C - - - - - 0x000562 00:C552: A0 10     LDY #($060C - $0400) / $20
C - - - - - 0x000564 00:C554: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
; 
C - - - - - 0x000567 00:C557: 20 75 C5  JSR sub_C575
C - - - - - 0x00056A 00:C55A: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x00056D 00:C55D: 20 B0 C9  JSR sub_C9B0_create_default_stage_field
C - - - - - 0x000570 00:C560: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
; bzk optimize, JMP
C - - - - - 0x000573 00:C563: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x000576 00:C566: 60        RTS



sub_C567_wait_64_frm:
; wait 64 frames
C - - - - - 0x000577 00:C567: A9 00     LDA #$00
C - - - - - 0x000579 00:C569: 85 0B     STA ram_frm_cnt_lo
bra_C56B_loop:
C - - - - - 0x00057B 00:C56B: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00057E 00:C56E: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x000580 00:C570: 29 3F     AND #$3F
C - - - - - 0x000582 00:C572: D0 F7     BNE bra_C56B_loop
C - - - - - 0x000584 00:C574: 60        RTS



sub_C575:
C - - - - - 0x000585 00:C575: A9 78     LDA #$78
C - - - - - 0x000587 00:C577: 85 56     STA ram_0056_t03_spr_X
C - - - - - 0x000589 00:C579: A9 1E     LDA #$1E
C - - - - - 0x00058B 00:C57B: 85 57     STA ram_0057_t03_spr_Y
C - - - - - 0x00058D 00:C57D: A9 00     LDA #$00
C - - - - - 0x00058F 00:C57F: 85 5A     STA ram_005A_t18
bra_C581_loop:
C - - - - - 0x000591 00:C581: 20 B0 C5  JSR sub_C5B0
C - - - - - 0x000594 00:C584: 20 B0 C5  JSR sub_C5B0
C - - - - - 0x000597 00:C587: 20 B0 C5  JSR sub_C5B0
C - - - - - 0x00059A 00:C58A: 20 B0 C5  JSR sub_C5B0
C - - - - - 0x00059D 00:C58D: E6 5A     INC ram_005A_t18
C - - - - - 0x00059F 00:C58F: A5 5A     LDA ram_005A_t18
C - - - - - 0x0005A1 00:C591: C9 07     CMP #$07
C - - - - - 0x0005A3 00:C593: D0 EC     BNE bra_C581_loop
bra_C595_loop:
C - - - - - 0x0005A5 00:C595: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x0005A8 00:C598: E6 57     INC ram_0057_t03_spr_Y
C - - - - - 0x0005AA 00:C59A: A9 9D     LDA #$9D
C - - - - - 0x0005AC 00:C59C: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x0005AE 00:C59E: A9 01     LDA #$01
C - - - - - 0x0005B0 00:C5A0: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x0005B2 00:C5A2: A6 56     LDX ram_0056_t03_spr_X
C - - - - - 0x0005B4 00:C5A4: A4 57     LDY ram_0057_t03_spr_Y
C - - - - - 0x0005B6 00:C5A6: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x0005B9 00:C5A9: A5 57     LDA ram_0057_t03_spr_Y
C - - - - - 0x0005BB 00:C5AB: C9 F8     CMP #$F8
C - - - - - 0x0005BD 00:C5AD: D0 E6     BNE bra_C595_loop
C - - - - - 0x0005BF 00:C5AF: 60        RTS



sub_C5B0:
C - - - - - 0x0005C0 00:C5B0: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x0005C3 00:C5B3: A9 03     LDA #$03
C - - - - - 0x0005C5 00:C5B5: 85 04     STA ram_0004_t01_spr_A_palette
; bzk optimize, loading the same A
C - - - - - 0x0005C7 00:C5B7: A9 03     LDA #$03
C - - - - - 0x0005C9 00:C5B9: 38        SEC
C - - - - - 0x0005CA 00:C5BA: E5 5A     SBC ram_005A_t18
C - - - - - 0x0005CC 00:C5BC: 10 05     BPL bra_C5C3
; EOR if negative
C - - - - - 0x0005CE 00:C5BE: 49 FF     EOR #$FF
C - - - - - 0x0005D0 00:C5C0: 18        CLC
C - - - - - 0x0005D1 00:C5C1: 69 01     ADC #$01
bra_C5C3:
C - - - - - 0x0005D3 00:C5C3: 85 00     STA ram_0000_t02
C - - - - - 0x0005D5 00:C5C5: A9 03     LDA #$03
C - - - - - 0x0005D7 00:C5C7: 38        SEC
C - - - - - 0x0005D8 00:C5C8: E5 00     SBC ram_0000_t02
; * 04
C - - - - - 0x0005DA 00:C5CA: 0A        ASL
C - - - - - 0x0005DB 00:C5CB: 0A        ASL
C - - - - - 0x0005DC 00:C5CC: 18        CLC
C - - - - - 0x0005DD 00:C5CD: 69 A1     ADC #$A1
C - - - - - 0x0005DF 00:C5CF: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x0005E1 00:C5D1: A6 56     LDX ram_0056_t03_spr_X
C - - - - - 0x0005E3 00:C5D3: A4 57     LDY ram_0057_t03_spr_Y
; bzk optimize, JMP
C - - - - - 0x0005E5 00:C5D5: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x0005E8 00:C5D8: 60        RTS



sub_C5D9:
C - - - - - 0x0005E9 00:C5D9: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x0005EC 00:C5DC: A9 1C     LDA #con_ppu_offset_2000
C - - - - - 0x0005EE 00:C5DE: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x0005F0 00:C5E0: A9 00     LDA #$00
C - - - - - 0x0005F2 00:C5E2: 85 4F     STA ram_scroll_Y
C - - - - - 0x0005F4 00:C5E4: 85 50     STA ram_base_nmt
C - - - - - 0x0005F6 00:C5E6: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x0005F9 00:C5E9: A2 3C     LDX #$3C
C - - - - - 0x0005FB 00:C5EB: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x0005FD 00:C5ED: A0 46     LDY #$46
C - - - - - 0x0005FF 00:C5EF: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x000601 00:C5F1: A9 D3     LDA #> tbl_D343_huge_text___game
C - - - - - 0x000603 00:C5F3: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x000605 00:C5F5: A9 43     LDA #< tbl_D343_huge_text___game
C - - - - - 0x000607 00:C5F7: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x000609 00:C5F9: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x00060C 00:C5FC: A2 3C     LDX #$3C
C - - - - - 0x00060E 00:C5FE: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x000610 00:C600: A0 78     LDY #$78
C - - - - - 0x000612 00:C602: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x000614 00:C604: A9 D3     LDA #> tbl_D348_huge_text___over
C - - - - - 0x000616 00:C606: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x000618 00:C608: A9 48     LDA #< tbl_D348_huge_text___over
C - - - - - 0x00061A 00:C60A: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x00061C 00:C60C: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x00061F 00:C60F: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x000622 00:C612: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x000625 00:C615: A9 00     LDA #$00
C - - - - - 0x000627 00:C617: 85 0A     STA ram_frm_cnt_hi
C - - - - - 0x000629 00:C619: A9 01     LDA #$01
C - - - - - 0x00062B 00:C61B: 8D 18 03  STA ram_sfx_game_over_1
C - - - - - 0x00062E 00:C61E: 8D 19 03  STA ram_sfx_game_over_2
C - - - - - 0x000631 00:C621: 8D 1A 03  STA ram_sfx_game_over_3
bra_C624_loop:
C - - - - - 0x000634 00:C624: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000637 00:C627: A5 08     LDA ram_btn_press
C - - - - - 0x000639 00:C629: 29 0C     AND #con_btns_SS
C - - - - - 0x00063B 00:C62B: D0 05     BNE bra_C632_skip_game_over_screen
C - - - - - 0x00063D 00:C62D: AD 18 03  LDA ram_sfx_game_over_1
C - - - - - 0x000640 00:C630: D0 F2     BNE bra_C624_loop   ; wait until sound is played
bra_C632_skip_game_over_screen:
C - - - - - 0x000642 00:C632: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x000645 00:C635: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x000648 00:C638: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x00064B 00:C63B: 20 67 D4  JSR sub_D467_enable_nmi
; bzk optimize, JMP
C - - - - - 0x00064E 00:C63E: 20 51 EA  JSR sub_EA51_clear_sound_engine_data
C - - - - - 0x000651 00:C641: 60        RTS



sub_C642:
C - - - - - 0x000652 00:C642: A9 01     LDA #$01
C - - - - - 0x000654 00:C644: 85 5A     STA ram_005A_t19_player_index
bra_C646_loop:
C - - - - - 0x000656 00:C646: A6 5A     LDX ram_005A_t19_player_index
C - - - - - 0x000658 00:C648: A5 86     LDA ram_bonus_pos_X
C - - - - - 0x00065A 00:C64A: F0 12     BEQ bra_C65E_bonus_not_available
C - - - - - 0x00065C 00:C64C: A5 62     LDA ram_0062_bonus_timer
C - - - - - 0x00065E 00:C64E: D0 0E     BNE bra_C65E_bonus_not_available
; follow bonus
C - - - - - 0x000660 00:C650: A5 86     LDA ram_bonus_pos_X
C - - - - - 0x000662 00:C652: 85 71     STA ram_enemy_destination_X
C - - - - - 0x000664 00:C654: A5 87     LDA ram_bonus_pos_Y
C - - - - - 0x000666 00:C656: 85 72     STA ram_enemy_destination_Y
C - - - - - 0x000668 00:C658: 20 A2 DD  JSR sub_DDA2
C - - - - - 0x00066B 00:C65B: 4C A5 C6  JMP loc_C6A5
bra_C65E_bonus_not_available:
C - - - - - 0x00066E 00:C65E: B5 A2     LDA ram_tank_flags + $02,X
C - - - - - 0x000670 00:C660: 10 12     BPL bra_C674
C - - - - - 0x000672 00:C662: C9 E0     CMP #$E0
C - - - - - 0x000674 00:C664: B0 0E     BCS bra_C674
C - - - - - 0x000676 00:C666: B5 92     LDA ram_tank_pos_X + $02,X
C - - - - - 0x000678 00:C668: 85 71     STA ram_enemy_destination_X
C - - - - - 0x00067A 00:C66A: B5 9A     LDA ram_tank_pos_Y + $02,X
C - - - - - 0x00067C 00:C66C: 85 72     STA ram_enemy_destination_Y
C - - - - - 0x00067E 00:C66E: 20 A2 DD  JSR sub_DDA2
C - - - - - 0x000681 00:C671: 4C A5 C6  JMP loc_C6A5
bra_C674:
C - - - - - 0x000684 00:C674: B5 A4     LDA ram_tank_flags + $04,X
C - - - - - 0x000686 00:C676: 10 12     BPL bra_C68A
C - - - - - 0x000688 00:C678: C9 E0     CMP #$E0
C - - - - - 0x00068A 00:C67A: B0 0E     BCS bra_C68A
C - - - - - 0x00068C 00:C67C: B5 94     LDA ram_tank_pos_X + $04,X
C - - - - - 0x00068E 00:C67E: 85 71     STA ram_enemy_destination_X
C - - - - - 0x000690 00:C680: B5 9C     LDA ram_tank_pos_Y + $04,X
C - - - - - 0x000692 00:C682: 85 72     STA ram_enemy_destination_Y
C - - - - - 0x000694 00:C684: 20 A2 DD  JSR sub_DDA2
C - - - - - 0x000697 00:C687: 4C A5 C6  JMP loc_C6A5
bra_C68A:
C - - - - - 0x00069A 00:C68A: B5 A3     LDA ram_tank_flags + $03,X
C - - - - - 0x00069C 00:C68C: 10 12     BPL bra_C6A0
C - - - - - 0x00069E 00:C68E: C9 E0     CMP #$E0
C - - - - - 0x0006A0 00:C690: B0 0E     BCS bra_C6A0
C - - - - - 0x0006A2 00:C692: B5 93     LDA ram_tank_pos_X + $03,X
C - - - - - 0x0006A4 00:C694: 85 71     STA ram_enemy_destination_X
C - - - - - 0x0006A6 00:C696: B5 9B     LDA ram_tank_pos_Y + $03,X
C - - - - - 0x0006A8 00:C698: 85 72     STA ram_enemy_destination_Y
C - - - - - 0x0006AA 00:C69A: 20 A2 DD  JSR sub_DDA2
C - - - - - 0x0006AD 00:C69D: 4C A5 C6  JMP loc_C6A5
bra_C6A0:
C - - - - - 0x0006B0 00:C6A0: A9 00     LDA #$00
; bzk optimize, BEQ
C - - - - - 0x0006B2 00:C6A2: 4C AB C6  JMP loc_C6AB



loc_C6A5:
C D 2 - - - 0x0006B5 00:C6A5: 29 03     AND #$03
C - - - - - 0x0006B7 00:C6A7: A8        TAY
C - - - - - 0x0006B8 00:C6A8: B9 C2 C6  LDA tbl_C6C2,Y
loc_C6AB:   ; A = 00
C D 2 - - - 0x0006BB 00:C6AB: A6 5A     LDX ram_005A_t19_player_index
C - - - - - 0x0006BD 00:C6AD: 95 06     STA ram_btn_hold,X
C - - - - - 0x0006BF 00:C6AF: 95 08     STA ram_btn_press,X
C - - - - - 0x0006C1 00:C6B1: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x0006C3 00:C6B3: C9 C8     CMP #$C8
C - - - - - 0x0006C5 00:C6B5: 90 06     BCC bra_C6BD
C - - - - - 0x0006C7 00:C6B7: B5 08     LDA ram_btn_press,X
C - - - - - 0x0006C9 00:C6B9: 29 F0     AND #con_btns_Dpad
C - - - - - 0x0006CB 00:C6BB: 95 08     STA ram_btn_press,X
bra_C6BD:
C - - - - - 0x0006CD 00:C6BD: C6 5A     DEC ram_005A_t19_player_index
C - - - - - 0x0006CF 00:C6BF: 10 85     BPL bra_C646_loop
C - - - - - 0x0006D1 00:C6C1: 60        RTS



tbl_C6C2:
- D 2 - - - 0x0006D2 00:C6C2: 13        .byte $13   ; 00 
- D 2 - - - 0x0006D3 00:C6C3: 43        .byte $43   ; 01 
- D 2 - - - 0x0006D4 00:C6C4: 23        .byte $23   ; 02 
- D 2 - - - 0x0006D5 00:C6C5: 83        .byte $83   ; 03 



sub_C6C6_paste_created_block:
C - - - - - 0x0006D6 00:C6C6: A5 5C     LDA ram_constr_block_id
; bzk optimize, block id is never > 0F
C - - - - - 0x0006D8 00:C6C8: 29 0F     AND #$0F
C - - - - - 0x0006DA 00:C6CA: A6 90     LDX ram_tank_pos_X
C - - - - - 0x0006DC 00:C6CC: A4 98     LDY ram_tank_pos_Y
; bzk optimize, JMP
C - - - - - 0x0006DE 00:C6CE: 20 0B D8  JSR sub_D80B_write_block_tiles_and_attribute_to_buffer
C - - - - - 0x0006E1 00:C6D1: 60        RTS



sub_C6D2_move_construction_cursor:
C - - - - - 0x0006E2 00:C6D2: A5 06     LDA ram_btn_hold
C - - - - - 0x0006E4 00:C6D4: 29 F0     AND #con_btns_Dpad
C - - - - - 0x0006E6 00:C6D6: F0 09     BEQ bra_C6E1
C - - - - - 0x0006E8 00:C6D8: E6 7B     INC ram_constr_hold_Dpad_timer
C - - - - - 0x0006EA 00:C6DA: A9 00     LDA #$00
C - - - - - 0x0006EC 00:C6DC: 85 81     STA ram_0081_flag
; bzk optimize, BEQ
C - - - - - 0x0006EE 00:C6DE: 4C E5 C6  JMP loc_C6E5
bra_C6E1:
C - - - - - 0x0006F1 00:C6E1: A9 00     LDA #$00
C - - - - - 0x0006F3 00:C6E3: 85 7B     STA ram_constr_hold_Dpad_timer
loc_C6E5:
C D 2 - - - 0x0006F5 00:C6E5: A5 7B     LDA ram_constr_hold_Dpad_timer
C - - - - - 0x0006F7 00:C6E7: C9 14     CMP #$14
C - - - - - 0x0006F9 00:C6E9: F0 10     BEQ bra_C6FB
C - - - - - 0x0006FB 00:C6EB: A5 08     LDA ram_btn_press
C - - - - - 0x0006FD 00:C6ED: 29 F0     AND #con_btns_Dpad
C - - - - - 0x0006FF 00:C6EF: F0 2C     BEQ bra_C71D_RTS
C - - - - - 0x000701 00:C6F1: A5 08     LDA ram_btn_press
C - - - - - 0x000703 00:C6F3: 20 51 E4  JSR sub_E451_convert_Dpad_buttons
C - - - - - 0x000706 00:C6F6: 30 25     BMI bra_C71D_RTS    ; no Dpad buttons pressed
C - - - - - 0x000708 00:C6F8: 4C 04 C7  JMP loc_C704
bra_C6FB:
C - - - - - 0x00070B 00:C6FB: A9 0F     LDA #$0F
C - - - - - 0x00070D 00:C6FD: 85 7B     STA ram_constr_hold_Dpad_timer
C - - - - - 0x00070F 00:C6FF: A5 06     LDA ram_btn_hold
C - - - - - 0x000711 00:C701: 20 51 E4  JSR sub_E451_convert_Dpad_buttons
loc_C704:
C D 2 - - - 0x000714 00:C704: A8        TAY
C - - - - - 0x000715 00:C705: B9 D5 D3  LDA tbl_D3D5_construction_cursor_speed_X,Y
; * 10
C - - - - - 0x000718 00:C708: 0A        ASL
C - - - - - 0x000719 00:C709: 0A        ASL
C - - - - - 0x00071A 00:C70A: 0A        ASL
C - - - - - 0x00071B 00:C70B: 0A        ASL
C - - - - - 0x00071C 00:C70C: 18        CLC
C - - - - - 0x00071D 00:C70D: 65 90     ADC ram_tank_pos_X
C - - - - - 0x00071F 00:C70F: 85 90     STA ram_tank_pos_X
C - - - - - 0x000721 00:C711: B9 D9 D3  LDA tbl_D3D9_construction_cursor_speed_Y,Y
; * 10
C - - - - - 0x000724 00:C714: 0A        ASL
C - - - - - 0x000725 00:C715: 0A        ASL
C - - - - - 0x000726 00:C716: 0A        ASL
C - - - - - 0x000727 00:C717: 0A        ASL
C - - - - - 0x000728 00:C718: 18        CLC
C - - - - - 0x000729 00:C719: 65 98     ADC ram_tank_pos_Y
C - - - - - 0x00072B 00:C71B: 85 98     STA ram_tank_pos_Y
bra_C71D_RTS:
C - - - - - 0x00072D 00:C71D: 60        RTS



sub_C71E_clear_kill_counters:
C - - - - - 0x00072E 00:C71E: A2 07     LDX #$07
C - - - - - 0x000730 00:C720: A9 00     LDA #$00
bra_C722_loop:
C - - - - - 0x000732 00:C722: 95 73     STA ram_enemy_type_kill_cnt,X
C - - - - - 0x000734 00:C724: CA        DEX
C - - - - - 0x000735 00:C725: 10 FB     BPL bra_C722_loop
C - - - - - 0x000737 00:C727: 60        RTS



sub_C728_check_condition_for_stage_ending:
C - - - - - 0x000738 00:C728: A5 68     LDA ram_game_over_flag
C - - - - - 0x00073A 00:C72A: F0 0B     BEQ bra_C737_it_is_game_over
C - - - - - 0x00073C 00:C72C: A5 80     LDA ram_enemies_left_cnt
C - - - - - 0x00073E 00:C72E: F0 1F     BEQ bra_C74F_all_enemies_are_killed
C - - - - - 0x000740 00:C730: A5 51     LDA ram_lives
C - - - - - 0x000742 00:C732: 18        CLC
C - - - - - 0x000743 00:C733: 65 52     ADC ram_lives + $01
C - - - - - 0x000745 00:C735: D0 1B     BNE bra_C752_someone_is_alive
bra_C737_it_is_game_over:
C - - - - - 0x000747 00:C737: A9 70     LDA #$70
C - - - - - 0x000749 00:C739: 8D 05 01  STA ram_game_over_msg_pos_X
C - - - - - 0x00074C 00:C73C: A9 F0     LDA #$F0
C - - - - - 0x00074E 00:C73E: 8D 06 01  STA ram_game_over_msg_pos_Y
C - - - - - 0x000751 00:C741: A9 00     LDA #$00    ; move up
C - - - - - 0x000753 00:C743: 8D 07 01  STA ram_game_over_msg_mov_type
C - - - - - 0x000756 00:C746: A9 11     LDA #$11
C - - - - - 0x000758 00:C748: 8D 08 01  STA ram_game_over_msg_timer
C - - - - - 0x00075B 00:C74B: A9 00     LDA #$00
C - - - - - 0x00075D 00:C74D: 85 0B     STA ram_frm_cnt_lo
bra_C74F_all_enemies_are_killed:
C - - - - - 0x00075F 00:C74F: A9 01     LDA #$01    ; end current stage
C - - - - - 0x000761 00:C751: 60        RTS
bra_C752_someone_is_alive:
C - - - - - 0x000762 00:C752: A9 00     LDA #$00    ; do not end current stage yet
C - - - - - 0x000764 00:C754: 60        RTS



; bzk garbage
; hidden unused debug mode, displays content of Zero Page address
; https://tcrf.net/Battle_City_(NES)

; how to activate:
; 1 - free up at least 3 bytes of space by deleting some garbage
; 2 - create a label here, for example "sub_C755_hidden_debug_mode:"
; 3 - add a JSR to it, for example at 0x00032C
; 4 - compile the disassembly
; 5 - load any stage, use A/B buttons to change RAM address
C - - - - - 0x000765 00:C755: AD 09 01  LDA ram_debug_address_index
C - - - - - 0x000768 00:C758: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
C - - - - - 0x00076B 00:C75B: A9 30     LDA #$30
C - - - - - 0x00076D 00:C75D: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x00076F 00:C75F: A9 00     LDA #> ram_com_dec_num_hundreds
C - - - - - 0x000771 00:C761: 85 12     STA ram_0011_t12_data + $01
C - - - - - 0x000773 00:C763: A9 39     LDA #< ram_com_dec_num_hundreds
C - - - - - 0x000775 00:C765: 85 11     STA ram_0011_t12_data
C - - - - - 0x000777 00:C767: A2 09     LDX #$09
C - - - - - 0x000779 00:C769: A0 02     LDY #$02    ; ppu pos_Y
C - - - - - 0x00077B 00:C76B: 20 DD D6  JSR sub_D6DD
C - - - - - 0x00077E 00:C76E: AE 09 01  LDX ram_debug_address_index
C - - - - - 0x000781 00:C771: B5 00     LDA $00,X
C - - - - - 0x000783 00:C773: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
C - - - - - 0x000786 00:C776: A9 00     LDA #> ram_com_dec_num_hundreds
C - - - - - 0x000788 00:C778: 85 12     STA ram_0011_t12_data + $01
C - - - - - 0x00078A 00:C77A: A9 39     LDA #< ram_com_dec_num_hundreds
C - - - - - 0x00078C 00:C77C: 85 11     STA ram_0011_t12_data
C - - - - - 0x00078E 00:C77E: A2 0D     LDX #$0D
C - - - - - 0x000790 00:C780: A0 02     LDY #$02    ; ppu pos_Y
C - - - - - 0x000792 00:C782: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000795 00:C785: A9 00     LDA #$00
C - - - - - 0x000797 00:C787: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x000799 00:C789: A5 08     LDA ram_btn_press
C - - - - - 0x00079B 00:C78B: 29 04     AND #con_btn_Select
C - - - - - 0x00079D 00:C78D: F0 03     BEQ bra_C792
- - - - - - 0x00079F 00:C78F: EE 09 01  INC ram_debug_address_index
bra_C792:
C - - - - - 0x0007A2 00:C792: A5 08     LDA ram_btn_press
C - - - - - 0x0007A4 00:C794: 29 02     AND #con_btn_B
C - - - - - 0x0007A6 00:C796: F0 03     BEQ bra_C79B
C - - - - - 0x0007A8 00:C798: CE 09 01  DEC ram_debug_address_index
bra_C79B:
C - - - - - 0x0007AB 00:C79B: A5 08     LDA ram_btn_press
C - - - - - 0x0007AD 00:C79D: 29 01     AND #con_btn_A
C - - - - - 0x0007AF 00:C79F: F0 09     BEQ bra_C7AA_RTS
C - - - - - 0x0007B1 00:C7A1: AD 09 01  LDA ram_debug_address_index
C - - - - - 0x0007B4 00:C7A4: 18        CLC
C - - - - - 0x0007B5 00:C7A5: 69 10     ADC #$10
C - - - - - 0x0007B7 00:C7A7: 8D 09 01  STA ram_debug_address_index
bra_C7AA_RTS:
C - - - - - 0x0007BA 00:C7AA: 60        RTS



sub_C7AB_scroll_title_screen:
C - - - - - 0x0007BB 00:C7AB: A9 00     LDA #$00
C - - - - - 0x0007BD 00:C7AD: 85 4F     STA ram_scroll_Y
C - - - - - 0x0007BF 00:C7AF: 85 50     STA ram_base_nmt
bra_C7B1_loop:
C - - - - - 0x0007C1 00:C7B1: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x0007C4 00:C7B4: E6 4F     INC ram_scroll_Y
C - - - - - 0x0007C6 00:C7B6: A5 08     LDA ram_btn_press
C - - - - - 0x0007C8 00:C7B8: 29 0C     AND #con_btns_SS
C - - - - - 0x0007CA 00:C7BA: D0 07     BNE bra_C7C3
C - - - - - 0x0007CC 00:C7BC: A5 4F     LDA ram_scroll_Y
C - - - - - 0x0007CE 00:C7BE: C9 F0     CMP #$F0
C - - - - - 0x0007D0 00:C7C0: D0 EF     BNE bra_C7B1_loop
C - - - - - 0x0007D2 00:C7C2: 60        RTS
bra_C7C3:
C - - - - - 0x0007D3 00:C7C3: 68        PLA
C - - - - - 0x0007D4 00:C7C4: 68        PLA
C - - - - - 0x0007D5 00:C7C5: 4C A2 C0  JMP loc_C0A2_title_screen_and_demo_loop



sub_C7C8_print_lives_handler:
C - - - - - 0x0007D8 00:C7C8: A9 01     LDA #$01
C - - - - - 0x0007DA 00:C7CA: 85 5A     STA ram_005A_t20_player_index
C - - - - - 0x0007DC 00:C7CC: 85 6B     STA ram_006B_flag
C - - - - - 0x0007DE 00:C7CE: A9 6E     LDA #$6E
C - - - - - 0x0007E0 00:C7D0: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x0007E2 00:C7D2: A9 D3     LDA #> tbl_D341_tile___player_icon
C - - - - - 0x0007E4 00:C7D4: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0007E6 00:C7D6: A9 41     LDA #< tbl_D341_tile___player_icon
C - - - - - 0x0007E8 00:C7D8: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0007EA 00:C7DA: A2 1D     LDX #($065D & $001F)    ; 225D
C - - - - - 0x0007EC 00:C7DC: A0 12     LDY #($065D - $0400) / $20
C - - - - - 0x0007EE 00:C7DE: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0007F1 00:C7E1: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x0007F3 00:C7E3: C9 02     CMP #con_flag_demo
C - - - - - 0x0007F5 00:C7E5: F0 0B     BEQ bra_C7F2    ; it's a demo
C - - - - - 0x0007F7 00:C7E7: A5 83     LDA ram_game_mode
C - - - - - 0x0007F9 00:C7E9: D0 07     BNE bra_C7F2    ; if 2p mode
; if 1p mode
C - - - - - 0x0007FB 00:C7EB: A9 00     LDA #$00
C - - - - - 0x0007FD 00:C7ED: 85 5A     STA ram_005A_t20_player_index
C - - - - - 0x0007FF 00:C7EF: 4C 01 C8  JMP loc_C801
bra_C7F2:
C - - - - - 0x000802 00:C7F2: A9 D3     LDA #> tbl_D341_tile___player_icon
C - - - - - 0x000804 00:C7F4: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000806 00:C7F6: A9 41     LDA #< tbl_D341_tile___player_icon
C - - - - - 0x000808 00:C7F8: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00080A 00:C7FA: A2 1D     LDX #($06BD & $001F)    ; 22BD
C - - - - - 0x00080C 00:C7FC: A0 15     LDY #($06BD - $0400) / $20
C - - - - - 0x00080E 00:C7FE: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
loc_C801:
bra_C801_loop:
C D 2 - - - 0x000811 00:C801: A6 5A     LDX ram_005A_t20_player_index
C - - - - - 0x000813 00:C803: B5 51     LDA ram_lives,X
C - - - - - 0x000815 00:C805: 38        SEC
C - - - - - 0x000816 00:C806: E9 01     SBC #$01
C - - - - - 0x000818 00:C808: 10 02     BPL bra_C80C
C - - - - - 0x00081A 00:C80A: A9 00     LDA #$00
bra_C80C:
C - - - - - 0x00081C 00:C80C: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x00081F 00:C80F: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000821 00:C811: A2 19     LDX #$19
C - - - - - 0x000823 00:C813: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000826 00:C816: A5 5A     LDA ram_005A_t20_player_index
; * 03
C - - - - - 0x000828 00:C818: 85 00     STA ram_0000_t13
C - - - - - 0x00082A 00:C81A: 0A        ASL
C - - - - - 0x00082B 00:C81B: 18        CLC
C - - - - - 0x00082C 00:C81C: 65 00     ADC ram_0000_t13
; 
C - - - - - 0x00082E 00:C81E: 18        CLC
C - - - - - 0x00082F 00:C81F: 69 12     ADC #$12
C - - - - - 0x000831 00:C821: A8        TAY
C - - - - - 0x000832 00:C822: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000835 00:C825: C6 5A     DEC ram_005A_t20_player_index
C - - - - - 0x000837 00:C827: 10 D8     BPL bra_C801_loop
C - - - - - 0x000839 00:C829: A9 00     LDA #$00
C - - - - - 0x00083B 00:C82B: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x00083D 00:C82D: 85 6B     STA ram_006B_flag
C - - - - - 0x00083F 00:C82F: 60        RTS



sub_C830_draw_Ip_IIp_icons:
C - - - - - 0x000840 00:C830: A9 D2     LDA #> tbl_D2AB_text___Ip
C - - - - - 0x000842 00:C832: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000844 00:C834: A9 AB     LDA #< tbl_D2AB_text___Ip
C - - - - - 0x000846 00:C836: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000848 00:C838: A2 1D     LDX #($063D & $001F)    ; 223D
C - - - - - 0x00084A 00:C83A: A0 11     LDY #($063D - $0400) / $20
C - - - - - 0x00084C 00:C83C: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x00084F 00:C83F: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x000851 00:C841: C9 02     CMP #con_flag_demo
C - - - - - 0x000853 00:C843: F0 04     BEQ bra_C849_it_is_demo
C - - - - - 0x000855 00:C845: A5 83     LDA ram_game_mode
C - - - - - 0x000857 00:C847: F0 0F     BEQ bra_C858_RTS    ; if 1p mode
bra_C849_it_is_demo:
C - - - - - 0x000859 00:C849: A9 D2     LDA #> tbl_D2AE_text___IIp
C - - - - - 0x00085B 00:C84B: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00085D 00:C84D: A9 AE     LDA #< tbl_D2AE_text___IIp
C - - - - - 0x00085F 00:C84F: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000861 00:C851: A2 1D     LDX #($069D & $001F)    ; 229D
C - - - - - 0x000863 00:C853: A0 14     LDY #($069D - $0400) / $20
; bzk optimize, JMP
C - - - - - 0x000865 00:C855: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
bra_C858_RTS:
C - - - - - 0x000868 00:C858: 60        RTS



sub_C859_draw_flag_above_stage_number:
C - - - - - 0x000869 00:C859: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00086C 00:C85C: A9 D3     LDA #> tbl_D365_tiles___flag1
C - - - - - 0x00086E 00:C85E: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000870 00:C860: A9 65     LDA #< tbl_D365_tiles___flag1
C - - - - - 0x000872 00:C862: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000874 00:C864: A2 1D     LDX #($06FD & $001F)    ; 22FD
C - - - - - 0x000876 00:C866: A0 17     LDY #($06FD - $0400) / $20
C - - - - - 0x000878 00:C868: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x00087B 00:C86B: A9 D3     LDA #> tbl_D368_tiles___flag2
C - - - - - 0x00087D 00:C86D: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00087F 00:C86F: A9 68     LDA #< tbl_D368_tiles___flag2
C - - - - - 0x000881 00:C871: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000883 00:C873: A2 1D     LDX #($071D & $001F)    ; 231D
C - - - - - 0x000885 00:C875: A0 18     LDY #($071D - $0400) / $20
C - - - - - 0x000887 00:C877: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x00088A 00:C87A: A9 6E     LDA #$6E
C - - - - - 0x00088C 00:C87C: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x00088E 00:C87E: A5 85     LDA ram_stage
C - - - - - 0x000890 00:C880: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000893 00:C883: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000895 00:C885: A2 19     LDX #$19    ; ppu pos_X
C - - - - - 0x000897 00:C887: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x00089A 00:C88A: A0 19     LDY #$19    ; ppu pos_Y
C - - - - - 0x00089C 00:C88C: 20 DD D6  JSR sub_D6DD
C - - - - - 0x00089F 00:C88F: A9 00     LDA #$00
C - - - - - 0x0008A1 00:C891: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x0008A3 00:C893: 60        RTS



sub_C894_calculate_enemy_icon_pos:
; in
    ; A = 
; out
    ; X = 
    ; Y = 
C - - - - - 0x0008A4 00:C894: 48        PHA
C - - - - - 0x0008A5 00:C895: 29 01     AND #$01
C - - - - - 0x0008A7 00:C897: 18        CLC
C - - - - - 0x0008A8 00:C898: 69 1D     ADC #$1D
C - - - - - 0x0008AA 00:C89A: AA        TAX
C - - - - - 0x0008AB 00:C89B: 68        PLA
C - - - - - 0x0008AC 00:C89C: 4A        LSR
C - - - - - 0x0008AD 00:C89D: 18        CLC
C - - - - - 0x0008AE 00:C89E: 69 03     ADC #$03
C - - - - - 0x0008B0 00:C8A0: A8        TAY
C - - - - - 0x0008B1 00:C8A1: 60        RTS



sub_C8A2_draw_enemy_icon:
C - - - - - 0x0008B2 00:C8A2: 20 94 C8  JSR sub_C894_calculate_enemy_icon_pos
C - - - - - 0x0008B5 00:C8A5: A9 D3     LDA #> tbl_D362_tile___enemy_icon
C - - - - - 0x0008B7 00:C8A7: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0008B9 00:C8A9: A9 62     LDA #< tbl_D362_tile___enemy_icon
C - - - - - 0x0008BB 00:C8AB: 85 11     STA ram_0011_t02_ppu_data
; bzk optimize, JMP
C - - - - - 0x0008BD 00:C8AD: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0008C0 00:C8B0: 60        RTS



sub_C8B1_erase_enemy_icon:
C - - - - - 0x0008C1 00:C8B1: 20 94 C8  JSR sub_C894_calculate_enemy_icon_pos
C - - - - - 0x0008C4 00:C8B4: A9 D3     LDA #> tbl_D36B_tile___gray
C - - - - - 0x0008C6 00:C8B6: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0008C8 00:C8B8: A9 6B     LDA #< tbl_D36B_tile___gray
C - - - - - 0x0008CA 00:C8BA: 85 11     STA ram_0011_t02_ppu_data
; bzk optimize, JMP
C - - - - - 0x0008CC 00:C8BC: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0008CF 00:C8BF: 60        RTS



sub_C8C0_draw_20_enemy_icons:
C - - - - - 0x0008D0 00:C8C0: A9 12     LDA #$12
C - - - - - 0x0008D2 00:C8C2: 85 5A     STA ram_005A_t21
bra_C8C4_loop:
C - - - - - 0x0008D4 00:C8C4: A5 5A     LDA ram_005A_t21
C - - - - - 0x0008D6 00:C8C6: 20 A2 C8  JSR sub_C8A2_draw_enemy_icon
C - - - - - 0x0008D9 00:C8C9: C6 5A     DEC ram_005A_t21
C - - - - - 0x0008DB 00:C8CB: C6 5A     DEC ram_005A_t21
C - - - - - 0x0008DD 00:C8CD: 10 F5     BPL bra_C8C4_loop
C - - - - - 0x0008DF 00:C8CF: 60        RTS



sub_C8D0_screen_borders_for_construction_tank_icon:
C - - - - - 0x0008E0 00:C8D0: A5 90     LDA ram_tank_pos_X
C - - - - - 0x0008E2 00:C8D2: C9 D8     CMP #$D8
C - - - - - 0x0008E4 00:C8D4: 90 04     BCC bra_C8DA
C - - - - - 0x0008E6 00:C8D6: A9 D8     LDA #$D8
C - - - - - 0x0008E8 00:C8D8: 85 90     STA ram_tank_pos_X
bra_C8DA:
C - - - - - 0x0008EA 00:C8DA: A5 90     LDA ram_tank_pos_X
C - - - - - 0x0008EC 00:C8DC: C9 18     CMP #$18
C - - - - - 0x0008EE 00:C8DE: B0 04     BCS bra_C8E4
C - - - - - 0x0008F0 00:C8E0: A9 18     LDA #$18
C - - - - - 0x0008F2 00:C8E2: 85 90     STA ram_tank_pos_X
bra_C8E4:
C - - - - - 0x0008F4 00:C8E4: A5 98     LDA ram_tank_pos_Y
C - - - - - 0x0008F6 00:C8E6: C9 D8     CMP #$D8
C - - - - - 0x0008F8 00:C8E8: 90 04     BCC bra_C8EE
C - - - - - 0x0008FA 00:C8EA: A9 D8     LDA #$D8
C - - - - - 0x0008FC 00:C8EC: 85 98     STA ram_tank_pos_Y
bra_C8EE:
C - - - - - 0x0008FE 00:C8EE: A5 98     LDA ram_tank_pos_Y
C - - - - - 0x000900 00:C8F0: C9 18     CMP #$18
C - - - - - 0x000902 00:C8F2: B0 04     BCS bra_C8F8_RTS
C - - - - - 0x000904 00:C8F4: A9 18     LDA #$18
C - - - - - 0x000906 00:C8F6: 85 98     STA ram_tank_pos_Y
bra_C8F8_RTS:
C - - - - - 0x000908 00:C8F8: 60        RTS



sub_C8F9_display_pause_text:
C - - - - - 0x000909 00:C8F9: A5 6D     LDA ram_pause_flag
C - - - - - 0x00090B 00:C8FB: F0 49     BEQ bra_C946_RTS    ; game is not paused
; if paused
C - - - - - 0x00090D 00:C8FD: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x00090F 00:C8FF: 29 10     AND #$10
C - - - - - 0x000911 00:C901: F0 43     BEQ bra_C946_RTS    ; show/hide each 16 frames
C - - - - - 0x000913 00:C903: A9 03     LDA #$03
C - - - - - 0x000915 00:C905: 85 04     STA ram_0004_t01_spr_A_palette
; bzk optimize, useless LDA + STA?
C - - - - - 0x000917 00:C907: A9 00     LDA #$00
C - - - - - 0x000919 00:C909: 85 6E     STA ram_priority_spr_A
C - - - - - 0x00091B 00:C90B: A2 64     LDX #$64    ; spr_X
C - - - - - 0x00091D 00:C90D: A0 80     LDY #$80    ; spr_Y
C - - - - - 0x00091F 00:C90F: A9 17     LDA #$17    ; spr_T
C - - - - - 0x000921 00:C911: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x000923 00:C913: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x000926 00:C916: A2 6C     LDX #$6C    ; spr_X
C - - - - - 0x000928 00:C918: A0 80     LDY #$80    ; spr_Y
C - - - - - 0x00092A 00:C91A: A9 19     LDA #$19    ; spr_T
C - - - - - 0x00092C 00:C91C: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x00092E 00:C91E: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x000931 00:C921: A2 74     LDX #$74    ; spr_X
C - - - - - 0x000933 00:C923: A0 80     LDY #$80    ; spr_Y
C - - - - - 0x000935 00:C925: A9 1B     LDA #$1B    ; spr_T
C - - - - - 0x000937 00:C927: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x000939 00:C929: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x00093C 00:C92C: A2 7C     LDX #$7C    ; spr_X
C - - - - - 0x00093E 00:C92E: A0 80     LDY #$80    ; spr_Y
C - - - - - 0x000940 00:C930: A9 1D     LDA #$1D    ; spr_T
C - - - - - 0x000942 00:C932: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x000944 00:C934: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x000947 00:C937: A2 84     LDX #$84    ; spr_X
C - - - - - 0x000949 00:C939: A0 80     LDY #$80    ; spr_Y
C - - - - - 0x00094B 00:C93B: A9 1F     LDA #$1F    ; spr_T
C - - - - - 0x00094D 00:C93D: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x00094F 00:C93F: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x000952 00:C942: A9 20     LDA #$20
C - - - - - 0x000954 00:C944: 85 6E     STA ram_priority_spr_A
bra_C946_RTS:
C - - - - - 0x000956 00:C946: 60        RTS



sub_C947_display_game_over_text_with_sprites:
C - - - - - 0x000957 00:C947: A9 03     LDA #$03
C - - - - - 0x000959 00:C949: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x00095B 00:C94B: A9 00     LDA #$00
C - - - - - 0x00095D 00:C94D: 85 6E     STA ram_priority_spr_A
C - - - - - 0x00095F 00:C94F: AE 05 01  LDX ram_game_over_msg_pos_X    ; spr_X
C - - - - - 0x000962 00:C952: AC 06 01  LDY ram_game_over_msg_pos_Y    ; spr_Y
C - - - - - 0x000965 00:C955: A9 79     LDA #$79
C - - - - - 0x000967 00:C957: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x000969 00:C959: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x00096C 00:C95C: AD 05 01  LDA ram_game_over_msg_pos_X
C - - - - - 0x00096F 00:C95F: 18        CLC
C - - - - - 0x000970 00:C960: 69 10     ADC #$10
C - - - - - 0x000972 00:C962: AA        TAX ; spr_X
C - - - - - 0x000973 00:C963: AC 06 01  LDY ram_game_over_msg_pos_Y    ; spr_Y
C - - - - - 0x000976 00:C966: A9 7D     LDA #$7D
C - - - - - 0x000978 00:C968: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x00097A 00:C96A: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x00097D 00:C96D: A9 20     LDA #$20
C - - - - - 0x00097F 00:C96F: 85 6E     STA ram_priority_spr_A
C - - - - - 0x000981 00:C971: 60        RTS



sub_C972_game_over_text_handler:
C - - - - - 0x000982 00:C972: AD 08 01  LDA ram_game_over_msg_timer    ; no message
C - - - - - 0x000985 00:C975: F0 38     BEQ bra_C9AF_RTS
C - - - - - 0x000987 00:C977: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x000989 00:C979: C9 02     CMP #con_flag_demo
C - - - - - 0x00098B 00:C97B: F0 32     BEQ bra_C9AF_RTS    ; it's a demo 
C - - - - - 0x00098D 00:C97D: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x00098F 00:C97F: 29 0F     AND #$0F
C - - - - - 0x000991 00:C981: D0 0A     BNE bra_C98D
C - - - - - 0x000993 00:C983: CE 08 01  DEC ram_game_over_msg_timer    ; decrease every 16 frames
C - - - - - 0x000996 00:C986: D0 05     BNE bra_C98D
- - - - - - 0x000998 00:C988: A9 F0     LDA #$F0
- - - - - - 0x00099A 00:C98A: 8D 06 01  STA ram_game_over_msg_pos_Y
bra_C98D:
C - - - - - 0x00099D 00:C98D: AD 08 01  LDA ram_game_over_msg_timer
C - - - - - 0x0009A0 00:C990: C9 0A     CMP #$0A
C - - - - - 0x0009A2 00:C992: 90 18     BCC bra_C9AC_stop_moving_timer
C - - - - - 0x0009A4 00:C994: AD 07 01  LDA ram_game_over_msg_mov_type
C - - - - - 0x0009A7 00:C997: A8        TAY
C - - - - - 0x0009A8 00:C998: B9 D5 D3  LDA tbl_D3D5_construction_cursor_speed_X,Y
C - - - - - 0x0009AB 00:C99B: 18        CLC
C - - - - - 0x0009AC 00:C99C: 6D 05 01  ADC ram_game_over_msg_pos_X
C - - - - - 0x0009AF 00:C99F: 8D 05 01  STA ram_game_over_msg_pos_X
C - - - - - 0x0009B2 00:C9A2: B9 D9 D3  LDA tbl_D3D9_construction_cursor_speed_Y,Y
C - - - - - 0x0009B5 00:C9A5: 18        CLC
C - - - - - 0x0009B6 00:C9A6: 6D 06 01  ADC ram_game_over_msg_pos_Y
C - - - - - 0x0009B9 00:C9A9: 8D 06 01  STA ram_game_over_msg_pos_Y
bra_C9AC_stop_moving_timer:
; bzk optimize, JMP
C - - - - - 0x0009BC 00:C9AC: 20 47 C9  JSR sub_C947_display_game_over_text_with_sprites
bra_C9AF_RTS:
C - - - - - 0x0009BF 00:C9AF: 60        RTS



sub_C9B0_create_default_stage_field:
C - - - - - 0x0009C0 00:C9B0: A9 02     LDA #$02
C - - - - - 0x0009C2 00:C9B2: 85 56     STA ram_0056_t05_useless_02
C - - - - - 0x0009C4 00:C9B4: 85 57     STA ram_0057_t07_useless_02
C - - - - - 0x0009C6 00:C9B6: A9 1A     LDA #$1A
C - - - - - 0x0009C8 00:C9B8: 85 5A     STA ram_005A_t23_loop_counter
C - - - - - 0x0009CA 00:C9BA: 85 5B     STA ram_005B_t05_useless_1A
; bzk optimize, JMP
C - - - - - 0x0009CC 00:C9BC: 20 CC D7  JSR sub_D7CC_create_default_stage_field
C - - - - - 0x0009CF 00:C9BF: 60        RTS



sub_C9C0_title_screen_handler:
C - - - - - 0x0009D0 00:C9C0: A9 03     LDA #con_bg_pal_03
C - - - - - 0x0009D2 00:C9C2: 85 4D     STA ram_bg_palette_id
C - - - - - 0x0009D4 00:C9C4: 20 13 E4  JSR sub_E413_clear_some_tank_addresses
C - - - - - 0x0009D7 00:C9C7: A9 48     LDA #$48
C - - - - - 0x0009D9 00:C9C9: 85 90     STA ram_tank_pos_X
C - - - - - 0x0009DB 00:C9CB: 20 85 CA  JSR sub_CA85_write_cursor_position
C - - - - - 0x0009DE 00:C9CE: A9 83     LDA #con_tank_flag_80 + $03
C - - - - - 0x0009E0 00:C9D0: 85 A0     STA ram_tank_flags
C - - - - - 0x0009E2 00:C9D2: A9 00     LDA #$00
C - - - - - 0x0009E4 00:C9D4: 85 0A     STA ram_frm_cnt_hi
C - - - - - 0x0009E6 00:C9D6: 85 A8     STA ram_tank_type
C - - - - - 0x0009E8 00:C9D8: 85 B0     STA ram_tank_wheels
C - - - - - 0x0009EA 00:C9DA: 85 6F     STA ram_plr_stun_timer
C - - - - - 0x0009EC 00:C9DC: 85 70     STA ram_plr_stun_timer + $01
C - - - - - 0x0009EE 00:C9DE: 85 4F     STA ram_scroll_Y
C - - - - - 0x0009F0 00:C9E0: 85 4A     STA ram_hidden_cutscene_action_cnt
C - - - - - 0x0009F2 00:C9E2: A9 02     LDA #$02
C - - - - - 0x0009F4 00:C9E4: 85 50     STA ram_base_nmt
bra_C9E6_loop:
C - - - - - 0x0009F6 00:C9E6: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x0009F9 00:C9E9: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x0009FB 00:C9EB: 29 03     AND #$03
C - - - - - 0x0009FD 00:C9ED: D0 06     BNE bra_C9F5
C - - - - - 0x0009FF 00:C9EF: A5 B0     LDA ram_tank_wheels
C - - - - - 0x000A01 00:C9F1: 49 04     EOR #$04
C - - - - - 0x000A03 00:C9F3: 85 B0     STA ram_tank_wheels
bra_C9F5:
C - - - - - 0x000A05 00:C9F5: 20 A6 DE  JSR sub_DEA6_tanks_handler
C - - - - - 0x000A08 00:C9F8: A5 08     LDA ram_btn_press
C - - - - - 0x000A0A 00:C9FA: 29 04     AND #con_btn_Select
C - - - - - 0x000A0C 00:C9FC: F0 06     BEQ bra_CA04_select_not_pressed
C - - - - - 0x000A0E 00:C9FE: E6 83     INC ram_game_mode
C - - - - - 0x000A10 00:CA00: A9 00     LDA #$00    ; reset high counter before demo starts
C - - - - - 0x000A12 00:CA02: 85 0A     STA ram_frm_cnt_hi
bra_CA04_select_not_pressed:
C - - - - - 0x000A14 00:CA04: A5 06     LDA ram_btn_hold
C - - - - - 0x000A16 00:CA06: 29 20     AND #con_btn_Down
C - - - - - 0x000A18 00:CA08: F0 0D     BEQ bra_CA17_button_not_pressed
C - - - - - 0x000A1A 00:CA0A: A5 09     LDA ram_btn_press + $01
C - - - - - 0x000A1C 00:CA0C: 29 01     AND #con_btn_A
C - - - - - 0x000A1E 00:CA0E: F0 07     BEQ bra_CA17_button_not_pressed
C - - - - - 0x000A20 00:CA10: A9 10     LDA #$10
C - - - - - 0x000A22 00:CA12: 18        CLC
C - - - - - 0x000A23 00:CA13: 65 4A     ADC ram_hidden_cutscene_action_cnt
C - - - - - 0x000A25 00:CA15: 85 4A     STA ram_hidden_cutscene_action_cnt
bra_CA17_button_not_pressed:
C - - - - - 0x000A27 00:CA17: A5 06     LDA ram_btn_hold
C - - - - - 0x000A29 00:CA19: 29 80     AND #con_btn_Right
C - - - - - 0x000A2B 00:CA1B: F0 08     BEQ bra_CA25
C - - - - - 0x000A2D 00:CA1D: A5 09     LDA ram_btn_press + $01
C - - - - - 0x000A2F 00:CA1F: 29 02     AND #con_btn_B
C - - - - - 0x000A31 00:CA21: F0 02     BEQ bra_CA25
C - - - - - 0x000A33 00:CA23: C6 4A     DEC ram_hidden_cutscene_action_cnt
bra_CA25:
C - - - - - 0x000A35 00:CA25: A5 83     LDA ram_game_mode
C - - - - - 0x000A37 00:CA27: C9 03     CMP #$03
C - - - - - 0x000A39 00:CA29: 90 04     BCC bra_CA2F_not_overflow
C - - - - - 0x000A3B 00:CA2B: A9 00     LDA #$00
C - - - - - 0x000A3D 00:CA2D: 85 83     STA ram_game_mode
bra_CA2F_not_overflow:
C - - - - - 0x000A3F 00:CA2F: 20 85 CA  JSR sub_CA85_write_cursor_position
C - - - - - 0x000A42 00:CA32: A5 0A     LDA ram_frm_cnt_hi
C - - - - - 0x000A44 00:CA34: C9 0A     CMP #$0A
C - - - - - 0x000A46 00:CA36: D0 05     BNE bra_CA3D_still_waiting_for_demo
C - - - - - 0x000A48 00:CA38: A5 4B     LDA ram_constr_usage_cnt
C - - - - - 0x000A4A 00:CA3A: D0 01     BNE bra_CA3D_still_waiting_for_demo
C - - - - - 0x000A4C 00:CA3C: 60        RTS
bra_CA3D_still_waiting_for_demo:
C - - - - - 0x000A4D 00:CA3D: A5 08     LDA ram_btn_press
C - - - - - 0x000A4F 00:CA3F: 29 08     AND #con_btn_Start
C - - - - - 0x000A51 00:CA41: F0 A3     BEQ bra_C9E6_loop
C - - - - - 0x000A53 00:CA43: A5 4B     LDA ram_constr_usage_cnt
C - - - - - 0x000A55 00:CA45: C9 07     CMP #$07
C - - - - - 0x000A57 00:CA47: D0 09     BNE bra_CA52_skip_hidden_cutscene
; if you went to the construction screen and back 7 times
C - - - - - 0x000A59 00:CA49: A5 4A     LDA ram_hidden_cutscene_action_cnt
C - - - - - 0x000A5B 00:CA4B: C9 74     CMP #$74
C - - - - - 0x000A5D 00:CA4D: D0 03     BNE bra_CA52_skip_hidden_cutscene
; if you pressed proper buttons enough times
C - - - - - 0x000A5F 00:CA4F: 20 9C C4  JSR sub_C49C_play_hidden_cutscene
bra_CA52_skip_hidden_cutscene:
C - - - - - 0x000A62 00:CA52: A9 00     LDA #con_bg_pal_00
C - - - - - 0x000A64 00:CA54: 85 4D     STA ram_bg_palette_id
C - - - - - 0x000A66 00:CA56: 68        PLA ; skip demo and stuff
C - - - - - 0x000A67 00:CA57: 68        PLA
C - - - - - 0x000A68 00:CA58: A5 83     LDA ram_game_mode
C - - - - - 0x000A6A 00:CA5A: 0A        ASL
C - - - - - 0x000A6B 00:CA5B: A8        TAY
C - - - - - 0x000A6C 00:CA5C: B9 69 CA  LDA tbl_CA69_game_mode_handler,Y
C - - - - - 0x000A6F 00:CA5F: 85 11     STA ram_0011_t10_jmp
C - - - - - 0x000A71 00:CA61: B9 6A CA  LDA tbl_CA69_game_mode_handler + $01,Y
C - - - - - 0x000A74 00:CA64: 85 12     STA ram_0011_t10_jmp + $01
C - - - - - 0x000A76 00:CA66: 6C 11 00  JMP (ram_0011_t10_jmp)



tbl_CA69_game_mode_handler:
- D 2 - - - 0x000A79 00:CA69: 6F CA     .word ofs_000_CA6F_00_1_player
- D 2 - - - 0x000A7B 00:CA6B: 74 CA     .word ofs_000_CA74_01_2_players
- D 2 - - - 0x000A7D 00:CA6D: 7E CA     .word ofs_000_CA7E_02_construction



ofs_000_CA6F_00_1_player:
C - - J - - 0x000A7F 00:CA6F: A9 05     LDA #$05
; bzk optimize, BNE
C - - - - - 0x000A81 00:CA71: 4C 76 CA  JMP loc_CA76



ofs_000_CA74_01_2_players:
C - - J - - 0x000A84 00:CA74: A9 07     LDA #$07
loc_CA76:   ; A = 05
C D 2 - - - 0x000A86 00:CA76: 85 6C     STA ram_enemy_limit
C - - - - - 0x000A88 00:CA78: 20 B3 C2  JSR sub_C2B3_clear_score_and_prepare_player_data
C - - - - - 0x000A8B 00:CA7B: 4C 59 C1  JMP loc_C159



ofs_000_CA7E_02_construction:
C - - J - - 0x000A8E 00:CA7E: A9 07     LDA #$07
C - - - - - 0x000A90 00:CA80: 85 6C     STA ram_enemy_limit
C - - - - - 0x000A92 00:CA82: 4C AE C0  JMP loc_C0AE_construction_handler



sub_CA85_write_cursor_position:
; main menu
C - - - - - 0x000A95 00:CA85: A5 83     LDA ram_game_mode
; * 10
C - - - - - 0x000A97 00:CA87: 0A        ASL
C - - - - - 0x000A98 00:CA88: 0A        ASL
C - - - - - 0x000A99 00:CA89: 0A        ASL
C - - - - - 0x000A9A 00:CA8A: 0A        ASL
C - - - - - 0x000A9B 00:CA8B: 18        CLC
C - - - - - 0x000A9C 00:CA8C: 69 8B     ADC #$8B
C - - - - - 0x000A9E 00:CA8E: 85 98     STA ram_tank_pos_Y
C - - - - - 0x000AA0 00:CA90: 60        RTS



sub_CA91_print_word_stage_and_number:
C - - - - - 0x000AA1 00:CA91: 20 F6 D8  JSR sub_D8F6_wait_1_frm
; 05CC
C - - - - - 0x000AA4 00:CA94: A2 0C     LDX #($05CC & $001F)    ; 21CC
C - - - - - 0x000AA6 00:CA96: A0 0E     LDY #($05CC - $0400) / $20
C - - - - - 0x000AA8 00:CA98: 20 FB D5  JSR sub_D5FB_calculate_pointer
C - - - - - 0x000AAB 00:CA9B: A6 0C     LDX ram_buffer_index
C - - - - - 0x000AAD 00:CA9D: 18        CLC
C - - - - - 0x000AAE 00:CA9E: 69 1C     ADC #con_ppu_offset_2000
C - - - - - 0x000AB0 00:CAA0: 9D 80 01  STA ram_ppu_buffer,X    ; ppu hi
C - - - - - 0x000AB3 00:CAA3: E8        INX
C - - - - - 0x000AB4 00:CAA4: 98        TYA
C - - - - - 0x000AB5 00:CAA5: 9D 80 01  STA ram_ppu_buffer,X    ; ppu lo
C - - - - - 0x000AB8 00:CAA8: E8        INX
; print "STAGE  "
C - - - - - 0x000AB9 00:CAA9: A9 23     LDA #$23    ; "S"
C - - - - - 0x000ABB 00:CAAB: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000ABE 00:CAAE: E8        INX
C - - - - - 0x000ABF 00:CAAF: A9 24     LDA #$24    ; "T"
C - - - - - 0x000AC1 00:CAB1: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000AC4 00:CAB4: E8        INX
C - - - - - 0x000AC5 00:CAB5: A9 25     LDA #$25    ; "A"
C - - - - - 0x000AC7 00:CAB7: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000ACA 00:CABA: E8        INX
C - - - - - 0x000ACB 00:CABB: A9 26     LDA #$26    ; "G"
C - - - - - 0x000ACD 00:CABD: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000AD0 00:CAC0: E8        INX
C - - - - - 0x000AD1 00:CAC1: A9 27     LDA #$27    ; "E"
C - - - - - 0x000AD3 00:CAC3: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000AD6 00:CAC6: E8        INX
C - - - - - 0x000AD7 00:CAC7: A9 11     LDA #$11    ; " "
C - - - - - 0x000AD9 00:CAC9: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000ADC 00:CACC: E8        INX
C - - - - - 0x000ADD 00:CACD: A9 11     LDA #$11    ; " "
C - - - - - 0x000ADF 00:CACF: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000AE2 00:CAD2: E8        INX
; close buffer
C - - - - - 0x000AE3 00:CAD3: A9 FF     LDA #$FF
C - - - - - 0x000AE5 00:CAD5: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000AE8 00:CAD8: E8        INX
C - - - - - 0x000AE9 00:CAD9: 86 0C     STX ram_buffer_index
C - - - - - 0x000AEB 00:CADB: A9 6E     LDA #$6E
C - - - - - 0x000AED 00:CADD: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x000AEF 00:CADF: A5 85     LDA ram_stage
C - - - - - 0x000AF1 00:CAE1: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000AF4 00:CAE4: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000AF6 00:CAE6: A2 0E     LDX #$0E    ; ppu pos_X
C - - - - - 0x000AF8 00:CAE8: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000AFB 00:CAEB: A0 0E     LDY #$0E    ; ppu pos_Y
C - - - - - 0x000AFD 00:CAED: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000B00 00:CAF0: A9 00     LDA #$00
C - - - - - 0x000B02 00:CAF2: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x000B04 00:CAF4: 60        RTS



sub_CAF5_draw_default_base:
; unprotecrted base
C - - - - - 0x000B05 00:CAF5: A9 D3     LDA #> tbl_D36D_tiles___default_base___line1
C - - - - - 0x000B07 00:CAF7: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000B09 00:CAF9: A9 6D     LDA #< tbl_D36D_tiles___default_base___line1
C - - - - - 0x000B0B 00:CAFB: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000B0D 00:CAFD: A2 0C     LDX #($070C & $001F)    ; 230C
C - - - - - 0x000B0F 00:CAFF: A0 18     LDY #($070C - $0400) / $20
C - - - - - 0x000B11 00:CB01: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000B14 00:CB04: A9 D3     LDA #> tbl_D374_tiles___default_base___line2
C - - - - - 0x000B16 00:CB06: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000B18 00:CB08: A9 74     LDA #< tbl_D374_tiles___default_base___line2
C - - - - - 0x000B1A 00:CB0A: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000B1C 00:CB0C: A2 0C     LDX #($072C & $001F)    ; 232C
C - - - - - 0x000B1E 00:CB0E: A0 19     LDY #($072C - $0400) / $20
C - - - - - 0x000B20 00:CB10: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000B23 00:CB13: A9 D3     LDA #> tbl_D37B_tiles___default_base___line3
C - - - - - 0x000B25 00:CB15: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000B27 00:CB17: A9 7B     LDA #< tbl_D37B_tiles___default_base___line3
C - - - - - 0x000B29 00:CB19: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000B2B 00:CB1B: A2 0C     LDX #($074C & $001F)    ; 234C
C - - - - - 0x000B2D 00:CB1D: A0 1A     LDY #($074C - $0400) / $20
C - - - - - 0x000B2F 00:CB1F: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000B32 00:CB22: A9 D3     LDA #> tbl_D382_tiles___default_base___line4
C - - - - - 0x000B34 00:CB24: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000B36 00:CB26: A9 82     LDA #< tbl_D382_tiles___default_base___line4
C - - - - - 0x000B38 00:CB28: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000B3A 00:CB2A: A2 0C     LDX #($076C & $001F)    ; 236C
C - - - - - 0x000B3C 00:CB2C: A0 1B     LDY #($076C - $0400) / $20
C - - - - - 0x000B3E 00:CB2E: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000B41 00:CB31: A6 0C     LDX ram_buffer_index
C - - - - - 0x000B43 00:CB33: A9 23     LDA #> $23F3
C - - - - - 0x000B45 00:CB35: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B48 00:CB38: E8        INX
C - - - - - 0x000B49 00:CB39: A9 F3     LDA #< $23F3
C - - - - - 0x000B4B 00:CB3B: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B4E 00:CB3E: E8        INX
C - - - - - 0x000B4F 00:CB3F: A9 00     LDA #$00
C - - - - - 0x000B51 00:CB41: 8D F3 07  STA ram_07F3
C - - - - - 0x000B54 00:CB44: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B57 00:CB47: E8        INX
C - - - - - 0x000B58 00:CB48: AD F4 07  LDA ram_07F4
C - - - - - 0x000B5B 00:CB4B: 29 CC     AND #$CC
C - - - - - 0x000B5D 00:CB4D: 8D F4 07  STA ram_07F4
C - - - - - 0x000B60 00:CB50: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B63 00:CB53: E8        INX
C - - - - - 0x000B64 00:CB54: A9 FF     LDA #$FF
C - - - - - 0x000B66 00:CB56: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B69 00:CB59: E8        INX
C - - - - - 0x000B6A 00:CB5A: 86 0C     STX ram_buffer_index
C - - - - - 0x000B6C 00:CB5C: 60        RTS



sub_CB5D_draw_default_eagle:
C - - - - - 0x000B6D 00:CB5D: A9 D3     LDA #> tbl_D3A5_tiles___default_eagle___line1
C - - - - - 0x000B6F 00:CB5F: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000B71 00:CB61: A9 A5     LDA #< tbl_D3A5_tiles___default_eagle___line1
C - - - - - 0x000B73 00:CB63: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000B75 00:CB65: A2 0E     LDX #($074E & $001F)    ; 234E
C - - - - - 0x000B77 00:CB67: A0 1A     LDY #($074E - $0400) / $20
C - - - - - 0x000B79 00:CB69: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000B7C 00:CB6C: A9 D3     LDA #> tbl_D3A8_tiles___default_eagle___line2
C - - - - - 0x000B7E 00:CB6E: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000B80 00:CB70: A9 A8     LDA #< tbl_D3A8_tiles___default_eagle___line2
C - - - - - 0x000B82 00:CB72: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000B84 00:CB74: A2 0E     LDX #($076E & $001F)    ; 236E
C - - - - - 0x000B86 00:CB76: A0 1B     LDY #($076E - $0400) / $20
C - - - - - 0x000B88 00:CB78: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000B8B 00:CB7B: A6 0C     LDX ram_buffer_index
C - - - - - 0x000B8D 00:CB7D: A9 23     LDA #> $23F3
C - - - - - 0x000B8F 00:CB7F: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B92 00:CB82: E8        INX
C - - - - - 0x000B93 00:CB83: A9 F3     LDA #< $23F3
C - - - - - 0x000B95 00:CB85: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000B98 00:CB88: E8        INX
C - - - - - 0x000B99 00:CB89: AD F3 07  LDA ram_07F3
C - - - - - 0x000B9C 00:CB8C: 29 3F     AND #$3F
C - - - - - 0x000B9E 00:CB8E: 8D F3 07  STA ram_07F3
C - - - - - 0x000BA1 00:CB91: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000BA4 00:CB94: E8        INX
C - - - - - 0x000BA5 00:CB95: A9 FF     LDA #$FF
C - - - - - 0x000BA7 00:CB97: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000BAA 00:CB9A: E8        INX
C - - - - - 0x000BAB 00:CB9B: 86 0C     STX ram_buffer_index
C - - - - - 0x000BAD 00:CB9D: 60        RTS



sub_CB9E_draw_protected_base:
C - - - - - 0x000BAE 00:CB9E: A9 D3     LDA #> tbl_D389_tiles___protected_base___line1
C - - - - - 0x000BB0 00:CBA0: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000BB2 00:CBA2: A9 89     LDA #< tbl_D389_tiles___protected_base___line1
C - - - - - 0x000BB4 00:CBA4: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000BB6 00:CBA6: A2 0C     LDX #($070C & $001F)    ; 230C
C - - - - - 0x000BB8 00:CBA8: A0 18     LDY #($070C - $0400) / $20
C - - - - - 0x000BBA 00:CBAA: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000BBD 00:CBAD: A9 D3     LDA #> tbl_D390_tiles___protected_base___line2
C - - - - - 0x000BBF 00:CBAF: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000BC1 00:CBB1: A9 90     LDA #< tbl_D390_tiles___protected_base___line2
C - - - - - 0x000BC3 00:CBB3: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000BC5 00:CBB5: A2 0C     LDX #($072C & $001F)    ; 232C
C - - - - - 0x000BC7 00:CBB7: A0 19     LDY #($072C - $0400) / $20
C - - - - - 0x000BC9 00:CBB9: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000BCC 00:CBBC: A9 D3     LDA #> tbl_D397_tiles___protected_base___line3
C - - - - - 0x000BCE 00:CBBE: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000BD0 00:CBC0: A9 97     LDA #< tbl_D397_tiles___protected_base___line3
C - - - - - 0x000BD2 00:CBC2: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000BD4 00:CBC4: A2 0C     LDX #($074C & $001F)    ; 234C
C - - - - - 0x000BD6 00:CBC6: A0 1A     LDY #($074C - $0400) / $20
C - - - - - 0x000BD8 00:CBC8: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000BDB 00:CBCB: A9 D3     LDA #> tbl_D39E_tiles___protected_base___line4
C - - - - - 0x000BDD 00:CBCD: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000BDF 00:CBCF: A9 9E     LDA #< tbl_D39E_tiles___protected_base___line4
C - - - - - 0x000BE1 00:CBD1: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000BE3 00:CBD3: A2 0C     LDX #($076C & $001F)    ; 236C
C - - - - - 0x000BE5 00:CBD5: A0 1B     LDY #($076C - $0400) / $20
C - - - - - 0x000BE7 00:CBD7: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000BEA 00:CBDA: A6 0C     LDX ram_buffer_index
C - - - - - 0x000BEC 00:CBDC: A9 23     LDA #> $23F3
C - - - - - 0x000BEE 00:CBDE: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000BF1 00:CBE1: E8        INX
C - - - - - 0x000BF2 00:CBE2: A9 F3     LDA #< $23F3
C - - - - - 0x000BF4 00:CBE4: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000BF7 00:CBE7: E8        INX
C - - - - - 0x000BF8 00:CBE8: A9 3F     LDA #$3F
C - - - - - 0x000BFA 00:CBEA: 8D F3 07  STA ram_07F3
C - - - - - 0x000BFD 00:CBED: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C00 00:CBF0: E8        INX
C - - - - - 0x000C01 00:CBF1: AD F4 07  LDA ram_07F4
C - - - - - 0x000C04 00:CBF4: 29 CC     AND #$CC
C - - - - - 0x000C06 00:CBF6: 09 33     ORA #$33
C - - - - - 0x000C08 00:CBF8: 8D F4 07  STA ram_07F4
C - - - - - 0x000C0B 00:CBFB: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C0E 00:CBFE: E8        INX
C - - - - - 0x000C0F 00:CBFF: A9 FF     LDA #$FF
C - - - - - 0x000C11 00:CC01: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C14 00:CC04: E8        INX
C - - - - - 0x000C15 00:CC05: 86 0C     STX ram_buffer_index
C - - - - - 0x000C17 00:CC07: 60        RTS



sub_CC08_draw_destroyed_eagle:
C - - - - - 0x000C18 00:CC08: A9 D3     LDA #> tbl_D3AB_tiles___destroyed_eagle___line1
C - - - - - 0x000C1A 00:CC0A: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000C1C 00:CC0C: A9 AB     LDA #< tbl_D3AB_tiles___destroyed_eagle___line1
C - - - - - 0x000C1E 00:CC0E: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000C20 00:CC10: A2 0E     LDX #($074E & $001F)    ; 234E
C - - - - - 0x000C22 00:CC12: A0 1A     LDY #($074E - $0400) / $20
C - - - - - 0x000C24 00:CC14: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000C27 00:CC17: A9 D3     LDA #> tbl_D3AE_tiles___destroyed_eagle___line2
C - - - - - 0x000C29 00:CC19: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000C2B 00:CC1B: A9 AE     LDA #< tbl_D3AE_tiles___destroyed_eagle___line2
C - - - - - 0x000C2D 00:CC1D: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000C2F 00:CC1F: A2 0E     LDX #($076E & $001F)    ; 236E
C - - - - - 0x000C31 00:CC21: A0 1B     LDY #($076E - $0400) / $20
; bzk optimize, JMP
C - - - - - 0x000C33 00:CC23: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000C36 00:CC26: 60        RTS



sub_CC27_write_nametable_attributes_to_ppu_buffer:
C - - - - - 0x000C37 00:CC27: A0 00     LDY #$00
C - - - - - 0x000C39 00:CC29: A9 23     LDA #> $23C0
C - - - - - 0x000C3B 00:CC2B: 85 12     STA ram_0012_t02_ppu_hi
C - - - - - 0x000C3D 00:CC2D: A9 C0     LDA #< $23C0
C - - - - - 0x000C3F 00:CC2F: 85 11     STA ram_0011_t18_ppu_lo
bra_CC31_loop:
C - - - - - 0x000C41 00:CC31: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000C44 00:CC34: A6 0C     LDX ram_buffer_index
C - - - - - 0x000C46 00:CC36: A5 12     LDA ram_0012_t02_ppu_hi
C - - - - - 0x000C48 00:CC38: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C4B 00:CC3B: E8        INX
C - - - - - 0x000C4C 00:CC3C: A5 11     LDA ram_0011_t18_ppu_lo
C - - - - - 0x000C4E 00:CC3E: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C51 00:CC41: E8        INX
C - - - - - 0x000C52 00:CC42: B9 C0 07  LDA ram_07C0_nmt_attr_buffer,Y
C - - - - - 0x000C55 00:CC45: C8        INY
C - - - - - 0x000C56 00:CC46: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C59 00:CC49: E8        INX
C - - - - - 0x000C5A 00:CC4A: A9 FF     LDA #$FF
C - - - - - 0x000C5C 00:CC4C: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C5F 00:CC4F: E8        INX
C - - - - - 0x000C60 00:CC50: 86 0C     STX ram_buffer_index
; bzk optimize, INC 0011 + BNE + INC 0012
; combination will be faster than JSR
C - - - - - 0x000C62 00:CC52: A9 01     LDA #$01
C - - - - - 0x000C64 00:CC54: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x000C67 00:CC57: C0 40     CPY #$40
C - - - - - 0x000C69 00:CC59: D0 D6     BNE bra_CC31_loop
C - - - - - 0x000C6B 00:CC5B: 60        RTS



sub_CC5C_draw_curtain:
; in
    ; Y = 
C - - - - - 0x000C6C 00:CC5C: A2 00     LDX #$00
C - - - - - 0x000C6E 00:CC5E: 20 FB D5  JSR sub_D5FB_calculate_pointer
C - - - - - 0x000C71 00:CC61: 85 12     STA ram_0011_t03_data + $01
C - - - - - 0x000C73 00:CC63: 84 11     STY ram_0011_t03_data
C - - - - - 0x000C75 00:CC65: A6 0C     LDX ram_buffer_index
C - - - - - 0x000C77 00:CC67: A5 12     LDA ram_0011_t03_data + $01
C - - - - - 0x000C79 00:CC69: 18        CLC
C - - - - - 0x000C7A 00:CC6A: 69 1C     ADC #con_ppu_offset_2000
C - - - - - 0x000C7C 00:CC6C: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C7F 00:CC6F: E8        INX
C - - - - - 0x000C80 00:CC70: A5 11     LDA ram_0011_t03_data
C - - - - - 0x000C82 00:CC72: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C85 00:CC75: E8        INX
C - - - - - 0x000C86 00:CC76: A0 00     LDY #$00
bra_CC78_loop:
C - - - - - 0x000C88 00:CC78: A5 63     LDA ram_0063_t01_grey_tile_flag
C - - - - - 0x000C8A 00:CC7A: D0 02     BNE bra_CC7E_grey_tile
; if custom tile
C - - - - - 0x000C8C 00:CC7C: B1 11     LDA (ram_0011_t03_data),Y
bra_CC7E_grey_tile:
C - - - - - 0x000C8E 00:CC7E: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C91 00:CC81: E8        INX
C - - - - - 0x000C92 00:CC82: C8        INY
C - - - - - 0x000C93 00:CC83: C0 20     CPY #$20
C - - - - - 0x000C95 00:CC85: D0 F1     BNE bra_CC78_loop
C - - - - - 0x000C97 00:CC87: A9 FF     LDA #$FF
C - - - - - 0x000C99 00:CC89: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x000C9C 00:CC8C: E8        INX
C - - - - - 0x000C9D 00:CC8D: 86 0C     STX ram_buffer_index
C - - - - - 0x000C9F 00:CC8F: 60        RTS



sub_CC90_close_grey_curtain:
C - - - - - 0x000CA0 00:CC90: A9 11     LDA #$11    ; grey tile
C - - - - - 0x000CA2 00:CC92: 85 63     STA ram_0063_t01_grey_tile_flag
C - - - - - 0x000CA4 00:CC94: A9 00     LDA #$00
C - - - - - 0x000CA6 00:CC96: 85 57     STA ram_0057_t06_close_curtain_counter
bra_CC98_loop:
C - - - - - 0x000CA8 00:CC98: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000CAB 00:CC9B: A4 57     LDY ram_0057_t06_close_curtain_counter
C - - - - - 0x000CAD 00:CC9D: 20 5C CC  JSR sub_CC5C_draw_curtain
C - - - - - 0x000CB0 00:CCA0: A9 1D     LDA #$1D
C - - - - - 0x000CB2 00:CCA2: 38        SEC
C - - - - - 0x000CB3 00:CCA3: E5 57     SBC ram_0057_t06_close_curtain_counter
C - - - - - 0x000CB5 00:CCA5: A8        TAY
C - - - - - 0x000CB6 00:CCA6: 20 5C CC  JSR sub_CC5C_draw_curtain
C - - - - - 0x000CB9 00:CCA9: E6 57     INC ram_0057_t06_close_curtain_counter
C - - - - - 0x000CBB 00:CCAB: A5 57     LDA ram_0057_t06_close_curtain_counter
C - - - - - 0x000CBD 00:CCAD: C9 10     CMP #$10
C - - - - - 0x000CBF 00:CCAF: D0 E7     BNE bra_CC98_loop
C - - - - - 0x000CC1 00:CCB1: 60        RTS



sub_CCB2_open_grey_curtain:
C - - - - - 0x000CC2 00:CCB2: A9 00     LDA #$00    ; custom tile
C - - - - - 0x000CC4 00:CCB4: 85 63     STA ram_0063_t01_grey_tile_flag
C - - - - - 0x000CC6 00:CCB6: A9 0F     LDA #$0F
C - - - - - 0x000CC8 00:CCB8: 85 57     STA ram_0057_t05_open_curtain_counter
bra_CCBA_loop:
C - - - - - 0x000CCA 00:CCBA: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000CCD 00:CCBD: A4 57     LDY ram_0057_t05_open_curtain_counter
C - - - - - 0x000CCF 00:CCBF: 20 5C CC  JSR sub_CC5C_draw_curtain
C - - - - - 0x000CD2 00:CCC2: A9 1D     LDA #$1D
C - - - - - 0x000CD4 00:CCC4: 38        SEC
C - - - - - 0x000CD5 00:CCC5: E5 57     SBC ram_0057_t05_open_curtain_counter
C - - - - - 0x000CD7 00:CCC7: A8        TAY
C - - - - - 0x000CD8 00:CCC8: 20 5C CC  JSR sub_CC5C_draw_curtain
C - - - - - 0x000CDB 00:CCCB: C6 57     DEC ram_0057_t05_open_curtain_counter
C - - - - - 0x000CDD 00:CCCD: A5 57     LDA ram_0057_t05_open_curtain_counter
C - - - - - 0x000CDF 00:CCCF: C9 FF     CMP #$FF
C - - - - - 0x000CE1 00:CCD1: D0 E7     BNE bra_CCBA_loop
C - - - - - 0x000CE3 00:CCD3: 60        RTS



sub_CCD4_score_after_stage_handler:
C - - - - - 0x000CE4 00:CCD4: 20 F7 CE  JSR sub_CEF7_draw_screen_with_score_count
C - - - - - 0x000CE7 00:CCD7: A2 1E     LDX #$1E
C - - - - - 0x000CE9 00:CCD9: 20 76 D2  JSR sub_D276_wait_while_displaying_enemy_tanks_with_sprites
; bzk optimize, total number is too low, a single CLC at the beginning is enough
C - - - - - 0x000CEC 00:CCDC: A5 73     LDA ram_p1_enemy_type_kill_cnt
C - - - - - 0x000CEE 00:CCDE: 18        CLC
C - - - - - 0x000CEF 00:CCDF: 65 74     ADC ram_p1_enemy_type_kill_cnt + $01
C - - - - - 0x000CF1 00:CCE1: 18        CLC
C - - - - - 0x000CF2 00:CCE2: 65 75     ADC ram_p1_enemy_type_kill_cnt + $02
C - - - - - 0x000CF4 00:CCE4: 18        CLC
C - - - - - 0x000CF5 00:CCE5: 65 76     ADC ram_p1_enemy_type_kill_cnt + $03
C - - - - - 0x000CF7 00:CCE7: 85 7D     STA ram_p1_total_kills
; bzk optimize, total number is too low, a single CLC at the beginning is enough
C - - - - - 0x000CF9 00:CCE9: A5 77     LDA ram_p2_enemy_type_kill_cnt
C - - - - - 0x000CFB 00:CCEB: 18        CLC
C - - - - - 0x000CFC 00:CCEC: 65 78     ADC ram_p2_enemy_type_kill_cnt + $01
C - - - - - 0x000CFE 00:CCEE: 18        CLC
C - - - - - 0x000CFF 00:CCEF: 65 79     ADC ram_p2_enemy_type_kill_cnt + $02
C - - - - - 0x000D01 00:CCF1: 18        CLC
C - - - - - 0x000D02 00:CCF2: 65 7A     ADC ram_p2_enemy_type_kill_cnt + $03
C - - - - - 0x000D04 00:CCF4: 85 7E     STA ram_p2_total_kills
C - - - - - 0x000D06 00:CCF6: A9 00     LDA #$00
C - - - - - 0x000D08 00:CCF8: 85 5A     STA ram_005A_t22_enemy_type_counter
loc_CCFA_loop:
C D 2 - - - 0x000D0A 00:CCFA: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000D0D 00:CCFD: 20 B8 D0  JSR sub_D0B8_display_4_enemy_tanks_with_sprites
C - - - - - 0x000D10 00:CD00: A2 25     LDX #< ram_p1_temp_score
C - - - - - 0x000D12 00:CD02: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x000D15 00:CD05: A2 2D     LDX #< ram_p2_temp_score
C - - - - - 0x000D17 00:CD07: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x000D1A 00:CD0A: A9 00     LDA #$00
C - - - - - 0x000D1C 00:CD0C: 85 5D     STA ram_005D_t02
C - - - - - 0x000D1E 00:CD0E: 85 5E     STA ram_005E_t02
loc_CD10_loop:
C D 2 - - - 0x000D20 00:CD10: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000D23 00:CD13: 20 B8 D0  JSR sub_D0B8_display_4_enemy_tanks_with_sprites
C - - - - - 0x000D26 00:CD16: A9 00     LDA #$00
C - - - - - 0x000D28 00:CD18: 85 7C     STA ram_007C_flag
C - - - - - 0x000D2A 00:CD1A: A6 5A     LDX ram_005A_t22_enemy_type_counter
C - - - - - 0x000D2C 00:CD1C: BD D1 D3  LDA tbl_D3D1_points_for_killing_enemy,X
C - - - - - 0x000D2F 00:CD1F: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
C - - - - - 0x000D32 00:CD22: A6 5A     LDX ram_005A_t22_enemy_type_counter
C - - - - - 0x000D34 00:CD24: B5 73     LDA ram_p1_enemy_type_kill_cnt,X
C - - - - - 0x000D36 00:CD26: F0 18     BEQ bra_CD40
C - - - - - 0x000D38 00:CD28: A9 01     LDA #$01
C - - - - - 0x000D3A 00:CD2A: 8D 13 03  STA ram_sfx_score_count_1
C - - - - - 0x000D3D 00:CD2D: 8D 14 03  STA ram_sfx_score_count_2
C - - - - - 0x000D40 00:CD30: D6 73     DEC ram_p1_enemy_type_kill_cnt,X
C - - - - - 0x000D42 00:CD32: E6 5D     INC ram_005D_t02
C - - - - - 0x000D44 00:CD34: A2 02     LDX #$02    ; ram_p1_temp_score
C - - - - - 0x000D46 00:CD36: 20 BE D9  JSR sub_D9BE_add_score
C - - - - - 0x000D49 00:CD39: A9 01     LDA #$01
C - - - - - 0x000D4B 00:CD3B: 85 7C     STA ram_007C_flag
C - - - - - 0x000D4D 00:CD3D: 20 38 D1  JSR sub_D138_gain_extra_life_for_20000_pts
bra_CD40:
C - - - - - 0x000D50 00:CD40: A6 5A     LDX ram_005A_t22_enemy_type_counter
C - - - - - 0x000D52 00:CD42: B5 77     LDA ram_p2_enemy_type_kill_cnt,X
C - - - - - 0x000D54 00:CD44: F0 18     BEQ bra_CD5E
C - - - - - 0x000D56 00:CD46: A9 01     LDA #$01
C - - - - - 0x000D58 00:CD48: 8D 13 03  STA ram_sfx_score_count_1
C - - - - - 0x000D5B 00:CD4B: 8D 14 03  STA ram_sfx_score_count_2
C - - - - - 0x000D5E 00:CD4E: D6 77     DEC ram_p2_enemy_type_kill_cnt,X
C - - - - - 0x000D60 00:CD50: E6 5E     INC ram_005E_t02
C - - - - - 0x000D62 00:CD52: A2 03     LDX #$03    ; ram_p2_temp_score
C - - - - - 0x000D64 00:CD54: 20 BE D9  JSR sub_D9BE_add_score
C - - - - - 0x000D67 00:CD57: A9 01     LDA #$01
C - - - - - 0x000D69 00:CD59: 85 7C     STA ram_007C_flag
C - - - - - 0x000D6B 00:CD5B: 20 38 D1  JSR sub_D138_gain_extra_life_for_20000_pts
bra_CD5E:
C - - - - - 0x000D6E 00:CD5E: A0 16     LDY #< (ram_p1_score + $01)
C - - - - - 0x000D70 00:CD60: A2 05     LDX #$05    ; ppu pos_X
C - - - - - 0x000D72 00:CD62: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000D75 00:CD65: A0 09     LDY #$09    ; ppu pos_Y
C - - - - - 0x000D77 00:CD67: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000D7A 00:CD6A: A2 01     LDX #$01
C - - - - - 0x000D7C 00:CD6C: A0 26     LDY #< (ram_p1_temp_score + $01)
C - - - - - 0x000D7E 00:CD6E: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000D81 00:CD71: A5 5A     LDA ram_005A_t22_enemy_type_counter
C - - - - - 0x000D83 00:CD73: 0A        ASL
C - - - - - 0x000D84 00:CD74: 18        CLC
C - - - - - 0x000D85 00:CD75: 65 5A     ADC ram_005A_t22_enemy_type_counter
C - - - - - 0x000D87 00:CD77: 18        CLC
C - - - - - 0x000D88 00:CD78: 69 0C     ADC #$0C
C - - - - - 0x000D8A 00:CD7A: A8        TAY ; ppu pos_Y
C - - - - - 0x000D8B 00:CD7B: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000D8E 00:CD7E: A6 5A     LDX ram_005A_t22_enemy_type_counter
C - - - - - 0x000D90 00:CD80: A5 5D     LDA ram_005D_t02
C - - - - - 0x000D92 00:CD82: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000D95 00:CD85: A2 08     LDX #$08    ; ppu pos_X
C - - - - - 0x000D97 00:CD87: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000D99 00:CD89: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000D9C 00:CD8C: A5 5A     LDA ram_005A_t22_enemy_type_counter
C - - - - - 0x000D9E 00:CD8E: 0A        ASL
C - - - - - 0x000D9F 00:CD8F: 18        CLC
C - - - - - 0x000DA0 00:CD90: 65 5A     ADC ram_005A_t22_enemy_type_counter
C - - - - - 0x000DA2 00:CD92: 18        CLC
C - - - - - 0x000DA3 00:CD93: 69 0C     ADC #$0C
C - - - - - 0x000DA5 00:CD95: A8        TAY
C - - - - - 0x000DA6 00:CD96: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000DA9 00:CD99: A5 83     LDA ram_game_mode
C - - - - - 0x000DAB 00:CD9B: F0 3B     BEQ bra_CDD8    ; if 1p mode
; if 2p mode
C - - - - - 0x000DAD 00:CD9D: A0 1E     LDY #< (ram_p2_score + $01)
C - - - - - 0x000DAF 00:CD9F: A2 17     LDX #$17    ; ppu pos_X
C - - - - - 0x000DB1 00:CDA1: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000DB4 00:CDA4: A0 09     LDY #$09    ; ppu pos_Y
C - - - - - 0x000DB6 00:CDA6: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000DB9 00:CDA9: A2 13     LDX #$13    ; ppu pos_X
C - - - - - 0x000DBB 00:CDAB: A0 2E     LDY #< (ram_p2_temp_score + $01)
C - - - - - 0x000DBD 00:CDAD: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000DC0 00:CDB0: A5 5A     LDA ram_005A_t22_enemy_type_counter
C - - - - - 0x000DC2 00:CDB2: 0A        ASL
C - - - - - 0x000DC3 00:CDB3: 18        CLC
C - - - - - 0x000DC4 00:CDB4: 65 5A     ADC ram_005A_t22_enemy_type_counter
C - - - - - 0x000DC6 00:CDB6: 18        CLC
C - - - - - 0x000DC7 00:CDB7: 69 0C     ADC #$0C
C - - - - - 0x000DC9 00:CDB9: A8        TAY ; ppu pos_Y
C - - - - - 0x000DCA 00:CDBA: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000DCD 00:CDBD: A6 5A     LDX ram_005A_t22_enemy_type_counter
C - - - - - 0x000DCF 00:CDBF: A5 5E     LDA ram_005E_t02
C - - - - - 0x000DD1 00:CDC1: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000DD4 00:CDC4: A2 0E     LDX #$0E    ; ppu pos_X
C - - - - - 0x000DD6 00:CDC6: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000DD8 00:CDC8: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000DDB 00:CDCB: A5 5A     LDA ram_005A_t22_enemy_type_counter
C - - - - - 0x000DDD 00:CDCD: 0A        ASL
C - - - - - 0x000DDE 00:CDCE: 18        CLC
C - - - - - 0x000DDF 00:CDCF: 65 5A     ADC ram_005A_t22_enemy_type_counter
C - - - - - 0x000DE1 00:CDD1: 18        CLC
C - - - - - 0x000DE2 00:CDD2: 69 0C     ADC #$0C
C - - - - - 0x000DE4 00:CDD4: A8        TAY ; ppu pos_Y
C - - - - - 0x000DE5 00:CDD5: 20 DD D6  JSR sub_D6DD
bra_CDD8:
C - - - - - 0x000DE8 00:CDD8: A2 08     LDX #$08
C - - - - - 0x000DEA 00:CDDA: 20 76 D2  JSR sub_D276_wait_while_displaying_enemy_tanks_with_sprites
C - - - - - 0x000DED 00:CDDD: A5 7C     LDA ram_007C_flag
C - - - - - 0x000DEF 00:CDDF: F0 03     BEQ bra_CDE4
C - - - - - 0x000DF1 00:CDE1: 4C 10 CD  JMP loc_CD10_loop
bra_CDE4:
C - - - - - 0x000DF4 00:CDE4: E6 5A     INC ram_005A_t22_enemy_type_counter
C - - - - - 0x000DF6 00:CDE6: A5 5A     LDA ram_005A_t22_enemy_type_counter
C - - - - - 0x000DF8 00:CDE8: C9 04     CMP #$04
C - - - - - 0x000DFA 00:CDEA: F0 08     BEQ bra_CDF4
C - - - - - 0x000DFC 00:CDEC: A2 14     LDX #$14
C - - - - - 0x000DFE 00:CDEE: 20 76 D2  JSR sub_D276_wait_while_displaying_enemy_tanks_with_sprites
C - - - - - 0x000E01 00:CDF1: 4C FA CC  JMP loc_CCFA_loop
bra_CDF4:
C - - - - - 0x000E04 00:CDF4: A2 1E     LDX #$1E
C - - - - - 0x000E06 00:CDF6: 20 76 D2  JSR sub_D276_wait_while_displaying_enemy_tanks_with_sprites
C - - - - - 0x000E09 00:CDF9: A5 7D     LDA ram_p1_total_kills
C - - - - - 0x000E0B 00:CDFB: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000E0E 00:CDFE: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000E10 00:CE00: A2 08     LDX #$08    ; ppu pos_X
C - - - - - 0x000E12 00:CE02: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000E15 00:CE05: A0 17     LDY #$17    ; ppu pos_Y
C - - - - - 0x000E17 00:CE07: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000E1A 00:CE0A: A5 83     LDA ram_game_mode
C - - - - - 0x000E1C 00:CE0C: F0 11     BEQ bra_CE1F    ; if 1p mode
; if 2p mode
C - - - - - 0x000E1E 00:CE0E: A5 7E     LDA ram_p2_total_kills
C - - - - - 0x000E20 00:CE10: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000E23 00:CE13: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000E25 00:CE15: A2 0E     LDX #$0E    ; ppu pos_X
C - - - - - 0x000E27 00:CE17: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000E2A 00:CE1A: A0 17     LDY #$17    ; ppu pos_Y
C - - - - - 0x000E2C 00:CE1C: 20 DD D6  JSR sub_D6DD
bra_CE1F:
C - - - - - 0x000E2F 00:CE1F: A2 0F     LDX #$0F
C - - - - - 0x000E31 00:CE21: 20 76 D2  JSR sub_D276_wait_while_displaying_enemy_tanks_with_sprites
C - - - - - 0x000E34 00:CE24: A5 83     LDA ram_game_mode
C - - - - - 0x000E36 00:CE26: D0 03     BNE bra_CE2B    ; if 2p mode
; if 1p mode
C - - - - - 0x000E38 00:CE28: 4C E5 CE  JMP loc_CEE5
bra_CE2B:
C - - - - - 0x000E3B 00:CE2B: A5 68     LDA ram_game_over_flag
C - - - - - 0x000E3D 00:CE2D: D0 03     BNE bra_CE32_not_game_over_yet
C - - - - - 0x000E3F 00:CE2F: 4C E5 CE  JMP loc_CEE5
bra_CE32_not_game_over_yet:
C - - - - - 0x000E42 00:CE32: A5 7E     LDA ram_p2_total_kills
C - - - - - 0x000E44 00:CE34: C5 7D     CMP ram_p1_total_kills
C - - - - - 0x000E46 00:CE36: B0 55     BCS bra_CE8D
C - - - - - 0x000E48 00:CE38: A5 51     LDA ram_lives
C - - - - - 0x000E4A 00:CE3A: F0 51     BEQ bra_CE8D
C - - - - - 0x000E4C 00:CE3C: A9 00     LDA #$00
C - - - - - 0x000E4E 00:CE3E: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
C - - - - - 0x000E51 00:CE41: A2 00     LDX #$00    ; ram_p1_score
C - - - - - 0x000E53 00:CE43: 20 BE D9  JSR sub_D9BE_add_score
C - - - - - 0x000E56 00:CE46: A0 16     LDY #< (ram_p1_score + $01)
C - - - - - 0x000E58 00:CE48: A2 05     LDX #$05    ; ppu pos_X
C - - - - - 0x000E5A 00:CE4A: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000E5D 00:CE4D: A0 09     LDY #$09    ; ppu pos_Y
C - - - - - 0x000E5F 00:CE4F: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000E62 00:CE52: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000E64 00:CE54: A2 01     LDX #$01    ; ppu pos_X
C - - - - - 0x000E66 00:CE56: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000E69 00:CE59: A0 1A     LDY #$1A    ; ppu pos_Y
C - - - - - 0x000E6B 00:CE5B: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000E6E 00:CE5E: A9 D3     LDA #> tbl_D3C4_text___bonus
C - - - - - 0x000E70 00:CE60: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000E72 00:CE62: A9 C4     LDA #< tbl_D3C4_text___bonus
C - - - - - 0x000E74 00:CE64: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000E76 00:CE66: A2 03     LDX #($0723 & $001F)    ; 2323
C - - - - - 0x000E78 00:CE68: A0 19     LDY #($0723 - $0400) / $20
C - - - - - 0x000E7A 00:CE6A: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000E7D 00:CE6D: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x000E7F 00:CE6F: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000E81 00:CE71: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x000E83 00:CE73: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000E85 00:CE75: A2 08     LDX #($0748 & $001F)    ; 2348
C - - - - - 0x000E87 00:CE77: A0 1A     LDY #($0748 - $0400) / $20
C - - - - - 0x000E89 00:CE79: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000E8C 00:CE7C: A9 01     LDA #$01
C - - - - - 0x000E8E 00:CE7E: 8D 1B 03  STA ram_sfx_bonus_1000
; bzk optimize, 2 useless STAs, they won't be read and will be overwritten
C - - - - - 0x000E91 00:CE81: 8D 1C 03  STA ram_se_data
C - - - - - 0x000E94 00:CE84: 8D 1D 03  STA ram_se_data + $01
C - - - - - 0x000E97 00:CE87: 20 38 D1  JSR sub_D138_gain_extra_life_for_20000_pts
C - - - - - 0x000E9A 00:CE8A: 4C E5 CE  JMP loc_CEE5
bra_CE8D:
C - - - - - 0x000E9D 00:CE8D: A5 7D     LDA ram_p1_total_kills
C - - - - - 0x000E9F 00:CE8F: C5 7E     CMP ram_p2_total_kills
C - - - - - 0x000EA1 00:CE91: B0 52     BCS bra_CEE5
C - - - - - 0x000EA3 00:CE93: A5 52     LDA ram_lives + $01
C - - - - - 0x000EA5 00:CE95: F0 4E     BEQ bra_CEE5
C - - - - - 0x000EA7 00:CE97: A9 00     LDA #$00
C - - - - - 0x000EA9 00:CE99: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
C - - - - - 0x000EAC 00:CE9C: A2 01     LDX #$01    ; ram_p2_score
C - - - - - 0x000EAE 00:CE9E: 20 BE D9  JSR sub_D9BE_add_score
C - - - - - 0x000EB1 00:CEA1: A0 1E     LDY #< (ram_p2_score + $01)
C - - - - - 0x000EB3 00:CEA3: A2 17     LDX #$17    ; ppu pos_X
C - - - - - 0x000EB5 00:CEA5: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000EB8 00:CEA8: A0 09     LDY #$09    ; ppu pos_Y
C - - - - - 0x000EBA 00:CEAA: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000EBD 00:CEAD: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000EBF 00:CEAF: A2 14     LDX #$14    ; ppu pos_X
C - - - - - 0x000EC1 00:CEB1: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000EC4 00:CEB4: A0 1A     LDY #$1A    ; ppu pos_Y
C - - - - - 0x000EC6 00:CEB6: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000EC9 00:CEB9: A9 D3     LDA #> tbl_D3C4_text___bonus
C - - - - - 0x000ECB 00:CEBB: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000ECD 00:CEBD: A9 C4     LDA #< tbl_D3C4_text___bonus
C - - - - - 0x000ECF 00:CEBF: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000ED1 00:CEC1: A2 16     LDX #($0736 & $001F)    ; 2336
C - - - - - 0x000ED3 00:CEC3: A0 19     LDY #($0736 - $0400) / $20
C - - - - - 0x000ED5 00:CEC5: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000ED8 00:CEC8: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x000EDA 00:CECA: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000EDC 00:CECC: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x000EDE 00:CECE: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000EE0 00:CED0: A2 1B     LDX #($075B & $001F)    ; 235B
C - - - - - 0x000EE2 00:CED2: A0 1A     LDY #($075B - $0400) / $20
C - - - - - 0x000EE4 00:CED4: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000EE7 00:CED7: A9 01     LDA #$01
C - - - - - 0x000EE9 00:CED9: 8D 1B 03  STA ram_sfx_bonus_1000
; bzk optimize, 2 useless STAs, they won't be read and will be overwritten
C - - - - - 0x000EEC 00:CEDC: 8D 1C 03  STA ram_se_data
C - - - - - 0x000EEF 00:CEDF: 8D 1D 03  STA ram_se_data + $01
C - - - - - 0x000EF2 00:CEE2: 20 38 D1  JSR sub_D138_gain_extra_life_for_20000_pts
bra_CEE5:
loc_CEE5:
C D 2 - - - 0x000EF5 00:CEE5: A2 78     LDX #$78
C - - - - - 0x000EF7 00:CEE7: 20 76 D2  JSR sub_D276_wait_while_displaying_enemy_tanks_with_sprites
C - - - - - 0x000EFA 00:CEEA: A9 00     LDA #$00
C - - - - - 0x000EFC 00:CEEC: 85 50     STA ram_base_nmt
C - - - - - 0x000EFE 00:CEEE: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x000F00 00:CEF0: 85 6B     STA ram_006B_flag
C - - - - - 0x000F02 00:CEF2: A9 00     LDA #con_bg_pal_00
C - - - - - 0x000F04 00:CEF4: 85 4D     STA ram_bg_palette_id
C - - - - - 0x000F06 00:CEF6: 60        RTS



sub_CEF7_draw_screen_with_score_count:
C - - - - - 0x000F07 00:CEF7: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000F0A 00:CEFA: A9 01     LDA #$01
C - - - - - 0x000F0C 00:CEFC: 85 6B     STA ram_006B_flag
C - - - - - 0x000F0E 00:CEFE: A9 24     LDA #con_ppu_offset_2800
C - - - - - 0x000F10 00:CF00: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x000F12 00:CF02: A9 00     LDA #$00
C - - - - - 0x000F14 00:CF04: 85 4F     STA ram_scroll_Y
C - - - - - 0x000F16 00:CF06: A9 02     LDA #$02
C - - - - - 0x000F18 00:CF08: 85 50     STA ram_base_nmt
C - - - - - 0x000F1A 00:CF0A: A9 30     LDA #$30
C - - - - - 0x000F1C 00:CF0C: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x000F1E 00:CF0E: A9 03     LDA #con_bg_pal_03
C - - - - - 0x000F20 00:CF10: 85 4D     STA ram_bg_palette_id
C - - - - - 0x000F22 00:CF12: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x000F25 00:CF15: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x000F28 00:CF18: 20 D9 D0  JSR sub_D0D9
C - - - - - 0x000F2B 00:CF1B: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x000F2E 00:CF1E: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x000F31 00:CF21: A9 D2     LDA #> tbl_D2BD_text___hi_score
C - - - - - 0x000F33 00:CF23: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000F35 00:CF25: A9 BD     LDA #< tbl_D2BD_text___hi_score
C - - - - - 0x000F37 00:CF27: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000F39 00:CF29: A2 08     LDX #($0468 & $001F)    ; 2868
C - - - - - 0x000F3B 00:CF2B: A0 03     LDY #($0468 - $0400) / $20
C - - - - - 0x000F3D 00:CF2D: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000F40 00:CF30: A0 3E     LDY #< (ram_hi_score + $01)
C - - - - - 0x000F42 00:CF32: A2 12     LDX #$12    ; ppu pos_X
C - - - - - 0x000F44 00:CF34: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000F47 00:CF37: A0 03     LDY #$03    ; ppu pos_Y
C - - - - - 0x000F49 00:CF39: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000F4C 00:CF3C: A9 D3     LDA #> tbl_D3CB_text___stage
C - - - - - 0x000F4E 00:CF3E: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000F50 00:CF40: A9 CB     LDA #< tbl_D3CB_text___stage
C - - - - - 0x000F52 00:CF42: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000F54 00:CF44: A2 0C     LDX #($04AC & $001F)    ; 28AC
C - - - - - 0x000F56 00:CF46: A0 05     LDY #($04AC - $0400) / $20
C - - - - - 0x000F58 00:CF48: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000F5B 00:CF4B: A5 85     LDA ram_stage
C - - - - - 0x000F5D 00:CF4D: 20 13 DA  JSR sub_DA13_calculate_decimal
C - - - - - 0x000F60 00:CF50: A0 36     LDY #< (ram_com_dec_number + $01)
C - - - - - 0x000F62 00:CF52: A2 0E     LDX #$0E    ; ppu pos_X
C - - - - - 0x000F64 00:CF54: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000F67 00:CF57: A0 05     LDY #$05    ; ppu pos_Y
C - - - - - 0x000F69 00:CF59: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000F6C 00:CF5C: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000F6F 00:CF5F: A9 D2     LDA #> tbl_D2D9_text___I_player
C - - - - - 0x000F71 00:CF61: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000F73 00:CF63: A9 D9     LDA #< tbl_D2D9_text___I_player
C - - - - - 0x000F75 00:CF65: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000F77 00:CF67: A2 03     LDX #($04E3 & $001F)    ; 28E3
C - - - - - 0x000F79 00:CF69: A0 07     LDY #($04E3 - $0400) / $20
C - - - - - 0x000F7B 00:CF6B: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000F7E 00:CF6E: A0 16     LDY #< (ram_p1_score + $01)
C - - - - - 0x000F80 00:CF70: A2 05     LDX #$05    ; ppu pos_X
C - - - - - 0x000F82 00:CF72: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000F85 00:CF75: A0 09     LDY #$09    ; ppu pos_Y
C - - - - - 0x000F87 00:CF77: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000F8A 00:CF7A: A9 D3     LDA #> tbl_D3B1_tile___arrow_left
C - - - - - 0x000F8C 00:CF7C: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000F8E 00:CF7E: A9 B1     LDA #< tbl_D3B1_tile___arrow_left
C - - - - - 0x000F90 00:CF80: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000F92 00:CF82: A2 0E     LDX #($058E & $001F)    ; 298E
C - - - - - 0x000F94 00:CF84: A0 0C     LDY #($058E - $0400) / $20
C - - - - - 0x000F96 00:CF86: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000F99 00:CF89: A9 D3     LDA #> tbl_D3B1_tile___arrow_left
C - - - - - 0x000F9B 00:CF8B: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000F9D 00:CF8D: A9 B1     LDA #< tbl_D3B1_tile___arrow_left
C - - - - - 0x000F9F 00:CF8F: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000FA1 00:CF91: A2 0E     LDX #($05EE & $001F)    ; 29EE
C - - - - - 0x000FA3 00:CF93: A0 0F     LDY #($05EE - $0400) / $20
C - - - - - 0x000FA5 00:CF95: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000FA8 00:CF98: A9 D3     LDA #> tbl_D3B1_tile___arrow_left
C - - - - - 0x000FAA 00:CF9A: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000FAC 00:CF9C: A9 B1     LDA #< tbl_D3B1_tile___arrow_left
C - - - - - 0x000FAE 00:CF9E: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000FB0 00:CFA0: A2 0E     LDX #($064E & $001F)    ; 2A4E
C - - - - - 0x000FB2 00:CFA2: A0 12     LDY #($064E - $0400) / $20
C - - - - - 0x000FB4 00:CFA4: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000FB7 00:CFA7: A9 D3     LDA #> tbl_D3B1_tile___arrow_left
C - - - - - 0x000FB9 00:CFA9: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000FBB 00:CFAB: A9 B1     LDA #< tbl_D3B1_tile___arrow_left
C - - - - - 0x000FBD 00:CFAD: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000FBF 00:CFAF: A2 0E     LDX #($06AE & $001F)    ; 2AAE
C - - - - - 0x000FC1 00:CFB1: A0 15     LDY #($06AE - $0400) / $20
C - - - - - 0x000FC3 00:CFB3: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000FC6 00:CFB6: A5 83     LDA ram_game_mode
C - - - - - 0x000FC8 00:CFB8: F0 5A     BEQ bra_D014    ; if 1p mode
; if 2p mode
C - - - - - 0x000FCA 00:CFBA: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x000FCD 00:CFBD: A9 D2     LDA #> tbl_D2E2_text___II_player
C - - - - - 0x000FCF 00:CFBF: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000FD1 00:CFC1: A9 E2     LDA #< tbl_D2E2_text___II_player
C - - - - - 0x000FD3 00:CFC3: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000FD5 00:CFC5: A2 15     LDX #($04F5 & $001F)    ; 28F5
C - - - - - 0x000FD7 00:CFC7: A0 07     LDY #($04F5 - $0400) / $20
C - - - - - 0x000FD9 00:CFC9: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000FDC 00:CFCC: A0 1E     LDY #< (ram_p2_score + $01)
C - - - - - 0x000FDE 00:CFCE: A2 17     LDX #$17    ; ppu pos_X
C - - - - - 0x000FE0 00:CFD0: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x000FE3 00:CFD3: A0 09     LDY #$09    ; ppu pos_Y
C - - - - - 0x000FE5 00:CFD5: 20 DD D6  JSR sub_D6DD
C - - - - - 0x000FE8 00:CFD8: A9 D3     LDA #> tbl_D3B3_tile___arrow_right
C - - - - - 0x000FEA 00:CFDA: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000FEC 00:CFDC: A9 B3     LDA #< tbl_D3B3_tile___arrow_right
C - - - - - 0x000FEE 00:CFDE: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000FF0 00:CFE0: A2 11     LDX #($0591 & $001F)    ; 2991
C - - - - - 0x000FF2 00:CFE2: A0 0C     LDY #($0591 - $0400) / $20
C - - - - - 0x000FF4 00:CFE4: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x000FF7 00:CFE7: A9 D3     LDA #> tbl_D3B3_tile___arrow_right
C - - - - - 0x000FF9 00:CFE9: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x000FFB 00:CFEB: A9 B3     LDA #< tbl_D3B3_tile___arrow_right
C - - - - - 0x000FFD 00:CFED: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x000FFF 00:CFEF: A2 11     LDX #($05F1 & $001F)    ; 29F1
C - - - - - 0x001001 00:CFF1: A0 0F     LDY #($05F1 - $0400) / $20
C - - - - - 0x001003 00:CFF3: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001006 00:CFF6: A9 D3     LDA #> tbl_D3B3_tile___arrow_right
C - - - - - 0x001008 00:CFF8: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00100A 00:CFFA: A9 B3     LDA #< tbl_D3B3_tile___arrow_right
C - - - - - 0x00100C 00:CFFC: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00100E 00:CFFE: A2 11     LDX #($0651 & $001F)    ; 2A51
C - - - - - 0x001010 00:D000: A0 12     LDY #($0651 - $0400) / $20
C - - - - - 0x001012 00:D002: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001015 00:D005: A9 D3     LDA #> tbl_D3B3_tile___arrow_right
C - - - - - 0x001017 00:D007: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001019 00:D009: A9 B3     LDA #< tbl_D3B3_tile___arrow_right
C - - - - - 0x00101B 00:D00B: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00101D 00:D00D: A2 11     LDX #($06B1 & $001F)    ; 2AB1
C - - - - - 0x00101F 00:D00F: A0 15     LDY #($06B1 - $0400) / $20
C - - - - - 0x001021 00:D011: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
bra_D014:
C - - - - - 0x001024 00:D014: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x001027 00:D017: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x001029 00:D019: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00102B 00:D01B: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00102D 00:D01D: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00102F 00:D01F: A2 08     LDX #($0588 & $001F)    ; 2988
C - - - - - 0x001031 00:D021: A0 0C     LDY #($0588 - $0400) / $20
C - - - - - 0x001033 00:D023: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001036 00:D026: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x001038 00:D028: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00103A 00:D02A: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00103C 00:D02C: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00103E 00:D02E: A2 08     LDX #($05E8 & $001F)    ; 29E8
C - - - - - 0x001040 00:D030: A0 0F     LDY #($05E8 - $0400) / $20
C - - - - - 0x001042 00:D032: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001045 00:D035: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x001047 00:D037: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001049 00:D039: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00104B 00:D03B: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00104D 00:D03D: A2 08     LDX #($0648 & $001F)    ; 2A48
C - - - - - 0x00104F 00:D03F: A0 12     LDY #($0648 - $0400) / $20
C - - - - - 0x001051 00:D041: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001054 00:D044: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x001056 00:D046: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001058 00:D048: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00105A 00:D04A: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00105C 00:D04C: A2 08     LDX #($06A8 & $001F)    ; 2AA8
C - - - - - 0x00105E 00:D04E: A0 15     LDY #($06A8 - $0400) / $20
C - - - - - 0x001060 00:D050: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001063 00:D053: A5 83     LDA ram_game_mode
C - - - - - 0x001065 00:D055: F0 3F     BEQ bra_D096    ; if 1p mode
; if 2p mode
C - - - - - 0x001067 00:D057: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x00106A 00:D05A: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x00106C 00:D05C: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00106E 00:D05E: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x001070 00:D060: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x001072 00:D062: A2 1A     LDX #($059A & $001F)    ; 299A
C - - - - - 0x001074 00:D064: A0 0C     LDY #($059A - $0400) / $20
C - - - - - 0x001076 00:D066: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001079 00:D069: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x00107B 00:D06B: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00107D 00:D06D: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00107F 00:D06F: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x001081 00:D071: A2 1A     LDX #($05FA & $001F)    ; 29FA
C - - - - - 0x001083 00:D073: A0 0F     LDY #($05FA - $0400) / $20
C - - - - - 0x001085 00:D075: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001088 00:D078: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x00108A 00:D07A: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00108C 00:D07C: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00108E 00:D07E: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x001090 00:D080: A2 1A     LDX #($065A & $001F)    ; 2A5A
C - - - - - 0x001092 00:D082: A0 12     LDY #($065A - $0400) / $20
C - - - - - 0x001094 00:D084: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001097 00:D087: A9 D3     LDA #> tbl_D35E_pts_txt
C - - - - - 0x001099 00:D089: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00109B 00:D08B: A9 5E     LDA #< tbl_D35E_pts_txt
C - - - - - 0x00109D 00:D08D: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00109F 00:D08F: A2 1A     LDX #($06BA & $001F)    ; 2ABA
C - - - - - 0x0010A1 00:D091: A0 15     LDY #($06BA - $0400) / $20
C - - - - - 0x0010A3 00:D093: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
bra_D096:
C - - - - - 0x0010A6 00:D096: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x0010A9 00:D099: A9 D3     LDA #> tbl_D3BB_tiles___underline
C - - - - - 0x0010AB 00:D09B: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0010AD 00:D09D: A9 BB     LDA #< tbl_D3BB_tiles___underline
C - - - - - 0x0010AF 00:D09F: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0010B1 00:D0A1: A2 0C     LDX #($06CC & $001F)    ; 2ACC
C - - - - - 0x0010B3 00:D0A3: A0 16     LDY #($06CC - $0400) / $20
C - - - - - 0x0010B5 00:D0A5: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0010B8 00:D0A8: A9 D3     LDA #> tbl_D3B5_text___total
C - - - - - 0x0010BA 00:D0AA: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0010BC 00:D0AC: A9 B5     LDA #< tbl_D3B5_text___total
C - - - - - 0x0010BE 00:D0AE: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0010C0 00:D0B0: A2 06     LDX #($06E6 & $001F)    ; 2AE6
C - - - - - 0x0010C2 00:D0B2: A0 17     LDY #($06E6 - $0400) / $20
; bzk optimize, JMP
C - - - - - 0x0010C4 00:D0B4: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0010C7 00:D0B7: 60        RTS



sub_D0B8_display_4_enemy_tanks_with_sprites:
C - - - - - 0x0010C8 00:D0B8: A9 02     LDA #$02    ; palette
C - - - - - 0x0010CA 00:D0BA: 85 04     STA ram_0004_t01_spr_A_palette
; 100
C - - - - - 0x0010CC 00:D0BC: A0 64     LDY #$64    ; spr_Y
C - - - - - 0x0010CE 00:D0BE: A9 80     LDA #$80    ; spr_T
C - - - - - 0x0010D0 00:D0C0: 20 30 D1  JSR sub_D130_display_enemy_tank_with_sprites
; 200
C - - - - - 0x0010D3 00:D0C3: A0 7C     LDY #$7C    ; spr_Y
C - - - - - 0x0010D5 00:D0C5: A9 A0     LDA #$A0    ; spr_T
C - - - - - 0x0010D7 00:D0C7: 20 30 D1  JSR sub_D130_display_enemy_tank_with_sprites
; 300
C - - - - - 0x0010DA 00:D0CA: A0 94     LDY #$94    ; spr_Y
C - - - - - 0x0010DC 00:D0CC: A9 C0     LDA #$C0    ; spr_T
C - - - - - 0x0010DE 00:D0CE: 20 30 D1  JSR sub_D130_display_enemy_tank_with_sprites
; 400
C - - - - - 0x0010E1 00:D0D1: A0 AC     LDY #$AC    ; spr_Y
C - - - - - 0x0010E3 00:D0D3: A9 E0     LDA #$E0    ; spr_T
; bzk optimize, JMP
C - - - - - 0x0010E5 00:D0D5: 20 30 D1  JSR sub_D130_display_enemy_tank_with_sprites
C - - - - - 0x0010E8 00:D0D8: 60        RTS



sub_D0D9:
C - - - - - 0x0010E9 00:D0D9: A9 50     LDA #$50
C - - - - - 0x0010EB 00:D0DB: 8D C0 07  STA ram_07C0_nmt_attr_buffer
C - - - - - 0x0010EE 00:D0DE: 8D C1 07  STA ram_07C1
C - - - - - 0x0010F1 00:D0E1: 8D C2 07  STA ram_07C2
C - - - - - 0x0010F4 00:D0E4: 8D C3 07  STA ram_07C3
C - - - - - 0x0010F7 00:D0E7: 8D C8 07  STA ram_07C8
C - - - - - 0x0010FA 00:D0EA: 8D C9 07  STA ram_07C9
C - - - - - 0x0010FD 00:D0ED: 8D CA 07  STA ram_07CA
C - - - - - 0x001100 00:D0F0: 8D CD 07  STA ram_07CD
C - - - - - 0x001103 00:D0F3: 8D CE 07  STA ram_07CE
C - - - - - 0x001106 00:D0F6: 8D CF 07  STA ram_07CF
C - - - - - 0x001109 00:D0F9: A9 A0     LDA #$A0
C - - - - - 0x00110B 00:D0FB: 8D C4 07  STA ram_07C4
C - - - - - 0x00110E 00:D0FE: 8D C5 07  STA ram_07C5
C - - - - - 0x001111 00:D101: 8D C6 07  STA ram_07C6
C - - - - - 0x001114 00:D104: 8D C7 07  STA ram_07C7
C - - - - - 0x001117 00:D107: A9 0A     LDA #$0A
C - - - - - 0x001119 00:D109: 8D D0 07  STA ram_07D0
C - - - - - 0x00111C 00:D10C: 8D D1 07  STA ram_07D1
C - - - - - 0x00111F 00:D10F: 8D D2 07  STA ram_07D2
C - - - - - 0x001122 00:D112: 8D D5 07  STA ram_07D5
C - - - - - 0x001125 00:D115: 8D D6 07  STA ram_07D6
C - - - - - 0x001128 00:D118: 8D D7 07  STA ram_07D7
C - - - - - 0x00112B 00:D11B: A9 05     LDA #$05
C - - - - - 0x00112D 00:D11D: 8D F0 07  STA ram_07F0
C - - - - - 0x001130 00:D120: 8D F1 07  STA ram_07F1
C - - - - - 0x001133 00:D123: 8D F2 07  STA ram_07F2
C - - - - - 0x001136 00:D126: 8D F5 07  STA ram_07F5
C - - - - - 0x001139 00:D129: 8D F6 07  STA ram_07F6
C - - - - - 0x00113C 00:D12C: 8D F7 07  STA ram_07F7
C - - - - - 0x00113F 00:D12F: 60        RTS



sub_D130_display_enemy_tank_with_sprites:
; in
    ; A = spr_T
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - - - - 0x001140 00:D130: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x001142 00:D132: A2 81     LDX #$81    ; spr_X
; bzk optimize, JMP
C - - - - - 0x001144 00:D134: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001147 00:D137: 60        RTS



sub_D138_gain_extra_life_for_20000_pts:
; give life for first 20.000 points
; note that p2 check is skipped if p1 has gained +1 life
    ; if both players scored enough simultaneously,
    ; p2 will gain life only when this code executes next time.
    ; this was done probably to notify each player with individual sound
C - - - - - 0x001148 00:D138: A5 68     LDA ram_game_over_flag
C - - - - - 0x00114A 00:D13A: C9 80     CMP #con_not_game_over
C - - - - - 0x00114C 00:D13C: D0 2B     BNE bra_D169_RTS
; if not game over
C - - - - - 0x00114E 00:D13E: A5 66     LDA ram_p1_extra_life
C - - - - - 0x001150 00:D140: D0 0D     BNE bra_D14F    ; if already gained
C - - - - - 0x001152 00:D142: A5 17     LDA ram_p1_score + $02
C - - - - - 0x001154 00:D144: C9 02     CMP #$02    ; 20.000
C - - - - - 0x001156 00:D146: 90 07     BCC bra_D14F    ; if not enough points
C - - - - - 0x001158 00:D148: E6 51     INC ram_lives
C - - - - - 0x00115A 00:D14A: E6 66     INC ram_p1_extra_life
C - - - - - 0x00115C 00:D14C: 4C 61 D1  JMP loc_D161_play_sound     ; this skips p2 check
bra_D14F:
C - - - - - 0x00115F 00:D14F: A5 83     LDA ram_game_mode
C - - - - - 0x001161 00:D151: F0 16     BEQ bra_D169_RTS    ; if 1p mode
; if 2p mode
C - - - - - 0x001163 00:D153: A5 67     LDA ram_p2_extra_life
C - - - - - 0x001165 00:D155: D0 12     BNE bra_D169_RTS    ; if already gained
C - - - - - 0x001167 00:D157: A5 1F     LDA ram_p2_score + $02
C - - - - - 0x001169 00:D159: C9 02     CMP #$02    ; 20.000
C - - - - - 0x00116B 00:D15B: 90 0C     BCC bra_D169_RTS    ; if not enough points
C - - - - - 0x00116D 00:D15D: E6 52     INC ram_lives + $01
C - - - - - 0x00116F 00:D15F: E6 67     INC ram_p2_extra_life
loc_D161_play_sound:
C D 2 - - - 0x001171 00:D161: A9 01     LDA #$01
C - - - - - 0x001173 00:D163: 8D 04 03  STA ram_sfx_gain_life_1
C - - - - - 0x001176 00:D166: 8D 05 03  STA ram_sfx_gain_life_2
bra_D169_RTS:
C - - - - - 0x001179 00:D169: 60        RTS



sub_D16A:
C - - - - - 0x00117A 00:D16A: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x00117D 00:D16D: A9 03     LDA #con_bg_pal_03
C - - - - - 0x00117F 00:D16F: 85 4D     STA ram_bg_palette_id
C - - - - - 0x001181 00:D171: A9 1C     LDA #con_ppu_offset_2000
C - - - - - 0x001183 00:D173: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x001185 00:D175: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x001188 00:D178: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
; bzk optimize, JMP
C - - - - - 0x00118B 00:D17B: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x00118E 00:D17E: 60        RTS



sub_D17F_draw_title_screen:
C - - - - - 0x00118F 00:D17F: 20 70 D4  JSR sub_D470_disable_nmi
C - - - - - 0x001192 00:D182: A9 24     LDA #con_ppu_offset_2800
C - - - - - 0x001194 00:D184: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x001196 00:D186: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x001199 00:D189: A2 1A     LDX #$1A
C - - - - - 0x00119B 00:D18B: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x00119D 00:D18D: A0 2E     LDY #$2E
C - - - - - 0x00119F 00:D18F: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x0011A1 00:D191: A9 D2     LDA #> tbl_D299_huge_text___battle
C - - - - - 0x0011A3 00:D193: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x0011A5 00:D195: A9 99     LDA #< tbl_D299_huge_text___battle
C - - - - - 0x0011A7 00:D197: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x0011A9 00:D199: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x0011AC 00:D19C: A2 3C     LDX #$3C
C - - - - - 0x0011AE 00:D19E: 86 56     STX ram_0056_t02_pos_X_letter
C - - - - - 0x0011B0 00:D1A0: A0 56     LDY #$56
C - - - - - 0x0011B2 00:D1A2: 84 57     STY ram_0057_t02_pos_Y_letter
C - - - - - 0x0011B4 00:D1A4: A9 D2     LDA #> tbl_D2A0_hige_text___city
C - - - - - 0x0011B6 00:D1A6: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x0011B8 00:D1A8: A9 A0     LDA #< tbl_D2A0_hige_text___city
C - - - - - 0x0011BA 00:D1AA: 85 13     STA ram_0013_t02_huge_text_data
C - - - - - 0x0011BC 00:D1AC: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x0011BF 00:D1AF: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x0011C2 00:D1B2: 20 67 D4  JSR sub_D467_enable_nmi
C - - - - - 0x0011C5 00:D1B5: A9 30     LDA #$30
C - - - - - 0x0011C7 00:D1B7: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x0011C9 00:D1B9: A9 D2     LDA #> tbl_D2A0_text___I_
C - - - - - 0x0011CB 00:D1BB: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0011CD 00:D1BD: A9 A5     LDA #< tbl_D2A0_text___I_
C - - - - - 0x0011CF 00:D1BF: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0011D1 00:D1C1: A2 02     LDX #($0462 & $001F)    ; 2862
C - - - - - 0x0011D3 00:D1C3: A0 03     LDY #($0462 - $0400) / $20
C - - - - - 0x0011D5 00:D1C5: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0011D8 00:D1C8: A0 16     LDY #< (ram_p1_score + $01)
C - - - - - 0x0011DA 00:D1CA: A2 04     LDX #$04    ; ppu pos_X
C - - - - - 0x0011DC 00:D1CC: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x0011DF 00:D1CF: A0 03     LDY #$03    ; ppu pos_Y
C - - - - - 0x0011E1 00:D1D1: 20 DD D6  JSR sub_D6DD
C - - - - - 0x0011E4 00:D1D4: A9 D2     LDA #> tbl_D2B1_text___hi_
C - - - - - 0x0011E6 00:D1D6: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x0011E8 00:D1D8: A9 B1     LDA #< tbl_D2B1_text___hi_
C - - - - - 0x0011EA 00:D1DA: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x0011EC 00:D1DC: A2 0B     LDX #($046B & $001F)    ; 286B
C - - - - - 0x0011EE 00:D1DE: A0 03     LDY #($046B - $0400) / $20
C - - - - - 0x0011F0 00:D1E0: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x0011F3 00:D1E3: A0 3E     LDY #< (ram_hi_score + $01)
C - - - - - 0x0011F5 00:D1E5: A2 0E     LDX #$0E    ; ppu pos_X
C - - - - - 0x0011F7 00:D1E7: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x0011FA 00:D1EA: A0 03     LDY #$03    ; ppu pos_Y
C - - - - - 0x0011FC 00:D1EC: 20 DD D6  JSR sub_D6DD
C - - - - - 0x0011FF 00:D1EF: A5 83     LDA ram_game_mode
C - - - - - 0x001201 00:D1F1: F0 1B     BEQ bra_D20E    ; if 1p mode
; if 2p mode
C - - - - - 0x001203 00:D1F3: A9 D2     LDA #> tbl_D2A8_text___II_
C - - - - - 0x001205 00:D1F5: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001207 00:D1F7: A9 A8     LDA #< tbl_D2A8_text___II_
C - - - - - 0x001209 00:D1F9: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00120B 00:D1FB: A2 15     LDX #($0475 & $001F)    ; 2875
C - - - - - 0x00120D 00:D1FD: A0 03     LDY #($0475 - $0400) / $20
C - - - - - 0x00120F 00:D1FF: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001212 00:D202: A0 1E     LDY #< (ram_p2_score + $01)
C - - - - - 0x001214 00:D204: A2 17     LDX #$17    ; ppu pos_X
C - - - - - 0x001216 00:D206: 20 34 D9  JSR sub_D934_calculate_padding_for_number
C - - - - - 0x001219 00:D209: A0 03     LDY #$03    ; ppu pos_Y
C - - - - - 0x00121B 00:D20B: 20 DD D6  JSR sub_D6DD
bra_D20E:
C - - - - - 0x00121E 00:D20E: A9 00     LDA #$00
C - - - - - 0x001220 00:D210: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x001222 00:D212: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x001225 00:D215: A9 D2     LDA #> tbl_D2C6_text___1_player
C - - - - - 0x001227 00:D217: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001229 00:D219: A9 C6     LDA #< tbl_D2C6_text___1_player
C - - - - - 0x00122B 00:D21B: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00122D 00:D21D: A2 0B     LDX #($062B & $001F)    ; 2A2B
C - - - - - 0x00122F 00:D21F: A0 11     LDY #($062B - $0400) / $20
C - - - - - 0x001231 00:D221: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001234 00:D224: A9 D2     LDA #> tbl_D2CF_text___2_players
C - - - - - 0x001236 00:D226: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001238 00:D228: A9 CF     LDA #< tbl_D2CF_text___2_players
C - - - - - 0x00123A 00:D22A: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00123C 00:D22C: A2 0B     LDX #($066B & $001F)    ; 2A6B
C - - - - - 0x00123E 00:D22E: A0 13     LDY #($066B - $0400) / $20
C - - - - - 0x001240 00:D230: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001243 00:D233: A9 D2     LDA #> tbl_D2EB_text___construction
C - - - - - 0x001245 00:D235: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001247 00:D237: A9 EB     LDA #< tbl_D2EB_text___construction
C - - - - - 0x001249 00:D239: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00124B 00:D23B: A2 0B     LDX #($06AB & $001F)    ; 2AAB
C - - - - - 0x00124D 00:D23D: A0 15     LDY #($06AB - $0400) / $20
C - - - - - 0x00124F 00:D23F: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001252 00:D242: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x001255 00:D245: A9 D2     LDA #> tbl_D28F_logo___namcot
C - - - - - 0x001257 00:D247: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001259 00:D249: A9 8F     LDA #< tbl_D28F_logo___namcot
C - - - - - 0x00125B 00:D24B: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00125D 00:D24D: A2 0B     LDX #($06EB & $001F)    ; 2AEB
C - - - - - 0x00125F 00:D24F: A0 17     LDY #($06EB - $0400) / $20
C - - - - - 0x001261 00:D251: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001264 00:D254: A9 D2     LDA #> tbl_D30F_text___1980_1985_namco_ltd
C - - - - - 0x001266 00:D256: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x001268 00:D258: A9 F8     LDA #< tbl_D30F_text___1980_1985_namco_ltd
C - - - - - 0x00126A 00:D25A: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00126C 00:D25C: A2 04     LDX #($0724 & $001F)    ; 2B24
C - - - - - 0x00126E 00:D25E: A0 19     LDY #($0724 - $0400) / $20
C - - - - - 0x001270 00:D260: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001273 00:D263: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x001276 00:D266: A9 D3     LDA #> tbl_D320_text___all_rights_reserved
C - - - - - 0x001278 00:D268: 85 12     STA ram_0011_t02_ppu_data + $01
C - - - - - 0x00127A 00:D26A: A9 20     LDA #< tbl_D320_text___all_rights_reserved
C - - - - - 0x00127C 00:D26C: 85 11     STA ram_0011_t02_ppu_data
C - - - - - 0x00127E 00:D26E: A2 06     LDX #($0766 & $001F)    ; 2B66
C - - - - - 0x001280 00:D270: A0 1B     LDY #($0766 - $0400) / $20
; bzk optimize, JMP
C - - - - - 0x001282 00:D272: 20 B3 D6  JSR sub_D6B3_fill_buffer_with_tiles
C - - - - - 0x001285 00:D275: 60        RTS



sub_D276_wait_while_displaying_enemy_tanks_with_sprites:
; in
    ; X = 
bra_D276_loop:
C - - - - - 0x001286 00:D276: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x001289 00:D279: 8A        TXA
C - - - - - 0x00128A 00:D27A: 48        PHA
C - - - - - 0x00128B 00:D27B: 20 B8 D0  JSR sub_D0B8_display_4_enemy_tanks_with_sprites
C - - - - - 0x00128E 00:D27E: 68        PLA
C - - - - - 0x00128F 00:D27F: AA        TAX
C - - - - - 0x001290 00:D280: CA        DEX
C - - - - - 0x001291 00:D281: D0 F3     BNE bra_D276_loop
C - - - - - 0x001293 00:D283: 60        RTS



tbl_D284_text___written_by:
- D 2 - I - 0x001294 00:D284: 57        .byte "WRITTEN BY"   ; 
- D 2 - I - 0x00129E 00:D28E: FF        .byte $FF   ; 



tbl_D28F_logo___namcot:
- D 2 - I - 0x00129F 00:D28F: 60        .byte $60, $61, $62, $63, $64, $65, $66, $67, $68   ; 
- D 2 - I - 0x0012A8 00:D298: FF        .byte $FF   ; 



tbl_D299_huge_text___battle:
- D 2 - I - 0x0012A9 00:D299: 42        .byte "BATTLE"   ; 
- D 2 - I - 0x0012AF 00:D29F: FF        .byte $FF   ; 



tbl_D2A0_hige_text___city:
- D 2 - I - 0x0012B0 00:D2A0: 43        .byte "CITY"   ; 
- D 2 - I - 0x0012B4 00:D2A4: FF        .byte $FF   ; 



tbl_D2A0_text___I_:
- D 2 - I - 0x0012B5 00:D2A5: 5E        .byte $5E   ; I
- D 2 - I - 0x0012B6 00:D2A6: 6B        .byte $6B   ; dash
- D 2 - I - 0x0012B7 00:D2A7: FF        .byte $FF   ; 



tbl_D2A8_text___II_:
- D 2 - I - 0x0012B8 00:D2A8: 5F        .byte $5F   ; II
- D 2 - I - 0x0012B9 00:D2A9: 6B        .byte $6B   ; dash
- D 2 - I - 0x0012BA 00:D2AA: FF        .byte $FF   ; 



tbl_D2AB_text___Ip:
- D 2 - I - 0x0012BB 00:D2AB: 58        .byte $58   ; I (stage bg color)
- D 2 - I - 0x0012BC 00:D2AC: 13        .byte $13   ; P
- D 2 - I - 0x0012BD 00:D2AD: FF        .byte $FF   ; 



tbl_D2AE_text___IIp:
- D 2 - I - 0x0012BE 00:D2AE: 5A        .byte $5A   ; II (stage bg color)
- D 2 - I - 0x0012BF 00:D2AF: 13        .byte $13   ; P
- D 2 - I - 0x0012C0 00:D2B0: FF        .byte $FF   ; 



tbl_D2B1_text___hi_:
- D 2 - I - 0x0012C1 00:D2B1: 48        .byte "HI"   ; 
- D 2 - I - 0x0012C3 00:D2B3: 6B        .byte $6B   ; dash
- D 2 - I - 0x0012C4 00:D2B4: FF        .byte $FF   ; 



tbl_D2B5_huge_text___hiscore:
- D 2 - I - 0x0012C5 00:D2B5: 48        .byte "HISCORE"   ; 
- D 2 - I - 0x0012CC 00:D2BC: FF        .byte $FF   ; 



tbl_D2BD_text___hi_score:
- D 2 - I - 0x0012CD 00:D2BD: 48        .byte "HI"   ; 
- D 2 - I - 0x0012CF 00:D2BF: 6B        .byte $6B   ; dash
- D 2 - I - 0x0012D0 00:D2C0: 53        .byte "SCORE"
- D 2 - I - 0x0012D5 00:D2C5: FF        .byte $FF   ; 



tbl_D2C6_text___1_player:
- D 2 - I - 0x0012D6 00:D2C6: 31        .byte "1 PLAYER"   ; 
- D 2 - I - 0x0012DE 00:D2CE: FF        .byte $FF   ; 



tbl_D2CF_text___2_players:
- D 2 - I - 0x0012DF 00:D2CF: 32        .byte "2 PLAYERS"   ; 
- D 2 - I - 0x0012E8 00:D2D8: FF        .byte $FF   ; 



tbl_D2D9_text___I_player:
- D 2 - I - 0x0012E9 00:D2D9: 5E        .byte $5E   ; I
- D 2 - I - 0x0012EA 00:D2DA: 6B        .byte $6B   ; dash
- D 2 - I - 0x0012EB 00:D2DB: 50        .byte "PLAYER"
- D 2 - I - 0x0012F1 00:D2E1: FF        .byte $FF   ; 



tbl_D2E2_text___II_player:
- D 2 - I - 0x0012F2 00:D2E2: 5F        .byte $5F   ; II
- D 2 - I - 0x0012F3 00:D2E3: 6B        .byte $6B   ; dash
- D 2 - I - 0x0012F4 00:D2E4: 50        .byte "PLAYER"
- D 2 - I - 0x0012FA 00:D2EA: FF        .byte $FF   ; 



tbl_D2EB_text___construction:
- D 2 - I - 0x0012FB 00:D2EB: 43        .byte "CONSTRUCTION"   ; 
- D 2 - I - 0x001307 00:D2F7: FF        .byte $FF   ; 



tbl_D30F_text___1980_1985_namco_ltd:
- D 2 - I - 0x001308 00:D2F8: 40        .byte "@ 1980 1985 NAMCO LTD"   ; 
- D 2 - I - 0x00131D 00:D30D: 69        .byte $69   ; dot
- D 2 - I - 0x00131E 00:D30E: FF        .byte $FF   ; 



tbl_D30F_text___this_progrm_was:
- D 2 - I - 0x00131F 00:D30F: 54        .byte "THIS PROGRAM WAS"   ; 
- D 2 - I - 0x00132F 00:D31F: FF        .byte $FF   ; 



tbl_D320_text___all_rights_reserved:
- D 2 - I - 0x001330 00:D320: 41        .byte "ALL RIGHTS RESERVED"   ; 
- D 2 - I - 0x001343 00:D333: FF        .byte $FF   ; 



tbl_D334_text___open_reach:
- D 2 - I - 0x001344 00:D334: 4F        .byte "OPEN"   ; 
- D 2 - I - 0x001348 00:D338: 6B        .byte $6B   ; dash
- D 2 - I - 0x001349 00:D339: 52        .byte "REACH"   ; 
- D 2 - I - 0x00134E 00:D33E: FF        .byte $FF   ; 



tbl_D341_tile___dot:
- D 2 - I - 0x00134F 00:D33F: 69        .byte $69   ; 
- D 2 - I - 0x001350 00:D340: FF        .byte $FF   ; 



tbl_D341_tile___player_icon:
- D 2 - I - 0x001351 00:D341: 14        .byte $14   ; 
- D 2 - I - 0x001352 00:D342: FF        .byte $FF   ; 



tbl_D343_huge_text___game:
- D 2 - I - 0x001353 00:D343: 47        .byte "GAME"   ; 
- D 2 - I - 0x001357 00:D347: FF        .byte $FF   ; 



tbl_D348_huge_text___over:
- D 2 - I - 0x001358 00:D348: 4F        .byte "OVER"   ; 
- D 2 - I - 0x00135C 00:D34C: FF        .byte $FF   ; 



tbl_D34D_text___who_loves_noriko:
- D 2 - I - 0x00135D 00:D34D: 57        .byte "WHO LOVES NORIKO"   ; 
- D 2 - I - 0x00136D 00:D35D: FF        .byte $FF   ; 



tbl_D35E_pts_txt:
- D 2 - I - 0x00136E 00:D35E: 50        .byte "PTS"
- D 2 - I - 0x001371 00:D361: FF        .byte $FF   ; 



tbl_D362_tile___enemy_icon:
- D 2 - I - 0x001372 00:D362: 6A        .byte $6A   ; 
- D 2 - I - 0x001373 00:D363: 6A        .byte $6A   ; 
- D 2 - I - 0x001374 00:D364: FF        .byte $FF   ; 



tbl_D365_tiles___flag1:     ; above stage number
- D 2 - I - 0x001375 00:D365: 6C        .byte $6C   ; 
- D 2 - I - 0x001376 00:D366: FC        .byte $FC   ; 
- D 2 - I - 0x001377 00:D367: FF        .byte $FF   ; 



tbl_D368_tiles___flag2:     ; above stage number
- D 2 - I - 0x001378 00:D368: 6D        .byte $6D   ; 
- D 2 - I - 0x001379 00:D369: FD        .byte $FD   ; 
- D 2 - I - 0x00137A 00:D36A: FF        .byte $FF   ; 



tbl_D36B_tile___gray:   ; border aroud stage
- D 2 - I - 0x00137B 00:D36B: 11        .byte $11   ; 
- D 2 - I - 0x00137C 00:D36C: FF        .byte $FF   ; 



tbl_D36D_tiles___default_base___line1:
- D 2 - I - 0x00137D 00:D36D: 00        .byte $00, $00, $00, $00, $00, $00   ; 
- D 2 - I - 0x001383 00:D373: FF        .byte $FF   ; 



tbl_D374_tiles___default_base___line2:
- D 2 - I - 0x001384 00:D374: 00        .byte $00   ; 
- D 2 - I - 0x001385 00:D375: 0F        .byte $0F   ; 
- D 2 - I - 0x001386 00:D376: 0F        .byte $0F   ; 
- D 2 - I - 0x001387 00:D377: 0F        .byte $0F   ; 
- D 2 - I - 0x001388 00:D378: 0F        .byte $0F   ; 
- D 2 - I - 0x001389 00:D379: 00        .byte $00   ; 
- D 2 - I - 0x00138A 00:D37A: FF        .byte $FF   ; 



tbl_D37B_tiles___default_base___line3:
- D 2 - I - 0x00138B 00:D37B: 00        .byte $00   ; 
- D 2 - I - 0x00138C 00:D37C: 0F        .byte $0F   ; 
- D 2 - I - 0x00138D 00:D37D: C8        .byte $C8   ; 
- D 2 - I - 0x00138E 00:D37E: CA        .byte $CA   ; 
- D 2 - I - 0x00138F 00:D37F: 0F        .byte $0F   ; 
- D 2 - I - 0x001390 00:D380: 00        .byte $00   ; 
- D 2 - I - 0x001391 00:D381: FF        .byte $FF   ; 



tbl_D382_tiles___default_base___line4:
- D 2 - I - 0x001392 00:D382: 00        .byte $00   ; 
- D 2 - I - 0x001393 00:D383: 0F        .byte $0F   ; 
- D 2 - I - 0x001394 00:D384: C9        .byte $C9   ; 
- D 2 - I - 0x001395 00:D385: CB        .byte $CB   ; 
- D 2 - I - 0x001396 00:D386: 0F        .byte $0F   ; 
- D 2 - I - 0x001397 00:D387: 00        .byte $00   ; 
- D 2 - I - 0x001398 00:D388: FF        .byte $FF   ; 



tbl_D389_tiles___protected_base___line1:
- D 2 - I - 0x001399 00:D389: 00        .byte $00, $00, $00, $00, $00, $00   ; 
- D 2 - I - 0x00139F 00:D38F: FF        .byte $FF   ; 



tbl_D390_tiles___protected_base___line2:
- D 2 - I - 0x0013A0 00:D390: 00        .byte $00   ; 
- D 2 - I - 0x0013A1 00:D391: 10        .byte $10   ; 
- D 2 - I - 0x0013A2 00:D392: 10        .byte $10   ; 
- D 2 - I - 0x0013A3 00:D393: 10        .byte $10   ; 
- D 2 - I - 0x0013A4 00:D394: 10        .byte $10   ; 
- D 2 - I - 0x0013A5 00:D395: 00        .byte $00   ; 
- D 2 - I - 0x0013A6 00:D396: FF        .byte $FF   ; 



tbl_D397_tiles___protected_base___line3:
- D 2 - I - 0x0013A7 00:D397: 00        .byte $00   ; 
- D 2 - I - 0x0013A8 00:D398: 10        .byte $10   ; 
- D 2 - I - 0x0013A9 00:D399: C8        .byte $C8   ; 
- D 2 - I - 0x0013AA 00:D39A: CA        .byte $CA   ; 
- D 2 - I - 0x0013AB 00:D39B: 10        .byte $10   ; 
- D 2 - I - 0x0013AC 00:D39C: 00        .byte $00   ; 
- D 2 - I - 0x0013AD 00:D39D: FF        .byte $FF   ; 



tbl_D39E_tiles___protected_base___line4:
- D 2 - I - 0x0013AE 00:D39E: 00        .byte $00   ; 
- D 2 - I - 0x0013AF 00:D39F: 10        .byte $10   ; 
- D 2 - I - 0x0013B0 00:D3A0: C9        .byte $C9   ; 
- D 2 - I - 0x0013B1 00:D3A1: CB        .byte $CB   ; 
- D 2 - I - 0x0013B2 00:D3A2: 10        .byte $10   ; 
- D 2 - I - 0x0013B3 00:D3A3: 00        .byte $00   ; 
- D 2 - I - 0x0013B4 00:D3A4: FF        .byte $FF   ; 



tbl_D3A5_tiles___default_eagle___line1:
- D 2 - I - 0x0013B5 00:D3A5: C8        .byte $C8   ; 
- D 2 - I - 0x0013B6 00:D3A6: CA        .byte $CA   ; 
- D 2 - I - 0x0013B7 00:D3A7: FF        .byte $FF   ; 



tbl_D3A8_tiles___default_eagle___line2:
- D 2 - I - 0x0013B8 00:D3A8: C9        .byte $C9   ; 
- D 2 - I - 0x0013B9 00:D3A9: CB        .byte $CB   ; 
- D 2 - I - 0x0013BA 00:D3AA: FF        .byte $FF   ; 



tbl_D3AB_tiles___destroyed_eagle___line1:
- D 2 - I - 0x0013BB 00:D3AB: CC        .byte $CC   ; 
- D 2 - I - 0x0013BC 00:D3AC: CE        .byte $CE   ; 
- D 2 - I - 0x0013BD 00:D3AD: FF        .byte $FF   ; 



tbl_D3AE_tiles___destroyed_eagle___line2:
- D 2 - I - 0x0013BE 00:D3AE: CD        .byte $CD   ; 
- D 2 - I - 0x0013BF 00:D3AF: CF        .byte $CF   ; 
- D 2 - I - 0x0013C0 00:D3B0: FF        .byte $FF   ; 



tbl_D3B1_tile___arrow_left:
- D 2 - I - 0x0013C1 00:D3B1: 5B        .byte $5B   ; <-
- D 2 - I - 0x0013C2 00:D3B2: FF        .byte $FF   ; 



tbl_D3B3_tile___arrow_right:
- D 2 - I - 0x0013C3 00:D3B3: 5D        .byte $5D   ; ->
- D 2 - I - 0x0013C4 00:D3B4: FF        .byte $FF   ; 



tbl_D3B5_text___total:
- D 2 - I - 0x0013C5 00:D3B5: 54        .byte "TOTAL"   ; 
- D 2 - I - 0x0013CA 00:D3BA: FF        .byte $FF   ; 



tbl_D3BB_tiles___underline:
- D 2 - I - 0x0013CB 00:D3BB: 5C        .byte $5C, $5C, $5C, $5C, $5C, $5C, $5C, $5C   ; ________
- D 2 - I - 0x0013D3 00:D3C3: FF        .byte $FF   ; 



tbl_D3C4_text___bonus:
- D 2 - I - 0x0013D4 00:D3C4: 42        .byte "BONUS"   ; 
- D 2 - I - 0x0013D9 00:D3C9: 15        .byte $15   ; !
- D 2 - I - 0x0013DA 00:D3CA: FF        .byte $FF   ; 



tbl_D3CB_text___stage:
- D 2 - I - 0x0013DB 00:D3CB: 53        .byte "STAGE"   ; 
- D 2 - I - 0x0013E0 00:D3D0: FF        .byte $FF   ; 



tbl_D3D1_points_for_killing_enemy:
- D 2 - - - 0x0013E1 00:D3D1: 10        .byte $10   ; 00 
- D 2 - - - 0x0013E2 00:D3D2: 20        .byte $20   ; 01 
- D 2 - - - 0x0013E3 00:D3D3: 30        .byte $30   ; 02 
- D 2 - - - 0x0013E4 00:D3D4: 40        .byte $40   ; 03 



tbl_D3D5_construction_cursor_speed_X:
- D 2 - - - 0x0013E5 00:D3D5: 00        .byte $00   ; 00 Up
- D 2 - - - 0x0013E6 00:D3D6: FF        .byte $FF   ; 01 Left
- D 2 - - - 0x0013E7 00:D3D7: 00        .byte $00   ; 02 Down
- D 2 - - - 0x0013E8 00:D3D8: 01        .byte $01   ; 03 Right



tbl_D3D9_construction_cursor_speed_Y:
- D 2 - - - 0x0013E9 00:D3D9: FF        .byte $FF   ; 00 Up
- D 2 - - - 0x0013EA 00:D3DA: 00        .byte $00   ; 01 Left
- D 2 - - - 0x0013EB 00:D3DB: 01        .byte $01   ; 02 Down
- D 2 - - - 0x0013EC 00:D3DC: 00        .byte $00   ; 03 Right


; bzk garbage
- - - - - - 0x0013ED 00:D3DD: FF        .byte $FF, $FF, $FF   ; 
- - - - - - 0x0013F0 00:D3E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x001400 00:D3F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



vec_D400_NMI:
C - - - - - 0x001410 00:D400: 48        PHA
C - - - - - 0x001411 00:D401: 8A        TXA
C - - - - - 0x001412 00:D402: 48        PHA
C - - - - - 0x001413 00:D403: 98        TYA
C - - - - - 0x001414 00:D404: 48        PHA
C - - - - - 0x001415 00:D405: 08        PHP
; 
C - - - - - 0x001416 00:D406: A9 00     LDA #< ram_oam
C - - - - - 0x001418 00:D408: 8D 03 20  STA $2003
C - - - - - 0x00141B 00:D40B: A9 02     LDA #> ram_oam
C - - - - - 0x00141D 00:D40D: 8D 14 40  STA $4014
; 
C - - - - - 0x001420 00:D410: AD 02 20  LDA $2002
C - - - - - 0x001423 00:D413: 20 FD D8  JSR sub_D8FD_write_buffer_to_ppu
C - - - - - 0x001426 00:D416: A5 4D     LDA ram_bg_palette_id
C - - - - - 0x001428 00:D418: 30 03     BMI bra_D41D_skip_bg_palette    ; if con_bg_pal_FF
C - - - - - 0x00142A 00:D41A: 20 0E D5  JSR sub_D50E_set_background_palette
bra_D41D_skip_bg_palette:
C - - - - - 0x00142D 00:D41D: A5 50     LDA ram_base_nmt
C - - - - - 0x00142F 00:D41F: 09 B0     ORA #$B0
C - - - - - 0x001431 00:D421: 8D 00 20  STA $2000
; set scroll
C - - - - - 0x001434 00:D424: A9 00     LDA #$00    ; scroll X
C - - - - - 0x001436 00:D426: 8D 05 20  STA $2005
C - - - - - 0x001439 00:D429: A5 4F     LDA ram_scroll_Y
C - - - - - 0x00143B 00:D42B: 8D 05 20  STA $2005
; 
C - - - - - 0x00143E 00:D42E: A9 1E     LDA #$1E
C - - - - - 0x001440 00:D430: 8D 01 20  STA $2001
C - - - - - 0x001443 00:D433: 20 89 D6  JSR sub_D689_read_joy_regs
C - - - - - 0x001446 00:D436: 20 93 DA  JSR sub_DA93_hide_unused_sprites
C - - - - - 0x001449 00:D439: 20 7E EA  JSR sub_EA7E_sound_driver
; 
C - - - - - 0x00144C 00:D43C: E6 0B     INC ram_frm_cnt_lo
C - - - - - 0x00144E 00:D43E: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001450 00:D440: 29 3F     AND #$3F
C - - - - - 0x001452 00:D442: D0 02     BNE bra_D446
C - - - - - 0x001454 00:D444: E6 0A     INC ram_frm_cnt_hi
bra_D446:
C - - - - - 0x001456 00:D446: 28        PLP
C - - - - - 0x001457 00:D447: 68        PLA
C - - - - - 0x001458 00:D448: A8        TAY
C - - - - - 0x001459 00:D449: 68        PLA
C - - - - - 0x00145A 00:D44A: AA        TAX
C - - - - - 0x00145B 00:D44B: 68        PLA
C - - - - - 0x00145C 00:D44C: 40        RTI



sub_D44D_generate_random_number:
C - - - - - 0x00145D 00:D44D: 8A        TXA
C - - - - - 0x00145E 00:D44E: 48        PHA
C - - - - - 0x00145F 00:D44F: A5 0F     LDA ram_random
; * 08
C - - - - - 0x001461 00:D451: 0A        ASL
C - - - - - 0x001462 00:D452: 0A        ASL
C - - - - - 0x001463 00:D453: 0A        ASL
C - - - - - 0x001464 00:D454: 38        SEC
C - - - - - 0x001465 00:D455: E5 0F     SBC ram_random
C - - - - - 0x001467 00:D457: 18        CLC
C - - - - - 0x001468 00:D458: 65 0A     ADC ram_frm_cnt_hi
C - - - - - 0x00146A 00:D45A: E6 10     INC ram_index_for_random
C - - - - - 0x00146C 00:D45C: A6 10     LDX ram_index_for_random
C - - - - - 0x00146E 00:D45E: 75 00     ADC $00,X
C - - - - - 0x001470 00:D460: 85 0F     STA ram_random
C - - - - - 0x001472 00:D462: 68        PLA
C - - - - - 0x001473 00:D463: AA        TAX
C - - - - - 0x001474 00:D464: A5 0F     LDA ram_random
C - - - - - 0x001476 00:D466: 60        RTS



sub_D467_enable_nmi:
C - - - - - 0x001477 00:D467: 20 F5 D5  JSR sub_D5F5_wait_for_vblank
C - - - - - 0x00147A 00:D46A: A9 B0     LDA #$B0
C - - - - - 0x00147C 00:D46C: 8D 00 20  STA $2000
C - - - - - 0x00147F 00:D46F: 60        RTS



sub_D470_disable_nmi:
C - - - - - 0x001480 00:D470: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x001483 00:D473: A9 10     LDA #$10
C - - - - - 0x001485 00:D475: 8D 00 20  STA $2000
C - - - - - 0x001488 00:D478: A9 06     LDA #$06
C - - - - - 0x00148A 00:D47A: 8D 01 20  STA $2001
C - - - - - 0x00148D 00:D47D: 60        RTS



sub_D47E_clear_0400_07FF:
C - - - - - 0x00148E 00:D47E: A9 00     LDA #$00
C - - - - - 0x001490 00:D480: AA        TAX
bra_D481_loop:
C - - - - - 0x001491 00:D481: 9D 00 04  STA ram_stage_data,X
C - - - - - 0x001494 00:D484: 9D 00 05  STA ram_stage_data + $100,X
C - - - - - 0x001497 00:D487: 9D 00 06  STA ram_stage_data + $200,X
C - - - - - 0x00149A 00:D48A: 9D 00 07  STA ram_stage_data + $300,X
C - - - - - 0x00149D 00:D48D: E8        INX
C - - - - - 0x00149E 00:D48E: D0 F1     BNE bra_D481_loop
C - - - - - 0x0014A0 00:D490: 60        RTS



sub_D491_clear_stuff_and_prepare_title_screen:
C - - - - - 0x0014A1 00:D491: A9 00     LDA #$00
C - - - - - 0x0014A3 00:D493: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x0014A5 00:D495: 85 6B     STA ram_006B_flag
C - - - - - 0x0014A7 00:D497: 85 0C     STA ram_buffer_index
C - - - - - 0x0014A9 00:D499: 85 0D     STA ram_index_oam
C - - - - - 0x0014AB 00:D49B: 85 6D     STA ram_pause_flag
C - - - - - 0x0014AD 00:D49D: A9 FF     LDA #con_bg_pal_FF
C - - - - - 0x0014AF 00:D49F: 85 4D     STA ram_bg_palette_id
C - - - - - 0x0014B1 00:D4A1: 20 02 D5  JSR sub_D502
C - - - - - 0x0014B4 00:D4A4: A9 04     LDA #$04
C - - - - - 0x0014B6 00:D4A6: 85 0E     STA ram_offset_oam_index
C - - - - - 0x0014B8 00:D4A8: A9 20     LDA #$20
C - - - - - 0x0014BA 00:D4AA: 85 6E     STA ram_priority_spr_A
C - - - - - 0x0014BC 00:D4AC: 20 7E D4  JSR sub_D47E_clear_0400_07FF
C - - - - - 0x0014BF 00:D4AF: 20 93 DA  JSR sub_DA93_hide_unused_sprites
C - - - - - 0x0014C2 00:D4B2: A2 15     LDX #< ram_p1_score
C - - - - - 0x0014C4 00:D4B4: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x0014C7 00:D4B7: A2 1D     LDX #< ram_p2_score
C - - - - - 0x0014C9 00:D4B9: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x0014CC 00:D4BC: 20 EF D4  JSR sub_D4EF_check_copyrights
C - - - - - 0x0014CF 00:D4BF: D0 0D     BNE bra_D4CE_it_is_soft_reset
; if hard reset
C - - - - - 0x0014D1 00:D4C1: A2 3D     LDX #< ram_hi_score
C - - - - - 0x0014D3 00:D4C3: 20 FE D9  JSR sub_D9FE_clear_bcd_number
; set default hiscore 20.000
C - - - - - 0x0014D6 00:D4C6: A9 02     LDA #$02
C - - - - - 0x0014D8 00:D4C8: 85 3F     STA ram_hi_score + $02
C - - - - - 0x0014DA 00:D4CA: A9 00     LDA #$00    ; 1p mode
C - - - - - 0x0014DC 00:D4CC: 85 83     STA ram_game_mode
bra_D4CE_it_is_soft_reset:
; clear 2 nametables
C - - - - - 0x0014DE 00:D4CE: A9 1C     LDA #con_ppu_offset_2000
C - - - - - 0x0014E0 00:D4D0: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x0014E2 00:D4D2: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x0014E5 00:D4D5: A9 24     LDA #con_ppu_offset_2800
C - - - - - 0x0014E7 00:D4D7: 85 05     STA ram_offset_for_2006_hi
C - - - - - 0x0014E9 00:D4D9: 20 B4 D7  JSR sub_D7B4_copy_400h_to_nametable
C - - - - - 0x0014EC 00:D4DC: 20 E3 D4  JSR sub_D4E3_set_copyrights
; bzk optimize, JMP
C - - - - - 0x0014EF 00:D4DF: 20 51 EA  JSR sub_EA51_clear_sound_engine_data
C - - - - - 0x0014F2 00:D4E2: 60        RTS



sub_D4E3_set_copyrights:
C - - - - - 0x0014F3 00:D4E3: A2 0F     LDX #$0F
bra_D4E5_loop:
C - - - - - 0x0014F5 00:D4E5: BD 40 C0  LDA tbl_C040_copyrights,X
C - - - - - 0x0014F8 00:D4E8: 9D 10 01  STA ram_copyrights,X
C - - - - - 0x0014FB 00:D4EB: CA        DEX
C - - - - - 0x0014FC 00:D4EC: 10 F7     BPL bra_D4E5_loop
C - - - - - 0x0014FE 00:D4EE: 60        RTS



sub_D4EF_check_copyrights:
; out
    ; Z
        ; 0 = no math (hard reset)
        ; 1 = perfect match (soft reset)
C - - - - - 0x0014FF 00:D4EF: A2 0F     LDX #$0F
bra_D4F1_loop:
C - - - - - 0x001501 00:D4F1: BD 10 01  LDA ram_copyrights,X
C - - - - - 0x001504 00:D4F4: DD 40 C0  CMP tbl_C040_copyrights,X
C - - - - - 0x001507 00:D4F7: D0 06     BNE bra_D4FF_wrong_value
- - - - - - 0x001509 00:D4F9: CA        DEX
- - - - - - 0x00150A 00:D4FA: 10 F5     BPL bra_D4F1_loop
; if perfect match
- - - - - - 0x00150C 00:D4FC: A9 01     LDA #$01
- - - - - - 0x00150E 00:D4FE: 60        RTS
bra_D4FF_wrong_value:
C - - - - - 0x00150F 00:D4FF: A9 00     LDA #$00
C - - - - - 0x001511 00:D501: 60        RTS



sub_D502:
C - - - - - 0x001512 00:D502: 20 F5 D5  JSR sub_D5F5_wait_for_vblank
C - - - - - 0x001515 00:D505: 20 3E D5  JSR sub_D53E_set_sprites_palette
C - - - - - 0x001518 00:D508: A9 00     LDA #con_bg_pal_00
; bzk optimize, JMP
C - - - - - 0x00151A 00:D50A: 20 0E D5  JSR sub_D50E_set_background_palette
C - - - - - 0x00151D 00:D50D: 60        RTS



sub_D50E_set_background_palette:
; in
    ; A = con_bg_pal
; * 10
C - - - - - 0x00151E 00:D50E: 0A        ASL
C - - - - - 0x00151F 00:D50F: 0A        ASL
C - - - - - 0x001520 00:D510: 0A        ASL
C - - - - - 0x001521 00:D511: 0A        ASL
C - - - - - 0x001522 00:D512: AA        TAX
C - - - - - 0x001523 00:D513: A0 10     LDY #$10
C - - - - - 0x001525 00:D515: A9 3F     LDA #> $3F00
C - - - - - 0x001527 00:D517: 8D 06 20  STA $2006
C - - - - - 0x00152A 00:D51A: A9 00     LDA #< $3F00
C - - - - - 0x00152C 00:D51C: 8D 06 20  STA $2006
bra_D51F_loop:
C - - - - - 0x00152F 00:D51F: BD 65 D5  LDA tbl_D565_background_palette,X
C - - - - - 0x001532 00:D522: 8D 07 20  STA $2007
C - - - - - 0x001535 00:D525: E8        INX
C - - - - - 0x001536 00:D526: 88        DEY
C - - - - - 0x001537 00:D527: D0 F6     BNE bra_D51F_loop
C - - - - - 0x001539 00:D529: A9 FF     LDA #con_bg_pal_FF
C - - - - - 0x00153B 00:D52B: 85 4D     STA ram_bg_palette_id
C - - - - - 0x00153D 00:D52D: A9 3F     LDA #> $3F00
C - - - - - 0x00153F 00:D52F: 8D 06 20  STA $2006
C - - - - - 0x001542 00:D532: A9 00     LDA #< $3F00
C - - - - - 0x001544 00:D534: 8D 06 20  STA $2006
; A = 00
C - - - - - 0x001547 00:D537: 8D 06 20  STA $2006
C - - - - - 0x00154A 00:D53A: 8D 06 20  STA $2006
C - - - - - 0x00154D 00:D53D: 60        RTS



sub_D53E_set_sprites_palette:
C - - - - - 0x00154E 00:D53E: A2 00     LDX #$00
C - - - - - 0x001550 00:D540: A0 10     LDY #< $3F10
C - - - - - 0x001552 00:D542: A9 3F     LDA #> $3F10
C - - - - - 0x001554 00:D544: 8D 06 20  STA $2006
C - - - - - 0x001557 00:D547: 8C 06 20  STY $2006
; Y = 10
bra_D54A_loop:
C - - - - - 0x00155A 00:D54A: BD 55 D5  LDA tbl_D555_sprites_palette,X
C - - - - - 0x00155D 00:D54D: 8D 07 20  STA $2007
C - - - - - 0x001560 00:D550: E8        INX
C - - - - - 0x001561 00:D551: 88        DEY
C - - - - - 0x001562 00:D552: D0 F6     BNE bra_D54A_loop
C - - - - - 0x001564 00:D554: 60        RTS



tbl_D555_sprites_palette:
- D 2 - - - 0x001565 00:D555: 0F        .byte $0F, $18, $27, $38   ; 
- D 2 - - - 0x001569 00:D559: 0F        .byte $0F, $0A, $1B, $3B   ; 
- D 2 - - - 0x00156D 00:D55D: 0F        .byte $0F, $0C, $10, $20   ; 
- D 2 - - - 0x001571 00:D561: 0F        .byte $0F, $04, $16, $20   ; 



tbl_D565_background_palette:
; 00 con_bg_pal_00
- D 2 - - - 0x001575 00:D565: 0F        .byte $0F, $17, $06, $00   ; 
- D 2 - - - 0x001579 00:D569: 0F        .byte $0F, $3C, $10, $12   ; 
- D 2 - - - 0x00157D 00:D56D: 0F        .byte $0F, $29, $09, $0B   ; 
- D 2 - - - 0x001581 00:D571: 0F        .byte $0F, $00, $10, $20   ; 
; 01 con_bg_pal_01
- D 2 - - - 0x001585 00:D575: 0F        .byte $0F, $17, $06, $00   ; 
- D 2 - - - 0x001589 00:D579: 0F        .byte $0F, $3C, $12, $12   ; 
- D 2 - - - 0x00158D 00:D57D: 0F        .byte $0F, $29, $09, $0B   ; 
- D 2 - - - 0x001591 00:D581: 0F        .byte $0F, $00, $10, $20   ; 
; 02 con_bg_pal_02
- D 2 - - - 0x001595 00:D585: 0F        .byte $0F, $17, $06, $00   ; 
- D 2 - - - 0x001599 00:D589: 0F        .byte $0F, $12, $3C, $12   ; 
- D 2 - - - 0x00159D 00:D58D: 0F        .byte $0F, $29, $09, $0B   ; 
- D 2 - - - 0x0015A1 00:D591: 0F        .byte $0F, $00, $10, $20   ; 
; 03 con_bg_pal_03
- D 2 - - - 0x0015A5 00:D595: 0F        .byte $0F, $16, $16, $30   ; 
- D 2 - - - 0x0015A9 00:D599: 0F        .byte $0F, $3C, $10, $16   ; 
- D 2 - - - 0x0015AD 00:D59D: 0F        .byte $0F, $29, $09, $27   ; 
- D 2 - - - 0x0015B1 00:D5A1: 0F        .byte $0F, $00, $10, $20   ; 
; 04 con_bg_pal_04
- D 2 - - - 0x0015B5 00:D5A5: 0F        .byte $0F, $17, $06, $00   ; 
- D 2 - - - 0x0015B9 00:D5A9: 0F        .byte $0F, $3C, $10, $00   ; 
- D 2 - - - 0x0015BD 00:D5AD: 0F        .byte $0F, $29, $09, $00   ; 
- D 2 - - - 0x0015C1 00:D5B1: 0F        .byte $0F, $00, $10, $00   ; 
; 05 con_bg_pal_05
- D 2 - - - 0x0015C5 00:D5B5: 0F        .byte $0F, $0F, $06, $00   ; 
- D 2 - - - 0x0015C9 00:D5B9: 0F        .byte $0F, $3C, $10, $00   ; 
- D 2 - - - 0x0015CD 00:D5BD: 0F        .byte $0F, $29, $09, $00   ; 
- D 2 - - - 0x0015D1 00:D5C1: 0F        .byte $0F, $00, $10, $00   ; 
; 06 con_bg_pal_06
- D 2 - - - 0x0015D5 00:D5C5: 0F        .byte $0F, $12, $06, $00   ; 
- D 2 - - - 0x0015D9 00:D5C9: 0F        .byte $0F, $3C, $10, $00   ; 
- D 2 - - - 0x0015DD 00:D5CD: 0F        .byte $0F, $29, $09, $00   ; 
- D 2 - - - 0x0015E1 00:D5D1: 0F        .byte $0F, $00, $10, $00   ; 
; 07 con_bg_pal_07
- D 2 - - - 0x0015E5 00:D5D5: 0F        .byte $0F, $00, $06, $00   ; 
- D 2 - - - 0x0015E9 00:D5D9: 0F        .byte $0F, $3C, $10, $00   ; 
- D 2 - - - 0x0015ED 00:D5DD: 0F        .byte $0F, $29, $09, $00   ; 
- D 2 - - - 0x0015F1 00:D5E1: 0F        .byte $0F, $00, $10, $00   ; 
; 08 con_bg_pal_08
- D 2 - - - 0x0015F5 00:D5E5: 0F        .byte $0F, $30, $06, $00   ; 
- D 2 - - - 0x0015F9 00:D5E9: 0F        .byte $0F, $3C, $10, $00   ; 
- D 2 - - - 0x0015FD 00:D5ED: 0F        .byte $0F, $29, $09, $00   ; 
- D 2 - - - 0x001601 00:D5F1: 0F        .byte $0F, $00, $10, $00   ; 



sub_D5F5_wait_for_vblank:
bra_D5F5_infinite_loop:
C - - - - - 0x001605 00:D5F5: AD 02 20  LDA $2002
C - - - - - 0x001608 00:D5F8: 10 FB     BPL bra_D5F5_infinite_loop
C - - - - - 0x00160A 00:D5FA: 60        RTS



sub_D5FB_calculate_pointer:
; in
    ; X = 
    ; Y = 
; out
    ; A = pointer hi
    ; Y = pointer lo
; formula = Y * 20 + X + 0400
C - - - - - 0x00160B 00:D5FB: A9 00     LDA #$00
C - - - - - 0x00160D 00:D5FD: 85 00     STA ram_0000_t04
C - - - - - 0x00160F 00:D5FF: 98        TYA
; / 08
C - - - - - 0x001610 00:D600: 4A        LSR
C - - - - - 0x001611 00:D601: 66 00     ROR ram_0000_t04
C - - - - - 0x001613 00:D603: 4A        LSR
C - - - - - 0x001614 00:D604: 66 00     ROR ram_0000_t04
C - - - - - 0x001616 00:D606: 4A        LSR
C - - - - - 0x001617 00:D607: 66 00     ROR ram_0000_t04
C - - - - - 0x001619 00:D609: 48        PHA
C - - - - - 0x00161A 00:D60A: 8A        TXA
C - - - - - 0x00161B 00:D60B: 05 00     ORA ram_0000_t04
C - - - - - 0x00161D 00:D60D: A8        TAY
C - - - - - 0x00161E 00:D60E: 68        PLA
C - - - - - 0x00161F 00:D60F: 09 04     ORA #$04
C - - - - - 0x001621 00:D611: 60        RTS



sub_D612_write_nametable_attribute_to_ppu:
C - - - - - 0x001622 00:D612: 20 35 D6  JSR sub_D635_calculate_nametable_attribute
C - - - - - 0x001625 00:D615: A6 0C     LDX ram_buffer_index
C - - - - - 0x001627 00:D617: A9 23     LDA #> $23C0
C - - - - - 0x001629 00:D619: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x00162C 00:D61C: E8        INX
C - - - - - 0x00162D 00:D61D: 98        TYA
C - - - - - 0x00162E 00:D61E: 18        CLC
C - - - - - 0x00162F 00:D61F: 69 C0     ADC #< $23C0
C - - - - - 0x001631 00:D621: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x001634 00:D624: E8        INX
C - - - - - 0x001635 00:D625: B9 C0 07  LDA ram_07C0_nmt_attr_buffer,Y
C - - - - - 0x001638 00:D628: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x00163B 00:D62B: E8        INX
C - - - - - 0x00163C 00:D62C: A9 FF     LDA #$FF
C - - - - - 0x00163E 00:D62E: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x001641 00:D631: E8        INX
C - - - - - 0x001642 00:D632: 86 0C     STX ram_buffer_index
C - - - - - 0x001644 00:D634: 60        RTS



sub_D635_calculate_nametable_attribute:
C - - - - - 0x001645 00:D635: A5 04     LDA ram_0004_t02_nametable_attribute
C - - - - - 0x001647 00:D637: 20 84 D6  JSR sub_D684
C - - - - - 0x00164A 00:D63A: 20 84 D6  JSR sub_D684
C - - - - - 0x00164D 00:D63D: 20 84 D6  JSR sub_D684
C - - - - - 0x001650 00:D640: 85 02     STA ram_0002_t03
C - - - - - 0x001652 00:D642: 98        TYA
C - - - - - 0x001653 00:D643: 29 02     AND #$02
C - - - - - 0x001655 00:D645: D0 0F     BNE bra_D656
C - - - - - 0x001657 00:D647: 8A        TXA
C - - - - - 0x001658 00:D648: 29 02     AND #$02
C - - - - - 0x00165A 00:D64A: F0 05     BEQ bra_D651
C - - - - - 0x00165C 00:D64C: A9 F3     LDA #$F3
; bzk optimize, BNE
C - - - - - 0x00165E 00:D64E: 4C 62 D6  JMP loc_D662
bra_D651:
C - - - - - 0x001661 00:D651: A9 FC     LDA #$FC
; bzk optimize, BNE
C - - - - - 0x001663 00:D653: 4C 62 D6  JMP loc_D662
bra_D656:
C - - - - - 0x001666 00:D656: 8A        TXA
C - - - - - 0x001667 00:D657: 29 02     AND #$02
C - - - - - 0x001669 00:D659: F0 05     BEQ bra_D660
C - - - - - 0x00166B 00:D65B: A9 3F     LDA #$3F
; bzk optimize, BNE
C - - - - - 0x00166D 00:D65D: 4C 62 D6  JMP loc_D662
bra_D660:
C - - - - - 0x001670 00:D660: A9 CF     LDA #$CF
loc_D662:
C D 2 - - - 0x001672 00:D662: 85 01     STA ram_0001_t01_attribute_mask
C - - - - - 0x001674 00:D664: 98        TYA
C - - - - - 0x001675 00:D665: 0A        ASL
C - - - - - 0x001676 00:D666: 29 F8     AND #$F8
C - - - - - 0x001678 00:D668: 85 00     STA ram_0000_t14
C - - - - - 0x00167A 00:D66A: 8A        TXA
; / 04
C - - - - - 0x00167B 00:D66B: 4A        LSR
C - - - - - 0x00167C 00:D66C: 4A        LSR
C - - - - - 0x00167D 00:D66D: 18        CLC
C - - - - - 0x00167E 00:D66E: 65 00     ADC ram_0000_t14
C - - - - - 0x001680 00:D670: A8        TAY
C - - - - - 0x001681 00:D671: A5 01     LDA ram_0001_t01_attribute_mask
C - - - - - 0x001683 00:D673: 49 FF     EOR #$FF
C - - - - - 0x001685 00:D675: 25 02     AND ram_0002_t03
C - - - - - 0x001687 00:D677: 85 02     STA ram_0002_t01_attribute
C - - - - - 0x001689 00:D679: B9 C0 07  LDA ram_07C0_nmt_attr_buffer,Y
C - - - - - 0x00168C 00:D67C: 25 01     AND ram_0001_t01_attribute_mask
C - - - - - 0x00168E 00:D67E: 05 02     ORA ram_0002_t01_attribute
C - - - - - 0x001690 00:D680: 99 C0 07  STA ram_07C0_nmt_attr_buffer,Y
C - - - - - 0x001693 00:D683: 60        RTS



sub_D684:
; in
    ; A = 
; out
    ; A = 
; bzk optimize
; * 04
C - - - - - 0x001694 00:D684: 0A        ASL
C - - - - - 0x001695 00:D685: 0A        ASL
C - - - - - 0x001696 00:D686: 05 04     ORA ram_0004_t02_nametable_attribute
C - - - - - 0x001698 00:D688: 60        RTS



sub_D689_read_joy_regs:
C - - - - - 0x001699 00:D689: A2 01     LDX #$01
C - - - - - 0x00169B 00:D68B: 8E 16 40  STX $4016
C - - - - - 0x00169E 00:D68E: A0 00     LDY #$00
C - - - - - 0x0016A0 00:D690: 8C 16 40  STY $4016
bra_D693_loop:  ; Y = 00
C - - - - - 0x0016A3 00:D693: 84 00     STY ram_0000_t15
C - - - - - 0x0016A5 00:D695: A0 08     LDY #$08
bra_D697_loop:
C - - - - - 0x0016A7 00:D697: BD 16 40  LDA $4016,X
C - - - - - 0x0016AA 00:D69A: 29 03     AND #$03
C - - - - - 0x0016AC 00:D69C: C9 01     CMP #$01
C - - - - - 0x0016AE 00:D69E: 66 00     ROR ram_0000_t15
C - - - - - 0x0016B0 00:D6A0: 88        DEY
C - - - - - 0x0016B1 00:D6A1: D0 F4     BNE bra_D697_loop
C - - - - - 0x0016B3 00:D6A3: B5 06     LDA ram_btn_hold,X
C - - - - - 0x0016B5 00:D6A5: 49 FF     EOR #$FF
C - - - - - 0x0016B7 00:D6A7: 25 00     AND ram_0000_t15
C - - - - - 0x0016B9 00:D6A9: 95 08     STA ram_btn_press,X
C - - - - - 0x0016BB 00:D6AB: A5 00     LDA ram_0000_t15
C - - - - - 0x0016BD 00:D6AD: 95 06     STA ram_btn_hold,X
C - - - - - 0x0016BF 00:D6AF: CA        DEX
C - - - - - 0x0016C0 00:D6B0: 10 E1     BPL bra_D693_loop
C - - - - - 0x0016C2 00:D6B2: 60        RTS



sub_D6B3_fill_buffer_with_tiles:
; in
    ; X = 
    ; Y = 
    ; ram_offset_for_2006_hi
    ; ram_0011_t02_ppu_data
; bzk optimize, instead if JSR at 0x0016C3,
; prepare proper values in A and Y beforehand
C - - - - - 0x0016C3 00:D6B3: 20 FB D5  JSR sub_D5FB_calculate_pointer
C - - - - - 0x0016C6 00:D6B6: 85 14     STA ram_0013_t01_data + $01
C - - - - - 0x0016C8 00:D6B8: 18        CLC
C - - - - - 0x0016C9 00:D6B9: 65 05     ADC ram_offset_for_2006_hi
C - - - - - 0x0016CB 00:D6BB: A6 0C     LDX ram_buffer_index
C - - - - - 0x0016CD 00:D6BD: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x0016D0 00:D6C0: E8        INX
C - - - - - 0x0016D1 00:D6C1: 98        TYA
C - - - - - 0x0016D2 00:D6C2: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x0016D5 00:D6C5: E8        INX
C - - - - - 0x0016D6 00:D6C6: 85 13     STA ram_0013_t01_data
C - - - - - 0x0016D8 00:D6C8: A0 00     LDY #$00
loc_D6CA_loop:
C D 2 - - - 0x0016DA 00:D6CA: B1 11     LDA (ram_0011_t02_ppu_data),Y
C - - - - - 0x0016DC 00:D6CC: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x0016DF 00:D6CF: E8        INX
C - - - - - 0x0016E0 00:D6D0: C9 FF     CMP #$FF    ; end token
C - - - - - 0x0016E2 00:D6D2: F0 06     BEQ bra_D6DA
C - - - - - 0x0016E4 00:D6D4: 91 13     STA (ram_0013_t01_data),Y
C - - - - - 0x0016E6 00:D6D6: C8        INY
C - - - - - 0x0016E7 00:D6D7: 4C CA D6  JMP loc_D6CA_loop
bra_D6DA:
C - - - - - 0x0016EA 00:D6DA: 86 0C     STX ram_buffer_index
C - - - - - 0x0016EC 00:D6DC: 60        RTS



sub_D6DD:
; in
    ; X = 
    ; Y = ppu pos_Y
    ; ram_offset_for_2006_hi
C - - - - - 0x0016ED 00:D6DD: 20 FB D5  JSR sub_D5FB_calculate_pointer
C - - - - - 0x0016F0 00:D6E0: 18        CLC
C - - - - - 0x0016F1 00:D6E1: 65 05     ADC ram_offset_for_2006_hi
C - - - - - 0x0016F3 00:D6E3: A6 0C     LDX ram_buffer_index
C - - - - - 0x0016F5 00:D6E5: 9D 80 01  STA ram_ppu_buffer,X    ; ppu hi
C - - - - - 0x0016F8 00:D6E8: E8        INX
C - - - - - 0x0016F9 00:D6E9: 98        TYA
C - - - - - 0x0016FA 00:D6EA: 9D 80 01  STA ram_ppu_buffer,X    ; ppu lo
C - - - - - 0x0016FD 00:D6ED: E8        INX
C - - - - - 0x0016FE 00:D6EE: A0 00     LDY #$00
loc_D6F0_loop:
C D 2 - - - 0x001700 00:D6F0: B1 11     LDA (ram_0011_t12_data),Y
C - - - - - 0x001702 00:D6F2: 30 03     BMI bra_D6F7
C - - - - - 0x001704 00:D6F4: 18        CLC
C - - - - - 0x001705 00:D6F5: 65 60     ADC ram_0060_tile_id_offset
bra_D6F7:
C - - - - - 0x001707 00:D6F7: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x00170A 00:D6FA: E8        INX
C - - - - - 0x00170B 00:D6FB: C9 FF     CMP #$FF
C - - - - - 0x00170D 00:D6FD: F0 04     BEQ bra_D703_FF
C - - - - - 0x00170F 00:D6FF: C8        INY
C - - - - - 0x001710 00:D700: 4C F0 D6  JMP loc_D6F0_loop
bra_D703_FF:
C - - - - - 0x001713 00:D703: 86 0C     STX ram_buffer_index
C - - - - - 0x001715 00:D705: 60        RTS



sub_D706_divide_by_08_and_calculate_pointer:
; out
    ; ram_0011_t14_data
C - - - - - 0x001716 00:D706: 20 13 D7  JSR sub_D713_divide_XY_by_08
sub_D709_calculate_pointer:
; out
    ; ram_0011_t14_data
C - - - - - 0x001719 00:D709: 20 FB D5  JSR sub_D5FB_calculate_pointer
C - - - - - 0x00171C 00:D70C: 85 12     STA ram_0011_t14_data + $01
C - - - - - 0x00171E 00:D70E: 84 11     STY ram_0011_t14_data
C - - - - - 0x001720 00:D710: A0 00     LDY #$00
C - - - - - 0x001722 00:D712: 60        RTS



sub_D713_divide_XY_by_08:
C - - - - - 0x001723 00:D713: 98        TYA
; / 08
C - - - - - 0x001724 00:D714: 4A        LSR
C - - - - - 0x001725 00:D715: 4A        LSR
C - - - - - 0x001726 00:D716: 4A        LSR
C - - - - - 0x001727 00:D717: A8        TAY
C - - - - - 0x001728 00:D718: 8A        TXA
; / 08
C - - - - - 0x001729 00:D719: 4A        LSR
C - - - - - 0x00172A 00:D71A: 4A        LSR
C - - - - - 0x00172B 00:D71B: 4A        LSR
C - - - - - 0x00172C 00:D71C: AA        TAX
C - - - - - 0x00172D 00:D71D: 60        RTS



sub_D71E:
; in
    ; X = 
    ; Y = 
; out
    ; ram_0000_t03
C - - - - - 0x00172E 00:D71E: 86 47     STX ram_0047_t02_pos_X
C - - - - - 0x001730 00:D720: 84 48     STY ram_0048_t02_pos_Y
C - - - - - 0x001732 00:D722: 20 06 D7  JSR sub_D706_divide_by_08_and_calculate_pointer
sub_D725:
; in
    ; ram_0047_t02_pos_X
    ; ram_0048_t02_pos_Y
; out
    ; ram_0000_t03
C - - - - - 0x001735 00:D725: A9 01     LDA #$01
C - - - - - 0x001737 00:D727: 85 00     STA ram_0000_t03
C - - - - - 0x001739 00:D729: A5 48     LDA ram_0048_t02_pos_Y
C - - - - - 0x00173B 00:D72B: 29 04     AND #$04
C - - - - - 0x00173D 00:D72D: F0 04     BEQ bra_D733
C - - - - - 0x00173F 00:D72F: 06 00     ASL ram_0000_t03
C - - - - - 0x001741 00:D731: 06 00     ASL ram_0000_t03    ; -> 04
bra_D733:
C - - - - - 0x001743 00:D733: A5 47     LDA ram_0047_t02_pos_X
C - - - - - 0x001745 00:D735: 29 04     AND #$04
C - - - - - 0x001747 00:D737: F0 02     BEQ bra_D73B_RTS
C - - - - - 0x001749 00:D739: 06 00     ASL ram_0000_t03    ; -> 02/08
bra_D73B_RTS:
C - - - - - 0x00174B 00:D73B: 60        RTS



sub_D73C:
; bzk optimize, single JSR to here
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x00174C 00:D73C: A5 00     LDA ram_0000_t03
C - - - - - 0x00174E 00:D73E: 09 F0     ORA #$F0
C - - - - - 0x001750 00:D740: 31 11     AND (ram_0011_t14_data),Y
C - - - - - 0x001752 00:D742: 60        RTS



sub_D743:
; bzk optimize, single JSR to here
C - - - - - 0x001753 00:D743: A5 00     LDA ram_0000_t03
C - - - - - 0x001755 00:D745: 49 FF     EOR #$FF
C - - - - - 0x001757 00:D747: 31 11     AND (ram_0011_t14_data),Y
; bzk optimize, JMP
C - - - - - 0x001759 00:D749: 20 84 D7  JSR sub_D784_write_tile_to_buffer
C - - - - - 0x00175C 00:D74C: 60        RTS



sub_D74D:
C - - - - - 0x00175D 00:D74D: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x00175F 00:D74F: 29 F0     AND #$F0
C - - - - - 0x001761 00:D751: D0 08     BNE bra_D75B_RTS
C - - - - - 0x001763 00:D753: A5 00     LDA ram_0000_t03
C - - - - - 0x001765 00:D755: 49 FF     EOR #$FF
C - - - - - 0x001767 00:D757: 31 11     AND (ram_0011_t14_data),Y
C - - - - - 0x001769 00:D759: 91 11     STA (ram_0011_t14_data),Y
bra_D75B_RTS:
C - - - - - 0x00176B 00:D75B: 60        RTS


; bzk garbage
- - - - - - 0x00176C 00:D75C: A5 00     LDA ram_0000_t03
- - - - - - 0x00176E 00:D75E: 11 11     ORA (ram_0011_t14_data),Y
; bzk optimize, JMP
- - - - - - 0x001770 00:D760: 20 84 D7  JSR sub_D784_write_tile_to_buffer
- - - - - - 0x001773 00:D763: 60        RTS



sub_D764:
; bzk optimize, is this subroutine doing anything useful?
C - - - - - 0x001774 00:D764: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x001776 00:D766: 29 F0     AND #$F0
C - - - - - 0x001778 00:D768: D0 06     BNE bra_D770_RTS
C - - - - - 0x00177A 00:D76A: A5 00     LDA ram_0000_t03
C - - - - - 0x00177C 00:D76C: 11 11     ORA (ram_0011_t14_data),Y
C - - - - - 0x00177E 00:D76E: 91 11     STA (ram_0011_t14_data),Y
bra_D770_RTS:
C - - - - - 0x001780 00:D770: 60        RTS



sub_D771_write_to_ppu:
; in
    ; ram_offset_for_2006_hi
; bzk optimize, single JSR to here
C - - - - - 0x001781 00:D771: A5 12     LDA ram_0011_t11_stage_data + $01
C - - - - - 0x001783 00:D773: 18        CLC
C - - - - - 0x001784 00:D774: 65 05     ADC ram_offset_for_2006_hi
C - - - - - 0x001786 00:D776: 8D 06 20  STA $2006
C - - - - - 0x001789 00:D779: A5 11     LDA ram_0011_t11_stage_data
C - - - - - 0x00178B 00:D77B: 8D 06 20  STA $2006
C - - - - - 0x00178E 00:D77E: B1 11     LDA (ram_0011_t11_stage_data),Y
C - - - - - 0x001790 00:D780: 8D 07 20  STA $2007
C - - - - - 0x001793 00:D783: 60        RTS



sub_D784_write_tile_to_buffer:
; in
    ; A = 
; save tile ID
C - - - - - 0x001794 00:D784: 91 11     STA (ram_0011_t14_data),Y
; 
C - - - - - 0x001796 00:D786: 86 47     STX ram_0047_t03_save_X
C - - - - - 0x001798 00:D788: A6 0C     LDX ram_buffer_index
; calculate corresponding ppu address
C - - - - - 0x00179A 00:D78A: A5 12     LDA ram_0011_t14_data + $01
C - - - - - 0x00179C 00:D78C: 18        CLC
C - - - - - 0x00179D 00:D78D: 69 1C     ADC #con_ppu_offset_2000
C - - - - - 0x00179F 00:D78F: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x0017A2 00:D792: E8        INX
C - - - - - 0x0017A3 00:D793: A5 11     LDA ram_0011_t14_data
C - - - - - 0x0017A5 00:D795: 9D 80 01  STA ram_ppu_buffer,X
; copy tile to buffer
C - - - - - 0x0017A8 00:D798: E8        INX
; bzk optimize, use PHA before 0x001796 + PLA instead of LDA here
C - - - - - 0x0017A9 00:D799: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0017AB 00:D79B: 9D 80 01  STA ram_ppu_buffer,X
; close buffer
C - - - - - 0x0017AE 00:D79E: E8        INX
C - - - - - 0x0017AF 00:D79F: A9 FF     LDA #$FF
C - - - - - 0x0017B1 00:D7A1: 9D 80 01  STA ram_ppu_buffer,X
; save buffer index
C - - - - - 0x0017B4 00:D7A4: E8        INX
C - - - - - 0x0017B5 00:D7A5: 86 0C     STX ram_buffer_index
; 
C - - - - - 0x0017B7 00:D7A7: A6 47     LDX ram_0047_t03_save_X
C - - - - - 0x0017B9 00:D7A9: 60        RTS



sub_D7AA_increase_16bit_0011_by_A:
; in
    ; A = increase amount
; ram_0011_t11_stage_data
; ram_0011_t13_stage_field_data
; ram_0011_t14_data
; ram_0011_t17_ppu_lo, ram_0012_t01_ppu_hi
; ram_0011_t16_stage_data
; ram_0011_t18_ppu_lo, ram_0012_t02_ppu_hi
C - - - - - 0x0017BA 00:D7AA: 18        CLC
C - - - - - 0x0017BB 00:D7AB: 65 11     ADC ram_0011_temp
C - - - - - 0x0017BD 00:D7AD: 85 11     STA ram_0011_temp
C - - - - - 0x0017BF 00:D7AF: 90 02     BCC bra_D7B3_RTS
; if overflow
C - - - - - 0x0017C1 00:D7B1: E6 12     INC ram_0012_temp
bra_D7B3_RTS:
C - - - - - 0x0017C3 00:D7B3: 60        RTS



sub_D7B4_copy_400h_to_nametable:
; copy 0400-07FF to 2000-23FF/2800-2BFF
C - - - - - 0x0017C4 00:D7B4: A9 00     LDA #< ram_stage_data
C - - - - - 0x0017C6 00:D7B6: 85 11     STA ram_0011_t11_stage_data
C - - - - - 0x0017C8 00:D7B8: A8        TAY ; 00
C - - - - - 0x0017C9 00:D7B9: A9 04     LDA #> ram_stage_data
C - - - - - 0x0017CB 00:D7BB: 85 12     STA ram_0011_t11_stage_data + $01
bra_D7BD_loop:
; 0400-07FF
C - - - - - 0x0017CD 00:D7BD: 20 71 D7  JSR sub_D771_write_to_ppu
C - - - - - 0x0017D0 00:D7C0: A9 01     LDA #$01
; bzk optimize, INC 0011 + BNE + INC 0012
; combination will be faster than JSR
C - - - - - 0x0017D2 00:D7C2: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x0017D5 00:D7C5: A5 12     LDA ram_0011_t11_stage_data + $01
C - - - - - 0x0017D7 00:D7C7: C9 08     CMP #> $0800    ; copy to ppu until 0800
C - - - - - 0x0017D9 00:D7C9: D0 F2     BNE bra_D7BD_loop
C - - - - - 0x0017DB 00:D7CB: 60        RTS



sub_D7CC_create_default_stage_field:
; in
    ; ram_0056_t05_useless_02
    ; ram_0057_t07_useless_02
    ; ram_005A_t23_loop_counter
    ; ram_005B_t05_useless_1A
; bzk optimize, single JSR to here
; fill all stage will undestructable grey tile
C - - - - - 0x0017DC 00:D7CC: A2 00     LDX #$00
C - - - - - 0x0017DE 00:D7CE: A9 11     LDA #$11
bra_D7D0_loop:
C - - - - - 0x0017E0 00:D7D0: 9D 00 04  STA ram_stage_data,X
C - - - - - 0x0017E3 00:D7D3: 9D 00 05  STA ram_stage_data + $100,X
C - - - - - 0x0017E6 00:D7D6: 9D 00 06  STA ram_stage_data + $200,X
C - - - - - 0x0017E9 00:D7D9: 9D 00 07  STA ram_stage_data + $300,X
C - - - - - 0x0017EC 00:D7DC: E8        INX
C - - - - - 0x0017ED 00:D7DD: D0 F1     BNE bra_D7D0_loop
; clear nametable
C - - - - - 0x0017EF 00:D7DF: A9 00     LDA #$00
C - - - - - 0x0017F1 00:D7E1: A2 C0     LDX #$C0
bra_D7E3_loop:
; clear 07C0-07FF
C - - - - - 0x0017F3 00:D7E3: 9D 00 07  STA ram_07C0_nmt_attr_buffer - $C0,X
C - - - - - 0x0017F6 00:D7E6: E8        INX
C - - - - - 0x0017F7 00:D7E7: D0 FA     BNE bra_D7E3_loop
; 0442
; bzk optimize, alwasys 02
C - - - - - 0x0017F9 00:D7E9: A6 56     LDX ram_0056_t05_useless_02
; bzk optimize, alwasys 02
C - - - - - 0x0017FB 00:D7EB: A4 57     LDY ram_0057_t07_useless_02
C - - - - - 0x0017FD 00:D7ED: 20 FB D5  JSR sub_D5FB_calculate_pointer
C - - - - - 0x001800 00:D7F0: 85 12     STA ram_0011_t13_stage_field_data + $01
C - - - - - 0x001802 00:D7F2: 84 11     STY ram_0011_t13_stage_field_data
loc_D7F4_loop:
; clear 26x26 grid (decimal)
; bzk optimize, alwasys 1A
C D 2 - - - 0x001804 00:D7F4: A4 5B     LDY ram_005B_t05_useless_1A
C - - - - - 0x001806 00:D7F6: 88        DEY
bra_D7F7_loop:
C - - - - - 0x001807 00:D7F7: A9 00     LDA #$00
C - - - - - 0x001809 00:D7F9: 91 11     STA (ram_0011_t13_stage_field_data),Y
C - - - - - 0x00180B 00:D7FB: 88        DEY
C - - - - - 0x00180C 00:D7FC: 10 F9     BPL bra_D7F7_loop
C - - - - - 0x00180E 00:D7FE: C6 5A     DEC ram_005A_t23_loop_counter
C - - - - - 0x001810 00:D800: F0 08     BEQ bra_D80A_RTS
; go to next line
C - - - - - 0x001812 00:D802: A9 20     LDA #$20
C - - - - - 0x001814 00:D804: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x001817 00:D807: 4C F4 D7  JMP loc_D7F4_loop
bra_D80A_RTS:
C - - - - - 0x00181A 00:D80A: 60        RTS



sub_D80B_write_block_tiles_and_attribute_to_buffer:
; in
    ; A = tile id
    ; X = pos_X
    ; Y = pos_Y
; write 2x2 tiles to buffer
C - - - - - 0x00181B 00:D80B: 48        PHA ; tile id
C - - - - - 0x00181C 00:D80C: 85 00     STA ram_0000_t16_tile_id
C - - - - - 0x00181E 00:D80E: 20 13 D7  JSR sub_D713_divide_XY_by_08
C - - - - - 0x001821 00:D811: 86 47     STX ram_0047_t01_pos_X
C - - - - - 0x001823 00:D813: 84 48     STY ram_0048_t01_pos_Y
; 
C - - - - - 0x001825 00:D815: A4 00     LDY ram_0000_t16_tile_id
C - - - - - 0x001827 00:D817: B9 BB DA  LDA tbl_DABB_nametable_attribute,Y
C - - - - - 0x00182A 00:D81A: 85 04     STA ram_0004_t02_nametable_attribute
C - - - - - 0x00182C 00:D81C: A4 48     LDY ram_0048_t01_pos_Y
C - - - - - 0x00182E 00:D81E: 20 12 D6  JSR sub_D612_write_nametable_attribute_to_ppu
; 
C - - - - - 0x001831 00:D821: A5 48     LDA ram_0048_t01_pos_Y
C - - - - - 0x001833 00:D823: 29 FE     AND #$FE
C - - - - - 0x001835 00:D825: A8        TAY
C - - - - - 0x001836 00:D826: A5 47     LDA ram_0047_t01_pos_X
C - - - - - 0x001838 00:D828: 29 FE     AND #$FE
C - - - - - 0x00183A 00:D82A: AA        TAX
C - - - - - 0x00183B 00:D82B: 20 09 D7  JSR sub_D709_calculate_pointer
C - - - - - 0x00183E 00:D82E: 68        PLA ; tile id
; * 04
C - - - - - 0x00183F 00:D82F: 0A        ASL
C - - - - - 0x001840 00:D830: 0A        ASL
C - - - - - 0x001841 00:D831: AA        TAX
C - - - - - 0x001842 00:D832: BD CB DA  LDA tbl_DACB_block_data,X
C - - - - - 0x001845 00:D835: E8        INX
C - - - - - 0x001846 00:D836: 20 84 D7  JSR sub_D784_write_tile_to_buffer
; bzk optimize, INC 0011 + BNE + INC 0012
; combination will be faster than JSR
C - - - - - 0x001849 00:D839: A9 01     LDA #$01
C - - - - - 0x00184B 00:D83B: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x00184E 00:D83E: BD CB DA  LDA tbl_DACB_block_data,X
C - - - - - 0x001851 00:D841: E8        INX
C - - - - - 0x001852 00:D842: 20 84 D7  JSR sub_D784_write_tile_to_buffer
C - - - - - 0x001855 00:D845: A9 1F     LDA #$1F
C - - - - - 0x001857 00:D847: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x00185A 00:D84A: BD CB DA  LDA tbl_DACB_block_data,X
C - - - - - 0x00185D 00:D84D: E8        INX
C - - - - - 0x00185E 00:D84E: 20 84 D7  JSR sub_D784_write_tile_to_buffer
; bzk optimize, INC 0011 + BNE + INC 0012
; combination will be faster than JSR
C - - - - - 0x001861 00:D851: A9 01     LDA #$01
C - - - - - 0x001863 00:D853: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x001866 00:D856: BD CB DA  LDA tbl_DACB_block_data,X
C - - - - - 0x001869 00:D859: E8        INX
; bzk optimize, JMP
C - - - - - 0x00186A 00:D85A: 20 84 D7  JSR sub_D784_write_tile_to_buffer
C - - - - - 0x00186D 00:D85D: 60        RTS



sub_D85E_draw_huge_letter:
; in
    ; X = 
    ; Y = 
C - - - - - 0x00186E 00:D85E: 86 5D     STX ram_005D_t01
C - - - - - 0x001870 00:D860: AA        TAX
C - - - - - 0x001871 00:D861: 98        TYA
C - - - - - 0x001872 00:D862: 18        CLC
C - - - - - 0x001873 00:D863: 69 20     ADC #$20
C - - - - - 0x001875 00:D865: 85 5E     STA ram_005E_t01
C - - - - - 0x001877 00:D867: A9 00     LDA #< $1000
C - - - - - 0x001879 00:D869: 85 11     STA ram_0011_t17_ppu_lo
C - - - - - 0x00187B 00:D86B: A9 10     LDA #> $1000
C - - - - - 0x00187D 00:D86D: 85 12     STA ram_0012_t01_ppu_hi
loc_D86F_loop:
C D 2 - - - 0x00187F 00:D86F: CA        DEX
C - - - - - 0x001880 00:D870: 30 08     BMI bra_D87A
C - - - - - 0x001882 00:D872: A9 10     LDA #$10
C - - - - - 0x001884 00:D874: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x001887 00:D877: 4C 6F D8  JMP loc_D86F_loop
bra_D87A:
C - - - - - 0x00188A 00:D87A: A5 12     LDA ram_0012_t01_ppu_hi
C - - - - - 0x00188C 00:D87C: 8D 06 20  STA $2006
C - - - - - 0x00188F 00:D87F: A5 11     LDA ram_0011_t17_ppu_lo
C - - - - - 0x001891 00:D881: 8D 06 20  STA $2006
C - - - - - 0x001894 00:D884: AD 07 20  LDA $2007
; reading ppu for some reason, probably to get tile
; info to display corresponding large text bricks
C - - - - - 0x001897 00:D887: A9 08     LDA #$08
C - - - - - 0x001899 00:D889: 85 5A     STA ram_005A_t02_tiles_counter
bra_D88B_loop:
C - - - - - 0x00189B 00:D88B: AD 07 20  LDA $2007
C - - - - - 0x00189E 00:D88E: 48        PHA
C - - - - - 0x00189F 00:D88F: C6 5A     DEC ram_005A_t02_tiles_counter
C - - - - - 0x0018A1 00:D891: D0 F8     BNE bra_D88B_loop
C - - - - - 0x0018A3 00:D893: A9 08     LDA #$08
C - - - - - 0x0018A5 00:D895: 85 5A     STA ram_005A_t01_tiles_counter
bra_D897_loop:
C - - - - - 0x0018A7 00:D897: 68        PLA
C - - - - - 0x0018A8 00:D898: 85 02     STA ram_0002_t02
C - - - - - 0x0018AA 00:D89A: A9 80     LDA #$80
C - - - - - 0x0018AC 00:D89C: 85 03     STA ram_0003_t01
bra_D89E_loop:
C - - - - - 0x0018AE 00:D89E: A6 5D     LDX ram_005D_t01
C - - - - - 0x0018B0 00:D8A0: A4 5E     LDY ram_005E_t01
C - - - - - 0x0018B2 00:D8A2: 20 1E D7  JSR sub_D71E
C - - - - - 0x0018B5 00:D8A5: A5 02     LDA ram_0002_t02
C - - - - - 0x0018B7 00:D8A7: 25 03     AND ram_0003_t01
C - - - - - 0x0018B9 00:D8A9: F0 06     BEQ bra_D8B1
C - - - - - 0x0018BB 00:D8AB: 20 64 D7  JSR sub_D764
C - - - - - 0x0018BE 00:D8AE: 4C B4 D8  JMP loc_D8B4
bra_D8B1:
C - - - - - 0x0018C1 00:D8B1: 20 4D D7  JSR sub_D74D
loc_D8B4:
C D 2 - - - 0x0018C4 00:D8B4: A5 5D     LDA ram_005D_t01
C - - - - - 0x0018C6 00:D8B6: 18        CLC
C - - - - - 0x0018C7 00:D8B7: 69 04     ADC #$04
C - - - - - 0x0018C9 00:D8B9: 85 5D     STA ram_005D_t01
C - - - - - 0x0018CB 00:D8BB: 46 03     LSR ram_0003_t01
C - - - - - 0x0018CD 00:D8BD: 90 DF     BCC bra_D89E_loop
C - - - - - 0x0018CF 00:D8BF: A5 5D     LDA ram_005D_t01
C - - - - - 0x0018D1 00:D8C1: 38        SEC
C - - - - - 0x0018D2 00:D8C2: E9 20     SBC #$20
C - - - - - 0x0018D4 00:D8C4: 85 5D     STA ram_005D_t01
C - - - - - 0x0018D6 00:D8C6: A5 5E     LDA ram_005E_t01
C - - - - - 0x0018D8 00:D8C8: 38        SEC
C - - - - - 0x0018D9 00:D8C9: E9 04     SBC #$04
C - - - - - 0x0018DB 00:D8CB: 85 5E     STA ram_005E_t01
C - - - - - 0x0018DD 00:D8CD: C6 5A     DEC ram_005A_t01_tiles_counter
C - - - - - 0x0018DF 00:D8CF: D0 C6     BNE bra_D897_loop
C - - - - - 0x0018E1 00:D8D1: 60        RTS



sub_D8D2_draw_huge_letters:
; in
    ; ram_0056_t02_pos_X_letter
    ; ram_0057_t02_pos_Y_letter
C - - - - - 0x0018E2 00:D8D2: A0 00     LDY #$00
C - - - - - 0x0018E4 00:D8D4: 84 5F     STY ram_005F_t01_huge_text_data_index
loc_D8D6_loop:
C D 2 - - - 0x0018E6 00:D8D6: B1 13     LDA (ram_0013_t02_huge_text_data),Y
C - - - - - 0x0018E8 00:D8D8: C9 FF     CMP #$FF
C - - - - - 0x0018EA 00:D8DA: F0 19     BEQ bra_D8F5_RTS
C - - - - - 0x0018EC 00:D8DC: C8        INY
C - - - - - 0x0018ED 00:D8DD: 84 5F     STY ram_005F_t01_huge_text_data_index
C - - - - - 0x0018EF 00:D8DF: A6 56     LDX ram_0056_t02_pos_X_letter
C - - - - - 0x0018F1 00:D8E1: A4 57     LDY ram_0057_t02_pos_Y_letter
C - - - - - 0x0018F3 00:D8E3: 18        CLC
C - - - - - 0x0018F4 00:D8E4: 65 60     ADC ram_0060_tile_id_offset
C - - - - - 0x0018F6 00:D8E6: 20 5E D8  JSR sub_D85E_draw_huge_letter
C - - - - - 0x0018F9 00:D8E9: A5 56     LDA ram_0056_t02_pos_X_letter
C - - - - - 0x0018FB 00:D8EB: 18        CLC
C - - - - - 0x0018FC 00:D8EC: 69 20     ADC #$20
C - - - - - 0x0018FE 00:D8EE: 85 56     STA ram_0056_t02_pos_X_letter
C - - - - - 0x001900 00:D8F0: A4 5F     LDY ram_005F_t01_huge_text_data_index
; bzk optimize, BNE (jmp)
C - - - - - 0x001902 00:D8F2: 4C D6 D8  JMP loc_D8D6_loop
bra_D8F5_RTS:
C - - - - - 0x001905 00:D8F5: 60        RTS



sub_D8F6_wait_1_frm:
; wait 1 frame
C - - - - - 0x001906 00:D8F6: A5 0B     LDA ram_frm_cnt_lo
bra_D8F8_infinite_loop:
C - - - - - 0x001908 00:D8F8: C5 0B     CMP ram_frm_cnt_lo
C - - - - - 0x00190A 00:D8FA: F0 FC     BEQ bra_D8F8_infinite_loop
C - - - - - 0x00190C 00:D8FC: 60        RTS



sub_D8FD_write_buffer_to_ppu:
C - - - - - 0x00190D 00:D8FD: A6 0C     LDX ram_buffer_index
C - - - - - 0x00190F 00:D8FF: A9 00     LDA #$00    ; close buffer
C - - - - - 0x001911 00:D901: 9D 80 01  STA ram_ppu_buffer,X
C - - - - - 0x001914 00:D904: AA        TAX ; 00
bra_D905_loop:
C - - - - - 0x001915 00:D905: E4 0C     CPX ram_buffer_index
C - - - - - 0x001917 00:D907: F0 26     BEQ bra_D92F
C - - - - - 0x001919 00:D909: BD 80 01  LDA ram_ppu_buffer,X
C - - - - - 0x00191C 00:D90C: E8        INX
C - - - - - 0x00191D 00:D90D: 8D 06 20  STA $2006
C - - - - - 0x001920 00:D910: BD 80 01  LDA ram_ppu_buffer,X
C - - - - - 0x001923 00:D913: E8        INX
C - - - - - 0x001924 00:D914: 8D 06 20  STA $2006
loc_D917_loop:
C D 2 - - - 0x001927 00:D917: BD 80 01  LDA ram_ppu_buffer,X
C - - - - - 0x00192A 00:D91A: E8        INX
C - - - - - 0x00192B 00:D91B: C9 FF     CMP #$FF
C - - - - - 0x00192D 00:D91D: D0 0A     BNE bra_D929
; FF
C - - - - - 0x00192F 00:D91F: BD 80 01  LDA ram_ppu_buffer,X
C - - - - - 0x001932 00:D922: C9 FF     CMP #$FF
C - - - - - 0x001934 00:D924: D0 DF     BNE bra_D905_loop
; FF
C - - - - - 0x001936 00:D926: BD 7F 01  LDA ram_ppu_buffer - $01,X
bra_D929:
C - - - - - 0x001939 00:D929: 8D 07 20  STA $2007
C - - - - - 0x00193C 00:D92C: 4C 17 D9  JMP loc_D917_loop
bra_D92F:
C - - - - - 0x00193F 00:D92F: A9 00     LDA #$00
C - - - - - 0x001941 00:D931: 85 0C     STA ram_buffer_index
C - - - - - 0x001943 00:D933: 60        RTS



sub_D934_calculate_padding_for_number:
; skip zeros, which a number has on the left.
    ; for example, if we have a decimal number 035,
    ; skip the 1st zero and start printing number from 2nd digit
; in
    ; X = default ppu pos_X
    ; Y = default data index
; out
    ; X = final ppu pos_X
    ; Y = final data index
loc_D934_loop:
; check for zeros a number has on the left
C D 2 - - - 0x001944 00:D934: B9 00 00  LDA $00,Y
C - - - - - 0x001947 00:D937: D0 05     BNE bra_D93E
; if zero digit
C - - - - - 0x001949 00:D939: C8        INY
C - - - - - 0x00194A 00:D93A: E8        INX
; bzk optimize, BNE
C - - - - - 0x00194B 00:D93B: 4C 34 D9  JMP loc_D934_loop
bra_D93E:
; check for end token, (for example, it is set at 0x001A1E)
C - - - - - 0x00194E 00:D93E: C9 FF     CMP #$FF
C - - - - - 0x001950 00:D940: D0 08     BNE bra_D94A
; FF
C - - - - - 0x001952 00:D942: A5 6B     LDA ram_006B_flag
C - - - - - 0x001954 00:D944: D0 02     BNE bra_D948
C - - - - - 0x001956 00:D946: CA        DEX
C - - - - - 0x001957 00:D947: 88        DEY
bra_D948:
C - - - - - 0x001958 00:D948: CA        DEX
C - - - - - 0x001959 00:D949: 88        DEY
bra_D94A:
C - - - - - 0x00195A 00:D94A: A9 00     LDA #$00
C - - - - - 0x00195C 00:D94C: 85 12     STA ram_0011_t12_data + $01
C - - - - - 0x00195E 00:D94E: 84 11     STY ram_0011_t12_data
C - - - - - 0x001960 00:D950: 60        RTS



sub_D951_draw_huge_hiscore:
C - - - - - 0x001961 00:D951: A9 10     LDA #$10
C - - - - - 0x001963 00:D953: 85 56     STA ram_0056_t02_pos_X_letter
C - - - - - 0x001965 00:D955: A9 64     LDA #$64
C - - - - - 0x001967 00:D957: 85 57     STA ram_0057_t02_pos_Y_letter
C - - - - - 0x001969 00:D959: A9 30     LDA #$30
C - - - - - 0x00196B 00:D95B: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x00196D 00:D95D: A0 3D     LDY #$3D
loc_D95F_loop:
C D 2 - - - 0x00196F 00:D95F: B9 00 00  LDA ram_hi_score - $3D,Y
C - - - - - 0x001972 00:D962: D0 0B     BNE bra_D96F
C - - - - - 0x001974 00:D964: C8        INY
C - - - - - 0x001975 00:D965: A5 56     LDA ram_0056_t02_pos_X_letter
C - - - - - 0x001977 00:D967: 18        CLC
C - - - - - 0x001978 00:D968: 69 20     ADC #$20
C - - - - - 0x00197A 00:D96A: 85 56     STA ram_0056_t02_pos_X_letter
C - - - - - 0x00197C 00:D96C: 4C 5F D9  JMP loc_D95F_loop
bra_D96F:
C - - - - - 0x00197F 00:D96F: A9 00     LDA #$00
C - - - - - 0x001981 00:D971: 85 14     STA ram_0013_t02_huge_text_data + $01
C - - - - - 0x001983 00:D973: 84 13     STY ram_0013_t02_huge_text_data
C - - - - - 0x001985 00:D975: 20 D2 D8  JSR sub_D8D2_draw_huge_letters
C - - - - - 0x001988 00:D978: A9 00     LDA #$00
C - - - - - 0x00198A 00:D97A: 85 60     STA ram_0060_tile_id_offset
C - - - - - 0x00198C 00:D97C: 60        RTS



sub_D97D_check_hiscore_beaten:
C - - - - - 0x00198D 00:D97D: A2 00     LDX #$00
C - - - - - 0x00198F 00:D97F: A0 00     LDY #$00
loc_D981_loop:
C D 2 - - - 0x001991 00:D981: B5 15     LDA ram_p1_score,X
C - - - - - 0x001993 00:D983: D5 3D     CMP ram_hi_score,X
C - - - - - 0x001995 00:D985: D0 08     BNE bra_D98F
C - - - - - 0x001997 00:D987: E8        INX
C - - - - - 0x001998 00:D988: E0 07     CPX #$07
C - - - - - 0x00199A 00:D98A: F0 12     BEQ bra_D99E
C - - - - - 0x00199C 00:D98C: 4C 81 D9  JMP loc_D981_loop
bra_D98F:
C - - - - - 0x00199F 00:D98F: 30 0D     BMI bra_D99E
C - - - - - 0x0019A1 00:D991: A2 00     LDX #$00
bra_D993_loop:
C - - - - - 0x0019A3 00:D993: B5 15     LDA ram_p1_score,X
C - - - - - 0x0019A5 00:D995: 95 3D     STA ram_hi_score,X
C - - - - - 0x0019A7 00:D997: E8        INX
C - - - - - 0x0019A8 00:D998: E0 07     CPX #$07
C - - - - - 0x0019AA 00:D99A: D0 F7     BNE bra_D993_loop
C - - - - - 0x0019AC 00:D99C: A0 01     LDY #$01
bra_D99E:
C - - - - - 0x0019AE 00:D99E: A2 00     LDX #$00
loc_D9A0_loop:
C D 2 - - - 0x0019B0 00:D9A0: B5 1D     LDA ram_p2_score,X
C - - - - - 0x0019B2 00:D9A2: D5 3D     CMP ram_hi_score,X
C - - - - - 0x0019B4 00:D9A4: D0 08     BNE bra_D9AE
C - - - - - 0x0019B6 00:D9A6: E8        INX
C - - - - - 0x0019B7 00:D9A7: E0 07     CPX #$07
C - - - - - 0x0019B9 00:D9A9: F0 12     BEQ bra_D9BD_RTS
C - - - - - 0x0019BB 00:D9AB: 4C A0 D9  JMP loc_D9A0_loop
bra_D9AE:
C - - - - - 0x0019BE 00:D9AE: 30 0D     BMI bra_D9BD_RTS
- - - - - - 0x0019C0 00:D9B0: A2 00     LDX #$00
bra_D9B2_loop:
- - - - - - 0x0019C2 00:D9B2: B5 1D     LDA ram_p2_score,X
- - - - - - 0x0019C4 00:D9B4: 95 3D     STA ram_hi_score,X
- - - - - - 0x0019C6 00:D9B6: E8        INX
- - - - - - 0x0019C7 00:D9B7: E0 07     CPX #$07
- - - - - - 0x0019C9 00:D9B9: D0 F7     BNE bra_D9B2_loop
- - - - - - 0x0019CB 00:D9BB: A0 FF     LDY #$FF
bra_D9BD_RTS:
C - - - - - 0x0019CD 00:D9BD: 60        RTS



sub_D9BE_add_score:
; in
    ; X = score index
C - - - - - 0x0019CE 00:D9BE: 8A        TXA
; * 08
C - - - - - 0x0019CF 00:D9BF: 0A        ASL
C - - - - - 0x0019D0 00:D9C0: 0A        ASL
C - - - - - 0x0019D1 00:D9C1: 0A        ASL
C - - - - - 0x0019D2 00:D9C2: 18        CLC
C - - - - - 0x0019D3 00:D9C3: 69 06     ADC #$06
C - - - - - 0x0019D5 00:D9C5: AA        TAX
C - - - - - 0x0019D6 00:D9C6: A0 06     LDY #$06
C - - - - - 0x0019D8 00:D9C8: 18        CLC
bra_D9C9_loop:
C - - - - - 0x0019D9 00:D9C9: B9 35 00  LDA ram_com_dec_number,Y
C - - - - - 0x0019DC 00:D9CC: 75 15     ADC ram_score,X
C - - - - - 0x0019DE 00:D9CE: C9 0A     CMP #$0A
C - - - - - 0x0019E0 00:D9D0: 30 07     BMI bra_D9D9
C - - - - - 0x0019E2 00:D9D2: 38        SEC
C - - - - - 0x0019E3 00:D9D3: E9 0A     SBC #$0A
C - - - - - 0x0019E5 00:D9D5: 38        SEC
C - - - - - 0x0019E6 00:D9D6: 4C DA D9  JMP loc_D9DA
bra_D9D9:
; bzk optimize, is this CLC necessary?
C - - - - - 0x0019E9 00:D9D9: 18        CLC
loc_D9DA:
C D 2 - - - 0x0019EA 00:D9DA: 95 15     STA ram_score,X
C - - - - - 0x0019EC 00:D9DC: CA        DEX
C - - - - - 0x0019ED 00:D9DD: 88        DEY
C - - - - - 0x0019EE 00:D9DE: 10 E9     BPL bra_D9C9_loop
C - - - - - 0x0019F0 00:D9E0: 60        RTS



sub_D9E1_calculate_decimal_number:
; in
    ; A = 
C - - - - - 0x0019F1 00:D9E1: 85 00     STA ram_0000_t05
C - - - - - 0x0019F3 00:D9E3: A2 35     LDX #< ram_com_dec_number
C - - - - - 0x0019F5 00:D9E5: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x0019F8 00:D9E8: A5 00     LDA ram_0000_t05
C - - - - - 0x0019FA 00:D9EA: F0 0D     BEQ bra_D9F9
C - - - - - 0x0019FC 00:D9EC: 29 0F     AND #$0F
C - - - - - 0x0019FE 00:D9EE: 85 3A     STA ram_com_dec_num_tens
C - - - - - 0x001A00 00:D9F0: A5 00     LDA ram_0000_t05
; / 10
C - - - - - 0x001A02 00:D9F2: 4A        LSR
C - - - - - 0x001A03 00:D9F3: 4A        LSR
C - - - - - 0x001A04 00:D9F4: 4A        LSR
C - - - - - 0x001A05 00:D9F5: 4A        LSR
C - - - - - 0x001A06 00:D9F6: 85 39     STA ram_com_dec_num_hundreds
C - - - - - 0x001A08 00:D9F8: 60        RTS
bra_D9F9:
C - - - - - 0x001A09 00:D9F9: A9 01     LDA #$01
C - - - - - 0x001A0B 00:D9FB: 85 38     STA ram_com_dec_num_thousands
C - - - - - 0x001A0D 00:D9FD: 60        RTS



sub_D9FE_clear_bcd_number:
; binary-coded decimal
; in
    ; X = offset
        ; 15 = 0015-001C
        ; 1D = 001D-0024
        ; 25 = 0025-002C
        ; 2D = 002D-0034
        ; 35 = 0035-003C
        ; 3D = 003D-0044
C - - - - - 0x001A0E 00:D9FE: A9 00     LDA #$00
C - - - - - 0x001A10 00:DA00: 95 00     STA $00,X           ; millions
C - - - - - 0x001A12 00:DA02: 95 01     STA $00 + $01,X     ; hundreds of thousands
C - - - - - 0x001A14 00:DA04: 95 02     STA $00 + $02,X     ; tens of thousands
C - - - - - 0x001A16 00:DA06: 95 03     STA $00 + $03,X     ; thousands
C - - - - - 0x001A18 00:DA08: 95 04     STA $00 + $04,X     ; hundreds
C - - - - - 0x001A1A 00:DA0A: 95 05     STA $00 + $05,X     ; tens
C - - - - - 0x001A1C 00:DA0C: 95 06     STA $00 + $06,X     ; ones
C - - - - - 0x001A1E 00:DA0E: A9 FF     LDA #$FF
C - - - - - 0x001A20 00:DA10: 95 07     STA $00 + $07,X     ; end token
C - - - - - 0x001A22 00:DA12: 60        RTS



sub_DA13_calculate_decimal:
; in
    ; A = hex number
C - - - - - 0x001A23 00:DA13: 85 00     STA ram_0000_t06
C - - - - - 0x001A25 00:DA15: A2 35     LDX #< ram_com_dec_number
C - - - - - 0x001A27 00:DA17: 20 FE D9  JSR sub_D9FE_clear_bcd_number
C - - - - - 0x001A2A 00:DA1A: A5 00     LDA ram_0000_t06
loc_DA1C_loop:
C D 2 - - - 0x001A2C 00:DA1C: C9 0A     CMP #$0A
C - - - - - 0x001A2E 00:DA1E: 90 08     BCC bra_DA28
C - - - - - 0x001A30 00:DA20: 38        SEC
C - - - - - 0x001A31 00:DA21: E9 0A     SBC #$0A
C - - - - - 0x001A33 00:DA23: E6 3A     INC ram_com_dec_num_tens
C - - - - - 0x001A35 00:DA25: 4C 1C DA  JMP loc_DA1C_loop
bra_DA28:
C - - - - - 0x001A38 00:DA28: 85 3B     STA ram_com_dec_num_ones
C - - - - - 0x001A3A 00:DA2A: 60        RTS



sub_DA2B_display_sprite:
; in
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0053_t01_spr_T
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - - - - 0x001A3B 00:DA2B: 8A        TXA
C - - - - - 0x001A3C 00:DA2C: 85 47     STA ram_0047_t04_spr_X
C - - - - - 0x001A3E 00:DA2E: 18        CLC
C - - - - - 0x001A3F 00:DA2F: 69 03     ADC #$03
C - - - - - 0x001A41 00:DA31: AA        TAX
C - - - - - 0x001A42 00:DA32: 98        TYA
C - - - - - 0x001A43 00:DA33: 38        SEC
C - - - - - 0x001A44 00:DA34: E9 08     SBC #$08
C - - - - - 0x001A46 00:DA36: 85 48     STA ram_0048_t03_spr_Y
C - - - - - 0x001A48 00:DA38: 20 06 D7  JSR sub_D706_divide_by_08_and_calculate_pointer
C - - - - - 0x001A4B 00:DA3B: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x001A4D 00:DA3D: C9 22     CMP #$22
C - - - - - 0x001A4F 00:DA3F: D0 06     BNE bra_DA47
C - - - - - 0x001A51 00:DA41: A5 04     LDA ram_0004_t01_spr_A_palette
C - - - - - 0x001A53 00:DA43: 05 6E     ORA ram_priority_spr_A
C - - - - - 0x001A55 00:DA45: 85 04     STA ram_0004_t01_spr_A_palette
bra_DA47:
C - - - - - 0x001A57 00:DA47: A6 0D     LDX ram_index_oam
C - - - - - 0x001A59 00:DA49: A5 48     LDA ram_0048_t03_spr_Y
C - - - - - 0x001A5B 00:DA4B: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x001A5E 00:DA4E: A5 53     LDA ram_0053_t01_spr_T
C - - - - - 0x001A60 00:DA50: 9D 01 02  STA ram_spr_T,X
C - - - - - 0x001A63 00:DA53: A5 04     LDA ram_0004_t01_spr_A_palette
C - - - - - 0x001A65 00:DA55: 9D 02 02  STA ram_spr_A,X
C - - - - - 0x001A68 00:DA58: A5 47     LDA ram_0047_t04_spr_X
C - - - - - 0x001A6A 00:DA5A: 9D 03 02  STA ram_spr_X,X
C - - - - - 0x001A6D 00:DA5D: 8A        TXA
C - - - - - 0x001A6E 00:DA5E: 18        CLC
C - - - - - 0x001A6F 00:DA5F: 65 0E     ADC ram_offset_oam_index
C - - - - - 0x001A71 00:DA61: 85 0D     STA ram_index_oam
C - - - - - 0x001A73 00:DA63: 60        RTS



sub_DA64:
; in
    ; A = spr_T
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
; bzk optimize, single JSR to here
C - - - - - 0x001A74 00:DA64: 0A        ASL
C - - - - - 0x001A75 00:DA65: 18        CLC
C - - - - - 0x001A76 00:DA66: 65 53     ADC ram_0053_t01_spr_T
C - - - - - 0x001A78 00:DA68: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x001A7A 00:DA6A: 8A        TXA
C - - - - - 0x001A7B 00:DA6B: 38        SEC
C - - - - - 0x001A7C 00:DA6C: E9 05     SBC #$05
C - - - - - 0x001A7E 00:DA6E: AA        TAX ; spr_X
; bzk optimize, JMP
C - - - - - 0x001A7F 00:DA6F: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x001A82 00:DA72: 60        RTS



sub_DA73_display_2_sprites:
; in
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0004_t01_spr_A_palette
    ; ram_0053_t01_spr_T
    ; ram_priority_spr_A
; * 08
C - - - - - 0x001A83 00:DA73: 0A        ASL
C - - - - - 0x001A84 00:DA74: 0A        ASL
C - - - - - 0x001A85 00:DA75: 0A        ASL
C - - - - - 0x001A86 00:DA76: 18        CLC
C - - - - - 0x001A87 00:DA77: 65 53     ADC ram_0053_t01_spr_T
C - - - - - 0x001A89 00:DA79: 85 53     STA ram_0053_t01_spr_T
sub_DA7B_display_2_sprites:
; in
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0004_t01_spr_A_palette
    ; ram_0053_t01_spr_T
    ; ram_priority_spr_A
C - - - - - 0x001A8B 00:DA7B: 86 54     STX ram_0054_t01_spr_X
C - - - - - 0x001A8D 00:DA7D: 84 55     STY ram_0055_t01_spr_Y
C - - - - - 0x001A8F 00:DA7F: 8A        TXA
C - - - - - 0x001A90 00:DA80: 38        SEC
C - - - - - 0x001A91 00:DA81: E9 08     SBC #$08
C - - - - - 0x001A93 00:DA83: AA        TAX ; spr_X
C - - - - - 0x001A94 00:DA84: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x001A97 00:DA87: E6 53     INC ram_0053_t01_spr_T
C - - - - - 0x001A99 00:DA89: E6 53     INC ram_0053_t01_spr_T
C - - - - - 0x001A9B 00:DA8B: A6 54     LDX ram_0054_t01_spr_X
C - - - - - 0x001A9D 00:DA8D: A4 55     LDY ram_0055_t01_spr_Y
; bzk optimize, JMP
C - - - - - 0x001A9F 00:DA8F: 20 2B DA  JSR sub_DA2B_display_sprite
C - - - - - 0x001AA2 00:DA92: 60        RTS



sub_DA93_hide_unused_sprites:
C - - - - - 0x001AA3 00:DA93: A6 0D     LDX ram_index_oam
C - - - - - 0x001AA5 00:DA95: A5 0E     LDA ram_offset_oam_index
C - - - - - 0x001AA7 00:DA97: 49 FF     EOR #$FF
C - - - - - 0x001AA9 00:DA99: 18        CLC
C - - - - - 0x001AAA 00:DA9A: 69 01     ADC #$01
C - - - - - 0x001AAC 00:DA9C: 85 0E     STA ram_offset_oam_index
bra_DA9E_loop:
C - - - - - 0x001AAE 00:DA9E: 8A        TXA
C - - - - - 0x001AAF 00:DA9F: 18        CLC
C - - - - - 0x001AB0 00:DAA0: 65 0E     ADC ram_offset_oam_index
C - - - - - 0x001AB2 00:DAA2: AA        TAX
C - - - - - 0x001AB3 00:DAA3: A9 F0     LDA #$F0
C - - - - - 0x001AB5 00:DAA5: 9D 00 02  STA ram_spr_Y,X
C - - - - - 0x001AB8 00:DAA8: E0 04     CPX #$04
C - - - - - 0x001ABA 00:DAAA: D0 F2     BNE bra_DA9E_loop
C - - - - - 0x001ABC 00:DAAC: 86 0D     STX ram_index_oam
C - - - - - 0x001ABE 00:DAAE: 60        RTS



sub_DAAF_check_relative_position:
; in
    ; Z
        ; 0 = 
        ; 1 = 
    ; C
        ; 0 = 
        ; 1 = 
; out
    ; A = 
C - - - - - 0x001ABF 00:DAAF: F0 09     BEQ bra_DABA_RTS
C - - - - - 0x001AC1 00:DAB1: B0 05     BCS bra_DAB8
C - - - - - 0x001AC3 00:DAB3: A9 FF     LDA #$FF
C - - - - - 0x001AC5 00:DAB5: 4C BA DA  JMP loc_DABA_RTS
bra_DAB8:
C - - - - - 0x001AC8 00:DAB8: A9 01     LDA #$01
bra_DABA_RTS:
loc_DABA_RTS:   ; bzk optimize
C D 2 - - - 0x001ACA 00:DABA: 60        RTS



tbl_DABB_nametable_attribute:
- D 2 - - - 0x001ACB 00:DABB: 00        .byte $00   ; 00 
- D 2 - - - 0x001ACC 00:DABC: 00        .byte $00   ; 01 
- D 2 - - - 0x001ACD 00:DABD: 00        .byte $00   ; 02 
- D 2 - - - 0x001ACE 00:DABE: 00        .byte $00   ; 03 
- D 2 - - - 0x001ACF 00:DABF: 00        .byte $00   ; 04 
- D 2 - - - 0x001AD0 00:DAC0: 03        .byte $03   ; 05 
- D 2 - - - 0x001AD1 00:DAC1: 03        .byte $03   ; 06 
- D 2 - - - 0x001AD2 00:DAC2: 03        .byte $03   ; 07 
- D 2 - - - 0x001AD3 00:DAC3: 03        .byte $03   ; 08 
- D 2 - - - 0x001AD4 00:DAC4: 03        .byte $03   ; 09 
- D 2 - - - 0x001AD5 00:DAC5: 01        .byte $01   ; 0A 
- D 2 - - - 0x001AD6 00:DAC6: 02        .byte $02   ; 0B 
- D 2 - - - 0x001AD7 00:DAC7: 03        .byte $03   ; 0C 
- D 2 - - - 0x001AD8 00:DAC8: 00        .byte $00   ; 0D 
- - - - - - 0x001AD9 00:DAC9: 00        .byte $00   ; 0E unused?
- D 2 - - - 0x001ADA 00:DACA: 00        .byte $00   ; 0F 



tbl_DACB_block_data:
- D 2 - - - 0x001ADB 00:DACB: 00        .byte $00, $0F, $00, $0F   ; 00 
- D 2 - - - 0x001ADF 00:DACF: 00        .byte $00, $00, $0F, $0F   ; 01 
- D 2 - - - 0x001AE3 00:DAD3: 0F        .byte $0F, $00, $0F, $00   ; 02 
- D 2 - - - 0x001AE7 00:DAD7: 0F        .byte $0F, $0F, $00, $00   ; 03 
- D 2 - - - 0x001AEB 00:DADB: 0F        .byte $0F, $0F, $0F, $0F   ; 04 
- D 2 - - - 0x001AEF 00:DADF: 20        .byte $20, $10, $20, $10   ; 05 
- D 2 - - - 0x001AF3 00:DAE3: 20        .byte $20, $20, $10, $10   ; 06 
- D 2 - - - 0x001AF7 00:DAE7: 10        .byte $10, $20, $10, $20   ; 07 
- D 2 - - - 0x001AFB 00:DAEB: 10        .byte $10, $10, $20, $20   ; 08 
- D 2 - - - 0x001AFF 00:DAEF: 10        .byte $10, $10, $10, $10   ; 09 
- D 2 - - - 0x001B03 00:DAF3: 12        .byte $12, $12, $12, $12   ; 0A 
- D 2 - - - 0x001B07 00:DAF7: 22        .byte $22, $22, $22, $22   ; 0B 
- D 2 - - - 0x001B0B 00:DAFB: 21        .byte $21, $21, $21, $21   ; 0C 
- D 2 - - - 0x001B0F 00:DAFF: 00        .byte $00, $00, $00, $00   ; 0D 
- - - - - - 0x001B13 00:DB03: 00        .byte $00, $00, $00, $00   ; 0E unused?
- D 2 - - - 0x001B17 00:DB07: 00        .byte $00, $00, $00, $00   ; 0F 



sub_DB0B_plr_movement_sfx_handler:
C - - - - - 0x001B1B 00:DB0B: AD 11 03  LDA ram_sfx_movement_player
C - - - - - 0x001B1E 00:DB0E: F0 14     BEQ bra_DB24_no_sound_currently
C - - - - - 0x001B20 00:DB10: A2 00     LDX #$00
C - - - - - 0x001B22 00:DB12: 20 38 DB  JSR sub_DB38
C - - - - - 0x001B25 00:DB15: D0 20     BNE bra_DB37_RTS
C - - - - - 0x001B27 00:DB17: A2 01     LDX #$01
C - - - - - 0x001B29 00:DB19: 20 38 DB  JSR sub_DB38
C - - - - - 0x001B2C 00:DB1C: D0 19     BNE bra_DB37_RTS
C - - - - - 0x001B2E 00:DB1E: A9 00     LDA #$00
C - - - - - 0x001B30 00:DB20: 8D 11 03  STA ram_sfx_movement_player
C - - - - - 0x001B33 00:DB23: 60        RTS
bra_DB24_no_sound_currently:
C - - - - - 0x001B34 00:DB24: A2 00     LDX #$00
C - - - - - 0x001B36 00:DB26: 20 38 DB  JSR sub_DB38
C - - - - - 0x001B39 00:DB29: D0 07     BNE bra_DB32_play_sound
C - - - - - 0x001B3B 00:DB2B: A2 01     LDX #$01
C - - - - - 0x001B3D 00:DB2D: 20 38 DB  JSR sub_DB38
C - - - - - 0x001B40 00:DB30: F0 05     BEQ bra_DB37_RTS
bra_DB32_play_sound:
C - - - - - 0x001B42 00:DB32: A9 01     LDA #$01
C - - - - - 0x001B44 00:DB34: 8D 11 03  STA ram_sfx_movement_player
bra_DB37_RTS:
C - - - - - 0x001B47 00:DB37: 60        RTS



sub_DB38:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x001B48 00:DB38: B5 06     LDA ram_btn_hold,X
C - - - - - 0x001B4A 00:DB3A: 29 F0     AND #con_btns_Dpad
C - - - - - 0x001B4C 00:DB3C: F0 07     BEQ bra_DB45
C - - - - - 0x001B4E 00:DB3E: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001B50 00:DB40: F0 03     BEQ bra_DB45
C - - - - - 0x001B52 00:DB42: A9 01     LDA #$01
C - - - - - 0x001B54 00:DB44: 60        RTS
bra_DB45:
C - - - - - 0x001B55 00:DB45: A9 00     LDA #$00
C - - - - - 0x001B57 00:DB47: 60        RTS



sub_DB48_enemy_spawn_handler:
C - - - - - 0x001B58 00:DB48: A5 82     LDA ram_enemy_timer_before_spawn
C - - - - - 0x001B5A 00:DB4A: F0 03     BEQ bra_DB4F_time_to_spawn
C - - - - - 0x001B5C 00:DB4C: C6 82     DEC ram_enemy_timer_before_spawn
C - - - - - 0x001B5E 00:DB4E: 60        RTS
bra_DB4F_time_to_spawn:
C - - - - - 0x001B5F 00:DB4F: A5 7F     LDA ram_enemy_spawn_cnt
C - - - - - 0x001B61 00:DB51: F0 21     BEQ bra_DB74_RTS
C - - - - - 0x001B63 00:DB53: A5 6C     LDA ram_enemy_limit
C - - - - - 0x001B65 00:DB55: 85 5A     STA ram_005A_t03_enemy_tank_index
bra_DB57_loop:
C - - - - - 0x001B67 00:DB57: A6 5A     LDX ram_005A_t03_enemy_tank_index
C - - - - - 0x001B69 00:DB59: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001B6B 00:DB5B: D0 0F     BNE bra_DB6C_cannot_spawn
C - - - - - 0x001B6D 00:DB5D: A5 84     LDA ram_enemy_spawn_interval
C - - - - - 0x001B6F 00:DB5F: 85 82     STA ram_enemy_timer_before_spawn
C - - - - - 0x001B71 00:DB61: 20 63 E3  JSR sub_E363_tank_spawn_handler
C - - - - - 0x001B74 00:DB64: C6 7F     DEC ram_enemy_spawn_cnt
C - - - - - 0x001B76 00:DB66: A5 7F     LDA ram_enemy_spawn_cnt
; bzk optimize, JMP
C - - - - - 0x001B78 00:DB68: 20 B1 C8  JSR sub_C8B1_erase_enemy_icon
C - - - - - 0x001B7B 00:DB6B: 60        RTS
bra_DB6C_cannot_spawn:
C - - - - - 0x001B7C 00:DB6C: C6 5A     DEC ram_005A_t03_enemy_tank_index
C - - - - - 0x001B7E 00:DB6E: A5 5A     LDA ram_005A_t03_enemy_tank_index
C - - - - - 0x001B80 00:DB70: C9 01     CMP #$01
C - - - - - 0x001B82 00:DB72: D0 E3     BNE bra_DB57_loop
bra_DB74_RTS:
C - - - - - 0x001B84 00:DB74: 60        RTS



sub_DB75_ice_movement:
C - - - - - 0x001B85 00:DB75: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001B87 00:DB77: 29 01     AND #$01
C - - - - - 0x001B89 00:DB79: D0 06     BNE bra_DB81
C - - - - - 0x001B8B 00:DB7B: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001B8D 00:DB7D: 29 03     AND #$03
C - - - - - 0x001B8F 00:DB7F: D0 6F     BNE bra_DBF0_RTS
bra_DB81:
C - - - - - 0x001B91 00:DB81: A2 01     LDX #$01
bra_DB83_loop:
C - - - - - 0x001B93 00:DB83: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001B95 00:DB85: 10 66     BPL bra_DBED
C - - - - - 0x001B97 00:DB87: C9 E0     CMP #$E0
C - - - - - 0x001B99 00:DB89: B0 62     BCS bra_DBED
C - - - - - 0x001B9B 00:DB8B: B5 6F     LDA ram_plr_stun_timer,X
C - - - - - 0x001B9D 00:DB8D: F0 05     BEQ bra_DB94
C - - - - - 0x001B9F 00:DB8F: D6 6F     DEC ram_plr_stun_timer,X
C - - - - - 0x001BA1 00:DB91: 4C A6 DB  JMP loc_DBA6
bra_DB94:
C - - - - - 0x001BA4 00:DB94: BD 03 01  LDA ram_0103_plr,X
C - - - - - 0x001BA7 00:DB97: 10 04     BPL bra_DB9D
C - - - - - 0x001BA9 00:DB99: 29 10     AND #$10
C - - - - - 0x001BAB 00:DB9B: D0 09     BNE bra_DBA6
bra_DB9D:
C - - - - - 0x001BAD 00:DB9D: B5 06     LDA ram_btn_hold,X
C - - - - - 0x001BAF 00:DB9F: 20 51 E4  JSR sub_E451_convert_Dpad_buttons
C - - - - - 0x001BB2 00:DBA2: 85 00     STA ram_0000_t07_converted_Dpad_btn
C - - - - - 0x001BB4 00:DBA4: 10 0E     BPL bra_DBB4
bra_DBA6:
loc_DBA6:
C D 2 - - - 0x001BB6 00:DBA6: A9 80     LDA #con_tank_flag_80
C - - - - - 0x001BB8 00:DBA8: 20 20 E4  JSR sub_E420_change_tank_status
C - - - - - 0x001BBB 00:DBAB: A9 08     LDA #$08
C - - - - - 0x001BBD 00:DBAD: 15 A0     ORA ram_tank_flags,X
C - - - - - 0x001BBF 00:DBAF: 95 A0     STA ram_tank_flags,X
C - - - - - 0x001BC1 00:DBB1: 4C ED DB  JMP loc_DBED
bra_DBB4:
C - - - - - 0x001BC4 00:DBB4: BD 03 01  LDA ram_0103_plr,X
C - - - - - 0x001BC7 00:DBB7: 10 0E     BPL bra_DBC7
C - - - - - 0x001BC9 00:DBB9: 29 1F     AND #$1F
C - - - - - 0x001BCB 00:DBBB: D0 0A     BNE bra_DBC7
C - - - - - 0x001BCD 00:DBBD: A9 9C     LDA #$9C
C - - - - - 0x001BCF 00:DBBF: 9D 03 01  STA ram_0103_plr,X
C - - - - - 0x001BD2 00:DBC2: A9 01     LDA #$01
C - - - - - 0x001BD4 00:DBC4: 8D 10 03  STA ram_sfx_movement_ice
bra_DBC7:
C - - - - - 0x001BD7 00:DBC7: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001BD9 00:DBC9: 29 03     AND #$03
C - - - - - 0x001BDB 00:DBCB: C5 00     CMP ram_0000_t07_converted_Dpad_btn
C - - - - - 0x001BDD 00:DBCD: F0 18     BEQ bra_DBE7
C - - - - - 0x001BDF 00:DBCF: 49 02     EOR #$02
C - - - - - 0x001BE1 00:DBD1: C5 00     CMP ram_0000_t07_converted_Dpad_btn
C - - - - - 0x001BE3 00:DBD3: F0 12     BEQ bra_DBE7
C - - - - - 0x001BE5 00:DBD5: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001BE7 00:DBD7: 18        CLC
C - - - - - 0x001BE8 00:DBD8: 69 04     ADC #$04
C - - - - - 0x001BEA 00:DBDA: 29 F8     AND #$F8
C - - - - - 0x001BEC 00:DBDC: 95 90     STA ram_tank_pos_X,X
C - - - - - 0x001BEE 00:DBDE: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x001BF0 00:DBE0: 18        CLC
C - - - - - 0x001BF1 00:DBE1: 69 04     ADC #$04
C - - - - - 0x001BF3 00:DBE3: 29 F8     AND #$F8
C - - - - - 0x001BF5 00:DBE5: 95 98     STA ram_tank_pos_Y,X
bra_DBE7:
C - - - - - 0x001BF7 00:DBE7: A5 00     LDA ram_0000_t07_converted_Dpad_btn
C - - - - - 0x001BF9 00:DBE9: 09 A0     ORA #con_tank_flag_A0
C - - - - - 0x001BFB 00:DBEB: 95 A0     STA ram_tank_flags,X
bra_DBED:
loc_DBED:
C D 2 - - - 0x001BFD 00:DBED: CA        DEX
C - - - - - 0x001BFE 00:DBEE: 10 93     BPL bra_DB83_loop
bra_DBF0_RTS:
ofs_000_DBF0_00_RTS:
ofs_001_DBF0_00_RTS:
ofs_002_DBF0_00_RTS:
ofs_003_DBF0_00_RTS:
ofs_004_DBF0_00_RTS:
C - - J - - 0x001C00 00:DBF0: 60        RTS



sub_DBF1_tank_movement:
C - - - - - 0x001C01 00:DBF1: A9 07     LDA #$07
C - - - - - 0x001C03 00:DBF3: 85 5A     STA ram_005A_t04_tank_index
C - - - - - 0x001C05 00:DBF5: AD 00 01  LDA ram_clock_timer
C - - - - - 0x001C08 00:DBF8: F0 09     BEQ bra_DC03
C - - - - - 0x001C0A 00:DBFA: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001C0C 00:DBFC: 29 3F     AND #$3F
C - - - - - 0x001C0E 00:DBFE: D0 03     BNE bra_DC03
C - - - - - 0x001C10 00:DC00: CE 00 01  DEC ram_clock_timer
bra_DC03:
bra_DC03_loop:
C - - - - - 0x001C13 00:DC03: A6 5A     LDX ram_005A_t04_tank_index
C - - - - - 0x001C15 00:DC05: E0 02     CPX #$02
C - - - - - 0x001C17 00:DC07: B0 0F     BCS bra_DC18_enemy
; if player
C - - - - - 0x001C19 00:DC09: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001C1B 00:DC0B: 29 01     AND #$01
C - - - - - 0x001C1D 00:DC0D: D0 26     BNE bra_DC35
C - - - - - 0x001C1F 00:DC0F: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001C21 00:DC11: 29 03     AND #$03
C - - - - - 0x001C23 00:DC13: D0 23     BNE bra_DC38
C - - - - - 0x001C25 00:DC15: 4C 35 DC  JMP loc_DC35
bra_DC18_enemy:
C - - - - - 0x001C28 00:DC18: AD 00 01  LDA ram_clock_timer
C - - - - - 0x001C2B 00:DC1B: F0 08     BEQ bra_DC25
C - - - - - 0x001C2D 00:DC1D: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001C2F 00:DC1F: 10 04     BPL bra_DC25
C - - - - - 0x001C31 00:DC21: C9 E0     CMP #$E0
C - - - - - 0x001C33 00:DC23: 90 13     BCC bra_DC38
bra_DC25:
C - - - - - 0x001C35 00:DC25: B5 A8     LDA ram_tank_type,X
C - - - - - 0x001C37 00:DC27: 29 F0     AND #$F0
C - - - - - 0x001C39 00:DC29: C9 A0     CMP #$A0
C - - - - - 0x001C3B 00:DC2B: F0 08     BEQ bra_DC35
C - - - - - 0x001C3D 00:DC2D: A5 5A     LDA ram_005A_t04_tank_index
C - - - - - 0x001C3F 00:DC2F: 45 0B     EOR ram_frm_cnt_lo
C - - - - - 0x001C41 00:DC31: 29 01     AND #$01
C - - - - - 0x001C43 00:DC33: F0 03     BEQ bra_DC38
bra_DC35:
loc_DC35:
C D 2 - - - 0x001C45 00:DC35: 20 3D DC  JSR sub_DC3D_tank_status_handler
bra_DC38:
C - - - - - 0x001C48 00:DC38: C6 5A     DEC ram_005A_t04_tank_index
C - - - - - 0x001C4A 00:DC3A: 10 C7     BPL bra_DC03_loop
C - - - - - 0x001C4C 00:DC3C: 60        RTS



sub_DC3D_tank_status_handler:
C - - - - - 0x001C4D 00:DC3D: B5 A0     LDA ram_tank_flags,X
; / 08
C - - - - - 0x001C4F 00:DC3F: 4A        LSR
C - - - - - 0x001C50 00:DC40: 4A        LSR
C - - - - - 0x001C51 00:DC41: 4A        LSR
C - - - - - 0x001C52 00:DC42: 29 FE     AND #$FE
C - - - - - 0x001C54 00:DC44: A8        TAY
C - - - - - 0x001C55 00:DC45: B9 98 E4  LDA tbl_E498_tank_status_handler,Y
C - - - - - 0x001C58 00:DC48: 85 11     STA ram_0011_t09_jmp
C - - - - - 0x001C5A 00:DC4A: B9 99 E4  LDA tbl_E498_tank_status_handler + $01,Y
C - - - - - 0x001C5D 00:DC4D: 85 12     STA ram_0011_t09_jmp + $01
C - - - - - 0x001C5F 00:DC4F: 6C 11 00  JMP (ram_0011_t09_jmp)



ofs_000_DC52_80:
; con_tank_flag_80
C - - J - - 0x001C62 00:DC52: E0 02     CPX #$02
C - - - - - 0x001C64 00:DC54: B0 15     BCS bra_DC6B    ; if enemy
; if player
C - - - - - 0x001C66 00:DC56: BD 03 01  LDA ram_0103_plr,X
C - - - - - 0x001C69 00:DC59: 10 10     BPL bra_DC6B
C - - - - - 0x001C6B 00:DC5B: 29 7F     AND #$7F
C - - - - - 0x001C6D 00:DC5D: F0 0C     BEQ bra_DC6B
C - - - - - 0x001C6F 00:DC5F: DE 03 01  DEC ram_0103_plr,X
C - - - - - 0x001C72 00:DC62: B5 B0     LDA ram_tank_wheels,X
C - - - - - 0x001C74 00:DC64: 49 04     EOR #$04
C - - - - - 0x001C76 00:DC66: 95 B0     STA ram_tank_wheels,X
C - - - - - 0x001C78 00:DC68: 4C 97 DC  JMP loc_DC97
bra_DC6B:
C - - - - - 0x001C7B 00:DC6B: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001C7D 00:DC6D: 38        SEC
C - - - - - 0x001C7E 00:DC6E: E9 04     SBC #$04
C - - - - - 0x001C80 00:DC70: 95 A0     STA ram_tank_flags,X
C - - - - - 0x001C82 00:DC72: 29 0C     AND #$0C
C - - - - - 0x001C84 00:DC74: D0 05     BNE bra_DC7B_RTS
C - - - - - 0x001C86 00:DC76: A9 A0     LDA #con_tank_flag_A0
; bzk optimize, JMP
C - - - - - 0x001C88 00:DC78: 20 20 E4  JSR sub_E420_change_tank_status
bra_DC7B_RTS:
C - - - - - 0x001C8B 00:DC7B: 60        RTS



ofs_000_DC7C_A0:
; con_tank_flag_A0
C - - J - - 0x001C8C 00:DC7C: E0 02     CPX #$02
C - - - - - 0x001C8E 00:DC7E: 90 17     BCC bra_DC97    ; if player
; if enemy
C - - - - - 0x001C90 00:DC80: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001C92 00:DC82: 29 07     AND #$07
C - - - - - 0x001C94 00:DC84: D0 11     BNE bra_DC97
C - - - - - 0x001C96 00:DC86: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x001C98 00:DC88: 29 07     AND #$07
C - - - - - 0x001C9A 00:DC8A: D0 0B     BNE bra_DC97
C - - - - - 0x001C9C 00:DC8C: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x001C9F 00:DC8F: 29 0F     AND #$0F
C - - - - - 0x001CA1 00:DC91: D0 04     BNE bra_DC97
; bzk optimize, JMP
C - - - - - 0x001CA3 00:DC93: 20 72 DE  JSR sub_DE72
C - - - - - 0x001CA6 00:DC96: 60        RTS
bra_DC97:
loc_DC97:
C D 2 - - - 0x001CA7 00:DC97: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001CA9 00:DC99: 29 03     AND #$03
C - - - - - 0x001CAB 00:DC9B: A8        TAY
C - - - - - 0x001CAC 00:DC9C: B9 70 E4  LDA tbl_E470,Y
; * 08
C - - - - - 0x001CAF 00:DC9F: 0A        ASL
C - - - - - 0x001CB0 00:DCA0: 0A        ASL
C - - - - - 0x001CB1 00:DCA1: 0A        ASL
C - - - - - 0x001CB2 00:DCA2: 85 59     STA ram_0059_t01
C - - - - - 0x001CB4 00:DCA4: B9 70 E4  LDA tbl_E470,Y
C - - - - - 0x001CB7 00:DCA7: 18        CLC
C - - - - - 0x001CB8 00:DCA8: 75 98     ADC ram_tank_pos_Y,X
C - - - - - 0x001CBA 00:DCAA: 85 57     STA ram_0057_t04_pos_Y
C - - - - - 0x001CBC 00:DCAC: B9 6C E4  LDA tbl_E46C,Y
; * 08
C - - - - - 0x001CBF 00:DCAF: 0A        ASL
C - - - - - 0x001CC0 00:DCB0: 0A        ASL
C - - - - - 0x001CC1 00:DCB1: 0A        ASL
C - - - - - 0x001CC2 00:DCB2: 85 58     STA ram_0058_t01
C - - - - - 0x001CC4 00:DCB4: B9 6C E4  LDA tbl_E46C,Y
C - - - - - 0x001CC7 00:DCB7: 18        CLC
C - - - - - 0x001CC8 00:DCB8: 75 90     ADC ram_tank_pos_X,X
C - - - - - 0x001CCA 00:DCBA: 85 56     STA ram_0056_t04_pos_X
C - - - - - 0x001CCC 00:DCBC: 18        CLC
C - - - - - 0x001CCD 00:DCBD: 65 58     ADC ram_0058_t01
C - - - - - 0x001CCF 00:DCBF: 18        CLC
C - - - - - 0x001CD0 00:DCC0: 65 59     ADC ram_0059_t01
C - - - - - 0x001CD2 00:DCC2: 20 6E DD  JSR sub_DD6E
C - - - - - 0x001CD5 00:DCC5: AA        TAX
C - - - - - 0x001CD6 00:DCC6: A5 57     LDA ram_0057_t04_pos_Y
C - - - - - 0x001CD8 00:DCC8: 18        CLC
C - - - - - 0x001CD9 00:DCC9: 65 58     ADC ram_0058_t01
C - - - - - 0x001CDB 00:DCCB: 18        CLC
C - - - - - 0x001CDC 00:DCCC: 65 59     ADC ram_0059_t01
C - - - - - 0x001CDE 00:DCCE: 20 76 DD  JSR sub_DD76
C - - - - - 0x001CE1 00:DCD1: A8        TAY
C - - - - - 0x001CE2 00:DCD2: 20 06 D7  JSR sub_D706_divide_by_08_and_calculate_pointer
C - - - - - 0x001CE5 00:DCD5: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x001CE7 00:DCD7: 30 38     BMI bra_DD11
C - - - - - 0x001CE9 00:DCD9: F0 04     BEQ bra_DCDF
C - - - - - 0x001CEB 00:DCDB: C9 20     CMP #$20
C - - - - - 0x001CED 00:DCDD: 90 32     BCC bra_DD11
bra_DCDF:
C - - - - - 0x001CEF 00:DCDF: A5 56     LDA ram_0056_t04_pos_X
C - - - - - 0x001CF1 00:DCE1: 18        CLC
C - - - - - 0x001CF2 00:DCE2: 65 58     ADC ram_0058_t01
C - - - - - 0x001CF4 00:DCE4: 38        SEC
C - - - - - 0x001CF5 00:DCE5: E5 59     SBC ram_0059_t01
C - - - - - 0x001CF7 00:DCE7: 20 6E DD  JSR sub_DD6E
C - - - - - 0x001CFA 00:DCEA: AA        TAX
C - - - - - 0x001CFB 00:DCEB: A5 57     LDA ram_0057_t04_pos_Y
C - - - - - 0x001CFD 00:DCED: 18        CLC
C - - - - - 0x001CFE 00:DCEE: 65 59     ADC ram_0059_t01
C - - - - - 0x001D00 00:DCF0: 38        SEC
C - - - - - 0x001D01 00:DCF1: E5 58     SBC ram_0058_t01
C - - - - - 0x001D03 00:DCF3: 20 76 DD  JSR sub_DD76
C - - - - - 0x001D06 00:DCF6: A8        TAY
C - - - - - 0x001D07 00:DCF7: 20 06 D7  JSR sub_D706_divide_by_08_and_calculate_pointer
C - - - - - 0x001D0A 00:DCFA: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x001D0C 00:DCFC: 30 13     BMI bra_DD11
C - - - - - 0x001D0E 00:DCFE: F0 04     BEQ bra_DD04
C - - - - - 0x001D10 00:DD00: C9 20     CMP #$20
C - - - - - 0x001D12 00:DD02: 90 0D     BCC bra_DD11
bra_DD04:
C - - - - - 0x001D14 00:DD04: A6 5A     LDX ram_005A_t04_tank_index
C - - - - - 0x001D16 00:DD06: A5 56     LDA ram_0056_t04_pos_X
C - - - - - 0x001D18 00:DD08: 95 90     STA ram_tank_pos_X,X
C - - - - - 0x001D1A 00:DD0A: A5 57     LDA ram_0057_t04_pos_Y
C - - - - - 0x001D1C 00:DD0C: 95 98     STA ram_tank_pos_Y,X
C - - - - - 0x001D1E 00:DD0E: 4C 29 DD  JMP loc_DD29
bra_DD11:
C - - - - - 0x001D21 00:DD11: A6 5A     LDX ram_005A_t04_tank_index
C - - - - - 0x001D23 00:DD13: E0 02     CPX #$02
C - - - - - 0x001D25 00:DD15: 90 12     BCC bra_DD29    ; if player
; if enemy
C - - - - - 0x001D27 00:DD17: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x001D2A 00:DD1A: 29 03     AND #$03
C - - - - - 0x001D2C 00:DD1C: F0 12     BEQ bra_DD30
C - - - - - 0x001D2E 00:DD1E: A9 80     LDA #con_tank_flag_80
C - - - - - 0x001D30 00:DD20: 20 20 E4  JSR sub_E420_change_tank_status
C - - - - - 0x001D33 00:DD23: A9 08     LDA #$08
C - - - - - 0x001D35 00:DD25: 15 A0     ORA ram_tank_flags,X
C - - - - - 0x001D37 00:DD27: 95 A0     STA ram_tank_flags,X
bra_DD29:
loc_DD29:
C D 2 - - - 0x001D39 00:DD29: B5 B0     LDA ram_tank_wheels,X
C - - - - - 0x001D3B 00:DD2B: 49 04     EOR #$04
C - - - - - 0x001D3D 00:DD2D: 95 B0     STA ram_tank_wheels,X
C - - - - - 0x001D3F 00:DD2F: 60        RTS
bra_DD30:
C - - - - - 0x001D40 00:DD30: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001D42 00:DD32: 29 07     AND #$07
C - - - - - 0x001D44 00:DD34: D0 0B     BNE bra_DD41
C - - - - - 0x001D46 00:DD36: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x001D48 00:DD38: 29 07     AND #$07
C - - - - - 0x001D4A 00:DD3A: D0 05     BNE bra_DD41
C - - - - - 0x001D4C 00:DD3C: A9 90     LDA #con_tank_flag_90
C - - - - - 0x001D4E 00:DD3E: 20 20 E4  JSR sub_E420_change_tank_status
bra_DD41:
C - - - - - 0x001D51 00:DD41: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001D53 00:DD43: 49 02     EOR #$02
C - - - - - 0x001D55 00:DD45: 95 A0     STA ram_tank_flags,X
C - - - - - 0x001D57 00:DD47: 60        RTS



ofs_000_DD48_90:
; con_tank_flag_90
C - - J - - 0x001D58 00:DD48: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x001D5B 00:DD4B: 29 01     AND #$01
C - - - - - 0x001D5D 00:DD4D: F0 1B     BEQ bra_DD6A
C - - - - - 0x001D5F 00:DD4F: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x001D62 00:DD52: 29 01     AND #$01
C - - - - - 0x001D64 00:DD54: F0 08     BEQ bra_DD5E
C - - - - - 0x001D66 00:DD56: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001D68 00:DD58: 18        CLC
C - - - - - 0x001D69 00:DD59: 69 01     ADC #$01
C - - - - - 0x001D6B 00:DD5B: 4C 63 DD  JMP loc_DD63
bra_DD5E:
C - - - - - 0x001D6E 00:DD5E: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001D70 00:DD60: 38        SEC
C - - - - - 0x001D71 00:DD61: E9 01     SBC #$01
loc_DD63:
C D 2 - - - 0x001D73 00:DD63: 29 03     AND #$03
C - - - - - 0x001D75 00:DD65: 09 A0     ORA #con_tank_flag_A0
C - - - - - 0x001D77 00:DD67: 95 A0     STA ram_tank_flags,X
C - - - - - 0x001D79 00:DD69: 60        RTS
bra_DD6A:
; bzk optimize, JMP
C - - - - - 0x001D7A 00:DD6A: 20 72 DE  JSR sub_DE72
C - - - - - 0x001D7D 00:DD6D: 60        RTS



sub_DD6E:
C - - - - - 0x001D7E 00:DD6E: C5 56     CMP ram_0056_t04_pos_X
C - - - - - 0x001D80 00:DD70: 90 03     BCC bra_DD75_RTS
C - - - - - 0x001D82 00:DD72: 38        SEC
C - - - - - 0x001D83 00:DD73: E9 01     SBC #$01
bra_DD75_RTS:
C - - - - - 0x001D85 00:DD75: 60        RTS



sub_DD76:
C - - - - - 0x001D86 00:DD76: C5 57     CMP ram_0057_t04_pos_Y
C - - - - - 0x001D88 00:DD78: 90 03     BCC bra_DD7D_RTS
C - - - - - 0x001D8A 00:DD7A: 38        SEC
C - - - - - 0x001D8B 00:DD7B: E9 01     SBC #$01
bra_DD7D_RTS:
C - - - - - 0x001D8D 00:DD7D: 60        RTS



ofs_000_DD7E_D0_follow_p1:
; con_tank_flag_follow_p1
C - - J - - 0x001D8E 00:DD7E: A5 90     LDA ram_tank_pos_X
C - - - - - 0x001D90 00:DD80: 85 71     STA ram_enemy_destination_X
C - - - - - 0x001D92 00:DD82: A5 98     LDA ram_tank_pos_Y
C - - - - - 0x001D94 00:DD84: 85 72     STA ram_enemy_destination_Y
C - - - - - 0x001D96 00:DD86: 4C 9C DD  JMP loc_DD9C



ofs_000_DD89_C0_follow_p2:
; con_tank_flag_follow_p2
C - - J - - 0x001D99 00:DD89: A5 91     LDA ram_tank_pos_X + $01
C - - - - - 0x001D9B 00:DD8B: 85 71     STA ram_enemy_destination_X
C - - - - - 0x001D9D 00:DD8D: A5 99     LDA ram_tank_pos_Y + $01
C - - - - - 0x001D9F 00:DD8F: 85 72     STA ram_enemy_destination_Y
C - - - - - 0x001DA1 00:DD91: 4C 9C DD  JMP loc_DD9C



ofs_000_DD94_B0_follow_HQ:
; con_tank_flag_follow_HQ
C - - J - - 0x001DA4 00:DD94: A9 78     LDA #$78
C - - - - - 0x001DA6 00:DD96: 85 71     STA ram_enemy_destination_X
C - - - - - 0x001DA8 00:DD98: A9 D8     LDA #$D8
C - - - - - 0x001DAA 00:DD9A: 85 72     STA ram_enemy_destination_Y
loc_DD9C:
C D 2 - - - 0x001DAC 00:DD9C: 20 A2 DD  JSR sub_DDA2
C - - - - - 0x001DAF 00:DD9F: 95 A0     STA ram_tank_flags,X
C - - - - - 0x001DB1 00:DDA1: 60        RTS



sub_DDA2:
; in
    ; ram_enemy_destination_X
    ; ram_enemy_destination_Y
; out
    ; A = tank flag
C - - - - - 0x001DB2 00:DDA2: A5 71     LDA ram_enemy_destination_X
C - - - - - 0x001DB4 00:DDA4: 38        SEC
C - - - - - 0x001DB5 00:DDA5: F5 90     SBC ram_tank_pos_X,X
C - - - - - 0x001DB7 00:DDA7: 20 AF DA  JSR sub_DAAF_check_relative_position
C - - - - - 0x001DBA 00:DDAA: 18        CLC
C - - - - - 0x001DBB 00:DDAB: 69 01     ADC #$01
C - - - - - 0x001DBD 00:DDAD: 85 64     STA ram_0064_t01
C - - - - - 0x001DBF 00:DDAF: A5 72     LDA ram_enemy_destination_Y
C - - - - - 0x001DC1 00:DDB1: 38        SEC
C - - - - - 0x001DC2 00:DDB2: F5 98     SBC ram_tank_pos_Y,X
C - - - - - 0x001DC4 00:DDB4: 20 AF DA  JSR sub_DAAF_check_relative_position
C - - - - - 0x001DC7 00:DDB7: 18        CLC
C - - - - - 0x001DC8 00:DDB8: 69 01     ADC #$01
C - - - - - 0x001DCA 00:DDBA: 85 65     STA ram_0065_t01
; * 03
C - - - - - 0x001DCC 00:DDBC: 0A        ASL
C - - - - - 0x001DCD 00:DDBD: 18        CLC
C - - - - - 0x001DCE 00:DDBE: 65 65     ADC ram_0065_t01
C - - - - - 0x001DD0 00:DDC0: 18        CLC
C - - - - - 0x001DD1 00:DDC1: 65 64     ADC ram_0064_t01
C - - - - - 0x001DD3 00:DDC3: 85 64     STA ram_0064_t01
C - - - - - 0x001DD5 00:DDC5: E0 02     CPX #$02
C - - - - - 0x001DD7 00:DDC7: B0 0B     BCS bra_DDD4_enemy
; if player
C - - - - - 0x001DD9 00:DDC9: 8A        TXA
C - - - - - 0x001DDA 00:DDCA: 0A        ASL
C - - - - - 0x001DDB 00:DDCB: 45 0A     EOR ram_frm_cnt_hi
C - - - - - 0x001DDD 00:DDCD: 29 02     AND #$02
C - - - - - 0x001DDF 00:DDCF: F0 13     BEQ bra_DDE4
C - - - - - 0x001DE1 00:DDD1: 4C DB DD  JMP loc_DDDB
bra_DDD4_enemy:
C - - - - - 0x001DE4 00:DDD4: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x001DE7 00:DDD7: 29 01     AND #$01
C - - - - - 0x001DE9 00:DDD9: F0 09     BEQ bra_DDE4
loc_DDDB:
C D 2 - - - 0x001DEB 00:DDDB: A9 09     LDA #$09
C - - - - - 0x001DED 00:DDDD: 18        CLC
C - - - - - 0x001DEE 00:DDDE: 65 64     ADC ram_0064_t01
C - - - - - 0x001DF0 00:DDE0: A8        TAY
; bzk optimize, BNE
C - - - - - 0x001DF1 00:DDE1: 4C E6 DD  JMP loc_DDE6
bra_DDE4:
C - - - - - 0x001DF4 00:DDE4: A4 64     LDY ram_0064_t01
loc_DDE6:
C D 2 - - - 0x001DF6 00:DDE6: B9 86 E4  LDA tbl_E486_tank_flags,Y
C - - - - - 0x001DF9 00:DDE9: 60        RTS



ofs_000_DDEA_10_kill_points:
ofs_000_DDEA_20_explosion:
ofs_000_DDEA_30_explosion:
ofs_000_DDEA_40_explosion:
ofs_000_DDEA_50_explosion:
ofs_000_DDEA_60_explosion:
ofs_000_DDEA_70_explosion:
; con_tank_flag_explosion
C - - J - - 0x001DFA 00:DDEA: D6 A0     DEC ram_tank_timer,X
C - - - - - 0x001DFC 00:DDEC: B5 A0     LDA ram_tank_timer,X
C - - - - - 0x001DFE 00:DDEE: 29 0F     AND #$0F
C - - - - - 0x001E00 00:DDF0: D0 53     BNE bra_DE45_RTS
; next explosion animation
C - - - - - 0x001E02 00:DDF2: B5 A0     LDA ram_tank_timer,X
C - - - - - 0x001E04 00:DDF4: 38        SEC
C - - - - - 0x001E05 00:DDF5: E9 10     SBC #$10
C - - - - - 0x001E07 00:DDF7: F0 0E     BEQ bra_DE07_tank_is_dead
C - - - - - 0x001E09 00:DDF9: C9 10     CMP #$10
C - - - - - 0x001E0B 00:DDFB: D0 05     BNE bra_DE02
; if < 10, set a bit higher timer to display points
C - - - - - 0x001E0D 00:DDFD: 09 06     ORA #$06
; bzk optimize, BNE
C - - - - - 0x001E0F 00:DDFF: 4C 04 DE  JMP loc_DE04
bra_DE02:
C - - - - - 0x001E12 00:DE02: 09 03     ORA #$03
loc_DE04:
C D 2 - - - 0x001E14 00:DE04: 95 A0     STA ram_tank_timer,X
C - - - - - 0x001E16 00:DE06: 60        RTS
bra_DE07_tank_is_dead:
C - - - - - 0x001E17 00:DE07: 95 A0     STA ram_tank_timer,X
C - - - - - 0x001E19 00:DE09: E0 02     CPX #$02
C - - - - - 0x001E1B 00:DE0B: B0 08     BCS bra_DE15_enemy
; if player
C - - - - - 0x001E1D 00:DE0D: D6 51     DEC ram_lives,X
C - - - - - 0x001E1F 00:DE0F: F0 07     BEQ bra_DE18_no_more_lives_left
; bzk optimize, JMP
C - - - - - 0x001E21 00:DE11: 20 63 E3  JSR sub_E363_tank_spawn_handler
C - - - - - 0x001E24 00:DE14: 60        RTS
bra_DE15_enemy:
C - - - - - 0x001E25 00:DE15: C6 80     DEC ram_enemies_left_cnt
C - - - - - 0x001E27 00:DE17: 60        RTS
bra_DE18_no_more_lives_left:
C - - - - - 0x001E28 00:DE18: A5 68     LDA ram_game_over_flag
C - - - - - 0x001E2A 00:DE1A: C9 80     CMP #con_not_game_over
C - - - - - 0x001E2C 00:DE1C: D0 27     BNE bra_DE45_RTS
; if not game over, show game over message for the player 
C - - - - - 0x001E2E 00:DE1E: E0 01     CPX #$01
C - - - - - 0x001E30 00:DE20: F0 12     BEQ bra_DE34_it_is_p2
; bzk optimize, no need to check lives again if we are already here
C - - - - - 0x001E32 00:DE22: A5 52     LDA ram_lives + $01
C - - - - - 0x001E34 00:DE24: F0 1F     BEQ bra_DE45_RTS
C - - - - - 0x001E36 00:DE26: A9 03     LDA #$03    ; move right
C - - - - - 0x001E38 00:DE28: 8D 07 01  STA ram_game_over_msg_mov_type
C - - - - - 0x001E3B 00:DE2B: A9 20     LDA #$20
C - - - - - 0x001E3D 00:DE2D: 8D 05 01  STA ram_game_over_msg_pos_X
; bzk optimize, JMP
C - - - - - 0x001E40 00:DE30: 20 46 DE  JSR sub_DE46_set_message_init_data
C - - - - - 0x001E43 00:DE33: 60        RTS
bra_DE34_it_is_p2:
; bzk optimize, no need to check lives again if we are already here
C - - - - - 0x001E44 00:DE34: A5 51     LDA ram_lives
C - - - - - 0x001E46 00:DE36: F0 0D     BEQ bra_DE45_RTS
C - - - - - 0x001E48 00:DE38: A9 01     LDA #$01    ; move left
C - - - - - 0x001E4A 00:DE3A: 8D 07 01  STA ram_game_over_msg_mov_type
C - - - - - 0x001E4D 00:DE3D: A9 C0     LDA #$C0
C - - - - - 0x001E4F 00:DE3F: 8D 05 01  STA ram_game_over_msg_pos_X
; bzk optimize, JMP
C - - - - - 0x001E52 00:DE42: 20 46 DE  JSR sub_DE46_set_message_init_data
bra_DE45_RTS:
C - - - - - 0x001E55 00:DE45: 60        RTS



sub_DE46_set_message_init_data:
C - - - - - 0x001E56 00:DE46: A9 0D     LDA #$0D
C - - - - - 0x001E58 00:DE48: 8D 08 01  STA ram_game_over_msg_timer
C - - - - - 0x001E5B 00:DE4B: A9 D8     LDA #$D8
C - - - - - 0x001E5D 00:DE4D: 8D 06 01  STA ram_game_over_msg_pos_Y
C - - - - - 0x001E60 00:DE50: A9 00     LDA #$00
C - - - - - 0x001E62 00:DE52: 85 0B     STA ram_frm_cnt_lo
C - - - - - 0x001E64 00:DE54: 60        RTS



ofs_000_DE55_F0_respawn:
; con_tank_flag_respawn
C - - J - - 0x001E65 00:DE55: F6 A0     INC ram_tank_flags,X
C - - - - - 0x001E67 00:DE57: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001E69 00:DE59: 29 0F     AND #$0F
C - - - - - 0x001E6B 00:DE5B: C9 0E     CMP #$0E
C - - - - - 0x001E6D 00:DE5D: D0 04     BNE bra_DE63_RTS
C - - - - - 0x001E6F 00:DE5F: A9 E0     LDA #con_tank_flag_E0
C - - - - - 0x001E71 00:DE61: 95 A0     STA ram_tank_flags,X
bra_DE63_RTS:
C - - - - - 0x001E73 00:DE63: 60        RTS



ofs_000_DE64_E0:
; con_tank_flag_E0
C - - J - - 0x001E74 00:DE64: F6 A0     INC ram_tank_flags,X
C - - - - - 0x001E76 00:DE66: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001E78 00:DE68: 29 0F     AND #$0F
C - - - - - 0x001E7A 00:DE6A: C9 0E     CMP #$0E
C - - - - - 0x001E7C 00:DE6C: D0 03     BNE bra_DE71_RTS
; bzk optimize, JMP
C - - - - - 0x001E7E 00:DE6E: 20 B8 E3  JSR sub_E3B8
bra_DE71_RTS:
C - - - - - 0x001E81 00:DE71: 60        RTS



sub_DE72:
C - - - - - 0x001E82 00:DE72: A5 84     LDA ram_enemy_spawn_interval
; / 04
C - - - - - 0x001E84 00:DE74: 4A        LSR
C - - - - - 0x001E85 00:DE75: 4A        LSR
C - - - - - 0x001E86 00:DE76: C5 0A     CMP ram_frm_cnt_hi
C - - - - - 0x001E88 00:DE78: B0 05     BCS bra_DE7F
C - - - - - 0x001E8A 00:DE7A: A9 B0     LDA #con_tank_flag_follow_HQ
; bzk optimize, BNE
C - - - - - 0x001E8C 00:DE7C: 4C A2 DE  JMP loc_DEA2
bra_DE7F:
; / 02 (08)
C - - - - - 0x001E8F 00:DE7F: 4A        LSR
C - - - - - 0x001E90 00:DE80: C5 0A     CMP ram_frm_cnt_hi
C - - - - - 0x001E92 00:DE82: 90 0A     BCC bra_DE8E
C - - - - - 0x001E94 00:DE84: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x001E97 00:DE87: 29 03     AND #$03
C - - - - - 0x001E99 00:DE89: 09 A0     ORA #con_tank_flag_A0
C - - - - - 0x001E9B 00:DE8B: 95 A0     STA ram_tank_flags,X
C - - - - - 0x001E9D 00:DE8D: 60        RTS
bra_DE8E:
C - - - - - 0x001E9E 00:DE8E: A5 A0     LDA ram_tank_flags
C - - - - - 0x001EA0 00:DE90: F0 09     BEQ bra_DE9B
; if p1 is dead
C - - - - - 0x001EA2 00:DE92: 8A        TXA
C - - - - - 0x001EA3 00:DE93: 29 01     AND #$01
C - - - - - 0x001EA5 00:DE95: F0 09     BEQ bra_DEA0
C - - - - - 0x001EA7 00:DE97: A5 A1     LDA ram_tank_flags + $01
C - - - - - 0x001EA9 00:DE99: F0 05     BEQ bra_DEA0
; if p2 is alive
bra_DE9B:
C - - - - - 0x001EAB 00:DE9B: A9 C0     LDA #con_tank_flag_follow_p2
; bzk optimize, BNE
C - - - - - 0x001EAD 00:DE9D: 4C A2 DE  JMP loc_DEA2
bra_DEA0:
C - - - - - 0x001EB0 00:DEA0: A9 D0     LDA #con_tank_flag_follow_p1
loc_DEA2:
; bzk optimize, JMP
C D 2 - - - 0x001EB2 00:DEA2: 20 20 E4  JSR sub_E420_change_tank_status
C - - - - - 0x001EB5 00:DEA5: 60        RTS



sub_DEA6_tanks_handler:
C - - - - - 0x001EB6 00:DEA6: A9 00     LDA #$00
C - - - - - 0x001EB8 00:DEA8: 85 5A     STA ram_005A_t05_tank_index
bra_DEAA_loop:
C - - - - - 0x001EBA 00:DEAA: A6 5A     LDX ram_005A_t05_tank_index
C - - - - - 0x001EBC 00:DEAC: 20 B8 DE  JSR sub_DEB8_tank_handler
C - - - - - 0x001EBF 00:DEAF: E6 5A     INC ram_005A_t05_tank_index
C - - - - - 0x001EC1 00:DEB1: A5 5A     LDA ram_005A_t05_tank_index
C - - - - - 0x001EC3 00:DEB3: C9 08     CMP #$08
C - - - - - 0x001EC5 00:DEB5: D0 F3     BNE bra_DEAA_loop
C - - - - - 0x001EC7 00:DEB7: 60        RTS



sub_DEB8_tank_handler:
C - - - - - 0x001EC8 00:DEB8: B5 A0     LDA ram_tank_flags,X
; / 08
C - - - - - 0x001ECA 00:DEBA: 4A        LSR
C - - - - - 0x001ECB 00:DEBB: 4A        LSR
C - - - - - 0x001ECC 00:DEBC: 4A        LSR
C - - - - - 0x001ECD 00:DEBD: 29 FE     AND #$FE
C - - - - - 0x001ECF 00:DEBF: A8        TAY
C - - - - - 0x001ED0 00:DEC0: B9 B8 E4  LDA tbl_E4B8_tank_status_handler,Y
C - - - - - 0x001ED3 00:DEC3: 85 11     STA ram_0011_t08_jmp
C - - - - - 0x001ED5 00:DEC5: B9 B9 E4  LDA tbl_E4B8_tank_status_handler + $01,Y
C - - - - - 0x001ED8 00:DEC8: 85 12     STA ram_0011_t08_jmp + $01
C - - - - - 0x001EDA 00:DECA: 6C 11 00  JMP (ram_0011_t08_jmp)



ofs_001_DECD_50_explosion:
ofs_001_DECD_60_explosion:
ofs_001_DECD_70_explosion:
; con_tank_flag_explosion
C - - J - - 0x001EDD 00:DECD: A9 00     LDA #$00
C - - - - - 0x001EDF 00:DECF: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001EE1 00:DED1: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001EE3 00:DED3: 48        PHA
C - - - - - 0x001EE4 00:DED4: B4 98     LDY ram_tank_pos_Y,X
C - - - - - 0x001EE6 00:DED6: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001EE8 00:DED8: AA        TAX
C - - - - - 0x001EE9 00:DED9: 68        PLA
C - - - - - 0x001EEA 00:DEDA: 20 E2 DE  JSR sub_DEE2_draw_bullet_explosion
C - - - - - 0x001EED 00:DEDD: A9 20     LDA #$20
C - - - - - 0x001EEF 00:DEDF: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001EF1 00:DEE1: 60        RTS



sub_DEE2_draw_bullet_explosion:
; in
    ; A = con_tank_flag or ram_bullet_status
    ; X = spr_X
    ; Y = spr_Y
    ; ram_priority_spr_A
; / 10
C - - - - - 0x001EF2 00:DEE2: 4A        LSR
C - - - - - 0x001EF3 00:DEE3: 4A        LSR
C - - - - - 0x001EF4 00:DEE4: 4A        LSR
C - - - - - 0x001EF5 00:DEE5: 4A        LSR
C - - - - - 0x001EF6 00:DEE6: 38        SEC
C - - - - - 0x001EF7 00:DEE7: E9 07     SBC #$07
C - - - - - 0x001EF9 00:DEE9: 49 FF     EOR #$FF
C - - - - - 0x001EFB 00:DEEB: 18        CLC
C - - - - - 0x001EFC 00:DEEC: 69 01     ADC #$01
; * 04
C - - - - - 0x001EFE 00:DEEE: 0A        ASL
C - - - - - 0x001EFF 00:DEEF: 0A        ASL
sub_DEF0:
; in
    ; X = spr_X
    ; Y = spr_Y
    ; ram_priority_spr_A
C - - - - - 0x001F00 00:DEF0: 18        CLC
C - - - - - 0x001F01 00:DEF1: 69 F1     ADC #$F1
C - - - - - 0x001F03 00:DEF3: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x001F05 00:DEF5: A9 03     LDA #$03
C - - - - - 0x001F07 00:DEF7: 85 04     STA ram_0004_t01_spr_A_palette
; bzk optimize, JMP
C - - - - - 0x001F09 00:DEF9: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001F0C 00:DEFC: 60        RTS



ofs_001_DEFD_10_kill_points:
C - - J - - 0x001F0D 00:DEFD: A9 00     LDA #$00
C - - - - - 0x001F0F 00:DEFF: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001F11 00:DF01: B5 A8     LDA ram_tank_type,X
C - - - - - 0x001F13 00:DF03: F0 1E     BEQ bra_DF23
C - - - - - 0x001F15 00:DF05: B5 A8     LDA ram_tank_type,X
; / 08
C - - - - - 0x001F17 00:DF07: 4A        LSR
C - - - - - 0x001F18 00:DF08: 4A        LSR
C - - - - - 0x001F19 00:DF09: 4A        LSR
C - - - - - 0x001F1A 00:DF0A: 29 FC     AND #$FC
C - - - - - 0x001F1C 00:DF0C: 38        SEC
C - - - - - 0x001F1D 00:DF0D: E9 10     SBC #$10
C - - - - - 0x001F1F 00:DF0F: 18        CLC
C - - - - - 0x001F20 00:DF10: 69 B9     ADC #$B9
C - - - - - 0x001F22 00:DF12: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x001F24 00:DF14: A9 03     LDA #$03
C - - - - - 0x001F26 00:DF16: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x001F28 00:DF18: B4 98     LDY ram_tank_pos_Y,X    ; spr_Y
C - - - - - 0x001F2A 00:DF1A: B5 90     LDA ram_tank_pos_X,X    ; spr_X
C - - - - - 0x001F2C 00:DF1C: AA        TAX ; spr_X
C - - - - - 0x001F2D 00:DF1D: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001F30 00:DF20: 4C 2E DF  JMP loc_DF2E
bra_DF23:
C - - - - - 0x001F33 00:DF23: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x001F35 00:DF25: A8        TAY
C - - - - - 0x001F36 00:DF26: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001F38 00:DF28: AA        TAX
C - - - - - 0x001F39 00:DF29: A9 00     LDA #$00
C - - - - - 0x001F3B 00:DF2B: 20 F0 DE  JSR sub_DEF0
loc_DF2E:
C D 2 - - - 0x001F3E 00:DF2E: A9 20     LDA #$20
C - - - - - 0x001F40 00:DF30: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001F42 00:DF32: 60        RTS



ofs_001_DF33_20_explosion:
C - - J - - 0x001F43 00:DF33: A9 00     LDA #$00
C - - - - - 0x001F45 00:DF35: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001F47 00:DF37: B4 98     LDY ram_tank_pos_Y,X
C - - - - - 0x001F49 00:DF39: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001F4B 00:DF3B: AA        TAX
C - - - - - 0x001F4C 00:DF3C: A9 08     LDA #$08
C - - - - - 0x001F4E 00:DF3E: 20 F0 DE  JSR sub_DEF0
C - - - - - 0x001F51 00:DF41: A9 20     LDA #$20
C - - - - - 0x001F53 00:DF43: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001F55 00:DF45: 60        RTS



ofs_001_DF46_30_explosion:
ofs_001_DF46_40_explosion:
C - - J - - 0x001F56 00:DF46: A9 03     LDA #$03
C - - - - - 0x001F58 00:DF48: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x001F5A 00:DF4A: A9 00     LDA #$00
C - - - - - 0x001F5C 00:DF4C: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001F5E 00:DF4E: 20 99 DF  JSR sub_DF99
C - - - - - 0x001F61 00:DF51: 8A        TXA
C - - - - - 0x001F62 00:DF52: 38        SEC
C - - - - - 0x001F63 00:DF53: E9 08     SBC #$08
C - - - - - 0x001F65 00:DF55: AA        TAX ; spr_X
C - - - - - 0x001F66 00:DF56: 98        TYA
C - - - - - 0x001F67 00:DF57: 38        SEC
C - - - - - 0x001F68 00:DF58: E9 08     SBC #$08
C - - - - - 0x001F6A 00:DF5A: A8        TAY ; spr_Y
C - - - - - 0x001F6B 00:DF5B: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001F6E 00:DF5E: A9 01     LDA #$01
C - - - - - 0x001F70 00:DF60: 20 99 DF  JSR sub_DF99
C - - - - - 0x001F73 00:DF63: 8A        TXA
C - - - - - 0x001F74 00:DF64: 18        CLC
C - - - - - 0x001F75 00:DF65: 69 08     ADC #$08
C - - - - - 0x001F77 00:DF67: AA        TAX ; spr_X
C - - - - - 0x001F78 00:DF68: 98        TYA
C - - - - - 0x001F79 00:DF69: 38        SEC
C - - - - - 0x001F7A 00:DF6A: E9 08     SBC #$08
C - - - - - 0x001F7C 00:DF6C: A8        TAY ; spr_Y
C - - - - - 0x001F7D 00:DF6D: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001F80 00:DF70: A9 02     LDA #$02
C - - - - - 0x001F82 00:DF72: 20 99 DF  JSR sub_DF99
C - - - - - 0x001F85 00:DF75: 8A        TXA
C - - - - - 0x001F86 00:DF76: 38        SEC
C - - - - - 0x001F87 00:DF77: E9 08     SBC #$08
C - - - - - 0x001F89 00:DF79: AA        TAX ; spr_X
C - - - - - 0x001F8A 00:DF7A: 98        TYA
C - - - - - 0x001F8B 00:DF7B: 18        CLC
C - - - - - 0x001F8C 00:DF7C: 69 08     ADC #$08
C - - - - - 0x001F8E 00:DF7E: A8        TAY ; spr_Y
C - - - - - 0x001F8F 00:DF7F: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001F92 00:DF82: A9 03     LDA #$03
C - - - - - 0x001F94 00:DF84: 20 99 DF  JSR sub_DF99
C - - - - - 0x001F97 00:DF87: 8A        TXA
C - - - - - 0x001F98 00:DF88: 18        CLC
C - - - - - 0x001F99 00:DF89: 69 08     ADC #$08
C - - - - - 0x001F9B 00:DF8B: AA        TAX ; spr_X
C - - - - - 0x001F9C 00:DF8C: 98        TYA
C - - - - - 0x001F9D 00:DF8D: 18        CLC
C - - - - - 0x001F9E 00:DF8E: 69 08     ADC #$08
C - - - - - 0x001FA0 00:DF90: A8        TAY ; spr_Y
C - - - - - 0x001FA1 00:DF91: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x001FA4 00:DF94: A9 20     LDA #$20
C - - - - - 0x001FA6 00:DF96: 85 6E     STA ram_priority_spr_A
C - - - - - 0x001FA8 00:DF98: 60        RTS



sub_DF99:
C - - - - - 0x001FA9 00:DF99: A6 5A     LDX ram_005A_t05_tank_index
; * 04
C - - - - - 0x001FAB 00:DF9B: 0A        ASL
C - - - - - 0x001FAC 00:DF9C: 0A        ASL
C - - - - - 0x001FAD 00:DF9D: 18        CLC
C - - - - - 0x001FAE 00:DF9E: 69 D1     ADC #$D1
C - - - - - 0x001FB0 00:DFA0: 85 00     STA ram_0000_t08
C - - - - - 0x001FB2 00:DFA2: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001FB4 00:DFA4: 29 F0     AND #$F0
C - - - - - 0x001FB6 00:DFA6: 38        SEC
C - - - - - 0x001FB7 00:DFA7: E9 30     SBC #$30
C - - - - - 0x001FB9 00:DFA9: 49 10     EOR #$10
C - - - - - 0x001FBB 00:DFAB: 18        CLC
C - - - - - 0x001FBC 00:DFAC: 65 00     ADC ram_0000_t08
C - - - - - 0x001FBE 00:DFAE: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x001FC0 00:DFB0: B4 98     LDY ram_tank_pos_Y,X
C - - - - - 0x001FC2 00:DFB2: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x001FC4 00:DFB4: AA        TAX
C - - - - - 0x001FC5 00:DFB5: 60        RTS



ofs_001_DFB6_80:
; con_tank_flag_80
ofs_001_DFB6_90:
; con_tank_flag_90
ofs_001_DFB6_A0:
; con_tank_flag_A0
ofs_001_DFB6_B0_follow_HQ:
; con_tank_flag_follow_HQ
ofs_001_DFB6_C0_follow_p2:
; con_tank_flag_follow_p2
ofs_001_DFB6_D0_follow_p1:
; con_tank_flag_follow_p1
C - - J - - 0x001FC6 00:DFB6: E0 02     CPX #$02
C - - - - - 0x001FC8 00:DFB8: 90 23     BCC bra_DFDD_player
; if enemy
C - - - - - 0x001FCA 00:DFBA: B5 A8     LDA ram_tank_type,X
C - - - - - 0x001FCC 00:DFBC: 29 04     AND #$04
C - - - - - 0x001FCE 00:DFBE: F0 0D     BEQ bra_DFCD
C - - - - - 0x001FD0 00:DFC0: A5 0B     LDA ram_frm_cnt_lo
; / 08
C - - - - - 0x001FD2 00:DFC2: 4A        LSR
C - - - - - 0x001FD3 00:DFC3: 4A        LSR
C - - - - - 0x001FD4 00:DFC4: 4A        LSR
C - - - - - 0x001FD5 00:DFC5: 29 01     AND #$01
C - - - - - 0x001FD7 00:DFC7: 18        CLC
C - - - - - 0x001FD8 00:DFC8: 69 02     ADC #$02
C - - - - - 0x001FDA 00:DFCA: 4C E9 DF  JMP loc_DFE9_display_sprites
bra_DFCD:
C - - - - - 0x001FDD 00:DFCD: A5 0B     LDA ram_frm_cnt_lo
; * 04
C - - - - - 0x001FDF 00:DFCF: 0A        ASL
C - - - - - 0x001FE0 00:DFD0: 0A        ASL
C - - - - - 0x001FE1 00:DFD1: 18        CLC
C - - - - - 0x001FE2 00:DFD2: 75 A8     ADC ram_tank_type,X
C - - - - - 0x001FE4 00:DFD4: 29 07     AND #$07
C - - - - - 0x001FE6 00:DFD6: A8        TAY
C - - - - - 0x001FE7 00:DFD7: B9 03 E0  LDA tbl_E003_spr_A_palette,Y
C - - - - - 0x001FEA 00:DFDA: 4C E9 DF  JMP loc_DFE9_display_sprites
bra_DFDD_player:
C - - - - - 0x001FED 00:DFDD: B5 6F     LDA ram_plr_stun_timer,X
C - - - - - 0x001FEF 00:DFDF: F0 07     BEQ bra_DFE8
; if stunned
C - - - - - 0x001FF1 00:DFE1: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x001FF3 00:DFE3: 29 08     AND #$08
C - - - - - 0x001FF5 00:DFE5: F0 01     BEQ bra_DFE8
; if invisible at the moment
C - - - - - 0x001FF7 00:DFE7: 60        RTS
bra_DFE8:
C - - - - - 0x001FF8 00:DFE8: 8A        TXA
loc_DFE9_display_sprites:
C D 2 - - - 0x001FF9 00:DFE9: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x001FFB 00:DFEB: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x001FFD 00:DFED: 29 03     AND #$03
C - - - - - 0x001FFF 00:DFEF: 48        PHA ; spr_T
C - - - - - 0x002000 00:DFF0: B5 A8     LDA ram_tank_type,X
C - - - - - 0x002002 00:DFF2: 29 F0     AND #$F0
C - - - - - 0x002004 00:DFF4: 18        CLC
C - - - - - 0x002005 00:DFF5: 75 B0     ADC ram_tank_wheels,X
C - - - - - 0x002007 00:DFF7: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x002009 00:DFF9: B4 98     LDY ram_tank_pos_Y,X    ; spr_Y
C - - - - - 0x00200B 00:DFFB: B5 90     LDA ram_tank_pos_X,X    ; spr_X
C - - - - - 0x00200D 00:DFFD: AA        TAX ; spr_X
C - - - - - 0x00200E 00:DFFE: 68        PLA ; spr_T
; bzk optimize, JMP
C - - - - - 0x00200F 00:DFFF: 20 73 DA  JSR sub_DA73_display_2_sprites
C - - - - - 0x002012 00:E002: 60        RTS



tbl_E003_spr_A_palette:
- D 3 - - - 0x002013 00:E003: 02        .byte $02   ; 00 
- D 3 - - - 0x002014 00:E004: 00        .byte $00   ; 01 
- D 3 - - - 0x002015 00:E005: 00        .byte $00   ; 02 
- D 3 - - - 0x002016 00:E006: 01        .byte $01   ; 03 
- D 3 - - - 0x002017 00:E007: 02        .byte $02   ; 04 
- D 3 - - - 0x002018 00:E008: 01        .byte $01   ; 05 
- D 3 - - - 0x002019 00:E009: 02        .byte $02   ; 06 
- D 3 - - - 0x00201A 00:E00A: 02        .byte $02   ; 07 



ofs_001_E00B_E0:
; con_tank_flag_E0
ofs_001_E00B_F0_respawn:
; con_tank_flag_respawn
C - - J - - 0x00201B 00:E00B: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x00201D 00:E00D: 29 0F     AND #$0F
C - - - - - 0x00201F 00:E00F: 38        SEC
C - - - - - 0x002020 00:E010: E9 07     SBC #$07
C - - - - - 0x002022 00:E012: 10 05     BPL bra_E019
; EOR if negative
C - - - - - 0x002024 00:E014: 49 FF     EOR #$FF
C - - - - - 0x002026 00:E016: 18        CLC
C - - - - - 0x002027 00:E017: 69 01     ADC #$01
bra_E019:
C - - - - - 0x002029 00:E019: 0A        ASL
C - - - - - 0x00202A 00:E01A: 29 FC     AND #$FC
C - - - - - 0x00202C 00:E01C: 18        CLC
C - - - - - 0x00202D 00:E01D: 69 A1     ADC #$A1
C - - - - - 0x00202F 00:E01F: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x002031 00:E021: A9 03     LDA #$03
C - - - - - 0x002033 00:E023: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x002035 00:E025: B4 98     LDY ram_tank_pos_Y,X    ; spr_Y
C - - - - - 0x002037 00:E027: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x002039 00:E029: AA        TAX ; spr_X
; bzk optimize, JMP
C - - - - - 0x00203A 00:E02A: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x00203D 00:E02D: 60        RTS



sub_E02E_bullets_status_handler:
C - - - - - 0x00203E 00:E02E: A9 09     LDA #$09
C - - - - - 0x002040 00:E030: 85 5A     STA ram_005A_t07_bullet_index
bra_E032_loop:
C - - - - - 0x002042 00:E032: A6 5A     LDX ram_005A_t07_bullet_index
C - - - - - 0x002044 00:E034: 20 3C E0  JSR sub_E03C_bullet_status_handler
C - - - - - 0x002047 00:E037: C6 5A     DEC ram_005A_t07_bullet_index
C - - - - - 0x002049 00:E039: 10 F7     BPL bra_E032_loop
C - - - - - 0x00204B 00:E03B: 60        RTS



sub_E03C_bullet_status_handler:
C - - - - - 0x00204C 00:E03C: B5 CC     LDA ram_bullet_status,X
; / 08
C - - - - - 0x00204E 00:E03E: 4A        LSR
C - - - - - 0x00204F 00:E03F: 4A        LSR
C - - - - - 0x002050 00:E040: 4A        LSR
C - - - - - 0x002051 00:E041: 29 FE     AND #$FE
C - - - - - 0x002053 00:E043: A8        TAY
C - - - - - 0x002054 00:E044: B9 D8 E4  LDA tbl_E4D8_bullet_status_handler,Y
C - - - - - 0x002057 00:E047: 85 11     STA ram_0011_t07_jmp
C - - - - - 0x002059 00:E049: B9 D9 E4  LDA tbl_E4D8_bullet_status_handler + $01,Y
C - - - - - 0x00205C 00:E04C: 85 12     STA ram_0011_t07_jmp + $01
C - - - - - 0x00205E 00:E04E: 6C 11 00  JMP (ram_0011_t07_jmp)



ofs_002_E051_40:
C - - J - - 0x002061 00:E051: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x002063 00:E053: 29 03     AND #$03
C - - - - - 0x002065 00:E055: A8        TAY
C - - - - - 0x002066 00:E056: 20 63 E0  JSR sub_E063
C - - - - - 0x002069 00:E059: B5 D6     LDA ram_bullet_property,X
C - - - - - 0x00206B 00:E05B: 29 01     AND #$01
C - - - - - 0x00206D 00:E05D: F0 03     BEQ bra_E062_RTS
; bzk optimize, JMP
C - - - - - 0x00206F 00:E05F: 20 63 E0  JSR sub_E063
bra_E062_RTS:
C - - - - - 0x002072 00:E062: 60        RTS



sub_E063:
C - - - - - 0x002073 00:E063: B9 6C E4  LDA tbl_E46C,Y
C - - - - - 0x002076 00:E066: 0A        ASL
C - - - - - 0x002077 00:E067: 18        CLC
C - - - - - 0x002078 00:E068: 75 B8     ADC ram_bullet_pos_X,X
C - - - - - 0x00207A 00:E06A: 95 B8     STA ram_bullet_pos_X,X
C - - - - - 0x00207C 00:E06C: B9 70 E4  LDA tbl_E470,Y
C - - - - - 0x00207F 00:E06F: 0A        ASL
C - - - - - 0x002080 00:E070: 18        CLC
C - - - - - 0x002081 00:E071: 75 C2     ADC ram_bullet_pos_Y,X
C - - - - - 0x002083 00:E073: 95 C2     STA ram_bullet_pos_Y,X
C - - - - - 0x002085 00:E075: 60        RTS



ofs_002_E076_10:
ofs_002_E076_20:
ofs_002_E076_30:
C - - J - - 0x002086 00:E076: D6 CC     DEC ram_bullet_status,X
C - - - - - 0x002088 00:E078: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x00208A 00:E07A: 29 0F     AND #$0F
C - - - - - 0x00208C 00:E07C: D0 0D     BNE bra_E08B_RTS
C - - - - - 0x00208E 00:E07E: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x002090 00:E080: 29 F0     AND #$F0
C - - - - - 0x002092 00:E082: 38        SEC
C - - - - - 0x002093 00:E083: E9 10     SBC #$10
C - - - - - 0x002095 00:E085: F0 02     BEQ bra_E089
C - - - - - 0x002097 00:E087: 09 03     ORA #$03
bra_E089:
C - - - - - 0x002099 00:E089: 95 CC     STA ram_bullet_status,X
bra_E08B_RTS:
C - - - - - 0x00209B 00:E08B: 60        RTS



sub_E08C_bullets:
C - - - - - 0x00209C 00:E08C: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x00209E 00:E08E: D0 47     BNE bra_E0D7_RTS
C - - - - - 0x0020A0 00:E090: E0 02     CPX #$02
C - - - - - 0x0020A2 00:E092: B0 05     BCS bra_E099_player
; if player
C - - - - - 0x0020A4 00:E094: A9 01     LDA #$01
C - - - - - 0x0020A6 00:E096: 8D 0F 03  STA ram_sfx_shot
bra_E099_player:
C - - - - - 0x0020A9 00:E099: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x0020AB 00:E09B: 29 03     AND #$03
C - - - - - 0x0020AD 00:E09D: A8        TAY
C - - - - - 0x0020AE 00:E09E: 09 40     ORA #$40
C - - - - - 0x0020B0 00:E0A0: 95 CC     STA ram_bullet_status,X
C - - - - - 0x0020B2 00:E0A2: B9 6C E4  LDA tbl_E46C,Y
; * 08
C - - - - - 0x0020B5 00:E0A5: 0A        ASL
C - - - - - 0x0020B6 00:E0A6: 0A        ASL
C - - - - - 0x0020B7 00:E0A7: 0A        ASL
C - - - - - 0x0020B8 00:E0A8: 18        CLC
C - - - - - 0x0020B9 00:E0A9: 75 90     ADC ram_tank_pos_X,X
C - - - - - 0x0020BB 00:E0AB: 95 B8     STA ram_bullet_pos_X,X
C - - - - - 0x0020BD 00:E0AD: B9 70 E4  LDA tbl_E470,Y
; * 08
C - - - - - 0x0020C0 00:E0B0: 0A        ASL
C - - - - - 0x0020C1 00:E0B1: 0A        ASL
C - - - - - 0x0020C2 00:E0B2: 0A        ASL
C - - - - - 0x0020C3 00:E0B3: 18        CLC
C - - - - - 0x0020C4 00:E0B4: 75 98     ADC ram_tank_pos_Y,X
C - - - - - 0x0020C6 00:E0B6: 95 C2     STA ram_bullet_pos_Y,X
C - - - - - 0x0020C8 00:E0B8: A9 00     LDA #$00
C - - - - - 0x0020CA 00:E0BA: 95 D6     STA ram_bullet_property,X
C - - - - - 0x0020CC 00:E0BC: B5 A8     LDA ram_tank_type,X
C - - - - - 0x0020CE 00:E0BE: 29 F0     AND #$F0
C - - - - - 0x0020D0 00:E0C0: F0 15     BEQ bra_E0D7_RTS
C - - - - - 0x0020D2 00:E0C2: C9 C0     CMP #$C0
C - - - - - 0x0020D4 00:E0C4: F0 08     BEQ bra_E0CE
C - - - - - 0x0020D6 00:E0C6: C9 60     CMP #$60
C - - - - - 0x0020D8 00:E0C8: F0 09     BEQ bra_E0D3
C - - - - - 0x0020DA 00:E0CA: 29 80     AND #$80
C - - - - - 0x0020DC 00:E0CC: D0 09     BNE bra_E0D7_RTS
bra_E0CE:
C - - - - - 0x0020DE 00:E0CE: A9 01     LDA #$01
C - - - - - 0x0020E0 00:E0D0: 95 D6     STA ram_bullet_property,X
C - - - - - 0x0020E2 00:E0D2: 60        RTS
bra_E0D3:
C - - - - - 0x0020E3 00:E0D3: A9 03     LDA #$03
C - - - - - 0x0020E5 00:E0D5: 95 D6     STA ram_bullet_property,X
bra_E0D7_RTS:
C - - - - - 0x0020E7 00:E0D7: 60        RTS



sub_E0D8_bullets_status_handler:
C - - - - - 0x0020E8 00:E0D8: A9 09     LDA #$09
C - - - - - 0x0020EA 00:E0DA: 85 5A     STA ram_005A_t08_bullet_index
bra_E0DC_loop:
C - - - - - 0x0020EC 00:E0DC: A6 5A     LDX ram_005A_t08_bullet_index
C - - - - - 0x0020EE 00:E0DE: 20 E6 E0  JSR sub_E0E6_bullet_status_handler
C - - - - - 0x0020F1 00:E0E1: C6 5A     DEC ram_005A_t08_bullet_index
C - - - - - 0x0020F3 00:E0E3: 10 F7     BPL bra_E0DC_loop
C - - - - - 0x0020F5 00:E0E5: 60        RTS



sub_E0E6_bullet_status_handler:
C - - - - - 0x0020F6 00:E0E6: B5 CC     LDA ram_bullet_status,X
; / 08
C - - - - - 0x0020F8 00:E0E8: 4A        LSR
C - - - - - 0x0020F9 00:E0E9: 4A        LSR
C - - - - - 0x0020FA 00:E0EA: 4A        LSR
C - - - - - 0x0020FB 00:E0EB: 29 FE     AND #$FE
C - - - - - 0x0020FD 00:E0ED: A8        TAY
C - - - - - 0x0020FE 00:E0EE: B9 E2 E4  LDA tbl_E4E2_bullet_status_handler,Y
C - - - - - 0x002101 00:E0F1: 85 11     STA ram_0011_t06_jmp
C - - - - - 0x002103 00:E0F3: B9 E3 E4  LDA tbl_E4E2_bullet_status_handler + $01,Y
C - - - - - 0x002106 00:E0F6: 85 12     STA ram_0011_t06_jmp + $01
C - - - - - 0x002108 00:E0F8: 6C 11 00  JMP (ram_0011_t06_jmp)



ofs_003_E0FB_40:
C - - J - - 0x00210B 00:E0FB: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x00210D 00:E0FD: 29 03     AND #$03
C - - - - - 0x00210F 00:E0FF: 48        PHA
C - - - - - 0x002110 00:E100: B4 C2     LDY ram_bullet_pos_Y,X
C - - - - - 0x002112 00:E102: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x002114 00:E104: AA        TAX
C - - - - - 0x002115 00:E105: A9 02     LDA #$02
C - - - - - 0x002117 00:E107: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x002119 00:E109: A9 B1     LDA #$B1
C - - - - - 0x00211B 00:E10B: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x00211D 00:E10D: 68        PLA
; bzk optimize, JMP
C - - - - - 0x00211E 00:E10E: 20 64 DA  JSR sub_DA64
C - - - - - 0x002121 00:E111: 60        RTS



ofs_003_E112_10:
ofs_003_E112_20:
ofs_003_E112_30:
C - - J - - 0x002122 00:E112: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x002124 00:E114: 48        PHA
C - - - - - 0x002125 00:E115: B4 C2     LDY ram_bullet_pos_Y,X
C - - - - - 0x002127 00:E117: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x002129 00:E119: AA        TAX
C - - - - - 0x00212A 00:E11A: 68        PLA
C - - - - - 0x00212B 00:E11B: 18        CLC
C - - - - - 0x00212C 00:E11C: 69 40     ADC #$40
; bzk optimize, JMP
C - - - - - 0x00212E 00:E11E: 20 E2 DE  JSR sub_DEE2_draw_bullet_explosion
C - - - - - 0x002131 00:E121: 60        RTS



sub_E122:
C - - - - - 0x002132 00:E122: A9 01     LDA #$01
C - - - - - 0x002134 00:E124: 85 5A     STA ram_005A_t09
bra_E126_loop:
C - - - - - 0x002136 00:E126: A6 5A     LDX ram_005A_t09
C - - - - - 0x002138 00:E128: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x00213A 00:E12A: 10 31     BPL bra_E15D
C - - - - - 0x00213C 00:E12C: C9 E0     CMP #$E0
C - - - - - 0x00213E 00:E12E: B0 2D     BCS bra_E15D
C - - - - - 0x002140 00:E130: B5 08     LDA ram_btn_press,X
C - - - - - 0x002142 00:E132: 29 03     AND #con_btns_AB
C - - - - - 0x002144 00:E134: F0 27     BEQ bra_E15D
C - - - - - 0x002146 00:E136: B5 A8     LDA ram_tank_type,X
C - - - - - 0x002148 00:E138: 29 C0     AND #$C0
C - - - - - 0x00214A 00:E13A: C9 40     CMP #$40
C - - - - - 0x00214C 00:E13C: D0 1C     BNE bra_E15A
C - - - - - 0x00214E 00:E13E: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x002150 00:E140: F0 18     BEQ bra_E15A
C - - - - - 0x002152 00:E142: B5 D4     LDA ram_2nd_bullet_status,X
C - - - - - 0x002154 00:E144: D0 17     BNE bra_E15D
C - - - - - 0x002156 00:E146: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x002158 00:E148: 95 D4     STA ram_2nd_bullet_status,X
C - - - - - 0x00215A 00:E14A: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x00215C 00:E14C: 95 C0     STA ram_2nd_bullet_pos_X,X
C - - - - - 0x00215E 00:E14E: B5 C2     LDA ram_bullet_pos_Y,X
C - - - - - 0x002160 00:E150: 95 CA     STA ram_2nd_bullet_pos_Y,X
C - - - - - 0x002162 00:E152: B5 D6     LDA ram_bullet_property,X
C - - - - - 0x002164 00:E154: 95 DE     STA ram_2nd_bullet_property,X
C - - - - - 0x002166 00:E156: A9 00     LDA #$00
C - - - - - 0x002168 00:E158: 95 CC     STA ram_bullet_status,X
bra_E15A:
C - - - - - 0x00216A 00:E15A: 20 8C E0  JSR sub_E08C_bullets
bra_E15D:
C - - - - - 0x00216D 00:E15D: C6 5A     DEC ram_005A_t09
C - - - - - 0x00216F 00:E15F: 10 C5     BPL bra_E126_loop
C - - - - - 0x002171 00:E161: 60        RTS



sub_E162:
C - - - - - 0x002172 00:E162: AD 00 01  LDA ram_clock_timer
C - - - - - 0x002175 00:E165: D0 19     BNE bra_E180_RTS
C - - - - - 0x002177 00:E167: A2 07     LDX #$07
bra_E169_loop:
C - - - - - 0x002179 00:E169: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x00217B 00:E16B: 10 0E     BPL bra_E17B
C - - - - - 0x00217D 00:E16D: C9 E0     CMP #$E0
C - - - - - 0x00217F 00:E16F: B0 0A     BCS bra_E17B
C - - - - - 0x002181 00:E171: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x002184 00:E174: 29 1F     AND #$1F
C - - - - - 0x002186 00:E176: D0 03     BNE bra_E17B
C - - - - - 0x002188 00:E178: 20 8C E0  JSR sub_E08C_bullets
bra_E17B:
C - - - - - 0x00218B 00:E17B: CA        DEX
C - - - - - 0x00218C 00:E17C: E0 01     CPX #$01
C - - - - - 0x00218E 00:E17E: D0 E9     BNE bra_E169_loop
bra_E180_RTS:
C - - - - - 0x002190 00:E180: 60        RTS



sub_E181_ice_detection:
C - - - - - 0x002191 00:E181: A9 07     LDA #$07
C - - - - - 0x002193 00:E183: 85 5A     STA ram_005A_t10_tank_index
bra_E185_loop:
C - - - - - 0x002195 00:E185: A6 5A     LDX ram_005A_t10_tank_index
C - - - - - 0x002197 00:E187: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002199 00:E189: 10 63     BPL bra_E1EE
C - - - - - 0x00219B 00:E18B: C9 E0     CMP #$E0
C - - - - - 0x00219D 00:E18D: B0 5F     BCS bra_E1EE
C - - - - - 0x00219F 00:E18F: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x0021A1 00:E191: 38        SEC
C - - - - - 0x0021A2 00:E192: E9 08     SBC #$08
C - - - - - 0x0021A4 00:E194: A8        TAY
C - - - - - 0x0021A5 00:E195: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x0021A7 00:E197: 38        SEC
C - - - - - 0x0021A8 00:E198: E9 08     SBC #$08
C - - - - - 0x0021AA 00:E19A: AA        TAX
C - - - - - 0x0021AB 00:E19B: 20 06 D7  JSR sub_D706_divide_by_08_and_calculate_pointer
C - - - - - 0x0021AE 00:E19E: A6 5A     LDX ram_005A_t10_tank_index
C - - - - - 0x0021B0 00:E1A0: A5 11     LDA ram_0011_t14_data
C - - - - - 0x0021B2 00:E1A2: 95 E0     STA ram_tank_stage_pos_lo,X
C - - - - - 0x0021B4 00:E1A4: A5 12     LDA ram_0011_t14_data + $01
C - - - - - 0x0021B6 00:E1A6: 29 03     AND #$03
C - - - - - 0x0021B8 00:E1A8: 95 E8     STA ram_tank_stage_pos_hi,X
C - - - - - 0x0021BA 00:E1AA: A0 21     LDY #$21
C - - - - - 0x0021BC 00:E1AC: E0 02     CPX #$02
C - - - - - 0x0021BE 00:E1AE: B0 19     BCS bra_E1C9_enemy
; if player
C - - - - - 0x0021C0 00:E1B0: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0021C2 00:E1B2: C9 21     CMP #$21
C - - - - - 0x0021C4 00:E1B4: D0 0B     BNE bra_E1C1
C - - - - - 0x0021C6 00:E1B6: A9 80     LDA #$80
C - - - - - 0x0021C8 00:E1B8: 1D 03 01  ORA ram_0103_plr,X
C - - - - - 0x0021CB 00:E1BB: 9D 03 01  STA ram_0103_plr,X
C - - - - - 0x0021CE 00:E1BE: 4C C9 E1  JMP loc_E1C9
bra_E1C1:
C - - - - - 0x0021D1 00:E1C1: BD 03 01  LDA ram_0103_plr,X
C - - - - - 0x0021D4 00:E1C4: 29 7F     AND #$7F
C - - - - - 0x0021D6 00:E1C6: 9D 03 01  STA ram_0103_plr,X
bra_E1C9_enemy:
loc_E1C9:
C D 3 - - - 0x0021D9 00:E1C9: 20 F3 E1  JSR sub_E1F3_set_bit7
C - - - - - 0x0021DC 00:E1CC: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x0021DE 00:E1CE: 29 07     AND #$07
C - - - - - 0x0021E0 00:E1D0: D0 0B     BNE bra_E1DD
C - - - - - 0x0021E2 00:E1D2: B5 E8     LDA ram_tank_stage_pos_hi,X
C - - - - - 0x0021E4 00:E1D4: 09 80     ORA #$80
C - - - - - 0x0021E6 00:E1D6: 95 E8     STA ram_tank_stage_pos_hi,X
C - - - - - 0x0021E8 00:E1D8: A0 20     LDY #$20
C - - - - - 0x0021EA 00:E1DA: 20 F3 E1  JSR sub_E1F3_set_bit7
bra_E1DD:
C - - - - - 0x0021ED 00:E1DD: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x0021EF 00:E1DF: 29 07     AND #$07
C - - - - - 0x0021F1 00:E1E1: D0 0B     BNE bra_E1EE
C - - - - - 0x0021F3 00:E1E3: B5 E8     LDA ram_tank_stage_pos_hi,X
C - - - - - 0x0021F5 00:E1E5: 09 40     ORA #$40
C - - - - - 0x0021F7 00:E1E7: 95 E8     STA ram_tank_stage_pos_hi,X
C - - - - - 0x0021F9 00:E1E9: A0 01     LDY #$01
C - - - - - 0x0021FB 00:E1EB: 20 F3 E1  JSR sub_E1F3_set_bit7
bra_E1EE:
C - - - - - 0x0021FE 00:E1EE: C6 5A     DEC ram_005A_t10_tank_index
C - - - - - 0x002200 00:E1F0: 10 93     BPL bra_E185_loop
C - - - - - 0x002202 00:E1F2: 60        RTS



sub_E1F3_set_bit7:
C - - - - - 0x002203 00:E1F3: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x002205 00:E1F5: 09 80     ORA #$80
C - - - - - 0x002207 00:E1F7: 91 11     STA (ram_0011_t14_data),Y
C - - - - - 0x002209 00:E1F9: 60        RTS



sub_E1FA:
C - - - - - 0x00220A 00:E1FA: A9 07     LDA #$07
C - - - - - 0x00220C 00:E1FC: 85 5A     STA ram_005A_t11_tank_index
bra_E1FE_loop:
C - - - - - 0x00220E 00:E1FE: A6 5A     LDX ram_005A_t11_tank_index
C - - - - - 0x002210 00:E200: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002212 00:E202: 10 2B     BPL bra_E22F
C - - - - - 0x002214 00:E204: C9 E0     CMP #$E0
C - - - - - 0x002216 00:E206: B0 27     BCS bra_E22F
C - - - - - 0x002218 00:E208: B5 E0     LDA ram_tank_stage_pos_lo,X
C - - - - - 0x00221A 00:E20A: 85 11     STA ram_0011_t15_data
C - - - - - 0x00221C 00:E20C: B5 E8     LDA ram_tank_stage_pos_hi,X
C - - - - - 0x00221E 00:E20E: 29 03     AND #$03
C - - - - - 0x002220 00:E210: 09 04     ORA #$04    ; > ram_stage_data
C - - - - - 0x002222 00:E212: 85 12     STA ram_0011_t15_data + $01
C - - - - - 0x002224 00:E214: A0 21     LDY #$21
C - - - - - 0x002226 00:E216: 20 34 E2  JSR sub_E234_clear_bit7
C - - - - - 0x002229 00:E219: B5 E8     LDA ram_tank_stage_pos_hi,X
C - - - - - 0x00222B 00:E21B: 29 80     AND #$80
C - - - - - 0x00222D 00:E21D: F0 05     BEQ bra_E224
C - - - - - 0x00222F 00:E21F: A0 20     LDY #$20
C - - - - - 0x002231 00:E221: 20 34 E2  JSR sub_E234_clear_bit7
bra_E224:
C - - - - - 0x002234 00:E224: B5 E8     LDA ram_tank_stage_pos_hi,X
C - - - - - 0x002236 00:E226: 29 40     AND #$40
C - - - - - 0x002238 00:E228: F0 05     BEQ bra_E22F
C - - - - - 0x00223A 00:E22A: A0 01     LDY #$01
C - - - - - 0x00223C 00:E22C: 20 34 E2  JSR sub_E234_clear_bit7
bra_E22F:
C - - - - - 0x00223F 00:E22F: C6 5A     DEC ram_005A_t11_tank_index
C - - - - - 0x002241 00:E231: 10 CB     BPL bra_E1FE_loop
C - - - - - 0x002243 00:E233: 60        RTS



sub_E234_clear_bit7:
; bzk bug? this refers to 0800, 081F, 0820
C - - - - - 0x002244 00:E234: B1 11     LDA (ram_0011_t15_data),Y
C - - - - - 0x002246 00:E236: 29 7F     AND #$7F
C - - - - - 0x002248 00:E238: 91 11     STA (ram_0011_t15_data),Y
C - - - - - 0x00224A 00:E23A: 60        RTS



sub_E23B_display_bonus_on_screen:
C - - - - - 0x00224B 00:E23B: A5 86     LDA ram_bonus_pos_X
C - - - - - 0x00224D 00:E23D: F0 3C     BEQ bra_E27B_RTS
C - - - - - 0x00224F 00:E23F: A5 62     LDA ram_0062_bonus_timer
C - - - - - 0x002251 00:E241: F0 16     BEQ bra_E259
C - - - - - 0x002253 00:E243: C6 62     DEC ram_0062_bonus_timer
C - - - - - 0x002255 00:E245: D0 07     BNE bra_E24E
C - - - - - 0x002257 00:E247: A9 00     LDA #$00
C - - - - - 0x002259 00:E249: 85 86     STA ram_bonus_pos_X
C - - - - - 0x00225B 00:E24B: 4C 7B E2  JMP loc_E27B_RTS
bra_E24E:
C - - - - - 0x00225E 00:E24E: A9 02     LDA #$02
C - - - - - 0x002260 00:E250: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x002262 00:E252: A9 3B     LDA #$3B
C - - - - - 0x002264 00:E254: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x002266 00:E256: 4C 6C E2  JMP loc_E26C
bra_E259:
C - - - - - 0x002269 00:E259: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x00226B 00:E25B: 29 08     AND #$08    ; each 8 frames
C - - - - - 0x00226D 00:E25D: F0 1C     BEQ bra_E27B_RTS    ; don't display bonus
C - - - - - 0x00226F 00:E25F: A9 02     LDA #$02
C - - - - - 0x002271 00:E261: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x002273 00:E263: A5 88     LDA ram_bonus_id
; * 04
C - - - - - 0x002275 00:E265: 0A        ASL
C - - - - - 0x002276 00:E266: 0A        ASL
C - - - - - 0x002277 00:E267: 18        CLC
C - - - - - 0x002278 00:E268: 69 81     ADC #$81    ; bonus graphics
C - - - - - 0x00227A 00:E26A: 85 53     STA ram_0053_t01_spr_T
loc_E26C:
C D 3 - - - 0x00227C 00:E26C: A6 86     LDX ram_bonus_pos_X ; spr_X
C - - - - - 0x00227E 00:E26E: A4 87     LDY ram_bonus_pos_Y ; spr_Y
C - - - - - 0x002280 00:E270: A9 00     LDA #$00
C - - - - - 0x002282 00:E272: 85 6E     STA ram_priority_spr_A
C - - - - - 0x002284 00:E274: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x002287 00:E277: A9 20     LDA #$20
C - - - - - 0x002289 00:E279: 85 6E     STA ram_priority_spr_A
bra_E27B_RTS:
loc_E27B_RTS:   ; bzk optimize
C D 3 - - - 0x00228B 00:E27B: 60        RTS



sub_E27C_players_invincibility_handler:
C - - - - - 0x00228C 00:E27C: A9 01     LDA #$01
C - - - - - 0x00228E 00:E27E: 85 5A     STA ram_005A_t11_player_index
bra_E280_loop:
C - - - - - 0x002290 00:E280: A6 5A     LDX ram_005A_t11_player_index
C - - - - - 0x002292 00:E282: B5 89     LDA ram_helmet_timer,X
C - - - - - 0x002294 00:E284: F0 1E     BEQ bra_E2A4_helmet_is_off
; if helmet is active
C - - - - - 0x002296 00:E286: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x002298 00:E288: 29 3F     AND #$3F
C - - - - - 0x00229A 00:E28A: D0 02     BNE bra_E28E
; decrease each 64 frames
C - - - - - 0x00229C 00:E28C: D6 89     DEC ram_helmet_timer,X
bra_E28E:
C - - - - - 0x00229E 00:E28E: A9 02     LDA #$02
C - - - - - 0x0022A0 00:E290: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x0022A2 00:E292: B4 98     LDY ram_tank_pos_Y,X    ; spr_Y
C - - - - - 0x0022A4 00:E294: B5 90     LDA ram_tank_pos_X,X    ; spr_X
C - - - - - 0x0022A6 00:E296: AA        TAX ; spr_X
C - - - - - 0x0022A7 00:E297: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x0022A9 00:E299: 29 02     AND #$02
C - - - - - 0x0022AB 00:E29B: 0A        ASL
C - - - - - 0x0022AC 00:E29C: 18        CLC
C - - - - - 0x0022AD 00:E29D: 69 29     ADC #$29
C - - - - - 0x0022AF 00:E29F: 85 53     STA ram_0053_t01_spr_T
C - - - - - 0x0022B1 00:E2A1: 20 7B DA  JSR sub_DA7B_display_2_sprites
bra_E2A4_helmet_is_off:
C - - - - - 0x0022B4 00:E2A4: C6 5A     DEC ram_005A_t11_player_index
C - - - - - 0x0022B6 00:E2A6: 10 D8     BPL bra_E280_loop
C - - - - - 0x0022B8 00:E2A8: 60        RTS



sub_E2A9_HQ_handler:
C - - - - - 0x0022B9 00:E2A9: A5 45     LDA ram_shovel_timer
C - - - - - 0x0022BB 00:E2AB: F0 25     BEQ bra_E2D2
C - - - - - 0x0022BD 00:E2AD: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x0022BF 00:E2AF: 29 0F     AND #$0F
C - - - - - 0x0022C1 00:E2B1: D0 1F     BNE bra_E2D2
C - - - - - 0x0022C3 00:E2B3: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x0022C5 00:E2B5: 29 3F     AND #$3F
C - - - - - 0x0022C7 00:E2B7: D0 04     BNE bra_E2BD
C - - - - - 0x0022C9 00:E2B9: C6 45     DEC ram_shovel_timer
C - - - - - 0x0022CB 00:E2BB: F0 12     BEQ bra_E2CF
bra_E2BD:
C - - - - - 0x0022CD 00:E2BD: A5 45     LDA ram_shovel_timer
C - - - - - 0x0022CF 00:E2BF: C9 04     CMP #$04
C - - - - - 0x0022D1 00:E2C1: B0 0F     BCS bra_E2D2
C - - - - - 0x0022D3 00:E2C3: A5 0B     LDA ram_frm_cnt_lo
C - - - - - 0x0022D5 00:E2C5: 29 10     AND #$10
C - - - - - 0x0022D7 00:E2C7: F0 06     BEQ bra_E2CF
C - - - - - 0x0022D9 00:E2C9: 20 9E CB  JSR sub_CB9E_draw_protected_base
C - - - - - 0x0022DC 00:E2CC: 4C D2 E2  JMP loc_E2D2
bra_E2CF:
C - - - - - 0x0022DF 00:E2CF: 20 F5 CA  JSR sub_CAF5_draw_default_base
bra_E2D2:
loc_E2D2:
C D 3 - - - 0x0022E2 00:E2D2: A5 68     LDA ram_game_over_flag
C - - - - - 0x0022E4 00:E2D4: F0 2F     BEQ bra_E305_RTS    ; game over already
C - - - - - 0x0022E6 00:E2D6: 30 2D     BMI bra_E305_RTS    ; not game over
C - - - - - 0x0022E8 00:E2D8: A9 03     LDA #$03            ; game over timer is currently ticking
C - - - - - 0x0022EA 00:E2DA: 85 04     STA ram_0004_t01_spr_A_palette
C - - - - - 0x0022EC 00:E2DC: C6 68     DEC ram_game_over_flag
C - - - - - 0x0022EE 00:E2DE: A5 68     LDA ram_game_over_flag
; / 04
C - - - - - 0x0022F0 00:E2E0: 4A        LSR
C - - - - - 0x0022F1 00:E2E1: 4A        LSR
C - - - - - 0x0022F2 00:E2E2: 38        SEC
C - - - - - 0x0022F3 00:E2E3: E9 05     SBC #$05
C - - - - - 0x0022F5 00:E2E5: 10 05     BPL bra_E2EC
; EOR if negative
C - - - - - 0x0022F7 00:E2E7: 49 FF     EOR #$FF
C - - - - - 0x0022F9 00:E2E9: 18        CLC
C - - - - - 0x0022FA 00:E2EA: 69 01     ADC #$01
bra_E2EC:
C - - - - - 0x0022FC 00:E2EC: 38        SEC
C - - - - - 0x0022FD 00:E2ED: E9 05     SBC #$05
C - - - - - 0x0022FF 00:E2EF: 10 05     BPL bra_E2F6
; EOR if negative
C - - - - - 0x002301 00:E2F1: 49 FF     EOR #$FF
C - - - - - 0x002303 00:E2F3: 18        CLC
C - - - - - 0x002304 00:E2F4: 69 01     ADC #$01
bra_E2F6:
C - - - - - 0x002306 00:E2F6: 0A        ASL
C - - - - - 0x002307 00:E2F7: A8        TAY
C - - - - - 0x002308 00:E2F8: B9 06 E3  LDA tbl_E306_explosion_handler,Y
C - - - - - 0x00230B 00:E2FB: 85 11     STA ram_0011_t05_jmp
C - - - - - 0x00230D 00:E2FD: B9 07 E3  LDA tbl_E306_explosion_handler + $01,Y
C - - - - - 0x002310 00:E300: 85 12     STA ram_0011_t05_jmp + $01
C - - - - - 0x002312 00:E302: 6C 11 00  JMP (ram_0011_t05_jmp)
bra_E305_RTS:
C - - - - - 0x002315 00:E305: 60        RTS



tbl_E306_explosion_handler:
- D 3 - - - 0x002316 00:E306: F0 DB     .word ofs_004_DBF0_00_RTS
- D 3 - - - 0x002318 00:E308: 12 E3     .word ofs_004_E312_01
- D 3 - - - 0x00231A 00:E30A: 17 E3     .word ofs_004_E317_02
- D 3 - - - 0x00231C 00:E30C: 1C E3     .word ofs_004_E31C_03
- D 3 - - - 0x00231E 00:E30E: 2E E3     .word ofs_004_E32E_04
- D 3 - - - 0x002320 00:E310: 36 E3     .word ofs_004_E336_05



ofs_004_E312_01:
; in
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - J - - 0x002322 00:E312: A9 F1     LDA #$F1    ; spr_T
; bzk optimize, BNE
C - - - - - 0x002324 00:E314: 4C 1E E3  JMP loc_E31E



ofs_004_E317_02:
; in
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - J - - 0x002327 00:E317: A9 F5     LDA #$F5    ; spr_T
; bzk optimize, BNE
C - - - - - 0x002329 00:E319: 4C 1E E3  JMP loc_E31E



ofs_004_E31C_03:
; in
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - J - - 0x00232C 00:E31C: A9 F9     LDA #$F9    ; spr_T
loc_E31E:
; in
    ; A = spr_T
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C D 3 - - - 0x00232E 00:E31E: A2 78     LDX #$78    ; spr_X
C - - - - - 0x002330 00:E320: A0 D8     LDY #$D8    ; spr_Y
loc_E322:
; in
    ; A = spr_T
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C D 3 - - - 0x002332 00:E322: 85 53     STA ram_0053_t01_spr_T
; bzk optimize, JMP
C - - - - - 0x002334 00:E324: 20 7B DA  JSR sub_DA7B_display_2_sprites
C - - - - - 0x002337 00:E327: 60        RTS



sub_E328:
; in
    ; A = spr_T
    ; X = spr_X
    ; Y = spr_Y
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - - - - 0x002338 00:E328: 18        CLC
C - - - - - 0x002339 00:E329: 65 69     ADC ram_0069_00_or_10
C - - - - - 0x00233B 00:E32B: 4C 22 E3  JMP loc_E322



ofs_004_E32E_04:
; in
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - J - - 0x00233E 00:E32E: A9 00     LDA #$00
C - - - - - 0x002340 00:E330: 85 69     STA ram_0069_00_or_10
; bzk optimize, JMP
C - - - - - 0x002342 00:E332: 20 3E E3  JSR sub_E33E
C - - - - - 0x002345 00:E335: 60        RTS



ofs_004_E336_05:
; in
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - J - - 0x002346 00:E336: A9 10     LDA #$10
C - - - - - 0x002348 00:E338: 85 69     STA ram_0069_00_or_10
; bzk optimize, JMP
C - - - - - 0x00234A 00:E33A: 20 3E E3  JSR sub_E33E
C - - - - - 0x00234D 00:E33D: 60        RTS



sub_E33E:
; in
    ; ram_0004_t01_spr_A_palette
    ; ram_priority_spr_A
C - - - - - 0x00234E 00:E33E: A2 70     LDX #$70    ; spr_X
C - - - - - 0x002350 00:E340: A0 D0     LDY #$D0    ; spr_Y
C - - - - - 0x002352 00:E342: A9 D1     LDA #$D1    ; spr_T
C - - - - - 0x002354 00:E344: 20 28 E3  JSR sub_E328
C - - - - - 0x002357 00:E347: A2 80     LDX #$80    ; spr_X
C - - - - - 0x002359 00:E349: A0 D0     LDY #$D0    ; spr_Y
C - - - - - 0x00235B 00:E34B: A9 D5     LDA #$D5    ; spr_T
C - - - - - 0x00235D 00:E34D: 20 28 E3  JSR sub_E328
C - - - - - 0x002360 00:E350: A2 70     LDX #$70    ; spr_X
C - - - - - 0x002362 00:E352: A0 E0     LDY #$E0    ; spr_Y
C - - - - - 0x002364 00:E354: A9 D9     LDA #$D9    ; spr_T
C - - - - - 0x002366 00:E356: 20 28 E3  JSR sub_E328
C - - - - - 0x002369 00:E359: A2 80     LDX #$80    ; spr_X
C - - - - - 0x00236B 00:E35B: A0 E0     LDY #$E0    ; spr_Y
C - - - - - 0x00236D 00:E35D: A9 DD     LDA #$DD    ; spr_T
; bzk optimize, JMP
C - - - - - 0x00236F 00:E35F: 20 28 E3  JSR sub_E328
C - - - - - 0x002372 00:E362: 60        RTS



sub_E363_tank_spawn_handler:
; in
    ; X = tank id
C - - - - - 0x002373 00:E363: A9 00     LDA #$00
C - - - - - 0x002375 00:E365: 95 A8     STA ram_tank_type,X
C - - - - - 0x002377 00:E367: E0 02     CPX #$02
C - - - - - 0x002379 00:E369: B0 11     BCS bra_E37C_enemy
; if player
C - - - - - 0x00237B 00:E36B: BD 7A E4  LDA tbl_E47A_player_spawn_pos_X,X
C - - - - - 0x00237E 00:E36E: 95 90     STA ram_tank_pos_X,X
C - - - - - 0x002380 00:E370: BD 7C E4  LDA tbl_E47C_player_spawn_pos_Y,X
C - - - - - 0x002383 00:E373: 95 98     STA ram_tank_pos_Y,X
C - - - - - 0x002385 00:E375: A9 00     LDA #$00
C - - - - - 0x002387 00:E377: 95 6F     STA ram_plr_stun_timer,X
C - - - - - 0x002389 00:E379: 4C A9 E3  JMP loc_E3A9
bra_E37C_enemy:
C - - - - - 0x00238C 00:E37C: E6 6A     INC ram_enemy_spawn_pos
C - - - - - 0x00238E 00:E37E: A4 6A     LDY ram_enemy_spawn_pos
C - - - - - 0x002390 00:E380: C0 03     CPY #$03
C - - - - - 0x002392 00:E382: D0 05     BNE bra_E389_not_overflow
C - - - - - 0x002394 00:E384: A9 00     LDA #$00
C - - - - - 0x002396 00:E386: 85 6A     STA ram_enemy_spawn_pos
C - - - - - 0x002398 00:E388: A8        TAY
bra_E389_not_overflow:
C - - - - - 0x002399 00:E389: B9 74 E4  LDA tbl_E474_enemy_spawn_pos_X,Y
C - - - - - 0x00239C 00:E38C: 95 90     STA ram_tank_pos_X,X
C - - - - - 0x00239E 00:E38E: B9 77 E4  LDA tbl_E477_enemy_spawn_pos_Y,Y
C - - - - - 0x0023A1 00:E391: 95 98     STA ram_tank_pos_Y,X
C - - - - - 0x0023A3 00:E393: A5 7F     LDA ram_enemy_spawn_cnt
C - - - - - 0x0023A5 00:E395: C9 03     CMP #$03    ; 18th enemy
C - - - - - 0x0023A7 00:E397: F0 08     BEQ bra_E3A1_it_is_a_bonus_tank
C - - - - - 0x0023A9 00:E399: C9 0A     CMP #$0A    ; 11th enemy
C - - - - - 0x0023AB 00:E39B: F0 04     BEQ bra_E3A1_it_is_a_bonus_tank
C - - - - - 0x0023AD 00:E39D: C9 11     CMP #$11    ; 4th enemy
C - - - - - 0x0023AF 00:E39F: D0 08     BNE bra_E3A9_not_a_bonus_tank
bra_E3A1_it_is_a_bonus_tank:
C - - - - - 0x0023B1 00:E3A1: A9 04     LDA #$04    ; mark enemy with bonus flag
C - - - - - 0x0023B3 00:E3A3: 95 A8     STA ram_tank_type,X
C - - - - - 0x0023B5 00:E3A5: A9 00     LDA #$00    ; hide bonus
C - - - - - 0x0023B7 00:E3A7: 85 86     STA ram_bonus_pos_X
bra_E3A9_not_a_bonus_tank:
loc_E3A9:
C D 3 - - - 0x0023B9 00:E3A9: A9 F0     LDA #con_tank_flag_respawn
C - - - - - 0x0023BB 00:E3AB: 95 A0     STA ram_tank_flags,X
C - - - - - 0x0023BD 00:E3AD: B4 98     LDY ram_tank_pos_Y,X
C - - - - - 0x0023BF 00:E3AF: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x0023C1 00:E3B1: AA        TAX
C - - - - - 0x0023C2 00:E3B2: A9 0F     LDA #$0F
; bzk optimize, JMP
C - - - - - 0x0023C4 00:E3B4: 20 0B D8  JSR sub_D80B_write_block_tiles_and_attribute_to_buffer
C - - - - - 0x0023C7 00:E3B7: 60        RTS



sub_E3B8:
C - - - - - 0x0023C8 00:E3B8: BD 7E E4  LDA tbl_E47E,X
C - - - - - 0x0023CB 00:E3BB: 95 A0     STA ram_tank_flags,X
C - - - - - 0x0023CD 00:E3BD: E0 02     CPX #$02
C - - - - - 0x0023CF 00:E3BF: B0 0A     BCS bra_E3CB_enemy
; if player
C - - - - - 0x0023D1 00:E3C1: A9 03     LDA #$03
C - - - - - 0x0023D3 00:E3C3: 95 89     STA ram_helmet_timer,X
C - - - - - 0x0023D5 00:E3C5: BD 01 01  LDA ram_tank_upgrade,X
C - - - - - 0x0023D8 00:E3C8: 4C FA E3  JMP loc_E3FA
bra_E3CB_enemy:
loc_E3CB_loop:
C D 3 - - - 0x0023DB 00:E3CB: A4 8F     LDY ram_enemy_type_offset
C - - - - - 0x0023DD 00:E3CD: B9 8B 00  LDA ram_enemy_type_stage_cnt,Y
C - - - - - 0x0023E0 00:E3D0: D0 05     BNE bra_E3D7
C - - - - - 0x0023E2 00:E3D2: E6 8F     INC ram_enemy_type_offset
C - - - - - 0x0023E4 00:E3D4: 4C CB E3  JMP loc_E3CB_loop
bra_E3D7:
C - - - - - 0x0023E7 00:E3D7: 38        SEC
C - - - - - 0x0023E8 00:E3D8: E9 01     SBC #$01
C - - - - - 0x0023EA 00:E3DA: 99 8B 00  STA ram_enemy_type_stage_cnt,Y
C - - - - - 0x0023ED 00:E3DD: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x0023EF 00:E3DF: F0 05     BEQ bra_E3E6_it_is_1st_loop
C - - - - - 0x0023F1 00:E3E1: A9 23     LDA #$23
C - - - - - 0x0023F3 00:E3E3: 4C E8 E3  JMP loc_E3E8
bra_E3E6_it_is_1st_loop:
C - - - - - 0x0023F6 00:E3E6: A5 85     LDA ram_stage
loc_E3E8:
C D 3 - - - 0x0023F8 00:E3E8: 38        SEC
C - - - - - 0x0023F9 00:E3E9: E9 01     SBC #$01
; * 04
C - - - - - 0x0023FB 00:E3EB: 0A        ASL
C - - - - - 0x0023FC 00:E3EC: 0A        ASL
C - - - - - 0x0023FD 00:E3ED: 18        CLC
C - - - - - 0x0023FE 00:E3EE: 65 8F     ADC ram_enemy_type_offset
C - - - - - 0x002400 00:E3F0: A8        TAY
C - - - - - 0x002401 00:E3F1: B9 EC E4  LDA tbl_E4EC_stage_enemies,Y
C - - - - - 0x002404 00:E3F4: C9 E0     CMP #$E0
C - - - - - 0x002406 00:E3F6: D0 02     BNE bra_E3FA
C - - - - - 0x002408 00:E3F8: 09 03     ORA #$03
bra_E3FA:
loc_E3FA:
C D 3 - - - 0x00240A 00:E3FA: 15 A8     ORA ram_tank_type,X
C - - - - - 0x00240C 00:E3FC: C9 E7     CMP #$E7
C - - - - - 0x00240E 00:E3FE: D0 02     BNE bra_E402
C - - - - - 0x002410 00:E400: A9 E4     LDA #$E4
bra_E402:
C - - - - - 0x002412 00:E402: 95 A8     STA ram_tank_type,X
C - - - - - 0x002414 00:E404: A9 00     LDA #$00
C - - - - - 0x002416 00:E406: 95 B0     STA ram_tank_wheels,X
C - - - - - 0x002418 00:E408: 60        RTS



sub_E409_clear_bullet_status:
C - - - - - 0x002419 00:E409: A2 09     LDX #$09
C - - - - - 0x00241B 00:E40B: A9 00     LDA #$00
bra_E40D_loop:
C - - - - - 0x00241D 00:E40D: 95 CC     STA ram_bullet_status,X
C - - - - - 0x00241F 00:E40F: CA        DEX
C - - - - - 0x002420 00:E410: 10 FB     BPL bra_E40D_loop
C - - - - - 0x002422 00:E412: 60        RTS



sub_E413_clear_some_tank_addresses:
C - - - - - 0x002423 00:E413: A9 00     LDA #$00
C - - - - - 0x002425 00:E415: A2 07     LDX #$07
bra_E417_loop:
C - - - - - 0x002427 00:E417: 95 A0     STA ram_tank_flags,X   ; con_tank_flag_00
; also
    ; ram_game_over_msg_pos_X
    ; ram_game_over_msg_pos_Y
    ; ram_game_over_msg_timer
    ; ram_debug_address_index
    ; ram_010A
; bzk bug, doesn't seem to be intended
C - - - - - 0x002429 00:E419: 9D 03 01  STA ram_0103_plr,X
C - - - - - 0x00242C 00:E41C: CA        DEX
C - - - - - 0x00242D 00:E41D: 10 F8     BPL bra_E417_loop
C - - - - - 0x00242F 00:E41F: 60        RTS



sub_E420_change_tank_status:
; in
    ; A = con_tank_flag
C - - - - - 0x002430 00:E420: 85 00     STA ram_0000_t09
C - - - - - 0x002432 00:E422: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002434 00:E424: 29 0F     AND #$0F
C - - - - - 0x002436 00:E426: 05 00     ORA ram_0000_t09
C - - - - - 0x002438 00:E428: 95 A0     STA ram_tank_flags,X
C - - - - - 0x00243A 00:E42A: 60        RTS



sub_E42B_prepare_enemy_tanks_for_stage:
C - - - - - 0x00243B 00:E42B: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x00243D 00:E42D: F0 05     BEQ bra_E434_1st_loop
; if it's 2nd loop
C - - - - - 0x00243F 00:E42F: A9 23     LDA #$23    ; stages 35+
; bzk optimize, BNE
C - - - - - 0x002441 00:E431: 4C 36 E4  JMP loc_E436
bra_E434_1st_loop:
C - - - - - 0x002444 00:E434: A5 85     LDA ram_stage
loc_E436:
C D 3 - - - 0x002446 00:E436: 38        SEC
C - - - - - 0x002447 00:E437: E9 01     SBC #$01
; * 04
C - - - - - 0x002449 00:E439: 0A        ASL
C - - - - - 0x00244A 00:E43A: 0A        ASL
C - - - - - 0x00244B 00:E43B: A8        TAY
C - - - - - 0x00244C 00:E43C: B9 78 E5  LDA tbl_E578_stage_enemies_type_counter,Y
C - - - - - 0x00244F 00:E43F: 85 8B     STA ram_enemy_type_stage_cnt
C - - - - - 0x002451 00:E441: B9 79 E5  LDA tbl_E578_stage_enemies_type_counter + $01,Y
C - - - - - 0x002454 00:E444: 85 8C     STA ram_enemy_type_stage_cnt + $01
C - - - - - 0x002456 00:E446: B9 7A E5  LDA tbl_E578_stage_enemies_type_counter + $02,Y
C - - - - - 0x002459 00:E449: 85 8D     STA ram_enemy_type_stage_cnt + $02
C - - - - - 0x00245B 00:E44B: B9 7B E5  LDA tbl_E578_stage_enemies_type_counter + $03,Y
C - - - - - 0x00245E 00:E44E: 85 8E     STA ram_enemy_type_stage_cnt + $03
C - - - - - 0x002460 00:E450: 60        RTS



sub_E451_convert_Dpad_buttons:
; in
    ; A = con_btn
; out
    ; A = button convertion
    ; N
        ; 0 = some Dpad button was presses
        ; 1 = no Dpad buttons were pressed
C - - - - - 0x002461 00:E451: 0A        ASL
C - - - - - 0x002462 00:E452: 90 03     BCC bra_E457
C - - - - - 0x002464 00:E454: A9 03     LDA #$03    ; con_btn_Right
C - - - - - 0x002466 00:E456: 60        RTS
bra_E457:
C - - - - - 0x002467 00:E457: 0A        ASL
C - - - - - 0x002468 00:E458: 90 03     BCC bra_E45D
C - - - - - 0x00246A 00:E45A: A9 01     LDA #$01    ; con_btn_Left
C - - - - - 0x00246C 00:E45C: 60        RTS
bra_E45D:
C - - - - - 0x00246D 00:E45D: 0A        ASL
C - - - - - 0x00246E 00:E45E: 90 03     BCC bra_E463
C - - - - - 0x002470 00:E460: A9 02     LDA #$02    ; con_btn_Down
C - - - - - 0x002472 00:E462: 60        RTS
bra_E463:
C - - - - - 0x002473 00:E463: 0A        ASL
C - - - - - 0x002474 00:E464: 90 03     BCC bra_E469
C - - - - - 0x002476 00:E466: A9 00     LDA #$00    ; con_btn_Up
C - - - - - 0x002478 00:E468: 60        RTS
bra_E469:   ; no Dpad buttons pressed
C - - - - - 0x002479 00:E469: A9 FF     LDA #$FF
C - - - - - 0x00247B 00:E46B: 60        RTS



tbl_E46C:
; bzk optimize, same table as 0x0013E5
- D 3 - - - 0x00247C 00:E46C: 00        .byte $00   ; 00 
- D 3 - - - 0x00247D 00:E46D: FF        .byte $FF   ; 01 
- D 3 - - - 0x00247E 00:E46E: 00        .byte $00   ; 02 
- D 3 - - - 0x00247F 00:E46F: 01        .byte $01   ; 03 



tbl_E470:
; bzk optimize, same table as 0x0013E9
- D 3 - - - 0x002480 00:E470: FF        .byte $FF   ; 00 
- D 3 - - - 0x002481 00:E471: 00        .byte $00   ; 01 
- D 3 - - - 0x002482 00:E472: 01        .byte $01   ; 02 
- D 3 - - - 0x002483 00:E473: 00        .byte $00   ; 03 



tbl_E474_enemy_spawn_pos_X:
- D 3 - - - 0x002484 00:E474: 18        .byte $18   ; 00 left
- D 3 - - - 0x002485 00:E475: 78        .byte $78   ; 01 center
- D 3 - - - 0x002486 00:E476: D8        .byte $D8   ; 02 right



tbl_E477_enemy_spawn_pos_Y:
- D 3 - - - 0x002487 00:E477: 18        .byte $18   ; 00 left
- D 3 - - - 0x002488 00:E478: 18        .byte $18   ; 01 center
- D 3 - - - 0x002489 00:E479: 18        .byte $18   ; 02 right



tbl_E47A_player_spawn_pos_X:
- D 3 - - - 0x00248A 00:E47A: 58        .byte $58   ; 00 player 1
- D 3 - - - 0x00248B 00:E47B: 98        .byte $98   ; 01 player 2



tbl_E47C_player_spawn_pos_Y:
- D 3 - - - 0x00248C 00:E47C: D8        .byte $D8   ; 00 player 1
- D 3 - - - 0x00248D 00:E47D: D8        .byte $D8   ; 01 player 2



tbl_E47E:
- D 3 - - - 0x00248E 00:E47E: A0        .byte con_tank_flag_A0   ; 00 
- D 3 - - - 0x00248F 00:E47F: A0        .byte con_tank_flag_A0   ; 01 
- D 3 - - - 0x002490 00:E480: A2        .byte con_tank_flag_A0 + $02   ; 02 
- D 3 - - - 0x002491 00:E481: A2        .byte con_tank_flag_A0 + $02   ; 03 
- D 3 - - - 0x002492 00:E482: A2        .byte con_tank_flag_A0 + $02   ; 04 
- D 3 - - - 0x002493 00:E483: A2        .byte con_tank_flag_A0 + $02   ; 05 
- D 3 - - - 0x002494 00:E484: A2        .byte con_tank_flag_A0 + $02   ; 06 
- D 3 - - - 0x002495 00:E485: A2        .byte con_tank_flag_A0 + $02   ; 07 



tbl_E486_tank_flags:
- D 3 - - - 0x002496 00:E486: A0        .byte con_tank_flag_A0   ; 00 
- D 3 - - - 0x002497 00:E487: A0        .byte con_tank_flag_A0   ; 01 
- D 3 - - - 0x002498 00:E488: A0        .byte con_tank_flag_A0   ; 02 
- D 3 - - - 0x002499 00:E489: A1        .byte con_tank_flag_A0 + $01   ; 03 
- D 3 - - - 0x00249A 00:E48A: A0        .byte con_tank_flag_A0   ; 04 
- D 3 - - - 0x00249B 00:E48B: A3        .byte con_tank_flag_A0 + $03   ; 05 
- D 3 - - - 0x00249C 00:E48C: A2        .byte con_tank_flag_A0 + $02   ; 06 
- D 3 - - - 0x00249D 00:E48D: A2        .byte con_tank_flag_A0 + $02   ; 07 
- D 3 - - - 0x00249E 00:E48E: A2        .byte con_tank_flag_A0 + $02   ; 08 

- D 3 - - - 0x00249F 00:E48F: A1        .byte con_tank_flag_A0 + $01   ; 00 (09) 
- D 3 - - - 0x0024A0 00:E490: A0        .byte con_tank_flag_A0   ; 01 (0A) 
- D 3 - - - 0x0024A1 00:E491: A3        .byte con_tank_flag_A0 + $03   ; 02 (0B) 
- D 3 - - - 0x0024A2 00:E492: A1        .byte con_tank_flag_A0 + $01   ; 03 (0C) 
- D 3 - - - 0x0024A3 00:E493: A0        .byte con_tank_flag_A0   ; 04 (0D) 
- D 3 - - - 0x0024A4 00:E494: A3        .byte con_tank_flag_A0 + $03   ; 05 (0E) 
- D 3 - - - 0x0024A5 00:E495: A1        .byte con_tank_flag_A0 + $01   ; 06 (0F) 
- D 3 - - - 0x0024A6 00:E496: A2        .byte con_tank_flag_A0 + $02   ; 07 (10) 
- D 3 - - - 0x0024A7 00:E497: A3        .byte con_tank_flag_A0 + $03   ; 08 (11) 



tbl_E498_tank_status_handler:
- D 3 - - - 0x0024A8 00:E498: F0 DB     .word ofs_000_DBF0_00_RTS
- D 3 - - - 0x0024AA 00:E49A: EA DD     .word ofs_000_DDEA_10_kill_points
- D 3 - - - 0x0024AC 00:E49C: EA DD     .word ofs_000_DDEA_20_explosion
- D 3 - - - 0x0024AE 00:E49E: EA DD     .word ofs_000_DDEA_30_explosion
- D 3 - - - 0x0024B0 00:E4A0: EA DD     .word ofs_000_DDEA_40_explosion
- D 3 - - - 0x0024B2 00:E4A2: EA DD     .word ofs_000_DDEA_50_explosion
- D 3 - - - 0x0024B4 00:E4A4: EA DD     .word ofs_000_DDEA_60_explosion
- D 3 - - - 0x0024B6 00:E4A6: EA DD     .word ofs_000_DDEA_70_explosion
- D 3 - - - 0x0024B8 00:E4A8: 52 DC     .word ofs_000_DC52_80
- D 3 - - - 0x0024BA 00:E4AA: 48 DD     .word ofs_000_DD48_90
- D 3 - - - 0x0024BC 00:E4AC: 7C DC     .word ofs_000_DC7C_A0
- D 3 - - - 0x0024BE 00:E4AE: 94 DD     .word ofs_000_DD94_B0_follow_HQ
- D 3 - - - 0x0024C0 00:E4B0: 89 DD     .word ofs_000_DD89_C0_follow_p2
- D 3 - - - 0x0024C2 00:E4B2: 7E DD     .word ofs_000_DD7E_D0_follow_p1
- D 3 - - - 0x0024C4 00:E4B4: 64 DE     .word ofs_000_DE64_E0
- D 3 - - - 0x0024C6 00:E4B6: 55 DE     .word ofs_000_DE55_F0_respawn



tbl_E4B8_tank_status_handler:
- D 3 - - - 0x0024C8 00:E4B8: F0 DB     .word ofs_001_DBF0_00_RTS
- D 3 - - - 0x0024CA 00:E4BA: FD DE     .word ofs_001_DEFD_10_kill_points
- D 3 - - - 0x0024CC 00:E4BC: 33 DF     .word ofs_001_DF33_20_explosion
- D 3 - - - 0x0024CE 00:E4BE: 46 DF     .word ofs_001_DF46_30_explosion
- D 3 - - - 0x0024D0 00:E4C0: 46 DF     .word ofs_001_DF46_40_explosion
- D 3 - - - 0x0024D2 00:E4C2: CD DE     .word ofs_001_DECD_50_explosion
- D 3 - - - 0x0024D4 00:E4C4: CD DE     .word ofs_001_DECD_60_explosion
- D 3 - - - 0x0024D6 00:E4C6: CD DE     .word ofs_001_DECD_70_explosion
- D 3 - - - 0x0024D8 00:E4C8: B6 DF     .word ofs_001_DFB6_80
- D 3 - - - 0x0024DA 00:E4CA: B6 DF     .word ofs_001_DFB6_90
- D 3 - - - 0x0024DC 00:E4CC: B6 DF     .word ofs_001_DFB6_A0
- D 3 - - - 0x0024DE 00:E4CE: B6 DF     .word ofs_001_DFB6_B0_follow_HQ
- D 3 - - - 0x0024E0 00:E4D0: B6 DF     .word ofs_001_DFB6_C0_follow_p2
- D 3 - - - 0x0024E2 00:E4D2: B6 DF     .word ofs_001_DFB6_D0_follow_p1
- D 3 - - - 0x0024E4 00:E4D4: 0B E0     .word ofs_001_E00B_E0
- D 3 - - - 0x0024E6 00:E4D6: 0B E0     .word ofs_001_E00B_F0_respawn



tbl_E4D8_bullet_status_handler:
- D 3 - - - 0x0024E8 00:E4D8: F0 DB     .word ofs_002_DBF0_00_RTS
- D 3 - - - 0x0024EA 00:E4DA: 76 E0     .word ofs_002_E076_10
- D 3 - - - 0x0024EC 00:E4DC: 76 E0     .word ofs_002_E076_20
- D 3 - - - 0x0024EE 00:E4DE: 76 E0     .word ofs_002_E076_30
- D 3 - - - 0x0024F0 00:E4E0: 51 E0     .word ofs_002_E051_40



tbl_E4E2_bullet_status_handler:
- D 3 - - - 0x0024F2 00:E4E2: F0 DB     .word ofs_003_DBF0_00_RTS
- D 3 - - - 0x0024F4 00:E4E4: 12 E1     .word ofs_003_E112_10
- D 3 - - - 0x0024F6 00:E4E6: 12 E1     .word ofs_003_E112_20
- D 3 - - - 0x0024F8 00:E4E8: 12 E1     .word ofs_003_E112_30
- D 3 - - - 0x0024FA 00:E4EA: FB E0     .word ofs_003_E0FB_40



tbl_E4EC_stage_enemies:
;                                              +-------------------- 
;                                              |    +--------------- 
;                                              |    |    +---------- 
;                                              |    |    |    +----- 
;                                              |    |    |    |
- D 3 - - - 0x0024FC 00:E4EC: 80        .byte $80, $A0, $C0, $E0   ; 01 
- D 3 - - - 0x002500 00:E4F0: E0        .byte $E0, $A0, $C0, $80   ; 02 
- D 3 - - - 0x002504 00:E4F4: 80        .byte $80, $A0, $C0, $E0   ; 03 
- D 3 - - - 0x002508 00:E4F8: C0        .byte $C0, $A0, $80, $E0   ; 04 
- D 3 - - - 0x00250C 00:E4FC: C0        .byte $C0, $E0, $80, $A0   ; 05 
- D 3 - - - 0x002510 00:E500: C0        .byte $C0, $A0, $80, $E0   ; 06 
- D 3 - - - 0x002514 00:E504: 80        .byte $80, $A0, $C0, $80   ; 07 
- D 3 - - - 0x002518 00:E508: C0        .byte $C0, $E0, $A0, $80   ; 08 
- D 3 - - - 0x00251C 00:E50C: 80        .byte $80, $A0, $C0, $E0   ; 09 
- D 3 - - - 0x002520 00:E510: 80        .byte $80, $A0, $C0, $E0   ; 0A 
- D 3 - - - 0x002524 00:E514: A0        .byte $A0, $E0, $C0, $A0   ; 0B 
- D 3 - - - 0x002528 00:E518: C0        .byte $C0, $A0, $80, $E0   ; 0C 
- D 3 - - - 0x00252C 00:E51C: C0        .byte $C0, $A0, $80, $E0   ; 0D 
- D 3 - - - 0x002530 00:E520: C0        .byte $C0, $A0, $80, $E0   ; 0E 
- D 3 - - - 0x002534 00:E524: 80        .byte $80, $C0, $A0, $E0   ; 0F 
- D 3 - - - 0x002538 00:E528: 80        .byte $80, $C0, $A0, $E0   ; 10 
- D 3 - - - 0x00253C 00:E52C: E0        .byte $E0, $A0, $C0, $80   ; 11 
- D 3 - - - 0x002540 00:E530: E0        .byte $E0, $80, $C0, $A0   ; 12 
- D 3 - - - 0x002544 00:E534: A0        .byte $A0, $E0, $80, $C0   ; 13 
- D 3 - - - 0x002548 00:E538: A0        .byte $A0, $80, $C0, $E0   ; 14 
- D 3 - - - 0x00254C 00:E53C: C0        .byte $C0, $A0, $80, $E0   ; 15 
- D 3 - - - 0x002550 00:E540: A0        .byte $A0, $80, $C0, $E0   ; 16 
- D 3 - - - 0x002554 00:E544: E0        .byte $E0, $80, $C0, $A0   ; 17 
- D 3 - - - 0x002558 00:E548: C0        .byte $C0, $E0, $A0, $80   ; 18 
- D 3 - - - 0x00255C 00:E54C: C0        .byte $C0, $A0, $80, $E0   ; 19 
- D 3 - - - 0x002560 00:E550: A0        .byte $A0, $E0, $80, $C0   ; 1A 
- D 3 - - - 0x002564 00:E554: C0        .byte $C0, $E0, $A0, $80   ; 1B 
- D 3 - - - 0x002568 00:E558: A0        .byte $A0, $E0, $80, $C0   ; 1C 
- D 3 - - - 0x00256C 00:E55C: C0        .byte $C0, $A0, $80, $E0   ; 1D 
- D 3 - - - 0x002570 00:E560: 80        .byte $80, $A0, $C0, $E0   ; 1E 
- D 3 - - - 0x002574 00:E564: C0        .byte $C0, $A0, $E0, $C0   ; 1F 
- D 3 - - - 0x002578 00:E568: E0        .byte $E0, $80, $C0, $A0   ; 20 
- D 3 - - - 0x00257C 00:E56C: A0        .byte $A0, $E0, $C0, $A0   ; 21 
- D 3 - - - 0x002580 00:E570: C0        .byte $C0, $A0, $80, $E0   ; 22 
- D 3 - - - 0x002584 00:E574: C0        .byte $C0, $A0, $80, $E0   ; 23 



tbl_E578_stage_enemies_type_counter:
;                                              +-------------------- 100 enemy
;                                              |    +--------------- 200 enemy
;                                              |    |    +---------- 300 enemy
;                                              |    |    |    +----- 400 enemy
;                                              |    |    |    |
- D 3 - - - 0x002588 00:E578: 12        .byte $12, $02, $00, $00   ; 01 
- D 3 - - - 0x00258C 00:E57C: 02        .byte $02, $04, $00, $0E   ; 02 
- D 3 - - - 0x002590 00:E580: 0E        .byte $0E, $04, $00, $02   ; 03 
- D 3 - - - 0x002594 00:E584: 0A        .byte $0A, $05, $02, $03   ; 04 
- D 3 - - - 0x002598 00:E588: 05        .byte $05, $02, $08, $05   ; 05 
- D 3 - - - 0x00259C 00:E58C: 07        .byte $07, $02, $09, $02   ; 06 
- D 3 - - - 0x0025A0 00:E590: 03        .byte $03, $04, $06, $07   ; 07 
- D 3 - - - 0x0025A4 00:E594: 07        .byte $07, $02, $04, $07   ; 08 
- D 3 - - - 0x0025A8 00:E598: 06        .byte $06, $04, $07, $03   ; 09 
- D 3 - - - 0x0025AC 00:E59C: 0C        .byte $0C, $02, $04, $02   ; 0A 
- D 3 - - - 0x0025B0 00:E5A0: 05        .byte $05, $06, $04, $05   ; 0B 
- D 3 - - - 0x0025B4 00:E5A4: 08        .byte $08, $06, $00, $06   ; 0C 
- D 3 - - - 0x0025B8 00:E5A8: 08        .byte $08, $08, $00, $04   ; 0D 
- D 3 - - - 0x0025BC 00:E5AC: 0A        .byte $0A, $04, $00, $06   ; 0E 
- D 3 - - - 0x0025C0 00:E5B0: 02        .byte $02, $00, $0A, $08   ; 0F 
- D 3 - - - 0x0025C4 00:E5B4: 10        .byte $10, $00, $02, $02   ; 10 
- D 3 - - - 0x0025C8 00:E5B8: 02        .byte $02, $02, $08, $08   ; 11 
- D 3 - - - 0x0025CC 00:E5BC: 04        .byte $04, $02, $06, $08   ; 12 
- D 3 - - - 0x0025D0 00:E5C0: 04        .byte $04, $08, $04, $04   ; 13 
- D 3 - - - 0x0025D4 00:E5C4: 08        .byte $08, $02, $02, $08   ; 14 
- D 3 - - - 0x0025D8 00:E5C8: 08        .byte $08, $02, $06, $04   ; 15 
- D 3 - - - 0x0025DC 00:E5CC: 08        .byte $08, $06, $02, $04   ; 16 
- D 3 - - - 0x0025E0 00:E5D0: 06        .byte $06, $00, $04, $0A   ; 17 
- D 3 - - - 0x0025E4 00:E5D4: 04        .byte $04, $02, $04, $0A   ; 18 
- D 3 - - - 0x0025E8 00:E5D8: 02        .byte $02, $08, $00, $0A   ; 19 
- D 3 - - - 0x0025EC 00:E5DC: 06        .byte $06, $06, $04, $04   ; 1A 
- D 3 - - - 0x0025F0 00:E5E0: 02        .byte $02, $08, $08, $02   ; 1B 
- D 3 - - - 0x0025F4 00:E5E4: 02        .byte $02, $01, $0F, $02   ; 1C 
- D 3 - - - 0x0025F8 00:E5E8: 0A        .byte $0A, $04, $00, $06   ; 1D 
- D 3 - - - 0x0025FC 00:E5EC: 04        .byte $04, $08, $04, $04   ; 1E 
- D 3 - - - 0x002600 00:E5F0: 03        .byte $03, $08, $06, $03   ; 1F 
- D 3 - - - 0x002604 00:E5F4: 08        .byte $08, $06, $02, $04   ; 20 
- D 3 - - - 0x002608 00:E5F8: 04        .byte $04, $08, $04, $04   ; 21 
- D 3 - - - 0x00260C 00:E5FC: 04        .byte $04, $0A, $00, $06   ; 22 
- D 3 - - - 0x002610 00:E600: 04        .byte $04, $06, $00, $0A   ; 23 



sub_E604_bullets_movement:
C - - - - - 0x002614 00:E604: A9 09     LDA #$09
C - - - - - 0x002616 00:E606: 85 5A     STA ram_005A_t06_bullet_index
loc_E608_loop:
C D 3 - - - 0x002618 00:E608: A6 5A     LDX ram_005A_t06_bullet_index
C - - - - - 0x00261A 00:E60A: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x00261C 00:E60C: 29 F0     AND #$F0
C - - - - - 0x00261E 00:E60E: C9 40     CMP #$40
C - - - - - 0x002620 00:E610: D0 79     BNE bra_E68B
C - - - - - 0x002622 00:E612: B5 D6     LDA ram_bullet_property,X
C - - - - - 0x002624 00:E614: D0 07     BNE bra_E61D
C - - - - - 0x002626 00:E616: 8A        TXA
C - - - - - 0x002627 00:E617: 45 0B     EOR ram_frm_cnt_lo
C - - - - - 0x002629 00:E619: 29 01     AND #$01
C - - - - - 0x00262B 00:E61B: F0 6E     BEQ bra_E68B
bra_E61D:
C - - - - - 0x00262D 00:E61D: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x00262F 00:E61F: 29 03     AND #$03
C - - - - - 0x002631 00:E621: A8        TAY
C - - - - - 0x002632 00:E622: B9 49 EA  LDA tbl_EA49,Y
C - - - - - 0x002635 00:E625: 10 05     BPL bra_E62C
; EOR if negative
C - - - - - 0x002637 00:E627: 49 FF     EOR #$FF
C - - - - - 0x002639 00:E629: 18        CLC
C - - - - - 0x00263A 00:E62A: 69 01     ADC #$01
bra_E62C:
C - - - - - 0x00263C 00:E62C: 85 54     STA ram_0054_t02_bullet_spd_Y
; * 04
C - - - - - 0x00263E 00:E62E: 0A        ASL
C - - - - - 0x00263F 00:E62F: 0A        ASL
C - - - - - 0x002640 00:E630: 85 64     STA ram_0064_t02_bullet_next_pos_Y
C - - - - - 0x002642 00:E632: B9 4D EA  LDA tbl_EA4D,Y
C - - - - - 0x002645 00:E635: 10 05     BPL bra_E63C
; EOR if negative
C - - - - - 0x002647 00:E637: 49 FF     EOR #$FF
C - - - - - 0x002649 00:E639: 18        CLC
C - - - - - 0x00264A 00:E63A: 69 01     ADC #$01
bra_E63C:
C - - - - - 0x00264C 00:E63C: 85 55     STA ram_0055_t02_bullet_spd_X
; * 04
C - - - - - 0x00264E 00:E63E: 0A        ASL
C - - - - - 0x00264F 00:E63F: 0A        ASL
C - - - - - 0x002650 00:E640: 85 65     STA ram_0065_t02_bullet_next_pos_X
; 
C - - - - - 0x002652 00:E642: B4 C2     LDY ram_bullet_pos_Y,X
C - - - - - 0x002654 00:E644: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x002656 00:E646: AA        TAX
C - - - - - 0x002657 00:E647: 20 93 E6  JSR sub_E693
C - - - - - 0x00265A 00:E64A: F0 13     BEQ bra_E65F
C - - - - - 0x00265C 00:E64C: A6 5A     LDX ram_005A_t06_bullet_index
C - - - - - 0x00265E 00:E64E: B5 C2     LDA ram_bullet_pos_Y,X
C - - - - - 0x002660 00:E650: 18        CLC
C - - - - - 0x002661 00:E651: 65 64     ADC ram_0064_t02_bullet_next_pos_Y
C - - - - - 0x002663 00:E653: 85 48     STA ram_0048_t02_pos_Y
C - - - - - 0x002665 00:E655: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x002667 00:E657: 18        CLC
C - - - - - 0x002668 00:E658: 65 65     ADC ram_0065_t02_bullet_next_pos_X
C - - - - - 0x00266A 00:E65A: 85 47     STA ram_0047_t02_pos_X
C - - - - - 0x00266C 00:E65C: 20 9A E6  JSR sub_E69A
bra_E65F:
C - - - - - 0x00266F 00:E65F: A6 5A     LDX ram_005A_t06_bullet_index
C - - - - - 0x002671 00:E661: B5 C2     LDA ram_bullet_pos_Y,X
C - - - - - 0x002673 00:E663: 38        SEC
C - - - - - 0x002674 00:E664: E5 54     SBC ram_0054_t02_bullet_spd_Y
C - - - - - 0x002676 00:E666: A8        TAY
C - - - - - 0x002677 00:E667: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x002679 00:E669: 38        SEC
C - - - - - 0x00267A 00:E66A: E5 55     SBC ram_0055_t02_bullet_spd_X
C - - - - - 0x00267C 00:E66C: AA        TAX
C - - - - - 0x00267D 00:E66D: 20 93 E6  JSR sub_E693
C - - - - - 0x002680 00:E670: F0 19     BEQ bra_E68B
C - - - - - 0x002682 00:E672: A6 5A     LDX ram_005A_t06_bullet_index
C - - - - - 0x002684 00:E674: B5 C2     LDA ram_bullet_pos_Y,X
C - - - - - 0x002686 00:E676: 38        SEC
C - - - - - 0x002687 00:E677: E5 64     SBC ram_0064_t02_bullet_next_pos_Y
C - - - - - 0x002689 00:E679: 38        SEC
C - - - - - 0x00268A 00:E67A: E5 54     SBC ram_0054_t02_bullet_spd_Y
C - - - - - 0x00268C 00:E67C: 85 48     STA ram_0048_t02_pos_Y
C - - - - - 0x00268E 00:E67E: B5 B8     LDA ram_bullet_pos_X,X
C - - - - - 0x002690 00:E680: 38        SEC
C - - - - - 0x002691 00:E681: E5 65     SBC ram_0065_t02_bullet_next_pos_X
C - - - - - 0x002693 00:E683: 38        SEC
C - - - - - 0x002694 00:E684: E5 55     SBC ram_0055_t02_bullet_spd_X
C - - - - - 0x002696 00:E686: 85 47     STA ram_0047_t02_pos_X
C - - - - - 0x002698 00:E688: 20 9A E6  JSR sub_E69A
bra_E68B:
C - - - - - 0x00269B 00:E68B: C6 5A     DEC ram_005A_t06_bullet_index
C - - - - - 0x00269D 00:E68D: 30 03     BMI bra_E692_RTS
C - - - - - 0x00269F 00:E68F: 4C 08 E6  JMP loc_E608_loop
bra_E692_RTS:
C - - - - - 0x0026A2 00:E692: 60        RTS



sub_E693:
; in
    ; X = 
    ; Y = 
; out
    ; Z
        ; 0 = 
        ; 1 = 
; bzk optimize, put TAX here, delete TAX before JSRs
C - - - - - 0x0026A3 00:E693: 86 47     STX ram_0047_t02_pos_X
C - - - - - 0x0026A5 00:E695: 84 48     STY ram_0048_t02_pos_Y
C - - - - - 0x0026A7 00:E697: 20 06 D7  JSR sub_D706_divide_by_08_and_calculate_pointer
sub_E69A:
C - - - - - 0x0026AA 00:E69A: 20 25 D7  JSR sub_D725
C - - - - - 0x0026AD 00:E69D: 20 3C D7  JSR sub_D73C
C - - - - - 0x0026B0 00:E6A0: F0 67     BEQ bra_E709_enemy
C - - - - - 0x0026B2 00:E6A2: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0026B4 00:E6A4: 29 FC     AND #$FC
C - - - - - 0x0026B6 00:E6A6: C9 C8     CMP #$C8
C - - - - - 0x0026B8 00:E6A8: D0 1C     BNE bra_E6C6
C - - - - - 0x0026BA 00:E6AA: A5 68     LDA ram_game_over_flag
C - - - - - 0x0026BC 00:E6AC: F0 18     BEQ bra_E6C6    ; game over
C - - - - - 0x0026BE 00:E6AE: A9 27     LDA #$27
C - - - - - 0x0026C0 00:E6B0: 85 68     STA ram_game_over_flag  ; set timer
C - - - - - 0x0026C2 00:E6B2: A9 01     LDA #$01
C - - - - - 0x0026C4 00:E6B4: 8D 0B 03  STA ram_sfx_explosion_hq
C - - - - - 0x0026C7 00:E6B7: 8D 07 03  STA ram_sfx_explosion_player
C - - - - - 0x0026CA 00:E6BA: 20 08 CC  JSR sub_CC08_draw_destroyed_eagle
C - - - - - 0x0026CD 00:E6BD: A6 5A     LDX ram_005A_t06_bullet_index
C - - - - - 0x0026CF 00:E6BF: A9 33     LDA #$33
C - - - - - 0x0026D1 00:E6C1: 95 CC     STA ram_bullet_status,X
C - - - - - 0x0026D3 00:E6C3: 4C 09 E7  JMP loc_E709
bra_E6C6:
C - - - - - 0x0026D6 00:E6C6: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0026D8 00:E6C8: C9 12     CMP #$12
C - - - - - 0x0026DA 00:E6CA: B0 3D     BCS bra_E709_enemy
C - - - - - 0x0026DC 00:E6CC: A6 5A     LDX ram_005A_t06_bullet_index
C - - - - - 0x0026DE 00:E6CE: A9 33     LDA #$33
C - - - - - 0x0026E0 00:E6D0: 95 CC     STA ram_bullet_status,X
C - - - - - 0x0026E2 00:E6D2: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0026E4 00:E6D4: C9 11     CMP #$11
C - - - - - 0x0026E6 00:E6D6: F0 28     BEQ bra_E700
C - - - - - 0x0026E8 00:E6D8: B5 D6     LDA ram_bullet_property,X
C - - - - - 0x0026EA 00:E6DA: 29 02     AND #$02
C - - - - - 0x0026EC 00:E6DC: F0 0D     BEQ bra_E6EB
C - - - - - 0x0026EE 00:E6DE: A9 00     LDA #$00
C - - - - - 0x0026F0 00:E6E0: 20 84 D7  JSR sub_D784_write_tile_to_buffer
C - - - - - 0x0026F3 00:E6E3: A9 01     LDA #$01
C - - - - - 0x0026F5 00:E6E5: 8D 0C 03  STA ram_sfx_bullet_hit_brick
C - - - - - 0x0026F8 00:E6E8: 4C 09 E7  JMP loc_E709
bra_E6EB:
C - - - - - 0x0026FB 00:E6EB: B1 11     LDA (ram_0011_t14_data),Y
C - - - - - 0x0026FD 00:E6ED: C9 10     CMP #$10
C - - - - - 0x0026FF 00:E6EF: F0 0F     BEQ bra_E700
C - - - - - 0x002701 00:E6F1: E0 02     CPX #$02
C - - - - - 0x002703 00:E6F3: B0 05     BCS bra_E6FA_enemy
; if player
C - - - - - 0x002705 00:E6F5: A9 01     LDA #$01
C - - - - - 0x002707 00:E6F7: 8D 0C 03  STA ram_sfx_bullet_hit_brick
bra_E6FA_enemy:
C - - - - - 0x00270A 00:E6FA: 20 43 D7  JSR sub_D743
C - - - - - 0x00270D 00:E6FD: A9 01     LDA #$01
C - - - - - 0x00270F 00:E6FF: 60        RTS
bra_E700:
C - - - - - 0x002710 00:E700: E0 02     CPX #$02
C - - - - - 0x002712 00:E702: B0 05     BCS bra_E709_enemy
; if player
C - - - - - 0x002714 00:E704: A9 01     LDA #$01
C - - - - - 0x002716 00:E706: 8D 0D 03  STA ram_sfx_bullet_hit_wall
bra_E709_enemy:
loc_E709:
C D 3 - - - 0x002719 00:E709: A9 00     LDA #$00
C - - - - - 0x00271B 00:E70B: 60        RTS



sub_E70C_bullets_collision_with_tanks:
C - - - - - 0x00271C 00:E70C: A9 01     LDA #$01
C - - - - - 0x00271E 00:E70E: 85 5A     STA ram_005A_t12_player_index
bra_E710_loop:
C - - - - - 0x002720 00:E710: A6 5A     LDX ram_005A_t12_player_index
C - - - - - 0x002722 00:E712: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002724 00:E714: 10 04     BPL bra_E71A
C - - - - - 0x002726 00:E716: C9 E0     CMP #$E0
C - - - - - 0x002728 00:E718: 90 03     BCC bra_E71D
bra_E71A:
C - - - - - 0x00272A 00:E71A: 4C 7A E7  JMP loc_E77A
bra_E71D:
C - - - - - 0x00272D 00:E71D: A9 07     LDA #$07
C - - - - - 0x00272F 00:E71F: 85 5B     STA ram_005B_t02_enemy_bullet_index
bra_E721_loop:
C - - - - - 0x002731 00:E721: A4 5B     LDY ram_005B_t02_enemy_bullet_index
C - - - - - 0x002733 00:E723: B9 CC 00  LDA ram_bullet_status,Y
C - - - - - 0x002736 00:E726: 29 F0     AND #$F0
C - - - - - 0x002738 00:E728: C9 40     CMP #$40
C - - - - - 0x00273A 00:E72A: D0 46     BNE bra_E772
C - - - - - 0x00273C 00:E72C: B9 B8 00  LDA ram_bullet_pos_X,Y
C - - - - - 0x00273F 00:E72F: 38        SEC
C - - - - - 0x002740 00:E730: F5 90     SBC ram_tank_pos_X,X
C - - - - - 0x002742 00:E732: 10 05     BPL bra_E739
; EOR if negative
C - - - - - 0x002744 00:E734: 49 FF     EOR #$FF
C - - - - - 0x002746 00:E736: 18        CLC
C - - - - - 0x002747 00:E737: 69 01     ADC #$01
bra_E739:
C - - - - - 0x002749 00:E739: C9 0A     CMP #$0A
C - - - - - 0x00274B 00:E73B: B0 35     BCS bra_E772
C - - - - - 0x00274D 00:E73D: B9 C2 00  LDA ram_bullet_pos_Y,Y
C - - - - - 0x002750 00:E740: 38        SEC
C - - - - - 0x002751 00:E741: F5 98     SBC ram_tank_pos_Y,X
C - - - - - 0x002753 00:E743: 10 05     BPL bra_E74A
; EOR if negative
C - - - - - 0x002755 00:E745: 49 FF     EOR #$FF
C - - - - - 0x002757 00:E747: 18        CLC
C - - - - - 0x002758 00:E748: 69 01     ADC #$01
bra_E74A:
C - - - - - 0x00275A 00:E74A: C9 0A     CMP #$0A
C - - - - - 0x00275C 00:E74C: B0 24     BCS bra_E772
C - - - - - 0x00275E 00:E74E: A9 33     LDA #$33
C - - - - - 0x002760 00:E750: 99 CC 00  STA ram_bullet_status,Y
C - - - - - 0x002763 00:E753: B5 89     LDA ram_helmet_timer,X
C - - - - - 0x002765 00:E755: F0 08     BEQ bra_E75F_helmet_is_off
; if helmet is active
C - - - - - 0x002767 00:E757: A9 00     LDA #$00
C - - - - - 0x002769 00:E759: 99 CC 00  STA ram_bullet_status,Y
; bzk optimize, BEQ
C - - - - - 0x00276C 00:E75C: 4C 72 E7  JMP loc_E772
bra_E75F_helmet_is_off:
C - - - - - 0x00276F 00:E75F: A9 73     LDA #con_tank_flag_explosion + $03
C - - - - - 0x002771 00:E761: 95 A0     STA ram_tank_flags,X
C - - - - - 0x002773 00:E763: A9 01     LDA #$01
C - - - - - 0x002775 00:E765: 8D 07 03  STA ram_sfx_explosion_player
C - - - - - 0x002778 00:E768: A9 00     LDA #$00
C - - - - - 0x00277A 00:E76A: 9D 01 01  STA ram_tank_upgrade,X
C - - - - - 0x00277D 00:E76D: 95 A8     STA ram_tank_type,X
C - - - - - 0x00277F 00:E76F: 4C 7A E7  JMP loc_E77A
bra_E772:
loc_E772:
C D 3 - - - 0x002782 00:E772: C6 5B     DEC ram_005B_t02_enemy_bullet_index
C - - - - - 0x002784 00:E774: A5 5B     LDA ram_005B_t02_enemy_bullet_index
C - - - - - 0x002786 00:E776: C9 01     CMP #$01
C - - - - - 0x002788 00:E778: D0 A7     BNE bra_E721_loop
loc_E77A:
C D 3 - - - 0x00278A 00:E77A: C6 5A     DEC ram_005A_t12_player_index
C - - - - - 0x00278C 00:E77C: 10 92     BPL bra_E710_loop
C - - - - - 0x00278E 00:E77E: A9 07     LDA #$07
C - - - - - 0x002790 00:E780: 85 5A     STA ram_005A_t13_tank_index
loc_E782:
C D 3 - - - 0x002792 00:E782: A6 5A     LDX ram_005A_t13_tank_index
C - - - - - 0x002794 00:E784: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002796 00:E786: 10 04     BPL bra_E78C
C - - - - - 0x002798 00:E788: C9 E0     CMP #$E0
C - - - - - 0x00279A 00:E78A: 90 03     BCC bra_E78F
bra_E78C:
C - - - - - 0x00279C 00:E78C: 4C 34 E8  JMP loc_E834
bra_E78F:
C - - - - - 0x00279F 00:E78F: A9 09     LDA #$09
C - - - - - 0x0027A1 00:E791: 85 5B     STA ram_005B_t03_bullet_index
loc_E793_loop:
C D 3 - - - 0x0027A3 00:E793: A5 5B     LDA ram_005B_t03_bullet_index
C - - - - - 0x0027A5 00:E795: 29 06     AND #$06
C - - - - - 0x0027A7 00:E797: F0 03     BEQ bra_E79C
C - - - - - 0x0027A9 00:E799: 4C 2D E8  JMP loc_E82D
bra_E79C:
C - - - - - 0x0027AC 00:E79C: A4 5B     LDY ram_005B_t03_bullet_index
C - - - - - 0x0027AE 00:E79E: B9 CC 00  LDA ram_bullet_status,Y
C - - - - - 0x0027B1 00:E7A1: 29 F0     AND #$F0
C - - - - - 0x0027B3 00:E7A3: C9 40     CMP #$40
C - - - - - 0x0027B5 00:E7A5: F0 03     BEQ bra_E7AA
C - - - - - 0x0027B7 00:E7A7: 4C 2D E8  JMP loc_E82D
bra_E7AA:
C - - - - - 0x0027BA 00:E7AA: B9 B8 00  LDA ram_bullet_pos_X,Y
C - - - - - 0x0027BD 00:E7AD: 38        SEC
C - - - - - 0x0027BE 00:E7AE: F5 90     SBC ram_tank_pos_X,X
C - - - - - 0x0027C0 00:E7B0: 10 05     BPL bra_E7B7
; EOR if negative
C - - - - - 0x0027C2 00:E7B2: 49 FF     EOR #$FF
C - - - - - 0x0027C4 00:E7B4: 18        CLC
C - - - - - 0x0027C5 00:E7B5: 69 01     ADC #$01
bra_E7B7:
C - - - - - 0x0027C7 00:E7B7: C9 0A     CMP #$0A
C - - - - - 0x0027C9 00:E7B9: B0 72     BCS bra_E82D
C - - - - - 0x0027CB 00:E7BB: B9 C2 00  LDA ram_bullet_pos_Y,Y
C - - - - - 0x0027CE 00:E7BE: 38        SEC
C - - - - - 0x0027CF 00:E7BF: F5 98     SBC ram_tank_pos_Y,X
C - - - - - 0x0027D1 00:E7C1: 10 05     BPL bra_E7C8
; EOR if negative
C - - - - - 0x0027D3 00:E7C3: 49 FF     EOR #$FF
C - - - - - 0x0027D5 00:E7C5: 18        CLC
C - - - - - 0x0027D6 00:E7C6: 69 01     ADC #$01
bra_E7C8:
C - - - - - 0x0027D8 00:E7C8: C9 0A     CMP #$0A
C - - - - - 0x0027DA 00:E7CA: B0 61     BCS bra_E82D
C - - - - - 0x0027DC 00:E7CC: A9 33     LDA #$33
C - - - - - 0x0027DE 00:E7CE: 99 CC 00  STA ram_bullet_status,Y
C - - - - - 0x0027E1 00:E7D1: B5 A8     LDA ram_tank_type,X
C - - - - - 0x0027E3 00:E7D3: 29 04     AND #$04
C - - - - - 0x0027E5 00:E7D5: F0 0B     BEQ bra_E7E2
C - - - - - 0x0027E7 00:E7D7: 20 BE E8  JSR sub_E8BE_spawn_bonus
C - - - - - 0x0027EA 00:E7DA: B5 A8     LDA ram_tank_type,X
C - - - - - 0x0027EC 00:E7DC: C9 E4     CMP #$E4
C - - - - - 0x0027EE 00:E7DE: D0 02     BNE bra_E7E2
C - - - - - 0x0027F0 00:E7E0: D6 A8     DEC ram_tank_type,X
bra_E7E2:
C - - - - - 0x0027F2 00:E7E2: B5 A8     LDA ram_tank_type,X
C - - - - - 0x0027F4 00:E7E4: 29 03     AND #$03
C - - - - - 0x0027F6 00:E7E6: F0 0A     BEQ bra_E7F2
; if tank is still alive after hit
C - - - - - 0x0027F8 00:E7E8: D6 A8     DEC ram_tank_type,X
C - - - - - 0x0027FA 00:E7EA: A9 01     LDA #$01
C - - - - - 0x0027FC 00:E7EC: 8D 0E 03  STA ram_sfx_bullet_hit_tank
C - - - - - 0x0027FF 00:E7EF: 4C 2D E8  JMP loc_E82D
bra_E7F2:
C - - - - - 0x002802 00:E7F2: A9 73     LDA #con_tank_flag_explosion + $03
C - - - - - 0x002804 00:E7F4: 95 A0     STA ram_tank_flags,X
C - - - - - 0x002806 00:E7F6: A9 01     LDA #$01
C - - - - - 0x002808 00:E7F8: 8D 0A 03  STA ram_sfx_explosion_enemy
C - - - - - 0x00280B 00:E7FB: B5 A8     LDA ram_tank_type,X
; / 20
C - - - - - 0x00280D 00:E7FD: 4A        LSR
C - - - - - 0x00280E 00:E7FE: 4A        LSR
C - - - - - 0x00280F 00:E7FF: 4A        LSR
C - - - - - 0x002810 00:E800: 4A        LSR
C - - - - - 0x002811 00:E801: 4A        LSR
C - - - - - 0x002812 00:E802: 38        SEC
C - - - - - 0x002813 00:E803: E9 04     SBC #$04
C - - - - - 0x002815 00:E805: AA        TAX
; calculate whos bullet this is
C - - - - - 0x002816 00:E806: A5 5B     LDA ram_005B_t03_bullet_index
C - - - - - 0x002818 00:E808: 29 01     AND #$01
C - - - - - 0x00281A 00:E80A: 85 47     STA ram_0047_t05_player_index
C - - - - - 0x00281C 00:E80C: D0 05     BNE bra_E813_2nd_player
; if 1st player
C - - - - - 0x00281E 00:E80E: F6 73     INC ram_p1_enemy_type_kill_cnt,X
C - - - - - 0x002820 00:E810: 4C 15 E8  JMP loc_E815
bra_E813_2nd_player:
C - - - - - 0x002823 00:E813: F6 77     INC ram_p2_enemy_type_kill_cnt,X
loc_E815:
C D 3 - - - 0x002825 00:E815: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x002827 00:E817: C9 02     CMP #con_flag_demo
C - - - - - 0x002829 00:E819: F0 19     BEQ bra_E834    ; if demo
; if not demo, add points
C - - - - - 0x00282B 00:E81B: BD BA E8  LDA tbl_E8BA_points_for_killing_enemy,X
C - - - - - 0x00282E 00:E81E: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
; bzk optimize, LDX
C - - - - - 0x002831 00:E821: A5 47     LDA ram_0047_t05_player_index
C - - - - - 0x002833 00:E823: AA        TAX
; X = 00/01
; ram_p1_score
; ram_p2_score
C - - - - - 0x002834 00:E824: 20 BE D9  JSR sub_D9BE_add_score
C - - - - - 0x002837 00:E827: 20 38 D1  JSR sub_D138_gain_extra_life_for_20000_pts
C - - - - - 0x00283A 00:E82A: 4C 34 E8  JMP loc_E834
bra_E82D:
loc_E82D:
C D 3 - - - 0x00283D 00:E82D: C6 5B     DEC ram_005B_t03_bullet_index
C - - - - - 0x00283F 00:E82F: 30 03     BMI bra_E834
C - - - - - 0x002841 00:E831: 4C 93 E7  JMP loc_E793_loop
bra_E834:
loc_E834:
C D 3 - - - 0x002844 00:E834: C6 5A     DEC ram_005A_t13_tank_index
C - - - - - 0x002846 00:E836: A5 5A     LDA ram_005A_t13_tank_index
C - - - - - 0x002848 00:E838: C9 01     CMP #$01
C - - - - - 0x00284A 00:E83A: F0 03     BEQ bra_E83F
C - - - - - 0x00284C 00:E83C: 4C 82 E7  JMP loc_E782
bra_E83F:
C - - - - - 0x00284F 00:E83F: A9 01     LDA #$01
C - - - - - 0x002851 00:E841: 85 5A     STA ram_005A_t14_player_index
bra_E843_loop:
C - - - - - 0x002853 00:E843: A6 5A     LDX ram_005A_t14_player_index
C - - - - - 0x002855 00:E845: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002857 00:E847: 10 04     BPL bra_E84D
C - - - - - 0x002859 00:E849: C9 E0     CMP #$E0
C - - - - - 0x00285B 00:E84B: 90 03     BCC bra_E850
bra_E84D:
C - - - - - 0x00285D 00:E84D: 4C B5 E8  JMP loc_E8B5
bra_E850:
C - - - - - 0x002860 00:E850: A9 09     LDA #$09
C - - - - - 0x002862 00:E852: 85 5B     STA ram_005B_t04_bullet_index
bra_E854_loop:
C - - - - - 0x002864 00:E854: A5 5B     LDA ram_005B_t04_bullet_index
C - - - - - 0x002866 00:E856: 29 06     AND #$06
C - - - - - 0x002868 00:E858: D0 57     BNE bra_E8B1
C - - - - - 0x00286A 00:E85A: A4 5B     LDY ram_005B_t04_bullet_index
C - - - - - 0x00286C 00:E85C: B9 CC 00  LDA ram_bullet_status,Y
C - - - - - 0x00286F 00:E85F: 29 F0     AND #$F0
C - - - - - 0x002871 00:E861: C9 40     CMP #$40
C - - - - - 0x002873 00:E863: D0 4C     BNE bra_E8B1
C - - - - - 0x002875 00:E865: A5 5A     LDA ram_005A_t14_player_index
C - - - - - 0x002877 00:E867: 45 5B     EOR ram_005B_t04_bullet_index
C - - - - - 0x002879 00:E869: 29 01     AND #$01
C - - - - - 0x00287B 00:E86B: F0 44     BEQ bra_E8B1
C - - - - - 0x00287D 00:E86D: B9 B8 00  LDA ram_bullet_pos_X,Y
C - - - - - 0x002880 00:E870: 38        SEC
C - - - - - 0x002881 00:E871: F5 90     SBC ram_tank_pos_X,X
C - - - - - 0x002883 00:E873: 10 05     BPL bra_E87A
; EOR if negative
C - - - - - 0x002885 00:E875: 49 FF     EOR #$FF
C - - - - - 0x002887 00:E877: 18        CLC
C - - - - - 0x002888 00:E878: 69 01     ADC #$01
bra_E87A:
C - - - - - 0x00288A 00:E87A: C9 0A     CMP #$0A
C - - - - - 0x00288C 00:E87C: B0 33     BCS bra_E8B1
C - - - - - 0x00288E 00:E87E: B9 C2 00  LDA ram_bullet_pos_Y,Y
C - - - - - 0x002891 00:E881: 38        SEC
C - - - - - 0x002892 00:E882: F5 98     SBC ram_tank_pos_Y,X
C - - - - - 0x002894 00:E884: 10 05     BPL bra_E88B
; EOR if negative
C - - - - - 0x002896 00:E886: 49 FF     EOR #$FF
C - - - - - 0x002898 00:E888: 18        CLC
C - - - - - 0x002899 00:E889: 69 01     ADC #$01
bra_E88B:
C - - - - - 0x00289B 00:E88B: C9 0A     CMP #$0A
C - - - - - 0x00289D 00:E88D: B0 22     BCS bra_E8B1
C - - - - - 0x00289F 00:E88F: A9 33     LDA #$33
C - - - - - 0x0028A1 00:E891: 99 CC 00  STA ram_bullet_status,Y
C - - - - - 0x0028A4 00:E894: B5 89     LDA ram_helmet_timer,X
C - - - - - 0x0028A6 00:E896: F0 08     BEQ bra_E8A0_helmet_is_off
; if helmet is active
C - - - - - 0x0028A8 00:E898: A9 00     LDA #$00
C - - - - - 0x0028AA 00:E89A: 99 CC 00  STA ram_bullet_status,Y
C - - - - - 0x0028AD 00:E89D: 4C B1 E8  JMP loc_E8B1
bra_E8A0_helmet_is_off:
C - - - - - 0x0028B0 00:E8A0: B5 6F     LDA ram_plr_stun_timer,X
C - - - - - 0x0028B2 00:E8A2: D0 0D     BNE bra_E8B1
C - - - - - 0x0028B4 00:E8A4: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x0028B6 00:E8A6: C9 02     CMP #con_flag_demo
C - - - - - 0x0028B8 00:E8A8: F0 07     BEQ bra_E8B1    ; it's a demo
C - - - - - 0x0028BA 00:E8AA: A9 C8     LDA #$C8
C - - - - - 0x0028BC 00:E8AC: 95 6F     STA ram_plr_stun_timer,X
C - - - - - 0x0028BE 00:E8AE: 4C B5 E8  JMP loc_E8B5
bra_E8B1:
loc_E8B1:
C D 3 - - - 0x0028C1 00:E8B1: C6 5B     DEC ram_005B_t04_bullet_index
C - - - - - 0x0028C3 00:E8B3: 10 9F     BPL bra_E854_loop
loc_E8B5:
C D 3 - - - 0x0028C5 00:E8B5: C6 5A     DEC ram_005A_t14_player_index
C - - - - - 0x0028C7 00:E8B7: 10 8A     BPL bra_E843_loop
C - - - - - 0x0028C9 00:E8B9: 60        RTS



tbl_E8BA_points_for_killing_enemy:
; bzk optimize, same table at 0x0013E1
- D 3 - - - 0x0028CA 00:E8BA: 10        .byte $10   ; 00 
- D 3 - - - 0x0028CB 00:E8BB: 20        .byte $20   ; 01 
- D 3 - - - 0x0028CC 00:E8BC: 30        .byte $30   ; 02 
- D 3 - - - 0x0028CD 00:E8BD: 40        .byte $40   ; 03 



sub_E8BE_spawn_bonus:
C - - - - - 0x0028CE 00:E8BE: A9 01     LDA #$01
C - - - - - 0x0028D0 00:E8C0: 8D 09 03  STA ram_sfx_bonus_appear
bra_E8C3_loop:
C - - - - - 0x0028D3 00:E8C3: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x0028D6 00:E8C6: 29 03     AND #$03
C - - - - - 0x0028D8 00:E8C8: 20 02 E9  JSR sub_E902_convert_random_number_to_position
C - - - - - 0x0028DB 00:E8CB: 85 86     STA ram_bonus_pos_X
C - - - - - 0x0028DD 00:E8CD: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x0028E0 00:E8D0: 29 03     AND #$03
C - - - - - 0x0028E2 00:E8D2: 20 02 E9  JSR sub_E902_convert_random_number_to_position
C - - - - - 0x0028E5 00:E8D5: 85 87     STA ram_bonus_pos_Y
C - - - - - 0x0028E7 00:E8D7: A9 FF     LDA #$FF
C - - - - - 0x0028E9 00:E8D9: 85 88     STA ram_bonus_id
C - - - - - 0x0028EB 00:E8DB: A9 00     LDA #$00
C - - - - - 0x0028ED 00:E8DD: 85 62     STA ram_0062_bonus_timer
C - - - - - 0x0028EF 00:E8DF: 20 72 E9  JSR sub_E972_try_to_pick_up_bonus
C - - - - - 0x0028F2 00:E8E2: A5 62     LDA ram_0062_bonus_timer
C - - - - - 0x0028F4 00:E8E4: D0 DD     BNE bra_E8C3_loop
C - - - - - 0x0028F6 00:E8E6: 20 4D D4  JSR sub_D44D_generate_random_number
C - - - - - 0x0028F9 00:E8E9: 29 07     AND #$07
C - - - - - 0x0028FB 00:E8EB: A8        TAY
C - - - - - 0x0028FC 00:E8EC: B9 FA E8  LDA tbl_E8FA_bonus,Y
C - - - - - 0x0028FF 00:E8EF: 85 88     STA ram_bonus_id
C - - - - - 0x002901 00:E8F1: A9 00     LDA #$00
C - - - - - 0x002903 00:E8F3: 85 62     STA ram_0062_bonus_timer
C - - - - - 0x002905 00:E8F5: A6 5A     LDX ram_005A_t13_tank_index
C - - - - - 0x002907 00:E8F7: A4 5B     LDY ram_005B_t03_bullet_index
C - - - - - 0x002909 00:E8F9: 60        RTS



tbl_E8FA_bonus:
- D 3 - - - 0x00290A 00:E8FA: 00        .byte $00   ; 00 helmet
- D 3 - - - 0x00290B 00:E8FB: 01        .byte $01   ; 01 clock
- D 3 - - - 0x00290C 00:E8FC: 02        .byte $02   ; 02 shovel
- D 3 - - - 0x00290D 00:E8FD: 03        .byte $03   ; 03 star
- D 3 - - - 0x00290E 00:E8FE: 04        .byte $04   ; 04 grenade
- D 3 - - - 0x00290F 00:E8FF: 05        .byte $05   ; 05 tank (life)
- D 3 - - - 0x002910 00:E900: 04        .byte $04   ; 06 grenade
- D 3 - - - 0x002911 00:E901: 03        .byte $03   ; 07 star



sub_E902_convert_random_number_to_position:
; in
    ; A = random 00-03
; out
    ; A
        ; 00 -> 30
        ; 01 -> 60
        ; 02 -> 90
        ; 03 -> C0
; bzk optimize, make a simple conversion table, X/Y are both free
; * 03
C - - - - - 0x002912 00:E902: 85 00     STA ram_0000_t10
C - - - - - 0x002914 00:E904: 0A        ASL
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x002915 00:E905: 18        CLC
C - - - - - 0x002916 00:E906: 65 00     ADC ram_0000_t10
; * 02
C - - - - - 0x002918 00:E908: 0A        ASL
C - - - - - 0x002919 00:E909: 18        CLC
C - - - - - 0x00291A 00:E90A: 69 06     ADC #$06
; * 08
C - - - - - 0x00291C 00:E90C: 0A        ASL
C - - - - - 0x00291D 00:E90D: 0A        ASL
C - - - - - 0x00291E 00:E90E: 0A        ASL
C - - - - - 0x00291F 00:E90F: 60        RTS



sub_E910_bullets_collision_with_bullets:
C - - - - - 0x002920 00:E910: A9 09     LDA #$09
C - - - - - 0x002922 00:E912: 85 5A     STA ram_005A_t15_bullet_index
bra_E914_loop:
C - - - - - 0x002924 00:E914: A5 5A     LDA ram_005A_t15_bullet_index
C - - - - - 0x002926 00:E916: 29 06     AND #$06
C - - - - - 0x002928 00:E918: D0 53     BNE bra_E96D
C - - - - - 0x00292A 00:E91A: A6 5A     LDX ram_005A_t15_bullet_index
C - - - - - 0x00292C 00:E91C: B5 CC     LDA ram_bullet_status,X
C - - - - - 0x00292E 00:E91E: 29 F0     AND #$F0
C - - - - - 0x002930 00:E920: C9 40     CMP #$40
C - - - - - 0x002932 00:E922: D0 49     BNE bra_E96D
C - - - - - 0x002934 00:E924: A9 09     LDA #$09
C - - - - - 0x002936 00:E926: 85 5B     STA ram_005B_t01_bullet_index
bra_E928_loop:
C - - - - - 0x002938 00:E928: A5 5B     LDA ram_005B_t01_bullet_index
C - - - - - 0x00293A 00:E92A: A8        TAY
C - - - - - 0x00293B 00:E92B: 29 07     AND #$07
C - - - - - 0x00293D 00:E92D: 85 00     STA ram_0000_t11
C - - - - - 0x00293F 00:E92F: A5 5A     LDA ram_005A_t15_bullet_index
C - - - - - 0x002941 00:E931: 29 07     AND #$07
C - - - - - 0x002943 00:E933: C5 00     CMP ram_0000_t11
C - - - - - 0x002945 00:E935: F0 32     BEQ bra_E969
C - - - - - 0x002947 00:E937: B9 CC 00  LDA ram_bullet_status,Y
C - - - - - 0x00294A 00:E93A: 29 F0     AND #$F0
C - - - - - 0x00294C 00:E93C: C9 40     CMP #$40
C - - - - - 0x00294E 00:E93E: D0 29     BNE bra_E969
C - - - - - 0x002950 00:E940: B9 B8 00  LDA ram_bullet_pos_X,Y
C - - - - - 0x002953 00:E943: 38        SEC
C - - - - - 0x002954 00:E944: F5 B8     SBC ram_bullet_pos_X,X
C - - - - - 0x002956 00:E946: 10 05     BPL bra_E94D
; EOR if negative
C - - - - - 0x002958 00:E948: 49 FF     EOR #$FF
C - - - - - 0x00295A 00:E94A: 18        CLC
C - - - - - 0x00295B 00:E94B: 69 01     ADC #$01
bra_E94D:
C - - - - - 0x00295D 00:E94D: C9 06     CMP #$06
C - - - - - 0x00295F 00:E94F: B0 18     BCS bra_E969
C - - - - - 0x002961 00:E951: B9 C2 00  LDA ram_bullet_pos_Y,Y
C - - - - - 0x002964 00:E954: 38        SEC
C - - - - - 0x002965 00:E955: F5 C2     SBC ram_bullet_pos_Y,X
C - - - - - 0x002967 00:E957: 10 05     BPL bra_E95E
; EOR if negative
C - - - - - 0x002969 00:E959: 49 FF     EOR #$FF
C - - - - - 0x00296B 00:E95B: 18        CLC
C - - - - - 0x00296C 00:E95C: 69 01     ADC #$01
bra_E95E:
C - - - - - 0x00296E 00:E95E: C9 06     CMP #$06
C - - - - - 0x002970 00:E960: B0 07     BCS bra_E969
C - - - - - 0x002972 00:E962: A9 00     LDA #$00
C - - - - - 0x002974 00:E964: 95 CC     STA ram_bullet_status,X
C - - - - - 0x002976 00:E966: 99 CC 00  STA ram_bullet_status,Y
bra_E969:
C - - - - - 0x002979 00:E969: C6 5B     DEC ram_005B_t01_bullet_index
C - - - - - 0x00297B 00:E96B: 10 BB     BPL bra_E928_loop
bra_E96D:
C - - - - - 0x00297D 00:E96D: C6 5A     DEC ram_005A_t15_bullet_index
C - - - - - 0x00297F 00:E96F: 10 A3     BPL bra_E914_loop
C - - - - - 0x002981 00:E971: 60        RTS



sub_E972_try_to_pick_up_bonus:
C - - - - - 0x002982 00:E972: A5 86     LDA ram_bonus_pos_X
C - - - - - 0x002984 00:E974: F0 6B     BEQ bra_E9E1_RTS
C - - - - - 0x002986 00:E976: A5 62     LDA ram_0062_bonus_timer
C - - - - - 0x002988 00:E978: D0 67     BNE bra_E9E1_RTS
; check only players
C - - - - - 0x00298A 00:E97A: A9 01     LDA #$01
C - - - - - 0x00298C 00:E97C: 85 49     STA ram_0049_t01_player_index
bra_E97E_loop:
C - - - - - 0x00298E 00:E97E: A6 49     LDX ram_0049_t01_player_index
C - - - - - 0x002990 00:E980: B5 A0     LDA ram_tank_flags,X
C - - - - - 0x002992 00:E982: 10 59     BPL bra_E9DD_fail
C - - - - - 0x002994 00:E984: C9 E0     CMP #$E0
C - - - - - 0x002996 00:E986: B0 55     BCS bra_E9DD_fail
; check X position
C - - - - - 0x002998 00:E988: B5 90     LDA ram_tank_pos_X,X
C - - - - - 0x00299A 00:E98A: 38        SEC
C - - - - - 0x00299B 00:E98B: E5 86     SBC ram_bonus_pos_X
C - - - - - 0x00299D 00:E98D: 10 05     BPL bra_E994
; EOR if negative
C - - - - - 0x00299F 00:E98F: 49 FF     EOR #$FF
C - - - - - 0x0029A1 00:E991: 18        CLC
C - - - - - 0x0029A2 00:E992: 69 01     ADC #$01
bra_E994:
C - - - - - 0x0029A4 00:E994: C9 0C     CMP #$0C
C - - - - - 0x0029A6 00:E996: B0 45     BCS bra_E9DD_fail   ; if not close enough
; check Y position
C - - - - - 0x0029A8 00:E998: B5 98     LDA ram_tank_pos_Y,X
C - - - - - 0x0029AA 00:E99A: 38        SEC
C - - - - - 0x0029AB 00:E99B: E5 87     SBC ram_bonus_pos_Y
C - - - - - 0x0029AD 00:E99D: 10 05     BPL bra_E9A4
; EOR if negative
C - - - - - 0x0029AF 00:E99F: 49 FF     EOR #$FF
C - - - - - 0x0029B1 00:E9A1: 18        CLC
C - - - - - 0x0029B2 00:E9A2: 69 01     ADC #$01
bra_E9A4:
C - - - - - 0x0029B4 00:E9A4: C9 0C     CMP #$0C
C - - - - - 0x0029B6 00:E9A6: B0 35     BCS bra_E9DD_fail   ; if not close enough
; success
C - - - - - 0x0029B8 00:E9A8: A9 32     LDA #$32
C - - - - - 0x0029BA 00:E9AA: 85 62     STA ram_0062_bonus_timer
C - - - - - 0x0029BC 00:E9AC: A5 88     LDA ram_bonus_id
C - - - - - 0x0029BE 00:E9AE: 30 31     BMI bra_E9E1_RTS
C - - - - - 0x0029C0 00:E9B0: A5 46     LDA ram_2nd_loop_flag
C - - - - - 0x0029C2 00:E9B2: C9 02     CMP #con_flag_demo
C - - - - - 0x0029C4 00:E9B4: F0 14     BEQ bra_E9CA_it_is_demo
; add 500 points
C - - - - - 0x0029C6 00:E9B6: A9 50     LDA #$50
C - - - - - 0x0029C8 00:E9B8: 20 E1 D9  JSR sub_D9E1_calculate_decimal_number
C - - - - - 0x0029CB 00:E9BB: A6 49     LDX ram_0049_t01_player_index
; X = 00/01
; ram_p1_score
; ram_p2_score
C - - - - - 0x0029CD 00:E9BD: 20 BE D9  JSR sub_D9BE_add_score
C - - - - - 0x0029D0 00:E9C0: 20 38 D1  JSR sub_D138_gain_extra_life_for_20000_pts
C - - - - - 0x0029D3 00:E9C3: A6 49     LDX ram_0049_t01_player_index
C - - - - - 0x0029D5 00:E9C5: A9 01     LDA #$01
C - - - - - 0x0029D7 00:E9C7: 8D 06 03  STA ram_sfx_bonus_pickup
bra_E9CA_it_is_demo:
C - - - - - 0x0029DA 00:E9CA: A5 88     LDA ram_bonus_id
C - - - - - 0x0029DC 00:E9CC: 0A        ASL
C - - - - - 0x0029DD 00:E9CD: A8        TAY
C - - - - - 0x0029DE 00:E9CE: B9 E2 E9  LDA tbl_E9E2_bonus_pickup_handler,Y
C - - - - - 0x0029E1 00:E9D1: 85 11     STA ram_0011_t04_jmp
C - - - - - 0x0029E3 00:E9D3: B9 E3 E9  LDA tbl_E9E2_bonus_pickup_handler + $01,Y
C - - - - - 0x0029E6 00:E9D6: 85 12     STA ram_0011_t04_jmp + $01
C - - - - - 0x0029E8 00:E9D8: 68        PLA
C - - - - - 0x0029E9 00:E9D9: 68        PLA
C - - - - - 0x0029EA 00:E9DA: 6C 11 00  JMP (ram_0011_t04_jmp)
bra_E9DD_fail:
C - - - - - 0x0029ED 00:E9DD: C6 49     DEC ram_0049_t01_player_index
C - - - - - 0x0029EF 00:E9DF: 10 9D     BPL bra_E97E_loop
bra_E9E1_RTS:
C - - - - - 0x0029F1 00:E9E1: 60        RTS



tbl_E9E2_bonus_pickup_handler:
- D 3 - - - 0x0029F2 00:E9E2: F0 E9     .word ofs_bonus_E9F0_00_helmet
- D 3 - - - 0x0029F4 00:E9E4: F5 E9     .word ofs_bonus_E9F5_01_clock
- D 3 - - - 0x0029F6 00:E9E6: FB E9     .word ofs_bonus_E9FB_02_shovel
- D 3 - - - 0x0029F8 00:E9E8: 07 EA     .word ofs_bonus_EA07_03_star
- D 3 - - - 0x0029FA 00:E9EA: 17 EA     .word ofs_bonus_EA17_04_grenade
- D 3 - - - 0x0029FC 00:E9EC: 3E EA     .word ofs_bonus_EA3E_05_tank
- - - - - - 0x0029FE 00:E9EE: 48 EA     .word ofs_bonus_EA48_06_RTS   ; pistol



ofs_bonus_E9F0_00_helmet:
; protect yourself
C - - J - - 0x002A00 00:E9F0: A9 0A     LDA #$0A
C - - - - - 0x002A02 00:E9F2: 95 89     STA ram_helmet_timer,X
C - - - - - 0x002A04 00:E9F4: 60        RTS



ofs_bonus_E9F5_01_clock:
; freeze enemies
C - - J - - 0x002A05 00:E9F5: A9 0A     LDA #$0A
C - - - - - 0x002A07 00:E9F7: 8D 00 01  STA ram_clock_timer
C - - - - - 0x002A0A 00:E9FA: 60        RTS



ofs_bonus_E9FB_02_shovel:
; protect HQ
C - - J - - 0x002A0B 00:E9FB: A5 68     LDA ram_game_over_flag
C - - - - - 0x002A0D 00:E9FD: 10 07     BPL bra_EA06_RTS    ; game over
C - - - - - 0x002A0F 00:E9FF: 20 9E CB  JSR sub_CB9E_draw_protected_base
C - - - - - 0x002A12 00:EA02: A9 14     LDA #$14
C - - - - - 0x002A14 00:EA04: 85 45     STA ram_shovel_timer
bra_EA06_RTS:
C - - - - - 0x002A16 00:EA06: 60        RTS



ofs_bonus_EA07_03_star:
; upgrde your tank
C - - J - - 0x002A17 00:EA07: BD 01 01  LDA ram_tank_upgrade,X
C - - - - - 0x002A1A 00:EA0A: C9 60     CMP #$60
C - - - - - 0x002A1C 00:EA0C: F0 08     BEQ bra_EA16_RTS
C - - - - - 0x002A1E 00:EA0E: 18        CLC
C - - - - - 0x002A1F 00:EA0F: 69 20     ADC #$20
C - - - - - 0x002A21 00:EA11: 9D 01 01  STA ram_tank_upgrade,X
C - - - - - 0x002A24 00:EA14: 95 A8     STA ram_tank_type,X
bra_EA16_RTS:
C - - - - - 0x002A26 00:EA16: 60        RTS



ofs_bonus_EA17_04_grenade:
; blow enemies up
C - - J - - 0x002A27 00:EA17: A9 07     LDA #$07
C - - - - - 0x002A29 00:EA19: 85 5A     STA ram_005A_t16_enemy_tank_index
C - - - - - 0x002A2B 00:EA1B: A9 01     LDA #$01
C - - - - - 0x002A2D 00:EA1D: 8D 0A 03  STA ram_sfx_explosion_enemy
bra_EA20_loop:
C - - - - - 0x002A30 00:EA20: A4 5A     LDY ram_005A_t16_enemy_tank_index
C - - - - - 0x002A32 00:EA22: B9 A0 00  LDA ram_tank_flags,Y
C - - - - - 0x002A35 00:EA25: 10 0E     BPL bra_EA35
C - - - - - 0x002A37 00:EA27: C9 E0     CMP #$E0
C - - - - - 0x002A39 00:EA29: B0 0A     BCS bra_EA35
C - - - - - 0x002A3B 00:EA2B: A9 73     LDA #con_tank_flag_explosion + $03
C - - - - - 0x002A3D 00:EA2D: 99 A0 00  STA ram_tank_flags,Y
C - - - - - 0x002A40 00:EA30: A9 00     LDA #$00
C - - - - - 0x002A42 00:EA32: 99 A8 00  STA ram_tank_type,Y
bra_EA35:
C - - - - - 0x002A45 00:EA35: C6 5A     DEC ram_005A_t16_enemy_tank_index
C - - - - - 0x002A47 00:EA37: A5 5A     LDA ram_005A_t16_enemy_tank_index
C - - - - - 0x002A49 00:EA39: C9 01     CMP #$01    ; 02-07
C - - - - - 0x002A4B 00:EA3B: D0 E3     BNE bra_EA20_loop
C - - - - - 0x002A4D 00:EA3D: 60        RTS



ofs_bonus_EA3E_05_tank:
; increse lives
C - - J - - 0x002A4E 00:EA3E: F6 51     INC ram_lives,X
C - - - - - 0x002A50 00:EA40: A9 01     LDA #$01
C - - - - - 0x002A52 00:EA42: 8D 04 03  STA ram_sfx_gain_life_1
C - - - - - 0x002A55 00:EA45: 8D 05 03  STA ram_sfx_gain_life_2
ofs_bonus_EA48_06_RTS:
C - - - - - 0x002A58 00:EA48: 60        RTS



tbl_EA49:
; bzk optimize, same table as 0x0013E5
- D 3 - - - 0x002A59 00:EA49: 00        .byte $00   ; 00 
- D 3 - - - 0x002A5A 00:EA4A: FF        .byte $FF   ; 01 
- D 3 - - - 0x002A5B 00:EA4B: 00        .byte $00   ; 02 
- D 3 - - - 0x002A5C 00:EA4C: 01        .byte $01   ; 03 



tbl_EA4D:
; bzk optimize, same table as 0x0013E9
- D 3 - - - 0x002A5D 00:EA4D: FF        .byte $FF   ; 00 
- D 3 - - - 0x002A5E 00:EA4E: 00        .byte $00   ; 01 
- D 3 - - - 0x002A5F 00:EA4F: 01        .byte $01   ; 02 
- D 3 - - - 0x002A60 00:EA50: 00        .byte $00   ; 03 



sub_EA51_clear_sound_engine_data:
C - - - - - 0x002A61 00:EA51: A9 0F     LDA #$0F
C - - - - - 0x002A63 00:EA53: 8D 15 40  STA $4015
C - - - - - 0x002A66 00:EA56: A9 C0     LDA #$C0
C - - - - - 0x002A68 00:EA58: 8D 17 40  STA $4017
C - - - - - 0x002A6B 00:EA5B: A9 1C     LDA #< ram_se_data
C - - - - - 0x002A6D 00:EA5D: 85 F0     STA ram_00F0_t01_se_data
C - - - - - 0x002A6F 00:EA5F: A9 03     LDA #> ram_se_data
C - - - - - 0x002A71 00:EA61: 85 F1     STA ram_00F0_t01_se_data + $01
C - - - - - 0x002A73 00:EA63: A2 00     LDX #$00
C - - - - - 0x002A75 00:EA65: A0 00     LDY #con_se_index_00
bra_EA67_loop:
C - - - - - 0x002A77 00:EA67: 98        TYA ; 00
C - - - - - 0x002A78 00:EA68: 91 F0     STA (ram_00F0_t01_se_data),Y
C - - - - - 0x002A7A 00:EA6A: 9D 00 03  STA ram_sounds,X
C - - - - - 0x002A7D 00:EA6D: 18        CLC
C - - - - - 0x002A7E 00:EA6E: A5 F0     LDA ram_00F0_t01_se_data
C - - - - - 0x002A80 00:EA70: 69 08     ADC #$08
C - - - - - 0x002A82 00:EA72: 85 F0     STA ram_00F0_t01_se_data
C - - - - - 0x002A84 00:EA74: 90 02     BCC bra_EA78_not_overflow
; if overflow
- - - - - - 0x002A86 00:EA76: E6 F1     INC ram_00F0_t01_se_data + $01
bra_EA78_not_overflow:
C - - - - - 0x002A88 00:EA78: E8        INX
C - - - - - 0x002A89 00:EA79: E0 1C     CPX #$1C
C - - - - - 0x002A8B 00:EA7B: D0 EA     BNE bra_EA67_loop
C - - - - - 0x002A8D 00:EA7D: 60        RTS



sub_EA7E_sound_driver:
C - - - - - 0x002A8E 00:EA7E: A5 6D     LDA ram_pause_flag
C - - - - - 0x002A90 00:EA80: D0 06     BNE bra_EA88_game_is_paused
; if not paused
C - - - - - 0x002A92 00:EA82: A9 1C     LDA #$1C    ; check all sfx addresses 0300-031B
C - - - - - 0x002A94 00:EA84: 85 F5     STA ram_sfx_check_limit
C - - - - - 0x002A96 00:EA86: 10 04     BPL bra_EA8C    ; jmp
bra_EA88_game_is_paused:
C - - - - - 0x002A98 00:EA88: A9 01     LDA #$01    ; check only pause sfx address 0300
C - - - - - 0x002A9A 00:EA8A: 85 F5     STA ram_sfx_check_limit
bra_EA8C:
C - - - - - 0x002A9C 00:EA8C: A9 00     LDA #$00
C - - - - - 0x002A9E 00:EA8E: A2 03     LDX #$03
bra_EA90_loop:
C - - - - - 0x002AA0 00:EA90: 95 F9     STA ram_00F9_se,X
C - - - - - 0x002AA2 00:EA92: CA        DEX
C - - - - - 0x002AA3 00:EA93: 10 FB     BPL bra_EA90_loop
; 
C - - - - - 0x002AA5 00:EA95: A9 00     LDA #$00
C - - - - - 0x002AA7 00:EA97: 85 F4     STA ram_sfx_array_index
C - - - - - 0x002AA9 00:EA99: A9 1C     LDA #< ram_se_data
C - - - - - 0x002AAB 00:EA9B: 85 F0     STA ram_00F0_t02_se_data
C - - - - - 0x002AAD 00:EA9D: A9 03     LDA #> ram_se_data
C - - - - - 0x002AAF 00:EA9F: 85 F1     STA ram_00F0_t02_se_data + $01
bra_EAA1_loop:
C - - - - - 0x002AB1 00:EAA1: A6 F4     LDX ram_sfx_array_index
C - - - - - 0x002AB3 00:EAA3: BD 00 03  LDA ram_sounds,X
C - - - - - 0x002AB6 00:EAA6: F0 3B     BEQ bra_EAE3
C - - - - - 0x002AB8 00:EAA8: A0 00     LDY #con_se_index_00
C - - - - - 0x002ABA 00:EAAA: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002ABC 00:EAAC: F0 35     BEQ bra_EAE3
C - - - - - 0x002ABE 00:EAAE: C9 05     CMP #$05
C - - - - - 0x002AC0 00:EAB0: 90 0B     BCC bra_EABD
C - - - - - 0x002AC2 00:EAB2: 38        SEC
C - - - - - 0x002AC3 00:EAB3: E9 05     SBC #$05
C - - - - - 0x002AC5 00:EAB5: AA        TAX
C - - - - - 0x002AC6 00:EAB6: A9 01     LDA #$01
C - - - - - 0x002AC8 00:EAB8: 95 F9     STA ram_00F9_se,X
C - - - - - 0x002ACA 00:EABA: 4C E3 EA  JMP loc_EAE3
bra_EABD:
C - - - - - 0x002ACD 00:EABD: AA        TAX
C - - - - - 0x002ACE 00:EABE: CA        DEX
C - - - - - 0x002ACF 00:EABF: B5 F9     LDA ram_00F9_se,X
C - - - - - 0x002AD1 00:EAC1: D0 20     BNE bra_EAE3
C - - - - - 0x002AD3 00:EAC3: A9 01     LDA #$01
C - - - - - 0x002AD5 00:EAC5: 95 F9     STA ram_00F9_se,X
C - - - - - 0x002AD7 00:EAC7: 8A        TXA
C - - - - - 0x002AD8 00:EAC8: A8        TAY
C - - - - - 0x002AD9 00:EAC9: 18        CLC
C - - - - - 0x002ADA 00:EACA: 69 05     ADC #$05
C - - - - - 0x002ADC 00:EACC: A0 00     LDY #con_se_index_00
C - - - - - 0x002ADE 00:EACE: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002AE0 00:EAD0: 8A        TXA
; * 04
C - - - - - 0x002AE1 00:EAD1: 0A        ASL
C - - - - - 0x002AE2 00:EAD2: 0A        ASL
C - - - - - 0x002AE3 00:EAD3: AA        TAX
C - - - - - 0x002AE4 00:EAD4: A9 04     LDA #$04
C - - - - - 0x002AE6 00:EAD6: 85 FD     STA ram_00FD_t05_loop_counter
bra_EAD8_loop:
C - - - - - 0x002AE8 00:EAD8: C8        INY
; con_se_index_01
; con_se_index_02
; con_se_index_03
; con_se_index_04
C - - - - - 0x002AE9 00:EAD9: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002AEB 00:EADB: 9D 00 40  STA $4000,X ; 4000-400F
C - - - - - 0x002AEE 00:EADE: E8        INX
C - - - - - 0x002AEF 00:EADF: C6 FD     DEC ram_00FD_t05_loop_counter
C - - - - - 0x002AF1 00:EAE1: D0 F5     BNE bra_EAD8_loop
bra_EAE3:
loc_EAE3:
C D 3 - - - 0x002AF3 00:EAE3: 18        CLC
C - - - - - 0x002AF4 00:EAE4: A5 F0     LDA ram_00F0_t02_se_data
C - - - - - 0x002AF6 00:EAE6: 69 08     ADC #$08
C - - - - - 0x002AF8 00:EAE8: 85 F0     STA ram_00F0_t02_se_data
C - - - - - 0x002AFA 00:EAEA: 90 02     BCC bra_EAEE_not_overflow
; if overflow
- - - - - - 0x002AFC 00:EAEC: E6 F1     INC ram_00F0_t02_se_data + $01
bra_EAEE_not_overflow:
C - - - - - 0x002AFE 00:EAEE: E6 F4     INC ram_sfx_array_index
C - - - - - 0x002B00 00:EAF0: A5 F4     LDA ram_sfx_array_index
C - - - - - 0x002B02 00:EAF2: C5 F5     CMP ram_sfx_check_limit
C - - - - - 0x002B04 00:EAF4: 90 AB     BCC bra_EAA1_loop
C - - - - - 0x002B06 00:EAF6: A2 00     LDX #$00
bra_EAF8_loop:
C - - - - - 0x002B08 00:EAF8: 86 FD     STX ram_00FD_t06_loop_counter
C - - - - - 0x002B0A 00:EAFA: B5 F9     LDA ram_00F9_se,X
C - - - - - 0x002B0C 00:EAFC: D0 0C     BNE bra_EB0A
C - - - - - 0x002B0E 00:EAFE: 8A        TXA
; * 04
C - - - - - 0x002B0F 00:EAFF: 0A        ASL
C - - - - - 0x002B10 00:EB00: 0A        ASL
C - - - - - 0x002B11 00:EB01: AA        TAX
; * 02 (08)
C - - - - - 0x002B12 00:EB02: 0A        ASL
C - - - - - 0x002B13 00:EB03: 29 10     AND #$10
C - - - - - 0x002B15 00:EB05: 49 10     EOR #$10
C - - - - - 0x002B17 00:EB07: 9D 00 40  STA $4000,X ; 4000 4004 4008 400C
bra_EB0A:
C - - - - - 0x002B1A 00:EB0A: A6 FD     LDX ram_00FD_t06_loop_counter
C - - - - - 0x002B1C 00:EB0C: E8        INX
C - - - - - 0x002B1D 00:EB0D: E0 04     CPX #$04
C - - - - - 0x002B1F 00:EB0F: 90 E7     BCC bra_EAF8_loop
C - - - - - 0x002B21 00:EB11: A0 00     LDY #$00
C - - - - - 0x002B23 00:EB13: 84 F4     STY ram_sfx_array_index
C - - - - - 0x002B25 00:EB15: A9 1C     LDA #< ram_se_data
C - - - - - 0x002B27 00:EB17: 85 F0     STA ram_00F0_t02_se_data
C - - - - - 0x002B29 00:EB19: A9 03     LDA #> ram_se_data
C - - - - - 0x002B2B 00:EB1B: 85 F1     STA ram_00F0_t02_se_data + $01
bra_EB1D_loop:
C - - - - - 0x002B2D 00:EB1D: A6 F4     LDX ram_sfx_array_index
C - - - - - 0x002B2F 00:EB1F: BD 00 03  LDA ram_sounds,X
C - - - - - 0x002B32 00:EB22: F0 0A     BEQ bra_EB2E
C - - - - - 0x002B34 00:EB24: C9 01     CMP #$01
C - - - - - 0x002B36 00:EB26: D0 1A     BNE bra_EB42
C - - - - - 0x002B38 00:EB28: FE 00 03  INC ram_sounds,X
C - - - - - 0x002B3B 00:EB2B: 4C 4F EB  JMP loc_EB4F_initialize_sfx_and_read_data
bra_EB2E:
loc_EB2E:
C D 3 - - - 0x002B3E 00:EB2E: 18        CLC
C - - - - - 0x002B3F 00:EB2F: A5 F0     LDA ram_00F0_t02_se_data
C - - - - - 0x002B41 00:EB31: 69 08     ADC #$08
C - - - - - 0x002B43 00:EB33: 85 F0     STA ram_00F0_t02_se_data
C - - - - - 0x002B45 00:EB35: 90 02     BCC bra_EB39_not_overflow
- - - - - - 0x002B47 00:EB37: E6 F1     INC ram_00F0_t02_se_data + $01
bra_EB39_not_overflow:
C - - - - - 0x002B49 00:EB39: E6 F4     INC ram_sfx_array_index
C - - - - - 0x002B4B 00:EB3B: A5 F4     LDA ram_sfx_array_index
C - - - - - 0x002B4D 00:EB3D: C5 F5     CMP ram_sfx_check_limit
C - - - - - 0x002B4F 00:EB3F: 90 DC     BCC bra_EB1D_loop
C - - - - - 0x002B51 00:EB41: 60        RTS
bra_EB42:
C - - - - - 0x002B52 00:EB42: A0 07     LDY #con_se_index_07
C - - - - - 0x002B54 00:EB44: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B56 00:EB46: 38        SEC
C - - - - - 0x002B57 00:EB47: E9 01     SBC #$01
C - - - - - 0x002B59 00:EB49: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B5B 00:EB4B: F0 38     BEQ bra_EB85_read_sfx_data
C - - - - - 0x002B5D 00:EB4D: D0 DF     BNE bra_EB2E    ; jmp



loc_EB4F_initialize_sfx_and_read_data:
C D 3 - - - 0x002B5F 00:EB4F: A9 00     LDA #$00
C - - - - - 0x002B61 00:EB51: A0 05     LDY #con_se_index_05_data_pointer
C - - - - - 0x002B63 00:EB53: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B65 00:EB55: 20 AF EC  JSR sub_ECAF_prepare_sound_engine_data_pointer
; initialization
C - - - - - 0x002B68 00:EB58: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002B6B 00:EB5B: A0 00     LDY #con_se_index_00
C - - - - - 0x002B6D 00:EB5D: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B6F 00:EB5F: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002B72 00:EB62: A0 01     LDY #con_se_index_01
C - - - - - 0x002B74 00:EB64: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B76 00:EB66: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002B79 00:EB69: A0 02     LDY #con_se_index_02
C - - - - - 0x002B7B 00:EB6B: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B7D 00:EB6D: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002B80 00:EB70: A0 04     LDY #con_se_index_04
C - - - - - 0x002B82 00:EB72: 91 F0     STA (ram_00F0_t02_se_data),Y
; bzk optimize, use PHA after 0x002B6D
; and PLA here instead of LDY + LDA
C - - - - - 0x002B84 00:EB74: A0 00     LDY #con_se_index_00
C - - - - - 0x002B86 00:EB76: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B88 00:EB78: C9 04     CMP #$04
C - - - - - 0x002B8A 00:EB7A: D0 0C     BNE bra_EB88
; if 04 (explosions and score count only)
C - - - - - 0x002B8C 00:EB7C: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002B8F 00:EB7F: A0 03     LDY #con_se_index_03
C - - - - - 0x002B91 00:EB81: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002B93 00:EB83: 10 03     BPL bra_EB88    ; jmp
bra_EB85_read_sfx_data:
C - - - - - 0x002B95 00:EB85: 20 AF EC  JSR sub_ECAF_prepare_sound_engine_data_pointer
bra_EB88:   ; skips reloading pointers
loc_EB88_read_next_byte:
C D 3 - - - 0x002B98 00:EB88: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002B9B 00:EB8B: C9 E8     CMP #$E8
C - - - - - 0x002B9D 00:EB8D: B0 52     BCS bra_EBE1_control_bytes_E8_FF
C - - - - - 0x002B9F 00:EB8F: C9 60     CMP #$60    ; con_se_cb_60
C - - - - - 0x002BA1 00:EB91: F0 44     BEQ bra_EBD7___60
C - - - - - 0x002BA3 00:EB93: 90 09     BCC bra_EB9E___00_5F
; if 61-E7
C - - - - - 0x002BA5 00:EB95: E9 60     SBC #$60
C - - - - - 0x002BA7 00:EB97: A0 06     LDY #con_se_index_06
C - - - - - 0x002BA9 00:EB99: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BAB 00:EB9B: 4C 88 EB  JMP loc_EB88_read_next_byte
bra_EB9E___00_5F:
C - - - - - 0x002BAE 00:EB9E: 48        PHA
C - - - - - 0x002BAF 00:EB9F: 29 F8     AND #$F8
; / 04
C - - - - - 0x002BB1 00:EBA1: 4A        LSR
C - - - - - 0x002BB2 00:EBA2: 4A        LSR
C - - - - - 0x002BB3 00:EBA3: AA        TAX
C - - - - - 0x002BB4 00:EBA4: BD E6 EC  LDA tbl_ECE6,X
C - - - - - 0x002BB7 00:EBA7: 85 FD     STA ram_00FD_t08_lo
C - - - - - 0x002BB9 00:EBA9: BD E7 EC  LDA tbl_ECE6 + $01,X
C - - - - - 0x002BBC 00:EBAC: 85 FE     STA ram_00FE_t01_hi
C - - - - - 0x002BBE 00:EBAE: 68        PLA
C - - - - - 0x002BBF 00:EBAF: 29 07     AND #$07
C - - - - - 0x002BC1 00:EBB1: F0 08     BEQ bra_EBBB
C - - - - - 0x002BC3 00:EBB3: AA        TAX
bra_EBB4_loop:
C - - - - - 0x002BC4 00:EBB4: 46 FD     LSR ram_00FD_t08_lo
C - - - - - 0x002BC6 00:EBB6: 66 FE     ROR ram_00FE_t01_hi
C - - - - - 0x002BC8 00:EBB8: CA        DEX
C - - - - - 0x002BC9 00:EBB9: D0 F9     BNE bra_EBB4_loop
bra_EBBB:
C - - - - - 0x002BCB 00:EBBB: A0 04     LDY #con_se_index_04
C - - - - - 0x002BCD 00:EBBD: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BCF 00:EBBF: 29 F8     AND #$F8
C - - - - - 0x002BD1 00:EBC1: 05 FD     ORA ram_00FD_t08_lo
C - - - - - 0x002BD3 00:EBC3: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BD5 00:EBC5: A5 FE     LDA ram_00FE_t01_hi
C - - - - - 0x002BD7 00:EBC7: 88        DEY ; 03 con_se_index_03
C - - - - - 0x002BD8 00:EBC8: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BDA 00:EBCA: A0 00     LDY #con_se_index_00
C - - - - - 0x002BDC 00:EBCC: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BDE 00:EBCE: C9 05     CMP #$05
C - - - - - 0x002BE0 00:EBD0: 90 05     BCC bra_EBD7
C - - - - - 0x002BE2 00:EBD2: 38        SEC
C - - - - - 0x002BE3 00:EBD3: E9 04     SBC #$04
C - - - - - 0x002BE5 00:EBD5: 91 F0     STA (ram_00F0_t02_se_data),Y
bra_EBD7___60:
bra_EBD7:
C - - - - - 0x002BE7 00:EBD7: A0 06     LDY #con_se_index_06
C - - - - - 0x002BE9 00:EBD9: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BEB 00:EBDB: C8        INY ; 07 con_se_index_07
C - - - - - 0x002BEC 00:EBDC: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002BEE 00:EBDE: 4C 2E EB  JMP loc_EB2E
bra_EBE1_control_bytes_E8_FF:
C - - - - - 0x002BF1 00:EBE1: E9 E8     SBC #$E8
C - - - - - 0x002BF3 00:EBE3: 20 D0 EC  JSR sub_ECD0_jump_to_pointers_after_JSR
- D 3 - I - 0x002BF6 00:EBE6: 0A EC     .word ofs_005_EC0A_E8_stop
- - - - - - 0x002BF8 00:EBE8: 21 EC     .word ofs_005_EC21_E9
- D 3 - I - 0x002BFA 00:EBEA: 33 EC     .word ofs_005_EC33_EA
- - - - - - 0x002BFC 00:EBEC: 45 EC     .word ofs_005_EC45_EB
- - - - - - 0x002BFE 00:EBEE: 57 EC     .word ofs_005_EC57_EC
- - - - - - 0x002C00 00:EBF0: 61 EC     .word ofs_005_EC61_ED
- D 3 - I - 0x002C02 00:EBF2: 6B EC     .word ofs_005_EC6B_EE
- D 3 - I - 0x002C04 00:EBF4: 75 EC     .word ofs_005_EC75_EF_clear_loop_counters
- D 3 - I - 0x002C06 00:EBF6: 81 EC     .word ofs_005_EC81_F0_loop_1
- D 3 - I - 0x002C08 00:EBF8: 85 EC     .word ofs_005_EC85_F1_loop_2
- D 3 - I - 0x002C0A 00:EBFA: 88 EC     .word ofs_005_EC88_F2_loop_3
- - - - - - 0x002C0C 00:EBFC: 99 EC     .word ofs_005_EC99_F3
- - - - - - 0x002C0E 00:EBFE: 99 EC     .word ofs_005_EC99_F4
- - - - - - 0x002C10 00:EC00: 99 EC     .word ofs_005_EC99_F5
- - - - - - 0x002C12 00:EC02: 99 EC     .word ofs_005_EC99_F6
- - - - - - 0x002C14 00:EC04: 99 EC     .word ofs_005_EC99_F7
- - - - - - 0x002C16 00:EC06: 99 EC     .word ofs_005_EC99_F8
- D 3 - I - 0x002C18 00:EC08: A5 EC     .word ofs_005_ECA5_F9_main_loop



ofs_005_EC0A_E8_stop:
; con_se_cb_stop
C - - J - - 0x002C1A 00:EC0A: A6 F4     LDX ram_sfx_array_index
C - - - - - 0x002C1C 00:EC0C: A9 00     LDA #$00
C - - - - - 0x002C1E 00:EC0E: 9D 00 03  STA ram_sounds,X
C - - - - - 0x002C21 00:EC11: A0 00     LDY #con_se_index_00
C - - - - - 0x002C23 00:EC13: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002C25 00:EC15: A0 05     LDY #con_se_index_05_data_pointer
C - - - - - 0x002C27 00:EC17: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002C29 00:EC19: 38        SEC
C - - - - - 0x002C2A 00:EC1A: E9 01     SBC #$01
C - - - - - 0x002C2C 00:EC1C: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002C2E 00:EC1E: 4C 2E EB  JMP loc_EB2E



ofs_005_EC21_E9:
; con_se_cb_E9
- - - - - - 0x002C31 00:EC21: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
- - - - - - 0x002C34 00:EC24: 85 FD     STA ram_00FD_t07
- - - - - - 0x002C36 00:EC26: A0 01     LDY #con_se_index_01
- - - - - - 0x002C38 00:EC28: B1 F0     LDA (ram_00F0_t02_se_data),Y
- - - - - - 0x002C3A 00:EC2A: 29 3F     AND #$3F
- - - - - - 0x002C3C 00:EC2C: 05 FD     ORA ram_00FD_t07
- - - - - - 0x002C3E 00:EC2E: 91 F0     STA (ram_00F0_t02_se_data),Y
- - - - - - 0x002C40 00:EC30: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC33_EA:
; con_se_cb_EA
C - - J - - 0x002C43 00:EC33: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002C46 00:EC36: 85 FD     STA ram_00FD_t03
C - - - - - 0x002C48 00:EC38: A0 01     LDY #con_se_index_01
C - - - - - 0x002C4A 00:EC3A: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002C4C 00:EC3C: 29 C0     AND #$C0
C - - - - - 0x002C4E 00:EC3E: 05 FD     ORA ram_00FD_t03
C - - - - - 0x002C50 00:EC40: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002C52 00:EC42: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC45_EB:
; con_se_cb_EB
- - - - - - 0x002C55 00:EC45: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
- - - - - - 0x002C58 00:EC48: 85 FD     STA ram_00FD_t04
- - - - - - 0x002C5A 00:EC4A: A0 01     LDY #con_se_index_01
- - - - - - 0x002C5C 00:EC4C: B1 F0     LDA (ram_00F0_t02_se_data),Y
- - - - - - 0x002C5E 00:EC4E: 29 F0     AND #$F0
- - - - - - 0x002C60 00:EC50: 05 FD     ORA ram_00FD_t04
- - - - - - 0x002C62 00:EC52: 91 F0     STA (ram_00F0_t02_se_data),Y
- - - - - - 0x002C64 00:EC54: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC57_EC:
; con_se_cb_EC
- - - - - - 0x002C67 00:EC57: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
- - - - - - 0x002C6A 00:EC5A: A0 02     LDY #con_se_index_02
- - - - - - 0x002C6C 00:EC5C: 91 F0     STA (ram_00F0_t02_se_data),Y
- - - - - - 0x002C6E 00:EC5E: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC61_ED:
; con_se_cb_ED
- - - - - - 0x002C71 00:EC61: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
- - - - - - 0x002C74 00:EC64: A0 04     LDY #con_se_index_04
- - - - - - 0x002C76 00:EC66: 91 F0     STA (ram_00F0_t02_se_data),Y
- - - - - - 0x002C78 00:EC68: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC6B_EE:
; con_se_cb_EE
C - - J - - 0x002C7B 00:EC6B: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002C7E 00:EC6E: A0 01     LDY #con_se_index_01
C - - - - - 0x002C80 00:EC70: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002C82 00:EC72: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC75_EF_clear_loop_counters:
; con_se_cb_clear_loop_counters
C - - J - - 0x002C85 00:EC75: A9 00     LDA #$00
C - - - - - 0x002C87 00:EC77: A2 02     LDX #$02
bra_EC79_loop:
C - - - - - 0x002C89 00:EC79: 95 F6     STA ram_00F6_se_loop_counter,X
C - - - - - 0x002C8B 00:EC7B: CA        DEX
C - - - - - 0x002C8C 00:EC7C: 10 FB     BPL bra_EC79_loop
C - - - - - 0x002C8E 00:EC7E: 4C 88 EB  JMP loc_EB88_read_next_byte



ofs_005_EC81_F0_loop_1:
; con_se_cb_loop_1
C - - J - - 0x002C91 00:EC81: A2 00     LDX #$00
C - - - - - 0x002C93 00:EC83: F0 05     BEQ bra_EC8A    ; jmp



ofs_005_EC85_F1_loop_2:
; con_se_cb_loop_2
C - - J - - 0x002C95 00:EC85: A2 01     LDX #$01
C - - - - - 0x002C97 00:EC87: 2C        .byte $2C   ; BIT
ofs_005_EC88_F2_loop_3:
; con_se_cb_loop_3
C - - - - - 0x002C98 00:EC88: A2 02     LDX #$02
bra_EC8A:
C - - - - - 0x002C9A 00:EC8A: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002C9D 00:EC8D: F6 F6     INC ram_00F6_se_loop_counter,X
C - - - - - 0x002C9F 00:EC8F: D5 F6     CMP ram_00F6_se_loop_counter,X
C - - - - - 0x002CA1 00:EC91: D0 12     BNE bra_ECA5
C - - - - - 0x002CA3 00:EC93: A9 00     LDA #$00
C - - - - - 0x002CA5 00:EC95: 95 F6     STA ram_00F6_se_loop_counter,X
; bzk optimize, useless branch
C - - - - - 0x002CA7 00:EC97: F0 00     BEQ bra_EC99    ; jmp
bra_EC99:
ofs_005_EC99_F3:
; con_se_cb_F3
ofs_005_EC99_F4:
; con_se_cb_F4
ofs_005_EC99_F5:
; con_se_cb_F5
ofs_005_EC99_F6:
; con_se_cb_F6
ofs_005_EC99_F7:
; con_se_cb_F7
ofs_005_EC99_F8:
; con_se_cb_F8
C - - - - - 0x002CA9 00:EC99: A0 05     LDY #con_se_index_05_data_pointer
C - - - - - 0x002CAB 00:EC9B: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002CAD 00:EC9D: 18        CLC
C - - - - - 0x002CAE 00:EC9E: 69 01     ADC #$01
C - - - - - 0x002CB0 00:ECA0: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002CB2 00:ECA2: 4C 88 EB  JMP loc_EB88_read_next_byte



bra_ECA5:
ofs_005_ECA5_F9_main_loop:
; con_se_cb_main_loop
C - - - - - 0x002CB5 00:ECA5: 20 BE EC  JSR sub_ECBE_read_byte_from_sound_data
C - - - - - 0x002CB8 00:ECA8: A0 05     LDY #con_se_index_05_data_pointer
C - - - - - 0x002CBA 00:ECAA: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002CBC 00:ECAC: 4C 88 EB  JMP loc_EB88_read_next_byte



sub_ECAF_prepare_sound_engine_data_pointer:
C - - - - - 0x002CBF 00:ECAF: A5 F4     LDA ram_sfx_array_index
C - - - - - 0x002CC1 00:ECB1: 0A        ASL
C - - - - - 0x002CC2 00:ECB2: AA        TAX
C - - - - - 0x002CC3 00:ECB3: BD FE EC  LDA tbl_ECFE_sfx_data,X
C - - - - - 0x002CC6 00:ECB6: 85 F2     STA ram_00F2_t01_se_data
C - - - - - 0x002CC8 00:ECB8: BD FF EC  LDA tbl_ECFE_sfx_data + $01,X
C - - - - - 0x002CCB 00:ECBB: 85 F3     STA ram_00F2_t01_se_data + $01
C - - - - - 0x002CCD 00:ECBD: 60        RTS



sub_ECBE_read_byte_from_sound_data:
C - - - - - 0x002CCE 00:ECBE: A5 F4     LDA ram_sfx_array_index
C - - - - - 0x002CD0 00:ECC0: A0 05     LDY #con_se_index_05_data_pointer
C - - - - - 0x002CD2 00:ECC2: B1 F0     LDA (ram_00F0_t02_se_data),Y
C - - - - - 0x002CD4 00:ECC4: A8        TAY
C - - - - - 0x002CD5 00:ECC5: B1 F2     LDA (ram_00F2_t01_se_data),Y
C - - - - - 0x002CD7 00:ECC7: 48        PHA
C - - - - - 0x002CD8 00:ECC8: C8        INY
C - - - - - 0x002CD9 00:ECC9: 98        TYA
C - - - - - 0x002CDA 00:ECCA: A0 05     LDY #con_se_index_05_data_pointer
C - - - - - 0x002CDC 00:ECCC: 91 F0     STA (ram_00F0_t02_se_data),Y
C - - - - - 0x002CDE 00:ECCE: 68        PLA
C - - - - - 0x002CDF 00:ECCF: 60        RTS



sub_ECD0_jump_to_pointers_after_JSR:
C - - - - - 0x002CE0 00:ECD0: 0A        ASL
C - - - - - 0x002CE1 00:ECD1: A8        TAY
C - - - - - 0x002CE2 00:ECD2: C8        INY
C - - - - - 0x002CE3 00:ECD3: 68        PLA
C - - - - - 0x002CE4 00:ECD4: 85 FD     STA ram_00FD_t02_data
C - - - - - 0x002CE6 00:ECD6: 68        PLA
C - - - - - 0x002CE7 00:ECD7: 85 FE     STA ram_00FD_t02_data + $01
C - - - - - 0x002CE9 00:ECD9: B1 FD     LDA (ram_00FD_t02_data),Y
C - - - - - 0x002CEB 00:ECDB: AA        TAX
C - - - - - 0x002CEC 00:ECDC: C8        INY
C - - - - - 0x002CED 00:ECDD: B1 FD     LDA (ram_00FD_t02_data),Y
C - - - - - 0x002CEF 00:ECDF: 85 FE     STA ram_00FD_t01_jmp + $01
C - - - - - 0x002CF1 00:ECE1: 86 FD     STX ram_00FD_t01_jmp
C - - - - - 0x002CF3 00:ECE3: 6C FD 00  JMP (ram_00FD_t01_jmp)



tbl_ECE6:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 3 - - - 0x002CF6 00:ECE6: 07        .byte $07, $F2   ; 00 
- D 3 - - - 0x002CF8 00:ECE8: 07        .byte $07, $80   ; 02 
- D 3 - - - 0x002CFA 00:ECEA: 07        .byte $07, $14   ; 04 
- D 3 - - - 0x002CFC 00:ECEC: 06        .byte $06, $AE   ; 06 
- D 3 - - - 0x002CFE 00:ECEE: 06        .byte $06, $43   ; 08 
- D 3 - - - 0x002D00 00:ECF0: 05        .byte $05, $F4   ; 0A 
- D 3 - - - 0x002D02 00:ECF2: 05        .byte $05, $9E   ; 0C 
- D 3 - - - 0x002D04 00:ECF4: 05        .byte $05, $4E   ; 0E 
- D 3 - - - 0x002D06 00:ECF6: 05        .byte $05, $02   ; 10 
- D 3 - - - 0x002D08 00:ECF8: 04        .byte $04, $BA   ; 12 
- D 3 - - - 0x002D0A 00:ECFA: 04        .byte $04, $76   ; 14 
- D 3 - - - 0x002D0C 00:ECFC: 04        .byte $04, $36   ; 16 



tbl_ECFE_sfx_data:
- D 3 - - - 0x002D0E 00:ECFE: 2C EE     .word _off000_sfx_EE2C_00_pause
- D 3 - - - 0x002D10 00:ED00: 36 ED     .word _off000_sfx_ED36_01_stage_load_1
- D 3 - - - 0x002D12 00:ED02: 5D ED     .word _off000_sfx_ED5D_02_stage_load_2
- D 3 - - - 0x002D14 00:ED04: 88 ED     .word _off000_sfx_ED88_03_stage_load_3
- D 3 - - - 0x002D16 00:ED06: 9F EE     .word _off000_sfx_EE9F_04_gain_life_1
- D 3 - - - 0x002D18 00:ED08: AE EE     .word _off000_sfx_EEAE_05_gain_life_2
- D 3 - - - 0x002D1A 00:ED0A: 19 EE     .word _off000_sfx_EE19_06_bonus_pickup
- D 3 - - - 0x002D1C 00:ED0C: B3 ED     .word _off000_sfx_EDB3_07_explosion_player
- - - - - - 0x002D1E 00:ED0E: D5 ED     .word _off000_sfx_EDD5_08   ; unused (some kind of shot)
- D 3 - - - 0x002D20 00:ED10: 48 EE     .word _off000_sfx_EE48_09_bonus_appear
- D 3 - - - 0x002D22 00:ED12: 03 EE     .word _off000_sfx_EE03_0A_explosion_enemy
- D 3 - - - 0x002D24 00:ED14: F4 ED     .word _off000_sfx_EDF4_0B_explosion_hq
- D 3 - - - 0x002D26 00:ED16: 5E EE     .word _off000_sfx_EE5E_0C_bullet_hit_brick
- D 3 - - - 0x002D28 00:ED18: 56 EE     .word _off000_sfx_EE56_0D_bullet_hit_wall
- D 3 - - - 0x002D2A 00:ED1A: 67 EE     .word _off000_sfx_EE67_0E_bullet_hit_tank
- D 3 - - - 0x002D2C 00:ED1C: 12 EE     .word _off000_sfx_EE12_0F_shot
- D 3 - - - 0x002D2E 00:ED1E: 95 EE     .word _off000_sfx_EE95_10_movement_ice
- D 3 - - - 0x002D30 00:ED20: 8C EE     .word _off000_sfx_EE8C_11_movement_player
- D 3 - - - 0x002D32 00:ED22: 82 EE     .word _off000_sfx_EE82_12_movement_enemy
- D 3 - - - 0x002D34 00:ED24: 73 EE     .word _off000_sfx_EE73_13_score_count_1
- D 3 - - - 0x002D36 00:ED26: 7A EE     .word _off000_sfx_EE7A_14_score_count_2
- D 3 - - - 0x002D38 00:ED28: C1 EE     .word _off000_sfx_EEC1_15_hiscore_1
- D 3 - - - 0x002D3A 00:ED2A: DF EE     .word _off000_sfx_EEDF_16_hiscore_2
- D 3 - - - 0x002D3C 00:ED2C: 0A EF     .word _off000_sfx_EF0A_17_hiscore_3
- D 3 - - - 0x002D3E 00:ED2E: 3C EF     .word _off000_sfx_EF3C_18_game_over_1
- D 3 - - - 0x002D40 00:ED30: 4F EF     .word _off000_sfx_EF4F_19_game_over_2
- D 3 - - - 0x002D42 00:ED32: 62 EF     .word _off000_sfx_EF62_1A_game_over_3
- D 3 - - - 0x002D44 00:ED34: 3A EE     .word _off000_sfx_EE3A_1B_bonus_1000



_off000_sfx_ED36_01_stage_load_1:
; ram_sfx_stage_load_1
off_ED36_01:
- D 3 - I - 0x002D46 00:ED36: 01        .byte $01   ; 
- D 3 - I - 0x002D47 00:ED37: 81        .byte $81   ; 
- D 3 - I - 0x002D48 00:ED38: 7F        .byte $7F   ; 
- D 3 - I - 0x002D49 00:ED39: 40        .byte $40   ; 
; 
- D 3 - I - 0x002D4A 00:ED3A: EF        .byte con_se_cb_clear_loop_counters   ; 
- D 3 - I - 0x002D4B 00:ED3B: 68        .byte $68   ; 
off_ED3C_loop:
- D 3 - I - 0x002D4C 00:ED3C: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002D4D 00:ED3D: 2B        .byte $0A * $04 + $03   ; 
- D 3 - I - 0x002D4E 00:ED3E: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002D4F 00:ED3F: F0        .byte con_se_cb_loop_1, $02   ; 
- D 3 - I - 0x002D51 00:ED41: 06        .byte off_ED3C_loop - off_ED36_01   ; 
off_ED42_loop:
- D 3 - I - 0x002D52 00:ED42: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002D53 00:ED43: 43        .byte $10 * $04 + $03   ; 
- D 3 - I - 0x002D54 00:ED44: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002D55 00:ED45: F0        .byte con_se_cb_loop_1, $02   ; 
- D 3 - I - 0x002D57 00:ED47: 0C        .byte off_ED42_loop - off_ED36_01   ; 
off_ED48_loop:
- D 3 - I - 0x002D58 00:ED48: 43        .byte $10 * $04 + $03   ; 
- D 3 - I - 0x002D59 00:ED49: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002D5A 00:ED4A: 04        .byte $00 * $04 + $04   ; 
- D 3 - I - 0x002D5B 00:ED4B: F0        .byte con_se_cb_loop_1, $02   ; 
- D 3 - I - 0x002D5D 00:ED4D: 12        .byte off_ED48_loop - off_ED36_01   ; 
off_ED4E_loop:
- D 3 - I - 0x002D5E 00:ED4E: 5B        .byte $16 * $04 + $03   ; 
- D 3 - I - 0x002D5F 00:ED4F: 0C        .byte $02 * $04 + $04   ; 
- D 3 - I - 0x002D60 00:ED50: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002D61 00:ED51: F0        .byte con_se_cb_loop_1, $02   ; 
- D 3 - I - 0x002D63 00:ED53: 18        .byte off_ED4E_loop - off_ED36_01   ; 
- D 3 - I - 0x002D64 00:ED54: 78        .byte $78   ; 
- D 3 - I - 0x002D65 00:ED55: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002D66 00:ED56: 68        .byte $68   ; 
- D 3 - I - 0x002D67 00:ED57: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002D68 00:ED58: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002D69 00:ED59: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002D6A 00:ED5A: 78        .byte $78   ; 
- D 3 - I - 0x002D6B 00:ED5B: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002D6C 00:ED5C: E8        .byte con_se_cb_stop   ; 



_off000_sfx_ED5D_02_stage_load_2:
; ram_sfx_stage_load_2
off_ED5D_02:
- D 3 - I - 0x002D6D 00:ED5D: 03        .byte $03   ; 
- D 3 - I - 0x002D6E 00:ED5E: 10        .byte $10   ; 
- D 3 - I - 0x002D6F 00:ED5F: 7F        .byte $7F   ; 
- D 3 - I - 0x002D70 00:ED60: 08        .byte $08   ; 
; 
- D 3 - I - 0x002D71 00:ED61: 78        .byte $78   ; 
- D 3 - I - 0x002D72 00:ED62: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002D73 00:ED63: 68        .byte $68   ; 
off_ED64_loop:
- D 3 - I - 0x002D74 00:ED64: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002D75 00:ED65: F1        .byte con_se_cb_loop_2, $03   ; 
- D 3 - I - 0x002D77 00:ED67: 07        .byte off_ED64_loop - off_ED5D_02   ; 
- D 3 - I - 0x002D78 00:ED68: 78        .byte $78   ; 
- D 3 - I - 0x002D79 00:ED69: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002D7A 00:ED6A: 68        .byte $68   ; 
off_ED6B_loop:
- D 3 - I - 0x002D7B 00:ED6B: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002D7C 00:ED6C: F1        .byte con_se_cb_loop_2, $03   ; 
- D 3 - I - 0x002D7E 00:ED6E: 0E        .byte off_ED6B_loop - off_ED5D_02   ; 
- D 3 - I - 0x002D7F 00:ED6F: 78        .byte $78   ; 
- D 3 - I - 0x002D80 00:ED70: 42        .byte $10 * $04 + $02   ; 
- D 3 - I - 0x002D81 00:ED71: 68        .byte $68   ; 
off_ED72_loop:
- D 3 - I - 0x002D82 00:ED72: 42        .byte $10 * $04 + $02   ; 
- D 3 - I - 0x002D83 00:ED73: F1        .byte con_se_cb_loop_2, $03   ; 
- D 3 - I - 0x002D85 00:ED75: 15        .byte off_ED72_loop - off_ED5D_02   ; 
off_ED76_loop:
- D 3 - I - 0x002D86 00:ED76: 5A        .byte $16 * $04 + $02   ; 
- D 3 - I - 0x002D87 00:ED77: F1        .byte con_se_cb_loop_2, $03   ; 
- D 3 - I - 0x002D89 00:ED79: 19        .byte off_ED76_loop - off_ED5D_02   ; 
off_ED7A_loop:
- D 3 - I - 0x002D8A 00:ED7A: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002D8B 00:ED7B: F1        .byte con_se_cb_loop_2, $03   ; 
- D 3 - I - 0x002D8D 00:ED7D: 1D        .byte off_ED7A_loop - off_ED5D_02   ; 
- D 3 - I - 0x002D8E 00:ED7E: 78        .byte $78   ; 
- D 3 - I - 0x002D8F 00:ED7F: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002D90 00:ED80: 68        .byte $68   ; 
off_ED81_loop:
- D 3 - I - 0x002D91 00:ED81: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002D92 00:ED82: F1        .byte con_se_cb_loop_2, $03   ; 
- D 3 - I - 0x002D94 00:ED84: 24        .byte off_ED81_loop - off_ED5D_02   ; 
- D 3 - I - 0x002D95 00:ED85: 78        .byte $78   ; 
- D 3 - I - 0x002D96 00:ED86: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002D97 00:ED87: E8        .byte con_se_cb_stop   ; 



_off000_sfx_ED88_03_stage_load_3:
off_ED88_03:
; ram_sfx_stage_load_3
- D 3 - I - 0x002D98 00:ED88: 02        .byte $02   ; 
- D 3 - I - 0x002D99 00:ED89: 81        .byte $81   ; 
- D 3 - I - 0x002D9A 00:ED8A: 7F        .byte $7F   ; 
- D 3 - I - 0x002D9B 00:ED8B: 40        .byte $40   ; 
; 
- D 3 - I - 0x002D9C 00:ED8C: 78        .byte $78   ; 
- D 3 - I - 0x002D9D 00:ED8D: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002D9E 00:ED8E: 68        .byte $68   ; 
off_ED8F_loop:
- D 3 - I - 0x002D9F 00:ED8F: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002DA0 00:ED90: F2        .byte con_se_cb_loop_3, $03   ; 
- D 3 - I - 0x002DA2 00:ED92: 07        .byte off_ED8F_loop - off_ED88_03   ; 
- D 3 - I - 0x002DA3 00:ED93: 78        .byte $78   ; 
- D 3 - I - 0x002DA4 00:ED94: 0A        .byte $02 * $04 + $02   ; 
- D 3 - I - 0x002DA5 00:ED95: 68        .byte $68   ; 
off_ED96_loop:
- D 3 - I - 0x002DA6 00:ED96: 0A        .byte $02 * $04 + $02   ; 
- D 3 - I - 0x002DA7 00:ED97: F2        .byte con_se_cb_loop_3, $03   ; 
- D 3 - I - 0x002DA9 00:ED99: 0E        .byte off_ED96_loop - off_ED88_03   ; 
- D 3 - I - 0x002DAA 00:ED9A: 78        .byte $78   ; 
- D 3 - I - 0x002DAB 00:ED9B: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002DAC 00:ED9C: 68        .byte $68   ; 
off_ED9D_loop:
- D 3 - I - 0x002DAD 00:ED9D: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002DAE 00:ED9E: F2        .byte con_se_cb_loop_3, $03   ; 
- D 3 - I - 0x002DB0 00:EDA0: 15        .byte off_ED9D_loop - off_ED88_03   ; 
off_EDA1_loop:
- D 3 - I - 0x002DB1 00:EDA1: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002DB2 00:EDA2: F2        .byte con_se_cb_loop_3, $03   ; 
- D 3 - I - 0x002DB4 00:EDA4: 19        .byte off_EDA1_loop - off_ED88_03   ; 
off_EDA5_loop:
- D 3 - I - 0x002DB5 00:EDA5: 42        .byte $10 * $04 + $02   ; 
- D 3 - I - 0x002DB6 00:EDA6: F2        .byte con_se_cb_loop_3, $03   ; 
- D 3 - I - 0x002DB8 00:EDA8: 1D        .byte off_EDA5_loop - off_ED88_03   ; 
- D 3 - I - 0x002DB9 00:EDA9: 78        .byte $78   ; 
- D 3 - I - 0x002DBA 00:EDAA: 3A        .byte $0E * $04 + $02   ; 
- D 3 - I - 0x002DBB 00:EDAB: 68        .byte $68   ; 
off_EDAC_loop:
- D 3 - I - 0x002DBC 00:EDAC: 3A        .byte $0E * $04 + $02   ; 
- D 3 - I - 0x002DBD 00:EDAD: F2        .byte con_se_cb_loop_3, $03   ; 
- D 3 - I - 0x002DBF 00:EDAF: 24        .byte off_EDAC_loop - off_ED88_03   ; 
- D 3 - I - 0x002DC0 00:EDB0: 78        .byte $78   ; 
- D 3 - I - 0x002DC1 00:EDB1: 3A        .byte $0E * $04 + $02   ; 
- D 3 - I - 0x002DC2 00:EDB2: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EDB3_07_explosion_player:
; ram_sfx_explosion_player
- D 3 - I - 0x002DC3 00:EDB3: 04        .byte $04   ; 
- D 3 - I - 0x002DC4 00:EDB4: 1F        .byte $1F   ; 
- D 3 - I - 0x002DC5 00:EDB5: 7F        .byte $7F   ; 
- D 3 - I - 0x002DC6 00:EDB6: 30        .byte $30   ; 
- D 3 - I - 0x002DC7 00:EDB7: 0A        .byte $0A   ; 
; 
- D 3 - I - 0x002DC8 00:EDB8: 62        .byte $62   ; 
- D 3 - I - 0x002DC9 00:EDB9: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DCA 00:EDBA: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DCB 00:EDBB: EA        .byte con_se_cb_EA, $1E   ; 
- D 3 - I - 0x002DCD 00:EDBD: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DCE 00:EDBE: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DCF 00:EDBF: EA        .byte con_se_cb_EA, $1D   ; 
- D 3 - I - 0x002DD1 00:EDC1: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DD2 00:EDC2: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DD3 00:EDC3: EA        .byte con_se_cb_EA, $1C   ; 
- D 3 - I - 0x002DD5 00:EDC5: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DD6 00:EDC6: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DD7 00:EDC7: EA        .byte con_se_cb_EA, $1B   ; 
- D 3 - I - 0x002DD9 00:EDC9: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DDA 00:EDCA: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DDB 00:EDCB: EA        .byte con_se_cb_EA, $1A   ; 
- D 3 - I - 0x002DDD 00:EDCD: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DDE 00:EDCE: EA        .byte con_se_cb_EA, $19   ; 
- D 3 - I - 0x002DE0 00:EDD0: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DE1 00:EDD1: EA        .byte con_se_cb_EA, $18   ; 
- D 3 - I - 0x002DE3 00:EDD3: 49        .byte $12 * $04 + $01   ; 
- D 3 - I - 0x002DE4 00:EDD4: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EDD5_08:
; unused (some kind of shot)
- - - - - - 0x002DE5 00:EDD5: 02        .byte $02   ; 
- - - - - - 0x002DE6 00:EDD6: 1F        .byte $1F   ; 
- - - - - - 0x002DE7 00:EDD7: 7F        .byte $7F   ; 
- - - - - - 0x002DE8 00:EDD8: 30        .byte $30   ; 
; 
- - - - - - 0x002DE9 00:EDD9: 62        .byte $62   ; 
- - - - - - 0x002DEA 00:EDDA: 00        .byte $00   ; 
- - - - - - 0x002DEB 00:EDDB: 01        .byte $01   ; 
- - - - - - 0x002DEC 00:EDDC: 00        .byte $00   ; 
- - - - - - 0x002DED 00:EDDD: EA        .byte con_se_cb_EA, $1E   ; 
- - - - - - 0x002DEF 00:EDDF: 01        .byte $01   ; 
- - - - - - 0x002DF0 00:EDE0: 00        .byte $00   ; 
- - - - - - 0x002DF1 00:EDE1: EA        .byte con_se_cb_EA, $1D   ; 
- - - - - - 0x002DF3 00:EDE3: 01        .byte $01   ; 
- - - - - - 0x002DF4 00:EDE4: 00        .byte $00   ; 
- - - - - - 0x002DF5 00:EDE5: 01        .byte $01   ; 
- - - - - - 0x002DF6 00:EDE6: 00        .byte $00   ; 
- - - - - - 0x002DF7 00:EDE7: EA        .byte con_se_cb_EA, $1C   ; 
- - - - - - 0x002DF9 00:EDE9: 01        .byte $01   ; 
- - - - - - 0x002DFA 00:EDEA: EA        .byte con_se_cb_EA, $1B   ; 
- - - - - - 0x002DFC 00:EDEC: 00        .byte $00   ; 
- - - - - - 0x002DFD 00:EDED: EA        .byte con_se_cb_EA, $1A   ; 
- - - - - - 0x002DFF 00:EDEF: 01        .byte $01   ; 
- - - - - - 0x002E00 00:EDF0: EA        .byte con_se_cb_EA, $19   ; 
- - - - - - 0x002E02 00:EDF2: 00        .byte $00   ; 
- - - - - - 0x002E03 00:EDF3: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EDF4_0B_explosion_hq:
; ram_sfx_explosion_hq
- D 3 - I - 0x002E04 00:EDF4: 02        .byte $02   ; 
- D 3 - I - 0x002E05 00:EDF5: 20        .byte $20   ; 
- D 3 - I - 0x002E06 00:EDF6: 7F        .byte $7F   ; 
- D 3 - I - 0x002E07 00:EDF7: 30        .byte $30   ; 
; 
- D 3 - I - 0x002E08 00:EDF8: 63        .byte $63   ; 
- D 3 - I - 0x002E09 00:EDF9: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002E0A 00:EDFA: 12        .byte $04 * $04 + $02   ; 
- D 3 - I - 0x002E0B 00:EDFB: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002E0C 00:EDFC: 31        .byte $0C * $04 + $01   ; 
- D 3 - I - 0x002E0D 00:EDFD: 19        .byte $06 * $04 + $01   ; 
- D 3 - I - 0x002E0E 00:EDFE: 11        .byte $04 * $04 + $01   ; 
- D 3 - I - 0x002E0F 00:EDFF: 50        .byte $14 * $04 + $00   ; 
- D 3 - I - 0x002E10 00:EE00: 30        .byte $0C * $04 + $00   ; 
- D 3 - I - 0x002E11 00:EE01: 18        .byte $04 * $04 + $08   ; 
- D 3 - I - 0x002E12 00:EE02: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE03_0A_explosion_enemy:
; ram_sfx_explosion_enemy
- D 3 - I - 0x002E13 00:EE03: 04        .byte $04   ; 
- D 3 - I - 0x002E14 00:EE04: 1F        .byte $1F   ; 
- D 3 - I - 0x002E15 00:EE05: 7F        .byte $7F   ; 
- D 3 - I - 0x002E16 00:EE06: 40        .byte $40   ; 
- D 3 - I - 0x002E17 00:EE07: 0A        .byte $0A   ; 
; 
- D 3 - I - 0x002E18 00:EE08: 62        .byte $62   ; 
- D 3 - I - 0x002E19 00:EE09: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002E1A 00:EE0A: EA        .byte con_se_cb_EA, $1E   ; 
- D 3 - I - 0x002E1C 00:EE0C: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002E1D 00:EE0D: EA        .byte con_se_cb_EA, $08   ; 
- D 3 - I - 0x002E1F 00:EE0F: 6A        .byte $6A   ; 
- D 3 - I - 0x002E20 00:EE10: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002E21 00:EE11: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE12_0F_shot:
; ram_sfx_shot
- D 3 - I - 0x002E22 00:EE12: 01        .byte $01   ; 
- D 3 - I - 0x002E23 00:EE13: 8F        .byte $8F   ; 
- D 3 - I - 0x002E24 00:EE14: 82        .byte $82   ; 
- D 3 - I - 0x002E25 00:EE15: 10        .byte $10   ; 
; 
- D 3 - I - 0x002E26 00:EE16: 6F        .byte $6F   ; 
- D 3 - I - 0x002E27 00:EE17: 2C        .byte $0A * $04 + $04   ; 
- D 3 - I - 0x002E28 00:EE18: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE19_06_bonus_pickup:
; ram_sfx_bonus_pickup
- D 3 - I - 0x002E29 00:EE19: 02        .byte $02   ; 
- D 3 - I - 0x002E2A 00:EE1A: 80        .byte $80   ; 
- D 3 - I - 0x002E2B 00:EE1B: 7F        .byte $7F   ; 
- D 3 - I - 0x002E2C 00:EE1C: 40        .byte $40   ; 
; 
- D 3 - I - 0x002E2D 00:EE1D: 63        .byte $63   ; 
- D 3 - I - 0x002E2E 00:EE1E: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002E2F 00:EE1F: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002E30 00:EE20: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002E31 00:EE21: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002E32 00:EE22: 4A        .byte $12 * $04 + $02   ; 
- D 3 - I - 0x002E33 00:EE23: 13        .byte $04 * $04 + $03   ; 
- D 3 - I - 0x002E34 00:EE24: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002E35 00:EE25: 4B        .byte $12 * $04 + $03   ; 
- D 3 - I - 0x002E36 00:EE26: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002E37 00:EE27: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002E38 00:EE28: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002E39 00:EE29: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002E3A 00:EE2A: 3C        .byte $0E * $04 + $04   ; 
- D 3 - I - 0x002E3B 00:EE2B: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE2C_00_pause:
; ram_sfx_pause
- D 3 - I - 0x002E3C 00:EE2C: 02        .byte $02   ; 
- D 3 - I - 0x002E3D 00:EE2D: 82        .byte $82   ; 
- D 3 - I - 0x002E3E 00:EE2E: 7F        .byte $7F   ; 
- D 3 - I - 0x002E3F 00:EE2F: 40        .byte $40   ; 
; 
- D 3 - I - 0x002E40 00:EE30: 64        .byte $64   ; 
- D 3 - I - 0x002E41 00:EE31: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002E42 00:EE32: 2B        .byte $0A * $04 + $03   ; 
- D 3 - I - 0x002E43 00:EE33: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002E44 00:EE34: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002E45 00:EE35: 2C        .byte $0A * $04 + $04   ; 
- D 3 - I - 0x002E46 00:EE36: 3C        .byte $0E * $04 + $04   ; 
- D 3 - I - 0x002E47 00:EE37: 6C        .byte $6C   ; 
- D 3 - I - 0x002E48 00:EE38: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002E49 00:EE39: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE3A_1B_bonus_1000:
; ram_sfx_bonus_1000
- D 3 - I - 0x002E4A 00:EE3A: 02        .byte $02   ; 
- D 3 - I - 0x002E4B 00:EE3B: 82        .byte $82   ; 
- D 3 - I - 0x002E4C 00:EE3C: 7F        .byte $7F   ; 
- D 3 - I - 0x002E4D 00:EE3D: 40        .byte $40   ; 
; 
- D 3 - I - 0x002E4E 00:EE3E: 63        .byte $63   ; 
- D 3 - I - 0x002E4F 00:EE3F: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002E50 00:EE40: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002E51 00:EE41: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002E52 00:EE42: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002E53 00:EE43: 3C        .byte $0E * $04 + $04   ; 
- D 3 - I - 0x002E54 00:EE44: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002E55 00:EE45: 6A        .byte $6A   ; 
- D 3 - I - 0x002E56 00:EE46: 54        .byte $14 * $04 + $04   ; 
- D 3 - I - 0x002E57 00:EE47: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE48_09_bonus_appear:
; ram_sfx_bonus_appear
- D 3 - I - 0x002E58 00:EE48: 02        .byte $02   ; 
- D 3 - I - 0x002E59 00:EE49: 60        .byte con_se_cb_60   ; 
- D 3 - I - 0x002E5A 00:EE4A: 7F        .byte $7F   ; 
- D 3 - I - 0x002E5B 00:EE4B: 40        .byte $40   ; 
; 
- D 3 - I - 0x002E5C 00:EE4C: 64        .byte $64   ; 
- D 3 - I - 0x002E5D 00:EE4D: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002E5E 00:EE4E: 3A        .byte $0E * $04 + $02   ; 
- D 3 - I - 0x002E5F 00:EE4F: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002E60 00:EE50: 03        .byte $00 * $04 + $03   ; 
- D 3 - I - 0x002E61 00:EE51: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002E62 00:EE52: 03        .byte $00 * $04 + $03   ; 
- D 3 - I - 0x002E63 00:EE53: 13        .byte $04 * $04 + $03   ; 
- D 3 - I - 0x002E64 00:EE54: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002E65 00:EE55: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE56_0D_bullet_hit_wall:
; ram_sfx_bullet_hit_wall
- D 3 - I - 0x002E66 00:EE56: 02        .byte $02   ; 
- D 3 - I - 0x002E67 00:EE57: D5        .byte $D5   ; 
- D 3 - I - 0x002E68 00:EE58: 7F        .byte $7F   ; 
- D 3 - I - 0x002E69 00:EE59: 00        .byte $00   ; 
; 
- D 3 - I - 0x002E6A 00:EE5A: 62        .byte $62   ; 
- D 3 - I - 0x002E6B 00:EE5B: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002E6C 00:EE5C: 1D        .byte $06 * $04 + $05   ; 
- D 3 - I - 0x002E6D 00:EE5D: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE5E_0C_bullet_hit_brick:
; ram_sfx_bullet_hit_brick
- D 3 - I - 0x002E6E 00:EE5E: 03        .byte $03   ; 
- D 3 - I - 0x002E6F 00:EE5F: 07        .byte $07   ; 
- D 3 - I - 0x002E70 00:EE60: 7F        .byte $7F   ; 
- D 3 - I - 0x002E71 00:EE61: 08        .byte $08   ; 
; 
- D 3 - I - 0x002E72 00:EE62: 61        .byte $61   ; 
- D 3 - I - 0x002E73 00:EE63: 3A        .byte $0E * $04 + $02   ; 
- D 3 - I - 0x002E74 00:EE64: 13        .byte $04 * $04 + $03   ; 
- D 3 - I - 0x002E75 00:EE65: 22        .byte $08 * $04 + $02   ; 
- D 3 - I - 0x002E76 00:EE66: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE67_0E_bullet_hit_tank:
; ram_sfx_bullet_hit_tank
- D 3 - I - 0x002E77 00:EE67: 02        .byte $02   ; 
- D 3 - I - 0x002E78 00:EE68: 40        .byte $40   ; 
- D 3 - I - 0x002E79 00:EE69: 7F        .byte $7F   ; 
- D 3 - I - 0x002E7A 00:EE6A: 00        .byte $00   ; 
; 
- D 3 - I - 0x002E7B 00:EE6B: 61        .byte $61   ; 
- D 3 - I - 0x002E7C 00:EE6C: 3D        .byte $0E * $04 + $05   ; 
- D 3 - I - 0x002E7D 00:EE6D: 62        .byte $62   ; 
- D 3 - I - 0x002E7E 00:EE6E: 45        .byte $10 * $04 + $05   ; 
- D 3 - I - 0x002E7F 00:EE6F: EA        .byte con_se_cb_EA, $10   ; 
- D 3 - I - 0x002E81 00:EE71: 28        .byte $08 * $04 + $08   ; 
- D 3 - I - 0x002E82 00:EE72: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE73_13_score_count_1:
; ram_sfx_score_count_1
- D 3 - I - 0x002E83 00:EE73: 02        .byte $02   ; 
- D 3 - I - 0x002E84 00:EE74: 80        .byte $80   ; 
- D 3 - I - 0x002E85 00:EE75: 7F        .byte $7F   ; 
- D 3 - I - 0x002E86 00:EE76: 18        .byte $18   ; 
; 
- D 3 - I - 0x002E87 00:EE77: 61        .byte $61   ; 
- D 3 - I - 0x002E88 00:EE78: 39        .byte $0E * $04 + $01   ; 
- D 3 - I - 0x002E89 00:EE79: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE7A_14_score_count_2:
; ram_sfx_score_count_2
- D 3 - I - 0x002E8A 00:EE7A: 04        .byte $04   ; 
- D 3 - I - 0x002E8B 00:EE7B: 00        .byte $00   ; 
- D 3 - I - 0x002E8C 00:EE7C: 7F        .byte $7F   ; 
- D 3 - I - 0x002E8D 00:EE7D: 28        .byte $28   ; 
- D 3 - I - 0x002E8E 00:EE7E: 0A        .byte $0A   ; 
; 
- D 3 - I - 0x002E8F 00:EE7F: 61        .byte $61   ; 
- D 3 - I - 0x002E90 00:EE80: 28        .byte $08 * $04 + $08   ; 
- D 3 - I - 0x002E91 00:EE81: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE82_12_movement_enemy:
; ram_sfx_movement_enemy
off_EE82_12:
- D 3 - I - 0x002E92 00:EE82: 02        .byte $02   ; 
- D 3 - I - 0x002E93 00:EE83: 8C        .byte $8C   ; 
- D 3 - I - 0x002E94 00:EE84: 94        .byte $94   ; 
- D 3 - I - 0x002E95 00:EE85: 40        .byte $40   ; 
; 
- D 3 - I - 0x002E96 00:EE86: 61        .byte $61   ; 
off_EE87_loop:
- D 3 - I - 0x002E97 00:EE87: 10        .byte $04 * $04 + $00   ; 
- D 3 - I - 0x002E98 00:EE88: 64        .byte $64   ; 
- D 3 - I - 0x002E99 00:EE89: 18        .byte $04 * $04 + $08   ; 
- D 3 - I - 0x002E9A 00:EE8A: F9        .byte con_se_cb_main_loop   ; 
- D 3 - I - 0x002E9B 00:EE8B: 05        .byte off_EE87_loop - off_EE82_12   ; 



_off000_sfx_EE8C_11_movement_player:
; ram_sfx_movement_player
off_EE8C_11:
- D 3 - I - 0x002E9C 00:EE8C: 02        .byte $02   ; 
- D 3 - I - 0x002E9D 00:EE8D: 80        .byte $80   ; 
- D 3 - I - 0x002E9E 00:EE8E: 94        .byte $94   ; 
- D 3 - I - 0x002E9F 00:EE8F: 48        .byte $48   ; 
; 
- D 3 - I - 0x002EA0 00:EE90: 62        .byte $62   ; 
off_EE91_loop:
- D 3 - I - 0x002EA1 00:EE91: 40        .byte $10 * $04 + $00   ; 
- D 3 - I - 0x002EA2 00:EE92: 48        .byte $10 * $04 + $08   ; 
- D 3 - I - 0x002EA3 00:EE93: F9        .byte con_se_cb_main_loop   ; 
- D 3 - I - 0x002EA4 00:EE94: 05        .byte off_EE91_loop - off_EE8C_11   ; 



_off000_sfx_EE95_10_movement_ice:
; ram_sfx_movement_ice
- D 3 - I - 0x002EA5 00:EE95: 01        .byte $01   ; 
- D 3 - I - 0x002EA6 00:EE96: 1F        .byte $1F   ; 
- D 3 - I - 0x002EA7 00:EE97: 7F        .byte $7F   ; 
- D 3 - I - 0x002EA8 00:EE98: 28        .byte $28   ; 
; 
- D 3 - I - 0x002EA9 00:EE99: 61        .byte $61   ; 
- D 3 - I - 0x002EAA 00:EE9A: 22        .byte $08 * $04 + $02   ; 
- D 3 - I - 0x002EAB 00:EE9B: 42        .byte $10 * $04 + $02   ; 
- D 3 - I - 0x002EAC 00:EE9C: 5A        .byte $16 * $04 + $02   ; 
- D 3 - I - 0x002EAD 00:EE9D: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002EAE 00:EE9E: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EE9F_04_gain_life_1:
; ram_sfx_gain_life_1
- D 3 - I - 0x002EAF 00:EE9F: 01        .byte $01   ; 
- D 3 - I - 0x002EB0 00:EEA0: A0        .byte $A0   ; 
- D 3 - I - 0x002EB1 00:EEA1: 7F        .byte $7F   ; 
- D 3 - I - 0x002EB2 00:EEA2: 40        .byte $40   ; 
; 
- D 3 - I - 0x002EB3 00:EEA3: 66        .byte $66   ; 
- D 3 - I - 0x002EB4 00:EEA4: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002EB5 00:EEA5: 3C        .byte $0E * $04 + $04   ; 
- D 3 - I - 0x002EB6 00:EEA6: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002EB7 00:EEA7: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002EB8 00:EEA8: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002EB9 00:EEA9: 3C        .byte $0E * $04 + $04   ; 
- D 3 - I - 0x002EBA 00:EEAA: 05        .byte $00 * $04 + $05   ; 
- D 3 - I - 0x002EBB 00:EEAB: 72        .byte $72   ; 
- D 3 - I - 0x002EBC 00:EEAC: 54        .byte $14 * $04 + $04   ; 
- D 3 - I - 0x002EBD 00:EEAD: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EEAE_05_gain_life_2:
; ram_sfx_gain_life_2
- D 3 - I - 0x002EBE 00:EEAE: 02        .byte $02   ; 
- D 3 - I - 0x002EBF 00:EEAF: 90        .byte $90   ; 
- D 3 - I - 0x002EC0 00:EEB0: 7F        .byte $7F   ; 
- D 3 - I - 0x002EC1 00:EEB1: 40        .byte $40   ; 
; 
- D 3 - I - 0x002EC2 00:EEB2: 62        .byte $62   ; 
- D 3 - I - 0x002EC3 00:EEB3: 38        .byte $0C * $04 + $08   ; 
- D 3 - I - 0x002EC4 00:EEB4: 66        .byte $66   ; 
- D 3 - I - 0x002EC5 00:EEB5: EA        .byte con_se_cb_EA, $20   ; 
- D 3 - I - 0x002EC7 00:EEB7: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002EC8 00:EEB8: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002EC9 00:EEB9: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002ECA 00:EEBA: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002ECB 00:EEBB: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002ECC 00:EEBC: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002ECD 00:EEBD: 1C        .byte $06 * $04 + $04   ; 
- D 3 - I - 0x002ECE 00:EEBE: 6A        .byte $6A   ; 
- D 3 - I - 0x002ECF 00:EEBF: 14        .byte $04 * $04 + $04   ; 
- D 3 - I - 0x002ED0 00:EEC0: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EEC1_15_hiscore_1:
; ram_sfx_hiscore_1
off_EEC1_15:
- D 3 - I - 0x002ED1 00:EEC1: 01        .byte $01   ; 
- D 3 - I - 0x002ED2 00:EEC2: B8        .byte $B8   ; 
- D 3 - I - 0x002ED3 00:EEC3: 7F        .byte $7F   ; 
- D 3 - I - 0x002ED4 00:EEC4: 40        .byte $40   ; 
; 
- D 3 - I - 0x002ED5 00:EEC5: EF        .byte con_se_cb_clear_loop_counters   ; 
off_EEC6_loop:
- D 3 - I - 0x002ED6 00:EEC6: 65        .byte $65   ; 
- D 3 - I - 0x002ED7 00:EEC7: 0C        .byte $02 * $04 + $04   ; 
- D 3 - I - 0x002ED8 00:EEC8: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002ED9 00:EEC9: F0        .byte con_se_cb_loop_1, $0C   ; 
- D 3 - I - 0x002EDB 00:EECB: 05        .byte off_EEC6_loop - off_EEC1_15   ; 
off_EECC_loop:
- D 3 - I - 0x002EDC 00:EECC: 0C        .byte $02 * $04 + $04   ; 
- D 3 - I - 0x002EDD 00:EECD: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002EDE 00:EECE: F0        .byte con_se_cb_loop_1, $0C   ; 
- D 3 - I - 0x002EE0 00:EED0: 0B        .byte off_EECC_loop - off_EEC1_15   ; 
off_EED1_loop:
- D 3 - I - 0x002EE1 00:EED1: 34        .byte $0C * $04 + $04   ; 
- D 3 - I - 0x002EE2 00:EED2: 24        .byte $08 * $04 + $04   ; 
- D 3 - I - 0x002EE3 00:EED3: F0        .byte con_se_cb_loop_1, $08   ; 
- D 3 - I - 0x002EE5 00:EED5: 10        .byte off_EED1_loop - off_EEC1_15   ; 
- D 3 - I - 0x002EE6 00:EED6: EA        .byte con_se_cb_EA, $30   ; 
- D 3 - I - 0x002EE8 00:EED8: B0        .byte $B0   ; 
- D 3 - I - 0x002EE9 00:EED9: 50        .byte $14 * $04 + $00   ; 
- D 3 - I - 0x002EEA 00:EEDA: EA        .byte con_se_cb_EA, $20   ; 
- D 3 - I - 0x002EEC 00:EEDC: 9C        .byte $9C   ; 
- D 3 - I - 0x002EED 00:EEDD: 54        .byte $14 * $04 + $04   ; 
- D 3 - I - 0x002EEE 00:EEDE: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EEDF_16_hiscore_2:
; ram_sfx_hiscore_2
off_EEDF_16:
- D 3 - I - 0x002EEF 00:EEDF: 02        .byte $02   ; 
- D 3 - I - 0x002EF0 00:EEE0: B8        .byte $B8   ; 
- D 3 - I - 0x002EF1 00:EEE1: 7F        .byte $7F   ; 
- D 3 - I - 0x002EF2 00:EEE2: 40        .byte $40   ; 
; 
off_EEE3_loop:
- D 3 - I - 0x002EF3 00:EEE3: 65        .byte $65   ; 
- D 3 - I - 0x002EF4 00:EEE4: 43        .byte $10 * $04 + $03   ; 
- D 3 - I - 0x002EF5 00:EEE5: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002EF6 00:EEE6: F1        .byte con_se_cb_loop_2, $0C   ; 
- D 3 - I - 0x002EF8 00:EEE8: 04        .byte off_EEE3_loop - off_EEDF_16   ; 
off_EEE9_loop:
- D 3 - I - 0x002EF9 00:EEE9: 43        .byte $10 * $04 + $03   ; 
- D 3 - I - 0x002EFA 00:EEEA: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002EFB 00:EEEB: F1        .byte con_se_cb_loop_2, $0C   ; 
- D 3 - I - 0x002EFD 00:EEED: 0A        .byte off_EEE9_loop - off_EEDF_16   ; 
off_EEEE_loop:
- D 3 - I - 0x002EFE 00:EEEE: 14        .byte $04 * $04 + $04   ; 
- D 3 - I - 0x002EFF 00:EEEF: 4B        .byte $12 * $04 + $03   ; 
- D 3 - I - 0x002F00 00:EEF0: F1        .byte con_se_cb_loop_2, $08   ; 
- D 3 - I - 0x002F02 00:EEF2: 0F        .byte off_EEEE_loop - off_EEDF_16   ; 
- D 3 - I - 0x002F03 00:EEF3: EA        .byte con_se_cb_EA, $3A   ; 
- D 3 - I - 0x002F05 00:EEF5: 30        .byte $0C * $04 + $00   ; 
- D 3 - I - 0x002F06 00:EEF6: 50        .byte $14 * $04 + $00   ; 
- D 3 - I - 0x002F07 00:EEF7: 09        .byte $02 * $04 + $01   ; 
- D 3 - I - 0x002F08 00:EEF8: 29        .byte $0A * $04 + $01   ; 
- D 3 - I - 0x002F09 00:EEF9: 31        .byte $0C * $04 + $01   ; 
- D 3 - I - 0x002F0A 00:EEFA: 51        .byte $14 * $04 + $01   ; 
- D 3 - I - 0x002F0B 00:EEFB: 0A        .byte $02 * $04 + $02   ; 
- D 3 - I - 0x002F0C 00:EEFC: 2A        .byte $0A * $04 + $02   ; 
- D 3 - I - 0x002F0D 00:EEFD: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002F0E 00:EEFE: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F0F 00:EEFF: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002F10 00:EF00: 2B        .byte $0A * $04 + $03   ; 
- D 3 - I - 0x002F11 00:EF01: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002F12 00:EF02: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002F13 00:EF03: 0C        .byte $02 * $04 + $04   ; 
- D 3 - I - 0x002F14 00:EF04: 2C        .byte $0A * $04 + $04   ; 
- D 3 - I - 0x002F15 00:EF05: 9C        .byte $9C   ; 
- D 3 - I - 0x002F16 00:EF06: EA        .byte con_se_cb_EA, $20   ; 
- D 3 - I - 0x002F18 00:EF08: 2C        .byte $0A * $04 + $04   ; 
- D 3 - I - 0x002F19 00:EF09: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EF0A_17_hiscore_3:
; ram_sfx_hiscore_3
- D 3 - I - 0x002F1A 00:EF0A: 03        .byte $03   ; 
- D 3 - I - 0x002F1B 00:EF0B: 00        .byte $00   ; 
- D 3 - I - 0x002F1C 00:EF0C: 7F        .byte $7F   ; 
- D 3 - I - 0x002F1D 00:EF0D: 08        .byte $08   ; 
; 
- D 3 - I - 0x002F1E 00:EF0E: A1        .byte $A1   ; 
- D 3 - I - 0x002F1F 00:EF0F: 01        .byte $00 * $04 + $01   ; 
- D 3 - I - 0x002F20 00:EF10: 01        .byte $00 * $04 + $01   ; 
- D 3 - I - 0x002F21 00:EF11: EE        .byte con_se_cb_EE, $15   ; 
- D 3 - I - 0x002F23 00:EF13: 6A        .byte $6A   ; 
- D 3 - I - 0x002F24 00:EF14: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002F25 00:EF15: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002F26 00:EF16: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002F27 00:EF17: EE        .byte con_se_cb_EE, $22   ; 
- D 3 - I - 0x002F29 00:EF19: 6F        .byte $6F   ; 
- D 3 - I - 0x002F2A 00:EF1A: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002F2B 00:EF1B: 65        .byte $65   ; 
- D 3 - I - 0x002F2C 00:EF1C: 43        .byte $10 * $04 + $03   ; 
- D 3 - I - 0x002F2D 00:EF1D: 7E        .byte $7E   ; 
- D 3 - I - 0x002F2E 00:EF1E: EE        .byte con_se_cb_EE, $33   ; 
- D 3 - I - 0x002F30 00:EF20: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002F31 00:EF21: 6A        .byte $6A   ; 
- D 3 - I - 0x002F32 00:EF22: EE        .byte con_se_cb_EE, $15   ; 
- D 3 - I - 0x002F34 00:EF24: 43        .byte $10 * $04 + $03   ; 
- D 3 - I - 0x002F35 00:EF25: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002F36 00:EF26: 53        .byte $14 * $04 + $03   ; 
- D 3 - I - 0x002F37 00:EF27: 6F        .byte $6F   ; 
- D 3 - I - 0x002F38 00:EF28: EE        .byte con_se_cb_EE, $22   ; 
- D 3 - I - 0x002F3A 00:EF2A: 13        .byte $04 * $04 + $03   ; 
- D 3 - I - 0x002F3B 00:EF2B: 65        .byte $65   ; 
- D 3 - I - 0x002F3C 00:EF2C: 23        .byte $08 * $04 + $03   ; 
- D 3 - I - 0x002F3D 00:EF2D: 7E        .byte $7E   ; 
- D 3 - I - 0x002F3E 00:EF2E: EE        .byte con_se_cb_EE, $33   ; 
- D 3 - I - 0x002F40 00:EF30: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002F41 00:EF31: 6A        .byte $6A   ; 
- D 3 - I - 0x002F42 00:EF32: EE        .byte con_se_cb_EE, $15   ; 
- D 3 - I - 0x002F44 00:EF34: 23        .byte $08 * $04 + $03   ; 
- D 3 - I - 0x002F45 00:EF35: 13        .byte $04 * $04 + $03   ; 
- D 3 - I - 0x002F46 00:EF36: 4A        .byte $12 * $04 + $02   ; 
- D 3 - I - 0x002F47 00:EF37: 9C        .byte $9C   ; 
- D 3 - I - 0x002F48 00:EF38: EE        .byte con_se_cb_EE, $FF   ; 
- D 3 - I - 0x002F4A 00:EF3A: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002F4B 00:EF3B: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EF3C_18_game_over_1:
; ram_sfx_game_over_1
- D 3 - I - 0x002F4C 00:EF3C: 01        .byte $01   ; 
- D 3 - I - 0x002F4D 00:EF3D: 42        .byte $42   ; 
- D 3 - I - 0x002F4E 00:EF3E: 7F        .byte $7F   ; 
- D 3 - I - 0x002F4F 00:EF3F: 40        .byte $40   ; 
; 
- D 3 - I - 0x002F50 00:EF40: 66        .byte $66   ; 
- D 3 - I - 0x002F51 00:EF41: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002F52 00:EF42: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002F53 00:EF43: 78        .byte $78   ; 
- D 3 - I - 0x002F54 00:EF44: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002F55 00:EF45: 68        .byte $68   ; 
- D 3 - I - 0x002F56 00:EF46: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F57 00:EF47: 42        .byte $10 * $04 + $02   ; 
- D 3 - I - 0x002F58 00:EF48: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002F59 00:EF49: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F5A 00:EF4A: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F5B 00:EF4B: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F5C 00:EF4C: 78        .byte $78   ; 
- D 3 - I - 0x002F5D 00:EF4D: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F5E 00:EF4E: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EF4F_19_game_over_2:
; ram_sfx_game_over_2
- D 3 - I - 0x002F5F 00:EF4F: 02        .byte $02   ; 
- D 3 - I - 0x002F60 00:EF50: 82        .byte $82   ; 
- D 3 - I - 0x002F61 00:EF51: 7F        .byte $7F   ; 
- D 3 - I - 0x002F62 00:EF52: 40        .byte $40   ; 
; 
- D 3 - I - 0x002F63 00:EF53: 66        .byte $66   ; 
- D 3 - I - 0x002F64 00:EF54: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F65 00:EF55: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F66 00:EF56: 78        .byte $78   ; 
- D 3 - I - 0x002F67 00:EF57: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F68 00:EF58: 68        .byte $68   ; 
- D 3 - I - 0x002F69 00:EF59: 32        .byte $0C * $04 + $02   ; 
- D 3 - I - 0x002F6A 00:EF5A: 2A        .byte $0A * $04 + $02   ; 
- D 3 - I - 0x002F6B 00:EF5B: 12        .byte $04 * $04 + $02   ; 
- D 3 - I - 0x002F6C 00:EF5C: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F6D 00:EF5D: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F6E 00:EF5E: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F6F 00:EF5F: 78        .byte $78   ; 
- D 3 - I - 0x002F70 00:EF60: 1A        .byte $06 * $04 + $02   ; 
- D 3 - I - 0x002F71 00:EF61: E8        .byte con_se_cb_stop   ; 



_off000_sfx_EF62_1A_game_over_3:
; ram_sfx_game_over_3
- D 3 - I - 0x002F72 00:EF62: 03        .byte $03   ; 
- D 3 - I - 0x002F73 00:EF63: 10        .byte $10   ; 
- D 3 - I - 0x002F74 00:EF64: 7F        .byte $7F   ; 
- D 3 - I - 0x002F75 00:EF65: 08        .byte $08   ; 
; 
- D 3 - I - 0x002F76 00:EF66: 66        .byte $66   ; 
- D 3 - I - 0x002F77 00:EF67: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002F78 00:EF68: 33        .byte $0C * $04 + $03   ; 
- D 3 - I - 0x002F79 00:EF69: 78        .byte $78   ; 
- D 3 - I - 0x002F7A 00:EF6A: 3B        .byte $0E * $04 + $03   ; 
- D 3 - I - 0x002F7B 00:EF6B: 68        .byte $68   ; 
- D 3 - I - 0x002F7C 00:EF6C: 1B        .byte $06 * $04 + $03   ; 
- D 3 - I - 0x002F7D 00:EF6D: 0B        .byte $02 * $04 + $03   ; 
- D 3 - I - 0x002F7E 00:EF6E: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F7F 00:EF6F: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F80 00:EF70: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F81 00:EF71: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F82 00:EF72: 78        .byte $78   ; 
- D 3 - I - 0x002F83 00:EF73: 52        .byte $14 * $04 + $02   ; 
- D 3 - I - 0x002F84 00:EF74: E8        .byte con_se_cb_stop   ; 


; bzk garbage
- - - - - - 0x002F85 00:EF75: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002F90 00:EF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FA0 00:EF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FB0 00:EFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FC0 00:EFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FD0 00:EFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FE0 00:EFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x002FF0 00:EFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003000 00:EFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_F000_draw_stage:
; in
    ; A = stage ID
        ; FF = demo stage
C - - - - - 0x003010 00:F000: C9 FF     CMP #$FF
C - - - - - 0x003012 00:F002: D0 05     BNE bra_F009
C - - - - - 0x003014 00:F004: A9 24     LDA #$24
; bzk optimize, BNE
C - - - - - 0x003016 00:F006: 4C 10 F0  JMP loc_F010
bra_F009:
C - - - - - 0x003019 00:F009: C9 24     CMP #$24
C - - - - - 0x00301B 00:F00B: 90 03     BCC bra_F010
C - - - - - 0x00301D 00:F00D: 38        SEC
C - - - - - 0x00301E 00:F00E: E9 23     SBC #$23
bra_F010:
loc_F010:
C D 3 - - - 0x003020 00:F010: 85 00     STA ram_0000_t12
C - - - - - 0x003022 00:F012: A9 F0     LDA #> tbl_F07A_stage_data
C - - - - - 0x003024 00:F014: 85 12     STA ram_0011_t16_stage_data + $01
C - - - - - 0x003026 00:F016: A9 7A     LDA #< tbl_F07A_stage_data
C - - - - - 0x003028 00:F018: 85 11     STA ram_0011_t16_stage_data
loc_F01A_loop:
C D 3 - - - 0x00302A 00:F01A: C6 00     DEC ram_0000_t12
C - - - - - 0x00302C 00:F01C: F0 08     BEQ bra_F026
C - - - - - 0x00302E 00:F01E: A9 5B     LDA #$5B
C - - - - - 0x003030 00:F020: 20 AA D7  JSR sub_D7AA_increase_16bit_0011_by_A
C - - - - - 0x003033 00:F023: 4C 1A F0  JMP loc_F01A_loop
bra_F026:
; bzk optimize, what's the point in copying?
; just use 0011 + 0012 directly
C - - - - - 0x003036 00:F026: A9 00     LDA #$00
C - - - - - 0x003038 00:F028: 85 5A     STA ram_005A_t17
C - - - - - 0x00303A 00:F02A: A5 11     LDA ram_0011_t16_stage_data
C - - - - - 0x00303C 00:F02C: 85 13     STA ram_0013_t03_stage_data
C - - - - - 0x00303E 00:F02E: A5 12     LDA ram_0011_t16_stage_data + $01
C - - - - - 0x003040 00:F030: 85 14     STA ram_0013_t03_stage_data + $01
C - - - - - 0x003042 00:F032: A9 10     LDA #$10
C - - - - - 0x003044 00:F034: 85 57     STA ram_0057_t01
bra_F036_loop:
C - - - - - 0x003046 00:F036: 20 F6 D8  JSR sub_D8F6_wait_1_frm
C - - - - - 0x003049 00:F039: A9 10     LDA #$10
C - - - - - 0x00304B 00:F03B: 85 56     STA ram_0056_t01
bra_F03D_loop:
C - - - - - 0x00304D 00:F03D: A5 5A     LDA ram_005A_t17
C - - - - - 0x00304F 00:F03F: 4A        LSR
C - - - - - 0x003050 00:F040: A8        TAY
C - - - - - 0x003051 00:F041: A5 5A     LDA ram_005A_t17
C - - - - - 0x003053 00:F043: 29 01     AND #$01
C - - - - - 0x003055 00:F045: F0 07     BEQ bra_F04E
C - - - - - 0x003057 00:F047: B1 13     LDA (ram_0013_t03_stage_data),Y
C - - - - - 0x003059 00:F049: 29 0F     AND #$0F
C - - - - - 0x00305B 00:F04B: 4C 54 F0  JMP loc_F054
bra_F04E:
C - - - - - 0x00305E 00:F04E: B1 13     LDA (ram_0013_t03_stage_data),Y
; / 10
C - - - - - 0x003060 00:F050: 4A        LSR
C - - - - - 0x003061 00:F051: 4A        LSR
C - - - - - 0x003062 00:F052: 4A        LSR
C - - - - - 0x003063 00:F053: 4A        LSR
loc_F054:
C D 3 - - - 0x003064 00:F054: A6 56     LDX ram_0056_t01
C - - - - - 0x003066 00:F056: A4 57     LDY ram_0057_t01
C - - - - - 0x003068 00:F058: 20 0B D8  JSR sub_D80B_write_block_tiles_and_attribute_to_buffer
C - - - - - 0x00306B 00:F05B: A9 00     LDA #$00
C - - - - - 0x00306D 00:F05D: 85 0C     STA ram_buffer_index
C - - - - - 0x00306F 00:F05F: E6 5A     INC ram_005A_t17
C - - - - - 0x003071 00:F061: A5 56     LDA ram_0056_t01
C - - - - - 0x003073 00:F063: 18        CLC
C - - - - - 0x003074 00:F064: 69 10     ADC #$10
C - - - - - 0x003076 00:F066: 85 56     STA ram_0056_t01
C - - - - - 0x003078 00:F068: C9 E0     CMP #$E0
C - - - - - 0x00307A 00:F06A: D0 D1     BNE bra_F03D_loop
C - - - - - 0x00307C 00:F06C: E6 5A     INC ram_005A_t17
C - - - - - 0x00307E 00:F06E: A5 57     LDA ram_0057_t01
C - - - - - 0x003080 00:F070: 18        CLC
C - - - - - 0x003081 00:F071: 69 10     ADC #$10
C - - - - - 0x003083 00:F073: 85 57     STA ram_0057_t01
C - - - - - 0x003085 00:F075: C9 E0     CMP #$E0
C - - - - - 0x003087 00:F077: D0 BD     BNE bra_F036_loop
C - - - - - 0x003089 00:F079: 60        RTS



tbl_F07A_stage_data:
; 0x00308A
    .incbin "incbin/stages/stage_01.bin"
    .incbin "incbin/stages/stage_02.bin"
    .incbin "incbin/stages/stage_03.bin"
    .incbin "incbin/stages/stage_04.bin"
    .incbin "incbin/stages/stage_05.bin"
    .incbin "incbin/stages/stage_06.bin"
    .incbin "incbin/stages/stage_07.bin"
    .incbin "incbin/stages/stage_08.bin"
    .incbin "incbin/stages/stage_09.bin"
    .incbin "incbin/stages/stage_10.bin"
    .incbin "incbin/stages/stage_11.bin"
    .incbin "incbin/stages/stage_12.bin"
    .incbin "incbin/stages/stage_13.bin"
    .incbin "incbin/stages/stage_14.bin"
    .incbin "incbin/stages/stage_15.bin"
    .incbin "incbin/stages/stage_16.bin"
    .incbin "incbin/stages/stage_17.bin"
    .incbin "incbin/stages/stage_18.bin"
    .incbin "incbin/stages/stage_19.bin"
    .incbin "incbin/stages/stage_20.bin"
    .incbin "incbin/stages/stage_21.bin"
    .incbin "incbin/stages/stage_22.bin"
    .incbin "incbin/stages/stage_23.bin"
    .incbin "incbin/stages/stage_24.bin"
    .incbin "incbin/stages/stage_25.bin"
    .incbin "incbin/stages/stage_26.bin"
    .incbin "incbin/stages/stage_27.bin"
    .incbin "incbin/stages/stage_28.bin"
    .incbin "incbin/stages/stage_29.bin"
    .incbin "incbin/stages/stage_30.bin"
    .incbin "incbin/stages/stage_31.bin"
    .incbin "incbin/stages/stage_32.bin"
    .incbin "incbin/stages/stage_33.bin"
    .incbin "incbin/stages/stage_34.bin"
    .incbin "incbin/stages/stage_35.bin"
    .incbin "incbin/stages/stage_FF.bin"   ; demo


; bzk garbage
; placeholder before kanji
- - - - - - 0x003D56 00:FD46: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 


; bzk garbage
; japanese kanji
- - - - - - 0x003D60 00:FD50: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003D68 00:FD58: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003D70 00:FD60: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003D78 00:FD68: 2E        .byte $2E, $2E, $2E, $40, $40, $40, $40, $2E   ; 
- - - - - - 0x003D80 00:FD70: 40        .byte $40, $40, $40, $40, $40, $40, $40, $2E   ; 
- - - - - - 0x003D88 00:FD78: 2E        .byte $2E, $2E, $40, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003D90 00:FD80: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003D98 00:FD88: 2E        .byte $2E, $40, $2E, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003DA0 00:FD90: 2E        .byte $2E, $2E, $40, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003DA8 00:FD98: 2E        .byte $2E, $2E, $2E, $40, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003DB0 00:FDA0: 40        .byte $40, $40, $2E, $2E, $2E, $40, $40, $2E   ; 
- - - - - - 0x003DB8 00:FDA8: 2E        .byte $2E, $40, $40, $2E, $2E, $2E, $40, $40   ; 
- - - - - - 0x003DC0 00:FDB0: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003DC8 00:FDB8: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003DD0 00:FDC0: 2E        .byte $2E, $2E, $2E, $2E, $2E, $40, $2E, $40   ; 
- - - - - - 0x003DD8 00:FDC8: 40        .byte $40, $40, $40, $40, $40, $40, $2E, $2E   ; 
- - - - - - 0x003DE0 00:FDD0: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $2E, $40   ; 
- - - - - - 0x003DE8 00:FDD8: 2E        .byte $2E, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003DF0 00:FDE0: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $40   ; 
- - - - - - 0x003DF8 00:FDE8: 40        .byte $40, $40, $40, $40, $40, $40, $2E, $2E   ; 
- - - - - - 0x003E00 00:FDF0: 2E        .byte $2E, $2E, $40, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003E08 00:FDF8: 2E        .byte $2E, $2E, $40, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003E10 00:FE00: 2E        .byte $2E, $40, $2E, $2E, $40, $2E, $40, $40   ; 
- - - - - - 0x003E18 00:FE08: 40        .byte $40, $40, $40, $40, $40, $40, $40, $2E   ; 
- - - - - - 0x003E20 00:FE10: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003E28 00:FE18: 40        .byte $40, $2E, $40, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003E30 00:FE20: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $2E, $40   ; 
- - - - - - 0x003E38 00:FE28: 2E        .byte $2E, $2E, $40, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003E40 00:FE30: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $40, $2E   ; 
- - - - - - 0x003E48 00:FE38: 2E        .byte $2E, $2E, $40, $2E, $2E, $2E, $40, $2E   ; 
- - - - - - 0x003E50 00:FE40: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003E58 00:FE48: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003E60 00:FE50: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003E68 00:FE58: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003E70 00:FE60: 40        .byte $40, $40, $40, $40, $40, $40, $40, $40   ; 
- - - - - - 0x003E78 00:FE68: 2E        .byte $2E, $40, $40, $40, $40, $40, $40, $40   ; 
- - - - - - 0x003E80 00:FE70: 40        .byte $40, $2E, $2E, $2E, $2E, $2E, $2E, $40   ; 
- - - - - - 0x003E88 00:FE78: 2E        .byte $2E, $40, $2E, $2E, $40, $2E, $2E, $40   ; 
- - - - - - 0x003E90 00:FE80: 2E        .byte $2E, $40, $40, $40, $40, $40, $40, $2E   ; 
- - - - - - 0x003E98 00:FE88: 2E        .byte $2E, $40, $2E, $2E, $40, $2E, $2E, $40   ; 
- - - - - - 0x003EA0 00:FE90: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003EA8 00:FE98: 2E        .byte $2E, $40, $40, $40, $40, $40, $40, $40   ; 
- - - - - - 0x003EB0 00:FEA0: 2E        .byte $2E, $40, $40, $40, $40, $40, $40, $2E   ; 
- - - - - - 0x003EB8 00:FEA8: 2E        .byte $2E, $40, $2E, $2E, $40, $2E, $2E, $40   ; 
- - - - - - 0x003EC0 00:FEB0: 2E        .byte $2E, $2E, $2E, $2E, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003EC8 00:FEB8: 2E        .byte $2E, $40, $2E, $2E, $40, $2E, $2E, $40   ; 
- - - - - - 0x003ED0 00:FEC0: 2E        .byte $2E, $2E, $40, $40, $40, $2E, $2E, $2E   ; 
- - - - - - 0x003ED8 00:FEC8: 2E        .byte $2E, $40, $40, $40, $40, $40, $40, $40   ; 
- - - - - - 0x003EE0 00:FED0: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003EE8 00:FED8: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003EF0 00:FEE0: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003EF8 00:FEE8: 2E        .byte $2E, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003F00 00:FEF0: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003F08 00:FEF8: 40        .byte $40, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003F10 00:FF00: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003F18 00:FF08: 40        .byte $40, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003F20 00:FF10: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003F28 00:FF18: 40        .byte $40, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003F30 00:FF20: 2E        .byte $2E, $2E, $2E, $40, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003F38 00:FF28: 40        .byte $40, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003F40 00:FF30: 2E        .byte $2E, $2E, $40, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003F48 00:FF38: 40        .byte $40, $2E, $2E, $2E, $2E, $40, $2E, $2E   ; 
- - - - - - 0x003F50 00:FF40: 2E        .byte $2E, $40, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- - - - - - 0x003F58 00:FF48: 2E        .byte $2E, $2E, $2E, $40, $40, $40, $2E, $2E   ; 


; bzk garbage
- - - - - - 0x003F60 00:FF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F70 00:FF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F80 00:FF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003F90 00:FF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FA0 00:FF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FB0 00:FFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FC0 00:FFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FD0 00:FFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FE0 00:FFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003FF0 00:FFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x004000 00:FFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank FF: 0x%04X [%d]", ($FFFA - *), ($FFFA - *))



.segment "VECTORS"
- D 3 - - - 0x00400A 00:FFFA: 00 D4     .word vec_D400_NMI
- D 3 - - - 0x00400C 00:FFFC: 70 C0     .word vec_C070_RESET
- - - - - - 0x00400E 00:FFFE: 70 C0     .word $C070 ; this game doesn't use IRQ



